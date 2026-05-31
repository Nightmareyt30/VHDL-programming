----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.05.2026 01:53:36
-- Design Name: 
-- Module Name: hs_bh_tbw - Behavioral
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

entity hs_bh_tbw is
--  Port ( );
end hs_bh_tbw;

architecture Behavioral of hs_bh_tbw is

component hs_bh is
    Port ( A : in STD_LOGIC;
           Bin : in STD_LOGIC;
           D : out STD_LOGIC;
           Bout : out STD_LOGIC);
end component;

signal a1,b1:std_logic:='0';
signal d1,bo1:std_logic;

begin

uut:hs_bh port map(A=>a1,Bin=>b1,D=>d1,Bout=>bo1);
stim_proc:process
begin

wait for 100ns;

b1<='1';
wait for 100ns;

a1<='1'; b1<='0';
wait for 100ns;

b1<='1';
wait;

end process;
end Behavioral;
