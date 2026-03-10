module top(
    input [1:0] Sel,
    input  CEO,  SELF, FRED, JILL, Enable, sw[15:0],
    output Y
);
    
  assign Y = (CEO & ~Sel[0] & ~Sel[1] |
              SELF &  Sel[0] & ~Sel[1] |
              FRED & ~Sel[0] &  Sel[1] |
              JILL &  Sel[0] &  Sel[1] |) & Enable;

endmodule


