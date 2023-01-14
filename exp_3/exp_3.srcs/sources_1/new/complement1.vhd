----------------------------------------------------------------------------------
-- Create Date: 09.01.2023
-- Design Name: Bruno Ribeiro
-- Module Name: complement1 - Behavioral
-- Project Name: complement of 1
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity complement1 is
    Port ( x   : in STD_LOGIC_VECTOR(3 downto 0);
           sel : in STD_LOGIC_VECTOR(1 downto 0);
           s   : out STD_LOGIC_VECTOR(3 downto 0));
end complement1;

architecture Behavioral of complement1 is
begin
    
    s <= x when sel = '0' else not x;

end Behavioral;
