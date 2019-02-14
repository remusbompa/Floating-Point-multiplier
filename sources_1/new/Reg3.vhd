----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.10.2018 21:55:00
-- Design Name: 
-- Module Name: Reg3 - Behavioral
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

entity Reg3 is
Port ( 
    mant_in: in std_logic_vector(23 downto 0);
    CLK,Clear,Load: in std_logic;
    mant_out: out std_logic_vector(23 downto 0)
);
end Reg3;

architecture Behavioral of Reg3 is

begin
process(CLK,Clear,Load) begin
        if(Clear = '1') then
            mant_out <= (others => '0');
        elsif(Load = '1' and rising_edge(CLK)) then
             mant_out <= mant_in;
        end if;
    
 end process;

end Behavioral;
