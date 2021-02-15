(* blackbox *)
module TEST_BEL(input wire A, output wire Q);
endmodule

module top(output wire q);
TEST_BEL cell_i(.A(q), .Q(q));
endmodule
