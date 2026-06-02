----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.06.2026 22:10:20
-- Design Name: 
-- Module Name: comp4bit_bh - Behavioral
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

entity comp4bit_bh is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           gt : out STD_LOGIC;
           eq : out STD_LOGIC;
           ls : out STD_LOGIC);
end comp4bit_bh;

architecture Behavioral of comp4bit_bh is

begin

process(A,B)
begin

if(A>B)then
gt<='1';
eq<='0';
ls<='0';
elsif(A=B)then
gt<='0';
eq<='1';
ls<='0';
else
gt<='0';
eq<='0';
ls<='1';
end if;

end process;
end Behavioral;
