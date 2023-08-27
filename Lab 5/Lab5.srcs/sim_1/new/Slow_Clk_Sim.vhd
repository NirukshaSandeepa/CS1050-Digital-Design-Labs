----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2023 11:32:43 PM
-- Design Name: 
-- Module Name: Slow_Clk_Sim - Behavioral
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

entity Slow_Clk_Sim is
--  Port ( );
end Slow_Clk_Sim;

architecture Behavioral of Slow_Clk_Sim is

    component Slow_Clk
    Port ( Clk_in : in STD_LOGIC;
           Clk_out : out STD_LOGIC);
    end component;
    
    signal Clk_in : STD_LOGIC := '0';  -- Input clock signal
    signal Clk_out : STD_LOGIC;       -- Output clock signal

begin

    UUT: Slow_Clk port map (
        Clk_in => Clk_in,
        Clk_out => Clk_out);
    -- Clock signal generation process for simulation
    process
    begin
        wait for 20 ns;  -- Initial wait for stability
        Clk_in <= NOT Clk_in;
    end process;

end Behavioral;
