module minterm (
    input A, B, C, D,
    output Y
);

assign Y = (~A & ~B & D) | (C & ~D) | (B & ~D); // Enter your equation here

endmodule
