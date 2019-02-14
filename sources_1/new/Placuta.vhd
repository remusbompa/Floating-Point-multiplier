----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.10.2018 21:00:12
-- Design Name: 
-- Module Name: Placuta - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Placuta is
Port ( 
    CLK100MHZ,notLoad,Clear: in std_logic;
    CLKout: out std_logic;
    a,b: in std_logic_vector(7 downto 0);
    c: out std_logic_vector(7 downto 0)
);
end Placuta;

architecture Behavioral of Placuta is

component clk_divider is
Port ( 
    clk100Mhz: in std_logic;
    clk: out std_logic
);
end component;

component SimularePipe is
Port ( 
    a,b: in std_logic_vector(31 downto 0);
    CLK,Load,Clear: in std_logic;
    c: out std_logic_vector(31 downto 0)
);
end component;

signal CLK, Load: std_logic;
signal ap,bp,cp: std_logic_vector(31 downto 0);
signal expa,expb,expc : integer;
 
begin
    divizor_ceas: clk_divider port map ( clk100Mhz => CLK100MHZ, clk => CLK);
    CLKout <= CLK;
    ap(31) <= a(7);
    expa <= to_integer(unsigned( a(6 downto 3))) - 7 + 127;
    ap(30 downto 23) <= std_logic_vector( to_unsigned(expa,8));
    ap(22 downto 0) <= ( 22 => a(2), 21 => a(1), 20 => a(0), others => '0');
    
    bp(31) <= b(7);
    expb <= to_integer(unsigned( b(6 downto 3))) - 7 +127;
    bp(30 downto 23) <= std_logic_vector( to_unsigned(expb, 8));
    bp(22 downto 0) <= ( 22 => b(2), 21 => b(1), 20 => b(0), others => '0');
    
    Load <= not notLoad;
    
    pipeline: SimularePipe port map ( a => ap, b => bp, c => cp, CLK => CLK, Load => Load, Clear => Clear);
    
    c(7) <= cp(31);
    expc <= to_integer( unsigned( cp(30 downto 23)) ) -127 + 7;
    c(6 downto 3) <= std_logic_vector( to_unsigned(expc, 4) );
    c(2 downto 0) <= cp(22 downto 20);
end Behavioral;
