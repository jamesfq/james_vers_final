----------------------------------------------------------------------------
--  Lab 2: AXI Stream FIFO
----------------------------------------------------------------------------
--  ENGS 128 Spring 2025
--	Author: James Quirk and Dak Black
----------------------------------------------------------------------------
--	Description: AXI Stream FIFO Controller/Responder Interface 
----------------------------------------------------------------------------
-- Library Declarations
library ieee;
use ieee.std_logic_1164.all;

----------------------------------------------------------------------------
-- Entity definition
entity axis_fifo is
	generic (
		DATA_WIDTH	: integer	:= 32;
		FIFO_DEPTH	: integer	:= 1024
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
end axis_fifo;

----------------------------------------------------------------------------
-- Architecture Definition 
architecture Behavioral of axis_fifo is
----------------------------------------------------------------------------
-- Signals
----------------------------------------------------------------------------  
signal empty : std_logic := '0';
signal full : std_logic := '0';
signal reset : std_logic := '0';

----------------------------------------------------------------------------
-- Component Declarations
----------------------------------------------------------------------------  
component fifo is
    Generic (
		FIFO_DEPTH : integer := FIFO_DEPTH;
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
end component fifo;

----------------------------------------------------------------------------
begin
m00_axis_tstrb <= s00_axis_tstrb;
m00_axis_tlast <= s00_axis_tlast;
----------------------------------------------------------------------------
-- Component Instantiations
----------------------------------------------------------------------------   
fifo_inst : fifo 
    port map (
        clk_i       => s00_axis_aclk,
        reset_i     => reset,
        wr_en_i     => s00_axis_tvalid,
        wr_data_i   => s00_axis_tdata,
        rd_en_i     => m00_axis_tready,
        rd_data_o   => m00_axis_tdata,
        empty_o     => empty,
        full_o      => full
        );
----------------------------------------------------------------------------
-- Logic
----------------------------------------------------------------------------  
-- Assurance that data is only output when there is data in the FIFO and it is not set to reset
valid_output : process(empty, s00_axis_aresetn, m00_axis_aresetn)
begin
    if (empty = '1') then
        m00_axis_tvalid <= '0';
    elsif (s00_axis_aresetn = '0' or m00_axis_aresetn = '0') then
        m00_axis_tvalid <= '0';
    else            
        m00_axis_tvalid <= '1';
    end if;
end process valid_output;

-- Assurance that data is only output when there is data in the FIFO and it is not set to reset
valid_input : process(full, s00_axis_aresetn, m00_axis_aresetn)
begin
    if (full = '1') then
        s00_axis_tready <= '0';
    elsif (s00_axis_aresetn = '0' or m00_axis_aresetn = '0') then
        s00_axis_tready <= '0';
    else
        s00_axis_tready <= '1';
    end if;
end process valid_input;

-- Switches the active low reset signal to the active high reset signal
reset_invert : process(s00_axis_aclk)
begin
    if (rising_edge(s00_axis_aclk)) then
        if (s00_axis_aresetn = '1' and m00_axis_aresetn = '1') then
            reset <= '0';
        else
            reset <= '1';
        end if;
    end if; 
end process reset_invert;

end Behavioral;
