----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/13/2020 10:53:22 AM
-- Design Name: 
-- Module Name: Quad_4_bit_counter - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Quad_4_bit_counter is
    Port ( EN : in STD_LOGIC;
          R_SET : in STD_LOGIC;
          stage_1_q_out : out STD_LOGIC_VECTOR (3 downto 0);
          stage_2_q_out : out STD_LOGIC_VECTOR (3 downto 0);
          stage_3_q_out : out STD_LOGIC_VECTOR (3 downto 0);
          stage_4_q_out : out STD_LOGIC_VECTOR (3 downto 0);
          clk_in_ctr : in STD_LOGIC;
          overflow : out STD_LOGIC);
end Quad_4_bit_counter;

architecture Behavioral of Quad_4_bit_counter is
    signal Cntr_1 : std_logic_vector (0 to 3);
    signal ripple_1 : STD_LOGIC;
    signal Cntr_2 : std_logic_vector (0 to 3);
    signal ripple_2 : STD_LOGIC;
    signal Cntr_3 : std_logic_vector (0 to 3);
    signal ripple_3 : STD_LOGIC;
    signal Cntr_4 : std_logic_vector (0 to 3);
    signal ripple_4 : STD_LOGIC;
    
    component cntr_clk
    port( Clk_in : in STD_LOGIC;
           carry_in: in STD_LOGIC;
           go : in STD_LOGIC;
           reset: in STD_LOGIC;
           clk_cnt : out STD_LOGIC_VECTOR (3 downto 0);
           shift : out STD_LOGIC);
    end component;
    
    
begin

    CNT_1_SET: cntr_clk port map(clk_in_ctr, '1', EN, R_SET, Cntr_1, ripple_1);
    CNT_2_SET: cntr_clk port map(clk_in_ctr, ripple_1, EN, R_SET, Cntr_2, ripple_2);
    CNT_3_SET: cntr_clk port map(clk_in_ctr, ripple_2, EN, R_SET, Cntr_3, ripple_3);
    CNT_4_SET: cntr_clk port map(clk_in_ctr, ripple_3, EN, R_SET, Cntr_4, ripple_4);
    
    stage_1_q_out <= Cntr_1;
    stage_2_q_out <= Cntr_2;
    stage_3_q_out <= Cntr_3;
    stage_4_q_out <= Cntr_4;
    overflow <= ripple_4;
end Behavioral;
