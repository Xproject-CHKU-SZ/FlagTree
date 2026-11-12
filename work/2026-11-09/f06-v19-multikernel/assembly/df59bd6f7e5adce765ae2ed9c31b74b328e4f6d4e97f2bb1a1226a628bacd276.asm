; SHA-256 df59bd6f7e5adce765ae2ed9c31b74b328e4f6d4e97f2bb1a1226a628bacd276
; P800 Cluster · XTDK LLVM 19 · 4093 / 4093 words decoded
; bound names: triton_per_fused_add_native_layer_norm_0
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
0000dc  9f8e0ee5  addli sp, sp, -3456
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f8e1a  addli r30, sp, 3392
0000ec  abf20000  lui r5, 15
0000f0  9bb12000  slli r3, r1, 2
0000f4  1f010100  addli r2, r2, 0
0000f8  e3434f00  loadli.w r7,  36(r30)
0000fc  63024f00  loadli.w r4,  32(r30)
000100  63035f00  loadli.w r6,  40(r30)
000104  9b92f2ff  ori r5, r5, 4095
000108  0b942110  add.s r8, r3, r2
00010c  0b924320  mul.s r4, r7, r4
000110  9f042440  addli r9, r8, 8208
000114  0b126220  mul.s r4, r4, r6
000118  670e9fe8  storeli.w r9, -2848(r30)
00011c  73e00400  stores.w zero, 0(r9)
000120  80540002  load_param_i r9, 0
000124  00a00300  mfence { lm, sm, gm }
000128  80a10204  csr_set csr3, r5
00012c  00d00100  sync_group
000130  674e8fe8  storeli.w r8, -2844(r30)
000134  73600400  stores.w zero, 0(r8)
000138  00a00300  mfence { lm, sm, gm }
00013c  e7005fee  storeli.w r5, -2296(r30)
000140  80a10204  csr_set csr3, r5
000144  00d00100  sync_group
000148  e74d4fe8  storeli.w r4, -2852(r30)
00014c  4b61921e  ble.s r4, r9, 15448
000150  1f021000  addli r4, zero, 8
000154  1f140000  addli r8, zero, 1
000158  1f060ff8  addli r12, r30, -1024
00015c  ab0d807f  lui r27, 522240
000160  ab0b4000  lui r23, 1024
000164  eea5b562  vxor.u.mz vr11{mr1}, vr11, vr11
000168  0b924030  div.s r4, r1, r4
00016c  e70d4fe8  storeli.w r4, -2856(r30)
000170  1b323200  slli r4, r4, 3
000174  0b934018  sub.s r6, r1, r4
000178  6b528f00  load.d r[5:6], 8(r30)
00017c  9b807000  andi r1, r1, 7
000180  1b357300  slli r10, r6, 7
000184  00d30002  load_param_i r6, 1
000188  67401fee  storeli.w r1, -2300(r30)
00018c  ab700000  lui r1, 7
000190  670d6fe8  storeli.w r6, -2864(r30)
000194  1b131500  ori r6, r10, 1
000198  1b9af0ff  ori r20, r1, 4095
00019c  9b151501  ori r11, r10, 17
0001a0  674dafe8  storeli.w r10, -2860(r30)
0001a4  e74c6fe8  storeli.w r6, -2868(r30)
0001a8  1b132500  ori r6, r10, 2
0001ac  e748bfe8  storeli.w r11, -2932(r30)
0001b0  9f150000  addli r11, zero, 1
0001b4  e70f4fef  storeli.w r20, -2056(r30)
0001b8  e70c6fe8  storeli.w r6, -2872(r30)
0001bc  1b133500  ori r6, r10, 3
0001c0  674c6fe8  storeli.w r6, -2876(r30)
0001c4  1b134500  ori r6, r10, 4
0001c8  670c6fe8  storeli.w r6, -2880(r30)
0001cc  1b135500  ori r6, r10, 5
0001d0  e74b6fe8  storeli.w r6, -2884(r30)
0001d4  1b136500  ori r6, r10, 6
0001d8  e70b6fe8  storeli.w r6, -2888(r30)
0001dc  1b137500  ori r6, r10, 7
0001e0  674b6fe8  storeli.w r6, -2892(r30)
0001e4  1b138500  ori r6, r10, 8
0001e8  670b6fe8  storeli.w r6, -2896(r30)
0001ec  1b139500  ori r6, r10, 9
0001f0  e74a6fe8  storeli.w r6, -2900(r30)
0001f4  1b13a500  ori r6, r10, 10
0001f8  e70a6fe8  storeli.w r6, -2904(r30)
0001fc  1b13b500  ori r6, r10, 11
000200  674a6fe8  storeli.w r6, -2908(r30)
000204  1b13c500  ori r6, r10, 12
000208  670a6fe8  storeli.w r6, -2912(r30)
00020c  1b13d500  ori r6, r10, 13
000210  e7496fe8  storeli.w r6, -2916(r30)
000214  1b13e500  ori r6, r10, 14
000218  e7096fe8  storeli.w r6, -2920(r30)
00021c  1b13f500  ori r6, r10, 15
000220  67496fe8  storeli.w r6, -2924(r30)
000224  1b130501  ori r6, r10, 16
000228  67096fe8  storeli.w r6, -2928(r30)
00022c  33130528  sext_int2long r[7:8], r10
000230  17338302  sll.d r[7:8], r[7:8], r8
000234  2bf4ffff  lui r8, 1048575
000238  0b226210  add.ul r[5:6], r[5:6], r[7:8]
00023c  1f030fe9  addli r6, r30, -2944
000240  73304300  store.d r[5:6], 0(r6)
000244  1b1204fe  ori r4, r8, 4064
000248  9b122501  ori r5, r10, 18
00024c  97814100  and r3, r3, r4
000250  e7475fe8  storeli.w r5, -2948(r30)
000254  9f020002  addli r5, zero, 256
000258  8b912110  add.s r3, r3, r2
00025c  2bf1ff7f  lui r2, 524287
000260  9b10f1ff  ori r1, r2, 4095
000264  e74e3fe8  storeli.w r3, -2836(r30)
000268  e74f1fee  storeli.w r1, -2052(r30)
00026c  ab10833a  lui r1, 239665
000270  9b90f026  ori r1, r1, 623
000274  e7071fe8  storeli.w r1, -2952(r30)
000278  9b103501  ori r1, r10, 19
00027c  67471fe8  storeli.w r1, -2956(r30)
000280  9b104501  ori r1, r10, 20
000284  67071fe8  storeli.w r1, -2960(r30)
000288  9b105501  ori r1, r10, 21
00028c  e7461fe8  storeli.w r1, -2964(r30)
000290  9b106501  ori r1, r10, 22
000294  e7061fe8  storeli.w r1, -2968(r30)
000298  9b107501  ori r1, r10, 23
00029c  67461fe8  storeli.w r1, -2972(r30)
0002a0  9b108501  ori r1, r10, 24
0002a4  67061fe8  storeli.w r1, -2976(r30)
0002a8  9b109501  ori r1, r10, 25
0002ac  e7451fe8  storeli.w r1, -2980(r30)
0002b0  9b10a501  ori r1, r10, 26
0002b4  e7051fe8  storeli.w r1, -2984(r30)
0002b8  9b10b501  ori r1, r10, 27
0002bc  67451fe8  storeli.w r1, -2988(r30)
0002c0  9b10c501  ori r1, r10, 28
0002c4  67051fe8  storeli.w r1, -2992(r30)
0002c8  9b10d501  ori r1, r10, 29
0002cc  e7441fe8  storeli.w r1, -2996(r30)
0002d0  9b10e501  ori r1, r10, 30
0002d4  e7041fe8  storeli.w r1, -3000(r30)
0002d8  9b10f501  ori r1, r10, 31
0002dc  67441fe8  storeli.w r1, -3004(r30)
0002e0  9b100502  ori r1, r10, 32
0002e4  67041fe8  storeli.w r1, -3008(r30)
0002e8  9b101502  ori r1, r10, 33
0002ec  e7431fe8  storeli.w r1, -3012(r30)
0002f0  9b102502  ori r1, r10, 34
0002f4  e7031fe8  storeli.w r1, -3016(r30)
0002f8  9b103502  ori r1, r10, 35
0002fc  67431fe8  storeli.w r1, -3020(r30)
000300  9b104502  ori r1, r10, 36
000304  67031fe8  storeli.w r1, -3024(r30)
000308  9b105502  ori r1, r10, 37
00030c  e7421fe8  storeli.w r1, -3028(r30)
000310  9b106502  ori r1, r10, 38
000314  e7021fe8  storeli.w r1, -3032(r30)
000318  9b107502  ori r1, r10, 39
00031c  67421fe8  storeli.w r1, -3036(r30)
000320  9b108502  ori r1, r10, 40
000324  67021fe8  storeli.w r1, -3040(r30)
000328  9b109502  ori r1, r10, 41
00032c  e7411fe8  storeli.w r1, -3044(r30)
000330  9b10a502  ori r1, r10, 42
000334  e7011fe8  storeli.w r1, -3048(r30)
000338  9b10b502  ori r1, r10, 43
00033c  67411fe8  storeli.w r1, -3052(r30)
000340  9b10c502  ori r1, r10, 44
000344  67011fe8  storeli.w r1, -3056(r30)
000348  9b10d502  ori r1, r10, 45
00034c  e7401fe8  storeli.w r1, -3060(r30)
000350  9b10e502  ori r1, r10, 46
000354  e7001fe8  storeli.w r1, -3064(r30)
000358  9b10f502  ori r1, r10, 47
00035c  67401fe8  storeli.w r1, -3068(r30)
000360  9b100503  ori r1, r10, 48
000364  67001fe8  storeli.w r1, -3072(r30)
000368  9b101503  ori r1, r10, 49
00036c  e74f1fe6  storeli.w r1, -3076(r30)
000370  9b102503  ori r1, r10, 50
000374  e70f1fe6  storeli.w r1, -3080(r30)
000378  9b103503  ori r1, r10, 51
00037c  674f1fe6  storeli.w r1, -3084(r30)
000380  9b104503  ori r1, r10, 52
000384  670f1fe6  storeli.w r1, -3088(r30)
000388  9b105503  ori r1, r10, 53
00038c  e74e1fe6  storeli.w r1, -3092(r30)
000390  9b106503  ori r1, r10, 54
000394  e70e1fe6  storeli.w r1, -3096(r30)
000398  9b107503  ori r1, r10, 55
00039c  674e1fe6  storeli.w r1, -3100(r30)
0003a0  9b108503  ori r1, r10, 56
0003a4  670e1fe6  storeli.w r1, -3104(r30)
0003a8  9b109503  ori r1, r10, 57
0003ac  e74d1fe6  storeli.w r1, -3108(r30)
0003b0  9b10a503  ori r1, r10, 58
0003b4  e70d1fe6  storeli.w r1, -3112(r30)
0003b8  9b10b503  ori r1, r10, 59
0003bc  674d1fe6  storeli.w r1, -3116(r30)
0003c0  9b10c503  ori r1, r10, 60
0003c4  670d1fe6  storeli.w r1, -3120(r30)
0003c8  9b10d503  ori r1, r10, 61
0003cc  e74c1fe6  storeli.w r1, -3124(r30)
0003d0  9b10e503  ori r1, r10, 62
0003d4  e70c1fe6  storeli.w r1, -3128(r30)
0003d8  9b10f503  ori r1, r10, 63
0003dc  674c1fe6  storeli.w r1, -3132(r30)
0003e0  9b100504  ori r1, r10, 64
0003e4  670c1fe6  storeli.w r1, -3136(r30)
0003e8  9b101504  ori r1, r10, 65
0003ec  e74b1fe6  storeli.w r1, -3140(r30)
0003f0  9b102504  ori r1, r10, 66
0003f4  e70b1fe6  storeli.w r1, -3144(r30)
0003f8  9b103504  ori r1, r10, 67
0003fc  674b1fe6  storeli.w r1, -3148(r30)
000400  9b104504  ori r1, r10, 68
000404  670b1fe6  storeli.w r1, -3152(r30)
000408  9b105504  ori r1, r10, 69
00040c  e74a1fe6  storeli.w r1, -3156(r30)
000410  9b106504  ori r1, r10, 70
000414  e70a1fe6  storeli.w r1, -3160(r30)
000418  9b107504  ori r1, r10, 71
00041c  674a1fe6  storeli.w r1, -3164(r30)
000420  9b108504  ori r1, r10, 72
000424  670a1fe6  storeli.w r1, -3168(r30)
000428  9b109504  ori r1, r10, 73
00042c  e7491fe6  storeli.w r1, -3172(r30)
000430  9b10a504  ori r1, r10, 74
000434  e7091fe6  storeli.w r1, -3176(r30)
000438  9b10b504  ori r1, r10, 75
00043c  67491fe6  storeli.w r1, -3180(r30)
000440  9b10c504  ori r1, r10, 76
000444  67091fe6  storeli.w r1, -3184(r30)
000448  9b10d504  ori r1, r10, 77
00044c  e7481fe6  storeli.w r1, -3188(r30)
000450  9b10e504  ori r1, r10, 78
000454  e7081fe6  storeli.w r1, -3192(r30)
000458  9b10f504  ori r1, r10, 79
00045c  67481fe6  storeli.w r1, -3196(r30)
000460  9b100505  ori r1, r10, 80
000464  67081fe6  storeli.w r1, -3200(r30)
000468  9b101505  ori r1, r10, 81
00046c  e7471fe6  storeli.w r1, -3204(r30)
000470  9b102505  ori r1, r10, 82
000474  e7071fe6  storeli.w r1, -3208(r30)
000478  9b103505  ori r1, r10, 83
00047c  67471fe6  storeli.w r1, -3212(r30)
000480  9b104505  ori r1, r10, 84
000484  67071fe6  storeli.w r1, -3216(r30)
000488  9b105505  ori r1, r10, 85
00048c  e7461fe6  storeli.w r1, -3220(r30)
000490  9b106505  ori r1, r10, 86
000494  e7061fe6  storeli.w r1, -3224(r30)
000498  9b107505  ori r1, r10, 87
00049c  67461fe6  storeli.w r1, -3228(r30)
0004a0  9b108505  ori r1, r10, 88
0004a4  67061fe6  storeli.w r1, -3232(r30)
0004a8  9b109505  ori r1, r10, 89
0004ac  e7451fe6  storeli.w r1, -3236(r30)
0004b0  9b10a505  ori r1, r10, 90
0004b4  e7051fe6  storeli.w r1, -3240(r30)
0004b8  9b10b505  ori r1, r10, 91
0004bc  67451fe6  storeli.w r1, -3244(r30)
0004c0  9b10c505  ori r1, r10, 92
0004c4  67051fe6  storeli.w r1, -3248(r30)
0004c8  9b10d505  ori r1, r10, 93
0004cc  e7441fe6  storeli.w r1, -3252(r30)
0004d0  9b10e505  ori r1, r10, 94
0004d4  e7041fe6  storeli.w r1, -3256(r30)
0004d8  9b10f505  ori r1, r10, 95
0004dc  67441fe6  storeli.w r1, -3260(r30)
0004e0  9b100506  ori r1, r10, 96
0004e4  67041fe6  storeli.w r1, -3264(r30)
0004e8  9b101506  ori r1, r10, 97
0004ec  e7431fe6  storeli.w r1, -3268(r30)
0004f0  9b102506  ori r1, r10, 98
0004f4  e7031fe6  storeli.w r1, -3272(r30)
0004f8  9b103506  ori r1, r10, 99
0004fc  67431fe6  storeli.w r1, -3276(r30)
000500  9b104506  ori r1, r10, 100
000504  67031fe6  storeli.w r1, -3280(r30)
000508  9b105506  ori r1, r10, 101
00050c  e7421fe6  storeli.w r1, -3284(r30)
000510  9b106506  ori r1, r10, 102
000514  e7021fe6  storeli.w r1, -3288(r30)
000518  9b107506  ori r1, r10, 103
00051c  67421fe6  storeli.w r1, -3292(r30)
000520  9b108506  ori r1, r10, 104
000524  67021fe6  storeli.w r1, -3296(r30)
000528  9b109506  ori r1, r10, 105
00052c  e7411fe6  storeli.w r1, -3300(r30)
000530  9b10a506  ori r1, r10, 106
000534  e7011fe6  storeli.w r1, -3304(r30)
000538  9b10b506  ori r1, r10, 107
00053c  67411fe6  storeli.w r1, -3308(r30)
000540  9b10c506  ori r1, r10, 108
000544  67011fe6  storeli.w r1, -3312(r30)
000548  9b10d506  ori r1, r10, 109
00054c  e7401fe6  storeli.w r1, -3316(r30)
000550  9b10e506  ori r1, r10, 110
000554  e7001fe6  storeli.w r1, -3320(r30)
000558  9b10f506  ori r1, r10, 111
00055c  67401fe6  storeli.w r1, -3324(r30)
000560  9b100507  ori r1, r10, 112
000564  67001fe6  storeli.w r1, -3328(r30)
000568  9b101507  ori r1, r10, 113
00056c  e74f1fe4  storeli.w r1, -3332(r30)
000570  9b102507  ori r1, r10, 114
000574  e70f1fe4  storeli.w r1, -3336(r30)
000578  9b103507  ori r1, r10, 115
00057c  674f1fe4  storeli.w r1, -3340(r30)
000580  9b104507  ori r1, r10, 116
000584  670f1fe4  storeli.w r1, -3344(r30)
000588  9b105507  ori r1, r10, 117
00058c  e74e1fe4  storeli.w r1, -3348(r30)
000590  9b106507  ori r1, r10, 118
000594  e70e1fe4  storeli.w r1, -3352(r30)
000598  9b107507  ori r1, r10, 119
00059c  674e1fe4  storeli.w r1, -3356(r30)
0005a0  9b108507  ori r1, r10, 120
0005a4  670e1fe4  storeli.w r1, -3360(r30)
0005a8  9b109507  ori r1, r10, 121
0005ac  e74d1fe4  storeli.w r1, -3364(r30)
0005b0  9b10a507  ori r1, r10, 122
0005b4  e70d1fe4  storeli.w r1, -3368(r30)
0005b8  9b10b507  ori r1, r10, 123
0005bc  674d1fe4  storeli.w r1, -3372(r30)
0005c0  9b10c507  ori r1, r10, 124
0005c4  670d1fe4  storeli.w r1, -3376(r30)
0005c8  9b10d507  ori r1, r10, 125
0005cc  e74c1fe4  storeli.w r1, -3380(r30)
0005d0  9b10e507  ori r1, r10, 126
0005d4  e70c1fe4  storeli.w r1, -3384(r30)
0005d8  9b10f507  ori r1, r10, 127
0005dc  674c1fe4  storeli.w r1, -3388(r30)
0005e0  9f802140  addli r1, r3, 8208
0005e4  e70e1fe8  storeli.w r1, -2840(r30)
0005e8  5b510200  j 4744
0005ec  e3022fea  loadli.w r5,  -2800(r30)
0005f0  9f030fef  addli r7, r30, -2176
0005f4  e3003fea  loadli.w r1,  -2792(r30)
0005f8  e3412fea  loadli.w r3,  -2796(r30)
0005fc  9f180000  addli r17, zero, 1
000600  eb570f01  load.d r[16:17], 16(r30)
000604  1f040ff8  addli r8, r30, -1024
000608  9f290000  addli r19, zero, 2
00060c  1f1a0000  addli r20, zero, 1
000610  1f440400  addli r8, r8, 4
000614  b39b0228  sext_int2long r[24:25], r5
000618  e3421fea  loadli.w r5,  -2804(r30)
00061c  b3900028  sext_int2long r[2:3], r1
000620  b3910128  sext_int2long r[4:5], r3
000624  97b01003  sll.d r[2:3], r[2:3], r17
000628  339d0228  sext_int2long r[27:28], r5
00062c  e3021fea  loadli.w r5,  -2808(r30)
000630  b3960228  sext_int2long r[14:15], r5
000634  e3420fea  loadli.w r5,  -2812(r30)
000638  b39a0228  sext_int2long r[22:23], r5
00063c  e3020fea  loadli.w r5,  -2816(r30)
000640  b3950228  sext_int2long r[12:13], r5
000644  e342ffe9  loadli.w r5,  -2820(r30)
000648  b3940228  sext_int2long r[10:11], r5
00064c  e302ffe9  loadli.w r5,  -2824(r30)
000650  b3920228  sext_int2long r[6:7], r5
000654  73b05300  store.d r[6:7], 0(r7)
000658  e342efe9  loadli.w r5,  -2828(r30)
00065c  9f038fee  addli r7, r30, -2240
000660  b3920228  sext_int2long r[6:7], r5
000664  73b05300  store.d r[6:7], 0(r7)
000668  e302efe9  loadli.w r5,  -2832(r30)
00066c  9f03efef  addli r7, r30, -2064
000670  b3920228  sext_int2long r[6:7], r5
000674  73b05300  store.d r[6:7], 0(r7)
000678  97b21103  sll.d r[6:7], r[4:5], r17
00067c  8ba11710  add.ul r[4:5], r[16:17], r[2:3]
000680  ab0000f0  lui r1, 983040
000684  2b0100f0  lui r2, 983040
000688  9f030ff8  addli r7, r30, -1024
00068c  8ba25710  add.ul r[6:7], r[16:17], r[6:7]
000690  17912900  or r2, r19, r2
000694  97901900  or r1, r19, r1
000698  9fa30300  addli r7, r7, 2
00069c  7fb18200  s_lm2gm r2, r8, 0(r[6:7])
0006a0  ffb07100  s_lm2gm r1, r7, 0(r[4:5])
0006a4  97b01b03  sll.d r[2:3], r[24:25], r17
0006a8  97311d03  sll.d r[4:5], r[27:28], r17
0006ac  ab0200f0  lui r5, 983040
0006b0  2b0300f0  lui r6, 983040
0006b4  9f030ff8  addli r7, r30, -1024
0006b8  1f040ff8  addli r8, r30, -1024
0006bc  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
0006c0  8ba13710  add.ul r[4:5], r[16:17], r[4:5]
0006c4  97925900  or r5, r19, r5
0006c8  9fe30300  addli r7, r7, 6
0006cc  17936900  or r6, r19, r6
0006d0  1f041400  addli r8, r8, 8
0006d4  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
0006d8  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
0006dc  97b01603  sll.d r[2:3], r[14:15], r17
0006e0  97b11a03  sll.d r[4:5], r[22:23], r17
0006e4  ab0200f0  lui r5, 983040
0006e8  2b0300f0  lui r6, 983040
0006ec  9f030ff8  addli r7, r30, -1024
0006f0  1f040ff8  addli r8, r30, -1024
0006f4  e3464fed  loadli.w r13,  -2396(r30)
0006f8  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
0006fc  8ba13710  add.ul r[4:5], r[16:17], r[4:5]
000700  97925900  or r5, r19, r5
000704  9fa31300  addli r7, r7, 10
000708  17936900  or r6, r19, r6
00070c  1f441400  addli r8, r8, 12
000710  b3960628  sext_int2long r[14:15], r13
000714  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
000718  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
00071c  97b01503  sll.d r[2:3], r[12:13], r17
000720  97b11403  sll.d r[4:5], r[10:11], r17
000724  ab0200f0  lui r5, 983040
000728  2b0300f0  lui r6, 983040
00072c  9f030ff8  addli r7, r30, -1024
000730  1f040ff8  addli r8, r30, -1024
000734  e3442fed  loadli.w r9,  -2412(r30)
000738  e3453fed  loadli.w r11,  -2404(r30)
00073c  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000740  8ba13710  add.ul r[4:5], r[16:17], r[4:5]
000744  97925900  or r5, r19, r5
000748  9fe31300  addli r7, r7, 14
00074c  17936900  or r6, r19, r6
000750  1f042400  addli r8, r8, 16
000754  b3940428  sext_int2long r[10:11], r9
000758  b3950528  sext_int2long r[12:13], r11
00075c  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
000760  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
000764  9f010fef  addli r3, r30, -2176
000768  9f028fee  addli r5, r30, -2240
00076c  2b0300f0  lui r6, 983040
000770  1f040ff8  addli r8, r30, -1024
000774  9f030ff8  addli r7, r30, -1024
000778  ebd00100  load.d r[2:3], 0(r3)
00077c  ebd10200  load.d r[4:5], 0(r5)
000780  ab0200f0  lui r5, 983040
000784  17936900  or r6, r19, r6
000788  1f442400  addli r8, r8, 20
00078c  9fa32300  addli r7, r7, 18
000790  97925900  or r5, r19, r5
000794  97b11103  sll.d r[4:5], r[4:5], r17
000798  97b01003  sll.d r[2:3], r[2:3], r17
00079c  8ba13710  add.ul r[4:5], r[16:17], r[4:5]
0007a0  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
0007a4  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
0007a8  9f01efef  addli r3, r30, -2064
0007ac  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
0007b0  e3423fea  loadli.w r5,  -2788(r30)
0007b4  1f020ff8  addli r4, r30, -1024
0007b8  e3431fed  loadli.w r7,  -2420(r30)
0007bc  ebd00100  load.d r[2:3], 0(r3)
0007c0  ab0100f0  lui r3, 983040
0007c4  1f622200  addli r4, r4, 22
0007c8  b3920228  sext_int2long r[6:7], r5
0007cc  b3930328  sext_int2long r[8:9], r7
0007d0  97913900  or r3, r19, r3
0007d4  97b01003  sll.d r[2:3], r[2:3], r17
0007d8  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
0007dc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0007e0  97b01203  sll.d r[2:3], r[6:7], r17
0007e4  e3024fea  loadli.w r5,  -2784(r30)
0007e8  ab0100f0  lui r3, 983040
0007ec  1f020ff8  addli r4, r30, -1024
0007f0  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
0007f4  97913900  or r3, r19, r3
0007f8  1f023200  addli r4, r4, 24
0007fc  b3920228  sext_int2long r[6:7], r5
000800  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000804  ab0100f0  lui r3, 983040
000808  1f020ff8  addli r4, r30, -1024
00080c  97b01203  sll.d r[2:3], r[6:7], r17
000810  e3424fea  loadli.w r5,  -2780(r30)
000814  97913900  or r3, r19, r3
000818  1f223200  addli r4, r4, 26
00081c  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000820  b3920228  sext_int2long r[6:7], r5
000824  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000828  ab0100f0  lui r3, 983040
00082c  1f020ff8  addli r4, r30, -1024
000830  97b01203  sll.d r[2:3], r[6:7], r17
000834  e3025fea  loadli.w r5,  -2776(r30)
000838  97913900  or r3, r19, r3
00083c  1f423200  addli r4, r4, 28
000840  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000844  b3920228  sext_int2long r[6:7], r5
000848  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00084c  ab0100f0  lui r3, 983040
000850  1f020ff8  addli r4, r30, -1024
000854  97b01203  sll.d r[2:3], r[6:7], r17
000858  e3425fea  loadli.w r5,  -2772(r30)
00085c  97913900  or r3, r19, r3
000860  1f623200  addli r4, r4, 30
000864  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000868  b3920228  sext_int2long r[6:7], r5
00086c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000870  ab0100f0  lui r3, 983040
000874  1f020ff8  addli r4, r30, -1024
000878  97b01203  sll.d r[2:3], r[6:7], r17
00087c  e3026fea  loadli.w r5,  -2768(r30)
000880  97913900  or r3, r19, r3
000884  1f024200  addli r4, r4, 32
000888  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
00088c  b3920228  sext_int2long r[6:7], r5
000890  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000894  ab0100f0  lui r3, 983040
000898  1f020ff8  addli r4, r30, -1024
00089c  97b01203  sll.d r[2:3], r[6:7], r17
0008a0  e3426fea  loadli.w r5,  -2764(r30)
0008a4  97913900  or r3, r19, r3
0008a8  1f224200  addli r4, r4, 34
0008ac  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
0008b0  b3920228  sext_int2long r[6:7], r5
0008b4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0008b8  ab0100f0  lui r3, 983040
0008bc  1f020ff8  addli r4, r30, -1024
0008c0  97b01203  sll.d r[2:3], r[6:7], r17
0008c4  e3027fea  loadli.w r5,  -2760(r30)
0008c8  97913900  or r3, r19, r3
0008cc  1f424200  addli r4, r4, 36
0008d0  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
0008d4  b3920228  sext_int2long r[6:7], r5
0008d8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0008dc  ab0100f0  lui r3, 983040
0008e0  1f020ff8  addli r4, r30, -1024
0008e4  97b01203  sll.d r[2:3], r[6:7], r17
0008e8  e3427fea  loadli.w r5,  -2756(r30)
0008ec  97913900  or r3, r19, r3
0008f0  1f624200  addli r4, r4, 38
0008f4  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
0008f8  b3920228  sext_int2long r[6:7], r5
0008fc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000900  ab0100f0  lui r3, 983040
000904  1f020ff8  addli r4, r30, -1024
000908  97b01203  sll.d r[2:3], r[6:7], r17
00090c  e3028fea  loadli.w r5,  -2752(r30)
000910  97913900  or r3, r19, r3
000914  1f025200  addli r4, r4, 40
000918  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
00091c  b3920228  sext_int2long r[6:7], r5
000920  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000924  ab0100f0  lui r3, 983040
000928  1f020ff8  addli r4, r30, -1024
00092c  97b01203  sll.d r[2:3], r[6:7], r17
000930  e3428fea  loadli.w r5,  -2748(r30)
000934  97913900  or r3, r19, r3
000938  1f225200  addli r4, r4, 42
00093c  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000940  b3920228  sext_int2long r[6:7], r5
000944  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000948  ab0100f0  lui r3, 983040
00094c  1f020ff8  addli r4, r30, -1024
000950  97b01203  sll.d r[2:3], r[6:7], r17
000954  e3029fea  loadli.w r5,  -2744(r30)
000958  97913900  or r3, r19, r3
00095c  1f425200  addli r4, r4, 44
000960  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000964  b3920228  sext_int2long r[6:7], r5
000968  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00096c  ab0100f0  lui r3, 983040
000970  1f020ff8  addli r4, r30, -1024
000974  97b01203  sll.d r[2:3], r[6:7], r17
000978  e3429fea  loadli.w r5,  -2740(r30)
00097c  97913900  or r3, r19, r3
000980  1f625200  addli r4, r4, 46
000984  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000988  b3920228  sext_int2long r[6:7], r5
00098c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000990  ab0100f0  lui r3, 983040
000994  1f020ff8  addli r4, r30, -1024
000998  97b01203  sll.d r[2:3], r[6:7], r17
00099c  e302afea  loadli.w r5,  -2736(r30)
0009a0  97913900  or r3, r19, r3
0009a4  1f026200  addli r4, r4, 48
0009a8  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
0009ac  b3920228  sext_int2long r[6:7], r5
0009b0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0009b4  ab0100f0  lui r3, 983040
0009b8  1f020ff8  addli r4, r30, -1024
0009bc  97b01203  sll.d r[2:3], r[6:7], r17
0009c0  e342afea  loadli.w r5,  -2732(r30)
0009c4  97913900  or r3, r19, r3
0009c8  1f226200  addli r4, r4, 50
0009cc  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
0009d0  b3920228  sext_int2long r[6:7], r5
0009d4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0009d8  ab0100f0  lui r3, 983040
0009dc  1f020ff8  addli r4, r30, -1024
0009e0  97b01203  sll.d r[2:3], r[6:7], r17
0009e4  e302bfea  loadli.w r5,  -2728(r30)
0009e8  97913900  or r3, r19, r3
0009ec  1f426200  addli r4, r4, 52
0009f0  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
0009f4  b3920228  sext_int2long r[6:7], r5
0009f8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0009fc  ab0100f0  lui r3, 983040
000a00  1f020ff8  addli r4, r30, -1024
000a04  97b01203  sll.d r[2:3], r[6:7], r17
000a08  e342bfea  loadli.w r5,  -2724(r30)
000a0c  97913900  or r3, r19, r3
000a10  1f626200  addli r4, r4, 54
000a14  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000a18  b3920228  sext_int2long r[6:7], r5
000a1c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a20  ab0100f0  lui r3, 983040
000a24  1f020ff8  addli r4, r30, -1024
000a28  97b01203  sll.d r[2:3], r[6:7], r17
000a2c  e302cfea  loadli.w r5,  -2720(r30)
000a30  97913900  or r3, r19, r3
000a34  1f027200  addli r4, r4, 56
000a38  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000a3c  b3920228  sext_int2long r[6:7], r5
000a40  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a44  ab0100f0  lui r3, 983040
000a48  1f020ff8  addli r4, r30, -1024
000a4c  97b01203  sll.d r[2:3], r[6:7], r17
000a50  e342cfea  loadli.w r5,  -2716(r30)
000a54  97913900  or r3, r19, r3
000a58  1f227200  addli r4, r4, 58
000a5c  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000a60  b3920228  sext_int2long r[6:7], r5
000a64  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a68  ab0100f0  lui r3, 983040
000a6c  1f020ff8  addli r4, r30, -1024
000a70  97b01203  sll.d r[2:3], r[6:7], r17
000a74  e302dfea  loadli.w r5,  -2712(r30)
000a78  97913900  or r3, r19, r3
000a7c  1f427200  addli r4, r4, 60
000a80  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000a84  b3920228  sext_int2long r[6:7], r5
000a88  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a8c  ab0100f0  lui r3, 983040
000a90  1f020ff8  addli r4, r30, -1024
000a94  97b01203  sll.d r[2:3], r[6:7], r17
000a98  e342dfea  loadli.w r5,  -2708(r30)
000a9c  97913900  or r3, r19, r3
000aa0  1f627200  addli r4, r4, 62
000aa4  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000aa8  b3920228  sext_int2long r[6:7], r5
000aac  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ab0  6302efea  loadli.w r4,  -2704(r30)
000ab4  ab0100f0  lui r3, 983040
000ab8  97b01203  sll.d r[2:3], r[6:7], r17
000abc  6343dfed  loadli.w r6,  -2324(r30)
000ac0  97913900  or r3, r19, r3
000ac4  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000ac8  33120228  sext_int2long r[5:6], r4
000acc  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
000ad0  97301203  sll.d r[2:3], r[5:6], r17
000ad4  e342efea  loadli.w r5,  -2700(r30)
000ad8  ab0100f0  lui r3, 983040
000adc  1f020ff8  addli r4, r30, -1024
000ae0  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000ae4  97913900  or r3, r19, r3
000ae8  1f228200  addli r4, r4, 66
000aec  b3920228  sext_int2long r[6:7], r5
000af0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000af4  ab0100f0  lui r3, 983040
000af8  1f020ff8  addli r4, r30, -1024
000afc  97b01203  sll.d r[2:3], r[6:7], r17
000b00  e302ffea  loadli.w r5,  -2696(r30)
000b04  97913900  or r3, r19, r3
000b08  1f428200  addli r4, r4, 68
000b0c  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000b10  b3920228  sext_int2long r[6:7], r5
000b14  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b18  ab0100f0  lui r3, 983040
000b1c  1f020ff8  addli r4, r30, -1024
000b20  97b01203  sll.d r[2:3], r[6:7], r17
000b24  e342ffea  loadli.w r5,  -2692(r30)
000b28  97913900  or r3, r19, r3
000b2c  1f628200  addli r4, r4, 70
000b30  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000b34  b3920228  sext_int2long r[6:7], r5
000b38  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b3c  ab0100f0  lui r3, 983040
000b40  1f020ff8  addli r4, r30, -1024
000b44  97b01203  sll.d r[2:3], r[6:7], r17
000b48  e3020feb  loadli.w r5,  -2688(r30)
000b4c  97913900  or r3, r19, r3
000b50  1f029200  addli r4, r4, 72
000b54  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000b58  b3920228  sext_int2long r[6:7], r5
000b5c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b60  ab0100f0  lui r3, 983040
000b64  1f020ff8  addli r4, r30, -1024
000b68  97b01203  sll.d r[2:3], r[6:7], r17
000b6c  e3420feb  loadli.w r5,  -2684(r30)
000b70  97913900  or r3, r19, r3
000b74  1f229200  addli r4, r4, 74
000b78  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000b7c  b3920228  sext_int2long r[6:7], r5
000b80  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b84  ab0100f0  lui r3, 983040
000b88  1f020ff8  addli r4, r30, -1024
000b8c  97b01203  sll.d r[2:3], r[6:7], r17
000b90  e3021feb  loadli.w r5,  -2680(r30)
000b94  97913900  or r3, r19, r3
000b98  1f429200  addli r4, r4, 76
000b9c  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000ba0  b3920228  sext_int2long r[6:7], r5
000ba4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ba8  ab0100f0  lui r3, 983040
000bac  1f020ff8  addli r4, r30, -1024
000bb0  97b01203  sll.d r[2:3], r[6:7], r17
000bb4  e3421feb  loadli.w r5,  -2676(r30)
000bb8  97913900  or r3, r19, r3
000bbc  1f629200  addli r4, r4, 78
000bc0  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000bc4  b3920228  sext_int2long r[6:7], r5
000bc8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000bcc  ab0100f0  lui r3, 983040
000bd0  1f020ff8  addli r4, r30, -1024
000bd4  97b01203  sll.d r[2:3], r[6:7], r17
000bd8  e3022feb  loadli.w r5,  -2672(r30)
000bdc  97913900  or r3, r19, r3
000be0  1f02a200  addli r4, r4, 80
000be4  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000be8  b3920228  sext_int2long r[6:7], r5
000bec  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000bf0  ab0100f0  lui r3, 983040
000bf4  1f020ff8  addli r4, r30, -1024
000bf8  97b01203  sll.d r[2:3], r[6:7], r17
000bfc  e3422feb  loadli.w r5,  -2668(r30)
000c00  97913900  or r3, r19, r3
000c04  1f22a200  addli r4, r4, 82
000c08  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000c0c  b3920228  sext_int2long r[6:7], r5
000c10  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c14  ab0100f0  lui r3, 983040
000c18  1f020ff8  addli r4, r30, -1024
000c1c  97b01203  sll.d r[2:3], r[6:7], r17
000c20  e3023feb  loadli.w r5,  -2664(r30)
000c24  97913900  or r3, r19, r3
000c28  1f42a200  addli r4, r4, 84
000c2c  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000c30  b3920228  sext_int2long r[6:7], r5
000c34  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c38  ab0100f0  lui r3, 983040
000c3c  1f020ff8  addli r4, r30, -1024
000c40  97b01203  sll.d r[2:3], r[6:7], r17
000c44  e3423feb  loadli.w r5,  -2660(r30)
000c48  97913900  or r3, r19, r3
000c4c  1f62a200  addli r4, r4, 86
000c50  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000c54  b3920228  sext_int2long r[6:7], r5
000c58  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c5c  ab0100f0  lui r3, 983040
000c60  1f020ff8  addli r4, r30, -1024
000c64  97b01203  sll.d r[2:3], r[6:7], r17
000c68  e3024feb  loadli.w r5,  -2656(r30)
000c6c  97913900  or r3, r19, r3
000c70  1f02b200  addli r4, r4, 88
000c74  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000c78  b3920228  sext_int2long r[6:7], r5
000c7c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c80  ab0100f0  lui r3, 983040
000c84  1f020ff8  addli r4, r30, -1024
000c88  97b01203  sll.d r[2:3], r[6:7], r17
000c8c  e3424feb  loadli.w r5,  -2652(r30)
000c90  97913900  or r3, r19, r3
000c94  1f22b200  addli r4, r4, 90
000c98  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000c9c  b3920228  sext_int2long r[6:7], r5
000ca0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ca4  ab0100f0  lui r3, 983040
000ca8  1f020ff8  addli r4, r30, -1024
000cac  97b01203  sll.d r[2:3], r[6:7], r17
000cb0  e3025feb  loadli.w r5,  -2648(r30)
000cb4  97913900  or r3, r19, r3
000cb8  1f42b200  addli r4, r4, 92
000cbc  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000cc0  b3920228  sext_int2long r[6:7], r5
000cc4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000cc8  ab0100f0  lui r3, 983040
000ccc  1f020ff8  addli r4, r30, -1024
000cd0  97b01203  sll.d r[2:3], r[6:7], r17
000cd4  e3425feb  loadli.w r5,  -2644(r30)
000cd8  97913900  or r3, r19, r3
000cdc  1f62b200  addli r4, r4, 94
000ce0  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000ce4  b3920228  sext_int2long r[6:7], r5
000ce8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000cec  ab0100f0  lui r3, 983040
000cf0  1f020ff8  addli r4, r30, -1024
000cf4  97b01203  sll.d r[2:3], r[6:7], r17
000cf8  e3026feb  loadli.w r5,  -2640(r30)
000cfc  97913900  or r3, r19, r3
000d00  1f02c200  addli r4, r4, 96
000d04  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000d08  b3920228  sext_int2long r[6:7], r5
000d0c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d10  ab0100f0  lui r3, 983040
000d14  1f020ff8  addli r4, r30, -1024
000d18  97b01203  sll.d r[2:3], r[6:7], r17
000d1c  e3426feb  loadli.w r5,  -2636(r30)
000d20  97913900  or r3, r19, r3
000d24  1f22c200  addli r4, r4, 98
000d28  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000d2c  b3920228  sext_int2long r[6:7], r5
000d30  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d34  ab0100f0  lui r3, 983040
000d38  1f020ff8  addli r4, r30, -1024
000d3c  97b01203  sll.d r[2:3], r[6:7], r17
000d40  e3027feb  loadli.w r5,  -2632(r30)
000d44  97913900  or r3, r19, r3
000d48  1f42c200  addli r4, r4, 100
000d4c  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000d50  b3920228  sext_int2long r[6:7], r5
000d54  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d58  ab0100f0  lui r3, 983040
000d5c  1f020ff8  addli r4, r30, -1024
000d60  97b01203  sll.d r[2:3], r[6:7], r17
000d64  e3427feb  loadli.w r5,  -2628(r30)
000d68  97913900  or r3, r19, r3
000d6c  1f62c200  addli r4, r4, 102
000d70  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000d74  b3920228  sext_int2long r[6:7], r5
000d78  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d7c  ab0100f0  lui r3, 983040
000d80  1f020ff8  addli r4, r30, -1024
000d84  97b01203  sll.d r[2:3], r[6:7], r17
000d88  e3028feb  loadli.w r5,  -2624(r30)
000d8c  97913900  or r3, r19, r3
000d90  1f02d200  addli r4, r4, 104
000d94  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000d98  b3920228  sext_int2long r[6:7], r5
000d9c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000da0  ab0100f0  lui r3, 983040
000da4  1f020ff8  addli r4, r30, -1024
000da8  97b01203  sll.d r[2:3], r[6:7], r17
000dac  e3428feb  loadli.w r5,  -2620(r30)
000db0  97913900  or r3, r19, r3
000db4  1f22d200  addli r4, r4, 106
000db8  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000dbc  b3920228  sext_int2long r[6:7], r5
000dc0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000dc4  ab0100f0  lui r3, 983040
000dc8  1f020ff8  addli r4, r30, -1024
000dcc  97b01203  sll.d r[2:3], r[6:7], r17
000dd0  e3029feb  loadli.w r5,  -2616(r30)
000dd4  97913900  or r3, r19, r3
000dd8  1f42d200  addli r4, r4, 108
000ddc  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000de0  b3920228  sext_int2long r[6:7], r5
000de4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000de8  ab0100f0  lui r3, 983040
000dec  1f020ff8  addli r4, r30, -1024
000df0  97b01203  sll.d r[2:3], r[6:7], r17
000df4  e3429feb  loadli.w r5,  -2612(r30)
000df8  97913900  or r3, r19, r3
000dfc  1f62d200  addli r4, r4, 110
000e00  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000e04  b3920228  sext_int2long r[6:7], r5
000e08  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e0c  ab0100f0  lui r3, 983040
000e10  1f020ff8  addli r4, r30, -1024
000e14  97b01203  sll.d r[2:3], r[6:7], r17
000e18  e302afeb  loadli.w r5,  -2608(r30)
000e1c  97913900  or r3, r19, r3
000e20  1f02e200  addli r4, r4, 112
000e24  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000e28  b3920228  sext_int2long r[6:7], r5
000e2c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e30  ab0100f0  lui r3, 983040
000e34  1f020ff8  addli r4, r30, -1024
000e38  97b01203  sll.d r[2:3], r[6:7], r17
000e3c  e342afeb  loadli.w r5,  -2604(r30)
000e40  97913900  or r3, r19, r3
000e44  1f22e200  addli r4, r4, 114
000e48  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000e4c  b3920228  sext_int2long r[6:7], r5
000e50  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e54  ab0100f0  lui r3, 983040
000e58  1f020ff8  addli r4, r30, -1024
000e5c  97b01203  sll.d r[2:3], r[6:7], r17
000e60  e302bfeb  loadli.w r5,  -2600(r30)
000e64  97913900  or r3, r19, r3
000e68  1f42e200  addli r4, r4, 116
000e6c  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000e70  b3920228  sext_int2long r[6:7], r5
000e74  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e78  ab0100f0  lui r3, 983040
000e7c  1f020ff8  addli r4, r30, -1024
000e80  97b01203  sll.d r[2:3], r[6:7], r17
000e84  e342bfeb  loadli.w r5,  -2596(r30)
000e88  97913900  or r3, r19, r3
000e8c  1f62e200  addli r4, r4, 118
000e90  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000e94  b3920228  sext_int2long r[6:7], r5
000e98  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e9c  ab0100f0  lui r3, 983040
000ea0  1f020ff8  addli r4, r30, -1024
000ea4  97b01203  sll.d r[2:3], r[6:7], r17
000ea8  e302cfeb  loadli.w r5,  -2592(r30)
000eac  97913900  or r3, r19, r3
000eb0  1f02f200  addli r4, r4, 120
000eb4  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000eb8  b3920228  sext_int2long r[6:7], r5
000ebc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ec0  ab0100f0  lui r3, 983040
000ec4  1f020ff8  addli r4, r30, -1024
000ec8  97b01203  sll.d r[2:3], r[6:7], r17
000ecc  e342cfeb  loadli.w r5,  -2588(r30)
000ed0  97913900  or r3, r19, r3
000ed4  1f22f200  addli r4, r4, 122
000ed8  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000edc  b3920228  sext_int2long r[6:7], r5
000ee0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ee4  ab0100f0  lui r3, 983040
000ee8  1f020ff8  addli r4, r30, -1024
000eec  97b01203  sll.d r[2:3], r[6:7], r17
000ef0  e302dfeb  loadli.w r5,  -2584(r30)
000ef4  97913900  or r3, r19, r3
000ef8  1f42f200  addli r4, r4, 124
000efc  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000f00  b3920228  sext_int2long r[6:7], r5
000f04  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f08  ab0100f0  lui r3, 983040
000f0c  1f020ff8  addli r4, r30, -1024
000f10  97b01203  sll.d r[2:3], r[6:7], r17
000f14  e342dfeb  loadli.w r5,  -2580(r30)
000f18  97913900  or r3, r19, r3
000f1c  1f62f200  addli r4, r4, 126
000f20  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000f24  b3920228  sext_int2long r[6:7], r5
000f28  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f2c  6302efeb  loadli.w r4,  -2576(r30)
000f30  ab0100f0  lui r3, 983040
000f34  97b01203  sll.d r[2:3], r[6:7], r17
000f38  6303efed  loadli.w r6,  -2320(r30)
000f3c  97913900  or r3, r19, r3
000f40  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000f44  33120228  sext_int2long r[5:6], r4
000f48  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
000f4c  97301203  sll.d r[2:3], r[5:6], r17
000f50  e342efeb  loadli.w r5,  -2572(r30)
000f54  ab0100f0  lui r3, 983040
000f58  1f020ff8  addli r4, r30, -1024
000f5c  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000f60  97913900  or r3, r19, r3
000f64  1f220201  addli r4, r4, 130
000f68  b3920228  sext_int2long r[6:7], r5
000f6c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f70  ab0100f0  lui r3, 983040
000f74  1f020ff8  addli r4, r30, -1024
000f78  97b01203  sll.d r[2:3], r[6:7], r17
000f7c  e302ffeb  loadli.w r5,  -2568(r30)
000f80  97913900  or r3, r19, r3
000f84  1f420201  addli r4, r4, 132
000f88  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000f8c  b3920228  sext_int2long r[6:7], r5
000f90  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f94  ab0100f0  lui r3, 983040
000f98  1f020ff8  addli r4, r30, -1024
000f9c  97b01203  sll.d r[2:3], r[6:7], r17
000fa0  e342ffeb  loadli.w r5,  -2564(r30)
000fa4  97913900  or r3, r19, r3
000fa8  1f620201  addli r4, r4, 134
000fac  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000fb0  b3920228  sext_int2long r[6:7], r5
000fb4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000fb8  ab0100f0  lui r3, 983040
000fbc  1f020ff8  addli r4, r30, -1024
000fc0  97b01203  sll.d r[2:3], r[6:7], r17
000fc4  e3020fec  loadli.w r5,  -2560(r30)
000fc8  97913900  or r3, r19, r3
000fcc  1f021201  addli r4, r4, 136
000fd0  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000fd4  b3920228  sext_int2long r[6:7], r5
000fd8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000fdc  ab0100f0  lui r3, 983040
000fe0  1f020ff8  addli r4, r30, -1024
000fe4  97b01203  sll.d r[2:3], r[6:7], r17
000fe8  e3420fec  loadli.w r5,  -2556(r30)
000fec  97913900  or r3, r19, r3
000ff0  1f221201  addli r4, r4, 138
000ff4  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
000ff8  b3920228  sext_int2long r[6:7], r5
000ffc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001000  ab0100f0  lui r3, 983040
001004  1f020ff8  addli r4, r30, -1024
001008  97b01203  sll.d r[2:3], r[6:7], r17
00100c  e3021fec  loadli.w r5,  -2552(r30)
001010  97913900  or r3, r19, r3
001014  1f421201  addli r4, r4, 140
001018  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
00101c  b3920228  sext_int2long r[6:7], r5
001020  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001024  ab0100f0  lui r3, 983040
001028  1f020ff8  addli r4, r30, -1024
00102c  97b01203  sll.d r[2:3], r[6:7], r17
001030  e3421fec  loadli.w r5,  -2548(r30)
001034  97913900  or r3, r19, r3
001038  1f621201  addli r4, r4, 142
00103c  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
001040  b3920228  sext_int2long r[6:7], r5
001044  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001048  ab0100f0  lui r3, 983040
00104c  1f020ff8  addli r4, r30, -1024
001050  97b01203  sll.d r[2:3], r[6:7], r17
001054  e3022fec  loadli.w r5,  -2544(r30)
001058  97913900  or r3, r19, r3
00105c  1f022201  addli r4, r4, 144
001060  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
001064  b3920228  sext_int2long r[6:7], r5
001068  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00106c  ab0100f0  lui r3, 983040
001070  1f020ff8  addli r4, r30, -1024
001074  97b01203  sll.d r[2:3], r[6:7], r17
001078  e3422fec  loadli.w r5,  -2540(r30)
00107c  97913900  or r3, r19, r3
001080  1f222201  addli r4, r4, 146
001084  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
001088  b3920228  sext_int2long r[6:7], r5
00108c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001090  ab0100f0  lui r3, 983040
001094  1f020ff8  addli r4, r30, -1024
001098  97b01203  sll.d r[2:3], r[6:7], r17
00109c  e3023fec  loadli.w r5,  -2536(r30)
0010a0  97913900  or r3, r19, r3
0010a4  1f422201  addli r4, r4, 148
0010a8  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
0010ac  b3920228  sext_int2long r[6:7], r5
0010b0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010b4  ab0100f0  lui r3, 983040
0010b8  1f020ff8  addli r4, r30, -1024
0010bc  97b01203  sll.d r[2:3], r[6:7], r17
0010c0  e3423fec  loadli.w r5,  -2532(r30)
0010c4  97913900  or r3, r19, r3
0010c8  1f622201  addli r4, r4, 150
0010cc  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
0010d0  b3920228  sext_int2long r[6:7], r5
0010d4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010d8  ab0100f0  lui r3, 983040
0010dc  1f020ff8  addli r4, r30, -1024
0010e0  97b01203  sll.d r[2:3], r[6:7], r17
0010e4  e3024fec  loadli.w r5,  -2528(r30)
0010e8  97913900  or r3, r19, r3
0010ec  1f023201  addli r4, r4, 152
0010f0  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
0010f4  b3920228  sext_int2long r[6:7], r5
0010f8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010fc  ab0100f0  lui r3, 983040
001100  1f020ff8  addli r4, r30, -1024
001104  97b01203  sll.d r[2:3], r[6:7], r17
001108  e3424fec  loadli.w r5,  -2524(r30)
00110c  97913900  or r3, r19, r3
001110  1f223201  addli r4, r4, 154
001114  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
001118  b3920228  sext_int2long r[6:7], r5
00111c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001120  ab0100f0  lui r3, 983040
001124  1f020ff8  addli r4, r30, -1024
001128  97b01203  sll.d r[2:3], r[6:7], r17
00112c  e3025fec  loadli.w r5,  -2520(r30)
001130  97913900  or r3, r19, r3
001134  1f423201  addli r4, r4, 156
001138  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
00113c  b3920228  sext_int2long r[6:7], r5
001140  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001144  ab0100f0  lui r3, 983040
001148  1f020ff8  addli r4, r30, -1024
00114c  97b01203  sll.d r[2:3], r[6:7], r17
001150  e3425fec  loadli.w r5,  -2516(r30)
001154  97913900  or r3, r19, r3
001158  1f623201  addli r4, r4, 158
00115c  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
001160  b3920228  sext_int2long r[6:7], r5
001164  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001168  ab0100f0  lui r3, 983040
00116c  1f020ff8  addli r4, r30, -1024
001170  97b01203  sll.d r[2:3], r[6:7], r17
001174  e3026fec  loadli.w r5,  -2512(r30)
001178  97913900  or r3, r19, r3
00117c  1f024201  addli r4, r4, 160
001180  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
001184  b3920228  sext_int2long r[6:7], r5
001188  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00118c  ab0100f0  lui r3, 983040
001190  1f020ff8  addli r4, r30, -1024
001194  97b01203  sll.d r[2:3], r[6:7], r17
001198  e3426fec  loadli.w r5,  -2508(r30)
00119c  97913900  or r3, r19, r3
0011a0  1f224201  addli r4, r4, 162
0011a4  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
0011a8  b3920228  sext_int2long r[6:7], r5
0011ac  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011b0  ab0100f0  lui r3, 983040
0011b4  1f020ff8  addli r4, r30, -1024
0011b8  97b01203  sll.d r[2:3], r[6:7], r17
0011bc  e3027fec  loadli.w r5,  -2504(r30)
0011c0  97913900  or r3, r19, r3
0011c4  1f424201  addli r4, r4, 164
0011c8  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
0011cc  b3920228  sext_int2long r[6:7], r5
0011d0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011d4  ab0100f0  lui r3, 983040
0011d8  1f020ff8  addli r4, r30, -1024
0011dc  97b01203  sll.d r[2:3], r[6:7], r17
0011e0  e3427fec  loadli.w r5,  -2500(r30)
0011e4  97913900  or r3, r19, r3
0011e8  1f624201  addli r4, r4, 166
0011ec  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
0011f0  b3920228  sext_int2long r[6:7], r5
0011f4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011f8  ab0100f0  lui r3, 983040
0011fc  1f020ff8  addli r4, r30, -1024
001200  97b01203  sll.d r[2:3], r[6:7], r17
001204  e3028fec  loadli.w r5,  -2496(r30)
001208  97913900  or r3, r19, r3
00120c  1f025201  addli r4, r4, 168
001210  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
001214  b3920228  sext_int2long r[6:7], r5
001218  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00121c  ab0100f0  lui r3, 983040
001220  1f020ff8  addli r4, r30, -1024
001224  97b01203  sll.d r[2:3], r[6:7], r17
001228  e3428fec  loadli.w r5,  -2492(r30)
00122c  97913900  or r3, r19, r3
001230  1f225201  addli r4, r4, 170
001234  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
001238  b3920228  sext_int2long r[6:7], r5
00123c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001240  ab0100f0  lui r3, 983040
001244  1f020ff8  addli r4, r30, -1024
001248  97b01203  sll.d r[2:3], r[6:7], r17
00124c  e3029fec  loadli.w r5,  -2488(r30)
001250  97913900  or r3, r19, r3
001254  1f425201  addli r4, r4, 172
001258  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
00125c  b3920228  sext_int2long r[6:7], r5
001260  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001264  ab0100f0  lui r3, 983040
001268  1f020ff8  addli r4, r30, -1024
00126c  97b01203  sll.d r[2:3], r[6:7], r17
001270  e3429fec  loadli.w r5,  -2484(r30)
001274  97913900  or r3, r19, r3
001278  1f625201  addli r4, r4, 174
00127c  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
001280  b3920228  sext_int2long r[6:7], r5
001284  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001288  ab0100f0  lui r3, 983040
00128c  1f020ff8  addli r4, r30, -1024
001290  97b01203  sll.d r[2:3], r[6:7], r17
001294  e302afec  loadli.w r5,  -2480(r30)
001298  97913900  or r3, r19, r3
00129c  1f026201  addli r4, r4, 176
0012a0  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
0012a4  b3920228  sext_int2long r[6:7], r5
0012a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012ac  ab0100f0  lui r3, 983040
0012b0  1f020ff8  addli r4, r30, -1024
0012b4  97b01203  sll.d r[2:3], r[6:7], r17
0012b8  e342afec  loadli.w r5,  -2476(r30)
0012bc  97913900  or r3, r19, r3
0012c0  1f226201  addli r4, r4, 178
0012c4  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
0012c8  b3920228  sext_int2long r[6:7], r5
0012cc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012d0  ab0100f0  lui r3, 983040
0012d4  1f020ff8  addli r4, r30, -1024
0012d8  97b01203  sll.d r[2:3], r[6:7], r17
0012dc  e302bfec  loadli.w r5,  -2472(r30)
0012e0  97913900  or r3, r19, r3
0012e4  1f426201  addli r4, r4, 180
0012e8  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
0012ec  b3920228  sext_int2long r[6:7], r5
0012f0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012f4  ab0100f0  lui r3, 983040
0012f8  1f020ff8  addli r4, r30, -1024
0012fc  97b01203  sll.d r[2:3], r[6:7], r17
001300  e342bfec  loadli.w r5,  -2468(r30)
001304  97913900  or r3, r19, r3
001308  1f626201  addli r4, r4, 182
00130c  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
001310  b3920228  sext_int2long r[6:7], r5
001314  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001318  ab0100f0  lui r3, 983040
00131c  1f020ff8  addli r4, r30, -1024
001320  97b01203  sll.d r[2:3], r[6:7], r17
001324  e302cfec  loadli.w r5,  -2464(r30)
001328  97913900  or r3, r19, r3
00132c  1f027201  addli r4, r4, 184
001330  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
001334  b3920228  sext_int2long r[6:7], r5
001338  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00133c  ab0100f0  lui r3, 983040
001340  1f020ff8  addli r4, r30, -1024
001344  97b01203  sll.d r[2:3], r[6:7], r17
001348  e342cfec  loadli.w r5,  -2460(r30)
00134c  97913900  or r3, r19, r3
001350  1f227201  addli r4, r4, 186
001354  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
001358  b3920228  sext_int2long r[6:7], r5
00135c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001360  ab0100f0  lui r3, 983040
001364  1f020ff8  addli r4, r30, -1024
001368  97b01203  sll.d r[2:3], r[6:7], r17
00136c  e302dfec  loadli.w r5,  -2456(r30)
001370  97913900  or r3, r19, r3
001374  1f427201  addli r4, r4, 188
001378  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
00137c  b3920228  sext_int2long r[6:7], r5
001380  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001384  ab0100f0  lui r3, 983040
001388  1f020ff8  addli r4, r30, -1024
00138c  97b01203  sll.d r[2:3], r[6:7], r17
001390  e342dfec  loadli.w r5,  -2452(r30)
001394  97913900  or r3, r19, r3
001398  1f627201  addli r4, r4, 190
00139c  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
0013a0  b3920228  sext_int2long r[6:7], r5
0013a4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0013a8  6302efec  loadli.w r4,  -2448(r30)
0013ac  ab0100f0  lui r3, 983040
0013b0  97b01203  sll.d r[2:3], r[6:7], r17
0013b4  6343efed  loadli.w r6,  -2316(r30)
0013b8  97913900  or r3, r19, r3
0013bc  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
0013c0  33120228  sext_int2long r[5:6], r4
0013c4  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
0013c8  97301203  sll.d r[2:3], r[5:6], r17
0013cc  e342efec  loadli.w r5,  -2444(r30)
0013d0  ab0100f0  lui r3, 983040
0013d4  1f020ff8  addli r4, r30, -1024
0013d8  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
0013dc  97913900  or r3, r19, r3
0013e0  1f228201  addli r4, r4, 194
0013e4  b3920228  sext_int2long r[6:7], r5
0013e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0013ec  ab0100f0  lui r3, 983040
0013f0  1f020ff8  addli r4, r30, -1024
0013f4  97b01203  sll.d r[2:3], r[6:7], r17
0013f8  e302ffec  loadli.w r5,  -2440(r30)
0013fc  97913900  or r3, r19, r3
001400  1f428201  addli r4, r4, 196
001404  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
001408  b3920228  sext_int2long r[6:7], r5
00140c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001410  ab0100f0  lui r3, 983040
001414  1f020ff8  addli r4, r30, -1024
001418  97b01203  sll.d r[2:3], r[6:7], r17
00141c  e342ffec  loadli.w r5,  -2436(r30)
001420  97913900  or r3, r19, r3
001424  1f628201  addli r4, r4, 198
001428  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
00142c  b3920228  sext_int2long r[6:7], r5
001430  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001434  ab0100f0  lui r3, 983040
001438  1f020ff8  addli r4, r30, -1024
00143c  97b01203  sll.d r[2:3], r[6:7], r17
001440  e3020fed  loadli.w r5,  -2432(r30)
001444  97913900  or r3, r19, r3
001448  1f029201  addli r4, r4, 200
00144c  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
001450  b3920228  sext_int2long r[6:7], r5
001454  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001458  63420fed  loadli.w r4,  -2428(r30)
00145c  ab0100f0  lui r3, 983040
001460  97b01203  sll.d r[2:3], r[6:7], r17
001464  1f030ff8  addli r6, r30, -1024
001468  97913900  or r3, r19, r3
00146c  33120228  sext_int2long r[5:6], r4
001470  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
001474  1f239301  addli r6, r6, 202
001478  17321203  sll.d r[5:6], r[5:6], r17
00147c  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
001480  ab0100f0  lui r3, 983040
001484  8ba04710  add.ul r[2:3], r[16:17], r[5:6]
001488  e3021fed  loadli.w r5,  -2424(r30)
00148c  1f020ff8  addli r4, r30, -1024
001490  97913900  or r3, r19, r3
001494  1f429201  addli r4, r4, 204
001498  b3920228  sext_int2long r[6:7], r5
00149c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0014a0  97b11203  sll.d r[4:5], r[6:7], r17
0014a4  9f02ffed  addli r5, r30, -2312
0014a8  1f030ff8  addli r6, r30, -1024
0014ac  ab0800f0  lui r17, 983040
0014b0  ebd00200  load.d r[2:3], 0(r5)
0014b4  ab0200f0  lui r5, 983040
0014b8  8ba13710  add.ul r[4:5], r[16:17], r[4:5]
0014bc  1f639301  addli r6, r6, 206
0014c0  97981901  or r17, r19, r17
0014c4  97925900  or r5, r19, r5
0014c8  8ba01710  add.ul r[2:3], r[16:17], r[2:3]
0014cc  ffb26100  s_lm2gm r5, r6, 0(r[4:5])
0014d0  e3012fed  loadli.w r3,  -2416(r30)
0014d4  97b24303  sll.d r[6:7], r[8:9], r20
0014d8  ab0300f0  lui r7, 983040
0014dc  1f040ff8  addli r8, r30, -1024
0014e0  8ba25710  add.ul r[6:7], r[16:17], r[6:7]
0014e4  1f04a401  addli r8, r8, 208
0014e8  97937900  or r7, r19, r7
0014ec  b3910128  sext_int2long r[4:5], r3
0014f0  ffb38200  s_lm2gm r7, r8, 0(r[6:7])
0014f4  97b34403  sll.d r[8:9], r[10:11], r20
0014f8  ab0400f0  lui r9, 983040
0014fc  1f050ff8  addli r10, r30, -1024
001500  e3023fed  loadli.w r5,  -2408(r30)
001504  97b14103  sll.d r[4:5], r[4:5], r20
001508  1f25a501  addli r10, r10, 210
00150c  97949900  or r9, r19, r9
001510  8ba37710  add.ul r[8:9], r[16:17], r[8:9]
001514  8ba13710  add.ul r[4:5], r[16:17], r[4:5]
001518  b3920228  sext_int2long r[6:7], r5
00151c  ffb4a100  s_lm2gm r9, r10, 0(r[4:5])
001520  97b44503  sll.d r[10:11], r[12:13], r20
001524  ab0500f0  lui r11, 983040
001528  1f060ff8  addli r12, r30, -1024
00152c  97b24203  sll.d r[6:7], r[6:7], r20
001530  e3014fed  loadli.w r3,  -2400(r30)
001534  1f46a601  addli r12, r12, 212
001538  9795b900  or r11, r19, r11
00153c  8ba25710  add.ul r[6:7], r[16:17], r[6:7]
001540  8ba49710  add.ul r[10:11], r[16:17], r[10:11]
001544  b3910128  sext_int2long r[4:5], r3
001548  ffb5c300  s_lm2gm r11, r12, 0(r[8:9])
00154c  e3035fed  loadli.w r7,  -2392(r30)
001550  97b54603  sll.d r[12:13], r[14:15], r20
001554  97b14103  sll.d r[4:5], r[4:5], r20
001558  8ba6b710  add.ul r[14:15], r[16:17], r[12:13]
00155c  e3455fed  loadli.w r11,  -2388(r30)
001560  b3930328  sext_int2long r[8:9], r7
001564  8ba13710  add.ul r[4:5], r[16:17], r[4:5]
001568  97b34303  sll.d r[8:9], r[8:9], r20
00156c  b3950528  sext_int2long r[12:13], r11
001570  8baa7710  add.ul r[22:23], r[16:17], r[8:9]
001574  ab0300f0  lui r7, 983040
001578  1f040ff8  addli r8, r30, -1024
00157c  1f64a401  addli r8, r8, 214
001580  97937900  or r7, r19, r7
001584  ffb38200  s_lm2gm r7, r8, 0(r[6:7])
001588  e3026fed  loadli.w r5,  -2384(r30)
00158c  97b34503  sll.d r[8:9], r[12:13], r20
001590  8bab7710  add.ul r[24:25], r[16:17], r[8:9]
001594  e3436fed  loadli.w r7,  -2380(r30)
001598  b3920228  sext_int2long r[6:7], r5
00159c  97b24203  sll.d r[6:7], r[6:7], r20
0015a0  b3930328  sext_int2long r[8:9], r7
0015a4  8ba55710  add.ul r[12:13], r[16:17], r[6:7]
0015a8  ab0200f0  lui r5, 983040
0015ac  1f030ff8  addli r6, r30, -1024
0015b0  97b34303  sll.d r[8:9], r[8:9], r20
0015b4  1f03b301  addli r6, r6, 216
0015b8  97925900  or r5, r19, r5
0015bc  8bac7710  add.ul r[26:27], r[16:17], r[8:9]
0015c0  ab0300f0  lui r7, 983040
0015c4  1f040ff8  addli r8, r30, -1024
0015c8  ffb26400  s_lm2gm r5, r6, 0(r[10:11])
0015cc  e3027fed  loadli.w r5,  -2376(r30)
0015d0  1f24b401  addli r8, r8, 218
0015d4  97937900  or r7, r19, r7
0015d8  ffb38100  s_lm2gm r7, r8, 0(r[4:5])
0015dc  e3018fed  loadli.w r3,  -2368(r30)
0015e0  9f037fee  addli r7, r30, -2248
0015e4  b3920228  sext_int2long r[6:7], r5
0015e8  97b24203  sll.d r[6:7], r[6:7], r20
0015ec  b3910128  sext_int2long r[4:5], r3
0015f0  8ba45710  add.ul r[10:11], r[16:17], r[6:7]
0015f4  e3427fed  loadli.w r5,  -2372(r30)
0015f8  97b14103  sll.d r[4:5], r[4:5], r20
0015fc  8ba13710  add.ul r[4:5], r[16:17], r[4:5]
001600  b3920228  sext_int2long r[6:7], r5
001604  97b24203  sll.d r[6:7], r[6:7], r20
001608  8ba25710  add.ul r[6:7], r[16:17], r[6:7]
00160c  73b05300  store.d r[6:7], 0(r7)
001610  e3428fed  loadli.w r5,  -2364(r30)
001614  9f036fee  addli r7, r30, -2256
001618  73b03300  store.d r[4:5], 0(r7)
00161c  b3920228  sext_int2long r[6:7], r5
001620  97b14203  sll.d r[4:5], r[6:7], r20
001624  ab0200f0  lui r5, 983040
001628  1f030ff8  addli r6, r30, -1024
00162c  9f43b301  addli r7, r6, 220
001630  17945900  or r8, r19, r5
001634  8ba13710  add.ul r[4:5], r[16:17], r[4:5]
001638  9f020fef  addli r5, r30, -2176
00163c  1f130000  addli r6, zero, 1
001640  73b03200  store.d r[4:5], 0(r5)
001644  e3419fed  loadli.w r3,  -2356(r30)
001648  7fb47600  s_lm2gm r8, r7, 0(r[14:15])
00164c  e3039fed  loadli.w r7,  -2360(r30)
001650  9f02efef  addli r5, r30, -2064
001654  b3910128  sext_int2long r[4:5], r3
001658  b3930328  sext_int2long r[8:9], r7
00165c  97b14103  sll.d r[4:5], r[4:5], r20
001660  97b34303  sll.d r[8:9], r[8:9], r20
001664  8ba63710  add.ul r[14:15], r[16:17], r[4:5]
001668  8ba17710  add.ul r[4:5], r[16:17], r[8:9]
00166c  73b03200  store.d r[4:5], 0(r5)
001670  e301afed  loadli.w r3,  -2352(r30)
001674  9f028fee  addli r5, r30, -2240
001678  b3930128  sext_int2long r[8:9], r3
00167c  97b34303  sll.d r[8:9], r[8:9], r20
001680  630affef  loadli.w r20,  -2056(r30)
001684  8ba17710  add.ul r[4:5], r[16:17], r[8:9]
001688  73b03200  store.d r[4:5], 0(r5)
00168c  9f010ff8  addli r3, r30, -1024
001690  27820700  addli.d r[5:6], r[16:17], 0
001694  ffb83000  s_lm2gm r17, r3, 0(r[2:3])
001698  e340afed  loadli.w r1,  -2348(r30)
00169c  ab0800f0  lui r17, 983040
0016a0  9fedb101  addli r27, r3, 222
0016a4  e301bfed  loadli.w r3,  -2344(r30)
0016a8  97981901  or r17, r19, r17
0016ac  b3900028  sext_int2long r[2:3], r1
0016b0  b3970128  sext_int2long r[16:17], r3
0016b4  ffb8ba01  s_lm2gm r17, r27, 0(r[22:23])
0016b8  ab0800f0  lui r17, 983040
0016bc  97b06002  sll.d r[2:3], r[2:3], r6
0016c0  97b76702  sll.d r[16:17], r[16:17], r6
0016c4  97981901  or r17, r19, r17
0016c8  0b211210  add.ul r[3:4], r[5:6], r[2:3]
0016cc  9f000ff8  addli r1, r30, -1024
0016d0  8b27f210  add.ul r[16:17], r[5:6], r[16:17]
0016d4  9f8dc001  addli r27, r1, 224
0016d8  e340bfed  loadli.w r1,  -2340(r30)
0016dc  ffb8bb01  s_lm2gm r17, r27, 0(r[24:25])
0016e0  ab0800f0  lui r17, 983040
0016e4  b39b0028  sext_int2long r[24:25], r1
0016e8  9f000ff8  addli r1, r30, -1024
0016ec  97981901  or r17, r19, r17
0016f0  9fadc001  addli r27, r1, 226
0016f4  e300cfed  loadli.w r1,  -2336(r30)
0016f8  97bb6b02  sll.d r[24:25], r[24:25], r6
0016fc  ffb8b501  s_lm2gm r17, r27, 0(r[12:13])
001700  ab0800f0  lui r17, 983040
001704  8b237211  add.ul r[8:9], r[5:6], r[24:25]
001708  1f060ff8  addli r12, r30, -1024
00170c  9f150000  addli r11, zero, 1
001710  b39d0028  sext_int2long r[28:29], r1
001714  9f000ff8  addli r1, r30, -1024
001718  97981901  or r17, r19, r17
00171c  97bb6d02  sll.d r[24:25], r[28:29], r6
001720  9fcdc001  addli r27, r1, 228
001724  ffb8bc01  s_lm2gm r17, r27, 0(r[26:27])
001728  9fecc001  addli r25, r1, 230
00172c  e340cfed  loadli.w r1,  -2332(r30)
001730  ab0800f0  lui r17, 983040
001734  8b2b7211  add.ul r[24:25], r[5:6], r[24:25]
001738  97981901  or r17, r19, r17
00173c  339d0028  sext_int2long r[27:28], r1
001740  e300dfed  loadli.w r1,  -2328(r30)
001744  ffb89401  s_lm2gm r17, r25, 0(r[10:11])
001748  9f047fee  addli r9, r30, -2248
00174c  ab0800f0  lui r17, 983040
001750  1f65d601  addli r10, r12, 238
001754  973c6d02  sll.d r[26:27], r[27:28], r6
001758  b39a0028  sext_int2long r[22:23], r1
00175c  9f000ff8  addli r1, r30, -1024
001760  97981901  or r17, r19, r17
001764  97bd6a02  sll.d r[28:29], r[22:23], r6
001768  8b2a9211  add.ul r[22:23], r[5:6], r[26:27]
00176c  8b2cb211  add.ul r[26:27], r[5:6], r[28:29]
001770  ebd20400  load.d r[6:7], 0(r9)
001774  9f8dd001  addli r27, r1, 232
001778  9f046fee  addli r9, r30, -2256
00177c  2b0e00f0  lui r28, 983040
001780  9fa0d001  addli r1, r1, 234
001784  1792c901  or r4, r19, r28
001788  ffb8b201  s_lm2gm r17, r27, 0(r[6:7])
00178c  ebd20400  load.d r[6:7], 0(r9)
001790  ab0400f0  lui r9, 983040
001794  9f080fef  addli r17, r30, -2176
001798  ab0d807f  lui r27, 522240
00179c  97949900  or r9, r19, r9
0017a0  7fb21200  s_lm2gm r4, r1, 0(r[6:7])
0017a4  ab0000f0  lui r1, 983040
0017a8  ebd20800  load.d r[6:7], 0(r17)
0017ac  1f42d601  addli r4, r12, 236
0017b0  ffb4a600  s_lm2gm r9, r10, 0(r[14:15])
0017b4  9f06efef  addli r13, r30, -2064
0017b8  97901900  or r1, r19, r1
0017bc  ebd40600  load.d r[10:11], 0(r13)
0017c0  ffb04200  s_lm2gm r1, r4, 0(r[6:7])
0017c4  ab0000f0  lui r1, 983040
0017c8  1f02e601  addli r4, r12, 240
0017cc  ab0200f0  lui r5, 983040
0017d0  1f23e601  addli r6, r12, 242
0017d4  97901900  or r1, r19, r1
0017d8  97925900  or r5, r19, r5
0017dc  ffb04400  s_lm2gm r1, r4, 0(r[10:11])
0017e0  9f008fee  addli r1, r30, -2240
0017e4  1f42e601  addli r4, r12, 244
0017e8  ebd40000  load.d r[10:11], 0(r1)
0017ec  ab0000f0  lui r1, 983040
0017f0  97901900  or r1, r19, r1
0017f4  ffb26400  s_lm2gm r5, r6, 0(r[10:11])
0017f8  ab0200f0  lui r5, 983040
0017fc  1f63e601  addli r6, r12, 246
001800  e3040fee  loadli.w r9,  -2304(r30)
001804  ff304100  s_lm2gm r1, r4, 0(r[3:4])
001808  ab0000f0  lui r1, 983040
00180c  ab0100f0  lui r3, 983040
001810  1f01f601  addli r2, r12, 248
001814  1f22f601  addli r4, r12, 250
001818  97925900  or r5, r19, r5
00181c  97901900  or r1, r19, r1
001820  97913900  or r3, r19, r3
001824  ffb26700  s_lm2gm r5, r6, 0(r[16:17])
001828  9f020002  addli r5, zero, 256
00182c  ffb02300  s_lm2gm r1, r2, 0(r[8:9])
001830  ab0000f0  lui r1, 983040
001834  ffb14b00  s_lm2gm r3, r4, 0(r[24:25])
001838  ab0100f0  lui r3, 983040
00183c  1f41f601  addli r2, r12, 252
001840  1f62f601  addli r4, r12, 254
001844  ab0b4000  lui r23, 1024
001848  97901900  or r1, r19, r1
00184c  97913900  or r3, r19, r3
001850  ffb02a00  s_lm2gm r1, r2, 0(r[22:23])
001854  e300afe9  loadli.w r1,  -2864(r30)
001858  ffb14c00  s_lm2gm r3, r4, 0(r[26:27])
00185c  00a00000  mfence { lm }
001860  8b941410  add.s r9, r9, r1
001864  e340bfe9  loadli.w r1,  -2852(r30)
001868  3fa01400  blt.s r9, r1, 8
00186c  5ba70400  j 9528
001870  9f000000  addli r1, zero, 0
001874  0b111610  add.s r2, r12, r1
001878  9fc00000  addli r1, r1, 4
00187c  73100100  store.h zero, 0(r2)
001880  73110100  store.h zero, 2(r2)
001884  00a00000  mfence { lm }
001888  bbbf50fe  bneq r1, r5, -20
00188c  e3005f00  loadli.w r1,  40(r30)
001890  63414f00  loadli.w r2,  36(r30)
001894  1f04ffed  addli r8, r30, -2312
001898  67009fee  storeli.w r9, -2304(r30)
00189c  8b901430  div.s r1, r9, r1
0018a0  8b902030  div.s r1, r1, r2
0018a4  6301bfe9  loadli.w r2,  -2856(r30)
0018a8  9bb03000  slli r1, r1, 3
0018ac  8b902010  add.s r1, r1, r2
0018b0  1bb1a000  slli r2, r1, 10
0018b4  670f1fee  storeli.w r1, -2064(r30)
0018b8  e340afe9  loadli.w r1,  -2860(r30)
0018bc  e70e2fec  storeli.w r2, -2328(r30)
0018c0  8b101110  add.s r1, r2, r1
0018c4  2b0100f0  lui r2, 983040
0018c8  b3910028  sext_int2long r[4:5], r1
0018cc  17912200  or r2, r5, r2
0018d0  ab0000f0  lui r1, 983040
0018d4  17b3b102  sll.d r[7:8], r[4:5], r11
0018d8  eb510f00  load.d r[4:5], 0(r30)
0018dc  97901200  or r1, r5, r1
0018e0  73306400  store.d r[7:8], 0(r8)
0018e4  8ba16110  add.ul r[4:5], r[4:5], r[7:8]
0018e8  7fa1c100  l_gm2lm r2, r12, 0(r[4:5])
0018ec  1f020fe9  addli r4, r30, -2944
0018f0  6b510200  load.d r[3:4], 0(r4)
0018f4  1f020ffa  addli r4, r30, -768
0018f8  ff204100  l_gm2lm r1, r4, 0(r[3:4])
0018fc  9f000fef  addli r1, r30, -2176
001900  00a00000  mfence { lm }
001904  42110f82  vload_mask16.mz vr2{mr1}, 1024(r30)
001908  c2138f82  vload_mask16.mz vr7{mr1}, 1088(r30)
00190c  c2110f83  vload_mask16.mz vr3{mr1}, 1152(r30)
001910  c2108f83  vload_mask16.mz vr1{mr1}, 1216(r30)
001914  42140fa2  vload_mask16.mz vr8{mr1}, 1280(r30)
001918  42138fa2  vload_mask16.mz vr6{mr1}, 1344(r30)
00191c  c2120fa3  vload_mask16.mz vr5{mr1}, 1408(r30)
001920  42128fa3  vload_mask16.mz vr4{mr1}, 1472(r30)
001924  00a00000  mfence { lm }
001928  e6c47580  vmerge_l.hf vr9, vr11, vr7
00192c  66c56580  vmerge_l.hf vr10, vr11, vr6
001930  66c03580  vmerge_l.hf vr0, vr11, vr3
001934  e6c375a0  vmerge_h.hf vr7, vr11, vr7
001938  66c365a0  vmerge_h.hf vr6, vr11, vr6
00193c  e6c135a0  vmerge_h.hf vr3, vr11, vr3
001940  9694a402  vadd.f.mz.rn vr9{mr1}, vr9, vr10
001944  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001948  66c02580  vmerge_l.hf vr0, vr11, vr2
00194c  66c58580  vmerge_l.hf vr10, vr11, vr8
001950  66c125a0  vmerge_h.hf vr2, vr11, vr2
001954  66c485a0  vmerge_h.hf vr8, vr11, vr8
001958  9f008fee  addli r1, r30, -2240
00195c  16936302  vadd.f.mz.rn vr6{mr1}, vr7, vr6
001960  e6c34580  vmerge_l.hf vr7, vr11, vr4
001964  66c245a0  vmerge_h.hf vr4, vr11, vr4
001968  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
00196c  9f000fef  addli r1, r30, -2176
001970  1610a002  vadd.f.mz.rn vr0{mr1}, vr0, vr10
001974  16118102  vadd.f.mz.rn vr2{mr1}, vr2, vr8
001978  66c51580  vmerge_l.hf vr10, vr11, vr1
00197c  e6c015a0  vmerge_h.hf vr1, vr11, vr1
001980  66c45580  vmerge_l.hf vr8, vr11, vr5
001984  e6c255a0  vmerge_h.hf vr5, vr11, vr5
001988  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00198c  9f008fee  addli r1, r30, -2240
001990  46100fc2  vstore_mask16.mz vr0{mr1}, 1536(r30)
001994  46142fc2  vstore_mask16.mz vr2{mr1}, 1600(r30)
001998  96915102  vadd.f.mz.rn vr3{mr1}, vr3, vr5
00199c  96127502  vadd.f.mz.rn vr5{mr1}, vr10, vr7
0019a0  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0019a4  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0019a8  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
0019ac  46180fc2  vstore_mask16.mz vr0{mr1}, 1664(r30)
0019b0  461c6fc2  vstore_mask16.mz vr6{mr1}, 1728(r30)
0019b4  46108fe2  vstore_mask16.mz vr8{mr1}, 1792(r30)
0019b8  46143fe2  vstore_mask16.mz vr3{mr1}, 1856(r30)
0019bc  46185fe2  vstore_mask16.mz vr5{mr1}, 1920(r30)
0019c0  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
0019c4  00a00000  mfence { lm }
0019c8  e3060ffc  loadli.w r13,  -512(r30)
0019cc  63470ffc  loadli.w r14,  -508(r30)
0019d0  63081ffc  loadli.w r16,  -504(r30)
0019d4  63411ffc  loadli.w r2,  -500(r30)
0019d8  63042ffc  loadli.w r8,  -496(r30)
0019dc  e3472ffc  loadli.w r15,  -492(r30)
0019e0  e3003ffc  loadli.w r1,  -488(r30)
0019e4  63463ffc  loadli.w r12,  -484(r30)
0019e8  e3054ffc  loadli.w r11,  -480(r30)
0019ec  63454ffc  loadli.w r10,  -476(r30)
0019f0  e3045ffc  loadli.w r9,  -472(r30)
0019f4  e3435ffc  loadli.w r7,  -468(r30)
0019f8  63036ffc  loadli.w r6,  -464(r30)
0019fc  e3426ffc  loadli.w r5,  -460(r30)
001a00  63027ffc  loadli.w r4,  -456(r30)
001a04  e3417ffc  loadli.w r3,  -452(r30)
001a08  e3088ffc  loadli.w r17,  -448(r30)
001a0c  e3488ffc  loadli.w r17,  -444(r30)
001a10  e3089ffc  loadli.w r17,  -440(r30)
001a14  e3489ffc  loadli.w r17,  -436(r30)
001a18  e308affc  loadli.w r17,  -432(r30)
001a1c  e348affc  loadli.w r17,  -428(r30)
001a20  e308bffc  loadli.w r17,  -424(r30)
001a24  e348bffc  loadli.w r17,  -420(r30)
001a28  e308cffc  loadli.w r17,  -416(r30)
001a2c  e348cffc  loadli.w r17,  -412(r30)
001a30  e308dffc  loadli.w r17,  -408(r30)
001a34  e348dffc  loadli.w r17,  -404(r30)
001a38  e308effc  loadli.w r17,  -400(r30)
001a3c  e348effc  loadli.w r17,  -396(r30)
001a40  e308fffc  loadli.w r17,  -392(r30)
001a44  e348fffc  loadli.w r17,  -388(r30)
001a48  e3080ffd  loadli.w r17,  -384(r30)
001a4c  e3480ffd  loadli.w r17,  -380(r30)
001a50  e3081ffd  loadli.w r17,  -376(r30)
001a54  e3481ffd  loadli.w r17,  -372(r30)
001a58  e3082ffd  loadli.w r17,  -368(r30)
001a5c  e3482ffd  loadli.w r17,  -364(r30)
001a60  e3083ffd  loadli.w r17,  -360(r30)
001a64  e3483ffd  loadli.w r17,  -356(r30)
001a68  e3084ffd  loadli.w r17,  -352(r30)
001a6c  e3484ffd  loadli.w r17,  -348(r30)
001a70  e3085ffd  loadli.w r17,  -344(r30)
001a74  e3485ffd  loadli.w r17,  -340(r30)
001a78  e3086ffd  loadli.w r17,  -336(r30)
001a7c  e3486ffd  loadli.w r17,  -332(r30)
001a80  e3087ffd  loadli.w r17,  -328(r30)
001a84  e3487ffd  loadli.w r17,  -324(r30)
001a88  e3088ffd  loadli.w r17,  -320(r30)
001a8c  e3488ffd  loadli.w r17,  -316(r30)
001a90  e3089ffd  loadli.w r17,  -312(r30)
001a94  e3489ffd  loadli.w r17,  -308(r30)
001a98  e308affd  loadli.w r17,  -304(r30)
001a9c  e348affd  loadli.w r17,  -300(r30)
001aa0  e308bffd  loadli.w r17,  -296(r30)
001aa4  e348bffd  loadli.w r17,  -292(r30)
001aa8  e308cffd  loadli.w r17,  -288(r30)
001aac  e348cffd  loadli.w r17,  -284(r30)
001ab0  e308dffd  loadli.w r17,  -280(r30)
001ab4  e348dffd  loadli.w r17,  -276(r30)
001ab8  e308effd  loadli.w r17,  -272(r30)
001abc  e348effd  loadli.w r17,  -268(r30)
001ac0  e308fffd  loadli.w r17,  -264(r30)
001ac4  e348fffd  loadli.w r17,  -260(r30)
001ac8  e3080ffe  loadli.w r17,  -256(r30)
001acc  e3480ffe  loadli.w r17,  -252(r30)
001ad0  e3081ffe  loadli.w r17,  -248(r30)
001ad4  e3481ffe  loadli.w r17,  -244(r30)
001ad8  e3082ffe  loadli.w r17,  -240(r30)
001adc  e3482ffe  loadli.w r17,  -236(r30)
001ae0  e3083ffe  loadli.w r17,  -232(r30)
001ae4  e3483ffe  loadli.w r17,  -228(r30)
001ae8  e3084ffe  loadli.w r17,  -224(r30)
001aec  e3484ffe  loadli.w r17,  -220(r30)
001af0  e3085ffe  loadli.w r17,  -216(r30)
001af4  e3485ffe  loadli.w r17,  -212(r30)
001af8  e3086ffe  loadli.w r17,  -208(r30)
001afc  e3486ffe  loadli.w r17,  -204(r30)
001b00  e3087ffe  loadli.w r17,  -200(r30)
001b04  e3487ffe  loadli.w r17,  -196(r30)
001b08  e3088ffe  loadli.w r17,  -192(r30)
001b0c  e3488ffe  loadli.w r17,  -188(r30)
001b10  e3089ffe  loadli.w r17,  -184(r30)
001b14  e3489ffe  loadli.w r17,  -180(r30)
001b18  e308affe  loadli.w r17,  -176(r30)
001b1c  e348affe  loadli.w r17,  -172(r30)
001b20  e308bffe  loadli.w r17,  -168(r30)
001b24  e348bffe  loadli.w r17,  -164(r30)
001b28  e308cffe  loadli.w r17,  -160(r30)
001b2c  e348cffe  loadli.w r17,  -156(r30)
001b30  e308dffe  loadli.w r17,  -152(r30)
001b34  e348dffe  loadli.w r17,  -148(r30)
001b38  e308effe  loadli.w r17,  -144(r30)
001b3c  e348effe  loadli.w r17,  -140(r30)
001b40  e308fffe  loadli.w r17,  -136(r30)
001b44  e348fffe  loadli.w r17,  -132(r30)
001b48  e3080fff  loadli.w r17,  -128(r30)
001b4c  e3480fff  loadli.w r17,  -124(r30)
001b50  e3081fff  loadli.w r17,  -120(r30)
001b54  e3481fff  loadli.w r17,  -116(r30)
001b58  e3082fff  loadli.w r17,  -112(r30)
001b5c  e3482fff  loadli.w r17,  -108(r30)
001b60  e3083fff  loadli.w r17,  -104(r30)
001b64  e3483fff  loadli.w r17,  -100(r30)
001b68  e3084fff  loadli.w r17,  -96(r30)
001b6c  e3484fff  loadli.w r17,  -92(r30)
001b70  e3085fff  loadli.w r17,  -88(r30)
001b74  e3485fff  loadli.w r17,  -84(r30)
001b78  e3086fff  loadli.w r17,  -80(r30)
001b7c  e3486fff  loadli.w r17,  -76(r30)
001b80  e3087fff  loadli.w r17,  -72(r30)
001b84  e3487fff  loadli.w r17,  -68(r30)
001b88  e3088fff  loadli.w r17,  -64(r30)
001b8c  e3488fff  loadli.w r17,  -60(r30)
001b90  e3089fff  loadli.w r17,  -56(r30)
001b94  e3489fff  loadli.w r17,  -52(r30)
001b98  e308afff  loadli.w r17,  -48(r30)
001b9c  e348afff  loadli.w r17,  -44(r30)
001ba0  e308bfff  loadli.w r17,  -40(r30)
001ba4  e348bfff  loadli.w r17,  -36(r30)
001ba8  e308cfff  loadli.w r17,  -32(r30)
001bac  e348cfff  loadli.w r17,  -28(r30)
001bb0  e348ffef  loadli.w r17,  -2052(r30)
001bb4  e309dfff  loadli.w r19,  -24(r30)
001bb8  e349dfff  loadli.w r19,  -20(r30)
001bbc  e309efff  loadli.w r19,  -16(r30)
001bc0  e349efff  loadli.w r19,  -12(r30)
001bc4  e309ffff  loadli.w r19,  -8(r30)
001bc8  e349ffff  loadli.w r19,  -4(r30)
001bcc  97881601  and r17, r13, r17
001bd0  93881d05  setlt.u r17, r27, r17
001bd4  3be00800  bneq r17, zero, 24
001bd8  9bc80601  srli r17, r13, 16
001bdc  9b881800  andi r17, r17, 1
001be0  8b961611  add.s r13, r13, r17
001be4  8b994611  add.s r19, r13, r20
001be8  5b010000  j 8
001bec  97997601  or r19, r13, r23
001bf0  e346ffef  loadli.w r13,  -2052(r30)
001bf4  9708d700  and r17, r14, r13
001bf8  93881d05  setlt.u r17, r27, r17
001bfc  3be00800  bneq r17, zero, 24
001c00  9b480701  srli r17, r14, 16
001c04  9b881800  andi r17, r17, 1
001c08  0b171711  add.s r14, r14, r17
001c0c  0b174711  add.s r14, r14, r20
001c10  5b010000  j 8
001c14  17177701  or r14, r14, r23
001c18  e346ffef  loadli.w r13,  -2052(r30)
001c1c  9708d800  and r17, r16, r13
001c20  93881d05  setlt.u r17, r27, r17
001c24  3be00800  bneq r17, zero, 24
001c28  9b480801  srli r17, r16, 16
001c2c  9b881800  andi r17, r17, 1
001c30  0b181811  add.s r16, r16, r17
001c34  0b184811  add.s r16, r16, r20
001c38  5b010000  j 8
001c3c  17187801  or r16, r16, r23
001c40  e346ffef  loadli.w r13,  -2052(r30)
001c44  9708d100  and r17, r2, r13
001c48  93881d05  setlt.u r17, r27, r17
001c4c  3be00800  bneq r17, zero, 24
001c50  9b480101  srli r17, r2, 16
001c54  9b881800  andi r17, r17, 1
001c58  0b111111  add.s r2, r2, r17
001c5c  0b114111  add.s r2, r2, r20
001c60  5b010000  j 8
001c64  17117101  or r2, r2, r23
001c68  e346ffef  loadli.w r13,  -2052(r30)
001c6c  9708d400  and r17, r8, r13
001c70  93881d05  setlt.u r17, r27, r17
001c74  3be00800  bneq r17, zero, 24
001c78  9b480401  srli r17, r8, 16
001c7c  9b881800  andi r17, r17, 1
001c80  0b141411  add.s r8, r8, r17
001c84  0b144411  add.s r8, r8, r20
001c88  5b010000  j 8
001c8c  17147401  or r8, r8, r23
001c90  e346ffef  loadli.w r13,  -2052(r30)
001c94  9788d700  and r17, r15, r13
001c98  93881d05  setlt.u r17, r27, r17
001c9c  3be00800  bneq r17, zero, 24
001ca0  9bc80701  srli r17, r15, 16
001ca4  9b881800  andi r17, r17, 1
001ca8  8b971711  add.s r15, r15, r17
001cac  8b9a4711  add.s r21, r15, r20
001cb0  5b010000  j 8
001cb4  979a7701  or r21, r15, r23
001cb8  e346ffef  loadli.w r13,  -2052(r30)
001cbc  9788d000  and r17, r1, r13
001cc0  93881d05  setlt.u r17, r27, r17
001cc4  3be00800  bneq r17, zero, 24
001cc8  9bc80001  srli r17, r1, 16
001ccc  9b881800  andi r17, r17, 1
001cd0  8b901011  add.s r1, r1, r17
001cd4  8b904011  add.s r1, r1, r20
001cd8  5b010000  j 8
001cdc  97907001  or r1, r1, r23
001ce0  e346ffef  loadli.w r13,  -2052(r30)
001ce4  9708d600  and r17, r12, r13
001ce8  93881d05  setlt.u r17, r27, r17
001cec  3be00800  bneq r17, zero, 24
001cf0  9b480601  srli r17, r12, 16
001cf4  9b881800  andi r17, r17, 1
001cf8  0b161611  add.s r12, r12, r17
001cfc  0b164611  add.s r12, r12, r20
001d00  5b010000  j 8
001d04  17167601  or r12, r12, r23
001d08  e346ffef  loadli.w r13,  -2052(r30)
001d0c  9788d500  and r17, r11, r13
001d10  93881d05  setlt.u r17, r27, r17
001d14  3be00800  bneq r17, zero, 24
001d18  9bc80501  srli r17, r11, 16
001d1c  9b881800  andi r17, r17, 1
001d20  8b951511  add.s r11, r11, r17
001d24  8b954511  add.s r11, r11, r20
001d28  5b010000  j 8
001d2c  97957501  or r11, r11, r23
001d30  e346ffef  loadli.w r13,  -2052(r30)
001d34  9708d500  and r17, r10, r13
001d38  93881d05  setlt.u r17, r27, r17
001d3c  3be00800  bneq r17, zero, 24
001d40  9b480501  srli r17, r10, 16
001d44  9b881800  andi r17, r17, 1
001d48  0b151511  add.s r10, r10, r17
001d4c  0b154511  add.s r10, r10, r20
001d50  5b010000  j 8
001d54  17157501  or r10, r10, r23
001d58  e346ffef  loadli.w r13,  -2052(r30)
001d5c  9788d400  and r17, r9, r13
001d60  93881d05  setlt.u r17, r27, r17
001d64  3be00800  bneq r17, zero, 24
001d68  9bc80401  srli r17, r9, 16
001d6c  9b881800  andi r17, r17, 1
001d70  8b941411  add.s r9, r9, r17
001d74  8b944411  add.s r9, r9, r20
001d78  5b010000  j 8
001d7c  97947401  or r9, r9, r23
001d80  e346ffef  loadli.w r13,  -2052(r30)
001d84  9788d300  and r17, r7, r13
001d88  93881d05  setlt.u r17, r27, r17
001d8c  3be00800  bneq r17, zero, 24
001d90  9bc80301  srli r17, r7, 16
001d94  9b881800  andi r17, r17, 1
001d98  8b931311  add.s r7, r7, r17
001d9c  8b934311  add.s r7, r7, r20
001da0  5b010000  j 8
001da4  97937301  or r7, r7, r23
001da8  e346ffef  loadli.w r13,  -2052(r30)
001dac  9708d300  and r17, r6, r13
001db0  93881d05  setlt.u r17, r27, r17
001db4  3be00800  bneq r17, zero, 24
001db8  9b480301  srli r17, r6, 16
001dbc  9b881800  andi r17, r17, 1
001dc0  0b131311  add.s r6, r6, r17
001dc4  0b134311  add.s r6, r6, r20
001dc8  5b010000  j 8
001dcc  17137301  or r6, r6, r23
001dd0  e346ffef  loadli.w r13,  -2052(r30)
001dd4  9788d200  and r17, r5, r13
001dd8  93881d05  setlt.u r17, r27, r17
001ddc  3be00800  bneq r17, zero, 24
001de0  9bc80201  srli r17, r5, 16
001de4  9b881800  andi r17, r17, 1
001de8  8b921211  add.s r5, r5, r17
001dec  8b924211  add.s r5, r5, r20
001df0  5b010000  j 8
001df4  97927201  or r5, r5, r23
001df8  e346ffef  loadli.w r13,  -2052(r30)
001dfc  9708d200  and r17, r4, r13
001e00  93881d05  setlt.u r17, r27, r17
001e04  3be00800  bneq r17, zero, 24
001e08  9b480201  srli r17, r4, 16
001e0c  9b881800  andi r17, r17, 1
001e10  0b121211  add.s r4, r4, r17
001e14  0b124211  add.s r4, r4, r20
001e18  5b010000  j 8
001e1c  17127201  or r4, r4, r23
001e20  e346ffef  loadli.w r13,  -2052(r30)
001e24  9788d100  and r17, r3, r13
001e28  ab06807f  lui r13, 522240
001e2c  93881d05  setlt.u r17, r27, r17
001e30  3be00800  bneq r17, zero, 24
001e34  9bc80101  srli r17, r3, 16
001e38  9b881800  andi r17, r17, 1
001e3c  8b911111  add.s r3, r3, r17
001e40  8b914111  add.s r3, r3, r20
001e44  5b010000  j 8
001e48  97917101  or r3, r3, r23
001e4c  ab08ffff  lui r17, 1048560
001e50  17081801  and r16, r16, r17
001e54  978d1101  and r27, r3, r17
001e58  97801001  and r1, r1, r17
001e5c  17051501  and r10, r10, r17
001e60  178b1301  and r22, r7, r17
001e64  178a1a01  and r20, r21, r17
001e68  17061601  and r12, r12, r17
001e6c  97851501  and r11, r11, r17
001e70  178c1201  and r24, r5, r17
001e74  978a1401  and r21, r9, r17
001e78  970b1301  and r23, r6, r17
001e7c  170d1201  and r26, r4, r17
001e80  97891901  and r19, r19, r17
001e84  17071701  and r14, r14, r17
001e88  17011101  and r2, r2, r17
001e8c  17041401  and r8, r8, r17
001e90  9f018000  addli r3, zero, 64
001e94  1f020800  addli r4, r16, 0
001e98  e74c1fec  storeli.w r1, -2356(r30)
001e9c  670cafec  storeli.w r10, -2368(r30)
001ea0  9f020500  addli r5, r10, 0
001ea4  e70abfed  storeli.w r27, -2392(r30)
001ea8  1f850d00  addli r10, r27, 0
001eac  9f8d0000  addli r27, r1, 0
001eb0  e300efef  loadli.w r1,  -2064(r30)
001eb4  e74d0fed  storeli.w r16, -2340(r30)
001eb8  1f880900  addli r16, r19, 0
001ebc  674d8fec  storeli.w r8, -2348(r30)
001ec0  9f070600  addli r15, r12, 0
001ec4  1f890500  addli r18, r11, 0
001ec8  e74b5fed  storeli.w r21, -2372(r30)
001ecc  1f830a00  addli r6, r21, 0
001ed0  9f0a0700  addli r21, r14, 0
001ed4  e70b6fed  storeli.w r22, -2376(r30)
001ed8  9f030b00  addli r7, r22, 0
001edc  674b7fed  storeli.w r23, -2380(r30)
001ee0  670b8fed  storeli.w r24, -2384(r30)
001ee4  9f040c00  addli r9, r24, 0
001ee8  1f0c0400  addli r24, r8, 0
001eec  e74aafed  storeli.w r26, -2388(r30)
001ef0  1f040d00  addli r8, r26, 0
001ef4  1f0d0a00  addli r26, r20, 0
001ef8  674e3fed  storeli.w r19, -2332(r30)
001efc  670eefec  storeli.w r14, -2336(r30)
001f00  e70d2fec  storeli.w r2, -2344(r30)
001f04  670d4fed  storeli.w r20, -2352(r30)
001f08  e70ccfec  storeli.w r12, -2360(r30)
001f0c  674cbfec  storeli.w r11, -2364(r30)
001f10  1f0b0200  addli r22, r4, 0
001f14  1f820b00  addli r4, r23, 0
001f18  9f0b0100  addli r23, r2, 0
001f1c  3f913000  blt.s r1, r3, 68
001f20  1f080000  addli r16, zero, 0
001f24  9f0a0000  addli r21, zero, 0
001f28  1f0b0000  addli r22, zero, 0
001f2c  9f0b0000  addli r23, zero, 0
001f30  1f0c0000  addli r24, zero, 0
001f34  1f0d0000  addli r26, zero, 0
001f38  9f0d0000  addli r27, zero, 0
001f3c  9f070000  addli r15, zero, 0
001f40  1f090000  addli r18, zero, 0
001f44  9f020000  addli r5, zero, 0
001f48  1f030000  addli r6, zero, 0
001f4c  9f030000  addli r7, zero, 0
001f50  1f020000  addli r4, zero, 0
001f54  9f040000  addli r9, zero, 0
001f58  1f040000  addli r8, zero, 0
001f5c  1f050000  addli r10, zero, 0
001f60  9f000ff8  addli r1, r30, -1024
001f64  1f818000  addli r2, r1, 64
001f68  e74e2fec  storeli.w r2, -2324(r30)
001f6c  1f810001  addli r2, r1, 128
001f70  9f808001  addli r1, r1, 192
001f74  670f2fec  storeli.w r2, -2320(r30)
001f78  674f1fec  storeli.w r1, -2316(r30)
001f7c  00a00000  mfence { lm }
001f80  db150000  j 172
001f84  9f000000  addli r1, zero, 0
001f88  9f020000  addli r5, zero, 0
001f8c  1f030000  addli r6, zero, 0
001f90  1f070000  addli r14, zero, 0
001f94  9f090000  addli r19, zero, 0
001f98  9f0c0000  addli r25, zero, 0
001f9c  1f040000  addli r8, zero, 0
001fa0  1f0e0000  addli r28, zero, 0
001fa4  9f080000  addli r17, zero, 0
001fa8  9f040000  addli r9, zero, 0
001fac  9f030000  addli r7, zero, 0
001fb0  1f020000  addli r4, zero, 0
001fb4  1f010000  addli r2, zero, 0
001fb8  1f050000  addli r10, zero, 0
001fbc  1f0a0000  addli r20, zero, 0
001fc0  9f050000  addli r11, zero, 0
001fc4  8bea5a10  add.f.rn r21, r21, r5
001fc8  e3020fef  loadli.w r5,  -2176(r30)
001fcc  0b6b6b10  add.f.rn r22, r22, r6
001fd0  63038fee  loadli.w r6,  -2240(r30)
001fd4  8bed8d10  add.f.rn r27, r27, r8
001fd8  63045fee  loadli.w r8,  -2264(r30)
001fdc  0b681810  add.f.rn r16, r16, r1
001fe0  8bebeb10  add.f.rn r23, r23, r14
001fe4  0b6c3c11  add.f.rn r24, r24, r19
001fe8  0b6d9d11  add.f.rn r26, r26, r25
001fec  8be7c711  add.f.rn r15, r15, r28
001ff0  0b691911  add.f.rn r18, r18, r17
001ff4  9f818100  addli r3, r3, 64
001ff8  9f000004  addli r1, zero, 512
001ffc  8be29210  add.f.rn r5, r5, r9
002000  e3445fee  loadli.w r9,  -2260(r30)
002004  0b637310  add.f.rn r6, r6, r7
002008  e3037fee  loadli.w r7,  -2248(r30)
00200c  0b644411  add.f.rn r8, r8, r20
002010  8be34310  add.f.rn r7, r7, r4
002014  63026fee  loadli.w r4,  -2256(r30)
002018  8be4a410  add.f.rn r9, r9, r10
00201c  63454fee  loadli.w r10,  -2268(r30)
002020  0b622210  add.f.rn r4, r4, r2
002024  0b65b510  add.f.rn r10, r10, r11
002028  378b1102  beq r3, r1, 1728
00202c  9f000ff8  addli r1, r30, -1024
002030  67034fee  storeli.w r4, -2256(r30)
002034  67085fee  storeli.w r5, -2176(r30)
002038  9230b002  vadd.s.mz vr1{mr1}, zero, vr11
00203c  1f1e0000  addli r28, zero, 1
002040  67046fee  storeli.w r6, -2240(r30)
002044  6742afee  storeli.w r10, -2268(r30)
002048  e7028fee  storeli.w r8, -2264(r30)
00204c  e7429fee  storeli.w r9, -2260(r30)
002050  e7037fee  storeli.w r7, -2248(r30)
002054  1231b002  vadd.s.mz vr2{mr1}, zero, vr11
002058  0b923010  add.s r4, r1, r3
00205c  7e010ee0  vmmov mr2, r28
002060  eb320200  load.hu r5, 0(r4)
002064  6b332200  load.hu r6, 2(r4)
002068  6b31a201  load.hu r2, 26(r4)
00206c  eb30c201  load.hu r1, 28(r4)
002070  eb334200  load.hu r7, 4(r4)
002074  6b346200  load.hu r8, 6(r4)
002078  eb348200  load.hu r9, 8(r4)
00207c  6b35a200  load.hu r10, 10(r4)
002080  eb35c200  load.hu r11, 12(r4)
002084  6b36e200  load.hu r12, 14(r4)
002088  6b370201  load.hu r14, 16(r4)
00208c  eb382201  load.hu r17, 18(r4)
002090  eb394201  load.hu r19, 20(r4)
002094  6b3a6201  load.hu r20, 22(r4)
002098  eb3c8201  load.hu r25, 24(r4)
00209c  6b32e201  load.hu r4, 30(r4)
0020a0  b3920218  bfloat2float.rn r5, r5
0020a4  33110118  bfloat2float.rn r2, r2
0020a8  b3900018  bfloat2float.rn r1, r1
0020ac  eaa01234  vor.u.mh vr1{mr2}, r5, vr1
0020b0  b3120318  bfloat2float.rn r5, r6
0020b4  1f230000  addli r6, zero, 2
0020b8  fe0103e0  vmmov mr3, r6
0020bc  1f430000  addli r6, zero, 4
0020c0  eaa01236  vor.u.mh vr1{mr3}, r5, vr1
0020c4  b3920318  bfloat2float.rn r5, r7
0020c8  7e0003e0  vmmov mr0, r6
0020cc  1f031000  addli r6, zero, 8
0020d0  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0020d4  b3120418  bfloat2float.rn r5, r8
0020d8  7e0003e0  vmmov mr0, r6
0020dc  1f032000  addli r6, zero, 16
0020e0  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0020e4  b3920418  bfloat2float.rn r5, r9
0020e8  7e0003e0  vmmov mr0, r6
0020ec  1f034000  addli r6, zero, 32
0020f0  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0020f4  b3120518  bfloat2float.rn r5, r10
0020f8  7e0003e0  vmmov mr0, r6
0020fc  1f038000  addli r6, zero, 64
002100  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002104  b3920518  bfloat2float.rn r5, r11
002108  7e0003e0  vmmov mr0, r6
00210c  1f030001  addli r6, zero, 128
002110  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002114  b3120618  bfloat2float.rn r5, r12
002118  7e0003e0  vmmov mr0, r6
00211c  1f030002  addli r6, zero, 256
002120  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002124  b3120718  bfloat2float.rn r5, r14
002128  7e0003e0  vmmov mr0, r6
00212c  1f030004  addli r6, zero, 512
002130  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002134  b3920818  bfloat2float.rn r5, r17
002138  7e0003e0  vmmov mr0, r6
00213c  1f030008  addli r6, zero, 1024
002140  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002144  b3920918  bfloat2float.rn r5, r19
002148  7e0003e0  vmmov mr0, r6
00214c  1f030010  addli r6, zero, 2048
002150  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002154  b3120a18  bfloat2float.rn r5, r20
002158  7e0003e0  vmmov mr0, r6
00215c  1f030020  addli r6, zero, 4096
002160  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002164  b3920c18  bfloat2float.rn r5, r25
002168  7e0003e0  vmmov mr0, r6
00216c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002170  9f020040  addli r5, zero, 8192
002174  7e8002e0  vmmov mr0, r5
002178  ea201130  vor.u.mh vr1{mr0}, r2, vr1
00217c  2b410000  lui r2, 4
002180  7e0001e0  vmmov mr0, r2
002184  1f010ffa  addli r2, r30, -768
002188  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00218c  b3100218  bfloat2float.rn r1, r4
002190  2b820000  lui r4, 8
002194  0b113110  add.s r2, r2, r3
002198  7e0002e0  vmmov mr0, r4
00219c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0021a0  eb300100  load.hu r1, 0(r2)
0021a4  6b322100  load.hu r4, 2(r2)
0021a8  eb324100  load.hu r5, 4(r2)
0021ac  6b336100  load.hu r6, 6(r2)
0021b0  eb338100  load.hu r7, 8(r2)
0021b4  6b34a100  load.hu r8, 10(r2)
0021b8  eb34c100  load.hu r9, 12(r2)
0021bc  6b35e100  load.hu r10, 14(r2)
0021c0  eb350101  load.hu r11, 16(r2)
0021c4  6b362101  load.hu r12, 18(r2)
0021c8  6b374101  load.hu r14, 20(r2)
0021cc  eb386101  load.hu r17, 22(r2)
0021d0  eb398101  load.hu r19, 24(r2)
0021d4  6b3aa101  load.hu r20, 26(r2)
0021d8  eb3cc101  load.hu r25, 28(r2)
0021dc  6b31e101  load.hu r2, 30(r2)
0021e0  b3900018  bfloat2float.rn r1, r1
0021e4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0021e8  b3100218  bfloat2float.rn r1, r4
0021ec  1f420000  addli r4, zero, 4
0021f0  7e0102e0  vmmov mr2, r4
0021f4  1f021000  addli r4, zero, 8
0021f8  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0021fc  b3900218  bfloat2float.rn r1, r5
002200  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002204  b3100318  bfloat2float.rn r1, r6
002208  7e0102e0  vmmov mr2, r4
00220c  1f022000  addli r4, zero, 16
002210  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002214  b3900318  bfloat2float.rn r1, r7
002218  7e0102e0  vmmov mr2, r4
00221c  1f024000  addli r4, zero, 32
002220  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002224  b3100418  bfloat2float.rn r1, r8
002228  7e0102e0  vmmov mr2, r4
00222c  1f028000  addli r4, zero, 64
002230  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002234  b3900418  bfloat2float.rn r1, r9
002238  7e0102e0  vmmov mr2, r4
00223c  1f020001  addli r4, zero, 128
002240  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002244  b3100518  bfloat2float.rn r1, r10
002248  7e0102e0  vmmov mr2, r4
00224c  1f020002  addli r4, zero, 256
002250  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002254  b3900518  bfloat2float.rn r1, r11
002258  7e0102e0  vmmov mr2, r4
00225c  1f020004  addli r4, zero, 512
002260  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002264  b3100618  bfloat2float.rn r1, r12
002268  7e0102e0  vmmov mr2, r4
00226c  1f020008  addli r4, zero, 1024
002270  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002274  b3100718  bfloat2float.rn r1, r14
002278  7e0102e0  vmmov mr2, r4
00227c  1f020010  addli r4, zero, 2048
002280  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002284  b3900818  bfloat2float.rn r1, r17
002288  7e0102e0  vmmov mr2, r4
00228c  1f020020  addli r4, zero, 4096
002290  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002294  b3900918  bfloat2float.rn r1, r19
002298  7e0102e0  vmmov mr2, r4
00229c  1f020040  addli r4, zero, 8192
0022a0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0022a4  b3100a18  bfloat2float.rn r1, r20
0022a8  7e0102e0  vmmov mr2, r4
0022ac  2b420000  lui r4, 4
0022b0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0022b4  b3900c18  bfloat2float.rn r1, r25
0022b8  7e0102e0  vmmov mr2, r4
0022bc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0022c0  b3100118  bfloat2float.rn r1, r2
0022c4  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0022c8  9f000ff4  addli r1, r30, -1536
0022cc  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
0022d0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0022d4  00a00000  mfence { lm }
0022d8  e3050ff4  loadli.w r11,  -1536(r30)
0022dc  63450ff4  loadli.w r10,  -1532(r30)
0022e0  e3041ff4  loadli.w r9,  -1528(r30)
0022e4  63431ff4  loadli.w r6,  -1524(r30)
0022e8  e3022ff4  loadli.w r5,  -1520(r30)
0022ec  e3432ff4  loadli.w r7,  -1516(r30)
0022f0  63043ff4  loadli.w r8,  -1512(r30)
0022f4  634e3ff4  loadli.w r28,  -1508(r30)
0022f8  e3084ff4  loadli.w r17,  -1504(r30)
0022fc  634a4ff4  loadli.w r20,  -1500(r30)
002300  e340ffef  loadli.w r1,  -2052(r30)
002304  63075ff4  loadli.w r14,  -1496(r30)
002308  63425ff4  loadli.w r4,  -1492(r30)
00230c  63016ff4  loadli.w r2,  -1488(r30)
002310  e3496ff4  loadli.w r19,  -1484(r30)
002314  e30c7ff4  loadli.w r25,  -1480(r30)
002318  97801500  and r1, r11, r1
00231c  13861604  setlt.u r12, r13, r1
002320  e3407ff4  loadli.w r1,  -1476(r30)
002324  3b700600  bneq r12, zero, 28
002328  1bc60501  srli r12, r11, 16
00232c  1b061600  andi r12, r12, 1
002330  8b95c510  add.s r11, r11, r12
002334  6306ffef  loadli.w r12,  -2056(r30)
002338  8b95c510  add.s r11, r11, r12
00233c  db010000  j 12
002340  2b064000  lui r12, 1024
002344  9795c500  or r11, r11, r12
002348  6702bfee  storeli.w r11, -2272(r30)
00234c  e345ffef  loadli.w r11,  -2052(r30)
002350  9705b500  and r11, r10, r11
002354  9385b604  setlt.u r11, r13, r11
002358  3bf00500  bneq r11, zero, 28
00235c  9b450501  srli r11, r10, 16
002360  9b851500  andi r11, r11, 1
002364  0b15b510  add.s r10, r10, r11
002368  e305ffef  loadli.w r11,  -2056(r30)
00236c  0b15b510  add.s r10, r10, r11
002370  db010000  j 12
002374  ab054000  lui r11, 1024
002378  1715b500  or r10, r10, r11
00237c  e741afee  storeli.w r10, -2276(r30)
002380  6345ffef  loadli.w r10,  -2052(r30)
002384  1785a400  and r10, r9, r10
002388  1385a604  setlt.u r10, r13, r10
00238c  3b700500  bneq r10, zero, 28
002390  1bc50401  srli r10, r9, 16
002394  1b051500  andi r10, r10, 1
002398  8b94a410  add.s r9, r9, r10
00239c  6305ffef  loadli.w r10,  -2056(r30)
0023a0  8b94a410  add.s r9, r9, r10
0023a4  db010000  j 12
0023a8  2b054000  lui r10, 1024
0023ac  9794a400  or r9, r9, r10
0023b0  e7019fee  storeli.w r9, -2280(r30)
0023b4  e344ffef  loadli.w r9,  -2052(r30)
0023b8  97049300  and r9, r6, r9
0023bc  93849604  setlt.u r9, r13, r9
0023c0  3bf00400  bneq r9, zero, 28
0023c4  9b440301  srli r9, r6, 16
0023c8  9b841400  andi r9, r9, 1
0023cc  0b139310  add.s r6, r6, r9
0023d0  e304ffef  loadli.w r9,  -2056(r30)
0023d4  8b149310  add.s r9, r6, r9
0023d8  db010000  j 12
0023dc  ab044000  lui r9, 1024
0023e0  97149300  or r9, r6, r9
0023e4  6343ffef  loadli.w r6,  -2052(r30)
0023e8  17836200  and r6, r5, r6
0023ec  13836604  setlt.u r6, r13, r6
0023f0  3b700300  bneq r6, zero, 28
0023f4  1bc30201  srli r6, r5, 16
0023f8  1b031300  andi r6, r6, 1
0023fc  8b926210  add.s r5, r5, r6
002400  6303ffef  loadli.w r6,  -2056(r30)
002404  8b926210  add.s r5, r5, r6
002408  db010000  j 12
00240c  2b034000  lui r6, 1024
002410  97926200  or r5, r5, r6
002414  67415fee  storeli.w r5, -2284(r30)
002418  e342ffef  loadli.w r5,  -2052(r30)
00241c  97825300  and r5, r7, r5
002420  93825604  setlt.u r5, r13, r5
002424  3bf00200  bneq r5, zero, 28
002428  9bc20301  srli r5, r7, 16
00242c  6303ffef  loadli.w r6,  -2056(r30)
002430  9b821200  andi r5, r5, 1
002434  8b925310  add.s r5, r7, r5
002438  8b926210  add.s r5, r5, r6
00243c  db010000  j 12
002440  ab024000  lui r5, 1024
002444  97925300  or r5, r7, r5
002448  67015fee  storeli.w r5, -2288(r30)
00244c  e342ffef  loadli.w r5,  -2052(r30)
002450  97025400  and r5, r8, r5
002454  93825604  setlt.u r5, r13, r5
002458  3bf00200  bneq r5, zero, 28
00245c  9b420401  srli r5, r8, 16
002460  6303ffef  loadli.w r6,  -2056(r30)
002464  9b821200  andi r5, r5, 1
002468  8b125410  add.s r5, r8, r5
00246c  0b946210  add.s r8, r5, r6
002470  db010000  j 12
002474  ab024000  lui r5, 1024
002478  17145400  or r8, r8, r5
00247c  e342ffef  loadli.w r5,  -2052(r30)
002480  97025e00  and r5, r28, r5
002484  93825604  setlt.u r5, r13, r5
002488  3bf00200  bneq r5, zero, 28
00248c  9b420e01  srli r5, r28, 16
002490  6303ffef  loadli.w r6,  -2056(r30)
002494  9b821200  andi r5, r5, 1
002498  8b125e10  add.s r5, r28, r5
00249c  0b9e6210  add.s r28, r5, r6
0024a0  db010000  j 12
0024a4  ab024000  lui r5, 1024
0024a8  171e5e00  or r28, r28, r5
0024ac  e342ffef  loadli.w r5,  -2052(r30)
0024b0  97825800  and r5, r17, r5
0024b4  93825604  setlt.u r5, r13, r5
0024b8  3bf00200  bneq r5, zero, 28
0024bc  9bc20801  srli r5, r17, 16
0024c0  6303ffef  loadli.w r6,  -2056(r30)
0024c4  9b821200  andi r5, r5, 1
0024c8  8b925810  add.s r5, r17, r5
0024cc  8b986210  add.s r17, r5, r6
0024d0  db010000  j 12
0024d4  ab024000  lui r5, 1024
0024d8  97985800  or r17, r17, r5
0024dc  e342ffef  loadli.w r5,  -2052(r30)
0024e0  97025a00  and r5, r20, r5
0024e4  93825604  setlt.u r5, r13, r5
0024e8  3bf00200  bneq r5, zero, 28
0024ec  9b420a01  srli r5, r20, 16
0024f0  6303ffef  loadli.w r6,  -2056(r30)
0024f4  9b821200  andi r5, r5, 1
0024f8  8b125a10  add.s r5, r20, r5
0024fc  0b9a6210  add.s r20, r5, r6
002500  db010000  j 12
002504  ab024000  lui r5, 1024
002508  171a5a00  or r20, r20, r5
00250c  e342ffef  loadli.w r5,  -2052(r30)
002510  97025700  and r5, r14, r5
002514  93825604  setlt.u r5, r13, r5
002518  3bf00200  bneq r5, zero, 28
00251c  9b420701  srli r5, r14, 16
002520  6303ffef  loadli.w r6,  -2056(r30)
002524  9b821200  andi r5, r5, 1
002528  8b125710  add.s r5, r14, r5
00252c  8b936210  add.s r7, r5, r6
002530  db010000  j 12
002534  ab024000  lui r5, 1024
002538  97135700  or r7, r14, r5
00253c  e342ffef  loadli.w r5,  -2052(r30)
002540  97025200  and r5, r4, r5
002544  93825604  setlt.u r5, r13, r5
002548  3bf00200  bneq r5, zero, 28
00254c  9b420201  srli r5, r4, 16
002550  9b821200  andi r5, r5, 1
002554  0b125210  add.s r4, r4, r5
002558  e302ffef  loadli.w r5,  -2056(r30)
00255c  0b125210  add.s r4, r4, r5
002560  db010000  j 12
002564  ab024000  lui r5, 1024
002568  17125200  or r4, r4, r5
00256c  e342ffef  loadli.w r5,  -2052(r30)
002570  97025100  and r5, r2, r5
002574  93825604  setlt.u r5, r13, r5
002578  3bf00200  bneq r5, zero, 28
00257c  9b420101  srli r5, r2, 16
002580  9b821200  andi r5, r5, 1
002584  0b115110  add.s r2, r2, r5
002588  e302ffef  loadli.w r5,  -2056(r30)
00258c  0b115110  add.s r2, r2, r5
002590  db010000  j 12
002594  ab024000  lui r5, 1024
002598  17115100  or r2, r2, r5
00259c  e342ffef  loadli.w r5,  -2052(r30)
0025a0  97825900  and r5, r19, r5
0025a4  93825604  setlt.u r5, r13, r5
0025a8  3bf00200  bneq r5, zero, 28
0025ac  9bc20901  srli r5, r19, 16
0025b0  6303ffef  loadli.w r6,  -2056(r30)
0025b4  9b821200  andi r5, r5, 1
0025b8  8b925910  add.s r5, r19, r5
0025bc  0b956210  add.s r10, r5, r6
0025c0  db010000  j 12
0025c4  ab024000  lui r5, 1024
0025c8  17955900  or r10, r19, r5
0025cc  e342ffef  loadli.w r5,  -2052(r30)
0025d0  97825c00  and r5, r25, r5
0025d4  93825604  setlt.u r5, r13, r5
0025d8  3bf00200  bneq r5, zero, 28
0025dc  9bc20c01  srli r5, r25, 16
0025e0  6303ffef  loadli.w r6,  -2056(r30)
0025e4  9b821200  andi r5, r5, 1
0025e8  8b925c10  add.s r5, r25, r5
0025ec  8b956210  add.s r11, r5, r6
0025f0  db010000  j 12
0025f4  ab024000  lui r5, 1024
0025f8  97955c00  or r11, r25, r5
0025fc  e342ffef  loadli.w r5,  -2052(r30)
002600  97825000  and r5, r1, r5
002604  93825604  setlt.u r5, r13, r5
002608  3bf00200  bneq r5, zero, 28
00260c  9bc20001  srli r5, r1, 16
002610  9b821200  andi r5, r5, 1
002614  8b905010  add.s r1, r1, r5
002618  e302ffef  loadli.w r5,  -2056(r30)
00261c  0b965010  add.s r12, r1, r5
002620  db010000  j 12
002624  ab024000  lui r5, 1024
002628  17965000  or r12, r1, r5
00262c  e302efef  loadli.w r5,  -2064(r30)
002630  9f008000  addli r1, zero, 64
002634  3fa01200  blt.s r5, r1, 8
002638  db29ffff  j -1716
00263c  e7403fee  storeli.w r3, -2292(r30)
002640  9f010900  addli r3, r18, 0
002644  1f890700  addli r18, r15, 0
002648  9f870d00  addli r15, r27, 0
00264c  9f0d0d00  addli r27, r26, 0
002650  1f0d0c00  addli r26, r24, 0
002654  1f8c0b00  addli r24, r23, 0
002658  9f0b0b00  addli r23, r22, 0
00265c  1f8b0a00  addli r22, r21, 0
002660  9f0a0800  addli r21, r16, 0
002664  2b08ffff  lui r16, 1048560
002668  e3004fee  loadli.w r1,  -2272(r30)
00266c  e3423fee  loadli.w r5,  -2276(r30)
002670  63033fee  loadli.w r6,  -2280(r30)
002674  17870401  and r14, r9, r16
002678  e3442fee  loadli.w r9,  -2284(r30)
00267c  17040401  and r8, r8, r16
002680  170e0e01  and r28, r28, r16
002684  97880801  and r17, r17, r16
002688  97830301  and r7, r7, r16
00268c  17020201  and r4, r4, r16
002690  17010101  and r2, r2, r16
002694  17050501  and r10, r10, r16
002698  97800001  and r1, r1, r16
00269c  97820201  and r5, r5, r16
0026a0  17030301  and r6, r6, r16
0026a4  97890401  and r19, r9, r16
0026a8  e3042fee  loadli.w r9,  -2288(r30)
0026ac  978c0401  and r25, r9, r16
0026b0  97040a01  and r9, r20, r16
0026b4  178a0501  and r20, r11, r16
0026b8  97050601  and r11, r12, r16
0026bc  1f880a00  addli r16, r21, 0
0026c0  9f0a0b00  addli r21, r22, 0
0026c4  1f8b0b00  addli r22, r23, 0
0026c8  9f0b0c00  addli r23, r24, 0
0026cc  1f0c0d00  addli r24, r26, 0
0026d0  1f8d0d00  addli r26, r27, 0
0026d4  9f8d0700  addli r27, r15, 0
0026d8  9f070900  addli r15, r18, 0
0026dc  1f890100  addli r18, r3, 0
0026e0  e3411fee  loadli.w r3,  -2292(r30)
0026e4  5b1cffff  j -1824
0026e8  8b605811  add.f.rn r1, r16, r21
0026ec  6341cfe9  loadli.w r2,  -2844(r30)
0026f0  8be06011  add.f.rn r1, r1, r22
0026f4  8be07011  add.f.rn r1, r1, r23
0026f8  8be08011  add.f.rn r1, r1, r24
0026fc  8be0a011  add.f.rn r1, r1, r26
002700  8be0b011  add.f.rn r1, r1, r27
002704  8be0f010  add.f.rn r1, r1, r15
002708  8be02011  add.f.rn r1, r1, r18
00270c  8be05010  add.f.rn r1, r1, r5
002710  8be06010  add.f.rn r1, r1, r6
002714  8be07010  add.f.rn r1, r1, r7
002718  8be04010  add.f.rn r1, r1, r4
00271c  8be09010  add.f.rn r1, r1, r9
002720  8be08010  add.f.rn r1, r1, r8
002724  8be0a010  add.f.rn r1, r1, r10
002728  73601100  stores.w r1, 0(r2)
00272c  00a00300  mfence { lm, sm, gm }
002730  63021fee  loadli.w r4,  -2296(r30)
002734  80210204  csr_set csr3, r4
002738  00d00100  sync_group
00273c  e3400fee  loadli.w r1,  -2300(r30)
002740  3ba10000  bneq r1, zero, 72
002744  e342dfe9  loadli.w r5,  -2836(r30)
002748  efc00200  loads.w r1, 0(r5)
00274c  6fc14200  loads.w r2, 4(r5)
002750  efc18200  loads.w r3, 8(r5)
002754  8be02010  add.f.rn r1, r1, r2
002758  6fc1c200  loads.w r2, 12(r5)
00275c  8be03010  add.f.rn r1, r1, r3
002760  efc10201  loads.w r3, 16(r5)
002764  8be02010  add.f.rn r1, r1, r2
002768  6fc14201  loads.w r2, 20(r5)
00276c  8be03010  add.f.rn r1, r1, r3
002770  efc18201  loads.w r3, 24(r5)
002774  8be02010  add.f.rn r1, r1, r2
002778  6fc1c201  loads.w r2, 28(r5)
00277c  8be03010  add.f.rn r1, r1, r3
002780  8be02010  add.f.rn r1, r1, r2
002784  73e01200  stores.w r1, 0(r5)
002788  00a00300  mfence { lm, sm, gm }
00278c  80210204  csr_set csr3, r4
002790  00d00100  sync_group
002794  e340dfe9  loadli.w r1,  -2836(r30)
002798  2b01803a  lui r2, 239616
00279c  630cffef  loadli.w r24,  -2056(r30)
0027a0  9f018000  addli r3, zero, 64
0027a4  1f0d0ff8  addli r26, r30, -1024
0027a8  ab0d807f  lui r27, 522240
0027ac  efc00000  loads.w r1, 0(r1)
0027b0  8be32020  mul.f.rn r7, r1, r2
0027b4  e300efef  loadli.w r1,  -2064(r30)
0027b8  e7407fee  storeli.w r7, -2292(r30)
0027bc  3fa13000  blt.s r1, r3, 72
0027c0  1f060000  addli r12, zero, 0
0027c4  1f050000  addli r10, zero, 0
0027c8  9f030000  addli r7, zero, 0
0027cc  9f060000  addli r13, zero, 0
0027d0  9f020000  addli r5, zero, 0
0027d4  1f030000  addli r6, zero, 0
0027d8  1f040000  addli r8, zero, 0
0027dc  9f040000  addli r9, zero, 0
0027e0  9f050000  addli r11, zero, 0
0027e4  9f0b0000  addli r23, zero, 0
0027e8  1f020000  addli r4, zero, 0
0027ec  1f070000  addli r14, zero, 0
0027f0  9f070000  addli r15, zero, 0
0027f4  1f080000  addli r16, zero, 0
0027f8  9f080000  addli r17, zero, 0
0027fc  9f090000  addli r19, zero, 0
002800  db1a0000  j 212
002804  e340cfed  loadli.w r1,  -2332(r30)
002808  6301cfed  loadli.w r2,  -2336(r30)
00280c  6342bfed  loadli.w r4,  -2340(r30)
002810  e302bfed  loadli.w r5,  -2344(r30)
002814  63068fed  loadli.w r12,  -2368(r30)
002818  e3467fed  loadli.w r13,  -2372(r30)
00281c  6343afed  loadli.w r6,  -2348(r30)
002820  6304afed  loadli.w r8,  -2352(r30)
002824  e3449fed  loadli.w r9,  -2356(r30)
002828  63059fed  loadli.w r10,  -2360(r30)
00282c  e3458fed  loadli.w r11,  -2364(r30)
002830  63077fed  loadli.w r14,  -2376(r30)
002834  e3476fed  loadli.w r15,  -2380(r30)
002838  63086fed  loadli.w r16,  -2384(r30)
00283c  e3485fed  loadli.w r17,  -2388(r30)
002840  e3095fed  loadli.w r19,  -2392(r30)
002844  8be07018  sub.f.rn r1, r1, r7
002848  0b617118  sub.f.rn r2, r2, r7
00284c  0b667618  sub.f.rn r12, r12, r7
002850  0b627218  sub.f.rn r4, r4, r7
002854  8be27218  sub.f.rn r5, r5, r7
002858  8be67618  sub.f.rn r13, r13, r7
00285c  8be57518  sub.f.rn r11, r11, r7
002860  0b677718  sub.f.rn r14, r14, r7
002864  8be77718  sub.f.rn r15, r15, r7
002868  0b687818  sub.f.rn r16, r16, r7
00286c  8be87818  sub.f.rn r17, r17, r7
002870  8be97918  sub.f.rn r19, r19, r7
002874  0b637318  sub.f.rn r6, r6, r7
002878  0b647418  sub.f.rn r8, r8, r7
00287c  8be47418  sub.f.rn r9, r9, r7
002880  0b657518  sub.f.rn r10, r10, r7
002884  8be01020  mul.f.rn r1, r1, r1
002888  8b634220  mul.f.rn r7, r4, r4
00288c  0be25220  mul.f.rn r4, r5, r5
002890  8b6bc620  mul.f.rn r23, r12, r12
002894  0b612120  mul.f.rn r2, r2, r2
002898  8b626320  mul.f.rn r5, r6, r6
00289c  0b638420  mul.f.rn r6, r8, r8
0028a0  0be49420  mul.f.rn r8, r9, r9
0028a4  8b64a520  mul.f.rn r9, r10, r10
0028a8  8be5b520  mul.f.rn r11, r11, r11
0028ac  0b67e720  mul.f.rn r14, r14, r14
0028b0  8be7f720  mul.f.rn r15, r15, r15
0028b4  0b680821  mul.f.rn r16, r16, r16
0028b8  8be81821  mul.f.rn r17, r17, r17
0028bc  8be93921  mul.f.rn r19, r19, r19
0028c0  1f860000  addli r12, r1, 0
0028c4  8be0d620  mul.f.rn r1, r13, r13
0028c8  9f060200  addli r13, r4, 0
0028cc  1f050100  addli r10, r2, 0
0028d0  1f820000  addli r4, r1, 0
0028d4  e3409fe9  loadli.w r1,  -2868(r30)
0028d8  6301dfed  loadli.w r2,  -2328(r30)
0028dc  8b902010  add.s r1, r1, r2
0028e0  e7011fea  storeli.w r1, -2792(r30)
0028e4  e3009fe9  loadli.w r1,  -2872(r30)
0028e8  8b902010  add.s r1, r1, r2
0028ec  67411fea  storeli.w r1, -2796(r30)
0028f0  e3408fe9  loadli.w r1,  -2876(r30)
0028f4  8b902010  add.s r1, r1, r2
0028f8  67011fea  storeli.w r1, -2800(r30)
0028fc  e3008fe9  loadli.w r1,  -2880(r30)
002900  8b902010  add.s r1, r1, r2
002904  e7401fea  storeli.w r1, -2804(r30)
002908  e3407fe9  loadli.w r1,  -2884(r30)
00290c  8b902010  add.s r1, r1, r2
002910  e7001fea  storeli.w r1, -2808(r30)
002914  e3007fe9  loadli.w r1,  -2888(r30)
002918  8b902010  add.s r1, r1, r2
00291c  67401fea  storeli.w r1, -2812(r30)
002920  e3406fe9  loadli.w r1,  -2892(r30)
002924  8b902010  add.s r1, r1, r2
002928  67001fea  storeli.w r1, -2816(r30)
00292c  e3006fe9  loadli.w r1,  -2896(r30)
002930  8b902010  add.s r1, r1, r2
002934  e74f1fe8  storeli.w r1, -2820(r30)
002938  e3405fe9  loadli.w r1,  -2900(r30)
00293c  8b902010  add.s r1, r1, r2
002940  e70f1fe8  storeli.w r1, -2824(r30)
002944  e3005fe9  loadli.w r1,  -2904(r30)
002948  8b902010  add.s r1, r1, r2
00294c  674f1fe8  storeli.w r1, -2828(r30)
002950  e3404fe9  loadli.w r1,  -2908(r30)
002954  8b902010  add.s r1, r1, r2
002958  670f1fe8  storeli.w r1, -2832(r30)
00295c  e3004fe9  loadli.w r1,  -2912(r30)
002960  8b902010  add.s r1, r1, r2
002964  e7411fea  storeli.w r1, -2788(r30)
002968  e3403fe9  loadli.w r1,  -2916(r30)
00296c  8b902010  add.s r1, r1, r2
002970  67021fea  storeli.w r1, -2784(r30)
002974  e3003fe9  loadli.w r1,  -2920(r30)
002978  8b902010  add.s r1, r1, r2
00297c  67421fea  storeli.w r1, -2780(r30)
002980  e3402fe9  loadli.w r1,  -2924(r30)
002984  8b902010  add.s r1, r1, r2
002988  e7021fea  storeli.w r1, -2776(r30)
00298c  e3002fe9  loadli.w r1,  -2928(r30)
002990  8b902010  add.s r1, r1, r2
002994  e7421fea  storeli.w r1, -2772(r30)
002998  e3401fe9  loadli.w r1,  -2932(r30)
00299c  8b902010  add.s r1, r1, r2
0029a0  67031fea  storeli.w r1, -2768(r30)
0029a4  e340ffe8  loadli.w r1,  -2948(r30)
0029a8  8b902010  add.s r1, r1, r2
0029ac  67431fea  storeli.w r1, -2764(r30)
0029b0  e340efe8  loadli.w r1,  -2956(r30)
0029b4  8b902010  add.s r1, r1, r2
0029b8  e7031fea  storeli.w r1, -2760(r30)
0029bc  e300efe8  loadli.w r1,  -2960(r30)
0029c0  8b902010  add.s r1, r1, r2
0029c4  e7431fea  storeli.w r1, -2756(r30)
0029c8  e340dfe8  loadli.w r1,  -2964(r30)
0029cc  8b902010  add.s r1, r1, r2
0029d0  67041fea  storeli.w r1, -2752(r30)
0029d4  e300dfe8  loadli.w r1,  -2968(r30)
0029d8  8b902010  add.s r1, r1, r2
0029dc  67441fea  storeli.w r1, -2748(r30)
0029e0  e340cfe8  loadli.w r1,  -2972(r30)
0029e4  8b902010  add.s r1, r1, r2
0029e8  e7041fea  storeli.w r1, -2744(r30)
0029ec  e300cfe8  loadli.w r1,  -2976(r30)
0029f0  8b902010  add.s r1, r1, r2
0029f4  e7441fea  storeli.w r1, -2740(r30)
0029f8  e340bfe8  loadli.w r1,  -2980(r30)
0029fc  8b902010  add.s r1, r1, r2
002a00  67051fea  storeli.w r1, -2736(r30)
002a04  e300bfe8  loadli.w r1,  -2984(r30)
002a08  8b902010  add.s r1, r1, r2
002a0c  67451fea  storeli.w r1, -2732(r30)
002a10  e340afe8  loadli.w r1,  -2988(r30)
002a14  8b902010  add.s r1, r1, r2
002a18  e7051fea  storeli.w r1, -2728(r30)
002a1c  e300afe8  loadli.w r1,  -2992(r30)
002a20  8b902010  add.s r1, r1, r2
002a24  e7451fea  storeli.w r1, -2724(r30)
002a28  e3409fe8  loadli.w r1,  -2996(r30)
002a2c  8b902010  add.s r1, r1, r2
002a30  67061fea  storeli.w r1, -2720(r30)
002a34  e3009fe8  loadli.w r1,  -3000(r30)
002a38  8b902010  add.s r1, r1, r2
002a3c  67461fea  storeli.w r1, -2716(r30)
002a40  e3408fe8  loadli.w r1,  -3004(r30)
002a44  8b902010  add.s r1, r1, r2
002a48  e7061fea  storeli.w r1, -2712(r30)
002a4c  e3008fe8  loadli.w r1,  -3008(r30)
002a50  8b902010  add.s r1, r1, r2
002a54  e7461fea  storeli.w r1, -2708(r30)
002a58  e3407fe8  loadli.w r1,  -3012(r30)
002a5c  8b902010  add.s r1, r1, r2
002a60  67071fea  storeli.w r1, -2704(r30)
002a64  e3007fe8  loadli.w r1,  -3016(r30)
002a68  8b902010  add.s r1, r1, r2
002a6c  67471fea  storeli.w r1, -2700(r30)
002a70  e3406fe8  loadli.w r1,  -3020(r30)
002a74  8b902010  add.s r1, r1, r2
002a78  e7071fea  storeli.w r1, -2696(r30)
002a7c  e3006fe8  loadli.w r1,  -3024(r30)
002a80  8b902010  add.s r1, r1, r2
002a84  e7471fea  storeli.w r1, -2692(r30)
002a88  e3405fe8  loadli.w r1,  -3028(r30)
002a8c  8b902010  add.s r1, r1, r2
002a90  67081fea  storeli.w r1, -2688(r30)
002a94  e3005fe8  loadli.w r1,  -3032(r30)
002a98  8b902010  add.s r1, r1, r2
002a9c  67481fea  storeli.w r1, -2684(r30)
002aa0  e3404fe8  loadli.w r1,  -3036(r30)
002aa4  8b902010  add.s r1, r1, r2
002aa8  e7081fea  storeli.w r1, -2680(r30)
002aac  e3004fe8  loadli.w r1,  -3040(r30)
002ab0  8b902010  add.s r1, r1, r2
002ab4  e7481fea  storeli.w r1, -2676(r30)
002ab8  e3403fe8  loadli.w r1,  -3044(r30)
002abc  8b902010  add.s r1, r1, r2
002ac0  67091fea  storeli.w r1, -2672(r30)
002ac4  e3003fe8  loadli.w r1,  -3048(r30)
002ac8  8b902010  add.s r1, r1, r2
002acc  67491fea  storeli.w r1, -2668(r30)
002ad0  e3402fe8  loadli.w r1,  -3052(r30)
002ad4  8b902010  add.s r1, r1, r2
002ad8  e7091fea  storeli.w r1, -2664(r30)
002adc  e3002fe8  loadli.w r1,  -3056(r30)
002ae0  8b902010  add.s r1, r1, r2
002ae4  e7491fea  storeli.w r1, -2660(r30)
002ae8  e3401fe8  loadli.w r1,  -3060(r30)
002aec  8b902010  add.s r1, r1, r2
002af0  670a1fea  storeli.w r1, -2656(r30)
002af4  e3001fe8  loadli.w r1,  -3064(r30)
002af8  8b902010  add.s r1, r1, r2
002afc  674a1fea  storeli.w r1, -2652(r30)
002b00  e3400fe8  loadli.w r1,  -3068(r30)
002b04  8b902010  add.s r1, r1, r2
002b08  e70a1fea  storeli.w r1, -2648(r30)
002b0c  e3000fe8  loadli.w r1,  -3072(r30)
002b10  8b902010  add.s r1, r1, r2
002b14  e74a1fea  storeli.w r1, -2644(r30)
002b18  e340ffe7  loadli.w r1,  -3076(r30)
002b1c  8b902010  add.s r1, r1, r2
002b20  670b1fea  storeli.w r1, -2640(r30)
002b24  e300ffe7  loadli.w r1,  -3080(r30)
002b28  8b902010  add.s r1, r1, r2
002b2c  674b1fea  storeli.w r1, -2636(r30)
002b30  e340efe7  loadli.w r1,  -3084(r30)
002b34  8b902010  add.s r1, r1, r2
002b38  e70b1fea  storeli.w r1, -2632(r30)
002b3c  e300efe7  loadli.w r1,  -3088(r30)
002b40  8b902010  add.s r1, r1, r2
002b44  e74b1fea  storeli.w r1, -2628(r30)
002b48  e340dfe7  loadli.w r1,  -3092(r30)
002b4c  8b902010  add.s r1, r1, r2
002b50  670c1fea  storeli.w r1, -2624(r30)
002b54  e300dfe7  loadli.w r1,  -3096(r30)
002b58  8b902010  add.s r1, r1, r2
002b5c  674c1fea  storeli.w r1, -2620(r30)
002b60  e340cfe7  loadli.w r1,  -3100(r30)
002b64  8b902010  add.s r1, r1, r2
002b68  e70c1fea  storeli.w r1, -2616(r30)
002b6c  e300cfe7  loadli.w r1,  -3104(r30)
002b70  8b902010  add.s r1, r1, r2
002b74  e74c1fea  storeli.w r1, -2612(r30)
002b78  e340bfe7  loadli.w r1,  -3108(r30)
002b7c  8b902010  add.s r1, r1, r2
002b80  670d1fea  storeli.w r1, -2608(r30)
002b84  e300bfe7  loadli.w r1,  -3112(r30)
002b88  8b902010  add.s r1, r1, r2
002b8c  674d1fea  storeli.w r1, -2604(r30)
002b90  e340afe7  loadli.w r1,  -3116(r30)
002b94  8b902010  add.s r1, r1, r2
002b98  e70d1fea  storeli.w r1, -2600(r30)
002b9c  e300afe7  loadli.w r1,  -3120(r30)
002ba0  8b902010  add.s r1, r1, r2
002ba4  e74d1fea  storeli.w r1, -2596(r30)
002ba8  e3409fe7  loadli.w r1,  -3124(r30)
002bac  8b902010  add.s r1, r1, r2
002bb0  670e1fea  storeli.w r1, -2592(r30)
002bb4  e3009fe7  loadli.w r1,  -3128(r30)
002bb8  8b902010  add.s r1, r1, r2
002bbc  674e1fea  storeli.w r1, -2588(r30)
002bc0  e3408fe7  loadli.w r1,  -3132(r30)
002bc4  8b902010  add.s r1, r1, r2
002bc8  e70e1fea  storeli.w r1, -2584(r30)
002bcc  e3008fe7  loadli.w r1,  -3136(r30)
002bd0  8b902010  add.s r1, r1, r2
002bd4  e74e1fea  storeli.w r1, -2580(r30)
002bd8  e3407fe7  loadli.w r1,  -3140(r30)
002bdc  8b902010  add.s r1, r1, r2
002be0  670f1fea  storeli.w r1, -2576(r30)
002be4  e3007fe7  loadli.w r1,  -3144(r30)
002be8  8b902010  add.s r1, r1, r2
002bec  674f1fea  storeli.w r1, -2572(r30)
002bf0  e3406fe7  loadli.w r1,  -3148(r30)
002bf4  8b902010  add.s r1, r1, r2
002bf8  e70f1fea  storeli.w r1, -2568(r30)
002bfc  e3006fe7  loadli.w r1,  -3152(r30)
002c00  8b902010  add.s r1, r1, r2
002c04  e74f1fea  storeli.w r1, -2564(r30)
002c08  e3405fe7  loadli.w r1,  -3156(r30)
002c0c  8b902010  add.s r1, r1, r2
002c10  67001fec  storeli.w r1, -2560(r30)
002c14  e3005fe7  loadli.w r1,  -3160(r30)
002c18  8b902010  add.s r1, r1, r2
002c1c  67401fec  storeli.w r1, -2556(r30)
002c20  e3404fe7  loadli.w r1,  -3164(r30)
002c24  8b902010  add.s r1, r1, r2
002c28  e7001fec  storeli.w r1, -2552(r30)
002c2c  e3004fe7  loadli.w r1,  -3168(r30)
002c30  8b902010  add.s r1, r1, r2
002c34  e7401fec  storeli.w r1, -2548(r30)
002c38  e3403fe7  loadli.w r1,  -3172(r30)
002c3c  8b902010  add.s r1, r1, r2
002c40  67011fec  storeli.w r1, -2544(r30)
002c44  e3003fe7  loadli.w r1,  -3176(r30)
002c48  8b902010  add.s r1, r1, r2
002c4c  67411fec  storeli.w r1, -2540(r30)
002c50  e3402fe7  loadli.w r1,  -3180(r30)
002c54  8b902010  add.s r1, r1, r2
002c58  e7011fec  storeli.w r1, -2536(r30)
002c5c  e3002fe7  loadli.w r1,  -3184(r30)
002c60  8b902010  add.s r1, r1, r2
002c64  e7411fec  storeli.w r1, -2532(r30)
002c68  e3401fe7  loadli.w r1,  -3188(r30)
002c6c  8b902010  add.s r1, r1, r2
002c70  67021fec  storeli.w r1, -2528(r30)
002c74  e3001fe7  loadli.w r1,  -3192(r30)
002c78  8b902010  add.s r1, r1, r2
002c7c  67421fec  storeli.w r1, -2524(r30)
002c80  e3400fe7  loadli.w r1,  -3196(r30)
002c84  8b902010  add.s r1, r1, r2
002c88  e7021fec  storeli.w r1, -2520(r30)
002c8c  e3000fe7  loadli.w r1,  -3200(r30)
002c90  8b902010  add.s r1, r1, r2
002c94  e7421fec  storeli.w r1, -2516(r30)
002c98  e340ffe6  loadli.w r1,  -3204(r30)
002c9c  8b902010  add.s r1, r1, r2
002ca0  67031fec  storeli.w r1, -2512(r30)
002ca4  e300ffe6  loadli.w r1,  -3208(r30)
002ca8  8b902010  add.s r1, r1, r2
002cac  67431fec  storeli.w r1, -2508(r30)
002cb0  e340efe6  loadli.w r1,  -3212(r30)
002cb4  8b902010  add.s r1, r1, r2
002cb8  e7031fec  storeli.w r1, -2504(r30)
002cbc  e300efe6  loadli.w r1,  -3216(r30)
002cc0  8b902010  add.s r1, r1, r2
002cc4  e7431fec  storeli.w r1, -2500(r30)
002cc8  e340dfe6  loadli.w r1,  -3220(r30)
002ccc  8b902010  add.s r1, r1, r2
002cd0  67041fec  storeli.w r1, -2496(r30)
002cd4  e300dfe6  loadli.w r1,  -3224(r30)
002cd8  8b902010  add.s r1, r1, r2
002cdc  67441fec  storeli.w r1, -2492(r30)
002ce0  e340cfe6  loadli.w r1,  -3228(r30)
002ce4  8b902010  add.s r1, r1, r2
002ce8  e7041fec  storeli.w r1, -2488(r30)
002cec  e300cfe6  loadli.w r1,  -3232(r30)
002cf0  8b902010  add.s r1, r1, r2
002cf4  e7441fec  storeli.w r1, -2484(r30)
002cf8  e340bfe6  loadli.w r1,  -3236(r30)
002cfc  8b902010  add.s r1, r1, r2
002d00  67051fec  storeli.w r1, -2480(r30)
002d04  e300bfe6  loadli.w r1,  -3240(r30)
002d08  8b902010  add.s r1, r1, r2
002d0c  67451fec  storeli.w r1, -2476(r30)
002d10  e340afe6  loadli.w r1,  -3244(r30)
002d14  8b902010  add.s r1, r1, r2
002d18  e7051fec  storeli.w r1, -2472(r30)
002d1c  e300afe6  loadli.w r1,  -3248(r30)
002d20  8b902010  add.s r1, r1, r2
002d24  e7451fec  storeli.w r1, -2468(r30)
002d28  e3409fe6  loadli.w r1,  -3252(r30)
002d2c  8b902010  add.s r1, r1, r2
002d30  67061fec  storeli.w r1, -2464(r30)
002d34  e3009fe6  loadli.w r1,  -3256(r30)
002d38  8b902010  add.s r1, r1, r2
002d3c  67461fec  storeli.w r1, -2460(r30)
002d40  e3408fe6  loadli.w r1,  -3260(r30)
002d44  8b902010  add.s r1, r1, r2
002d48  e7061fec  storeli.w r1, -2456(r30)
002d4c  e3008fe6  loadli.w r1,  -3264(r30)
002d50  8b902010  add.s r1, r1, r2
002d54  e7461fec  storeli.w r1, -2452(r30)
002d58  e3407fe6  loadli.w r1,  -3268(r30)
002d5c  8b902010  add.s r1, r1, r2
002d60  67071fec  storeli.w r1, -2448(r30)
002d64  e3007fe6  loadli.w r1,  -3272(r30)
002d68  8b902010  add.s r1, r1, r2
002d6c  67471fec  storeli.w r1, -2444(r30)
002d70  e3406fe6  loadli.w r1,  -3276(r30)
002d74  8b902010  add.s r1, r1, r2
002d78  e7071fec  storeli.w r1, -2440(r30)
002d7c  e3006fe6  loadli.w r1,  -3280(r30)
002d80  8b902010  add.s r1, r1, r2
002d84  e7471fec  storeli.w r1, -2436(r30)
002d88  e3405fe6  loadli.w r1,  -3284(r30)
002d8c  8b902010  add.s r1, r1, r2
002d90  67081fec  storeli.w r1, -2432(r30)
002d94  e3005fe6  loadli.w r1,  -3288(r30)
002d98  8b902010  add.s r1, r1, r2
002d9c  67481fec  storeli.w r1, -2428(r30)
002da0  e3404fe6  loadli.w r1,  -3292(r30)
002da4  8b902010  add.s r1, r1, r2
002da8  e7081fec  storeli.w r1, -2424(r30)
002dac  e3004fe6  loadli.w r1,  -3296(r30)
002db0  8b902010  add.s r1, r1, r2
002db4  e7481fec  storeli.w r1, -2420(r30)
002db8  e3403fe6  loadli.w r1,  -3300(r30)
002dbc  8b902010  add.s r1, r1, r2
002dc0  67091fec  storeli.w r1, -2416(r30)
002dc4  e3003fe6  loadli.w r1,  -3304(r30)
002dc8  8b902010  add.s r1, r1, r2
002dcc  67491fec  storeli.w r1, -2412(r30)
002dd0  e3402fe6  loadli.w r1,  -3308(r30)
002dd4  8b902010  add.s r1, r1, r2
002dd8  e7091fec  storeli.w r1, -2408(r30)
002ddc  e3002fe6  loadli.w r1,  -3312(r30)
002de0  8b902010  add.s r1, r1, r2
002de4  e7491fec  storeli.w r1, -2404(r30)
002de8  e3401fe6  loadli.w r1,  -3316(r30)
002dec  8b902010  add.s r1, r1, r2
002df0  670a1fec  storeli.w r1, -2400(r30)
002df4  e3001fe6  loadli.w r1,  -3320(r30)
002df8  8b902010  add.s r1, r1, r2
002dfc  674a1fec  storeli.w r1, -2396(r30)
002e00  e3400fe6  loadli.w r1,  -3324(r30)
002e04  8b902010  add.s r1, r1, r2
002e08  e70a1fec  storeli.w r1, -2392(r30)
002e0c  e3000fe6  loadli.w r1,  -3328(r30)
002e10  8b902010  add.s r1, r1, r2
002e14  e74a1fec  storeli.w r1, -2388(r30)
002e18  e340ffe5  loadli.w r1,  -3332(r30)
002e1c  8b902010  add.s r1, r1, r2
002e20  670b1fec  storeli.w r1, -2384(r30)
002e24  e300ffe5  loadli.w r1,  -3336(r30)
002e28  8b902010  add.s r1, r1, r2
002e2c  674b1fec  storeli.w r1, -2380(r30)
002e30  e340efe5  loadli.w r1,  -3340(r30)
002e34  8b902010  add.s r1, r1, r2
002e38  e70b1fec  storeli.w r1, -2376(r30)
002e3c  e300efe5  loadli.w r1,  -3344(r30)
002e40  8b902010  add.s r1, r1, r2
002e44  e74b1fec  storeli.w r1, -2372(r30)
002e48  e340dfe5  loadli.w r1,  -3348(r30)
002e4c  8b902010  add.s r1, r1, r2
002e50  670c1fec  storeli.w r1, -2368(r30)
002e54  e300dfe5  loadli.w r1,  -3352(r30)
002e58  8b902010  add.s r1, r1, r2
002e5c  674c1fec  storeli.w r1, -2364(r30)
002e60  e340cfe5  loadli.w r1,  -3356(r30)
002e64  8b902010  add.s r1, r1, r2
002e68  e74c1fec  storeli.w r1, -2356(r30)
002e6c  e300cfe5  loadli.w r1,  -3360(r30)
002e70  8b902010  add.s r1, r1, r2
002e74  e70c1fec  storeli.w r1, -2360(r30)
002e78  e340bfe5  loadli.w r1,  -3364(r30)
002e7c  8b902010  add.s r1, r1, r2
002e80  670d1fec  storeli.w r1, -2352(r30)
002e84  e300bfe5  loadli.w r1,  -3368(r30)
002e88  8b902010  add.s r1, r1, r2
002e8c  674d1fec  storeli.w r1, -2348(r30)
002e90  e340afe5  loadli.w r1,  -3372(r30)
002e94  8b902010  add.s r1, r1, r2
002e98  e70d1fec  storeli.w r1, -2344(r30)
002e9c  e300afe5  loadli.w r1,  -3376(r30)
002ea0  8b902010  add.s r1, r1, r2
002ea4  e74d1fec  storeli.w r1, -2340(r30)
002ea8  e3409fe5  loadli.w r1,  -3380(r30)
002eac  8b902010  add.s r1, r1, r2
002eb0  670e1fec  storeli.w r1, -2336(r30)
002eb4  e3009fe5  loadli.w r1,  -3384(r30)
002eb8  8b902010  add.s r1, r1, r2
002ebc  674e1fec  storeli.w r1, -2332(r30)
002ec0  e3408fe5  loadli.w r1,  -3388(r30)
002ec4  8b902010  add.s r1, r1, r2
002ec8  e70e1fec  storeli.w r1, -2328(r30)
002ecc  5b180000  j 192
002ed0  1f010000  addli r2, zero, 0
002ed4  1f020000  addli r4, zero, 0
002ed8  9f000000  addli r1, zero, 0
002edc  9f020000  addli r5, zero, 0
002ee0  1f040000  addli r8, zero, 0
002ee4  9f050000  addli r11, zero, 0
002ee8  1f070000  addli r14, zero, 0
002eec  9f070000  addli r15, zero, 0
002ef0  9f080000  addli r17, zero, 0
002ef4  1f080000  addli r16, zero, 0
002ef8  9f090000  addli r19, zero, 0
002efc  1f0a0000  addli r20, zero, 0
002f00  9f0c0000  addli r25, zero, 0
002f04  1f0e0000  addli r28, zero, 0
002f08  9f0a0000  addli r21, zero, 0
002f0c  1f0b0000  addli r22, zero, 0
002f10  63038fee  loadli.w r6,  -2240(r30)
002f14  8be65610  add.f.rn r13, r13, r5
002f18  e3020fef  loadli.w r5,  -2176(r30)
002f1c  e3046fee  loadli.w r9,  -2256(r30)
002f20  e30b5fee  loadli.w r23,  -2264(r30)
002f24  0b654510  add.f.rn r10, r10, r4
002f28  63424fee  loadli.w r4,  -2268(r30)
002f2c  8be31310  add.f.rn r7, r7, r1
002f30  0b662610  add.f.rn r12, r12, r2
002f34  9f818100  addli r3, r3, 64
002f38  9f000004  addli r1, zero, 512
002f3c  8be28210  add.f.rn r5, r5, r8
002f40  63047fee  loadli.w r8,  -2248(r30)
002f44  0b63b310  add.f.rn r6, r6, r11
002f48  e3455fee  loadli.w r11,  -2260(r30)
002f4c  8be4f410  add.f.rn r9, r9, r15
002f50  e3473fee  loadli.w r15,  -2276(r30)
002f54  8beb0b11  add.f.rn r23, r23, r16
002f58  63083fee  loadli.w r16,  -2280(r30)
002f5c  0b623211  add.f.rn r4, r4, r19
002f60  e3092fee  loadli.w r19,  -2288(r30)
002f64  0b64e410  add.f.rn r8, r8, r14
002f68  63074fee  loadli.w r14,  -2272(r30)
002f6c  8be51511  add.f.rn r11, r11, r17
002f70  e3482fee  loadli.w r17,  -2284(r30)
002f74  8be79711  add.f.rn r15, r15, r25
002f78  0b68c811  add.f.rn r16, r16, r28
002f7c  8be96911  add.f.rn r19, r19, r22
002f80  0b674711  add.f.rn r14, r14, r20
002f84  8be85811  add.f.rn r17, r17, r21
002f88  37ea1102  beq r3, r1, 1688
002f8c  67424fee  storeli.w r4, -2268(r30)
002f90  0b123d10  add.s r4, r26, r3
002f94  67085fee  storeli.w r5, -2176(r30)
002f98  9230b002  vadd.s.mz vr1{mr1}, zero, vr11
002f9c  67046fee  storeli.w r6, -2240(r30)
002fa0  1f130000  addli r6, zero, 1
002fa4  e7038fee  storeli.w r8, -2248(r30)
002fa8  67013fef  storeli.w r19, -2288(r30)
002fac  67411fef  storeli.w r17, -2284(r30)
002fb0  e7010fef  storeli.w r16, -2280(r30)
002fb4  e741ffee  storeli.w r15, -2276(r30)
002fb8  6702efee  storeli.w r14, -2272(r30)
002fbc  e742bfee  storeli.w r11, -2260(r30)
002fc0  e7027fef  storeli.w r23, -2264(r30)
002fc4  1231b002  vadd.s.mz vr2{mr1}, zero, vr11
002fc8  eb320200  load.hu r5, 0(r4)
002fcc  7e0103e0  vmmov mr2, r6
002fd0  6b342200  load.hu r8, 2(r4)
002fd4  6b31a201  load.hu r2, 26(r4)
002fd8  eb30c201  load.hu r1, 28(r4)
002fdc  eb354200  load.hu r11, 4(r4)
002fe0  6b376200  load.hu r14, 6(r4)
002fe4  eb378200  load.hu r15, 8(r4)
002fe8  6b38a200  load.hu r16, 10(r4)
002fec  eb38c200  load.hu r17, 12(r4)
002ff0  eb39e200  load.hu r19, 14(r4)
002ff4  6b3a0201  load.hu r20, 16(r4)
002ff8  eb3a2201  load.hu r21, 18(r4)
002ffc  6b3b4201  load.hu r22, 20(r4)
003000  eb3c6201  load.hu r25, 22(r4)
003004  6b3e8201  load.hu r28, 24(r4)
003008  6b32e201  load.hu r4, 30(r4)
00300c  1f230000  addli r6, zero, 2
003010  fe0103e0  vmmov mr3, r6
003014  1f430000  addli r6, zero, 4
003018  b3920218  bfloat2float.rn r5, r5
00301c  33110118  bfloat2float.rn r2, r2
003020  b3900018  bfloat2float.rn r1, r1
003024  7e0003e0  vmmov mr0, r6
003028  1f031000  addli r6, zero, 8
00302c  eaa01234  vor.u.mh vr1{mr2}, r5, vr1
003030  b3120418  bfloat2float.rn r5, r8
003034  eaa01236  vor.u.mh vr1{mr3}, r5, vr1
003038  b3920518  bfloat2float.rn r5, r11
00303c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
003040  b3120718  bfloat2float.rn r5, r14
003044  7e0003e0  vmmov mr0, r6
003048  1f032000  addli r6, zero, 16
00304c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
003050  b3920718  bfloat2float.rn r5, r15
003054  7e0003e0  vmmov mr0, r6
003058  1f034000  addli r6, zero, 32
00305c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
003060  b3120818  bfloat2float.rn r5, r16
003064  7e0003e0  vmmov mr0, r6
003068  1f038000  addli r6, zero, 64
00306c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
003070  b3920818  bfloat2float.rn r5, r17
003074  7e0003e0  vmmov mr0, r6
003078  1f030001  addli r6, zero, 128
00307c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
003080  b3920918  bfloat2float.rn r5, r19
003084  7e0003e0  vmmov mr0, r6
003088  1f030002  addli r6, zero, 256
00308c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
003090  b3120a18  bfloat2float.rn r5, r20
003094  7e0003e0  vmmov mr0, r6
003098  1f030004  addli r6, zero, 512
00309c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0030a0  b3920a18  bfloat2float.rn r5, r21
0030a4  7e0003e0  vmmov mr0, r6
0030a8  1f030008  addli r6, zero, 1024
0030ac  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0030b0  b3120b18  bfloat2float.rn r5, r22
0030b4  7e0003e0  vmmov mr0, r6
0030b8  1f030010  addli r6, zero, 2048
0030bc  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0030c0  b3920c18  bfloat2float.rn r5, r25
0030c4  7e0003e0  vmmov mr0, r6
0030c8  1f030020  addli r6, zero, 4096
0030cc  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0030d0  b3120e18  bfloat2float.rn r5, r28
0030d4  7e0003e0  vmmov mr0, r6
0030d8  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0030dc  9f020040  addli r5, zero, 8192
0030e0  7e8002e0  vmmov mr0, r5
0030e4  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0030e8  2b410000  lui r2, 4
0030ec  7e0001e0  vmmov mr0, r2
0030f0  1f010ffa  addli r2, r30, -768
0030f4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0030f8  b3100218  bfloat2float.rn r1, r4
0030fc  2b820000  lui r4, 8
003100  0b113110  add.s r2, r2, r3
003104  7e0002e0  vmmov mr0, r4
003108  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00310c  eb300100  load.hu r1, 0(r2)
003110  6b322100  load.hu r4, 2(r2)
003114  eb324100  load.hu r5, 4(r2)
003118  6b346100  load.hu r8, 6(r2)
00311c  eb358100  load.hu r11, 8(r2)
003120  6b37a100  load.hu r14, 10(r2)
003124  eb37c100  load.hu r15, 12(r2)
003128  6b38e100  load.hu r16, 14(r2)
00312c  eb380101  load.hu r17, 16(r2)
003130  eb392101  load.hu r19, 18(r2)
003134  6b3a4101  load.hu r20, 20(r2)
003138  eb3a6101  load.hu r21, 22(r2)
00313c  6b3b8101  load.hu r22, 24(r2)
003140  eb3ca101  load.hu r25, 26(r2)
003144  6b3ec101  load.hu r28, 28(r2)
003148  6b31e101  load.hu r2, 30(r2)
00314c  b3900018  bfloat2float.rn r1, r1
003150  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003154  b3100218  bfloat2float.rn r1, r4
003158  1f420000  addli r4, zero, 4
00315c  7e0102e0  vmmov mr2, r4
003160  1f021000  addli r4, zero, 8
003164  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
003168  b3900218  bfloat2float.rn r1, r5
00316c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003170  b3100418  bfloat2float.rn r1, r8
003174  7e0102e0  vmmov mr2, r4
003178  1f022000  addli r4, zero, 16
00317c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003180  b3900518  bfloat2float.rn r1, r11
003184  7e0102e0  vmmov mr2, r4
003188  1f024000  addli r4, zero, 32
00318c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003190  b3100718  bfloat2float.rn r1, r14
003194  7e0102e0  vmmov mr2, r4
003198  1f028000  addli r4, zero, 64
00319c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0031a0  b3900718  bfloat2float.rn r1, r15
0031a4  7e0102e0  vmmov mr2, r4
0031a8  1f020001  addli r4, zero, 128
0031ac  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0031b0  b3100818  bfloat2float.rn r1, r16
0031b4  7e0102e0  vmmov mr2, r4
0031b8  1f020002  addli r4, zero, 256
0031bc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0031c0  b3900818  bfloat2float.rn r1, r17
0031c4  7e0102e0  vmmov mr2, r4
0031c8  1f020004  addli r4, zero, 512
0031cc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0031d0  b3900918  bfloat2float.rn r1, r19
0031d4  7e0102e0  vmmov mr2, r4
0031d8  1f020008  addli r4, zero, 1024
0031dc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0031e0  b3100a18  bfloat2float.rn r1, r20
0031e4  7e0102e0  vmmov mr2, r4
0031e8  1f020010  addli r4, zero, 2048
0031ec  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0031f0  b3900a18  bfloat2float.rn r1, r21
0031f4  7e0102e0  vmmov mr2, r4
0031f8  1f020020  addli r4, zero, 4096
0031fc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003200  b3100b18  bfloat2float.rn r1, r22
003204  7e0102e0  vmmov mr2, r4
003208  1f020040  addli r4, zero, 8192
00320c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003210  b3900c18  bfloat2float.rn r1, r25
003214  7e0102e0  vmmov mr2, r4
003218  2b420000  lui r4, 4
00321c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003220  b3100e18  bfloat2float.rn r1, r28
003224  7e0102e0  vmmov mr2, r4
003228  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00322c  b3100118  bfloat2float.rn r1, r2
003230  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003234  9f000ff0  addli r1, r30, -2048
003238  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
00323c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
003240  00a00000  mfence { lm }
003244  630b0ff0  loadli.w r22,  -2048(r30)
003248  e34a0ff0  loadli.w r21,  -2044(r30)
00324c  63081ff0  loadli.w r16,  -2040(r30)
003250  e3471ff0  loadli.w r15,  -2036(r30)
003254  e3092ff0  loadli.w r19,  -2032(r30)
003258  63472ff0  loadli.w r14,  -2028(r30)
00325c  63023ff0  loadli.w r4,  -2024(r30)
003260  e3453ff0  loadli.w r11,  -2020(r30)
003264  e3024ff0  loadli.w r5,  -2016(r30)
003268  63414ff0  loadli.w r2,  -2012(r30)
00326c  e340ffef  loadli.w r1,  -2052(r30)
003270  630a5ff0  loadli.w r20,  -2008(r30)
003274  634e5ff0  loadli.w r28,  -2004(r30)
003278  e3086ff0  loadli.w r17,  -2000(r30)
00327c  63446ff0  loadli.w r8,  -1996(r30)
003280  e30c7ff0  loadli.w r25,  -1992(r30)
003284  97001b00  and r1, r22, r1
003288  938b1d04  setlt.u r23, r27, r1
00328c  e3407ff0  loadli.w r1,  -1988(r30)
003290  3bf00b00  bneq r23, zero, 28
003294  9b4b0b01  srli r23, r22, 16
003298  2b034000  lui r6, 1024
00329c  9b8b1b00  andi r23, r23, 1
0032a0  0b1b7b11  add.s r22, r22, r23
0032a4  8b1b8b11  add.s r23, r22, r24
0032a8  db010000  j 12
0032ac  2b034000  lui r6, 1024
0032b0  971b6b00  or r23, r22, r6
0032b4  6349ffef  loadli.w r18,  -2052(r30)
0032b8  178b2a01  and r22, r21, r18
0032bc  138b6d05  setlt.u r22, r27, r22
0032c0  3b600b00  bneq r22, zero, 24
0032c4  1bcb0a01  srli r22, r21, 16
0032c8  1b0b1b00  andi r22, r22, 1
0032cc  8b9a6a11  add.s r21, r21, r22
0032d0  0b9b8a11  add.s r22, r21, r24
0032d4  5b010000  j 8
0032d8  179b6a00  or r22, r21, r6
0032dc  6349ffef  loadli.w r18,  -2052(r30)
0032e0  970a2801  and r21, r16, r18
0032e4  938a5d05  setlt.u r21, r27, r21
0032e8  3be00a00  bneq r21, zero, 24
0032ec  9b4a0801  srli r21, r16, 16
0032f0  9b8a1a00  andi r21, r21, 1
0032f4  0b185811  add.s r16, r16, r21
0032f8  0b198811  add.s r18, r16, r24
0032fc  5b010000  j 8
003300  17196800  or r18, r16, r6
003304  6348ffef  loadli.w r16,  -2052(r30)
003308  17880701  and r16, r15, r16
00330c  13880d05  setlt.u r16, r27, r16
003310  3b600800  bneq r16, zero, 24
003314  1bc80701  srli r16, r15, 16
003318  1b081800  andi r16, r16, 1
00331c  8b970711  add.s r15, r15, r16
003320  8b9a8711  add.s r21, r15, r24
003324  5b010000  j 8
003328  979a6700  or r21, r15, r6
00332c  e347ffef  loadli.w r15,  -2052(r30)
003330  9787f900  and r15, r19, r15
003334  9387fd04  setlt.u r15, r27, r15
003338  3be00700  bneq r15, zero, 24
00333c  9bc70901  srli r15, r19, 16
003340  9b871700  andi r15, r15, 1
003344  8b97f910  add.s r15, r19, r15
003348  8b998711  add.s r19, r15, r24
00334c  5b010000  j 8
003350  97996900  or r19, r19, r6
003354  e347ffef  loadli.w r15,  -2052(r30)
003358  9707f700  and r15, r14, r15
00335c  9387fd04  setlt.u r15, r27, r15
003360  3be00700  bneq r15, zero, 24
003364  9b470701  srli r15, r14, 16
003368  9b871700  andi r15, r15, 1
00336c  0b17f710  add.s r14, r14, r15
003370  0b178711  add.s r14, r14, r24
003374  5b010000  j 8
003378  17176700  or r14, r14, r6
00337c  e347ffef  loadli.w r15,  -2052(r30)
003380  9707f200  and r15, r4, r15
003384  9387fd04  setlt.u r15, r27, r15
003388  3be00700  bneq r15, zero, 24
00338c  9b470201  srli r15, r4, 16
003390  9b871700  andi r15, r15, 1
003394  0b12f210  add.s r4, r4, r15
003398  0b128211  add.s r4, r4, r24
00339c  5b010000  j 8
0033a0  17126200  or r4, r4, r6
0033a4  e347ffef  loadli.w r15,  -2052(r30)
0033a8  9787f500  and r15, r11, r15
0033ac  9387fd04  setlt.u r15, r27, r15
0033b0  3be00700  bneq r15, zero, 24
0033b4  9bc70501  srli r15, r11, 16
0033b8  9b871700  andi r15, r15, 1
0033bc  8b95f510  add.s r11, r11, r15
0033c0  8b958511  add.s r11, r11, r24
0033c4  5b010000  j 8
0033c8  97956500  or r11, r11, r6
0033cc  e347ffef  loadli.w r15,  -2052(r30)
0033d0  9787f200  and r15, r5, r15
0033d4  9387fd04  setlt.u r15, r27, r15
0033d8  3be00700  bneq r15, zero, 24
0033dc  9bc70201  srli r15, r5, 16
0033e0  9b871700  andi r15, r15, 1
0033e4  8b92f210  add.s r5, r5, r15
0033e8  8b928211  add.s r5, r5, r24
0033ec  5b010000  j 8
0033f0  97926200  or r5, r5, r6
0033f4  e347ffef  loadli.w r15,  -2052(r30)
0033f8  9707f100  and r15, r2, r15
0033fc  9387fd04  setlt.u r15, r27, r15
003400  3be00700  bneq r15, zero, 24
003404  9b470101  srli r15, r2, 16
003408  9b871700  andi r15, r15, 1
00340c  0b11f110  add.s r2, r2, r15
003410  0b118111  add.s r2, r2, r24
003414  5b010000  j 8
003418  17116100  or r2, r2, r6
00341c  e347ffef  loadli.w r15,  -2052(r30)
003420  9707fa00  and r15, r20, r15
003424  9387fd04  setlt.u r15, r27, r15
003428  3be00700  bneq r15, zero, 24
00342c  9b470a01  srli r15, r20, 16
003430  9b871700  andi r15, r15, 1
003434  8b17fa10  add.s r15, r20, r15
003438  0b9a8711  add.s r20, r15, r24
00343c  5b010000  j 8
003440  171a6a00  or r20, r20, r6
003444  e347ffef  loadli.w r15,  -2052(r30)
003448  9707fe00  and r15, r28, r15
00344c  9387fd04  setlt.u r15, r27, r15
003450  3be00700  bneq r15, zero, 24
003454  9b470e01  srli r15, r28, 16
003458  9b871700  andi r15, r15, 1
00345c  8b17fe10  add.s r15, r28, r15
003460  0b9e8711  add.s r28, r15, r24
003464  5b010000  j 8
003468  171e6e00  or r28, r28, r6
00346c  e347ffef  loadli.w r15,  -2052(r30)
003470  9787f800  and r15, r17, r15
003474  9387fd04  setlt.u r15, r27, r15
003478  3be00700  bneq r15, zero, 24
00347c  9bc70801  srli r15, r17, 16
003480  9b871700  andi r15, r15, 1
003484  8b97f810  add.s r15, r17, r15
003488  8b978711  add.s r15, r15, r24
00348c  5b010000  j 8
003490  97976800  or r15, r17, r6
003494  6348ffef  loadli.w r16,  -2052(r30)
003498  17080401  and r16, r8, r16
00349c  13880d05  setlt.u r16, r27, r16
0034a0  3b600800  bneq r16, zero, 24
0034a4  1b480401  srli r16, r8, 16
0034a8  1b081800  andi r16, r16, 1
0034ac  0b140411  add.s r8, r8, r16
0034b0  0b148411  add.s r8, r8, r24
0034b4  5b010000  j 8
0034b8  17146400  or r8, r8, r6
0034bc  6348ffef  loadli.w r16,  -2052(r30)
0034c0  17880c01  and r16, r25, r16
0034c4  13880d05  setlt.u r16, r27, r16
0034c8  3b600800  bneq r16, zero, 24
0034cc  1bc80c01  srli r16, r25, 16
0034d0  1b081800  andi r16, r16, 1
0034d4  0b980c11  add.s r16, r25, r16
0034d8  0b188811  add.s r16, r16, r24
0034dc  5b010000  j 8
0034e0  17986c00  or r16, r25, r6
0034e4  e348ffef  loadli.w r17,  -2052(r30)
0034e8  67039fee  storeli.w r9, -2256(r30)
0034ec  97881001  and r17, r1, r17
0034f0  93881d05  setlt.u r17, r27, r17
0034f4  3be00800  bneq r17, zero, 24
0034f8  9bc80001  srli r17, r1, 16
0034fc  9b881800  andi r17, r17, 1
003500  8b901011  add.s r1, r1, r17
003504  8b908011  add.s r1, r1, r24
003508  5b010000  j 8
00350c  97906000  or r1, r1, r6
003510  e304efef  loadli.w r9,  -2064(r30)
003514  1f038000  addli r6, zero, 64
003518  3fa06400  blt.s r9, r6, 8
00351c  db36ffff  j -1612
003520  2b03ffff  lui r6, 1048560
003524  9f840a00  addli r9, r21, 0
003528  97886b00  and r17, r23, r6
00352c  978b6400  and r23, r9, r6
003530  e3441fee  loadli.w r9,  -2292(r30)
003534  970a6b00  and r21, r22, r6
003538  97856500  and r11, r11, r6
00353c  170b6900  and r22, r18, r6
003540  97896900  and r19, r19, r6
003544  17076700  and r14, r14, r6
003548  170a6a00  and r20, r20, r6
00354c  970c6e00  and r25, r28, r6
003550  17026200  and r4, r4, r6
003554  17016100  and r2, r2, r6
003558  17086800  and r16, r16, r6
00355c  97826200  and r5, r5, r6
003560  97876700  and r15, r15, r6
003564  17046400  and r8, r8, r6
003568  97806000  and r1, r1, r6
00356c  1f890100  addli r18, r3, 0
003570  9f010500  addli r3, r10, 0
003574  1f050600  addli r10, r12, 0
003578  8bea9a18  sub.f.rn r21, r21, r9
00357c  0bec9518  sub.f.rn r24, r11, r9
003580  0b679718  sub.f.rn r14, r14, r9
003584  0b6e9218  sub.f.rn r28, r4, r9
003588  0be69718  sub.f.rn r12, r15, r9
00358c  1f820600  addli r4, r13, 0
003590  8be89818  sub.f.rn r17, r17, r9
003594  0b6d9118  sub.f.rn r26, r2, r9
003598  8b6d9818  sub.f.rn r27, r16, r9
00359c  0b6b9b18  sub.f.rn r22, r22, r9
0035a0  8beb9b18  sub.f.rn r23, r23, r9
0035a4  0be39218  sub.f.rn r6, r5, r9
0035a8  8be99918  sub.f.rn r19, r19, r9
0035ac  8b669418  sub.f.rn r13, r8, r9
0035b0  0b6a9a18  sub.f.rn r20, r20, r9
0035b4  8bec9c18  sub.f.rn r25, r25, r9
0035b8  8be49018  sub.f.rn r9, r1, r9
0035bc  8bea5a21  mul.f.rn r21, r21, r21
0035c0  8b678c21  mul.f.rn r15, r24, r24
0035c4  630cffef  loadli.w r24,  -2056(r30)
0035c8  0be11821  mul.f.rn r2, r17, r17
0035cc  8b606b21  mul.f.rn r1, r22, r22
0035d0  0be43921  mul.f.rn r8, r19, r19
0035d4  8b65e720  mul.f.rn r11, r14, r14
0035d8  0b67ce21  mul.f.rn r14, r28, r28
0035dc  0b68ad21  mul.f.rn r16, r26, r26
0035e0  8b694a21  mul.f.rn r19, r20, r20
0035e4  0bea9c21  mul.f.rn r20, r25, r25
0035e8  8b6cc620  mul.f.rn r25, r12, r12
0035ec  1f060500  addli r12, r10, 0
0035f0  1f850100  addli r10, r3, 0
0035f4  0beed620  mul.f.rn r28, r13, r13
0035f8  9f060200  addli r13, r4, 0
0035fc  8be27b21  mul.f.rn r5, r23, r23
003600  8b686320  mul.f.rn r17, r6, r6
003604  9f010900  addli r3, r18, 0
003608  1f0d0ff8  addli r26, r30, -1024
00360c  0beb9420  mul.f.rn r22, r9, r9
003610  1f820a00  addli r4, r21, 0
003614  8beabd21  mul.f.rn r21, r27, r27
003618  ab0d807f  lui r27, 522240
00361c  db1effff  j -1804
003620  8b60a610  add.f.rn r1, r12, r10
003624  6301cfe9  loadli.w r2,  -2848(r30)
003628  8be07010  add.f.rn r1, r1, r7
00362c  8be0d010  add.f.rn r1, r1, r13
003630  8be05010  add.f.rn r1, r1, r5
003634  8be06010  add.f.rn r1, r1, r6
003638  8be08010  add.f.rn r1, r1, r8
00363c  8be09010  add.f.rn r1, r1, r9
003640  8be0b010  add.f.rn r1, r1, r11
003644  8be07011  add.f.rn r1, r1, r23
003648  8be04010  add.f.rn r1, r1, r4
00364c  8be0e010  add.f.rn r1, r1, r14
003650  8be0f010  add.f.rn r1, r1, r15
003654  8be00011  add.f.rn r1, r1, r16
003658  8be01011  add.f.rn r1, r1, r17
00365c  8be03011  add.f.rn r1, r1, r19
003660  73601100  stores.w r1, 0(r2)
003664  00a00300  mfence { lm, sm, gm }
003668  63021fee  loadli.w r4,  -2296(r30)
00366c  80210204  csr_set csr3, r4
003670  00d00100  sync_group
003674  e3400fee  loadli.w r1,  -2300(r30)
003678  3ba10000  bneq r1, zero, 72
00367c  e302dfe9  loadli.w r5,  -2840(r30)
003680  efc00200  loads.w r1, 0(r5)
003684  6fc14200  loads.w r2, 4(r5)
003688  efc18200  loads.w r3, 8(r5)
00368c  8be02010  add.f.rn r1, r1, r2
003690  6fc1c200  loads.w r2, 12(r5)
003694  8be03010  add.f.rn r1, r1, r3
003698  efc10201  loads.w r3, 16(r5)
00369c  8be02010  add.f.rn r1, r1, r2
0036a0  6fc14201  loads.w r2, 20(r5)
0036a4  8be03010  add.f.rn r1, r1, r3
0036a8  efc18201  loads.w r3, 24(r5)
0036ac  8be02010  add.f.rn r1, r1, r2
0036b0  6fc1c201  loads.w r2, 28(r5)
0036b4  8be03010  add.f.rn r1, r1, r3
0036b8  8be02010  add.f.rn r1, r1, r2
0036bc  73e01200  stores.w r1, 0(r5)
0036c0  00a00300  mfence { lm, sm, gm }
0036c4  80210204  csr_set csr3, r4
0036c8  00d00100  sync_group
0036cc  e300dfe9  loadli.w r1,  -2840(r30)
0036d0  2b01803a  lui r2, 239616
0036d4  e3431fee  loadli.w r7,  -2292(r30)
0036d8  1f022d00  addli r4, r26, 16
0036dc  9f020000  addli r5, zero, 0
0036e0  ab0b4000  lui r23, 1024
0036e4  efc00000  loads.w r1, 0(r1)
0036e8  8be02020  mul.f.rn r1, r1, r2
0036ec  6301ffe8  loadli.w r2,  -2952(r30)
0036f0  8be02010  add.f.rn r1, r1, r2
0036f4  2b01803f  lui r2, 260096
0036f8  8f800008  sqrt.f.rn r1, r1
0036fc  8f011118  div.f.rn r3, r2, r1
003700  db2d0000  j 364
003704  1bcb0001  srli r22, r1, 16
003708  1b0b1b00  andi r22, r22, 1
00370c  8b906011  add.s r1, r1, r22
003710  8b908011  add.s r1, r1, r24
003714  2b0bffff  lui r22, 1048560
003718  9f828200  addli r5, r5, 64
00371c  17036301  and r6, r6, r22
003720  17016101  and r2, r2, r22
003724  97856501  and r11, r11, r22
003728  97866601  and r13, r13, r22
00372c  17086801  and r16, r16, r22
003730  97896901  and r19, r19, r22
003734  978a6a01  and r21, r21, r22
003738  170a6a01  and r20, r20, r22
00373c  97886801  and r17, r17, r22
003740  97876701  and r15, r15, r22
003744  17076701  and r14, r14, r22
003748  17066601  and r12, r12, r22
00374c  97846401  and r9, r9, r22
003750  17046401  and r8, r8, r22
003754  17056501  and r10, r10, r22
003758  97806001  and r1, r1, r22
00375c  0b637318  sub.f.rn r6, r6, r7
003760  0b617118  sub.f.rn r2, r2, r7
003764  8be57518  sub.f.rn r11, r11, r7
003768  8be67618  sub.f.rn r13, r13, r7
00376c  0b687818  sub.f.rn r16, r16, r7
003770  8be97918  sub.f.rn r19, r19, r7
003774  8bea7a18  sub.f.rn r21, r21, r7
003778  0b6a7a18  sub.f.rn r20, r20, r7
00377c  8be87818  sub.f.rn r17, r17, r7
003780  8be77718  sub.f.rn r15, r15, r7
003784  0b677718  sub.f.rn r14, r14, r7
003788  0b667618  sub.f.rn r12, r12, r7
00378c  8be47418  sub.f.rn r9, r9, r7
003790  0b647418  sub.f.rn r8, r8, r7
003794  0b657518  sub.f.rn r10, r10, r7
003798  8be07018  sub.f.rn r1, r1, r7
00379c  0be36120  mul.f.rn r6, r3, r6
0037a0  0be12120  mul.f.rn r2, r3, r2
0037a4  8be5b120  mul.f.rn r11, r3, r11
0037a8  8be6d120  mul.f.rn r13, r3, r13
0037ac  0be80121  mul.f.rn r16, r3, r16
0037b0  8be93121  mul.f.rn r19, r3, r19
0037b4  8bea5121  mul.f.rn r21, r3, r21
0037b8  0bea4121  mul.f.rn r20, r3, r20
0037bc  8be81121  mul.f.rn r17, r3, r17
0037c0  8be7f120  mul.f.rn r15, r3, r15
0037c4  0be7e120  mul.f.rn r14, r3, r14
0037c8  0be6c120  mul.f.rn r12, r3, r12
0037cc  8be49120  mul.f.rn r9, r3, r9
0037d0  8be01120  mul.f.rn r1, r3, r1
0037d4  0be48120  mul.f.rn r8, r3, r8
0037d8  0be5a120  mul.f.rn r10, r3, r10
0037dc  33130300  float2bfloat.rn r6, r6
0037e0  33110100  float2bfloat.rn r2, r2
0037e4  b3940400  float2bfloat.rn r9, r9
0037e8  b3900000  float2bfloat.rn r1, r1
0037ec  731862fe  store.h r6, -16(r4)
0037f0  33930500  float2bfloat.rn r6, r11
0037f4  731b22fe  store.h r2, -10(r4)
0037f8  33910600  float2bfloat.rn r2, r13
0037fc  73171200  store.h r1, 14(r4)
003800  731992fe  store.h r9, -14(r4)
003804  9f000004  addli r1, zero, 512
003808  731a62fe  store.h r6, -12(r4)
00380c  33130800  float2bfloat.rn r6, r16
003810  731c22fe  store.h r2, -8(r4)
003814  33910900  float2bfloat.rn r2, r19
003818  731d62fe  store.h r6, -6(r4)
00381c  33930a00  float2bfloat.rn r6, r21
003820  731e22fe  store.h r2, -4(r4)
003824  33110a00  float2bfloat.rn r2, r20
003828  731f62fe  store.h r6, -2(r4)
00382c  33930800  float2bfloat.rn r6, r17
003830  73102200  store.h r2, 0(r4)
003834  33910700  float2bfloat.rn r2, r15
003838  73116200  store.h r6, 2(r4)
00383c  33130700  float2bfloat.rn r6, r14
003840  73122200  store.h r2, 4(r4)
003844  33110600  float2bfloat.rn r2, r12
003848  73136200  store.h r6, 6(r4)
00384c  33130400  float2bfloat.rn r6, r8
003850  73142200  store.h r2, 8(r4)
003854  33110500  float2bfloat.rn r2, r10
003858  73156200  store.h r6, 10(r4)
00385c  73162200  store.h r2, 12(r4)
003860  1f024200  addli r4, r4, 32
003864  00a00000  mfence { lm }
003868  379612e6  beq r5, r1, -12924
00386c  0b135d10  add.s r6, r26, r5
003870  9230b002  vadd.s.mz vr1{mr1}, zero, vr11
003874  1f190000  addli r18, zero, 1
003878  1231b002  vadd.s.mz vr2{mr1}, zero, vr11
00387c  6b340300  load.hu r8, 0(r6)
003880  eb342300  load.hu r9, 2(r6)
003884  7e0109e0  vmmov mr2, r18
003888  6b31a301  load.hu r2, 26(r6)
00388c  eb30c301  load.hu r1, 28(r6)
003890  6b354300  load.hu r10, 4(r6)
003894  eb356300  load.hu r11, 6(r6)
003898  6b368300  load.hu r12, 8(r6)
00389c  eb36a300  load.hu r13, 10(r6)
0038a0  6b37c300  load.hu r14, 12(r6)
0038a4  eb37e300  load.hu r15, 14(r6)
0038a8  6b380301  load.hu r16, 16(r6)
0038ac  eb382301  load.hu r17, 18(r6)
0038b0  eb394301  load.hu r19, 20(r6)
0038b4  6b3a6301  load.hu r20, 22(r6)
0038b8  eb3a8301  load.hu r21, 24(r6)
0038bc  6b33e301  load.hu r6, 30(r6)
0038c0  33140418  bfloat2float.rn r8, r8
0038c4  33110118  bfloat2float.rn r2, r2
0038c8  b3900018  bfloat2float.rn r1, r1
0038cc  ea201434  vor.u.mh vr1{mr2}, r8, vr1
0038d0  33940418  bfloat2float.rn r8, r9
0038d4  9f240000  addli r9, zero, 2
0038d8  fe8104e0  vmmov mr3, r9
0038dc  9f440000  addli r9, zero, 4
0038e0  ea201436  vor.u.mh vr1{mr3}, r8, vr1
0038e4  33140518  bfloat2float.rn r8, r10
0038e8  7e8004e0  vmmov mr0, r9
0038ec  9f041000  addli r9, zero, 8
0038f0  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0038f4  33940518  bfloat2float.rn r8, r11
0038f8  7e8004e0  vmmov mr0, r9
0038fc  9f042000  addli r9, zero, 16
003900  ea201430  vor.u.mh vr1{mr0}, r8, vr1
003904  33140618  bfloat2float.rn r8, r12
003908  7e8004e0  vmmov mr0, r9
00390c  9f044000  addli r9, zero, 32
003910  ea201430  vor.u.mh vr1{mr0}, r8, vr1
003914  33940618  bfloat2float.rn r8, r13
003918  7e8004e0  vmmov mr0, r9
00391c  9f048000  addli r9, zero, 64
003920  ea201430  vor.u.mh vr1{mr0}, r8, vr1
003924  33140718  bfloat2float.rn r8, r14
003928  7e8004e0  vmmov mr0, r9
00392c  9f040001  addli r9, zero, 128
003930  ea201430  vor.u.mh vr1{mr0}, r8, vr1
003934  33940718  bfloat2float.rn r8, r15
003938  7e8004e0  vmmov mr0, r9
00393c  9f040002  addli r9, zero, 256
003940  ea201430  vor.u.mh vr1{mr0}, r8, vr1
003944  33140818  bfloat2float.rn r8, r16
003948  7e8004e0  vmmov mr0, r9
00394c  9f040004  addli r9, zero, 512
003950  ea201430  vor.u.mh vr1{mr0}, r8, vr1
003954  33940818  bfloat2float.rn r8, r17
003958  7e8004e0  vmmov mr0, r9
00395c  9f040008  addli r9, zero, 1024
003960  ea201430  vor.u.mh vr1{mr0}, r8, vr1
003964  33940918  bfloat2float.rn r8, r19
003968  7e8004e0  vmmov mr0, r9
00396c  9f040010  addli r9, zero, 2048
003970  ea201430  vor.u.mh vr1{mr0}, r8, vr1
003974  33140a18  bfloat2float.rn r8, r20
003978  7e8004e0  vmmov mr0, r9
00397c  9f040020  addli r9, zero, 4096
003980  ea201430  vor.u.mh vr1{mr0}, r8, vr1
003984  33940a18  bfloat2float.rn r8, r21
003988  7e8004e0  vmmov mr0, r9
00398c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
003990  1f040040  addli r8, zero, 8192
003994  7e0004e0  vmmov mr0, r8
003998  ea201130  vor.u.mh vr1{mr0}, r2, vr1
00399c  2b410000  lui r2, 4
0039a0  7e0001e0  vmmov mr0, r2
0039a4  1f010ffa  addli r2, r30, -768
0039a8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0039ac  b3100318  bfloat2float.rn r1, r6
0039b0  2b830000  lui r6, 8
0039b4  0b115110  add.s r2, r2, r5
0039b8  7e0003e0  vmmov mr0, r6
0039bc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0039c0  eb300100  load.hu r1, 0(r2)
0039c4  6b332100  load.hu r6, 2(r2)
0039c8  6b344100  load.hu r8, 4(r2)
0039cc  eb346100  load.hu r9, 6(r2)
0039d0  6b358100  load.hu r10, 8(r2)
0039d4  eb35a100  load.hu r11, 10(r2)
0039d8  6b36c100  load.hu r12, 12(r2)
0039dc  eb36e100  load.hu r13, 14(r2)
0039e0  6b370101  load.hu r14, 16(r2)
0039e4  eb372101  load.hu r15, 18(r2)
0039e8  6b384101  load.hu r16, 20(r2)
0039ec  eb386101  load.hu r17, 22(r2)
0039f0  eb398101  load.hu r19, 24(r2)
0039f4  6b3aa101  load.hu r20, 26(r2)
0039f8  eb3ac101  load.hu r21, 28(r2)
0039fc  6b31e101  load.hu r2, 30(r2)
003a00  b3900018  bfloat2float.rn r1, r1
003a04  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003a08  b3100318  bfloat2float.rn r1, r6
003a0c  1f430000  addli r6, zero, 4
003a10  7e0103e0  vmmov mr2, r6
003a14  1f031000  addli r6, zero, 8
003a18  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
003a1c  b3100418  bfloat2float.rn r1, r8
003a20  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003a24  b3900418  bfloat2float.rn r1, r9
003a28  7e0103e0  vmmov mr2, r6
003a2c  1f032000  addli r6, zero, 16
003a30  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003a34  b3100518  bfloat2float.rn r1, r10
003a38  7e0103e0  vmmov mr2, r6
003a3c  1f034000  addli r6, zero, 32
003a40  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003a44  b3900518  bfloat2float.rn r1, r11
003a48  7e0103e0  vmmov mr2, r6
003a4c  1f038000  addli r6, zero, 64
003a50  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003a54  b3100618  bfloat2float.rn r1, r12
003a58  7e0103e0  vmmov mr2, r6
003a5c  1f030001  addli r6, zero, 128
003a60  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003a64  b3900618  bfloat2float.rn r1, r13
003a68  7e0103e0  vmmov mr2, r6
003a6c  1f030002  addli r6, zero, 256
003a70  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003a74  b3100718  bfloat2float.rn r1, r14
003a78  7e0103e0  vmmov mr2, r6
003a7c  1f030004  addli r6, zero, 512
003a80  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003a84  b3900718  bfloat2float.rn r1, r15
003a88  7e0103e0  vmmov mr2, r6
003a8c  1f030008  addli r6, zero, 1024
003a90  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003a94  b3100818  bfloat2float.rn r1, r16
003a98  7e0103e0  vmmov mr2, r6
003a9c  1f030010  addli r6, zero, 2048
003aa0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003aa4  b3900818  bfloat2float.rn r1, r17
003aa8  7e0103e0  vmmov mr2, r6
003aac  1f030020  addli r6, zero, 4096
003ab0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003ab4  b3900918  bfloat2float.rn r1, r19
003ab8  7e0103e0  vmmov mr2, r6
003abc  1f030040  addli r6, zero, 8192
003ac0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003ac4  b3100a18  bfloat2float.rn r1, r20
003ac8  7e0103e0  vmmov mr2, r6
003acc  2b430000  lui r6, 4
003ad0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003ad4  b3900a18  bfloat2float.rn r1, r21
003ad8  7e0103e0  vmmov mr2, r6
003adc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003ae0  b3100118  bfloat2float.rn r1, r2
003ae4  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003ae8  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
003aec  46100fc2  vstore_mask16.mz vr0{mr1}, 1536(r30)
003af0  00a00000  mfence { lm }
003af4  63030ffc  loadli.w r6,  -512(r30)
003af8  e3440ffc  loadli.w r9,  -508(r30)
003afc  e3051ffc  loadli.w r11,  -504(r30)
003b00  63411ffc  loadli.w r2,  -500(r30)
003b04  e3062ffc  loadli.w r13,  -496(r30)
003b08  63482ffc  loadli.w r16,  -492(r30)
003b0c  e3093ffc  loadli.w r19,  -488(r30)
003b10  e34a3ffc  loadli.w r21,  -484(r30)
003b14  630a4ffc  loadli.w r20,  -480(r30)
003b18  e3484ffc  loadli.w r17,  -476(r30)
003b1c  e340ffef  loadli.w r1,  -2052(r30)
003b20  e3075ffc  loadli.w r15,  -472(r30)
003b24  63475ffc  loadli.w r14,  -468(r30)
003b28  63066ffc  loadli.w r12,  -464(r30)
003b2c  63446ffc  loadli.w r8,  -460(r30)
003b30  63057ffc  loadli.w r10,  -456(r30)
003b34  97001300  and r1, r6, r1
003b38  138b1d04  setlt.u r22, r27, r1
003b3c  e3407ffc  loadli.w r1,  -452(r30)
003b40  3b600b00  bneq r22, zero, 24
003b44  1b4b0301  srli r22, r6, 16
003b48  1b0b1b00  andi r22, r22, 1
003b4c  0b136311  add.s r6, r6, r22
003b50  0b138311  add.s r6, r6, r24
003b54  5b010000  j 8
003b58  17137301  or r6, r6, r23
003b5c  6349ffef  loadli.w r18,  -2052(r30)
003b60  178b2401  and r22, r9, r18
003b64  138b6d05  setlt.u r22, r27, r22
003b68  3b600b00  bneq r22, zero, 24
003b6c  1bcb0401  srli r22, r9, 16
003b70  1b0b1b00  andi r22, r22, 1
003b74  8b946411  add.s r9, r9, r22
003b78  8b948411  add.s r9, r9, r24
003b7c  5b010000  j 8
003b80  97947401  or r9, r9, r23
003b84  6349ffef  loadli.w r18,  -2052(r30)
003b88  178b2501  and r22, r11, r18
003b8c  138b6d05  setlt.u r22, r27, r22
003b90  3b600b00  bneq r22, zero, 24
003b94  1bcb0501  srli r22, r11, 16
003b98  1b0b1b00  andi r22, r22, 1
003b9c  8b956511  add.s r11, r11, r22
003ba0  8b958511  add.s r11, r11, r24
003ba4  5b010000  j 8
003ba8  97957501  or r11, r11, r23
003bac  6349ffef  loadli.w r18,  -2052(r30)
003bb0  170b2101  and r22, r2, r18
003bb4  138b6d05  setlt.u r22, r27, r22
003bb8  3b600b00  bneq r22, zero, 24
003bbc  1b4b0101  srli r22, r2, 16
003bc0  1b0b1b00  andi r22, r22, 1
003bc4  0b116111  add.s r2, r2, r22
003bc8  0b118111  add.s r2, r2, r24
003bcc  5b010000  j 8
003bd0  17117101  or r2, r2, r23
003bd4  6349ffef  loadli.w r18,  -2052(r30)
003bd8  178b2601  and r22, r13, r18
003bdc  138b6d05  setlt.u r22, r27, r22
003be0  3b600b00  bneq r22, zero, 24
003be4  1bcb0601  srli r22, r13, 16
003be8  1b0b1b00  andi r22, r22, 1
003bec  8b966611  add.s r13, r13, r22
003bf0  8b968611  add.s r13, r13, r24
003bf4  5b010000  j 8
003bf8  97967601  or r13, r13, r23
003bfc  6349ffef  loadli.w r18,  -2052(r30)
003c00  170b2801  and r22, r16, r18
003c04  138b6d05  setlt.u r22, r27, r22
003c08  3b600b00  bneq r22, zero, 24
003c0c  1b4b0801  srli r22, r16, 16
003c10  1b0b1b00  andi r22, r22, 1
003c14  0b186811  add.s r16, r16, r22
003c18  0b188811  add.s r16, r16, r24
003c1c  5b010000  j 8
003c20  17187801  or r16, r16, r23
003c24  6349ffef  loadli.w r18,  -2052(r30)
003c28  178b2901  and r22, r19, r18
003c2c  138b6d05  setlt.u r22, r27, r22
003c30  3b600b00  bneq r22, zero, 24
003c34  1bcb0901  srli r22, r19, 16
003c38  1b0b1b00  andi r22, r22, 1
003c3c  8b996911  add.s r19, r19, r22
003c40  8b998911  add.s r19, r19, r24
003c44  5b010000  j 8
003c48  97997901  or r19, r19, r23
003c4c  6349ffef  loadli.w r18,  -2052(r30)
003c50  178b2a01  and r22, r21, r18
003c54  138b6d05  setlt.u r22, r27, r22
003c58  3b600b00  bneq r22, zero, 24
003c5c  1bcb0a01  srli r22, r21, 16
003c60  1b0b1b00  andi r22, r22, 1
003c64  8b9a6a11  add.s r21, r21, r22
003c68  8b9a8a11  add.s r21, r21, r24
003c6c  5b010000  j 8
003c70  979a7a01  or r21, r21, r23
003c74  6349ffef  loadli.w r18,  -2052(r30)
003c78  170b2a01  and r22, r20, r18
003c7c  138b6d05  setlt.u r22, r27, r22
003c80  3b600b00  bneq r22, zero, 24
003c84  1b4b0a01  srli r22, r20, 16
003c88  1b0b1b00  andi r22, r22, 1
003c8c  0b1a6a11  add.s r20, r20, r22
003c90  0b1a8a11  add.s r20, r20, r24
003c94  5b010000  j 8
003c98  171a7a01  or r20, r20, r23
003c9c  6349ffef  loadli.w r18,  -2052(r30)
003ca0  178b2801  and r22, r17, r18
003ca4  138b6d05  setlt.u r22, r27, r22
003ca8  3b600b00  bneq r22, zero, 24
003cac  1bcb0801  srli r22, r17, 16
003cb0  1b0b1b00  andi r22, r22, 1
003cb4  8b986811  add.s r17, r17, r22
003cb8  8b988811  add.s r17, r17, r24
003cbc  5b010000  j 8
003cc0  97987801  or r17, r17, r23
003cc4  6349ffef  loadli.w r18,  -2052(r30)
003cc8  178b2701  and r22, r15, r18
003ccc  138b6d05  setlt.u r22, r27, r22
003cd0  3b600b00  bneq r22, zero, 24
003cd4  1bcb0701  srli r22, r15, 16
003cd8  1b0b1b00  andi r22, r22, 1
003cdc  8b976711  add.s r15, r15, r22
003ce0  8b978711  add.s r15, r15, r24
003ce4  5b010000  j 8
003ce8  97977701  or r15, r15, r23
003cec  6349ffef  loadli.w r18,  -2052(r30)
003cf0  170b2701  and r22, r14, r18
003cf4  138b6d05  setlt.u r22, r27, r22
003cf8  3b600b00  bneq r22, zero, 24
003cfc  1b4b0701  srli r22, r14, 16
003d00  1b0b1b00  andi r22, r22, 1
003d04  0b176711  add.s r14, r14, r22
003d08  0b178711  add.s r14, r14, r24
003d0c  5b010000  j 8
003d10  17177701  or r14, r14, r23
003d14  6349ffef  loadli.w r18,  -2052(r30)
003d18  170b2601  and r22, r12, r18
003d1c  138b6d05  setlt.u r22, r27, r22
003d20  3b600b00  bneq r22, zero, 24
003d24  1b4b0601  srli r22, r12, 16
003d28  1b0b1b00  andi r22, r22, 1
003d2c  0b166611  add.s r12, r12, r22
003d30  0b168611  add.s r12, r12, r24
003d34  5b010000  j 8
003d38  17167601  or r12, r12, r23
003d3c  6349ffef  loadli.w r18,  -2052(r30)
003d40  170b2401  and r22, r8, r18
003d44  138b6d05  setlt.u r22, r27, r22
003d48  3b600b00  bneq r22, zero, 24
003d4c  1b4b0401  srli r22, r8, 16
003d50  1b0b1b00  andi r22, r22, 1
003d54  0b146411  add.s r8, r8, r22
003d58  0b148411  add.s r8, r8, r24
003d5c  5b010000  j 8
003d60  17147401  or r8, r8, r23
003d64  6349ffef  loadli.w r18,  -2052(r30)
003d68  170b2501  and r22, r10, r18
003d6c  138b6d05  setlt.u r22, r27, r22
003d70  3b600b00  bneq r22, zero, 24
003d74  1b4b0501  srli r22, r10, 16
003d78  1b0b1b00  andi r22, r22, 1
003d7c  0b156511  add.s r10, r10, r22
003d80  0b158511  add.s r10, r10, r24
003d84  5b010000  j 8
003d88  17157501  or r10, r10, r23
003d8c  6349ffef  loadli.w r18,  -2052(r30)
003d90  178b2001  and r22, r1, r18
003d94  138b6d05  setlt.u r22, r27, r22
003d98  b7350bfc  beq r22, zero, -1684
003d9c  97907001  or r1, r1, r23
003da0  db2effff  j -1676
003da4  9f0e8fe5  addli sp, r30, -3392
003da8  9f8e8e1a  addli sp, sp, 3392
003dac  00a00300  mfence { lm, sm, gm }
003db0  00100000  exit
003db4  00100000  exit
003db8  00100000  exit
003dbc  00100000  exit
003dc0  00100000  exit
003dc4  00100000  exit
003dc8  00100000  exit
003dcc  00100000  exit
003dd0  00100000  exit
003dd4  00100000  exit
003dd8  00100000  exit
003ddc  00100000  exit
003de0  00100000  exit
003de4  00100000  exit
003de8  00100000  exit
003dec  00100000  exit
003df0  00100000  exit
003df4  00100000  exit
003df8  00100000  exit
003dfc  00100000  exit
003e00  00100000  exit
003e04  00100000  exit
003e08  00100000  exit
003e0c  00100000  exit
003e10  00100000  exit
003e14  00100000  exit
003e18  00100000  exit
003e1c  00100000  exit
003e20  00100000  exit
003e24  00100000  exit
003e28  00100000  exit
003e2c  00100000  exit
003e30  00100000  exit
003e34  00100000  exit
003e38  00100000  exit
003e3c  00100000  exit
003e40  00100000  exit
003e44  00100000  exit
003e48  00100000  exit
003e4c  00100000  exit
003e50  00100000  exit
003e54  00100000  exit
003e58  00100000  exit
003e5c  00100000  exit
003e60  00100000  exit
003e64  00100000  exit
003e68  00100000  exit
003e6c  00100000  exit
003e70  00100000  exit
003e74  00100000  exit
003e78  00100000  exit
003e7c  00100000  exit
003e80  00100000  exit
003e84  00100000  exit
003e88  00100000  exit
003e8c  00100000  exit
003e90  00100000  exit
003e94  00100000  exit
003e98  00100000  exit
003e9c  00100000  exit
003ea0  00100000  exit
003ea4  00100000  exit
003ea8  00100000  exit
003eac  00100000  exit
003eb0  00100000  exit
003eb4  00100000  exit
003eb8  00100000  exit
003ebc  00100000  exit
003ec0  00100000  exit
003ec4  00100000  exit
003ec8  00100000  exit
003ecc  00100000  exit
003ed0  00100000  exit
003ed4  00100000  exit
003ed8  00100000  exit
003edc  00100000  exit
003ee0  00100000  exit
003ee4  00100000  exit
003ee8  00100000  exit
003eec  00100000  exit
003ef0  00100000  exit
003ef4  00100000  exit
003ef8  00100000  exit
003efc  00100000  exit
003f00  00100000  exit
003f04  00100000  exit
003f08  00100000  exit
003f0c  00100000  exit
003f10  00100000  exit
003f14  00100000  exit
003f18  00100000  exit
003f1c  00100000  exit
003f20  00100000  exit
003f24  00100000  exit
003f28  00100000  exit
003f2c  00100000  exit
003f30  00100000  exit
003f34  00100000  exit
003f38  00100000  exit
003f3c  00100000  exit
003f40  00100000  exit
003f44  00100000  exit
003f48  00100000  exit
003f4c  00100000  exit
003f50  00100000  exit
003f54  00100000  exit
003f58  00100000  exit
003f5c  00100000  exit
003f60  00100000  exit
003f64  00100000  exit
003f68  00100000  exit
003f6c  00100000  exit
003f70  00100000  exit
003f74  00100000  exit
003f78  00100000  exit
003f7c  00100000  exit
003f80  00100000  exit
003f84  00100000  exit
003f88  00100000  exit
003f8c  00100000  exit
003f90  00100000  exit
003f94  00100000  exit
003f98  00100000  exit
003f9c  00100000  exit
003fa0  00100000  exit
003fa4  00100000  exit
003fa8  00100000  exit
003fac  00100000  exit
003fb0  00100000  exit
003fb4  00100000  exit
003fb8  00100000  exit
003fbc  00100000  exit
003fc0  00100000  exit
003fc4  00100000  exit
003fc8  00100000  exit
003fcc  00100000  exit
003fd0  00100000  exit
003fd4  00100000  exit
003fd8  00100000  exit
003fdc  00100000  exit
003fe0  00100000  exit
003fe4  00100000  exit
003fe8  00100000  exit
003fec  00100000  exit
003ff0  00100000  exit
