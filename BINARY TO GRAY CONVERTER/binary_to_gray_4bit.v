`timescale 1ns/1ps

module binary_to_gray_4bit (
    input  wire [3:0] binary,
    output wire [3:0] gray
);

    // Binary to Gray conversion
    assign gray[3] = binary[3];
    assign gray[2] = binary[3] ^ binary[2];
    assign gray[1] = binary[2] ^ binary[1];
    assign gray[0] = binary[1] ^ binary[0];

endmodule
