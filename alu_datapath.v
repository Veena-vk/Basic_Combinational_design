//Datapath Design
module datapath (
    input [3:0] A,
    input [3:0] B,
    input [1:0] ALUOp,
    output reg [3:0] Result,
    output reg Zero
);

    always @(*) begin
        case (ALUOp)
            2'b00: Result = A + B;    // Addition
            2'b01: Result = A - B;    // Subtraction
            2'b10: Result = A & B;    // AND
            2'b11: Result = A | B;    // OR
            default: Result = 4'b0000;
        endcase
        
        // Set Zero flag if Result is zero
        if (Result == 4'b0000)
            Zero = 1'b1;
        else
            Zero = 1'b0;
    end
endmodule
