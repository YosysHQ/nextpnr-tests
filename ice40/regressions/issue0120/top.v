/* Machine-generated using LiteX gen */
module top(
	input clk16,
	output reg spiflash_cs_n,
	output reg spiflash_clk,
	output reg spiflash_mosi,
	input spiflash_miso,
	output spiflash_wp,
	output spiflash_hold,
	input serial_rx,
	output reg serial_tx,
	inout usb_d_p,
	inout usb_d_n,
	output usb_pullup,
	output user_led0
);

wire usbtestsoc_usbtestsoc_reset_reset_re;
wire usbtestsoc_usbtestsoc_reset_reset_r;
reg usbtestsoc_usbtestsoc_reset_reset_w = 1'd0;
reg [31:0] usbtestsoc_usbtestsoc_storage_full = 32'd305419896;
wire [31:0] usbtestsoc_usbtestsoc_storage;
reg usbtestsoc_usbtestsoc_re = 1'd0;
wire [31:0] usbtestsoc_usbtestsoc_bus_errors_status;
wire usbtestsoc_usbtestsoc_reset;
wire usbtestsoc_usbtestsoc_bus_error;
reg [31:0] usbtestsoc_usbtestsoc_bus_errors = 32'd0;
reg [13:0] usbtestsoc_usbtestsoc_adr = 14'd0;
reg usbtestsoc_usbtestsoc_we = 1'd0;
reg [7:0] usbtestsoc_usbtestsoc_dat_w = 8'd0;
wire [7:0] usbtestsoc_usbtestsoc_dat_r;
wire [29:0] usbtestsoc_usbtestsoc_bus_wishbone_adr;
wire [31:0] usbtestsoc_usbtestsoc_bus_wishbone_dat_w;
reg [31:0] usbtestsoc_usbtestsoc_bus_wishbone_dat_r = 32'd0;
wire [3:0] usbtestsoc_usbtestsoc_bus_wishbone_sel;
wire usbtestsoc_usbtestsoc_bus_wishbone_cyc;
wire usbtestsoc_usbtestsoc_bus_wishbone_stb;
reg usbtestsoc_usbtestsoc_bus_wishbone_ack = 1'd0;
wire usbtestsoc_usbtestsoc_bus_wishbone_we;
wire [2:0] usbtestsoc_usbtestsoc_bus_wishbone_cti;
wire [1:0] usbtestsoc_usbtestsoc_bus_wishbone_bte;
reg usbtestsoc_usbtestsoc_bus_wishbone_err = 1'd0;
reg [1:0] usbtestsoc_usbtestsoc_counter = 2'd0;
reg [31:0] usbtestsoc_usbtestsoc_load_storage_full = 32'd0;
wire [31:0] usbtestsoc_usbtestsoc_load_storage;
reg usbtestsoc_usbtestsoc_load_re = 1'd0;
reg [31:0] usbtestsoc_usbtestsoc_reload_storage_full = 32'd0;
wire [31:0] usbtestsoc_usbtestsoc_reload_storage;
reg usbtestsoc_usbtestsoc_reload_re = 1'd0;
reg usbtestsoc_usbtestsoc_en_storage_full = 1'd0;
wire usbtestsoc_usbtestsoc_en_storage;
reg usbtestsoc_usbtestsoc_en_re = 1'd0;
wire usbtestsoc_usbtestsoc_update_value_re;
wire usbtestsoc_usbtestsoc_update_value_r;
reg usbtestsoc_usbtestsoc_update_value_w = 1'd0;
reg [31:0] usbtestsoc_usbtestsoc_value_status = 32'd0;
wire usbtestsoc_usbtestsoc_irq;
wire usbtestsoc_usbtestsoc_zero_status;
reg usbtestsoc_usbtestsoc_zero_pending = 1'd0;
wire usbtestsoc_usbtestsoc_zero_trigger;
reg usbtestsoc_usbtestsoc_zero_clear = 1'd0;
reg usbtestsoc_usbtestsoc_zero_old_trigger = 1'd0;
wire usbtestsoc_usbtestsoc_eventmanager_status_re;
wire usbtestsoc_usbtestsoc_eventmanager_status_r;
wire usbtestsoc_usbtestsoc_eventmanager_status_w;
wire usbtestsoc_usbtestsoc_eventmanager_pending_re;
wire usbtestsoc_usbtestsoc_eventmanager_pending_r;
wire usbtestsoc_usbtestsoc_eventmanager_pending_w;
reg usbtestsoc_usbtestsoc_eventmanager_storage_full = 1'd0;
wire usbtestsoc_usbtestsoc_eventmanager_storage;
reg usbtestsoc_usbtestsoc_eventmanager_re = 1'd0;
reg [31:0] usbtestsoc_usbtestsoc_value = 32'd0;
wire sys_clk;
wire sys_rst;
wire usb_48_clk;
reg usbtestsoc_crg_reset = 1'd0;
wire por_clk;
wire por_rst;
reg [11:0] usbtestsoc_crg_reset_delay = 12'd4095;
wire [159:0] usbtestsoc_status;
wire [63:0] usbtestsoc_platform_status;
wire [63:0] usbtestsoc_target_status;
wire [29:0] usbtestsoc_spiflash_bus_adr;
wire [31:0] usbtestsoc_spiflash_bus_dat_w;
wire [31:0] usbtestsoc_spiflash_bus_dat_r;
wire [3:0] usbtestsoc_spiflash_bus_sel;
wire usbtestsoc_spiflash_bus_cyc;
wire usbtestsoc_spiflash_bus_stb;
reg usbtestsoc_spiflash_bus_ack = 1'd0;
wire usbtestsoc_spiflash_bus_we;
wire [2:0] usbtestsoc_spiflash_bus_cti;
wire [1:0] usbtestsoc_spiflash_bus_bte;
reg usbtestsoc_spiflash_bus_err = 1'd0;
reg [3:0] usbtestsoc_spiflash_bitbang_storage_full = 4'd0;
wire [3:0] usbtestsoc_spiflash_bitbang_storage;
reg usbtestsoc_spiflash_bitbang_re = 1'd0;
reg usbtestsoc_spiflash_miso_status = 1'd0;
reg usbtestsoc_spiflash_bitbang_en_storage_full = 1'd0;
wire usbtestsoc_spiflash_bitbang_en_storage;
reg usbtestsoc_spiflash_bitbang_en_re = 1'd0;
reg usbtestsoc_spiflash_cs_n1 = 1'd1;
reg usbtestsoc_spiflash_clk1 = 1'd0;
reg [31:0] usbtestsoc_spiflash_sr = 32'd0;
reg usbtestsoc_spiflash_i = 1'd0;
reg usbtestsoc_spiflash_miso1 = 1'd0;
reg [7:0] usbtestsoc_spiflash_counter = 8'd0;
reg [31:0] uartwishbonebridge_storage = 32'd30923764;
reg uartwishbonebridge_sink_valid = 1'd0;
reg uartwishbonebridge_sink_ready = 1'd0;
wire uartwishbonebridge_sink_last;
reg [7:0] uartwishbonebridge_sink_payload_data = 8'd0;
reg uartwishbonebridge_uart_clk_txen = 1'd0;
reg [31:0] uartwishbonebridge_phase_accumulator_tx = 32'd0;
reg [7:0] uartwishbonebridge_tx_reg = 8'd0;
reg [3:0] uartwishbonebridge_tx_bitcount = 4'd0;
reg uartwishbonebridge_tx_busy = 1'd0;
reg uartwishbonebridge_source_valid = 1'd0;
wire uartwishbonebridge_source_ready;
reg [7:0] uartwishbonebridge_source_payload_data = 8'd0;
reg uartwishbonebridge_uart_clk_rxen = 1'd0;
reg [31:0] uartwishbonebridge_phase_accumulator_rx = 32'd0;
wire uartwishbonebridge_rx;
reg uartwishbonebridge_rx_r = 1'd0;
reg [7:0] uartwishbonebridge_rx_reg = 8'd0;
reg [3:0] uartwishbonebridge_rx_bitcount = 4'd0;
reg uartwishbonebridge_rx_busy = 1'd0;
wire [29:0] uartwishbonebridge_wishbone_adr;
wire [31:0] uartwishbonebridge_wishbone_dat_w;
wire [31:0] uartwishbonebridge_wishbone_dat_r;
wire [3:0] uartwishbonebridge_wishbone_sel;
reg uartwishbonebridge_wishbone_cyc = 1'd0;
reg uartwishbonebridge_wishbone_stb = 1'd0;
wire uartwishbonebridge_wishbone_ack;
reg uartwishbonebridge_wishbone_we = 1'd0;
reg [2:0] uartwishbonebridge_wishbone_cti = 3'd0;
reg [1:0] uartwishbonebridge_wishbone_bte = 2'd0;
wire uartwishbonebridge_wishbone_err;
reg [2:0] uartwishbonebridge_byte_counter = 3'd0;
reg uartwishbonebridge_byte_counter_reset = 1'd0;
reg uartwishbonebridge_byte_counter_ce = 1'd0;
reg [2:0] uartwishbonebridge_word_counter = 3'd0;
reg uartwishbonebridge_word_counter_reset = 1'd0;
reg uartwishbonebridge_word_counter_ce = 1'd0;
reg [7:0] uartwishbonebridge_cmd = 8'd0;
reg uartwishbonebridge_cmd_ce = 1'd0;
reg [7:0] uartwishbonebridge_length = 8'd0;
reg uartwishbonebridge_length_ce = 1'd0;
reg [31:0] uartwishbonebridge_address = 32'd0;
reg uartwishbonebridge_address_ce = 1'd0;
reg [31:0] uartwishbonebridge_data = 32'd0;
reg uartwishbonebridge_rx_data_ce = 1'd0;
reg uartwishbonebridge_tx_data_ce = 1'd0;
wire uartwishbonebridge_reset;
wire uartwishbonebridge_wait;
wire uartwishbonebridge_done;
reg [20:0] uartwishbonebridge_count = 21'd1600000;
reg uartwishbonebridge_is_ongoing = 1'd0;
reg usbdevice0 = 1'd0;
reg usbdevice1 = 1'd0;
reg usbdevice2 = 1'd0;
reg usbdevice3 = 1'd0;
reg usbdevice4 = 1'd0;
reg usbdevice5 = 1'd0;
reg usbdevice6 = 1'd0;
reg usbdevice7 = 1'd0;
reg usbdevice8 = 1'd0;
reg usbdevice9 = 1'd0;
reg usbdevice10 = 1'd0;
reg usbdevice11 = 1'd0;
reg usbdevice12 = 1'd0;
reg usbdevice13 = 1'd0;
reg usbdevice14 = 1'd0;
reg usbdevice15 = 1'd0;
reg usbdevice_o_out_commit = 1'd0;
reg usbdevice_o_out_rollback = 1'd0;
reg usbdevice16 = 1'd0;
reg usbdevice17 = 1'd0;
reg usbdevice18 = 1'd0;
reg usbdevice19 = 1'd0;
reg usbdevice20 = 1'd0;
reg usbdevice21 = 1'd0;
reg usbdevice22 = 1'd0;
reg usbdevice23 = 1'd0;
reg usbdevice24 = 1'd0;
reg usbdevice25 = 1'd0;
reg usbdevice26 = 1'd0;
reg usbdevice27 = 1'd0;
reg usbdevice28 = 1'd0;
reg usbdevice29 = 1'd0;
reg usbdevice30 = 1'd0;
reg usbdevice31 = 1'd0;
reg usbdevice32 = 1'd0;
reg usbdevice33 = 1'd0;
reg usbdevice34 = 1'd0;
reg usbdevice35 = 1'd0;
reg usbdevice36 = 1'd0;
reg usbdevice37 = 1'd0;
reg usbdevice38 = 1'd0;
reg usbdevice39 = 1'd0;
reg usbdevice40 = 1'd0;
reg usbdevice41 = 1'd0;
reg usbdevice42 = 1'd0;
reg usbdevice43 = 1'd0;
reg usbdevice44 = 1'd0;
reg usbdevice45 = 1'd0;
reg usbdevice46 = 1'd0;
reg usbdevice47 = 1'd0;
reg usbdevice_o_in_commit = 1'd0;
reg usbdevice_o_in_rollback = 1'd0;
reg usbdevice_in_tx_pkt_start = 1'd0;
reg [3:0] usbdevice_in_tx_pid = 4'd0;
reg usbdevice_out_tx_pkt_start = 1'd0;
reg [3:0] usbdevice_out_tx_pid = 4'd0;
reg usbdevice_tx_pkt_start = 1'd0;
wire usbdevice_tx_pkt_end;
reg [3:0] usbdevice_tx_pid = 4'd0;
reg usbdevice_tx_data_avail = 1'd0;
wire usbdevice_tx_data_get;
reg [7:0] usbdevice_tx_data = 8'd0;
wire usbdevice_usb_tx_en;
wire usbdevice_usb_p_tx;
wire usbdevice_usb_n_tx;
reg usbdevice_usb_p_rx = 1'd0;
reg usbdevice_usb_n_rx = 1'd0;
wire usbdevice_usb_p_rx_io;
wire usbdevice_usb_n_rx_io;
wire usbdevice_usbfsrx_usbp;
wire usbdevice_usbfsrx_usbn;
wire [1:0] usbdevice_usbfsrx_dpair;
reg usbdevice_usbfsrx_line_state_dt = 1'd0;
reg usbdevice_usbfsrx_line_state_dj0 = 1'd0;
reg usbdevice_usbfsrx_line_state_dk0 = 1'd0;
reg usbdevice_usbfsrx_line_state_se00 = 1'd0;
reg usbdevice_usbfsrx_line_state_se10 = 1'd0;
reg [1:0] usbdevice_usbfsrx_line_state_phase = 2'd0;
reg usbdevice_usbfsrx_line_state_valid = 1'd0;
reg usbdevice_usbfsrx_line_state_dj1 = 1'd0;
reg usbdevice_usbfsrx_line_state_dk1 = 1'd0;
reg usbdevice_usbfsrx_line_state_se01 = 1'd0;
reg usbdevice_usbfsrx_line_state_se11 = 1'd0;
reg usbdevice_usbfsrx_nrzi_o_valid0 = 1'd0;
reg usbdevice_usbfsrx_nrzi_o_data0 = 1'd0;
reg usbdevice_usbfsrx_nrzi_o_valid1 = 1'd0;
reg usbdevice_usbfsrx_nrzi_o_data1 = 1'd0;
reg usbdevice_usbfsrx_nrzi_o_se0 = 1'd0;
reg usbdevice_usbfsrx_bitstuff_drop_bit = 1'd0;
reg usbdevice_usbfsrx_bitstuff_o_valid = 1'd0;
reg usbdevice_usbfsrx_bitstuff_o_data = 1'd0;
reg usbdevice_usbfsrx_bitstuff_o_se0 = 1'd0;
reg usbdevice_usbfsrx_bitstuff_o_bitstuff_error = 1'd0;
reg usbdevice_usbfsrx_valid = 1'd0;
reg usbdevice_usbfsrx_data = 1'd0;
reg usbdevice_usbfsrx_se0 = 1'd0;
reg usbdevice_usbfsrx_bitstuff_error = 1'd0;
reg usbdevice_usbfsrx_pkt_start = 1'd0;
reg usbdevice_usbfsrx_pkt_active0 = 1'd0;
reg usbdevice_usbfsrx_pkt_end0 = 1'd0;
reg usbdevice_usbfsrx_o_pkt_start0 = 1'd0;
reg usbdevice_usbfsrx_o_pkt_active = 1'd0;
reg usbdevice_usbfsrx_o_pkt_end0 = 1'd0;
reg usbdevice_usbfsrx_pkt_active1 = 1'd0;
reg usbdevice_usbfsrx_pkt_end1 = 1'd0;
reg [8:0] usbdevice_usbfsrx_pid_shifter_shift_reg = 9'd0;
wire usbdevice_usbfsrx_pid_shifter_o_full;
wire [7:0] usbdevice_usbfsrx_pid_shifter_o_output;
reg usbdevice_usbfsrx_pid_shifter_o_put = 1'd0;
reg [16:0] usbdevice_usbfsrx_tok_shifter_shift_reg = 17'd0;
wire usbdevice_usbfsrx_tok_shifter_o_full;
wire [15:0] usbdevice_usbfsrx_tok_shifter_o_output;
reg usbdevice_usbfsrx_tok_shifter_o_put = 1'd0;
reg [4:0] usbdevice_usbfsrx_tok_crc5_crc = 5'd0;
wire usbdevice_usbfsrx_tok_crc5_crc_good;
wire usbdevice_usbfsrx_tok_crc5_crc_invert;
reg usbdevice_usbfsrx_tok_crc5_o_crc_good = 1'd0;
wire usbdevice_usbfsrx_data_put;
reg [8:0] usbdevice_usbfsrx_data_shifter_shift_reg = 9'd0;
wire usbdevice_usbfsrx_data_shifter_o_full;
wire [7:0] usbdevice_usbfsrx_data_shifter_o_output;
reg usbdevice_usbfsrx_data_shifter_o_put = 1'd0;
reg [15:0] usbdevice_usbfsrx_data_crc16_crc = 16'd0;
wire usbdevice_usbfsrx_data_crc16_crc_good;
wire usbdevice_usbfsrx_data_crc16_crc_invert;
reg usbdevice_usbfsrx_data_crc16_o_crc_good = 1'd0;
reg usbdevice_usbfsrx_pkt_bitstuff_good = 1'd0;
reg usbdevice_usbfsrx_o_pkt_data_put = 1'd0;
reg usbdevice_usbfsrx_crc16_good = 1'd0;
reg usbdevice_usbfsrx_o_pkt_start1 = 1'd0;
reg [3:0] usbdevice_usbfsrx_o_pkt_pid = 4'd0;
reg [10:0] usbdevice_usbfsrx_o_pkt_token_payload = 11'd0;
reg [7:0] usbdevice_usbfsrx_o_pkt_data = 8'd0;
reg usbdevice_usbfsrx_o_pkt_good = 1'd0;
reg usbdevice_usbfsrx_o_pkt_end1 = 1'd0;
wire [6:0] usbdevice_rx_addr;
wire [3:0] usbdevice_rx_endp;
wire usbdevice_usbfstx_bitstuff_stall;
reg usbdevice_usbfstx_pkt_active = 1'd0;
reg usbdevice_usbfstx_shift_sync = 1'd0;
reg usbdevice_usbfstx_shift_pid = 1'd0;
reg usbdevice_usbfstx_shift_eop = 1'd0;
reg usbdevice_usbfstx_load_data = 1'd0;
reg usbdevice_usbfstx_shift_data = 1'd0;
reg usbdevice_usbfstx_load_crc16 = 1'd0;
reg usbdevice_usbfstx_shift_crc16 = 1'd0;
reg usbdevice_usbfstx_pkt_end = 1'd0;
reg [8:0] usbdevice_usbfstx_sync_shifter_shifter = 9'd0;
wire usbdevice_usbfstx_sync_shifter_o_data;
wire usbdevice_usbfstx_sync_shifter_o_empty;
reg usbdevice_usbfstx_sync_shifter_not_empty = 1'd0;
reg [8:0] usbdevice_usbfstx_pid_shifter_shifter = 9'd0;
wire usbdevice_usbfstx_pid_shifter_o_data;
wire usbdevice_usbfstx_pid_shifter_o_empty;
reg usbdevice_usbfstx_pid_shifter_not_empty = 1'd0;
reg [8:0] usbdevice_usbfstx_data_shifter_shifter = 9'd0;
wire usbdevice_usbfstx_data_shifter_o_data;
wire usbdevice_usbfstx_data_shifter_o_empty;
reg usbdevice_usbfstx_data_shifter_not_empty = 1'd0;
reg [15:0] usbdevice_usbfstx_crc = 16'd0;
wire usbdevice_usbfstx_crc_invert;
reg [15:0] usbdevice_usbfstx_o_crc = 16'd0;
reg [16:0] usbdevice_usbfstx_crc16_shifter_shifter = 17'd0;
wire usbdevice_usbfstx_crc16_shifter_o_data;
wire usbdevice_usbfstx_crc16_shifter_o_empty;
reg usbdevice_usbfstx_crc16_shifter_not_empty = 1'd0;
reg usbdevice_usbfstx_pid_is_data = 1'd0;
reg usbdevice_usbfstx_mux_stuff_oe = 1'd0;
reg usbdevice_usbfstx_mux_stuff_data = 1'd0;
reg usbdevice_usbfstx_mux_stuff_se0 = 1'd0;
reg usbdevice_usbfstx_mux_stuff_bit_strobe = 1'd0;
reg usbdevice_usbfstx_bitstuffer_stuff_bit = 1'd0;
wire usbdevice_usbfstx_bitstuffer_o_stall;
reg usbdevice_usbfstx_bitstuffer_o_data = 1'd0;
reg usbdevice_usbfstx_bitstuffer_o_se0 = 1'd0;
reg usbdevice_usbfstx_bitstuffer_o_oe = 1'd0;
reg usbdevice_usbfstx_nrzi_usbp = 1'd0;
reg usbdevice_usbfstx_nrzi_usbn = 1'd0;
reg usbdevice_usbfstx_nrzi_oe = 1'd0;
reg usbdevice_usbfstx_nrzi_o_usbp = 1'd0;
reg usbdevice_usbfstx_nrzi_o_usbn = 1'd0;
reg usbdevice_usbfstx_nrzi_o_oe = 1'd0;
reg usbdevice_usbfstx_o_data_get = 1'd0;
reg usbdevice_usbfstx_o_pkt_end = 1'd0;
reg usbdevice_usbfstx_o_usbp = 1'd0;
reg usbdevice_usbfstx_o_usbn = 1'd0;
reg usbdevice_usbfstx_o_oe = 1'd0;
reg [3:0] usbdevice_current_token = 4'd0;
reg [3:0] usbdevice_current_endp = 4'd0;
wire usbdevice_valid_request_token_pre;
reg usbdevice_valid_request_token = 1'd0;
wire usbdevice_valid_out_token;
wire usbdevice_valid_data_packet;
wire usbdevice_valid_in_token;
wire usbdevice_valid_ack_packet;
reg [7:0] io_input = 8'd0;
wire [7:0] io_output;
wire [7:0] io_status;
reg [7:0] io_storage_full = 8'd0;
wire [7:0] io_storage;
reg io_re = 1'd0;
wire scope_clk;
wire scope_rst;
wire mux_valid;
reg mux_ready = 1'd0;
reg mux_first = 1'd0;
reg mux_last = 1'd0;
wire [1:0] mux_payload_data;
reg mux_payload_hit = 1'd0;
reg mux_source_valid = 1'd0;
wire mux_source_ready;
reg mux_source_first = 1'd0;
reg mux_source_last = 1'd0;
reg [1:0] mux_source_payload_data = 2'd0;
reg mux_source_payload_hit = 1'd0;
reg mux_value_storage_full = 1'd0;
wire mux_value_storage;
reg mux_value_re = 1'd0;
wire mux_value;
wire trigger_sink_sink_valid;
wire trigger_sink_sink_ready;
wire trigger_sink_sink_first;
wire trigger_sink_sink_last;
wire [1:0] trigger_sink_sink_payload_data;
wire trigger_sink_sink_payload_hit;
wire trigger_source_source_valid;
wire trigger_source_source_ready;
wire trigger_source_source_first;
wire trigger_source_source_last;
wire [1:0] trigger_source_source_payload_data;
reg trigger_source_source_payload_hit = 1'd0;
reg trigger_enable_storage_full = 1'd0;
wire trigger_enable_storage;
reg trigger_enable_re = 1'd0;
wire trigger_done_status;
wire trigger_mem_write_re;
wire trigger_mem_write_r;
reg trigger_mem_write_w = 1'd0;
reg [1:0] trigger_mem_mask_storage_full = 2'd0;
wire [1:0] trigger_mem_mask_storage;
reg trigger_mem_mask_re = 1'd0;
reg [1:0] trigger_mem_value_storage_full = 2'd0;
wire [1:0] trigger_mem_value_storage;
reg trigger_mem_value_re = 1'd0;
wire trigger_mem_full_status;
wire trigger_enable;
reg trigger_enable_d = 1'd0;
wire trigger_done0;
wire trigger_mem_sink_valid;
wire trigger_mem_sink_ready;
reg trigger_mem_sink_first = 1'd0;
reg trigger_mem_sink_last = 1'd0;
wire [1:0] trigger_mem_sink_payload_mask;
wire [1:0] trigger_mem_sink_payload_value;
wire trigger_mem_source_valid;
wire trigger_mem_source_ready;
wire trigger_mem_source_first;
wire trigger_mem_source_last;
wire [1:0] trigger_mem_source_payload_mask;
wire [1:0] trigger_mem_source_payload_value;
wire trigger_mem_asyncfifo_we;
wire trigger_mem_asyncfifo_writable;
wire trigger_mem_asyncfifo_re;
wire trigger_mem_asyncfifo_readable;
wire [5:0] trigger_mem_asyncfifo_din;
wire [5:0] trigger_mem_asyncfifo_dout;
wire trigger_mem_graycounter0_ce;
reg [4:0] trigger_mem_graycounter0_q = 5'd0;
wire [4:0] trigger_mem_graycounter0_q_next;
reg [4:0] trigger_mem_graycounter0_q_binary = 5'd0;
reg [4:0] trigger_mem_graycounter0_q_next_binary = 5'd0;
wire trigger_mem_graycounter1_ce;
reg [4:0] trigger_mem_graycounter1_q = 5'd0;
wire [4:0] trigger_mem_graycounter1_q_next;
reg [4:0] trigger_mem_graycounter1_q_binary = 5'd0;
reg [4:0] trigger_mem_graycounter1_q_next_binary = 5'd0;
wire [4:0] trigger_mem_produce_rdomain;
wire [4:0] trigger_mem_consume_wdomain;
wire [3:0] trigger_mem_wrport_adr;
wire [5:0] trigger_mem_wrport_dat_r;
wire trigger_mem_wrport_we;
wire [5:0] trigger_mem_wrport_dat_w;
wire [3:0] trigger_mem_rdport_adr;
wire [5:0] trigger_mem_rdport_dat_r;
wire [1:0] trigger_mem_fifo_in_payload_mask;
wire [1:0] trigger_mem_fifo_in_payload_value;
wire trigger_mem_fifo_in_first;
wire trigger_mem_fifo_in_last;
wire [1:0] trigger_mem_fifo_out_payload_mask;
wire [1:0] trigger_mem_fifo_out_payload_value;
wire trigger_mem_fifo_out_first;
wire trigger_mem_fifo_out_last;
wire trigger_hit;
wire trigger_wait;
wire trigger_done1;
reg [4:0] trigger_count = 5'd16;
wire subsampler_sink_valid;
wire subsampler_sink_ready;
wire subsampler_sink_first;
wire subsampler_sink_last;
wire [1:0] subsampler_sink_payload_data;
wire subsampler_sink_payload_hit;
wire subsampler_source_valid;
wire subsampler_source_ready;
wire subsampler_source_first;
wire subsampler_source_last;
wire [1:0] subsampler_source_payload_data;
wire subsampler_source_payload_hit;
reg [15:0] subsampler_value_storage_full = 16'd0;
wire [15:0] subsampler_value_storage;
reg subsampler_value_re = 1'd0;
wire [15:0] subsampler_value;
reg [15:0] subsampler_counter = 16'd0;
wire subsampler_done;
wire storage_sink_sink_valid;
reg storage_sink_sink_ready = 1'd0;
wire storage_sink_sink_first;
wire storage_sink_sink_last;
wire [1:0] storage_sink_sink_payload_data;
wire storage_sink_sink_payload_hit;
reg storage_enable_storage_full = 1'd0;
wire storage_enable_storage;
reg storage_enable_re = 1'd0;
wire storage_done_status;
reg [8:0] storage_length_storage_full = 9'd0;
wire [8:0] storage_length_storage;
reg storage_length_re = 1'd0;
reg [8:0] storage_offset_storage_full = 9'd0;
wire [8:0] storage_offset_storage;
reg storage_offset_re = 1'd0;
wire storage_mem_valid_status;
wire storage_mem_ready_re;
wire storage_mem_ready_r;
reg storage_mem_ready_w = 1'd0;
wire [1:0] storage_mem_data_status;
wire storage_enable;
reg storage_enable_d = 1'd0;
wire [7:0] storage_length;
wire [7:0] storage_offset;
reg storage_done0 = 1'd0;
reg storage_mem_sink_valid = 1'd0;
wire storage_mem_sink_ready;
reg storage_mem_sink_first = 1'd0;
reg storage_mem_sink_last = 1'd0;
reg [1:0] storage_mem_sink_payload_data = 2'd0;
wire storage_mem_source_valid;
reg storage_mem_source_ready = 1'd0;
wire storage_mem_source_first;
wire storage_mem_source_last;
wire [1:0] storage_mem_source_payload_data;
wire storage_mem_re;
reg storage_mem_readable = 1'd0;
wire storage_mem_syncfifo_we;
wire storage_mem_syncfifo_writable;
wire storage_mem_syncfifo_re;
wire storage_mem_syncfifo_readable;
wire [3:0] storage_mem_syncfifo_din;
wire [3:0] storage_mem_syncfifo_dout;
reg [8:0] storage_mem_level0 = 9'd0;
reg storage_mem_replace = 1'd0;
reg [7:0] storage_mem_produce = 8'd0;
reg [7:0] storage_mem_consume = 8'd0;
reg [7:0] storage_mem_wrport_adr = 8'd0;
wire [3:0] storage_mem_wrport_dat_r;
wire storage_mem_wrport_we;
wire [3:0] storage_mem_wrport_dat_w;
wire storage_mem_do_read;
wire [7:0] storage_mem_rdport_adr;
wire [3:0] storage_mem_rdport_dat_r;
wire storage_mem_rdport_re;
wire [8:0] storage_mem_level1;
wire [1:0] storage_mem_fifo_in_payload_data;
wire storage_mem_fifo_in_first;
wire storage_mem_fifo_in_last;
wire [1:0] storage_mem_fifo_out_payload_data;
wire storage_mem_fifo_out_first;
wire storage_mem_fifo_out_last;
reg storage_cdc_sink_valid = 1'd0;
wire storage_cdc_sink_ready;
reg storage_cdc_sink_first = 1'd0;
reg storage_cdc_sink_last = 1'd0;
reg [1:0] storage_cdc_sink_payload_data = 2'd0;
wire storage_cdc_source_valid;
wire storage_cdc_source_ready;
wire storage_cdc_source_first;
wire storage_cdc_source_last;
wire [1:0] storage_cdc_source_payload_data;
wire storage_cdc_asyncfifo_we;
wire storage_cdc_asyncfifo_writable;
wire storage_cdc_asyncfifo_re;
wire storage_cdc_asyncfifo_readable;
wire [3:0] storage_cdc_asyncfifo_din;
wire [3:0] storage_cdc_asyncfifo_dout;
wire storage_cdc_graycounter0_ce;
reg [2:0] storage_cdc_graycounter0_q = 3'd0;
wire [2:0] storage_cdc_graycounter0_q_next;
reg [2:0] storage_cdc_graycounter0_q_binary = 3'd0;
reg [2:0] storage_cdc_graycounter0_q_next_binary = 3'd0;
wire storage_cdc_graycounter1_ce;
reg [2:0] storage_cdc_graycounter1_q = 3'd0;
wire [2:0] storage_cdc_graycounter1_q_next;
reg [2:0] storage_cdc_graycounter1_q_binary = 3'd0;
reg [2:0] storage_cdc_graycounter1_q_next_binary = 3'd0;
wire [2:0] storage_cdc_produce_rdomain;
wire [2:0] storage_cdc_consume_wdomain;
wire [1:0] storage_cdc_wrport_adr;
wire [3:0] storage_cdc_wrport_dat_r;
wire storage_cdc_wrport_we;
wire [3:0] storage_cdc_wrport_dat_w;
wire [1:0] storage_cdc_rdport_adr;
wire [3:0] storage_cdc_rdport_dat_r;
wire [1:0] storage_cdc_fifo_in_payload_data;
wire storage_cdc_fifo_in_first;
wire storage_cdc_fifo_in_last;
wire [1:0] storage_cdc_fifo_out_payload_data;
wire storage_cdc_fifo_out_first;
wire storage_cdc_fifo_out_last;
reg storage_wait = 1'd0;
wire storage_done1;
reg [8:0] storage_count = 9'd256;
reg [2:0] uartwishbonebridge_state = 3'd0;
reg [2:0] uartwishbonebridge_next_state = 3'd0;
reg [2:0] rxclockdatarecovery_state = 3'd0;
reg [2:0] rxclockdatarecovery_next_state = 3'd0;
reg rxnrzidecoder_state = 1'd0;
reg rxnrzidecoder_next_state = 1'd0;
reg [2:0] rxbitstuffremover_state = 3'd0;
reg [2:0] rxbitstuffremover_next_state = 3'd0;
reg [2:0] rxpacketdecode_state = 3'd0;
reg [2:0] rxpacketdecode_next_state = 3'd0;
reg [2:0] fsm_state = 3'd0;
reg [2:0] fsm_next_state = 3'd0;
reg [2:0] txbitstuffer_state = 3'd0;
reg [2:0] txbitstuffer_next_state = 3'd0;
reg [2:0] txnrziencoder_state = 3'd0;
reg [2:0] txnrziencoder_next_state = 3'd0;
reg [2:0] fsm0_state = 3'd0;
reg [2:0] fsm0_next_state = 3'd0;
reg [2:0] fsm1_state = 3'd0;
reg [2:0] fsm1_next_state = 3'd0;
reg [1:0] litescopeanalyzer_state = 2'd0;
reg [1:0] litescopeanalyzer_next_state = 2'd0;
wire [29:0] shared_adr;
wire [31:0] shared_dat_w;
reg [31:0] shared_dat_r = 32'd0;
wire [3:0] shared_sel;
wire shared_cyc;
wire shared_stb;
reg shared_ack = 1'd0;
wire shared_we;
wire [2:0] shared_cti;
wire [1:0] shared_bte;
wire shared_err;
wire request;
wire grant;
reg [1:0] slave_sel = 2'd0;
reg [1:0] slave_sel_r = 2'd0;
reg error = 1'd0;
wire wait_1;
wire done;
reg [16:0] count = 17'd65536;
wire [13:0] interface0_bank_bus_adr;
wire interface0_bank_bus_we;
wire [7:0] interface0_bank_bus_dat_w;
reg [7:0] interface0_bank_bus_dat_r = 8'd0;
wire csrbank0_mux_value0_re;
wire csrbank0_mux_value0_r;
wire csrbank0_mux_value0_w;
wire csrbank0_trigger_enable0_re;
wire csrbank0_trigger_enable0_r;
wire csrbank0_trigger_enable0_w;
wire csrbank0_trigger_done_re;
wire csrbank0_trigger_done_r;
wire csrbank0_trigger_done_w;
wire csrbank0_trigger_mem_mask0_re;
wire [1:0] csrbank0_trigger_mem_mask0_r;
wire [1:0] csrbank0_trigger_mem_mask0_w;
wire csrbank0_trigger_mem_value0_re;
wire [1:0] csrbank0_trigger_mem_value0_r;
wire [1:0] csrbank0_trigger_mem_value0_w;
wire csrbank0_trigger_mem_full_re;
wire csrbank0_trigger_mem_full_r;
wire csrbank0_trigger_mem_full_w;
wire csrbank0_subsampler_value1_re;
wire [7:0] csrbank0_subsampler_value1_r;
wire [7:0] csrbank0_subsampler_value1_w;
wire csrbank0_subsampler_value0_re;
wire [7:0] csrbank0_subsampler_value0_r;
wire [7:0] csrbank0_subsampler_value0_w;
wire csrbank0_storage_enable0_re;
wire csrbank0_storage_enable0_r;
wire csrbank0_storage_enable0_w;
wire csrbank0_storage_done_re;
wire csrbank0_storage_done_r;
wire csrbank0_storage_done_w;
wire csrbank0_storage_length1_re;
wire csrbank0_storage_length1_r;
wire csrbank0_storage_length1_w;
wire csrbank0_storage_length0_re;
wire [7:0] csrbank0_storage_length0_r;
wire [7:0] csrbank0_storage_length0_w;
wire csrbank0_storage_offset1_re;
wire csrbank0_storage_offset1_r;
wire csrbank0_storage_offset1_w;
wire csrbank0_storage_offset0_re;
wire [7:0] csrbank0_storage_offset0_r;
wire [7:0] csrbank0_storage_offset0_w;
wire csrbank0_storage_mem_valid_re;
wire csrbank0_storage_mem_valid_r;
wire csrbank0_storage_mem_valid_w;
wire csrbank0_storage_mem_data_re;
wire [1:0] csrbank0_storage_mem_data_r;
wire [1:0] csrbank0_storage_mem_data_w;
wire csrbank0_sel;
wire [13:0] interface1_bank_bus_adr;
wire interface1_bank_bus_we;
wire [7:0] interface1_bank_bus_dat_w;
reg [7:0] interface1_bank_bus_dat_r = 8'd0;
wire csrbank1_scratch3_re;
wire [7:0] csrbank1_scratch3_r;
wire [7:0] csrbank1_scratch3_w;
wire csrbank1_scratch2_re;
wire [7:0] csrbank1_scratch2_r;
wire [7:0] csrbank1_scratch2_w;
wire csrbank1_scratch1_re;
wire [7:0] csrbank1_scratch1_r;
wire [7:0] csrbank1_scratch1_w;
wire csrbank1_scratch0_re;
wire [7:0] csrbank1_scratch0_r;
wire [7:0] csrbank1_scratch0_w;
wire csrbank1_bus_errors3_re;
wire [7:0] csrbank1_bus_errors3_r;
wire [7:0] csrbank1_bus_errors3_w;
wire csrbank1_bus_errors2_re;
wire [7:0] csrbank1_bus_errors2_r;
wire [7:0] csrbank1_bus_errors2_w;
wire csrbank1_bus_errors1_re;
wire [7:0] csrbank1_bus_errors1_r;
wire [7:0] csrbank1_bus_errors1_w;
wire csrbank1_bus_errors0_re;
wire [7:0] csrbank1_bus_errors0_r;
wire [7:0] csrbank1_bus_errors0_w;
wire csrbank1_sel;
wire [13:0] sram_bus_adr;
wire sram_bus_we;
wire [7:0] sram_bus_dat_w;
reg [7:0] sram_bus_dat_r = 8'd0;
wire [3:0] adr;
wire [7:0] dat_r;
wire sel;
reg sel_r = 1'd0;
wire [13:0] interface2_bank_bus_adr;
wire interface2_bank_bus_we;
wire [7:0] interface2_bank_bus_dat_w;
reg [7:0] interface2_bank_bus_dat_r = 8'd0;
wire csrbank2_git_commit19_re;
wire [7:0] csrbank2_git_commit19_r;
wire [7:0] csrbank2_git_commit19_w;
wire csrbank2_git_commit18_re;
wire [7:0] csrbank2_git_commit18_r;
wire [7:0] csrbank2_git_commit18_w;
wire csrbank2_git_commit17_re;
wire [7:0] csrbank2_git_commit17_r;
wire [7:0] csrbank2_git_commit17_w;
wire csrbank2_git_commit16_re;
wire [7:0] csrbank2_git_commit16_r;
wire [7:0] csrbank2_git_commit16_w;
wire csrbank2_git_commit15_re;
wire [7:0] csrbank2_git_commit15_r;
wire [7:0] csrbank2_git_commit15_w;
wire csrbank2_git_commit14_re;
wire [7:0] csrbank2_git_commit14_r;
wire [7:0] csrbank2_git_commit14_w;
wire csrbank2_git_commit13_re;
wire [7:0] csrbank2_git_commit13_r;
wire [7:0] csrbank2_git_commit13_w;
wire csrbank2_git_commit12_re;
wire [7:0] csrbank2_git_commit12_r;
wire [7:0] csrbank2_git_commit12_w;
wire csrbank2_git_commit11_re;
wire [7:0] csrbank2_git_commit11_r;
wire [7:0] csrbank2_git_commit11_w;
wire csrbank2_git_commit10_re;
wire [7:0] csrbank2_git_commit10_r;
wire [7:0] csrbank2_git_commit10_w;
wire csrbank2_git_commit9_re;
wire [7:0] csrbank2_git_commit9_r;
wire [7:0] csrbank2_git_commit9_w;
wire csrbank2_git_commit8_re;
wire [7:0] csrbank2_git_commit8_r;
wire [7:0] csrbank2_git_commit8_w;
wire csrbank2_git_commit7_re;
wire [7:0] csrbank2_git_commit7_r;
wire [7:0] csrbank2_git_commit7_w;
wire csrbank2_git_commit6_re;
wire [7:0] csrbank2_git_commit6_r;
wire [7:0] csrbank2_git_commit6_w;
wire csrbank2_git_commit5_re;
wire [7:0] csrbank2_git_commit5_r;
wire [7:0] csrbank2_git_commit5_w;
wire csrbank2_git_commit4_re;
wire [7:0] csrbank2_git_commit4_r;
wire [7:0] csrbank2_git_commit4_w;
wire csrbank2_git_commit3_re;
wire [7:0] csrbank2_git_commit3_r;
wire [7:0] csrbank2_git_commit3_w;
wire csrbank2_git_commit2_re;
wire [7:0] csrbank2_git_commit2_r;
wire [7:0] csrbank2_git_commit2_w;
wire csrbank2_git_commit1_re;
wire [7:0] csrbank2_git_commit1_r;
wire [7:0] csrbank2_git_commit1_w;
wire csrbank2_git_commit0_re;
wire [7:0] csrbank2_git_commit0_r;
wire [7:0] csrbank2_git_commit0_w;
wire csrbank2_platform_platform7_re;
wire [7:0] csrbank2_platform_platform7_r;
wire [7:0] csrbank2_platform_platform7_w;
wire csrbank2_platform_platform6_re;
wire [7:0] csrbank2_platform_platform6_r;
wire [7:0] csrbank2_platform_platform6_w;
wire csrbank2_platform_platform5_re;
wire [7:0] csrbank2_platform_platform5_r;
wire [7:0] csrbank2_platform_platform5_w;
wire csrbank2_platform_platform4_re;
wire [7:0] csrbank2_platform_platform4_r;
wire [7:0] csrbank2_platform_platform4_w;
wire csrbank2_platform_platform3_re;
wire [7:0] csrbank2_platform_platform3_r;
wire [7:0] csrbank2_platform_platform3_w;
wire csrbank2_platform_platform2_re;
wire [7:0] csrbank2_platform_platform2_r;
wire [7:0] csrbank2_platform_platform2_w;
wire csrbank2_platform_platform1_re;
wire [7:0] csrbank2_platform_platform1_r;
wire [7:0] csrbank2_platform_platform1_w;
wire csrbank2_platform_platform0_re;
wire [7:0] csrbank2_platform_platform0_r;
wire [7:0] csrbank2_platform_platform0_w;
wire csrbank2_platform_target7_re;
wire [7:0] csrbank2_platform_target7_r;
wire [7:0] csrbank2_platform_target7_w;
wire csrbank2_platform_target6_re;
wire [7:0] csrbank2_platform_target6_r;
wire [7:0] csrbank2_platform_target6_w;
wire csrbank2_platform_target5_re;
wire [7:0] csrbank2_platform_target5_r;
wire [7:0] csrbank2_platform_target5_w;
wire csrbank2_platform_target4_re;
wire [7:0] csrbank2_platform_target4_r;
wire [7:0] csrbank2_platform_target4_w;
wire csrbank2_platform_target3_re;
wire [7:0] csrbank2_platform_target3_r;
wire [7:0] csrbank2_platform_target3_w;
wire csrbank2_platform_target2_re;
wire [7:0] csrbank2_platform_target2_r;
wire [7:0] csrbank2_platform_target2_w;
wire csrbank2_platform_target1_re;
wire [7:0] csrbank2_platform_target1_r;
wire [7:0] csrbank2_platform_target1_w;
wire csrbank2_platform_target0_re;
wire [7:0] csrbank2_platform_target0_r;
wire [7:0] csrbank2_platform_target0_w;
wire csrbank2_sel;
wire [13:0] interface3_bank_bus_adr;
wire interface3_bank_bus_we;
wire [7:0] interface3_bank_bus_dat_w;
reg [7:0] interface3_bank_bus_dat_r = 8'd0;
wire csrbank3_in_re;
wire [7:0] csrbank3_in_r;
wire [7:0] csrbank3_in_w;
wire csrbank3_out0_re;
wire [7:0] csrbank3_out0_r;
wire [7:0] csrbank3_out0_w;
wire csrbank3_sel;
wire [13:0] interface4_bank_bus_adr;
wire interface4_bank_bus_we;
wire [7:0] interface4_bank_bus_dat_w;
reg [7:0] interface4_bank_bus_dat_r = 8'd0;
wire csrbank4_bitbang0_re;
wire [3:0] csrbank4_bitbang0_r;
wire [3:0] csrbank4_bitbang0_w;
wire csrbank4_miso_re;
wire csrbank4_miso_r;
wire csrbank4_miso_w;
wire csrbank4_bitbang_en0_re;
wire csrbank4_bitbang_en0_r;
wire csrbank4_bitbang_en0_w;
wire csrbank4_sel;
wire [13:0] interface5_bank_bus_adr;
wire interface5_bank_bus_we;
wire [7:0] interface5_bank_bus_dat_w;
reg [7:0] interface5_bank_bus_dat_r = 8'd0;
wire csrbank5_load3_re;
wire [7:0] csrbank5_load3_r;
wire [7:0] csrbank5_load3_w;
wire csrbank5_load2_re;
wire [7:0] csrbank5_load2_r;
wire [7:0] csrbank5_load2_w;
wire csrbank5_load1_re;
wire [7:0] csrbank5_load1_r;
wire [7:0] csrbank5_load1_w;
wire csrbank5_load0_re;
wire [7:0] csrbank5_load0_r;
wire [7:0] csrbank5_load0_w;
wire csrbank5_reload3_re;
wire [7:0] csrbank5_reload3_r;
wire [7:0] csrbank5_reload3_w;
wire csrbank5_reload2_re;
wire [7:0] csrbank5_reload2_r;
wire [7:0] csrbank5_reload2_w;
wire csrbank5_reload1_re;
wire [7:0] csrbank5_reload1_r;
wire [7:0] csrbank5_reload1_w;
wire csrbank5_reload0_re;
wire [7:0] csrbank5_reload0_r;
wire [7:0] csrbank5_reload0_w;
wire csrbank5_en0_re;
wire csrbank5_en0_r;
wire csrbank5_en0_w;
wire csrbank5_value3_re;
wire [7:0] csrbank5_value3_r;
wire [7:0] csrbank5_value3_w;
wire csrbank5_value2_re;
wire [7:0] csrbank5_value2_r;
wire [7:0] csrbank5_value2_w;
wire csrbank5_value1_re;
wire [7:0] csrbank5_value1_r;
wire [7:0] csrbank5_value1_w;
wire csrbank5_value0_re;
wire [7:0] csrbank5_value0_r;
wire [7:0] csrbank5_value0_w;
wire csrbank5_ev_enable0_re;
wire csrbank5_ev_enable0_r;
wire csrbank5_ev_enable0_w;
wire csrbank5_sel;
wire [7:0] slice_proxy0;
wire [7:0] slice_proxy1;
reg t_array_muxed = 1'd0;
reg basiclowerer_array_muxed = 1'd0;
reg rhs_array_muxed = 1'd0;
reg [29:0] array_muxed0 = 30'd0;
reg [31:0] array_muxed1 = 32'd0;
reg [3:0] array_muxed2 = 4'd0;
reg array_muxed3 = 1'd0;
reg array_muxed4 = 1'd0;
reg array_muxed5 = 1'd0;
reg [2:0] array_muxed6 = 3'd0;
reg [1:0] array_muxed7 = 2'd0;
wire rst1;
reg multiregimpl0_regs0 = 1'd0;
reg multiregimpl0_regs1 = 1'd0;
reg multiregimpl1_regs0 = 1'd0;
reg multiregimpl1_regs1 = 1'd0;
reg multiregimpl1_regs2 = 1'd0;
reg multiregimpl2_regs0 = 1'd0;
reg multiregimpl2_regs1 = 1'd0;
reg multiregimpl2_regs2 = 1'd0;
reg [7:0] multiregimpl3_regs0 = 8'd0;
reg [7:0] multiregimpl3_regs1 = 8'd0;
reg multiregimpl4_regs0 = 1'd0;
reg multiregimpl4_regs1 = 1'd0;
reg multiregimpl5_regs0 = 1'd0;
reg multiregimpl5_regs1 = 1'd0;
reg multiregimpl6_regs0 = 1'd0;
reg multiregimpl6_regs1 = 1'd0;
reg [4:0] multiregimpl7_regs0 = 5'd0;
reg [4:0] multiregimpl7_regs1 = 5'd0;
reg [4:0] multiregimpl8_regs0 = 5'd0;
reg [4:0] multiregimpl8_regs1 = 5'd0;
reg [15:0] multiregimpl9_regs0 = 16'd0;
reg [15:0] multiregimpl9_regs1 = 16'd0;
reg multiregimpl10_regs0 = 1'd0;
reg multiregimpl10_regs1 = 1'd0;
reg [8:0] multiregimpl11_regs0 = 9'd0;
reg [8:0] multiregimpl11_regs1 = 9'd0;
reg [8:0] multiregimpl12_regs0 = 9'd0;
reg [8:0] multiregimpl12_regs1 = 9'd0;
reg multiregimpl13_regs0 = 1'd0;
reg multiregimpl13_regs1 = 1'd0;
reg [2:0] multiregimpl14_regs0 = 3'd0;
reg [2:0] multiregimpl14_regs1 = 3'd0;
reg [2:0] multiregimpl15_regs0 = 3'd0;
reg [2:0] multiregimpl15_regs1 = 3'd0;

assign user_led0 = io_output[0];
assign usb_pullup = io_output[1];
assign usbtestsoc_usbtestsoc_bus_error = error;
assign usbtestsoc_usbtestsoc_reset = usbtestsoc_usbtestsoc_reset_reset_re;
assign usbtestsoc_usbtestsoc_bus_errors_status = usbtestsoc_usbtestsoc_bus_errors;
assign usbtestsoc_usbtestsoc_zero_trigger = (usbtestsoc_usbtestsoc_value != 1'd0);
assign usbtestsoc_usbtestsoc_eventmanager_status_w = usbtestsoc_usbtestsoc_zero_status;
always @(*) begin
	usbtestsoc_usbtestsoc_zero_clear <= 1'd0;
	if ((usbtestsoc_usbtestsoc_eventmanager_pending_re & usbtestsoc_usbtestsoc_eventmanager_pending_r)) begin
		usbtestsoc_usbtestsoc_zero_clear <= 1'd1;
	end
end
assign usbtestsoc_usbtestsoc_eventmanager_pending_w = usbtestsoc_usbtestsoc_zero_pending;
assign usbtestsoc_usbtestsoc_irq = (usbtestsoc_usbtestsoc_eventmanager_pending_w & usbtestsoc_usbtestsoc_eventmanager_storage);
assign usbtestsoc_usbtestsoc_zero_status = usbtestsoc_usbtestsoc_zero_trigger;
assign sys_clk = clk16;
assign por_clk = sys_clk;
assign sys_rst = (usbtestsoc_crg_reset_delay != 1'd0);
assign usbtestsoc_status = 160'd1256218714774539849041605386092237821690702622496;
assign usbtestsoc_platform_status = 63'd8388357248643000161;
assign usbtestsoc_target_status = 63'd8463216376817087488;
assign spiflash_wp = 1'd1;
assign spiflash_hold = 1'd1;
assign usbtestsoc_spiflash_bus_dat_r = usbtestsoc_spiflash_sr;
always @(*) begin
	usbtestsoc_spiflash_miso_status <= 1'd0;
	spiflash_mosi <= 1'd0;
	spiflash_cs_n <= 1'd0;
	spiflash_clk <= 1'd0;
	if (usbtestsoc_spiflash_bitbang_en_storage) begin
		spiflash_clk <= usbtestsoc_spiflash_bitbang_storage[1];
		spiflash_cs_n <= usbtestsoc_spiflash_bitbang_storage[2];
		if (usbtestsoc_spiflash_bitbang_storage[1]) begin
			usbtestsoc_spiflash_miso_status <= spiflash_miso;
		end
		spiflash_mosi <= usbtestsoc_spiflash_bitbang_storage[0];
	end else begin
		spiflash_clk <= usbtestsoc_spiflash_clk1;
		spiflash_cs_n <= usbtestsoc_spiflash_cs_n1;
		spiflash_mosi <= usbtestsoc_spiflash_sr[31];
	end
end
assign uartwishbonebridge_reset = uartwishbonebridge_done;
assign uartwishbonebridge_source_ready = 1'd1;
assign uartwishbonebridge_wishbone_adr = (uartwishbonebridge_address + uartwishbonebridge_word_counter);
assign uartwishbonebridge_wishbone_dat_w = uartwishbonebridge_data;
assign uartwishbonebridge_wishbone_sel = 4'd15;
always @(*) begin
	uartwishbonebridge_sink_payload_data <= 8'd0;
	case (uartwishbonebridge_byte_counter)
		1'd0: begin
			uartwishbonebridge_sink_payload_data <= uartwishbonebridge_data[31:24];
		end
		1'd1: begin
			uartwishbonebridge_sink_payload_data <= uartwishbonebridge_data[23:16];
		end
		2'd2: begin
			uartwishbonebridge_sink_payload_data <= uartwishbonebridge_data[15:8];
		end
		default: begin
			uartwishbonebridge_sink_payload_data <= uartwishbonebridge_data[7:0];
		end
	endcase
end
assign uartwishbonebridge_wait = (~uartwishbonebridge_is_ongoing);
assign uartwishbonebridge_sink_last = ((uartwishbonebridge_byte_counter == 2'd3) & (uartwishbonebridge_word_counter == (uartwishbonebridge_length - 1'd1)));
always @(*) begin
	uartwishbonebridge_wishbone_we <= 1'd0;
	uartwishbonebridge_byte_counter_reset <= 1'd0;
	uartwishbonebridge_byte_counter_ce <= 1'd0;
	uartwishbonebridge_word_counter_reset <= 1'd0;
	uartwishbonebridge_sink_valid <= 1'd0;
	uartwishbonebridge_word_counter_ce <= 1'd0;
	uartwishbonebridge_cmd_ce <= 1'd0;
	uartwishbonebridge_next_state <= 3'd0;
	uartwishbonebridge_length_ce <= 1'd0;
	uartwishbonebridge_address_ce <= 1'd0;
	uartwishbonebridge_rx_data_ce <= 1'd0;
	uartwishbonebridge_tx_data_ce <= 1'd0;
	uartwishbonebridge_is_ongoing <= 1'd0;
	uartwishbonebridge_wishbone_cyc <= 1'd0;
	uartwishbonebridge_wishbone_stb <= 1'd0;
	uartwishbonebridge_next_state <= uartwishbonebridge_state;
	case (uartwishbonebridge_state)
		1'd1: begin
			if (uartwishbonebridge_source_valid) begin
				uartwishbonebridge_length_ce <= 1'd1;
				uartwishbonebridge_next_state <= 2'd2;
			end
		end
		2'd2: begin
			if (uartwishbonebridge_source_valid) begin
				uartwishbonebridge_address_ce <= 1'd1;
				uartwishbonebridge_byte_counter_ce <= 1'd1;
				if ((uartwishbonebridge_byte_counter == 2'd3)) begin
					if ((uartwishbonebridge_cmd == 1'd1)) begin
						uartwishbonebridge_next_state <= 2'd3;
					end else begin
						if ((uartwishbonebridge_cmd == 2'd2)) begin
							uartwishbonebridge_next_state <= 3'd5;
						end
					end
					uartwishbonebridge_byte_counter_reset <= 1'd1;
				end
			end
		end
		2'd3: begin
			if (uartwishbonebridge_source_valid) begin
				uartwishbonebridge_rx_data_ce <= 1'd1;
				uartwishbonebridge_byte_counter_ce <= 1'd1;
				if ((uartwishbonebridge_byte_counter == 2'd3)) begin
					uartwishbonebridge_next_state <= 3'd4;
					uartwishbonebridge_byte_counter_reset <= 1'd1;
				end
			end
		end
		3'd4: begin
			uartwishbonebridge_wishbone_stb <= 1'd1;
			uartwishbonebridge_wishbone_we <= 1'd1;
			uartwishbonebridge_wishbone_cyc <= 1'd1;
			if (uartwishbonebridge_wishbone_ack) begin
				uartwishbonebridge_word_counter_ce <= 1'd1;
				if ((uartwishbonebridge_word_counter == (uartwishbonebridge_length - 1'd1))) begin
					uartwishbonebridge_next_state <= 1'd0;
				end else begin
					uartwishbonebridge_next_state <= 2'd3;
				end
			end
		end
		3'd5: begin
			uartwishbonebridge_wishbone_stb <= 1'd1;
			uartwishbonebridge_wishbone_we <= 1'd0;
			uartwishbonebridge_wishbone_cyc <= 1'd1;
			if (uartwishbonebridge_wishbone_ack) begin
				uartwishbonebridge_tx_data_ce <= 1'd1;
				uartwishbonebridge_next_state <= 3'd6;
			end
		end
		3'd6: begin
			uartwishbonebridge_sink_valid <= 1'd1;
			if (uartwishbonebridge_sink_ready) begin
				uartwishbonebridge_byte_counter_ce <= 1'd1;
				if ((uartwishbonebridge_byte_counter == 2'd3)) begin
					uartwishbonebridge_word_counter_ce <= 1'd1;
					if ((uartwishbonebridge_word_counter == (uartwishbonebridge_length - 1'd1))) begin
						uartwishbonebridge_next_state <= 1'd0;
					end else begin
						uartwishbonebridge_next_state <= 3'd5;
						uartwishbonebridge_byte_counter_reset <= 1'd1;
					end
				end
			end
		end
		default: begin
			if (uartwishbonebridge_source_valid) begin
				uartwishbonebridge_cmd_ce <= 1'd1;
				if (((uartwishbonebridge_source_payload_data == 1'd1) | (uartwishbonebridge_source_payload_data == 2'd2))) begin
					uartwishbonebridge_next_state <= 1'd1;
				end
				uartwishbonebridge_byte_counter_reset <= 1'd1;
				uartwishbonebridge_word_counter_reset <= 1'd1;
			end
			uartwishbonebridge_is_ongoing <= 1'd1;
		end
	endcase
end
assign uartwishbonebridge_done = (uartwishbonebridge_count == 1'd0);
always @(*) begin
	usbdevice_usb_p_rx <= 1'd0;
	usbdevice_usb_n_rx <= 1'd0;
	if (usbdevice_usb_tx_en) begin
		usbdevice_usb_p_rx <= 1'd1;
		usbdevice_usb_n_rx <= 1'd0;
	end else begin
		usbdevice_usb_p_rx <= usbdevice_usb_p_rx_io;
		usbdevice_usb_n_rx <= usbdevice_usb_n_rx_io;
	end
end
assign usbdevice_rx_addr = usbdevice_usbfsrx_o_pkt_token_payload[10:4];
assign usbdevice_rx_endp = usbdevice_usbfsrx_o_pkt_token_payload[3:0];
assign usbdevice_usb_tx_en = usbdevice_usbfstx_o_oe;
assign usbdevice_usb_p_tx = usbdevice_usbfstx_o_usbp;
assign usbdevice_usb_n_tx = usbdevice_usbfstx_o_usbn;
assign usbdevice_tx_pkt_end = usbdevice_usbfstx_o_pkt_end;
assign usbdevice_tx_data_get = usbdevice_usbfstx_o_data_get;
assign usbdevice_valid_request_token_pre = (usbdevice_usbfsrx_o_pkt_good == 1'd1);
assign usbdevice_valid_out_token = (usbdevice_valid_request_token & (usbdevice_current_token == 4'd13));
assign usbdevice_valid_data_packet = (usbdevice_usbfsrx_o_pkt_good == 1'd1);
assign usbdevice_valid_in_token = ((usbdevice_valid_request_token & usbdevice_current_token) == 4'd9);
assign usbdevice_valid_ack_packet = (usbdevice_usbfsrx_o_pkt_good == 1'd1);
assign usbdevice_usbfsrx_dpair = {usbdevice_usbfsrx_usbp, usbdevice_usbfsrx_usbn};
always @(*) begin
	rxclockdatarecovery_next_state <= 3'd0;
	usbdevice_usbfsrx_line_state_dt <= 1'd0;
	usbdevice_usbfsrx_line_state_dj0 <= 1'd0;
	usbdevice_usbfsrx_line_state_dk0 <= 1'd0;
	usbdevice_usbfsrx_line_state_se00 <= 1'd0;
	usbdevice_usbfsrx_line_state_se10 <= 1'd0;
	rxclockdatarecovery_next_state <= rxclockdatarecovery_state;
	case (rxclockdatarecovery_state)
		1'd1: begin
			usbdevice_usbfsrx_line_state_dj0 <= 1'd1;
			if ((usbdevice_usbfsrx_dpair != 2'd2)) begin
				rxclockdatarecovery_next_state <= 1'd0;
			end
		end
		2'd2: begin
			usbdevice_usbfsrx_line_state_dk0 <= 1'd1;
			if ((usbdevice_usbfsrx_dpair != 1'd1)) begin
				rxclockdatarecovery_next_state <= 1'd0;
			end
		end
		2'd3: begin
			usbdevice_usbfsrx_line_state_se00 <= 1'd1;
			if ((usbdevice_usbfsrx_dpair != 1'd0)) begin
				rxclockdatarecovery_next_state <= 1'd0;
			end
		end
		3'd4: begin
			usbdevice_usbfsrx_line_state_se10 <= 1'd1;
			if ((usbdevice_usbfsrx_dpair != 2'd3)) begin
				rxclockdatarecovery_next_state <= 1'd0;
			end
		end
		default: begin
			usbdevice_usbfsrx_line_state_dt <= 1'd1;
			case (usbdevice_usbfsrx_dpair)
				1'd0: begin
					rxclockdatarecovery_next_state <= 2'd3;
				end
				1'd1: begin
					rxclockdatarecovery_next_state <= 2'd2;
				end
				2'd2: begin
					rxclockdatarecovery_next_state <= 1'd1;
				end
				2'd3: begin
					rxclockdatarecovery_next_state <= 3'd4;
				end
			endcase
		end
	endcase
end
always @(*) begin
	usbdevice_usbfsrx_nrzi_o_valid0 <= 1'd0;
	usbdevice_usbfsrx_nrzi_o_data0 <= 1'd0;
	rxnrzidecoder_next_state <= 1'd0;
	rxnrzidecoder_next_state <= rxnrzidecoder_state;
	case (rxnrzidecoder_state)
		1'd1: begin
			if (usbdevice_usbfsrx_line_state_valid) begin
				usbdevice_usbfsrx_nrzi_o_valid0 <= 1'd1;
				if (usbdevice_usbfsrx_line_state_dj1) begin
					usbdevice_usbfsrx_nrzi_o_data0 <= 1'd0;
					rxnrzidecoder_next_state <= 1'd0;
				end else begin
					if (usbdevice_usbfsrx_line_state_dk1) begin
						usbdevice_usbfsrx_nrzi_o_data0 <= 1'd1;
					end
				end
			end
		end
		default: begin
			if (usbdevice_usbfsrx_line_state_valid) begin
				usbdevice_usbfsrx_nrzi_o_valid0 <= 1'd1;
				if (usbdevice_usbfsrx_line_state_dj1) begin
					usbdevice_usbfsrx_nrzi_o_data0 <= 1'd1;
				end else begin
					if (usbdevice_usbfsrx_line_state_dk1) begin
						usbdevice_usbfsrx_nrzi_o_data0 <= 1'd0;
						rxnrzidecoder_next_state <= 1'd1;
					end
				end
			end
		end
	endcase
end
always @(*) begin
	usbdevice_usbfsrx_bitstuff_drop_bit <= 1'd0;
	rxbitstuffremover_next_state <= 3'd0;
	rxbitstuffremover_next_state <= rxbitstuffremover_state;
	case (rxbitstuffremover_state)
		1'd1: begin
			if (usbdevice_usbfsrx_nrzi_o_valid1) begin
				if (usbdevice_usbfsrx_nrzi_o_data1) begin
					rxbitstuffremover_next_state <= 2'd2;
				end else begin
					rxbitstuffremover_next_state <= 1'd0;
				end
			end
		end
		2'd2: begin
			if (usbdevice_usbfsrx_nrzi_o_valid1) begin
				if (usbdevice_usbfsrx_nrzi_o_data1) begin
					rxbitstuffremover_next_state <= 2'd3;
				end else begin
					rxbitstuffremover_next_state <= 1'd0;
				end
			end
		end
		2'd3: begin
			if (usbdevice_usbfsrx_nrzi_o_valid1) begin
				if (usbdevice_usbfsrx_nrzi_o_data1) begin
					rxbitstuffremover_next_state <= 3'd4;
				end else begin
					rxbitstuffremover_next_state <= 1'd0;
				end
			end
		end
		3'd4: begin
			if (usbdevice_usbfsrx_nrzi_o_valid1) begin
				if (usbdevice_usbfsrx_nrzi_o_data1) begin
					rxbitstuffremover_next_state <= 3'd5;
				end else begin
					rxbitstuffremover_next_state <= 1'd0;
				end
			end
		end
		3'd5: begin
			if (usbdevice_usbfsrx_nrzi_o_valid1) begin
				if (usbdevice_usbfsrx_nrzi_o_data1) begin
					rxbitstuffremover_next_state <= 3'd6;
				end else begin
					rxbitstuffremover_next_state <= 1'd0;
				end
			end
		end
		3'd6: begin
			usbdevice_usbfsrx_bitstuff_drop_bit <= 1'd1;
			if (usbdevice_usbfsrx_nrzi_o_valid1) begin
				rxbitstuffremover_next_state <= 1'd0;
			end
		end
		default: begin
			if (usbdevice_usbfsrx_nrzi_o_valid1) begin
				if (usbdevice_usbfsrx_nrzi_o_data1) begin
					rxbitstuffremover_next_state <= 1'd1;
				end else begin
					rxbitstuffremover_next_state <= 1'd0;
				end
			end
		end
	endcase
end
assign usbdevice_usbfsrx_data_put = usbdevice_usbfsrx_data_shifter_o_full;
always @(*) begin
	rxpacketdecode_next_state <= 3'd0;
	usbdevice_usbfsrx_pkt_start <= 1'd0;
	usbdevice_usbfsrx_pkt_active0 <= 1'd0;
	usbdevice_usbfsrx_pkt_end0 <= 1'd0;
	rxpacketdecode_next_state <= rxpacketdecode_state;
	case (rxpacketdecode_state)
		1'd1: begin
			if (usbdevice_usbfsrx_bitstuff_o_valid) begin
				if ((usbdevice_usbfsrx_bitstuff_o_data | usbdevice_usbfsrx_bitstuff_o_se0)) begin
					rxpacketdecode_next_state <= 1'd0;
				end else begin
					rxpacketdecode_next_state <= 2'd2;
				end
			end
		end
		2'd2: begin
			if (usbdevice_usbfsrx_bitstuff_o_valid) begin
				if ((usbdevice_usbfsrx_bitstuff_o_data | usbdevice_usbfsrx_bitstuff_o_se0)) begin
					rxpacketdecode_next_state <= 1'd0;
				end else begin
					rxpacketdecode_next_state <= 2'd3;
				end
			end
		end
		2'd3: begin
			if (usbdevice_usbfsrx_bitstuff_o_valid) begin
				if ((usbdevice_usbfsrx_bitstuff_o_data | usbdevice_usbfsrx_bitstuff_o_se0)) begin
					rxpacketdecode_next_state <= 1'd0;
				end else begin
					rxpacketdecode_next_state <= 3'd4;
				end
			end
		end
		3'd4: begin
			if (usbdevice_usbfsrx_bitstuff_o_valid) begin
				if ((usbdevice_usbfsrx_bitstuff_o_data | usbdevice_usbfsrx_bitstuff_o_se0)) begin
					rxpacketdecode_next_state <= 1'd0;
				end else begin
					rxpacketdecode_next_state <= 3'd5;
				end
			end
		end
		3'd5: begin
			if (usbdevice_usbfsrx_bitstuff_o_valid) begin
				if (usbdevice_usbfsrx_bitstuff_o_data) begin
					usbdevice_usbfsrx_pkt_start <= 1'd1;
					usbdevice_usbfsrx_pkt_active0 <= 1'd1;
					rxpacketdecode_next_state <= 3'd6;
				end
			end
		end
		3'd6: begin
			usbdevice_usbfsrx_pkt_active0 <= 1'd1;
			if (usbdevice_usbfsrx_bitstuff_o_valid) begin
				if (usbdevice_usbfsrx_bitstuff_o_se0) begin
					usbdevice_usbfsrx_pkt_end0 <= 1'd1;
					usbdevice_usbfsrx_pkt_active0 <= 1'd0;
					rxpacketdecode_next_state <= 1'd0;
				end
			end
		end
		default: begin
			if (usbdevice_usbfsrx_bitstuff_o_valid) begin
				if ((usbdevice_usbfsrx_bitstuff_o_data | usbdevice_usbfsrx_bitstuff_o_se0)) begin
					rxpacketdecode_next_state <= 1'd0;
				end else begin
					rxpacketdecode_next_state <= 1'd1;
				end
			end
		end
	endcase
end
assign usbdevice_usbfsrx_pid_shifter_o_full = usbdevice_usbfsrx_pid_shifter_shift_reg[0];
assign usbdevice_usbfsrx_pid_shifter_o_output = usbdevice_usbfsrx_pid_shifter_shift_reg[8:1];
assign usbdevice_usbfsrx_tok_shifter_o_full = usbdevice_usbfsrx_tok_shifter_shift_reg[0];
assign usbdevice_usbfsrx_tok_shifter_o_output = usbdevice_usbfsrx_tok_shifter_shift_reg[16:1];
assign usbdevice_usbfsrx_tok_crc5_crc_good = (usbdevice_usbfsrx_tok_crc5_crc == 4'd12);
assign usbdevice_usbfsrx_tok_crc5_crc_invert = (usbdevice_usbfsrx_data ^ usbdevice_usbfsrx_tok_crc5_crc[4]);
assign usbdevice_usbfsrx_data_shifter_o_full = usbdevice_usbfsrx_data_shifter_shift_reg[0];
assign usbdevice_usbfsrx_data_shifter_o_output = usbdevice_usbfsrx_data_shifter_shift_reg[8:1];
assign usbdevice_usbfsrx_data_crc16_crc_good = (usbdevice_usbfsrx_data_crc16_crc == 16'd32781);
assign usbdevice_usbfsrx_data_crc16_crc_invert = (usbdevice_usbfsrx_data ^ usbdevice_usbfsrx_data_crc16_crc[15]);
assign usbdevice_usbfstx_bitstuff_stall = usbdevice_usbfstx_bitstuffer_o_stall;
always @(*) begin
	usbdevice_usbfstx_pkt_active <= 1'd0;
	usbdevice_usbfstx_shift_sync <= 1'd0;
	usbdevice_usbfstx_shift_pid <= 1'd0;
	usbdevice_usbfstx_shift_eop <= 1'd0;
	usbdevice_usbfstx_load_data <= 1'd0;
	usbdevice_usbfstx_shift_data <= 1'd0;
	usbdevice_usbfstx_load_crc16 <= 1'd0;
	usbdevice_usbfstx_shift_crc16 <= 1'd0;
	usbdevice_usbfstx_pkt_end <= 1'd0;
	fsm_next_state <= 3'd0;
	fsm_next_state <= fsm_state;
	case (fsm_state)
		1'd1: begin
			usbdevice_usbfstx_pkt_active <= 1'd1;
			usbdevice_usbfstx_shift_sync <= 1'd1;
			if (usbdevice_usbfstx_sync_shifter_o_empty) begin
				fsm_next_state <= 2'd2;
			end
		end
		2'd2: begin
			usbdevice_usbfstx_pkt_active <= 1'd1;
			usbdevice_usbfstx_shift_pid <= 1'd1;
			if (usbdevice_usbfstx_pid_shifter_o_empty) begin
				if (usbdevice_usbfstx_pid_is_data) begin
					if (usbdevice_tx_data_avail) begin
						usbdevice_usbfstx_load_data <= 1'd1;
						fsm_next_state <= 2'd3;
					end else begin
						usbdevice_usbfstx_load_crc16 <= 1'd1;
						fsm_next_state <= 3'd4;
					end
				end else begin
					fsm_next_state <= 3'd5;
				end
			end
		end
		2'd3: begin
			usbdevice_usbfstx_pkt_active <= 1'd1;
			usbdevice_usbfstx_shift_data <= 1'd1;
			if (usbdevice_usbfstx_data_shifter_o_empty) begin
				if (usbdevice_tx_data_avail) begin
					usbdevice_usbfstx_load_data <= 1'd1;
				end else begin
					usbdevice_usbfstx_load_crc16 <= 1'd1;
					fsm_next_state <= 3'd4;
				end
			end
		end
		3'd4: begin
			usbdevice_usbfstx_pkt_active <= 1'd1;
			usbdevice_usbfstx_shift_crc16 <= 1'd1;
			if (usbdevice_usbfstx_crc16_shifter_o_empty) begin
				fsm_next_state <= 3'd5;
			end
		end
		3'd5: begin
			usbdevice_usbfstx_pkt_active <= 1'd1;
			usbdevice_usbfstx_shift_eop <= 1'd1;
			if (usbdevice_usbfsrx_line_state_valid) begin
				fsm_next_state <= 3'd6;
			end
		end
		3'd6: begin
			usbdevice_usbfstx_pkt_active <= 1'd1;
			usbdevice_usbfstx_shift_eop <= 1'd1;
			usbdevice_usbfstx_pkt_end <= 1'd1;
			if (usbdevice_usbfsrx_line_state_valid) begin
				fsm_next_state <= 1'd0;
			end
		end
		default: begin
			if (usbdevice_tx_pkt_start) begin
				fsm_next_state <= 1'd1;
			end
		end
	endcase
end
assign usbdevice_usbfstx_sync_shifter_o_data = usbdevice_usbfstx_sync_shifter_shifter[0];
assign usbdevice_usbfstx_sync_shifter_o_empty = (~usbdevice_usbfstx_sync_shifter_not_empty);
assign usbdevice_usbfstx_pid_shifter_o_data = usbdevice_usbfstx_pid_shifter_shifter[0];
assign usbdevice_usbfstx_pid_shifter_o_empty = (~usbdevice_usbfstx_pid_shifter_not_empty);
assign usbdevice_usbfstx_data_shifter_o_data = usbdevice_usbfstx_data_shifter_shifter[0];
assign usbdevice_usbfstx_data_shifter_o_empty = (~usbdevice_usbfstx_data_shifter_not_empty);
assign usbdevice_usbfstx_crc_invert = (usbdevice_usbfstx_data_shifter_o_data ^ usbdevice_usbfstx_crc[15]);
always @(*) begin
	usbdevice_usbfstx_o_crc <= 16'd0;
	usbdevice_usbfstx_o_crc[0] <= (1'd1 ^ usbdevice_usbfstx_crc[15]);
	usbdevice_usbfstx_o_crc[1] <= (1'd1 ^ usbdevice_usbfstx_crc[14]);
	usbdevice_usbfstx_o_crc[2] <= (1'd1 ^ usbdevice_usbfstx_crc[13]);
	usbdevice_usbfstx_o_crc[3] <= (1'd1 ^ usbdevice_usbfstx_crc[12]);
	usbdevice_usbfstx_o_crc[4] <= (1'd1 ^ usbdevice_usbfstx_crc[11]);
	usbdevice_usbfstx_o_crc[5] <= (1'd1 ^ usbdevice_usbfstx_crc[10]);
	usbdevice_usbfstx_o_crc[6] <= (1'd1 ^ usbdevice_usbfstx_crc[9]);
	usbdevice_usbfstx_o_crc[7] <= (1'd1 ^ usbdevice_usbfstx_crc[8]);
	usbdevice_usbfstx_o_crc[8] <= (1'd1 ^ usbdevice_usbfstx_crc[7]);
	usbdevice_usbfstx_o_crc[9] <= (1'd1 ^ usbdevice_usbfstx_crc[6]);
	usbdevice_usbfstx_o_crc[10] <= (1'd1 ^ usbdevice_usbfstx_crc[5]);
	usbdevice_usbfstx_o_crc[11] <= (1'd1 ^ usbdevice_usbfstx_crc[4]);
	usbdevice_usbfstx_o_crc[12] <= (1'd1 ^ usbdevice_usbfstx_crc[3]);
	usbdevice_usbfstx_o_crc[13] <= (1'd1 ^ usbdevice_usbfstx_crc[2]);
	usbdevice_usbfstx_o_crc[14] <= (1'd1 ^ usbdevice_usbfstx_crc[1]);
	usbdevice_usbfstx_o_crc[15] <= (1'd1 ^ usbdevice_usbfstx_crc[0]);
end
assign usbdevice_usbfstx_crc16_shifter_o_data = usbdevice_usbfstx_crc16_shifter_shifter[0];
assign usbdevice_usbfstx_crc16_shifter_o_empty = (~usbdevice_usbfstx_crc16_shifter_not_empty);
assign usbdevice_usbfstx_bitstuffer_o_stall = usbdevice_usbfstx_bitstuffer_stuff_bit;
always @(*) begin
	txbitstuffer_next_state <= 3'd0;
	usbdevice_usbfstx_bitstuffer_stuff_bit <= 1'd0;
	txbitstuffer_next_state <= txbitstuffer_state;
	case (txbitstuffer_state)
		1'd1: begin
			if (usbdevice_usbfstx_mux_stuff_bit_strobe) begin
				if (usbdevice_usbfstx_mux_stuff_data) begin
					txbitstuffer_next_state <= 2'd2;
				end else begin
					txbitstuffer_next_state <= 1'd0;
				end
			end
		end
		2'd2: begin
			if (usbdevice_usbfstx_mux_stuff_bit_strobe) begin
				if (usbdevice_usbfstx_mux_stuff_data) begin
					txbitstuffer_next_state <= 2'd3;
				end else begin
					txbitstuffer_next_state <= 1'd0;
				end
			end
		end
		2'd3: begin
			if (usbdevice_usbfstx_mux_stuff_bit_strobe) begin
				if (usbdevice_usbfstx_mux_stuff_data) begin
					txbitstuffer_next_state <= 3'd4;
				end else begin
					txbitstuffer_next_state <= 1'd0;
				end
			end
		end
		3'd4: begin
			if (usbdevice_usbfstx_mux_stuff_bit_strobe) begin
				if (usbdevice_usbfstx_mux_stuff_data) begin
					txbitstuffer_next_state <= 3'd5;
				end else begin
					txbitstuffer_next_state <= 1'd0;
				end
			end
		end
		3'd5: begin
			if (usbdevice_usbfstx_mux_stuff_bit_strobe) begin
				if (usbdevice_usbfstx_mux_stuff_data) begin
					txbitstuffer_next_state <= 3'd6;
				end else begin
					txbitstuffer_next_state <= 1'd0;
				end
			end
		end
		3'd6: begin
			usbdevice_usbfstx_bitstuffer_stuff_bit <= 1'd1;
			if (usbdevice_usbfstx_mux_stuff_bit_strobe) begin
				txbitstuffer_next_state <= 1'd0;
			end
		end
		default: begin
			if (usbdevice_usbfstx_mux_stuff_bit_strobe) begin
				if (usbdevice_usbfstx_mux_stuff_data) begin
					txbitstuffer_next_state <= 1'd1;
				end else begin
					txbitstuffer_next_state <= 1'd0;
				end
			end
		end
	endcase
end
always @(*) begin
	usbdevice_usbfstx_nrzi_usbn <= 1'd0;
	usbdevice_usbfstx_nrzi_oe <= 1'd0;
	txnrziencoder_next_state <= 3'd0;
	usbdevice_usbfstx_nrzi_usbp <= 1'd0;
	txnrziencoder_next_state <= txnrziencoder_state;
	case (txnrziencoder_state)
		1'd1: begin
			usbdevice_usbfstx_nrzi_usbp <= 1'd1;
			usbdevice_usbfstx_nrzi_usbn <= 1'd0;
			usbdevice_usbfstx_nrzi_oe <= 1'd1;
			if (usbdevice_usbfstx_mux_stuff_bit_strobe) begin
				if (usbdevice_usbfstx_bitstuffer_o_se0) begin
					txnrziencoder_next_state <= 2'd3;
				end else begin
					if (usbdevice_usbfstx_bitstuffer_o_data) begin
						txnrziencoder_next_state <= 1'd1;
					end else begin
						txnrziencoder_next_state <= 2'd2;
					end
				end
			end
		end
		2'd2: begin
			usbdevice_usbfstx_nrzi_usbp <= 1'd0;
			usbdevice_usbfstx_nrzi_usbn <= 1'd1;
			usbdevice_usbfstx_nrzi_oe <= 1'd1;
			if (usbdevice_usbfstx_mux_stuff_bit_strobe) begin
				if (usbdevice_usbfstx_bitstuffer_o_se0) begin
					txnrziencoder_next_state <= 2'd3;
				end else begin
					if (usbdevice_usbfstx_bitstuffer_o_data) begin
						txnrziencoder_next_state <= 2'd2;
					end else begin
						txnrziencoder_next_state <= 1'd1;
					end
				end
			end
		end
		2'd3: begin
			usbdevice_usbfstx_nrzi_usbp <= 1'd0;
			usbdevice_usbfstx_nrzi_usbn <= 1'd0;
			usbdevice_usbfstx_nrzi_oe <= 1'd1;
			if (usbdevice_usbfstx_mux_stuff_bit_strobe) begin
				if (usbdevice_usbfstx_bitstuffer_o_se0) begin
					txnrziencoder_next_state <= 2'd3;
				end else begin
					txnrziencoder_next_state <= 3'd4;
				end
			end
		end
		3'd4: begin
			usbdevice_usbfstx_nrzi_usbp <= 1'd1;
			usbdevice_usbfstx_nrzi_usbn <= 1'd0;
			usbdevice_usbfstx_nrzi_oe <= 1'd1;
			if (usbdevice_usbfstx_mux_stuff_bit_strobe) begin
				txnrziencoder_next_state <= 1'd0;
			end
		end
		default: begin
			usbdevice_usbfstx_nrzi_usbp <= 1'd1;
			usbdevice_usbfstx_nrzi_usbn <= 1'd0;
			usbdevice_usbfstx_nrzi_oe <= 1'd0;
			if (usbdevice_usbfstx_mux_stuff_bit_strobe) begin
				if (usbdevice_usbfstx_bitstuffer_o_oe) begin
					txnrziencoder_next_state <= 2'd2;
				end
			end
		end
	endcase
end
always @(*) begin
	usbdevice_out_tx_pkt_start <= 1'd0;
	usbdevice_out_tx_pid <= 4'd0;
	fsm0_next_state <= 3'd0;
	usbdevice_o_out_commit <= 1'd0;
	usbdevice_o_out_rollback <= 1'd0;
	fsm0_next_state <= fsm0_state;
	case (fsm0_state)
		1'd1: begin
			if (usbdevice_usbfsrx_o_pkt_end1) begin
				if (usbdevice_valid_data_packet) begin
					fsm0_next_state <= 2'd2;
				end else begin
					fsm0_next_state <= 3'd5;
				end
				fsm0_next_state <= 1'd0;
			end
		end
		2'd2: begin
			usbdevice_out_tx_pid <= 2'd2;
			usbdevice_out_tx_pkt_start <= 1'd1;
			usbdevice_o_out_commit <= 1'd1;
			fsm0_next_state <= 1'd0;
		end
		2'd3: begin
			if (usbdevice_usbfsrx_o_pkt_end1) begin
				if (usbdevice_valid_data_packet) begin
					fsm0_next_state <= 3'd4;
				end else begin
					fsm0_next_state <= 3'd5;
				end
			end
		end
		3'd4: begin
			usbdevice_out_tx_pid <= 4'd10;
			usbdevice_out_tx_pkt_start <= 1'd1;
			fsm0_next_state <= 3'd5;
		end
		3'd5: begin
			usbdevice_o_out_rollback <= 1'd1;
			fsm0_next_state <= 1'd0;
		end
		default: begin
			if ((usbdevice_usbfsrx_o_pkt_end1 & usbdevice_valid_out_token)) begin
				if (t_array_muxed) begin
					fsm0_next_state <= 1'd1;
				end else begin
					fsm0_next_state <= 2'd3;
				end
			end
		end
	endcase
end
always @(*) begin
	usbdevice_in_tx_pkt_start <= 1'd0;
	fsm1_next_state <= 3'd0;
	usbdevice_in_tx_pid <= 4'd0;
	usbdevice_o_in_commit <= 1'd0;
	usbdevice_o_in_rollback <= 1'd0;
	fsm1_next_state <= fsm1_state;
	case (fsm1_state)
		1'd1: begin
			if (basiclowerer_array_muxed) begin
				fsm1_next_state <= 2'd2;
			end else begin
				fsm1_next_state <= 2'd3;
			end
		end
		2'd2: begin
			usbdevice_in_tx_pid <= (rhs_array_muxed ? 4'd11 : 2'd3);
			usbdevice_in_tx_pkt_start <= 1'd1;
			fsm1_next_state <= 3'd4;
		end
		2'd3: begin
			usbdevice_in_tx_pid <= 4'd10;
			usbdevice_in_tx_pkt_start <= 1'd1;
			fsm1_next_state <= 1'd0;
		end
		3'd4: begin
			if (usbdevice_usbfsrx_o_pkt_end1) begin
				if (usbdevice_valid_ack_packet) begin
					usbdevice_o_in_commit <= 1'd1;
					fsm1_next_state <= 1'd0;
				end else begin
					if (usbdevice_valid_in_token) begin
						usbdevice_o_in_rollback <= 1'd1;
						fsm1_next_state <= 1'd1;
					end else begin
						usbdevice_o_in_rollback <= 1'd1;
						fsm1_next_state <= 1'd0;
					end
				end
			end
		end
		default: begin
			if ((usbdevice_usbfsrx_o_pkt_end1 & usbdevice_valid_in_token)) begin
				fsm1_next_state <= 1'd1;
			end
		end
	endcase
end
assign io_output = io_storage;
assign scope_clk = sys_clk;
assign scope_rst = sys_rst;
assign mux_valid = 1'd1;
assign mux_payload_data = {usb_d_n, usb_d_p};
always @(*) begin
	mux_source_first <= 1'd0;
	mux_source_last <= 1'd0;
	mux_source_payload_data <= 2'd0;
	mux_source_payload_hit <= 1'd0;
	mux_ready <= 1'd0;
	mux_source_valid <= 1'd0;
	case (mux_value)
		1'd0: begin
			mux_source_valid <= mux_valid;
			mux_ready <= mux_source_ready;
			mux_source_first <= mux_first;
			mux_source_last <= mux_last;
			mux_source_payload_data <= mux_payload_data;
			mux_source_payload_hit <= mux_payload_hit;
		end
	endcase
end
assign trigger_mem_sink_valid = trigger_mem_write_re;
assign trigger_mem_sink_payload_mask = trigger_mem_mask_storage;
assign trigger_mem_sink_payload_value = trigger_mem_value_storage;
assign trigger_mem_full_status = (~trigger_mem_sink_ready);
assign trigger_wait = (~((~trigger_enable) & trigger_enable_d));
assign trigger_hit = ((trigger_sink_sink_payload_data & trigger_mem_source_payload_mask) == trigger_mem_source_payload_value);
assign trigger_mem_source_ready = (trigger_enable & (trigger_hit | (~trigger_done1)));
assign trigger_source_source_valid = trigger_sink_sink_valid;
assign trigger_sink_sink_ready = trigger_source_source_ready;
assign trigger_source_source_first = trigger_sink_sink_first;
assign trigger_source_source_last = trigger_sink_sink_last;
assign trigger_source_source_payload_data = trigger_sink_sink_payload_data;
assign trigger_done0 = (~trigger_mem_source_valid);
always @(*) begin
	trigger_source_source_payload_hit <= 1'd0;
	trigger_source_source_payload_hit <= trigger_sink_sink_payload_hit;
	trigger_source_source_payload_hit <= trigger_done0;
end
assign trigger_mem_asyncfifo_din = {trigger_mem_fifo_in_last, trigger_mem_fifo_in_first, trigger_mem_fifo_in_payload_value, trigger_mem_fifo_in_payload_mask};
assign {trigger_mem_fifo_out_last, trigger_mem_fifo_out_first, trigger_mem_fifo_out_payload_value, trigger_mem_fifo_out_payload_mask} = trigger_mem_asyncfifo_dout;
assign trigger_mem_sink_ready = trigger_mem_asyncfifo_writable;
assign trigger_mem_asyncfifo_we = trigger_mem_sink_valid;
assign trigger_mem_fifo_in_first = trigger_mem_sink_first;
assign trigger_mem_fifo_in_last = trigger_mem_sink_last;
assign trigger_mem_fifo_in_payload_mask = trigger_mem_sink_payload_mask;
assign trigger_mem_fifo_in_payload_value = trigger_mem_sink_payload_value;
assign trigger_mem_source_valid = trigger_mem_asyncfifo_readable;
assign trigger_mem_source_first = trigger_mem_fifo_out_first;
assign trigger_mem_source_last = trigger_mem_fifo_out_last;
assign trigger_mem_source_payload_mask = trigger_mem_fifo_out_payload_mask;
assign trigger_mem_source_payload_value = trigger_mem_fifo_out_payload_value;
assign trigger_mem_asyncfifo_re = trigger_mem_source_ready;
assign trigger_mem_graycounter0_ce = (trigger_mem_asyncfifo_writable & trigger_mem_asyncfifo_we);
assign trigger_mem_graycounter1_ce = (trigger_mem_asyncfifo_readable & trigger_mem_asyncfifo_re);
assign trigger_mem_asyncfifo_writable = (((trigger_mem_graycounter0_q[4] == trigger_mem_consume_wdomain[4]) | (trigger_mem_graycounter0_q[3] == trigger_mem_consume_wdomain[3])) | (trigger_mem_graycounter0_q[2:0] != trigger_mem_consume_wdomain[2:0]));
assign trigger_mem_asyncfifo_readable = (trigger_mem_graycounter1_q != trigger_mem_produce_rdomain);
assign trigger_mem_wrport_adr = trigger_mem_graycounter0_q_binary[3:0];
assign trigger_mem_wrport_dat_w = trigger_mem_asyncfifo_din;
assign trigger_mem_wrport_we = trigger_mem_graycounter0_ce;
assign trigger_mem_rdport_adr = trigger_mem_graycounter1_q_next_binary[3:0];
assign trigger_mem_asyncfifo_dout = trigger_mem_rdport_dat_r;
always @(*) begin
	trigger_mem_graycounter0_q_next_binary <= 5'd0;
	if (trigger_mem_graycounter0_ce) begin
		trigger_mem_graycounter0_q_next_binary <= (trigger_mem_graycounter0_q_binary + 1'd1);
	end else begin
		trigger_mem_graycounter0_q_next_binary <= trigger_mem_graycounter0_q_binary;
	end
end
assign trigger_mem_graycounter0_q_next = (trigger_mem_graycounter0_q_next_binary ^ trigger_mem_graycounter0_q_next_binary[4:1]);
always @(*) begin
	trigger_mem_graycounter1_q_next_binary <= 5'd0;
	if (trigger_mem_graycounter1_ce) begin
		trigger_mem_graycounter1_q_next_binary <= (trigger_mem_graycounter1_q_binary + 1'd1);
	end else begin
		trigger_mem_graycounter1_q_next_binary <= trigger_mem_graycounter1_q_binary;
	end
end
assign trigger_mem_graycounter1_q_next = (trigger_mem_graycounter1_q_next_binary ^ trigger_mem_graycounter1_q_next_binary[4:1]);
assign trigger_done1 = (trigger_count == 1'd0);
assign subsampler_done = (subsampler_counter == subsampler_value);
assign subsampler_sink_ready = subsampler_source_ready;
assign subsampler_source_first = subsampler_sink_first;
assign subsampler_source_last = subsampler_sink_last;
assign subsampler_source_payload_data = subsampler_sink_payload_data;
assign subsampler_source_payload_hit = subsampler_sink_payload_hit;
assign subsampler_source_valid = (subsampler_sink_valid & subsampler_done);
assign storage_mem_valid_status = storage_cdc_source_valid;
assign storage_cdc_source_ready = (storage_mem_ready_re | (~storage_enable_storage));
assign storage_mem_data_status = storage_cdc_source_payload_data;
assign storage_mem_syncfifo_din = {storage_mem_fifo_in_last, storage_mem_fifo_in_first, storage_mem_fifo_in_payload_data};
assign {storage_mem_fifo_out_last, storage_mem_fifo_out_first, storage_mem_fifo_out_payload_data} = storage_mem_syncfifo_dout;
assign storage_mem_sink_ready = storage_mem_syncfifo_writable;
assign storage_mem_syncfifo_we = storage_mem_sink_valid;
assign storage_mem_fifo_in_first = storage_mem_sink_first;
assign storage_mem_fifo_in_last = storage_mem_sink_last;
assign storage_mem_fifo_in_payload_data = storage_mem_sink_payload_data;
assign storage_mem_source_valid = storage_mem_readable;
assign storage_mem_source_first = storage_mem_fifo_out_first;
assign storage_mem_source_last = storage_mem_fifo_out_last;
assign storage_mem_source_payload_data = storage_mem_fifo_out_payload_data;
assign storage_mem_re = storage_mem_source_ready;
assign storage_mem_syncfifo_re = (storage_mem_syncfifo_readable & ((~storage_mem_readable) | storage_mem_re));
assign storage_mem_level1 = (storage_mem_level0 + storage_mem_readable);
always @(*) begin
	storage_mem_wrport_adr <= 8'd0;
	if (storage_mem_replace) begin
		storage_mem_wrport_adr <= (storage_mem_produce - 1'd1);
	end else begin
		storage_mem_wrport_adr <= storage_mem_produce;
	end
end
assign storage_mem_wrport_dat_w = storage_mem_syncfifo_din;
assign storage_mem_wrport_we = (storage_mem_syncfifo_we & (storage_mem_syncfifo_writable | storage_mem_replace));
assign storage_mem_do_read = (storage_mem_syncfifo_readable & storage_mem_syncfifo_re);
assign storage_mem_rdport_adr = storage_mem_consume;
assign storage_mem_syncfifo_dout = storage_mem_rdport_dat_r;
assign storage_mem_rdport_re = storage_mem_do_read;
assign storage_mem_syncfifo_writable = (storage_mem_level0 != 9'd256);
assign storage_mem_syncfifo_readable = (storage_mem_level0 != 1'd0);
assign storage_cdc_asyncfifo_din = {storage_cdc_fifo_in_last, storage_cdc_fifo_in_first, storage_cdc_fifo_in_payload_data};
assign {storage_cdc_fifo_out_last, storage_cdc_fifo_out_first, storage_cdc_fifo_out_payload_data} = storage_cdc_asyncfifo_dout;
assign storage_cdc_sink_ready = storage_cdc_asyncfifo_writable;
assign storage_cdc_asyncfifo_we = storage_cdc_sink_valid;
assign storage_cdc_fifo_in_first = storage_cdc_sink_first;
assign storage_cdc_fifo_in_last = storage_cdc_sink_last;
assign storage_cdc_fifo_in_payload_data = storage_cdc_sink_payload_data;
assign storage_cdc_source_valid = storage_cdc_asyncfifo_readable;
assign storage_cdc_source_first = storage_cdc_fifo_out_first;
assign storage_cdc_source_last = storage_cdc_fifo_out_last;
assign storage_cdc_source_payload_data = storage_cdc_fifo_out_payload_data;
assign storage_cdc_asyncfifo_re = storage_cdc_source_ready;
assign storage_cdc_graycounter0_ce = (storage_cdc_asyncfifo_writable & storage_cdc_asyncfifo_we);
assign storage_cdc_graycounter1_ce = (storage_cdc_asyncfifo_readable & storage_cdc_asyncfifo_re);
assign storage_cdc_asyncfifo_writable = (((storage_cdc_graycounter0_q[2] == storage_cdc_consume_wdomain[2]) | (storage_cdc_graycounter0_q[1] == storage_cdc_consume_wdomain[1])) | (storage_cdc_graycounter0_q[0] != storage_cdc_consume_wdomain[0]));
assign storage_cdc_asyncfifo_readable = (storage_cdc_graycounter1_q != storage_cdc_produce_rdomain);
assign storage_cdc_wrport_adr = storage_cdc_graycounter0_q_binary[1:0];
assign storage_cdc_wrport_dat_w = storage_cdc_asyncfifo_din;
assign storage_cdc_wrport_we = storage_cdc_graycounter0_ce;
assign storage_cdc_rdport_adr = storage_cdc_graycounter1_q_next_binary[1:0];
assign storage_cdc_asyncfifo_dout = storage_cdc_rdport_dat_r;
always @(*) begin
	storage_cdc_graycounter0_q_next_binary <= 3'd0;
	if (storage_cdc_graycounter0_ce) begin
		storage_cdc_graycounter0_q_next_binary <= (storage_cdc_graycounter0_q_binary + 1'd1);
	end else begin
		storage_cdc_graycounter0_q_next_binary <= storage_cdc_graycounter0_q_binary;
	end
end
assign storage_cdc_graycounter0_q_next = (storage_cdc_graycounter0_q_next_binary ^ storage_cdc_graycounter0_q_next_binary[2:1]);
always @(*) begin
	storage_cdc_graycounter1_q_next_binary <= 3'd0;
	if (storage_cdc_graycounter1_ce) begin
		storage_cdc_graycounter1_q_next_binary <= (storage_cdc_graycounter1_q_binary + 1'd1);
	end else begin
		storage_cdc_graycounter1_q_next_binary <= storage_cdc_graycounter1_q_binary;
	end
end
assign storage_cdc_graycounter1_q_next = (storage_cdc_graycounter1_q_next_binary ^ storage_cdc_graycounter1_q_next_binary[2:1]);
assign storage_done1 = (storage_count == 1'd0);
always @(*) begin
	storage_wait <= 1'd0;
	storage_cdc_sink_valid <= 1'd0;
	storage_cdc_sink_first <= 1'd0;
	litescopeanalyzer_next_state <= 2'd0;
	storage_cdc_sink_last <= 1'd0;
	storage_sink_sink_ready <= 1'd0;
	storage_done0 <= 1'd0;
	storage_cdc_sink_payload_data <= 2'd0;
	storage_mem_sink_valid <= 1'd0;
	storage_mem_sink_first <= 1'd0;
	storage_mem_sink_last <= 1'd0;
	storage_mem_sink_payload_data <= 2'd0;
	storage_mem_source_ready <= 1'd0;
	litescopeanalyzer_next_state <= litescopeanalyzer_state;
	case (litescopeanalyzer_state)
		1'd1: begin
			storage_sink_sink_ready <= 1'd1;
			storage_wait <= 1'd1;
			storage_mem_source_ready <= 1'd1;
			if (storage_done1) begin
				litescopeanalyzer_next_state <= 2'd2;
			end
		end
		2'd2: begin
			storage_mem_sink_valid <= storage_sink_sink_valid;
			storage_sink_sink_ready <= storage_mem_sink_ready;
			storage_mem_sink_first <= storage_sink_sink_first;
			storage_mem_sink_last <= storage_sink_sink_last;
			storage_mem_sink_payload_data <= storage_sink_sink_payload_data;
			if ((storage_sink_sink_valid & storage_sink_sink_payload_hit)) begin
				litescopeanalyzer_next_state <= 2'd3;
			end
			storage_mem_source_ready <= (storage_mem_level1 >= storage_offset_storage);
		end
		2'd3: begin
			storage_mem_sink_valid <= storage_sink_sink_valid;
			storage_sink_sink_ready <= storage_mem_sink_ready;
			storage_mem_sink_first <= storage_sink_sink_first;
			storage_mem_sink_last <= storage_sink_sink_last;
			storage_mem_sink_payload_data <= storage_sink_sink_payload_data;
			if ((storage_mem_level1 >= storage_length_storage)) begin
				litescopeanalyzer_next_state <= 1'd0;
			end
		end
		default: begin
			storage_done0 <= 1'd1;
			if ((storage_enable & (~storage_enable_d))) begin
				litescopeanalyzer_next_state <= 1'd1;
			end
			storage_sink_sink_ready <= 1'd1;
			storage_cdc_sink_valid <= storage_mem_source_valid;
			storage_mem_source_ready <= storage_cdc_sink_ready;
			storage_cdc_sink_first <= storage_mem_source_first;
			storage_cdc_sink_last <= storage_mem_source_last;
			storage_cdc_sink_payload_data <= storage_mem_source_payload_data;
		end
	endcase
end
assign trigger_sink_sink_valid = mux_source_valid;
assign mux_source_ready = trigger_sink_sink_ready;
assign trigger_sink_sink_first = mux_source_first;
assign trigger_sink_sink_last = mux_source_last;
assign trigger_sink_sink_payload_data = mux_source_payload_data;
assign trigger_sink_sink_payload_hit = mux_source_payload_hit;
assign subsampler_sink_valid = trigger_source_source_valid;
assign trigger_source_source_ready = subsampler_sink_ready;
assign subsampler_sink_first = trigger_source_source_first;
assign subsampler_sink_last = trigger_source_source_last;
assign subsampler_sink_payload_data = trigger_source_source_payload_data;
assign subsampler_sink_payload_hit = trigger_source_source_payload_hit;
assign storage_sink_sink_valid = subsampler_source_valid;
assign subsampler_source_ready = storage_sink_sink_ready;
assign storage_sink_sink_first = subsampler_source_first;
assign storage_sink_sink_last = subsampler_source_last;
assign storage_sink_sink_payload_data = subsampler_source_payload_data;
assign storage_sink_sink_payload_hit = subsampler_source_payload_hit;
assign shared_adr = array_muxed0;
assign shared_dat_w = array_muxed1;
assign shared_sel = array_muxed2;
assign shared_cyc = array_muxed3;
assign shared_stb = array_muxed4;
assign shared_we = array_muxed5;
assign shared_cti = array_muxed6;
assign shared_bte = array_muxed7;
assign uartwishbonebridge_wishbone_dat_r = shared_dat_r;
assign uartwishbonebridge_wishbone_ack = (shared_ack & (grant == 1'd0));
assign uartwishbonebridge_wishbone_err = (shared_err & (grant == 1'd0));
assign request = {uartwishbonebridge_wishbone_cyc};
assign grant = 1'd0;
always @(*) begin
	slave_sel <= 2'd0;
	slave_sel[0] <= (shared_adr[28:26] == 3'd6);
	slave_sel[1] <= (shared_adr[28:26] == 2'd2);
end
assign usbtestsoc_usbtestsoc_bus_wishbone_adr = shared_adr;
assign usbtestsoc_usbtestsoc_bus_wishbone_dat_w = shared_dat_w;
assign usbtestsoc_usbtestsoc_bus_wishbone_sel = shared_sel;
assign usbtestsoc_usbtestsoc_bus_wishbone_stb = shared_stb;
assign usbtestsoc_usbtestsoc_bus_wishbone_we = shared_we;
assign usbtestsoc_usbtestsoc_bus_wishbone_cti = shared_cti;
assign usbtestsoc_usbtestsoc_bus_wishbone_bte = shared_bte;
assign usbtestsoc_spiflash_bus_adr = shared_adr;
assign usbtestsoc_spiflash_bus_dat_w = shared_dat_w;
assign usbtestsoc_spiflash_bus_sel = shared_sel;
assign usbtestsoc_spiflash_bus_stb = shared_stb;
assign usbtestsoc_spiflash_bus_we = shared_we;
assign usbtestsoc_spiflash_bus_cti = shared_cti;
assign usbtestsoc_spiflash_bus_bte = shared_bte;
assign usbtestsoc_usbtestsoc_bus_wishbone_cyc = (shared_cyc & slave_sel[0]);
assign usbtestsoc_spiflash_bus_cyc = (shared_cyc & slave_sel[1]);
assign shared_err = (usbtestsoc_usbtestsoc_bus_wishbone_err | usbtestsoc_spiflash_bus_err);
assign wait_1 = ((shared_stb & shared_cyc) & (~shared_ack));
always @(*) begin
	shared_dat_r <= 32'd0;
	shared_ack <= 1'd0;
	error <= 1'd0;
	shared_ack <= (usbtestsoc_usbtestsoc_bus_wishbone_ack | usbtestsoc_spiflash_bus_ack);
	shared_dat_r <= (({32{slave_sel_r[0]}} & usbtestsoc_usbtestsoc_bus_wishbone_dat_r) | ({32{slave_sel_r[1]}} & usbtestsoc_spiflash_bus_dat_r));
	if (done) begin
		shared_dat_r <= 32'd4294967295;
		shared_ack <= 1'd1;
		error <= 1'd1;
	end
end
assign done = (count == 1'd0);
assign csrbank0_sel = (interface0_bank_bus_adr[13:9] == 4'd10);
assign csrbank0_mux_value0_r = interface0_bank_bus_dat_w[0];
assign csrbank0_mux_value0_re = ((csrbank0_sel & interface0_bank_bus_we) & (interface0_bank_bus_adr[4:0] == 1'd0));
assign csrbank0_trigger_enable0_r = interface0_bank_bus_dat_w[0];
assign csrbank0_trigger_enable0_re = ((csrbank0_sel & interface0_bank_bus_we) & (interface0_bank_bus_adr[4:0] == 1'd1));
assign csrbank0_trigger_done_r = interface0_bank_bus_dat_w[0];
assign csrbank0_trigger_done_re = ((csrbank0_sel & interface0_bank_bus_we) & (interface0_bank_bus_adr[4:0] == 2'd2));
assign trigger_mem_write_r = interface0_bank_bus_dat_w[0];
assign trigger_mem_write_re = ((csrbank0_sel & interface0_bank_bus_we) & (interface0_bank_bus_adr[4:0] == 2'd3));
assign csrbank0_trigger_mem_mask0_r = interface0_bank_bus_dat_w[1:0];
assign csrbank0_trigger_mem_mask0_re = ((csrbank0_sel & interface0_bank_bus_we) & (interface0_bank_bus_adr[4:0] == 3'd4));
assign csrbank0_trigger_mem_value0_r = interface0_bank_bus_dat_w[1:0];
assign csrbank0_trigger_mem_value0_re = ((csrbank0_sel & interface0_bank_bus_we) & (interface0_bank_bus_adr[4:0] == 3'd5));
assign csrbank0_trigger_mem_full_r = interface0_bank_bus_dat_w[0];
assign csrbank0_trigger_mem_full_re = ((csrbank0_sel & interface0_bank_bus_we) & (interface0_bank_bus_adr[4:0] == 3'd6));
assign csrbank0_subsampler_value1_r = interface0_bank_bus_dat_w[7:0];
assign csrbank0_subsampler_value1_re = ((csrbank0_sel & interface0_bank_bus_we) & (interface0_bank_bus_adr[4:0] == 3'd7));
assign csrbank0_subsampler_value0_r = interface0_bank_bus_dat_w[7:0];
assign csrbank0_subsampler_value0_re = ((csrbank0_sel & interface0_bank_bus_we) & (interface0_bank_bus_adr[4:0] == 4'd8));
assign csrbank0_storage_enable0_r = interface0_bank_bus_dat_w[0];
assign csrbank0_storage_enable0_re = ((csrbank0_sel & interface0_bank_bus_we) & (interface0_bank_bus_adr[4:0] == 4'd9));
assign csrbank0_storage_done_r = interface0_bank_bus_dat_w[0];
assign csrbank0_storage_done_re = ((csrbank0_sel & interface0_bank_bus_we) & (interface0_bank_bus_adr[4:0] == 4'd10));
assign csrbank0_storage_length1_r = interface0_bank_bus_dat_w[0];
assign csrbank0_storage_length1_re = ((csrbank0_sel & interface0_bank_bus_we) & (interface0_bank_bus_adr[4:0] == 4'd11));
assign csrbank0_storage_length0_r = interface0_bank_bus_dat_w[7:0];
assign csrbank0_storage_length0_re = ((csrbank0_sel & interface0_bank_bus_we) & (interface0_bank_bus_adr[4:0] == 4'd12));
assign csrbank0_storage_offset1_r = interface0_bank_bus_dat_w[0];
assign csrbank0_storage_offset1_re = ((csrbank0_sel & interface0_bank_bus_we) & (interface0_bank_bus_adr[4:0] == 4'd13));
assign csrbank0_storage_offset0_r = interface0_bank_bus_dat_w[7:0];
assign csrbank0_storage_offset0_re = ((csrbank0_sel & interface0_bank_bus_we) & (interface0_bank_bus_adr[4:0] == 4'd14));
assign csrbank0_storage_mem_valid_r = interface0_bank_bus_dat_w[0];
assign csrbank0_storage_mem_valid_re = ((csrbank0_sel & interface0_bank_bus_we) & (interface0_bank_bus_adr[4:0] == 4'd15));
assign storage_mem_ready_r = interface0_bank_bus_dat_w[0];
assign storage_mem_ready_re = ((csrbank0_sel & interface0_bank_bus_we) & (interface0_bank_bus_adr[4:0] == 5'd16));
assign csrbank0_storage_mem_data_r = interface0_bank_bus_dat_w[1:0];
assign csrbank0_storage_mem_data_re = ((csrbank0_sel & interface0_bank_bus_we) & (interface0_bank_bus_adr[4:0] == 5'd17));
assign mux_value_storage = mux_value_storage_full;
assign csrbank0_mux_value0_w = mux_value_storage_full;
assign trigger_enable_storage = trigger_enable_storage_full;
assign csrbank0_trigger_enable0_w = trigger_enable_storage_full;
assign csrbank0_trigger_done_w = trigger_done_status;
assign trigger_mem_mask_storage = trigger_mem_mask_storage_full[1:0];
assign csrbank0_trigger_mem_mask0_w = trigger_mem_mask_storage_full[1:0];
assign trigger_mem_value_storage = trigger_mem_value_storage_full[1:0];
assign csrbank0_trigger_mem_value0_w = trigger_mem_value_storage_full[1:0];
assign csrbank0_trigger_mem_full_w = trigger_mem_full_status;
assign subsampler_value_storage = subsampler_value_storage_full[15:0];
assign csrbank0_subsampler_value1_w = subsampler_value_storage_full[15:8];
assign csrbank0_subsampler_value0_w = subsampler_value_storage_full[7:0];
assign storage_enable_storage = storage_enable_storage_full;
assign csrbank0_storage_enable0_w = storage_enable_storage_full;
assign csrbank0_storage_done_w = storage_done_status;
assign storage_length_storage = storage_length_storage_full[8:0];
assign csrbank0_storage_length1_w = storage_length_storage_full[8];
assign csrbank0_storage_length0_w = storage_length_storage_full[7:0];
assign storage_offset_storage = storage_offset_storage_full[8:0];
assign csrbank0_storage_offset1_w = storage_offset_storage_full[8];
assign csrbank0_storage_offset0_w = storage_offset_storage_full[7:0];
assign csrbank0_storage_mem_valid_w = storage_mem_valid_status;
assign csrbank0_storage_mem_data_w = storage_mem_data_status[1:0];
assign csrbank1_sel = (interface1_bank_bus_adr[13:9] == 1'd0);
assign usbtestsoc_usbtestsoc_reset_reset_r = interface1_bank_bus_dat_w[0];
assign usbtestsoc_usbtestsoc_reset_reset_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 1'd0));
assign csrbank1_scratch3_r = interface1_bank_bus_dat_w[7:0];
assign csrbank1_scratch3_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 1'd1));
assign csrbank1_scratch2_r = interface1_bank_bus_dat_w[7:0];
assign csrbank1_scratch2_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 2'd2));
assign csrbank1_scratch1_r = interface1_bank_bus_dat_w[7:0];
assign csrbank1_scratch1_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 2'd3));
assign csrbank1_scratch0_r = interface1_bank_bus_dat_w[7:0];
assign csrbank1_scratch0_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 3'd4));
assign csrbank1_bus_errors3_r = interface1_bank_bus_dat_w[7:0];
assign csrbank1_bus_errors3_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 3'd5));
assign csrbank1_bus_errors2_r = interface1_bank_bus_dat_w[7:0];
assign csrbank1_bus_errors2_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 3'd6));
assign csrbank1_bus_errors1_r = interface1_bank_bus_dat_w[7:0];
assign csrbank1_bus_errors1_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 3'd7));
assign csrbank1_bus_errors0_r = interface1_bank_bus_dat_w[7:0];
assign csrbank1_bus_errors0_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 4'd8));
assign usbtestsoc_usbtestsoc_storage = usbtestsoc_usbtestsoc_storage_full[31:0];
assign csrbank1_scratch3_w = usbtestsoc_usbtestsoc_storage_full[31:24];
assign csrbank1_scratch2_w = usbtestsoc_usbtestsoc_storage_full[23:16];
assign csrbank1_scratch1_w = usbtestsoc_usbtestsoc_storage_full[15:8];
assign csrbank1_scratch0_w = usbtestsoc_usbtestsoc_storage_full[7:0];
assign csrbank1_bus_errors3_w = usbtestsoc_usbtestsoc_bus_errors_status[31:24];
assign csrbank1_bus_errors2_w = usbtestsoc_usbtestsoc_bus_errors_status[23:16];
assign csrbank1_bus_errors1_w = usbtestsoc_usbtestsoc_bus_errors_status[15:8];
assign csrbank1_bus_errors0_w = usbtestsoc_usbtestsoc_bus_errors_status[7:0];
assign sel = (sram_bus_adr[13:9] == 3'd4);
always @(*) begin
	sram_bus_dat_r <= 8'd0;
	if (sel_r) begin
		sram_bus_dat_r <= dat_r;
	end
end
assign adr = sram_bus_adr[3:0];
assign csrbank2_sel = (interface2_bank_bus_adr[13:9] == 4'd9);
assign csrbank2_git_commit19_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit19_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 1'd0));
assign csrbank2_git_commit18_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit18_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 1'd1));
assign csrbank2_git_commit17_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit17_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 2'd2));
assign csrbank2_git_commit16_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit16_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 2'd3));
assign csrbank2_git_commit15_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit15_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 3'd4));
assign csrbank2_git_commit14_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit14_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 3'd5));
assign csrbank2_git_commit13_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit13_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 3'd6));
assign csrbank2_git_commit12_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit12_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 3'd7));
assign csrbank2_git_commit11_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit11_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 4'd8));
assign csrbank2_git_commit10_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit10_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 4'd9));
assign csrbank2_git_commit9_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit9_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 4'd10));
assign csrbank2_git_commit8_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit8_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 4'd11));
assign csrbank2_git_commit7_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit7_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 4'd12));
assign csrbank2_git_commit6_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit6_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 4'd13));
assign csrbank2_git_commit5_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit5_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 4'd14));
assign csrbank2_git_commit4_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit4_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 4'd15));
assign csrbank2_git_commit3_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit3_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd16));
assign csrbank2_git_commit2_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit2_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd17));
assign csrbank2_git_commit1_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit1_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd18));
assign csrbank2_git_commit0_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit0_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd19));
assign csrbank2_platform_platform7_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_platform7_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd20));
assign csrbank2_platform_platform6_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_platform6_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd21));
assign csrbank2_platform_platform5_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_platform5_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd22));
assign csrbank2_platform_platform4_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_platform4_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd23));
assign csrbank2_platform_platform3_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_platform3_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd24));
assign csrbank2_platform_platform2_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_platform2_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd25));
assign csrbank2_platform_platform1_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_platform1_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd26));
assign csrbank2_platform_platform0_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_platform0_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd27));
assign csrbank2_platform_target7_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_target7_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd28));
assign csrbank2_platform_target6_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_target6_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd29));
assign csrbank2_platform_target5_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_target5_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd30));
assign csrbank2_platform_target4_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_target4_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd31));
assign csrbank2_platform_target3_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_target3_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 6'd32));
assign csrbank2_platform_target2_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_target2_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 6'd33));
assign csrbank2_platform_target1_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_target1_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 6'd34));
assign csrbank2_platform_target0_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_target0_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 6'd35));
assign csrbank2_git_commit19_w = usbtestsoc_status[159:152];
assign csrbank2_git_commit18_w = usbtestsoc_status[151:144];
assign csrbank2_git_commit17_w = usbtestsoc_status[143:136];
assign csrbank2_git_commit16_w = usbtestsoc_status[135:128];
assign csrbank2_git_commit15_w = usbtestsoc_status[127:120];
assign csrbank2_git_commit14_w = usbtestsoc_status[119:112];
assign csrbank2_git_commit13_w = usbtestsoc_status[111:104];
assign csrbank2_git_commit12_w = usbtestsoc_status[103:96];
assign csrbank2_git_commit11_w = usbtestsoc_status[95:88];
assign csrbank2_git_commit10_w = usbtestsoc_status[87:80];
assign csrbank2_git_commit9_w = usbtestsoc_status[79:72];
assign csrbank2_git_commit8_w = usbtestsoc_status[71:64];
assign csrbank2_git_commit7_w = usbtestsoc_status[63:56];
assign csrbank2_git_commit6_w = usbtestsoc_status[55:48];
assign csrbank2_git_commit5_w = usbtestsoc_status[47:40];
assign csrbank2_git_commit4_w = usbtestsoc_status[39:32];
assign csrbank2_git_commit3_w = usbtestsoc_status[31:24];
assign csrbank2_git_commit2_w = usbtestsoc_status[23:16];
assign csrbank2_git_commit1_w = usbtestsoc_status[15:8];
assign csrbank2_git_commit0_w = usbtestsoc_status[7:0];
assign csrbank2_platform_platform7_w = usbtestsoc_platform_status[63:56];
assign csrbank2_platform_platform6_w = usbtestsoc_platform_status[55:48];
assign csrbank2_platform_platform5_w = usbtestsoc_platform_status[47:40];
assign csrbank2_platform_platform4_w = usbtestsoc_platform_status[39:32];
assign csrbank2_platform_platform3_w = usbtestsoc_platform_status[31:24];
assign csrbank2_platform_platform2_w = usbtestsoc_platform_status[23:16];
assign csrbank2_platform_platform1_w = usbtestsoc_platform_status[15:8];
assign csrbank2_platform_platform0_w = usbtestsoc_platform_status[7:0];
assign csrbank2_platform_target7_w = usbtestsoc_target_status[63:56];
assign csrbank2_platform_target6_w = usbtestsoc_target_status[55:48];
assign csrbank2_platform_target5_w = usbtestsoc_target_status[47:40];
assign csrbank2_platform_target4_w = usbtestsoc_target_status[39:32];
assign csrbank2_platform_target3_w = usbtestsoc_target_status[31:24];
assign csrbank2_platform_target2_w = usbtestsoc_target_status[23:16];
assign csrbank2_platform_target1_w = usbtestsoc_target_status[15:8];
assign csrbank2_platform_target0_w = usbtestsoc_target_status[7:0];
assign csrbank3_sel = (interface3_bank_bus_adr[13:9] == 4'd11);
assign csrbank3_in_r = interface3_bank_bus_dat_w[7:0];
assign csrbank3_in_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[0] == 1'd0));
assign csrbank3_out0_r = interface3_bank_bus_dat_w[7:0];
assign csrbank3_out0_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[0] == 1'd1));
assign csrbank3_in_w = io_status[7:0];
assign io_storage = io_storage_full[7:0];
assign csrbank3_out0_w = io_storage_full[7:0];
assign csrbank4_sel = (interface4_bank_bus_adr[13:9] == 4'd8);
assign csrbank4_bitbang0_r = interface4_bank_bus_dat_w[3:0];
assign csrbank4_bitbang0_re = ((csrbank4_sel & interface4_bank_bus_we) & (interface4_bank_bus_adr[1:0] == 1'd0));
assign csrbank4_miso_r = interface4_bank_bus_dat_w[0];
assign csrbank4_miso_re = ((csrbank4_sel & interface4_bank_bus_we) & (interface4_bank_bus_adr[1:0] == 1'd1));
assign csrbank4_bitbang_en0_r = interface4_bank_bus_dat_w[0];
assign csrbank4_bitbang_en0_re = ((csrbank4_sel & interface4_bank_bus_we) & (interface4_bank_bus_adr[1:0] == 2'd2));
assign usbtestsoc_spiflash_bitbang_storage = usbtestsoc_spiflash_bitbang_storage_full[3:0];
assign csrbank4_bitbang0_w = usbtestsoc_spiflash_bitbang_storage_full[3:0];
assign csrbank4_miso_w = usbtestsoc_spiflash_miso_status;
assign usbtestsoc_spiflash_bitbang_en_storage = usbtestsoc_spiflash_bitbang_en_storage_full;
assign csrbank4_bitbang_en0_w = usbtestsoc_spiflash_bitbang_en_storage_full;
assign csrbank5_sel = (interface5_bank_bus_adr[13:9] == 3'd5);
assign csrbank5_load3_r = interface5_bank_bus_dat_w[7:0];
assign csrbank5_load3_re = ((csrbank5_sel & interface5_bank_bus_we) & (interface5_bank_bus_adr[4:0] == 1'd0));
assign csrbank5_load2_r = interface5_bank_bus_dat_w[7:0];
assign csrbank5_load2_re = ((csrbank5_sel & interface5_bank_bus_we) & (interface5_bank_bus_adr[4:0] == 1'd1));
assign csrbank5_load1_r = interface5_bank_bus_dat_w[7:0];
assign csrbank5_load1_re = ((csrbank5_sel & interface5_bank_bus_we) & (interface5_bank_bus_adr[4:0] == 2'd2));
assign csrbank5_load0_r = interface5_bank_bus_dat_w[7:0];
assign csrbank5_load0_re = ((csrbank5_sel & interface5_bank_bus_we) & (interface5_bank_bus_adr[4:0] == 2'd3));
assign csrbank5_reload3_r = interface5_bank_bus_dat_w[7:0];
assign csrbank5_reload3_re = ((csrbank5_sel & interface5_bank_bus_we) & (interface5_bank_bus_adr[4:0] == 3'd4));
assign csrbank5_reload2_r = interface5_bank_bus_dat_w[7:0];
assign csrbank5_reload2_re = ((csrbank5_sel & interface5_bank_bus_we) & (interface5_bank_bus_adr[4:0] == 3'd5));
assign csrbank5_reload1_r = interface5_bank_bus_dat_w[7:0];
assign csrbank5_reload1_re = ((csrbank5_sel & interface5_bank_bus_we) & (interface5_bank_bus_adr[4:0] == 3'd6));
assign csrbank5_reload0_r = interface5_bank_bus_dat_w[7:0];
assign csrbank5_reload0_re = ((csrbank5_sel & interface5_bank_bus_we) & (interface5_bank_bus_adr[4:0] == 3'd7));
assign csrbank5_en0_r = interface5_bank_bus_dat_w[0];
assign csrbank5_en0_re = ((csrbank5_sel & interface5_bank_bus_we) & (interface5_bank_bus_adr[4:0] == 4'd8));
assign usbtestsoc_usbtestsoc_update_value_r = interface5_bank_bus_dat_w[0];
assign usbtestsoc_usbtestsoc_update_value_re = ((csrbank5_sel & interface5_bank_bus_we) & (interface5_bank_bus_adr[4:0] == 4'd9));
assign csrbank5_value3_r = interface5_bank_bus_dat_w[7:0];
assign csrbank5_value3_re = ((csrbank5_sel & interface5_bank_bus_we) & (interface5_bank_bus_adr[4:0] == 4'd10));
assign csrbank5_value2_r = interface5_bank_bus_dat_w[7:0];
assign csrbank5_value2_re = ((csrbank5_sel & interface5_bank_bus_we) & (interface5_bank_bus_adr[4:0] == 4'd11));
assign csrbank5_value1_r = interface5_bank_bus_dat_w[7:0];
assign csrbank5_value1_re = ((csrbank5_sel & interface5_bank_bus_we) & (interface5_bank_bus_adr[4:0] == 4'd12));
assign csrbank5_value0_r = interface5_bank_bus_dat_w[7:0];
assign csrbank5_value0_re = ((csrbank5_sel & interface5_bank_bus_we) & (interface5_bank_bus_adr[4:0] == 4'd13));
assign usbtestsoc_usbtestsoc_eventmanager_status_r = interface5_bank_bus_dat_w[0];
assign usbtestsoc_usbtestsoc_eventmanager_status_re = ((csrbank5_sel & interface5_bank_bus_we) & (interface5_bank_bus_adr[4:0] == 4'd14));
assign usbtestsoc_usbtestsoc_eventmanager_pending_r = interface5_bank_bus_dat_w[0];
assign usbtestsoc_usbtestsoc_eventmanager_pending_re = ((csrbank5_sel & interface5_bank_bus_we) & (interface5_bank_bus_adr[4:0] == 4'd15));
assign csrbank5_ev_enable0_r = interface5_bank_bus_dat_w[0];
assign csrbank5_ev_enable0_re = ((csrbank5_sel & interface5_bank_bus_we) & (interface5_bank_bus_adr[4:0] == 5'd16));
assign usbtestsoc_usbtestsoc_load_storage = usbtestsoc_usbtestsoc_load_storage_full[31:0];
assign csrbank5_load3_w = usbtestsoc_usbtestsoc_load_storage_full[31:24];
assign csrbank5_load2_w = usbtestsoc_usbtestsoc_load_storage_full[23:16];
assign csrbank5_load1_w = usbtestsoc_usbtestsoc_load_storage_full[15:8];
assign csrbank5_load0_w = usbtestsoc_usbtestsoc_load_storage_full[7:0];
assign usbtestsoc_usbtestsoc_reload_storage = usbtestsoc_usbtestsoc_reload_storage_full[31:0];
assign csrbank5_reload3_w = usbtestsoc_usbtestsoc_reload_storage_full[31:24];
assign csrbank5_reload2_w = usbtestsoc_usbtestsoc_reload_storage_full[23:16];
assign csrbank5_reload1_w = usbtestsoc_usbtestsoc_reload_storage_full[15:8];
assign csrbank5_reload0_w = usbtestsoc_usbtestsoc_reload_storage_full[7:0];
assign usbtestsoc_usbtestsoc_en_storage = usbtestsoc_usbtestsoc_en_storage_full;
assign csrbank5_en0_w = usbtestsoc_usbtestsoc_en_storage_full;
assign csrbank5_value3_w = usbtestsoc_usbtestsoc_value_status[31:24];
assign csrbank5_value2_w = usbtestsoc_usbtestsoc_value_status[23:16];
assign csrbank5_value1_w = usbtestsoc_usbtestsoc_value_status[15:8];
assign csrbank5_value0_w = usbtestsoc_usbtestsoc_value_status[7:0];
assign usbtestsoc_usbtestsoc_eventmanager_storage = usbtestsoc_usbtestsoc_eventmanager_storage_full;
assign csrbank5_ev_enable0_w = usbtestsoc_usbtestsoc_eventmanager_storage_full;
assign interface0_bank_bus_adr = usbtestsoc_usbtestsoc_adr;
assign interface1_bank_bus_adr = usbtestsoc_usbtestsoc_adr;
assign interface2_bank_bus_adr = usbtestsoc_usbtestsoc_adr;
assign interface3_bank_bus_adr = usbtestsoc_usbtestsoc_adr;
assign interface4_bank_bus_adr = usbtestsoc_usbtestsoc_adr;
assign interface5_bank_bus_adr = usbtestsoc_usbtestsoc_adr;
assign sram_bus_adr = usbtestsoc_usbtestsoc_adr;
assign interface0_bank_bus_we = usbtestsoc_usbtestsoc_we;
assign interface1_bank_bus_we = usbtestsoc_usbtestsoc_we;
assign interface2_bank_bus_we = usbtestsoc_usbtestsoc_we;
assign interface3_bank_bus_we = usbtestsoc_usbtestsoc_we;
assign interface4_bank_bus_we = usbtestsoc_usbtestsoc_we;
assign interface5_bank_bus_we = usbtestsoc_usbtestsoc_we;
assign sram_bus_we = usbtestsoc_usbtestsoc_we;
assign interface0_bank_bus_dat_w = usbtestsoc_usbtestsoc_dat_w;
assign interface1_bank_bus_dat_w = usbtestsoc_usbtestsoc_dat_w;
assign interface2_bank_bus_dat_w = usbtestsoc_usbtestsoc_dat_w;
assign interface3_bank_bus_dat_w = usbtestsoc_usbtestsoc_dat_w;
assign interface4_bank_bus_dat_w = usbtestsoc_usbtestsoc_dat_w;
assign interface5_bank_bus_dat_w = usbtestsoc_usbtestsoc_dat_w;
assign sram_bus_dat_w = usbtestsoc_usbtestsoc_dat_w;
assign usbtestsoc_usbtestsoc_dat_r = ((((((interface0_bank_bus_dat_r | interface1_bank_bus_dat_r) | interface2_bank_bus_dat_r) | interface3_bank_bus_dat_r) | interface4_bank_bus_dat_r) | interface5_bank_bus_dat_r) | sram_bus_dat_r);
assign slice_proxy0 = 8'd128;
assign slice_proxy1 = {(4'd15 ^ usbdevice_tx_pid), usbdevice_tx_pid};
always @(*) begin
	t_array_muxed <= 1'd0;
	case (usbdevice_current_endp)
		1'd0: begin
			t_array_muxed <= usbdevice0;
		end
		1'd1: begin
			t_array_muxed <= usbdevice1;
		end
		2'd2: begin
			t_array_muxed <= usbdevice2;
		end
		2'd3: begin
			t_array_muxed <= usbdevice3;
		end
		3'd4: begin
			t_array_muxed <= usbdevice4;
		end
		3'd5: begin
			t_array_muxed <= usbdevice5;
		end
		3'd6: begin
			t_array_muxed <= usbdevice6;
		end
		3'd7: begin
			t_array_muxed <= usbdevice7;
		end
		4'd8: begin
			t_array_muxed <= usbdevice8;
		end
		4'd9: begin
			t_array_muxed <= usbdevice9;
		end
		4'd10: begin
			t_array_muxed <= usbdevice10;
		end
		4'd11: begin
			t_array_muxed <= usbdevice11;
		end
		4'd12: begin
			t_array_muxed <= usbdevice12;
		end
		4'd13: begin
			t_array_muxed <= usbdevice13;
		end
		4'd14: begin
			t_array_muxed <= usbdevice14;
		end
		default: begin
			t_array_muxed <= usbdevice15;
		end
	endcase
end
always @(*) begin
	basiclowerer_array_muxed <= 1'd0;
	case (usbdevice_current_endp)
		1'd0: begin
			basiclowerer_array_muxed <= usbdevice32;
		end
		1'd1: begin
			basiclowerer_array_muxed <= usbdevice33;
		end
		2'd2: begin
			basiclowerer_array_muxed <= usbdevice34;
		end
		2'd3: begin
			basiclowerer_array_muxed <= usbdevice35;
		end
		3'd4: begin
			basiclowerer_array_muxed <= usbdevice36;
		end
		3'd5: begin
			basiclowerer_array_muxed <= usbdevice37;
		end
		3'd6: begin
			basiclowerer_array_muxed <= usbdevice38;
		end
		3'd7: begin
			basiclowerer_array_muxed <= usbdevice39;
		end
		4'd8: begin
			basiclowerer_array_muxed <= usbdevice40;
		end
		4'd9: begin
			basiclowerer_array_muxed <= usbdevice41;
		end
		4'd10: begin
			basiclowerer_array_muxed <= usbdevice42;
		end
		4'd11: begin
			basiclowerer_array_muxed <= usbdevice43;
		end
		4'd12: begin
			basiclowerer_array_muxed <= usbdevice44;
		end
		4'd13: begin
			basiclowerer_array_muxed <= usbdevice45;
		end
		4'd14: begin
			basiclowerer_array_muxed <= usbdevice46;
		end
		default: begin
			basiclowerer_array_muxed <= usbdevice47;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed <= 1'd0;
	case (usbdevice_current_endp)
		1'd0: begin
			rhs_array_muxed <= usbdevice16;
		end
		1'd1: begin
			rhs_array_muxed <= usbdevice17;
		end
		2'd2: begin
			rhs_array_muxed <= usbdevice18;
		end
		2'd3: begin
			rhs_array_muxed <= usbdevice19;
		end
		3'd4: begin
			rhs_array_muxed <= usbdevice20;
		end
		3'd5: begin
			rhs_array_muxed <= usbdevice21;
		end
		3'd6: begin
			rhs_array_muxed <= usbdevice22;
		end
		3'd7: begin
			rhs_array_muxed <= usbdevice23;
		end
		4'd8: begin
			rhs_array_muxed <= usbdevice24;
		end
		4'd9: begin
			rhs_array_muxed <= usbdevice25;
		end
		4'd10: begin
			rhs_array_muxed <= usbdevice26;
		end
		4'd11: begin
			rhs_array_muxed <= usbdevice27;
		end
		4'd12: begin
			rhs_array_muxed <= usbdevice28;
		end
		4'd13: begin
			rhs_array_muxed <= usbdevice29;
		end
		4'd14: begin
			rhs_array_muxed <= usbdevice30;
		end
		default: begin
			rhs_array_muxed <= usbdevice31;
		end
	endcase
end
always @(*) begin
	array_muxed0 <= 30'd0;
	case (grant)
		default: begin
			array_muxed0 <= uartwishbonebridge_wishbone_adr;
		end
	endcase
end
always @(*) begin
	array_muxed1 <= 32'd0;
	case (grant)
		default: begin
			array_muxed1 <= uartwishbonebridge_wishbone_dat_w;
		end
	endcase
end
always @(*) begin
	array_muxed2 <= 4'd0;
	case (grant)
		default: begin
			array_muxed2 <= uartwishbonebridge_wishbone_sel;
		end
	endcase
end
always @(*) begin
	array_muxed3 <= 1'd0;
	case (grant)
		default: begin
			array_muxed3 <= uartwishbonebridge_wishbone_cyc;
		end
	endcase
end
always @(*) begin
	array_muxed4 <= 1'd0;
	case (grant)
		default: begin
			array_muxed4 <= uartwishbonebridge_wishbone_stb;
		end
	endcase
end
always @(*) begin
	array_muxed5 <= 1'd0;
	case (grant)
		default: begin
			array_muxed5 <= uartwishbonebridge_wishbone_we;
		end
	endcase
end
always @(*) begin
	array_muxed6 <= 3'd0;
	case (grant)
		default: begin
			array_muxed6 <= uartwishbonebridge_wishbone_cti;
		end
	endcase
end
always @(*) begin
	array_muxed7 <= 2'd0;
	case (grant)
		default: begin
			array_muxed7 <= uartwishbonebridge_wishbone_bte;
		end
	endcase
end
assign uartwishbonebridge_rx = multiregimpl0_regs1;
assign usbdevice_usbfsrx_usbp = multiregimpl1_regs2;
assign usbdevice_usbfsrx_usbn = multiregimpl2_regs2;
assign io_status = multiregimpl3_regs1;
assign mux_value = multiregimpl4_regs1;
assign trigger_enable = multiregimpl5_regs1;
assign trigger_done_status = multiregimpl6_regs1;
assign trigger_mem_produce_rdomain = multiregimpl7_regs1;
assign trigger_mem_consume_wdomain = multiregimpl8_regs1;
assign subsampler_value = multiregimpl9_regs1;
assign storage_enable = multiregimpl10_regs1;
assign storage_length = multiregimpl11_regs1;
assign storage_offset = multiregimpl12_regs1;
assign storage_done_status = multiregimpl13_regs1;
assign storage_cdc_produce_rdomain = multiregimpl14_regs1;
assign storage_cdc_consume_wdomain = multiregimpl15_regs1;

always @(posedge por_clk) begin
	if ((usbtestsoc_crg_reset_delay != 1'd0)) begin
		usbtestsoc_crg_reset_delay <= (usbtestsoc_crg_reset_delay - 1'd1);
	end
	if (por_rst) begin
		usbtestsoc_crg_reset_delay <= 12'd4095;
	end
end

always @(posedge scope_clk) begin
	trigger_enable_d <= trigger_enable;
	trigger_mem_graycounter1_q_binary <= trigger_mem_graycounter1_q_next_binary;
	trigger_mem_graycounter1_q <= trigger_mem_graycounter1_q_next;
	if (subsampler_source_ready) begin
		if (subsampler_done) begin
			subsampler_counter <= 1'd0;
		end else begin
			if (subsampler_sink_valid) begin
				subsampler_counter <= (subsampler_counter + 1'd1);
			end
		end
	end
	storage_enable_d <= storage_enable;
	if (storage_mem_syncfifo_re) begin
		storage_mem_readable <= 1'd1;
	end else begin
		if (storage_mem_re) begin
			storage_mem_readable <= 1'd0;
		end
	end
	if (((storage_mem_syncfifo_we & storage_mem_syncfifo_writable) & (~storage_mem_replace))) begin
		storage_mem_produce <= (storage_mem_produce + 1'd1);
	end
	if (storage_mem_do_read) begin
		storage_mem_consume <= (storage_mem_consume + 1'd1);
	end
	if (((storage_mem_syncfifo_we & storage_mem_syncfifo_writable) & (~storage_mem_replace))) begin
		if ((~storage_mem_do_read)) begin
			storage_mem_level0 <= (storage_mem_level0 + 1'd1);
		end
	end else begin
		if (storage_mem_do_read) begin
			storage_mem_level0 <= (storage_mem_level0 - 1'd1);
		end
	end
	storage_cdc_graycounter0_q_binary <= storage_cdc_graycounter0_q_next_binary;
	storage_cdc_graycounter0_q <= storage_cdc_graycounter0_q_next;
	if (storage_wait) begin
		if ((~storage_done1)) begin
			storage_count <= (storage_count - 1'd1);
		end
	end else begin
		storage_count <= 9'd256;
	end
	litescopeanalyzer_state <= litescopeanalyzer_next_state;
	if (scope_rst) begin
		trigger_enable_d <= 1'd0;
		trigger_mem_graycounter1_q <= 5'd0;
		trigger_mem_graycounter1_q_binary <= 5'd0;
		subsampler_counter <= 16'd0;
		storage_enable_d <= 1'd0;
		storage_mem_readable <= 1'd0;
		storage_mem_level0 <= 9'd0;
		storage_mem_produce <= 8'd0;
		storage_mem_consume <= 8'd0;
		storage_cdc_graycounter0_q <= 3'd0;
		storage_cdc_graycounter0_q_binary <= 3'd0;
		storage_count <= 9'd256;
		litescopeanalyzer_state <= 2'd0;
	end
	multiregimpl4_regs0 <= mux_value_storage;
	multiregimpl4_regs1 <= multiregimpl4_regs0;
	multiregimpl5_regs0 <= trigger_enable_storage;
	multiregimpl5_regs1 <= multiregimpl5_regs0;
	multiregimpl7_regs0 <= trigger_mem_graycounter0_q;
	multiregimpl7_regs1 <= multiregimpl7_regs0;
	multiregimpl9_regs0 <= subsampler_value_storage;
	multiregimpl9_regs1 <= multiregimpl9_regs0;
	multiregimpl10_regs0 <= storage_enable_storage;
	multiregimpl10_regs1 <= multiregimpl10_regs0;
	multiregimpl11_regs0 <= storage_length_storage;
	multiregimpl11_regs1 <= multiregimpl11_regs0;
	multiregimpl12_regs0 <= storage_offset_storage;
	multiregimpl12_regs1 <= multiregimpl12_regs0;
	multiregimpl15_regs0 <= storage_cdc_graycounter1_q;
	multiregimpl15_regs1 <= multiregimpl15_regs0;
end

always @(posedge sys_clk) begin
	if ((usbtestsoc_usbtestsoc_bus_errors != 32'd4294967295)) begin
		if (usbtestsoc_usbtestsoc_bus_error) begin
			usbtestsoc_usbtestsoc_bus_errors <= (usbtestsoc_usbtestsoc_bus_errors + 1'd1);
		end
	end
	usbtestsoc_usbtestsoc_we <= 1'd0;
	usbtestsoc_usbtestsoc_dat_w <= usbtestsoc_usbtestsoc_bus_wishbone_dat_w;
	usbtestsoc_usbtestsoc_adr <= usbtestsoc_usbtestsoc_bus_wishbone_adr;
	usbtestsoc_usbtestsoc_bus_wishbone_dat_r <= usbtestsoc_usbtestsoc_dat_r;
	if ((usbtestsoc_usbtestsoc_counter == 1'd1)) begin
		usbtestsoc_usbtestsoc_we <= usbtestsoc_usbtestsoc_bus_wishbone_we;
	end
	if ((usbtestsoc_usbtestsoc_counter == 2'd2)) begin
		usbtestsoc_usbtestsoc_bus_wishbone_ack <= 1'd1;
	end
	if ((usbtestsoc_usbtestsoc_counter == 2'd3)) begin
		usbtestsoc_usbtestsoc_bus_wishbone_ack <= 1'd0;
	end
	if ((usbtestsoc_usbtestsoc_counter != 1'd0)) begin
		usbtestsoc_usbtestsoc_counter <= (usbtestsoc_usbtestsoc_counter + 1'd1);
	end else begin
		if ((usbtestsoc_usbtestsoc_bus_wishbone_cyc & usbtestsoc_usbtestsoc_bus_wishbone_stb)) begin
			usbtestsoc_usbtestsoc_counter <= 1'd1;
		end
	end
	if (usbtestsoc_usbtestsoc_en_storage) begin
		if ((usbtestsoc_usbtestsoc_value == 1'd0)) begin
			usbtestsoc_usbtestsoc_value <= usbtestsoc_usbtestsoc_reload_storage;
		end else begin
			usbtestsoc_usbtestsoc_value <= (usbtestsoc_usbtestsoc_value - 1'd1);
		end
	end else begin
		usbtestsoc_usbtestsoc_value <= usbtestsoc_usbtestsoc_load_storage;
	end
	if (usbtestsoc_usbtestsoc_update_value_re) begin
		usbtestsoc_usbtestsoc_value_status <= usbtestsoc_usbtestsoc_value;
	end
	if (usbtestsoc_usbtestsoc_zero_clear) begin
		usbtestsoc_usbtestsoc_zero_pending <= 1'd0;
	end
	usbtestsoc_usbtestsoc_zero_old_trigger <= usbtestsoc_usbtestsoc_zero_trigger;
	if (((~usbtestsoc_usbtestsoc_zero_trigger) & usbtestsoc_usbtestsoc_zero_old_trigger)) begin
		usbtestsoc_usbtestsoc_zero_pending <= 1'd1;
	end
	if ((usbtestsoc_spiflash_i == 1'd0)) begin
		usbtestsoc_spiflash_clk1 <= 1'd1;
		usbtestsoc_spiflash_miso1 <= spiflash_miso;
	end
	if ((usbtestsoc_spiflash_i == 1'd1)) begin
		usbtestsoc_spiflash_i <= 1'd0;
		usbtestsoc_spiflash_clk1 <= 1'd0;
		usbtestsoc_spiflash_sr <= {usbtestsoc_spiflash_sr[30:0], usbtestsoc_spiflash_miso1};
	end else begin
		usbtestsoc_spiflash_i <= (usbtestsoc_spiflash_i + 1'd1);
	end
	if ((((usbtestsoc_spiflash_bus_cyc & usbtestsoc_spiflash_bus_stb) & (usbtestsoc_spiflash_i == 1'd1)) & (usbtestsoc_spiflash_counter == 1'd0))) begin
		usbtestsoc_spiflash_cs_n1 <= 1'd0;
		usbtestsoc_spiflash_sr[31:24] <= 4'd11;
	end
	if ((usbtestsoc_spiflash_counter == 5'd16)) begin
		usbtestsoc_spiflash_sr[31:8] <= {usbtestsoc_spiflash_bus_adr, {2{1'd0}}};
	end
	if ((usbtestsoc_spiflash_counter == 7'd64)) begin
	end
	if ((usbtestsoc_spiflash_counter == 8'd144)) begin
		usbtestsoc_spiflash_bus_ack <= 1'd1;
		usbtestsoc_spiflash_cs_n1 <= 1'd1;
	end
	if ((usbtestsoc_spiflash_counter == 8'd145)) begin
		usbtestsoc_spiflash_bus_ack <= 1'd0;
	end
	if ((usbtestsoc_spiflash_counter == 8'd147)) begin
	end
	if ((usbtestsoc_spiflash_counter == 8'd147)) begin
		usbtestsoc_spiflash_counter <= 1'd0;
	end else begin
		if ((usbtestsoc_spiflash_counter != 1'd0)) begin
			usbtestsoc_spiflash_counter <= (usbtestsoc_spiflash_counter + 1'd1);
		end else begin
			if (((usbtestsoc_spiflash_bus_cyc & usbtestsoc_spiflash_bus_stb) & (usbtestsoc_spiflash_i == 1'd1))) begin
				usbtestsoc_spiflash_counter <= 1'd1;
			end
		end
	end
	if (uartwishbonebridge_byte_counter_reset) begin
		uartwishbonebridge_byte_counter <= 1'd0;
	end else begin
		if (uartwishbonebridge_byte_counter_ce) begin
			uartwishbonebridge_byte_counter <= (uartwishbonebridge_byte_counter + 1'd1);
		end
	end
	if (uartwishbonebridge_word_counter_reset) begin
		uartwishbonebridge_word_counter <= 1'd0;
	end else begin
		if (uartwishbonebridge_word_counter_ce) begin
			uartwishbonebridge_word_counter <= (uartwishbonebridge_word_counter + 1'd1);
		end
	end
	if (uartwishbonebridge_cmd_ce) begin
		uartwishbonebridge_cmd <= uartwishbonebridge_source_payload_data;
	end
	if (uartwishbonebridge_length_ce) begin
		uartwishbonebridge_length <= uartwishbonebridge_source_payload_data;
	end
	if (uartwishbonebridge_address_ce) begin
		uartwishbonebridge_address <= {uartwishbonebridge_address[23:0], uartwishbonebridge_source_payload_data};
	end
	if (uartwishbonebridge_rx_data_ce) begin
		uartwishbonebridge_data <= {uartwishbonebridge_data[23:0], uartwishbonebridge_source_payload_data};
	end else begin
		if (uartwishbonebridge_tx_data_ce) begin
			uartwishbonebridge_data <= uartwishbonebridge_wishbone_dat_r;
		end
	end
	uartwishbonebridge_sink_ready <= 1'd0;
	if (((uartwishbonebridge_sink_valid & (~uartwishbonebridge_tx_busy)) & (~uartwishbonebridge_sink_ready))) begin
		uartwishbonebridge_tx_reg <= uartwishbonebridge_sink_payload_data;
		uartwishbonebridge_tx_bitcount <= 1'd0;
		uartwishbonebridge_tx_busy <= 1'd1;
		serial_tx <= 1'd0;
	end else begin
		if ((uartwishbonebridge_uart_clk_txen & uartwishbonebridge_tx_busy)) begin
			uartwishbonebridge_tx_bitcount <= (uartwishbonebridge_tx_bitcount + 1'd1);
			if ((uartwishbonebridge_tx_bitcount == 4'd8)) begin
				serial_tx <= 1'd1;
			end else begin
				if ((uartwishbonebridge_tx_bitcount == 4'd9)) begin
					serial_tx <= 1'd1;
					uartwishbonebridge_tx_busy <= 1'd0;
					uartwishbonebridge_sink_ready <= 1'd1;
				end else begin
					serial_tx <= uartwishbonebridge_tx_reg[0];
					uartwishbonebridge_tx_reg <= {1'd0, uartwishbonebridge_tx_reg[7:1]};
				end
			end
		end
	end
	if (uartwishbonebridge_tx_busy) begin
		{uartwishbonebridge_uart_clk_txen, uartwishbonebridge_phase_accumulator_tx} <= (uartwishbonebridge_phase_accumulator_tx + uartwishbonebridge_storage);
	end else begin
		{uartwishbonebridge_uart_clk_txen, uartwishbonebridge_phase_accumulator_tx} <= 1'd0;
	end
	uartwishbonebridge_source_valid <= 1'd0;
	uartwishbonebridge_rx_r <= uartwishbonebridge_rx;
	if ((~uartwishbonebridge_rx_busy)) begin
		if (((~uartwishbonebridge_rx) & uartwishbonebridge_rx_r)) begin
			uartwishbonebridge_rx_busy <= 1'd1;
			uartwishbonebridge_rx_bitcount <= 1'd0;
		end
	end else begin
		if (uartwishbonebridge_uart_clk_rxen) begin
			uartwishbonebridge_rx_bitcount <= (uartwishbonebridge_rx_bitcount + 1'd1);
			if ((uartwishbonebridge_rx_bitcount == 1'd0)) begin
				if (uartwishbonebridge_rx) begin
					uartwishbonebridge_rx_busy <= 1'd0;
				end
			end else begin
				if ((uartwishbonebridge_rx_bitcount == 4'd9)) begin
					uartwishbonebridge_rx_busy <= 1'd0;
					if (uartwishbonebridge_rx) begin
						uartwishbonebridge_source_payload_data <= uartwishbonebridge_rx_reg;
						uartwishbonebridge_source_valid <= 1'd1;
					end
				end else begin
					uartwishbonebridge_rx_reg <= {uartwishbonebridge_rx, uartwishbonebridge_rx_reg[7:1]};
				end
			end
		end
	end
	if (uartwishbonebridge_rx_busy) begin
		{uartwishbonebridge_uart_clk_rxen, uartwishbonebridge_phase_accumulator_rx} <= (uartwishbonebridge_phase_accumulator_rx + uartwishbonebridge_storage);
	end else begin
		{uartwishbonebridge_uart_clk_rxen, uartwishbonebridge_phase_accumulator_rx} <= 32'd2147483648;
	end
	uartwishbonebridge_state <= uartwishbonebridge_next_state;
	if (uartwishbonebridge_reset) begin
		uartwishbonebridge_state <= 3'd0;
	end
	if (uartwishbonebridge_wait) begin
		if ((~uartwishbonebridge_done)) begin
			uartwishbonebridge_count <= (uartwishbonebridge_count - 1'd1);
		end
	end else begin
		uartwishbonebridge_count <= 21'd1600000;
	end
	usbdevice_tx_pkt_start <= (usbdevice_in_tx_pkt_start | usbdevice_out_tx_pkt_start);
	usbdevice_tx_pid <= (usbdevice_out_tx_pkt_start ? usbdevice_out_tx_pid : usbdevice_in_tx_pid);
	usbdevice_valid_request_token <= usbdevice_valid_request_token_pre;
	if (usbdevice_valid_request_token) begin
		usbdevice_current_token <= usbdevice_usbfsrx_o_pkt_pid;
		usbdevice_current_endp <= usbdevice_rx_endp;
	end
	usbdevice_usbfsrx_line_state_valid <= (usbdevice_usbfsrx_line_state_phase == 1'd1);
	if (usbdevice_usbfsrx_line_state_dt) begin
		usbdevice_usbfsrx_line_state_phase <= 1'd0;
		usbdevice_usbfsrx_line_state_valid <= 1'd0;
	end else begin
		usbdevice_usbfsrx_line_state_phase <= (usbdevice_usbfsrx_line_state_phase + 1'd1);
	end
	usbdevice_usbfsrx_line_state_dj1 <= usbdevice_usbfsrx_line_state_dj0;
	usbdevice_usbfsrx_line_state_dk1 <= usbdevice_usbfsrx_line_state_dk0;
	usbdevice_usbfsrx_line_state_se01 <= usbdevice_usbfsrx_line_state_se00;
	usbdevice_usbfsrx_line_state_se11 <= usbdevice_usbfsrx_line_state_se10;
	rxclockdatarecovery_state <= rxclockdatarecovery_next_state;
	usbdevice_usbfsrx_nrzi_o_se0 <= usbdevice_usbfsrx_line_state_se01;
	usbdevice_usbfsrx_nrzi_o_valid1 <= usbdevice_usbfsrx_nrzi_o_valid0;
	usbdevice_usbfsrx_nrzi_o_data1 <= usbdevice_usbfsrx_nrzi_o_data0;
	rxnrzidecoder_state <= rxnrzidecoder_next_state;
	usbdevice_usbfsrx_bitstuff_o_se0 <= usbdevice_usbfsrx_nrzi_o_se0;
	usbdevice_usbfsrx_bitstuff_o_valid <= (usbdevice_usbfsrx_nrzi_o_valid1 & (~usbdevice_usbfsrx_bitstuff_drop_bit));
	usbdevice_usbfsrx_bitstuff_o_data <= usbdevice_usbfsrx_nrzi_o_data1;
	usbdevice_usbfsrx_bitstuff_o_bitstuff_error <= (usbdevice_usbfsrx_bitstuff_drop_bit & usbdevice_usbfsrx_nrzi_o_data1);
	rxbitstuffremover_state <= rxbitstuffremover_next_state;
	usbdevice_usbfsrx_valid <= usbdevice_usbfsrx_bitstuff_o_valid;
	usbdevice_usbfsrx_data <= usbdevice_usbfsrx_bitstuff_o_data;
	usbdevice_usbfsrx_se0 <= usbdevice_usbfsrx_bitstuff_o_se0;
	usbdevice_usbfsrx_bitstuff_error <= usbdevice_usbfsrx_bitstuff_o_bitstuff_error;
	usbdevice_usbfsrx_pkt_active1 <= usbdevice_usbfsrx_o_pkt_active;
	usbdevice_usbfsrx_pkt_end1 <= usbdevice_usbfsrx_o_pkt_end0;
	if (usbdevice_usbfsrx_o_pkt_start0) begin
		usbdevice_usbfsrx_pkt_bitstuff_good <= 1'd1;
	end else begin
		if ((usbdevice_usbfsrx_pkt_active1 & usbdevice_usbfsrx_bitstuff_error)) begin
			usbdevice_usbfsrx_pkt_bitstuff_good <= 1'd0;
		end
	end
	if (usbdevice_usbfsrx_o_pkt_data_put) begin
		usbdevice_usbfsrx_crc16_good <= usbdevice_usbfsrx_data_crc16_o_crc_good;
	end
	usbdevice_usbfsrx_o_pkt_start1 <= usbdevice_usbfsrx_o_pkt_start0;
	usbdevice_usbfsrx_o_pkt_pid <= usbdevice_usbfsrx_pid_shifter_o_output[3:0];
	usbdevice_usbfsrx_o_pkt_token_payload <= usbdevice_usbfsrx_tok_shifter_o_output[10:0];
	usbdevice_usbfsrx_o_pkt_data <= usbdevice_usbfsrx_data_shifter_o_output[7:0];
	usbdevice_usbfsrx_o_pkt_data_put <= usbdevice_usbfsrx_data_put;
	usbdevice_usbfsrx_o_pkt_good <= ((((usbdevice_usbfsrx_pid_shifter_o_output[3:0] == (usbdevice_usbfsrx_pid_shifter_o_output[7:4] ^ 4'd15)) & usbdevice_usbfsrx_pkt_bitstuff_good) & (usbdevice_usbfsrx_tok_crc5_o_crc_good | (~(usbdevice_usbfsrx_pid_shifter_o_output[1:0] == 1'd1)))) & (usbdevice_usbfsrx_crc16_good | (~(usbdevice_usbfsrx_pid_shifter_o_output[1:0] == 2'd3))));
	usbdevice_usbfsrx_o_pkt_end1 <= usbdevice_usbfsrx_pkt_end1;
	usbdevice_usbfsrx_o_pkt_start0 <= usbdevice_usbfsrx_pkt_start;
	usbdevice_usbfsrx_o_pkt_active <= usbdevice_usbfsrx_pkt_active0;
	usbdevice_usbfsrx_o_pkt_end0 <= usbdevice_usbfsrx_pkt_end0;
	rxpacketdecode_state <= rxpacketdecode_next_state;
	if (usbdevice_usbfsrx_o_pkt_start0) begin
		usbdevice_usbfsrx_pid_shifter_shift_reg <= 9'd256;
	end else begin
		if (((usbdevice_usbfsrx_pkt_active1 & usbdevice_usbfsrx_valid) & (~usbdevice_usbfsrx_pid_shifter_o_full))) begin
			usbdevice_usbfsrx_pid_shifter_shift_reg <= {usbdevice_usbfsrx_data, usbdevice_usbfsrx_pid_shifter_shift_reg[8:1]};
		end
	end
	usbdevice_usbfsrx_pid_shifter_o_put <= ((usbdevice_usbfsrx_pid_shifter_shift_reg[1:0] == 2'd2) & (usbdevice_usbfsrx_pkt_active1 & usbdevice_usbfsrx_valid));
	if (usbdevice_usbfsrx_o_pkt_start0) begin
		usbdevice_usbfsrx_tok_shifter_shift_reg <= 17'd65536;
	end else begin
		if (((usbdevice_usbfsrx_pid_shifter_o_full & usbdevice_usbfsrx_valid) & (~usbdevice_usbfsrx_tok_shifter_o_full))) begin
			usbdevice_usbfsrx_tok_shifter_shift_reg <= {usbdevice_usbfsrx_data, usbdevice_usbfsrx_tok_shifter_shift_reg[16:1]};
		end
	end
	usbdevice_usbfsrx_tok_shifter_o_put <= ((usbdevice_usbfsrx_tok_shifter_shift_reg[1:0] == 2'd2) & (usbdevice_usbfsrx_pid_shifter_o_full & usbdevice_usbfsrx_valid));
	if (usbdevice_usbfsrx_o_pkt_start0) begin
		usbdevice_usbfsrx_tok_crc5_crc[0] <= 1'd1;
	end else begin
		if (((usbdevice_usbfsrx_pid_shifter_o_full & usbdevice_usbfsrx_valid) & (~usbdevice_usbfsrx_tok_shifter_o_full))) begin
			usbdevice_usbfsrx_tok_crc5_crc[0] <= usbdevice_usbfsrx_tok_crc5_crc_invert;
		end
	end
	if (usbdevice_usbfsrx_o_pkt_start0) begin
		usbdevice_usbfsrx_tok_crc5_crc[1] <= 1'd1;
	end else begin
		if (((usbdevice_usbfsrx_pid_shifter_o_full & usbdevice_usbfsrx_valid) & (~usbdevice_usbfsrx_tok_shifter_o_full))) begin
			usbdevice_usbfsrx_tok_crc5_crc[1] <= usbdevice_usbfsrx_tok_crc5_crc[0];
		end
	end
	if (usbdevice_usbfsrx_o_pkt_start0) begin
		usbdevice_usbfsrx_tok_crc5_crc[2] <= 1'd1;
	end else begin
		if (((usbdevice_usbfsrx_pid_shifter_o_full & usbdevice_usbfsrx_valid) & (~usbdevice_usbfsrx_tok_shifter_o_full))) begin
			usbdevice_usbfsrx_tok_crc5_crc[2] <= (usbdevice_usbfsrx_tok_crc5_crc[1] ^ usbdevice_usbfsrx_tok_crc5_crc_invert);
		end
	end
	if (usbdevice_usbfsrx_o_pkt_start0) begin
		usbdevice_usbfsrx_tok_crc5_crc[3] <= 1'd1;
	end else begin
		if (((usbdevice_usbfsrx_pid_shifter_o_full & usbdevice_usbfsrx_valid) & (~usbdevice_usbfsrx_tok_shifter_o_full))) begin
			usbdevice_usbfsrx_tok_crc5_crc[3] <= usbdevice_usbfsrx_tok_crc5_crc[2];
		end
	end
	if (usbdevice_usbfsrx_o_pkt_start0) begin
		usbdevice_usbfsrx_tok_crc5_crc[4] <= 1'd1;
	end else begin
		if (((usbdevice_usbfsrx_pid_shifter_o_full & usbdevice_usbfsrx_valid) & (~usbdevice_usbfsrx_tok_shifter_o_full))) begin
			usbdevice_usbfsrx_tok_crc5_crc[4] <= usbdevice_usbfsrx_tok_crc5_crc[3];
		end
	end
	usbdevice_usbfsrx_tok_crc5_o_crc_good <= usbdevice_usbfsrx_tok_crc5_crc_good;
	if ((usbdevice_usbfsrx_o_pkt_start0 | usbdevice_usbfsrx_data_put)) begin
		usbdevice_usbfsrx_data_shifter_shift_reg <= 9'd256;
	end else begin
		if (((((usbdevice_usbfsrx_pid_shifter_o_output[1:0] == 2'd3) & usbdevice_usbfsrx_pid_shifter_o_full) & usbdevice_usbfsrx_valid) & (~usbdevice_usbfsrx_data_shifter_o_full))) begin
			usbdevice_usbfsrx_data_shifter_shift_reg <= {usbdevice_usbfsrx_data, usbdevice_usbfsrx_data_shifter_shift_reg[8:1]};
		end
	end
	usbdevice_usbfsrx_data_shifter_o_put <= ((usbdevice_usbfsrx_data_shifter_shift_reg[1:0] == 2'd2) & (((usbdevice_usbfsrx_pid_shifter_o_output[1:0] == 2'd3) & usbdevice_usbfsrx_pid_shifter_o_full) & usbdevice_usbfsrx_valid));
	if (usbdevice_usbfsrx_o_pkt_start0) begin
		usbdevice_usbfsrx_data_crc16_crc[0] <= 1'd1;
	end else begin
		if (((usbdevice_usbfsrx_pid_shifter_o_full & usbdevice_usbfsrx_valid) & usbdevice_usbfsrx_pkt_active1)) begin
			usbdevice_usbfsrx_data_crc16_crc[0] <= usbdevice_usbfsrx_data_crc16_crc_invert;
		end
	end
	if (usbdevice_usbfsrx_o_pkt_start0) begin
		usbdevice_usbfsrx_data_crc16_crc[1] <= 1'd1;
	end else begin
		if (((usbdevice_usbfsrx_pid_shifter_o_full & usbdevice_usbfsrx_valid) & usbdevice_usbfsrx_pkt_active1)) begin
			usbdevice_usbfsrx_data_crc16_crc[1] <= usbdevice_usbfsrx_data_crc16_crc[0];
		end
	end
	if (usbdevice_usbfsrx_o_pkt_start0) begin
		usbdevice_usbfsrx_data_crc16_crc[2] <= 1'd1;
	end else begin
		if (((usbdevice_usbfsrx_pid_shifter_o_full & usbdevice_usbfsrx_valid) & usbdevice_usbfsrx_pkt_active1)) begin
			usbdevice_usbfsrx_data_crc16_crc[2] <= (usbdevice_usbfsrx_data_crc16_crc[1] ^ usbdevice_usbfsrx_data_crc16_crc_invert);
		end
	end
	if (usbdevice_usbfsrx_o_pkt_start0) begin
		usbdevice_usbfsrx_data_crc16_crc[3] <= 1'd1;
	end else begin
		if (((usbdevice_usbfsrx_pid_shifter_o_full & usbdevice_usbfsrx_valid) & usbdevice_usbfsrx_pkt_active1)) begin
			usbdevice_usbfsrx_data_crc16_crc[3] <= usbdevice_usbfsrx_data_crc16_crc[2];
		end
	end
	if (usbdevice_usbfsrx_o_pkt_start0) begin
		usbdevice_usbfsrx_data_crc16_crc[4] <= 1'd1;
	end else begin
		if (((usbdevice_usbfsrx_pid_shifter_o_full & usbdevice_usbfsrx_valid) & usbdevice_usbfsrx_pkt_active1)) begin
			usbdevice_usbfsrx_data_crc16_crc[4] <= usbdevice_usbfsrx_data_crc16_crc[3];
		end
	end
	if (usbdevice_usbfsrx_o_pkt_start0) begin
		usbdevice_usbfsrx_data_crc16_crc[5] <= 1'd1;
	end else begin
		if (((usbdevice_usbfsrx_pid_shifter_o_full & usbdevice_usbfsrx_valid) & usbdevice_usbfsrx_pkt_active1)) begin
			usbdevice_usbfsrx_data_crc16_crc[5] <= usbdevice_usbfsrx_data_crc16_crc[4];
		end
	end
	if (usbdevice_usbfsrx_o_pkt_start0) begin
		usbdevice_usbfsrx_data_crc16_crc[6] <= 1'd1;
	end else begin
		if (((usbdevice_usbfsrx_pid_shifter_o_full & usbdevice_usbfsrx_valid) & usbdevice_usbfsrx_pkt_active1)) begin
			usbdevice_usbfsrx_data_crc16_crc[6] <= usbdevice_usbfsrx_data_crc16_crc[5];
		end
	end
	if (usbdevice_usbfsrx_o_pkt_start0) begin
		usbdevice_usbfsrx_data_crc16_crc[7] <= 1'd1;
	end else begin
		if (((usbdevice_usbfsrx_pid_shifter_o_full & usbdevice_usbfsrx_valid) & usbdevice_usbfsrx_pkt_active1)) begin
			usbdevice_usbfsrx_data_crc16_crc[7] <= usbdevice_usbfsrx_data_crc16_crc[6];
		end
	end
	if (usbdevice_usbfsrx_o_pkt_start0) begin
		usbdevice_usbfsrx_data_crc16_crc[8] <= 1'd1;
	end else begin
		if (((usbdevice_usbfsrx_pid_shifter_o_full & usbdevice_usbfsrx_valid) & usbdevice_usbfsrx_pkt_active1)) begin
			usbdevice_usbfsrx_data_crc16_crc[8] <= usbdevice_usbfsrx_data_crc16_crc[7];
		end
	end
	if (usbdevice_usbfsrx_o_pkt_start0) begin
		usbdevice_usbfsrx_data_crc16_crc[9] <= 1'd1;
	end else begin
		if (((usbdevice_usbfsrx_pid_shifter_o_full & usbdevice_usbfsrx_valid) & usbdevice_usbfsrx_pkt_active1)) begin
			usbdevice_usbfsrx_data_crc16_crc[9] <= usbdevice_usbfsrx_data_crc16_crc[8];
		end
	end
	if (usbdevice_usbfsrx_o_pkt_start0) begin
		usbdevice_usbfsrx_data_crc16_crc[10] <= 1'd1;
	end else begin
		if (((usbdevice_usbfsrx_pid_shifter_o_full & usbdevice_usbfsrx_valid) & usbdevice_usbfsrx_pkt_active1)) begin
			usbdevice_usbfsrx_data_crc16_crc[10] <= usbdevice_usbfsrx_data_crc16_crc[9];
		end
	end
	if (usbdevice_usbfsrx_o_pkt_start0) begin
		usbdevice_usbfsrx_data_crc16_crc[11] <= 1'd1;
	end else begin
		if (((usbdevice_usbfsrx_pid_shifter_o_full & usbdevice_usbfsrx_valid) & usbdevice_usbfsrx_pkt_active1)) begin
			usbdevice_usbfsrx_data_crc16_crc[11] <= usbdevice_usbfsrx_data_crc16_crc[10];
		end
	end
	if (usbdevice_usbfsrx_o_pkt_start0) begin
		usbdevice_usbfsrx_data_crc16_crc[12] <= 1'd1;
	end else begin
		if (((usbdevice_usbfsrx_pid_shifter_o_full & usbdevice_usbfsrx_valid) & usbdevice_usbfsrx_pkt_active1)) begin
			usbdevice_usbfsrx_data_crc16_crc[12] <= usbdevice_usbfsrx_data_crc16_crc[11];
		end
	end
	if (usbdevice_usbfsrx_o_pkt_start0) begin
		usbdevice_usbfsrx_data_crc16_crc[13] <= 1'd1;
	end else begin
		if (((usbdevice_usbfsrx_pid_shifter_o_full & usbdevice_usbfsrx_valid) & usbdevice_usbfsrx_pkt_active1)) begin
			usbdevice_usbfsrx_data_crc16_crc[13] <= usbdevice_usbfsrx_data_crc16_crc[12];
		end
	end
	if (usbdevice_usbfsrx_o_pkt_start0) begin
		usbdevice_usbfsrx_data_crc16_crc[14] <= 1'd1;
	end else begin
		if (((usbdevice_usbfsrx_pid_shifter_o_full & usbdevice_usbfsrx_valid) & usbdevice_usbfsrx_pkt_active1)) begin
			usbdevice_usbfsrx_data_crc16_crc[14] <= usbdevice_usbfsrx_data_crc16_crc[13];
		end
	end
	if (usbdevice_usbfsrx_o_pkt_start0) begin
		usbdevice_usbfsrx_data_crc16_crc[15] <= 1'd1;
	end else begin
		if (((usbdevice_usbfsrx_pid_shifter_o_full & usbdevice_usbfsrx_valid) & usbdevice_usbfsrx_pkt_active1)) begin
			usbdevice_usbfsrx_data_crc16_crc[15] <= (usbdevice_usbfsrx_data_crc16_crc[14] ^ usbdevice_usbfsrx_data_crc16_crc_invert);
		end
	end
	usbdevice_usbfsrx_data_crc16_o_crc_good <= usbdevice_usbfsrx_data_crc16_crc_good;
	if (usbdevice_tx_pkt_start) begin
		usbdevice_usbfstx_pid_is_data <= (usbdevice_tx_pid[1:0] == 2'd3);
	end
	usbdevice_usbfstx_mux_stuff_bit_strobe <= usbdevice_usbfsrx_line_state_valid;
	usbdevice_usbfstx_mux_stuff_oe <= usbdevice_usbfstx_pkt_active;
	usbdevice_usbfstx_mux_stuff_se0 <= 1'd0;
	usbdevice_usbfstx_mux_stuff_data <= 1'd0;
	if (usbdevice_usbfstx_shift_sync) begin
		usbdevice_usbfstx_mux_stuff_se0 <= 1'd0;
		usbdevice_usbfstx_mux_stuff_data <= usbdevice_usbfstx_sync_shifter_o_data;
	end else begin
		if (usbdevice_usbfstx_shift_pid) begin
			usbdevice_usbfstx_mux_stuff_se0 <= 1'd0;
			usbdevice_usbfstx_mux_stuff_data <= usbdevice_usbfstx_pid_shifter_o_data;
		end else begin
			if (usbdevice_usbfstx_shift_data) begin
				usbdevice_usbfstx_mux_stuff_se0 <= 1'd0;
				usbdevice_usbfstx_mux_stuff_data <= usbdevice_usbfstx_data_shifter_o_data;
			end else begin
				if (usbdevice_usbfstx_shift_crc16) begin
					usbdevice_usbfstx_mux_stuff_se0 <= 1'd0;
					usbdevice_usbfstx_mux_stuff_data <= usbdevice_usbfstx_crc16_shifter_o_data;
				end else begin
					if (usbdevice_usbfstx_shift_eop) begin
						usbdevice_usbfstx_mux_stuff_se0 <= 1'd1;
						usbdevice_usbfstx_mux_stuff_data <= 1'd0;
					end
				end
			end
		end
	end
	usbdevice_usbfstx_o_data_get <= usbdevice_usbfstx_load_data;
	usbdevice_usbfstx_o_usbp <= usbdevice_usbfstx_nrzi_o_usbp;
	usbdevice_usbfstx_o_usbn <= usbdevice_usbfstx_nrzi_o_usbn;
	usbdevice_usbfstx_o_oe <= usbdevice_usbfstx_nrzi_o_oe;
	fsm_state <= fsm_next_state;
	if (usbdevice_tx_pkt_start) begin
		usbdevice_usbfstx_sync_shifter_shifter <= {1'd1, slice_proxy0[7:0]};
	end else begin
		if (((usbdevice_usbfstx_shift_sync & usbdevice_usbfsrx_line_state_valid) & (~usbdevice_usbfstx_bitstuff_stall))) begin
			usbdevice_usbfstx_sync_shifter_shifter <= (usbdevice_usbfstx_sync_shifter_shifter >>> 1'd1);
		end
	end
	if (((usbdevice_usbfstx_sync_shifter_shifter[8:1] == 8'd1) & ((usbdevice_usbfstx_shift_sync & usbdevice_usbfsrx_line_state_valid) & (~usbdevice_usbfstx_bitstuff_stall)))) begin
		usbdevice_usbfstx_sync_shifter_not_empty <= 1'd0;
	end else begin
		if (usbdevice_tx_pkt_start) begin
			usbdevice_usbfstx_sync_shifter_not_empty <= 1'd1;
		end
	end
	if (usbdevice_tx_pkt_start) begin
		usbdevice_usbfstx_pid_shifter_shifter <= {1'd1, slice_proxy1[7:0]};
	end else begin
		if (((usbdevice_usbfstx_shift_pid & usbdevice_usbfsrx_line_state_valid) & (~usbdevice_usbfstx_bitstuff_stall))) begin
			usbdevice_usbfstx_pid_shifter_shifter <= (usbdevice_usbfstx_pid_shifter_shifter >>> 1'd1);
		end
	end
	if (((usbdevice_usbfstx_pid_shifter_shifter[8:1] == 8'd1) & ((usbdevice_usbfstx_shift_pid & usbdevice_usbfsrx_line_state_valid) & (~usbdevice_usbfstx_bitstuff_stall)))) begin
		usbdevice_usbfstx_pid_shifter_not_empty <= 1'd0;
	end else begin
		if (usbdevice_tx_pkt_start) begin
			usbdevice_usbfstx_pid_shifter_not_empty <= 1'd1;
		end
	end
	if (usbdevice_usbfstx_load_data) begin
		usbdevice_usbfstx_data_shifter_shifter <= {1'd1, usbdevice_tx_data[7:0]};
	end else begin
		if (((usbdevice_usbfstx_shift_data & usbdevice_usbfsrx_line_state_valid) & (~usbdevice_usbfstx_bitstuff_stall))) begin
			usbdevice_usbfstx_data_shifter_shifter <= (usbdevice_usbfstx_data_shifter_shifter >>> 1'd1);
		end
	end
	if (((usbdevice_usbfstx_data_shifter_shifter[8:1] == 8'd1) & ((usbdevice_usbfstx_shift_data & usbdevice_usbfsrx_line_state_valid) & (~usbdevice_usbfstx_bitstuff_stall)))) begin
		usbdevice_usbfstx_data_shifter_not_empty <= 1'd0;
	end else begin
		if (usbdevice_usbfstx_load_data) begin
			usbdevice_usbfstx_data_shifter_not_empty <= 1'd1;
		end
	end
	if (usbdevice_tx_pkt_start) begin
		usbdevice_usbfstx_crc[0] <= 1'd1;
	end else begin
		if (((usbdevice_usbfstx_shift_data & usbdevice_usbfsrx_line_state_valid) & (~usbdevice_usbfstx_bitstuff_stall))) begin
			usbdevice_usbfstx_crc[0] <= usbdevice_usbfstx_crc_invert;
		end
	end
	if (usbdevice_tx_pkt_start) begin
		usbdevice_usbfstx_crc[1] <= 1'd1;
	end else begin
		if (((usbdevice_usbfstx_shift_data & usbdevice_usbfsrx_line_state_valid) & (~usbdevice_usbfstx_bitstuff_stall))) begin
			usbdevice_usbfstx_crc[1] <= usbdevice_usbfstx_crc[0];
		end
	end
	if (usbdevice_tx_pkt_start) begin
		usbdevice_usbfstx_crc[2] <= 1'd1;
	end else begin
		if (((usbdevice_usbfstx_shift_data & usbdevice_usbfsrx_line_state_valid) & (~usbdevice_usbfstx_bitstuff_stall))) begin
			usbdevice_usbfstx_crc[2] <= (usbdevice_usbfstx_crc[1] ^ usbdevice_usbfstx_crc_invert);
		end
	end
	if (usbdevice_tx_pkt_start) begin
		usbdevice_usbfstx_crc[3] <= 1'd1;
	end else begin
		if (((usbdevice_usbfstx_shift_data & usbdevice_usbfsrx_line_state_valid) & (~usbdevice_usbfstx_bitstuff_stall))) begin
			usbdevice_usbfstx_crc[3] <= usbdevice_usbfstx_crc[2];
		end
	end
	if (usbdevice_tx_pkt_start) begin
		usbdevice_usbfstx_crc[4] <= 1'd1;
	end else begin
		if (((usbdevice_usbfstx_shift_data & usbdevice_usbfsrx_line_state_valid) & (~usbdevice_usbfstx_bitstuff_stall))) begin
			usbdevice_usbfstx_crc[4] <= usbdevice_usbfstx_crc[3];
		end
	end
	if (usbdevice_tx_pkt_start) begin
		usbdevice_usbfstx_crc[5] <= 1'd1;
	end else begin
		if (((usbdevice_usbfstx_shift_data & usbdevice_usbfsrx_line_state_valid) & (~usbdevice_usbfstx_bitstuff_stall))) begin
			usbdevice_usbfstx_crc[5] <= usbdevice_usbfstx_crc[4];
		end
	end
	if (usbdevice_tx_pkt_start) begin
		usbdevice_usbfstx_crc[6] <= 1'd1;
	end else begin
		if (((usbdevice_usbfstx_shift_data & usbdevice_usbfsrx_line_state_valid) & (~usbdevice_usbfstx_bitstuff_stall))) begin
			usbdevice_usbfstx_crc[6] <= usbdevice_usbfstx_crc[5];
		end
	end
	if (usbdevice_tx_pkt_start) begin
		usbdevice_usbfstx_crc[7] <= 1'd1;
	end else begin
		if (((usbdevice_usbfstx_shift_data & usbdevice_usbfsrx_line_state_valid) & (~usbdevice_usbfstx_bitstuff_stall))) begin
			usbdevice_usbfstx_crc[7] <= usbdevice_usbfstx_crc[6];
		end
	end
	if (usbdevice_tx_pkt_start) begin
		usbdevice_usbfstx_crc[8] <= 1'd1;
	end else begin
		if (((usbdevice_usbfstx_shift_data & usbdevice_usbfsrx_line_state_valid) & (~usbdevice_usbfstx_bitstuff_stall))) begin
			usbdevice_usbfstx_crc[8] <= usbdevice_usbfstx_crc[7];
		end
	end
	if (usbdevice_tx_pkt_start) begin
		usbdevice_usbfstx_crc[9] <= 1'd1;
	end else begin
		if (((usbdevice_usbfstx_shift_data & usbdevice_usbfsrx_line_state_valid) & (~usbdevice_usbfstx_bitstuff_stall))) begin
			usbdevice_usbfstx_crc[9] <= usbdevice_usbfstx_crc[8];
		end
	end
	if (usbdevice_tx_pkt_start) begin
		usbdevice_usbfstx_crc[10] <= 1'd1;
	end else begin
		if (((usbdevice_usbfstx_shift_data & usbdevice_usbfsrx_line_state_valid) & (~usbdevice_usbfstx_bitstuff_stall))) begin
			usbdevice_usbfstx_crc[10] <= usbdevice_usbfstx_crc[9];
		end
	end
	if (usbdevice_tx_pkt_start) begin
		usbdevice_usbfstx_crc[11] <= 1'd1;
	end else begin
		if (((usbdevice_usbfstx_shift_data & usbdevice_usbfsrx_line_state_valid) & (~usbdevice_usbfstx_bitstuff_stall))) begin
			usbdevice_usbfstx_crc[11] <= usbdevice_usbfstx_crc[10];
		end
	end
	if (usbdevice_tx_pkt_start) begin
		usbdevice_usbfstx_crc[12] <= 1'd1;
	end else begin
		if (((usbdevice_usbfstx_shift_data & usbdevice_usbfsrx_line_state_valid) & (~usbdevice_usbfstx_bitstuff_stall))) begin
			usbdevice_usbfstx_crc[12] <= usbdevice_usbfstx_crc[11];
		end
	end
	if (usbdevice_tx_pkt_start) begin
		usbdevice_usbfstx_crc[13] <= 1'd1;
	end else begin
		if (((usbdevice_usbfstx_shift_data & usbdevice_usbfsrx_line_state_valid) & (~usbdevice_usbfstx_bitstuff_stall))) begin
			usbdevice_usbfstx_crc[13] <= usbdevice_usbfstx_crc[12];
		end
	end
	if (usbdevice_tx_pkt_start) begin
		usbdevice_usbfstx_crc[14] <= 1'd1;
	end else begin
		if (((usbdevice_usbfstx_shift_data & usbdevice_usbfsrx_line_state_valid) & (~usbdevice_usbfstx_bitstuff_stall))) begin
			usbdevice_usbfstx_crc[14] <= usbdevice_usbfstx_crc[13];
		end
	end
	if (usbdevice_tx_pkt_start) begin
		usbdevice_usbfstx_crc[15] <= 1'd1;
	end else begin
		if (((usbdevice_usbfstx_shift_data & usbdevice_usbfsrx_line_state_valid) & (~usbdevice_usbfstx_bitstuff_stall))) begin
			usbdevice_usbfstx_crc[15] <= (usbdevice_usbfstx_crc[14] ^ usbdevice_usbfstx_crc_invert);
		end
	end
	if (usbdevice_usbfstx_load_crc16) begin
		usbdevice_usbfstx_crc16_shifter_shifter <= {1'd1, usbdevice_usbfstx_o_crc[15:0]};
	end else begin
		if (((usbdevice_usbfstx_shift_crc16 & usbdevice_usbfsrx_line_state_valid) & (~usbdevice_usbfstx_bitstuff_stall))) begin
			usbdevice_usbfstx_crc16_shifter_shifter <= (usbdevice_usbfstx_crc16_shifter_shifter >>> 1'd1);
		end
	end
	if (((usbdevice_usbfstx_crc16_shifter_shifter[16:1] == 16'd1) & ((usbdevice_usbfstx_shift_crc16 & usbdevice_usbfsrx_line_state_valid) & (~usbdevice_usbfstx_bitstuff_stall)))) begin
		usbdevice_usbfstx_crc16_shifter_not_empty <= 1'd0;
	end else begin
		if (usbdevice_usbfstx_load_crc16) begin
			usbdevice_usbfstx_crc16_shifter_not_empty <= 1'd1;
		end
	end
	if (usbdevice_usbfstx_mux_stuff_bit_strobe) begin
		usbdevice_usbfstx_bitstuffer_o_data <= (usbdevice_usbfstx_mux_stuff_data & (~usbdevice_usbfstx_bitstuffer_stuff_bit));
		usbdevice_usbfstx_bitstuffer_o_se0 <= usbdevice_usbfstx_mux_stuff_se0;
		usbdevice_usbfstx_bitstuffer_o_oe <= usbdevice_usbfstx_mux_stuff_oe;
	end
	txbitstuffer_state <= txbitstuffer_next_state;
	usbdevice_usbfstx_nrzi_o_oe <= usbdevice_usbfstx_nrzi_oe;
	usbdevice_usbfstx_nrzi_o_usbp <= usbdevice_usbfstx_nrzi_usbp;
	usbdevice_usbfstx_nrzi_o_usbn <= usbdevice_usbfstx_nrzi_usbn;
	txnrziencoder_state <= txnrziencoder_next_state;
	fsm0_state <= fsm0_next_state;
	fsm1_state <= fsm1_next_state;
	trigger_mem_graycounter0_q_binary <= trigger_mem_graycounter0_q_next_binary;
	trigger_mem_graycounter0_q <= trigger_mem_graycounter0_q_next;
	if (trigger_wait) begin
		if ((~trigger_done1)) begin
			trigger_count <= (trigger_count - 1'd1);
		end
	end else begin
		trigger_count <= 5'd16;
	end
	storage_cdc_graycounter1_q_binary <= storage_cdc_graycounter1_q_next_binary;
	storage_cdc_graycounter1_q <= storage_cdc_graycounter1_q_next;
	slave_sel_r <= slave_sel;
	if (wait_1) begin
		if ((~done)) begin
			count <= (count - 1'd1);
		end
	end else begin
		count <= 17'd65536;
	end
	interface0_bank_bus_dat_r <= 1'd0;
	if (csrbank0_sel) begin
		case (interface0_bank_bus_adr[4:0])
			1'd0: begin
				interface0_bank_bus_dat_r <= csrbank0_mux_value0_w;
			end
			1'd1: begin
				interface0_bank_bus_dat_r <= csrbank0_trigger_enable0_w;
			end
			2'd2: begin
				interface0_bank_bus_dat_r <= csrbank0_trigger_done_w;
			end
			2'd3: begin
				interface0_bank_bus_dat_r <= trigger_mem_write_w;
			end
			3'd4: begin
				interface0_bank_bus_dat_r <= csrbank0_trigger_mem_mask0_w;
			end
			3'd5: begin
				interface0_bank_bus_dat_r <= csrbank0_trigger_mem_value0_w;
			end
			3'd6: begin
				interface0_bank_bus_dat_r <= csrbank0_trigger_mem_full_w;
			end
			3'd7: begin
				interface0_bank_bus_dat_r <= csrbank0_subsampler_value1_w;
			end
			4'd8: begin
				interface0_bank_bus_dat_r <= csrbank0_subsampler_value0_w;
			end
			4'd9: begin
				interface0_bank_bus_dat_r <= csrbank0_storage_enable0_w;
			end
			4'd10: begin
				interface0_bank_bus_dat_r <= csrbank0_storage_done_w;
			end
			4'd11: begin
				interface0_bank_bus_dat_r <= csrbank0_storage_length1_w;
			end
			4'd12: begin
				interface0_bank_bus_dat_r <= csrbank0_storage_length0_w;
			end
			4'd13: begin
				interface0_bank_bus_dat_r <= csrbank0_storage_offset1_w;
			end
			4'd14: begin
				interface0_bank_bus_dat_r <= csrbank0_storage_offset0_w;
			end
			4'd15: begin
				interface0_bank_bus_dat_r <= csrbank0_storage_mem_valid_w;
			end
			5'd16: begin
				interface0_bank_bus_dat_r <= storage_mem_ready_w;
			end
			5'd17: begin
				interface0_bank_bus_dat_r <= csrbank0_storage_mem_data_w;
			end
		endcase
	end
	if (csrbank0_mux_value0_re) begin
		mux_value_storage_full <= csrbank0_mux_value0_r;
	end
	mux_value_re <= csrbank0_mux_value0_re;
	if (csrbank0_trigger_enable0_re) begin
		trigger_enable_storage_full <= csrbank0_trigger_enable0_r;
	end
	trigger_enable_re <= csrbank0_trigger_enable0_re;
	if (csrbank0_trigger_mem_mask0_re) begin
		trigger_mem_mask_storage_full[1:0] <= csrbank0_trigger_mem_mask0_r;
	end
	trigger_mem_mask_re <= csrbank0_trigger_mem_mask0_re;
	if (csrbank0_trigger_mem_value0_re) begin
		trigger_mem_value_storage_full[1:0] <= csrbank0_trigger_mem_value0_r;
	end
	trigger_mem_value_re <= csrbank0_trigger_mem_value0_re;
	if (csrbank0_subsampler_value1_re) begin
		subsampler_value_storage_full[15:8] <= csrbank0_subsampler_value1_r;
	end
	if (csrbank0_subsampler_value0_re) begin
		subsampler_value_storage_full[7:0] <= csrbank0_subsampler_value0_r;
	end
	subsampler_value_re <= csrbank0_subsampler_value0_re;
	if (csrbank0_storage_enable0_re) begin
		storage_enable_storage_full <= csrbank0_storage_enable0_r;
	end
	storage_enable_re <= csrbank0_storage_enable0_re;
	if (csrbank0_storage_length1_re) begin
		storage_length_storage_full[8] <= csrbank0_storage_length1_r;
	end
	if (csrbank0_storage_length0_re) begin
		storage_length_storage_full[7:0] <= csrbank0_storage_length0_r;
	end
	storage_length_re <= csrbank0_storage_length0_re;
	if (csrbank0_storage_offset1_re) begin
		storage_offset_storage_full[8] <= csrbank0_storage_offset1_r;
	end
	if (csrbank0_storage_offset0_re) begin
		storage_offset_storage_full[7:0] <= csrbank0_storage_offset0_r;
	end
	storage_offset_re <= csrbank0_storage_offset0_re;
	interface1_bank_bus_dat_r <= 1'd0;
	if (csrbank1_sel) begin
		case (interface1_bank_bus_adr[3:0])
			1'd0: begin
				interface1_bank_bus_dat_r <= usbtestsoc_usbtestsoc_reset_reset_w;
			end
			1'd1: begin
				interface1_bank_bus_dat_r <= csrbank1_scratch3_w;
			end
			2'd2: begin
				interface1_bank_bus_dat_r <= csrbank1_scratch2_w;
			end
			2'd3: begin
				interface1_bank_bus_dat_r <= csrbank1_scratch1_w;
			end
			3'd4: begin
				interface1_bank_bus_dat_r <= csrbank1_scratch0_w;
			end
			3'd5: begin
				interface1_bank_bus_dat_r <= csrbank1_bus_errors3_w;
			end
			3'd6: begin
				interface1_bank_bus_dat_r <= csrbank1_bus_errors2_w;
			end
			3'd7: begin
				interface1_bank_bus_dat_r <= csrbank1_bus_errors1_w;
			end
			4'd8: begin
				interface1_bank_bus_dat_r <= csrbank1_bus_errors0_w;
			end
		endcase
	end
	if (csrbank1_scratch3_re) begin
		usbtestsoc_usbtestsoc_storage_full[31:24] <= csrbank1_scratch3_r;
	end
	if (csrbank1_scratch2_re) begin
		usbtestsoc_usbtestsoc_storage_full[23:16] <= csrbank1_scratch2_r;
	end
	if (csrbank1_scratch1_re) begin
		usbtestsoc_usbtestsoc_storage_full[15:8] <= csrbank1_scratch1_r;
	end
	if (csrbank1_scratch0_re) begin
		usbtestsoc_usbtestsoc_storage_full[7:0] <= csrbank1_scratch0_r;
	end
	usbtestsoc_usbtestsoc_re <= csrbank1_scratch0_re;
	sel_r <= sel;
	interface2_bank_bus_dat_r <= 1'd0;
	if (csrbank2_sel) begin
		case (interface2_bank_bus_adr[5:0])
			1'd0: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit19_w;
			end
			1'd1: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit18_w;
			end
			2'd2: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit17_w;
			end
			2'd3: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit16_w;
			end
			3'd4: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit15_w;
			end
			3'd5: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit14_w;
			end
			3'd6: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit13_w;
			end
			3'd7: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit12_w;
			end
			4'd8: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit11_w;
			end
			4'd9: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit10_w;
			end
			4'd10: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit9_w;
			end
			4'd11: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit8_w;
			end
			4'd12: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit7_w;
			end
			4'd13: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit6_w;
			end
			4'd14: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit5_w;
			end
			4'd15: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit4_w;
			end
			5'd16: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit3_w;
			end
			5'd17: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit2_w;
			end
			5'd18: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit1_w;
			end
			5'd19: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit0_w;
			end
			5'd20: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_platform7_w;
			end
			5'd21: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_platform6_w;
			end
			5'd22: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_platform5_w;
			end
			5'd23: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_platform4_w;
			end
			5'd24: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_platform3_w;
			end
			5'd25: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_platform2_w;
			end
			5'd26: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_platform1_w;
			end
			5'd27: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_platform0_w;
			end
			5'd28: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_target7_w;
			end
			5'd29: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_target6_w;
			end
			5'd30: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_target5_w;
			end
			5'd31: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_target4_w;
			end
			6'd32: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_target3_w;
			end
			6'd33: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_target2_w;
			end
			6'd34: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_target1_w;
			end
			6'd35: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_target0_w;
			end
		endcase
	end
	interface3_bank_bus_dat_r <= 1'd0;
	if (csrbank3_sel) begin
		case (interface3_bank_bus_adr[0])
			1'd0: begin
				interface3_bank_bus_dat_r <= csrbank3_in_w;
			end
			1'd1: begin
				interface3_bank_bus_dat_r <= csrbank3_out0_w;
			end
		endcase
	end
	if (csrbank3_out0_re) begin
		io_storage_full[7:0] <= csrbank3_out0_r;
	end
	io_re <= csrbank3_out0_re;
	interface4_bank_bus_dat_r <= 1'd0;
	if (csrbank4_sel) begin
		case (interface4_bank_bus_adr[1:0])
			1'd0: begin
				interface4_bank_bus_dat_r <= csrbank4_bitbang0_w;
			end
			1'd1: begin
				interface4_bank_bus_dat_r <= csrbank4_miso_w;
			end
			2'd2: begin
				interface4_bank_bus_dat_r <= csrbank4_bitbang_en0_w;
			end
		endcase
	end
	if (csrbank4_bitbang0_re) begin
		usbtestsoc_spiflash_bitbang_storage_full[3:0] <= csrbank4_bitbang0_r;
	end
	usbtestsoc_spiflash_bitbang_re <= csrbank4_bitbang0_re;
	if (csrbank4_bitbang_en0_re) begin
		usbtestsoc_spiflash_bitbang_en_storage_full <= csrbank4_bitbang_en0_r;
	end
	usbtestsoc_spiflash_bitbang_en_re <= csrbank4_bitbang_en0_re;
	interface5_bank_bus_dat_r <= 1'd0;
	if (csrbank5_sel) begin
		case (interface5_bank_bus_adr[4:0])
			1'd0: begin
				interface5_bank_bus_dat_r <= csrbank5_load3_w;
			end
			1'd1: begin
				interface5_bank_bus_dat_r <= csrbank5_load2_w;
			end
			2'd2: begin
				interface5_bank_bus_dat_r <= csrbank5_load1_w;
			end
			2'd3: begin
				interface5_bank_bus_dat_r <= csrbank5_load0_w;
			end
			3'd4: begin
				interface5_bank_bus_dat_r <= csrbank5_reload3_w;
			end
			3'd5: begin
				interface5_bank_bus_dat_r <= csrbank5_reload2_w;
			end
			3'd6: begin
				interface5_bank_bus_dat_r <= csrbank5_reload1_w;
			end
			3'd7: begin
				interface5_bank_bus_dat_r <= csrbank5_reload0_w;
			end
			4'd8: begin
				interface5_bank_bus_dat_r <= csrbank5_en0_w;
			end
			4'd9: begin
				interface5_bank_bus_dat_r <= usbtestsoc_usbtestsoc_update_value_w;
			end
			4'd10: begin
				interface5_bank_bus_dat_r <= csrbank5_value3_w;
			end
			4'd11: begin
				interface5_bank_bus_dat_r <= csrbank5_value2_w;
			end
			4'd12: begin
				interface5_bank_bus_dat_r <= csrbank5_value1_w;
			end
			4'd13: begin
				interface5_bank_bus_dat_r <= csrbank5_value0_w;
			end
			4'd14: begin
				interface5_bank_bus_dat_r <= usbtestsoc_usbtestsoc_eventmanager_status_w;
			end
			4'd15: begin
				interface5_bank_bus_dat_r <= usbtestsoc_usbtestsoc_eventmanager_pending_w;
			end
			5'd16: begin
				interface5_bank_bus_dat_r <= csrbank5_ev_enable0_w;
			end
		endcase
	end
	if (csrbank5_load3_re) begin
		usbtestsoc_usbtestsoc_load_storage_full[31:24] <= csrbank5_load3_r;
	end
	if (csrbank5_load2_re) begin
		usbtestsoc_usbtestsoc_load_storage_full[23:16] <= csrbank5_load2_r;
	end
	if (csrbank5_load1_re) begin
		usbtestsoc_usbtestsoc_load_storage_full[15:8] <= csrbank5_load1_r;
	end
	if (csrbank5_load0_re) begin
		usbtestsoc_usbtestsoc_load_storage_full[7:0] <= csrbank5_load0_r;
	end
	usbtestsoc_usbtestsoc_load_re <= csrbank5_load0_re;
	if (csrbank5_reload3_re) begin
		usbtestsoc_usbtestsoc_reload_storage_full[31:24] <= csrbank5_reload3_r;
	end
	if (csrbank5_reload2_re) begin
		usbtestsoc_usbtestsoc_reload_storage_full[23:16] <= csrbank5_reload2_r;
	end
	if (csrbank5_reload1_re) begin
		usbtestsoc_usbtestsoc_reload_storage_full[15:8] <= csrbank5_reload1_r;
	end
	if (csrbank5_reload0_re) begin
		usbtestsoc_usbtestsoc_reload_storage_full[7:0] <= csrbank5_reload0_r;
	end
	usbtestsoc_usbtestsoc_reload_re <= csrbank5_reload0_re;
	if (csrbank5_en0_re) begin
		usbtestsoc_usbtestsoc_en_storage_full <= csrbank5_en0_r;
	end
	usbtestsoc_usbtestsoc_en_re <= csrbank5_en0_re;
	if (csrbank5_ev_enable0_re) begin
		usbtestsoc_usbtestsoc_eventmanager_storage_full <= csrbank5_ev_enable0_r;
	end
	usbtestsoc_usbtestsoc_eventmanager_re <= csrbank5_ev_enable0_re;
	if (sys_rst) begin
		usbtestsoc_usbtestsoc_storage_full <= 32'd305419896;
		usbtestsoc_usbtestsoc_re <= 1'd0;
		usbtestsoc_usbtestsoc_bus_errors <= 32'd0;
		usbtestsoc_usbtestsoc_adr <= 14'd0;
		usbtestsoc_usbtestsoc_we <= 1'd0;
		usbtestsoc_usbtestsoc_dat_w <= 8'd0;
		usbtestsoc_usbtestsoc_bus_wishbone_dat_r <= 32'd0;
		usbtestsoc_usbtestsoc_bus_wishbone_ack <= 1'd0;
		usbtestsoc_usbtestsoc_counter <= 2'd0;
		usbtestsoc_usbtestsoc_load_storage_full <= 32'd0;
		usbtestsoc_usbtestsoc_load_re <= 1'd0;
		usbtestsoc_usbtestsoc_reload_storage_full <= 32'd0;
		usbtestsoc_usbtestsoc_reload_re <= 1'd0;
		usbtestsoc_usbtestsoc_en_storage_full <= 1'd0;
		usbtestsoc_usbtestsoc_en_re <= 1'd0;
		usbtestsoc_usbtestsoc_value_status <= 32'd0;
		usbtestsoc_usbtestsoc_zero_pending <= 1'd0;
		usbtestsoc_usbtestsoc_zero_old_trigger <= 1'd0;
		usbtestsoc_usbtestsoc_eventmanager_storage_full <= 1'd0;
		usbtestsoc_usbtestsoc_eventmanager_re <= 1'd0;
		usbtestsoc_usbtestsoc_value <= 32'd0;
		usbtestsoc_spiflash_bus_ack <= 1'd0;
		usbtestsoc_spiflash_bitbang_storage_full <= 4'd0;
		usbtestsoc_spiflash_bitbang_re <= 1'd0;
		usbtestsoc_spiflash_bitbang_en_storage_full <= 1'd0;
		usbtestsoc_spiflash_bitbang_en_re <= 1'd0;
		usbtestsoc_spiflash_cs_n1 <= 1'd1;
		usbtestsoc_spiflash_clk1 <= 1'd0;
		usbtestsoc_spiflash_sr <= 32'd0;
		usbtestsoc_spiflash_i <= 1'd0;
		usbtestsoc_spiflash_miso1 <= 1'd0;
		usbtestsoc_spiflash_counter <= 8'd0;
		serial_tx <= 1'd1;
		uartwishbonebridge_sink_ready <= 1'd0;
		uartwishbonebridge_uart_clk_txen <= 1'd0;
		uartwishbonebridge_phase_accumulator_tx <= 32'd0;
		uartwishbonebridge_tx_reg <= 8'd0;
		uartwishbonebridge_tx_bitcount <= 4'd0;
		uartwishbonebridge_tx_busy <= 1'd0;
		uartwishbonebridge_source_valid <= 1'd0;
		uartwishbonebridge_source_payload_data <= 8'd0;
		uartwishbonebridge_uart_clk_rxen <= 1'd0;
		uartwishbonebridge_phase_accumulator_rx <= 32'd0;
		uartwishbonebridge_rx_r <= 1'd0;
		uartwishbonebridge_rx_reg <= 8'd0;
		uartwishbonebridge_rx_bitcount <= 4'd0;
		uartwishbonebridge_rx_busy <= 1'd0;
		uartwishbonebridge_count <= 21'd1600000;
		usbdevice_tx_pkt_start <= 1'd0;
		usbdevice_tx_pid <= 4'd0;
		usbdevice_usbfsrx_line_state_phase <= 2'd0;
		usbdevice_usbfsrx_line_state_valid <= 1'd0;
		usbdevice_usbfsrx_line_state_dj1 <= 1'd0;
		usbdevice_usbfsrx_line_state_dk1 <= 1'd0;
		usbdevice_usbfsrx_line_state_se01 <= 1'd0;
		usbdevice_usbfsrx_line_state_se11 <= 1'd0;
		usbdevice_usbfsrx_nrzi_o_valid1 <= 1'd0;
		usbdevice_usbfsrx_nrzi_o_data1 <= 1'd0;
		usbdevice_usbfsrx_nrzi_o_se0 <= 1'd0;
		usbdevice_usbfsrx_bitstuff_o_valid <= 1'd0;
		usbdevice_usbfsrx_bitstuff_o_data <= 1'd0;
		usbdevice_usbfsrx_bitstuff_o_se0 <= 1'd0;
		usbdevice_usbfsrx_bitstuff_o_bitstuff_error <= 1'd0;
		usbdevice_usbfsrx_valid <= 1'd0;
		usbdevice_usbfsrx_data <= 1'd0;
		usbdevice_usbfsrx_se0 <= 1'd0;
		usbdevice_usbfsrx_bitstuff_error <= 1'd0;
		usbdevice_usbfsrx_o_pkt_start0 <= 1'd0;
		usbdevice_usbfsrx_o_pkt_active <= 1'd0;
		usbdevice_usbfsrx_o_pkt_end0 <= 1'd0;
		usbdevice_usbfsrx_pkt_active1 <= 1'd0;
		usbdevice_usbfsrx_pkt_end1 <= 1'd0;
		usbdevice_usbfsrx_pid_shifter_shift_reg <= 9'd0;
		usbdevice_usbfsrx_pid_shifter_o_put <= 1'd0;
		usbdevice_usbfsrx_tok_shifter_shift_reg <= 17'd0;
		usbdevice_usbfsrx_tok_shifter_o_put <= 1'd0;
		usbdevice_usbfsrx_tok_crc5_crc <= 5'd0;
		usbdevice_usbfsrx_tok_crc5_o_crc_good <= 1'd0;
		usbdevice_usbfsrx_data_shifter_shift_reg <= 9'd0;
		usbdevice_usbfsrx_data_shifter_o_put <= 1'd0;
		usbdevice_usbfsrx_data_crc16_crc <= 16'd0;
		usbdevice_usbfsrx_data_crc16_o_crc_good <= 1'd0;
		usbdevice_usbfsrx_pkt_bitstuff_good <= 1'd0;
		usbdevice_usbfsrx_o_pkt_data_put <= 1'd0;
		usbdevice_usbfsrx_crc16_good <= 1'd0;
		usbdevice_usbfsrx_o_pkt_start1 <= 1'd0;
		usbdevice_usbfsrx_o_pkt_pid <= 4'd0;
		usbdevice_usbfsrx_o_pkt_token_payload <= 11'd0;
		usbdevice_usbfsrx_o_pkt_data <= 8'd0;
		usbdevice_usbfsrx_o_pkt_good <= 1'd0;
		usbdevice_usbfsrx_o_pkt_end1 <= 1'd0;
		usbdevice_usbfstx_sync_shifter_shifter <= 9'd0;
		usbdevice_usbfstx_sync_shifter_not_empty <= 1'd0;
		usbdevice_usbfstx_pid_shifter_shifter <= 9'd0;
		usbdevice_usbfstx_pid_shifter_not_empty <= 1'd0;
		usbdevice_usbfstx_data_shifter_shifter <= 9'd0;
		usbdevice_usbfstx_data_shifter_not_empty <= 1'd0;
		usbdevice_usbfstx_crc <= 16'd0;
		usbdevice_usbfstx_crc16_shifter_shifter <= 17'd0;
		usbdevice_usbfstx_crc16_shifter_not_empty <= 1'd0;
		usbdevice_usbfstx_pid_is_data <= 1'd0;
		usbdevice_usbfstx_mux_stuff_oe <= 1'd0;
		usbdevice_usbfstx_mux_stuff_data <= 1'd0;
		usbdevice_usbfstx_mux_stuff_se0 <= 1'd0;
		usbdevice_usbfstx_mux_stuff_bit_strobe <= 1'd0;
		usbdevice_usbfstx_bitstuffer_o_data <= 1'd0;
		usbdevice_usbfstx_bitstuffer_o_se0 <= 1'd0;
		usbdevice_usbfstx_bitstuffer_o_oe <= 1'd0;
		usbdevice_usbfstx_nrzi_o_usbp <= 1'd0;
		usbdevice_usbfstx_nrzi_o_usbn <= 1'd0;
		usbdevice_usbfstx_nrzi_o_oe <= 1'd0;
		usbdevice_usbfstx_o_data_get <= 1'd0;
		usbdevice_usbfstx_o_usbp <= 1'd0;
		usbdevice_usbfstx_o_usbn <= 1'd0;
		usbdevice_usbfstx_o_oe <= 1'd0;
		usbdevice_current_token <= 4'd0;
		usbdevice_current_endp <= 4'd0;
		usbdevice_valid_request_token <= 1'd0;
		io_storage_full <= 8'd0;
		io_re <= 1'd0;
		mux_value_storage_full <= 1'd0;
		mux_value_re <= 1'd0;
		trigger_enable_storage_full <= 1'd0;
		trigger_enable_re <= 1'd0;
		trigger_mem_mask_storage_full <= 2'd0;
		trigger_mem_mask_re <= 1'd0;
		trigger_mem_value_storage_full <= 2'd0;
		trigger_mem_value_re <= 1'd0;
		trigger_mem_graycounter0_q <= 5'd0;
		trigger_mem_graycounter0_q_binary <= 5'd0;
		trigger_count <= 5'd16;
		subsampler_value_storage_full <= 16'd0;
		subsampler_value_re <= 1'd0;
		storage_enable_storage_full <= 1'd0;
		storage_enable_re <= 1'd0;
		storage_length_storage_full <= 9'd0;
		storage_length_re <= 1'd0;
		storage_offset_storage_full <= 9'd0;
		storage_offset_re <= 1'd0;
		storage_cdc_graycounter1_q <= 3'd0;
		storage_cdc_graycounter1_q_binary <= 3'd0;
		uartwishbonebridge_state <= 3'd0;
		rxclockdatarecovery_state <= 3'd0;
		rxnrzidecoder_state <= 1'd0;
		rxbitstuffremover_state <= 3'd0;
		rxpacketdecode_state <= 3'd0;
		fsm_state <= 3'd0;
		txbitstuffer_state <= 3'd0;
		txnrziencoder_state <= 3'd0;
		fsm0_state <= 3'd0;
		fsm1_state <= 3'd0;
		slave_sel_r <= 2'd0;
		count <= 17'd65536;
		interface0_bank_bus_dat_r <= 8'd0;
		interface1_bank_bus_dat_r <= 8'd0;
		sel_r <= 1'd0;
		interface2_bank_bus_dat_r <= 8'd0;
		interface3_bank_bus_dat_r <= 8'd0;
		interface4_bank_bus_dat_r <= 8'd0;
		interface5_bank_bus_dat_r <= 8'd0;
	end
	multiregimpl0_regs0 <= serial_rx;
	multiregimpl0_regs1 <= multiregimpl0_regs0;
	multiregimpl1_regs0 <= usbdevice_usb_p_rx;
	multiregimpl1_regs1 <= multiregimpl1_regs0;
	multiregimpl1_regs2 <= multiregimpl1_regs1;
	multiregimpl2_regs0 <= usbdevice_usb_n_rx;
	multiregimpl2_regs1 <= multiregimpl2_regs0;
	multiregimpl2_regs2 <= multiregimpl2_regs1;
	multiregimpl3_regs0 <= io_input;
	multiregimpl3_regs1 <= multiregimpl3_regs0;
	multiregimpl6_regs0 <= trigger_done0;
	multiregimpl6_regs1 <= multiregimpl6_regs0;
	multiregimpl8_regs0 <= trigger_mem_graycounter1_q;
	multiregimpl8_regs1 <= multiregimpl8_regs0;
	multiregimpl13_regs0 <= storage_done0;
	multiregimpl13_regs1 <= multiregimpl13_regs0;
	multiregimpl14_regs0 <= storage_cdc_graycounter0_q;
	multiregimpl14_regs1 <= multiregimpl14_regs0;
end

reg [7:0] mem[0:10];
reg [3:0] memadr;
always @(posedge sys_clk) begin
	memadr <= adr;
end

assign dat_r = mem[memadr];

initial begin
	$readmemh("mem.init", mem);
end

SB_PLL40_CORE #(
	.DELAY_ADJUSTMENT_MODE_FEEDBACK("FIXED"),
	.DELAY_ADJUSTMENT_MODE_RELATIVE("FIXED"),
	.DIVF(6'd47),
	.DIVQ(3'd4),
	.DIVR(1'd0),
	.ENABLE_ICEGATE(1'd0),
	.FDA_FEEDBACK(1'd0),
	.FDA_RELATIVE(1'd0),
	.FEEDBACK_PATH("SIMPLE"),
	.FILTER_RANGE(1'd1),
	.PLLOUT_SELECT("GENCLK"),
	.SHIFTREG_DIV_MODE(1'd0)
) SB_PLL40_CORE (
	.BYPASS(1'd0),
	.REFERENCECLK(clk16),
	.RESETB(1'd1),
	.PLLOUTCORE(usb_48_clk)
);

SB_IO #(
	.PIN_TYPE(6'b101001),
	.PULLUP(1'd0)
) SB_IO (
	.D_OUT_0(usbdevice_usb_p_tx),
	.OUTPUT_ENABLE(usbdevice_usb_tx_en),
	.PACKAGE_PIN(usb_d_p),
	.D_IN_0(usbdevice_usb_p_rx_io)
);

SB_IO #(
	.PIN_TYPE(6'b101001),
	.PULLUP(1'd0)
) SB_IO_1 (
	.D_OUT_0(usbdevice_usb_n_tx),
	.OUTPUT_ENABLE(usbdevice_usb_tx_en),
	.PACKAGE_PIN(usb_d_n),
	.D_IN_0(usbdevice_usb_n_rx_io)
);

reg [5:0] storage[0:15];
reg [3:0] memadr_1;
reg [3:0] memadr_2;
always @(posedge sys_clk) begin
	if (trigger_mem_wrport_we)
		storage[trigger_mem_wrport_adr] <= trigger_mem_wrport_dat_w;
	memadr_1 <= trigger_mem_wrport_adr;
end

always @(posedge scope_clk) begin
	memadr_2 <= trigger_mem_rdport_adr;
end

assign trigger_mem_wrport_dat_r = storage[memadr_1];
assign trigger_mem_rdport_dat_r = storage[memadr_2];

reg [3:0] storage_1[0:255];
reg [3:0] memdat;
reg [3:0] memdat_1;
always @(posedge scope_clk) begin
	if (storage_mem_wrport_we)
		storage_1[storage_mem_wrport_adr] <= storage_mem_wrport_dat_w;
	memdat <= storage_1[storage_mem_wrport_adr];
end

always @(posedge scope_clk) begin
	if (storage_mem_rdport_re)
		memdat_1 <= storage_1[storage_mem_rdport_adr];
end

assign storage_mem_wrport_dat_r = memdat;
assign storage_mem_rdport_dat_r = memdat_1;

reg [3:0] storage_2[0:3];
reg [1:0] memadr_3;
reg [1:0] memadr_4;
always @(posedge scope_clk) begin
	if (storage_cdc_wrport_we)
		storage_2[storage_cdc_wrport_adr] <= storage_cdc_wrport_dat_w;
	memadr_3 <= storage_cdc_wrport_adr;
end

always @(posedge sys_clk) begin
	memadr_4 <= storage_cdc_rdport_adr;
end

assign storage_cdc_wrport_dat_r = storage_2[memadr_3];
assign storage_cdc_rdport_dat_r = storage_2[memadr_4];

SB_DFFS SB_DFFS(
	.C(por_clk),
	.D(1'd0),
	.S(usbtestsoc_crg_reset),
	.Q(rst1)
);

SB_DFFS SB_DFFS_1(
	.C(por_clk),
	.D(rst1),
	.S(usbtestsoc_crg_reset),
	.Q(por_rst)
);

endmodule
