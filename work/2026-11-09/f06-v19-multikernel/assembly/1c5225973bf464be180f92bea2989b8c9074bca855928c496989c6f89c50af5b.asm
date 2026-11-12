; SHA-256 1c5225973bf464be180f92bea2989b8c9074bca855928c496989c6f89c50af5b
; P800 Cluster · XTDK LLVM 19 · 6916 / 6916 words decoded
; bound names: triton_per_fused__softmax_add_exp_prepare_softmax_online_sub_0
000000  17200000  xor zero, zero, zero
000004  1f420000  addli r4, zero, 4
000008  1f041000  addli r8, zero, 8
00000c  9f77f0ff  addli r15, zero, -1
000010  80310002  core_id r3
000014  00510102  load_param_i r2, 2
000018  ab800000  lui r1, 8
00001c  ab020000  lui r5, 0
000020  9f820200  addli r5, r5, 0
000024  8b805018  sub.u r1, r1, r5
000028  1b85f100  andi r10, r3, 15
00002c  9b144000  ori r9, zero, 4
000030  3fb04100  blt.s r3, r4, 12
000034  1f45f5ff  addli r10, r10, -4
000038  9b146000  ori r9, zero, 6
00003c  0b059538  mod.u r10, r10, r9
000040  1f7a1100  addli r20, r2, 15
000044  9b454a00  srli r11, r20, 4
000048  1bc64100  srli r12, r3, 4
00004c  8b86b030  div.u r13, r1, r11
000050  1f160600  addli r12, r12, 1
000054  8b00d620  mul.u r1, r12, r13
000058  8b805010  add.u r1, r1, r5
00005c  9f8e0000  addli sp, r1, 0
000060  1bba6700  slli r20, r15, 6
000064  978e4e01  and sp, sp, r20
000068  bb003000  bneq zero, r3, 32
00006c  80520202  load_param_i r5, 4
000070  00d20102  load_param_i r4, 3
000074  ab0900f0  lui r19, 983040
000078  9f495000  addli r19, zero, 44
00007c  00200300  mfence { sm, gm }
000080  ff090200  l_gm2sm r19, zero, 0(r[5:6])
000084  00200300  mfence { sm, gm }
000088  abfa0000  lui r21, 15
00008c  9b9afaff  ori r21, r21, 4095
000090  80a10a04  csr_set csr3, r21
000094  00d00100  sync_group
000098  57160000  jal 176
00009c  00a00100  mfence { lm, sm }
0000a0  00d00100  sync_group
0000a4  fe8007e0  vmmov mr1, r15
0000a8  fe900720  vmmovh mr1, r15
0000ac  d71b0000  jal 220
0000b0  fe8007e0  vmmov mr1, r15
0000b4  fe900720  vmmovh mr1, r15
0000b8  1f8a8eff  addli r20, sp, -64
0000bc  4a100002  vloads_mask16.mz vr0{mr1}, 0(zero)
0000c0  46000a02  vstore.mz vr0{mr1}, 0(r20)
0000c4  00a00100  mfence { lm, sm }
0000c8  00d00100  sync_group
0000cc  97a01000  xor r1, r1, r1
0000d0  1f8f0e00  addli r30, sp, 0
0000d4  d71b0000  jal 220
0000d8  00400000  trap
0000dc  9f8e8ec8  addli sp, sp, -7104
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  2b420000  lui r4, 4
0000ec  1f8f0e37  addli r30, sp, 7040
0000f0  80550002  load_param_i r11, 0
0000f4  9bb12000  slli r3, r1, 2
0000f8  1f010100  addli r2, r2, 0
0000fc  1b120201  ori r4, r4, 16
000100  e3444f00  loadli.w r9,  36(r30)
000104  e3024f00  loadli.w r5,  32(r30)
000108  e3035f00  loadli.w r7,  40(r30)
00010c  0b942110  add.s r8, r3, r2
000110  8b925420  mul.s r5, r9, r5
000114  0b134410  add.s r6, r8, r4
000118  8b927220  mul.s r5, r5, r7
00011c  674f6fd0  storeli.w r6, -5900(r30)
000120  73600300  stores.w zero, 0(r6)
000124  2bf30000  lui r6, 15
000128  00a00300  mfence { lm, sm, gm }
00012c  1b15f3ff  ori r10, r6, 4095
000130  2bf37fff  lui r6, 1046527
000134  1b13f3ff  ori r6, r6, 4095
000138  80210504  csr_set csr3, r10
00013c  00d00100  sync_group
000140  e70f8fd0  storeli.w r8, -5896(r30)
000144  73606400  stores.w r6, 0(r8)
000148  00a00300  mfence { lm, sm, gm }
00014c  e741afda  storeli.w r10, -4836(r30)
000150  80210504  csr_set csr3, r10
000154  00d00100  sync_group
000158  670f5fd0  storeli.w r5, -5904(r30)
00015c  cb91b234  ble.s r5, r11, 26724
000160  9f420000  addli r5, zero, 4
000164  9f140000  addli r9, zero, 1
000168  2b0affff  lui r20, 1048560
00016c  9f0b0004  addli r23, zero, 512
000170  9f0d0ff0  addli r27, r30, -2048
000174  eea49462  vxor.u.mz vr9{mr1}, vr9, vr9
000178  8b925030  div.s r5, r1, r5
00017c  e74e5fd0  storeli.w r5, -5908(r30)
000180  9bb22200  slli r5, r5, 2
000184  8b935018  sub.s r7, r1, r5
000188  eb528f00  load.d r[6:7], 8(r30)
00018c  9b803000  andi r1, r1, 3
000190  1bb58300  slli r10, r7, 8
000194  80d30002  load_param_i r7, 1
000198  e7011fda  storeli.w r1, -4840(r30)
00019c  674e7fd0  storeli.w r7, -5916(r30)
0001a0  9b131500  ori r7, r10, 1
0001a4  1b160501  ori r12, r10, 16
0001a8  e70eafd0  storeli.w r10, -5912(r30)
0001ac  670e7fd0  storeli.w r7, -5920(r30)
0001b0  9b132500  ori r7, r10, 2
0001b4  674acfd0  storeli.w r12, -5980(r30)
0001b8  e74d7fd0  storeli.w r7, -5924(r30)
0001bc  9b133500  ori r7, r10, 3
0001c0  e70d7fd0  storeli.w r7, -5928(r30)
0001c4  9b134500  ori r7, r10, 4
0001c8  674d7fd0  storeli.w r7, -5932(r30)
0001cc  9b135500  ori r7, r10, 5
0001d0  670d7fd0  storeli.w r7, -5936(r30)
0001d4  9b136500  ori r7, r10, 6
0001d8  e74c7fd0  storeli.w r7, -5940(r30)
0001dc  9b137500  ori r7, r10, 7
0001e0  e70c7fd0  storeli.w r7, -5944(r30)
0001e4  9b138500  ori r7, r10, 8
0001e8  674c7fd0  storeli.w r7, -5948(r30)
0001ec  9b139500  ori r7, r10, 9
0001f0  670c7fd0  storeli.w r7, -5952(r30)
0001f4  9b13a500  ori r7, r10, 10
0001f8  e74b7fd0  storeli.w r7, -5956(r30)
0001fc  9b13b500  ori r7, r10, 11
000200  e70b7fd0  storeli.w r7, -5960(r30)
000204  9b13c500  ori r7, r10, 12
000208  674b7fd0  storeli.w r7, -5964(r30)
00020c  9b13d500  ori r7, r10, 13
000210  670b7fd0  storeli.w r7, -5968(r30)
000214  9b13e500  ori r7, r10, 14
000218  e74a7fd0  storeli.w r7, -5972(r30)
00021c  9b13f500  ori r7, r10, 15
000220  e70a7fd0  storeli.w r7, -5976(r30)
000224  b3130528  sext_int2long r[8:9], r10
000228  97b39302  sll.d r[8:9], r[8:9], r9
00022c  abf4ffff  lui r9, 1048575
000230  8ba27210  add.ul r[6:7], r[6:7], r[8:9]
000234  9f033fd1  addli r7, r30, -5992
000238  73b05300  store.d r[6:7], 0(r7)
00023c  9b9204ff  ori r5, r9, 4080
000240  1b131501  ori r6, r10, 17
000244  97815100  and r3, r3, r5
000248  9b122501  ori r5, r10, 18
00024c  67496fd0  storeli.w r6, -5996(r30)
000250  0b912110  add.s r2, r3, r2
000254  67095fd0  storeli.w r5, -6000(r30)
000258  8b104110  add.s r1, r2, r4
00025c  e7482fd0  storeli.w r2, -6004(r30)
000260  2bf1ff7f  lui r2, 524287
000264  e74f1fd0  storeli.w r1, -5892(r30)
000268  ab700000  lui r1, 7
00026c  1b1bf1ff  ori r22, r2, 4095
000270  9b99f0ff  ori r19, r1, 4095
000274  9b103501  ori r1, r10, 19
000278  e74f6fdf  storeli.w r22, -4100(r30)
00027c  e7431fd0  storeli.w r1, -6084(r30)
000280  9b104501  ori r1, r10, 20
000284  e70f3fdf  storeli.w r19, -4104(r30)
000288  e7031fd0  storeli.w r1, -6088(r30)
00028c  9b105501  ori r1, r10, 21
000290  67431fd0  storeli.w r1, -6092(r30)
000294  9b106501  ori r1, r10, 22
000298  67031fd0  storeli.w r1, -6096(r30)
00029c  9b107501  ori r1, r10, 23
0002a0  e7421fd0  storeli.w r1, -6100(r30)
0002a4  9b108501  ori r1, r10, 24
0002a8  e7021fd0  storeli.w r1, -6104(r30)
0002ac  9b109501  ori r1, r10, 25
0002b0  67421fd0  storeli.w r1, -6108(r30)
0002b4  9b10a501  ori r1, r10, 26
0002b8  67021fd0  storeli.w r1, -6112(r30)
0002bc  9b10b501  ori r1, r10, 27
0002c0  e7411fd0  storeli.w r1, -6116(r30)
0002c4  9b10c501  ori r1, r10, 28
0002c8  e7011fd0  storeli.w r1, -6120(r30)
0002cc  9b10d501  ori r1, r10, 29
0002d0  67411fd0  storeli.w r1, -6124(r30)
0002d4  9b10e501  ori r1, r10, 30
0002d8  67011fd0  storeli.w r1, -6128(r30)
0002dc  9b10f501  ori r1, r10, 31
0002e0  e7401fd0  storeli.w r1, -6132(r30)
0002e4  9b100502  ori r1, r10, 32
0002e8  e7001fd0  storeli.w r1, -6136(r30)
0002ec  9b101502  ori r1, r10, 33
0002f0  67401fd0  storeli.w r1, -6140(r30)
0002f4  9b102502  ori r1, r10, 34
0002f8  67001fd0  storeli.w r1, -6144(r30)
0002fc  9b103502  ori r1, r10, 35
000300  e74f1fce  storeli.w r1, -6148(r30)
000304  9b104502  ori r1, r10, 36
000308  e70f1fce  storeli.w r1, -6152(r30)
00030c  9b105502  ori r1, r10, 37
000310  674f1fce  storeli.w r1, -6156(r30)
000314  9b106502  ori r1, r10, 38
000318  670f1fce  storeli.w r1, -6160(r30)
00031c  9b107502  ori r1, r10, 39
000320  e74e1fce  storeli.w r1, -6164(r30)
000324  9b108502  ori r1, r10, 40
000328  e70e1fce  storeli.w r1, -6168(r30)
00032c  9b109502  ori r1, r10, 41
000330  674e1fce  storeli.w r1, -6172(r30)
000334  9b10a502  ori r1, r10, 42
000338  670e1fce  storeli.w r1, -6176(r30)
00033c  9b10b502  ori r1, r10, 43
000340  e74d1fce  storeli.w r1, -6180(r30)
000344  9b10c502  ori r1, r10, 44
000348  e70d1fce  storeli.w r1, -6184(r30)
00034c  9b10d502  ori r1, r10, 45
000350  674d1fce  storeli.w r1, -6188(r30)
000354  9b10e502  ori r1, r10, 46
000358  670d1fce  storeli.w r1, -6192(r30)
00035c  9b10f502  ori r1, r10, 47
000360  e74c1fce  storeli.w r1, -6196(r30)
000364  9b100503  ori r1, r10, 48
000368  e70c1fce  storeli.w r1, -6200(r30)
00036c  9b101503  ori r1, r10, 49
000370  674c1fce  storeli.w r1, -6204(r30)
000374  9b102503  ori r1, r10, 50
000378  670c1fce  storeli.w r1, -6208(r30)
00037c  9b103503  ori r1, r10, 51
000380  e74b1fce  storeli.w r1, -6212(r30)
000384  9b104503  ori r1, r10, 52
000388  e70b1fce  storeli.w r1, -6216(r30)
00038c  9b105503  ori r1, r10, 53
000390  674b1fce  storeli.w r1, -6220(r30)
000394  9b106503  ori r1, r10, 54
000398  670b1fce  storeli.w r1, -6224(r30)
00039c  9b107503  ori r1, r10, 55
0003a0  e74a1fce  storeli.w r1, -6228(r30)
0003a4  9b108503  ori r1, r10, 56
0003a8  e70a1fce  storeli.w r1, -6232(r30)
0003ac  9b109503  ori r1, r10, 57
0003b0  674a1fce  storeli.w r1, -6236(r30)
0003b4  9b10a503  ori r1, r10, 58
0003b8  670a1fce  storeli.w r1, -6240(r30)
0003bc  9b10b503  ori r1, r10, 59
0003c0  e7491fce  storeli.w r1, -6244(r30)
0003c4  9b10c503  ori r1, r10, 60
0003c8  e7091fce  storeli.w r1, -6248(r30)
0003cc  9b10d503  ori r1, r10, 61
0003d0  67491fce  storeli.w r1, -6252(r30)
0003d4  9b10e503  ori r1, r10, 62
0003d8  67091fce  storeli.w r1, -6256(r30)
0003dc  9b10f503  ori r1, r10, 63
0003e0  e7481fce  storeli.w r1, -6260(r30)
0003e4  9b100504  ori r1, r10, 64
0003e8  e7081fce  storeli.w r1, -6264(r30)
0003ec  9b101504  ori r1, r10, 65
0003f0  67481fce  storeli.w r1, -6268(r30)
0003f4  9b102504  ori r1, r10, 66
0003f8  67081fce  storeli.w r1, -6272(r30)
0003fc  9b103504  ori r1, r10, 67
000400  e7471fce  storeli.w r1, -6276(r30)
000404  9b104504  ori r1, r10, 68
000408  e7071fce  storeli.w r1, -6280(r30)
00040c  9b105504  ori r1, r10, 69
000410  67471fce  storeli.w r1, -6284(r30)
000414  9b106504  ori r1, r10, 70
000418  67071fce  storeli.w r1, -6288(r30)
00041c  9b107504  ori r1, r10, 71
000420  e7461fce  storeli.w r1, -6292(r30)
000424  9b108504  ori r1, r10, 72
000428  e7061fce  storeli.w r1, -6296(r30)
00042c  9b109504  ori r1, r10, 73
000430  67461fce  storeli.w r1, -6300(r30)
000434  9b10a504  ori r1, r10, 74
000438  67061fce  storeli.w r1, -6304(r30)
00043c  9b10b504  ori r1, r10, 75
000440  e7451fce  storeli.w r1, -6308(r30)
000444  9b10c504  ori r1, r10, 76
000448  e7051fce  storeli.w r1, -6312(r30)
00044c  9b10d504  ori r1, r10, 77
000450  67451fce  storeli.w r1, -6316(r30)
000454  9b10e504  ori r1, r10, 78
000458  67051fce  storeli.w r1, -6320(r30)
00045c  9b10f504  ori r1, r10, 79
000460  e7441fce  storeli.w r1, -6324(r30)
000464  9b100505  ori r1, r10, 80
000468  e7041fce  storeli.w r1, -6328(r30)
00046c  9b101505  ori r1, r10, 81
000470  67441fce  storeli.w r1, -6332(r30)
000474  9b102505  ori r1, r10, 82
000478  67041fce  storeli.w r1, -6336(r30)
00047c  9b103505  ori r1, r10, 83
000480  e7431fce  storeli.w r1, -6340(r30)
000484  9b104505  ori r1, r10, 84
000488  e7031fce  storeli.w r1, -6344(r30)
00048c  9b105505  ori r1, r10, 85
000490  67431fce  storeli.w r1, -6348(r30)
000494  9b106505  ori r1, r10, 86
000498  67031fce  storeli.w r1, -6352(r30)
00049c  9b107505  ori r1, r10, 87
0004a0  e7421fce  storeli.w r1, -6356(r30)
0004a4  9b108505  ori r1, r10, 88
0004a8  e7021fce  storeli.w r1, -6360(r30)
0004ac  9b109505  ori r1, r10, 89
0004b0  67421fce  storeli.w r1, -6364(r30)
0004b4  9b10a505  ori r1, r10, 90
0004b8  67021fce  storeli.w r1, -6368(r30)
0004bc  9b10b505  ori r1, r10, 91
0004c0  e7411fce  storeli.w r1, -6372(r30)
0004c4  9b10c505  ori r1, r10, 92
0004c8  e7011fce  storeli.w r1, -6376(r30)
0004cc  9b10d505  ori r1, r10, 93
0004d0  67411fce  storeli.w r1, -6380(r30)
0004d4  9b10e505  ori r1, r10, 94
0004d8  67011fce  storeli.w r1, -6384(r30)
0004dc  9b10f505  ori r1, r10, 95
0004e0  e7401fce  storeli.w r1, -6388(r30)
0004e4  9b100506  ori r1, r10, 96
0004e8  e7001fce  storeli.w r1, -6392(r30)
0004ec  9b101506  ori r1, r10, 97
0004f0  67401fce  storeli.w r1, -6396(r30)
0004f4  9b102506  ori r1, r10, 98
0004f8  67001fce  storeli.w r1, -6400(r30)
0004fc  9b103506  ori r1, r10, 99
000500  e74f1fcc  storeli.w r1, -6404(r30)
000504  9b104506  ori r1, r10, 100
000508  e70f1fcc  storeli.w r1, -6408(r30)
00050c  9b105506  ori r1, r10, 101
000510  674f1fcc  storeli.w r1, -6412(r30)
000514  9b106506  ori r1, r10, 102
000518  670f1fcc  storeli.w r1, -6416(r30)
00051c  9b107506  ori r1, r10, 103
000520  e74e1fcc  storeli.w r1, -6420(r30)
000524  9b108506  ori r1, r10, 104
000528  e70e1fcc  storeli.w r1, -6424(r30)
00052c  9b109506  ori r1, r10, 105
000530  674e1fcc  storeli.w r1, -6428(r30)
000534  9b10a506  ori r1, r10, 106
000538  670e1fcc  storeli.w r1, -6432(r30)
00053c  9b10b506  ori r1, r10, 107
000540  e74d1fcc  storeli.w r1, -6436(r30)
000544  9b10c506  ori r1, r10, 108
000548  e70d1fcc  storeli.w r1, -6440(r30)
00054c  9b10d506  ori r1, r10, 109
000550  674d1fcc  storeli.w r1, -6444(r30)
000554  9b10e506  ori r1, r10, 110
000558  670d1fcc  storeli.w r1, -6448(r30)
00055c  9b10f506  ori r1, r10, 111
000560  e74c1fcc  storeli.w r1, -6452(r30)
000564  9b100507  ori r1, r10, 112
000568  e70c1fcc  storeli.w r1, -6456(r30)
00056c  9b101507  ori r1, r10, 113
000570  674c1fcc  storeli.w r1, -6460(r30)
000574  9b102507  ori r1, r10, 114
000578  670c1fcc  storeli.w r1, -6464(r30)
00057c  9b103507  ori r1, r10, 115
000580  e74b1fcc  storeli.w r1, -6468(r30)
000584  9b104507  ori r1, r10, 116
000588  e70b1fcc  storeli.w r1, -6472(r30)
00058c  9b105507  ori r1, r10, 117
000590  674b1fcc  storeli.w r1, -6476(r30)
000594  9b106507  ori r1, r10, 118
000598  670b1fcc  storeli.w r1, -6480(r30)
00059c  9b107507  ori r1, r10, 119
0005a0  e74a1fcc  storeli.w r1, -6484(r30)
0005a4  9b108507  ori r1, r10, 120
0005a8  e70a1fcc  storeli.w r1, -6488(r30)
0005ac  9b109507  ori r1, r10, 121
0005b0  674a1fcc  storeli.w r1, -6492(r30)
0005b4  9b10a507  ori r1, r10, 122
0005b8  670a1fcc  storeli.w r1, -6496(r30)
0005bc  9b10b507  ori r1, r10, 123
0005c0  e7491fcc  storeli.w r1, -6500(r30)
0005c4  9b10c507  ori r1, r10, 124
0005c8  e7091fcc  storeli.w r1, -6504(r30)
0005cc  9b10d507  ori r1, r10, 125
0005d0  67491fcc  storeli.w r1, -6508(r30)
0005d4  9b10e507  ori r1, r10, 126
0005d8  67091fcc  storeli.w r1, -6512(r30)
0005dc  9b10f507  ori r1, r10, 127
0005e0  e7481fcc  storeli.w r1, -6516(r30)
0005e4  9b100508  ori r1, r10, 128
0005e8  e7081fcc  storeli.w r1, -6520(r30)
0005ec  9b101508  ori r1, r10, 129
0005f0  67481fcc  storeli.w r1, -6524(r30)
0005f4  9b102508  ori r1, r10, 130
0005f8  67081fcc  storeli.w r1, -6528(r30)
0005fc  9b103508  ori r1, r10, 131
000600  e7471fcc  storeli.w r1, -6532(r30)
000604  9b104508  ori r1, r10, 132
000608  e7071fcc  storeli.w r1, -6536(r30)
00060c  9b105508  ori r1, r10, 133
000610  67471fcc  storeli.w r1, -6540(r30)
000614  9b106508  ori r1, r10, 134
000618  67071fcc  storeli.w r1, -6544(r30)
00061c  9b107508  ori r1, r10, 135
000620  e7461fcc  storeli.w r1, -6548(r30)
000624  9b108508  ori r1, r10, 136
000628  e7061fcc  storeli.w r1, -6552(r30)
00062c  9b109508  ori r1, r10, 137
000630  67461fcc  storeli.w r1, -6556(r30)
000634  9b10a508  ori r1, r10, 138
000638  67061fcc  storeli.w r1, -6560(r30)
00063c  9b10b508  ori r1, r10, 139
000640  e7451fcc  storeli.w r1, -6564(r30)
000644  9b10c508  ori r1, r10, 140
000648  e7051fcc  storeli.w r1, -6568(r30)
00064c  9b10d508  ori r1, r10, 141
000650  67451fcc  storeli.w r1, -6572(r30)
000654  9b10e508  ori r1, r10, 142
000658  67051fcc  storeli.w r1, -6576(r30)
00065c  9b10f508  ori r1, r10, 143
000660  e7441fcc  storeli.w r1, -6580(r30)
000664  9b100509  ori r1, r10, 144
000668  e7041fcc  storeli.w r1, -6584(r30)
00066c  9b101509  ori r1, r10, 145
000670  67441fcc  storeli.w r1, -6588(r30)
000674  9b102509  ori r1, r10, 146
000678  67041fcc  storeli.w r1, -6592(r30)
00067c  9b103509  ori r1, r10, 147
000680  e7431fcc  storeli.w r1, -6596(r30)
000684  9b104509  ori r1, r10, 148
000688  e7031fcc  storeli.w r1, -6600(r30)
00068c  9b105509  ori r1, r10, 149
000690  67431fcc  storeli.w r1, -6604(r30)
000694  9b106509  ori r1, r10, 150
000698  67031fcc  storeli.w r1, -6608(r30)
00069c  9b107509  ori r1, r10, 151
0006a0  e7421fcc  storeli.w r1, -6612(r30)
0006a4  9b108509  ori r1, r10, 152
0006a8  e7021fcc  storeli.w r1, -6616(r30)
0006ac  9b109509  ori r1, r10, 153
0006b0  67421fcc  storeli.w r1, -6620(r30)
0006b4  9b10a509  ori r1, r10, 154
0006b8  67021fcc  storeli.w r1, -6624(r30)
0006bc  9b10b509  ori r1, r10, 155
0006c0  e7411fcc  storeli.w r1, -6628(r30)
0006c4  9b10c509  ori r1, r10, 156
0006c8  e7011fcc  storeli.w r1, -6632(r30)
0006cc  9b10d509  ori r1, r10, 157
0006d0  67411fcc  storeli.w r1, -6636(r30)
0006d4  9b10e509  ori r1, r10, 158
0006d8  67011fcc  storeli.w r1, -6640(r30)
0006dc  9b10f509  ori r1, r10, 159
0006e0  e7401fcc  storeli.w r1, -6644(r30)
0006e4  9b10050a  ori r1, r10, 160
0006e8  e7001fcc  storeli.w r1, -6648(r30)
0006ec  9b10150a  ori r1, r10, 161
0006f0  67401fcc  storeli.w r1, -6652(r30)
0006f4  9b10250a  ori r1, r10, 162
0006f8  67001fcc  storeli.w r1, -6656(r30)
0006fc  9b10350a  ori r1, r10, 163
000700  e74f1fca  storeli.w r1, -6660(r30)
000704  9b10450a  ori r1, r10, 164
000708  e70f1fca  storeli.w r1, -6664(r30)
00070c  9b10550a  ori r1, r10, 165
000710  674f1fca  storeli.w r1, -6668(r30)
000714  9b10650a  ori r1, r10, 166
000718  670f1fca  storeli.w r1, -6672(r30)
00071c  9b10750a  ori r1, r10, 167
000720  e74e1fca  storeli.w r1, -6676(r30)
000724  9b10850a  ori r1, r10, 168
000728  e70e1fca  storeli.w r1, -6680(r30)
00072c  9b10950a  ori r1, r10, 169
000730  674e1fca  storeli.w r1, -6684(r30)
000734  9b10a50a  ori r1, r10, 170
000738  670e1fca  storeli.w r1, -6688(r30)
00073c  9b10b50a  ori r1, r10, 171
000740  e74d1fca  storeli.w r1, -6692(r30)
000744  9b10c50a  ori r1, r10, 172
000748  e70d1fca  storeli.w r1, -6696(r30)
00074c  9b10d50a  ori r1, r10, 173
000750  674d1fca  storeli.w r1, -6700(r30)
000754  9b10e50a  ori r1, r10, 174
000758  670d1fca  storeli.w r1, -6704(r30)
00075c  9b10f50a  ori r1, r10, 175
000760  e74c1fca  storeli.w r1, -6708(r30)
000764  9b10050b  ori r1, r10, 176
000768  e70c1fca  storeli.w r1, -6712(r30)
00076c  9b10150b  ori r1, r10, 177
000770  674c1fca  storeli.w r1, -6716(r30)
000774  9b10250b  ori r1, r10, 178
000778  670c1fca  storeli.w r1, -6720(r30)
00077c  9b10350b  ori r1, r10, 179
000780  e74b1fca  storeli.w r1, -6724(r30)
000784  9b10450b  ori r1, r10, 180
000788  e70b1fca  storeli.w r1, -6728(r30)
00078c  9b10550b  ori r1, r10, 181
000790  674b1fca  storeli.w r1, -6732(r30)
000794  9b10650b  ori r1, r10, 182
000798  670b1fca  storeli.w r1, -6736(r30)
00079c  9b10750b  ori r1, r10, 183
0007a0  e74a1fca  storeli.w r1, -6740(r30)
0007a4  9b10850b  ori r1, r10, 184
0007a8  e70a1fca  storeli.w r1, -6744(r30)
0007ac  9b10950b  ori r1, r10, 185
0007b0  674a1fca  storeli.w r1, -6748(r30)
0007b4  9b10a50b  ori r1, r10, 186
0007b8  670a1fca  storeli.w r1, -6752(r30)
0007bc  9b10b50b  ori r1, r10, 187
0007c0  e7491fca  storeli.w r1, -6756(r30)
0007c4  9b10c50b  ori r1, r10, 188
0007c8  e7091fca  storeli.w r1, -6760(r30)
0007cc  9b10d50b  ori r1, r10, 189
0007d0  67491fca  storeli.w r1, -6764(r30)
0007d4  9b10e50b  ori r1, r10, 190
0007d8  67091fca  storeli.w r1, -6768(r30)
0007dc  9b10f50b  ori r1, r10, 191
0007e0  e7481fca  storeli.w r1, -6772(r30)
0007e4  9b10050c  ori r1, r10, 192
0007e8  e7081fca  storeli.w r1, -6776(r30)
0007ec  9b10150c  ori r1, r10, 193
0007f0  67481fca  storeli.w r1, -6780(r30)
0007f4  9b10250c  ori r1, r10, 194
0007f8  67081fca  storeli.w r1, -6784(r30)
0007fc  9b10350c  ori r1, r10, 195
000800  e7471fca  storeli.w r1, -6788(r30)
000804  9b10450c  ori r1, r10, 196
000808  e7071fca  storeli.w r1, -6792(r30)
00080c  9b10550c  ori r1, r10, 197
000810  67471fca  storeli.w r1, -6796(r30)
000814  9b10650c  ori r1, r10, 198
000818  67071fca  storeli.w r1, -6800(r30)
00081c  9b10750c  ori r1, r10, 199
000820  e7461fca  storeli.w r1, -6804(r30)
000824  9b10850c  ori r1, r10, 200
000828  e7061fca  storeli.w r1, -6808(r30)
00082c  9b10950c  ori r1, r10, 201
000830  67461fca  storeli.w r1, -6812(r30)
000834  9b10a50c  ori r1, r10, 202
000838  67061fca  storeli.w r1, -6816(r30)
00083c  9b10b50c  ori r1, r10, 203
000840  e7451fca  storeli.w r1, -6820(r30)
000844  9b10c50c  ori r1, r10, 204
000848  e7051fca  storeli.w r1, -6824(r30)
00084c  9b10d50c  ori r1, r10, 205
000850  67451fca  storeli.w r1, -6828(r30)
000854  9b10e50c  ori r1, r10, 206
000858  67051fca  storeli.w r1, -6832(r30)
00085c  9b10f50c  ori r1, r10, 207
000860  e7441fca  storeli.w r1, -6836(r30)
000864  9b10050d  ori r1, r10, 208
000868  e7041fca  storeli.w r1, -6840(r30)
00086c  9b10150d  ori r1, r10, 209
000870  67441fca  storeli.w r1, -6844(r30)
000874  9b10250d  ori r1, r10, 210
000878  67041fca  storeli.w r1, -6848(r30)
00087c  9b10350d  ori r1, r10, 211
000880  e7431fca  storeli.w r1, -6852(r30)
000884  9b10450d  ori r1, r10, 212
000888  e7031fca  storeli.w r1, -6856(r30)
00088c  9b10550d  ori r1, r10, 213
000890  67431fca  storeli.w r1, -6860(r30)
000894  9b10650d  ori r1, r10, 214
000898  67031fca  storeli.w r1, -6864(r30)
00089c  9b10750d  ori r1, r10, 215
0008a0  e7421fca  storeli.w r1, -6868(r30)
0008a4  9b10850d  ori r1, r10, 216
0008a8  e7021fca  storeli.w r1, -6872(r30)
0008ac  9b10950d  ori r1, r10, 217
0008b0  67421fca  storeli.w r1, -6876(r30)
0008b4  9b10a50d  ori r1, r10, 218
0008b8  67021fca  storeli.w r1, -6880(r30)
0008bc  9b10b50d  ori r1, r10, 219
0008c0  e7411fca  storeli.w r1, -6884(r30)
0008c4  9b10c50d  ori r1, r10, 220
0008c8  e7011fca  storeli.w r1, -6888(r30)
0008cc  9b10d50d  ori r1, r10, 221
0008d0  67411fca  storeli.w r1, -6892(r30)
0008d4  9b10e50d  ori r1, r10, 222
0008d8  67011fca  storeli.w r1, -6896(r30)
0008dc  9b10f50d  ori r1, r10, 223
0008e0  e7401fca  storeli.w r1, -6900(r30)
0008e4  9b10050e  ori r1, r10, 224
0008e8  e7001fca  storeli.w r1, -6904(r30)
0008ec  9b10150e  ori r1, r10, 225
0008f0  67401fca  storeli.w r1, -6908(r30)
0008f4  9b10250e  ori r1, r10, 226
0008f8  67001fca  storeli.w r1, -6912(r30)
0008fc  9b10350e  ori r1, r10, 227
000900  e74f1fc8  storeli.w r1, -6916(r30)
000904  9b10450e  ori r1, r10, 228
000908  e70f1fc8  storeli.w r1, -6920(r30)
00090c  9b10550e  ori r1, r10, 229
000910  674f1fc8  storeli.w r1, -6924(r30)
000914  9b10650e  ori r1, r10, 230
000918  670f1fc8  storeli.w r1, -6928(r30)
00091c  9b10750e  ori r1, r10, 231
000920  e74e1fc8  storeli.w r1, -6932(r30)
000924  9b10850e  ori r1, r10, 232
000928  e70e1fc8  storeli.w r1, -6936(r30)
00092c  9b10950e  ori r1, r10, 233
000930  674e1fc8  storeli.w r1, -6940(r30)
000934  9b10a50e  ori r1, r10, 234
000938  670e1fc8  storeli.w r1, -6944(r30)
00093c  9b10b50e  ori r1, r10, 235
000940  e74d1fc8  storeli.w r1, -6948(r30)
000944  9b10c50e  ori r1, r10, 236
000948  e70d1fc8  storeli.w r1, -6952(r30)
00094c  9b10d50e  ori r1, r10, 237
000950  674d1fc8  storeli.w r1, -6956(r30)
000954  9b10e50e  ori r1, r10, 238
000958  670d1fc8  storeli.w r1, -6960(r30)
00095c  9b10f50e  ori r1, r10, 239
000960  e74c1fc8  storeli.w r1, -6964(r30)
000964  9b10050f  ori r1, r10, 240
000968  e70c1fc8  storeli.w r1, -6968(r30)
00096c  9b10150f  ori r1, r10, 241
000970  674c1fc8  storeli.w r1, -6972(r30)
000974  9b10250f  ori r1, r10, 242
000978  670c1fc8  storeli.w r1, -6976(r30)
00097c  9b10350f  ori r1, r10, 243
000980  e74b1fc8  storeli.w r1, -6980(r30)
000984  9b10450f  ori r1, r10, 244
000988  e70b1fc8  storeli.w r1, -6984(r30)
00098c  9b10550f  ori r1, r10, 245
000990  674b1fc8  storeli.w r1, -6988(r30)
000994  9b10650f  ori r1, r10, 246
000998  670b1fc8  storeli.w r1, -6992(r30)
00099c  9b10750f  ori r1, r10, 247
0009a0  e74a1fc8  storeli.w r1, -6996(r30)
0009a4  9b10850f  ori r1, r10, 248
0009a8  e70a1fc8  storeli.w r1, -7000(r30)
0009ac  9b10950f  ori r1, r10, 249
0009b0  674a1fc8  storeli.w r1, -7004(r30)
0009b4  9b10a50f  ori r1, r10, 250
0009b8  670a1fc8  storeli.w r1, -7008(r30)
0009bc  9b10f50f  ori r1, r10, 255
0009c0  e7491fc8  storeli.w r1, -7012(r30)
0009c4  9b10e50f  ori r1, r10, 254
0009c8  e7091fc8  storeli.w r1, -7016(r30)
0009cc  9b10d50f  ori r1, r10, 253
0009d0  67491fc8  storeli.w r1, -7020(r30)
0009d4  9b10c50f  ori r1, r10, 252
0009d8  67091fc8  storeli.w r1, -7024(r30)
0009dc  9b10b50f  ori r1, r10, 251
0009e0  e7481fc8  storeli.w r1, -7028(r30)
0009e4  9f008fd0  addli r1, r30, -6080
0009e8  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
0009ec  db150400  j 8364
0009f0  e3005fd2  loadli.w r1,  -5848(r30)
0009f4  1f1e0000  addli r28, zero, 1
0009f8  6b5c0f01  load.d r[25:26], 16(r30)
0009fc  ab0800f0  lui r17, 983040
000a00  1fcd0d00  addli r26, r27, 4
000a04  339a0028  sext_int2long r[21:22], r1
000a08  e3404fd2  loadli.w r1,  -5852(r30)
000a0c  173aca03  sll.d r[21:22], r[21:22], r28
000a10  339b0028  sext_int2long r[23:24], r1
000a14  e3004fd2  loadli.w r1,  -5856(r30)
000a18  0b2a4c11  add.ul r[21:22], r[25:26], r[21:22]
000a1c  173bcb03  sll.d r[23:24], r[23:24], r28
000a20  b3970028  sext_int2long r[16:17], r1
000a24  e3403fd2  loadli.w r1,  -5860(r30)
000a28  0b2b6c11  add.ul r[23:24], r[25:26], r[23:24]
000a2c  9f2c0000  addli r25, zero, 2
000a30  2b0c00f0  lui r24, 983040
000a34  97b7c703  sll.d r[16:17], r[16:17], r28
000a38  33990028  sext_int2long r[19:20], r1
000a3c  e3003fd2  loadli.w r1,  -5864(r30)
000a40  179c8c01  or r24, r25, r24
000a44  97981c01  or r17, r25, r17
000a48  9fac0d00  addli r25, r27, 2
000a4c  7f3cab01  s_lm2gm r24, r26, 0(r[23:24])
000a50  eb5b0f01  load.d r[24:25], 16(r30)
000a54  ff389a01  s_lm2gm r17, r25, 0(r[21:22])
000a58  9738c903  sll.d r[18:19], r[19:20], r28
000a5c  ab0900f0  lui r19, 983040
000a60  9f2a0000  addli r21, zero, 2
000a64  2b0a00f0  lui r20, 983040
000a68  1f8b1d00  addli r22, r27, 8
000a6c  b3950028  sext_int2long r[12:13], r1
000a70  e3402fd2  loadli.w r1,  -5868(r30)
000a74  97993a01  or r19, r21, r19
000a78  179a4a01  or r20, r21, r20
000a7c  9fea0d00  addli r21, r27, 6
000a80  8ba7fb10  add.ul r[16:17], r[24:25], r[16:17]
000a84  8ba81b11  add.ul r[18:19], r[24:25], r[18:19]
000a88  97b5c503  sll.d r[12:13], r[12:13], r28
000a8c  b3960028  sext_int2long r[14:15], r1
000a90  e3002fd2  loadli.w r1,  -5872(r30)
000a94  ffb95701  s_lm2gm r19, r21, 0(r[16:17])
000a98  7fba6801  s_lm2gm r20, r22, 0(r[18:19])
000a9c  ab0700f0  lui r15, 983040
000aa0  9f280000  addli r17, zero, 2
000aa4  2b0800f0  lui r16, 983040
000aa8  8ba5bb10  add.ul r[12:13], r[24:25], r[12:13]
000aac  9f290000  addli r19, zero, 2
000ab0  1fc91d00  addli r18, r27, 12
000ab4  97b6c603  sll.d r[14:15], r[14:15], r28
000ab8  b3930028  sext_int2long r[8:9], r1
000abc  e3401fd2  loadli.w r1,  -5876(r30)
000ac0  9797f800  or r15, r17, r15
000ac4  17980801  or r16, r17, r16
000ac8  9fa81d00  addli r17, r27, 10
000acc  8ba6db10  add.ul r[14:15], r[24:25], r[14:15]
000ad0  ffb71501  s_lm2gm r15, r17, 0(r[12:13])
000ad4  97b3c303  sll.d r[8:9], r[8:9], r28
000ad8  ab0500f0  lui r11, 983040
000adc  2b0600f0  lui r12, 983040
000ae0  b3940028  sext_int2long r[10:11], r1
000ae4  e3001fd2  loadli.w r1,  -5880(r30)
000ae8  7fb82601  s_lm2gm r16, r18, 0(r[14:15])
000aec  9fe61d00  addli r13, r27, 14
000af0  1f872d00  addli r14, r27, 16
000af4  8ba37b10  add.ul r[8:9], r[24:25], r[8:9]
000af8  9795b900  or r11, r19, r11
000afc  1796c900  or r12, r19, r12
000b00  97b4c403  sll.d r[10:11], r[10:11], r28
000b04  b3910028  sext_int2long r[4:5], r1
000b08  e3400fd2  loadli.w r1,  -5884(r30)
000b0c  ffb5d300  s_lm2gm r11, r13, 0(r[8:9])
000b10  2b0400f0  lui r8, 983040
000b14  ab0300f0  lui r7, 983040
000b18  e3056fd9  loadli.w r11,  -4944(r30)
000b1c  8ba49b10  add.ul r[10:11], r[24:25], r[10:11]
000b20  97b1c103  sll.d r[4:5], r[4:5], r28
000b24  17948900  or r8, r19, r8
000b28  97937900  or r7, r19, r7
000b2c  b3920028  sext_int2long r[6:7], r1
000b30  e3000fd2  loadli.w r1,  -5888(r30)
000b34  7fb6e400  s_lm2gm r12, r14, 0(r[10:11])
000b38  1fc52d00  addli r10, r27, 20
000b3c  9fa42d00  addli r9, r27, 18
000b40  b3950528  sext_int2long r[12:13], r11
000b44  8ba13b10  add.ul r[4:5], r[24:25], r[4:5]
000b48  97b2c203  sll.d r[6:7], r[6:7], r28
000b4c  b3900028  sext_int2long r[2:3], r1
000b50  ffb39100  s_lm2gm r7, r9, 0(r[4:5])
000b54  ab0100f0  lui r3, 983040
000b58  1fe22d00  addli r4, r27, 22
000b5c  e3034fd9  loadli.w r7,  -4960(r30)
000b60  e3045fd9  loadli.w r9,  -4952(r30)
000b64  8ba25b10  add.ul r[6:7], r[24:25], r[6:7]
000b68  97b0c003  sll.d r[2:3], r[2:3], r28
000b6c  97913900  or r3, r19, r3
000b70  7fb4a200  s_lm2gm r8, r10, 0(r[6:7])
000b74  e3425fd2  loadli.w r5,  -5844(r30)
000b78  b3930328  sext_int2long r[8:9], r7
000b7c  b3940428  sext_int2long r[10:11], r9
000b80  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000b84  b3920228  sext_int2long r[6:7], r5
000b88  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b8c  ab0100f0  lui r3, 983040
000b90  1f823d00  addli r4, r27, 24
000b94  97b0c203  sll.d r[2:3], r[6:7], r28
000b98  e3026fd2  loadli.w r5,  -5840(r30)
000b9c  97913900  or r3, r19, r3
000ba0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000ba4  b3920228  sext_int2long r[6:7], r5
000ba8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000bac  ab0100f0  lui r3, 983040
000bb0  1fa23d00  addli r4, r27, 26
000bb4  97b0c203  sll.d r[2:3], r[6:7], r28
000bb8  e3426fd2  loadli.w r5,  -5836(r30)
000bbc  97913900  or r3, r19, r3
000bc0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000bc4  b3920228  sext_int2long r[6:7], r5
000bc8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000bcc  ab0100f0  lui r3, 983040
000bd0  1fc23d00  addli r4, r27, 28
000bd4  97b0c203  sll.d r[2:3], r[6:7], r28
000bd8  e3027fd2  loadli.w r5,  -5832(r30)
000bdc  97913900  or r3, r19, r3
000be0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000be4  b3920228  sext_int2long r[6:7], r5
000be8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000bec  ab0100f0  lui r3, 983040
000bf0  1fe23d00  addli r4, r27, 30
000bf4  97b0c203  sll.d r[2:3], r[6:7], r28
000bf8  e3427fd2  loadli.w r5,  -5828(r30)
000bfc  97913900  or r3, r19, r3
000c00  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000c04  b3920228  sext_int2long r[6:7], r5
000c08  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c0c  ab0100f0  lui r3, 983040
000c10  1f824d00  addli r4, r27, 32
000c14  97b0c203  sll.d r[2:3], r[6:7], r28
000c18  e3028fd2  loadli.w r5,  -5824(r30)
000c1c  97913900  or r3, r19, r3
000c20  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000c24  b3920228  sext_int2long r[6:7], r5
000c28  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c2c  ab0100f0  lui r3, 983040
000c30  1fa24d00  addli r4, r27, 34
000c34  97b0c203  sll.d r[2:3], r[6:7], r28
000c38  e3428fd2  loadli.w r5,  -5820(r30)
000c3c  97913900  or r3, r19, r3
000c40  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000c44  b3920228  sext_int2long r[6:7], r5
000c48  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c4c  ab0100f0  lui r3, 983040
000c50  1fc24d00  addli r4, r27, 36
000c54  97b0c203  sll.d r[2:3], r[6:7], r28
000c58  e3029fd2  loadli.w r5,  -5816(r30)
000c5c  97913900  or r3, r19, r3
000c60  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000c64  b3920228  sext_int2long r[6:7], r5
000c68  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c6c  ab0100f0  lui r3, 983040
000c70  1fe24d00  addli r4, r27, 38
000c74  97b0c203  sll.d r[2:3], r[6:7], r28
000c78  e3429fd2  loadli.w r5,  -5812(r30)
000c7c  97913900  or r3, r19, r3
000c80  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000c84  b3920228  sext_int2long r[6:7], r5
000c88  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c8c  ab0100f0  lui r3, 983040
000c90  1f825d00  addli r4, r27, 40
000c94  97b0c203  sll.d r[2:3], r[6:7], r28
000c98  e302afd2  loadli.w r5,  -5808(r30)
000c9c  97913900  or r3, r19, r3
000ca0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000ca4  b3920228  sext_int2long r[6:7], r5
000ca8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000cac  ab0100f0  lui r3, 983040
000cb0  1fa25d00  addli r4, r27, 42
000cb4  97b0c203  sll.d r[2:3], r[6:7], r28
000cb8  e342afd2  loadli.w r5,  -5804(r30)
000cbc  97913900  or r3, r19, r3
000cc0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000cc4  b3920228  sext_int2long r[6:7], r5
000cc8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ccc  ab0100f0  lui r3, 983040
000cd0  1fc25d00  addli r4, r27, 44
000cd4  97b0c203  sll.d r[2:3], r[6:7], r28
000cd8  e302bfd2  loadli.w r5,  -5800(r30)
000cdc  97913900  or r3, r19, r3
000ce0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000ce4  b3920228  sext_int2long r[6:7], r5
000ce8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000cec  ab0100f0  lui r3, 983040
000cf0  1fe25d00  addli r4, r27, 46
000cf4  97b0c203  sll.d r[2:3], r[6:7], r28
000cf8  e342bfd2  loadli.w r5,  -5796(r30)
000cfc  97913900  or r3, r19, r3
000d00  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000d04  b3920228  sext_int2long r[6:7], r5
000d08  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d0c  ab0100f0  lui r3, 983040
000d10  1f826d00  addli r4, r27, 48
000d14  97b0c203  sll.d r[2:3], r[6:7], r28
000d18  e302cfd2  loadli.w r5,  -5792(r30)
000d1c  97913900  or r3, r19, r3
000d20  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000d24  b3920228  sext_int2long r[6:7], r5
000d28  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d2c  ab0100f0  lui r3, 983040
000d30  1fa26d00  addli r4, r27, 50
000d34  97b0c203  sll.d r[2:3], r[6:7], r28
000d38  e342cfd2  loadli.w r5,  -5788(r30)
000d3c  97913900  or r3, r19, r3
000d40  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000d44  b3920228  sext_int2long r[6:7], r5
000d48  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d4c  ab0100f0  lui r3, 983040
000d50  1fc26d00  addli r4, r27, 52
000d54  97b0c203  sll.d r[2:3], r[6:7], r28
000d58  e302dfd2  loadli.w r5,  -5784(r30)
000d5c  97913900  or r3, r19, r3
000d60  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000d64  b3920228  sext_int2long r[6:7], r5
000d68  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d6c  ab0100f0  lui r3, 983040
000d70  1fe26d00  addli r4, r27, 54
000d74  97b0c203  sll.d r[2:3], r[6:7], r28
000d78  e342dfd2  loadli.w r5,  -5780(r30)
000d7c  97913900  or r3, r19, r3
000d80  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000d84  b3920228  sext_int2long r[6:7], r5
000d88  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d8c  ab0100f0  lui r3, 983040
000d90  1f827d00  addli r4, r27, 56
000d94  97b0c203  sll.d r[2:3], r[6:7], r28
000d98  e302efd2  loadli.w r5,  -5776(r30)
000d9c  97913900  or r3, r19, r3
000da0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000da4  b3920228  sext_int2long r[6:7], r5
000da8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000dac  ab0100f0  lui r3, 983040
000db0  1fa27d00  addli r4, r27, 58
000db4  97b0c203  sll.d r[2:3], r[6:7], r28
000db8  e342efd2  loadli.w r5,  -5772(r30)
000dbc  97913900  or r3, r19, r3
000dc0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000dc4  b3920228  sext_int2long r[6:7], r5
000dc8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000dcc  ab0100f0  lui r3, 983040
000dd0  1fc27d00  addli r4, r27, 60
000dd4  97b0c203  sll.d r[2:3], r[6:7], r28
000dd8  e302ffd2  loadli.w r5,  -5768(r30)
000ddc  97913900  or r3, r19, r3
000de0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000de4  b3920228  sext_int2long r[6:7], r5
000de8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000dec  ab0100f0  lui r3, 983040
000df0  1fe27d00  addli r4, r27, 62
000df4  97b0c203  sll.d r[2:3], r[6:7], r28
000df8  e342ffd2  loadli.w r5,  -5764(r30)
000dfc  97913900  or r3, r19, r3
000e00  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000e04  b3920228  sext_int2long r[6:7], r5
000e08  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e0c  63020fd3  loadli.w r4,  -5760(r30)
000e10  ab0100f0  lui r3, 983040
000e14  97b0c203  sll.d r[2:3], r[6:7], r28
000e18  6343dfd9  loadli.w r6,  -4884(r30)
000e1c  97913900  or r3, r19, r3
000e20  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000e24  33120228  sext_int2long r[5:6], r4
000e28  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
000e2c  9730c203  sll.d r[2:3], r[5:6], r28
000e30  e3420fd3  loadli.w r5,  -5756(r30)
000e34  ab0100f0  lui r3, 983040
000e38  1fa28d00  addli r4, r27, 66
000e3c  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000e40  97913900  or r3, r19, r3
000e44  b3920228  sext_int2long r[6:7], r5
000e48  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e4c  ab0100f0  lui r3, 983040
000e50  1fc28d00  addli r4, r27, 68
000e54  97b0c203  sll.d r[2:3], r[6:7], r28
000e58  e3021fd3  loadli.w r5,  -5752(r30)
000e5c  97913900  or r3, r19, r3
000e60  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000e64  b3920228  sext_int2long r[6:7], r5
000e68  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e6c  ab0100f0  lui r3, 983040
000e70  1fe28d00  addli r4, r27, 70
000e74  97b0c203  sll.d r[2:3], r[6:7], r28
000e78  e3421fd3  loadli.w r5,  -5748(r30)
000e7c  97913900  or r3, r19, r3
000e80  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000e84  b3920228  sext_int2long r[6:7], r5
000e88  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e8c  ab0100f0  lui r3, 983040
000e90  1f829d00  addli r4, r27, 72
000e94  97b0c203  sll.d r[2:3], r[6:7], r28
000e98  e3022fd3  loadli.w r5,  -5744(r30)
000e9c  97913900  or r3, r19, r3
000ea0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000ea4  b3920228  sext_int2long r[6:7], r5
000ea8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000eac  ab0100f0  lui r3, 983040
000eb0  1fa29d00  addli r4, r27, 74
000eb4  97b0c203  sll.d r[2:3], r[6:7], r28
000eb8  e3422fd3  loadli.w r5,  -5740(r30)
000ebc  97913900  or r3, r19, r3
000ec0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000ec4  b3920228  sext_int2long r[6:7], r5
000ec8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ecc  ab0100f0  lui r3, 983040
000ed0  1fc29d00  addli r4, r27, 76
000ed4  97b0c203  sll.d r[2:3], r[6:7], r28
000ed8  e3023fd3  loadli.w r5,  -5736(r30)
000edc  97913900  or r3, r19, r3
000ee0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000ee4  b3920228  sext_int2long r[6:7], r5
000ee8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000eec  ab0100f0  lui r3, 983040
000ef0  1fe29d00  addli r4, r27, 78
000ef4  97b0c203  sll.d r[2:3], r[6:7], r28
000ef8  e3423fd3  loadli.w r5,  -5732(r30)
000efc  97913900  or r3, r19, r3
000f00  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000f04  b3920228  sext_int2long r[6:7], r5
000f08  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f0c  ab0100f0  lui r3, 983040
000f10  1f82ad00  addli r4, r27, 80
000f14  97b0c203  sll.d r[2:3], r[6:7], r28
000f18  e3024fd3  loadli.w r5,  -5728(r30)
000f1c  97913900  or r3, r19, r3
000f20  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000f24  b3920228  sext_int2long r[6:7], r5
000f28  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f2c  ab0100f0  lui r3, 983040
000f30  1fa2ad00  addli r4, r27, 82
000f34  97b0c203  sll.d r[2:3], r[6:7], r28
000f38  e3424fd3  loadli.w r5,  -5724(r30)
000f3c  97913900  or r3, r19, r3
000f40  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000f44  b3920228  sext_int2long r[6:7], r5
000f48  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f4c  ab0100f0  lui r3, 983040
000f50  1fc2ad00  addli r4, r27, 84
000f54  97b0c203  sll.d r[2:3], r[6:7], r28
000f58  e3025fd3  loadli.w r5,  -5720(r30)
000f5c  97913900  or r3, r19, r3
000f60  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000f64  b3920228  sext_int2long r[6:7], r5
000f68  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f6c  ab0100f0  lui r3, 983040
000f70  1fe2ad00  addli r4, r27, 86
000f74  97b0c203  sll.d r[2:3], r[6:7], r28
000f78  e3425fd3  loadli.w r5,  -5716(r30)
000f7c  97913900  or r3, r19, r3
000f80  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000f84  b3920228  sext_int2long r[6:7], r5
000f88  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f8c  ab0100f0  lui r3, 983040
000f90  1f82bd00  addli r4, r27, 88
000f94  97b0c203  sll.d r[2:3], r[6:7], r28
000f98  e3026fd3  loadli.w r5,  -5712(r30)
000f9c  97913900  or r3, r19, r3
000fa0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000fa4  b3920228  sext_int2long r[6:7], r5
000fa8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000fac  ab0100f0  lui r3, 983040
000fb0  1fa2bd00  addli r4, r27, 90
000fb4  97b0c203  sll.d r[2:3], r[6:7], r28
000fb8  e3426fd3  loadli.w r5,  -5708(r30)
000fbc  97913900  or r3, r19, r3
000fc0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000fc4  b3920228  sext_int2long r[6:7], r5
000fc8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000fcc  ab0100f0  lui r3, 983040
000fd0  1fc2bd00  addli r4, r27, 92
000fd4  97b0c203  sll.d r[2:3], r[6:7], r28
000fd8  e3027fd3  loadli.w r5,  -5704(r30)
000fdc  97913900  or r3, r19, r3
000fe0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
000fe4  b3920228  sext_int2long r[6:7], r5
000fe8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000fec  ab0100f0  lui r3, 983040
000ff0  1fe2bd00  addli r4, r27, 94
000ff4  97b0c203  sll.d r[2:3], r[6:7], r28
000ff8  e3427fd3  loadli.w r5,  -5700(r30)
000ffc  97913900  or r3, r19, r3
001000  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001004  b3920228  sext_int2long r[6:7], r5
001008  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00100c  ab0100f0  lui r3, 983040
001010  1f82cd00  addli r4, r27, 96
001014  97b0c203  sll.d r[2:3], r[6:7], r28
001018  e3028fd3  loadli.w r5,  -5696(r30)
00101c  97913900  or r3, r19, r3
001020  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001024  b3920228  sext_int2long r[6:7], r5
001028  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00102c  ab0100f0  lui r3, 983040
001030  1fa2cd00  addli r4, r27, 98
001034  97b0c203  sll.d r[2:3], r[6:7], r28
001038  e3428fd3  loadli.w r5,  -5692(r30)
00103c  97913900  or r3, r19, r3
001040  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001044  b3920228  sext_int2long r[6:7], r5
001048  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00104c  ab0100f0  lui r3, 983040
001050  1fc2cd00  addli r4, r27, 100
001054  97b0c203  sll.d r[2:3], r[6:7], r28
001058  e3029fd3  loadli.w r5,  -5688(r30)
00105c  97913900  or r3, r19, r3
001060  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001064  b3920228  sext_int2long r[6:7], r5
001068  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00106c  ab0100f0  lui r3, 983040
001070  1fe2cd00  addli r4, r27, 102
001074  97b0c203  sll.d r[2:3], r[6:7], r28
001078  e3429fd3  loadli.w r5,  -5684(r30)
00107c  97913900  or r3, r19, r3
001080  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001084  b3920228  sext_int2long r[6:7], r5
001088  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00108c  ab0100f0  lui r3, 983040
001090  1f82dd00  addli r4, r27, 104
001094  97b0c203  sll.d r[2:3], r[6:7], r28
001098  e302afd3  loadli.w r5,  -5680(r30)
00109c  97913900  or r3, r19, r3
0010a0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0010a4  b3920228  sext_int2long r[6:7], r5
0010a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010ac  ab0100f0  lui r3, 983040
0010b0  1fa2dd00  addli r4, r27, 106
0010b4  97b0c203  sll.d r[2:3], r[6:7], r28
0010b8  e342afd3  loadli.w r5,  -5676(r30)
0010bc  97913900  or r3, r19, r3
0010c0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0010c4  b3920228  sext_int2long r[6:7], r5
0010c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010cc  ab0100f0  lui r3, 983040
0010d0  1fc2dd00  addli r4, r27, 108
0010d4  97b0c203  sll.d r[2:3], r[6:7], r28
0010d8  e302bfd3  loadli.w r5,  -5672(r30)
0010dc  97913900  or r3, r19, r3
0010e0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0010e4  b3920228  sext_int2long r[6:7], r5
0010e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010ec  ab0100f0  lui r3, 983040
0010f0  1fe2dd00  addli r4, r27, 110
0010f4  97b0c203  sll.d r[2:3], r[6:7], r28
0010f8  e342bfd3  loadli.w r5,  -5668(r30)
0010fc  97913900  or r3, r19, r3
001100  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001104  b3920228  sext_int2long r[6:7], r5
001108  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00110c  ab0100f0  lui r3, 983040
001110  1f82ed00  addli r4, r27, 112
001114  97b0c203  sll.d r[2:3], r[6:7], r28
001118  e302cfd3  loadli.w r5,  -5664(r30)
00111c  97913900  or r3, r19, r3
001120  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001124  b3920228  sext_int2long r[6:7], r5
001128  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00112c  ab0100f0  lui r3, 983040
001130  1fa2ed00  addli r4, r27, 114
001134  97b0c203  sll.d r[2:3], r[6:7], r28
001138  e342cfd3  loadli.w r5,  -5660(r30)
00113c  97913900  or r3, r19, r3
001140  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001144  b3920228  sext_int2long r[6:7], r5
001148  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00114c  ab0100f0  lui r3, 983040
001150  1fc2ed00  addli r4, r27, 116
001154  97b0c203  sll.d r[2:3], r[6:7], r28
001158  e302dfd3  loadli.w r5,  -5656(r30)
00115c  97913900  or r3, r19, r3
001160  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001164  b3920228  sext_int2long r[6:7], r5
001168  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00116c  ab0100f0  lui r3, 983040
001170  1fe2ed00  addli r4, r27, 118
001174  97b0c203  sll.d r[2:3], r[6:7], r28
001178  e342dfd3  loadli.w r5,  -5652(r30)
00117c  97913900  or r3, r19, r3
001180  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001184  b3920228  sext_int2long r[6:7], r5
001188  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00118c  ab0100f0  lui r3, 983040
001190  1f82fd00  addli r4, r27, 120
001194  97b0c203  sll.d r[2:3], r[6:7], r28
001198  e302efd3  loadli.w r5,  -5648(r30)
00119c  97913900  or r3, r19, r3
0011a0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0011a4  b3920228  sext_int2long r[6:7], r5
0011a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011ac  ab0100f0  lui r3, 983040
0011b0  1fa2fd00  addli r4, r27, 122
0011b4  97b0c203  sll.d r[2:3], r[6:7], r28
0011b8  e342efd3  loadli.w r5,  -5644(r30)
0011bc  97913900  or r3, r19, r3
0011c0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0011c4  b3920228  sext_int2long r[6:7], r5
0011c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011cc  ab0100f0  lui r3, 983040
0011d0  1fc2fd00  addli r4, r27, 124
0011d4  97b0c203  sll.d r[2:3], r[6:7], r28
0011d8  e302ffd3  loadli.w r5,  -5640(r30)
0011dc  97913900  or r3, r19, r3
0011e0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0011e4  b3920228  sext_int2long r[6:7], r5
0011e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011ec  ab0100f0  lui r3, 983040
0011f0  1fe2fd00  addli r4, r27, 126
0011f4  97b0c203  sll.d r[2:3], r[6:7], r28
0011f8  e342ffd3  loadli.w r5,  -5636(r30)
0011fc  97913900  or r3, r19, r3
001200  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001204  b3920228  sext_int2long r[6:7], r5
001208  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00120c  63020fd4  loadli.w r4,  -5632(r30)
001210  ab0100f0  lui r3, 983040
001214  97b0c203  sll.d r[2:3], r[6:7], r28
001218  6303efd9  loadli.w r6,  -4880(r30)
00121c  97913900  or r3, r19, r3
001220  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001224  33120228  sext_int2long r[5:6], r4
001228  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
00122c  9730c203  sll.d r[2:3], r[5:6], r28
001230  e3420fd4  loadli.w r5,  -5628(r30)
001234  ab0100f0  lui r3, 983040
001238  1fa20d01  addli r4, r27, 130
00123c  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001240  97913900  or r3, r19, r3
001244  b3920228  sext_int2long r[6:7], r5
001248  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00124c  ab0100f0  lui r3, 983040
001250  1fc20d01  addli r4, r27, 132
001254  97b0c203  sll.d r[2:3], r[6:7], r28
001258  e3021fd4  loadli.w r5,  -5624(r30)
00125c  97913900  or r3, r19, r3
001260  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001264  b3920228  sext_int2long r[6:7], r5
001268  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00126c  ab0100f0  lui r3, 983040
001270  1fe20d01  addli r4, r27, 134
001274  97b0c203  sll.d r[2:3], r[6:7], r28
001278  e3421fd4  loadli.w r5,  -5620(r30)
00127c  97913900  or r3, r19, r3
001280  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001284  b3920228  sext_int2long r[6:7], r5
001288  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00128c  ab0100f0  lui r3, 983040
001290  1f821d01  addli r4, r27, 136
001294  97b0c203  sll.d r[2:3], r[6:7], r28
001298  e3022fd4  loadli.w r5,  -5616(r30)
00129c  97913900  or r3, r19, r3
0012a0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0012a4  b3920228  sext_int2long r[6:7], r5
0012a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012ac  ab0100f0  lui r3, 983040
0012b0  1fa21d01  addli r4, r27, 138
0012b4  97b0c203  sll.d r[2:3], r[6:7], r28
0012b8  e3422fd4  loadli.w r5,  -5612(r30)
0012bc  97913900  or r3, r19, r3
0012c0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0012c4  b3920228  sext_int2long r[6:7], r5
0012c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012cc  ab0100f0  lui r3, 983040
0012d0  1fc21d01  addli r4, r27, 140
0012d4  97b0c203  sll.d r[2:3], r[6:7], r28
0012d8  e3023fd4  loadli.w r5,  -5608(r30)
0012dc  97913900  or r3, r19, r3
0012e0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0012e4  b3920228  sext_int2long r[6:7], r5
0012e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012ec  ab0100f0  lui r3, 983040
0012f0  1fe21d01  addli r4, r27, 142
0012f4  97b0c203  sll.d r[2:3], r[6:7], r28
0012f8  e3423fd4  loadli.w r5,  -5604(r30)
0012fc  97913900  or r3, r19, r3
001300  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001304  b3920228  sext_int2long r[6:7], r5
001308  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00130c  ab0100f0  lui r3, 983040
001310  1f822d01  addli r4, r27, 144
001314  97b0c203  sll.d r[2:3], r[6:7], r28
001318  e3024fd4  loadli.w r5,  -5600(r30)
00131c  97913900  or r3, r19, r3
001320  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001324  b3920228  sext_int2long r[6:7], r5
001328  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00132c  ab0100f0  lui r3, 983040
001330  1fa22d01  addli r4, r27, 146
001334  97b0c203  sll.d r[2:3], r[6:7], r28
001338  e3424fd4  loadli.w r5,  -5596(r30)
00133c  97913900  or r3, r19, r3
001340  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001344  b3920228  sext_int2long r[6:7], r5
001348  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00134c  ab0100f0  lui r3, 983040
001350  1fc22d01  addli r4, r27, 148
001354  97b0c203  sll.d r[2:3], r[6:7], r28
001358  e3025fd4  loadli.w r5,  -5592(r30)
00135c  97913900  or r3, r19, r3
001360  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001364  b3920228  sext_int2long r[6:7], r5
001368  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00136c  ab0100f0  lui r3, 983040
001370  1fe22d01  addli r4, r27, 150
001374  97b0c203  sll.d r[2:3], r[6:7], r28
001378  e3425fd4  loadli.w r5,  -5588(r30)
00137c  97913900  or r3, r19, r3
001380  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001384  b3920228  sext_int2long r[6:7], r5
001388  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00138c  ab0100f0  lui r3, 983040
001390  1f823d01  addli r4, r27, 152
001394  97b0c203  sll.d r[2:3], r[6:7], r28
001398  e3026fd4  loadli.w r5,  -5584(r30)
00139c  97913900  or r3, r19, r3
0013a0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0013a4  b3920228  sext_int2long r[6:7], r5
0013a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0013ac  ab0100f0  lui r3, 983040
0013b0  1fa23d01  addli r4, r27, 154
0013b4  97b0c203  sll.d r[2:3], r[6:7], r28
0013b8  e3426fd4  loadli.w r5,  -5580(r30)
0013bc  97913900  or r3, r19, r3
0013c0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0013c4  b3920228  sext_int2long r[6:7], r5
0013c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0013cc  ab0100f0  lui r3, 983040
0013d0  1fc23d01  addli r4, r27, 156
0013d4  97b0c203  sll.d r[2:3], r[6:7], r28
0013d8  e3027fd4  loadli.w r5,  -5576(r30)
0013dc  97913900  or r3, r19, r3
0013e0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0013e4  b3920228  sext_int2long r[6:7], r5
0013e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0013ec  ab0100f0  lui r3, 983040
0013f0  1fe23d01  addli r4, r27, 158
0013f4  97b0c203  sll.d r[2:3], r[6:7], r28
0013f8  e3427fd4  loadli.w r5,  -5572(r30)
0013fc  97913900  or r3, r19, r3
001400  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001404  b3920228  sext_int2long r[6:7], r5
001408  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00140c  ab0100f0  lui r3, 983040
001410  1f824d01  addli r4, r27, 160
001414  97b0c203  sll.d r[2:3], r[6:7], r28
001418  e3028fd4  loadli.w r5,  -5568(r30)
00141c  97913900  or r3, r19, r3
001420  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001424  b3920228  sext_int2long r[6:7], r5
001428  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00142c  ab0100f0  lui r3, 983040
001430  1fa24d01  addli r4, r27, 162
001434  97b0c203  sll.d r[2:3], r[6:7], r28
001438  e3428fd4  loadli.w r5,  -5564(r30)
00143c  97913900  or r3, r19, r3
001440  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001444  b3920228  sext_int2long r[6:7], r5
001448  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00144c  ab0100f0  lui r3, 983040
001450  1fc24d01  addli r4, r27, 164
001454  97b0c203  sll.d r[2:3], r[6:7], r28
001458  e3029fd4  loadli.w r5,  -5560(r30)
00145c  97913900  or r3, r19, r3
001460  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001464  b3920228  sext_int2long r[6:7], r5
001468  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00146c  ab0100f0  lui r3, 983040
001470  1fe24d01  addli r4, r27, 166
001474  97b0c203  sll.d r[2:3], r[6:7], r28
001478  e3429fd4  loadli.w r5,  -5556(r30)
00147c  97913900  or r3, r19, r3
001480  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001484  b3920228  sext_int2long r[6:7], r5
001488  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00148c  ab0100f0  lui r3, 983040
001490  1f825d01  addli r4, r27, 168
001494  97b0c203  sll.d r[2:3], r[6:7], r28
001498  e302afd4  loadli.w r5,  -5552(r30)
00149c  97913900  or r3, r19, r3
0014a0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0014a4  b3920228  sext_int2long r[6:7], r5
0014a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0014ac  ab0100f0  lui r3, 983040
0014b0  1fa25d01  addli r4, r27, 170
0014b4  97b0c203  sll.d r[2:3], r[6:7], r28
0014b8  e342afd4  loadli.w r5,  -5548(r30)
0014bc  97913900  or r3, r19, r3
0014c0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0014c4  b3920228  sext_int2long r[6:7], r5
0014c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0014cc  ab0100f0  lui r3, 983040
0014d0  1fc25d01  addli r4, r27, 172
0014d4  97b0c203  sll.d r[2:3], r[6:7], r28
0014d8  e302bfd4  loadli.w r5,  -5544(r30)
0014dc  97913900  or r3, r19, r3
0014e0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0014e4  b3920228  sext_int2long r[6:7], r5
0014e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0014ec  ab0100f0  lui r3, 983040
0014f0  1fe25d01  addli r4, r27, 174
0014f4  97b0c203  sll.d r[2:3], r[6:7], r28
0014f8  e342bfd4  loadli.w r5,  -5540(r30)
0014fc  97913900  or r3, r19, r3
001500  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001504  b3920228  sext_int2long r[6:7], r5
001508  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00150c  ab0100f0  lui r3, 983040
001510  1f826d01  addli r4, r27, 176
001514  97b0c203  sll.d r[2:3], r[6:7], r28
001518  e302cfd4  loadli.w r5,  -5536(r30)
00151c  97913900  or r3, r19, r3
001520  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001524  b3920228  sext_int2long r[6:7], r5
001528  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00152c  ab0100f0  lui r3, 983040
001530  1fa26d01  addli r4, r27, 178
001534  97b0c203  sll.d r[2:3], r[6:7], r28
001538  e342cfd4  loadli.w r5,  -5532(r30)
00153c  97913900  or r3, r19, r3
001540  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001544  b3920228  sext_int2long r[6:7], r5
001548  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00154c  ab0100f0  lui r3, 983040
001550  1fc26d01  addli r4, r27, 180
001554  97b0c203  sll.d r[2:3], r[6:7], r28
001558  e302dfd4  loadli.w r5,  -5528(r30)
00155c  97913900  or r3, r19, r3
001560  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001564  b3920228  sext_int2long r[6:7], r5
001568  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00156c  ab0100f0  lui r3, 983040
001570  1fe26d01  addli r4, r27, 182
001574  97b0c203  sll.d r[2:3], r[6:7], r28
001578  e342dfd4  loadli.w r5,  -5524(r30)
00157c  97913900  or r3, r19, r3
001580  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001584  b3920228  sext_int2long r[6:7], r5
001588  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00158c  ab0100f0  lui r3, 983040
001590  1f827d01  addli r4, r27, 184
001594  97b0c203  sll.d r[2:3], r[6:7], r28
001598  e302efd4  loadli.w r5,  -5520(r30)
00159c  97913900  or r3, r19, r3
0015a0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0015a4  b3920228  sext_int2long r[6:7], r5
0015a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0015ac  ab0100f0  lui r3, 983040
0015b0  1fa27d01  addli r4, r27, 186
0015b4  97b0c203  sll.d r[2:3], r[6:7], r28
0015b8  e342efd4  loadli.w r5,  -5516(r30)
0015bc  97913900  or r3, r19, r3
0015c0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0015c4  b3920228  sext_int2long r[6:7], r5
0015c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0015cc  ab0100f0  lui r3, 983040
0015d0  1fc27d01  addli r4, r27, 188
0015d4  97b0c203  sll.d r[2:3], r[6:7], r28
0015d8  e302ffd4  loadli.w r5,  -5512(r30)
0015dc  97913900  or r3, r19, r3
0015e0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0015e4  b3920228  sext_int2long r[6:7], r5
0015e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0015ec  ab0100f0  lui r3, 983040
0015f0  1fe27d01  addli r4, r27, 190
0015f4  97b0c203  sll.d r[2:3], r[6:7], r28
0015f8  e342ffd4  loadli.w r5,  -5508(r30)
0015fc  97913900  or r3, r19, r3
001600  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001604  b3920228  sext_int2long r[6:7], r5
001608  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00160c  63020fd5  loadli.w r4,  -5504(r30)
001610  ab0100f0  lui r3, 983040
001614  97b0c203  sll.d r[2:3], r[6:7], r28
001618  6343efd9  loadli.w r6,  -4876(r30)
00161c  97913900  or r3, r19, r3
001620  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001624  33120228  sext_int2long r[5:6], r4
001628  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
00162c  9730c203  sll.d r[2:3], r[5:6], r28
001630  e3420fd5  loadli.w r5,  -5500(r30)
001634  ab0100f0  lui r3, 983040
001638  1fa28d01  addli r4, r27, 194
00163c  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001640  97913900  or r3, r19, r3
001644  b3920228  sext_int2long r[6:7], r5
001648  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00164c  ab0100f0  lui r3, 983040
001650  1fc28d01  addli r4, r27, 196
001654  97b0c203  sll.d r[2:3], r[6:7], r28
001658  e3021fd5  loadli.w r5,  -5496(r30)
00165c  97913900  or r3, r19, r3
001660  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001664  b3920228  sext_int2long r[6:7], r5
001668  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00166c  ab0100f0  lui r3, 983040
001670  1fe28d01  addli r4, r27, 198
001674  97b0c203  sll.d r[2:3], r[6:7], r28
001678  e3421fd5  loadli.w r5,  -5492(r30)
00167c  97913900  or r3, r19, r3
001680  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001684  b3920228  sext_int2long r[6:7], r5
001688  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00168c  ab0100f0  lui r3, 983040
001690  1f829d01  addli r4, r27, 200
001694  97b0c203  sll.d r[2:3], r[6:7], r28
001698  e3022fd5  loadli.w r5,  -5488(r30)
00169c  97913900  or r3, r19, r3
0016a0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0016a4  b3920228  sext_int2long r[6:7], r5
0016a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0016ac  ab0100f0  lui r3, 983040
0016b0  1fa29d01  addli r4, r27, 202
0016b4  97b0c203  sll.d r[2:3], r[6:7], r28
0016b8  e3422fd5  loadli.w r5,  -5484(r30)
0016bc  97913900  or r3, r19, r3
0016c0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0016c4  b3920228  sext_int2long r[6:7], r5
0016c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0016cc  ab0100f0  lui r3, 983040
0016d0  1fc29d01  addli r4, r27, 204
0016d4  97b0c203  sll.d r[2:3], r[6:7], r28
0016d8  e3023fd5  loadli.w r5,  -5480(r30)
0016dc  97913900  or r3, r19, r3
0016e0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0016e4  b3920228  sext_int2long r[6:7], r5
0016e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0016ec  ab0100f0  lui r3, 983040
0016f0  1fe29d01  addli r4, r27, 206
0016f4  97b0c203  sll.d r[2:3], r[6:7], r28
0016f8  e3423fd5  loadli.w r5,  -5476(r30)
0016fc  97913900  or r3, r19, r3
001700  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001704  b3920228  sext_int2long r[6:7], r5
001708  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00170c  ab0100f0  lui r3, 983040
001710  1f82ad01  addli r4, r27, 208
001714  97b0c203  sll.d r[2:3], r[6:7], r28
001718  e3024fd5  loadli.w r5,  -5472(r30)
00171c  97913900  or r3, r19, r3
001720  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001724  b3920228  sext_int2long r[6:7], r5
001728  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00172c  ab0100f0  lui r3, 983040
001730  1fa2ad01  addli r4, r27, 210
001734  97b0c203  sll.d r[2:3], r[6:7], r28
001738  e3424fd5  loadli.w r5,  -5468(r30)
00173c  97913900  or r3, r19, r3
001740  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001744  b3920228  sext_int2long r[6:7], r5
001748  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00174c  ab0100f0  lui r3, 983040
001750  1fc2ad01  addli r4, r27, 212
001754  97b0c203  sll.d r[2:3], r[6:7], r28
001758  e3025fd5  loadli.w r5,  -5464(r30)
00175c  97913900  or r3, r19, r3
001760  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001764  b3920228  sext_int2long r[6:7], r5
001768  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00176c  ab0100f0  lui r3, 983040
001770  1fe2ad01  addli r4, r27, 214
001774  97b0c203  sll.d r[2:3], r[6:7], r28
001778  e3425fd5  loadli.w r5,  -5460(r30)
00177c  97913900  or r3, r19, r3
001780  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001784  b3920228  sext_int2long r[6:7], r5
001788  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00178c  ab0100f0  lui r3, 983040
001790  1f82bd01  addli r4, r27, 216
001794  97b0c203  sll.d r[2:3], r[6:7], r28
001798  e3026fd5  loadli.w r5,  -5456(r30)
00179c  97913900  or r3, r19, r3
0017a0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0017a4  b3920228  sext_int2long r[6:7], r5
0017a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0017ac  ab0100f0  lui r3, 983040
0017b0  1fa2bd01  addli r4, r27, 218
0017b4  97b0c203  sll.d r[2:3], r[6:7], r28
0017b8  e3426fd5  loadli.w r5,  -5452(r30)
0017bc  97913900  or r3, r19, r3
0017c0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0017c4  b3920228  sext_int2long r[6:7], r5
0017c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0017cc  ab0100f0  lui r3, 983040
0017d0  1fc2bd01  addli r4, r27, 220
0017d4  97b0c203  sll.d r[2:3], r[6:7], r28
0017d8  e3027fd5  loadli.w r5,  -5448(r30)
0017dc  97913900  or r3, r19, r3
0017e0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0017e4  b3920228  sext_int2long r[6:7], r5
0017e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0017ec  ab0100f0  lui r3, 983040
0017f0  1fe2bd01  addli r4, r27, 222
0017f4  97b0c203  sll.d r[2:3], r[6:7], r28
0017f8  e3427fd5  loadli.w r5,  -5444(r30)
0017fc  97913900  or r3, r19, r3
001800  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001804  b3920228  sext_int2long r[6:7], r5
001808  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00180c  ab0100f0  lui r3, 983040
001810  1f82cd01  addli r4, r27, 224
001814  97b0c203  sll.d r[2:3], r[6:7], r28
001818  e3028fd5  loadli.w r5,  -5440(r30)
00181c  97913900  or r3, r19, r3
001820  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001824  b3920228  sext_int2long r[6:7], r5
001828  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00182c  ab0100f0  lui r3, 983040
001830  1fa2cd01  addli r4, r27, 226
001834  97b0c203  sll.d r[2:3], r[6:7], r28
001838  e3428fd5  loadli.w r5,  -5436(r30)
00183c  97913900  or r3, r19, r3
001840  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001844  b3920228  sext_int2long r[6:7], r5
001848  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00184c  ab0100f0  lui r3, 983040
001850  1fc2cd01  addli r4, r27, 228
001854  97b0c203  sll.d r[2:3], r[6:7], r28
001858  e3029fd5  loadli.w r5,  -5432(r30)
00185c  97913900  or r3, r19, r3
001860  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001864  b3920228  sext_int2long r[6:7], r5
001868  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00186c  ab0100f0  lui r3, 983040
001870  1fe2cd01  addli r4, r27, 230
001874  97b0c203  sll.d r[2:3], r[6:7], r28
001878  e3429fd5  loadli.w r5,  -5428(r30)
00187c  97913900  or r3, r19, r3
001880  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001884  b3920228  sext_int2long r[6:7], r5
001888  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00188c  ab0100f0  lui r3, 983040
001890  1f82dd01  addli r4, r27, 232
001894  97b0c203  sll.d r[2:3], r[6:7], r28
001898  e302afd5  loadli.w r5,  -5424(r30)
00189c  97913900  or r3, r19, r3
0018a0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0018a4  b3920228  sext_int2long r[6:7], r5
0018a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0018ac  ab0100f0  lui r3, 983040
0018b0  1fa2dd01  addli r4, r27, 234
0018b4  97b0c203  sll.d r[2:3], r[6:7], r28
0018b8  e342afd5  loadli.w r5,  -5420(r30)
0018bc  97913900  or r3, r19, r3
0018c0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0018c4  b3920228  sext_int2long r[6:7], r5
0018c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0018cc  ab0100f0  lui r3, 983040
0018d0  1fc2dd01  addli r4, r27, 236
0018d4  97b0c203  sll.d r[2:3], r[6:7], r28
0018d8  e302bfd5  loadli.w r5,  -5416(r30)
0018dc  97913900  or r3, r19, r3
0018e0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0018e4  b3920228  sext_int2long r[6:7], r5
0018e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0018ec  ab0100f0  lui r3, 983040
0018f0  1fe2dd01  addli r4, r27, 238
0018f4  97b0c203  sll.d r[2:3], r[6:7], r28
0018f8  e342bfd5  loadli.w r5,  -5412(r30)
0018fc  97913900  or r3, r19, r3
001900  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001904  b3920228  sext_int2long r[6:7], r5
001908  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00190c  ab0100f0  lui r3, 983040
001910  1f82ed01  addli r4, r27, 240
001914  97b0c203  sll.d r[2:3], r[6:7], r28
001918  e302cfd5  loadli.w r5,  -5408(r30)
00191c  97913900  or r3, r19, r3
001920  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001924  b3920228  sext_int2long r[6:7], r5
001928  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00192c  ab0100f0  lui r3, 983040
001930  1fa2ed01  addli r4, r27, 242
001934  97b0c203  sll.d r[2:3], r[6:7], r28
001938  e342cfd5  loadli.w r5,  -5404(r30)
00193c  97913900  or r3, r19, r3
001940  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001944  b3920228  sext_int2long r[6:7], r5
001948  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00194c  ab0100f0  lui r3, 983040
001950  1fc2ed01  addli r4, r27, 244
001954  97b0c203  sll.d r[2:3], r[6:7], r28
001958  e302dfd5  loadli.w r5,  -5400(r30)
00195c  97913900  or r3, r19, r3
001960  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001964  b3920228  sext_int2long r[6:7], r5
001968  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00196c  ab0100f0  lui r3, 983040
001970  1fe2ed01  addli r4, r27, 246
001974  97b0c203  sll.d r[2:3], r[6:7], r28
001978  e342dfd5  loadli.w r5,  -5396(r30)
00197c  97913900  or r3, r19, r3
001980  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001984  b3920228  sext_int2long r[6:7], r5
001988  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00198c  ab0100f0  lui r3, 983040
001990  1f82fd01  addli r4, r27, 248
001994  97b0c203  sll.d r[2:3], r[6:7], r28
001998  e302efd5  loadli.w r5,  -5392(r30)
00199c  97913900  or r3, r19, r3
0019a0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0019a4  b3920228  sext_int2long r[6:7], r5
0019a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0019ac  ab0100f0  lui r3, 983040
0019b0  1fa2fd01  addli r4, r27, 250
0019b4  97b0c203  sll.d r[2:3], r[6:7], r28
0019b8  e342efd5  loadli.w r5,  -5388(r30)
0019bc  97913900  or r3, r19, r3
0019c0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0019c4  b3920228  sext_int2long r[6:7], r5
0019c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0019cc  ab0100f0  lui r3, 983040
0019d0  1fc2fd01  addli r4, r27, 252
0019d4  97b0c203  sll.d r[2:3], r[6:7], r28
0019d8  e302ffd5  loadli.w r5,  -5384(r30)
0019dc  97913900  or r3, r19, r3
0019e0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0019e4  b3920228  sext_int2long r[6:7], r5
0019e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0019ec  ab0100f0  lui r3, 983040
0019f0  1fe2fd01  addli r4, r27, 254
0019f4  97b0c203  sll.d r[2:3], r[6:7], r28
0019f8  e342ffd5  loadli.w r5,  -5380(r30)
0019fc  97913900  or r3, r19, r3
001a00  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001a04  b3920228  sext_int2long r[6:7], r5
001a08  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001a0c  63020fd6  loadli.w r4,  -5376(r30)
001a10  ab0100f0  lui r3, 983040
001a14  97b0c203  sll.d r[2:3], r[6:7], r28
001a18  6303ffd9  loadli.w r6,  -4872(r30)
001a1c  97913900  or r3, r19, r3
001a20  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001a24  33120228  sext_int2long r[5:6], r4
001a28  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
001a2c  9730c203  sll.d r[2:3], r[5:6], r28
001a30  e3420fd6  loadli.w r5,  -5372(r30)
001a34  ab0100f0  lui r3, 983040
001a38  1fa20d02  addli r4, r27, 258
001a3c  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001a40  97913900  or r3, r19, r3
001a44  b3920228  sext_int2long r[6:7], r5
001a48  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001a4c  ab0100f0  lui r3, 983040
001a50  1fc20d02  addli r4, r27, 260
001a54  97b0c203  sll.d r[2:3], r[6:7], r28
001a58  e3021fd6  loadli.w r5,  -5368(r30)
001a5c  97913900  or r3, r19, r3
001a60  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001a64  b3920228  sext_int2long r[6:7], r5
001a68  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001a6c  ab0100f0  lui r3, 983040
001a70  1fe20d02  addli r4, r27, 262
001a74  97b0c203  sll.d r[2:3], r[6:7], r28
001a78  e3421fd6  loadli.w r5,  -5364(r30)
001a7c  97913900  or r3, r19, r3
001a80  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001a84  b3920228  sext_int2long r[6:7], r5
001a88  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001a8c  ab0100f0  lui r3, 983040
001a90  1f821d02  addli r4, r27, 264
001a94  97b0c203  sll.d r[2:3], r[6:7], r28
001a98  e3022fd6  loadli.w r5,  -5360(r30)
001a9c  97913900  or r3, r19, r3
001aa0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001aa4  b3920228  sext_int2long r[6:7], r5
001aa8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001aac  ab0100f0  lui r3, 983040
001ab0  1fa21d02  addli r4, r27, 266
001ab4  97b0c203  sll.d r[2:3], r[6:7], r28
001ab8  e3422fd6  loadli.w r5,  -5356(r30)
001abc  97913900  or r3, r19, r3
001ac0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001ac4  b3920228  sext_int2long r[6:7], r5
001ac8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001acc  ab0100f0  lui r3, 983040
001ad0  1fc21d02  addli r4, r27, 268
001ad4  97b0c203  sll.d r[2:3], r[6:7], r28
001ad8  e3023fd6  loadli.w r5,  -5352(r30)
001adc  97913900  or r3, r19, r3
001ae0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001ae4  b3920228  sext_int2long r[6:7], r5
001ae8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001aec  ab0100f0  lui r3, 983040
001af0  1fe21d02  addli r4, r27, 270
001af4  97b0c203  sll.d r[2:3], r[6:7], r28
001af8  e3423fd6  loadli.w r5,  -5348(r30)
001afc  97913900  or r3, r19, r3
001b00  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001b04  b3920228  sext_int2long r[6:7], r5
001b08  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001b0c  ab0100f0  lui r3, 983040
001b10  1f822d02  addli r4, r27, 272
001b14  97b0c203  sll.d r[2:3], r[6:7], r28
001b18  e3024fd6  loadli.w r5,  -5344(r30)
001b1c  97913900  or r3, r19, r3
001b20  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001b24  b3920228  sext_int2long r[6:7], r5
001b28  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001b2c  ab0100f0  lui r3, 983040
001b30  1fa22d02  addli r4, r27, 274
001b34  97b0c203  sll.d r[2:3], r[6:7], r28
001b38  e3424fd6  loadli.w r5,  -5340(r30)
001b3c  97913900  or r3, r19, r3
001b40  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001b44  b3920228  sext_int2long r[6:7], r5
001b48  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001b4c  ab0100f0  lui r3, 983040
001b50  1fc22d02  addli r4, r27, 276
001b54  97b0c203  sll.d r[2:3], r[6:7], r28
001b58  e3025fd6  loadli.w r5,  -5336(r30)
001b5c  97913900  or r3, r19, r3
001b60  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001b64  b3920228  sext_int2long r[6:7], r5
001b68  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001b6c  ab0100f0  lui r3, 983040
001b70  1fe22d02  addli r4, r27, 278
001b74  97b0c203  sll.d r[2:3], r[6:7], r28
001b78  e3425fd6  loadli.w r5,  -5332(r30)
001b7c  97913900  or r3, r19, r3
001b80  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001b84  b3920228  sext_int2long r[6:7], r5
001b88  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001b8c  ab0100f0  lui r3, 983040
001b90  1f823d02  addli r4, r27, 280
001b94  97b0c203  sll.d r[2:3], r[6:7], r28
001b98  e3026fd6  loadli.w r5,  -5328(r30)
001b9c  97913900  or r3, r19, r3
001ba0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001ba4  b3920228  sext_int2long r[6:7], r5
001ba8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001bac  ab0100f0  lui r3, 983040
001bb0  1fa23d02  addli r4, r27, 282
001bb4  97b0c203  sll.d r[2:3], r[6:7], r28
001bb8  e3426fd6  loadli.w r5,  -5324(r30)
001bbc  97913900  or r3, r19, r3
001bc0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001bc4  b3920228  sext_int2long r[6:7], r5
001bc8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001bcc  ab0100f0  lui r3, 983040
001bd0  1fc23d02  addli r4, r27, 284
001bd4  97b0c203  sll.d r[2:3], r[6:7], r28
001bd8  e3027fd6  loadli.w r5,  -5320(r30)
001bdc  97913900  or r3, r19, r3
001be0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001be4  b3920228  sext_int2long r[6:7], r5
001be8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001bec  ab0100f0  lui r3, 983040
001bf0  1fe23d02  addli r4, r27, 286
001bf4  97b0c203  sll.d r[2:3], r[6:7], r28
001bf8  e3427fd6  loadli.w r5,  -5316(r30)
001bfc  97913900  or r3, r19, r3
001c00  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001c04  b3920228  sext_int2long r[6:7], r5
001c08  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001c0c  ab0100f0  lui r3, 983040
001c10  1f824d02  addli r4, r27, 288
001c14  97b0c203  sll.d r[2:3], r[6:7], r28
001c18  e3028fd6  loadli.w r5,  -5312(r30)
001c1c  97913900  or r3, r19, r3
001c20  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001c24  b3920228  sext_int2long r[6:7], r5
001c28  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001c2c  ab0100f0  lui r3, 983040
001c30  1fa24d02  addli r4, r27, 290
001c34  97b0c203  sll.d r[2:3], r[6:7], r28
001c38  e3428fd6  loadli.w r5,  -5308(r30)
001c3c  97913900  or r3, r19, r3
001c40  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001c44  b3920228  sext_int2long r[6:7], r5
001c48  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001c4c  ab0100f0  lui r3, 983040
001c50  1fc24d02  addli r4, r27, 292
001c54  97b0c203  sll.d r[2:3], r[6:7], r28
001c58  e3029fd6  loadli.w r5,  -5304(r30)
001c5c  97913900  or r3, r19, r3
001c60  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001c64  b3920228  sext_int2long r[6:7], r5
001c68  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001c6c  ab0100f0  lui r3, 983040
001c70  1fe24d02  addli r4, r27, 294
001c74  97b0c203  sll.d r[2:3], r[6:7], r28
001c78  e3429fd6  loadli.w r5,  -5300(r30)
001c7c  97913900  or r3, r19, r3
001c80  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001c84  b3920228  sext_int2long r[6:7], r5
001c88  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001c8c  ab0100f0  lui r3, 983040
001c90  1f825d02  addli r4, r27, 296
001c94  97b0c203  sll.d r[2:3], r[6:7], r28
001c98  e302afd6  loadli.w r5,  -5296(r30)
001c9c  97913900  or r3, r19, r3
001ca0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001ca4  b3920228  sext_int2long r[6:7], r5
001ca8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001cac  ab0100f0  lui r3, 983040
001cb0  1fa25d02  addli r4, r27, 298
001cb4  97b0c203  sll.d r[2:3], r[6:7], r28
001cb8  e342afd6  loadli.w r5,  -5292(r30)
001cbc  97913900  or r3, r19, r3
001cc0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001cc4  b3920228  sext_int2long r[6:7], r5
001cc8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001ccc  ab0100f0  lui r3, 983040
001cd0  1fc25d02  addli r4, r27, 300
001cd4  97b0c203  sll.d r[2:3], r[6:7], r28
001cd8  e302bfd6  loadli.w r5,  -5288(r30)
001cdc  97913900  or r3, r19, r3
001ce0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001ce4  b3920228  sext_int2long r[6:7], r5
001ce8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001cec  ab0100f0  lui r3, 983040
001cf0  1fe25d02  addli r4, r27, 302
001cf4  97b0c203  sll.d r[2:3], r[6:7], r28
001cf8  e342bfd6  loadli.w r5,  -5284(r30)
001cfc  97913900  or r3, r19, r3
001d00  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001d04  b3920228  sext_int2long r[6:7], r5
001d08  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001d0c  ab0100f0  lui r3, 983040
001d10  1f826d02  addli r4, r27, 304
001d14  97b0c203  sll.d r[2:3], r[6:7], r28
001d18  e302cfd6  loadli.w r5,  -5280(r30)
001d1c  97913900  or r3, r19, r3
001d20  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001d24  b3920228  sext_int2long r[6:7], r5
001d28  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001d2c  ab0100f0  lui r3, 983040
001d30  1fa26d02  addli r4, r27, 306
001d34  97b0c203  sll.d r[2:3], r[6:7], r28
001d38  e342cfd6  loadli.w r5,  -5276(r30)
001d3c  97913900  or r3, r19, r3
001d40  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001d44  b3920228  sext_int2long r[6:7], r5
001d48  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001d4c  ab0100f0  lui r3, 983040
001d50  1fc26d02  addli r4, r27, 308
001d54  97b0c203  sll.d r[2:3], r[6:7], r28
001d58  e302dfd6  loadli.w r5,  -5272(r30)
001d5c  97913900  or r3, r19, r3
001d60  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001d64  b3920228  sext_int2long r[6:7], r5
001d68  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001d6c  ab0100f0  lui r3, 983040
001d70  1fe26d02  addli r4, r27, 310
001d74  97b0c203  sll.d r[2:3], r[6:7], r28
001d78  e342dfd6  loadli.w r5,  -5268(r30)
001d7c  97913900  or r3, r19, r3
001d80  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001d84  b3920228  sext_int2long r[6:7], r5
001d88  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001d8c  ab0100f0  lui r3, 983040
001d90  1f827d02  addli r4, r27, 312
001d94  97b0c203  sll.d r[2:3], r[6:7], r28
001d98  e302efd6  loadli.w r5,  -5264(r30)
001d9c  97913900  or r3, r19, r3
001da0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001da4  b3920228  sext_int2long r[6:7], r5
001da8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001dac  ab0100f0  lui r3, 983040
001db0  1fa27d02  addli r4, r27, 314
001db4  97b0c203  sll.d r[2:3], r[6:7], r28
001db8  e342efd6  loadli.w r5,  -5260(r30)
001dbc  97913900  or r3, r19, r3
001dc0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001dc4  b3920228  sext_int2long r[6:7], r5
001dc8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001dcc  ab0100f0  lui r3, 983040
001dd0  1fc27d02  addli r4, r27, 316
001dd4  97b0c203  sll.d r[2:3], r[6:7], r28
001dd8  e302ffd6  loadli.w r5,  -5256(r30)
001ddc  97913900  or r3, r19, r3
001de0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001de4  b3920228  sext_int2long r[6:7], r5
001de8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001dec  ab0100f0  lui r3, 983040
001df0  1fe27d02  addli r4, r27, 318
001df4  97b0c203  sll.d r[2:3], r[6:7], r28
001df8  e342ffd6  loadli.w r5,  -5252(r30)
001dfc  97913900  or r3, r19, r3
001e00  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001e04  b3920228  sext_int2long r[6:7], r5
001e08  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001e0c  63020fd7  loadli.w r4,  -5248(r30)
001e10  ab0100f0  lui r3, 983040
001e14  97b0c203  sll.d r[2:3], r[6:7], r28
001e18  6343ffd9  loadli.w r6,  -4868(r30)
001e1c  97913900  or r3, r19, r3
001e20  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001e24  33120228  sext_int2long r[5:6], r4
001e28  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
001e2c  9730c203  sll.d r[2:3], r[5:6], r28
001e30  e3420fd7  loadli.w r5,  -5244(r30)
001e34  ab0100f0  lui r3, 983040
001e38  1fa28d02  addli r4, r27, 322
001e3c  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001e40  97913900  or r3, r19, r3
001e44  b3920228  sext_int2long r[6:7], r5
001e48  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001e4c  ab0100f0  lui r3, 983040
001e50  1fc28d02  addli r4, r27, 324
001e54  97b0c203  sll.d r[2:3], r[6:7], r28
001e58  e3021fd7  loadli.w r5,  -5240(r30)
001e5c  97913900  or r3, r19, r3
001e60  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001e64  b3920228  sext_int2long r[6:7], r5
001e68  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001e6c  ab0100f0  lui r3, 983040
001e70  1fe28d02  addli r4, r27, 326
001e74  97b0c203  sll.d r[2:3], r[6:7], r28
001e78  e3421fd7  loadli.w r5,  -5236(r30)
001e7c  97913900  or r3, r19, r3
001e80  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001e84  b3920228  sext_int2long r[6:7], r5
001e88  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001e8c  ab0100f0  lui r3, 983040
001e90  1f829d02  addli r4, r27, 328
001e94  97b0c203  sll.d r[2:3], r[6:7], r28
001e98  e3022fd7  loadli.w r5,  -5232(r30)
001e9c  97913900  or r3, r19, r3
001ea0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001ea4  b3920228  sext_int2long r[6:7], r5
001ea8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001eac  ab0100f0  lui r3, 983040
001eb0  1fa29d02  addli r4, r27, 330
001eb4  97b0c203  sll.d r[2:3], r[6:7], r28
001eb8  e3422fd7  loadli.w r5,  -5228(r30)
001ebc  97913900  or r3, r19, r3
001ec0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001ec4  b3920228  sext_int2long r[6:7], r5
001ec8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001ecc  ab0100f0  lui r3, 983040
001ed0  1fc29d02  addli r4, r27, 332
001ed4  97b0c203  sll.d r[2:3], r[6:7], r28
001ed8  e3023fd7  loadli.w r5,  -5224(r30)
001edc  97913900  or r3, r19, r3
001ee0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001ee4  b3920228  sext_int2long r[6:7], r5
001ee8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001eec  ab0100f0  lui r3, 983040
001ef0  1fe29d02  addli r4, r27, 334
001ef4  97b0c203  sll.d r[2:3], r[6:7], r28
001ef8  e3423fd7  loadli.w r5,  -5220(r30)
001efc  97913900  or r3, r19, r3
001f00  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001f04  b3920228  sext_int2long r[6:7], r5
001f08  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001f0c  ab0100f0  lui r3, 983040
001f10  1f82ad02  addli r4, r27, 336
001f14  97b0c203  sll.d r[2:3], r[6:7], r28
001f18  e3024fd7  loadli.w r5,  -5216(r30)
001f1c  97913900  or r3, r19, r3
001f20  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001f24  b3920228  sext_int2long r[6:7], r5
001f28  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001f2c  ab0100f0  lui r3, 983040
001f30  1fa2ad02  addli r4, r27, 338
001f34  97b0c203  sll.d r[2:3], r[6:7], r28
001f38  e3424fd7  loadli.w r5,  -5212(r30)
001f3c  97913900  or r3, r19, r3
001f40  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001f44  b3920228  sext_int2long r[6:7], r5
001f48  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001f4c  ab0100f0  lui r3, 983040
001f50  1fc2ad02  addli r4, r27, 340
001f54  97b0c203  sll.d r[2:3], r[6:7], r28
001f58  e3025fd7  loadli.w r5,  -5208(r30)
001f5c  97913900  or r3, r19, r3
001f60  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001f64  b3920228  sext_int2long r[6:7], r5
001f68  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001f6c  ab0100f0  lui r3, 983040
001f70  1fe2ad02  addli r4, r27, 342
001f74  97b0c203  sll.d r[2:3], r[6:7], r28
001f78  e3425fd7  loadli.w r5,  -5204(r30)
001f7c  97913900  or r3, r19, r3
001f80  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001f84  b3920228  sext_int2long r[6:7], r5
001f88  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001f8c  ab0100f0  lui r3, 983040
001f90  1f82bd02  addli r4, r27, 344
001f94  97b0c203  sll.d r[2:3], r[6:7], r28
001f98  e3026fd7  loadli.w r5,  -5200(r30)
001f9c  97913900  or r3, r19, r3
001fa0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001fa4  b3920228  sext_int2long r[6:7], r5
001fa8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001fac  ab0100f0  lui r3, 983040
001fb0  1fa2bd02  addli r4, r27, 346
001fb4  97b0c203  sll.d r[2:3], r[6:7], r28
001fb8  e3426fd7  loadli.w r5,  -5196(r30)
001fbc  97913900  or r3, r19, r3
001fc0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001fc4  b3920228  sext_int2long r[6:7], r5
001fc8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001fcc  ab0100f0  lui r3, 983040
001fd0  1fc2bd02  addli r4, r27, 348
001fd4  97b0c203  sll.d r[2:3], r[6:7], r28
001fd8  e3027fd7  loadli.w r5,  -5192(r30)
001fdc  97913900  or r3, r19, r3
001fe0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
001fe4  b3920228  sext_int2long r[6:7], r5
001fe8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001fec  ab0100f0  lui r3, 983040
001ff0  1fe2bd02  addli r4, r27, 350
001ff4  97b0c203  sll.d r[2:3], r[6:7], r28
001ff8  e3028fd7  loadli.w r5,  -5184(r30)
001ffc  97913900  or r3, r19, r3
002000  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002004  b3920228  sext_int2long r[6:7], r5
002008  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00200c  ab0100f0  lui r3, 983040
002010  1f82cd02  addli r4, r27, 352
002014  97b0c203  sll.d r[2:3], r[6:7], r28
002018  e3428fd7  loadli.w r5,  -5180(r30)
00201c  97913900  or r3, r19, r3
002020  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002024  b3920228  sext_int2long r[6:7], r5
002028  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00202c  ab0100f0  lui r3, 983040
002030  1fa2cd02  addli r4, r27, 354
002034  97b0c203  sll.d r[2:3], r[6:7], r28
002038  e3029fd7  loadli.w r5,  -5176(r30)
00203c  97913900  or r3, r19, r3
002040  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002044  b3920228  sext_int2long r[6:7], r5
002048  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00204c  ab0100f0  lui r3, 983040
002050  1fc2cd02  addli r4, r27, 356
002054  97b0c203  sll.d r[2:3], r[6:7], r28
002058  e3429fd7  loadli.w r5,  -5172(r30)
00205c  97913900  or r3, r19, r3
002060  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002064  b3920228  sext_int2long r[6:7], r5
002068  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00206c  ab0100f0  lui r3, 983040
002070  1fe2cd02  addli r4, r27, 358
002074  97b0c203  sll.d r[2:3], r[6:7], r28
002078  e302afd7  loadli.w r5,  -5168(r30)
00207c  97913900  or r3, r19, r3
002080  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002084  b3920228  sext_int2long r[6:7], r5
002088  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00208c  ab0100f0  lui r3, 983040
002090  1f82dd02  addli r4, r27, 360
002094  97b0c203  sll.d r[2:3], r[6:7], r28
002098  e342afd7  loadli.w r5,  -5164(r30)
00209c  97913900  or r3, r19, r3
0020a0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0020a4  b3920228  sext_int2long r[6:7], r5
0020a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0020ac  ab0100f0  lui r3, 983040
0020b0  1fa2dd02  addli r4, r27, 362
0020b4  97b0c203  sll.d r[2:3], r[6:7], r28
0020b8  e302bfd7  loadli.w r5,  -5160(r30)
0020bc  97913900  or r3, r19, r3
0020c0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0020c4  b3920228  sext_int2long r[6:7], r5
0020c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0020cc  ab0100f0  lui r3, 983040
0020d0  1fc2dd02  addli r4, r27, 364
0020d4  97b0c203  sll.d r[2:3], r[6:7], r28
0020d8  e342bfd7  loadli.w r5,  -5156(r30)
0020dc  97913900  or r3, r19, r3
0020e0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0020e4  b3920228  sext_int2long r[6:7], r5
0020e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0020ec  ab0100f0  lui r3, 983040
0020f0  1fe2dd02  addli r4, r27, 366
0020f4  97b0c203  sll.d r[2:3], r[6:7], r28
0020f8  e302cfd7  loadli.w r5,  -5152(r30)
0020fc  97913900  or r3, r19, r3
002100  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002104  b3920228  sext_int2long r[6:7], r5
002108  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00210c  ab0100f0  lui r3, 983040
002110  1f82ed02  addli r4, r27, 368
002114  97b0c203  sll.d r[2:3], r[6:7], r28
002118  e342cfd7  loadli.w r5,  -5148(r30)
00211c  97913900  or r3, r19, r3
002120  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002124  b3920228  sext_int2long r[6:7], r5
002128  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00212c  ab0100f0  lui r3, 983040
002130  1fa2ed02  addli r4, r27, 370
002134  97b0c203  sll.d r[2:3], r[6:7], r28
002138  e302dfd7  loadli.w r5,  -5144(r30)
00213c  97913900  or r3, r19, r3
002140  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002144  b3920228  sext_int2long r[6:7], r5
002148  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00214c  ab0100f0  lui r3, 983040
002150  1fc2ed02  addli r4, r27, 372
002154  97b0c203  sll.d r[2:3], r[6:7], r28
002158  e342dfd7  loadli.w r5,  -5140(r30)
00215c  97913900  or r3, r19, r3
002160  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002164  b3920228  sext_int2long r[6:7], r5
002168  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00216c  ab0100f0  lui r3, 983040
002170  1fe2ed02  addli r4, r27, 374
002174  97b0c203  sll.d r[2:3], r[6:7], r28
002178  e302efd7  loadli.w r5,  -5136(r30)
00217c  97913900  or r3, r19, r3
002180  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002184  b3920228  sext_int2long r[6:7], r5
002188  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00218c  ab0100f0  lui r3, 983040
002190  1f82fd02  addli r4, r27, 376
002194  97b0c203  sll.d r[2:3], r[6:7], r28
002198  e342efd7  loadli.w r5,  -5132(r30)
00219c  97913900  or r3, r19, r3
0021a0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0021a4  b3920228  sext_int2long r[6:7], r5
0021a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0021ac  ab0100f0  lui r3, 983040
0021b0  1fa2fd02  addli r4, r27, 378
0021b4  97b0c203  sll.d r[2:3], r[6:7], r28
0021b8  e302ffd7  loadli.w r5,  -5128(r30)
0021bc  97913900  or r3, r19, r3
0021c0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0021c4  b3920228  sext_int2long r[6:7], r5
0021c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0021cc  ab0100f0  lui r3, 983040
0021d0  1fc2fd02  addli r4, r27, 380
0021d4  97b0c203  sll.d r[2:3], r[6:7], r28
0021d8  e342ffd7  loadli.w r5,  -5124(r30)
0021dc  97913900  or r3, r19, r3
0021e0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0021e4  b3920228  sext_int2long r[6:7], r5
0021e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0021ec  ab0100f0  lui r3, 983040
0021f0  1fe2fd02  addli r4, r27, 382
0021f4  97b0c203  sll.d r[2:3], r[6:7], r28
0021f8  e3020fd8  loadli.w r5,  -5120(r30)
0021fc  97913900  or r3, r19, r3
002200  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002204  b3920228  sext_int2long r[6:7], r5
002208  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00220c  63420fd8  loadli.w r4,  -5116(r30)
002210  ab0100f0  lui r3, 983040
002214  97b0c203  sll.d r[2:3], r[6:7], r28
002218  63030fda  loadli.w r6,  -4864(r30)
00221c  97913900  or r3, r19, r3
002220  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002224  33120228  sext_int2long r[5:6], r4
002228  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
00222c  9730c203  sll.d r[2:3], r[5:6], r28
002230  e3021fd8  loadli.w r5,  -5112(r30)
002234  ab0100f0  lui r3, 983040
002238  1fa20d03  addli r4, r27, 386
00223c  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002240  97913900  or r3, r19, r3
002244  b3920228  sext_int2long r[6:7], r5
002248  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00224c  ab0100f0  lui r3, 983040
002250  1fc20d03  addli r4, r27, 388
002254  97b0c203  sll.d r[2:3], r[6:7], r28
002258  e3421fd8  loadli.w r5,  -5108(r30)
00225c  97913900  or r3, r19, r3
002260  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002264  b3920228  sext_int2long r[6:7], r5
002268  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00226c  ab0100f0  lui r3, 983040
002270  1fe20d03  addli r4, r27, 390
002274  97b0c203  sll.d r[2:3], r[6:7], r28
002278  e3022fd8  loadli.w r5,  -5104(r30)
00227c  97913900  or r3, r19, r3
002280  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002284  b3920228  sext_int2long r[6:7], r5
002288  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00228c  ab0100f0  lui r3, 983040
002290  1f821d03  addli r4, r27, 392
002294  97b0c203  sll.d r[2:3], r[6:7], r28
002298  e3422fd8  loadli.w r5,  -5100(r30)
00229c  97913900  or r3, r19, r3
0022a0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0022a4  b3920228  sext_int2long r[6:7], r5
0022a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0022ac  ab0100f0  lui r3, 983040
0022b0  1fa21d03  addli r4, r27, 394
0022b4  97b0c203  sll.d r[2:3], r[6:7], r28
0022b8  e3023fd8  loadli.w r5,  -5096(r30)
0022bc  97913900  or r3, r19, r3
0022c0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0022c4  b3920228  sext_int2long r[6:7], r5
0022c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0022cc  ab0100f0  lui r3, 983040
0022d0  1fc21d03  addli r4, r27, 396
0022d4  97b0c203  sll.d r[2:3], r[6:7], r28
0022d8  e3423fd8  loadli.w r5,  -5092(r30)
0022dc  97913900  or r3, r19, r3
0022e0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0022e4  b3920228  sext_int2long r[6:7], r5
0022e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0022ec  ab0100f0  lui r3, 983040
0022f0  1fe21d03  addli r4, r27, 398
0022f4  97b0c203  sll.d r[2:3], r[6:7], r28
0022f8  e3024fd8  loadli.w r5,  -5088(r30)
0022fc  97913900  or r3, r19, r3
002300  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002304  b3920228  sext_int2long r[6:7], r5
002308  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00230c  ab0100f0  lui r3, 983040
002310  1f822d03  addli r4, r27, 400
002314  97b0c203  sll.d r[2:3], r[6:7], r28
002318  e3424fd8  loadli.w r5,  -5084(r30)
00231c  97913900  or r3, r19, r3
002320  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002324  b3920228  sext_int2long r[6:7], r5
002328  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00232c  ab0100f0  lui r3, 983040
002330  1fa22d03  addli r4, r27, 402
002334  97b0c203  sll.d r[2:3], r[6:7], r28
002338  e3025fd8  loadli.w r5,  -5080(r30)
00233c  97913900  or r3, r19, r3
002340  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002344  b3920228  sext_int2long r[6:7], r5
002348  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00234c  ab0100f0  lui r3, 983040
002350  1fc22d03  addli r4, r27, 404
002354  97b0c203  sll.d r[2:3], r[6:7], r28
002358  e3425fd8  loadli.w r5,  -5076(r30)
00235c  97913900  or r3, r19, r3
002360  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002364  b3920228  sext_int2long r[6:7], r5
002368  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00236c  ab0100f0  lui r3, 983040
002370  1fe22d03  addli r4, r27, 406
002374  97b0c203  sll.d r[2:3], r[6:7], r28
002378  e3026fd8  loadli.w r5,  -5072(r30)
00237c  97913900  or r3, r19, r3
002380  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002384  b3920228  sext_int2long r[6:7], r5
002388  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00238c  ab0100f0  lui r3, 983040
002390  1f823d03  addli r4, r27, 408
002394  97b0c203  sll.d r[2:3], r[6:7], r28
002398  e3426fd8  loadli.w r5,  -5068(r30)
00239c  97913900  or r3, r19, r3
0023a0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0023a4  b3920228  sext_int2long r[6:7], r5
0023a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0023ac  ab0100f0  lui r3, 983040
0023b0  1fa23d03  addli r4, r27, 410
0023b4  97b0c203  sll.d r[2:3], r[6:7], r28
0023b8  e3027fd8  loadli.w r5,  -5064(r30)
0023bc  97913900  or r3, r19, r3
0023c0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0023c4  b3920228  sext_int2long r[6:7], r5
0023c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0023cc  ab0100f0  lui r3, 983040
0023d0  1fc23d03  addli r4, r27, 412
0023d4  97b0c203  sll.d r[2:3], r[6:7], r28
0023d8  e3427fd8  loadli.w r5,  -5060(r30)
0023dc  97913900  or r3, r19, r3
0023e0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0023e4  b3920228  sext_int2long r[6:7], r5
0023e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0023ec  ab0100f0  lui r3, 983040
0023f0  1fe23d03  addli r4, r27, 414
0023f4  97b0c203  sll.d r[2:3], r[6:7], r28
0023f8  e3028fd8  loadli.w r5,  -5056(r30)
0023fc  97913900  or r3, r19, r3
002400  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002404  b3920228  sext_int2long r[6:7], r5
002408  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00240c  ab0100f0  lui r3, 983040
002410  1f824d03  addli r4, r27, 416
002414  97b0c203  sll.d r[2:3], r[6:7], r28
002418  e3428fd8  loadli.w r5,  -5052(r30)
00241c  97913900  or r3, r19, r3
002420  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002424  b3920228  sext_int2long r[6:7], r5
002428  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00242c  ab0100f0  lui r3, 983040
002430  1fa24d03  addli r4, r27, 418
002434  97b0c203  sll.d r[2:3], r[6:7], r28
002438  e3029fd8  loadli.w r5,  -5048(r30)
00243c  97913900  or r3, r19, r3
002440  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002444  b3920228  sext_int2long r[6:7], r5
002448  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00244c  ab0100f0  lui r3, 983040
002450  1fc24d03  addli r4, r27, 420
002454  97b0c203  sll.d r[2:3], r[6:7], r28
002458  e3429fd8  loadli.w r5,  -5044(r30)
00245c  97913900  or r3, r19, r3
002460  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002464  b3920228  sext_int2long r[6:7], r5
002468  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00246c  ab0100f0  lui r3, 983040
002470  1fe24d03  addli r4, r27, 422
002474  97b0c203  sll.d r[2:3], r[6:7], r28
002478  e302afd8  loadli.w r5,  -5040(r30)
00247c  97913900  or r3, r19, r3
002480  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002484  b3920228  sext_int2long r[6:7], r5
002488  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00248c  ab0100f0  lui r3, 983040
002490  1f825d03  addli r4, r27, 424
002494  97b0c203  sll.d r[2:3], r[6:7], r28
002498  e342afd8  loadli.w r5,  -5036(r30)
00249c  97913900  or r3, r19, r3
0024a0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0024a4  b3920228  sext_int2long r[6:7], r5
0024a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0024ac  ab0100f0  lui r3, 983040
0024b0  1fa25d03  addli r4, r27, 426
0024b4  97b0c203  sll.d r[2:3], r[6:7], r28
0024b8  e302bfd8  loadli.w r5,  -5032(r30)
0024bc  97913900  or r3, r19, r3
0024c0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0024c4  b3920228  sext_int2long r[6:7], r5
0024c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0024cc  ab0100f0  lui r3, 983040
0024d0  1fc25d03  addli r4, r27, 428
0024d4  97b0c203  sll.d r[2:3], r[6:7], r28
0024d8  e342bfd8  loadli.w r5,  -5028(r30)
0024dc  97913900  or r3, r19, r3
0024e0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0024e4  b3920228  sext_int2long r[6:7], r5
0024e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0024ec  ab0100f0  lui r3, 983040
0024f0  1fe25d03  addli r4, r27, 430
0024f4  97b0c203  sll.d r[2:3], r[6:7], r28
0024f8  e302cfd8  loadli.w r5,  -5024(r30)
0024fc  97913900  or r3, r19, r3
002500  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002504  b3920228  sext_int2long r[6:7], r5
002508  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00250c  ab0100f0  lui r3, 983040
002510  1f826d03  addli r4, r27, 432
002514  97b0c203  sll.d r[2:3], r[6:7], r28
002518  e342cfd8  loadli.w r5,  -5020(r30)
00251c  97913900  or r3, r19, r3
002520  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002524  b3920228  sext_int2long r[6:7], r5
002528  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00252c  ab0100f0  lui r3, 983040
002530  1fa26d03  addli r4, r27, 434
002534  97b0c203  sll.d r[2:3], r[6:7], r28
002538  e302dfd8  loadli.w r5,  -5016(r30)
00253c  97913900  or r3, r19, r3
002540  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002544  b3920228  sext_int2long r[6:7], r5
002548  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00254c  ab0100f0  lui r3, 983040
002550  1fc26d03  addli r4, r27, 436
002554  97b0c203  sll.d r[2:3], r[6:7], r28
002558  e342dfd8  loadli.w r5,  -5012(r30)
00255c  97913900  or r3, r19, r3
002560  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002564  b3920228  sext_int2long r[6:7], r5
002568  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00256c  ab0100f0  lui r3, 983040
002570  1fe26d03  addli r4, r27, 438
002574  97b0c203  sll.d r[2:3], r[6:7], r28
002578  e302efd8  loadli.w r5,  -5008(r30)
00257c  97913900  or r3, r19, r3
002580  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002584  b3920228  sext_int2long r[6:7], r5
002588  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00258c  ab0100f0  lui r3, 983040
002590  1f827d03  addli r4, r27, 440
002594  97b0c203  sll.d r[2:3], r[6:7], r28
002598  e342efd8  loadli.w r5,  -5004(r30)
00259c  97913900  or r3, r19, r3
0025a0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0025a4  b3920228  sext_int2long r[6:7], r5
0025a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0025ac  ab0100f0  lui r3, 983040
0025b0  1fa27d03  addli r4, r27, 442
0025b4  97b0c203  sll.d r[2:3], r[6:7], r28
0025b8  e302ffd8  loadli.w r5,  -5000(r30)
0025bc  97913900  or r3, r19, r3
0025c0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0025c4  b3920228  sext_int2long r[6:7], r5
0025c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0025cc  ab0100f0  lui r3, 983040
0025d0  1fc27d03  addli r4, r27, 444
0025d4  97b0c203  sll.d r[2:3], r[6:7], r28
0025d8  e342ffd8  loadli.w r5,  -4996(r30)
0025dc  97913900  or r3, r19, r3
0025e0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0025e4  b3920228  sext_int2long r[6:7], r5
0025e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0025ec  ab0100f0  lui r3, 983040
0025f0  1fe27d03  addli r4, r27, 446
0025f4  97b0c203  sll.d r[2:3], r[6:7], r28
0025f8  e3020fd9  loadli.w r5,  -4992(r30)
0025fc  97913900  or r3, r19, r3
002600  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002604  b3920228  sext_int2long r[6:7], r5
002608  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00260c  63420fd9  loadli.w r4,  -4988(r30)
002610  ab0100f0  lui r3, 983040
002614  97b0c203  sll.d r[2:3], r[6:7], r28
002618  63430fda  loadli.w r6,  -4860(r30)
00261c  97913900  or r3, r19, r3
002620  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002624  33120228  sext_int2long r[5:6], r4
002628  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
00262c  9730c203  sll.d r[2:3], r[5:6], r28
002630  e3021fd9  loadli.w r5,  -4984(r30)
002634  ab0100f0  lui r3, 983040
002638  1fa28d03  addli r4, r27, 450
00263c  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002640  97913900  or r3, r19, r3
002644  b3920228  sext_int2long r[6:7], r5
002648  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00264c  ab0100f0  lui r3, 983040
002650  1fc28d03  addli r4, r27, 452
002654  97b0c203  sll.d r[2:3], r[6:7], r28
002658  e3421fd9  loadli.w r5,  -4980(r30)
00265c  97913900  or r3, r19, r3
002660  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002664  b3920228  sext_int2long r[6:7], r5
002668  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00266c  ab0100f0  lui r3, 983040
002670  1fe28d03  addli r4, r27, 454
002674  97b0c203  sll.d r[2:3], r[6:7], r28
002678  e3022fd9  loadli.w r5,  -4976(r30)
00267c  97913900  or r3, r19, r3
002680  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002684  b3920228  sext_int2long r[6:7], r5
002688  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00268c  ab0100f0  lui r3, 983040
002690  1f829d03  addli r4, r27, 456
002694  97b0c203  sll.d r[2:3], r[6:7], r28
002698  e3422fd9  loadli.w r5,  -4972(r30)
00269c  97913900  or r3, r19, r3
0026a0  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0026a4  b3920228  sext_int2long r[6:7], r5
0026a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0026ac  63023fd9  loadli.w r4,  -4968(r30)
0026b0  ab0100f0  lui r3, 983040
0026b4  97b0c203  sll.d r[2:3], r[6:7], r28
0026b8  1fa39d03  addli r6, r27, 458
0026bc  97913900  or r3, r19, r3
0026c0  33120228  sext_int2long r[5:6], r4
0026c4  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0026c8  1732c203  sll.d r[5:6], r[5:6], r28
0026cc  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
0026d0  ab0100f0  lui r3, 983040
0026d4  8ba04b10  add.ul r[2:3], r[24:25], r[5:6]
0026d8  e3423fd9  loadli.w r5,  -4964(r30)
0026dc  1fc29d03  addli r4, r27, 460
0026e0  97913900  or r3, r19, r3
0026e4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0026e8  b3920228  sext_int2long r[6:7], r5
0026ec  97b1c203  sll.d r[4:5], r[6:7], r28
0026f0  9f021fda  addli r5, r30, -4856
0026f4  1fe39d03  addli r6, r27, 462
0026f8  1f1e0000  addli r28, zero, 1
0026fc  ebd00200  load.d r[2:3], 0(r5)
002700  9f02efdf  addli r5, r30, -4112
002704  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002708  73b01200  store.d r[2:3], 0(r5)
00270c  ab0200f0  lui r5, 983040
002710  a7800b00  addli.d r[2:3], r[24:25], 0
002714  8ba13010  add.ul r[4:5], r[2:3], r[4:5]
002718  97925900  or r5, r19, r5
00271c  ffb26100  s_lm2gm r5, r6, 0(r[4:5])
002720  e3414fd9  loadli.w r3,  -4956(r30)
002724  97b2c303  sll.d r[6:7], r[8:9], r28
002728  ab0300f0  lui r7, 983040
00272c  1f84ad03  addli r8, r27, 464
002730  8ba25010  add.ul r[6:7], r[2:3], r[6:7]
002734  97937900  or r7, r19, r7
002738  b3910128  sext_int2long r[4:5], r3
00273c  ffb38200  s_lm2gm r7, r8, 0(r[6:7])
002740  97b3c403  sll.d r[8:9], r[10:11], r28
002744  ab0400f0  lui r9, 983040
002748  1fa5ad03  addli r10, r27, 466
00274c  e3425fd9  loadli.w r5,  -4948(r30)
002750  97b1c103  sll.d r[4:5], r[4:5], r28
002754  97949900  or r9, r19, r9
002758  8ba37010  add.ul r[8:9], r[2:3], r[8:9]
00275c  8ba13010  add.ul r[4:5], r[2:3], r[4:5]
002760  b3920228  sext_int2long r[6:7], r5
002764  ffb4a100  s_lm2gm r9, r10, 0(r[4:5])
002768  97b4c503  sll.d r[10:11], r[12:13], r28
00276c  e3057fd9  loadli.w r11,  -4936(r30)
002770  97b2c203  sll.d r[6:7], r[6:7], r28
002774  e3416fd9  loadli.w r3,  -4940(r30)
002778  8ba69010  add.ul r[14:15], r[2:3], r[10:11]
00277c  ab0400f0  lui r9, 983040
002780  1fc5ad03  addli r10, r27, 468
002784  8ba25010  add.ul r[6:7], r[2:3], r[6:7]
002788  b3950528  sext_int2long r[12:13], r11
00278c  b3910128  sext_int2long r[4:5], r3
002790  97949900  or r9, r19, r9
002794  97b1c103  sll.d r[4:5], r[4:5], r28
002798  ffb4a300  s_lm2gm r9, r10, 0(r[8:9])
00279c  e3437fd9  loadli.w r7,  -4932(r30)
0027a0  97b4c503  sll.d r[10:11], r[12:13], r28
0027a4  e3058fd9  loadli.w r11,  -4928(r30)
0027a8  8ba13010  add.ul r[4:5], r[2:3], r[4:5]
0027ac  8ba89010  add.ul r[18:19], r[2:3], r[10:11]
0027b0  b3930328  sext_int2long r[8:9], r7
0027b4  b3950528  sext_int2long r[12:13], r11
0027b8  97b3c303  sll.d r[8:9], r[8:9], r28
0027bc  8ba47010  add.ul r[10:11], r[2:3], r[8:9]
0027c0  ab0300f0  lui r7, 983040
0027c4  1fe4ad03  addli r8, r27, 470
0027c8  97937900  or r7, r19, r7
0027cc  ffb38200  s_lm2gm r7, r8, 0(r[6:7])
0027d0  e3428fd9  loadli.w r5,  -4924(r30)
0027d4  97b3c503  sll.d r[8:9], r[12:13], r28
0027d8  8bac7010  add.ul r[26:27], r[2:3], r[8:9]
0027dc  e3039fd9  loadli.w r7,  -4920(r30)
0027e0  b3920228  sext_int2long r[6:7], r5
0027e4  97b2c203  sll.d r[6:7], r[6:7], r28
0027e8  b3930328  sext_int2long r[8:9], r7
0027ec  8ba55010  add.ul r[12:13], r[2:3], r[6:7]
0027f0  ab0200f0  lui r5, 983040
0027f4  1f83bd03  addli r6, r27, 472
0027f8  97b3c303  sll.d r[8:9], r[8:9], r28
0027fc  97925900  or r5, r19, r5
002800  8ba77010  add.ul r[16:17], r[2:3], r[8:9]
002804  ab0300f0  lui r7, 983040
002808  1fa4bd03  addli r8, r27, 474
00280c  ffb26600  s_lm2gm r5, r6, 0(r[14:15])
002810  e3429fd9  loadli.w r5,  -4916(r30)
002814  97937900  or r7, r19, r7
002818  ffb38100  s_lm2gm r7, r8, 0(r[4:5])
00281c  e341afd9  loadli.w r3,  -4908(r30)
002820  9f030fde  addli r7, r30, -4352
002824  b3920228  sext_int2long r[6:7], r5
002828  97b2c203  sll.d r[6:7], r[6:7], r28
00282c  b3910128  sext_int2long r[4:5], r3
002830  8bab5010  add.ul r[24:25], r[2:3], r[6:7]
002834  e302afd9  loadli.w r5,  -4912(r30)
002838  97b1c103  sll.d r[4:5], r[4:5], r28
00283c  8baa3010  add.ul r[22:23], r[2:3], r[4:5]
002840  b3920228  sext_int2long r[6:7], r5
002844  97b2c203  sll.d r[6:7], r[6:7], r28
002848  8ba65010  add.ul r[14:15], r[2:3], r[6:7]
00284c  e302bfd9  loadli.w r5,  -4904(r30)
002850  b3920228  sext_int2long r[6:7], r5
002854  97b1c203  sll.d r[4:5], r[6:7], r28
002858  ab0200f0  lui r5, 983040
00285c  1fc3bd03  addli r6, r27, 476
002860  8ba13010  add.ul r[4:5], r[2:3], r[4:5]
002864  97925900  or r5, r19, r5
002868  73b03300  store.d r[4:5], 0(r7)
00286c  e301cfd9  loadli.w r3,  -4896(r30)
002870  ffb26800  s_lm2gm r5, r6, 0(r[18:19])
002874  e342bfd9  loadli.w r5,  -4900(r30)
002878  b3910128  sext_int2long r[4:5], r3
00287c  b3920228  sext_int2long r[6:7], r5
002880  97b1c103  sll.d r[4:5], r[4:5], r28
002884  97b3c203  sll.d r[8:9], r[6:7], r28
002888  9f028fde  addli r5, r30, -4288
00288c  8ba13010  add.ul r[4:5], r[2:3], r[4:5]
002890  73b03200  store.d r[4:5], 0(r5)
002894  8ba17010  add.ul r[4:5], r[2:3], r[8:9]
002898  9f020fdf  addli r5, r30, -4224
00289c  ab0300f0  lui r7, 983040
0028a0  1f140000  addli r8, zero, 1
0028a4  73b03200  store.d r[4:5], 0(r5)
0028a8  e341cfd9  loadli.w r3,  -4892(r30)
0028ac  a7820000  addli.d r[6:7], r[2:3], 0
0028b0  97937900  or r7, r19, r7
0028b4  b3980128  sext_int2long r[18:19], r3
0028b8  9f01efdf  addli r3, r30, -4112
0028bc  ebd00100  load.d r[2:3], 0(r3)
0028c0  97b8c803  sll.d r[18:19], r[18:19], r28
0028c4  8ba11211  add.ul r[4:5], r[6:7], r[18:19]
0028c8  ab0800f0  lui r17, 983040
0028cc  ffb3b001  s_lm2gm r7, r27, 0(r[2:3])
0028d0  e300dfd9  loadli.w r1,  -4888(r30)
0028d4  9f03efdf  addli r7, r30, -4112
0028d8  179e1901  or r28, r19, r17
0028dc  73b03300  store.d r[4:5], 0(r7)
0028e0  9f010ff0  addli r3, r30, -2048
0028e4  63424fda  loadli.w r4,  -4828(r30)
0028e8  b3900028  sext_int2long r[2:3], r1
0028ec  9fedb103  addli r27, r3, 478
0028f0  97b08002  sll.d r[2:3], r[2:3], r8
0028f4  7fbeb401  s_lm2gm r28, r27, 0(r[10:11])
0028f8  ab0400f0  lui r9, 983040
0028fc  1f85c103  addli r10, r3, 480
002900  8ba81210  add.ul r[18:19], r[6:7], r[2:3]
002904  e3004fda  loadli.w r1,  -4832(r30)
002908  97949900  or r9, r19, r9
00290c  b3900028  sext_int2long r[2:3], r1
002910  ffb4ac00  s_lm2gm r9, r10, 0(r[26:27])
002914  b31c0228  sext_int2long r[26:27], r4
002918  63025fda  loadli.w r4,  -4824(r30)
00291c  97b08002  sll.d r[2:3], r[2:3], r8
002920  8ba41210  add.ul r[10:11], r[6:7], r[2:3]
002924  97b08c02  sll.d r[2:3], r[26:27], r8
002928  ab0c00f0  lui r25, 983040
00292c  1fadc103  addli r26, r3, 482
002930  979c9901  or r25, r19, r25
002934  8ba01210  add.ul r[2:3], r[6:7], r[2:3]
002938  ffbca501  s_lm2gm r25, r26, 0(r[12:13])
00293c  ab0c00f0  lui r25, 983040
002940  b3150228  sext_int2long r[12:13], r4
002944  1fcdc103  addli r26, r3, 484
002948  63425fda  loadli.w r4,  -4820(r30)
00294c  979c9901  or r25, r19, r25
002950  97b58502  sll.d r[12:13], r[12:13], r8
002954  ffbca701  s_lm2gm r25, r26, 0(r[16:17])
002958  ab0c00f0  lui r25, 983040
00295c  b3170228  sext_int2long r[16:17], r4
002960  63026fda  loadli.w r4,  -4816(r30)
002964  1fedc103  addli r26, r3, 486
002968  8ba5b210  add.ul r[12:13], r[6:7], r[12:13]
00296c  979c9901  or r25, r19, r25
002970  97b78702  sll.d r[16:17], r[16:17], r8
002974  ffbcab01  s_lm2gm r25, r26, 0(r[24:25])
002978  ab0b00f0  lui r23, 983040
00297c  331d0228  sext_int2long r[27:28], r4
002980  8ba7f210  add.ul r[16:17], r[6:7], r[16:17]
002984  9f8cd103  addli r25, r3, 488
002988  179e7901  or r28, r19, r23
00298c  973b8d02  sll.d r[24:25], r[27:28], r8
002990  9fadd103  addli r27, r3, 490
002994  ab0100f0  lui r3, 983040
002998  2b0d00f0  lui r26, 983040
00299c  1f040fdf  addli r8, r30, -4224
0029a0  8bab7211  add.ul r[24:25], r[6:7], r[24:25]
0029a4  1f030fde  addli r6, r30, -4352
0029a8  7fbeba01  s_lm2gm r28, r27, 0(r[22:23])
0029ac  9f0d0ff0  addli r27, r30, -2048
0029b0  97913900  or r3, r19, r3
0029b4  179da901  or r26, r19, r26
0029b8  634bffdf  loadli.w r22,  -4100(r30)
0029bc  6b520300  load.d r[5:6], 0(r6)
0029c0  1fcadd03  addli r20, r27, 492
0029c4  7fbd9601  s_lm2gm r26, r25, 0(r[14:15])
0029c8  2b0700f0  lui r14, 983040
0029cc  9fe6dd03  addli r13, r27, 494
0029d0  1f83ed03  addli r6, r27, 496
0029d4  9faaed03  addli r21, r27, 498
0029d8  1797e900  or r14, r19, r14
0029dc  ff314201  s_lm2gm r3, r20, 0(r[5:6])
0029e0  ab0100f0  lui r3, 983040
0029e4  9f028fde  addli r5, r30, -4288
0029e8  2b0affff  lui r20, 1048560
0029ec  97933900  or r7, r19, r3
0029f0  ebd10200  load.d r[4:5], 0(r5)
0029f4  ab0200f0  lui r5, 983040
0029f8  97925900  or r5, r19, r5
0029fc  7fb7d100  s_lm2gm r14, r13, 0(r[4:5])
002a00  eb510400  load.d r[4:5], 0(r8)
002a04  1f04efdf  addli r8, r30, -4112
002a08  ab0600f0  lui r13, 983040
002a0c  ffb26100  s_lm2gm r5, r6, 0(r[4:5])
002a10  eb520400  load.d r[6:7], 0(r8)
002a14  9791d900  or r3, r19, r13
002a18  1fc2ed03  addli r4, r27, 500
002a1c  ffb34800  s_lm2gm r7, r4, 0(r[18:19])
002a20  1fe2ed03  addli r4, r27, 502
002a24  ffb15201  s_lm2gm r3, r21, 0(r[6:7])
002a28  ab0100f0  lui r3, 983040
002a2c  2b0300f0  lui r6, 983040
002a30  9fc2fd03  addli r5, r27, 508
002a34  97913900  or r3, r19, r3
002a38  17936900  or r6, r19, r6
002a3c  ffb14400  s_lm2gm r3, r4, 0(r[10:11])
002a40  2b0200f0  lui r4, 983040
002a44  9f81fd03  addli r3, r27, 504
002a48  17924900  or r4, r19, r4
002a4c  7fb23000  s_lm2gm r4, r3, 0(r[2:3])
002a50  ab0000f0  lui r1, 983040
002a54  1fa1fd03  addli r2, r27, 506
002a58  ab0100f0  lui r3, 983040
002a5c  97901900  or r1, r19, r1
002a60  ffb02500  s_lm2gm r1, r2, 0(r[12:13])
002a64  97903900  or r1, r19, r3
002a68  1fe1fd03  addli r2, r27, 510
002a6c  e3452fda  loadli.w r11,  -4844(r30)
002a70  e309ffdf  loadli.w r19,  -4104(r30)
002a74  ffb05700  s_lm2gm r1, r5, 0(r[16:17])
002a78  e340cfd1  loadli.w r1,  -5916(r30)
002a7c  7fb32b00  s_lm2gm r6, r2, 0(r[24:25])
002a80  9f0b0004  addli r23, zero, 512
002a84  00a00000  mfence { lm }
002a88  8b951510  add.s r11, r11, r1
002a8c  e300efd1  loadli.w r1,  -5904(r30)
002a90  3fa01500  blt.s r11, r1, 8
002a94  dbe50700  j 16172
002a98  9f000000  addli r1, zero, 0
002a9c  0b911d10  add.s r2, r27, r1
002aa0  9fc00000  addli r1, r1, 4
002aa4  73100100  store.h zero, 0(r2)
002aa8  73110100  store.h zero, 2(r2)
002aac  00a00000  mfence { lm }
002ab0  bbbf70ff  bneq r1, r23, -20
002ab4  e3005f00  loadli.w r1,  40(r30)
002ab8  63414f00  loadli.w r2,  36(r30)
002abc  9f120000  addli r5, zero, 1
002ac0  9f031fda  addli r7, r30, -4856
002ac4  6741bfda  storeli.w r11, -4844(r30)
002ac8  8b901530  div.s r1, r11, r1
002acc  8b902030  div.s r1, r1, r2
002ad0  6341dfd1  loadli.w r2,  -5908(r30)
002ad4  9bb04000  slli r1, r1, 4
002ad8  8b902010  add.s r1, r1, r2
002adc  1bb1a000  slli r2, r1, 10
002ae0  670f1fde  storeli.w r1, -4112(r30)
002ae4  e300dfd1  loadli.w r1,  -5912(r30)
002ae8  e74b2fd6  storeli.w r2, -5188(r30)
002aec  8b101110  add.s r1, r2, r1
002af0  2b0100f0  lui r2, 983040
002af4  b3910028  sext_int2long r[4:5], r1
002af8  17912b00  or r2, r23, r2
002afc  ab0000f0  lui r1, 983040
002b00  97b25102  sll.d r[6:7], r[4:5], r5
002b04  eb510f00  load.d r[4:5], 0(r30)
002b08  97901b00  or r1, r23, r1
002b0c  73b05300  store.d r[6:7], 0(r7)
002b10  8ba15110  add.ul r[4:5], r[4:5], r[6:7]
002b14  7fa1b101  l_gm2lm r2, r27, 0(r[4:5])
002b18  1f023fd1  addli r4, r30, -5992
002b1c  6b510200  load.d r[3:4], 0(r4)
002b20  1f020ff4  addli r4, r30, -1536
002b24  ff204100  l_gm2lm r1, r4, 0(r[3:4])
002b28  9f000ff0  addli r1, r30, -2048
002b2c  00a00000  mfence { lm }
002b30  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
002b34  9f008ff0  addli r1, r30, -1984
002b38  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
002b3c  9f000ff1  addli r1, r30, -1920
002b40  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
002b44  9f008ff1  addli r1, r30, -1856
002b48  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
002b4c  9f000ff2  addli r1, r30, -1792
002b50  e6c03480  vmerge_l.hf vr1, vr9, vr3
002b54  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002b58  9f000fdf  addli r1, r30, -4224
002b5c  00a00000  mfence { lm }
002b60  e6c55480  vmerge_l.hf vr11, vr9, vr5
002b64  66c554a0  vmerge_h.hf vr10, vr9, vr5
002b68  e6c24480  vmerge_l.hf vr5, vr9, vr4
002b6c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002b70  9f000ff4  addli r1, r30, -1536
002b74  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
002b78  9f008ff4  addli r1, r30, -1472
002b7c  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
002b80  9f000ff5  addli r1, r30, -1408
002b84  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
002b88  9f008fde  addli r1, r30, -4288
002b8c  66c07480  vmerge_l.hf vr0, vr9, vr7
002b90  16900502  vadd.f.mz.rn vr0{mr1}, vr11, vr0
002b94  e6c544a0  vmerge_h.hf vr11, vr9, vr4
002b98  66c234a0  vmerge_h.hf vr4, vr9, vr3
002b9c  e6c12480  vmerge_l.hf vr3, vr9, vr2
002ba0  66c124a0  vmerge_h.hf vr2, vr9, vr2
002ba4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002ba8  66c08480  vmerge_l.hf vr0, vr9, vr8
002bac  66c484a0  vmerge_h.hf vr8, vr9, vr8
002bb0  9f000fde  addli r1, r30, -4352
002bb4  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
002bb8  e6c074a0  vmerge_h.hf vr1, vr9, vr7
002bbc  e6c36480  vmerge_l.hf vr7, vr9, vr6
002bc0  66c364a0  vmerge_h.hf vr6, vr9, vr6
002bc4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002bc8  16108202  vadd.f.mz.rn vr0{mr1}, vr4, vr8
002bcc  9f008fdd  addli r1, r30, -4416
002bd0  16936502  vadd.f.mz.rn vr6{mr1}, vr11, vr6
002bd4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002bd8  16101502  vadd.f.mz.rn vr0{mr1}, vr10, vr1
002bdc  9f000fdd  addli r1, r30, -4480
002be0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002be4  9f008ff5  addli r1, r30, -1344
002be8  16907202  vadd.f.mz.rn vr0{mr1}, vr5, vr7
002bec  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002bf0  9f008fdc  addli r1, r30, -4544
002bf4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002bf8  9f000ff6  addli r1, r30, -1280
002bfc  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
002c00  9f000fdf  addli r1, r30, -4224
002c04  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
002c08  66c21480  vmerge_l.hf vr4, vr9, vr1
002c0c  e6c014a0  vmerge_h.hf vr1, vr9, vr1
002c10  9f000fdc  addli r1, r30, -4608
002c14  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
002c18  9f008fdb  addli r1, r30, -4672
002c1c  66c08480  vmerge_l.hf vr0, vr9, vr8
002c20  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
002c24  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
002c28  66c484a0  vmerge_h.hf vr8, vr9, vr8
002c2c  66c55480  vmerge_l.hf vr10, vr9, vr5
002c30  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
002c34  9f000fdb  addli r1, r30, -4736
002c38  e6c154a0  vmerge_h.hf vr3, vr9, vr5
002c3c  16100502  vadd.f.mz.rn vr0{mr1}, vr10, vr0
002c40  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
002c44  9f008fda  addli r1, r30, -4800
002c48  16958102  vadd.f.mz.rn vr10{mr1}, vr3, vr8
002c4c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002c50  9f008ff2  addli r1, r30, -1728
002c54  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002c58  9f008ff6  addli r1, r30, -1216
002c5c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
002c60  9f000ff3  addli r1, r30, -1664
002c64  e6c50480  vmerge_l.hf vr11, vr9, vr0
002c68  66c004a0  vmerge_h.hf vr0, vr9, vr0
002c6c  e6c02480  vmerge_l.hf vr1, vr9, vr2
002c70  66c124a0  vmerge_h.hf vr2, vr9, vr2
002c74  96951502  vadd.f.mz.rn vr11{mr1}, vr11, vr1
002c78  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002c7c  9f008ff3  addli r1, r30, -1600
002c80  96132002  vadd.f.mz.rn vr7{mr1}, vr0, vr2
002c84  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
002c88  9f000ff7  addli r1, r30, -1152
002c8c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
002c90  9f008ff7  addli r1, r30, -1088
002c94  66c41480  vmerge_l.hf vr8, vr9, vr1
002c98  66c314a0  vmerge_h.hf vr6, vr9, vr1
002c9c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
002ca0  9f000fde  addli r1, r30, -4352
002ca4  66c224a0  vmerge_h.hf vr4, vr9, vr2
002ca8  e6c22480  vmerge_l.hf vr5, vr9, vr2
002cac  66c10480  vmerge_l.hf vr2, vr9, vr0
002cb0  66c004a0  vmerge_h.hf vr0, vr9, vr0
002cb4  e6c11480  vmerge_l.hf vr3, vr9, vr1
002cb8  e6c014a0  vmerge_h.hf vr1, vr9, vr1
002cbc  16112402  vadd.f.mz.rn vr2{mr1}, vr8, vr2
002cc0  16100302  vadd.f.mz.rn vr0{mr1}, vr6, vr0
002cc4  96101202  vadd.f.mz.rn vr1{mr1}, vr4, vr1
002cc8  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
002ccc  9f008fdd  addli r1, r30, -4416
002cd0  96913202  vadd.f.mz.rn vr3{mr1}, vr5, vr3
002cd4  46104f82  vstore_mask16.mz vr4{mr1}, 1024(r30)
002cd8  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
002cdc  9f008fde  addli r1, r30, -4288
002ce0  46144f82  vstore_mask16.mz vr4{mr1}, 1088(r30)
002ce4  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
002ce8  9f000fdd  addli r1, r30, -4480
002cec  46184f82  vstore_mask16.mz vr4{mr1}, 1152(r30)
002cf0  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
002cf4  9f008fdc  addli r1, r30, -4544
002cf8  461c4f82  vstore_mask16.mz vr4{mr1}, 1216(r30)
002cfc  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
002d00  9f000fdc  addli r1, r30, -4608
002d04  46104fa2  vstore_mask16.mz vr4{mr1}, 1280(r30)
002d08  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
002d0c  9f008fdb  addli r1, r30, -4672
002d10  46144fa2  vstore_mask16.mz vr4{mr1}, 1344(r30)
002d14  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
002d18  9f000fdb  addli r1, r30, -4736
002d1c  46184fa2  vstore_mask16.mz vr4{mr1}, 1408(r30)
002d20  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
002d24  9f008fda  addli r1, r30, -4800
002d28  461c4fa2  vstore_mask16.mz vr4{mr1}, 1472(r30)
002d2c  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
002d30  46104fc2  vstore_mask16.mz vr4{mr1}, 1536(r30)
002d34  4614afc2  vstore_mask16.mz vr10{mr1}, 1600(r30)
002d38  4618bfc2  vstore_mask16.mz vr11{mr1}, 1664(r30)
002d3c  461c7fc2  vstore_mask16.mz vr7{mr1}, 1728(r30)
002d40  46102fe2  vstore_mask16.mz vr2{mr1}, 1792(r30)
002d44  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
002d48  46183fe2  vstore_mask16.mz vr3{mr1}, 1920(r30)
002d4c  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
002d50  00a00000  mfence { lm }
002d54  63080ff8  loadli.w r16,  -1024(r30)
002d58  e3470ff8  loadli.w r15,  -1020(r30)
002d5c  63071ff8  loadli.w r14,  -1016(r30)
002d60  e3461ff8  loadli.w r13,  -1012(r30)
002d64  63062ff8  loadli.w r12,  -1008(r30)
002d68  e3452ff8  loadli.w r11,  -1004(r30)
002d6c  63053ff8  loadli.w r10,  -1000(r30)
002d70  e3443ff8  loadli.w r9,  -996(r30)
002d74  63044ff8  loadli.w r8,  -992(r30)
002d78  e3434ff8  loadli.w r7,  -988(r30)
002d7c  63035ff8  loadli.w r6,  -984(r30)
002d80  e3425ff8  loadli.w r5,  -980(r30)
002d84  63026ff8  loadli.w r4,  -976(r30)
002d88  e3416ff8  loadli.w r3,  -972(r30)
002d8c  63017ff8  loadli.w r2,  -968(r30)
002d90  e3407ff8  loadli.w r1,  -964(r30)
002d94  e3088ff8  loadli.w r17,  -960(r30)
002d98  e3488ff8  loadli.w r17,  -956(r30)
002d9c  e3089ff8  loadli.w r17,  -952(r30)
002da0  e3489ff8  loadli.w r17,  -948(r30)
002da4  e308aff8  loadli.w r17,  -944(r30)
002da8  e348aff8  loadli.w r17,  -940(r30)
002dac  e308bff8  loadli.w r17,  -936(r30)
002db0  e348bff8  loadli.w r17,  -932(r30)
002db4  e308cff8  loadli.w r17,  -928(r30)
002db8  e348cff8  loadli.w r17,  -924(r30)
002dbc  e308dff8  loadli.w r17,  -920(r30)
002dc0  e348dff8  loadli.w r17,  -916(r30)
002dc4  e308eff8  loadli.w r17,  -912(r30)
002dc8  e348eff8  loadli.w r17,  -908(r30)
002dcc  e308fff8  loadli.w r17,  -904(r30)
002dd0  e348fff8  loadli.w r17,  -900(r30)
002dd4  e3080ff9  loadli.w r17,  -896(r30)
002dd8  e3480ff9  loadli.w r17,  -892(r30)
002ddc  e3081ff9  loadli.w r17,  -888(r30)
002de0  e3481ff9  loadli.w r17,  -884(r30)
002de4  e3082ff9  loadli.w r17,  -880(r30)
002de8  e3482ff9  loadli.w r17,  -876(r30)
002dec  e3083ff9  loadli.w r17,  -872(r30)
002df0  e3483ff9  loadli.w r17,  -868(r30)
002df4  e3084ff9  loadli.w r17,  -864(r30)
002df8  e3484ff9  loadli.w r17,  -860(r30)
002dfc  e3085ff9  loadli.w r17,  -856(r30)
002e00  e3485ff9  loadli.w r17,  -852(r30)
002e04  e3086ff9  loadli.w r17,  -848(r30)
002e08  e3486ff9  loadli.w r17,  -844(r30)
002e0c  e3087ff9  loadli.w r17,  -840(r30)
002e10  e3487ff9  loadli.w r17,  -836(r30)
002e14  e3088ff9  loadli.w r17,  -832(r30)
002e18  e3488ff9  loadli.w r17,  -828(r30)
002e1c  e3089ff9  loadli.w r17,  -824(r30)
002e20  e3489ff9  loadli.w r17,  -820(r30)
002e24  e308aff9  loadli.w r17,  -816(r30)
002e28  e348aff9  loadli.w r17,  -812(r30)
002e2c  e308bff9  loadli.w r17,  -808(r30)
002e30  e348bff9  loadli.w r17,  -804(r30)
002e34  e308cff9  loadli.w r17,  -800(r30)
002e38  e348cff9  loadli.w r17,  -796(r30)
002e3c  e308dff9  loadli.w r17,  -792(r30)
002e40  e348dff9  loadli.w r17,  -788(r30)
002e44  e308eff9  loadli.w r17,  -784(r30)
002e48  e348eff9  loadli.w r17,  -780(r30)
002e4c  e308fff9  loadli.w r17,  -776(r30)
002e50  e348fff9  loadli.w r17,  -772(r30)
002e54  e3080ffa  loadli.w r17,  -768(r30)
002e58  e3480ffa  loadli.w r17,  -764(r30)
002e5c  e3081ffa  loadli.w r17,  -760(r30)
002e60  e3481ffa  loadli.w r17,  -756(r30)
002e64  e3082ffa  loadli.w r17,  -752(r30)
002e68  e3482ffa  loadli.w r17,  -748(r30)
002e6c  e3083ffa  loadli.w r17,  -744(r30)
002e70  e3483ffa  loadli.w r17,  -740(r30)
002e74  e3084ffa  loadli.w r17,  -736(r30)
002e78  e3484ffa  loadli.w r17,  -732(r30)
002e7c  e3085ffa  loadli.w r17,  -728(r30)
002e80  e3485ffa  loadli.w r17,  -724(r30)
002e84  e3086ffa  loadli.w r17,  -720(r30)
002e88  e3486ffa  loadli.w r17,  -716(r30)
002e8c  e3087ffa  loadli.w r17,  -712(r30)
002e90  e3487ffa  loadli.w r17,  -708(r30)
002e94  e3088ffa  loadli.w r17,  -704(r30)
002e98  e3488ffa  loadli.w r17,  -700(r30)
002e9c  e3089ffa  loadli.w r17,  -696(r30)
002ea0  e3489ffa  loadli.w r17,  -692(r30)
002ea4  e308affa  loadli.w r17,  -688(r30)
002ea8  e348affa  loadli.w r17,  -684(r30)
002eac  e308bffa  loadli.w r17,  -680(r30)
002eb0  e348bffa  loadli.w r17,  -676(r30)
002eb4  e308cffa  loadli.w r17,  -672(r30)
002eb8  e348cffa  loadli.w r17,  -668(r30)
002ebc  e308dffa  loadli.w r17,  -664(r30)
002ec0  e348dffa  loadli.w r17,  -660(r30)
002ec4  e308effa  loadli.w r17,  -656(r30)
002ec8  e348effa  loadli.w r17,  -652(r30)
002ecc  e308fffa  loadli.w r17,  -648(r30)
002ed0  e348fffa  loadli.w r17,  -644(r30)
002ed4  e3080ffb  loadli.w r17,  -640(r30)
002ed8  e3480ffb  loadli.w r17,  -636(r30)
002edc  e3081ffb  loadli.w r17,  -632(r30)
002ee0  e3481ffb  loadli.w r17,  -628(r30)
002ee4  e3082ffb  loadli.w r17,  -624(r30)
002ee8  e3482ffb  loadli.w r17,  -620(r30)
002eec  e3083ffb  loadli.w r17,  -616(r30)
002ef0  e3483ffb  loadli.w r17,  -612(r30)
002ef4  e3084ffb  loadli.w r17,  -608(r30)
002ef8  e3484ffb  loadli.w r17,  -604(r30)
002efc  e3085ffb  loadli.w r17,  -600(r30)
002f00  e3485ffb  loadli.w r17,  -596(r30)
002f04  e3086ffb  loadli.w r17,  -592(r30)
002f08  e3486ffb  loadli.w r17,  -588(r30)
002f0c  e3087ffb  loadli.w r17,  -584(r30)
002f10  e3487ffb  loadli.w r17,  -580(r30)
002f14  e3088ffb  loadli.w r17,  -576(r30)
002f18  e3488ffb  loadli.w r17,  -572(r30)
002f1c  e3089ffb  loadli.w r17,  -568(r30)
002f20  e3489ffb  loadli.w r17,  -564(r30)
002f24  e308affb  loadli.w r17,  -560(r30)
002f28  e348affb  loadli.w r17,  -556(r30)
002f2c  e308bffb  loadli.w r17,  -552(r30)
002f30  e348bffb  loadli.w r17,  -548(r30)
002f34  e308cffb  loadli.w r17,  -544(r30)
002f38  e348cffb  loadli.w r17,  -540(r30)
002f3c  e308dffb  loadli.w r17,  -536(r30)
002f40  e348dffb  loadli.w r17,  -532(r30)
002f44  e308effb  loadli.w r17,  -528(r30)
002f48  e348effb  loadli.w r17,  -524(r30)
002f4c  e308fffb  loadli.w r17,  -520(r30)
002f50  e348fffb  loadli.w r17,  -516(r30)
002f54  e3080ffc  loadli.w r17,  -512(r30)
002f58  e3480ffc  loadli.w r17,  -508(r30)
002f5c  e3081ffc  loadli.w r17,  -504(r30)
002f60  e3481ffc  loadli.w r17,  -500(r30)
002f64  e3082ffc  loadli.w r17,  -496(r30)
002f68  e3482ffc  loadli.w r17,  -492(r30)
002f6c  e3083ffc  loadli.w r17,  -488(r30)
002f70  e3483ffc  loadli.w r17,  -484(r30)
002f74  e3084ffc  loadli.w r17,  -480(r30)
002f78  e3484ffc  loadli.w r17,  -476(r30)
002f7c  e3085ffc  loadli.w r17,  -472(r30)
002f80  e3485ffc  loadli.w r17,  -468(r30)
002f84  e3086ffc  loadli.w r17,  -464(r30)
002f88  e3486ffc  loadli.w r17,  -460(r30)
002f8c  e3087ffc  loadli.w r17,  -456(r30)
002f90  e3487ffc  loadli.w r17,  -452(r30)
002f94  e3088ffc  loadli.w r17,  -448(r30)
002f98  e3488ffc  loadli.w r17,  -444(r30)
002f9c  e3089ffc  loadli.w r17,  -440(r30)
002fa0  e3489ffc  loadli.w r17,  -436(r30)
002fa4  e308affc  loadli.w r17,  -432(r30)
002fa8  e348affc  loadli.w r17,  -428(r30)
002fac  e308bffc  loadli.w r17,  -424(r30)
002fb0  e348bffc  loadli.w r17,  -420(r30)
002fb4  e308cffc  loadli.w r17,  -416(r30)
002fb8  e348cffc  loadli.w r17,  -412(r30)
002fbc  e308dffc  loadli.w r17,  -408(r30)
002fc0  e348dffc  loadli.w r17,  -404(r30)
002fc4  e308effc  loadli.w r17,  -400(r30)
002fc8  e348effc  loadli.w r17,  -396(r30)
002fcc  e308fffc  loadli.w r17,  -392(r30)
002fd0  e348fffc  loadli.w r17,  -388(r30)
002fd4  e3080ffd  loadli.w r17,  -384(r30)
002fd8  e3480ffd  loadli.w r17,  -380(r30)
002fdc  e3081ffd  loadli.w r17,  -376(r30)
002fe0  e3481ffd  loadli.w r17,  -372(r30)
002fe4  e3082ffd  loadli.w r17,  -368(r30)
002fe8  e3482ffd  loadli.w r17,  -364(r30)
002fec  e3083ffd  loadli.w r17,  -360(r30)
002ff0  e3483ffd  loadli.w r17,  -356(r30)
002ff4  e3084ffd  loadli.w r17,  -352(r30)
002ff8  e3484ffd  loadli.w r17,  -348(r30)
002ffc  e3085ffd  loadli.w r17,  -344(r30)
003000  e3485ffd  loadli.w r17,  -340(r30)
003004  e3086ffd  loadli.w r17,  -336(r30)
003008  e3486ffd  loadli.w r17,  -332(r30)
00300c  e3087ffd  loadli.w r17,  -328(r30)
003010  e3487ffd  loadli.w r17,  -324(r30)
003014  e3088ffd  loadli.w r17,  -320(r30)
003018  e3488ffd  loadli.w r17,  -316(r30)
00301c  e3089ffd  loadli.w r17,  -312(r30)
003020  e3489ffd  loadli.w r17,  -308(r30)
003024  e308affd  loadli.w r17,  -304(r30)
003028  e348affd  loadli.w r17,  -300(r30)
00302c  e308bffd  loadli.w r17,  -296(r30)
003030  e348bffd  loadli.w r17,  -292(r30)
003034  e308cffd  loadli.w r17,  -288(r30)
003038  e348cffd  loadli.w r17,  -284(r30)
00303c  e308dffd  loadli.w r17,  -280(r30)
003040  e348dffd  loadli.w r17,  -276(r30)
003044  e308effd  loadli.w r17,  -272(r30)
003048  e348effd  loadli.w r17,  -268(r30)
00304c  e308fffd  loadli.w r17,  -264(r30)
003050  e348fffd  loadli.w r17,  -260(r30)
003054  e3080ffe  loadli.w r17,  -256(r30)
003058  e3480ffe  loadli.w r17,  -252(r30)
00305c  e3081ffe  loadli.w r17,  -248(r30)
003060  e3481ffe  loadli.w r17,  -244(r30)
003064  e3082ffe  loadli.w r17,  -240(r30)
003068  e3482ffe  loadli.w r17,  -236(r30)
00306c  e3083ffe  loadli.w r17,  -232(r30)
003070  e3483ffe  loadli.w r17,  -228(r30)
003074  e3084ffe  loadli.w r17,  -224(r30)
003078  e3484ffe  loadli.w r17,  -220(r30)
00307c  e3085ffe  loadli.w r17,  -216(r30)
003080  e3485ffe  loadli.w r17,  -212(r30)
003084  e3086ffe  loadli.w r17,  -208(r30)
003088  e3486ffe  loadli.w r17,  -204(r30)
00308c  e3087ffe  loadli.w r17,  -200(r30)
003090  e3487ffe  loadli.w r17,  -196(r30)
003094  e3088ffe  loadli.w r17,  -192(r30)
003098  e3488ffe  loadli.w r17,  -188(r30)
00309c  e3089ffe  loadli.w r17,  -184(r30)
0030a0  e3489ffe  loadli.w r17,  -180(r30)
0030a4  e308affe  loadli.w r17,  -176(r30)
0030a8  e348affe  loadli.w r17,  -172(r30)
0030ac  e308bffe  loadli.w r17,  -168(r30)
0030b0  e348bffe  loadli.w r17,  -164(r30)
0030b4  e308cffe  loadli.w r17,  -160(r30)
0030b8  e348cffe  loadli.w r17,  -156(r30)
0030bc  e308dffe  loadli.w r17,  -152(r30)
0030c0  e348dffe  loadli.w r17,  -148(r30)
0030c4  e308effe  loadli.w r17,  -144(r30)
0030c8  e348effe  loadli.w r17,  -140(r30)
0030cc  e308fffe  loadli.w r17,  -136(r30)
0030d0  e348fffe  loadli.w r17,  -132(r30)
0030d4  e3080fff  loadli.w r17,  -128(r30)
0030d8  e3480fff  loadli.w r17,  -124(r30)
0030dc  e3081fff  loadli.w r17,  -120(r30)
0030e0  e3481fff  loadli.w r17,  -116(r30)
0030e4  e3082fff  loadli.w r17,  -112(r30)
0030e8  e3482fff  loadli.w r17,  -108(r30)
0030ec  e3083fff  loadli.w r17,  -104(r30)
0030f0  e3483fff  loadli.w r17,  -100(r30)
0030f4  e3084fff  loadli.w r17,  -96(r30)
0030f8  e3484fff  loadli.w r17,  -92(r30)
0030fc  e3085fff  loadli.w r17,  -88(r30)
003100  e3485fff  loadli.w r17,  -84(r30)
003104  e3086fff  loadli.w r17,  -80(r30)
003108  e3486fff  loadli.w r17,  -76(r30)
00310c  e3087fff  loadli.w r17,  -72(r30)
003110  e3487fff  loadli.w r17,  -68(r30)
003114  e3088fff  loadli.w r17,  -64(r30)
003118  e3488fff  loadli.w r17,  -60(r30)
00311c  e3089fff  loadli.w r17,  -56(r30)
003120  e3489fff  loadli.w r17,  -52(r30)
003124  e308afff  loadli.w r17,  -48(r30)
003128  e348afff  loadli.w r17,  -44(r30)
00312c  e308bfff  loadli.w r17,  -40(r30)
003130  e348bfff  loadli.w r17,  -36(r30)
003134  e308cfff  loadli.w r17,  -32(r30)
003138  e348cfff  loadli.w r17,  -28(r30)
00313c  6309dfff  loadli.w r18,  -24(r30)
003140  2b09807f  lui r18, 522240
003144  97086801  and r17, r16, r22
003148  93081905  setlt.u r17, r18, r17
00314c  6349dfff  loadli.w r18,  -20(r30)
003150  6309efff  loadli.w r18,  -16(r30)
003154  6349efff  loadli.w r18,  -12(r30)
003158  6309ffff  loadli.w r18,  -8(r30)
00315c  6349ffff  loadli.w r18,  -4(r30)
003160  3be00800  bneq r17, zero, 24
003164  9b480801  srli r17, r16, 16
003168  9b881800  andi r17, r17, 1
00316c  0b181811  add.s r16, r16, r17
003170  0b183811  add.s r16, r16, r19
003174  db010000  j 12
003178  ab084000  lui r17, 1024
00317c  17181801  or r16, r16, r17
003180  97886701  and r17, r15, r22
003184  2b09807f  lui r18, 522240
003188  93081905  setlt.u r17, r18, r17
00318c  1f098fd0  addli r18, r30, -6080
003190  c2140902  vload_mask16.mz vr9{mr1}, 0(r18)
003194  3be00800  bneq r17, zero, 24
003198  9bc80701  srli r17, r15, 16
00319c  9b881800  andi r17, r17, 1
0031a0  8b971711  add.s r15, r15, r17
0031a4  8b973711  add.s r15, r15, r19
0031a8  db010000  j 12
0031ac  ab084000  lui r17, 1024
0031b0  97971701  or r15, r15, r17
0031b4  97086701  and r17, r14, r22
0031b8  2b09807f  lui r18, 522240
0031bc  93081905  setlt.u r17, r18, r17
0031c0  3be00800  bneq r17, zero, 24
0031c4  9b480701  srli r17, r14, 16
0031c8  9b881800  andi r17, r17, 1
0031cc  0b171711  add.s r14, r14, r17
0031d0  0b173711  add.s r14, r14, r19
0031d4  db010000  j 12
0031d8  ab084000  lui r17, 1024
0031dc  17171701  or r14, r14, r17
0031e0  97886601  and r17, r13, r22
0031e4  93081905  setlt.u r17, r18, r17
0031e8  3be00800  bneq r17, zero, 24
0031ec  9bc80601  srli r17, r13, 16
0031f0  9b881800  andi r17, r17, 1
0031f4  8b961611  add.s r13, r13, r17
0031f8  8b963611  add.s r13, r13, r19
0031fc  db010000  j 12
003200  ab084000  lui r17, 1024
003204  97961601  or r13, r13, r17
003208  97086601  and r17, r12, r22
00320c  93081905  setlt.u r17, r18, r17
003210  3be00800  bneq r17, zero, 24
003214  9b480601  srli r17, r12, 16
003218  9b881800  andi r17, r17, 1
00321c  0b161611  add.s r12, r12, r17
003220  0b163611  add.s r12, r12, r19
003224  db010000  j 12
003228  ab084000  lui r17, 1024
00322c  17161601  or r12, r12, r17
003230  97886501  and r17, r11, r22
003234  93081905  setlt.u r17, r18, r17
003238  3be00800  bneq r17, zero, 24
00323c  9bc80501  srli r17, r11, 16
003240  9b881800  andi r17, r17, 1
003244  8b951511  add.s r11, r11, r17
003248  8b953511  add.s r11, r11, r19
00324c  db010000  j 12
003250  ab084000  lui r17, 1024
003254  97951501  or r11, r11, r17
003258  97086501  and r17, r10, r22
00325c  93081905  setlt.u r17, r18, r17
003260  3be00800  bneq r17, zero, 24
003264  9b480501  srli r17, r10, 16
003268  9b881800  andi r17, r17, 1
00326c  0b151511  add.s r10, r10, r17
003270  0b153511  add.s r10, r10, r19
003274  db010000  j 12
003278  ab084000  lui r17, 1024
00327c  17151501  or r10, r10, r17
003280  97886401  and r17, r9, r22
003284  93081905  setlt.u r17, r18, r17
003288  3be00800  bneq r17, zero, 24
00328c  9bc80401  srli r17, r9, 16
003290  9b881800  andi r17, r17, 1
003294  8b941411  add.s r9, r9, r17
003298  8b943411  add.s r9, r9, r19
00329c  db010000  j 12
0032a0  ab084000  lui r17, 1024
0032a4  97941401  or r9, r9, r17
0032a8  97086401  and r17, r8, r22
0032ac  93081905  setlt.u r17, r18, r17
0032b0  3be00800  bneq r17, zero, 24
0032b4  9b480401  srli r17, r8, 16
0032b8  9b881800  andi r17, r17, 1
0032bc  0b141411  add.s r8, r8, r17
0032c0  0b143411  add.s r8, r8, r19
0032c4  db010000  j 12
0032c8  ab084000  lui r17, 1024
0032cc  17141401  or r8, r8, r17
0032d0  97886301  and r17, r7, r22
0032d4  93081905  setlt.u r17, r18, r17
0032d8  3be00800  bneq r17, zero, 24
0032dc  9bc80301  srli r17, r7, 16
0032e0  9b881800  andi r17, r17, 1
0032e4  8b931311  add.s r7, r7, r17
0032e8  8b933311  add.s r7, r7, r19
0032ec  db010000  j 12
0032f0  ab084000  lui r17, 1024
0032f4  97931301  or r7, r7, r17
0032f8  97086301  and r17, r6, r22
0032fc  93081905  setlt.u r17, r18, r17
003300  3be00800  bneq r17, zero, 24
003304  9b480301  srli r17, r6, 16
003308  9b881800  andi r17, r17, 1
00330c  0b131311  add.s r6, r6, r17
003310  0b133311  add.s r6, r6, r19
003314  db010000  j 12
003318  ab084000  lui r17, 1024
00331c  17131301  or r6, r6, r17
003320  97886201  and r17, r5, r22
003324  93081905  setlt.u r17, r18, r17
003328  3be00800  bneq r17, zero, 24
00332c  9bc80201  srli r17, r5, 16
003330  9b881800  andi r17, r17, 1
003334  8b921211  add.s r5, r5, r17
003338  8b923211  add.s r5, r5, r19
00333c  db010000  j 12
003340  ab084000  lui r17, 1024
003344  97921201  or r5, r5, r17
003348  97086201  and r17, r4, r22
00334c  93081905  setlt.u r17, r18, r17
003350  3be00800  bneq r17, zero, 24
003354  9b480201  srli r17, r4, 16
003358  9b881800  andi r17, r17, 1
00335c  0b121211  add.s r4, r4, r17
003360  0b123211  add.s r4, r4, r19
003364  db010000  j 12
003368  ab084000  lui r17, 1024
00336c  17121201  or r4, r4, r17
003370  97886101  and r17, r3, r22
003374  93081905  setlt.u r17, r18, r17
003378  3be00800  bneq r17, zero, 24
00337c  9bc80101  srli r17, r3, 16
003380  9b881800  andi r17, r17, 1
003384  8b911111  add.s r3, r3, r17
003388  8b913111  add.s r3, r3, r19
00338c  db010000  j 12
003390  ab084000  lui r17, 1024
003394  97911101  or r3, r3, r17
003398  97086101  and r17, r2, r22
00339c  93081905  setlt.u r17, r18, r17
0033a0  3be00800  bneq r17, zero, 24
0033a4  9b480101  srli r17, r2, 16
0033a8  9b881800  andi r17, r17, 1
0033ac  0b111111  add.s r2, r2, r17
0033b0  0b113111  add.s r2, r2, r19
0033b4  db010000  j 12
0033b8  ab084000  lui r17, 1024
0033bc  17111101  or r2, r2, r17
0033c0  97886001  and r17, r1, r22
0033c4  93081905  setlt.u r17, r18, r17
0033c8  3be00800  bneq r17, zero, 24
0033cc  9bc80001  srli r17, r1, 16
0033d0  9b881800  andi r17, r17, 1
0033d4  8b901011  add.s r1, r1, r17
0033d8  8b903011  add.s r1, r1, r19
0033dc  db010000  j 12
0033e0  ab084000  lui r17, 1024
0033e4  97901001  or r1, r1, r17
0033e8  170d4801  and r26, r16, r20
0033ec  17084701  and r16, r14, r20
0033f0  170b4401  and r22, r8, r20
0033f4  97884301  and r17, r7, r20
0033f8  97874701  and r15, r15, r20
0033fc  97864601  and r13, r13, r20
003400  17064601  and r12, r12, r20
003404  97854501  and r11, r11, r20
003408  978a4401  and r21, r9, r20
00340c  17054501  and r10, r10, r20
003410  17034301  and r6, r6, r20
003414  17014101  and r2, r2, r20
003418  97034201  and r7, r4, r20
00341c  17844101  and r8, r3, r20
003420  17874001  and r14, r1, r20
003424  97824201  and r5, r5, r20
003428  e70eafd9  storeli.w r26, -4888(r30)
00342c  674effd8  storeli.w r15, -4892(r30)
003430  670e0fd9  storeli.w r16, -4896(r30)
003434  e74ddfd8  storeli.w r13, -4900(r30)
003438  e70dcfd8  storeli.w r12, -4904(r30)
00343c  674dbfd8  storeli.w r11, -4908(r30)
003440  670dafd8  storeli.w r10, -4912(r30)
003444  e74c5fd9  storeli.w r21, -4916(r30)
003448  e70c6fd9  storeli.w r22, -4920(r30)
00344c  674c1fd9  storeli.w r17, -4924(r30)
003450  670c6fd8  storeli.w r6, -4928(r30)
003454  1f820700  addli r4, r15, 0
003458  9f070500  addli r15, r10, 0
00345c  9f800600  addli r1, r13, 0
003460  9f010600  addli r3, r12, 0
003464  9f840500  addli r9, r11, 0
003468  1f850800  addli r10, r17, 0
00346c  00a00000  mfence { lm }
003470  670b2fd8  storeli.w r2, -4944(r30)
003474  67042fde  storeli.w r2, -4288(r30)
003478  67086fdc  storeli.w r6, -4480(r30)
00347c  e74b5fd8  storeli.w r5, -4932(r30)
003480  670c5fdc  storeli.w r5, -4416(r30)
003484  e70b7fd8  storeli.w r7, -4936(r30)
003488  674b8fd8  storeli.w r8, -4940(r30)
00348c  67008fde  storeli.w r8, -4352(r30)
003490  e74aefd8  storeli.w r14, -4948(r30)
003494  6708efde  storeli.w r14, -4224(r30)
003498  6301efdf  loadli.w r2,  -4112(r30)
00349c  3f217101  blt.s r2, r23, 72
0034a0  2b0180ff  lui r2, 1046528
0034a4  2b0d80ff  lui r26, 1046528
0034a8  2b0280ff  lui r4, 1046528
0034ac  2b0880ff  lui r16, 1046528
0034b0  ab0080ff  lui r1, 1046528
0034b4  ab0180ff  lui r3, 1046528
0034b8  ab0480ff  lui r9, 1046528
0034bc  ab0780ff  lui r15, 1046528
0034c0  ab0a80ff  lui r21, 1046528
0034c4  2b0b80ff  lui r22, 1046528
0034c8  2b0580ff  lui r10, 1046528
0034cc  ab0380ff  lui r7, 1046528
0034d0  67082fdc  storeli.w r2, -4480(r30)
0034d4  670c2fdc  storeli.w r2, -4416(r30)
0034d8  67002fde  storeli.w r2, -4352(r30)
0034dc  67042fde  storeli.w r2, -4288(r30)
0034e0  67082fde  storeli.w r2, -4224(r30)
0034e4  1f818d00  addli r2, r27, 64
0034e8  9f0b8000  addli r23, zero, 64
0034ec  6700afdc  storeli.w r10, -4608(r30)
0034f0  67047fdc  storeli.w r7, -4544(r30)
0034f4  e74e2fd8  storeli.w r2, -4884(r30)
0034f8  1f810d01  addli r2, r27, 128
0034fc  670f2fd8  storeli.w r2, -4880(r30)
003500  1f818d01  addli r2, r27, 192
003504  674f2fd8  storeli.w r2, -4876(r30)
003508  1f810d02  addli r2, r27, 256
00350c  e70f2fd8  storeli.w r2, -4872(r30)
003510  1f818d02  addli r2, r27, 320
003514  e74f2fd8  storeli.w r2, -4868(r30)
003518  1f810d03  addli r2, r27, 384
00351c  67002fda  storeli.w r2, -4864(r30)
003520  1f818d03  addli r2, r27, 448
003524  67402fda  storeli.w r2, -4860(r30)
003528  5b0a0000  j 80
00352c  9f8b8b00  addli r23, r23, 64
003530  1f8b0500  addli r22, r11, 0
003534  9f8a0600  addli r21, r13, 0
003538  9f070400  addli r15, r8, 0
00353c  9f040e00  addli r9, r28, 0
003540  9f010600  addli r3, r12, 0
003544  9f000c00  addli r1, r24, 0
003548  1f880900  addli r16, r19, 0
00354c  1f020900  addli r4, r18, 0
003550  1f8d0c00  addli r26, r25, 0
003554  1f0a0008  addli r20, zero, 1024
003558  67082fde  storeli.w r2, -4224(r30)
00355c  67045fde  storeli.w r5, -4288(r30)
003560  67006fde  storeli.w r6, -4352(r30)
003564  67047fdc  storeli.w r7, -4544(r30)
003568  670cefdc  storeli.w r14, -4416(r30)
00356c  6708afdc  storeli.w r10, -4480(r30)
003570  67001fdd  storeli.w r17, -4608(r30)
003574  b7ab4b07  beq r23, r20, 3816
003578  1f010ff0  addli r2, r30, -2048
00357c  92309002  vadd.s.mz vr1{mr1}, zero, vr9
003580  9f1c0000  addli r25, zero, 1
003584  1f8a0b00  addli r20, r23, 0
003588  12319002  vadd.s.mz vr2{mr1}, zero, vr9
00358c  0b137111  add.s r6, r2, r23
003590  7e810ce0  vmmov mr2, r25
003594  eb330300  load.hu r7, 0(r6)
003598  6b342300  load.hu r8, 2(r6)
00359c  eb32a301  load.hu r5, 26(r6)
0035a0  6b31c301  load.hu r2, 28(r6)
0035a4  6b354300  load.hu r10, 4(r6)
0035a8  eb356300  load.hu r11, 6(r6)
0035ac  6b368300  load.hu r12, 8(r6)
0035b0  eb36a300  load.hu r13, 10(r6)
0035b4  6b37c300  load.hu r14, 12(r6)
0035b8  eb38e300  load.hu r17, 14(r6)
0035bc  6b390301  load.hu r18, 16(r6)
0035c0  eb392301  load.hu r19, 18(r6)
0035c4  eb3b4301  load.hu r23, 20(r6)
0035c8  6b3c6301  load.hu r24, 22(r6)
0035cc  6b3e8301  load.hu r28, 24(r6)
0035d0  6b33e301  load.hu r6, 30(r6)
0035d4  b3930318  bfloat2float.rn r7, r7
0035d8  b3920218  bfloat2float.rn r5, r5
0035dc  33110118  bfloat2float.rn r2, r2
0035e0  eaa01334  vor.u.mh vr1{mr2}, r7, vr1
0035e4  b3130418  bfloat2float.rn r7, r8
0035e8  1f240000  addli r8, zero, 2
0035ec  fe0104e0  vmmov mr3, r8
0035f0  1f440000  addli r8, zero, 4
0035f4  eaa01336  vor.u.mh vr1{mr3}, r7, vr1
0035f8  b3130518  bfloat2float.rn r7, r10
0035fc  7e0004e0  vmmov mr0, r8
003600  1f041000  addli r8, zero, 8
003604  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
003608  b3930518  bfloat2float.rn r7, r11
00360c  7e0004e0  vmmov mr0, r8
003610  1f042000  addli r8, zero, 16
003614  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
003618  b3130618  bfloat2float.rn r7, r12
00361c  7e0004e0  vmmov mr0, r8
003620  1f044000  addli r8, zero, 32
003624  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
003628  b3930618  bfloat2float.rn r7, r13
00362c  7e0004e0  vmmov mr0, r8
003630  1f048000  addli r8, zero, 64
003634  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
003638  b3130718  bfloat2float.rn r7, r14
00363c  7e0004e0  vmmov mr0, r8
003640  1f040001  addli r8, zero, 128
003644  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
003648  b3930818  bfloat2float.rn r7, r17
00364c  7e0004e0  vmmov mr0, r8
003650  1f040002  addli r8, zero, 256
003654  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
003658  b3130918  bfloat2float.rn r7, r18
00365c  7e0004e0  vmmov mr0, r8
003660  1f040004  addli r8, zero, 512
003664  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
003668  b3930918  bfloat2float.rn r7, r19
00366c  7e0004e0  vmmov mr0, r8
003670  1f040008  addli r8, zero, 1024
003674  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
003678  b3930b18  bfloat2float.rn r7, r23
00367c  7e0004e0  vmmov mr0, r8
003680  1f040010  addli r8, zero, 2048
003684  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
003688  b3130c18  bfloat2float.rn r7, r24
00368c  7e0004e0  vmmov mr0, r8
003690  1f040020  addli r8, zero, 4096
003694  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
003698  b3130e18  bfloat2float.rn r7, r28
00369c  7e0004e0  vmmov mr0, r8
0036a0  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
0036a4  9f030040  addli r7, zero, 8192
0036a8  7e8003e0  vmmov mr0, r7
0036ac  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0036b0  ab420000  lui r5, 4
0036b4  7e8002e0  vmmov mr0, r5
0036b8  9f020ff4  addli r5, r30, -1536
0036bc  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0036c0  33110318  bfloat2float.rn r2, r6
0036c4  2b830000  lui r6, 8
0036c8  8b924211  add.s r5, r5, r20
0036cc  670c4fdb  storeli.w r20, -4672(r30)
0036d0  7e0003e0  vmmov mr0, r6
0036d4  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0036d8  6bb10200  load.hu r2, 0(r5)
0036dc  6bb32200  load.hu r6, 2(r5)
0036e0  ebb34200  load.hu r7, 4(r5)
0036e4  6bb46200  load.hu r8, 6(r5)
0036e8  6bb58200  load.hu r10, 8(r5)
0036ec  ebb5a200  load.hu r11, 10(r5)
0036f0  6bb6c200  load.hu r12, 12(r5)
0036f4  ebb6e200  load.hu r13, 14(r5)
0036f8  6bb70201  load.hu r14, 16(r5)
0036fc  ebb82201  load.hu r17, 18(r5)
003700  6bb94201  load.hu r18, 20(r5)
003704  ebb96201  load.hu r19, 22(r5)
003708  ebbb8201  load.hu r23, 24(r5)
00370c  6bbca201  load.hu r24, 26(r5)
003710  6bbec201  load.hu r28, 28(r5)
003714  ebb2e201  load.hu r5, 30(r5)
003718  33110118  bfloat2float.rn r2, r2
00371c  6a212134  vor.u.mh vr2{mr2}, r2, vr2
003720  33110318  bfloat2float.rn r2, r6
003724  1f430000  addli r6, zero, 4
003728  7e0103e0  vmmov mr2, r6
00372c  1f031000  addli r6, zero, 8
003730  6a212136  vor.u.mh vr2{mr3}, r2, vr2
003734  33910318  bfloat2float.rn r2, r7
003738  6a212134  vor.u.mh vr2{mr2}, r2, vr2
00373c  33110418  bfloat2float.rn r2, r8
003740  7e0103e0  vmmov mr2, r6
003744  1f032000  addli r6, zero, 16
003748  6a212134  vor.u.mh vr2{mr2}, r2, vr2
00374c  33110518  bfloat2float.rn r2, r10
003750  7e0103e0  vmmov mr2, r6
003754  1f034000  addli r6, zero, 32
003758  6a212134  vor.u.mh vr2{mr2}, r2, vr2
00375c  33910518  bfloat2float.rn r2, r11
003760  7e0103e0  vmmov mr2, r6
003764  1f038000  addli r6, zero, 64
003768  6a212134  vor.u.mh vr2{mr2}, r2, vr2
00376c  33110618  bfloat2float.rn r2, r12
003770  7e0103e0  vmmov mr2, r6
003774  1f030001  addli r6, zero, 128
003778  6a212134  vor.u.mh vr2{mr2}, r2, vr2
00377c  33910618  bfloat2float.rn r2, r13
003780  7e0103e0  vmmov mr2, r6
003784  1f030002  addli r6, zero, 256
003788  6a212134  vor.u.mh vr2{mr2}, r2, vr2
00378c  33110718  bfloat2float.rn r2, r14
003790  7e0103e0  vmmov mr2, r6
003794  1f030004  addli r6, zero, 512
003798  6a212134  vor.u.mh vr2{mr2}, r2, vr2
00379c  33910818  bfloat2float.rn r2, r17
0037a0  7e0103e0  vmmov mr2, r6
0037a4  1f030008  addli r6, zero, 1024
0037a8  6a212134  vor.u.mh vr2{mr2}, r2, vr2
0037ac  33110918  bfloat2float.rn r2, r18
0037b0  7e0103e0  vmmov mr2, r6
0037b4  1f030010  addli r6, zero, 2048
0037b8  6a212134  vor.u.mh vr2{mr2}, r2, vr2
0037bc  33910918  bfloat2float.rn r2, r19
0037c0  7e0103e0  vmmov mr2, r6
0037c4  1f030020  addli r6, zero, 4096
0037c8  6a212134  vor.u.mh vr2{mr2}, r2, vr2
0037cc  33910b18  bfloat2float.rn r2, r23
0037d0  7e0103e0  vmmov mr2, r6
0037d4  1f030040  addli r6, zero, 8192
0037d8  6a212134  vor.u.mh vr2{mr2}, r2, vr2
0037dc  33110c18  bfloat2float.rn r2, r24
0037e0  7e0103e0  vmmov mr2, r6
0037e4  2b430000  lui r6, 4
0037e8  6a212134  vor.u.mh vr2{mr2}, r2, vr2
0037ec  33110e18  bfloat2float.rn r2, r28
0037f0  7e0103e0  vmmov mr2, r6
0037f4  6a212134  vor.u.mh vr2{mr2}, r2, vr2
0037f8  33910218  bfloat2float.rn r2, r5
0037fc  ab02807f  lui r5, 522240
003800  6a212130  vor.u.mh vr2{mr0}, r2, vr2
003804  1f010fe8  addli r2, r30, -3072
003808  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
00380c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
003810  00a00000  mfence { lm }
003814  63090fe8  loadli.w r18,  -3072(r30)
003818  e3490fe8  loadli.w r19,  -3068(r30)
00381c  630c1fe8  loadli.w r24,  -3064(r30)
003820  63461fe8  loadli.w r12,  -3060(r30)
003824  e30b2fe8  loadli.w r23,  -3056(r30)
003828  e3482fe8  loadli.w r17,  -3052(r30)
00382c  63043fe8  loadli.w r8,  -3048(r30)
003830  e3463fe8  loadli.w r13,  -3044(r30)
003834  e3054fe8  loadli.w r11,  -3040(r30)
003838  63474fe8  loadli.w r14,  -3036(r30)
00383c  6341ffdf  loadli.w r2,  -4100(r30)
003840  63055fe8  loadli.w r10,  -3032(r30)
003844  e3435fe8  loadli.w r7,  -3028(r30)
003848  63036fe8  loadli.w r6,  -3024(r30)
00384c  17012900  and r2, r18, r2
003850  138a2204  setlt.u r20, r5, r2
003854  e3426fe8  loadli.w r5,  -3020(r30)
003858  63017fe8  loadli.w r2,  -3016(r30)
00385c  634e7fe8  loadli.w r28,  -3012(r30)
003860  3b700a00  bneq r20, zero, 28
003864  1b4a0901  srli r20, r18, 16
003868  1b0a1a00  andi r20, r20, 1
00386c  0b194911  add.s r18, r18, r20
003870  630affdf  loadli.w r20,  -4104(r30)
003874  0b194911  add.s r18, r18, r20
003878  db010000  j 12
00387c  2b0a4000  lui r20, 1024
003880  17194901  or r18, r18, r20
003884  634affdf  loadli.w r20,  -4100(r30)
003888  ab0d807f  lui r27, 522240
00388c  178a4901  and r20, r19, r20
003890  138a4d05  setlt.u r20, r27, r20
003894  3b700a00  bneq r20, zero, 28
003898  1bca0901  srli r20, r19, 16
00389c  1b0a1a00  andi r20, r20, 1
0038a0  8b994911  add.s r19, r19, r20
0038a4  630affdf  loadli.w r20,  -4104(r30)
0038a8  8b994911  add.s r19, r19, r20
0038ac  db010000  j 12
0038b0  2b0a4000  lui r20, 1024
0038b4  97994901  or r19, r19, r20
0038b8  634affdf  loadli.w r20,  -4100(r30)
0038bc  170a4c01  and r20, r24, r20
0038c0  138a4d05  setlt.u r20, r27, r20
0038c4  3b700a00  bneq r20, zero, 28
0038c8  1b4a0c01  srli r20, r24, 16
0038cc  1b0a1a00  andi r20, r20, 1
0038d0  0b1a4c11  add.s r20, r24, r20
0038d4  630cffdf  loadli.w r24,  -4104(r30)
0038d8  0b1c8a11  add.s r24, r20, r24
0038dc  db010000  j 12
0038e0  2b0a4000  lui r20, 1024
0038e4  171c4c01  or r24, r24, r20
0038e8  634affdf  loadli.w r20,  -4100(r30)
0038ec  170a4601  and r20, r12, r20
0038f0  138a4d05  setlt.u r20, r27, r20
0038f4  3b700a00  bneq r20, zero, 28
0038f8  1b4a0601  srli r20, r12, 16
0038fc  1b0a1a00  andi r20, r20, 1
003900  0b164611  add.s r12, r12, r20
003904  630affdf  loadli.w r20,  -4104(r30)
003908  0b164611  add.s r12, r12, r20
00390c  db010000  j 12
003910  2b0a4000  lui r20, 1024
003914  17164601  or r12, r12, r20
003918  634affdf  loadli.w r20,  -4100(r30)
00391c  178a4b01  and r20, r23, r20
003920  138a4d05  setlt.u r20, r27, r20
003924  3b700a00  bneq r20, zero, 28
003928  1bca0b01  srli r20, r23, 16
00392c  1b0a1a00  andi r20, r20, 1
003930  0b9a4b11  add.s r20, r23, r20
003934  e30bffdf  loadli.w r23,  -4104(r30)
003938  0b1a7a11  add.s r20, r20, r23
00393c  db010000  j 12
003940  2b0a4000  lui r20, 1024
003944  179a4b01  or r20, r23, r20
003948  67024fdb  storeli.w r20, -4832(r30)
00394c  634affdf  loadli.w r20,  -4100(r30)
003950  ab0b807f  lui r23, 522240
003954  9f0d0004  addli r27, zero, 512
003958  178a4801  and r20, r17, r20
00395c  138a4b05  setlt.u r20, r23, r20
003960  ab0bffff  lui r23, 1048560
003964  3b700a00  bneq r20, zero, 28
003968  1bca0801  srli r20, r17, 16
00396c  1b0a1a00  andi r20, r20, 1
003970  8b984811  add.s r17, r17, r20
003974  630affdf  loadli.w r20,  -4104(r30)
003978  8b984811  add.s r17, r17, r20
00397c  db010000  j 12
003980  2b0a4000  lui r20, 1024
003984  97984801  or r17, r17, r20
003988  67421fdb  storeli.w r17, -4828(r30)
00398c  e348ffdf  loadli.w r17,  -4100(r30)
003990  2b0a807f  lui r20, 522240
003994  97081401  and r17, r8, r17
003998  93081a05  setlt.u r17, r20, r17
00399c  3bf00800  bneq r17, zero, 28
0039a0  9b480401  srli r17, r8, 16
0039a4  9b881800  andi r17, r17, 1
0039a8  0b141411  add.s r8, r8, r17
0039ac  e308ffdf  loadli.w r17,  -4104(r30)
0039b0  0b141411  add.s r8, r8, r17
0039b4  db010000  j 12
0039b8  ab084000  lui r17, 1024
0039bc  17141401  or r8, r8, r17
0039c0  e7028fda  storeli.w r8, -4824(r30)
0039c4  6344ffdf  loadli.w r8,  -4100(r30)
0039c8  ab08807f  lui r17, 522240
0039cc  630aefdf  loadli.w r20,  -4112(r30)
0039d0  17848600  and r8, r13, r8
0039d4  13848804  setlt.u r8, r17, r8
0039d8  3b700400  bneq r8, zero, 28
0039dc  1bc40601  srli r8, r13, 16
0039e0  1b041400  andi r8, r8, 1
0039e4  0b948610  add.s r8, r13, r8
0039e8  e306ffdf  loadli.w r13,  -4104(r30)
0039ec  8b18d410  add.s r17, r8, r13
0039f0  db010000  j 12
0039f4  2b044000  lui r8, 1024
0039f8  97988600  or r17, r13, r8
0039fc  6344ffdf  loadli.w r8,  -4100(r30)
003a00  ab06807f  lui r13, 522240
003a04  17848500  and r8, r11, r8
003a08  13848604  setlt.u r8, r13, r8
003a0c  3b700400  bneq r8, zero, 28
003a10  1bc40501  srli r8, r11, 16
003a14  1b041400  andi r8, r8, 1
003a18  0b948510  add.s r8, r11, r8
003a1c  e305ffdf  loadli.w r11,  -4104(r30)
003a20  0b14b410  add.s r8, r8, r11
003a24  db010000  j 12
003a28  2b044000  lui r8, 1024
003a2c  17948500  or r8, r11, r8
003a30  e7428fda  storeli.w r8, -4820(r30)
003a34  6344ffdf  loadli.w r8,  -4100(r30)
003a38  ab05807f  lui r11, 522240
003a3c  17048700  and r8, r14, r8
003a40  13848504  setlt.u r8, r11, r8
003a44  3b700400  bneq r8, zero, 28
003a48  1b440701  srli r8, r14, 16
003a4c  e305ffdf  loadli.w r11,  -4104(r30)
003a50  1b041400  andi r8, r8, 1
003a54  0b148710  add.s r8, r14, r8
003a58  0b14b410  add.s r8, r8, r11
003a5c  db010000  j 12
003a60  2b044000  lui r8, 1024
003a64  17148700  or r8, r14, r8
003a68  67038fda  storeli.w r8, -4816(r30)
003a6c  6344ffdf  loadli.w r8,  -4100(r30)
003a70  ab05807f  lui r11, 522240
003a74  63070fdd  loadli.w r14,  -4480(r30)
003a78  17048500  and r8, r10, r8
003a7c  13848504  setlt.u r8, r11, r8
003a80  3b700400  bneq r8, zero, 28
003a84  1b440501  srli r8, r10, 16
003a88  1b041400  andi r8, r8, 1
003a8c  0b148510  add.s r8, r10, r8
003a90  6305ffdf  loadli.w r10,  -4104(r30)
003a94  0b14a410  add.s r8, r8, r10
003a98  db010000  j 12
003a9c  2b044000  lui r8, 1024
003aa0  17148500  or r8, r10, r8
003aa4  67438fda  storeli.w r8, -4812(r30)
003aa8  6344ffdf  loadli.w r8,  -4100(r30)
003aac  2b05807f  lui r10, 522240
003ab0  17848300  and r8, r7, r8
003ab4  13048504  setlt.u r8, r10, r8
003ab8  3b700400  bneq r8, zero, 28
003abc  1bc40301  srli r8, r7, 16
003ac0  1b041400  andi r8, r8, 1
003ac4  8b938310  add.s r7, r7, r8
003ac8  6304ffdf  loadli.w r8,  -4104(r30)
003acc  8b938310  add.s r7, r7, r8
003ad0  db010000  j 12
003ad4  2b044000  lui r8, 1024
003ad8  97938300  or r7, r7, r8
003adc  e7037fda  storeli.w r7, -4808(r30)
003ae0  e343ffdf  loadli.w r7,  -4100(r30)
003ae4  2b04807f  lui r8, 522240
003ae8  63050fdc  loadli.w r10,  -4608(r30)
003aec  97037300  and r7, r6, r7
003af0  93037404  setlt.u r7, r8, r7
003af4  3bf00300  bneq r7, zero, 28
003af8  9b430301  srli r7, r6, 16
003afc  9b831300  andi r7, r7, 1
003b00  0b137310  add.s r6, r6, r7
003b04  e303ffdf  loadli.w r7,  -4104(r30)
003b08  0b137310  add.s r6, r6, r7
003b0c  db010000  j 12
003b10  ab034000  lui r7, 1024
003b14  17137300  or r6, r6, r7
003b18  e7436fda  storeli.w r6, -4804(r30)
003b1c  6343ffdf  loadli.w r6,  -4100(r30)
003b20  ab03807f  lui r7, 522240
003b24  17836200  and r6, r5, r6
003b28  13836304  setlt.u r6, r7, r6
003b2c  3b700300  bneq r6, zero, 28
003b30  1bc30201  srli r6, r5, 16
003b34  1b031300  andi r6, r6, 1
003b38  8b926210  add.s r5, r5, r6
003b3c  6303ffdf  loadli.w r6,  -4104(r30)
003b40  8b926210  add.s r5, r5, r6
003b44  db010000  j 12
003b48  2b034000  lui r6, 1024
003b4c  97926200  or r5, r5, r6
003b50  67045fda  storeli.w r5, -4800(r30)
003b54  e342ffdf  loadli.w r5,  -4100(r30)
003b58  2b03807f  lui r6, 522240
003b5c  97025100  and r5, r2, r5
003b60  93025304  setlt.u r5, r6, r5
003b64  3bf00200  bneq r5, zero, 28
003b68  9b420101  srli r5, r2, 16
003b6c  9b821200  andi r5, r5, 1
003b70  0b115110  add.s r2, r2, r5
003b74  e302ffdf  loadli.w r5,  -4104(r30)
003b78  0b115110  add.s r2, r2, r5
003b7c  db010000  j 12
003b80  ab024000  lui r5, 1024
003b84  17115100  or r2, r2, r5
003b88  67082fda  storeli.w r2, -4736(r30)
003b8c  6341ffdf  loadli.w r2,  -4100(r30)
003b90  ab02807f  lui r5, 522240
003b94  17012e00  and r2, r28, r2
003b98  13812204  setlt.u r2, r5, r2
003b9c  3b700100  bneq r2, zero, 28
003ba0  1b410e01  srli r2, r28, 16
003ba4  e302ffdf  loadli.w r5,  -4104(r30)
003ba8  1b011100  andi r2, r2, 1
003bac  0b112e10  add.s r2, r28, r2
003bb0  0b115110  add.s r2, r2, r5
003bb4  db010000  j 12
003bb8  2b014000  lui r2, 1024
003bbc  17112e00  or r2, r28, r2
003bc0  970c7901  and r25, r18, r23
003bc4  67002fdc  storeli.w r2, -4608(r30)
003bc8  1f010d00  addli r2, r26, 0
003bcc  93e2ac05  setlt.f r5, r25, r26
003bd0  3ba00200  bneq r5, zero, 8
003bd4  1f810c00  addli r2, r25, 0
003bd8  9bb29c00  slli r5, r25, 9
003bdc  1b339d00  slli r6, r26, 9
003be0  9b437901  srli r7, r18, 23
003be4  1b447d01  srli r8, r26, 23
003be8  93820200  seteq r5, r5, zero
003bec  13030300  seteq r6, r6, zero
003bf0  9b83f30f  andi r7, r7, 255
003bf4  1b04f40f  andi r8, r8, 255
003bf8  9bf3f30f  setlti r7, r7, 255
003bfc  1b74f40f  setlti r8, r8, 255
003c00  97925300  or r5, r7, r5
003c04  17136400  or r6, r8, r6
003c08  97025300  and r5, r6, r5
003c0c  37ef0202  beq r5, zero, 2008
003c10  9f020d00  addli r5, r26, 0
003c14  3b7f0d02  bneq r26, zero, 2012
003c18  37a00c00  beq r25, zero, 8
003c1c  9f8c0200  addli r25, r5, 0
003c20  93622006  setle.f r5, zero, r2
003c24  13630106  setle.f r6, r2, zero
003c28  97025300  and r5, r6, r5
003c2c  3ba00200  bneq r5, zero, 8
003c30  9f0c0100  addli r25, r2, 0
003c34  3f20ba01  blt.s r20, r27, 8
003c38  9f0c0d00  addli r25, r26, 0
003c3c  17897901  and r18, r19, r23
003c40  1f010200  addli r2, r4, 0
003c44  93624904  setlt.f r5, r18, r4
003c48  3ba00200  bneq r5, zero, 8
003c4c  1f010900  addli r2, r18, 0
003c50  9b329900  slli r5, r18, 9
003c54  1b339200  slli r6, r4, 9
003c58  9bc37901  srli r7, r19, 23
003c5c  1b447201  srli r8, r4, 23
003c60  93820200  seteq r5, r5, zero
003c64  13030300  seteq r6, r6, zero
003c68  9b83f30f  andi r7, r7, 255
003c6c  1b04f40f  andi r8, r8, 255
003c70  9bf3f30f  setlti r7, r7, 255
003c74  1b74f40f  setlti r8, r8, 255
003c78  97925300  or r5, r7, r5
003c7c  17136400  or r6, r8, r6
003c80  97025300  and r5, r6, r5
003c84  b7ed0202  beq r5, zero, 1912
003c88  9f020200  addli r5, r4, 0
003c8c  bb7d0202  bneq r4, zero, 1916
003c90  37200900  beq r18, zero, 8
003c94  1f890200  addli r18, r5, 0
003c98  93622006  setle.f r5, zero, r2
003c9c  13630106  setle.f r6, r2, zero
003ca0  97025300  and r5, r6, r5
003ca4  3ba00200  bneq r5, zero, 8
003ca8  1f090100  addli r18, r2, 0
003cac  3f20ba01  blt.s r20, r27, 8
003cb0  1f090200  addli r18, r4, 0
003cb4  97097c01  and r19, r24, r23
003cb8  1f010800  addli r2, r16, 0
003cbc  13e20905  setlt.f r4, r19, r16
003cc0  3b200200  bneq r4, zero, 8
003cc4  1f810900  addli r2, r19, 0
003cc8  1bb29900  slli r4, r19, 9
003ccc  9b329800  slli r5, r16, 9
003cd0  1b437c01  srli r6, r24, 23
003cd4  9b437801  srli r7, r16, 23
003cd8  13020200  seteq r4, r4, zero
003cdc  93820200  seteq r5, r5, zero
003ce0  1b03f30f  andi r6, r6, 255
003ce4  9b83f30f  andi r7, r7, 255
003ce8  1b73f30f  setlti r6, r6, 255
003cec  9bf3f30f  setlti r7, r7, 255
003cf0  17124300  or r4, r6, r4
003cf4  97925300  or r5, r7, r5
003cf8  17824200  and r4, r5, r4
003cfc  376c0202  beq r4, zero, 1816
003d00  1f020800  addli r4, r16, 0
003d04  3b7c0802  bneq r16, zero, 1820
003d08  37a00900  beq r19, zero, 8
003d0c  9f090200  addli r19, r4, 0
003d10  13622006  setle.f r4, zero, r2
003d14  93620106  setle.f r5, r2, zero
003d18  17824200  and r4, r5, r4
003d1c  3b200200  bneq r4, zero, 8
003d20  9f090100  addli r19, r2, 0
003d24  3f20ba01  blt.s r20, r27, 8
003d28  9f090800  addli r19, r16, 0
003d2c  170c7601  and r24, r12, r23
003d30  1f810000  addli r2, r1, 0
003d34  13621c04  setlt.f r4, r24, r1
003d38  3b200200  bneq r4, zero, 8
003d3c  1f010c00  addli r2, r24, 0
003d40  1b329c00  slli r4, r24, 9
003d44  9bb29000  slli r5, r1, 9
003d48  1b437601  srli r6, r12, 23
003d4c  9bc37001  srli r7, r1, 23
003d50  63080fdf  loadli.w r16,  -4224(r30)
003d54  13020200  seteq r4, r4, zero
003d58  93820200  seteq r5, r5, zero
003d5c  1b03f30f  andi r6, r6, 255
003d60  9b83f30f  andi r7, r7, 255
003d64  1b73f30f  setlti r6, r6, 255
003d68  9bf3f30f  setlti r7, r7, 255
003d6c  17124300  or r4, r6, r4
003d70  97925300  or r5, r7, r5
003d74  17824200  and r4, r5, r4
003d78  3b200200  bneq r4, zero, 8
003d7c  2b01c07f  lui r2, 523264
003d80  e3038fdd  loadli.w r7,  -4416(r30)
003d84  1f820000  addli r4, r1, 0
003d88  37a00000  beq r1, zero, 8
003d8c  1f020100  addli r4, r2, 0
003d90  37200c00  beq r24, zero, 8
003d94  1f0c0200  addli r24, r4, 0
003d98  13622006  setle.f r4, zero, r2
003d9c  93620106  setle.f r5, r2, zero
003da0  17824200  and r4, r5, r4
003da4  3b200200  bneq r4, zero, 8
003da8  1f0c0100  addli r24, r2, 0
003dac  e3024fda  loadli.w r5,  -4832(r30)
003db0  3f20ba01  blt.s r20, r27, 8
003db4  1f8c0000  addli r24, r1, 0
003db8  17867201  and r12, r5, r23
003dbc  9f800100  addli r1, r3, 0
003dc0  13613604  setlt.f r2, r12, r3
003dc4  3b200100  bneq r2, zero, 8
003dc8  9f000600  addli r1, r12, 0
003dcc  1b319600  slli r2, r12, 9
003dd0  1bb29100  slli r4, r3, 9
003dd4  9bc27201  srli r5, r5, 23
003dd8  1bc37101  srli r6, r3, 23
003ddc  13010100  seteq r2, r2, zero
003de0  13020200  seteq r4, r4, zero
003de4  9b82f20f  andi r5, r5, 255
003de8  1b03f30f  andi r6, r6, 255
003dec  9bf2f20f  setlti r5, r5, 255
003df0  1b73f30f  setlti r6, r6, 255
003df4  17912200  or r2, r5, r2
003df8  17124300  or r4, r6, r4
003dfc  17012200  and r2, r4, r2
003e00  3b200100  bneq r2, zero, 8
003e04  ab00c07f  lui r1, 523264
003e08  63038fdc  loadli.w r6,  -4544(r30)
003e0c  1f810100  addli r2, r3, 0
003e10  37a00100  beq r3, zero, 8
003e14  1f810000  addli r2, r1, 0
003e18  37200600  beq r12, zero, 8
003e1c  1f060100  addli r12, r2, 0
003e20  13611006  setle.f r2, zero, r1
003e24  13e20006  setle.f r4, r1, zero
003e28  17012200  and r2, r4, r2
003e2c  3b200100  bneq r2, zero, 8
003e30  1f860000  addli r12, r1, 0
003e34  63424fda  loadli.w r4,  -4828(r30)
003e38  3f20ba01  blt.s r20, r27, 8
003e3c  1f860100  addli r12, r3, 0
003e40  170e7201  and r28, r4, r23
003e44  9f800400  addli r1, r9, 0
003e48  13619e04  setlt.f r2, r28, r9
003e4c  3b200100  bneq r2, zero, 8
003e50  9f000e00  addli r1, r28, 0
003e54  1b319e00  slli r2, r28, 9
003e58  9bb19400  slli r3, r9, 9
003e5c  1b427201  srli r4, r4, 23
003e60  9bc27401  srli r5, r9, 23
003e64  13010100  seteq r2, r2, zero
003e68  93810100  seteq r3, r3, zero
003e6c  1b02f20f  andi r4, r4, 255
003e70  9b82f20f  andi r5, r5, 255
003e74  1b72f20f  setlti r4, r4, 255
003e78  9bf2f20f  setlti r5, r5, 255
003e7c  17112200  or r2, r4, r2
003e80  97913200  or r3, r5, r3
003e84  17812100  and r2, r3, r2
003e88  3b200100  bneq r2, zero, 8
003e8c  ab00c07f  lui r1, 523264
003e90  63025fda  loadli.w r4,  -4824(r30)
003e94  1f810400  addli r2, r9, 0
003e98  37a00400  beq r9, zero, 8
003e9c  1f810000  addli r2, r1, 0
003ea0  37200e00  beq r28, zero, 8
003ea4  1f0e0100  addli r28, r2, 0
003ea8  13611006  setle.f r2, zero, r1
003eac  93e10006  setle.f r3, r1, zero
003eb0  17812100  and r2, r3, r2
003eb4  3b200100  bneq r2, zero, 8
003eb8  1f8e0000  addli r28, r1, 0
003ebc  3f20ba01  blt.s r20, r27, 8
003ec0  1f8e0400  addli r28, r9, 0
003ec4  17047201  and r8, r4, r23
003ec8  9f800700  addli r1, r15, 0
003ecc  1361f404  setlt.f r2, r8, r15
003ed0  3b200100  bneq r2, zero, 8
003ed4  9f000400  addli r1, r8, 0
003ed8  1b319400  slli r2, r8, 9
003edc  9bb19700  slli r3, r15, 9
003ee0  1b427201  srli r4, r4, 23
003ee4  9bc27701  srli r5, r15, 23
003ee8  e3040fde  loadli.w r9,  -4352(r30)
003eec  13010100  seteq r2, r2, zero
003ef0  93810100  seteq r3, r3, zero
003ef4  1b02f20f  andi r4, r4, 255
003ef8  9b82f20f  andi r5, r5, 255
003efc  1b72f20f  setlti r4, r4, 255
003f00  9bf2f20f  setlti r5, r5, 255
003f04  17112200  or r2, r4, r2
003f08  97913200  or r3, r5, r3
003f0c  17812100  and r2, r3, r2
003f10  37740102  beq r2, zero, 1308
003f14  1f810700  addli r2, r15, 0
003f18  bb840702  bneq r15, zero, 1312
003f1c  37200400  beq r8, zero, 8
003f20  1f040100  addli r8, r2, 0
003f24  13611006  setle.f r2, zero, r1
003f28  93e10006  setle.f r3, r1, zero
003f2c  17812100  and r2, r3, r2
003f30  3b200100  bneq r2, zero, 8
003f34  1f840000  addli r8, r1, 0
003f38  3f20ba01  blt.s r20, r27, 8
003f3c  1f840700  addli r8, r15, 0
003f40  97867801  and r13, r17, r23
003f44  9f800a00  addli r1, r21, 0
003f48  13e15605  setlt.f r2, r13, r21
003f4c  3b200100  bneq r2, zero, 8
003f50  9f800600  addli r1, r13, 0
003f54  1bb19600  slli r2, r13, 9
003f58  9bb19a00  slli r3, r21, 9
003f5c  1bc27801  srli r4, r17, 23
003f60  9bc27a01  srli r5, r21, 23
003f64  e3078fde  loadli.w r15,  -4288(r30)
003f68  13010100  seteq r2, r2, zero
003f6c  93810100  seteq r3, r3, zero
003f70  1b02f20f  andi r4, r4, 255
003f74  9b82f20f  andi r5, r5, 255
003f78  1b72f20f  setlti r4, r4, 255
003f7c  9bf2f20f  setlti r5, r5, 255
003f80  17112200  or r2, r4, r2
003f84  97913200  or r3, r5, r3
003f88  17812100  and r2, r3, r2
003f8c  3b200100  bneq r2, zero, 8
003f90  ab00c07f  lui r1, 523264
003f94  e3485fda  loadli.w r17,  -4820(r30)
003f98  1f810a00  addli r2, r21, 0
003f9c  37a00a00  beq r21, zero, 8
003fa0  1f810000  addli r2, r1, 0
003fa4  37a00600  beq r13, zero, 8
003fa8  9f060100  addli r13, r2, 0
003fac  13611006  setle.f r2, zero, r1
003fb0  93e10006  setle.f r3, r1, zero
003fb4  17812100  and r2, r3, r2
003fb8  3b200100  bneq r2, zero, 8
003fbc  9f860000  addli r13, r1, 0
003fc0  3f20ba01  blt.s r20, r27, 8
003fc4  9f860a00  addli r13, r21, 0
003fc8  97857801  and r11, r17, r23
003fcc  9f000b00  addli r1, r22, 0
003fd0  13e16505  setlt.f r2, r11, r22
003fd4  3b200100  bneq r2, zero, 8
003fd8  9f800500  addli r1, r11, 0
003fdc  1bb19500  slli r2, r11, 9
003fe0  9b319b00  slli r3, r22, 9
003fe4  1bc27801  srli r4, r17, 23
003fe8  9b427b01  srli r5, r22, 23
003fec  13010100  seteq r2, r2, zero
003ff0  93810100  seteq r3, r3, zero
003ff4  1b02f20f  andi r4, r4, 255
003ff8  9b82f20f  andi r5, r5, 255
003ffc  1b72f20f  setlti r4, r4, 255
004000  9bf2f20f  setlti r5, r5, 255
004004  17112200  or r2, r4, r2
004008  97913200  or r3, r5, r3
00400c  17812100  and r2, r3, r2
004010  3b200100  bneq r2, zero, 8
004014  ab00c07f  lui r1, 523264
004018  63026fda  loadli.w r4,  -4816(r30)
00401c  1f010b00  addli r2, r22, 0
004020  37200b00  beq r22, zero, 8
004024  1f810000  addli r2, r1, 0
004028  37a00500  beq r11, zero, 8
00402c  9f050100  addli r11, r2, 0
004030  13611006  setle.f r2, zero, r1
004034  93e10006  setle.f r3, r1, zero
004038  17812100  and r2, r3, r2
00403c  3b200100  bneq r2, zero, 8
004040  9f850000  addli r11, r1, 0
004044  3f20ba01  blt.s r20, r27, 8
004048  9f050b00  addli r11, r22, 0
00404c  97087201  and r17, r4, r23
004050  9f000500  addli r1, r10, 0
004054  13e1a804  setlt.f r2, r17, r10
004058  3b200100  bneq r2, zero, 8
00405c  9f800800  addli r1, r17, 0
004060  1bb19800  slli r2, r17, 9
004064  9b319500  slli r3, r10, 9
004068  1b427201  srli r4, r4, 23
00406c  9b427501  srli r5, r10, 23
004070  13010100  seteq r2, r2, zero
004074  93810100  seteq r3, r3, zero
004078  1b02f20f  andi r4, r4, 255
00407c  9b82f20f  andi r5, r5, 255
004080  1b72f20f  setlti r4, r4, 255
004084  9bf2f20f  setlti r5, r5, 255
004088  17112200  or r2, r4, r2
00408c  97913200  or r3, r5, r3
004090  17812100  and r2, r3, r2
004094  3b200100  bneq r2, zero, 8
004098  ab00c07f  lui r1, 523264
00409c  63426fda  loadli.w r4,  -4812(r30)
0040a0  1f010500  addli r2, r10, 0
0040a4  37200500  beq r10, zero, 8
0040a8  1f810000  addli r2, r1, 0
0040ac  37a00800  beq r17, zero, 8
0040b0  9f080100  addli r17, r2, 0
0040b4  13611006  setle.f r2, zero, r1
0040b8  93e10006  setle.f r3, r1, zero
0040bc  17812100  and r2, r3, r2
0040c0  3b200100  bneq r2, zero, 8
0040c4  9f880000  addli r17, r1, 0
0040c8  3f20ba01  blt.s r20, r27, 8
0040cc  9f080500  addli r17, r10, 0
0040d0  17057201  and r10, r4, r23
0040d4  9f000700  addli r1, r14, 0
0040d8  1361e504  setlt.f r2, r10, r14
0040dc  3b200100  bneq r2, zero, 8
0040e0  9f000500  addli r1, r10, 0
0040e4  1b319500  slli r2, r10, 9
0040e8  9b319700  slli r3, r14, 9
0040ec  1b427201  srli r4, r4, 23
0040f0  9b427701  srli r5, r14, 23
0040f4  13010100  seteq r2, r2, zero
0040f8  93810100  seteq r3, r3, zero
0040fc  1b02f20f  andi r4, r4, 255
004100  9b82f20f  andi r5, r5, 255
004104  1b72f20f  setlti r4, r4, 255
004108  9bf2f20f  setlti r5, r5, 255
00410c  17112200  or r2, r4, r2
004110  97913200  or r3, r5, r3
004114  17812100  and r2, r3, r2
004118  3b200100  bneq r2, zero, 8
00411c  ab00c07f  lui r1, 523264
004120  63027fda  loadli.w r4,  -4808(r30)
004124  1f010700  addli r2, r14, 0
004128  37200700  beq r14, zero, 8
00412c  1f810000  addli r2, r1, 0
004130  37200500  beq r10, zero, 8
004134  1f050100  addli r10, r2, 0
004138  13611006  setle.f r2, zero, r1
00413c  93e10006  setle.f r3, r1, zero
004140  17812100  and r2, r3, r2
004144  3b200100  bneq r2, zero, 8
004148  1f850000  addli r10, r1, 0
00414c  3f20ba01  blt.s r20, r27, 8
004150  1f050700  addli r10, r14, 0
004154  17077201  and r14, r4, r23
004158  9f800300  addli r1, r7, 0
00415c  13617704  setlt.f r2, r14, r7
004160  3b200100  bneq r2, zero, 8
004164  9f000700  addli r1, r14, 0
004168  1b319700  slli r2, r14, 9
00416c  9bb19300  slli r3, r7, 9
004170  1b427201  srli r4, r4, 23
004174  9bc27301  srli r5, r7, 23
004178  13010100  seteq r2, r2, zero
00417c  93810100  seteq r3, r3, zero
004180  1b02f20f  andi r4, r4, 255
004184  9b82f20f  andi r5, r5, 255
004188  1b72f20f  setlti r4, r4, 255
00418c  9bf2f20f  setlti r5, r5, 255
004190  17112200  or r2, r4, r2
004194  97913200  or r3, r5, r3
004198  17812100  and r2, r3, r2
00419c  3b200100  bneq r2, zero, 8
0041a0  ab00c07f  lui r1, 523264
0041a4  63427fda  loadli.w r4,  -4804(r30)
0041a8  1f810300  addli r2, r7, 0
0041ac  37a00300  beq r7, zero, 8
0041b0  1f810000  addli r2, r1, 0
0041b4  37200700  beq r14, zero, 8
0041b8  1f070100  addli r14, r2, 0
0041bc  13611006  setle.f r2, zero, r1
0041c0  93e10006  setle.f r3, r1, zero
0041c4  17812100  and r2, r3, r2
0041c8  3b200100  bneq r2, zero, 8
0041cc  1f870000  addli r14, r1, 0
0041d0  3f20ba01  blt.s r20, r27, 8
0041d4  1f870300  addli r14, r7, 0
0041d8  97037201  and r7, r4, r23
0041dc  9f000300  addli r1, r6, 0
0041e0  13e16304  setlt.f r2, r7, r6
0041e4  3b200100  bneq r2, zero, 8
0041e8  9f800300  addli r1, r7, 0
0041ec  1bb19300  slli r2, r7, 9
0041f0  9b319300  slli r3, r6, 9
0041f4  1b427201  srli r4, r4, 23
0041f8  9b427301  srli r5, r6, 23
0041fc  13010100  seteq r2, r2, zero
004200  93810100  seteq r3, r3, zero
004204  1b02f20f  andi r4, r4, 255
004208  9b82f20f  andi r5, r5, 255
00420c  1b72f20f  setlti r4, r4, 255
004210  9bf2f20f  setlti r5, r5, 255
004214  17112200  or r2, r4, r2
004218  97913200  or r3, r5, r3
00421c  17812100  and r2, r3, r2
004220  3b200100  bneq r2, zero, 8
004224  ab00c07f  lui r1, 523264
004228  63028fda  loadli.w r4,  -4800(r30)
00422c  1f010300  addli r2, r6, 0
004230  37200300  beq r6, zero, 8
004234  1f810000  addli r2, r1, 0
004238  37a00300  beq r7, zero, 8
00423c  9f030100  addli r7, r2, 0
004240  13611006  setle.f r2, zero, r1
004244  93e10006  setle.f r3, r1, zero
004248  17812100  and r2, r3, r2
00424c  3b200100  bneq r2, zero, 8
004250  9f830000  addli r7, r1, 0
004254  3f20ba01  blt.s r20, r27, 8
004258  9f030300  addli r7, r6, 0
00425c  17037201  and r6, r4, r23
004260  9f800400  addli r1, r9, 0
004264  13619304  setlt.f r2, r6, r9
004268  3b200100  bneq r2, zero, 8
00426c  9f000300  addli r1, r6, 0
004270  1b319300  slli r2, r6, 9
004274  9bb19400  slli r3, r9, 9
004278  1b427201  srli r4, r4, 23
00427c  9bc27401  srli r5, r9, 23
004280  13010100  seteq r2, r2, zero
004284  93810100  seteq r3, r3, zero
004288  1b02f20f  andi r4, r4, 255
00428c  9b82f20f  andi r5, r5, 255
004290  1b72f20f  setlti r4, r4, 255
004294  9bf2f20f  setlti r5, r5, 255
004298  17112200  or r2, r4, r2
00429c  97913200  or r3, r5, r3
0042a0  17812100  and r2, r3, r2
0042a4  3b200100  bneq r2, zero, 8
0042a8  ab00c07f  lui r1, 523264
0042ac  63020fdb  loadli.w r4,  -4736(r30)
0042b0  1f810400  addli r2, r9, 0
0042b4  37a00400  beq r9, zero, 8
0042b8  1f810000  addli r2, r1, 0
0042bc  37200300  beq r6, zero, 8
0042c0  1f030100  addli r6, r2, 0
0042c4  13611006  setle.f r2, zero, r1
0042c8  93e10006  setle.f r3, r1, zero
0042cc  17812100  and r2, r3, r2
0042d0  3b200100  bneq r2, zero, 8
0042d4  1f830000  addli r6, r1, 0
0042d8  3f20ba01  blt.s r20, r27, 8
0042dc  1f830400  addli r6, r9, 0
0042e0  97027201  and r5, r4, r23
0042e4  9f800700  addli r1, r15, 0
0042e8  13e1f204  setlt.f r2, r5, r15
0042ec  3b200100  bneq r2, zero, 8
0042f0  9f800200  addli r1, r5, 0
0042f4  1bb19200  slli r2, r5, 9
0042f8  9bb19700  slli r3, r15, 9
0042fc  1b427201  srli r4, r4, 23
004300  9bc47701  srli r9, r15, 23
004304  13010100  seteq r2, r2, zero
004308  93810100  seteq r3, r3, zero
00430c  1b02f20f  andi r4, r4, 255
004310  9b84f40f  andi r9, r9, 255
004314  1b72f20f  setlti r4, r4, 255
004318  9bf4f40f  setlti r9, r9, 255
00431c  17112200  or r2, r4, r2
004320  97913400  or r3, r9, r3
004324  17812100  and r2, r3, r2
004328  3b200100  bneq r2, zero, 8
00432c  ab00c07f  lui r1, 523264
004330  e3040fdc  loadli.w r9,  -4608(r30)
004334  1f810700  addli r2, r15, 0
004338  37a00700  beq r15, zero, 8
00433c  1f810000  addli r2, r1, 0
004340  37a00200  beq r5, zero, 8
004344  9f020100  addli r5, r2, 0
004348  13611006  setle.f r2, zero, r1
00434c  93e10006  setle.f r3, r1, zero
004350  17812100  and r2, r3, r2
004354  3b200100  bneq r2, zero, 8
004358  9f820000  addli r5, r1, 0
00435c  3f20ba01  blt.s r20, r27, 8
004360  9f820700  addli r5, r15, 0
004364  17817401  and r2, r9, r23
004368  9f000800  addli r1, r16, 0
00436c  93610105  setlt.f r3, r2, r16
004370  3ba00100  bneq r3, zero, 8
004374  9f000100  addli r1, r2, 0
004378  9b319100  slli r3, r2, 9
00437c  1b329800  slli r4, r16, 9
004380  9bc47401  srli r9, r9, 23
004384  9b477801  srli r15, r16, 23
004388  e30b8fdb  loadli.w r23,  -4672(r30)
00438c  93810100  seteq r3, r3, zero
004390  13020200  seteq r4, r4, zero
004394  9b84f40f  andi r9, r9, 255
004398  9b87f70f  andi r15, r15, 255
00439c  9bf4f40f  setlti r9, r9, 255
0043a0  9bf7f70f  setlti r15, r15, 255
0043a4  97913400  or r3, r9, r3
0043a8  17924700  or r4, r15, r4
0043ac  97013200  and r3, r4, r3
0043b0  37d20100  beq r3, zero, 148
0043b4  9f010800  addli r3, r16, 0
0043b8  3b620800  bneq r16, zero, 152
0043bc  37200100  beq r2, zero, 8
0043c0  1f810100  addli r2, r3, 0
0043c4  93611006  setle.f r3, zero, r1
0043c8  13e20006  setle.f r4, r1, zero
0043cc  97013200  and r3, r4, r3
0043d0  3ba00100  bneq r3, zero, 8
0043d4  1f810000  addli r2, r1, 0
0043d8  3f55baf9  blt.s r20, r27, -3756
0043dc  1f010800  addli r2, r16, 0
0043e0  db29feff  j -3764
0043e4  2b01c07f  lui r2, 523264
0043e8  9f020d00  addli r5, r26, 0
0043ec  b7300dfc  beq r26, zero, -2004
0043f0  9f020100  addli r5, r2, 0
0043f4  bba00cfc  bneq r25, zero, -2008
0043f8  5b05ffff  j -2008
0043fc  2b01c07f  lui r2, 523264
004400  9f020200  addli r5, r4, 0
004404  373202fc  beq r4, zero, -1908
004408  9f020100  addli r5, r2, 0
00440c  3b2209fc  bneq r18, zero, -1912
004410  5b11ffff  j -1912
004414  2b01c07f  lui r2, 523264
004418  1f020800  addli r4, r16, 0
00441c  b73308fc  beq r16, zero, -1812
004420  1f020100  addli r4, r2, 0
004424  bba309fc  bneq r19, zero, -1816
004428  5b1dffff  j -1816
00442c  ab00c07f  lui r1, 523264
004430  1f810700  addli r2, r15, 0
004434  b7ab07fc  beq r15, zero, -1304
004438  1f810000  addli r2, r1, 0
00443c  bb1b04fc  bneq r8, zero, -1308
004440  db5cffff  j -1308
004444  ab00c07f  lui r1, 523264
004448  9f010800  addli r3, r16, 0
00444c  b74d08fe  beq r16, zero, -144
004450  9f810000  addli r3, r1, 0
004454  bb3d01fe  bneq r2, zero, -148
004458  dbedffff  j -148
00445c  93619905  setlt.f r3, r18, r25
004460  9f800c00  addli r1, r25, 0
004464  3ba00100  bneq r3, zero, 8
004468  9f000900  addli r1, r18, 0
00446c  9b319900  slli r3, r18, 9
004470  1bb29c00  slli r4, r25, 9
004474  9b447901  srli r9, r18, 23
004478  9bc77c01  srli r15, r25, 23
00447c  6308efdf  loadli.w r16,  -4112(r30)
004480  93810100  seteq r3, r3, zero
004484  13020200  seteq r4, r4, zero
004488  9b84f40f  andi r9, r9, 255
00448c  9b87f70f  andi r15, r15, 255
004490  9bf4f40f  setlti r9, r9, 255
004494  9bf7f70f  setlti r15, r15, 255
004498  97913400  or r3, r9, r3
00449c  17924700  or r4, r15, r4
0044a0  97013200  and r3, r4, r3
0044a4  b7ae0102  beq r3, zero, 1960
0044a8  bbbe0c02  bneq r25, zero, 1964
0044ac  37200900  beq r18, zero, 8
0044b0  1f890c00  addli r18, r25, 0
0044b4  93611006  setle.f r3, zero, r1
0044b8  13e20006  setle.f r4, r1, zero
0044bc  97013200  and r3, r4, r3
0044c0  3ba00100  bneq r3, zero, 8
0044c4  1f890000  addli r18, r1, 0
0044c8  93e12905  setlt.f r3, r19, r18
0044cc  9f000900  addli r1, r18, 0
0044d0  3ba00100  bneq r3, zero, 8
0044d4  9f800900  addli r1, r19, 0
0044d8  9b319900  slli r3, r18, 9
0044dc  1bb29900  slli r4, r19, 9
0044e0  9b447901  srli r9, r18, 23
0044e4  9bc77901  srli r15, r19, 23
0044e8  93810100  seteq r3, r3, zero
0044ec  13020200  seteq r4, r4, zero
0044f0  9b84f40f  andi r9, r9, 255
0044f4  9b87f70f  andi r15, r15, 255
0044f8  9bf4f40f  setlti r9, r9, 255
0044fc  9bf7f70f  setlti r15, r15, 255
004500  97913400  or r3, r9, r3
004504  17924700  or r4, r15, r4
004508  97814100  and r3, r3, r4
00450c  37dd0102  beq r3, zero, 1876
004510  3b6d0902  bneq r18, zero, 1880
004514  37a00900  beq r19, zero, 8
004518  9f090900  addli r19, r18, 0
00451c  93611006  setle.f r3, zero, r1
004520  13e20006  setle.f r4, r1, zero
004524  97013200  and r3, r4, r3
004528  3ba00100  bneq r3, zero, 8
00452c  9f890000  addli r19, r1, 0
004530  93613c05  setlt.f r3, r24, r19
004534  9f800900  addli r1, r19, 0
004538  3ba00100  bneq r3, zero, 8
00453c  9f000c00  addli r1, r24, 0
004540  9bb19900  slli r3, r19, 9
004544  1b329c00  slli r4, r24, 9
004548  9bc47901  srli r9, r19, 23
00454c  9b477c01  srli r15, r24, 23
004550  93810100  seteq r3, r3, zero
004554  13020200  seteq r4, r4, zero
004558  9b84f40f  andi r9, r9, 255
00455c  9b87f70f  andi r15, r15, 255
004560  9bf4f40f  setlti r9, r9, 255
004564  9bf7f70f  setlti r15, r15, 255
004568  97913400  or r3, r9, r3
00456c  17924700  or r4, r15, r4
004570  97814100  and r3, r3, r4
004574  378c0102  beq r3, zero, 1792
004578  3b9c0902  bneq r19, zero, 1796
00457c  37200c00  beq r24, zero, 8
004580  1f8c0900  addli r24, r19, 0
004584  93611006  setle.f r3, zero, r1
004588  13e20006  setle.f r4, r1, zero
00458c  97013200  and r3, r4, r3
004590  3ba00100  bneq r3, zero, 8
004594  1f8c0000  addli r24, r1, 0
004598  93618605  setlt.f r3, r12, r24
00459c  9f000c00  addli r1, r24, 0
0045a0  3ba00100  bneq r3, zero, 8
0045a4  9f000600  addli r1, r12, 0
0045a8  9b319c00  slli r3, r24, 9
0045ac  1b329600  slli r4, r12, 9
0045b0  9b447c01  srli r9, r24, 23
0045b4  9b477601  srli r15, r12, 23
0045b8  93810100  seteq r3, r3, zero
0045bc  13020200  seteq r4, r4, zero
0045c0  9b84f40f  andi r9, r9, 255
0045c4  9b87f70f  andi r15, r15, 255
0045c8  9bf4f40f  setlti r9, r9, 255
0045cc  9bf7f70f  setlti r15, r15, 255
0045d0  97913400  or r3, r9, r3
0045d4  17924700  or r4, r15, r4
0045d8  97814100  and r3, r3, r4
0045dc  b7ba0102  beq r3, zero, 1708
0045e0  bb4a0c02  bneq r24, zero, 1712
0045e4  37200600  beq r12, zero, 8
0045e8  1f060c00  addli r12, r24, 0
0045ec  93611006  setle.f r3, zero, r1
0045f0  13e20006  setle.f r4, r1, zero
0045f4  97013200  and r3, r4, r3
0045f8  3ba00100  bneq r3, zero, 8
0045fc  1f860000  addli r12, r1, 0
004600  9361ce04  setlt.f r3, r28, r12
004604  630cffdf  loadli.w r24,  -4104(r30)
004608  9f000600  addli r1, r12, 0
00460c  3ba00100  bneq r3, zero, 8
004610  9f000e00  addli r1, r28, 0
004614  9b319600  slli r3, r12, 9
004618  1b329e00  slli r4, r28, 9
00461c  9b447601  srli r9, r12, 23
004620  9b477e01  srli r15, r28, 23
004624  93810100  seteq r3, r3, zero
004628  13020200  seteq r4, r4, zero
00462c  9b84f40f  andi r9, r9, 255
004630  9b87f70f  andi r15, r15, 255
004634  9bf4f40f  setlti r9, r9, 255
004638  9bf7f70f  setlti r15, r15, 255
00463c  97913400  or r3, r9, r3
004640  17924700  or r4, r15, r4
004644  97814100  and r3, r3, r4
004648  37d90102  beq r3, zero, 1620
00464c  3b690602  bneq r12, zero, 1624
004650  37200e00  beq r28, zero, 8
004654  1f0e0600  addli r28, r12, 0
004658  93611006  setle.f r3, zero, r1
00465c  13e20006  setle.f r4, r1, zero
004660  97013200  and r3, r4, r3
004664  3ba00100  bneq r3, zero, 8
004668  1f8e0000  addli r28, r1, 0
00466c  9361c405  setlt.f r3, r8, r28
004670  9f000e00  addli r1, r28, 0
004674  3ba00100  bneq r3, zero, 8
004678  9f000400  addli r1, r8, 0
00467c  9b319e00  slli r3, r28, 9
004680  1b329400  slli r4, r8, 9
004684  9b447e01  srli r9, r28, 23
004688  1b467401  srli r12, r8, 23
00468c  93810100  seteq r3, r3, zero
004690  13020200  seteq r4, r4, zero
004694  9b84f40f  andi r9, r9, 255
004698  1b06f60f  andi r12, r12, 255
00469c  9bf4f40f  setlti r9, r9, 255
0046a0  1b76f60f  setlti r12, r12, 255
0046a4  97913400  or r3, r9, r3
0046a8  17124600  or r4, r12, r4
0046ac  97814100  and r3, r3, r4
0046b0  37880102  beq r3, zero, 1536
0046b4  3b180e02  bneq r28, zero, 1540
0046b8  37200400  beq r8, zero, 8
0046bc  1f040e00  addli r8, r28, 0
0046c0  93611006  setle.f r3, zero, r1
0046c4  13e20006  setle.f r4, r1, zero
0046c8  97013200  and r3, r4, r3
0046cc  3ba00100  bneq r3, zero, 8
0046d0  1f840000  addli r8, r1, 0
0046d4  93e18604  setlt.f r3, r13, r8
0046d8  634effdf  loadli.w r28,  -4100(r30)
0046dc  9f000400  addli r1, r8, 0
0046e0  3ba00100  bneq r3, zero, 8
0046e4  9f800600  addli r1, r13, 0
0046e8  9b319400  slli r3, r8, 9
0046ec  1bb29600  slli r4, r13, 9
0046f0  9b447401  srli r9, r8, 23
0046f4  1bc67601  srli r12, r13, 23
0046f8  93810100  seteq r3, r3, zero
0046fc  13020200  seteq r4, r4, zero
004700  9b84f40f  andi r9, r9, 255
004704  1b06f60f  andi r12, r12, 255
004708  9bf4f40f  setlti r9, r9, 255
00470c  1b76f60f  setlti r12, r12, 255
004710  97913400  or r3, r9, r3
004714  17124600  or r4, r12, r4
004718  97814100  and r3, r3, r4
00471c  b7a60102  beq r3, zero, 1448
004720  bb360402  bneq r8, zero, 1452
004724  37a00600  beq r13, zero, 8
004728  9f060400  addli r13, r8, 0
00472c  93611006  setle.f r3, zero, r1
004730  13e20006  setle.f r4, r1, zero
004734  97013200  and r3, r4, r3
004738  3ba00100  bneq r3, zero, 8
00473c  9f860000  addli r13, r1, 0
004740  93e1d504  setlt.f r3, r11, r13
004744  9f800600  addli r1, r13, 0
004748  3ba00100  bneq r3, zero, 8
00474c  9f800500  addli r1, r11, 0
004750  9bb19600  slli r3, r13, 9
004754  1bb29500  slli r4, r11, 9
004758  1bc47601  srli r8, r13, 23
00475c  9bc47501  srli r9, r11, 23
004760  93810100  seteq r3, r3, zero
004764  13020200  seteq r4, r4, zero
004768  1b04f40f  andi r8, r8, 255
00476c  9b84f40f  andi r9, r9, 255
004770  1b74f40f  setlti r8, r8, 255
004774  9bf4f40f  setlti r9, r9, 255
004778  97113400  or r3, r8, r3
00477c  17924400  or r4, r9, r4
004780  97814100  and r3, r3, r4
004784  37d50102  beq r3, zero, 1364
004788  3be50602  bneq r13, zero, 1368
00478c  37a00500  beq r11, zero, 8
004790  9f850600  addli r11, r13, 0
004794  93611006  setle.f r3, zero, r1
004798  13e20006  setle.f r4, r1, zero
00479c  97013200  and r3, r4, r3
0047a0  3ba00100  bneq r3, zero, 8
0047a4  9f850000  addli r11, r1, 0
0047a8  93e1b804  setlt.f r3, r17, r11
0047ac  9f800500  addli r1, r11, 0
0047b0  3ba00100  bneq r3, zero, 8
0047b4  9f800800  addli r1, r17, 0
0047b8  9bb19500  slli r3, r11, 9
0047bc  1bb29800  slli r4, r17, 9
0047c0  1bc47501  srli r8, r11, 23
0047c4  9bc47801  srli r9, r17, 23
0047c8  93810100  seteq r3, r3, zero
0047cc  13020200  seteq r4, r4, zero
0047d0  1b04f40f  andi r8, r8, 255
0047d4  9b84f40f  andi r9, r9, 255
0047d8  1b74f40f  setlti r8, r8, 255
0047dc  9bf4f40f  setlti r9, r9, 255
0047e0  97113400  or r3, r8, r3
0047e4  17924400  or r4, r9, r4
0047e8  97814100  and r3, r3, r4
0047ec  37840102  beq r3, zero, 1280
0047f0  3b940502  bneq r11, zero, 1284
0047f4  37a00800  beq r17, zero, 8
0047f8  9f880500  addli r17, r11, 0
0047fc  93611006  setle.f r3, zero, r1
004800  13e20006  setle.f r4, r1, zero
004804  97013200  and r3, r4, r3
004808  3ba00100  bneq r3, zero, 8
00480c  9f880000  addli r17, r1, 0
004810  93611505  setlt.f r3, r10, r17
004814  9f800800  addli r1, r17, 0
004818  3ba00100  bneq r3, zero, 8
00481c  9f000500  addli r1, r10, 0
004820  9bb19800  slli r3, r17, 9
004824  1b329500  slli r4, r10, 9
004828  1bc47801  srli r8, r17, 23
00482c  9b447501  srli r9, r10, 23
004830  93810100  seteq r3, r3, zero
004834  13020200  seteq r4, r4, zero
004838  1b04f40f  andi r8, r8, 255
00483c  9b84f40f  andi r9, r9, 255
004840  1b74f40f  setlti r8, r8, 255
004844  9bf4f40f  setlti r9, r9, 255
004848  97113400  or r3, r8, r3
00484c  17924400  or r4, r9, r4
004850  97814100  and r3, r3, r4
004854  b7b20102  beq r3, zero, 1196
004858  bbc20802  bneq r17, zero, 1200
00485c  37200500  beq r10, zero, 8
004860  1f850800  addli r10, r17, 0
004864  93611006  setle.f r3, zero, r1
004868  13e20006  setle.f r4, r1, zero
00486c  97013200  and r3, r4, r3
004870  3ba00100  bneq r3, zero, 8
004874  1f850000  addli r10, r1, 0
004878  9361a704  setlt.f r3, r14, r10
00487c  9f000500  addli r1, r10, 0
004880  3ba00100  bneq r3, zero, 8
004884  9f000700  addli r1, r14, 0
004888  9b319500  slli r3, r10, 9
00488c  1b329700  slli r4, r14, 9
004890  1b447501  srli r8, r10, 23
004894  9b447701  srli r9, r14, 23
004898  93810100  seteq r3, r3, zero
00489c  13020200  seteq r4, r4, zero
0048a0  1b04f40f  andi r8, r8, 255
0048a4  9b84f40f  andi r9, r9, 255
0048a8  1b74f40f  setlti r8, r8, 255
0048ac  9bf4f40f  setlti r9, r9, 255
0048b0  97113400  or r3, r8, r3
0048b4  17924400  or r4, r9, r4
0048b8  97814100  and r3, r3, r4
0048bc  37e10102  beq r3, zero, 1112
0048c0  3b710502  bneq r10, zero, 1116
0048c4  37200700  beq r14, zero, 8
0048c8  1f070500  addli r14, r10, 0
0048cc  93611006  setle.f r3, zero, r1
0048d0  13e20006  setle.f r4, r1, zero
0048d4  97013200  and r3, r4, r3
0048d8  3ba00100  bneq r3, zero, 8
0048dc  1f870000  addli r14, r1, 0
0048e0  93e1e304  setlt.f r3, r7, r14
0048e4  63453fda  loadli.w r10,  -4836(r30)
0048e8  9f000700  addli r1, r14, 0
0048ec  3ba00100  bneq r3, zero, 8
0048f0  9f800300  addli r1, r7, 0
0048f4  9b319700  slli r3, r14, 9
0048f8  1bb29300  slli r4, r7, 9
0048fc  1b447701  srli r8, r14, 23
004900  9bc47301  srli r9, r7, 23
004904  93810100  seteq r3, r3, zero
004908  13020200  seteq r4, r4, zero
00490c  1b04f40f  andi r8, r8, 255
004910  9b84f40f  andi r9, r9, 255
004914  1b74f40f  setlti r8, r8, 255
004918  9bf4f40f  setlti r9, r9, 255
00491c  97113400  or r3, r8, r3
004920  17924400  or r4, r9, r4
004924  97814100  and r3, r3, r4
004928  37800102  beq r3, zero, 1024
00492c  3b100702  bneq r14, zero, 1028
004930  37a00300  beq r7, zero, 8
004934  9f030700  addli r7, r14, 0
004938  93611006  setle.f r3, zero, r1
00493c  13e20006  setle.f r4, r1, zero
004940  97013200  and r3, r4, r3
004944  3ba00100  bneq r3, zero, 8
004948  9f830000  addli r7, r1, 0
00494c  93617304  setlt.f r3, r6, r7
004950  9f800300  addli r1, r7, 0
004954  3ba00100  bneq r3, zero, 8
004958  9f000300  addli r1, r6, 0
00495c  9bb19300  slli r3, r7, 9
004960  1b329300  slli r4, r6, 9
004964  1bc47301  srli r8, r7, 23
004968  9b447301  srli r9, r6, 23
00496c  93810100  seteq r3, r3, zero
004970  13020200  seteq r4, r4, zero
004974  1b04f40f  andi r8, r8, 255
004978  9b84f40f  andi r9, r9, 255
00497c  1b74f40f  setlti r8, r8, 255
004980  9bf4f40f  setlti r9, r9, 255
004984  97113400  or r3, r8, r3
004988  17924400  or r4, r9, r4
00498c  97814100  and r3, r3, r4
004990  b7be0100  beq r3, zero, 940
004994  bbce0300  bneq r7, zero, 944
004998  37200300  beq r6, zero, 8
00499c  1f830300  addli r6, r7, 0
0049a0  93611006  setle.f r3, zero, r1
0049a4  13e20006  setle.f r4, r1, zero
0049a8  97013200  and r3, r4, r3
0049ac  3ba00100  bneq r3, zero, 8
0049b0  1f830000  addli r6, r1, 0
0049b4  93e16204  setlt.f r3, r5, r6
0049b8  9f000300  addli r1, r6, 0
0049bc  3ba00100  bneq r3, zero, 8
0049c0  9f800200  addli r1, r5, 0
0049c4  9b319300  slli r3, r6, 9
0049c8  1bb29200  slli r4, r5, 9
0049cc  9b437301  srli r7, r6, 23
0049d0  1bc47201  srli r8, r5, 23
0049d4  93810100  seteq r3, r3, zero
0049d8  13020200  seteq r4, r4, zero
0049dc  9b83f30f  andi r7, r7, 255
0049e0  1b04f40f  andi r8, r8, 255
0049e4  9bf3f30f  setlti r7, r7, 255
0049e8  1b74f40f  setlti r8, r8, 255
0049ec  97913300  or r3, r7, r3
0049f0  17124400  or r4, r8, r4
0049f4  97814100  and r3, r3, r4
0049f8  37ed0100  beq r3, zero, 856
0049fc  63441fd1  loadli.w r8,  -6004(r30)
004a00  3b7d0300  bneq r6, zero, 860
004a04  37a00200  beq r5, zero, 8
004a08  9f020300  addli r5, r6, 0
004a0c  93611006  setle.f r3, zero, r1
004a10  13e20006  setle.f r4, r1, zero
004a14  97013200  and r3, r4, r3
004a18  3ba00100  bneq r3, zero, 8
004a1c  9f820000  addli r5, r1, 0
004a20  93615104  setlt.f r3, r2, r5
004a24  9f800200  addli r1, r5, 0
004a28  3ba00100  bneq r3, zero, 8
004a2c  9f000100  addli r1, r2, 0
004a30  9bb19200  slli r3, r5, 9
004a34  1b329100  slli r4, r2, 9
004a38  1bc37201  srli r6, r5, 23
004a3c  9b437101  srli r7, r2, 23
004a40  93810100  seteq r3, r3, zero
004a44  13020200  seteq r4, r4, zero
004a48  1b03f30f  andi r6, r6, 255
004a4c  9b83f30f  andi r7, r7, 255
004a50  1b73f30f  setlti r6, r6, 255
004a54  9bf3f30f  setlti r7, r7, 255
004a58  97113300  or r3, r6, r3
004a5c  17924300  or r4, r7, r4
004a60  97814100  and r3, r3, r4
004a64  379c0100  beq r3, zero, 772
004a68  3bac0200  bneq r5, zero, 776
004a6c  37200100  beq r2, zero, 8
004a70  1f810200  addli r2, r5, 0
004a74  93611006  setle.f r3, zero, r1
004a78  13e20006  setle.f r4, r1, zero
004a7c  97013200  and r3, r4, r3
004a80  3ba00100  bneq r3, zero, 8
004a84  1f810000  addli r2, r1, 0
004a88  e300ffd1  loadli.w r1,  -5896(r30)
004a8c  73e02000  stores.w r2, 0(r1)
004a90  00a00300  mfence { lm, sm, gm }
004a94  80210504  csr_set csr3, r10
004a98  00d00100  sync_group
004a9c  e3003fda  loadli.w r1,  -4840(r30)
004aa0  3bc50000  bneq r1, zero, 336
004aa4  ef410400  loads.w r3, 0(r8)
004aa8  ef404400  loads.w r1, 4(r8)
004aac  13e23004  setlt.f r4, r1, r3
004ab0  1f810100  addli r2, r3, 0
004ab4  3b200200  bneq r4, zero, 8
004ab8  1f810000  addli r2, r1, 0
004abc  1bb29100  slli r4, r3, 9
004ac0  9bb29000  slli r5, r1, 9
004ac4  1bc37101  srli r6, r3, 23
004ac8  9bc37001  srli r7, r1, 23
004acc  13020200  seteq r4, r4, zero
004ad0  93820200  seteq r5, r5, zero
004ad4  1b03f30f  andi r6, r6, 255
004ad8  9b83f30f  andi r7, r7, 255
004adc  1b73f30f  setlti r6, r6, 255
004ae0  9bf3f30f  setlti r7, r7, 255
004ae4  17124300  or r4, r6, r4
004ae8  97925300  or r5, r7, r5
004aec  17025200  and r4, r4, r5
004af0  375a020e  beq r4, zero, 7828
004af4  3bea010e  bneq r3, zero, 7832
004af8  37a00000  beq r1, zero, 8
004afc  9f800100  addli r1, r3, 0
004b00  93612006  setle.f r3, zero, r2
004b04  13620106  setle.f r4, r2, zero
004b08  97013200  and r3, r4, r3
004b0c  3ba00100  bneq r3, zero, 8
004b10  9f000100  addli r1, r2, 0
004b14  6f418400  loads.w r2, 8(r8)
004b18  9f810000  addli r3, r1, 0
004b1c  13621104  setlt.f r4, r2, r1
004b20  3b200200  bneq r4, zero, 8
004b24  9f010100  addli r3, r2, 0
004b28  1b329100  slli r4, r2, 9
004b2c  9bb29000  slli r5, r1, 9
004b30  1b437101  srli r6, r2, 23
004b34  9bc37001  srli r7, r1, 23
004b38  13020200  seteq r4, r4, zero
004b3c  93820200  seteq r5, r5, zero
004b40  1b03f30f  andi r6, r6, 255
004b44  9b83f30f  andi r7, r7, 255
004b48  1b73f30f  setlti r6, r6, 255
004b4c  9bf3f30f  setlti r7, r7, 255
004b50  17124300  or r4, r6, r4
004b54  97925300  or r5, r7, r5
004b58  17824200  and r4, r5, r4
004b5c  b778020e  beq r4, zero, 7740
004b60  3b89000e  bneq r1, zero, 7744
004b64  37200100  beq r2, zero, 8
004b68  1f810000  addli r2, r1, 0
004b6c  93603006  setle.f r1, zero, r3
004b70  13e20106  setle.f r4, r3, zero
004b74  97001200  and r1, r4, r1
004b78  3ba00000  bneq r1, zero, 8
004b7c  1f810100  addli r2, r3, 0
004b80  ef40c400  loads.w r1, 12(r8)
004b84  9f010100  addli r3, r2, 0
004b88  13e22004  setlt.f r4, r1, r2
004b8c  3b200200  bneq r4, zero, 8
004b90  9f810000  addli r3, r1, 0
004b94  1bb29000  slli r4, r1, 9
004b98  9b329100  slli r5, r2, 9
004b9c  1bc37001  srli r6, r1, 23
004ba0  9b437101  srli r7, r2, 23
004ba4  13020200  seteq r4, r4, zero
004ba8  93820200  seteq r5, r5, zero
004bac  1b03f30f  andi r6, r6, 255
004bb0  9b83f30f  andi r7, r7, 255
004bb4  1b73f30f  setlti r6, r6, 255
004bb8  9bf3f30f  setlti r7, r7, 255
004bbc  17124300  or r4, r6, r4
004bc0  97925300  or r5, r7, r5
004bc4  17824200  and r4, r5, r4
004bc8  b717020e  beq r4, zero, 7652
004bcc  bb27010e  bneq r2, zero, 7656
004bd0  37a00000  beq r1, zero, 8
004bd4  9f000100  addli r1, r2, 0
004bd8  13613006  setle.f r2, zero, r3
004bdc  13e20106  setle.f r4, r3, zero
004be0  17012200  and r2, r4, r2
004be4  3b200100  bneq r2, zero, 8
004be8  9f800100  addli r1, r3, 0
004bec  73601400  stores.w r1, 0(r8)
004bf0  00a00300  mfence { lm, sm, gm }
004bf4  80210504  csr_set csr3, r10
004bf8  00d00100  sync_group
004bfc  6f410400  loads.w r2, 0(r8)
004c00  67432fda  storeli.w r2, -4812(r30)
004c04  bf65b801  blt.s r16, r27, 376
004c08  9f060000  addli r13, zero, 0
004c0c  9f030000  addli r7, zero, 0
004c10  1f070000  addli r14, zero, 0
004c14  9f070000  addli r15, zero, 0
004c18  1f080000  addli r16, zero, 0
004c1c  1f010000  addli r2, zero, 0
004c20  1f030000  addli r6, zero, 0
004c24  1f040000  addli r8, zero, 0
004c28  9f040000  addli r9, zero, 0
004c2c  1f060000  addli r12, zero, 0
004c30  1f0a0000  addli r20, zero, 0
004c34  9f0a0000  addli r21, zero, 0
004c38  1f020000  addli r4, zero, 0
004c3c  9f020000  addli r5, zero, 0
004c40  1f050000  addli r10, zero, 0
004c44  9f050000  addli r11, zero, 0
004c48  5b410000  j 520
004c4c  ab00c07f  lui r1, 523264
004c50  37f10cfc  beq r25, zero, -1956
004c54  9f8c0000  addli r25, r1, 0
004c58  3b6109fc  bneq r18, zero, -1960
004c5c  5b0bffff  j -1960
004c60  ab00c07f  lui r1, 523264
004c64  b74209fc  beq r18, zero, -1872
004c68  1f890000  addli r18, r1, 0
004c6c  bbb209fc  bneq r19, zero, -1876
004c70  db15ffff  j -1876
004c74  ab00c07f  lui r1, 523264
004c78  379409fc  beq r19, zero, -1788
004c7c  9f890000  addli r19, r1, 0
004c80  3b040cfc  bneq r24, zero, -1792
004c84  5b20ffff  j -1792
004c88  ab00c07f  lui r1, 523264
004c8c  37650cfc  beq r24, zero, -1704
004c90  1f8c0000  addli r24, r1, 0
004c94  3b5506fc  bneq r12, zero, -1708
004c98  db2affff  j -1708
004c9c  ab00c07f  lui r1, 523264
004ca0  b74606fc  beq r12, zero, -1616
004ca4  1f860000  addli r12, r1, 0
004ca8  bb360efc  bneq r28, zero, -1620
004cac  db35ffff  j -1620
004cb0  ab00c07f  lui r1, 523264
004cb4  37180efc  beq r28, zero, -1532
004cb8  1f8e0000  addli r28, r1, 0
004cbc  3b0804fc  bneq r8, zero, -1536
004cc0  5b40ffff  j -1536
004cc4  ab00c07f  lui r1, 523264
004cc8  377904fc  beq r8, zero, -1444
004ccc  1f840000  addli r8, r1, 0
004cd0  3be906fc  bneq r13, zero, -1448
004cd4  5b4bffff  j -1448
004cd8  ab00c07f  lui r1, 523264
004cdc  b7ca06fc  beq r13, zero, -1360
004ce0  9f860000  addli r13, r1, 0
004ce4  bbba05fc  bneq r11, zero, -1364
004ce8  db55ffff  j -1364
004cec  ab00c07f  lui r1, 523264
004cf0  379c05fc  beq r11, zero, -1276
004cf4  9f850000  addli r11, r1, 0
004cf8  3b8c08fc  bneq r17, zero, -1280
004cfc  5b60ffff  j -1280
004d00  ab00c07f  lui r1, 523264
004d04  37ed08fc  beq r17, zero, -1192
004d08  9f880000  addli r17, r1, 0
004d0c  3b5d05fc  bneq r10, zero, -1196
004d10  db6affff  j -1196
004d14  ab00c07f  lui r1, 523264
004d18  b73e05fc  beq r10, zero, -1108
004d1c  1f850000  addli r10, r1, 0
004d20  bb2e07fc  bneq r14, zero, -1112
004d24  5b75ffff  j -1112
004d28  ab00c07f  lui r1, 523264
004d2c  371007fe  beq r14, zero, -1020
004d30  1f870000  addli r14, r1, 0
004d34  3b8003fe  bneq r7, zero, -1024
004d38  5b80ffff  j -1024
004d3c  ab00c07f  lui r1, 523264
004d40  37e103fe  beq r7, zero, -936
004d44  9f830000  addli r7, r1, 0
004d48  3b5103fe  bneq r6, zero, -940
004d4c  db8affff  j -940
004d50  ab00c07f  lui r1, 523264
004d54  63441fd1  loadli.w r8,  -6004(r30)
004d58  b73203fe  beq r6, zero, -852
004d5c  1f830000  addli r6, r1, 0
004d60  bba202fe  bneq r5, zero, -856
004d64  5b95ffff  j -856
004d68  ab00c07f  lui r1, 523264
004d6c  378402fe  beq r5, zero, -768
004d70  9f820000  addli r5, r1, 0
004d74  bb7301fe  bneq r2, zero, -772
004d78  db9fffff  j -772
004d7c  63068fd9  loadli.w r12,  -4928(r30)
004d80  e300dfd9  loadli.w r1,  -4888(r30)
004d84  e341cfd9  loadli.w r3,  -4892(r30)
004d88  6302cfd9  loadli.w r4,  -4896(r30)
004d8c  e342bfd9  loadli.w r5,  -4900(r30)
004d90  6303bfd9  loadli.w r6,  -4904(r30)
004d94  e343afd9  loadli.w r7,  -4908(r30)
004d98  6304afd9  loadli.w r8,  -4912(r30)
004d9c  e3449fd9  loadli.w r9,  -4916(r30)
004da0  63059fd9  loadli.w r10,  -4920(r30)
004da4  e3458fd9  loadli.w r11,  -4924(r30)
004da8  0b672618  sub.f.rn r14, r12, r2
004dac  63467fd9  loadli.w r12,  -4932(r30)
004db0  8be02018  sub.f.rn r1, r1, r2
004db4  8be12118  sub.f.rn r3, r3, r2
004db8  0b622218  sub.f.rn r4, r4, r2
004dbc  8be22218  sub.f.rn r5, r5, r2
004dc0  0b632318  sub.f.rn r6, r6, r2
004dc4  8be32318  sub.f.rn r7, r7, r2
004dc8  0b642418  sub.f.rn r8, r8, r2
004dcc  8be42418  sub.f.rn r9, r9, r2
004dd0  0b652518  sub.f.rn r10, r10, r2
004dd4  8be52518  sub.f.rn r11, r11, r2
004dd8  8b672618  sub.f.rn r15, r12, r2
004ddc  63067fd9  loadli.w r12,  -4936(r30)
004de0  0b682618  sub.f.rn r16, r12, r2
004de4  63466fd9  loadli.w r12,  -4940(r30)
004de8  8f860000  exp.f.rn r13, r1
004dec  8f800100  exp.f.rn r1, r3
004df0  8f010200  exp.f.rn r3, r4
004df4  0f820200  exp.f.rn r4, r5
004df8  8f820300  exp.f.rn r5, r7
004dfc  0f0a0700  exp.f.rn r20, r14
004e00  8b682618  sub.f.rn r17, r12, r2
004e04  63066fd9  loadli.w r12,  -4944(r30)
004e08  8f8a0700  exp.f.rn r21, r15
004e0c  0b692618  sub.f.rn r18, r12, r2
004e10  63465fd9  loadli.w r12,  -4948(r30)
004e14  9f070200  addli r15, r4, 0
004e18  9f830000  addli r7, r1, 0
004e1c  1f870100  addli r14, r3, 0
004e20  0f020800  exp.f.rn r4, r16
004e24  8b692618  sub.f.rn r19, r12, r2
004e28  0f010300  exp.f.rn r2, r6
004e2c  0f030400  exp.f.rn r6, r8
004e30  0f840400  exp.f.rn r8, r9
004e34  8f040500  exp.f.rn r9, r10
004e38  0f860500  exp.f.rn r12, r11
004e3c  0f050900  exp.f.rn r10, r18
004e40  8f850900  exp.f.rn r11, r19
004e44  1f080100  addli r16, r2, 0
004e48  1f810200  addli r2, r5, 0
004e4c  8f820800  exp.f.rn r5, r17
004e50  e300cfd1  loadli.w r1,  -5920(r30)
004e54  e3417fd7  loadli.w r3,  -5188(r30)
004e58  9f0d0ff0  addli r27, r30, -2048
004e5c  8b903010  add.s r1, r1, r3
004e60  e7021fd2  storeli.w r1, -5848(r30)
004e64  e340bfd1  loadli.w r1,  -5924(r30)
004e68  8b903010  add.s r1, r1, r3
004e6c  67421fd2  storeli.w r1, -5852(r30)
004e70  e300bfd1  loadli.w r1,  -5928(r30)
004e74  8b903010  add.s r1, r1, r3
004e78  67021fd2  storeli.w r1, -5856(r30)
004e7c  e340afd1  loadli.w r1,  -5932(r30)
004e80  8b903010  add.s r1, r1, r3
004e84  e7411fd2  storeli.w r1, -5860(r30)
004e88  e300afd1  loadli.w r1,  -5936(r30)
004e8c  8b903010  add.s r1, r1, r3
004e90  e7011fd2  storeli.w r1, -5864(r30)
004e94  e3409fd1  loadli.w r1,  -5940(r30)
004e98  8b903010  add.s r1, r1, r3
004e9c  67411fd2  storeli.w r1, -5868(r30)
004ea0  e3009fd1  loadli.w r1,  -5944(r30)
004ea4  8b903010  add.s r1, r1, r3
004ea8  67011fd2  storeli.w r1, -5872(r30)
004eac  e3408fd1  loadli.w r1,  -5948(r30)
004eb0  8b903010  add.s r1, r1, r3
004eb4  e7401fd2  storeli.w r1, -5876(r30)
004eb8  e3008fd1  loadli.w r1,  -5952(r30)
004ebc  8b903010  add.s r1, r1, r3
004ec0  e7001fd2  storeli.w r1, -5880(r30)
004ec4  e3407fd1  loadli.w r1,  -5956(r30)
004ec8  8b903010  add.s r1, r1, r3
004ecc  67401fd2  storeli.w r1, -5884(r30)
004ed0  e3007fd1  loadli.w r1,  -5960(r30)
004ed4  8b903010  add.s r1, r1, r3
004ed8  67001fd2  storeli.w r1, -5888(r30)
004edc  e3406fd1  loadli.w r1,  -5964(r30)
004ee0  8b903010  add.s r1, r1, r3
004ee4  e7421fd2  storeli.w r1, -5844(r30)
004ee8  e3006fd1  loadli.w r1,  -5968(r30)
004eec  8b903010  add.s r1, r1, r3
004ef0  67031fd2  storeli.w r1, -5840(r30)
004ef4  e3405fd1  loadli.w r1,  -5972(r30)
004ef8  8b903010  add.s r1, r1, r3
004efc  67431fd2  storeli.w r1, -5836(r30)
004f00  e3005fd1  loadli.w r1,  -5976(r30)
004f04  8b903010  add.s r1, r1, r3
004f08  e7031fd2  storeli.w r1, -5832(r30)
004f0c  e3404fd1  loadli.w r1,  -5980(r30)
004f10  8b903010  add.s r1, r1, r3
004f14  e7431fd2  storeli.w r1, -5828(r30)
004f18  e3402fd1  loadli.w r1,  -5996(r30)
004f1c  8b903010  add.s r1, r1, r3
004f20  67041fd2  storeli.w r1, -5824(r30)
004f24  e3002fd1  loadli.w r1,  -6000(r30)
004f28  8b903010  add.s r1, r1, r3
004f2c  67441fd2  storeli.w r1, -5820(r30)
004f30  e3407fd0  loadli.w r1,  -6084(r30)
004f34  8b903010  add.s r1, r1, r3
004f38  e7041fd2  storeli.w r1, -5816(r30)
004f3c  e3007fd0  loadli.w r1,  -6088(r30)
004f40  8b903010  add.s r1, r1, r3
004f44  e7441fd2  storeli.w r1, -5812(r30)
004f48  e3406fd0  loadli.w r1,  -6092(r30)
004f4c  8b903010  add.s r1, r1, r3
004f50  67051fd2  storeli.w r1, -5808(r30)
004f54  e3006fd0  loadli.w r1,  -6096(r30)
004f58  8b903010  add.s r1, r1, r3
004f5c  67451fd2  storeli.w r1, -5804(r30)
004f60  e3405fd0  loadli.w r1,  -6100(r30)
004f64  8b903010  add.s r1, r1, r3
004f68  e7051fd2  storeli.w r1, -5800(r30)
004f6c  e3005fd0  loadli.w r1,  -6104(r30)
004f70  8b903010  add.s r1, r1, r3
004f74  e7451fd2  storeli.w r1, -5796(r30)
004f78  e3404fd0  loadli.w r1,  -6108(r30)
004f7c  8b903010  add.s r1, r1, r3
004f80  67061fd2  storeli.w r1, -5792(r30)
004f84  e3004fd0  loadli.w r1,  -6112(r30)
004f88  8b903010  add.s r1, r1, r3
004f8c  67461fd2  storeli.w r1, -5788(r30)
004f90  e3403fd0  loadli.w r1,  -6116(r30)
004f94  8b903010  add.s r1, r1, r3
004f98  e7061fd2  storeli.w r1, -5784(r30)
004f9c  e3003fd0  loadli.w r1,  -6120(r30)
004fa0  8b903010  add.s r1, r1, r3
004fa4  e7461fd2  storeli.w r1, -5780(r30)
004fa8  e3402fd0  loadli.w r1,  -6124(r30)
004fac  8b903010  add.s r1, r1, r3
004fb0  67071fd2  storeli.w r1, -5776(r30)
004fb4  e3002fd0  loadli.w r1,  -6128(r30)
004fb8  8b903010  add.s r1, r1, r3
004fbc  67471fd2  storeli.w r1, -5772(r30)
004fc0  e3401fd0  loadli.w r1,  -6132(r30)
004fc4  8b903010  add.s r1, r1, r3
004fc8  e7071fd2  storeli.w r1, -5768(r30)
004fcc  e3001fd0  loadli.w r1,  -6136(r30)
004fd0  8b903010  add.s r1, r1, r3
004fd4  e7471fd2  storeli.w r1, -5764(r30)
004fd8  e3400fd0  loadli.w r1,  -6140(r30)
004fdc  8b903010  add.s r1, r1, r3
004fe0  67081fd2  storeli.w r1, -5760(r30)
004fe4  e3000fd0  loadli.w r1,  -6144(r30)
004fe8  8b903010  add.s r1, r1, r3
004fec  67481fd2  storeli.w r1, -5756(r30)
004ff0  e340ffcf  loadli.w r1,  -6148(r30)
004ff4  8b903010  add.s r1, r1, r3
004ff8  e7081fd2  storeli.w r1, -5752(r30)
004ffc  e300ffcf  loadli.w r1,  -6152(r30)
005000  8b903010  add.s r1, r1, r3
005004  e7481fd2  storeli.w r1, -5748(r30)
005008  e340efcf  loadli.w r1,  -6156(r30)
00500c  8b903010  add.s r1, r1, r3
005010  67091fd2  storeli.w r1, -5744(r30)
005014  e300efcf  loadli.w r1,  -6160(r30)
005018  8b903010  add.s r1, r1, r3
00501c  67491fd2  storeli.w r1, -5740(r30)
005020  e340dfcf  loadli.w r1,  -6164(r30)
005024  8b903010  add.s r1, r1, r3
005028  e7091fd2  storeli.w r1, -5736(r30)
00502c  e300dfcf  loadli.w r1,  -6168(r30)
005030  8b903010  add.s r1, r1, r3
005034  e7491fd2  storeli.w r1, -5732(r30)
005038  e340cfcf  loadli.w r1,  -6172(r30)
00503c  8b903010  add.s r1, r1, r3
005040  670a1fd2  storeli.w r1, -5728(r30)
005044  e300cfcf  loadli.w r1,  -6176(r30)
005048  8b903010  add.s r1, r1, r3
00504c  674a1fd2  storeli.w r1, -5724(r30)
005050  e340bfcf  loadli.w r1,  -6180(r30)
005054  8b903010  add.s r1, r1, r3
005058  e70a1fd2  storeli.w r1, -5720(r30)
00505c  e300bfcf  loadli.w r1,  -6184(r30)
005060  8b903010  add.s r1, r1, r3
005064  e74a1fd2  storeli.w r1, -5716(r30)
005068  e340afcf  loadli.w r1,  -6188(r30)
00506c  8b903010  add.s r1, r1, r3
005070  670b1fd2  storeli.w r1, -5712(r30)
005074  e300afcf  loadli.w r1,  -6192(r30)
005078  8b903010  add.s r1, r1, r3
00507c  674b1fd2  storeli.w r1, -5708(r30)
005080  e3409fcf  loadli.w r1,  -6196(r30)
005084  8b903010  add.s r1, r1, r3
005088  e70b1fd2  storeli.w r1, -5704(r30)
00508c  e3009fcf  loadli.w r1,  -6200(r30)
005090  8b903010  add.s r1, r1, r3
005094  e74b1fd2  storeli.w r1, -5700(r30)
005098  e3408fcf  loadli.w r1,  -6204(r30)
00509c  8b903010  add.s r1, r1, r3
0050a0  670c1fd2  storeli.w r1, -5696(r30)
0050a4  e3008fcf  loadli.w r1,  -6208(r30)
0050a8  8b903010  add.s r1, r1, r3
0050ac  674c1fd2  storeli.w r1, -5692(r30)
0050b0  e3407fcf  loadli.w r1,  -6212(r30)
0050b4  8b903010  add.s r1, r1, r3
0050b8  e70c1fd2  storeli.w r1, -5688(r30)
0050bc  e3007fcf  loadli.w r1,  -6216(r30)
0050c0  8b903010  add.s r1, r1, r3
0050c4  e74c1fd2  storeli.w r1, -5684(r30)
0050c8  e3406fcf  loadli.w r1,  -6220(r30)
0050cc  8b903010  add.s r1, r1, r3
0050d0  670d1fd2  storeli.w r1, -5680(r30)
0050d4  e3006fcf  loadli.w r1,  -6224(r30)
0050d8  8b903010  add.s r1, r1, r3
0050dc  674d1fd2  storeli.w r1, -5676(r30)
0050e0  e3405fcf  loadli.w r1,  -6228(r30)
0050e4  8b903010  add.s r1, r1, r3
0050e8  e70d1fd2  storeli.w r1, -5672(r30)
0050ec  e3005fcf  loadli.w r1,  -6232(r30)
0050f0  8b903010  add.s r1, r1, r3
0050f4  e74d1fd2  storeli.w r1, -5668(r30)
0050f8  e3404fcf  loadli.w r1,  -6236(r30)
0050fc  8b903010  add.s r1, r1, r3
005100  670e1fd2  storeli.w r1, -5664(r30)
005104  e3004fcf  loadli.w r1,  -6240(r30)
005108  8b903010  add.s r1, r1, r3
00510c  674e1fd2  storeli.w r1, -5660(r30)
005110  e3403fcf  loadli.w r1,  -6244(r30)
005114  8b903010  add.s r1, r1, r3
005118  e70e1fd2  storeli.w r1, -5656(r30)
00511c  e3003fcf  loadli.w r1,  -6248(r30)
005120  8b903010  add.s r1, r1, r3
005124  e74e1fd2  storeli.w r1, -5652(r30)
005128  e3402fcf  loadli.w r1,  -6252(r30)
00512c  8b903010  add.s r1, r1, r3
005130  670f1fd2  storeli.w r1, -5648(r30)
005134  e3002fcf  loadli.w r1,  -6256(r30)
005138  8b903010  add.s r1, r1, r3
00513c  674f1fd2  storeli.w r1, -5644(r30)
005140  e3401fcf  loadli.w r1,  -6260(r30)
005144  8b903010  add.s r1, r1, r3
005148  e70f1fd2  storeli.w r1, -5640(r30)
00514c  e3001fcf  loadli.w r1,  -6264(r30)
005150  8b903010  add.s r1, r1, r3
005154  e74f1fd2  storeli.w r1, -5636(r30)
005158  e3400fcf  loadli.w r1,  -6268(r30)
00515c  8b903010  add.s r1, r1, r3
005160  67001fd4  storeli.w r1, -5632(r30)
005164  e3000fcf  loadli.w r1,  -6272(r30)
005168  8b903010  add.s r1, r1, r3
00516c  67401fd4  storeli.w r1, -5628(r30)
005170  e340ffce  loadli.w r1,  -6276(r30)
005174  8b903010  add.s r1, r1, r3
005178  e7001fd4  storeli.w r1, -5624(r30)
00517c  e300ffce  loadli.w r1,  -6280(r30)
005180  8b903010  add.s r1, r1, r3
005184  e7401fd4  storeli.w r1, -5620(r30)
005188  e340efce  loadli.w r1,  -6284(r30)
00518c  8b903010  add.s r1, r1, r3
005190  67011fd4  storeli.w r1, -5616(r30)
005194  e300efce  loadli.w r1,  -6288(r30)
005198  8b903010  add.s r1, r1, r3
00519c  67411fd4  storeli.w r1, -5612(r30)
0051a0  e340dfce  loadli.w r1,  -6292(r30)
0051a4  8b903010  add.s r1, r1, r3
0051a8  e7011fd4  storeli.w r1, -5608(r30)
0051ac  e300dfce  loadli.w r1,  -6296(r30)
0051b0  8b903010  add.s r1, r1, r3
0051b4  e7411fd4  storeli.w r1, -5604(r30)
0051b8  e340cfce  loadli.w r1,  -6300(r30)
0051bc  8b903010  add.s r1, r1, r3
0051c0  67021fd4  storeli.w r1, -5600(r30)
0051c4  e300cfce  loadli.w r1,  -6304(r30)
0051c8  8b903010  add.s r1, r1, r3
0051cc  67421fd4  storeli.w r1, -5596(r30)
0051d0  e340bfce  loadli.w r1,  -6308(r30)
0051d4  8b903010  add.s r1, r1, r3
0051d8  e7021fd4  storeli.w r1, -5592(r30)
0051dc  e300bfce  loadli.w r1,  -6312(r30)
0051e0  8b903010  add.s r1, r1, r3
0051e4  e7421fd4  storeli.w r1, -5588(r30)
0051e8  e340afce  loadli.w r1,  -6316(r30)
0051ec  8b903010  add.s r1, r1, r3
0051f0  67031fd4  storeli.w r1, -5584(r30)
0051f4  e300afce  loadli.w r1,  -6320(r30)
0051f8  8b903010  add.s r1, r1, r3
0051fc  67431fd4  storeli.w r1, -5580(r30)
005200  e3409fce  loadli.w r1,  -6324(r30)
005204  8b903010  add.s r1, r1, r3
005208  e7031fd4  storeli.w r1, -5576(r30)
00520c  e3009fce  loadli.w r1,  -6328(r30)
005210  8b903010  add.s r1, r1, r3
005214  e7431fd4  storeli.w r1, -5572(r30)
005218  e3408fce  loadli.w r1,  -6332(r30)
00521c  8b903010  add.s r1, r1, r3
005220  67041fd4  storeli.w r1, -5568(r30)
005224  e3008fce  loadli.w r1,  -6336(r30)
005228  8b903010  add.s r1, r1, r3
00522c  67441fd4  storeli.w r1, -5564(r30)
005230  e3407fce  loadli.w r1,  -6340(r30)
005234  8b903010  add.s r1, r1, r3
005238  e7041fd4  storeli.w r1, -5560(r30)
00523c  e3007fce  loadli.w r1,  -6344(r30)
005240  8b903010  add.s r1, r1, r3
005244  e7441fd4  storeli.w r1, -5556(r30)
005248  e3406fce  loadli.w r1,  -6348(r30)
00524c  8b903010  add.s r1, r1, r3
005250  67051fd4  storeli.w r1, -5552(r30)
005254  e3006fce  loadli.w r1,  -6352(r30)
005258  8b903010  add.s r1, r1, r3
00525c  67451fd4  storeli.w r1, -5548(r30)
005260  e3405fce  loadli.w r1,  -6356(r30)
005264  8b903010  add.s r1, r1, r3
005268  e7051fd4  storeli.w r1, -5544(r30)
00526c  e3005fce  loadli.w r1,  -6360(r30)
005270  8b903010  add.s r1, r1, r3
005274  e7451fd4  storeli.w r1, -5540(r30)
005278  e3404fce  loadli.w r1,  -6364(r30)
00527c  8b903010  add.s r1, r1, r3
005280  67061fd4  storeli.w r1, -5536(r30)
005284  e3004fce  loadli.w r1,  -6368(r30)
005288  8b903010  add.s r1, r1, r3
00528c  67461fd4  storeli.w r1, -5532(r30)
005290  e3403fce  loadli.w r1,  -6372(r30)
005294  8b903010  add.s r1, r1, r3
005298  e7061fd4  storeli.w r1, -5528(r30)
00529c  e3003fce  loadli.w r1,  -6376(r30)
0052a0  8b903010  add.s r1, r1, r3
0052a4  e7461fd4  storeli.w r1, -5524(r30)
0052a8  e3402fce  loadli.w r1,  -6380(r30)
0052ac  8b903010  add.s r1, r1, r3
0052b0  67071fd4  storeli.w r1, -5520(r30)
0052b4  e3002fce  loadli.w r1,  -6384(r30)
0052b8  8b903010  add.s r1, r1, r3
0052bc  67471fd4  storeli.w r1, -5516(r30)
0052c0  e3401fce  loadli.w r1,  -6388(r30)
0052c4  8b903010  add.s r1, r1, r3
0052c8  e7071fd4  storeli.w r1, -5512(r30)
0052cc  e3001fce  loadli.w r1,  -6392(r30)
0052d0  8b903010  add.s r1, r1, r3
0052d4  e7471fd4  storeli.w r1, -5508(r30)
0052d8  e3400fce  loadli.w r1,  -6396(r30)
0052dc  8b903010  add.s r1, r1, r3
0052e0  67081fd4  storeli.w r1, -5504(r30)
0052e4  e3000fce  loadli.w r1,  -6400(r30)
0052e8  8b903010  add.s r1, r1, r3
0052ec  67481fd4  storeli.w r1, -5500(r30)
0052f0  e340ffcd  loadli.w r1,  -6404(r30)
0052f4  8b903010  add.s r1, r1, r3
0052f8  e7081fd4  storeli.w r1, -5496(r30)
0052fc  e300ffcd  loadli.w r1,  -6408(r30)
005300  8b903010  add.s r1, r1, r3
005304  e7481fd4  storeli.w r1, -5492(r30)
005308  e340efcd  loadli.w r1,  -6412(r30)
00530c  8b903010  add.s r1, r1, r3
005310  67091fd4  storeli.w r1, -5488(r30)
005314  e300efcd  loadli.w r1,  -6416(r30)
005318  8b903010  add.s r1, r1, r3
00531c  67491fd4  storeli.w r1, -5484(r30)
005320  e340dfcd  loadli.w r1,  -6420(r30)
005324  8b903010  add.s r1, r1, r3
005328  e7091fd4  storeli.w r1, -5480(r30)
00532c  e300dfcd  loadli.w r1,  -6424(r30)
005330  8b903010  add.s r1, r1, r3
005334  e7491fd4  storeli.w r1, -5476(r30)
005338  e340cfcd  loadli.w r1,  -6428(r30)
00533c  8b903010  add.s r1, r1, r3
005340  670a1fd4  storeli.w r1, -5472(r30)
005344  e300cfcd  loadli.w r1,  -6432(r30)
005348  8b903010  add.s r1, r1, r3
00534c  674a1fd4  storeli.w r1, -5468(r30)
005350  e340bfcd  loadli.w r1,  -6436(r30)
005354  8b903010  add.s r1, r1, r3
005358  e70a1fd4  storeli.w r1, -5464(r30)
00535c  e300bfcd  loadli.w r1,  -6440(r30)
005360  8b903010  add.s r1, r1, r3
005364  e74a1fd4  storeli.w r1, -5460(r30)
005368  e340afcd  loadli.w r1,  -6444(r30)
00536c  8b903010  add.s r1, r1, r3
005370  670b1fd4  storeli.w r1, -5456(r30)
005374  e300afcd  loadli.w r1,  -6448(r30)
005378  8b903010  add.s r1, r1, r3
00537c  674b1fd4  storeli.w r1, -5452(r30)
005380  e3409fcd  loadli.w r1,  -6452(r30)
005384  8b903010  add.s r1, r1, r3
005388  e70b1fd4  storeli.w r1, -5448(r30)
00538c  e3009fcd  loadli.w r1,  -6456(r30)
005390  8b903010  add.s r1, r1, r3
005394  e74b1fd4  storeli.w r1, -5444(r30)
005398  e3408fcd  loadli.w r1,  -6460(r30)
00539c  8b903010  add.s r1, r1, r3
0053a0  670c1fd4  storeli.w r1, -5440(r30)
0053a4  e3008fcd  loadli.w r1,  -6464(r30)
0053a8  8b903010  add.s r1, r1, r3
0053ac  674c1fd4  storeli.w r1, -5436(r30)
0053b0  e3407fcd  loadli.w r1,  -6468(r30)
0053b4  8b903010  add.s r1, r1, r3
0053b8  e70c1fd4  storeli.w r1, -5432(r30)
0053bc  e3007fcd  loadli.w r1,  -6472(r30)
0053c0  8b903010  add.s r1, r1, r3
0053c4  e74c1fd4  storeli.w r1, -5428(r30)
0053c8  e3406fcd  loadli.w r1,  -6476(r30)
0053cc  8b903010  add.s r1, r1, r3
0053d0  670d1fd4  storeli.w r1, -5424(r30)
0053d4  e3006fcd  loadli.w r1,  -6480(r30)
0053d8  8b903010  add.s r1, r1, r3
0053dc  674d1fd4  storeli.w r1, -5420(r30)
0053e0  e3405fcd  loadli.w r1,  -6484(r30)
0053e4  8b903010  add.s r1, r1, r3
0053e8  e70d1fd4  storeli.w r1, -5416(r30)
0053ec  e3005fcd  loadli.w r1,  -6488(r30)
0053f0  8b903010  add.s r1, r1, r3
0053f4  e74d1fd4  storeli.w r1, -5412(r30)
0053f8  e3404fcd  loadli.w r1,  -6492(r30)
0053fc  8b903010  add.s r1, r1, r3
005400  670e1fd4  storeli.w r1, -5408(r30)
005404  e3004fcd  loadli.w r1,  -6496(r30)
005408  8b903010  add.s r1, r1, r3
00540c  674e1fd4  storeli.w r1, -5404(r30)
005410  e3403fcd  loadli.w r1,  -6500(r30)
005414  8b903010  add.s r1, r1, r3
005418  e70e1fd4  storeli.w r1, -5400(r30)
00541c  e3003fcd  loadli.w r1,  -6504(r30)
005420  8b903010  add.s r1, r1, r3
005424  e74e1fd4  storeli.w r1, -5396(r30)
005428  e3402fcd  loadli.w r1,  -6508(r30)
00542c  8b903010  add.s r1, r1, r3
005430  670f1fd4  storeli.w r1, -5392(r30)
005434  e3002fcd  loadli.w r1,  -6512(r30)
005438  8b903010  add.s r1, r1, r3
00543c  674f1fd4  storeli.w r1, -5388(r30)
005440  e3401fcd  loadli.w r1,  -6516(r30)
005444  8b903010  add.s r1, r1, r3
005448  e70f1fd4  storeli.w r1, -5384(r30)
00544c  e3001fcd  loadli.w r1,  -6520(r30)
005450  8b903010  add.s r1, r1, r3
005454  e74f1fd4  storeli.w r1, -5380(r30)
005458  e3400fcd  loadli.w r1,  -6524(r30)
00545c  8b903010  add.s r1, r1, r3
005460  67001fd6  storeli.w r1, -5376(r30)
005464  e3000fcd  loadli.w r1,  -6528(r30)
005468  8b903010  add.s r1, r1, r3
00546c  67401fd6  storeli.w r1, -5372(r30)
005470  e340ffcc  loadli.w r1,  -6532(r30)
005474  8b903010  add.s r1, r1, r3
005478  e7001fd6  storeli.w r1, -5368(r30)
00547c  e300ffcc  loadli.w r1,  -6536(r30)
005480  8b903010  add.s r1, r1, r3
005484  e7401fd6  storeli.w r1, -5364(r30)
005488  e340efcc  loadli.w r1,  -6540(r30)
00548c  8b903010  add.s r1, r1, r3
005490  67011fd6  storeli.w r1, -5360(r30)
005494  e300efcc  loadli.w r1,  -6544(r30)
005498  8b903010  add.s r1, r1, r3
00549c  67411fd6  storeli.w r1, -5356(r30)
0054a0  e340dfcc  loadli.w r1,  -6548(r30)
0054a4  8b903010  add.s r1, r1, r3
0054a8  e7011fd6  storeli.w r1, -5352(r30)
0054ac  e300dfcc  loadli.w r1,  -6552(r30)
0054b0  8b903010  add.s r1, r1, r3
0054b4  e7411fd6  storeli.w r1, -5348(r30)
0054b8  e340cfcc  loadli.w r1,  -6556(r30)
0054bc  8b903010  add.s r1, r1, r3
0054c0  67021fd6  storeli.w r1, -5344(r30)
0054c4  e300cfcc  loadli.w r1,  -6560(r30)
0054c8  8b903010  add.s r1, r1, r3
0054cc  67421fd6  storeli.w r1, -5340(r30)
0054d0  e340bfcc  loadli.w r1,  -6564(r30)
0054d4  8b903010  add.s r1, r1, r3
0054d8  e7021fd6  storeli.w r1, -5336(r30)
0054dc  e300bfcc  loadli.w r1,  -6568(r30)
0054e0  8b903010  add.s r1, r1, r3
0054e4  e7421fd6  storeli.w r1, -5332(r30)
0054e8  e340afcc  loadli.w r1,  -6572(r30)
0054ec  8b903010  add.s r1, r1, r3
0054f0  67031fd6  storeli.w r1, -5328(r30)
0054f4  e300afcc  loadli.w r1,  -6576(r30)
0054f8  8b903010  add.s r1, r1, r3
0054fc  67431fd6  storeli.w r1, -5324(r30)
005500  e3409fcc  loadli.w r1,  -6580(r30)
005504  8b903010  add.s r1, r1, r3
005508  e7031fd6  storeli.w r1, -5320(r30)
00550c  e3009fcc  loadli.w r1,  -6584(r30)
005510  8b903010  add.s r1, r1, r3
005514  e7431fd6  storeli.w r1, -5316(r30)
005518  e3408fcc  loadli.w r1,  -6588(r30)
00551c  8b903010  add.s r1, r1, r3
005520  67041fd6  storeli.w r1, -5312(r30)
005524  e3008fcc  loadli.w r1,  -6592(r30)
005528  8b903010  add.s r1, r1, r3
00552c  67441fd6  storeli.w r1, -5308(r30)
005530  e3407fcc  loadli.w r1,  -6596(r30)
005534  8b903010  add.s r1, r1, r3
005538  e7041fd6  storeli.w r1, -5304(r30)
00553c  e3007fcc  loadli.w r1,  -6600(r30)
005540  8b903010  add.s r1, r1, r3
005544  e7441fd6  storeli.w r1, -5300(r30)
005548  e3406fcc  loadli.w r1,  -6604(r30)
00554c  8b903010  add.s r1, r1, r3
005550  67051fd6  storeli.w r1, -5296(r30)
005554  e3006fcc  loadli.w r1,  -6608(r30)
005558  8b903010  add.s r1, r1, r3
00555c  67451fd6  storeli.w r1, -5292(r30)
005560  e3405fcc  loadli.w r1,  -6612(r30)
005564  8b903010  add.s r1, r1, r3
005568  e7051fd6  storeli.w r1, -5288(r30)
00556c  e3005fcc  loadli.w r1,  -6616(r30)
005570  8b903010  add.s r1, r1, r3
005574  e7451fd6  storeli.w r1, -5284(r30)
005578  e3404fcc  loadli.w r1,  -6620(r30)
00557c  8b903010  add.s r1, r1, r3
005580  67061fd6  storeli.w r1, -5280(r30)
005584  e3004fcc  loadli.w r1,  -6624(r30)
005588  8b903010  add.s r1, r1, r3
00558c  67461fd6  storeli.w r1, -5276(r30)
005590  e3403fcc  loadli.w r1,  -6628(r30)
005594  8b903010  add.s r1, r1, r3
005598  e7061fd6  storeli.w r1, -5272(r30)
00559c  e3003fcc  loadli.w r1,  -6632(r30)
0055a0  8b903010  add.s r1, r1, r3
0055a4  e7461fd6  storeli.w r1, -5268(r30)
0055a8  e3402fcc  loadli.w r1,  -6636(r30)
0055ac  8b903010  add.s r1, r1, r3
0055b0  67071fd6  storeli.w r1, -5264(r30)
0055b4  e3002fcc  loadli.w r1,  -6640(r30)
0055b8  8b903010  add.s r1, r1, r3
0055bc  67471fd6  storeli.w r1, -5260(r30)
0055c0  e3401fcc  loadli.w r1,  -6644(r30)
0055c4  8b903010  add.s r1, r1, r3
0055c8  e7071fd6  storeli.w r1, -5256(r30)
0055cc  e3001fcc  loadli.w r1,  -6648(r30)
0055d0  8b903010  add.s r1, r1, r3
0055d4  e7471fd6  storeli.w r1, -5252(r30)
0055d8  e3400fcc  loadli.w r1,  -6652(r30)
0055dc  8b903010  add.s r1, r1, r3
0055e0  67081fd6  storeli.w r1, -5248(r30)
0055e4  e3000fcc  loadli.w r1,  -6656(r30)
0055e8  8b903010  add.s r1, r1, r3
0055ec  67481fd6  storeli.w r1, -5244(r30)
0055f0  e340ffcb  loadli.w r1,  -6660(r30)
0055f4  8b903010  add.s r1, r1, r3
0055f8  e7081fd6  storeli.w r1, -5240(r30)
0055fc  e300ffcb  loadli.w r1,  -6664(r30)
005600  8b903010  add.s r1, r1, r3
005604  e7481fd6  storeli.w r1, -5236(r30)
005608  e340efcb  loadli.w r1,  -6668(r30)
00560c  8b903010  add.s r1, r1, r3
005610  67091fd6  storeli.w r1, -5232(r30)
005614  e300efcb  loadli.w r1,  -6672(r30)
005618  8b903010  add.s r1, r1, r3
00561c  67491fd6  storeli.w r1, -5228(r30)
005620  e340dfcb  loadli.w r1,  -6676(r30)
005624  8b903010  add.s r1, r1, r3
005628  e7091fd6  storeli.w r1, -5224(r30)
00562c  e300dfcb  loadli.w r1,  -6680(r30)
005630  8b903010  add.s r1, r1, r3
005634  e7491fd6  storeli.w r1, -5220(r30)
005638  e340cfcb  loadli.w r1,  -6684(r30)
00563c  8b903010  add.s r1, r1, r3
005640  670a1fd6  storeli.w r1, -5216(r30)
005644  e300cfcb  loadli.w r1,  -6688(r30)
005648  8b903010  add.s r1, r1, r3
00564c  674a1fd6  storeli.w r1, -5212(r30)
005650  e340bfcb  loadli.w r1,  -6692(r30)
005654  8b903010  add.s r1, r1, r3
005658  e70a1fd6  storeli.w r1, -5208(r30)
00565c  e300bfcb  loadli.w r1,  -6696(r30)
005660  8b903010  add.s r1, r1, r3
005664  e74a1fd6  storeli.w r1, -5204(r30)
005668  e340afcb  loadli.w r1,  -6700(r30)
00566c  8b903010  add.s r1, r1, r3
005670  670b1fd6  storeli.w r1, -5200(r30)
005674  e300afcb  loadli.w r1,  -6704(r30)
005678  8b903010  add.s r1, r1, r3
00567c  674b1fd6  storeli.w r1, -5196(r30)
005680  e3409fcb  loadli.w r1,  -6708(r30)
005684  8b903010  add.s r1, r1, r3
005688  e70b1fd6  storeli.w r1, -5192(r30)
00568c  e3009fcb  loadli.w r1,  -6712(r30)
005690  8b903010  add.s r1, r1, r3
005694  670c1fd6  storeli.w r1, -5184(r30)
005698  e3408fcb  loadli.w r1,  -6716(r30)
00569c  8b903010  add.s r1, r1, r3
0056a0  674c1fd6  storeli.w r1, -5180(r30)
0056a4  e3008fcb  loadli.w r1,  -6720(r30)
0056a8  8b903010  add.s r1, r1, r3
0056ac  e70c1fd6  storeli.w r1, -5176(r30)
0056b0  e3407fcb  loadli.w r1,  -6724(r30)
0056b4  8b903010  add.s r1, r1, r3
0056b8  e74c1fd6  storeli.w r1, -5172(r30)
0056bc  e3007fcb  loadli.w r1,  -6728(r30)
0056c0  8b903010  add.s r1, r1, r3
0056c4  670d1fd6  storeli.w r1, -5168(r30)
0056c8  e3406fcb  loadli.w r1,  -6732(r30)
0056cc  8b903010  add.s r1, r1, r3
0056d0  674d1fd6  storeli.w r1, -5164(r30)
0056d4  e3006fcb  loadli.w r1,  -6736(r30)
0056d8  8b903010  add.s r1, r1, r3
0056dc  e70d1fd6  storeli.w r1, -5160(r30)
0056e0  e3405fcb  loadli.w r1,  -6740(r30)
0056e4  8b903010  add.s r1, r1, r3
0056e8  e74d1fd6  storeli.w r1, -5156(r30)
0056ec  e3005fcb  loadli.w r1,  -6744(r30)
0056f0  8b903010  add.s r1, r1, r3
0056f4  670e1fd6  storeli.w r1, -5152(r30)
0056f8  e3404fcb  loadli.w r1,  -6748(r30)
0056fc  8b903010  add.s r1, r1, r3
005700  674e1fd6  storeli.w r1, -5148(r30)
005704  e3004fcb  loadli.w r1,  -6752(r30)
005708  8b903010  add.s r1, r1, r3
00570c  e70e1fd6  storeli.w r1, -5144(r30)
005710  e3403fcb  loadli.w r1,  -6756(r30)
005714  8b903010  add.s r1, r1, r3
005718  e74e1fd6  storeli.w r1, -5140(r30)
00571c  e3003fcb  loadli.w r1,  -6760(r30)
005720  8b903010  add.s r1, r1, r3
005724  670f1fd6  storeli.w r1, -5136(r30)
005728  e3402fcb  loadli.w r1,  -6764(r30)
00572c  8b903010  add.s r1, r1, r3
005730  674f1fd6  storeli.w r1, -5132(r30)
005734  e3002fcb  loadli.w r1,  -6768(r30)
005738  8b903010  add.s r1, r1, r3
00573c  e70f1fd6  storeli.w r1, -5128(r30)
005740  e3401fcb  loadli.w r1,  -6772(r30)
005744  8b903010  add.s r1, r1, r3
005748  e74f1fd6  storeli.w r1, -5124(r30)
00574c  e3001fcb  loadli.w r1,  -6776(r30)
005750  8b903010  add.s r1, r1, r3
005754  67001fd8  storeli.w r1, -5120(r30)
005758  e3400fcb  loadli.w r1,  -6780(r30)
00575c  8b903010  add.s r1, r1, r3
005760  67401fd8  storeli.w r1, -5116(r30)
005764  e3000fcb  loadli.w r1,  -6784(r30)
005768  8b903010  add.s r1, r1, r3
00576c  e7001fd8  storeli.w r1, -5112(r30)
005770  e340ffca  loadli.w r1,  -6788(r30)
005774  8b903010  add.s r1, r1, r3
005778  e7401fd8  storeli.w r1, -5108(r30)
00577c  e300ffca  loadli.w r1,  -6792(r30)
005780  8b903010  add.s r1, r1, r3
005784  67011fd8  storeli.w r1, -5104(r30)
005788  e340efca  loadli.w r1,  -6796(r30)
00578c  8b903010  add.s r1, r1, r3
005790  67411fd8  storeli.w r1, -5100(r30)
005794  e300efca  loadli.w r1,  -6800(r30)
005798  8b903010  add.s r1, r1, r3
00579c  e7011fd8  storeli.w r1, -5096(r30)
0057a0  e340dfca  loadli.w r1,  -6804(r30)
0057a4  8b903010  add.s r1, r1, r3
0057a8  e7411fd8  storeli.w r1, -5092(r30)
0057ac  e300dfca  loadli.w r1,  -6808(r30)
0057b0  8b903010  add.s r1, r1, r3
0057b4  67021fd8  storeli.w r1, -5088(r30)
0057b8  e340cfca  loadli.w r1,  -6812(r30)
0057bc  8b903010  add.s r1, r1, r3
0057c0  67421fd8  storeli.w r1, -5084(r30)
0057c4  e300cfca  loadli.w r1,  -6816(r30)
0057c8  8b903010  add.s r1, r1, r3
0057cc  e7021fd8  storeli.w r1, -5080(r30)
0057d0  e340bfca  loadli.w r1,  -6820(r30)
0057d4  8b903010  add.s r1, r1, r3
0057d8  e7421fd8  storeli.w r1, -5076(r30)
0057dc  e300bfca  loadli.w r1,  -6824(r30)
0057e0  8b903010  add.s r1, r1, r3
0057e4  67031fd8  storeli.w r1, -5072(r30)
0057e8  e340afca  loadli.w r1,  -6828(r30)
0057ec  8b903010  add.s r1, r1, r3
0057f0  67431fd8  storeli.w r1, -5068(r30)
0057f4  e300afca  loadli.w r1,  -6832(r30)
0057f8  8b903010  add.s r1, r1, r3
0057fc  e7031fd8  storeli.w r1, -5064(r30)
005800  e3409fca  loadli.w r1,  -6836(r30)
005804  8b903010  add.s r1, r1, r3
005808  e7431fd8  storeli.w r1, -5060(r30)
00580c  e3009fca  loadli.w r1,  -6840(r30)
005810  8b903010  add.s r1, r1, r3
005814  67041fd8  storeli.w r1, -5056(r30)
005818  e3408fca  loadli.w r1,  -6844(r30)
00581c  8b903010  add.s r1, r1, r3
005820  67441fd8  storeli.w r1, -5052(r30)
005824  e3008fca  loadli.w r1,  -6848(r30)
005828  8b903010  add.s r1, r1, r3
00582c  e7041fd8  storeli.w r1, -5048(r30)
005830  e3407fca  loadli.w r1,  -6852(r30)
005834  8b903010  add.s r1, r1, r3
005838  e7441fd8  storeli.w r1, -5044(r30)
00583c  e3007fca  loadli.w r1,  -6856(r30)
005840  8b903010  add.s r1, r1, r3
005844  67051fd8  storeli.w r1, -5040(r30)
005848  e3406fca  loadli.w r1,  -6860(r30)
00584c  8b903010  add.s r1, r1, r3
005850  67451fd8  storeli.w r1, -5036(r30)
005854  e3006fca  loadli.w r1,  -6864(r30)
005858  8b903010  add.s r1, r1, r3
00585c  e7051fd8  storeli.w r1, -5032(r30)
005860  e3405fca  loadli.w r1,  -6868(r30)
005864  8b903010  add.s r1, r1, r3
005868  e7451fd8  storeli.w r1, -5028(r30)
00586c  e3005fca  loadli.w r1,  -6872(r30)
005870  8b903010  add.s r1, r1, r3
005874  67061fd8  storeli.w r1, -5024(r30)
005878  e3404fca  loadli.w r1,  -6876(r30)
00587c  8b903010  add.s r1, r1, r3
005880  67461fd8  storeli.w r1, -5020(r30)
005884  e3004fca  loadli.w r1,  -6880(r30)
005888  8b903010  add.s r1, r1, r3
00588c  e7061fd8  storeli.w r1, -5016(r30)
005890  e3403fca  loadli.w r1,  -6884(r30)
005894  8b903010  add.s r1, r1, r3
005898  e7461fd8  storeli.w r1, -5012(r30)
00589c  e3003fca  loadli.w r1,  -6888(r30)
0058a0  8b903010  add.s r1, r1, r3
0058a4  67071fd8  storeli.w r1, -5008(r30)
0058a8  e3402fca  loadli.w r1,  -6892(r30)
0058ac  8b903010  add.s r1, r1, r3
0058b0  67471fd8  storeli.w r1, -5004(r30)
0058b4  e3002fca  loadli.w r1,  -6896(r30)
0058b8  8b903010  add.s r1, r1, r3
0058bc  e7071fd8  storeli.w r1, -5000(r30)
0058c0  e3401fca  loadli.w r1,  -6900(r30)
0058c4  8b903010  add.s r1, r1, r3
0058c8  e7471fd8  storeli.w r1, -4996(r30)
0058cc  e3001fca  loadli.w r1,  -6904(r30)
0058d0  8b903010  add.s r1, r1, r3
0058d4  67081fd8  storeli.w r1, -4992(r30)
0058d8  e3400fca  loadli.w r1,  -6908(r30)
0058dc  8b903010  add.s r1, r1, r3
0058e0  67481fd8  storeli.w r1, -4988(r30)
0058e4  e3000fca  loadli.w r1,  -6912(r30)
0058e8  8b903010  add.s r1, r1, r3
0058ec  e7081fd8  storeli.w r1, -4984(r30)
0058f0  e340ffc9  loadli.w r1,  -6916(r30)
0058f4  8b903010  add.s r1, r1, r3
0058f8  e7481fd8  storeli.w r1, -4980(r30)
0058fc  e300ffc9  loadli.w r1,  -6920(r30)
005900  8b903010  add.s r1, r1, r3
005904  67091fd8  storeli.w r1, -4976(r30)
005908  e340efc9  loadli.w r1,  -6924(r30)
00590c  8b903010  add.s r1, r1, r3
005910  67491fd8  storeli.w r1, -4972(r30)
005914  e300efc9  loadli.w r1,  -6928(r30)
005918  8b903010  add.s r1, r1, r3
00591c  e7091fd8  storeli.w r1, -4968(r30)
005920  e340dfc9  loadli.w r1,  -6932(r30)
005924  8b903010  add.s r1, r1, r3
005928  e7491fd8  storeli.w r1, -4964(r30)
00592c  e300dfc9  loadli.w r1,  -6936(r30)
005930  8b903010  add.s r1, r1, r3
005934  670a1fd8  storeli.w r1, -4960(r30)
005938  e340cfc9  loadli.w r1,  -6940(r30)
00593c  8b903010  add.s r1, r1, r3
005940  674a1fd8  storeli.w r1, -4956(r30)
005944  e300cfc9  loadli.w r1,  -6944(r30)
005948  8b903010  add.s r1, r1, r3
00594c  e70a1fd8  storeli.w r1, -4952(r30)
005950  e340bfc9  loadli.w r1,  -6948(r30)
005954  8b903010  add.s r1, r1, r3
005958  e74a1fd8  storeli.w r1, -4948(r30)
00595c  e300bfc9  loadli.w r1,  -6952(r30)
005960  8b903010  add.s r1, r1, r3
005964  670b1fd8  storeli.w r1, -4944(r30)
005968  e340afc9  loadli.w r1,  -6956(r30)
00596c  8b903010  add.s r1, r1, r3
005970  674b1fd8  storeli.w r1, -4940(r30)
005974  e300afc9  loadli.w r1,  -6960(r30)
005978  8b903010  add.s r1, r1, r3
00597c  e70b1fd8  storeli.w r1, -4936(r30)
005980  e3409fc9  loadli.w r1,  -6964(r30)
005984  8b903010  add.s r1, r1, r3
005988  e74b1fd8  storeli.w r1, -4932(r30)
00598c  e3009fc9  loadli.w r1,  -6968(r30)
005990  8b903010  add.s r1, r1, r3
005994  670c1fd8  storeli.w r1, -4928(r30)
005998  e3408fc9  loadli.w r1,  -6972(r30)
00599c  8b903010  add.s r1, r1, r3
0059a0  674c1fd8  storeli.w r1, -4924(r30)
0059a4  e3008fc9  loadli.w r1,  -6976(r30)
0059a8  8b903010  add.s r1, r1, r3
0059ac  e70c1fd8  storeli.w r1, -4920(r30)
0059b0  e3407fc9  loadli.w r1,  -6980(r30)
0059b4  8b903010  add.s r1, r1, r3
0059b8  e74c1fd8  storeli.w r1, -4916(r30)
0059bc  e3007fc9  loadli.w r1,  -6984(r30)
0059c0  8b903010  add.s r1, r1, r3
0059c4  670d1fd8  storeli.w r1, -4912(r30)
0059c8  e3406fc9  loadli.w r1,  -6988(r30)
0059cc  8b903010  add.s r1, r1, r3
0059d0  674d1fd8  storeli.w r1, -4908(r30)
0059d4  e3006fc9  loadli.w r1,  -6992(r30)
0059d8  8b903010  add.s r1, r1, r3
0059dc  e70d1fd8  storeli.w r1, -4904(r30)
0059e0  e3405fc9  loadli.w r1,  -6996(r30)
0059e4  8b903010  add.s r1, r1, r3
0059e8  670e1fd8  storeli.w r1, -4896(r30)
0059ec  e3005fc9  loadli.w r1,  -7000(r30)
0059f0  8b903010  add.s r1, r1, r3
0059f4  e74d1fd8  storeli.w r1, -4900(r30)
0059f8  e3404fc9  loadli.w r1,  -7004(r30)
0059fc  8b903010  add.s r1, r1, r3
005a00  674e1fd8  storeli.w r1, -4892(r30)
005a04  e3004fc9  loadli.w r1,  -7008(r30)
005a08  8b903010  add.s r1, r1, r3
005a0c  e70e1fd8  storeli.w r1, -4888(r30)
005a10  e3401fc9  loadli.w r1,  -7028(r30)
005a14  8b903010  add.s r1, r1, r3
005a18  67021fda  storeli.w r1, -4832(r30)
005a1c  e3002fc9  loadli.w r1,  -7024(r30)
005a20  8b903010  add.s r1, r1, r3
005a24  67421fda  storeli.w r1, -4828(r30)
005a28  e3402fc9  loadli.w r1,  -7020(r30)
005a2c  8b903010  add.s r1, r1, r3
005a30  e7021fda  storeli.w r1, -4824(r30)
005a34  e3003fc9  loadli.w r1,  -7016(r30)
005a38  8b903010  add.s r1, r1, r3
005a3c  e7421fda  storeli.w r1, -4820(r30)
005a40  e3403fc9  loadli.w r1,  -7012(r30)
005a44  8b903010  add.s r1, r1, r3
005a48  9f018000  addli r3, zero, 64
005a4c  67031fda  storeli.w r1, -4816(r30)
005a50  5b190000  j 200
005a54  9f000000  addli r1, zero, 0
005a58  9f010000  addli r3, zero, 0
005a5c  1f060000  addli r12, zero, 0
005a60  9f040000  addli r9, zero, 0
005a64  9f080000  addli r17, zero, 0
005a68  1f090000  addli r18, zero, 0
005a6c  9f090000  addli r19, zero, 0
005a70  1f0a0000  addli r20, zero, 0
005a74  9f0a0000  addli r21, zero, 0
005a78  1f0b0000  addli r22, zero, 0
005a7c  9f0b0000  addli r23, zero, 0
005a80  9f0c0000  addli r25, zero, 0
005a84  1f0d0000  addli r26, zero, 0
005a88  9f0d0000  addli r27, zero, 0
005a8c  1f050000  addli r10, zero, 0
005a90  9f050000  addli r11, zero, 0
005a94  8be61610  add.f.rn r13, r13, r1
005a98  e3000fdb  loadli.w r1,  -4736(r30)
005a9c  63048fde  loadli.w r8,  -4288(r30)
005aa0  8be79710  add.f.rn r15, r15, r9
005aa4  e3040fde  loadli.w r9,  -4352(r30)
005aa8  63030fdf  loadli.w r6,  -4224(r30)
005aac  e3028fdb  loadli.w r5,  -4672(r30)
005ab0  63020fdc  loadli.w r4,  -4608(r30)
005ab4  0b67c710  add.f.rn r14, r14, r12
005ab8  63068fdd  loadli.w r12,  -4416(r30)
005abc  8be33310  add.f.rn r7, r7, r3
005ac0  0b681811  add.f.rn r16, r16, r17
005ac4  0b612111  add.f.rn r2, r2, r18
005ac8  e3417fda  loadli.w r3,  -4804(r30)
005acc  8be0a010  add.f.rn r1, r1, r10
005ad0  0b644411  add.f.rn r8, r8, r20
005ad4  630a0fdd  loadli.w r20,  -4480(r30)
005ad8  8be45411  add.f.rn r9, r9, r21
005adc  e30a8fdc  loadli.w r21,  -4544(r30)
005ae0  8be2b211  add.f.rn r5, r5, r27
005ae4  0b633311  add.f.rn r6, r6, r19
005ae8  0b666611  add.f.rn r12, r12, r22
005aec  0b62a211  add.f.rn r4, r4, r26
005af0  9f818100  addli r3, r3, 64
005af4  9f0d0ff0  addli r27, r30, -2048
005af8  0b6a7a11  add.f.rn r20, r20, r23
005afc  8bea9a11  add.f.rn r21, r21, r25
005b00  1f850000  addli r10, r1, 0
005b04  e3008fda  loadli.w r1,  -4800(r30)
005b08  8be0b010  add.f.rn r1, r1, r11
005b0c  9f850000  addli r11, r1, 0
005b10  9f000008  addli r1, zero, 1024
005b14  37fb1102  beq r3, r1, 1756
005b18  67048fde  storeli.w r8, -4288(r30)
005b1c  0b943d10  add.s r8, r27, r3
005b20  67009fde  storeli.w r9, -4352(r30)
005b24  92309002  vadd.s.mz vr1{mr1}, zero, vr9
005b28  670ccfdc  storeli.w r12, -4416(r30)
005b2c  1f160000  addli r12, zero, 1
005b30  6708afda  storeli.w r10, -4736(r30)
005b34  6704bfda  storeli.w r11, -4800(r30)
005b38  67004fdc  storeli.w r4, -4608(r30)
005b3c  67045fdd  storeli.w r21, -4544(r30)
005b40  67084fdd  storeli.w r20, -4480(r30)
005b44  1f820100  addli r4, r3, 0
005b48  12319002  vadd.s.mz vr2{mr1}, zero, vr9
005b4c  eb340400  load.hu r9, 0(r8)
005b50  6b352400  load.hu r10, 2(r8)
005b54  7e0106e0  vmmov mr2, r12
005b58  eb31a401  load.hu r3, 26(r8)
005b5c  eb30c401  load.hu r1, 28(r8)
005b60  eb354400  load.hu r11, 4(r8)
005b64  eb386400  load.hu r17, 6(r8)
005b68  6b398400  load.hu r18, 8(r8)
005b6c  eb39a400  load.hu r19, 10(r8)
005b70  6b3ac400  load.hu r20, 12(r8)
005b74  eb3ae400  load.hu r21, 14(r8)
005b78  6b3b0401  load.hu r22, 16(r8)
005b7c  eb3b2401  load.hu r23, 18(r8)
005b80  eb3c4401  load.hu r25, 20(r8)
005b84  6b3d6401  load.hu r26, 22(r8)
005b88  eb3d8401  load.hu r27, 24(r8)
005b8c  6b34e401  load.hu r8, 30(r8)
005b90  b3940418  bfloat2float.rn r9, r9
005b94  b3910118  bfloat2float.rn r3, r3
005b98  b3900018  bfloat2float.rn r1, r1
005b9c  eaa01434  vor.u.mh vr1{mr2}, r9, vr1
005ba0  b3140518  bfloat2float.rn r9, r10
005ba4  1f250000  addli r10, zero, 2
005ba8  fe0105e0  vmmov mr3, r10
005bac  1f450000  addli r10, zero, 4
005bb0  eaa01436  vor.u.mh vr1{mr3}, r9, vr1
005bb4  b3940518  bfloat2float.rn r9, r11
005bb8  7e0005e0  vmmov mr0, r10
005bbc  1f051000  addli r10, zero, 8
005bc0  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
005bc4  b3940818  bfloat2float.rn r9, r17
005bc8  7e0005e0  vmmov mr0, r10
005bcc  1f052000  addli r10, zero, 16
005bd0  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
005bd4  b3140918  bfloat2float.rn r9, r18
005bd8  7e0005e0  vmmov mr0, r10
005bdc  1f054000  addli r10, zero, 32
005be0  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
005be4  b3940918  bfloat2float.rn r9, r19
005be8  7e0005e0  vmmov mr0, r10
005bec  1f058000  addli r10, zero, 64
005bf0  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
005bf4  b3140a18  bfloat2float.rn r9, r20
005bf8  7e0005e0  vmmov mr0, r10
005bfc  1f050001  addli r10, zero, 128
005c00  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
005c04  b3940a18  bfloat2float.rn r9, r21
005c08  7e0005e0  vmmov mr0, r10
005c0c  1f050002  addli r10, zero, 256
005c10  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
005c14  b3140b18  bfloat2float.rn r9, r22
005c18  7e0005e0  vmmov mr0, r10
005c1c  1f050004  addli r10, zero, 512
005c20  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
005c24  b3940b18  bfloat2float.rn r9, r23
005c28  7e0005e0  vmmov mr0, r10
005c2c  1f050008  addli r10, zero, 1024
005c30  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
005c34  b3940c18  bfloat2float.rn r9, r25
005c38  7e0005e0  vmmov mr0, r10
005c3c  1f050010  addli r10, zero, 2048
005c40  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
005c44  b3140d18  bfloat2float.rn r9, r26
005c48  7e0005e0  vmmov mr0, r10
005c4c  1f050020  addli r10, zero, 4096
005c50  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
005c54  b3940d18  bfloat2float.rn r9, r27
005c58  7e0005e0  vmmov mr0, r10
005c5c  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
005c60  9f040040  addli r9, zero, 8192
005c64  7e8004e0  vmmov mr0, r9
005c68  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
005c6c  ab410000  lui r3, 4
005c70  7e8001e0  vmmov mr0, r3
005c74  9f010ff4  addli r3, r30, -1536
005c78  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
005c7c  e7434fda  storeli.w r4, -4804(r30)
005c80  8b914110  add.s r3, r3, r4
005c84  2b820000  lui r4, 8
005c88  b3100418  bfloat2float.rn r1, r8
005c8c  7e0002e0  vmmov mr0, r4
005c90  1f420000  addli r4, zero, 4
005c94  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
005c98  ebb00100  load.hu r1, 0(r3)
005c9c  6bb42100  load.hu r8, 2(r3)
005ca0  ebb44100  load.hu r9, 4(r3)
005ca4  6bb56100  load.hu r10, 6(r3)
005ca8  ebb58100  load.hu r11, 8(r3)
005cac  ebb8a100  load.hu r17, 10(r3)
005cb0  6bb9c100  load.hu r18, 12(r3)
005cb4  ebb9e100  load.hu r19, 14(r3)
005cb8  6bba0101  load.hu r20, 16(r3)
005cbc  ebba2101  load.hu r21, 18(r3)
005cc0  6bbb4101  load.hu r22, 20(r3)
005cc4  ebbb6101  load.hu r23, 22(r3)
005cc8  ebbc8101  load.hu r25, 24(r3)
005ccc  6bbda101  load.hu r26, 26(r3)
005cd0  ebbdc101  load.hu r27, 28(r3)
005cd4  ebb1e101  load.hu r3, 30(r3)
005cd8  b3900018  bfloat2float.rn r1, r1
005cdc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
005ce0  b3100418  bfloat2float.rn r1, r8
005ce4  7e0102e0  vmmov mr2, r4
005ce8  1f021000  addli r4, zero, 8
005cec  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
005cf0  b3900418  bfloat2float.rn r1, r9
005cf4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
005cf8  b3100518  bfloat2float.rn r1, r10
005cfc  7e0102e0  vmmov mr2, r4
005d00  1f022000  addli r4, zero, 16
005d04  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
005d08  b3900518  bfloat2float.rn r1, r11
005d0c  7e0102e0  vmmov mr2, r4
005d10  1f024000  addli r4, zero, 32
005d14  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
005d18  b3900818  bfloat2float.rn r1, r17
005d1c  7e0102e0  vmmov mr2, r4
005d20  1f028000  addli r4, zero, 64
005d24  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
005d28  b3100918  bfloat2float.rn r1, r18
005d2c  7e0102e0  vmmov mr2, r4
005d30  1f020001  addli r4, zero, 128
005d34  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
005d38  b3900918  bfloat2float.rn r1, r19
005d3c  7e0102e0  vmmov mr2, r4
005d40  1f020002  addli r4, zero, 256
005d44  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
005d48  b3100a18  bfloat2float.rn r1, r20
005d4c  7e0102e0  vmmov mr2, r4
005d50  1f020004  addli r4, zero, 512
005d54  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
005d58  b3900a18  bfloat2float.rn r1, r21
005d5c  7e0102e0  vmmov mr2, r4
005d60  1f020008  addli r4, zero, 1024
005d64  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
005d68  b3100b18  bfloat2float.rn r1, r22
005d6c  7e0102e0  vmmov mr2, r4
005d70  1f020010  addli r4, zero, 2048
005d74  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
005d78  b3900b18  bfloat2float.rn r1, r23
005d7c  7e0102e0  vmmov mr2, r4
005d80  1f020020  addli r4, zero, 4096
005d84  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
005d88  b3900c18  bfloat2float.rn r1, r25
005d8c  7e0102e0  vmmov mr2, r4
005d90  1f020040  addli r4, zero, 8192
005d94  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
005d98  b3100d18  bfloat2float.rn r1, r26
005d9c  7e0102e0  vmmov mr2, r4
005da0  2b420000  lui r4, 4
005da4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
005da8  b3900d18  bfloat2float.rn r1, r27
005dac  7e0102e0  vmmov mr2, r4
005db0  2b02807f  lui r4, 522240
005db4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
005db8  b3900118  bfloat2float.rn r1, r3
005dbc  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
005dc0  9f000fe0  addli r1, r30, -4096
005dc4  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
005dc8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
005dcc  00a00000  mfence { lm }
005dd0  e3050fe0  loadli.w r11,  -4096(r30)
005dd4  63450fe0  loadli.w r10,  -4092(r30)
005dd8  e30c1fe0  loadli.w r25,  -4088(r30)
005ddc  e34a1fe0  loadli.w r21,  -4084(r30)
005de0  630d2fe0  loadli.w r26,  -4080(r30)
005de4  63492fe0  loadli.w r18,  -4076(r30)
005de8  63043fe0  loadli.w r8,  -4072(r30)
005dec  e3403fe0  loadli.w r1,  -4068(r30)
005df0  e3044fe0  loadli.w r9,  -4064(r30)
005df4  e3414fe0  loadli.w r3,  -4060(r30)
005df8  630a5fe0  loadli.w r20,  -4056(r30)
005dfc  e34d5fe0  loadli.w r27,  -4052(r30)
005e00  630b6fe0  loadli.w r22,  -4048(r30)
005e04  9788c501  and r17, r11, r28
005e08  13061205  setlt.u r12, r4, r17
005e0c  e3486fe0  loadli.w r17,  -4044(r30)
005e10  e30b7fe0  loadli.w r23,  -4040(r30)
005e14  e3497fe0  loadli.w r19,  -4036(r30)
005e18  3b600600  bneq r12, zero, 24
005e1c  1bc60501  srli r12, r11, 16
005e20  1b061600  andi r12, r12, 1
005e24  8b95c510  add.s r11, r11, r12
005e28  0b968511  add.s r12, r11, r24
005e2c  db010000  j 12
005e30  2b024000  lui r4, 1024
005e34  17964500  or r12, r11, r4
005e38  9705c501  and r11, r10, r28
005e3c  2b02807f  lui r4, 522240
005e40  9305b204  setlt.u r11, r4, r11
005e44  3be00500  bneq r11, zero, 24
005e48  9b450501  srli r11, r10, 16
005e4c  9b851500  andi r11, r11, 1
005e50  0b15b510  add.s r10, r10, r11
005e54  0b128511  add.s r4, r10, r24
005e58  db010000  j 12
005e5c  2b024000  lui r4, 1024
005e60  17124500  or r4, r10, r4
005e64  e7034fda  storeli.w r4, -4808(r30)
005e68  1785cc01  and r10, r25, r28
005e6c  2b02807f  lui r4, 522240
005e70  1305a204  setlt.u r10, r4, r10
005e74  3b600500  bneq r10, zero, 24
005e78  1bc50c01  srli r10, r25, 16
005e7c  1b051500  andi r10, r10, 1
005e80  0b95ac10  add.s r10, r25, r10
005e84  8b1c8511  add.s r25, r10, r24
005e88  db010000  j 12
005e8c  2b024000  lui r4, 1024
005e90  979c4c00  or r25, r25, r4
005e94  1785ca01  and r10, r21, r28
005e98  2b02807f  lui r4, 522240
005e9c  1305a204  setlt.u r10, r4, r10
005ea0  3b600500  bneq r10, zero, 24
005ea4  1bc50a01  srli r10, r21, 16
005ea8  1b051500  andi r10, r10, 1
005eac  0b95aa10  add.s r10, r21, r10
005eb0  8b1a8511  add.s r21, r10, r24
005eb4  db010000  j 12
005eb8  2b024000  lui r4, 1024
005ebc  979a4a00  or r21, r21, r4
005ec0  1705cd01  and r10, r26, r28
005ec4  2b02807f  lui r4, 522240
005ec8  1305a204  setlt.u r10, r4, r10
005ecc  3b600500  bneq r10, zero, 24
005ed0  1b450d01  srli r10, r26, 16
005ed4  1b051500  andi r10, r10, 1
005ed8  0b15ad10  add.s r10, r26, r10
005edc  0b1d8511  add.s r26, r10, r24
005ee0  db010000  j 12
005ee4  2b024000  lui r4, 1024
005ee8  171d4d00  or r26, r26, r4
005eec  1705c901  and r10, r18, r28
005ef0  2b02807f  lui r4, 522240
005ef4  1305a204  setlt.u r10, r4, r10
005ef8  3b600500  bneq r10, zero, 24
005efc  1b450901  srli r10, r18, 16
005f00  1b051500  andi r10, r10, 1
005f04  0b15a910  add.s r10, r18, r10
005f08  0b198511  add.s r18, r10, r24
005f0c  db010000  j 12
005f10  2b024000  lui r4, 1024
005f14  17194900  or r18, r18, r4
005f18  1705c401  and r10, r8, r28
005f1c  2b02807f  lui r4, 522240
005f20  1305a204  setlt.u r10, r4, r10
005f24  3b600500  bneq r10, zero, 24
005f28  1b450401  srli r10, r8, 16
005f2c  1b051500  andi r10, r10, 1
005f30  0b14a410  add.s r8, r8, r10
005f34  0b148411  add.s r8, r8, r24
005f38  db010000  j 12
005f3c  2b024000  lui r4, 1024
005f40  17144400  or r8, r8, r4
005f44  1785c001  and r10, r1, r28
005f48  2b02807f  lui r4, 522240
005f4c  1305a204  setlt.u r10, r4, r10
005f50  3b600500  bneq r10, zero, 24
005f54  1bc50001  srli r10, r1, 16
005f58  1b051500  andi r10, r10, 1
005f5c  8b90a010  add.s r1, r1, r10
005f60  8b908011  add.s r1, r1, r24
005f64  db010000  j 12
005f68  2b024000  lui r4, 1024
005f6c  97904000  or r1, r1, r4
005f70  1785c401  and r10, r9, r28
005f74  2b02807f  lui r4, 522240
005f78  1305a204  setlt.u r10, r4, r10
005f7c  3b600500  bneq r10, zero, 24
005f80  1bc50401  srli r10, r9, 16
005f84  1b051500  andi r10, r10, 1
005f88  8b94a410  add.s r9, r9, r10
005f8c  8b948411  add.s r9, r9, r24
005f90  db010000  j 12
005f94  2b024000  lui r4, 1024
005f98  97944400  or r9, r9, r4
005f9c  1785c101  and r10, r3, r28
005fa0  2b02807f  lui r4, 522240
005fa4  1305a204  setlt.u r10, r4, r10
005fa8  3b600500  bneq r10, zero, 24
005fac  1bc50101  srli r10, r3, 16
005fb0  1b051500  andi r10, r10, 1
005fb4  8b91a110  add.s r3, r3, r10
005fb8  8b918111  add.s r3, r3, r24
005fbc  db010000  j 12
005fc0  2b024000  lui r4, 1024
005fc4  97914100  or r3, r3, r4
005fc8  1705ca01  and r10, r20, r28
005fcc  2b02807f  lui r4, 522240
005fd0  1305a204  setlt.u r10, r4, r10
005fd4  3b600500  bneq r10, zero, 24
005fd8  1b450a01  srli r10, r20, 16
005fdc  1b051500  andi r10, r10, 1
005fe0  0b15aa10  add.s r10, r20, r10
005fe4  0b1a8511  add.s r20, r10, r24
005fe8  db010000  j 12
005fec  2b024000  lui r4, 1024
005ff0  171a4a00  or r20, r20, r4
005ff4  1785cd01  and r10, r27, r28
005ff8  2b02807f  lui r4, 522240
005ffc  1305a204  setlt.u r10, r4, r10
006000  3b600500  bneq r10, zero, 24
006004  1bc50d01  srli r10, r27, 16
006008  1b051500  andi r10, r10, 1
00600c  0b95ad10  add.s r10, r27, r10
006010  8b1d8511  add.s r27, r10, r24
006014  db010000  j 12
006018  2b024000  lui r4, 1024
00601c  979d4d00  or r27, r27, r4
006020  1705cb01  and r10, r22, r28
006024  2b02807f  lui r4, 522240
006028  1305a204  setlt.u r10, r4, r10
00602c  3b600500  bneq r10, zero, 24
006030  1b450b01  srli r10, r22, 16
006034  1b051500  andi r10, r10, 1
006038  0b15ab10  add.s r10, r22, r10
00603c  0b1b8511  add.s r22, r10, r24
006040  db010000  j 12
006044  2b024000  lui r4, 1024
006048  171b4b00  or r22, r22, r4
00604c  1785c801  and r10, r17, r28
006050  2b02807f  lui r4, 522240
006054  1305a204  setlt.u r10, r4, r10
006058  3b600500  bneq r10, zero, 24
00605c  1bc50801  srli r10, r17, 16
006060  1b051500  andi r10, r10, 1
006064  0b95a810  add.s r10, r17, r10
006068  8b188511  add.s r17, r10, r24
00606c  db010000  j 12
006070  2b024000  lui r4, 1024
006074  97984800  or r17, r17, r4
006078  1785cb01  and r10, r23, r28
00607c  2b02807f  lui r4, 522240
006080  1305a204  setlt.u r10, r4, r10
006084  3b600500  bneq r10, zero, 24
006088  1bc50b01  srli r10, r23, 16
00608c  1b051500  andi r10, r10, 1
006090  0b95ab10  add.s r10, r23, r10
006094  0b158511  add.s r10, r10, r24
006098  db010000  j 12
00609c  2b024000  lui r4, 1024
0060a0  17954b00  or r10, r23, r4
0060a4  9785c901  and r11, r19, r28
0060a8  2b02807f  lui r4, 522240
0060ac  67086fde  storeli.w r6, -4224(r30)
0060b0  670c5fda  storeli.w r5, -4672(r30)
0060b4  9305b204  setlt.u r11, r4, r11
0060b8  2b02ffff  lui r4, 1048560
0060bc  3be00500  bneq r11, zero, 24
0060c0  9bc50901  srli r11, r19, 16
0060c4  9b851500  andi r11, r11, 1
0060c8  8b95b910  add.s r11, r19, r11
0060cc  8b958511  add.s r11, r11, r24
0060d0  db010000  j 12
0060d4  ab024000  lui r5, 1024
0060d8  97955900  or r11, r19, r5
0060dc  6303efdf  loadli.w r6,  -4112(r30)
0060e0  9f020004  addli r5, zero, 512
0060e4  3f205300  blt.s r6, r5, 8
0060e8  db2dffff  j -1684
0060ec  e3027fda  loadli.w r5,  -4808(r30)
0060f0  978b4c00  and r23, r25, r4
0060f4  17064600  and r12, r12, r4
0060f8  978a4a00  and r21, r21, r4
0060fc  97844400  and r9, r9, r4
006100  170a4a00  and r20, r20, r4
006104  970c4d00  and r25, r26, r4
006108  17094900  and r18, r18, r4
00610c  17044400  and r8, r8, r4
006110  97814100  and r3, r3, r4
006114  178d4d00  and r26, r27, r4
006118  170b4b00  and r22, r22, r4
00611c  97884800  and r17, r17, r4
006120  17054500  and r10, r10, r4
006124  97854500  and r11, r11, r4
006128  97894200  and r19, r5, r4
00612c  97824000  and r5, r1, r4
006130  e3406fda  loadli.w r1,  -4812(r30)
006134  0b661618  sub.f.rn r12, r12, r1
006138  8beb1b18  sub.f.rn r23, r23, r1
00613c  8bea1a18  sub.f.rn r21, r21, r1
006140  0bee1418  sub.f.rn r28, r9, r1
006144  0b6c1a18  sub.f.rn r24, r20, r1
006148  0b691918  sub.f.rn r18, r18, r1
00614c  0b651518  sub.f.rn r10, r10, r1
006150  8be51518  sub.f.rn r11, r11, r1
006154  8b6d1418  sub.f.rn r27, r8, r1
006158  1f040100  addli r8, r2, 0
00615c  1f010800  addli r2, r16, 0
006160  1f880700  addli r16, r15, 0
006164  9f070700  addli r15, r14, 0
006168  1f870300  addli r14, r7, 0
00616c  9f830600  addli r7, r13, 0
006170  8be61218  sub.f.rn r13, r5, r1
006174  8be91918  sub.f.rn r19, r19, r1
006178  0be21118  sub.f.rn r4, r3, r1
00617c  8b621b18  sub.f.rn r5, r22, r1
006180  8bec1c18  sub.f.rn r25, r25, r1
006184  0be31818  sub.f.rn r6, r17, r1
006188  0b6d1d18  sub.f.rn r26, r26, r1
00618c  8f000600  exp.f.rn r1, r12
006190  0f860b00  exp.f.rn r12, r23
006194  8f840a00  exp.f.rn r9, r21
006198  8f0a0e00  exp.f.rn r21, r28
00619c  8f0b0c00  exp.f.rn r23, r24
0061a0  634effdf  loadli.w r28,  -4100(r30)
0061a4  630cffdf  loadli.w r24,  -4104(r30)
0061a8  8f810900  exp.f.rn r3, r19
0061ac  8f880c00  exp.f.rn r17, r25
0061b0  8f890d00  exp.f.rn r19, r27
0061b4  0f8a0600  exp.f.rn r20, r13
0061b8  9f860300  addli r13, r7, 0
0061bc  9f030700  addli r7, r14, 0
0061c0  1f870700  addli r14, r15, 0
0061c4  9f070800  addli r15, r16, 0
0061c8  1f080100  addli r16, r2, 0
0061cc  8f0c0d00  exp.f.rn r25, r26
0061d0  0f090900  exp.f.rn r18, r18
0061d4  1f010400  addli r2, r8, 0
0061d8  0f0b0200  exp.f.rn r22, r4
0061dc  0f8d0200  exp.f.rn r26, r5
0061e0  8f0d0300  exp.f.rn r27, r6
0061e4  0f050500  exp.f.rn r10, r10
0061e8  8f850500  exp.f.rn r11, r11
0061ec  5b15ffff  j -1880
0061f0  8be07610  add.f.rn r1, r13, r7
0061f4  e341efd1  loadli.w r3,  -5900(r30)
0061f8  8be0e010  add.f.rn r1, r1, r14
0061fc  8be0f010  add.f.rn r1, r1, r15
006200  8be00011  add.f.rn r1, r1, r16
006204  8be02010  add.f.rn r1, r1, r2
006208  8be06010  add.f.rn r1, r1, r6
00620c  8be08010  add.f.rn r1, r1, r8
006210  8be09010  add.f.rn r1, r1, r9
006214  8be0c010  add.f.rn r1, r1, r12
006218  8be04011  add.f.rn r1, r1, r20
00621c  8be05011  add.f.rn r1, r1, r21
006220  8be04010  add.f.rn r1, r1, r4
006224  8be05010  add.f.rn r1, r1, r5
006228  8be0a010  add.f.rn r1, r1, r10
00622c  8be0b010  add.f.rn r1, r1, r11
006230  73e01100  stores.w r1, 0(r3)
006234  00a00300  mfence { lm, sm, gm }
006238  e3423fda  loadli.w r5,  -4836(r30)
00623c  80a10204  csr_set csr3, r5
006240  00d00100  sync_group
006244  e3003fda  loadli.w r1,  -4840(r30)
006248  bba00000  bneq r1, zero, 40
00624c  6343ffd1  loadli.w r6,  -5892(r30)
006250  ef400300  loads.w r1, 0(r6)
006254  ef414300  loads.w r3, 4(r6)
006258  6f428300  loads.w r4, 8(r6)
00625c  8be03010  add.f.rn r1, r1, r3
006260  ef41c300  loads.w r3, 12(r6)
006264  8be04010  add.f.rn r1, r1, r4
006268  8be03010  add.f.rn r1, r1, r3
00626c  73601300  stores.w r1, 0(r6)
006270  00a00300  mfence { lm, sm, gm }
006274  80a10204  csr_set csr3, r5
006278  00d00100  sync_group
00627c  e340ffd1  loadli.w r1,  -5892(r30)
006280  ab01803f  lui r3, 260096
006284  63416fda  loadli.w r2,  -4812(r30)
006288  1f020000  addli r4, zero, 0
00628c  2b0bffff  lui r22, 1048560
006290  efc00000  loads.w r1, 0(r1)
006294  8f801118  div.f.rn r1, r3, r1
006298  9f812d00  addli r3, r27, 16
00629c  5b350000  j 424
0062a0  9b4a0301  srli r21, r6, 16
0062a4  9b8a1a00  andi r21, r21, 1
0062a8  0b135311  add.s r6, r6, r21
0062ac  0b138311  add.s r6, r6, r24
0062b0  97826201  and r5, r5, r22
0062b4  97836301  and r7, r7, r22
0062b8  97846401  and r9, r9, r22
0062bc  97856501  and r11, r11, r22
0062c0  97866601  and r13, r13, r22
0062c4  17086801  and r16, r16, r22
0062c8  17096901  and r18, r18, r22
0062cc  170a6a01  and r20, r20, r22
0062d0  97896901  and r19, r19, r22
0062d4  97886801  and r17, r17, r22
0062d8  97876701  and r15, r15, r22
0062dc  17076701  and r14, r14, r22
0062e0  17066601  and r12, r12, r22
0062e4  17056501  and r10, r10, r22
0062e8  17046401  and r8, r8, r22
0062ec  17036301  and r6, r6, r22
0062f0  1f028200  addli r4, r4, 64
0062f4  8be22218  sub.f.rn r5, r5, r2
0062f8  8be32318  sub.f.rn r7, r7, r2
0062fc  8be42418  sub.f.rn r9, r9, r2
006300  8be52518  sub.f.rn r11, r11, r2
006304  8be62618  sub.f.rn r13, r13, r2
006308  0b682818  sub.f.rn r16, r16, r2
00630c  0b692918  sub.f.rn r18, r18, r2
006310  0b6a2a18  sub.f.rn r20, r20, r2
006314  8be92918  sub.f.rn r19, r19, r2
006318  8be82818  sub.f.rn r17, r17, r2
00631c  8be72718  sub.f.rn r15, r15, r2
006320  0b672718  sub.f.rn r14, r14, r2
006324  0b662618  sub.f.rn r12, r12, r2
006328  0b652518  sub.f.rn r10, r10, r2
00632c  0b642418  sub.f.rn r8, r8, r2
006330  0b632318  sub.f.rn r6, r6, r2
006334  8f820200  exp.f.rn r5, r5
006338  8f830300  exp.f.rn r7, r7
00633c  8f840400  exp.f.rn r9, r9
006340  8f850500  exp.f.rn r11, r11
006344  8f860600  exp.f.rn r13, r13
006348  0f080800  exp.f.rn r16, r16
00634c  0f090900  exp.f.rn r18, r18
006350  0f0a0a00  exp.f.rn r20, r20
006354  8f890900  exp.f.rn r19, r19
006358  8f880800  exp.f.rn r17, r17
00635c  8f870700  exp.f.rn r15, r15
006360  0f070700  exp.f.rn r14, r14
006364  0f060600  exp.f.rn r12, r12
006368  0f050500  exp.f.rn r10, r10
00636c  0f040400  exp.f.rn r8, r8
006370  0f030300  exp.f.rn r6, r6
006374  8be25020  mul.f.rn r5, r1, r5
006378  8be37020  mul.f.rn r7, r1, r7
00637c  8be49020  mul.f.rn r9, r1, r9
006380  8be5b020  mul.f.rn r11, r1, r11
006384  8be6d020  mul.f.rn r13, r1, r13
006388  0be80021  mul.f.rn r16, r1, r16
00638c  0be92021  mul.f.rn r18, r1, r18
006390  0bea4021  mul.f.rn r20, r1, r20
006394  8be93021  mul.f.rn r19, r1, r19
006398  8be81021  mul.f.rn r17, r1, r17
00639c  8be7f020  mul.f.rn r15, r1, r15
0063a0  0be7e020  mul.f.rn r14, r1, r14
0063a4  0be6c020  mul.f.rn r12, r1, r12
0063a8  0be36020  mul.f.rn r6, r1, r6
0063ac  0be5a020  mul.f.rn r10, r1, r10
0063b0  0be48020  mul.f.rn r8, r1, r8
0063b4  b3920200  float2bfloat.rn r5, r5
0063b8  b3930300  float2bfloat.rn r7, r7
0063bc  33130300  float2bfloat.rn r6, r6
0063c0  739851fe  store.h r5, -16(r3)
0063c4  b3920400  float2bfloat.rn r5, r9
0063c8  739971fe  store.h r7, -14(r3)
0063cc  b3930500  float2bfloat.rn r7, r11
0063d0  73976100  store.h r6, 14(r3)
0063d4  739a51fe  store.h r5, -12(r3)
0063d8  b3920600  float2bfloat.rn r5, r13
0063dc  739b71fe  store.h r7, -10(r3)
0063e0  b3130800  float2bfloat.rn r7, r16
0063e4  739c51fe  store.h r5, -8(r3)
0063e8  b3120900  float2bfloat.rn r5, r18
0063ec  739d71fe  store.h r7, -6(r3)
0063f0  b3130a00  float2bfloat.rn r7, r20
0063f4  739e51fe  store.h r5, -4(r3)
0063f8  b3920900  float2bfloat.rn r5, r19
0063fc  739f71fe  store.h r7, -2(r3)
006400  b3930800  float2bfloat.rn r7, r17
006404  73905100  store.h r5, 0(r3)
006408  b3920700  float2bfloat.rn r5, r15
00640c  73917100  store.h r7, 2(r3)
006410  b3130700  float2bfloat.rn r7, r14
006414  73925100  store.h r5, 4(r3)
006418  b3120600  float2bfloat.rn r5, r12
00641c  73937100  store.h r7, 6(r3)
006420  b3130500  float2bfloat.rn r7, r10
006424  73945100  store.h r5, 8(r3)
006428  b3120400  float2bfloat.rn r5, r8
00642c  73957100  store.h r7, 10(r3)
006430  73965100  store.h r5, 12(r3)
006434  9f814100  addli r3, r3, 32
006438  9f020008  addli r5, zero, 1024
00643c  00a00000  mfence { lm }
006440  b74652d2  beq r4, r5, -23120
006444  8b934d10  add.s r7, r27, r4
006448  92309002  vadd.s.mz vr1{mr1}, zero, vr9
00644c  9f1a0000  addli r21, zero, 1
006450  12319002  vadd.s.mz vr2{mr1}, zero, vr9
006454  6bb40300  load.hu r8, 0(r7)
006458  ebb42300  load.hu r9, 2(r7)
00645c  7e810ae0  vmmov mr2, r21
006460  6bb3a301  load.hu r6, 26(r7)
006464  ebb2c301  load.hu r5, 28(r7)
006468  6bb54300  load.hu r10, 4(r7)
00646c  ebb56300  load.hu r11, 6(r7)
006470  6bb68300  load.hu r12, 8(r7)
006474  ebb6a300  load.hu r13, 10(r7)
006478  6bb7c300  load.hu r14, 12(r7)
00647c  ebb7e300  load.hu r15, 14(r7)
006480  6bb80301  load.hu r16, 16(r7)
006484  ebb82301  load.hu r17, 18(r7)
006488  6bb94301  load.hu r18, 20(r7)
00648c  ebb96301  load.hu r19, 22(r7)
006490  6bba8301  load.hu r20, 24(r7)
006494  ebb3e301  load.hu r7, 30(r7)
006498  33140418  bfloat2float.rn r8, r8
00649c  33130318  bfloat2float.rn r6, r6
0064a0  b3920218  bfloat2float.rn r5, r5
0064a4  ea201434  vor.u.mh vr1{mr2}, r8, vr1
0064a8  33940418  bfloat2float.rn r8, r9
0064ac  9f240000  addli r9, zero, 2
0064b0  fe8104e0  vmmov mr3, r9
0064b4  9f440000  addli r9, zero, 4
0064b8  ea201436  vor.u.mh vr1{mr3}, r8, vr1
0064bc  33140518  bfloat2float.rn r8, r10
0064c0  7e8004e0  vmmov mr0, r9
0064c4  9f041000  addli r9, zero, 8
0064c8  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0064cc  33940518  bfloat2float.rn r8, r11
0064d0  7e8004e0  vmmov mr0, r9
0064d4  9f042000  addli r9, zero, 16
0064d8  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0064dc  33140618  bfloat2float.rn r8, r12
0064e0  7e8004e0  vmmov mr0, r9
0064e4  9f044000  addli r9, zero, 32
0064e8  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0064ec  33940618  bfloat2float.rn r8, r13
0064f0  7e8004e0  vmmov mr0, r9
0064f4  9f048000  addli r9, zero, 64
0064f8  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0064fc  33140718  bfloat2float.rn r8, r14
006500  7e8004e0  vmmov mr0, r9
006504  9f040001  addli r9, zero, 128
006508  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00650c  33940718  bfloat2float.rn r8, r15
006510  7e8004e0  vmmov mr0, r9
006514  9f040002  addli r9, zero, 256
006518  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00651c  33140818  bfloat2float.rn r8, r16
006520  7e8004e0  vmmov mr0, r9
006524  9f040004  addli r9, zero, 512
006528  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00652c  33940818  bfloat2float.rn r8, r17
006530  7e8004e0  vmmov mr0, r9
006534  9f040008  addli r9, zero, 1024
006538  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00653c  33140918  bfloat2float.rn r8, r18
006540  7e8004e0  vmmov mr0, r9
006544  9f040010  addli r9, zero, 2048
006548  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00654c  33940918  bfloat2float.rn r8, r19
006550  7e8004e0  vmmov mr0, r9
006554  9f040020  addli r9, zero, 4096
006558  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00655c  33140a18  bfloat2float.rn r8, r20
006560  7e8004e0  vmmov mr0, r9
006564  ea201430  vor.u.mh vr1{mr0}, r8, vr1
006568  1f040040  addli r8, zero, 8192
00656c  7e0004e0  vmmov mr0, r8
006570  ea201330  vor.u.mh vr1{mr0}, r6, vr1
006574  2b430000  lui r6, 4
006578  7e0003e0  vmmov mr0, r6
00657c  1f030ff4  addli r6, r30, -1536
006580  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
006584  b3920318  bfloat2float.rn r5, r7
006588  ab830000  lui r7, 8
00658c  0b134310  add.s r6, r6, r4
006590  7e8003e0  vmmov mr0, r7
006594  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
006598  eb320300  load.hu r5, 0(r6)
00659c  eb332300  load.hu r7, 2(r6)
0065a0  6b344300  load.hu r8, 4(r6)
0065a4  eb346300  load.hu r9, 6(r6)
0065a8  6b358300  load.hu r10, 8(r6)
0065ac  eb35a300  load.hu r11, 10(r6)
0065b0  6b36c300  load.hu r12, 12(r6)
0065b4  eb36e300  load.hu r13, 14(r6)
0065b8  6b370301  load.hu r14, 16(r6)
0065bc  eb372301  load.hu r15, 18(r6)
0065c0  6b384301  load.hu r16, 20(r6)
0065c4  eb386301  load.hu r17, 22(r6)
0065c8  6b398301  load.hu r18, 24(r6)
0065cc  eb39a301  load.hu r19, 26(r6)
0065d0  6b3ac301  load.hu r20, 28(r6)
0065d4  6b33e301  load.hu r6, 30(r6)
0065d8  b3920218  bfloat2float.rn r5, r5
0065dc  6aa12234  vor.u.mh vr2{mr2}, r5, vr2
0065e0  b3920318  bfloat2float.rn r5, r7
0065e4  9f430000  addli r7, zero, 4
0065e8  7e8103e0  vmmov mr2, r7
0065ec  9f031000  addli r7, zero, 8
0065f0  6aa12236  vor.u.mh vr2{mr3}, r5, vr2
0065f4  b3120418  bfloat2float.rn r5, r8
0065f8  2b04807f  lui r8, 522240
0065fc  6aa12234  vor.u.mh vr2{mr2}, r5, vr2
006600  b3920418  bfloat2float.rn r5, r9
006604  7e8103e0  vmmov mr2, r7
006608  9f032000  addli r7, zero, 16
00660c  6aa12234  vor.u.mh vr2{mr2}, r5, vr2
006610  b3120518  bfloat2float.rn r5, r10
006614  7e8103e0  vmmov mr2, r7
006618  9f034000  addli r7, zero, 32
00661c  6aa12234  vor.u.mh vr2{mr2}, r5, vr2
006620  b3920518  bfloat2float.rn r5, r11
006624  7e8103e0  vmmov mr2, r7
006628  9f038000  addli r7, zero, 64
00662c  6aa12234  vor.u.mh vr2{mr2}, r5, vr2
006630  b3120618  bfloat2float.rn r5, r12
006634  7e8103e0  vmmov mr2, r7
006638  9f030001  addli r7, zero, 128
00663c  6aa12234  vor.u.mh vr2{mr2}, r5, vr2
006640  b3920618  bfloat2float.rn r5, r13
006644  7e8103e0  vmmov mr2, r7
006648  9f030002  addli r7, zero, 256
00664c  6aa12234  vor.u.mh vr2{mr2}, r5, vr2
006650  b3120718  bfloat2float.rn r5, r14
006654  7e8103e0  vmmov mr2, r7
006658  9f030004  addli r7, zero, 512
00665c  6aa12234  vor.u.mh vr2{mr2}, r5, vr2
006660  b3920718  bfloat2float.rn r5, r15
006664  7e8103e0  vmmov mr2, r7
006668  9f030008  addli r7, zero, 1024
00666c  6aa12234  vor.u.mh vr2{mr2}, r5, vr2
006670  b3120818  bfloat2float.rn r5, r16
006674  7e8103e0  vmmov mr2, r7
006678  9f030010  addli r7, zero, 2048
00667c  6aa12234  vor.u.mh vr2{mr2}, r5, vr2
006680  b3920818  bfloat2float.rn r5, r17
006684  7e8103e0  vmmov mr2, r7
006688  9f030020  addli r7, zero, 4096
00668c  6aa12234  vor.u.mh vr2{mr2}, r5, vr2
006690  b3120918  bfloat2float.rn r5, r18
006694  7e8103e0  vmmov mr2, r7
006698  9f030040  addli r7, zero, 8192
00669c  6aa12234  vor.u.mh vr2{mr2}, r5, vr2
0066a0  b3920918  bfloat2float.rn r5, r19
0066a4  7e8103e0  vmmov mr2, r7
0066a8  ab430000  lui r7, 4
0066ac  6aa12234  vor.u.mh vr2{mr2}, r5, vr2
0066b0  b3120a18  bfloat2float.rn r5, r20
0066b4  7e8103e0  vmmov mr2, r7
0066b8  6aa12234  vor.u.mh vr2{mr2}, r5, vr2
0066bc  b3120318  bfloat2float.rn r5, r6
0066c0  6aa12230  vor.u.mh vr2{mr0}, r5, vr2
0066c4  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
0066c8  46100f82  vstore_mask16.mz vr0{mr1}, 1024(r30)
0066cc  00a00000  mfence { lm }
0066d0  e3020ff8  loadli.w r5,  -1024(r30)
0066d4  e3430ff8  loadli.w r7,  -1020(r30)
0066d8  e3041ff8  loadli.w r9,  -1016(r30)
0066dc  e3451ff8  loadli.w r11,  -1012(r30)
0066e0  e3062ff8  loadli.w r13,  -1008(r30)
0066e4  63482ff8  loadli.w r16,  -1004(r30)
0066e8  63093ff8  loadli.w r18,  -1000(r30)
0066ec  634a3ff8  loadli.w r20,  -996(r30)
0066f0  e3094ff8  loadli.w r19,  -992(r30)
0066f4  e3484ff8  loadli.w r17,  -988(r30)
0066f8  e3075ff8  loadli.w r15,  -984(r30)
0066fc  63475ff8  loadli.w r14,  -980(r30)
006700  63066ff8  loadli.w r12,  -976(r30)
006704  63456ff8  loadli.w r10,  -972(r30)
006708  1783c201  and r6, r5, r28
00670c  930a6404  setlt.u r21, r8, r6
006710  63047ff8  loadli.w r8,  -968(r30)
006714  63437ff8  loadli.w r6,  -964(r30)
006718  3be00a00  bneq r21, zero, 24
00671c  9bca0201  srli r21, r5, 16
006720  9b8a1a00  andi r21, r21, 1
006724  8b925211  add.s r5, r5, r21
006728  8b928211  add.s r5, r5, r24
00672c  db010000  j 12
006730  ab0a4000  lui r21, 1024
006734  97925201  or r5, r5, r21
006738  978ac301  and r21, r7, r28
00673c  ab0b807f  lui r23, 522240
006740  938a5b05  setlt.u r21, r23, r21
006744  3be00a00  bneq r21, zero, 24
006748  9bca0301  srli r21, r7, 16
00674c  9b8a1a00  andi r21, r21, 1
006750  8b935311  add.s r7, r7, r21
006754  8b938311  add.s r7, r7, r24
006758  db010000  j 12
00675c  ab0a4000  lui r21, 1024
006760  97935301  or r7, r7, r21
006764  978ac401  and r21, r9, r28
006768  938a5b05  setlt.u r21, r23, r21
00676c  3be00a00  bneq r21, zero, 24
006770  9bca0401  srli r21, r9, 16
006774  9b8a1a00  andi r21, r21, 1
006778  8b945411  add.s r9, r9, r21
00677c  8b948411  add.s r9, r9, r24
006780  db010000  j 12
006784  ab0a4000  lui r21, 1024
006788  97945401  or r9, r9, r21
00678c  978ac501  and r21, r11, r28
006790  938a5b05  setlt.u r21, r23, r21
006794  3be00a00  bneq r21, zero, 24
006798  9bca0501  srli r21, r11, 16
00679c  9b8a1a00  andi r21, r21, 1
0067a0  8b955511  add.s r11, r11, r21
0067a4  8b958511  add.s r11, r11, r24
0067a8  db010000  j 12
0067ac  ab0a4000  lui r21, 1024
0067b0  97955501  or r11, r11, r21
0067b4  978ac601  and r21, r13, r28
0067b8  938a5b05  setlt.u r21, r23, r21
0067bc  3be00a00  bneq r21, zero, 24
0067c0  9bca0601  srli r21, r13, 16
0067c4  9b8a1a00  andi r21, r21, 1
0067c8  8b965611  add.s r13, r13, r21
0067cc  8b968611  add.s r13, r13, r24
0067d0  db010000  j 12
0067d4  ab0a4000  lui r21, 1024
0067d8  97965601  or r13, r13, r21
0067dc  970ac801  and r21, r16, r28
0067e0  938a5b05  setlt.u r21, r23, r21
0067e4  3be00a00  bneq r21, zero, 24
0067e8  9b4a0801  srli r21, r16, 16
0067ec  9b8a1a00  andi r21, r21, 1
0067f0  0b185811  add.s r16, r16, r21
0067f4  0b188811  add.s r16, r16, r24
0067f8  db010000  j 12
0067fc  ab0a4000  lui r21, 1024
006800  17185801  or r16, r16, r21
006804  970ac901  and r21, r18, r28
006808  938a5b05  setlt.u r21, r23, r21
00680c  3be00a00  bneq r21, zero, 24
006810  9b4a0901  srli r21, r18, 16
006814  9b8a1a00  andi r21, r21, 1
006818  0b195911  add.s r18, r18, r21
00681c  0b198911  add.s r18, r18, r24
006820  db010000  j 12
006824  ab0a4000  lui r21, 1024
006828  17195901  or r18, r18, r21
00682c  970aca01  and r21, r20, r28
006830  938a5b05  setlt.u r21, r23, r21
006834  3be00a00  bneq r21, zero, 24
006838  9b4a0a01  srli r21, r20, 16
00683c  9b8a1a00  andi r21, r21, 1
006840  0b1a5a11  add.s r20, r20, r21
006844  0b1a8a11  add.s r20, r20, r24
006848  db010000  j 12
00684c  ab0a4000  lui r21, 1024
006850  171a5a01  or r20, r20, r21
006854  978ac901  and r21, r19, r28
006858  938a5b05  setlt.u r21, r23, r21
00685c  3be00a00  bneq r21, zero, 24
006860  9bca0901  srli r21, r19, 16
006864  9b8a1a00  andi r21, r21, 1
006868  8b995911  add.s r19, r19, r21
00686c  8b998911  add.s r19, r19, r24
006870  db010000  j 12
006874  ab0a4000  lui r21, 1024
006878  97995901  or r19, r19, r21
00687c  978ac801  and r21, r17, r28
006880  938a5b05  setlt.u r21, r23, r21
006884  3be00a00  bneq r21, zero, 24
006888  9bca0801  srli r21, r17, 16
00688c  9b8a1a00  andi r21, r21, 1
006890  8b985811  add.s r17, r17, r21
006894  8b988811  add.s r17, r17, r24
006898  db010000  j 12
00689c  ab0a4000  lui r21, 1024
0068a0  97985801  or r17, r17, r21
0068a4  978ac701  and r21, r15, r28
0068a8  938a5b05  setlt.u r21, r23, r21
0068ac  3be00a00  bneq r21, zero, 24
0068b0  9bca0701  srli r21, r15, 16
0068b4  9b8a1a00  andi r21, r21, 1
0068b8  8b975711  add.s r15, r15, r21
0068bc  8b978711  add.s r15, r15, r24
0068c0  db010000  j 12
0068c4  ab0a4000  lui r21, 1024
0068c8  97975701  or r15, r15, r21
0068cc  970ac701  and r21, r14, r28
0068d0  938a5b05  setlt.u r21, r23, r21
0068d4  3be00a00  bneq r21, zero, 24
0068d8  9b4a0701  srli r21, r14, 16
0068dc  9b8a1a00  andi r21, r21, 1
0068e0  0b175711  add.s r14, r14, r21
0068e4  0b178711  add.s r14, r14, r24
0068e8  db010000  j 12
0068ec  ab0a4000  lui r21, 1024
0068f0  17175701  or r14, r14, r21
0068f4  970ac601  and r21, r12, r28
0068f8  938a5b05  setlt.u r21, r23, r21
0068fc  3be00a00  bneq r21, zero, 24
006900  9b4a0601  srli r21, r12, 16
006904  9b8a1a00  andi r21, r21, 1
006908  0b165611  add.s r12, r12, r21
00690c  0b168611  add.s r12, r12, r24
006910  db010000  j 12
006914  ab0a4000  lui r21, 1024
006918  17165601  or r12, r12, r21
00691c  970ac501  and r21, r10, r28
006920  938a5b05  setlt.u r21, r23, r21
006924  3be00a00  bneq r21, zero, 24
006928  9b4a0501  srli r21, r10, 16
00692c  9b8a1a00  andi r21, r21, 1
006930  0b155511  add.s r10, r10, r21
006934  0b158511  add.s r10, r10, r24
006938  db010000  j 12
00693c  ab0a4000  lui r21, 1024
006940  17155501  or r10, r10, r21
006944  970ac401  and r21, r8, r28
006948  938a5b05  setlt.u r21, r23, r21
00694c  3be00a00  bneq r21, zero, 24
006950  9b4a0401  srli r21, r8, 16
006954  9b8a1a00  andi r21, r21, 1
006958  0b145411  add.s r8, r8, r21
00695c  0b148411  add.s r8, r8, r24
006960  db010000  j 12
006964  ab0a4000  lui r21, 1024
006968  17145401  or r8, r8, r21
00696c  970ac301  and r21, r6, r28
006970  938a5b05  setlt.u r21, r23, r21
006974  b7b40afc  beq r21, zero, -1748
006978  ab0a4000  lui r21, 1024
00697c  17135301  or r6, r6, r21
006980  5b26ffff  j -1744
006984  2b01c07f  lui r2, 523264
006988  b7c501f0  beq r3, zero, -7824
00698c  9f010100  addli r3, r2, 0
006990  bbb500f0  bneq r1, zero, -7828
006994  db2dfcff  j -7828
006998  ab01c07f  lui r3, 523264
00699c  37a700f0  beq r1, zero, -7736
0069a0  9f800100  addli r1, r3, 0
0069a4  3b1701f0  bneq r2, zero, -7740
0069a8  db38fcff  j -7740
0069ac  ab01c07f  lui r3, 523264
0069b0  b70801f0  beq r2, zero, -7648
0069b4  1f810100  addli r2, r3, 0
0069b8  3bf800f0  bneq r1, zero, -7652
0069bc  db43fcff  j -7652
0069c0  9f0e0fc9  addli sp, r30, -7040
0069c4  9f8e0e37  addli sp, sp, 7040
0069c8  00a00300  mfence { lm, sm, gm }
0069cc  00100000  exit
0069d0  00100000  exit
0069d4  00100000  exit
0069d8  00100000  exit
0069dc  00100000  exit
0069e0  00100000  exit
0069e4  00100000  exit
0069e8  00100000  exit
0069ec  00100000  exit
0069f0  00100000  exit
0069f4  00100000  exit
0069f8  00100000  exit
0069fc  00100000  exit
006a00  00100000  exit
006a04  00100000  exit
006a08  00100000  exit
006a0c  00100000  exit
006a10  00100000  exit
006a14  00100000  exit
006a18  00100000  exit
006a1c  00100000  exit
006a20  00100000  exit
006a24  00100000  exit
006a28  00100000  exit
006a2c  00100000  exit
006a30  00100000  exit
006a34  00100000  exit
006a38  00100000  exit
006a3c  00100000  exit
006a40  00100000  exit
006a44  00100000  exit
006a48  00100000  exit
006a4c  00100000  exit
006a50  00100000  exit
006a54  00100000  exit
006a58  00100000  exit
006a5c  00100000  exit
006a60  00100000  exit
006a64  00100000  exit
006a68  00100000  exit
006a6c  00100000  exit
006a70  00100000  exit
006a74  00100000  exit
006a78  00100000  exit
006a7c  00100000  exit
006a80  00100000  exit
006a84  00100000  exit
006a88  00100000  exit
006a8c  00100000  exit
006a90  00100000  exit
006a94  00100000  exit
006a98  00100000  exit
006a9c  00100000  exit
006aa0  00100000  exit
006aa4  00100000  exit
006aa8  00100000  exit
006aac  00100000  exit
006ab0  00100000  exit
006ab4  00100000  exit
006ab8  00100000  exit
006abc  00100000  exit
006ac0  00100000  exit
006ac4  00100000  exit
006ac8  00100000  exit
006acc  00100000  exit
006ad0  00100000  exit
006ad4  00100000  exit
006ad8  00100000  exit
006adc  00100000  exit
006ae0  00100000  exit
006ae4  00100000  exit
006ae8  00100000  exit
006aec  00100000  exit
006af0  00100000  exit
006af4  00100000  exit
006af8  00100000  exit
006afc  00100000  exit
006b00  00100000  exit
006b04  00100000  exit
006b08  00100000  exit
006b0c  00100000  exit
006b10  00100000  exit
006b14  00100000  exit
006b18  00100000  exit
006b1c  00100000  exit
006b20  00100000  exit
006b24  00100000  exit
006b28  00100000  exit
006b2c  00100000  exit
006b30  00100000  exit
006b34  00100000  exit
006b38  00100000  exit
006b3c  00100000  exit
006b40  00100000  exit
006b44  00100000  exit
006b48  00100000  exit
006b4c  00100000  exit
006b50  00100000  exit
006b54  00100000  exit
006b58  00100000  exit
006b5c  00100000  exit
006b60  00100000  exit
006b64  00100000  exit
006b68  00100000  exit
006b6c  00100000  exit
006b70  00100000  exit
006b74  00100000  exit
006b78  00100000  exit
006b7c  00100000  exit
006b80  00100000  exit
006b84  00100000  exit
006b88  00100000  exit
006b8c  00100000  exit
006b90  00100000  exit
006b94  00100000  exit
006b98  00100000  exit
006b9c  00100000  exit
006ba0  00100000  exit
006ba4  00100000  exit
006ba8  00100000  exit
006bac  00100000  exit
006bb0  00100000  exit
006bb4  00100000  exit
006bb8  00100000  exit
006bbc  00100000  exit
006bc0  00100000  exit
006bc4  00100000  exit
006bc8  00100000  exit
006bcc  00100000  exit
006bd0  00100000  exit
006bd4  00100000  exit
006bd8  00100000  exit
006bdc  00100000  exit
006be0  00100000  exit
006be4  00100000  exit
006be8  00100000  exit
006bec  00100000  exit
006bf0  00100000  exit
006bf4  00100000  exit
006bf8  00100000  exit
006bfc  00100000  exit
006c00  00100000  exit
006c04  00100000  exit
006c08  00100000  exit
006c0c  00100000  exit
