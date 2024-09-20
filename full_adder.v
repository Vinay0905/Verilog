// Full Adder Design
module full_adder (
    input A, B, Cin,       // Inputs: A, B, and Carry-in (Cin)
    output Sum, Cout       // Outputs: Sum and Carry-out (Cout)
);

    assign Sum = A ^ B ^ Cin;    // XOR logic for sum
    assign Cout = (A & B) | (B & Cin) | (A & Cin);  // Logic for carry-out

endmodule

