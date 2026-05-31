----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.05.2026 14:23:09
-- Design Name: 
-- Module Name: mux4_1_st - Structural
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

entity mux4_1_st is
    Port ( Inp : in STD_LOGIC_VECTOR (3 downto 0);
           Sel : in STD_LOGIC_VECTOR (1 downto 0);
           Op : out STD_LOGIC);
end mux4_1_st;

architecture Structural of mux4_1_st is

component mux2_1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           S : in STD_LOGIC;
           Y : out STD_LOGIC);
end component;

signal w1,w2:std_logic;

begin

u1:mux2_1 port map(Inp(0),Inp(1),Sel(0),w1);
u2:mux2_1 port map(Inp(2),Inp(3),Sel(0),w2);
u3:mux2_1 port map(w1,w2,Sel(1),Op);

end Structural;
