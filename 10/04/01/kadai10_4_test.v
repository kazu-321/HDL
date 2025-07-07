module sample_test;
    reg [1:0] s;
    reg [7:0] a,b,c,d;
    wire [7:0] z;

    kadai10_4_1 f(s,a,b,c,d,z);
    
    initial begin
        a = 8'b0000_0000;
        b = 8'b0000_1111;
        c = 8'b1111_0000;
        d = 8'b1111_1111;
        s = 2'b00;
    #10 $display("a: %b", a );
        $display("b: %b", b );
        $display("c: %b", c );
        $display("d: %b", d );
        $display("s: %b z: %b", s, z );
    #10 s = 2'b01;
    #10 $display("s: %b z: %b", s, z );
    #10 s = 2'b10;
    #10 $display("s: %b z: %b", s, z );
    #10 s = 2'b11;
    #10 $display("s: %b z: %b", s, z );
    end
endmodule