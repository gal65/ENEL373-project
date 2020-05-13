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
    signal Clk_out_seconds:  STD_LOGIC;
    
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
    signal S1: STD_LOGIC; -- reset / off
    signal S2: STD_LOGIC; -- light count down
    signal S3: STD_LOGIC; --timer start
    signal S4: STD_LOGIC; --pause
    
    --siganls for change state input multiplexer
    signal light_countdown: STD_LOGIC;
    signal change_state: STD_LOGIC;
    
    --decimal point state control
    signal Decimal_pos : std_logic_vector(2 downto 0);
    
    --signal for the output of the countodwn clock
    signal countdown_out : std_logic; 
    
    constant clk_limit_disp : std_logic_vector(27 downto 0) := X"00061A8"; -- 500 Hz   "
    constant clk_limit_cntr : std_logic_vector(27 downto 0) := X"007A120"; -- 100 Hz   "
    constant clk_limit_seconds : std_logic_vector(27 downto 0) := X"2FAF07E"; -- 1Hz   "
    --constant clk_limit_3_seconds : std_logic_vector(27 downto 0) := ; -- 1Hz   "
    
    
    component DOT_CONTROL
        Port ( CLK : in STD_LOGIC;
           EN : in STD_LOGIC;
           DEC_POS : out STD_LOGIC_VECTOR(2 downto 0);
           OUTPUT : out STD_LOGIC);
    end component;
    
    component BCD_to_7SEG
        port(bcd_in: in std_logic_vector (3 downto 0);	-- Input BCD vector
            en: in std_logic;
            en2: in std_logic;
 			leds_out: out	std_logic_vector (1 to 7));
    end component;
    
    component my_divider
        port(Clk_in  : in  STD_LOGIC;
             clk_limit: in std_logic_vector(27 downto 0);
             Clk_out : out  STD_LOGIC);
    end component;
    
    component cntr_clk
        port( Clk_in : in STD_LOGIC;
           carry_in: in STD_LOGIC;
           go : in STD_LOGIC;
           reset: in STD_LOGIC;
           clk_cnt : out STD_LOGIC_VECTOR (3 downto 0);
           shift : out STD_LOGIC);
    end component;
    
    component counter
    Port ( Clk : in STD_LOGIC;
           Limit : in STD_LOGIC_vector(27 downto 0);
           EN : in STD_LOGIC;
           Output : out STD_LOGIC);
    end component;
    
  
    component Multiplex
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
           
    component state
    Port ( clk_in: in STD_LOGIC;
           change_state : in STD_LOGIC;
           S1 : out STD_LOGIC;
           S2 : out STD_LOGIC;
           S3 : out STD_LOGIC;
           S4 : out STD_LOGIC);
    end component;
    
    component input_multiplexer is
    Port ( selector : in STD_LOGIC;
           button : in STD_LOGIC;
           countdown : in STD_LOGIC;
           change_state : out STD_LOGIC);
     end component;
    
    
begin
    
    
    --clock stuff
    DIV_CLK_SET: my_divider port map(CLK100MHZ, clk_limit_disp, Clk_out_disp);
    DIV_CNTR_SET: my_divider port map(CLK100MHZ, clk_limit_cntr, Clk_out_cntr);
    DIV_SECONDS_SET: my_divider port map(CLK100MHZ, clk_limit_seconds, Clk_out_seconds);
    --all digits
    
   
    
    INPUT_MULTIPLEXER_SET: input_multiplexer port map(S2, BTNC, countdown_out, change_state);
    
    STATE_SET: state port map(clk_out_disp, change_state, S1, S2, S3, S4);
       
   
    --state switching, takes a single button input, and changes the state forward 1.
    
    
    --TOGGLE_SET: button_toggle port map(SW(0), active);
    CNT_1_SET: cntr_clk port map(Clk_out_cntr, '1', S3, S1, Cntr_1, ripple_1); -- counts based on clock signal
    CNT_2_SET: cntr_clk port map(Clk_out_cntr, ripple_1, S3, S1, Cntr_2, ripple_2);
    CNT_3_SET: cntr_clk port map(Clk_out_cntr, ripple_2, S3, S1, Cntr_3, ripple_3);
    CNT_4_SET: cntr_clk port map(Clk_out_cntr, ripple_3, S3, S1, Cntr_4, ripple_4);
    
    --define the decimal position for countdown
    DEC_POS_SET: dot_control port map(Clk_out_seconds, S2, Decimal_pos, countdown_out);
    
    MUX_SET: Multiplex port map(clk_out_disp, Cntr_1, Cntr_2, Cntr_3, Cntr_4, Decimal_pos, S2, AN, Cntr_out, DP);
    

    BCD_SET: BCD_to_7SEG port map(Cntr_out, S4, S3,
                                        leds_out(1) => CA, 
                                        leds_out(2) => CB, 
                                        leds_out(3) => CC, 
                                        leds_out(4) => CD,
                                        leds_out(5) => CE, 
                                        leds_out(6) => CF, 
                                        leds_out(7) => CG);
                                        
    
end Behavioral;
