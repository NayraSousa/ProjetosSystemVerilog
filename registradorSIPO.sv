module registradorSIPO(
    input logic clk, rst, din,
    output logic [3:0]dout
);

    logic[3:0] estAtual, estProx;

    always_ff @(posedge clk or posedge rst)
        begin
            if (rst == 1'b1)
                estAtual = 0;

            else 
                estAtual = estProx;
        end

    assign estProx = {estAtual[2:0], din};
    assign dout = estAtual;
endmodule