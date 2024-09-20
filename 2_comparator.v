// 2-bit Comparator
module comparator_2bit(
    input [1:0] a,    // 2-bit input a
    input [1:0] b,    // 2-bit input b
    output reg a_gt_b, // a > b
    output reg a_lt_b, // a < b
    output reg a_eq_b  // a == b
);

always @(a or b) begin
    if (a > b) begin
        a_gt_b = 1;
        a_lt_b = 0;
        a_eq_b = 0;
    end else if (a < b) begin
        a_gt_b = 0;
        a_lt_b = 1;
        a_eq_b = 0;
    end else begin
        a_gt_b = 0;
        a_lt_b = 0;
        a_eq_b = 1;
    end
end

endmodule
