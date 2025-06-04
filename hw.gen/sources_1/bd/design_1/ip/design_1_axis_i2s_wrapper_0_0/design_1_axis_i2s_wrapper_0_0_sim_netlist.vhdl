-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Wed Jun  4 03:35:43 2025
-- Host        : m210-17 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               o:/ENGS128/james_vers_final/hw.gen/sources_1/bd/design_1/ip/design_1_axis_i2s_wrapper_0_0/design_1_axis_i2s_wrapper_0_0_sim_netlist.vhdl
-- Design      : design_1_axis_i2s_wrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_i2s_wrapper_0_0_axis_transmitter is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 24 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    lrclk_temp1_reg_0 : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \Ltemp1_reg[31]_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_i2s_wrapper_0_0_axis_transmitter : entity is "axis_transmitter";
end design_1_axis_i2s_wrapper_0_0_axis_transmitter;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0_axis_transmitter is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_curr_state[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state[2]_i_1__1_n_0\ : STD_LOGIC;
  signal Ltemp1 : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal Ltemp2 : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal Rtemp1 : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal Rtemp2 : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal curr_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal lrclk_temp1 : STD_LOGIC;
  signal lrclk_temp2 : STD_LOGIC;
  signal \m00_axis_tdata[0]_i_1_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[1]_i_1__1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[0]\ : label is "ltransmit:001,hold:100,rtransmit:010,readyout:011,idle:000,iSTATE:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[1]\ : label is "ltransmit:001,hold:100,rtransmit:010,readyout:011,idle:000,iSTATE:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[2]\ : label is "ltransmit:001,hold:100,rtransmit:010,readyout:011,idle:000,iSTATE:101";
  attribute SOFT_HLUTNM of \m00_axis_tdata[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m00_axis_tdata[31]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m00_axis_tlast__0\ : label is "soft_lutpair0";
begin
  E(0) <= \^e\(0);
\FSM_sequential_curr_state[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000001B001800"
    )
        port map (
      I0 => m00_axis_tready,
      I1 => curr_state(1),
      I2 => curr_state(0),
      I3 => m00_axis_aresetn,
      I4 => lrclk_temp2,
      I5 => curr_state(2),
      O => \FSM_sequential_curr_state[0]_i_1__1_n_0\
    );
\FSM_sequential_curr_state[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002C00"
    )
        port map (
      I0 => m00_axis_tready,
      I1 => curr_state(1),
      I2 => curr_state(0),
      I3 => m00_axis_aresetn,
      I4 => curr_state(2),
      O => \FSM_sequential_curr_state[1]_i_1__1_n_0\
    );
\FSM_sequential_curr_state[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10008888"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => m00_axis_aresetn,
      I3 => lrclk_temp2,
      I4 => curr_state(2),
      O => \FSM_sequential_curr_state[2]_i_1__1_n_0\
    );
\FSM_sequential_curr_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \FSM_sequential_curr_state[0]_i_1__1_n_0\,
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
      D => \FSM_sequential_curr_state[1]_i_1__1_n_0\,
      Q => curr_state(1),
      R => '0'
    );
\FSM_sequential_curr_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \FSM_sequential_curr_state[2]_i_1__1_n_0\,
      Q => curr_state(2),
      R => '0'
    );
\Ltemp1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \Ltemp1_reg[31]_0\(2),
      Q => Ltemp1(10),
      R => '0'
    );
\Ltemp1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \Ltemp1_reg[31]_0\(3),
      Q => Ltemp1(11),
      R => '0'
    );
\Ltemp1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \Ltemp1_reg[31]_0\(4),
      Q => Ltemp1(12),
      R => '0'
    );
\Ltemp1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \Ltemp1_reg[31]_0\(5),
      Q => Ltemp1(13),
      R => '0'
    );
\Ltemp1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \Ltemp1_reg[31]_0\(6),
      Q => Ltemp1(14),
      R => '0'
    );
\Ltemp1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \Ltemp1_reg[31]_0\(7),
      Q => Ltemp1(15),
      R => '0'
    );
\Ltemp1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \Ltemp1_reg[31]_0\(8),
      Q => Ltemp1(16),
      R => '0'
    );
\Ltemp1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \Ltemp1_reg[31]_0\(9),
      Q => Ltemp1(17),
      R => '0'
    );
\Ltemp1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \Ltemp1_reg[31]_0\(10),
      Q => Ltemp1(18),
      R => '0'
    );
\Ltemp1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \Ltemp1_reg[31]_0\(11),
      Q => Ltemp1(19),
      R => '0'
    );
\Ltemp1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \Ltemp1_reg[31]_0\(12),
      Q => Ltemp1(20),
      R => '0'
    );
\Ltemp1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \Ltemp1_reg[31]_0\(13),
      Q => Ltemp1(21),
      R => '0'
    );
\Ltemp1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \Ltemp1_reg[31]_0\(14),
      Q => Ltemp1(22),
      R => '0'
    );
\Ltemp1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \Ltemp1_reg[31]_0\(15),
      Q => Ltemp1(23),
      R => '0'
    );
\Ltemp1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \Ltemp1_reg[31]_0\(16),
      Q => Ltemp1(24),
      R => '0'
    );
\Ltemp1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \Ltemp1_reg[31]_0\(17),
      Q => Ltemp1(25),
      R => '0'
    );
\Ltemp1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \Ltemp1_reg[31]_0\(18),
      Q => Ltemp1(26),
      R => '0'
    );
\Ltemp1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \Ltemp1_reg[31]_0\(19),
      Q => Ltemp1(27),
      R => '0'
    );
\Ltemp1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \Ltemp1_reg[31]_0\(20),
      Q => Ltemp1(28),
      R => '0'
    );
\Ltemp1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \Ltemp1_reg[31]_0\(21),
      Q => Ltemp1(29),
      R => '0'
    );
\Ltemp1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \Ltemp1_reg[31]_0\(22),
      Q => Ltemp1(30),
      R => '0'
    );
\Ltemp1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \Ltemp1_reg[31]_0\(23),
      Q => Ltemp1(31),
      R => '0'
    );
\Ltemp1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \Ltemp1_reg[31]_0\(0),
      Q => Ltemp1(8),
      R => '0'
    );
\Ltemp1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \Ltemp1_reg[31]_0\(1),
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
      D => Q(2),
      Q => Rtemp1(10),
      R => '0'
    );
\Rtemp1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(3),
      Q => Rtemp1(11),
      R => '0'
    );
\Rtemp1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(4),
      Q => Rtemp1(12),
      R => '0'
    );
\Rtemp1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(5),
      Q => Rtemp1(13),
      R => '0'
    );
\Rtemp1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(6),
      Q => Rtemp1(14),
      R => '0'
    );
\Rtemp1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(7),
      Q => Rtemp1(15),
      R => '0'
    );
\Rtemp1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(8),
      Q => Rtemp1(16),
      R => '0'
    );
\Rtemp1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(9),
      Q => Rtemp1(17),
      R => '0'
    );
\Rtemp1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(10),
      Q => Rtemp1(18),
      R => '0'
    );
\Rtemp1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(11),
      Q => Rtemp1(19),
      R => '0'
    );
\Rtemp1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(12),
      Q => Rtemp1(20),
      R => '0'
    );
\Rtemp1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(13),
      Q => Rtemp1(21),
      R => '0'
    );
\Rtemp1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(14),
      Q => Rtemp1(22),
      R => '0'
    );
\Rtemp1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(15),
      Q => Rtemp1(23),
      R => '0'
    );
\Rtemp1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(16),
      Q => Rtemp1(24),
      R => '0'
    );
\Rtemp1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(17),
      Q => Rtemp1(25),
      R => '0'
    );
\Rtemp1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(18),
      Q => Rtemp1(26),
      R => '0'
    );
\Rtemp1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(19),
      Q => Rtemp1(27),
      R => '0'
    );
\Rtemp1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(20),
      Q => Rtemp1(28),
      R => '0'
    );
\Rtemp1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(21),
      Q => Rtemp1(29),
      R => '0'
    );
\Rtemp1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(22),
      Q => Rtemp1(30),
      R => '0'
    );
\Rtemp1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(23),
      Q => Rtemp1(31),
      R => '0'
    );
\Rtemp1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(0),
      Q => Rtemp1(8),
      R => '0'
    );
\Rtemp1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => Q(1),
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
      D => lrclk_temp1_reg_0,
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
\m00_axis_tdata[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      O => \m00_axis_tdata[0]_i_1_n_0\
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
\m00_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \^e\(0),
      D => \m00_axis_tdata[0]_i_1_n_0\,
      Q => m00_axis_tdata(0),
      R => '0'
    );
\m00_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \^e\(0),
      D => \m00_axis_tdata[10]_i_1_n_0\,
      Q => m00_axis_tdata(3),
      R => '0'
    );
\m00_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \^e\(0),
      D => \m00_axis_tdata[11]_i_1_n_0\,
      Q => m00_axis_tdata(4),
      R => '0'
    );
\m00_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \^e\(0),
      D => \m00_axis_tdata[12]_i_1_n_0\,
      Q => m00_axis_tdata(5),
      R => '0'
    );
\m00_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \^e\(0),
      D => \m00_axis_tdata[13]_i_1_n_0\,
      Q => m00_axis_tdata(6),
      R => '0'
    );
\m00_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \^e\(0),
      D => \m00_axis_tdata[14]_i_1_n_0\,
      Q => m00_axis_tdata(7),
      R => '0'
    );
\m00_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \^e\(0),
      D => \m00_axis_tdata[15]_i_1_n_0\,
      Q => m00_axis_tdata(8),
      R => '0'
    );
\m00_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \^e\(0),
      D => \m00_axis_tdata[16]_i_1_n_0\,
      Q => m00_axis_tdata(9),
      R => '0'
    );
\m00_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \^e\(0),
      D => \m00_axis_tdata[17]_i_1_n_0\,
      Q => m00_axis_tdata(10),
      R => '0'
    );
\m00_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \^e\(0),
      D => \m00_axis_tdata[18]_i_1_n_0\,
      Q => m00_axis_tdata(11),
      R => '0'
    );
\m00_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \^e\(0),
      D => \m00_axis_tdata[19]_i_1_n_0\,
      Q => m00_axis_tdata(12),
      R => '0'
    );
\m00_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \^e\(0),
      D => \m00_axis_tdata[20]_i_1_n_0\,
      Q => m00_axis_tdata(13),
      R => '0'
    );
\m00_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \^e\(0),
      D => \m00_axis_tdata[21]_i_1_n_0\,
      Q => m00_axis_tdata(14),
      R => '0'
    );
\m00_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \^e\(0),
      D => \m00_axis_tdata[22]_i_1_n_0\,
      Q => m00_axis_tdata(15),
      R => '0'
    );
\m00_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \^e\(0),
      D => \m00_axis_tdata[23]_i_1_n_0\,
      Q => m00_axis_tdata(16),
      R => '0'
    );
\m00_axis_tdata_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \^e\(0),
      D => \m00_axis_tdata[24]_i_1_n_0\,
      Q => m00_axis_tdata(17),
      R => '0'
    );
\m00_axis_tdata_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \^e\(0),
      D => \m00_axis_tdata[25]_i_1_n_0\,
      Q => m00_axis_tdata(18),
      R => '0'
    );
\m00_axis_tdata_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \^e\(0),
      D => \m00_axis_tdata[26]_i_1_n_0\,
      Q => m00_axis_tdata(19),
      R => '0'
    );
\m00_axis_tdata_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \^e\(0),
      D => \m00_axis_tdata[27]_i_1_n_0\,
      Q => m00_axis_tdata(20),
      R => '0'
    );
\m00_axis_tdata_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \^e\(0),
      D => \m00_axis_tdata[28]_i_1_n_0\,
      Q => m00_axis_tdata(21),
      R => '0'
    );
\m00_axis_tdata_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \^e\(0),
      D => \m00_axis_tdata[29]_i_1_n_0\,
      Q => m00_axis_tdata(22),
      R => '0'
    );
\m00_axis_tdata_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \^e\(0),
      D => \m00_axis_tdata[30]_i_1_n_0\,
      Q => m00_axis_tdata(23),
      R => '0'
    );
\m00_axis_tdata_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \^e\(0),
      D => \m00_axis_tdata[31]_i_1_n_0\,
      Q => m00_axis_tdata(24),
      R => '0'
    );
\m00_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \^e\(0),
      D => \m00_axis_tdata[8]_i_1_n_0\,
      Q => m00_axis_tdata(1),
      R => '0'
    );
\m00_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \^e\(0),
      D => \m00_axis_tdata[9]_i_1_n_0\,
      Q => m00_axis_tdata(2),
      R => '0'
    );
\m00_axis_tlast__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      O => m00_axis_tlast
    );
m00_axis_tvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => curr_state(2),
      O => \^e\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_i2s_wrapper_0_0_clk_wiz_0_clk_wiz is
  port (
    mclk_o : out STD_LOGIC;
    sysclk_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_i2s_wrapper_0_0_clk_wiz_0_clk_wiz : entity is "clk_wiz_0_clk_wiz";
end design_1_axis_i2s_wrapper_0_0_clk_wiz_0_clk_wiz;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0_clk_wiz_0_clk_wiz is
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
entity design_1_axis_i2s_wrapper_0_0_clock_divider is
  port (
    bclk_o : out STD_LOGIC;
    mclk_o : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_i2s_wrapper_0_0_clock_divider : entity is "clock_divider";
end design_1_axis_i2s_wrapper_0_0_clock_divider;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0_clock_divider is
  signal I : STD_LOGIC;
  signal \clock_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \unbuffered_clk_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clock_counter[0]_i_1\ : label is "soft_lutpair30";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of slow_clock_bufg : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \unbuffered_clk_i_1__0\ : label is "soft_lutpair30";
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
entity design_1_axis_i2s_wrapper_0_0_clock_divider_falling_edge is
  port (
    slow_clock_bufg_0 : out STD_LOGIC;
    \clock_counter_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_i2s_wrapper_0_0_clock_divider_falling_edge : entity is "clock_divider_falling_edge";
end design_1_axis_i2s_wrapper_0_0_clock_divider_falling_edge;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0_clock_divider_falling_edge is
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
  attribute SOFT_HLUTNM of \clock_counter[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \clock_counter[2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \clock_counter[3]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \clock_counter[4]_i_2\ : label is "soft_lutpair28";
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
      O => slow_clock_bufg_0
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
entity design_1_axis_i2s_wrapper_0_0_counter is
  port (
    \FSM_sequential_curr_state_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_curr_state_reg[2]_0\ : out STD_LOGIC;
    \count_int_reg[0]_0\ : in STD_LOGIC;
    \count_int_reg[0]_1\ : in STD_LOGIC;
    curr_state : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_curr_state_reg[0]\ : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_i2s_wrapper_0_0_counter : entity is "counter";
end design_1_axis_i2s_wrapper_0_0_counter;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0_counter is
  signal count_int : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \count_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_int[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_int[4]_i_3__0_n_0\ : STD_LOGIC;
  signal counter_reset : STD_LOGIC;
  signal shift_en : STD_LOGIC;
  signal tc_o : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[0]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[2]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[2]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \count_int[0]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \count_int[1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \count_int[2]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \count_int[3]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \count_int[4]_i_3__0\ : label is "soft_lutpair35";
begin
\FSM_sequential_curr_state[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF2244CF"
    )
        port map (
      I0 => tc_o,
      I1 => curr_state(0),
      I2 => \FSM_sequential_curr_state_reg[0]\,
      I3 => \count_int_reg[0]_1\,
      I4 => \count_int_reg[0]_0\,
      O => \FSM_sequential_curr_state_reg[2]_0\
    );
\FSM_sequential_curr_state[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCC44CC"
    )
        port map (
      I0 => tc_o,
      I1 => curr_state(0),
      I2 => \FSM_sequential_curr_state_reg[0]\,
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
\count_int[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFF4000"
    )
        port map (
      I0 => count_int(4),
      I1 => count_int(0),
      I2 => count_int(1),
      I3 => count_int(2),
      I4 => count_int(3),
      O => \count_int[3]_i_1__0_n_0\
    );
\count_int[4]_i_1__0\: unisim.vcomponents.LUT3
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
\count_int[4]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA2AAA"
    )
        port map (
      I0 => count_int(4),
      I1 => count_int(0),
      I2 => count_int(1),
      I3 => count_int(2),
      I4 => count_int(3),
      O => \count_int[4]_i_3__0_n_0\
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
      D => \count_int[3]_i_1__0_n_0\,
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
      D => \count_int[4]_i_3__0_n_0\,
      Q => count_int(4),
      R => counter_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_i2s_wrapper_0_0_counter_0 is
  port (
    \FSM_sequential_curr_state_reg[0]\ : out STD_LOGIC;
    \FSM_sequential_curr_state_reg[0]_0\ : out STD_LOGIC;
    curr_state_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_curr_state_reg[0]_1\ : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_i2s_wrapper_0_0_counter_0 : entity is "counter";
end design_1_axis_i2s_wrapper_0_0_counter_0;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0_counter_0 is
  signal count_int : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \count_int[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_int[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_int[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_int[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_int[4]_i_3_n_0\ : STD_LOGIC;
  signal counter_reset : STD_LOGIC;
  signal tc_o : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[1]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \count_int[0]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \count_int[1]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \count_int[2]_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \count_int[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \count_int[4]_i_3\ : label is "soft_lutpair31";
begin
\FSM_sequential_curr_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A542AF47"
    )
        port map (
      I0 => curr_state_0(0),
      I1 => tc_o,
      I2 => curr_state_0(2),
      I3 => curr_state_0(1),
      I4 => \FSM_sequential_curr_state_reg[0]_1\,
      O => \FSM_sequential_curr_state_reg[0]_0\
    );
\FSM_sequential_curr_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F508FF08"
    )
        port map (
      I0 => curr_state_0(0),
      I1 => tc_o,
      I2 => curr_state_0(2),
      I3 => curr_state_0(1),
      I4 => \FSM_sequential_curr_state_reg[0]_1\,
      O => \FSM_sequential_curr_state_reg[0]\
    );
\FSM_sequential_curr_state[1]_i_2\: unisim.vcomponents.LUT5
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
\count_int[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_int(0),
      O => \count_int[0]_i_1__0_n_0\
    );
\count_int[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_int(0),
      I1 => count_int(1),
      O => \count_int[1]_i_1__0_n_0\
    );
\count_int[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count_int(0),
      I1 => count_int(1),
      I2 => count_int(2),
      O => \count_int[2]_i_1__0_n_0\
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
      INIT => X"4B"
    )
        port map (
      I0 => curr_state_0(1),
      I1 => curr_state_0(0),
      I2 => curr_state_0(2),
      O => counter_reset
    );
\count_int[4]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => curr_state_0(2),
      I1 => curr_state_0(0),
      I2 => curr_state_0(1),
      O => \count_int[4]_i_2__0_n_0\
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
      CE => \count_int[4]_i_2__0_n_0\,
      D => \count_int[0]_i_1__0_n_0\,
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
      CE => \count_int[4]_i_2__0_n_0\,
      D => \count_int[1]_i_1__0_n_0\,
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
      CE => \count_int[4]_i_2__0_n_0\,
      D => \count_int[2]_i_1__0_n_0\,
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
      CE => \count_int[4]_i_2__0_n_0\,
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
      CE => \count_int[4]_i_2__0_n_0\,
      D => \count_int[4]_i_3_n_0\,
      Q => count_int(4),
      R => counter_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_i2s_wrapper_0_0_engs128_axi_dds_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    left_dds_phase_inc_dbg_o : out STD_LOGIC_VECTOR ( 11 downto 0 );
    right_dds_phase_inc_dbg_o : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_i2s_wrapper_0_0_engs128_axi_dds_S00_AXI : entity is "engs128_axi_dds_S00_AXI";
end design_1_axis_i2s_wrapper_0_0_engs128_axi_dds_S00_AXI;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0_engs128_axi_dds_S00_AXI is
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
  attribute SOFT_HLUTNM of \axi_reg_lut[0][31]_i_2\ : label is "soft_lutpair2";
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
\axi_reg_lut[0][31]_i_2\: unisim.vcomponents.LUT4
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
      Q => left_dds_phase_inc_dbg_o(0),
      R => '0'
    );
\left_dds_phase_incr_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[0]\(10),
      Q => left_dds_phase_inc_dbg_o(10),
      R => '0'
    );
\left_dds_phase_incr_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[0]\(11),
      Q => left_dds_phase_inc_dbg_o(11),
      R => '0'
    );
\left_dds_phase_incr_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[0]\(1),
      Q => left_dds_phase_inc_dbg_o(1),
      R => '0'
    );
\left_dds_phase_incr_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[0]\(2),
      Q => left_dds_phase_inc_dbg_o(2),
      R => '0'
    );
\left_dds_phase_incr_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[0]\(3),
      Q => left_dds_phase_inc_dbg_o(3),
      R => '0'
    );
\left_dds_phase_incr_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[0]\(4),
      Q => left_dds_phase_inc_dbg_o(4),
      R => '0'
    );
\left_dds_phase_incr_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[0]\(5),
      Q => left_dds_phase_inc_dbg_o(5),
      R => '0'
    );
\left_dds_phase_incr_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[0]\(6),
      Q => left_dds_phase_inc_dbg_o(6),
      R => '0'
    );
\left_dds_phase_incr_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[0]\(7),
      Q => left_dds_phase_inc_dbg_o(7),
      R => '0'
    );
\left_dds_phase_incr_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[0]\(8),
      Q => left_dds_phase_inc_dbg_o(8),
      R => '0'
    );
\left_dds_phase_incr_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[0]\(9),
      Q => left_dds_phase_inc_dbg_o(9),
      R => '0'
    );
\right_dds_phase_incr_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[1]\(0),
      Q => right_dds_phase_inc_dbg_o(0),
      R => '0'
    );
\right_dds_phase_incr_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[1]\(10),
      Q => right_dds_phase_inc_dbg_o(10),
      R => '0'
    );
\right_dds_phase_incr_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[1]\(11),
      Q => right_dds_phase_inc_dbg_o(11),
      R => '0'
    );
\right_dds_phase_incr_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[1]\(1),
      Q => right_dds_phase_inc_dbg_o(1),
      R => '0'
    );
\right_dds_phase_incr_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[1]\(2),
      Q => right_dds_phase_inc_dbg_o(2),
      R => '0'
    );
\right_dds_phase_incr_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[1]\(3),
      Q => right_dds_phase_inc_dbg_o(3),
      R => '0'
    );
\right_dds_phase_incr_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[1]\(4),
      Q => right_dds_phase_inc_dbg_o(4),
      R => '0'
    );
\right_dds_phase_incr_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[1]\(5),
      Q => right_dds_phase_inc_dbg_o(5),
      R => '0'
    );
\right_dds_phase_incr_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[1]\(6),
      Q => right_dds_phase_inc_dbg_o(6),
      R => '0'
    );
\right_dds_phase_incr_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[1]\(7),
      Q => right_dds_phase_inc_dbg_o(7),
      R => '0'
    );
\right_dds_phase_incr_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[1]\(8),
      Q => right_dds_phase_inc_dbg_o(8),
      R => '0'
    );
\right_dds_phase_incr_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_reg_lut_reg[1]\(9),
      Q => right_dds_phase_inc_dbg_o(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_i2s_wrapper_0_0_shift_register is
  port (
    ac_dac_data_o : out STD_LOGIC;
    curr_state : in STD_LOGIC_VECTOR ( 0 to 0 );
    \shift_reg_reg[0]_0\ : in STD_LOGIC;
    \shift_reg_reg[0]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_i2s_wrapper_0_0_shift_register : entity is "shift_register";
end design_1_axis_i2s_wrapper_0_0_shift_register;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0_shift_register is
  signal \^ac_dac_data_o\ : STD_LOGIC;
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
  signal \shift_reg[23]_i_1__0_n_0\ : STD_LOGIC;
  signal \shift_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \shift_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[9]\ : STD_LOGIC;
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
      I4 => \shift_reg_reg_n_0_[9]\,
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
      I4 => \shift_reg_reg_n_0_[10]\,
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
      I4 => \shift_reg_reg_n_0_[11]\,
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
      I4 => \shift_reg_reg_n_0_[12]\,
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
      I4 => \shift_reg_reg_n_0_[13]\,
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
      I4 => \shift_reg_reg_n_0_[14]\,
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
      I4 => \shift_reg_reg_n_0_[15]\,
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
      I4 => \shift_reg_reg_n_0_[16]\,
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
      I4 => \shift_reg_reg_n_0_[17]\,
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
      I4 => \shift_reg_reg_n_0_[18]\,
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
      I4 => \shift_reg_reg_n_0_[0]\,
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
      I4 => \shift_reg_reg_n_0_[19]\,
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
      I4 => \shift_reg_reg_n_0_[20]\,
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
      I4 => \shift_reg_reg_n_0_[21]\,
      O => \shift_reg[22]_i_1_n_0\
    );
\shift_reg[23]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"36"
    )
        port map (
      I0 => curr_state(0),
      I1 => \shift_reg_reg[0]_0\,
      I2 => \shift_reg_reg[0]_1\,
      O => \shift_reg[23]_i_1__0_n_0\
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
      I4 => \shift_reg_reg_n_0_[22]\,
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
      I4 => \shift_reg_reg_n_0_[1]\,
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
      I4 => \shift_reg_reg_n_0_[2]\,
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
      I4 => \shift_reg_reg_n_0_[3]\,
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
      I4 => \shift_reg_reg_n_0_[4]\,
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
      I4 => \shift_reg_reg_n_0_[5]\,
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
      I4 => \shift_reg_reg_n_0_[6]\,
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
      I4 => \shift_reg_reg_n_0_[7]\,
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
      I4 => \shift_reg_reg_n_0_[8]\,
      O => \shift_reg[9]_i_1_n_0\
    );
\shift_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1__0_n_0\,
      D => \shift_reg[0]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[0]\,
      R => '0'
    );
\shift_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1__0_n_0\,
      D => \shift_reg[10]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[10]\,
      R => '0'
    );
\shift_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1__0_n_0\,
      D => \shift_reg[11]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[11]\,
      R => '0'
    );
\shift_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1__0_n_0\,
      D => \shift_reg[12]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[12]\,
      R => '0'
    );
\shift_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1__0_n_0\,
      D => \shift_reg[13]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[13]\,
      R => '0'
    );
\shift_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1__0_n_0\,
      D => \shift_reg[14]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[14]\,
      R => '0'
    );
\shift_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1__0_n_0\,
      D => \shift_reg[15]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[15]\,
      R => '0'
    );
\shift_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1__0_n_0\,
      D => \shift_reg[16]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[16]\,
      R => '0'
    );
\shift_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1__0_n_0\,
      D => \shift_reg[17]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[17]\,
      R => '0'
    );
\shift_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1__0_n_0\,
      D => \shift_reg[18]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[18]\,
      R => '0'
    );
\shift_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1__0_n_0\,
      D => \shift_reg[19]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[19]\,
      R => '0'
    );
\shift_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1__0_n_0\,
      D => \shift_reg[1]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[1]\,
      R => '0'
    );
\shift_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1__0_n_0\,
      D => \shift_reg[20]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[20]\,
      R => '0'
    );
\shift_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1__0_n_0\,
      D => \shift_reg[21]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[21]\,
      R => '0'
    );
\shift_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1__0_n_0\,
      D => \shift_reg[22]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[22]\,
      R => '0'
    );
\shift_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1__0_n_0\,
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
      CE => \shift_reg[23]_i_1__0_n_0\,
      D => \shift_reg[2]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[2]\,
      R => '0'
    );
\shift_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1__0_n_0\,
      D => \shift_reg[3]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[3]\,
      R => '0'
    );
\shift_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1__0_n_0\,
      D => \shift_reg[4]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[4]\,
      R => '0'
    );
\shift_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1__0_n_0\,
      D => \shift_reg[5]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[5]\,
      R => '0'
    );
\shift_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1__0_n_0\,
      D => \shift_reg[6]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[6]\,
      R => '0'
    );
\shift_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1__0_n_0\,
      D => \shift_reg[7]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[7]\,
      R => '0'
    );
\shift_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1__0_n_0\,
      D => \shift_reg[8]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[8]\,
      R => '0'
    );
\shift_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => \shift_reg[23]_i_1__0_n_0\,
      D => \shift_reg[9]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_i2s_wrapper_0_0_sipo_shift_register is
  port (
    Q : out STD_LOGIC_VECTOR ( 23 downto 0 );
    curr_state_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CLK : in STD_LOGIC;
    ac_adc_data_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_i2s_wrapper_0_0_sipo_shift_register : entity is "sipo_shift_register";
end design_1_axis_i2s_wrapper_0_0_sipo_shift_register;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0_sipo_shift_register is
  signal load_en : STD_LOGIC;
  signal shift_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal shift_reg_0 : STD_LOGIC;
begin
\data_o[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => curr_state_0(0),
      I1 => curr_state_0(1),
      I2 => curr_state_0(2),
      O => load_en
    );
\data_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => load_en,
      D => shift_reg(0),
      Q => Q(0),
      R => '0'
    );
\data_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => load_en,
      D => shift_reg(10),
      Q => Q(10),
      R => '0'
    );
\data_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => load_en,
      D => shift_reg(11),
      Q => Q(11),
      R => '0'
    );
\data_o_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => load_en,
      D => shift_reg(12),
      Q => Q(12),
      R => '0'
    );
\data_o_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => load_en,
      D => shift_reg(13),
      Q => Q(13),
      R => '0'
    );
\data_o_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => load_en,
      D => shift_reg(14),
      Q => Q(14),
      R => '0'
    );
\data_o_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => load_en,
      D => shift_reg(15),
      Q => Q(15),
      R => '0'
    );
\data_o_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => load_en,
      D => shift_reg(16),
      Q => Q(16),
      R => '0'
    );
\data_o_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => load_en,
      D => shift_reg(17),
      Q => Q(17),
      R => '0'
    );
\data_o_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => load_en,
      D => shift_reg(18),
      Q => Q(18),
      R => '0'
    );
\data_o_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => load_en,
      D => shift_reg(19),
      Q => Q(19),
      R => '0'
    );
\data_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => load_en,
      D => shift_reg(1),
      Q => Q(1),
      R => '0'
    );
\data_o_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => load_en,
      D => shift_reg(20),
      Q => Q(20),
      R => '0'
    );
\data_o_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => load_en,
      D => shift_reg(21),
      Q => Q(21),
      R => '0'
    );
\data_o_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => load_en,
      D => shift_reg(22),
      Q => Q(22),
      R => '0'
    );
\data_o_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => load_en,
      D => shift_reg(23),
      Q => Q(23),
      R => '0'
    );
\data_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => load_en,
      D => shift_reg(2),
      Q => Q(2),
      R => '0'
    );
\data_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => load_en,
      D => shift_reg(3),
      Q => Q(3),
      R => '0'
    );
\data_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => load_en,
      D => shift_reg(4),
      Q => Q(4),
      R => '0'
    );
\data_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => load_en,
      D => shift_reg(5),
      Q => Q(5),
      R => '0'
    );
\data_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => load_en,
      D => shift_reg(6),
      Q => Q(6),
      R => '0'
    );
\data_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => load_en,
      D => shift_reg(7),
      Q => Q(7),
      R => '0'
    );
\data_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => load_en,
      D => shift_reg(8),
      Q => Q(8),
      R => '0'
    );
\data_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => load_en,
      D => shift_reg(9),
      Q => Q(9),
      R => '0'
    );
\shift_reg[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => curr_state_0(2),
      I1 => curr_state_0(1),
      I2 => curr_state_0(0),
      O => shift_reg_0
    );
\shift_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_reg_0,
      D => ac_adc_data_i,
      Q => shift_reg(0),
      R => '0'
    );
\shift_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_reg_0,
      D => shift_reg(9),
      Q => shift_reg(10),
      R => '0'
    );
\shift_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_reg_0,
      D => shift_reg(10),
      Q => shift_reg(11),
      R => '0'
    );
\shift_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_reg_0,
      D => shift_reg(11),
      Q => shift_reg(12),
      R => '0'
    );
\shift_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_reg_0,
      D => shift_reg(12),
      Q => shift_reg(13),
      R => '0'
    );
\shift_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_reg_0,
      D => shift_reg(13),
      Q => shift_reg(14),
      R => '0'
    );
\shift_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_reg_0,
      D => shift_reg(14),
      Q => shift_reg(15),
      R => '0'
    );
\shift_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_reg_0,
      D => shift_reg(15),
      Q => shift_reg(16),
      R => '0'
    );
\shift_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_reg_0,
      D => shift_reg(16),
      Q => shift_reg(17),
      R => '0'
    );
\shift_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_reg_0,
      D => shift_reg(17),
      Q => shift_reg(18),
      R => '0'
    );
\shift_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_reg_0,
      D => shift_reg(18),
      Q => shift_reg(19),
      R => '0'
    );
\shift_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_reg_0,
      D => shift_reg(0),
      Q => shift_reg(1),
      R => '0'
    );
\shift_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_reg_0,
      D => shift_reg(19),
      Q => shift_reg(20),
      R => '0'
    );
\shift_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_reg_0,
      D => shift_reg(20),
      Q => shift_reg(21),
      R => '0'
    );
\shift_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_reg_0,
      D => shift_reg(21),
      Q => shift_reg(22),
      R => '0'
    );
\shift_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_reg_0,
      D => shift_reg(22),
      Q => shift_reg(23),
      R => '0'
    );
\shift_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_reg_0,
      D => shift_reg(1),
      Q => shift_reg(2),
      R => '0'
    );
\shift_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_reg_0,
      D => shift_reg(2),
      Q => shift_reg(3),
      R => '0'
    );
\shift_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_reg_0,
      D => shift_reg(3),
      Q => shift_reg(4),
      R => '0'
    );
\shift_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_reg_0,
      D => shift_reg(4),
      Q => shift_reg(5),
      R => '0'
    );
\shift_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_reg_0,
      D => shift_reg(5),
      Q => shift_reg(6),
      R => '0'
    );
\shift_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_reg_0,
      D => shift_reg(6),
      Q => shift_reg(7),
      R => '0'
    );
\shift_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_reg_0,
      D => shift_reg(7),
      Q => shift_reg(8),
      R => '0'
    );
\shift_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => shift_reg_0,
      D => shift_reg(8),
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
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 106352)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_i2s_wrapper_0_0_clk_wiz_0 is
  port (
    mclk_o : out STD_LOGIC;
    sysclk_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_i2s_wrapper_0_0_clk_wiz_0 : entity is "clk_wiz_0";
end design_1_axis_i2s_wrapper_0_0_clk_wiz_0;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0_clk_wiz_0 is
begin
inst: entity work.design_1_axis_i2s_wrapper_0_0_clk_wiz_0_clk_wiz
     port map (
      mclk_o => mclk_o,
      sysclk_i => sysclk_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_i2s_wrapper_0_0_i2s_receiver is
  port (
    D : out STD_LOGIC_VECTOR ( 23 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \right_audio_data_o_reg[23]_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    curr_state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_curr_state_reg[0]_0\ : in STD_LOGIC;
    CLK : in STD_LOGIC;
    ac_adc_data_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_i2s_wrapper_0_0_i2s_receiver : entity is "i2s_receiver";
end design_1_axis_i2s_wrapper_0_0_i2s_receiver;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0_i2s_receiver is
  signal \FSM_sequential_curr_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal bit_counter_n_0 : STD_LOGIC;
  signal bit_counter_n_1 : STD_LOGIC;
  signal curr_state_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal data_o : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \left_audio_data_o[23]_i_1_n_0\ : STD_LOGIC;
  signal \right_audio_data_o[23]_i_1_n_0\ : STD_LOGIC;
  signal \^right_audio_data_o_reg[23]_0\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[0]\ : label is "lidlestate:000,lshift:001,lpush:010,ridlestate:011,rshift:100,rpush:101,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[1]\ : label is "lidlestate:000,lshift:001,lpush:010,ridlestate:011,rshift:100,rpush:101,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[2]\ : label is "lidlestate:000,lshift:001,lpush:010,ridlestate:011,rshift:100,rpush:101,";
begin
  Q(23 downto 0) <= \^q\(23 downto 0);
  \right_audio_data_o_reg[23]_0\(23 downto 0) <= \^right_audio_data_o_reg[23]_0\(23 downto 0);
\FSM_sequential_curr_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E4C4"
    )
        port map (
      I0 => curr_state_0(0),
      I1 => curr_state_0(2),
      I2 => curr_state_0(1),
      I3 => \FSM_sequential_curr_state_reg[0]_0\,
      O => \FSM_sequential_curr_state[2]_i_1_n_0\
    );
\FSM_sequential_curr_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => bit_counter_n_1,
      Q => curr_state_0(0),
      R => '0'
    );
\FSM_sequential_curr_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => bit_counter_n_0,
      Q => curr_state_0(1),
      R => '0'
    );
\FSM_sequential_curr_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_sequential_curr_state[2]_i_1_n_0\,
      Q => curr_state_0(2),
      R => '0'
    );
bit_counter: entity work.design_1_axis_i2s_wrapper_0_0_counter_0
     port map (
      CLK => CLK,
      \FSM_sequential_curr_state_reg[0]\ => bit_counter_n_0,
      \FSM_sequential_curr_state_reg[0]_0\ => bit_counter_n_1,
      \FSM_sequential_curr_state_reg[0]_1\ => \FSM_sequential_curr_state_reg[0]_0\,
      curr_state_0(2 downto 0) => curr_state_0(2 downto 0)
    );
\input_data[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^q\(0),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^right_audio_data_o_reg[23]_0\(0),
      O => D(0)
    );
\input_data[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^q\(10),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^right_audio_data_o_reg[23]_0\(10),
      O => D(10)
    );
\input_data[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^q\(11),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^right_audio_data_o_reg[23]_0\(11),
      O => D(11)
    );
\input_data[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^q\(12),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^right_audio_data_o_reg[23]_0\(12),
      O => D(12)
    );
\input_data[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^q\(13),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^right_audio_data_o_reg[23]_0\(13),
      O => D(13)
    );
\input_data[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^q\(14),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^right_audio_data_o_reg[23]_0\(14),
      O => D(14)
    );
\input_data[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^q\(15),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^right_audio_data_o_reg[23]_0\(15),
      O => D(15)
    );
\input_data[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^q\(16),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^right_audio_data_o_reg[23]_0\(16),
      O => D(16)
    );
\input_data[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^q\(17),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^right_audio_data_o_reg[23]_0\(17),
      O => D(17)
    );
\input_data[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^q\(18),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^right_audio_data_o_reg[23]_0\(18),
      O => D(18)
    );
\input_data[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^q\(19),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^right_audio_data_o_reg[23]_0\(19),
      O => D(19)
    );
\input_data[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^q\(1),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^right_audio_data_o_reg[23]_0\(1),
      O => D(1)
    );
\input_data[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^q\(20),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^right_audio_data_o_reg[23]_0\(20),
      O => D(20)
    );
\input_data[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^q\(21),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^right_audio_data_o_reg[23]_0\(21),
      O => D(21)
    );
\input_data[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^q\(22),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^right_audio_data_o_reg[23]_0\(22),
      O => D(22)
    );
\input_data[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^q\(23),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^right_audio_data_o_reg[23]_0\(23),
      O => D(23)
    );
\input_data[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^q\(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^right_audio_data_o_reg[23]_0\(2),
      O => D(2)
    );
\input_data[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^q\(3),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^right_audio_data_o_reg[23]_0\(3),
      O => D(3)
    );
\input_data[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^q\(4),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^right_audio_data_o_reg[23]_0\(4),
      O => D(4)
    );
\input_data[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^q\(5),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^right_audio_data_o_reg[23]_0\(5),
      O => D(5)
    );
\input_data[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^q\(6),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^right_audio_data_o_reg[23]_0\(6),
      O => D(6)
    );
\input_data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^q\(7),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^right_audio_data_o_reg[23]_0\(7),
      O => D(7)
    );
\input_data[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^q\(8),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^right_audio_data_o_reg[23]_0\(8),
      O => D(8)
    );
\input_data[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^q\(9),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => \^right_audio_data_o_reg[23]_0\(9),
      O => D(9)
    );
\left_audio_data_o[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => curr_state_0(2),
      I1 => curr_state_0(0),
      I2 => curr_state_0(1),
      O => \left_audio_data_o[23]_i_1_n_0\
    );
\left_audio_data_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => data_o(0),
      Q => \^q\(0),
      R => '0'
    );
\left_audio_data_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => data_o(10),
      Q => \^q\(10),
      R => '0'
    );
\left_audio_data_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => data_o(11),
      Q => \^q\(11),
      R => '0'
    );
\left_audio_data_o_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => data_o(12),
      Q => \^q\(12),
      R => '0'
    );
\left_audio_data_o_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => data_o(13),
      Q => \^q\(13),
      R => '0'
    );
\left_audio_data_o_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => data_o(14),
      Q => \^q\(14),
      R => '0'
    );
\left_audio_data_o_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => data_o(15),
      Q => \^q\(15),
      R => '0'
    );
\left_audio_data_o_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => data_o(16),
      Q => \^q\(16),
      R => '0'
    );
\left_audio_data_o_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => data_o(17),
      Q => \^q\(17),
      R => '0'
    );
\left_audio_data_o_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => data_o(18),
      Q => \^q\(18),
      R => '0'
    );
\left_audio_data_o_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => data_o(19),
      Q => \^q\(19),
      R => '0'
    );
\left_audio_data_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => data_o(1),
      Q => \^q\(1),
      R => '0'
    );
\left_audio_data_o_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => data_o(20),
      Q => \^q\(20),
      R => '0'
    );
\left_audio_data_o_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => data_o(21),
      Q => \^q\(21),
      R => '0'
    );
\left_audio_data_o_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => data_o(22),
      Q => \^q\(22),
      R => '0'
    );
\left_audio_data_o_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => data_o(23),
      Q => \^q\(23),
      R => '0'
    );
\left_audio_data_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => data_o(2),
      Q => \^q\(2),
      R => '0'
    );
\left_audio_data_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => data_o(3),
      Q => \^q\(3),
      R => '0'
    );
\left_audio_data_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => data_o(4),
      Q => \^q\(4),
      R => '0'
    );
\left_audio_data_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => data_o(5),
      Q => \^q\(5),
      R => '0'
    );
\left_audio_data_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => data_o(6),
      Q => \^q\(6),
      R => '0'
    );
\left_audio_data_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => data_o(7),
      Q => \^q\(7),
      R => '0'
    );
\left_audio_data_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => data_o(8),
      Q => \^q\(8),
      R => '0'
    );
\left_audio_data_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \left_audio_data_o[23]_i_1_n_0\,
      D => data_o(9),
      Q => \^q\(9),
      R => '0'
    );
\right_audio_data_o[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => curr_state_0(1),
      I1 => curr_state_0(0),
      I2 => curr_state_0(2),
      O => \right_audio_data_o[23]_i_1_n_0\
    );
\right_audio_data_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => data_o(0),
      Q => \^right_audio_data_o_reg[23]_0\(0),
      R => '0'
    );
\right_audio_data_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => data_o(10),
      Q => \^right_audio_data_o_reg[23]_0\(10),
      R => '0'
    );
\right_audio_data_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => data_o(11),
      Q => \^right_audio_data_o_reg[23]_0\(11),
      R => '0'
    );
\right_audio_data_o_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => data_o(12),
      Q => \^right_audio_data_o_reg[23]_0\(12),
      R => '0'
    );
\right_audio_data_o_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => data_o(13),
      Q => \^right_audio_data_o_reg[23]_0\(13),
      R => '0'
    );
\right_audio_data_o_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => data_o(14),
      Q => \^right_audio_data_o_reg[23]_0\(14),
      R => '0'
    );
\right_audio_data_o_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => data_o(15),
      Q => \^right_audio_data_o_reg[23]_0\(15),
      R => '0'
    );
\right_audio_data_o_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => data_o(16),
      Q => \^right_audio_data_o_reg[23]_0\(16),
      R => '0'
    );
\right_audio_data_o_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => data_o(17),
      Q => \^right_audio_data_o_reg[23]_0\(17),
      R => '0'
    );
\right_audio_data_o_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => data_o(18),
      Q => \^right_audio_data_o_reg[23]_0\(18),
      R => '0'
    );
\right_audio_data_o_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => data_o(19),
      Q => \^right_audio_data_o_reg[23]_0\(19),
      R => '0'
    );
\right_audio_data_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => data_o(1),
      Q => \^right_audio_data_o_reg[23]_0\(1),
      R => '0'
    );
\right_audio_data_o_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => data_o(20),
      Q => \^right_audio_data_o_reg[23]_0\(20),
      R => '0'
    );
\right_audio_data_o_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => data_o(21),
      Q => \^right_audio_data_o_reg[23]_0\(21),
      R => '0'
    );
\right_audio_data_o_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => data_o(22),
      Q => \^right_audio_data_o_reg[23]_0\(22),
      R => '0'
    );
\right_audio_data_o_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => data_o(23),
      Q => \^right_audio_data_o_reg[23]_0\(23),
      R => '0'
    );
\right_audio_data_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => data_o(2),
      Q => \^right_audio_data_o_reg[23]_0\(2),
      R => '0'
    );
\right_audio_data_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => data_o(3),
      Q => \^right_audio_data_o_reg[23]_0\(3),
      R => '0'
    );
\right_audio_data_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => data_o(4),
      Q => \^right_audio_data_o_reg[23]_0\(4),
      R => '0'
    );
\right_audio_data_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => data_o(5),
      Q => \^right_audio_data_o_reg[23]_0\(5),
      R => '0'
    );
\right_audio_data_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => data_o(6),
      Q => \^right_audio_data_o_reg[23]_0\(6),
      R => '0'
    );
\right_audio_data_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => data_o(7),
      Q => \^right_audio_data_o_reg[23]_0\(7),
      R => '0'
    );
\right_audio_data_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => data_o(8),
      Q => \^right_audio_data_o_reg[23]_0\(8),
      R => '0'
    );
\right_audio_data_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \right_audio_data_o[23]_i_1_n_0\,
      D => data_o(9),
      Q => \^right_audio_data_o_reg[23]_0\(9),
      R => '0'
    );
sipo_shift_reg_inst: entity work.design_1_axis_i2s_wrapper_0_0_sipo_shift_register
     port map (
      CLK => CLK,
      Q(23 downto 0) => data_o(23 downto 0),
      ac_adc_data_i => ac_adc_data_i,
      curr_state_0(2 downto 0) => curr_state_0(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_i2s_wrapper_0_0_i2s_transmitter is
  port (
    \FSM_sequential_curr_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ac_dac_data_o : out STD_LOGIC;
    \FSM_sequential_curr_state_reg[0]_0\ : in STD_LOGIC;
    CLK : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_i2s_wrapper_0_0_i2s_transmitter : entity is "i2s_transmitter";
end design_1_axis_i2s_wrapper_0_0_i2s_transmitter;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0_i2s_transmitter is
  signal \FSM_sequential_curr_state[1]_i_1__0_n_0\ : STD_LOGIC;
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
\FSM_sequential_curr_state[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF50"
    )
        port map (
      I0 => curr_state(2),
      I1 => \FSM_sequential_curr_state_reg[0]_0\,
      I2 => \^fsm_sequential_curr_state_reg[1]_0\(0),
      I3 => \^fsm_sequential_curr_state_reg[1]_0\(1),
      O => \FSM_sequential_curr_state[1]_i_1__0_n_0\
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
      D => \FSM_sequential_curr_state[1]_i_1__0_n_0\,
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
bit_counter: entity work.design_1_axis_i2s_wrapper_0_0_counter
     port map (
      CLK => CLK,
      \FSM_sequential_curr_state_reg[0]\ => \FSM_sequential_curr_state_reg[0]_0\,
      \FSM_sequential_curr_state_reg[2]\ => bit_counter_n_0,
      \FSM_sequential_curr_state_reg[2]_0\ => bit_counter_n_1,
      \count_int_reg[0]_0\ => \^fsm_sequential_curr_state_reg[1]_0\(1),
      \count_int_reg[0]_1\ => \^fsm_sequential_curr_state_reg[1]_0\(0),
      curr_state(0) => curr_state(2)
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
shift_reg_inst: entity work.design_1_axis_i2s_wrapper_0_0_shift_register
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
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5648)
`protect data_block
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
ifCYvMM=
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_i2s_wrapper_0_0_i2s_clock_gen is
  port (
    bclk_o : out STD_LOGIC;
    slow_clock_bufg : out STD_LOGIC;
    ac_mclk_o : out STD_LOGIC;
    ac_bclk_o : out STD_LOGIC;
    ac_adc_lrclk_o : out STD_LOGIC;
    ac_dac_lrclk_o : out STD_LOGIC;
    sysclk_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_i2s_wrapper_0_0_i2s_clock_gen : entity is "i2s_clock_gen";
end design_1_axis_i2s_wrapper_0_0_i2s_clock_gen;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0_i2s_clock_gen is
  signal \^bclk_o\ : STD_LOGIC;
  signal mclk_o : STD_LOGIC;
  signal \^slow_clock_bufg\ : STD_LOGIC;
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
  slow_clock_bufg <= \^slow_clock_bufg\;
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
      C => \^slow_clock_bufg\,
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
clk_divider_falling_edge_inst: entity work.design_1_axis_i2s_wrapper_0_0_clock_divider_falling_edge
     port map (
      \clock_counter_reg[0]_0\ => \^bclk_o\,
      slow_clock_bufg_0 => \^slow_clock_bufg\
    );
clk_divider_inst: entity work.design_1_axis_i2s_wrapper_0_0_clock_divider
     port map (
      bclk_o => \^bclk_o\,
      mclk_o => mclk_o
    );
clk_wiz_inst: entity work.design_1_axis_i2s_wrapper_0_0_clk_wiz_0
     port map (
      mclk_o => mclk_o,
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
      C => \^slow_clock_bufg\,
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
      C => mclk_o,
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
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 40528)
`protect data_block
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
pg==
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_i2s_wrapper_0_0_blk_mem_gen_0 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axis_i2s_wrapper_0_0_blk_mem_gen_0 : entity is "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axis_i2s_wrapper_0_0_blk_mem_gen_0 : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_i2s_wrapper_0_0_blk_mem_gen_0 : entity is "blk_mem_gen_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_axis_i2s_wrapper_0_0_blk_mem_gen_0 : entity is "blk_mem_gen_v8_4_5,Vivado 2021.2";
end design_1_axis_i2s_wrapper_0_0_blk_mem_gen_0;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0_blk_mem_gen_0 is
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
U0: entity work.design_1_axis_i2s_wrapper_0_0_blk_mem_gen_v8_4_5
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
entity \design_1_axis_i2s_wrapper_0_0_blk_mem_gen_0__2\ is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \design_1_axis_i2s_wrapper_0_0_blk_mem_gen_0__2\ : entity is "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \design_1_axis_i2s_wrapper_0_0_blk_mem_gen_0__2\ : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axis_i2s_wrapper_0_0_blk_mem_gen_0__2\ : entity is "blk_mem_gen_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \design_1_axis_i2s_wrapper_0_0_blk_mem_gen_0__2\ : entity is "blk_mem_gen_v8_4_5,Vivado 2021.2";
end \design_1_axis_i2s_wrapper_0_0_blk_mem_gen_0__2\;

architecture STRUCTURE of \design_1_axis_i2s_wrapper_0_0_blk_mem_gen_0__2\ is
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
U0: entity work.\design_1_axis_i2s_wrapper_0_0_blk_mem_gen_v8_4_5__2\
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
entity design_1_axis_i2s_wrapper_0_0_dds_controller is
  port (
    dbg_right_audio_rx_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    D : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : in STD_LOGIC;
    dds_enable_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    right_dds_phase_inc_dbg_o : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_i2s_wrapper_0_0_dds_controller : entity is "dds_controller";
end design_1_axis_i2s_wrapper_0_0_dds_controller;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0_dds_controller is
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
  signal \^dbg_right_audio_rx_o\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \NLW_addr_ctr_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of blk_mem_left : label is "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of blk_mem_left : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of blk_mem_left : label is "blk_mem_gen_v8_4_5,Vivado 2021.2";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \right_axi_tx[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \right_axi_tx[10]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \right_axi_tx[11]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \right_axi_tx[12]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \right_axi_tx[13]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \right_axi_tx[14]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \right_axi_tx[15]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \right_axi_tx[16]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \right_axi_tx[17]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \right_axi_tx[18]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \right_axi_tx[19]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \right_axi_tx[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \right_axi_tx[20]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \right_axi_tx[21]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \right_axi_tx[22]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \right_axi_tx[23]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \right_axi_tx[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \right_axi_tx[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \right_axi_tx[4]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \right_axi_tx[5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \right_axi_tx[6]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \right_axi_tx[7]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \right_axi_tx[8]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \right_axi_tx[9]_i_1\ : label is "soft_lutpair20";
begin
  dbg_right_audio_rx_o(23 downto 0) <= \^dbg_right_audio_rx_o\(23 downto 0);
\addr_ctr[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[11]\,
      I1 => right_dds_phase_inc_dbg_o(11),
      O => \addr_ctr[11]_i_2_n_0\
    );
\addr_ctr[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[10]\,
      I1 => right_dds_phase_inc_dbg_o(10),
      O => \addr_ctr[11]_i_3_n_0\
    );
\addr_ctr[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[9]\,
      I1 => right_dds_phase_inc_dbg_o(9),
      O => \addr_ctr[11]_i_4_n_0\
    );
\addr_ctr[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[8]\,
      I1 => right_dds_phase_inc_dbg_o(8),
      O => \addr_ctr[11]_i_5_n_0\
    );
\addr_ctr[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[3]\,
      I1 => right_dds_phase_inc_dbg_o(3),
      O => \addr_ctr[3]_i_2_n_0\
    );
\addr_ctr[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[2]\,
      I1 => right_dds_phase_inc_dbg_o(2),
      O => \addr_ctr[3]_i_3_n_0\
    );
\addr_ctr[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[1]\,
      I1 => right_dds_phase_inc_dbg_o(1),
      O => \addr_ctr[3]_i_4_n_0\
    );
\addr_ctr[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[0]\,
      I1 => right_dds_phase_inc_dbg_o(0),
      O => \addr_ctr[3]_i_5_n_0\
    );
\addr_ctr[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[7]\,
      I1 => right_dds_phase_inc_dbg_o(7),
      O => \addr_ctr[7]_i_2_n_0\
    );
\addr_ctr[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[6]\,
      I1 => right_dds_phase_inc_dbg_o(6),
      O => \addr_ctr[7]_i_3_n_0\
    );
\addr_ctr[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[5]\,
      I1 => right_dds_phase_inc_dbg_o(5),
      O => \addr_ctr[7]_i_4_n_0\
    );
\addr_ctr[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[4]\,
      I1 => right_dds_phase_inc_dbg_o(4),
      O => \addr_ctr[7]_i_5_n_0\
    );
\addr_ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      CE => dds_enable_i,
      D => \addr_ctr_reg[3]_i_1_n_7\,
      Q => \addr_ctr_reg_n_0_[0]\,
      R => '0'
    );
\addr_ctr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      CE => dds_enable_i,
      D => \addr_ctr_reg[11]_i_1_n_5\,
      Q => \addr_ctr_reg_n_0_[10]\,
      R => '0'
    );
\addr_ctr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      CE => dds_enable_i,
      D => \addr_ctr_reg[11]_i_1_n_4\,
      Q => \addr_ctr_reg_n_0_[11]\,
      R => '0'
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
      C => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      CE => dds_enable_i,
      D => \addr_ctr_reg[3]_i_1_n_6\,
      Q => \addr_ctr_reg_n_0_[1]\,
      R => '0'
    );
\addr_ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      CE => dds_enable_i,
      D => \addr_ctr_reg[3]_i_1_n_5\,
      Q => \addr_ctr_reg_n_0_[2]\,
      R => '0'
    );
\addr_ctr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      CE => dds_enable_i,
      D => \addr_ctr_reg[3]_i_1_n_4\,
      Q => \addr_ctr_reg_n_0_[3]\,
      R => '0'
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
      C => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      CE => dds_enable_i,
      D => \addr_ctr_reg[7]_i_1_n_7\,
      Q => \addr_ctr_reg_n_0_[4]\,
      R => '0'
    );
\addr_ctr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      CE => dds_enable_i,
      D => \addr_ctr_reg[7]_i_1_n_6\,
      Q => \addr_ctr_reg_n_0_[5]\,
      R => '0'
    );
\addr_ctr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      CE => dds_enable_i,
      D => \addr_ctr_reg[7]_i_1_n_5\,
      Q => \addr_ctr_reg_n_0_[6]\,
      R => '0'
    );
\addr_ctr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      CE => dds_enable_i,
      D => \addr_ctr_reg[7]_i_1_n_4\,
      Q => \addr_ctr_reg_n_0_[7]\,
      R => '0'
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
      C => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      CE => dds_enable_i,
      D => \addr_ctr_reg[11]_i_1_n_7\,
      Q => \addr_ctr_reg_n_0_[8]\,
      R => '0'
    );
\addr_ctr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      CE => dds_enable_i,
      D => \addr_ctr_reg[11]_i_1_n_6\,
      Q => \addr_ctr_reg_n_0_[9]\,
      R => '0'
    );
blk_mem_left: entity work.design_1_axis_i2s_wrapper_0_0_blk_mem_gen_0
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
      clka => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      douta(23 downto 0) => \^dbg_right_audio_rx_o\(23 downto 0),
      ena => dds_enable_i
    );
\right_axi_tx[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_right_audio_rx_o\(0),
      I1 => Q(0),
      I2 => dds_enable_i,
      O => D(0)
    );
\right_axi_tx[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_right_audio_rx_o\(10),
      I1 => Q(10),
      I2 => dds_enable_i,
      O => D(10)
    );
\right_axi_tx[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_right_audio_rx_o\(11),
      I1 => Q(11),
      I2 => dds_enable_i,
      O => D(11)
    );
\right_axi_tx[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_right_audio_rx_o\(12),
      I1 => Q(12),
      I2 => dds_enable_i,
      O => D(12)
    );
\right_axi_tx[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_right_audio_rx_o\(13),
      I1 => Q(13),
      I2 => dds_enable_i,
      O => D(13)
    );
\right_axi_tx[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_right_audio_rx_o\(14),
      I1 => Q(14),
      I2 => dds_enable_i,
      O => D(14)
    );
\right_axi_tx[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_right_audio_rx_o\(15),
      I1 => Q(15),
      I2 => dds_enable_i,
      O => D(15)
    );
\right_axi_tx[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_right_audio_rx_o\(16),
      I1 => Q(16),
      I2 => dds_enable_i,
      O => D(16)
    );
\right_axi_tx[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_right_audio_rx_o\(17),
      I1 => Q(17),
      I2 => dds_enable_i,
      O => D(17)
    );
\right_axi_tx[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_right_audio_rx_o\(18),
      I1 => Q(18),
      I2 => dds_enable_i,
      O => D(18)
    );
\right_axi_tx[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_right_audio_rx_o\(19),
      I1 => Q(19),
      I2 => dds_enable_i,
      O => D(19)
    );
\right_axi_tx[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_right_audio_rx_o\(1),
      I1 => Q(1),
      I2 => dds_enable_i,
      O => D(1)
    );
\right_axi_tx[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_right_audio_rx_o\(20),
      I1 => Q(20),
      I2 => dds_enable_i,
      O => D(20)
    );
\right_axi_tx[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_right_audio_rx_o\(21),
      I1 => Q(21),
      I2 => dds_enable_i,
      O => D(21)
    );
\right_axi_tx[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_right_audio_rx_o\(22),
      I1 => Q(22),
      I2 => dds_enable_i,
      O => D(22)
    );
\right_axi_tx[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_right_audio_rx_o\(23),
      I1 => Q(23),
      I2 => dds_enable_i,
      O => D(23)
    );
\right_axi_tx[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_right_audio_rx_o\(2),
      I1 => Q(2),
      I2 => dds_enable_i,
      O => D(2)
    );
\right_axi_tx[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_right_audio_rx_o\(3),
      I1 => Q(3),
      I2 => dds_enable_i,
      O => D(3)
    );
\right_axi_tx[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_right_audio_rx_o\(4),
      I1 => Q(4),
      I2 => dds_enable_i,
      O => D(4)
    );
\right_axi_tx[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_right_audio_rx_o\(5),
      I1 => Q(5),
      I2 => dds_enable_i,
      O => D(5)
    );
\right_axi_tx[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_right_audio_rx_o\(6),
      I1 => Q(6),
      I2 => dds_enable_i,
      O => D(6)
    );
\right_axi_tx[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_right_audio_rx_o\(7),
      I1 => Q(7),
      I2 => dds_enable_i,
      O => D(7)
    );
\right_axi_tx[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_right_audio_rx_o\(8),
      I1 => Q(8),
      I2 => dds_enable_i,
      O => D(8)
    );
\right_axi_tx[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_right_audio_rx_o\(9),
      I1 => Q(9),
      I2 => dds_enable_i,
      O => D(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axis_i2s_wrapper_0_0_dds_controller__xdcDup__1\ is
  port (
    dbg_left_audio_rx_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \addr_ctr_reg[11]_0\ : in STD_LOGIC;
    dds_enable_i : in STD_LOGIC;
    \left_axi_tx_reg[23]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    left_dds_phase_inc_dbg_o : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axis_i2s_wrapper_0_0_dds_controller__xdcDup__1\ : entity is "dds_controller";
end \design_1_axis_i2s_wrapper_0_0_dds_controller__xdcDup__1\;

architecture STRUCTURE of \design_1_axis_i2s_wrapper_0_0_dds_controller__xdcDup__1\ is
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
  signal \^dbg_left_audio_rx_o\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \NLW_addr_ctr_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of blk_mem_left : label is "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of blk_mem_left : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of blk_mem_left : label is "blk_mem_gen_v8_4_5,Vivado 2021.2";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \left_axi_tx[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \left_axi_tx[10]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \left_axi_tx[11]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \left_axi_tx[12]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \left_axi_tx[13]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \left_axi_tx[14]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \left_axi_tx[15]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \left_axi_tx[16]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \left_axi_tx[17]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \left_axi_tx[18]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \left_axi_tx[19]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \left_axi_tx[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \left_axi_tx[20]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \left_axi_tx[21]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \left_axi_tx[22]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \left_axi_tx[23]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \left_axi_tx[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \left_axi_tx[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \left_axi_tx[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \left_axi_tx[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \left_axi_tx[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \left_axi_tx[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \left_axi_tx[8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \left_axi_tx[9]_i_1\ : label is "soft_lutpair8";
begin
  dbg_left_audio_rx_o(23 downto 0) <= \^dbg_left_audio_rx_o\(23 downto 0);
\addr_ctr[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[11]\,
      I1 => left_dds_phase_inc_dbg_o(11),
      O => \addr_ctr[11]_i_2_n_0\
    );
\addr_ctr[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[10]\,
      I1 => left_dds_phase_inc_dbg_o(10),
      O => \addr_ctr[11]_i_3_n_0\
    );
\addr_ctr[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[9]\,
      I1 => left_dds_phase_inc_dbg_o(9),
      O => \addr_ctr[11]_i_4_n_0\
    );
\addr_ctr[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[8]\,
      I1 => left_dds_phase_inc_dbg_o(8),
      O => \addr_ctr[11]_i_5_n_0\
    );
\addr_ctr[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[3]\,
      I1 => left_dds_phase_inc_dbg_o(3),
      O => \addr_ctr[3]_i_2_n_0\
    );
\addr_ctr[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[2]\,
      I1 => left_dds_phase_inc_dbg_o(2),
      O => \addr_ctr[3]_i_3_n_0\
    );
\addr_ctr[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[1]\,
      I1 => left_dds_phase_inc_dbg_o(1),
      O => \addr_ctr[3]_i_4_n_0\
    );
\addr_ctr[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[0]\,
      I1 => left_dds_phase_inc_dbg_o(0),
      O => \addr_ctr[3]_i_5_n_0\
    );
\addr_ctr[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[7]\,
      I1 => left_dds_phase_inc_dbg_o(7),
      O => \addr_ctr[7]_i_2_n_0\
    );
\addr_ctr[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[6]\,
      I1 => left_dds_phase_inc_dbg_o(6),
      O => \addr_ctr[7]_i_3_n_0\
    );
\addr_ctr[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[5]\,
      I1 => left_dds_phase_inc_dbg_o(5),
      O => \addr_ctr[7]_i_4_n_0\
    );
\addr_ctr[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_ctr_reg_n_0_[4]\,
      I1 => left_dds_phase_inc_dbg_o(4),
      O => \addr_ctr[7]_i_5_n_0\
    );
\addr_ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \addr_ctr_reg[11]_0\,
      CE => dds_enable_i,
      D => \addr_ctr_reg[3]_i_1_n_7\,
      Q => \addr_ctr_reg_n_0_[0]\,
      R => '0'
    );
\addr_ctr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \addr_ctr_reg[11]_0\,
      CE => dds_enable_i,
      D => \addr_ctr_reg[11]_i_1_n_5\,
      Q => \addr_ctr_reg_n_0_[10]\,
      R => '0'
    );
\addr_ctr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \addr_ctr_reg[11]_0\,
      CE => dds_enable_i,
      D => \addr_ctr_reg[11]_i_1_n_4\,
      Q => \addr_ctr_reg_n_0_[11]\,
      R => '0'
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
      C => \addr_ctr_reg[11]_0\,
      CE => dds_enable_i,
      D => \addr_ctr_reg[3]_i_1_n_6\,
      Q => \addr_ctr_reg_n_0_[1]\,
      R => '0'
    );
\addr_ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \addr_ctr_reg[11]_0\,
      CE => dds_enable_i,
      D => \addr_ctr_reg[3]_i_1_n_5\,
      Q => \addr_ctr_reg_n_0_[2]\,
      R => '0'
    );
\addr_ctr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \addr_ctr_reg[11]_0\,
      CE => dds_enable_i,
      D => \addr_ctr_reg[3]_i_1_n_4\,
      Q => \addr_ctr_reg_n_0_[3]\,
      R => '0'
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
      C => \addr_ctr_reg[11]_0\,
      CE => dds_enable_i,
      D => \addr_ctr_reg[7]_i_1_n_7\,
      Q => \addr_ctr_reg_n_0_[4]\,
      R => '0'
    );
\addr_ctr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \addr_ctr_reg[11]_0\,
      CE => dds_enable_i,
      D => \addr_ctr_reg[7]_i_1_n_6\,
      Q => \addr_ctr_reg_n_0_[5]\,
      R => '0'
    );
\addr_ctr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \addr_ctr_reg[11]_0\,
      CE => dds_enable_i,
      D => \addr_ctr_reg[7]_i_1_n_5\,
      Q => \addr_ctr_reg_n_0_[6]\,
      R => '0'
    );
\addr_ctr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \addr_ctr_reg[11]_0\,
      CE => dds_enable_i,
      D => \addr_ctr_reg[7]_i_1_n_4\,
      Q => \addr_ctr_reg_n_0_[7]\,
      R => '0'
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
      C => \addr_ctr_reg[11]_0\,
      CE => dds_enable_i,
      D => \addr_ctr_reg[11]_i_1_n_7\,
      Q => \addr_ctr_reg_n_0_[8]\,
      R => '0'
    );
\addr_ctr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \addr_ctr_reg[11]_0\,
      CE => dds_enable_i,
      D => \addr_ctr_reg[11]_i_1_n_6\,
      Q => \addr_ctr_reg_n_0_[9]\,
      R => '0'
    );
blk_mem_left: entity work.\design_1_axis_i2s_wrapper_0_0_blk_mem_gen_0__2\
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
      clka => \addr_ctr_reg[11]_0\,
      douta(23 downto 0) => \^dbg_left_audio_rx_o\(23 downto 0),
      ena => dds_enable_i
    );
\left_axi_tx[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_left_audio_rx_o\(0),
      I1 => \left_axi_tx_reg[23]\(0),
      I2 => dds_enable_i,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0)
    );
\left_axi_tx[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_left_audio_rx_o\(10),
      I1 => \left_axi_tx_reg[23]\(10),
      I2 => dds_enable_i,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(10)
    );
\left_axi_tx[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_left_audio_rx_o\(11),
      I1 => \left_axi_tx_reg[23]\(11),
      I2 => dds_enable_i,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(11)
    );
\left_axi_tx[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_left_audio_rx_o\(12),
      I1 => \left_axi_tx_reg[23]\(12),
      I2 => dds_enable_i,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(12)
    );
\left_axi_tx[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_left_audio_rx_o\(13),
      I1 => \left_axi_tx_reg[23]\(13),
      I2 => dds_enable_i,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(13)
    );
\left_axi_tx[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_left_audio_rx_o\(14),
      I1 => \left_axi_tx_reg[23]\(14),
      I2 => dds_enable_i,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(14)
    );
\left_axi_tx[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_left_audio_rx_o\(15),
      I1 => \left_axi_tx_reg[23]\(15),
      I2 => dds_enable_i,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(15)
    );
\left_axi_tx[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_left_audio_rx_o\(16),
      I1 => \left_axi_tx_reg[23]\(16),
      I2 => dds_enable_i,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(16)
    );
\left_axi_tx[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_left_audio_rx_o\(17),
      I1 => \left_axi_tx_reg[23]\(17),
      I2 => dds_enable_i,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(17)
    );
\left_axi_tx[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_left_audio_rx_o\(18),
      I1 => \left_axi_tx_reg[23]\(18),
      I2 => dds_enable_i,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(18)
    );
\left_axi_tx[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_left_audio_rx_o\(19),
      I1 => \left_axi_tx_reg[23]\(19),
      I2 => dds_enable_i,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(19)
    );
\left_axi_tx[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_left_audio_rx_o\(1),
      I1 => \left_axi_tx_reg[23]\(1),
      I2 => dds_enable_i,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1)
    );
\left_axi_tx[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_left_audio_rx_o\(20),
      I1 => \left_axi_tx_reg[23]\(20),
      I2 => dds_enable_i,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(20)
    );
\left_axi_tx[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_left_audio_rx_o\(21),
      I1 => \left_axi_tx_reg[23]\(21),
      I2 => dds_enable_i,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(21)
    );
\left_axi_tx[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_left_audio_rx_o\(22),
      I1 => \left_axi_tx_reg[23]\(22),
      I2 => dds_enable_i,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(22)
    );
\left_axi_tx[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_left_audio_rx_o\(23),
      I1 => \left_axi_tx_reg[23]\(23),
      I2 => dds_enable_i,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(23)
    );
\left_axi_tx[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_left_audio_rx_o\(2),
      I1 => \left_axi_tx_reg[23]\(2),
      I2 => dds_enable_i,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2)
    );
\left_axi_tx[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_left_audio_rx_o\(3),
      I1 => \left_axi_tx_reg[23]\(3),
      I2 => dds_enable_i,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3)
    );
\left_axi_tx[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_left_audio_rx_o\(4),
      I1 => \left_axi_tx_reg[23]\(4),
      I2 => dds_enable_i,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4)
    );
\left_axi_tx[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_left_audio_rx_o\(5),
      I1 => \left_axi_tx_reg[23]\(5),
      I2 => dds_enable_i,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5)
    );
\left_axi_tx[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_left_audio_rx_o\(6),
      I1 => \left_axi_tx_reg[23]\(6),
      I2 => dds_enable_i,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6)
    );
\left_axi_tx[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_left_audio_rx_o\(7),
      I1 => \left_axi_tx_reg[23]\(7),
      I2 => dds_enable_i,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7)
    );
\left_axi_tx[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_left_audio_rx_o\(8),
      I1 => \left_axi_tx_reg[23]\(8),
      I2 => dds_enable_i,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(8)
    );
\left_axi_tx[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^dbg_left_audio_rx_o\(9),
      I1 => \left_axi_tx_reg[23]\(9),
      I2 => dds_enable_i,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_i2s_wrapper_0_0_axi_dds is
  port (
    dbg_left_audio_rx_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    dbg_right_audio_rx_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    axi_awready_reg : out STD_LOGIC;
    axi_wready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    left_dds_phase_inc_dbg_o : out STD_LOGIC_VECTOR ( 11 downto 0 );
    right_dds_phase_inc_dbg_o : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC;
    dds_enable_i : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \left_axi_tx_reg[23]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_i2s_wrapper_0_0_axi_dds : entity is "axi_dds";
end design_1_axis_i2s_wrapper_0_0_axi_dds;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0_axi_dds is
  signal \^left_dds_phase_inc_dbg_o\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^right_dds_phase_inc_dbg_o\ : STD_LOGIC_VECTOR ( 11 downto 0 );
begin
  left_dds_phase_inc_dbg_o(11 downto 0) <= \^left_dds_phase_inc_dbg_o\(11 downto 0);
  right_dds_phase_inc_dbg_o(11 downto 0) <= \^right_dds_phase_inc_dbg_o\(11 downto 0);
engs128_axi_dds_S00_AXI_inst: entity work.design_1_axis_i2s_wrapper_0_0_engs128_axi_dds_S00_AXI
     port map (
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_wready_reg_0 => axi_wready_reg,
      left_dds_phase_inc_dbg_o(11 downto 0) => \^left_dds_phase_inc_dbg_o\(11 downto 0),
      right_dds_phase_inc_dbg_o(11 downto 0) => \^right_dds_phase_inc_dbg_o\(11 downto 0),
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
left_audio_dds: entity work.\design_1_axis_i2s_wrapper_0_0_dds_controller__xdcDup__1\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(23 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(23 downto 0),
      \addr_ctr_reg[11]_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\,
      dbg_left_audio_rx_o(23 downto 0) => dbg_left_audio_rx_o(23 downto 0),
      dds_enable_i => dds_enable_i,
      \left_axi_tx_reg[23]\(23 downto 0) => \left_axi_tx_reg[23]\(23 downto 0),
      left_dds_phase_inc_dbg_o(11 downto 0) => \^left_dds_phase_inc_dbg_o\(11 downto 0)
    );
right_audio_dds: entity work.design_1_axis_i2s_wrapper_0_0_dds_controller
     port map (
      D(23 downto 0) => D(23 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\,
      Q(23 downto 0) => Q(23 downto 0),
      dbg_right_audio_rx_o(23 downto 0) => dbg_right_audio_rx_o(23 downto 0),
      dds_enable_i => dds_enable_i,
      right_dds_phase_inc_dbg_o(11 downto 0) => \^right_dds_phase_inc_dbg_o\(11 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_i2s_wrapper_0_0_axis_i2s_wrapper is
  port (
    sysclk_i : in STD_LOGIC;
    ac_mute_en_i : in STD_LOGIC;
    dds_enable_i : in STD_LOGIC;
    ac_bclk_o : out STD_LOGIC;
    ac_mclk_o : out STD_LOGIC;
    ac_mute_n_o : out STD_LOGIC;
    ac_dac_data_o : out STD_LOGIC;
    ac_dac_lrclk_o : out STD_LOGIC;
    ac_adc_data_i : in STD_LOGIC;
    ac_adc_lrclk_o : out STD_LOGIC;
    lrclk_o : out STD_LOGIC;
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
    left_dds_phase_inc_dbg_o : out STD_LOGIC_VECTOR ( 11 downto 0 );
    dbg_right_audio_rx_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    right_dds_phase_inc_dbg_o : out STD_LOGIC_VECTOR ( 11 downto 0 );
    lrclk_dbg : out STD_LOGIC
  );
  attribute AC_DATA_WIDTH : integer;
  attribute AC_DATA_WIDTH of design_1_axis_i2s_wrapper_0_0_axis_i2s_wrapper : entity is 24;
  attribute C_AXI_STREAM_DATA_WIDTH : integer;
  attribute C_AXI_STREAM_DATA_WIDTH of design_1_axis_i2s_wrapper_0_0_axis_i2s_wrapper : entity is 32;
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of design_1_axis_i2s_wrapper_0_0_axis_i2s_wrapper : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axis_i2s_wrapper_0_0_axis_i2s_wrapper : entity is "axis_i2s_wrapper";
  attribute PHASE_DATA_WIDTH : integer;
  attribute PHASE_DATA_WIDTH of design_1_axis_i2s_wrapper_0_0_axis_i2s_wrapper : entity is 12;
end design_1_axis_i2s_wrapper_0_0_axis_i2s_wrapper;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0_axis_i2s_wrapper is
  signal \<const0>\ : STD_LOGIC;
  signal axis_dds_n_100 : STD_LOGIC;
  signal axis_dds_n_53 : STD_LOGIC;
  signal axis_dds_n_54 : STD_LOGIC;
  signal axis_dds_n_55 : STD_LOGIC;
  signal axis_dds_n_56 : STD_LOGIC;
  signal axis_dds_n_57 : STD_LOGIC;
  signal axis_dds_n_58 : STD_LOGIC;
  signal axis_dds_n_59 : STD_LOGIC;
  signal axis_dds_n_60 : STD_LOGIC;
  signal axis_dds_n_61 : STD_LOGIC;
  signal axis_dds_n_62 : STD_LOGIC;
  signal axis_dds_n_63 : STD_LOGIC;
  signal axis_dds_n_64 : STD_LOGIC;
  signal axis_dds_n_65 : STD_LOGIC;
  signal axis_dds_n_66 : STD_LOGIC;
  signal axis_dds_n_67 : STD_LOGIC;
  signal axis_dds_n_68 : STD_LOGIC;
  signal axis_dds_n_69 : STD_LOGIC;
  signal axis_dds_n_70 : STD_LOGIC;
  signal axis_dds_n_71 : STD_LOGIC;
  signal axis_dds_n_72 : STD_LOGIC;
  signal axis_dds_n_73 : STD_LOGIC;
  signal axis_dds_n_74 : STD_LOGIC;
  signal axis_dds_n_75 : STD_LOGIC;
  signal axis_dds_n_76 : STD_LOGIC;
  signal axis_dds_n_77 : STD_LOGIC;
  signal axis_dds_n_78 : STD_LOGIC;
  signal axis_dds_n_79 : STD_LOGIC;
  signal axis_dds_n_80 : STD_LOGIC;
  signal axis_dds_n_81 : STD_LOGIC;
  signal axis_dds_n_82 : STD_LOGIC;
  signal axis_dds_n_83 : STD_LOGIC;
  signal axis_dds_n_84 : STD_LOGIC;
  signal axis_dds_n_85 : STD_LOGIC;
  signal axis_dds_n_86 : STD_LOGIC;
  signal axis_dds_n_87 : STD_LOGIC;
  signal axis_dds_n_88 : STD_LOGIC;
  signal axis_dds_n_89 : STD_LOGIC;
  signal axis_dds_n_90 : STD_LOGIC;
  signal axis_dds_n_91 : STD_LOGIC;
  signal axis_dds_n_92 : STD_LOGIC;
  signal axis_dds_n_93 : STD_LOGIC;
  signal axis_dds_n_94 : STD_LOGIC;
  signal axis_dds_n_95 : STD_LOGIC;
  signal axis_dds_n_96 : STD_LOGIC;
  signal axis_dds_n_97 : STD_LOGIC;
  signal axis_dds_n_98 : STD_LOGIC;
  signal axis_dds_n_99 : STD_LOGIC;
  signal bclk_o : STD_LOGIC;
  signal curr_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal input_data : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal left_audio_data_o : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal left_axi_tx : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^lrclk_o\ : STD_LOGIC;
  signal \^m00_axis_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal right_audio_data_o : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal right_axi_tx : STD_LOGIC_VECTOR ( 23 downto 0 );
begin
  ac_mute_n_o <= \<const0>\;
  lrclk_dbg <= \^lrclk_o\;
  lrclk_o <= \^lrclk_o\;
  m00_axis_tdata(31 downto 8) <= \^m00_axis_tdata\(31 downto 8);
  m00_axis_tdata(7) <= \<const0>\;
  m00_axis_tdata(6) <= \<const0>\;
  m00_axis_tdata(5) <= \<const0>\;
  m00_axis_tdata(4) <= \<const0>\;
  m00_axis_tdata(3) <= \<const0>\;
  m00_axis_tdata(2) <= \<const0>\;
  m00_axis_tdata(1) <= \<const0>\;
  m00_axis_tdata(0) <= \^m00_axis_tdata\(0);
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
axi_transmitter: entity work.design_1_axis_i2s_wrapper_0_0_axis_transmitter
     port map (
      E(0) => m00_axis_tvalid,
      \Ltemp1_reg[31]_0\(23 downto 0) => left_axi_tx(23 downto 0),
      Q(23 downto 0) => right_axi_tx(23 downto 0),
      lrclk_temp1_reg_0 => \^lrclk_o\,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tdata(24 downto 1) => \^m00_axis_tdata\(31 downto 8),
      m00_axis_tdata(0) => \^m00_axis_tdata\(0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready
    );
axis_dds: entity work.design_1_axis_i2s_wrapper_0_0_axi_dds
     port map (
      D(23) => axis_dds_n_53,
      D(22) => axis_dds_n_54,
      D(21) => axis_dds_n_55,
      D(20) => axis_dds_n_56,
      D(19) => axis_dds_n_57,
      D(18) => axis_dds_n_58,
      D(17) => axis_dds_n_59,
      D(16) => axis_dds_n_60,
      D(15) => axis_dds_n_61,
      D(14) => axis_dds_n_62,
      D(13) => axis_dds_n_63,
      D(12) => axis_dds_n_64,
      D(11) => axis_dds_n_65,
      D(10) => axis_dds_n_66,
      D(9) => axis_dds_n_67,
      D(8) => axis_dds_n_68,
      D(7) => axis_dds_n_69,
      D(6) => axis_dds_n_70,
      D(5) => axis_dds_n_71,
      D(4) => axis_dds_n_72,
      D(3) => axis_dds_n_73,
      D(2) => axis_dds_n_74,
      D(1) => axis_dds_n_75,
      D(0) => axis_dds_n_76,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(23) => axis_dds_n_77,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(22) => axis_dds_n_78,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(21) => axis_dds_n_79,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(20) => axis_dds_n_80,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(19) => axis_dds_n_81,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(18) => axis_dds_n_82,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(17) => axis_dds_n_83,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(16) => axis_dds_n_84,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(15) => axis_dds_n_85,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(14) => axis_dds_n_86,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(13) => axis_dds_n_87,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(12) => axis_dds_n_88,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(11) => axis_dds_n_89,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(10) => axis_dds_n_90,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(9) => axis_dds_n_91,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(8) => axis_dds_n_92,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => axis_dds_n_93,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => axis_dds_n_94,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => axis_dds_n_95,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => axis_dds_n_96,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => axis_dds_n_97,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => axis_dds_n_98,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => axis_dds_n_99,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => axis_dds_n_100,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \^lrclk_o\,
      Q(23 downto 0) => right_audio_data_o(23 downto 0),
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_wready_reg => s00_axi_wready,
      dbg_left_audio_rx_o(23 downto 0) => dbg_left_audio_rx_o(23 downto 0),
      dbg_right_audio_rx_o(23 downto 0) => dbg_right_audio_rx_o(23 downto 0),
      dds_enable_i => dds_enable_i,
      \left_axi_tx_reg[23]\(23 downto 0) => left_audio_data_o(23 downto 0),
      left_dds_phase_inc_dbg_o(11 downto 0) => left_dds_phase_inc_dbg_o(11 downto 0),
      right_dds_phase_inc_dbg_o(11 downto 0) => right_dds_phase_inc_dbg_o(11 downto 0),
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
clock_generation: entity work.design_1_axis_i2s_wrapper_0_0_i2s_clock_gen
     port map (
      ac_adc_lrclk_o => ac_adc_lrclk_o,
      ac_bclk_o => ac_bclk_o,
      ac_dac_lrclk_o => ac_dac_lrclk_o,
      ac_mclk_o => ac_mclk_o,
      bclk_o => bclk_o,
      slow_clock_bufg => \^lrclk_o\,
      sysclk_i => sysclk_i
    );
\left_axi_tx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_100,
      Q => left_axi_tx(0),
      R => '0'
    );
\left_axi_tx_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_90,
      Q => left_axi_tx(10),
      R => '0'
    );
\left_axi_tx_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_89,
      Q => left_axi_tx(11),
      R => '0'
    );
\left_axi_tx_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_88,
      Q => left_axi_tx(12),
      R => '0'
    );
\left_axi_tx_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_87,
      Q => left_axi_tx(13),
      R => '0'
    );
\left_axi_tx_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_86,
      Q => left_axi_tx(14),
      R => '0'
    );
\left_axi_tx_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_85,
      Q => left_axi_tx(15),
      R => '0'
    );
\left_axi_tx_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_84,
      Q => left_axi_tx(16),
      R => '0'
    );
\left_axi_tx_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_83,
      Q => left_axi_tx(17),
      R => '0'
    );
\left_axi_tx_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_82,
      Q => left_axi_tx(18),
      R => '0'
    );
\left_axi_tx_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_81,
      Q => left_axi_tx(19),
      R => '0'
    );
\left_axi_tx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_99,
      Q => left_axi_tx(1),
      R => '0'
    );
\left_axi_tx_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_80,
      Q => left_axi_tx(20),
      R => '0'
    );
\left_axi_tx_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_79,
      Q => left_axi_tx(21),
      R => '0'
    );
\left_axi_tx_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_78,
      Q => left_axi_tx(22),
      R => '0'
    );
\left_axi_tx_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_77,
      Q => left_axi_tx(23),
      R => '0'
    );
\left_axi_tx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_98,
      Q => left_axi_tx(2),
      R => '0'
    );
\left_axi_tx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_97,
      Q => left_axi_tx(3),
      R => '0'
    );
\left_axi_tx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_96,
      Q => left_axi_tx(4),
      R => '0'
    );
\left_axi_tx_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_95,
      Q => left_axi_tx(5),
      R => '0'
    );
\left_axi_tx_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_94,
      Q => left_axi_tx(6),
      R => '0'
    );
\left_axi_tx_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_93,
      Q => left_axi_tx(7),
      R => '0'
    );
\left_axi_tx_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_92,
      Q => left_axi_tx(8),
      R => '0'
    );
\left_axi_tx_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_91,
      Q => left_axi_tx(9),
      R => '0'
    );
receiver: entity work.design_1_axis_i2s_wrapper_0_0_i2s_receiver
     port map (
      CLK => bclk_o,
      D(23 downto 0) => input_data(23 downto 0),
      \FSM_sequential_curr_state_reg[0]_0\ => \^lrclk_o\,
      Q(23 downto 0) => left_audio_data_o(23 downto 0),
      ac_adc_data_i => ac_adc_data_i,
      curr_state(1 downto 0) => curr_state(1 downto 0),
      \right_audio_data_o_reg[23]_0\(23 downto 0) => right_audio_data_o(23 downto 0)
    );
\right_axi_tx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_76,
      Q => right_axi_tx(0),
      R => '0'
    );
\right_axi_tx_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_66,
      Q => right_axi_tx(10),
      R => '0'
    );
\right_axi_tx_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_65,
      Q => right_axi_tx(11),
      R => '0'
    );
\right_axi_tx_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_64,
      Q => right_axi_tx(12),
      R => '0'
    );
\right_axi_tx_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_63,
      Q => right_axi_tx(13),
      R => '0'
    );
\right_axi_tx_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_62,
      Q => right_axi_tx(14),
      R => '0'
    );
\right_axi_tx_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_61,
      Q => right_axi_tx(15),
      R => '0'
    );
\right_axi_tx_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_60,
      Q => right_axi_tx(16),
      R => '0'
    );
\right_axi_tx_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_59,
      Q => right_axi_tx(17),
      R => '0'
    );
\right_axi_tx_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_58,
      Q => right_axi_tx(18),
      R => '0'
    );
\right_axi_tx_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_57,
      Q => right_axi_tx(19),
      R => '0'
    );
\right_axi_tx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_75,
      Q => right_axi_tx(1),
      R => '0'
    );
\right_axi_tx_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_56,
      Q => right_axi_tx(20),
      R => '0'
    );
\right_axi_tx_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_55,
      Q => right_axi_tx(21),
      R => '0'
    );
\right_axi_tx_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_54,
      Q => right_axi_tx(22),
      R => '0'
    );
\right_axi_tx_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_53,
      Q => right_axi_tx(23),
      R => '0'
    );
\right_axi_tx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_74,
      Q => right_axi_tx(2),
      R => '0'
    );
\right_axi_tx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_73,
      Q => right_axi_tx(3),
      R => '0'
    );
\right_axi_tx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_72,
      Q => right_axi_tx(4),
      R => '0'
    );
\right_axi_tx_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_71,
      Q => right_axi_tx(5),
      R => '0'
    );
\right_axi_tx_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_70,
      Q => right_axi_tx(6),
      R => '0'
    );
\right_axi_tx_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_69,
      Q => right_axi_tx(7),
      R => '0'
    );
\right_axi_tx_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_68,
      Q => right_axi_tx(8),
      R => '0'
    );
\right_axi_tx_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk_i,
      CE => '1',
      D => axis_dds_n_67,
      Q => right_axi_tx(9),
      R => '0'
    );
transmitter: entity work.design_1_axis_i2s_wrapper_0_0_i2s_transmitter
     port map (
      CLK => bclk_o,
      D(23 downto 0) => input_data(23 downto 0),
      \FSM_sequential_curr_state_reg[0]_0\ => \^lrclk_o\,
      \FSM_sequential_curr_state_reg[1]_0\(1 downto 0) => curr_state(1 downto 0),
      ac_dac_data_o => ac_dac_data_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_i2s_wrapper_0_0 is
  port (
    sysclk_i : in STD_LOGIC;
    ac_mute_en_i : in STD_LOGIC;
    dds_enable_i : in STD_LOGIC;
    ac_bclk_o : out STD_LOGIC;
    ac_mclk_o : out STD_LOGIC;
    ac_mute_n_o : out STD_LOGIC;
    ac_dac_data_o : out STD_LOGIC;
    ac_dac_lrclk_o : out STD_LOGIC;
    ac_adc_data_i : in STD_LOGIC;
    ac_adc_lrclk_o : out STD_LOGIC;
    lrclk_o : out STD_LOGIC;
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
    left_dds_phase_inc_dbg_o : out STD_LOGIC_VECTOR ( 11 downto 0 );
    dbg_right_audio_rx_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    right_dds_phase_inc_dbg_o : out STD_LOGIC_VECTOR ( 11 downto 0 );
    lrclk_dbg : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axis_i2s_wrapper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axis_i2s_wrapper_0_0 : entity is "design_1_axis_i2s_wrapper_0_0,axis_i2s_wrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axis_i2s_wrapper_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_axis_i2s_wrapper_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_axis_i2s_wrapper_0_0 : entity is "axis_i2s_wrapper,Vivado 2021.2";
end design_1_axis_i2s_wrapper_0_0;

architecture STRUCTURE of design_1_axis_i2s_wrapper_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m00_axis_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_ac_mute_n_o_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m00_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 1 );
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
  attribute X_INTERFACE_PARAMETER of m00_axis_aclk : signal is "XIL_INTERFACENAME m00_axis_aclk, ASSOCIATED_BUSIF m00_axis, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 1e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 m00_axis_aresetn RST";
  attribute X_INTERFACE_PARAMETER of m00_axis_aresetn : signal is "XIL_INTERFACENAME m00_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m00_axis TLAST";
  attribute X_INTERFACE_INFO of m00_axis_tready : signal is "xilinx.com:interface:axis:1.0 m00_axis TREADY";
  attribute X_INTERFACE_PARAMETER of m00_axis_tready : signal is "XIL_INTERFACENAME m00_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m00_axis TVALID";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 1e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s00_axi BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s00_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s00_axi WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi WVALID";
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
begin
  ac_mute_n_o <= \<const1>\;
  m00_axis_tdata(31 downto 8) <= \^m00_axis_tdata\(31 downto 8);
  m00_axis_tdata(7) <= \<const0>\;
  m00_axis_tdata(6) <= \<const0>\;
  m00_axis_tdata(5) <= \<const0>\;
  m00_axis_tdata(4) <= \<const0>\;
  m00_axis_tdata(3) <= \<const0>\;
  m00_axis_tdata(2) <= \<const0>\;
  m00_axis_tdata(1) <= \<const0>\;
  m00_axis_tdata(0) <= \^m00_axis_tdata\(0);
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
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_axis_i2s_wrapper_0_0_axis_i2s_wrapper
     port map (
      ac_adc_data_i => ac_adc_data_i,
      ac_adc_lrclk_o => ac_adc_lrclk_o,
      ac_bclk_o => ac_bclk_o,
      ac_dac_data_o => ac_dac_data_o,
      ac_dac_lrclk_o => ac_dac_lrclk_o,
      ac_mclk_o => ac_mclk_o,
      ac_mute_en_i => '0',
      ac_mute_n_o => NLW_inst_ac_mute_n_o_UNCONNECTED,
      dbg_left_audio_rx_o(23 downto 0) => dbg_left_audio_rx_o(23 downto 0),
      dbg_right_audio_rx_o(23 downto 0) => dbg_right_audio_rx_o(23 downto 0),
      dds_enable_i => dds_enable_i,
      left_dds_phase_inc_dbg_o(11 downto 0) => left_dds_phase_inc_dbg_o(11 downto 0),
      lrclk_dbg => lrclk_dbg,
      lrclk_o => lrclk_o,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tdata(31 downto 8) => \^m00_axis_tdata\(31 downto 8),
      m00_axis_tdata(7 downto 1) => NLW_inst_m00_axis_tdata_UNCONNECTED(7 downto 1),
      m00_axis_tdata(0) => \^m00_axis_tdata\(0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tstrb(3 downto 0) => NLW_inst_m00_axis_tstrb_UNCONNECTED(3 downto 0),
      m00_axis_tvalid => m00_axis_tvalid,
      right_dds_phase_inc_dbg_o(11 downto 0) => right_dds_phase_inc_dbg_o(11 downto 0),
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
      sysclk_i => sysclk_i
    );
end STRUCTURE;
