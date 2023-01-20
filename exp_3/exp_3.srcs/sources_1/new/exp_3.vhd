----------------------------------------------------------------------------------
-- Create Date: 02.01.2023
-- Design Name: Bruno Ribeiro
-- Module Name: exp_3 - Behavioral
-- Project Name: exp_3
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity exp_3 is
    Port ( A, B        : in  std_logic_vector(3 downto 0);
           S           : in  std_logic_vector(1 downto 0);
           F           : out std_logic_vector(3 downto 0);
           over, c_out : out std_logic);
end exp_3;

architecture Behavioral of exp_3 is
begin
    process(A, B, S)
    variable temp : std_logic_vector(4 downto 0);
    begin
        case S is
            when "00" =>
                temp := std_logic_vector(signed(A) + signed(B));
                F <= temp(3 downto 0);
                over <= temp(4);
                c_out <= temp(3);
            when "01" =>
                temp := std_logic_vector(signed(A) - signed(B));
                F <= temp(3 downto 0);
                over <= temp(4);
                c_out <= temp(3);
            when "10" =>
                F <= A and B;
                over <= '0';
                c_out <= '0';
            when "11" =>
                F <= A or B;
                over <= '0';
                c_out <= '0';
            when others =>
                F <= (others => 'X');
                over <= 'X';
                c_out <= 'X';
        end case;
    end process;
end Behavioral;
