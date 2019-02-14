----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.10.2018 23:56:20
-- Design Name: 
-- Module Name: SimularePipe - Behavioral
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

entity SimularePipe is
Port ( 
    a,b: in std_logic_vector(31 downto 0);
    CLK,Load,Clear: in std_logic;
    c: out std_logic_vector(31 downto 0)
);
end SimularePipe;

architecture Behavioral of SimularePipe is
component Reg1 is
Port ( 
    a,b: in std_logic_vector(31 downto 0);
    CLK,Load,Clear: in std_logic;
    exp: out std_logic_vector(15 downto 0);
    mant: out std_logic_vector(47 downto 0) 
);
end component;

component Reg2 is
Port ( 
    exp_in: in std_logic_vector(7 downto 0);
    CLK,Load,Clear: in std_logic;
    exp_out: out std_logic_vector(7 downto 0)
);
end component;

component Reg3 is
Port ( 
    mant_in: in std_logic_vector(23 downto 0);
    CLK,Clear,Load: in std_logic;
    mant_out: out std_logic_vector(23 downto 0)
);
end component;

component Modul1 is
Port ( 
    exponenti:in std_logic_vector(15 downto 0);
    r: out std_logic_vector(7 downto 0);
    info: out std_logic_vector(1 downto 0)
);
end component;

component Modul2 is
Port ( 
    exp_in: in std_logic_vector(7 downto 0);
    exp_out: out std_logic_vector(7 downto 0)
);
end component;

component Modul3 is
Port ( 
    exp_in: in std_logic_vector(7 downto 0);
    ult_bit: in std_logic;
    exp_out: out std_logic_vector(7 downto 0)
);
end component;

component Modul4 is
Port (
    mant_in: in std_logic_vector(47 downto 0);
    info: in std_logic_vector(1 downto 0);
    mant_out: out std_logic_vector(23 downto 0)
 );
end component;

component Modul5 is
Port (
    mant_in: in std_logic_vector(23 downto 0);
    ult_bit: out std_logic;
    mant_out: out std_logic_vector(23 downto 0)
 );
end component;

signal exp1: std_logic_vector(15 downto 0);
signal mant1:std_logic_vector(47 downto 0);
signal exp2, exp3, exp4, exp5, exp6, exp7 : std_logic_vector(7 downto 0);
signal mant2, mant3, mant4, mant5, mant6 : std_logic_vector(23 downto 0);
signal ult_bit: std_logic;
signal info: std_logic_vector(1 downto 0);

begin

registru1: Reg1 port map (a => a, b => b, CLK => CLK, Load => Load, Clear => Clear, exp => exp1, mant => mant1);
modulul1: Modul1 port map ( exponenti => exp1, info => info, r=>exp2 );
modulul4: Modul4 port map ( mant_in => mant1, info => info, mant_out => mant2);

exponent1: Reg2 port map (exp_in => exp2, exp_out => exp3, CLK => CLK, Load => Load, Clear => Clear);
mantise1: Reg3 port map (mant_in => mant2, mant_out => mant3, CLK => CLK, Load => Load, Clear => Clear);

modulul2: Modul2 port map (exp_in => exp3, exp_out => exp4);

exponent2: Reg2 port map (exp_in => exp4, exp_out => exp5, CLK => CLK, Load => Load, Clear => Clear);
mantise2: Reg3 port map (mant_in => mant3, mant_out => mant4, CLK => CLK, Load => Load, Clear => Clear);

modulul5: Modul5 port map (mant_in => mant4, ult_bit => ult_bit, mant_out => mant5);
modulul3: Modul3 port map (exp_in => exp5, exp_out => exp6, ult_bit => ult_bit);

exponent3: Reg2 port map (exp_in => exp6, exp_out => exp7, CLK => CLK, Load => Load, Clear => Clear);
mantise3: Reg3 port map (mant_in => mant5, mant_out => mant6, CLK => CLK, Load => Load, Clear => Clear);

c(31) <= mant6(23);
c(30 downto 23) <= exp7;
c(22 downto 0) <= mant6(22 downto 0);

end Behavioral;
