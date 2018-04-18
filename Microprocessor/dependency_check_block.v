`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Group no: 4
//Name : Janvi patel(201501072) , Nishi patel(201501076) , Grishma shah(201501095)
//Date : 4/10/2016
//Name of code : dependency checking block 
//Description : Dependency check block handles data hazard in pipeline processor. It can check dependency of current instruction with previous three instructions. 
//////////////////////////////////////////////////////////////////////////////////

module dependency_check_block(mux_sel_a,mux_sel_b,imm_sel,imm,mem_en_dec,mem_rw_dec,mem_mux_sel_dec,RW_dec,op_dec,ins,clk,reset);

//output variable declaration
output reg [7:0]imm;
output reg [4:0]op_dec;
output [4:0]RW_dec;
output [1:0]mux_sel_a,mux_sel_b;
output imm_sel,mem_rw_dec,mem_mux_sel_dec,mem_en_dec;

//input variable declaration
input [19:0]ins;
input clk,reset;

//wire variable declaration
wire ld_st,temp_imm,temp1,temp2,temp3,temp4,temp5,temp7,temp8,temp9,temp10,nor1,comp1,comp2,comp3,comp4,comp5,comp6,D1,D2,D3,D4;
wire [14:0] extend,temp6;

//register variable declaration
reg [4:0] reg1,reg2,reg3,reg4,reg5,r1;
reg Q1,Q2,Q3,Q4;

//Applying AND operations
and(ld_st,ins[19],~ins[18],ins[17],~ins[16]); // detecting load or store instructions
and(temp_imm,~ins[19],ins[18]);					 // detecting immediate number

//It detects the instructions except LD/ST 
and(temp1,ins[19],~ins[18],ins[17],~ins[16],~ins[15],~Q4);	
and(temp2,ins[19],ins[18],ins[17]);
and(temp3,ins[19],ins[18],~ins[17],~ins[16],~ins[15]);
nor(nor1,temp2,temp3,Q4);	

 
assign temp6 = ins[14:0]&extend; //It blocks first 15bits of instruction if we have JMP or LD
assign extend[14:0]=(nor1==1)?15'b111111111111111:15'b000000000000000;	//if nor1 is 1 then extend has 15 times 1 bit for passing the same instruction

//logic for creating output of mem_mux_sel_dec,mem_rw_dec,mem_en_dec
and(temp4,ins[15],~Q1);   //To detect whether it is read or write signal
and(temp5,ld_st,~Q2);	 //It prevents from having back t back LD/ST or both instructions
and(mem_mux_sel_dec,~Q1,Q2);	//To detect mem_mux_sel_dec

//To fetch RA,RB from either execution block or data memory block or write back block 
assign comp1=(reg2==reg1)?1:0;
assign comp2=(reg3==reg1)?1:0;
assign comp3=(reg4==reg1)?1:0;
assign comp4=(reg2==reg5)?1:0;
assign comp5=(reg3==reg5)?1:0;
assign comp6=(reg4==reg5)?1:0;

//If any of the comparator gives the output 1 then it blocks the other outputs of comparators
and(temp7,~comp1,comp2);
and(temp8,~comp1,~comp2,comp3);
and(temp9,~comp4,comp5);
and(temp10,~comp4,~comp5,comp6);

//priority encoder
//To detect if the output is from either data memory block or execution block or write back block 
assign mux_sel_a=((comp1==1'b1)?2'b01:((temp7==1'b1)?2'b10:((temp8==1'b1)?2'b11:2'b00)));
assign mux_sel_b=((comp4==1'b1)?2'b01:((temp9==1'b1)?2'b10:((temp10==1'b1)?2'b11:2'b00)));

assign D1=temp4;
assign D2=temp5;
assign D3=temp_imm;
assign D4=temp1;
assign mem_en_dec=Q2;
assign mem_rw_dec=Q1;
assign imm_sel=Q3;
assign RW_dec=r1;

always@(posedge clk)//Value will change at the positive edge of the clock
begin
		if(reset==1)	//if reset is 1 only then value will be stored/changed
		begin
				//D-flipflop
				Q1<=D1;		//Assigning D1 to Q1
				Q2<=D2;		//Assigning D2 to Q2
				Q3<=D3;		//Assigning D3 to Q3
				Q4<=D4;		//Assigning D4 to Q4
				
				imm[4:0]<=ins[4:0];		//Assigning ins[4:0] to imm[4:0]
				imm[7:5]<=3'b000;			//Assigning zero to imm[7:5]
				op_dec<=ins[19:15];		//Assigning ins[19:15] to op_dec
				
				//registers
				reg1<=temp6[9:5];			//Assigning temp6[9:5] to reg1
				r1<=temp6[14:10];			//Assigning temp6[14:10] to r1
				reg2<=r1;					//Assigning r1 to reg2
				reg3<=reg2;					//Assigning reg2 to reg3
				reg4<=reg3;					//Assigning reg3 to reg4
				reg5<=temp6[4:0];			//Assigning temp6[4:0] to reg5
		end
		else		//if reset is 0 only then value will be zero
		begin
				//D-flipflop
				Q1<=0;
				Q2<=0;
				Q3<=0;
				Q4<=0;
				
				imm[7:0]<=8'b00000000;
				op_dec<=5'b00000;
				
				//registers
				reg1<=5'b00000;
				r1<=5'b00000;
				reg2<=5'b00000;
				reg3<=5'b00000;
				reg4<=5'b00000;
				reg5<=5'b00000;
		end
end
endmodule //code ends here

