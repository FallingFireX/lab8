module top(
    input [15:0] sw,
    input btnL, btnU,
    input btnD, btnR,
    input btnC,
    output [15:0] led
);

wire [3:0] line;

mux4 M1(
    .ceo(sw[3:0]),
    .you(sw[7:4]),
    .fred(sw[11:8]),
    .jill(sw[15:12]),
    .sel({btnU, btnL}),
    .en(btnC),
    .out(line)
);

demux4 D1(
    .in(line),
    .sel({btnR, btnD}),
    .en(btnC),
    .library(led[3:0]),
    .fire(led[7:4]),
    .school(led[11:8]),
    .rib(led[15:12])
);

endmodule
