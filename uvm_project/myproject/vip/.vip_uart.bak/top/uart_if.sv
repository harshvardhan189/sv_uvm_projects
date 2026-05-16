//----------------------------------------------------
// project : uart
// file : uart_if.sv
// description : UART interface containing basic
//               protocol level signals for async
//               serial communication
//----------------------------------------------------

interface uart_if ();

  //-------------------------------------------------
  // Signal Declarations
  //-------------------------------------------------

  logic tx;  // UART transmit serial line
  logic rx;  // UART receive serial line
  logic rst_n;  // Active low reset signal

endinterface : uart_if
