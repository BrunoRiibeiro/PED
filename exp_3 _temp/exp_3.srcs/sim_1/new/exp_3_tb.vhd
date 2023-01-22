----------------------------------------------------------------------------------
-- Create Date: 16.01.2023
-- Design Name: Bruno Ribeiro
-- Module Name: exp_3_tb - Behavioral
-- Project Name: 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity exp_3_tb is
end exp_3_tb;

architecture Behavioral of exp_3_tb is
    component exp_3
        Port ( A : in  std_logic_vector(3 downto 0);
           B : in  std_logic_vector(3 downto 0);
           S : in  std_logic_vector(1 downto 0);
           F : out std_logic_vector(3 downto 0);
           over : out std_logic;
           c_out : out std_logic);
    end component;
    
    signal sA, sB, sF: STD_LOGIC_VECTOR(3 downto 0):="0000";
    signal sS: STD_LOGIC_VECTOR(1 downto 0):="00";
    signal sover, sc_out: STD_LOGIC:='0';
    
begin
    uut: exp_3 port map (
        A => sA,
        B => sB,
        F => sF,
        S => sS,
        over => sover,
        c_out => sc_out);
        
    stimulus: process
    begin
        sA <= "0000"; sB <= "0000"; sS <= "00"; wait for 10 ns;
        sA <= "0000"; sB <= "0000"; sS <= "01"; wait for 10 ns;
        sA <= "1111"; sB <= "1111"; sS <= "00"; wait for 10 ns;
        sA <= "1111"; sB <= "1111"; sS <= "01"; wait for 10 ns;
        sA <= "1111"; sB <= "0001"; sS <= "00"; wait for 10 ns;
        sA <= "1111"; sB <= "0001"; sS <= "01"; wait for 10 ns;
        sA <= "0101"; sB <= "0001"; sS <= "00"; wait for 10 ns;
        sA <= "0101"; sB <= "0001"; sS <= "01"; wait for 10 ns;
    end process;

end Behavioral;
