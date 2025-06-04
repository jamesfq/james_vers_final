----------------------------------------------------------------------------
--  Lab 2: AXI Receiver
----------------------------------------------------------------------------
--  ENGS 128 Spring 2025
--	Author: James Quirk and Dak Black
----------------------------------------------------------------------------
--	Description: AXI-compatible data receiver
----------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity axis_receiver is
    generic (
		DATA_WIDTH	: integer	:= 24;
		FIFO_WIDTH	: integer	:= 32
	);
	port (
	
		-- Ports of Axi Responder Bus Interface S00_AXIS
		lrclk_i              : in std_logic;
		s00_axis_aclk        : in std_logic;
		s00_axis_tdata       : in std_logic_vector(FIFO_WIDTH-1 downto 0);
		s00_axis_aresetn     : in std_logic;
		s00_axis_tlast       : in std_logic;
		s00_axis_tstrb       : in std_logic_vector(3 downto 0);
		s00_axis_tvalid      : in std_logic;
		
        left_audio_data_o    : out std_logic_vector(DATA_WIDTH-1 downto 0);
        right_audio_data_o   : out std_logic_vector(DATA_WIDTH-1 downto 0);
        
		s00_axis_tready      : out std_logic;
		lr_valid_o           : out std_logic
		

	);
end axis_receiver;

architecture Behavioral of axis_receiver is

----------------------------------------------------------------------------
-- FSM states
type state_type is (Idle, Ready, LReceive, RReceive, ValidOut, Hold);	
signal curr_state, next_state : state_type := Idle;

begin
----------------------------------------------------------------------------
-- State machine
----------------------------------------------------------------------------
-- FSM Next State Logic (asynchronous, no clock)
-- Include all state change triggering signals in the sensitivity list
-- The only signal getting assigned in this process should be next_state
next_state_logic : process(curr_state, lrclk_i, s00_axis_aresetn, s00_axis_tvalid)
-- ++++ Add necessary signals to the sensitivity list above ++++
-- ++++ Modify next state logic to match your paper design ++++
begin

	-- Default conditions
	next_state <= curr_state; 	-- default is to stay in the same state

	-- Use a case statement to switch between states
	case curr_state is	
	
	    when Idle =>
            if (s00_axis_aresetn = '1' and lrclk_i = '1') then
                next_state <= Ready;
            end if;
        
        when Ready =>
			if (s00_axis_aresetn = '0') then
			    next_state <= Idle;
			elsif (s00_axis_tvalid = '1') then    -- wait until enabled		   
		        next_state <= LReceive;
            end if;  

		when LReceive => -- Now that the values have been debounced, grab the first value
			if (s00_axis_aresetn = '0') then
			    next_state <= Idle;
			else     -- wait until enabled		   
		        next_state <= RReceive;
            end if;

		when RReceive => -- Grab the second value
			if (s00_axis_aresetn = '0') then
			    next_state <= Idle;
			else     -- wait until enabled		   
		        next_state <= ValidOut;
            end if;
        
        when ValidOut =>
            if (s00_axis_aresetn = '0') then
			    next_state <= Idle;
            else
                next_state <= Hold;
            end if;
                        
        when Hold => -- Wait for the next lrclk cycle, meaning stay still until lrclk goes low
            if (s00_axis_aresetn = '0') then
			    next_state <= Idle;
            elsif (lrclk_i = '0') then
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
	s00_axis_tready <= '0';
	lr_valid_o <= '0'; 	

    -- Use a case statement to switch between states
    case curr_state is	
    
		when Idle =>
		
		when Ready =>
            s00_axis_tready <= '1';
		
		when LReceive =>
            s00_axis_tready <= '1';
            
        when RReceive =>

        when ValidOut =>
			lr_valid_o <= '1';

        when Hold =>
        
		when others => -- this is like the "else" part of an if/else statement, but shouldn't reached
			
    end case;					-- end of case statement
    
end process fsm_output_logic;

----------------------------------------------------------------------------
-- FSM State Update Process (synchronous, clocked)
state_update : process (s00_axis_aclk)
begin
	if (rising_edge(s00_axis_aclk)) then
		curr_state <= next_state; 		-- update current state on rising edge of the clock
	end if;
end process state_update;

-- Datapath takes debounced signals after flip flop
datapath : process (s00_axis_aclk)
begin
	if (rising_edge(s00_axis_aclk)) then
		if (curr_state = LReceive) then
            left_audio_data_o <= s00_axis_tdata(FIFO_WIDTH-1 downto FIFO_WIDTH - DATA_WIDTH);
            
        elsif (curr_state = RReceive) then
            right_audio_data_o <= s00_axis_tdata(FIFO_WIDTH-1 downto FIFO_WIDTH - DATA_WIDTH);
        end if;
	end if;
end process datapath;

end Behavioral;