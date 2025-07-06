`timescale 1ns/1ns
module kadai09_6_test;
reg [1:0] a,b;
wire [3:0] z;

kadai09_6_1 k(a,b,z);

initial begin
    $dumpfile("kadai09_6_test.vcd");
    $dumpvars(0,kadai09_6_test);
    $monitor("%t: a = %b, b = %b, z = %b", $time, a, b, z);
        a=2'b00; b=2'b00;
    #10 a=2'b01;
    #10 a=2'b10;
    #10 a=2'b11;
    #10 a=2'b00; b=2'b01;
    #10 a=2'b01;
    #10 a=2'b10;
    #10 a=2'b11;
    #10 a=2'b00; b=2'b10;
    #10 a=2'b01;
    #10 a=2'b10;
    #10 a=2'b11;
    #10 a=2'b00; b=2'b11;
    #10 a=2'b01;
    #10 a=2'b10;
    #10 a=2'b11;
    #10 $finish;
end
endmodule