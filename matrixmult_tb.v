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
	reg signed [31:0]  divresult;
	reg signed [31:0] phasetocacl = 32'b1;
	reg start =0;
	wire donecos;
	wire signed [63:0] cossin;
	reg signed [31:0] cos;
	reg signed [31:0] sin;
	reg clk = 0;
    // Instantiate the Unit Under Test (UUT)
    Mat_mult uut (
        .A(A), 
        .B(B), 
        .Res(Res),
		  //.Res2(Res2),
		  .clk(clk)
    );
	 
	cossin trig (
  .aclk(clk), // input aclk
  .s_axis_phase_tvalid(start), // input s_axis_phase_tvalid
  .s_axis_phase_tdata(phasetocacl), // input [31 : 0] s_axis_phase_tdata
  .m_axis_dout_tvalid(donecos), // output m_axis_dout_tvalid
  .m_axis_dout_tdata(cossin) // output [63 : 0] m_axis_dout_tdata
		);
	reg signed [31:0]temp1= 32'd25000;
	 reg signed [31:0]temp2 = 32'd5;
	 	 reg signed go = 1'b0;
    integer i,j,k;
	 wire [63:0] divout;
	 wire valid;
			div divider (
  .aclk(clk), // input aclk
  .s_axis_divisor_tvalid(go), // input s_axis_divisor_tvalid
  .s_axis_divisor_tdata(temp2), // input [31 : 0] s_axis_divisor_tdata
  .s_axis_dividend_tvalid(go), // input s_axis_dividend_tvalid
  .s_axis_dividend_tdata(temp1), // input [31 : 0] s_axis_dividend_tdata
  .m_axis_dout_tvalid(valid), // output m_axis_dout_tvalid
  .m_axis_dout_tdata(divout) // output [63 : 0] m_axis_dout_tdata
		);	 

    initial begin
        // Apply Inputs
		  	 assign sin = cossin[31:0];
	 assign cos = cossin[63:32];
	 assign divresult = divout[63:32];
        A = 0;  B = 0;  #10;
        /*A = {-32'd1,32'd2,32'd3,32'd4};
        B = {32'd1,32'd2 ,32'd3,32'd4};
		  #10;
        A = {-32'd2,32'd3,32'd3,32'd4};
        B = {32'd2,32'd3 ,32'd3,32'd4};*/
		   start = 1'b1;
			go = 1'b1;
			#500 
			start = 1'b0;
			#10
			start = 1'b1;
			phasetocacl = 32'd88;
			
			
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
