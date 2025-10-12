/*******************************************************
Prepare by: Harshvardhan Thakor
Email: thakorharsh189@gmail.com
********************************************************
Counter Interface
Specification:
*******************************************************/

interface CounterInterface (
    input logic CLK
);
  logic COUNTER_ACTIVE;
  logic RESET_0;
  logic UP_DOWN;
  logic [3:0] DATA_IN;
  logic [3:0] DATA_OUT;
endinterface
