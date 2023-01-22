----------------------------------------------------------------------------------
-- Create Date: 02.01.2023
-- Design Name: Bruno Ribeiro
-- Module Name: exp_3 - Behavioral
-- Project Name: exp_3
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity exp_3 is
    Port ( a, b : in STD_LOGIC_VECTOR(3 downto 0);
           s    : in STD_LOGIC_VECTOR(1 downto 0);
           f    : out STD_LOGIC_VECTOR(3 downto 0);
           c_out: out STD_LOGIC;
           over : out STD_LOGIC);
end exp_3;

architecture Behavioral of exp_3 is
    
    signal carries: STD_LOGIC_VECTOR(2 downto 0);

    component soma1
            Port (  a : in STD_LOGIC;
                    b : in STD_LOGIC;
                    cin : in STD_LOGIC;
                    s : out STD_LOGIC;
                    c_out : out STD_LOGIC);
    end component;

    component complementode2
        Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
               s : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

    component detector_overflow
        Port ( x : in STD_LOGIC;
               y : in STD_LOGIC;
               z : in STD_LOGIC;
               over : out STD_LOGIC);
    end component;

begin
    process(a, b, s)
    begin
        case s is
            when "00" =>
                sum1: soma1 port map (a=>a(0), b=>b(0), cin=>   0, s=>f(0), c_out=>carries(0));
                sum2: soma1 port map (a=>a(1), b=>b(1), cin=>c(0), s=>f(1), c_out=>carries(1));
                sum3: soma1 port map (a=>a(2), b=>b(2), cin=>c(1), s=>f(2), c_out=>carries(2));
                sum4: soma1 port map (a=>a(3), b=>b(3), cin=>c(2), s=>f(3), c_out=>c_out);
                detc: detector_overflow port map(x=>a(3), y=>b(3), z=>f(3), over=>over);
            when "01" =>
                compl: complementode2 port map(x=>b, s=>b);
                sum1: soma1 port map (a=>a(0), b=>b(0), cin=>   0, s=>f(0), c_out=>carries(0));
                sum2: soma1 port map (a=>a(1), b=>b(1), cin=>c(0), s=>f(1), c_out=>carries(1));
                sum3: soma1 port map (a=>a(2), b=>b(2), cin=>c(1), s=>f(2), c_out=>carries(2));
                sum4: soma1 port map (a=>a(3), b=>b(3), cin=>c(2), s=>f(3), c_out=>c_out);
                detc: detector_overflow port map(x=>a(3), y=>b(3), z=>f(3), over=>over);
            when "10" => f <= a and b;
            when "11" => f <= a or b;
        end case;
    end process;
end Behavioral;
