module half_sub(output d,bo,input a,b);
assign d=a^b;
assign bo=(~a)&b;
endmodule

