`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Group no: 4
//Name : Janvi patel(201501072) , Nishi patel(201501076) , Grishma shah(201501095)
//Date : 30/8/2016
//Name of code : Register_bank
//Description : Understand and implement Register_bank block of a microprocessor 
//////////////////////////////////////////////////////////////////////////////////
module Register_bank(A,B,ins,RW_dm,ans_ex,mux_ans_dm,ans_wb,imm,mux_sel_a,mux_sel_b,imm_sel,clk,reset);

//output variable declaration
output [7:0] A,B;

//register declaration
reg [7:0] reg_A,reg_B;
reg [7:0] membyte[0:31];

//input variable declaration
input [19:0] ins;
input [4:0] RW_dm;
input [7:0] ans_ex,mux_ans_dm,ans_wb,imm;
input [1:0] mux_sel_a,mux_sel_b;
input imm_sel,clk,reset;

//give values to membyte
initial
begin
		membyte[0]=0;
		membyte[1]=1;
		membyte[2]=2;
		membyte[3]=3;
		membyte[4]=4;
		membyte[5]=5;
		membyte[6]=6;
		membyte[7]=7;
		membyte[8]=8;
		membyte[9]=9;
		membyte[10]=10;
		membyte[11]=11;
		membyte[12]=12;
		membyte[13]=13;
		membyte[14]=14;
		membyte[15]=15;
		membyte[16]=16;
		membyte[17]=17;
		membyte[18]=18;
		membyte[19]=19;
		membyte[20]=20;
		membyte[21]=21;
		membyte[22]=22;
		membyte[23]=23;
		membyte[24]=24;
		membyte[25]=25;
		membyte[26]=26;
		membyte[27]=27;
		membyte[28]=28;
		membyte[29]=29;
		membyte[30]=30;
		membyte[31]=31;
end

//wire declaration
wire [4:0] RA,RB;
wire [7:0] temp_B;

// Body of code starts from here

//logic for MUX A
assign A=(mux_sel_a==2'b00)?reg_A:(mux_sel_a==2'b01)?ans_ex:(mux_sel_a==2'b10)?mux_ans_dm:ans_wb;
//logic for MUX B
assign temp_B=(mux_sel_b==2'b00)?reg_B:(mux_sel_b==2'b01)?ans_ex:(mux_sel_b==2'b10)?mux_ans_dm:ans_wb;
//logic for Imm 
assign B=(imm_sel==0)?temp_B:imm;

//assign 5 bits to each RA,RB
assign RA=ins[9:5];
assign RB=ins[4:0];

//register block
always@(posedge clk)	//Value will change at the positive edge of the clock
begin
		if(reset==1)	//if reset is 1 only then value will be stored/changed
		begin
				reg_A<=membyte[RA];	//assigning reg_A to membyte at address of RA
				reg_B<=membyte[RB];	//assigning reg_B to membyte at address of RB
				membyte[RW_dm]<=mux_ans_dm;	//write value of mux_ans_dm at address of membyte RW_dm
		end
		
		else	//if reset is 0 only then value will be zero
		begin
				reg_A<=0;
				reg_B<=0;
		end
end										

endmodule //code ends here
