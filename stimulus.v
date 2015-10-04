//--- File Name: ripple_carry_counter.v
//--- Author: randyjhc
//--- Date: 2015-10-02
module stimulus
(
	clk,
	rst,
	q
);

output	clk;
output	rst;
input	q;

//-- Parameters
parameter   CLK_PERIOD = 10;
reg			q;
reg			clk;
reg			rst;

//--- Monitor
initial
begin
$monitor ($time, "output q = %d", q);
end

//-- clock generator
initial
begin
clk = 0;
forever
    #(CLK_PERIOD/2) clk = ~clk;
end

//-- Test sequence
initial
begin
rst = 1;
#15 rst = 0;
#180 rst = 1;
#10 rst = 0;
#20 $finish;
end

endmodule
