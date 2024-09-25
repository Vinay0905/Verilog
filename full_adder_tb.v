module full_add_tb;
reg a;
reg b;
reg c;
 
wire s;
wire co;

full_add uut(
	.s(s),
	.co(co),
	.a(a),
	.b(b),
	.c(c)
);


initial begin 
	{a,b,c}=3'b000;
	#2{a,b,c}=3'b001;
	#2{a,b,c}=3'b010;
	#2{a,b,c}=3'b011;
	#2{a,b,c}=3'b100;
	#2{a,b,c}=3'b101;
	#2{a,b,c}=3'b110;
	#2{a,b,c}=3'b111;
end

	initial $monitor("time = %g,s=%b,co=%b,a=%b,b=%b,c=%b",$time,s,co,a,b,c);
	initial #20 $finish;
endmodule 
