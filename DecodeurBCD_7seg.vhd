library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity DecodeurBCD is
port(
		N  :		in natural range 0 to 15; -- in std_logic_vector(3 downto 0)
	   S	:		out std_logic_vector(7 downto 0)
	  );
end DecodeurBCD;

architecture decodeur7seg of DecodeurBCD is
begin
	with N select
		S<= 	"00111111"	when 0, 	-- 0000
				"00000110" 	when 1, 	-- 0001
				"01011011" 	when 2,	-- 0010
				"01001111" 	when 3,		-- 0011
				"01100110" 	when 4,		-- 0100
				"01101101" 	when 5,		-- 0101
				"01111101" 	when 6,		-- 0110
				"00000111" 	when 7,		-- 0111
				"01111111" 	when 8,		-- 1000
				"01101111" 	when 9,		-- 1001
				"01110111" 	when 10,	-- 1010
				"01111100" 	when 11,	-- 1011
				"00111001"  when 12,	-- 1100
				"01011110"  when 13,	-- 1101
				"01111001"	when 14,	-- 1110
				"01110001"  when 15;	-- 1111			
end decodeur7seg;
				
				