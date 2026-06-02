----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.06.2026 05:53:42
-- Design Name: 
-- Module Name: sr_bh - Behavioral
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

entity sr_bh is
    Port ( Clk : in STD_LOGIC;
           S : in STD_LOGIC;
           R : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qn : out STD_LOGIC);
end sr_bh;

architecture Behavioral of sr_bh is

begin

process(Clk,S,R)
begin

if rising_edge(Clk)then

if(S='0' and R='1')then
Q<='0';
Qn<='1';
elsif(S='1' and R='0')then
Q<='1';
Qn<='0';
else
Q<='X';
Qn<='X';
end if;

end if;

end process;
end Behavioral;
