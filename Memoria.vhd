library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity Memoria is
	port(
			endereco     : in std_logic_vector(7 downto 0);
			dado 			 : out std_logic_vector(7 downto 0)
		);
end entity;
			
architecture behaviour of Memoria is

type lut_rlps is array (integer range 0 to 15) of std_logic_vector(7 downto 0);
signal lut_rlps_0		: lut_rlps;

begin

			lut_rlps_0 (0)  <= "00001000"; 
			lut_rlps_0 (1)  <= "00001010";  
			lut_rlps_0 (2)  <= "00001100"; 
			lut_rlps_0 (3)  <= "00001001";   
			lut_rlps_0 (4)  <= "00001010";  
			lut_rlps_0 (5)  <= "00001001";   
			lut_rlps_0 (6)  <= "00001010";   
			lut_rlps_0 (7)  <= "00001000";  
			lut_rlps_0 (8)  <= "00001000";   
			lut_rlps_0 (9)  <= "00001000";   
			lut_rlps_0 (10) <= "00001000";  
			lut_rlps_0 (11) <= "00001000"; 
			lut_rlps_0 (12) <= "00001000";  
			lut_rlps_0 (13) <= "00001000";   
			lut_rlps_0 (14) <= "00001000";   
			lut_rlps_0 (15) <= "00001000"; 
			
dado <= lut_rlps_0 (conv_integer(endereco));
			
end behaviour;