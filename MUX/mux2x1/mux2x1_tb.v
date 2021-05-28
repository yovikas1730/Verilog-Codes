module testbench;
reg d1,d0,sel;
wire out;

mux DUT(d1,d0,sel, out);
initial begin
  $dumpfile("2x1mux.vcd");
  $dumpvars(0,testbench);
  $monitor($time , "d0=%b, d1=%b, sel=%b, out=%b", d0,d1,sel,out);
  #5 d0=0; d1=0; sel=0;
  #5 d0=0; d1=1; sel=0;
  #5 d0=1; d1=0; sel=0;
  #5 d0=1; d1=1; sel=1;
  #5 $finish;

end
endmodule
