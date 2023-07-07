module RegistradorPISO (
  input wire clk,
  input wire reset,
  input wire enable,
  input wire [3:0] entrada_paralela,
  output wire saida_serial
);

  reg [3:0] registrador;

  always @(posedge clk or posedge reset) begin
    if (reset)
      registrador <= 4'b0000;
    else if (enable)
      registrador <= entrada_paralela;
  end

  reg [2:0] contador;
  always @(posedge clk or posedge reset) begin
    if (reset)
      contador <= 3'b000;
    else if (enable)
      contador <= contador + 1;
  end

  always @(posedge clk) begin
    if (contador == 3'b011)
      saida_serial <= registrador[0];
    else
      saida_serial <= registrador[contador + 1];
  end

endmodule
