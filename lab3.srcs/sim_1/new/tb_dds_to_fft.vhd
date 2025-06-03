----------------------------------------------------------------------------
--  Lab 3: Digital Signal Processing
----------------------------------------------------------------------------
--  ENGS 128 Spring 2025
--	Author: James Quirk
----------------------------------------------------------------------------
--	Description: Testbench for FIFO --> FIFO AXI stream passthrough
----------------------------------------------------------------------------
-- Add libraries 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

----------------------------------------------------------------------------
-- Entity definition
entity tb_dds_to_fft is
end tb_dds_to_fft;

----------------------------------------------------------------------------
-- Architecture Definition 
architecture testbench of tb_dds_to_fft is
----------------------------------------------------------------------------
-- Define Constants and Signals
----------------------------------------------------------------------------
-- Constants
constant T_HOLD       : time := 10 ns;
constant AXI_DATA_WIDTH : integer := 32;        -- 32-bit AXI data bus
constant AXI_FIFO_DEPTH : integer := 64;        -- AXI stream FIFO depth
constant CLOCK_PERIOD : time := 8ns;            -- 125 MHz clock

-- Signal declarations
signal clk : std_logic := '0';
signal axi_reset_n : std_logic := '1';
signal test_num : integer := 0;
signal mute_en_sw : std_logic := '0';


----------------------------------------------------------------------------
-- AXI Stream FIFO
signal fifo_0_axis_data_out : std_logic_vector(AXI_DATA_WIDTH-1 downto 0) := (others => '0');
signal fft_data_out : std_logic_vector(47 downto 0) := (others => '0');
signal fifo_0_axis_data_out_valid, fft_data_out_valid : std_logic := '0';
signal fifo_0_axis_data_out_last, fft_data_out_last : std_logic := '0';
signal fifo_0_axis_ready, fft_ready : std_logic := '0';

--signal fifo_1_axis_data_out : std_logic_vector(AXI_DATA_WIDTH-1 downto 0);
--signal fifo_1_axis_data_out_valid : std_logic := '0';
--signal fifo_1_axis_data_out_last : std_logic := '0';
signal fifo_1_axis_ready : std_logic := '0';

signal fifo_0_axis_tstrb, fifo_1_axis_tstrb, fft_data_strb : std_logic_vector((AXI_DATA_WIDTH/8)-1 downto 0) := (others => '0');

-- Define constants 
constant LRCLK_PERIOD: time := 20833ns; 	-- define clock period, 20833ns = 48 kHz
constant REG_DATA_WIDTH : integer := 4;
constant C_S00_AXI_DATA_WIDTH : integer := 32;
constant C_S00_AXI_ADDR_WIDTH : integer := 4;

----------------------------------------------------------------------------------
-- AXI signals
signal S_AXI_AWADDR                   :  std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
signal S_AXI_AWVALID                  :  std_logic := '0';
signal S_AXI_WDATA                    :  std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0) := (others => '0');
signal S_AXI_WSTRB                    :  std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0) := (others => '0');
signal S_AXI_WVALID                   :  std_logic := '0';
signal S_AXI_BREADY                   :  std_logic := '0';
signal S_AXI_ARADDR                   :  std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
signal S_AXI_ARVALID                  :  std_logic := '0';
signal S_AXI_RREADY                   :  std_logic := '0';
signal S_AXI_ARREADY                  : std_logic := '0';
signal S_AXI_RDATA                    : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0) := (others => '0');
signal S_AXI_RRESP                    : std_logic_vector(1 downto 0) := (others => '0');
signal S_AXI_RVALID                   : std_logic := '0';
signal S_AXI_WREADY                   : std_logic := '0';
signal S_AXI_BRESP                    : std_logic_vector(1 downto 0) := (others => '0');
signal S_AXI_BVALID                   : std_logic := '0';
signal S_AXI_AWREADY                  : std_logic := '0';
signal S_AXI_AWPROT                   : std_logic_vector(2 downto 0) := (others => '0');
signal S_AXI_ARPROT                   : std_logic_vector(2 downto 0) := (others => '0');

-- DDS signals
signal dds_reset                      :  std_logic := '0';
signal dds_enable                     :  std_logic := '1';
signal lrclk                          :  std_logic := '0';

----------------------------------------------------------------------------------
-- Testbench signals
signal enable_send, enable_read : std_logic := '0';
signal axi_data_out : std_logic_vector(REG_DATA_WIDTH-1 downto 0) := (others => '0');
signal axi_data_write : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0) := (others => '0');

signal sample_data : std_logic := '0';

signal data_select : std_logic_vector(C_S00_AXI_ADDR_WIDTH-3 downto 0) := (others => '0');
signal axi_reg : integer := 0;
signal mute_n, bclk, mclk, data_out : std_logic := '0';
signal reset_n : std_logic := '1';
signal M_AXIS_TREADY, S_AXIS_TREADY : std_logic := '0';
signal M_AXIS_TDATA, S_AXIS_TDATA : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0) := (others => '0');
signal M_AXIS_TSTRB, S_AXIS_TSTRB : std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0) := (others => '0');
signal M_AXIS_TLAST, S_AXIS_TLAST : std_logic := '0';
signal M_AXIS_TVALID, S_AXIS_TVALID : std_logic := '0';

type mem_type is array (0 to AXI_FIFO_DEPTH-1) of std_logic_vector(23 downto 0);
signal fft_buff : mem_type := (others => (others => '0'));
signal fft_data_user : STD_LOGIC_VECTOR ( 7 downto 0 );

-- Communication between processes regarding DUT configuration
type T_DO_CONFIG is (NONE, IMMEDIATE, AFTER_START, DONE);
shared variable do_config : T_DO_CONFIG := NONE;  -- instruction for driving config slave channel
type T_CFG_FWD_INV is (FWD, INV);
signal cfg_fwd_inv : T_CFG_FWD_INV := FWD;
type T_CFG_SCALE_SCH is (ZERO, DEFAULT);
signal cfg_scale_sch : T_CFG_SCALE_SCH := DEFAULT; -- we will use all these settings as defined, except do_config will be set to immediate when ready

-- Config slave channel signals
signal s_axis_config_tvalid        : std_logic := '0';  -- payload is valid
signal s_axis_config_tready        : std_logic := '1';  -- slave is ready
signal s_axis_config_tdata         : std_logic_vector(7 downto 0) := (others => '0');  -- data payload

-- Data slave channel signals
signal s_axis_data_tvalid          : std_logic := '0';  -- payload is valid
signal s_axis_data_tready          : std_logic := '1';  -- slave is ready
signal s_axis_data_tdata           : std_logic_vector(47 downto 0) := (others => '0');  -- data payload
signal s_axis_data_tlast           : std_logic := '0';  -- indicates end of packet

-- Config slave channel alias signals
signal s_axis_config_tdata_fwd_inv      : std_logic                    := '0';              -- forward or inverse
signal s_axis_config_tdata_scale_sch    : std_logic_vector(7 downto 0) := (others => '0');  -- scaling schedule

-- Data slave channel alias signals
signal s_axis_data_tdata_re             : std_logic_vector(23 downto 0) := (others => '0');  -- real data
signal s_axis_data_tdata_im             : std_logic_vector(23 downto 0) := (others => '0');  -- imaginary data

-- Event signals
signal event_frame_started         : std_logic := '0';
signal event_tlast_unexpected      : std_logic := '0';
signal event_tlast_missing         : std_logic := '0';
signal event_status_channel_halt   : std_logic := '0';
signal event_data_in_channel_halt  : std_logic := '0';
signal event_data_out_channel_halt : std_logic := '0';

signal m_axis_data_tdata_re             : std_logic_vector(23 downto 0) := (others => '0');  -- real data
signal m_axis_data_tdata_im             : std_logic_vector(23 downto 0) := (others => '0');  -- imaginary data

----------------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------------
component axis_i2s_wrapper is
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
		dds_reset_i : in STD_LOGIC;
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
        
        ----------------------------------------------------------------------------
        -- AXI Stream Interface (Receiver/Responder)
    	-- Ports of Axi Responder Bus Interface S00_AXIS
		s00_axis_aclk     : in std_logic;
		s00_axis_aresetn  : in std_logic;
		s00_axis_tready   : out std_logic;
		s00_axis_tdata	  : in std_logic_vector(C_AXI_STREAM_DATA_WIDTH-1 downto 0);
		s00_axis_tstrb    : in std_logic_vector((C_AXI_STREAM_DATA_WIDTH/8)-1 downto 0);
		s00_axis_tlast    : in std_logic;
		s00_axis_tvalid   : in std_logic;
		
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
		left_dds_phase_inc_dbg_o : out std_logic_vector(AC_DATA_WIDTH-1 downto 0);
		dbg_right_audio_rx_o : out std_logic_vector(AC_DATA_WIDTH-1 downto 0);
		right_dds_phase_inc_dbg_o : out std_logic_vector(AC_DATA_WIDTH-1 downto 0)

		);
end component;

component axis_bulk_fifo is
	generic (
		DATA_WIDTH	: integer	:= 32;
		FIFO_DEPTH	: integer	:= AXI_FIFO_DEPTH
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
		m00_axis_tdata    : out std_logic_vector(DATA_WIDTH-1 downto 0);
		m00_axis_tstrb    : out std_logic_vector((DATA_WIDTH/8)-1 downto 0);
		m00_axis_tlast    : out std_logic;
		m00_axis_tready   : in std_logic
	);
end component;

component xfft_0 is
  Port ( 
    aclk : in STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tlast : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_data_tuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tready : in STD_LOGIC;
    m_axis_data_tlast : out STD_LOGIC;
    event_frame_started : out STD_LOGIC;
    event_tlast_unexpected : out STD_LOGIC;
    event_tlast_missing : out STD_LOGIC;
    event_status_channel_halt : out STD_LOGIC;
    event_data_in_channel_halt : out STD_LOGIC;
    event_data_out_channel_halt : out STD_LOGIC
  );

end component;

----------------------------------------------------------------------------
-- Procedures for driving the AXI bus
----------------------------------------------------------------------------
-- Procedure to write data to our AXI IP registers
procedure master_write_axi_reg(
    signal S_AXI_AWADDR : out std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
    signal S_AXI_WDATA : out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
    signal S_AXI_WSTRB : out std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
    signal enable_send : out std_logic;
    signal axi_register : in integer;
    signal write_data    : in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
    signal S_AXI_BVALID : in std_logic) is
 begin
    S_AXI_AWADDR <= (others => '0');   
    S_AXI_AWADDR(C_S00_AXI_ADDR_WIDTH-1 downto 2) <= std_logic_vector(to_unsigned(axi_register,C_S00_AXI_ADDR_WIDTH-2));
    S_AXI_WSTRB <= (others => '1');
    S_AXI_WDATA <= std_logic_vector(resize(unsigned(write_data),C_S00_AXI_DATA_WIDTH));
    enable_send <= '1';             --Start AXI Write to responder
    wait for 1 ns; 
    enable_send <= '0';             --Clear Start Send Flag
    
    wait until S_AXI_BVALID = '1';
    wait until S_AXI_BVALID = '0';  --AXI Write finished
    S_AXI_WSTRB <= (others => '0');
    wait for CLOCK_PERIOD;

 end procedure master_write_axi_reg;

----------------------------------------------------------------------------
-- Procedure to read data from our AXI IP registers
procedure master_read_axi_reg(
    signal S_AXI_ARADDR : out std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
    signal enable_read : out std_logic;
    signal axi_register : in integer;
    signal S_AXI_RVALID : in std_logic) is
 begin
    S_AXI_ARADDR <= (others => '0');
    S_AXI_ARADDR(C_S00_AXI_ADDR_WIDTH-1 downto 2) <= std_logic_vector(to_unsigned(axi_register,C_S00_AXI_ADDR_WIDTH-2));
    enable_read <= '1';         --Start AXI Read from responder
    wait for 1 ns; 
    enable_read <= '0';         --Clear "Start Read" Flag
    wait until S_AXI_RVALID = '1';
    wait until S_AXI_RVALID = '0';
    wait for CLOCK_PERIOD;

 end procedure master_read_axi_reg;
 

----------------------------------------------------------------------------
begin
----------------------------------------------------------------------------
-- Component instantiations
----------------------------------------------------------------------------    
axis_i2s : axis_i2s_wrapper
    port map (
        -- Fabric clock from Zynq PS
		sysclk_i                => clk,
		
        ----------------------------------------------------------------------------
        -- I2S audio codec ports		
		-- User controls
		ac_mute_en_i                => mute_en_sw,
		dds_reset_i                => dds_reset,
		dds_enable_i                => dds_enable,
		
		-- Audio Codec I2S controls
        ac_bclk_o                => bclk,
        ac_mclk_o                => mclk,
        ac_mute_n_o                => mute_n,
        
        -- Audio Codec DAC (audio out)
        ac_dac_data_o                => data_out,
        ac_dac_lrclk_o                => open,
        
        -- Audio Codec ADC (audio in)
        ac_adc_data_i                => sample_data, -- REVISIT: uncomment when receiver is brought back
        ac_adc_lrclk_o                => lrclk,
        
        ----------------------------------------------------------------------------
        -- AXI Stream Interface (Receiver/Responder)
    	-- Ports of Axi Responder Bus Interface S00_AXIS
		s00_axis_aclk                => clk,
		s00_axis_aresetn                => reset_n,
		s00_axis_tready                => S_AXIS_TREADY,
		s00_axis_tdata                => S_AXIS_TDATA,
		s00_axis_tstrb                => S_AXIS_TSTRB,
		s00_axis_tlast                => S_AXIS_TLAST,
		s00_axis_tvalid                => S_AXIS_TVALID,
		
        -- AXI Stream Interface (Tranmitter/Controller)
		-- Ports of Axi Controller Bus Interface M00_AXIS
		m00_axis_aclk                => clk,
		m00_axis_aresetn                => reset_n,
		m00_axis_tvalid                => M_AXIS_TVALID,
		m00_axis_tdata                => M_AXIS_TDATA,
		m00_axis_tstrb                => M_AXIS_TSTRB,
		m00_axis_tlast                => M_AXIS_TLAST,
		m00_axis_tready                  => M_AXIS_TREADY, 
		
		----------------------------------------------------------------------------
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Ports of Axi Responder/Slave Bus Interface S00_AXI
		s00_axi_aclk                => clk,
		s00_axi_aresetn             => reset_n,
		s00_axi_awaddr  => S_AXI_AWADDR,
        s00_axi_awprot  => S_AXI_AWPROT,
        s00_axi_awvalid => S_AXI_AWVALID,
        s00_axi_awready => S_AXI_AWREADY,
        s00_axi_wdata   => S_AXI_WDATA,
        s00_axi_wstrb   => S_AXI_WSTRB,
        s00_axi_wvalid  => S_AXI_WVALID,
        s00_axi_wready  => S_AXI_WREADY,
        s00_axi_bresp   => S_AXI_BRESP,
        s00_axi_bvalid  => S_AXI_BVALID,
        s00_axi_bready  => S_AXI_BREADY,
        s00_axi_araddr  => S_AXI_ARADDR,
        s00_axi_arprot  => S_AXI_ARPROT,
        s00_axi_arvalid => S_AXI_ARVALID,
        s00_axi_arready => S_AXI_ARREADY,
        s00_axi_rdata   => S_AXI_RDATA,
        s00_axi_rresp   => S_AXI_RRESP,
        s00_axi_rvalid  => S_AXI_RVALID,
        s00_axi_rready  => S_AXI_RREADY
    );

 -- AXI Stream FIFO (DDS --> FIR)
fifo_0_dds_to_fir: axis_bulk_fifo
port map (
  
    s00_axis_aclk => clk,
    s00_axis_aresetn => axi_reset_n,    -- button 0
    s00_axis_tready => M_AXIS_TREADY,   -- REVISIT: I don't think we want this going here now. We want it going into the FIR
    s00_axis_tdata => M_AXIS_TDATA,
    s00_axis_tstrb => M_AXIS_TSTRB,
    s00_axis_tlast => M_AXIS_TLAST,     -- not using TLAST
    s00_axis_tvalid => M_AXIS_TVALID, 

    m00_axis_aclk => clk,
    m00_axis_aresetn => axi_reset_n,
    m00_axis_tvalid => fifo_0_axis_data_out_valid,
    m00_axis_tdata => fifo_0_axis_data_out,
    m00_axis_tstrb => fifo_0_axis_tstrb,             -- not using TSTRB 
    m00_axis_tlast => fifo_0_axis_data_out_last,
    m00_axis_tready => fft_ready);
----------------------------------------------------------------------------

fft : xfft_0
    port map (
      aclk                        => clk,
      s_axis_config_tvalid        => s_axis_config_tvalid,
      s_axis_config_tready        => s_axis_config_tready,
      s_axis_config_tdata         => s_axis_config_tdata,
      s_axis_data_tvalid          => fifo_0_axis_data_out_valid,
      s_axis_data_tready          => fft_ready,
      s_axis_data_tdata           => "000000000000000000000000" & fifo_0_axis_data_out(31 downto 8),
      s_axis_data_tlast           => fifo_0_axis_data_out_last,
      m_axis_data_tvalid          => fft_data_out_valid,
      m_axis_data_tready          => '1',
      m_axis_data_tdata           => fft_data_out,
      m_axis_data_tuser           => fft_data_user, -- REVISIT: ASSIGN
      m_axis_data_tlast           => fft_data_out_last,
      event_frame_started         => event_frame_started,
      event_tlast_unexpected      => event_tlast_unexpected,
      event_tlast_missing         => event_tlast_missing,
      event_status_channel_halt   => event_status_channel_halt,
      event_data_in_channel_halt  => event_data_in_channel_halt,
      event_data_out_channel_halt => event_data_out_channel_halt
      );
 
 -- AXI Stream FIFO (FIR --> output)
fifo_1_fft_to_out: axis_bulk_fifo
port map (
  
    s00_axis_aclk => clk,
    s00_axis_aresetn => axi_reset_n,    -- button 0
    s00_axis_tready => fifo_1_axis_ready,
    s00_axis_tdata => fft_data_out(23 downto 0) & "00000000", -- REVISIT: I don't think we want this going here now. We want it going into the FIR
    s00_axis_tstrb => fft_data_strb,
    s00_axis_tlast => fft_data_out_last,   -- not using TLAST
    s00_axis_tvalid => fft_data_out_valid, 

    m00_axis_aclk => clk,
    m00_axis_aresetn => axi_reset_n,
    m00_axis_tvalid => S_AXIS_TVALID,
    m00_axis_tdata => S_AXIS_TDATA,
    m00_axis_tstrb => S_AXIS_TSTRB,
    m00_axis_tlast => S_AXIS_TLAST,
    m00_axis_tready => S_AXIS_TREADY);

----------------------------------------------------------------------------------
-- Processes from AXI lite testbench
----------------------------------------------------------------------------

-- Initiate process which simulates a master wanting to write.
 -- This process is blocked on a "Send Flag" (enable_send).
 -- When the flag goes to 1, the process exits the wait state and
 -- execute a write transaction.
 send : PROCESS
 BEGIN
    S_AXI_AWVALID <= '0';
    S_AXI_WVALID <= '0';
    S_AXI_BREADY <= '0';
    loop
        wait until enable_send = '1';
        wait until clk= '0';
            S_AXI_AWVALID <= '1';
            S_AXI_WVALID <= '1';
        wait until (S_AXI_AWREADY and S_AXI_WREADY) = '1';  --Client ready to read address/data        
            S_AXI_BREADY <= '1';
        wait until S_AXI_BVALID = '1';  -- Write result valid
            assert S_AXI_BRESP = "00" report "AXI data not written" severity failure;
            S_AXI_AWVALID <= '0';
            S_AXI_WVALID <= '0';
            S_AXI_BREADY <= '1';
        wait until S_AXI_BVALID = '0';  -- All finished
            S_AXI_BREADY <= '0';
    end loop;
 END PROCESS send;

----------------------------------------------------------------------------
-- Initiate process which simulates a master wanting to read.
-- This process is blocked on a "Read Flag" (enable_read).
-- When the flag goes to 1, the process exits the wait state and
-- execute a read transaction.
read : PROCESS
BEGIN
    S_AXI_ARVALID <= '0';
    S_AXI_RREADY <= '0';
    loop
        wait until enable_read = '1';
        wait until clk= '0';
            S_AXI_ARVALID <= '1';
            S_AXI_RREADY <= '1';
        wait until (S_AXI_RVALID and S_AXI_ARREADY) = '1';  --Client provided data
            assert S_AXI_RRESP = "00" report "AXI data not written" severity failure;
            S_AXI_ARVALID <= '0';
            S_AXI_RREADY <= '0';
    end loop;
END PROCESS read;


  config_stimuli : process
    variable scale_sch : std_logic_vector(5 downto 0);
  begin

    -- Drive a configuration when requested by data_stimuli process
    wait until rising_edge(clk);
    while do_config = NONE or do_config = DONE loop
      wait until rising_edge(clk);
    end loop;

    -- If the configuration is requested to occur after the next frame starts, wait for that event
    if do_config = AFTER_START then
      wait until event_frame_started = '1';
      wait until rising_edge(clk);
    end if;

    -- Drive inputs T_HOLD time after rising edge of clock
    wait for T_HOLD;

    -- Construct the config slave channel TDATA signal
    s_axis_config_tdata <= (others => '0');  -- clear unused bits
    -- Format the transform direction
    if cfg_fwd_inv = FWD then
      s_axis_config_tdata(0) <= '1';  -- forward
    elsif cfg_fwd_inv = INV then
      s_axis_config_tdata(0) <= '0';  -- inverse
    end if;
    -- Format the scaling schedule
    if cfg_scale_sch = ZERO then  -- no scaling
      scale_sch := (others => '0');
    elsif cfg_scale_sch = DEFAULT then  -- default scaling, for largest magnitude output with no overflow guaranteed
      scale_sch(1 downto 0) := "11";  -- largest scaling at first stage
      for s in 2 to 3 loop
        scale_sch(s*2-1 downto s*2-2) := "10";  -- less scaling at later stages
      end loop;
    end if;
    s_axis_config_tdata(6 downto 1) <= scale_sch;

    -- Drive the transaction on the config slave channel
    s_axis_config_tvalid <= '1';
    loop
      wait until rising_edge(clk);
      exit when s_axis_config_tready = '1';
    end loop;
    wait for T_HOLD;
    s_axis_config_tvalid <= '0';

    -- Tell the data_stimuli process that the configuration has been done
    do_config := DONE;

  end process config_stimuli;

  -----------------------------------------------------------------------
  -- Record outputs, to use later as inputs for another frame
  -----------------------------------------------------------------------


----------------------------------------------------------------------------   
-- Clock Generation Processes
----------------------------------------------------------------------------  
-- Generate 100 MHz ADC clock      
fft_assign : process
begin
	wait for CLOCK_PERIOD;	    -- wait for one CLOCK_PERIOD
	
	loop							-- toggle, wait half a clock period, and loop
        fft_buff(to_integer(unsigned(fft_data_user))) <= fft_data_out(23 downto 0);
        
        wait for CLOCK_PERIOD;
	end loop;
end process fft_assign;

-- Generate 100 MHz ADC clock      
adc_clock_gen_process : process
begin
	clk <= '0';				-- start low
	wait for CLOCK_PERIOD;	    -- wait for one CLOCK_PERIOD
	
	loop							-- toggle, wait half a clock period, and loop
	  clk <= not(clk);
	  wait for CLOCK_PERIOD/2;
	end loop;
end process adc_clock_gen_process;


----------------------------------------------------------------------------
-- Testbench Stimulus
----------------------------------------------------------------------------
stimulus : PROCESS
 BEGIN
    -- Initialize, reset
    reset_n <= '0';
    dds_enable <= '1';
    enable_send <= '0';
    enable_read <= '0';
    data_select <= (others => '0');
    axi_data_write <= (others => '0');
    axi_reg <= 3;           -- we are writing to AXI register 0
    
    wait for 400 ns;
    reset_n <= '1';
    
    -- BEGIN TEST
    wait until rising_edge(clk);
    wait for CLOCK_PERIOD;

    -- write data to register 0
    axi_reg <= 0;
    axi_data_write <= std_logic_vector(to_unsigned(100,axi_data_write'LENGTH)); -- We set the left phase increment to 100
    wait for 100 ns;
    master_write_axi_reg(S_AXI_AWADDR, S_AXI_WDATA, S_AXI_WSTRB, enable_send, axi_reg, axi_data_write, S_AXI_BVALID);
    wait for 100 ns;
        
    -- read data written to register 0 to verify correct value
    master_read_axi_reg(S_AXI_ARADDR, enable_read, axi_reg, S_AXI_RVALID);
    
    wait for 100 ns;
    
    -- write data to register 1
    axi_reg <= 1;
    axi_data_write <= std_logic_vector(to_unsigned(30,axi_data_write'LENGTH)); -- We set the right phase increment to 500
    wait for 100 ns;
    master_write_axi_reg(S_AXI_AWADDR, S_AXI_WDATA, S_AXI_WSTRB, enable_send, axi_reg, axi_data_write, S_AXI_BVALID);
    wait for 100 ns;
    
    cfg_fwd_inv <= FWD;  -- forward transform
    cfg_scale_sch <= DEFAULT;  -- default scaling schedule
    do_config := IMMEDIATE;
    
    
    
    wait for 150000 ns;
    
    -- TEST 2: CORRECT FILTERING
    

    
    wait;
    std.env.stop;
 END PROCESS stimulus;

m_axis_data_tdata_re <= fft_data_out(23 downto 0);
m_axis_data_tdata_im <= fft_data_out(47 downto 24);

----------------------------------------------------------------------------

end testbench;