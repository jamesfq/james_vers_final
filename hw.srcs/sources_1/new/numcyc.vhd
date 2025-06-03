----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2025 11:47:13 AM
-- Design Name: 
-- Module Name: fft_wrapper - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.math_real.all; 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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
        
        mag_data_o : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
        bff_o               : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        fft_in_dbg_o : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
        
        m_axis_data_tuser : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        m_axis_data_tvalid : OUT STD_LOGIC;
        m_axis_data_tready : IN STD_LOGIC;
        m_axis_data_tlast : OUT STD_LOGIC
  );
end numcyc;

architecture Behavioral of numcyc is

COMPONENT xfft_0
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_config_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
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
		DATA_WIDTH	: integer	:= 32;
		FIFO_DEPTH	: integer	:= 256
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

component axis_fifo is
	generic (
		DATA_WIDTH	: integer	:= 32;
		FIFO_DEPTH	: integer	:= 256
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



-- Data slave channel signals
signal fifo_to_fft_tvalid          : std_logic := '0';  -- payload is valid
signal fifo_to_fft_tready          : std_logic := '1';  -- slave is ready
signal fifo_to_fft_tdata           : std_logic_vector(31 downto 0) := (others => '0');  -- data payload
signal fifo_to_fft_tlast           : std_logic := '0';  -- indicates end of packet

-- Data slave channel signals
signal fft_to_fifo_tvalid          : std_logic := '0';  -- payload is valid
signal fft_to_fifo_tready          : std_logic := '1';  -- slave is ready
signal fft_to_fifo_tdata           : std_logic_vector(47 downto 0) := (others => '0');  -- data payload
signal fft_to_fifo_tlast           : std_logic := '0';  -- indicates end of packet

-- Data slave channel signals
signal fifo_to_rgb_tvalid          : std_logic := '0';  -- payload is valid
signal fifo_to_rgb_tready          : std_logic := '1';  -- slave is ready
signal fifo_to_rgb_tdata           : std_logic_vector(47 downto 0) := (others => '0');  -- data payload
signal fifo_to_rgb_tlast           : std_logic := '0';  -- indicates end of packet


-- state machine signals
signal r_data, g_data, b_data :  STD_LOGIC_VECTOR(7 DOWNTO 0);
type mem_type is array (0 to FFT_BINS-1) of std_logic_vector(7 downto 0);
signal fft_buf : mem_type := (others => (others => '0'));
signal count, mxval,intensity  : integer;
signal count_en, count_reset, read_en : std_logic := '0';

-- fft signals
signal data_real_tdata : STD_LOGIC_VECTOR(11 DOWNTO 0);
signal data_imag_tdata : STD_LOGIC_VECTOR(11 DOWNTO 0);
signal fft_data_o : STD_LOGIC_VECTOR(47 DOWNTO 0);
signal mag_data : STD_LOGIC_VECTOR(24 DOWNTO 0);
signal tuser_tmp: STD_LOGIC_VECTOR(7 DOWNTO 0);
signal user_int_temp1, user_int_temp2, user_int_temp3, user_int_temp4, user_int_temp5 :  integer;
signal mag_data_int :  integer;
signal mag_real_data_int :  integer;
signal mag_imag_data_int :  integer;
signal total_mag_int :  integer;
signal bin_num :  integer;
signal real_data, imag_data  : integer;
signal fft_to_fifo_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
signal fft_config_valid : std_logic := '1';
signal fft_config_ready : std_logic := '0';

  ----------------------------------------------------------------------------
-- FSM states
type state_type is (vBlank, rowRead, hBlank, hold );	
signal curr_state, next_state : state_type := vBlank;
  
 

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
    m00_axis_aresetn => '1',
    m00_axis_tvalid => fifo_to_fft_tvalid,
    m00_axis_tdata => fifo_to_fft_tdata,
    m00_axis_tstrb => open,             -- not using TSTRB 
    m00_axis_tlast => fifo_to_fft_tlast,
    m00_axis_tready => fifo_to_fft_tready);




fft_inst : xfft_0
  PORT MAP (
    aclk => aclk,
    s_axis_config_tdata => "01010111",
    s_axis_config_tvalid => fft_config_valid,
    s_axis_config_tready => fft_config_ready,
    
    s_axis_data_tdata => "000000000000" & "000000000000" & fifo_to_fft_tdata(31 downto 8),
    s_axis_data_tvalid => fifo_to_fft_tvalid,
    s_axis_data_tready => fifo_to_fft_tready,
    s_axis_data_tlast => fifo_to_fft_tlast,
    
    m_axis_data_tdata => fft_data_o,
    m_axis_data_tuser => tuser_tmp,
    m_axis_data_tvalid => m_axis_data_tvalid,
    m_axis_data_tready => '1',
    m_axis_data_tlast => m_axis_data_tlast,
    
    event_frame_started => open,
    event_tlast_unexpected => open,
    event_tlast_missing => open,
    event_status_channel_halt =>  open,
    event_data_in_channel_halt => open,
    event_data_out_channel_halt => open
  );


--fifo_1_fft_to_out: axis_fifo
--port map (
  
--    s00_axis_aclk => aclk,
--    s00_axis_aresetn => reset_n_i,    -- button 0
--    s00_axis_tready => fft_to_fifo_tready,
--    s00_axis_tdata => mag_data(48 downto 25) & "00000000",
--    s00_axis_tstrb => "000000",
--    s00_axis_tlast => fft_to_fifo_tlast,  
--    s00_axis_tvalid => fft_to_fifo_tvalid, 

--    m00_axis_aclk => aclk,
--    m00_axis_aresetn => reset_n_i,
--    m00_axis_tvalid => fifo_to_rgb_tvalid,
--    m00_axis_tdata => fifo_to_rgb_tdata,
--    m00_axis_tstrb => open,
--    m00_axis_tlast => fifo_to_rgb_tlast,
--    m00_axis_tready => fifo_to_rgb_tready);

fft_config: process(aclk, fft_config_ready)
begin
    if rising_edge(aclk) then
        if (fft_config_ready = '1') then
            fft_config_valid <= '0';
        end if;
    end if;
end process;
                    
  square_sum: process(aclk)
  begin 
  if rising_edge (aclk) then
    data_real_tdata <= fft_data_o(23 downto 12);
    data_imag_tdata <= fft_data_o(47 downto 36);
    user_int_temp1 <= to_integer(unsigned(tuser_tmp));
    
        -- squaring stuff
    real_data <= to_integer(signed(data_real_tdata));
    imag_data <= to_integer(signed(data_imag_tdata));
    user_int_temp2 <= user_int_temp1;
    
    mag_real_data_int <= real_data * real_data;
    mag_imag_data_int <= imag_data *imag_data;
    user_int_temp3 <= user_int_temp2;
    
    total_mag_int <= mag_real_data_int + mag_imag_data_int;
    user_int_temp4 <= user_int_temp3;
    
    mag_data <= std_logic_vector(to_unsigned(mag_data_int,mag_data'length)); 
    user_int_temp5 <= user_int_temp4;
    
    fft_buf(user_int_temp2) <= mag_data(24 downto 17);
       
   end if; 
  
   
  
  end process;
  
--  mag_data_o <= fft_data_o;
--  bff_o <= std_logic_vector(to_unsigned(count, bff_o'length));
--  fft_in_dbg_o <= fifo_to_fft_tdata(31 downto 8);
  
  
  

source_sel: process(grad_sel_i, fifo_to_rgb_tdata)
begin 
    if (grad_sel_i ='1') then
        intensity  <= to_integer(unsigned(fft_buf(count)));
    else 
        intensity <= count;
    
    end if ;

end process source_sel;    
              













   
   ----------------------------------------------------------------------------
-- State machine
----------------------------------------------------------------------------
-- FSM Next State Logic (asynchronous, no clock)
-- Include all state change triggering signals in the sensitivity list
-- The only signal getting assigned in this process should be next_state
next_state_logic : process(curr_state )
-- ++++ Add necessary signals to the sensitivity list above ++++
-- ++++ Modify next state logic to match your paper design ++++
begin

	-- Default conditions
	next_state <= curr_state; 	-- default is to stay in the same state

	-- Use a case statement to switch between states
	case curr_state is	
	
		when vBlank =>
			if (fsync_i = '1') then     
		        next_state <= rowRead;
			end if;
	
        when rowRead =>		
				next_state <= hold;
				
	    when hold =>
	       if (hblank_i = '1') then
		      next_state <= hBlank;
		  end if;     				
				
		when hBlank =>
		  if (count  = RES_HEIGHT   - 1 ) then
		      next_state <= vBlank;
		  elsif (hblank_i = '0') then
		      next_state <= rowRead;
		  end if;     
				
		when others =>
			next_state <= vBlank;
			
	end case;					-- end of case statement
end process next_state_logic;







----------------------------------------------------------------------------
-- FSM Output Logic Process (asynchronous, no clock)
-- Only the current state signal (curr_state) should be in the sensitivity list
-- FSM "outputs" are simply signals or ports that are assigned by the FSM state logic
fsm_output_logic : process(curr_state) 
begin
    
    -- ++++ Write your output logic here ++++ 
    -- ++++ Set defaults at the top, and use a CASE statement ++++ 
	-- Defaults
	count_reset  <= '0'; 	
	count_en <= '0'; 

    -- Use a case statement to switch between states
    case curr_state is	
    
		when vBlank =>
			count_reset <= '1';
			count_en <= '0'; 

        when rowRead  =>
			count_en <= '1';     -- begin shifting data into the register
			
	    when hold =>
	    
				
		when hBlank =>
			        
					
		when others => -- this is like the "else" part of an if/else statement, but shouldn't reached
			
    end case;					-- end of case statement
    
end process fsm_output_logic;

----------------------------------------------------------------------------
-- FSM State Update Process (synchronous, clocked)


state_update : process (aclk)
begin
	if (falling_edge(aclk)) then
		curr_state <= next_state; 		-- update current state on rising edge of the clock
	end if;
end process state_update;



counter_proc: process(aclk)
begin
    if (falling_edge(aclk)) then
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
		if (curr_state = rowRead or curr_state  = vBlank ) then
		    if (intensity = 0) then
		    rgb_data_o  <= "000000000000000000000000";
		    else
			     if (intensity < 128) then 
			         r_data <= "00000000";
			         g_data  <= std_logic_vector(to_unsigned(intensity*2,g_data'length));
			         b_data <=  std_logic_vector(to_unsigned(255 - intensity*2 ,b_data'length));
			     elsif (intensity > 128)		then	     
			         r_data  <= std_logic_vector(to_unsigned(intensity*2 ,r_data'length));
			         g_data <=  std_logic_vector(to_unsigned(255 - intensity*2 ,g_data'length));
			         b_data  <= "00000000";		
			     else
			     	 r_data <= "00000000";
			         g_data  <= "11111111";
			         b_data <=  "00000000";
			     end if;
			     rgb_data_o  <= r_data  & b_data & g_data; 
			end if;
        end if;
            
	end if;
end process datapath;

   
    

end Behavioral;
