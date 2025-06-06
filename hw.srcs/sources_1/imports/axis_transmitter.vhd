----------------------------------------------------------------------------
--  Lab 2: AXI Transmitter
----------------------------------------------------------------------------
--  ENGS 128 Spring 2025
--	Author: James Quirk and Dak Black
----------------------------------------------------------------------------
--	Description: AXI-compatible data transmitter
----------------------------------------------------------------------------
-- Library Declarations
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity axis_transmitter is
    generic (
		DATA_WIDTH	: integer	:= 24;
		FIFO_WIDTH	: integer	:= 32
	);
	port (
	
		-- Ports of Axi Responder Bus Interface S00_AXIS
		lrclk_i              : in std_logic;
		m00_axis_aclk        : in std_logic;
		m00_axis_aresetn     : in std_logic;
		left_audio_data_i    : in std_logic_vector(DATA_WIDTH-1 downto 0);
        right_audio_data_i   : in std_logic_vector(DATA_WIDTH-1 downto 0);
		m00_axis_tready      : in std_logic;
		
		m00_axis_tdata       : out std_logic_vector(FIFO_WIDTH-1 downto 0);
		m00_axis_tlast       : out std_logic := '0';
		m00_axis_tstrb       : out std_logic_vector((FIFO_WIDTH/8)-1 downto 0) := (others => '0');
		m00_axis_tvalid      : out std_logic;
		
		s_ready           : out std_logic := '0'
	);
end axis_transmitter;

architecture Behavioral of axis_transmitter is

----------------------------------------------------------------------------
-- FSM states
type state_type is (Idle, LTransmit, RTransmit, Hold, ReadyOut);	
signal curr_state, next_state : state_type := Idle;

signal Ltemp1, Rtemp1, Ltemp2, Rtemp2 : std_logic_vector(FIFO_WIDTH-1 downto 0);
signal lrclk_temp1, lrclk_temp2 : std_logic;

begin
----------------------------------------------------------------------------
-- State machine
----------------------------------------------------------------------------
-- FSM Next State Logic (asynchronous, no clock)
-- Include all state change triggering signals in the sensitivity list
-- The only signal getting assigned in this process should be next_state
next_state_logic : process(curr_state, lrclk_temp2, m00_axis_tready, m00_axis_aresetn)
begin

	-- Default conditions
	next_state <= curr_state; 	-- default is to stay in the same state

	-- Use a case statement to switch between states
	case curr_state is	
	
	    when Idle => -- Wait to transmit until lrclk goes high
            if (m00_axis_aresetn = '1' and lrclk_temp2 = '1') then 
                next_state <= LTransmit;
            end if;
             	
		when LTransmit => -- Transmit the left data on the first axi clock cycle after lrclk rise
			if (m00_axis_aresetn = '0') then
			    next_state <= Idle;
			elsif (m00_axis_tready = '1') then     -- wait until enabled		   
		        next_state <= RTransmit;
            end if;

		when RTransmit => -- Transmit the right data on the second axi clock cycle after lrclk rise
			if (m00_axis_aresetn = '0') then
			    next_state <= Idle;
			elsif (m00_axis_tready = '1') then     -- wait until enabled		   
		        next_state <= ReadyOut ;
            end if;
            
        when ReadyOut =>
            next_state <= Hold;
            
        when Hold => -- Wait until axi clock falls again before returning to the beginning of the cycle so that we don't repeatedly trigger on the same lrclk high cycle
            if (m00_axis_aresetn = '0') then
			    next_state <= Idle;
            elsif (lrclk_temp2 = '0') then
			    next_state <= Idle;
            end if;
        


		when others => -- this is like the "else" part of an if/else statement, but shouldn't reached
			next_state <= Idle;
			
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
	m00_axis_tvalid <= '0'; 
	s_ready <= '0';		

    -- Use a case statement to switch between states
    case curr_state is	
    
		when Idle =>
		
		when LTransmit => -- Ready to transmit
			m00_axis_tvalid <= '1';
			
        when RTransmit => -- Ready to transmit
			m00_axis_tvalid <= '1';
				
		when Hold =>
		
		when ReadyOut => 
		  s_ready <= '1';	
			
		when others => -- this is like the "else" part of an if/else statement, but shouldn't reached
			
    end case;					-- end of case statement
    
end process fsm_output_logic;

----------------------------------------------------------------------------
-- FSM State Update Process (synchronous, clocked)
state_update : process (m00_axis_aclk)
begin
	if (rising_edge(m00_axis_aclk)) then
		curr_state <= next_state; 		-- update current state on rising edge of the clock
	end if;
end process state_update;

-- Sets the data that is output as either left or right post debounce
datapath : process (m00_axis_aclk)
begin
	if (rising_edge(m00_axis_aclk)) then
		if (curr_state = LTransmit) then
            m00_axis_tdata <= Ltemp2;
            
        elsif (curr_state = RTransmit) then
            m00_axis_tdata <= Rtemp2;
        end if;
	end if;
end process datapath;

-- Flip flop to ensure correct clocking
dFF : process(m00_axis_aclk)
begin
    if (rising_edge(m00_axis_aclk)) then
        Ltemp1 <= left_audio_data_i & (FIFO_WIDTH-DATA_WIDTH downto 1 => '0');
        Rtemp1 <= right_audio_data_i & (FIFO_WIDTH-DATA_WIDTH downto 1 => '0');
        lrclk_temp1 <= lrclk_i;
                
        Ltemp2 <= Ltemp1;
        Rtemp2 <= Rtemp1;
        lrclk_temp2 <= lrclk_temp1;
    end if;
end process dFF;

end Behavioral;