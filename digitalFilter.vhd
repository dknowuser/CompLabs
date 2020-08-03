----------------------------------------------------------------
-- WinFilter version 0.8
-- http://www.winfilter.20m.com
-- akundert@hotmail.com
--
-- FIR 31 Taps
-- Coefficents Quantization: 16-bit
-- Filter type: Band Pass
-- Filter model: Rectangular Window
-- Sampling Frequency: 1000 Hz
-- Fc1 and Fc2 Frequencies: 100.000000 Hz and 300.000000 Hz
--
-- Signal Resolution: 14-bit
-- Coefficients Quantization: 16-bit
-- 1 multiplier(s)
-- 584 FFs for the filter*
-- 512 FFs for the coefficients*
-- 32 clks output latency
-- 32000 Hz for Fclk
-- 1000 Hz for Fsampling
-- * May change with synthezis optimization
------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------
--  Component multiplier
--  signed multiplier
------------------------------------------------------------------------------------------------------------------------

library IEEE;
    use IEEE.std_logic_1164.all;
    use IEEE.std_logic_arith.all;

entity multiplier is
    Port (
        GLOBAL_CLK     : in std_logic;
        GLOBAL_RESET   : in std_logic;
        A              : in std_logic_vector;
        B              : in std_logic_vector;
        Q              : out std_logic_vector
    );
end multiplier;

architecture rtl of multiplier is

signal A_tmp : signed( A'length-1 downto 0 );
signal B_tmp : signed( B'length-1 downto 0 );
signal prod_tmp : signed( Q'length-1 downto 0 );

begin

assert Q'length = (A'length + B'length)
    report "multiplier: Q length must equal A + B length" severity error;

-- A to signed value conversion
A_pro : process(A)
begin
    for i in A'length-1 downto 0 loop
        A_tmp(i) <= A(i);
    end loop;
end process A_pro;

-- B to signed value conversion
B_pro : process( B )
begin

    for i in B'length-1 downto 0 loop
        B_tmp(i) <= B(i);
    end loop;
end process B_pro;

-- multiplication
prod_tmp <= A_tmp * B_tmp;

-- Registered output
prod_pro : process(GLOBAL_CLK, GLOBAL_RESET) begin
    if (GLOBAL_RESET = '1') then
       for i in Q'length-1 downto 0 loop
           Q(i) <= '0';
       end loop;
    elsif rising_edge(GLOBAL_CLK) then
       for i in Q'length-1 downto 0 loop
           Q(i) <= prod_tmp(i);
       end loop;
    end if;
end process prod_pro;

end rtl;

------------------------------------------------------------------------------------------------------------------------
--  Component fir
--  Filter Top Level
------------------------------------------------------------------------------------------------------------------------

library IEEE;
    use IEEE.std_logic_1164.all;
    use IEEE.std_logic_arith.all;
    use IEEE.std_logic_unsigned.all;

entity fir is
    generic (
       Coef_Width_g    : integer := 16;
       NTAP_g          : integer := 31
    );
    port (
       GLOBAL_CLK      : in std_logic;
       GLOBAL_RESET    : in std_logic;
       X_IN            : in std_logic_vector;
       NEW_SAMPLE      : out std_logic;
       SATURATION_ERR  : out std_logic;
       Y_OUT           : out std_logic_vector
	);
end fir;

architecture size of fir is

component multiplier is
    Port (
        GLOBAL_CLK     : in std_logic;
        GLOBAL_RESET   : in std_logic;
        A              : in std_logic_vector;
        B              : in std_logic_vector;
        Q              : out std_logic_vector
    );
end component;

constant CoefScalingBitDrop_c : integer := 16;

type DELAYARRAY is array (0 to NTAP_g - 1) of std_logic_vector(X_IN'length-1 downto 0);
signal DELAY    : DELAYARRAY;

type ROMARRAY is array (0 to NTAP_g) of std_logic_vector(Coef_Width_g-1 downto 0);
signal ROMDATA : ROMARRAY;
signal ROMARRAY_Mux : std_logic_vector(Coef_Width_g-1 downto 0);

signal PROD_i : std_logic_vector(X_IN'length+Coef_Width_g-1 downto 0);
signal PROD, Y_I : std_logic_vector(X_IN'length+Coef_Width_g+NTAP_g-1 - 1 downto 0);
signal TAP_Counter : integer range 0 to NTAP_g;
constant ShiftCount_c : integer := 1;

signal X_IN_reg : std_logic_vector(X_IN'length-1 downto 0);

constant zeros : std_logic_vector(Y_I'length-1 downto 0) := (others => '0');
constant ones  : std_logic_vector(Y_I'length-1 downto 0) := (others => '1');

begin

assert Y_OUT'length = X_IN'length
	report "fir: Y_OUT and X_IN must be the same length" severity error;

ROMDATA(0) <= x"0067";
ROMDATA(1) <= x"01c4";
ROMDATA(2) <= x"f5aa";
ROMDATA(3) <= x"f5f4";
ROMDATA(4) <= x"0311";
ROMDATA(5) <= x"ff98";
ROMDATA(6) <= x"fd07";
ROMDATA(7) <= x"107e";
ROMDATA(8) <= x"11aa";
ROMDATA(9) <= x"faa3";
ROMDATA(10) <= x"0068";
ROMDATA(11) <= x"072c";
ROMDATA(12) <= x"d4e3";
ROMDATA(13) <= x"c0b7";
ROMDATA(14) <= x"1e7f";
ROMDATA(15) <= x"67df";
ROMDATA(16) <= x"1e7f";
ROMDATA(17) <= x"c0b7";
ROMDATA(18) <= x"d4e3";
ROMDATA(19) <= x"072c";
ROMDATA(20) <= x"0068";
ROMDATA(21) <= x"faa3";
ROMDATA(22) <= x"11aa";
ROMDATA(23) <= x"107e";
ROMDATA(24) <= x"fd07";
ROMDATA(25) <= x"ff98";
ROMDATA(26) <= x"0311";
ROMDATA(27) <= x"f5f4";
ROMDATA(28) <= x"f5aa";
ROMDATA(29) <= x"01c4";
ROMDATA(30) <= x"0067";
ROMDATA(31) <= x"0000"; --dummy

-- IOs registers
process(GLOBAL_CLK, GLOBAL_RESET) begin
     if (GLOBAL_RESET = '1') then
        X_IN_reg        <= (others => '0');
        NEW_SAMPLE      <= '0';
        SATURATION_ERR  <= '0';
        Y_OUT           <= conv_std_logic_vector(0, Y_OUT'length);
     elsif rising_edge(GLOBAL_CLK) then
        X_IN_reg        <= X_IN;
        if TAP_Counter = ShiftCount_c then
            --update Y output
            NEW_SAMPLE		 <= '1';
        if Y_I( Y_I'length-1 downto CoefScalingBitDrop_c + Y_OUT'length - 1) = zeros(Y_I'length-1 - (CoefScalingBitDrop_c + Y_OUT'length - 1) downto 0)
        or Y_I( Y_I'length-1 downto CoefScalingBitDrop_c + Y_OUT'length - 1) =  ones(Y_I'length-1 - (CoefScalingBitDrop_c + Y_OUT'length - 1) downto 0) then
             SATURATION_ERR     <= '0';
             Y_OUT              <= Y_I(CoefScalingBitDrop_c + Y_OUT'length-1 downto CoefScalingBitDrop_c);
        else
            SATURATION_ERR     <= '1';
            if Y_I(Y_I'length-1) = '0' then
                --positive saturation
                Y_OUT    <= '0' & ones(Y_OUT'length-2 downto 0);
            else
                --negative saturation
                Y_OUT    <= '1' & zeros(Y_OUT'length-2 downto 0);
            end if;
         end if;
        else
            NEW_SAMPLE		 <= '0';
        end if;
    end if;
end process;

-- TAP_Counter process
process(GLOBAL_CLK, GLOBAL_RESET) begin
   if (GLOBAL_RESET = '1') then
       ROMARRAY_Mux <= (others => '0');
       TAP_Counter	<= 0;
   elsif rising_edge(GLOBAL_CLK) then
       ROMARRAY_Mux <= ROMDATA(TAP_Counter);
       if TAP_Counter	= NTAP_g then
           TAP_Counter <= 0;
       else
           TAP_Counter <= 	TAP_Counter + 1;
       end if;
    end if;
end process;

-- right shift registers
process(GLOBAL_CLK, GLOBAL_RESET) begin
     if (GLOBAL_RESET = '1') then
        for i in 0 to NTAP_g-1 loop
            DELAY(i) <= (others => '0');
        end loop;
     elsif rising_edge(GLOBAL_CLK) then
        for i in 1 to NTAP_g-1 loop
            DELAY(i) <= DELAY(i-1);
        end loop;
       if TAP_Counter = ShiftCount_c then
           DELAY(0)    <= X_IN_reg;
       else
           DELAY(0)    <= DELAY(NTAP_g-1);
       end if;

    end if;
end process;

-- multiplier instantiation
mult_inst : multiplier
port map(
	GLOBAL_CLK	=> GLOBAL_CLK,
	GLOBAL_RESET=> GLOBAL_RESET,
	A 			=> ROMARRAY_Mux,
	B 			=> DELAY(NTAP_g-2),
	Q			=> PROD_i
);

--sign extension
sign_ext_p : process(PROD_i) begin
	for i in 0 to PROD_i'length-1 loop
		PROD(i) <= PROD_i(i);
	end loop;
	for i in PROD_i'length to PROD'length-1 loop
		PROD(i) <= PROD_i(PROD_i'length-1);
	end loop;
end process sign_ext_p;

-- summation
process(GLOBAL_CLK, GLOBAL_RESET) begin
   if (GLOBAL_RESET = '1') then
       Y_I             <= (others => '0');
   elsif rising_edge(GLOBAL_CLK) then
       if TAP_Counter	= ShiftCount_c then
           Y_I             <= (others => '0');
       else
           Y_I             <=   (Y_I(Y_I'length-1) & Y_I(Y_I'length-2 downto 0) )
                            + (PROD(PROD'length-1) & PROD(PROD'length-2 downto 0) );
       end if;
   end if;
end process;

end size;
