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
t_ff tff1(q[1], q[0], rst);
t_ff tff2(q[2], q[1], rst);
t_ff tff3(q[3], q[2], rst);

endmodule
