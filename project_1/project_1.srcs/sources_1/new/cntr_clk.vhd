----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.03.2020 09:43:18
-- Design Name: 
-- Module Name: cntr_clk - Behavioral
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

entity cntr_clk is
    Port ( Clk_in : in STD_LOGIC;
           carry_in: in STD_LOGIC; -- Added a carry in signal so that the counter is synchronous
           go : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk_cnt : out STD_LOGIC_VECTOR (3 downto 0);
           shift : out STD_LOGIC);
end cntr_clk;



architecture Behavioral of cntr_clk is
signal carry_out: STD_LOGIC := '0';

begin

count: process (Clk_in, carry_in, reset)
    variable counter: std_logic_vector (3 downto 0) := "0000";
begin
    if falling_edge(Clk_in) and go = '1' then   
        if carry_in = '1' then
            counter := counter + "0001";
            if counter = "1010" then
                counter := "0000";
                carry_out <= '1';
            else
                carry_out <= '0';
            end if;
        end if;               
    end if;

    if reset = '1' then
        counter := "0000";
    end if;
    
    shift <= carry_out;
    clk_cnt <= counter;
    
end process;

end Behavioral;
