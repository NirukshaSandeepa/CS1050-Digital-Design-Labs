----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2023 01:42:24 AM
-- Design Name: 
-- Module Name: Mux_8_to_1 - Behavioral
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

entity Mux_8_to_1 is
    Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
           D : in STD_LOGIC_VECTOR (7 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC);
end Mux_8_to_1;

architecture Behavioral of Mux_8_to_1 is
    component Decoder_3_to_8
port(
    I: in STD_LOGIC_VECTOR;
    EN: in STD_LOGIC;
    Y: out STD_LOGIC_VECTOR );
end component;

signal X : STD_LOGIC_VECTOR (7 downto 0);
begin

    Decoder_3_to_8_0 : Decoder_3_to_8
    port map(
        I => S ,
        EN => EN,
        Y => X );
        
     Y <= (X(0) AND D(0)) OR (X(1) AND D(1)) OR (X(2) AND D(2)) OR (X(3) AND D(3)) OR (X(4) AND D(4)) OR (X(5) AND D(5)) OR (X(6) AND D(6)) OR (X(7) AND D(7));
         
end Behavioral;
