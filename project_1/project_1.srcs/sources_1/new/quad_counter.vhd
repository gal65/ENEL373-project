----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.05.2020 15:59:40
-- Design Name: 
-- Module Name: quad_counter - Behavioral
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

entity quad_counter is
    Port ( CLK_IN : in STD_LOGIC;
           EN : in STD_LOGIC;
           RESET : in STD_LOGIC;
           CNTR1 : out STD_LOGIC_VECTOR (3 downto 0);
           CNTR2 : out STD_LOGIC_VECTOR (3 downto 0);
           CNTR3 : out STD_LOGIC_VECTOR (3 downto 0);
           CNTR4 : out STD_LOGIC_VECTOR (3 downto 0);
           OVERFLOW : OUT STD_LOGIC);
end quad_counter;

architecture Behavioral of quad_counter is


begin

        
count : process(CLK_IN, RESET) 

variable counter1 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
variable counter2 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
variable counter3 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
variable counter4 : STD_LOGIC_VECTOR (3 downto 0) := "0000";

begin
        
    if falling_edge(Clk_in) and EN = '1' then   
        counter1 := counter1 + "0001"; 
        if counter1 = "1010" then
            counter1 := "0000";
            --add to the next counter
            counter2 := counter2 + "0001";     
            if counter2 = "1010" then
                 counter2 := "0000";
                --add to the next counter
                counter3 := counter3 + "0001";     
                if counter3 = "1010" then
                    counter3 := "0000";
                    --add to the next counter
                    counter4 := counter4 + "0001";     
                    if counter4 = "1010" then
                        counter4 := "0000";
                        OVERFLOW <= '1';                  
                    end if;
                end if;
            end if;         
        end if;       
    end if;

    if RESET = '1' then
        counter1 := "0000";
        counter1 := "0000";
        counter1 := "0000";
        counter1 := "0000";
        OVERFLOW <= '0';
    end if;
    
    CNTR1 <= counter1;
    CNTR2 <= counter2;
    CNTR3 <= counter3;
    CNTR4 <= counter4;
    
    
end process count;


end Behavioral;
