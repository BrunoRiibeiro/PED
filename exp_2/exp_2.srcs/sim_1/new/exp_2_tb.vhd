----------------------------------------------------------------------------------
-- Create Date: 28.12.2022
-- Design Name: Bruno Ribeiro
-- Module Name: exp_2_tb - Behavioral
-- Project Name: exp_2
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity exp_2_tb is
end exp_2_tb;

architecture Behavioral of exp_2_tb is
    component exp_2
         Port ( p0  : in STD_LOGIC;
                p1  : in STD_LOGIC;
                p2  : in STD_LOGIC;
                p3  : in STD_LOGIC;
                x1  : out STD_LOGIC;
                x2  : out STD_LOGIC;
                int : out STD_LOGIC);
     end component;
     
     signal sp0, sp1, sp2, sp3, sint, sx1, sx2: STD_LOGIC:='0';
     
begin
    uut: exp_2 port map (
        p0  => sp0,
        p1  => sp1,
        p2  => sp2,
        p3  => sp3,
        x1  => sx1,
        x2  => sx2,
        int => sint);
    
    stimulus: process
    begin
        sp0 <= '0'; sp1 <= '0'; sp2 <= '0'; sp3 <= '0'; wait for 10 ns;
        sp0 <= '0'; sp1 <= '0'; sp2 <= '0'; sp3 <= '1'; wait for 10 ns;
        sp0 <= '0'; sp1 <= '0'; sp2 <= '1'; sp3 <= '0'; wait for 10 ns;
        sp0 <= '0'; sp1 <= '0'; sp2 <= '1'; sp3 <= '1'; wait for 10 ns;
        sp0 <= '0'; sp1 <= '1'; sp2 <= '0'; sp3 <= '0'; wait for 10 ns;
        sp0 <= '0'; sp1 <= '1'; sp2 <= '0'; sp3 <= '1'; wait for 10 ns;
        sp0 <= '0'; sp1 <= '1'; sp2 <= '1'; sp3 <= '0'; wait for 10 ns;
        sp0 <= '0'; sp1 <= '1'; sp2 <= '1'; sp3 <= '1'; wait for 10 ns;
        sp0 <= '1'; sp1 <= '0'; sp2 <= '0'; sp3 <= '0'; wait for 10 ns;
        sp0 <= '1'; sp1 <= '0'; sp2 <= '0'; sp3 <= '1'; wait for 10 ns;
        sp0 <= '1'; sp1 <= '0'; sp2 <= '1'; sp3 <= '0'; wait for 10 ns;
        sp0 <= '1'; sp1 <= '0'; sp2 <= '1'; sp3 <= '1'; wait for 10 ns;
        sp0 <= '1'; sp1 <= '1'; sp2 <= '0'; sp3 <= '0'; wait for 10 ns;
        sp0 <= '1'; sp1 <= '1'; sp2 <= '0'; sp3 <= '1'; wait for 10 ns;
        sp0 <= '1'; sp1 <= '1'; sp2 <= '1'; sp3 <= '0'; wait for 10 ns;
        sp0 <= '1'; sp1 <= '1'; sp2 <= '1'; sp3 <= '1'; wait for 10 ns;
    end process;

end Behavioral;
