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
00013c  e7405fee  storeli.w r5, -2292(r30)
000140  80a10204  csr_set csr3, r5
000144  00d00100  sync_group
000148  e74d4fe8  storeli.w r4, -2852(r30)
00014c  4b0c921e  ble.s r4, r9, 16128
000150  1f021000  addli r4, zero, 8
000154  1f140000  addli r8, zero, 1
000158  1f0e0ff8  addli r28, r30, -1024
00015c  eea5b562  vxor.u.mz vr11{mr1}, vr11, vr11
000160  0b924030  div.s r4, r1, r4
000164  e70d4fe8  storeli.w r4, -2856(r30)
000168  1b323200  slli r4, r4, 3
00016c  0b934018  sub.s r6, r1, r4
000170  6b528f00  load.d r[5:6], 8(r30)
000174  9b807000  andi r1, r1, 7
000178  1b357300  slli r10, r6, 7
00017c  00d30002  load_param_i r6, 1
000180  e7001fee  storeli.w r1, -2296(r30)
000184  ab700000  lui r1, 7
000188  670d6fe8  storeli.w r6, -2864(r30)
00018c  1b131500  ori r6, r10, 1
000190  1b9af0ff  ori r20, r1, 4095
000194  9b151501  ori r11, r10, 17
000198  674dafe8  storeli.w r10, -2860(r30)
00019c  e74c6fe8  storeli.w r6, -2868(r30)
0001a0  1b132500  ori r6, r10, 2
0001a4  e748bfe8  storeli.w r11, -2932(r30)
0001a8  9f150000  addli r11, zero, 1
0001ac  e70f4fef  storeli.w r20, -2056(r30)
0001b0  e70c6fe8  storeli.w r6, -2872(r30)
0001b4  1b133500  ori r6, r10, 3
0001b8  674c6fe8  storeli.w r6, -2876(r30)
0001bc  1b134500  ori r6, r10, 4
0001c0  670c6fe8  storeli.w r6, -2880(r30)
0001c4  1b135500  ori r6, r10, 5
0001c8  e74b6fe8  storeli.w r6, -2884(r30)
0001cc  1b136500  ori r6, r10, 6
0001d0  e70b6fe8  storeli.w r6, -2888(r30)
0001d4  1b137500  ori r6, r10, 7
0001d8  674b6fe8  storeli.w r6, -2892(r30)
0001dc  1b138500  ori r6, r10, 8
0001e0  670b6fe8  storeli.w r6, -2896(r30)
0001e4  1b139500  ori r6, r10, 9
0001e8  e74a6fe8  storeli.w r6, -2900(r30)
0001ec  1b13a500  ori r6, r10, 10
0001f0  e70a6fe8  storeli.w r6, -2904(r30)
0001f4  1b13b500  ori r6, r10, 11
0001f8  674a6fe8  storeli.w r6, -2908(r30)
0001fc  1b13c500  ori r6, r10, 12
000200  670a6fe8  storeli.w r6, -2912(r30)
000204  1b13d500  ori r6, r10, 13
000208  e7496fe8  storeli.w r6, -2916(r30)
00020c  1b13e500  ori r6, r10, 14
000210  e7096fe8  storeli.w r6, -2920(r30)
000214  1b13f500  ori r6, r10, 15
000218  67496fe8  storeli.w r6, -2924(r30)
00021c  1b130501  ori r6, r10, 16
000220  67096fe8  storeli.w r6, -2928(r30)
000224  33130528  sext_int2long r[7:8], r10
000228  17338302  sll.d r[7:8], r[7:8], r8
00022c  2bf4ffff  lui r8, 1048575
000230  0b226210  add.ul r[5:6], r[5:6], r[7:8]
000234  1f030fe9  addli r6, r30, -2944
000238  73304300  store.d r[5:6], 0(r6)
00023c  1b1204fe  ori r4, r8, 4064
000240  9b122501  ori r5, r10, 18
000244  97814100  and r3, r3, r4
000248  e7475fe8  storeli.w r5, -2948(r30)
00024c  9f020002  addli r5, zero, 256
000250  8b912110  add.s r3, r3, r2
000254  2bf1ff7f  lui r2, 524287
000258  9b10f1ff  ori r1, r2, 4095
00025c  e74e3fe8  storeli.w r3, -2836(r30)
000260  e74f1fee  storeli.w r1, -2052(r30)
000264  ab10833a  lui r1, 239665
000268  9b90f026  ori r1, r1, 623
00026c  e7071fe8  storeli.w r1, -2952(r30)
000270  9b103501  ori r1, r10, 19
000274  67471fe8  storeli.w r1, -2956(r30)
000278  9b104501  ori r1, r10, 20
00027c  67071fe8  storeli.w r1, -2960(r30)
000280  9b105501  ori r1, r10, 21
000284  e7461fe8  storeli.w r1, -2964(r30)
000288  9b106501  ori r1, r10, 22
00028c  e7061fe8  storeli.w r1, -2968(r30)
000290  9b107501  ori r1, r10, 23
000294  67461fe8  storeli.w r1, -2972(r30)
000298  9b108501  ori r1, r10, 24
00029c  67061fe8  storeli.w r1, -2976(r30)
0002a0  9b109501  ori r1, r10, 25
0002a4  e7451fe8  storeli.w r1, -2980(r30)
0002a8  9b10a501  ori r1, r10, 26
0002ac  e7051fe8  storeli.w r1, -2984(r30)
0002b0  9b10b501  ori r1, r10, 27
0002b4  67451fe8  storeli.w r1, -2988(r30)
0002b8  9b10c501  ori r1, r10, 28
0002bc  67051fe8  storeli.w r1, -2992(r30)
0002c0  9b10d501  ori r1, r10, 29
0002c4  e7441fe8  storeli.w r1, -2996(r30)
0002c8  9b10e501  ori r1, r10, 30
0002cc  e7041fe8  storeli.w r1, -3000(r30)
0002d0  9b10f501  ori r1, r10, 31
0002d4  67441fe8  storeli.w r1, -3004(r30)
0002d8  9b100502  ori r1, r10, 32
0002dc  67041fe8  storeli.w r1, -3008(r30)
0002e0  9b101502  ori r1, r10, 33
0002e4  e7431fe8  storeli.w r1, -3012(r30)
0002e8  9b102502  ori r1, r10, 34
0002ec  e7031fe8  storeli.w r1, -3016(r30)
0002f0  9b103502  ori r1, r10, 35
0002f4  67431fe8  storeli.w r1, -3020(r30)
0002f8  9b104502  ori r1, r10, 36
0002fc  67031fe8  storeli.w r1, -3024(r30)
000300  9b105502  ori r1, r10, 37
000304  e7421fe8  storeli.w r1, -3028(r30)
000308  9b106502  ori r1, r10, 38
00030c  e7021fe8  storeli.w r1, -3032(r30)
000310  9b107502  ori r1, r10, 39
000314  67421fe8  storeli.w r1, -3036(r30)
000318  9b108502  ori r1, r10, 40
00031c  67021fe8  storeli.w r1, -3040(r30)
000320  9b109502  ori r1, r10, 41
000324  e7411fe8  storeli.w r1, -3044(r30)
000328  9b10a502  ori r1, r10, 42
00032c  e7011fe8  storeli.w r1, -3048(r30)
000330  9b10b502  ori r1, r10, 43
000334  67411fe8  storeli.w r1, -3052(r30)
000338  9b10c502  ori r1, r10, 44
00033c  67011fe8  storeli.w r1, -3056(r30)
000340  9b10d502  ori r1, r10, 45
000344  e7401fe8  storeli.w r1, -3060(r30)
000348  9b10e502  ori r1, r10, 46
00034c  e7001fe8  storeli.w r1, -3064(r30)
000350  9b10f502  ori r1, r10, 47
000354  67401fe8  storeli.w r1, -3068(r30)
000358  9b100503  ori r1, r10, 48
00035c  67001fe8  storeli.w r1, -3072(r30)
000360  9b101503  ori r1, r10, 49
000364  e74f1fe6  storeli.w r1, -3076(r30)
000368  9b102503  ori r1, r10, 50
00036c  e70f1fe6  storeli.w r1, -3080(r30)
000370  9b103503  ori r1, r10, 51
000374  674f1fe6  storeli.w r1, -3084(r30)
000378  9b104503  ori r1, r10, 52
00037c  670f1fe6  storeli.w r1, -3088(r30)
000380  9b105503  ori r1, r10, 53
000384  e74e1fe6  storeli.w r1, -3092(r30)
000388  9b106503  ori r1, r10, 54
00038c  e70e1fe6  storeli.w r1, -3096(r30)
000390  9b107503  ori r1, r10, 55
000394  674e1fe6  storeli.w r1, -3100(r30)
000398  9b108503  ori r1, r10, 56
00039c  670e1fe6  storeli.w r1, -3104(r30)
0003a0  9b109503  ori r1, r10, 57
0003a4  e74d1fe6  storeli.w r1, -3108(r30)
0003a8  9b10a503  ori r1, r10, 58
0003ac  e70d1fe6  storeli.w r1, -3112(r30)
0003b0  9b10b503  ori r1, r10, 59
0003b4  674d1fe6  storeli.w r1, -3116(r30)
0003b8  9b10c503  ori r1, r10, 60
0003bc  670d1fe6  storeli.w r1, -3120(r30)
0003c0  9b10d503  ori r1, r10, 61
0003c4  e74c1fe6  storeli.w r1, -3124(r30)
0003c8  9b10e503  ori r1, r10, 62
0003cc  e70c1fe6  storeli.w r1, -3128(r30)
0003d0  9b10f503  ori r1, r10, 63
0003d4  674c1fe6  storeli.w r1, -3132(r30)
0003d8  9b100504  ori r1, r10, 64
0003dc  670c1fe6  storeli.w r1, -3136(r30)
0003e0  9b101504  ori r1, r10, 65
0003e4  e74b1fe6  storeli.w r1, -3140(r30)
0003e8  9b102504  ori r1, r10, 66
0003ec  e70b1fe6  storeli.w r1, -3144(r30)
0003f0  9b103504  ori r1, r10, 67
0003f4  674b1fe6  storeli.w r1, -3148(r30)
0003f8  9b104504  ori r1, r10, 68
0003fc  670b1fe6  storeli.w r1, -3152(r30)
000400  9b105504  ori r1, r10, 69
000404  e74a1fe6  storeli.w r1, -3156(r30)
000408  9b106504  ori r1, r10, 70
00040c  e70a1fe6  storeli.w r1, -3160(r30)
000410  9b107504  ori r1, r10, 71
000414  674a1fe6  storeli.w r1, -3164(r30)
000418  9b108504  ori r1, r10, 72
00041c  670a1fe6  storeli.w r1, -3168(r30)
000420  9b109504  ori r1, r10, 73
000424  e7491fe6  storeli.w r1, -3172(r30)
000428  9b10a504  ori r1, r10, 74
00042c  e7091fe6  storeli.w r1, -3176(r30)
000430  9b10b504  ori r1, r10, 75
000434  67491fe6  storeli.w r1, -3180(r30)
000438  9b10c504  ori r1, r10, 76
00043c  67091fe6  storeli.w r1, -3184(r30)
000440  9b10d504  ori r1, r10, 77
000444  e7481fe6  storeli.w r1, -3188(r30)
000448  9b10e504  ori r1, r10, 78
00044c  e7081fe6  storeli.w r1, -3192(r30)
000450  9b10f504  ori r1, r10, 79
000454  67481fe6  storeli.w r1, -3196(r30)
000458  9b100505  ori r1, r10, 80
00045c  67081fe6  storeli.w r1, -3200(r30)
000460  9b101505  ori r1, r10, 81
000464  e7471fe6  storeli.w r1, -3204(r30)
000468  9b102505  ori r1, r10, 82
00046c  e7071fe6  storeli.w r1, -3208(r30)
000470  9b103505  ori r1, r10, 83
000474  67471fe6  storeli.w r1, -3212(r30)
000478  9b104505  ori r1, r10, 84
00047c  67071fe6  storeli.w r1, -3216(r30)
000480  9b105505  ori r1, r10, 85
000484  e7461fe6  storeli.w r1, -3220(r30)
000488  9b106505  ori r1, r10, 86
00048c  e7061fe6  storeli.w r1, -3224(r30)
000490  9b107505  ori r1, r10, 87
000494  67461fe6  storeli.w r1, -3228(r30)
000498  9b108505  ori r1, r10, 88
00049c  67061fe6  storeli.w r1, -3232(r30)
0004a0  9b109505  ori r1, r10, 89
0004a4  e7451fe6  storeli.w r1, -3236(r30)
0004a8  9b10a505  ori r1, r10, 90
0004ac  e7051fe6  storeli.w r1, -3240(r30)
0004b0  9b10b505  ori r1, r10, 91
0004b4  67451fe6  storeli.w r1, -3244(r30)
0004b8  9b10c505  ori r1, r10, 92
0004bc  67051fe6  storeli.w r1, -3248(r30)
0004c0  9b10d505  ori r1, r10, 93
0004c4  e7441fe6  storeli.w r1, -3252(r30)
0004c8  9b10e505  ori r1, r10, 94
0004cc  e7041fe6  storeli.w r1, -3256(r30)
0004d0  9b10f505  ori r1, r10, 95
0004d4  67441fe6  storeli.w r1, -3260(r30)
0004d8  9b100506  ori r1, r10, 96
0004dc  67041fe6  storeli.w r1, -3264(r30)
0004e0  9b101506  ori r1, r10, 97
0004e4  e7431fe6  storeli.w r1, -3268(r30)
0004e8  9b102506  ori r1, r10, 98
0004ec  e7031fe6  storeli.w r1, -3272(r30)
0004f0  9b103506  ori r1, r10, 99
0004f4  67431fe6  storeli.w r1, -3276(r30)
0004f8  9b104506  ori r1, r10, 100
0004fc  67031fe6  storeli.w r1, -3280(r30)
000500  9b105506  ori r1, r10, 101
000504  e7421fe6  storeli.w r1, -3284(r30)
000508  9b106506  ori r1, r10, 102
00050c  e7021fe6  storeli.w r1, -3288(r30)
000510  9b107506  ori r1, r10, 103
000514  67421fe6  storeli.w r1, -3292(r30)
000518  9b108506  ori r1, r10, 104
00051c  67021fe6  storeli.w r1, -3296(r30)
000520  9b109506  ori r1, r10, 105
000524  e7411fe6  storeli.w r1, -3300(r30)
000528  9b10a506  ori r1, r10, 106
00052c  e7011fe6  storeli.w r1, -3304(r30)
000530  9b10b506  ori r1, r10, 107
000534  67411fe6  storeli.w r1, -3308(r30)
000538  9b10c506  ori r1, r10, 108
00053c  67011fe6  storeli.w r1, -3312(r30)
000540  9b10d506  ori r1, r10, 109
000544  e7401fe6  storeli.w r1, -3316(r30)
000548  9b10e506  ori r1, r10, 110
00054c  e7001fe6  storeli.w r1, -3320(r30)
000550  9b10f506  ori r1, r10, 111
000554  67401fe6  storeli.w r1, -3324(r30)
000558  9b100507  ori r1, r10, 112
00055c  67001fe6  storeli.w r1, -3328(r30)
000560  9b101507  ori r1, r10, 113
000564  e74f1fe4  storeli.w r1, -3332(r30)
000568  9b102507  ori r1, r10, 114
00056c  e70f1fe4  storeli.w r1, -3336(r30)
000570  9b103507  ori r1, r10, 115
000574  674f1fe4  storeli.w r1, -3340(r30)
000578  9b104507  ori r1, r10, 116
00057c  670f1fe4  storeli.w r1, -3344(r30)
000580  9b105507  ori r1, r10, 117
000584  e74e1fe4  storeli.w r1, -3348(r30)
000588  9b106507  ori r1, r10, 118
00058c  e70e1fe4  storeli.w r1, -3352(r30)
000590  9b107507  ori r1, r10, 119
000594  674e1fe4  storeli.w r1, -3356(r30)
000598  9b108507  ori r1, r10, 120
00059c  670e1fe4  storeli.w r1, -3360(r30)
0005a0  9b109507  ori r1, r10, 121
0005a4  e74d1fe4  storeli.w r1, -3364(r30)
0005a8  9b10a507  ori r1, r10, 122
0005ac  e70d1fe4  storeli.w r1, -3368(r30)
0005b0  9b10b507  ori r1, r10, 123
0005b4  674d1fe4  storeli.w r1, -3372(r30)
0005b8  9b10c507  ori r1, r10, 124
0005bc  670d1fe4  storeli.w r1, -3376(r30)
0005c0  9b10d507  ori r1, r10, 125
0005c4  e74c1fe4  storeli.w r1, -3380(r30)
0005c8  9b10e507  ori r1, r10, 126
0005cc  e70c1fe4  storeli.w r1, -3384(r30)
0005d0  9b10f507  ori r1, r10, 127
0005d4  674c1fe4  storeli.w r1, -3388(r30)
0005d8  9f802140  addli r1, r3, 8208
0005dc  e70e1fe8  storeli.w r1, -2840(r30)
0005e0  db180200  j 4292
0005e4  e3022fea  loadli.w r5,  -2800(r30)
0005e8  9f030fef  addli r7, r30, -2176
0005ec  e3003fea  loadli.w r1,  -2792(r30)
0005f0  e3412fea  loadli.w r3,  -2796(r30)
0005f4  9f160000  addli r13, zero, 1
0005f8  eb5c0f01  load.d r[26:27], 16(r30)
0005fc  9f290000  addli r19, zero, 2
000600  1f440e00  addli r8, r28, 4
000604  1f1a0000  addli r20, zero, 1
000608  9f6dbe01  addli r27, r28, 222
00060c  b39b0228  sext_int2long r[24:25], r5
000610  e3421fea  loadli.w r5,  -2804(r30)
000614  b3900028  sext_int2long r[2:3], r1
000618  b3910128  sext_int2long r[4:5], r3
00061c  97b0d002  sll.d r[2:3], r[2:3], r13
000620  b3940228  sext_int2long r[10:11], r5
000624  e3021fea  loadli.w r5,  -2808(r30)
000628  33980228  sext_int2long r[17:18], r5
00062c  e3420fea  loadli.w r5,  -2812(r30)
000630  b39a0228  sext_int2long r[22:23], r5
000634  e3020fea  loadli.w r5,  -2816(r30)
000638  b3950228  sext_int2long r[12:13], r5
00063c  e342ffe9  loadli.w r5,  -2820(r30)
000640  33970228  sext_int2long r[15:16], r5
000644  e302ffe9  loadli.w r5,  -2824(r30)
000648  b3920228  sext_int2long r[6:7], r5
00064c  73b05300  store.d r[6:7], 0(r7)
000650  e342efe9  loadli.w r5,  -2828(r30)
000654  9f038fee  addli r7, r30, -2240
000658  b3920228  sext_int2long r[6:7], r5
00065c  73b05300  store.d r[6:7], 0(r7)
000660  e302efe9  loadli.w r5,  -2832(r30)
000664  9f03efef  addli r7, r30, -2064
000668  b3920228  sext_int2long r[6:7], r5
00066c  73b05300  store.d r[6:7], 0(r7)
000670  97b2d102  sll.d r[6:7], r[4:5], r13
000674  8ba11c10  add.ul r[4:5], r[26:27], r[2:3]
000678  ab0000f0  lui r1, 983040
00067c  2b0100f0  lui r2, 983040
000680  9f230e00  addli r7, r28, 2
000684  97901900  or r1, r19, r1
000688  8ba25c10  add.ul r[6:7], r[26:27], r[6:7]
00068c  17912900  or r2, r19, r2
000690  7fb18200  s_lm2gm r2, r8, 0(r[6:7])
000694  ffb07100  s_lm2gm r1, r7, 0(r[4:5])
000698  97b1d402  sll.d r[4:5], r[10:11], r13
00069c  97b0db02  sll.d r[2:3], r[24:25], r13
0006a0  ab0200f0  lui r5, 983040
0006a4  2b0300f0  lui r6, 983040
0006a8  9f630e00  addli r7, r28, 6
0006ac  1f041e00  addli r8, r28, 8
0006b0  e3442fed  loadli.w r9,  -2412(r30)
0006b4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
0006b8  97925900  or r5, r19, r5
0006bc  8ba13c10  add.ul r[4:5], r[26:27], r[4:5]
0006c0  17936900  or r6, r19, r6
0006c4  b3940428  sext_int2long r[10:11], r9
0006c8  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
0006cc  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
0006d0  9730d802  sll.d r[2:3], r[17:18], r13
0006d4  97b1da02  sll.d r[4:5], r[22:23], r13
0006d8  ab0200f0  lui r5, 983040
0006dc  2b0300f0  lui r6, 983040
0006e0  9f231e00  addli r7, r28, 10
0006e4  1f441e00  addli r8, r28, 12
0006e8  ab0800f0  lui r17, 983040
0006ec  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
0006f0  97925900  or r5, r19, r5
0006f4  8ba13c10  add.ul r[4:5], r[26:27], r[4:5]
0006f8  17936900  or r6, r19, r6
0006fc  97981901  or r17, r19, r17
000700  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
000704  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
000708  97b0d502  sll.d r[2:3], r[12:13], r13
00070c  9731d702  sll.d r[4:5], r[15:16], r13
000710  ab0200f0  lui r5, 983040
000714  2b0300f0  lui r6, 983040
000718  9f631e00  addli r7, r28, 14
00071c  1f042e00  addli r8, r28, 16
000720  e3453fed  loadli.w r11,  -2404(r30)
000724  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000728  97925900  or r5, r19, r5
00072c  8ba13c10  add.ul r[4:5], r[26:27], r[4:5]
000730  17936900  or r6, r19, r6
000734  b3950528  sext_int2long r[12:13], r11
000738  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
00073c  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
000740  9f010fef  addli r3, r30, -2176
000744  9f028fee  addli r5, r30, -2240
000748  2b0300f0  lui r6, 983040
00074c  1f442e00  addli r8, r28, 20
000750  9f232e00  addli r7, r28, 18
000754  ebd00100  load.d r[2:3], 0(r3)
000758  ebd10200  load.d r[4:5], 0(r5)
00075c  ab0200f0  lui r5, 983040
000760  17936900  or r6, r19, r6
000764  97925900  or r5, r19, r5
000768  97b1d102  sll.d r[4:5], r[4:5], r13
00076c  97b0d002  sll.d r[2:3], r[2:3], r13
000770  8ba13c10  add.ul r[4:5], r[26:27], r[4:5]
000774  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000778  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
00077c  9f01efef  addli r3, r30, -2064
000780  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
000784  e3423fea  loadli.w r5,  -2788(r30)
000788  1f622e00  addli r4, r28, 22
00078c  e3431fed  loadli.w r7,  -2420(r30)
000790  ebd00100  load.d r[2:3], 0(r3)
000794  ab0100f0  lui r3, 983040
000798  b3920228  sext_int2long r[6:7], r5
00079c  b3930328  sext_int2long r[8:9], r7
0007a0  97913900  or r3, r19, r3
0007a4  97b0d002  sll.d r[2:3], r[2:3], r13
0007a8  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
0007ac  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0007b0  97b0d202  sll.d r[2:3], r[6:7], r13
0007b4  e3024fea  loadli.w r5,  -2784(r30)
0007b8  ab0100f0  lui r3, 983040
0007bc  1f023e00  addli r4, r28, 24
0007c0  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
0007c4  97913900  or r3, r19, r3
0007c8  b3920228  sext_int2long r[6:7], r5
0007cc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0007d0  ab0100f0  lui r3, 983040
0007d4  1f223e00  addli r4, r28, 26
0007d8  97b0d202  sll.d r[2:3], r[6:7], r13
0007dc  e3424fea  loadli.w r5,  -2780(r30)
0007e0  97913900  or r3, r19, r3
0007e4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
0007e8  b3920228  sext_int2long r[6:7], r5
0007ec  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0007f0  ab0100f0  lui r3, 983040
0007f4  1f423e00  addli r4, r28, 28
0007f8  97b0d202  sll.d r[2:3], r[6:7], r13
0007fc  e3025fea  loadli.w r5,  -2776(r30)
000800  97913900  or r3, r19, r3
000804  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000808  b3920228  sext_int2long r[6:7], r5
00080c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000810  ab0100f0  lui r3, 983040
000814  1f623e00  addli r4, r28, 30
000818  97b0d202  sll.d r[2:3], r[6:7], r13
00081c  e3425fea  loadli.w r5,  -2772(r30)
000820  97913900  or r3, r19, r3
000824  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000828  b3920228  sext_int2long r[6:7], r5
00082c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000830  ab0100f0  lui r3, 983040
000834  1f024e00  addli r4, r28, 32
000838  97b0d202  sll.d r[2:3], r[6:7], r13
00083c  e3026fea  loadli.w r5,  -2768(r30)
000840  97913900  or r3, r19, r3
000844  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000848  b3920228  sext_int2long r[6:7], r5
00084c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000850  ab0100f0  lui r3, 983040
000854  1f224e00  addli r4, r28, 34
000858  97b0d202  sll.d r[2:3], r[6:7], r13
00085c  e3426fea  loadli.w r5,  -2764(r30)
000860  97913900  or r3, r19, r3
000864  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000868  b3920228  sext_int2long r[6:7], r5
00086c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000870  ab0100f0  lui r3, 983040
000874  1f424e00  addli r4, r28, 36
000878  97b0d202  sll.d r[2:3], r[6:7], r13
00087c  e3027fea  loadli.w r5,  -2760(r30)
000880  97913900  or r3, r19, r3
000884  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000888  b3920228  sext_int2long r[6:7], r5
00088c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000890  ab0100f0  lui r3, 983040
000894  1f624e00  addli r4, r28, 38
000898  97b0d202  sll.d r[2:3], r[6:7], r13
00089c  e3427fea  loadli.w r5,  -2756(r30)
0008a0  97913900  or r3, r19, r3
0008a4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
0008a8  b3920228  sext_int2long r[6:7], r5
0008ac  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0008b0  ab0100f0  lui r3, 983040
0008b4  1f025e00  addli r4, r28, 40
0008b8  97b0d202  sll.d r[2:3], r[6:7], r13
0008bc  e3028fea  loadli.w r5,  -2752(r30)
0008c0  97913900  or r3, r19, r3
0008c4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
0008c8  b3920228  sext_int2long r[6:7], r5
0008cc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0008d0  ab0100f0  lui r3, 983040
0008d4  1f225e00  addli r4, r28, 42
0008d8  97b0d202  sll.d r[2:3], r[6:7], r13
0008dc  e3428fea  loadli.w r5,  -2748(r30)
0008e0  97913900  or r3, r19, r3
0008e4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
0008e8  b3920228  sext_int2long r[6:7], r5
0008ec  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0008f0  ab0100f0  lui r3, 983040
0008f4  1f425e00  addli r4, r28, 44
0008f8  97b0d202  sll.d r[2:3], r[6:7], r13
0008fc  e3029fea  loadli.w r5,  -2744(r30)
000900  97913900  or r3, r19, r3
000904  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000908  b3920228  sext_int2long r[6:7], r5
00090c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000910  ab0100f0  lui r3, 983040
000914  1f625e00  addli r4, r28, 46
000918  97b0d202  sll.d r[2:3], r[6:7], r13
00091c  e3429fea  loadli.w r5,  -2740(r30)
000920  97913900  or r3, r19, r3
000924  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000928  b3920228  sext_int2long r[6:7], r5
00092c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000930  ab0100f0  lui r3, 983040
000934  1f026e00  addli r4, r28, 48
000938  97b0d202  sll.d r[2:3], r[6:7], r13
00093c  e302afea  loadli.w r5,  -2736(r30)
000940  97913900  or r3, r19, r3
000944  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000948  b3920228  sext_int2long r[6:7], r5
00094c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000950  ab0100f0  lui r3, 983040
000954  1f226e00  addli r4, r28, 50
000958  97b0d202  sll.d r[2:3], r[6:7], r13
00095c  e342afea  loadli.w r5,  -2732(r30)
000960  97913900  or r3, r19, r3
000964  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000968  b3920228  sext_int2long r[6:7], r5
00096c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000970  ab0100f0  lui r3, 983040
000974  1f426e00  addli r4, r28, 52
000978  97b0d202  sll.d r[2:3], r[6:7], r13
00097c  e302bfea  loadli.w r5,  -2728(r30)
000980  97913900  or r3, r19, r3
000984  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000988  b3920228  sext_int2long r[6:7], r5
00098c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000990  ab0100f0  lui r3, 983040
000994  1f626e00  addli r4, r28, 54
000998  97b0d202  sll.d r[2:3], r[6:7], r13
00099c  e342bfea  loadli.w r5,  -2724(r30)
0009a0  97913900  or r3, r19, r3
0009a4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
0009a8  b3920228  sext_int2long r[6:7], r5
0009ac  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0009b0  ab0100f0  lui r3, 983040
0009b4  1f027e00  addli r4, r28, 56
0009b8  97b0d202  sll.d r[2:3], r[6:7], r13
0009bc  e302cfea  loadli.w r5,  -2720(r30)
0009c0  97913900  or r3, r19, r3
0009c4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
0009c8  b3920228  sext_int2long r[6:7], r5
0009cc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0009d0  ab0100f0  lui r3, 983040
0009d4  1f227e00  addli r4, r28, 58
0009d8  97b0d202  sll.d r[2:3], r[6:7], r13
0009dc  e342cfea  loadli.w r5,  -2716(r30)
0009e0  97913900  or r3, r19, r3
0009e4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
0009e8  b3920228  sext_int2long r[6:7], r5
0009ec  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0009f0  ab0100f0  lui r3, 983040
0009f4  1f427e00  addli r4, r28, 60
0009f8  97b0d202  sll.d r[2:3], r[6:7], r13
0009fc  e302dfea  loadli.w r5,  -2712(r30)
000a00  97913900  or r3, r19, r3
000a04  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000a08  b3920228  sext_int2long r[6:7], r5
000a0c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a10  ab0100f0  lui r3, 983040
000a14  1f627e00  addli r4, r28, 62
000a18  97b0d202  sll.d r[2:3], r[6:7], r13
000a1c  e342dfea  loadli.w r5,  -2708(r30)
000a20  97913900  or r3, r19, r3
000a24  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000a28  b3920228  sext_int2long r[6:7], r5
000a2c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a30  6302efea  loadli.w r4,  -2704(r30)
000a34  ab0100f0  lui r3, 983040
000a38  97b0d202  sll.d r[2:3], r[6:7], r13
000a3c  6343dfed  loadli.w r6,  -2324(r30)
000a40  97913900  or r3, r19, r3
000a44  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000a48  33120228  sext_int2long r[5:6], r4
000a4c  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
000a50  9730d202  sll.d r[2:3], r[5:6], r13
000a54  e342efea  loadli.w r5,  -2700(r30)
000a58  ab0100f0  lui r3, 983040
000a5c  1f228e00  addli r4, r28, 66
000a60  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000a64  97913900  or r3, r19, r3
000a68  b3920228  sext_int2long r[6:7], r5
000a6c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a70  ab0100f0  lui r3, 983040
000a74  1f428e00  addli r4, r28, 68
000a78  97b0d202  sll.d r[2:3], r[6:7], r13
000a7c  e302ffea  loadli.w r5,  -2696(r30)
000a80  97913900  or r3, r19, r3
000a84  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000a88  b3920228  sext_int2long r[6:7], r5
000a8c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a90  ab0100f0  lui r3, 983040
000a94  1f628e00  addli r4, r28, 70
000a98  97b0d202  sll.d r[2:3], r[6:7], r13
000a9c  e342ffea  loadli.w r5,  -2692(r30)
000aa0  97913900  or r3, r19, r3
000aa4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000aa8  b3920228  sext_int2long r[6:7], r5
000aac  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ab0  ab0100f0  lui r3, 983040
000ab4  1f029e00  addli r4, r28, 72
000ab8  97b0d202  sll.d r[2:3], r[6:7], r13
000abc  e3020feb  loadli.w r5,  -2688(r30)
000ac0  97913900  or r3, r19, r3
000ac4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000ac8  b3920228  sext_int2long r[6:7], r5
000acc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ad0  ab0100f0  lui r3, 983040
000ad4  1f229e00  addli r4, r28, 74
000ad8  97b0d202  sll.d r[2:3], r[6:7], r13
000adc  e3420feb  loadli.w r5,  -2684(r30)
000ae0  97913900  or r3, r19, r3
000ae4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000ae8  b3920228  sext_int2long r[6:7], r5
000aec  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000af0  ab0100f0  lui r3, 983040
000af4  1f429e00  addli r4, r28, 76
000af8  97b0d202  sll.d r[2:3], r[6:7], r13
000afc  e3021feb  loadli.w r5,  -2680(r30)
000b00  97913900  or r3, r19, r3
000b04  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000b08  b3920228  sext_int2long r[6:7], r5
000b0c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b10  ab0100f0  lui r3, 983040
000b14  1f629e00  addli r4, r28, 78
000b18  97b0d202  sll.d r[2:3], r[6:7], r13
000b1c  e3421feb  loadli.w r5,  -2676(r30)
000b20  97913900  or r3, r19, r3
000b24  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000b28  b3920228  sext_int2long r[6:7], r5
000b2c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b30  ab0100f0  lui r3, 983040
000b34  1f02ae00  addli r4, r28, 80
000b38  97b0d202  sll.d r[2:3], r[6:7], r13
000b3c  e3022feb  loadli.w r5,  -2672(r30)
000b40  97913900  or r3, r19, r3
000b44  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000b48  b3920228  sext_int2long r[6:7], r5
000b4c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b50  ab0100f0  lui r3, 983040
000b54  1f22ae00  addli r4, r28, 82
000b58  97b0d202  sll.d r[2:3], r[6:7], r13
000b5c  e3422feb  loadli.w r5,  -2668(r30)
000b60  97913900  or r3, r19, r3
000b64  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000b68  b3920228  sext_int2long r[6:7], r5
000b6c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b70  ab0100f0  lui r3, 983040
000b74  1f42ae00  addli r4, r28, 84
000b78  97b0d202  sll.d r[2:3], r[6:7], r13
000b7c  e3023feb  loadli.w r5,  -2664(r30)
000b80  97913900  or r3, r19, r3
000b84  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000b88  b3920228  sext_int2long r[6:7], r5
000b8c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b90  ab0100f0  lui r3, 983040
000b94  1f62ae00  addli r4, r28, 86
000b98  97b0d202  sll.d r[2:3], r[6:7], r13
000b9c  e3423feb  loadli.w r5,  -2660(r30)
000ba0  97913900  or r3, r19, r3
000ba4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000ba8  b3920228  sext_int2long r[6:7], r5
000bac  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000bb0  ab0100f0  lui r3, 983040
000bb4  1f02be00  addli r4, r28, 88
000bb8  97b0d202  sll.d r[2:3], r[6:7], r13
000bbc  e3024feb  loadli.w r5,  -2656(r30)
000bc0  97913900  or r3, r19, r3
000bc4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000bc8  b3920228  sext_int2long r[6:7], r5
000bcc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000bd0  ab0100f0  lui r3, 983040
000bd4  1f22be00  addli r4, r28, 90
000bd8  97b0d202  sll.d r[2:3], r[6:7], r13
000bdc  e3424feb  loadli.w r5,  -2652(r30)
000be0  97913900  or r3, r19, r3
000be4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000be8  b3920228  sext_int2long r[6:7], r5
000bec  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000bf0  ab0100f0  lui r3, 983040
000bf4  1f42be00  addli r4, r28, 92
000bf8  97b0d202  sll.d r[2:3], r[6:7], r13
000bfc  e3025feb  loadli.w r5,  -2648(r30)
000c00  97913900  or r3, r19, r3
000c04  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000c08  b3920228  sext_int2long r[6:7], r5
000c0c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c10  ab0100f0  lui r3, 983040
000c14  1f62be00  addli r4, r28, 94
000c18  97b0d202  sll.d r[2:3], r[6:7], r13
000c1c  e3425feb  loadli.w r5,  -2644(r30)
000c20  97913900  or r3, r19, r3
000c24  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000c28  b3920228  sext_int2long r[6:7], r5
000c2c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c30  ab0100f0  lui r3, 983040
000c34  1f02ce00  addli r4, r28, 96
000c38  97b0d202  sll.d r[2:3], r[6:7], r13
000c3c  e3026feb  loadli.w r5,  -2640(r30)
000c40  97913900  or r3, r19, r3
000c44  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000c48  b3920228  sext_int2long r[6:7], r5
000c4c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c50  ab0100f0  lui r3, 983040
000c54  1f22ce00  addli r4, r28, 98
000c58  97b0d202  sll.d r[2:3], r[6:7], r13
000c5c  e3426feb  loadli.w r5,  -2636(r30)
000c60  97913900  or r3, r19, r3
000c64  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000c68  b3920228  sext_int2long r[6:7], r5
000c6c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c70  ab0100f0  lui r3, 983040
000c74  1f42ce00  addli r4, r28, 100
000c78  97b0d202  sll.d r[2:3], r[6:7], r13
000c7c  e3027feb  loadli.w r5,  -2632(r30)
000c80  97913900  or r3, r19, r3
000c84  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000c88  b3920228  sext_int2long r[6:7], r5
000c8c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c90  ab0100f0  lui r3, 983040
000c94  1f62ce00  addli r4, r28, 102
000c98  97b0d202  sll.d r[2:3], r[6:7], r13
000c9c  e3427feb  loadli.w r5,  -2628(r30)
000ca0  97913900  or r3, r19, r3
000ca4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000ca8  b3920228  sext_int2long r[6:7], r5
000cac  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000cb0  ab0100f0  lui r3, 983040
000cb4  1f02de00  addli r4, r28, 104
000cb8  97b0d202  sll.d r[2:3], r[6:7], r13
000cbc  e3028feb  loadli.w r5,  -2624(r30)
000cc0  97913900  or r3, r19, r3
000cc4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000cc8  b3920228  sext_int2long r[6:7], r5
000ccc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000cd0  ab0100f0  lui r3, 983040
000cd4  1f22de00  addli r4, r28, 106
000cd8  97b0d202  sll.d r[2:3], r[6:7], r13
000cdc  e3428feb  loadli.w r5,  -2620(r30)
000ce0  97913900  or r3, r19, r3
000ce4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000ce8  b3920228  sext_int2long r[6:7], r5
000cec  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000cf0  ab0100f0  lui r3, 983040
000cf4  1f42de00  addli r4, r28, 108
000cf8  97b0d202  sll.d r[2:3], r[6:7], r13
000cfc  e3029feb  loadli.w r5,  -2616(r30)
000d00  97913900  or r3, r19, r3
000d04  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000d08  b3920228  sext_int2long r[6:7], r5
000d0c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d10  ab0100f0  lui r3, 983040
000d14  1f62de00  addli r4, r28, 110
000d18  97b0d202  sll.d r[2:3], r[6:7], r13
000d1c  e3429feb  loadli.w r5,  -2612(r30)
000d20  97913900  or r3, r19, r3
000d24  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000d28  b3920228  sext_int2long r[6:7], r5
000d2c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d30  ab0100f0  lui r3, 983040
000d34  1f02ee00  addli r4, r28, 112
000d38  97b0d202  sll.d r[2:3], r[6:7], r13
000d3c  e302afeb  loadli.w r5,  -2608(r30)
000d40  97913900  or r3, r19, r3
000d44  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000d48  b3920228  sext_int2long r[6:7], r5
000d4c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d50  ab0100f0  lui r3, 983040
000d54  1f22ee00  addli r4, r28, 114
000d58  97b0d202  sll.d r[2:3], r[6:7], r13
000d5c  e342afeb  loadli.w r5,  -2604(r30)
000d60  97913900  or r3, r19, r3
000d64  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000d68  b3920228  sext_int2long r[6:7], r5
000d6c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d70  ab0100f0  lui r3, 983040
000d74  1f42ee00  addli r4, r28, 116
000d78  97b0d202  sll.d r[2:3], r[6:7], r13
000d7c  e302bfeb  loadli.w r5,  -2600(r30)
000d80  97913900  or r3, r19, r3
000d84  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000d88  b3920228  sext_int2long r[6:7], r5
000d8c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d90  ab0100f0  lui r3, 983040
000d94  1f62ee00  addli r4, r28, 118
000d98  97b0d202  sll.d r[2:3], r[6:7], r13
000d9c  e342bfeb  loadli.w r5,  -2596(r30)
000da0  97913900  or r3, r19, r3
000da4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000da8  b3920228  sext_int2long r[6:7], r5
000dac  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000db0  ab0100f0  lui r3, 983040
000db4  1f02fe00  addli r4, r28, 120
000db8  97b0d202  sll.d r[2:3], r[6:7], r13
000dbc  e302cfeb  loadli.w r5,  -2592(r30)
000dc0  97913900  or r3, r19, r3
000dc4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000dc8  b3920228  sext_int2long r[6:7], r5
000dcc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000dd0  ab0100f0  lui r3, 983040
000dd4  1f22fe00  addli r4, r28, 122
000dd8  97b0d202  sll.d r[2:3], r[6:7], r13
000ddc  e342cfeb  loadli.w r5,  -2588(r30)
000de0  97913900  or r3, r19, r3
000de4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000de8  b3920228  sext_int2long r[6:7], r5
000dec  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000df0  ab0100f0  lui r3, 983040
000df4  1f42fe00  addli r4, r28, 124
000df8  97b0d202  sll.d r[2:3], r[6:7], r13
000dfc  e302dfeb  loadli.w r5,  -2584(r30)
000e00  97913900  or r3, r19, r3
000e04  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000e08  b3920228  sext_int2long r[6:7], r5
000e0c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e10  ab0100f0  lui r3, 983040
000e14  1f62fe00  addli r4, r28, 126
000e18  97b0d202  sll.d r[2:3], r[6:7], r13
000e1c  e342dfeb  loadli.w r5,  -2580(r30)
000e20  97913900  or r3, r19, r3
000e24  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000e28  b3920228  sext_int2long r[6:7], r5
000e2c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e30  6302efeb  loadli.w r4,  -2576(r30)
000e34  ab0100f0  lui r3, 983040
000e38  97b0d202  sll.d r[2:3], r[6:7], r13
000e3c  6303efed  loadli.w r6,  -2320(r30)
000e40  97913900  or r3, r19, r3
000e44  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000e48  33120228  sext_int2long r[5:6], r4
000e4c  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
000e50  9730d202  sll.d r[2:3], r[5:6], r13
000e54  e342efeb  loadli.w r5,  -2572(r30)
000e58  ab0100f0  lui r3, 983040
000e5c  1f220e01  addli r4, r28, 130
000e60  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000e64  97913900  or r3, r19, r3
000e68  b3920228  sext_int2long r[6:7], r5
000e6c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e70  ab0100f0  lui r3, 983040
000e74  1f420e01  addli r4, r28, 132
000e78  97b0d202  sll.d r[2:3], r[6:7], r13
000e7c  e302ffeb  loadli.w r5,  -2568(r30)
000e80  97913900  or r3, r19, r3
000e84  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000e88  b3920228  sext_int2long r[6:7], r5
000e8c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e90  ab0100f0  lui r3, 983040
000e94  1f620e01  addli r4, r28, 134
000e98  97b0d202  sll.d r[2:3], r[6:7], r13
000e9c  e342ffeb  loadli.w r5,  -2564(r30)
000ea0  97913900  or r3, r19, r3
000ea4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000ea8  b3920228  sext_int2long r[6:7], r5
000eac  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000eb0  ab0100f0  lui r3, 983040
000eb4  1f021e01  addli r4, r28, 136
000eb8  97b0d202  sll.d r[2:3], r[6:7], r13
000ebc  e3020fec  loadli.w r5,  -2560(r30)
000ec0  97913900  or r3, r19, r3
000ec4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000ec8  b3920228  sext_int2long r[6:7], r5
000ecc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ed0  ab0100f0  lui r3, 983040
000ed4  1f221e01  addli r4, r28, 138
000ed8  97b0d202  sll.d r[2:3], r[6:7], r13
000edc  e3420fec  loadli.w r5,  -2556(r30)
000ee0  97913900  or r3, r19, r3
000ee4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000ee8  b3920228  sext_int2long r[6:7], r5
000eec  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ef0  ab0100f0  lui r3, 983040
000ef4  1f421e01  addli r4, r28, 140
000ef8  97b0d202  sll.d r[2:3], r[6:7], r13
000efc  e3021fec  loadli.w r5,  -2552(r30)
000f00  97913900  or r3, r19, r3
000f04  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000f08  b3920228  sext_int2long r[6:7], r5
000f0c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f10  ab0100f0  lui r3, 983040
000f14  1f621e01  addli r4, r28, 142
000f18  97b0d202  sll.d r[2:3], r[6:7], r13
000f1c  e3421fec  loadli.w r5,  -2548(r30)
000f20  97913900  or r3, r19, r3
000f24  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000f28  b3920228  sext_int2long r[6:7], r5
000f2c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f30  ab0100f0  lui r3, 983040
000f34  1f022e01  addli r4, r28, 144
000f38  97b0d202  sll.d r[2:3], r[6:7], r13
000f3c  e3022fec  loadli.w r5,  -2544(r30)
000f40  97913900  or r3, r19, r3
000f44  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000f48  b3920228  sext_int2long r[6:7], r5
000f4c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f50  ab0100f0  lui r3, 983040
000f54  1f222e01  addli r4, r28, 146
000f58  97b0d202  sll.d r[2:3], r[6:7], r13
000f5c  e3422fec  loadli.w r5,  -2540(r30)
000f60  97913900  or r3, r19, r3
000f64  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000f68  b3920228  sext_int2long r[6:7], r5
000f6c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f70  ab0100f0  lui r3, 983040
000f74  1f422e01  addli r4, r28, 148
000f78  97b0d202  sll.d r[2:3], r[6:7], r13
000f7c  e3023fec  loadli.w r5,  -2536(r30)
000f80  97913900  or r3, r19, r3
000f84  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000f88  b3920228  sext_int2long r[6:7], r5
000f8c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f90  ab0100f0  lui r3, 983040
000f94  1f622e01  addli r4, r28, 150
000f98  97b0d202  sll.d r[2:3], r[6:7], r13
000f9c  e3423fec  loadli.w r5,  -2532(r30)
000fa0  97913900  or r3, r19, r3
000fa4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000fa8  b3920228  sext_int2long r[6:7], r5
000fac  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000fb0  ab0100f0  lui r3, 983040
000fb4  1f023e01  addli r4, r28, 152
000fb8  97b0d202  sll.d r[2:3], r[6:7], r13
000fbc  e3024fec  loadli.w r5,  -2528(r30)
000fc0  97913900  or r3, r19, r3
000fc4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000fc8  b3920228  sext_int2long r[6:7], r5
000fcc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000fd0  ab0100f0  lui r3, 983040
000fd4  1f223e01  addli r4, r28, 154
000fd8  97b0d202  sll.d r[2:3], r[6:7], r13
000fdc  e3424fec  loadli.w r5,  -2524(r30)
000fe0  97913900  or r3, r19, r3
000fe4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
000fe8  b3920228  sext_int2long r[6:7], r5
000fec  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ff0  ab0100f0  lui r3, 983040
000ff4  1f423e01  addli r4, r28, 156
000ff8  97b0d202  sll.d r[2:3], r[6:7], r13
000ffc  e3025fec  loadli.w r5,  -2520(r30)
001000  97913900  or r3, r19, r3
001004  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
001008  b3920228  sext_int2long r[6:7], r5
00100c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001010  ab0100f0  lui r3, 983040
001014  1f623e01  addli r4, r28, 158
001018  97b0d202  sll.d r[2:3], r[6:7], r13
00101c  e3425fec  loadli.w r5,  -2516(r30)
001020  97913900  or r3, r19, r3
001024  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
001028  b3920228  sext_int2long r[6:7], r5
00102c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001030  ab0100f0  lui r3, 983040
001034  1f024e01  addli r4, r28, 160
001038  97b0d202  sll.d r[2:3], r[6:7], r13
00103c  e3026fec  loadli.w r5,  -2512(r30)
001040  97913900  or r3, r19, r3
001044  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
001048  b3920228  sext_int2long r[6:7], r5
00104c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001050  ab0100f0  lui r3, 983040
001054  1f224e01  addli r4, r28, 162
001058  97b0d202  sll.d r[2:3], r[6:7], r13
00105c  e3426fec  loadli.w r5,  -2508(r30)
001060  97913900  or r3, r19, r3
001064  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
001068  b3920228  sext_int2long r[6:7], r5
00106c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001070  ab0100f0  lui r3, 983040
001074  1f424e01  addli r4, r28, 164
001078  97b0d202  sll.d r[2:3], r[6:7], r13
00107c  e3027fec  loadli.w r5,  -2504(r30)
001080  97913900  or r3, r19, r3
001084  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
001088  b3920228  sext_int2long r[6:7], r5
00108c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001090  ab0100f0  lui r3, 983040
001094  1f624e01  addli r4, r28, 166
001098  97b0d202  sll.d r[2:3], r[6:7], r13
00109c  e3427fec  loadli.w r5,  -2500(r30)
0010a0  97913900  or r3, r19, r3
0010a4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
0010a8  b3920228  sext_int2long r[6:7], r5
0010ac  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010b0  ab0100f0  lui r3, 983040
0010b4  1f025e01  addli r4, r28, 168
0010b8  97b0d202  sll.d r[2:3], r[6:7], r13
0010bc  e3028fec  loadli.w r5,  -2496(r30)
0010c0  97913900  or r3, r19, r3
0010c4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
0010c8  b3920228  sext_int2long r[6:7], r5
0010cc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010d0  ab0100f0  lui r3, 983040
0010d4  1f225e01  addli r4, r28, 170
0010d8  97b0d202  sll.d r[2:3], r[6:7], r13
0010dc  e3428fec  loadli.w r5,  -2492(r30)
0010e0  97913900  or r3, r19, r3
0010e4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
0010e8  b3920228  sext_int2long r[6:7], r5
0010ec  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010f0  ab0100f0  lui r3, 983040
0010f4  1f425e01  addli r4, r28, 172
0010f8  97b0d202  sll.d r[2:3], r[6:7], r13
0010fc  e3029fec  loadli.w r5,  -2488(r30)
001100  97913900  or r3, r19, r3
001104  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
001108  b3920228  sext_int2long r[6:7], r5
00110c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001110  ab0100f0  lui r3, 983040
001114  1f625e01  addli r4, r28, 174
001118  97b0d202  sll.d r[2:3], r[6:7], r13
00111c  e3429fec  loadli.w r5,  -2484(r30)
001120  97913900  or r3, r19, r3
001124  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
001128  b3920228  sext_int2long r[6:7], r5
00112c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001130  ab0100f0  lui r3, 983040
001134  1f026e01  addli r4, r28, 176
001138  97b0d202  sll.d r[2:3], r[6:7], r13
00113c  e302afec  loadli.w r5,  -2480(r30)
001140  97913900  or r3, r19, r3
001144  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
001148  b3920228  sext_int2long r[6:7], r5
00114c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001150  ab0100f0  lui r3, 983040
001154  1f226e01  addli r4, r28, 178
001158  97b0d202  sll.d r[2:3], r[6:7], r13
00115c  e342afec  loadli.w r5,  -2476(r30)
001160  97913900  or r3, r19, r3
001164  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
001168  b3920228  sext_int2long r[6:7], r5
00116c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001170  ab0100f0  lui r3, 983040
001174  1f426e01  addli r4, r28, 180
001178  97b0d202  sll.d r[2:3], r[6:7], r13
00117c  e302bfec  loadli.w r5,  -2472(r30)
001180  97913900  or r3, r19, r3
001184  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
001188  b3920228  sext_int2long r[6:7], r5
00118c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001190  ab0100f0  lui r3, 983040
001194  1f626e01  addli r4, r28, 182
001198  97b0d202  sll.d r[2:3], r[6:7], r13
00119c  e342bfec  loadli.w r5,  -2468(r30)
0011a0  97913900  or r3, r19, r3
0011a4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
0011a8  b3920228  sext_int2long r[6:7], r5
0011ac  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011b0  ab0100f0  lui r3, 983040
0011b4  1f027e01  addli r4, r28, 184
0011b8  97b0d202  sll.d r[2:3], r[6:7], r13
0011bc  e302cfec  loadli.w r5,  -2464(r30)
0011c0  97913900  or r3, r19, r3
0011c4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
0011c8  b3920228  sext_int2long r[6:7], r5
0011cc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011d0  ab0100f0  lui r3, 983040
0011d4  1f227e01  addli r4, r28, 186
0011d8  97b0d202  sll.d r[2:3], r[6:7], r13
0011dc  e342cfec  loadli.w r5,  -2460(r30)
0011e0  97913900  or r3, r19, r3
0011e4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
0011e8  b3920228  sext_int2long r[6:7], r5
0011ec  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011f0  ab0100f0  lui r3, 983040
0011f4  1f427e01  addli r4, r28, 188
0011f8  97b0d202  sll.d r[2:3], r[6:7], r13
0011fc  e302dfec  loadli.w r5,  -2456(r30)
001200  97913900  or r3, r19, r3
001204  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
001208  b3920228  sext_int2long r[6:7], r5
00120c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001210  ab0100f0  lui r3, 983040
001214  1f627e01  addli r4, r28, 190
001218  97b0d202  sll.d r[2:3], r[6:7], r13
00121c  e342dfec  loadli.w r5,  -2452(r30)
001220  97913900  or r3, r19, r3
001224  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
001228  b3920228  sext_int2long r[6:7], r5
00122c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001230  6302efec  loadli.w r4,  -2448(r30)
001234  ab0100f0  lui r3, 983040
001238  97b0d202  sll.d r[2:3], r[6:7], r13
00123c  6343efed  loadli.w r6,  -2316(r30)
001240  97913900  or r3, r19, r3
001244  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
001248  33120228  sext_int2long r[5:6], r4
00124c  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
001250  9730d202  sll.d r[2:3], r[5:6], r13
001254  e342efec  loadli.w r5,  -2444(r30)
001258  ab0100f0  lui r3, 983040
00125c  1f228e01  addli r4, r28, 194
001260  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
001264  97913900  or r3, r19, r3
001268  b3920228  sext_int2long r[6:7], r5
00126c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001270  ab0100f0  lui r3, 983040
001274  1f428e01  addli r4, r28, 196
001278  97b0d202  sll.d r[2:3], r[6:7], r13
00127c  e302ffec  loadli.w r5,  -2440(r30)
001280  97913900  or r3, r19, r3
001284  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
001288  b3920228  sext_int2long r[6:7], r5
00128c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001290  ab0100f0  lui r3, 983040
001294  1f628e01  addli r4, r28, 198
001298  97b0d202  sll.d r[2:3], r[6:7], r13
00129c  e342ffec  loadli.w r5,  -2436(r30)
0012a0  97913900  or r3, r19, r3
0012a4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
0012a8  b3920228  sext_int2long r[6:7], r5
0012ac  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012b0  ab0100f0  lui r3, 983040
0012b4  1f029e01  addli r4, r28, 200
0012b8  97b0d202  sll.d r[2:3], r[6:7], r13
0012bc  e3020fed  loadli.w r5,  -2432(r30)
0012c0  97913900  or r3, r19, r3
0012c4  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
0012c8  b3920228  sext_int2long r[6:7], r5
0012cc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012d0  63420fed  loadli.w r4,  -2428(r30)
0012d4  ab0100f0  lui r3, 983040
0012d8  97b0d202  sll.d r[2:3], r[6:7], r13
0012dc  1f239e01  addli r6, r28, 202
0012e0  97913900  or r3, r19, r3
0012e4  33120228  sext_int2long r[5:6], r4
0012e8  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
0012ec  1732d202  sll.d r[5:6], r[5:6], r13
0012f0  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
0012f4  ab0100f0  lui r3, 983040
0012f8  8ba04c10  add.ul r[2:3], r[26:27], r[5:6]
0012fc  e3021fed  loadli.w r5,  -2424(r30)
001300  1f429e01  addli r4, r28, 204
001304  97913900  or r3, r19, r3
001308  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00130c  b3920228  sext_int2long r[6:7], r5
001310  97b1d202  sll.d r[4:5], r[6:7], r13
001314  9f02ffed  addli r5, r30, -2312
001318  1f639e01  addli r6, r28, 206
00131c  e3464fed  loadli.w r13,  -2396(r30)
001320  ebd00200  load.d r[2:3], 0(r5)
001324  ab0200f0  lui r5, 983040
001328  8ba13c10  add.ul r[4:5], r[26:27], r[4:5]
00132c  b3960628  sext_int2long r[14:15], r13
001330  97925900  or r5, r19, r5
001334  8ba01c10  add.ul r[2:3], r[26:27], r[2:3]
001338  ffb26100  s_lm2gm r5, r6, 0(r[4:5])
00133c  e3012fed  loadli.w r3,  -2416(r30)
001340  97b24303  sll.d r[6:7], r[8:9], r20
001344  ab0300f0  lui r7, 983040
001348  1f04ae01  addli r8, r28, 208
00134c  ffb8c001  s_lm2gm r17, r28, 0(r[2:3])
001350  e340afed  loadli.w r1,  -2348(r30)
001354  ab0800f0  lui r17, 983040
001358  8ba25c10  add.ul r[6:7], r[26:27], r[6:7]
00135c  97937900  or r7, r19, r7
001360  b3910128  sext_int2long r[4:5], r3
001364  97981901  or r17, r19, r17
001368  ffb38200  s_lm2gm r7, r8, 0(r[6:7])
00136c  97b34403  sll.d r[8:9], r[10:11], r20
001370  ab0400f0  lui r9, 983040
001374  1f25ae01  addli r10, r28, 210
001378  e3023fed  loadli.w r5,  -2408(r30)
00137c  b3900028  sext_int2long r[2:3], r1
001380  97b14103  sll.d r[4:5], r[4:5], r20
001384  97949900  or r9, r19, r9
001388  8ba37c10  add.ul r[8:9], r[26:27], r[8:9]
00138c  8ba13c10  add.ul r[4:5], r[26:27], r[4:5]
001390  b3920228  sext_int2long r[6:7], r5
001394  ffb4a100  s_lm2gm r9, r10, 0(r[4:5])
001398  97b44503  sll.d r[10:11], r[12:13], r20
00139c  ab0500f0  lui r11, 983040
0013a0  1f46ae01  addli r12, r28, 212
0013a4  97b24203  sll.d r[6:7], r[6:7], r20
0013a8  e3014fed  loadli.w r3,  -2400(r30)
0013ac  9795b900  or r11, r19, r11
0013b0  8ba25c10  add.ul r[6:7], r[26:27], r[6:7]
0013b4  8ba49c10  add.ul r[10:11], r[26:27], r[10:11]
0013b8  b3910128  sext_int2long r[4:5], r3
0013bc  ffb5c300  s_lm2gm r11, r12, 0(r[8:9])
0013c0  e3035fed  loadli.w r7,  -2392(r30)
0013c4  97b54603  sll.d r[12:13], r[14:15], r20
0013c8  97b14103  sll.d r[4:5], r[4:5], r20
0013cc  8ba6bc10  add.ul r[14:15], r[26:27], r[12:13]
0013d0  e3455fed  loadli.w r11,  -2388(r30)
0013d4  b3930328  sext_int2long r[8:9], r7
0013d8  8ba13c10  add.ul r[4:5], r[26:27], r[4:5]
0013dc  97b34303  sll.d r[8:9], r[8:9], r20
0013e0  b3950528  sext_int2long r[12:13], r11
0013e4  8ba77c10  add.ul r[16:17], r[26:27], r[8:9]
0013e8  ab0300f0  lui r7, 983040
0013ec  1f64ae01  addli r8, r28, 214
0013f0  97937900  or r7, r19, r7
0013f4  ffb8b701  s_lm2gm r17, r27, 0(r[16:17])
0013f8  ab0800f0  lui r17, 983040
0013fc  9f0dce01  addli r27, r28, 224
001400  ffb38200  s_lm2gm r7, r8, 0(r[6:7])
001404  e3026fed  loadli.w r5,  -2384(r30)
001408  97b34503  sll.d r[8:9], r[12:13], r20
00140c  97981901  or r17, r19, r17
001410  8bab7c10  add.ul r[24:25], r[26:27], r[8:9]
001414  e3436fed  loadli.w r7,  -2380(r30)
001418  b3920228  sext_int2long r[6:7], r5
00141c  ffb8bb01  s_lm2gm r17, r27, 0(r[24:25])
001420  ab0800f0  lui r17, 983040
001424  9f2dce01  addli r27, r28, 226
001428  97b24203  sll.d r[6:7], r[6:7], r20
00142c  b3930328  sext_int2long r[8:9], r7
001430  97981901  or r17, r19, r17
001434  8ba55c10  add.ul r[12:13], r[26:27], r[6:7]
001438  ab0200f0  lui r5, 983040
00143c  1f03be01  addli r6, r28, 216
001440  97b34303  sll.d r[8:9], r[8:9], r20
001444  97925900  or r5, r19, r5
001448  ffb8b501  s_lm2gm r17, r27, 0(r[12:13])
00144c  ab0800f0  lui r17, 983040
001450  1f060fef  addli r12, r30, -2176
001454  9f150000  addli r11, zero, 1
001458  ffb26400  s_lm2gm r5, r6, 0(r[10:11])
00145c  e3027fed  loadli.w r5,  -2376(r30)
001460  8ba47c10  add.ul r[10:11], r[26:27], r[8:9]
001464  ab0300f0  lui r7, 983040
001468  1f24be01  addli r8, r28, 218
00146c  97981901  or r17, r19, r17
001470  97937900  or r7, r19, r7
001474  b3920228  sext_int2long r[6:7], r5
001478  ffb38100  s_lm2gm r7, r8, 0(r[4:5])
00147c  e3018fed  loadli.w r3,  -2368(r30)
001480  9f037fee  addli r7, r30, -2248
001484  97b24203  sll.d r[6:7], r[6:7], r20
001488  8baa5c10  add.ul r[22:23], r[26:27], r[6:7]
00148c  e3427fed  loadli.w r5,  -2372(r30)
001490  b3910128  sext_int2long r[4:5], r3
001494  97b14103  sll.d r[4:5], r[4:5], r20
001498  b3920228  sext_int2long r[6:7], r5
00149c  8ba13c10  add.ul r[4:5], r[26:27], r[4:5]
0014a0  97b24203  sll.d r[6:7], r[6:7], r20
0014a4  8ba25c10  add.ul r[6:7], r[26:27], r[6:7]
0014a8  73b05300  store.d r[6:7], 0(r7)
0014ac  e3428fed  loadli.w r5,  -2364(r30)
0014b0  9f036fee  addli r7, r30, -2256
0014b4  73b03300  store.d r[4:5], 0(r7)
0014b8  9f43be01  addli r7, r28, 220
0014bc  b3920228  sext_int2long r[6:7], r5
0014c0  97b14203  sll.d r[4:5], r[6:7], r20
0014c4  ab0200f0  lui r5, 983040
0014c8  17945900  or r8, r19, r5
0014cc  8ba13c10  add.ul r[4:5], r[26:27], r[4:5]
0014d0  9f020fef  addli r5, r30, -2176
0014d4  73b03200  store.d r[4:5], 0(r5)
0014d8  e3419fed  loadli.w r3,  -2356(r30)
0014dc  7fb47600  s_lm2gm r8, r7, 0(r[14:15])
0014e0  e3039fed  loadli.w r7,  -2360(r30)
0014e4  9f02efef  addli r5, r30, -2064
0014e8  b3910128  sext_int2long r[4:5], r3
0014ec  b3930328  sext_int2long r[8:9], r7
0014f0  97b14103  sll.d r[4:5], r[4:5], r20
0014f4  97b34303  sll.d r[8:9], r[8:9], r20
0014f8  8ba63c10  add.ul r[14:15], r[26:27], r[4:5]
0014fc  8ba17c10  add.ul r[4:5], r[26:27], r[8:9]
001500  73b03200  store.d r[4:5], 0(r5)
001504  e301afed  loadli.w r3,  -2352(r30)
001508  9f028fee  addli r5, r30, -2240
00150c  b3930128  sext_int2long r[8:9], r3
001510  97b34303  sll.d r[8:9], r[8:9], r20
001514  1f1a0000  addli r20, zero, 1
001518  8ba17c10  add.ul r[4:5], r[26:27], r[8:9]
00151c  97b04003  sll.d r[2:3], r[2:3], r20
001520  73b03200  store.d r[4:5], 0(r5)
001524  e301bfed  loadli.w r3,  -2344(r30)
001528  a7820c00  addli.d r[6:7], r[26:27], 0
00152c  6302cfed  loadli.w r4,  -2336(r30)
001530  b3970128  sext_int2long r[16:17], r3
001534  0ba11210  add.ul r[3:4], r[6:7], r[2:3]
001538  e340bfed  loadli.w r1,  -2340(r30)
00153c  b31d0228  sext_int2long r[28:29], r4
001540  6342cfed  loadli.w r4,  -2332(r30)
001544  97b74703  sll.d r[16:17], r[16:17], r20
001548  b39b0028  sext_int2long r[24:25], r1
00154c  9f000ff8  addli r1, r30, -1024
001550  8ba7f210  add.ul r[16:17], r[6:7], r[16:17]
001554  97bb4b03  sll.d r[24:25], r[24:25], r20
001558  9fecc001  addli r25, r1, 230
00155c  8ba37211  add.ul r[8:9], r[6:7], r[24:25]
001560  97bb4d03  sll.d r[24:25], r[28:29], r20
001564  9fcdc001  addli r27, r1, 228
001568  ffb8b401  s_lm2gm r17, r27, 0(r[10:11])
00156c  ab0800f0  lui r17, 983040
001570  331d0228  sext_int2long r[27:28], r4
001574  6302dfed  loadli.w r4,  -2328(r30)
001578  9f047fee  addli r9, r30, -2248
00157c  8bab7211  add.ul r[24:25], r[6:7], r[24:25]
001580  97981901  or r17, r19, r17
001584  ffb89a01  s_lm2gm r17, r25, 0(r[22:23])
001588  b31a0228  sext_int2long r[22:23], r4
00158c  973c4d03  sll.d r[26:27], r[27:28], r20
001590  ab0800f0  lui r17, 983040
001594  97bd4a03  sll.d r[28:29], r[22:23], r20
001598  8baa9211  add.ul r[22:23], r[6:7], r[26:27]
00159c  97981901  or r17, r19, r17
0015a0  630affef  loadli.w r20,  -2056(r30)
0015a4  8bacb211  add.ul r[26:27], r[6:7], r[28:29]
0015a8  ebd20400  load.d r[6:7], 0(r9)
0015ac  9f8dd001  addli r27, r1, 232
0015b0  9f046fee  addli r9, r30, -2256
0015b4  2b0e00f0  lui r28, 983040
0015b8  9fa0d001  addli r1, r1, 234
0015bc  1792c901  or r4, r19, r28
0015c0  1f0e0ff8  addli r28, r30, -1024
0015c4  ffb8b201  s_lm2gm r17, r27, 0(r[6:7])
0015c8  ebd20400  load.d r[6:7], 0(r9)
0015cc  ab0400f0  lui r9, 983040
0015d0  1f65de01  addli r10, r28, 238
0015d4  97949900  or r9, r19, r9
0015d8  7fb21200  s_lm2gm r4, r1, 0(r[6:7])
0015dc  ab0000f0  lui r1, 983040
0015e0  eb520600  load.d r[6:7], 0(r12)
0015e4  1f42de01  addli r4, r28, 236
0015e8  1f06efef  addli r12, r30, -2064
0015ec  ffb4a600  s_lm2gm r9, r10, 0(r[14:15])
0015f0  97901900  or r1, r19, r1
0015f4  eb540600  load.d r[10:11], 0(r12)
0015f8  ffb04200  s_lm2gm r1, r4, 0(r[6:7])
0015fc  ab0000f0  lui r1, 983040
001600  1f02ee01  addli r4, r28, 240
001604  ab0200f0  lui r5, 983040
001608  1f23ee01  addli r6, r28, 242
00160c  97901900  or r1, r19, r1
001610  97925900  or r5, r19, r5
001614  ffb04400  s_lm2gm r1, r4, 0(r[10:11])
001618  9f008fee  addli r1, r30, -2240
00161c  1f42ee01  addli r4, r28, 244
001620  ebd40000  load.d r[10:11], 0(r1)
001624  ab0000f0  lui r1, 983040
001628  97901900  or r1, r19, r1
00162c  ffb26400  s_lm2gm r5, r6, 0(r[10:11])
001630  ab0200f0  lui r5, 983040
001634  1f63ee01  addli r6, r28, 246
001638  e3440fee  loadli.w r9,  -2300(r30)
00163c  ff304100  s_lm2gm r1, r4, 0(r[3:4])
001640  ab0000f0  lui r1, 983040
001644  ab0100f0  lui r3, 983040
001648  1f01fe01  addli r2, r28, 248
00164c  1f22fe01  addli r4, r28, 250
001650  97925900  or r5, r19, r5
001654  97901900  or r1, r19, r1
001658  97913900  or r3, r19, r3
00165c  ffb26700  s_lm2gm r5, r6, 0(r[16:17])
001660  9f020002  addli r5, zero, 256
001664  ffb02300  s_lm2gm r1, r2, 0(r[8:9])
001668  ab0000f0  lui r1, 983040
00166c  ffb14b00  s_lm2gm r3, r4, 0(r[24:25])
001670  ab0100f0  lui r3, 983040
001674  1f41fe01  addli r2, r28, 252
001678  1f62fe01  addli r4, r28, 254
00167c  97901900  or r1, r19, r1
001680  97913900  or r3, r19, r3
001684  ffb02a00  s_lm2gm r1, r2, 0(r[22:23])
001688  e300afe9  loadli.w r1,  -2864(r30)
00168c  ffb14c00  s_lm2gm r3, r4, 0(r[26:27])
001690  00a00000  mfence { lm }
001694  8b941410  add.s r9, r9, r1
001698  e340bfe9  loadli.w r1,  -2852(r30)
00169c  3fa01400  blt.s r9, r1, 8
0016a0  db350500  j 10668
0016a4  9f000000  addli r1, zero, 0
0016a8  0b111e10  add.s r2, r28, r1
0016ac  9fc00000  addli r1, r1, 4
0016b0  73100100  store.h zero, 0(r2)
0016b4  73110100  store.h zero, 2(r2)
0016b8  00a00000  mfence { lm }
0016bc  bbbf50fe  bneq r1, r5, -20
0016c0  e3005f00  loadli.w r1,  40(r30)
0016c4  63414f00  loadli.w r2,  36(r30)
0016c8  1f04ffed  addli r8, r30, -2312
0016cc  67409fee  storeli.w r9, -2300(r30)
0016d0  8b901430  div.s r1, r9, r1
0016d4  8b902030  div.s r1, r1, r2
0016d8  6301bfe9  loadli.w r2,  -2856(r30)
0016dc  9bb03000  slli r1, r1, 3
0016e0  8b902010  add.s r1, r1, r2
0016e4  1bb1a000  slli r2, r1, 10
0016e8  670f1fee  storeli.w r1, -2064(r30)
0016ec  e340afe9  loadli.w r1,  -2860(r30)
0016f0  e70e2fec  storeli.w r2, -2328(r30)
0016f4  8b101110  add.s r1, r2, r1
0016f8  2b0100f0  lui r2, 983040
0016fc  b3910028  sext_int2long r[4:5], r1
001700  17912200  or r2, r5, r2
001704  ab0000f0  lui r1, 983040
001708  17b3b102  sll.d r[7:8], r[4:5], r11
00170c  eb510f00  load.d r[4:5], 0(r30)
001710  97901200  or r1, r5, r1
001714  73306400  store.d r[7:8], 0(r8)
001718  8ba16110  add.ul r[4:5], r[4:5], r[7:8]
00171c  7fa1c101  l_gm2lm r2, r28, 0(r[4:5])
001720  1f020fe9  addli r4, r30, -2944
001724  6b510200  load.d r[3:4], 0(r4)
001728  1f020ffa  addli r4, r30, -768
00172c  ff204100  l_gm2lm r1, r4, 0(r[3:4])
001730  9f000fef  addli r1, r30, -2176
001734  00a00000  mfence { lm }
001738  42110f82  vload_mask16.mz vr2{mr1}, 1024(r30)
00173c  c2138f82  vload_mask16.mz vr7{mr1}, 1088(r30)
001740  c2110f83  vload_mask16.mz vr3{mr1}, 1152(r30)
001744  c2108f83  vload_mask16.mz vr1{mr1}, 1216(r30)
001748  42140fa2  vload_mask16.mz vr8{mr1}, 1280(r30)
00174c  42138fa2  vload_mask16.mz vr6{mr1}, 1344(r30)
001750  c2120fa3  vload_mask16.mz vr5{mr1}, 1408(r30)
001754  42128fa3  vload_mask16.mz vr4{mr1}, 1472(r30)
001758  00a00000  mfence { lm }
00175c  e6c47580  vmerge_l.hf vr9, vr11, vr7
001760  66c56580  vmerge_l.hf vr10, vr11, vr6
001764  66c03580  vmerge_l.hf vr0, vr11, vr3
001768  e6c375a0  vmerge_h.hf vr7, vr11, vr7
00176c  66c365a0  vmerge_h.hf vr6, vr11, vr6
001770  e6c135a0  vmerge_h.hf vr3, vr11, vr3
001774  9694a402  vadd.f.mz.rn vr9{mr1}, vr9, vr10
001778  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00177c  66c02580  vmerge_l.hf vr0, vr11, vr2
001780  66c58580  vmerge_l.hf vr10, vr11, vr8
001784  66c125a0  vmerge_h.hf vr2, vr11, vr2
001788  66c485a0  vmerge_h.hf vr8, vr11, vr8
00178c  9f008fee  addli r1, r30, -2240
001790  16936302  vadd.f.mz.rn vr6{mr1}, vr7, vr6
001794  e6c34580  vmerge_l.hf vr7, vr11, vr4
001798  66c245a0  vmerge_h.hf vr4, vr11, vr4
00179c  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
0017a0  9f000fef  addli r1, r30, -2176
0017a4  1610a002  vadd.f.mz.rn vr0{mr1}, vr0, vr10
0017a8  16118102  vadd.f.mz.rn vr2{mr1}, vr2, vr8
0017ac  66c51580  vmerge_l.hf vr10, vr11, vr1
0017b0  e6c015a0  vmerge_h.hf vr1, vr11, vr1
0017b4  66c45580  vmerge_l.hf vr8, vr11, vr5
0017b8  e6c255a0  vmerge_h.hf vr5, vr11, vr5
0017bc  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0017c0  9f008fee  addli r1, r30, -2240
0017c4  46100fc2  vstore_mask16.mz vr0{mr1}, 1536(r30)
0017c8  46142fc2  vstore_mask16.mz vr2{mr1}, 1600(r30)
0017cc  96915102  vadd.f.mz.rn vr3{mr1}, vr3, vr5
0017d0  96127502  vadd.f.mz.rn vr5{mr1}, vr10, vr7
0017d4  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
0017d8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0017dc  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
0017e0  46180fc2  vstore_mask16.mz vr0{mr1}, 1664(r30)
0017e4  461c6fc2  vstore_mask16.mz vr6{mr1}, 1728(r30)
0017e8  46108fe2  vstore_mask16.mz vr8{mr1}, 1792(r30)
0017ec  46143fe2  vstore_mask16.mz vr3{mr1}, 1856(r30)
0017f0  46185fe2  vstore_mask16.mz vr5{mr1}, 1920(r30)
0017f4  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
0017f8  00a00000  mfence { lm }
0017fc  e3000ffc  loadli.w r1,  -512(r30)
001800  e3470ffc  loadli.w r15,  -508(r30)
001804  e3051ffc  loadli.w r11,  -504(r30)
001808  63441ffc  loadli.w r8,  -500(r30)
00180c  63012ffc  loadli.w r2,  -496(r30)
001810  63482ffc  loadli.w r16,  -492(r30)
001814  e3063ffc  loadli.w r13,  -488(r30)
001818  63473ffc  loadli.w r14,  -484(r30)
00181c  63064ffc  loadli.w r12,  -480(r30)
001820  63454ffc  loadli.w r10,  -476(r30)
001824  e3045ffc  loadli.w r9,  -472(r30)
001828  e3435ffc  loadli.w r7,  -468(r30)
00182c  63036ffc  loadli.w r6,  -464(r30)
001830  e3426ffc  loadli.w r5,  -460(r30)
001834  63027ffc  loadli.w r4,  -456(r30)
001838  e3417ffc  loadli.w r3,  -452(r30)
00183c  e3088ffc  loadli.w r17,  -448(r30)
001840  e3488ffc  loadli.w r17,  -444(r30)
001844  e3089ffc  loadli.w r17,  -440(r30)
001848  e3489ffc  loadli.w r17,  -436(r30)
00184c  e308affc  loadli.w r17,  -432(r30)
001850  e348affc  loadli.w r17,  -428(r30)
001854  e308bffc  loadli.w r17,  -424(r30)
001858  e348bffc  loadli.w r17,  -420(r30)
00185c  e308cffc  loadli.w r17,  -416(r30)
001860  e348cffc  loadli.w r17,  -412(r30)
001864  e308dffc  loadli.w r17,  -408(r30)
001868  e348dffc  loadli.w r17,  -404(r30)
00186c  e308effc  loadli.w r17,  -400(r30)
001870  e348effc  loadli.w r17,  -396(r30)
001874  e308fffc  loadli.w r17,  -392(r30)
001878  e348fffc  loadli.w r17,  -388(r30)
00187c  e3080ffd  loadli.w r17,  -384(r30)
001880  e3480ffd  loadli.w r17,  -380(r30)
001884  e3081ffd  loadli.w r17,  -376(r30)
001888  e3481ffd  loadli.w r17,  -372(r30)
00188c  e3082ffd  loadli.w r17,  -368(r30)
001890  e3482ffd  loadli.w r17,  -364(r30)
001894  e3083ffd  loadli.w r17,  -360(r30)
001898  e3483ffd  loadli.w r17,  -356(r30)
00189c  e3084ffd  loadli.w r17,  -352(r30)
0018a0  e3484ffd  loadli.w r17,  -348(r30)
0018a4  e3085ffd  loadli.w r17,  -344(r30)
0018a8  e3485ffd  loadli.w r17,  -340(r30)
0018ac  e3086ffd  loadli.w r17,  -336(r30)
0018b0  e3486ffd  loadli.w r17,  -332(r30)
0018b4  e3087ffd  loadli.w r17,  -328(r30)
0018b8  e3487ffd  loadli.w r17,  -324(r30)
0018bc  e3088ffd  loadli.w r17,  -320(r30)
0018c0  e3488ffd  loadli.w r17,  -316(r30)
0018c4  e3089ffd  loadli.w r17,  -312(r30)
0018c8  e3489ffd  loadli.w r17,  -308(r30)
0018cc  e308affd  loadli.w r17,  -304(r30)
0018d0  e348affd  loadli.w r17,  -300(r30)
0018d4  e308bffd  loadli.w r17,  -296(r30)
0018d8  e348bffd  loadli.w r17,  -292(r30)
0018dc  e308cffd  loadli.w r17,  -288(r30)
0018e0  e348cffd  loadli.w r17,  -284(r30)
0018e4  e308dffd  loadli.w r17,  -280(r30)
0018e8  e348dffd  loadli.w r17,  -276(r30)
0018ec  e308effd  loadli.w r17,  -272(r30)
0018f0  e348effd  loadli.w r17,  -268(r30)
0018f4  e308fffd  loadli.w r17,  -264(r30)
0018f8  e348fffd  loadli.w r17,  -260(r30)
0018fc  e3080ffe  loadli.w r17,  -256(r30)
001900  e3480ffe  loadli.w r17,  -252(r30)
001904  e3081ffe  loadli.w r17,  -248(r30)
001908  e3481ffe  loadli.w r17,  -244(r30)
00190c  e3082ffe  loadli.w r17,  -240(r30)
001910  e3482ffe  loadli.w r17,  -236(r30)
001914  e3083ffe  loadli.w r17,  -232(r30)
001918  e3483ffe  loadli.w r17,  -228(r30)
00191c  e3084ffe  loadli.w r17,  -224(r30)
001920  e3484ffe  loadli.w r17,  -220(r30)
001924  e3085ffe  loadli.w r17,  -216(r30)
001928  e3485ffe  loadli.w r17,  -212(r30)
00192c  e3086ffe  loadli.w r17,  -208(r30)
001930  e3486ffe  loadli.w r17,  -204(r30)
001934  e3087ffe  loadli.w r17,  -200(r30)
001938  e3487ffe  loadli.w r17,  -196(r30)
00193c  e3088ffe  loadli.w r17,  -192(r30)
001940  e3488ffe  loadli.w r17,  -188(r30)
001944  e3089ffe  loadli.w r17,  -184(r30)
001948  e3489ffe  loadli.w r17,  -180(r30)
00194c  e308affe  loadli.w r17,  -176(r30)
001950  e348affe  loadli.w r17,  -172(r30)
001954  e308bffe  loadli.w r17,  -168(r30)
001958  e348bffe  loadli.w r17,  -164(r30)
00195c  e308cffe  loadli.w r17,  -160(r30)
001960  e348cffe  loadli.w r17,  -156(r30)
001964  e308dffe  loadli.w r17,  -152(r30)
001968  e348dffe  loadli.w r17,  -148(r30)
00196c  e308effe  loadli.w r17,  -144(r30)
001970  e348effe  loadli.w r17,  -140(r30)
001974  e308fffe  loadli.w r17,  -136(r30)
001978  e348fffe  loadli.w r17,  -132(r30)
00197c  e3080fff  loadli.w r17,  -128(r30)
001980  e3480fff  loadli.w r17,  -124(r30)
001984  e3081fff  loadli.w r17,  -120(r30)
001988  e3481fff  loadli.w r17,  -116(r30)
00198c  e3082fff  loadli.w r17,  -112(r30)
001990  e3482fff  loadli.w r17,  -108(r30)
001994  e3083fff  loadli.w r17,  -104(r30)
001998  e3483fff  loadli.w r17,  -100(r30)
00199c  e3084fff  loadli.w r17,  -96(r30)
0019a0  e3484fff  loadli.w r17,  -92(r30)
0019a4  e3085fff  loadli.w r17,  -88(r30)
0019a8  e3485fff  loadli.w r17,  -84(r30)
0019ac  e3086fff  loadli.w r17,  -80(r30)
0019b0  e3486fff  loadli.w r17,  -76(r30)
0019b4  e3087fff  loadli.w r17,  -72(r30)
0019b8  e3487fff  loadli.w r17,  -68(r30)
0019bc  e3088fff  loadli.w r17,  -64(r30)
0019c0  e3488fff  loadli.w r17,  -60(r30)
0019c4  e3089fff  loadli.w r17,  -56(r30)
0019c8  e3489fff  loadli.w r17,  -52(r30)
0019cc  e308afff  loadli.w r17,  -48(r30)
0019d0  e348afff  loadli.w r17,  -44(r30)
0019d4  e308bfff  loadli.w r17,  -40(r30)
0019d8  e348bfff  loadli.w r17,  -36(r30)
0019dc  e308cfff  loadli.w r17,  -32(r30)
0019e0  e348cfff  loadli.w r17,  -28(r30)
0019e4  e348ffef  loadli.w r17,  -2052(r30)
0019e8  e309dfff  loadli.w r19,  -24(r30)
0019ec  ab09807f  lui r19, 522240
0019f0  97881001  and r17, r1, r17
0019f4  93881905  setlt.u r17, r19, r17
0019f8  e349dfff  loadli.w r19,  -20(r30)
0019fc  e309efff  loadli.w r19,  -16(r30)
001a00  e349efff  loadli.w r19,  -12(r30)
001a04  e309ffff  loadli.w r19,  -8(r30)
001a08  e349ffff  loadli.w r19,  -4(r30)
001a0c  3be00800  bneq r17, zero, 24
001a10  9bc80001  srli r17, r1, 16
001a14  9b881800  andi r17, r17, 1
001a18  8b901011  add.s r1, r1, r17
001a1c  8b904011  add.s r1, r1, r20
001a20  db010000  j 12
001a24  ab084000  lui r17, 1024
001a28  97901001  or r1, r1, r17
001a2c  e348ffef  loadli.w r17,  -2052(r30)
001a30  ab09807f  lui r19, 522240
001a34  97881701  and r17, r15, r17
001a38  93881905  setlt.u r17, r19, r17
001a3c  3be00800  bneq r17, zero, 24
001a40  9bc80701  srli r17, r15, 16
001a44  9b881800  andi r17, r17, 1
001a48  8b971711  add.s r15, r15, r17
001a4c  8b974711  add.s r15, r15, r20
001a50  db010000  j 12
001a54  ab084000  lui r17, 1024
001a58  97971701  or r15, r15, r17
001a5c  e348ffef  loadli.w r17,  -2052(r30)
001a60  97881501  and r17, r11, r17
001a64  93881905  setlt.u r17, r19, r17
001a68  3be00800  bneq r17, zero, 24
001a6c  9bc80501  srli r17, r11, 16
001a70  9b881800  andi r17, r17, 1
001a74  8b951511  add.s r11, r11, r17
001a78  8b994511  add.s r19, r11, r20
001a7c  db010000  j 12
001a80  ab084000  lui r17, 1024
001a84  97991501  or r19, r11, r17
001a88  e345ffef  loadli.w r11,  -2052(r30)
001a8c  ab08807f  lui r17, 522240
001a90  9705b400  and r11, r8, r11
001a94  9385b804  setlt.u r11, r17, r11
001a98  3be00500  bneq r11, zero, 24
001a9c  9b450401  srli r11, r8, 16
001aa0  9b851500  andi r11, r11, 1
001aa4  0b14b410  add.s r8, r8, r11
001aa8  0b144411  add.s r8, r8, r20
001aac  db010000  j 12
001ab0  ab054000  lui r11, 1024
001ab4  1714b400  or r8, r8, r11
001ab8  e345ffef  loadli.w r11,  -2052(r30)
001abc  9705b100  and r11, r2, r11
001ac0  9385b804  setlt.u r11, r17, r11
001ac4  3be00500  bneq r11, zero, 24
001ac8  9b450101  srli r11, r2, 16
001acc  9b851500  andi r11, r11, 1
001ad0  0b11b110  add.s r2, r2, r11
001ad4  0b114111  add.s r2, r2, r20
001ad8  db010000  j 12
001adc  ab054000  lui r11, 1024
001ae0  1711b100  or r2, r2, r11
001ae4  e345ffef  loadli.w r11,  -2052(r30)
001ae8  9705b800  and r11, r16, r11
001aec  9385b804  setlt.u r11, r17, r11
001af0  3be00500  bneq r11, zero, 24
001af4  9b450801  srli r11, r16, 16
001af8  9b851500  andi r11, r11, 1
001afc  8b15b810  add.s r11, r16, r11
001b00  8b954511  add.s r11, r11, r20
001b04  db010000  j 12
001b08  ab054000  lui r11, 1024
001b0c  9715b800  or r11, r16, r11
001b10  6348ffef  loadli.w r16,  -2052(r30)
001b14  17880601  and r16, r13, r16
001b18  13880805  setlt.u r16, r17, r16
001b1c  3b600800  bneq r16, zero, 24
001b20  1bc80601  srli r16, r13, 16
001b24  1b081800  andi r16, r16, 1
001b28  8b960611  add.s r13, r13, r16
001b2c  8b964611  add.s r13, r13, r20
001b30  db010000  j 12
001b34  2b084000  lui r16, 1024
001b38  97960601  or r13, r13, r16
001b3c  6348ffef  loadli.w r16,  -2052(r30)
001b40  17080701  and r16, r14, r16
001b44  13880805  setlt.u r16, r17, r16
001b48  3b600800  bneq r16, zero, 24
001b4c  1b480701  srli r16, r14, 16
001b50  1b081800  andi r16, r16, 1
001b54  0b170711  add.s r14, r14, r16
001b58  0b174711  add.s r14, r14, r20
001b5c  db010000  j 12
001b60  2b084000  lui r16, 1024
001b64  17170701  or r14, r14, r16
001b68  6348ffef  loadli.w r16,  -2052(r30)
001b6c  17080601  and r16, r12, r16
001b70  13880805  setlt.u r16, r17, r16
001b74  3b600800  bneq r16, zero, 24
001b78  1b480601  srli r16, r12, 16
001b7c  1b081800  andi r16, r16, 1
001b80  0b160611  add.s r12, r12, r16
001b84  0b164611  add.s r12, r12, r20
001b88  db010000  j 12
001b8c  2b084000  lui r16, 1024
001b90  17160601  or r12, r12, r16
001b94  6348ffef  loadli.w r16,  -2052(r30)
001b98  17080501  and r16, r10, r16
001b9c  13880805  setlt.u r16, r17, r16
001ba0  3b600800  bneq r16, zero, 24
001ba4  1b480501  srli r16, r10, 16
001ba8  1b081800  andi r16, r16, 1
001bac  0b150511  add.s r10, r10, r16
001bb0  0b154511  add.s r10, r10, r20
001bb4  db010000  j 12
001bb8  2b084000  lui r16, 1024
001bbc  17150501  or r10, r10, r16
001bc0  6348ffef  loadli.w r16,  -2052(r30)
001bc4  17880401  and r16, r9, r16
001bc8  13880805  setlt.u r16, r17, r16
001bcc  3b600800  bneq r16, zero, 24
001bd0  1bc80401  srli r16, r9, 16
001bd4  1b081800  andi r16, r16, 1
001bd8  8b940411  add.s r9, r9, r16
001bdc  8b944411  add.s r9, r9, r20
001be0  db010000  j 12
001be4  2b084000  lui r16, 1024
001be8  97940401  or r9, r9, r16
001bec  6348ffef  loadli.w r16,  -2052(r30)
001bf0  17880301  and r16, r7, r16
001bf4  13880805  setlt.u r16, r17, r16
001bf8  3b600800  bneq r16, zero, 24
001bfc  1bc80301  srli r16, r7, 16
001c00  1b081800  andi r16, r16, 1
001c04  8b930311  add.s r7, r7, r16
001c08  8b934311  add.s r7, r7, r20
001c0c  db010000  j 12
001c10  2b084000  lui r16, 1024
001c14  97930301  or r7, r7, r16
001c18  6348ffef  loadli.w r16,  -2052(r30)
001c1c  17080301  and r16, r6, r16
001c20  13880805  setlt.u r16, r17, r16
001c24  3b600800  bneq r16, zero, 24
001c28  1b480301  srli r16, r6, 16
001c2c  1b081800  andi r16, r16, 1
001c30  0b130311  add.s r6, r6, r16
001c34  0b134311  add.s r6, r6, r20
001c38  db010000  j 12
001c3c  2b084000  lui r16, 1024
001c40  17130301  or r6, r6, r16
001c44  6348ffef  loadli.w r16,  -2052(r30)
001c48  17880201  and r16, r5, r16
001c4c  13880805  setlt.u r16, r17, r16
001c50  3b600800  bneq r16, zero, 24
001c54  1bc80201  srli r16, r5, 16
001c58  1b081800  andi r16, r16, 1
001c5c  8b920211  add.s r5, r5, r16
001c60  8b924211  add.s r5, r5, r20
001c64  db010000  j 12
001c68  2b084000  lui r16, 1024
001c6c  97920201  or r5, r5, r16
001c70  6348ffef  loadli.w r16,  -2052(r30)
001c74  17080201  and r16, r4, r16
001c78  13880805  setlt.u r16, r17, r16
001c7c  3b600800  bneq r16, zero, 24
001c80  1b480201  srli r16, r4, 16
001c84  1b081800  andi r16, r16, 1
001c88  0b120211  add.s r4, r4, r16
001c8c  0b124211  add.s r4, r4, r20
001c90  db010000  j 12
001c94  2b084000  lui r16, 1024
001c98  17120201  or r4, r4, r16
001c9c  6348ffef  loadli.w r16,  -2052(r30)
001ca0  17880101  and r16, r3, r16
001ca4  13880805  setlt.u r16, r17, r16
001ca8  3b600800  bneq r16, zero, 24
001cac  1bc80101  srli r16, r3, 16
001cb0  1b081800  andi r16, r16, 1
001cb4  8b910111  add.s r3, r3, r16
001cb8  8b914111  add.s r3, r3, r20
001cbc  db010000  j 12
001cc0  2b084000  lui r16, 1024
001cc4  97910101  or r3, r3, r16
001cc8  2b08ffff  lui r16, 1048560
001ccc  17070701  and r14, r14, r16
001cd0  17060601  and r12, r12, r16
001cd4  17010101  and r2, r2, r16
001cd8  978a0301  and r21, r7, r16
001cdc  97840401  and r9, r9, r16
001ce0  170b0301  and r22, r6, r16
001ce4  978b0201  and r23, r5, r16
001ce8  170c0201  and r24, r4, r16
001cec  978d0101  and r27, r3, r16
001cf0  97800001  and r1, r1, r16
001cf4  97870701  and r15, r15, r16
001cf8  97880901  and r17, r19, r16
001cfc  17040401  and r8, r8, r16
001d00  97850501  and r11, r11, r16
001d04  97860601  and r13, r13, r16
001d08  17050501  and r10, r10, r16
001d0c  9f010700  addli r3, r14, 0
001d10  1f020600  addli r4, r12, 0
001d14  674d2fec  storeli.w r2, -2348(r30)
001d18  e70b5fed  storeli.w r21, -2376(r30)
001d1c  1f830a00  addli r6, r21, 0
001d20  9f0a0100  addli r21, r2, 0
001d24  6301efef  loadli.w r2,  -2064(r30)
001d28  e70cefec  storeli.w r14, -2360(r30)
001d2c  674ccfec  storeli.w r12, -2364(r30)
001d30  674e1fec  storeli.w r1, -2332(r30)
001d34  1f860000  addli r12, r1, 0
001d38  670effec  storeli.w r15, -2336(r30)
001d3c  1f870700  addli r14, r15, 0
001d40  e70d8fec  storeli.w r8, -2344(r30)
001d44  1f080400  addli r16, r8, 0
001d48  9f870800  addli r15, r17, 0
001d4c  e74b9fec  storeli.w r9, -2372(r30)
001d50  1f890400  addli r18, r9, 0
001d54  674b6fed  storeli.w r22, -2380(r30)
001d58  9f020b00  addli r5, r22, 0
001d5c  1f8b0500  addli r22, r11, 0
001d60  670b7fed  storeli.w r23, -2384(r30)
001d64  9f830b00  addli r7, r23, 0
001d68  9f8b0600  addli r23, r13, 0
001d6c  e74a8fed  storeli.w r24, -2388(r30)
001d70  1f040c00  addli r8, r24, 0
001d74  e70abfed  storeli.w r27, -2392(r30)
001d78  9f840d00  addli r9, r27, 0
001d7c  9f008000  addli r1, zero, 64
001d80  e74d1fed  storeli.w r17, -2340(r30)
001d84  670dbfec  storeli.w r11, -2352(r30)
001d88  e74cdfec  storeli.w r13, -2356(r30)
001d8c  670cafec  storeli.w r10, -2368(r30)
001d90  1f8c0100  addli r24, r3, 0
001d94  9f010500  addli r3, r10, 0
001d98  9f0d0200  addli r27, r4, 0
001d9c  3f111100  blt.s r2, r1, 68
001da0  1f060000  addli r12, zero, 0
001da4  1f070000  addli r14, zero, 0
001da8  9f070000  addli r15, zero, 0
001dac  1f080000  addli r16, zero, 0
001db0  9f0a0000  addli r21, zero, 0
001db4  1f0b0000  addli r22, zero, 0
001db8  9f0b0000  addli r23, zero, 0
001dbc  1f0c0000  addli r24, zero, 0
001dc0  9f0d0000  addli r27, zero, 0
001dc4  9f010000  addli r3, zero, 0
001dc8  1f090000  addli r18, zero, 0
001dcc  1f030000  addli r6, zero, 0
001dd0  9f020000  addli r5, zero, 0
001dd4  9f030000  addli r7, zero, 0
001dd8  1f040000  addli r8, zero, 0
001ddc  9f040000  addli r9, zero, 0
001de0  9f008e00  addli r1, r28, 64
001de4  1f014000  addli r2, zero, 32
001de8  e74e1fec  storeli.w r1, -2324(r30)
001dec  9f000e01  addli r1, r28, 128
001df0  670f1fec  storeli.w r1, -2320(r30)
001df4  9f008e01  addli r1, r28, 192
001df8  674f1fec  storeli.w r1, -2316(r30)
001dfc  00a00000  mfence { lm }
001e00  5b170000  j 184
001e04  1f040000  addli r8, zero, 0
001e08  9f050000  addli r11, zero, 0
001e0c  9f060000  addli r13, zero, 0
001e10  1f0a0000  addli r20, zero, 0
001e14  9f0c0000  addli r25, zero, 0
001e18  1f0d0000  addli r26, zero, 0
001e1c  9f000000  addli r1, zero, 0
001e20  9f090000  addli r19, zero, 0
001e24  1f0e0000  addli r28, zero, 0
001e28  1f030000  addli r6, zero, 0
001e2c  1f010000  addli r2, zero, 0
001e30  1f020000  addli r4, zero, 0
001e34  9f020000  addli r5, zero, 0
001e38  9f030000  addli r7, zero, 0
001e3c  9f080000  addli r17, zero, 0
001e40  9f040000  addli r9, zero, 0
001e44  8beb1b10  add.f.rn r23, r23, r1
001e48  e3008fee  loadli.w r1,  -2240(r30)
001e4c  0b668610  add.f.rn r12, r12, r8
001e50  63046fee  loadli.w r8,  -2256(r30)
001e54  8be16110  add.f.rn r3, r3, r6
001e58  63030fef  loadli.w r6,  -2176(r30)
001e5c  8bedcd11  add.f.rn r27, r27, r28
001e60  0b692910  add.f.rn r18, r18, r2
001e64  0b67b710  add.f.rn r14, r14, r11
001e68  8be7d710  add.f.rn r15, r15, r13
001e6c  0b684811  add.f.rn r16, r16, r20
001e70  8bea9a11  add.f.rn r21, r21, r25
001e74  0b6bab11  add.f.rn r22, r22, r26
001e78  0b6c3c11  add.f.rn r24, r24, r19
001e7c  63015fee  loadli.w r2,  -2264(r30)
001e80  1f0e0ff8  addli r28, r30, -1024
001e84  8be05010  add.f.rn r1, r1, r5
001e88  0b634310  add.f.rn r6, r6, r4
001e8c  0b641411  add.f.rn r8, r8, r17
001e90  1f014100  addli r2, r2, 32
001e94  9f820000  addli r5, r1, 0
001e98  e3007fee  loadli.w r1,  -2248(r30)
001e9c  8be07010  add.f.rn r1, r1, r7
001ea0  9f830000  addli r7, r1, 0
001ea4  e3405fee  loadli.w r1,  -2260(r30)
001ea8  8be09010  add.f.rn r1, r1, r9
001eac  9f840000  addli r9, r1, 0
001eb0  9f000002  addli r1, zero, 256
001eb4  b73b1102  beq r2, r1, 1772
001eb8  0b122e10  add.s r4, r28, r2
001ebc  67045fee  storeli.w r5, -2240(r30)
001ec0  9230b002  vadd.s.mz vr1{mr1}, zero, vr11
001ec4  1f100000  addli zero, zero, 1
001ec8  67086fee  storeli.w r6, -2176(r30)
001ecc  e7429fee  storeli.w r9, -2260(r30)
001ed0  67038fee  storeli.w r8, -2256(r30)
001ed4  e7037fee  storeli.w r7, -2248(r30)
001ed8  1f0e0100  addli r28, r2, 0
001edc  eb320200  load.hu r5, 0(r4)
001ee0  6b332200  load.hu r6, 2(r4)
001ee4  7e0100e0  vmmov mr2, zero
001ee8  17200000  xor zero, zero, zero
001eec  6b31a201  load.hu r2, 26(r4)
001ef0  eb30c201  load.hu r1, 28(r4)
001ef4  eb334200  load.hu r7, 4(r4)
001ef8  6b346200  load.hu r8, 6(r4)
001efc  eb348200  load.hu r9, 8(r4)
001f00  6b35a200  load.hu r10, 10(r4)
001f04  eb35c200  load.hu r11, 12(r4)
001f08  eb36e200  load.hu r13, 14(r4)
001f0c  eb380201  load.hu r17, 16(r4)
001f10  eb392201  load.hu r19, 18(r4)
001f14  6b3a4201  load.hu r20, 20(r4)
001f18  eb3c6201  load.hu r25, 22(r4)
001f1c  6b3d8201  load.hu r26, 24(r4)
001f20  6b32e201  load.hu r4, 30(r4)
001f24  1231b002  vadd.s.mz vr2{mr1}, zero, vr11
001f28  b3920218  bfloat2float.rn r5, r5
001f2c  33110118  bfloat2float.rn r2, r2
001f30  b3900018  bfloat2float.rn r1, r1
001f34  eaa01234  vor.u.mh vr1{mr2}, r5, vr1
001f38  b3120318  bfloat2float.rn r5, r6
001f3c  1f230000  addli r6, zero, 2
001f40  fe0103e0  vmmov mr3, r6
001f44  1f430000  addli r6, zero, 4
001f48  eaa01236  vor.u.mh vr1{mr3}, r5, vr1
001f4c  b3920318  bfloat2float.rn r5, r7
001f50  7e0003e0  vmmov mr0, r6
001f54  1f031000  addli r6, zero, 8
001f58  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
001f5c  b3120418  bfloat2float.rn r5, r8
001f60  7e0003e0  vmmov mr0, r6
001f64  1f032000  addli r6, zero, 16
001f68  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
001f6c  b3920418  bfloat2float.rn r5, r9
001f70  7e0003e0  vmmov mr0, r6
001f74  1f034000  addli r6, zero, 32
001f78  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
001f7c  b3120518  bfloat2float.rn r5, r10
001f80  7e0003e0  vmmov mr0, r6
001f84  1f038000  addli r6, zero, 64
001f88  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
001f8c  b3920518  bfloat2float.rn r5, r11
001f90  7e0003e0  vmmov mr0, r6
001f94  1f030001  addli r6, zero, 128
001f98  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
001f9c  b3920618  bfloat2float.rn r5, r13
001fa0  7e0003e0  vmmov mr0, r6
001fa4  1f030002  addli r6, zero, 256
001fa8  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
001fac  b3920818  bfloat2float.rn r5, r17
001fb0  7e0003e0  vmmov mr0, r6
001fb4  1f030004  addli r6, zero, 512
001fb8  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
001fbc  b3920918  bfloat2float.rn r5, r19
001fc0  7e0003e0  vmmov mr0, r6
001fc4  1f030008  addli r6, zero, 1024
001fc8  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
001fcc  b3120a18  bfloat2float.rn r5, r20
001fd0  7e0003e0  vmmov mr0, r6
001fd4  1f030010  addli r6, zero, 2048
001fd8  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
001fdc  b3920c18  bfloat2float.rn r5, r25
001fe0  7e0003e0  vmmov mr0, r6
001fe4  1f030020  addli r6, zero, 4096
001fe8  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
001fec  b3120d18  bfloat2float.rn r5, r26
001ff0  7e0003e0  vmmov mr0, r6
001ff4  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
001ff8  9f020040  addli r5, zero, 8192
001ffc  7e8002e0  vmmov mr0, r5
002000  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002004  2b410000  lui r2, 4
002008  7e0001e0  vmmov mr0, r2
00200c  1f010ffa  addli r2, r30, -768
002010  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002014  b3100218  bfloat2float.rn r1, r4
002018  2b820000  lui r4, 8
00201c  0b11c111  add.s r2, r2, r28
002020  e702cfef  storeli.w r28, -2264(r30)
002024  7e0002e0  vmmov mr0, r4
002028  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00202c  eb300100  load.hu r1, 0(r2)
002030  6b322100  load.hu r4, 2(r2)
002034  eb324100  load.hu r5, 4(r2)
002038  6b336100  load.hu r6, 6(r2)
00203c  eb338100  load.hu r7, 8(r2)
002040  6b34a100  load.hu r8, 10(r2)
002044  eb34c100  load.hu r9, 12(r2)
002048  6b35e100  load.hu r10, 14(r2)
00204c  eb350101  load.hu r11, 16(r2)
002050  eb362101  load.hu r13, 18(r2)
002054  eb384101  load.hu r17, 20(r2)
002058  eb396101  load.hu r19, 22(r2)
00205c  6b3a8101  load.hu r20, 24(r2)
002060  eb3ca101  load.hu r25, 26(r2)
002064  6b3dc101  load.hu r26, 28(r2)
002068  6b31e101  load.hu r2, 30(r2)
00206c  b3900018  bfloat2float.rn r1, r1
002070  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002074  b3100218  bfloat2float.rn r1, r4
002078  1f420000  addli r4, zero, 4
00207c  7e0102e0  vmmov mr2, r4
002080  1f021000  addli r4, zero, 8
002084  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
002088  b3900218  bfloat2float.rn r1, r5
00208c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002090  b3100318  bfloat2float.rn r1, r6
002094  7e0102e0  vmmov mr2, r4
002098  1f022000  addli r4, zero, 16
00209c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0020a0  b3900318  bfloat2float.rn r1, r7
0020a4  7e0102e0  vmmov mr2, r4
0020a8  1f024000  addli r4, zero, 32
0020ac  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0020b0  b3100418  bfloat2float.rn r1, r8
0020b4  7e0102e0  vmmov mr2, r4
0020b8  1f028000  addli r4, zero, 64
0020bc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0020c0  b3900418  bfloat2float.rn r1, r9
0020c4  7e0102e0  vmmov mr2, r4
0020c8  1f020001  addli r4, zero, 128
0020cc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0020d0  b3100518  bfloat2float.rn r1, r10
0020d4  7e0102e0  vmmov mr2, r4
0020d8  1f020002  addli r4, zero, 256
0020dc  2b05807f  lui r10, 522240
0020e0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0020e4  b3900518  bfloat2float.rn r1, r11
0020e8  7e0102e0  vmmov mr2, r4
0020ec  1f020004  addli r4, zero, 512
0020f0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0020f4  b3900618  bfloat2float.rn r1, r13
0020f8  7e0102e0  vmmov mr2, r4
0020fc  1f020008  addli r4, zero, 1024
002100  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002104  b3900818  bfloat2float.rn r1, r17
002108  7e0102e0  vmmov mr2, r4
00210c  1f020010  addli r4, zero, 2048
002110  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002114  b3900918  bfloat2float.rn r1, r19
002118  7e0102e0  vmmov mr2, r4
00211c  1f020020  addli r4, zero, 4096
002120  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002124  b3100a18  bfloat2float.rn r1, r20
002128  7e0102e0  vmmov mr2, r4
00212c  1f020040  addli r4, zero, 8192
002130  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002134  b3900c18  bfloat2float.rn r1, r25
002138  7e0102e0  vmmov mr2, r4
00213c  2b420000  lui r4, 4
002140  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002144  b3100d18  bfloat2float.rn r1, r26
002148  7e0102e0  vmmov mr2, r4
00214c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002150  b3100118  bfloat2float.rn r1, r2
002154  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
002158  9f000ff4  addli r1, r30, -1536
00215c  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
002160  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002164  00a00000  mfence { lm }
002168  e3040ff4  loadli.w r9,  -1536(r30)
00216c  e3430ff4  loadli.w r7,  -1532(r30)
002170  63031ff4  loadli.w r6,  -1528(r30)
002174  e3421ff4  loadli.w r5,  -1524(r30)
002178  63022ff4  loadli.w r4,  -1520(r30)
00217c  634a2ff4  loadli.w r20,  -1516(r30)
002180  e3003ff4  loadli.w r1,  -1512(r30)
002184  e3493ff4  loadli.w r19,  -1508(r30)
002188  630e4ff4  loadli.w r28,  -1504(r30)
00218c  e3484ff4  loadli.w r17,  -1500(r30)
002190  6341ffef  loadli.w r2,  -2052(r30)
002194  17842400  and r8, r9, r2
002198  63015ff4  loadli.w r2,  -1496(r30)
00219c  634d5ff4  loadli.w r26,  -1492(r30)
0021a0  13058504  setlt.u r10, r10, r8
0021a4  63046ff4  loadli.w r8,  -1488(r30)
0021a8  e3456ff4  loadli.w r11,  -1484(r30)
0021ac  e30c7ff4  loadli.w r25,  -1480(r30)
0021b0  e3467ff4  loadli.w r13,  -1476(r30)
0021b4  3b700500  bneq r10, zero, 28
0021b8  1bc50401  srli r10, r9, 16
0021bc  1b051500  andi r10, r10, 1
0021c0  8b94a410  add.s r9, r9, r10
0021c4  6305ffef  loadli.w r10,  -2056(r30)
0021c8  8b94a410  add.s r9, r9, r10
0021cc  db010000  j 12
0021d0  2b054000  lui r10, 1024
0021d4  9794a400  or r9, r9, r10
0021d8  67429fee  storeli.w r9, -2268(r30)
0021dc  e344ffef  loadli.w r9,  -2052(r30)
0021e0  2b05807f  lui r10, 522240
0021e4  97849300  and r9, r7, r9
0021e8  93049504  setlt.u r9, r10, r9
0021ec  3bf00400  bneq r9, zero, 28
0021f0  9bc40301  srli r9, r7, 16
0021f4  9b841400  andi r9, r9, 1
0021f8  8b939310  add.s r7, r7, r9
0021fc  e304ffef  loadli.w r9,  -2056(r30)
002200  8b939310  add.s r7, r7, r9
002204  db010000  j 12
002208  ab044000  lui r9, 1024
00220c  97939300  or r7, r7, r9
002210  67027fee  storeli.w r7, -2272(r30)
002214  e343ffef  loadli.w r7,  -2052(r30)
002218  ab04807f  lui r9, 522240
00221c  97037300  and r7, r6, r7
002220  93837404  setlt.u r7, r9, r7
002224  3bf00300  bneq r7, zero, 28
002228  9b430301  srli r7, r6, 16
00222c  9b831300  andi r7, r7, 1
002230  0b137310  add.s r6, r6, r7
002234  e303ffef  loadli.w r7,  -2056(r30)
002238  0b137310  add.s r6, r6, r7
00223c  db010000  j 12
002240  ab034000  lui r7, 1024
002244  17137300  or r6, r6, r7
002248  e7416fee  storeli.w r6, -2276(r30)
00224c  6343ffef  loadli.w r6,  -2052(r30)
002250  ab03807f  lui r7, 522240
002254  17836200  and r6, r5, r6
002258  13836304  setlt.u r6, r7, r6
00225c  3b700300  bneq r6, zero, 28
002260  1bc30201  srli r6, r5, 16
002264  1b031300  andi r6, r6, 1
002268  8b926210  add.s r5, r5, r6
00226c  6303ffef  loadli.w r6,  -2056(r30)
002270  8b926210  add.s r5, r5, r6
002274  db010000  j 12
002278  2b034000  lui r6, 1024
00227c  97926200  or r5, r5, r6
002280  e7015fee  storeli.w r5, -2280(r30)
002284  e342ffef  loadli.w r5,  -2052(r30)
002288  2b03807f  lui r6, 522240
00228c  97025200  and r5, r4, r5
002290  93025304  setlt.u r5, r6, r5
002294  3bf00200  bneq r5, zero, 28
002298  9b420201  srli r5, r4, 16
00229c  9b821200  andi r5, r5, 1
0022a0  0b125210  add.s r4, r4, r5
0022a4  e302ffef  loadli.w r5,  -2056(r30)
0022a8  0b125210  add.s r4, r4, r5
0022ac  db010000  j 12
0022b0  ab024000  lui r5, 1024
0022b4  17125200  or r4, r4, r5
0022b8  67414fee  storeli.w r4, -2284(r30)
0022bc  6342ffef  loadli.w r4,  -2052(r30)
0022c0  ab02807f  lui r5, 522240
0022c4  17024a00  and r4, r20, r4
0022c8  13824204  setlt.u r4, r5, r4
0022cc  3b700200  bneq r4, zero, 28
0022d0  1b420a01  srli r4, r20, 16
0022d4  e302ffef  loadli.w r5,  -2056(r30)
0022d8  1b021200  andi r4, r4, 1
0022dc  0b124a10  add.s r4, r20, r4
0022e0  0b1a5210  add.s r20, r4, r5
0022e4  db010000  j 12
0022e8  2b024000  lui r4, 1024
0022ec  171a4a00  or r20, r20, r4
0022f0  6342ffef  loadli.w r4,  -2052(r30)
0022f4  ab02807f  lui r5, 522240
0022f8  17824000  and r4, r1, r4
0022fc  13824204  setlt.u r4, r5, r4
002300  3b700200  bneq r4, zero, 28
002304  1bc20001  srli r4, r1, 16
002308  1b021200  andi r4, r4, 1
00230c  8b904010  add.s r1, r1, r4
002310  6302ffef  loadli.w r4,  -2056(r30)
002314  8b904010  add.s r1, r1, r4
002318  db010000  j 12
00231c  2b024000  lui r4, 1024
002320  97904000  or r1, r1, r4
002324  6342ffef  loadli.w r4,  -2052(r30)
002328  17824900  and r4, r19, r4
00232c  13824204  setlt.u r4, r5, r4
002330  3b700200  bneq r4, zero, 28
002334  1bc20901  srli r4, r19, 16
002338  e302ffef  loadli.w r5,  -2056(r30)
00233c  1b021200  andi r4, r4, 1
002340  0b924910  add.s r4, r19, r4
002344  8b195210  add.s r19, r4, r5
002348  db010000  j 12
00234c  2b024000  lui r4, 1024
002350  97994900  or r19, r19, r4
002354  6342ffef  loadli.w r4,  -2052(r30)
002358  ab02807f  lui r5, 522240
00235c  17024e00  and r4, r28, r4
002360  13824204  setlt.u r4, r5, r4
002364  3b700200  bneq r4, zero, 28
002368  1b420e01  srli r4, r28, 16
00236c  e302ffef  loadli.w r5,  -2056(r30)
002370  1b021200  andi r4, r4, 1
002374  0b124e10  add.s r4, r28, r4
002378  0b1e5210  add.s r28, r4, r5
00237c  db010000  j 12
002380  2b024000  lui r4, 1024
002384  171e4e00  or r28, r28, r4
002388  6342ffef  loadli.w r4,  -2052(r30)
00238c  ab02807f  lui r5, 522240
002390  17824800  and r4, r17, r4
002394  13824204  setlt.u r4, r5, r4
002398  3b700200  bneq r4, zero, 28
00239c  1bc20801  srli r4, r17, 16
0023a0  e302ffef  loadli.w r5,  -2056(r30)
0023a4  1b021200  andi r4, r4, 1
0023a8  0b924810  add.s r4, r17, r4
0023ac  8b185210  add.s r17, r4, r5
0023b0  db010000  j 12
0023b4  2b024000  lui r4, 1024
0023b8  97984800  or r17, r17, r4
0023bc  6342ffef  loadli.w r4,  -2052(r30)
0023c0  ab02807f  lui r5, 522240
0023c4  17024100  and r4, r2, r4
0023c8  13824204  setlt.u r4, r5, r4
0023cc  3b700200  bneq r4, zero, 28
0023d0  1b420101  srli r4, r2, 16
0023d4  1b021200  andi r4, r4, 1
0023d8  0b114110  add.s r2, r2, r4
0023dc  6302ffef  loadli.w r4,  -2056(r30)
0023e0  0b114110  add.s r2, r2, r4
0023e4  db010000  j 12
0023e8  2b024000  lui r4, 1024
0023ec  17114100  or r2, r2, r4
0023f0  6342ffef  loadli.w r4,  -2052(r30)
0023f4  17024d00  and r4, r26, r4
0023f8  13824204  setlt.u r4, r5, r4
0023fc  3b700200  bneq r4, zero, 28
002400  1b420d01  srli r4, r26, 16
002404  6305ffef  loadli.w r10,  -2056(r30)
002408  1b021200  andi r4, r4, 1
00240c  0b124d10  add.s r4, r26, r4
002410  0b12a210  add.s r4, r4, r10
002414  5b020000  j 16
002418  2b024000  lui r4, 1024
00241c  6305ffef  loadli.w r10,  -2056(r30)
002420  17124d00  or r4, r26, r4
002424  e342ffef  loadli.w r5,  -2052(r30)
002428  97025400  and r5, r8, r5
00242c  93025304  setlt.u r5, r6, r5
002430  3be00200  bneq r5, zero, 24
002434  9b420401  srli r5, r8, 16
002438  9b821200  andi r5, r5, 1
00243c  8b125410  add.s r5, r8, r5
002440  8b92a210  add.s r5, r5, r10
002444  db010000  j 12
002448  ab024000  lui r5, 1024
00244c  97125400  or r5, r8, r5
002450  6343ffef  loadli.w r6,  -2052(r30)
002454  17836500  and r6, r11, r6
002458  13836304  setlt.u r6, r7, r6
00245c  3b600300  bneq r6, zero, 24
002460  1bc30501  srli r6, r11, 16
002464  1b031300  andi r6, r6, 1
002468  0b936510  add.s r6, r11, r6
00246c  8b13a310  add.s r7, r6, r10
002470  db010000  j 12
002474  2b034000  lui r6, 1024
002478  97936500  or r7, r11, r6
00247c  6343ffef  loadli.w r6,  -2052(r30)
002480  2b04807f  lui r8, 522240
002484  17836c00  and r6, r25, r6
002488  13036404  setlt.u r6, r8, r6
00248c  3b600300  bneq r6, zero, 24
002490  1bc30c01  srli r6, r25, 16
002494  1b031300  andi r6, r6, 1
002498  0b936c10  add.s r6, r25, r6
00249c  8b14a310  add.s r9, r6, r10
0024a0  db010000  j 12
0024a4  2b034000  lui r6, 1024
0024a8  97946c00  or r9, r25, r6
0024ac  6343ffef  loadli.w r6,  -2052(r30)
0024b0  17836600  and r6, r13, r6
0024b4  13036404  setlt.u r6, r8, r6
0024b8  3b600300  bneq r6, zero, 24
0024bc  1bc30601  srli r6, r13, 16
0024c0  1b031300  andi r6, r6, 1
0024c4  0b936610  add.s r6, r13, r6
0024c8  0b15a310  add.s r10, r6, r10
0024cc  db010000  j 12
0024d0  2b034000  lui r6, 1024
0024d4  17956600  or r10, r13, r6
0024d8  6304efef  loadli.w r8,  -2064(r30)
0024dc  1f038000  addli r6, zero, 64
0024e0  3f206400  blt.s r8, r6, 8
0024e4  5b24ffff  j -1760
0024e8  63434fee  loadli.w r6,  -2268(r30)
0024ec  67012fef  storeli.w r18, -2288(r30)
0024f0  1f890100  addli r18, r3, 0
0024f4  9f810d00  addli r3, r27, 0
0024f8  9f0d0c00  addli r27, r24, 0
0024fc  1f8c0b00  addli r24, r23, 0
002500  9f0b0b00  addli r23, r22, 0
002504  1f8b0a00  addli r22, r21, 0
002508  9f0a0800  addli r21, r16, 0
00250c  1f880700  addli r16, r15, 0
002510  9f070700  addli r15, r14, 0
002514  1f070600  addli r14, r12, 0
002518  2b06ffff  lui r12, 1048560
00251c  1f0d0a00  addli r26, r20, 0
002520  170dcd00  and r26, r26, r12
002524  9780c000  and r1, r1, r12
002528  9789c900  and r19, r19, r12
00252c  170ece00  and r28, r28, r12
002530  1701c100  and r2, r2, r12
002534  1702c200  and r4, r4, r12
002538  9782c200  and r5, r5, r12
00253c  9783c300  and r7, r7, r12
002540  1704c300  and r8, r6, r12
002544  63034fee  loadli.w r6,  -2272(r30)
002548  9705c300  and r11, r6, r12
00254c  63433fee  loadli.w r6,  -2276(r30)
002550  9706c300  and r13, r6, r12
002554  63033fee  loadli.w r6,  -2280(r30)
002558  170ac300  and r20, r6, r12
00255c  63432fee  loadli.w r6,  -2284(r30)
002560  970cc300  and r25, r6, r12
002564  1783c800  and r6, r17, r12
002568  9788c400  and r17, r9, r12
00256c  9704c500  and r9, r10, r12
002570  1f060700  addli r12, r14, 0
002574  1f870700  addli r14, r15, 0
002578  9f070800  addli r15, r16, 0
00257c  1f880a00  addli r16, r21, 0
002580  9f0a0b00  addli r21, r22, 0
002584  1f8b0b00  addli r22, r23, 0
002588  9f0b0c00  addli r23, r24, 0
00258c  1f8c0d00  addli r24, r27, 0
002590  9f8d0100  addli r27, r3, 0
002594  9f010900  addli r3, r18, 0
002598  63092fee  loadli.w r18,  -2288(r30)
00259c  5b15ffff  j -1880
0025a0  8b60e610  add.f.rn r1, r12, r14
0025a4  6341cfe9  loadli.w r2,  -2844(r30)
0025a8  8be0f010  add.f.rn r1, r1, r15
0025ac  8be00011  add.f.rn r1, r1, r16
0025b0  8be05011  add.f.rn r1, r1, r21
0025b4  8be06011  add.f.rn r1, r1, r22
0025b8  8be07011  add.f.rn r1, r1, r23
0025bc  8be08011  add.f.rn r1, r1, r24
0025c0  8be0b011  add.f.rn r1, r1, r27
0025c4  8be03010  add.f.rn r1, r1, r3
0025c8  8be02011  add.f.rn r1, r1, r18
0025cc  8be06010  add.f.rn r1, r1, r6
0025d0  8be05010  add.f.rn r1, r1, r5
0025d4  8be07010  add.f.rn r1, r1, r7
0025d8  8be08010  add.f.rn r1, r1, r8
0025dc  8be09010  add.f.rn r1, r1, r9
0025e0  73601100  stores.w r1, 0(r2)
0025e4  00a00300  mfence { lm, sm, gm }
0025e8  63421fee  loadli.w r4,  -2292(r30)
0025ec  80210204  csr_set csr3, r4
0025f0  00d00100  sync_group
0025f4  e3001fee  loadli.w r1,  -2296(r30)
0025f8  3ba10000  bneq r1, zero, 72
0025fc  e342dfe9  loadli.w r5,  -2836(r30)
002600  efc00200  loads.w r1, 0(r5)
002604  6fc14200  loads.w r2, 4(r5)
002608  efc18200  loads.w r3, 8(r5)
00260c  8be02010  add.f.rn r1, r1, r2
002610  6fc1c200  loads.w r2, 12(r5)
002614  8be03010  add.f.rn r1, r1, r3
002618  efc10201  loads.w r3, 16(r5)
00261c  8be02010  add.f.rn r1, r1, r2
002620  6fc14201  loads.w r2, 20(r5)
002624  8be03010  add.f.rn r1, r1, r3
002628  efc18201  loads.w r3, 24(r5)
00262c  8be02010  add.f.rn r1, r1, r2
002630  6fc1c201  loads.w r2, 28(r5)
002634  8be03010  add.f.rn r1, r1, r3
002638  8be02010  add.f.rn r1, r1, r2
00263c  73e01200  stores.w r1, 0(r5)
002640  00a00300  mfence { lm, sm, gm }
002644  80210204  csr_set csr3, r4
002648  00d00100  sync_group
00264c  e340dfe9  loadli.w r1,  -2836(r30)
002650  2b01803a  lui r2, 239616
002654  efc00000  loads.w r1, 0(r1)
002658  0bea2020  mul.f.rn r20, r1, r2
00265c  6301efef  loadli.w r2,  -2064(r30)
002660  9f008000  addli r1, zero, 64
002664  3f211100  blt.s r2, r1, 72
002668  1f0b0000  addli r22, zero, 0
00266c  9f0b0000  addli r23, zero, 0
002670  1f0c0000  addli r24, zero, 0
002674  9f0d0000  addli r27, zero, 0
002678  1f050000  addli r10, zero, 0
00267c  9f050000  addli r11, zero, 0
002680  1f060000  addli r12, zero, 0
002684  1f020000  addli r4, zero, 0
002688  9f020000  addli r5, zero, 0
00268c  1f030000  addli r6, zero, 0
002690  9f030000  addli r7, zero, 0
002694  1f040000  addli r8, zero, 0
002698  9f010000  addli r3, zero, 0
00269c  9f040000  addli r9, zero, 0
0026a0  9f060000  addli r13, zero, 0
0026a4  1f070000  addli r14, zero, 0
0026a8  5b1a0000  j 208
0026ac  e340cfed  loadli.w r1,  -2332(r30)
0026b0  6301cfed  loadli.w r2,  -2336(r30)
0026b4  e341bfed  loadli.w r3,  -2340(r30)
0026b8  e342afed  loadli.w r5,  -2348(r30)
0026bc  6303afed  loadli.w r6,  -2352(r30)
0026c0  e3439fed  loadli.w r7,  -2356(r30)
0026c4  6302bfed  loadli.w r4,  -2344(r30)
0026c8  63049fed  loadli.w r8,  -2360(r30)
0026cc  e3448fed  loadli.w r9,  -2364(r30)
0026d0  63058fed  loadli.w r10,  -2368(r30)
0026d4  e3457fed  loadli.w r11,  -2372(r30)
0026d8  63067fed  loadli.w r12,  -2376(r30)
0026dc  e3466fed  loadli.w r13,  -2380(r30)
0026e0  63076fed  loadli.w r14,  -2384(r30)
0026e4  e3475fed  loadli.w r15,  -2388(r30)
0026e8  63085fed  loadli.w r16,  -2392(r30)
0026ec  8be04019  sub.f.rn r1, r1, r20
0026f0  0b614119  sub.f.rn r2, r2, r20
0026f4  8be14119  sub.f.rn r3, r3, r20
0026f8  8be24219  sub.f.rn r5, r5, r20
0026fc  0b634319  sub.f.rn r6, r6, r20
002700  8be34319  sub.f.rn r7, r7, r20
002704  0b624219  sub.f.rn r4, r4, r20
002708  0b644419  sub.f.rn r8, r8, r20
00270c  8be44419  sub.f.rn r9, r9, r20
002710  0b654519  sub.f.rn r10, r10, r20
002714  8be54519  sub.f.rn r11, r11, r20
002718  0b664619  sub.f.rn r12, r12, r20
00271c  8be64619  sub.f.rn r13, r13, r20
002720  0b674719  sub.f.rn r14, r14, r20
002724  8be74719  sub.f.rn r15, r15, r20
002728  0b684819  sub.f.rn r16, r16, r20
00272c  0beb1020  mul.f.rn r22, r1, r1
002730  8b6b2120  mul.f.rn r23, r2, r2
002734  0bec3120  mul.f.rn r24, r3, r3
002738  8be05220  mul.f.rn r1, r5, r5
00273c  0b616320  mul.f.rn r2, r6, r6
002740  8be17320  mul.f.rn r3, r7, r7
002744  8b6d4220  mul.f.rn r27, r4, r4
002748  0b628420  mul.f.rn r4, r8, r8
00274c  8be29420  mul.f.rn r5, r9, r9
002750  0b63a520  mul.f.rn r6, r10, r10
002754  8be3b520  mul.f.rn r7, r11, r11
002758  0b64c620  mul.f.rn r8, r12, r12
00275c  8b64e720  mul.f.rn r9, r14, r14
002760  0b670821  mul.f.rn r14, r16, r16
002764  1f860100  addli r12, r3, 0
002768  8be1d620  mul.f.rn r3, r13, r13
00276c  1f850000  addli r10, r1, 0
002770  9f050100  addli r11, r2, 0
002774  8be6f720  mul.f.rn r13, r15, r15
002778  e3409fe9  loadli.w r1,  -2868(r30)
00277c  6301dfed  loadli.w r2,  -2328(r30)
002780  1f094000  addli r18, zero, 32
002784  8b902010  add.s r1, r1, r2
002788  e7011fea  storeli.w r1, -2792(r30)
00278c  e3009fe9  loadli.w r1,  -2872(r30)
002790  8b902010  add.s r1, r1, r2
002794  67411fea  storeli.w r1, -2796(r30)
002798  e3408fe9  loadli.w r1,  -2876(r30)
00279c  8b902010  add.s r1, r1, r2
0027a0  67011fea  storeli.w r1, -2800(r30)
0027a4  e3008fe9  loadli.w r1,  -2880(r30)
0027a8  8b902010  add.s r1, r1, r2
0027ac  e7401fea  storeli.w r1, -2804(r30)
0027b0  e3407fe9  loadli.w r1,  -2884(r30)
0027b4  8b902010  add.s r1, r1, r2
0027b8  e7001fea  storeli.w r1, -2808(r30)
0027bc  e3007fe9  loadli.w r1,  -2888(r30)
0027c0  8b902010  add.s r1, r1, r2
0027c4  67401fea  storeli.w r1, -2812(r30)
0027c8  e3406fe9  loadli.w r1,  -2892(r30)
0027cc  8b902010  add.s r1, r1, r2
0027d0  67001fea  storeli.w r1, -2816(r30)
0027d4  e3006fe9  loadli.w r1,  -2896(r30)
0027d8  8b902010  add.s r1, r1, r2
0027dc  e74f1fe8  storeli.w r1, -2820(r30)
0027e0  e3405fe9  loadli.w r1,  -2900(r30)
0027e4  8b902010  add.s r1, r1, r2
0027e8  e70f1fe8  storeli.w r1, -2824(r30)
0027ec  e3005fe9  loadli.w r1,  -2904(r30)
0027f0  8b902010  add.s r1, r1, r2
0027f4  674f1fe8  storeli.w r1, -2828(r30)
0027f8  e3404fe9  loadli.w r1,  -2908(r30)
0027fc  8b902010  add.s r1, r1, r2
002800  670f1fe8  storeli.w r1, -2832(r30)
002804  e3004fe9  loadli.w r1,  -2912(r30)
002808  8b902010  add.s r1, r1, r2
00280c  e7411fea  storeli.w r1, -2788(r30)
002810  e3403fe9  loadli.w r1,  -2916(r30)
002814  8b902010  add.s r1, r1, r2
002818  67021fea  storeli.w r1, -2784(r30)
00281c  e3003fe9  loadli.w r1,  -2920(r30)
002820  8b902010  add.s r1, r1, r2
002824  67421fea  storeli.w r1, -2780(r30)
002828  e3402fe9  loadli.w r1,  -2924(r30)
00282c  8b902010  add.s r1, r1, r2
002830  e7021fea  storeli.w r1, -2776(r30)
002834  e3002fe9  loadli.w r1,  -2928(r30)
002838  8b902010  add.s r1, r1, r2
00283c  e7421fea  storeli.w r1, -2772(r30)
002840  e3401fe9  loadli.w r1,  -2932(r30)
002844  8b902010  add.s r1, r1, r2
002848  67031fea  storeli.w r1, -2768(r30)
00284c  e340ffe8  loadli.w r1,  -2948(r30)
002850  8b902010  add.s r1, r1, r2
002854  67431fea  storeli.w r1, -2764(r30)
002858  e340efe8  loadli.w r1,  -2956(r30)
00285c  8b902010  add.s r1, r1, r2
002860  e7031fea  storeli.w r1, -2760(r30)
002864  e300efe8  loadli.w r1,  -2960(r30)
002868  8b902010  add.s r1, r1, r2
00286c  e7431fea  storeli.w r1, -2756(r30)
002870  e340dfe8  loadli.w r1,  -2964(r30)
002874  8b902010  add.s r1, r1, r2
002878  67041fea  storeli.w r1, -2752(r30)
00287c  e300dfe8  loadli.w r1,  -2968(r30)
002880  8b902010  add.s r1, r1, r2
002884  67441fea  storeli.w r1, -2748(r30)
002888  e340cfe8  loadli.w r1,  -2972(r30)
00288c  8b902010  add.s r1, r1, r2
002890  e7041fea  storeli.w r1, -2744(r30)
002894  e300cfe8  loadli.w r1,  -2976(r30)
002898  8b902010  add.s r1, r1, r2
00289c  e7441fea  storeli.w r1, -2740(r30)
0028a0  e340bfe8  loadli.w r1,  -2980(r30)
0028a4  8b902010  add.s r1, r1, r2
0028a8  67051fea  storeli.w r1, -2736(r30)
0028ac  e300bfe8  loadli.w r1,  -2984(r30)
0028b0  8b902010  add.s r1, r1, r2
0028b4  67451fea  storeli.w r1, -2732(r30)
0028b8  e340afe8  loadli.w r1,  -2988(r30)
0028bc  8b902010  add.s r1, r1, r2
0028c0  e7051fea  storeli.w r1, -2728(r30)
0028c4  e300afe8  loadli.w r1,  -2992(r30)
0028c8  8b902010  add.s r1, r1, r2
0028cc  e7451fea  storeli.w r1, -2724(r30)
0028d0  e3409fe8  loadli.w r1,  -2996(r30)
0028d4  8b902010  add.s r1, r1, r2
0028d8  67061fea  storeli.w r1, -2720(r30)
0028dc  e3009fe8  loadli.w r1,  -3000(r30)
0028e0  8b902010  add.s r1, r1, r2
0028e4  67461fea  storeli.w r1, -2716(r30)
0028e8  e3408fe8  loadli.w r1,  -3004(r30)
0028ec  8b902010  add.s r1, r1, r2
0028f0  e7061fea  storeli.w r1, -2712(r30)
0028f4  e3008fe8  loadli.w r1,  -3008(r30)
0028f8  8b902010  add.s r1, r1, r2
0028fc  e7461fea  storeli.w r1, -2708(r30)
002900  e3407fe8  loadli.w r1,  -3012(r30)
002904  8b902010  add.s r1, r1, r2
002908  67071fea  storeli.w r1, -2704(r30)
00290c  e3007fe8  loadli.w r1,  -3016(r30)
002910  8b902010  add.s r1, r1, r2
002914  67471fea  storeli.w r1, -2700(r30)
002918  e3406fe8  loadli.w r1,  -3020(r30)
00291c  8b902010  add.s r1, r1, r2
002920  e7071fea  storeli.w r1, -2696(r30)
002924  e3006fe8  loadli.w r1,  -3024(r30)
002928  8b902010  add.s r1, r1, r2
00292c  e7471fea  storeli.w r1, -2692(r30)
002930  e3405fe8  loadli.w r1,  -3028(r30)
002934  8b902010  add.s r1, r1, r2
002938  67081fea  storeli.w r1, -2688(r30)
00293c  e3005fe8  loadli.w r1,  -3032(r30)
002940  8b902010  add.s r1, r1, r2
002944  67481fea  storeli.w r1, -2684(r30)
002948  e3404fe8  loadli.w r1,  -3036(r30)
00294c  8b902010  add.s r1, r1, r2
002950  e7081fea  storeli.w r1, -2680(r30)
002954  e3004fe8  loadli.w r1,  -3040(r30)
002958  8b902010  add.s r1, r1, r2
00295c  e7481fea  storeli.w r1, -2676(r30)
002960  e3403fe8  loadli.w r1,  -3044(r30)
002964  8b902010  add.s r1, r1, r2
002968  67091fea  storeli.w r1, -2672(r30)
00296c  e3003fe8  loadli.w r1,  -3048(r30)
002970  8b902010  add.s r1, r1, r2
002974  67491fea  storeli.w r1, -2668(r30)
002978  e3402fe8  loadli.w r1,  -3052(r30)
00297c  8b902010  add.s r1, r1, r2
002980  e7091fea  storeli.w r1, -2664(r30)
002984  e3002fe8  loadli.w r1,  -3056(r30)
002988  8b902010  add.s r1, r1, r2
00298c  e7491fea  storeli.w r1, -2660(r30)
002990  e3401fe8  loadli.w r1,  -3060(r30)
002994  8b902010  add.s r1, r1, r2
002998  670a1fea  storeli.w r1, -2656(r30)
00299c  e3001fe8  loadli.w r1,  -3064(r30)
0029a0  8b902010  add.s r1, r1, r2
0029a4  674a1fea  storeli.w r1, -2652(r30)
0029a8  e3400fe8  loadli.w r1,  -3068(r30)
0029ac  8b902010  add.s r1, r1, r2
0029b0  e70a1fea  storeli.w r1, -2648(r30)
0029b4  e3000fe8  loadli.w r1,  -3072(r30)
0029b8  8b902010  add.s r1, r1, r2
0029bc  e74a1fea  storeli.w r1, -2644(r30)
0029c0  e340ffe7  loadli.w r1,  -3076(r30)
0029c4  8b902010  add.s r1, r1, r2
0029c8  670b1fea  storeli.w r1, -2640(r30)
0029cc  e300ffe7  loadli.w r1,  -3080(r30)
0029d0  8b902010  add.s r1, r1, r2
0029d4  674b1fea  storeli.w r1, -2636(r30)
0029d8  e340efe7  loadli.w r1,  -3084(r30)
0029dc  8b902010  add.s r1, r1, r2
0029e0  e70b1fea  storeli.w r1, -2632(r30)
0029e4  e300efe7  loadli.w r1,  -3088(r30)
0029e8  8b902010  add.s r1, r1, r2
0029ec  e74b1fea  storeli.w r1, -2628(r30)
0029f0  e340dfe7  loadli.w r1,  -3092(r30)
0029f4  8b902010  add.s r1, r1, r2
0029f8  670c1fea  storeli.w r1, -2624(r30)
0029fc  e300dfe7  loadli.w r1,  -3096(r30)
002a00  8b902010  add.s r1, r1, r2
002a04  674c1fea  storeli.w r1, -2620(r30)
002a08  e340cfe7  loadli.w r1,  -3100(r30)
002a0c  8b902010  add.s r1, r1, r2
002a10  e70c1fea  storeli.w r1, -2616(r30)
002a14  e300cfe7  loadli.w r1,  -3104(r30)
002a18  8b902010  add.s r1, r1, r2
002a1c  e74c1fea  storeli.w r1, -2612(r30)
002a20  e340bfe7  loadli.w r1,  -3108(r30)
002a24  8b902010  add.s r1, r1, r2
002a28  670d1fea  storeli.w r1, -2608(r30)
002a2c  e300bfe7  loadli.w r1,  -3112(r30)
002a30  8b902010  add.s r1, r1, r2
002a34  674d1fea  storeli.w r1, -2604(r30)
002a38  e340afe7  loadli.w r1,  -3116(r30)
002a3c  8b902010  add.s r1, r1, r2
002a40  e70d1fea  storeli.w r1, -2600(r30)
002a44  e300afe7  loadli.w r1,  -3120(r30)
002a48  8b902010  add.s r1, r1, r2
002a4c  e74d1fea  storeli.w r1, -2596(r30)
002a50  e3409fe7  loadli.w r1,  -3124(r30)
002a54  8b902010  add.s r1, r1, r2
002a58  670e1fea  storeli.w r1, -2592(r30)
002a5c  e3009fe7  loadli.w r1,  -3128(r30)
002a60  8b902010  add.s r1, r1, r2
002a64  674e1fea  storeli.w r1, -2588(r30)
002a68  e3408fe7  loadli.w r1,  -3132(r30)
002a6c  8b902010  add.s r1, r1, r2
002a70  e70e1fea  storeli.w r1, -2584(r30)
002a74  e3008fe7  loadli.w r1,  -3136(r30)
002a78  8b902010  add.s r1, r1, r2
002a7c  e74e1fea  storeli.w r1, -2580(r30)
002a80  e3407fe7  loadli.w r1,  -3140(r30)
002a84  8b902010  add.s r1, r1, r2
002a88  670f1fea  storeli.w r1, -2576(r30)
002a8c  e3007fe7  loadli.w r1,  -3144(r30)
002a90  8b902010  add.s r1, r1, r2
002a94  674f1fea  storeli.w r1, -2572(r30)
002a98  e3406fe7  loadli.w r1,  -3148(r30)
002a9c  8b902010  add.s r1, r1, r2
002aa0  e70f1fea  storeli.w r1, -2568(r30)
002aa4  e3006fe7  loadli.w r1,  -3152(r30)
002aa8  8b902010  add.s r1, r1, r2
002aac  e74f1fea  storeli.w r1, -2564(r30)
002ab0  e3405fe7  loadli.w r1,  -3156(r30)
002ab4  8b902010  add.s r1, r1, r2
002ab8  67001fec  storeli.w r1, -2560(r30)
002abc  e3005fe7  loadli.w r1,  -3160(r30)
002ac0  8b902010  add.s r1, r1, r2
002ac4  67401fec  storeli.w r1, -2556(r30)
002ac8  e3404fe7  loadli.w r1,  -3164(r30)
002acc  8b902010  add.s r1, r1, r2
002ad0  e7001fec  storeli.w r1, -2552(r30)
002ad4  e3004fe7  loadli.w r1,  -3168(r30)
002ad8  8b902010  add.s r1, r1, r2
002adc  e7401fec  storeli.w r1, -2548(r30)
002ae0  e3403fe7  loadli.w r1,  -3172(r30)
002ae4  8b902010  add.s r1, r1, r2
002ae8  67011fec  storeli.w r1, -2544(r30)
002aec  e3003fe7  loadli.w r1,  -3176(r30)
002af0  8b902010  add.s r1, r1, r2
002af4  67411fec  storeli.w r1, -2540(r30)
002af8  e3402fe7  loadli.w r1,  -3180(r30)
002afc  8b902010  add.s r1, r1, r2
002b00  e7011fec  storeli.w r1, -2536(r30)
002b04  e3002fe7  loadli.w r1,  -3184(r30)
002b08  8b902010  add.s r1, r1, r2
002b0c  e7411fec  storeli.w r1, -2532(r30)
002b10  e3401fe7  loadli.w r1,  -3188(r30)
002b14  8b902010  add.s r1, r1, r2
002b18  67021fec  storeli.w r1, -2528(r30)
002b1c  e3001fe7  loadli.w r1,  -3192(r30)
002b20  8b902010  add.s r1, r1, r2
002b24  67421fec  storeli.w r1, -2524(r30)
002b28  e3400fe7  loadli.w r1,  -3196(r30)
002b2c  8b902010  add.s r1, r1, r2
002b30  e7021fec  storeli.w r1, -2520(r30)
002b34  e3000fe7  loadli.w r1,  -3200(r30)
002b38  8b902010  add.s r1, r1, r2
002b3c  e7421fec  storeli.w r1, -2516(r30)
002b40  e340ffe6  loadli.w r1,  -3204(r30)
002b44  8b902010  add.s r1, r1, r2
002b48  67031fec  storeli.w r1, -2512(r30)
002b4c  e300ffe6  loadli.w r1,  -3208(r30)
002b50  8b902010  add.s r1, r1, r2
002b54  67431fec  storeli.w r1, -2508(r30)
002b58  e340efe6  loadli.w r1,  -3212(r30)
002b5c  8b902010  add.s r1, r1, r2
002b60  e7031fec  storeli.w r1, -2504(r30)
002b64  e300efe6  loadli.w r1,  -3216(r30)
002b68  8b902010  add.s r1, r1, r2
002b6c  e7431fec  storeli.w r1, -2500(r30)
002b70  e340dfe6  loadli.w r1,  -3220(r30)
002b74  8b902010  add.s r1, r1, r2
002b78  67041fec  storeli.w r1, -2496(r30)
002b7c  e300dfe6  loadli.w r1,  -3224(r30)
002b80  8b902010  add.s r1, r1, r2
002b84  67441fec  storeli.w r1, -2492(r30)
002b88  e340cfe6  loadli.w r1,  -3228(r30)
002b8c  8b902010  add.s r1, r1, r2
002b90  e7041fec  storeli.w r1, -2488(r30)
002b94  e300cfe6  loadli.w r1,  -3232(r30)
002b98  8b902010  add.s r1, r1, r2
002b9c  e7441fec  storeli.w r1, -2484(r30)
002ba0  e340bfe6  loadli.w r1,  -3236(r30)
002ba4  8b902010  add.s r1, r1, r2
002ba8  67051fec  storeli.w r1, -2480(r30)
002bac  e300bfe6  loadli.w r1,  -3240(r30)
002bb0  8b902010  add.s r1, r1, r2
002bb4  67451fec  storeli.w r1, -2476(r30)
002bb8  e340afe6  loadli.w r1,  -3244(r30)
002bbc  8b902010  add.s r1, r1, r2
002bc0  e7051fec  storeli.w r1, -2472(r30)
002bc4  e300afe6  loadli.w r1,  -3248(r30)
002bc8  8b902010  add.s r1, r1, r2
002bcc  e7451fec  storeli.w r1, -2468(r30)
002bd0  e3409fe6  loadli.w r1,  -3252(r30)
002bd4  8b902010  add.s r1, r1, r2
002bd8  67061fec  storeli.w r1, -2464(r30)
002bdc  e3009fe6  loadli.w r1,  -3256(r30)
002be0  8b902010  add.s r1, r1, r2
002be4  67461fec  storeli.w r1, -2460(r30)
002be8  e3408fe6  loadli.w r1,  -3260(r30)
002bec  8b902010  add.s r1, r1, r2
002bf0  e7061fec  storeli.w r1, -2456(r30)
002bf4  e3008fe6  loadli.w r1,  -3264(r30)
002bf8  8b902010  add.s r1, r1, r2
002bfc  e7461fec  storeli.w r1, -2452(r30)
002c00  e3407fe6  loadli.w r1,  -3268(r30)
002c04  8b902010  add.s r1, r1, r2
002c08  67071fec  storeli.w r1, -2448(r30)
002c0c  e3007fe6  loadli.w r1,  -3272(r30)
002c10  8b902010  add.s r1, r1, r2
002c14  67471fec  storeli.w r1, -2444(r30)
002c18  e3406fe6  loadli.w r1,  -3276(r30)
002c1c  8b902010  add.s r1, r1, r2
002c20  e7071fec  storeli.w r1, -2440(r30)
002c24  e3006fe6  loadli.w r1,  -3280(r30)
002c28  8b902010  add.s r1, r1, r2
002c2c  e7471fec  storeli.w r1, -2436(r30)
002c30  e3405fe6  loadli.w r1,  -3284(r30)
002c34  8b902010  add.s r1, r1, r2
002c38  67081fec  storeli.w r1, -2432(r30)
002c3c  e3005fe6  loadli.w r1,  -3288(r30)
002c40  8b902010  add.s r1, r1, r2
002c44  67481fec  storeli.w r1, -2428(r30)
002c48  e3404fe6  loadli.w r1,  -3292(r30)
002c4c  8b902010  add.s r1, r1, r2
002c50  e7081fec  storeli.w r1, -2424(r30)
002c54  e3004fe6  loadli.w r1,  -3296(r30)
002c58  8b902010  add.s r1, r1, r2
002c5c  e7481fec  storeli.w r1, -2420(r30)
002c60  e3403fe6  loadli.w r1,  -3300(r30)
002c64  8b902010  add.s r1, r1, r2
002c68  67091fec  storeli.w r1, -2416(r30)
002c6c  e3003fe6  loadli.w r1,  -3304(r30)
002c70  8b902010  add.s r1, r1, r2
002c74  67491fec  storeli.w r1, -2412(r30)
002c78  e3402fe6  loadli.w r1,  -3308(r30)
002c7c  8b902010  add.s r1, r1, r2
002c80  e7091fec  storeli.w r1, -2408(r30)
002c84  e3002fe6  loadli.w r1,  -3312(r30)
002c88  8b902010  add.s r1, r1, r2
002c8c  e7491fec  storeli.w r1, -2404(r30)
002c90  e3401fe6  loadli.w r1,  -3316(r30)
002c94  8b902010  add.s r1, r1, r2
002c98  670a1fec  storeli.w r1, -2400(r30)
002c9c  e3001fe6  loadli.w r1,  -3320(r30)
002ca0  8b902010  add.s r1, r1, r2
002ca4  674a1fec  storeli.w r1, -2396(r30)
002ca8  e3400fe6  loadli.w r1,  -3324(r30)
002cac  8b902010  add.s r1, r1, r2
002cb0  e70a1fec  storeli.w r1, -2392(r30)
002cb4  e3000fe6  loadli.w r1,  -3328(r30)
002cb8  8b902010  add.s r1, r1, r2
002cbc  e74a1fec  storeli.w r1, -2388(r30)
002cc0  e340ffe5  loadli.w r1,  -3332(r30)
002cc4  8b902010  add.s r1, r1, r2
002cc8  670b1fec  storeli.w r1, -2384(r30)
002ccc  e300ffe5  loadli.w r1,  -3336(r30)
002cd0  8b902010  add.s r1, r1, r2
002cd4  674b1fec  storeli.w r1, -2380(r30)
002cd8  e340efe5  loadli.w r1,  -3340(r30)
002cdc  8b902010  add.s r1, r1, r2
002ce0  e70b1fec  storeli.w r1, -2376(r30)
002ce4  e300efe5  loadli.w r1,  -3344(r30)
002ce8  8b902010  add.s r1, r1, r2
002cec  e74b1fec  storeli.w r1, -2372(r30)
002cf0  e340dfe5  loadli.w r1,  -3348(r30)
002cf4  8b902010  add.s r1, r1, r2
002cf8  670c1fec  storeli.w r1, -2368(r30)
002cfc  e300dfe5  loadli.w r1,  -3352(r30)
002d00  8b902010  add.s r1, r1, r2
002d04  674c1fec  storeli.w r1, -2364(r30)
002d08  e340cfe5  loadli.w r1,  -3356(r30)
002d0c  8b902010  add.s r1, r1, r2
002d10  e74c1fec  storeli.w r1, -2356(r30)
002d14  e300cfe5  loadli.w r1,  -3360(r30)
002d18  8b902010  add.s r1, r1, r2
002d1c  e70c1fec  storeli.w r1, -2360(r30)
002d20  e340bfe5  loadli.w r1,  -3364(r30)
002d24  8b902010  add.s r1, r1, r2
002d28  670d1fec  storeli.w r1, -2352(r30)
002d2c  e300bfe5  loadli.w r1,  -3368(r30)
002d30  8b902010  add.s r1, r1, r2
002d34  674d1fec  storeli.w r1, -2348(r30)
002d38  e340afe5  loadli.w r1,  -3372(r30)
002d3c  8b902010  add.s r1, r1, r2
002d40  e70d1fec  storeli.w r1, -2344(r30)
002d44  e300afe5  loadli.w r1,  -3376(r30)
002d48  8b902010  add.s r1, r1, r2
002d4c  e74d1fec  storeli.w r1, -2340(r30)
002d50  e3409fe5  loadli.w r1,  -3380(r30)
002d54  8b902010  add.s r1, r1, r2
002d58  670e1fec  storeli.w r1, -2336(r30)
002d5c  e3009fe5  loadli.w r1,  -3384(r30)
002d60  8b902010  add.s r1, r1, r2
002d64  674e1fec  storeli.w r1, -2332(r30)
002d68  e3408fe5  loadli.w r1,  -3388(r30)
002d6c  8b902010  add.s r1, r1, r2
002d70  e70e1fec  storeli.w r1, -2328(r30)
002d74  5b170000  j 184
002d78  9f000000  addli r1, zero, 0
002d7c  9f010000  addli r3, zero, 0
002d80  1f020000  addli r4, zero, 0
002d84  9f0a0000  addli r21, zero, 0
002d88  1f010000  addli r2, zero, 0
002d8c  9f030000  addli r7, zero, 0
002d90  1f040000  addli r8, zero, 0
002d94  9f060000  addli r13, zero, 0
002d98  9f080000  addli r17, zero, 0
002d9c  1f070000  addli r14, zero, 0
002da0  9f090000  addli r19, zero, 0
002da4  9f0c0000  addli r25, zero, 0
002da8  1f0d0000  addli r26, zero, 0
002dac  1f0e0000  addli r28, zero, 0
002db0  9f070000  addli r15, zero, 0
002db4  1f080000  addli r16, zero, 0
002db8  63037fee  loadli.w r6,  -2248(r30)
002dbc  0b6c4c10  add.f.rn r24, r24, r4
002dc0  63020fef  loadli.w r4,  -2176(r30)
002dc4  e3444fee  loadli.w r9,  -2268(r30)
002dc8  e3028fee  loadli.w r5,  -2240(r30)
002dcc  8beb3b10  add.f.rn r23, r23, r3
002dd0  e3015fee  loadli.w r3,  -2264(r30)
002dd4  8be57510  add.f.rn r11, r11, r7
002dd8  e3036fee  loadli.w r7,  -2256(r30)
002ddc  0b668610  add.f.rn r12, r12, r8
002de0  63445fee  loadli.w r8,  -2260(r30)
002de4  0b6b1b10  add.f.rn r22, r22, r1
002de8  8bed5d11  add.f.rn r27, r27, r21
002dec  0b652510  add.f.rn r10, r10, r2
002df0  1f094900  addli r18, r18, 32
002df4  0b62d210  add.f.rn r4, r4, r13
002df8  e3064fee  loadli.w r13,  -2272(r30)
002dfc  0b63e310  add.f.rn r6, r6, r14
002e00  63473fee  loadli.w r14,  -2276(r30)
002e04  8be1a111  add.f.rn r3, r3, r26
002e08  8be4c411  add.f.rn r9, r9, r28
002e0c  8be21211  add.f.rn r5, r5, r17
002e10  8be33311  add.f.rn r7, r7, r19
002e14  0b649411  add.f.rn r8, r8, r25
002e18  1f0e0ff8  addli r28, r30, -1024
002e1c  1f0d0002  addli r26, zero, 256
002e20  8be6f610  add.f.rn r13, r13, r15
002e24  0b670711  add.f.rn r14, r14, r16
002e28  b70da903  beq r18, r26, 1888
002e2c  e7023fee  storeli.w r3, -2264(r30)
002e30  8b112e11  add.s r3, r28, r18
002e34  67084fee  storeli.w r4, -2176(r30)
002e38  9230b002  vadd.s.mz vr1{mr1}, zero, vr11
002e3c  e7036fee  storeli.w r6, -2248(r30)
002e40  1f130000  addli r6, zero, 1
002e44  67045fee  storeli.w r5, -2240(r30)
002e48  e741efee  storeli.w r14, -2276(r30)
002e4c  6702dfee  storeli.w r13, -2272(r30)
002e50  e7428fee  storeli.w r8, -2260(r30)
002e54  67037fee  storeli.w r7, -2256(r30)
002e58  1231b002  vadd.s.mz vr2{mr1}, zero, vr11
002e5c  6bb20100  load.hu r4, 0(r3)
002e60  ebb22100  load.hu r5, 2(r3)
002e64  7e0103e0  vmmov mr2, r6
002e68  6bb1a101  load.hu r2, 26(r3)
002e6c  ebb0c101  load.hu r1, 28(r3)
002e70  ebb34100  load.hu r7, 4(r3)
002e74  6bb46100  load.hu r8, 6(r3)
002e78  ebb68100  load.hu r13, 8(r3)
002e7c  6bb7a100  load.hu r14, 10(r3)
002e80  ebb7c100  load.hu r15, 12(r3)
002e84  6bb8e100  load.hu r16, 14(r3)
002e88  ebb80101  load.hu r17, 16(r3)
002e8c  ebb92101  load.hu r19, 18(r3)
002e90  ebbc4101  load.hu r25, 20(r3)
002e94  6bbd6101  load.hu r26, 22(r3)
002e98  6bbe8101  load.hu r28, 24(r3)
002e9c  ebb1e101  load.hu r3, 30(r3)
002ea0  33120218  bfloat2float.rn r4, r4
002ea4  33110118  bfloat2float.rn r2, r2
002ea8  b3900018  bfloat2float.rn r1, r1
002eac  ea201234  vor.u.mh vr1{mr2}, r4, vr1
002eb0  33920218  bfloat2float.rn r4, r5
002eb4  9f220000  addli r5, zero, 2
002eb8  fe8102e0  vmmov mr3, r5
002ebc  9f420000  addli r5, zero, 4
002ec0  ea201236  vor.u.mh vr1{mr3}, r4, vr1
002ec4  33920318  bfloat2float.rn r4, r7
002ec8  7e8002e0  vmmov mr0, r5
002ecc  9f021000  addli r5, zero, 8
002ed0  ea201230  vor.u.mh vr1{mr0}, r4, vr1
002ed4  33120418  bfloat2float.rn r4, r8
002ed8  7e8002e0  vmmov mr0, r5
002edc  9f022000  addli r5, zero, 16
002ee0  ea201230  vor.u.mh vr1{mr0}, r4, vr1
002ee4  33920618  bfloat2float.rn r4, r13
002ee8  7e8002e0  vmmov mr0, r5
002eec  9f024000  addli r5, zero, 32
002ef0  ea201230  vor.u.mh vr1{mr0}, r4, vr1
002ef4  33120718  bfloat2float.rn r4, r14
002ef8  7e8002e0  vmmov mr0, r5
002efc  9f028000  addli r5, zero, 64
002f00  ea201230  vor.u.mh vr1{mr0}, r4, vr1
002f04  33920718  bfloat2float.rn r4, r15
002f08  7e8002e0  vmmov mr0, r5
002f0c  9f020001  addli r5, zero, 128
002f10  ea201230  vor.u.mh vr1{mr0}, r4, vr1
002f14  33120818  bfloat2float.rn r4, r16
002f18  7e8002e0  vmmov mr0, r5
002f1c  9f020002  addli r5, zero, 256
002f20  ea201230  vor.u.mh vr1{mr0}, r4, vr1
002f24  33920818  bfloat2float.rn r4, r17
002f28  7e8002e0  vmmov mr0, r5
002f2c  9f020004  addli r5, zero, 512
002f30  ea201230  vor.u.mh vr1{mr0}, r4, vr1
002f34  33920918  bfloat2float.rn r4, r19
002f38  7e8002e0  vmmov mr0, r5
002f3c  9f020008  addli r5, zero, 1024
002f40  ea201230  vor.u.mh vr1{mr0}, r4, vr1
002f44  33920c18  bfloat2float.rn r4, r25
002f48  7e8002e0  vmmov mr0, r5
002f4c  9f020010  addli r5, zero, 2048
002f50  ea201230  vor.u.mh vr1{mr0}, r4, vr1
002f54  33120d18  bfloat2float.rn r4, r26
002f58  7e8002e0  vmmov mr0, r5
002f5c  9f020020  addli r5, zero, 4096
002f60  ea201230  vor.u.mh vr1{mr0}, r4, vr1
002f64  33120e18  bfloat2float.rn r4, r28
002f68  7e8002e0  vmmov mr0, r5
002f6c  ea201230  vor.u.mh vr1{mr0}, r4, vr1
002f70  1f020040  addli r4, zero, 8192
002f74  7e0002e0  vmmov mr0, r4
002f78  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002f7c  2b410000  lui r2, 4
002f80  7e0001e0  vmmov mr0, r2
002f84  1f010ffa  addli r2, r30, -768
002f88  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002f8c  b3900118  bfloat2float.rn r1, r3
002f90  ab810000  lui r3, 8
002f94  0b112111  add.s r2, r2, r18
002f98  7e8001e0  vmmov mr0, r3
002f9c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002fa0  eb300100  load.hu r1, 0(r2)
002fa4  eb312100  load.hu r3, 2(r2)
002fa8  6b324100  load.hu r4, 4(r2)
002fac  eb326100  load.hu r5, 6(r2)
002fb0  eb338100  load.hu r7, 8(r2)
002fb4  6b34a100  load.hu r8, 10(r2)
002fb8  eb36c100  load.hu r13, 12(r2)
002fbc  6b37e100  load.hu r14, 14(r2)
002fc0  eb370101  load.hu r15, 16(r2)
002fc4  6b382101  load.hu r16, 18(r2)
002fc8  eb384101  load.hu r17, 20(r2)
002fcc  eb396101  load.hu r19, 22(r2)
002fd0  eb3c8101  load.hu r25, 24(r2)
002fd4  6b3da101  load.hu r26, 26(r2)
002fd8  6b3ec101  load.hu r28, 28(r2)
002fdc  6b31e101  load.hu r2, 30(r2)
002fe0  b3900018  bfloat2float.rn r1, r1
002fe4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002fe8  b3900118  bfloat2float.rn r1, r3
002fec  9f410000  addli r3, zero, 4
002ff0  7e8101e0  vmmov mr2, r3
002ff4  9f011000  addli r3, zero, 8
002ff8  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
002ffc  b3100218  bfloat2float.rn r1, r4
003000  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003004  b3900218  bfloat2float.rn r1, r5
003008  7e8101e0  vmmov mr2, r3
00300c  9f012000  addli r3, zero, 16
003010  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003014  b3900318  bfloat2float.rn r1, r7
003018  7e8101e0  vmmov mr2, r3
00301c  9f014000  addli r3, zero, 32
003020  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003024  b3100418  bfloat2float.rn r1, r8
003028  7e8101e0  vmmov mr2, r3
00302c  9f018000  addli r3, zero, 64
003030  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003034  b3900618  bfloat2float.rn r1, r13
003038  7e8101e0  vmmov mr2, r3
00303c  9f010001  addli r3, zero, 128
003040  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003044  b3100718  bfloat2float.rn r1, r14
003048  7e8101e0  vmmov mr2, r3
00304c  9f010002  addli r3, zero, 256
003050  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003054  b3900718  bfloat2float.rn r1, r15
003058  7e8101e0  vmmov mr2, r3
00305c  9f010004  addli r3, zero, 512
003060  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003064  b3100818  bfloat2float.rn r1, r16
003068  7e8101e0  vmmov mr2, r3
00306c  9f010008  addli r3, zero, 1024
003070  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003074  b3900818  bfloat2float.rn r1, r17
003078  7e8101e0  vmmov mr2, r3
00307c  9f010010  addli r3, zero, 2048
003080  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003084  b3900918  bfloat2float.rn r1, r19
003088  7e8101e0  vmmov mr2, r3
00308c  9f010020  addli r3, zero, 4096
003090  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003094  b3900c18  bfloat2float.rn r1, r25
003098  7e8101e0  vmmov mr2, r3
00309c  9f010040  addli r3, zero, 8192
0030a0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0030a4  b3100d18  bfloat2float.rn r1, r26
0030a8  7e8101e0  vmmov mr2, r3
0030ac  ab410000  lui r3, 4
0030b0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0030b4  b3100e18  bfloat2float.rn r1, r28
0030b8  7e8101e0  vmmov mr2, r3
0030bc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0030c0  b3100118  bfloat2float.rn r1, r2
0030c4  2b01807f  lui r2, 522240
0030c8  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0030cc  9f000ff0  addli r1, r30, -2048
0030d0  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
0030d4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0030d8  00a00000  mfence { lm }
0030dc  63080ff0  loadli.w r16,  -2048(r30)
0030e0  e3470ff0  loadli.w r15,  -2044(r30)
0030e4  63071ff0  loadli.w r14,  -2040(r30)
0030e8  e3431ff0  loadli.w r7,  -2036(r30)
0030ec  630d2ff0  loadli.w r26,  -2032(r30)
0030f0  63442ff0  loadli.w r8,  -2028(r30)
0030f4  63023ff0  loadli.w r4,  -2024(r30)
0030f8  e3423ff0  loadli.w r5,  -2020(r30)
0030fc  630e4ff0  loadli.w r28,  -2016(r30)
003100  e3414ff0  loadli.w r3,  -2012(r30)
003104  e340ffef  loadli.w r1,  -2052(r30)
003108  e3085ff0  loadli.w r17,  -2008(r30)
00310c  e3495ff0  loadli.w r19,  -2004(r30)
003110  97001800  and r1, r16, r1
003114  930a1104  setlt.u r21, r2, r1
003118  e3006ff0  loadli.w r1,  -2000(r30)
00311c  63416ff0  loadli.w r2,  -1996(r30)
003120  e30c7ff0  loadli.w r25,  -1992(r30)
003124  e3467ff0  loadli.w r13,  -1988(r30)
003128  3bf00a00  bneq r21, zero, 28
00312c  9b4a0801  srli r21, r16, 16
003130  6303ffef  loadli.w r6,  -2056(r30)
003134  9b8a1a00  andi r21, r21, 1
003138  0b185811  add.s r16, r16, r21
00313c  8b1a6810  add.s r21, r16, r6
003140  db010000  j 12
003144  2b034000  lui r6, 1024
003148  971a6800  or r21, r16, r6
00314c  6343ffef  loadli.w r6,  -2052(r30)
003150  17886700  and r16, r15, r6
003154  2b03807f  lui r6, 522240
003158  13080305  setlt.u r16, r6, r16
00315c  3b700800  bneq r16, zero, 28
003160  1bc80701  srli r16, r15, 16
003164  6303ffef  loadli.w r6,  -2056(r30)
003168  1b081800  andi r16, r16, 1
00316c  8b970711  add.s r15, r15, r16
003170  0b986710  add.s r16, r15, r6
003174  db010000  j 12
003178  2b034000  lui r6, 1024
00317c  17986700  or r16, r15, r6
003180  6343ffef  loadli.w r6,  -2052(r30)
003184  97076700  and r15, r14, r6
003188  2b03807f  lui r6, 522240
00318c  9307f304  setlt.u r15, r6, r15
003190  3bf00700  bneq r15, zero, 28
003194  9b470701  srli r15, r14, 16
003198  6303ffef  loadli.w r6,  -2056(r30)
00319c  9b871700  andi r15, r15, 1
0031a0  0b17f710  add.s r14, r14, r15
0031a4  8b176710  add.s r15, r14, r6
0031a8  db010000  j 12
0031ac  2b034000  lui r6, 1024
0031b0  97176700  or r15, r14, r6
0031b4  6343ffef  loadli.w r6,  -2052(r30)
0031b8  17876300  and r14, r7, r6
0031bc  2b03807f  lui r6, 522240
0031c0  1307e304  setlt.u r14, r6, r14
0031c4  3b700700  bneq r14, zero, 28
0031c8  1bc70301  srli r14, r7, 16
0031cc  6303ffef  loadli.w r6,  -2056(r30)
0031d0  1b071700  andi r14, r14, 1
0031d4  8b93e310  add.s r7, r7, r14
0031d8  0b936310  add.s r6, r7, r6
0031dc  db010000  j 12
0031e0  2b034000  lui r6, 1024
0031e4  17936300  or r6, r7, r6
0031e8  e7016fee  storeli.w r6, -2280(r30)
0031ec  6343ffef  loadli.w r6,  -2052(r30)
0031f0  97036d00  and r7, r26, r6
0031f4  2b03807f  lui r6, 522240
0031f8  93037304  setlt.u r7, r6, r7
0031fc  3bf00300  bneq r7, zero, 28
003200  9b430d01  srli r7, r26, 16
003204  6303ffef  loadli.w r6,  -2056(r30)
003208  9b831300  andi r7, r7, 1
00320c  8b137d10  add.s r7, r26, r7
003210  0b9d6310  add.s r26, r7, r6
003214  db010000  j 12
003218  2b034000  lui r6, 1024
00321c  171d6d00  or r26, r26, r6
003220  6343ffef  loadli.w r6,  -2052(r30)
003224  97036400  and r7, r8, r6
003228  2b03807f  lui r6, 522240
00322c  93037304  setlt.u r7, r6, r7
003230  3bf00300  bneq r7, zero, 28
003234  9b430401  srli r7, r8, 16
003238  6303ffef  loadli.w r6,  -2056(r30)
00323c  9b831300  andi r7, r7, 1
003240  8b137410  add.s r7, r8, r7
003244  0b946310  add.s r8, r7, r6
003248  db010000  j 12
00324c  2b034000  lui r6, 1024
003250  17146400  or r8, r8, r6
003254  6343ffef  loadli.w r6,  -2052(r30)
003258  97036200  and r7, r4, r6
00325c  2b03807f  lui r6, 522240
003260  93037304  setlt.u r7, r6, r7
003264  3bf00300  bneq r7, zero, 28
003268  9b430201  srli r7, r4, 16
00326c  6303ffef  loadli.w r6,  -2056(r30)
003270  9b831300  andi r7, r7, 1
003274  0b127210  add.s r4, r4, r7
003278  0b126210  add.s r4, r4, r6
00327c  db010000  j 12
003280  2b034000  lui r6, 1024
003284  17126200  or r4, r4, r6
003288  6343ffef  loadli.w r6,  -2052(r30)
00328c  97836200  and r7, r5, r6
003290  2b03807f  lui r6, 522240
003294  93037304  setlt.u r7, r6, r7
003298  3bf00300  bneq r7, zero, 28
00329c  9bc30201  srli r7, r5, 16
0032a0  6303ffef  loadli.w r6,  -2056(r30)
0032a4  9b831300  andi r7, r7, 1
0032a8  8b927210  add.s r5, r5, r7
0032ac  8b926210  add.s r5, r5, r6
0032b0  db010000  j 12
0032b4  2b034000  lui r6, 1024
0032b8  97926200  or r5, r5, r6
0032bc  6343ffef  loadli.w r6,  -2052(r30)
0032c0  97036e00  and r7, r28, r6
0032c4  2b03807f  lui r6, 522240
0032c8  93037304  setlt.u r7, r6, r7
0032cc  3bf00300  bneq r7, zero, 28
0032d0  9b430e01  srli r7, r28, 16
0032d4  6303ffef  loadli.w r6,  -2056(r30)
0032d8  9b831300  andi r7, r7, 1
0032dc  8b137e10  add.s r7, r28, r7
0032e0  0b9e6310  add.s r28, r7, r6
0032e4  db010000  j 12
0032e8  2b034000  lui r6, 1024
0032ec  171e6e00  or r28, r28, r6
0032f0  6343ffef  loadli.w r6,  -2052(r30)
0032f4  97836100  and r7, r3, r6
0032f8  2b03807f  lui r6, 522240
0032fc  93037304  setlt.u r7, r6, r7
003300  3bf00300  bneq r7, zero, 28
003304  9bc30101  srli r7, r3, 16
003308  6303ffef  loadli.w r6,  -2056(r30)
00330c  9b831300  andi r7, r7, 1
003310  8b917110  add.s r3, r3, r7
003314  8b916110  add.s r3, r3, r6
003318  db010000  j 12
00331c  2b034000  lui r6, 1024
003320  97916100  or r3, r3, r6
003324  6343ffef  loadli.w r6,  -2052(r30)
003328  97836800  and r7, r17, r6
00332c  2b03807f  lui r6, 522240
003330  93037304  setlt.u r7, r6, r7
003334  3bf00300  bneq r7, zero, 28
003338  9bc30801  srli r7, r17, 16
00333c  6303ffef  loadli.w r6,  -2056(r30)
003340  9b831300  andi r7, r7, 1
003344  8b937810  add.s r7, r17, r7
003348  8b986310  add.s r17, r7, r6
00334c  db010000  j 12
003350  2b034000  lui r6, 1024
003354  97986800  or r17, r17, r6
003358  6343ffef  loadli.w r6,  -2052(r30)
00335c  97836900  and r7, r19, r6
003360  2b03807f  lui r6, 522240
003364  93037304  setlt.u r7, r6, r7
003368  3bf00300  bneq r7, zero, 28
00336c  9bc30901  srli r7, r19, 16
003370  6303ffef  loadli.w r6,  -2056(r30)
003374  9b831300  andi r7, r7, 1
003378  8b937910  add.s r7, r19, r7
00337c  8b996310  add.s r19, r7, r6
003380  db010000  j 12
003384  2b034000  lui r6, 1024
003388  97996900  or r19, r19, r6
00338c  6343ffef  loadli.w r6,  -2052(r30)
003390  97836000  and r7, r1, r6
003394  2b03807f  lui r6, 522240
003398  93037304  setlt.u r7, r6, r7
00339c  3bf00300  bneq r7, zero, 28
0033a0  9bc30001  srli r7, r1, 16
0033a4  6303ffef  loadli.w r6,  -2056(r30)
0033a8  9b831300  andi r7, r7, 1
0033ac  8b907010  add.s r1, r1, r7
0033b0  8b906010  add.s r1, r1, r6
0033b4  db010000  j 12
0033b8  2b034000  lui r6, 1024
0033bc  97906000  or r1, r1, r6
0033c0  6343ffef  loadli.w r6,  -2052(r30)
0033c4  97036100  and r7, r2, r6
0033c8  2b03807f  lui r6, 522240
0033cc  93037304  setlt.u r7, r6, r7
0033d0  3bf00300  bneq r7, zero, 28
0033d4  9b430101  srli r7, r2, 16
0033d8  6303ffef  loadli.w r6,  -2056(r30)
0033dc  9b831300  andi r7, r7, 1
0033e0  0b117110  add.s r2, r2, r7
0033e4  0b116110  add.s r2, r2, r6
0033e8  db010000  j 12
0033ec  2b034000  lui r6, 1024
0033f0  17116100  or r2, r2, r6
0033f4  6343ffef  loadli.w r6,  -2052(r30)
0033f8  97836c00  and r7, r25, r6
0033fc  2b03807f  lui r6, 522240
003400  93037304  setlt.u r7, r6, r7
003404  3bf00300  bneq r7, zero, 28
003408  9bc30c01  srli r7, r25, 16
00340c  6303ffef  loadli.w r6,  -2056(r30)
003410  9b831300  andi r7, r7, 1
003414  8b937c10  add.s r7, r25, r7
003418  8b936310  add.s r7, r7, r6
00341c  db010000  j 12
003420  2b034000  lui r6, 1024
003424  97936c00  or r7, r25, r6
003428  6343ffef  loadli.w r6,  -2052(r30)
00342c  67429fee  storeli.w r9, -2268(r30)
003430  17876600  and r14, r13, r6
003434  2b03807f  lui r6, 522240
003438  1307e304  setlt.u r14, r6, r14
00343c  3b700700  bneq r14, zero, 28
003440  1bc70601  srli r14, r13, 16
003444  6303ffef  loadli.w r6,  -2056(r30)
003448  1b071700  andi r14, r14, 1
00344c  8b96e610  add.s r13, r13, r14
003450  8b966610  add.s r13, r13, r6
003454  db010000  j 12
003458  2b034000  lui r6, 1024
00345c  97966600  or r13, r13, r6
003460  e304efef  loadli.w r9,  -2064(r30)
003464  1f038000  addli r6, zero, 64
003468  3fa06400  blt.s r9, r6, 8
00346c  db21ffff  j -1780
003470  2b03ffff  lui r6, 1048560
003474  9f840700  addli r9, r15, 0
003478  6741bfee  storeli.w r11, -2284(r30)
00347c  67012fef  storeli.w r18, -2288(r30)
003480  9f050b00  addli r11, r22, 0
003484  1f890b00  addli r18, r23, 0
003488  97076800  and r15, r16, r6
00348c  17886400  and r16, r9, r6
003490  e3043fee  loadli.w r9,  -2280(r30)
003494  17876a00  and r14, r21, r6
003498  17046400  and r8, r8, r6
00349c  97826200  and r5, r5, r6
0034a0  97816100  and r3, r3, r6
0034a4  17026200  and r4, r4, r6
0034a8  17016100  and r2, r2, r6
0034ac  97866600  and r13, r13, r6
0034b0  970c6d00  and r25, r26, r6
0034b4  170d6e00  and r26, r28, r6
0034b8  e701afee  storeli.w r10, -2280(r30)
0034bc  97886800  and r17, r17, r6
0034c0  97896900  and r19, r19, r6
0034c4  97806000  and r1, r1, r6
0034c8  97836300  and r7, r7, r6
0034cc  0b684819  sub.f.rn r16, r16, r20
0034d0  8be74719  sub.f.rn r15, r15, r20
0034d4  0b6e4219  sub.f.rn r28, r4, r20
0034d8  0beb4219  sub.f.rn r22, r5, r20
0034dc  8beb4119  sub.f.rn r23, r3, r20
0034e0  1f820d00  addli r4, r27, 0
0034e4  0be54619  sub.f.rn r10, r13, r20
0034e8  0b674719  sub.f.rn r14, r14, r20
0034ec  0b644419  sub.f.rn r8, r8, r20
0034f0  8b6d4119  sub.f.rn r27, r2, r20
0034f4  8bec4c19  sub.f.rn r25, r25, r20
0034f8  9f010c00  addli r3, r24, 0
0034fc  9f020600  addli r5, r12, 0
003500  0be64019  sub.f.rn r12, r1, r20
003504  0b6d4d19  sub.f.rn r26, r26, r20
003508  0bec4819  sub.f.rn r24, r17, r20
00350c  978a6400  and r21, r9, r6
003510  0be34919  sub.f.rn r6, r19, r20
003514  8be44319  sub.f.rn r9, r7, r20
003518  8bea4a19  sub.f.rn r21, r21, r20
00351c  0b680821  mul.f.rn r16, r16, r16
003520  8be7f720  mul.f.rn r15, r15, r15
003524  8b60e720  mul.f.rn r1, r14, r14
003528  8b638420  mul.f.rn r7, r8, r8
00352c  0b64ce21  mul.f.rn r8, r28, r28
003530  8b666b21  mul.f.rn r13, r22, r22
003534  1f8b0500  addli r22, r11, 0
003538  0be77b21  mul.f.rn r14, r23, r23
00353c  9f0b0900  addli r23, r18, 0
003540  0beebd21  mul.f.rn r28, r27, r27
003544  9f0d0200  addli r27, r4, 0
003548  e3452fee  loadli.w r11,  -2284(r30)
00354c  63092fee  loadli.w r18,  -2288(r30)
003550  0be19c21  mul.f.rn r2, r25, r25
003554  8b68ad21  mul.f.rn r17, r26, r26
003558  8b698c21  mul.f.rn r19, r24, r24
00355c  1f8c0100  addli r24, r3, 0
003560  0b6dc620  mul.f.rn r26, r12, r12
003564  1f860200  addli r12, r5, 0
003568  8b6c6320  mul.f.rn r25, r6, r6
00356c  8bea5a21  mul.f.rn r21, r21, r21
003570  1f020800  addli r4, r16, 0
003574  0b68a520  mul.f.rn r16, r10, r10
003578  63053fee  loadli.w r10,  -2280(r30)
00357c  9f810700  addli r3, r15, 0
003580  8be79420  mul.f.rn r15, r9, r9
003584  db06ffff  j -1996
003588  8b607b11  add.f.rn r1, r22, r23
00358c  6301cfe9  loadli.w r2,  -2848(r30)
003590  8be08011  add.f.rn r1, r1, r24
003594  8be0b011  add.f.rn r1, r1, r27
003598  8be0a010  add.f.rn r1, r1, r10
00359c  8be0b010  add.f.rn r1, r1, r11
0035a0  8be0c010  add.f.rn r1, r1, r12
0035a4  8be04010  add.f.rn r1, r1, r4
0035a8  8be05010  add.f.rn r1, r1, r5
0035ac  8be06010  add.f.rn r1, r1, r6
0035b0  8be07010  add.f.rn r1, r1, r7
0035b4  8be08010  add.f.rn r1, r1, r8
0035b8  8be03010  add.f.rn r1, r1, r3
0035bc  8be09010  add.f.rn r1, r1, r9
0035c0  8be0d010  add.f.rn r1, r1, r13
0035c4  8be0e010  add.f.rn r1, r1, r14
0035c8  73601100  stores.w r1, 0(r2)
0035cc  00a00300  mfence { lm, sm, gm }
0035d0  63421fee  loadli.w r4,  -2292(r30)
0035d4  80210204  csr_set csr3, r4
0035d8  00d00100  sync_group
0035dc  e3001fee  loadli.w r1,  -2296(r30)
0035e0  3ba10000  bneq r1, zero, 72
0035e4  e302dfe9  loadli.w r5,  -2840(r30)
0035e8  efc00200  loads.w r1, 0(r5)
0035ec  6fc14200  loads.w r2, 4(r5)
0035f0  efc18200  loads.w r3, 8(r5)
0035f4  8be02010  add.f.rn r1, r1, r2
0035f8  6fc1c200  loads.w r2, 12(r5)
0035fc  8be03010  add.f.rn r1, r1, r3
003600  efc10201  loads.w r3, 16(r5)
003604  8be02010  add.f.rn r1, r1, r2
003608  6fc14201  loads.w r2, 20(r5)
00360c  8be03010  add.f.rn r1, r1, r3
003610  efc18201  loads.w r3, 24(r5)
003614  8be02010  add.f.rn r1, r1, r2
003618  6fc1c201  loads.w r2, 28(r5)
00361c  8be03010  add.f.rn r1, r1, r3
003620  8be02010  add.f.rn r1, r1, r2
003624  73e01200  stores.w r1, 0(r5)
003628  00a00300  mfence { lm, sm, gm }
00362c  80210204  csr_set csr3, r4
003630  00d00100  sync_group
003634  e300dfe9  loadli.w r1,  -2840(r30)
003638  2b01803a  lui r2, 239616
00363c  e30cffef  loadli.w r25,  -2056(r30)
003640  1f020000  addli r4, zero, 0
003644  efc00000  loads.w r1, 0(r1)
003648  8be02020  mul.f.rn r1, r1, r2
00364c  6301ffe8  loadli.w r2,  -2952(r30)
003650  8be02010  add.f.rn r1, r1, r2
003654  2b01803f  lui r2, 260096
003658  8f800008  sqrt.f.rn r1, r1
00365c  8f011118  div.f.rn r3, r2, r1
003660  5b050000  j 40
003664  9b400101  srli r1, r2, 16
003668  9b801000  andi r1, r1, 1
00366c  8b101110  add.s r1, r2, r1
003670  8b909011  add.s r1, r1, r25
003674  9bc00001  srli r1, r1, 16
003678  1f024200  addli r4, r4, 32
00367c  739f1200  store.h r1, 30(r5)
003680  00a00000  mfence { lm }
003684  b70da2e7  beq r4, r26, -12448
003688  8b124e10  add.s r5, r28, r4
00368c  9230b002  vadd.s.mz vr1{mr1}, zero, vr11
003690  1f190000  addli r18, zero, 1
003694  1231b002  vadd.s.mz vr2{mr1}, zero, vr11
003698  6bb30200  load.hu r6, 0(r5)
00369c  ebb32200  load.hu r7, 2(r5)
0036a0  7e0109e0  vmmov mr2, r18
0036a4  6bb1a201  load.hu r2, 26(r5)
0036a8  ebb0c201  load.hu r1, 28(r5)
0036ac  6bb44200  load.hu r8, 4(r5)
0036b0  ebb46200  load.hu r9, 6(r5)
0036b4  6bb58200  load.hu r10, 8(r5)
0036b8  ebb5a200  load.hu r11, 10(r5)
0036bc  6bb6c200  load.hu r12, 12(r5)
0036c0  ebb6e200  load.hu r13, 14(r5)
0036c4  6bb70201  load.hu r14, 16(r5)
0036c8  ebb72201  load.hu r15, 18(r5)
0036cc  6bb84201  load.hu r16, 20(r5)
0036d0  ebb86201  load.hu r17, 22(r5)
0036d4  ebb98201  load.hu r19, 24(r5)
0036d8  ebbae201  load.hu r21, 30(r5)
0036dc  33130318  bfloat2float.rn r6, r6
0036e0  33110118  bfloat2float.rn r2, r2
0036e4  b3900018  bfloat2float.rn r1, r1
0036e8  ea201334  vor.u.mh vr1{mr2}, r6, vr1
0036ec  33930318  bfloat2float.rn r6, r7
0036f0  9f230000  addli r7, zero, 2
0036f4  fe8103e0  vmmov mr3, r7
0036f8  9f430000  addli r7, zero, 4
0036fc  ea201336  vor.u.mh vr1{mr3}, r6, vr1
003700  33130418  bfloat2float.rn r6, r8
003704  7e8003e0  vmmov mr0, r7
003708  9f031000  addli r7, zero, 8
00370c  ea201330  vor.u.mh vr1{mr0}, r6, vr1
003710  33930418  bfloat2float.rn r6, r9
003714  7e8003e0  vmmov mr0, r7
003718  9f032000  addli r7, zero, 16
00371c  ea201330  vor.u.mh vr1{mr0}, r6, vr1
003720  33130518  bfloat2float.rn r6, r10
003724  7e8003e0  vmmov mr0, r7
003728  9f034000  addli r7, zero, 32
00372c  ea201330  vor.u.mh vr1{mr0}, r6, vr1
003730  33930518  bfloat2float.rn r6, r11
003734  7e8003e0  vmmov mr0, r7
003738  9f038000  addli r7, zero, 64
00373c  ea201330  vor.u.mh vr1{mr0}, r6, vr1
003740  33130618  bfloat2float.rn r6, r12
003744  7e8003e0  vmmov mr0, r7
003748  9f030001  addli r7, zero, 128
00374c  ea201330  vor.u.mh vr1{mr0}, r6, vr1
003750  33930618  bfloat2float.rn r6, r13
003754  7e8003e0  vmmov mr0, r7
003758  9f030002  addli r7, zero, 256
00375c  ea201330  vor.u.mh vr1{mr0}, r6, vr1
003760  33130718  bfloat2float.rn r6, r14
003764  7e8003e0  vmmov mr0, r7
003768  9f030004  addli r7, zero, 512
00376c  ea201330  vor.u.mh vr1{mr0}, r6, vr1
003770  33930718  bfloat2float.rn r6, r15
003774  7e8003e0  vmmov mr0, r7
003778  9f030008  addli r7, zero, 1024
00377c  ea201330  vor.u.mh vr1{mr0}, r6, vr1
003780  33130818  bfloat2float.rn r6, r16
003784  7e8003e0  vmmov mr0, r7
003788  9f030010  addli r7, zero, 2048
00378c  ea201330  vor.u.mh vr1{mr0}, r6, vr1
003790  33930818  bfloat2float.rn r6, r17
003794  7e8003e0  vmmov mr0, r7
003798  9f030020  addli r7, zero, 4096
00379c  ea201330  vor.u.mh vr1{mr0}, r6, vr1
0037a0  33930918  bfloat2float.rn r6, r19
0037a4  7e8003e0  vmmov mr0, r7
0037a8  ea201330  vor.u.mh vr1{mr0}, r6, vr1
0037ac  1f030040  addli r6, zero, 8192
0037b0  7e0003e0  vmmov mr0, r6
0037b4  2b830000  lui r6, 8
0037b8  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0037bc  2b410000  lui r2, 4
0037c0  7e0001e0  vmmov mr0, r2
0037c4  1f010ffa  addli r2, r30, -768
0037c8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0037cc  b3900a18  bfloat2float.rn r1, r21
0037d0  0b114110  add.s r2, r2, r4
0037d4  7e0003e0  vmmov mr0, r6
0037d8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0037dc  eb300100  load.hu r1, 0(r2)
0037e0  6b332100  load.hu r6, 2(r2)
0037e4  eb334100  load.hu r7, 4(r2)
0037e8  6b346100  load.hu r8, 6(r2)
0037ec  eb348100  load.hu r9, 8(r2)
0037f0  6b35a100  load.hu r10, 10(r2)
0037f4  eb35c100  load.hu r11, 12(r2)
0037f8  6b36e100  load.hu r12, 14(r2)
0037fc  eb360101  load.hu r13, 16(r2)
003800  6b372101  load.hu r14, 18(r2)
003804  eb374101  load.hu r15, 20(r2)
003808  6b386101  load.hu r16, 22(r2)
00380c  eb388101  load.hu r17, 24(r2)
003810  eb39a101  load.hu r19, 26(r2)
003814  eb3ac101  load.hu r21, 28(r2)
003818  6b31e101  load.hu r2, 30(r2)
00381c  b3900018  bfloat2float.rn r1, r1
003820  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003824  b3100318  bfloat2float.rn r1, r6
003828  1f430000  addli r6, zero, 4
00382c  7e0103e0  vmmov mr2, r6
003830  1f031000  addli r6, zero, 8
003834  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
003838  b3900318  bfloat2float.rn r1, r7
00383c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003840  b3100418  bfloat2float.rn r1, r8
003844  7e0103e0  vmmov mr2, r6
003848  1f032000  addli r6, zero, 16
00384c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003850  b3900418  bfloat2float.rn r1, r9
003854  7e0103e0  vmmov mr2, r6
003858  1f034000  addli r6, zero, 32
00385c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003860  b3100518  bfloat2float.rn r1, r10
003864  7e0103e0  vmmov mr2, r6
003868  1f038000  addli r6, zero, 64
00386c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003870  b3900518  bfloat2float.rn r1, r11
003874  7e0103e0  vmmov mr2, r6
003878  1f030001  addli r6, zero, 128
00387c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003880  b3100618  bfloat2float.rn r1, r12
003884  7e0103e0  vmmov mr2, r6
003888  1f030002  addli r6, zero, 256
00388c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003890  b3900618  bfloat2float.rn r1, r13
003894  7e0103e0  vmmov mr2, r6
003898  1f030004  addli r6, zero, 512
00389c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0038a0  b3100718  bfloat2float.rn r1, r14
0038a4  7e0103e0  vmmov mr2, r6
0038a8  1f030008  addli r6, zero, 1024
0038ac  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0038b0  b3900718  bfloat2float.rn r1, r15
0038b4  7e0103e0  vmmov mr2, r6
0038b8  1f030010  addli r6, zero, 2048
0038bc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0038c0  b3100818  bfloat2float.rn r1, r16
0038c4  7e0103e0  vmmov mr2, r6
0038c8  1f030020  addli r6, zero, 4096
0038cc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0038d0  b3900818  bfloat2float.rn r1, r17
0038d4  7e0103e0  vmmov mr2, r6
0038d8  1f030040  addli r6, zero, 8192
0038dc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0038e0  b3900918  bfloat2float.rn r1, r19
0038e4  7e0103e0  vmmov mr2, r6
0038e8  2b430000  lui r6, 4
0038ec  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0038f0  b3900a18  bfloat2float.rn r1, r21
0038f4  7e0103e0  vmmov mr2, r6
0038f8  2b03807f  lui r6, 522240
0038fc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003900  b3100118  bfloat2float.rn r1, r2
003904  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003908  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
00390c  46100fc2  vstore_mask16.mz vr0{mr1}, 1536(r30)
003910  00a00000  mfence { lm }
003914  e30a0ffc  loadli.w r21,  -512(r30)
003918  e3400ffc  loadli.w r1,  -508(r30)
00391c  e3091ffc  loadli.w r19,  -504(r30)
003920  e3481ffc  loadli.w r17,  -500(r30)
003924  63082ffc  loadli.w r16,  -496(r30)
003928  e3472ffc  loadli.w r15,  -492(r30)
00392c  63073ffc  loadli.w r14,  -488(r30)
003930  e3463ffc  loadli.w r13,  -484(r30)
003934  63064ffc  loadli.w r12,  -480(r30)
003938  e3454ffc  loadli.w r11,  -476(r30)
00393c  6341ffef  loadli.w r2,  -2052(r30)
003940  63055ffc  loadli.w r10,  -472(r30)
003944  e3445ffc  loadli.w r9,  -468(r30)
003948  63046ffc  loadli.w r8,  -464(r30)
00394c  17812a00  and r2, r21, r2
003950  130b2304  setlt.u r22, r6, r2
003954  63416ffc  loadli.w r2,  -460(r30)
003958  e3037ffc  loadli.w r7,  -456(r30)
00395c  63437ffc  loadli.w r6,  -452(r30)
003960  3b600b00  bneq r22, zero, 24
003964  1bcb0a01  srli r22, r21, 16
003968  1b0b1b00  andi r22, r22, 1
00396c  8b9a6a11  add.s r21, r21, r22
003970  8b9d9a11  add.s r27, r21, r25
003974  db010000  j 12
003978  2b0b4000  lui r22, 1024
00397c  979d6a01  or r27, r21, r22
003980  6349ffef  loadli.w r18,  -2052(r30)
003984  2b0b807f  lui r22, 522240
003988  978a2001  and r21, r1, r18
00398c  930a5b05  setlt.u r21, r22, r21
003990  3be00a00  bneq r21, zero, 24
003994  9bca0001  srli r21, r1, 16
003998  9b8a1a00  andi r21, r21, 1
00399c  8b905011  add.s r1, r1, r21
0039a0  8b909011  add.s r1, r1, r25
0039a4  db010000  j 12
0039a8  ab0a4000  lui r21, 1024
0039ac  97905001  or r1, r1, r21
0039b0  6349ffef  loadli.w r18,  -2052(r30)
0039b4  978a2901  and r21, r19, r18
0039b8  930a5b05  setlt.u r21, r22, r21
0039bc  3be00a00  bneq r21, zero, 24
0039c0  9bca0901  srli r21, r19, 16
0039c4  9b8a1a00  andi r21, r21, 1
0039c8  8b995911  add.s r19, r19, r21
0039cc  0b9c9911  add.s r24, r19, r25
0039d0  db010000  j 12
0039d4  ab0a4000  lui r21, 1024
0039d8  179c5901  or r24, r19, r21
0039dc  6349ffef  loadli.w r18,  -2052(r30)
0039e0  ab0a807f  lui r21, 522240
0039e4  97892801  and r19, r17, r18
0039e8  93893a05  setlt.u r19, r21, r19
0039ec  3be00900  bneq r19, zero, 24
0039f0  9bc90801  srli r19, r17, 16
0039f4  9b891900  andi r19, r19, 1
0039f8  8b983811  add.s r17, r17, r19
0039fc  8b9b9811  add.s r23, r17, r25
003a00  db010000  j 12
003a04  ab094000  lui r19, 1024
003a08  979b3801  or r23, r17, r19
003a0c  e348ffef  loadli.w r17,  -2052(r30)
003a10  ab09807f  lui r19, 522240
003a14  97081801  and r17, r16, r17
003a18  93881905  setlt.u r17, r19, r17
003a1c  3be00800  bneq r17, zero, 24
003a20  9b480801  srli r17, r16, 16
003a24  9b881800  andi r17, r17, 1
003a28  0b181811  add.s r16, r16, r17
003a2c  0b1b9811  add.s r22, r16, r25
003a30  db010000  j 12
003a34  ab084000  lui r17, 1024
003a38  171b1801  or r22, r16, r17
003a3c  6348ffef  loadli.w r16,  -2052(r30)
003a40  ab08807f  lui r17, 522240
003a44  17880701  and r16, r15, r16
003a48  13880805  setlt.u r16, r17, r16
003a4c  3b600800  bneq r16, zero, 24
003a50  1bc80701  srli r16, r15, 16
003a54  1b081800  andi r16, r16, 1
003a58  8b970711  add.s r15, r15, r16
003a5c  8b9a9711  add.s r21, r15, r25
003a60  db010000  j 12
003a64  2b084000  lui r16, 1024
003a68  979a0701  or r21, r15, r16
003a6c  e347ffef  loadli.w r15,  -2052(r30)
003a70  2b08807f  lui r16, 522240
003a74  ab08ffff  lui r17, 1048560
003a78  9707f700  and r15, r14, r15
003a7c  9307f804  setlt.u r15, r16, r15
003a80  3be00700  bneq r15, zero, 24
003a84  9b470701  srli r15, r14, 16
003a88  9b871700  andi r15, r15, 1
003a8c  0b17f710  add.s r14, r14, r15
003a90  8b199711  add.s r19, r14, r25
003a94  db010000  j 12
003a98  ab074000  lui r15, 1024
003a9c  9719f700  or r19, r14, r15
003aa0  6347ffef  loadli.w r14,  -2052(r30)
003aa4  ab07807f  lui r15, 522240
003aa8  1787e600  and r14, r13, r14
003aac  1387e704  setlt.u r14, r15, r14
003ab0  3b600700  bneq r14, zero, 24
003ab4  1bc70601  srli r14, r13, 16
003ab8  1b071700  andi r14, r14, 1
003abc  8b96e610  add.s r13, r13, r14
003ac0  0b989611  add.s r16, r13, r25
003ac4  db010000  j 12
003ac8  2b074000  lui r14, 1024
003acc  1798e600  or r16, r13, r14
003ad0  e346ffef  loadli.w r13,  -2052(r30)
003ad4  2b07807f  lui r14, 522240
003ad8  9706d600  and r13, r12, r13
003adc  9306d704  setlt.u r13, r14, r13
003ae0  3be00600  bneq r13, zero, 24
003ae4  9b460601  srli r13, r12, 16
003ae8  9b861600  andi r13, r13, 1
003aec  0b16d610  add.s r12, r12, r13
003af0  8b179611  add.s r15, r12, r25
003af4  db010000  j 12
003af8  ab064000  lui r13, 1024
003afc  9717d600  or r15, r12, r13
003b00  6346ffef  loadli.w r12,  -2052(r30)
003b04  ab06807f  lui r13, 522240
003b08  1786c500  and r12, r11, r12
003b0c  1386c604  setlt.u r12, r13, r12
003b10  3b600600  bneq r12, zero, 24
003b14  1bc60501  srli r12, r11, 16
003b18  1b061600  andi r12, r12, 1
003b1c  8b95c510  add.s r11, r11, r12
003b20  0b979511  add.s r14, r11, r25
003b24  db010000  j 12
003b28  2b064000  lui r12, 1024
003b2c  1797c500  or r14, r11, r12
003b30  e345ffef  loadli.w r11,  -2052(r30)
003b34  2b06807f  lui r12, 522240
003b38  9705b500  and r11, r10, r11
003b3c  9305b604  setlt.u r11, r12, r11
003b40  3be00500  bneq r11, zero, 24
003b44  9b450501  srli r11, r10, 16
003b48  9b851500  andi r11, r11, 1
003b4c  0b15b510  add.s r10, r10, r11
003b50  0b169511  add.s r12, r10, r25
003b54  db010000  j 12
003b58  ab054000  lui r11, 1024
003b5c  1716b500  or r12, r10, r11
003b60  6345ffef  loadli.w r10,  -2052(r30)
003b64  ab05807f  lui r11, 522240
003b68  1785a400  and r10, r9, r10
003b6c  1385a504  setlt.u r10, r11, r10
003b70  3b600500  bneq r10, zero, 24
003b74  1bc50401  srli r10, r9, 16
003b78  1b051500  andi r10, r10, 1
003b7c  8b94a410  add.s r9, r9, r10
003b80  8b959411  add.s r11, r9, r25
003b84  db010000  j 12
003b88  2b054000  lui r10, 1024
003b8c  9795a400  or r11, r9, r10
003b90  e344ffef  loadli.w r9,  -2052(r30)
003b94  2b05807f  lui r10, 522240
003b98  97049400  and r9, r8, r9
003b9c  93049504  setlt.u r9, r10, r9
003ba0  3be00400  bneq r9, zero, 24
003ba4  9b440401  srli r9, r8, 16
003ba8  9b841400  andi r9, r9, 1
003bac  0b149410  add.s r8, r8, r9
003bb0  0b159411  add.s r10, r8, r25
003bb4  db010000  j 12
003bb8  ab044000  lui r9, 1024
003bbc  17159400  or r10, r8, r9
003bc0  6344ffef  loadli.w r8,  -2052(r30)
003bc4  ab04807f  lui r9, 522240
003bc8  17048100  and r8, r2, r8
003bcc  13848404  setlt.u r8, r9, r8
003bd0  3b600400  bneq r8, zero, 24
003bd4  1b440101  srli r8, r2, 16
003bd8  1b041400  andi r8, r8, 1
003bdc  0b118110  add.s r2, r2, r8
003be0  8b149111  add.s r9, r2, r25
003be4  db010000  j 12
003be8  2b044000  lui r8, 1024
003bec  97148100  or r9, r2, r8
003bf0  6341ffef  loadli.w r2,  -2052(r30)
003bf4  2b04807f  lui r8, 522240
003bf8  17812300  and r2, r7, r2
003bfc  13012404  setlt.u r2, r8, r2
003c00  3b600100  bneq r2, zero, 24
003c04  1bc10301  srli r2, r7, 16
003c08  1b011100  andi r2, r2, 1
003c0c  0b912310  add.s r2, r7, r2
003c10  8b139111  add.s r7, r2, r25
003c14  db010000  j 12
003c18  2b014000  lui r2, 1024
003c1c  97932300  or r7, r7, r2
003c20  6341ffef  loadli.w r2,  -2052(r30)
003c24  17012300  and r2, r6, r2
003c28  13012404  setlt.u r2, r8, r2
003c2c  3b600100  bneq r2, zero, 24
003c30  1b410301  srli r2, r6, 16
003c34  1b011100  andi r2, r2, 1
003c38  0b112310  add.s r2, r6, r2
003c3c  0b139111  add.s r6, r2, r25
003c40  db010000  j 12
003c44  2b014000  lui r2, 1024
003c48  17132300  or r6, r6, r2
003c4c  17811d01  and r2, r27, r17
003c50  6344ffef  loadli.w r8,  -2052(r30)
003c54  0b614119  sub.f.rn r2, r2, r20
003c58  0be12120  mul.f.rn r2, r3, r2
003c5c  17048100  and r8, r2, r8
003c60  13848604  setlt.u r8, r13, r8
003c64  3b600400  bneq r8, zero, 24
003c68  1b440101  srli r8, r2, 16
003c6c  1b041400  andi r8, r8, 1
003c70  0b118110  add.s r2, r2, r8
003c74  0b119111  add.s r2, r2, r25
003c78  db010000  j 12
003c7c  2b044000  lui r8, 1024
003c80  17118100  or r2, r2, r8
003c84  97801001  and r1, r1, r17
003c88  6344ffef  loadli.w r8,  -2052(r30)
003c8c  1b410101  srli r2, r2, 16
003c90  8be04019  sub.f.rn r1, r1, r20
003c94  73902200  store.h r2, 0(r5)
003c98  8be01120  mul.f.rn r1, r3, r1
003c9c  17848000  and r8, r1, r8
003ca0  13848604  setlt.u r8, r13, r8
003ca4  3b600400  bneq r8, zero, 24
003ca8  1bc10001  srli r2, r1, 16
003cac  1b011100  andi r2, r2, 1
003cb0  8b902010  add.s r1, r1, r2
003cb4  8b909011  add.s r1, r1, r25
003cb8  db010000  j 12
003cbc  2b014000  lui r2, 1024
003cc0  97902000  or r1, r1, r2
003cc4  17011c01  and r2, r24, r17
003cc8  6344ffef  loadli.w r8,  -2052(r30)
003ccc  9bc00001  srli r1, r1, 16
003cd0  0b614119  sub.f.rn r2, r2, r20
003cd4  73911200  store.h r1, 2(r5)
003cd8  0be12120  mul.f.rn r2, r3, r2
003cdc  17048100  and r8, r2, r8
003ce0  13848604  setlt.u r8, r13, r8
003ce4  3b600400  bneq r8, zero, 24
003ce8  9b400101  srli r1, r2, 16
003cec  9b801000  andi r1, r1, 1
003cf0  8b101110  add.s r1, r2, r1
003cf4  8b909011  add.s r1, r1, r25
003cf8  db010000  j 12
003cfc  ab004000  lui r1, 1024
003d00  97101100  or r1, r2, r1
003d04  17811b01  and r2, r23, r17
003d08  6344ffef  loadli.w r8,  -2052(r30)
003d0c  9bc00001  srli r1, r1, 16
003d10  0b614119  sub.f.rn r2, r2, r20
003d14  73921200  store.h r1, 4(r5)
003d18  0be12120  mul.f.rn r2, r3, r2
003d1c  17048100  and r8, r2, r8
003d20  13848604  setlt.u r8, r13, r8
003d24  3b600400  bneq r8, zero, 24
003d28  9b400101  srli r1, r2, 16
003d2c  9b801000  andi r1, r1, 1
003d30  8b101110  add.s r1, r2, r1
003d34  8b909011  add.s r1, r1, r25
003d38  db010000  j 12
003d3c  ab004000  lui r1, 1024
003d40  97101100  or r1, r2, r1
003d44  17011b01  and r2, r22, r17
003d48  6344ffef  loadli.w r8,  -2052(r30)
003d4c  9bc00001  srli r1, r1, 16
003d50  0b614119  sub.f.rn r2, r2, r20
003d54  73931200  store.h r1, 6(r5)
003d58  0be12120  mul.f.rn r2, r3, r2
003d5c  17048100  and r8, r2, r8
003d60  13848604  setlt.u r8, r13, r8
003d64  3b600400  bneq r8, zero, 24
003d68  9b400101  srli r1, r2, 16
003d6c  9b801000  andi r1, r1, 1
003d70  8b101110  add.s r1, r2, r1
003d74  8b909011  add.s r1, r1, r25
003d78  db010000  j 12
003d7c  ab004000  lui r1, 1024
003d80  97101100  or r1, r2, r1
003d84  17811a01  and r2, r21, r17
003d88  6344ffef  loadli.w r8,  -2052(r30)
003d8c  9bc00001  srli r1, r1, 16
003d90  0b614119  sub.f.rn r2, r2, r20
003d94  73941200  store.h r1, 8(r5)
003d98  0be12120  mul.f.rn r2, r3, r2
003d9c  17048100  and r8, r2, r8
003da0  13848604  setlt.u r8, r13, r8
003da4  3b600400  bneq r8, zero, 24
003da8  9b400101  srli r1, r2, 16
003dac  9b801000  andi r1, r1, 1
003db0  8b101110  add.s r1, r2, r1
003db4  8b909011  add.s r1, r1, r25
003db8  db010000  j 12
003dbc  ab004000  lui r1, 1024
003dc0  97101100  or r1, r2, r1
003dc4  17811901  and r2, r19, r17
003dc8  6344ffef  loadli.w r8,  -2052(r30)
003dcc  9bc00001  srli r1, r1, 16
003dd0  0b614119  sub.f.rn r2, r2, r20
003dd4  73951200  store.h r1, 10(r5)
003dd8  0be12120  mul.f.rn r2, r3, r2
003ddc  17048100  and r8, r2, r8
003de0  13848604  setlt.u r8, r13, r8
003de4  3b600400  bneq r8, zero, 24
003de8  9b400101  srli r1, r2, 16
003dec  9b801000  andi r1, r1, 1
003df0  8b101110  add.s r1, r2, r1
003df4  8b909011  add.s r1, r1, r25
003df8  db010000  j 12
003dfc  ab004000  lui r1, 1024
003e00  97101100  or r1, r2, r1
003e04  17011801  and r2, r16, r17
003e08  6344ffef  loadli.w r8,  -2052(r30)
003e0c  9bc00001  srli r1, r1, 16
003e10  0b614119  sub.f.rn r2, r2, r20
003e14  73961200  store.h r1, 12(r5)
003e18  0be12120  mul.f.rn r2, r3, r2
003e1c  17048100  and r8, r2, r8
003e20  13848604  setlt.u r8, r13, r8
003e24  3b600400  bneq r8, zero, 24
003e28  9b400101  srli r1, r2, 16
003e2c  9b801000  andi r1, r1, 1
003e30  8b101110  add.s r1, r2, r1
003e34  8b909011  add.s r1, r1, r25
003e38  db010000  j 12
003e3c  ab004000  lui r1, 1024
003e40  97101100  or r1, r2, r1
003e44  17811701  and r2, r15, r17
003e48  6344ffef  loadli.w r8,  -2052(r30)
003e4c  9bc00001  srli r1, r1, 16
003e50  0b614119  sub.f.rn r2, r2, r20
003e54  73971200  store.h r1, 14(r5)
003e58  0be12120  mul.f.rn r2, r3, r2
003e5c  17048100  and r8, r2, r8
003e60  13848604  setlt.u r8, r13, r8
003e64  3b600400  bneq r8, zero, 24
003e68  9b400101  srli r1, r2, 16
003e6c  9b801000  andi r1, r1, 1
003e70  8b101110  add.s r1, r2, r1
003e74  8b909011  add.s r1, r1, r25
003e78  db010000  j 12
003e7c  ab004000  lui r1, 1024
003e80  97101100  or r1, r2, r1
003e84  17011701  and r2, r14, r17
003e88  6344ffef  loadli.w r8,  -2052(r30)
003e8c  9bc00001  srli r1, r1, 16
003e90  0b614119  sub.f.rn r2, r2, r20
003e94  73981200  store.h r1, 16(r5)
003e98  0be12120  mul.f.rn r2, r3, r2
003e9c  17048100  and r8, r2, r8
003ea0  13848604  setlt.u r8, r13, r8
003ea4  3b600400  bneq r8, zero, 24
003ea8  9b400101  srli r1, r2, 16
003eac  9b801000  andi r1, r1, 1
003eb0  8b101110  add.s r1, r2, r1
003eb4  8b909011  add.s r1, r1, r25
003eb8  db010000  j 12
003ebc  ab004000  lui r1, 1024
003ec0  97101100  or r1, r2, r1
003ec4  17011601  and r2, r12, r17
003ec8  6344ffef  loadli.w r8,  -2052(r30)
003ecc  2b06807f  lui r12, 522240
003ed0  9bc00001  srli r1, r1, 16
003ed4  0b614119  sub.f.rn r2, r2, r20
003ed8  73991200  store.h r1, 18(r5)
003edc  0be12120  mul.f.rn r2, r3, r2
003ee0  17048100  and r8, r2, r8
003ee4  13048604  setlt.u r8, r12, r8
003ee8  3b600400  bneq r8, zero, 24
003eec  9b400101  srli r1, r2, 16
003ef0  9b801000  andi r1, r1, 1
003ef4  8b101110  add.s r1, r2, r1
003ef8  8b909011  add.s r1, r1, r25
003efc  db010000  j 12
003f00  ab004000  lui r1, 1024
003f04  97101100  or r1, r2, r1
003f08  17811501  and r2, r11, r17
003f0c  6344ffef  loadli.w r8,  -2052(r30)
003f10  ab05807f  lui r11, 522240
003f14  9bc00001  srli r1, r1, 16
003f18  0b614119  sub.f.rn r2, r2, r20
003f1c  739a1200  store.h r1, 20(r5)
003f20  0be12120  mul.f.rn r2, r3, r2
003f24  17048100  and r8, r2, r8
003f28  13848504  setlt.u r8, r11, r8
003f2c  3b600400  bneq r8, zero, 24
003f30  9b400101  srli r1, r2, 16
003f34  9b801000  andi r1, r1, 1
003f38  8b101110  add.s r1, r2, r1
003f3c  8b909011  add.s r1, r1, r25
003f40  db010000  j 12
003f44  ab004000  lui r1, 1024
003f48  97101100  or r1, r2, r1
003f4c  17011501  and r2, r10, r17
003f50  6344ffef  loadli.w r8,  -2052(r30)
003f54  2b05807f  lui r10, 522240
003f58  9bc00001  srli r1, r1, 16
003f5c  0b614119  sub.f.rn r2, r2, r20
003f60  739b1200  store.h r1, 22(r5)
003f64  0be12120  mul.f.rn r2, r3, r2
003f68  17048100  and r8, r2, r8
003f6c  13048504  setlt.u r8, r10, r8
003f70  3b600400  bneq r8, zero, 24
003f74  9b400101  srli r1, r2, 16
003f78  9b801000  andi r1, r1, 1
003f7c  8b101110  add.s r1, r2, r1
003f80  8b909011  add.s r1, r1, r25
003f84  db010000  j 12
003f88  ab004000  lui r1, 1024
003f8c  97101100  or r1, r2, r1
003f90  17811401  and r2, r9, r17
003f94  6344ffef  loadli.w r8,  -2052(r30)
003f98  ab04807f  lui r9, 522240
003f9c  9bc00001  srli r1, r1, 16
003fa0  0b614119  sub.f.rn r2, r2, r20
003fa4  739c1200  store.h r1, 24(r5)
003fa8  0be12120  mul.f.rn r2, r3, r2
003fac  17048100  and r8, r2, r8
003fb0  13848404  setlt.u r8, r9, r8
003fb4  3b600400  bneq r8, zero, 24
003fb8  9b400101  srli r1, r2, 16
003fbc  9b801000  andi r1, r1, 1
003fc0  8b101110  add.s r1, r2, r1
003fc4  8b909011  add.s r1, r1, r25
003fc8  db010000  j 12
003fcc  ab004000  lui r1, 1024
003fd0  97101100  or r1, r2, r1
003fd4  17811301  and r2, r7, r17
003fd8  e343ffef  loadli.w r7,  -2052(r30)
003fdc  2b04807f  lui r8, 522240
003fe0  9bc00001  srli r1, r1, 16
003fe4  0b614119  sub.f.rn r2, r2, r20
003fe8  739d1200  store.h r1, 26(r5)
003fec  0be12120  mul.f.rn r2, r3, r2
003ff0  97037100  and r7, r2, r7
003ff4  93037404  setlt.u r7, r8, r7
003ff8  3be00300  bneq r7, zero, 24
003ffc  9b400101  srli r1, r2, 16
004000  9b801000  andi r1, r1, 1
004004  8b101110  add.s r1, r2, r1
004008  8b909011  add.s r1, r1, r25
00400c  db010000  j 12
004010  ab004000  lui r1, 1024
004014  97101100  or r1, r2, r1
004018  17011301  and r2, r6, r17
00401c  6343ffef  loadli.w r6,  -2052(r30)
004020  ab03807f  lui r7, 522240
004024  9bc00001  srli r1, r1, 16
004028  0b614119  sub.f.rn r2, r2, r20
00402c  739e1200  store.h r1, 28(r5)
004030  0be12120  mul.f.rn r2, r3, r2
004034  17036100  and r6, r2, r6
004038  13836304  setlt.u r6, r7, r6
00403c  b72803fa  beq r6, zero, -2520
004040  ab004000  lui r1, 1024
004044  97101100  or r1, r2, r1
004048  dbc5feff  j -2516
00404c  9f0e8fe5  addli sp, r30, -3392
004050  9f8e8e1a  addli sp, sp, 3392
004054  00a00300  mfence { lm, sm, gm }
004058  00100000  exit
00405c  00100000  exit
004060  00100000  exit
004064  00100000  exit
004068  00100000  exit
00406c  00100000  exit
004070  00100000  exit
004074  00100000  exit
004078  00100000  exit
00407c  00100000  exit
004080  00100000  exit
004084  00100000  exit
004088  00100000  exit
00408c  00100000  exit
004090  00100000  exit
004094  00100000  exit
004098  00100000  exit
00409c  00100000  exit
0040a0  00100000  exit
0040a4  00100000  exit
0040a8  00100000  exit
0040ac  00100000  exit
0040b0  00100000  exit
0040b4  00100000  exit
0040b8  00100000  exit
0040bc  00100000  exit
0040c0  00100000  exit
0040c4  00100000  exit
0040c8  00100000  exit
0040cc  00100000  exit
0040d0  00100000  exit
0040d4  00100000  exit
0040d8  00100000  exit
0040dc  00100000  exit
0040e0  00100000  exit
0040e4  00100000  exit
0040e8  00100000  exit
0040ec  00100000  exit
0040f0  00100000  exit
0040f4  00100000  exit
0040f8  00100000  exit
0040fc  00100000  exit
004100  00100000  exit
004104  00100000  exit
004108  00100000  exit
00410c  00100000  exit
004110  00100000  exit
004114  00100000  exit
004118  00100000  exit
00411c  00100000  exit
004120  00100000  exit
004124  00100000  exit
004128  00100000  exit
00412c  00100000  exit
004130  00100000  exit
004134  00100000  exit
004138  00100000  exit
00413c  00100000  exit
004140  00100000  exit
004144  00100000  exit
004148  00100000  exit
00414c  00100000  exit
004150  00100000  exit
004154  00100000  exit
004158  00100000  exit
00415c  00100000  exit
004160  00100000  exit
004164  00100000  exit
004168  00100000  exit
00416c  00100000  exit
004170  00100000  exit
004174  00100000  exit
004178  00100000  exit
00417c  00100000  exit
004180  00100000  exit
004184  00100000  exit
004188  00100000  exit
00418c  00100000  exit
004190  00100000  exit
004194  00100000  exit
004198  00100000  exit
00419c  00100000  exit
0041a0  00100000  exit
0041a4  00100000  exit
0041a8  00100000  exit
0041ac  00100000  exit
0041b0  00100000  exit
0041b4  00100000  exit
0041b8  00100000  exit
0041bc  00100000  exit
0041c0  00100000  exit
0041c4  00100000  exit
0041c8  00100000  exit
0041cc  00100000  exit
0041d0  00100000  exit
0041d4  00100000  exit
0041d8  00100000  exit
0041dc  00100000  exit
0041e0  00100000  exit
0041e4  00100000  exit
0041e8  00100000  exit
0041ec  00100000  exit
0041f0  00100000  exit
0041f4  00100000  exit
0041f8  00100000  exit
0041fc  00100000  exit
004200  00100000  exit
004204  00100000  exit
004208  00100000  exit
00420c  00100000  exit
004210  00100000  exit
004214  00100000  exit
004218  00100000  exit
00421c  00100000  exit
004220  00100000  exit
004224  00100000  exit
004228  00100000  exit
00422c  00100000  exit
004230  00100000  exit
004234  00100000  exit
004238  00100000  exit
00423c  00100000  exit
004240  00100000  exit
004244  00100000  exit
004248  00100000  exit
00424c  00100000  exit
004250  00100000  exit
004254  00100000  exit
004258  00100000  exit
00425c  00100000  exit
004260  00100000  exit
004264  00100000  exit
004268  00100000  exit
00426c  00100000  exit
004270  00100000  exit
004274  00100000  exit
004278  00100000  exit
00427c  00100000  exit
004280  00100000  exit
004284  00100000  exit
004288  00100000  exit
00428c  00100000  exit
004290  00100000  exit
004294  00100000  exit
004298  00100000  exit
