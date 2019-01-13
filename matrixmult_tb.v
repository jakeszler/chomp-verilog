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
module tb;
parameter widthbig = 127; 
parameter width = 31;
    // Inputs
    reg signed [widthbig:0] A;
    reg signed [widthbig:0] B;
	/* reg signed [width:0] res1;
	 reg signed [width:0] res2;
	 reg signed [width:0] res3;
	 reg signed [width:0] res4;*/
    // Outputs
    wire signed [widthbig:0] Res;
	 wire signed [width:0] Res2;
	reg signed [31:0]temp = 32'b1;
	reg clk = 0;
    // Instantiate the Unit Under Test (UUT)
    Mat_mult uut (
        .A(A), 
        .B(B), 
        .Res(Res),
		  .Res2(Res2),
		  .clk(clk)
    );
	 

    initial begin
        // Apply Inputs
        A = 0;  B = 0;  #10;
        /*A = {-32'd1,32'd2,32'd3,32'd4};
        B = {32'd1,32'd2 ,32'd3,32'd4};
		  #10;
        A = {-32'd2,32'd3,32'd3,32'd4};
        B = {32'd2,32'd3 ,32'd3,32'd4};*/
    end
    always@ (A or B)
    begin
		//{res1, res2, res3,  res4} = Res;
		  temp = temp + 1;
	 	  A = {-32'd1,32'd2,32'd3,32'd4};
        B = {32'd1,32'd2 ,32'd3,temp};
		
	 end
	  always 
      #5  clk =  ! clk; 
endmodule
