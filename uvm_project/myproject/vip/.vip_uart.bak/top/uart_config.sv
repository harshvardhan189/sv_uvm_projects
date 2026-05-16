//----------------------------------------------------
// project : uart
// file : uart_config.sv
// description : UART configuration class containing
//               agent behavior and protocol
//               configuration parameters
//----------------------------------------------------

`ifndef UART_CONFIG_SV
`define UART_CONFIG_SV

//-------------------------------------------------
// Enumerations
//-------------------------------------------------

typedef enum {
  UART_MASTER,
  UART_SLAVE
} uart_agent_mode_e;

typedef enum {
  UART_PARITY_NONE,
  UART_PARITY_EVEN,
  UART_PARITY_ODD
} uart_parity_e;

typedef enum {
  UART_STOP_1,
  UART_STOP_1_5,
  UART_STOP_2
} uart_stop_bits_e;


typedef enum logic [2:0] {
  IDLE,
  START_BIT,
  DATA,
  PARITY,
  STOP_BIT
} uart_state_e;

//-------------------------------------------------
// Configuration Class
//-------------------------------------------------

class uart_config extends uvm_object;

  `uvm_object_utils(uart_config)

  //-------------------------------------------------
  // Agent Configuration
  //-------------------------------------------------

  uvm_active_passive_enum is_active;  // Defines agent active or passive mode
  uart_agent_mode_e       agent_mode;  // Defines master or slave behavior

  //-------------------------------------------------
  // Protocol Configuration
  //-------------------------------------------------
  parameter DATA_SIZE = 8;
  parameter CLK_WIDTH = 5;
  int              bit_period                                          = 10;
  int unsigned     baud_rate;  // UART baud rate value
  int unsigned     data_bits;  // Number of data bits (5-8)
  bit              parity_enable;  // Parity enable flag
  uart_parity_e    parity_type;  // Parity type selection
  uart_stop_bits_e stop_bits;  // Stop bit configuration
  uart_state_e     state;
  virtual uart_if  vif;  // Virtual interface handle to UART interface


  //-------------------------------------------------
  // Constructor
  //-------------------------------------------------

  //---------------------------------------
  // Method : new
  // argument : string name - instance name
  // description : Constructor for uart_config.
  //---------------------------------------
  function new(string name = "uart_config");
    super.new(name);
  endfunction : new

endclass : uart_config

`endif
