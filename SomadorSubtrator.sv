module SomadorSubtrator(
    input logic [3:0]a, b,
    input logic sumsub,
    output logic [3:0] s,
    output logic ov
);

    logic [3:0] pxor;
    logic [3:0] cout;

    assign pxor[0] = sumsub ^ b[0];
    assign pxor[1] = sumsub ^ b[1];
    assign pxor[2] = sumsub ^ b[2];
    assign pxor[3] = sumsub ^ b[3];

    assign s[0] = a[0] ^ sumsub ^ pxor[0];
    assign cout[0] = (a[0] & pxor[0])|(a[0] & sumsub)|(pxor[0] & sumsub);

    assign s[1] = a[1] ^ cout[0] ^ pxor[1];
    assign cout[1] = (a[1] & pxor[1])|(a[1] & cout[0])|(pxor[1] & cout[0]);

    assign s[2] = a[2] ^ cout[1] ^ pxor[2];
    assign cout[2] = (a[2] & pxor[2])|(a[2] & cout[1])|(pxor[2] & cout[1]);

    assign s[3] = a[3] ^ cout[2] ^ pxor[3];
    assign cout[3] = (a[3] & pxor[3])|(a[3] & cout[2])|(pxor[3] & cout[2]);

    assign ov = cout[3] ^ cout[2];





    
endmodule