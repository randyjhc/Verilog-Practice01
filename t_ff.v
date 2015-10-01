//--- File Name: ripple_carry_counter.v
//--- Author: randyjhc
//--- Date: 2015-10-02
module t_ff
(
        q,
        clk,
        rst
);

output  q;
input   clk;
input   rst;

wire    d;

d_ff dff0(q, d, clk, rst);
not n1(d, q);

endmodule
