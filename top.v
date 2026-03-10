module simple_4_mux(
    input [1:0] Sel,
  input [3:0] CEO, [7:4] SELF, [11:8] FRED, [15:12] JILL, Enable,
    output Y
);

  assign Y = (CEO & ~Sel[0] & ~Sel[1] |
              SELF &  Sel[0] & ~Sel[1] |
              FRED & ~Sel[0] &  Sel[1] |
              JILL &  Sel[0] &  Sel[1] |) & Enable;

endmodule
