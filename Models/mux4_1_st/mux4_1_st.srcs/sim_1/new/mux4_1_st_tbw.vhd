----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.05.2026 14:30:03
-- Design Name: 
-- Module Name: mux4_1_st_tbw - Behavioral
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

entity mux4_1_st_tbw is
--  Port ( );
end mux4_1_st_tbw;

architecture Behavioral of mux4_1_st_tbw is

component mux4_1_st is
    Port ( Inp : in STD_LOGIC_VECTOR (3 downto 0);
           Sel : in STD_LOGIC_VECTOR (1 downto 0);
           Op : out STD_LOGIC);
end component;

signal i1:std_logic_vector(3 downto 0):="1010";
signal s1:std_logic_vector(1 downto 0):="00";
signal o1:std_logic;

begin

uut:mux4_1_st port map(Inp=>i1,Sel=>s1,Op=>o1);
stim_proc:process
begin

wait for 100ns;

s1<="01";
wait for 100ns;

s1<="10";
wait for 100ns;

s1<="11";
wait;

end process;
end Behavioral;
