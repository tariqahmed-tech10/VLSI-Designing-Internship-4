`timescale 1ns / 1ps

module moore_fsm_tb;

    reg clk;
    reg reset;

    wire [1:0] state;

    moore_fsm uut (
        .clk(clk),
        .reset(reset),
        .state(state)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $display("Time\tReset\tState (Output)");
        $display("------------------------------");
        $monitor("%0t\t  %b\t  %b", $time, reset, state);
    end

    initial begin
        $dumpfile("moore_fsm.vcd");
        $dumpvars(0, moore_fsm_tb);

        reset = 1;
        #15;

        reset = 0;
        
        #50;

        $finish;
    end


endmodule