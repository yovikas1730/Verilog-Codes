module full_adder(a,b,c,s,cy);
input a,b,c;
output s,cy;
assign s = a ^ b ^ c;
assign cy = (a & b) | (c & b) | (a & c) ;
endmodule

