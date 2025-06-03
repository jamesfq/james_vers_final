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
entity axis_bulk_fifo is
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
end axis_bulk_fifo;

----------------------------------------------------------------------------
-- Architecture Definition 
architecture Behavioral of axis_bulk_fifo is
----------------------------------------------------------------------------
-- Signals
----------------------------------------------------------------------------  
signal last : std_logic := '0';
signal empty : std_logic := '0';
signal full : std_logic := '0';
signal reset : std_logic := '0';
signal mode : std_logic := '0'; -- MODE: 0 = writing, 1 = reading
signal write_en : std_logic := '0';
signal read_en : std_logic := '0';

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
-- Assurance that data is only output when there is data in the FIFO and it is not set to reset
valid_output : process(mode, s00_axis_aresetn, m00_axis_aresetn)
begin
    if (mode = '1') then
        m00_axis_tvalid <= '1';
    elsif (s00_axis_aresetn = '0' or m00_axis_aresetn = '0') then
        m00_axis_tvalid <= '0';
    else            
        m00_axis_tvalid <= '0';
    end if;
end process valid_output;

-- Assurance that data is only output when there is data in the FIFO and it is not set to reset
valid_input : process(mode, s00_axis_aresetn, m00_axis_aresetn)
begin
    if (mode = '1') then
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

-- Assurance that data is only output when there is data in the FIFO and it is not set to reset
toggle_mode : process(last, full, empty)
begin
    if (full = '1') then
        mode <= '1';
    elsif (empty = '1' and mode = '1') then
        mode <= '0';
        m00_axis_tlast <= '0';
    elsif (last = '1' and mode = '1') then
        m00_axis_tlast <= '1';                    
    else
        m00_axis_tlast <= '0';
    end if;
end process toggle_mode;

set_enables : process(mode, s00_axis_tvalid, m00_axis_tready)
begin
    if (mode = '0') then
        read_en <= '0';
        
        if (s00_axis_tvalid = '1') then
            write_en <= '1';
        else
            write_en <= '0';
        end if;
    else
        write_en <= '0';
        
        if (m00_axis_tready = '1') then
            read_en <= '1';
        else
            read_en <= '0';
        end if;
    end if;
end process set_enables;

end Behavioral;
