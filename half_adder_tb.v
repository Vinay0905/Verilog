module half_add_tb;
reg a;
reg b;
 
wire s;
wire c;

half_add uut(
	.s(s),
	.c(c),
	.a(a),
	.b(b)
);


initial begin 
	a = 1'b0;
	b = 1'b0;
	#2 a=1'b0;b=1'b1;
	#2 a=1'b1;b=1'b0;
	#2 a=1'b1;b=1'b1;
end

	initial $monitor("time = %g,s=%b,c=%b,a=%b,b=%b",$time,s,c,a,b);
	initial #10 $finish;
endmodule 


