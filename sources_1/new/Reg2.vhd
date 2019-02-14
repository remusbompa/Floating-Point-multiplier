----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.10.2018 21:51:47
-- Design Name: 
-- Module Name: Reg2 - Behavioral
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

entity Reg2 is
Port ( 
    exp_in: in std_logic_vector(7 downto 0);
    CLK,Load,Clear: in std_logic;
    exp_out: out std_logic_vector(7 downto 0)
);
end Reg2;

architecture Behavioral of Reg2 is

begin
process(CLK,Clear,Load) begin
        if(Clear = '1') then
            exp_out <= (others => '0');
        elsif(Load = '1' and rising_edge(CLK)) then
             exp_out <= exp_in;
        end if;
    
 end process;

end Behavioral;
