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
    generic(NUM_Bits: integer := 5);
    Port ( A, B        : in  std_logic_vector(3 downto 0);
           S           : in  std_logic_vector(1 downto 0);
           F           : out std_logic_vector(3 downto 0);
           over, c_out : out std_logic);
end exp_3;

architecture Behavioral of exp_3 is
    signal sum_sig, sSub: signed(5 downto 0);
    signal sF, oAnd, oOr: std_logic_vector (3 downto 0);
begin
    --Realizando as operações
    sum_sig<= signed(A(3)&A) + signed(b);
    sSub <= signed(A(3)&A) - signed(b);
    oAnd <= A and B;
    oOr <= A or B;
    
    --Atribuindo a operação a saida
    with S select
       sF <=  std_logic_vector(sum_sig(3 downto 0)) when "00",
              std_logic_vector(sSub(3 downto 0)) when "01",
              oAnd when "10",
              oOr when others;
              
    with S select
        over <= (sum_sig(NUM_BITS)xor sum_sig(NUM_BITS-1)) when "00",
                    (sSub(NUM_BITS)xor sSub(NUM_BITS-1)) when "01",
                    'X' when others;
    with S select
        c_out <= sum_sig(NUM_BITS-1) when "00",
                  sSub(NUM_Bits-1) when "01",
                  'X' when others;
     F <= sF;

end Behavioral;