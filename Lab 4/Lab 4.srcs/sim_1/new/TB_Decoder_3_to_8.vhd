----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/24/2023 01:52:57 PM
-- Design Name: 
-- Module Name: TB_Decoder_3_to_8 - Behavioral
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

entity TB_Decoder_3_to_8 is
--  Port ( );
end TB_Decoder_3_to_8;

architecture Behavioral of TB_Decoder_3_to_8 is
component Decoder_3_to_8
port (
    I  : in  STD_LOGIC_VECTOR(2 downto 0);
    EN : in  STD_LOGIC;
    Y  : out STD_LOGIC_VECTOR(7 downto 0)
);
end component;

signal I   : STD_LOGIC_VECTOR(2 downto 0);
signal EN  : STD_LOGIC;
signal Y   : STD_LOGIC_VECTOR(7 downto 0);

begin
uut: Decoder_3_to_8 port map (
    I  => I,
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
    I(2) <= '0';
    I(1) <= '1'; 
    I(0) <= '1'; 

    wait for 100 ns;
    I(2) <= '0';
    I(1) <= '0'; 
    I(0) <= '1'; 
    
    wait for 100 ns;
    I(2) <= '0';
    I(1) <= '1'; 
    I(0) <= '0'; 
    
    wait for 100 ns;
    I(2) <= '1';
    I(1) <= '1'; 
    I(0) <= '0'; 

    wait;
end process;
end Behavioral;