----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.10.2018 20:26:50
-- Design Name: 
-- Module Name: Sumator24bits - Behavioral
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

entity Sumator24bits is
Port ( 
   a,b: in std_logic_vector(23 downto 0);
   r: out std_logic_vector(24 downto 0)
);
end Sumator24bits;

architecture Behavioral of Sumator24bits is
signal c:std_logic_vector(24 downto 0);
begin
    c(0) <= '0';
    
    r(0) <= a(0) xor b(0) xor c(0);
    c(1) <= (a(0) and b(0)) or (a(0) and c(0)) or (b(0) and c(0));
    
    r(1) <= a(1) xor b(1) xor c(1);
    c(2) <= (a(1) and b(1)) or (a(1) and c(1)) or (b(1) and c(1));
       
    r(2) <= a(2) xor b(2) xor c(2);
    c(3) <= (a(2) and b(2)) or (a(2) and c(2)) or (b(2) and c(2));
    
    r(3) <= a(3) xor b(3) xor c(3);
    c(4) <= (a(3) and b(3)) or (a(3) and c(3)) or (b(3) and c(3));
    
    r(4) <= a(4) xor b(4) xor c(4);
    c(5) <= (a(4) and b(4)) or (a(4) and c(4)) or (b(4) and c(4));
    
    r(5) <= a(5) xor b(5) xor c(5);
    c(6) <= (a(5) and b(5)) or (a(5) and c(5)) or (b(5) and c(5));
    
    r(6) <= a(6) xor b(6) xor c(6);
    c(7) <= (a(6) and b(6)) or (a(6) and c(6)) or (b(6) and c(6));
    
    r(7) <= a(7) xor b(7) xor c(7);
    c(8) <= (a(7) and b(7)) or (a(7) and c(7)) or (b(7) and c(7));
    
    r(8) <= a(8) xor b(8) xor c(8);
    c(9) <= (a(8) and b(8)) or (a(8) and c(8)) or (b(8) and c(8));
    
    r(9) <= a(9) xor b(9) xor c(9);
    c(10) <= (a(9) and b(9)) or (a(9) and c(9)) or (b(9) and c(9));
    
    r(10) <= a(10) xor b(10) xor c(10);
    c(11) <= (a(10) and b(10)) or (a(10) and c(10)) or (b(10) and c(10));
    
    r(11) <= a(11) xor b(11) xor c(11);
    c(12) <= (a(11) and b(11)) or (a(11) and c(11)) or (b(11) and c(11));
    
    r(12) <= a(12) xor b(12) xor c(12);
    c(13) <= (a(12) and b(12)) or (a(12) and c(12)) or (b(12) and c(12));
    
    r(13) <= a(13) xor b(13) xor c(13);
    c(14) <= (a(13) and b(13)) or (a(13) and c(13)) or (b(13) and c(13));
    
    r(14) <= a(14) xor b(14) xor c(14);
    c(15) <= (a(14) and b(14)) or (a(14) and c(14)) or (b(14) and c(14));
    
    r(15) <= a(15) xor b(15) xor c(15);
    c(16) <= (a(15) and b(15)) or (a(15) and c(15)) or (b(15) and c(15));
    
    r(16) <= a(16) xor b(16) xor c(16);
    c(17) <= (a(16) and b(16)) or (a(16) and c(16)) or (b(16) and c(16));
    
    r(17) <= a(17) xor b(17) xor c(17);
    c(18) <= (a(17) and b(17)) or (a(17) and c(17)) or (b(17) and c(17));
    
    r(18) <= a(18) xor b(18) xor c(18);
    c(19) <= (a(18) and b(18)) or (a(18) and c(18)) or (b(18) and c(18));
    
    r(19) <= a(19) xor b(19) xor c(19);
    c(20) <= (a(19) and b(19)) or (a(19) and c(19)) or (b(19) and c(19));
    
    r(20) <= a(20) xor b(20) xor c(20);
    c(21) <= (a(20) and b(20)) or (a(20) and c(20)) or (b(20) and c(20));
    
    r(21) <= a(21) xor b(21) xor c(21);
    c(22) <= (a(21) and b(21)) or (a(21) and c(21)) or (b(21) and c(21));
    
    r(22) <= a(22) xor b(22) xor c(22);
    c(23) <= (a(22) and b(22)) or (a(22) and c(22)) or (b(22) and c(22));
    
    r(23) <= a(23) xor b(23) xor c(23);
    c(24) <= (a(23) and b(23)) or (a(23) and c(23)) or (b(23) and c(23));

    r(24)<=c(24);

end Behavioral;
