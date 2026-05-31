----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.05.2026 09:21:15
-- Design Name: 
-- Module Name: mux8_1_st - Structural
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

entity mux8_1_st is
    Port ( Ip : in STD_LOGIC_VECTOR (7 downto 0);
           S : in STD_LOGIC_VECTOR (2 downto 0);
           Y : out STD_LOGIC);
end mux8_1_st;

architecture Structural of mux8_1_st is

component mux2_1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           S : in STD_LOGIC;
           Y : out STD_LOGIC);
end component;

component mux4_1_bh is
    Port ( Ip : in STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC_VECTOR (1 downto 0);
           Y : out STD_LOGIC);
end component;

signal w1,w2:std_logic;

begin

l1:mux4_1_bh port map(Ip(3 downto 0),S(1 downto 0),w1);
l2:mux4_1_bh port map(Ip(7 downto 4),S(1 downto 0),w2);
l3:mux2_1 port map(w1,w2,S(2),Y);

end Structural;
