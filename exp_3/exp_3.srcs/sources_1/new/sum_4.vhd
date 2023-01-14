----------------------------------------------------------------------------------
-- Create Date: 09.01.2023
-- Design Name: Bruno Ribeiro
-- Module Name: sum_4 - Behavioral
-- Project Name: sum of 4 bits
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sum_4 is
    Port (A, B : in STD_LOGIC_VECTOR (3 downto 0);
          S    : out STD_LOGIC_VECTOR (3 downto 0);
          Cin  : in STD_LOGIC;
          Cout : out STD_LOGIC);
end sum_4;

architecture Behavioral of sum_4 is
    component sum_1 is
        Port ( a, b, cin : in STD_LOGIC;
               s, cout   : out STD_LOGIC);
    end component;
    
    signal c0, c1, c2: STD_LOGIC;

begin

    sum1: sum_1 port map (a => A(0), b => B(0), cin => Cin, s => S(0), cout => c0);
    sum2: sum_1 port map (a => A(1), b => B(1), cin => c0, s => S(1), cout => c1);
    sum3: sum_1 port map (a => A(2), b => B(2), cin => c1, s => S(2), cout => c2);
    sum4: sum_1 port map (a => A(3), b => B(3), cin => c2, s => S(3), cout => Cout);

end Behavioral;
