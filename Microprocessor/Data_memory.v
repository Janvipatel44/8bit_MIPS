`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Group no: 4
//Name : Janvi patel(201501072) , Nishi patel(201501076) , Grishma shah(201501095)
//Date : 30/8/2016
//Name of code : Data_memory
//Description : Understand and implement Data memory block of a microprocessor 
//////////////////////////////////////////////////////////////////////////////////

module Data_memory(mux_ans_dm,RW_dm,ans_ex,B_Bypass,RW_ex,mem_en_ex,mem_rw_ex,mem_mux_sel_ex,clk,reset);

//output variable declaration
output [7:0] mux_ans_dm;
output reg [4:0] RW_dm;

//register declaration
reg mem_mux_sel_dm;
reg [7:0] ans_reg;

//input variable declaration
input [7:0] ans_ex,B_Bypass;
input [4:0] RW_ex;
input mem_en_ex,mem_rw_ex,mem_mux_sel_ex,clk,reset;

//wire declaration
wire [7:0] ans_dm;

// Body of code starts from here

//ternary operation of output(MUX)  
assign mux_ans_dm=(mem_mux_sel_dm==0)?ans_reg:ans_dm;

//register block
always@(posedge clk)	//Value will change at the positive edge of the clock
begin
		if(reset==1)	//if reset is 1 only then value will be stored/changed
		begin
			ans_reg<=ans_ex;
			mem_mux_sel_dm<=mem_mux_sel_ex;
			RW_dm<=RW_ex;
		end
			
		else	//if reset is 0 only then value will be zero
		begin
			ans_reg<=8'b00000000;
			mem_mux_sel_dm<=0;
			RW_dm<=5'b00000;
		end
end		

//IP Core generator
data_mem Data_memory(
  .clka(clk), 			// input clk
  .ena(mem_en_ex), 	// input mem_en_ex
  .wea(mem_rw_ex), 	// input mem_rw_ex
  .addra(ans_ex), 	// input [7 : 0] ans_ex
  .dina(B_Bypass), 	// input [7 : 0] B_Bypass
  .douta(ans_dm) 		// output [7 : 0] ans_dm
);
endmodule
