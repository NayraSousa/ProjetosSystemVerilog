// module codificador(
//     input logic d1, d2, d3, d4, d5, d6, d7, d8,
//     output logic dout1, dout2, dout3, dout4, dout5, dout6, dout7, dout8, p4, p3, p2, p1
// );
//     assign p1 = d1 ^ d2 ^ d4 ^ d5 ^ d7;
//     assign p2 = d1 ^ d3 ^ d4 ^ d6 ^ d7;
//     assign p3 = d2 ^ d3 ^ d4 ^ d8;
//     assign p4 = d5 ^ d6 ^ d7 ^ d8;
//     assign dout1 = d1;
//     assign dout2 = d2;
//     assign dout3 = d3;
//     assign dout4 = d4;
//     assign dout5 = d5;
//     assign dout6 = d6;
//     assign dout7 = d7;
//     assign dout8 = d8;

module decodificador(
    input logic par1, par2, dig1, par3, dig2, dig3, dig4, par4, dig5, dig6, dig7, dig8,
    output logic dout1, dout2, dout3, dout4, dout5, dout6, dout7, dout8
);
    assign paridade1 = dig1 ^ dig2 ^ dig4 ^ dig5 ^ dig7;
    assign paridade2 = dig1 ^ dig3 ^ dig4 ^ dig6 ^ dig7;
    assign paridade3 = dig2 ^ dig3 ^ dig4 ^ dig8;
    assign paridade4 = dig5 ^ dig6 ^ dig7 ^ dig8;
    assign s4 = paridade4 ^ par4;
    assign s3 = paridade3 ^ par3;
    assign s2 = paridade2 ^ par2;
    assign s1 = paridade1 ^ par1;
    assign dout1 = (s1&s2&~s3&~s4) ^ dig1;
    assign dout2 = (~s1&~s2&s3&s4) ^ dig2;
    assign dout3 = (~s1&s2&s3&~s4) ^ dig3;
    assign dout4 = (s1&s2&s3&~s4) ^ dig4;
    assign dout5 = (s1&~s2&~s3&s4) ^ dig5;
    assign dout6 = (~s1&s2&~s3&s4) ^ dig6;
    assign dout7 = (s1&s2&~s3&s4) ^ dig7;
    assign dout8 = (~s1&~s2&s3&s4) ^ dig8;


endmodule