----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.10.2018 21:58:53
-- Design Name: 
-- Module Name: MatrMult - Behavioral
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

entity MatrMult is
Port ( 
    a,b:in std_logic_vector(23 downto 0);
    r: out std_logic_vector(47 downto 0)
    );
end MatrMult;

architecture Behavioral of MatrMult is

component Sumator24bits is
Port ( 
   a,b: in std_logic_vector(23 downto 0);
   r: out std_logic_vector(24 downto 0)
);
end component;

signal ap1,bp1,ab1: std_logic_vector(47 downto 0);
signal ap2,bp2,ab2, ap3,bp3,ab3,ap4,bp4,ab4,ap5,bp5,ab5,ap6,bp6,ab6,ap7,bp7,ab7,ap8,bp8,ab8,ap9,bp9,ab9,ap10,bp10,ab10,ap11,bp11,ab11,ap12,bp12,ab12, ap13,bp13,ab13,ap14,bp14,ab14,ap15,bp15,ab15,ap16,bp16,ab16,ap17,bp17,ab17,ap18,bp18,ab18,ap19,bp19,ab19,ap20,bp20,ab20,ap21,bp21,ab21,ap22,bp22,ab22,ap23,bp23,ab23: std_logic_vector(23 downto 0);
signal s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23: std_logic_vector (24 downto 0);
begin
    r(0) <= a(0) and b(0);
    ---sumatorul 1
    bp1(22 downto 0) <= b(23 downto 1);
    bp1(23) <= '0';
    bp1(47 downto 24) <= b(23 downto 0);
    
    ap1(22 downto 0) <= (others => a(0));
    ap1(23) <= '0';
    ap1(47 downto 24) <= (others => a(1));
    
    ab1 <= ap1 and bp1;
    sumator1: Sumator24bits port map (a => ab1(23 downto 0), b => ab1(47 downto 24), r => s1);
    r(1) <= s1(0);
    
    --sumatorul 2
    ap2(23 downto 0) <= (others => a(2) );
    bp2(23 downto 0) <= b;
    ab2 <= ap2 and bp2; 
    sumator2: Sumator24bits port map (a => ab2(23 downto 0), b => s1(24 downto 1), r => s2);
    r(2) <= s2(0);  

    --sumatorul 3
    ap3(23 downto 0) <= (others => a(3) );
    bp3(23 downto 0) <= b;
    ab3 <= ap3 and bp3;
    sumator3: Sumator24bits port map (a => ab3(23 downto 0), b => s2(24 downto 1), r => s3);
    r(3) <= s3(0);
    
    --sumatorul 4
    ap4(23 downto 0) <= (others => a(4) );
    bp4(23 downto 0) <= b;
    ab4 <= ap4 and bp4;
    sumator4: Sumator24bits port map (a => ab4(23 downto 0), b => s3(24 downto 1), r => s4);
    r(4) <= s4(0);
    
    --sumatorul 5
    ap5(23 downto 0) <= (others => a(5) );
    bp5(23 downto 0) <= b;
    ab5 <= ap5 and bp5;
    sumator5: Sumator24bits port map (a => ab5(23 downto 0), b => s4(24 downto 1), r => s5);
    r(5) <= s5(0);
    
    --sumatorul 6
    ap6(23 downto 0) <= (others => a(6) );
    bp6(23 downto 0) <= b;
    ab6 <= ap6 and bp6;
    sumator6: Sumator24bits port map (a => ab6(23 downto 0), b => s5(24 downto 1), r => s6);
    r(6) <= s6(0);
    
    --sumatorul 7
    ap7(23 downto 0) <= (others => a(7) );
    bp7(23 downto 0) <= b;
    ab7 <= ap7 and bp7;
    sumator7: Sumator24bits port map (a => ab7(23 downto 0), b => s6(24 downto 1), r => s7);
    r(7) <= s7(0);
    
    --sumatorul 8
    ap8(23 downto 0) <= (others => a(8) );
    bp8(23 downto 0) <= b;
    ab8 <= ap8 and bp8;
    sumator8: Sumator24bits port map (a => ab8(23 downto 0), b => s7(24 downto 1), r => s8);
    r(8) <= s8(0);
    
    --sumatorul 9
    ap9(23 downto 0) <= (others => a(9) );
    bp9(23 downto 0) <= b;
    ab9 <= ap9 and bp9;
    sumator9: Sumator24bits port map (a => ab9(23 downto 0), b => s8(24 downto 1), r => s9);
    r(9) <= s9(0);
    
    --sumatorul 10
    ap10(23 downto 0) <= (others => a(10) );
    bp10(23 downto 0) <= b;
    ab10 <= ap10 and bp10;
    sumator10: Sumator24bits port map (a => ab10(23 downto 0), b => s9(24 downto 1), r => s10);
    r(10) <= s10(0);
    
    --sumatorul 11
    ap11(23 downto 0) <= (others => a(11) );
    bp11(23 downto 0) <= b;
    ab11 <= ap11 and bp11;
    sumator11: Sumator24bits port map (a => ab11(23 downto 0), b => s10(24 downto 1), r => s11);
    r(11) <= s11(0);
    
    --sumatorul 12
    ap12(23 downto 0) <= (others => a(12) );
    bp12(23 downto 0) <= b;
    ab12 <= ap12 and bp12;
    sumator12: Sumator24bits port map (a => ab12(23 downto 0), b => s11(24 downto 1), r => s12);
    r(12) <= s12(0);
    
    --sumatorul 13
    ap13(23 downto 0) <= (others => a(13) );
    bp13(23 downto 0) <= b;
    ab13 <= ap13 and bp13;
    sumator13: Sumator24bits port map (a => ab13(23 downto 0), b => s12(24 downto 1), r => s13);
    r(13) <= s13(0);
    
    --sumatorul 14
    ap14(23 downto 0) <= (others => a(14) );
    bp14(23 downto 0) <= b;
    ab14 <= ap14 and bp14;
    sumator14: Sumator24bits port map (a => ab14(23 downto 0), b => s13(24 downto 1), r => s14);
    r(14) <= s14(0);
    
    --sumatorul 15
    ap15(23 downto 0) <= (others => a(15) );
    bp15(23 downto 0) <= b;
    ab15 <= ap15 and bp15;
    sumator15: Sumator24bits port map (a => ab15(23 downto 0), b => s14(24 downto 1), r => s15);
    r(15) <= s15(0);
    
    --sumatorul 16
    ap16(23 downto 0) <= (others => a(16) );
    bp16(23 downto 0) <= b;
    ab16 <= ap16 and bp16;
    sumator16: Sumator24bits port map (a => ab16(23 downto 0), b => s15(24 downto 1), r => s16);
    r(16) <= s16(0);
    
    --sumatorul 17
    ap17(23 downto 0) <= (others => a(17) );
    bp17(23 downto 0) <= b;
    ab17 <= ap17 and bp17;
    sumator17: Sumator24bits port map (a => ab17(23 downto 0), b => s16(24 downto 1), r => s17);
    r(17) <= s17(0);
    
    --sumatorul 18
    ap18(23 downto 0) <= (others => a(18) );
    bp18(23 downto 0) <= b;
    ab18 <= ap18 and bp18;
    sumator18: Sumator24bits port map (a => ab18(23 downto 0), b => s17(24 downto 1), r => s18);
    r(18) <= s18(0);
    
    --sumatorul 19
    ap19(23 downto 0) <= (others => a(19) );
    bp19(23 downto 0) <= b;
    ab19 <= ap19 and bp19;
    sumator19: Sumator24bits port map (a => ab19(23 downto 0), b => s18(24 downto 1), r => s19);
    r(19) <= s19(0);
    
    --sumatorul 20
    ap20(23 downto 0) <= (others => a(20) );
    bp20(23 downto 0) <= b;
    ab20 <= ap20 and bp20;
    sumator20: Sumator24bits port map (a => ab20(23 downto 0), b => s19(24 downto 1), r => s20);
    r(20) <= s20(0);
    
    ---sumatorul 21
    ap21(23 downto 0) <= (others => a(21) );
    bp21(23 downto 0) <= b;
    ab21 <= ap21 and bp21;
    sumator21: Sumator24bits port map (a => ab21(23 downto 0), b => s20(24 downto 1), r => s21);
    r(21) <= s21(0);
    
    --sumatorul 22
    ap22(23 downto 0) <= (others => a(22) );
    bp22(23 downto 0) <= b;
    ab22 <= ap22 and bp22;
    sumator22: Sumator24bits port map (a => ab22(23 downto 0), b => s21(24 downto 1), r => s22);
    r(22) <= s22(0);
    
    --sumatorul 23
    ap23(23 downto 0) <= (others => a(23) );
    bp23(23 downto 0) <= b;
    ab23 <= ap23 and bp23;
    sumator23: Sumator24bits port map (a => ab23(23 downto 0), b => s22(24 downto 1), r => s23);
    r(47 downto 23) <= s23;
    
end Behavioral;
