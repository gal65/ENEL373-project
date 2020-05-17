----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.03.2020 12:59:42
-- Design Name: 
-- Module Name: button_toggle - Behavioral
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

entity button_toggle is
    Port ( button : in STD_LOGIC;
           toggle : out STD_LOGIC);
end button_toggle;

architecture Behavioral of button_toggle is
    


begin
    change_toggle : process(button)
    variable switch: STD_LOGIC;
        begin 
            if button = '1' then
                switch  := not switch;
                toggle <= switch;
            end if;
        end process change_toggle;

end Behavioral;
