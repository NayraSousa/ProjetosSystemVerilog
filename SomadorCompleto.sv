module SomadorCompleto(
    input a, b, cin,
    output s, cout
);

    assign s1 = a ^ b;
    assign s = s1 ^ cin;
    assign sand1 = a & b;
    assign sand2 = a & cin;
    assign sand3 = b & cin;
    assign cout = sand1|sand2|sand3;
endmodule