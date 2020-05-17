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
            S3 : out STD_LOGIC;
            S4 : out STD_LOGIC);
end state;

architecture Behavioral of state is
    signal states: STD_LOGIC_VECTOR(3 downto 0);
    signal flag: STD_LOGIC := '0';
begin
state_switch: process (clk_in) 
begin
    if rising_edge(clk_in) then
           if change_state = '1' and flag = '0' then
                flag <= '1';
                case states is					 -- abcdefg segments
                       when "1000" => states <= "0100";	  -- go to pause
                       when "0100" => states <= "0010";	  -- pause, go to reset
                       when "0010" => states <= "0001";   -- reset, go to go.
                       when "0001" => states <= "1000";   -- reset, go to go.
                       when others => states <= "0100";  --start at reset.
                 end case;
		    end if;
		  
		    if change_state = '0' then
		      flag <= '0';    
		    end if;
		  
            --states <= "010";    
            S1 <= states(3);
            S2 <= states(2);
            S3 <= states(1);
            S4 <= states(0);
    end if;  
   

end process;

end Behavioral;
