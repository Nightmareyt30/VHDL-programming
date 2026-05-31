----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.05.2026 12:17:54
-- Design Name: 
-- Module Name: decoder3_8_bh_tbw - Behavioral
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

entity decoder3_8_bh_tbw is
--  Port ( );
end decoder3_8_bh_tbw;

architecture Behavioral of decoder3_8_bh_tbw is

component decoder3_8_bh is
    Port ( Ip : in STD_LOGIC_VECTOR (2 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal i1:std_logic_vector(2 downto 0):="000";
signal y1:std_logic_vector(7 downto 0);

begin

uut:decoder3_8_bh port map(Ip=>i1,Y=>y1);
stim_proc:process
begin

wait for 100ns;

i1<="001";
wait for 100ns;

i1<="010";
wait for 100ns;

i1<="011";
wait for 100ns;

i1<="100";
wait for 100ns;

i1<="101";
wait for 100ns;

i1<="110";
wait for 100ns;

i1<="111";
wait;

end process;
end Behavioral;
