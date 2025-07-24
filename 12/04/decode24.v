module decode24 (
    input [1:0] code,
    output [3:0] data
);
    function [3:0] DEC;
        input [1:0] code;
        begin
            case (code)
                2'b00: DEC = 4'b0001; // 1
                2'b01: DEC = 4'b0010; // 2
                2'b10: DEC = 4'b0100; // 3
                2'b11: DEC = 4'b1000; // 4
                default: DEC = 4'b0000; // Default case
            endcase
        end
    endfunction
    assign data = DEC(code);
endmodule