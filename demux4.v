module demux4(
    input [3:0] in,
    input [1:0] sel,
    input en,
    output [3:0] local_lib,
    output [3:0] fire,
    output [3:0] school,
    output [3:0] rib
);

assign local_lib = (en && sel == 2'b00) ? in : 4'b0000;
assign fire    = (en && sel == 2'b01) ? in : 4'b0000;
assign school  = (en && sel == 2'b10) ? in : 4'b0000;
assign rib     = (en && sel == 2'b11) ? in : 4'b0000;

endmodule
