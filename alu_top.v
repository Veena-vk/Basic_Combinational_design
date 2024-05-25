//Integrating Data path and Control path

module top_module (
    input [3:0] A,
    input [3:0] B,
    input [1:0] Opcode,
    output [3:0] Result,
    output Zero
);

    wire [1:0] ALUOp;

    controlpath cp (
        .Opcode(Opcode),
        .ALUOp(ALUOp)
    );

    datapath dp (
        .A(A),
        .B(B),
        .ALUOp(ALUOp),
        .Result(Result),
        .Zero(Zero)
    );

endmodule
