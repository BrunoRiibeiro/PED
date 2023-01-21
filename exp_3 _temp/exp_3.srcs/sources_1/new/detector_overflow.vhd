library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity detector_overflow is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           z : in STD_LOGIC;
           over : out STD_LOGIC);
end detector_overflow;

architecture Behavioral of detector_overflow is

begin
    over <= '1' when (x=y) and (x = not z) else
            '0';
end Behavioral;
