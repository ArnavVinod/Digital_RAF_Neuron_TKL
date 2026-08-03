`timescale 1ns/1ps

module tb_comparator8;

reg [7:0] a;
reg [7:0] b;

wire equal;
wire greater;
wire less;

comparator8 uut(
    .a(a),
    .b(b),
    .equal(equal),
    .greater(greater),
    .less(less)
);

initial begin

    a = 8'd10;
    b = 8'd20;

    #20;

    a = 8'd20;
    b = 8'd20;

    #20;

    a = 8'd40;
    b = 8'd20;

    #20;

    a = 8'd0;
    b = 8'd255;

    #20;

    $finish;

end

endmodule
