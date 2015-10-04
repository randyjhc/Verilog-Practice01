//--- File Name: stimulus.v
//--- Author: randyjhc
//--- Date: 2015-10-02
module stimulus
(
	clk,
	rst,
	q
);

output			clk;
output			rst;
input	[3:0]	q;

//-- Parameters
parameter   CLK_PERIOD = 10;
reg			clk;
reg			rst;

//--- Monitor
initial
begin
$monitor ($time, "\toutput q = %d", q);
end

//-- Clock generator
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
