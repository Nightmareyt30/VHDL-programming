----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.06.2026 05:21:41
-- Design Name: 
-- Module Name: jk_bh - Behavioral
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

entity jk_bh is
    Port ( J : in STD_LOGIC;
           Clk : in STD_LOGIC;
           K : in STD_LOGIC;
           Q : inout STD_LOGIC;
           Qn : inout STD_LOGIC);
end jk_bh;

architecture Behavioral of jk_bh is

begin

process(Clk,J,K)
begin

if(Clk'event and Clk='1')then

if(J='0' and K='1')then
Q<='0';
Qn<='1';
elsif(J='1' and K='0')then
Q<='1';
Qn<='0';
else
Q<=Qn;
Qn<=Q;
end if;

end if;

end process;
end Behavioral;
