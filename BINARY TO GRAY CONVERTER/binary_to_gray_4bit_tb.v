`timescale 1ns/1ps

module tb_binary_to_gray_4bit;

    reg  [3:0] binary;
    wire [3:0] gray;

    // Instantiate Binary-to-Gray converter
    binary_to_gray_4bit uut (
        .binary(binary),
        .gray(gray)
    );

    initial begin
        $monitor("Time = %0t | Binary = %b | Gray = %b",
                 $time, binary, gray);

        // Test all 16 possible inputs
        binary = 4'b0000; #10;
        binary = 4'b0001; #10;
        binary = 4'b0010; #10;
        binary = 4'b0011; #10;
        binary = 4'b0100; #10;
        binary = 4'b0101; #10;
        binary = 4'b0110; #10;
        binary = 4'b0111; #10;
        binary = 4'b1000; #10;
        binary = 4'b1001; #10;
        binary = 4'b1010; #10;
        binary = 4'b1011; #10;
        binary = 4'b1100; #10;
        binary = 4'b1101; #10;
        binary = 4'b1110; #10;
        binary = 4'b1111; #10;

        $finish;
    end

endmodule
