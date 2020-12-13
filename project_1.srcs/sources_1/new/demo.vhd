LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
LIBRARY UNISIM;
USE UNISIM.VComponents.all;
ENTITY p1 IS
PORT (
SW : in STD_LOGIC_VECTOR(15 downto 0);
LED : out STD_LOGIC_VECTOR(15 downto 0)
);
end p1;
ARCHITECTURE behavior OF p1 IS
Signal led_int : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
BEGIN
LED <= led_int;
led_int(0) <= not(SW(0));
led_int(1) <= SW(1) and not(SW(2));
led_int(3) <= SW(2) and SW(3);
led_int(2) <= led_int(1) or led_int(3);
led_int(7 downto 4) <= SW(7 downto 4);
END behavior;