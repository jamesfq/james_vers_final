----------------------------------------------------------------------------
-- 	ENGS 128 Spring 2025
--	Author: James Quirk & Dak Black
----------------------------------------------------------------------------
--	Description: Shift register with serial load and parallel output
----------------------------------------------------------------------------
-- Add libraries
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------------------------
-- Entity definition
entity sipo_shift_register is
    Generic ( DATA_WIDTH : integer);
    Port ( 
      clk_i         : in std_logic;
      data_i        : in std_logic;
      load_en_i     : in std_logic;
      shift_en_i    : in std_logic;
      
      data_o        : out std_logic_vector(DATA_WIDTH-1 downto 0));
end sipo_shift_register;
----------------------------------------------------------------------------
architecture Behavioral of sipo_shift_register is
----------------------------------------------------------------------------
-- Define Constants and Signals
----------------------------------------------------------------------------
-- ++++ Add internal signals here ++++
signal shift_reg : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');

----------------------------------------------------------------------------
begin
----------------------------------------------------------------------------
-- ++++ Describe the behavior using processes ++++
----------------------------------------------------------------------------     

----------------------------------------------------------------------------
-- Shift register logic for SIPO
shift_reg_logic : process (clk_i)
begin
	if (rising_edge(clk_i)) then
	   if (load_en_i = '1') then       -- load now indicates a parallel push out
	       data_o <= shift_reg; 
	   elsif (shift_en_i = '1') then
	       shift_reg <= shift_reg(DATA_WIDTH-2 downto 0) & data_i; -- circular shift
	   end if;
	end if;
end process shift_reg_logic;

----------------------------------------------------------------------------   
end Behavioral;