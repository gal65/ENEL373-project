----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.03.2020 12:10:27
-- Design Name: 
-- Module Name: new_top - Behavioral
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

entity new_top is
    Port ( BTNC : in STD_LOGIC);
end new_top;

architecture Behavioral of new_top is
    signal toggle: std_logic;
    
    component ctr_top
        port( active: in Std_logic);
    end component;
    
begin
--switch_toggle: process(BTNC)
--    begin
--    if rising_edge(BTNC) then
--        toggle <= not toggle;
--    end if;
--end process switch_toggle;

CLOCK: ctr_top port map(BTNC);

end Behavioral;
