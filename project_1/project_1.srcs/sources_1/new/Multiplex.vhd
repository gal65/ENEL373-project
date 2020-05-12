----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.03.2020 09:26:09
-- Design Name: 
-- Module Name: Multiplex - Behavioral
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

entity Multiplex is
    Port ( clk_in : in STD_LOGIC;
           cntr_1 : in std_logic_vector(3 downto 0);
           cntr_2 : in std_logic_vector(3 downto 0);
           cntr_3 : in std_logic_vector(3 downto 0);
           cntr_4 : in std_logic_vector(3 downto 0);
           dec_pos : in std_logic_vector(2 downto 0);
           en_dec : in std_logic;
           disp : out unsigned (7 downto 0);
           cntr_out: out std_logic_vector(3 downto 0);
           dec_point: out STD_LOGIC);
           
end Multiplex;

architecture Behavioral of Multiplex is
    signal temp:   unsigned (7 downto 0) := "11111110";
    signal dec_pos_buffer: STD_logic_vector(2 downto 0);
begin
shift: process (clk_in)
begin
    --shifts the value left 1 each clock input
    if rising_edge(Clk_in) then
        temp <= unsigned (to_stdlogicvector(to_bitvector(std_logic_vector(temp)) rol 1));
        disp <= temp;
        
        if en_dec = '1' then
            dec_pos_buffer <= dec_pos;
        else
            dec_pos_buffer <= "111";
        end if;
        
        
        --cases for which number is displayed\
        case temp is					 -- abcdefg segments
				when "11111110"	=> cntr_out <= cntr_1;
				                   dec_point <= dec_pos_buffer(0);	  -- if BCD is "0000" write a zero to display
				when "11111101"	=> cntr_out <= cntr_2;	  -- etc...
				                   dec_point <= dec_pos_buffer(1);
				when "11111011"	=> cntr_out <= cntr_3; 
				                   dec_point <= dec_pos_buffer(2);   --decimal point here
				when "11110111"	=> cntr_out <= cntr_4;
				                   dec_point <= '1';
				when others => cntr_out <= "0000";
				                   dec_point <= '1';
		end case;
		
		
        
        
    end if;
end process;
    

end Behavioral;
