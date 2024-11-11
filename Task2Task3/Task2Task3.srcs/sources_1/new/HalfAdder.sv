`timescale 1ns / 1ps


module HalfAdder(
input A,
input B,
output S,
output C
    );
    //XOR gate for sum S
    xor(S,A,B);
    // AND Gate fot carry
    and(C,A,B);
endmodule
