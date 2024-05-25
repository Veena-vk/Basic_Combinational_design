//Control Path Design

module controlpath (
    input [1:0] Opcode,
    output reg [1:0] ALUOp
);

    always @(*) begin
        case (Opcode)
            2'b00: ALUOp = 2'b00;  // ADD operation
            2'b01: ALUOp = 2'b01;  // SUB operation
            2'b10: ALUOp = 2'b10;  // AND operation
            2'b11: ALUOp = 2'b11;  // OR operation
            default: ALUOp = 2'b00;
        endcase
    end
endmodule
