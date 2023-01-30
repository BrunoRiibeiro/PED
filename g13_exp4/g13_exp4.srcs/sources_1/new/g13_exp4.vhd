library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity g13_exp4 is
    Port ( D : in std_logic_vector (3 downto 0);
           Q : out std_logic_vector (3 downto 0);
           CLK : in std_logic;
           CLR : in std_logic);
end g13_exp4;

architecture Behavioral of g13_exp4 is
    component ff_D
        Port ( D : in STD_LOGIC;
               clk : in STD_LOGIC;
               Q : out STD_LOGIC;
               Q_not : out STD_LOGIC);
    end component;
    signal output : std_logic_vector (3 downto 0);
    signal output_not : std_logic_vector (3 downto 0);
    signal s_CLK : std_logic;
begin
    ff0: ff_D port map (D=>D(0), clk=>CLK, Q=> output(0), Q_not => output_not(0));
    ff1: ff_D port map (D=>D(1), clk=>CLK, Q=> output(1), Q_not => output_not(1));
    ff2: ff_D port map (D=>D(2), clk=>CLK, Q=> output(2), Q_not => output_not(2));
    ff3: ff_D port map (D=>D(3), clk=>CLK, Q=> output(3), Q_not => output_not(3));
  
    Q <= output;
    process 
        begin 
            wait for 1 sec;
            s_clk <= not CLK;
    end process;
end Behavioral;
