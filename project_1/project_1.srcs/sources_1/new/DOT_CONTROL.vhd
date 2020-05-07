----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dot_control is
    Port ( CLK : in STD_LOGIC;
           EN : in STD_LOGIC;
           RST: in STD_LOGIC;
           DEC_POS : out STD_LOGIC_VECTOR(2 downto 0);
           finish : out STD_LOGIC);
end DOT_CONTROL;

architecture Behavioral of DOT_CONTROL is
    signal temp_dec_pos : STD_LOGIC_VECTOR(2 downto 0);
begin
    dot_process: process(CLK, RST)
        begin
            if EN = '1' then
                --state resets  111, 
                --next state is 011
                -- then         001
                --finally       000
                if RST = '1' then
                    temp_dec_pos <= "111";
                end if;
                
                if CLK= '1' and CLK'Event then
                    case temp_dec_pos is	
                        when "110"	=> temp_dec_pos <= "111"; 
                                       finish <= '1';	
                        when "100"	=> temp_dec_pos <= "110";
                                       finish <= '0';				 
                        when "000"	=> temp_dec_pos <= "100";	
                                       finish <= '0';                         
                        when others => temp_dec_pos <= "000";
                                       finish <= '0';
                    end case;   
                end if;
             end if;  
        end process dot_process;
        
    DEC_POS <= temp_dec_pos;
    
end Behavioral;
