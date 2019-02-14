----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.10.2018 21:28:30
-- Design Name: 
-- Module Name: Reg1 - Behavioral
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

entity Reg1 is
Port ( 
    a,b: in std_logic_vector(31 downto 0);
    CLK,Load,Clear: in std_logic;
    exp: out std_logic_vector(15 downto 0);
    mant: out std_logic_vector(47 downto 0) 
);
end Reg1;

architecture Behavioral of Reg1 is

begin
process(CLK,Clear,Load) begin
        if(Clear = '1') then
            exp <= (others => '0');
            mant <= (others => '0');
        elsif(Load = '1' and rising_edge(CLK)) then
             exp(7 downto 0) <= a(30 downto 23);
             exp(15 downto 8) <= b(30 downto 23);
             
             mant(23) <= a(31);
             mant(22 downto 0) <= a(22 downto 0);
             mant(46 downto 24) <= b(22 downto 0);
             mant(47) <= b(31);
        end if;
    
 end process;

end Behavioral;
