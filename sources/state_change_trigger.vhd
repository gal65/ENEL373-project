----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.03.2020 17:39:45
-- Design Name: 
-- Module Name: state_change_trigger - Behavioral
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

entity state_change_trigger is
    Port ( clk_in : in STD_LOGIC;
           reset_state : in STD_LOGIC;
           button : in STD_LOGIC;
           dot_finish : in STD_LOGIC;
           change_state : out STD_LOGIC);
end state_change_trigger;

architecture Behavioral of state_change_trigger is
signal output_value: STD_LOGIC; 

begin

decide_state_change: process(clk_in) 
begin

if rising_edge(clk_in) then
    if (reset_state = '1') and dot_finish = '1' then
        output_value <= '1';
    elsif reset_state = '0' and button = '1' then
        output_value <= '1';
    else
        output_value <= '0';
    end if;
    
    change_state <= output_value;
    
end if;


end process decide_state_change;




end Behavioral;
