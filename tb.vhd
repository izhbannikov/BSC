--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:18:42 04/09/2012
-- Design Name:   
-- Module Name:   C:/ece587/hamming/tb.vhd
-- Project Name:  hamming
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
use std.textio.all;
use ieee.std_logic_textio.all;


 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
			data_in : in std_logic_vector(31 downto 0);
			data_out_encoder : out  std_logic_vector(64 downto 0);
			data_out : out  std_logic_vector(31 downto 0);
			verif : out std_logic_vector(31 downto 0)
			);
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
	signal data_in : std_logic_vector(31 downto 0) :=(others => '0');
	signal data_out : std_logic_vector(31 downto 0) :=(others => '0');
	signal verif : std_logic_vector(31 downto 0) :=(others => '0');
	
	--Outputs
	signal data_out_encoder : std_logic_vector(64 downto 0) :=(others => '0');

	
   -- Clock period definitions
   constant clk_period : time := 10 ns;
	constant SIM_TIME : time := 100 ns;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top PORT MAP (
          clk => clk,
          rst => rst,
			 --enb => enb,
			 data_in => data_in,
			 data_out_encoder => data_out_encoder,
			 data_out => data_out,
			 verif => verif
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: 
	process
	   file bsc_out : text is out "bsc_out.txt";
		variable  outline  : line;   --line number declaration  

   begin		
      rst <= '1';
		wait for clk_period*10;
		rst <= '0';
		data_in <= "01010101010101010101010101010101";
		wait for clk_period;
		write(outline,data_out_encoder);
		writeline (bsc_out,outline);
		data_in <= not data_in;
		wait for clk_period;
		write(outline,data_out_encoder);
		writeline (bsc_out,outline);
		data_in <= not data_in;
		wait for clk_period;
		write(outline,data_out_encoder);
		writeline (bsc_out,outline);
		data_in <= not data_in;
		wait for clk_period;
		write(outline,data_out_encoder);
		writeline (bsc_out,outline);
		data_in <= not data_in;
		wait for clk_period;
		write(outline,data_out_encoder);
		writeline (bsc_out,outline);
		data_in <= not data_in;
		wait for clk_period;
		write(outline,data_out_encoder);
		writeline (bsc_out,outline);
		data_in <= not data_in;
		wait for clk_period;
		write(outline,data_out_encoder);
		writeline (bsc_out,outline);
		data_in <= not data_in;
		wait for clk_period;
		write(outline,data_out_encoder);
		writeline (bsc_out,outline);
		data_in <= not data_in;
		wait for clk_period;
		write(outline,data_out_encoder);
		writeline (bsc_out,outline);
		data_in <= not data_in;
		wait for clk_period;
		write(outline,data_out_encoder);
		writeline (bsc_out,outline);
		data_in <= not data_in;
		wait for clk_period;
		write(outline,data_out_encoder);
		writeline (bsc_out,outline);
		data_in <= not data_in;
		wait for clk_period;
		write(outline,data_out_encoder);
		writeline (bsc_out,outline);
		--stop_write <= '1';
		file_close(bsc_out);
		wait;

		
   end process;

END;
