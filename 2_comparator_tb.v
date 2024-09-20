// Test Bench for 2-bit Comparator
module comparator_2bit_tb;

    // Inputs
    reg [1:0] a;
    reg [1:0] b;

    // Outputs
    wire a_gt_b;
    wire a_lt_b;
    wire a_eq_b;

    // Instantiate the Unit Under Test (UUT)
    comparator_2bit uut (
        .a(a), 
        .b(b), 
        .a_gt_b(a_gt_b), 
        .a_lt_b(a_lt_b), 
        .a_eq_b(a_eq_b)
    );

    initial begin
        // Initialize Inputs
        a = 2'b00; b = 2'b00; #10;
        a = 2'b01; b = 2'b00; #10;
        a = 2'b01; b = 2'b10; #10;
        a = 2'b11; b = 2'b10; #10;
        a = 2'b10; b = 2'b10; #10;
        a = 2'b00; b = 2'b11; #10;

        // Stop the simulation
        $stop;
    end

    // Monitor changes
    initial begin
        $monitor("Time = %0t | a = %b, b = %b | a_gt_b = %b, a_lt_b = %b, a_eq_b = %b", $time, a, b, a_gt_b, a_lt_b, a_eq_b);
    end

endmodule
