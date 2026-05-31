----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.05.2026 10:22:04
-- Design Name: 
-- Module Name: fa_st_tbw - Behavioral
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

entity fa_st_tbw is
--  Port ( );
end fa_st_tbw;

architecture Behavioral of fa_st_tbw is

component fa_st is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Carry : out STD_LOGIC);
end component;
signal a1,b1,c1:std_logic:='0';
signal s1,ca1:std_logic;

begin

uut:fa_st port map(A=>a1,B=>b1,C=>c1,Sum=>s1,Carry=>ca1);
stim_proc:process
begin

wait for 100ns;

c1<='1';
wait for 100ns;

b1<='1'; c1<='0';
wait for 100ns;

c1<='1';
wait for 100ns;

a1<='1'; b1<='0'; c1<='0';
wait for 100ns;

c1<='1';
wait for 100ns;

b1<='1'; c1<='0';
wait for 100ns;

c1<='1';
wait;

end process;
end Behavioral;
