; SHA-256 0f5b48476c38d6e30a4373a376aea87494945b5e3b1ff6d0a63e8c33856722bf
; P800 Cluster · XTDK LLVM 19 · 4075 / 4075 words decoded
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
0000dc  9f8e8ee4  addli sp, sp, -3520
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f0e1b  addli r30, sp, 3456
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
000118  e70d9fe8  storeli.w r9, -2856(r30)
00011c  73e00400  stores.w zero, 0(r9)
000120  80540002  load_param_i r9, 0
000124  00a00300  mfence { lm, sm, gm }
000128  80a10204  csr_set csr3, r5
00012c  00d00100  sync_group
000130  e74d8fe8  storeli.w r8, -2852(r30)
000134  73600400  stores.w zero, 0(r8)
000138  00a00300  mfence { lm, sm, gm }
00013c  67005fee  storeli.w r5, -2304(r30)
000140  80a10204  csr_set csr3, r5
000144  00d00100  sync_group
000148  674d4fe8  storeli.w r4, -2860(r30)
00014c  4b40921e  ble.s r4, r9, 15376
000150  1f021000  addli r4, zero, 8
000154  1f140000  addli r8, zero, 1
000158  2b09807f  lui r18, 522240
00015c  ab0d4000  lui r27, 1024
000160  eea5b562  vxor.u.mz vr11{mr1}, vr11, vr11
000164  0b924030  div.s r4, r1, r4
000168  670d4fe8  storeli.w r4, -2864(r30)
00016c  1b323200  slli r4, r4, 3
000170  0b934018  sub.s r6, r1, r4
000174  6b528f00  load.d r[5:6], 8(r30)
000178  9b807000  andi r1, r1, 7
00017c  1b357300  slli r10, r6, 7
000180  00d30002  load_param_i r6, 1
000184  e74f1fec  storeli.w r1, -2308(r30)
000188  ab700000  lui r1, 7
00018c  e70c6fe8  storeli.w r6, -2872(r30)
000190  1b131500  ori r6, r10, 1
000194  9b151501  ori r11, r10, 17
000198  e74cafe8  storeli.w r10, -2868(r30)
00019c  674c6fe8  storeli.w r6, -2876(r30)
0001a0  1b132500  ori r6, r10, 2
0001a4  6748bfe8  storeli.w r11, -2940(r30)
0001a8  670c6fe8  storeli.w r6, -2880(r30)
0001ac  1b133500  ori r6, r10, 3
0001b0  e74b6fe8  storeli.w r6, -2884(r30)
0001b4  1b134500  ori r6, r10, 4
0001b8  e70b6fe8  storeli.w r6, -2888(r30)
0001bc  1b135500  ori r6, r10, 5
0001c0  674b6fe8  storeli.w r6, -2892(r30)
0001c4  1b136500  ori r6, r10, 6
0001c8  670b6fe8  storeli.w r6, -2896(r30)
0001cc  1b137500  ori r6, r10, 7
0001d0  e74a6fe8  storeli.w r6, -2900(r30)
0001d4  1b138500  ori r6, r10, 8
0001d8  e70a6fe8  storeli.w r6, -2904(r30)
0001dc  1b139500  ori r6, r10, 9
0001e0  674a6fe8  storeli.w r6, -2908(r30)
0001e4  1b13a500  ori r6, r10, 10
0001e8  670a6fe8  storeli.w r6, -2912(r30)
0001ec  1b13b500  ori r6, r10, 11
0001f0  e7496fe8  storeli.w r6, -2916(r30)
0001f4  1b13c500  ori r6, r10, 12
0001f8  e7096fe8  storeli.w r6, -2920(r30)
0001fc  1b13d500  ori r6, r10, 13
000200  67496fe8  storeli.w r6, -2924(r30)
000204  1b13e500  ori r6, r10, 14
000208  67096fe8  storeli.w r6, -2928(r30)
00020c  1b13f500  ori r6, r10, 15
000210  e7486fe8  storeli.w r6, -2932(r30)
000214  1b130501  ori r6, r10, 16
000218  e7086fe8  storeli.w r6, -2936(r30)
00021c  33130528  sext_int2long r[7:8], r10
000220  17338302  sll.d r[7:8], r[7:8], r8
000224  2bf4ffff  lui r8, 1048575
000228  0b226210  add.ul r[5:6], r[5:6], r[7:8]
00022c  1f03ffe8  addli r6, r30, -2952
000230  9f030002  addli r7, zero, 256
000234  73304300  store.d r[5:6], 0(r6)
000238  1b1204fe  ori r4, r8, 4064
00023c  9b122501  ori r5, r10, 18
000240  1f030ff8  addli r6, r30, -1024
000244  97814100  and r3, r3, r4
000248  1b92f0ff  ori r4, r1, 4095
00024c  ab10833a  lui r1, 239665
000250  67475fe8  storeli.w r5, -2956(r30)
000254  9b90f026  ori r1, r1, 623
000258  8b912110  add.s r3, r3, r2
00025c  2bf1ff7f  lui r2, 524287
000260  e70f4fee  storeli.w r4, -2056(r30)
000264  67071fe8  storeli.w r1, -2960(r30)
000268  9b103501  ori r1, r10, 19
00026c  1b1af1ff  ori r20, r2, 4095
000270  674e3fe8  storeli.w r3, -2844(r30)
000274  e7461fe8  storeli.w r1, -2964(r30)
000278  9b104501  ori r1, r10, 20
00027c  e74f4fef  storeli.w r20, -2052(r30)
000280  e7061fe8  storeli.w r1, -2968(r30)
000284  9b105501  ori r1, r10, 21
000288  67461fe8  storeli.w r1, -2972(r30)
00028c  9b106501  ori r1, r10, 22
000290  67061fe8  storeli.w r1, -2976(r30)
000294  9b107501  ori r1, r10, 23
000298  e7451fe8  storeli.w r1, -2980(r30)
00029c  9b108501  ori r1, r10, 24
0002a0  e7051fe8  storeli.w r1, -2984(r30)
0002a4  9b109501  ori r1, r10, 25
0002a8  67451fe8  storeli.w r1, -2988(r30)
0002ac  9b10a501  ori r1, r10, 26
0002b0  67051fe8  storeli.w r1, -2992(r30)
0002b4  9b10b501  ori r1, r10, 27
0002b8  e7441fe8  storeli.w r1, -2996(r30)
0002bc  9b10c501  ori r1, r10, 28
0002c0  e7041fe8  storeli.w r1, -3000(r30)
0002c4  9b10d501  ori r1, r10, 29
0002c8  67441fe8  storeli.w r1, -3004(r30)
0002cc  9b10e501  ori r1, r10, 30
0002d0  67041fe8  storeli.w r1, -3008(r30)
0002d4  9b10f501  ori r1, r10, 31
0002d8  e7431fe8  storeli.w r1, -3012(r30)
0002dc  9b100502  ori r1, r10, 32
0002e0  e7031fe8  storeli.w r1, -3016(r30)
0002e4  9b101502  ori r1, r10, 33
0002e8  67431fe8  storeli.w r1, -3020(r30)
0002ec  9b102502  ori r1, r10, 34
0002f0  67031fe8  storeli.w r1, -3024(r30)
0002f4  9b103502  ori r1, r10, 35
0002f8  e7421fe8  storeli.w r1, -3028(r30)
0002fc  9b104502  ori r1, r10, 36
000300  e7021fe8  storeli.w r1, -3032(r30)
000304  9b105502  ori r1, r10, 37
000308  67421fe8  storeli.w r1, -3036(r30)
00030c  9b106502  ori r1, r10, 38
000310  67021fe8  storeli.w r1, -3040(r30)
000314  9b107502  ori r1, r10, 39
000318  e7411fe8  storeli.w r1, -3044(r30)
00031c  9b108502  ori r1, r10, 40
000320  e7011fe8  storeli.w r1, -3048(r30)
000324  9b109502  ori r1, r10, 41
000328  67411fe8  storeli.w r1, -3052(r30)
00032c  9b10a502  ori r1, r10, 42
000330  67011fe8  storeli.w r1, -3056(r30)
000334  9b10b502  ori r1, r10, 43
000338  e7401fe8  storeli.w r1, -3060(r30)
00033c  9b10c502  ori r1, r10, 44
000340  e7001fe8  storeli.w r1, -3064(r30)
000344  9b10d502  ori r1, r10, 45
000348  67401fe8  storeli.w r1, -3068(r30)
00034c  9b10e502  ori r1, r10, 46
000350  67001fe8  storeli.w r1, -3072(r30)
000354  9b10f502  ori r1, r10, 47
000358  e74f1fe6  storeli.w r1, -3076(r30)
00035c  9b100503  ori r1, r10, 48
000360  e70f1fe6  storeli.w r1, -3080(r30)
000364  9b101503  ori r1, r10, 49
000368  674f1fe6  storeli.w r1, -3084(r30)
00036c  9b102503  ori r1, r10, 50
000370  670f1fe6  storeli.w r1, -3088(r30)
000374  9b103503  ori r1, r10, 51
000378  e74e1fe6  storeli.w r1, -3092(r30)
00037c  9b104503  ori r1, r10, 52
000380  e70e1fe6  storeli.w r1, -3096(r30)
000384  9b105503  ori r1, r10, 53
000388  674e1fe6  storeli.w r1, -3100(r30)
00038c  9b106503  ori r1, r10, 54
000390  670e1fe6  storeli.w r1, -3104(r30)
000394  9b107503  ori r1, r10, 55
000398  e74d1fe6  storeli.w r1, -3108(r30)
00039c  9b108503  ori r1, r10, 56
0003a0  e70d1fe6  storeli.w r1, -3112(r30)
0003a4  9b109503  ori r1, r10, 57
0003a8  674d1fe6  storeli.w r1, -3116(r30)
0003ac  9b10a503  ori r1, r10, 58
0003b0  670d1fe6  storeli.w r1, -3120(r30)
0003b4  9b10b503  ori r1, r10, 59
0003b8  e74c1fe6  storeli.w r1, -3124(r30)
0003bc  9b10c503  ori r1, r10, 60
0003c0  e70c1fe6  storeli.w r1, -3128(r30)
0003c4  9b10d503  ori r1, r10, 61
0003c8  674c1fe6  storeli.w r1, -3132(r30)
0003cc  9b10e503  ori r1, r10, 62
0003d0  670c1fe6  storeli.w r1, -3136(r30)
0003d4  9b10f503  ori r1, r10, 63
0003d8  e74b1fe6  storeli.w r1, -3140(r30)
0003dc  9b100504  ori r1, r10, 64
0003e0  e70b1fe6  storeli.w r1, -3144(r30)
0003e4  9b101504  ori r1, r10, 65
0003e8  674b1fe6  storeli.w r1, -3148(r30)
0003ec  9b102504  ori r1, r10, 66
0003f0  670b1fe6  storeli.w r1, -3152(r30)
0003f4  9b103504  ori r1, r10, 67
0003f8  e74a1fe6  storeli.w r1, -3156(r30)
0003fc  9b104504  ori r1, r10, 68
000400  e70a1fe6  storeli.w r1, -3160(r30)
000404  9b105504  ori r1, r10, 69
000408  674a1fe6  storeli.w r1, -3164(r30)
00040c  9b106504  ori r1, r10, 70
000410  670a1fe6  storeli.w r1, -3168(r30)
000414  9b107504  ori r1, r10, 71
000418  e7491fe6  storeli.w r1, -3172(r30)
00041c  9b108504  ori r1, r10, 72
000420  e7091fe6  storeli.w r1, -3176(r30)
000424  9b109504  ori r1, r10, 73
000428  67491fe6  storeli.w r1, -3180(r30)
00042c  9b10a504  ori r1, r10, 74
000430  67091fe6  storeli.w r1, -3184(r30)
000434  9b10b504  ori r1, r10, 75
000438  e7481fe6  storeli.w r1, -3188(r30)
00043c  9b10c504  ori r1, r10, 76
000440  e7081fe6  storeli.w r1, -3192(r30)
000444  9b10d504  ori r1, r10, 77
000448  67481fe6  storeli.w r1, -3196(r30)
00044c  9b10e504  ori r1, r10, 78
000450  67081fe6  storeli.w r1, -3200(r30)
000454  9b10f504  ori r1, r10, 79
000458  e7471fe6  storeli.w r1, -3204(r30)
00045c  9b100505  ori r1, r10, 80
000460  e7071fe6  storeli.w r1, -3208(r30)
000464  9b101505  ori r1, r10, 81
000468  67471fe6  storeli.w r1, -3212(r30)
00046c  9b102505  ori r1, r10, 82
000470  67071fe6  storeli.w r1, -3216(r30)
000474  9b103505  ori r1, r10, 83
000478  e7461fe6  storeli.w r1, -3220(r30)
00047c  9b104505  ori r1, r10, 84
000480  e7061fe6  storeli.w r1, -3224(r30)
000484  9b105505  ori r1, r10, 85
000488  67461fe6  storeli.w r1, -3228(r30)
00048c  9b106505  ori r1, r10, 86
000490  67061fe6  storeli.w r1, -3232(r30)
000494  9b107505  ori r1, r10, 87
000498  e7451fe6  storeli.w r1, -3236(r30)
00049c  9b108505  ori r1, r10, 88
0004a0  e7051fe6  storeli.w r1, -3240(r30)
0004a4  9b109505  ori r1, r10, 89
0004a8  67451fe6  storeli.w r1, -3244(r30)
0004ac  9b10a505  ori r1, r10, 90
0004b0  67051fe6  storeli.w r1, -3248(r30)
0004b4  9b10b505  ori r1, r10, 91
0004b8  e7441fe6  storeli.w r1, -3252(r30)
0004bc  9b10c505  ori r1, r10, 92
0004c0  e7041fe6  storeli.w r1, -3256(r30)
0004c4  9b10d505  ori r1, r10, 93
0004c8  67441fe6  storeli.w r1, -3260(r30)
0004cc  9b10e505  ori r1, r10, 94
0004d0  67041fe6  storeli.w r1, -3264(r30)
0004d4  9b10f505  ori r1, r10, 95
0004d8  e7431fe6  storeli.w r1, -3268(r30)
0004dc  9b100506  ori r1, r10, 96
0004e0  e7031fe6  storeli.w r1, -3272(r30)
0004e4  9b101506  ori r1, r10, 97
0004e8  67431fe6  storeli.w r1, -3276(r30)
0004ec  9b102506  ori r1, r10, 98
0004f0  67031fe6  storeli.w r1, -3280(r30)
0004f4  9b103506  ori r1, r10, 99
0004f8  e7421fe6  storeli.w r1, -3284(r30)
0004fc  9b104506  ori r1, r10, 100
000500  e7021fe6  storeli.w r1, -3288(r30)
000504  9b105506  ori r1, r10, 101
000508  67421fe6  storeli.w r1, -3292(r30)
00050c  9b106506  ori r1, r10, 102
000510  67021fe6  storeli.w r1, -3296(r30)
000514  9b107506  ori r1, r10, 103
000518  e7411fe6  storeli.w r1, -3300(r30)
00051c  9b108506  ori r1, r10, 104
000520  e7011fe6  storeli.w r1, -3304(r30)
000524  9b109506  ori r1, r10, 105
000528  67411fe6  storeli.w r1, -3308(r30)
00052c  9b10a506  ori r1, r10, 106
000530  67011fe6  storeli.w r1, -3312(r30)
000534  9b10b506  ori r1, r10, 107
000538  e7401fe6  storeli.w r1, -3316(r30)
00053c  9b10c506  ori r1, r10, 108
000540  e7001fe6  storeli.w r1, -3320(r30)
000544  9b10d506  ori r1, r10, 109
000548  67401fe6  storeli.w r1, -3324(r30)
00054c  9b10e506  ori r1, r10, 110
000550  67001fe6  storeli.w r1, -3328(r30)
000554  9b10f506  ori r1, r10, 111
000558  e74f1fe4  storeli.w r1, -3332(r30)
00055c  9b100507  ori r1, r10, 112
000560  e70f1fe4  storeli.w r1, -3336(r30)
000564  9b101507  ori r1, r10, 113
000568  674f1fe4  storeli.w r1, -3340(r30)
00056c  9b102507  ori r1, r10, 114
000570  670f1fe4  storeli.w r1, -3344(r30)
000574  9b103507  ori r1, r10, 115
000578  e74e1fe4  storeli.w r1, -3348(r30)
00057c  9b104507  ori r1, r10, 116
000580  e70e1fe4  storeli.w r1, -3352(r30)
000584  9b105507  ori r1, r10, 117
000588  674e1fe4  storeli.w r1, -3356(r30)
00058c  9b106507  ori r1, r10, 118
000590  670e1fe4  storeli.w r1, -3360(r30)
000594  9b107507  ori r1, r10, 119
000598  e74d1fe4  storeli.w r1, -3364(r30)
00059c  9b108507  ori r1, r10, 120
0005a0  e70d1fe4  storeli.w r1, -3368(r30)
0005a4  9b109507  ori r1, r10, 121
0005a8  674d1fe4  storeli.w r1, -3372(r30)
0005ac  9b10a507  ori r1, r10, 122
0005b0  670d1fe4  storeli.w r1, -3376(r30)
0005b4  9b10b507  ori r1, r10, 123
0005b8  e74c1fe4  storeli.w r1, -3380(r30)
0005bc  9b10c507  ori r1, r10, 124
0005c0  e70c1fe4  storeli.w r1, -3384(r30)
0005c4  9b10d507  ori r1, r10, 125
0005c8  674c1fe4  storeli.w r1, -3388(r30)
0005cc  9b10e507  ori r1, r10, 126
0005d0  670c1fe4  storeli.w r1, -3392(r30)
0005d4  9b10f507  ori r1, r10, 127
0005d8  e74b1fe4  storeli.w r1, -3396(r30)
0005dc  9f802140  addli r1, r3, 8208
0005e0  670e1fe8  storeli.w r1, -2848(r30)
0005e4  db530200  j 4764
0005e8  e3021fea  loadli.w r5,  -2808(r30)
0005ec  9f030fef  addli r7, r30, -2176
0005f0  e3002fea  loadli.w r1,  -2800(r30)
0005f4  e3411fea  loadli.w r3,  -2804(r30)
0005f8  9f160000  addli r13, zero, 1
0005fc  eb5a0f01  load.d r[22:23], 16(r30)
000600  1f040ff8  addli r8, r30, -1024
000604  1f2a0000  addli r20, zero, 2
000608  1f190000  addli r18, zero, 1
00060c  e349bfed  loadli.w r19,  -2340(r30)
000610  1f440400  addli r8, r8, 4
000614  339d0228  sext_int2long r[27:28], r5
000618  e3420fea  loadli.w r5,  -2812(r30)
00061c  b3900028  sext_int2long r[2:3], r1
000620  b3910128  sext_int2long r[4:5], r3
000624  97b0d002  sll.d r[2:3], r[2:3], r13
000628  b3940228  sext_int2long r[10:11], r5
00062c  e3020fea  loadli.w r5,  -2816(r30)
000630  33980228  sext_int2long r[17:18], r5
000634  e342ffe9  loadli.w r5,  -2820(r30)
000638  b39b0228  sext_int2long r[24:25], r5
00063c  e302ffe9  loadli.w r5,  -2824(r30)
000640  33970228  sext_int2long r[15:16], r5
000644  e342efe9  loadli.w r5,  -2828(r30)
000648  b3950228  sext_int2long r[12:13], r5
00064c  e302efe9  loadli.w r5,  -2832(r30)
000650  b3920228  sext_int2long r[6:7], r5
000654  73b05300  store.d r[6:7], 0(r7)
000658  e342dfe9  loadli.w r5,  -2836(r30)
00065c  9f038fee  addli r7, r30, -2240
000660  b3920228  sext_int2long r[6:7], r5
000664  73b05300  store.d r[6:7], 0(r7)
000668  e302dfe9  loadli.w r5,  -2840(r30)
00066c  9f03efef  addli r7, r30, -2064
000670  b3920228  sext_int2long r[6:7], r5
000674  73b05300  store.d r[6:7], 0(r7)
000678  97b2d102  sll.d r[6:7], r[4:5], r13
00067c  8ba11a10  add.ul r[4:5], r[22:23], r[2:3]
000680  ab0000f0  lui r1, 983040
000684  2b0100f0  lui r2, 983040
000688  9f030ff8  addli r7, r30, -1024
00068c  8ba25a10  add.ul r[6:7], r[22:23], r[6:7]
000690  17112a00  or r2, r20, r2
000694  97101a00  or r1, r20, r1
000698  9fa30300  addli r7, r7, 2
00069c  7fb18200  s_lm2gm r2, r8, 0(r[6:7])
0006a0  ffb07100  s_lm2gm r1, r7, 0(r[4:5])
0006a4  97b1d402  sll.d r[4:5], r[10:11], r13
0006a8  9730dd02  sll.d r[2:3], r[27:28], r13
0006ac  ab0200f0  lui r5, 983040
0006b0  2b0300f0  lui r6, 983040
0006b4  9f030ff8  addli r7, r30, -1024
0006b8  1f040ff8  addli r8, r30, -1024
0006bc  e3441fed  loadli.w r9,  -2420(r30)
0006c0  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0006c4  8ba13a10  add.ul r[4:5], r[22:23], r[4:5]
0006c8  97125a00  or r5, r20, r5
0006cc  9fe30300  addli r7, r7, 6
0006d0  17136a00  or r6, r20, r6
0006d4  1f041400  addli r8, r8, 8
0006d8  b3940428  sext_int2long r[10:11], r9
0006dc  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
0006e0  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
0006e4  9730d802  sll.d r[2:3], r[17:18], r13
0006e8  97b1db02  sll.d r[4:5], r[24:25], r13
0006ec  ab0200f0  lui r5, 983040
0006f0  2b0300f0  lui r6, 983040
0006f4  9f030ff8  addli r7, r30, -1024
0006f8  1f040ff8  addli r8, r30, -1024
0006fc  ab0800f0  lui r17, 983040
000700  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000704  8ba13a10  add.ul r[4:5], r[22:23], r[4:5]
000708  97125a00  or r5, r20, r5
00070c  9fa31300  addli r7, r7, 10
000710  17136a00  or r6, r20, r6
000714  1f441400  addli r8, r8, 12
000718  97181a01  or r17, r20, r17
00071c  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
000720  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
000724  97b1d502  sll.d r[4:5], r[12:13], r13
000728  9730d702  sll.d r[2:3], r[15:16], r13
00072c  ab0200f0  lui r5, 983040
000730  2b0300f0  lui r6, 983040
000734  9f030ff8  addli r7, r30, -1024
000738  1f040ff8  addli r8, r30, -1024
00073c  e3452fed  loadli.w r11,  -2412(r30)
000740  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000744  8ba13a10  add.ul r[4:5], r[22:23], r[4:5]
000748  97125a00  or r5, r20, r5
00074c  9fe31300  addli r7, r7, 14
000750  17136a00  or r6, r20, r6
000754  1f042400  addli r8, r8, 16
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
000784  17136a00  or r6, r20, r6
000788  1f442400  addli r8, r8, 20
00078c  9fa32300  addli r7, r7, 18
000790  97125a00  or r5, r20, r5
000794  97b1d102  sll.d r[4:5], r[4:5], r13
000798  97b0d002  sll.d r[2:3], r[2:3], r13
00079c  8ba13a10  add.ul r[4:5], r[22:23], r[4:5]
0007a0  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0007a4  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
0007a8  9f01efef  addli r3, r30, -2064
0007ac  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
0007b0  e3422fea  loadli.w r5,  -2796(r30)
0007b4  1f020ff8  addli r4, r30, -1024
0007b8  e3430fed  loadli.w r7,  -2428(r30)
0007bc  ebd00100  load.d r[2:3], 0(r3)
0007c0  ab0100f0  lui r3, 983040
0007c4  1f622200  addli r4, r4, 22
0007c8  b3920228  sext_int2long r[6:7], r5
0007cc  b3930328  sext_int2long r[8:9], r7
0007d0  97113a00  or r3, r20, r3
0007d4  97b0d002  sll.d r[2:3], r[2:3], r13
0007d8  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0007dc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0007e0  97b0d202  sll.d r[2:3], r[6:7], r13
0007e4  e3023fea  loadli.w r5,  -2792(r30)
0007e8  ab0100f0  lui r3, 983040
0007ec  1f020ff8  addli r4, r30, -1024
0007f0  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0007f4  97113a00  or r3, r20, r3
0007f8  1f023200  addli r4, r4, 24
0007fc  b3920228  sext_int2long r[6:7], r5
000800  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000804  ab0100f0  lui r3, 983040
000808  1f020ff8  addli r4, r30, -1024
00080c  97b0d202  sll.d r[2:3], r[6:7], r13
000810  e3423fea  loadli.w r5,  -2788(r30)
000814  97113a00  or r3, r20, r3
000818  1f223200  addli r4, r4, 26
00081c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000820  b3920228  sext_int2long r[6:7], r5
000824  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000828  ab0100f0  lui r3, 983040
00082c  1f020ff8  addli r4, r30, -1024
000830  97b0d202  sll.d r[2:3], r[6:7], r13
000834  e3024fea  loadli.w r5,  -2784(r30)
000838  97113a00  or r3, r20, r3
00083c  1f423200  addli r4, r4, 28
000840  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000844  b3920228  sext_int2long r[6:7], r5
000848  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00084c  ab0100f0  lui r3, 983040
000850  1f020ff8  addli r4, r30, -1024
000854  97b0d202  sll.d r[2:3], r[6:7], r13
000858  e3424fea  loadli.w r5,  -2780(r30)
00085c  97113a00  or r3, r20, r3
000860  1f623200  addli r4, r4, 30
000864  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000868  b3920228  sext_int2long r[6:7], r5
00086c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000870  ab0100f0  lui r3, 983040
000874  1f020ff8  addli r4, r30, -1024
000878  97b0d202  sll.d r[2:3], r[6:7], r13
00087c  e3025fea  loadli.w r5,  -2776(r30)
000880  97113a00  or r3, r20, r3
000884  1f024200  addli r4, r4, 32
000888  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
00088c  b3920228  sext_int2long r[6:7], r5
000890  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000894  ab0100f0  lui r3, 983040
000898  1f020ff8  addli r4, r30, -1024
00089c  97b0d202  sll.d r[2:3], r[6:7], r13
0008a0  e3425fea  loadli.w r5,  -2772(r30)
0008a4  97113a00  or r3, r20, r3
0008a8  1f224200  addli r4, r4, 34
0008ac  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0008b0  b3920228  sext_int2long r[6:7], r5
0008b4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0008b8  ab0100f0  lui r3, 983040
0008bc  1f020ff8  addli r4, r30, -1024
0008c0  97b0d202  sll.d r[2:3], r[6:7], r13
0008c4  e3026fea  loadli.w r5,  -2768(r30)
0008c8  97113a00  or r3, r20, r3
0008cc  1f424200  addli r4, r4, 36
0008d0  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0008d4  b3920228  sext_int2long r[6:7], r5
0008d8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0008dc  ab0100f0  lui r3, 983040
0008e0  1f020ff8  addli r4, r30, -1024
0008e4  97b0d202  sll.d r[2:3], r[6:7], r13
0008e8  e3426fea  loadli.w r5,  -2764(r30)
0008ec  97113a00  or r3, r20, r3
0008f0  1f624200  addli r4, r4, 38
0008f4  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0008f8  b3920228  sext_int2long r[6:7], r5
0008fc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000900  ab0100f0  lui r3, 983040
000904  1f020ff8  addli r4, r30, -1024
000908  97b0d202  sll.d r[2:3], r[6:7], r13
00090c  e3027fea  loadli.w r5,  -2760(r30)
000910  97113a00  or r3, r20, r3
000914  1f025200  addli r4, r4, 40
000918  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
00091c  b3920228  sext_int2long r[6:7], r5
000920  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000924  ab0100f0  lui r3, 983040
000928  1f020ff8  addli r4, r30, -1024
00092c  97b0d202  sll.d r[2:3], r[6:7], r13
000930  e3427fea  loadli.w r5,  -2756(r30)
000934  97113a00  or r3, r20, r3
000938  1f225200  addli r4, r4, 42
00093c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000940  b3920228  sext_int2long r[6:7], r5
000944  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000948  ab0100f0  lui r3, 983040
00094c  1f020ff8  addli r4, r30, -1024
000950  97b0d202  sll.d r[2:3], r[6:7], r13
000954  e3028fea  loadli.w r5,  -2752(r30)
000958  97113a00  or r3, r20, r3
00095c  1f425200  addli r4, r4, 44
000960  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000964  b3920228  sext_int2long r[6:7], r5
000968  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00096c  ab0100f0  lui r3, 983040
000970  1f020ff8  addli r4, r30, -1024
000974  97b0d202  sll.d r[2:3], r[6:7], r13
000978  e3428fea  loadli.w r5,  -2748(r30)
00097c  97113a00  or r3, r20, r3
000980  1f625200  addli r4, r4, 46
000984  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000988  b3920228  sext_int2long r[6:7], r5
00098c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000990  ab0100f0  lui r3, 983040
000994  1f020ff8  addli r4, r30, -1024
000998  97b0d202  sll.d r[2:3], r[6:7], r13
00099c  e3029fea  loadli.w r5,  -2744(r30)
0009a0  97113a00  or r3, r20, r3
0009a4  1f026200  addli r4, r4, 48
0009a8  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0009ac  b3920228  sext_int2long r[6:7], r5
0009b0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0009b4  ab0100f0  lui r3, 983040
0009b8  1f020ff8  addli r4, r30, -1024
0009bc  97b0d202  sll.d r[2:3], r[6:7], r13
0009c0  e3429fea  loadli.w r5,  -2740(r30)
0009c4  97113a00  or r3, r20, r3
0009c8  1f226200  addli r4, r4, 50
0009cc  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0009d0  b3920228  sext_int2long r[6:7], r5
0009d4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0009d8  ab0100f0  lui r3, 983040
0009dc  1f020ff8  addli r4, r30, -1024
0009e0  97b0d202  sll.d r[2:3], r[6:7], r13
0009e4  e302afea  loadli.w r5,  -2736(r30)
0009e8  97113a00  or r3, r20, r3
0009ec  1f426200  addli r4, r4, 52
0009f0  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0009f4  b3920228  sext_int2long r[6:7], r5
0009f8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0009fc  ab0100f0  lui r3, 983040
000a00  1f020ff8  addli r4, r30, -1024
000a04  97b0d202  sll.d r[2:3], r[6:7], r13
000a08  e342afea  loadli.w r5,  -2732(r30)
000a0c  97113a00  or r3, r20, r3
000a10  1f626200  addli r4, r4, 54
000a14  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000a18  b3920228  sext_int2long r[6:7], r5
000a1c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a20  ab0100f0  lui r3, 983040
000a24  1f020ff8  addli r4, r30, -1024
000a28  97b0d202  sll.d r[2:3], r[6:7], r13
000a2c  e302bfea  loadli.w r5,  -2728(r30)
000a30  97113a00  or r3, r20, r3
000a34  1f027200  addli r4, r4, 56
000a38  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000a3c  b3920228  sext_int2long r[6:7], r5
000a40  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a44  ab0100f0  lui r3, 983040
000a48  1f020ff8  addli r4, r30, -1024
000a4c  97b0d202  sll.d r[2:3], r[6:7], r13
000a50  e342bfea  loadli.w r5,  -2724(r30)
000a54  97113a00  or r3, r20, r3
000a58  1f227200  addli r4, r4, 58
000a5c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000a60  b3920228  sext_int2long r[6:7], r5
000a64  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a68  ab0100f0  lui r3, 983040
000a6c  1f020ff8  addli r4, r30, -1024
000a70  97b0d202  sll.d r[2:3], r[6:7], r13
000a74  e302cfea  loadli.w r5,  -2720(r30)
000a78  97113a00  or r3, r20, r3
000a7c  1f427200  addli r4, r4, 60
000a80  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000a84  b3920228  sext_int2long r[6:7], r5
000a88  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a8c  ab0100f0  lui r3, 983040
000a90  1f020ff8  addli r4, r30, -1024
000a94  97b0d202  sll.d r[2:3], r[6:7], r13
000a98  e342cfea  loadli.w r5,  -2716(r30)
000a9c  97113a00  or r3, r20, r3
000aa0  1f627200  addli r4, r4, 62
000aa4  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000aa8  b3920228  sext_int2long r[6:7], r5
000aac  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ab0  6302dfea  loadli.w r4,  -2712(r30)
000ab4  ab0100f0  lui r3, 983040
000ab8  97b0d202  sll.d r[2:3], r[6:7], r13
000abc  6343cfed  loadli.w r6,  -2332(r30)
000ac0  97113a00  or r3, r20, r3
000ac4  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000ac8  33120228  sext_int2long r[5:6], r4
000acc  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
000ad0  9730d202  sll.d r[2:3], r[5:6], r13
000ad4  e342dfea  loadli.w r5,  -2708(r30)
000ad8  ab0100f0  lui r3, 983040
000adc  1f020ff8  addli r4, r30, -1024
000ae0  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000ae4  97113a00  or r3, r20, r3
000ae8  1f228200  addli r4, r4, 66
000aec  b3920228  sext_int2long r[6:7], r5
000af0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000af4  ab0100f0  lui r3, 983040
000af8  1f020ff8  addli r4, r30, -1024
000afc  97b0d202  sll.d r[2:3], r[6:7], r13
000b00  e302efea  loadli.w r5,  -2704(r30)
000b04  97113a00  or r3, r20, r3
000b08  1f428200  addli r4, r4, 68
000b0c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000b10  b3920228  sext_int2long r[6:7], r5
000b14  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b18  ab0100f0  lui r3, 983040
000b1c  1f020ff8  addli r4, r30, -1024
000b20  97b0d202  sll.d r[2:3], r[6:7], r13
000b24  e342efea  loadli.w r5,  -2700(r30)
000b28  97113a00  or r3, r20, r3
000b2c  1f628200  addli r4, r4, 70
000b30  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000b34  b3920228  sext_int2long r[6:7], r5
000b38  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b3c  ab0100f0  lui r3, 983040
000b40  1f020ff8  addli r4, r30, -1024
000b44  97b0d202  sll.d r[2:3], r[6:7], r13
000b48  e302ffea  loadli.w r5,  -2696(r30)
000b4c  97113a00  or r3, r20, r3
000b50  1f029200  addli r4, r4, 72
000b54  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000b58  b3920228  sext_int2long r[6:7], r5
000b5c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b60  ab0100f0  lui r3, 983040
000b64  1f020ff8  addli r4, r30, -1024
000b68  97b0d202  sll.d r[2:3], r[6:7], r13
000b6c  e342ffea  loadli.w r5,  -2692(r30)
000b70  97113a00  or r3, r20, r3
000b74  1f229200  addli r4, r4, 74
000b78  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000b7c  b3920228  sext_int2long r[6:7], r5
000b80  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b84  ab0100f0  lui r3, 983040
000b88  1f020ff8  addli r4, r30, -1024
000b8c  97b0d202  sll.d r[2:3], r[6:7], r13
000b90  e3020feb  loadli.w r5,  -2688(r30)
000b94  97113a00  or r3, r20, r3
000b98  1f429200  addli r4, r4, 76
000b9c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000ba0  b3920228  sext_int2long r[6:7], r5
000ba4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ba8  ab0100f0  lui r3, 983040
000bac  1f020ff8  addli r4, r30, -1024
000bb0  97b0d202  sll.d r[2:3], r[6:7], r13
000bb4  e3420feb  loadli.w r5,  -2684(r30)
000bb8  97113a00  or r3, r20, r3
000bbc  1f629200  addli r4, r4, 78
000bc0  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000bc4  b3920228  sext_int2long r[6:7], r5
000bc8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000bcc  ab0100f0  lui r3, 983040
000bd0  1f020ff8  addli r4, r30, -1024
000bd4  97b0d202  sll.d r[2:3], r[6:7], r13
000bd8  e3021feb  loadli.w r5,  -2680(r30)
000bdc  97113a00  or r3, r20, r3
000be0  1f02a200  addli r4, r4, 80
000be4  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000be8  b3920228  sext_int2long r[6:7], r5
000bec  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000bf0  ab0100f0  lui r3, 983040
000bf4  1f020ff8  addli r4, r30, -1024
000bf8  97b0d202  sll.d r[2:3], r[6:7], r13
000bfc  e3421feb  loadli.w r5,  -2676(r30)
000c00  97113a00  or r3, r20, r3
000c04  1f22a200  addli r4, r4, 82
000c08  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000c0c  b3920228  sext_int2long r[6:7], r5
000c10  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c14  ab0100f0  lui r3, 983040
000c18  1f020ff8  addli r4, r30, -1024
000c1c  97b0d202  sll.d r[2:3], r[6:7], r13
000c20  e3022feb  loadli.w r5,  -2672(r30)
000c24  97113a00  or r3, r20, r3
000c28  1f42a200  addli r4, r4, 84
000c2c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000c30  b3920228  sext_int2long r[6:7], r5
000c34  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c38  ab0100f0  lui r3, 983040
000c3c  1f020ff8  addli r4, r30, -1024
000c40  97b0d202  sll.d r[2:3], r[6:7], r13
000c44  e3422feb  loadli.w r5,  -2668(r30)
000c48  97113a00  or r3, r20, r3
000c4c  1f62a200  addli r4, r4, 86
000c50  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000c54  b3920228  sext_int2long r[6:7], r5
000c58  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c5c  ab0100f0  lui r3, 983040
000c60  1f020ff8  addli r4, r30, -1024
000c64  97b0d202  sll.d r[2:3], r[6:7], r13
000c68  e3023feb  loadli.w r5,  -2664(r30)
000c6c  97113a00  or r3, r20, r3
000c70  1f02b200  addli r4, r4, 88
000c74  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000c78  b3920228  sext_int2long r[6:7], r5
000c7c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c80  ab0100f0  lui r3, 983040
000c84  1f020ff8  addli r4, r30, -1024
000c88  97b0d202  sll.d r[2:3], r[6:7], r13
000c8c  e3423feb  loadli.w r5,  -2660(r30)
000c90  97113a00  or r3, r20, r3
000c94  1f22b200  addli r4, r4, 90
000c98  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000c9c  b3920228  sext_int2long r[6:7], r5
000ca0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ca4  ab0100f0  lui r3, 983040
000ca8  1f020ff8  addli r4, r30, -1024
000cac  97b0d202  sll.d r[2:3], r[6:7], r13
000cb0  e3024feb  loadli.w r5,  -2656(r30)
000cb4  97113a00  or r3, r20, r3
000cb8  1f42b200  addli r4, r4, 92
000cbc  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000cc0  b3920228  sext_int2long r[6:7], r5
000cc4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000cc8  ab0100f0  lui r3, 983040
000ccc  1f020ff8  addli r4, r30, -1024
000cd0  97b0d202  sll.d r[2:3], r[6:7], r13
000cd4  e3424feb  loadli.w r5,  -2652(r30)
000cd8  97113a00  or r3, r20, r3
000cdc  1f62b200  addli r4, r4, 94
000ce0  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000ce4  b3920228  sext_int2long r[6:7], r5
000ce8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000cec  ab0100f0  lui r3, 983040
000cf0  1f020ff8  addli r4, r30, -1024
000cf4  97b0d202  sll.d r[2:3], r[6:7], r13
000cf8  e3025feb  loadli.w r5,  -2648(r30)
000cfc  97113a00  or r3, r20, r3
000d00  1f02c200  addli r4, r4, 96
000d04  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000d08  b3920228  sext_int2long r[6:7], r5
000d0c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d10  ab0100f0  lui r3, 983040
000d14  1f020ff8  addli r4, r30, -1024
000d18  97b0d202  sll.d r[2:3], r[6:7], r13
000d1c  e3425feb  loadli.w r5,  -2644(r30)
000d20  97113a00  or r3, r20, r3
000d24  1f22c200  addli r4, r4, 98
000d28  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000d2c  b3920228  sext_int2long r[6:7], r5
000d30  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d34  ab0100f0  lui r3, 983040
000d38  1f020ff8  addli r4, r30, -1024
000d3c  97b0d202  sll.d r[2:3], r[6:7], r13
000d40  e3026feb  loadli.w r5,  -2640(r30)
000d44  97113a00  or r3, r20, r3
000d48  1f42c200  addli r4, r4, 100
000d4c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000d50  b3920228  sext_int2long r[6:7], r5
000d54  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d58  ab0100f0  lui r3, 983040
000d5c  1f020ff8  addli r4, r30, -1024
000d60  97b0d202  sll.d r[2:3], r[6:7], r13
000d64  e3426feb  loadli.w r5,  -2636(r30)
000d68  97113a00  or r3, r20, r3
000d6c  1f62c200  addli r4, r4, 102
000d70  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000d74  b3920228  sext_int2long r[6:7], r5
000d78  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d7c  ab0100f0  lui r3, 983040
000d80  1f020ff8  addli r4, r30, -1024
000d84  97b0d202  sll.d r[2:3], r[6:7], r13
000d88  e3027feb  loadli.w r5,  -2632(r30)
000d8c  97113a00  or r3, r20, r3
000d90  1f02d200  addli r4, r4, 104
000d94  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000d98  b3920228  sext_int2long r[6:7], r5
000d9c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000da0  ab0100f0  lui r3, 983040
000da4  1f020ff8  addli r4, r30, -1024
000da8  97b0d202  sll.d r[2:3], r[6:7], r13
000dac  e3427feb  loadli.w r5,  -2628(r30)
000db0  97113a00  or r3, r20, r3
000db4  1f22d200  addli r4, r4, 106
000db8  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000dbc  b3920228  sext_int2long r[6:7], r5
000dc0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000dc4  ab0100f0  lui r3, 983040
000dc8  1f020ff8  addli r4, r30, -1024
000dcc  97b0d202  sll.d r[2:3], r[6:7], r13
000dd0  e3028feb  loadli.w r5,  -2624(r30)
000dd4  97113a00  or r3, r20, r3
000dd8  1f42d200  addli r4, r4, 108
000ddc  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000de0  b3920228  sext_int2long r[6:7], r5
000de4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000de8  ab0100f0  lui r3, 983040
000dec  1f020ff8  addli r4, r30, -1024
000df0  97b0d202  sll.d r[2:3], r[6:7], r13
000df4  e3428feb  loadli.w r5,  -2620(r30)
000df8  97113a00  or r3, r20, r3
000dfc  1f62d200  addli r4, r4, 110
000e00  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000e04  b3920228  sext_int2long r[6:7], r5
000e08  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e0c  ab0100f0  lui r3, 983040
000e10  1f020ff8  addli r4, r30, -1024
000e14  97b0d202  sll.d r[2:3], r[6:7], r13
000e18  e3029feb  loadli.w r5,  -2616(r30)
000e1c  97113a00  or r3, r20, r3
000e20  1f02e200  addli r4, r4, 112
000e24  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000e28  b3920228  sext_int2long r[6:7], r5
000e2c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e30  ab0100f0  lui r3, 983040
000e34  1f020ff8  addli r4, r30, -1024
000e38  97b0d202  sll.d r[2:3], r[6:7], r13
000e3c  e3429feb  loadli.w r5,  -2612(r30)
000e40  97113a00  or r3, r20, r3
000e44  1f22e200  addli r4, r4, 114
000e48  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000e4c  b3920228  sext_int2long r[6:7], r5
000e50  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e54  ab0100f0  lui r3, 983040
000e58  1f020ff8  addli r4, r30, -1024
000e5c  97b0d202  sll.d r[2:3], r[6:7], r13
000e60  e302afeb  loadli.w r5,  -2608(r30)
000e64  97113a00  or r3, r20, r3
000e68  1f42e200  addli r4, r4, 116
000e6c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000e70  b3920228  sext_int2long r[6:7], r5
000e74  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e78  ab0100f0  lui r3, 983040
000e7c  1f020ff8  addli r4, r30, -1024
000e80  97b0d202  sll.d r[2:3], r[6:7], r13
000e84  e342afeb  loadli.w r5,  -2604(r30)
000e88  97113a00  or r3, r20, r3
000e8c  1f62e200  addli r4, r4, 118
000e90  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000e94  b3920228  sext_int2long r[6:7], r5
000e98  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e9c  ab0100f0  lui r3, 983040
000ea0  1f020ff8  addli r4, r30, -1024
000ea4  97b0d202  sll.d r[2:3], r[6:7], r13
000ea8  e302bfeb  loadli.w r5,  -2600(r30)
000eac  97113a00  or r3, r20, r3
000eb0  1f02f200  addli r4, r4, 120
000eb4  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000eb8  b3920228  sext_int2long r[6:7], r5
000ebc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ec0  ab0100f0  lui r3, 983040
000ec4  1f020ff8  addli r4, r30, -1024
000ec8  97b0d202  sll.d r[2:3], r[6:7], r13
000ecc  e342bfeb  loadli.w r5,  -2596(r30)
000ed0  97113a00  or r3, r20, r3
000ed4  1f22f200  addli r4, r4, 122
000ed8  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000edc  b3920228  sext_int2long r[6:7], r5
000ee0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ee4  ab0100f0  lui r3, 983040
000ee8  1f020ff8  addli r4, r30, -1024
000eec  97b0d202  sll.d r[2:3], r[6:7], r13
000ef0  e302cfeb  loadli.w r5,  -2592(r30)
000ef4  97113a00  or r3, r20, r3
000ef8  1f42f200  addli r4, r4, 124
000efc  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000f00  b3920228  sext_int2long r[6:7], r5
000f04  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f08  ab0100f0  lui r3, 983040
000f0c  1f020ff8  addli r4, r30, -1024
000f10  97b0d202  sll.d r[2:3], r[6:7], r13
000f14  e342cfeb  loadli.w r5,  -2588(r30)
000f18  97113a00  or r3, r20, r3
000f1c  1f62f200  addli r4, r4, 126
000f20  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000f24  b3920228  sext_int2long r[6:7], r5
000f28  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f2c  6302dfeb  loadli.w r4,  -2584(r30)
000f30  ab0100f0  lui r3, 983040
000f34  97b0d202  sll.d r[2:3], r[6:7], r13
000f38  6303dfed  loadli.w r6,  -2328(r30)
000f3c  97113a00  or r3, r20, r3
000f40  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000f44  33120228  sext_int2long r[5:6], r4
000f48  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
000f4c  9730d202  sll.d r[2:3], r[5:6], r13
000f50  e342dfeb  loadli.w r5,  -2580(r30)
000f54  ab0100f0  lui r3, 983040
000f58  1f020ff8  addli r4, r30, -1024
000f5c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000f60  97113a00  or r3, r20, r3
000f64  1f220201  addli r4, r4, 130
000f68  b3920228  sext_int2long r[6:7], r5
000f6c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f70  ab0100f0  lui r3, 983040
000f74  1f020ff8  addli r4, r30, -1024
000f78  97b0d202  sll.d r[2:3], r[6:7], r13
000f7c  e302efeb  loadli.w r5,  -2576(r30)
000f80  97113a00  or r3, r20, r3
000f84  1f420201  addli r4, r4, 132
000f88  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000f8c  b3920228  sext_int2long r[6:7], r5
000f90  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f94  ab0100f0  lui r3, 983040
000f98  1f020ff8  addli r4, r30, -1024
000f9c  97b0d202  sll.d r[2:3], r[6:7], r13
000fa0  e342efeb  loadli.w r5,  -2572(r30)
000fa4  97113a00  or r3, r20, r3
000fa8  1f620201  addli r4, r4, 134
000fac  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000fb0  b3920228  sext_int2long r[6:7], r5
000fb4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000fb8  ab0100f0  lui r3, 983040
000fbc  1f020ff8  addli r4, r30, -1024
000fc0  97b0d202  sll.d r[2:3], r[6:7], r13
000fc4  e302ffeb  loadli.w r5,  -2568(r30)
000fc8  97113a00  or r3, r20, r3
000fcc  1f021201  addli r4, r4, 136
000fd0  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000fd4  b3920228  sext_int2long r[6:7], r5
000fd8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000fdc  ab0100f0  lui r3, 983040
000fe0  1f020ff8  addli r4, r30, -1024
000fe4  97b0d202  sll.d r[2:3], r[6:7], r13
000fe8  e342ffeb  loadli.w r5,  -2564(r30)
000fec  97113a00  or r3, r20, r3
000ff0  1f221201  addli r4, r4, 138
000ff4  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000ff8  b3920228  sext_int2long r[6:7], r5
000ffc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001000  ab0100f0  lui r3, 983040
001004  1f020ff8  addli r4, r30, -1024
001008  97b0d202  sll.d r[2:3], r[6:7], r13
00100c  e3020fec  loadli.w r5,  -2560(r30)
001010  97113a00  or r3, r20, r3
001014  1f421201  addli r4, r4, 140
001018  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
00101c  b3920228  sext_int2long r[6:7], r5
001020  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001024  ab0100f0  lui r3, 983040
001028  1f020ff8  addli r4, r30, -1024
00102c  97b0d202  sll.d r[2:3], r[6:7], r13
001030  e3420fec  loadli.w r5,  -2556(r30)
001034  97113a00  or r3, r20, r3
001038  1f621201  addli r4, r4, 142
00103c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001040  b3920228  sext_int2long r[6:7], r5
001044  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001048  ab0100f0  lui r3, 983040
00104c  1f020ff8  addli r4, r30, -1024
001050  97b0d202  sll.d r[2:3], r[6:7], r13
001054  e3021fec  loadli.w r5,  -2552(r30)
001058  97113a00  or r3, r20, r3
00105c  1f022201  addli r4, r4, 144
001060  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001064  b3920228  sext_int2long r[6:7], r5
001068  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00106c  ab0100f0  lui r3, 983040
001070  1f020ff8  addli r4, r30, -1024
001074  97b0d202  sll.d r[2:3], r[6:7], r13
001078  e3421fec  loadli.w r5,  -2548(r30)
00107c  97113a00  or r3, r20, r3
001080  1f222201  addli r4, r4, 146
001084  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001088  b3920228  sext_int2long r[6:7], r5
00108c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001090  ab0100f0  lui r3, 983040
001094  1f020ff8  addli r4, r30, -1024
001098  97b0d202  sll.d r[2:3], r[6:7], r13
00109c  e3022fec  loadli.w r5,  -2544(r30)
0010a0  97113a00  or r3, r20, r3
0010a4  1f422201  addli r4, r4, 148
0010a8  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0010ac  b3920228  sext_int2long r[6:7], r5
0010b0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010b4  ab0100f0  lui r3, 983040
0010b8  1f020ff8  addli r4, r30, -1024
0010bc  97b0d202  sll.d r[2:3], r[6:7], r13
0010c0  e3422fec  loadli.w r5,  -2540(r30)
0010c4  97113a00  or r3, r20, r3
0010c8  1f622201  addli r4, r4, 150
0010cc  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0010d0  b3920228  sext_int2long r[6:7], r5
0010d4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010d8  ab0100f0  lui r3, 983040
0010dc  1f020ff8  addli r4, r30, -1024
0010e0  97b0d202  sll.d r[2:3], r[6:7], r13
0010e4  e3023fec  loadli.w r5,  -2536(r30)
0010e8  97113a00  or r3, r20, r3
0010ec  1f023201  addli r4, r4, 152
0010f0  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0010f4  b3920228  sext_int2long r[6:7], r5
0010f8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010fc  ab0100f0  lui r3, 983040
001100  1f020ff8  addli r4, r30, -1024
001104  97b0d202  sll.d r[2:3], r[6:7], r13
001108  e3423fec  loadli.w r5,  -2532(r30)
00110c  97113a00  or r3, r20, r3
001110  1f223201  addli r4, r4, 154
001114  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001118  b3920228  sext_int2long r[6:7], r5
00111c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001120  ab0100f0  lui r3, 983040
001124  1f020ff8  addli r4, r30, -1024
001128  97b0d202  sll.d r[2:3], r[6:7], r13
00112c  e3024fec  loadli.w r5,  -2528(r30)
001130  97113a00  or r3, r20, r3
001134  1f423201  addli r4, r4, 156
001138  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
00113c  b3920228  sext_int2long r[6:7], r5
001140  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001144  ab0100f0  lui r3, 983040
001148  1f020ff8  addli r4, r30, -1024
00114c  97b0d202  sll.d r[2:3], r[6:7], r13
001150  e3424fec  loadli.w r5,  -2524(r30)
001154  97113a00  or r3, r20, r3
001158  1f623201  addli r4, r4, 158
00115c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001160  b3920228  sext_int2long r[6:7], r5
001164  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001168  ab0100f0  lui r3, 983040
00116c  1f020ff8  addli r4, r30, -1024
001170  97b0d202  sll.d r[2:3], r[6:7], r13
001174  e3025fec  loadli.w r5,  -2520(r30)
001178  97113a00  or r3, r20, r3
00117c  1f024201  addli r4, r4, 160
001180  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001184  b3920228  sext_int2long r[6:7], r5
001188  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00118c  ab0100f0  lui r3, 983040
001190  1f020ff8  addli r4, r30, -1024
001194  97b0d202  sll.d r[2:3], r[6:7], r13
001198  e3425fec  loadli.w r5,  -2516(r30)
00119c  97113a00  or r3, r20, r3
0011a0  1f224201  addli r4, r4, 162
0011a4  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0011a8  b3920228  sext_int2long r[6:7], r5
0011ac  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011b0  ab0100f0  lui r3, 983040
0011b4  1f020ff8  addli r4, r30, -1024
0011b8  97b0d202  sll.d r[2:3], r[6:7], r13
0011bc  e3026fec  loadli.w r5,  -2512(r30)
0011c0  97113a00  or r3, r20, r3
0011c4  1f424201  addli r4, r4, 164
0011c8  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0011cc  b3920228  sext_int2long r[6:7], r5
0011d0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011d4  ab0100f0  lui r3, 983040
0011d8  1f020ff8  addli r4, r30, -1024
0011dc  97b0d202  sll.d r[2:3], r[6:7], r13
0011e0  e3426fec  loadli.w r5,  -2508(r30)
0011e4  97113a00  or r3, r20, r3
0011e8  1f624201  addli r4, r4, 166
0011ec  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0011f0  b3920228  sext_int2long r[6:7], r5
0011f4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011f8  ab0100f0  lui r3, 983040
0011fc  1f020ff8  addli r4, r30, -1024
001200  97b0d202  sll.d r[2:3], r[6:7], r13
001204  e3027fec  loadli.w r5,  -2504(r30)
001208  97113a00  or r3, r20, r3
00120c  1f025201  addli r4, r4, 168
001210  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001214  b3920228  sext_int2long r[6:7], r5
001218  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00121c  ab0100f0  lui r3, 983040
001220  1f020ff8  addli r4, r30, -1024
001224  97b0d202  sll.d r[2:3], r[6:7], r13
001228  e3427fec  loadli.w r5,  -2500(r30)
00122c  97113a00  or r3, r20, r3
001230  1f225201  addli r4, r4, 170
001234  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001238  b3920228  sext_int2long r[6:7], r5
00123c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001240  ab0100f0  lui r3, 983040
001244  1f020ff8  addli r4, r30, -1024
001248  97b0d202  sll.d r[2:3], r[6:7], r13
00124c  e3028fec  loadli.w r5,  -2496(r30)
001250  97113a00  or r3, r20, r3
001254  1f425201  addli r4, r4, 172
001258  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
00125c  b3920228  sext_int2long r[6:7], r5
001260  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001264  ab0100f0  lui r3, 983040
001268  1f020ff8  addli r4, r30, -1024
00126c  97b0d202  sll.d r[2:3], r[6:7], r13
001270  e3428fec  loadli.w r5,  -2492(r30)
001274  97113a00  or r3, r20, r3
001278  1f625201  addli r4, r4, 174
00127c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001280  b3920228  sext_int2long r[6:7], r5
001284  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001288  ab0100f0  lui r3, 983040
00128c  1f020ff8  addli r4, r30, -1024
001290  97b0d202  sll.d r[2:3], r[6:7], r13
001294  e3029fec  loadli.w r5,  -2488(r30)
001298  97113a00  or r3, r20, r3
00129c  1f026201  addli r4, r4, 176
0012a0  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0012a4  b3920228  sext_int2long r[6:7], r5
0012a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012ac  ab0100f0  lui r3, 983040
0012b0  1f020ff8  addli r4, r30, -1024
0012b4  97b0d202  sll.d r[2:3], r[6:7], r13
0012b8  e3429fec  loadli.w r5,  -2484(r30)
0012bc  97113a00  or r3, r20, r3
0012c0  1f226201  addli r4, r4, 178
0012c4  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0012c8  b3920228  sext_int2long r[6:7], r5
0012cc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012d0  ab0100f0  lui r3, 983040
0012d4  1f020ff8  addli r4, r30, -1024
0012d8  97b0d202  sll.d r[2:3], r[6:7], r13
0012dc  e302afec  loadli.w r5,  -2480(r30)
0012e0  97113a00  or r3, r20, r3
0012e4  1f426201  addli r4, r4, 180
0012e8  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0012ec  b3920228  sext_int2long r[6:7], r5
0012f0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012f4  ab0100f0  lui r3, 983040
0012f8  1f020ff8  addli r4, r30, -1024
0012fc  97b0d202  sll.d r[2:3], r[6:7], r13
001300  e342afec  loadli.w r5,  -2476(r30)
001304  97113a00  or r3, r20, r3
001308  1f626201  addli r4, r4, 182
00130c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001310  b3920228  sext_int2long r[6:7], r5
001314  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001318  ab0100f0  lui r3, 983040
00131c  1f020ff8  addli r4, r30, -1024
001320  97b0d202  sll.d r[2:3], r[6:7], r13
001324  e302bfec  loadli.w r5,  -2472(r30)
001328  97113a00  or r3, r20, r3
00132c  1f027201  addli r4, r4, 184
001330  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001334  b3920228  sext_int2long r[6:7], r5
001338  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00133c  ab0100f0  lui r3, 983040
001340  1f020ff8  addli r4, r30, -1024
001344  97b0d202  sll.d r[2:3], r[6:7], r13
001348  e342bfec  loadli.w r5,  -2468(r30)
00134c  97113a00  or r3, r20, r3
001350  1f227201  addli r4, r4, 186
001354  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001358  b3920228  sext_int2long r[6:7], r5
00135c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001360  ab0100f0  lui r3, 983040
001364  1f020ff8  addli r4, r30, -1024
001368  97b0d202  sll.d r[2:3], r[6:7], r13
00136c  e302cfec  loadli.w r5,  -2464(r30)
001370  97113a00  or r3, r20, r3
001374  1f427201  addli r4, r4, 188
001378  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
00137c  b3920228  sext_int2long r[6:7], r5
001380  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001384  ab0100f0  lui r3, 983040
001388  1f020ff8  addli r4, r30, -1024
00138c  97b0d202  sll.d r[2:3], r[6:7], r13
001390  e342cfec  loadli.w r5,  -2460(r30)
001394  97113a00  or r3, r20, r3
001398  1f627201  addli r4, r4, 190
00139c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0013a0  b3920228  sext_int2long r[6:7], r5
0013a4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0013a8  6302dfec  loadli.w r4,  -2456(r30)
0013ac  ab0100f0  lui r3, 983040
0013b0  97b0d202  sll.d r[2:3], r[6:7], r13
0013b4  6343dfed  loadli.w r6,  -2324(r30)
0013b8  97113a00  or r3, r20, r3
0013bc  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0013c0  33120228  sext_int2long r[5:6], r4
0013c4  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
0013c8  9730d202  sll.d r[2:3], r[5:6], r13
0013cc  e342dfec  loadli.w r5,  -2452(r30)
0013d0  ab0100f0  lui r3, 983040
0013d4  1f020ff8  addli r4, r30, -1024
0013d8  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0013dc  97113a00  or r3, r20, r3
0013e0  1f228201  addli r4, r4, 194
0013e4  b3920228  sext_int2long r[6:7], r5
0013e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0013ec  ab0100f0  lui r3, 983040
0013f0  1f020ff8  addli r4, r30, -1024
0013f4  97b0d202  sll.d r[2:3], r[6:7], r13
0013f8  e302efec  loadli.w r5,  -2448(r30)
0013fc  97113a00  or r3, r20, r3
001400  1f428201  addli r4, r4, 196
001404  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001408  b3920228  sext_int2long r[6:7], r5
00140c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001410  ab0100f0  lui r3, 983040
001414  1f020ff8  addli r4, r30, -1024
001418  97b0d202  sll.d r[2:3], r[6:7], r13
00141c  e342efec  loadli.w r5,  -2444(r30)
001420  97113a00  or r3, r20, r3
001424  1f628201  addli r4, r4, 198
001428  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
00142c  b3920228  sext_int2long r[6:7], r5
001430  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001434  ab0100f0  lui r3, 983040
001438  1f020ff8  addli r4, r30, -1024
00143c  97b0d202  sll.d r[2:3], r[6:7], r13
001440  e302ffec  loadli.w r5,  -2440(r30)
001444  97113a00  or r3, r20, r3
001448  1f029201  addli r4, r4, 200
00144c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001450  b3920228  sext_int2long r[6:7], r5
001454  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001458  6342ffec  loadli.w r4,  -2436(r30)
00145c  ab0100f0  lui r3, 983040
001460  97b0d202  sll.d r[2:3], r[6:7], r13
001464  1f030ff8  addli r6, r30, -1024
001468  97113a00  or r3, r20, r3
00146c  33120228  sext_int2long r[5:6], r4
001470  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001474  1f239301  addli r6, r6, 202
001478  1732d202  sll.d r[5:6], r[5:6], r13
00147c  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
001480  ab0100f0  lui r3, 983040
001484  8ba04a10  add.ul r[2:3], r[22:23], r[5:6]
001488  e3020fed  loadli.w r5,  -2432(r30)
00148c  1f020ff8  addli r4, r30, -1024
001490  97113a00  or r3, r20, r3
001494  1f429201  addli r4, r4, 204
001498  b3920228  sext_int2long r[6:7], r5
00149c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0014a0  97b1d202  sll.d r[4:5], r[6:7], r13
0014a4  9f02efed  addli r5, r30, -2320
0014a8  1f030ff8  addli r6, r30, -1024
0014ac  e3463fed  loadli.w r13,  -2404(r30)
0014b0  ebd00200  load.d r[2:3], 0(r5)
0014b4  ab0200f0  lui r5, 983040
0014b8  8ba13a10  add.ul r[4:5], r[22:23], r[4:5]
0014bc  1f639301  addli r6, r6, 206
0014c0  b3960628  sext_int2long r[14:15], r13
0014c4  97125a00  or r5, r20, r5
0014c8  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0014cc  ffb26100  s_lm2gm r5, r6, 0(r[4:5])
0014d0  e3011fed  loadli.w r3,  -2424(r30)
0014d4  97b22303  sll.d r[6:7], r[8:9], r18
0014d8  ab0300f0  lui r7, 983040
0014dc  1f040ff8  addli r8, r30, -1024
0014e0  8ba25a10  add.ul r[6:7], r[22:23], r[6:7]
0014e4  1f04a401  addli r8, r8, 208
0014e8  97137a00  or r7, r20, r7
0014ec  b3910128  sext_int2long r[4:5], r3
0014f0  ffb38200  s_lm2gm r7, r8, 0(r[6:7])
0014f4  97b32403  sll.d r[8:9], r[10:11], r18
0014f8  ab0400f0  lui r9, 983040
0014fc  1f050ff8  addli r10, r30, -1024
001500  e3022fed  loadli.w r5,  -2416(r30)
001504  97b12103  sll.d r[4:5], r[4:5], r18
001508  1f25a501  addli r10, r10, 210
00150c  97149a00  or r9, r20, r9
001510  8ba37a10  add.ul r[8:9], r[22:23], r[8:9]
001514  8ba13a10  add.ul r[4:5], r[22:23], r[4:5]
001518  b3920228  sext_int2long r[6:7], r5
00151c  ffb4a100  s_lm2gm r9, r10, 0(r[4:5])
001520  97b42503  sll.d r[10:11], r[12:13], r18
001524  ab0500f0  lui r11, 983040
001528  1f060ff8  addli r12, r30, -1024
00152c  97b22203  sll.d r[6:7], r[6:7], r18
001530  e3013fed  loadli.w r3,  -2408(r30)
001534  1f46a601  addli r12, r12, 212
001538  9715ba00  or r11, r20, r11
00153c  8ba25a10  add.ul r[6:7], r[22:23], r[6:7]
001540  8ba49a10  add.ul r[10:11], r[22:23], r[10:11]
001544  b3910128  sext_int2long r[4:5], r3
001548  ffb5c300  s_lm2gm r11, r12, 0(r[8:9])
00154c  e3034fed  loadli.w r7,  -2400(r30)
001550  97b52603  sll.d r[12:13], r[14:15], r18
001554  97b12103  sll.d r[4:5], r[4:5], r18
001558  8ba6ba10  add.ul r[14:15], r[22:23], r[12:13]
00155c  e3454fed  loadli.w r11,  -2396(r30)
001560  b3930328  sext_int2long r[8:9], r7
001564  8ba13a10  add.ul r[4:5], r[22:23], r[4:5]
001568  97b32303  sll.d r[8:9], r[8:9], r18
00156c  b3950528  sext_int2long r[12:13], r11
001570  8ba77a10  add.ul r[16:17], r[22:23], r[8:9]
001574  ab0300f0  lui r7, 983040
001578  1f040ff8  addli r8, r30, -1024
00157c  1f64a401  addli r8, r8, 214
001580  97137a00  or r7, r20, r7
001584  ffb38200  s_lm2gm r7, r8, 0(r[6:7])
001588  e3025fed  loadli.w r5,  -2392(r30)
00158c  97b32503  sll.d r[8:9], r[12:13], r18
001590  8bab7a10  add.ul r[24:25], r[22:23], r[8:9]
001594  e3435fed  loadli.w r7,  -2388(r30)
001598  b3920228  sext_int2long r[6:7], r5
00159c  97b22203  sll.d r[6:7], r[6:7], r18
0015a0  b3930328  sext_int2long r[8:9], r7
0015a4  8bad5a10  add.ul r[28:29], r[22:23], r[6:7]
0015a8  ab0200f0  lui r5, 983040
0015ac  1f030ff8  addli r6, r30, -1024
0015b0  97b32303  sll.d r[8:9], r[8:9], r18
0015b4  1f03b301  addli r6, r6, 216
0015b8  97125a00  or r5, r20, r5
0015bc  8bac7a10  add.ul r[26:27], r[22:23], r[8:9]
0015c0  ab0300f0  lui r7, 983040
0015c4  1f040ff8  addli r8, r30, -1024
0015c8  ffb26400  s_lm2gm r5, r6, 0(r[10:11])
0015cc  e3026fed  loadli.w r5,  -2384(r30)
0015d0  1f24b401  addli r8, r8, 218
0015d4  97137a00  or r7, r20, r7
0015d8  ffb38100  s_lm2gm r7, r8, 0(r[4:5])
0015dc  e3017fed  loadli.w r3,  -2376(r30)
0015e0  9f037fee  addli r7, r30, -2248
0015e4  b3920228  sext_int2long r[6:7], r5
0015e8  97b22203  sll.d r[6:7], r[6:7], r18
0015ec  b3910128  sext_int2long r[4:5], r3
0015f0  8ba45a10  add.ul r[10:11], r[22:23], r[6:7]
0015f4  e3426fed  loadli.w r5,  -2380(r30)
0015f8  97b12103  sll.d r[4:5], r[4:5], r18
0015fc  8ba53a10  add.ul r[12:13], r[22:23], r[4:5]
001600  b3920228  sext_int2long r[6:7], r5
001604  97b22203  sll.d r[6:7], r[6:7], r18
001608  8ba25a10  add.ul r[6:7], r[22:23], r[6:7]
00160c  73b05300  store.d r[6:7], 0(r7)
001610  e3427fed  loadli.w r5,  -2372(r30)
001614  b3920228  sext_int2long r[6:7], r5
001618  97b12203  sll.d r[4:5], r[6:7], r18
00161c  ab0200f0  lui r5, 983040
001620  1f030ff8  addli r6, r30, -1024
001624  9f43b301  addli r7, r6, 220
001628  17145a00  or r8, r20, r5
00162c  8ba13a10  add.ul r[4:5], r[22:23], r[4:5]
001630  9f020fef  addli r5, r30, -2176
001634  1f038fee  addli r6, r30, -2240
001638  73b03200  store.d r[4:5], 0(r5)
00163c  e3418fed  loadli.w r3,  -2364(r30)
001640  7fb47600  s_lm2gm r8, r7, 0(r[14:15])
001644  e3038fed  loadli.w r7,  -2368(r30)
001648  9f02efef  addli r5, r30, -2064
00164c  b3910128  sext_int2long r[4:5], r3
001650  b3930328  sext_int2long r[8:9], r7
001654  97b12103  sll.d r[4:5], r[4:5], r18
001658  97b32303  sll.d r[8:9], r[8:9], r18
00165c  8ba63a10  add.ul r[14:15], r[22:23], r[4:5]
001660  8ba17a10  add.ul r[4:5], r[22:23], r[8:9]
001664  73b03200  store.d r[4:5], 0(r5)
001668  e3019fed  loadli.w r3,  -2360(r30)
00166c  9f120000  addli r5, zero, 1
001670  b3930128  sext_int2long r[8:9], r3
001674  97b32303  sll.d r[8:9], r[8:9], r18
001678  8ba17a10  add.ul r[4:5], r[22:23], r[8:9]
00167c  9f030ff8  addli r7, r30, -1024
001680  ffb87000  s_lm2gm r17, r7, 0(r[2:3])
001684  ab0800f0  lui r17, 983040
001688  1fe9b301  addli r18, r7, 222
00168c  e303afed  loadli.w r7,  -2352(r30)
001690  73303300  store.d r[4:5], 0(r6)
001694  a7810a00  addli.d r[4:5], r[22:23], 0
001698  e3409fed  loadli.w r1,  -2356(r30)
00169c  1f030ff8  addli r6, r30, -1024
0016a0  97181a01  or r17, r20, r17
0016a4  1f03e301  addli r6, r6, 240
0016a8  b3900028  sext_int2long r[2:3], r1
0016ac  ffb82701  s_lm2gm r17, r18, 0(r[16:17])
0016b0  b3970328  sext_int2long r[16:17], r7
0016b4  9f030ff8  addli r7, r30, -1024
0016b8  ab0800f0  lui r17, 983040
0016bc  97b05002  sll.d r[2:3], r[2:3], r5
0016c0  1f89c301  addli r18, r7, 224
0016c4  e343afed  loadli.w r7,  -2348(r30)
0016c8  97181a01  or r17, r20, r17
0016cc  97b75702  sll.d r[16:17], r[16:17], r5
0016d0  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
0016d4  ffb82b01  s_lm2gm r17, r18, 0(r[24:25])
0016d8  ab0b00f0  lui r23, 983040
0016dc  8ba7f110  add.ul r[16:17], r[4:5], r[16:17]
0016e0  b3980328  sext_int2long r[18:19], r7
0016e4  9f030ff8  addli r7, r30, -1024
0016e8  971b7a01  or r23, r20, r23
0016ec  1facc301  addli r24, r7, 226
0016f0  e303bfed  loadli.w r7,  -2344(r30)
0016f4  97b85802  sll.d r[18:19], r[18:19], r5
0016f8  ffbb8d01  s_lm2gm r23, r24, 0(r[28:29])
0016fc  b39b0328  sext_int2long r[24:25], r7
001700  8ba31111  add.ul r[8:9], r[4:5], r[18:19]
001704  97b85b02  sll.d r[18:19], r[24:25], r5
001708  ab0b00f0  lui r23, 983040
00170c  1f0c0ff8  addli r24, r30, -1024
001710  9f4dcc01  addli r27, r24, 228
001714  171e7a01  or r28, r20, r23
001718  8bab1111  add.ul r[24:25], r[4:5], r[18:19]
00171c  ab0800f0  lui r17, 983040
001720  1f090ff8  addli r18, r30, -1024
001724  1f69c901  addli r18, r18, 230
001728  97181a01  or r17, r20, r17
00172c  7fbebc01  s_lm2gm r28, r27, 0(r[26:27])
001730  b39c0928  sext_int2long r[26:27], r19
001734  ab0d00f0  lui r27, 983040
001738  9f090ff8  addli r19, r30, -1024
00173c  ffb82401  s_lm2gm r17, r18, 0(r[10:11])
001740  e308cfed  loadli.w r17,  -2336(r30)
001744  97ba5c02  sll.d r[22:23], r[26:27], r5
001748  1faed901  addli r28, r19, 234
00174c  971dba01  or r27, r20, r27
001750  ab0400f0  lui r9, 983040
001754  1f050ff8  addli r10, r30, -1024
001758  ffbdc501  s_lm2gm r27, r28, 0(r[12:13])
00175c  ab0500f0  lui r11, 983040
001760  1f060ff8  addli r12, r30, -1024
001764  8baa5111  add.ul r[22:23], r[4:5], r[22:23]
001768  1f45d501  addli r10, r10, 236
00176c  97149a00  or r9, r20, r9
001770  ab0d4000  lui r27, 1024
001774  b3980828  sext_int2long r[18:19], r17
001778  1f66d601  addli r12, r12, 238
00177c  9715ba00  or r11, r20, r11
001780  97b85802  sll.d r[18:19], r[18:19], r5
001784  9f027fee  addli r5, r30, -2248
001788  ffb5c600  s_lm2gm r11, r12, 0(r[14:15])
00178c  9f05efef  addli r11, r30, -2064
001790  8bac1111  add.ul r[26:27], r[4:5], r[18:19]
001794  ab0800f0  lui r17, 983040
001798  1f090ff8  addli r18, r30, -1024
00179c  ebd10200  load.d r[4:5], 0(r5)
0017a0  9f020fef  addli r5, r30, -2176
0017a4  1f09d901  addli r18, r18, 232
0017a8  97181a01  or r17, r20, r17
0017ac  ffb82101  s_lm2gm r17, r18, 0(r[4:5])
0017b0  ebd10200  load.d r[4:5], 0(r5)
0017b4  ab0200f0  lui r5, 983040
0017b8  2b09807f  lui r18, 522240
0017bc  97125a00  or r5, r20, r5
0017c0  ffb4a100  s_lm2gm r9, r10, 0(r[4:5])
0017c4  ebd10500  load.d r[4:5], 0(r11)
0017c8  ab0400f0  lui r9, 983040
0017cc  1f050ff8  addli r10, r30, -1024
0017d0  1f25e501  addli r10, r10, 242
0017d4  97149a00  or r9, r20, r9
0017d8  ffb26100  s_lm2gm r5, r6, 0(r[4:5])
0017dc  9f028fee  addli r5, r30, -2240
0017e0  1f030ff8  addli r6, r30, -1024
0017e4  ebd10200  load.d r[4:5], 0(r5)
0017e8  ab0200f0  lui r5, 983040
0017ec  1f63e301  addli r6, r6, 246
0017f0  97125a00  or r5, r20, r5
0017f4  ffb4a100  s_lm2gm r9, r10, 0(r[4:5])
0017f8  ab0100f0  lui r3, 983040
0017fc  1f020ff8  addli r4, r30, -1024
001800  e304ffed  loadli.w r9,  -2312(r30)
001804  ffb26700  s_lm2gm r5, r6, 0(r[16:17])
001808  1f030ff8  addli r6, r30, -1024
00180c  1f42e201  addli r4, r4, 244
001810  97113a00  or r3, r20, r3
001814  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001818  ab0000f0  lui r1, 983040
00181c  1f010ff8  addli r2, r30, -1024
001820  ab0100f0  lui r3, 983040
001824  1f020ff8  addli r4, r30, -1024
001828  1f01f101  addli r2, r2, 248
00182c  97101a00  or r1, r20, r1
001830  1f22f201  addli r4, r4, 250
001834  97113a00  or r3, r20, r3
001838  ffb02300  s_lm2gm r1, r2, 0(r[8:9])
00183c  ab0000f0  lui r1, 983040
001840  ffb14b00  s_lm2gm r3, r4, 0(r[24:25])
001844  ab0100f0  lui r3, 983040
001848  1f41f301  addli r2, r6, 252
00184c  1f62f301  addli r4, r6, 254
001850  9f030002  addli r7, zero, 256
001854  97101a00  or r1, r20, r1
001858  97113a00  or r3, r20, r3
00185c  634affef  loadli.w r20,  -2052(r30)
001860  ffb02a00  s_lm2gm r1, r2, 0(r[22:23])
001864  e3009fe9  loadli.w r1,  -2872(r30)
001868  ffb14c00  s_lm2gm r3, r4, 0(r[26:27])
00186c  00a00000  mfence { lm }
001870  8b941410  add.s r9, r9, r1
001874  e340afe9  loadli.w r1,  -2860(r30)
001878  3fa01400  blt.s r9, r1, 8
00187c  5b9c0400  j 9440
001880  9f000000  addli r1, zero, 0
001884  0b111310  add.s r2, r6, r1
001888  9fc00000  addli r1, r1, 4
00188c  73100100  store.h zero, 0(r2)
001890  73110100  store.h zero, 2(r2)
001894  00a00000  mfence { lm }
001898  bbbf70fe  bneq r1, r7, -20
00189c  e3005f00  loadli.w r1,  40(r30)
0018a0  63414f00  loadli.w r2,  36(r30)
0018a4  9f120000  addli r5, zero, 1
0018a8  e70f9fec  storeli.w r9, -2312(r30)
0018ac  8b901430  div.s r1, r9, r1
0018b0  8b902030  div.s r1, r1, r2
0018b4  6301afe9  loadli.w r2,  -2864(r30)
0018b8  9bb03000  slli r1, r1, 3
0018bc  8b902010  add.s r1, r1, r2
0018c0  1bb1a000  slli r2, r1, 10
0018c4  670f1fee  storeli.w r1, -2064(r30)
0018c8  e3409fe9  loadli.w r1,  -2868(r30)
0018cc  67012fee  storeli.w r2, -2288(r30)
0018d0  8b101110  add.s r1, r2, r1
0018d4  2b0100f0  lui r2, 983040
0018d8  b3910028  sext_int2long r[4:5], r1
0018dc  17912300  or r2, r7, r2
0018e0  ab0000f0  lui r1, 983040
0018e4  17b45102  sll.d r[9:10], r[4:5], r5
0018e8  eb510f00  load.d r[4:5], 0(r30)
0018ec  9f02efed  addli r5, r30, -2320
0018f0  97901300  or r1, r7, r1
0018f4  73b08200  store.d r[9:10], 0(r5)
0018f8  8ba18110  add.ul r[4:5], r[4:5], r[9:10]
0018fc  7fa16100  l_gm2lm r2, r6, 0(r[4:5])
001900  1f02ffe8  addli r4, r30, -2952
001904  6b510200  load.d r[3:4], 0(r4)
001908  1f020ffa  addli r4, r30, -768
00190c  ff204100  l_gm2lm r1, r4, 0(r[3:4])
001910  9f000fef  addli r1, r30, -2176
001914  00a00000  mfence { lm }
001918  42110f82  vload_mask16.mz vr2{mr1}, 1024(r30)
00191c  c2138f82  vload_mask16.mz vr7{mr1}, 1088(r30)
001920  c2110f83  vload_mask16.mz vr3{mr1}, 1152(r30)
001924  c2108f83  vload_mask16.mz vr1{mr1}, 1216(r30)
001928  42140fa2  vload_mask16.mz vr8{mr1}, 1280(r30)
00192c  42138fa2  vload_mask16.mz vr6{mr1}, 1344(r30)
001930  c2120fa3  vload_mask16.mz vr5{mr1}, 1408(r30)
001934  42128fa3  vload_mask16.mz vr4{mr1}, 1472(r30)
001938  00a00000  mfence { lm }
00193c  e6c47580  vmerge_l.hf vr9, vr11, vr7
001940  66c56580  vmerge_l.hf vr10, vr11, vr6
001944  66c03580  vmerge_l.hf vr0, vr11, vr3
001948  e6c375a0  vmerge_h.hf vr7, vr11, vr7
00194c  66c365a0  vmerge_h.hf vr6, vr11, vr6
001950  e6c135a0  vmerge_h.hf vr3, vr11, vr3
001954  9694a402  vadd.f.mz.rn vr9{mr1}, vr9, vr10
001958  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00195c  66c02580  vmerge_l.hf vr0, vr11, vr2
001960  66c58580  vmerge_l.hf vr10, vr11, vr8
001964  66c125a0  vmerge_h.hf vr2, vr11, vr2
001968  66c485a0  vmerge_h.hf vr8, vr11, vr8
00196c  9f008fee  addli r1, r30, -2240
001970  16936302  vadd.f.mz.rn vr6{mr1}, vr7, vr6
001974  e6c34580  vmerge_l.hf vr7, vr11, vr4
001978  66c245a0  vmerge_h.hf vr4, vr11, vr4
00197c  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
001980  9f000fef  addli r1, r30, -2176
001984  1610a002  vadd.f.mz.rn vr0{mr1}, vr0, vr10
001988  16118102  vadd.f.mz.rn vr2{mr1}, vr2, vr8
00198c  66c51580  vmerge_l.hf vr10, vr11, vr1
001990  e6c015a0  vmerge_h.hf vr1, vr11, vr1
001994  66c45580  vmerge_l.hf vr8, vr11, vr5
001998  e6c255a0  vmerge_h.hf vr5, vr11, vr5
00199c  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0019a0  9f008fee  addli r1, r30, -2240
0019a4  46100fc2  vstore_mask16.mz vr0{mr1}, 1536(r30)
0019a8  46142fc2  vstore_mask16.mz vr2{mr1}, 1600(r30)
0019ac  96915102  vadd.f.mz.rn vr3{mr1}, vr3, vr5
0019b0  96127502  vadd.f.mz.rn vr5{mr1}, vr10, vr7
0019b4  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0019b8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0019bc  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
0019c0  46180fc2  vstore_mask16.mz vr0{mr1}, 1664(r30)
0019c4  461c6fc2  vstore_mask16.mz vr6{mr1}, 1728(r30)
0019c8  46108fe2  vstore_mask16.mz vr8{mr1}, 1792(r30)
0019cc  46143fe2  vstore_mask16.mz vr3{mr1}, 1856(r30)
0019d0  46185fe2  vstore_mask16.mz vr5{mr1}, 1920(r30)
0019d4  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
0019d8  00a00000  mfence { lm }
0019dc  e3000ffc  loadli.w r1,  -512(r30)
0019e0  63460ffc  loadli.w r12,  -508(r30)
0019e4  63021ffc  loadli.w r4,  -504(r30)
0019e8  63411ffc  loadli.w r2,  -500(r30)
0019ec  63042ffc  loadli.w r8,  -496(r30)
0019f0  63482ffc  loadli.w r16,  -492(r30)
0019f4  e3063ffc  loadli.w r13,  -488(r30)
0019f8  e3473ffc  loadli.w r15,  -484(r30)
0019fc  63074ffc  loadli.w r14,  -480(r30)
001a00  e3454ffc  loadli.w r11,  -476(r30)
001a04  63055ffc  loadli.w r10,  -472(r30)
001a08  e3445ffc  loadli.w r9,  -468(r30)
001a0c  e3036ffc  loadli.w r7,  -464(r30)
001a10  63436ffc  loadli.w r6,  -460(r30)
001a14  e3027ffc  loadli.w r5,  -456(r30)
001a18  e3417ffc  loadli.w r3,  -452(r30)
001a1c  e3088ffc  loadli.w r17,  -448(r30)
001a20  e3488ffc  loadli.w r17,  -444(r30)
001a24  e3089ffc  loadli.w r17,  -440(r30)
001a28  e3489ffc  loadli.w r17,  -436(r30)
001a2c  e308affc  loadli.w r17,  -432(r30)
001a30  e348affc  loadli.w r17,  -428(r30)
001a34  e308bffc  loadli.w r17,  -424(r30)
001a38  e348bffc  loadli.w r17,  -420(r30)
001a3c  e308cffc  loadli.w r17,  -416(r30)
001a40  e348cffc  loadli.w r17,  -412(r30)
001a44  e308dffc  loadli.w r17,  -408(r30)
001a48  e348dffc  loadli.w r17,  -404(r30)
001a4c  e308effc  loadli.w r17,  -400(r30)
001a50  e348effc  loadli.w r17,  -396(r30)
001a54  e308fffc  loadli.w r17,  -392(r30)
001a58  e348fffc  loadli.w r17,  -388(r30)
001a5c  e3080ffd  loadli.w r17,  -384(r30)
001a60  e3480ffd  loadli.w r17,  -380(r30)
001a64  e3081ffd  loadli.w r17,  -376(r30)
001a68  e3481ffd  loadli.w r17,  -372(r30)
001a6c  e3082ffd  loadli.w r17,  -368(r30)
001a70  e3482ffd  loadli.w r17,  -364(r30)
001a74  e3083ffd  loadli.w r17,  -360(r30)
001a78  e3483ffd  loadli.w r17,  -356(r30)
001a7c  e3084ffd  loadli.w r17,  -352(r30)
001a80  e3484ffd  loadli.w r17,  -348(r30)
001a84  e3085ffd  loadli.w r17,  -344(r30)
001a88  e3485ffd  loadli.w r17,  -340(r30)
001a8c  e3086ffd  loadli.w r17,  -336(r30)
001a90  e3486ffd  loadli.w r17,  -332(r30)
001a94  e3087ffd  loadli.w r17,  -328(r30)
001a98  e3487ffd  loadli.w r17,  -324(r30)
001a9c  e3088ffd  loadli.w r17,  -320(r30)
001aa0  e3488ffd  loadli.w r17,  -316(r30)
001aa4  e3089ffd  loadli.w r17,  -312(r30)
001aa8  e3489ffd  loadli.w r17,  -308(r30)
001aac  e308affd  loadli.w r17,  -304(r30)
001ab0  e348affd  loadli.w r17,  -300(r30)
001ab4  e308bffd  loadli.w r17,  -296(r30)
001ab8  e348bffd  loadli.w r17,  -292(r30)
001abc  e308cffd  loadli.w r17,  -288(r30)
001ac0  e348cffd  loadli.w r17,  -284(r30)
001ac4  e308dffd  loadli.w r17,  -280(r30)
001ac8  e348dffd  loadli.w r17,  -276(r30)
001acc  e308effd  loadli.w r17,  -272(r30)
001ad0  e348effd  loadli.w r17,  -268(r30)
001ad4  e308fffd  loadli.w r17,  -264(r30)
001ad8  e348fffd  loadli.w r17,  -260(r30)
001adc  e3080ffe  loadli.w r17,  -256(r30)
001ae0  e3480ffe  loadli.w r17,  -252(r30)
001ae4  e3081ffe  loadli.w r17,  -248(r30)
001ae8  e3481ffe  loadli.w r17,  -244(r30)
001aec  e3082ffe  loadli.w r17,  -240(r30)
001af0  e3482ffe  loadli.w r17,  -236(r30)
001af4  e3083ffe  loadli.w r17,  -232(r30)
001af8  e3483ffe  loadli.w r17,  -228(r30)
001afc  e3084ffe  loadli.w r17,  -224(r30)
001b00  e3484ffe  loadli.w r17,  -220(r30)
001b04  e3085ffe  loadli.w r17,  -216(r30)
001b08  e3485ffe  loadli.w r17,  -212(r30)
001b0c  e3086ffe  loadli.w r17,  -208(r30)
001b10  e3486ffe  loadli.w r17,  -204(r30)
001b14  e3087ffe  loadli.w r17,  -200(r30)
001b18  e3487ffe  loadli.w r17,  -196(r30)
001b1c  e3088ffe  loadli.w r17,  -192(r30)
001b20  e3488ffe  loadli.w r17,  -188(r30)
001b24  e3089ffe  loadli.w r17,  -184(r30)
001b28  e3489ffe  loadli.w r17,  -180(r30)
001b2c  e308affe  loadli.w r17,  -176(r30)
001b30  e348affe  loadli.w r17,  -172(r30)
001b34  e308bffe  loadli.w r17,  -168(r30)
001b38  e348bffe  loadli.w r17,  -164(r30)
001b3c  e308cffe  loadli.w r17,  -160(r30)
001b40  e348cffe  loadli.w r17,  -156(r30)
001b44  e308dffe  loadli.w r17,  -152(r30)
001b48  e348dffe  loadli.w r17,  -148(r30)
001b4c  e308effe  loadli.w r17,  -144(r30)
001b50  e348effe  loadli.w r17,  -140(r30)
001b54  e308fffe  loadli.w r17,  -136(r30)
001b58  e348fffe  loadli.w r17,  -132(r30)
001b5c  e3080fff  loadli.w r17,  -128(r30)
001b60  e3480fff  loadli.w r17,  -124(r30)
001b64  e3081fff  loadli.w r17,  -120(r30)
001b68  e3481fff  loadli.w r17,  -116(r30)
001b6c  e3082fff  loadli.w r17,  -112(r30)
001b70  e3482fff  loadli.w r17,  -108(r30)
001b74  e3083fff  loadli.w r17,  -104(r30)
001b78  e3483fff  loadli.w r17,  -100(r30)
001b7c  e3084fff  loadli.w r17,  -96(r30)
001b80  e3484fff  loadli.w r17,  -92(r30)
001b84  e3085fff  loadli.w r17,  -88(r30)
001b88  e3485fff  loadli.w r17,  -84(r30)
001b8c  e3086fff  loadli.w r17,  -80(r30)
001b90  e3486fff  loadli.w r17,  -76(r30)
001b94  e3087fff  loadli.w r17,  -72(r30)
001b98  e3487fff  loadli.w r17,  -68(r30)
001b9c  e3088fff  loadli.w r17,  -64(r30)
001ba0  e3488fff  loadli.w r17,  -60(r30)
001ba4  e3089fff  loadli.w r17,  -56(r30)
001ba8  e3489fff  loadli.w r17,  -52(r30)
001bac  e308afff  loadli.w r17,  -48(r30)
001bb0  e348afff  loadli.w r17,  -44(r30)
001bb4  e308bfff  loadli.w r17,  -40(r30)
001bb8  e348bfff  loadli.w r17,  -36(r30)
001bbc  e308cfff  loadli.w r17,  -32(r30)
001bc0  e348cfff  loadli.w r17,  -28(r30)
001bc4  e309dfff  loadli.w r19,  -24(r30)
001bc8  e349dfff  loadli.w r19,  -20(r30)
001bcc  e309efff  loadli.w r19,  -16(r30)
001bd0  e349efff  loadli.w r19,  -12(r30)
001bd4  e309ffff  loadli.w r19,  -8(r30)
001bd8  e349ffff  loadli.w r19,  -4(r30)
001bdc  97884001  and r17, r1, r20
001be0  93081905  setlt.u r17, r18, r17
001be4  3bf00800  bneq r17, zero, 28
001be8  9bc80001  srli r17, r1, 16
001bec  9b881800  andi r17, r17, 1
001bf0  8b901011  add.s r1, r1, r17
001bf4  e308ffef  loadli.w r17,  -2056(r30)
001bf8  8b901011  add.s r1, r1, r17
001bfc  5b010000  j 8
001c00  9790b001  or r1, r1, r27
001c04  97084601  and r17, r12, r20
001c08  93081905  setlt.u r17, r18, r17
001c0c  3bf00800  bneq r17, zero, 28
001c10  9b480601  srli r17, r12, 16
001c14  9b881800  andi r17, r17, 1
001c18  0b161611  add.s r12, r12, r17
001c1c  e308ffef  loadli.w r17,  -2056(r30)
001c20  0b161611  add.s r12, r12, r17
001c24  5b010000  j 8
001c28  1716b601  or r12, r12, r27
001c2c  97084201  and r17, r4, r20
001c30  93081905  setlt.u r17, r18, r17
001c34  3bf00800  bneq r17, zero, 28
001c38  9b480201  srli r17, r4, 16
001c3c  9b881800  andi r17, r17, 1
001c40  0b121211  add.s r4, r4, r17
001c44  e308ffef  loadli.w r17,  -2056(r30)
001c48  0b121211  add.s r4, r4, r17
001c4c  5b010000  j 8
001c50  1712b201  or r4, r4, r27
001c54  97084101  and r17, r2, r20
001c58  93081905  setlt.u r17, r18, r17
001c5c  3bf00800  bneq r17, zero, 28
001c60  9b480101  srli r17, r2, 16
001c64  9b881800  andi r17, r17, 1
001c68  0b111111  add.s r2, r2, r17
001c6c  e308ffef  loadli.w r17,  -2056(r30)
001c70  0b111111  add.s r2, r2, r17
001c74  5b010000  j 8
001c78  1711b101  or r2, r2, r27
001c7c  97084401  and r17, r8, r20
001c80  93081905  setlt.u r17, r18, r17
001c84  3bf00800  bneq r17, zero, 28
001c88  9b480401  srli r17, r8, 16
001c8c  9b881800  andi r17, r17, 1
001c90  0b141411  add.s r8, r8, r17
001c94  e308ffef  loadli.w r17,  -2056(r30)
001c98  0b141411  add.s r8, r8, r17
001c9c  5b010000  j 8
001ca0  1714b401  or r8, r8, r27
001ca4  97084801  and r17, r16, r20
001ca8  93081905  setlt.u r17, r18, r17
001cac  3bf00800  bneq r17, zero, 28
001cb0  9b480801  srli r17, r16, 16
001cb4  9b881800  andi r17, r17, 1
001cb8  0b181811  add.s r16, r16, r17
001cbc  e308ffef  loadli.w r17,  -2056(r30)
001cc0  0b181811  add.s r16, r16, r17
001cc4  5b010000  j 8
001cc8  1718b801  or r16, r16, r27
001ccc  97884601  and r17, r13, r20
001cd0  93081905  setlt.u r17, r18, r17
001cd4  3bf00800  bneq r17, zero, 28
001cd8  9bc80601  srli r17, r13, 16
001cdc  9b881800  andi r17, r17, 1
001ce0  8b961611  add.s r13, r13, r17
001ce4  e308ffef  loadli.w r17,  -2056(r30)
001ce8  8b961611  add.s r13, r13, r17
001cec  5b010000  j 8
001cf0  9796b601  or r13, r13, r27
001cf4  97884701  and r17, r15, r20
001cf8  93081905  setlt.u r17, r18, r17
001cfc  3bf00800  bneq r17, zero, 28
001d00  9bc80701  srli r17, r15, 16
001d04  9b881800  andi r17, r17, 1
001d08  8b971711  add.s r15, r15, r17
001d0c  e308ffef  loadli.w r17,  -2056(r30)
001d10  8b971711  add.s r15, r15, r17
001d14  5b010000  j 8
001d18  9797b701  or r15, r15, r27
001d1c  97084701  and r17, r14, r20
001d20  93081905  setlt.u r17, r18, r17
001d24  3bf00800  bneq r17, zero, 28
001d28  9b480701  srli r17, r14, 16
001d2c  9b881800  andi r17, r17, 1
001d30  0b171711  add.s r14, r14, r17
001d34  e308ffef  loadli.w r17,  -2056(r30)
001d38  8b191711  add.s r19, r14, r17
001d3c  5b010000  j 8
001d40  9719b701  or r19, r14, r27
001d44  97884501  and r17, r11, r20
001d48  93081905  setlt.u r17, r18, r17
001d4c  3bf00800  bneq r17, zero, 28
001d50  9bc80501  srli r17, r11, 16
001d54  6307ffef  loadli.w r14,  -2056(r30)
001d58  9b881800  andi r17, r17, 1
001d5c  8b951511  add.s r11, r11, r17
001d60  8b95e510  add.s r11, r11, r14
001d64  5b010000  j 8
001d68  9795b501  or r11, r11, r27
001d6c  97084501  and r17, r10, r20
001d70  93081905  setlt.u r17, r18, r17
001d74  3bf00800  bneq r17, zero, 28
001d78  9b480501  srli r17, r10, 16
001d7c  6307ffef  loadli.w r14,  -2056(r30)
001d80  9b881800  andi r17, r17, 1
001d84  0b151511  add.s r10, r10, r17
001d88  0b15e510  add.s r10, r10, r14
001d8c  5b010000  j 8
001d90  1715b501  or r10, r10, r27
001d94  97884401  and r17, r9, r20
001d98  93081905  setlt.u r17, r18, r17
001d9c  3bf00800  bneq r17, zero, 28
001da0  9bc80401  srli r17, r9, 16
001da4  6307ffef  loadli.w r14,  -2056(r30)
001da8  9b881800  andi r17, r17, 1
001dac  8b941411  add.s r9, r9, r17
001db0  8b94e410  add.s r9, r9, r14
001db4  5b010000  j 8
001db8  9794b401  or r9, r9, r27
001dbc  97884301  and r17, r7, r20
001dc0  93081905  setlt.u r17, r18, r17
001dc4  3bf00800  bneq r17, zero, 28
001dc8  9bc80301  srli r17, r7, 16
001dcc  6307ffef  loadli.w r14,  -2056(r30)
001dd0  9b881800  andi r17, r17, 1
001dd4  8b931311  add.s r7, r7, r17
001dd8  8b93e310  add.s r7, r7, r14
001ddc  5b010000  j 8
001de0  9793b301  or r7, r7, r27
001de4  97084301  and r17, r6, r20
001de8  93081905  setlt.u r17, r18, r17
001dec  3bf00800  bneq r17, zero, 28
001df0  9b480301  srli r17, r6, 16
001df4  6307ffef  loadli.w r14,  -2056(r30)
001df8  9b881800  andi r17, r17, 1
001dfc  0b131311  add.s r6, r6, r17
001e00  0b13e310  add.s r6, r6, r14
001e04  5b010000  j 8
001e08  1713b301  or r6, r6, r27
001e0c  97884201  and r17, r5, r20
001e10  93081905  setlt.u r17, r18, r17
001e14  3bf00800  bneq r17, zero, 28
001e18  9bc80201  srli r17, r5, 16
001e1c  6307ffef  loadli.w r14,  -2056(r30)
001e20  9b881800  andi r17, r17, 1
001e24  8b921211  add.s r5, r5, r17
001e28  8b92e210  add.s r5, r5, r14
001e2c  5b010000  j 8
001e30  9792b201  or r5, r5, r27
001e34  97884101  and r17, r3, r20
001e38  93081905  setlt.u r17, r18, r17
001e3c  bb800800  bneq r17, zero, 32
001e40  9bc80101  srli r17, r3, 16
001e44  2b09807f  lui r18, 522240
001e48  9b881800  andi r17, r17, 1
001e4c  8b911111  add.s r3, r3, r17
001e50  e308ffef  loadli.w r17,  -2056(r30)
001e54  8b911111  add.s r3, r3, r17
001e58  db010000  j 12
001e5c  2b09807f  lui r18, 522240
001e60  9791b101  or r3, r3, r27
001e64  ab08ffff  lui r17, 1048560
001e68  97871701  and r15, r15, r17
001e6c  17021201  and r4, r4, r17
001e70  17011101  and r2, r2, r17
001e74  170a1501  and r20, r10, r17
001e78  978a1401  and r21, r9, r17
001e7c  978d1101  and r27, r3, r17
001e80  97891901  and r19, r19, r17
001e84  178d1201  and r26, r5, r17
001e88  97801001  and r1, r1, r17
001e8c  17061601  and r12, r12, r17
001e90  17041401  and r8, r8, r17
001e94  17081801  and r16, r16, r17
001e98  97861601  and r13, r13, r17
001e9c  97851501  and r11, r11, r17
001ea0  178b1301  and r22, r7, r17
001ea4  170c1301  and r24, r6, r17
001ea8  9f810700  addli r3, r15, 0
001eac  670e4fec  storeli.w r4, -2336(r30)
001eb0  e74d2fec  storeli.w r2, -2340(r30)
001eb4  670c4fed  storeli.w r20, -2368(r30)
001eb8  9f020a00  addli r5, r20, 0
001ebc  1f0a0200  addli r20, r4, 0
001ec0  e74b5fed  storeli.w r21, -2372(r30)
001ec4  1f820a00  addli r4, r21, 0
001ec8  9f0a0100  addli r21, r2, 0
001ecc  6301efef  loadli.w r2,  -2064(r30)
001ed0  e74cffec  storeli.w r15, -2356(r30)
001ed4  e7401fee  storeli.w r1, -2292(r30)
001ed8  9f870000  addli r15, r1, 0
001edc  e70d8fec  storeli.w r8, -2344(r30)
001ee0  e70c3fed  storeli.w r19, -2360(r30)
001ee4  1f870900  addli r14, r19, 0
001ee8  9f090600  addli r19, r12, 0
001eec  e70b6fed  storeli.w r22, -2376(r30)
001ef0  1f030b00  addli r6, r22, 0
001ef4  1f0b0400  addli r22, r8, 0
001ef8  674b8fed  storeli.w r24, -2380(r30)
001efc  9f030c00  addli r7, r24, 0
001f00  1f0c0800  addli r24, r16, 0
001f04  670bafed  storeli.w r26, -2384(r30)
001f08  1f040d00  addli r8, r26, 0
001f0c  1f8d0600  addli r26, r13, 0
001f10  e74abfed  storeli.w r27, -2388(r30)
001f14  9f840d00  addli r9, r27, 0
001f18  9f000004  addli r1, zero, 512
001f1c  e700cfee  storeli.w r12, -2296(r30)
001f20  674d0fed  storeli.w r16, -2348(r30)
001f24  670ddfec  storeli.w r13, -2352(r30)
001f28  674cbfec  storeli.w r11, -2364(r30)
001f2c  9f8d0100  addli r27, r3, 0
001f30  9f810500  addli r3, r11, 0
001f34  3f111100  blt.s r2, r1, 68
001f38  9f070000  addli r15, zero, 0
001f3c  9f090000  addli r19, zero, 0
001f40  1f0a0000  addli r20, zero, 0
001f44  9f0a0000  addli r21, zero, 0
001f48  1f0b0000  addli r22, zero, 0
001f4c  1f0c0000  addli r24, zero, 0
001f50  1f0d0000  addli r26, zero, 0
001f54  9f0d0000  addli r27, zero, 0
001f58  1f070000  addli r14, zero, 0
001f5c  9f010000  addli r3, zero, 0
001f60  9f020000  addli r5, zero, 0
001f64  1f020000  addli r4, zero, 0
001f68  1f030000  addli r6, zero, 0
001f6c  9f030000  addli r7, zero, 0
001f70  1f040000  addli r8, zero, 0
001f74  9f040000  addli r9, zero, 0
001f78  9f000ff8  addli r1, r30, -1024
001f7c  1f0e8000  addli r28, zero, 64
001f80  1f818000  addli r2, r1, 64
001f84  674e2fec  storeli.w r2, -2332(r30)
001f88  1f810001  addli r2, r1, 128
001f8c  9f808001  addli r1, r1, 192
001f90  e70e2fec  storeli.w r2, -2328(r30)
001f94  e74e1fec  storeli.w r1, -2324(r30)
001f98  00a00000  mfence { lm }
001f9c  db150000  j 172
001fa0  9f020000  addli r5, zero, 0
001fa4  1f030000  addli r6, zero, 0
001fa8  9f060000  addli r13, zero, 0
001fac  1f080000  addli r16, zero, 0
001fb0  9f0b0000  addli r23, zero, 0
001fb4  9f0c0000  addli r25, zero, 0
001fb8  1f040000  addli r8, zero, 0
001fbc  1f0e0000  addli r28, zero, 0
001fc0  9f080000  addli r17, zero, 0
001fc4  1f020000  addli r4, zero, 0
001fc8  9f030000  addli r7, zero, 0
001fcc  9f000000  addli r1, zero, 0
001fd0  1f010000  addli r2, zero, 0
001fd4  9f040000  addli r9, zero, 0
001fd8  1f060000  addli r12, zero, 0
001fdc  1f050000  addli r10, zero, 0
001fe0  8be75710  add.f.rn r15, r15, r5
001fe4  e3020fef  loadli.w r5,  -2176(r30)
001fe8  8be96910  add.f.rn r19, r19, r6
001fec  63037fee  loadli.w r6,  -2248(r30)
001ff0  0b6d8d10  add.f.rn r26, r26, r8
001ff4  63046fee  loadli.w r8,  -2256(r30)
001ff8  8be14110  add.f.rn r3, r3, r4
001ffc  63028fee  loadli.w r4,  -2240(r30)
002000  8bedcd11  add.f.rn r27, r27, r28
002004  0b6ada10  add.f.rn r20, r20, r13
002008  8bea0a11  add.f.rn r21, r21, r16
00200c  0b6b7b11  add.f.rn r22, r22, r23
002010  0b6c9c11  add.f.rn r24, r24, r25
002014  0b671711  add.f.rn r14, r14, r17
002018  630e5fee  loadli.w r28,  -2264(r30)
00201c  8be27210  add.f.rn r5, r5, r7
002020  e3436fee  loadli.w r7,  -2252(r30)
002024  0b621210  add.f.rn r4, r4, r1
002028  0b632310  add.f.rn r6, r6, r2
00202c  0b64c410  add.f.rn r8, r8, r12
002030  1f0e8e00  addli r28, r28, 64
002034  9f000004  addli r1, zero, 512
002038  8be39310  add.f.rn r7, r7, r9
00203c  e3445fee  loadli.w r9,  -2260(r30)
002040  8be4a410  add.f.rn r9, r9, r10
002044  375a1e02  beq r28, r1, 1684
002048  9f000ff8  addli r1, r30, -1024
00204c  67044fee  storeli.w r4, -2240(r30)
002050  67085fee  storeli.w r5, -2176(r30)
002054  9230b002  vadd.s.mz vr1{mr1}, zero, vr11
002058  1f100000  addli zero, zero, 1
00205c  e7036fee  storeli.w r6, -2248(r30)
002060  e7429fee  storeli.w r9, -2260(r30)
002064  67038fee  storeli.w r8, -2256(r30)
002068  67437fee  storeli.w r7, -2252(r30)
00206c  0b92c011  add.s r4, r1, r28
002070  7e0100e0  vmmov mr2, zero
002074  17200000  xor zero, zero, zero
002078  eb320200  load.hu r5, 0(r4)
00207c  6b332200  load.hu r6, 2(r4)
002080  6b31a201  load.hu r2, 26(r4)
002084  eb30c201  load.hu r1, 28(r4)
002088  eb334200  load.hu r7, 4(r4)
00208c  6b346200  load.hu r8, 6(r4)
002090  eb348200  load.hu r9, 8(r4)
002094  6b35a200  load.hu r10, 10(r4)
002098  eb35c200  load.hu r11, 12(r4)
00209c  6b36e200  load.hu r12, 14(r4)
0020a0  eb360201  load.hu r13, 16(r4)
0020a4  6b382201  load.hu r16, 18(r4)
0020a8  eb384201  load.hu r17, 20(r4)
0020ac  eb3b6201  load.hu r23, 22(r4)
0020b0  eb3c8201  load.hu r25, 24(r4)
0020b4  6b32e201  load.hu r4, 30(r4)
0020b8  1231b002  vadd.s.mz vr2{mr1}, zero, vr11
0020bc  b3920218  bfloat2float.rn r5, r5
0020c0  33110118  bfloat2float.rn r2, r2
0020c4  b3900018  bfloat2float.rn r1, r1
0020c8  eaa01234  vor.u.mh vr1{mr2}, r5, vr1
0020cc  b3120318  bfloat2float.rn r5, r6
0020d0  1f230000  addli r6, zero, 2
0020d4  fe0103e0  vmmov mr3, r6
0020d8  1f430000  addli r6, zero, 4
0020dc  eaa01236  vor.u.mh vr1{mr3}, r5, vr1
0020e0  b3920318  bfloat2float.rn r5, r7
0020e4  7e0003e0  vmmov mr0, r6
0020e8  1f031000  addli r6, zero, 8
0020ec  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0020f0  b3120418  bfloat2float.rn r5, r8
0020f4  7e0003e0  vmmov mr0, r6
0020f8  1f032000  addli r6, zero, 16
0020fc  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002100  b3920418  bfloat2float.rn r5, r9
002104  7e0003e0  vmmov mr0, r6
002108  1f034000  addli r6, zero, 32
00210c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002110  b3120518  bfloat2float.rn r5, r10
002114  7e0003e0  vmmov mr0, r6
002118  1f038000  addli r6, zero, 64
00211c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002120  b3920518  bfloat2float.rn r5, r11
002124  7e0003e0  vmmov mr0, r6
002128  1f030001  addli r6, zero, 128
00212c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002130  b3120618  bfloat2float.rn r5, r12
002134  7e0003e0  vmmov mr0, r6
002138  1f030002  addli r6, zero, 256
00213c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002140  b3920618  bfloat2float.rn r5, r13
002144  7e0003e0  vmmov mr0, r6
002148  1f030004  addli r6, zero, 512
00214c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002150  b3120818  bfloat2float.rn r5, r16
002154  7e0003e0  vmmov mr0, r6
002158  1f030008  addli r6, zero, 1024
00215c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002160  b3920818  bfloat2float.rn r5, r17
002164  7e0003e0  vmmov mr0, r6
002168  1f030010  addli r6, zero, 2048
00216c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002170  b3920b18  bfloat2float.rn r5, r23
002174  7e0003e0  vmmov mr0, r6
002178  1f030020  addli r6, zero, 4096
00217c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002180  b3920c18  bfloat2float.rn r5, r25
002184  7e0003e0  vmmov mr0, r6
002188  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
00218c  9f020040  addli r5, zero, 8192
002190  7e8002e0  vmmov mr0, r5
002194  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002198  2b410000  lui r2, 4
00219c  7e0001e0  vmmov mr0, r2
0021a0  1f010ffa  addli r2, r30, -768
0021a4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0021a8  b3100218  bfloat2float.rn r1, r4
0021ac  2b820000  lui r4, 8
0021b0  0b11c111  add.s r2, r2, r28
0021b4  e702cfef  storeli.w r28, -2264(r30)
0021b8  7e0002e0  vmmov mr0, r4
0021bc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0021c0  eb300100  load.hu r1, 0(r2)
0021c4  6b322100  load.hu r4, 2(r2)
0021c8  eb324100  load.hu r5, 4(r2)
0021cc  6b336100  load.hu r6, 6(r2)
0021d0  eb338100  load.hu r7, 8(r2)
0021d4  6b34a100  load.hu r8, 10(r2)
0021d8  eb34c100  load.hu r9, 12(r2)
0021dc  6b35e100  load.hu r10, 14(r2)
0021e0  eb350101  load.hu r11, 16(r2)
0021e4  6b362101  load.hu r12, 18(r2)
0021e8  eb364101  load.hu r13, 20(r2)
0021ec  6b386101  load.hu r16, 22(r2)
0021f0  eb388101  load.hu r17, 24(r2)
0021f4  eb3ba101  load.hu r23, 26(r2)
0021f8  eb3cc101  load.hu r25, 28(r2)
0021fc  6b31e101  load.hu r2, 30(r2)
002200  b3900018  bfloat2float.rn r1, r1
002204  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002208  b3100218  bfloat2float.rn r1, r4
00220c  1f420000  addli r4, zero, 4
002210  7e0102e0  vmmov mr2, r4
002214  1f021000  addli r4, zero, 8
002218  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
00221c  b3900218  bfloat2float.rn r1, r5
002220  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002224  b3100318  bfloat2float.rn r1, r6
002228  7e0102e0  vmmov mr2, r4
00222c  1f022000  addli r4, zero, 16
002230  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002234  b3900318  bfloat2float.rn r1, r7
002238  7e0102e0  vmmov mr2, r4
00223c  1f024000  addli r4, zero, 32
002240  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002244  b3100418  bfloat2float.rn r1, r8
002248  7e0102e0  vmmov mr2, r4
00224c  1f028000  addli r4, zero, 64
002250  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002254  b3900418  bfloat2float.rn r1, r9
002258  7e0102e0  vmmov mr2, r4
00225c  1f020001  addli r4, zero, 128
002260  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002264  b3100518  bfloat2float.rn r1, r10
002268  7e0102e0  vmmov mr2, r4
00226c  1f020002  addli r4, zero, 256
002270  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002274  b3900518  bfloat2float.rn r1, r11
002278  7e0102e0  vmmov mr2, r4
00227c  1f020004  addli r4, zero, 512
002280  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002284  b3100618  bfloat2float.rn r1, r12
002288  7e0102e0  vmmov mr2, r4
00228c  1f020008  addli r4, zero, 1024
002290  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002294  b3900618  bfloat2float.rn r1, r13
002298  7e0102e0  vmmov mr2, r4
00229c  1f020010  addli r4, zero, 2048
0022a0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0022a4  b3100818  bfloat2float.rn r1, r16
0022a8  7e0102e0  vmmov mr2, r4
0022ac  1f020020  addli r4, zero, 4096
0022b0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0022b4  b3900818  bfloat2float.rn r1, r17
0022b8  7e0102e0  vmmov mr2, r4
0022bc  1f020040  addli r4, zero, 8192
0022c0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0022c4  b3900b18  bfloat2float.rn r1, r23
0022c8  7e0102e0  vmmov mr2, r4
0022cc  2b420000  lui r4, 4
0022d0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0022d4  b3900c18  bfloat2float.rn r1, r25
0022d8  7e0102e0  vmmov mr2, r4
0022dc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0022e0  b3100118  bfloat2float.rn r1, r2
0022e4  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0022e8  9f000ff4  addli r1, r30, -1536
0022ec  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
0022f0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0022f4  00a00000  mfence { lm }
0022f8  63050ff4  loadli.w r10,  -1536(r30)
0022fc  e3440ff4  loadli.w r9,  -1532(r30)
002300  e3031ff4  loadli.w r7,  -1528(r30)
002304  63431ff4  loadli.w r6,  -1524(r30)
002308  e3022ff4  loadli.w r5,  -1520(r30)
00230c  63482ff4  loadli.w r16,  -1516(r30)
002310  63043ff4  loadli.w r8,  -1512(r30)
002314  634e3ff4  loadli.w r28,  -1508(r30)
002318  e3084ff4  loadli.w r17,  -1504(r30)
00231c  63424ff4  loadli.w r4,  -1500(r30)
002320  e340ffef  loadli.w r1,  -2052(r30)
002324  63065ff4  loadli.w r12,  -1496(r30)
002328  97001500  and r1, r10, r1
00232c  93051904  setlt.u r11, r18, r1
002330  e3405ff4  loadli.w r1,  -1492(r30)
002334  63016ff4  loadli.w r2,  -1488(r30)
002338  e34b6ff4  loadli.w r23,  -1484(r30)
00233c  e30c7ff4  loadli.w r25,  -1480(r30)
002340  e3467ff4  loadli.w r13,  -1476(r30)
002344  3bf00500  bneq r11, zero, 28
002348  9b450501  srli r11, r10, 16
00234c  9b851500  andi r11, r11, 1
002350  0b15b510  add.s r10, r10, r11
002354  e305ffef  loadli.w r11,  -2056(r30)
002358  0b15b510  add.s r10, r10, r11
00235c  db010000  j 12
002360  ab054000  lui r11, 1024
002364  1715b500  or r10, r10, r11
002368  6742afee  storeli.w r10, -2268(r30)
00236c  6345ffef  loadli.w r10,  -2052(r30)
002370  1785a400  and r10, r9, r10
002374  1305a904  setlt.u r10, r18, r10
002378  3b700500  bneq r10, zero, 28
00237c  1bc50401  srli r10, r9, 16
002380  1b051500  andi r10, r10, 1
002384  8b94a410  add.s r9, r9, r10
002388  6305ffef  loadli.w r10,  -2056(r30)
00238c  8b94a410  add.s r9, r9, r10
002390  5b020000  j 16
002394  2b054000  lui r10, 1024
002398  9794a400  or r9, r9, r10
00239c  6305ffef  loadli.w r10,  -2056(r30)
0023a0  67029fee  storeli.w r9, -2272(r30)
0023a4  e344ffef  loadli.w r9,  -2052(r30)
0023a8  97849300  and r9, r7, r9
0023ac  93049904  setlt.u r9, r18, r9
0023b0  3be00400  bneq r9, zero, 24
0023b4  9bc40301  srli r9, r7, 16
0023b8  9b841400  andi r9, r9, 1
0023bc  8b939310  add.s r7, r7, r9
0023c0  8b93a310  add.s r7, r7, r10
0023c4  db010000  j 12
0023c8  ab044000  lui r9, 1024
0023cc  97939300  or r7, r7, r9
0023d0  e7417fee  storeli.w r7, -2276(r30)
0023d4  e343ffef  loadli.w r7,  -2052(r30)
0023d8  97037300  and r7, r6, r7
0023dc  93037904  setlt.u r7, r18, r7
0023e0  3be00300  bneq r7, zero, 24
0023e4  9b430301  srli r7, r6, 16
0023e8  9b831300  andi r7, r7, 1
0023ec  0b137310  add.s r6, r6, r7
0023f0  8b13a310  add.s r7, r6, r10
0023f4  db010000  j 12
0023f8  ab034000  lui r7, 1024
0023fc  97137300  or r7, r6, r7
002400  6343ffef  loadli.w r6,  -2052(r30)
002404  17836200  and r6, r5, r6
002408  13036904  setlt.u r6, r18, r6
00240c  3b600300  bneq r6, zero, 24
002410  1bc30201  srli r6, r5, 16
002414  1b031300  andi r6, r6, 1
002418  8b926210  add.s r5, r5, r6
00241c  8b92a210  add.s r5, r5, r10
002420  db010000  j 12
002424  2b034000  lui r6, 1024
002428  97926200  or r5, r5, r6
00242c  e7015fee  storeli.w r5, -2280(r30)
002430  e342ffef  loadli.w r5,  -2052(r30)
002434  97025800  and r5, r16, r5
002438  93025904  setlt.u r5, r18, r5
00243c  3be00200  bneq r5, zero, 24
002440  9b420801  srli r5, r16, 16
002444  9b821200  andi r5, r5, 1
002448  8b125810  add.s r5, r16, r5
00244c  0b98a210  add.s r16, r5, r10
002450  db010000  j 12
002454  ab024000  lui r5, 1024
002458  17185800  or r16, r16, r5
00245c  e342ffef  loadli.w r5,  -2052(r30)
002460  97025400  and r5, r8, r5
002464  93025904  setlt.u r5, r18, r5
002468  3be00200  bneq r5, zero, 24
00246c  9b420401  srli r5, r8, 16
002470  9b821200  andi r5, r5, 1
002474  8b125410  add.s r5, r8, r5
002478  0b94a210  add.s r8, r5, r10
00247c  db010000  j 12
002480  ab024000  lui r5, 1024
002484  17145400  or r8, r8, r5
002488  e342ffef  loadli.w r5,  -2052(r30)
00248c  97025e00  and r5, r28, r5
002490  93025904  setlt.u r5, r18, r5
002494  3be00200  bneq r5, zero, 24
002498  9b420e01  srli r5, r28, 16
00249c  9b821200  andi r5, r5, 1
0024a0  8b125e10  add.s r5, r28, r5
0024a4  0b9ea210  add.s r28, r5, r10
0024a8  db010000  j 12
0024ac  ab024000  lui r5, 1024
0024b0  171e5e00  or r28, r28, r5
0024b4  e342ffef  loadli.w r5,  -2052(r30)
0024b8  97825800  and r5, r17, r5
0024bc  93025904  setlt.u r5, r18, r5
0024c0  3be00200  bneq r5, zero, 24
0024c4  9bc20801  srli r5, r17, 16
0024c8  9b821200  andi r5, r5, 1
0024cc  8b925810  add.s r5, r17, r5
0024d0  8b98a210  add.s r17, r5, r10
0024d4  db010000  j 12
0024d8  ab024000  lui r5, 1024
0024dc  97985800  or r17, r17, r5
0024e0  e342ffef  loadli.w r5,  -2052(r30)
0024e4  97025200  and r5, r4, r5
0024e8  93025904  setlt.u r5, r18, r5
0024ec  3be00200  bneq r5, zero, 24
0024f0  9b420201  srli r5, r4, 16
0024f4  9b821200  andi r5, r5, 1
0024f8  0b125210  add.s r4, r4, r5
0024fc  0b12a210  add.s r4, r4, r10
002500  db010000  j 12
002504  ab024000  lui r5, 1024
002508  17125200  or r4, r4, r5
00250c  e342ffef  loadli.w r5,  -2052(r30)
002510  97025600  and r5, r12, r5
002514  93025904  setlt.u r5, r18, r5
002518  3be00200  bneq r5, zero, 24
00251c  9b420601  srli r5, r12, 16
002520  9b821200  andi r5, r5, 1
002524  8b125610  add.s r5, r12, r5
002528  0b96a210  add.s r12, r5, r10
00252c  db010000  j 12
002530  ab024000  lui r5, 1024
002534  17165600  or r12, r12, r5
002538  e342ffef  loadli.w r5,  -2052(r30)
00253c  97825000  and r5, r1, r5
002540  93025904  setlt.u r5, r18, r5
002544  3be00200  bneq r5, zero, 24
002548  9bc20001  srli r5, r1, 16
00254c  9b821200  andi r5, r5, 1
002550  8b905010  add.s r1, r1, r5
002554  8b90a010  add.s r1, r1, r10
002558  db010000  j 12
00255c  ab024000  lui r5, 1024
002560  97905000  or r1, r1, r5
002564  e342ffef  loadli.w r5,  -2052(r30)
002568  97025100  and r5, r2, r5
00256c  93025904  setlt.u r5, r18, r5
002570  3be00200  bneq r5, zero, 24
002574  9b420101  srli r5, r2, 16
002578  9b821200  andi r5, r5, 1
00257c  0b115110  add.s r2, r2, r5
002580  0b11a110  add.s r2, r2, r10
002584  db010000  j 12
002588  ab024000  lui r5, 1024
00258c  17115100  or r2, r2, r5
002590  e342ffef  loadli.w r5,  -2052(r30)
002594  97825b00  and r5, r23, r5
002598  93025904  setlt.u r5, r18, r5
00259c  3be00200  bneq r5, zero, 24
0025a0  9bc20b01  srli r5, r23, 16
0025a4  9b821200  andi r5, r5, 1
0025a8  8b925b10  add.s r5, r23, r5
0025ac  8b94a210  add.s r9, r5, r10
0025b0  db010000  j 12
0025b4  ab024000  lui r5, 1024
0025b8  97945b00  or r9, r23, r5
0025bc  e342ffef  loadli.w r5,  -2052(r30)
0025c0  97825c00  and r5, r25, r5
0025c4  93025904  setlt.u r5, r18, r5
0025c8  3be00200  bneq r5, zero, 24
0025cc  9bc20c01  srli r5, r25, 16
0025d0  9b821200  andi r5, r5, 1
0025d4  8b925c10  add.s r5, r25, r5
0025d8  0b95a210  add.s r10, r5, r10
0025dc  db010000  j 12
0025e0  ab024000  lui r5, 1024
0025e4  17955c00  or r10, r25, r5
0025e8  e342ffef  loadli.w r5,  -2052(r30)
0025ec  97825600  and r5, r13, r5
0025f0  93025904  setlt.u r5, r18, r5
0025f4  3bf00200  bneq r5, zero, 28
0025f8  9bc20601  srli r5, r13, 16
0025fc  6303ffef  loadli.w r6,  -2056(r30)
002600  9b821200  andi r5, r5, 1
002604  8b925610  add.s r5, r13, r5
002608  8b956210  add.s r11, r5, r6
00260c  db010000  j 12
002610  ab024000  lui r5, 1024
002614  97955600  or r11, r13, r5
002618  6303efef  loadli.w r6,  -2064(r30)
00261c  9f020004  addli r5, zero, 512
002620  3f205300  blt.s r6, r5, 8
002624  db2fffff  j -1668
002628  9f0c0800  addli r25, r16, 0
00262c  1f880300  addli r16, r7, 0
002630  e3433fee  loadli.w r7,  -2276(r30)
002634  67413fee  storeli.w r3, -2284(r30)
002638  9f010700  addli r3, r14, 0
00263c  1f870d00  addli r14, r27, 0
002640  9f0d0d00  addli r27, r26, 0
002644  1f0d0c00  addli r26, r24, 0
002648  1f0c0b00  addli r24, r22, 0
00264c  1f8b0a00  addli r22, r21, 0
002650  9f0a0a00  addli r21, r20, 0
002654  1f8a0900  addli r20, r19, 0
002658  9f890700  addli r19, r15, 0
00265c  ab07ffff  lui r15, 1048560
002660  e3424fee  loadli.w r5,  -2268(r30)
002664  63034fee  loadli.w r6,  -2272(r30)
002668  1708f800  and r16, r16, r15
00266c  978cfc00  and r25, r25, r15
002670  1704f400  and r8, r8, r15
002674  170efe00  and r28, r28, r15
002678  9788f800  and r17, r17, r15
00267c  1702f200  and r4, r4, r15
002680  9780f000  and r1, r1, r15
002684  1701f100  and r2, r2, r15
002688  9784f400  and r9, r9, r15
00268c  9786f300  and r13, r7, r15
002690  e3033fee  loadli.w r7,  -2280(r30)
002694  9782f200  and r5, r5, r15
002698  1703f300  and r6, r6, r15
00269c  978bf300  and r23, r7, r15
0026a0  9703f600  and r7, r12, r15
0026a4  1706f500  and r12, r10, r15
0026a8  1785f500  and r10, r11, r15
0026ac  9f870900  addli r15, r19, 0
0026b0  9f090a00  addli r19, r20, 0
0026b4  1f8a0a00  addli r20, r21, 0
0026b8  9f0a0b00  addli r21, r22, 0
0026bc  1f0b0c00  addli r22, r24, 0
0026c0  1f0c0d00  addli r24, r26, 0
0026c4  1f8d0d00  addli r26, r27, 0
0026c8  9f0d0700  addli r27, r14, 0
0026cc  1f870100  addli r14, r3, 0
0026d0  e3412fee  loadli.w r3,  -2284(r30)
0026d4  db21ffff  j -1780
0026d8  8be03711  add.f.rn r1, r15, r19
0026dc  6341bfe9  loadli.w r2,  -2852(r30)
0026e0  8be04011  add.f.rn r1, r1, r20
0026e4  8be05011  add.f.rn r1, r1, r21
0026e8  8be06011  add.f.rn r1, r1, r22
0026ec  8be08011  add.f.rn r1, r1, r24
0026f0  8be0a011  add.f.rn r1, r1, r26
0026f4  8be0b011  add.f.rn r1, r1, r27
0026f8  8be0e010  add.f.rn r1, r1, r14
0026fc  8be03010  add.f.rn r1, r1, r3
002700  8be05010  add.f.rn r1, r1, r5
002704  8be04010  add.f.rn r1, r1, r4
002708  8be06010  add.f.rn r1, r1, r6
00270c  8be07010  add.f.rn r1, r1, r7
002710  8be08010  add.f.rn r1, r1, r8
002714  8be09010  add.f.rn r1, r1, r9
002718  73601100  stores.w r1, 0(r2)
00271c  00a00300  mfence { lm, sm, gm }
002720  63020fee  loadli.w r4,  -2304(r30)
002724  80210204  csr_set csr3, r4
002728  00d00100  sync_group
00272c  e340ffed  loadli.w r1,  -2308(r30)
002730  3ba10000  bneq r1, zero, 72
002734  e342cfe9  loadli.w r5,  -2844(r30)
002738  efc00200  loads.w r1, 0(r5)
00273c  6fc14200  loads.w r2, 4(r5)
002740  efc18200  loads.w r3, 8(r5)
002744  8be02010  add.f.rn r1, r1, r2
002748  6fc1c200  loads.w r2, 12(r5)
00274c  8be03010  add.f.rn r1, r1, r3
002750  efc10201  loads.w r3, 16(r5)
002754  8be02010  add.f.rn r1, r1, r2
002758  6fc14201  loads.w r2, 20(r5)
00275c  8be03010  add.f.rn r1, r1, r3
002760  efc18201  loads.w r3, 24(r5)
002764  8be02010  add.f.rn r1, r1, r2
002768  6fc1c201  loads.w r2, 28(r5)
00276c  8be03010  add.f.rn r1, r1, r3
002770  8be02010  add.f.rn r1, r1, r2
002774  73e01200  stores.w r1, 0(r5)
002778  00a00300  mfence { lm, sm, gm }
00277c  80210204  csr_set csr3, r4
002780  00d00100  sync_group
002784  e340cfe9  loadli.w r1,  -2844(r30)
002788  2b01803a  lui r2, 239616
00278c  634bffef  loadli.w r22,  -2052(r30)
002790  1f0c0ff8  addli r24, r30, -1024
002794  2b0d807f  lui r26, 522240
002798  ab0d4000  lui r27, 1024
00279c  efc00000  loads.w r1, 0(r1)
0027a0  0be82020  mul.f.rn r16, r1, r2
0027a4  6301efef  loadli.w r2,  -2064(r30)
0027a8  9f000004  addli r1, zero, 512
0027ac  67400fef  storeli.w r16, -2300(r30)
0027b0  3f211100  blt.s r2, r1, 72
0027b4  9f0a0000  addli r21, zero, 0
0027b8  1f080000  addli r16, zero, 0
0027bc  1f090000  addli r18, zero, 0
0027c0  9f010000  addli r3, zero, 0
0027c4  1f020000  addli r4, zero, 0
0027c8  9f020000  addli r5, zero, 0
0027cc  1f030000  addli r6, zero, 0
0027d0  9f030000  addli r7, zero, 0
0027d4  1f040000  addli r8, zero, 0
0027d8  1f050000  addli r10, zero, 0
0027dc  9f050000  addli r11, zero, 0
0027e0  1f060000  addli r12, zero, 0
0027e4  9f060000  addli r13, zero, 0
0027e8  1f070000  addli r14, zero, 0
0027ec  9f070000  addli r15, zero, 0
0027f0  67080fee  storeli.w zero, -2176(r30)
0027f4  5b190000  j 200
0027f8  e3401fee  loadli.w r1,  -2292(r30)
0027fc  63011fee  loadli.w r2,  -2296(r30)
002800  e301cfed  loadli.w r3,  -2336(r30)
002804  6342bfed  loadli.w r4,  -2340(r30)
002808  e302bfed  loadli.w r5,  -2344(r30)
00280c  6343afed  loadli.w r6,  -2348(r30)
002810  e303afed  loadli.w r7,  -2352(r30)
002814  63449fed  loadli.w r8,  -2356(r30)
002818  e3049fed  loadli.w r9,  -2360(r30)
00281c  63458fed  loadli.w r10,  -2364(r30)
002820  e3058fed  loadli.w r11,  -2368(r30)
002824  63467fed  loadli.w r12,  -2372(r30)
002828  e3067fed  loadli.w r13,  -2376(r30)
00282c  63476fed  loadli.w r14,  -2380(r30)
002830  e3076fed  loadli.w r15,  -2384(r30)
002834  e3485fed  loadli.w r17,  -2388(r30)
002838  8be00019  sub.f.rn r1, r1, r16
00283c  0b610119  sub.f.rn r2, r2, r16
002840  0b620219  sub.f.rn r4, r4, r16
002844  8be10119  sub.f.rn r3, r3, r16
002848  8be20219  sub.f.rn r5, r5, r16
00284c  0b630319  sub.f.rn r6, r6, r16
002850  8be30319  sub.f.rn r7, r7, r16
002854  0b640419  sub.f.rn r8, r8, r16
002858  8be40419  sub.f.rn r9, r9, r16
00285c  0b650519  sub.f.rn r10, r10, r16
002860  8be50519  sub.f.rn r11, r11, r16
002864  0b660619  sub.f.rn r12, r12, r16
002868  8be60619  sub.f.rn r13, r13, r16
00286c  0b670719  sub.f.rn r14, r14, r16
002870  8be70719  sub.f.rn r15, r15, r16
002874  8be80819  sub.f.rn r17, r17, r16
002878  8be01020  mul.f.rn r1, r1, r1
00287c  0be83120  mul.f.rn r16, r3, r3
002880  0b694220  mul.f.rn r18, r4, r4
002884  8be15220  mul.f.rn r3, r5, r5
002888  0b626320  mul.f.rn r4, r6, r6
00288c  8be27320  mul.f.rn r5, r7, r7
002890  0b638420  mul.f.rn r6, r8, r8
002894  0b64a520  mul.f.rn r8, r10, r10
002898  0be5b520  mul.f.rn r10, r11, r11
00289c  8b65c620  mul.f.rn r11, r12, r12
0028a0  0be6d620  mul.f.rn r12, r13, r13
0028a4  8b66e720  mul.f.rn r13, r14, r14
0028a8  0be7f720  mul.f.rn r14, r15, r15
0028ac  8b6a2120  mul.f.rn r21, r2, r2
0028b0  8be39420  mul.f.rn r7, r9, r9
0028b4  8be71821  mul.f.rn r15, r17, r17
0028b8  67081fee  storeli.w r1, -2176(r30)
0028bc  e3408fe9  loadli.w r1,  -2876(r30)
0028c0  63012fee  loadli.w r2,  -2288(r30)
0028c4  e304ffef  loadli.w r9,  -2056(r30)
0028c8  1f0a8000  addli r20, zero, 64
0028cc  8b902010  add.s r1, r1, r2
0028d0  67011fea  storeli.w r1, -2800(r30)
0028d4  e3008fe9  loadli.w r1,  -2880(r30)
0028d8  8b902010  add.s r1, r1, r2
0028dc  e7401fea  storeli.w r1, -2804(r30)
0028e0  e3407fe9  loadli.w r1,  -2884(r30)
0028e4  8b902010  add.s r1, r1, r2
0028e8  e7001fea  storeli.w r1, -2808(r30)
0028ec  e3007fe9  loadli.w r1,  -2888(r30)
0028f0  8b902010  add.s r1, r1, r2
0028f4  67401fea  storeli.w r1, -2812(r30)
0028f8  e3406fe9  loadli.w r1,  -2892(r30)
0028fc  8b902010  add.s r1, r1, r2
002900  67001fea  storeli.w r1, -2816(r30)
002904  e3006fe9  loadli.w r1,  -2896(r30)
002908  8b902010  add.s r1, r1, r2
00290c  e74f1fe8  storeli.w r1, -2820(r30)
002910  e3405fe9  loadli.w r1,  -2900(r30)
002914  8b902010  add.s r1, r1, r2
002918  e70f1fe8  storeli.w r1, -2824(r30)
00291c  e3005fe9  loadli.w r1,  -2904(r30)
002920  8b902010  add.s r1, r1, r2
002924  674f1fe8  storeli.w r1, -2828(r30)
002928  e3404fe9  loadli.w r1,  -2908(r30)
00292c  8b902010  add.s r1, r1, r2
002930  670f1fe8  storeli.w r1, -2832(r30)
002934  e3004fe9  loadli.w r1,  -2912(r30)
002938  8b902010  add.s r1, r1, r2
00293c  e74e1fe8  storeli.w r1, -2836(r30)
002940  e3403fe9  loadli.w r1,  -2916(r30)
002944  8b902010  add.s r1, r1, r2
002948  e70e1fe8  storeli.w r1, -2840(r30)
00294c  e3003fe9  loadli.w r1,  -2920(r30)
002950  8b902010  add.s r1, r1, r2
002954  67411fea  storeli.w r1, -2796(r30)
002958  e3402fe9  loadli.w r1,  -2924(r30)
00295c  8b902010  add.s r1, r1, r2
002960  e7011fea  storeli.w r1, -2792(r30)
002964  e3002fe9  loadli.w r1,  -2928(r30)
002968  8b902010  add.s r1, r1, r2
00296c  e7411fea  storeli.w r1, -2788(r30)
002970  e3401fe9  loadli.w r1,  -2932(r30)
002974  8b902010  add.s r1, r1, r2
002978  67021fea  storeli.w r1, -2784(r30)
00297c  e3001fe9  loadli.w r1,  -2936(r30)
002980  8b902010  add.s r1, r1, r2
002984  67421fea  storeli.w r1, -2780(r30)
002988  e3400fe9  loadli.w r1,  -2940(r30)
00298c  8b902010  add.s r1, r1, r2
002990  e7021fea  storeli.w r1, -2776(r30)
002994  e340efe8  loadli.w r1,  -2956(r30)
002998  8b902010  add.s r1, r1, r2
00299c  e7421fea  storeli.w r1, -2772(r30)
0029a0  e340dfe8  loadli.w r1,  -2964(r30)
0029a4  8b902010  add.s r1, r1, r2
0029a8  67031fea  storeli.w r1, -2768(r30)
0029ac  e300dfe8  loadli.w r1,  -2968(r30)
0029b0  8b902010  add.s r1, r1, r2
0029b4  67431fea  storeli.w r1, -2764(r30)
0029b8  e340cfe8  loadli.w r1,  -2972(r30)
0029bc  8b902010  add.s r1, r1, r2
0029c0  e7031fea  storeli.w r1, -2760(r30)
0029c4  e300cfe8  loadli.w r1,  -2976(r30)
0029c8  8b902010  add.s r1, r1, r2
0029cc  e7431fea  storeli.w r1, -2756(r30)
0029d0  e340bfe8  loadli.w r1,  -2980(r30)
0029d4  8b902010  add.s r1, r1, r2
0029d8  67041fea  storeli.w r1, -2752(r30)
0029dc  e300bfe8  loadli.w r1,  -2984(r30)
0029e0  8b902010  add.s r1, r1, r2
0029e4  67441fea  storeli.w r1, -2748(r30)
0029e8  e340afe8  loadli.w r1,  -2988(r30)
0029ec  8b902010  add.s r1, r1, r2
0029f0  e7041fea  storeli.w r1, -2744(r30)
0029f4  e300afe8  loadli.w r1,  -2992(r30)
0029f8  8b902010  add.s r1, r1, r2
0029fc  e7441fea  storeli.w r1, -2740(r30)
002a00  e3409fe8  loadli.w r1,  -2996(r30)
002a04  8b902010  add.s r1, r1, r2
002a08  67051fea  storeli.w r1, -2736(r30)
002a0c  e3009fe8  loadli.w r1,  -3000(r30)
002a10  8b902010  add.s r1, r1, r2
002a14  67451fea  storeli.w r1, -2732(r30)
002a18  e3408fe8  loadli.w r1,  -3004(r30)
002a1c  8b902010  add.s r1, r1, r2
002a20  e7051fea  storeli.w r1, -2728(r30)
002a24  e3008fe8  loadli.w r1,  -3008(r30)
002a28  8b902010  add.s r1, r1, r2
002a2c  e7451fea  storeli.w r1, -2724(r30)
002a30  e3407fe8  loadli.w r1,  -3012(r30)
002a34  8b902010  add.s r1, r1, r2
002a38  67061fea  storeli.w r1, -2720(r30)
002a3c  e3007fe8  loadli.w r1,  -3016(r30)
002a40  8b902010  add.s r1, r1, r2
002a44  67461fea  storeli.w r1, -2716(r30)
002a48  e3406fe8  loadli.w r1,  -3020(r30)
002a4c  8b902010  add.s r1, r1, r2
002a50  e7061fea  storeli.w r1, -2712(r30)
002a54  e3006fe8  loadli.w r1,  -3024(r30)
002a58  8b902010  add.s r1, r1, r2
002a5c  e7461fea  storeli.w r1, -2708(r30)
002a60  e3405fe8  loadli.w r1,  -3028(r30)
002a64  8b902010  add.s r1, r1, r2
002a68  67071fea  storeli.w r1, -2704(r30)
002a6c  e3005fe8  loadli.w r1,  -3032(r30)
002a70  8b902010  add.s r1, r1, r2
002a74  67471fea  storeli.w r1, -2700(r30)
002a78  e3404fe8  loadli.w r1,  -3036(r30)
002a7c  8b902010  add.s r1, r1, r2
002a80  e7071fea  storeli.w r1, -2696(r30)
002a84  e3004fe8  loadli.w r1,  -3040(r30)
002a88  8b902010  add.s r1, r1, r2
002a8c  e7471fea  storeli.w r1, -2692(r30)
002a90  e3403fe8  loadli.w r1,  -3044(r30)
002a94  8b902010  add.s r1, r1, r2
002a98  67081fea  storeli.w r1, -2688(r30)
002a9c  e3003fe8  loadli.w r1,  -3048(r30)
002aa0  8b902010  add.s r1, r1, r2
002aa4  67481fea  storeli.w r1, -2684(r30)
002aa8  e3402fe8  loadli.w r1,  -3052(r30)
002aac  8b902010  add.s r1, r1, r2
002ab0  e7081fea  storeli.w r1, -2680(r30)
002ab4  e3002fe8  loadli.w r1,  -3056(r30)
002ab8  8b902010  add.s r1, r1, r2
002abc  e7481fea  storeli.w r1, -2676(r30)
002ac0  e3401fe8  loadli.w r1,  -3060(r30)
002ac4  8b902010  add.s r1, r1, r2
002ac8  67091fea  storeli.w r1, -2672(r30)
002acc  e3001fe8  loadli.w r1,  -3064(r30)
002ad0  8b902010  add.s r1, r1, r2
002ad4  67491fea  storeli.w r1, -2668(r30)
002ad8  e3400fe8  loadli.w r1,  -3068(r30)
002adc  8b902010  add.s r1, r1, r2
002ae0  e7091fea  storeli.w r1, -2664(r30)
002ae4  e3000fe8  loadli.w r1,  -3072(r30)
002ae8  8b902010  add.s r1, r1, r2
002aec  e7491fea  storeli.w r1, -2660(r30)
002af0  e340ffe7  loadli.w r1,  -3076(r30)
002af4  8b902010  add.s r1, r1, r2
002af8  670a1fea  storeli.w r1, -2656(r30)
002afc  e300ffe7  loadli.w r1,  -3080(r30)
002b00  8b902010  add.s r1, r1, r2
002b04  674a1fea  storeli.w r1, -2652(r30)
002b08  e340efe7  loadli.w r1,  -3084(r30)
002b0c  8b902010  add.s r1, r1, r2
002b10  e70a1fea  storeli.w r1, -2648(r30)
002b14  e300efe7  loadli.w r1,  -3088(r30)
002b18  8b902010  add.s r1, r1, r2
002b1c  e74a1fea  storeli.w r1, -2644(r30)
002b20  e340dfe7  loadli.w r1,  -3092(r30)
002b24  8b902010  add.s r1, r1, r2
002b28  670b1fea  storeli.w r1, -2640(r30)
002b2c  e300dfe7  loadli.w r1,  -3096(r30)
002b30  8b902010  add.s r1, r1, r2
002b34  674b1fea  storeli.w r1, -2636(r30)
002b38  e340cfe7  loadli.w r1,  -3100(r30)
002b3c  8b902010  add.s r1, r1, r2
002b40  e70b1fea  storeli.w r1, -2632(r30)
002b44  e300cfe7  loadli.w r1,  -3104(r30)
002b48  8b902010  add.s r1, r1, r2
002b4c  e74b1fea  storeli.w r1, -2628(r30)
002b50  e340bfe7  loadli.w r1,  -3108(r30)
002b54  8b902010  add.s r1, r1, r2
002b58  670c1fea  storeli.w r1, -2624(r30)
002b5c  e300bfe7  loadli.w r1,  -3112(r30)
002b60  8b902010  add.s r1, r1, r2
002b64  674c1fea  storeli.w r1, -2620(r30)
002b68  e340afe7  loadli.w r1,  -3116(r30)
002b6c  8b902010  add.s r1, r1, r2
002b70  e70c1fea  storeli.w r1, -2616(r30)
002b74  e300afe7  loadli.w r1,  -3120(r30)
002b78  8b902010  add.s r1, r1, r2
002b7c  e74c1fea  storeli.w r1, -2612(r30)
002b80  e3409fe7  loadli.w r1,  -3124(r30)
002b84  8b902010  add.s r1, r1, r2
002b88  670d1fea  storeli.w r1, -2608(r30)
002b8c  e3009fe7  loadli.w r1,  -3128(r30)
002b90  8b902010  add.s r1, r1, r2
002b94  674d1fea  storeli.w r1, -2604(r30)
002b98  e3408fe7  loadli.w r1,  -3132(r30)
002b9c  8b902010  add.s r1, r1, r2
002ba0  e70d1fea  storeli.w r1, -2600(r30)
002ba4  e3008fe7  loadli.w r1,  -3136(r30)
002ba8  8b902010  add.s r1, r1, r2
002bac  e74d1fea  storeli.w r1, -2596(r30)
002bb0  e3407fe7  loadli.w r1,  -3140(r30)
002bb4  8b902010  add.s r1, r1, r2
002bb8  670e1fea  storeli.w r1, -2592(r30)
002bbc  e3007fe7  loadli.w r1,  -3144(r30)
002bc0  8b902010  add.s r1, r1, r2
002bc4  674e1fea  storeli.w r1, -2588(r30)
002bc8  e3406fe7  loadli.w r1,  -3148(r30)
002bcc  8b902010  add.s r1, r1, r2
002bd0  e70e1fea  storeli.w r1, -2584(r30)
002bd4  e3006fe7  loadli.w r1,  -3152(r30)
002bd8  8b902010  add.s r1, r1, r2
002bdc  e74e1fea  storeli.w r1, -2580(r30)
002be0  e3405fe7  loadli.w r1,  -3156(r30)
002be4  8b902010  add.s r1, r1, r2
002be8  670f1fea  storeli.w r1, -2576(r30)
002bec  e3005fe7  loadli.w r1,  -3160(r30)
002bf0  8b902010  add.s r1, r1, r2
002bf4  674f1fea  storeli.w r1, -2572(r30)
002bf8  e3404fe7  loadli.w r1,  -3164(r30)
002bfc  8b902010  add.s r1, r1, r2
002c00  e70f1fea  storeli.w r1, -2568(r30)
002c04  e3004fe7  loadli.w r1,  -3168(r30)
002c08  8b902010  add.s r1, r1, r2
002c0c  e74f1fea  storeli.w r1, -2564(r30)
002c10  e3403fe7  loadli.w r1,  -3172(r30)
002c14  8b902010  add.s r1, r1, r2
002c18  67001fec  storeli.w r1, -2560(r30)
002c1c  e3003fe7  loadli.w r1,  -3176(r30)
002c20  8b902010  add.s r1, r1, r2
002c24  67401fec  storeli.w r1, -2556(r30)
002c28  e3402fe7  loadli.w r1,  -3180(r30)
002c2c  8b902010  add.s r1, r1, r2
002c30  e7001fec  storeli.w r1, -2552(r30)
002c34  e3002fe7  loadli.w r1,  -3184(r30)
002c38  8b902010  add.s r1, r1, r2
002c3c  e7401fec  storeli.w r1, -2548(r30)
002c40  e3401fe7  loadli.w r1,  -3188(r30)
002c44  8b902010  add.s r1, r1, r2
002c48  67011fec  storeli.w r1, -2544(r30)
002c4c  e3001fe7  loadli.w r1,  -3192(r30)
002c50  8b902010  add.s r1, r1, r2
002c54  67411fec  storeli.w r1, -2540(r30)
002c58  e3400fe7  loadli.w r1,  -3196(r30)
002c5c  8b902010  add.s r1, r1, r2
002c60  e7011fec  storeli.w r1, -2536(r30)
002c64  e3000fe7  loadli.w r1,  -3200(r30)
002c68  8b902010  add.s r1, r1, r2
002c6c  e7411fec  storeli.w r1, -2532(r30)
002c70  e340ffe6  loadli.w r1,  -3204(r30)
002c74  8b902010  add.s r1, r1, r2
002c78  67021fec  storeli.w r1, -2528(r30)
002c7c  e300ffe6  loadli.w r1,  -3208(r30)
002c80  8b902010  add.s r1, r1, r2
002c84  67421fec  storeli.w r1, -2524(r30)
002c88  e340efe6  loadli.w r1,  -3212(r30)
002c8c  8b902010  add.s r1, r1, r2
002c90  e7021fec  storeli.w r1, -2520(r30)
002c94  e300efe6  loadli.w r1,  -3216(r30)
002c98  8b902010  add.s r1, r1, r2
002c9c  e7421fec  storeli.w r1, -2516(r30)
002ca0  e340dfe6  loadli.w r1,  -3220(r30)
002ca4  8b902010  add.s r1, r1, r2
002ca8  67031fec  storeli.w r1, -2512(r30)
002cac  e300dfe6  loadli.w r1,  -3224(r30)
002cb0  8b902010  add.s r1, r1, r2
002cb4  67431fec  storeli.w r1, -2508(r30)
002cb8  e340cfe6  loadli.w r1,  -3228(r30)
002cbc  8b902010  add.s r1, r1, r2
002cc0  e7031fec  storeli.w r1, -2504(r30)
002cc4  e300cfe6  loadli.w r1,  -3232(r30)
002cc8  8b902010  add.s r1, r1, r2
002ccc  e7431fec  storeli.w r1, -2500(r30)
002cd0  e340bfe6  loadli.w r1,  -3236(r30)
002cd4  8b902010  add.s r1, r1, r2
002cd8  67041fec  storeli.w r1, -2496(r30)
002cdc  e300bfe6  loadli.w r1,  -3240(r30)
002ce0  8b902010  add.s r1, r1, r2
002ce4  67441fec  storeli.w r1, -2492(r30)
002ce8  e340afe6  loadli.w r1,  -3244(r30)
002cec  8b902010  add.s r1, r1, r2
002cf0  e7041fec  storeli.w r1, -2488(r30)
002cf4  e300afe6  loadli.w r1,  -3248(r30)
002cf8  8b902010  add.s r1, r1, r2
002cfc  e7441fec  storeli.w r1, -2484(r30)
002d00  e3409fe6  loadli.w r1,  -3252(r30)
002d04  8b902010  add.s r1, r1, r2
002d08  67051fec  storeli.w r1, -2480(r30)
002d0c  e3009fe6  loadli.w r1,  -3256(r30)
002d10  8b902010  add.s r1, r1, r2
002d14  67451fec  storeli.w r1, -2476(r30)
002d18  e3408fe6  loadli.w r1,  -3260(r30)
002d1c  8b902010  add.s r1, r1, r2
002d20  e7051fec  storeli.w r1, -2472(r30)
002d24  e3008fe6  loadli.w r1,  -3264(r30)
002d28  8b902010  add.s r1, r1, r2
002d2c  e7451fec  storeli.w r1, -2468(r30)
002d30  e3407fe6  loadli.w r1,  -3268(r30)
002d34  8b902010  add.s r1, r1, r2
002d38  67061fec  storeli.w r1, -2464(r30)
002d3c  e3007fe6  loadli.w r1,  -3272(r30)
002d40  8b902010  add.s r1, r1, r2
002d44  67461fec  storeli.w r1, -2460(r30)
002d48  e3406fe6  loadli.w r1,  -3276(r30)
002d4c  8b902010  add.s r1, r1, r2
002d50  e7061fec  storeli.w r1, -2456(r30)
002d54  e3006fe6  loadli.w r1,  -3280(r30)
002d58  8b902010  add.s r1, r1, r2
002d5c  e7461fec  storeli.w r1, -2452(r30)
002d60  e3405fe6  loadli.w r1,  -3284(r30)
002d64  8b902010  add.s r1, r1, r2
002d68  67071fec  storeli.w r1, -2448(r30)
002d6c  e3005fe6  loadli.w r1,  -3288(r30)
002d70  8b902010  add.s r1, r1, r2
002d74  67471fec  storeli.w r1, -2444(r30)
002d78  e3404fe6  loadli.w r1,  -3292(r30)
002d7c  8b902010  add.s r1, r1, r2
002d80  e7071fec  storeli.w r1, -2440(r30)
002d84  e3004fe6  loadli.w r1,  -3296(r30)
002d88  8b902010  add.s r1, r1, r2
002d8c  e7471fec  storeli.w r1, -2436(r30)
002d90  e3403fe6  loadli.w r1,  -3300(r30)
002d94  8b902010  add.s r1, r1, r2
002d98  67081fec  storeli.w r1, -2432(r30)
002d9c  e3003fe6  loadli.w r1,  -3304(r30)
002da0  8b902010  add.s r1, r1, r2
002da4  67481fec  storeli.w r1, -2428(r30)
002da8  e3402fe6  loadli.w r1,  -3308(r30)
002dac  8b902010  add.s r1, r1, r2
002db0  e7081fec  storeli.w r1, -2424(r30)
002db4  e3002fe6  loadli.w r1,  -3312(r30)
002db8  8b902010  add.s r1, r1, r2
002dbc  e7481fec  storeli.w r1, -2420(r30)
002dc0  e3401fe6  loadli.w r1,  -3316(r30)
002dc4  8b902010  add.s r1, r1, r2
002dc8  67091fec  storeli.w r1, -2416(r30)
002dcc  e3001fe6  loadli.w r1,  -3320(r30)
002dd0  8b902010  add.s r1, r1, r2
002dd4  67491fec  storeli.w r1, -2412(r30)
002dd8  e3400fe6  loadli.w r1,  -3324(r30)
002ddc  8b902010  add.s r1, r1, r2
002de0  e7091fec  storeli.w r1, -2408(r30)
002de4  e3000fe6  loadli.w r1,  -3328(r30)
002de8  8b902010  add.s r1, r1, r2
002dec  e7491fec  storeli.w r1, -2404(r30)
002df0  e340ffe5  loadli.w r1,  -3332(r30)
002df4  8b902010  add.s r1, r1, r2
002df8  670a1fec  storeli.w r1, -2400(r30)
002dfc  e300ffe5  loadli.w r1,  -3336(r30)
002e00  8b902010  add.s r1, r1, r2
002e04  674a1fec  storeli.w r1, -2396(r30)
002e08  e340efe5  loadli.w r1,  -3340(r30)
002e0c  8b902010  add.s r1, r1, r2
002e10  e70a1fec  storeli.w r1, -2392(r30)
002e14  e300efe5  loadli.w r1,  -3344(r30)
002e18  8b902010  add.s r1, r1, r2
002e1c  e74a1fec  storeli.w r1, -2388(r30)
002e20  e340dfe5  loadli.w r1,  -3348(r30)
002e24  8b902010  add.s r1, r1, r2
002e28  670b1fec  storeli.w r1, -2384(r30)
002e2c  e300dfe5  loadli.w r1,  -3352(r30)
002e30  8b902010  add.s r1, r1, r2
002e34  674b1fec  storeli.w r1, -2380(r30)
002e38  e340cfe5  loadli.w r1,  -3356(r30)
002e3c  8b902010  add.s r1, r1, r2
002e40  e70b1fec  storeli.w r1, -2376(r30)
002e44  e300cfe5  loadli.w r1,  -3360(r30)
002e48  8b902010  add.s r1, r1, r2
002e4c  e74b1fec  storeli.w r1, -2372(r30)
002e50  e340bfe5  loadli.w r1,  -3364(r30)
002e54  8b902010  add.s r1, r1, r2
002e58  674c1fec  storeli.w r1, -2364(r30)
002e5c  e300bfe5  loadli.w r1,  -3368(r30)
002e60  8b902010  add.s r1, r1, r2
002e64  670c1fec  storeli.w r1, -2368(r30)
002e68  e340afe5  loadli.w r1,  -3372(r30)
002e6c  8b902010  add.s r1, r1, r2
002e70  e70c1fec  storeli.w r1, -2360(r30)
002e74  e300afe5  loadli.w r1,  -3376(r30)
002e78  8b902010  add.s r1, r1, r2
002e7c  e74c1fec  storeli.w r1, -2356(r30)
002e80  e3409fe5  loadli.w r1,  -3380(r30)
002e84  8b902010  add.s r1, r1, r2
002e88  670d1fec  storeli.w r1, -2352(r30)
002e8c  e3009fe5  loadli.w r1,  -3384(r30)
002e90  8b902010  add.s r1, r1, r2
002e94  674d1fec  storeli.w r1, -2348(r30)
002e98  e3408fe5  loadli.w r1,  -3388(r30)
002e9c  8b902010  add.s r1, r1, r2
002ea0  e70d1fec  storeli.w r1, -2344(r30)
002ea4  e3008fe5  loadli.w r1,  -3392(r30)
002ea8  8b902010  add.s r1, r1, r2
002eac  e74d1fec  storeli.w r1, -2340(r30)
002eb0  e3407fe5  loadli.w r1,  -3396(r30)
002eb4  8b902010  add.s r1, r1, r2
002eb8  670e1fec  storeli.w r1, -2336(r30)
002ebc  db190000  j 204
002ec0  9f0b0000  addli r23, zero, 0
002ec4  1f010000  addli r2, zero, 0
002ec8  9f010000  addli r3, zero, 0
002ecc  1f020000  addli r4, zero, 0
002ed0  9f020000  addli r5, zero, 0
002ed4  9f030000  addli r7, zero, 0
002ed8  1f040000  addli r8, zero, 0
002edc  9f050000  addli r11, zero, 0
002ee0  1f060000  addli r12, zero, 0
002ee4  9f060000  addli r13, zero, 0
002ee8  1f070000  addli r14, zero, 0
002eec  9f080000  addli r17, zero, 0
002ef0  9f0c0000  addli r25, zero, 0
002ef4  1f0e0000  addli r28, zero, 0
002ef8  9f070000  addli r15, zero, 0
002efc  9f090000  addli r19, zero, 0
002f00  0b683810  add.f.rn r16, r16, r3
002f04  e3018fee  loadli.w r3,  -2240(r30)
002f08  63454fee  loadli.w r10,  -2268(r30)
002f0c  0b694910  add.f.rn r18, r18, r4
002f10  63027fee  loadli.w r4,  -2248(r30)
002f14  63036fee  loadli.w r6,  -2256(r30)
002f18  e3000fef  loadli.w r1,  -2176(r30)
002f1c  8bea2a10  add.f.rn r21, r21, r2
002f20  634a1fee  loadli.w r20,  -2292(r30)
002f24  8be15110  add.f.rn r3, r3, r5
002f28  e3426fee  loadli.w r5,  -2252(r30)
002f2c  0b627210  add.f.rn r4, r4, r7
002f30  e3435fee  loadli.w r7,  -2260(r30)
002f34  0b65e510  add.f.rn r10, r10, r14
002f38  63472fee  loadli.w r14,  -2284(r30)
002f3c  0b63b310  add.f.rn r6, r6, r11
002f40  e3054fee  loadli.w r11,  -2272(r30)
002f44  8be07011  add.f.rn r1, r1, r23
002f48  1f0a8a00  addli r20, r20, 64
002f4c  8be28210  add.f.rn r5, r5, r8
002f50  63045fee  loadli.w r8,  -2264(r30)
002f54  8be3c310  add.f.rn r7, r7, r12
002f58  63463fee  loadli.w r12,  -2276(r30)
002f5c  0b67f710  add.f.rn r14, r14, r15
002f60  e3072fee  loadli.w r15,  -2288(r30)
002f64  8be51511  add.f.rn r11, r11, r17
002f68  0b64d410  add.f.rn r8, r8, r13
002f6c  e3063fee  loadli.w r13,  -2280(r30)
002f70  0b669611  add.f.rn r12, r12, r25
002f74  8be73711  add.f.rn r15, r15, r19
002f78  67081fee  storeli.w r1, -2176(r30)
002f7c  9f000004  addli r1, zero, 512
002f80  8be6c611  add.f.rn r13, r13, r28
002f84  37591a02  beq r20, r1, 1620
002f88  67043fee  storeli.w r3, -2240(r30)
002f8c  8b114c11  add.s r3, r24, r20
002f90  e7034fee  storeli.w r4, -2248(r30)
002f94  9230b002  vadd.s.mz vr1{mr1}, zero, vr11
002f98  9f1b0000  addli r23, zero, 1
002f9c  67435fee  storeli.w r5, -2252(r30)
002fa0  6701ffee  storeli.w r15, -2288(r30)
002fa4  6741efee  storeli.w r14, -2284(r30)
002fa8  e701dfee  storeli.w r13, -2280(r30)
002fac  e741cfee  storeli.w r12, -2276(r30)
002fb0  6702bfee  storeli.w r11, -2272(r30)
002fb4  e7028fee  storeli.w r8, -2264(r30)
002fb8  e7427fee  storeli.w r7, -2260(r30)
002fbc  1231b002  vadd.s.mz vr2{mr1}, zero, vr11
002fc0  6bb20100  load.hu r4, 0(r3)
002fc4  ebb22100  load.hu r5, 2(r3)
002fc8  7e810be0  vmmov mr2, r23
002fcc  6bb1a101  load.hu r2, 26(r3)
002fd0  ebb0c101  load.hu r1, 28(r3)
002fd4  ebb34100  load.hu r7, 4(r3)
002fd8  6bb46100  load.hu r8, 6(r3)
002fdc  ebb58100  load.hu r11, 8(r3)
002fe0  6bb6a100  load.hu r12, 10(r3)
002fe4  ebb6c100  load.hu r13, 12(r3)
002fe8  6bb7e100  load.hu r14, 14(r3)
002fec  ebb70101  load.hu r15, 16(r3)
002ff0  ebb82101  load.hu r17, 18(r3)
002ff4  ebb94101  load.hu r19, 20(r3)
002ff8  ebbc6101  load.hu r25, 22(r3)
002ffc  6bbe8101  load.hu r28, 24(r3)
003000  ebb1e101  load.hu r3, 30(r3)
003004  33120218  bfloat2float.rn r4, r4
003008  33110118  bfloat2float.rn r2, r2
00300c  b3900018  bfloat2float.rn r1, r1
003010  ea201234  vor.u.mh vr1{mr2}, r4, vr1
003014  33920218  bfloat2float.rn r4, r5
003018  9f220000  addli r5, zero, 2
00301c  fe8102e0  vmmov mr3, r5
003020  9f420000  addli r5, zero, 4
003024  ea201236  vor.u.mh vr1{mr3}, r4, vr1
003028  33920318  bfloat2float.rn r4, r7
00302c  7e8002e0  vmmov mr0, r5
003030  9f021000  addli r5, zero, 8
003034  ea201230  vor.u.mh vr1{mr0}, r4, vr1
003038  33120418  bfloat2float.rn r4, r8
00303c  7e8002e0  vmmov mr0, r5
003040  9f022000  addli r5, zero, 16
003044  ea201230  vor.u.mh vr1{mr0}, r4, vr1
003048  33920518  bfloat2float.rn r4, r11
00304c  7e8002e0  vmmov mr0, r5
003050  9f024000  addli r5, zero, 32
003054  ea201230  vor.u.mh vr1{mr0}, r4, vr1
003058  33120618  bfloat2float.rn r4, r12
00305c  7e8002e0  vmmov mr0, r5
003060  9f028000  addli r5, zero, 64
003064  ea201230  vor.u.mh vr1{mr0}, r4, vr1
003068  33920618  bfloat2float.rn r4, r13
00306c  7e8002e0  vmmov mr0, r5
003070  9f020001  addli r5, zero, 128
003074  ea201230  vor.u.mh vr1{mr0}, r4, vr1
003078  33120718  bfloat2float.rn r4, r14
00307c  7e8002e0  vmmov mr0, r5
003080  9f020002  addli r5, zero, 256
003084  ea201230  vor.u.mh vr1{mr0}, r4, vr1
003088  33920718  bfloat2float.rn r4, r15
00308c  7e8002e0  vmmov mr0, r5
003090  9f020004  addli r5, zero, 512
003094  ea201230  vor.u.mh vr1{mr0}, r4, vr1
003098  33920818  bfloat2float.rn r4, r17
00309c  7e8002e0  vmmov mr0, r5
0030a0  9f020008  addli r5, zero, 1024
0030a4  ea201230  vor.u.mh vr1{mr0}, r4, vr1
0030a8  33920918  bfloat2float.rn r4, r19
0030ac  7e8002e0  vmmov mr0, r5
0030b0  9f020010  addli r5, zero, 2048
0030b4  ea201230  vor.u.mh vr1{mr0}, r4, vr1
0030b8  33920c18  bfloat2float.rn r4, r25
0030bc  7e8002e0  vmmov mr0, r5
0030c0  9f020020  addli r5, zero, 4096
0030c4  ea201230  vor.u.mh vr1{mr0}, r4, vr1
0030c8  33120e18  bfloat2float.rn r4, r28
0030cc  7e8002e0  vmmov mr0, r5
0030d0  ea201230  vor.u.mh vr1{mr0}, r4, vr1
0030d4  1f020040  addli r4, zero, 8192
0030d8  7e0002e0  vmmov mr0, r4
0030dc  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0030e0  2b410000  lui r2, 4
0030e4  7e0001e0  vmmov mr0, r2
0030e8  1f010ffa  addli r2, r30, -768
0030ec  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0030f0  b3900118  bfloat2float.rn r1, r3
0030f4  ab810000  lui r3, 8
0030f8  0b114111  add.s r2, r2, r20
0030fc  e7404fef  storeli.w r20, -2292(r30)
003100  7e8001e0  vmmov mr0, r3
003104  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
003108  eb300100  load.hu r1, 0(r2)
00310c  eb312100  load.hu r3, 2(r2)
003110  6b324100  load.hu r4, 4(r2)
003114  eb326100  load.hu r5, 6(r2)
003118  eb338100  load.hu r7, 8(r2)
00311c  6b34a100  load.hu r8, 10(r2)
003120  eb35c100  load.hu r11, 12(r2)
003124  6b36e100  load.hu r12, 14(r2)
003128  eb360101  load.hu r13, 16(r2)
00312c  6b372101  load.hu r14, 18(r2)
003130  eb374101  load.hu r15, 20(r2)
003134  eb386101  load.hu r17, 22(r2)
003138  eb398101  load.hu r19, 24(r2)
00313c  eb3ca101  load.hu r25, 26(r2)
003140  6b3ec101  load.hu r28, 28(r2)
003144  6b31e101  load.hu r2, 30(r2)
003148  b3900018  bfloat2float.rn r1, r1
00314c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003150  b3900118  bfloat2float.rn r1, r3
003154  9f410000  addli r3, zero, 4
003158  7e8101e0  vmmov mr2, r3
00315c  9f011000  addli r3, zero, 8
003160  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
003164  b3100218  bfloat2float.rn r1, r4
003168  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00316c  b3900218  bfloat2float.rn r1, r5
003170  7e8101e0  vmmov mr2, r3
003174  9f012000  addli r3, zero, 16
003178  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00317c  b3900318  bfloat2float.rn r1, r7
003180  7e8101e0  vmmov mr2, r3
003184  9f014000  addli r3, zero, 32
003188  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00318c  b3100418  bfloat2float.rn r1, r8
003190  7e8101e0  vmmov mr2, r3
003194  9f018000  addli r3, zero, 64
003198  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00319c  b3900518  bfloat2float.rn r1, r11
0031a0  7e8101e0  vmmov mr2, r3
0031a4  9f010001  addli r3, zero, 128
0031a8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0031ac  b3100618  bfloat2float.rn r1, r12
0031b0  7e8101e0  vmmov mr2, r3
0031b4  9f010002  addli r3, zero, 256
0031b8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0031bc  b3900618  bfloat2float.rn r1, r13
0031c0  7e8101e0  vmmov mr2, r3
0031c4  9f010004  addli r3, zero, 512
0031c8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0031cc  b3100718  bfloat2float.rn r1, r14
0031d0  7e8101e0  vmmov mr2, r3
0031d4  9f010008  addli r3, zero, 1024
0031d8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0031dc  b3900718  bfloat2float.rn r1, r15
0031e0  7e8101e0  vmmov mr2, r3
0031e4  9f010010  addli r3, zero, 2048
0031e8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0031ec  b3900818  bfloat2float.rn r1, r17
0031f0  7e8101e0  vmmov mr2, r3
0031f4  9f010020  addli r3, zero, 4096
0031f8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0031fc  b3900918  bfloat2float.rn r1, r19
003200  7e8101e0  vmmov mr2, r3
003204  9f010040  addli r3, zero, 8192
003208  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00320c  b3900c18  bfloat2float.rn r1, r25
003210  7e8101e0  vmmov mr2, r3
003214  ab410000  lui r3, 4
003218  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00321c  b3100e18  bfloat2float.rn r1, r28
003220  7e8101e0  vmmov mr2, r3
003224  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003228  b3100118  bfloat2float.rn r1, r2
00322c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003230  9f000ff0  addli r1, r30, -2048
003234  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
003238  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00323c  00a00000  mfence { lm }
003240  e3090ff0  loadli.w r19,  -2048(r30)
003244  e3470ff0  loadli.w r15,  -2044(r30)
003248  63071ff0  loadli.w r14,  -2040(r30)
00324c  e3451ff0  loadli.w r11,  -2036(r30)
003250  e3002ff0  loadli.w r1,  -2032(r30)
003254  63462ff0  loadli.w r12,  -2028(r30)
003258  e3013ff0  loadli.w r3,  -2024(r30)
00325c  e3433ff0  loadli.w r7,  -2020(r30)
003260  e3024ff0  loadli.w r5,  -2016(r30)
003264  63414ff0  loadli.w r2,  -2012(r30)
003268  63025ff0  loadli.w r4,  -2008(r30)
00326c  634e5ff0  loadli.w r28,  -2004(r30)
003270  e3086ff0  loadli.w r17,  -2000(r30)
003274  17846901  and r8, r19, r22
003278  130a8d04  setlt.u r20, r26, r8
00327c  63446ff0  loadli.w r8,  -1996(r30)
003280  e30c7ff0  loadli.w r25,  -1992(r30)
003284  e3467ff0  loadli.w r13,  -1988(r30)
003288  3b600a00  bneq r20, zero, 24
00328c  1bca0901  srli r20, r19, 16
003290  1b0a1a00  andi r20, r20, 1
003294  8b994911  add.s r19, r19, r20
003298  0b9a9910  add.s r20, r19, r9
00329c  5b010000  j 8
0032a0  179ab901  or r20, r19, r27
0032a4  97896701  and r19, r15, r22
0032a8  93093d05  setlt.u r19, r26, r19
0032ac  3be00900  bneq r19, zero, 24
0032b0  9bc90701  srli r19, r15, 16
0032b4  9b891900  andi r19, r19, 1
0032b8  8b973711  add.s r15, r15, r19
0032bc  8b999710  add.s r19, r15, r9
0032c0  5b010000  j 8
0032c4  9799b701  or r19, r15, r27
0032c8  97076701  and r15, r14, r22
0032cc  9307fd04  setlt.u r15, r26, r15
0032d0  3be00700  bneq r15, zero, 24
0032d4  9b470701  srli r15, r14, 16
0032d8  9b871700  andi r15, r15, 1
0032dc  0b17f710  add.s r14, r14, r15
0032e0  8b1b9710  add.s r23, r14, r9
0032e4  5b010000  j 8
0032e8  971bb701  or r23, r14, r27
0032ec  17876501  and r14, r11, r22
0032f0  1307ed04  setlt.u r14, r26, r14
0032f4  3b600700  bneq r14, zero, 24
0032f8  1bc70501  srli r14, r11, 16
0032fc  1b071700  andi r14, r14, 1
003300  8b95e510  add.s r11, r11, r14
003304  8b959510  add.s r11, r11, r9
003308  5b010000  j 8
00330c  9795b501  or r11, r11, r27
003310  e700bfee  storeli.w r11, -2296(r30)
003314  97856001  and r11, r1, r22
003318  9305bd04  setlt.u r11, r26, r11
00331c  3be00500  bneq r11, zero, 24
003320  9bc50001  srli r11, r1, 16
003324  9b851500  andi r11, r11, 1
003328  8b90b010  add.s r1, r1, r11
00332c  8b909010  add.s r1, r1, r9
003330  5b010000  j 8
003334  9790b001  or r1, r1, r27
003338  97056601  and r11, r12, r22
00333c  9305bd04  setlt.u r11, r26, r11
003340  3be00500  bneq r11, zero, 24
003344  9b450601  srli r11, r12, 16
003348  9b851500  andi r11, r11, 1
00334c  8b15b610  add.s r11, r12, r11
003350  0b969510  add.s r12, r11, r9
003354  5b010000  j 8
003358  1716b601  or r12, r12, r27
00335c  97856101  and r11, r3, r22
003360  9305bd04  setlt.u r11, r26, r11
003364  3be00500  bneq r11, zero, 24
003368  9bc50101  srli r11, r3, 16
00336c  9b851500  andi r11, r11, 1
003370  8b91b110  add.s r3, r3, r11
003374  8b919110  add.s r3, r3, r9
003378  5b010000  j 8
00337c  9791b101  or r3, r3, r27
003380  97856301  and r11, r7, r22
003384  9305bd04  setlt.u r11, r26, r11
003388  3be00500  bneq r11, zero, 24
00338c  9bc50301  srli r11, r7, 16
003390  9b851500  andi r11, r11, 1
003394  8b93b310  add.s r7, r7, r11
003398  8b939310  add.s r7, r7, r9
00339c  5b010000  j 8
0033a0  9793b301  or r7, r7, r27
0033a4  97856201  and r11, r5, r22
0033a8  9305bd04  setlt.u r11, r26, r11
0033ac  3be00500  bneq r11, zero, 24
0033b0  9bc50201  srli r11, r5, 16
0033b4  9b851500  andi r11, r11, 1
0033b8  8b92b210  add.s r5, r5, r11
0033bc  8b929210  add.s r5, r5, r9
0033c0  5b010000  j 8
0033c4  9792b201  or r5, r5, r27
0033c8  97056101  and r11, r2, r22
0033cc  9305bd04  setlt.u r11, r26, r11
0033d0  3be00500  bneq r11, zero, 24
0033d4  9b450101  srli r11, r2, 16
0033d8  9b851500  andi r11, r11, 1
0033dc  0b11b110  add.s r2, r2, r11
0033e0  0b119110  add.s r2, r2, r9
0033e4  5b010000  j 8
0033e8  1711b101  or r2, r2, r27
0033ec  97056201  and r11, r4, r22
0033f0  9305bd04  setlt.u r11, r26, r11
0033f4  3be00500  bneq r11, zero, 24
0033f8  9b450201  srli r11, r4, 16
0033fc  9b851500  andi r11, r11, 1
003400  0b12b210  add.s r4, r4, r11
003404  0b129210  add.s r4, r4, r9
003408  5b010000  j 8
00340c  1712b201  or r4, r4, r27
003410  97056e01  and r11, r28, r22
003414  9305bd04  setlt.u r11, r26, r11
003418  3be00500  bneq r11, zero, 24
00341c  9b450e01  srli r11, r28, 16
003420  9b851500  andi r11, r11, 1
003424  8b15be10  add.s r11, r28, r11
003428  0b9e9510  add.s r28, r11, r9
00342c  5b010000  j 8
003430  171ebe01  or r28, r28, r27
003434  97856801  and r11, r17, r22
003438  9305bd04  setlt.u r11, r26, r11
00343c  3be00500  bneq r11, zero, 24
003440  9bc50801  srli r11, r17, 16
003444  9b851500  andi r11, r11, 1
003448  8b95b810  add.s r11, r17, r11
00344c  8b959510  add.s r11, r11, r9
003450  5b010000  j 8
003454  9795b801  or r11, r17, r27
003458  17076401  and r14, r8, r22
00345c  1307ed04  setlt.u r14, r26, r14
003460  3b600700  bneq r14, zero, 24
003464  1b470401  srli r14, r8, 16
003468  1b071700  andi r14, r14, 1
00346c  0b14e410  add.s r8, r8, r14
003470  0b149410  add.s r8, r8, r9
003474  5b010000  j 8
003478  1714b401  or r8, r8, r27
00347c  17876c01  and r14, r25, r22
003480  1307ed04  setlt.u r14, r26, r14
003484  3b600700  bneq r14, zero, 24
003488  1bc70c01  srli r14, r25, 16
00348c  1b071700  andi r14, r14, 1
003490  0b97ec10  add.s r14, r25, r14
003494  0b179710  add.s r14, r14, r9
003498  5b010000  j 8
00349c  1797bc01  or r14, r25, r27
0034a0  97876601  and r15, r13, r22
0034a4  67036fee  storeli.w r6, -2256(r30)
0034a8  6742afee  storeli.w r10, -2268(r30)
0034ac  9307fd04  setlt.u r15, r26, r15
0034b0  3be00700  bneq r15, zero, 24
0034b4  9bc70601  srli r15, r13, 16
0034b8  9b871700  andi r15, r15, 1
0034bc  8b96f610  add.s r13, r13, r15
0034c0  8b969610  add.s r13, r13, r9
0034c4  5b010000  j 8
0034c8  9796b601  or r13, r13, r27
0034cc  6305efef  loadli.w r10,  -2064(r30)
0034d0  1f030004  addli r6, zero, 512
0034d4  3f206500  blt.s r10, r6, 8
0034d8  5b3dffff  j -1560
0034dc  e3041fee  loadli.w r9,  -2296(r30)
0034e0  2b03ffff  lui r6, 1048560
0034e4  e7002fef  storeli.w r18, -2296(r30)
0034e8  63490fee  loadli.w r18,  -2300(r30)
0034ec  97076a00  and r15, r20, r6
0034f0  97886900  and r17, r19, r6
0034f4  97896b00  and r19, r23, r6
0034f8  17066600  and r12, r12, r6
0034fc  970c6e00  and r25, r28, r6
003500  97806000  and r1, r1, r6
003504  97836300  and r7, r7, r6
003508  97826200  and r5, r5, r6
00350c  17026200  and r4, r4, r6
003510  97856500  and r11, r11, r6
003514  17076700  and r14, r14, r6
003518  97816100  and r3, r3, r6
00351c  17016100  and r2, r2, r6
003520  17046400  and r8, r8, r6
003524  97866600  and r13, r13, r6
003528  178a6400  and r20, r9, r6
00352c  8be72719  sub.f.rn r15, r15, r18
003530  0bee2019  sub.f.rn r28, r1, r18
003534  9f000800  addli r1, r16, 0
003538  1f880a00  addli r16, r21, 0
00353c  0bec2219  sub.f.rn r24, r5, r18
003540  8be82819  sub.f.rn r17, r17, r18
003544  0b632119  sub.f.rn r6, r2, r18
003548  8be92919  sub.f.rn r19, r19, r18
00354c  8bea2119  sub.f.rn r21, r3, r18
003550  8b642419  sub.f.rn r9, r8, r18
003554  0b662619  sub.f.rn r12, r12, r18
003558  0beb2319  sub.f.rn r22, r7, r18
00355c  8bed2519  sub.f.rn r27, r11, r18
003560  0b6d2219  sub.f.rn r26, r4, r18
003564  0b652719  sub.f.rn r10, r14, r18
003568  8bec2c19  sub.f.rn r25, r25, r18
00356c  0b6a2a19  sub.f.rn r20, r20, r18
003570  0be92619  sub.f.rn r18, r13, r18
003574  8be13921  mul.f.rn r3, r19, r19
003578  8b62ce21  mul.f.rn r5, r28, r28
00357c  8b656b21  mul.f.rn r11, r22, r22
003580  0bee9420  mul.f.rn r28, r9, r9
003584  634bffef  loadli.w r22,  -2052(r30)
003588  e304ffef  loadli.w r9,  -2056(r30)
00358c  8bebf720  mul.f.rn r23, r15, r15
003590  0be11821  mul.f.rn r2, r17, r17
003594  8b63c620  mul.f.rn r7, r12, r12
003598  0be45a21  mul.f.rn r8, r21, r21
00359c  9f0a0800  addli r21, r16, 0
0035a0  0b668c21  mul.f.rn r12, r24, r24
0035a4  0b67ad21  mul.f.rn r14, r26, r26
0035a8  8be89c21  mul.f.rn r17, r25, r25
0035ac  8becbd21  mul.f.rn r25, r27, r27
0035b0  1f880000  addli r16, r1, 0
0035b4  1f0c0ff8  addli r24, r30, -1024
0035b8  8b666320  mul.f.rn r13, r6, r6
0035bc  2b0d807f  lui r26, 522240
0035c0  ab0d4000  lui r27, 1024
0035c4  8b67a520  mul.f.rn r15, r10, r10
0035c8  8b692921  mul.f.rn r19, r18, r18
0035cc  63091fee  loadli.w r18,  -2296(r30)
0035d0  0b624a21  mul.f.rn r4, r20, r20
0035d4  db25ffff  j -1748
0035d8  e3000fef  loadli.w r1,  -2176(r30)
0035dc  6301bfe9  loadli.w r2,  -2856(r30)
0035e0  8be05011  add.f.rn r1, r1, r21
0035e4  8be00011  add.f.rn r1, r1, r16
0035e8  8be02011  add.f.rn r1, r1, r18
0035ec  8be03010  add.f.rn r1, r1, r3
0035f0  8be04010  add.f.rn r1, r1, r4
0035f4  8be05010  add.f.rn r1, r1, r5
0035f8  8be06010  add.f.rn r1, r1, r6
0035fc  8be07010  add.f.rn r1, r1, r7
003600  8be08010  add.f.rn r1, r1, r8
003604  8be0a010  add.f.rn r1, r1, r10
003608  8be0b010  add.f.rn r1, r1, r11
00360c  8be0c010  add.f.rn r1, r1, r12
003610  8be0d010  add.f.rn r1, r1, r13
003614  8be0e010  add.f.rn r1, r1, r14
003618  8be0f010  add.f.rn r1, r1, r15
00361c  73601100  stores.w r1, 0(r2)
003620  00a00300  mfence { lm, sm, gm }
003624  63020fee  loadli.w r4,  -2304(r30)
003628  80210204  csr_set csr3, r4
00362c  00d00100  sync_group
003630  e340ffed  loadli.w r1,  -2308(r30)
003634  3ba10000  bneq r1, zero, 72
003638  e302cfe9  loadli.w r5,  -2848(r30)
00363c  efc00200  loads.w r1, 0(r5)
003640  6fc14200  loads.w r2, 4(r5)
003644  efc18200  loads.w r3, 8(r5)
003648  8be02010  add.f.rn r1, r1, r2
00364c  6fc1c200  loads.w r2, 12(r5)
003650  8be03010  add.f.rn r1, r1, r3
003654  efc10201  loads.w r3, 16(r5)
003658  8be02010  add.f.rn r1, r1, r2
00365c  6fc14201  loads.w r2, 20(r5)
003660  8be03010  add.f.rn r1, r1, r3
003664  efc18201  loads.w r3, 24(r5)
003668  8be02010  add.f.rn r1, r1, r2
00366c  6fc1c201  loads.w r2, 28(r5)
003670  8be03010  add.f.rn r1, r1, r3
003674  8be02010  add.f.rn r1, r1, r2
003678  73e01200  stores.w r1, 0(r5)
00367c  00a00300  mfence { lm, sm, gm }
003680  80210204  csr_set csr3, r4
003684  00d00100  sync_group
003688  e300cfe9  loadli.w r1,  -2848(r30)
00368c  2b01803a  lui r2, 239616
003690  63480fee  loadli.w r16,  -2300(r30)
003694  1f022c00  addli r4, r24, 16
003698  9f020000  addli r5, zero, 0
00369c  efc00000  loads.w r1, 0(r1)
0036a0  8be02020  mul.f.rn r1, r1, r2
0036a4  6301efe8  loadli.w r2,  -2960(r30)
0036a8  8be02010  add.f.rn r1, r1, r2
0036ac  2b01803f  lui r2, 260096
0036b0  8f800008  sqrt.f.rn r1, r1
0036b4  8f011118  div.f.rn r3, r2, r1
0036b8  5b2e0000  j 368
0036bc  1b490301  srli r18, r6, 16
0036c0  1b091900  andi r18, r18, 1
0036c4  0b132311  add.s r6, r6, r18
0036c8  6309ffef  loadli.w r18,  -2056(r30)
0036cc  0b132311  add.s r6, r6, r18
0036d0  ab0bffff  lui r23, 1048560
0036d4  9f828200  addli r5, r5, 64
0036d8  97807001  and r1, r1, r23
0036dc  17057501  and r10, r10, r23
0036e0  17017101  and r2, r2, r23
0036e4  17067601  and r12, r12, r23
0036e8  97877701  and r15, r15, r23
0036ec  17897901  and r18, r19, r23
0036f0  97897a01  and r19, r21, r23
0036f4  170a7a01  and r20, r20, r23
0036f8  97887801  and r17, r17, r23
0036fc  17077701  and r14, r14, r23
003700  97867601  and r13, r13, r23
003704  97857501  and r11, r11, r23
003708  17047401  and r8, r8, r23
00370c  97837301  and r7, r7, r23
003710  97847401  and r9, r9, r23
003714  17037301  and r6, r6, r23
003718  8be00019  sub.f.rn r1, r1, r16
00371c  0b650519  sub.f.rn r10, r10, r16
003720  0b610119  sub.f.rn r2, r2, r16
003724  0b660619  sub.f.rn r12, r12, r16
003728  8be70719  sub.f.rn r15, r15, r16
00372c  0b690919  sub.f.rn r18, r18, r16
003730  8be90919  sub.f.rn r19, r19, r16
003734  0b6a0a19  sub.f.rn r20, r20, r16
003738  8be80819  sub.f.rn r17, r17, r16
00373c  0b670719  sub.f.rn r14, r14, r16
003740  8be60619  sub.f.rn r13, r13, r16
003744  8be50519  sub.f.rn r11, r11, r16
003748  0b640419  sub.f.rn r8, r8, r16
00374c  8be30319  sub.f.rn r7, r7, r16
003750  8be40419  sub.f.rn r9, r9, r16
003754  0b630319  sub.f.rn r6, r6, r16
003758  8be01120  mul.f.rn r1, r3, r1
00375c  0be12120  mul.f.rn r2, r3, r2
003760  0be5a120  mul.f.rn r10, r3, r10
003764  0be6c120  mul.f.rn r12, r3, r12
003768  8be7f120  mul.f.rn r15, r3, r15
00376c  0be92121  mul.f.rn r18, r3, r18
003770  8be93121  mul.f.rn r19, r3, r19
003774  0bea4121  mul.f.rn r20, r3, r20
003778  8be81121  mul.f.rn r17, r3, r17
00377c  0be7e120  mul.f.rn r14, r3, r14
003780  8be6d120  mul.f.rn r13, r3, r13
003784  8be5b120  mul.f.rn r11, r3, r11
003788  0be48120  mul.f.rn r8, r3, r8
00378c  8be37120  mul.f.rn r7, r3, r7
003790  8be49120  mul.f.rn r9, r3, r9
003794  0be36120  mul.f.rn r6, r3, r6
003798  b3900000  float2bfloat.rn r1, r1
00379c  33110100  float2bfloat.rn r2, r2
0037a0  b3930300  float2bfloat.rn r7, r7
0037a4  731812fe  store.h r1, -16(r4)
0037a8  b3100500  float2bfloat.rn r1, r10
0037ac  731b22fe  store.h r2, -10(r4)
0037b0  33910700  float2bfloat.rn r2, r15
0037b4  731972fe  store.h r7, -14(r4)
0037b8  731a12fe  store.h r1, -12(r4)
0037bc  b3100600  float2bfloat.rn r1, r12
0037c0  731d22fe  store.h r2, -6(r4)
0037c4  33910900  float2bfloat.rn r2, r19
0037c8  731c12fe  store.h r1, -8(r4)
0037cc  b3100900  float2bfloat.rn r1, r18
0037d0  731f22fe  store.h r2, -2(r4)
0037d4  33910800  float2bfloat.rn r2, r17
0037d8  731e12fe  store.h r1, -4(r4)
0037dc  b3100a00  float2bfloat.rn r1, r20
0037e0  73112200  store.h r2, 2(r4)
0037e4  33910600  float2bfloat.rn r2, r13
0037e8  73101200  store.h r1, 0(r4)
0037ec  b3100700  float2bfloat.rn r1, r14
0037f0  73132200  store.h r2, 6(r4)
0037f4  33110400  float2bfloat.rn r2, r8
0037f8  73121200  store.h r1, 4(r4)
0037fc  b3900500  float2bfloat.rn r1, r11
003800  73152200  store.h r2, 10(r4)
003804  33110300  float2bfloat.rn r2, r6
003808  73141200  store.h r1, 8(r4)
00380c  b3900400  float2bfloat.rn r1, r9
003810  73172200  store.h r2, 14(r4)
003814  73161200  store.h r1, 12(r4)
003818  1f024200  addli r4, r4, 32
00381c  9f000004  addli r1, zero, 512
003820  00a00000  mfence { lm }
003824  379712e6  beq r5, r1, -12860
003828  0b135c10  add.s r6, r24, r5
00382c  9230b002  vadd.s.mz vr1{mr1}, zero, vr11
003830  9f1a0000  addli r21, zero, 1
003834  1231b002  vadd.s.mz vr2{mr1}, zero, vr11
003838  eb330300  load.hu r7, 0(r6)
00383c  6b342300  load.hu r8, 2(r6)
003840  7e810ae0  vmmov mr2, r21
003844  6b31a301  load.hu r2, 26(r6)
003848  eb30c301  load.hu r1, 28(r6)
00384c  eb344300  load.hu r9, 4(r6)
003850  6b356300  load.hu r10, 6(r6)
003854  eb358300  load.hu r11, 8(r6)
003858  6b36a300  load.hu r12, 10(r6)
00385c  eb36c300  load.hu r13, 12(r6)
003860  6b37e300  load.hu r14, 14(r6)
003864  eb370301  load.hu r15, 16(r6)
003868  eb382301  load.hu r17, 18(r6)
00386c  6b394301  load.hu r18, 20(r6)
003870  eb396301  load.hu r19, 22(r6)
003874  6b3a8301  load.hu r20, 24(r6)
003878  6b33e301  load.hu r6, 30(r6)
00387c  b3930318  bfloat2float.rn r7, r7
003880  33110118  bfloat2float.rn r2, r2
003884  b3900018  bfloat2float.rn r1, r1
003888  eaa01334  vor.u.mh vr1{mr2}, r7, vr1
00388c  b3130418  bfloat2float.rn r7, r8
003890  1f240000  addli r8, zero, 2
003894  fe0104e0  vmmov mr3, r8
003898  1f440000  addli r8, zero, 4
00389c  eaa01336  vor.u.mh vr1{mr3}, r7, vr1
0038a0  b3930418  bfloat2float.rn r7, r9
0038a4  7e0004e0  vmmov mr0, r8
0038a8  1f041000  addli r8, zero, 8
0038ac  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
0038b0  b3130518  bfloat2float.rn r7, r10
0038b4  7e0004e0  vmmov mr0, r8
0038b8  1f042000  addli r8, zero, 16
0038bc  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
0038c0  b3930518  bfloat2float.rn r7, r11
0038c4  7e0004e0  vmmov mr0, r8
0038c8  1f044000  addli r8, zero, 32
0038cc  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
0038d0  b3130618  bfloat2float.rn r7, r12
0038d4  7e0004e0  vmmov mr0, r8
0038d8  1f048000  addli r8, zero, 64
0038dc  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
0038e0  b3930618  bfloat2float.rn r7, r13
0038e4  7e0004e0  vmmov mr0, r8
0038e8  1f040001  addli r8, zero, 128
0038ec  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
0038f0  b3130718  bfloat2float.rn r7, r14
0038f4  7e0004e0  vmmov mr0, r8
0038f8  1f040002  addli r8, zero, 256
0038fc  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
003900  b3930718  bfloat2float.rn r7, r15
003904  7e0004e0  vmmov mr0, r8
003908  1f040004  addli r8, zero, 512
00390c  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
003910  b3930818  bfloat2float.rn r7, r17
003914  7e0004e0  vmmov mr0, r8
003918  1f040008  addli r8, zero, 1024
00391c  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
003920  b3130918  bfloat2float.rn r7, r18
003924  7e0004e0  vmmov mr0, r8
003928  1f040010  addli r8, zero, 2048
00392c  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
003930  b3930918  bfloat2float.rn r7, r19
003934  7e0004e0  vmmov mr0, r8
003938  1f040020  addli r8, zero, 4096
00393c  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
003940  b3130a18  bfloat2float.rn r7, r20
003944  7e0004e0  vmmov mr0, r8
003948  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
00394c  9f030040  addli r7, zero, 8192
003950  7e8003e0  vmmov mr0, r7
003954  ea201130  vor.u.mh vr1{mr0}, r2, vr1
003958  2b410000  lui r2, 4
00395c  7e0001e0  vmmov mr0, r2
003960  1f010ffa  addli r2, r30, -768
003964  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
003968  b3100318  bfloat2float.rn r1, r6
00396c  2b830000  lui r6, 8
003970  0b115110  add.s r2, r2, r5
003974  7e0003e0  vmmov mr0, r6
003978  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00397c  eb300100  load.hu r1, 0(r2)
003980  6b332100  load.hu r6, 2(r2)
003984  eb334100  load.hu r7, 4(r2)
003988  6b346100  load.hu r8, 6(r2)
00398c  eb348100  load.hu r9, 8(r2)
003990  6b35a100  load.hu r10, 10(r2)
003994  eb35c100  load.hu r11, 12(r2)
003998  6b36e100  load.hu r12, 14(r2)
00399c  eb360101  load.hu r13, 16(r2)
0039a0  6b372101  load.hu r14, 18(r2)
0039a4  eb374101  load.hu r15, 20(r2)
0039a8  eb386101  load.hu r17, 22(r2)
0039ac  6b398101  load.hu r18, 24(r2)
0039b0  eb39a101  load.hu r19, 26(r2)
0039b4  6b3ac101  load.hu r20, 28(r2)
0039b8  6b31e101  load.hu r2, 30(r2)
0039bc  b3900018  bfloat2float.rn r1, r1
0039c0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0039c4  b3100318  bfloat2float.rn r1, r6
0039c8  1f430000  addli r6, zero, 4
0039cc  7e0103e0  vmmov mr2, r6
0039d0  1f031000  addli r6, zero, 8
0039d4  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0039d8  b3900318  bfloat2float.rn r1, r7
0039dc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0039e0  b3100418  bfloat2float.rn r1, r8
0039e4  7e0103e0  vmmov mr2, r6
0039e8  1f032000  addli r6, zero, 16
0039ec  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0039f0  b3900418  bfloat2float.rn r1, r9
0039f4  7e0103e0  vmmov mr2, r6
0039f8  1f034000  addli r6, zero, 32
0039fc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003a00  b3100518  bfloat2float.rn r1, r10
003a04  7e0103e0  vmmov mr2, r6
003a08  1f038000  addli r6, zero, 64
003a0c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003a10  b3900518  bfloat2float.rn r1, r11
003a14  7e0103e0  vmmov mr2, r6
003a18  1f030001  addli r6, zero, 128
003a1c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003a20  b3100618  bfloat2float.rn r1, r12
003a24  7e0103e0  vmmov mr2, r6
003a28  1f030002  addli r6, zero, 256
003a2c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003a30  b3900618  bfloat2float.rn r1, r13
003a34  7e0103e0  vmmov mr2, r6
003a38  1f030004  addli r6, zero, 512
003a3c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003a40  b3100718  bfloat2float.rn r1, r14
003a44  7e0103e0  vmmov mr2, r6
003a48  1f030008  addli r6, zero, 1024
003a4c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003a50  b3900718  bfloat2float.rn r1, r15
003a54  7e0103e0  vmmov mr2, r6
003a58  1f030010  addli r6, zero, 2048
003a5c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003a60  b3900818  bfloat2float.rn r1, r17
003a64  7e0103e0  vmmov mr2, r6
003a68  1f030020  addli r6, zero, 4096
003a6c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003a70  b3100918  bfloat2float.rn r1, r18
003a74  7e0103e0  vmmov mr2, r6
003a78  1f030040  addli r6, zero, 8192
003a7c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003a80  b3900918  bfloat2float.rn r1, r19
003a84  7e0103e0  vmmov mr2, r6
003a88  2b430000  lui r6, 4
003a8c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003a90  b3100a18  bfloat2float.rn r1, r20
003a94  7e0103e0  vmmov mr2, r6
003a98  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003a9c  b3100118  bfloat2float.rn r1, r2
003aa0  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003aa4  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
003aa8  46100fc2  vstore_mask16.mz vr0{mr1}, 1536(r30)
003aac  00a00000  mfence { lm }
003ab0  e3000ffc  loadli.w r1,  -512(r30)
003ab4  e3430ffc  loadli.w r7,  -508(r30)
003ab8  63051ffc  loadli.w r10,  -504(r30)
003abc  63411ffc  loadli.w r2,  -500(r30)
003ac0  63062ffc  loadli.w r12,  -496(r30)
003ac4  e3472ffc  loadli.w r15,  -492(r30)
003ac8  e3093ffc  loadli.w r19,  -488(r30)
003acc  e34a3ffc  loadli.w r21,  -484(r30)
003ad0  630a4ffc  loadli.w r20,  -480(r30)
003ad4  e3484ffc  loadli.w r17,  -476(r30)
003ad8  63075ffc  loadli.w r14,  -472(r30)
003adc  e3465ffc  loadli.w r13,  -468(r30)
003ae0  e3056ffc  loadli.w r11,  -464(r30)
003ae4  63446ffc  loadli.w r8,  -460(r30)
003ae8  e3047ffc  loadli.w r9,  -456(r30)
003aec  17836001  and r6, r1, r22
003af0  13096d04  setlt.u r18, r26, r6
003af4  63437ffc  loadli.w r6,  -452(r30)
003af8  3b700900  bneq r18, zero, 28
003afc  1bc90001  srli r18, r1, 16
003b00  1b091900  andi r18, r18, 1
003b04  8b902011  add.s r1, r1, r18
003b08  6309ffef  loadli.w r18,  -2056(r30)
003b0c  8b902011  add.s r1, r1, r18
003b10  5b010000  j 8
003b14  9790b001  or r1, r1, r27
003b18  17896301  and r18, r7, r22
003b1c  13092d05  setlt.u r18, r26, r18
003b20  3b700900  bneq r18, zero, 28
003b24  1bc90301  srli r18, r7, 16
003b28  1b091900  andi r18, r18, 1
003b2c  8b932311  add.s r7, r7, r18
003b30  6309ffef  loadli.w r18,  -2056(r30)
003b34  8b932311  add.s r7, r7, r18
003b38  5b010000  j 8
003b3c  9793b301  or r7, r7, r27
003b40  17096501  and r18, r10, r22
003b44  13092d05  setlt.u r18, r26, r18
003b48  3b700900  bneq r18, zero, 28
003b4c  1b490501  srli r18, r10, 16
003b50  1b091900  andi r18, r18, 1
003b54  0b152511  add.s r10, r10, r18
003b58  6309ffef  loadli.w r18,  -2056(r30)
003b5c  0b152511  add.s r10, r10, r18
003b60  5b010000  j 8
003b64  1715b501  or r10, r10, r27
003b68  17096101  and r18, r2, r22
003b6c  13092d05  setlt.u r18, r26, r18
003b70  3b700900  bneq r18, zero, 28
003b74  1b490101  srli r18, r2, 16
003b78  1b091900  andi r18, r18, 1
003b7c  0b112111  add.s r2, r2, r18
003b80  6309ffef  loadli.w r18,  -2056(r30)
003b84  0b112111  add.s r2, r2, r18
003b88  5b010000  j 8
003b8c  1711b101  or r2, r2, r27
003b90  17096601  and r18, r12, r22
003b94  13092d05  setlt.u r18, r26, r18
003b98  3b700900  bneq r18, zero, 28
003b9c  1b490601  srli r18, r12, 16
003ba0  1b091900  andi r18, r18, 1
003ba4  0b162611  add.s r12, r12, r18
003ba8  6309ffef  loadli.w r18,  -2056(r30)
003bac  0b162611  add.s r12, r12, r18
003bb0  5b010000  j 8
003bb4  1716b601  or r12, r12, r27
003bb8  17896701  and r18, r15, r22
003bbc  13092d05  setlt.u r18, r26, r18
003bc0  3b700900  bneq r18, zero, 28
003bc4  1bc90701  srli r18, r15, 16
003bc8  1b091900  andi r18, r18, 1
003bcc  8b972711  add.s r15, r15, r18
003bd0  6309ffef  loadli.w r18,  -2056(r30)
003bd4  8b972711  add.s r15, r15, r18
003bd8  5b010000  j 8
003bdc  9797b701  or r15, r15, r27
003be0  17896901  and r18, r19, r22
003be4  13092d05  setlt.u r18, r26, r18
003be8  3b700900  bneq r18, zero, 28
003bec  1bc90901  srli r18, r19, 16
003bf0  1b091900  andi r18, r18, 1
003bf4  0b992911  add.s r18, r19, r18
003bf8  e309ffef  loadli.w r19,  -2056(r30)
003bfc  8b193911  add.s r19, r18, r19
003c00  5b010000  j 8
003c04  9799b901  or r19, r19, r27
003c08  17896a01  and r18, r21, r22
003c0c  13092d05  setlt.u r18, r26, r18
003c10  3b700900  bneq r18, zero, 28
003c14  1bc90a01  srli r18, r21, 16
003c18  1b091900  andi r18, r18, 1
003c1c  0b992a11  add.s r18, r21, r18
003c20  e30affef  loadli.w r21,  -2056(r30)
003c24  8b1a5911  add.s r21, r18, r21
003c28  5b010000  j 8
003c2c  979aba01  or r21, r21, r27
003c30  17096a01  and r18, r20, r22
003c34  13092d05  setlt.u r18, r26, r18
003c38  3b700900  bneq r18, zero, 28
003c3c  1b490a01  srli r18, r20, 16
003c40  1b091900  andi r18, r18, 1
003c44  0b192a11  add.s r18, r20, r18
003c48  630affef  loadli.w r20,  -2056(r30)
003c4c  0b1a4911  add.s r20, r18, r20
003c50  5b010000  j 8
003c54  171aba01  or r20, r20, r27
003c58  17896801  and r18, r17, r22
003c5c  13092d05  setlt.u r18, r26, r18
003c60  3b700900  bneq r18, zero, 28
003c64  1bc90801  srli r18, r17, 16
003c68  1b091900  andi r18, r18, 1
003c6c  8b982811  add.s r17, r17, r18
003c70  6309ffef  loadli.w r18,  -2056(r30)
003c74  8b982811  add.s r17, r17, r18
003c78  5b010000  j 8
003c7c  9798b801  or r17, r17, r27
003c80  17096701  and r18, r14, r22
003c84  13092d05  setlt.u r18, r26, r18
003c88  3b700900  bneq r18, zero, 28
003c8c  1b490701  srli r18, r14, 16
003c90  1b091900  andi r18, r18, 1
003c94  0b172711  add.s r14, r14, r18
003c98  6309ffef  loadli.w r18,  -2056(r30)
003c9c  0b172711  add.s r14, r14, r18
003ca0  5b010000  j 8
003ca4  1717b701  or r14, r14, r27
003ca8  17896601  and r18, r13, r22
003cac  13092d05  setlt.u r18, r26, r18
003cb0  3b700900  bneq r18, zero, 28
003cb4  1bc90601  srli r18, r13, 16
003cb8  1b091900  andi r18, r18, 1
003cbc  8b962611  add.s r13, r13, r18
003cc0  6309ffef  loadli.w r18,  -2056(r30)
003cc4  8b962611  add.s r13, r13, r18
003cc8  5b010000  j 8
003ccc  9796b601  or r13, r13, r27
003cd0  17896501  and r18, r11, r22
003cd4  13092d05  setlt.u r18, r26, r18
003cd8  3b700900  bneq r18, zero, 28
003cdc  1bc90501  srli r18, r11, 16
003ce0  1b091900  andi r18, r18, 1
003ce4  8b952511  add.s r11, r11, r18
003ce8  6309ffef  loadli.w r18,  -2056(r30)
003cec  8b952511  add.s r11, r11, r18
003cf0  5b010000  j 8
003cf4  9795b501  or r11, r11, r27
003cf8  17096401  and r18, r8, r22
003cfc  13092d05  setlt.u r18, r26, r18
003d00  3b700900  bneq r18, zero, 28
003d04  1b490401  srli r18, r8, 16
003d08  1b091900  andi r18, r18, 1
003d0c  0b142411  add.s r8, r8, r18
003d10  6309ffef  loadli.w r18,  -2056(r30)
003d14  0b142411  add.s r8, r8, r18
003d18  5b010000  j 8
003d1c  1714b401  or r8, r8, r27
003d20  17896401  and r18, r9, r22
003d24  13092d05  setlt.u r18, r26, r18
003d28  3b700900  bneq r18, zero, 28
003d2c  1bc90401  srli r18, r9, 16
003d30  1b091900  andi r18, r18, 1
003d34  8b942411  add.s r9, r9, r18
003d38  6309ffef  loadli.w r18,  -2056(r30)
003d3c  8b942411  add.s r9, r9, r18
003d40  5b010000  j 8
003d44  9794b401  or r9, r9, r27
003d48  17096301  and r18, r6, r22
003d4c  13092d05  setlt.u r18, r26, r18
003d50  b73509fc  beq r18, zero, -1684
003d54  1713b301  or r6, r6, r27
003d58  5b2fffff  j -1672
003d5c  9f0e0fe5  addli sp, r30, -3456
003d60  9f8e0e1b  addli sp, sp, 3456
003d64  00a00300  mfence { lm, sm, gm }
003d68  00100000  exit
003d6c  00100000  exit
003d70  00100000  exit
003d74  00100000  exit
003d78  00100000  exit
003d7c  00100000  exit
003d80  00100000  exit
003d84  00100000  exit
003d88  00100000  exit
003d8c  00100000  exit
003d90  00100000  exit
003d94  00100000  exit
003d98  00100000  exit
003d9c  00100000  exit
003da0  00100000  exit
003da4  00100000  exit
003da8  00100000  exit
003dac  00100000  exit
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
