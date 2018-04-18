`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Group no: 4
//Name : Janvi patel(201501072) , Nishi patel(201501076) , Grishma shah(201501095)
//Date : 16/8/2016
//Name of code : microprocessor
//Description : Microprocessor will take 10 inputs and generate 8 outputs with using ALU and register block
//////////////////////////////////////////////////////////////////////////////////

module microprocessor(ans_ex, data_out, B_Bypass, mem_en_ex, mem_rw_ex, mem_mux_sel_ex, RW_ex,A, B, data_in, op_dec, clk, mem_en_dec, mem_rw_dec, mem_mux_sel_dec, RW_dec, reset, flag_ex);

//output variable declaration
output reg [7:0] ans_ex, data_out, B_Bypass;
output [3:0] flag_ex;
output reg mem_en_ex, mem_rw_ex, mem_mux_sel_ex;
output reg [4:0] RW_ex;

//input variable declaration
input [7:0] A, B, data_in;
input [4:0] op_dec, RW_dec;
input clk, mem_en_dec, mem_rw_dec, mem_mux_sel_dec, reset;

//wire declaration
wire [7:0] a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27;
wire [3:0] f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f17, f16, f18, f19, f20, f21, f22, f23, f24, f25, f26, f27;
wire [6:0] cin1, cin2;
wire [7:0] ans_temp, B2, ans_t, B_temp;	
wire [7:0] data_out_buff, data_out_temp;	
wire [4:0] RW_dec_temp;	
wire mem_en_dec_temp, mem_rw_dec_temp, mem_mux_sel_dec_temp;
	
//register declaration	
reg [3:0] flag_temp;

// Body of code starts from here

//ternary operation of main output
assign ans_temp = (op_dec==5'b00000) ? a0: 
						(op_dec==5'b00001) ? a1: 
						(op_dec==5'b00010) ? a2: 
						(op_dec==5'b00100) ? a3: 
						(op_dec==5'b00101) ? a4: 
						(op_dec==5'b00110) ? a5: 
						(op_dec==5'b00111) ? a6: 
						(op_dec==5'b01000) ? a7: 
						(op_dec==5'b01001) ? a8: 
						(op_dec==5'b01010) ? a9: 
						(op_dec==5'b01100) ? a10: 
						(op_dec==5'b01101) ? a11: 
						(op_dec==5'b01110) ? a12: 
						(op_dec==5'b01111) ? a13: 
						(op_dec==5'b10000) ? a14: 
						(op_dec==5'b10001) ? a15: 
						(op_dec==5'b10100) ? a16: 
						(op_dec==5'b10101) ? a17: 
						(op_dec==5'b10110) ? a18: 
						(op_dec==5'b10111) ? a19: 
						(op_dec==5'b11000) ? a20: 
						(op_dec==5'b11001) ? a21: 
						(op_dec==5'b11010) ? a22: 
						(op_dec==5'b11011) ? a23: 
						(op_dec==5'b11100) ? a24: 
						(op_dec==5'b11101) ? a25: 
						(op_dec==5'b11110) ? a26: 
						(op_dec==5'b11111) ? a27: 0;

//ternary operation of flag output
assign flag_ex = (op_dec==5'b00000) ? f0: 
					  (op_dec==5'b00001) ? f1:
					  (op_dec==5'b00010) ? f2 : 
					  (op_dec==5'b00100) ? f3 : 
					  (op_dec==5'b00101) ? f4 : 
					  (op_dec==5'b00110) ? f5 : 
					  (op_dec==5'b00111) ? f6 : 
					  (op_dec==5'b01000) ? f7 : 
					  (op_dec==5'b01001) ? f8 : 
					  (op_dec==5'b01010) ? f9 : 
					  (op_dec==5'b01100) ? f10 : 
					  (op_dec==5'b01101) ? f11 : 
					  (op_dec==5'b01110) ? f12 : 
					  (op_dec==5'b01111) ? f13 : 
					  (op_dec==5'b10000) ? f14: 
					  (op_dec==5'b10001) ? f15 : 
					  (op_dec==5'b10100) ? f16 : 
					  (op_dec==5'b10101) ? f17 : 
					  (op_dec==5'b10110) ? f18 : 
					  (op_dec==5'b10111) ? f19 : 
					  (op_dec==5'b11000) ? f20 : 
					  (op_dec==5'b11001) ? f21 : 
					  (op_dec==5'b11010) ? f22 : 
					  (op_dec==5'b11011) ? f23 : 
					  (op_dec==5'b11100) ? f24 : 
					  (op_dec==5'b11101) ? f25 : 
					  (op_dec==5'b11110) ? f26 : 
					  (op_dec==5'b11111) ? f27 : 0;

//Instruction ADD,ADI
//logic for ans_ex
assign {cin1[0], a0[0]} = A[0] + B[0];
assign {cin1[1], a0[1]} = A[1] + B[1] + cin1[0];
assign {cin1[2], a0[2]} = A[2] + B[2] + cin1[1];
assign {cin1[3], a0[3]} = A[3]+ B[3] + cin1[2];
assign {cin1[4], a0[4]} = A[4]+ B[4] + cin1[3];
assign {cin1[5], a0[5]} = A[5]+ B[5] + cin1[4];
assign {cin1[6], a0[6]} = A[6]+ B[6] + cin1[5];
//logic for flag of ADD instruction and ADI instruction 
assign {f0[0], a0[7]} = A[7] + B[7] + cin1[6];								//carry flag
assign f0[1] = ~(a0[0]|a0[1]|a0[2]|a0[3]|a0[4]|a0[5]|a0[6]|a0[7]);	//zero flag
assign f0[2]= f0[0] ^ cin1[6];													//overflow flag
assign f0[3] = a0[0]^a0[1]^a0[2]^a0[3]^a0[4]^a0[5]^a0[6]^a0[7];		//parity flag

//Instruction SUB,SBI
//logic for ans_ex
assign B2=~B+1'b1;
assign {cin2[0], a1[0]} = A[0] + B2[0];
assign {cin2[1], a1[1]} = A[1] + B2[1] + cin2[0];
assign {cin2[2], a1[2]} = A[2] + B2[2] + cin2[1];
assign {cin2[3], a1[3]} = A[3]+ B2[3] + cin2[2];
assign {cin2[4], a1[4]} = A[4]+ B2[4] + cin2[3];
assign {cin2[5], a1[5]} = A[5]+ B2[5] + cin2[4];
assign {cin2[6], a1[6]} = A[6]+ B2[6] + cin2[5];
//logic for flag of SUB instruction and SBI instruction 
assign {f1[0], a1[7]} = A[7] + B2[7] + cin2[6];								//carry flag
assign f1[1] = ~(a1[0]|a1[1]|a1[2]|a1[3]|a1[4]|a1[5]|a1[6]|a1[7]);	//zero flag
assign f1[2]= f1[0] ^ cin2[6];													//overflow flag
assign f1[3] = a1[0]^a1[1]^a1[2]^a1[3]^a1[4]^a1[5]^a1[6]^a1[7];		//parity flag

//Instruction MOV,MVI
//logic for ans_ex
assign a2 = B;
//logic for flag of MOV instruction and MVI instruction
assign f2[0] = 0;																		//carry flag
assign f2[1] = ~(a2[0]|a2[1]|a2[2]|a2[3]|a2[4]|a2[5]|a2[6]|a2[7]);	//zero flag
assign f2[2] = 0;																		//overflow flag
assign f2[3] = a2[0]^a2[1]^a2[2]^a2[3]^a2[4]^a2[5]^a2[6]^a2[7];		//parity flag
	
//Instruction AND,ANI
//logic for ans_ex
assign a3 = A&B;
//logic for flag of AND instruction and ANI instruction
assign f3[0] = 0;																		//carry flag
assign f3[1] = ~(a3[0]|a3[1]|a3[2]|a3[3]|a3[4]|a3[5]|a3[6]|a3[7]);	//zero flag
assign f3[2] = 0;																		//overflow flag
assign f3[3] = a3[0]^a3[1]^a3[2]^a3[3]^a3[4]^a3[5]^a3[6]^a3[7];		//parity flag

//Instruction OR,ORI
//logic for ans_ex
assign a4 = A|B;
//logic for flag of OR instruction and ORI instruction 
assign f4[0] = 0;																		//carry flag				
assign f4[1] = ~(a4[0]|a4[1]|a4[2]|a4[3]|a4[4]|a4[5]|a4[6]|a4[7]);	//zero flag
assign f4[2] = 0;																		//overflow flag
assign f4[3] = a4[0]^a4[1]^a4[2]^a4[3]^a4[4]^a4[5]^a4[6]^a4[7];		//parity flag

//Instruction XOR,XRI
//logic for ans_ex
assign a5 = A^B;
//logic for flag of XOR instruction and XRI instruction 
assign f5[0] = 0;																		//carry flag
assign f5[1] = ~(a5[0]|a5[1]|a5[2]|a5[3]|a5[4]|a5[5]|a5[6]|a5[7]);	//zero flag
assign f5[2] = 0;																		//overflow flag
assign f5[3] = a5[0]^a5[1]^a5[2]^a5[3]^a5[4]^a5[5]^a5[6]^a5[7];		//parity flag

//Instruction NOT,NTI
//logic for ans_ex
assign a6 = ~B;
//logic for flag of NOT instruction and NTI instruction 
assign f6[0] = 0;																		//carry flag
assign f6[1] = ~(a6[0]|a6[1]|a6[2]|a6[3]|a6[4]|a6[5]|a6[6]|a6[7]);	//zero flag
assign f6[2] = 0;																		//overflow flag
assign f6[3] = a6[0]^a6[1]^a6[2]^a6[3]^a6[4]^a6[5]^a6[6]^a6[7];		//parity flag

//Instruction ADI
assign a7 = a0;
//flag for ADI instruction
assign f7 = f0;

//Instruction SBI
assign a8 = a1;
//flag for SBI instruction
assign f8 = f1;

//Instruction MVI
assign a9 = a2;
//flag for MVI instruction
assign f9 = f2;

//Instruction ANI
assign a10 = a3;
//flag for ANI instruction
assign f10 = f3;

//Instruction ORI
assign a11 = a4;
//flag for ORI instruction
assign f11 = f4;

//Instruction XRI
assign a12 = a5;
//flag for XRI instruction
assign f12 = f5;

//Instruction NTI
assign a13 = a6;
//flag for NTI instruction
assign f13 = f6;

//Instruction RET
assign a14 = ans_ex;
//flag for RET instruction
assign f14 = 0;

//Instruction HLT
assign a15 = ans_ex;
//flag for HLT instruction
assign f15 = 0;

//Instruction LD
assign a16 = A;
//flag for LD instruction
assign f16 = flag_temp;

//Instruction ST
assign a17 = A;
//flag for ST instruction
assign f17 = flag_temp;

//Instruction IN
//logic for ans_ex
assign a18 = data_in;
//flag for IN instruction
assign f18[0] = 0;																				//carry flag													
assign f18[1] = ~(a18[0]|a18[1]|a18[2]|a18[3]|a18[4]|a18[5]|a18[6]|a18[7]);	//zero flag	
assign f18[2] = 0;																				//overflow flag
assign f18[3] = a18[0]^a18[1]^a18[2]^a18[3]^a18[4]^a18[5]^a18[6]^a18[7];		//parity flag	

//Instruction OUT
assign a19 = ans_ex;
//flag for OUT instruction
assign f19 = flag_temp;

//Instruction JMP
assign a20 = ans_ex;
//flag for JMP instruction
assign f20 = flag_temp;

//Instruction LS
//logic for ans_ex
assign a21 = A<<B;
//flag for LS instruction
assign f21[0] = 0;																					//carry flag
assign f21[1] = ~(a21[0]|a21[1]|a21[2]|a21[3]|a21[4]|a21[5]|a21[6]|a21[7]);		//zero flag 
assign f21[2] = 0;																					//overflow flag
assign f21[3] = a21[0]^a21[1]^a21[2]^a21[3]^a21[4]^a21[5]^a21[6]^a21[7];			//parity flag

//Instruction RS
//logic for ans_ex
assign a22 = A>>B;
//flag for RS instruction
assign f22[0] = 0;																					//carry flag
assign f22[1] = ~(a22[0]|a22[1]|a22[2]|a22[3]|a22[4]|a22[5]|a22[6]|a22[7]);		//zero flag
assign f22[2] = 0;																					//overflow flag
assign f22[3] = a22[0]^a22[1]^a22[2]^a22[3]^a22[4]^a22[5]^a22[6]^a22[7];			//parity flag

//Instruction RSA
//logic for ans_ex
assign a23 = (B[3:0] == 4'b0000) ?A:
				 (B[3:0] == 4'b0001) ?{A[7],A[7],A[6:1]}:
				 (B[3:0] == 4'b0010) ?{A[7],A[7],A[7],A[6:2]}:
				 (B[3:0] == 4'b0011) ?{A[7],A[7],A[7],A[7],A[6:3]}:
				 (B[3:0] == 4'b0100) ?{A[7],A[7],A[7],A[7],A[7],A[6:4]}:
				 (B[3:0] == 4'b0101) ?{A[7],A[7],A[7],A[7],A[7],A[7],A[6:5]}:
				 (B[3:0] == 4'b0110) ?{A[7],A[7],A[7],A[7],A[7],A[7],A[7],A[6]}:{A[7],A[7],A[7],A[7],A[7],A[7],A[7],A[7]};
//flag for RSA instruction
assign f23[0] = 0;																					//carry flag
assign f23[1] = ~(a23[0]|a23[1]|a23[2]|a23[3]|a23[4]|a23[5]|a23[6]|a23[7]);		//zero flag
assign f23[2] = 0;																					//overflow flag
assign f23[3] = a23[0]^a23[1]^a23[2]^a23[3]^a23[4]^a23[5]^a23[6]^a23[7];			//parity flag

//Instruction JC
assign a24 = ans_ex;
//flag for JC instruction
assign f24 = flag_temp;

//Instruction JNC
assign a25 = ans_ex;
//flag for JNC instruction
assign f25 = flag_temp;

//Instruction JZ
assign a26 = ans_ex;
//flag for JZ instruction
assign f26 = flag_temp;

//Instruction JNZ
assign a27 = ans_ex;
//flag for JNZ instruction
assign f27 = flag_temp;

//logic for data_out_buff
assign data_out_buff = (op_dec==5'b10111 ? A : data_out);	

//when reset is zero then only reset all data from the register
assign ans_t = (reset == 1) ? ans_temp : 0;
assign B_temp = (reset == 1) ? B : 0;
assign data_out_temp = (reset == 1) ? data_out_buff : 0;
assign mem_en_dec_temp = (reset == 1) ? mem_en_dec : 0;
assign mem_rw_dec_temp = (reset == 1) ? mem_rw_dec : 0;
assign mem_mux_sel_dec_temp = (reset == 1) ? mem_mux_sel_dec : 0;
assign RW_dec_temp = (reset == 1) ? RW_dec : 0;

//Register block
always@(posedge clk) //Value will change at the positive edge of the clock
begin
		flag_temp <= flag_ex;
		ans_ex <= ans_t;
		B_Bypass <= B_temp;
		data_out <= data_out_temp;
		mem_en_ex <= mem_en_dec_temp;
		mem_rw_ex <= mem_rw_dec_temp;
		mem_mux_sel_ex <= mem_mux_sel_dec_temp;
		RW_ex <= RW_dec_temp;
end

endmodule //body of code ends here
