`timescale 1ns / 1 ns
`include "comparator.v"

module comparator_tb;

    reg [1:0] A;
    reg [1:0] B;
    wire G;
    wire E;
    wire L;

    comparator uut (
        A,
        B,
        G,
        E,
        L
    );

    initial begin
        $dumpfile("comparator_tb.vcd");
        $dumpvars(0, comparator_tb);

        {A, B} = 4'd0; #20;
        {A, B} = 4'd1; #20;
        {A, B} = 4'd2; #20;
        {A, B} = 4'd3; #20;
        {A, B} = 4'd4; #20;
        {A, B} = 4'd5; #20;
        {A, B} = 4'd6; #20;
        {A, B} = 4'd7; #20;
        {A, B} = 4'd8; #20;
        {A, B} = 4'd9; #20;
        {A, B} = 4'd10; #20;
        {A, B} = 4'd11; #20;
        {A, B} = 4'd12; #20;
        {A, B} = 4'd13; #20;
        {A, B} = 4'd14; #20;
        {A, B} = 4'd15; #20;

        $display("Testbench Completed");
    end

endmodule