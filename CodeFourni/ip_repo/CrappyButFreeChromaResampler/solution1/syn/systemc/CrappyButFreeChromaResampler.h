// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _CrappyButFreeChromaResampler_HH_
#define _CrappyButFreeChromaResampler_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct CrappyButFreeChromaResampler : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_lv<24> > video_in_TDATA;
    sc_in< sc_logic > video_in_TVALID;
    sc_out< sc_logic > video_in_TREADY;
    sc_in< sc_lv<3> > video_in_TKEEP;
    sc_in< sc_lv<3> > video_in_TSTRB;
    sc_in< sc_lv<1> > video_in_TUSER;
    sc_in< sc_lv<1> > video_in_TLAST;
    sc_out< sc_lv<16> > video_out_TDATA;
    sc_out< sc_logic > video_out_TVALID;
    sc_in< sc_logic > video_out_TREADY;
    sc_out< sc_lv<2> > video_out_TKEEP;
    sc_out< sc_lv<2> > video_out_TSTRB;
    sc_out< sc_lv<1> > video_out_TUSER;
    sc_out< sc_lv<1> > video_out_TLAST;


    // Module declarations
    CrappyButFreeChromaResampler(sc_module_name name);
    SC_HAS_PROCESS(CrappyButFreeChromaResampler);

    ~CrappyButFreeChromaResampler();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<24> > video_in_V_data_V_0_data_out;
    sc_signal< sc_logic > video_in_V_data_V_0_vld_in;
    sc_signal< sc_logic > video_in_V_data_V_0_vld_out;
    sc_signal< sc_logic > video_in_V_data_V_0_ack_in;
    sc_signal< sc_logic > video_in_V_data_V_0_ack_out;
    sc_signal< sc_lv<24> > video_in_V_data_V_0_payload_A;
    sc_signal< sc_lv<24> > video_in_V_data_V_0_payload_B;
    sc_signal< sc_logic > video_in_V_data_V_0_sel_rd;
    sc_signal< sc_logic > video_in_V_data_V_0_sel_wr;
    sc_signal< sc_logic > video_in_V_data_V_0_sel;
    sc_signal< sc_logic > video_in_V_data_V_0_load_A;
    sc_signal< sc_logic > video_in_V_data_V_0_load_B;
    sc_signal< sc_lv<2> > video_in_V_data_V_0_state;
    sc_signal< sc_logic > video_in_V_data_V_0_state_cmp_full;
    sc_signal< sc_lv<3> > video_in_V_keep_V_0_data_out;
    sc_signal< sc_logic > video_in_V_keep_V_0_vld_in;
    sc_signal< sc_logic > video_in_V_keep_V_0_vld_out;
    sc_signal< sc_logic > video_in_V_keep_V_0_ack_in;
    sc_signal< sc_logic > video_in_V_keep_V_0_ack_out;
    sc_signal< sc_lv<3> > video_in_V_keep_V_0_payload_A;
    sc_signal< sc_lv<3> > video_in_V_keep_V_0_payload_B;
    sc_signal< sc_logic > video_in_V_keep_V_0_sel_rd;
    sc_signal< sc_logic > video_in_V_keep_V_0_sel_wr;
    sc_signal< sc_logic > video_in_V_keep_V_0_sel;
    sc_signal< sc_logic > video_in_V_keep_V_0_load_A;
    sc_signal< sc_logic > video_in_V_keep_V_0_load_B;
    sc_signal< sc_lv<2> > video_in_V_keep_V_0_state;
    sc_signal< sc_logic > video_in_V_keep_V_0_state_cmp_full;
    sc_signal< sc_lv<3> > video_in_V_strb_V_0_data_out;
    sc_signal< sc_logic > video_in_V_strb_V_0_vld_in;
    sc_signal< sc_logic > video_in_V_strb_V_0_vld_out;
    sc_signal< sc_logic > video_in_V_strb_V_0_ack_in;
    sc_signal< sc_logic > video_in_V_strb_V_0_ack_out;
    sc_signal< sc_lv<3> > video_in_V_strb_V_0_payload_A;
    sc_signal< sc_lv<3> > video_in_V_strb_V_0_payload_B;
    sc_signal< sc_logic > video_in_V_strb_V_0_sel_rd;
    sc_signal< sc_logic > video_in_V_strb_V_0_sel_wr;
    sc_signal< sc_logic > video_in_V_strb_V_0_sel;
    sc_signal< sc_logic > video_in_V_strb_V_0_load_A;
    sc_signal< sc_logic > video_in_V_strb_V_0_load_B;
    sc_signal< sc_lv<2> > video_in_V_strb_V_0_state;
    sc_signal< sc_logic > video_in_V_strb_V_0_state_cmp_full;
    sc_signal< sc_lv<1> > video_in_V_user_V_0_data_out;
    sc_signal< sc_logic > video_in_V_user_V_0_vld_in;
    sc_signal< sc_logic > video_in_V_user_V_0_vld_out;
    sc_signal< sc_logic > video_in_V_user_V_0_ack_in;
    sc_signal< sc_logic > video_in_V_user_V_0_ack_out;
    sc_signal< sc_lv<1> > video_in_V_user_V_0_payload_A;
    sc_signal< sc_lv<1> > video_in_V_user_V_0_payload_B;
    sc_signal< sc_logic > video_in_V_user_V_0_sel_rd;
    sc_signal< sc_logic > video_in_V_user_V_0_sel_wr;
    sc_signal< sc_logic > video_in_V_user_V_0_sel;
    sc_signal< sc_logic > video_in_V_user_V_0_load_A;
    sc_signal< sc_logic > video_in_V_user_V_0_load_B;
    sc_signal< sc_lv<2> > video_in_V_user_V_0_state;
    sc_signal< sc_logic > video_in_V_user_V_0_state_cmp_full;
    sc_signal< sc_lv<1> > video_in_V_last_V_0_data_out;
    sc_signal< sc_logic > video_in_V_last_V_0_vld_in;
    sc_signal< sc_logic > video_in_V_last_V_0_vld_out;
    sc_signal< sc_logic > video_in_V_last_V_0_ack_in;
    sc_signal< sc_logic > video_in_V_last_V_0_ack_out;
    sc_signal< sc_lv<1> > video_in_V_last_V_0_payload_A;
    sc_signal< sc_lv<1> > video_in_V_last_V_0_payload_B;
    sc_signal< sc_logic > video_in_V_last_V_0_sel_rd;
    sc_signal< sc_logic > video_in_V_last_V_0_sel_wr;
    sc_signal< sc_logic > video_in_V_last_V_0_sel;
    sc_signal< sc_logic > video_in_V_last_V_0_load_A;
    sc_signal< sc_logic > video_in_V_last_V_0_load_B;
    sc_signal< sc_lv<2> > video_in_V_last_V_0_state;
    sc_signal< sc_logic > video_in_V_last_V_0_state_cmp_full;
    sc_signal< sc_lv<16> > video_out_V_data_V_1_data_out;
    sc_signal< sc_logic > video_out_V_data_V_1_vld_in;
    sc_signal< sc_logic > video_out_V_data_V_1_vld_out;
    sc_signal< sc_logic > video_out_V_data_V_1_ack_in;
    sc_signal< sc_logic > video_out_V_data_V_1_ack_out;
    sc_signal< sc_lv<16> > video_out_V_data_V_1_payload_A;
    sc_signal< sc_lv<16> > video_out_V_data_V_1_payload_B;
    sc_signal< sc_logic > video_out_V_data_V_1_sel_rd;
    sc_signal< sc_logic > video_out_V_data_V_1_sel_wr;
    sc_signal< sc_logic > video_out_V_data_V_1_sel;
    sc_signal< sc_logic > video_out_V_data_V_1_load_A;
    sc_signal< sc_logic > video_out_V_data_V_1_load_B;
    sc_signal< sc_lv<2> > video_out_V_data_V_1_state;
    sc_signal< sc_logic > video_out_V_data_V_1_state_cmp_full;
    sc_signal< sc_lv<2> > video_out_V_keep_V_1_data_out;
    sc_signal< sc_logic > video_out_V_keep_V_1_vld_in;
    sc_signal< sc_logic > video_out_V_keep_V_1_vld_out;
    sc_signal< sc_logic > video_out_V_keep_V_1_ack_in;
    sc_signal< sc_logic > video_out_V_keep_V_1_ack_out;
    sc_signal< sc_lv<2> > video_out_V_keep_V_1_payload_A;
    sc_signal< sc_lv<2> > video_out_V_keep_V_1_payload_B;
    sc_signal< sc_logic > video_out_V_keep_V_1_sel_rd;
    sc_signal< sc_logic > video_out_V_keep_V_1_sel_wr;
    sc_signal< sc_logic > video_out_V_keep_V_1_sel;
    sc_signal< sc_logic > video_out_V_keep_V_1_load_A;
    sc_signal< sc_logic > video_out_V_keep_V_1_load_B;
    sc_signal< sc_lv<2> > video_out_V_keep_V_1_state;
    sc_signal< sc_logic > video_out_V_keep_V_1_state_cmp_full;
    sc_signal< sc_lv<2> > video_out_V_strb_V_1_data_out;
    sc_signal< sc_logic > video_out_V_strb_V_1_vld_in;
    sc_signal< sc_logic > video_out_V_strb_V_1_vld_out;
    sc_signal< sc_logic > video_out_V_strb_V_1_ack_in;
    sc_signal< sc_logic > video_out_V_strb_V_1_ack_out;
    sc_signal< sc_lv<2> > video_out_V_strb_V_1_payload_A;
    sc_signal< sc_lv<2> > video_out_V_strb_V_1_payload_B;
    sc_signal< sc_logic > video_out_V_strb_V_1_sel_rd;
    sc_signal< sc_logic > video_out_V_strb_V_1_sel_wr;
    sc_signal< sc_logic > video_out_V_strb_V_1_sel;
    sc_signal< sc_logic > video_out_V_strb_V_1_load_A;
    sc_signal< sc_logic > video_out_V_strb_V_1_load_B;
    sc_signal< sc_lv<2> > video_out_V_strb_V_1_state;
    sc_signal< sc_logic > video_out_V_strb_V_1_state_cmp_full;
    sc_signal< sc_lv<1> > video_out_V_user_V_1_data_out;
    sc_signal< sc_logic > video_out_V_user_V_1_vld_in;
    sc_signal< sc_logic > video_out_V_user_V_1_vld_out;
    sc_signal< sc_logic > video_out_V_user_V_1_ack_in;
    sc_signal< sc_logic > video_out_V_user_V_1_ack_out;
    sc_signal< sc_lv<1> > video_out_V_user_V_1_payload_A;
    sc_signal< sc_lv<1> > video_out_V_user_V_1_payload_B;
    sc_signal< sc_logic > video_out_V_user_V_1_sel_rd;
    sc_signal< sc_logic > video_out_V_user_V_1_sel_wr;
    sc_signal< sc_logic > video_out_V_user_V_1_sel;
    sc_signal< sc_logic > video_out_V_user_V_1_load_A;
    sc_signal< sc_logic > video_out_V_user_V_1_load_B;
    sc_signal< sc_lv<2> > video_out_V_user_V_1_state;
    sc_signal< sc_logic > video_out_V_user_V_1_state_cmp_full;
    sc_signal< sc_lv<1> > video_out_V_last_V_1_data_out;
    sc_signal< sc_logic > video_out_V_last_V_1_vld_in;
    sc_signal< sc_logic > video_out_V_last_V_1_vld_out;
    sc_signal< sc_logic > video_out_V_last_V_1_ack_in;
    sc_signal< sc_logic > video_out_V_last_V_1_ack_out;
    sc_signal< sc_lv<1> > video_out_V_last_V_1_payload_A;
    sc_signal< sc_lv<1> > video_out_V_last_V_1_payload_B;
    sc_signal< sc_logic > video_out_V_last_V_1_sel_rd;
    sc_signal< sc_logic > video_out_V_last_V_1_sel_wr;
    sc_signal< sc_logic > video_out_V_last_V_1_sel;
    sc_signal< sc_logic > video_out_V_last_V_1_load_A;
    sc_signal< sc_logic > video_out_V_last_V_1_load_B;
    sc_signal< sc_lv<2> > video_out_V_last_V_1_state;
    sc_signal< sc_logic > video_out_V_last_V_1_state_cmp_full;
    sc_signal< sc_logic > video_in_TDATA_blk_n;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_flag00000000;
    sc_signal< sc_lv<1> > exitcond_reg_237;
    sc_signal< sc_logic > video_out_TDATA_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter1_exitcond_reg_237;
    sc_signal< sc_lv<21> > i_reg_117;
    sc_signal< sc_lv<1> > exitcond_fu_133_p2;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_io;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_io;
    sc_signal< bool > ap_block_pp0_stage0_flag00011001;
    sc_signal< sc_lv<21> > i_1_fu_139_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > tmp_fu_145_p1;
    sc_signal< sc_lv<1> > tmp_reg_246;
    sc_signal< sc_lv<16> > pixOut_3_fu_207_p3;
    sc_signal< sc_lv<2> > tmp_keep_V_1_fu_215_p1;
    sc_signal< sc_lv<2> > tmp_strb_V_1_fu_220_p1;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< bool > ap_block_pp0_stage0_flag00011011;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state3;
    sc_signal< sc_lv<8> > leftover_V_fu_80;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<8> > leftover_V_1_fu_200_p3;
    sc_signal< bool > ap_block_pp0_stage0_flag00001001;
    sc_signal< sc_lv<8> > Y_V_fu_174_p1;
    sc_signal< sc_lv<8> > Cr_V_fu_178_p4;
    sc_signal< sc_lv<16> > pixOut_1_fu_192_p3;
    sc_signal< sc_lv<16> > pixOut_fu_188_p1;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_pp0_stage0;
    static const sc_lv<4> ap_ST_fsm_state6;
    static const bool ap_const_boolean_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<21> ap_const_lv21_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<21> ap_const_lv21_1FA400;
    static const sc_lv<21> ap_const_lv21_1;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_Cr_V_fu_178_p4();
    void thread_Y_V_fu_174_p1();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_block_pp0_stage0_flag00000000();
    void thread_ap_block_pp0_stage0_flag00001001();
    void thread_ap_block_pp0_stage0_flag00011001();
    void thread_ap_block_pp0_stage0_flag00011011();
    void thread_ap_block_state3_pp0_stage0_iter0();
    void thread_ap_block_state4_io();
    void thread_ap_block_state4_pp0_stage0_iter1();
    void thread_ap_block_state5_io();
    void thread_ap_block_state5_pp0_stage0_iter2();
    void thread_ap_condition_pp0_exit_iter0_state3();
    void thread_ap_enable_pp0();
    void thread_ap_idle_pp0();
    void thread_ap_rst_n_inv();
    void thread_exitcond_fu_133_p2();
    void thread_i_1_fu_139_p2();
    void thread_leftover_V_1_fu_200_p3();
    void thread_pixOut_1_fu_192_p3();
    void thread_pixOut_3_fu_207_p3();
    void thread_pixOut_fu_188_p1();
    void thread_tmp_fu_145_p1();
    void thread_tmp_keep_V_1_fu_215_p1();
    void thread_tmp_strb_V_1_fu_220_p1();
    void thread_video_in_TDATA_blk_n();
    void thread_video_in_TREADY();
    void thread_video_in_V_data_V_0_ack_in();
    void thread_video_in_V_data_V_0_ack_out();
    void thread_video_in_V_data_V_0_data_out();
    void thread_video_in_V_data_V_0_load_A();
    void thread_video_in_V_data_V_0_load_B();
    void thread_video_in_V_data_V_0_sel();
    void thread_video_in_V_data_V_0_state_cmp_full();
    void thread_video_in_V_data_V_0_vld_in();
    void thread_video_in_V_data_V_0_vld_out();
    void thread_video_in_V_keep_V_0_ack_in();
    void thread_video_in_V_keep_V_0_ack_out();
    void thread_video_in_V_keep_V_0_data_out();
    void thread_video_in_V_keep_V_0_load_A();
    void thread_video_in_V_keep_V_0_load_B();
    void thread_video_in_V_keep_V_0_sel();
    void thread_video_in_V_keep_V_0_state_cmp_full();
    void thread_video_in_V_keep_V_0_vld_in();
    void thread_video_in_V_keep_V_0_vld_out();
    void thread_video_in_V_last_V_0_ack_in();
    void thread_video_in_V_last_V_0_ack_out();
    void thread_video_in_V_last_V_0_data_out();
    void thread_video_in_V_last_V_0_load_A();
    void thread_video_in_V_last_V_0_load_B();
    void thread_video_in_V_last_V_0_sel();
    void thread_video_in_V_last_V_0_state_cmp_full();
    void thread_video_in_V_last_V_0_vld_in();
    void thread_video_in_V_last_V_0_vld_out();
    void thread_video_in_V_strb_V_0_ack_in();
    void thread_video_in_V_strb_V_0_ack_out();
    void thread_video_in_V_strb_V_0_data_out();
    void thread_video_in_V_strb_V_0_load_A();
    void thread_video_in_V_strb_V_0_load_B();
    void thread_video_in_V_strb_V_0_sel();
    void thread_video_in_V_strb_V_0_state_cmp_full();
    void thread_video_in_V_strb_V_0_vld_in();
    void thread_video_in_V_strb_V_0_vld_out();
    void thread_video_in_V_user_V_0_ack_in();
    void thread_video_in_V_user_V_0_ack_out();
    void thread_video_in_V_user_V_0_data_out();
    void thread_video_in_V_user_V_0_load_A();
    void thread_video_in_V_user_V_0_load_B();
    void thread_video_in_V_user_V_0_sel();
    void thread_video_in_V_user_V_0_state_cmp_full();
    void thread_video_in_V_user_V_0_vld_in();
    void thread_video_in_V_user_V_0_vld_out();
    void thread_video_out_TDATA();
    void thread_video_out_TDATA_blk_n();
    void thread_video_out_TKEEP();
    void thread_video_out_TLAST();
    void thread_video_out_TSTRB();
    void thread_video_out_TUSER();
    void thread_video_out_TVALID();
    void thread_video_out_V_data_V_1_ack_in();
    void thread_video_out_V_data_V_1_ack_out();
    void thread_video_out_V_data_V_1_data_out();
    void thread_video_out_V_data_V_1_load_A();
    void thread_video_out_V_data_V_1_load_B();
    void thread_video_out_V_data_V_1_sel();
    void thread_video_out_V_data_V_1_state_cmp_full();
    void thread_video_out_V_data_V_1_vld_in();
    void thread_video_out_V_data_V_1_vld_out();
    void thread_video_out_V_keep_V_1_ack_in();
    void thread_video_out_V_keep_V_1_ack_out();
    void thread_video_out_V_keep_V_1_data_out();
    void thread_video_out_V_keep_V_1_load_A();
    void thread_video_out_V_keep_V_1_load_B();
    void thread_video_out_V_keep_V_1_sel();
    void thread_video_out_V_keep_V_1_state_cmp_full();
    void thread_video_out_V_keep_V_1_vld_in();
    void thread_video_out_V_keep_V_1_vld_out();
    void thread_video_out_V_last_V_1_ack_in();
    void thread_video_out_V_last_V_1_ack_out();
    void thread_video_out_V_last_V_1_data_out();
    void thread_video_out_V_last_V_1_load_A();
    void thread_video_out_V_last_V_1_load_B();
    void thread_video_out_V_last_V_1_sel();
    void thread_video_out_V_last_V_1_state_cmp_full();
    void thread_video_out_V_last_V_1_vld_in();
    void thread_video_out_V_last_V_1_vld_out();
    void thread_video_out_V_strb_V_1_ack_in();
    void thread_video_out_V_strb_V_1_ack_out();
    void thread_video_out_V_strb_V_1_data_out();
    void thread_video_out_V_strb_V_1_load_A();
    void thread_video_out_V_strb_V_1_load_B();
    void thread_video_out_V_strb_V_1_sel();
    void thread_video_out_V_strb_V_1_state_cmp_full();
    void thread_video_out_V_strb_V_1_vld_in();
    void thread_video_out_V_strb_V_1_vld_out();
    void thread_video_out_V_user_V_1_ack_in();
    void thread_video_out_V_user_V_1_ack_out();
    void thread_video_out_V_user_V_1_data_out();
    void thread_video_out_V_user_V_1_load_A();
    void thread_video_out_V_user_V_1_load_B();
    void thread_video_out_V_user_V_1_sel();
    void thread_video_out_V_user_V_1_state_cmp_full();
    void thread_video_out_V_user_V_1_vld_in();
    void thread_video_out_V_user_V_1_vld_out();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
