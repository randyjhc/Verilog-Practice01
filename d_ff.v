//--- File Name: d_ff.v
//--- Author: randyjhc
//--- Date: 2015-10-02
module d_ff
(
        q,
        d,
        clk,
        rst
);

output  q;
input   d;
input   clk;
input   rst;

reg     q;

always @ (negedge clk or posedge rst)
begin
        if (rst)        q <= 1'b0;
        else            q <= d;
end

endmodule
