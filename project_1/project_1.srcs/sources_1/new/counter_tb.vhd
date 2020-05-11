----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.05.2020 22:04:39
-- Design Name: 
-- Module Name: counter_tb - Behavioral
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

entity counter_tb is
           
end counter_tb;

architecture tb of counter_tb is
           signal Clk : STD_LOGIC;
           signal Limit : STD_LOGIC_vector(27 downto 0);
           signal EN : STD_LOGIC;
           signal Output : STD_LOGIC;
           signal counter : STD_LOGIC_vector(27 downto 0);
begin
    UUT : entity work.counter port map(Clk => Clk, Limit => Limit, EN => EN, Output => output);
    --inputs
    -- limit is constant at X"0000682"
    process 
    begin
    
    
    clk <= '0';
    wait for 10 ns;
    clk <= '1';
    wait for 10 ns;
   
    end process;
    
    Limit <= X"0000682";
    EN <= '1';
    
    
end tb;
