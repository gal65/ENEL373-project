----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.05.2020 18:48:36
-- Design Name: 
-- Module Name: input_multiplexer - Behavioral
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

entity input_multiplexer is
    Port ( selector : in STD_LOGIC;
           button : in STD_LOGIC;
           countdown : in STD_LOGIC;
           change_state : out STD_LOGIC);
end input_multiplexer;

architecture Behavioral of input_multiplexer is
begin

process(selector, button, countdown)
begin

if selector = '0' then
    change_state <= button;
end if;
if selector = '1' then
    change_state <= not countdown;
end if;
    

end process;

end Behavioral;
