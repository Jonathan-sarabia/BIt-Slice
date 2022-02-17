----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplexor4bits is
	port(
		ent0: in std_logic_vector (3 downto 0);
		ent1: in std_logic_vector (3 downto 0);
		ent2: in std_logic_vector (3 downto 0);
		ent3: in std_logic_vector (3 downto 0);
		ent4: in std_logic_vector (3 downto 0);
		ent5: in std_logic_vector (3 downto 0);
		ent6: in std_logic_vector (3 downto 0);
		SelMux: in std_logic_vector (3 downto 0);
		salida: out std_logic_vector (3 downto 0)
	);
end multiplexor4bits;

architecture Behavioral of multiplexor4bits is
begin
	with selMux select
		salida <= ent0 when "0000",
					 ent1 when "0001",
					 ent2 when "0010",
					 ent3 when "0011",
					 ent4 when "0100",
					 ent5 when "0101",
					 ent6 when "0110",
					 "0000" when others;
end Behavioral;

