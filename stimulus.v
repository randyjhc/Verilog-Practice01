//--- File Name: ripple_carry_counter.v
//--- Author: randyjhc
//--- Date: 2015-10-02
`timescale 1ns/1ps
module stimulus;

reg         clk;
reg         rst;

parameter   CLK_PERIOD = 10

//--- Desing under test
ripple_carry_counter r1(q, clk, rst);

//--- Test driver
initial
begin
clk = 0;
forever
    #(CLK_PERIOD/2) clk = ~clk;
end

initial
begin
rst = 1;
#15 rst = 0;
#180 rst = 1;
#10 rst = 0;
#20 $finish;
end

//--- Monitor
initial
begin
$monitor (%time, "output q = %d", q);
end

endmodule
