library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_soma4 is
--  Port ( );
end tb_soma4;

architecture Behavioral of tb_soma4 is

    component soma4
        Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
               B : in STD_LOGIC_VECTOR (3 downto 0);
               Cin : in STD_LOGIC;
               S : out STD_LOGIC_VECTOR (3 downto 0);
               Cout : out STD_LOGIC);
    end component;
    
    signal s_A, s_B, s_S: STD_LOGIC_VECTOR (3 downto 0);
    signal s_Cin, s_Cout:STD_LOGIC;

begin

    uuu: soma4 port map (A=>s_A, B=>s_B, Cin=>s_Cin, S=>s_S, Cout=>s_Cout);

    stimulus: process
    begin
    
        s_A <= "0000"; s_B <= "0000"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "0001"; s_B <= "0000"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "0010"; s_B <= "0000"; s_Cin<='0';
        wait for 10ns;
    
        s_A <= "0011"; s_B <= "0000"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "0100"; s_B <= "0000"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "0101"; s_B <= "0000"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "0110"; s_B <= "0000"; s_Cin<='0';
        wait for 10ns;
    
        s_A <= "0111"; s_B <= "0000"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1000"; s_B <= "0000"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1001"; s_B <= "0000"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1010"; s_B <= "0000"; s_Cin<='0';
        wait for 10ns;
    
        s_A <= "1011"; s_B <= "0000"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1100"; s_B <= "0000"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1101"; s_B <= "0000"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1110"; s_B <= "0000"; s_Cin<='0';
        wait for 10ns;
    
        s_A <= "1111"; s_B <= "0000"; s_Cin<='0';
        wait for 10ns;
        
        
        ---- s_B <= "0001" -----
        
        s_A <= "0000"; s_B <= "0001"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "0001"; s_B <= "0001"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "0010"; s_B <= "0001"; s_Cin<='0';
        wait for 10ns;
    
        s_A <= "0011"; s_B <= "0001"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "0100"; s_B <= "0001"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "0101"; s_B <= "0001"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "0110"; s_B <= "0001"; s_Cin<='0';
        wait for 10ns;
    
        s_A <= "0111"; s_B <= "0001"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1000"; s_B <= "0001"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1001"; s_B <= "0001"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1010"; s_B <= "0001"; s_Cin<='0';
        wait for 10ns;
    
        s_A <= "1011"; s_B <= "0001"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1100"; s_B <= "0001"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1101"; s_B <= "0001"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1110"; s_B <= "0001"; s_Cin<='0';
        wait for 10ns;
    
        s_A <= "1111"; s_B <= "0001"; s_Cin<='0';
        wait for 10ns;
        
        ---- s_B <= "0011"/"0010" -----
        
        s_A <= "0000"; s_B <= "0011"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "0001"; s_B <= "0011"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "0010"; s_B <= "0011"; s_Cin<='0';
        wait for 10ns;
    
        s_A <= "0011"; s_B <= "0011"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "0100"; s_B <= "0011"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "0101"; s_B <= "0011"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "0110"; s_B <= "0010"; s_Cin<='0';
        wait for 10ns;
    
        s_A <= "0111"; s_B <= "0010"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1000"; s_B <= "0010"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1001"; s_B <= "0010"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1010"; s_B <= "0010"; s_Cin<='0';
        wait for 10ns;
    
        s_A <= "1011"; s_B <= "0010"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1100"; s_B <= "0010"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1101"; s_B <= "0010"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1110"; s_B <= "0010"; s_Cin<='0';
        wait for 10ns;
    
        s_A <= "1111"; s_B <= "0010"; s_Cin<='0';
        wait for 10ns;
        
        ---- s_B <= "0100"/"0101"/"0111"/"0110" -----
        
        s_A <= "0000"; s_B <= "0100"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "0001"; s_B <= "0100"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "0010"; s_B <= "0100"; s_Cin<='0';
        wait for 10ns;
    
        s_A <= "0011"; s_B <= "0101"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "0100"; s_B <= "0101"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "0101"; s_B <= "0101"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "0110"; s_B <= "0111"; s_Cin<='0';
        wait for 10ns;
    
        s_A <= "0111"; s_B <= "0111"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1000"; s_B <= "0111"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1001"; s_B <= "0111"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1010"; s_B <= "0110"; s_Cin<='0';
        wait for 10ns;
    
        s_A <= "1011"; s_B <= "0110"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1100"; s_B <= "0110"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1101"; s_B <= "0110"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1110"; s_B <= "0110"; s_Cin<='0';
        wait for 10ns;
    
        s_A <= "1111"; s_B <= "0110"; s_Cin<='0';
        wait for 10ns;
        
         ---- s_B <= "1100"/"1101"/"1111"/"1110" -----
        
        s_A <= "0000"; s_B <= "1100"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "0001"; s_B <= "1100"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "0010"; s_B <= "1100"; s_Cin<='0';
        wait for 10ns;
    
        s_A <= "0011"; s_B <= "1101"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "0100"; s_B <= "1101"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "0101"; s_B <= "1101"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "0110"; s_B <= "1101"; s_Cin<='0';
        wait for 10ns;
    
        s_A <= "0111"; s_B <= "1110"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1000"; s_B <= "1110"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1001"; s_B <= "1110"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1010"; s_B <= "1110"; s_Cin<='0';
        wait for 10ns;
    
        s_A <= "1011"; s_B <= "1110"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1100"; s_B <= "1111"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1101"; s_B <= "1111"; s_Cin<='0';
        wait for 10ns;
        
        s_A <= "1110"; s_B <= "1111"; s_Cin<='0';
        wait for 10ns;
    
        s_A <= "1111"; s_B <= "1111"; s_Cin<='0';        
        wait;
    end process;

end Behavioral;
