library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity Handshake is
	port(
			clk          : in std_logic;
			reset	      : in	std_logic;
			ReqLeit      : in  std_logic;
			AckES        : in  std_logic;
			endereco     : in std_logic_vector(7 downto 0);
			dado 			 : out std_logic_vector(7 downto 0);
			AckMem       : out std_logic;
			DadoPrt      : out std_logic
		);
end entity;
			
architecture behaviour of Handshake is

signal regEndereco : std_logic_vector(7 downto 0);
signal regDado : std_logic_vector(7 downto 0);
signal enEndereco, enSaida : std_logic;

component Memoria is
	port(
			endereco     : in std_logic_vector(7 downto 0);
			dado 			 : out std_logic_vector(7 downto 0)
	);
end component Memoria;

component PC is
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
end component PC;

begin

	process(clk) is
	begin
		if (rising_edge(clk)) then	
			if (enEndereco = '1') then
				regEndereco <= endereco;
			end if;
			
			if (enSaida = '1') then
				dado <= regDado;
			end if;
		end if;
	end process;

inst_Memoria: Memoria 
	port map( 
		endereco => regEndereco,
		dado => regDado
	);

inst_PC: PC 
	port map( 
		clk => clk,
		reset => reset,
		ReqLeit => ReqLeit,
		AckES  => AckES,
		DadoPrt => DadoPrt,   
		AckMem => AckMem, 
		enEndereco => enEndereco,  
		enSaida => enSaida    
	);	
			
end behaviour;