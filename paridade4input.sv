module paridade4input(
    input logic a, b, c, d,
    output logic p
);
    
    assign p = a ^ b ^ c ^ d;
    
endmodule