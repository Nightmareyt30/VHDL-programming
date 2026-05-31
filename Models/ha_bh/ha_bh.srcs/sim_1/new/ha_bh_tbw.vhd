----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.05.2026 12:50:46
-- Design Name: 
-- Module Name: ha_bh_tbw - Behavioral
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

entity ha_bh_tbw is
--  Port ( );
end ha_bh_tbw;

architecture Behavioral of ha_bh_tbw is

component ha_bh is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           S : out STD_LOGIC;
           C : out STD_LOGIC);
end component;

signal x,y:std_logic:='0';
signal sum,carry:std_logic;

begin

uut:ha_bh port map(A=>x,B=>y,S=>sum,C=>carry);
stim_proc:process
begin

wait for 100ns;

y<='1';
wait for 100ns;

x<='1'; y<='0';
wait for 100ns;

y<='1';
wait;

end process;
end Behavioral;
