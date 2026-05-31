----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.05.2026 12:35:15
-- Design Name: 
-- Module Name: fs_df_tbw - Behavioral
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

entity fs_df_tbw is
--  Port ( );
end fs_df_tbw;

architecture Behavioral of fs_df_tbw is

component fs_df is
    Port ( A : in STD_LOGIC;
           Bin : in STD_LOGIC;
           C : in STD_LOGIC;
           Diff : out STD_LOGIC;
           Bout : out STD_LOGIC);
end component;

signal a1,bin1,c1:std_logic:='0';
signal d1,bout1:std_logic;

begin

uut:fs_df port map(A=>a1,Bin=>bin1,C=>c1,Diff=>d1,Bout=>bout1);
stim_proc:process
begin

wait for 100ns;

c1<='1';
wait for 100ns;

bin1<='1'; c1<='0';
wait for 100ns;

c1<='1';
wait for 100ns;

a1<='1'; bin1<='0'; c1<='0';
wait for 100ns;

c1<='1';
wait for 100ns;

bin1<='1'; c1<='0';
wait for 100ns;

c1<='1';
wait;

end process;
end Behavioral;
