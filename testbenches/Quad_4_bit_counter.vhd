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
    signal Cntr_2 : std_logic_vector (0 to 3);
    signal Cntr_3 : std_logic_vector (0 to 3);
    signal Cntr_4 : std_logic_vector (0 to 3);
    signal carry: std_logic;
    
    component quad_counter
    Port ( CLK_IN : in STD_LOGIC;
           EN : in STD_LOGIC;
           RESET : in STD_LOGIC;
           CNTR1 : out STD_LOGIC_VECTOR (3 downto 0);
           CNTR2 : out STD_LOGIC_VECTOR (3 downto 0);
           CNTR3 : out STD_LOGIC_VECTOR (3 downto 0);
           CNTR4 : out STD_LOGIC_VECTOR (3 downto 0);
           OVERFLOW : OUT STD_LOGIC);
    end component;
    
    
begin

    COUNTER: quad_counter port map(clk_in_ctr, EN, R_SET, Cntr_1, Cntr_2, Cntr_3, Cntr_4, carry);
    
    stage_1_q_out <= Cntr_1;
    stage_2_q_out <= Cntr_2;
    stage_3_q_out <= Cntr_3;
    stage_4_q_out <= Cntr_4;
    overflow <= carry;
end Behavioral;
