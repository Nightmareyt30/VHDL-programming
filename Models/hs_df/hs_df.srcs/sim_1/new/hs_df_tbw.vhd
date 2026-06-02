----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.06.2026 23:43:41
-- Design Name: 
-- Module Name: hs_df_tbw - Behavioral
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

entity hs_df_tbw is
--  Port ( );
end hs_df_tbw;

architecture Behavioral of hs_df_tbw is

component hs_df is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           D : out STD_LOGIC;
           Bout : out STD_LOGIC);
end component;
signal a1,b1:std_logic:='0';
signal d1,bout1:std_logic;

begin

uut:hs_df port map(A=>a1,B=>b1,D=>d1,Bout=>bout1);
stim_proc:process
begin

wait for 100ns;

b1<='1';
wait for 100ns;

a1<='1';b1<='0';
wait for 100ns;

b1<='1';
wait;

end process;
end Behavioral;
