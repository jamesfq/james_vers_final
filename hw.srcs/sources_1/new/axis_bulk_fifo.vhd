----------------------------------------------------------------------------
--  Final Project: AXI Stream Bulk FIFO
----------------------------------------------------------------------------
--  ENGS 128 Spring 2025
--	Author: James Quirk and Dak Black
----------------------------------------------------------------------------
--	Description: AXI Stream Controller/Responder Interface for the Bulk FIFO 
----------------------------------------------------------------------------
-- Library Declarations
library ieee;
use ieee.std_logic_1164.all;

----------------------------------------------------------------------------
-- Entity definition
entity axis_bulk_fifo is
	generic (
		DATA_WIDTH	: integer	:= 32;
		FIFO_DEPTH	: integer	:= 64 -- FFT loading size
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
end axis_bulk_fifo;

----------------------------------------------------------------------------
-- Architecture Definition 
architecture Behavioral of axis_bulk_fifo is
----------------------------------------------------------------------------
-- Signals
----------------------------------------------------------------------------  
signal empty : std_logic := '0';
signal full : std_logic := '0';
signal reset : std_logic := '0';
signal write_en : std_logic := '0';
signal read_en : std_logic := '0';

-- New signals
signal last : std_logic := '0'; -- Indicates one data value left in the FIFO
signal mode : std_logic := '0'; -- MODE: 0 = writing in, 1 = reading out

----------------------------------------------------------------------------
-- Component Declarations
----------------------------------------------------------------------------  
component bulk_fifo is
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
        last_o          : out std_logic;
        empty_o         : out std_logic;
        full_o          : out std_logic);   
end component bulk_fifo;

----------------------------------------------------------------------------
begin
m00_axis_tstrb <= s00_axis_tstrb;
----------------------------------------------------------------------------
-- Component Instantiations
----------------------------------------------------------------------------   
fifo_inst : bulk_fifo 
    port map (
        clk_i       => s00_axis_aclk,
        reset_i     => reset,
        wr_en_i     => write_en,
        wr_data_i   => s00_axis_tdata,
        rd_en_i     => read_en,
        rd_data_o   => m00_axis_tdata,
        last_o      => last,
        empty_o     => empty,
        full_o      => full
        );
----------------------------------------------------------------------------
-- Logic
----------------------------------------------------------------------------  
-- Indicates that the output data is valid when we are reading data out and the reset signal is deactivated
valid_output : process(mode, s00_axis_aresetn, m00_axis_aresetn)
begin
    if (mode = '1'  and s00_axis_aresetn = '1' and m00_axis_aresetn = '1') then -- If in writing mode, FIFO needs to empty, so output valid
        m00_axis_tvalid <= '1';
    else            
        m00_axis_tvalid <= '0';
    end if;
end process valid_output;

-- Indicates that the FIFO is ready to receive data when we are writing data in and the reset signal is deactivated
valid_input : process(mode, s00_axis_aresetn, m00_axis_aresetn)
begin
    if (mode = '0' and s00_axis_aresetn = '1' and m00_axis_aresetn = '1') then -- If in reading mode, FIFO isn't full yet, so output ready
        s00_axis_tready <= '1';
    else
        s00_axis_tready <= '0';
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

-- Toggles the mode each time the FIFO fills/empties entirely. Note that it starts empty, so by default we are in write mode
toggle_mode : process(full, empty)
begin
    if (full = '1') then
        mode <= '1';
    elsif (empty = '1') then
        mode <= '0';
    end if;
end process toggle_mode;

-- Outputs tlast signal when FIFO is about to be emptied
last_output : process(last, mode)
begin
    if (last = '1' and mode = '1') then -- last indicates that there is one data point in the FIFO, mode indicates we are reading out
        m00_axis_tlast <= '1'; -- tlast only goes high when decrementing to the last data value, not inputting the first data value because of mode checking
    else
        m00_axis_tlast <= '0';
    end if;
end process last_output;

-- Sets the internal write_en and read_en signals
set_enables : process(mode, s00_axis_tvalid, m00_axis_tready)
begin
    write_en <= '0'; -- Off by default
    read_en <= '0';

    if (mode = '0' and s00_axis_tvalid = '1') then -- If we are in write mode and input data is valid, write data in
        write_en <= '1';
        read_en <= '0';
        
    elsif (mode = '1' and m00_axis_tready = '1') then -- If we are in read mode and receiver is ready, read data out
        read_en <= '1';
        write_en <= '0';
    end if;
end process set_enables;

end Behavioral;