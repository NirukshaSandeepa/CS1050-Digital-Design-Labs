----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/03/2023 04:16:45 PM
-- Design Name: 
-- Module Name: LUT_16_7_Sim - Behavioral
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

entity LUT_16_7_Sim is
--  Port ( );
end LUT_16_7_Sim;

architecture Behavioral of LUT_16_7_Sim is

COMPONENT LUT_16_7
    Port ( address : in STD_LOGIC_VECTOR (3 downto 0);
           data : out STD_LOGIC_VECTOR (6 downto 0));
END COMPONENT;

SIGNAL address : STD_LOGIC_VECTOR (3 downto 0);
SIGNAL data : STD_LOGIC_VECTOR (6 downto 0);

begin
UUT: LUT_16_7 PORT MAP(
    address => address,
    data => data
    );
    
    
process
begin
    
    -- Index No: 210571L
    -- Binary number: 110011011010001011
    -- Binary number divided into 4 groups: 0011 0011 0110 1000 1011
    
    address <= "0011";
    wait for 200ns;
    
    address <= "0011";
    wait for 200ns;
    
    address <= "0110";
    wait for 200ns;
    
    address <= "1000";
    wait for 200ns;
    
    address <= "1011";
    
    wait;
end process;

end Behavioral;
