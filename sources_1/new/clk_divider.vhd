----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.10.2018 20:49:41
-- Design Name: 
-- Module Name: clk_divider - Behavioral
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

entity clk_divider is
Port ( 
    clk100Mhz: in std_logic;
    clk: out std_logic
);
end clk_divider;

architecture Behavioral of clk_divider is

signal counter : unsigned(27 downto 0);
signal cnt_temp : std_logic_vector(27 downto 0);
begin

process(clk100Mhz) begin
    if(clk100Mhz = '1' and clk100Mhz'event) then
        counter <= counter + 1;
    end if;
end process;

cnt_temp <= std_logic_vector(counter);
clk <= cnt_temp(27);
end Behavioral;
