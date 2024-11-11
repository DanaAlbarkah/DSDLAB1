`timescale 1ns / 1ps

module tb_FullAdder;

    // Declare testbench signals
    logic A, B, Cin;
    logic S, Cout;

    // Instantiate the FullAdder module
    FullAdder FA (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );

    // Initial block to apply test vectors and display results
    initial begin
        // Display header
        $display("Time\t A\t B\t Cin\t S\t Cout");
        $display("------------------------------");

        // Apply all test vectors and display results
        A = 0; B = 0; Cin = 0; #10;  // Test case 1
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, A, B, Cin, S, Cout);

        A = 0; B = 0; Cin = 1; #10;  // Test case 2
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, A, B, Cin, S, Cout);

        A = 0; B = 1; Cin = 0; #10;  // Test case 3
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, A, B, Cin, S, Cout);

        A = 0; B = 1; Cin = 1; #10;  // Test case 4
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, A, B, Cin, S, Cout);

        A = 1; B = 0; Cin = 0; #10;  // Test case 5
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, A, B, Cin, S, Cout);

        A = 1; B = 0; Cin = 1; #10;  // Test case 6
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, A, B, Cin, S, Cout);

        A = 1; B = 1; Cin = 0; #10;  // Test case 7
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, A, B, Cin, S, Cout);

        A = 1; B = 1; Cin = 1; #10;  // Test case 8
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, A, B, Cin, S, Cout);

        // End simulation
        $finish;
    end
endmodule
