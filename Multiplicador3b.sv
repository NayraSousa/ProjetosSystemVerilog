module Multiplicador3b(
    input logic [2:0]a, b,
    output logic [5:0]m,
    output logic ov
);
    logic [3:0]c;

    assign m[0] = a[0] & b[0];

    assign m[1] = (a[1] & b[0]) ^ (a[0] & b[1]);
    assign c[0] = (a[1] & b[0]) & (a[0] & b[1]);

    assign m[2] = (a[2] & b[0]) ^ (a[1] & b[1]) ^ (a[0] & b[2]) ^ c[0];
    assign c[1] = (a[2] & b[0]) & (a[1] & b[1]) & (a[0] & b[2]) & c[0];

    assign m[3] = (a[2] & b[2]) ^ (a[1] & b[2]) ^ c[1];
    assign c[2] = (a[2] & b[2]) & (a[1] & b[2]) & c[1];

    assign m[4] = (a[2] & b[2]) ^ c[2];
    assign ov = (a[2] & b[2]) & c[2];

    
endmodule