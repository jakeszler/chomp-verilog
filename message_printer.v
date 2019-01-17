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
  localparam STATE_SIZE = 4;
  localparam IDLE = 0,
    PRINT_MESSAGE = 1,
	 STATE2 = 2,
	 STATE3 =3,
	 CALC = 4,
	 WAIT = 5,
	 CHECKNEG = 6,
	 STARTING =7;
 
  //localparam MESSAGE_LEN = 10;
 
  reg [STATE_SIZE-1:0] state_d, state_q;
 

  reg signed[7:0] addr_d, addr_q;
   reg [7:0] count_d,  count_q;

	  
  reg  [7:0] result = 8'b0;
  reg [7:0] amounttoprint_q, amounttoprint_d = 8'd99;
  wire [7:0] value;
  reg signed [31:0] number1_d,number1_q, number2_d,number2_q = 32'b0;
  reg signed [31:0] multresult_d, multresult_q = 32'b0;
  reg signed [31:0] valueToPrint_d, valueToPrint_q = 32'b0;
  reg signed[7:0] numbertemp;
  reg signed[7:0] numbers [NUMBEROFNUMBER-1:0];
  
  reg signed[31:0] AA [0:99][0:99];
  reg signed[31:0] BB [0:99];
  reg signed[31:0] xi [0:99];
  reg signed[31:0] nablaobs [0:99];
  
  /* wire [320000-1:0]AA_flattened;
	integer k,l;
	for (k=0;k<32;k=k+1) begin
	for (l=0;l<32;l=l+1) begin
	assign AA_flattened[k*l] = AA[0][5];
	end
	end
	*/
  assign ledout = count_q;
  //assign ledout = result;
  wire conversiondone;
  reg startconv,startconv_q = 1'b0;
  reg isneg_q,isneg_d = 1'b0;
  
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
  
  initial begin
	  for (i=0;i<100;i=i+1) begin
		 for (j=0;j<100;j=j+1)begin
		 AA[i][j] = 32'd0;
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
		for (ii=0; ii<100; ii=ii+1)
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
		  AA[0][5] = -32'd47;
		  

		  
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
	 
	 
	 //numbertemp = 8'b0;
	 //multresult_d = 32'b0;
	 //number1_d = {numbers[3],numbers[2],numbers[1],numbers[0]};//32'b0;
    case (state_q)
		STARTING: begin
		
		state_d = IDLE;
		end
      IDLE: begin
		  for (k=0;k<100;k=k+1) begin
				nablaobs[k] = ((AA[k][0]*xi[k])+(AA[k][1]*xi[k])+(AA[k][2]*xi[k])+(AA[k][3]*xi[k])+(AA[k][4]*xi[k])+(AA[k][5]*xi[k])+(AA[k][6]*xi[k])+(AA[k][7]*xi[k])+(AA[k][8]*xi[k])+(AA[k][9]*xi[k])+(AA[k][10]*xi[k])+(AA[k][11]*xi[k])+(AA[k][12]*xi[k])+(AA[k][13]*xi[k])+(AA[k][14]*xi[k])+(AA[k][15]*xi[k])+(AA[k][16]*xi[k])+(AA[k][17]*xi[k])+(AA[k][18]*xi[k])+(AA[k][19]*xi[k])+(AA[k][20]*xi[k])+(AA[k][21]*xi[k])+(AA[k][22]*xi[k])+(AA[k][23]*xi[k])+(AA[k][24]*xi[k])+(AA[k][25]*xi[k])+(AA[k][26]*xi[k])+(AA[k][27]*xi[k])+(AA[k][28]*xi[k])+(AA[k][29]*xi[k])+(AA[k][30]*xi[k])+(AA[k][31]*xi[k])+(AA[k][32]*xi[k])+(AA[k][33]*xi[k])+(AA[k][34]*xi[k])+(AA[k][35]*xi[k])+(AA[k][36]*xi[k])+(AA[k][37]*xi[k])+(AA[k][38]*xi[k])+(AA[k][39]*xi[k])+(AA[k][40]*xi[k])+(AA[k][41]*xi[k])+(AA[k][42]*xi[k])+(AA[k][43]*xi[k])+(AA[k][44]*xi[k])+(AA[k][45]*xi[k])+(AA[k][46]*xi[k])+(AA[k][47]*xi[k])+(AA[k][48]*xi[k])+(AA[k][49]*xi[k])+(AA[k][50]*xi[k])+(AA[k][51]*xi[k])+(AA[k][52]*xi[k])+(AA[k][53]*xi[k])+(AA[k][54]*xi[k])+(AA[k][55]*xi[k])+(AA[k][56]*xi[k])+(AA[k][57]*xi[k])+(AA[k][58]*xi[k])+(AA[k][59]*xi[k])+(AA[k][60]*xi[k])+(AA[k][61]*xi[k])+(AA[k][62]*xi[k])+(AA[k][63]*xi[k])+(AA[k][64]*xi[k])+(AA[k][65]*xi[k])+(AA[k][66]*xi[k])+(AA[k][67]*xi[k])+(AA[k][68]*xi[k])+(AA[k][69]*xi[k])+(AA[k][70]*xi[k])+(AA[k][71]*xi[k])+(AA[k][72]*xi[k])+(AA[k][73]*xi[k])+(AA[k][74]*xi[k])+(AA[k][75]*xi[k])+(AA[k][76]*xi[k])+(AA[k][77]*xi[k])+(AA[k][78]*xi[k])+(AA[k][79]*xi[k])+(AA[k][80]*xi[k])+(AA[k][81]*xi[k])+(AA[k][82]*xi[k])+(AA[k][83]*xi[k])+(AA[k][84]*xi[k])+(AA[k][85]*xi[k])+(AA[k][86]*xi[k])+(AA[k][87]*xi[k])+(AA[k][88]*xi[k])+(AA[k][89]*xi[k])+(AA[k][90]*xi[k])+(AA[k][91]*xi[k])+(AA[k][92]*xi[k])+(AA[k][93]*xi[k])+(AA[k][94]*xi[k])+(AA[k][95]*xi[k])+(AA[k][96]*xi[k])+(AA[k][97]*xi[k])+(AA[k][98]*xi[k])+(AA[k][99]*xi[k]))+BB[k];	  
		  end
		  valueToPrint_d =nablaobs[99];
        addr_d = 4'd12;
		  count_d = 4'd0;
		  startconv = 1'b0;
		  multresult_d =32'b0;
		  isneg_d = 1'b0;
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
			number1_d = {numbers[3],numbers[2],numbers[1],numbers[0]};
			number2_d = {numbers[3],numbers[2],numbers[1],numbers[0]};

			state_d = CALC;
			//state_d = CALC;
			//end
		end
		CALC: begin

			//multresult_d = number1_q * number1_q;
			 multresult_d = number1_q * 2;
          //result =  number1* number2;
         state_d = CHECKNEG;
			//valueToPrint_d = 
			end
			CHECKNEG: begin
			addr_d = 4'd12;
		  if(nablaobs[amounttoprint_q] < 0)begin
					 valueToPrint_d = -nablaobs[amounttoprint_q];
					 isneg_d = 1'b1;
		  end
		  else begin
					 valueToPrint_d= nablaobs[amounttoprint_q];
					 isneg_d = 1'b0;
		  end
			//result =  number1* number2;
			state_d = WAIT;
		end
		WAIT: begin
		   
		   //valueToPrint_d =nablaobs[amounttoprint_q];
		   startconv = 1'b1;
			if(conversiondone) begin
			   state_d = PRINT_MESSAGE;
				amounttoprint_d = amounttoprint_q-1;
			end
			else begin
				state_d = WAIT; 
			end
		end
      PRINT_MESSAGE: begin
		   startconv = 1'b0;
        if (!tx_busy) begin
          new_tx_data = 1'b1;
          addr_d = addr_q - 1'b1;
          if (addr_q == 1)
			    if(amounttoprint_q == 0)
						state_d = IDLE;
				 else
				     state_d = CHECKNEG;
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
  end
 
endmodule