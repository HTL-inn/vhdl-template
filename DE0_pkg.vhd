-- Title: 
-- File: DE0_pkg.vhd
-- Author: 
-- Date: 
-- Description: Terasic DE0 board

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use ieee.math_real.all;

-- package

package DE0_pkg is
  -- DE0 clock
  constant DE0_clk_freq_c   : real      := 50.0E6;
  constant DE0_cycle_time_c : time      := 1.0 sec / DE0_clk_freq_c;
  
  -- emulated clock
  -- use for circuit demos on DE0
  constant em_clk_freq_c    : real      := 5.0;
  constant em_cycle_time_c  : time      := 1.0 sec / em_clk_freq_c;
  
  -- basic I/O
  constant leds_c           : natural   := 10#10#;
  constant digits_c         : natural   := 10#4#;
  constant switches_c       : natural   := 10#10#;
  constant buttons_c        : natural   := 10#3#;
  
  -- 7 segment display
  constant dp_c             : std_logic := '0';
  
  subtype hex_display_t is std_logic_vector(6 downto 0);
  type hex_display_array_t is array (0 to 15) of hex_display_t;
  
  constant hex_display_array_c : hex_display_array_t := (
    -- inverted logic on de0_board
    ("1000000"),  -- 0
    ("1111001"),  -- 1
    ("0100100"),  -- 2
    ("0110000"),  -- 3
    ("0011001"),  -- 4
    ("0010010"),  -- 5
    ("0000010"),  -- 6
    ("1111000"),  -- 7
    ("0000000"),  -- 8
    ("0010000"),  -- 9
    ("0001000"),  -- A
    ("1111100"),  -- b
    ("1000110"),  -- C
    ("0100001"),  -- d
    ("0000110"),  -- E
    ("0001110")   -- F
  );
end DE0_pkg;
