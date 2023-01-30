library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ff_D is
    Port ( D : in STD_LOGIC;
           clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Q_not : out STD_LOGIC);
end ff_D;

architecture Behavioral of ff_D is 
    signal qt: STD_LOGIC;
begin
    Q <= qt;
    Q_not <= not qt;

    ffD: process(clk)
    begin
        if rising_edge(clk)  then
              qt <= D;       
        end if;
    end process;
end Behavioral;