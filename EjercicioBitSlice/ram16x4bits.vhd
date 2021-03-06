library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_Std.all;

entity ram16x4bits is
	port (
    clock   : in  std_logic;
    we      : in  std_logic;
    address : in  std_logic_vector (3 downto 0);
    datain  : in  std_logic_vector (3 downto 0);
    dataout : out std_logic_vector (3 downto 0)
  );
end ram16x4bits;

architecture Behavioral of ram16x4bits is
--se crea un tipo llammado ram_tipo 
	type ram_type is array (0 to (2**address'length)-1) of std_logic_vector(datain'range);
   signal ram : ram_type;
   signal read_address : std_logic_vector(address'range);
begin
	RamProc: process(clock) is
	begin
		if rising_edge(clock) then-- clk event and clk 1 -- faling edge 
			if we = '1' then
				ram(to_integer(unsigned(address))) <= datain;
			end if;
			read_address <= address;
		end if;
	end process RamProc;

	dataout <= ram(to_integer(unsigned(read_address)));

end Behavioral;