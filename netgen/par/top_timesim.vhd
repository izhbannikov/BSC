--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.61xd
--  \   \         Application: netgen
--  /   /         Filename: top_timesim.vhd
-- /___/   /\     Timestamp: Mon Apr 16 15:38:34 2012
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf top.pcf -rpw 100 -tpw 0 -ar Structure -tm top -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim top.ncd top_timesim.vhd 
-- Device	: 3s100etq144-4 (PRODUCTION 1.27 2011-06-20)
-- Input file	: top.ncd
-- Output file	: C:\ece587\bsc\netgen\par\top_timesim.vhd
-- # of Entities	: 1
-- Design Name	: top
-- Xilinx	: C:\Xilinx\13.2\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity top is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    verif : out STD_LOGIC_VECTOR ( 31 downto 0 ); 
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 ); 
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 ) 
  );
end top;

architecture Structure of top is
  signal verif_10_O : STD_LOGIC; 
  signal verif_11_O : STD_LOGIC; 
  signal verif_20_O : STD_LOGIC; 
  signal verif_12_O : STD_LOGIC; 
  signal verif_21_O : STD_LOGIC; 
  signal verif_13_O : STD_LOGIC; 
  signal verif_30_O : STD_LOGIC; 
  signal verif_22_O : STD_LOGIC; 
  signal verif_14_O : STD_LOGIC; 
  signal verif_31_O : STD_LOGIC; 
  signal verif_23_O : STD_LOGIC; 
  signal verif_15_O : STD_LOGIC; 
  signal verif_24_O : STD_LOGIC; 
  signal verif_16_O : STD_LOGIC; 
  signal verif_25_O : STD_LOGIC; 
  signal verif_17_O : STD_LOGIC; 
  signal verif_26_O : STD_LOGIC; 
  signal verif_18_O : STD_LOGIC; 
  signal verif_27_O : STD_LOGIC; 
  signal verif_19_O : STD_LOGIC; 
  signal verif_28_O : STD_LOGIC; 
  signal verif_29_O : STD_LOGIC; 
  signal verif_0_O : STD_LOGIC; 
  signal verif_1_O : STD_LOGIC; 
  signal verif_2_O : STD_LOGIC; 
  signal verif_3_O : STD_LOGIC; 
  signal verif_4_O : STD_LOGIC; 
  signal verif_5_O : STD_LOGIC; 
  signal verif_6_O : STD_LOGIC; 
  signal verif_7_O : STD_LOGIC; 
  signal verif_8_O : STD_LOGIC; 
  signal verif_9_O : STD_LOGIC; 
  signal data_out_10_O : STD_LOGIC; 
  signal data_out_11_O : STD_LOGIC; 
  signal data_out_20_O : STD_LOGIC; 
  signal data_out_12_O : STD_LOGIC; 
  signal data_out_21_O : STD_LOGIC; 
  signal data_out_13_O : STD_LOGIC; 
  signal data_out_0_O : STD_LOGIC; 
  signal data_out_30_O : STD_LOGIC; 
  signal data_out_22_O : STD_LOGIC; 
  signal data_out_1_O : STD_LOGIC; 
  signal data_out_14_O : STD_LOGIC; 
  signal data_out_31_O : STD_LOGIC; 
  signal data_out_2_O : STD_LOGIC; 
  signal data_out_23_O : STD_LOGIC; 
  signal data_out_15_O : STD_LOGIC; 
  signal data_out_3_O : STD_LOGIC; 
  signal data_out_24_O : STD_LOGIC; 
  signal data_out_16_O : STD_LOGIC; 
  signal data_out_4_O : STD_LOGIC; 
  signal data_out_25_O : STD_LOGIC; 
  signal data_out_17_O : STD_LOGIC; 
  signal data_in_0_INBUF : STD_LOGIC; 
  signal data_out_5_O : STD_LOGIC; 
  signal data_out_26_O : STD_LOGIC; 
  signal data_out_18_O : STD_LOGIC; 
  signal data_in_1_INBUF : STD_LOGIC; 
  signal data_out_6_O : STD_LOGIC; 
  signal data_out_27_O : STD_LOGIC; 
  signal data_out_19_O : STD_LOGIC; 
  signal data_in_10_INBUF : STD_LOGIC; 
  signal data_in_2_INBUF : STD_LOGIC; 
  signal data_out_7_O : STD_LOGIC; 
  signal data_out_28_O : STD_LOGIC; 
  signal data_in_11_INBUF : STD_LOGIC; 
  signal data_in_3_INBUF : STD_LOGIC; 
  signal data_out_8_O : STD_LOGIC; 
  signal data_out_29_O : STD_LOGIC; 
  signal data_in_20_INBUF : STD_LOGIC; 
  signal data_in_12_INBUF : STD_LOGIC; 
  signal data_in_4_INBUF : STD_LOGIC; 
  signal data_out_9_O : STD_LOGIC; 
  signal data_in_21_INBUF : STD_LOGIC; 
  signal data_in_13_INBUF : STD_LOGIC; 
  signal data_in_5_INBUF : STD_LOGIC; 
  signal data_in_30_INBUF : STD_LOGIC; 
  signal data_in_22_INBUF : STD_LOGIC; 
  signal data_in_14_INBUF : STD_LOGIC; 
  signal data_in_6_INBUF : STD_LOGIC; 
  signal data_in_31_INBUF : STD_LOGIC; 
  signal data_in_23_INBUF : STD_LOGIC; 
  signal data_in_15_INBUF : STD_LOGIC; 
  signal data_in_7_INBUF : STD_LOGIC; 
  signal data_in_24_INBUF : STD_LOGIC; 
  signal data_in_16_INBUF : STD_LOGIC; 
  signal data_in_8_INBUF : STD_LOGIC; 
  signal data_in_25_INBUF : STD_LOGIC; 
  signal data_in_17_INBUF : STD_LOGIC; 
  signal data_in_9_INBUF : STD_LOGIC; 
  signal data_in_26_INBUF : STD_LOGIC; 
  signal data_in_18_INBUF : STD_LOGIC; 
  signal data_in_27_INBUF : STD_LOGIC; 
  signal data_in_19_INBUF : STD_LOGIC; 
  signal data_in_28_INBUF : STD_LOGIC; 
  signal data_in_29_INBUF : STD_LOGIC; 
  signal verif_10_OUTPUT_OFF_O1INV_328 : STD_LOGIC; 
  signal verif_11_OUTPUT_OFF_O1INV_336 : STD_LOGIC; 
  signal verif_20_OUTPUT_OFF_O1INV_344 : STD_LOGIC; 
  signal verif_12_OUTPUT_OFF_O1INV_352 : STD_LOGIC; 
  signal verif_21_OUTPUT_OFF_O1INV_360 : STD_LOGIC; 
  signal verif_13_OUTPUT_OFF_O1INV_368 : STD_LOGIC; 
  signal verif_30_OUTPUT_OFF_O1INV_376 : STD_LOGIC; 
  signal verif_22_OUTPUT_OFF_O1INV_384 : STD_LOGIC; 
  signal verif_14_OUTPUT_OFF_O1INV_392 : STD_LOGIC; 
  signal verif_31_OUTPUT_OFF_O1INV_400 : STD_LOGIC; 
  signal verif_23_OUTPUT_OFF_O1INV_408 : STD_LOGIC; 
  signal verif_15_OUTPUT_OFF_O1INV_416 : STD_LOGIC; 
  signal verif_24_OUTPUT_OFF_O1INV_424 : STD_LOGIC; 
  signal verif_16_OUTPUT_OFF_O1INV_432 : STD_LOGIC; 
  signal verif_25_OUTPUT_OFF_O1INV_440 : STD_LOGIC; 
  signal verif_17_OUTPUT_OFF_O1INV_448 : STD_LOGIC; 
  signal verif_26_OUTPUT_OFF_O1INV_456 : STD_LOGIC; 
  signal verif_18_OUTPUT_OFF_O1INV_464 : STD_LOGIC; 
  signal verif_27_OUTPUT_OFF_O1INV_472 : STD_LOGIC; 
  signal verif_19_OUTPUT_OFF_O1INV_480 : STD_LOGIC; 
  signal verif_28_OUTPUT_OFF_O1INV_488 : STD_LOGIC; 
  signal verif_29_OUTPUT_OFF_O1INV_496 : STD_LOGIC; 
  signal verif_0_OUTPUT_OFF_O1INV_504 : STD_LOGIC; 
  signal verif_1_OUTPUT_OFF_O1INV_512 : STD_LOGIC; 
  signal verif_2_OUTPUT_OFF_O1INV_520 : STD_LOGIC; 
  signal verif_3_OUTPUT_OFF_O1INV_528 : STD_LOGIC; 
  signal verif_4_OUTPUT_OFF_O1INV_536 : STD_LOGIC; 
  signal verif_5_OUTPUT_OFF_O1INV_544 : STD_LOGIC; 
  signal verif_6_OUTPUT_OFF_O1INV_552 : STD_LOGIC; 
  signal verif_7_OUTPUT_OFF_O1INV_560 : STD_LOGIC; 
  signal verif_8_OUTPUT_OFF_O1INV_568 : STD_LOGIC; 
  signal verif_9_OUTPUT_OFF_O1INV_576 : STD_LOGIC; 
begin
  verif_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD58"
    )
    port map (
      I => verif_10_O,
      O => verif(10)
    );
  verif_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD43"
    )
    port map (
      I => verif_11_O,
      O => verif(11)
    );
  verif_20_OBUF : X_OBUF
    generic map(
      LOC => "PAD56"
    )
    port map (
      I => verif_20_O,
      O => verif(20)
    );
  verif_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD49"
    )
    port map (
      I => verif_12_O,
      O => verif(12)
    );
  verif_21_OBUF : X_OBUF
    generic map(
      LOC => "PAD37"
    )
    port map (
      I => verif_21_O,
      O => verif(21)
    );
  verif_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD89"
    )
    port map (
      I => verif_13_O,
      O => verif(13)
    );
  verif_30_OBUF : X_OBUF
    generic map(
      LOC => "PAD18"
    )
    port map (
      I => verif_30_O,
      O => verif(30)
    );
  verif_22_OBUF : X_OBUF
    generic map(
      LOC => "PAD92"
    )
    port map (
      I => verif_22_O,
      O => verif(22)
    );
  verif_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD91"
    )
    port map (
      I => verif_14_O,
      O => verif(14)
    );
  verif_31_OBUF : X_OBUF
    generic map(
      LOC => "PAD68"
    )
    port map (
      I => verif_31_O,
      O => verif(31)
    );
  verif_23_OBUF : X_OBUF
    generic map(
      LOC => "PAD29"
    )
    port map (
      I => verif_23_O,
      O => verif(23)
    );
  verif_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD99"
    )
    port map (
      I => verif_15_O,
      O => verif(15)
    );
  verif_24_OBUF : X_OBUF
    generic map(
      LOC => "PAD103"
    )
    port map (
      I => verif_24_O,
      O => verif(24)
    );
  verif_16_OBUF : X_OBUF
    generic map(
      LOC => "PAD33"
    )
    port map (
      I => verif_16_O,
      O => verif(16)
    );
  verif_25_OBUF : X_OBUF
    generic map(
      LOC => "PAD55"
    )
    port map (
      I => verif_25_O,
      O => verif(25)
    );
  verif_17_OBUF : X_OBUF
    generic map(
      LOC => "PAD101"
    )
    port map (
      I => verif_17_O,
      O => verif(17)
    );
  verif_26_OBUF : X_OBUF
    generic map(
      LOC => "PAD48"
    )
    port map (
      I => verif_26_O,
      O => verif(26)
    );
  verif_18_OBUF : X_OBUF
    generic map(
      LOC => "PAD63"
    )
    port map (
      I => verif_18_O,
      O => verif(18)
    );
  verif_27_OBUF : X_OBUF
    generic map(
      LOC => "PAD106"
    )
    port map (
      I => verif_27_O,
      O => verif(27)
    );
  verif_19_OBUF : X_OBUF
    generic map(
      LOC => "PAD105"
    )
    port map (
      I => verif_19_O,
      O => verif(19)
    );
  verif_28_OBUF : X_OBUF
    generic map(
      LOC => "PAD11"
    )
    port map (
      I => verif_28_O,
      O => verif(28)
    );
  verif_29_OBUF : X_OBUF
    generic map(
      LOC => "PAD24"
    )
    port map (
      I => verif_29_O,
      O => verif(29)
    );
  verif_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD2"
    )
    port map (
      I => verif_0_O,
      O => verif(0)
    );
  verif_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD22"
    )
    port map (
      I => verif_1_O,
      O => verif(1)
    );
  verif_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD70"
    )
    port map (
      I => verif_2_O,
      O => verif(2)
    );
  verif_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD78"
    )
    port map (
      I => verif_3_O,
      O => verif(3)
    );
  verif_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD5"
    )
    port map (
      I => verif_4_O,
      O => verif(4)
    );
  verif_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD4"
    )
    port map (
      I => verif_5_O,
      O => verif(5)
    );
  verif_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD76"
    )
    port map (
      I => verif_6_O,
      O => verif(6)
    );
  verif_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD16"
    )
    port map (
      I => verif_7_O,
      O => verif(7)
    );
  verif_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD38"
    )
    port map (
      I => verif_8_O,
      O => verif(8)
    );
  verif_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD9"
    )
    port map (
      I => verif_9_O,
      O => verif(9)
    );
  data_out_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD64"
    )
    port map (
      I => data_out_10_O,
      O => data_out(10)
    );
  data_out_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD71"
    )
    port map (
      I => data_out_11_O,
      O => data_out(11)
    );
  data_out_20_OBUF : X_OBUF
    generic map(
      LOC => "PAD87"
    )
    port map (
      I => data_out_20_O,
      O => data_out(20)
    );
  data_out_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD98"
    )
    port map (
      I => data_out_12_O,
      O => data_out(12)
    );
  data_out_21_OBUF : X_OBUF
    generic map(
      LOC => "PAD39"
    )
    port map (
      I => data_out_21_O,
      O => data_out(21)
    );
  data_out_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD17"
    )
    port map (
      I => data_out_13_O,
      O => data_out(13)
    );
  data_out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD59"
    )
    port map (
      I => data_out_0_O,
      O => data_out(0)
    );
  data_out_30_OBUF : X_OBUF
    generic map(
      LOC => "PAD79"
    )
    port map (
      I => data_out_30_O,
      O => data_out(30)
    );
  data_out_22_OBUF : X_OBUF
    generic map(
      LOC => "PAD108"
    )
    port map (
      I => data_out_22_O,
      O => data_out(22)
    );
  data_out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD51"
    )
    port map (
      I => data_out_1_O,
      O => data_out(1)
    );
  data_out_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD45"
    )
    port map (
      I => data_out_14_O,
      O => data_out(14)
    );
  data_out_31_OBUF : X_OBUF
    generic map(
      LOC => "PAD31"
    )
    port map (
      I => data_out_31_O,
      O => data_out(31)
    );
  data_out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => data_out_2_O,
      O => data_out(2)
    );
  data_out_23_OBUF : X_OBUF
    generic map(
      LOC => "PAD10"
    )
    port map (
      I => data_out_23_O,
      O => data_out(23)
    );
  data_out_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD94"
    )
    port map (
      I => data_out_15_O,
      O => data_out(15)
    );
  data_out_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD25"
    )
    port map (
      I => data_out_3_O,
      O => data_out(3)
    );
  data_out_24_OBUF : X_OBUF
    generic map(
      LOC => "PAD21"
    )
    port map (
      I => data_out_24_O,
      O => data_out(24)
    );
  data_out_16_OBUF : X_OBUF
    generic map(
      LOC => "PAD75"
    )
    port map (
      I => data_out_16_O,
      O => data_out(16)
    );
  data_out_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD61"
    )
    port map (
      I => data_out_4_O,
      O => data_out(4)
    );
  data_out_25_OBUF : X_OBUF
    generic map(
      LOC => "PAD8"
    )
    port map (
      I => data_out_25_O,
      O => data_out(25)
    );
  data_out_17_OBUF : X_OBUF
    generic map(
      LOC => "PAD47"
    )
    port map (
      I => data_out_17_O,
      O => data_out(17)
    );
  data_in_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD57",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(0),
      O => data_in_0_INBUF
    );
  data_out_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD102"
    )
    port map (
      I => data_out_5_O,
      O => data_out(5)
    );
  data_out_26_OBUF : X_OBUF
    generic map(
      LOC => "PAD35"
    )
    port map (
      I => data_out_26_O,
      O => data_out(26)
    );
  data_out_18_OBUF : X_OBUF
    generic map(
      LOC => "PAD88"
    )
    port map (
      I => data_out_18_O,
      O => data_out(18)
    );
  data_in_1_IBUF : X_BUF
    generic map(
      LOC => "PAD52",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(1),
      O => data_in_1_INBUF
    );
  data_out_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD14"
    )
    port map (
      I => data_out_6_O,
      O => data_out(6)
    );
  data_out_27_OBUF : X_OBUF
    generic map(
      LOC => "PAD42"
    )
    port map (
      I => data_out_27_O,
      O => data_out(27)
    );
  data_out_19_OBUF : X_OBUF
    generic map(
      LOC => "PAD69"
    )
    port map (
      I => data_out_19_O,
      O => data_out(19)
    );
  data_in_10_IBUF : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(10),
      O => data_in_10_INBUF
    );
  data_in_2_IBUF : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(2),
      O => data_in_2_INBUF
    );
  data_out_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD96"
    )
    port map (
      I => data_out_7_O,
      O => data_out(7)
    );
  data_out_28_OBUF : X_OBUF
    generic map(
      LOC => "PAD54"
    )
    port map (
      I => data_out_28_O,
      O => data_out(28)
    );
  data_in_11_IBUF : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(11),
      O => data_in_11_INBUF
    );
  data_in_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD26",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(3),
      O => data_in_3_INBUF
    );
  data_out_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD1"
    )
    port map (
      I => data_out_8_O,
      O => data_out(8)
    );
  data_out_29_OBUF : X_OBUF
    generic map(
      LOC => "PAD28"
    )
    port map (
      I => data_out_29_O,
      O => data_out(29)
    );
  data_in_20_IBUF : X_BUF
    generic map(
      LOC => "IPAD86",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(20),
      O => data_in_20_INBUF
    );
  data_in_12_IBUF : X_BUF
    generic map(
      LOC => "IPAD100",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(12),
      O => data_in_12_INBUF
    );
  data_in_4_IBUF : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(4),
      O => data_in_4_INBUF
    );
  data_out_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD83"
    )
    port map (
      I => data_out_9_O,
      O => data_out(9)
    );
  data_in_21_IBUF : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(21),
      O => data_in_21_INBUF
    );
  data_in_13_IBUF : X_BUF
    generic map(
      LOC => "IPAD19",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(13),
      O => data_in_13_INBUF
    );
  data_in_5_IBUF : X_BUF
    generic map(
      LOC => "IPAD104",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(5),
      O => data_in_5_INBUF
    );
  data_in_30_IBUF : X_BUF
    generic map(
      LOC => "IPAD77",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(30),
      O => data_in_30_INBUF
    );
  data_in_22_IBUF : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(22),
      O => data_in_22_INBUF
    );
  data_in_14_IBUF : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(14),
      O => data_in_14_INBUF
    );
  data_in_6_IBUF : X_BUF
    generic map(
      LOC => "PAD15",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(6),
      O => data_in_6_INBUF
    );
  data_in_31_IBUF : X_BUF
    generic map(
      LOC => "PAD30",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(31),
      O => data_in_31_INBUF
    );
  data_in_23_IBUF : X_BUF
    generic map(
      LOC => "IPAD12",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(23),
      O => data_in_23_INBUF
    );
  data_in_15_IBUF : X_BUF
    generic map(
      LOC => "PAD93",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(15),
      O => data_in_15_INBUF
    );
  data_in_7_IBUF : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(7),
      O => data_in_7_INBUF
    );
  data_in_24_IBUF : X_BUF
    generic map(
      LOC => "IPAD23",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(24),
      O => data_in_24_INBUF
    );
  data_in_16_IBUF : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(16),
      O => data_in_16_INBUF
    );
  data_in_8_IBUF : X_BUF
    generic map(
      LOC => "IPAD3",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(8),
      O => data_in_8_INBUF
    );
  data_in_25_IBUF : X_BUF
    generic map(
      LOC => "PAD7",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(25),
      O => data_in_25_INBUF
    );
  data_in_17_IBUF : X_BUF
    generic map(
      LOC => "IPAD46",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(17),
      O => data_in_17_INBUF
    );
  data_in_9_IBUF : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(9),
      O => data_in_9_INBUF
    );
  data_in_26_IBUF : X_BUF
    generic map(
      LOC => "PAD34",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(26),
      O => data_in_26_INBUF
    );
  data_in_18_IBUF : X_BUF
    generic map(
      LOC => "IPAD90",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(18),
      O => data_in_18_INBUF
    );
  data_in_27_IBUF : X_BUF
    generic map(
      LOC => "IPAD41",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(27),
      O => data_in_27_INBUF
    );
  data_in_19_IBUF : X_BUF
    generic map(
      LOC => "IPAD67",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(19),
      O => data_in_19_INBUF
    );
  data_in_28_IBUF : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(28),
      O => data_in_28_INBUF
    );
  data_in_29_IBUF : X_BUF
    generic map(
      LOC => "IPAD27",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in(29),
      O => data_in_29_INBUF
    );
  verif_10_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD58",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_10_OUTPUT_OFF_O1INV_328,
      O => verif_10_O
    );
  verif_10_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD58",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_10_OUTPUT_OFF_O1INV_328
    );
  verif_11_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_11_OUTPUT_OFF_O1INV_336,
      O => verif_11_O
    );
  verif_11_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_11_OUTPUT_OFF_O1INV_336
    );
  verif_20_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD56",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_20_OUTPUT_OFF_O1INV_344,
      O => verif_20_O
    );
  verif_20_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD56",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_20_OUTPUT_OFF_O1INV_344
    );
  verif_12_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_12_OUTPUT_OFF_O1INV_352,
      O => verif_12_O
    );
  verif_12_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_12_OUTPUT_OFF_O1INV_352
    );
  verif_21_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_21_OUTPUT_OFF_O1INV_360,
      O => verif_21_O
    );
  verif_21_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_21_OUTPUT_OFF_O1INV_360
    );
  verif_13_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD89",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_13_OUTPUT_OFF_O1INV_368,
      O => verif_13_O
    );
  verif_13_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD89",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_13_OUTPUT_OFF_O1INV_368
    );
  verif_30_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_30_OUTPUT_OFF_O1INV_376,
      O => verif_30_O
    );
  verif_30_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_30_OUTPUT_OFF_O1INV_376
    );
  verif_22_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD92",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_22_OUTPUT_OFF_O1INV_384,
      O => verif_22_O
    );
  verif_22_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD92",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_22_OUTPUT_OFF_O1INV_384
    );
  verif_14_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_14_OUTPUT_OFF_O1INV_392,
      O => verif_14_O
    );
  verif_14_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_14_OUTPUT_OFF_O1INV_392
    );
  verif_31_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD68",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_31_OUTPUT_OFF_O1INV_400,
      O => verif_31_O
    );
  verif_31_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD68",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_31_OUTPUT_OFF_O1INV_400
    );
  verif_23_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD29",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_23_OUTPUT_OFF_O1INV_408,
      O => verif_23_O
    );
  verif_23_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD29",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_23_OUTPUT_OFF_O1INV_408
    );
  verif_15_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_15_OUTPUT_OFF_O1INV_416,
      O => verif_15_O
    );
  verif_15_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_15_OUTPUT_OFF_O1INV_416
    );
  verif_24_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_24_OUTPUT_OFF_O1INV_424,
      O => verif_24_O
    );
  verif_24_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_24_OUTPUT_OFF_O1INV_424
    );
  verif_16_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD33",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_16_OUTPUT_OFF_O1INV_432,
      O => verif_16_O
    );
  verif_16_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD33",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_16_OUTPUT_OFF_O1INV_432
    );
  verif_25_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD55",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_25_OUTPUT_OFF_O1INV_440,
      O => verif_25_O
    );
  verif_25_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD55",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_25_OUTPUT_OFF_O1INV_440
    );
  verif_17_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_17_OUTPUT_OFF_O1INV_448,
      O => verif_17_O
    );
  verif_17_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_17_OUTPUT_OFF_O1INV_448
    );
  verif_26_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_26_OUTPUT_OFF_O1INV_456,
      O => verif_26_O
    );
  verif_26_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_26_OUTPUT_OFF_O1INV_456
    );
  verif_18_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_18_OUTPUT_OFF_O1INV_464,
      O => verif_18_O
    );
  verif_18_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_18_OUTPUT_OFF_O1INV_464
    );
  verif_27_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_27_OUTPUT_OFF_O1INV_472,
      O => verif_27_O
    );
  verif_27_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_27_OUTPUT_OFF_O1INV_472
    );
  verif_19_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_19_OUTPUT_OFF_O1INV_480,
      O => verif_19_O
    );
  verif_19_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_19_OUTPUT_OFF_O1INV_480
    );
  verif_28_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD11",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_28_OUTPUT_OFF_O1INV_488,
      O => verif_28_O
    );
  verif_28_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD11",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_28_OUTPUT_OFF_O1INV_488
    );
  verif_29_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_29_OUTPUT_OFF_O1INV_496,
      O => verif_29_O
    );
  verif_29_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_29_OUTPUT_OFF_O1INV_496
    );
  verif_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD2",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_0_OUTPUT_OFF_O1INV_504,
      O => verif_0_O
    );
  verif_0_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD2",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_0_OUTPUT_OFF_O1INV_504
    );
  verif_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD22",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_1_OUTPUT_OFF_O1INV_512,
      O => verif_1_O
    );
  verif_1_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD22",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_1_OUTPUT_OFF_O1INV_512
    );
  verif_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_2_OUTPUT_OFF_O1INV_520,
      O => verif_2_O
    );
  verif_2_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_2_OUTPUT_OFF_O1INV_520
    );
  verif_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD78",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_3_OUTPUT_OFF_O1INV_528,
      O => verif_3_O
    );
  verif_3_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD78",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_3_OUTPUT_OFF_O1INV_528
    );
  verif_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD5",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_4_OUTPUT_OFF_O1INV_536,
      O => verif_4_O
    );
  verif_4_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD5",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_4_OUTPUT_OFF_O1INV_536
    );
  verif_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD4",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_5_OUTPUT_OFF_O1INV_544,
      O => verif_5_O
    );
  verif_5_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD4",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_5_OUTPUT_OFF_O1INV_544
    );
  verif_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_6_OUTPUT_OFF_O1INV_552,
      O => verif_6_O
    );
  verif_6_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_6_OUTPUT_OFF_O1INV_552
    );
  verif_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD16",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_7_OUTPUT_OFF_O1INV_560,
      O => verif_7_O
    );
  verif_7_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD16",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_7_OUTPUT_OFF_O1INV_560
    );
  verif_8_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_8_OUTPUT_OFF_O1INV_568,
      O => verif_8_O
    );
  verif_8_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_8_OUTPUT_OFF_O1INV_568
    );
  verif_9_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD9",
      PATHPULSE => 798 ps
    )
    port map (
      I => verif_9_OUTPUT_OFF_O1INV_576,
      O => verif_9_O
    );
  verif_9_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD9",
      PATHPULSE => 798 ps
    )
    port map (
      I => '0',
      O => verif_9_OUTPUT_OFF_O1INV_576
    );
  data_out_10_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD64",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_10_INBUF,
      O => data_out_10_O
    );
  data_out_11_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_11_INBUF,
      O => data_out_11_O
    );
  data_out_20_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD87",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_20_INBUF,
      O => data_out_20_O
    );
  data_out_12_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_12_INBUF,
      O => data_out_12_O
    );
  data_out_21_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_21_INBUF,
      O => data_out_21_O
    );
  data_out_13_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD17",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_13_INBUF,
      O => data_out_13_O
    );
  data_out_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD59",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_0_INBUF,
      O => data_out_0_O
    );
  data_out_30_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_30_INBUF,
      O => data_out_30_O
    );
  data_out_22_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_22_INBUF,
      O => data_out_22_O
    );
  data_out_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_1_INBUF,
      O => data_out_1_O
    );
  data_out_14_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_14_INBUF,
      O => data_out_14_O
    );
  data_out_31_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD31",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_31_INBUF,
      O => data_out_31_O
    );
  data_out_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD84",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_2_INBUF,
      O => data_out_2_O
    );
  data_out_23_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD10",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_23_INBUF,
      O => data_out_23_O
    );
  data_out_15_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_15_INBUF,
      O => data_out_15_O
    );
  data_out_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_3_INBUF,
      O => data_out_3_O
    );
  data_out_24_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD21",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_24_INBUF,
      O => data_out_24_O
    );
  data_out_16_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_16_INBUF,
      O => data_out_16_O
    );
  data_out_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_4_INBUF,
      O => data_out_4_O
    );
  data_out_25_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_25_INBUF,
      O => data_out_25_O
    );
  data_out_17_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_17_INBUF,
      O => data_out_17_O
    );
  data_out_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_5_INBUF,
      O => data_out_5_O
    );
  data_out_26_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD35",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_26_INBUF,
      O => data_out_26_O
    );
  data_out_18_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD88",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_18_INBUF,
      O => data_out_18_O
    );
  data_out_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_6_INBUF,
      O => data_out_6_O
    );
  data_out_27_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD42",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_27_INBUF,
      O => data_out_27_O
    );
  data_out_19_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD69",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_19_INBUF,
      O => data_out_19_O
    );
  data_out_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_7_INBUF,
      O => data_out_7_O
    );
  data_out_28_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_28_INBUF,
      O => data_out_28_O
    );
  data_out_8_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD1",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_8_INBUF,
      O => data_out_8_O
    );
  data_out_29_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_29_INBUF,
      O => data_out_29_O
    );
  data_out_9_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 798 ps
    )
    port map (
      I => data_in_9_INBUF,
      O => data_out_9_O
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

