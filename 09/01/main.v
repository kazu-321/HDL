module operation_test;
    reg [3:0] A, B; //4bit register
    initial begin
        A = 4'b0111; B = 4'b0101;
        $display("1) %b", A + B);
        $display("2) %b", A - B);
        $display("3) %b", A & B );
        $display("4) %b", A ^ B );
        $display("5) %b", A && B);
        $display("6) %b", A << 1 );
        $display("7) %b", ~A );
        $display("8) %b", &A);
        $display("9) %b", A == B );
        $display("10) %b", { A, B } );
        $display("11) %b", (A <= B) ? A : B );
        $finish;
    end
endmodule