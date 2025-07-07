module DFF_test;
    reg CK, D;
    wire Q;
    DFF dff(CK, D, Q);
    always #10 CK = ~CK;    // クロック 10nsごとに反転
    initial begin
        $dumpfile("DFF_test.vcd");
        $dumpvars(0,DFF_test);
        CK = 0; D = 0;
        #0  CK = 1; CK = 0; // D値でQを初期化
        #24 D = 1;
        #24 D = 0;
        #24 D = 1;
        #24 D = 0;
        #24 $finish;
    end
endmodule