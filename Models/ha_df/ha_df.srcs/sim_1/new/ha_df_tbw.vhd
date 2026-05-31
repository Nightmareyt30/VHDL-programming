----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.05.2026 10:07:19
-- Design Name: 
-- Module Name: ha_df_tbw - Behavioral
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

entity ha_df_tbw is
--  Port ( );
end ha_df_tbw;

architecture Behavioral of ha_df_tbw is

component ha_df is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           sum : out STD_LOGIC;
           carry : out STD_LOGIC);
end component;

signal x1,y1:std_logic:='0';
signal s1,c1:std_logic;

begin

uut:ha_df port map(x=>x1,y=>y1,sum=>s1,carry=>c1);
stim_proc:process
begin

wait for 100ns;

y1<='1';
wait for 100ns;

x1<='1'; y1<='0';
wait for 100ns;

y1<='1';
wait;

end process;
end Behavioral;
