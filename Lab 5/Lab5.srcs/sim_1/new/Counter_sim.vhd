----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2023 07:13:28 PM
-- Design Name: 
-- Module Name: Counter_sim - Behavioral
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

entity Counter_sim is
--  Port ( );
end Counter_sim;






architecture Behavioral of Counter_sim is

COMPONENT Counter
PORT(
    Dir : in STD_LOGIC;
    Res : in STD_LOGIC;
    Clk : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR(2 downto 0));
END COMPONENT;

signal Dir : std_logic := '0';
signal Res : std_logic := '1';
signal Clk : std_logic := '0';
signal Q : std_logic_vector(2 downto 0);

begin
    UUT : Counter PORT MAP
    (
        Dir => Dir,
        Res => Res,
        Clk => Clk,
        Q => Q
    );

    process
        begin
            wait for 500 ps;
            Clk <= not Clk;
    end process;
    
    process
        begin
            wait for 100 ns;
            Res <= '1';
            wait for 50 ns;
            Res <= '0';

            Dir <= '0';
            wait for 400 ns;
            Dir <= '1';
            wait;
    end process;
    
end Behavioral;