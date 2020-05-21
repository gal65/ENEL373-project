----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Tristin Weastell, Gordan Lay, Jarrod Zhu
-- 
-- Create Date: 07.05.2020 16:55:46
-- Design Name: 
-- Module Name: DOT_CONTROL - Behavioral
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

--description:
--controls the dots with a small finite machine. 
--the states count down the lights, and set output to high when all light are off
--reset when the neable is off.
--

entity dot_control is
    Port ( CLK : in STD_LOGIC;
           EN : in STD_LOGIC;
           DEC_POS : out STD_LOGIC_VECTOR(2 downto 0);
           OUTPUT : out STD_LOGIC);
end DOT_CONTROL;

architecture Behavioral of DOT_CONTROL is
    signal temp_dec_pos : STD_LOGIC_VECTOR(2 downto 0);
begin
    dot_process: process(CLK)
        begin
            
            --on the rising clock edge 
            if rising_edge(CLK) then
                --if it is enabled
                if EN = '1' then
                    case temp_dec_pos is	--roll to the next light state
                        when "000"	=> temp_dec_pos <= "100";	
                            output <= '0';	    
                        when "100"	=> temp_dec_pos <= "110";
                            output <= '0';	
                        when "110"	=> temp_dec_pos <= "111"; 
                            output <= '1';	--output is high when all ligth are off.
                        when "111"	=> temp_dec_pos <= "111"; 
                            output <= '0';	                        
                        when others => temp_dec_pos <= "000";
                            output <= '0';	
                    end case;   
                else --resets when the en is 0, has to occur on a clock edge 
                     --maybe try make it asynchronous?
                    temp_dec_pos <= "000";
                    output <= '0';	
                end if;
             end if;  
             
                        
        end process dot_process;
        
    DEC_POS <= temp_dec_pos;
    
end Behavioral;
