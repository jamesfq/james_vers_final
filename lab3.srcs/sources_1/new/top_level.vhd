----------------------------------------------------------------------------
--  Lab 1: DDS and the Audio Codec
----------------------------------------------------------------------------
--  ENGS 128 Spring 2025
--	Author: James Quirk & Dak Black
----------------------------------------------------------------------------
--	Description: Top-level file for audio codec tone generator and data passthrough 
--  Target device: Zybo
--
--  SSM2603 audio codec datasheet: 
--      https://www.analog.com/media/en/technical-documentation/data-sheets/ssm2603.pdf
----------------------------------------------------------------------------
-- Add libraries 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;             -- required for modulus function
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library UNISIM;
use UNISIM.VComponents.all;
----------------------------------------------------------------------------
-- Entity definition
entity top_level is
    Port (
		sysclk_i : in  std_logic;	
		
		-- User controls
		dds_enable_i  : in STD_LOGIC;
		ac_mute_en_i : in STD_LOGIC;
		
		-- Audio Codec I2S controls
        ac_bclk_o : out STD_LOGIC;
        ac_mclk_o : out STD_LOGIC;
        ac_mute_n_o : out STD_LOGIC;	-- Active Low
        
        -- Audio Codec DAC (audio out)
        ac_dac_data_o : out STD_LOGIC;
        ac_dac_lrclk_o : out STD_LOGIC;
        
        -- Audio Codec ADC (audio in)
        ac_adc_data_i : in STD_LOGIC;
        left_dds_data_i : in std_logic_vector(23 downto 0);
        right_dds_data_i : in std_logic_vector(23 downto 0);
        
        ac_adc_lrclk_o : out STD_LOGIC;
        
        -- Lab 3 new ports
        dbg_lrclk_o : out STD_LOGIC;
        dbg_bclk_o : out STD_LOGIC;  
        dds_clk_o : out STD_LOGIC);
    
end top_level;
----------------------------------------------------------------------------
architecture Behavioral of top_level is
----------------------------------------------------------------------------
-- Define Constants and Signals
----------------------------------------------------------------------------
constant AC_DATA_WIDTH : integer := 24;	-- audio data width
constant PHASE_DATA_WIDTH : integer := 12;	-- phase data width
signal mclk : std_logic := '0';
signal serial_data_tx : std_logic := '0';
signal bclk : std_logic := '0';
signal lrclk : std_logic := '0';
signal left_audio_data_tx : std_logic_vector(AC_DATA_WIDTH-1 downto 0);
signal right_audio_data_tx : std_logic_vector(AC_DATA_WIDTH-1 downto 0);

signal left_rx_data : std_logic_vector(AC_DATA_WIDTH-1 downto 0);
signal right_rx_data : std_logic_vector(AC_DATA_WIDTH-1 downto 0);



----------------------------------------------------------------------------
-- ++++ Add other signals and constants here ++++

----------------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------------
-- ++++ Update/modify the component declarations to match your entities ++++
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

----------------------------------------------------------------------------
begin
dds_clk_o <= lrclk;
dbg_bclk_o <= bclk;
dbg_lrclk_o <= lrclk;


----------------------------------------------------------------------------
-- Component instantiations
---------------------------------------------------------------------------- 
-- ++++ Add your port maps below ++++
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


---------------------------------------------------------------------------- 
-- I2S receiver
receiver: i2s_receiver
    port map (
		mclk_i                => mclk,
        bclk_i                => bclk,	
		lrclk_i               => lrclk,
		left_audio_data_o     => left_rx_data,
		right_audio_data_o    => right_rx_data,
		adc_serial_data_i     => ac_adc_data_i); -- CHANGED TO CUT OFF RECIEVER (easier than switching others)
	
---------------------------------------------------------------------------- 
-- I2S transmitter
dut_audio_transmitter: i2s_transmitter
port map(
    mclk_i              => mclk,
    bclk_i              => bclk,
    lrclk_i             => lrclk,
    left_audio_data_i   => left_audio_data_tx,		-- REMEMBER: CHANGE BACK TO LEFT_AUDIO_DATA_TX
    right_audio_data_i  => right_audio_data_tx,
    dac_serial_data_o   => ac_dac_data_o);		-- DUT output

---------------------------------------------------------------------------- 
-- Logic
---------------------------------------------------------------------------- 

-- sets the low-active mute signal
pass_mute: process(mclk)
begin
    ac_mute_n_o <= not(ac_mute_en_i);
end process pass_mute;

-- This determines whether we are using the DDS output or the RX output as the input to the transmitter.
rx_tx_swap: process(dds_enable_i, mclk)
begin
    if (falling_edge(mclk)) then
        if (dds_enable_i = '1') then
            left_audio_data_tx <= left_dds_data_i;
            right_audio_data_tx <= right_dds_data_i;
           
        else
            left_audio_data_tx <= left_rx_data;
            right_audio_data_tx <= right_rx_data;
        end if;
    end if;
        
end process rx_tx_swap;

---------------------------------------------------------------------------- 
end Behavioral;