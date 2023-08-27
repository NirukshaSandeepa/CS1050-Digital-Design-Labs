----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/03/2023 05:26:59 PM
-- Design Name: 
-- Module Name: AU_7_seg_Sim - Behavioral
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

entity AU_7_seg_Sim is
--  Port ( );
end AU_7_seg_Sim;

architecture Behavioral of AU_7_seg_Sim is
COMPONENT AU_7_seg
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           Clk : in STD_LOGIC;
           RegSel : in STD_LOGIC;
           S_LED : out STD_LOGIC_VECTOR (3 downto 0);
           S_7Seg : out STD_LOGIC_VECTOR (6 downto 0);
           Carry : out STD_LOGIC;
           Zero : out STD_LOGIC);
END COMPONENT;

signal A , S_LED : STD_LOGIC_VECTOR (3 downto 0) ;
signal Clk , RegSel , Carry , Zero : STD_LOGIC := '0';
signal S_7Seg : STD_LOGIC_VECTOR (6 downto 0);

begin
UUT: AU_7_seg
 PORT MAP(
     A => A,
     S_LED => S_LED,
     RegSel => RegSel,
     Clk => Clk,
     Zero => Zero ,
     Carry => Carry,
     S_7Seg => S_7Seg);
     
 process
     begin
      Clk <= NOT(Clk);
      wait for 2ns;
 end process;
 
 process
 begin  
     -- Index No: 210571L
     -- Binary number: 110011011010001011
     -- Binary number divided into 4 groups: 11 0011 0110 1000 1011
     
      A <= "0011";
      RegSel <= '1';
      wait for 100ns;
      
      RegSel <= '0';
      wait for 100ns;
      
      A <= "0110";
      RegSel <= '1';
      wait for 100ns;
      
      RegSel <= '0';
      wait for 100ns;
      
      A <= "1000";
      RegSel <= '1';
      wait for 100ns;
      
      RegSel <= '0';
      wait for 100ns;
      
      A <= "1011";
      RegSel <= '1';
      wait for 100ns;
      
      RegSel <= '0';
 wait;
 end process;
end Behavioral;
