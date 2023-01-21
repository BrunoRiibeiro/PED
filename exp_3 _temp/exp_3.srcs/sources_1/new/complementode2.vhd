library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity complementode2 is
    Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
           s : out STD_LOGIC_VECTOR (3 downto 0));
end complementode2;

architecture Behavioral of complementode2 is
    signal carries: STD_LOGIC_VECTOR(2 downto 0);
    signal numero1 : STD_LOGIC_VECTOR(3 downto 0) := "0001";
    component soma1
            Port ( a : in STD_LOGIC;
                b : in STD_LOGIC;
                cin : in STD_LOGIC;
                s : out STD_LOGIC;
                cout : out STD_LOGIC);
    end component;
begin
    sum1: soma1 port map (a=>not a(0), b=>numero1(0), cin=>0, s=>f(0), cout=>c(0));
    sum2: soma1 port map (a=>not a(1), b=>numero1(1), cin=>c(0), s=>f(1), cout=>c(1));
    sum3: soma1 port map (a=>not a(2), b=>numero1(2), cin=>c(1), s=>f(2), cout=>c(2));
    sum4: soma1 port map (a=>not a(3), b=>numero1(3), cin=>c(2), s=>f(3), cout=>Cout);
end Behavioral;

