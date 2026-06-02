----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.06.2026 07:01:12
-- Design Name: 
-- Module Name: ALU - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( A : in unsigned (3 downto 0);
           B : in unsigned (3 downto 0);
           Ch : in STD_LOGIC_VECTOR(2 downto 0);
           Op : out unsigned (3 downto 0));
end ALU;

architecture Behavioral of ALU is

begin

process(A,B,Ch)
begin

case Ch is
when "000"=>
Op<=A+b;
when "001"=>
Op<=A-B;
when "010"=>
Op<=A+1;
when "011"=>
Op<=B-1;
when "100"=>
Op<=A and B;
when "101"=>
Op<=A or B;
when "110"=>
Op<=not A;
when "111"=>
Op<=A xor B;
when others=> Null;

end case;


end process;
end Behavioral;
