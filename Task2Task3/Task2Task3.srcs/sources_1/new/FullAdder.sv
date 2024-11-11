`timescale 1ns / 1ps

module FullAdder (
    input logic A,      // Input A
    input logic B,      // Input B
    input logic Cin,    // Carry-in input
    output logic S,     // Sum output
    output logic Cout   // Carry-out output
);

    // Internal signals for the first and second half adders
    logic S1, C1, C2;

    // First Half Adder (HA1)
    HalfAdder HA1 (
        .A(A),
        .B(B),
        .S(S1),       // Sum of A and B
        .C(C1)        // Carry from A and B
    );

    // Second Half Adder (HA2)
    HalfAdder HA2 (
        .A(S1),       // The sum of A and B
        .B(Cin),      // Carry-in
        .S(S),        // Final sum
        .C(C2)        // Carry from the sum of S1 and Cin
    );

    // Final carry-out is the OR of C1 and C2
    assign Cout = C1 | C2;

endmodule
