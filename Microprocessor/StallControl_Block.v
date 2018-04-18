`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Group no: 4
//Name : Janvi patel(201501072) , Nishi patel(201501076) , Grishma shah(201501095)
//Date : 2/9/2016
//Name of code : StallControl_block
//Description :  To design Stall Control Block to decide when to stall pipeline
//////////////////////////////////////////////////////////////////////////////////

//code starts form here
module StallControl_Block(stall,stall_pm,ins_pm,clk,reset);

//output variable declaration
output stall;
output reg stall_pm;

//input variable declaration
input [19:0]ins_pm;	//input of 20 bits
input clk,reset;

//wire variable declaration
wire jump_out,ld_out,hlt_out;

//register variable declaration
reg Q_temp1,Q_temp2,Q_temp3;

and(jump_out,ins_pm[17],ins_pm[18],ins_pm[19],~(Q_temp2));		//For JUMP instruction
and(ld_out,ins_pm[19],~(ins_pm[18]),ins_pm[17],~(ins_pm[16]),~(ins_pm[15]),~(Q_temp3));	//For LD instruction
and(hlt_out,ins_pm[19],~(ins_pm[18]),~(ins_pm[17]),~(ins_pm[16]),ins_pm[15]);		//For HLT instruction

or(stall,jump_out,ld_out,hlt_out);	//For generating stall

always@(posedge clk)//Value will change at the positive edge of the clock
begin
		if(reset==1)	//if reset is 1 only then value will be stored/changed
		begin
				Q_temp1<=jump_out; //Assigning jump_out to Q_temp1
				Q_temp2<=Q_temp1; //Assigning Q_temp1 to Q_temp2
				Q_temp3<=ld_out; //Assigning ld_out to Q_temp3
				stall_pm<=stall; //Assigning stall to stall_pm
				
		end
		
		else	//if reset is 0 only then value will be zero
		begin
				Q_temp1<=0;
				Q_temp2<=0;
				Q_temp3<=0;
				stall_pm<=0;
		end
end
endmodule //code ends here
