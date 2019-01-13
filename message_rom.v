`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:22:35 01/09/2019 
// Design Name: 
// Module Name:    message_rom 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module message_rom (
    input clk,
    input [7:0] addr,
    output [7:0] data,
	 input [31:0] valuetoprint,
	 output conversiondone,
	 input startconv	
  );
  //parameter DECIMAL_DIGITS = 4;
   localparam STATE_SIZE = 4;
  localparam IDLE = 0,
    PRINT_MESSAGE = 1,
	 STATE2 = 2,
	 STATE3 =3,
	 CALC = 4;
   localparam size = 32,
	numdigits =10;
  reg [STATE_SIZE-1:0] state_d, state_q;
  
  wire [7:0] rom_data [13:0];
 
  assign rom_data[0] = "H";
  assign rom_data[1] = "e";
  assign rom_data[2] = "l";
  assign rom_data[3] = "l";
  assign rom_data[4] = "o";
  assign rom_data[5] = " ";
  assign rom_data[6] = "W";
  assign rom_data[7] = "o";
  assign rom_data[8] = "r";
  assign rom_data[9] = "l";
  assign rom_data[10] = "d";
  assign rom_data[11] = "!";
  assign rom_data[12] = "!";
  assign rom_data[13] = "\n";
 
  reg [7:0] data_d, data_q =  7'b0;
  //reg [DECIMAL_DIGITS*4-1:0] digit_coverted;
  //reg doneconversion;
  assign data = data_q;
  wire [39:0] coverted;
  reg start = 1'b0;
  wire done;
  assign conversiondone = done;
 Binary_to_BCD #(.INPUT_WIDTH(size),.DECIMAL_DIGITS(numdigits)) binary_to_BCD (
    .i_Clock(clk),
    .i_Binary(valuetoprint),
    .i_Start(start),
    .o_BCD(coverted),
	 .o_DV(done)
  );
  always @(*) begin
		data_d = data_q;
		state_d = state_q;
		start = 1'b0;
/*    if (addr > 4'd2)
      data_d = " ";
    else if(addr == 4'd0)
      data_d = valuetoprint[7:0];//rom_data[addr];
	 else if(addr == 4'd1)
	   data_d = valuetoprint[15:8];//rom_data[addr];
	 else if(addr == 4'd2)
		data_d = {5'b0,valuetoprint[19:16]};*/
		
		case (state_q)
      IDLE: begin
		  if(startconv)
				start = 4'd1;
		  else
				start = 4'd0;
		  //count_d = 4'd0;
		  data_d = "-";
        if (done)begin
          state_d = STATE2;
			 start = 4'd0;
		  end
      end
		STATE2: begin
				if (addr < 4'd1) begin // might need to be 0
					data_d = "\n";
					end
			 else  begin
					  if (coverted[addr*4-1 -: 4] == 8'd0) begin
							data_d = "0";
						end
						else if (coverted[addr*4-1 -: 4] == 8'd1) begin
							data_d = "1";
						end
						else if (coverted[addr*4-1 -: 4] == 8'd2) begin
							data_d = "2";
						end
						else if (coverted[addr*4-1 -: 4] == 8'd3) begin
							data_d = "3";
						end
						else if (coverted[addr*4-1 -: 4] == 8'd4) begin
							data_d = "4";
						end
						else if (coverted[addr*4-1 -: 4] == 8'd5) begin
							data_d = "5";
						end
						else if (coverted[addr*4-1 -: 4] == 8'd6) begin
							data_d = "6";
						end
						else if (coverted[addr*4-1 -: 4] == 8'd7) begin
							data_d = "7";
						end
						else if (coverted[addr*4-1 -: 4] == 8'd8) begin
							data_d = "8";
						end
						else if (coverted[addr*4-1 -: 4] == 8'd9) begin
							data_d = "9";
						end							
						//data_d= coverted[addr*4-1 -: 4];
					if (!done && startconv) begin
						state_d = IDLE;
					end	
				end
			end
		  default: state_d = IDLE;
    endcase
		
		    
	// else begin
   //   data_d = rom_data[addr];
	// end
  end
 
  always @(posedge clk) begin
    state_q <= state_d;
	 data_q <= data_d;
	 
  end
 
endmodule