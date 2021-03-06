library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity logica_transformacion is
Port ( A : in STD_LOGIC;
		 B : in STD_LOGIC;
		 direccion : out STD_LOGIC_VECTOR (3 downto 0)
		 );
end logica_transformacion;

architecture Behavioral of logica_transformacion is
begin
	
	process(A, B)
	begin
			if A='0' and B='0' then direccion <= "0011"; --estado 3
		elsif A='0' and B='1' then direccion <= "1000"; --estado 8
		else direccion <= "1101"; --estado 13
		end if;
	end process;

end Behavioral;