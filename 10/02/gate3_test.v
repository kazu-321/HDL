`timescale 1ns/1ns
module gate3_test;
reg a,b,c;
wire z;
kadai10_2 g(a,b,c,z);
initial begin
    $dumpfile("gate3_test.vcd");
    $dumpvars(0,gate3_test);
    $monitor("a = %b, b = %b, c = %b, z = %b", a, b, c, z);
        a=0; b=0; c=0;
    #10 c=1;
    #10 c=0; b=1;
    #10 c=1;
    #10 c=0; b=0; a=1; 
    #10 c=1;
    #10 c=0; b=1;
    #10 c=1;
    #10 $finish;
end
endmodule