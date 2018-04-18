`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Group no: 4
//Name : Janvi patel(201501072) , Nishi patel(201501076) , Grishma shah(201501095)
//Date : 16/9/2016
//Name of code : JumpControl_block
//Description :  To design jump control block 
//////////////////////////////////////////////////////////////////////////////////

module JumpControl_Block(pc_mux_sel,jmp_loc,ins,clk,interrupt,current_address,flag_ex,reset);

//output variable declaration
output [7:0] jmp_loc;
output pc_mux_sel;

//input variable declaration
input [19:0] ins;
input [7:0] current_address;
input [3:0] flag_ex;
input clk,reset,interrupt;

//wire declaration
wire JC,JNC,JZ,JNZ,JMP,RET,temp1,temp2,temp3,temp4;
wire [7:0]mux1,mux2;
wire [3:0]mux3,mux4;

//register declaration
reg out_reg1;
reg [7:0]out_reg2;
reg [3:0]out_reg3;

//Applying AND operations
and(JC,~ins[15],~ins[16],ins[17],ins[18],ins[19]);		//for JC AND gate
and(JNC,ins[15],~ins[16],ins[17],ins[18],ins[19]);		//for JNC AND gate
and(JZ,~ins[15],ins[16],ins[17],ins[18],ins[19]);		//for JZ AND gate
and(JNZ,ins[15],ins[16],ins[17],ins[18],ins[19]);		//for JNZ AND gate
and(JMP,~ins[15],~ins[16],~ins[17],ins[18],ins[19]);	//for JMP AND gate
and(RET,~ins[15],~ins[16],~ins[17],~ins[18],ins[19]);	//for RET AND gate
//For generating pc_mux_sel
and(temp1,JC,mux4[0]);
and(temp2,JNC,~mux4[0]);
and(temp3,JZ,mux4[1]);
and(temp4,JNZ,~mux4[1]);

//Applying OR operation for pc_mux_sel
or(pc_mux_sel,temp1,temp2,temp3,RET,temp4,JMP,out_reg1);

assign mux1=(out_reg1==1)?8'hf0:ins[7:0];
assign mux2=(interrupt==1)?current_address:out_reg2;
assign mux3=(interrupt==1)?flag_ex:out_reg3;
assign mux4=(RET==1)?out_reg3:flag_ex;
assign jmp_loc=(RET==1)?out_reg2:mux1;

always@(posedge clk) //Value will change at the positive edge of the clock
begin
	if(reset==1)	//if reset is 1 only then value will be stored/changed
   begin
		out_reg1<=interrupt; //Assigning interrupt to out_reg1
		out_reg2<=mux2;	//Assigning mux2 to out_reg2
		out_reg3<=mux3;	//Assigning mux3 to out_reg3
	end
	
	else	//if reset is 0 only then value will be zero
	begin
		out_reg1<=0;
		out_reg2<=0;
		out_reg3<=0;
	end
end
 
endmodule
