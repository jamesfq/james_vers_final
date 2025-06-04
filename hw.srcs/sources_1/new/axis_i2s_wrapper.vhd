----------------------------------------------------------------------------
--  Lab 3: Digital Signal Processing - AXI I2S Wrapper
----------------------------------------------------------------------------
--  ENGS 128 Spring 2025
--	Author: James Quirk and Dak Black
----------------------------------------------------------------------------
--	Description: Updated I2S Wrapper for Lab 3, employing the AXI DDS
----------------------------------------------------------------------------
-- Add libraries 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;     
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

library UNISIM;
use UNISIM.VComponents.all;                                   
----------------------------------------------------------------------------
-- Entity definition
entity axis_i2s_wrapper is
	generic (
		-- Parameters of Axi Stream Bus Interface S00_AXIS, M00_AXIS
		C_AXI_STREAM_DATA_WIDTH	: integer	:= 32;
		AC_DATA_WIDTH : integer := 24;
		PHASE_DATA_WIDTH :  integer := 12;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 4
	);
    Port ( 
        ----------------------------------------------------------------------------
        -- Fabric clock from Zynq PS
		sysclk_i : in  std_logic;	
		
        ----------------------------------------------------------------------------
        -- I2S audio codec ports		
		-- User controls
		ac_mute_en_i : in STD_LOGIC;
--		dds_reset_i : in STD_LOGIC;
		dds_enable_i  : in STD_LOGIC;		

		-- Audio Codec I2S controls
        ac_bclk_o : out STD_LOGIC;
        ac_mclk_o : out STD_LOGIC;
        ac_mute_n_o : out STD_LOGIC;	-- Active Low
        
        -- Audio Codec DAC (audio out)
        ac_dac_data_o : out STD_LOGIC;
        ac_dac_lrclk_o : out STD_LOGIC;
        
        -- Audio Codec ADC (audio in)
        ac_adc_data_i : in STD_LOGIC;
        ac_adc_lrclk_o : out STD_LOGIC;
        
        
        lrclk_o : out STD_LOGIC;
        
        ----------------------------------------------------------------------------
        -- AXI Stream Interface (Receiver/Responder)
    	-- Ports of Axi Responder Bus Interface S00_AXIS
--		s00_axis_aclk     : in std_logic;
--		s00_axis_aresetn  : in std_logic;
--		s00_axis_tready   : out std_logic;
--		s00_axis_tdata	  : in std_logic_vector(C_AXI_STREAM_DATA_WIDTH-1 downto 0);
--		s00_axis_tstrb    : in std_logic_vector((C_AXI_STREAM_DATA_WIDTH/8)-1 downto 0);
--		s00_axis_tlast    : in std_logic;
--		s00_axis_tvalid   : in std_logic;
		
        -- AXI Stream Interface (Tranmitter/Controller)
		-- Ports of Axi Controller Bus Interface M00_AXIS
		m00_axis_aclk     : in std_logic;
		m00_axis_aresetn  : in std_logic;
		m00_axis_tvalid   : out std_logic;
		m00_axis_tdata    : out std_logic_vector(C_AXI_STREAM_DATA_WIDTH-1 downto 0);
		m00_axis_tstrb    : out std_logic_vector((C_AXI_STREAM_DATA_WIDTH/8)-1 downto 0);
		m00_axis_tlast    : out std_logic;
		m00_axis_tready   : in std_logic;
		
		-- AXI lite
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_AXI_STREAM_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_AXI_STREAM_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_AXI_STREAM_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic;
		
		-- Debug ports (ILA)
		dbg_left_audio_rx_o : out std_logic_vector(AC_DATA_WIDTH-1 downto 0);
		left_dds_phase_inc_dbg_o : out std_logic_vector(PHASE_DATA_WIDTH-1 downto 0);
		dbg_right_audio_rx_o : out std_logic_vector(AC_DATA_WIDTH-1 downto 0);
		right_dds_phase_inc_dbg_o : out std_logic_vector(PHASE_DATA_WIDTH-1 downto 0);
		lrclk_dbg	: out std_logic

		);
end axis_i2s_wrapper;
----------------------------------------------------------------------------
architecture Behavioral of axis_i2s_wrapper is
----------------------------------------------------------------------------
-- Define Constants and Signals
----------------------------------------------------------------------------
signal mclk : std_logic := '0';
signal bclk : std_logic := '0';
signal lrclk: std_logic := '0';

signal count: integer := 0;
signal count_en: std_logic := '0';
signal count_reset: std_logic := '0';

signal axi_transmitter_valid: std_logic := '0';
signal axi_transmitter_valid_temp: std_logic := '0';

signal left_rx: std_logic_vector(AC_DATA_WIDTH-1 downto 0);
signal right_rx: std_logic_vector(AC_DATA_WIDTH-1 downto 0);

signal left_axi_tx: std_logic_vector(AC_DATA_WIDTH-1 downto 0);
signal right_axi_tx: std_logic_vector(AC_DATA_WIDTH-1 downto 0);

signal left_tx_data: std_logic_vector(AC_DATA_WIDTH-1 downto 0);
signal right_tx_data: std_logic_vector(AC_DATA_WIDTH-1 downto 0);

--signal phase_inc_left : std_logic_vector(PHASE_DATA_WIDTH-1 downto 0);
--signal phase_inc_right : std_logic_vector(PHASE_DATA_WIDTH-1 downto 0); --not used

signal left_in_data : std_logic_vector(AC_DATA_WIDTH-1 downto 0);
signal right_in_data : std_logic_vector(AC_DATA_WIDTH-1 downto 0);

signal left_dds_data : std_logic_vector(AC_DATA_WIDTH-1 downto 0);
signal right_dds_data : std_logic_vector(AC_DATA_WIDTH-1 downto 0);

signal left_phase_inc_debug : std_logic_vector(PHASE_DATA_WIDTH-1 downto 0);
signal right_phase_inc_debug : std_logic_vector(PHASE_DATA_WIDTH-1 downto 0);
-- Debug ports (ILA)

----------------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------------
-- Clock generation
component i2s_clock_gen is
    Port (

        -- System clock in
		sysclk_125MHz_i   : in  std_logic;	
		
		-- Forwarded clocks
		mclk_fwd_o		  : out std_logic;	
		bclk_fwd_o        : out std_logic;
		adc_lrclk_fwd_o   : out std_logic;
		dac_lrclk_fwd_o   : out std_logic;

        -- Clocks for I2S components
		mclk_o		      : out std_logic;	
		bclk_o            : out std_logic;
		lrclk_o           : out std_logic);  
end component;

----------------------------------------------------------------------------------
-- I2S receiver
component i2s_receiver is
    Generic (AC_DATA_WIDTH : integer := AC_DATA_WIDTH);
    Port (

        -- Timing
		mclk_i    : in std_logic;	
		bclk_i    : in std_logic;	
		lrclk_i   : in std_logic;
		
		-- Data
		left_audio_data_o     : out std_logic_vector(AC_DATA_WIDTH-1 downto 0);
		right_audio_data_o    : out std_logic_vector(AC_DATA_WIDTH-1 downto 0);
		adc_serial_data_i     : in std_logic);  
end component; 

----------------------------------------------------------------------------------
-- I2S transmitter
component i2s_transmitter is
    Generic (AC_DATA_WIDTH : integer := AC_DATA_WIDTH);
    Port (

        -- Timing
		mclk_i    : in std_logic;	
		bclk_i    : in std_logic;	
		lrclk_i   : in std_logic;
		
		-- Data
		left_audio_data_i     : in std_logic_vector(AC_DATA_WIDTH-1 downto 0);
		right_audio_data_i    : in std_logic_vector(AC_DATA_WIDTH-1 downto 0);
		dac_serial_data_o     : out std_logic);  
end component; 

----------------------------------------------------------------------------------
-- NEW: AXI DDS added for Lab 3 to enable AXI-Lite compatible signal provision
component axi_dds is
	generic (
	    ----------------------------------------------------------------------------
		-- Users to add parameters here
		DDS_DATA_WIDTH : integer := 24;         -- DDS data width
        DDS_PHASE_DATA_WIDTH : integer := 12;   -- DDS phase increment data width
        ----------------------------------------------------------------------------

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 4
	);
	port (
	    ----------------------------------------------------------------------------
		-- Users to add ports here
		dds_clk_i     : in std_logic;
		dds_enable_i  : in std_logic;
		dds_reset_i   : in std_logic;
		left_dds_data_o    : out std_logic_vector(DDS_DATA_WIDTH-1 downto 0);
		right_dds_data_o    : out std_logic_vector(DDS_DATA_WIDTH-1 downto 0);
		
		-- Debug ports to send to ILA
		left_dds_phase_inc_dbg_o : out std_logic_vector(DDS_PHASE_DATA_WIDTH-1 downto 0);   
		right_dds_phase_inc_dbg_o : out std_logic_vector(DDS_PHASE_DATA_WIDTH-1 downto 0);   
		
		----------------------------------------------------------------------------
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Ports of Axi Responder/Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic
	);
end component;

---------------------------------------------------------------------------- 
-- AXI stream transmitter
component axis_transmitter is
    generic (
		DATA_WIDTH	: integer	:= AC_DATA_WIDTH;
		FIFO_WIDTH	: integer	:= C_AXI_STREAM_DATA_WIDTH
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
		m00_axis_tstrb       : out std_logic_vector(3 downto 0) := (others => '0');
		m00_axis_tvalid      : out std_logic
	);
end component;
    
---------------------------------------------------------------------------- 
-- AXI stream receiver
component axis_receiver is
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
		s00_axis_tready      : out std_logic

	);
end component;
----------------------------------------------------------------------------
begin
----------------------------------------------------------------------------
-- Component instantiations
----------------------------------------------------------------------------    
-- Clock generation
clock_generation: i2s_clock_gen
port map(
    sysclk_125MHz_i => sysclk_i,
    mclk_fwd_o      => ac_mclk_o,
    bclk_fwd_o      => ac_bclk_o,
    adc_lrclk_fwd_o => ac_adc_lrclk_o,
    dac_lrclk_fwd_o => ac_dac_lrclk_o,
    mclk_o          => mclk,
    bclk_o			=> bclk,
	lrclk_o			=> lrclk
	);


-- ATTACHING DDS INSTEAD

-------------------------------------------------------------------------- 
-- I2S receiver
receiver: i2s_receiver
    port map (
		mclk_i                => mclk,
        bclk_i                => bclk,	
		lrclk_i               => lrclk,
		left_audio_data_o     => left_rx, -- New output signal that can be muxed with DDS output depending on mode
		right_audio_data_o    => right_rx,
		adc_serial_data_i     => ac_adc_data_i); -- CHANGED TO CUT OFF RECIEVER (easier than switching others)
	
-------------------------------------------------------------------------- 

axis_dds : axi_dds
    port map (
        dds_clk_i                   => lrclk,
		dds_enable_i                => dds_enable_i,
		dds_reset_i                 => '0',
		left_dds_data_o             => left_dds_data,
		right_dds_data_o            => right_dds_data,
		
		-- Debug ports to send to ILA
		left_dds_phase_inc_dbg_o    => left_dds_phase_inc_dbg_o,
		right_dds_phase_inc_dbg_o   => right_dds_phase_inc_dbg_o,
		
		----------------------------------------------------------------------------
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Ports of Axi Responder/Slave Bus Interface S00_AXI
		s00_axi_aclk                => s00_axi_aclk,
		s00_axi_aresetn             => s00_axi_aresetn,
		s00_axi_awaddr              => s00_axi_awaddr,
		s00_axi_awprot              => s00_axi_awprot,
		s00_axi_awvalid             => s00_axi_awvalid,
		s00_axi_awready             => s00_axi_awready,
		s00_axi_wdata               => s00_axi_wdata,
		s00_axi_wstrb               => s00_axi_wstrb,
		s00_axi_wvalid              => s00_axi_wvalid,
		s00_axi_wready              => s00_axi_wready,
		s00_axi_bresp               => s00_axi_bresp,
		s00_axi_bvalid              => s00_axi_bvalid,
		s00_axi_bready              => s00_axi_bready,
		s00_axi_araddr              => s00_axi_araddr,
		s00_axi_arprot              => s00_axi_arprot,
		s00_axi_arvalid             => s00_axi_arvalid,
		s00_axi_arready             => s00_axi_arready,
		s00_axi_rdata               => s00_axi_rdata,
		s00_axi_rresp               => s00_axi_rresp,
		s00_axi_rvalid              => s00_axi_rvalid,
		s00_axi_rready              => s00_axi_rready
    );
----------------------------------------------------------------------------------

-- I2S transmitter
transmitter: i2s_transmitter
port map(
    mclk_i              => mclk,
    bclk_i              => bclk,
    lrclk_i             => lrclk,
    left_audio_data_i   => left_rx,		
    right_audio_data_i  => right_rx,
    dac_serial_data_o   => ac_dac_data_o);		-- DUT output

---------------------------------------------------------------------------- 
-- AXI stream transmitter
axi_transmitter: axis_transmitter
port map(
    -- Ports of Axi Responder Bus Interface S00_AXIS
    lrclk_i             => lrclk,           
    m00_axis_aclk       => m00_axis_aclk,
    m00_axis_aresetn    => m00_axis_aresetn,
    left_audio_data_i   => left_axi_tx,
    right_audio_data_i  => right_axi_tx,
    m00_axis_tready     => m00_axis_tready,
    
    m00_axis_tdata      => m00_axis_tdata,
    m00_axis_tlast      => m00_axis_tlast,
    m00_axis_tstrb      => m00_axis_tstrb,
    m00_axis_tvalid     => m00_axis_tvalid
);
    
---------------------------------------------------------------------------- 
---- AXI stream receiver
--axi_receiver: axis_receiver
--port map(
--    -- Ports of Axi Responder Bus Interface S00_AXIS
--    lrclk_i             => lrclk,           
--    s00_axis_aclk       => s00_axis_aclk,
--    s00_axis_aresetn    => s00_axis_aresetn,
--    s00_axis_tdata      => s00_axis_tdata,
--    s00_axis_tlast      => s00_axis_tlast,
--    s00_axis_tstrb      => s00_axis_tstrb,
--    s00_axis_tvalid     => s00_axis_tvalid,
    
--    s00_axis_tready     => s00_axis_tready,
--    left_audio_data_o   => left_tx_data,
--    right_audio_data_o  => right_tx_data
--);

-- Latch the debug signals to be observed in the ILA
dbg_left_audio_rx_o <= left_dds_data;
--dbg_left_audio_tx_o <= left_axi_tx;
dbg_right_audio_rx_o <= right_dds_data;
--dbg_right_audio_tx_o <= right_axi_tx;

lrclk_dbg <= lrclk ;

--set_valid_o: process(count)
--begin
--    if (count = 3) then
--         m00_axis_tvalid <= '1';
--    else
--         m00_axis_tvalid <= '0'; 
--    end if; 
--end process set_valid_o;

counter_proc: process(s00_axi_aclk)
begin
    if (falling_edge(s00_axi_aclk)) then
         if count_reset = '1' then
            count <= 0;
         elsif  count_en = '1' then 
            count <= count + 1;
         end if; 
    end if; 
end process counter_proc;

set_counter_signals: process(s00_axi_aclk)
begin
    if (falling_edge(s00_axi_aclk)) then
         count_reset <= '0';
         count_en <= '0';
         
         if (count = 3) then
            count_reset <= '1';
         elsif (axi_transmitter_valid = '1' and axi_transmitter_valid_temp = '0') then
            count_en <= '1';
         end if; 
    end if; 
end process set_counter_signals;


lrclk_o <= lrclk;
---------------------------------------------------------------------------- 
-- Logic
---------------------------------------------------------------------------- 
ac_mute_n_o <= '1'; -- Fix mute_n as high so as never to mute

-- Determines whether to output the DDS or I2S receiver data
dds_codec_swap: process(sysclk_i)
begin
    if (falling_edge(sysclk_i)) then
        if (dds_enable_i = '1') then
            left_axi_tx <= left_dds_data;
            right_axi_tx <= right_dds_data;
           
        else
            left_axi_tx <= left_rx;
            right_axi_tx <= right_rx;
        end if;
    end if;
        
end process dds_codec_swap;
----------------------------------------------------------------------------


end Behavioral;