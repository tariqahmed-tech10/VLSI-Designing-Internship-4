`timescale 1ns / 1ps

module sequence_detector_tb;
    reg clk;
    reg reset;
    reg in;

    wire detected;

    sequence_detector uut( 
         .clk(clk),
         .reset(reset),
         .in(in),
         .detected(detected)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("sequence_detector.vcd");
        $dumpvars(0, sequence_detector_tb);

        reset = 1;
        in = 0;

        #15 reset = 0;

        #10 in = 0;
        #10 in = 1;
        #10 in = 0;
        #10 in = 1;
        #10 in = 1;
        #10 in = 0;
        #10 in = 1;
        #10 in = 1;
        #10 in = 0;

        #20 $finish;
    end

    initial begin
        $monitor("Time=0%t | reset=%b | in=%b | State=%b | detected=%b", $time, reset, in, uut.state, detected);
    end

endmodule