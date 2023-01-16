library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity soma4 is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Cin : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Cout : out STD_LOGIC);
end soma4;

architecture Behavioral of soma4 is

    signal c0, c1, c2: STD_LOGIC;
    
    component soma1
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               cin : in STD_LOGIC;
               s : out STD_LOGIC;
               cout : out STD_LOGIC);
    end component;

begin

    sum1: soma1 port map (a=>A(0), b=>B(0), cin=>Cin, s=>S(0), cout=>c0);
    sum2: soma1 port map (a=>A(1), b=>B(1), cin=>c0, s=>S(1), cout=>c1);
    sum3: soma1 port map (a=>A(2), b=>B(2), cin=>c1, s=>S(2), cout=>c2);
    sum4: soma1 port map (a=>A(3), b=>B(3), cin=>c2, s=>S(3), cout=>Cout);

end Behavioral;











