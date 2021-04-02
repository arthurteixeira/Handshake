library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PC is

	port(
		clk		   : in	std_logic;
		reset	      : in	std_logic;
		ReqLeit     : in  std_logic;
		AckES       : in  std_logic;
		DadoPrt     : out std_logic;
		AckMem      : out std_logic;
		enEndereco  : out std_logic;
		enSaida     : out std_logic
	);

end entity;

architecture rtl of PC is

	type state_type is (s0, s1, s2, s3);
	signal state   : state_type;

begin

	process (clk, reset)
	begin
		if reset = '1' then
			state <= s0;
		elsif (rising_edge(clk)) then
			case state is
				when s0=>
					if ReqLeit = '0' then	
						state <= s0;
					else
						state <= s1;
					end if;
				when s1=>
					if ReqLeit = '1' then	
						state <= s1;
					else
						state <= s2;
					end if;
				when s2=>
					if AckES = '0' then	
						state <= s2;
					else
						state <= s3;
					end if;
				when s3=>
					state <= s0;
			end case;
		end if;
	end process;

	process (state)
	begin
		case state is
			when s0 =>
				AckMem <= '0';
				DadoPrt <= '0';
				enEndereco <= '1';
				enSaida <= '0';
			when s1 =>
				AckMem <= '1';
				DadoPrt <= '0';
				enEndereco <= '0';
				enSaida <= '0';
			when s2 =>
				AckMem <= '0';
				DadoPrt <= '1';
				enEndereco <= '0';
				enSaida <= '1';
			when s3 =>
				AckMem <= '0';
				DadoPrt <= '0';
				enEndereco <= '0';
				enSaida <= '0';
		end case;
	end process;

end rtl;