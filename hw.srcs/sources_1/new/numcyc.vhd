----------------------------------------------------------------------------
--  Final Project: Number Cycler
----------------------------------------------------------------------------
--  ENGS 128 Spring 2025
--	Author: James Quirk and Dak Black
----------------------------------------------------------------------------
--	Description: This component takes as input the output of the AXI Transmitter 
-- in the I2S Wrapper, writes it to a FIFO to match the FFT timing, then conducts 
-- the FFT on the data before converting it to a color value for input to the 
-- HDMI transmitter timed by pixel row.
----------------------------------------------------------------------------
-- Library Declarations
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.math_real.all; 
use IEEE.NUMERIC_STD.ALL;

entity numcyc is
    generic (
		DATA_WIDTH	: integer	:= 32;
		FFT_BINS	: integer	:= 64;
		RES_HEIGHT  : integer   := 512
		);
    PORT (
        aclk : IN STD_LOGIC;
        
        rgb_data_o : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
        
        fsync_i             : IN STD_LOGIC;
        hblank_i             : IN STD_LOGIC;               
        grad_sel_i      : in STD_LOGIC;
        

        reset_n_i : in std_logic;
        
        
        
        		-- Ports of Axi Responder Bus Interface S00_AXIS
		s00_axis_aclk     : in std_logic;
		s00_axis_tready   : out std_logic;
		s00_axis_tdata	  : in std_logic_vector(DATA_WIDTH-1 downto 0);
		s00_axis_tstrb    : in std_logic_vector((DATA_WIDTH/8)-1 downto 0);
		s00_axis_tlast    : in std_logic;
		s00_axis_tvalid   : in std_logic;    
		
		   
         -- debug 
         
        mag_data_o : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
        bff_o               : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        fft_in_dbg_o : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
        fft_out_dbg_o : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
        fft_tready_dbg_o : OUT STD_LOGIC;
        intensity_dbg_o : out STD_LOGIC_VECTOR(7 DOWNTO 0);
        --tlast_dbg_o : OUT STD_LOGIC; --not usec
        count_dbg_o     : out std_logic_vector(6 downto 0);
        fft_valid_dbg_o : OUT STD_LOGIC;
              dbg_real_o :  OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
        dbg_imag_o :  OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
        --dbg_r_mag_o : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
        --dbg_i_mag_o: OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
        
        
        m_axis_data_tuser : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        m_axis_data_tvalid : OUT STD_LOGIC;
        m_axis_data_tready : IN STD_LOGIC;
        m_axis_data_tlast : OUT STD_LOGIC
  );
end numcyc;

architecture Behavioral of numcyc is

----------------------------------------------------------------------------
-- Component Declarations
----------------------------------------------------------------------------
COMPONENT xfft_0
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_config_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axis_config_tvalid : IN STD_LOGIC;
    s_axis_config_tready : OUT STD_LOGIC;
    s_axis_data_tdata : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    s_axis_data_tvalid : IN STD_LOGIC;
    s_axis_data_tready : OUT STD_LOGIC;
    s_axis_data_tlast : IN STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
    m_axis_data_tuser : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tready : IN STD_LOGIC;
    m_axis_data_tlast : OUT STD_LOGIC;
    event_frame_started : OUT STD_LOGIC;
    event_tlast_unexpected : OUT STD_LOGIC;
    event_tlast_missing : OUT STD_LOGIC;
    event_status_channel_halt : OUT STD_LOGIC;
    event_data_in_channel_halt : OUT STD_LOGIC;
    event_data_out_channel_halt : OUT STD_LOGIC
  );
END COMPONENT;


component axis_bulk_fifo is
	generic (
		DATA_WIDTH	: integer	:= DATA_WIDTH;
		FIFO_DEPTH	: integer	:= FFT_BINS
	);
	port (
	
		-- Ports of Axi Responder Bus Interface S00_AXIS
		s00_axis_aclk     : in std_logic;
		s00_axis_aresetn  : in std_logic;
		s00_axis_tready   : out std_logic;
		s00_axis_tdata	  : in std_logic_vector(DATA_WIDTH-1 downto 0);
		s00_axis_tstrb    : in std_logic_vector((DATA_WIDTH/8)-1 downto 0);
		s00_axis_tlast    : in std_logic;
		s00_axis_tvalid   : in std_logic;

		-- Ports of Axi Controller Bus Interface M00_AXIS
		m00_axis_aclk     : in std_logic;
		m00_axis_aresetn  : in std_logic;
		m00_axis_tvalid   : out std_logic;
		m00_axis_tdata    : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
		m00_axis_tstrb    : out std_logic_vector((DATA_WIDTH/8)-1 downto 0);
		m00_axis_tlast    : out std_logic;
		m00_axis_tready   : in std_logic
	);
end component;

----------------------------------------------------------------------------
-- Signals
----------------------------------------------------------------------------
-- Data slave channel signals
signal fifo_to_fft_tvalid          : std_logic := '0';  -- payload is valid
signal fifo_to_fft_tready          : std_logic := '1';  -- slave is ready
signal fifo_to_fft_tdata           : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');  -- data payload
signal fifo_to_fft_tlast           : std_logic := '0';  -- indicates end of packet

-- Data conversion and storage signals
signal r_data, g_data, b_data :  STD_LOGIC_VECTOR(7 DOWNTO 0);
type mem_type is array (0 to FFT_BINS-1) of std_logic_vector(7 downto 0);
signal fft_buf_tmp, fft_buf : mem_type := (others => (others => '0'));
signal intensity  : integer;

-- FSM Signals
signal count : integer;
signal count_en, count_reset : std_logic := '0';

-- FFT signals for data reconfiguration
signal fft_data_o : STD_LOGIC_VECTOR(47 DOWNTO 0);
signal data_real_tdata, data_imag_tdata : STD_LOGIC_VECTOR(11 DOWNTO 0);
signal real_data, imag_data  : integer;
signal mag_real_data_int, mag_imag_data_int :  integer;
signal total_mag_int :  integer;
signal mag_data : STD_LOGIC_VECTOR(24 DOWNTO 0);

-- FFT signals for bin numbers
signal tuser_tmp: STD_LOGIC_VECTOR(7 DOWNTO 0);
signal user_int_temp1, user_int_temp2, user_int_temp3, user_int_temp4, user_int_temp5 :  integer;
signal bin_num :  integer;

-- FFT configuration settings
signal fft_config_valid : std_logic := '1';
signal fft_config_ready : std_logic := '0';

-- FFT outputs
signal fft_valid_o : std_logic := '0';


  ----------------------------------------------------------------------------
-- FSM states
type state_type is (VBlank, RowRead, HBlank, Hold );	
signal curr_state, next_state : state_type := VBlank;

----------------------------------------------------------------------------
-- Component Instantiation
----------------------------------------------------------------------------
begin
fifo_0_dds_to_fir: axis_bulk_fifo
port map (
  
    s00_axis_aclk => aclk,
    s00_axis_aresetn => reset_n_i,    -- button 0
    s00_axis_tready => s00_axis_tready,   
    s00_axis_tdata => s00_axis_tdata,
    s00_axis_tstrb => "0000",
    s00_axis_tlast => '0',     -- not using TLAST
    s00_axis_tvalid => s00_axis_tvalid, 

    m00_axis_aclk => aclk,
    m00_axis_aresetn => reset_n_i,
    m00_axis_tvalid => fifo_to_fft_tvalid,
    m00_axis_tdata => fifo_to_fft_tdata,
    m00_axis_tstrb => open,             -- not using TSTRB 
    m00_axis_tlast => fifo_to_fft_tlast,
    m00_axis_tready => fifo_to_fft_tready);

fft_inst : xfft_0
  PORT MAP (
    aclk => aclk,
    s_axis_config_tdata => "0000101010101101", -- Determined in FFT IP testbench
    s_axis_config_tvalid => fft_config_valid,
    s_axis_config_tready => fft_config_ready,
    
    s_axis_data_tdata => (23 downto 0 => '0') & fifo_to_fft_tdata(31 downto 8), -- 24 0's followed by the 24 MSBs of the FIFO data (which we pad with 8 zeroes in the LSBs for AXI transmission length of 32 despite 24-bit data)
    s_axis_data_tvalid => fifo_to_fft_tvalid,
    s_axis_data_tready => fifo_to_fft_tready,
    s_axis_data_tlast => fifo_to_fft_tlast,
    
    m_axis_data_tdata => fft_data_o,
    m_axis_data_tuser => tuser_tmp,
    m_axis_data_tvalid => fft_valid_o,
    m_axis_data_tready => '1',
    m_axis_data_tlast => m_axis_data_tlast,
    
    event_frame_started => open,
    event_tlast_unexpected => open,
    event_tlast_missing => open,
    event_status_channel_halt =>  open,
    event_data_in_channel_halt => open,
    event_data_out_channel_halt => open
  );

----------------------------------------------------------------------------
-- Processes and Logic
----------------------------------------------------------------------------
-- Latch output signals
m_axis_data_tvalid <= fft_valid_o;
mag_data_o <= mag_data;

-- Debug signals for ILA
bff_o <= std_logic_vector(to_unsigned(user_int_temp5, bff_o'length));
fft_in_dbg_o <= fifo_to_fft_tdata(31 downto 8);
intensity_dbg_o <= std_logic_vector(to_unsigned(intensity, intensity_dbg_o'length));
fft_out_dbg_o <= fft_data_o;
fft_tready_dbg_o <= fifo_to_fft_tready;
fft_valid_dbg_o <= fifo_to_fft_tvalid;
dbg_real_o <= data_real_tdata;
dbg_imag_o <= data_imag_tdata; 
--dbg_r_mag_o <=  std_logic_vector(to_unsigned(mag_real_data_int ,dbg_r_mag_o'length)); 
--dbg_i_mag_o <=  std_logic_vector(to_unsigned(mag_imag_data_int ,dbg_i_mag_o'length)); 

-- Inputs the configuration settings for one clock cycle to the FFT, then stops transmitting configuration data
fft_config: process(aclk)
begin
    if rising_edge(aclk) then
        if (fft_config_ready = '1') then
            fft_config_valid <= '0';
        end if;
    end if;
end process;

-- Converts the FFT output data to an intensity value from 0-255 for use as RGB
square_sum: process(aclk)
  begin 
  if rising_edge (aclk) then
    if (fft_valid_o = '1') then -- Only progresses when the data is valid
        data_real_tdata <= fft_data_o(23) & fft_data_o(16 downto 6); -- Keeps the sign and 11 bits that appear to be the most relevant from experimentation
        data_imag_tdata <= fft_data_o(47) & fft_data_o(40 downto 30); -- Keeps the sign and 11 bits that appear to be the most relevant from experimentation
        user_int_temp1 <= to_integer(unsigned(tuser_tmp)); -- Also stores the bin number to be carried with the data
    end if;
    
    -- Convert the data to integers
    real_data <= to_integer(signed(data_real_tdata));
    imag_data <= to_integer(signed(data_imag_tdata));
    user_int_temp2 <= user_int_temp1;
    
    -- Square the values for magnitude
    mag_real_data_int <= real_data * real_data;
    mag_imag_data_int <= imag_data *imag_data;
    user_int_temp3 <= user_int_temp2;
    
    -- Add real and imaginary magnitudes for total magnitude
    total_mag_int <= mag_real_data_int + mag_imag_data_int;
    user_int_temp4 <= user_int_temp3;
    
    -- Convert the magnitude to a standard logic vector
    mag_data <= std_logic_vector(to_unsigned(total_mag_int ,mag_data'length)); 
    user_int_temp5 <= user_int_temp4;
    
    -- If we're in the first half of the FFT bins, save the value, otherwise set the intensity to 0 so we don't display the reflections
    if (user_int_temp5 < 33) then
        fft_buf_tmp(user_int_temp5) <= mag_data(20 downto 13);
    else 
        fft_buf_tmp(user_int_temp5) <= "00000000";
    end if;
   end if; 
  end process;

-- If we're in gradient mode, just display the gradient, otherwise, display the values stored from the output of the FFT
source_sel: process(grad_sel_i, count, fft_buf)
begin 
    if (grad_sel_i ='0') then
        if (count < RES_HEIGHT) then -- While on the screen's resolution... 
            intensity  <= to_integer(unsigned(fft_buf(count/16))); -- Display the value in the bin corresponding to that row; by dividing by 16, each row is 16 pixels tall.
        else 
            intensity <= 0;
        end if;
    else 
        intensity <= count;   -- Creates a gradient where the top rows (low Y values) have the lowest intensity and the bottom rows have the highest
    end if ;

end process source_sel;    
   
   ----------------------------------------------------------------------------
-- State machine
----------------------------------------------------------------------------
-- FSM Next State Logic (asynchronous, no clock)
next_state_logic : process(curr_state, fsync_i, hblank_i, count )
-- ++++ Add necessary signals to the sensitivity list above ++++
-- ++++ Modify next state logic to match your paper design ++++
begin

	-- Default conditions
	next_state <= curr_state; 	-- default is to stay in the same state

	-- Use a case statement to switch between states
	case curr_state is	
	
		when VBlank =>
			if (fsync_i = '1') then     
		        next_state <= RowRead;
			end if;
	
        when RowRead =>		
				next_state <= Hold;
				
	    when Hold =>
	       if (hblank_i = '1') then
		      next_state <= HBlank;
		  end if;     				
				
		when HBlank =>
		  if (count  = RES_HEIGHT   - 1 ) then
		      next_state <= VBlank;
		  elsif (hblank_i = '0') then
		      next_state <= RowRead;
		  end if;     
				
		when others =>
			next_state <= VBlank;
			
	end case;					-- end of case statement
end process next_state_logic;

----------------------------------------------------------------------------
-- FSM Output Logic Process (asynchronous, no clock)
fsm_output_logic : process(curr_state) 
begin
    
    -- ++++ Write your output logic here ++++ 
    -- ++++ Set defaults at the top, and use a CASE statement ++++ 
	-- Defaults
	count_reset  <= '0'; 	
	count_en <= '0'; 

    -- Use a case statement to switch between states
    case curr_state is	
    
		when VBlank =>
			count_reset <= '1';

        when RowRead  =>
			count_en <= '1';     -- begin shifting data into the register
			
	    when Hold =>
	    
				
		when HBlank =>
			        
					
		when others => -- this is like the "else" part of an if/else statement, but shouldn't reached
			
    end case;					-- end of case statement
    
end process fsm_output_logic;

----------------------------------------------------------------------------
-- FSM State Update Process (synchronous, clocked)
state_update : process (aclk)
begin
	if (rising_edge(aclk)) then
		curr_state <= next_state; 		-- update current state on rising edge of the clock
	end if;
end process state_update;

-- Counter for input to the FSM to determine which pixel row is currently being written to the screen
counter_proc: process(aclk)
begin
    if (rising_edge(aclk)) then
         if count_reset = '1' then
            count <= 0;
         elsif  count_en = '1' then 
            count <= count + 1;
         end if; 
    end if; 
end process counter_proc;

-- Datapath (synchronous, clocked, separated to guarantee we do not create a latch in the FSM)
datapath : process (aclk)
begin
	if (rising_edge(aclk)) then
		if (curr_state = RowRead or curr_state  = VBlank ) then
             if (intensity < 128) then -- low intensity values appear blue, medium values appear green
                 r_data <= "00000000";
                 g_data  <= std_logic_vector(to_unsigned(intensity*2,g_data'length));
                 b_data <=  std_logic_vector(to_unsigned(255 - intensity*2 ,b_data'length));
             elsif (intensity > 128) then -- medium intensity values appear green, high values appear red	     
                 r_data  <= std_logic_vector(to_unsigned(intensity*2 ,r_data'length));
                 g_data <=  std_logic_vector(to_unsigned(255 - intensity*2 ,g_data'length));
                 b_data  <= "00000000";	
             else
                 r_data <= "00000000";
                 g_data  <= "11111111"; -- exact middle values are green
                 b_data <=  "00000000";
             end if;
             rgb_data_o  <= r_data  & b_data & g_data; -- concatenate to be in the form expected by the HDMI transmitter
        end if;
        if (curr_state = VBlank) then
            fft_buf <= fft_buf_tmp; -- Only update the data corresponding to each row after we are done writing one full cycle to the screen. Prevents noisy signals
        end if; 
            
	end if;
end process datapath;  

end Behavioral;
