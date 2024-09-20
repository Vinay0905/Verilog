// Testbench for Full Adder
module full_adder_tb;

    reg A, B, Cin;        // Inputs (reg type)
    wire Sum, Cout;       // Outputs (wire type)

    // Instantiate the Full Adder
    full_adder dut (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

    // Apply stimuli
    initial begin
        $monitor("A = %b, B = %b, Cin = %b | Sum = %b, Cout = %b", A, B, Cin, Sum, Cout);  // Display inputs and outputs
        
        // Test all possible input combinations
        A = 0; B = 0; Cin = 0; #10;    // Wait for 10 time units
        A = 0; B = 0; Cin = 1; #10;
        A = 0; B = 1; Cin = 0; #10;
        A = 0; B = 1; Cin = 1; #10;
        A = 1; B = 0; Cin = 0; #10;
        A = 1; B = 0; Cin = 1; #10;
        A = 1; B = 1; Cin = 0; #10;
        A = 1; B = 1; Cin = 1; #10;

        $finish;  // End simulation
    end

endmodule
