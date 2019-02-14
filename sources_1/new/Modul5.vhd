----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.10.2018 22:14:10
-- Design Name: 
-- Module Name: Modul5 - Behavioral
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

entity Modul5 is
Port (
    mant_in: in std_logic_vector(23 downto 0);
    ult_bit: out std_logic;
    mant_out: out std_logic_vector(23 downto 0)
 );
end Modul5;

architecture Behavioral of Modul5 is

begin
    ult_bit <= mant_in(22);
    process(mant_in) begin
        if(mant_in(22) = '0') then
            mant_out(23) <= mant_in(23);
            mant_out(22 downto 2) <= mant_in(20 downto 0);
            mant_out(1) <= '0';
            mant_out(0) <= '0';
         else
            mant_out(23) <= mant_in(23);
            mant_out(22 downto 1) <= mant_in(21 downto 0);
            mant_out(0) <= '0';
         end if;
    end process;

end Behavioral;
