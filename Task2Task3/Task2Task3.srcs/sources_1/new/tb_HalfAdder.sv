`timescale 1ns / 1ps
module tb_HalfAdder;

// declare tb signals
logic A, B;
logic S, C;

HalfAdder H1(
.*
);

initial begin
$display("Time\t A\t B\t S\t C\t");

A=0; B=0; #10;
$display("%0t\t %b\t %b\t %b\t %b", $time, A, B, S, C );
A=0; B=1; #10;
$display("%0t\t %b\t %b\t %b\t %b", $time, A, B, S, C );
A=1; B=0; #10;
$display("%0t\t %b\t %b\t %b\t %b", $time, A, B, S, C );
A=1; B=1; #10;
$display("%0t\t %b\t %b\t %b\t %b", $time, A, B, S, C );
$finish;
end
endmodule 

