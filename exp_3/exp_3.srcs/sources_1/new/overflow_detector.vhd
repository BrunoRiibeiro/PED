----------------------------------------------------------------------------------
-- Create Date: 09.01.2023
-- Design Name: Bruno Ribeiro
-- Module Name: overflow_detector - Behavioral
-- Project Name: overflow detector
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity overflow_detector is
    Port ( x, y, z : in STD_LOGIC;
           over    : out STD_LOGIC);
end overflow_detector;

architecture Behavioral of overflow_detector is
begin

    over <= '1' when (x = y) and (x = not z) else '0';

end Behavioral;
