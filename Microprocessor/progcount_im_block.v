`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Group no: B04
//Name : Janvi patel(201501072) , Nishi patel(201501076) , Grishma shah(201501095)
//Date : 19/8/2016
//Name of code : Programme counter , instruction Memory
//Description : PC and IM block of a microprocessor which generates instructions for the execution block
//////////////////////////////////////////////////////////////////////////////////

module progcount_im_block(ins,ins_pm,current_address,jmp_loc,pc_mux_sel,stall,stall_pm,reset,clk);

//output variable declaration
output [19:0]ins;
output [19:0]ins_pm;
output [7:0]current_address;

//register declaration
reg [7:0] address_hold,next_address;
reg [19:0] reg1;

//input variable declaration
input [7:0]jmp_loc;
input pc_mux_sel,stall,stall_pm,reset,clk;

//wire declaration
wire [7:0]current_address_temp,increment_address,mux1;
wire [19:0] ins_temp; 
wire ena=1'b1;

// Body of code starts from here

//MUX 
assign current_address_temp=(stall==0)?next_address:address_hold;
assign current_address=(pc_mux_sel==0)?current_address_temp:jmp_loc;
assign ins=(stall_pm==1)?reg1:ins_temp;
assign mux1=(reset==1)?current_address:8'b00000000;
assign ins_pm=(reset==1)?ins:20'b00000000000000000000;

//Address of instruction is incremented by 1
assign increment_address = mux1 + 8'b00000001;

//register block
always@(posedge clk)  //Value will change at the positive edge of the clock
begin
		if(reset==1) //if reset is 1 only then value will be stored/changed
		begin
			next_address<=increment_address;
			address_hold<=mux1;
			reg1<=ins;
		end
		else //if reset is 0 only then value will be zero
		begin
				next_address<=8'b00000000; 
				address_hold<=8'b00000000;
				reg1<=20'b00000000000000000000;
		end
end

//IP Core generator
procount_im_block progcount_im_block(
  .clka(clk), // input clk
  .ena(ena), // input 1
  .addra(mux1), // input [7 : 0] mux1
  .douta(ins_temp) // output [19 : 0] ins_temp
);


endmodule



