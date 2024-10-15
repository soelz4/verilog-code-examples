`timescale 1ns/1ns
`include "hello.v"

// Testbench for hello
module hello_tb;

    reg A;
    wire B;

    // Instantiate the hello Module
    hello uut (
        A,
        B
    );

    initial begin
        $dumpfile("hello_tb.vcd");
        $dumpvars(0, hello_tb);

        A = 0;
        #20

        A = 1;
        #20

        A = 1;
        #20

        A = 0;
        #20

        A = 1;
        #20

        $display("Testbench Completed");
    end

endmodule