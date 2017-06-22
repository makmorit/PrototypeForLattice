// Verilog netlist produced by program LSE :  version Diamond Version 3.9.0.99.2
// Netlist written on Thu Jun 22 17:51:41 2017
//
// Verilog Description of module blinky
//

module blinky (LED) /* synthesis syn_module_defined=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(1[8:14])
    output [3:0]LED;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(2[21:24])
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(10[16:23])
    
    wire GND_net, VCC_net, LED_c_3, LED_c_2, LED_c_1, LED_c_0;
    wire [27:0]count;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(9[16:21])
    
    wire n20, n19, n18, n17, n16, n15, n14, n13, n12, n11, 
        n10, n9, n193, n8, n7, n6, n5, n28, n27, n26, n25, 
        n24, n23, n22, n21, n135, n134, n133, n132, n131, 
        n130, n129, n128, n127, n126, n125, n124, n123, n122, 
        n121, n120, n119, n118, n136, n137, n138, n139, n140, 
        n141, n142, n143, n144, n145, n244, n243, n242, n241, 
        n240, n239, n238, n237, n236, n235, n234, n233, n232, 
        n231;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i56_2_lut (.A(count[26]), .B(count[27]), .Z(LED_c_0)) /* synthesis lut_function=(A+(B)) */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(33[9] 42[16])
    defparam i56_2_lut.init = 16'heeee;
    LUT4 i53_2_lut (.A(count[26]), .B(count[27]), .Z(LED_c_3)) /* synthesis lut_function=((B)+!A) */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(33[9] 42[16])
    defparam i53_2_lut.init = 16'hdddd;
    LUT4 i3_4_lut (.A(count[27]), .B(count[26]), .C(count[25]), .D(count[24]), 
         .Z(n193)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(osc_clk)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "133.00";
    OB LED_pad_3 (.I(LED_c_3), .O(LED[3]));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(2[21:24])
    VLO i1 (.Z(GND_net));
    FD1S3IX count_19__i0 (.D(n145), .CK(osc_clk), .CD(n193), .Q(n28)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i0.GSR = "ENABLED";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1S3IX count_19__i27 (.D(n118), .CK(osc_clk), .CD(n193), .Q(count[27])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i27.GSR = "ENABLED";
    OB LED_pad_2 (.I(LED_c_2), .O(LED[2]));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(2[21:24])
    GSR GSR_INST (.GSR(VCC_net));
    FD1S3IX count_19__i26 (.D(n119), .CK(osc_clk), .CD(n193), .Q(count[26])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i26.GSR = "ENABLED";
    FD1S3IX count_19__i25 (.D(n120), .CK(osc_clk), .CD(n193), .Q(count[25])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i25.GSR = "ENABLED";
    FD1S3IX count_19__i24 (.D(n121), .CK(osc_clk), .CD(n193), .Q(count[24])) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i24.GSR = "ENABLED";
    FD1S3IX count_19__i23 (.D(n122), .CK(osc_clk), .CD(n193), .Q(n5)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i23.GSR = "ENABLED";
    FD1S3IX count_19__i22 (.D(n123), .CK(osc_clk), .CD(n193), .Q(n6)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i22.GSR = "ENABLED";
    FD1S3IX count_19__i21 (.D(n124), .CK(osc_clk), .CD(n193), .Q(n7)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i21.GSR = "ENABLED";
    FD1S3IX count_19__i20 (.D(n125), .CK(osc_clk), .CD(n193), .Q(n8)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i20.GSR = "ENABLED";
    FD1S3IX count_19__i19 (.D(n126), .CK(osc_clk), .CD(n193), .Q(n9)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i19.GSR = "ENABLED";
    FD1S3IX count_19__i18 (.D(n127), .CK(osc_clk), .CD(n193), .Q(n10)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i18.GSR = "ENABLED";
    FD1S3IX count_19__i17 (.D(n128), .CK(osc_clk), .CD(n193), .Q(n11)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i17.GSR = "ENABLED";
    FD1S3IX count_19__i16 (.D(n129), .CK(osc_clk), .CD(n193), .Q(n12)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i16.GSR = "ENABLED";
    FD1S3IX count_19__i15 (.D(n130), .CK(osc_clk), .CD(n193), .Q(n13)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i15.GSR = "ENABLED";
    FD1S3IX count_19__i14 (.D(n131), .CK(osc_clk), .CD(n193), .Q(n14)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i14.GSR = "ENABLED";
    FD1S3IX count_19__i13 (.D(n132), .CK(osc_clk), .CD(n193), .Q(n15)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i13.GSR = "ENABLED";
    FD1S3IX count_19__i12 (.D(n133), .CK(osc_clk), .CD(n193), .Q(n16)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i12.GSR = "ENABLED";
    FD1S3IX count_19__i11 (.D(n134), .CK(osc_clk), .CD(n193), .Q(n17)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i11.GSR = "ENABLED";
    FD1S3IX count_19__i10 (.D(n135), .CK(osc_clk), .CD(n193), .Q(n18)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i10.GSR = "ENABLED";
    FD1S3IX count_19__i9 (.D(n136), .CK(osc_clk), .CD(n193), .Q(n19)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i9.GSR = "ENABLED";
    FD1S3IX count_19__i8 (.D(n137), .CK(osc_clk), .CD(n193), .Q(n20)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i8.GSR = "ENABLED";
    FD1S3IX count_19__i7 (.D(n138), .CK(osc_clk), .CD(n193), .Q(n21)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i7.GSR = "ENABLED";
    FD1S3IX count_19__i6 (.D(n139), .CK(osc_clk), .CD(n193), .Q(n22)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i6.GSR = "ENABLED";
    FD1S3IX count_19__i5 (.D(n140), .CK(osc_clk), .CD(n193), .Q(n23)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i5.GSR = "ENABLED";
    FD1S3IX count_19__i4 (.D(n141), .CK(osc_clk), .CD(n193), .Q(n24)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i4.GSR = "ENABLED";
    FD1S3IX count_19__i3 (.D(n142), .CK(osc_clk), .CD(n193), .Q(n25)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i3.GSR = "ENABLED";
    FD1S3IX count_19__i2 (.D(n143), .CK(osc_clk), .CD(n193), .Q(n26)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i2.GSR = "ENABLED";
    FD1S3IX count_19__i1 (.D(n144), .CK(osc_clk), .CD(n193), .Q(n27)) /* synthesis syn_use_carry_chain=1 */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19__i1.GSR = "ENABLED";
    TSALL TSALL_INST (.TSALL(GND_net));
    CCU2D count_19_add_4_29 (.A0(count[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n244), .S0(n118));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19_add_4_29.INIT0 = 16'h0555;
    defparam count_19_add_4_29.INIT1 = 16'h0000;
    defparam count_19_add_4_29.INJECT1_0 = "NO";
    defparam count_19_add_4_29.INJECT1_1 = "NO";
    CCU2D count_19_add_4_27 (.A0(count[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n243), .COUT(n244), .S0(n120), .S1(n119));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19_add_4_27.INIT0 = 16'h0555;
    defparam count_19_add_4_27.INIT1 = 16'h0555;
    defparam count_19_add_4_27.INJECT1_0 = "NO";
    defparam count_19_add_4_27.INJECT1_1 = "NO";
    CCU2D count_19_add_4_25 (.A0(n5), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n242), .COUT(n243), .S0(n122), .S1(n121));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19_add_4_25.INIT0 = 16'h0555;
    defparam count_19_add_4_25.INIT1 = 16'h0555;
    defparam count_19_add_4_25.INJECT1_0 = "NO";
    defparam count_19_add_4_25.INJECT1_1 = "NO";
    CCU2D count_19_add_4_23 (.A0(n7), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n6), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n241), 
          .COUT(n242), .S0(n124), .S1(n123));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19_add_4_23.INIT0 = 16'h0555;
    defparam count_19_add_4_23.INIT1 = 16'h0555;
    defparam count_19_add_4_23.INJECT1_0 = "NO";
    defparam count_19_add_4_23.INJECT1_1 = "NO";
    CCU2D count_19_add_4_21 (.A0(n9), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n240), 
          .COUT(n241), .S0(n126), .S1(n125));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19_add_4_21.INIT0 = 16'h0555;
    defparam count_19_add_4_21.INIT1 = 16'h0555;
    defparam count_19_add_4_21.INJECT1_0 = "NO";
    defparam count_19_add_4_21.INJECT1_1 = "NO";
    CCU2D count_19_add_4_19 (.A0(n11), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n10), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n239), 
          .COUT(n240), .S0(n128), .S1(n127));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19_add_4_19.INIT0 = 16'h0555;
    defparam count_19_add_4_19.INIT1 = 16'h0555;
    defparam count_19_add_4_19.INJECT1_0 = "NO";
    defparam count_19_add_4_19.INJECT1_1 = "NO";
    CCU2D count_19_add_4_17 (.A0(n13), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n238), 
          .COUT(n239), .S0(n130), .S1(n129));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19_add_4_17.INIT0 = 16'h0555;
    defparam count_19_add_4_17.INIT1 = 16'h0555;
    defparam count_19_add_4_17.INJECT1_0 = "NO";
    defparam count_19_add_4_17.INJECT1_1 = "NO";
    CCU2D count_19_add_4_15 (.A0(n15), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n14), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n237), 
          .COUT(n238), .S0(n132), .S1(n131));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19_add_4_15.INIT0 = 16'h0555;
    defparam count_19_add_4_15.INIT1 = 16'h0555;
    defparam count_19_add_4_15.INJECT1_0 = "NO";
    defparam count_19_add_4_15.INJECT1_1 = "NO";
    CCU2D count_19_add_4_13 (.A0(n17), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n16), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n236), 
          .COUT(n237), .S0(n134), .S1(n133));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19_add_4_13.INIT0 = 16'h0555;
    defparam count_19_add_4_13.INIT1 = 16'h0555;
    defparam count_19_add_4_13.INJECT1_0 = "NO";
    defparam count_19_add_4_13.INJECT1_1 = "NO";
    CCU2D count_19_add_4_11 (.A0(n19), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n18), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n235), 
          .COUT(n236), .S0(n136), .S1(n135));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19_add_4_11.INIT0 = 16'h0555;
    defparam count_19_add_4_11.INIT1 = 16'h0555;
    defparam count_19_add_4_11.INJECT1_0 = "NO";
    defparam count_19_add_4_11.INJECT1_1 = "NO";
    CCU2D count_19_add_4_9 (.A0(n21), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n20), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n234), 
          .COUT(n235), .S0(n138), .S1(n137));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19_add_4_9.INIT0 = 16'h0555;
    defparam count_19_add_4_9.INIT1 = 16'h0555;
    defparam count_19_add_4_9.INJECT1_0 = "NO";
    defparam count_19_add_4_9.INJECT1_1 = "NO";
    CCU2D count_19_add_4_7 (.A0(n23), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n22), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n233), 
          .COUT(n234), .S0(n140), .S1(n139));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19_add_4_7.INIT0 = 16'h0555;
    defparam count_19_add_4_7.INIT1 = 16'h0555;
    defparam count_19_add_4_7.INJECT1_0 = "NO";
    defparam count_19_add_4_7.INJECT1_1 = "NO";
    CCU2D count_19_add_4_5 (.A0(n25), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n24), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n232), 
          .COUT(n233), .S0(n142), .S1(n141));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19_add_4_5.INIT0 = 16'h0555;
    defparam count_19_add_4_5.INIT1 = 16'h0555;
    defparam count_19_add_4_5.INJECT1_0 = "NO";
    defparam count_19_add_4_5.INJECT1_1 = "NO";
    CCU2D count_19_add_4_3 (.A0(n27), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n26), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n231), 
          .COUT(n232), .S0(n144), .S1(n143));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19_add_4_3.INIT0 = 16'h0555;
    defparam count_19_add_4_3.INIT1 = 16'h0555;
    defparam count_19_add_4_3.INJECT1_0 = "NO";
    defparam count_19_add_4_3.INJECT1_1 = "NO";
    CCU2D count_19_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n28), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n231), .S1(n145));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(25[22:40])
    defparam count_19_add_4_1.INIT0 = 16'hF000;
    defparam count_19_add_4_1.INIT1 = 16'h0555;
    defparam count_19_add_4_1.INJECT1_0 = "NO";
    defparam count_19_add_4_1.INJECT1_1 = "NO";
    LUT4 i55_2_lut (.A(count[26]), .B(count[27]), .Z(LED_c_2)) /* synthesis lut_function=(A+!(B)) */ ;   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(33[9] 42[16])
    defparam i55_2_lut.init = 16'hbbbb;
    LUT4 i63_2_lut (.A(count[26]), .B(count[27]), .Z(LED_c_1)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i63_2_lut.init = 16'h7777;
    OB LED_pad_1 (.I(LED_c_1), .O(LED[1]));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(2[21:24])
    OB LED_pad_0 (.I(LED_c_0), .O(LED[0]));   // z:/github/prototypeforlattice/machxo2_blinky/blinky.v(2[21:24])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

