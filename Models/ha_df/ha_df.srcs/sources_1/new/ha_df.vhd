----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.05.2026 10:06:34
-- Design Name: 
-- Module Name: ha_df - Dataflow
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

entity ha_df is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           sum : out STD_LOGIC;
           carry : out STD_LOGIC);
end ha_df;

architecture Dataflow of ha_df is

begin

sum<=x xor y;
carry<=x and y;

end Dataflow;
