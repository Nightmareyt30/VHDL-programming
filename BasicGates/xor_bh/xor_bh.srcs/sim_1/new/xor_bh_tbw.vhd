----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.05.2026 23:58:48
-- Design Name: 
-- Module Name: xor_bh_tbw - Behavioral
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

entity xor_bh_tbw is
--  Port ( );
end xor_bh_tbw;

architecture Behavioral of xor_bh_tbw is

component xor_bh is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Y : out STD_LOGIC);
end component;

signal a1,b1:std_logic:='0';
signal y1:std_logic;

begin

uut:xor_bh port map(A=>a1,B=>b1,Y=>y1);
stim_proc:process
begin

wait for 100ns;

b1<='1';
wait for 100ns;

a1<='1'; b1<='0';
wait for 100ns;

b1<='1';
wait;

end process;
end Behavioral;
