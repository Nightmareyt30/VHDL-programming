----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.06.2026 06:00:51
-- Design Name: 
-- Module Name: sr_bh_tbw - Behavioral
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

entity sr_bh_tbw is
--  Port ( );
end sr_bh_tbw;

architecture Behavioral of sr_bh_tbw is
component sr_bh is
    Port ( Clk : in STD_LOGIC;
           S : in STD_LOGIC;
           R : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qn : out STD_LOGIC);
end component;
constant clock_period:time:=50ns;
signal s1,r1,clk1:std_logic:='0';
signal q1,qn1:std_logic;
begin

uut:sr_bh port map(Clk=>clk1,S=>s1,R=>r1,Q=>q1,Qn=>qn1);
clk1<=(not clk1) after clock_period/2;
stim_proc:process
begin

wait for 100ns;

r1<='1';
wait for 100ns;

s1<='1'; r1<='0';
wait for 100ns;

r1<='1';
wait;

end process;
end Behavioral;
