----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.05.2026 00:27:26
-- Design Name: 
-- Module Name: mux2_1_tbw - Behavioral
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

entity mux2_1_tbw is
--  Port ( );
end mux2_1_tbw;

architecture Behavioral of mux2_1_tbw is

component mux2_1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           S : in STD_LOGIC;
           Y : out STD_LOGIC);
end component;

signal a1,s1:std_logic:='0';
signal b1:std_logic:='1';
signal  y1:std_logic;

begin

uut:mux2_1 port map(A=>a1,B=>b1,S=>s1,Y=>y1);
stim_proc:process
begin

wait for 100ns;

s1<='1';
wait for 100ns;

a1<='1'; b1<='0'; s1<='0';
wait for 100ns;

s1<='1';
wait;

end process;
end Behavioral;
