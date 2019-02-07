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
	inout [7:0] io,
	input [7:0] io_1
);

wire por_clk;
wire sys_clk;
wire sys_rst;
wire applet_clk_buf;
reg [10:0] applet_reset_delay = 11'd2047;
wire applet_tstriple0_o;
wire applet_tstriple0_oe;
wire applet_tstriple0_i;
wire applet_tstriple1_o;
wire applet_tstriple1_oe;
wire applet_tstriple1_i;
wire [6:0] applet_i2c_slave_address;
reg applet_i2c_slave_start;
wire applet_i2c_slave_stop;
wire applet_i2c_slave_write;
reg [7:0] applet_i2c_slave_data_i = 8'd0;
reg applet_i2c_slave_ack_o;
wire applet_i2c_slave_read;
wire [7:0] applet_i2c_slave_data_o;
wire applet_i2c_slave_scl_i;
reg applet_i2c_slave_scl_o = 1'd1;
wire applet_i2c_slave_sda_i;
reg applet_i2c_slave_sda_o = 1'd1;
wire applet_i2c_slave_bus_sample;
wire applet_i2c_slave_bus_setup;
wire applet_i2c_slave_bus_start;
wire applet_i2c_slave_bus_stop;
reg applet_i2c_slave_scl_r = 1'd1;
reg applet_i2c_slave_sda_r = 1'd1;
reg [2:0] applet_i2c_slave_bitno = 3'd0;
reg [7:0] applet_i2c_slave_shreg_i = 8'd0;
reg [7:0] applet_i2c_slave_shreg_o = 8'd0;
reg applet_i2c_slave_signal_is_el0 = 1'd1;
wire applet_i2c_slave_fsm_is_el0;
reg applet_i2c_slave_signal_is_el1 = 1'd0;
wire applet_i2c_slave_fsm_is_el1;
wire applet_i2c_slave_fsm_is_el2;
reg [7:0] applet_registers_address = 8'd0;
wire applet_fifoadr_t_oe;
wire [1:0] applet_fifoadr_t_o;
wire [1:0] applet_fifoadr_t_i;
reg applet_flag_t_oe = 1'd0;
reg [3:0] applet_flag_t_o = 4'd0;
wire [3:0] applet_flag_t_i;
wire applet_fd_t_oe;
wire [7:0] applet_fd_t_o;
wire [7:0] applet_fd_t_i;
wire applet_sloe_t_oe;
wire applet_sloe_t_o;
wire applet_sloe_t_i;
wire applet_slrd_t_oe;
wire applet_slrd_t_o;
wire applet_slrd_t_i;
wire applet_slwr_t_oe;
wire applet_slwr_t_o;
wire applet_slwr_t_i;
wire applet_pktend_t_oe;
wire applet_pktend_t_o;
wire applet_pktend_t_i;
reg applet_writable = 1'd0;
reg applet_we;
reg [7:0] applet_din;
reg applet_re;
reg applet_readable = 1'd0;
reg [7:0] applet_dout = 8'd0;
wire spiflashavrapplet_tstriple0_o;
wire spiflashavrapplet_tstriple0_oe;
wire spiflashavrapplet_tstriple0_i;
wire spiflashavrapplet_tstriple1_o;
wire spiflashavrapplet_tstriple1_oe;
wire spiflashavrapplet_tstriple1_i;
reg spiflashavrapplet_tstriple2_o = 1'd0;
reg spiflashavrapplet_tstriple2_oe = 1'd0;
wire spiflashavrapplet_tstriple2_i;
wire spiflashavrapplet_tstriple3_o;
wire spiflashavrapplet_tstriple3_oe;
wire spiflashavrapplet_tstriple3_i;
reg spiflashavrapplet_syncfifobuffered0_re;
reg spiflashavrapplet_syncfifobuffered0_readable = 1'd0;
reg spiflashavrapplet_syncfifobuffered0_syncfifo0_we;
wire spiflashavrapplet_syncfifobuffered0_syncfifo0_writable;
wire spiflashavrapplet_syncfifobuffered0_syncfifo0_re;
wire spiflashavrapplet_syncfifobuffered0_syncfifo0_readable;
reg [7:0] spiflashavrapplet_syncfifobuffered0_syncfifo0_din;
wire [7:0] spiflashavrapplet_syncfifobuffered0_syncfifo0_dout;
reg [9:0] spiflashavrapplet_syncfifobuffered0_level0 = 10'd0;
reg spiflashavrapplet_syncfifobuffered0_replace = 1'd0;
reg [8:0] spiflashavrapplet_syncfifobuffered0_produce = 9'd0;
reg [8:0] spiflashavrapplet_syncfifobuffered0_consume = 9'd0;
reg [8:0] spiflashavrapplet_syncfifobuffered0_wrport_adr;
wire [7:0] spiflashavrapplet_syncfifobuffered0_wrport_dat_r;
wire spiflashavrapplet_syncfifobuffered0_wrport_we;
wire [7:0] spiflashavrapplet_syncfifobuffered0_wrport_dat_w;
wire spiflashavrapplet_syncfifobuffered0_do_read;
wire [8:0] spiflashavrapplet_syncfifobuffered0_rdport_adr;
wire [7:0] spiflashavrapplet_syncfifobuffered0_rdport_dat_r;
wire spiflashavrapplet_syncfifobuffered0_rdport_re;
wire [9:0] spiflashavrapplet_syncfifobuffered0_level1;
reg spiflashavrapplet_fifowithoverflow_we;
reg spiflashavrapplet_fifowithoverflow_writable;
reg [7:0] spiflashavrapplet_fifowithoverflow_din;
reg spiflashavrapplet_fifowithoverflow_syncfifo_we;
wire spiflashavrapplet_fifowithoverflow_syncfifo_writable;
reg spiflashavrapplet_fifowithoverflow_syncfifo_re;
wire spiflashavrapplet_fifowithoverflow_syncfifo_readable;
reg [7:0] spiflashavrapplet_fifowithoverflow_syncfifo_din;
wire [7:0] spiflashavrapplet_fifowithoverflow_syncfifo_dout;
reg [1:0] spiflashavrapplet_fifowithoverflow_level = 2'd0;
reg spiflashavrapplet_fifowithoverflow_replace = 1'd0;
reg spiflashavrapplet_fifowithoverflow_produce = 1'd0;
reg spiflashavrapplet_fifowithoverflow_consume = 1'd0;
reg spiflashavrapplet_fifowithoverflow_wrport_adr;
wire [7:0] spiflashavrapplet_fifowithoverflow_wrport_dat_r;
wire spiflashavrapplet_fifowithoverflow_wrport_we;
wire [7:0] spiflashavrapplet_fifowithoverflow_wrport_dat_w;
wire spiflashavrapplet_fifowithoverflow_do_read;
wire spiflashavrapplet_fifowithoverflow_rdport_adr;
wire [7:0] spiflashavrapplet_fifowithoverflow_rdport_dat_r;
reg spiflashavrapplet_syncfifobuffered1_re;
reg spiflashavrapplet_syncfifobuffered1_readable = 1'd0;
reg spiflashavrapplet_syncfifobuffered1_syncfifo1_we;
wire spiflashavrapplet_syncfifobuffered1_syncfifo1_writable;
wire spiflashavrapplet_syncfifobuffered1_syncfifo1_re;
wire spiflashavrapplet_syncfifobuffered1_syncfifo1_readable;
reg [7:0] spiflashavrapplet_syncfifobuffered1_syncfifo1_din;
wire [7:0] spiflashavrapplet_syncfifobuffered1_syncfifo1_dout;
reg [9:0] spiflashavrapplet_syncfifobuffered1_level0 = 10'd0;
reg spiflashavrapplet_syncfifobuffered1_replace = 1'd0;
reg [8:0] spiflashavrapplet_syncfifobuffered1_produce = 9'd0;
reg [8:0] spiflashavrapplet_syncfifobuffered1_consume = 9'd0;
reg [8:0] spiflashavrapplet_syncfifobuffered1_wrport_adr;
wire [7:0] spiflashavrapplet_syncfifobuffered1_wrport_dat_r;
wire spiflashavrapplet_syncfifobuffered1_wrport_we;
wire [7:0] spiflashavrapplet_syncfifobuffered1_wrport_dat_w;
wire spiflashavrapplet_syncfifobuffered1_do_read;
wire [8:0] spiflashavrapplet_syncfifobuffered1_rdport_adr;
wire [7:0] spiflashavrapplet_syncfifobuffered1_rdport_dat_r;
wire spiflashavrapplet_syncfifobuffered1_rdport_re;
wire [9:0] spiflashavrapplet_syncfifobuffered1_level1;
wire spiflashavrapplet_oe;
reg spiflashavrapplet_sck = 1'd0;
reg spiflashavrapplet_ss = 1'd1;
wire spiflashavrapplet_mosi;
wire spiflashavrapplet_miso;
reg spiflashavrapplet_sck_r = 1'd0;
wire spiflashavrapplet_setup;
wire spiflashavrapplet_latch;
reg [7:0] spiflashavrapplet_timer = 8'd0;
reg [15:0] spiflashavrapplet_count = 16'd0;
reg [2:0] spiflashavrapplet_bitno = 3'd7;
reg [7:0] spiflashavrapplet_oreg = 8'd0;
reg [7:0] spiflashavrapplet_ireg = 8'd0;
wire spiflashavrapplet_reset;
reg spiflashavrapplet_reg0 = 1'd0;
reg spiflashavrapplet_reg1 = 1'd0;
reg [2:0] i2cslave_state = 3'd0;
reg [2:0] i2cslave_next_state;
reg [2:0] applet_i2c_slave_bitno_i2cslave_next_value;
reg applet_i2c_slave_bitno_i2cslave_next_value_ce;
reg [7:0] applet_i2c_slave_shreg_i_i2cslave_t_next_value;
reg applet_i2c_slave_shreg_i_i2cslave_t_next_value_ce;
reg applet_i2c_slave_sda_o_i2cslave_f_next_value0;
reg applet_i2c_slave_sda_o_i2cslave_f_next_value_ce0;
reg [7:0] applet_i2c_slave_shreg_o_i2cslave_f_next_value1;
reg applet_i2c_slave_shreg_o_i2cslave_f_next_value_ce1;
reg [7:0] applet_i2c_slave_data_i_i2cslave_f_next_value2;
reg applet_i2c_slave_data_i_i2cslave_f_next_value_ce2;
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
reg [2:0] resetinserter_state = 3'd0;
reg [2:0] resetinserter_next_state;
reg [15:0] spiflashavrapplet_count_resetinserter_t_next_value0;
reg spiflashavrapplet_count_resetinserter_t_next_value_ce0;
reg spiflashavrapplet_ss_resetinserter_f_next_value;
reg spiflashavrapplet_ss_resetinserter_f_next_value_ce;
reg [7:0] spiflashavrapplet_oreg_resetinserter_t_next_value1;
reg spiflashavrapplet_oreg_resetinserter_t_next_value_ce1;
reg [7:0] spiflashavrapplet_timer_resetinserter_t_next_value2;
reg spiflashavrapplet_timer_resetinserter_t_next_value_ce2;
reg spiflashavrapplet_sck_resetinserter_t_next_value3;
reg spiflashavrapplet_sck_resetinserter_t_next_value_ce3;
reg [2:0] spiflashavrapplet_bitno_resetinserter_t_next_value4;
reg spiflashavrapplet_bitno_resetinserter_t_next_value_ce4;
reg rhs_array_muxed0;
wire [7:0] lhs_array_muxed;
reg [7:0] rhs_array_muxed1;
reg cases_lhs_array_muxed;
reg cases_basiclowerer_array_muxed0;
reg cases_basiclowerer_array_muxed1;
reg cases_f_array_muxed;
reg cases_array_muxed;
reg cases_rhs_array_muxed;
reg array_muxed = 1'd0;
reg multiregimpl0_regs0 = 1'd1;
reg multiregimpl0_regs1 = 1'd1;
reg multiregimpl1_regs0 = 1'd1;
reg multiregimpl1_regs1 = 1'd1;
reg multiregimpl2_regs0 = 1'd0;
reg multiregimpl2_regs1 = 1'd0;


// Adding a dummy event (using a dummy signal 'dummy_s') to get the simulator
// to run the combinatorial process once at the beginning.
// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign applet_i2c_slave_address = 4'd8;
assign spiflashavrapplet_reset = spiflashavrapplet_reg0;
assign spiflashavrapplet_oe = spiflashavrapplet_reg1;
assign spiflashavrapplet_tstriple0_oe = 1'd1;
assign spiflashavrapplet_tstriple0_o = (~spiflashavrapplet_reg1);
assign sys_clk = por_clk;
assign sys_rst = (applet_reset_delay != 1'd0);
assign applet_i2c_slave_stop = applet_i2c_slave_signal_is_el0;
assign applet_i2c_slave_write = applet_i2c_slave_signal_is_el1;
assign applet_i2c_slave_read = applet_i2c_slave_fsm_is_el2;
assign applet_tstriple0_o = 1'd0;
assign applet_tstriple0_oe = (~applet_i2c_slave_scl_o);
assign applet_tstriple1_o = 1'd0;
assign applet_tstriple1_oe = (~applet_i2c_slave_sda_o);
assign applet_i2c_slave_bus_sample = ((~applet_i2c_slave_scl_r) & applet_i2c_slave_scl_i);
assign applet_i2c_slave_bus_setup = (applet_i2c_slave_scl_r & (~applet_i2c_slave_scl_i));
assign applet_i2c_slave_bus_start = ((applet_i2c_slave_scl_i & applet_i2c_slave_sda_r) & (~applet_i2c_slave_sda_i));
assign applet_i2c_slave_bus_stop = ((applet_i2c_slave_scl_i & (~applet_i2c_slave_sda_r)) & applet_i2c_slave_sda_i);

// synthesis translate_off
reg dummy_d;
// synthesis translate_on
always @(*) begin
	applet_i2c_slave_start <= 1'd0;
	i2cslave_next_state <= 3'd0;
	applet_i2c_slave_bitno_i2cslave_next_value <= 3'd0;
	applet_i2c_slave_bitno_i2cslave_next_value_ce <= 1'd0;
	applet_i2c_slave_shreg_i_i2cslave_t_next_value <= 8'd0;
	applet_i2c_slave_shreg_i_i2cslave_t_next_value_ce <= 1'd0;
	applet_i2c_slave_sda_o_i2cslave_f_next_value0 <= 1'd0;
	applet_i2c_slave_sda_o_i2cslave_f_next_value_ce0 <= 1'd0;
	applet_i2c_slave_shreg_o_i2cslave_f_next_value1 <= 8'd0;
	applet_i2c_slave_shreg_o_i2cslave_f_next_value_ce1 <= 1'd0;
	applet_i2c_slave_data_i_i2cslave_f_next_value2 <= 8'd0;
	applet_i2c_slave_data_i_i2cslave_f_next_value_ce2 <= 1'd0;
	i2cslave_next_state <= i2cslave_state;
	case (i2cslave_state)
		1'd1: begin
			if (applet_i2c_slave_bus_stop) begin
				i2cslave_next_state <= 1'd0;
			end else begin
				if (applet_i2c_slave_bus_setup) begin
					applet_i2c_slave_bitno_i2cslave_next_value <= 1'd0;
					applet_i2c_slave_bitno_i2cslave_next_value_ce <= 1'd1;
					i2cslave_next_state <= 2'd2;
				end
			end
		end
		2'd2: begin
			if (applet_i2c_slave_bus_stop) begin
				i2cslave_next_state <= 1'd0;
			end else begin
				if (applet_i2c_slave_bus_start) begin
					i2cslave_next_state <= 1'd1;
				end else begin
					if (applet_i2c_slave_bus_sample) begin
						applet_i2c_slave_shreg_i_i2cslave_t_next_value <= ((applet_i2c_slave_shreg_i <<< 1'd1) | applet_i2c_slave_sda_i);
						applet_i2c_slave_shreg_i_i2cslave_t_next_value_ce <= 1'd1;
					end else begin
						if (applet_i2c_slave_bus_setup) begin
							applet_i2c_slave_bitno_i2cslave_next_value <= (applet_i2c_slave_bitno + 1'd1);
							applet_i2c_slave_bitno_i2cslave_next_value_ce <= 1'd1;
							if ((applet_i2c_slave_bitno == 3'd7)) begin
								if ((applet_i2c_slave_shreg_i[7:1] == applet_i2c_slave_address)) begin
									applet_i2c_slave_sda_o_i2cslave_f_next_value0 <= 1'd0;
									applet_i2c_slave_sda_o_i2cslave_f_next_value_ce0 <= 1'd1;
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
			if (applet_i2c_slave_bus_stop) begin
				i2cslave_next_state <= 1'd0;
			end else begin
				if (applet_i2c_slave_bus_start) begin
					i2cslave_next_state <= 1'd1;
				end else begin
					if (applet_i2c_slave_bus_setup) begin
						if ((~applet_i2c_slave_shreg_i[0])) begin
							applet_i2c_slave_start <= 1'd1;
							applet_i2c_slave_sda_o_i2cslave_f_next_value0 <= 1'd1;
							applet_i2c_slave_sda_o_i2cslave_f_next_value_ce0 <= 1'd1;
							i2cslave_next_state <= 3'd4;
						end
					end else begin
						if (applet_i2c_slave_bus_sample) begin
							if (applet_i2c_slave_shreg_i[0]) begin
								applet_i2c_slave_start <= 1'd1;
								i2cslave_next_state <= 3'd6;
								applet_i2c_slave_shreg_o_i2cslave_f_next_value1 <= applet_i2c_slave_data_o;
								applet_i2c_slave_shreg_o_i2cslave_f_next_value_ce1 <= 1'd1;
							end
						end
					end
				end
			end
		end
		3'd4: begin
			if (applet_i2c_slave_bus_stop) begin
				i2cslave_next_state <= 1'd0;
			end else begin
				if (applet_i2c_slave_bus_start) begin
					i2cslave_next_state <= 1'd1;
				end else begin
					if (applet_i2c_slave_bus_sample) begin
						applet_i2c_slave_shreg_i_i2cslave_t_next_value <= ((applet_i2c_slave_shreg_i <<< 1'd1) | applet_i2c_slave_sda_i);
						applet_i2c_slave_shreg_i_i2cslave_t_next_value_ce <= 1'd1;
					end else begin
						if (applet_i2c_slave_bus_setup) begin
							applet_i2c_slave_bitno_i2cslave_next_value <= (applet_i2c_slave_bitno + 1'd1);
							applet_i2c_slave_bitno_i2cslave_next_value_ce <= 1'd1;
							if ((applet_i2c_slave_bitno == 3'd7)) begin
								applet_i2c_slave_data_i_i2cslave_f_next_value2 <= applet_i2c_slave_shreg_i;
								applet_i2c_slave_data_i_i2cslave_f_next_value_ce2 <= 1'd1;
								i2cslave_next_state <= 3'd5;
							end
						end
					end
				end
			end
		end
		3'd5: begin
			if (applet_i2c_slave_bus_stop) begin
				i2cslave_next_state <= 1'd0;
			end else begin
				if (applet_i2c_slave_bus_start) begin
					i2cslave_next_state <= 1'd1;
				end else begin
					if (((~applet_i2c_slave_scl_i) & applet_i2c_slave_ack_o)) begin
						applet_i2c_slave_sda_o_i2cslave_f_next_value0 <= 1'd0;
						applet_i2c_slave_sda_o_i2cslave_f_next_value_ce0 <= 1'd1;
					end else begin
						if (applet_i2c_slave_bus_setup) begin
							applet_i2c_slave_sda_o_i2cslave_f_next_value0 <= 1'd1;
							applet_i2c_slave_sda_o_i2cslave_f_next_value_ce0 <= 1'd1;
							i2cslave_next_state <= 3'd4;
						end
					end
				end
			end
		end
		3'd6: begin
			if (applet_i2c_slave_bus_stop) begin
				i2cslave_next_state <= 1'd0;
			end else begin
				if (applet_i2c_slave_bus_start) begin
					i2cslave_next_state <= 1'd1;
				end else begin
					if (applet_i2c_slave_bus_setup) begin
						applet_i2c_slave_bitno_i2cslave_next_value <= (applet_i2c_slave_bitno + 1'd1);
						applet_i2c_slave_bitno_i2cslave_next_value_ce <= 1'd1;
						applet_i2c_slave_sda_o_i2cslave_f_next_value0 <= applet_i2c_slave_shreg_o[7];
						applet_i2c_slave_sda_o_i2cslave_f_next_value_ce0 <= 1'd1;
						applet_i2c_slave_shreg_o_i2cslave_f_next_value1 <= (applet_i2c_slave_shreg_o <<< 1'd1);
						applet_i2c_slave_shreg_o_i2cslave_f_next_value_ce1 <= 1'd1;
					end else begin
						if (applet_i2c_slave_bus_sample) begin
							if ((applet_i2c_slave_bitno == 1'd0)) begin
								applet_i2c_slave_sda_o_i2cslave_f_next_value0 <= 1'd1;
								applet_i2c_slave_sda_o_i2cslave_f_next_value_ce0 <= 1'd1;
								i2cslave_next_state <= 3'd7;
							end
						end
					end
				end
			end
		end
		3'd7: begin
			if (applet_i2c_slave_bus_stop) begin
				i2cslave_next_state <= 1'd0;
			end else begin
				if (applet_i2c_slave_bus_start) begin
					i2cslave_next_state <= 1'd1;
				end else begin
					if (applet_i2c_slave_bus_sample) begin
						if ((~applet_i2c_slave_sda_i)) begin
							i2cslave_next_state <= 3'd6;
						end else begin
							i2cslave_next_state <= 1'd0;
						end
					end
				end
			end
		end
		default: begin
			if (applet_i2c_slave_bus_start) begin
				i2cslave_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d <= dummy_s;
// synthesis translate_on
end
assign applet_i2c_slave_fsm_is_el0 = ((~(i2cslave_state == 1'd0)) & (i2cslave_next_state == 1'd0));
assign applet_i2c_slave_fsm_is_el1 = ((~(i2cslave_state == 3'd5)) & (i2cslave_next_state == 3'd5));
assign applet_i2c_slave_fsm_is_el2 = ((~(i2cslave_state == 3'd6)) & (i2cslave_next_state == 3'd6));
assign applet_i2c_slave_data_o = rhs_array_muxed0;

// synthesis translate_off
reg dummy_d_1;
// synthesis translate_on
always @(*) begin
	applet_i2c_slave_ack_o <= 1'd0;
	if (applet_i2c_slave_write) begin
		if ((latch_addr & (applet_i2c_slave_data_i < 2'd2))) begin
			applet_i2c_slave_ack_o <= 1'd1;
		end else begin
			if ((~latch_addr)) begin
				applet_i2c_slave_ack_o <= 1'd1;
			end
		end
	end
// synthesis translate_off
	dummy_d_1 <= dummy_s;
// synthesis translate_on
end
assign applet_fifoadr_t_oe = 1'd1;
assign applet_fifoadr_t_o = fx2arbiter_addr;
assign fx2arbiter_flag = applet_flag_t_i;
assign fx2arbiter_rdy = ({applet_readable, spiflashavrapplet_syncfifobuffered1_readable, applet_writable, spiflashavrapplet_syncfifobuffered0_syncfifo0_writable} & fx2arbiter_flag);
assign lhs_array_muxed = applet_fd_t_i;

// synthesis translate_off
reg dummy_d_2;
// synthesis translate_on
always @(*) begin
	applet_din <= 8'd0;
	spiflashavrapplet_fifowithoverflow_din <= 8'd0;
	case (fx2arbiter_addr[0])
		1'd0: begin
			spiflashavrapplet_fifowithoverflow_din <= lhs_array_muxed;
		end
		default: begin
			applet_din <= lhs_array_muxed;
		end
	endcase
// synthesis translate_off
	dummy_d_2 <= dummy_s;
// synthesis translate_on
end
assign applet_fd_t_o = rhs_array_muxed1;
assign applet_fd_t_oe = fx2arbiter_fdoe;
assign applet_sloe_t_oe = 1'd1;
assign applet_sloe_t_o = (~fx2arbiter_sloe);
assign applet_slrd_t_oe = 1'd1;
assign applet_slrd_t_o = (~fx2arbiter_slrd);
assign applet_slwr_t_oe = 1'd1;
assign applet_slwr_t_o = (~fx2arbiter_slwr);
assign applet_pktend_t_oe = 1'd1;
assign applet_pktend_t_o = (~fx2arbiter_pend);

// synthesis translate_off
reg dummy_d_3;
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
	dummy_d_3 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_4;
// synthesis translate_on
always @(*) begin
	spiflashavrapplet_syncfifobuffered0_syncfifo0_we <= 1'd0;
	spiflashavrapplet_syncfifobuffered0_syncfifo0_din <= 8'd0;
	spiflashavrapplet_fifowithoverflow_writable <= 1'd0;
	spiflashavrapplet_fifowithoverflow_syncfifo_we <= 1'd0;
	spiflashavrapplet_fifowithoverflow_syncfifo_re <= 1'd0;
	spiflashavrapplet_fifowithoverflow_syncfifo_din <= 8'd0;
	if (spiflashavrapplet_fifowithoverflow_syncfifo_readable) begin
		spiflashavrapplet_syncfifobuffered0_syncfifo0_din <= spiflashavrapplet_fifowithoverflow_syncfifo_dout;
		spiflashavrapplet_syncfifobuffered0_syncfifo0_we <= 1'd1;
		spiflashavrapplet_fifowithoverflow_syncfifo_re <= spiflashavrapplet_syncfifobuffered0_syncfifo0_writable;
	end
	if ((spiflashavrapplet_syncfifobuffered0_syncfifo0_writable & (~spiflashavrapplet_fifowithoverflow_syncfifo_readable))) begin
		spiflashavrapplet_syncfifobuffered0_syncfifo0_din <= spiflashavrapplet_fifowithoverflow_din;
		spiflashavrapplet_syncfifobuffered0_syncfifo0_we <= spiflashavrapplet_fifowithoverflow_we;
		spiflashavrapplet_fifowithoverflow_writable <= spiflashavrapplet_syncfifobuffered0_syncfifo0_writable;
	end else begin
		spiflashavrapplet_fifowithoverflow_syncfifo_din <= spiflashavrapplet_fifowithoverflow_din;
		spiflashavrapplet_fifowithoverflow_syncfifo_we <= spiflashavrapplet_fifowithoverflow_we;
		spiflashavrapplet_fifowithoverflow_writable <= spiflashavrapplet_fifowithoverflow_syncfifo_writable;
	end
// synthesis translate_off
	dummy_d_4 <= dummy_s;
// synthesis translate_on
end
assign spiflashavrapplet_syncfifobuffered0_syncfifo0_re = (spiflashavrapplet_syncfifobuffered0_syncfifo0_readable & ((~spiflashavrapplet_syncfifobuffered0_readable) | spiflashavrapplet_syncfifobuffered0_re));
assign spiflashavrapplet_syncfifobuffered0_level1 = (spiflashavrapplet_syncfifobuffered0_level0 + spiflashavrapplet_syncfifobuffered0_readable);

// synthesis translate_off
reg dummy_d_5;
// synthesis translate_on
always @(*) begin
	spiflashavrapplet_syncfifobuffered0_wrport_adr <= 9'd0;
	if (spiflashavrapplet_syncfifobuffered0_replace) begin
		spiflashavrapplet_syncfifobuffered0_wrport_adr <= (spiflashavrapplet_syncfifobuffered0_produce - 1'd1);
	end else begin
		spiflashavrapplet_syncfifobuffered0_wrport_adr <= spiflashavrapplet_syncfifobuffered0_produce;
	end
// synthesis translate_off
	dummy_d_5 <= dummy_s;
// synthesis translate_on
end
assign spiflashavrapplet_syncfifobuffered0_wrport_dat_w = spiflashavrapplet_syncfifobuffered0_syncfifo0_din;
assign spiflashavrapplet_syncfifobuffered0_wrport_we = (spiflashavrapplet_syncfifobuffered0_syncfifo0_we & (spiflashavrapplet_syncfifobuffered0_syncfifo0_writable | spiflashavrapplet_syncfifobuffered0_replace));
assign spiflashavrapplet_syncfifobuffered0_do_read = (spiflashavrapplet_syncfifobuffered0_syncfifo0_readable & spiflashavrapplet_syncfifobuffered0_syncfifo0_re);
assign spiflashavrapplet_syncfifobuffered0_rdport_adr = spiflashavrapplet_syncfifobuffered0_consume;
assign spiflashavrapplet_syncfifobuffered0_syncfifo0_dout = spiflashavrapplet_syncfifobuffered0_rdport_dat_r;
assign spiflashavrapplet_syncfifobuffered0_rdport_re = spiflashavrapplet_syncfifobuffered0_do_read;
assign spiflashavrapplet_syncfifobuffered0_syncfifo0_writable = (spiflashavrapplet_syncfifobuffered0_level0 != 10'd512);
assign spiflashavrapplet_syncfifobuffered0_syncfifo0_readable = (spiflashavrapplet_syncfifobuffered0_level0 != 1'd0);

// synthesis translate_off
reg dummy_d_6;
// synthesis translate_on
always @(*) begin
	spiflashavrapplet_fifowithoverflow_wrport_adr <= 1'd0;
	if (spiflashavrapplet_fifowithoverflow_replace) begin
		spiflashavrapplet_fifowithoverflow_wrport_adr <= (spiflashavrapplet_fifowithoverflow_produce - 1'd1);
	end else begin
		spiflashavrapplet_fifowithoverflow_wrport_adr <= spiflashavrapplet_fifowithoverflow_produce;
	end
// synthesis translate_off
	dummy_d_6 <= dummy_s;
// synthesis translate_on
end
assign spiflashavrapplet_fifowithoverflow_wrport_dat_w = spiflashavrapplet_fifowithoverflow_syncfifo_din;
assign spiflashavrapplet_fifowithoverflow_wrport_we = (spiflashavrapplet_fifowithoverflow_syncfifo_we & (spiflashavrapplet_fifowithoverflow_syncfifo_writable | spiflashavrapplet_fifowithoverflow_replace));
assign spiflashavrapplet_fifowithoverflow_do_read = (spiflashavrapplet_fifowithoverflow_syncfifo_readable & spiflashavrapplet_fifowithoverflow_syncfifo_re);
assign spiflashavrapplet_fifowithoverflow_rdport_adr = spiflashavrapplet_fifowithoverflow_consume;
assign spiflashavrapplet_fifowithoverflow_syncfifo_dout = spiflashavrapplet_fifowithoverflow_rdport_dat_r;
assign spiflashavrapplet_fifowithoverflow_syncfifo_writable = (spiflashavrapplet_fifowithoverflow_level != 2'd2);
assign spiflashavrapplet_fifowithoverflow_syncfifo_readable = (spiflashavrapplet_fifowithoverflow_level != 1'd0);
assign spiflashavrapplet_syncfifobuffered1_syncfifo1_re = (spiflashavrapplet_syncfifobuffered1_syncfifo1_readable & ((~spiflashavrapplet_syncfifobuffered1_readable) | spiflashavrapplet_syncfifobuffered1_re));
assign spiflashavrapplet_syncfifobuffered1_level1 = (spiflashavrapplet_syncfifobuffered1_level0 + spiflashavrapplet_syncfifobuffered1_readable);

// synthesis translate_off
reg dummy_d_7;
// synthesis translate_on
always @(*) begin
	spiflashavrapplet_syncfifobuffered1_wrport_adr <= 9'd0;
	if (spiflashavrapplet_syncfifobuffered1_replace) begin
		spiflashavrapplet_syncfifobuffered1_wrport_adr <= (spiflashavrapplet_syncfifobuffered1_produce - 1'd1);
	end else begin
		spiflashavrapplet_syncfifobuffered1_wrport_adr <= spiflashavrapplet_syncfifobuffered1_produce;
	end
// synthesis translate_off
	dummy_d_7 <= dummy_s;
// synthesis translate_on
end
assign spiflashavrapplet_syncfifobuffered1_wrport_dat_w = spiflashavrapplet_syncfifobuffered1_syncfifo1_din;
assign spiflashavrapplet_syncfifobuffered1_wrport_we = (spiflashavrapplet_syncfifobuffered1_syncfifo1_we & (spiflashavrapplet_syncfifobuffered1_syncfifo1_writable | spiflashavrapplet_syncfifobuffered1_replace));
assign spiflashavrapplet_syncfifobuffered1_do_read = (spiflashavrapplet_syncfifobuffered1_syncfifo1_readable & spiflashavrapplet_syncfifobuffered1_syncfifo1_re);
assign spiflashavrapplet_syncfifobuffered1_rdport_adr = spiflashavrapplet_syncfifobuffered1_consume;
assign spiflashavrapplet_syncfifobuffered1_syncfifo1_dout = spiflashavrapplet_syncfifobuffered1_rdport_dat_r;
assign spiflashavrapplet_syncfifobuffered1_rdport_re = spiflashavrapplet_syncfifobuffered1_do_read;
assign spiflashavrapplet_syncfifobuffered1_syncfifo1_writable = (spiflashavrapplet_syncfifobuffered1_level0 != 10'd512);
assign spiflashavrapplet_syncfifobuffered1_syncfifo1_readable = (spiflashavrapplet_syncfifobuffered1_level0 != 1'd0);

// synthesis translate_off
reg dummy_d_8;
// synthesis translate_on
always @(*) begin
	applet_we <= 1'd0;
	applet_re <= 1'd0;
	spiflashavrapplet_fifowithoverflow_we <= 1'd0;
	spiflashavrapplet_syncfifobuffered1_re <= 1'd0;
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
	cases_lhs_array_muxed <= 1'd0;
	cases_array_muxed <= 1'd0;
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
				fx2arbiter_next_state <= 3'd5;
			end
		end
		2'd3: begin
			fx2arbiter_next_state <= 3'd4;
		end
		3'd4: begin
			if ((fx2arbiter_rdy & (1'd1 <<< fx2arbiter_addr))) begin
				fx2arbiter_slwr <= 1'd1;
				cases_lhs_array_muxed <= 1'd1;
				case (fx2arbiter_addr[0])
					1'd0: begin
						spiflashavrapplet_syncfifobuffered1_re <= cases_lhs_array_muxed;
					end
					default: begin
						applet_re <= cases_lhs_array_muxed;
					end
				endcase
			end else begin
				if (((((fx2arbiter_flag & (1'd1 <<< fx2arbiter_addr)) == 1'd0) & (~cases_basiclowerer_array_muxed0)) & cases_basiclowerer_array_muxed1)) begin
					fx2arbiter_pend <= 1'd1;
					fx2arbiter_next_state <= 1'd0;
				end else begin
					if ((((fx2arbiter_flag & (1'd1 <<< fx2arbiter_addr)) != 1'd0) & (~cases_f_array_muxed))) begin
						fx2arbiter_pend <= 1'd1;
						fx2arbiter_next_state <= 1'd0;
					end else begin
						fx2arbiter_next_state <= 1'd0;
					end
				end
			end
		end
		3'd5: begin
			fx2arbiter_slrd <= 1'd1;
			fx2arbiter_next_state <= 3'd6;
		end
		3'd6: begin
			cases_array_muxed <= ((fx2arbiter_flag & (1'd1 <<< fx2arbiter_addr)) != 1'd0);
			case (fx2arbiter_addr[0])
				1'd0: begin
					spiflashavrapplet_fifowithoverflow_we <= cases_array_muxed;
				end
				default: begin
					applet_we <= cases_array_muxed;
				end
			endcase
			if ((fx2arbiter_rdy & (1'd1 <<< fx2arbiter_addr))) begin
				fx2arbiter_slrd <= cases_rhs_array_muxed;
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
	dummy_d_8 <= dummy_s;
// synthesis translate_on
end
assign spiflashavrapplet_mosi = spiflashavrapplet_oreg[7];
assign spiflashavrapplet_tstriple1_oe = spiflashavrapplet_oe;
assign spiflashavrapplet_tstriple1_o = spiflashavrapplet_sck;
assign spiflashavrapplet_tstriple3_oe = spiflashavrapplet_oe;
assign spiflashavrapplet_tstriple3_o = spiflashavrapplet_mosi;
assign spiflashavrapplet_setup = (spiflashavrapplet_sck_r & (~spiflashavrapplet_sck));
assign spiflashavrapplet_latch = ((~spiflashavrapplet_sck_r) & spiflashavrapplet_sck);

// synthesis translate_off
reg dummy_d_9;
// synthesis translate_on
always @(*) begin
	spiflashavrapplet_syncfifobuffered0_re <= 1'd0;
	spiflashavrapplet_syncfifobuffered1_syncfifo1_we <= 1'd0;
	spiflashavrapplet_syncfifobuffered1_syncfifo1_din <= 8'd0;
	resetinserter_next_state <= 3'd0;
	spiflashavrapplet_count_resetinserter_t_next_value0 <= 16'd0;
	spiflashavrapplet_count_resetinserter_t_next_value_ce0 <= 1'd0;
	spiflashavrapplet_ss_resetinserter_f_next_value <= 1'd0;
	spiflashavrapplet_ss_resetinserter_f_next_value_ce <= 1'd0;
	spiflashavrapplet_oreg_resetinserter_t_next_value1 <= 8'd0;
	spiflashavrapplet_oreg_resetinserter_t_next_value_ce1 <= 1'd0;
	spiflashavrapplet_timer_resetinserter_t_next_value2 <= 8'd0;
	spiflashavrapplet_timer_resetinserter_t_next_value_ce2 <= 1'd0;
	spiflashavrapplet_sck_resetinserter_t_next_value3 <= 1'd0;
	spiflashavrapplet_sck_resetinserter_t_next_value_ce3 <= 1'd0;
	spiflashavrapplet_bitno_resetinserter_t_next_value4 <= 3'd0;
	spiflashavrapplet_bitno_resetinserter_t_next_value_ce4 <= 1'd0;
	resetinserter_next_state <= resetinserter_state;
	case (resetinserter_state)
		1'd1: begin
			if (spiflashavrapplet_syncfifobuffered0_readable) begin
				spiflashavrapplet_syncfifobuffered0_re <= 1'd1;
				spiflashavrapplet_count_resetinserter_t_next_value0 <= (spiflashavrapplet_count | spiflashavrapplet_syncfifobuffered0_syncfifo0_dout);
				spiflashavrapplet_count_resetinserter_t_next_value_ce0 <= 1'd1;
				resetinserter_next_state <= 2'd2;
			end
		end
		2'd2: begin
			if ((spiflashavrapplet_count == 1'd0)) begin
				resetinserter_next_state <= 1'd0;
			end else begin
				spiflashavrapplet_ss_resetinserter_f_next_value <= 1'd0;
				spiflashavrapplet_ss_resetinserter_f_next_value_ce <= 1'd1;
				resetinserter_next_state <= 2'd3;
			end
		end
		2'd3: begin
			if (spiflashavrapplet_syncfifobuffered0_readable) begin
				spiflashavrapplet_syncfifobuffered0_re <= 1'd1;
				spiflashavrapplet_count_resetinserter_t_next_value0 <= (spiflashavrapplet_count - 1'd1);
				spiflashavrapplet_count_resetinserter_t_next_value_ce0 <= 1'd1;
				spiflashavrapplet_oreg_resetinserter_t_next_value1 <= spiflashavrapplet_syncfifobuffered0_syncfifo0_dout;
				spiflashavrapplet_oreg_resetinserter_t_next_value_ce1 <= 1'd1;
				spiflashavrapplet_timer_resetinserter_t_next_value2 <= 8'd149;
				spiflashavrapplet_timer_resetinserter_t_next_value_ce2 <= 1'd1;
				resetinserter_next_state <= 3'd4;
			end
		end
		3'd4: begin
			if ((spiflashavrapplet_timer == 1'd0)) begin
				spiflashavrapplet_timer_resetinserter_t_next_value2 <= 8'd149;
				spiflashavrapplet_timer_resetinserter_t_next_value_ce2 <= 1'd1;
				spiflashavrapplet_sck_resetinserter_t_next_value3 <= (~spiflashavrapplet_sck);
				spiflashavrapplet_sck_resetinserter_t_next_value_ce3 <= 1'd1;
				if ((spiflashavrapplet_sck == 1'd1)) begin
					spiflashavrapplet_bitno_resetinserter_t_next_value4 <= (spiflashavrapplet_bitno - 1'd1);
					spiflashavrapplet_bitno_resetinserter_t_next_value_ce4 <= 1'd1;
					if ((spiflashavrapplet_bitno == 1'd0)) begin
						resetinserter_next_state <= 3'd5;
					end
				end
			end else begin
				spiflashavrapplet_timer_resetinserter_t_next_value2 <= (spiflashavrapplet_timer - 1'd1);
				spiflashavrapplet_timer_resetinserter_t_next_value_ce2 <= 1'd1;
			end
		end
		3'd5: begin
			spiflashavrapplet_syncfifobuffered1_syncfifo1_din <= spiflashavrapplet_ireg;
			if (spiflashavrapplet_syncfifobuffered1_syncfifo1_writable) begin
				spiflashavrapplet_syncfifobuffered1_syncfifo1_we <= 1'd1;
				if ((spiflashavrapplet_count == 1'd0)) begin
					resetinserter_next_state <= 3'd6;
				end else begin
					resetinserter_next_state <= 2'd3;
				end
			end
		end
		3'd6: begin
			if ((spiflashavrapplet_timer == 1'd0)) begin
				spiflashavrapplet_ss_resetinserter_f_next_value <= 1'd1;
				spiflashavrapplet_ss_resetinserter_f_next_value_ce <= 1'd1;
				resetinserter_next_state <= 1'd0;
			end else begin
				spiflashavrapplet_timer_resetinserter_t_next_value2 <= (spiflashavrapplet_timer - 1'd1);
				spiflashavrapplet_timer_resetinserter_t_next_value_ce2 <= 1'd1;
			end
		end
		default: begin
			if (spiflashavrapplet_syncfifobuffered0_readable) begin
				spiflashavrapplet_syncfifobuffered0_re <= 1'd1;
				spiflashavrapplet_count_resetinserter_t_next_value0 <= (spiflashavrapplet_syncfifobuffered0_syncfifo0_dout <<< 4'd8);
				spiflashavrapplet_count_resetinserter_t_next_value_ce0 <= 1'd1;
				resetinserter_next_state <= 1'd1;
			end
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
	rhs_array_muxed0 <= 1'd0;
	case (applet_registers_address)
		1'd0: begin
			rhs_array_muxed0 <= spiflashavrapplet_reg0;
		end
		default: begin
			rhs_array_muxed0 <= spiflashavrapplet_reg1;
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
	rhs_array_muxed1 <= 8'd0;
	case (fx2arbiter_addr[0])
		1'd0: begin
			rhs_array_muxed1 <= spiflashavrapplet_syncfifobuffered1_syncfifo1_dout;
		end
		default: begin
			rhs_array_muxed1 <= applet_dout;
		end
	endcase
// synthesis translate_off
	dummy_d_11 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_12;
// synthesis translate_on
always @(*) begin
	cases_basiclowerer_array_muxed0 <= 1'd0;
	case (fx2arbiter_addr[0])
		1'd0: begin
			cases_basiclowerer_array_muxed0 <= spiflashavrapplet_syncfifobuffered1_readable;
		end
		default: begin
			cases_basiclowerer_array_muxed0 <= applet_readable;
		end
	endcase
// synthesis translate_off
	dummy_d_12 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_13;
// synthesis translate_on
always @(*) begin
	cases_basiclowerer_array_muxed1 <= 1'd0;
	case (fx2arbiter_addr[0])
		1'd0: begin
			cases_basiclowerer_array_muxed1 <= 1'd0;
		end
		default: begin
			cases_basiclowerer_array_muxed1 <= 1'd0;
		end
	endcase
// synthesis translate_off
	dummy_d_13 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_14;
// synthesis translate_on
always @(*) begin
	cases_f_array_muxed <= 1'd0;
	case (fx2arbiter_addr[0])
		1'd0: begin
			cases_f_array_muxed <= 1'd0;
		end
		default: begin
			cases_f_array_muxed <= 1'd0;
		end
	endcase
// synthesis translate_off
	dummy_d_14 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_15;
// synthesis translate_on
always @(*) begin
	cases_rhs_array_muxed <= 1'd0;
	case (fx2arbiter_addr[0])
		1'd0: begin
			cases_rhs_array_muxed <= spiflashavrapplet_syncfifobuffered0_syncfifo0_writable;
		end
		default: begin
			cases_rhs_array_muxed <= applet_writable;
		end
	endcase
// synthesis translate_off
	dummy_d_15 <= dummy_s;
// synthesis translate_on
end
assign applet_i2c_slave_scl_i = multiregimpl0_regs1;
assign applet_i2c_slave_sda_i = multiregimpl1_regs1;
assign spiflashavrapplet_miso = multiregimpl2_regs1;

always @(posedge por_clk) begin
	if ((applet_reset_delay != 1'd0)) begin
		applet_reset_delay <= (applet_reset_delay - 1'd1);
	end
end

always @(posedge sys_clk) begin
	applet_i2c_slave_scl_r <= applet_i2c_slave_scl_i;
	applet_i2c_slave_sda_r <= applet_i2c_slave_sda_i;
	applet_i2c_slave_signal_is_el0 <= applet_i2c_slave_fsm_is_el0;
	applet_i2c_slave_signal_is_el1 <= applet_i2c_slave_fsm_is_el1;
	i2cslave_state <= i2cslave_next_state;
	if (applet_i2c_slave_bitno_i2cslave_next_value_ce) begin
		applet_i2c_slave_bitno <= applet_i2c_slave_bitno_i2cslave_next_value;
	end
	if (applet_i2c_slave_shreg_i_i2cslave_t_next_value_ce) begin
		applet_i2c_slave_shreg_i <= applet_i2c_slave_shreg_i_i2cslave_t_next_value;
	end
	if (applet_i2c_slave_sda_o_i2cslave_f_next_value_ce0) begin
		applet_i2c_slave_sda_o <= applet_i2c_slave_sda_o_i2cslave_f_next_value0;
	end
	if (applet_i2c_slave_shreg_o_i2cslave_f_next_value_ce1) begin
		applet_i2c_slave_shreg_o <= applet_i2c_slave_shreg_o_i2cslave_f_next_value1;
	end
	if (applet_i2c_slave_data_i_i2cslave_f_next_value_ce2) begin
		applet_i2c_slave_data_i <= applet_i2c_slave_data_i_i2cslave_f_next_value2;
	end
	if (applet_i2c_slave_start) begin
		latch_addr <= 1'd1;
	end
	if (applet_i2c_slave_write) begin
		if (latch_addr) begin
			if ((applet_i2c_slave_data_i < 2'd2)) begin
				latch_addr <= 1'd0;
				applet_registers_address <= applet_i2c_slave_data_i;
			end
		end else begin
			array_muxed = applet_i2c_slave_data_i;
			case (applet_registers_address)
				1'd0: begin
					spiflashavrapplet_reg0 <= array_muxed;
				end
				default: begin
					spiflashavrapplet_reg1 <= array_muxed;
				end
			endcase
		end
	end
	if (spiflashavrapplet_syncfifobuffered0_syncfifo0_re) begin
		spiflashavrapplet_syncfifobuffered0_readable <= 1'd1;
	end else begin
		if (spiflashavrapplet_syncfifobuffered0_re) begin
			spiflashavrapplet_syncfifobuffered0_readable <= 1'd0;
		end
	end
	if (((spiflashavrapplet_syncfifobuffered0_syncfifo0_we & spiflashavrapplet_syncfifobuffered0_syncfifo0_writable) & (~spiflashavrapplet_syncfifobuffered0_replace))) begin
		spiflashavrapplet_syncfifobuffered0_produce <= (spiflashavrapplet_syncfifobuffered0_produce + 1'd1);
	end
	if (spiflashavrapplet_syncfifobuffered0_do_read) begin
		spiflashavrapplet_syncfifobuffered0_consume <= (spiflashavrapplet_syncfifobuffered0_consume + 1'd1);
	end
	if (((spiflashavrapplet_syncfifobuffered0_syncfifo0_we & spiflashavrapplet_syncfifobuffered0_syncfifo0_writable) & (~spiflashavrapplet_syncfifobuffered0_replace))) begin
		if ((~spiflashavrapplet_syncfifobuffered0_do_read)) begin
			spiflashavrapplet_syncfifobuffered0_level0 <= (spiflashavrapplet_syncfifobuffered0_level0 + 1'd1);
		end
	end else begin
		if (spiflashavrapplet_syncfifobuffered0_do_read) begin
			spiflashavrapplet_syncfifobuffered0_level0 <= (spiflashavrapplet_syncfifobuffered0_level0 - 1'd1);
		end
	end
	if (((spiflashavrapplet_fifowithoverflow_syncfifo_we & spiflashavrapplet_fifowithoverflow_syncfifo_writable) & (~spiflashavrapplet_fifowithoverflow_replace))) begin
		spiflashavrapplet_fifowithoverflow_produce <= (spiflashavrapplet_fifowithoverflow_produce + 1'd1);
	end
	if (spiflashavrapplet_fifowithoverflow_do_read) begin
		spiflashavrapplet_fifowithoverflow_consume <= (spiflashavrapplet_fifowithoverflow_consume + 1'd1);
	end
	if (((spiflashavrapplet_fifowithoverflow_syncfifo_we & spiflashavrapplet_fifowithoverflow_syncfifo_writable) & (~spiflashavrapplet_fifowithoverflow_replace))) begin
		if ((~spiflashavrapplet_fifowithoverflow_do_read)) begin
			spiflashavrapplet_fifowithoverflow_level <= (spiflashavrapplet_fifowithoverflow_level + 1'd1);
		end
	end else begin
		if (spiflashavrapplet_fifowithoverflow_do_read) begin
			spiflashavrapplet_fifowithoverflow_level <= (spiflashavrapplet_fifowithoverflow_level - 1'd1);
		end
	end
	if (spiflashavrapplet_syncfifobuffered1_syncfifo1_re) begin
		spiflashavrapplet_syncfifobuffered1_readable <= 1'd1;
	end else begin
		if (spiflashavrapplet_syncfifobuffered1_re) begin
			spiflashavrapplet_syncfifobuffered1_readable <= 1'd0;
		end
	end
	if (((spiflashavrapplet_syncfifobuffered1_syncfifo1_we & spiflashavrapplet_syncfifobuffered1_syncfifo1_writable) & (~spiflashavrapplet_syncfifobuffered1_replace))) begin
		spiflashavrapplet_syncfifobuffered1_produce <= (spiflashavrapplet_syncfifobuffered1_produce + 1'd1);
	end
	if (spiflashavrapplet_syncfifobuffered1_do_read) begin
		spiflashavrapplet_syncfifobuffered1_consume <= (spiflashavrapplet_syncfifobuffered1_consume + 1'd1);
	end
	if (((spiflashavrapplet_syncfifobuffered1_syncfifo1_we & spiflashavrapplet_syncfifobuffered1_syncfifo1_writable) & (~spiflashavrapplet_syncfifobuffered1_replace))) begin
		if ((~spiflashavrapplet_syncfifobuffered1_do_read)) begin
			spiflashavrapplet_syncfifobuffered1_level0 <= (spiflashavrapplet_syncfifobuffered1_level0 + 1'd1);
		end
	end else begin
		if (spiflashavrapplet_syncfifobuffered1_do_read) begin
			spiflashavrapplet_syncfifobuffered1_level0 <= (spiflashavrapplet_syncfifobuffered1_level0 - 1'd1);
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
	if (spiflashavrapplet_setup) begin
		spiflashavrapplet_oreg[7:1] <= spiflashavrapplet_oreg;
	end else begin
		if (spiflashavrapplet_latch) begin
			spiflashavrapplet_ireg <= {spiflashavrapplet_ireg, spiflashavrapplet_miso};
		end
	end
	spiflashavrapplet_sck_r <= spiflashavrapplet_sck;
	resetinserter_state <= resetinserter_next_state;
	if (spiflashavrapplet_count_resetinserter_t_next_value_ce0) begin
		spiflashavrapplet_count <= spiflashavrapplet_count_resetinserter_t_next_value0;
	end
	if (spiflashavrapplet_ss_resetinserter_f_next_value_ce) begin
		spiflashavrapplet_ss <= spiflashavrapplet_ss_resetinserter_f_next_value;
	end
	if (spiflashavrapplet_oreg_resetinserter_t_next_value_ce1) begin
		spiflashavrapplet_oreg <= spiflashavrapplet_oreg_resetinserter_t_next_value1;
	end
	if (spiflashavrapplet_timer_resetinserter_t_next_value_ce2) begin
		spiflashavrapplet_timer <= spiflashavrapplet_timer_resetinserter_t_next_value2;
	end
	if (spiflashavrapplet_sck_resetinserter_t_next_value_ce3) begin
		spiflashavrapplet_sck <= spiflashavrapplet_sck_resetinserter_t_next_value3;
	end
	if (spiflashavrapplet_bitno_resetinserter_t_next_value_ce4) begin
		spiflashavrapplet_bitno <= spiflashavrapplet_bitno_resetinserter_t_next_value4;
	end
	if (spiflashavrapplet_reset) begin
		spiflashavrapplet_sck <= 1'd0;
		spiflashavrapplet_ss <= 1'd1;
		spiflashavrapplet_sck_r <= 1'd0;
		spiflashavrapplet_timer <= 8'd0;
		spiflashavrapplet_count <= 16'd0;
		spiflashavrapplet_bitno <= 3'd7;
		spiflashavrapplet_oreg <= 8'd0;
		spiflashavrapplet_ireg <= 8'd0;
		resetinserter_state <= 3'd0;
	end
	if (sys_rst) begin
		applet_i2c_slave_data_i <= 8'd0;
		applet_i2c_slave_sda_o <= 1'd1;
		applet_i2c_slave_scl_r <= 1'd1;
		applet_i2c_slave_sda_r <= 1'd1;
		applet_i2c_slave_bitno <= 3'd0;
		applet_i2c_slave_shreg_i <= 8'd0;
		applet_i2c_slave_shreg_o <= 8'd0;
		applet_i2c_slave_signal_is_el0 <= 1'd1;
		applet_i2c_slave_signal_is_el1 <= 1'd0;
		applet_registers_address <= 8'd0;
		spiflashavrapplet_syncfifobuffered0_readable <= 1'd0;
		spiflashavrapplet_syncfifobuffered0_level0 <= 10'd0;
		spiflashavrapplet_syncfifobuffered0_produce <= 9'd0;
		spiflashavrapplet_syncfifobuffered0_consume <= 9'd0;
		spiflashavrapplet_fifowithoverflow_level <= 2'd0;
		spiflashavrapplet_fifowithoverflow_produce <= 1'd0;
		spiflashavrapplet_fifowithoverflow_consume <= 1'd0;
		spiflashavrapplet_syncfifobuffered1_readable <= 1'd0;
		spiflashavrapplet_syncfifobuffered1_level0 <= 10'd0;
		spiflashavrapplet_syncfifobuffered1_produce <= 9'd0;
		spiflashavrapplet_syncfifobuffered1_consume <= 9'd0;
		spiflashavrapplet_sck <= 1'd0;
		spiflashavrapplet_ss <= 1'd1;
		spiflashavrapplet_sck_r <= 1'd0;
		spiflashavrapplet_timer <= 8'd0;
		spiflashavrapplet_count <= 16'd0;
		spiflashavrapplet_bitno <= 3'd7;
		spiflashavrapplet_oreg <= 8'd0;
		spiflashavrapplet_ireg <= 8'd0;
		spiflashavrapplet_reg0 <= 1'd0;
		spiflashavrapplet_reg1 <= 1'd0;
		i2cslave_state <= 3'd0;
		latch_addr <= 1'd0;
		fx2arbiter_addr <= 2'd0;
		fx2arbiter_fdoe <= 1'd0;
		fx2arbiter_sloe <= 1'd0;
		fx2arbiter_state <= 3'd0;
		resetinserter_state <= 3'd0;
	end
	multiregimpl0_regs0 <= applet_tstriple0_i;
	multiregimpl0_regs1 <= multiregimpl0_regs0;
	multiregimpl1_regs0 <= applet_tstriple1_i;
	multiregimpl1_regs1 <= multiregimpl1_regs0;
	multiregimpl2_regs0 <= spiflashavrapplet_tstriple2_i;
	multiregimpl2_regs1 <= multiregimpl2_regs0;
end

SB_IO #(
	.PIN_TYPE(6'd1)
) SB_IO (
	.PACKAGE_PIN(clk_if),
	.D_IN_0(applet_clk_buf)
);

SB_GB SB_GB(
	.USER_SIGNAL_TO_GLOBAL_BUFFER(applet_clk_buf),
	.GLOBAL_BUFFER_OUTPUT(por_clk)
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_1 (
	.D_OUT_0(applet_fifoadr_t_o[0]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(applet_fifoadr_t_oe),
	.PACKAGE_PIN(fx2_fifoadr[0]),
	.D_IN_0(applet_fifoadr_t_i[0])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_2 (
	.D_OUT_0(applet_fifoadr_t_o[1]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(applet_fifoadr_t_oe),
	.PACKAGE_PIN(fx2_fifoadr[1]),
	.D_IN_0(applet_fifoadr_t_i[1])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_3 (
	.D_OUT_0(applet_flag_t_o[0]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(applet_flag_t_oe),
	.PACKAGE_PIN(fx2_flag[0]),
	.D_IN_0(applet_flag_t_i[0])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_4 (
	.D_OUT_0(applet_flag_t_o[1]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(applet_flag_t_oe),
	.PACKAGE_PIN(fx2_flag[1]),
	.D_IN_0(applet_flag_t_i[1])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_5 (
	.D_OUT_0(applet_flag_t_o[2]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(applet_flag_t_oe),
	.PACKAGE_PIN(fx2_flag[2]),
	.D_IN_0(applet_flag_t_i[2])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_6 (
	.D_OUT_0(applet_flag_t_o[3]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(applet_flag_t_oe),
	.PACKAGE_PIN(fx2_flag[3]),
	.D_IN_0(applet_flag_t_i[3])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_7 (
	.D_OUT_0(applet_fd_t_o[0]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(applet_fd_t_oe),
	.PACKAGE_PIN(fx2_fd[0]),
	.D_IN_0(applet_fd_t_i[0])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_8 (
	.D_OUT_0(applet_fd_t_o[1]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(applet_fd_t_oe),
	.PACKAGE_PIN(fx2_fd[1]),
	.D_IN_0(applet_fd_t_i[1])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_9 (
	.D_OUT_0(applet_fd_t_o[2]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(applet_fd_t_oe),
	.PACKAGE_PIN(fx2_fd[2]),
	.D_IN_0(applet_fd_t_i[2])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_10 (
	.D_OUT_0(applet_fd_t_o[3]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(applet_fd_t_oe),
	.PACKAGE_PIN(fx2_fd[3]),
	.D_IN_0(applet_fd_t_i[3])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_11 (
	.D_OUT_0(applet_fd_t_o[4]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(applet_fd_t_oe),
	.PACKAGE_PIN(fx2_fd[4]),
	.D_IN_0(applet_fd_t_i[4])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_12 (
	.D_OUT_0(applet_fd_t_o[5]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(applet_fd_t_oe),
	.PACKAGE_PIN(fx2_fd[5]),
	.D_IN_0(applet_fd_t_i[5])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_13 (
	.D_OUT_0(applet_fd_t_o[6]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(applet_fd_t_oe),
	.PACKAGE_PIN(fx2_fd[6]),
	.D_IN_0(applet_fd_t_i[6])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_14 (
	.D_OUT_0(applet_fd_t_o[7]),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(applet_fd_t_oe),
	.PACKAGE_PIN(fx2_fd[7]),
	.D_IN_0(applet_fd_t_i[7])
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_15 (
	.D_OUT_0(applet_sloe_t_o),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(applet_sloe_t_oe),
	.PACKAGE_PIN(fx2_sloe),
	.D_IN_0(applet_sloe_t_i)
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_16 (
	.D_OUT_0(applet_slrd_t_o),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(applet_slrd_t_oe),
	.PACKAGE_PIN(fx2_slrd),
	.D_IN_0(applet_slrd_t_i)
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_17 (
	.D_OUT_0(applet_slwr_t_o),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(applet_slwr_t_oe),
	.PACKAGE_PIN(fx2_slwr),
	.D_IN_0(applet_slwr_t_i)
);

SB_IO #(
	.PIN_TYPE(6'd52)
) SB_IO_18 (
	.D_OUT_0(applet_pktend_t_o),
	.INPUT_CLK(sys_clk),
	.OUTPUT_CLK(sys_clk),
	.OUTPUT_ENABLE(applet_pktend_t_oe),
	.PACKAGE_PIN(fx2_pktend),
	.D_IN_0(applet_pktend_t_i)
);

SB_IO #(
	.PIN_TYPE(6'd41)
) SB_IO_19 (
	.D_OUT_0(spiflashavrapplet_tstriple0_o),
	.OUTPUT_ENABLE(spiflashavrapplet_tstriple0_oe),
	.PACKAGE_PIN(io[0]),
	.D_IN_0(spiflashavrapplet_tstriple0_i)
);

SB_IO #(
	.PIN_TYPE(6'd41)
) SB_IO_20 (
	.D_OUT_0(spiflashavrapplet_tstriple1_o),
	.OUTPUT_ENABLE(spiflashavrapplet_tstriple1_oe),
	.PACKAGE_PIN(io[1]),
	.D_IN_0(spiflashavrapplet_tstriple1_i)
);

SB_IO #(
	.PIN_TYPE(6'd41)
) SB_IO_21 (
	.D_OUT_0(spiflashavrapplet_tstriple2_o),
	.OUTPUT_ENABLE(spiflashavrapplet_tstriple2_oe),
	.PACKAGE_PIN(io[2]),
	.D_IN_0(spiflashavrapplet_tstriple2_i)
);

SB_IO #(
	.PIN_TYPE(6'd41)
) SB_IO_22 (
	.D_OUT_0(spiflashavrapplet_tstriple3_o),
	.OUTPUT_ENABLE(spiflashavrapplet_tstriple3_oe),
	.PACKAGE_PIN(io[3]),
	.D_IN_0(spiflashavrapplet_tstriple3_i)
);

reg [7:0] storage[0:511];
reg [7:0] memdat;
reg [7:0] memdat_1;
always @(posedge sys_clk) begin
	if (spiflashavrapplet_syncfifobuffered0_wrport_we)
		storage[spiflashavrapplet_syncfifobuffered0_wrport_adr] <= spiflashavrapplet_syncfifobuffered0_wrport_dat_w;
	memdat <= storage[spiflashavrapplet_syncfifobuffered0_wrport_adr];
end

always @(posedge sys_clk) begin
	if (spiflashavrapplet_syncfifobuffered0_rdport_re)
		memdat_1 <= storage[spiflashavrapplet_syncfifobuffered0_rdport_adr];
end

assign spiflashavrapplet_syncfifobuffered0_wrport_dat_r = memdat;
assign spiflashavrapplet_syncfifobuffered0_rdport_dat_r = memdat_1;

reg [7:0] storage_1[0:1];
reg [7:0] memdat_2;
always @(posedge sys_clk) begin
	if (spiflashavrapplet_fifowithoverflow_wrport_we)
		storage_1[spiflashavrapplet_fifowithoverflow_wrport_adr] <= spiflashavrapplet_fifowithoverflow_wrport_dat_w;
	memdat_2 <= storage_1[spiflashavrapplet_fifowithoverflow_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign spiflashavrapplet_fifowithoverflow_wrport_dat_r = memdat_2;
assign spiflashavrapplet_fifowithoverflow_rdport_dat_r = storage_1[spiflashavrapplet_fifowithoverflow_rdport_adr];

reg [7:0] storage_2[0:511];
reg [7:0] memdat_3;
reg [7:0] memdat_4;
always @(posedge sys_clk) begin
	if (spiflashavrapplet_syncfifobuffered1_wrport_we)
		storage_2[spiflashavrapplet_syncfifobuffered1_wrport_adr] <= spiflashavrapplet_syncfifobuffered1_wrport_dat_w;
	memdat_3 <= storage_2[spiflashavrapplet_syncfifobuffered1_wrport_adr];
end

always @(posedge sys_clk) begin
	if (spiflashavrapplet_syncfifobuffered1_rdport_re)
		memdat_4 <= storage_2[spiflashavrapplet_syncfifobuffered1_rdport_adr];
end

assign spiflashavrapplet_syncfifobuffered1_wrport_dat_r = memdat_3;
assign spiflashavrapplet_syncfifobuffered1_rdport_dat_r = memdat_4;

SB_IO #(
	.PIN_TYPE(6'd41)
) SB_IO_23 (
	.D_OUT_0(applet_tstriple0_o),
	.OUTPUT_ENABLE(applet_tstriple0_oe),
	.PACKAGE_PIN(i2c_scl),
	.D_IN_0(applet_tstriple0_i)
);

SB_IO #(
	.PIN_TYPE(6'd41)
) SB_IO_24 (
	.D_OUT_0(applet_tstriple1_o),
	.OUTPUT_ENABLE(applet_tstriple1_oe),
	.PACKAGE_PIN(i2c_sda),
	.D_IN_0(applet_tstriple1_i)
);

endmodule
