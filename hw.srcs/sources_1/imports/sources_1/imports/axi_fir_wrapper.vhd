----------------------------------------------------------------------------
--  Lab 3: AXI Stream FIR
----------------------------------------------------------------------------
--  ENGS 128 Spring 2025
--	Author: James Quirk and Dak Black
----------------------------------------------------------------------------
--	Description: AXI Stream FIR Controller/Responder Interface 
----------------------------------------------------------------------------
-- Library Declarations
library ieee;
use ieee.std_logic_1164.all;

----------------------------------------------------------------------------
-- Entity definition
entity axis_fir is
	generic (
		AXI_WIDTH	: integer	:= 32;
		FIR_WIDTH	: integer	:= 24
		
	);
	port (
	    -- User inputs 
	    fir_sel_i         : in std_logic_vector(2 downto 0);
		-- Ports of Axi Responder Bus Interface S00_AXIS
		s00_axis_aclk     : in std_logic;
		s00_axis_aresetn  : in std_logic;
		s00_axis_tready   : out std_logic;
		s00_axis_tdata	  : in std_logic_vector(AXI_WIDTH-1 downto 0);
		s00_axis_tstrb    : in std_logic_vector((AXI_WIDTH/8)-1 downto 0);
		s00_axis_tlast    : in std_logic;
		s00_axis_tvalid   : in std_logic;
		
		lrclk_i           : in std_logic;

		-- Ports of Axi Controller Bus Interface M00_AXIS
		m00_axis_aclk     : in std_logic;
		m00_axis_aresetn  : in std_logic;
		m00_axis_tvalid   : out std_logic;
		m00_axis_tdata    : out std_logic_vector(AXI_WIDTH-1 downto 0);
		m00_axis_tstrb    : out std_logic_vector((AXI_WIDTH/8)-1 downto 0);
		m00_axis_tlast    : out std_logic;
		m00_axis_tready   : in std_logic
	);
end axis_fir;

----------------------------------------------------------------------------
-- Architecture Definition 
architecture Behavioral of axis_fir is
----------------------------------------------------------------------------
-- Signals
---------------------------------------------------------------------------- 
-- These signals store the data output by the various filters 
-- Left
signal data_lpf_l: std_logic_vector(FIR_WIDTH-1 downto 0) := (others => '0');
signal data_hpf_l: std_logic_vector(FIR_WIDTH-1 downto 0) := (others => '0');
signal data_bpf_l: std_logic_vector(FIR_WIDTH-1 downto 0) := (others => '0');
signal data_bsf_l: std_logic_vector(FIR_WIDTH-1 downto 0) := (others => '0');

-- Right
signal data_lpf_r: std_logic_vector(FIR_WIDTH-1 downto 0) := (others => '0');
signal data_hpf_r: std_logic_vector(FIR_WIDTH-1 downto 0) := (others => '0');
signal data_bpf_r: std_logic_vector(FIR_WIDTH-1 downto 0) := (others => '0');
signal data_bsf_r: std_logic_vector(FIR_WIDTH-1 downto 0) := (others => '0');

-- Data output by the AXI receiver
signal axi_rx_r_data: std_logic_vector(FIR_WIDTH-1 downto 0) := (others => '0');
signal axi_rx_l_data: std_logic_vector(FIR_WIDTH-1 downto 0) := (others => '0');

-- Data output by the AXI transmitter
signal axi_tx_r_data: std_logic_vector(FIR_WIDTH-1 downto 0) := (others => '0');
signal axi_tx_l_data: std_logic_vector(FIR_WIDTH-1 downto 0) := (others => '0');

-- Indicates valid data output by the transmitter
signal valid_o          : std_logic := '0';

-- Indicates valid data output by the filters
signal lpf_r_valid          : std_logic := '0';
signal lpf_l_valid          : std_logic := '0';
signal hpf_r_valid          : std_logic := '0';
signal hpf_l_valid          : std_logic := '0';
signal bpf_r_valid          : std_logic := '0';
signal bpf_l_valid          : std_logic := '0';
signal bsf_r_valid          : std_logic := '0';
signal bsf_l_valid          : std_logic := '0';

-- Indicates valid data input into the filters
signal slpf_r_valid          : std_logic := '0';
signal slpf_l_valid          : std_logic := '0';
signal shpf_r_valid          : std_logic := '0';
signal shpf_l_valid          : std_logic := '0';
signal sbpf_r_valid          : std_logic := '0';
signal sbpf_l_valid          : std_logic := '0';
signal sbsf_r_valid          : std_logic := '0';
signal sbsf_l_valid          : std_logic := '0';

-- Indicates that the AXI transmitter is ready to receive filter data
signal lpf_r_ready          : std_logic := '0';
signal lpf_l_ready          : std_logic := '0';
signal hpf_r_ready          : std_logic := '0';
signal hpf_l_ready          : std_logic := '0';
signal bpf_r_ready          : std_logic := '0';
signal bpf_l_ready          : std_logic := '0';
signal bsf_r_ready          : std_logic := '0';
signal bsf_l_ready          : std_logic := '0';

-- Indicates that the filter is ready to receive data from the AXI receiver
signal slpf_r_ready          : std_logic := '0';
signal slpf_l_ready          : std_logic := '0';
signal shpf_r_ready          : std_logic := '0';
signal shpf_l_ready          : std_logic := '0';
signal sbpf_r_ready          : std_logic := '0';
signal sbpf_l_ready          : std_logic := '0';
signal sbsf_r_ready          : std_logic := '0';
signal sbsf_l_ready          : std_logic := '0';

-- Indicates that the AXI receiver is ready
signal recv_ready            : std_logic := '0';

-- Indicates that a filter should be enabled
signal filter_en            : std_logic := '0';

-- Indicates that the AXI receiver's data is valid
signal lr_valid         :  std_logic := '0';

-- Stores the data output either by the filter or the AXI receiver when filters are deactivated
signal filter_output    : std_logic_vector(AXI_WIDTH-1 downto 0) := (others => '0');


----------------------------------------------------------------------------
-- Component Declarations
----------------------------------------------------------------------------  
-- AXI Receiver
component  axis_receiver 
    port (
    	lrclk_i              : in std_logic;
		s00_axis_aclk        : in std_logic;
		s00_axis_tdata       : in std_logic_vector(AXI_WIDTH-1 downto 0);
		s00_axis_aresetn     : in std_logic;
		s00_axis_tlast       : in std_logic;
		s00_axis_tstrb       : in std_logic_vector(3 downto 0);
		s00_axis_tvalid      : in std_logic;
		
        left_audio_data_o    : out std_logic_vector(FIR_WIDTH-1 downto 0);
        right_audio_data_o   : out std_logic_vector(FIR_WIDTH-1 downto 0);
		s00_axis_tready      : out std_logic;
		lr_valid_o           : out std_logic
	);
	end component;
	
-- AXI Transmitter
component axis_transmitter
    port( 
        lrclk_i              : in std_logic;
		m00_axis_aclk        : in std_logic;
		m00_axis_aresetn     : in std_logic;
		left_audio_data_i    : in std_logic_vector(FIR_WIDTH-1 downto 0);
        right_audio_data_i   : in std_logic_vector(FIR_WIDTH-1 downto 0);
		m00_axis_tready      : in std_logic;
		
		m00_axis_tdata       : out std_logic_vector(AXI_WIDTH-1 downto 0);
		m00_axis_tlast       : out std_logic := '0';
		m00_axis_tstrb       : out std_logic_vector(3 downto 0) := (others => '0');
		m00_axis_tvalid      : out std_logic
		);
end component;

-- Low-pass filter
component fir_lpf_0
  port (
    aclk : IN STD_LOGIC;
    s_axis_data_tvalid : IN STD_LOGIC;
    s_axis_data_tready : OUT STD_LOGIC;
    s_axis_data_tdata : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tready : IN STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
end component;

-- High-pass filter
component fir_hpf_0
  port (
    aclk : IN STD_LOGIC;
    s_axis_data_tvalid : IN STD_LOGIC;
    s_axis_data_tready : OUT STD_LOGIC;
    s_axis_data_tdata : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tready : IN STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
end component;

-- Band-pass filter
component fir_bpf_0
  port (
    aclk : IN STD_LOGIC;
    s_axis_data_tvalid : IN STD_LOGIC;
    s_axis_data_tready : OUT STD_LOGIC;
    s_axis_data_tdata : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tready : IN STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
end component;

-- Band-stop filter
component fir_bsf_0
  port (
    aclk : IN STD_LOGIC;
    s_axis_data_tvalid : IN STD_LOGIC;
    s_axis_data_tready : OUT STD_LOGIC;
    s_axis_data_tdata : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tready : IN STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
end component;



----------------------------------------------------------------------------
begin
m00_axis_tstrb <= s00_axis_tstrb;
m00_axis_tlast <= s00_axis_tlast;
----------------------------------------------------------------------------
-- Component Instantiations
----------------------------------------------------------------------------   
-- Low-pass filter for left data
lpf_l_inst : fir_lpf_0
  port map (
    aclk => s00_axis_aclk,
    s_axis_data_tvalid => slpf_l_valid ,
    s_axis_data_tready => slpf_l_ready,
    s_axis_data_tdata => axi_rx_l_data,
    m_axis_data_tvalid => lpf_l_valid,
    m_axis_data_tready => lpf_l_ready,
    m_axis_data_tdata => data_lpf_l
  );

-- Low-pass filter for right data
lpf_r_inst : fir_lpf_0
  port map (
    aclk => s00_axis_aclk,
    s_axis_data_tvalid => slpf_r_valid,
    s_axis_data_tready => slpf_r_ready,
    s_axis_data_tdata => axi_rx_r_data,
    m_axis_data_tvalid => lpf_r_valid,
    m_axis_data_tready => lpf_r_ready,
    m_axis_data_tdata => data_lpf_r
  );

-- High-pass filter for left data
hpf_l_inst : fir_hpf_0
  port map (
    aclk => s00_axis_aclk,
    s_axis_data_tvalid => shpf_l_valid,
    s_axis_data_tready => shpf_l_ready,
    s_axis_data_tdata => axi_rx_l_data,
    m_axis_data_tvalid => hpf_l_valid,
    m_axis_data_tready => hpf_l_ready,
    m_axis_data_tdata => data_hpf_l
  );

-- High-pass filter for right data
  hpf_r_inst : fir_hpf_0
  port map (
    aclk => s00_axis_aclk,
    s_axis_data_tvalid => shpf_r_valid,
    s_axis_data_tready => shpf_r_ready,
    s_axis_data_tdata => axi_rx_r_data,
    m_axis_data_tvalid => hpf_r_valid,
    m_axis_data_tready => hpf_r_ready,
    m_axis_data_tdata => data_hpf_r
  );

-- Band-pass filter for left data
  bpf_l_inst : fir_bpf_0
  port map (
    aclk => s00_axis_aclk,
    s_axis_data_tvalid => sbpf_l_valid,
    s_axis_data_tready => sbpf_l_ready,
    s_axis_data_tdata => axi_rx_l_data,
    m_axis_data_tvalid => bpf_l_valid,
    m_axis_data_tready => bpf_l_ready,
    m_axis_data_tdata => data_bpf_l
  );
 
 -- Band-pass filter for right data 
bpf_r_inst : fir_bpf_0
  port map (
    aclk => s00_axis_aclk,
    s_axis_data_tvalid => sbpf_r_valid,
    s_axis_data_tready => sbpf_r_ready,
    s_axis_data_tdata => axi_rx_r_data,
    m_axis_data_tvalid => bpf_r_valid,
    m_axis_data_tready => bpf_r_ready,
    m_axis_data_tdata => data_bpf_r
  );

-- Band-stop filter for left data
  bsf_l_inst : fir_bsf_0
  port map (
    aclk => s00_axis_aclk,
    s_axis_data_tvalid => sbsf_l_valid,
    s_axis_data_tready => sbsf_l_ready,
    s_axis_data_tdata => axi_rx_l_data,
    m_axis_data_tvalid => bsf_l_valid,
    m_axis_data_tready => bsf_l_ready,
    m_axis_data_tdata => data_bsf_l
  );

-- Band-stop filter for right data
bsf_r_inst : fir_bsf_0
  port map (
    aclk => s00_axis_aclk,
    s_axis_data_tvalid => sbsf_r_valid,
    s_axis_data_tready => sbsf_r_ready,
    s_axis_data_tdata => axi_rx_r_data,
    m_axis_data_tvalid => bsf_r_valid,
    m_axis_data_tready => bsf_r_ready,
    m_axis_data_tdata => data_bsf_r
  );

-- Internal AXI receiver
receiver_inst : axis_receiver
    port map (
		lrclk_i              => lrclk_i,
		lr_valid_o           => lr_valid,
		s00_axis_aclk        => s00_axis_aclk,
		s00_axis_tdata       => s00_axis_tdata,
		s00_axis_aresetn     => s00_axis_aresetn,
		s00_axis_tlast       => s00_axis_tlast,
		s00_axis_tstrb       => s00_axis_tstrb,
		s00_axis_tvalid      => s00_axis_tvalid,
		
        left_audio_data_o    => axi_rx_l_data,
        right_audio_data_o   => axi_rx_r_data,
		s00_axis_tready      => recv_ready
		
   ); 
   
-- Internal AXI transmitter
 transmitter_inst :  axis_transmitter
    port map( 
        lrclk_i              => lrclk_i,
		m00_axis_aclk        => s00_axis_aclk,
		m00_axis_aresetn     => s00_axis_aresetn,
		left_audio_data_i    => axi_tx_l_data,
        right_audio_data_i   => axi_tx_r_data,
		m00_axis_tready      => m00_axis_tready,
		
		m00_axis_tdata       => filter_output,
		m00_axis_tlast       => filter_en,
		m00_axis_tstrb       => open,
		m00_axis_tvalid      => valid_o
		);
   
   
-- Logic -------------------------------------------------------
-- Determines which filter to pass data to
filter_select: process(s00_axis_aclk)
begin
    if rising_edge(s00_axis_aclk) then
        lpf_l_ready <= '0'; -- Defaults all filters to off
        lpf_r_ready <= '0';
        hpf_l_ready <= '0';
        hpf_l_ready <= '0';
        bpf_l_ready <= '0';
        bpf_l_ready <= '0';
        bsf_l_ready <= '0';
        bsf_l_ready <= '0';
        
        slpf_l_valid <= '0';
        slpf_r_valid <= '0';
        shpf_l_valid <= '0';
        shpf_l_valid <= '0';
        sbpf_l_valid <= '0';
        sbpf_l_valid <= '0';
        sbsf_l_valid <= '0';
        sbsf_l_valid <= '0';
        
        
        if fir_sel_i(2) = '1' then -- If in pass through mode, pass through
            axi_tx_l_data <= axi_rx_l_data;
            axi_tx_r_data <= axi_rx_r_data;
        
        else if fir_sel_i(1) = '0' then -- Otherwise, decide which filter to use based on switches
            if fir_sel_i(0) = '0' then
                lpf_l_ready <= filter_en; -- If the AXI transmitter is ready, pass data to it
                slpf_l_valid <= lr_valid; -- If AXI receiver data is good, input data
                if lpf_l_valid = '1' then
                    axi_tx_l_data <= data_lpf_l ; -- If output data is valid, update the data through
                end if;
                lpf_r_ready <= filter_en; -- Same idea for all other switch combinations
                slpf_r_valid <= lr_valid; 

                if lpf_r_valid = '1' then
                    axi_tx_r_data <= data_lpf_r ;
                end if;
            else
                hpf_l_ready <= filter_en;
                shpf_l_valid <= lr_valid; 
                if hpf_l_valid = '1' then
                    axi_tx_l_data <= data_hpf_l ;
                end if;
                shpf_r_valid <= lr_valid; 
                 hpf_r_ready <= filter_en;               
                if hpf_r_valid = '1' then
                    axi_tx_r_data <= data_hpf_r ; 
                end if;               
                
            end if;
        else
            if fir_sel_i(0) = '0' then
                sbpf_l_valid <= lr_valid; 
                bpf_l_ready <= filter_en;                
                if bpf_l_valid = '1' then
                    axi_tx_l_data <= data_bpf_l ;
                end if;
                sbpf_r_valid <= lr_valid; 
                bpf_r_ready <= filter_en;
                if bpf_r_valid = '1' then
                    axi_tx_r_data <= data_bpf_r ;               
                end if;
            else
                sbsf_l_valid <= lr_valid; 
                bsf_l_ready <= filter_en;
                if bsf_l_valid = '1' then
                    axi_tx_l_data <= data_bsf_l ;
                end if;    
                
                sbsf_r_valid <= lr_valid; 
                bsf_r_ready <= filter_en;
                if bsf_r_valid = '1' then
                    axi_tx_r_data <= data_bsf_r ;
                end if;            
            end if; 
       end if;
     end if;
   end if; 
       
end process filter_select;

-- Passes the valid signal and selected data out of the AXI transmitter
filter_activate: process(s00_axis_aclk)
begin
    if rising_edge(s00_axis_aclk) then
        m00_axis_tvalid <= valid_o;
        m00_axis_tdata <= filter_output;    
   end if; 
       
end process filter_activate;

-- Determines when the overall wrapper is ready to receive data, strictly based on AXI transmitter
ready_handler: process(s00_axis_aclk )
begin
    if rising_edge(s00_axis_aclk ) then
         if recv_ready = '1' then 
              s00_axis_tready <= '1';
         else  
              s00_axis_tready <= '0';          
         end if;
         
    end if;
     
end process ready_handler;





end Behavioral;
