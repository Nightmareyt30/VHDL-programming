----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.05.2026 12:29:54
-- Design Name: 
-- Module Name: fs_df - Dataflow
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

entity fs_df is
    Port ( A : in STD_LOGIC;
           Bin : in STD_LOGIC;
           C : in STD_LOGIC;
           Diff : out STD_LOGIC;
           Bout : out STD_LOGIC);
end fs_df;

architecture Dataflow of fs_df is

begin

Diff<=(A xor Bin)xor C;
Bout<=((not A)and C)or((not A)and Bin)or(C and Bin);

end Dataflow;
