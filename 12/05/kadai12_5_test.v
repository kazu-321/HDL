module demux14_test;
    reg a;
    reg [1:0] s;
    wire [3:0] z;

    demux14 f(a,s,z);   //対象回路名に適宜変更

    initial begin
        a = 1'b1;
        s = 2'b00;
        $display("a: %b", a );
        $monitor("s: %b z: %b", s, z );
    #10 s = 2'b01;
    #10 s = 2'b10;
    #10 s = 2'b11;
    end
endmodule
