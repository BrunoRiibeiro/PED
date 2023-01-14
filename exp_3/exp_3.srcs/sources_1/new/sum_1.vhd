----------------------------------------------------------------------------------
-- Create Date: 09.01.2023
-- Design Name: Bruno Ribeiro
-- Module Name: sum_1 - Behavioral
-- Project Name: sum of 1 bit
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sum_1 is
    Port ( a, b, cin : in STD_LOGIC;
           s, cout   : out STD_LOGIC);
end sum_1;

architecture Behavioral of sum_1 is
begin

    s <= a xor b xor cin;
    cout <= (a and b) or (a and cin) or (b and cin);

end Behavioral;
