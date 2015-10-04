//--- File Name: top.v
//--- Author: randyjhc
//--- Date: 2015-10-04
`timescale 1ns/1ps

module top;

//-- Interconnect
wire	[3:0]	q;
wire			clk;
wire			rst;

//-- Dump File
initial
begin
$dumpfile("top.vcd")l
$dumpvars(0, top);
end

//--- Design under test
ripple_carry_counter r1(
	.q		(q[3:0]),
	.clk	(clk),
	.rst	(rst)
);

//--- Test driver
stimulus s1(
	.q		(q[3:0]),
	.clk	(clk),
	.rst	(rst)
);

endmodule
