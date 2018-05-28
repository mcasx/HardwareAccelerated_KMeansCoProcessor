library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
use ieee.numeric_std.all;

package projectPackage is
    --type REAL_array is array (integer range <>) of real;
    subtype point is signed(15 downto 0);
    type point_array is array (integer range <>) of point;
    type int_array is array (integer range<>) of integer;
end projectPackage; 

package body projectPackage is 

end projectPackage; 