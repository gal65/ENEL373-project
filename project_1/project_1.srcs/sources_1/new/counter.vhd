----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.05.2020 21:04:58
-- Design Name: 
-- Module Name: counter - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
    Port ( Clk : in STD_LOGIC;
           Limit : in STD_LOGIC_vector(27 downto 0);
           EN : in STD_LOGIC;
           counter : out STD_LOGIC_vector(27 downto 0);
           Output : out STD_LOGIC);
end counter;

architecture Behavioral of counter is
signal count: std_logic_vector(27 downto 0) := X"0000000";
signal Buff: std_logic;
begin


countUp: Process(Clk)
begin
    if Clk = '1' and Clk'Event then
        --if enable is off, reset the clock, go set output to low.
        --if the count is greater than the limit, set out to high

        if count = Limit then
            buff <= not buff;
            count <= X"0000000";
        else
            count <= count + X"0000001";
        end if;
   
    end if;
end process countUp;

Output <= buff;
counter <= count;

end Behavioral;
