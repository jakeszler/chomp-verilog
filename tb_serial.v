`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:59:22 01/09/2019 
// Design Name: 
// Module Name:    matrixmult_tb 
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
module tb_Serial;
//parameter widthbig = 127; 
//parameter width = 31;
parameter delay =10;
    // Inputs
    //reg signed [widthbig:0] A;
    //reg signed [widthbig:0] B;
	/* reg signed [width:0] res1;
	 reg signed [width:0] res2;
	 reg signed [width:0] res3;
	 reg signed [width:0] res4;*/
    // Outputs
   // wire signed [widthbig:0] Res;
	// wire signed [width:0] Res2;
	// reg signed [31:0]temp = 32'b1;
	
	reg clk = 0;
	reg rst = 0;
	reg new_rx_data =0; 
    wire signed[7:0] tx_data;
    wire new_tx_data;
    reg tx_busy;
    reg signed [7:0] rx_data;
	 reg new_tx_data_reg;
    assign new_tx_data = new_tx_data_reg;
    // Instantiate the Unit Under Test (UUT)
	 wire [7:0]ledout;
	 
  message_printer helloWorldPrinter (
    .clk(clk),
    .rst(rst),
    .tx_data(tx_data),
    .new_tx_data(new_tx_data),
    .tx_busy(tx_busy),
    .rx_data(rx_data),
    .new_rx_data(new_rx_data),
	 .ledout(ledout)
  );
	 
   
    initial begin
        // Apply Inputs
		  new_tx_data_reg = 1'b0; 
		  tx_busy = 1'b0;
		  rst = 1'b0;
		  new_rx_data = 1'b0;
		  rx_data = "h";
		  #20;
		  new_rx_data = 1'b1;
		  #delay;
		  new_rx_data = 1'b0;
		  rx_data = "9";
		  #delay;
		  new_rx_data = 1'b1;
		  #delay;
		  new_rx_data = 1'b0;
		  rx_data = "1";
		  #delay;
		  new_rx_data = 1'b1;
		  #delay;
		  new_rx_data = 1'b0;
		  rx_data = "2";
		  #delay;
		  new_rx_data = 1'b1;
		  #delay;
		  new_rx_data = 1'b0;
		  rx_data = "3";
		  #delay;
		  new_rx_data = 1'b1;
		  #delay;
		  new_rx_data = 1'b0;
		  rx_data = "0";
		  #delay;
		  new_rx_data = 1'b1;
		  #delay;
		  new_rx_data = 1'b0;
		  rx_data = "0";
		  #delay;
		  new_rx_data = 1'b1;
		  #delay;
		  new_rx_data = 1'b0;
		  rx_data = "0";
		  #delay;
		  new_rx_data = 1'b1;
		  #delay;
		  new_rx_data = 1'b0;
		  rx_data = "1";
		  #delay;
		  new_rx_data = 1'b1;
		  #delay;
		  new_rx_data = 1'b0;
		  rx_data = "g";
		  #delay;
		  new_rx_data = 1'b1;
		  #delay;
		  
		  #8000
		   new_tx_data_reg = 1'b0; 
		  tx_busy = 1'b0;
		  rst = 1'b0;
		  new_rx_data = 1'b0;
		  rx_data = "h";
		  #20;
		  new_rx_data = 1'b1;
		  #delay;
		  new_rx_data = 1'b0;
		  rx_data = "1";
		  #delay;
		  new_rx_data = 1'b1;
		  #delay;
		  new_rx_data = 1'b0;
		  rx_data = "8";
		  #delay;
		  new_rx_data = 1'b1;
		  #delay;
		  new_rx_data = 1'b0;
		  rx_data = "3";
		  #delay;
		  new_rx_data = 1'b1;
		  #delay;
		  new_rx_data = 1'b0;
		  rx_data = "4";
		  #delay;
		  new_rx_data = 1'b1;
		  #delay;
		  new_rx_data = 1'b0;
		  rx_data = "5";
		  #delay;
		  new_rx_data = 1'b1;
		  #delay;
		  new_rx_data = 1'b0;
		  rx_data = "6";
		  #delay;
		  new_rx_data = 1'b1;
		  #delay;
		  new_rx_data = 1'b0;
		  rx_data = "7";
		  #delay;
		  new_rx_data = 1'b1;
		  #delay;
		  new_rx_data = 1'b0;
		  rx_data = "8";
		  #delay;
		  new_rx_data = 1'b1;
		  #delay;
		  new_rx_data = 1'b0;
		  rx_data = "g";
		  #delay;
		  new_rx_data = 1'b1;
		  #delay;
		  
        /*A = {-32'd1,32'd2,32'd3,32'd4};
        B = {32'd1,32'd2 ,32'd3,32'd4};
		  #10;
        A = {-32'd2,32'd3,32'd3,32'd4};
        B = {32'd2,32'd3 ,32'd3,32'd4};*/
    end
 /*   always@ (A or B)
    begin
		//{res1, res2, res3,  res4} = Res;
		  temp = temp + 1;
	 	  A = {-32'd1,32'd2,32'd3,32'd4};
        B = {32'd1,32'd2 ,32'd3,temp};
		
	 end*/
	  always 
      #5  clk =  ! clk; 
endmodule
