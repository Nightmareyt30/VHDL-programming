----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.06.2026 06:43:13
-- Design Name: 
-- Module Name: d_bh_tbw - Behavioral
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

entity d_bh_tbw is
--  Port ( );
end d_bh_tbw;

architecture Behavioral of d_bh_tbw is

component d_bh is
    Port ( Clk : in STD_LOGIC;
           D : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qn : out STD_LOGIC);
end component;

constant clock_period:time:=50ns;
signal d1,clk1:std_logic:='0';
signal q1,qn1:std_logic;

begin

uut:d_bh port map(Clk=>clk1,D=>d1,Q=>q1,Qn=>qn1);
clk1<=(not clk1) after clock_period/2;
stim_proc:process
begin

wait for 100ns;

d1<='1';
wait;

end process;
end Behavioral;
