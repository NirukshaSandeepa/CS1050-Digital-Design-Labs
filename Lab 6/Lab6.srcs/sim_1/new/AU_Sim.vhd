library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AU_Sim is
--  Port ( );
end AU_Sim;

architecture Behavioral of AU_Sim is

component AU
    PORT( A : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Clk : in STD_LOGIC;
           RegSel : in STD_LOGIC;
           Carry : out STD_LOGIC;
           Zero : out STD_LOGIC);

end component;

signal A,S : STD_LOGIC_VECTOR ( 3 downto 0);
signal Clk, RegSel, Carry, Zero : STD_LOGIC;

begin
UUT: AU
    PORT MAP (
        A => A,
        S => S,
        Clk => Clk,
        RegSel => RegSel,
        Carry => Carry, 
        Zero => Zero
    );
process
begin        
    Clk <= '0';
    wait for 4ns;
    Clk <= '1';
    wait for 4ns;
end process;

process
begin
    --Index No: 210571L
    --Binary Number: 110011011010001011
    --The sets of 4 digits after grouped: 0011 0011 0110 1000 1011
    
    A <= "0011";
    RegSel <= '0';
    wait for 200ns;
    
    A <= "0011";
    RegSel <= '1';
    wait for 200ns;
    
    RegSel <= '0';
    A <= "0110";
    wait for 200ns;
    
    RegSel <= '1';
    A <= "1000";
    wait for 200ns;
    
    RegSel <= '1';
    A <= "1011";
    
    wait ;
    
end process;
end Behavioral;
