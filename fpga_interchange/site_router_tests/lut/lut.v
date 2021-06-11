module top(input [5:0] lut_1_in, input [4:0] lut_2_in, output lut_1_out, output lut_2_out);

(* keep *)
LUT6 #(.INIT(64'hFFFFFFFFFFFFFFFF)) lut_1 (
 .I0(lut_1_in[0]),
 .I1(lut_1_in[1]),
 .I2(lut_1_in[2]),
 .I3(lut_1_in[3]),
 .I4(lut_1_in[4]),
 .I5(lut_1_in[5]),
 .O(lut_1_out)
);

(* keep *)
LUT5 #(.INIT(32'h0)) lut_2 (
 .I0(lut_1_in[0]),
 .I1(lut_2_in[1]),
 .I2(lut_2_in[2]),
 .I3(lut_2_in[3]),
 .I4(lut_2_in[4]),
 .O(lut_2_out)
);

endmodule
