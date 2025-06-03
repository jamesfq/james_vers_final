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

entity fft_wrapper is
    generic (
		DATA_WIDTH	: integer	:= 24;
		FFT_BINS	: integer	:= 1024
		);
    PORT (
        aclk : IN STD_LOGIC;
        
        s_axis_config_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        s_axis_config_tvalid : IN STD_LOGIC;
        s_axis_config_tready : OUT STD_LOGIC;
              
        s_axis_data_tdata : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
        s_axis_data_tvalid : IN STD_LOGIC;
        s_axis_data_tready : OUT STD_LOGIC;
        s_axis_data_tlast : IN STD_LOGIC;
        
        m_axis_data_mag_tdata : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
        m_axis_data_tuser : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        m_axis_data_tvalid : OUT STD_LOGIC;
        m_axis_data_tready : IN STD_LOGIC;
        m_axis_data_tlast : OUT STD_LOGIC;
        
        event_frame_started : OUT STD_LOGIC;
        event_tlast_unexpected : OUT STD_LOGIC;
        event_tlast_missing : OUT STD_LOGIC;
        event_status_channel_halt : OUT STD_LOGIC;
        event_data_in_channel_halt : OUT STD_LOGIC;
        event_data_out_channel_halt : OUT STD_LOGIC;
        
        rgb_data_o : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
        
        reset_i             : IN STD_LOGIC;
        fsync_i             : IN STD_LOGIC;
        hblank_i             : IN STD_LOGIC;
        vblank_i             : IN STD_LOGIC
  );
end fft_wrapper;

architecture Behavioral of fft_wrapper is

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

component fifo_wait is
    Generic (
		FIFO_DEPTH : integer := FFT_BINS;
        DATA_WIDTH : integer := DATA_WIDTH);
    Port ( 
        clk_i       : in std_logic;
        reset_i     : in std_logic;
        
        -- Write channel
        wr_en_i     : in std_logic;
        wr_data_i   : in std_logic_vector(DATA_WIDTH-1 downto 0);
        
        -- Read channel
        rd_en_i     : in std_logic;
        rd_data_o   : out std_logic_vector(DATA_WIDTH-1 downto 0);
        
        -- Status flags
        empty_o         : out std_logic;
        full_o          : out std_logic);   
end component fifo_wait;




type mem_type is array (0 to FFT_BINS-1) of std_logic_vector(DATA_WIDTH-1 downto 0);
signal fft_buf : mem_type := (others => (others => '0'));


signal data_real_tdata : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal data_imag_tdata : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal data_tdata, mag_data : STD_LOGIC_VECTOR(47 DOWNTO 0);
signal tuser_tmp: STD_LOGIC_VECTOR(7 DOWNTO 0);
signal user_int :  integer range 0 to FFT_BINS  := 0;
signal mag_data_int :  integer  := 0;
signal bin_num :  integer  range 0 to FFT_BINS  := 0;
signal real_data, imag_data  : integer;



  ----------------------------------------------------------------------------
-- FSM states
type state_type is (vBlank, rowRead, hBlank);	
signal curr_state, next_state : state_type := vBlank;
  
  
  
  















begin


fft_inst : xfft_0
  PORT MAP (
    aclk => aclk,
    s_axis_config_tdata => s_axis_config_tdata,
    s_axis_config_tvalid => s_axis_config_tvalid,
    s_axis_config_tready => s_axis_config_tready,
    s_axis_data_tdata => s_axis_data_tdata,
    s_axis_data_tvalid => s_axis_data_tvalid,
    s_axis_data_tready => s_axis_data_tready,
    s_axis_data_tlast => s_axis_data_tlast,
    m_axis_data_tdata => data_tdata,
    m_axis_data_tuser => tuser_tmp,
    m_axis_data_tvalid => m_axis_data_tvalid,
    m_axis_data_tready => m_axis_data_tready,
    m_axis_data_tlast => m_axis_data_tlast,
    event_frame_started => event_frame_started,
    event_tlast_unexpected => event_tlast_unexpected,
    event_tlast_missing => event_tlast_missing,
    event_status_channel_halt => event_status_channel_halt,
    event_data_in_channel_halt => event_data_in_channel_halt,
    event_data_out_channel_halt => event_data_out_channel_halt
  );
  

  
  

  
  
  
  
  
  
  
  
  
  
  
  square_sum: process(aclk )
  begin 
  if rising_edge (aclk) then
    data_real_tdata <= data_tdata(23 downto 8);
    data_imag_tdata <= data_tdata(47 downto 32);
    user_int <= to_integer(unsigned(tuser_tmp));
   end if; 
  
  end process;
  
  
  
  -- squaring stuff
   real_data <= to_integer(unsigned(data_real_tdata));
   imag_data <= to_integer(unsigned(data_imag_tdata));

   mag_data_int <= real_data * real_data + imag_data *imag_data;
   mag_data <= std_logic_vector(to_unsigned(mag_data_int,m_axis_data_mag_tdata'length)); 
   
   
   
fft_save: process(aclk)
begin
if rising_edge(aclk) then
    fft_buf(user_int) <=  mag_data;
end if;

end process;    
   
   
   
   
   
   
  
   
   
   
   
   
   
   
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
			if (hblank_i = '1') then		
				next_state <= hBlank;
			end if;
				
		when hBlank =>
		  if (bin_num  = 127) then
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

        when rowRead  =>
			count_en <= '1';     -- begin shifting data into the register
				
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

-- Datapath (synchronous, clocked, separated to guarantee we do not create a latch in the FSM)
datapath : process (aclk)
begin
	if (rising_edge(aclk)) then
		if (curr_state = rowRead) then
			rgb_data_o <= fft_buf(bin_num);
        end if;
            
	end if;
end process datapath;

   
   
    

end Behavioral;
