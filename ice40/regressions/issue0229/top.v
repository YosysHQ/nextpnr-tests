/* Machine-generated using Migen */
module top(
	inout clk_if,
	inout i2c_scl,
	inout i2c_sda,
	inout fx2_sloe,
	inout fx2_slrd,
	inout fx2_slwr,
	inout fx2_pktend,
	inout [1:0] fx2_fifoadr,
	inout [3:0] fx2_flag,
	inout [7:0] fx2_fd,
	inout port_a_io,
	output port_a_oe,
	inout port_a_io_1,
	output port_a_oe_1,
	inout port_a_io_2,
	output port_a_oe_2,
	inout port_a_io_3,
	output port_a_oe_3,
	inout port_a_io_4,
	output port_a_oe_4
);

wire sys_clk;
wire sys_rst;
wire por_clk;
reg [10:0] reset_delay = 11'd2047;
wire tstriple0_o;
wire tstriple0_oe;
wire tstriple0_i;
wire tstriple1_o;
wire tstriple1_oe;
wire tstriple1_i;
wire [6:0] i2c_slave_address;
reg i2c_slave_start;
wire i2c_slave_stop;
wire i2c_slave_write;
reg [7:0] i2c_slave_data_i = 8'd0;
reg i2c_slave_ack_o;
wire i2c_slave_read;
wire [7:0] i2c_slave_data_o;
wire i2c_slave_scl_i;
reg i2c_slave_scl_o = 1'd1;
wire i2c_slave_sda_i;
reg i2c_slave_sda_o = 1'd1;
wire i2c_slave_bus_sample;
wire i2c_slave_bus_setup;
wire i2c_slave_bus_start;
wire i2c_slave_bus_stop;
reg i2c_slave_scl_r = 1'd1;
reg i2c_slave_sda_r = 1'd1;
reg [2:0] i2c_slave_bitno = 3'd0;
reg [7:0] i2c_slave_shreg_i = 8'd0;
reg [7:0] i2c_slave_shreg_o = 8'd0;
reg i2c_slave_is_el0 = 1'd1;
wire i2c_slave_is_el1;
reg i2c_slave_is_el2 = 1'd0;
wire i2c_slave_is_el3;
wire i2c_slave_is_el4;
reg [7:0] registers_address = 8'd0;
wire fifoadr_t_registeredtristate_oe;
wire [1:0] fifoadr_t_registeredtristate0;
wire [1:0] fifoadr_t_registeredtristate1;
reg flag_t_registeredtristate_oe = 1'd0;
reg [3:0] flag_t_registeredtristate0 = 4'd0;
wire [3:0] flag_t_registeredtristate1;
wire fd_t_registeredtristate_oe;
wire [7:0] fd_t_registeredtristate0;
wire [7:0] fd_t_registeredtristate1;
wire sloe_t_registeredtristate_oe;
wire sloe_t_registeredtristate0;
wire sloe_t_registeredtristate1;
wire slrd_t_registeredtristate_oe;
wire slrd_t_registeredtristate0;
wire slrd_t_registeredtristate1;
wire slwr_t_registeredtristate_oe;
wire slwr_t_registeredtristate0;
wire slwr_t_registeredtristate1;
wire pktend_t_registeredtristate_oe;
wire pktend_t_registeredtristate0;
wire pktend_t_registeredtristate1;
reg dummyfifo0_writable = 1'd0;
reg fifowithoverflow0_we;
reg [7:0] fifowithoverflow0_din;
reg dummyfifo1_writable = 1'd0;
reg fifowithoverflow1_we;
reg [7:0] fifowithoverflow1_din;
reg dummyfifo2_re;
reg dummyfifo2_readable = 1'd0;
reg [7:0] dummyfifo2_dout = 8'd0;
reg fifowithflush0_flushed;
reg fifowithflush0_queued = 1'd0;
reg dummyfifo3_re;
reg dummyfifo3_readable = 1'd0;
reg [7:0] dummyfifo3_dout = 8'd0;
reg fifowithflush1_flushed;
reg fifowithflush1_queued = 1'd0;
reg reg_1 = 1'd1;
wire hs_o;
wire hs_oe;
wire hs_i;
wire vs_o;
wire vs_oe;
wire vs_i;
wire r_o;
wire r_oe;
wire r_i;
wire g_o;
wire g_oe;
wire g_i;
wire b_o;
wire b_oe;
wire b_i;
reg hs = 1'd0;
reg vs = 1'd0;
reg r = 1'd0;
reg g = 1'd0;
reg b = 1'd0;
wire pix_clk;
reg [9:0] h_ctr = 10'd0;
reg [9:0] v_ctr = 10'd0;
reg h_en = 1'd0;
reg v_en = 1'd0;
wire h_stb;
wire v_stb;
wire pix_r;
wire pix_g;
wire pix_b;
wire reset;
reg [2:0] i2cslave_state = 3'd0;
reg [2:0] i2cslave_next_state;
reg [2:0] i2c_slave_bitno_i2cslave_next_value0;
reg i2c_slave_bitno_i2cslave_next_value_ce0;
reg [7:0] i2c_slave_shreg_i_i2cslave_next_value1;
reg i2c_slave_shreg_i_i2cslave_next_value_ce1;
reg i2c_slave_sda_o_i2cslave_next_value2;
reg i2c_slave_sda_o_i2cslave_next_value_ce2;
reg [7:0] i2c_slave_shreg_o_i2cslave_next_value3;
reg i2c_slave_shreg_o_i2cslave_next_value_ce3;
reg [7:0] i2c_slave_data_i_i2cslave_next_value4;
reg i2c_slave_data_i_i2cslave_next_value_ce4;
reg latch_addr = 1'd0;
wire [3:0] fx2arbiter_flag;
reg [1:0] fx2arbiter_addr = 2'd0;
reg fx2arbiter_fdoe = 1'd0;
reg fx2arbiter_sloe = 1'd0;
reg fx2arbiter_slrd;
reg fx2arbiter_slwr;
reg fx2arbiter_pend;
wire [3:0] fx2arbiter_rdy;
reg [1:0] fx2arbiter_naddr;
reg [2:0] fx2arbiter_state = 3'd0;
reg [2:0] fx2arbiter_next_state;
reg fx2arbiter_sloe_fx2arbiter_next_value0;
reg fx2arbiter_sloe_fx2arbiter_next_value_ce0;
reg fx2arbiter_fdoe_fx2arbiter_next_value1;
reg fx2arbiter_fdoe_fx2arbiter_next_value_ce1;
reg [1:0] fx2arbiter_addr_fx2arbiter_next_value2;
reg fx2arbiter_addr_fx2arbiter_next_value_ce2;
reg basiclowerer_array_muxed0;
wire [7:0] basiclowerer_array_muxed1;
wire basiclowerer_array_muxed2;
reg [7:0] basiclowerer_array_muxed3;
reg cases_array_muxed0;
reg cases_array_muxed1;
reg cases_array_muxed2;
reg cases_array_muxed3;
reg cases_array_muxed4;
reg cases_array_muxed5;
reg basiclowerer_array_muxed4 = 1'd0;
reg multiregimpl0_regs0 = 1'd1;
reg multiregimpl0_regs1 = 1'd1;
reg multiregimpl1_regs0 = 1'd1;
reg multiregimpl1_regs1 = 1'd1;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign i2c_slave_address = 4'd8;
assign por_clk = sys_clk;
assign sys_rst = (reset_delay != 1'd0);
assign i2c_slave_stop = i2c_slave_is_el0;
assign i2c_slave_write = i2c_slave_is_el2;
assign i2c_slave_read = i2c_slave_is_el4;
assign tstriple0_o = 1'd0;
assign tstriple0_oe = (~i2c_slave_scl_o);
assign tstriple1_o = 1'd0;
assign tstriple1_oe = (~i2c_slave_sda_o);
assign i2c_slave_bus_sample = ((~i2c_slave_scl_r) & i2c_slave_scl_i);
assign i2c_slave_bus_setup = (i2c_slave_scl_r & (~i2c_slave_scl_i));
assign i2c_slave_bus_start = ((i2c_slave_scl_i & i2c_slave_sda_r) & (~i2c_slave_sda_i));
assign i2c_slave_bus_stop = ((i2c_slave_scl_i & (~i2c_slave_sda_r)) & i2c_slave_sda_i);
assign i2c_slave_is_el1 = ((~(i2cslave_state == 1'd0)) & (i2cslave_next_state == 1'd0));
assign i2c_slave_is_el3 = ((~(i2cslave_state == 3'd5)) & (i2cslave_next_state == 3'd5));
assign i2c_slave_is_el4 = ((~(i2cslave_state == 3'd6)) & (i2cslave_next_state == 3'd6));

// synthesis translate_off
reg dummy_d;
// synthesis translate_on
always @(*) begin
	i2c_slave_start <= 1'd0;
	i2cslave_next_state <= 3'd0;
	i2c_slave_bitno_i2cslave_next_value0 <= 3'd0;
	i2c_slave_bitno_i2cslave_next_value_ce0 <= 1'd0;
	i2c_slave_shreg_i_i2cslave_next_value1 <= 8'd0;
	i2c_slave_shreg_i_i2cslave_next_value_ce1 <= 1'd0;
	i2c_slave_sda_o_i2cslave_next_value2 <= 1'd0;
	i2c_slave_sda_o_i2cslave_next_value_ce2 <= 1'd0;
	i2c_slave_shreg_o_i2cslave_next_value3 <= 8'd0;
	i2c_slave_shreg_o_i2cslave_next_value_ce3 <= 1'd0;
	i2c_slave_data_i_i2cslave_next_value4 <= 8'd0;
	i2c_slave_data_i_i2cslave_next_value_ce4 <= 1'd0;
	i2cslave_next_state <= i2cslave_state;
	case (i2cslave_state)
		1'd1: begin
			if (i2c_slave_bus_stop) begin
				i2cslave_next_state <= 1'd0;
			end else begin
				if (i2c_slave_bus_setup) begin
					i2c_slave_bitno_i2cslave_next_value0 <= 1'd0;
					i2c_slave_bitno_i2cslave_next_value_ce0 <= 1'd1;
					i2cslave_next_state <= 2'd2;
				end
			end
		end
		2'd2: begin
			if (i2c_slave_bus_stop) begin
				i2cslave_next_state <= 1'd0;
			end else begin
				if (i2c_slave_bus_start) begin
					i2cslave_next_state <= 1'd1;
				end else begin
					if (i2c_slave_bus_sample) begin
						i2c_slave_shreg_i_i2cslave_next_value1 <= ((i2c_slave_shreg_i <<< 1'd1) | i2c_slave_sda_i);
						i2c_slave_shreg_i_i2cslave_next_value_ce1 <= 1'd1;
					end else begin
						if (i2c_slave_bus_setup) begin
							i2c_slave_bitno_i2cslave_next_value0 <= (i2c_slave_bitno + 1'd1);
							i2c_slave_bitno_i2cslave_next_value_ce0 <= 1'd1;
							if ((i2c_slave_bitno == 3'd7)) begin
								if ((i2c_slave_shreg_i[7:1] == i2c_slave_address)) begin
									i2c_slave_sda_o_i2cslave_next_value2 <= 1'd0;
									i2c_slave_sda_o_i2cslave_next_value_ce2 <= 1'd1;
									i2cslave_next_state <= 2'd3;
								end else begin
									i2cslave_next_state <= 1'd0;
								end
							end
						end
					end
				end
			end
		end
		2'd3: begin
			if (i2c_slave_bus_stop) begin
				i2cslave_next_state <= 1'd0;
			end else begin
				if (i2c_slave_bus_start) begin
					i2cslave_next_state <= 1'd1;
				end else begin
					if (i2c_slave_bus_setup) begin
						if ((~i2c_slave_shreg_i[0])) begin
							i2c_slave_start <= 1'd1;
							i2c_slave_sda_o_i2cslave_next_value2 <= 1'd1;
							i2c_slave_sda_o_i2cslave_next_value_ce2 <= 1'd1;
							i2cslave_next_state <= 3'd4;
						end
					end else begin
						if (i2c_slave_bus_sample) begin
							if (i2c_slave_shreg_i[0]) begin
								i2c_slave_start <= 1'd1;
								i2cslave_next_state <= 3'd6;
								i2c_slave_shreg_o_i2cslave_next_value3 <= i2c_slave_data_o;
								i2c_slave_shreg_o_i2cslave_next_value_ce3 <= 1'd1;
							end
						end
					end
				end
			end
		end
		3'd4: begin
			if (i2c_slave_bus_stop) begin
				i2cslave_next_state <= 1'd0;
			end else begin
				if (i2c_slave_bus_start) begin
					i2cslave_next_state <= 1'd1;
				end else begin
					if (i2c_slave_bus_sample) begin
						i2c_slave_shreg_i_i2cslave_next_value1 <= ((i2c_slave_shreg_i <<< 1'd1) | i2c_slave_sda_i);
						i2c_slave_shreg_i_i2cslave_next_value_ce1 <= 1'd1;
					end else begin
						if (i2c_slave_bus_setup) begin
							i2c_slave_bitno_i2cslave_next_value0 <= (i2c_slave_bitno + 1'd1);
							i2c_slave_bitno_i2cslave_next_value_ce0 <= 1'd1;
							if ((i2c_slave_bitno == 3'd7)) begin
								i2c_slave_data_i_i2cslave_next_value4 <= i2c_slave_shreg_i;
								i2c_slave_data_i_i2cslave_next_value_ce4 <= 1'd1;
								i2cslave_next_state <= 3'd5;
							end
						end
					end
				end
			end
		end
		3'd5: begin
			if (i2c_slave_bus_stop) begin
				i2cslave_next_state <= 1'd0;
			end else begin
				if (i2c_slave_bus_start) begin
					i2cslave_next_state <= 1'd1;
				end else begin
					if (((~i2c_slave_scl_i) & i2c_slave_ack_o)) begin
						i2c_slave_sda_o_i2cslave_next_value2 <= 1'd0;
						i2c_slave_sda_o_i2cslave_next_value_ce2 <= 1'd1;
					end else begin
						if (i2c_slave_bus_setup) begin
							i2c_slave_sda_o_i2cslave_next_value2 <= 1'd1;
							i2c_slave_sda_o_i2cslave_next_value_ce2 <= 1'd1;
							i2cslave_next_state <= 3'd4;
						end
					end
				end
			end
		end
		3'd6: begin
			if (i2c_slave_bus_stop) begin
				i2cslave_next_state <= 1'd0;
			end else begin
				if (i2c_slave_bus_start) begin
					i2cslave_next_state <= 1'd1;
				end else begin
					if (i2c_slave_bus_setup) begin
						i2c_slave_bitno_i2cslave_next_value0 <= (i2c_slave_bitno + 1'd1);
						i2c_slave_bitno_i2cslave_next_value_ce0 <= 1'd1;
						i2c_slave_sda_o_i2cslave_next_value2 <= i2c_slave_shreg_o[7];
						i2c_slave_sda_o_i2cslave_next_value_ce2 <= 1'd1;
						i2c_slave_shreg_o_i2cslave_next_value3 <= (i2c_slave_shreg_o <<< 1'd1);
						i2c_slave_shreg_o_i2cslave_next_value_ce3 <= 1'd1;
					end else begin
						if (i2c_slave_bus_sample) begin
							if ((i2c_slave_bitno == 1'd0)) begin
								i2c_slave_sda_o_i2cslave_next_value2 <= 1'd1;
								i2c_slave_sda_o_i2cslave_next_value_ce2 <= 1'd1;
								i2cslave_next_state <= 3'd7;
							end
						end
					end
				end
			end
		end
		3'd7: begin
			if (i2c_slave_bus_stop) begin
				i2cslave_next_state <= 1'd0;
			end else begin
				if (i2c_slave_bus_start) begin
					i2cslave_next_state <= 1'd1;
				end else begin
					if (i2c_slave_bus_sample) begin
						if ((~i2c_slave_sda_i)) begin
							i2cslave_next_state <= 3'd6;
						end else begin
							i2cslave_next_state <= 1'd0;
						end
					end
				end
			end
		end
		default: begin
			if (i2c_slave_bus_start) begin
				i2cslave_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d <= dummy_s;
// synthesis translate_on
end
assign i2c_slave_data_o = basiclowerer_array_muxed0;

// synthesis translate_off
reg dummy_d_1;
// synthesis translate_on
always @(*) begin
	i2c_slave_ack_o <= 1'd0;
	if (i2c_slave_write) begin
		if ((latch_addr & (i2c_slave_data_i < 1'd1))) begin
			i2c_slave_ack_o <= 1'd1;
		end else begin
			if ((~latch_addr)) begin
				i2c_slave_ack_o <= 1'd1;
			end
		end
	end
// synthesis translate_off
	dummy_d_1 <= dummy_s;
// synthesis translate_on
end
assign fifoadr_t_registeredtristate_oe = 1'd1;
assign fifoadr_t_registeredtristate0 = fx2arbiter_addr;
assign fx2arbiter_flag = flag_t_registeredtristate1;
assign fx2arbiter_rdy = ({(dummyfifo3_readable | fifowithflush1_queued), (dummyfifo2_readable | fifowithflush0_queued), dummyfifo1_writable, dummyfifo0_writable} & fx2arbiter_flag);
assign basiclowerer_array_muxed1 = fd_t_registeredtristate1;

// synthesis translate_off
reg dummy_d_2;
// synthesis translate_on
always @(*) begin
	fifowithoverflow0_din <= 8'd0;
	fifowithoverflow1_din <= 8'd0;
	case (fx2arbiter_addr[0])
		1'd0: begin
			fifowithoverflow0_din <= basiclowerer_array_muxed1;
		end
		default: begin
			fifowithoverflow1_din <= basiclowerer_array_muxed1;
		end
	endcase
// synthesis translate_off
	dummy_d_2 <= dummy_s;
// synthesis translate_on
end
assign basiclowerer_array_muxed2 = fx2arbiter_pend;

// synthesis translate_off
reg dummy_d_3;
// synthesis translate_on
always @(*) begin
	fifowithflush0_flushed <= 1'd0;
	fifowithflush1_flushed <= 1'd0;
	case (fx2arbiter_addr[0])
		1'd0: begin
			fifowithflush0_flushed <= basiclowerer_array_muxed2;
		end
		default: begin
			fifowithflush1_flushed <= basiclowerer_array_muxed2;
		end
	endcase
// synthesis translate_off
	dummy_d_3 <= dummy_s;
// synthesis translate_on
end
assign fd_t_registeredtristate0 = basiclowerer_array_muxed3;
assign fd_t_registeredtristate_oe = fx2arbiter_fdoe;
assign sloe_t_registeredtristate_oe = 1'd1;
assign sloe_t_registeredtristate0 = (~fx2arbiter_sloe);
assign slrd_t_registeredtristate_oe = 1'd1;
assign slrd_t_registeredtristate0 = (~fx2arbiter_slrd);
assign slwr_t_registeredtristate_oe = 1'd1;
assign slwr_t_registeredtristate0 = (~fx2arbiter_slwr);
assign pktend_t_registeredtristate_oe = 1'd1;
assign pktend_t_registeredtristate0 = (~fx2arbiter_pend);

// synthesis translate_off
reg dummy_d_4;
// synthesis translate_on
always @(*) begin
	fx2arbiter_naddr <= 2'd0;
	case ({fx2arbiter_addr, fx2arbiter_rdy})
		1'd0: begin
			fx2arbiter_naddr <= 1'd1;
		end
		1'd1: begin
			fx2arbiter_naddr <= 1'd0;
		end
		2'd2: begin
			fx2arbiter_naddr <= 1'd1;
		end
		2'd3: begin
			fx2arbiter_naddr <= 1'd0;
		end
		3'd4: begin
			fx2arbiter_naddr <= 2'd2;
		end
		3'd5: begin
			fx2arbiter_naddr <= 1'd0;
		end
		3'd6: begin
			fx2arbiter_naddr <= 1'd1;
		end
		3'd7: begin
			fx2arbiter_naddr <= 1'd0;
		end
		4'd8: begin
			fx2arbiter_naddr <= 2'd3;
		end
		4'd9: begin
			fx2arbiter_naddr <= 1'd0;
		end
		4'd10: begin
			fx2arbiter_naddr <= 1'd1;
		end
		4'd11: begin
			fx2arbiter_naddr <= 1'd0;
		end
		4'd12: begin
			fx2arbiter_naddr <= 2'd2;
		end
		4'd13: begin
			fx2arbiter_naddr <= 1'd0;
		end
		4'd14: begin
			fx2arbiter_naddr <= 1'd1;
		end
		4'd15: begin
			fx2arbiter_naddr <= 1'd0;
		end
		5'd16: begin
			fx2arbiter_naddr <= 2'd2;
		end
		5'd17: begin
			fx2arbiter_naddr <= 1'd0;
		end
		5'd18: begin
			fx2arbiter_naddr <= 1'd1;
		end
		5'd19: begin
			fx2arbiter_naddr <= 1'd1;
		end
		5'd20: begin
			fx2arbiter_naddr <= 2'd2;
		end
		5'd21: begin
			fx2arbiter_naddr <= 2'd2;
		end
		5'd22: begin
			fx2arbiter_naddr <= 1'd1;
		end
		5'd23: begin
			fx2arbiter_naddr <= 1'd1;
		end
		5'd24: begin
			fx2arbiter_naddr <= 2'd3;
		end
		5'd25: begin
			fx2arbiter_naddr <= 2'd3;
		end
		5'd26: begin
			fx2arbiter_naddr <= 1'd1;
		end
		5'd27: begin
			fx2arbiter_naddr <= 1'd1;
		end
		5'd28: begin
			fx2arbiter_naddr <= 2'd2;
		end
		5'd29: begin
			fx2arbiter_naddr <= 2'd2;
		end
		5'd30: begin
			fx2arbiter_naddr <= 1'd1;
		end
		5'd31: begin
			fx2arbiter_naddr <= 1'd1;
		end
		6'd32: begin
			fx2arbiter_naddr <= 2'd3;
		end
		6'd33: begin
			fx2arbiter_naddr <= 1'd0;
		end
		6'd34: begin
			fx2arbiter_naddr <= 1'd1;
		end
		6'd35: begin
			fx2arbiter_naddr <= 1'd0;
		end
		6'd36: begin
			fx2arbiter_naddr <= 2'd2;
		end
		6'd37: begin
			fx2arbiter_naddr <= 2'd2;
		end
		6'd38: begin
			fx2arbiter_naddr <= 2'd2;
		end
		6'd39: begin
			fx2arbiter_naddr <= 2'd2;
		end
		6'd40: begin
			fx2arbiter_naddr <= 2'd3;
		end
		6'd41: begin
			fx2arbiter_naddr <= 2'd3;
		end
		6'd42: begin
			fx2arbiter_naddr <= 2'd3;
		end
		6'd43: begin
			fx2arbiter_naddr <= 2'd3;
		end
		6'd44: begin
			fx2arbiter_naddr <= 2'd2;
		end
		6'd45: begin
			fx2arbiter_naddr <= 2'd2;
		end
		6'd46: begin
			fx2arbiter_naddr <= 2'd2;
		end
		6'd47: begin
			fx2arbiter_naddr <= 2'd2;
		end
		6'd48: begin
			fx2arbiter_naddr <= 1'd0;
		end
		6'd49: begin
			fx2arbiter_naddr <= 1'd0;
		end
		6'd50: begin
			fx2arbiter_naddr <= 1'd1;
		end
		6'd51: begin
			fx2arbiter_naddr <= 1'd0;
		end
		6'd52: begin
			fx2arbiter_naddr <= 2'd2;
		end
		6'd53: begin
			fx2arbiter_naddr <= 1'd0;
		end
		6'd54: begin
			fx2arbiter_naddr <= 1'd1;
		end
		6'd55: begin
			fx2arbiter_naddr <= 1'd0;
		end
		6'd56: begin
			fx2arbiter_naddr <= 2'd3;
		end
		6'd57: begin
			fx2arbiter_naddr <= 2'd3;
		end
		6'd58: begin
			fx2arbiter_naddr <= 2'd3;
		end
		6'd59: begin
			fx2arbiter_naddr <= 2'd3;
		end
		6'd60: begin
			fx2arbiter_naddr <= 2'd3;
		end
		6'd61: begin
			fx2arbiter_naddr <= 2'd3;
		end
		6'd62: begin
			fx2arbiter_naddr <= 2'd3;
		end
		6'd63: begin
			fx2arbiter_naddr <= 2'd3;
		end
	endcase
// synthesis translate_off
	dummy_d_4 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_5;
// synthesis translate_on
always @(*) begin
	fifowithoverflow0_we <= 1'd0;
	fifowithoverflow1_we <= 1'd0;
	dummyfifo2_re <= 1'd0;
	dummyfifo3_re <= 1'd0;
	fx2arbiter_slrd <= 1'd0;
	fx2arbiter_slwr <= 1'd0;
	fx2arbiter_pend <= 1'd0;
	fx2arbiter_next_state <= 3'd0;
	fx2arbiter_sloe_fx2arbiter_next_value0 <= 1'd0;
	fx2arbiter_sloe_fx2arbiter_next_value_ce0 <= 1'd0;
	fx2arbiter_fdoe_fx2arbiter_next_value1 <= 1'd0;
	fx2arbiter_fdoe_fx2arbiter_next_value_ce1 <= 1'd0;
	fx2arbiter_addr_fx2arbiter_next_value2 <= 2'd0;
	fx2arbiter_addr_fx2arbiter_next_value_ce2 <= 1'd0;
	cases_array_muxed1 <= 1'd0;
	cases_array_muxed4 <= 1'd0;
	fx2arbiter_next_state <= fx2arbiter_state;
	case (fx2arbiter_state)
		1'd1: begin
			if (fx2arbiter_addr[1]) begin
				fx2arbiter_fdoe_fx2arbiter_next_value1 <= 1'd1;
				fx2arbiter_fdoe_fx2arbiter_next_value_ce1 <= 1'd1;
			end else begin
				fx2arbiter_sloe_fx2arbiter_next_value0 <= 1'd1;
				fx2arbiter_sloe_fx2arbiter_next_value_ce0 <= 1'd1;
			end
			fx2arbiter_next_state <= 2'd2;
		end
		2'd2: begin
			if (fx2arbiter_addr[1]) begin
				fx2arbiter_next_state <= 2'd3;
			end else begin
				fx2arbiter_next_state <= 3'd6;
			end
		end
		2'd3: begin
			fx2arbiter_next_state <= 3'd4;
		end
		3'd4: begin
			if ((fx2arbiter_flag[fx2arbiter_addr+:1] & cases_array_muxed0)) begin
				cases_array_muxed1 <= 1'd1;
				case (fx2arbiter_addr[0])
					1'd0: begin
						dummyfifo2_re <= cases_array_muxed1;
					end
					default: begin
						dummyfifo3_re <= cases_array_muxed1;
					end
				endcase
				fx2arbiter_slwr <= 1'd1;
			end else begin
				if (((~fx2arbiter_flag[fx2arbiter_addr+:1]) & (~cases_array_muxed2))) begin
					fx2arbiter_next_state <= 3'd5;
				end else begin
					if ((fx2arbiter_flag[fx2arbiter_addr+:1] & cases_array_muxed3)) begin
						fx2arbiter_next_state <= 3'd5;
					end else begin
						fx2arbiter_next_state <= 1'd0;
					end
				end
			end
		end
		3'd5: begin
			fx2arbiter_pend <= 1'd1;
			fx2arbiter_next_state <= 1'd0;
		end
		3'd6: begin
			fx2arbiter_slrd <= 1'd1;
			fx2arbiter_next_state <= 3'd7;
		end
		3'd7: begin
			cases_array_muxed4 <= fx2arbiter_flag[fx2arbiter_addr+:1];
			case (fx2arbiter_addr[0])
				1'd0: begin
					fifowithoverflow0_we <= cases_array_muxed4;
				end
				default: begin
					fifowithoverflow1_we <= cases_array_muxed4;
				end
			endcase
			if (fx2arbiter_rdy[fx2arbiter_addr+:1]) begin
				fx2arbiter_slrd <= cases_array_muxed5;
			end else begin
				fx2arbiter_next_state <= 1'd0;
			end
		end
		default: begin
			fx2arbiter_sloe_fx2arbiter_next_value0 <= 1'd0;
			fx2arbiter_sloe_fx2arbiter_next_value_ce0 <= 1'd1;
			fx2arbiter_fdoe_fx2arbiter_next_value1 <= 1'd0;
			fx2arbiter_fdoe_fx2arbiter_next_value_ce1 <= 1'd1;
			fx2arbiter_addr_fx2arbiter_next_value2 <= fx2arbiter_naddr;
			fx2arbiter_addr_fx2arbiter_next_value_ce2 <= 1'd1;
			if (fx2arbiter_rdy) begin
				fx2arbiter_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_5 <= dummy_s;
// synthesis translate_on
end
assign port_a_oe = hs_oe;
assign port_a_oe_1 = vs_oe;
assign port_a_oe_2 = r_oe;
assign port_a_oe_3 = g_oe;
assign port_a_oe_4 = b_oe;
assign h_stb = (h_ctr == 10'd640);
assign v_stb = (h_stb & (v_ctr == 9'd480));
assign reset = reg_1;
assign {pix_b, pix_g, pix_r} = (h_ctr[9:5] + v_ctr[9:5]);
assign hs_oe = 1'd1;
assign hs_o = hs;
assign vs_oe = 1'd1;
assign vs_o = vs;
assign r_oe = 1'd1;
assign r_o = r;
assign g_oe = 1'd1;
assign g_o = g;
assign b_oe = 1'd1;
assign b_o = b;

// synthesis translate_off
reg dummy_d_6;
// synthesis translate_on
always @(*) begin
	basiclowerer_array_muxed0 <= 1'd0;
	case (registers_address)
		default: begin
			basiclowerer_array_muxed0 <= reg_1;
		end
	endcase
// synthesis translate_off
	dummy_d_6 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_7;
// synthesis translate_on
always @(*) begin
	basiclowerer_array_muxed3 <= 8'd0;
	case (fx2arbiter_addr[0])
		1'd0: begin
			basiclowerer_array_muxed3 <= dummyfifo2_dout;
		end
		default: begin
			basiclowerer_array_muxed3 <= dummyfifo3_dout;
		end
	endcase
// synthesis translate_off
	dummy_d_7 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_8;
// synthesis translate_on
always @(*) begin
	cases_array_muxed0 <= 1'd0;
	case (fx2arbiter_addr[0])
		1'd0: begin
			cases_array_muxed0 <= dummyfifo2_readable;
		end
		default: begin
			cases_array_muxed0 <= dummyfifo3_readable;
		end
	endcase
// synthesis translate_off
	dummy_d_8 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_9;
// synthesis translate_on
always @(*) begin
	cases_array_muxed2 <= 1'd0;
	case (fx2arbiter_addr[0])
		1'd0: begin
			cases_array_muxed2 <= dummyfifo2_readable;
		end
		default: begin
			cases_array_muxed2 <= dummyfifo3_readable;
		end
	endcase
// synthesis translate_off
	dummy_d_9 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_10;
// synthesis translate_on
always @(*) begin
	cases_array_muxed3 <= 1'd0;
	case (fx2arbiter_addr[0])
		1'd0: begin
			cases_array_muxed3 <= fifowithflush0_queued;
		end
		default: begin
			cases_array_muxed3 <= fifowithflush1_queued;
		end
	endcase
// synthesis translate_off
	dummy_d_10 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_11;
// synthesis translate_on
always @(*) begin
	cases_array_muxed5 <= 1'd0;
	case (fx2arbiter_addr[0])
		1'd0: begin
			cases_array_muxed5 <= dummyfifo0_writable;
		end
		default: begin
			cases_array_muxed5 <= dummyfifo1_writable;
		end
	endcase
// synthesis translate_off
	dummy_d_11 <= dummy_s;
// synthesis translate_on
end
assign i2c_slave_scl_i = multiregimpl0_regs1;
assign i2c_slave_sda_i = multiregimpl1_regs1;

always @(posedge pix_clk) begin
	if ((h_ctr == 10'd799)) begin
		if ((v_ctr == 10'd524)) begin
			v_ctr <= 1'd0;
		end else begin
			v_ctr <= (v_ctr + 1'd1);
		end
		h_ctr <= 1'd0;
	end else begin
		h_ctr <= (h_ctr + 1'd1);
	end
	if ((h_ctr == 1'd0)) begin
		h_en <= 1'd1;
	end else begin
		if ((h_ctr == 10'd640)) begin
			h_en <= 1'd0;
		end else begin
			if ((h_ctr == 10'd656)) begin
				hs <= 1'd1;
			end else begin
				if ((h_ctr == 10'd752)) begin
					hs <= 1'd0;
				end
			end
		end
	end
	if ((v_ctr == 1'd0)) begin
		v_en <= 1'd1;
	end else begin
		if ((v_ctr == 9'd480)) begin
			v_en <= 1'd0;
		end else begin
			if ((v_ctr == 9'd490)) begin
				vs <= 1'd1;
			end else begin
				if ((v_ctr == 9'd492)) begin
					vs <= 1'd0;
				end
			end
		end
	end
	if ((v_en & h_en)) begin
		r <= pix_r;
		g <= pix_g;
		b <= pix_b;
	end else begin
		r <= 1'd0;
		g <= 1'd0;
		b <= 1'd0;
	end
	if (reset) begin
		hs <= 1'd0;
		vs <= 1'd0;
		r <= 1'd0;
		g <= 1'd0;
		b <= 1'd0;
		h_ctr <= 10'd0;
		v_ctr <= 10'd0;
		h_en <= 1'd0;
		v_en <= 1'd0;
	end
end

always @(posedge por_clk) begin
	if ((reset_delay != 1'd0)) begin
		reset_delay <= (reset_delay - 1'd1);
	end
end

always @(posedge sys_clk) begin
	i2c_slave_scl_r <= i2c_slave_scl_i;
	i2c_slave_sda_r <= i2c_slave_sda_i;
	i2c_slave_is_el0 <= i2c_slave_is_el1;
	i2c_slave_is_el2 <= i2c_slave_is_el3;
	i2cslave_state <= i2cslave_next_state;
	if (i2c_slave_bitno_i2cslave_next_value_ce0) begin
		i2c_slave_bitno <= i2c_slave_bitno_i2cslave_next_value0;
	end
	if (i2c_slave_shreg_i_i2cslave_next_value_ce1) begin
		i2c_slave_shreg_i <= i2c_slave_shreg_i_i2cslave_next_value1;
	end
	if (i2c_slave_sda_o_i2cslave_next_value_ce2) begin
		i2c_slave_sda_o <= i2c_slave_sda_o_i2cslave_next_value2;
	end
	if (i2c_slave_shreg_o_i2cslave_next_value_ce3) begin
		i2c_slave_shreg_o <= i2c_slave_shreg_o_i2cslave_next_value3;
	end
	if (i2c_slave_data_i_i2cslave_next_value_ce4) begin
		i2c_slave_data_i <= i2c_slave_data_i_i2cslave_next_value4;
	end
	if (i2c_slave_start) begin
		latch_addr <= 1'd1;
	end
	if (i2c_slave_write) begin
		if (latch_addr) begin
			if ((i2c_slave_data_i < 1'd1)) begin
				latch_addr <= 1'd0;
				registers_address <= i2c_slave_data_i;
			end
		end else begin
			basiclowerer_array_muxed4 = i2c_slave_data_i;
			case (registers_address)
				default: begin
					reg_1 <= basiclowerer_array_muxed4;
				end
			endcase
		end
	end
	fx2arbiter_state <= fx2arbiter_next_state;
	if (fx2arbiter_sloe_fx2arbiter_next_value_ce0) begin
		fx2arbiter_sloe <= fx2arbiter_sloe_fx2arbiter_next_value0;
	end
	if (fx2arbiter_fdoe_fx2arbiter_next_value_ce1) begin
		fx2arbiter_fdoe <= fx2arbiter_fdoe_fx2arbiter_next_value1;
	end
	if (fx2arbiter_addr_fx2arbiter_next_value_ce2) begin
		fx2arbiter_addr <= fx2arbiter_addr_fx2arbiter_next_value2;
	end
	if (sys_rst) begin
		i2c_slave_data_i <= 8'd0;
		i2c_slave_sda_o <= 1'd1;
		i2c_slave_scl_r <= 1'd1;
		i2c_slave_sda_r <= 1'd1;
		i2c_slave_bitno <= 3'd0;
		i2c_slave_shreg_i <= 8'd0;
		i2c_slave_shreg_o <= 8'd0;
		i2c_slave_is_el0 <= 1'd1;
		i2c_slave_is_el2 <= 1'd0;
		registers_address <= 8'd0;
		reg_1 <= 1'd1;
		i2cslave_state <= 3'd0;
		latch_addr <= 1'd0;
		fx2arbiter_addr <= 2'd0;
		fx2arbiter_fdoe <= 1'd0;
		fx2arbiter_sloe <= 1'd0;
		fx2arbiter_state <= 3'd0;
	end
	multiregimpl0_regs0 <= tstriple0_i;
	multiregimpl0_regs1 <= multiregimpl0_regs0;
	multiregimpl1_regs0 <= tstriple1_i;
	multiregimpl1_regs1 <= multiregimpl1_regs0;
end

SB_GB_IO #(
	.PIN_TYPE(6'd1)
) SB_GB_IO (
	.PACKAGE_PIN(clk_if),
	.GLOBAL_BUFFER_OUTPUT(sys_clk)
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO (
	.D_OUT_0(fifoadr_t_registeredtristate0[0]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(fifoadr_t_registeredtristate_oe),
	.PACKAGE_PIN(fx2_fifoadr[0]),
	.D_IN_1(fifoadr_t_registeredtristate1[0])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_1 (
	.D_OUT_0(fifoadr_t_registeredtristate0[1]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(fifoadr_t_registeredtristate_oe),
	.PACKAGE_PIN(fx2_fifoadr[1]),
	.D_IN_1(fifoadr_t_registeredtristate1[1])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_2 (
	.D_OUT_0(flag_t_registeredtristate0[0]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(flag_t_registeredtristate_oe),
	.PACKAGE_PIN(fx2_flag[0]),
	.D_IN_1(flag_t_registeredtristate1[0])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_3 (
	.D_OUT_0(flag_t_registeredtristate0[1]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(flag_t_registeredtristate_oe),
	.PACKAGE_PIN(fx2_flag[1]),
	.D_IN_1(flag_t_registeredtristate1[1])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_4 (
	.D_OUT_0(flag_t_registeredtristate0[2]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(flag_t_registeredtristate_oe),
	.PACKAGE_PIN(fx2_flag[2]),
	.D_IN_1(flag_t_registeredtristate1[2])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_5 (
	.D_OUT_0(flag_t_registeredtristate0[3]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(flag_t_registeredtristate_oe),
	.PACKAGE_PIN(fx2_flag[3]),
	.D_IN_1(flag_t_registeredtristate1[3])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_6 (
	.D_OUT_0(fd_t_registeredtristate0[0]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(fd_t_registeredtristate_oe),
	.PACKAGE_PIN(fx2_fd[0]),
	.D_IN_1(fd_t_registeredtristate1[0])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_7 (
	.D_OUT_0(fd_t_registeredtristate0[1]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(fd_t_registeredtristate_oe),
	.PACKAGE_PIN(fx2_fd[1]),
	.D_IN_1(fd_t_registeredtristate1[1])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_8 (
	.D_OUT_0(fd_t_registeredtristate0[2]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(fd_t_registeredtristate_oe),
	.PACKAGE_PIN(fx2_fd[2]),
	.D_IN_1(fd_t_registeredtristate1[2])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_9 (
	.D_OUT_0(fd_t_registeredtristate0[3]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(fd_t_registeredtristate_oe),
	.PACKAGE_PIN(fx2_fd[3]),
	.D_IN_1(fd_t_registeredtristate1[3])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_10 (
	.D_OUT_0(fd_t_registeredtristate0[4]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(fd_t_registeredtristate_oe),
	.PACKAGE_PIN(fx2_fd[4]),
	.D_IN_1(fd_t_registeredtristate1[4])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_11 (
	.D_OUT_0(fd_t_registeredtristate0[5]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(fd_t_registeredtristate_oe),
	.PACKAGE_PIN(fx2_fd[5]),
	.D_IN_1(fd_t_registeredtristate1[5])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_12 (
	.D_OUT_0(fd_t_registeredtristate0[6]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(fd_t_registeredtristate_oe),
	.PACKAGE_PIN(fx2_fd[6]),
	.D_IN_1(fd_t_registeredtristate1[6])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_13 (
	.D_OUT_0(fd_t_registeredtristate0[7]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(fd_t_registeredtristate_oe),
	.PACKAGE_PIN(fx2_fd[7]),
	.D_IN_1(fd_t_registeredtristate1[7])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_14 (
	.D_OUT_0(sloe_t_registeredtristate0),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(sloe_t_registeredtristate_oe),
	.PACKAGE_PIN(fx2_sloe),
	.D_IN_1(sloe_t_registeredtristate1)
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_15 (
	.D_OUT_0(slrd_t_registeredtristate0),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(slrd_t_registeredtristate_oe),
	.PACKAGE_PIN(fx2_slrd),
	.D_IN_1(slrd_t_registeredtristate1)
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_16 (
	.D_OUT_0(slwr_t_registeredtristate0),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(slwr_t_registeredtristate_oe),
	.PACKAGE_PIN(fx2_slwr),
	.D_IN_1(slwr_t_registeredtristate1)
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_17 (
	.D_OUT_0(pktend_t_registeredtristate0),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(pktend_t_registeredtristate_oe),
	.PACKAGE_PIN(fx2_pktend),
	.D_IN_1(pktend_t_registeredtristate1)
);

SB_IO #(
	.PIN_TYPE(6'd41)
) SB_IO_18 (
	.D_OUT_0(hs_o),
	.OUTPUT_ENABLE(hs_oe),
	.PACKAGE_PIN(port_a_io),
	.D_IN_0(hs_i)
);

SB_IO #(
	.PIN_TYPE(6'd41)
) SB_IO_19 (
	.D_OUT_0(vs_o),
	.OUTPUT_ENABLE(vs_oe),
	.PACKAGE_PIN(port_a_io_1),
	.D_IN_0(vs_i)
);

SB_IO #(
	.PIN_TYPE(6'd41)
) SB_IO_20 (
	.D_OUT_0(r_o),
	.OUTPUT_ENABLE(r_oe),
	.PACKAGE_PIN(port_a_io_2),
	.D_IN_0(r_i)
);

SB_IO #(
	.PIN_TYPE(6'd41)
) SB_IO_21 (
	.D_OUT_0(g_o),
	.OUTPUT_ENABLE(g_oe),
	.PACKAGE_PIN(port_a_io_3),
	.D_IN_0(g_i)
);

SB_IO #(
	.PIN_TYPE(6'd41)
) SB_IO_22 (
	.D_OUT_0(b_o),
	.OUTPUT_ENABLE(b_oe),
	.PACKAGE_PIN(port_a_io_4),
	.D_IN_0(b_i)
);

SB_IO #(
	.PIN_TYPE(6'd41)
) SB_IO_23 (
	.D_OUT_0(tstriple0_o),
	.OUTPUT_ENABLE(tstriple0_oe),
	.PACKAGE_PIN(i2c_scl),
	.D_IN_0(tstriple0_i)
);

SB_IO #(
	.PIN_TYPE(6'd41)
) SB_IO_24 (
	.D_OUT_0(tstriple1_o),
	.OUTPUT_ENABLE(tstriple1_oe),
	.PACKAGE_PIN(i2c_sda),
	.D_IN_0(tstriple1_i)
);

SB_PLL40_CORE #(
	.DIVF(5'd26),
	.DIVQ(3'd5),
	.DIVR(1'd0),
	.FEEDBACK_PATH("SIMPLE"),
	.FILTER_RANGE(3'd6),
	.PLLOUT_SELECT("GENCLK")
) SB_PLL40_CORE (
	.BYPASS(1'd0),
	.REFERENCECLK(sys_clk),
	.RESETB((~sys_rst)),
	.PLLOUTGLOBAL(pix_clk)
);

endmodule
