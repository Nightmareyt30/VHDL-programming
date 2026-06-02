----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.06.2026 23:42:41
-- Design Name: 
-- Module Name: hs_df - Dataflow
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

entity hs_df is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           D : out STD_LOGIC;
           Bout : out STD_LOGIC);
end hs_df;

architecture Dataflow of hs_df is

begin

D<=A xor B;
Bout<=(not A)and B;

end Dataflow;
