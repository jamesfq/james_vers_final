----------------------------------------------------------------------------
--  Lab 2: Basic FIFO
----------------------------------------------------------------------------
--  ENGS 128 Spring 2025
--	Author: James Quirk and Dak Black
----------------------------------------------------------------------------
--	Description: Generic FIFO buffer that is extended as an AXI-viable FIFO in axis_fifo.vhd
----------------------------------------------------------------------------
-- Library Declarations
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

----------------------------------------------------------------------------
-- Entity definition
entity bulk_fifo is
Generic (
    FIFO_DEPTH : integer := 1024;
    DATA_WIDTH : integer := 32);
Port ( 
    clk_i       : in std_logic;
    reset_i     : in std_logic;
    
    -- Write channel
    wr_en_i     : in std_logic;
    wr_data_i   : in std_logic_vector(DATA_WIDTH-1 downto 0);
    
    -- Read channel
    rd_en_i     : in std_logic;
    rd_data_o   : out std_logic_vector(DATA_WIDTH-1 downto 0)  := (others => '0');
    
    -- Status flags
    last_o          : out std_logic;
    empty_o         : out std_logic;
    full_o          : out std_logic);   
end bulk_fifo;

----------------------------------------------------------------------------
-- Architecture Definition 
architecture Behavioral of bulk_fifo is
----------------------------------------------------------------------------
-- Define Constants and Signals
----------------------------------------------------------------------------
type mem_type is array (0 to FIFO_DEPTH-1) of std_logic_vector(DATA_WIDTH-1 downto 0);
signal fifo_buf : mem_type := (others => (others => '0'));

signal read_pointer, write_pointer : integer range 0 to FIFO_DEPTH-1 := 0;
signal data_count : integer range 0 to FIFO_DEPTH := 0;

signal full, ctr_d_add, ctr_d_subtr : std_logic := '0';
signal empty : std_logic:= '1';
signal last : std_logic:= '0';
----------------------------------------------------------------------------
begin
-- Latch the empty and full signals as ouputs
empty_o <= empty;
full_o  <= full;
last_o <= last;
----------------------------------------------------------------------------
-- Processes and Logic
----------------------------------------------------------------------------
-- Incrementing process for each of the read, write, and count pointers
pointer_inc: process(clk_i)
begin
    if rising_edge(clk_i) then 
    
        -- If reset is enabled, reinitialize all the variables
        if (reset_i = '1') then 
            read_pointer <= 0;
            write_pointer <= 0;
            data_count <= 0;
        else      
            if (wr_en_i = '1' and full = '0') then  -- writing counters
                if ( write_pointer = FIFO_DEPTH -1) then    -- wrapping
                    write_pointer <= 0;
                else
                    write_pointer <= write_pointer + 1;
                end if;
            end if;
            
            if (rd_en_i = '1' and empty = '0') then   -- reading counters            
                if (read_pointer = FIFO_DEPTH -1) then -- wrapping
                    read_pointer <= 0;
                else
                    read_pointer <= read_pointer + 1;
                end if;  
            end if;
            
            if (ctr_d_add = '1' and ctr_d_subtr = '1') then -- if read and write increment, no need to change size
                data_count  <= data_count;
            elsif(ctr_d_add = '1') then -- count increments if write increments
                data_count <= data_count + 1;
            elsif(ctr_d_subtr  = '1') then -- count decrements if read increments
                data_count <= data_count - 1;
            else 
                data_count  <= data_count; 
            end if;
            
        end if;

    end if;
    
end process pointer_inc;


-- Dictates how the data_count variable should be changed in pointer_inc and when to indicate a full or empty FIFO
signals_set: process(data_count, full, empty, rd_en_i, wr_en_i)
begin
    full <= '0';
    empty  <= '0';
    last <= '0';
    ctr_d_add <= '0';
    ctr_d_subtr  <= '0';
    
    -- change count based on writing/reading
    if (wr_en_i = '1' and full = '0') then 
        ctr_d_add <= '1';
    end if;
    
    if (rd_en_i = '1' and empty = '0') then 
        ctr_d_subtr <= '1';
    end if;
    
    -- set full and empty
    if(data_count = FIFO_DEPTH) then
        full <= '1';
    elsif(data_count = 0) then 
        empty <= '1';
    elsif (data_count = 1) then
        last <= '1';
    end if;
end process signals_set;

-- Determines what to read and write when request
fifo_lut: process(clk_i)
begin

    if rising_edge(clk_i) then  
        if (rd_en_i = '1' and empty = '0') then 
            rd_data_o <= fifo_buf(read_pointer);
        end if;
        if (wr_en_i = '1' and full = '0') then
            fifo_buf(write_pointer) <= wr_data_i;
        end if;      
    end if;
end process fifo_lut;
            

end Behavioral;
