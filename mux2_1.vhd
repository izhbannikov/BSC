----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:58:19 04/11/2012 
-- Design Name: 
-- Module Name:    mux2_1 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux2_1 is
    Port ( in0 : in  STD_LOGIC;
           in1 : in  STD_LOGIC;
           s : in  STD_LOGIC;
           mux_out : out  STD_LOGIC);
end mux2_1;

architecture Behavioral of mux2_1 is

begin

	process (in0, in1, s)
	begin
		case s is
			when '0' => mux_out <= in0;
			when '1' => mux_out <= in1;
			when others =>
				mux_out <= '0';
		end case;
	end process;

end Behavioral;

