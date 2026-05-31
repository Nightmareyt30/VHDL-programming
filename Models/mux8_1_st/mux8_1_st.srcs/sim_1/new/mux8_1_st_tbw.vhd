----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.05.2026 09:31:03
-- Design Name: 
-- Module Name: mux8_1_st_tbw - Behavioral
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

entity mux8_1_st_tbw is
--  Port ( );
end mux8_1_st_tbw;

architecture Behavioral of mux8_1_st_tbw is

component mux8_1_st is
    Port ( Ip : in STD_LOGIC_VECTOR (7 downto 0);
           S : in STD_LOGIC_VECTOR (2 downto 0);
           Y : out STD_LOGIC);
end component;

signal i:std_logic_vector(7 downto 0):="10101011";
signal s1:std_logic_vector(2 downto 0):="000";
signal y1:std_logic;

begin

uut:mux8_1_st port map(Ip=>i,S=>s1,Y=>y1);
stim_proc:process
begin

wait for 100ns;

s1<="001";
wait for 100ns;

s1<="010";
wait for 100ns;

s1<="011";
wait for 100ns;

s1<="100";
wait for 100ns;

s1<="101";
wait for 100ns;

s1<="110";
wait for 100ns;

s1<="111";
wait;

end process;
end Behavioral;
