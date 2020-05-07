----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.03.2020 18:00:48
-- Design Name: 
-- Module Name: dot_count - Behavioral
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

entity dot_count is
    Port ( clk_in_counter : in STD_LOGIC;
           clk_in_disp : in STD_LOGIC;
           en : in STD_LOGIC;
           dec_point : out STD_LOGIC;
           disp : out unsigned (7 downto 0);
           change_state: out STD_LOGIC);
end dot_count;

architecture Behavioral of dot_count is
signal temp:   unsigned (7 downto 0) := "11111110";
signal counter: STD_LOGIC_VECTOR (2 downto 0) := "000";
begin

dot_counter_multiplex: process(clk_in_disp, clk_in_counter) 
begin

if rising_edge(clk_in_disp) then
    if en = '1' then
        temp <= unsigned (to_stdlogicvector(to_bitvector(std_logic_vector(temp)) rol 1));
        disp <= temp;
        
        --cases for which number is displayed\
        case temp is					 -- abcdefg segments
				when "11111110"	=> dec_point <= counter(0);                 	  
				when "11111101"	=> dec_point <= counter(1);	  -- etc...
				when "11111011"	=> dec_point <= counter(2);
				when others => dec_point <= '0';		                   
		end case;
    
         if rising_edge(clk_in_counter) then
            case counter is					 -- abcdefg segments
				when "000"	=> counter <= "001";    
				               change_state <= '0';             	  
				when "001"	=> counter <= "011";
				               change_state <= '0';	  -- etc...
				when "011"	=> counter <= "000";
				               change_state <= '1';
				when others => counter <= "000";	
				               change_state <= '0';	                   
		end case;
         
         end if;
    
    
    end if;

end if;

end process dot_counter_multiplex;


end Behavioral;
