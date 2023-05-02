library IEEE;
use IEEE.STD_LOGIC_1164.all;

use work.emp_framework_decl.all;
use work.emp_device_types.all;
use work.emp_slink_types.all;

package emp_project_decl is

  constant PAYLOAD_REV : std_logic_vector(31 downto 0) := X"12345678";

  -- Latency buffer size
  constant LB_ADDR_WIDTH : integer             := 10;

  -- Clock setup
  constant CLOCK_COMMON_RATIO : integer               := 36;
  constant CLOCK_RATIO        : integer               := 9;
  constant CLOCK_AUX_DIV      : clock_divisor_array_t := (18, 9, 4); -- Dividers of CLOCK_COMMON_RATIO * 40 MHz
   
  -- Only used by nullalgo   
  constant PAYLOAD_LATENCY : integer := 5;

  constant REGION_CONF : region_conf_array_t := (
       0  => kDummyRegion, -- service
       1  => (gty25, buf, no_fmt, buf, gty25),
       2  => (gty25, buf, no_fmt, buf, gty25),
       3  => (gty25, buf, no_fmt, buf, gty25),
       4  => kDummyRegion, -- tcds
       5  => (gty25, buf, no_fmt, buf, gty25),
       6  => (gty25, buf, no_fmt, buf, gty25),
       7  => (gty25, buf, no_fmt, buf, gty25),
       8  => (gty25, buf, no_fmt, buf, gty25),
       9  => (gty25, buf, no_fmt, buf, gty25),
       ------cross
       10  => (gty25, buf, no_fmt, buf, gty25),
       11  => (gty25, buf, no_fmt, buf, gty25),
       12  => (gty25, buf, no_fmt, buf, gty25),
       13  => (gty25, buf, no_fmt, buf, gty25),
       14 => kDummyRegion, -- not used in apollo
       15  => (gty25, buf, no_fmt, buf, gty25),
       16  => (gty25, buf, no_fmt, buf, gty25),
       17  => (gty25, buf, no_fmt, buf, gty25),
       18 => kDummyRegion, -- service
    others => kDummyRegion
    );

  -- Specify the slink quad using the corresponding region conf ID
  -- Specify slink channels to enable using the channel mask
  constant SLINK_CONF : slink_conf_array_t := (
    others      => kNoSlink
    );  
  
  
end emp_project_decl;

