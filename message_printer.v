module message_printer (
    input clk,
    input rst,
    output [7:0] tx_data,
    output reg new_tx_data,
    input tx_busy,
    input [7:0] rx_data,
    input new_rx_data,
	 output [7:0] ledout
  );
  
  
   localparam NUMBEROFNUMBER = 4;
  localparam CDIM =5;
  
  localparam STATE_SIZE = 6;
  localparam IDLE = 0,
    PRINT_MESSAGE = 1,
	 STATE2 = 2,
	 STATE3 =3,
	 CALC = 4,
	 WAIT = 5,
	 CHECKNEG = 6,
	 STARTING =7,
	 XD_STATE = 8,
	 VEL_STATE = 9,
	 PRJ_STATE = 10,
	 OBS_STATE =11,
	 OBS_STATE_2 = 12,
	 STEP_STATE = 13,
	 UPDATE_STATE =14,
	 UPDATE_STATE_TRIG_1 =15,
	 UPDATE_STATE_TRIG_2 = 16,
	 UPDATE_STATE_TRIG_2_temp =17,
	 UPDATE_STATE_TRIG_3 = 18,
	 UPDATE_STATE_TRIG_3_temp= 19,
	 CALC_PREP= 20;
    
  //localparam MESSAGE_LEN = 10;
 
  reg [STATE_SIZE-1:0] state_d, state_q;
 
  reg signed[31:0] cyclecount_d, cyclecount_q;
  reg signed[7:0] addr_d, addr_q;
   reg [7:0] count_d,  count_q;

	  
  reg  [7:0] result = 8'b0;
  reg [7:0] amounttoprint_q, amounttoprint_d = 8'd1;
  wire [7:0] value;
  reg signed [31:0] number1_d,number1_q, number2_d,number2_q = 32'b0;
  reg signed [31:0] multresult_d, multresult_q = 32'b0;
  reg signed [31:0] valueToPrint_d, valueToPrint_q = 32'b0;
  reg signed[7:0] numbertemp;
  reg signed[7:0] numbers [NUMBEROFNUMBER-1:0];
  
  reg signed[31:0] AAinv [0:99][0:99];
  reg signed[31:0] BB [0:99];
  
   reg signed[31:0] BBsmall [0:4];
	
     reg signed[31:0] possmall [0:4];
	  reg signed[31:0] JJsmall_d  [0:9];
	  reg signed[31:0] JJsmall_q  [0:9];
	  
	  reg signed[31:0] position_a_d[0:1];
	  reg signed[31:0] position_a_q[0:1];
	  
	  reg signed[31:0] position_b_d[0:1];
	  reg signed[31:0] position_b_q[0:1];
	  
     reg signed[31:0] position_c_d[0:1];
	  reg signed[31:0] position_c_q[0:1];

	  
	  reg signed[31:0] position_a_old_d[0:1];
	  reg signed[31:0] position_a_old_q[0:1];
	  
	  reg signed[31:0] position_b_old_d[0:1];
	  reg signed[31:0] position_b_old_q[0:1];
	  
     reg signed[31:0] position_c_old_d[0:1];
	  reg signed[31:0] position_c_old_q[0:1];

  reg signed[31:0] xi [0:99];
  reg signed[31:0] nablaobs [0:99];
  
  reg signed[31:0] obs[0:1];
  

    reg signed[31:0] xx_d[0:1];
	 reg signed[31:0] xx_q[0:1];
  reg signed[31:0] nabla_smooth_d[0:4];
  reg signed[31:0] nabla_smooth_q[0:4];
  reg signed[31:0] qe[0:4];
  
  reg signed[31:0] qd_d[0:4];
  reg signed[31:0] qd_q[0:4];

  reg signed[31:0] xismall_d[0:4];
  reg signed[31:0] xismall_q[0:4];
  reg signed[31:0] vel_d;
  reg signed[31:0] vel_q;
  reg signed[31:0] xdsmall_d[0:1];
  reg signed[31:0] xdsmall_q[0:1];
  reg signed[31:0] xdn_d[0:1];
  reg signed[31:0] xdn_q[0:1];
  
  reg signed[31:0] prj_d[0:3];
  reg signed[31:0] prj_q[0:3];

  reg signed[31:0] delta_d[0:1];
  reg signed[31:0] delta_q[0:1];

  
  
  
  /* wire [320000-1:0]AA_flattened;
	integer k,l;
	for (k=0;k<32;k=k+1) begin
	for (l=0;l<32;l=l+1) begin
	assign AA_flattened[k*l] = AA[0][5];
	end
	end
	*/

	reg signed [18:0] phasetocalc_d = 18'b0;
	reg signed [18:0] phasetocalc_q = 18'b0;
   reg signed [18:0] phasetocalc_temp_d = 18'b0;
	reg signed [18:0] phasetocalc_temp_q = 18'b0;
	reg signed [23:0] phasetocalc_real = 24'b0;
	
	reg start_d =1'b0;
	reg start_q =1'b0;
	wire donecos;
	wire signed [31:0] cossin;
	reg signed [15:0] cos;
	reg signed [15:0] sin;
	
	reg [3:0] joint_d = 4'b1;
	reg [3:0] joint_q = 4'b1;
	
	cossin trig (
  .aclk(clk), // input aclk
  .s_axis_phase_tvalid(start_q), // input s_axis_phase_tvalid
  .s_axis_phase_tdata(phasetocalc_real), // input [23 : 0] s_axis_phase_tdata
  .m_axis_dout_tvalid(donecos), // output m_axis_dout_tvalid
  .m_axis_dout_tdata(cossin) // output [31 : 0] m_axis_dout_tdata
		);
	
	
	
	
	reg signed [15:0] norm_to_calc_d = 23'b0;
	reg signed [15:0] norm_to_calc_q = 23'b0;
	reg start_norm_d =1'b0;
	reg start_norm_q =1'b0;
	wire done_norm;
	wire signed [15:0] norm_result;
		
	reg signed [31:0] tempnumber0 = 32'b0;
		reg signed [31:0] tempnumber1 = 32'b0;
		
		sqrt norm (
  .aclk(aclk), // input aclk
  .s_axis_cartesian_tvalid(start_norm_q), // input s_axis_cartesian_tvalid
  .s_axis_cartesian_tdata(phasetocalc_real), // input [15 : 0] s_axis_cartesian_tdata
  .m_axis_dout_tvalid(done_norm), // output m_axis_dout_tvalid
  .m_axis_dout_tdata(norm_result) // output [15 : 0] m_axis_dout_tdata
);
/*		cossin your_instance_name (
  .aclk(aclk), // input aclk
  .s_axis_phase_tvalid(s_axis_phase_tvalid), // input s_axis_phase_tvalid
  .s_axis_phase_tready(s_axis_phase_tready), // output s_axis_phase_tready
  .s_axis_phase_tdata(s_axis_phase_tdata), // input [23 : 0] s_axis_phase_tdata
  .m_axis_dout_tvalid(m_axis_dout_tvalid), // output m_axis_dout_tvalid
  .m_axis_dout_tdata(m_axis_dout_tdata) // output [31 : 0] m_axis_dout_tdata
);*/
		
/*	div divider (
  .aclk(clk), // input aclk
  .s_axis_divisor_tvalid(go), // input s_axis_divisor_tvalid
  .s_axis_divisor_tdata(temp2), // input [31 : 0] s_axis_divisor_tdata
  .s_axis_dividend_tvalid(go), // input s_axis_dividend_tvalid
  .s_axis_dividend_tdata(temp1), // input [31 : 0] s_axis_dividend_tdata
  .m_axis_dout_tvalid(valid), // output m_axis_dout_tvalid
  .m_axis_dout_tdata(divout) // output [63 : 0] m_axis_dout_tdata
		);	 */
		
function [18:0] trunc_32_to_18(input [31:0] val32);
  trunc_32_to_18 = val32[18:0];
endfunction

		
  assign ledout = count_q;
  //assign ledout = result;
  wire conversiondone;
  reg startconv,startconv_q = 1'b0;
  reg isneg_q,isneg_d = 1'b0;
  reg flag = 1'b0;
  
  
  
  message_rom message_rom (
  .clk(clk),
  .addr(addr_q),
  .data(tx_data),
  .valuetoprint(valueToPrint_q),
  .conversiondone(conversiondone),
  .isneg(isneg_q),
  .startconv(startconv)
  );
  integer ii,i,j,k=0;
  integer counterinitAA=0;
  //int AAinvval =0;
  initial begin
	  for (i=0;i<100;i=i+1) begin
		 for (j=0;j<100;j=j+1)begin
		 //AA[i][j] = 32'd0;
		 end
		 BB[i] = 32'd0;
		 nablaobs[i] = 32'd0;
		 xi[i] = 32'd1;
	  end
	  
	   BB[0]= 32'd238000;
		BB[1]= 32'd238000;
		BB[2]= -32'd74000;
		BB[3]= -32'd74000;
		BB[4]= 32'd74000;
		BB[95]= -32'd333000;
		BB[96]= -32'd333000;
		BB[97]= 32'd74000;
		BB[98]= 32'd74000;
		BB[99]= -32'd74000;
		
		 qe[0]=32'b00000000000001110000000000000000;
		 qe[1]=32'b00000000000001110000000000000000;
		 qe[2]=32'b11111111111111100110110111100000; //-7
		 qe[3]=32'b11111111111111100110110111100000; //-7
		 qe[4]=32'b00000000000000011001001000100000; //-7
		 
		 BBsmall[0]=32'b11111111111111001000000000000000; //10000000000000111000000000000000
		 BBsmall[1]=32'b11111111111111001000000000000000;
		 BBsmall[2]=32'b00000000000000001100100100010000;
		 BBsmall[3]=32'b00000000000000001100100100010000;
		 BBsmall[4]=32'b11111111111111110011011011110000;
		 
		 possmall[0]=32'b0;
		 possmall[1]=32'b0;
		 possmall[2]=32'b0;
	    possmall[3]=32'b0;
		 possmall[4]=32'b0;
		 
		 JJsmall_d[0]={16'd1,16'b0};
		 JJsmall_d[1]=32'b0;
		 JJsmall_d[2]=32'b0;
	    JJsmall_d[3]={16'd0,16'b0};
		 JJsmall_d[4]=32'b0;
		 JJsmall_d[5]=32'b0;
		 JJsmall_d[6]={16'd1,16'b0};
		 JJsmall_d[7]=32'b0;
	    JJsmall_d[8]=32'b0;
		 JJsmall_d[9]=32'b0;
		 
		 JJsmall_q[0]={16'd1,16'b0};
		 JJsmall_q[1]=32'b0;
		 JJsmall_q[2]=32'b0;
	    JJsmall_q[3]={16'd0,16'b0};
		 JJsmall_q[4]=32'b0;
		 JJsmall_q[5]=32'b0;
		 JJsmall_q[6]={16'd1,16'b0};
		 JJsmall_q[7]=32'b0;
	    JJsmall_q[8]=32'b0;
		 JJsmall_q[9]=32'b0;
		 
		 position_a_d[0]=32'b0;
		 position_a_d[1]=32'b0;
		 position_b_d[0]={16'd1,16'b0};
       position_b_d[1]=32'b0;
       position_c_d[0]={16'd2,16'b0};
       position_c_d[1]=32'b0;
		 
		 position_a_old_d[0]=32'b0;
		 position_a_old_d[1]=32'b0;
		 position_b_old_d[0]={16'd1,16'b0};
       position_b_old_d[1]=32'b0;
       position_c_old_d[0]={16'd2,16'b0};
       position_c_old_d[1]=32'b0;
		 
		 position_a_old_q[0]=32'b0;
		 position_a_old_q[1]=32'b0;
		 position_b_old_q[0]={16'd1,16'b0};
       position_b_old_q[1]=32'b0;
       position_c_old_q[0]={16'd2,16'b0};
       position_c_old_q[1]=32'b0;

		 joint_d = 4'b1;
		 
		 qd_d[0]=32'b0;
		 qd_d[1]=32'b0;
		 qd_d[2]=32'b0;
		 qd_d[3]=32'b0;
		 qd_d[4]=32'b0;

		 xismall_d[0]=32'b0;
		 xismall_d[1]=32'b0;
		 xismall_d[2]=32'b0;
		 xismall_d[3]=32'b0;
		 xismall_d[4]=32'b0;
		 
		 xismall_q[0]=32'b0;
		 xismall_q[1]=32'b0;
		 xismall_q[2]=32'b0;
		 xismall_q[3]=32'b0;
		 xismall_q[4]=32'b0;
		 
		 xx_d[0] =32'b0;
		 xx_d[1] =32'b0;
		 
		 cyclecount_d =32'b0;
		 cyclecount_q =32'b0;
/*		for (ii=0; ii<100; ii=ii+1)
        begin
		     
		     AA[ii][ii] = 32'd95;
			  if(ii<95)
				AA[ii+5][ii] = -32'd47;
			  if(ii>5)
			    AA[ii-5][ii] = -32'd47;
			  
          //r_Data[ii] = ii*ii;
          //$display("Time %2d: r_Data at Index %1d is %2d", $time, ii, r_Data[ii]);
          //#10;
        end
		  AA[0][5] = -32'd47;*/
		  
		  /*for (ii=0; ii<100; ii=ii+1)
        begin
		     if(ii<4) begin
				  for (AAinvval = 20; AAinvval <20; AAinvval= AAinvval-1) begin
				  AAinvval = 20;
				  AA[ii][ii] = 32'd95; 
				  AAinvval = 20
				  end
			  end
			  if(ii<95)
				AA[ii+5][ii] = -32'd47;
			  if(ii>5)
			    AA[ii-5][ii] = -32'd47;
			  

        end*/
		  
		  for (k=0;k<100;k=k+1) begin
			    if(k>94) begin
				 nablaobs[k] = xi[k]*32'd95 +  xi[k-5]*-32'd47; end
			    else if(k<5)begin
			    nablaobs[k] = (xi[k]*32'd95) + (xi[k+5]*-32'd47); end
				 else begin
				 nablaobs[k] = (xi[k-5]*-32'd47)+ xi[k]*32'd95 + xi[k+5]*-32'd47; end
		  end
		  
		  obs[0] =  32'd3;
		  obs[1] =  32'd4;
		  //[-1320,  3480]  1 columb = 1 obs
        //[-1519,  4240]


  end
  
  always @(*) begin
    state_d = state_q; // default values
    addr_d = addr_q;   // needed to prevent latches
    new_tx_data = 1'b0;
	 startconv = startconv_q;
    count_d = count_q;
	 multresult_d = multresult_q;
	 numbertemp = numbers[count_q];
	 number1_d = number1_q;
	 number2_d = number1_q;
	 isneg_d = isneg_q;
	 valueToPrint_d = valueToPrint_q;
	 amounttoprint_d = amounttoprint_q;
	 
	 phasetocalc_d = phasetocalc_q;  //{4'b0, number1_q[31],number1_q[16:0]};
	 phasetocalc_temp_d = phasetocalc_temp_q;
	 cos = cossin[31:16];
	 sin = cossin[15:0];
	 
	 cyclecount_d =cyclecount_q;
	 
	 start_d =start_q;
	 joint_d= joint_q;
     
	 for (i=0; i<=1; i=i+1)
		begin
		 xx_d[i] = xx_q[i];
	    xdsmall_d[i] = xdsmall_q[i];
		 vel_d[i] = vel_q[i];
		 xdn_d[i] = xdn_q[i];
		 prj_d[i] = prj_q[i];
		 delta_d[i] = delta_q[i];
		end
	 for (i=0; i<=4; i=i+1)
		begin
		  xismall_d[i] = xismall_q[i];
		  nabla_smooth_d[i] = nabla_smooth_q[i];
		end
	 for (i=0; i<=9; i=i+1)
		begin
		  JJsmall_d[i] = JJsmall_q[i];
		end
	

	 
	 //numbertemp = 8'b0;
	 //multresult_d = 32'b0;
	 //number1_d = {numbers[3],numbers[2],numbers[1],numbers[0]};//32'b0;
    case (state_q)
		STARTING: begin
		
		state_d = IDLE;
		end
      IDLE: begin
			  for (k=0;k<100;k=k+1) begin
			    if(k==95 || k==96) begin
				 nablaobs[k] = (xi[k]*32'd95 +  xi[k-5]*-32'd47)- 32'd333000 ; end
				 else if(k==97 || k ==98) begin
				 nablaobs[k] = (xi[k]*32'd95 +  xi[k-5]*-32'd47)+ 32'd74000 ; end
				 else if(k==99) begin
				 nablaobs[k] = (xi[k]*32'd95 +  xi[k-5]*-32'd47)- 32'd74000 ; end
			    else if(k==0 || k ==1)begin
					nablaobs[k] = (xi[k]*32'd95 + xi[k+5]*-32'd47)+32'd238000; end
				 else if(k==2 || k ==3)begin
					nablaobs[k] = (xi[k]*32'd95 + xi[k+5]*-32'd47)-32'd74000; end
				 else if (k==4) begin
					nablaobs[k] = (xi[k]*32'd95 + xi[k+5]*-32'd47)+32'd74000; end				 
				 else begin
				 nablaobs[k] = (xi[k-5]*-32'd47)+ xi[k]*32'd95 + xi[k+5]*-32'd47; end
		  end
		  
			
		  
		  valueToPrint_d =nablaobs[99];
        addr_d = 4'd12;
		  count_d = 4'd0;
		  startconv = 1'b0;
		  multresult_d =32'b0;
		  isneg_d = 1'b0;
		  amounttoprint_d = 8'd1;
        if ( new_rx_data && rx_data == "h")
          state_d = STATE2;
      end
		STATE2: begin
			if ( new_rx_data && count_q < NUMBEROFNUMBER) begin

					numbertemp =rx_data;
					count_d = count_q +  8'd1;
					state_d = STATE2;
				end
				else if (NUMBEROFNUMBER <= count_q) begin
					count_d = count_q;
					state_d = STATE3;
				end

/*			if (rx_data == "0"&& new_rx_data && count_q < NUMBEROFNUMBER) begin
				numbertemp = 4'd0;
				count_d = count_q+ 8'd1;
				state_d = STATE2;
			end
			else if (rx_data == "1"&& new_rx_data && count_q < NUMBEROFNUMBER) begin
				numbertemp = 4'd1;
				count_d= count_q+ 8'd1;
				state_d = STATE2;
			end
			else if (rx_data == "2"&& new_rx_data && count_q < NUMBEROFNUMBER) begin
				numbertemp = 4'd2;
				count_d = count_q+ 8'd1;
				state_d = STATE2;
			end
			else if (rx_data == "3"&& new_rx_data && count_q < NUMBEROFNUMBER)  begin
				numbertemp = 4'd3;
				count_d = count_q+ 8'd1;
				state_d = STATE2;
			end
			else if (rx_data == "4"&& new_rx_data && count_q < NUMBEROFNUMBER) begin
				numbertemp = 4'd4;
				count_d = count_q+ 8'd1;
				state_d = STATE2;
			end
			else if (rx_data == "5"&& new_rx_data && count_q < NUMBEROFNUMBER) begin
				numbertemp = 4'd5;
				count_d = count_q+ 8'd1;
				state_d = STATE2;
			end
			else if (rx_data == "6"&& new_rx_data && count_q < NUMBEROFNUMBER)  begin
				numbertemp = 4'd6;
				count_d = count_q+ 8'd1;
				state_d = STATE2;
			end
			else if (rx_data == "7"&& new_rx_data && count_q < NUMBEROFNUMBER) begin
				numbertemp = 4'd7;
				count_d = count_q+ 8'd1;
				state_d = STATE2;
			end
			else if (rx_data == "8"&& new_rx_data && count_q < NUMBEROFNUMBER) begin
				numbertemp = 4'd8;
				count_d = count_q + 8'd1;
				state_d = STATE2;
			end
			else if (rx_data == "9"&& new_rx_data && count_q < NUMBEROFNUMBER)  begin
				numbertemp = 4'd9;
				count_d = count_q + 8'd1;
				state_d = STATE2;
			end
			else if (NUMBEROFNUMBER <= count_q) begin
				count_d = count_q;
				state_d = STATE3;

			end*/


			//else begin
			//	state_d = STATE2;
			//end
/*			else if(new_rx_data && count_q < NUMBEROFNUMBER)begin
				count_d = 8'd0;
				state_d = STATE2;
			end*/
		end
		STATE3: begin
		
			//if (new_rx_data && count< NUMBEROFNUMBER)
			//begin
			//count = count+ 1;
			//state_d = STATE2;
			//end
			//else if (count == NUMBEROFNUMBER)
			//begin

			//number1_d = numbers[0] *1000 + numbers[1] *100 +numbers[2] *10 +numbers[3];
			//number2_d = numbers[0] *1000 + numbers[1] *100 +numbers[2] *10 +numbers[3];
			number1_d = 32'b0;//{numbers[3],numbers[2],numbers[1],numbers[0]};
			number2_d = {numbers[3],numbers[2],numbers[1],numbers[0]};

			state_d = CALC_PREP;
			
			//state_d = CALC;
			//end
		end
		CALC_PREP: begin
		cyclecount_d = cyclecount_q +1'b1;
			if(joint_q == 4'd3) begin
			  xx_d[0] = position_c_q[0];
			  xx_d[1]= position_c_q[1];
			end
		  else if(joint_q == 4'd2) begin

			  xx_d[0] = position_b_q[0];
			  xx_d[1]= position_b_q[1];
			end
			else if(joint_q == 4'd1) begin
			  xx_d[0] = position_a_q[0];
			  xx_d[1]= position_a_q[1];
			end
		
		state_d = CALC;
		end
		CALC: begin

			//multresult_d = number1_q * number1_q;
	 nabla_smooth_d[0]=BBsmall[0]+xismall_q[0];
    nabla_smooth_d[1]=BBsmall[1]+xismall_q[1];
    nabla_smooth_d[2]=BBsmall[2]+xismall_q[2];
    nabla_smooth_d[3]=BBsmall[3]+xismall_q[3];
    nabla_smooth_d[4]=BBsmall[4]+xismall_q[4];
  
			qd_d[0] = qe[0]-xismall_q[0];
			qd_d[1] = qe[1]-xismall_q[1];
			qd_d[2] = qe[2]-xismall_q[2];
			qd_d[3] = qe[3]-xismall_q[3];
			qd_d[4] = qe[4]-xismall_q[4];
			
			JJsmall_d[0] = {16'b1,16'b0};
			JJsmall_d[6] = {16'b1,16'b0};
			if(joint_q == 4'd3) begin
			  JJsmall_d[4] = position_c_old_q[1] - xx_q[1];
			  JJsmall_d[9] = xx_q[0] - position_c_old_q[0];
			  JJsmall_d[3] = position_b_old_q[1] - xx_q[1];
			  JJsmall_d[8] = xx_q[0] - position_b_old_q[0];
			  JJsmall_d[2] = position_a_old_q[1] - xx_q[1];
			  JJsmall_d[7] = xx_q[0] - position_a_old_q[0];
			  //xx_d[0] = position_c_q[0];
			  //xx_d[1]= position_c_q[1];
			end
			else if(joint_q == 4'd2) begin
			  JJsmall_d[3] = position_b_old_q[1] - xx_q[1];
			  JJsmall_d[8] = xx_q[0] - position_b_old_q[0];
			  JJsmall_d[2] = position_a_old_q[1] - xx_q[1];
			  JJsmall_d[7] = xx_q[0] - position_a_old_q[0];
			  //xx_d[0] = position_b_q[0];
			  //xx_d[1]= position_b_q[1];
			end
			else if(joint_q == 4'd1) begin
			JJsmall_d[2] = position_a_old_q[1] - xx_q[1];
			  JJsmall_d[7] = xx_q[0] - position_a_old_q[0];
			  //xx_d[0] = position_a_q[0];
			  //xx_d[1]= position_a_q[1];
			end
			 //multresult_d = number1_q * 2;
          //result =  number1* number2;
         
			
			state_d = XD_STATE;
			//valueToPrint_d = 
			end
	   XD_STATE: begin
		
				xdsmall_d[0] =   qd_q[0]+(qd_q[2]*JJsmall_q[2])+(qd_q[3]*JJsmall_q[3]);
				xdsmall_d[1] =   qd_q[1]+(qd_q[2]*JJsmall_q[7])+(qd_q[3]*JJsmall_q[8]);
				state_d = VEL_STATE;
		end
		VEL_STATE: begin
				
				vel_d = xdsmall_q[0] +xdsmall_q[1];
				xdn_d[0] = xdsmall_q[0]>>2;
				xdn_d[1] = xdsmall_q[1]>>2;
				
				state_d = PRJ_STATE;
		end
		PRJ_STATE: begin
		
				prj_d[0] =   32'd1- xdn_q[0]*xdn_q[0];
				prj_d[1] =   -(xdn_q[0]*xdn_q[1]);
				prj_d[2] =   -(xdn_q[1]*xdn_q[0]);
				prj_d[3] =   32'd1-(xdn_q[1]*xdn_q[1]);
				
				delta_d[0] = xx_q[0]-obs[0];
				delta_d[1] = xx_q[1]-obs[1];
				
				state_d = OBS_STATE;
				
		end
		OBS_STATE: begin
		    start_norm_d = 1'b1;
			 
			 
			 
			 
			state_d = OBS_STATE_2;
				// if(done_norm == 1'b1)begin
					//	state_d = OBS_STATE_2;
				//end
		end
		OBS_STATE_2: begin
				joint_d = joint_q +1'b1;
				
				if(joint_q >= 3) begin
					   state_d = STEP_STATE;
					end
					else begin
					   state_d = CALC_PREP;
					end
				
				end
		STEP_STATE: begin
		
		    for (i=0; i<=4; i=i+1)
				begin
			xismall_d[i] = xismall_q[i]-(nabla_smooth_q[i]>>>7); // div 128 
		   end
		   state_d = UPDATE_STATE;
		end
		
		UPDATE_STATE: begin
		   for (i=0; i<=1; i=i+1)
			begin
		   position_a_old_d[i] = position_a_q[i];
			position_b_old_d[i] = position_b_q[i];
			position_c_old_d[i] = position_c_q[i];
			end
			state_d = UPDATE_STATE_TRIG_1;
		end
		UPDATE_STATE_TRIG_1: begin
		 phasetocalc_d =  trunc_32_to_18(xismall_q[2]); 
		/* if(32'd205881 < xismall_q[2]) begin
			phasetocalc_d =  trunc_32_to_18(xismall_q[2]); 
			flag = 1'b0;
		 end
		 else if(32'd205881 >= xismall_q[2]) begin
		   flag = 1'b1;
			phasetocalc_d =  trunc_32_to_18(xismall_q[2]-32'd205881); 
		 end*/
		 
		 start_d = 1'b1;
		 if(donecos == 1'b1)begin
		     state_d = UPDATE_STATE_TRIG_2;
			  
			  ////tempnumber0 = {14'b0, cossin[31:16],2'b0};
			   tempnumber1 = {14'b0, cossin[15:0],2'b0};
				if(cossin[31] == 1'b1) begin
					 tempnumber0 =  {{14{1'b1}}, cossin[31:16],2'b0};
					 position_a_d[0] =  xismall_q[0]+{{14{1'b1}}, cossin[31:16],2'b0};
				end
				else if(cossin[31] == 1'b0)begin
					tempnumber0 =  {14'b0, cossin[31:16],2'b0};
				    position_a_d[0] =  xismall_q[0]+{14'b0, cossin[31:16],2'b0};
				end
				
				if(cossin[15] == 1'b1) begin
				tempnumber1 =  {{14{1'b1}}, cossin[15:0],2'b0};
				position_a_d[1] =  xismall_q[1]+ {{14{1'b1}},cossin[15:0] ,2'b0};
				end
				else if(cossin[15] == 1'b0) begin
				tempnumber1 =  {14'b0, cossin[15:0],2'b0};
				position_a_d[1] =  xismall_q[1]+ {14'b0,cossin[15:0] ,2'b0};
				end
				
			  //position_a_d[0] =   xismall_q[0]+{14'b0, cossin[31:16],2'b0};
			  //position_a_d[1] =  xismall_q[1]+ {14'b0, cossin[15:0],2'b0};
			  start_d = 1'b0;
				end
		end
		UPDATE_STATE_TRIG_2: begin
		 
	/*	 if(32'd205881 < (xismall_q[2]+xismall_q[3])) begin
			phasetocalc_d =  trunc_32_to_18(xismall_q[2]+xismall_q[3]);
			flag = 1'b0;
		 end
		 else  begin
		   flag = 1'b1;
			phasetocalc_d =  trunc_32_to_18((xismall_q[2]+xismall_q[3])-32'd205881); 
		 end*/
		 phasetocalc_d = trunc_32_to_18(xismall_q[2]+ xismall_q[3]); 
		 
		 start_d = 1'b1;
		 state_d = UPDATE_STATE_TRIG_2_temp;
		 
		end
		UPDATE_STATE_TRIG_2_temp: begin
		     if(donecos == 1'b1)begin
			  //tempnumber0 = {14'b0, cossin[31:16],2'b0};
			  // tempnumber1 = {14'b0, cossin[15:0],2'b0};
				if(cossin[31] == 1'b1)begin
					 tempnumber0 =  {{14{1'b1}}, cossin[31:16],2'b0};
					 position_b_d[0] =  position_a_q[0]+{{14{1'b1}}, cossin[31:16],2'b0};
				end
				else if(cossin[31] == 1'b0)begin
				    tempnumber0 =  {14'b0, cossin[31:16],2'b0};
				    position_b_d[0] =  position_a_q[0]+{14'b0, cossin[31:16],2'b0};
				end
				
				if(cossin[15] == 1'b1)begin
				tempnumber1 =  {{14{1'b1}}, cossin[15:0],2'b0};
				position_b_d[1] =  position_a_q[1]+ {{14{1'b1}},cossin[15:0] ,2'b0};
				end
				else if(cossin[15] == 1'b0)begin
				tempnumber1 =  {14'b0, cossin[15:0],2'b0};
				position_b_d[1] =  position_a_q[1]+ {14'b0,cossin[15:0] ,2'b0};
				end
				
		     //position_b_d[0] =  position_a_q[0]+{14'b0, cossin[31:16],2'b0};
			  //position_b_d[1] =  position_a_q[1]+{14'b0, cossin[15:0],2'b0};
			   start_d = 1'b0;
						state_d = UPDATE_STATE_TRIG_3;
						phasetocalc_temp_d = phasetocalc_q;
				end
		end
		UPDATE_STATE_TRIG_3: begin
		/* if(32'd205881 < (xismall_q[2]+xismall_q[3])) begin
			phasetocalc_d =  trunc_32_to_18(phasetocalc_temp_q+xismall_q[4]);
			flag = 1'b0;
		 end
		 else  begin
		   flag = 1'b1;
			phasetocalc_d =  trunc_32_to_18((phasetocalc_temp_q+xismall_q[4])-32'd205881); 
		 end*/
		 
		 phasetocalc_d = trunc_32_to_18(phasetocalc_temp_q + xismall_q[4]); 
		 state_d = UPDATE_STATE_TRIG_3_temp;
		 start_d = 1'b1;
		
		end
		UPDATE_STATE_TRIG_3_temp: begin
			if(donecos == 1'b1)begin
			  
				if(cossin[31] == 1'b1)begin 
					 position_c_d[0] =  position_b_q[0]+{{14{1'b1}}, cossin[31:16],2'b0};
					 tempnumber0 =  {{14{1'b1}}, cossin[31:16],2'b0};
			  
				end
				else if(cossin[31] == 1'b0)begin
				    tempnumber0 =  {14'b0, cossin[31:16],2'b0};
				    position_c_d[0] =  position_b_q[0]+{14'b0, cossin[31:16],2'b0};
				end
				
				 if(cossin[15] == 1'b1)begin
				 tempnumber1 =  {{14{1'b1}}, cossin[15:0],2'b0};
				position_c_d[1] =  position_b_q[1]+ {{14{1'b1}},cossin[15:0] ,2'b0};
				end
				else if(cossin[15] == 1'b1)begin
				tempnumber1 =  {14'b0, cossin[15:0],2'b0};
				position_c_d[1] =  position_b_q[1]+ {14'b0,cossin[15:0] ,2'b0};
				end
				 
				  
					start_d = 1'b0;
					if(cyclecount_q > 32'd999)begin
						state_d = CHECKNEG;
					end
					else begin
					state_d = CALC_PREP;
					end
			end
		end
		
		CHECKNEG: begin
			addr_d = 4'd4;//addr_d = 4'd12;
/*		  if(nablaobs[amounttoprint_q] < 0)begin
					 valueToPrint_d = 32'd2147483646;//nablaobs[amounttoprint_q];//-nablaobs[amounttoprint_q];
					 isneg_d = 1'b1;
		  end*/
		  if(amounttoprint_q == 100) begin
				valueToPrint_d = 32'd2147483646;
		  end
		  else begin
					 valueToPrint_d = cossin[31:0];//{8'b0,phasetocacl};//cossin[31:0];//multresult_d;//nablaobs[amounttoprint_q];
					 isneg_d = 1'b0;
		  end
			//result =  number1* number2;
			state_d = WAIT;
		end
		WAIT: begin
		   if(amounttoprint_q == 100) begin
				valueToPrint_d = 32'd2147483646;
			end
			else begin
				valueToPrint_d = cossin[31:0];//{8'b0,phasetocacl};//cossin[31:0];//multresult_d;//nablaobs[amounttoprint_q];
			end
			addr_d = 4'd4;
			amounttoprint_d = amounttoprint_q-1;
		   /*startconv = 1'b1;
			if(conversiondone) begin
			   state_d = PRINT_MESSAGE;
				amounttoprint_d = amounttoprint_q-1;
			end
			else begin
				state_d = WAIT; 
			end*/
	      // if(valueToPrint_q == 32'b0)begin
			state_d = PRINT_MESSAGE;//end
		end
      PRINT_MESSAGE: begin
		   startconv = 1'b0;
        if (!tx_busy) begin
          new_tx_data = 1'b1;
          addr_d = addr_q - 1'b1;
          if (addr_q == 0)
			    if(amounttoprint_q == 0)
						state_d = IDLE;
				 else
				     state_d = CHECKNEG;//CHECKNEG;
        end
      end
      default: state_d = IDLE;
    endcase
  end		
 
  always @(posedge clk) begin
    if (rst) begin
      state_q <= IDLE;
    end else begin
      state_q <= state_d;
    end
    result <= numbers[0];
	 number1_q <= number1_d; 
	 number2_q <= number2_d;
    multresult_q <= multresult_d; 
	 startconv_q<= startconv;
    addr_q <= addr_d;
	 numbers[count_q] <= numbertemp;
	 count_q <= count_d;
	 isneg_q <= isneg_d;
	 amounttoprint_q <= amounttoprint_d;
	 valueToPrint_q <= valueToPrint_d;
	 start_q <= start_d;
	 start_norm_q <= start_norm_d;
	 
	 phasetocalc_q <= phasetocalc_d;
	 phasetocalc_temp_q <= phasetocalc_temp_d;
	 joint_q <= joint_d;
	 cyclecount_q <= cyclecount_d;
	 
	 for (i=0; i<=1; i=i+1)
	 begin
	 position_a_old_q[i] <=  position_a_old_d[i];
	 position_b_old_q[i] <= position_b_old_d[i];
	 position_c_old_q[i] <= position_c_old_d[i];
	 position_a_q[i] <= position_a_d[i];
	 position_b_q[i] <= position_b_d[i];
	 position_c_q[i] <= position_c_d[i]; 
	 xx_q[i] <= xx_d[i];
	
	 xdsmall_q[i] <= xdsmall_d[i];
	 xdn_q[i] <= xdn_d[i];
	 delta_q[i] <= delta_d[i];
	 end
	 
	 for(i=0; i<=9; i=i+1)
	 begin
		JJsmall_q[i] =JJsmall_d[i];
	 end
	 
	 
	 for (i=0; i<=4; i=i+1)
		begin
		  nabla_smooth_q[i] <= nabla_smooth_d[i];
		  xismall_q[i] <= xismall_d[i];
		  qd_q[i] <= qd_d[i];
		end
	 
	 for (i=0; i<=3; i=i+1)
		begin
		  prj_q[i] <= prj_d[i];
		end

	 vel_q <= vel_d;
	 phasetocalc_real<= {4'b0 ,phasetocalc_d};
  end
 
endmodule