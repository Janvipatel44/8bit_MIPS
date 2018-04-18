`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Group no: 4
//Name : Janvi patel(201501072) , Nishi patel(201501076) , Grishma shah(201501095)
//Date : 11/10/2016
//Name of code : main_module
//Description :  main module for calling all modules of MICROPROCESSOR
//////////////////////////////////////////////////////////////////////////////////

module main_module(data_out,ins,A,B,current_address,ans_ex,mux_ans_dm,ans_wb,data_in,clk,interrupt,reset);

//output variable declaration
output [19:0] ins;
output [7:0] A,B,current_address,ans_ex,mux_ans_dm,ans_wb,data_out;

//input variable declaration
input [7:0] data_in;
input clk,interrupt,reset;

//wire declaration
wire [19:0]ins_pm;
wire [7:0] B_Bypass,imm,mux_ans_dm,jmp_loc,current_address;
wire [4:0]op_dec,RW_dec,RW_dm,RW_ex;
wire [3:0]flag_ex;
wire [1:0]mux_sel_a,mux_sel_b;
wire mem_en_ex,mem_rw_ex,mem_mux_sel_ex,clk,reset,imm_sel,interrupt,pc_mux_sel,stall,stall_pm,mem_en_dec,mem_rw_dec,mem_mux_sel_dec;

//body of code starts from here

//call Data_memory
Data_memory dm(mux_ans_dm,RW_dm,ans_ex,B_Bypass,RW_ex,mem_en_ex,mem_rw_ex,mem_mux_sel_ex,clk,reset);

//call progcount_im_block
progcount_im_block pi(ins,ins_pm,current_address,jmp_loc,pc_mux_sel,stall,stall_pm,reset,clk);

//call microprocessor
microprocessor mi(ans_ex, data_out, B_Bypass, mem_en_ex, mem_rw_ex, mem_mux_sel_ex, RW_ex,A, B, data_in, op_dec, clk, mem_en_dec, mem_rw_dec, mem_mux_sel_dec, RW_dec, reset, flag_ex);

//call dependency_check_block
dependency_check_block db(mux_sel_a,mux_sel_b,imm_sel,imm,mem_en_dec,mem_rw_dec,mem_mux_sel_dec,RW_dec,op_dec,ins,clk,reset);

//call StallControl_Block
StallControl_Block sb(stall,stall_pm,ins_pm,clk,reset);

//call Register_bank
Register_bank rb(A,B,ins,RW_dm,ans_ex,mux_ans_dm,ans_wb,imm,mux_sel_a,mux_sel_b,imm_sel,clk,reset);

//call JumpControl_Block
JumpControl_Block jb(pc_mux_sel,jmp_loc,ins,clk,interrupt,current_address,flag_ex,reset);

//call write_back_block
write_back_block wb(mux_ans_dm,clk,reset,ans_wb);

endmodule //body of code ends here
