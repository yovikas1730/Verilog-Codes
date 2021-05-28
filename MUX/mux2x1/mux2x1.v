module mux2to1(d0, d1, sel, out); 
input d0, d1, sel;
output out;
assign out= (sel)? d1 : d0;
endmodule
