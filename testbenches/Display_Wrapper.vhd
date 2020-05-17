----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/13/2020 12:51:05 PM
-- Design Name: 
-- Module Name: Display_Wrapper - Behavioral
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

entity Display_Wrapper is
port (CLK     : in STD_LOGIC;
        Message : in STD_LOGIC_VECTOR (15 downto 0);
        CA, CB, CC, CD, CE, CF, CG : out STD_LOGIC;
                                 -- Segment cathodes
        AN 	    : out STD_LOGIC_VECTOR ( 3 downto 0));
end Display_Wrapper;

architecture Behavioral of Display_Wrapper is

    signal Cntr_out: std_logic_vector (0 to 3);
    
    signal Cntr_1 : std_logic_vector (0 to 3);
    signal Cntr_2 : std_logic_vector (0 to 3);
    signal Cntr_3 : std_logic_vector (0 to 3);
    signal Cntr_4 : std_logic_vector (0 to 3);
    signal Decimal_pos : std_logic_vector(2 downto 0);
    signal EN_DEC: std_logic;
    signal AN_LOC: unsigned(7 downto 0);
    signal DP_OUT: std_logic;
    signal EN: std_logic;


    component Multiplex is
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
        end component;
        
        component BCD_to_7SEG is
		   Port ( bcd_in: in std_logic_vector (3 downto 0);	-- Input BCD vector
		          en: in std_logic;
		          en2: in STD_LOGIC;
    			leds_out: out	std_logic_vector (1 to 7));		-- Output 7-Seg vector 
            end component;
    			
begin
    Cntr_1 <= Message(3 downto 0);
    Cntr_2 <= Message(7 downto 4);
    Cntr_3 <= Message(11 downto 8);
    Cntr_4<= Message(15 downto 12);
    Decimal_pos <= "000";
    EN_DEC <= '0';
    EN <= '1';
    
    MUX_SET: Multiplex port map(Clk, 
        Cntr_1, 
        Cntr_2, 
        Cntr_3, 
        Cntr_4, 
        Decimal_pos,
         EN_DEC, 
         AN_LOC, 
         Cntr_out, 
         DP_OUT);
         
    BCD_SET: BCD_to_7SEG port map(Cntr_out, EN, EN,
                                        leds_out(1) => CA, 
                                        leds_out(2) => CB, 
                                        leds_out(3) => CC, 
                                        leds_out(4) => CD,
                                        leds_out(5) => CE, 
                                        leds_out(6) => CF, 
                                        leds_out(7) => CG);


AN <= std_logic_vector(AN_LOC(3 downto 0));
end Behavioral;
