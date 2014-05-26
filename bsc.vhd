----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:32:50 04/11/2012 
-- Design Name: 
-- Module Name:    bsc_encoder - Behavioral 
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

--Boundary-Shift-Coder
entity bsc is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (31 downto 0);
			  data_out_encoder : out STD_LOGIC_VECTOR (64 downto 0);
           data_out : out  STD_LOGIC_VECTOR (31 downto 0));
end bsc;

architecture Behavioral of bsc is

	component mux2_1 is 
		Port ( in0 : in  STD_LOGIC;
				in1 : in  STD_LOGIC;
				s : in  std_logic;
				mux_out : out  STD_LOGIC
			);
	end component;
	
	signal e_t0, e_t1, e_t2, e_t3, e_t4, e_t5, e_t6, e_t7  : std_logic;
	signal e_t8, e_t9, e_t10, e_t11, e_t12, e_t13, e_t14, e_t15  : std_logic;
	signal e_t16, e_t17, e_t18, e_t19, e_t20, e_t21, e_t22 : std_logic;
	signal e_t23, e_t24, e_t25, e_t26, e_t27, e_t28, e_t29, e_t30 : std_logic;
	
	signal d_t0, d_t1, d_t2, d_t3, d_t4, d_t5, d_t6, d_t7 : std_logic;
	signal d_t8, d_t9, d_t10, d_t11, d_t12, d_t13, d_t14, d_t15 : std_logic;
	signal d_t16, d_t17, d_t18, d_t19, d_t20, d_t21, d_t22, d_t23 : std_logic;
	signal d_t24, d_t25, d_t26, d_t27, d_t28, d_t29, d_t30, d_t31 : std_logic;
	signal t_clk : std_logic;
	type encoder_state IS (odd, even);
	signal prev_state, next_state: encoder_state;
	signal tmp_data_out_encoder  : STD_LOGIC_VECTOR (64 downto 0) :=(others => '0');
	signal d_mux0_0_out, d_mux1_0_out, d_mux2_0_out, d_mux3_0_out, d_mux4_0_out : std_logic;
	signal d_mux5_0_out, d_mux6_0_out, d_mux7_0_out, d_mux8_0_out, d_mux9_0_out : std_logic;
	signal d_mux10_0_out, d_mux11_0_out, d_mux12_0_out, d_mux13_0_out, d_mux14_0_out : std_logic;
	signal d_mux15_0_out, d_mux16_0_out, d_mux17_0_out, d_mux18_0_out, d_mux19_0_out : std_logic;
	signal d_mux20_0_out, d_mux21_0_out, d_mux22_0_out, d_mux23_0_out, d_mux24_0_out : std_logic;
	signal d_mux25_0_out, d_mux26_0_out, d_mux27_0_out, d_mux28_0_out, d_mux29_0_out : std_logic;
	signal d_mux30_0_out, d_mux31_0_out, d_mux32_0_out : std_logic;

begin

	data_out_encoder <= tmp_data_out_encoder;


	---Encoder's side
	---1-st level
	e_t0 <= data_in(0) xor data_in(1);
	e_t1 <= data_in(2) xor data_in(3);
	e_t2 <= data_in(4) xor data_in(5);
	e_t3 <= data_in(6) xor data_in(7);
	e_t4 <= data_in(8) xor data_in(9);
	e_t5 <= data_in(10) xor data_in(11);
	e_t6 <= data_in(12) xor data_in(13);
	e_t7 <= data_in(14) xor data_in(15);
	e_t8 <= data_in(16) xor data_in(17);
	e_t9 <= data_in(18) xor data_in(19);
	e_t10 <= data_in(20) xor data_in(21);
	e_t11 <= data_in(22) xor data_in(23);
	e_t12 <= data_in(24) xor data_in(25);
	e_t13 <= data_in(26) xor data_in(27);
	e_t14 <= data_in(28) xor data_in(29);
	e_t15 <= data_in(30) xor data_in(31);
	------
	---2nd level
	e_t16 <= e_t0 xor e_t1;
	e_t17 <= e_t2 xor e_t3;
	e_t18 <= e_t4 xor e_t5;
	e_t19 <= e_t6 xor e_t7;
	e_t20 <= e_t8 xor e_t9;
	e_t21 <= e_t10 xor e_t11;
	e_t22 <= e_t12 xor e_t13;
	e_t23 <= e_t14 xor e_t15;
	---3rd level
	e_t24 <= e_t16 xor e_t17;
	e_t25 <= e_t18 xor e_t19;
	e_t26 <= e_t20 xor e_t21;
	e_t27 <= e_t22 xor e_t23;
	--4th level
	e_t28 <= e_t24 xor e_t25;
	e_t29 <= e_t26 xor e_t27;
	--5th level
	e_t30 <= e_t28 xor e_t29;
	
	
	
	tmp_data_out_encoder(1) <= data_in(0);
	tmp_data_out_encoder(3) <= data_in(1);
	tmp_data_out_encoder(5) <= data_in(2);
	tmp_data_out_encoder(7) <= data_in(3);
	tmp_data_out_encoder(9) <= data_in(4);
	tmp_data_out_encoder(11) <= data_in(5);
	tmp_data_out_encoder(13) <= data_in(6);
	tmp_data_out_encoder(15) <= data_in(7);
	-------------------------------
	tmp_data_out_encoder(17) <= data_in(8);
	tmp_data_out_encoder(19) <= data_in(9);
	tmp_data_out_encoder(21) <= data_in(10);
	tmp_data_out_encoder(23) <= data_in(11);
	tmp_data_out_encoder(25) <= data_in(12);
	tmp_data_out_encoder(27) <= data_in(13);
	tmp_data_out_encoder(29) <= data_in(14);
	tmp_data_out_encoder(31) <= data_in(15);
	------------------------------
	tmp_data_out_encoder(33) <= data_in(16);
	tmp_data_out_encoder(35) <= data_in(17);
	tmp_data_out_encoder(37) <= data_in(18);
	tmp_data_out_encoder(39) <= data_in(19);
	tmp_data_out_encoder(41) <= data_in(20);
	tmp_data_out_encoder(43) <= data_in(21);
	tmp_data_out_encoder(45) <= data_in(22);
	tmp_data_out_encoder(47) <= data_in(23);
	-------------------------------
	tmp_data_out_encoder(49) <= data_in(24);
	tmp_data_out_encoder(51) <= data_in(25);
	tmp_data_out_encoder(53) <= data_in(26);
	tmp_data_out_encoder(55) <= data_in(27);
	tmp_data_out_encoder(57) <= data_in(28);
	tmp_data_out_encoder(59) <= data_in(29);
	tmp_data_out_encoder(61) <= data_in(30);
	tmp_data_out_encoder(63) <= data_in(31);

	e_mux0 : mux2_1
		Port Map (
						in0 => data_in(0),
						in1 => e_t30,
						s => t_clk,
						mux_out => tmp_data_out_encoder(0)
					);
					
	e_mux1 : mux2_1
		Port Map (
						in0 => data_in(1),
						in1 => data_in(0),
						s => t_clk,
						mux_out => tmp_data_out_encoder(2)
					);
					
	e_mux2 : mux2_1
		Port Map (
						in0 => data_in(2),
						in1 => data_in(1),
						s => t_clk,
						mux_out => tmp_data_out_encoder(4)
					);
					
	e_mux3 : mux2_1
		Port Map (
						in0 => data_in(3),
						in1 => data_in(2),
						s => t_clk,
						mux_out => tmp_data_out_encoder(6)
					);
					
	e_mux4 : mux2_1
		Port Map (
						in0 => data_in(4),
						in1 => data_in(3),
						s => t_clk,
						mux_out => tmp_data_out_encoder(8)
					);
					
	e_mux5 : mux2_1
		Port Map (
						in0 => data_in(5),
						in1 => data_in(4),
						s => t_clk,
						mux_out => tmp_data_out_encoder(10)
					);
	
	e_mux6 : mux2_1
		Port Map (
						in0 => data_in(6),
						in1 => data_in(5),
						s => t_clk,
						mux_out => tmp_data_out_encoder(12)
					);
					
	e_mux7 : mux2_1
		Port Map (
						in0 => data_in(7),
						in1 => data_in(6),
						s => t_clk,
						mux_out => tmp_data_out_encoder(14)
					);
					
	e_mux8 : mux2_1
		Port Map (
						in0 => data_in(8),
						in1 => data_in(7),
						s => t_clk,
						mux_out => tmp_data_out_encoder(16)
					);
					
	e_mux9 : mux2_1
		Port Map (
						in0 => data_in(9),
						in1 => data_in(8),
						s => t_clk,
						mux_out => tmp_data_out_encoder(18)
					);
					
	e_mux10 : mux2_1
		Port Map (
						in0 => data_in(10),
						in1 => data_in(9),
						s => t_clk,
						mux_out => tmp_data_out_encoder(20)
					);
					
	e_mux11 : mux2_1
		Port Map (
						in0 => data_in(11),
						in1 => data_in(10),
						s => t_clk,
						mux_out => tmp_data_out_encoder(22)
					);
					
	e_mux12 : mux2_1
		Port Map (
						in0 => data_in(12),
						in1 => data_in(11),
						s => t_clk,
						mux_out => tmp_data_out_encoder(24)
					);
					
	e_mux13 : mux2_1
		Port Map (
						in0 => data_in(13),
						in1 => data_in(12),
						s => t_clk,
						mux_out => tmp_data_out_encoder(26)
					);
					
	e_mux14 : mux2_1
		Port Map (
						in0 => data_in(14),
						in1 => data_in(13),
						s => t_clk,
						mux_out => tmp_data_out_encoder(28)
					);
					
	e_mux15 : mux2_1
		Port Map (
						in0 => data_in(15),
						in1 => data_in(14),
						s => t_clk,
						mux_out => tmp_data_out_encoder(30)
					);
					
	e_mux16 : mux2_1
		Port Map (
						in0 => data_in(16),
						in1 => data_in(15),
						s => t_clk,
						mux_out => tmp_data_out_encoder(32)
					);
					
	e_mux17 : mux2_1
		Port Map (
						in0 => data_in(17),
						in1 => data_in(16),
						s => t_clk,
						mux_out => tmp_data_out_encoder(34)
					);
					
	e_mux18 : mux2_1
		Port Map (
						in0 => data_in(18),
						in1 => data_in(17),
						s => t_clk,
						mux_out => tmp_data_out_encoder(36)
					);
					
	e_mux19 : mux2_1
		Port Map (
						in0 => data_in(19),
						in1 => data_in(18),
						s => t_clk,
						mux_out => tmp_data_out_encoder(38)
					);
					
	e_mux20 : mux2_1
		Port Map (
						in0 => data_in(20),
						in1 => data_in(19),
						s => t_clk,
						mux_out => tmp_data_out_encoder(40)
					);
					
	e_mux21 : mux2_1
		Port Map (
						in0 => data_in(21),
						in1 => data_in(20),
						s => t_clk,
						mux_out => tmp_data_out_encoder(42)
					);
					
	e_mux22 : mux2_1
		Port Map (
						in0 => data_in(22),
						in1 => data_in(21),
						s => t_clk,
						mux_out => tmp_data_out_encoder(44)
					);
					
	e_mux23 : mux2_1
		Port Map (
						in0 => data_in(23),
						in1 => data_in(22),
						s => t_clk,
						mux_out => tmp_data_out_encoder(46)
					);
					
	e_mux24 : mux2_1
		Port Map (
						in0 => data_in(24),
						in1 => data_in(23),
						s => t_clk,
						mux_out => tmp_data_out_encoder(48)
					);
					
	e_mux25 : mux2_1
		Port Map (
						in0 => data_in(25),
						in1 => data_in(24),
						s => t_clk,
						mux_out => tmp_data_out_encoder(50)
					);
					
	e_mux26 : mux2_1
		Port Map (
						in0 => data_in(26),
						in1 => data_in(25),
						s => t_clk,
						mux_out => tmp_data_out_encoder(52)
					);
					
	e_mux27 : mux2_1
		Port Map (
						in0 => data_in(27),
						in1 => data_in(26),
						s => t_clk,
						mux_out => tmp_data_out_encoder(54)
					);
					
	e_mux28 : mux2_1
		Port Map (
						in0 => data_in(28),
						in1 => data_in(27),
						s => t_clk,
						mux_out => tmp_data_out_encoder(56)
					);
					
	e_mux29 : mux2_1
		Port Map (
						in0 => data_in(29),
						in1 => data_in(28),
						s => t_clk,
						mux_out => tmp_data_out_encoder(58)
					);
					
	e_mux30 : mux2_1
		Port Map (
						in0 => data_in(30),
						in1 => data_in(29),
						s => t_clk,
						mux_out => tmp_data_out_encoder(60)
					);
					
	e_mux31 : mux2_1
		Port Map (
						in0 => data_in(31),
						in1 => data_in(30),
						s => t_clk,
						mux_out => tmp_data_out_encoder(62)
					);
					
	e_mux32 : mux2_1
		Port Map (
						in0 => e_t30,
						in1 => data_in(31),
						s => t_clk,
						mux_out => tmp_data_out_encoder(64)
					);
	
	--end of encoder side
	
	
	--decoder's side
	d_t0 <= tmp_data_out_encoder(1) xor tmp_data_out_encoder(3);
	d_t1 <= tmp_data_out_encoder(5) xor tmp_data_out_encoder(7);
	d_t2 <= tmp_data_out_encoder(9) xor tmp_data_out_encoder(11);
	d_t3 <= tmp_data_out_encoder(13) xor tmp_data_out_encoder(15);
	d_t4 <= tmp_data_out_encoder(17) xor tmp_data_out_encoder(19);
	d_t5 <= tmp_data_out_encoder(21) xor tmp_data_out_encoder(23);
	d_t6 <= tmp_data_out_encoder(25) xor tmp_data_out_encoder(27);
	d_t7 <= tmp_data_out_encoder(29) xor tmp_data_out_encoder(31);
	d_t8 <= tmp_data_out_encoder(33) xor tmp_data_out_encoder(35);
	d_t9 <= tmp_data_out_encoder(37) xor tmp_data_out_encoder(39);
	d_t10 <= tmp_data_out_encoder(41) xor tmp_data_out_encoder(43);
	d_t11 <= tmp_data_out_encoder(45) xor tmp_data_out_encoder(47);
	d_t12 <= tmp_data_out_encoder(49) xor tmp_data_out_encoder(51);
	d_t13 <= tmp_data_out_encoder(53) xor tmp_data_out_encoder(55);
	d_t14 <= tmp_data_out_encoder(57) xor tmp_data_out_encoder(59);
	d_t15 <= tmp_data_out_encoder(61) xor tmp_data_out_encoder(63);
	-----------------------
	d_t16 <= d_t0 xor d_t1;
	d_t17 <= d_t2 xor d_t3;
	d_t18 <= d_t4 xor d_t5;
	d_t19 <= d_t6 xor d_t7;
	d_t20 <= d_t8 xor d_t9;
	d_t21 <= d_t10 xor d_t11;
	d_t22 <= d_t12 xor d_t13;
	d_t23 <= d_t14 xor d_t15;
	-------------------------
	d_t24 <= d_t16 xor d_t17;
	d_t25 <= d_t18 xor d_t19;
	d_t26 <= d_t20 xor d_t21;
	d_t27 <= d_t22 xor d_t23;
	------------------------
	d_t28 <= d_t24 xor d_t25;
	d_t29 <= d_t26 xor d_t27;
	------------------------
	d_t30 <= d_t28 xor d_t29;
	
	
	d_t31 <= d_t30 xor d_mux32_0_out;
	
	--first row of multiplexers
	d_mux0_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(0),
						in1 => tmp_data_out_encoder(2),
						s => t_clk,
						mux_out => d_mux0_0_out
					);
					
	d_mux1_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(2),
						in1 => tmp_data_out_encoder(4),
						s => t_clk,
						mux_out => d_mux1_0_out
					);
					
	d_mux2_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(4),
						in1 => tmp_data_out_encoder(6),
						s => t_clk,
						mux_out => d_mux2_0_out
					);
					
	d_mux3_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(6),
						in1 => tmp_data_out_encoder(8),
						s => t_clk,
						mux_out => d_mux3_0_out
					);
					
	d_mux4_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(8),
						in1 => tmp_data_out_encoder(10),
						s => t_clk,
						mux_out => d_mux4_0_out
					);
					
	d_mux5_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(10),
						in1 => tmp_data_out_encoder(12),
						s => t_clk,
						mux_out => d_mux5_0_out
					);
					
	d_mux6_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(12),
						in1 => tmp_data_out_encoder(14),
						s => t_clk,
						mux_out => d_mux6_0_out
					);
					
	d_mux7_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(14),
						in1 => tmp_data_out_encoder(16),
						s => t_clk,
						mux_out => d_mux7_0_out
					);
					
	d_mux8_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(16),
						in1 => tmp_data_out_encoder(18),
						s => t_clk,
						mux_out => d_mux8_0_out
					);
					
	d_mux9_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(18),
						in1 => tmp_data_out_encoder(20),
						s => t_clk,
						mux_out => d_mux9_0_out
					);
					
	d_mux10_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(20),
						in1 => tmp_data_out_encoder(22),
						s => t_clk,
						mux_out => d_mux10_0_out
					);
					
	d_mux11_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(22),
						in1 => tmp_data_out_encoder(24),
						s => t_clk,
						mux_out => d_mux11_0_out
					);
					
	d_mux12_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(24),
						in1 => tmp_data_out_encoder(26),
						s => t_clk,
						mux_out => d_mux12_0_out
					);
					
	d_mux13_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(26),
						in1 => tmp_data_out_encoder(28),
						s => t_clk,
						mux_out => d_mux13_0_out
					);
					
	d_mux14_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(28),
						in1 => tmp_data_out_encoder(30),
						s => t_clk,
						mux_out => d_mux14_0_out
					);
					
	d_mux15_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(30),
						in1 => tmp_data_out_encoder(32),
						s => t_clk,
						mux_out => d_mux15_0_out
					);
					
	d_mux16_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(32),
						in1 => tmp_data_out_encoder(34),
						s => t_clk,
						mux_out => d_mux16_0_out
					);
					
	d_mux17_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(34),
						in1 => tmp_data_out_encoder(36),
						s => t_clk,
						mux_out => d_mux17_0_out
					);
					
	d_mux18_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(36),
						in1 => tmp_data_out_encoder(38),
						s => t_clk,
						mux_out => d_mux18_0_out
					);
					
	d_mux19_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(38),
						in1 => tmp_data_out_encoder(40),
						s => t_clk,
						mux_out => d_mux19_0_out
					);
					
	d_mux20_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(40),
						in1 => tmp_data_out_encoder(42),
						s => t_clk,
						mux_out => d_mux20_0_out
					);
					
	d_mux21_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(42),
						in1 => tmp_data_out_encoder(44),
						s => t_clk,
						mux_out => d_mux21_0_out
					);
					
	d_mux22_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(44),
						in1 => tmp_data_out_encoder(46),
						s => t_clk,
						mux_out => d_mux22_0_out
					);
					
	d_mux23_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(46),
						in1 => tmp_data_out_encoder(48),
						s => t_clk,
						mux_out => d_mux23_0_out
					);
					
	d_mux24_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(48),
						in1 => tmp_data_out_encoder(50),
						s => t_clk,
						mux_out => d_mux24_0_out
					);
					
	d_mux25_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(50),
						in1 => tmp_data_out_encoder(52),
						s => t_clk,
						mux_out => d_mux25_0_out
					);
					
	d_mux26_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(52),
						in1 => tmp_data_out_encoder(54),
						s => t_clk,
						mux_out => d_mux26_0_out
					);
					
	d_mux27_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(54),
						in1 => tmp_data_out_encoder(56),
						s => t_clk,
						mux_out => d_mux27_0_out
					);
					
	d_mux28_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(56),
						in1 => tmp_data_out_encoder(58),
						s => t_clk,
						mux_out => d_mux28_0_out
					);
					
	d_mux29_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(58),
						in1 => tmp_data_out_encoder(60),
						s => t_clk,
						mux_out => d_mux29_0_out
					);
					
	d_mux30_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(60),
						in1 => tmp_data_out_encoder(62),
						s => t_clk,
						mux_out => d_mux30_0_out
					);
					
	d_mux31_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(62),
						in1 => tmp_data_out_encoder(64),
						s => t_clk,
						mux_out => d_mux31_0_out
					);
					
	d_mux32_0 : mux2_1
		Port Map (
						in0 => tmp_data_out_encoder(62),
						in1 => tmp_data_out_encoder(0),
						s => t_clk,
						mux_out => d_mux32_0_out
					);
					
	--second row of multiplexers:
	d_mux0_1 : mux2_1
		Port Map (
						in0 => d_mux0_0_out,
						in1 => tmp_data_out_encoder(1),
						s => d_t31,
						mux_out => data_out(0)
					);
					
	d_mux1_1 : mux2_1
		Port Map (
						in0 => d_mux1_0_out,
						in1 => tmp_data_out_encoder(3),
						s => d_t31,
						mux_out => data_out(1)
					);
					
	d_mux2_1 : mux2_1
		Port Map (
						in0 => d_mux2_0_out,
						in1 => tmp_data_out_encoder(5),
						s => d_t31,
						mux_out => data_out(2)
					);
					
	d_mux3_1 : mux2_1
		Port Map (
						in0 => d_mux3_0_out,
						in1 => tmp_data_out_encoder(7),
						s => d_t31,
						mux_out => data_out(3)
					);
					
	d_mux4_1 : mux2_1
		Port Map (
						in0 => d_mux4_0_out,
						in1 => tmp_data_out_encoder(9),
						s => d_t31,
						mux_out => data_out(4)
					);
					
	d_mux5_1 : mux2_1
		Port Map (
						in0 => d_mux5_0_out,
						in1 => tmp_data_out_encoder(11),
						s => d_t31,
						mux_out => data_out(5)
					);
					
	d_mux6_1 : mux2_1
		Port Map (
						in0 => d_mux6_0_out,
						in1 => tmp_data_out_encoder(13),
						s => d_t31,
						mux_out => data_out(6)
					);
					
	d_mux7_1 : mux2_1
		Port Map (
						in0 => d_mux7_0_out,
						in1 => tmp_data_out_encoder(15),
						s => d_t31,
						mux_out => data_out(7)
					);
					
	d_mux8_1 : mux2_1
		Port Map (
						in0 => d_mux8_0_out,
						in1 => tmp_data_out_encoder(17),
						s => d_t31,
						mux_out => data_out(8)
					);
					
	d_mux9_1 : mux2_1
		Port Map (
						in0 => d_mux9_0_out,
						in1 => tmp_data_out_encoder(19),
						s => d_t31,
						mux_out => data_out(9)
					);
					
	d_mux10_1 : mux2_1
		Port Map (
						in0 => d_mux10_0_out,
						in1 => tmp_data_out_encoder(21),
						s => d_t31,
						mux_out => data_out(10)
					);
					
	d_mux11_1 : mux2_1
		Port Map (
						in0 => d_mux11_0_out,
						in1 => tmp_data_out_encoder(23),
						s => d_t31,
						mux_out => data_out(11)
					);
					
	d_mux12_1 : mux2_1
		Port Map (
						in0 => d_mux12_0_out,
						in1 => tmp_data_out_encoder(25),
						s => d_t31,
						mux_out => data_out(12)
					);
					
	d_mux13_1 : mux2_1
		Port Map (
						in0 => d_mux13_0_out,
						in1 => tmp_data_out_encoder(27),
						s => d_t31,
						mux_out => data_out(13)
					);
					
	d_mux14_1 : mux2_1
		Port Map (
						in0 => d_mux14_0_out,
						in1 => tmp_data_out_encoder(29),
						s => d_t31,
						mux_out => data_out(14)
					);
					
	d_mux15_1 : mux2_1
		Port Map (
						in0 => d_mux15_0_out,
						in1 => tmp_data_out_encoder(31),
						s => d_t31,
						mux_out => data_out(15)
					);
					
	d_mux16_1 : mux2_1
		Port Map (
						in0 => d_mux16_0_out,
						in1 => tmp_data_out_encoder(33),
						s => d_t31,
						mux_out => data_out(16)
					);
					
	d_mux17_1 : mux2_1
		Port Map (
						in0 => d_mux17_0_out,
						in1 => tmp_data_out_encoder(35),
						s => d_t31,
						mux_out => data_out(17)
					);
					
	d_mux18_1 : mux2_1
		Port Map (
						in0 => d_mux18_0_out,
						in1 => tmp_data_out_encoder(37),
						s => d_t31,
						mux_out => data_out(18)
					);
					
	d_mux19_1 : mux2_1
		Port Map (
						in0 => d_mux19_0_out,
						in1 => tmp_data_out_encoder(39),
						s => d_t31,
						mux_out => data_out(19)
					);
					
	d_mux20_1 : mux2_1
		Port Map (
						in0 => d_mux20_0_out,
						in1 => tmp_data_out_encoder(41),
						s => d_t31,
						mux_out => data_out(20)
					);
					
	d_mux21_1 : mux2_1
		Port Map (
						in0 => d_mux21_0_out,
						in1 => tmp_data_out_encoder(43),
						s => d_t31,
						mux_out => data_out(21)
					);
					
	d_mux22_1 : mux2_1
		Port Map (
						in0 => d_mux22_0_out,
						in1 => tmp_data_out_encoder(45),
						s => d_t31,
						mux_out => data_out(22)
					);
					
	d_mux23_1 : mux2_1
		Port Map (
						in0 => d_mux23_0_out,
						in1 => tmp_data_out_encoder(47),
						s => d_t31,
						mux_out => data_out(23)
					);
					
	d_mux24_1 : mux2_1
		Port Map (
						in0 => d_mux24_0_out,
						in1 => tmp_data_out_encoder(49),
						s => d_t31,
						mux_out => data_out(24)
					);
					
	d_mux25_1 : mux2_1
		Port Map (
						in0 => d_mux25_0_out,
						in1 => tmp_data_out_encoder(51),
						s => d_t31,
						mux_out => data_out(25)
					);
					
	d_mux26_1 : mux2_1
		Port Map (
						in0 => d_mux26_0_out,
						in1 => tmp_data_out_encoder(53),
						s => d_t31,
						mux_out => data_out(26)
					);
					
	d_mux27_1 : mux2_1
		Port Map (
						in0 => d_mux27_0_out,
						in1 => tmp_data_out_encoder(55),
						s => d_t31,
						mux_out => data_out(27)
					);
					
	d_mux28_1 : mux2_1
		Port Map (
						in0 => d_mux28_0_out,
						in1 => tmp_data_out_encoder(57),
						s => d_t31,
						mux_out => data_out(28)
					);
					
	d_mux29_1 : mux2_1
		Port Map (
						in0 => d_mux29_0_out,
						in1 => tmp_data_out_encoder(59),
						s => d_t31,
						mux_out => data_out(29)
					);
					
	d_mux30_1 : mux2_1
		Port Map (
						in0 => d_mux30_0_out,
						in1 => tmp_data_out_encoder(61),
						s => d_t31,
						mux_out => data_out(30)
					);
					
	d_mux31_1 : mux2_1
		Port Map (
						in0 => d_mux31_0_out,
						in1 => tmp_data_out_encoder(63),
						s => d_t31,
						mux_out => data_out(31)
					);
					
	
	--end of decoder side
	
					
	process (clk, rst) begin
		if (rst = '1') then prev_state <= odd;
		elsif (clk'event and clk = '0') then prev_state <= next_state;
		end if; 
	end process;
	
	process (prev_state) begin
		case prev_state IS 
			when odd => 
				t_clk <= '0'; 
				next_state <= even;
			when even => 
				t_clk <= '1'; 
				next_state <= odd; 
		end case;	
	end process;


end Behavioral;

