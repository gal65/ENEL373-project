-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue May 12 13:40:32 2020
-- Host        : DESKTOP-GSRJ7F3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/penis
--               head/Documents/ENCE373PROJECT/rxnmongroup4/project_1/project_1.sim/sim_1/impl/func/xsim/counter_tb_func_impl.vhd}
-- Design      : ctr_top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Multiplex is
  port (
    DP_OBUF : out STD_LOGIC;
    \temp_reg[5]_0\ : out STD_LOGIC;
    \temp_reg[0]_0\ : out STD_LOGIC;
    \temp_reg[0]_1\ : out STD_LOGIC;
    CF_OBUF : out STD_LOGIC;
    CD_OBUF : out STD_LOGIC;
    CA_OBUF : out STD_LOGIC;
    CG_OBUF : out STD_LOGIC;
    CE_OBUF : out STD_LOGIC;
    CC_OBUF : out STD_LOGIC;
    CB_OBUF : out STD_LOGIC;
    \disp_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dec_point_reg_0 : in STD_LOGIC;
    CLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \cntr_out_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \cntr_out_reg[3]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \cntr_out_reg[3]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S3 : in STD_LOGIC;
    S4 : in STD_LOGIC
  );
end Multiplex;

architecture STRUCTURE of Multiplex is
  signal Cntr_out : STD_LOGIC_VECTOR ( 0 to 3 );
  signal \cntr_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \cntr_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \cntr_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \cntr_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \cntr_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \cntr_out[2]_i_2_n_0\ : STD_LOGIC;
  signal \cntr_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \cntr_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \cntr_out[3]_i_4_n_0\ : STD_LOGIC;
  signal temp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^temp_reg[5]_0\ : STD_LOGIC;
begin
  \temp_reg[5]_0\ <= \^temp_reg[5]_0\;
CA_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111111FF111F1111"
    )
        port map (
      I0 => S4,
      I1 => S3,
      I2 => Cntr_out(2),
      I3 => Cntr_out(0),
      I4 => Cntr_out(3),
      I5 => Cntr_out(1),
      O => CA_OBUF
    );
CB_OBUF_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03ABAB03"
    )
        port map (
      I0 => Cntr_out(1),
      I1 => S4,
      I2 => S3,
      I3 => Cntr_out(2),
      I4 => Cntr_out(3),
      O => CB_OBUF
    );
CC_OBUF_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"040404FF"
    )
        port map (
      I0 => Cntr_out(3),
      I1 => Cntr_out(2),
      I2 => Cntr_out(1),
      I3 => S3,
      I4 => S4,
      O => CC_OBUF
    );
CD_OBUF_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F1111FF1"
    )
        port map (
      I0 => S4,
      I1 => S3,
      I2 => Cntr_out(1),
      I3 => Cntr_out(3),
      I4 => Cntr_out(2),
      O => CD_OBUF
    );
CE_OBUF_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F1FFF1F1"
    )
        port map (
      I0 => S4,
      I1 => S3,
      I2 => Cntr_out(3),
      I3 => Cntr_out(2),
      I4 => Cntr_out(1),
      O => CE_OBUF
    );
CF_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888FAAAF888FEEEF"
    )
        port map (
      I0 => Cntr_out(2),
      I1 => Cntr_out(3),
      I2 => S3,
      I3 => S4,
      I4 => Cntr_out(1),
      I5 => Cntr_out(0),
      O => CF_OBUF
    );
CG_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11F11111111111FF"
    )
        port map (
      I0 => S4,
      I1 => S3,
      I2 => Cntr_out(3),
      I3 => Cntr_out(0),
      I4 => Cntr_out(2),
      I5 => Cntr_out(1),
      O => CG_OBUF
    );
\cntr_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A00000ACA0"
    )
        port map (
      I0 => \cntr_out[0]_i_2_n_0\,
      I1 => Q(0),
      I2 => temp(0),
      I3 => temp(3),
      I4 => \^temp_reg[5]_0\,
      I5 => \cntr_out[3]_i_4_n_0\,
      O => \cntr_out[0]_i_1_n_0\
    );
\cntr_out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA00CC000000"
    )
        port map (
      I0 => \cntr_out_reg[3]_0\(0),
      I1 => \cntr_out_reg[3]_1\(0),
      I2 => \cntr_out_reg[3]_2\(0),
      I3 => temp(1),
      I4 => temp(3),
      I5 => temp(2),
      O => \cntr_out[0]_i_2_n_0\
    );
\cntr_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A00000ACA0"
    )
        port map (
      I0 => \cntr_out[1]_i_2_n_0\,
      I1 => Q(1),
      I2 => temp(0),
      I3 => temp(3),
      I4 => \^temp_reg[5]_0\,
      I5 => \cntr_out[3]_i_4_n_0\,
      O => \cntr_out[1]_i_1_n_0\
    );
\cntr_out[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA00CC000000"
    )
        port map (
      I0 => \cntr_out_reg[3]_0\(1),
      I1 => \cntr_out_reg[3]_1\(1),
      I2 => \cntr_out_reg[3]_2\(1),
      I3 => temp(1),
      I4 => temp(3),
      I5 => temp(2),
      O => \cntr_out[1]_i_2_n_0\
    );
\cntr_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A00000ACA0"
    )
        port map (
      I0 => \cntr_out[2]_i_2_n_0\,
      I1 => Q(2),
      I2 => temp(0),
      I3 => temp(3),
      I4 => \^temp_reg[5]_0\,
      I5 => \cntr_out[3]_i_4_n_0\,
      O => \cntr_out[2]_i_1_n_0\
    );
\cntr_out[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA00CC000000"
    )
        port map (
      I0 => \cntr_out_reg[3]_0\(2),
      I1 => \cntr_out_reg[3]_1\(2),
      I2 => \cntr_out_reg[3]_2\(2),
      I3 => temp(1),
      I4 => temp(3),
      I5 => temp(2),
      O => \cntr_out[2]_i_2_n_0\
    );
\cntr_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A00000ACA0"
    )
        port map (
      I0 => \cntr_out[3]_i_2_n_0\,
      I1 => Q(3),
      I2 => temp(0),
      I3 => temp(3),
      I4 => \^temp_reg[5]_0\,
      I5 => \cntr_out[3]_i_4_n_0\,
      O => \cntr_out[3]_i_1_n_0\
    );
\cntr_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA00CC000000"
    )
        port map (
      I0 => \cntr_out_reg[3]_0\(3),
      I1 => \cntr_out_reg[3]_1\(3),
      I2 => \cntr_out_reg[3]_2\(3),
      I3 => temp(1),
      I4 => temp(3),
      I5 => temp(2),
      O => \cntr_out[3]_i_2_n_0\
    );
\cntr_out[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => temp(5),
      I1 => temp(4),
      I2 => temp(7),
      I3 => temp(6),
      O => \^temp_reg[5]_0\
    );
\cntr_out[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => temp(1),
      I1 => temp(2),
      O => \cntr_out[3]_i_4_n_0\
    );
\cntr_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cntr_out[0]_i_1_n_0\,
      Q => Cntr_out(3),
      R => '0'
    );
\cntr_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cntr_out[1]_i_1_n_0\,
      Q => Cntr_out(2),
      R => '0'
    );
\cntr_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cntr_out[2]_i_1_n_0\,
      Q => Cntr_out(1),
      R => '0'
    );
\cntr_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cntr_out[3]_i_1_n_0\,
      Q => Cntr_out(0),
      R => '0'
    );
dec_point_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4080"
    )
        port map (
      I0 => temp(0),
      I1 => temp(1),
      I2 => temp(3),
      I3 => temp(2),
      O => \temp_reg[0]_0\
    );
dec_point_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2080"
    )
        port map (
      I0 => temp(0),
      I1 => temp(1),
      I2 => temp(3),
      I3 => temp(2),
      O => \temp_reg[0]_1\
    );
dec_point_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => dec_point_reg_0,
      Q => DP_OBUF,
      R => '0'
    );
\disp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => temp(0),
      Q => \disp_reg[7]_0\(0),
      R => '0'
    );
\disp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => temp(1),
      Q => \disp_reg[7]_0\(1),
      R => '0'
    );
\disp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => temp(2),
      Q => \disp_reg[7]_0\(2),
      R => '0'
    );
\disp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => temp(3),
      Q => \disp_reg[7]_0\(3),
      R => '0'
    );
\disp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => temp(4),
      Q => \disp_reg[7]_0\(4),
      R => '0'
    );
\disp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => temp(5),
      Q => \disp_reg[7]_0\(5),
      R => '0'
    );
\disp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => temp(6),
      Q => \disp_reg[7]_0\(6),
      R => '0'
    );
\disp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => temp(7),
      Q => \disp_reg[7]_0\(7),
      R => '0'
    );
\temp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => temp(7),
      Q => temp(0),
      R => '0'
    );
\temp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => temp(0),
      Q => temp(1),
      R => '0'
    );
\temp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => temp(1),
      Q => temp(2),
      R => '0'
    );
\temp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => temp(2),
      Q => temp(3),
      R => '0'
    );
\temp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => temp(3),
      Q => temp(4),
      R => '0'
    );
\temp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => temp(4),
      Q => temp(5),
      R => '0'
    );
\temp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => temp(5),
      Q => temp(6),
      R => '0'
    );
\temp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => temp(6),
      Q => temp(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cntr_clk is
  port (
    CLK : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \^clk\ : in STD_LOGIC;
    S3 : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end cntr_clk;

architecture STRUCTURE of cntr_clk is
  signal \^clk_1\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal shift_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair0";
begin
  CLK <= \^clk_1\;
  Q(3 downto 0) <= \^q\(3 downto 0);
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => p_0_in(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6266"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => p_0_in(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => p_0_in(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7B80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => p_0_in(3)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => S3,
      CLR => AR(0),
      D => p_0_in(0),
      Q => \^q\(0)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => S3,
      CLR => AR(0),
      D => p_0_in(1),
      Q => \^q\(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => S3,
      CLR => AR(0),
      D => p_0_in(2),
      Q => \^q\(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => S3,
      CLR => AR(0),
      D => p_0_in(3),
      Q => \^q\(3)
    );
shift_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFFF00200000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => S3,
      I5 => \^clk_1\,
      O => shift_i_1_n_0
    );
shift_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => shift_i_1_n_0,
      Q => \^clk_1\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cntr_clk_0 is
  port (
    shift_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    S3 : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cntr_clk_0 : entity is "cntr_clk";
end cntr_clk_0;

architecture STRUCTURE of cntr_clk_0 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \shift_i_1__0_n_0\ : STD_LOGIC;
  signal \^shift_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[1]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[2]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[3]_i_1__0\ : label is "soft_lutpair2";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  shift_reg_0 <= \^shift_reg_0\;
\counter[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \p_0_in__0\(0)
    );
\counter[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6266"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \p_0_in__0\(1)
    );
\counter[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \p_0_in__0\(2)
    );
\counter[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7B80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \p_0_in__0\(3)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => S3,
      CLR => AR(0),
      D => \p_0_in__0\(0),
      Q => \^q\(0)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => S3,
      CLR => AR(0),
      D => \p_0_in__0\(1),
      Q => \^q\(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => S3,
      CLR => AR(0),
      D => \p_0_in__0\(2),
      Q => \^q\(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => S3,
      CLR => AR(0),
      D => \p_0_in__0\(3),
      Q => \^q\(3)
    );
\shift_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFFF00200000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => S3,
      I5 => \^shift_reg_0\,
      O => \shift_i_1__0_n_0\
    );
shift_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \shift_i_1__0_n_0\,
      Q => \^shift_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cntr_clk_1 is
  port (
    shift_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \counter_reg[3]_0\ : in STD_LOGIC;
    S3 : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cntr_clk_1 : entity is "cntr_clk";
end cntr_clk_1;

architecture STRUCTURE of cntr_clk_1 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \shift_i_1__1_n_0\ : STD_LOGIC;
  signal \^shift_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[1]_i_1__1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter[2]_i_1__1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[3]_i_1__1\ : label is "soft_lutpair4";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  shift_reg_0 <= \^shift_reg_0\;
\counter[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \p_0_in__1\(0)
    );
\counter[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6266"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \p_0_in__1\(1)
    );
\counter[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \p_0_in__1\(2)
    );
\counter[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7B80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \p_0_in__1\(3)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[3]_0\,
      CE => S3,
      CLR => AR(0),
      D => \p_0_in__1\(0),
      Q => \^q\(0)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[3]_0\,
      CE => S3,
      CLR => AR(0),
      D => \p_0_in__1\(1),
      Q => \^q\(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[3]_0\,
      CE => S3,
      CLR => AR(0),
      D => \p_0_in__1\(2),
      Q => \^q\(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[3]_0\,
      CE => S3,
      CLR => AR(0),
      D => \p_0_in__1\(3),
      Q => \^q\(3)
    );
\shift_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFFF00200000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => S3,
      I5 => \^shift_reg_0\,
      O => \shift_i_1__1_n_0\
    );
shift_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[3]_0\,
      CE => '1',
      D => \shift_i_1__1_n_0\,
      Q => \^shift_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cntr_clk_2 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S3 : in STD_LOGIC;
    \counter_reg[3]_0\ : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cntr_clk_2 : entity is "cntr_clk";
end cntr_clk_2;

architecture STRUCTURE of cntr_clk_2 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[1]_i_1__2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter[2]_i_1__2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[3]_i_1__2\ : label is "soft_lutpair6";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\counter[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \p_0_in__2\(0)
    );
\counter[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6266"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \p_0_in__2\(1)
    );
\counter[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \p_0_in__2\(2)
    );
\counter[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7B80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \p_0_in__2\(3)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[3]_0\,
      CE => S3,
      CLR => AR(0),
      D => \p_0_in__2\(0),
      Q => \^q\(0)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[3]_0\,
      CE => S3,
      CLR => AR(0),
      D => \p_0_in__2\(1),
      Q => \^q\(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[3]_0\,
      CE => S3,
      CLR => AR(0),
      D => \p_0_in__2\(2),
      Q => \^q\(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter_reg[3]_0\,
      CE => S3,
      CLR => AR(0),
      D => \p_0_in__2\(3),
      Q => \^q\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity counter is
  port (
    countdown_out : out STD_LOGIC;
    CLK100MHZ_IBUF_BUFG : in STD_LOGIC
  );
end counter;

architecture STRUCTURE of counter is
  signal Buff_i_1_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \count[0]_i_3_n_0\ : STD_LOGIC;
  signal \count[0]_i_4_n_0\ : STD_LOGIC;
  signal \count[0]_i_5_n_0\ : STD_LOGIC;
  signal \count[0]_i_6_n_0\ : STD_LOGIC;
  signal \count[0]_i_7_n_0\ : STD_LOGIC;
  signal \count[0]_i_8_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^countdown_out\ : STD_LOGIC;
  signal \NLW_count_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \count_reg[0]_i_2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \count_reg[12]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \count_reg[16]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \count_reg[20]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \count_reg[24]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \count_reg[4]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \count_reg[8]_i_1\ : label is "SWEEP";
begin
  countdown_out <= \^countdown_out\;
Buff_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \count[0]_i_7_n_0\,
      I1 => \count[0]_i_6_n_0\,
      I2 => \count[0]_i_5_n_0\,
      I3 => \count[0]_i_4_n_0\,
      I4 => \count[0]_i_3_n_0\,
      I5 => \^countdown_out\,
      O => Buff_i_1_n_0
    );
Buff_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => Buff_i_1_n_0,
      Q => \^countdown_out\,
      R => '0'
    );
\count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \count[0]_i_3_n_0\,
      I1 => \count[0]_i_4_n_0\,
      I2 => \count[0]_i_5_n_0\,
      I3 => \count[0]_i_6_n_0\,
      I4 => \count[0]_i_7_n_0\,
      O => clear
    );
\count[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count_reg(18),
      I1 => count_reg(19),
      I2 => count_reg(16),
      I3 => count_reg(17),
      I4 => count_reg(21),
      I5 => count_reg(20),
      O => \count[0]_i_3_n_0\
    );
\count[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count_reg(24),
      I1 => count_reg(25),
      I2 => count_reg(22),
      I3 => count_reg(23),
      I4 => count_reg(27),
      I5 => count_reg(26),
      O => \count[0]_i_4_n_0\
    );
\count[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => count_reg(12),
      I1 => count_reg(13),
      I2 => count_reg(10),
      I3 => count_reg(11),
      I4 => count_reg(15),
      I5 => count_reg(14),
      O => \count[0]_i_5_n_0\
    );
\count[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      I2 => count_reg(3),
      I3 => count_reg(2),
      O => \count[0]_i_6_n_0\
    );
\count[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => count_reg(7),
      I1 => count_reg(6),
      I2 => count_reg(4),
      I3 => count_reg(5),
      I4 => count_reg(8),
      I5 => count_reg(9),
      O => \count[0]_i_7_n_0\
    );
\count[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_8_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[0]_i_2_n_7\,
      Q => count_reg(0),
      R => clear
    );
\count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_2_n_0\,
      CO(2 downto 0) => \NLW_count_reg[0]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_reg[0]_i_2_n_4\,
      O(2) => \count_reg[0]_i_2_n_5\,
      O(1) => \count_reg[0]_i_2_n_6\,
      O(0) => \count_reg[0]_i_2_n_7\,
      S(3 downto 1) => count_reg(3 downto 1),
      S(0) => \count[0]_i_8_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[8]_i_1_n_5\,
      Q => count_reg(10),
      R => clear
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[8]_i_1_n_4\,
      Q => count_reg(11),
      R => clear
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[12]_i_1_n_7\,
      Q => count_reg(12),
      R => clear
    );
\count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3) => \count_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1_n_4\,
      O(2) => \count_reg[12]_i_1_n_5\,
      O(1) => \count_reg[12]_i_1_n_6\,
      O(0) => \count_reg[12]_i_1_n_7\,
      S(3 downto 0) => count_reg(15 downto 12)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[12]_i_1_n_6\,
      Q => count_reg(13),
      R => clear
    );
\count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[12]_i_1_n_5\,
      Q => count_reg(14),
      R => clear
    );
\count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[12]_i_1_n_4\,
      Q => count_reg(15),
      R => clear
    );
\count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[16]_i_1_n_7\,
      Q => count_reg(16),
      R => clear
    );
\count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1_n_0\,
      CO(3) => \count_reg[16]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[16]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[16]_i_1_n_4\,
      O(2) => \count_reg[16]_i_1_n_5\,
      O(1) => \count_reg[16]_i_1_n_6\,
      O(0) => \count_reg[16]_i_1_n_7\,
      S(3 downto 0) => count_reg(19 downto 16)
    );
\count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[16]_i_1_n_6\,
      Q => count_reg(17),
      R => clear
    );
\count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[16]_i_1_n_5\,
      Q => count_reg(18),
      R => clear
    );
\count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[16]_i_1_n_4\,
      Q => count_reg(19),
      R => clear
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[0]_i_2_n_6\,
      Q => count_reg(1),
      R => clear
    );
\count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[20]_i_1_n_7\,
      Q => count_reg(20),
      R => clear
    );
\count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[16]_i_1_n_0\,
      CO(3) => \count_reg[20]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[20]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[20]_i_1_n_4\,
      O(2) => \count_reg[20]_i_1_n_5\,
      O(1) => \count_reg[20]_i_1_n_6\,
      O(0) => \count_reg[20]_i_1_n_7\,
      S(3 downto 0) => count_reg(23 downto 20)
    );
\count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[20]_i_1_n_6\,
      Q => count_reg(21),
      R => clear
    );
\count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[20]_i_1_n_5\,
      Q => count_reg(22),
      R => clear
    );
\count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[20]_i_1_n_4\,
      Q => count_reg(23),
      R => clear
    );
\count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[24]_i_1_n_7\,
      Q => count_reg(24),
      R => clear
    );
\count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[20]_i_1_n_0\,
      CO(3 downto 0) => \NLW_count_reg[24]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[24]_i_1_n_4\,
      O(2) => \count_reg[24]_i_1_n_5\,
      O(1) => \count_reg[24]_i_1_n_6\,
      O(0) => \count_reg[24]_i_1_n_7\,
      S(3 downto 0) => count_reg(27 downto 24)
    );
\count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[24]_i_1_n_6\,
      Q => count_reg(25),
      R => clear
    );
\count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[24]_i_1_n_5\,
      Q => count_reg(26),
      R => clear
    );
\count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[24]_i_1_n_4\,
      Q => count_reg(27),
      R => clear
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[0]_i_2_n_5\,
      Q => count_reg(2),
      R => clear
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[0]_i_2_n_4\,
      Q => count_reg(3),
      R => clear
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[4]_i_1_n_7\,
      Q => count_reg(4),
      R => clear
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_2_n_0\,
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1_n_4\,
      O(2) => \count_reg[4]_i_1_n_5\,
      O(1) => \count_reg[4]_i_1_n_6\,
      O(0) => \count_reg[4]_i_1_n_7\,
      S(3 downto 0) => count_reg(7 downto 4)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[4]_i_1_n_6\,
      Q => count_reg(5),
      R => clear
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[4]_i_1_n_5\,
      Q => count_reg(6),
      R => clear
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[4]_i_1_n_4\,
      Q => count_reg(7),
      R => clear
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[8]_i_1_n_7\,
      Q => count_reg(8),
      R => clear
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1_n_4\,
      O(2) => \count_reg[8]_i_1_n_5\,
      O(1) => \count_reg[8]_i_1_n_6\,
      O(0) => \count_reg[8]_i_1_n_7\,
      S(3 downto 0) => count_reg(11 downto 8)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \count_reg[8]_i_1_n_6\,
      Q => count_reg(9),
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dot_control is
  port (
    \FSM_onehot_temp_dec_pos_reg[2]_0\ : out STD_LOGIC;
    dec_point_reg : in STD_LOGIC;
    dec_point_reg_0 : in STD_LOGIC;
    dec_point_reg_1 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC
  );
end dot_control;

architecture STRUCTURE of dot_control is
  signal \FSM_onehot_temp_dec_pos_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_temp_dec_pos_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_temp_dec_pos_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_temp_dec_pos_reg_n_0_[3]\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_temp_dec_pos_reg[0]\ : label is "iSTATE:0001,iSTATE0:0010,iSTATE1:0100,iSTATE2:1000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_temp_dec_pos_reg[1]\ : label is "iSTATE:0001,iSTATE0:0010,iSTATE1:0100,iSTATE2:1000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_temp_dec_pos_reg[2]\ : label is "iSTATE:0001,iSTATE0:0010,iSTATE1:0100,iSTATE2:1000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_temp_dec_pos_reg[3]\ : label is "iSTATE:0001,iSTATE0:0010,iSTATE1:0100,iSTATE2:1000,";
begin
\FSM_onehot_temp_dec_pos_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \FSM_onehot_temp_dec_pos_reg_n_0_[3]\,
      Q => \FSM_onehot_temp_dec_pos_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_temp_dec_pos_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \FSM_onehot_temp_dec_pos_reg_n_0_[0]\,
      Q => \FSM_onehot_temp_dec_pos_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_temp_dec_pos_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \FSM_onehot_temp_dec_pos_reg_n_0_[1]\,
      Q => \FSM_onehot_temp_dec_pos_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_temp_dec_pos_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \FSM_onehot_temp_dec_pos_reg_n_0_[2]\,
      Q => \FSM_onehot_temp_dec_pos_reg_n_0_[3]\,
      R => '0'
    );
dec_point_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33FF11FF01FFFF"
    )
        port map (
      I0 => \FSM_onehot_temp_dec_pos_reg_n_0_[2]\,
      I1 => \FSM_onehot_temp_dec_pos_reg_n_0_[3]\,
      I2 => \FSM_onehot_temp_dec_pos_reg_n_0_[1]\,
      I3 => dec_point_reg,
      I4 => dec_point_reg_0,
      I5 => dec_point_reg_1,
      O => \FSM_onehot_temp_dec_pos_reg[2]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity my_divider is
  port (
    CLK : out STD_LOGIC;
    CLK100MHZ_IBUF_BUFG : in STD_LOGIC
  );
end my_divider;

architecture STRUCTURE of my_divider is
  signal \^clk\ : STD_LOGIC;
  signal CLK_BUFG : STD_LOGIC;
  signal \clk_ctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_ctr[0]_i_3_n_0\ : STD_LOGIC;
  signal \clk_ctr[0]_i_4_n_0\ : STD_LOGIC;
  signal \clk_ctr[0]_i_5_n_0\ : STD_LOGIC;
  signal \clk_ctr[0]_i_6_n_0\ : STD_LOGIC;
  signal \clk_ctr[0]_i_7_n_0\ : STD_LOGIC;
  signal \clk_ctr[0]_i_8_n_0\ : STD_LOGIC;
  signal clk_ctr_reg : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \clk_ctr_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \clk_ctr_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \clk_ctr_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \clk_ctr_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \clk_ctr_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \clk_ctr_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \clk_ctr_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \clk_ctr_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \clk_ctr_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \clk_ctr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \clk_ctr_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \clk_ctr_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \clk_ctr_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \clk_ctr_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \clk_ctr_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \clk_ctr_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \clk_ctr_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \clk_ctr_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \clk_ctr_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \clk_ctr_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \clk_ctr_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \clk_ctr_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \clk_ctr_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \clk_ctr_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \clk_ctr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \clk_ctr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \clk_ctr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \clk_ctr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \clk_ctr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \clk_ctr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \clk_ctr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \clk_ctr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \clk_ctr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \clk_ctr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal temp_clk_i_1_n_0 : STD_LOGIC;
  signal \NLW_clk_ctr_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_clk_ctr_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_clk_ctr_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_clk_ctr_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_clk_ctr_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_clk_ctr_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_clk_ctr_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute LOPT_BUFG_CLOCK : boolean;
  attribute LOPT_BUFG_CLOCK of CLK_BUFG_inst : label is std.standard.true;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of CLK_BUFG_inst : label is "BUFG_OPT";
  attribute OPT_MODIFIED of \clk_ctr_reg[0]_i_2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \clk_ctr_reg[12]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \clk_ctr_reg[16]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \clk_ctr_reg[20]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \clk_ctr_reg[24]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \clk_ctr_reg[4]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \clk_ctr_reg[8]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of temp_clk_reg : label is "BUFG_OPT";
begin
  CLK <= CLK_BUFG;
CLK_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => \^clk\,
      O => CLK_BUFG
    );
\clk_ctr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \clk_ctr[0]_i_3_n_0\,
      I1 => \clk_ctr[0]_i_4_n_0\,
      I2 => \clk_ctr[0]_i_5_n_0\,
      I3 => \clk_ctr[0]_i_6_n_0\,
      I4 => \clk_ctr[0]_i_7_n_0\,
      O => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => clk_ctr_reg(18),
      I1 => clk_ctr_reg(19),
      I2 => clk_ctr_reg(16),
      I3 => clk_ctr_reg(17),
      I4 => clk_ctr_reg(21),
      I5 => clk_ctr_reg(20),
      O => \clk_ctr[0]_i_3_n_0\
    );
\clk_ctr[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => clk_ctr_reg(24),
      I1 => clk_ctr_reg(25),
      I2 => clk_ctr_reg(22),
      I3 => clk_ctr_reg(23),
      I4 => clk_ctr_reg(27),
      I5 => clk_ctr_reg(26),
      O => \clk_ctr[0]_i_4_n_0\
    );
\clk_ctr[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => clk_ctr_reg(13),
      I1 => clk_ctr_reg(12),
      I2 => clk_ctr_reg(10),
      I3 => clk_ctr_reg(11),
      I4 => clk_ctr_reg(15),
      I5 => clk_ctr_reg(14),
      O => \clk_ctr[0]_i_5_n_0\
    );
\clk_ctr[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => clk_ctr_reg(1),
      I1 => clk_ctr_reg(0),
      I2 => clk_ctr_reg(2),
      I3 => clk_ctr_reg(3),
      O => \clk_ctr[0]_i_6_n_0\
    );
\clk_ctr[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => clk_ctr_reg(7),
      I1 => clk_ctr_reg(6),
      I2 => clk_ctr_reg(5),
      I3 => clk_ctr_reg(4),
      I4 => clk_ctr_reg(9),
      I5 => clk_ctr_reg(8),
      O => \clk_ctr[0]_i_7_n_0\
    );
\clk_ctr[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_ctr_reg(0),
      O => \clk_ctr[0]_i_8_n_0\
    );
\clk_ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[0]_i_2_n_7\,
      Q => clk_ctr_reg(0),
      R => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clk_ctr_reg[0]_i_2_n_0\,
      CO(2 downto 0) => \NLW_clk_ctr_reg[0]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \clk_ctr_reg[0]_i_2_n_4\,
      O(2) => \clk_ctr_reg[0]_i_2_n_5\,
      O(1) => \clk_ctr_reg[0]_i_2_n_6\,
      O(0) => \clk_ctr_reg[0]_i_2_n_7\,
      S(3 downto 1) => clk_ctr_reg(3 downto 1),
      S(0) => \clk_ctr[0]_i_8_n_0\
    );
\clk_ctr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[8]_i_1_n_5\,
      Q => clk_ctr_reg(10),
      R => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[8]_i_1_n_4\,
      Q => clk_ctr_reg(11),
      R => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[12]_i_1_n_7\,
      Q => clk_ctr_reg(12),
      R => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_ctr_reg[8]_i_1_n_0\,
      CO(3) => \clk_ctr_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_clk_ctr_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_ctr_reg[12]_i_1_n_4\,
      O(2) => \clk_ctr_reg[12]_i_1_n_5\,
      O(1) => \clk_ctr_reg[12]_i_1_n_6\,
      O(0) => \clk_ctr_reg[12]_i_1_n_7\,
      S(3 downto 0) => clk_ctr_reg(15 downto 12)
    );
\clk_ctr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[12]_i_1_n_6\,
      Q => clk_ctr_reg(13),
      R => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[12]_i_1_n_5\,
      Q => clk_ctr_reg(14),
      R => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[12]_i_1_n_4\,
      Q => clk_ctr_reg(15),
      R => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[16]_i_1_n_7\,
      Q => clk_ctr_reg(16),
      R => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_ctr_reg[12]_i_1_n_0\,
      CO(3) => \clk_ctr_reg[16]_i_1_n_0\,
      CO(2 downto 0) => \NLW_clk_ctr_reg[16]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_ctr_reg[16]_i_1_n_4\,
      O(2) => \clk_ctr_reg[16]_i_1_n_5\,
      O(1) => \clk_ctr_reg[16]_i_1_n_6\,
      O(0) => \clk_ctr_reg[16]_i_1_n_7\,
      S(3 downto 0) => clk_ctr_reg(19 downto 16)
    );
\clk_ctr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[16]_i_1_n_6\,
      Q => clk_ctr_reg(17),
      R => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[16]_i_1_n_5\,
      Q => clk_ctr_reg(18),
      R => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[16]_i_1_n_4\,
      Q => clk_ctr_reg(19),
      R => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[0]_i_2_n_6\,
      Q => clk_ctr_reg(1),
      R => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[20]_i_1_n_7\,
      Q => clk_ctr_reg(20),
      R => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_ctr_reg[16]_i_1_n_0\,
      CO(3) => \clk_ctr_reg[20]_i_1_n_0\,
      CO(2 downto 0) => \NLW_clk_ctr_reg[20]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_ctr_reg[20]_i_1_n_4\,
      O(2) => \clk_ctr_reg[20]_i_1_n_5\,
      O(1) => \clk_ctr_reg[20]_i_1_n_6\,
      O(0) => \clk_ctr_reg[20]_i_1_n_7\,
      S(3 downto 0) => clk_ctr_reg(23 downto 20)
    );
\clk_ctr_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[20]_i_1_n_6\,
      Q => clk_ctr_reg(21),
      R => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[20]_i_1_n_5\,
      Q => clk_ctr_reg(22),
      R => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[20]_i_1_n_4\,
      Q => clk_ctr_reg(23),
      R => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[24]_i_1_n_7\,
      Q => clk_ctr_reg(24),
      R => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_ctr_reg[20]_i_1_n_0\,
      CO(3 downto 0) => \NLW_clk_ctr_reg[24]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_ctr_reg[24]_i_1_n_4\,
      O(2) => \clk_ctr_reg[24]_i_1_n_5\,
      O(1) => \clk_ctr_reg[24]_i_1_n_6\,
      O(0) => \clk_ctr_reg[24]_i_1_n_7\,
      S(3 downto 0) => clk_ctr_reg(27 downto 24)
    );
\clk_ctr_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[24]_i_1_n_6\,
      Q => clk_ctr_reg(25),
      R => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[24]_i_1_n_5\,
      Q => clk_ctr_reg(26),
      R => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[24]_i_1_n_4\,
      Q => clk_ctr_reg(27),
      R => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[0]_i_2_n_5\,
      Q => clk_ctr_reg(2),
      R => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[0]_i_2_n_4\,
      Q => clk_ctr_reg(3),
      R => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[4]_i_1_n_7\,
      Q => clk_ctr_reg(4),
      R => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_ctr_reg[0]_i_2_n_0\,
      CO(3) => \clk_ctr_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_clk_ctr_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_ctr_reg[4]_i_1_n_4\,
      O(2) => \clk_ctr_reg[4]_i_1_n_5\,
      O(1) => \clk_ctr_reg[4]_i_1_n_6\,
      O(0) => \clk_ctr_reg[4]_i_1_n_7\,
      S(3 downto 0) => clk_ctr_reg(7 downto 4)
    );
\clk_ctr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[4]_i_1_n_6\,
      Q => clk_ctr_reg(5),
      R => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[4]_i_1_n_5\,
      Q => clk_ctr_reg(6),
      R => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[4]_i_1_n_4\,
      Q => clk_ctr_reg(7),
      R => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[8]_i_1_n_7\,
      Q => clk_ctr_reg(8),
      R => \clk_ctr[0]_i_1_n_0\
    );
\clk_ctr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_ctr_reg[4]_i_1_n_0\,
      CO(3) => \clk_ctr_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_clk_ctr_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_ctr_reg[8]_i_1_n_4\,
      O(2) => \clk_ctr_reg[8]_i_1_n_5\,
      O(1) => \clk_ctr_reg[8]_i_1_n_6\,
      O(0) => \clk_ctr_reg[8]_i_1_n_7\,
      S(3 downto 0) => clk_ctr_reg(11 downto 8)
    );
\clk_ctr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[8]_i_1_n_6\,
      Q => clk_ctr_reg(9),
      R => \clk_ctr[0]_i_1_n_0\
    );
temp_clk_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \clk_ctr[0]_i_7_n_0\,
      I1 => \clk_ctr[0]_i_6_n_0\,
      I2 => \clk_ctr[0]_i_5_n_0\,
      I3 => \clk_ctr[0]_i_4_n_0\,
      I4 => \clk_ctr[0]_i_3_n_0\,
      I5 => CLK_BUFG,
      O => temp_clk_i_1_n_0
    );
temp_clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => temp_clk_i_1_n_0,
      Q => \^clk\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity my_divider_3 is
  port (
    clk : out STD_LOGIC;
    CLK100MHZ_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of my_divider_3 : entity is "my_divider";
end my_divider_3;

architecture STRUCTURE of my_divider_3 is
  signal \^clk\ : STD_LOGIC;
  signal \clk_ctr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \clk_ctr[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \clk_ctr[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \clk_ctr[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \clk_ctr[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \clk_ctr[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \clk_ctr[0]_i_8__0_n_0\ : STD_LOGIC;
  signal clk_ctr_reg : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \clk_ctr_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \clk_ctr_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \clk_ctr_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \clk_ctr_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \clk_ctr_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \clk_ctr_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \clk_ctr_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \clk_ctr_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \clk_ctr_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \clk_ctr_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \clk_ctr_reg[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \clk_ctr_reg[16]_i_1__0_n_4\ : STD_LOGIC;
  signal \clk_ctr_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \clk_ctr_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \clk_ctr_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \clk_ctr_reg[20]_i_1__0_n_0\ : STD_LOGIC;
  signal \clk_ctr_reg[20]_i_1__0_n_4\ : STD_LOGIC;
  signal \clk_ctr_reg[20]_i_1__0_n_5\ : STD_LOGIC;
  signal \clk_ctr_reg[20]_i_1__0_n_6\ : STD_LOGIC;
  signal \clk_ctr_reg[20]_i_1__0_n_7\ : STD_LOGIC;
  signal \clk_ctr_reg[24]_i_1__0_n_4\ : STD_LOGIC;
  signal \clk_ctr_reg[24]_i_1__0_n_5\ : STD_LOGIC;
  signal \clk_ctr_reg[24]_i_1__0_n_6\ : STD_LOGIC;
  signal \clk_ctr_reg[24]_i_1__0_n_7\ : STD_LOGIC;
  signal \clk_ctr_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \clk_ctr_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \clk_ctr_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \clk_ctr_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \clk_ctr_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \clk_ctr_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \clk_ctr_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \clk_ctr_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \clk_ctr_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \clk_ctr_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \temp_clk_i_1__0_n_0\ : STD_LOGIC;
  signal \NLW_clk_ctr_reg[0]_i_2__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_clk_ctr_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_clk_ctr_reg[16]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_clk_ctr_reg[20]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_clk_ctr_reg[24]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_clk_ctr_reg[4]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_clk_ctr_reg[8]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \clk_ctr_reg[0]_i_2__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \clk_ctr_reg[12]_i_1__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \clk_ctr_reg[16]_i_1__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \clk_ctr_reg[20]_i_1__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \clk_ctr_reg[24]_i_1__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \clk_ctr_reg[4]_i_1__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \clk_ctr_reg[8]_i_1__0\ : label is "SWEEP";
begin
  clk <= \^clk\;
\clk_ctr[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \clk_ctr[0]_i_3__0_n_0\,
      I1 => \clk_ctr[0]_i_4__0_n_0\,
      I2 => \clk_ctr[0]_i_5__0_n_0\,
      I3 => \clk_ctr[0]_i_6__0_n_0\,
      I4 => \clk_ctr[0]_i_7__0_n_0\,
      O => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => clk_ctr_reg(18),
      I1 => clk_ctr_reg(19),
      I2 => clk_ctr_reg(16),
      I3 => clk_ctr_reg(17),
      I4 => clk_ctr_reg(21),
      I5 => clk_ctr_reg(20),
      O => \clk_ctr[0]_i_3__0_n_0\
    );
\clk_ctr[0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => clk_ctr_reg(24),
      I1 => clk_ctr_reg(25),
      I2 => clk_ctr_reg(22),
      I3 => clk_ctr_reg(23),
      I4 => clk_ctr_reg(27),
      I5 => clk_ctr_reg(26),
      O => \clk_ctr[0]_i_4__0_n_0\
    );
\clk_ctr[0]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => clk_ctr_reg(13),
      I1 => clk_ctr_reg(12),
      I2 => clk_ctr_reg(10),
      I3 => clk_ctr_reg(11),
      I4 => clk_ctr_reg(14),
      I5 => clk_ctr_reg(15),
      O => \clk_ctr[0]_i_5__0_n_0\
    );
\clk_ctr[0]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => clk_ctr_reg(1),
      I1 => clk_ctr_reg(0),
      I2 => clk_ctr_reg(3),
      I3 => clk_ctr_reg(2),
      O => \clk_ctr[0]_i_6__0_n_0\
    );
\clk_ctr[0]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => clk_ctr_reg(6),
      I1 => clk_ctr_reg(7),
      I2 => clk_ctr_reg(5),
      I3 => clk_ctr_reg(4),
      I4 => clk_ctr_reg(9),
      I5 => clk_ctr_reg(8),
      O => \clk_ctr[0]_i_7__0_n_0\
    );
\clk_ctr[0]_i_8__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_ctr_reg(0),
      O => \clk_ctr[0]_i_8__0_n_0\
    );
\clk_ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[0]_i_2__0_n_7\,
      Q => clk_ctr_reg(0),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clk_ctr_reg[0]_i_2__0_n_0\,
      CO(2 downto 0) => \NLW_clk_ctr_reg[0]_i_2__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \clk_ctr_reg[0]_i_2__0_n_4\,
      O(2) => \clk_ctr_reg[0]_i_2__0_n_5\,
      O(1) => \clk_ctr_reg[0]_i_2__0_n_6\,
      O(0) => \clk_ctr_reg[0]_i_2__0_n_7\,
      S(3 downto 1) => clk_ctr_reg(3 downto 1),
      S(0) => \clk_ctr[0]_i_8__0_n_0\
    );
\clk_ctr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[8]_i_1__0_n_5\,
      Q => clk_ctr_reg(10),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[8]_i_1__0_n_4\,
      Q => clk_ctr_reg(11),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[12]_i_1__0_n_7\,
      Q => clk_ctr_reg(12),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_ctr_reg[8]_i_1__0_n_0\,
      CO(3) => \clk_ctr_reg[12]_i_1__0_n_0\,
      CO(2 downto 0) => \NLW_clk_ctr_reg[12]_i_1__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_ctr_reg[12]_i_1__0_n_4\,
      O(2) => \clk_ctr_reg[12]_i_1__0_n_5\,
      O(1) => \clk_ctr_reg[12]_i_1__0_n_6\,
      O(0) => \clk_ctr_reg[12]_i_1__0_n_7\,
      S(3 downto 0) => clk_ctr_reg(15 downto 12)
    );
\clk_ctr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[12]_i_1__0_n_6\,
      Q => clk_ctr_reg(13),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[12]_i_1__0_n_5\,
      Q => clk_ctr_reg(14),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[12]_i_1__0_n_4\,
      Q => clk_ctr_reg(15),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[16]_i_1__0_n_7\,
      Q => clk_ctr_reg(16),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_ctr_reg[12]_i_1__0_n_0\,
      CO(3) => \clk_ctr_reg[16]_i_1__0_n_0\,
      CO(2 downto 0) => \NLW_clk_ctr_reg[16]_i_1__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_ctr_reg[16]_i_1__0_n_4\,
      O(2) => \clk_ctr_reg[16]_i_1__0_n_5\,
      O(1) => \clk_ctr_reg[16]_i_1__0_n_6\,
      O(0) => \clk_ctr_reg[16]_i_1__0_n_7\,
      S(3 downto 0) => clk_ctr_reg(19 downto 16)
    );
\clk_ctr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[16]_i_1__0_n_6\,
      Q => clk_ctr_reg(17),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[16]_i_1__0_n_5\,
      Q => clk_ctr_reg(18),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[16]_i_1__0_n_4\,
      Q => clk_ctr_reg(19),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[0]_i_2__0_n_6\,
      Q => clk_ctr_reg(1),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[20]_i_1__0_n_7\,
      Q => clk_ctr_reg(20),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr_reg[20]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_ctr_reg[16]_i_1__0_n_0\,
      CO(3) => \clk_ctr_reg[20]_i_1__0_n_0\,
      CO(2 downto 0) => \NLW_clk_ctr_reg[20]_i_1__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_ctr_reg[20]_i_1__0_n_4\,
      O(2) => \clk_ctr_reg[20]_i_1__0_n_5\,
      O(1) => \clk_ctr_reg[20]_i_1__0_n_6\,
      O(0) => \clk_ctr_reg[20]_i_1__0_n_7\,
      S(3 downto 0) => clk_ctr_reg(23 downto 20)
    );
\clk_ctr_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[20]_i_1__0_n_6\,
      Q => clk_ctr_reg(21),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[20]_i_1__0_n_5\,
      Q => clk_ctr_reg(22),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[20]_i_1__0_n_4\,
      Q => clk_ctr_reg(23),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[24]_i_1__0_n_7\,
      Q => clk_ctr_reg(24),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr_reg[24]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_ctr_reg[20]_i_1__0_n_0\,
      CO(3 downto 0) => \NLW_clk_ctr_reg[24]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_ctr_reg[24]_i_1__0_n_4\,
      O(2) => \clk_ctr_reg[24]_i_1__0_n_5\,
      O(1) => \clk_ctr_reg[24]_i_1__0_n_6\,
      O(0) => \clk_ctr_reg[24]_i_1__0_n_7\,
      S(3 downto 0) => clk_ctr_reg(27 downto 24)
    );
\clk_ctr_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[24]_i_1__0_n_6\,
      Q => clk_ctr_reg(25),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[24]_i_1__0_n_5\,
      Q => clk_ctr_reg(26),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[24]_i_1__0_n_4\,
      Q => clk_ctr_reg(27),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[0]_i_2__0_n_5\,
      Q => clk_ctr_reg(2),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[0]_i_2__0_n_4\,
      Q => clk_ctr_reg(3),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[4]_i_1__0_n_7\,
      Q => clk_ctr_reg(4),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_ctr_reg[0]_i_2__0_n_0\,
      CO(3) => \clk_ctr_reg[4]_i_1__0_n_0\,
      CO(2 downto 0) => \NLW_clk_ctr_reg[4]_i_1__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_ctr_reg[4]_i_1__0_n_4\,
      O(2) => \clk_ctr_reg[4]_i_1__0_n_5\,
      O(1) => \clk_ctr_reg[4]_i_1__0_n_6\,
      O(0) => \clk_ctr_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => clk_ctr_reg(7 downto 4)
    );
\clk_ctr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[4]_i_1__0_n_6\,
      Q => clk_ctr_reg(5),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[4]_i_1__0_n_5\,
      Q => clk_ctr_reg(6),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[4]_i_1__0_n_4\,
      Q => clk_ctr_reg(7),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[8]_i_1__0_n_7\,
      Q => clk_ctr_reg(8),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\clk_ctr_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_ctr_reg[4]_i_1__0_n_0\,
      CO(3) => \clk_ctr_reg[8]_i_1__0_n_0\,
      CO(2 downto 0) => \NLW_clk_ctr_reg[8]_i_1__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_ctr_reg[8]_i_1__0_n_4\,
      O(2) => \clk_ctr_reg[8]_i_1__0_n_5\,
      O(1) => \clk_ctr_reg[8]_i_1__0_n_6\,
      O(0) => \clk_ctr_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => clk_ctr_reg(11 downto 8)
    );
\clk_ctr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[8]_i_1__0_n_6\,
      Q => clk_ctr_reg(9),
      R => \clk_ctr[0]_i_1__0_n_0\
    );
\temp_clk_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \clk_ctr[0]_i_7__0_n_0\,
      I1 => \clk_ctr[0]_i_6__0_n_0\,
      I2 => \clk_ctr[0]_i_5__0_n_0\,
      I3 => \clk_ctr[0]_i_4__0_n_0\,
      I4 => \clk_ctr[0]_i_3__0_n_0\,
      I5 => \^clk\,
      O => \temp_clk_i_1__0_n_0\
    );
temp_clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \temp_clk_i_1__0_n_0\,
      Q => \^clk\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity my_divider_4 is
  port (
    CLK : out STD_LOGIC;
    CLK100MHZ_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of my_divider_4 : entity is "my_divider";
end my_divider_4;

architecture STRUCTURE of my_divider_4 is
  signal \^clk\ : STD_LOGIC;
  signal \clk_ctr[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \clk_ctr[0]_i_3__1_n_0\ : STD_LOGIC;
  signal \clk_ctr[0]_i_4__1_n_0\ : STD_LOGIC;
  signal \clk_ctr[0]_i_5__1_n_0\ : STD_LOGIC;
  signal \clk_ctr[0]_i_6__1_n_0\ : STD_LOGIC;
  signal \clk_ctr[0]_i_7__1_n_0\ : STD_LOGIC;
  signal \clk_ctr[0]_i_8__1_n_0\ : STD_LOGIC;
  signal clk_ctr_reg : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \clk_ctr_reg[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \clk_ctr_reg[0]_i_2__1_n_4\ : STD_LOGIC;
  signal \clk_ctr_reg[0]_i_2__1_n_5\ : STD_LOGIC;
  signal \clk_ctr_reg[0]_i_2__1_n_6\ : STD_LOGIC;
  signal \clk_ctr_reg[0]_i_2__1_n_7\ : STD_LOGIC;
  signal \clk_ctr_reg[12]_i_1__1_n_0\ : STD_LOGIC;
  signal \clk_ctr_reg[12]_i_1__1_n_4\ : STD_LOGIC;
  signal \clk_ctr_reg[12]_i_1__1_n_5\ : STD_LOGIC;
  signal \clk_ctr_reg[12]_i_1__1_n_6\ : STD_LOGIC;
  signal \clk_ctr_reg[12]_i_1__1_n_7\ : STD_LOGIC;
  signal \clk_ctr_reg[16]_i_1__1_n_0\ : STD_LOGIC;
  signal \clk_ctr_reg[16]_i_1__1_n_4\ : STD_LOGIC;
  signal \clk_ctr_reg[16]_i_1__1_n_5\ : STD_LOGIC;
  signal \clk_ctr_reg[16]_i_1__1_n_6\ : STD_LOGIC;
  signal \clk_ctr_reg[16]_i_1__1_n_7\ : STD_LOGIC;
  signal \clk_ctr_reg[20]_i_1__1_n_0\ : STD_LOGIC;
  signal \clk_ctr_reg[20]_i_1__1_n_4\ : STD_LOGIC;
  signal \clk_ctr_reg[20]_i_1__1_n_5\ : STD_LOGIC;
  signal \clk_ctr_reg[20]_i_1__1_n_6\ : STD_LOGIC;
  signal \clk_ctr_reg[20]_i_1__1_n_7\ : STD_LOGIC;
  signal \clk_ctr_reg[24]_i_1__1_n_4\ : STD_LOGIC;
  signal \clk_ctr_reg[24]_i_1__1_n_5\ : STD_LOGIC;
  signal \clk_ctr_reg[24]_i_1__1_n_6\ : STD_LOGIC;
  signal \clk_ctr_reg[24]_i_1__1_n_7\ : STD_LOGIC;
  signal \clk_ctr_reg[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \clk_ctr_reg[4]_i_1__1_n_4\ : STD_LOGIC;
  signal \clk_ctr_reg[4]_i_1__1_n_5\ : STD_LOGIC;
  signal \clk_ctr_reg[4]_i_1__1_n_6\ : STD_LOGIC;
  signal \clk_ctr_reg[4]_i_1__1_n_7\ : STD_LOGIC;
  signal \clk_ctr_reg[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \clk_ctr_reg[8]_i_1__1_n_4\ : STD_LOGIC;
  signal \clk_ctr_reg[8]_i_1__1_n_5\ : STD_LOGIC;
  signal \clk_ctr_reg[8]_i_1__1_n_6\ : STD_LOGIC;
  signal \clk_ctr_reg[8]_i_1__1_n_7\ : STD_LOGIC;
  signal \temp_clk_i_1__1_n_0\ : STD_LOGIC;
  signal \NLW_clk_ctr_reg[0]_i_2__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_clk_ctr_reg[12]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_clk_ctr_reg[16]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_clk_ctr_reg[20]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_clk_ctr_reg[24]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_clk_ctr_reg[4]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_clk_ctr_reg[8]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \clk_ctr_reg[0]_i_2__1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \clk_ctr_reg[12]_i_1__1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \clk_ctr_reg[16]_i_1__1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \clk_ctr_reg[20]_i_1__1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \clk_ctr_reg[24]_i_1__1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \clk_ctr_reg[4]_i_1__1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \clk_ctr_reg[8]_i_1__1\ : label is "SWEEP";
begin
  CLK <= \^clk\;
\clk_ctr[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \clk_ctr[0]_i_3__1_n_0\,
      I1 => \clk_ctr[0]_i_4__1_n_0\,
      I2 => \clk_ctr[0]_i_5__1_n_0\,
      I3 => \clk_ctr[0]_i_6__1_n_0\,
      I4 => \clk_ctr[0]_i_7__1_n_0\,
      O => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr[0]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => clk_ctr_reg(18),
      I1 => clk_ctr_reg(19),
      I2 => clk_ctr_reg(16),
      I3 => clk_ctr_reg(17),
      I4 => clk_ctr_reg(21),
      I5 => clk_ctr_reg(20),
      O => \clk_ctr[0]_i_3__1_n_0\
    );
\clk_ctr[0]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => clk_ctr_reg(24),
      I1 => clk_ctr_reg(25),
      I2 => clk_ctr_reg(22),
      I3 => clk_ctr_reg(23),
      I4 => clk_ctr_reg(27),
      I5 => clk_ctr_reg(26),
      O => \clk_ctr[0]_i_4__1_n_0\
    );
\clk_ctr[0]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => clk_ctr_reg(12),
      I1 => clk_ctr_reg(13),
      I2 => clk_ctr_reg(10),
      I3 => clk_ctr_reg(11),
      I4 => clk_ctr_reg(15),
      I5 => clk_ctr_reg(14),
      O => \clk_ctr[0]_i_5__1_n_0\
    );
\clk_ctr[0]_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => clk_ctr_reg(1),
      I1 => clk_ctr_reg(0),
      I2 => clk_ctr_reg(2),
      I3 => clk_ctr_reg(3),
      O => \clk_ctr[0]_i_6__1_n_0\
    );
\clk_ctr[0]_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => clk_ctr_reg(7),
      I1 => clk_ctr_reg(6),
      I2 => clk_ctr_reg(4),
      I3 => clk_ctr_reg(5),
      I4 => clk_ctr_reg(9),
      I5 => clk_ctr_reg(8),
      O => \clk_ctr[0]_i_7__1_n_0\
    );
\clk_ctr[0]_i_8__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_ctr_reg(0),
      O => \clk_ctr[0]_i_8__1_n_0\
    );
\clk_ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[0]_i_2__1_n_7\,
      Q => clk_ctr_reg(0),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr_reg[0]_i_2__1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clk_ctr_reg[0]_i_2__1_n_0\,
      CO(2 downto 0) => \NLW_clk_ctr_reg[0]_i_2__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \clk_ctr_reg[0]_i_2__1_n_4\,
      O(2) => \clk_ctr_reg[0]_i_2__1_n_5\,
      O(1) => \clk_ctr_reg[0]_i_2__1_n_6\,
      O(0) => \clk_ctr_reg[0]_i_2__1_n_7\,
      S(3 downto 1) => clk_ctr_reg(3 downto 1),
      S(0) => \clk_ctr[0]_i_8__1_n_0\
    );
\clk_ctr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[8]_i_1__1_n_5\,
      Q => clk_ctr_reg(10),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[8]_i_1__1_n_4\,
      Q => clk_ctr_reg(11),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[12]_i_1__1_n_7\,
      Q => clk_ctr_reg(12),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr_reg[12]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_ctr_reg[8]_i_1__1_n_0\,
      CO(3) => \clk_ctr_reg[12]_i_1__1_n_0\,
      CO(2 downto 0) => \NLW_clk_ctr_reg[12]_i_1__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_ctr_reg[12]_i_1__1_n_4\,
      O(2) => \clk_ctr_reg[12]_i_1__1_n_5\,
      O(1) => \clk_ctr_reg[12]_i_1__1_n_6\,
      O(0) => \clk_ctr_reg[12]_i_1__1_n_7\,
      S(3 downto 0) => clk_ctr_reg(15 downto 12)
    );
\clk_ctr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[12]_i_1__1_n_6\,
      Q => clk_ctr_reg(13),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[12]_i_1__1_n_5\,
      Q => clk_ctr_reg(14),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[12]_i_1__1_n_4\,
      Q => clk_ctr_reg(15),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[16]_i_1__1_n_7\,
      Q => clk_ctr_reg(16),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr_reg[16]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_ctr_reg[12]_i_1__1_n_0\,
      CO(3) => \clk_ctr_reg[16]_i_1__1_n_0\,
      CO(2 downto 0) => \NLW_clk_ctr_reg[16]_i_1__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_ctr_reg[16]_i_1__1_n_4\,
      O(2) => \clk_ctr_reg[16]_i_1__1_n_5\,
      O(1) => \clk_ctr_reg[16]_i_1__1_n_6\,
      O(0) => \clk_ctr_reg[16]_i_1__1_n_7\,
      S(3 downto 0) => clk_ctr_reg(19 downto 16)
    );
\clk_ctr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[16]_i_1__1_n_6\,
      Q => clk_ctr_reg(17),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[16]_i_1__1_n_5\,
      Q => clk_ctr_reg(18),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[16]_i_1__1_n_4\,
      Q => clk_ctr_reg(19),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[0]_i_2__1_n_6\,
      Q => clk_ctr_reg(1),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[20]_i_1__1_n_7\,
      Q => clk_ctr_reg(20),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr_reg[20]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_ctr_reg[16]_i_1__1_n_0\,
      CO(3) => \clk_ctr_reg[20]_i_1__1_n_0\,
      CO(2 downto 0) => \NLW_clk_ctr_reg[20]_i_1__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_ctr_reg[20]_i_1__1_n_4\,
      O(2) => \clk_ctr_reg[20]_i_1__1_n_5\,
      O(1) => \clk_ctr_reg[20]_i_1__1_n_6\,
      O(0) => \clk_ctr_reg[20]_i_1__1_n_7\,
      S(3 downto 0) => clk_ctr_reg(23 downto 20)
    );
\clk_ctr_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[20]_i_1__1_n_6\,
      Q => clk_ctr_reg(21),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[20]_i_1__1_n_5\,
      Q => clk_ctr_reg(22),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[20]_i_1__1_n_4\,
      Q => clk_ctr_reg(23),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[24]_i_1__1_n_7\,
      Q => clk_ctr_reg(24),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr_reg[24]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_ctr_reg[20]_i_1__1_n_0\,
      CO(3 downto 0) => \NLW_clk_ctr_reg[24]_i_1__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_ctr_reg[24]_i_1__1_n_4\,
      O(2) => \clk_ctr_reg[24]_i_1__1_n_5\,
      O(1) => \clk_ctr_reg[24]_i_1__1_n_6\,
      O(0) => \clk_ctr_reg[24]_i_1__1_n_7\,
      S(3 downto 0) => clk_ctr_reg(27 downto 24)
    );
\clk_ctr_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[24]_i_1__1_n_6\,
      Q => clk_ctr_reg(25),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[24]_i_1__1_n_5\,
      Q => clk_ctr_reg(26),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[24]_i_1__1_n_4\,
      Q => clk_ctr_reg(27),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[0]_i_2__1_n_5\,
      Q => clk_ctr_reg(2),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[0]_i_2__1_n_4\,
      Q => clk_ctr_reg(3),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[4]_i_1__1_n_7\,
      Q => clk_ctr_reg(4),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr_reg[4]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_ctr_reg[0]_i_2__1_n_0\,
      CO(3) => \clk_ctr_reg[4]_i_1__1_n_0\,
      CO(2 downto 0) => \NLW_clk_ctr_reg[4]_i_1__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_ctr_reg[4]_i_1__1_n_4\,
      O(2) => \clk_ctr_reg[4]_i_1__1_n_5\,
      O(1) => \clk_ctr_reg[4]_i_1__1_n_6\,
      O(0) => \clk_ctr_reg[4]_i_1__1_n_7\,
      S(3 downto 0) => clk_ctr_reg(7 downto 4)
    );
\clk_ctr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[4]_i_1__1_n_6\,
      Q => clk_ctr_reg(5),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[4]_i_1__1_n_5\,
      Q => clk_ctr_reg(6),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[4]_i_1__1_n_4\,
      Q => clk_ctr_reg(7),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[8]_i_1__1_n_7\,
      Q => clk_ctr_reg(8),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\clk_ctr_reg[8]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_ctr_reg[4]_i_1__1_n_0\,
      CO(3) => \clk_ctr_reg[8]_i_1__1_n_0\,
      CO(2 downto 0) => \NLW_clk_ctr_reg[8]_i_1__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_ctr_reg[8]_i_1__1_n_4\,
      O(2) => \clk_ctr_reg[8]_i_1__1_n_5\,
      O(1) => \clk_ctr_reg[8]_i_1__1_n_6\,
      O(0) => \clk_ctr_reg[8]_i_1__1_n_7\,
      S(3 downto 0) => clk_ctr_reg(11 downto 8)
    );
\clk_ctr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \clk_ctr_reg[8]_i_1__1_n_6\,
      Q => clk_ctr_reg(9),
      R => \clk_ctr[0]_i_1__1_n_0\
    );
\temp_clk_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \clk_ctr[0]_i_7__1_n_0\,
      I1 => \clk_ctr[0]_i_6__1_n_0\,
      I2 => \clk_ctr[0]_i_5__1_n_0\,
      I3 => \clk_ctr[0]_i_4__1_n_0\,
      I4 => \clk_ctr[0]_i_3__1_n_0\,
      I5 => \^clk\,
      O => \temp_clk_i_1__1_n_0\
    );
temp_clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \temp_clk_i_1__1_n_0\,
      Q => \^clk\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity state is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    S3 : out STD_LOGIC;
    S4 : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    BTNC_IBUF : in STD_LOGIC;
    countdown_out : in STD_LOGIC
  );
end state;

architecture STRUCTURE of state is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal flag : STD_LOGIC;
  signal flag_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \states[3]_i_1_n_0\ : STD_LOGIC;
  signal states_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \states[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \states[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \states[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \states[3]_i_2\ : label is "soft_lutpair11";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \states_reg[0]\ : label is "iSTATE:1000,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,";
  attribute FSM_ENCODED_STATES of \states_reg[1]\ : label is "iSTATE:1000,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,";
  attribute FSM_ENCODED_STATES of \states_reg[2]\ : label is "iSTATE:1000,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,";
  attribute FSM_ENCODED_STATES of \states_reg[3]\ : label is "iSTATE:1000,iSTATE0:0100,iSTATE1:0010,iSTATE2:0001,";
begin
  E(0) <= \^e\(0);
S1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => states_reg(3),
      Q => AR(0),
      R => '0'
    );
S2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => states_reg(2),
      Q => \^e\(0),
      R => '0'
    );
S3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => states_reg(1),
      Q => S3,
      R => '0'
    );
S4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => states_reg(0),
      Q => S4,
      R => '0'
    );
flag_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => BTNC_IBUF,
      I1 => \^e\(0),
      I2 => countdown_out,
      O => flag_i_1_n_0
    );
flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => flag_i_1_n_0,
      Q => flag,
      R => '0'
    );
\states[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => states_reg(3),
      I1 => states_reg(2),
      I2 => states_reg(1),
      I3 => states_reg(0),
      O => p_0_in(0)
    );
\states[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => states_reg(3),
      I1 => states_reg(0),
      I2 => states_reg(2),
      I3 => states_reg(1),
      O => p_0_in(1)
    );
\states[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEB"
    )
        port map (
      I0 => states_reg(3),
      I1 => states_reg(0),
      I2 => states_reg(2),
      I3 => states_reg(1),
      O => p_0_in(2)
    );
\states[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => BTNC_IBUF,
      I1 => \^e\(0),
      I2 => countdown_out,
      I3 => flag,
      O => \states[3]_i_1_n_0\
    );
\states[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => states_reg(3),
      I1 => states_reg(2),
      I2 => states_reg(0),
      I3 => states_reg(1),
      O => p_0_in(3)
    );
\states_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \states[3]_i_1_n_0\,
      D => p_0_in(0),
      Q => states_reg(0),
      R => '0'
    );
\states_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \states[3]_i_1_n_0\,
      D => p_0_in(1),
      Q => states_reg(1),
      R => '0'
    );
\states_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \states[3]_i_1_n_0\,
      D => p_0_in(2),
      Q => states_reg(2),
      R => '0'
    );
\states_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \states[3]_i_1_n_0\,
      D => p_0_in(3),
      Q => states_reg(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ctr_top is
  port (
    CLK100MHZ : in STD_LOGIC;
    BTNC : in STD_LOGIC;
    SW : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CA : out STD_LOGIC;
    CB : out STD_LOGIC;
    CC : out STD_LOGIC;
    CD : out STD_LOGIC;
    CE : out STD_LOGIC;
    CF : out STD_LOGIC;
    CG : out STD_LOGIC;
    DP : out STD_LOGIC;
    AN : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ctr_top : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of ctr_top : entity is "ade6b9bc";
end ctr_top;

architecture STRUCTURE of ctr_top is
  signal AN_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal BTNC_IBUF : STD_LOGIC;
  signal CA_OBUF : STD_LOGIC;
  signal CB_OBUF : STD_LOGIC;
  signal CC_OBUF : STD_LOGIC;
  signal CD_OBUF : STD_LOGIC;
  signal CE_OBUF : STD_LOGIC;
  signal CF_OBUF : STD_LOGIC;
  signal CG_OBUF : STD_LOGIC;
  signal CLK100MHZ_IBUF : STD_LOGIC;
  signal CLK100MHZ_IBUF_BUFG : STD_LOGIC;
  signal CNT_2_SET_n_0 : STD_LOGIC;
  signal CNT_3_SET_n_0 : STD_LOGIC;
  signal Clk_out_disp : STD_LOGIC;
  signal Clk_out_seconds : STD_LOGIC;
  signal DEC_POS_SET_n_0 : STD_LOGIC;
  signal DP_OBUF : STD_LOGIC;
  signal MUX_SET_n_1 : STD_LOGIC;
  signal MUX_SET_n_2 : STD_LOGIC;
  signal MUX_SET_n_3 : STD_LOGIC;
  signal S1 : STD_LOGIC;
  signal S3 : STD_LOGIC;
  signal S4 : STD_LOGIC;
  signal clk : STD_LOGIC;
  signal countdown_out : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal counter_reg_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal counter_reg_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal counter_reg_2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal selector : STD_LOGIC;
  signal shift : STD_LOGIC;
begin
\AN_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(0),
      O => AN(0)
    );
\AN_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(1),
      O => AN(1)
    );
\AN_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(2),
      O => AN(2)
    );
\AN_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(3),
      O => AN(3)
    );
\AN_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(4),
      O => AN(4)
    );
\AN_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(5),
      O => AN(5)
    );
\AN_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(6),
      O => AN(6)
    );
\AN_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(7),
      O => AN(7)
    );
BTNC_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => BTNC,
      O => BTNC_IBUF
    );
CA_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => CA_OBUF,
      O => CA
    );
CB_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => CB_OBUF,
      O => CB
    );
CC_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => CC_OBUF,
      O => CC
    );
CD_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => CD_OBUF,
      O => CD
    );
CE_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => CE_OBUF,
      O => CE
    );
CF_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => CF_OBUF,
      O => CF
    );
CG_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => CG_OBUF,
      O => CG
    );
CLK100MHZ_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK100MHZ_IBUF,
      O => CLK100MHZ_IBUF_BUFG
    );
CLK100MHZ_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK100MHZ,
      O => CLK100MHZ_IBUF
    );
CNT_1_SET: entity work.cntr_clk
     port map (
      AR(0) => S1,
      CLK => shift,
      Q(3 downto 0) => counter_reg(3 downto 0),
      S3 => S3,
      \^clk\ => clk
    );
CNT_2_SET: entity work.cntr_clk_0
     port map (
      AR(0) => S1,
      CLK => shift,
      Q(3 downto 0) => counter_reg_0(3 downto 0),
      S3 => S3,
      shift_reg_0 => CNT_2_SET_n_0
    );
CNT_3_SET: entity work.cntr_clk_1
     port map (
      AR(0) => S1,
      Q(3 downto 0) => counter_reg_1(3 downto 0),
      S3 => S3,
      \counter_reg[3]_0\ => CNT_2_SET_n_0,
      shift_reg_0 => CNT_3_SET_n_0
    );
CNT_4_SET: entity work.cntr_clk_2
     port map (
      AR(0) => S1,
      Q(3 downto 0) => counter_reg_2(3 downto 0),
      S3 => S3,
      \counter_reg[3]_0\ => CNT_3_SET_n_0
    );
COUNTER_SET: entity work.counter
     port map (
      CLK100MHZ_IBUF_BUFG => CLK100MHZ_IBUF_BUFG,
      countdown_out => countdown_out
    );
DEC_POS_SET: entity work.dot_control
     port map (
      CLK => Clk_out_seconds,
      E(0) => selector,
      \FSM_onehot_temp_dec_pos_reg[2]_0\ => DEC_POS_SET_n_0,
      dec_point_reg => MUX_SET_n_1,
      dec_point_reg_0 => MUX_SET_n_2,
      dec_point_reg_1 => MUX_SET_n_3
    );
DIV_CLK_SET: entity work.my_divider
     port map (
      CLK => Clk_out_disp,
      CLK100MHZ_IBUF_BUFG => CLK100MHZ_IBUF_BUFG
    );
DIV_CNTR_SET: entity work.my_divider_3
     port map (
      CLK100MHZ_IBUF_BUFG => CLK100MHZ_IBUF_BUFG,
      clk => clk
    );
DIV_SECONDS_SET: entity work.my_divider_4
     port map (
      CLK => Clk_out_seconds,
      CLK100MHZ_IBUF_BUFG => CLK100MHZ_IBUF_BUFG
    );
DP_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => DP_OBUF,
      O => DP
    );
MUX_SET: entity work.Multiplex
     port map (
      CA_OBUF => CA_OBUF,
      CB_OBUF => CB_OBUF,
      CC_OBUF => CC_OBUF,
      CD_OBUF => CD_OBUF,
      CE_OBUF => CE_OBUF,
      CF_OBUF => CF_OBUF,
      CG_OBUF => CG_OBUF,
      CLK => Clk_out_disp,
      DP_OBUF => DP_OBUF,
      Q(3 downto 0) => counter_reg(3 downto 0),
      S3 => S3,
      S4 => S4,
      \cntr_out_reg[3]_0\(3 downto 0) => counter_reg_2(3 downto 0),
      \cntr_out_reg[3]_1\(3 downto 0) => counter_reg_1(3 downto 0),
      \cntr_out_reg[3]_2\(3 downto 0) => counter_reg_0(3 downto 0),
      dec_point_reg_0 => DEC_POS_SET_n_0,
      \disp_reg[7]_0\(7 downto 0) => AN_OBUF(7 downto 0),
      \temp_reg[0]_0\ => MUX_SET_n_2,
      \temp_reg[0]_1\ => MUX_SET_n_3,
      \temp_reg[5]_0\ => MUX_SET_n_1
    );
STATE_SET: entity work.state
     port map (
      AR(0) => S1,
      BTNC_IBUF => BTNC_IBUF,
      CLK => Clk_out_disp,
      E(0) => selector,
      S3 => S3,
      S4 => S4,
      countdown_out => countdown_out
    );
end STRUCTURE;
