----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.03.2020 14:59:56
-- Design Name: 
-- Module Name: State_source - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity state is
    Port ( 
            clk_in: in STD_LOGIC;
            change_state : in STD_LOGIC;
            S1 : out STD_LOGIC;
            S2 : out STD_LOGIC;
            S3 : out STD_LOGIC);
end state;

architecture Behavioral of state is
    signal states: STD_LOGIC_VECTOR(2 downto 0);
    signal flag: STD_LOGIC := '0';
begin
state_switch: process (clk_in) 
begin
    if rising_edge(clk_in) then
           if change_state = '1' and flag = '0' then
                flag <= '1';
                case states is					 -- abcdefg segments
                       when "100" => states <= "010";	  -- go to pause
                       when "010" => states <= "001";	  -- pause, go to reset
                       when "001" => states <= "100";     -- reset, go to go.
                       when others => states <= "010";  --start at pause.
                 end case;
		    end if;
		  
		    if change_state = '0' then
		      flag <= '0';    
		    end if;
		  
            --states <= "010";    
            S1 <= states(0);
            S2 <= states(1);
            S3 <= states(2);
    end if;  
   

end process;

end Behavioral;
