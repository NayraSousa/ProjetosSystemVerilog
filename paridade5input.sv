module paridade5input(
    input logic a, b, c, d, e,
    output logic p
);
    
    assign p = a ^ b ^ c ^ d ^ e;

endmodule