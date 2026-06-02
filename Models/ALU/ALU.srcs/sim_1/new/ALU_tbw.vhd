----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.06.2026 07:06:53
-- Design Name: 
-- Module Name: ALU_tbw - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_tbw is
--  Port ( );
end ALU_tbw;

architecture Behavioral of ALU_tbw is
component ALU is
    Port ( A : in unsigned (3 downto 0);
           B : in unsigned (3 downto 0);
           Ch : in STD_LOGIC_VECTOR(2 downto 0);
           Op : out unsigned (3 downto 0));
end component;

signal a1:unsigned(3 downto 0):="1010";
signal b1:unsigned(3 downto 0):="0010";
signal ch1:std_logic_vector(2 downto 0):="000";
signal res:unsigned(3 downto 0);

begin

uut:ALU port map(A=>a1,B=>b1,Ch=>ch1,Op=>res);
stim_proc:process
begin

wait for 100ns;

ch1<="001";
wait for 100ns;

ch1<="010";
wait for 100ns;

ch1<="011";
wait for 100ns;

ch1<="100";
wait for 100ns;

ch1<="101";
wait for 100ns;

ch1<="110";
wait for 100ns;

ch1<="111";
wait;

end process;
end Behavioral;
