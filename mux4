module mux4(
    input [3:0] ceo,
    input [3:0] you,
    input [3:0] fred,
    input [3:0] jill,
    input [1:0] sel,
    input en,
    output [3:0] Y
);

assign Y =
    (en == 0) ? 4'b0000 :
    (sel == 2'b00) ? ceo :
    (sel == 2'b01) ? you :
    (sel == 2'b10) ? fred :
                     jill;

endmodule
