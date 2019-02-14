----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.10.2018 22:12:52
-- Design Name: 
-- Module Name: Modul1 - Behavioral
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

entity Modul1 is
Port ( 
    exponenti:in std_logic_vector(15 downto 0);
    r: out std_logic_vector(7 downto 0);
    info: out std_logic_vector(1 downto 0)
);
end Modul1;

architecture Behavioral of Modul1 is
signal a,b, raux :std_logic_vector(7 downto 0);
signal c:std_logic_vector(8 downto 0);

begin

a <= exponenti(15 downto 8);
b <= exponenti(7 downto 0);

c(0) <= '0';
        
raux(0) <= a(0) xor b(0) xor c(0);
c(1) <= (a(0) and b(0)) or (a(0) and c(0)) or (b(0) and c(0));

raux(1) <= a(1) xor b(1) xor c(1);
c(2) <= (a(1) and b(1)) or (a(1) and c(1)) or (b(1) and c(1));
   
raux(2) <= a(2) xor b(2) xor c(2);
c(3) <= (a(2) and b(2)) or (a(2) and c(2)) or (b(2) and c(2));

raux(3) <= a(3) xor b(3) xor c(3);
c(4) <= (a(3) and b(3)) or (a(3) and c(3)) or (b(3) and c(3));

raux(4) <= a(4) xor b(4) xor c(4);
c(5) <= (a(4) and b(4)) or (a(4) and c(4)) or (b(4) and c(4));

raux(5) <= a(5) xor b(5) xor c(5);
c(6) <= (a(5) and b(5)) or (a(5) and c(5)) or (b(5) and c(5));

raux(6) <= a(6) xor b(6) xor c(6);
c(7) <= (a(6) and b(6)) or (a(6) and c(6)) or (b(6) and c(6));

raux(7) <= a(7) xor b(7) xor c(7);
c(8) <= (a(7) and b(7)) or (a(7) and c(7)) or (b(7) and c(7));

r <= "01111111" when a ="00000000" or b="00000000" else
    raux;
    
process(a,b) begin
    
    if a ="00000000" and b="00000000" then
        info <="00";
    elsif(a = "00000000") then
        info <="01";
    elsif(b = "00000000") then
        info<="10";
    else
        info<="11";
        
    end if;
end process;

end Behavioral;
