----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.05.2026 01:47:43
-- Design Name: 
-- Module Name: hs_bh - Behavioral
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

entity hs_bh is
    Port ( A : in STD_LOGIC;
           Bin : in STD_LOGIC;
           D : out STD_LOGIC;
           Bout : out STD_LOGIC);
end hs_bh;

architecture Behavioral of hs_bh is

begin

process(A,Bin)
begin

if(A/=Bin)then
D<='1';
else 
D<='0';
end if;

if(A='0' and Bin='1')then
Bout<='1';
else
Bout<='0';
end if;

end process;
end Behavioral;
