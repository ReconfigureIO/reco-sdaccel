/* verilator lint_off DECLFILENAME */
`timescale 1ns/1ps

module AND2 (o, a, b);
	output o;
	input a, b;
	and (o, a, b);
endmodule

module AND3 (o, a, b, c);
	output o;
	input a, b, c;
	and (o, a, b, c);
endmodule

module NAND2 (o, a, b);
	output o;
	input a, b;
	nand (o, a, b);
endmodule

module NAND3 (o, a, b, c);
	output o;
	input a, b, c;
	nand (o, a, b, c);
endmodule

module OR2 (o, a, b);
	output o;
	input a, b;
	or (o, a, b);
endmodule

module OR3 (o, a, b, c);
	output o;
	input a, b, c;
	or (o, a, b, c);
endmodule

module NOR2 (o, a, b);
	output o;
	input a, b;
	nor (o, a, b);
endmodule

module NOR3 (o, a, b, c);
	output o;
	input a, b, c;
	nor (o, a, b, c);
endmodule

module AO22 (o, a1, a2, b1, b2);
	output o;
	input a1, a2, b1, b2;
	wire a, b;
	and (a, a1, a2);
	and (b, b1, b2);
	or (o, a, b);
endmodule

module AO222 (o, a1, a2, b1, b2, c1, c2);
	output o;
	input a1, a2, b1, b2, c1, c2;
	wire a, b, c;
	and (a, a1, a2);
	and (b, b1, b2);
	and (c, c1, c2);
	or (o, a, b, c);
endmodule

module BUFF (o, i);
	output o;
	input i;
	assign o = i;
endmodule

module INV (o, i);
	output o;
	input i;
	not (o, i);
endmodule

module GND (o);
	output o;
	supply0 gnd;
	assign o = gnd;
endmodule
