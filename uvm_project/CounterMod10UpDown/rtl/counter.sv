/*****************************************************
Prepare by: Harshvardhan Thakor
Email: thakorharsh189@gamil.com
******************************************************
This is a Counter Design
Specification:
      1.Asynchronous Counter
      2.Active Low RESET
      3.ACTIVE Up and Down
      4.MOD-10 Counter
******************************************************/

module counter (
    input wire COUNTER_ACTIVE,
    CLK_INC,
    CLK_DEC,
    RESET_0,
    UP_DOWN,
    input wire [3:0] DATA_IN,
    output reg [3:0] DATA_OUT
);

  always @(posedge CLK_INC or negedge RESET_0) begin
    if (~RESET_0) begin
      DATA_OUT <= 0;
    end else if (COUNTER_ACTIVE && DATA_IN <= 'd9) begin
      DATA_OUT <= DATA_IN;
      if (UP_DOWN) begin
        DATA_OUT <= DATA_IN + 1;
      end else begin
        DATA_OUT <= DATA_IN - 1;
      end
    end else if (DATA_IN > 'd9) begin
      DATA_OUT <= 'b0;
    end else if (DATA_IN < 'd0) begin
      DATA_OUT <= 'd9;
    end else begin
      DATA_OUT <= DATA_IN;
    end
  end

  always @(posedge CLK_DEC or negedge RESET_0) begin
    if (~RESTE_0) begin
    end
  end
endmodule
