----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.10.2018 00:32:41
-- Design Name: 
-- Module Name: Simulare - Behavioral
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

entity Simulare is
--  Port ( );
end Simulare;

architecture Behavioral of Simulare is

component SimularePipe is
Port ( 
    a,b: in std_logic_vector(31 downto 0);
    CLK,Load,Clear: in std_logic;
    c: out std_logic_vector(31 downto 0)
);
end component;

signal clk : std_logic := '0';
constant clk_period : time := 1 ns;

signal a,b,c: std_logic_vector(31 downto 0);

begin

clk_process :process
begin
    clk <= '1';
    wait for clk_period/2;  --for 0.5 ns signal is '0'.
    clk <= '0';
    wait for clk_period/2;  --for next 0.5 ns signal is '1'.
end process;

uut1: SimularePipe port map (a => a, b => b, CLK => CLK, Load =>'1', Clear =>'0', c => c);

aleg_numere_proces :process
begin
    ---a=-9
    a(31) <= '1';
    a(30 downto 23) <= "10000010";
    a(22 downto 20) <= "001";
    a(19 downto 0) <= (others => '0');
    ---b=5
    b(31) <= '0';
    b(30 downto 23) <= "10000001";
    b(22 downto 20) <= "010";
    b(19 downto 0) <= (others => '0');
    
    wait for clk_period;
    
    ---a=1.22
    a <= "00111111100111000010100011110110";
    ---b=3.45
    b <= "01000000010111001100110011001101";
    
    wait for clk_period;
    
    ---a=-0.135
    a <= "10111110000010100011110101110001";
    ---b=0.0008
    b <= "00111010010100011011011100010111";
    
    wait for clk_period;
    
    ---a=1012.333
    a <= "01000100011111010001010101010000";
    ---b=2034.45
    b <= "01000100111111100100111001100110";
    
    wait for clk_period;
    
    ---a=555.7777
    a <= "01000100000010101111000111000110";
    ---b=-0.0003
    b <= "10111001100111010100100101010010";
    
    wait for clk_period;
    
    ---a=0
    a <= "00000000000000000000000000000000";
    ---b=-0.003
    b <= "10111001100111010100100101010010";
    
    wait for clk_period;
end process;

end Behavioral;
