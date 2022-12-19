----------------------------------------------------------------------------------
-- Create Date: 19.12.2022 20:37:05
-- Design Name: Bruno Ribeiro
-- Module Name: exp_1_tb - Behavioral
-- Project Name: exp_1
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity exp_1_tb is
end exp_1_tb;

architecture Behavioral of exp_1_tb is
    component exp_1
        Port ( sw0 : in STD_LOGIC;
               sw1 : in STD_LOGIC;
               sw2 : in STD_LOGIC;
               led0 : out STD_LOGIC);
    end component;
    
    signal ssw0, ssw1, ssw2, sled0: STD_LOGIC:='0';
    
begin
    uut: exp_1 port map (
        sw0 => ssw0,
        sw1 => ssw1,
        sw2 => ssw2,
        led0 => sled0);
        
    stimulus: process
    begin
        ssw0 <= '0'; ssw1 <= '0'; ssw2 <= '0'; wait for 10 ns;
        ssw0 <= '0'; ssw1 <= '0'; ssw2 <= '1'; wait for 10 ns;
        ssw0 <= '0'; ssw1 <= '1'; ssw2 <= '0'; wait for 10 ns;
        ssw0 <= '0'; ssw1 <= '1'; ssw2 <= '1'; wait for 10 ns;
        ssw0 <= '1'; ssw1 <= '0'; ssw2 <= '0'; wait for 10 ns;
        ssw0 <= '1'; ssw1 <= '0'; ssw2 <= '1'; wait for 10 ns;
        ssw0 <= '1'; ssw1 <= '1'; ssw2 <= '0'; wait for 10 ns;
        ssw0 <= '1'; ssw1 <= '1'; ssw2 <= '1'; wait for 10 ns;
   end process;
   
end Behavioral;
