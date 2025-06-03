-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Wed May 14 10:53:57 2025
-- Host        : m210-29 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               o:/ENGS128/lab3/lab3.gen/sources_1/bd/axi_stream_bd/ip/axi_stream_bd_axis_i2s_wrapper_0_0/axi_stream_bd_axis_i2s_wrapper_0_0_sim_netlist.vhdl
-- Design      : axi_stream_bd_axis_i2s_wrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_stream_bd_axis_i2s_wrapper_0_0_axis_receiver is
  port (
    D : out STD_LOGIC_VECTOR ( 23 downto 0 );
    dbg_left_audio_tx_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    dbg_right_audio_tx_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s00_axis_tready : out STD_LOGIC;
    curr_state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axis_aresetn : in STD_LOGIC;
    lrclk_o : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_stream_bd_axis_i2s_wrapper_0_0_axis_receiver : entity is "axis_receiver";
end axi_stream_bd_axis_i2s_wrapper_0_0_axis_receiver;

architecture STRUCTURE of axi_stream_bd_axis_i2s_wrapper_0_0_axis_receiver is
  signal \FSM_sequential_curr_state[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state[2]_i_1__0_n_0\ : STD_LOGIC;
  signal curr_state_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^dbg_left_audio_tx_o\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^dbg_right_audio_tx_o\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \left_audio_data_o[23]_i_1_n_0\ : STD_LOGIC;
  signal \right_audio_data_o[23]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[1]_i_1__1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[0]\ : label is "ready:001,lreceive:010,rreceive:011,hold:100,idle:000,iSTATE:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[1]\ : label is "ready:001,lreceive:010,rreceive:011,hold:100,idle:000,iSTATE:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[2]\ : label is "ready:001,lreceive:010,rreceive:011,hold:100,idle:000,iSTATE:101";
  attribute SOFT_HLUTNM of s00_axis_tready_INST_0 : label is "soft_lutpair0";
begin
  dbg_left_audio_tx_o(23 downto 0) <= \^dbg_left_audio_tx_o\(23 downto 0);
  dbg_right_audio_tx_o(23 downto 0) <= \^dbg_right_audio_tx_o\(23 downto 0);
\FSM_sequential_curr_state[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000302010103020"
    )
        port map (
      I0 => curr_state_0(1),
      I1 => curr_state_0(2),
      I2 => s00_axis_aresetn,
      I3 => lrclk_o,
      I4 => curr_state_0(0),
      I5 => s00_axis_tvalid,
      O => \FSM_sequential_curr_state[0]_i_1__1_n_0\
    );
\FSM_sequential_curr_state[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10200020"
    )
        port map (
      I0 => curr_state_0(1),
      I1 => curr_state_0(2),
      I2 => s00_axis_aresetn,
      I3 => curr_state_0(0),
      I4 => s00_axis_tvalid,
      O => \FSM_sequential_curr_state[1]_i_1__1_n_0\
    );
\FSM_sequential_curr_state[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20204000"
    )
        port map (
      I0 => curr_state_0(1),
      I1 => curr_state_0(2),
      I2 => s00_axis_aresetn,
      I3 => lrclk_o,
      I4 => curr_state_0(0),
      O => \FSM_sequential_curr_state[2]_i_1__0_n_0\
    );
\FSM_sequential_curr_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \FSM_sequential_curr_state[0]_i_1__1_n_0\,
      Q => curr_state_0(0),
      R => '0'
    );
\FSM_sequential_curr_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \FSM_sequential_curr_state[1]_i_1__1_n_0\,
      Q => curr_state_0(1),
      R => '0'
    );
\FSM_sequential_curr_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \FSM_sequential_curr_state[2]_i_1__0_n_0\,
      Q => curr_state_0(2),
      R => '0'
    );
\input_data[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^dbg_left_audio_tx_o\(0),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^dbg_right_audio_tx_o\(0),
      O => D(0)
    );
\input_data[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^dbg_left_audio_tx_o\(10),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^dbg_right_audio_tx_o\(10),
      O => D(10)
    );
\input_data[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^dbg_left_audio_tx_o\(11),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^dbg_right_audio_tx_o\(11),
      O => D(11)
    );
\input_data[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^dbg_left_audio_tx_o\(12),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^dbg_right_audio_tx_o\(12),
      O => D(12)
    );
\input_data[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^dbg_left_audio_tx_o\(13),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^dbg_right_audio_tx_o\(13),
      O => D(13)
    );
\input_data[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^dbg_left_audio_tx_o\(14),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^dbg_right_audio_tx_o\(14),
      O => D(14)
    );
\input_data[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^dbg_left_audio_tx_o\(15),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^dbg_right_audio_tx_o\(15),
      O => D(15)
    );
\input_data[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^dbg_left_audio_tx_o\(16),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^dbg_right_audio_tx_o\(16),
      O => D(16)
    );
\input_data[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^dbg_left_audio_tx_o\(17),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^dbg_right_audio_tx_o\(17),
      O => D(17)
    );
\input_data[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^dbg_left_audio_tx_o\(18),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^dbg_right_audio_tx_o\(18),
      O => D(18)
    );
\input_data[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^dbg_left_audio_tx_o\(19),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^dbg_right_audio_tx_o\(19),
      O => D(19)
    );
\input_data[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^dbg_left_audio_tx_o\(1),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^dbg_right_audio_tx_o\(1),
      O => D(1)
    );
\input_data[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^dbg_left_audio_tx_o\(20),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^dbg_right_audio_tx_o\(20),
      O => D(20)
    );
\input_data[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^dbg_left_audio_tx_o\(21),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^dbg_right_audio_tx_o\(21),
      O => D(21)
    );
\input_data[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^dbg_left_audio_tx_o\(22),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^dbg_right_audio_tx_o\(22),
      O => D(22)
    );
\input_data[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^dbg_left_audio_tx_o\(23),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^dbg_right_audio_tx_o\(23),
      O => D(23)
    );
\input_data[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^dbg_left_audio_tx_o\(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^dbg_right_audio_tx_o\(2),
      O => D(2)
    );
\input_data[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^dbg_left_audio_tx_o\(3),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^dbg_right_audio_tx_o\(3),
      O => D(3)
    );
\input_data[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^dbg_left_audio_tx_o\(4),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^dbg_right_audio_tx_o\(4),
      O => D(4)
    );
\input_data[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^dbg_left_audio_tx_o\(5),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^dbg_right_audio_tx_o\(5),
      O => D(5)
    );
\input_data[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^dbg_left_audio_tx_o\(6),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^dbg_right_audio_tx_o\(6),
      O => D(6)
    );
\input_data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^dbg_left_audio_tx_o\(7),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^dbg_right_audio_tx_o\(7),
      O => D(7)
    );
\input_data[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^dbg_left_audio_tx_o\(8),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^dbg_right_audio_tx_o\(8),
      O => D(8)
    );
\input_data[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^dbg_left_audio_tx_o\(9),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^dbg_right_audio_tx_o\(9),
      O => D(9)
    );
\left_audio_data_o[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => curr_state_0(1),
      I1 => curr_state_0(2),
      I2 => curr_state_0(0),
      O => \left_audio_data_o[23]_i_1_n_0\
    );
\left_audio_data_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(0),
      Q => \^dbg_left_audio_tx_o\(0),
      R => '0'
    );
\left_audio_data_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(10),
      Q => \^dbg_left_audio_tx_o\(10),
      R => '0'
    );
\left_audio_data_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(11),
      Q => \^dbg_left_audio_tx_o\(11),
      R => '0'
    );
\left_audio_data_o_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(12),
      Q => \^dbg_left_audio_tx_o\(12),
      R => '0'
    );
\left_audio_data_o_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(13),
      Q => \^dbg_left_audio_tx_o\(13),
      R => '0'
    );
\left_audio_data_o_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(14),
      Q => \^dbg_left_audio_tx_o\(14),
      R => '0'
    );
\left_audio_data_o_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(15),
      Q => \^dbg_left_audio_tx_o\(15),
      R => '0'
    );
\left_audio_data_o_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(16),
      Q => \^dbg_left_audio_tx_o\(16),
      R => '0'
    );
\left_audio_data_o_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(17),
      Q => \^dbg_left_audio_tx_o\(17),
      R => '0'
    );
\left_audio_data_o_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(18),
      Q => \^dbg_left_audio_tx_o\(18),
      R => '0'
    );
\left_audio_data_o_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(19),
      Q => \^dbg_left_audio_tx_o\(19),
      R => '0'
    );
\left_audio_data_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(1),
      Q => \^dbg_left_audio_tx_o\(1),
      R => '0'
    );
\left_audio_data_o_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(20),
      Q => \^dbg_left_audio_tx_o\(20),
      R => '0'
    );
\left_audio_data_o_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(21),
      Q => \^dbg_left_audio_tx_o\(21),
      R => '0'
    );
\left_audio_data_o_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(22),
      Q => \^dbg_left_audio_tx_o\(22),
      R => '0'
    );
\left_audio_data_o_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(23),
      Q => \^dbg_left_audio_tx_o\(23),
      R => '0'
    );
\left_audio_data_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(2),
      Q => \^dbg_left_audio_tx_o\(2),
      R => '0'
    );
\left_audio_data_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(3),
      Q => \^dbg_left_audio_tx_o\(3),
      R => '0'
    );
\left_audio_data_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(4),
      Q => \^dbg_left_audio_tx_o\(4),
      R => '0'
    );
\left_audio_data_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(5),
      Q => \^dbg_left_audio_tx_o\(5),
      R => '0'
    );
\left_audio_data_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(6),
      Q => \^dbg_left_audio_tx_o\(6),
      R => '0'
    );
\left_audio_data_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(7),
      Q => \^dbg_left_audio_tx_o\(7),
      R => '0'
    );
\left_audio_data_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(8),
      Q => \^dbg_left_audio_tx_o\(8),
      R => '0'
    );
\left_audio_data_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(9),
      Q => \^dbg_left_audio_tx_o\(9),
      R => '0'
    );
\right_audio_data_o[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => curr_state_0(2),
      I1 => curr_state_0(0),
      I2 => curr_state_0(1),
      O => \right_audio_data_o[23]_i_1_n_0\
    );
\right_audio_data_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(0),
      Q => \^dbg_right_audio_tx_o\(0),
      R => '0'
    );
\right_audio_data_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(10),
      Q => \^dbg_right_audio_tx_o\(10),
      R => '0'
    );
\right_audio_data_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(11),
      Q => \^dbg_right_audio_tx_o\(11),
      R => '0'
    );
\right_audio_data_o_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(12),
      Q => \^dbg_right_audio_tx_o\(12),
      R => '0'
    );
\right_audio_data_o_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(13),
      Q => \^dbg_right_audio_tx_o\(13),
      R => '0'
    );
\right_audio_data_o_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(14),
      Q => \^dbg_right_audio_tx_o\(14),
      R => '0'
    );
\right_audio_data_o_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(15),
      Q => \^dbg_right_audio_tx_o\(15),
      R => '0'
    );
\right_audio_data_o_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(16),
      Q => \^dbg_right_audio_tx_o\(16),
      R => '0'
    );
\right_audio_data_o_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(17),
      Q => \^dbg_right_audio_tx_o\(17),
      R => '0'
    );
\right_audio_data_o_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(18),
      Q => \^dbg_right_audio_tx_o\(18),
      R => '0'
    );
\right_audio_data_o_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(19),
      Q => \^dbg_right_audio_tx_o\(19),
      R => '0'
    );
\right_audio_data_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(1),
      Q => \^dbg_right_audio_tx_o\(1),
      R => '0'
    );
\right_audio_data_o_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(20),
      Q => \^dbg_right_audio_tx_o\(20),
      R => '0'
    );
\right_audio_data_o_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(21),
      Q => \^dbg_right_audio_tx_o\(21),
      R => '0'
    );
\right_audio_data_o_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(22),
      Q => \^dbg_right_audio_tx_o\(22),
      R => '0'
    );
\right_audio_data_o_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(23),
      Q => \^dbg_right_audio_tx_o\(23),
      R => '0'
    );
\right_audio_data_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(2),
      Q => \^dbg_right_audio_tx_o\(2),
      R => '0'
    );
\right_audio_data_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(3),
      Q => \^dbg_right_audio_tx_o\(3),
      R => '0'
    );
\right_audio_data_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(4),
      Q => \^dbg_right_audio_tx_o\(4),
      R => '0'
    );
\right_audio_data_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(5),
      Q => \^dbg_right_audio_tx_o\(5),
      R => '0'
    );
\right_audio_data_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(6),
      Q => \^dbg_right_audio_tx_o\(6),
      R => '0'
    );
\right_audio_data_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(7),
      Q => \^dbg_right_audio_tx_o\(7),
      R => '0'
    );
\right_audio_data_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(8),
      Q => \^dbg_right_audio_tx_o\(8),
      R => '0'
    );
\right_audio_data_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => s00_axis_tdata(9),
      Q => \^dbg_right_audio_tx_o\(9),
      R => '0'
    );
s00_axis_tready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => curr_state_0(1),
      I1 => curr_state_0(0),
      I2 => curr_state_0(2),
      O => s00_axis_tready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_stream_bd_axis_i2s_wrapper_0_0_axis_transmitter is
  port (
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m00_axis_tvalid : out STD_LOGIC;
    lrclk_o : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    dbg_right_audio_rx_o : in STD_LOGIC_VECTOR ( 23 downto 0 );
    dbg_left_audio_rx_o : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_stream_bd_axis_i2s_wrapper_0_0_axis_transmitter : entity is "axis_transmitter";
end axi_stream_bd_axis_i2s_wrapper_0_0_axis_transmitter;

architecture STRUCTURE of axi_stream_bd_axis_i2s_wrapper_0_0_axis_transmitter is
  signal \FSM_sequential_curr_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal Ltemp1 : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal Ltemp2 : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal Rtemp1 : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal Rtemp2 : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal curr_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal lrclk_temp1 : STD_LOGIC;
  signal lrclk_temp2 : STD_LOGIC;
  signal \m00_axis_tdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axis_tdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \^m00_axis_tvalid\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[0]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[1]_i_1__0\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[0]\ : label is "ltransmit:01,rtransmit:10,idle:00,hold:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[1]\ : label is "ltransmit:01,rtransmit:10,idle:00,hold:11";
begin
  m00_axis_tvalid <= \^m00_axis_tvalid\;
\FSM_sequential_curr_state[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80C88C08"
    )
        port map (
      I0 => lrclk_temp2,
      I1 => m00_axis_aresetn,
      I2 => curr_state(1),
      I3 => curr_state(0),
      I4 => m00_axis_tready,
      O => \FSM_sequential_curr_state[0]_i_1__0_n_0\
    );
\FSM_sequential_curr_state[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8CC080C0"
    )
        port map (
      I0 => lrclk_temp2,
      I1 => m00_axis_aresetn,
      I2 => curr_state(1),
      I3 => curr_state(0),
      I4 => m00_axis_tready,
      O => \FSM_sequential_curr_state[1]_i_1__0_n_0\
    );
\FSM_sequential_curr_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \FSM_sequential_curr_state[0]_i_1__0_n_0\,
      Q => curr_state(0),
      R => '0'
    );
\FSM_sequential_curr_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \FSM_sequential_curr_state[1]_i_1__0_n_0\,
      Q => curr_state(1),
      R => '0'
    );
\Ltemp1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_left_audio_rx_o(2),
      Q => Ltemp1(10),
      R => '0'
    );
\Ltemp1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_left_audio_rx_o(3),
      Q => Ltemp1(11),
      R => '0'
    );
\Ltemp1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_left_audio_rx_o(4),
      Q => Ltemp1(12),
      R => '0'
    );
\Ltemp1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_left_audio_rx_o(5),
      Q => Ltemp1(13),
      R => '0'
    );
\Ltemp1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_left_audio_rx_o(6),
      Q => Ltemp1(14),
      R => '0'
    );
\Ltemp1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_left_audio_rx_o(7),
      Q => Ltemp1(15),
      R => '0'
    );
\Ltemp1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_left_audio_rx_o(8),
      Q => Ltemp1(16),
      R => '0'
    );
\Ltemp1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_left_audio_rx_o(9),
      Q => Ltemp1(17),
      R => '0'
    );
\Ltemp1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_left_audio_rx_o(10),
      Q => Ltemp1(18),
      R => '0'
    );
\Ltemp1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_left_audio_rx_o(11),
      Q => Ltemp1(19),
      R => '0'
    );
\Ltemp1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_left_audio_rx_o(12),
      Q => Ltemp1(20),
      R => '0'
    );
\Ltemp1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_left_audio_rx_o(13),
      Q => Ltemp1(21),
      R => '0'
    );
\Ltemp1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_left_audio_rx_o(14),
      Q => Ltemp1(22),
      R => '0'
    );
\Ltemp1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_left_audio_rx_o(15),
      Q => Ltemp1(23),
      R => '0'
    );
\Ltemp1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_left_audio_rx_o(16),
      Q => Ltemp1(24),
      R => '0'
    );
\Ltemp1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_left_audio_rx_o(17),
      Q => Ltemp1(25),
      R => '0'
    );
\Ltemp1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_left_audio_rx_o(18),
      Q => Ltemp1(26),
      R => '0'
    );
\Ltemp1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_left_audio_rx_o(19),
      Q => Ltemp1(27),
      R => '0'
    );
\Ltemp1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_left_audio_rx_o(20),
      Q => Ltemp1(28),
      R => '0'
    );
\Ltemp1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_left_audio_rx_o(21),
      Q => Ltemp1(29),
      R => '0'
    );
\Ltemp1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_left_audio_rx_o(22),
      Q => Ltemp1(30),
      R => '0'
    );
\Ltemp1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_left_audio_rx_o(23),
      Q => Ltemp1(31),
      R => '0'
    );
\Ltemp1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_left_audio_rx_o(0),
      Q => Ltemp1(8),
      R => '0'
    );
\Ltemp1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_left_audio_rx_o(1),
      Q => Ltemp1(9),
      R => '0'
    );
\Ltemp2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Ltemp1(10),
      Q => Ltemp2(10),
      R => '0'
    );
\Ltemp2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Ltemp1(11),
      Q => Ltemp2(11),
      R => '0'
    );
\Ltemp2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Ltemp1(12),
      Q => Ltemp2(12),
      R => '0'
    );
\Ltemp2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Ltemp1(13),
      Q => Ltemp2(13),
      R => '0'
    );
\Ltemp2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Ltemp1(14),
      Q => Ltemp2(14),
      R => '0'
    );
\Ltemp2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Ltemp1(15),
      Q => Ltemp2(15),
      R => '0'
    );
\Ltemp2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Ltemp1(16),
      Q => Ltemp2(16),
      R => '0'
    );
\Ltemp2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Ltemp1(17),
      Q => Ltemp2(17),
      R => '0'
    );
\Ltemp2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Ltemp1(18),
      Q => Ltemp2(18),
      R => '0'
    );
\Ltemp2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Ltemp1(19),
      Q => Ltemp2(19),
      R => '0'
    );
\Ltemp2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Ltemp1(20),
      Q => Ltemp2(20),
      R => '0'
    );
\Ltemp2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Ltemp1(21),
      Q => Ltemp2(21),
      R => '0'
    );
\Ltemp2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Ltemp1(22),
      Q => Ltemp2(22),
      R => '0'
    );
\Ltemp2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Ltemp1(23),
      Q => Ltemp2(23),
      R => '0'
    );
\Ltemp2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Ltemp1(24),
      Q => Ltemp2(24),
      R => '0'
    );
\Ltemp2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Ltemp1(25),
      Q => Ltemp2(25),
      R => '0'
    );
\Ltemp2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Ltemp1(26),
      Q => Ltemp2(26),
      R => '0'
    );
\Ltemp2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Ltemp1(27),
      Q => Ltemp2(27),
      R => '0'
    );
\Ltemp2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Ltemp1(28),
      Q => Ltemp2(28),
      R => '0'
    );
\Ltemp2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Ltemp1(29),
      Q => Ltemp2(29),
      R => '0'
    );
\Ltemp2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Ltemp1(30),
      Q => Ltemp2(30),
      R => '0'
    );
\Ltemp2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Ltemp1(31),
      Q => Ltemp2(31),
      R => '0'
    );
\Ltemp2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Ltemp1(8),
      Q => Ltemp2(8),
      R => '0'
    );
\Ltemp2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Ltemp1(9),
      Q => Ltemp2(9),
      R => '0'
    );
\Rtemp1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_right_audio_rx_o(2),
      Q => Rtemp1(10),
      R => '0'
    );
\Rtemp1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_right_audio_rx_o(3),
      Q => Rtemp1(11),
      R => '0'
    );
\Rtemp1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_right_audio_rx_o(4),
      Q => Rtemp1(12),
      R => '0'
    );
\Rtemp1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_right_audio_rx_o(5),
      Q => Rtemp1(13),
      R => '0'
    );
\Rtemp1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_right_audio_rx_o(6),
      Q => Rtemp1(14),
      R => '0'
    );
\Rtemp1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_right_audio_rx_o(7),
      Q => Rtemp1(15),
      R => '0'
    );
\Rtemp1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_right_audio_rx_o(8),
      Q => Rtemp1(16),
      R => '0'
    );
\Rtemp1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_right_audio_rx_o(9),
      Q => Rtemp1(17),
      R => '0'
    );
\Rtemp1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_right_audio_rx_o(10),
      Q => Rtemp1(18),
      R => '0'
    );
\Rtemp1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_right_audio_rx_o(11),
      Q => Rtemp1(19),
      R => '0'
    );
\Rtemp1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_right_audio_rx_o(12),
      Q => Rtemp1(20),
      R => '0'
    );
\Rtemp1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_right_audio_rx_o(13),
      Q => Rtemp1(21),
      R => '0'
    );
\Rtemp1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_right_audio_rx_o(14),
      Q => Rtemp1(22),
      R => '0'
    );
\Rtemp1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_right_audio_rx_o(15),
      Q => Rtemp1(23),
      R => '0'
    );
\Rtemp1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_right_audio_rx_o(16),
      Q => Rtemp1(24),
      R => '0'
    );
\Rtemp1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_right_audio_rx_o(17),
      Q => Rtemp1(25),
      R => '0'
    );
\Rtemp1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_right_audio_rx_o(18),
      Q => Rtemp1(26),
      R => '0'
    );
\Rtemp1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_right_audio_rx_o(19),
      Q => Rtemp1(27),
      R => '0'
    );
\Rtemp1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_right_audio_rx_o(20),
      Q => Rtemp1(28),
      R => '0'
    );
\Rtemp1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_right_audio_rx_o(21),
      Q => Rtemp1(29),
      R => '0'
    );
\Rtemp1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_right_audio_rx_o(22),
      Q => Rtemp1(30),
      R => '0'
    );
\Rtemp1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_right_audio_rx_o(23),
      Q => Rtemp1(31),
      R => '0'
    );
\Rtemp1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_right_audio_rx_o(0),
      Q => Rtemp1(8),
      R => '0'
    );
\Rtemp1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_right_audio_rx_o(1),
      Q => Rtemp1(9),
      R => '0'
    );
\Rtemp2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Rtemp1(10),
      Q => Rtemp2(10),
      R => '0'
    );
\Rtemp2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Rtemp1(11),
      Q => Rtemp2(11),
      R => '0'
    );
\Rtemp2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Rtemp1(12),
      Q => Rtemp2(12),
      R => '0'
    );
\Rtemp2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Rtemp1(13),
      Q => Rtemp2(13),
      R => '0'
    );
\Rtemp2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Rtemp1(14),
      Q => Rtemp2(14),
      R => '0'
    );
\Rtemp2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Rtemp1(15),
      Q => Rtemp2(15),
      R => '0'
    );
\Rtemp2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Rtemp1(16),
      Q => Rtemp2(16),
      R => '0'
    );
\Rtemp2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Rtemp1(17),
      Q => Rtemp2(17),
      R => '0'
    );
\Rtemp2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Rtemp1(18),
      Q => Rtemp2(18),
      R => '0'
    );
\Rtemp2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Rtemp1(19),
      Q => Rtemp2(19),
      R => '0'
    );
\Rtemp2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Rtemp1(20),
      Q => Rtemp2(20),
      R => '0'
    );
\Rtemp2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Rtemp1(21),
      Q => Rtemp2(21),
      R => '0'
    );
\Rtemp2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Rtemp1(22),
      Q => Rtemp2(22),
      R => '0'
    );
\Rtemp2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Rtemp1(23),
      Q => Rtemp2(23),
      R => '0'
    );
\Rtemp2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Rtemp1(24),
      Q => Rtemp2(24),
      R => '0'
    );
\Rtemp2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Rtemp1(25),
      Q => Rtemp2(25),
      R => '0'
    );
\Rtemp2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Rtemp1(26),
      Q => Rtemp2(26),
      R => '0'
    );
\Rtemp2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Rtemp1(27),
      Q => Rtemp2(27),
      R => '0'
    );
\Rtemp2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Rtemp1(28),
      Q => Rtemp2(28),
      R => '0'
    );
\Rtemp2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Rtemp1(29),
      Q => Rtemp2(29),
      R => '0'
    );
\Rtemp2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Rtemp1(30),
      Q => Rtemp2(30),
      R => '0'
    );
\Rtemp2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Rtemp1(31),
      Q => Rtemp2(31),
      R => '0'
    );
\Rtemp2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Rtemp1(8),
      Q => Rtemp2(8),
      R => '0'
    );
\Rtemp2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Rtemp1(9),
      Q => Rtemp2(9),
      R => '0'
    );
lrclk_temp1_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lrclk_o,
      Q => lrclk_temp1,
      R => '0'
    );
lrclk_temp2_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => lrclk_temp1,
      Q => lrclk_temp2,
      R => '0'
    );
\m00_axis_tdata[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Ltemp2(10),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => Rtemp2(10),
      O => \m00_axis_tdata[10]_i_1_n_0\
    );
\m00_axis_tdata[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Ltemp2(11),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => Rtemp2(11),
      O => \m00_axis_tdata[11]_i_1_n_0\
    );
\m00_axis_tdata[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Ltemp2(12),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => Rtemp2(12),
      O => \m00_axis_tdata[12]_i_1_n_0\
    );
\m00_axis_tdata[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Ltemp2(13),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => Rtemp2(13),
      O => \m00_axis_tdata[13]_i_1_n_0\
    );
\m00_axis_tdata[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Ltemp2(14),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => Rtemp2(14),
      O => \m00_axis_tdata[14]_i_1_n_0\
    );
\m00_axis_tdata[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Ltemp2(15),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => Rtemp2(15),
      O => \m00_axis_tdata[15]_i_1_n_0\
    );
\m00_axis_tdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Ltemp2(16),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => Rtemp2(16),
      O => \m00_axis_tdata[16]_i_1_n_0\
    );
\m00_axis_tdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Ltemp2(17),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => Rtemp2(17),
      O => \m00_axis_tdata[17]_i_1_n_0\
    );
\m00_axis_tdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Ltemp2(18),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => Rtemp2(18),
      O => \m00_axis_tdata[18]_i_1_n_0\
    );
\m00_axis_tdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Ltemp2(19),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => Rtemp2(19),
      O => \m00_axis_tdata[19]_i_1_n_0\
    );
\m00_axis_tdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Ltemp2(20),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => Rtemp2(20),
      O => \m00_axis_tdata[20]_i_1_n_0\
    );
\m00_axis_tdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Ltemp2(21),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => Rtemp2(21),
      O => \m00_axis_tdata[21]_i_1_n_0\
    );
\m00_axis_tdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Ltemp2(22),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => Rtemp2(22),
      O => \m00_axis_tdata[22]_i_1_n_0\
    );
\m00_axis_tdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Ltemp2(23),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => Rtemp2(23),
      O => \m00_axis_tdata[23]_i_1_n_0\
    );
\m00_axis_tdata[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Ltemp2(24),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => Rtemp2(24),
      O => \m00_axis_tdata[24]_i_1_n_0\
    );
\m00_axis_tdata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Ltemp2(25),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => Rtemp2(25),
      O => \m00_axis_tdata[25]_i_1_n_0\
    );
\m00_axis_tdata[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Ltemp2(26),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => Rtemp2(26),
      O => \m00_axis_tdata[26]_i_1_n_0\
    );
\m00_axis_tdata[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Ltemp2(27),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => Rtemp2(27),
      O => \m00_axis_tdata[27]_i_1_n_0\
    );
\m00_axis_tdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Ltemp2(28),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => Rtemp2(28),
      O => \m00_axis_tdata[28]_i_1_n_0\
    );
\m00_axis_tdata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Ltemp2(29),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => Rtemp2(29),
      O => \m00_axis_tdata[29]_i_1_n_0\
    );
\m00_axis_tdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Ltemp2(30),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => Rtemp2(30),
      O => \m00_axis_tdata[30]_i_1_n_0\
    );
\m00_axis_tdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Ltemp2(31),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => Rtemp2(31),
      O => \m00_axis_tdata[31]_i_1_n_0\
    );
\m00_axis_tdata[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Ltemp2(8),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => Rtemp2(8),
      O => \m00_axis_tdata[8]_i_1_n_0\
    );
\m00_axis_tdata[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Ltemp2(9),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => Rtemp2(9),
      O => \m00_axis_tdata[9]_i_1_n_0\
    );
\m00_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \^m00_axis_tvalid\,
      D => \m00_axis_tdata[10]_i_1_n_0\,
      Q => m00_axis_tdata(2),
      R => '0'
    );
\m00_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \^m00_axis_tvalid\,
      D => \m00_axis_tdata[11]_i_1_n_0\,
      Q => m00_axis_tdata(3),
      R => '0'
    );
\m00_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \^m00_axis_tvalid\,
      D => \m00_axis_tdata[12]_i_1_n_0\,
      Q => m00_axis_tdata(4),
      R => '0'
    );
\m00_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \^m00_axis_tvalid\,
      D => \m00_axis_tdata[13]_i_1_n_0\,
      Q => m00_axis_tdata(5),
      R => '0'
    );
\m00_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \^m00_axis_tvalid\,
      D => \m00_axis_tdata[14]_i_1_n_0\,
      Q => m00_axis_tdata(6),
      R => '0'
    );
\m00_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \^m00_axis_tvalid\,
      D => \m00_axis_tdata[15]_i_1_n_0\,
      Q => m00_axis_tdata(7),
      R => '0'
    );
\m00_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \^m00_axis_tvalid\,
      D => \m00_axis_tdata[16]_i_1_n_0\,
      Q => m00_axis_tdata(8),
      R => '0'
    );
\m00_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \^m00_axis_tvalid\,
      D => \m00_axis_tdata[17]_i_1_n_0\,
      Q => m00_axis_tdata(9),
      R => '0'
    );
\m00_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \^m00_axis_tvalid\,
      D => \m00_axis_tdata[18]_i_1_n_0\,
      Q => m00_axis_tdata(10),
      R => '0'
    );
\m00_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \^m00_axis_tvalid\,
      D => \m00_axis_tdata[19]_i_1_n_0\,
      Q => m00_axis_tdata(11),
      R => '0'
    );
\m00_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \^m00_axis_tvalid\,
      D => \m00_axis_tdata[20]_i_1_n_0\,
      Q => m00_axis_tdata(12),
      R => '0'
    );
\m00_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \^m00_axis_tvalid\,
      D => \m00_axis_tdata[21]_i_1_n_0\,
      Q => m00_axis_tdata(13),
      R => '0'
    );
\m00_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \^m00_axis_tvalid\,
      D => \m00_axis_tdata[22]_i_1_n_0\,
      Q => m00_axis_tdata(14),
      R => '0'
    );
\m00_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \^m00_axis_tvalid\,
      D => \m00_axis_tdata[23]_i_1_n_0\,
      Q => m00_axis_tdata(15),
      R => '0'
    );
\m00_axis_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \^m00_axis_tvalid\,
      D => \m00_axis_tdata[24]_i_1_n_0\,
      Q => m00_axis_tdata(16),
      R => '0'
    );
\m00_axis_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \^m00_axis_tvalid\,
      D => \m00_axis_tdata[25]_i_1_n_0\,
      Q => m00_axis_tdata(17),
      R => '0'
    );
\m00_axis_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \^m00_axis_tvalid\,
      D => \m00_axis_tdata[26]_i_1_n_0\,
      Q => m00_axis_tdata(18),
      R => '0'
    );
\m00_axis_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \^m00_axis_tvalid\,
      D => \m00_axis_tdata[27]_i_1_n_0\,
      Q => m00_axis_tdata(19),
      R => '0'
    );
\m00_axis_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \^m00_axis_tvalid\,
      D => \m00_axis_tdata[28]_i_1_n_0\,
      Q => m00_axis_tdata(20),
      R => '0'
    );
\m00_axis_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \^m00_axis_tvalid\,
      D => \m00_axis_tdata[29]_i_1_n_0\,
      Q => m00_axis_tdata(21),
      R => '0'
    );
\m00_axis_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \^m00_axis_tvalid\,
      D => \m00_axis_tdata[30]_i_1_n_0\,
      Q => m00_axis_tdata(22),
      R => '0'
    );
\m00_axis_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \^m00_axis_tvalid\,
      D => \m00_axis_tdata[31]_i_1_n_0\,
      Q => m00_axis_tdata(23),
      R => '0'
    );
\m00_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \^m00_axis_tvalid\,
      D => \m00_axis_tdata[8]_i_1_n_0\,
      Q => m00_axis_tdata(0),
      R => '0'
    );
\m00_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \^m00_axis_tvalid\,
      D => \m00_axis_tdata[9]_i_1_n_0\,
      Q => m00_axis_tdata(1),
      R => '0'
    );
m00_axis_tvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => curr_state(0),
      I1 => curr_state(1),
      O => \^m00_axis_tvalid\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_stream_bd_axis_i2s_wrapper_0_0_clk_wiz_0_clk_wiz is
  port (
    mclk_o : out STD_LOGIC;
    sysclk_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_stream_bd_axis_i2s_wrapper_0_0_clk_wiz_0_clk_wiz : entity is "clk_wiz_0_clk_wiz";
end axi_stream_bd_axis_i2s_wrapper_0_0_clk_wiz_0_clk_wiz;

architecture STRUCTURE of axi_stream_bd_axis_i2s_wrapper_0_0_clk_wiz_0_clk_wiz is
  signal clkfbout_buf_clk_wiz_0 : STD_LOGIC;
  signal clkfbout_clk_wiz_0 : STD_LOGIC;
  signal mclk_o_clk_wiz_0 : STD_LOGIC;
  signal mmcm_adv_inst_n_16 : STD_LOGIC;
  signal sysclk_i_clk_wiz_0 : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkin1_ibufg : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of clkin1_ibufg : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of clkin1_ibufg : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of clkin1_ibufg : label is "AUTO";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of mmcm_adv_inst : label is "PRIMITIVE";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_clk_wiz_0,
      O => clkfbout_buf_clk_wiz_0
    );
clkin1_ibufg: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => sysclk_i,
      O => sysclk_i_clk_wiz_0
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => mclk_o_clk_wiz_0,
      O => mclk_o
    );
mmcm_adv_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 42.750000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 8.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 62.125000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 1,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 7,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clkfbout_buf_clk_wiz_0,
      CLKFBOUT => clkfbout_clk_wiz_0,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => sysclk_i_clk_wiz_0,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => mclk_o_clk_wiz_0,
      CLKOUT0B => NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED,
      CLKOUT1B => NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_mmcm_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcm_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => mmcm_adv_inst_n_16,
      PSCLK => '0',
      PSDONE => NLW_mmcm_adv_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_stream_bd_axis_i2s_wrapper_0_0_clock_divider is
  port (
    bclk_o : out STD_LOGIC;
    mclk_o : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_stream_bd_axis_i2s_wrapper_0_0_clock_divider : entity is "clock_divider";
end axi_stream_bd_axis_i2s_wrapper_0_0_clock_divider;

architecture STRUCTURE of axi_stream_bd_axis_i2s_wrapper_0_0_clock_divider is
  signal I : STD_LOGIC;
  signal \clock_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \unbuffered_clk_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clock_counter[0]_i_1\ : label is "soft_lutpair6";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of slow_clock_bufg : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \unbuffered_clk_i_1__0\ : label is "soft_lutpair6";
begin
\clock_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clock_counter_reg_n_0_[0]\,
      O => p_0_in
    );
\clock_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mclk_o,
      CE => '1',
      D => p_0_in,
      Q => \clock_counter_reg_n_0_[0]\,
      R => '0'
    );
slow_clock_bufg: unisim.vcomponents.BUFG
     port map (
      I => I,
      O => bclk_o
    );
\unbuffered_clk_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \clock_counter_reg_n_0_[0]\,
      I1 => I,
      O => \unbuffered_clk_i_1__0_n_0\
    );
unbuffered_clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => mclk_o,
      CE => '1',
      D => \unbuffered_clk_i_1__0_n_0\,
      Q => I,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_stream_bd_axis_i2s_wrapper_0_0_clock_divider_falling_edge is
  port (
    lrclk_o : out STD_LOGIC;
    \clock_counter_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_stream_bd_axis_i2s_wrapper_0_0_clock_divider_falling_edge : entity is "clock_divider_falling_edge";
end axi_stream_bd_axis_i2s_wrapper_0_0_clock_divider_falling_edge;

architecture STRUCTURE of axi_stream_bd_axis_i2s_wrapper_0_0_clock_divider_falling_edge is
  signal I : STD_LOGIC;
  signal \clock_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \clock_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \clock_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \clock_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \clock_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \clock_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \clock_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal unbuffered_clk_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clock_counter[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \clock_counter[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \clock_counter[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \clock_counter[4]_i_2\ : label is "soft_lutpair4";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of slow_clock_bufg : label is "PRIMITIVE";
begin
\clock_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clock_counter_reg_n_0_[0]\,
      O => plusOp(0)
    );
\clock_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \clock_counter_reg_n_0_[0]\,
      I1 => \clock_counter_reg_n_0_[1]\,
      O => plusOp(1)
    );
\clock_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \clock_counter_reg_n_0_[1]\,
      I1 => \clock_counter_reg_n_0_[0]\,
      I2 => \clock_counter_reg_n_0_[2]\,
      O => \clock_counter[2]_i_1_n_0\
    );
\clock_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \clock_counter_reg_n_0_[0]\,
      I1 => \clock_counter_reg_n_0_[1]\,
      I2 => \clock_counter_reg_n_0_[2]\,
      I3 => \clock_counter_reg_n_0_[3]\,
      O => plusOp(3)
    );
\clock_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \clock_counter_reg_n_0_[3]\,
      I1 => \clock_counter_reg_n_0_[1]\,
      I2 => \clock_counter_reg_n_0_[0]\,
      I3 => \clock_counter_reg_n_0_[4]\,
      I4 => \clock_counter_reg_n_0_[2]\,
      O => \clock_counter[4]_i_1_n_0\
    );
\clock_counter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \clock_counter_reg_n_0_[2]\,
      I1 => \clock_counter_reg_n_0_[1]\,
      I2 => \clock_counter_reg_n_0_[0]\,
      I3 => \clock_counter_reg_n_0_[3]\,
      I4 => \clock_counter_reg_n_0_[4]\,
      O => plusOp(4)
    );
\clock_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \clock_counter_reg[0]_0\,
      CE => '1',
      D => plusOp(0),
      Q => \clock_counter_reg_n_0_[0]\,
      R => \clock_counter[4]_i_1_n_0\
    );
\clock_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \clock_counter_reg[0]_0\,
      CE => '1',
      D => plusOp(1),
      Q => \clock_counter_reg_n_0_[1]\,
      R => \clock_counter[4]_i_1_n_0\
    );
\clock_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \clock_counter_reg[0]_0\,
      CE => '1',
      D => \clock_counter[2]_i_1_n_0\,
      Q => \clock_counter_reg_n_0_[2]\,
      R => \clock_counter[4]_i_1_n_0\
    );
\clock_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \clock_counter_reg[0]_0\,
      CE => '1',
      D => plusOp(3),
      Q => \clock_counter_reg_n_0_[3]\,
      R => \clock_counter[4]_i_1_n_0\
    );
\clock_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \clock_counter_reg[0]_0\,
      CE => '1',
      D => plusOp(4),
      Q => \clock_counter_reg_n_0_[4]\,
      R => \clock_counter[4]_i_1_n_0\
    );
slow_clock_bufg: unisim.vcomponents.BUFG
     port map (
      I => I,
      O => lrclk_o
    );
unbuffered_clk_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \clock_counter_reg_n_0_[4]\,
      I1 => \clock_counter_reg_n_0_[3]\,
      I2 => \clock_counter_reg_n_0_[2]\,
      I3 => \clock_counter_reg_n_0_[1]\,
      I4 => \clock_counter_reg_n_0_[0]\,
      I5 => I,
      O => unbuffered_clk_i_1_n_0
    );
unbuffered_clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => \clock_counter_reg[0]_0\,
      CE => '1',
      D => unbuffered_clk_i_1_n_0,
      Q => I,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_stream_bd_axis_i2s_wrapper_0_0_counter is
  port (
    \FSM_sequential_curr_state_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_curr_state_reg[2]_0\ : out STD_LOGIC;
    \count_int_reg[0]_0\ : in STD_LOGIC;
    \count_int_reg[0]_1\ : in STD_LOGIC;
    curr_state : in STD_LOGIC_VECTOR ( 0 to 0 );
    lrclk_o : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_stream_bd_axis_i2s_wrapper_0_0_counter : entity is "counter";
end axi_stream_bd_axis_i2s_wrapper_0_0_counter;

architecture STRUCTURE of axi_stream_bd_axis_i2s_wrapper_0_0_counter is
  signal count_int : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \count_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_int[4]_i_3_n_0\ : STD_LOGIC;
  signal counter_reset : STD_LOGIC;
  signal shift_en : STD_LOGIC;
  signal tc_o : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[2]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count_int[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count_int[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count_int[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count_int[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count_int[4]_i_3\ : label is "soft_lutpair7";
begin
\FSM_sequential_curr_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF2244CF"
    )
        port map (
      I0 => tc_o,
      I1 => curr_state(0),
      I2 => lrclk_o,
      I3 => \count_int_reg[0]_1\,
      I4 => \count_int_reg[0]_0\,
      O => \FSM_sequential_curr_state_reg[2]_0\
    );
\FSM_sequential_curr_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCC44CC"
    )
        port map (
      I0 => tc_o,
      I1 => curr_state(0),
      I2 => lrclk_o,
      I3 => \count_int_reg[0]_1\,
      I4 => \count_int_reg[0]_0\,
      O => \FSM_sequential_curr_state_reg[2]\
    );
\FSM_sequential_curr_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => count_int(3),
      I1 => count_int(4),
      I2 => count_int(2),
      I3 => count_int(0),
      I4 => count_int(1),
      O => tc_o
    );
\count_int[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_int(0),
      O => \count_int[0]_i_1_n_0\
    );
\count_int[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_int(0),
      I1 => count_int(1),
      O => \count_int[1]_i_1_n_0\
    );
\count_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count_int(0),
      I1 => count_int(1),
      I2 => count_int(2),
      O => \count_int[2]_i_1_n_0\
    );
\count_int[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFF4000"
    )
        port map (
      I0 => count_int(4),
      I1 => count_int(0),
      I2 => count_int(1),
      I3 => count_int(2),
      I4 => count_int(3),
      O => \count_int[3]_i_1_n_0\
    );
\count_int[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \count_int_reg[0]_0\,
      I1 => \count_int_reg[0]_1\,
      I2 => curr_state(0),
      O => counter_reset
    );
\count_int[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \count_int_reg[0]_1\,
      I1 => \count_int_reg[0]_0\,
      I2 => curr_state(0),
      O => shift_en
    );
\count_int[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA2AAA"
    )
        port map (
      I0 => count_int(4),
      I1 => count_int(0),
      I2 => count_int(1),
      I3 => count_int(2),
      I4 => count_int(3),
      O => \count_int[4]_i_3_n_0\
    );
\count_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => \count_int[0]_i_1_n_0\,
      Q => count_int(0),
      R => counter_reset
    );
\count_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => \count_int[1]_i_1_n_0\,
      Q => count_int(1),
      R => counter_reset
    );
\count_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => \count_int[2]_i_1_n_0\,
      Q => count_int(2),
      R => counter_reset
    );
\count_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => \count_int[3]_i_1_n_0\,
      Q => count_int(3),
      R => counter_reset
    );
\count_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => shift_en,
      D => \count_int[4]_i_3_n_0\,
      Q => count_int(4),
      R => counter_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_stream_bd_axis_i2s_wrapper_0_0_engs128_axi_dds_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \right_dds_phase_incr_o_reg[11]_0\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_stream_bd_axis_i2s_wrapper_0_0_engs128_axi_dds_S00_AXI : entity is "engs128_axi_dds_S00_AXI";
end axi_stream_bd_axis_i2s_wrapper_0_0_engs128_axi_dds_S00_AXI;

architecture STRUCTURE of axi_stream_bd_axis_i2s_wrapper_0_0_engs128_axi_dds_S00_AXI is
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_reg_lut[0][15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_reg_lut[0][23]_i_1_n_0\ : STD_LOGIC;
  signal \axi_reg_lut[0][31]_i_1_n_0\ : STD_LOGIC;
  signal \axi_reg_lut[0][7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_reg_lut[1][15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_reg_lut[1][23]_i_1_n_0\ : STD_LOGIC;
  signal \axi_reg_lut[1][31]_i_1_n_0\ : STD_LOGIC;
  signal \axi_reg_lut[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_reg_lut[2][15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_reg_lut[2][23]_i_1_n_0\ : STD_LOGIC;
  signal \axi_reg_lut[2][31]_i_1_n_0\ : STD_LOGIC;
  signal \axi_reg_lut[2][7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_reg_lut[3][15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_reg_lut[3][23]_i_1_n_0\ : STD_LOGIC;
  signal \axi_reg_lut[3][31]_i_1_n_0\ : STD_LOGIC;
  signal \axi_reg_lut[3][7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_reg_lut_reg[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \axi_reg_lut_reg[1]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \axi_reg_lut_reg[2]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \axi_reg_lut_reg[3]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_rden : STD_LOGIC;
  signal \reg_wren__2\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_reg_lut[3][31]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair2";
begin
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBF00BF00BF00"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready_reg_0\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^axi_awready_reg_0\,
      I5 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^axi_awready_reg_0\,
      I5 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => \^axi_wready_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(0),
      I1 => \axi_reg_lut_reg[0]\(0),
      I2 => \axi_reg_lut_reg[3]\(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(10),
      I1 => \axi_reg_lut_reg[0]\(10),
      I2 => \axi_reg_lut_reg[3]\(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(11),
      I1 => \axi_reg_lut_reg[0]\(11),
      I2 => \axi_reg_lut_reg[3]\(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(12),
      I1 => \axi_reg_lut_reg[0]\(12),
      I2 => \axi_reg_lut_reg[3]\(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(13),
      I1 => \axi_reg_lut_reg[0]\(13),
      I2 => \axi_reg_lut_reg[3]\(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(14),
      I1 => \axi_reg_lut_reg[0]\(14),
      I2 => \axi_reg_lut_reg[3]\(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(15),
      I1 => \axi_reg_lut_reg[0]\(15),
      I2 => \axi_reg_lut_reg[3]\(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(16),
      I1 => \axi_reg_lut_reg[0]\(16),
      I2 => \axi_reg_lut_reg[3]\(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(17),
      I1 => \axi_reg_lut_reg[0]\(17),
      I2 => \axi_reg_lut_reg[3]\(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(18),
      I1 => \axi_reg_lut_reg[0]\(18),
      I2 => \axi_reg_lut_reg[3]\(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(19),
      I1 => \axi_reg_lut_reg[0]\(19),
      I2 => \axi_reg_lut_reg[3]\(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(1),
      I1 => \axi_reg_lut_reg[0]\(1),
      I2 => \axi_reg_lut_reg[3]\(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(20),
      I1 => \axi_reg_lut_reg[0]\(20),
      I2 => \axi_reg_lut_reg[3]\(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(21),
      I1 => \axi_reg_lut_reg[0]\(21),
      I2 => \axi_reg_lut_reg[3]\(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(22),
      I1 => \axi_reg_lut_reg[0]\(22),
      I2 => \axi_reg_lut_reg[3]\(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(23),
      I1 => \axi_reg_lut_reg[0]\(23),
      I2 => \axi_reg_lut_reg[3]\(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(24),
      I1 => \axi_reg_lut_reg[0]\(24),
      I2 => \axi_reg_lut_reg[3]\(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(25),
      I1 => \axi_reg_lut_reg[0]\(25),
      I2 => \axi_reg_lut_reg[3]\(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(26),
      I1 => \axi_reg_lut_reg[0]\(26),
      I2 => \axi_reg_lut_reg[3]\(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(27),
      I1 => \axi_reg_lut_reg[0]\(27),
      I2 => \axi_reg_lut_reg[3]\(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(28),
      I1 => \axi_reg_lut_reg[0]\(28),
      I2 => \axi_reg_lut_reg[3]\(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(29),
      I1 => \axi_reg_lut_reg[0]\(29),
      I2 => \axi_reg_lut_reg[3]\(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(2),
      I1 => \axi_reg_lut_reg[0]\(2),
      I2 => \axi_reg_lut_reg[3]\(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(30),
      I1 => \axi_reg_lut_reg[0]\(30),
      I2 => \axi_reg_lut_reg[3]\(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(31),
      I1 => \axi_reg_lut_reg[0]\(31),
      I2 => \axi_reg_lut_reg[3]\(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(3),
      I1 => \axi_reg_lut_reg[0]\(3),
      I2 => \axi_reg_lut_reg[3]\(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(4),
      I1 => \axi_reg_lut_reg[0]\(4),
      I2 => \axi_reg_lut_reg[3]\(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(5),
      I1 => \axi_reg_lut_reg[0]\(5),
      I2 => \axi_reg_lut_reg[3]\(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(6),
      I1 => \axi_reg_lut_reg[0]\(6),
      I2 => \axi_reg_lut_reg[3]\(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(7),
      I1 => \axi_reg_lut_reg[0]\(7),
      I2 => \axi_reg_lut_reg[3]\(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(8),
      I1 => \axi_reg_lut_reg[0]\(8),
      I2 => \axi_reg_lut_reg[3]\(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \axi_reg_lut_reg[1]\(9),
      I1 => \axi_reg_lut_reg[0]\(9),
      I2 => \axi_reg_lut_reg[3]\(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => \axi_reg_lut_reg[2]\(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => reg_rden,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut[0][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \reg_wren__2\,
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(1),
      O => \axi_reg_lut[0][15]_i_1_n_0\
    );
\axi_reg_lut[0][23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \reg_wren__2\,
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(2),
      O => \axi_reg_lut[0][23]_i_1_n_0\
    );
\axi_reg_lut[0][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \reg_wren__2\,
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(3),
      O => \axi_reg_lut[0][31]_i_1_n_0\
    );
\axi_reg_lut[0][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \reg_wren__2\,
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(0),
      O => \axi_reg_lut[0][7]_i_1_n_0\
    );
\axi_reg_lut[1][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \reg_wren__2\,
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(1),
      O => \axi_reg_lut[1][15]_i_1_n_0\
    );
\axi_reg_lut[1][23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \reg_wren__2\,
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(2),
      O => \axi_reg_lut[1][23]_i_1_n_0\
    );
\axi_reg_lut[1][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \reg_wren__2\,
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(3),
      O => \axi_reg_lut[1][31]_i_1_n_0\
    );
\axi_reg_lut[1][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \reg_wren__2\,
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(0),
      O => \axi_reg_lut[1][7]_i_1_n_0\
    );
\axi_reg_lut[2][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(1),
      O => \axi_reg_lut[2][15]_i_1_n_0\
    );
\axi_reg_lut[2][23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(2),
      O => \axi_reg_lut[2][23]_i_1_n_0\
    );
\axi_reg_lut[2][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(3),
      O => \axi_reg_lut[2][31]_i_1_n_0\
    );
\axi_reg_lut[2][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(0),
      O => \axi_reg_lut[2][7]_i_1_n_0\
    );
\axi_reg_lut[3][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \reg_wren__2\,
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(1),
      O => \axi_reg_lut[3][15]_i_1_n_0\
    );
\axi_reg_lut[3][23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \reg_wren__2\,
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(2),
      O => \axi_reg_lut[3][23]_i_1_n_0\
    );
\axi_reg_lut[3][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \reg_wren__2\,
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(3),
      O => \axi_reg_lut[3][31]_i_1_n_0\
    );
\axi_reg_lut[3][31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => \^axi_wready_reg_0\,
      I3 => s00_axi_wvalid,
      O => \reg_wren__2\
    );
\axi_reg_lut[3][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \reg_wren__2\,
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(0),
      O => \axi_reg_lut[3][7]_i_1_n_0\
    );
\axi_reg_lut_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \axi_reg_lut_reg[0]\(0),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \axi_reg_lut_reg[0]\(10),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \axi_reg_lut_reg[0]\(11),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \axi_reg_lut_reg[0]\(12),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \axi_reg_lut_reg[0]\(13),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \axi_reg_lut_reg[0]\(14),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \axi_reg_lut_reg[0]\(15),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \axi_reg_lut_reg[0]\(16),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \axi_reg_lut_reg[0]\(17),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \axi_reg_lut_reg[0]\(18),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \axi_reg_lut_reg[0]\(19),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \axi_reg_lut_reg[0]\(1),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \axi_reg_lut_reg[0]\(20),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \axi_reg_lut_reg[0]\(21),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \axi_reg_lut_reg[0]\(22),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \axi_reg_lut_reg[0]\(23),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \axi_reg_lut_reg[0]\(24),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \axi_reg_lut_reg[0]\(25),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \axi_reg_lut_reg[0]\(26),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \axi_reg_lut_reg[0]\(27),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \axi_reg_lut_reg[0]\(28),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \axi_reg_lut_reg[0]\(29),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \axi_reg_lut_reg[0]\(2),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \axi_reg_lut_reg[0]\(30),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \axi_reg_lut_reg[0]\(31),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \axi_reg_lut_reg[0]\(3),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \axi_reg_lut_reg[0]\(4),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \axi_reg_lut_reg[0]\(5),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \axi_reg_lut_reg[0]\(6),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \axi_reg_lut_reg[0]\(7),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \axi_reg_lut_reg[0]\(8),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[0][15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \axi_reg_lut_reg[0]\(9),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \axi_reg_lut_reg[1]\(0),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \axi_reg_lut_reg[1]\(10),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \axi_reg_lut_reg[1]\(11),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \axi_reg_lut_reg[1]\(12),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \axi_reg_lut_reg[1]\(13),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \axi_reg_lut_reg[1]\(14),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \axi_reg_lut_reg[1]\(15),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \axi_reg_lut_reg[1]\(16),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \axi_reg_lut_reg[1]\(17),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \axi_reg_lut_reg[1]\(18),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \axi_reg_lut_reg[1]\(19),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \axi_reg_lut_reg[1]\(1),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \axi_reg_lut_reg[1]\(20),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \axi_reg_lut_reg[1]\(21),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \axi_reg_lut_reg[1]\(22),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \axi_reg_lut_reg[1]\(23),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \axi_reg_lut_reg[1]\(24),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \axi_reg_lut_reg[1]\(25),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \axi_reg_lut_reg[1]\(26),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \axi_reg_lut_reg[1]\(27),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \axi_reg_lut_reg[1]\(28),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \axi_reg_lut_reg[1]\(29),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \axi_reg_lut_reg[1]\(2),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \axi_reg_lut_reg[1]\(30),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \axi_reg_lut_reg[1]\(31),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \axi_reg_lut_reg[1]\(3),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \axi_reg_lut_reg[1]\(4),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \axi_reg_lut_reg[1]\(5),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \axi_reg_lut_reg[1]\(6),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \axi_reg_lut_reg[1]\(7),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \axi_reg_lut_reg[1]\(8),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[1][15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \axi_reg_lut_reg[1]\(9),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \axi_reg_lut_reg[2]\(0),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \axi_reg_lut_reg[2]\(10),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \axi_reg_lut_reg[2]\(11),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \axi_reg_lut_reg[2]\(12),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \axi_reg_lut_reg[2]\(13),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \axi_reg_lut_reg[2]\(14),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \axi_reg_lut_reg[2]\(15),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \axi_reg_lut_reg[2]\(16),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \axi_reg_lut_reg[2]\(17),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \axi_reg_lut_reg[2]\(18),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \axi_reg_lut_reg[2]\(19),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \axi_reg_lut_reg[2]\(1),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \axi_reg_lut_reg[2]\(20),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \axi_reg_lut_reg[2]\(21),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \axi_reg_lut_reg[2]\(22),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \axi_reg_lut_reg[2]\(23),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \axi_reg_lut_reg[2]\(24),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \axi_reg_lut_reg[2]\(25),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \axi_reg_lut_reg[2]\(26),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \axi_reg_lut_reg[2]\(27),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \axi_reg_lut_reg[2]\(28),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \axi_reg_lut_reg[2]\(29),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \axi_reg_lut_reg[2]\(2),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \axi_reg_lut_reg[2]\(30),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \axi_reg_lut_reg[2]\(31),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \axi_reg_lut_reg[2]\(3),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \axi_reg_lut_reg[2]\(4),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \axi_reg_lut_reg[2]\(5),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \axi_reg_lut_reg[2]\(6),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \axi_reg_lut_reg[2]\(7),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \axi_reg_lut_reg[2]\(8),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[2][15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \axi_reg_lut_reg[2]\(9),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \axi_reg_lut_reg[3]\(0),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \axi_reg_lut_reg[3]\(10),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \axi_reg_lut_reg[3]\(11),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \axi_reg_lut_reg[3]\(12),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \axi_reg_lut_reg[3]\(13),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \axi_reg_lut_reg[3]\(14),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \axi_reg_lut_reg[3]\(15),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \axi_reg_lut_reg[3]\(16),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \axi_reg_lut_reg[3]\(17),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \axi_reg_lut_reg[3]\(18),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \axi_reg_lut_reg[3]\(19),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \axi_reg_lut_reg[3]\(1),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \axi_reg_lut_reg[3]\(20),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \axi_reg_lut_reg[3]\(21),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \axi_reg_lut_reg[3]\(22),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \axi_reg_lut_reg[3]\(23),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \axi_reg_lut_reg[3]\(24),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \axi_reg_lut_reg[3]\(25),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \axi_reg_lut_reg[3]\(26),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \axi_reg_lut_reg[3]\(27),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \axi_reg_lut_reg[3]\(28),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \axi_reg_lut_reg[3]\(29),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \axi_reg_lut_reg[3]\(2),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \axi_reg_lut_reg[3]\(30),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \axi_reg_lut_reg[3]\(31),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \axi_reg_lut_reg[3]\(3),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \axi_reg_lut_reg[3]\(4),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \axi_reg_lut_reg[3]\(5),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \axi_reg_lut_reg[3]\(6),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \axi_reg_lut_reg[3]\(7),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \axi_reg_lut_reg[3]\(8),
      R => axi_awready_i_1_n_0
    );
\axi_reg_lut_reg[3][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \axi_reg_lut[3][15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \axi_reg_lut_reg[3]\(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^axi_wready_reg_0\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => axi_awready_i_1_n_0
    );
\left_dds_phase_incr_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[0]\(0),
      Q => Q(0),
      R => '0'
    );
\left_dds_phase_incr_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[0]\(10),
      Q => Q(10),
      R => '0'
    );
\left_dds_phase_incr_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[0]\(11),
      Q => Q(11),
      R => '0'
    );
\left_dds_phase_incr_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[0]\(1),
      Q => Q(1),
      R => '0'
    );
\left_dds_phase_incr_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[0]\(2),
      Q => Q(2),
      R => '0'
    );
\left_dds_phase_incr_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[0]\(3),
      Q => Q(3),
      R => '0'
    );
\left_dds_phase_incr_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[0]\(4),
      Q => Q(4),
      R => '0'
    );
\left_dds_phase_incr_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[0]\(5),
      Q => Q(5),
      R => '0'
    );
\left_dds_phase_incr_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[0]\(6),
      Q => Q(6),
      R => '0'
    );
\left_dds_phase_incr_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[0]\(7),
      Q => Q(7),
      R => '0'
    );
\left_dds_phase_incr_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[0]\(8),
      Q => Q(8),
      R => '0'
    );
\left_dds_phase_incr_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[0]\(9),
      Q => Q(9),
      R => '0'
    );
\right_dds_phase_incr_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[1]\(0),
      Q => \right_dds_phase_incr_o_reg[11]_0\(0),
      R => '0'
    );
\right_dds_phase_incr_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[1]\(10),
      Q => \right_dds_phase_incr_o_reg[11]_0\(10),
      R => '0'
    );
\right_dds_phase_incr_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[1]\(11),
      Q => \right_dds_phase_incr_o_reg[11]_0\(11),
      R => '0'
    );
\right_dds_phase_incr_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[1]\(1),
      Q => \right_dds_phase_incr_o_reg[11]_0\(1),
      R => '0'
    );
\right_dds_phase_incr_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[1]\(2),
      Q => \right_dds_phase_incr_o_reg[11]_0\(2),
      R => '0'
    );
\right_dds_phase_incr_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[1]\(3),
      Q => \right_dds_phase_incr_o_reg[11]_0\(3),
      R => '0'
    );
\right_dds_phase_incr_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[1]\(4),
      Q => \right_dds_phase_incr_o_reg[11]_0\(4),
      R => '0'
    );
\right_dds_phase_incr_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[1]\(5),
      Q => \right_dds_phase_incr_o_reg[11]_0\(5),
      R => '0'
    );
\right_dds_phase_incr_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[1]\(6),
      Q => \right_dds_phase_incr_o_reg[11]_0\(6),
      R => '0'
    );
\right_dds_phase_incr_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[1]\(7),
      Q => \right_dds_phase_incr_o_reg[11]_0\(7),
      R => '0'
    );
\right_dds_phase_incr_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[1]\(8),
      Q => \right_dds_phase_incr_o_reg[11]_0\(8),
      R => '0'
    );
\right_dds_phase_incr_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[1]\(9),
      Q => \right_dds_phase_incr_o_reg[11]_0\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_stream_bd_axis_i2s_wrapper_0_0_shift_register is
  port (
    ac_dac_data_o : out STD_LOGIC;
    curr_state : in STD_LOGIC_VECTOR ( 0 to 0 );
    \shift_reg_reg[0]_0\ : in STD_LOGIC;
    \shift_reg_reg[0]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_stream_bd_axis_i2s_wrapper_0_0_shift_register : entity is "shift_register";
end axi_stream_bd_axis_i2s_wrapper_0_0_shift_register;

architecture STRUCTURE of axi_stream_bd_axis_i2s_wrapper_0_0_shift_register is
  signal \^ac_dac_data_o\ : STD_LOGIC;
  signal shift_reg : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \shift_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \shift_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[9]_i_1_n_0\ : STD_LOGIC;
begin
  ac_dac_data_o <= \^ac_dac_data_o\;
\shift_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0028"
    )
        port map (
      I0 => Q(0),
      I1 => curr_state(0),
      I2 => \shift_reg_reg[0]_1\,
      I3 => \shift_reg_reg[0]_0\,
      I4 => \^ac_dac_data_o\,
      O => \shift_reg[0]_i_1_n_0\
    );
\shift_reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0028"
    )
        port map (
      I0 => Q(10),
      I1 => curr_state(0),
      I2 => \shift_reg_reg[0]_1\,
      I3 => \shift_reg_reg[0]_0\,
      I4 => shift_reg(9),
      O => \shift_reg[10]_i_1_n_0\
    );
\shift_reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0028"
    )
        port map (
      I0 => Q(11),
      I1 => curr_state(0),
      I2 => \shift_reg_reg[0]_1\,
      I3 => \shift_reg_reg[0]_0\,
      I4 => shift_reg(10),
      O => \shift_reg[11]_i_1_n_0\
    );
\shift_reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0028"
    )
        port map (
      I0 => Q(12),
      I1 => curr_state(0),
      I2 => \shift_reg_reg[0]_1\,
      I3 => \shift_reg_reg[0]_0\,
      I4 => shift_reg(11),
      O => \shift_reg[12]_i_1_n_0\
    );
\shift_reg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0028"
    )
        port map (
      I0 => Q(13),
      I1 => curr_state(0),
      I2 => \shift_reg_reg[0]_1\,
      I3 => \shift_reg_reg[0]_0\,
      I4 => shift_reg(12),
      O => \shift_reg[13]_i_1_n_0\
    );
\shift_reg[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0028"
    )
        port map (
      I0 => Q(14),
      I1 => curr_state(0),
      I2 => \shift_reg_reg[0]_1\,
      I3 => \shift_reg_reg[0]_0\,
      I4 => shift_reg(13),
      O => \shift_reg[14]_i_1_n_0\
    );
\shift_reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0028"
    )
        port map (
      I0 => Q(15),
      I1 => curr_state(0),
      I2 => \shift_reg_reg[0]_1\,
      I3 => \shift_reg_reg[0]_0\,
      I4 => shift_reg(14),
      O => \shift_reg[15]_i_1_n_0\
    );
\shift_reg[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0028"
    )
        port map (
      I0 => Q(16),
      I1 => curr_state(0),
      I2 => \shift_reg_reg[0]_1\,
      I3 => \shift_reg_reg[0]_0\,
      I4 => shift_reg(15),
      O => \shift_reg[16]_i_1_n_0\
    );
\shift_reg[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0028"
    )
        port map (
      I0 => Q(17),
      I1 => curr_state(0),
      I2 => \shift_reg_reg[0]_1\,
      I3 => \shift_reg_reg[0]_0\,
      I4 => shift_reg(16),
      O => \shift_reg[17]_i_1_n_0\
    );
\shift_reg[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0028"
    )
        port map (
      I0 => Q(18),
      I1 => curr_state(0),
      I2 => \shift_reg_reg[0]_1\,
      I3 => \shift_reg_reg[0]_0\,
      I4 => shift_reg(17),
      O => \shift_reg[18]_i_1_n_0\
    );
\shift_reg[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0028"
    )
        port map (
      I0 => Q(19),
      I1 => curr_state(0),
      I2 => \shift_reg_reg[0]_1\,
      I3 => \shift_reg_reg[0]_0\,
      I4 => shift_reg(18),
      O => \shift_reg[19]_i_1_n_0\
    );
\shift_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0028"
    )
        port map (
      I0 => Q(1),
      I1 => curr_state(0),
      I2 => \shift_reg_reg[0]_1\,
      I3 => \shift_reg_reg[0]_0\,
      I4 => shift_reg(0),
      O => \shift_reg[1]_i_1_n_0\
    );
\shift_reg[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0028"
    )
        port map (
      I0 => Q(20),
      I1 => curr_state(0),
      I2 => \shift_reg_reg[0]_1\,
      I3 => \shift_reg_reg[0]_0\,
      I4 => shift_reg(19),
      O => \shift_reg[20]_i_1_n_0\
    );
\shift_reg[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0028"
    )
        port map (
      I0 => Q(21),
      I1 => curr_state(0),
      I2 => \shift_reg_reg[0]_1\,
      I3 => \shift_reg_reg[0]_0\,
      I4 => shift_reg(20),
      O => \shift_reg[21]_i_1_n_0\
    );
\shift_reg[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0028"
    )
        port map (
      I0 => Q(22),
      I1 => curr_state(0),
      I2 => \shift_reg_reg[0]_1\,
      I3 => \shift_reg_reg[0]_0\,
      I4 => shift_reg(21),
      O => \shift_reg[22]_i_1_n_0\
    );
\shift_reg[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"36"
    )
        port map (
      I0 => curr_state(0),
      I1 => \shift_reg_reg[0]_0\,
      I2 => \shift_reg_reg[0]_1\,
      O => \shift_reg[23]_i_1_n_0\
    );
\shift_reg[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0028"
    )
        port map (
      I0 => Q(23),
      I1 => curr_state(0),
      I2 => \shift_reg_reg[0]_1\,
      I3 => \shift_reg_reg[0]_0\,
      I4 => shift_reg(22),
      O => \shift_reg[23]_i_2_n_0\
    );
\shift_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0028"
    )
        port map (
      I0 => Q(2),
      I1 => curr_state(0),
      I2 => \shift_reg_reg[0]_1\,
      I3 => \shift_reg_reg[0]_0\,
      I4 => shift_reg(1),
      O => \shift_reg[2]_i_1_n_0\
    );
\shift_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0028"
    )
        port map (
      I0 => Q(3),
      I1 => curr_state(0),
      I2 => \shift_reg_reg[0]_1\,
      I3 => \shift_reg_reg[0]_0\,
      I4 => shift_reg(2),
      O => \shift_reg[3]_i_1_n_0\
    );
\shift_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0028"
    )
        port map (
      I0 => Q(4),
      I1 => curr_state(0),
      I2 => \shift_reg_reg[0]_1\,
      I3 => \shift_reg_reg[0]_0\,
      I4 => shift_reg(3),
      O => \shift_reg[4]_i_1_n_0\
    );
\shift_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0028"
    )
        port map (
      I0 => Q(5),
      I1 => curr_state(0),
      I2 => \shift_reg_reg[0]_1\,
      I3 => \shift_reg_reg[0]_0\,
      I4 => shift_reg(4),
      O => \shift_reg[5]_i_1_n_0\
    );
\shift_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0028"
    )
        port map (
      I0 => Q(6),
      I1 => curr_state(0),
      I2 => \shift_reg_reg[0]_1\,
      I3 => \shift_reg_reg[0]_0\,
      I4 => shift_reg(5),
      O => \shift_reg[6]_i_1_n_0\
    );
\shift_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0028"
    )
        port map (
      I0 => Q(7),
      I1 => curr_state(0),
      I2 => \shift_reg_reg[0]_1\,
      I3 => \shift_reg_reg[0]_0\,
      I4 => shift_reg(6),
      O => \shift_reg[7]_i_1_n_0\
    );
\shift_reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0028"
    )
        port map (
      I0 => Q(8),
      I1 => curr_state(0),
      I2 => \shift_reg_reg[0]_1\,
      I3 => \shift_reg_reg[0]_0\,
      I4 => shift_reg(7),
      O => \shift_reg[8]_i_1_n_0\
    );
\shift_reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0028"
    )
        port map (
      I0 => Q(9),
      I1 => curr_state(0),
      I2 => \shift_reg_reg[0]_1\,
      I3 => \shift_reg_reg[0]_0\,
      I4 => shift_reg(8),
      O => \shift_reg[9]_i_1_n_0\
    );
\shift_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1_n_0\,
      D => \shift_reg[0]_i_1_n_0\,
      Q => shift_reg(0),
      R => '0'
    );
\shift_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1_n_0\,
      D => \shift_reg[10]_i_1_n_0\,
      Q => shift_reg(10),
      R => '0'
    );
\shift_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1_n_0\,
      D => \shift_reg[11]_i_1_n_0\,
      Q => shift_reg(11),
      R => '0'
    );
\shift_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1_n_0\,
      D => \shift_reg[12]_i_1_n_0\,
      Q => shift_reg(12),
      R => '0'
    );
\shift_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1_n_0\,
      D => \shift_reg[13]_i_1_n_0\,
      Q => shift_reg(13),
      R => '0'
    );
\shift_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1_n_0\,
      D => \shift_reg[14]_i_1_n_0\,
      Q => shift_reg(14),
      R => '0'
    );
\shift_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1_n_0\,
      D => \shift_reg[15]_i_1_n_0\,
      Q => shift_reg(15),
      R => '0'
    );
\shift_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1_n_0\,
      D => \shift_reg[16]_i_1_n_0\,
      Q => shift_reg(16),
      R => '0'
    );
\shift_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1_n_0\,
      D => \shift_reg[17]_i_1_n_0\,
      Q => shift_reg(17),
      R => '0'
    );
\shift_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1_n_0\,
      D => \shift_reg[18]_i_1_n_0\,
      Q => shift_reg(18),
      R => '0'
    );
\shift_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1_n_0\,
      D => \shift_reg[19]_i_1_n_0\,
      Q => shift_reg(19),
      R => '0'
    );
\shift_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1_n_0\,
      D => \shift_reg[1]_i_1_n_0\,
      Q => shift_reg(1),
      R => '0'
    );
\shift_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1_n_0\,
      D => \shift_reg[20]_i_1_n_0\,
      Q => shift_reg(20),
      R => '0'
    );
\shift_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1_n_0\,
      D => \shift_reg[21]_i_1_n_0\,
      Q => shift_reg(21),
      R => '0'
    );
\shift_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1_n_0\,
      D => \shift_reg[22]_i_1_n_0\,
      Q => shift_reg(22),
      R => '0'
    );
\shift_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1_n_0\,
      D => \shift_reg[23]_i_2_n_0\,
      Q => \^ac_dac_data_o\,
      R => '0'
    );
\shift_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1_n_0\,
      D => \shift_reg[2]_i_1_n_0\,
      Q => shift_reg(2),
      R => '0'
    );
\shift_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1_n_0\,
      D => \shift_reg[3]_i_1_n_0\,
      Q => shift_reg(3),
      R => '0'
    );
\shift_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1_n_0\,
      D => \shift_reg[4]_i_1_n_0\,
      Q => shift_reg(4),
      R => '0'
    );
\shift_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1_n_0\,
      D => \shift_reg[5]_i_1_n_0\,
      Q => shift_reg(5),
      R => '0'
    );
\shift_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1_n_0\,
      D => \shift_reg[6]_i_1_n_0\,
      Q => shift_reg(6),
      R => '0'
    );
\shift_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1_n_0\,
      D => \shift_reg[7]_i_1_n_0\,
      Q => shift_reg(7),
      R => '0'
    );
\shift_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1_n_0\,
      D => \shift_reg[8]_i_1_n_0\,
      Q => shift_reg(8),
      R => '0'
    );
\shift_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1_n_0\,
      D => \shift_reg[9]_i_1_n_0\,
      Q => shift_reg(9),
      R => '0'
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 106464)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_stream_bd_axis_i2s_wrapper_0_0_clk_wiz_0 is
  port (
    mclk_o : out STD_LOGIC;
    sysclk_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_stream_bd_axis_i2s_wrapper_0_0_clk_wiz_0 : entity is "clk_wiz_0";
end axi_stream_bd_axis_i2s_wrapper_0_0_clk_wiz_0;

architecture STRUCTURE of axi_stream_bd_axis_i2s_wrapper_0_0_clk_wiz_0 is
begin
inst: entity work.axi_stream_bd_axis_i2s_wrapper_0_0_clk_wiz_0_clk_wiz
     port map (
      mclk_o => mclk_o,
      sysclk_i => sysclk_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_stream_bd_axis_i2s_wrapper_0_0_i2s_transmitter is
  port (
    \FSM_sequential_curr_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ac_dac_data_o : out STD_LOGIC;
    lrclk_o : in STD_LOGIC;
    CLK : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_stream_bd_axis_i2s_wrapper_0_0_i2s_transmitter : entity is "i2s_transmitter";
end axi_stream_bd_axis_i2s_wrapper_0_0_i2s_transmitter;

architecture STRUCTURE of axi_stream_bd_axis_i2s_wrapper_0_0_i2s_transmitter is
  signal \FSM_sequential_curr_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_curr_state_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal bit_counter_n_0 : STD_LOGIC;
  signal bit_counter_n_1 : STD_LOGIC;
  signal curr_state : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \input_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \input_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \input_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \input_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \input_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \input_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \input_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \input_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \input_data_reg_n_0_[16]\ : STD_LOGIC;
  signal \input_data_reg_n_0_[17]\ : STD_LOGIC;
  signal \input_data_reg_n_0_[18]\ : STD_LOGIC;
  signal \input_data_reg_n_0_[19]\ : STD_LOGIC;
  signal \input_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \input_data_reg_n_0_[20]\ : STD_LOGIC;
  signal \input_data_reg_n_0_[21]\ : STD_LOGIC;
  signal \input_data_reg_n_0_[22]\ : STD_LOGIC;
  signal \input_data_reg_n_0_[23]\ : STD_LOGIC;
  signal \input_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \input_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \input_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \input_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \input_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \input_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \input_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \input_data_reg_n_0_[9]\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[0]\ : label is "lidlestate:000,lloadregister:001,lshiftdata:010,ridlestate:011,rloadregister:100,rshiftdata:101,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[1]\ : label is "lidlestate:000,lloadregister:001,lshiftdata:010,ridlestate:011,rloadregister:100,rshiftdata:101,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[2]\ : label is "lidlestate:000,lloadregister:001,lshiftdata:010,ridlestate:011,rloadregister:100,rshiftdata:101,";
begin
  \FSM_sequential_curr_state_reg[1]_0\(1 downto 0) <= \^fsm_sequential_curr_state_reg[1]_0\(1 downto 0);
\FSM_sequential_curr_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF50"
    )
        port map (
      I0 => curr_state(2),
      I1 => lrclk_o,
      I2 => \^fsm_sequential_curr_state_reg[1]_0\(0),
      I3 => \^fsm_sequential_curr_state_reg[1]_0\(1),
      O => \FSM_sequential_curr_state[1]_i_1_n_0\
    );
\FSM_sequential_curr_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => bit_counter_n_1,
      Q => \^fsm_sequential_curr_state_reg[1]_0\(0),
      R => '0'
    );
\FSM_sequential_curr_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_sequential_curr_state[1]_i_1_n_0\,
      Q => \^fsm_sequential_curr_state_reg[1]_0\(1),
      R => '0'
    );
\FSM_sequential_curr_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => bit_counter_n_0,
      Q => curr_state(2),
      R => '0'
    );
bit_counter: entity work.axi_stream_bd_axis_i2s_wrapper_0_0_counter
     port map (
      CLK => CLK,
      \FSM_sequential_curr_state_reg[2]\ => bit_counter_n_0,
      \FSM_sequential_curr_state_reg[2]_0\ => bit_counter_n_1,
      \count_int_reg[0]_0\ => \^fsm_sequential_curr_state_reg[1]_0\(1),
      \count_int_reg[0]_1\ => \^fsm_sequential_curr_state_reg[1]_0\(0),
      curr_state(0) => curr_state(2),
      lrclk_o => lrclk_o
    );
\input_data[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => curr_state(2),
      I1 => \^fsm_sequential_curr_state_reg[1]_0\(1),
      I2 => \^fsm_sequential_curr_state_reg[1]_0\(0),
      O => \input_data[23]_i_1_n_0\
    );
\input_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \input_data[23]_i_1_n_0\,
      D => D(0),
      Q => \input_data_reg_n_0_[0]\,
      R => '0'
    );
\input_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \input_data[23]_i_1_n_0\,
      D => D(10),
      Q => \input_data_reg_n_0_[10]\,
      R => '0'
    );
\input_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \input_data[23]_i_1_n_0\,
      D => D(11),
      Q => \input_data_reg_n_0_[11]\,
      R => '0'
    );
\input_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \input_data[23]_i_1_n_0\,
      D => D(12),
      Q => \input_data_reg_n_0_[12]\,
      R => '0'
    );
\input_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \input_data[23]_i_1_n_0\,
      D => D(13),
      Q => \input_data_reg_n_0_[13]\,
      R => '0'
    );
\input_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \input_data[23]_i_1_n_0\,
      D => D(14),
      Q => \input_data_reg_n_0_[14]\,
      R => '0'
    );
\input_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \input_data[23]_i_1_n_0\,
      D => D(15),
      Q => \input_data_reg_n_0_[15]\,
      R => '0'
    );
\input_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \input_data[23]_i_1_n_0\,
      D => D(16),
      Q => \input_data_reg_n_0_[16]\,
      R => '0'
    );
\input_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \input_data[23]_i_1_n_0\,
      D => D(17),
      Q => \input_data_reg_n_0_[17]\,
      R => '0'
    );
\input_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \input_data[23]_i_1_n_0\,
      D => D(18),
      Q => \input_data_reg_n_0_[18]\,
      R => '0'
    );
\input_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \input_data[23]_i_1_n_0\,
      D => D(19),
      Q => \input_data_reg_n_0_[19]\,
      R => '0'
    );
\input_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \input_data[23]_i_1_n_0\,
      D => D(1),
      Q => \input_data_reg_n_0_[1]\,
      R => '0'
    );
\input_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \input_data[23]_i_1_n_0\,
      D => D(20),
      Q => \input_data_reg_n_0_[20]\,
      R => '0'
    );
\input_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \input_data[23]_i_1_n_0\,
      D => D(21),
      Q => \input_data_reg_n_0_[21]\,
      R => '0'
    );
\input_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \input_data[23]_i_1_n_0\,
      D => D(22),
      Q => \input_data_reg_n_0_[22]\,
      R => '0'
    );
\input_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \input_data[23]_i_1_n_0\,
      D => D(23),
      Q => \input_data_reg_n_0_[23]\,
      R => '0'
    );
\input_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \input_data[23]_i_1_n_0\,
      D => D(2),
      Q => \input_data_reg_n_0_[2]\,
      R => '0'
    );
\input_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \input_data[23]_i_1_n_0\,
      D => D(3),
      Q => \input_data_reg_n_0_[3]\,
      R => '0'
    );
\input_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \input_data[23]_i_1_n_0\,
      D => D(4),
      Q => \input_data_reg_n_0_[4]\,
      R => '0'
    );
\input_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \input_data[23]_i_1_n_0\,
      D => D(5),
      Q => \input_data_reg_n_0_[5]\,
      R => '0'
    );
\input_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \input_data[23]_i_1_n_0\,
      D => D(6),
      Q => \input_data_reg_n_0_[6]\,
      R => '0'
    );
\input_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \input_data[23]_i_1_n_0\,
      D => D(7),
      Q => \input_data_reg_n_0_[7]\,
      R => '0'
    );
\input_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \input_data[23]_i_1_n_0\,
      D => D(8),
      Q => \input_data_reg_n_0_[8]\,
      R => '0'
    );
\input_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \input_data[23]_i_1_n_0\,
      D => D(9),
      Q => \input_data_reg_n_0_[9]\,
      R => '0'
    );
shift_reg_inst: entity work.axi_stream_bd_axis_i2s_wrapper_0_0_shift_register
     port map (
      CLK => CLK,
      Q(23) => \input_data_reg_n_0_[23]\,
      Q(22) => \input_data_reg_n_0_[22]\,
      Q(21) => \input_data_reg_n_0_[21]\,
      Q(20) => \input_data_reg_n_0_[20]\,
      Q(19) => \input_data_reg_n_0_[19]\,
      Q(18) => \input_data_reg_n_0_[18]\,
      Q(17) => \input_data_reg_n_0_[17]\,
      Q(16) => \input_data_reg_n_0_[16]\,
      Q(15) => \input_data_reg_n_0_[15]\,
      Q(14) => \input_data_reg_n_0_[14]\,
      Q(13) => \input_data_reg_n_0_[13]\,
      Q(12) => \input_data_reg_n_0_[12]\,
      Q(11) => \input_data_reg_n_0_[11]\,
      Q(10) => \input_data_reg_n_0_[10]\,
      Q(9) => \input_data_reg_n_0_[9]\,
      Q(8) => \input_data_reg_n_0_[8]\,
      Q(7) => \input_data_reg_n_0_[7]\,
      Q(6) => \input_data_reg_n_0_[6]\,
      Q(5) => \input_data_reg_n_0_[5]\,
      Q(4) => \input_data_reg_n_0_[4]\,
      Q(3) => \input_data_reg_n_0_[3]\,
      Q(2) => \input_data_reg_n_0_[2]\,
      Q(1) => \input_data_reg_n_0_[1]\,
      Q(0) => \input_data_reg_n_0_[0]\,
      ac_dac_data_o => ac_dac_data_o,
      curr_state(0) => curr_state(2),
      \shift_reg_reg[0]_0\ => \^fsm_sequential_curr_state_reg[1]_0\(1),
      \shift_reg_reg[0]_1\ => \^fsm_sequential_curr_state_reg[1]_0\(0)
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5792)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_stream_bd_axis_i2s_wrapper_0_0_i2s_clock_gen is
  port (
    bclk_o : out STD_LOGIC;
    lrclk_o : out STD_LOGIC;
    ac_mclk_o : out STD_LOGIC;
    mclk_o : out STD_LOGIC;
    ac_bclk_o : out STD_LOGIC;
    ac_adc_lrclk_o : out STD_LOGIC;
    ac_dac_lrclk_o : out STD_LOGIC;
    sysclk_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_stream_bd_axis_i2s_wrapper_0_0_i2s_clock_gen : entity is "i2s_clock_gen";
end axi_stream_bd_axis_i2s_wrapper_0_0_i2s_clock_gen;

architecture STRUCTURE of axi_stream_bd_axis_i2s_wrapper_0_0_i2s_clock_gen is
  signal \^bclk_o\ : STD_LOGIC;
  signal \^lrclk_o\ : STD_LOGIC;
  signal \^mclk_o\ : STD_LOGIC;
  signal NLW_adc_lrclk_forward_oddr_R_UNCONNECTED : STD_LOGIC;
  signal NLW_adc_lrclk_forward_oddr_S_UNCONNECTED : STD_LOGIC;
  signal NLW_bclk_forward_oddr_R_UNCONNECTED : STD_LOGIC;
  signal NLW_bclk_forward_oddr_S_UNCONNECTED : STD_LOGIC;
  signal NLW_dac_lrclk_forward_oddr_R_UNCONNECTED : STD_LOGIC;
  signal NLW_dac_lrclk_forward_oddr_S_UNCONNECTED : STD_LOGIC;
  signal NLW_mclk_forward_oddr_R_UNCONNECTED : STD_LOGIC;
  signal NLW_mclk_forward_oddr_S_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of adc_lrclk_forward_oddr : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of adc_lrclk_forward_oddr : label is "MLO";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of adc_lrclk_forward_oddr : label is "TRUE";
  attribute BOX_TYPE of bclk_forward_oddr : label is "PRIMITIVE";
  attribute OPT_MODIFIED of bclk_forward_oddr : label is "MLO";
  attribute \__SRVAL\ of bclk_forward_oddr : label is "TRUE";
  attribute BOX_TYPE of dac_lrclk_forward_oddr : label is "PRIMITIVE";
  attribute OPT_MODIFIED of dac_lrclk_forward_oddr : label is "MLO";
  attribute \__SRVAL\ of dac_lrclk_forward_oddr : label is "TRUE";
  attribute BOX_TYPE of mclk_forward_oddr : label is "PRIMITIVE";
  attribute OPT_MODIFIED of mclk_forward_oddr : label is "MLO";
  attribute \__SRVAL\ of mclk_forward_oddr : label is "TRUE";
begin
  bclk_o <= \^bclk_o\;
  lrclk_o <= \^lrclk_o\;
  mclk_o <= \^mclk_o\;
adc_lrclk_forward_oddr: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^lrclk_o\,
      CE => '1',
      D1 => '1',
      D2 => '0',
      Q => ac_adc_lrclk_o,
      R => NLW_adc_lrclk_forward_oddr_R_UNCONNECTED,
      S => NLW_adc_lrclk_forward_oddr_S_UNCONNECTED
    );
bclk_forward_oddr: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^bclk_o\,
      CE => '1',
      D1 => '1',
      D2 => '0',
      Q => ac_bclk_o,
      R => NLW_bclk_forward_oddr_R_UNCONNECTED,
      S => NLW_bclk_forward_oddr_S_UNCONNECTED
    );
clk_divider_falling_edge_inst: entity work.axi_stream_bd_axis_i2s_wrapper_0_0_clock_divider_falling_edge
     port map (
      \clock_counter_reg[0]_0\ => \^bclk_o\,
      lrclk_o => \^lrclk_o\
    );
clk_divider_inst: entity work.axi_stream_bd_axis_i2s_wrapper_0_0_clock_divider
     port map (
      bclk_o => \^bclk_o\,
      mclk_o => \^mclk_o\
    );
clk_wiz_inst: entity work.axi_stream_bd_axis_i2s_wrapper_0_0_clk_wiz_0
     port map (
      mclk_o => \^mclk_o\,
      sysclk_i => sysclk_i
    );
dac_lrclk_forward_oddr: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^lrclk_o\,
      CE => '1',
      D1 => '1',
      D2 => '0',
      Q => ac_dac_lrclk_o,
      R => NLW_dac_lrclk_forward_oddr_R_UNCONNECTED,
      S => NLW_dac_lrclk_forward_oddr_S_UNCONNECTED
    );
mclk_forward_oddr: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^mclk_o\,
      CE => '1',
      D1 => '1',
      D2 => '0',
      Q => ac_mclk_o,
      R => NLW_mclk_forward_oddr_R_UNCONNECTED,
      S => NLW_mclk_forward_oddr_S_UNCONNECTED
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 41520)
`protect data_block
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
VcXGD6iT10Nm9UrbohxtSMbQbo3kVjse
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_stream_bd_axis_i2s_wrapper_0_0_blk_mem_gen_0 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axi_stream_bd_axis_i2s_wrapper_0_0_blk_mem_gen_0 : entity is "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of axi_stream_bd_axis_i2s_wrapper_0_0_blk_mem_gen_0 : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_stream_bd_axis_i2s_wrapper_0_0_blk_mem_gen_0 : entity is "blk_mem_gen_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of axi_stream_bd_axis_i2s_wrapper_0_0_blk_mem_gen_0 : entity is "blk_mem_gen_v8_4_5,Vivado 2021.2";
end axi_stream_bd_axis_i2s_wrapper_0_0_blk_mem_gen_0;

architecture STRUCTURE of axi_stream_bd_axis_i2s_wrapper_0_0_blk_mem_gen_0 is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 12;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 12;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "3";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     6.979199 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "blk_mem_gen_0.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "blk_mem_gen_0.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 4096;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 4096;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of U0 : label is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of U0 : label is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 24;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 24;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 4096;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 4096;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 24;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 24;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of U0 : label is "true";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of ena : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
  attribute X_INTERFACE_INFO of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute X_INTERFACE_INFO of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
begin
U0: entity work.axi_stream_bd_axis_i2s_wrapper_0_0_blk_mem_gen_v8_4_5
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => B"000000000000",
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(23 downto 0) => B"000000000000000000000000",
      dinb(23 downto 0) => B"000000000000000000000000",
      douta(23 downto 0) => douta(23 downto 0),
      doutb(23 downto 0) => NLW_U0_doutb_UNCONNECTED(23 downto 0),
      eccpipece => '0',
      ena => ena,
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(11 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(11 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(11 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(11 downto 0),
      s_axi_rdata(23 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(23 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(23 downto 0) => B"000000000000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => '0',
      web(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_stream_bd_axis_i2s_wrapper_0_0_blk_mem_gen_0__2\ is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \axi_stream_bd_axis_i2s_wrapper_0_0_blk_mem_gen_0__2\ : entity is "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \axi_stream_bd_axis_i2s_wrapper_0_0_blk_mem_gen_0__2\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_stream_bd_axis_i2s_wrapper_0_0_blk_mem_gen_0__2\ : entity is "blk_mem_gen_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \axi_stream_bd_axis_i2s_wrapper_0_0_blk_mem_gen_0__2\ : entity is "blk_mem_gen_v8_4_5,Vivado 2021.2";
end \axi_stream_bd_axis_i2s_wrapper_0_0_blk_mem_gen_0__2\;

architecture STRUCTURE of \axi_stream_bd_axis_i2s_wrapper_0_0_blk_mem_gen_0__2\ is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 12;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 12;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "3";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     6.979199 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "blk_mem_gen_0.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "blk_mem_gen_0.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 4096;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 4096;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of U0 : label is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of U0 : label is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 24;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 24;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 4096;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 4096;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 24;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 24;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of U0 : label is "true";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of ena : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
  attribute X_INTERFACE_INFO of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute X_INTERFACE_INFO of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
begin
U0: entity work.\axi_stream_bd_axis_i2s_wrapper_0_0_blk_mem_gen_v8_4_5__2\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => B"000000000000",
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(23 downto 0) => B"000000000000000000000000",
      dinb(23 downto 0) => B"000000000000000000000000",
      douta(23 downto 0) => douta(23 downto 0),
      doutb(23 downto 0) => NLW_U0_doutb_UNCONNECTED(23 downto 0),
      eccpipece => '0',
      ena => ena,
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(11 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(11 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(11 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(11 downto 0),
      s_axi_rdata(23 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(23 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(23 downto 0) => B"000000000000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => '0',
      web(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_stream_bd_axis_i2s_wrapper_0_0_dds_controller is
  port (
    dbg_right_audio_rx_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    lrclk_o : in STD_LOGIC;
    dds_enable_i : in STD_LOGIC;
    \addr_ctr_reg[11]_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dds_reset_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_stream_bd_axis_i2s_wrapper_0_0_dds_controller : entity is "dds_controller";
end axi_stream_bd_axis_i2s_wrapper_0_0_dds_controller;

architecture STRUCTURE of axi_stream_bd_axis_i2s_wrapper_0_0_dds_controller is
  signal \addr_ctr[11]_i_2_n_0\ : STD_LOGIC;
  signal \addr_ctr[11]_i_3_n_0\ : STD_LOGIC;
  signal \addr_ctr[11]_i_4_n_0\ : STD_LOGIC;
  signal \addr_ctr[11]_i_5_n_0\ : STD_LOGIC;
  signal \addr_ctr[3]_i_2_n_0\ : STD_LOGIC;
  signal \addr_ctr[3]_i_3_n_0\ : STD_LOGIC;
  signal \addr_ctr[3]_i_4_n_0\ : STD_LOGIC;
  signal \addr_ctr[3]_i_5_n_0\ : STD_LOGIC;
  signal \addr_ctr[7]_i_2_n_0\ : STD_LOGIC;
  signal \addr_ctr[7]_i_3_n_0\ : STD_LOGIC;
  signal \addr_ctr[7]_i_4_n_0\ : STD_LOGIC;
  signal \addr_ctr[7]_i_5_n_0\ : STD_LOGIC;
  signal \addr_ctr_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \addr_ctr_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \addr_ctr_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \addr_ctr_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \addr_ctr_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \addr_ctr_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \addr_ctr_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \addr_ctr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \addr_ctr_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \addr_ctr_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \addr_ctr_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \addr_ctr_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \addr_ctr_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \addr_ctr_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \addr_ctr_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \addr_ctr_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \addr_ctr_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \addr_ctr_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \addr_ctr_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \addr_ctr_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \addr_ctr_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[0]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[10]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[11]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[1]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[2]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[3]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[4]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[5]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[6]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[7]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[8]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_addr_ctr_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of blk_mem_left : label is "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of blk_mem_left : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of blk_mem_left : label is "blk_mem_gen_v8_4_5,Vivado 2021.2";
begin
\addr_ctr[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[11]\,
      I1 => \addr_ctr_reg[11]_0\(11),
      O => \addr_ctr[11]_i_2_n_0\
    );
\addr_ctr[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[10]\,
      I1 => \addr_ctr_reg[11]_0\(10),
      O => \addr_ctr[11]_i_3_n_0\
    );
\addr_ctr[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[9]\,
      I1 => \addr_ctr_reg[11]_0\(9),
      O => \addr_ctr[11]_i_4_n_0\
    );
\addr_ctr[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[8]\,
      I1 => \addr_ctr_reg[11]_0\(8),
      O => \addr_ctr[11]_i_5_n_0\
    );
\addr_ctr[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[3]\,
      I1 => \addr_ctr_reg[11]_0\(3),
      O => \addr_ctr[3]_i_2_n_0\
    );
\addr_ctr[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[2]\,
      I1 => \addr_ctr_reg[11]_0\(2),
      O => \addr_ctr[3]_i_3_n_0\
    );
\addr_ctr[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[1]\,
      I1 => \addr_ctr_reg[11]_0\(1),
      O => \addr_ctr[3]_i_4_n_0\
    );
\addr_ctr[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[0]\,
      I1 => \addr_ctr_reg[11]_0\(0),
      O => \addr_ctr[3]_i_5_n_0\
    );
\addr_ctr[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[7]\,
      I1 => \addr_ctr_reg[11]_0\(7),
      O => \addr_ctr[7]_i_2_n_0\
    );
\addr_ctr[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[6]\,
      I1 => \addr_ctr_reg[11]_0\(6),
      O => \addr_ctr[7]_i_3_n_0\
    );
\addr_ctr[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[5]\,
      I1 => \addr_ctr_reg[11]_0\(5),
      O => \addr_ctr[7]_i_4_n_0\
    );
\addr_ctr[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[4]\,
      I1 => \addr_ctr_reg[11]_0\(4),
      O => \addr_ctr[7]_i_5_n_0\
    );
\addr_ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => lrclk_o,
      CE => dds_enable_i,
      D => \addr_ctr_reg[3]_i_1_n_7\,
      Q => \addr_ctr_reg_n_0_[0]\,
      R => dds_reset_i
    );
\addr_ctr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => lrclk_o,
      CE => dds_enable_i,
      D => \addr_ctr_reg[11]_i_1_n_5\,
      Q => \addr_ctr_reg_n_0_[10]\,
      R => dds_reset_i
    );
\addr_ctr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => lrclk_o,
      CE => dds_enable_i,
      D => \addr_ctr_reg[11]_i_1_n_4\,
      Q => \addr_ctr_reg_n_0_[11]\,
      R => dds_reset_i
    );
\addr_ctr_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_ctr_reg[7]_i_1_n_0\,
      CO(3) => \NLW_addr_ctr_reg[11]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \addr_ctr_reg[11]_i_1_n_1\,
      CO(1) => \addr_ctr_reg[11]_i_1_n_2\,
      CO(0) => \addr_ctr_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \addr_ctr_reg_n_0_[10]\,
      DI(1) => \addr_ctr_reg_n_0_[9]\,
      DI(0) => \addr_ctr_reg_n_0_[8]\,
      O(3) => \addr_ctr_reg[11]_i_1_n_4\,
      O(2) => \addr_ctr_reg[11]_i_1_n_5\,
      O(1) => \addr_ctr_reg[11]_i_1_n_6\,
      O(0) => \addr_ctr_reg[11]_i_1_n_7\,
      S(3) => \addr_ctr[11]_i_2_n_0\,
      S(2) => \addr_ctr[11]_i_3_n_0\,
      S(1) => \addr_ctr[11]_i_4_n_0\,
      S(0) => \addr_ctr[11]_i_5_n_0\
    );
\addr_ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => lrclk_o,
      CE => dds_enable_i,
      D => \addr_ctr_reg[3]_i_1_n_6\,
      Q => \addr_ctr_reg_n_0_[1]\,
      R => dds_reset_i
    );
\addr_ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => lrclk_o,
      CE => dds_enable_i,
      D => \addr_ctr_reg[3]_i_1_n_5\,
      Q => \addr_ctr_reg_n_0_[2]\,
      R => dds_reset_i
    );
\addr_ctr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => lrclk_o,
      CE => dds_enable_i,
      D => \addr_ctr_reg[3]_i_1_n_4\,
      Q => \addr_ctr_reg_n_0_[3]\,
      R => dds_reset_i
    );
\addr_ctr_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \addr_ctr_reg[3]_i_1_n_0\,
      CO(2) => \addr_ctr_reg[3]_i_1_n_1\,
      CO(1) => \addr_ctr_reg[3]_i_1_n_2\,
      CO(0) => \addr_ctr_reg[3]_i_1_n_3\,
      CYINIT => '1',
      DI(3) => \addr_ctr_reg_n_0_[3]\,
      DI(2) => \addr_ctr_reg_n_0_[2]\,
      DI(1) => \addr_ctr_reg_n_0_[1]\,
      DI(0) => \addr_ctr_reg_n_0_[0]\,
      O(3) => \addr_ctr_reg[3]_i_1_n_4\,
      O(2) => \addr_ctr_reg[3]_i_1_n_5\,
      O(1) => \addr_ctr_reg[3]_i_1_n_6\,
      O(0) => \addr_ctr_reg[3]_i_1_n_7\,
      S(3) => \addr_ctr[3]_i_2_n_0\,
      S(2) => \addr_ctr[3]_i_3_n_0\,
      S(1) => \addr_ctr[3]_i_4_n_0\,
      S(0) => \addr_ctr[3]_i_5_n_0\
    );
\addr_ctr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => lrclk_o,
      CE => dds_enable_i,
      D => \addr_ctr_reg[7]_i_1_n_7\,
      Q => \addr_ctr_reg_n_0_[4]\,
      R => dds_reset_i
    );
\addr_ctr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => lrclk_o,
      CE => dds_enable_i,
      D => \addr_ctr_reg[7]_i_1_n_6\,
      Q => \addr_ctr_reg_n_0_[5]\,
      R => dds_reset_i
    );
\addr_ctr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => lrclk_o,
      CE => dds_enable_i,
      D => \addr_ctr_reg[7]_i_1_n_5\,
      Q => \addr_ctr_reg_n_0_[6]\,
      R => dds_reset_i
    );
\addr_ctr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => lrclk_o,
      CE => dds_enable_i,
      D => \addr_ctr_reg[7]_i_1_n_4\,
      Q => \addr_ctr_reg_n_0_[7]\,
      R => dds_reset_i
    );
\addr_ctr_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_ctr_reg[3]_i_1_n_0\,
      CO(3) => \addr_ctr_reg[7]_i_1_n_0\,
      CO(2) => \addr_ctr_reg[7]_i_1_n_1\,
      CO(1) => \addr_ctr_reg[7]_i_1_n_2\,
      CO(0) => \addr_ctr_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \addr_ctr_reg_n_0_[7]\,
      DI(2) => \addr_ctr_reg_n_0_[6]\,
      DI(1) => \addr_ctr_reg_n_0_[5]\,
      DI(0) => \addr_ctr_reg_n_0_[4]\,
      O(3) => \addr_ctr_reg[7]_i_1_n_4\,
      O(2) => \addr_ctr_reg[7]_i_1_n_5\,
      O(1) => \addr_ctr_reg[7]_i_1_n_6\,
      O(0) => \addr_ctr_reg[7]_i_1_n_7\,
      S(3) => \addr_ctr[7]_i_2_n_0\,
      S(2) => \addr_ctr[7]_i_3_n_0\,
      S(1) => \addr_ctr[7]_i_4_n_0\,
      S(0) => \addr_ctr[7]_i_5_n_0\
    );
\addr_ctr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => lrclk_o,
      CE => dds_enable_i,
      D => \addr_ctr_reg[11]_i_1_n_7\,
      Q => \addr_ctr_reg_n_0_[8]\,
      R => dds_reset_i
    );
\addr_ctr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => lrclk_o,
      CE => dds_enable_i,
      D => \addr_ctr_reg[11]_i_1_n_6\,
      Q => \addr_ctr_reg_n_0_[9]\,
      R => dds_reset_i
    );
blk_mem_left: entity work.axi_stream_bd_axis_i2s_wrapper_0_0_blk_mem_gen_0
     port map (
      addra(11) => \addr_ctr_reg_n_0_[11]\,
      addra(10) => \addr_ctr_reg_n_0_[10]\,
      addra(9) => \addr_ctr_reg_n_0_[9]\,
      addra(8) => \addr_ctr_reg_n_0_[8]\,
      addra(7) => \addr_ctr_reg_n_0_[7]\,
      addra(6) => \addr_ctr_reg_n_0_[6]\,
      addra(5) => \addr_ctr_reg_n_0_[5]\,
      addra(4) => \addr_ctr_reg_n_0_[4]\,
      addra(3) => \addr_ctr_reg_n_0_[3]\,
      addra(2) => \addr_ctr_reg_n_0_[2]\,
      addra(1) => \addr_ctr_reg_n_0_[1]\,
      addra(0) => \addr_ctr_reg_n_0_[0]\,
      clka => lrclk_o,
      douta(23 downto 0) => dbg_right_audio_rx_o(23 downto 0),
      ena => dds_enable_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_stream_bd_axis_i2s_wrapper_0_0_dds_controller__xdcDup__1\ is
  port (
    dbg_left_audio_rx_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    lrclk_o : in STD_LOGIC;
    dds_enable_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dds_reset_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_stream_bd_axis_i2s_wrapper_0_0_dds_controller__xdcDup__1\ : entity is "dds_controller";
end \axi_stream_bd_axis_i2s_wrapper_0_0_dds_controller__xdcDup__1\;

architecture STRUCTURE of \axi_stream_bd_axis_i2s_wrapper_0_0_dds_controller__xdcDup__1\ is
  signal \addr_ctr[11]_i_2_n_0\ : STD_LOGIC;
  signal \addr_ctr[11]_i_3_n_0\ : STD_LOGIC;
  signal \addr_ctr[11]_i_4_n_0\ : STD_LOGIC;
  signal \addr_ctr[11]_i_5_n_0\ : STD_LOGIC;
  signal \addr_ctr[3]_i_2_n_0\ : STD_LOGIC;
  signal \addr_ctr[3]_i_3_n_0\ : STD_LOGIC;
  signal \addr_ctr[3]_i_4_n_0\ : STD_LOGIC;
  signal \addr_ctr[3]_i_5_n_0\ : STD_LOGIC;
  signal \addr_ctr[7]_i_2_n_0\ : STD_LOGIC;
  signal \addr_ctr[7]_i_3_n_0\ : STD_LOGIC;
  signal \addr_ctr[7]_i_4_n_0\ : STD_LOGIC;
  signal \addr_ctr[7]_i_5_n_0\ : STD_LOGIC;
  signal \addr_ctr_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \addr_ctr_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \addr_ctr_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \addr_ctr_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \addr_ctr_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \addr_ctr_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \addr_ctr_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \addr_ctr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \addr_ctr_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \addr_ctr_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \addr_ctr_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \addr_ctr_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \addr_ctr_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \addr_ctr_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \addr_ctr_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ctr_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \addr_ctr_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \addr_ctr_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \addr_ctr_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \addr_ctr_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \addr_ctr_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \addr_ctr_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[0]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[10]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[11]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[1]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[2]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[3]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[4]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[5]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[6]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[7]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[8]\ : STD_LOGIC;
  signal \addr_ctr_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_addr_ctr_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of blk_mem_left : label is "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of blk_mem_left : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of blk_mem_left : label is "blk_mem_gen_v8_4_5,Vivado 2021.2";
begin
\addr_ctr[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[11]\,
      I1 => Q(11),
      O => \addr_ctr[11]_i_2_n_0\
    );
\addr_ctr[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[10]\,
      I1 => Q(10),
      O => \addr_ctr[11]_i_3_n_0\
    );
\addr_ctr[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[9]\,
      I1 => Q(9),
      O => \addr_ctr[11]_i_4_n_0\
    );
\addr_ctr[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[8]\,
      I1 => Q(8),
      O => \addr_ctr[11]_i_5_n_0\
    );
\addr_ctr[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[3]\,
      I1 => Q(3),
      O => \addr_ctr[3]_i_2_n_0\
    );
\addr_ctr[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[2]\,
      I1 => Q(2),
      O => \addr_ctr[3]_i_3_n_0\
    );
\addr_ctr[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[1]\,
      I1 => Q(1),
      O => \addr_ctr[3]_i_4_n_0\
    );
\addr_ctr[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[0]\,
      I1 => Q(0),
      O => \addr_ctr[3]_i_5_n_0\
    );
\addr_ctr[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[7]\,
      I1 => Q(7),
      O => \addr_ctr[7]_i_2_n_0\
    );
\addr_ctr[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[6]\,
      I1 => Q(6),
      O => \addr_ctr[7]_i_3_n_0\
    );
\addr_ctr[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[5]\,
      I1 => Q(5),
      O => \addr_ctr[7]_i_4_n_0\
    );
\addr_ctr[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[4]\,
      I1 => Q(4),
      O => \addr_ctr[7]_i_5_n_0\
    );
\addr_ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => lrclk_o,
      CE => dds_enable_i,
      D => \addr_ctr_reg[3]_i_1_n_7\,
      Q => \addr_ctr_reg_n_0_[0]\,
      R => dds_reset_i
    );
\addr_ctr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => lrclk_o,
      CE => dds_enable_i,
      D => \addr_ctr_reg[11]_i_1_n_5\,
      Q => \addr_ctr_reg_n_0_[10]\,
      R => dds_reset_i
    );
\addr_ctr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => lrclk_o,
      CE => dds_enable_i,
      D => \addr_ctr_reg[11]_i_1_n_4\,
      Q => \addr_ctr_reg_n_0_[11]\,
      R => dds_reset_i
    );
\addr_ctr_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_ctr_reg[7]_i_1_n_0\,
      CO(3) => \NLW_addr_ctr_reg[11]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \addr_ctr_reg[11]_i_1_n_1\,
      CO(1) => \addr_ctr_reg[11]_i_1_n_2\,
      CO(0) => \addr_ctr_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \addr_ctr_reg_n_0_[10]\,
      DI(1) => \addr_ctr_reg_n_0_[9]\,
      DI(0) => \addr_ctr_reg_n_0_[8]\,
      O(3) => \addr_ctr_reg[11]_i_1_n_4\,
      O(2) => \addr_ctr_reg[11]_i_1_n_5\,
      O(1) => \addr_ctr_reg[11]_i_1_n_6\,
      O(0) => \addr_ctr_reg[11]_i_1_n_7\,
      S(3) => \addr_ctr[11]_i_2_n_0\,
      S(2) => \addr_ctr[11]_i_3_n_0\,
      S(1) => \addr_ctr[11]_i_4_n_0\,
      S(0) => \addr_ctr[11]_i_5_n_0\
    );
\addr_ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => lrclk_o,
      CE => dds_enable_i,
      D => \addr_ctr_reg[3]_i_1_n_6\,
      Q => \addr_ctr_reg_n_0_[1]\,
      R => dds_reset_i
    );
\addr_ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => lrclk_o,
      CE => dds_enable_i,
      D => \addr_ctr_reg[3]_i_1_n_5\,
      Q => \addr_ctr_reg_n_0_[2]\,
      R => dds_reset_i
    );
\addr_ctr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => lrclk_o,
      CE => dds_enable_i,
      D => \addr_ctr_reg[3]_i_1_n_4\,
      Q => \addr_ctr_reg_n_0_[3]\,
      R => dds_reset_i
    );
\addr_ctr_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \addr_ctr_reg[3]_i_1_n_0\,
      CO(2) => \addr_ctr_reg[3]_i_1_n_1\,
      CO(1) => \addr_ctr_reg[3]_i_1_n_2\,
      CO(0) => \addr_ctr_reg[3]_i_1_n_3\,
      CYINIT => '1',
      DI(3) => \addr_ctr_reg_n_0_[3]\,
      DI(2) => \addr_ctr_reg_n_0_[2]\,
      DI(1) => \addr_ctr_reg_n_0_[1]\,
      DI(0) => \addr_ctr_reg_n_0_[0]\,
      O(3) => \addr_ctr_reg[3]_i_1_n_4\,
      O(2) => \addr_ctr_reg[3]_i_1_n_5\,
      O(1) => \addr_ctr_reg[3]_i_1_n_6\,
      O(0) => \addr_ctr_reg[3]_i_1_n_7\,
      S(3) => \addr_ctr[3]_i_2_n_0\,
      S(2) => \addr_ctr[3]_i_3_n_0\,
      S(1) => \addr_ctr[3]_i_4_n_0\,
      S(0) => \addr_ctr[3]_i_5_n_0\
    );
\addr_ctr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => lrclk_o,
      CE => dds_enable_i,
      D => \addr_ctr_reg[7]_i_1_n_7\,
      Q => \addr_ctr_reg_n_0_[4]\,
      R => dds_reset_i
    );
\addr_ctr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => lrclk_o,
      CE => dds_enable_i,
      D => \addr_ctr_reg[7]_i_1_n_6\,
      Q => \addr_ctr_reg_n_0_[5]\,
      R => dds_reset_i
    );
\addr_ctr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => lrclk_o,
      CE => dds_enable_i,
      D => \addr_ctr_reg[7]_i_1_n_5\,
      Q => \addr_ctr_reg_n_0_[6]\,
      R => dds_reset_i
    );
\addr_ctr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => lrclk_o,
      CE => dds_enable_i,
      D => \addr_ctr_reg[7]_i_1_n_4\,
      Q => \addr_ctr_reg_n_0_[7]\,
      R => dds_reset_i
    );
\addr_ctr_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_ctr_reg[3]_i_1_n_0\,
      CO(3) => \addr_ctr_reg[7]_i_1_n_0\,
      CO(2) => \addr_ctr_reg[7]_i_1_n_1\,
      CO(1) => \addr_ctr_reg[7]_i_1_n_2\,
      CO(0) => \addr_ctr_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \addr_ctr_reg_n_0_[7]\,
      DI(2) => \addr_ctr_reg_n_0_[6]\,
      DI(1) => \addr_ctr_reg_n_0_[5]\,
      DI(0) => \addr_ctr_reg_n_0_[4]\,
      O(3) => \addr_ctr_reg[7]_i_1_n_4\,
      O(2) => \addr_ctr_reg[7]_i_1_n_5\,
      O(1) => \addr_ctr_reg[7]_i_1_n_6\,
      O(0) => \addr_ctr_reg[7]_i_1_n_7\,
      S(3) => \addr_ctr[7]_i_2_n_0\,
      S(2) => \addr_ctr[7]_i_3_n_0\,
      S(1) => \addr_ctr[7]_i_4_n_0\,
      S(0) => \addr_ctr[7]_i_5_n_0\
    );
\addr_ctr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => lrclk_o,
      CE => dds_enable_i,
      D => \addr_ctr_reg[11]_i_1_n_7\,
      Q => \addr_ctr_reg_n_0_[8]\,
      R => dds_reset_i
    );
\addr_ctr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => lrclk_o,
      CE => dds_enable_i,
      D => \addr_ctr_reg[11]_i_1_n_6\,
      Q => \addr_ctr_reg_n_0_[9]\,
      R => dds_reset_i
    );
blk_mem_left: entity work.\axi_stream_bd_axis_i2s_wrapper_0_0_blk_mem_gen_0__2\
     port map (
      addra(11) => \addr_ctr_reg_n_0_[11]\,
      addra(10) => \addr_ctr_reg_n_0_[10]\,
      addra(9) => \addr_ctr_reg_n_0_[9]\,
      addra(8) => \addr_ctr_reg_n_0_[8]\,
      addra(7) => \addr_ctr_reg_n_0_[7]\,
      addra(6) => \addr_ctr_reg_n_0_[6]\,
      addra(5) => \addr_ctr_reg_n_0_[5]\,
      addra(4) => \addr_ctr_reg_n_0_[4]\,
      addra(3) => \addr_ctr_reg_n_0_[3]\,
      addra(2) => \addr_ctr_reg_n_0_[2]\,
      addra(1) => \addr_ctr_reg_n_0_[1]\,
      addra(0) => \addr_ctr_reg_n_0_[0]\,
      clka => lrclk_o,
      douta(23 downto 0) => dbg_left_audio_rx_o(23 downto 0),
      ena => dds_enable_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_stream_bd_axis_i2s_wrapper_0_0_axi_dds is
  port (
    dbg_left_audio_rx_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    dbg_right_audio_rx_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    axi_awready_reg : out STD_LOGIC;
    axi_wready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    lrclk_o : in STD_LOGIC;
    dds_enable_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dds_reset_i : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_stream_bd_axis_i2s_wrapper_0_0_axi_dds : entity is "axi_dds";
end axi_stream_bd_axis_i2s_wrapper_0_0_axi_dds;

architecture STRUCTURE of axi_stream_bd_axis_i2s_wrapper_0_0_axi_dds is
  signal left_dds_phase_incr_o : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal right_dds_phase_incr_o : STD_LOGIC_VECTOR ( 11 downto 0 );
begin
engs128_axi_dds_S00_AXI_inst: entity work.axi_stream_bd_axis_i2s_wrapper_0_0_engs128_axi_dds_S00_AXI
     port map (
      Q(11 downto 0) => left_dds_phase_incr_o(11 downto 0),
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_wready_reg_0 => axi_wready_reg,
      \right_dds_phase_incr_o_reg[11]_0\(11 downto 0) => right_dds_phase_incr_o(11 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
left_audio_dds: entity work.\axi_stream_bd_axis_i2s_wrapper_0_0_dds_controller__xdcDup__1\
     port map (
      Q(11 downto 0) => left_dds_phase_incr_o(11 downto 0),
      dbg_left_audio_rx_o(23 downto 0) => dbg_left_audio_rx_o(23 downto 0),
      dds_enable_i => dds_enable_i,
      dds_reset_i => dds_reset_i,
      lrclk_o => lrclk_o
    );
right_audio_dds: entity work.axi_stream_bd_axis_i2s_wrapper_0_0_dds_controller
     port map (
      \addr_ctr_reg[11]_0\(11 downto 0) => right_dds_phase_incr_o(11 downto 0),
      dbg_right_audio_rx_o(23 downto 0) => dbg_right_audio_rx_o(23 downto 0),
      dds_enable_i => dds_enable_i,
      dds_reset_i => dds_reset_i,
      lrclk_o => lrclk_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_stream_bd_axis_i2s_wrapper_0_0_axis_i2s_wrapper is
  port (
    sysclk_i : in STD_LOGIC;
    ac_mute_en_i : in STD_LOGIC;
    dds_reset_i : in STD_LOGIC;
    dds_enable_i : in STD_LOGIC;
    ac_bclk_o : out STD_LOGIC;
    ac_mclk_o : out STD_LOGIC;
    ac_mute_n_o : out STD_LOGIC;
    ac_dac_data_o : out STD_LOGIC;
    ac_dac_lrclk_o : out STD_LOGIC;
    ac_adc_lrclk_o : out STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    dbg_left_audio_rx_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    dbg_left_audio_tx_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    dbg_right_audio_rx_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    dbg_right_audio_tx_o : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute AC_DATA_WIDTH : integer;
  attribute AC_DATA_WIDTH of axi_stream_bd_axis_i2s_wrapper_0_0_axis_i2s_wrapper : entity is 24;
  attribute C_AXI_STREAM_DATA_WIDTH : integer;
  attribute C_AXI_STREAM_DATA_WIDTH of axi_stream_bd_axis_i2s_wrapper_0_0_axis_i2s_wrapper : entity is 32;
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of axi_stream_bd_axis_i2s_wrapper_0_0_axis_i2s_wrapper : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_stream_bd_axis_i2s_wrapper_0_0_axis_i2s_wrapper : entity is "axis_i2s_wrapper";
  attribute PHASE_DATA_WIDTH : integer;
  attribute PHASE_DATA_WIDTH of axi_stream_bd_axis_i2s_wrapper_0_0_axis_i2s_wrapper : entity is 12;
end axi_stream_bd_axis_i2s_wrapper_0_0_axis_i2s_wrapper;

architecture STRUCTURE of axi_stream_bd_axis_i2s_wrapper_0_0_axis_i2s_wrapper is
  signal \<const0>\ : STD_LOGIC;
  signal ac_mute_n_o_i_1_n_0 : STD_LOGIC;
  signal bclk_o : STD_LOGIC;
  signal curr_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^dbg_left_audio_rx_o\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^dbg_right_audio_rx_o\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal input_data : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal lrclk_o : STD_LOGIC;
  signal \^m00_axis_tdata\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal mclk_o : STD_LOGIC;
begin
  dbg_left_audio_rx_o(23 downto 0) <= \^dbg_left_audio_rx_o\(23 downto 0);
  dbg_right_audio_rx_o(23 downto 0) <= \^dbg_right_audio_rx_o\(23 downto 0);
  m00_axis_tdata(31 downto 8) <= \^m00_axis_tdata\(31 downto 8);
  m00_axis_tdata(7) <= \<const0>\;
  m00_axis_tdata(6) <= \<const0>\;
  m00_axis_tdata(5) <= \<const0>\;
  m00_axis_tdata(4) <= \<const0>\;
  m00_axis_tdata(3) <= \<const0>\;
  m00_axis_tdata(2) <= \<const0>\;
  m00_axis_tdata(1) <= \<const0>\;
  m00_axis_tdata(0) <= \<const0>\;
  m00_axis_tlast <= \<const0>\;
  m00_axis_tstrb(3) <= \<const0>\;
  m00_axis_tstrb(2) <= \<const0>\;
  m00_axis_tstrb(1) <= \<const0>\;
  m00_axis_tstrb(0) <= \<const0>\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
ac_mute_n_o_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ac_mute_en_i,
      O => ac_mute_n_o_i_1_n_0
    );
ac_mute_n_o_reg: unisim.vcomponents.FDRE
     port map (
      C => mclk_o,
      CE => '1',
      D => ac_mute_n_o_i_1_n_0,
      Q => ac_mute_n_o,
      R => '0'
    );
axi_receiver: entity work.axi_stream_bd_axis_i2s_wrapper_0_0_axis_receiver
     port map (
      D(23 downto 0) => input_data(23 downto 0),
      curr_state(1 downto 0) => curr_state(1 downto 0),
      dbg_left_audio_tx_o(23 downto 0) => dbg_left_audio_tx_o(23 downto 0),
      dbg_right_audio_tx_o(23 downto 0) => dbg_right_audio_tx_o(23 downto 0),
      lrclk_o => lrclk_o,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tdata(23 downto 0) => s00_axis_tdata(31 downto 8),
      s00_axis_tready => s00_axis_tready,
      s00_axis_tvalid => s00_axis_tvalid
    );
axi_transmitter: entity work.axi_stream_bd_axis_i2s_wrapper_0_0_axis_transmitter
     port map (
      dbg_left_audio_rx_o(23 downto 0) => \^dbg_left_audio_rx_o\(23 downto 0),
      dbg_right_audio_rx_o(23 downto 0) => \^dbg_right_audio_rx_o\(23 downto 0),
      lrclk_o => lrclk_o,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tdata(23 downto 0) => \^m00_axis_tdata\(31 downto 8),
      m00_axis_tready => m00_axis_tready,
      m00_axis_tvalid => m00_axis_tvalid
    );
axis_dds: entity work.axi_stream_bd_axis_i2s_wrapper_0_0_axi_dds
     port map (
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_wready_reg => s00_axi_wready,
      dbg_left_audio_rx_o(23 downto 0) => \^dbg_left_audio_rx_o\(23 downto 0),
      dbg_right_audio_rx_o(23 downto 0) => \^dbg_right_audio_rx_o\(23 downto 0),
      dds_enable_i => dds_enable_i,
      dds_reset_i => dds_reset_i,
      lrclk_o => lrclk_o,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
clock_generation: entity work.axi_stream_bd_axis_i2s_wrapper_0_0_i2s_clock_gen
     port map (
      ac_adc_lrclk_o => ac_adc_lrclk_o,
      ac_bclk_o => ac_bclk_o,
      ac_dac_lrclk_o => ac_dac_lrclk_o,
      ac_mclk_o => ac_mclk_o,
      bclk_o => bclk_o,
      lrclk_o => lrclk_o,
      mclk_o => mclk_o,
      sysclk_i => sysclk_i
    );
transmitter: entity work.axi_stream_bd_axis_i2s_wrapper_0_0_i2s_transmitter
     port map (
      CLK => bclk_o,
      D(23 downto 0) => input_data(23 downto 0),
      \FSM_sequential_curr_state_reg[1]_0\(1 downto 0) => curr_state(1 downto 0),
      ac_dac_data_o => ac_dac_data_o,
      lrclk_o => lrclk_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_stream_bd_axis_i2s_wrapper_0_0 is
  port (
    sysclk_i : in STD_LOGIC;
    ac_mute_en_i : in STD_LOGIC;
    dds_reset_i : in STD_LOGIC;
    dds_enable_i : in STD_LOGIC;
    ac_bclk_o : out STD_LOGIC;
    ac_mclk_o : out STD_LOGIC;
    ac_mute_n_o : out STD_LOGIC;
    ac_dac_data_o : out STD_LOGIC;
    ac_dac_lrclk_o : out STD_LOGIC;
    ac_adc_lrclk_o : out STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    dbg_left_audio_rx_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    dbg_left_audio_tx_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    dbg_right_audio_rx_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    dbg_right_audio_tx_o : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of axi_stream_bd_axis_i2s_wrapper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axi_stream_bd_axis_i2s_wrapper_0_0 : entity is "axi_stream_bd_axis_i2s_wrapper_0_0,axis_i2s_wrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of axi_stream_bd_axis_i2s_wrapper_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of axi_stream_bd_axis_i2s_wrapper_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of axi_stream_bd_axis_i2s_wrapper_0_0 : entity is "axis_i2s_wrapper,Vivado 2021.2";
end axi_stream_bd_axis_i2s_wrapper_0_0;

architecture STRUCTURE of axi_stream_bd_axis_i2s_wrapper_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^m00_axis_tdata\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_inst_m00_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m00_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m00_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s00_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s00_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute AC_DATA_WIDTH : integer;
  attribute AC_DATA_WIDTH of inst : label is 24;
  attribute C_AXI_STREAM_DATA_WIDTH : integer;
  attribute C_AXI_STREAM_DATA_WIDTH of inst : label is 32;
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of inst : label is 4;
  attribute PHASE_DATA_WIDTH : integer;
  attribute PHASE_DATA_WIDTH of inst : label is 12;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 m00_axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m00_axis_aclk : signal is "XIL_INTERFACENAME m00_axis_aclk, ASSOCIATED_BUSIF m00_axis, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN axi_stream_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 m00_axis_aresetn RST";
  attribute X_INTERFACE_PARAMETER of m00_axis_aresetn : signal is "XIL_INTERFACENAME m00_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m00_axis TLAST";
  attribute X_INTERFACE_INFO of m00_axis_tready : signal is "xilinx.com:interface:axis:1.0 m00_axis TREADY";
  attribute X_INTERFACE_PARAMETER of m00_axis_tready : signal is "XIL_INTERFACENAME m00_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN axi_stream_bd_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m00_axis TVALID";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN axi_stream_bd_s_axi_aclk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s00_axi BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s00_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN axi_stream_bd_s_axi_aclk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s00_axi WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi WVALID";
  attribute X_INTERFACE_INFO of s00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s00_axis_aclk : signal is "XIL_INTERFACENAME s00_axis_aclk, ASSOCIATED_BUSIF s00_axis, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN axi_stream_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 s00_axis_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s00_axis_aresetn : signal is "XIL_INTERFACENAME s00_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s00_axis TLAST";
  attribute X_INTERFACE_INFO of s00_axis_tready : signal is "xilinx.com:interface:axis:1.0 s00_axis TREADY";
  attribute X_INTERFACE_INFO of s00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s00_axis TVALID";
  attribute X_INTERFACE_PARAMETER of s00_axis_tvalid : signal is "XIL_INTERFACENAME s00_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN axi_stream_bd_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m00_axis TDATA";
  attribute X_INTERFACE_INFO of m00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 m00_axis TSTRB";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s00_axi WSTRB";
  attribute X_INTERFACE_INFO of s00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s00_axis TDATA";
  attribute X_INTERFACE_INFO of s00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 s00_axis TSTRB";
begin
  m00_axis_tdata(31 downto 8) <= \^m00_axis_tdata\(31 downto 8);
  m00_axis_tdata(7) <= \<const0>\;
  m00_axis_tdata(6) <= \<const0>\;
  m00_axis_tdata(5) <= \<const0>\;
  m00_axis_tdata(4) <= \<const0>\;
  m00_axis_tdata(3) <= \<const0>\;
  m00_axis_tdata(2) <= \<const0>\;
  m00_axis_tdata(1) <= \<const0>\;
  m00_axis_tdata(0) <= \<const0>\;
  m00_axis_tlast <= \<const0>\;
  m00_axis_tstrb(3) <= \<const0>\;
  m00_axis_tstrb(2) <= \<const0>\;
  m00_axis_tstrb(1) <= \<const0>\;
  m00_axis_tstrb(0) <= \<const0>\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.axi_stream_bd_axis_i2s_wrapper_0_0_axis_i2s_wrapper
     port map (
      ac_adc_lrclk_o => ac_adc_lrclk_o,
      ac_bclk_o => ac_bclk_o,
      ac_dac_data_o => ac_dac_data_o,
      ac_dac_lrclk_o => ac_dac_lrclk_o,
      ac_mclk_o => ac_mclk_o,
      ac_mute_en_i => ac_mute_en_i,
      ac_mute_n_o => ac_mute_n_o,
      dbg_left_audio_rx_o(23 downto 0) => dbg_left_audio_rx_o(23 downto 0),
      dbg_left_audio_tx_o(23 downto 0) => dbg_left_audio_tx_o(23 downto 0),
      dbg_right_audio_rx_o(23 downto 0) => dbg_right_audio_rx_o(23 downto 0),
      dbg_right_audio_tx_o(23 downto 0) => dbg_right_audio_tx_o(23 downto 0),
      dds_enable_i => dds_enable_i,
      dds_reset_i => dds_reset_i,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tdata(31 downto 8) => \^m00_axis_tdata\(31 downto 8),
      m00_axis_tdata(7 downto 0) => NLW_inst_m00_axis_tdata_UNCONNECTED(7 downto 0),
      m00_axis_tlast => NLW_inst_m00_axis_tlast_UNCONNECTED,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tstrb(3 downto 0) => NLW_inst_m00_axis_tstrb_UNCONNECTED(3 downto 0),
      m00_axis_tvalid => m00_axis_tvalid,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(3 downto 2) => s00_axi_araddr(3 downto 2),
      s00_axi_araddr(1 downto 0) => B"00",
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arprot(2 downto 0) => B"000",
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(3 downto 2) => s00_axi_awaddr(3 downto 2),
      s00_axi_awaddr(1 downto 0) => B"00",
      s00_axi_awprot(2 downto 0) => B"000",
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bresp(1 downto 0) => NLW_inst_s00_axi_bresp_UNCONNECTED(1 downto 0),
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rresp(1 downto 0) => NLW_inst_s00_axi_rresp_UNCONNECTED(1 downto 0),
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tdata(31 downto 8) => s00_axis_tdata(31 downto 8),
      s00_axis_tdata(7 downto 0) => B"00000000",
      s00_axis_tlast => '0',
      s00_axis_tready => s00_axis_tready,
      s00_axis_tstrb(3 downto 0) => B"0000",
      s00_axis_tvalid => s00_axis_tvalid,
      sysclk_i => sysclk_i
    );
end STRUCTURE;
