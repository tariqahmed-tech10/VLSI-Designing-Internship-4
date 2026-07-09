`timescale 1ns / 1ps

module traffic_light_tb;
   reg clk;
   reg reset;
   
   wire [2:0] light;

   traffic_light uut(
        .clk(clk),
        .reset(reset),
        .light(light)
   );

   initial begin 
       clk = 0;
       forever #5 clk = ~clk;
   end

   initial begin
       $dumpfile("traffic_light.vcd");
       $dumpvars(0, traffic_light_tb);

       reset = 1;
       #10;

       reset = 0;
     #100;

       $finish;
         
   end    

   initial begin
       $monitor("Time=0%t | Reset=%b | State=%b | Light Output=%b", $time, reset, uut.state, light);
   end

endmodule   