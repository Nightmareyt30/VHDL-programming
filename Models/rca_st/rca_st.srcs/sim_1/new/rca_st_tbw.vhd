----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.05.2026 10:43:51
-- Design Name: 
-- Module Name: rca_st_tbw - Behavioral
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

entity rca_st_tbw is
--  Port ( );
end rca_st_tbw;

architecture Behavioral of rca_st_tbw is

component rca_st is
    Port ( X : in STD_LOGIC_VECTOR (3 downto 0);
           Y : in STD_LOGIC_VECTOR (3 downto 0);
           Cin : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Cout : out STD_LOGIC);
end component;

signal x1:std_logic_vector(3 downto 0):="1010";
signal y1:std_logic_vector(3 downto 0):="0101";
signal cin1:std_logic:='0';
signal s1:std_logic_vector(3 downto 0);
signal cout1:std_logic;
begin

uut:rca_st port map(X=>x1,Y=>y1,Cin=>cin1,S=>s1,Cout=>cout1);
stim_proc:process
begin

wait for 200ns;

y1<="1010";
wait;

end process;
end Behavioral;
