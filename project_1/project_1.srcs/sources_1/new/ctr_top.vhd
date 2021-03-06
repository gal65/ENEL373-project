----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jarrod Zhu, Tristin Weastell, Gordon Lay
-- 
-- Create Date: 09.03.2020 09:20:05
-- Design Name: 
-- Module Name: ctr_top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: The top level defines all the connections and signals to each component
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
    -- DEFINING ALL SIGNALS --
    
    signal leds_out: std_logic_vector (1 to 7);
    signal Clk_out_disp:  STD_LOGIC;
    signal Clk_out_cntr:  STD_LOGIC;
    signal Clk_out_seconds:  STD_LOGIC;
    
    --counter signals
    signal Cntr_1 : std_logic_vector (0 to 3);
    signal Cntr_2 : std_logic_vector (0 to 3);
    signal Cntr_3 : std_logic_vector (0 to 3);
    signal Cntr_4 : std_logic_vector (0 to 3);
    signal carry: std_logic;
    signal Cntr_out: std_logic_vector (0 to 3);
    
    --enable and reset signals
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
   
    --assigns constants that correspond to a set time in clock divider
    constant clk_limit_disp : std_logic_vector(27 downto 0) := X"00061A8"; -- 500 Hz   "
    constant clk_limit_cntr : std_logic_vector(27 downto 0) := X"000C350"; -- 100 Hz   "
    constant clk_limit_seconds : std_logic_vector(27 downto 0) := X"2FAF07E"; -- 1Hz   "
    --constant clk_limit_3_seconds : std_logic_vector(27 downto 0) := ; -- 1Hz   "
    
    -- DEFINING COMPONENTS --
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
    
    component quad_counter
    Port ( CLK_IN : in STD_LOGIC;
           EN : in STD_LOGIC;
           RESET : in STD_LOGIC;
           CNTR1 : out STD_LOGIC_VECTOR (3 downto 0);
           CNTR2 : out STD_LOGIC_VECTOR (3 downto 0);
           CNTR3 : out STD_LOGIC_VECTOR (3 downto 0);
           CNTR4 : out STD_LOGIC_VECTOR (3 downto 0);
           OVERFLOW : OUT STD_LOGIC);
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
    --multiple dividers used as different timings for components
    DIV_CLK_SET: my_divider port map(CLK100MHZ, clk_limit_disp, Clk_out_disp);
    DIV_CNTR_SET: my_divider port map(CLK100MHZ, clk_limit_cntr, Clk_out_cntr);
    DIV_SECONDS_SET: my_divider port map(CLK100MHZ, clk_limit_seconds, Clk_out_seconds);
    
    --decides which input will be used to change the state.
    INPUT_MULTIPLEXER_SET: input_multiplexer port map(S2, BTNC, countdown_out, change_state);
    
    STATE_SET: state port map(clk_out_disp, change_state, S1, S2, S3, S4);
      --states description:
      --s1: off state
      --s2: light count down
      --s3: timer go
      --s4: timer pause to display time
   
    --state switching, takes a single button input, and changes the state forward 1.
    
    --decade counter which counts up to a limit of 9999
    DEC_COUNT: quad_counter port map(Clk_out_cntr, S3, S2, Cntr_1, Cntr_2, Cntr_3, Cntr_4, carry); -- counts based on clock signal
    
    --define the decimal position for countdown
    DEC_POS_SET: dot_control port map(Clk_out_seconds, S2, Decimal_pos, countdown_out);
    
    --connects the multiplexer up which changes the display and displays each counter
    MUX_SET: Multiplex port map(clk_out_disp, Cntr_1, Cntr_2, Cntr_3, Cntr_4, Decimal_pos, S2, AN, Cntr_out, DP);
    
    --sets the individual BCD segments on the board to show the number
    BCD_SET: BCD_to_7SEG port map(Cntr_out, S4, S3,
                                        leds_out(1) => CA, 
                                        leds_out(2) => CB, 
                                        leds_out(3) => CC, 
                                        leds_out(4) => CD,
                                        leds_out(5) => CE, 
                                        leds_out(6) => CF, 
                                        leds_out(7) => CG);
                                        
    
end Behavioral;
