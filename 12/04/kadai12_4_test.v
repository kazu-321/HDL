module decode_test;
    reg [1:0] code;
    wire [3:0] data;

    decode24 e(code, data);   //対象回路名に適宜変更

    initial begin
    $monitor("%b -> %b", code, data);
        code = 2'b00;
    #10 code = 2'b01;
    #10 code = 2'b10;
    #10 code = 2'b11;
    #10 $finish;
    end
endmodule