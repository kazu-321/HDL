module DFF_test;
    reg CK, D;
    wire Q;
    DFF dff(CK, D, Q);
    always #10 CK = ~CK;    // �N���b�N 10ns���Ƃɔ��]
    initial begin
        $dumpfile("DFF_test.vcd");
        $dumpvars(0,DFF_test);
        CK = 0; D = 0;
        #0  CK = 1; CK = 0; // D�l��Q��������
        #24 D = 1;
        #24 D = 0;
        #24 D = 1;
        #24 D = 0;
        #24 $finish;
    end
endmodule