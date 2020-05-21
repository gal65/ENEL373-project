----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jarrod Zhu, Tristin Weastell, Gordon Lay
-- 
-- Create Date: 05/21/2020 09:23:57 PM
-- Design Name: 
-- Module Name: dot_control_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Test bench used to test the small finite state machine which swaps between the dot states
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

entity dot_control_tb is
end dot_control_tb;

architecture Behavioral of dot_control_tb is
-- component being tested           
component dot_control is
    Port ( CLK : in STD_LOGIC;
           EN : in STD_LOGIC;
           DEC_POS : out STD_LOGIC_VECTOR(2 downto 0);
           OUTPUT : out STD_LOGIC);
    end component;
    
           -- Inputs
           signal Clk_sim : STD_LOGIC;
           signal EN_sim : STD_LOGIC;
           
           -- Outputs
           signal DEC_POS_sim : STD_LOGIC_VECTOR(2 downto 0);
           signal Output_sim : STD_LOGIC;
    
begin
    -- Port mapping the unit under test
    uut: dot_control port map(CLK => Clk_sim, EN => EN_sim, DEC_POS => DEC_POS_sim, Output => Output_sim);
    
    clk_proc: process is
    begin
        Clk_sim <= '0';
        wait for 500 ms; -- for second, signal is '0'.
        Clk_sim <= '1';
        wait for 500 ms; -- for next second, signal is '1'.
    end process;
    
    stimulus_process: process is
    -- Simulates the state changes when the dec point countdown is enabled then the enable bit resetting the countdown
     begin
        EN_sim <= '1';
        wait for 4000 ms;
        EN_sim <= '0';
        wait for 1000 ms;
     end process;
end Behavioral;
