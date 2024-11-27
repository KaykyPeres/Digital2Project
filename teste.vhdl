----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:21:33 11/27/2024 
-- Design Name: 
-- Module Name:    modulo - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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

entity modulopj is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           output : BUFFER integer range 0 to 7);
end modulopj;

architecture Behavioral of modulopj is

begin

--criand0 0s testes para o contador  
process(clk, rst)
    begin
        if rst = '1' then
            output <= 0;
        
        elsif rising_edge (clk) then
            if output = 0 then
                output <= 5;
            elsif output = 5 then
                output <= 4;
            elsif output = 4 then
                output <= 6;
            elsif output = 6 then
                output <= 1;
            elsif output = 1 then
                output <= 3;
            elsif output = 3 then
                output <= 2;
            elsif output = 2 then
                output <= 0;
            end if;

        elsif falling_edge (clk) then
            output <= output;
        end if;
    end process;
end Behavioral;
