----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.03.2020 09:20:05
-- Design Name: 
-- Module Name: ctr_top - Behavioral
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

entity ctr_top is
    Port ( CLK100MHZ : in STD_LOGIC;
           BTNC: in STD_LOGIC;
           SW : in STD_LOGIC_VECTOR (15 downto 0);
           CA : out STD_LOGIC;
           CB : out STD_LOGIC;
           CC : out STD_LOGIC;
           CD : out STD_LOGIC;
           CE : out STD_LOGIC;
           CF : out STD_LOGIC;
           CG : out STD_LOGIC;
           DP: out STD_LOGIC;
           AN : out unsigned (7 downto 0));
end ctr_top;

architecture Behavioral of ctr_top is
    signal leds_out: std_logic_vector (1 to 7);
    signal Clk_out_disp:  STD_LOGIC;
    signal Clk_out_cntr:  STD_LOGIC;
    
    signal Cntr_1 : std_logic_vector (0 to 3);
    signal ripple_1 : STD_LOGIC;
    signal Cntr_2 : std_logic_vector (0 to 3);
    signal ripple_2 : STD_LOGIC;
    signal Cntr_3 : std_logic_vector (0 to 3);
    signal ripple_3 : STD_LOGIC;
    signal Cntr_4 : std_logic_vector (0 to 3);
    signal ripple_4 : STD_LOGIC;
    
    signal Cntr_out: std_logic_vector (0 to 3);
    signal active : STD_LOGIC;
    signal reset_clock: STD_LOGIC;
    
    --state signals
    signal S1: STD_LOGIC;
    signal S2: STD_LOGIC;
    signal S3: STD_LOGIC;
    
    
    constant clk_limit_disp : std_logic_vector(27 downto 0) := X"00061A8"; -- 500 Hz   "
    constant clk_limit_cntr : std_logic_vector(27 downto 0) := X"007A120"; -- 100 Hz   "
    
    
    component BCD_to_7SEG
        port(bcd_in: in std_logic_vector (3 downto 0);	-- Input BCD vector
 			leds_out: out	std_logic_vector (1 to 7));
    end component;
    
    component my_divider
        port(Clk_in  : in  STD_LOGIC;
             clk_limit: in std_logic_vector(27 downto 0);
             Clk_out : out  STD_LOGIC);
    end component;
    
    component cntr_clk
        port( Clk_in : in STD_LOGIC;
           pause : in STD_LOGIC;
           reset: in STD_LOGIC;
           clk_cnt : out STD_LOGIC_VECTOR (3 downto 0);
           shift : out STD_LOGIC);
    end component;
    
  
    component Multiplex
        Port ( clk_in : in STD_LOGIC;
           cntr_1 : in std_logic_vector(3 downto 0);
           cntr_2 : in std_logic_vector(3 downto 0);
           cntr_3 : in std_logic_vector(3 downto 0);
           cntr_4 : in std_logic_vector(3 downto 0);
           disp : out unsigned (7 downto 0);
           cntr_out: out std_logic_vector(3 downto 0);
           dec_point: out STD_LOGIC);
        end component;
    
    component button_toggle
        Port ( button : in STD_LOGIC;
           toggle : out STD_LOGIC);
        end component;
        
          component state
    Port ( clk_in: in STD_LOGIC;
           change_state : in STD_LOGIC;
           S1 : out STD_LOGIC;
           S2 : out STD_LOGIC;
           S3 : out STD_LOGIC);
    end component;
    
    
begin
    
    
    --clock stuff
    DIV_CLK_SET: my_divider port map(CLK100MHZ, clk_limit_disp, Clk_out_disp);
    DIV_CNTR_SET: my_divider port map(CLK100MHZ, clk_limit_cntr, Clk_out_cntr);
    --all digits
    
    
    
    --state switching, takes a single button input, and changes the state forward 1.
    STATE_SET: state port map(clk_out_disp, BTNC, S1, S2, S3);
    
    --TOGGLE_SET: button_toggle port map(SW(0), active);
    CNT_1_SET: cntr_clk port map(Clk_out_cntr, S3, S2, Cntr_1, ripple_1);
    CNT_2_SET: cntr_clk port map(ripple_1, S3, S2, Cntr_2, ripple_2);
    CNT_3_SET: cntr_clk port map(ripple_2, S3, S2, Cntr_3, ripple_3);
    CNT_4_SET: cntr_clk port map(ripple_3, S3, S2, Cntr_4, ripple_4);
    
    MUX_SET: Multiplex port map(clk_out_disp, Cntr_1, Cntr_2, Cntr_3, Cntr_4, AN, Cntr_out, DP);
    

    BCD_SET: BCD_to_7SEG port map(Cntr_out, leds_out(1) => CA, 
                                        leds_out(2) => CB, 
                                        leds_out(3) => CC, 
                                        leds_out(4) => CD,
                                        leds_out(5) => CE, 
                                        leds_out(6) => CF, 
                                        leds_out(7) => CG);
                                        
    
end Behavioral;
