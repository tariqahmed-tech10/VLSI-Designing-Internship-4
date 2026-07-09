`timescale 1ns / 1ps
module mealy_fsm_tb;

   reg clk;
   reg reset;
   reg in;

   wire out;

   mealy_fsm uut(
       .clk(clk),
       .reset(reset),
       .in(in),
       .out(out)
   );

   initial begin
       clk = 0;
       forever #5 clk = ~clk;
   end

   initial begin
       $dumpfile("mealy_fsm.vcd");
       $dumpvars(0, mealy_fsm_tb);

       reset = 1;
       in= 0;

       #15 reset = 0;

       @(negedge clk) in = 1;
       @(negedge clk) in = 1;
       @(negedge clk) in = 0;
       @(negedge clk) in = 1;
       @(negedge clk) in = 0;

       #20 $finish;
   end

   initial begin
       $monitor("Time = 0%t | reset = %b | in = %b | state = %b | out = %b",
                $time, reset, in, uut.state, out);
   end

endmodule 