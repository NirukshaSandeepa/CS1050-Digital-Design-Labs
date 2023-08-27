----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2023 12:13:40 PM
-- Design Name: 
-- Module Name: TB_Mux_8_to_1 - Behavioral
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

entity TB_Mux_8_to_1 is
--  Port ( );
end TB_Mux_8_to_1;

architecture Behavioral of TB_Mux_8_to_1 is
    component Mux_8_to_1
port( S : in STD_LOGIC_VECTOR (2 downto 0);
      D : in STD_LOGIC_VECTOR (7 downto 0);
      EN : in STD_LOGIC;
      Y : out STD_LOGIC);
end component;

signal S : STD_LOGIC_VECTOR (2 downto 0);
signal D : STD_LOGIC_VECTOR (7 downto 0);
signal EN : STD_LOGIC;
signal Y : STD_LOGIC;
          
begin
uut: Mux_8_to_1 port map (
    S  => S,
    D  => D,
    EN => EN,
    Y  => Y
);

process
begin
    -- Enable decoder
    EN <= '1';

    -- Test each input combination
    -- Index No: 210571 L
    -- Binary value of index number: 110 011 011 010 001 011
    -- Divide each group for 7 numbers for selecting D values: 11 00110110 10001011

    D <= "10001011"; 
    S(2) <= '0';
    S(1) <= '1'; 
    S(0) <= '1';

    wait for 100 ns;
    D <= "00110110";
    
    wait for 100 ns;
    D <= "10001011";
    S(2) <= '0';
    S(1) <= '0'; 
    S(0) <= '1'; 
    
    wait for 100 ns;
    D <= "00110110";
    
    wait for 100 ns;
    D <= "10001011";
    S(2) <= '0';
    S(1) <= '1'; 
    S(0) <= '0';
    
    wait for 100 ns;
    D <= "00110110";
    
    wait for 100 ns;
    D <= "10001011";
    S(2) <= '1';
    S(1) <= '1'; 
    S(0) <= '0'; 

    wait for 100 ns;
    D <= "00110110";
    
    wait;
end process;

end Behavioral;
