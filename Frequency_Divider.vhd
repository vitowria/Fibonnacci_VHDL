library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;


entity freq_divider is 
	generic(
	N 				: 		integer := 10

	);
	
	port(
	clock, raz  :		in std_logic;

	Cout			:		out std_logic
	);
	
end freq_divider;

architecture behavior of freq_divider is
signal aux : std_logic;
signal counter : integer:= 0;

begin 
		process(clock, raz)
		begin 
		if (raz = '1') then 
			aux<='0';
		elsif rising_edge(clock) then
			counter <= counter + 1;
			aux<='0';
			
			if (counter = N) then
				aux<= '1';
				counter<=0;
			end if;
		end if;
		end process;
		Cout<=aux;
		
end behavior;
