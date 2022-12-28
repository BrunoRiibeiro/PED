----------------------------------------------------------------------------------
-- Create Date: 28.12.2022
-- Design Name: Bruno Ribeiro
-- Module Name: exp_2 - Behavioral
-- Project Name: exp_2
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity exp_2 is
    Port ( p0 : in STD_LOGIC;
           p1 : in STD_LOGIC;
           p2 : in STD_LOGIC;
           p3 : in STD_LOGIC;
           x1 : out STD_LOGIC;
           x2 : out STD_LOGIC;
           int : out STD_LOGIC);
end exp_2;

architecture Behavioral of exp_2 is
begin
    int <= p0 or p1 or p2 or p3;
    x1  <= (not p0) and (not p1);
    x2  <= (not p0 and p1) or (not p0 and not p2);

end Behavioral;
