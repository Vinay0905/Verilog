module half_sub_tb;
reg a;
reg b;
 
wire d;
wire bo;

half_sub uut(
	.d(d),
	.bo(bo),
	.a(a),
	.b(b)
);


initial begin 
	a = 0;
	b = 0;
	#2 a=1'b0;b=1'b1;
	#2 a=1'b1;b=1'b0;
	#2 a=1'b1;b=1'b1;
end

	initial $monitor("time = %g,d=%b,bo=%b,a=%b,b=%b",$time,d,bo,a,b);
	initial #10 $finish;
endmodule 


