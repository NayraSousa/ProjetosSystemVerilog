module Somador4b(
    input logic[3:0] a, b,
    output logic [2:0] cout,
    output logic [3:0] s,
    output logic cout3
);

    assign s[0] = a[0] ^ b[0];
    assign cout[0] = a[0] & b[0];
    assign s[1] = a[1] ^ b[1] ^ cout[0];
    assign cout[1] = (a[1] & b[1])|(a[1] & cout[0])|(b[1] & cout[0]);
    assign s[2] = a[2] ^ b[2] ^ cout[1];
    assign cout[2] = (a[2] & b[2])|(a[2] & cout[1])|(b[2] & cout[1]);
    assign s[3] = a[3] ^ b[3] ^ cout [2];
    assign cout3 = (a[3] & b[3])|(a[3] & cout[2])|(b[3] & cout[2]);
endmodule