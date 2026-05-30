module test;

reg [7:0] A,B;
reg [2:0] Sel;
wire [7:0] Result;

alu_8bit uut(
    .A(A),
    .B(B),
    .Sel(Sel),
    .Result(Result)
);

initial begin
    $dumpfile("dump.vcd");  
    $dumpvars(0,test);       
    A = 8;
    B = 4;

    Sel = 3'b000; #10; // Add
    Sel = 3'b001; #10; // Sub
    Sel = 3'b010; #10; // AND
    Sel = 3'b011; #10; // OR
    Sel = 3'b100; #10; // XOR
    Sel = 3'b101; #10; // Left Shift
    Sel = 3'b110; #10; // Right Shift
    Sel = 3'b111; #10; // NOT

    $finish;
end

endmodule