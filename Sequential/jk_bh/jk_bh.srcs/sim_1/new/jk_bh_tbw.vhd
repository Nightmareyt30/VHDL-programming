----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.06.2026 05:29:10
-- Design Name: 
-- Module Name: jk_bh_tbw - Behavioral
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

entity jk_bh_tbw is
--  Port ( );
end jk_bh_tbw;

architecture Behavioral of jk_bh_tbw is
component jk_bh is
    Port ( J : in STD_LOGIC;
           Clk : in STD_LOGIC;
           K : in STD_LOGIC;
           Q : inout STD_LOGIC;
           Qn : inout STD_LOGIC);
end component;

constant clock_period:time:=50ns;
signal j1,clk1,k1:std_logic:='0';
signal q1,qn1:std_logic;

begin

uut:jk_bh port map(J=>j1,Clk=>clk1,K=>k1,Q=>q1,Qn=>qn1);
clk1<=not clk1 after clock_period/2;
stim_proc:process
begin

wait for 100ns;

k1<='1';
wait for 100ns;

j1<='1'; k1<='0';
wait for 100ns;

k1<='1';
wait;

end process;
end Behavioral;
