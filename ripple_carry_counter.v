//--- File Name: ripple_carry_counter.v
//--- Author: randyjhc
//--- Date: 2015-10-02
module ripple_carry_counter
(
        q,
        clk,
        rst
);

output  [3:0]   q;
input           clk;
input           rst;

t_ff tff0(q[0], clk, rst);
t_ff tff1(q[1], clk, rst);
t_ff tff2(q[2], clk, rst);
t_ff tff3(q[3], clk, rst);

endmodule
