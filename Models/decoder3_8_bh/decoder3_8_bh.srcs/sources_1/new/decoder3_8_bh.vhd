----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.05.2026 10:54:23
-- Design Name: 
-- Module Name: decoder3_8_bh - Behavioral
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

entity decoder3_8_bh is
    Port ( Ip : in STD_LOGIC_VECTOR (2 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end decoder3_8_bh;

architecture Behavioral of decoder3_8_bh is

begin

process(Ip)
begin
Y<="00000000";
case Ip is

when "000"=>
Y(0)<='1';
when "001"=>
Y(1)<='1';
when "010"=>
Y(2)<='1';
when "011"=>
Y(3)<='1';
when "100"=>
Y(4)<='1';
when "101"=>
Y(5)<='1';
when "110"=>
Y(6)<='1';
when "111"=>
Y(7)<='1';
when others=>NULL;

end case;

end process;
end Behavioral;
