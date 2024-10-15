module comparator
#(
    parameter nb = 2 // Parameter - # of bits
)
(
    input wire [nb-1:0] A,
    input wire [nb-1:0] B,
    output wire G,
    output wire E,
    output wire L
);

    // Assign
    // assign G = A > B;
    assign G = A[1] & ~B[1] | A[1] & A[0] & ~B[0] | A[0] & ~B[1] & ~B[0];
    // assign E = A == B;
    assign E = ~A[1] & ~A[0] & ~B[1] & ~B[0] |
               ~A[1] & A[0] & ~B[1] & B[0] |
               A[1] & ~A[0] & B[1] & ~B[0] |
               A[1] & A[0] & B[1] & B[0];
    // assign L = A < B;
    assign L = ~A[1] & B[1] | ~A[1] & ~A[0] & B[0] | ~A[0] & B[1] & B[0];

endmodule