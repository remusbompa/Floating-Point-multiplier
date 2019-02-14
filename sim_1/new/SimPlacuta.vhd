----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.10.2018 22:19:31
-- Design Name: 
-- Module Name: SimPlacuta - Behavioral
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

entity SimPlacuta is
--  Port ( );
end SimPlacuta;

architecture Behavioral of SimPlacuta is

component Placuta is
Port ( 
    CLK100MHZ,notLoad,Clear: in std_logic;
    a,b: in std_logic_vector(7 downto 0);
    c: out std_logic_vector(7 downto 0)
);
end component;

signal clk : std_logic := '0';
constant clk_period : time := 10ns;
signal a,b,c: std_logic_vector(7 downto 0);

begin

clk_process :process
begin
    clk <= '1';
    wait for clk_period/2;  --for 0.5 ns signal is '0'.
    clk <= '0';
    wait for clk_period/2;  --for next 0.5 ns signal is '1'.
end process;

placuta_process: Placuta port map ( CLK100MHZ => CLK, notLoad => '0', Clear =>'0', a=> a, b=>b, c => c);

aleg_numere_proces :process
begin
    ---a= -15 si b=-1.5
    a <= "11010111";
    b <= "10111100";
    
    wait for clk_period;
    
end process;

end Behavioral;
