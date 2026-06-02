----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.06.2026 22:13:39
-- Design Name: 
-- Module Name: comp4bit_bh_tbw - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity comp4bit_bh_tbw is
--  Port ( );
end comp4bit_bh_tbw;

architecture Behavioral of comp4bit_bh_tbw is

component comp4bit_bh is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           gt : out STD_LOGIC;
           eq : out STD_LOGIC;
           ls : out STD_LOGIC);
end component;
signal a1,b1:std_logic_vector(3 downto 0);
signal gt1,eq1,ls1 :STD_LOGIC;

begin

uut:comp4bit_bh port map(A=>a1,B=>b1,gt=>gt1,eq=>eq1,ls=>ls1);
stim_proc:process
begin

a1<="1011";
b1<="1000";

wait for 100ns;

a1<="0000";
b1<="0000";
wait for 100ns;

a1<="1010";
b1<="1111";
wait;

end process;
end Behavioral;
