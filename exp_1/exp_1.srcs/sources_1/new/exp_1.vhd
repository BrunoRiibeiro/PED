----------------------------------------------------------------------------------
-- Create Date: 18.12.2022
-- Design Name: Bruno Ribeiro
-- Module Name: exp_1 - Behavioral
-- Project Name: exp_1
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity exp_1 is
    Port ( sw0 : in STD_LOGIC;
           sw1 : in STD_LOGIC;
           sw2 : in STD_LOGIC;
           led0 : out STD_LOGIC);
end exp_1;

architecture Behavioral of exp_1 is
begin
    led0 <= (sw0 and sw2) or (not sw0 and sw1);

end Behavioral;
