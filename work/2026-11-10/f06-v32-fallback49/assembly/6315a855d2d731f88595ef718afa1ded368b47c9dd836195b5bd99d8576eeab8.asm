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
0000dc  9f8e0ee4  addli sp, sp, -3584
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f8e1b  addli r30, sp, 3520
0000ec  9bb12000  slli r3, r1, 2
0000f0  1f010100  addli r2, r2, 0
0000f4  63444f00  loadli.w r8,  36(r30)
0000f8  63024f00  loadli.w r4,  32(r30)
0000fc  63035f00  loadli.w r6,  40(r30)
000100  8b932110  add.s r7, r3, r2
000104  0b124420  mul.s r4, r8, r4
000108  00540002  load_param_i r8, 0
00010c  9f822340  addli r5, r7, 8208
000110  0b126220  mul.s r4, r4, r6
000114  670e5fe8  storeli.w r5, -2848(r30)
000118  73e00200  stores.w zero, 0(r5)
00011c  abf20000  lui r5, 15
000120  00a00300  mfence { lm, sm, gm }
000124  9b94f2ff  ori r9, r5, 4095
000128  abf27fff  lui r5, 1046527
00012c  9b92f2ff  ori r5, r5, 4095
000130  80a10404  csr_set csr3, r9
000134  00d00100  sync_group
000138  674e7fe8  storeli.w r7, -2844(r30)
00013c  73e05300  stores.w r5, 0(r7)
000140  00a00300  mfence { lm, sm, gm }
000144  e70e9fec  storeli.w r9, -2328(r30)
000148  80a10404  csr_set csr3, r9
00014c  00d00100  sync_group
000150  e74d4fe8  storeli.w r4, -2852(r30)
000154  4b158228  ble.s r4, r8, 20804
000158  1f021000  addli r4, zero, 8
00015c  1f150000  addli r10, zero, 1
000160  1f0d0ff8  addli r26, r30, -1024
000164  2b0affff  lui r20, 1048560
000168  eea49462  vxor.u.mz vr9{mr1}, vr9, vr9
00016c  0b924030  div.s r4, r1, r4
000170  e70d4fe8  storeli.w r4, -2856(r30)
000174  1b323200  slli r4, r4, 3
000178  0b934018  sub.s r6, r1, r4
00017c  9b807000  andi r1, r1, 7
000180  6b528f00  load.d r[5:6], 8(r30)
000184  9b347300  slli r9, r6, 7
000188  674e1fec  storeli.w r1, -2332(r30)
00018c  ab700000  lui r1, 7
000190  00d30002  load_param_i r6, 1
000194  9b9cf0ff  ori r25, r1, 4095
000198  9b904401  ori r1, r9, 20
00019c  670d6fe8  storeli.w r6, -2864(r30)
0001a0  1b931400  ori r6, r9, 1
0001a4  9b950401  ori r11, r9, 16
0001a8  674d9fe8  storeli.w r9, -2860(r30)
0001ac  e74f1fe6  storeli.w r1, -3076(r30)
0001b0  9b905401  ori r1, r9, 21
0001b4  e74c6fe8  storeli.w r6, -2868(r30)
0001b8  1b932400  ori r6, r9, 2
0001bc  6709bfe8  storeli.w r11, -2928(r30)
0001c0  e74f9fef  storeli.w r25, -2052(r30)
0001c4  e70f1fe6  storeli.w r1, -3080(r30)
0001c8  9b906401  ori r1, r9, 22
0001cc  e70c6fe8  storeli.w r6, -2872(r30)
0001d0  1b933400  ori r6, r9, 3
0001d4  674f1fe6  storeli.w r1, -3084(r30)
0001d8  9b907401  ori r1, r9, 23
0001dc  674c6fe8  storeli.w r6, -2876(r30)
0001e0  1b934400  ori r6, r9, 4
0001e4  670f1fe6  storeli.w r1, -3088(r30)
0001e8  9b908401  ori r1, r9, 24
0001ec  670c6fe8  storeli.w r6, -2880(r30)
0001f0  1b935400  ori r6, r9, 5
0001f4  e74e1fe6  storeli.w r1, -3092(r30)
0001f8  9b909401  ori r1, r9, 25
0001fc  e74b6fe8  storeli.w r6, -2884(r30)
000200  1b936400  ori r6, r9, 6
000204  e70e1fe6  storeli.w r1, -3096(r30)
000208  9b90a401  ori r1, r9, 26
00020c  e70b6fe8  storeli.w r6, -2888(r30)
000210  1b937400  ori r6, r9, 7
000214  674e1fe6  storeli.w r1, -3100(r30)
000218  9b90b401  ori r1, r9, 27
00021c  674b6fe8  storeli.w r6, -2892(r30)
000220  1b938400  ori r6, r9, 8
000224  670e1fe6  storeli.w r1, -3104(r30)
000228  9b90c401  ori r1, r9, 28
00022c  670b6fe8  storeli.w r6, -2896(r30)
000230  1b939400  ori r6, r9, 9
000234  e74d1fe6  storeli.w r1, -3108(r30)
000238  9b90d401  ori r1, r9, 29
00023c  e74a6fe8  storeli.w r6, -2900(r30)
000240  1b93a400  ori r6, r9, 10
000244  e70d1fe6  storeli.w r1, -3112(r30)
000248  9b90e401  ori r1, r9, 30
00024c  e70a6fe8  storeli.w r6, -2904(r30)
000250  1b93b400  ori r6, r9, 11
000254  674d1fe6  storeli.w r1, -3116(r30)
000258  9b90f401  ori r1, r9, 31
00025c  674a6fe8  storeli.w r6, -2908(r30)
000260  1b93c400  ori r6, r9, 12
000264  670d1fe6  storeli.w r1, -3120(r30)
000268  9b900402  ori r1, r9, 32
00026c  670a6fe8  storeli.w r6, -2912(r30)
000270  1b93d400  ori r6, r9, 13
000274  e74c1fe6  storeli.w r1, -3124(r30)
000278  9b901402  ori r1, r9, 33
00027c  e7496fe8  storeli.w r6, -2916(r30)
000280  1b93e400  ori r6, r9, 14
000284  e70c1fe6  storeli.w r1, -3128(r30)
000288  9b902402  ori r1, r9, 34
00028c  e7096fe8  storeli.w r6, -2920(r30)
000290  1b93f400  ori r6, r9, 15
000294  674c1fe6  storeli.w r1, -3132(r30)
000298  9b903402  ori r1, r9, 35
00029c  67496fe8  storeli.w r6, -2924(r30)
0002a0  33930428  sext_int2long r[7:8], r9
0002a4  670c1fe6  storeli.w r1, -3136(r30)
0002a8  9b904402  ori r1, r9, 36
0002ac  1733a302  sll.d r[7:8], r[7:8], r10
0002b0  1b951401  ori r10, r9, 17
0002b4  e74b1fe6  storeli.w r1, -3140(r30)
0002b8  9b905402  ori r1, r9, 37
0002bc  0b226210  add.ul r[5:6], r[5:6], r[7:8]
0002c0  1f030fe9  addli r6, r30, -2944
0002c4  e748afe8  storeli.w r10, -2932(r30)
0002c8  e70b1fe6  storeli.w r1, -3144(r30)
0002cc  9b906402  ori r1, r9, 38
0002d0  73304300  store.d r[5:6], 0(r6)
0002d4  2bf2ffff  lui r4, 1048575
0002d8  9b922401  ori r5, r9, 18
0002dc  1f030002  addli r6, zero, 256
0002e0  674b1fe6  storeli.w r1, -3148(r30)
0002e4  9b907402  ori r1, r9, 39
0002e8  1b1202fe  ori r4, r4, 4064
0002ec  e7475fe8  storeli.w r5, -2948(r30)
0002f0  9b923401  ori r5, r9, 19
0002f4  670b1fe6  storeli.w r1, -3152(r30)
0002f8  9b908402  ori r1, r9, 40
0002fc  97814100  and r3, r3, r4
000300  e7075fe8  storeli.w r5, -2952(r30)
000304  e74a1fe6  storeli.w r1, -3156(r30)
000308  9b909402  ori r1, r9, 41
00030c  8b912110  add.s r3, r3, r2
000310  2bf1ff7f  lui r2, 524287
000314  e70a1fe6  storeli.w r1, -3160(r30)
000318  9b90a402  ori r1, r9, 42
00031c  9b19f1ff  ori r19, r2, 4095
000320  67473fe8  storeli.w r3, -2956(r30)
000324  674a1fe6  storeli.w r1, -3164(r30)
000328  9b90b402  ori r1, r9, 43
00032c  670a1fe6  storeli.w r1, -3168(r30)
000330  9b90c402  ori r1, r9, 44
000334  e7491fe6  storeli.w r1, -3172(r30)
000338  9b90d402  ori r1, r9, 45
00033c  e7091fe6  storeli.w r1, -3176(r30)
000340  9b90e402  ori r1, r9, 46
000344  67491fe6  storeli.w r1, -3180(r30)
000348  9b90f402  ori r1, r9, 47
00034c  67091fe6  storeli.w r1, -3184(r30)
000350  9b900403  ori r1, r9, 48
000354  e7481fe6  storeli.w r1, -3188(r30)
000358  9b901403  ori r1, r9, 49
00035c  e7081fe6  storeli.w r1, -3192(r30)
000360  9b902403  ori r1, r9, 50
000364  67481fe6  storeli.w r1, -3196(r30)
000368  9b903403  ori r1, r9, 51
00036c  67081fe6  storeli.w r1, -3200(r30)
000370  9b904403  ori r1, r9, 52
000374  e7471fe6  storeli.w r1, -3204(r30)
000378  9b905403  ori r1, r9, 53
00037c  e7071fe6  storeli.w r1, -3208(r30)
000380  9b906403  ori r1, r9, 54
000384  67471fe6  storeli.w r1, -3212(r30)
000388  9b907403  ori r1, r9, 55
00038c  67071fe6  storeli.w r1, -3216(r30)
000390  9b908403  ori r1, r9, 56
000394  e7461fe6  storeli.w r1, -3220(r30)
000398  9b909403  ori r1, r9, 57
00039c  e7061fe6  storeli.w r1, -3224(r30)
0003a0  9b90a403  ori r1, r9, 58
0003a4  67461fe6  storeli.w r1, -3228(r30)
0003a8  9b90b403  ori r1, r9, 59
0003ac  67061fe6  storeli.w r1, -3232(r30)
0003b0  9b90c403  ori r1, r9, 60
0003b4  e7451fe6  storeli.w r1, -3236(r30)
0003b8  9b90d403  ori r1, r9, 61
0003bc  e7051fe6  storeli.w r1, -3240(r30)
0003c0  9b90e403  ori r1, r9, 62
0003c4  67451fe6  storeli.w r1, -3244(r30)
0003c8  9b90f403  ori r1, r9, 63
0003cc  67051fe6  storeli.w r1, -3248(r30)
0003d0  9b900404  ori r1, r9, 64
0003d4  e7441fe6  storeli.w r1, -3252(r30)
0003d8  9b901404  ori r1, r9, 65
0003dc  e7041fe6  storeli.w r1, -3256(r30)
0003e0  9b902404  ori r1, r9, 66
0003e4  67441fe6  storeli.w r1, -3260(r30)
0003e8  9b903404  ori r1, r9, 67
0003ec  67041fe6  storeli.w r1, -3264(r30)
0003f0  9b904404  ori r1, r9, 68
0003f4  e7431fe6  storeli.w r1, -3268(r30)
0003f8  9b905404  ori r1, r9, 69
0003fc  e7031fe6  storeli.w r1, -3272(r30)
000400  9b906404  ori r1, r9, 70
000404  67431fe6  storeli.w r1, -3276(r30)
000408  9b907404  ori r1, r9, 71
00040c  67031fe6  storeli.w r1, -3280(r30)
000410  9b908404  ori r1, r9, 72
000414  e7421fe6  storeli.w r1, -3284(r30)
000418  9b909404  ori r1, r9, 73
00041c  e7021fe6  storeli.w r1, -3288(r30)
000420  9b90a404  ori r1, r9, 74
000424  67421fe6  storeli.w r1, -3292(r30)
000428  9b90b404  ori r1, r9, 75
00042c  67021fe6  storeli.w r1, -3296(r30)
000430  9b90c404  ori r1, r9, 76
000434  e7411fe6  storeli.w r1, -3300(r30)
000438  9b90d404  ori r1, r9, 77
00043c  e7011fe6  storeli.w r1, -3304(r30)
000440  9b90e404  ori r1, r9, 78
000444  67411fe6  storeli.w r1, -3308(r30)
000448  9b90f404  ori r1, r9, 79
00044c  67011fe6  storeli.w r1, -3312(r30)
000450  9b900405  ori r1, r9, 80
000454  e7401fe6  storeli.w r1, -3316(r30)
000458  9b901405  ori r1, r9, 81
00045c  e7001fe6  storeli.w r1, -3320(r30)
000460  9b902405  ori r1, r9, 82
000464  67401fe6  storeli.w r1, -3324(r30)
000468  9b903405  ori r1, r9, 83
00046c  67001fe6  storeli.w r1, -3328(r30)
000470  9b904405  ori r1, r9, 84
000474  e74f1fe4  storeli.w r1, -3332(r30)
000478  9b905405  ori r1, r9, 85
00047c  e70f1fe4  storeli.w r1, -3336(r30)
000480  9b906405  ori r1, r9, 86
000484  674f1fe4  storeli.w r1, -3340(r30)
000488  9b907405  ori r1, r9, 87
00048c  670f1fe4  storeli.w r1, -3344(r30)
000490  9b908405  ori r1, r9, 88
000494  e74e1fe4  storeli.w r1, -3348(r30)
000498  9b909405  ori r1, r9, 89
00049c  e70e1fe4  storeli.w r1, -3352(r30)
0004a0  9b90a405  ori r1, r9, 90
0004a4  674e1fe4  storeli.w r1, -3356(r30)
0004a8  9b90b405  ori r1, r9, 91
0004ac  670e1fe4  storeli.w r1, -3360(r30)
0004b0  9b90c405  ori r1, r9, 92
0004b4  e74d1fe4  storeli.w r1, -3364(r30)
0004b8  9b90d405  ori r1, r9, 93
0004bc  e70d1fe4  storeli.w r1, -3368(r30)
0004c0  9b90e405  ori r1, r9, 94
0004c4  674d1fe4  storeli.w r1, -3372(r30)
0004c8  9b90f405  ori r1, r9, 95
0004cc  670d1fe4  storeli.w r1, -3376(r30)
0004d0  9b900406  ori r1, r9, 96
0004d4  e74c1fe4  storeli.w r1, -3380(r30)
0004d8  9b901406  ori r1, r9, 97
0004dc  e70c1fe4  storeli.w r1, -3384(r30)
0004e0  9b902406  ori r1, r9, 98
0004e4  674c1fe4  storeli.w r1, -3388(r30)
0004e8  9b903406  ori r1, r9, 99
0004ec  670c1fe4  storeli.w r1, -3392(r30)
0004f0  9b904406  ori r1, r9, 100
0004f4  e74b1fe4  storeli.w r1, -3396(r30)
0004f8  9b905406  ori r1, r9, 101
0004fc  e70b1fe4  storeli.w r1, -3400(r30)
000500  9b906406  ori r1, r9, 102
000504  674b1fe4  storeli.w r1, -3404(r30)
000508  9b907406  ori r1, r9, 103
00050c  670b1fe4  storeli.w r1, -3408(r30)
000510  9b908406  ori r1, r9, 104
000514  e74a1fe4  storeli.w r1, -3412(r30)
000518  9b909406  ori r1, r9, 105
00051c  e70a1fe4  storeli.w r1, -3416(r30)
000520  9b90a406  ori r1, r9, 106
000524  674a1fe4  storeli.w r1, -3420(r30)
000528  9b90b406  ori r1, r9, 107
00052c  670a1fe4  storeli.w r1, -3424(r30)
000530  9b90c406  ori r1, r9, 108
000534  e7491fe4  storeli.w r1, -3428(r30)
000538  9b90d406  ori r1, r9, 109
00053c  e7091fe4  storeli.w r1, -3432(r30)
000540  9b90e406  ori r1, r9, 110
000544  67491fe4  storeli.w r1, -3436(r30)
000548  9b90f406  ori r1, r9, 111
00054c  67091fe4  storeli.w r1, -3440(r30)
000550  9b900407  ori r1, r9, 112
000554  e7481fe4  storeli.w r1, -3444(r30)
000558  9b901407  ori r1, r9, 113
00055c  e7081fe4  storeli.w r1, -3448(r30)
000560  9b902407  ori r1, r9, 114
000564  67481fe4  storeli.w r1, -3452(r30)
000568  9b903407  ori r1, r9, 115
00056c  67081fe4  storeli.w r1, -3456(r30)
000570  9b904407  ori r1, r9, 116
000574  e7471fe4  storeli.w r1, -3460(r30)
000578  9b905407  ori r1, r9, 117
00057c  e7071fe4  storeli.w r1, -3464(r30)
000580  9b906407  ori r1, r9, 118
000584  67471fe4  storeli.w r1, -3468(r30)
000588  9b907407  ori r1, r9, 119
00058c  67071fe4  storeli.w r1, -3472(r30)
000590  9b908407  ori r1, r9, 120
000594  e7461fe4  storeli.w r1, -3476(r30)
000598  9b909407  ori r1, r9, 121
00059c  e7061fe4  storeli.w r1, -3480(r30)
0005a0  9b90a407  ori r1, r9, 122
0005a4  67461fe4  storeli.w r1, -3484(r30)
0005a8  9b90b407  ori r1, r9, 123
0005ac  67061fe4  storeli.w r1, -3488(r30)
0005b0  9b90c407  ori r1, r9, 124
0005b4  e7451fe4  storeli.w r1, -3492(r30)
0005b8  9b90d407  ori r1, r9, 125
0005bc  e7051fe4  storeli.w r1, -3496(r30)
0005c0  9b90e407  ori r1, r9, 126
0005c4  67451fe4  storeli.w r1, -3500(r30)
0005c8  9b90f407  ori r1, r9, 127
0005cc  67051fe4  storeli.w r1, -3504(r30)
0005d0  9f802140  addli r1, r3, 8208
0005d4  e70e1fe8  storeli.w r1, -2840(r30)
0005d8  9f000fe8  addli r1, r30, -3072
0005dc  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
0005e0  db4a0200  j 4692
0005e4  e3402fea  loadli.w r1,  -2796(r30)
0005e8  9f0d0ff8  addli r27, r30, -1024
0005ec  ab0500f0  lui r11, 983040
0005f0  1f2e0000  addli r28, zero, 2
0005f4  2b0800f0  lui r16, 983040
0005f8  1f2d0d00  addli r26, r26, 2
0005fc  9715be00  or r11, r28, r11
000600  17180e01  or r16, r28, r16
000604  9fcd0d00  addli r27, r27, 4
000608  339a0028  sext_int2long r[21:22], r1
00060c  e3002fea  loadli.w r1,  -2800(r30)
000610  339b0028  sext_int2long r[23:24], r1
000614  e3401fea  loadli.w r1,  -2804(r30)
000618  b3980028  sext_int2long r[18:19], r1
00061c  e3001fea  loadli.w r1,  -2808(r30)
000620  33910028  sext_int2long r[3:4], r1
000624  e3400fea  loadli.w r1,  -2812(r30)
000628  33960028  sext_int2long r[13:14], r1
00062c  e3000fea  loadli.w r1,  -2816(r30)
000630  33970028  sext_int2long r[15:16], r1
000634  e340ffe9  loadli.w r1,  -2820(r30)
000638  b3930028  sext_int2long r[8:9], r1
00063c  e300ffe9  loadli.w r1,  -2824(r30)
000640  b3940028  sext_int2long r[10:11], r1
000644  e340efe9  loadli.w r1,  -2828(r30)
000648  33920028  sext_int2long r[5:6], r1
00064c  9f000fef  addli r1, r30, -2176
000650  73b04000  store.d r[5:6], 0(r1)
000654  e300efe9  loadli.w r1,  -2832(r30)
000658  b3920028  sext_int2long r[6:7], r1
00065c  e340dfe9  loadli.w r1,  -2836(r30)
000660  339c0028  sext_int2long r[25:26], r1
000664  9f00efef  addli r1, r30, -2064
000668  73b08001  store.d r[25:26], 0(r1)
00066c  9f100000  addli r1, zero, 1
000670  6b5c0f01  load.d r[25:26], 16(r30)
000674  173a1a02  sll.d r[21:22], r[21:22], r1
000678  173b1b02  sll.d r[23:24], r[23:24], r1
00067c  9f100000  addli r1, zero, 1
000680  0b2a4c11  add.ul r[21:22], r[25:26], r[21:22]
000684  0b2b6c11  add.ul r[23:24], r[25:26], r[23:24]
000688  7f38bb01  s_lm2gm r16, r27, 0(r[23:24])
00068c  ff35aa01  s_lm2gm r11, r26, 0(r[21:22])
000690  17b81802  sll.d r[17:18], r[18:19], r1
000694  173a1102  sll.d r[21:22], r[3:4], r1
000698  ab0500f0  lui r11, 983040
00069c  2b0900f0  lui r18, 983040
0006a0  1f0b0ff8  addli r22, r30, -1024
0006a4  9f0b0ff8  addli r23, r30, -1024
0006a8  1f1d0000  addli r26, zero, 1
0006ac  9f010fef  addli r3, r30, -2176
0006b0  9f1d0000  addli r27, zero, 1
0006b4  0b280c11  add.ul r[17:18], r[25:26], r[17:18]
0006b8  0b2a4c11  add.ul r[21:22], r[25:26], r[21:22]
0006bc  9715be00  or r11, r28, r11
0006c0  1f6b0b00  addli r22, r22, 6
0006c4  17192e01  or r18, r28, r18
0006c8  9f8b1b00  addli r23, r23, 8
0006cc  97b3a303  sll.d r[8:9], r[8:9], r26
0006d0  97b4a403  sll.d r[10:11], r[10:11], r26
0006d4  ebd00100  load.d r[2:3], 0(r3)
0006d8  97b2a203  sll.d r[6:7], r[6:7], r26
0006dc  ff356801  s_lm2gm r11, r22, 0(r[17:18])
0006e0  9735a603  sll.d r[12:13], r[13:14], r26
0006e4  9736a703  sll.d r[14:15], r[15:16], r26
0006e8  ab0700f0  lui r15, 983040
0006ec  2b0800f0  lui r16, 983040
0006f0  9f080ff8  addli r17, r30, -1024
0006f4  7f397a01  s_lm2gm r18, r23, 0(r[21:22])
0006f8  1f090ff8  addli r18, r30, -1024
0006fc  8b237c10  add.ul r[8:9], r[25:26], r[8:9]
000700  8b249c10  add.ul r[10:11], r[25:26], r[10:11]
000704  8b225c10  add.ul r[6:7], r[25:26], r[6:7]
000708  97b1a003  sll.d r[4:5], r[2:3], r26
00070c  8b25bc10  add.ul r[12:13], r[25:26], r[12:13]
000710  8b26dc10  add.ul r[14:15], r[25:26], r[14:15]
000714  9717fe00  or r15, r28, r15
000718  9fa81800  addli r17, r17, 10
00071c  17180e01  or r16, r28, r16
000720  1f491900  addli r18, r18, 12
000724  8b213c10  add.ul r[4:5], r[25:26], r[4:5]
000728  ffb71501  s_lm2gm r15, r17, 0(r[12:13])
00072c  7fb82601  s_lm2gm r16, r18, 0(r[14:15])
000730  ab0500f0  lui r11, 983040
000734  2b0600f0  lui r12, 983040
000738  9f060ff8  addli r13, r30, -1024
00073c  1f070ff8  addli r14, r30, -1024
000740  9715be00  or r11, r28, r11
000744  9fe61600  addli r13, r13, 14
000748  1716ce00  or r12, r28, r12
00074c  1f072700  addli r14, r14, 16
000750  ffb5d300  s_lm2gm r11, r13, 0(r[8:9])
000754  7fb6e400  s_lm2gm r12, r14, 0(r[10:11])
000758  ab0300f0  lui r7, 983040
00075c  9f040ff8  addli r9, r30, -1024
000760  2b0400f0  lui r8, 983040
000764  1f050ff8  addli r10, r30, -1024
000768  e3053fed  loadli.w r11,  -2408(r30)
00076c  e3064fed  loadli.w r13,  -2400(r30)
000770  97137e00  or r7, r28, r7
000774  9fa42400  addli r9, r9, 18
000778  17148e00  or r8, r28, r8
00077c  1f452500  addli r10, r10, 20
000780  b3950528  sext_int2long r[12:13], r11
000784  b3960628  sext_int2long r[14:15], r13
000788  ffb39100  s_lm2gm r7, r9, 0(r[4:5])
00078c  9f01efef  addli r3, r30, -2064
000790  7fb4a200  s_lm2gm r8, r10, 0(r[6:7])
000794  e3023fea  loadli.w r5,  -2792(r30)
000798  1f020ff8  addli r4, r30, -1024
00079c  e3031fed  loadli.w r7,  -2424(r30)
0007a0  e3042fed  loadli.w r9,  -2416(r30)
0007a4  ebd00100  load.d r[2:3], 0(r3)
0007a8  ab0100f0  lui r3, 983040
0007ac  1f622200  addli r4, r4, 22
0007b0  b3920228  sext_int2long r[6:7], r5
0007b4  b3930328  sext_int2long r[8:9], r7
0007b8  b3940428  sext_int2long r[10:11], r9
0007bc  97113e00  or r3, r28, r3
0007c0  97b0a003  sll.d r[2:3], r[2:3], r26
0007c4  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0007c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0007cc  97b0a203  sll.d r[2:3], r[6:7], r26
0007d0  e3423fea  loadli.w r5,  -2788(r30)
0007d4  ab0100f0  lui r3, 983040
0007d8  1f020ff8  addli r4, r30, -1024
0007dc  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0007e0  97113e00  or r3, r28, r3
0007e4  1f023200  addli r4, r4, 24
0007e8  b3920228  sext_int2long r[6:7], r5
0007ec  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0007f0  ab0100f0  lui r3, 983040
0007f4  1f020ff8  addli r4, r30, -1024
0007f8  97b0a203  sll.d r[2:3], r[6:7], r26
0007fc  e3024fea  loadli.w r5,  -2784(r30)
000800  97113e00  or r3, r28, r3
000804  1f223200  addli r4, r4, 26
000808  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
00080c  b3920228  sext_int2long r[6:7], r5
000810  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000814  ab0100f0  lui r3, 983040
000818  1f020ff8  addli r4, r30, -1024
00081c  97b0a203  sll.d r[2:3], r[6:7], r26
000820  e3424fea  loadli.w r5,  -2780(r30)
000824  97113e00  or r3, r28, r3
000828  1f423200  addli r4, r4, 28
00082c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000830  b3920228  sext_int2long r[6:7], r5
000834  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000838  ab0100f0  lui r3, 983040
00083c  1f020ff8  addli r4, r30, -1024
000840  97b0a203  sll.d r[2:3], r[6:7], r26
000844  e3025fea  loadli.w r5,  -2776(r30)
000848  97113e00  or r3, r28, r3
00084c  1f623200  addli r4, r4, 30
000850  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000854  b3920228  sext_int2long r[6:7], r5
000858  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00085c  ab0100f0  lui r3, 983040
000860  1f020ff8  addli r4, r30, -1024
000864  97b0a203  sll.d r[2:3], r[6:7], r26
000868  e3425fea  loadli.w r5,  -2772(r30)
00086c  97113e00  or r3, r28, r3
000870  1f024200  addli r4, r4, 32
000874  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000878  b3920228  sext_int2long r[6:7], r5
00087c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000880  ab0100f0  lui r3, 983040
000884  1f020ff8  addli r4, r30, -1024
000888  97b0a203  sll.d r[2:3], r[6:7], r26
00088c  e3026fea  loadli.w r5,  -2768(r30)
000890  97113e00  or r3, r28, r3
000894  1f224200  addli r4, r4, 34
000898  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
00089c  b3920228  sext_int2long r[6:7], r5
0008a0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0008a4  ab0100f0  lui r3, 983040
0008a8  1f020ff8  addli r4, r30, -1024
0008ac  97b0a203  sll.d r[2:3], r[6:7], r26
0008b0  e3426fea  loadli.w r5,  -2764(r30)
0008b4  97113e00  or r3, r28, r3
0008b8  1f424200  addli r4, r4, 36
0008bc  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0008c0  b3920228  sext_int2long r[6:7], r5
0008c4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0008c8  ab0100f0  lui r3, 983040
0008cc  1f020ff8  addli r4, r30, -1024
0008d0  97b0a203  sll.d r[2:3], r[6:7], r26
0008d4  e3027fea  loadli.w r5,  -2760(r30)
0008d8  97113e00  or r3, r28, r3
0008dc  1f624200  addli r4, r4, 38
0008e0  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0008e4  b3920228  sext_int2long r[6:7], r5
0008e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0008ec  ab0100f0  lui r3, 983040
0008f0  1f020ff8  addli r4, r30, -1024
0008f4  97b0a203  sll.d r[2:3], r[6:7], r26
0008f8  e3427fea  loadli.w r5,  -2756(r30)
0008fc  97113e00  or r3, r28, r3
000900  1f025200  addli r4, r4, 40
000904  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000908  b3920228  sext_int2long r[6:7], r5
00090c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000910  ab0100f0  lui r3, 983040
000914  1f020ff8  addli r4, r30, -1024
000918  97b0a203  sll.d r[2:3], r[6:7], r26
00091c  e3028fea  loadli.w r5,  -2752(r30)
000920  97113e00  or r3, r28, r3
000924  1f225200  addli r4, r4, 42
000928  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
00092c  b3920228  sext_int2long r[6:7], r5
000930  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000934  ab0100f0  lui r3, 983040
000938  1f020ff8  addli r4, r30, -1024
00093c  97b0a203  sll.d r[2:3], r[6:7], r26
000940  e3428fea  loadli.w r5,  -2748(r30)
000944  97113e00  or r3, r28, r3
000948  1f425200  addli r4, r4, 44
00094c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000950  b3920228  sext_int2long r[6:7], r5
000954  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000958  ab0100f0  lui r3, 983040
00095c  1f020ff8  addli r4, r30, -1024
000960  97b0a203  sll.d r[2:3], r[6:7], r26
000964  e3029fea  loadli.w r5,  -2744(r30)
000968  97113e00  or r3, r28, r3
00096c  1f625200  addli r4, r4, 46
000970  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000974  b3920228  sext_int2long r[6:7], r5
000978  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00097c  ab0100f0  lui r3, 983040
000980  1f020ff8  addli r4, r30, -1024
000984  97b0a203  sll.d r[2:3], r[6:7], r26
000988  e3429fea  loadli.w r5,  -2740(r30)
00098c  97113e00  or r3, r28, r3
000990  1f026200  addli r4, r4, 48
000994  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000998  b3920228  sext_int2long r[6:7], r5
00099c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0009a0  ab0100f0  lui r3, 983040
0009a4  1f020ff8  addli r4, r30, -1024
0009a8  97b0a203  sll.d r[2:3], r[6:7], r26
0009ac  e302afea  loadli.w r5,  -2736(r30)
0009b0  97113e00  or r3, r28, r3
0009b4  1f226200  addli r4, r4, 50
0009b8  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0009bc  b3920228  sext_int2long r[6:7], r5
0009c0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0009c4  ab0100f0  lui r3, 983040
0009c8  1f020ff8  addli r4, r30, -1024
0009cc  97b0a203  sll.d r[2:3], r[6:7], r26
0009d0  e342afea  loadli.w r5,  -2732(r30)
0009d4  97113e00  or r3, r28, r3
0009d8  1f426200  addli r4, r4, 52
0009dc  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0009e0  b3920228  sext_int2long r[6:7], r5
0009e4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0009e8  ab0100f0  lui r3, 983040
0009ec  1f020ff8  addli r4, r30, -1024
0009f0  97b0a203  sll.d r[2:3], r[6:7], r26
0009f4  e302bfea  loadli.w r5,  -2728(r30)
0009f8  97113e00  or r3, r28, r3
0009fc  1f626200  addli r4, r4, 54
000a00  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000a04  b3920228  sext_int2long r[6:7], r5
000a08  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a0c  ab0100f0  lui r3, 983040
000a10  1f020ff8  addli r4, r30, -1024
000a14  97b0a203  sll.d r[2:3], r[6:7], r26
000a18  e342bfea  loadli.w r5,  -2724(r30)
000a1c  97113e00  or r3, r28, r3
000a20  1f027200  addli r4, r4, 56
000a24  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000a28  b3920228  sext_int2long r[6:7], r5
000a2c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a30  ab0100f0  lui r3, 983040
000a34  1f020ff8  addli r4, r30, -1024
000a38  97b0a203  sll.d r[2:3], r[6:7], r26
000a3c  e302cfea  loadli.w r5,  -2720(r30)
000a40  97113e00  or r3, r28, r3
000a44  1f227200  addli r4, r4, 58
000a48  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000a4c  b3920228  sext_int2long r[6:7], r5
000a50  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a54  ab0100f0  lui r3, 983040
000a58  1f020ff8  addli r4, r30, -1024
000a5c  97b0a203  sll.d r[2:3], r[6:7], r26
000a60  e342cfea  loadli.w r5,  -2716(r30)
000a64  97113e00  or r3, r28, r3
000a68  1f427200  addli r4, r4, 60
000a6c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000a70  b3920228  sext_int2long r[6:7], r5
000a74  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a78  ab0100f0  lui r3, 983040
000a7c  1f020ff8  addli r4, r30, -1024
000a80  97b0a203  sll.d r[2:3], r[6:7], r26
000a84  e302dfea  loadli.w r5,  -2712(r30)
000a88  97113e00  or r3, r28, r3
000a8c  1f627200  addli r4, r4, 62
000a90  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000a94  b3920228  sext_int2long r[6:7], r5
000a98  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a9c  6342dfea  loadli.w r4,  -2708(r30)
000aa0  ab0100f0  lui r3, 983040
000aa4  97b0a203  sll.d r[2:3], r[6:7], r26
000aa8  63439fed  loadli.w r6,  -2356(r30)
000aac  97113e00  or r3, r28, r3
000ab0  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000ab4  33120228  sext_int2long r[5:6], r4
000ab8  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
000abc  9730a203  sll.d r[2:3], r[5:6], r26
000ac0  e302efea  loadli.w r5,  -2704(r30)
000ac4  ab0100f0  lui r3, 983040
000ac8  1f020ff8  addli r4, r30, -1024
000acc  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000ad0  97113e00  or r3, r28, r3
000ad4  1f228200  addli r4, r4, 66
000ad8  b3920228  sext_int2long r[6:7], r5
000adc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ae0  ab0100f0  lui r3, 983040
000ae4  1f020ff8  addli r4, r30, -1024
000ae8  97b0a203  sll.d r[2:3], r[6:7], r26
000aec  e342efea  loadli.w r5,  -2700(r30)
000af0  97113e00  or r3, r28, r3
000af4  1f428200  addli r4, r4, 68
000af8  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000afc  b3920228  sext_int2long r[6:7], r5
000b00  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b04  ab0100f0  lui r3, 983040
000b08  1f020ff8  addli r4, r30, -1024
000b0c  97b0a203  sll.d r[2:3], r[6:7], r26
000b10  e302ffea  loadli.w r5,  -2696(r30)
000b14  97113e00  or r3, r28, r3
000b18  1f628200  addli r4, r4, 70
000b1c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000b20  b3920228  sext_int2long r[6:7], r5
000b24  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b28  ab0100f0  lui r3, 983040
000b2c  1f020ff8  addli r4, r30, -1024
000b30  97b0a203  sll.d r[2:3], r[6:7], r26
000b34  e342ffea  loadli.w r5,  -2692(r30)
000b38  97113e00  or r3, r28, r3
000b3c  1f029200  addli r4, r4, 72
000b40  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000b44  b3920228  sext_int2long r[6:7], r5
000b48  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b4c  ab0100f0  lui r3, 983040
000b50  1f020ff8  addli r4, r30, -1024
000b54  97b0a203  sll.d r[2:3], r[6:7], r26
000b58  e3020feb  loadli.w r5,  -2688(r30)
000b5c  97113e00  or r3, r28, r3
000b60  1f229200  addli r4, r4, 74
000b64  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000b68  b3920228  sext_int2long r[6:7], r5
000b6c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b70  ab0100f0  lui r3, 983040
000b74  1f020ff8  addli r4, r30, -1024
000b78  97b0a203  sll.d r[2:3], r[6:7], r26
000b7c  e3420feb  loadli.w r5,  -2684(r30)
000b80  97113e00  or r3, r28, r3
000b84  1f429200  addli r4, r4, 76
000b88  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000b8c  b3920228  sext_int2long r[6:7], r5
000b90  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b94  ab0100f0  lui r3, 983040
000b98  1f020ff8  addli r4, r30, -1024
000b9c  97b0a203  sll.d r[2:3], r[6:7], r26
000ba0  e3021feb  loadli.w r5,  -2680(r30)
000ba4  97113e00  or r3, r28, r3
000ba8  1f629200  addli r4, r4, 78
000bac  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000bb0  b3920228  sext_int2long r[6:7], r5
000bb4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000bb8  ab0100f0  lui r3, 983040
000bbc  1f020ff8  addli r4, r30, -1024
000bc0  97b0a203  sll.d r[2:3], r[6:7], r26
000bc4  e3421feb  loadli.w r5,  -2676(r30)
000bc8  97113e00  or r3, r28, r3
000bcc  1f02a200  addli r4, r4, 80
000bd0  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000bd4  b3920228  sext_int2long r[6:7], r5
000bd8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000bdc  ab0100f0  lui r3, 983040
000be0  1f020ff8  addli r4, r30, -1024
000be4  97b0a203  sll.d r[2:3], r[6:7], r26
000be8  e3022feb  loadli.w r5,  -2672(r30)
000bec  97113e00  or r3, r28, r3
000bf0  1f22a200  addli r4, r4, 82
000bf4  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000bf8  b3920228  sext_int2long r[6:7], r5
000bfc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c00  ab0100f0  lui r3, 983040
000c04  1f020ff8  addli r4, r30, -1024
000c08  97b0a203  sll.d r[2:3], r[6:7], r26
000c0c  e3422feb  loadli.w r5,  -2668(r30)
000c10  97113e00  or r3, r28, r3
000c14  1f42a200  addli r4, r4, 84
000c18  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000c1c  b3920228  sext_int2long r[6:7], r5
000c20  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c24  ab0100f0  lui r3, 983040
000c28  1f020ff8  addli r4, r30, -1024
000c2c  97b0a203  sll.d r[2:3], r[6:7], r26
000c30  e3023feb  loadli.w r5,  -2664(r30)
000c34  97113e00  or r3, r28, r3
000c38  1f62a200  addli r4, r4, 86
000c3c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000c40  b3920228  sext_int2long r[6:7], r5
000c44  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c48  ab0100f0  lui r3, 983040
000c4c  1f020ff8  addli r4, r30, -1024
000c50  97b0a203  sll.d r[2:3], r[6:7], r26
000c54  e3423feb  loadli.w r5,  -2660(r30)
000c58  97113e00  or r3, r28, r3
000c5c  1f02b200  addli r4, r4, 88
000c60  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000c64  b3920228  sext_int2long r[6:7], r5
000c68  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c6c  ab0100f0  lui r3, 983040
000c70  1f020ff8  addli r4, r30, -1024
000c74  97b0a203  sll.d r[2:3], r[6:7], r26
000c78  e3024feb  loadli.w r5,  -2656(r30)
000c7c  97113e00  or r3, r28, r3
000c80  1f22b200  addli r4, r4, 90
000c84  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000c88  b3920228  sext_int2long r[6:7], r5
000c8c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c90  ab0100f0  lui r3, 983040
000c94  1f020ff8  addli r4, r30, -1024
000c98  97b0a203  sll.d r[2:3], r[6:7], r26
000c9c  e3424feb  loadli.w r5,  -2652(r30)
000ca0  97113e00  or r3, r28, r3
000ca4  1f42b200  addli r4, r4, 92
000ca8  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000cac  b3920228  sext_int2long r[6:7], r5
000cb0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000cb4  ab0100f0  lui r3, 983040
000cb8  1f020ff8  addli r4, r30, -1024
000cbc  97b0a203  sll.d r[2:3], r[6:7], r26
000cc0  e3025feb  loadli.w r5,  -2648(r30)
000cc4  97113e00  or r3, r28, r3
000cc8  1f62b200  addli r4, r4, 94
000ccc  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000cd0  b3920228  sext_int2long r[6:7], r5
000cd4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000cd8  ab0100f0  lui r3, 983040
000cdc  1f020ff8  addli r4, r30, -1024
000ce0  97b0a203  sll.d r[2:3], r[6:7], r26
000ce4  e3425feb  loadli.w r5,  -2644(r30)
000ce8  97113e00  or r3, r28, r3
000cec  1f02c200  addli r4, r4, 96
000cf0  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000cf4  b3920228  sext_int2long r[6:7], r5
000cf8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000cfc  ab0100f0  lui r3, 983040
000d00  1f020ff8  addli r4, r30, -1024
000d04  97b0a203  sll.d r[2:3], r[6:7], r26
000d08  e3026feb  loadli.w r5,  -2640(r30)
000d0c  97113e00  or r3, r28, r3
000d10  1f22c200  addli r4, r4, 98
000d14  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000d18  b3920228  sext_int2long r[6:7], r5
000d1c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d20  ab0100f0  lui r3, 983040
000d24  1f020ff8  addli r4, r30, -1024
000d28  97b0a203  sll.d r[2:3], r[6:7], r26
000d2c  e3426feb  loadli.w r5,  -2636(r30)
000d30  97113e00  or r3, r28, r3
000d34  1f42c200  addli r4, r4, 100
000d38  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000d3c  b3920228  sext_int2long r[6:7], r5
000d40  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d44  ab0100f0  lui r3, 983040
000d48  1f020ff8  addli r4, r30, -1024
000d4c  97b0a203  sll.d r[2:3], r[6:7], r26
000d50  e3027feb  loadli.w r5,  -2632(r30)
000d54  97113e00  or r3, r28, r3
000d58  1f62c200  addli r4, r4, 102
000d5c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000d60  b3920228  sext_int2long r[6:7], r5
000d64  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d68  ab0100f0  lui r3, 983040
000d6c  1f020ff8  addli r4, r30, -1024
000d70  97b0a203  sll.d r[2:3], r[6:7], r26
000d74  e3427feb  loadli.w r5,  -2628(r30)
000d78  97113e00  or r3, r28, r3
000d7c  1f02d200  addli r4, r4, 104
000d80  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000d84  b3920228  sext_int2long r[6:7], r5
000d88  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d8c  ab0100f0  lui r3, 983040
000d90  1f020ff8  addli r4, r30, -1024
000d94  97b0a203  sll.d r[2:3], r[6:7], r26
000d98  e3028feb  loadli.w r5,  -2624(r30)
000d9c  97113e00  or r3, r28, r3
000da0  1f22d200  addli r4, r4, 106
000da4  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000da8  b3920228  sext_int2long r[6:7], r5
000dac  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000db0  ab0100f0  lui r3, 983040
000db4  1f020ff8  addli r4, r30, -1024
000db8  97b0a203  sll.d r[2:3], r[6:7], r26
000dbc  e3428feb  loadli.w r5,  -2620(r30)
000dc0  97113e00  or r3, r28, r3
000dc4  1f42d200  addli r4, r4, 108
000dc8  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000dcc  b3920228  sext_int2long r[6:7], r5
000dd0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000dd4  ab0100f0  lui r3, 983040
000dd8  1f020ff8  addli r4, r30, -1024
000ddc  97b0a203  sll.d r[2:3], r[6:7], r26
000de0  e3029feb  loadli.w r5,  -2616(r30)
000de4  97113e00  or r3, r28, r3
000de8  1f62d200  addli r4, r4, 110
000dec  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000df0  b3920228  sext_int2long r[6:7], r5
000df4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000df8  ab0100f0  lui r3, 983040
000dfc  1f020ff8  addli r4, r30, -1024
000e00  97b0a203  sll.d r[2:3], r[6:7], r26
000e04  e3429feb  loadli.w r5,  -2612(r30)
000e08  97113e00  or r3, r28, r3
000e0c  1f02e200  addli r4, r4, 112
000e10  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000e14  b3920228  sext_int2long r[6:7], r5
000e18  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e1c  ab0100f0  lui r3, 983040
000e20  1f020ff8  addli r4, r30, -1024
000e24  97b0a203  sll.d r[2:3], r[6:7], r26
000e28  e302afeb  loadli.w r5,  -2608(r30)
000e2c  97113e00  or r3, r28, r3
000e30  1f22e200  addli r4, r4, 114
000e34  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000e38  b3920228  sext_int2long r[6:7], r5
000e3c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e40  ab0100f0  lui r3, 983040
000e44  1f020ff8  addli r4, r30, -1024
000e48  97b0a203  sll.d r[2:3], r[6:7], r26
000e4c  e342afeb  loadli.w r5,  -2604(r30)
000e50  97113e00  or r3, r28, r3
000e54  1f42e200  addli r4, r4, 116
000e58  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000e5c  b3920228  sext_int2long r[6:7], r5
000e60  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e64  ab0100f0  lui r3, 983040
000e68  1f020ff8  addli r4, r30, -1024
000e6c  97b0a203  sll.d r[2:3], r[6:7], r26
000e70  e302bfeb  loadli.w r5,  -2600(r30)
000e74  97113e00  or r3, r28, r3
000e78  1f62e200  addli r4, r4, 118
000e7c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000e80  b3920228  sext_int2long r[6:7], r5
000e84  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e88  ab0100f0  lui r3, 983040
000e8c  1f020ff8  addli r4, r30, -1024
000e90  97b0a203  sll.d r[2:3], r[6:7], r26
000e94  e342bfeb  loadli.w r5,  -2596(r30)
000e98  97113e00  or r3, r28, r3
000e9c  1f02f200  addli r4, r4, 120
000ea0  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000ea4  b3920228  sext_int2long r[6:7], r5
000ea8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000eac  ab0100f0  lui r3, 983040
000eb0  1f020ff8  addli r4, r30, -1024
000eb4  97b0a203  sll.d r[2:3], r[6:7], r26
000eb8  e302cfeb  loadli.w r5,  -2592(r30)
000ebc  97113e00  or r3, r28, r3
000ec0  1f22f200  addli r4, r4, 122
000ec4  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000ec8  b3920228  sext_int2long r[6:7], r5
000ecc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ed0  ab0100f0  lui r3, 983040
000ed4  1f020ff8  addli r4, r30, -1024
000ed8  97b0a203  sll.d r[2:3], r[6:7], r26
000edc  e342cfeb  loadli.w r5,  -2588(r30)
000ee0  97113e00  or r3, r28, r3
000ee4  1f42f200  addli r4, r4, 124
000ee8  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000eec  b3920228  sext_int2long r[6:7], r5
000ef0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ef4  ab0100f0  lui r3, 983040
000ef8  1f020ff8  addli r4, r30, -1024
000efc  97b0a203  sll.d r[2:3], r[6:7], r26
000f00  e302dfeb  loadli.w r5,  -2584(r30)
000f04  97113e00  or r3, r28, r3
000f08  1f62f200  addli r4, r4, 126
000f0c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000f10  b3920228  sext_int2long r[6:7], r5
000f14  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f18  6342dfeb  loadli.w r4,  -2580(r30)
000f1c  ab0100f0  lui r3, 983040
000f20  97b0a203  sll.d r[2:3], r[6:7], r26
000f24  6303afed  loadli.w r6,  -2352(r30)
000f28  97113e00  or r3, r28, r3
000f2c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000f30  33120228  sext_int2long r[5:6], r4
000f34  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
000f38  9730a203  sll.d r[2:3], r[5:6], r26
000f3c  e302efeb  loadli.w r5,  -2576(r30)
000f40  ab0100f0  lui r3, 983040
000f44  1f020ff8  addli r4, r30, -1024
000f48  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000f4c  97113e00  or r3, r28, r3
000f50  1f220201  addli r4, r4, 130
000f54  b3920228  sext_int2long r[6:7], r5
000f58  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f5c  ab0100f0  lui r3, 983040
000f60  1f020ff8  addli r4, r30, -1024
000f64  97b0a203  sll.d r[2:3], r[6:7], r26
000f68  e342efeb  loadli.w r5,  -2572(r30)
000f6c  97113e00  or r3, r28, r3
000f70  1f420201  addli r4, r4, 132
000f74  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000f78  b3920228  sext_int2long r[6:7], r5
000f7c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f80  ab0100f0  lui r3, 983040
000f84  1f020ff8  addli r4, r30, -1024
000f88  97b0a203  sll.d r[2:3], r[6:7], r26
000f8c  e302ffeb  loadli.w r5,  -2568(r30)
000f90  97113e00  or r3, r28, r3
000f94  1f620201  addli r4, r4, 134
000f98  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000f9c  b3920228  sext_int2long r[6:7], r5
000fa0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000fa4  ab0100f0  lui r3, 983040
000fa8  1f020ff8  addli r4, r30, -1024
000fac  97b0a203  sll.d r[2:3], r[6:7], r26
000fb0  e342ffeb  loadli.w r5,  -2564(r30)
000fb4  97113e00  or r3, r28, r3
000fb8  1f021201  addli r4, r4, 136
000fbc  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000fc0  b3920228  sext_int2long r[6:7], r5
000fc4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000fc8  ab0100f0  lui r3, 983040
000fcc  1f020ff8  addli r4, r30, -1024
000fd0  97b0a203  sll.d r[2:3], r[6:7], r26
000fd4  e3020fec  loadli.w r5,  -2560(r30)
000fd8  97113e00  or r3, r28, r3
000fdc  1f221201  addli r4, r4, 138
000fe0  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000fe4  b3920228  sext_int2long r[6:7], r5
000fe8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000fec  ab0100f0  lui r3, 983040
000ff0  1f020ff8  addli r4, r30, -1024
000ff4  97b0a203  sll.d r[2:3], r[6:7], r26
000ff8  e3420fec  loadli.w r5,  -2556(r30)
000ffc  97113e00  or r3, r28, r3
001000  1f421201  addli r4, r4, 140
001004  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001008  b3920228  sext_int2long r[6:7], r5
00100c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001010  ab0100f0  lui r3, 983040
001014  1f020ff8  addli r4, r30, -1024
001018  97b0a203  sll.d r[2:3], r[6:7], r26
00101c  e3021fec  loadli.w r5,  -2552(r30)
001020  97113e00  or r3, r28, r3
001024  1f621201  addli r4, r4, 142
001028  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
00102c  b3920228  sext_int2long r[6:7], r5
001030  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001034  ab0100f0  lui r3, 983040
001038  1f020ff8  addli r4, r30, -1024
00103c  97b0a203  sll.d r[2:3], r[6:7], r26
001040  e3421fec  loadli.w r5,  -2548(r30)
001044  97113e00  or r3, r28, r3
001048  1f022201  addli r4, r4, 144
00104c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001050  b3920228  sext_int2long r[6:7], r5
001054  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001058  ab0100f0  lui r3, 983040
00105c  1f020ff8  addli r4, r30, -1024
001060  97b0a203  sll.d r[2:3], r[6:7], r26
001064  e3022fec  loadli.w r5,  -2544(r30)
001068  97113e00  or r3, r28, r3
00106c  1f222201  addli r4, r4, 146
001070  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001074  b3920228  sext_int2long r[6:7], r5
001078  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00107c  ab0100f0  lui r3, 983040
001080  1f020ff8  addli r4, r30, -1024
001084  97b0a203  sll.d r[2:3], r[6:7], r26
001088  e3422fec  loadli.w r5,  -2540(r30)
00108c  97113e00  or r3, r28, r3
001090  1f422201  addli r4, r4, 148
001094  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001098  b3920228  sext_int2long r[6:7], r5
00109c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010a0  ab0100f0  lui r3, 983040
0010a4  1f020ff8  addli r4, r30, -1024
0010a8  97b0a203  sll.d r[2:3], r[6:7], r26
0010ac  e3023fec  loadli.w r5,  -2536(r30)
0010b0  97113e00  or r3, r28, r3
0010b4  1f622201  addli r4, r4, 150
0010b8  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0010bc  b3920228  sext_int2long r[6:7], r5
0010c0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010c4  ab0100f0  lui r3, 983040
0010c8  1f020ff8  addli r4, r30, -1024
0010cc  97b0a203  sll.d r[2:3], r[6:7], r26
0010d0  e3423fec  loadli.w r5,  -2532(r30)
0010d4  97113e00  or r3, r28, r3
0010d8  1f023201  addli r4, r4, 152
0010dc  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0010e0  b3920228  sext_int2long r[6:7], r5
0010e4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010e8  ab0100f0  lui r3, 983040
0010ec  1f020ff8  addli r4, r30, -1024
0010f0  97b0a203  sll.d r[2:3], r[6:7], r26
0010f4  e3024fec  loadli.w r5,  -2528(r30)
0010f8  97113e00  or r3, r28, r3
0010fc  1f223201  addli r4, r4, 154
001100  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001104  b3920228  sext_int2long r[6:7], r5
001108  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00110c  ab0100f0  lui r3, 983040
001110  1f020ff8  addli r4, r30, -1024
001114  97b0a203  sll.d r[2:3], r[6:7], r26
001118  e3424fec  loadli.w r5,  -2524(r30)
00111c  97113e00  or r3, r28, r3
001120  1f423201  addli r4, r4, 156
001124  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001128  b3920228  sext_int2long r[6:7], r5
00112c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001130  ab0100f0  lui r3, 983040
001134  1f020ff8  addli r4, r30, -1024
001138  97b0a203  sll.d r[2:3], r[6:7], r26
00113c  e3025fec  loadli.w r5,  -2520(r30)
001140  97113e00  or r3, r28, r3
001144  1f623201  addli r4, r4, 158
001148  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
00114c  b3920228  sext_int2long r[6:7], r5
001150  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001154  ab0100f0  lui r3, 983040
001158  1f020ff8  addli r4, r30, -1024
00115c  97b0a203  sll.d r[2:3], r[6:7], r26
001160  e3425fec  loadli.w r5,  -2516(r30)
001164  97113e00  or r3, r28, r3
001168  1f024201  addli r4, r4, 160
00116c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001170  b3920228  sext_int2long r[6:7], r5
001174  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001178  ab0100f0  lui r3, 983040
00117c  1f020ff8  addli r4, r30, -1024
001180  97b0a203  sll.d r[2:3], r[6:7], r26
001184  e3026fec  loadli.w r5,  -2512(r30)
001188  97113e00  or r3, r28, r3
00118c  1f224201  addli r4, r4, 162
001190  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001194  b3920228  sext_int2long r[6:7], r5
001198  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00119c  ab0100f0  lui r3, 983040
0011a0  1f020ff8  addli r4, r30, -1024
0011a4  97b0a203  sll.d r[2:3], r[6:7], r26
0011a8  e3426fec  loadli.w r5,  -2508(r30)
0011ac  97113e00  or r3, r28, r3
0011b0  1f424201  addli r4, r4, 164
0011b4  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0011b8  b3920228  sext_int2long r[6:7], r5
0011bc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011c0  ab0100f0  lui r3, 983040
0011c4  1f020ff8  addli r4, r30, -1024
0011c8  97b0a203  sll.d r[2:3], r[6:7], r26
0011cc  e3027fec  loadli.w r5,  -2504(r30)
0011d0  97113e00  or r3, r28, r3
0011d4  1f624201  addli r4, r4, 166
0011d8  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0011dc  b3920228  sext_int2long r[6:7], r5
0011e0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011e4  ab0100f0  lui r3, 983040
0011e8  1f020ff8  addli r4, r30, -1024
0011ec  97b0a203  sll.d r[2:3], r[6:7], r26
0011f0  e3427fec  loadli.w r5,  -2500(r30)
0011f4  97113e00  or r3, r28, r3
0011f8  1f025201  addli r4, r4, 168
0011fc  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001200  b3920228  sext_int2long r[6:7], r5
001204  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001208  ab0100f0  lui r3, 983040
00120c  1f020ff8  addli r4, r30, -1024
001210  97b0a203  sll.d r[2:3], r[6:7], r26
001214  e3028fec  loadli.w r5,  -2496(r30)
001218  97113e00  or r3, r28, r3
00121c  1f225201  addli r4, r4, 170
001220  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001224  b3920228  sext_int2long r[6:7], r5
001228  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00122c  ab0100f0  lui r3, 983040
001230  1f020ff8  addli r4, r30, -1024
001234  97b0a203  sll.d r[2:3], r[6:7], r26
001238  e3428fec  loadli.w r5,  -2492(r30)
00123c  97113e00  or r3, r28, r3
001240  1f425201  addli r4, r4, 172
001244  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001248  b3920228  sext_int2long r[6:7], r5
00124c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001250  ab0100f0  lui r3, 983040
001254  1f020ff8  addli r4, r30, -1024
001258  97b0a203  sll.d r[2:3], r[6:7], r26
00125c  e3029fec  loadli.w r5,  -2488(r30)
001260  97113e00  or r3, r28, r3
001264  1f625201  addli r4, r4, 174
001268  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
00126c  b3920228  sext_int2long r[6:7], r5
001270  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001274  ab0100f0  lui r3, 983040
001278  1f020ff8  addli r4, r30, -1024
00127c  97b0a203  sll.d r[2:3], r[6:7], r26
001280  e3429fec  loadli.w r5,  -2484(r30)
001284  97113e00  or r3, r28, r3
001288  1f026201  addli r4, r4, 176
00128c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001290  b3920228  sext_int2long r[6:7], r5
001294  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001298  ab0100f0  lui r3, 983040
00129c  1f020ff8  addli r4, r30, -1024
0012a0  97b0a203  sll.d r[2:3], r[6:7], r26
0012a4  e302afec  loadli.w r5,  -2480(r30)
0012a8  97113e00  or r3, r28, r3
0012ac  1f226201  addli r4, r4, 178
0012b0  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0012b4  b3920228  sext_int2long r[6:7], r5
0012b8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012bc  ab0100f0  lui r3, 983040
0012c0  1f020ff8  addli r4, r30, -1024
0012c4  97b0a203  sll.d r[2:3], r[6:7], r26
0012c8  e342afec  loadli.w r5,  -2476(r30)
0012cc  97113e00  or r3, r28, r3
0012d0  1f426201  addli r4, r4, 180
0012d4  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0012d8  b3920228  sext_int2long r[6:7], r5
0012dc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012e0  ab0100f0  lui r3, 983040
0012e4  1f020ff8  addli r4, r30, -1024
0012e8  97b0a203  sll.d r[2:3], r[6:7], r26
0012ec  e302bfec  loadli.w r5,  -2472(r30)
0012f0  97113e00  or r3, r28, r3
0012f4  1f626201  addli r4, r4, 182
0012f8  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0012fc  b3920228  sext_int2long r[6:7], r5
001300  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001304  ab0100f0  lui r3, 983040
001308  1f020ff8  addli r4, r30, -1024
00130c  97b0a203  sll.d r[2:3], r[6:7], r26
001310  e342bfec  loadli.w r5,  -2468(r30)
001314  97113e00  or r3, r28, r3
001318  1f027201  addli r4, r4, 184
00131c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001320  b3920228  sext_int2long r[6:7], r5
001324  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001328  ab0100f0  lui r3, 983040
00132c  1f020ff8  addli r4, r30, -1024
001330  97b0a203  sll.d r[2:3], r[6:7], r26
001334  e302cfec  loadli.w r5,  -2464(r30)
001338  97113e00  or r3, r28, r3
00133c  1f227201  addli r4, r4, 186
001340  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001344  b3920228  sext_int2long r[6:7], r5
001348  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00134c  ab0100f0  lui r3, 983040
001350  1f020ff8  addli r4, r30, -1024
001354  97b0a203  sll.d r[2:3], r[6:7], r26
001358  e342cfec  loadli.w r5,  -2460(r30)
00135c  97113e00  or r3, r28, r3
001360  1f427201  addli r4, r4, 188
001364  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001368  b3920228  sext_int2long r[6:7], r5
00136c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001370  ab0100f0  lui r3, 983040
001374  1f020ff8  addli r4, r30, -1024
001378  97b0a203  sll.d r[2:3], r[6:7], r26
00137c  e302dfec  loadli.w r5,  -2456(r30)
001380  97113e00  or r3, r28, r3
001384  1f627201  addli r4, r4, 190
001388  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
00138c  b3920228  sext_int2long r[6:7], r5
001390  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001394  6342dfec  loadli.w r4,  -2452(r30)
001398  ab0100f0  lui r3, 983040
00139c  97b0a203  sll.d r[2:3], r[6:7], r26
0013a0  6343afed  loadli.w r6,  -2348(r30)
0013a4  97113e00  or r3, r28, r3
0013a8  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0013ac  33120228  sext_int2long r[5:6], r4
0013b0  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
0013b4  9730a203  sll.d r[2:3], r[5:6], r26
0013b8  e302efec  loadli.w r5,  -2448(r30)
0013bc  ab0100f0  lui r3, 983040
0013c0  1f020ff8  addli r4, r30, -1024
0013c4  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0013c8  97113e00  or r3, r28, r3
0013cc  1f228201  addli r4, r4, 194
0013d0  b3920228  sext_int2long r[6:7], r5
0013d4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0013d8  ab0100f0  lui r3, 983040
0013dc  1f020ff8  addli r4, r30, -1024
0013e0  97b0a203  sll.d r[2:3], r[6:7], r26
0013e4  e342efec  loadli.w r5,  -2444(r30)
0013e8  97113e00  or r3, r28, r3
0013ec  1f428201  addli r4, r4, 196
0013f0  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0013f4  b3920228  sext_int2long r[6:7], r5
0013f8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0013fc  ab0100f0  lui r3, 983040
001400  1f020ff8  addli r4, r30, -1024
001404  97b0a203  sll.d r[2:3], r[6:7], r26
001408  e302ffec  loadli.w r5,  -2440(r30)
00140c  97113e00  or r3, r28, r3
001410  1f628201  addli r4, r4, 198
001414  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001418  b3920228  sext_int2long r[6:7], r5
00141c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001420  ab0100f0  lui r3, 983040
001424  1f020ff8  addli r4, r30, -1024
001428  97b0a203  sll.d r[2:3], r[6:7], r26
00142c  e342ffec  loadli.w r5,  -2436(r30)
001430  97113e00  or r3, r28, r3
001434  1f029201  addli r4, r4, 200
001438  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
00143c  b3920228  sext_int2long r[6:7], r5
001440  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001444  63020fed  loadli.w r4,  -2432(r30)
001448  ab0100f0  lui r3, 983040
00144c  97b0a203  sll.d r[2:3], r[6:7], r26
001450  1f030ff8  addli r6, r30, -1024
001454  97113e00  or r3, r28, r3
001458  33120228  sext_int2long r[5:6], r4
00145c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001460  1f239301  addli r6, r6, 202
001464  1732a203  sll.d r[5:6], r[5:6], r26
001468  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
00146c  ab0100f0  lui r3, 983040
001470  8b204c10  add.ul r[2:3], r[25:26], r[5:6]
001474  e3420fed  loadli.w r5,  -2428(r30)
001478  1f020ff8  addli r4, r30, -1024
00147c  97113e00  or r3, r28, r3
001480  1f429201  addli r4, r4, 204
001484  b3920228  sext_int2long r[6:7], r5
001488  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00148c  97b1a203  sll.d r[4:5], r[6:7], r26
001490  9f02bfed  addli r5, r30, -2344
001494  1f030ff8  addli r6, r30, -1024
001498  2b0d00f0  lui r26, 983040
00149c  ebd00200  load.d r[2:3], 0(r5)
0014a0  ab0200f0  lui r5, 983040
0014a4  8b213c10  add.ul r[4:5], r[25:26], r[4:5]
0014a8  1f639301  addli r6, r6, 206
0014ac  171dae01  or r26, r28, r26
0014b0  97125e00  or r5, r28, r5
0014b4  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0014b8  ffb26100  s_lm2gm r5, r6, 0(r[4:5])
0014bc  e3411fed  loadli.w r3,  -2420(r30)
0014c0  97b2b303  sll.d r[6:7], r[8:9], r27
0014c4  ab0300f0  lui r7, 983040
0014c8  1f040ff8  addli r8, r30, -1024
0014cc  8b225c10  add.ul r[6:7], r[25:26], r[6:7]
0014d0  1f04a401  addli r8, r8, 208
0014d4  97137e00  or r7, r28, r7
0014d8  b3910128  sext_int2long r[4:5], r3
0014dc  ffb38200  s_lm2gm r7, r8, 0(r[6:7])
0014e0  97b3b403  sll.d r[8:9], r[10:11], r27
0014e4  ab0400f0  lui r9, 983040
0014e8  1f050ff8  addli r10, r30, -1024
0014ec  e3422fed  loadli.w r5,  -2412(r30)
0014f0  97b1b103  sll.d r[4:5], r[4:5], r27
0014f4  1f25a501  addli r10, r10, 210
0014f8  97149e00  or r9, r28, r9
0014fc  8b237c10  add.ul r[8:9], r[25:26], r[8:9]
001500  8b213c10  add.ul r[4:5], r[25:26], r[4:5]
001504  b3920228  sext_int2long r[6:7], r5
001508  ffb4a100  s_lm2gm r9, r10, 0(r[4:5])
00150c  97b4b503  sll.d r[10:11], r[12:13], r27
001510  ab0500f0  lui r11, 983040
001514  1f060ff8  addli r12, r30, -1024
001518  97b2b203  sll.d r[6:7], r[6:7], r27
00151c  e3413fed  loadli.w r3,  -2404(r30)
001520  1f46a601  addli r12, r12, 212
001524  9715be00  or r11, r28, r11
001528  8b225c10  add.ul r[6:7], r[25:26], r[6:7]
00152c  8b249c10  add.ul r[10:11], r[25:26], r[10:11]
001530  b3910128  sext_int2long r[4:5], r3
001534  ffb5c300  s_lm2gm r11, r12, 0(r[8:9])
001538  e3434fed  loadli.w r7,  -2396(r30)
00153c  97b5b603  sll.d r[12:13], r[14:15], r27
001540  97b1b103  sll.d r[4:5], r[4:5], r27
001544  8b26bc10  add.ul r[14:15], r[25:26], r[12:13]
001548  e3055fed  loadli.w r11,  -2392(r30)
00154c  b3930328  sext_int2long r[8:9], r7
001550  8b213c10  add.ul r[4:5], r[25:26], r[4:5]
001554  97b3b303  sll.d r[8:9], r[8:9], r27
001558  b3950528  sext_int2long r[12:13], r11
00155c  8b277c10  add.ul r[16:17], r[25:26], r[8:9]
001560  ab0300f0  lui r7, 983040
001564  1f040ff8  addli r8, r30, -1024
001568  1f64a401  addli r8, r8, 214
00156c  97137e00  or r7, r28, r7
001570  ffb38200  s_lm2gm r7, r8, 0(r[6:7])
001574  e3425fed  loadli.w r5,  -2388(r30)
001578  97b3b503  sll.d r[8:9], r[12:13], r27
00157c  0b2b7c10  add.ul r[23:24], r[25:26], r[8:9]
001580  e3036fed  loadli.w r7,  -2384(r30)
001584  b3920228  sext_int2long r[6:7], r5
001588  97b2b203  sll.d r[6:7], r[6:7], r27
00158c  b3930328  sext_int2long r[8:9], r7
001590  8b285c10  add.ul r[18:19], r[25:26], r[6:7]
001594  ab0200f0  lui r5, 983040
001598  1f030ff8  addli r6, r30, -1024
00159c  97b3b303  sll.d r[8:9], r[8:9], r27
0015a0  1f03b301  addli r6, r6, 216
0015a4  97125e00  or r5, r28, r5
0015a8  ffb26400  s_lm2gm r5, r6, 0(r[10:11])
0015ac  e3426fed  loadli.w r5,  -2380(r30)
0015b0  8b247c10  add.ul r[10:11], r[25:26], r[8:9]
0015b4  ab0300f0  lui r7, 983040
0015b8  1f040ff8  addli r8, r30, -1024
0015bc  1f24b401  addli r8, r8, 218
0015c0  97137e00  or r7, r28, r7
0015c4  b3920228  sext_int2long r[6:7], r5
0015c8  ffb38100  s_lm2gm r7, r8, 0(r[4:5])
0015cc  e3417fed  loadli.w r3,  -2372(r30)
0015d0  9f038fee  addli r7, r30, -2240
0015d4  97b2b203  sll.d r[6:7], r[6:7], r27
0015d8  0b2a5c10  add.ul r[21:22], r[25:26], r[6:7]
0015dc  e3027fed  loadli.w r5,  -2376(r30)
0015e0  b3910128  sext_int2long r[4:5], r3
0015e4  97b1b103  sll.d r[4:5], r[4:5], r27
0015e8  b3920228  sext_int2long r[6:7], r5
0015ec  8b253c10  add.ul r[12:13], r[25:26], r[4:5]
0015f0  97b2b203  sll.d r[6:7], r[6:7], r27
0015f4  8b225c10  add.ul r[6:7], r[25:26], r[6:7]
0015f8  73b05300  store.d r[6:7], 0(r7)
0015fc  e3028fed  loadli.w r5,  -2368(r30)
001600  b3920228  sext_int2long r[6:7], r5
001604  97b1b203  sll.d r[4:5], r[6:7], r27
001608  ab0200f0  lui r5, 983040
00160c  1f030ff8  addli r6, r30, -1024
001610  9f43b301  addli r7, r6, 220
001614  17145e00  or r8, r28, r5
001618  8b213c10  add.ul r[4:5], r[25:26], r[4:5]
00161c  9f020fef  addli r5, r30, -2176
001620  1f130000  addli r6, zero, 1
001624  73b03200  store.d r[4:5], 0(r5)
001628  e341dfed  loadli.w r3,  -2324(r30)
00162c  7fb47600  s_lm2gm r8, r7, 0(r[14:15])
001630  e3438fed  loadli.w r7,  -2364(r30)
001634  9f02efef  addli r5, r30, -2064
001638  b3910128  sext_int2long r[4:5], r3
00163c  b3930328  sext_int2long r[8:9], r7
001640  97b1b103  sll.d r[4:5], r[4:5], r27
001644  97b3b303  sll.d r[8:9], r[8:9], r27
001648  8b263c10  add.ul r[14:15], r[25:26], r[4:5]
00164c  8b217c10  add.ul r[4:5], r[25:26], r[8:9]
001650  73b03200  store.d r[4:5], 0(r5)
001654  e301efed  loadli.w r3,  -2320(r30)
001658  27020c00  addli.d r[5:6], r[25:26], 0
00165c  b3930128  sext_int2long r[8:9], r3
001660  9f010ff8  addli r3, r30, -1024
001664  7fbd3000  s_lm2gm r26, r3, 0(r[2:3])
001668  e340efed  loadli.w r1,  -2316(r30)
00166c  2b0d00f0  lui r26, 983040
001670  97b3b303  sll.d r[8:9], r[8:9], r27
001674  9fedb101  addli r27, r3, 222
001678  e301ffed  loadli.w r3,  -2312(r30)
00167c  171dae01  or r26, r28, r26
001680  8b237c10  add.ul r[8:9], r[25:26], r[8:9]
001684  2b0c00f0  lui r24, 983040
001688  b3900028  sext_int2long r[2:3], r1
00168c  7fbdb701  s_lm2gm r26, r27, 0(r[16:17])
001690  b3970128  sext_int2long r[16:17], r3
001694  2b0d00f0  lui r26, 983040
001698  171c8e01  or r24, r28, r24
00169c  97b06002  sll.d r[2:3], r[2:3], r6
0016a0  171dae01  or r26, r28, r26
0016a4  97b76702  sll.d r[16:17], r[16:17], r6
0016a8  0b211210  add.ul r[3:4], r[5:6], r[2:3]
0016ac  9f000ff8  addli r1, r30, -1024
0016b0  8b27f210  add.ul r[16:17], r[5:6], r[16:17]
0016b4  9f8dc001  addli r27, r1, 224
0016b8  e340ffed  loadli.w r1,  -2308(r30)
0016bc  7f3dbb01  s_lm2gm r26, r27, 0(r[23:24])
0016c0  2b0d00f0  lui r26, 983040
0016c4  339b0028  sext_int2long r[23:24], r1
0016c8  9f000ff8  addli r1, r30, -1024
0016cc  171dae01  or r26, r28, r26
0016d0  9fadc001  addli r27, r1, 226
0016d4  e3000fee  loadli.w r1,  -2304(r30)
0016d8  173b6b02  sll.d r[23:24], r[23:24], r6
0016dc  7fbdb801  s_lm2gm r26, r27, 0(r[18:19])
0016e0  8b286211  add.ul r[18:19], r[5:6], r[23:24]
0016e4  339d0028  sext_int2long r[27:28], r1
0016e8  9f000ff8  addli r1, r30, -1024
0016ec  173b6d02  sll.d r[23:24], r[27:28], r6
0016f0  2b0d00f0  lui r26, 983040
0016f4  9fecc001  addli r25, r1, 230
0016f8  9fcdc001  addli r27, r1, 228
0016fc  e3400fee  loadli.w r1,  -2300(r30)
001700  171dae01  or r26, r28, r26
001704  7f3c9a01  s_lm2gm r24, r25, 0(r[21:22])
001708  0b2b6211  add.ul r[23:24], r[5:6], r[23:24]
00170c  7fbdb401  s_lm2gm r26, r27, 0(r[10:11])
001710  339d0028  sext_int2long r[27:28], r1
001714  e3001fee  loadli.w r1,  -2296(r30)
001718  9f048fee  addli r9, r30, -2240
00171c  173c6d02  sll.d r[25:26], r[27:28], r6
001720  339a0028  sext_int2long r[21:22], r1
001724  9f000ff8  addli r1, r30, -1024
001728  173d6a02  sll.d r[27:28], r[21:22], r6
00172c  0b2a8211  add.ul r[21:22], r[5:6], r[25:26]
001730  0b2ca211  add.ul r[25:26], r[5:6], r[27:28]
001734  2b0200f0  lui r4, 983040
001738  2b0d00f0  lui r26, 983040
00173c  9f8dd001  addli r27, r1, 232
001740  ebd20400  load.d r[6:7], 0(r9)
001744  9fa0d001  addli r1, r1, 234
001748  ab0400f0  lui r9, 983040
00174c  17124e00  or r4, r28, r4
001750  171dae01  or r26, r28, r26
001754  97149e00  or r9, r28, r9
001758  7fb21500  s_lm2gm r4, r1, 0(r[12:13])
00175c  9f050fef  addli r11, r30, -2176
001760  7fbdb201  s_lm2gm r26, r27, 0(r[6:7])
001764  1f0d0ff8  addli r26, r30, -1024
001768  ab0000f0  lui r1, 983040
00176c  ebd20500  load.d r[6:7], 0(r11)
001770  1f42dd01  addli r4, r26, 236
001774  97101e00  or r1, r28, r1
001778  1f65dd01  addli r10, r26, 238
00177c  9f05efef  addli r11, r30, -2064
001780  ffb4a600  s_lm2gm r9, r10, 0(r[14:15])
001784  ebd40500  load.d r[10:11], 0(r11)
001788  ffb04200  s_lm2gm r1, r4, 0(r[6:7])
00178c  ab0000f0  lui r1, 983040
001790  1f02ed01  addli r4, r26, 240
001794  ab0200f0  lui r5, 983040
001798  1f23ed01  addli r6, r26, 242
00179c  97101e00  or r1, r28, r1
0017a0  97125e00  or r5, r28, r5
0017a4  ffb04400  s_lm2gm r1, r4, 0(r[10:11])
0017a8  ab0000f0  lui r1, 983040
0017ac  1f42ed01  addli r4, r26, 244
0017b0  ffb26300  s_lm2gm r5, r6, 0(r[8:9])
0017b4  ab0200f0  lui r5, 983040
0017b8  1f63ed01  addli r6, r26, 246
0017bc  6304cfed  loadli.w r8,  -2336(r30)
0017c0  97101e00  or r1, r28, r1
0017c4  97125e00  or r5, r28, r5
0017c8  ff304100  s_lm2gm r1, r4, 0(r[3:4])
0017cc  ab0000f0  lui r1, 983040
0017d0  ab0100f0  lui r3, 983040
0017d4  1f01fd01  addli r2, r26, 248
0017d8  1f22fd01  addli r4, r26, 250
0017dc  ffb26700  s_lm2gm r5, r6, 0(r[16:17])
0017e0  1f030002  addli r6, zero, 256
0017e4  97101e00  or r1, r28, r1
0017e8  97113e00  or r3, r28, r3
0017ec  ffb02800  s_lm2gm r1, r2, 0(r[18:19])
0017f0  ab0000f0  lui r1, 983040
0017f4  ff314b00  s_lm2gm r3, r4, 0(r[23:24])
0017f8  ab0100f0  lui r3, 983040
0017fc  1f41fd01  addli r2, r26, 252
001800  1f62fd01  addli r4, r26, 254
001804  97101e00  or r1, r28, r1
001808  97113e00  or r3, r28, r3
00180c  ff302a00  s_lm2gm r1, r2, 0(r[21:22])
001810  e300afe9  loadli.w r1,  -2864(r30)
001814  ff314c00  s_lm2gm r3, r4, 0(r[25:26])
001818  e34cffef  loadli.w r25,  -2052(r30)
00181c  2b0affff  lui r20, 1048560
001820  00a00000  mfence { lm }
001824  0b141410  add.s r8, r8, r1
001828  e340bfe9  loadli.w r1,  -2852(r30)
00182c  3f201400  blt.s r8, r1, 8
001830  5b4d0700  j 14952
001834  9f000000  addli r1, zero, 0
001838  0b111d10  add.s r2, r26, r1
00183c  9fc00000  addli r1, r1, 4
001840  73100100  store.h zero, 0(r2)
001844  73110100  store.h zero, 2(r2)
001848  00a00000  mfence { lm }
00184c  bbbf60fe  bneq r1, r6, -20
001850  e3005f00  loadli.w r1,  40(r30)
001854  63414f00  loadli.w r2,  36(r30)
001858  9f120000  addli r5, zero, 1
00185c  670e8fec  storeli.w r8, -2336(r30)
001860  8b101430  div.s r1, r8, r1
001864  8b902030  div.s r1, r1, r2
001868  6301bfe9  loadli.w r2,  -2856(r30)
00186c  9bb03000  slli r1, r1, 3
001870  8b902010  add.s r1, r1, r2
001874  1bb1a000  slli r2, r1, 10
001878  670f1fee  storeli.w r1, -2064(r30)
00187c  e340afe9  loadli.w r1,  -2860(r30)
001880  e70c2fec  storeli.w r2, -2360(r30)
001884  8b101110  add.s r1, r2, r1
001888  2b0100f0  lui r2, 983040
00188c  b3910028  sext_int2long r[4:5], r1
001890  17112300  or r2, r6, r2
001894  ab0000f0  lui r1, 983040
001898  97b35102  sll.d r[8:9], r[4:5], r5
00189c  eb510f00  load.d r[4:5], 0(r30)
0018a0  9f02bfed  addli r5, r30, -2344
0018a4  97101300  or r1, r6, r1
0018a8  73b07200  store.d r[8:9], 0(r5)
0018ac  8ba17110  add.ul r[4:5], r[4:5], r[8:9]
0018b0  7fa1a101  l_gm2lm r2, r26, 0(r[4:5])
0018b4  1f020fe9  addli r4, r30, -2944
0018b8  6b510200  load.d r[3:4], 0(r4)
0018bc  1f020ffa  addli r4, r30, -768
0018c0  ff204100  l_gm2lm r1, r4, 0(r[3:4])
0018c4  9f000fef  addli r1, r30, -2176
0018c8  00a00000  mfence { lm }
0018cc  42110f82  vload_mask16.mz vr2{mr1}, 1024(r30)
0018d0  c2138f82  vload_mask16.mz vr7{mr1}, 1088(r30)
0018d4  c2110f83  vload_mask16.mz vr3{mr1}, 1152(r30)
0018d8  c2158f83  vload_mask16.mz vr11{mr1}, 1216(r30)
0018dc  42140fa2  vload_mask16.mz vr8{mr1}, 1280(r30)
0018e0  42138fa2  vload_mask16.mz vr6{mr1}, 1344(r30)
0018e4  c2120fa3  vload_mask16.mz vr5{mr1}, 1408(r30)
0018e8  42128fa3  vload_mask16.mz vr4{mr1}, 1472(r30)
0018ec  00a00000  mfence { lm }
0018f0  e6c07480  vmerge_l.hf vr1, vr9, vr7
0018f4  66c56480  vmerge_l.hf vr10, vr9, vr6
0018f8  66c03480  vmerge_l.hf vr0, vr9, vr3
0018fc  e6c374a0  vmerge_h.hf vr7, vr9, vr7
001900  66c364a0  vmerge_h.hf vr6, vr9, vr6
001904  e6c134a0  vmerge_h.hf vr3, vr9, vr3
001908  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
00190c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001910  66c02480  vmerge_l.hf vr0, vr9, vr2
001914  66c58480  vmerge_l.hf vr10, vr9, vr8
001918  66c124a0  vmerge_h.hf vr2, vr9, vr2
00191c  66c484a0  vmerge_h.hf vr8, vr9, vr8
001920  9f008fee  addli r1, r30, -2240
001924  16936302  vadd.f.mz.rn vr6{mr1}, vr7, vr6
001928  e6c34480  vmerge_l.hf vr7, vr9, vr4
00192c  66c244a0  vmerge_h.hf vr4, vr9, vr4
001930  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
001934  9f000fef  addli r1, r30, -2176
001938  1610a002  vadd.f.mz.rn vr0{mr1}, vr0, vr10
00193c  16118102  vadd.f.mz.rn vr2{mr1}, vr2, vr8
001940  e6c0b4a0  vmerge_h.hf vr1, vr9, vr11
001944  66c45480  vmerge_l.hf vr8, vr9, vr5
001948  e6c254a0  vmerge_h.hf vr5, vr9, vr5
00194c  66c5b480  vmerge_l.hf vr10, vr9, vr11
001950  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
001954  9f008fee  addli r1, r30, -2240
001958  46100fc2  vstore_mask16.mz vr0{mr1}, 1536(r30)
00195c  46142fc2  vstore_mask16.mz vr2{mr1}, 1600(r30)
001960  96915102  vadd.f.mz.rn vr3{mr1}, vr3, vr5
001964  96127502  vadd.f.mz.rn vr5{mr1}, vr10, vr7
001968  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
00196c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001970  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
001974  46180fc2  vstore_mask16.mz vr0{mr1}, 1664(r30)
001978  461c6fc2  vstore_mask16.mz vr6{mr1}, 1728(r30)
00197c  46108fe2  vstore_mask16.mz vr8{mr1}, 1792(r30)
001980  46143fe2  vstore_mask16.mz vr3{mr1}, 1856(r30)
001984  46185fe2  vstore_mask16.mz vr5{mr1}, 1920(r30)
001988  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
00198c  00a00000  mfence { lm }
001990  63050ffc  loadli.w r10,  -512(r30)
001994  63460ffc  loadli.w r12,  -508(r30)
001998  63071ffc  loadli.w r14,  -504(r30)
00199c  63481ffc  loadli.w r16,  -500(r30)
0019a0  e3072ffc  loadli.w r15,  -496(r30)
0019a4  e3462ffc  loadli.w r13,  -492(r30)
0019a8  e3053ffc  loadli.w r11,  -488(r30)
0019ac  e3443ffc  loadli.w r9,  -484(r30)
0019b0  63044ffc  loadli.w r8,  -480(r30)
0019b4  e3434ffc  loadli.w r7,  -476(r30)
0019b8  63035ffc  loadli.w r6,  -472(r30)
0019bc  e3425ffc  loadli.w r5,  -468(r30)
0019c0  63026ffc  loadli.w r4,  -464(r30)
0019c4  e3416ffc  loadli.w r3,  -460(r30)
0019c8  63017ffc  loadli.w r2,  -456(r30)
0019cc  e3407ffc  loadli.w r1,  -452(r30)
0019d0  e3088ffc  loadli.w r17,  -448(r30)
0019d4  e3488ffc  loadli.w r17,  -444(r30)
0019d8  e3089ffc  loadli.w r17,  -440(r30)
0019dc  e3489ffc  loadli.w r17,  -436(r30)
0019e0  e308affc  loadli.w r17,  -432(r30)
0019e4  e348affc  loadli.w r17,  -428(r30)
0019e8  e308bffc  loadli.w r17,  -424(r30)
0019ec  e348bffc  loadli.w r17,  -420(r30)
0019f0  e308cffc  loadli.w r17,  -416(r30)
0019f4  e348cffc  loadli.w r17,  -412(r30)
0019f8  e308dffc  loadli.w r17,  -408(r30)
0019fc  e348dffc  loadli.w r17,  -404(r30)
001a00  e308effc  loadli.w r17,  -400(r30)
001a04  e348effc  loadli.w r17,  -396(r30)
001a08  e308fffc  loadli.w r17,  -392(r30)
001a0c  e348fffc  loadli.w r17,  -388(r30)
001a10  e3080ffd  loadli.w r17,  -384(r30)
001a14  e3480ffd  loadli.w r17,  -380(r30)
001a18  e3081ffd  loadli.w r17,  -376(r30)
001a1c  e3481ffd  loadli.w r17,  -372(r30)
001a20  e3082ffd  loadli.w r17,  -368(r30)
001a24  e3482ffd  loadli.w r17,  -364(r30)
001a28  e3083ffd  loadli.w r17,  -360(r30)
001a2c  e3483ffd  loadli.w r17,  -356(r30)
001a30  e3084ffd  loadli.w r17,  -352(r30)
001a34  e3484ffd  loadli.w r17,  -348(r30)
001a38  e3085ffd  loadli.w r17,  -344(r30)
001a3c  e3485ffd  loadli.w r17,  -340(r30)
001a40  e3086ffd  loadli.w r17,  -336(r30)
001a44  e3486ffd  loadli.w r17,  -332(r30)
001a48  e3087ffd  loadli.w r17,  -328(r30)
001a4c  e3487ffd  loadli.w r17,  -324(r30)
001a50  e3088ffd  loadli.w r17,  -320(r30)
001a54  e3488ffd  loadli.w r17,  -316(r30)
001a58  e3089ffd  loadli.w r17,  -312(r30)
001a5c  e3489ffd  loadli.w r17,  -308(r30)
001a60  e308affd  loadli.w r17,  -304(r30)
001a64  e348affd  loadli.w r17,  -300(r30)
001a68  e308bffd  loadli.w r17,  -296(r30)
001a6c  e348bffd  loadli.w r17,  -292(r30)
001a70  e308cffd  loadli.w r17,  -288(r30)
001a74  e348cffd  loadli.w r17,  -284(r30)
001a78  e308dffd  loadli.w r17,  -280(r30)
001a7c  e348dffd  loadli.w r17,  -276(r30)
001a80  e308effd  loadli.w r17,  -272(r30)
001a84  e348effd  loadli.w r17,  -268(r30)
001a88  e308fffd  loadli.w r17,  -264(r30)
001a8c  e348fffd  loadli.w r17,  -260(r30)
001a90  e3080ffe  loadli.w r17,  -256(r30)
001a94  e3480ffe  loadli.w r17,  -252(r30)
001a98  e3081ffe  loadli.w r17,  -248(r30)
001a9c  e3481ffe  loadli.w r17,  -244(r30)
001aa0  e3082ffe  loadli.w r17,  -240(r30)
001aa4  e3482ffe  loadli.w r17,  -236(r30)
001aa8  e3083ffe  loadli.w r17,  -232(r30)
001aac  e3483ffe  loadli.w r17,  -228(r30)
001ab0  e3084ffe  loadli.w r17,  -224(r30)
001ab4  e3484ffe  loadli.w r17,  -220(r30)
001ab8  e3085ffe  loadli.w r17,  -216(r30)
001abc  e3485ffe  loadli.w r17,  -212(r30)
001ac0  e3086ffe  loadli.w r17,  -208(r30)
001ac4  e3486ffe  loadli.w r17,  -204(r30)
001ac8  e3087ffe  loadli.w r17,  -200(r30)
001acc  e3487ffe  loadli.w r17,  -196(r30)
001ad0  e3088ffe  loadli.w r17,  -192(r30)
001ad4  e3488ffe  loadli.w r17,  -188(r30)
001ad8  e3089ffe  loadli.w r17,  -184(r30)
001adc  e3489ffe  loadli.w r17,  -180(r30)
001ae0  e308affe  loadli.w r17,  -176(r30)
001ae4  e348affe  loadli.w r17,  -172(r30)
001ae8  e308bffe  loadli.w r17,  -168(r30)
001aec  e348bffe  loadli.w r17,  -164(r30)
001af0  e308cffe  loadli.w r17,  -160(r30)
001af4  e348cffe  loadli.w r17,  -156(r30)
001af8  e308dffe  loadli.w r17,  -152(r30)
001afc  e348dffe  loadli.w r17,  -148(r30)
001b00  e308effe  loadli.w r17,  -144(r30)
001b04  e348effe  loadli.w r17,  -140(r30)
001b08  e308fffe  loadli.w r17,  -136(r30)
001b0c  e348fffe  loadli.w r17,  -132(r30)
001b10  e3080fff  loadli.w r17,  -128(r30)
001b14  e3480fff  loadli.w r17,  -124(r30)
001b18  e3081fff  loadli.w r17,  -120(r30)
001b1c  e3481fff  loadli.w r17,  -116(r30)
001b20  e3082fff  loadli.w r17,  -112(r30)
001b24  e3482fff  loadli.w r17,  -108(r30)
001b28  e3083fff  loadli.w r17,  -104(r30)
001b2c  e3483fff  loadli.w r17,  -100(r30)
001b30  e3084fff  loadli.w r17,  -96(r30)
001b34  e3484fff  loadli.w r17,  -92(r30)
001b38  e3085fff  loadli.w r17,  -88(r30)
001b3c  e3485fff  loadli.w r17,  -84(r30)
001b40  e3086fff  loadli.w r17,  -80(r30)
001b44  e3486fff  loadli.w r17,  -76(r30)
001b48  e3087fff  loadli.w r17,  -72(r30)
001b4c  e3487fff  loadli.w r17,  -68(r30)
001b50  e3088fff  loadli.w r17,  -64(r30)
001b54  e3488fff  loadli.w r17,  -60(r30)
001b58  e3089fff  loadli.w r17,  -56(r30)
001b5c  e3489fff  loadli.w r17,  -52(r30)
001b60  e308afff  loadli.w r17,  -48(r30)
001b64  e348afff  loadli.w r17,  -44(r30)
001b68  e308bfff  loadli.w r17,  -40(r30)
001b6c  e348bfff  loadli.w r17,  -36(r30)
001b70  e308cfff  loadli.w r17,  -32(r30)
001b74  e348cfff  loadli.w r17,  -28(r30)
001b78  6309dfff  loadli.w r18,  -24(r30)
001b7c  2b09807f  lui r18, 522240
001b80  97083501  and r17, r10, r19
001b84  93081905  setlt.u r17, r18, r17
001b88  6349dfff  loadli.w r18,  -20(r30)
001b8c  6309efff  loadli.w r18,  -16(r30)
001b90  6349efff  loadli.w r18,  -12(r30)
001b94  6309ffff  loadli.w r18,  -8(r30)
001b98  6349ffff  loadli.w r18,  -4(r30)
001b9c  3be00800  bneq r17, zero, 24
001ba0  9b480501  srli r17, r10, 16
001ba4  9b881800  andi r17, r17, 1
001ba8  0b151511  add.s r10, r10, r17
001bac  0b159511  add.s r10, r10, r25
001bb0  db010000  j 12
001bb4  ab084000  lui r17, 1024
001bb8  17151501  or r10, r10, r17
001bbc  97083601  and r17, r12, r19
001bc0  2b09807f  lui r18, 522240
001bc4  93081905  setlt.u r17, r18, r17
001bc8  1f090fe8  addli r18, r30, -3072
001bcc  c2140902  vload_mask16.mz vr9{mr1}, 0(r18)
001bd0  3be00800  bneq r17, zero, 24
001bd4  9b480601  srli r17, r12, 16
001bd8  9b881800  andi r17, r17, 1
001bdc  0b161611  add.s r12, r12, r17
001be0  0b169611  add.s r12, r12, r25
001be4  db010000  j 12
001be8  ab084000  lui r17, 1024
001bec  17161601  or r12, r12, r17
001bf0  97083701  and r17, r14, r19
001bf4  2b09807f  lui r18, 522240
001bf8  93081905  setlt.u r17, r18, r17
001bfc  3be00800  bneq r17, zero, 24
001c00  9b480701  srli r17, r14, 16
001c04  9b881800  andi r17, r17, 1
001c08  0b171711  add.s r14, r14, r17
001c0c  0b179711  add.s r14, r14, r25
001c10  db010000  j 12
001c14  ab084000  lui r17, 1024
001c18  17171701  or r14, r14, r17
001c1c  97083801  and r17, r16, r19
001c20  93081905  setlt.u r17, r18, r17
001c24  3be00800  bneq r17, zero, 24
001c28  9b480801  srli r17, r16, 16
001c2c  9b881800  andi r17, r17, 1
001c30  0b181811  add.s r16, r16, r17
001c34  0b189811  add.s r16, r16, r25
001c38  db010000  j 12
001c3c  ab084000  lui r17, 1024
001c40  17181801  or r16, r16, r17
001c44  97883701  and r17, r15, r19
001c48  93081905  setlt.u r17, r18, r17
001c4c  3be00800  bneq r17, zero, 24
001c50  9bc80701  srli r17, r15, 16
001c54  9b881800  andi r17, r17, 1
001c58  8b971711  add.s r15, r15, r17
001c5c  8b979711  add.s r15, r15, r25
001c60  db010000  j 12
001c64  ab084000  lui r17, 1024
001c68  97971701  or r15, r15, r17
001c6c  97883601  and r17, r13, r19
001c70  93081905  setlt.u r17, r18, r17
001c74  3be00800  bneq r17, zero, 24
001c78  9bc80601  srli r17, r13, 16
001c7c  9b881800  andi r17, r17, 1
001c80  8b961611  add.s r13, r13, r17
001c84  8b969611  add.s r13, r13, r25
001c88  db010000  j 12
001c8c  ab084000  lui r17, 1024
001c90  97961601  or r13, r13, r17
001c94  97883501  and r17, r11, r19
001c98  93081905  setlt.u r17, r18, r17
001c9c  3be00800  bneq r17, zero, 24
001ca0  9bc80501  srli r17, r11, 16
001ca4  9b881800  andi r17, r17, 1
001ca8  8b951511  add.s r11, r11, r17
001cac  8b959511  add.s r11, r11, r25
001cb0  db010000  j 12
001cb4  ab084000  lui r17, 1024
001cb8  97951501  or r11, r11, r17
001cbc  97883401  and r17, r9, r19
001cc0  93081905  setlt.u r17, r18, r17
001cc4  3be00800  bneq r17, zero, 24
001cc8  9bc80401  srli r17, r9, 16
001ccc  9b881800  andi r17, r17, 1
001cd0  8b941411  add.s r9, r9, r17
001cd4  8b949411  add.s r9, r9, r25
001cd8  db010000  j 12
001cdc  ab084000  lui r17, 1024
001ce0  97941401  or r9, r9, r17
001ce4  97083401  and r17, r8, r19
001ce8  93081905  setlt.u r17, r18, r17
001cec  3be00800  bneq r17, zero, 24
001cf0  9b480401  srli r17, r8, 16
001cf4  9b881800  andi r17, r17, 1
001cf8  0b141411  add.s r8, r8, r17
001cfc  0b149411  add.s r8, r8, r25
001d00  db010000  j 12
001d04  ab084000  lui r17, 1024
001d08  17141401  or r8, r8, r17
001d0c  97883301  and r17, r7, r19
001d10  93081905  setlt.u r17, r18, r17
001d14  3be00800  bneq r17, zero, 24
001d18  9bc80301  srli r17, r7, 16
001d1c  9b881800  andi r17, r17, 1
001d20  8b931311  add.s r7, r7, r17
001d24  8b939311  add.s r7, r7, r25
001d28  db010000  j 12
001d2c  ab084000  lui r17, 1024
001d30  97931301  or r7, r7, r17
001d34  97083301  and r17, r6, r19
001d38  93081905  setlt.u r17, r18, r17
001d3c  3be00800  bneq r17, zero, 24
001d40  9b480301  srli r17, r6, 16
001d44  9b881800  andi r17, r17, 1
001d48  0b131311  add.s r6, r6, r17
001d4c  0b139311  add.s r6, r6, r25
001d50  db010000  j 12
001d54  ab084000  lui r17, 1024
001d58  17131301  or r6, r6, r17
001d5c  97883201  and r17, r5, r19
001d60  93081905  setlt.u r17, r18, r17
001d64  3be00800  bneq r17, zero, 24
001d68  9bc80201  srli r17, r5, 16
001d6c  9b881800  andi r17, r17, 1
001d70  8b921211  add.s r5, r5, r17
001d74  8b929211  add.s r5, r5, r25
001d78  db010000  j 12
001d7c  ab084000  lui r17, 1024
001d80  97921201  or r5, r5, r17
001d84  97083201  and r17, r4, r19
001d88  93081905  setlt.u r17, r18, r17
001d8c  3be00800  bneq r17, zero, 24
001d90  9b480201  srli r17, r4, 16
001d94  9b881800  andi r17, r17, 1
001d98  0b121211  add.s r4, r4, r17
001d9c  0b129211  add.s r4, r4, r25
001da0  db010000  j 12
001da4  ab084000  lui r17, 1024
001da8  17121201  or r4, r4, r17
001dac  97883101  and r17, r3, r19
001db0  93081905  setlt.u r17, r18, r17
001db4  3be00800  bneq r17, zero, 24
001db8  9bc80101  srli r17, r3, 16
001dbc  9b881800  andi r17, r17, 1
001dc0  8b911111  add.s r3, r3, r17
001dc4  8b919111  add.s r3, r3, r25
001dc8  db010000  j 12
001dcc  ab084000  lui r17, 1024
001dd0  97911101  or r3, r3, r17
001dd4  97083101  and r17, r2, r19
001dd8  93081905  setlt.u r17, r18, r17
001ddc  3be00800  bneq r17, zero, 24
001de0  9b480101  srli r17, r2, 16
001de4  9b881800  andi r17, r17, 1
001de8  0b111111  add.s r2, r2, r17
001dec  0b119111  add.s r2, r2, r25
001df0  db010000  j 12
001df4  ab084000  lui r17, 1024
001df8  17111101  or r2, r2, r17
001dfc  97883001  and r17, r1, r19
001e00  93081905  setlt.u r17, r18, r17
001e04  3be00800  bneq r17, zero, 24
001e08  9bc80001  srli r17, r1, 16
001e0c  9b881800  andi r17, r17, 1
001e10  8b901011  add.s r1, r1, r17
001e14  8b909011  add.s r1, r1, r25
001e18  db010000  j 12
001e1c  ab084000  lui r17, 1024
001e20  97901001  or r1, r1, r17
001e24  170c4501  and r24, r10, r20
001e28  970a4601  and r21, r12, r20
001e2c  17054701  and r10, r14, r20
001e30  178e4601  and r28, r13, r20
001e34  97864401  and r13, r9, r20
001e38  97844101  and r9, r3, r20
001e3c  17074401  and r14, r8, r20
001e40  17064801  and r12, r16, r20
001e44  17044201  and r8, r4, r20
001e48  978d4701  and r27, r15, r20
001e4c  178b4501  and r22, r11, r20
001e50  97834301  and r7, r7, r20
001e54  17034301  and r6, r6, r20
001e58  97824201  and r5, r5, r20
001e5c  17014101  and r2, r2, r20
001e60  97804001  and r1, r1, r20
001e64  674c8fed  storeli.w r24, -2364(r30)
001e68  670c5fed  storeli.w r21, -2368(r30)
001e6c  e74bafec  storeli.w r10, -2372(r30)
001e70  e70bcfec  storeli.w r12, -2376(r30)
001e74  674bbfed  storeli.w r27, -2380(r30)
001e78  670bcfed  storeli.w r28, -2384(r30)
001e7c  e74a6fed  storeli.w r22, -2388(r30)
001e80  e70adfec  storeli.w r13, -2392(r30)
001e84  e703dfee  storeli.w r13, -2248(r30)
001e88  674aefec  storeli.w r14, -2396(r30)
001e8c  670a7fec  storeli.w r7, -2400(r30)
001e90  e7496fec  storeli.w r6, -2404(r30)
001e94  e7095fec  storeli.w r5, -2408(r30)
001e98  67498fec  storeli.w r8, -2412(r30)
001e9c  67099fec  storeli.w r9, -2416(r30)
001ea0  e7439fee  storeli.w r9, -2244(r30)
001ea4  e7482fec  storeli.w r2, -2420(r30)
001ea8  9f010500  addli r3, r10, 0
001eac  1f0a0c00  addli r20, r24, 0
001eb0  1f020600  addli r4, r12, 0
001eb4  1f050700  addli r10, r14, 0
001eb8  9f8b0000  addli r23, r1, 0
001ebc  00a00000  mfence { lm }
001ec0  67042fee  storeli.w r2, -2240(r30)
001ec4  e7081fec  storeli.w r1, -2424(r30)
001ec8  9f000004  addli r1, zero, 512
001ecc  6301efef  loadli.w r2,  -2064(r30)
001ed0  3f211100  blt.s r2, r1, 72
001ed4  ab0080ff  lui r1, 1046528
001ed8  2b0a80ff  lui r20, 1046528
001edc  ab0a80ff  lui r21, 1046528
001ee0  ab0180ff  lui r3, 1046528
001ee4  2b0280ff  lui r4, 1046528
001ee8  ab0d80ff  lui r27, 1046528
001eec  2b0e80ff  lui r28, 1046528
001ef0  2b0b80ff  lui r22, 1046528
001ef4  2b0580ff  lui r10, 1046528
001ef8  ab0380ff  lui r7, 1046528
001efc  2b0380ff  lui r6, 1046528
001f00  ab0280ff  lui r5, 1046528
001f04  2b0480ff  lui r8, 1046528
001f08  ab0b80ff  lui r23, 1046528
001f0c  e7031fee  storeli.w r1, -2248(r30)
001f10  e7431fee  storeli.w r1, -2244(r30)
001f14  67041fee  storeli.w r1, -2240(r30)
001f18  9f008d00  addli r1, r26, 64
001f1c  9f064000  addli r13, zero, 32
001f20  67428fee  storeli.w r8, -2268(r30)
001f24  e702afee  storeli.w r10, -2264(r30)
001f28  e7427fee  storeli.w r7, -2260(r30)
001f2c  67036fee  storeli.w r6, -2256(r30)
001f30  67435fee  storeli.w r5, -2252(r30)
001f34  e74c1fec  storeli.w r1, -2356(r30)
001f38  9f000d01  addli r1, r26, 128
001f3c  670d1fec  storeli.w r1, -2352(r30)
001f40  9f008d01  addli r1, r26, 192
001f44  674d1fec  storeli.w r1, -2348(r30)
001f48  db0b0000  j 92
001f4c  e3463fee  loadli.w r13,  -2276(r30)
001f50  63090fef  loadli.w r18,  -2176(r30)
001f54  1f8c0c00  addli r24, r25, 0
001f58  9f0b0100  addli r23, r2, 0
001f5c  1f8b0400  addli r22, r9, 0
001f60  1f8e0700  addli r28, r15, 0
001f64  9f0d0d00  addli r27, r26, 0
001f68  1f020700  addli r4, r14, 0
001f6c  9f810200  addli r3, r5, 0
001f70  1f060002  addli r12, zero, 256
001f74  67047fee  storeli.w r7, -2240(r30)
001f78  e7438fee  storeli.w r8, -2244(r30)
001f7c  6742bfee  storeli.w r11, -2268(r30)
001f80  67430fef  storeli.w r16, -2252(r30)
001f84  6703afee  storeli.w r10, -2256(r30)
001f88  e7421fef  storeli.w r17, -2260(r30)
001f8c  e7026fee  storeli.w r6, -2264(r30)
001f90  e7031fee  storeli.w r1, -2248(r30)
001f94  1f0a0c00  addli r20, r24, 0
001f98  9f864600  addli r13, r13, 32
001f9c  9f0a0900  addli r21, r18, 0
001fa0  378ac606  beq r13, r12, 3712
001fa4  9f000ff8  addli r1, r30, -1024
001fa8  92309002  vadd.s.mz vr1{mr1}, zero, vr9
001fac  1f190000  addli r18, zero, 1
001fb0  9f8c0600  addli r25, r13, 0
001fb4  12319002  vadd.s.mz vr2{mr1}, zero, vr9
001fb8  8b92d010  add.s r5, r1, r13
001fbc  7e0109e0  vmmov mr2, r18
001fc0  6bb30200  load.hu r6, 0(r5)
001fc4  ebb32200  load.hu r7, 2(r5)
001fc8  6bb1a201  load.hu r2, 26(r5)
001fcc  ebb0c201  load.hu r1, 28(r5)
001fd0  6bb44200  load.hu r8, 4(r5)
001fd4  ebb46200  load.hu r9, 6(r5)
001fd8  6bb58200  load.hu r10, 8(r5)
001fdc  ebb5a200  load.hu r11, 10(r5)
001fe0  6bb6c200  load.hu r12, 12(r5)
001fe4  ebb6e200  load.hu r13, 14(r5)
001fe8  6bb70201  load.hu r14, 16(r5)
001fec  ebb72201  load.hu r15, 18(r5)
001ff0  6bb84201  load.hu r16, 20(r5)
001ff4  ebb86201  load.hu r17, 22(r5)
001ff8  6bbd8201  load.hu r26, 24(r5)
001ffc  ebb2e201  load.hu r5, 30(r5)
002000  33130318  bfloat2float.rn r6, r6
002004  33110118  bfloat2float.rn r2, r2
002008  b3900018  bfloat2float.rn r1, r1
00200c  ea201334  vor.u.mh vr1{mr2}, r6, vr1
002010  33930318  bfloat2float.rn r6, r7
002014  9f230000  addli r7, zero, 2
002018  fe8103e0  vmmov mr3, r7
00201c  9f430000  addli r7, zero, 4
002020  ea201336  vor.u.mh vr1{mr3}, r6, vr1
002024  33130418  bfloat2float.rn r6, r8
002028  7e8003e0  vmmov mr0, r7
00202c  9f031000  addli r7, zero, 8
002030  ea201330  vor.u.mh vr1{mr0}, r6, vr1
002034  33930418  bfloat2float.rn r6, r9
002038  7e8003e0  vmmov mr0, r7
00203c  9f032000  addli r7, zero, 16
002040  ea201330  vor.u.mh vr1{mr0}, r6, vr1
002044  33130518  bfloat2float.rn r6, r10
002048  7e8003e0  vmmov mr0, r7
00204c  9f034000  addli r7, zero, 32
002050  ea201330  vor.u.mh vr1{mr0}, r6, vr1
002054  33930518  bfloat2float.rn r6, r11
002058  7e8003e0  vmmov mr0, r7
00205c  9f038000  addli r7, zero, 64
002060  ea201330  vor.u.mh vr1{mr0}, r6, vr1
002064  33130618  bfloat2float.rn r6, r12
002068  7e8003e0  vmmov mr0, r7
00206c  9f030001  addli r7, zero, 128
002070  ea201330  vor.u.mh vr1{mr0}, r6, vr1
002074  33930618  bfloat2float.rn r6, r13
002078  7e8003e0  vmmov mr0, r7
00207c  9f030002  addli r7, zero, 256
002080  ea201330  vor.u.mh vr1{mr0}, r6, vr1
002084  33130718  bfloat2float.rn r6, r14
002088  7e8003e0  vmmov mr0, r7
00208c  9f030004  addli r7, zero, 512
002090  ea201330  vor.u.mh vr1{mr0}, r6, vr1
002094  33930718  bfloat2float.rn r6, r15
002098  7e8003e0  vmmov mr0, r7
00209c  9f030008  addli r7, zero, 1024
0020a0  ea201330  vor.u.mh vr1{mr0}, r6, vr1
0020a4  33130818  bfloat2float.rn r6, r16
0020a8  7e8003e0  vmmov mr0, r7
0020ac  9f030010  addli r7, zero, 2048
0020b0  ea201330  vor.u.mh vr1{mr0}, r6, vr1
0020b4  33930818  bfloat2float.rn r6, r17
0020b8  7e8003e0  vmmov mr0, r7
0020bc  9f030020  addli r7, zero, 4096
0020c0  ea201330  vor.u.mh vr1{mr0}, r6, vr1
0020c4  33130d18  bfloat2float.rn r6, r26
0020c8  7e8003e0  vmmov mr0, r7
0020cc  ea201330  vor.u.mh vr1{mr0}, r6, vr1
0020d0  1f030040  addli r6, zero, 8192
0020d4  7e0003e0  vmmov mr0, r6
0020d8  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0020dc  2b410000  lui r2, 4
0020e0  7e0001e0  vmmov mr0, r2
0020e4  1f010ffa  addli r2, r30, -768
0020e8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0020ec  b3900218  bfloat2float.rn r1, r5
0020f0  ab820000  lui r5, 8
0020f4  0b119111  add.s r2, r2, r25
0020f8  e7419fef  storeli.w r25, -2276(r30)
0020fc  7e8002e0  vmmov mr0, r5
002100  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002104  eb300100  load.hu r1, 0(r2)
002108  eb322100  load.hu r5, 2(r2)
00210c  6b334100  load.hu r6, 4(r2)
002110  eb336100  load.hu r7, 6(r2)
002114  6b348100  load.hu r8, 8(r2)
002118  eb34a100  load.hu r9, 10(r2)
00211c  6b35c100  load.hu r10, 12(r2)
002120  eb35e100  load.hu r11, 14(r2)
002124  6b360101  load.hu r12, 16(r2)
002128  eb362101  load.hu r13, 18(r2)
00212c  6b374101  load.hu r14, 20(r2)
002130  eb376101  load.hu r15, 22(r2)
002134  6b388101  load.hu r16, 24(r2)
002138  eb38a101  load.hu r17, 26(r2)
00213c  6b3dc101  load.hu r26, 28(r2)
002140  6b31e101  load.hu r2, 30(r2)
002144  b3900018  bfloat2float.rn r1, r1
002148  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00214c  b3900218  bfloat2float.rn r1, r5
002150  9f420000  addli r5, zero, 4
002154  7e8102e0  vmmov mr2, r5
002158  9f021000  addli r5, zero, 8
00215c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
002160  b3100318  bfloat2float.rn r1, r6
002164  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002168  b3900318  bfloat2float.rn r1, r7
00216c  7e8102e0  vmmov mr2, r5
002170  9f022000  addli r5, zero, 16
002174  ab03807f  lui r7, 522240
002178  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00217c  b3100418  bfloat2float.rn r1, r8
002180  7e8102e0  vmmov mr2, r5
002184  9f024000  addli r5, zero, 32
002188  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00218c  b3900418  bfloat2float.rn r1, r9
002190  7e8102e0  vmmov mr2, r5
002194  9f028000  addli r5, zero, 64
002198  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00219c  b3100518  bfloat2float.rn r1, r10
0021a0  7e8102e0  vmmov mr2, r5
0021a4  9f020001  addli r5, zero, 128
0021a8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0021ac  b3900518  bfloat2float.rn r1, r11
0021b0  7e8102e0  vmmov mr2, r5
0021b4  9f020002  addli r5, zero, 256
0021b8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0021bc  b3100618  bfloat2float.rn r1, r12
0021c0  7e8102e0  vmmov mr2, r5
0021c4  9f020004  addli r5, zero, 512
0021c8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0021cc  b3900618  bfloat2float.rn r1, r13
0021d0  7e8102e0  vmmov mr2, r5
0021d4  9f020008  addli r5, zero, 1024
0021d8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0021dc  b3100718  bfloat2float.rn r1, r14
0021e0  7e8102e0  vmmov mr2, r5
0021e4  9f020010  addli r5, zero, 2048
0021e8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0021ec  b3900718  bfloat2float.rn r1, r15
0021f0  7e8102e0  vmmov mr2, r5
0021f4  9f020020  addli r5, zero, 4096
0021f8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0021fc  b3100818  bfloat2float.rn r1, r16
002200  7e8102e0  vmmov mr2, r5
002204  9f020040  addli r5, zero, 8192
002208  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00220c  b3900818  bfloat2float.rn r1, r17
002210  7e8102e0  vmmov mr2, r5
002214  ab420000  lui r5, 4
002218  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00221c  b3100d18  bfloat2float.rn r1, r26
002220  7e8102e0  vmmov mr2, r5
002224  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002228  b3100118  bfloat2float.rn r1, r2
00222c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
002230  9f000ff4  addli r1, r30, -1536
002234  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
002238  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00223c  00a00000  mfence { lm }
002240  630d0ff4  loadli.w r26,  -1536(r30)
002244  e3420ff4  loadli.w r5,  -1532(r30)
002248  63071ff4  loadli.w r14,  -1528(r30)
00224c  63461ff4  loadli.w r12,  -1524(r30)
002250  e3082ff4  loadli.w r17,  -1520(r30)
002254  e3462ff4  loadli.w r13,  -1516(r30)
002258  e3073ff4  loadli.w r15,  -1512(r30)
00225c  e3443ff4  loadli.w r9,  -1508(r30)
002260  e3004ff4  loadli.w r1,  -1504(r30)
002264  63434ff4  loadli.w r6,  -1500(r30)
002268  63085ff4  loadli.w r16,  -1496(r30)
00226c  63455ff4  loadli.w r10,  -1492(r30)
002270  e3056ff4  loadli.w r11,  -1488(r30)
002274  63446ff4  loadli.w r8,  -1484(r30)
002278  17013d01  and r2, r26, r19
00227c  938c2304  setlt.u r25, r7, r2
002280  e3037ff4  loadli.w r7,  -1480(r30)
002284  63417ff4  loadli.w r2,  -1476(r30)
002288  67027fef  storeli.w r23, -2272(r30)
00228c  3bf00c00  bneq r25, zero, 28
002290  9b4c0d01  srli r25, r26, 16
002294  9b8c1c00  andi r25, r25, 1
002298  8b1c9d11  add.s r25, r26, r25
00229c  634dffef  loadli.w r26,  -2052(r30)
0022a0  0b9dac11  add.s r26, r25, r26
0022a4  db010000  j 12
0022a8  ab0b4000  lui r23, 1024
0022ac  171d7d01  or r26, r26, r23
0022b0  978c3201  and r25, r5, r19
0022b4  ab0b807f  lui r23, 522240
0022b8  938c9b05  setlt.u r25, r23, r25
0022bc  3bf00c00  bneq r25, zero, 28
0022c0  9bcc0201  srli r25, r5, 16
0022c4  9b8c1c00  andi r25, r25, 1
0022c8  8b929211  add.s r5, r5, r25
0022cc  e34cffef  loadli.w r25,  -2052(r30)
0022d0  8b929211  add.s r5, r5, r25
0022d4  db010000  j 12
0022d8  ab0b4000  lui r23, 1024
0022dc  97927201  or r5, r5, r23
0022e0  970c3701  and r25, r14, r19
0022e4  ab0b807f  lui r23, 522240
0022e8  938c9b05  setlt.u r25, r23, r25
0022ec  3bf00c00  bneq r25, zero, 28
0022f0  9b4c0701  srli r25, r14, 16
0022f4  9b8c1c00  andi r25, r25, 1
0022f8  0b179711  add.s r14, r14, r25
0022fc  e34cffef  loadli.w r25,  -2052(r30)
002300  0b179711  add.s r14, r14, r25
002304  db010000  j 12
002308  ab0b4000  lui r23, 1024
00230c  17177701  or r14, r14, r23
002310  970c3601  and r25, r12, r19
002314  ab0b807f  lui r23, 522240
002318  938c9b05  setlt.u r25, r23, r25
00231c  3bf00c00  bneq r25, zero, 28
002320  9b4c0601  srli r25, r12, 16
002324  6349ffef  loadli.w r18,  -2052(r30)
002328  9b8c1c00  andi r25, r25, 1
00232c  0b169611  add.s r12, r12, r25
002330  0b162611  add.s r12, r12, r18
002334  5b020000  j 16
002338  ab0b4000  lui r23, 1024
00233c  6349ffef  loadli.w r18,  -2052(r30)
002340  17167601  or r12, r12, r23
002344  e74ecfec  storeli.w r12, -2324(r30)
002348  17863801  and r12, r17, r19
00234c  ab0b807f  lui r23, 522240
002350  1386cb04  setlt.u r12, r23, r12
002354  3b600600  bneq r12, zero, 24
002358  1bc60801  srli r12, r17, 16
00235c  1b061600  andi r12, r12, 1
002360  0b96c810  add.s r12, r17, r12
002364  0b162611  add.s r12, r12, r18
002368  db010000  j 12
00236c  2b064000  lui r12, 1024
002370  1796c800  or r12, r17, r12
002374  670fcfec  storeli.w r12, -2320(r30)
002378  17863601  and r12, r13, r19
00237c  ab08807f  lui r17, 522240
002380  1386c804  setlt.u r12, r17, r12
002384  3b600600  bneq r12, zero, 24
002388  1bc60601  srli r12, r13, 16
00238c  1b061600  andi r12, r12, 1
002390  0b96c610  add.s r12, r13, r12
002394  0b162611  add.s r12, r12, r18
002398  db010000  j 12
00239c  2b064000  lui r12, 1024
0023a0  1796c600  or r12, r13, r12
0023a4  674fcfec  storeli.w r12, -2316(r30)
0023a8  17863701  and r12, r15, r19
0023ac  e306efef  loadli.w r13,  -2064(r30)
0023b0  1386c804  setlt.u r12, r17, r12
0023b4  3b600600  bneq r12, zero, 24
0023b8  1bc60701  srli r12, r15, 16
0023bc  1b061600  andi r12, r12, 1
0023c0  0b96c710  add.s r12, r15, r12
0023c4  0b162611  add.s r12, r12, r18
0023c8  db010000  j 12
0023cc  2b064000  lui r12, 1024
0023d0  1796c700  or r12, r15, r12
0023d4  6708cfee  storeli.w r12, -2176(r30)
0023d8  17863401  and r12, r9, r19
0023dc  1386c804  setlt.u r12, r17, r12
0023e0  3b600600  bneq r12, zero, 24
0023e4  1bc60401  srli r12, r9, 16
0023e8  1b061600  andi r12, r12, 1
0023ec  8b94c410  add.s r9, r9, r12
0023f0  8b942411  add.s r9, r9, r18
0023f4  db010000  j 12
0023f8  2b064000  lui r12, 1024
0023fc  9794c400  or r9, r9, r12
002400  e70f9fec  storeli.w r9, -2312(r30)
002404  97843001  and r9, r1, r19
002408  63464fee  loadli.w r12,  -2268(r30)
00240c  93849804  setlt.u r9, r17, r9
002410  3be00400  bneq r9, zero, 24
002414  9bc40001  srli r9, r1, 16
002418  9b841400  andi r9, r9, 1
00241c  8b909010  add.s r1, r1, r9
002420  8b902011  add.s r1, r1, r18
002424  db010000  j 12
002428  ab044000  lui r9, 1024
00242c  97909000  or r1, r1, r9
002430  e74f1fec  storeli.w r1, -2308(r30)
002434  97003301  and r1, r6, r19
002438  93801804  setlt.u r1, r17, r1
00243c  3be00000  bneq r1, zero, 24
002440  9b400301  srli r1, r6, 16
002444  9b801000  andi r1, r1, 1
002448  8b101310  add.s r1, r6, r1
00244c  8b902011  add.s r1, r1, r18
002450  db010000  j 12
002454  ab004000  lui r1, 1024
002458  97101300  or r1, r6, r1
00245c  67001fee  storeli.w r1, -2304(r30)
002460  97003801  and r1, r16, r19
002464  93801804  setlt.u r1, r17, r1
002468  3be00000  bneq r1, zero, 24
00246c  9b400801  srli r1, r16, 16
002470  9b801000  andi r1, r1, 1
002474  8b101810  add.s r1, r16, r1
002478  8b902011  add.s r1, r1, r18
00247c  db010000  j 12
002480  ab004000  lui r1, 1024
002484  97101800  or r1, r16, r1
002488  67401fee  storeli.w r1, -2300(r30)
00248c  97003501  and r1, r10, r19
002490  63086fee  loadli.w r16,  -2256(r30)
002494  93801804  setlt.u r1, r17, r1
002498  3be00000  bneq r1, zero, 24
00249c  9b400501  srli r1, r10, 16
0024a0  9b801000  andi r1, r1, 1
0024a4  8b101510  add.s r1, r10, r1
0024a8  8b902011  add.s r1, r1, r18
0024ac  db010000  j 12
0024b0  ab004000  lui r1, 1024
0024b4  97101500  or r1, r10, r1
0024b8  e7001fee  storeli.w r1, -2296(r30)
0024bc  97803501  and r1, r11, r19
0024c0  63455fee  loadli.w r10,  -2260(r30)
0024c4  93801804  setlt.u r1, r17, r1
0024c8  3be00000  bneq r1, zero, 24
0024cc  9bc00501  srli r1, r11, 16
0024d0  9b801000  andi r1, r1, 1
0024d4  8b901510  add.s r1, r11, r1
0024d8  8b902011  add.s r1, r1, r18
0024dc  db010000  j 12
0024e0  ab004000  lui r1, 1024
0024e4  97901500  or r1, r11, r1
0024e8  e7401fee  storeli.w r1, -2292(r30)
0024ec  97003401  and r1, r8, r19
0024f0  e3456fee  loadli.w r11,  -2252(r30)
0024f4  93801804  setlt.u r1, r17, r1
0024f8  3be00000  bneq r1, zero, 24
0024fc  9b400401  srli r1, r8, 16
002500  9b801000  andi r1, r1, 1
002504  8b101410  add.s r1, r8, r1
002508  8b902011  add.s r1, r1, r18
00250c  db010000  j 12
002510  ab004000  lui r1, 1024
002514  97101400  or r1, r8, r1
002518  67011fee  storeli.w r1, -2288(r30)
00251c  97803301  and r1, r7, r19
002520  93801804  setlt.u r1, r17, r1
002524  3be00000  bneq r1, zero, 24
002528  9bc00301  srli r1, r7, 16
00252c  9b801000  andi r1, r1, 1
002530  8b901310  add.s r1, r7, r1
002534  8b902011  add.s r1, r1, r18
002538  db010000  j 12
00253c  ab004000  lui r1, 1024
002540  97901300  or r1, r7, r1
002544  67411fee  storeli.w r1, -2284(r30)
002548  97003101  and r1, r2, r19
00254c  93801804  setlt.u r1, r17, r1
002550  3be00000  bneq r1, zero, 24
002554  9b400101  srli r1, r2, 16
002558  9b801000  andi r1, r1, 1
00255c  8b101110  add.s r1, r2, r1
002560  8b902011  add.s r1, r1, r18
002564  db010000  j 12
002568  ab004000  lui r1, 1024
00256c  97101100  or r1, r2, r1
002570  e7011fee  storeli.w r1, -2280(r30)
002574  ab00ffff  lui r1, 1048560
002578  e3085fee  loadli.w r17,  -2264(r30)
00257c  970c1d00  and r25, r26, r1
002580  9f000a00  addli r1, r20, 0
002584  13e14c05  setlt.f r2, r25, r20
002588  3b200100  bneq r2, zero, 8
00258c  9f800c00  addli r1, r25, 0
002590  1bb19c00  slli r2, r25, 9
002594  1b339a00  slli r6, r20, 9
002598  9b437d01  srli r7, r26, 23
00259c  1b447a01  srli r8, r20, 23
0025a0  13010100  seteq r2, r2, zero
0025a4  13030300  seteq r6, r6, zero
0025a8  9b83f30f  andi r7, r7, 255
0025ac  1b04f40f  andi r8, r8, 255
0025b0  9bf3f30f  setlti r7, r7, 255
0025b4  1b74f40f  setlti r8, r8, 255
0025b8  17912300  or r2, r7, r2
0025bc  17136400  or r6, r8, r6
0025c0  17012300  and r2, r6, r2
0025c4  3b200104  bneq r2, zero, 2056
0025c8  ab00c07f  lui r1, 523264
0025cc  1f010a00  addli r2, r20, 0
0025d0  3b100a04  bneq r20, zero, 2052
0025d4  37a00c00  beq r25, zero, 8
0025d8  9f0c0100  addli r25, r2, 0
0025dc  13611006  setle.f r2, zero, r1
0025e0  13e30006  setle.f r6, r1, zero
0025e4  17012300  and r2, r6, r2
0025e8  3b200100  bneq r2, zero, 8
0025ec  9f8c0000  addli r25, r1, 0
0025f0  9f000004  addli r1, zero, 512
0025f4  3fa01600  blt.s r13, r1, 8
0025f8  9f0c0a00  addli r25, r20, 0
0025fc  ab0bffff  lui r23, 1048560
002600  9f800a00  addli r1, r21, 0
002604  178a7201  and r20, r5, r23
002608  13615a05  setlt.f r2, r20, r21
00260c  3b200100  bneq r2, zero, 8
002610  9f000a00  addli r1, r20, 0
002614  1b319a00  slli r2, r20, 9
002618  1bb39a00  slli r6, r21, 9
00261c  9bc27201  srli r5, r5, 23
002620  9bc37a01  srli r7, r21, 23
002624  1f0c0004  addli r24, zero, 512
002628  13010100  seteq r2, r2, zero
00262c  13030300  seteq r6, r6, zero
002630  9b82f20f  andi r5, r5, 255
002634  9b83f30f  andi r7, r7, 255
002638  9bf2f20f  setlti r5, r5, 255
00263c  9bf3f30f  setlti r7, r7, 255
002640  17912200  or r2, r5, r2
002644  97926300  or r5, r7, r6
002648  17812200  and r2, r5, r2
00264c  3b5e0102  bneq r2, zero, 1940
002650  ab00c07f  lui r1, 523264
002654  1f810a00  addli r2, r21, 0
002658  3bce0a02  bneq r21, zero, 1936
00265c  37200a00  beq r20, zero, 8
002660  1f0a0100  addli r20, r2, 0
002664  13611006  setle.f r2, zero, r1
002668  93e20006  setle.f r5, r1, zero
00266c  17812200  and r2, r5, r2
002670  3b200100  bneq r2, zero, 8
002674  1f8a0000  addli r20, r1, 0
002678  3fa08601  blt.s r13, r24, 8
00267c  1f8a0a00  addli r20, r21, 0
002680  97027701  and r5, r14, r23
002684  9f800100  addli r1, r3, 0
002688  13e13204  setlt.f r2, r5, r3
00268c  3b200100  bneq r2, zero, 8
002690  9f800200  addli r1, r5, 0
002694  1bb19200  slli r2, r5, 9
002698  1bb39100  slli r6, r3, 9
00269c  9b437701  srli r7, r14, 23
0026a0  1bc47101  srli r8, r3, 23
0026a4  63098fee  loadli.w r18,  -2240(r30)
0026a8  13010100  seteq r2, r2, zero
0026ac  13030300  seteq r6, r6, zero
0026b0  9b83f30f  andi r7, r7, 255
0026b4  1b04f40f  andi r8, r8, 255
0026b8  9bf3f30f  setlti r7, r7, 255
0026bc  1b74f40f  setlti r8, r8, 255
0026c0  17912300  or r2, r7, r2
0026c4  17136400  or r6, r8, r6
0026c8  17012300  and r2, r6, r2
0026cc  3b200100  bneq r2, zero, 8
0026d0  ab00c07f  lui r1, 523264
0026d4  63047fee  loadli.w r8,  -2248(r30)
0026d8  1f810100  addli r2, r3, 0
0026dc  37a00100  beq r3, zero, 8
0026e0  1f810000  addli r2, r1, 0
0026e4  37a00200  beq r5, zero, 8
0026e8  9f020100  addli r5, r2, 0
0026ec  13611006  setle.f r2, zero, r1
0026f0  13e30006  setle.f r6, r1, zero
0026f4  17012300  and r2, r6, r2
0026f8  3b200100  bneq r2, zero, 8
0026fc  9f820000  addli r5, r1, 0
002700  6343dfed  loadli.w r6,  -2324(r30)
002704  3fa08601  blt.s r13, r24, 8
002708  9f820100  addli r5, r3, 0
00270c  17077301  and r14, r6, r23
002710  9f000200  addli r1, r4, 0
002714  13614704  setlt.f r2, r14, r4
002718  3b200100  bneq r2, zero, 8
00271c  9f000700  addli r1, r14, 0
002720  1b319700  slli r2, r14, 9
002724  9b319200  slli r3, r4, 9
002728  1b437301  srli r6, r6, 23
00272c  9b437201  srli r7, r4, 23
002730  13010100  seteq r2, r2, zero
002734  93810100  seteq r3, r3, zero
002738  1b03f30f  andi r6, r6, 255
00273c  9b83f30f  andi r7, r7, 255
002740  1b73f30f  setlti r6, r6, 255
002744  9bf3f30f  setlti r7, r7, 255
002748  17112300  or r2, r6, r2
00274c  97913300  or r3, r7, r3
002750  17812100  and r2, r3, r2
002754  bb0a0102  bneq r2, zero, 1696
002758  ab00c07f  lui r1, 523264
00275c  1f010200  addli r2, r4, 0
002760  3b7a0202  bneq r4, zero, 1692
002764  37200700  beq r14, zero, 8
002768  1f070100  addli r14, r2, 0
00276c  13611006  setle.f r2, zero, r1
002770  93e10006  setle.f r3, r1, zero
002774  17812100  and r2, r3, r2
002778  3b200100  bneq r2, zero, 8
00277c  1f870000  addli r14, r1, 0
002780  3fa08601  blt.s r13, r24, 8
002784  1f070200  addli r14, r4, 0
002788  6302efed  loadli.w r4,  -2320(r30)
00278c  9f800d00  addli r1, r27, 0
002790  170d7201  and r26, r4, r23
002794  1361bd05  setlt.f r2, r26, r27
002798  3b200100  bneq r2, zero, 8
00279c  9f000d00  addli r1, r26, 0
0027a0  1b319d00  slli r2, r26, 9
0027a4  9bb19d00  slli r3, r27, 9
0027a8  1b427201  srli r4, r4, 23
0027ac  1bc37d01  srli r6, r27, 23
0027b0  13010100  seteq r2, r2, zero
0027b4  93810100  seteq r3, r3, zero
0027b8  1b02f20f  andi r4, r4, 255
0027bc  1b03f30f  andi r6, r6, 255
0027c0  1b72f20f  setlti r4, r4, 255
0027c4  1b73f30f  setlti r6, r6, 255
0027c8  17112200  or r2, r4, r2
0027cc  97113300  or r3, r6, r3
0027d0  17812100  and r2, r3, r2
0027d4  3b200100  bneq r2, zero, 8
0027d8  ab00c07f  lui r1, 523264
0027dc  6342efed  loadli.w r4,  -2316(r30)
0027e0  1f810d00  addli r2, r27, 0
0027e4  37a00d00  beq r27, zero, 8
0027e8  1f810000  addli r2, r1, 0
0027ec  37200d00  beq r26, zero, 8
0027f0  1f0d0100  addli r26, r2, 0
0027f4  13611006  setle.f r2, zero, r1
0027f8  93e10006  setle.f r3, r1, zero
0027fc  17812100  and r2, r3, r2
002800  3b200100  bneq r2, zero, 8
002804  1f8d0000  addli r26, r1, 0
002808  3fa08601  blt.s r13, r24, 8
00280c  1f8d0d00  addli r26, r27, 0
002810  97077201  and r15, r4, r23
002814  9f000e00  addli r1, r28, 0
002818  13e1c705  setlt.f r2, r15, r28
00281c  3b200100  bneq r2, zero, 8
002820  9f800700  addli r1, r15, 0
002824  1bb19700  slli r2, r15, 9
002828  9b319e00  slli r3, r28, 9
00282c  1b427201  srli r4, r4, 23
002830  1b437e01  srli r6, r28, 23
002834  13010100  seteq r2, r2, zero
002838  93810100  seteq r3, r3, zero
00283c  1b02f20f  andi r4, r4, 255
002840  1b03f30f  andi r6, r6, 255
002844  1b72f20f  setlti r4, r4, 255
002848  1b73f30f  setlti r6, r6, 255
00284c  17112200  or r2, r4, r2
002850  97113300  or r3, r6, r3
002854  17812100  and r2, r3, r2
002858  3b200100  bneq r2, zero, 8
00285c  ab00c07f  lui r1, 523264
002860  63020fef  loadli.w r4,  -2176(r30)
002864  1f010e00  addli r2, r28, 0
002868  37200e00  beq r28, zero, 8
00286c  1f810000  addli r2, r1, 0
002870  37a00700  beq r15, zero, 8
002874  9f070100  addli r15, r2, 0
002878  13611006  setle.f r2, zero, r1
00287c  93e10006  setle.f r3, r1, zero
002880  17812100  and r2, r3, r2
002884  3b200100  bneq r2, zero, 8
002888  9f870000  addli r15, r1, 0
00288c  3fa08601  blt.s r13, r24, 8
002890  9f070e00  addli r15, r28, 0
002894  97047201  and r9, r4, r23
002898  9f000b00  addli r1, r22, 0
00289c  13e16405  setlt.f r2, r9, r22
0028a0  3b200100  bneq r2, zero, 8
0028a4  9f800400  addli r1, r9, 0
0028a8  1bb19400  slli r2, r9, 9
0028ac  9b319b00  slli r3, r22, 9
0028b0  1b427201  srli r4, r4, 23
0028b4  1b437b01  srli r6, r22, 23
0028b8  13010100  seteq r2, r2, zero
0028bc  93810100  seteq r3, r3, zero
0028c0  1b02f20f  andi r4, r4, 255
0028c4  1b03f30f  andi r6, r6, 255
0028c8  1b72f20f  setlti r4, r4, 255
0028cc  1b73f30f  setlti r6, r6, 255
0028d0  17112200  or r2, r4, r2
0028d4  97113300  or r3, r6, r3
0028d8  17812100  and r2, r3, r2
0028dc  3b200100  bneq r2, zero, 8
0028e0  ab00c07f  lui r1, 523264
0028e4  6303ffed  loadli.w r6,  -2312(r30)
0028e8  1f010b00  addli r2, r22, 0
0028ec  37200b00  beq r22, zero, 8
0028f0  1f810000  addli r2, r1, 0
0028f4  37a00400  beq r9, zero, 8
0028f8  9f040100  addli r9, r2, 0
0028fc  13611006  setle.f r2, zero, r1
002900  93e10006  setle.f r3, r1, zero
002904  17812100  and r2, r3, r2
002908  3b200100  bneq r2, zero, 8
00290c  9f840000  addli r9, r1, 0
002910  3fa08601  blt.s r13, r24, 8
002914  9f040b00  addli r9, r22, 0
002918  97007301  and r1, r6, r23
00291c  1f010400  addli r2, r8, 0
002920  67084fef  storeli.w r20, -2176(r30)
002924  93e18004  setlt.f r3, r1, r8
002928  3ba00100  bneq r3, zero, 8
00292c  1f810000  addli r2, r1, 0
002930  9bb19000  slli r3, r1, 9
002934  1b329400  slli r4, r8, 9
002938  1b437301  srli r6, r6, 23
00293c  9b437401  srli r7, r8, 23
002940  634a7fee  loadli.w r20,  -2244(r30)
002944  93810100  seteq r3, r3, zero
002948  13020200  seteq r4, r4, zero
00294c  1b03f30f  andi r6, r6, 255
002950  9b83f30f  andi r7, r7, 255
002954  1b73f30f  setlti r6, r6, 255
002958  9bf3f30f  setlti r7, r7, 255
00295c  97113300  or r3, r6, r3
002960  17924300  or r4, r7, r4
002964  97013200  and r3, r4, r3
002968  3ba00100  bneq r3, zero, 8
00296c  2b01c07f  lui r2, 523264
002970  e343ffed  loadli.w r7,  -2308(r30)
002974  9f010400  addli r3, r8, 0
002978  37200400  beq r8, zero, 8
00297c  9f010100  addli r3, r2, 0
002980  37a00000  beq r1, zero, 8
002984  9f800100  addli r1, r3, 0
002988  93612006  setle.f r3, zero, r2
00298c  13620106  setle.f r4, r2, zero
002990  97013200  and r3, r4, r3
002994  3ba00100  bneq r3, zero, 8
002998  9f000100  addli r1, r2, 0
00299c  3fa08601  blt.s r13, r24, 8
0029a0  9f000400  addli r1, r8, 0
0029a4  17837301  and r6, r7, r23
0029a8  1f810800  addli r2, r17, 0
0029ac  93611305  setlt.f r3, r6, r17
0029b0  3ba00100  bneq r3, zero, 8
0029b4  1f010300  addli r2, r6, 0
0029b8  9b319300  slli r3, r6, 9
0029bc  1bb29800  slli r4, r17, 9
0029c0  9bc37301  srli r7, r7, 23
0029c4  1bc47801  srli r8, r17, 23
0029c8  93810100  seteq r3, r3, zero
0029cc  13020200  seteq r4, r4, zero
0029d0  9b83f30f  andi r7, r7, 255
0029d4  1b04f40f  andi r8, r8, 255
0029d8  9bf3f30f  setlti r7, r7, 255
0029dc  1b74f40f  setlti r8, r8, 255
0029e0  97913300  or r3, r7, r3
0029e4  17124400  or r4, r8, r4
0029e8  97013200  and r3, r4, r3
0029ec  3ba00100  bneq r3, zero, 8
0029f0  2b01c07f  lui r2, 523264
0029f4  e3030fee  loadli.w r7,  -2304(r30)
0029f8  9f810800  addli r3, r17, 0
0029fc  37a00800  beq r17, zero, 8
002a00  9f010100  addli r3, r2, 0
002a04  37200300  beq r6, zero, 8
002a08  1f830100  addli r6, r3, 0
002a0c  93612006  setle.f r3, zero, r2
002a10  13620106  setle.f r4, r2, zero
002a14  97013200  and r3, r4, r3
002a18  3ba00100  bneq r3, zero, 8
002a1c  1f030100  addli r6, r2, 0
002a20  3fa08601  blt.s r13, r24, 8
002a24  1f830800  addli r6, r17, 0
002a28  97887301  and r17, r7, r23
002a2c  1f010500  addli r2, r10, 0
002a30  93e1a804  setlt.f r3, r17, r10
002a34  3ba00100  bneq r3, zero, 8
002a38  1f810800  addli r2, r17, 0
002a3c  9bb19800  slli r3, r17, 9
002a40  1b329500  slli r4, r10, 9
002a44  9bc37301  srli r7, r7, 23
002a48  1b447501  srli r8, r10, 23
002a4c  93810100  seteq r3, r3, zero
002a50  13020200  seteq r4, r4, zero
002a54  9b83f30f  andi r7, r7, 255
002a58  1b04f40f  andi r8, r8, 255
002a5c  9bf3f30f  setlti r7, r7, 255
002a60  1b74f40f  setlti r8, r8, 255
002a64  97913300  or r3, r7, r3
002a68  17124400  or r4, r8, r4
002a6c  97013200  and r3, r4, r3
002a70  3ba00100  bneq r3, zero, 8
002a74  2b01c07f  lui r2, 523264
002a78  e3430fee  loadli.w r7,  -2300(r30)
002a7c  9f010500  addli r3, r10, 0
002a80  37200500  beq r10, zero, 8
002a84  9f010100  addli r3, r2, 0
002a88  37a00800  beq r17, zero, 8
002a8c  9f880100  addli r17, r3, 0
002a90  93612006  setle.f r3, zero, r2
002a94  13620106  setle.f r4, r2, zero
002a98  97013200  and r3, r4, r3
002a9c  3ba00100  bneq r3, zero, 8
002aa0  9f080100  addli r17, r2, 0
002aa4  3fa08601  blt.s r13, r24, 8
002aa8  9f080500  addli r17, r10, 0
002aac  17857301  and r10, r7, r23
002ab0  1f010800  addli r2, r16, 0
002ab4  93610505  setlt.f r3, r10, r16
002ab8  3ba00100  bneq r3, zero, 8
002abc  1f010500  addli r2, r10, 0
002ac0  9b319500  slli r3, r10, 9
002ac4  1b329800  slli r4, r16, 9
002ac8  9bc37301  srli r7, r7, 23
002acc  1b447801  srli r8, r16, 23
002ad0  93810100  seteq r3, r3, zero
002ad4  13020200  seteq r4, r4, zero
002ad8  9b83f30f  andi r7, r7, 255
002adc  1b04f40f  andi r8, r8, 255
002ae0  9bf3f30f  setlti r7, r7, 255
002ae4  1b74f40f  setlti r8, r8, 255
002ae8  97913300  or r3, r7, r3
002aec  17124400  or r4, r8, r4
002af0  97013200  and r3, r4, r3
002af4  3ba00100  bneq r3, zero, 8
002af8  2b01c07f  lui r2, 523264
002afc  e3031fee  loadli.w r7,  -2296(r30)
002b00  9f010800  addli r3, r16, 0
002b04  37200800  beq r16, zero, 8
002b08  9f010100  addli r3, r2, 0
002b0c  37200500  beq r10, zero, 8
002b10  1f850100  addli r10, r3, 0
002b14  93612006  setle.f r3, zero, r2
002b18  13620106  setle.f r4, r2, zero
002b1c  97013200  and r3, r4, r3
002b20  3ba00100  bneq r3, zero, 8
002b24  1f050100  addli r10, r2, 0
002b28  3fa08601  blt.s r13, r24, 8
002b2c  1f050800  addli r10, r16, 0
002b30  17887301  and r16, r7, r23
002b34  1f810500  addli r2, r11, 0
002b38  9361b804  setlt.f r3, r16, r11
002b3c  3ba00100  bneq r3, zero, 8
002b40  1f010800  addli r2, r16, 0
002b44  9b319800  slli r3, r16, 9
002b48  1bb29500  slli r4, r11, 9
002b4c  9bc37301  srli r7, r7, 23
002b50  1bc47501  srli r8, r11, 23
002b54  93810100  seteq r3, r3, zero
002b58  13020200  seteq r4, r4, zero
002b5c  9b83f30f  andi r7, r7, 255
002b60  1b04f40f  andi r8, r8, 255
002b64  9bf3f30f  setlti r7, r7, 255
002b68  1b74f40f  setlti r8, r8, 255
002b6c  97913300  or r3, r7, r3
002b70  17124400  or r4, r8, r4
002b74  97013200  and r3, r4, r3
002b78  3ba00100  bneq r3, zero, 8
002b7c  2b01c07f  lui r2, 523264
002b80  e3431fee  loadli.w r7,  -2292(r30)
002b84  9f810500  addli r3, r11, 0
002b88  37a00500  beq r11, zero, 8
002b8c  9f010100  addli r3, r2, 0
002b90  37200800  beq r16, zero, 8
002b94  1f880100  addli r16, r3, 0
002b98  93612006  setle.f r3, zero, r2
002b9c  13620106  setle.f r4, r2, zero
002ba0  97013200  and r3, r4, r3
002ba4  3ba00100  bneq r3, zero, 8
002ba8  1f080100  addli r16, r2, 0
002bac  3fa08601  blt.s r13, r24, 8
002bb0  1f880500  addli r16, r11, 0
002bb4  97857301  and r11, r7, r23
002bb8  1f010600  addli r2, r12, 0
002bbc  93e1c504  setlt.f r3, r11, r12
002bc0  3ba00100  bneq r3, zero, 8
002bc4  1f810500  addli r2, r11, 0
002bc8  9bb19500  slli r3, r11, 9
002bcc  1b329600  slli r4, r12, 9
002bd0  9bc37301  srli r7, r7, 23
002bd4  1b447601  srli r8, r12, 23
002bd8  93810100  seteq r3, r3, zero
002bdc  13020200  seteq r4, r4, zero
002be0  9b83f30f  andi r7, r7, 255
002be4  1b04f40f  andi r8, r8, 255
002be8  9bf3f30f  setlti r7, r7, 255
002bec  1b74f40f  setlti r8, r8, 255
002bf0  97913300  or r3, r7, r3
002bf4  17124400  or r4, r8, r4
002bf8  97013200  and r3, r4, r3
002bfc  3ba00100  bneq r3, zero, 8
002c00  2b01c07f  lui r2, 523264
002c04  e3032fee  loadli.w r7,  -2288(r30)
002c08  9f010600  addli r3, r12, 0
002c0c  37200600  beq r12, zero, 8
002c10  9f010100  addli r3, r2, 0
002c14  37a00500  beq r11, zero, 8
002c18  9f850100  addli r11, r3, 0
002c1c  93612006  setle.f r3, zero, r2
002c20  13620106  setle.f r4, r2, zero
002c24  97013200  and r3, r4, r3
002c28  3ba00100  bneq r3, zero, 8
002c2c  9f050100  addli r11, r2, 0
002c30  3fa08601  blt.s r13, r24, 8
002c34  9f050600  addli r11, r12, 0
002c38  17847301  and r8, r7, r23
002c3c  1f010a00  addli r2, r20, 0
002c40  93614405  setlt.f r3, r8, r20
002c44  3ba00100  bneq r3, zero, 8
002c48  1f010400  addli r2, r8, 0
002c4c  9b319400  slli r3, r8, 9
002c50  1b329a00  slli r4, r20, 9
002c54  9bc37301  srli r7, r7, 23
002c58  1b467a01  srli r12, r20, 23
002c5c  93810100  seteq r3, r3, zero
002c60  13020200  seteq r4, r4, zero
002c64  9b83f30f  andi r7, r7, 255
002c68  1b06f60f  andi r12, r12, 255
002c6c  9bf3f30f  setlti r7, r7, 255
002c70  1b76f60f  setlti r12, r12, 255
002c74  97913300  or r3, r7, r3
002c78  17124600  or r4, r12, r4
002c7c  97013200  and r3, r4, r3
002c80  3ba00100  bneq r3, zero, 8
002c84  2b01c07f  lui r2, 523264
002c88  63462fee  loadli.w r12,  -2284(r30)
002c8c  9f010a00  addli r3, r20, 0
002c90  37200a00  beq r20, zero, 8
002c94  9f010100  addli r3, r2, 0
002c98  37200400  beq r8, zero, 8
002c9c  1f840100  addli r8, r3, 0
002ca0  93612006  setle.f r3, zero, r2
002ca4  13620106  setle.f r4, r2, zero
002ca8  97013200  and r3, r4, r3
002cac  3ba00100  bneq r3, zero, 8
002cb0  1f040100  addli r8, r2, 0
002cb4  3fa08601  blt.s r13, r24, 8
002cb8  1f040a00  addli r8, r20, 0
002cbc  97037601  and r7, r12, r23
002cc0  1f010900  addli r2, r18, 0
002cc4  93e12305  setlt.f r3, r7, r18
002cc8  3ba00100  bneq r3, zero, 8
002ccc  1f810300  addli r2, r7, 0
002cd0  9bb19300  slli r3, r7, 9
002cd4  1b329900  slli r4, r18, 9
002cd8  1b467601  srli r12, r12, 23
002cdc  9b467901  srli r13, r18, 23
002ce0  93810100  seteq r3, r3, zero
002ce4  13020200  seteq r4, r4, zero
002ce8  1b06f60f  andi r12, r12, 255
002cec  9b86f60f  andi r13, r13, 255
002cf0  1b76f60f  setlti r12, r12, 255
002cf4  9bf6f60f  setlti r13, r13, 255
002cf8  97113600  or r3, r12, r3
002cfc  17924600  or r4, r13, r4
002d00  97013200  and r3, r4, r3
002d04  3ba00100  bneq r3, zero, 8
002d08  2b01c07f  lui r2, 523264
002d0c  e3063fee  loadli.w r13,  -2280(r30)
002d10  9f010900  addli r3, r18, 0
002d14  37200900  beq r18, zero, 8
002d18  9f010100  addli r3, r2, 0
002d1c  6306efef  loadli.w r12,  -2064(r30)
002d20  37a00300  beq r7, zero, 8
002d24  9f830100  addli r7, r3, 0
002d28  93612006  setle.f r3, zero, r2
002d2c  13620106  setle.f r4, r2, zero
002d30  97013200  and r3, r4, r3
002d34  3ba00100  bneq r3, zero, 8
002d38  9f030100  addli r7, r2, 0
002d3c  3f208601  blt.s r12, r24, 8
002d40  9f030900  addli r7, r18, 0
002d44  630a4fee  loadli.w r20,  -2272(r30)
002d48  17817601  and r2, r13, r23
002d4c  13624105  setlt.f r4, r2, r20
002d50  9f010a00  addli r3, r20, 0
002d54  3b200200  bneq r4, zero, 8
002d58  9f010100  addli r3, r2, 0
002d5c  1b329100  slli r4, r2, 9
002d60  1b369a00  slli r12, r20, 9
002d64  9bc67601  srli r13, r13, 23
002d68  1b497a01  srli r18, r20, 23
002d6c  13020200  seteq r4, r4, zero
002d70  13060600  seteq r12, r12, zero
002d74  9b86f60f  andi r13, r13, 255
002d78  1b09f90f  andi r18, r18, 255
002d7c  9bf6f60f  setlti r13, r13, 255
002d80  1b79f90f  setlti r18, r18, 255
002d84  17924600  or r4, r13, r4
002d88  1716c900  or r12, r18, r12
002d8c  17024600  and r4, r12, r4
002d90  bb610200  bneq r4, zero, 120
002d94  ab01c07f  lui r3, 523264
002d98  1f020a00  addli r4, r20, 0
002d9c  bb510a00  bneq r20, zero, 116
002da0  e306efef  loadli.w r13,  -2064(r30)
002da4  37200100  beq r2, zero, 8
002da8  1f010200  addli r2, r4, 0
002dac  13623006  setle.f r4, zero, r3
002db0  13e60106  setle.f r12, r3, zero
002db4  17024600  and r4, r12, r4
002db8  3b200200  bneq r4, zero, 8
002dbc  1f810100  addli r2, r3, 0
002dc0  3fb686f9  blt.s r13, r24, -3700
002dc4  1f010a00  addli r2, r20, 0
002dc8  db30feff  j -3708
002dcc  1f010a00  addli r2, r20, 0
002dd0  37100afc  beq r20, zero, -2044
002dd4  1f810000  addli r2, r1, 0
002dd8  3b800cfc  bneq r25, zero, -2048
002ddc  5b00ffff  j -2048
002de0  1f810a00  addli r2, r21, 0
002de4  b7e10afc  beq r21, zero, -1928
002de8  1f810000  addli r2, r1, 0
002dec  bb510afc  bneq r20, zero, -1932
002df0  db0effff  j -1932
002df4  1f010200  addli r2, r4, 0
002df8  b73502fc  beq r4, zero, -1684
002dfc  1f810000  addli r2, r1, 0
002e00  bb2507fc  bneq r14, zero, -1688
002e04  5b2dffff  j -1688
002e08  1f020a00  addli r4, r20, 0
002e0c  375e0afe  beq r20, zero, -108
002e10  1f820100  addli r4, r3, 0
002e14  e306efef  loadli.w r13,  -2064(r30)
002e18  3b4e01fe  bneq r2, zero, -112
002e1c  5bf2ffff  j -112
002e20  13628905  setlt.f r4, r18, r24
002e24  9f010c00  addli r3, r24, 0
002e28  1f0a0c00  addli r20, r24, 0
002e2c  3b200200  bneq r4, zero, 8
002e30  9f010900  addli r3, r18, 0
002e34  1b329900  slli r4, r18, 9
002e38  1b369a00  slli r12, r20, 9
002e3c  9b467901  srli r13, r18, 23
002e40  1b497a01  srli r18, r20, 23
002e44  2b0cffff  lui r24, 1048560
002e48  13020200  seteq r4, r4, zero
002e4c  13060600  seteq r12, r12, zero
002e50  9b86f60f  andi r13, r13, 255
002e54  1b09f90f  andi r18, r18, 255
002e58  9bf6f60f  setlti r13, r13, 255
002e5c  1b79f90f  setlti r18, r18, 255
002e60  17924600  or r4, r13, r4
002e64  1716c900  or r12, r18, r12
002e68  17024600  and r4, r12, r4
002e6c  bb760204  bneq r4, zero, 2492
002e70  ab01c07f  lui r3, 523264
002e74  bb660a04  bneq r20, zero, 2488
002e78  63020fef  loadli.w r4,  -2176(r30)
002e7c  37200200  beq r4, zero, 8
002e80  67084fef  storeli.w r20, -2176(r30)
002e84  13623006  setle.f r4, zero, r3
002e88  13e60106  setle.f r12, r3, zero
002e8c  630a0fef  loadli.w r20,  -2176(r30)
002e90  17024600  and r4, r12, r4
002e94  3b200200  bneq r4, zero, 8
002e98  1f8a0100  addli r20, r3, 0
002e9c  13e24205  setlt.f r4, r5, r20
002ea0  9f010a00  addli r3, r20, 0
002ea4  3b200200  bneq r4, zero, 8
002ea8  9f810200  addli r3, r5, 0
002eac  1b329a00  slli r4, r20, 9
002eb0  1bb69200  slli r12, r5, 9
002eb4  9b467a01  srli r13, r20, 23
002eb8  1bc97201  srli r18, r5, 23
002ebc  13020200  seteq r4, r4, zero
002ec0  13060600  seteq r12, r12, zero
002ec4  9b86f60f  andi r13, r13, 255
002ec8  1b09f90f  andi r18, r18, 255
002ecc  9bf6f60f  setlti r13, r13, 255
002ed0  1b79f90f  setlti r18, r18, 255
002ed4  17924600  or r4, r13, r4
002ed8  1716c900  or r12, r18, r12
002edc  1702c200  and r4, r4, r12
002ee0  3b750204  bneq r4, zero, 2396
002ee4  ab01c07f  lui r3, 523264
002ee8  3b650a04  bneq r20, zero, 2392
002eec  37a00200  beq r5, zero, 8
002ef0  9f020a00  addli r5, r20, 0
002ef4  13623006  setle.f r4, zero, r3
002ef8  13e60106  setle.f r12, r3, zero
002efc  17024600  and r4, r12, r4
002f00  3b200200  bneq r4, zero, 8
002f04  9f820100  addli r5, r3, 0
002f08  13625704  setlt.f r4, r14, r5
002f0c  9f810200  addli r3, r5, 0
002f10  3b200200  bneq r4, zero, 8
002f14  9f010700  addli r3, r14, 0
002f18  1bb29200  slli r4, r5, 9
002f1c  1b369700  slli r12, r14, 9
002f20  9bc67201  srli r13, r5, 23
002f24  1b497701  srli r18, r14, 23
002f28  13020200  seteq r4, r4, zero
002f2c  13060600  seteq r12, r12, zero
002f30  9b86f60f  andi r13, r13, 255
002f34  1b09f90f  andi r18, r18, 255
002f38  9bf6f60f  setlti r13, r13, 255
002f3c  1b79f90f  setlti r18, r18, 255
002f40  17924600  or r4, r13, r4
002f44  1716c900  or r12, r18, r12
002f48  1702c200  and r4, r4, r12
002f4c  3b040204  bneq r4, zero, 2304
002f50  ab01c07f  lui r3, 523264
002f54  bbf30204  bneq r5, zero, 2300
002f58  37200700  beq r14, zero, 8
002f5c  1f870200  addli r14, r5, 0
002f60  13623006  setle.f r4, zero, r3
002f64  93e20106  setle.f r5, r3, zero
002f68  17824200  and r4, r5, r4
002f6c  3b200200  bneq r4, zero, 8
002f70  1f870100  addli r14, r3, 0
002f74  1362ed04  setlt.f r4, r26, r14
002f78  9f010700  addli r3, r14, 0
002f7c  3b200200  bneq r4, zero, 8
002f80  9f010d00  addli r3, r26, 0
002f84  1b329700  slli r4, r14, 9
002f88  9b329d00  slli r5, r26, 9
002f8c  1b467701  srli r12, r14, 23
002f90  9b467d01  srli r13, r26, 23
002f94  13020200  seteq r4, r4, zero
002f98  93820200  seteq r5, r5, zero
002f9c  1b06f60f  andi r12, r12, 255
002fa0  9b86f60f  andi r13, r13, 255
002fa4  1b76f60f  setlti r12, r12, 255
002fa8  9bf6f60f  setlti r13, r13, 255
002fac  17124600  or r4, r12, r4
002fb0  97925600  or r5, r13, r5
002fb4  17025200  and r4, r4, r5
002fb8  bb120204  bneq r4, zero, 2212
002fbc  ab01c07f  lui r3, 523264
002fc0  bb020704  bneq r14, zero, 2208
002fc4  37200d00  beq r26, zero, 8
002fc8  1f0d0700  addli r26, r14, 0
002fcc  13623006  setle.f r4, zero, r3
002fd0  93e20106  setle.f r5, r3, zero
002fd4  17824200  and r4, r5, r4
002fd8  3b200200  bneq r4, zero, 8
002fdc  1f8d0100  addli r26, r3, 0
002fe0  13e2a705  setlt.f r4, r15, r26
002fe4  9f010d00  addli r3, r26, 0
002fe8  3b200200  bneq r4, zero, 8
002fec  9f810700  addli r3, r15, 0
002ff0  1b329d00  slli r4, r26, 9
002ff4  9bb29700  slli r5, r15, 9
002ff8  1b467d01  srli r12, r26, 23
002ffc  9bc67701  srli r13, r15, 23
003000  13020200  seteq r4, r4, zero
003004  93820200  seteq r5, r5, zero
003008  1b06f60f  andi r12, r12, 255
00300c  9b86f60f  andi r13, r13, 255
003010  1b76f60f  setlti r12, r12, 255
003014  9bf6f60f  setlti r13, r13, 255
003018  17124600  or r4, r12, r4
00301c  97925600  or r5, r13, r5
003020  17025200  and r4, r4, r5
003024  3b210204  bneq r4, zero, 2120
003028  ab01c07f  lui r3, 523264
00302c  3b110d04  bneq r26, zero, 2116
003030  37a00700  beq r15, zero, 8
003034  9f070d00  addli r15, r26, 0
003038  13623006  setle.f r4, zero, r3
00303c  93e20106  setle.f r5, r3, zero
003040  17824200  and r4, r5, r4
003044  3b200200  bneq r4, zero, 8
003048  9f870100  addli r15, r3, 0
00304c  13e2f404  setlt.f r4, r9, r15
003050  9f810700  addli r3, r15, 0
003054  1f0d0ff8  addli r26, r30, -1024
003058  3b200200  bneq r4, zero, 8
00305c  9f810400  addli r3, r9, 0
003060  1bb29700  slli r4, r15, 9
003064  9bb29400  slli r5, r9, 9
003068  1bc67701  srli r12, r15, 23
00306c  9bc67401  srli r13, r9, 23
003070  13020200  seteq r4, r4, zero
003074  93820200  seteq r5, r5, zero
003078  1b06f60f  andi r12, r12, 255
00307c  9b86f60f  andi r13, r13, 255
003080  1b76f60f  setlti r12, r12, 255
003084  9bf6f60f  setlti r13, r13, 255
003088  17124600  or r4, r12, r4
00308c  97925600  or r5, r13, r5
003090  17025200  and r4, r4, r5
003094  bb2f0202  bneq r4, zero, 2024
003098  ab01c07f  lui r3, 523264
00309c  bb9f0702  bneq r15, zero, 2020
0030a0  37a00400  beq r9, zero, 8
0030a4  9f840700  addli r9, r15, 0
0030a8  13623006  setle.f r4, zero, r3
0030ac  93e20106  setle.f r5, r3, zero
0030b0  17824200  and r4, r5, r4
0030b4  3b200200  bneq r4, zero, 8
0030b8  9f840100  addli r9, r3, 0
0030bc  13e29004  setlt.f r4, r1, r9
0030c0  9f810400  addli r3, r9, 0
0030c4  9f070002  addli r15, zero, 256
0030c8  3b200200  bneq r4, zero, 8
0030cc  9f810000  addli r3, r1, 0
0030d0  1bb29400  slli r4, r9, 9
0030d4  9bb29000  slli r5, r1, 9
0030d8  1bc67401  srli r12, r9, 23
0030dc  9bc67001  srli r13, r1, 23
0030e0  13020200  seteq r4, r4, zero
0030e4  93820200  seteq r5, r5, zero
0030e8  1b06f60f  andi r12, r12, 255
0030ec  9b86f60f  andi r13, r13, 255
0030f0  1b76f60f  setlti r12, r12, 255
0030f4  9bf6f60f  setlti r13, r13, 255
0030f8  17124600  or r4, r12, r4
0030fc  97925600  or r5, r13, r5
003100  17025200  and r4, r4, r5
003104  3b2e0202  bneq r4, zero, 1928
003108  ab01c07f  lui r3, 523264
00310c  e346efe8  loadli.w r13,  -2956(r30)
003110  3b9e0402  bneq r9, zero, 1924
003114  37a00000  beq r1, zero, 8
003118  9f800400  addli r1, r9, 0
00311c  13623006  setle.f r4, zero, r3
003120  93e20106  setle.f r5, r3, zero
003124  17824200  and r4, r5, r4
003128  3b200200  bneq r4, zero, 8
00312c  9f800100  addli r1, r3, 0
003130  13621304  setlt.f r4, r6, r1
003134  9f810000  addli r3, r1, 0
003138  3b200200  bneq r4, zero, 8
00313c  9f010300  addli r3, r6, 0
003140  1bb29000  slli r4, r1, 9
003144  9b329300  slli r5, r6, 9
003148  9bc47001  srli r9, r1, 23
00314c  1b467301  srli r12, r6, 23
003150  13020200  seteq r4, r4, zero
003154  93820200  seteq r5, r5, zero
003158  9b84f40f  andi r9, r9, 255
00315c  1b06f60f  andi r12, r12, 255
003160  9bf4f40f  setlti r9, r9, 255
003164  1b76f60f  setlti r12, r12, 255
003168  17924400  or r4, r9, r4
00316c  97125600  or r5, r12, r5
003170  17025200  and r4, r4, r5
003174  bb3c0202  bneq r4, zero, 1836
003178  ab01c07f  lui r3, 523264
00317c  6306dfed  loadli.w r12,  -2328(r30)
003180  bbac0002  bneq r1, zero, 1832
003184  37200300  beq r6, zero, 8
003188  1f830000  addli r6, r1, 0
00318c  93603006  setle.f r1, zero, r3
003190  13e20106  setle.f r4, r3, zero
003194  97001200  and r1, r4, r1
003198  3ba00000  bneq r1, zero, 8
00319c  1f830100  addli r6, r3, 0
0031a0  93e16804  setlt.f r3, r17, r6
0031a4  9f000300  addli r1, r6, 0
0031a8  3ba00100  bneq r3, zero, 8
0031ac  9f800800  addli r1, r17, 0
0031b0  9b319300  slli r3, r6, 9
0031b4  1bb29800  slli r4, r17, 9
0031b8  9b427301  srli r5, r6, 23
0031bc  9bc47801  srli r9, r17, 23
0031c0  93810100  seteq r3, r3, zero
0031c4  13020200  seteq r4, r4, zero
0031c8  9b82f20f  andi r5, r5, 255
0031cc  9b84f40f  andi r9, r9, 255
0031d0  9bf2f20f  setlti r5, r5, 255
0031d4  9bf4f40f  setlti r9, r9, 255
0031d8  97913200  or r3, r5, r3
0031dc  17924400  or r4, r9, r4
0031e0  97814100  and r3, r3, r4
0031e4  3bcb0102  bneq r3, zero, 1744
0031e8  ab00c07f  lui r1, 523264
0031ec  3b3b0302  bneq r6, zero, 1740
0031f0  37a00800  beq r17, zero, 8
0031f4  9f080300  addli r17, r6, 0
0031f8  93611006  setle.f r3, zero, r1
0031fc  13e20006  setle.f r4, r1, zero
003200  97013200  and r3, r4, r3
003204  3ba00100  bneq r3, zero, 8
003208  9f880000  addli r17, r1, 0
00320c  93611505  setlt.f r3, r10, r17
003210  9f800800  addli r1, r17, 0
003214  3ba00100  bneq r3, zero, 8
003218  9f000500  addli r1, r10, 0
00321c  9bb19800  slli r3, r17, 9
003220  1b329500  slli r4, r10, 9
003224  9bc27801  srli r5, r17, 23
003228  1b437501  srli r6, r10, 23
00322c  93810100  seteq r3, r3, zero
003230  13020200  seteq r4, r4, zero
003234  9b82f20f  andi r5, r5, 255
003238  1b03f30f  andi r6, r6, 255
00323c  9bf2f20f  setlti r5, r5, 255
003240  1b73f30f  setlti r6, r6, 255
003244  97913200  or r3, r5, r3
003248  17124300  or r4, r6, r4
00324c  97814100  and r3, r3, r4
003250  bbd90102  bneq r3, zero, 1652
003254  ab00c07f  lui r1, 523264
003258  bbc90802  bneq r17, zero, 1648
00325c  37200500  beq r10, zero, 8
003260  1f850800  addli r10, r17, 0
003264  93611006  setle.f r3, zero, r1
003268  13e20006  setle.f r4, r1, zero
00326c  97013200  and r3, r4, r3
003270  3ba00100  bneq r3, zero, 8
003274  1f850000  addli r10, r1, 0
003278  9361a804  setlt.f r3, r16, r10
00327c  9f000500  addli r1, r10, 0
003280  3ba00100  bneq r3, zero, 8
003284  9f000800  addli r1, r16, 0
003288  9b319500  slli r3, r10, 9
00328c  1b329800  slli r4, r16, 9
003290  9b427501  srli r5, r10, 23
003294  1b437801  srli r6, r16, 23
003298  93810100  seteq r3, r3, zero
00329c  13020200  seteq r4, r4, zero
0032a0  9b82f20f  andi r5, r5, 255
0032a4  1b03f30f  andi r6, r6, 255
0032a8  9bf2f20f  setlti r5, r5, 255
0032ac  1b73f30f  setlti r6, r6, 255
0032b0  97913200  or r3, r5, r3
0032b4  17124300  or r4, r6, r4
0032b8  97814100  and r3, r3, r4
0032bc  3be80102  bneq r3, zero, 1560
0032c0  ab00c07f  lui r1, 523264
0032c4  3b580502  bneq r10, zero, 1556
0032c8  37200800  beq r16, zero, 8
0032cc  1f080500  addli r16, r10, 0
0032d0  93611006  setle.f r3, zero, r1
0032d4  13e20006  setle.f r4, r1, zero
0032d8  97013200  and r3, r4, r3
0032dc  3ba00100  bneq r3, zero, 8
0032e0  1f880000  addli r16, r1, 0
0032e4  93e10505  setlt.f r3, r11, r16
0032e8  9f000800  addli r1, r16, 0
0032ec  3ba00100  bneq r3, zero, 8
0032f0  9f800500  addli r1, r11, 0
0032f4  9b319800  slli r3, r16, 9
0032f8  1bb29500  slli r4, r11, 9
0032fc  9b427801  srli r5, r16, 23
003300  1bc37501  srli r6, r11, 23
003304  93810100  seteq r3, r3, zero
003308  13020200  seteq r4, r4, zero
00330c  9b82f20f  andi r5, r5, 255
003310  1b03f30f  andi r6, r6, 255
003314  9bf2f20f  setlti r5, r5, 255
003318  1b73f30f  setlti r6, r6, 255
00331c  97913200  or r3, r5, r3
003320  17124300  or r4, r6, r4
003324  97814100  and r3, r3, r4
003328  bbf60102  bneq r3, zero, 1468
00332c  ab00c07f  lui r1, 523264
003330  bb660802  bneq r16, zero, 1464
003334  37a00500  beq r11, zero, 8
003338  9f050800  addli r11, r16, 0
00333c  93611006  setle.f r3, zero, r1
003340  13e20006  setle.f r4, r1, zero
003344  97013200  and r3, r4, r3
003348  3ba00100  bneq r3, zero, 8
00334c  9f850000  addli r11, r1, 0
003350  9361b404  setlt.f r3, r8, r11
003354  9f800500  addli r1, r11, 0
003358  3ba00100  bneq r3, zero, 8
00335c  9f000400  addli r1, r8, 0
003360  9bb19500  slli r3, r11, 9
003364  1b329400  slli r4, r8, 9
003368  9bc27501  srli r5, r11, 23
00336c  1b437401  srli r6, r8, 23
003370  93810100  seteq r3, r3, zero
003374  13020200  seteq r4, r4, zero
003378  9b82f20f  andi r5, r5, 255
00337c  1b03f30f  andi r6, r6, 255
003380  9bf2f20f  setlti r5, r5, 255
003384  1b73f30f  setlti r6, r6, 255
003388  97913200  or r3, r5, r3
00338c  17124300  or r4, r6, r4
003390  97814100  and r3, r3, r4
003394  bb850102  bneq r3, zero, 1376
003398  ab00c07f  lui r1, 523264
00339c  3bf50502  bneq r11, zero, 1372
0033a0  37200400  beq r8, zero, 8
0033a4  1f840500  addli r8, r11, 0
0033a8  93611006  setle.f r3, zero, r1
0033ac  13e20006  setle.f r4, r1, zero
0033b0  97013200  and r3, r4, r3
0033b4  3ba00100  bneq r3, zero, 8
0033b8  1f840000  addli r8, r1, 0
0033bc  93e18304  setlt.f r3, r7, r8
0033c0  9f000400  addli r1, r8, 0
0033c4  3ba00100  bneq r3, zero, 8
0033c8  9f800300  addli r1, r7, 0
0033cc  9b319400  slli r3, r8, 9
0033d0  1bb29300  slli r4, r7, 9
0033d4  9b427401  srli r5, r8, 23
0033d8  1bc37301  srli r6, r7, 23
0033dc  93810100  seteq r3, r3, zero
0033e0  13020200  seteq r4, r4, zero
0033e4  9b82f20f  andi r5, r5, 255
0033e8  1b03f30f  andi r6, r6, 255
0033ec  9bf2f20f  setlti r5, r5, 255
0033f0  1b73f30f  setlti r6, r6, 255
0033f4  97913200  or r3, r5, r3
0033f8  17124300  or r4, r6, r4
0033fc  97814100  and r3, r3, r4
003400  3b940102  bneq r3, zero, 1284
003404  ab00c07f  lui r1, 523264
003408  3b040402  bneq r8, zero, 1280
00340c  37a00300  beq r7, zero, 8
003410  9f030400  addli r7, r8, 0
003414  93611006  setle.f r3, zero, r1
003418  13e20006  setle.f r4, r1, zero
00341c  97013200  and r3, r4, r3
003420  3ba00100  bneq r3, zero, 8
003424  9f830000  addli r7, r1, 0
003428  93617104  setlt.f r3, r2, r7
00342c  9f800300  addli r1, r7, 0
003430  3ba00100  bneq r3, zero, 8
003434  9f000100  addli r1, r2, 0
003438  9bb19300  slli r3, r7, 9
00343c  1b329100  slli r4, r2, 9
003440  9bc27301  srli r5, r7, 23
003444  1b437101  srli r6, r2, 23
003448  93810100  seteq r3, r3, zero
00344c  13020200  seteq r4, r4, zero
003450  9b82f20f  andi r5, r5, 255
003454  1b03f30f  andi r6, r6, 255
003458  9bf2f20f  setlti r5, r5, 255
00345c  1b73f30f  setlti r6, r6, 255
003460  97913200  or r3, r5, r3
003464  17124300  or r4, r6, r4
003468  97814100  and r3, r3, r4
00346c  bba20102  bneq r3, zero, 1192
003470  ab00c07f  lui r1, 523264
003474  bb920302  bneq r7, zero, 1188
003478  37200100  beq r2, zero, 8
00347c  1f810300  addli r2, r7, 0
003480  93611006  setle.f r3, zero, r1
003484  13e20006  setle.f r4, r1, zero
003488  97013200  and r3, r4, r3
00348c  3ba00100  bneq r3, zero, 8
003490  1f810000  addli r2, r1, 0
003494  e340cfe9  loadli.w r1,  -2844(r30)
003498  73e02000  stores.w r2, 0(r1)
00349c  00a00300  mfence { lm, sm, gm }
0034a0  80210604  csr_set csr3, r12
0034a4  00d00100  sync_group
0034a8  e340cfed  loadli.w r1,  -2332(r30)
0034ac  3bfc0000  bneq r1, zero, 796
0034b0  efc10600  loads.w r3, 0(r13)
0034b4  efc04600  loads.w r1, 4(r13)
0034b8  13e23004  setlt.f r4, r1, r3
0034bc  1f810100  addli r2, r3, 0
0034c0  3b200200  bneq r4, zero, 8
0034c4  1f810000  addli r2, r1, 0
0034c8  1bb29100  slli r4, r3, 9
0034cc  9bb29000  slli r5, r1, 9
0034d0  1bc37101  srli r6, r3, 23
0034d4  9bc37001  srli r7, r1, 23
0034d8  13020200  seteq r4, r4, zero
0034dc  93820200  seteq r5, r5, zero
0034e0  1b03f30f  andi r6, r6, 255
0034e4  9b83f30f  andi r7, r7, 255
0034e8  1b73f30f  setlti r6, r6, 255
0034ec  9bf3f30f  setlti r7, r7, 255
0034f0  17124300  or r4, r6, r4
0034f4  97925300  or r5, r7, r5
0034f8  17025200  and r4, r4, r5
0034fc  bb34020e  bneq r4, zero, 7468
003500  2b01c07f  lui r2, 523264
003504  bba4010e  bneq r3, zero, 7464
003508  37a00000  beq r1, zero, 8
00350c  9f800100  addli r1, r3, 0
003510  93612006  setle.f r3, zero, r2
003514  13620106  setle.f r4, r2, zero
003518  97013200  and r3, r4, r3
00351c  3ba00100  bneq r3, zero, 8
003520  9f000100  addli r1, r2, 0
003524  efc28600  loads.w r5, 8(r13)
003528  1f810000  addli r2, r1, 0
00352c  93e11204  setlt.f r3, r5, r1
003530  3ba00100  bneq r3, zero, 8
003534  1f810200  addli r2, r5, 0
003538  9bb19200  slli r3, r5, 9
00353c  1bb29000  slli r4, r1, 9
003540  1bc37201  srli r6, r5, 23
003544  9bc37001  srli r7, r1, 23
003548  93810100  seteq r3, r3, zero
00354c  13020200  seteq r4, r4, zero
003550  1b03f30f  andi r6, r6, 255
003554  9b83f30f  andi r7, r7, 255
003558  1b73f30f  setlti r6, r6, 255
00355c  9bf3f30f  setlti r7, r7, 255
003560  97113300  or r3, r6, r3
003564  17924300  or r4, r7, r4
003568  97013200  and r3, r4, r3
00356c  3bb3010e  bneq r3, zero, 7372
003570  2b01c07f  lui r2, 523264
003574  3ba3000e  bneq r1, zero, 7368
003578  37a00200  beq r5, zero, 8
00357c  9f820000  addli r5, r1, 0
003580  93602006  setle.f r1, zero, r2
003584  93610106  setle.f r3, r2, zero
003588  97801100  and r1, r3, r1
00358c  3ba00000  bneq r1, zero, 8
003590  9f020100  addli r5, r2, 0
003594  6fc3c600  loads.w r6, 12(r13)
003598  6fc20601  loads.w r4, 16(r13)
00359c  efc14601  loads.w r3, 20(r13)
0035a0  6fc18601  loads.w r2, 24(r13)
0035a4  efc0c601  loads.w r1, 28(r13)
0035a8  9f830200  addli r7, r5, 0
0035ac  13645304  setlt.f r8, r6, r5
0035b0  3b200400  bneq r8, zero, 8
0035b4  9f030300  addli r7, r6, 0
0035b8  1b349300  slli r8, r6, 9
0035bc  9bb49200  slli r9, r5, 9
0035c0  1b457301  srli r10, r6, 23
0035c4  9bc57201  srli r11, r5, 23
0035c8  13040400  seteq r8, r8, zero
0035cc  93840400  seteq r9, r9, zero
0035d0  1b05f50f  andi r10, r10, 255
0035d4  9b85f50f  andi r11, r11, 255
0035d8  1b75f50f  setlti r10, r10, 255
0035dc  9bf5f50f  setlti r11, r11, 255
0035e0  17148500  or r8, r10, r8
0035e4  97949500  or r9, r11, r9
0035e8  17848400  and r8, r9, r8
0035ec  3b71040e  bneq r8, zero, 7260
0035f0  ab03c07f  lui r7, 523264
0035f4  3be1020e  bneq r5, zero, 7256
0035f8  37200300  beq r6, zero, 8
0035fc  1f830200  addli r6, r5, 0
003600  93627006  setle.f r5, zero, r7
003604  13e40306  setle.f r8, r7, zero
003608  97025400  and r5, r8, r5
00360c  3ba00200  bneq r5, zero, 8
003610  1f830300  addli r6, r7, 0
003614  93636204  setlt.f r7, r4, r6
003618  9f020300  addli r5, r6, 0
00361c  3ba00300  bneq r7, zero, 8
003620  9f020200  addli r5, r4, 0
003624  9b339200  slli r7, r4, 9
003628  1b349300  slli r8, r6, 9
00362c  9b447201  srli r9, r4, 23
003630  1b457301  srli r10, r6, 23
003634  93830300  seteq r7, r7, zero
003638  13040400  seteq r8, r8, zero
00363c  9b84f40f  andi r9, r9, 255
003640  1b05f50f  andi r10, r10, 255
003644  9bf4f40f  setlti r9, r9, 255
003648  1b75f50f  setlti r10, r10, 255
00364c  97937400  or r7, r9, r7
003650  17148500  or r8, r10, r8
003654  97037400  and r7, r8, r7
003658  3b80030e  bneq r7, zero, 7168
00365c  ab02c07f  lui r5, 523264
003660  bb7f030c  bneq r6, zero, 7164
003664  37200200  beq r4, zero, 8
003668  1f020300  addli r4, r6, 0
00366c  13635006  setle.f r6, zero, r5
003670  93e30206  setle.f r7, r5, zero
003674  17836300  and r6, r7, r6
003678  3b200300  bneq r6, zero, 8
00367c  1f820200  addli r4, r5, 0
003680  13e34104  setlt.f r6, r3, r4
003684  9f020200  addli r5, r4, 0
003688  3b200300  bneq r6, zero, 8
00368c  9f820100  addli r5, r3, 0
003690  1bb39100  slli r6, r3, 9
003694  9b339200  slli r7, r4, 9
003698  1bc47101  srli r8, r3, 23
00369c  9b447201  srli r9, r4, 23
0036a0  13030300  seteq r6, r6, zero
0036a4  93830300  seteq r7, r7, zero
0036a8  1b04f40f  andi r8, r8, 255
0036ac  9b84f40f  andi r9, r9, 255
0036b0  1b74f40f  setlti r8, r8, 255
0036b4  9bf4f40f  setlti r9, r9, 255
0036b8  17136400  or r6, r8, r6
0036bc  97937400  or r7, r9, r7
0036c0  17836300  and r6, r7, r6
0036c4  bb1e030c  bneq r6, zero, 7076
0036c8  ab02c07f  lui r5, 523264
0036cc  bb0e020c  bneq r4, zero, 7072
0036d0  37a00100  beq r3, zero, 8
0036d4  9f010200  addli r3, r4, 0
0036d8  13625006  setle.f r4, zero, r5
0036dc  13e30206  setle.f r6, r5, zero
0036e0  17024300  and r4, r6, r4
0036e4  3b200200  bneq r4, zero, 8
0036e8  9f810200  addli r3, r5, 0
0036ec  93623104  setlt.f r5, r2, r3
0036f0  1f820100  addli r4, r3, 0
0036f4  3ba00200  bneq r5, zero, 8
0036f8  1f020100  addli r4, r2, 0
0036fc  9b329100  slli r5, r2, 9
003700  1bb39100  slli r6, r3, 9
003704  9b437101  srli r7, r2, 23
003708  1bc47101  srli r8, r3, 23
00370c  93820200  seteq r5, r5, zero
003710  13030300  seteq r6, r6, zero
003714  9b83f30f  andi r7, r7, 255
003718  1b04f40f  andi r8, r8, 255
00371c  9bf3f30f  setlti r7, r7, 255
003720  1b74f40f  setlti r8, r8, 255
003724  97925300  or r5, r7, r5
003728  17136400  or r6, r8, r6
00372c  97025300  and r5, r6, r5
003730  3bad020c  bneq r5, zero, 6984
003734  2b02c07f  lui r4, 523264
003738  3b9d010c  bneq r3, zero, 6980
00373c  37200100  beq r2, zero, 8
003740  1f810100  addli r2, r3, 0
003744  93614006  setle.f r3, zero, r4
003748  93620206  setle.f r5, r4, zero
00374c  97813200  and r3, r5, r3
003750  3ba00100  bneq r3, zero, 8
003754  1f010200  addli r2, r4, 0
003758  13e22004  setlt.f r4, r1, r2
00375c  9f010100  addli r3, r2, 0
003760  3b200200  bneq r4, zero, 8
003764  9f810000  addli r3, r1, 0
003768  1bb29000  slli r4, r1, 9
00376c  9b329100  slli r5, r2, 9
003770  1bc37001  srli r6, r1, 23
003774  9b437101  srli r7, r2, 23
003778  13020200  seteq r4, r4, zero
00377c  93820200  seteq r5, r5, zero
003780  1b03f30f  andi r6, r6, 255
003784  9b83f30f  andi r7, r7, 255
003788  1b73f30f  setlti r6, r6, 255
00378c  9bf3f30f  setlti r7, r7, 255
003790  17124300  or r4, r6, r4
003794  97925300  or r5, r7, r5
003798  17824200  and r4, r5, r4
00379c  bb3b020c  bneq r4, zero, 6892
0037a0  ab01c07f  lui r3, 523264
0037a4  bb2b010c  bneq r2, zero, 6888
0037a8  37a00000  beq r1, zero, 8
0037ac  9f000100  addli r1, r2, 0
0037b0  13613006  setle.f r2, zero, r3
0037b4  13e20106  setle.f r4, r3, zero
0037b8  17012200  and r2, r4, r2
0037bc  3b200100  bneq r2, zero, 8
0037c0  9f800100  addli r1, r3, 0
0037c4  73e01600  stores.w r1, 0(r13)
0037c8  00a00300  mfence { lm, sm, gm }
0037cc  80210604  csr_set csr3, r12
0037d0  00d00100  sync_group
0037d4  6fc10600  loads.w r2, 0(r13)
0037d8  e301efef  loadli.w r3,  -2064(r30)
0037dc  9f000004  addli r1, zero, 512
0037e0  3f951100  blt.s r3, r1, 324
0037e4  1f090000  addli r18, zero, 0
0037e8  9f0d0000  addli r27, zero, 0
0037ec  1f0e0000  addli r28, zero, 0
0037f0  9f020000  addli r5, zero, 0
0037f4  9f030000  addli r7, zero, 0
0037f8  1f020000  addli r4, zero, 0
0037fc  1f030000  addli r6, zero, 0
003800  1f040000  addli r8, zero, 0
003804  9f040000  addli r9, zero, 0
003808  1f050000  addli r10, zero, 0
00380c  9f050000  addli r11, zero, 0
003810  1f070000  addli r14, zero, 0
003814  1f080000  addli r16, zero, 0
003818  9f080000  addli r17, zero, 0
00381c  1f060000  addli r12, zero, 0
003820  9f060000  addli r13, zero, 0
003824  db380000  j 452
003828  37490afa  beq r20, zero, -2480
00382c  1f8a0100  addli r20, r3, 0
003830  63020fef  loadli.w r4,  -2176(r30)
003834  3b3902fa  bneq r4, zero, -2484
003838  dbc9feff  j -2484
00383c  b74a0afa  beq r20, zero, -2384
003840  1f8a0100  addli r20, r3, 0
003844  bbba02fa  bneq r5, zero, -2388
003848  dbd5feff  j -2388
00384c  37bc02fa  beq r5, zero, -2292
003850  9f820100  addli r5, r3, 0
003854  3b2c07fa  bneq r14, zero, -2296
003858  5be1feff  j -2296
00385c  b72d07fa  beq r14, zero, -2200
003860  1f870100  addli r14, r3, 0
003864  bb1d0dfa  bneq r26, zero, -2204
003868  dbecfeff  j -2204
00386c  371f0dfa  beq r26, zero, -2108
003870  1f8d0100  addli r26, r3, 0
003874  3b8f07fa  bneq r15, zero, -2112
003878  5bf8feff  j -2112
00387c  b79007fc  beq r15, zero, -2012
003880  9f870100  addli r15, r3, 0
003884  bb8004fc  bneq r9, zero, -2016
003888  5b04ffff  j -2016
00388c  e346efe8  loadli.w r13,  -2956(r30)
003890  379204fc  beq r9, zero, -1916
003894  9f840100  addli r9, r3, 0
003898  3b8200fc  bneq r1, zero, -1920
00389c  5b10ffff  j -1920
0038a0  6306dfed  loadli.w r12,  -2328(r30)
0038a4  b78300fc  beq r1, zero, -1824
0038a8  9f800100  addli r1, r3, 0
0038ac  3b7303fc  bneq r6, zero, -1828
0038b0  db1bffff  j -1828
0038b4  b77403fc  beq r6, zero, -1732
0038b8  1f830000  addli r6, r1, 0
0038bc  bbe408fc  bneq r17, zero, -1736
0038c0  5b27ffff  j -1736
0038c4  37e608fc  beq r17, zero, -1640
0038c8  9f880000  addli r17, r1, 0
0038cc  3b5605fc  bneq r10, zero, -1644
0038d0  db32ffff  j -1644
0038d4  b75705fc  beq r10, zero, -1548
0038d8  1f850000  addli r10, r1, 0
0038dc  bb4708fc  bneq r16, zero, -1552
0038e0  5b3effff  j -1552
0038e4  374908fc  beq r16, zero, -1456
0038e8  1f880000  addli r16, r1, 0
0038ec  3bb905fc  bneq r11, zero, -1460
0038f0  db49ffff  j -1460
0038f4  b7ba05fc  beq r11, zero, -1364
0038f8  9f850000  addli r11, r1, 0
0038fc  bb2a04fc  bneq r8, zero, -1368
003900  5b55ffff  j -1368
003904  372c04fc  beq r8, zero, -1272
003908  1f840000  addli r8, r1, 0
00390c  3b9c03fc  bneq r7, zero, -1276
003910  db60ffff  j -1276
003914  b79d03fc  beq r7, zero, -1180
003918  9f830000  addli r7, r1, 0
00391c  bb0d01fc  bneq r2, zero, -1184
003920  5b6cffff  j -1184
003924  63472fed  loadli.w r14,  -2412(r30)
003928  e3408fed  loadli.w r1,  -2364(r30)
00392c  63436fed  loadli.w r6,  -2380(r30)
003930  e3018fed  loadli.w r3,  -2368(r30)
003934  63427fed  loadli.w r4,  -2372(r30)
003938  e3027fed  loadli.w r5,  -2376(r30)
00393c  e3036fed  loadli.w r7,  -2384(r30)
003940  63445fed  loadli.w r8,  -2388(r30)
003944  e3045fed  loadli.w r9,  -2392(r30)
003948  63454fed  loadli.w r10,  -2396(r30)
00394c  e3054fed  loadli.w r11,  -2400(r30)
003950  63463fed  loadli.w r12,  -2404(r30)
003954  e3063fed  loadli.w r13,  -2408(r30)
003958  0b682718  sub.f.rn r16, r14, r2
00395c  63072fed  loadli.w r14,  -2416(r30)
003960  8be02018  sub.f.rn r1, r1, r2
003964  0b632318  sub.f.rn r6, r6, r2
003968  8be22218  sub.f.rn r5, r5, r2
00396c  8be12118  sub.f.rn r3, r3, r2
003970  0b622218  sub.f.rn r4, r4, r2
003974  8be32318  sub.f.rn r7, r7, r2
003978  0b642418  sub.f.rn r8, r8, r2
00397c  8be42418  sub.f.rn r9, r9, r2
003980  0b652518  sub.f.rn r10, r10, r2
003984  8be52518  sub.f.rn r11, r11, r2
003988  0b662618  sub.f.rn r12, r12, r2
00398c  8be62618  sub.f.rn r13, r13, r2
003990  8b682718  sub.f.rn r17, r14, r2
003994  63471fed  loadli.w r14,  -2420(r30)
003998  0b6a2718  sub.f.rn r20, r14, r2
00399c  63071fed  loadli.w r14,  -2424(r30)
0039a0  0f890000  exp.f.rn r18, r1
0039a4  8f000300  exp.f.rn r1, r6
0039a8  0f0e0200  exp.f.rn r28, r4
0039ac  0f820300  exp.f.rn r4, r7
0039b0  0f030400  exp.f.rn r6, r8
0039b4  0f840400  exp.f.rn r8, r9
0039b8  8f040500  exp.f.rn r9, r10
0039bc  0f850500  exp.f.rn r10, r11
0039c0  8f050600  exp.f.rn r11, r12
0039c4  8f8d0100  exp.f.rn r27, r3
0039c8  8f820200  exp.f.rn r5, r5
0039cc  0f080800  exp.f.rn r16, r16
0039d0  8b6a2718  sub.f.rn r21, r14, r2
0039d4  0f870600  exp.f.rn r14, r13
0039d8  8f880800  exp.f.rn r17, r17
0039dc  0f060a00  exp.f.rn r12, r20
0039e0  9f830000  addli r7, r1, 0
0039e4  8f860a00  exp.f.rn r13, r21
0039e8  e3409fe9  loadli.w r1,  -2868(r30)
0039ec  e3019fed  loadli.w r3,  -2360(r30)
0039f0  8b903010  add.s r1, r1, r3
0039f4  67411fea  storeli.w r1, -2796(r30)
0039f8  e3009fe9  loadli.w r1,  -2872(r30)
0039fc  8b903010  add.s r1, r1, r3
003a00  67011fea  storeli.w r1, -2800(r30)
003a04  e3408fe9  loadli.w r1,  -2876(r30)
003a08  8b903010  add.s r1, r1, r3
003a0c  e7401fea  storeli.w r1, -2804(r30)
003a10  e3008fe9  loadli.w r1,  -2880(r30)
003a14  8b903010  add.s r1, r1, r3
003a18  e7001fea  storeli.w r1, -2808(r30)
003a1c  e3407fe9  loadli.w r1,  -2884(r30)
003a20  8b903010  add.s r1, r1, r3
003a24  67401fea  storeli.w r1, -2812(r30)
003a28  e3007fe9  loadli.w r1,  -2888(r30)
003a2c  8b903010  add.s r1, r1, r3
003a30  67001fea  storeli.w r1, -2816(r30)
003a34  e3406fe9  loadli.w r1,  -2892(r30)
003a38  8b903010  add.s r1, r1, r3
003a3c  e74f1fe8  storeli.w r1, -2820(r30)
003a40  e3006fe9  loadli.w r1,  -2896(r30)
003a44  8b903010  add.s r1, r1, r3
003a48  e70f1fe8  storeli.w r1, -2824(r30)
003a4c  e3405fe9  loadli.w r1,  -2900(r30)
003a50  8b903010  add.s r1, r1, r3
003a54  674f1fe8  storeli.w r1, -2828(r30)
003a58  e3005fe9  loadli.w r1,  -2904(r30)
003a5c  8b903010  add.s r1, r1, r3
003a60  670f1fe8  storeli.w r1, -2832(r30)
003a64  e3404fe9  loadli.w r1,  -2908(r30)
003a68  8b903010  add.s r1, r1, r3
003a6c  e74e1fe8  storeli.w r1, -2836(r30)
003a70  e3004fe9  loadli.w r1,  -2912(r30)
003a74  8b903010  add.s r1, r1, r3
003a78  e7011fea  storeli.w r1, -2792(r30)
003a7c  e3403fe9  loadli.w r1,  -2916(r30)
003a80  8b903010  add.s r1, r1, r3
003a84  e7411fea  storeli.w r1, -2788(r30)
003a88  e3003fe9  loadli.w r1,  -2920(r30)
003a8c  8b903010  add.s r1, r1, r3
003a90  67021fea  storeli.w r1, -2784(r30)
003a94  e3402fe9  loadli.w r1,  -2924(r30)
003a98  8b903010  add.s r1, r1, r3
003a9c  67421fea  storeli.w r1, -2780(r30)
003aa0  e3002fe9  loadli.w r1,  -2928(r30)
003aa4  8b903010  add.s r1, r1, r3
003aa8  e7021fea  storeli.w r1, -2776(r30)
003aac  e3401fe9  loadli.w r1,  -2932(r30)
003ab0  8b903010  add.s r1, r1, r3
003ab4  e7421fea  storeli.w r1, -2772(r30)
003ab8  e340ffe8  loadli.w r1,  -2948(r30)
003abc  8b903010  add.s r1, r1, r3
003ac0  67031fea  storeli.w r1, -2768(r30)
003ac4  e300ffe8  loadli.w r1,  -2952(r30)
003ac8  8b903010  add.s r1, r1, r3
003acc  67431fea  storeli.w r1, -2764(r30)
003ad0  e340ffe7  loadli.w r1,  -3076(r30)
003ad4  8b903010  add.s r1, r1, r3
003ad8  e7031fea  storeli.w r1, -2760(r30)
003adc  e300ffe7  loadli.w r1,  -3080(r30)
003ae0  8b903010  add.s r1, r1, r3
003ae4  e7431fea  storeli.w r1, -2756(r30)
003ae8  e340efe7  loadli.w r1,  -3084(r30)
003aec  8b903010  add.s r1, r1, r3
003af0  67041fea  storeli.w r1, -2752(r30)
003af4  e300efe7  loadli.w r1,  -3088(r30)
003af8  8b903010  add.s r1, r1, r3
003afc  67441fea  storeli.w r1, -2748(r30)
003b00  e340dfe7  loadli.w r1,  -3092(r30)
003b04  8b903010  add.s r1, r1, r3
003b08  e7041fea  storeli.w r1, -2744(r30)
003b0c  e300dfe7  loadli.w r1,  -3096(r30)
003b10  8b903010  add.s r1, r1, r3
003b14  e7441fea  storeli.w r1, -2740(r30)
003b18  e340cfe7  loadli.w r1,  -3100(r30)
003b1c  8b903010  add.s r1, r1, r3
003b20  67051fea  storeli.w r1, -2736(r30)
003b24  e300cfe7  loadli.w r1,  -3104(r30)
003b28  8b903010  add.s r1, r1, r3
003b2c  67451fea  storeli.w r1, -2732(r30)
003b30  e340bfe7  loadli.w r1,  -3108(r30)
003b34  8b903010  add.s r1, r1, r3
003b38  e7051fea  storeli.w r1, -2728(r30)
003b3c  e300bfe7  loadli.w r1,  -3112(r30)
003b40  8b903010  add.s r1, r1, r3
003b44  e7451fea  storeli.w r1, -2724(r30)
003b48  e340afe7  loadli.w r1,  -3116(r30)
003b4c  8b903010  add.s r1, r1, r3
003b50  67061fea  storeli.w r1, -2720(r30)
003b54  e300afe7  loadli.w r1,  -3120(r30)
003b58  8b903010  add.s r1, r1, r3
003b5c  67461fea  storeli.w r1, -2716(r30)
003b60  e3409fe7  loadli.w r1,  -3124(r30)
003b64  8b903010  add.s r1, r1, r3
003b68  e7061fea  storeli.w r1, -2712(r30)
003b6c  e3009fe7  loadli.w r1,  -3128(r30)
003b70  8b903010  add.s r1, r1, r3
003b74  e7461fea  storeli.w r1, -2708(r30)
003b78  e3408fe7  loadli.w r1,  -3132(r30)
003b7c  8b903010  add.s r1, r1, r3
003b80  67071fea  storeli.w r1, -2704(r30)
003b84  e3008fe7  loadli.w r1,  -3136(r30)
003b88  8b903010  add.s r1, r1, r3
003b8c  67471fea  storeli.w r1, -2700(r30)
003b90  e3407fe7  loadli.w r1,  -3140(r30)
003b94  8b903010  add.s r1, r1, r3
003b98  e7071fea  storeli.w r1, -2696(r30)
003b9c  e3007fe7  loadli.w r1,  -3144(r30)
003ba0  8b903010  add.s r1, r1, r3
003ba4  e7471fea  storeli.w r1, -2692(r30)
003ba8  e3406fe7  loadli.w r1,  -3148(r30)
003bac  8b903010  add.s r1, r1, r3
003bb0  67081fea  storeli.w r1, -2688(r30)
003bb4  e3006fe7  loadli.w r1,  -3152(r30)
003bb8  8b903010  add.s r1, r1, r3
003bbc  67481fea  storeli.w r1, -2684(r30)
003bc0  e3405fe7  loadli.w r1,  -3156(r30)
003bc4  8b903010  add.s r1, r1, r3
003bc8  e7081fea  storeli.w r1, -2680(r30)
003bcc  e3005fe7  loadli.w r1,  -3160(r30)
003bd0  8b903010  add.s r1, r1, r3
003bd4  e7481fea  storeli.w r1, -2676(r30)
003bd8  e3404fe7  loadli.w r1,  -3164(r30)
003bdc  8b903010  add.s r1, r1, r3
003be0  67091fea  storeli.w r1, -2672(r30)
003be4  e3004fe7  loadli.w r1,  -3168(r30)
003be8  8b903010  add.s r1, r1, r3
003bec  67491fea  storeli.w r1, -2668(r30)
003bf0  e3403fe7  loadli.w r1,  -3172(r30)
003bf4  8b903010  add.s r1, r1, r3
003bf8  e7091fea  storeli.w r1, -2664(r30)
003bfc  e3003fe7  loadli.w r1,  -3176(r30)
003c00  8b903010  add.s r1, r1, r3
003c04  e7491fea  storeli.w r1, -2660(r30)
003c08  e3402fe7  loadli.w r1,  -3180(r30)
003c0c  8b903010  add.s r1, r1, r3
003c10  670a1fea  storeli.w r1, -2656(r30)
003c14  e3002fe7  loadli.w r1,  -3184(r30)
003c18  8b903010  add.s r1, r1, r3
003c1c  674a1fea  storeli.w r1, -2652(r30)
003c20  e3401fe7  loadli.w r1,  -3188(r30)
003c24  8b903010  add.s r1, r1, r3
003c28  e70a1fea  storeli.w r1, -2648(r30)
003c2c  e3001fe7  loadli.w r1,  -3192(r30)
003c30  8b903010  add.s r1, r1, r3
003c34  e74a1fea  storeli.w r1, -2644(r30)
003c38  e3400fe7  loadli.w r1,  -3196(r30)
003c3c  8b903010  add.s r1, r1, r3
003c40  670b1fea  storeli.w r1, -2640(r30)
003c44  e3000fe7  loadli.w r1,  -3200(r30)
003c48  8b903010  add.s r1, r1, r3
003c4c  674b1fea  storeli.w r1, -2636(r30)
003c50  e340ffe6  loadli.w r1,  -3204(r30)
003c54  8b903010  add.s r1, r1, r3
003c58  e70b1fea  storeli.w r1, -2632(r30)
003c5c  e300ffe6  loadli.w r1,  -3208(r30)
003c60  8b903010  add.s r1, r1, r3
003c64  e74b1fea  storeli.w r1, -2628(r30)
003c68  e340efe6  loadli.w r1,  -3212(r30)
003c6c  8b903010  add.s r1, r1, r3
003c70  670c1fea  storeli.w r1, -2624(r30)
003c74  e300efe6  loadli.w r1,  -3216(r30)
003c78  8b903010  add.s r1, r1, r3
003c7c  674c1fea  storeli.w r1, -2620(r30)
003c80  e340dfe6  loadli.w r1,  -3220(r30)
003c84  8b903010  add.s r1, r1, r3
003c88  e70c1fea  storeli.w r1, -2616(r30)
003c8c  e300dfe6  loadli.w r1,  -3224(r30)
003c90  8b903010  add.s r1, r1, r3
003c94  e74c1fea  storeli.w r1, -2612(r30)
003c98  e340cfe6  loadli.w r1,  -3228(r30)
003c9c  8b903010  add.s r1, r1, r3
003ca0  670d1fea  storeli.w r1, -2608(r30)
003ca4  e300cfe6  loadli.w r1,  -3232(r30)
003ca8  8b903010  add.s r1, r1, r3
003cac  674d1fea  storeli.w r1, -2604(r30)
003cb0  e340bfe6  loadli.w r1,  -3236(r30)
003cb4  8b903010  add.s r1, r1, r3
003cb8  e70d1fea  storeli.w r1, -2600(r30)
003cbc  e300bfe6  loadli.w r1,  -3240(r30)
003cc0  8b903010  add.s r1, r1, r3
003cc4  e74d1fea  storeli.w r1, -2596(r30)
003cc8  e340afe6  loadli.w r1,  -3244(r30)
003ccc  8b903010  add.s r1, r1, r3
003cd0  670e1fea  storeli.w r1, -2592(r30)
003cd4  e300afe6  loadli.w r1,  -3248(r30)
003cd8  8b903010  add.s r1, r1, r3
003cdc  674e1fea  storeli.w r1, -2588(r30)
003ce0  e3409fe6  loadli.w r1,  -3252(r30)
003ce4  8b903010  add.s r1, r1, r3
003ce8  e70e1fea  storeli.w r1, -2584(r30)
003cec  e3009fe6  loadli.w r1,  -3256(r30)
003cf0  8b903010  add.s r1, r1, r3
003cf4  e74e1fea  storeli.w r1, -2580(r30)
003cf8  e3408fe6  loadli.w r1,  -3260(r30)
003cfc  8b903010  add.s r1, r1, r3
003d00  670f1fea  storeli.w r1, -2576(r30)
003d04  e3008fe6  loadli.w r1,  -3264(r30)
003d08  8b903010  add.s r1, r1, r3
003d0c  674f1fea  storeli.w r1, -2572(r30)
003d10  e3407fe6  loadli.w r1,  -3268(r30)
003d14  8b903010  add.s r1, r1, r3
003d18  e70f1fea  storeli.w r1, -2568(r30)
003d1c  e3007fe6  loadli.w r1,  -3272(r30)
003d20  8b903010  add.s r1, r1, r3
003d24  e74f1fea  storeli.w r1, -2564(r30)
003d28  e3406fe6  loadli.w r1,  -3276(r30)
003d2c  8b903010  add.s r1, r1, r3
003d30  67001fec  storeli.w r1, -2560(r30)
003d34  e3006fe6  loadli.w r1,  -3280(r30)
003d38  8b903010  add.s r1, r1, r3
003d3c  67401fec  storeli.w r1, -2556(r30)
003d40  e3405fe6  loadli.w r1,  -3284(r30)
003d44  8b903010  add.s r1, r1, r3
003d48  e7001fec  storeli.w r1, -2552(r30)
003d4c  e3005fe6  loadli.w r1,  -3288(r30)
003d50  8b903010  add.s r1, r1, r3
003d54  e7401fec  storeli.w r1, -2548(r30)
003d58  e3404fe6  loadli.w r1,  -3292(r30)
003d5c  8b903010  add.s r1, r1, r3
003d60  67011fec  storeli.w r1, -2544(r30)
003d64  e3004fe6  loadli.w r1,  -3296(r30)
003d68  8b903010  add.s r1, r1, r3
003d6c  67411fec  storeli.w r1, -2540(r30)
003d70  e3403fe6  loadli.w r1,  -3300(r30)
003d74  8b903010  add.s r1, r1, r3
003d78  e7011fec  storeli.w r1, -2536(r30)
003d7c  e3003fe6  loadli.w r1,  -3304(r30)
003d80  8b903010  add.s r1, r1, r3
003d84  e7411fec  storeli.w r1, -2532(r30)
003d88  e3402fe6  loadli.w r1,  -3308(r30)
003d8c  8b903010  add.s r1, r1, r3
003d90  67021fec  storeli.w r1, -2528(r30)
003d94  e3002fe6  loadli.w r1,  -3312(r30)
003d98  8b903010  add.s r1, r1, r3
003d9c  67421fec  storeli.w r1, -2524(r30)
003da0  e3401fe6  loadli.w r1,  -3316(r30)
003da4  8b903010  add.s r1, r1, r3
003da8  e7021fec  storeli.w r1, -2520(r30)
003dac  e3001fe6  loadli.w r1,  -3320(r30)
003db0  8b903010  add.s r1, r1, r3
003db4  e7421fec  storeli.w r1, -2516(r30)
003db8  e3400fe6  loadli.w r1,  -3324(r30)
003dbc  8b903010  add.s r1, r1, r3
003dc0  67031fec  storeli.w r1, -2512(r30)
003dc4  e3000fe6  loadli.w r1,  -3328(r30)
003dc8  8b903010  add.s r1, r1, r3
003dcc  67431fec  storeli.w r1, -2508(r30)
003dd0  e340ffe5  loadli.w r1,  -3332(r30)
003dd4  8b903010  add.s r1, r1, r3
003dd8  e7031fec  storeli.w r1, -2504(r30)
003ddc  e300ffe5  loadli.w r1,  -3336(r30)
003de0  8b903010  add.s r1, r1, r3
003de4  e7431fec  storeli.w r1, -2500(r30)
003de8  e340efe5  loadli.w r1,  -3340(r30)
003dec  8b903010  add.s r1, r1, r3
003df0  67041fec  storeli.w r1, -2496(r30)
003df4  e300efe5  loadli.w r1,  -3344(r30)
003df8  8b903010  add.s r1, r1, r3
003dfc  67441fec  storeli.w r1, -2492(r30)
003e00  e340dfe5  loadli.w r1,  -3348(r30)
003e04  8b903010  add.s r1, r1, r3
003e08  e7041fec  storeli.w r1, -2488(r30)
003e0c  e300dfe5  loadli.w r1,  -3352(r30)
003e10  8b903010  add.s r1, r1, r3
003e14  e7441fec  storeli.w r1, -2484(r30)
003e18  e340cfe5  loadli.w r1,  -3356(r30)
003e1c  8b903010  add.s r1, r1, r3
003e20  67051fec  storeli.w r1, -2480(r30)
003e24  e300cfe5  loadli.w r1,  -3360(r30)
003e28  8b903010  add.s r1, r1, r3
003e2c  67451fec  storeli.w r1, -2476(r30)
003e30  e340bfe5  loadli.w r1,  -3364(r30)
003e34  8b903010  add.s r1, r1, r3
003e38  e7051fec  storeli.w r1, -2472(r30)
003e3c  e300bfe5  loadli.w r1,  -3368(r30)
003e40  8b903010  add.s r1, r1, r3
003e44  e7451fec  storeli.w r1, -2468(r30)
003e48  e340afe5  loadli.w r1,  -3372(r30)
003e4c  8b903010  add.s r1, r1, r3
003e50  67061fec  storeli.w r1, -2464(r30)
003e54  e300afe5  loadli.w r1,  -3376(r30)
003e58  8b903010  add.s r1, r1, r3
003e5c  67461fec  storeli.w r1, -2460(r30)
003e60  e3409fe5  loadli.w r1,  -3380(r30)
003e64  8b903010  add.s r1, r1, r3
003e68  e7061fec  storeli.w r1, -2456(r30)
003e6c  e3009fe5  loadli.w r1,  -3384(r30)
003e70  8b903010  add.s r1, r1, r3
003e74  e7461fec  storeli.w r1, -2452(r30)
003e78  e3408fe5  loadli.w r1,  -3388(r30)
003e7c  8b903010  add.s r1, r1, r3
003e80  67071fec  storeli.w r1, -2448(r30)
003e84  e3008fe5  loadli.w r1,  -3392(r30)
003e88  8b903010  add.s r1, r1, r3
003e8c  67471fec  storeli.w r1, -2444(r30)
003e90  e3407fe5  loadli.w r1,  -3396(r30)
003e94  8b903010  add.s r1, r1, r3
003e98  e7071fec  storeli.w r1, -2440(r30)
003e9c  e3007fe5  loadli.w r1,  -3400(r30)
003ea0  8b903010  add.s r1, r1, r3
003ea4  e7471fec  storeli.w r1, -2436(r30)
003ea8  e3406fe5  loadli.w r1,  -3404(r30)
003eac  8b903010  add.s r1, r1, r3
003eb0  67081fec  storeli.w r1, -2432(r30)
003eb4  e3006fe5  loadli.w r1,  -3408(r30)
003eb8  8b903010  add.s r1, r1, r3
003ebc  67481fec  storeli.w r1, -2428(r30)
003ec0  e3405fe5  loadli.w r1,  -3412(r30)
003ec4  8b903010  add.s r1, r1, r3
003ec8  e7081fec  storeli.w r1, -2424(r30)
003ecc  e3005fe5  loadli.w r1,  -3416(r30)
003ed0  8b903010  add.s r1, r1, r3
003ed4  e7481fec  storeli.w r1, -2420(r30)
003ed8  e3404fe5  loadli.w r1,  -3420(r30)
003edc  8b903010  add.s r1, r1, r3
003ee0  67091fec  storeli.w r1, -2416(r30)
003ee4  e3004fe5  loadli.w r1,  -3424(r30)
003ee8  8b903010  add.s r1, r1, r3
003eec  67491fec  storeli.w r1, -2412(r30)
003ef0  e3403fe5  loadli.w r1,  -3428(r30)
003ef4  8b903010  add.s r1, r1, r3
003ef8  e7091fec  storeli.w r1, -2408(r30)
003efc  e3003fe5  loadli.w r1,  -3432(r30)
003f00  8b903010  add.s r1, r1, r3
003f04  e7491fec  storeli.w r1, -2404(r30)
003f08  e3402fe5  loadli.w r1,  -3436(r30)
003f0c  8b903010  add.s r1, r1, r3
003f10  670a1fec  storeli.w r1, -2400(r30)
003f14  e3002fe5  loadli.w r1,  -3440(r30)
003f18  8b903010  add.s r1, r1, r3
003f1c  674a1fec  storeli.w r1, -2396(r30)
003f20  e3401fe5  loadli.w r1,  -3444(r30)
003f24  8b903010  add.s r1, r1, r3
003f28  e70a1fec  storeli.w r1, -2392(r30)
003f2c  e3001fe5  loadli.w r1,  -3448(r30)
003f30  8b903010  add.s r1, r1, r3
003f34  e74a1fec  storeli.w r1, -2388(r30)
003f38  e3400fe5  loadli.w r1,  -3452(r30)
003f3c  8b903010  add.s r1, r1, r3
003f40  670b1fec  storeli.w r1, -2384(r30)
003f44  e3000fe5  loadli.w r1,  -3456(r30)
003f48  8b903010  add.s r1, r1, r3
003f4c  674b1fec  storeli.w r1, -2380(r30)
003f50  e340ffe4  loadli.w r1,  -3460(r30)
003f54  8b903010  add.s r1, r1, r3
003f58  e70b1fec  storeli.w r1, -2376(r30)
003f5c  e300ffe4  loadli.w r1,  -3464(r30)
003f60  8b903010  add.s r1, r1, r3
003f64  e74b1fec  storeli.w r1, -2372(r30)
003f68  e340efe4  loadli.w r1,  -3468(r30)
003f6c  8b903010  add.s r1, r1, r3
003f70  670c1fec  storeli.w r1, -2368(r30)
003f74  e300efe4  loadli.w r1,  -3472(r30)
003f78  8b903010  add.s r1, r1, r3
003f7c  e74e1fec  storeli.w r1, -2324(r30)
003f80  e340dfe4  loadli.w r1,  -3476(r30)
003f84  8b903010  add.s r1, r1, r3
003f88  674c1fec  storeli.w r1, -2364(r30)
003f8c  e300dfe4  loadli.w r1,  -3480(r30)
003f90  8b903010  add.s r1, r1, r3
003f94  670f1fec  storeli.w r1, -2320(r30)
003f98  e340cfe4  loadli.w r1,  -3484(r30)
003f9c  8b903010  add.s r1, r1, r3
003fa0  674f1fec  storeli.w r1, -2316(r30)
003fa4  e300cfe4  loadli.w r1,  -3488(r30)
003fa8  8b903010  add.s r1, r1, r3
003fac  e70f1fec  storeli.w r1, -2312(r30)
003fb0  e340bfe4  loadli.w r1,  -3492(r30)
003fb4  8b903010  add.s r1, r1, r3
003fb8  e74f1fec  storeli.w r1, -2308(r30)
003fbc  e300bfe4  loadli.w r1,  -3496(r30)
003fc0  8b903010  add.s r1, r1, r3
003fc4  67001fee  storeli.w r1, -2304(r30)
003fc8  e340afe4  loadli.w r1,  -3500(r30)
003fcc  8b903010  add.s r1, r1, r3
003fd0  67401fee  storeli.w r1, -2300(r30)
003fd4  e300afe4  loadli.w r1,  -3504(r30)
003fd8  8b903010  add.s r1, r1, r3
003fdc  e7001fee  storeli.w r1, -2296(r30)
003fe0  9f004000  addli r1, zero, 32
003fe4  5b190000  j 200
003fe8  9f000000  addli r1, zero, 0
003fec  9f010000  addli r3, zero, 0
003ff0  1f030000  addli r6, zero, 0
003ff4  1f070000  addli r14, zero, 0
003ff8  9f040000  addli r9, zero, 0
003ffc  9f050000  addli r11, zero, 0
004000  1f080000  addli r16, zero, 0
004004  9f080000  addli r17, zero, 0
004008  1f0a0000  addli r20, zero, 0
00400c  1f050000  addli r10, zero, 0
004010  9f0a0000  addli r21, zero, 0
004014  1f0b0000  addli r22, zero, 0
004018  9f0b0000  addli r23, zero, 0
00401c  9f0c0000  addli r25, zero, 0
004020  1f060000  addli r12, zero, 0
004024  9f060000  addli r13, zero, 0
004028  0b691910  add.f.rn r18, r18, r1
00402c  e3406fee  loadli.w r1,  -2252(r30)
004030  63020fef  loadli.w r4,  -2176(r30)
004034  63447fee  loadli.w r8,  -2244(r30)
004038  0b6e6e10  add.f.rn r28, r28, r6
00403c  63038fee  loadli.w r6,  -2240(r30)
004040  8be2e210  add.f.rn r5, r5, r14
004044  63475fee  loadli.w r14,  -2260(r30)
004048  8be39310  add.f.rn r7, r7, r9
00404c  e3047fee  loadli.w r9,  -2248(r30)
004050  8bed3d10  add.f.rn r27, r27, r3
004054  8be0a010  add.f.rn r1, r1, r10
004058  0b62b210  add.f.rn r4, r4, r11
00405c  e3056fee  loadli.w r11,  -2256(r30)
004060  0b630311  add.f.rn r6, r6, r16
004064  63085fee  loadli.w r16,  -2264(r30)
004068  0b641411  add.f.rn r8, r8, r17
00406c  e3484fee  loadli.w r17,  -2268(r30)
004070  8be44411  add.f.rn r9, r9, r20
004074  0b676711  add.f.rn r14, r14, r22
004078  8be55511  add.f.rn r11, r11, r21
00407c  0b687811  add.f.rn r16, r16, r23
004080  8be89811  add.f.rn r17, r17, r25
004084  1f850000  addli r10, r1, 0
004088  e3004fee  loadli.w r1,  -2272(r30)
00408c  8be0c010  add.f.rn r1, r1, r12
004090  1f860000  addli r12, r1, 0
004094  e3403fee  loadli.w r1,  -2276(r30)
004098  8be0d010  add.f.rn r1, r1, r13
00409c  9f860000  addli r13, r1, 0
0040a0  e3003fee  loadli.w r1,  -2280(r30)
0040a4  9f804000  addli r1, r1, 32
0040a8  b7dcf002  beq r1, r15, 1844
0040ac  67046fee  storeli.w r6, -2240(r30)
0040b0  0b131d10  add.s r6, r26, r1
0040b4  e7438fee  storeli.w r8, -2244(r30)
0040b8  92309002  vadd.s.mz vr1{mr1}, zero, vr9
0040bc  e742efee  storeli.w r14, -2260(r30)
0040c0  1f170000  addli r14, zero, 1
0040c4  e7039fee  storeli.w r9, -2248(r30)
0040c8  e741dfee  storeli.w r13, -2276(r30)
0040cc  6702cfee  storeli.w r12, -2272(r30)
0040d0  67421fef  storeli.w r17, -2268(r30)
0040d4  e7020fef  storeli.w r16, -2264(r30)
0040d8  6703bfee  storeli.w r11, -2256(r30)
0040dc  6743afee  storeli.w r10, -2252(r30)
0040e0  67084fee  storeli.w r4, -2176(r30)
0040e4  1f820000  addli r4, r1, 0
0040e8  12319002  vadd.s.mz vr2{mr1}, zero, vr9
0040ec  6b340300  load.hu r8, 0(r6)
0040f0  eb342300  load.hu r9, 2(r6)
0040f4  7e0107e0  vmmov mr2, r14
0040f8  eb31a301  load.hu r3, 26(r6)
0040fc  eb30c301  load.hu r1, 28(r6)
004100  6b354300  load.hu r10, 4(r6)
004104  eb356300  load.hu r11, 6(r6)
004108  6b368300  load.hu r12, 8(r6)
00410c  eb36a300  load.hu r13, 10(r6)
004110  6b38c300  load.hu r16, 12(r6)
004114  eb38e300  load.hu r17, 14(r6)
004118  6b3a0301  load.hu r20, 16(r6)
00411c  eb3a2301  load.hu r21, 18(r6)
004120  6b3b4301  load.hu r22, 20(r6)
004124  eb3b6301  load.hu r23, 22(r6)
004128  eb3c8301  load.hu r25, 24(r6)
00412c  6b33e301  load.hu r6, 30(r6)
004130  33140418  bfloat2float.rn r8, r8
004134  b3910118  bfloat2float.rn r3, r3
004138  b3900018  bfloat2float.rn r1, r1
00413c  ea201434  vor.u.mh vr1{mr2}, r8, vr1
004140  33940418  bfloat2float.rn r8, r9
004144  9f240000  addli r9, zero, 2
004148  fe8104e0  vmmov mr3, r9
00414c  9f440000  addli r9, zero, 4
004150  ea201436  vor.u.mh vr1{mr3}, r8, vr1
004154  33140518  bfloat2float.rn r8, r10
004158  7e8004e0  vmmov mr0, r9
00415c  9f041000  addli r9, zero, 8
004160  ea201430  vor.u.mh vr1{mr0}, r8, vr1
004164  33940518  bfloat2float.rn r8, r11
004168  7e8004e0  vmmov mr0, r9
00416c  9f042000  addli r9, zero, 16
004170  ea201430  vor.u.mh vr1{mr0}, r8, vr1
004174  33140618  bfloat2float.rn r8, r12
004178  7e8004e0  vmmov mr0, r9
00417c  9f044000  addli r9, zero, 32
004180  ea201430  vor.u.mh vr1{mr0}, r8, vr1
004184  33940618  bfloat2float.rn r8, r13
004188  7e8004e0  vmmov mr0, r9
00418c  9f048000  addli r9, zero, 64
004190  ea201430  vor.u.mh vr1{mr0}, r8, vr1
004194  33140818  bfloat2float.rn r8, r16
004198  7e8004e0  vmmov mr0, r9
00419c  9f040001  addli r9, zero, 128
0041a0  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0041a4  33940818  bfloat2float.rn r8, r17
0041a8  7e8004e0  vmmov mr0, r9
0041ac  9f040002  addli r9, zero, 256
0041b0  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0041b4  33140a18  bfloat2float.rn r8, r20
0041b8  7e8004e0  vmmov mr0, r9
0041bc  9f040004  addli r9, zero, 512
0041c0  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0041c4  33940a18  bfloat2float.rn r8, r21
0041c8  7e8004e0  vmmov mr0, r9
0041cc  9f040008  addli r9, zero, 1024
0041d0  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0041d4  33140b18  bfloat2float.rn r8, r22
0041d8  7e8004e0  vmmov mr0, r9
0041dc  9f040010  addli r9, zero, 2048
0041e0  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0041e4  33940b18  bfloat2float.rn r8, r23
0041e8  7e8004e0  vmmov mr0, r9
0041ec  9f040020  addli r9, zero, 4096
0041f0  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0041f4  33940c18  bfloat2float.rn r8, r25
0041f8  7e8004e0  vmmov mr0, r9
0041fc  ea201430  vor.u.mh vr1{mr0}, r8, vr1
004200  1f040040  addli r8, zero, 8192
004204  7e0004e0  vmmov mr0, r8
004208  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
00420c  ab410000  lui r3, 4
004210  7e8001e0  vmmov mr0, r3
004214  9f010ffa  addli r3, r30, -768
004218  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00421c  e7014fee  storeli.w r4, -2280(r30)
004220  8b914110  add.s r3, r3, r4
004224  2b820000  lui r4, 8
004228  b3100318  bfloat2float.rn r1, r6
00422c  7e0002e0  vmmov mr0, r4
004230  1f420000  addli r4, zero, 4
004234  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
004238  ebb00100  load.hu r1, 0(r3)
00423c  6bb32100  load.hu r6, 2(r3)
004240  6bb44100  load.hu r8, 4(r3)
004244  ebb46100  load.hu r9, 6(r3)
004248  6bb58100  load.hu r10, 8(r3)
00424c  ebb5a100  load.hu r11, 10(r3)
004250  6bb6c100  load.hu r12, 12(r3)
004254  ebb6e100  load.hu r13, 14(r3)
004258  6bb80101  load.hu r16, 16(r3)
00425c  ebb82101  load.hu r17, 18(r3)
004260  6bba4101  load.hu r20, 20(r3)
004264  ebba6101  load.hu r21, 22(r3)
004268  6bbb8101  load.hu r22, 24(r3)
00426c  ebbba101  load.hu r23, 26(r3)
004270  ebbcc101  load.hu r25, 28(r3)
004274  ebb1e101  load.hu r3, 30(r3)
004278  b3900018  bfloat2float.rn r1, r1
00427c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
004280  b3100318  bfloat2float.rn r1, r6
004284  7e0102e0  vmmov mr2, r4
004288  1f021000  addli r4, zero, 8
00428c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
004290  b3100418  bfloat2float.rn r1, r8
004294  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
004298  b3900418  bfloat2float.rn r1, r9
00429c  7e0102e0  vmmov mr2, r4
0042a0  1f022000  addli r4, zero, 16
0042a4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0042a8  b3100518  bfloat2float.rn r1, r10
0042ac  7e0102e0  vmmov mr2, r4
0042b0  1f024000  addli r4, zero, 32
0042b4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0042b8  b3900518  bfloat2float.rn r1, r11
0042bc  7e0102e0  vmmov mr2, r4
0042c0  1f028000  addli r4, zero, 64
0042c4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0042c8  b3100618  bfloat2float.rn r1, r12
0042cc  7e0102e0  vmmov mr2, r4
0042d0  1f020001  addli r4, zero, 128
0042d4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0042d8  b3900618  bfloat2float.rn r1, r13
0042dc  7e0102e0  vmmov mr2, r4
0042e0  1f020002  addli r4, zero, 256
0042e4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0042e8  b3100818  bfloat2float.rn r1, r16
0042ec  7e0102e0  vmmov mr2, r4
0042f0  1f020004  addli r4, zero, 512
0042f4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0042f8  b3900818  bfloat2float.rn r1, r17
0042fc  7e0102e0  vmmov mr2, r4
004300  1f020008  addli r4, zero, 1024
004304  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
004308  b3100a18  bfloat2float.rn r1, r20
00430c  7e0102e0  vmmov mr2, r4
004310  1f020010  addli r4, zero, 2048
004314  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
004318  b3900a18  bfloat2float.rn r1, r21
00431c  7e0102e0  vmmov mr2, r4
004320  1f020020  addli r4, zero, 4096
004324  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
004328  b3100b18  bfloat2float.rn r1, r22
00432c  7e0102e0  vmmov mr2, r4
004330  1f020040  addli r4, zero, 8192
004334  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
004338  b3900b18  bfloat2float.rn r1, r23
00433c  7e0102e0  vmmov mr2, r4
004340  2b420000  lui r4, 4
004344  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
004348  b3900c18  bfloat2float.rn r1, r25
00434c  7e0102e0  vmmov mr2, r4
004350  2b02807f  lui r4, 522240
004354  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
004358  b3900118  bfloat2float.rn r1, r3
00435c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
004360  9f000ff0  addli r1, r30, -2048
004364  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
004368  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00436c  00a00000  mfence { lm }
004370  e3060ff0  loadli.w r13,  -2048(r30)
004374  63460ff0  loadli.w r12,  -2044(r30)
004378  63051ff0  loadli.w r10,  -2040(r30)
00437c  e3441ff0  loadli.w r9,  -2036(r30)
004380  e30c2ff0  loadli.w r25,  -2032(r30)
004384  63482ff0  loadli.w r16,  -2028(r30)
004388  e3003ff0  loadli.w r1,  -2024(r30)
00438c  63433ff0  loadli.w r6,  -2020(r30)
004390  e3014ff0  loadli.w r3,  -2016(r30)
004394  634b4ff0  loadli.w r22,  -2012(r30)
004398  630a5ff0  loadli.w r20,  -2008(r30)
00439c  17843601  and r8, r13, r19
0043a0  13078204  setlt.u r14, r4, r8
0043a4  63445ff0  loadli.w r8,  -2004(r30)
0043a8  e30b6ff0  loadli.w r23,  -2000(r30)
0043ac  e34a6ff0  loadli.w r21,  -1996(r30)
0043b0  e3087ff0  loadli.w r17,  -1992(r30)
0043b4  e3457ff0  loadli.w r11,  -1988(r30)
0043b8  3b700700  bneq r14, zero, 28
0043bc  1bc70601  srli r14, r13, 16
0043c0  6342ffef  loadli.w r4,  -2052(r30)
0043c4  1b071700  andi r14, r14, 1
0043c8  8b96e610  add.s r13, r13, r14
0043cc  0b974610  add.s r14, r13, r4
0043d0  db010000  j 12
0043d4  2b024000  lui r4, 1024
0043d8  17974600  or r14, r13, r4
0043dc  97063601  and r13, r12, r19
0043e0  2b02807f  lui r4, 522240
0043e4  9306d204  setlt.u r13, r4, r13
0043e8  3bf00600  bneq r13, zero, 28
0043ec  9b460601  srli r13, r12, 16
0043f0  6342ffef  loadli.w r4,  -2052(r30)
0043f4  9b861600  andi r13, r13, 1
0043f8  0b16d610  add.s r12, r12, r13
0043fc  0b124610  add.s r4, r12, r4
004400  db010000  j 12
004404  2b024000  lui r4, 1024
004408  17124600  or r4, r12, r4
00440c  67414fee  storeli.w r4, -2284(r30)
004410  17063501  and r12, r10, r19
004414  2b02807f  lui r4, 522240
004418  1306c204  setlt.u r12, r4, r12
00441c  3b700600  bneq r12, zero, 28
004420  1b460501  srli r12, r10, 16
004424  6342ffef  loadli.w r4,  -2052(r30)
004428  1b061600  andi r12, r12, 1
00442c  0b15c510  add.s r10, r10, r12
004430  0b124510  add.s r4, r10, r4
004434  db010000  j 12
004438  2b024000  lui r4, 1024
00443c  17124500  or r4, r10, r4
004440  67014fee  storeli.w r4, -2288(r30)
004444  17853401  and r10, r9, r19
004448  2b02807f  lui r4, 522240
00444c  1305a204  setlt.u r10, r4, r10
004450  3b700500  bneq r10, zero, 28
004454  1bc50401  srli r10, r9, 16
004458  6342ffef  loadli.w r4,  -2052(r30)
00445c  1b051500  andi r10, r10, 1
004460  8b94a410  add.s r9, r9, r10
004464  0b924410  add.s r4, r9, r4
004468  db010000  j 12
00446c  2b024000  lui r4, 1024
004470  17924400  or r4, r9, r4
004474  e7404fee  storeli.w r4, -2292(r30)
004478  97843c01  and r9, r25, r19
00447c  2b02807f  lui r4, 522240
004480  93049204  setlt.u r9, r4, r9
004484  3bf00400  bneq r9, zero, 28
004488  9bc40c01  srli r9, r25, 16
00448c  6342ffef  loadli.w r4,  -2052(r30)
004490  9b841400  andi r9, r9, 1
004494  8b949c10  add.s r9, r25, r9
004498  8b9c4410  add.s r25, r9, r4
00449c  db010000  j 12
0044a0  2b024000  lui r4, 1024
0044a4  979c4c00  or r25, r25, r4
0044a8  97043801  and r9, r16, r19
0044ac  2b02807f  lui r4, 522240
0044b0  93049204  setlt.u r9, r4, r9
0044b4  3bf00400  bneq r9, zero, 28
0044b8  9b440801  srli r9, r16, 16
0044bc  6342ffef  loadli.w r4,  -2052(r30)
0044c0  9b841400  andi r9, r9, 1
0044c4  8b149810  add.s r9, r16, r9
0044c8  0b984410  add.s r16, r9, r4
0044cc  db010000  j 12
0044d0  2b024000  lui r4, 1024
0044d4  17184800  or r16, r16, r4
0044d8  97843001  and r9, r1, r19
0044dc  2b02807f  lui r4, 522240
0044e0  93049204  setlt.u r9, r4, r9
0044e4  3bf00400  bneq r9, zero, 28
0044e8  9bc40001  srli r9, r1, 16
0044ec  6342ffef  loadli.w r4,  -2052(r30)
0044f0  9b841400  andi r9, r9, 1
0044f4  8b909010  add.s r1, r1, r9
0044f8  8b904010  add.s r1, r1, r4
0044fc  db010000  j 12
004500  2b024000  lui r4, 1024
004504  97904000  or r1, r1, r4
004508  97043301  and r9, r6, r19
00450c  2b02807f  lui r4, 522240
004510  93049204  setlt.u r9, r4, r9
004514  3bf00400  bneq r9, zero, 28
004518  9b440301  srli r9, r6, 16
00451c  6342ffef  loadli.w r4,  -2052(r30)
004520  9b841400  andi r9, r9, 1
004524  0b139310  add.s r6, r6, r9
004528  0b134310  add.s r6, r6, r4
00452c  db010000  j 12
004530  2b024000  lui r4, 1024
004534  17134300  or r6, r6, r4
004538  97843101  and r9, r3, r19
00453c  2b02807f  lui r4, 522240
004540  93049204  setlt.u r9, r4, r9
004544  3bf00400  bneq r9, zero, 28
004548  9bc40101  srli r9, r3, 16
00454c  6342ffef  loadli.w r4,  -2052(r30)
004550  9b841400  andi r9, r9, 1
004554  8b919110  add.s r3, r3, r9
004558  8b914110  add.s r3, r3, r4
00455c  db010000  j 12
004560  2b024000  lui r4, 1024
004564  97914100  or r3, r3, r4
004568  97043b01  and r9, r22, r19
00456c  2b02807f  lui r4, 522240
004570  93049204  setlt.u r9, r4, r9
004574  3bf00400  bneq r9, zero, 28
004578  9b440b01  srli r9, r22, 16
00457c  6342ffef  loadli.w r4,  -2052(r30)
004580  9b841400  andi r9, r9, 1
004584  8b149b10  add.s r9, r22, r9
004588  0b9b4410  add.s r22, r9, r4
00458c  db010000  j 12
004590  2b024000  lui r4, 1024
004594  171b4b00  or r22, r22, r4
004598  97043a01  and r9, r20, r19
00459c  2b02807f  lui r4, 522240
0045a0  93049204  setlt.u r9, r4, r9
0045a4  3bf00400  bneq r9, zero, 28
0045a8  9b440a01  srli r9, r20, 16
0045ac  6342ffef  loadli.w r4,  -2052(r30)
0045b0  9b841400  andi r9, r9, 1
0045b4  8b149a10  add.s r9, r20, r9
0045b8  0b9a4410  add.s r20, r9, r4
0045bc  db010000  j 12
0045c0  2b024000  lui r4, 1024
0045c4  171a4a00  or r20, r20, r4
0045c8  97043401  and r9, r8, r19
0045cc  2b02807f  lui r4, 522240
0045d0  93049204  setlt.u r9, r4, r9
0045d4  3bf00400  bneq r9, zero, 28
0045d8  9b440401  srli r9, r8, 16
0045dc  6342ffef  loadli.w r4,  -2052(r30)
0045e0  9b841400  andi r9, r9, 1
0045e4  0b149410  add.s r8, r8, r9
0045e8  0b144410  add.s r8, r8, r4
0045ec  db010000  j 12
0045f0  2b024000  lui r4, 1024
0045f4  17144400  or r8, r8, r4
0045f8  97843b01  and r9, r23, r19
0045fc  2b02807f  lui r4, 522240
004600  93049204  setlt.u r9, r4, r9
004604  3bf00400  bneq r9, zero, 28
004608  9bc40b01  srli r9, r23, 16
00460c  6342ffef  loadli.w r4,  -2052(r30)
004610  9b841400  andi r9, r9, 1
004614  8b949b10  add.s r9, r23, r9
004618  8b944410  add.s r9, r9, r4
00461c  db010000  j 12
004620  2b024000  lui r4, 1024
004624  97944b00  or r9, r23, r4
004628  17853a01  and r10, r21, r19
00462c  2b02807f  lui r4, 522240
004630  1305a204  setlt.u r10, r4, r10
004634  3b700500  bneq r10, zero, 28
004638  1bc50a01  srli r10, r21, 16
00463c  6342ffef  loadli.w r4,  -2052(r30)
004640  1b051500  andi r10, r10, 1
004644  0b95aa10  add.s r10, r21, r10
004648  0b154510  add.s r10, r10, r4
00464c  db010000  j 12
004650  2b024000  lui r4, 1024
004654  17954a00  or r10, r21, r4
004658  17863801  and r12, r17, r19
00465c  2b02807f  lui r4, 522240
004660  1306c204  setlt.u r12, r4, r12
004664  3b700600  bneq r12, zero, 28
004668  1bc60801  srli r12, r17, 16
00466c  6342ffef  loadli.w r4,  -2052(r30)
004670  1b061600  andi r12, r12, 1
004674  0b96c810  add.s r12, r17, r12
004678  0b164610  add.s r12, r12, r4
00467c  db010000  j 12
004680  2b024000  lui r4, 1024
004684  17964800  or r12, r17, r4
004688  97863501  and r13, r11, r19
00468c  2b02807f  lui r4, 522240
004690  9306d204  setlt.u r13, r4, r13
004694  3bf00600  bneq r13, zero, 28
004698  9bc60501  srli r13, r11, 16
00469c  6342ffef  loadli.w r4,  -2052(r30)
0046a0  9b861600  andi r13, r13, 1
0046a4  8b95d510  add.s r11, r11, r13
0046a8  8b954510  add.s r11, r11, r4
0046ac  db010000  j 12
0046b0  2b024000  lui r4, 1024
0046b4  97954500  or r11, r11, r4
0046b8  e306efef  loadli.w r13,  -2064(r30)
0046bc  1f020004  addli r4, zero, 512
0046c0  3fa04600  blt.s r13, r4, 8
0046c4  db24ffff  j -1756
0046c8  63422fee  loadli.w r4,  -2284(r30)
0046cc  97068701  and r13, r14, r24
0046d0  97808001  and r1, r1, r24
0046d4  17058501  and r10, r10, r24
0046d8  978b8c01  and r23, r25, r24
0046dc  17088801  and r16, r16, r24
0046e0  170b8b01  and r22, r22, r24
0046e4  17068601  and r12, r12, r24
0046e8  17038301  and r6, r6, r24
0046ec  17048401  and r8, r8, r24
0046f0  97818101  and r3, r3, r24
0046f4  170a8a01  and r20, r20, r24
0046f8  97848401  and r9, r9, r24
0046fc  97858501  and r11, r11, r24
004700  8be62618  sub.f.rn r13, r13, r2
004704  8bec2018  sub.f.rn r25, r1, r2
004708  9f000e00  addli r1, r28, 0
00470c  0b6e2518  sub.f.rn r28, r10, r2
004710  0b662618  sub.f.rn r12, r12, r2
004714  8b672318  sub.f.rn r15, r6, r2
004718  1f830200  addli r6, r5, 0
00471c  9f020900  addli r5, r18, 0
004720  0b6d2418  sub.f.rn r26, r8, r2
004724  1f840300  addli r8, r7, 0
004728  9f830900  addli r7, r19, 0
00472c  9f890d00  addli r19, r27, 0
004730  8beb2b18  sub.f.rn r23, r23, r2
004734  8bed2418  sub.f.rn r27, r9, r2
004738  0b682818  sub.f.rn r16, r16, r2
00473c  0be92118  sub.f.rn r18, r3, r2
004740  0b6b2b18  sub.f.rn r22, r22, r2
004744  17078201  and r14, r4, r24
004748  63022fee  loadli.w r4,  -2288(r30)
00474c  0b672718  sub.f.rn r14, r14, r2
004750  97088201  and r17, r4, r24
004754  63421fee  loadli.w r4,  -2292(r30)
004758  8be82818  sub.f.rn r17, r17, r2
00475c  8f860600  exp.f.rn r13, r13
004760  8f840b00  exp.f.rn r9, r23
004764  8f8b0d00  exp.f.rn r23, r27
004768  9f8d0900  addli r27, r19, 0
00476c  9f890300  addli r19, r7, 0
004770  9f030400  addli r7, r8, 0
004774  0f060600  exp.f.rn r12, r12
004778  970a8201  and r21, r4, r24
00477c  0b6c2a18  sub.f.rn r24, r20, r2
004780  0be22518  sub.f.rn r4, r11, r2
004784  8f050800  exp.f.rn r11, r16
004788  0f880c00  exp.f.rn r16, r25
00478c  0f0a0900  exp.f.rn r20, r18
004790  1f890200  addli r18, r5, 0
004794  8f0c0e00  exp.f.rn r25, r28
004798  1f8e0000  addli r28, r1, 0
00479c  9f020300  addli r5, r6, 0
0047a0  8bea2a18  sub.f.rn r21, r21, r2
0047a4  8f010700  exp.f.rn r3, r14
0047a8  0f850800  exp.f.rn r10, r17
0047ac  8f880700  exp.f.rn r17, r15
0047b0  9f070002  addli r15, zero, 256
0047b4  9f800600  addli r1, r13, 0
0047b8  8f060200  exp.f.rn r13, r4
0047bc  0f870a00  exp.f.rn r14, r21
0047c0  8f0a0c00  exp.f.rn r21, r24
0047c4  2b0cffff  lui r24, 1048560
0047c8  1f030500  addli r6, r10, 0
0047cc  0f050b00  exp.f.rn r10, r22
0047d0  0f0b0d00  exp.f.rn r22, r26
0047d4  1f0d0ff8  addli r26, r30, -1024
0047d8  5b0affff  j -1968
0047dc  8b60b911  add.f.rn r1, r18, r27
0047e0  e301cfe9  loadli.w r3,  -2848(r30)
0047e4  8be0c011  add.f.rn r1, r1, r28
0047e8  8be05010  add.f.rn r1, r1, r5
0047ec  8be07010  add.f.rn r1, r1, r7
0047f0  8be04010  add.f.rn r1, r1, r4
0047f4  8be06010  add.f.rn r1, r1, r6
0047f8  8be08010  add.f.rn r1, r1, r8
0047fc  8be09010  add.f.rn r1, r1, r9
004800  8be0a010  add.f.rn r1, r1, r10
004804  8be0b010  add.f.rn r1, r1, r11
004808  8be0e010  add.f.rn r1, r1, r14
00480c  8be00011  add.f.rn r1, r1, r16
004810  8be01011  add.f.rn r1, r1, r17
004814  8be0c010  add.f.rn r1, r1, r12
004818  8be0d010  add.f.rn r1, r1, r13
00481c  73e01100  stores.w r1, 0(r3)
004820  00a00300  mfence { lm, sm, gm }
004824  e302dfed  loadli.w r5,  -2328(r30)
004828  80a10204  csr_set csr3, r5
00482c  00d00100  sync_group
004830  e340cfed  loadli.w r1,  -2332(r30)
004834  3ba10000  bneq r1, zero, 72
004838  6303dfe9  loadli.w r6,  -2840(r30)
00483c  ef400300  loads.w r1, 0(r6)
004840  ef414300  loads.w r3, 4(r6)
004844  6f428300  loads.w r4, 8(r6)
004848  8be03010  add.f.rn r1, r1, r3
00484c  ef41c300  loads.w r3, 12(r6)
004850  8be04010  add.f.rn r1, r1, r4
004854  6f420301  loads.w r4, 16(r6)
004858  8be03010  add.f.rn r1, r1, r3
00485c  ef414301  loads.w r3, 20(r6)
004860  8be04010  add.f.rn r1, r1, r4
004864  6f428301  loads.w r4, 24(r6)
004868  8be03010  add.f.rn r1, r1, r3
00486c  ef41c301  loads.w r3, 28(r6)
004870  8be04010  add.f.rn r1, r1, r4
004874  8be03010  add.f.rn r1, r1, r3
004878  73601300  stores.w r1, 0(r6)
00487c  00a00300  mfence { lm, sm, gm }
004880  80a10204  csr_set csr3, r5
004884  00d00100  sync_group
004888  e300dfe9  loadli.w r1,  -2840(r30)
00488c  ab01803f  lui r3, 260096
004890  e34bffef  loadli.w r23,  -2052(r30)
004894  efc00000  loads.w r1, 0(r1)
004898  8f801118  div.f.rn r1, r3, r1
00489c  9f010000  addli r3, zero, 0
0048a0  5b050000  j 40
0048a4  9b420201  srli r5, r4, 16
0048a8  9b821200  andi r5, r5, 1
0048ac  0b125210  add.s r4, r4, r5
0048b0  0b127211  add.s r4, r4, r23
0048b4  1b420201  srli r4, r4, 16
0048b8  9f814100  addli r3, r3, 32
0048bc  731f4300  store.h r4, 30(r6)
0048c0  00a00000  mfence { lm }
0048c4  b784f1de  beq r3, r15, -17120
0048c8  0b133d10  add.s r6, r26, r3
0048cc  92309002  vadd.s.mz vr1{mr1}, zero, vr9
0048d0  1f1b0000  addli r22, zero, 1
0048d4  12319002  vadd.s.mz vr2{mr1}, zero, vr9
0048d8  ab0cffff  lui r25, 1048560
0048dc  eb330300  load.hu r7, 0(r6)
0048e0  6b342300  load.hu r8, 2(r6)
0048e4  7e010be0  vmmov mr2, r22
0048e8  eb32a301  load.hu r5, 26(r6)
0048ec  6b32c301  load.hu r4, 28(r6)
0048f0  eb344300  load.hu r9, 4(r6)
0048f4  6b356300  load.hu r10, 6(r6)
0048f8  eb358300  load.hu r11, 8(r6)
0048fc  6b36a300  load.hu r12, 10(r6)
004900  eb36c300  load.hu r13, 12(r6)
004904  6b37e300  load.hu r14, 14(r6)
004908  eb370301  load.hu r15, 16(r6)
00490c  6b382301  load.hu r16, 18(r6)
004910  eb384301  load.hu r17, 20(r6)
004914  6b396301  load.hu r18, 22(r6)
004918  6b3a8301  load.hu r20, 24(r6)
00491c  eb3ae301  load.hu r21, 30(r6)
004920  b3930318  bfloat2float.rn r7, r7
004924  b3920218  bfloat2float.rn r5, r5
004928  33120218  bfloat2float.rn r4, r4
00492c  eaa01334  vor.u.mh vr1{mr2}, r7, vr1
004930  b3130418  bfloat2float.rn r7, r8
004934  1f240000  addli r8, zero, 2
004938  fe0104e0  vmmov mr3, r8
00493c  1f440000  addli r8, zero, 4
004940  eaa01336  vor.u.mh vr1{mr3}, r7, vr1
004944  b3930418  bfloat2float.rn r7, r9
004948  7e0004e0  vmmov mr0, r8
00494c  1f041000  addli r8, zero, 8
004950  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
004954  b3130518  bfloat2float.rn r7, r10
004958  7e0004e0  vmmov mr0, r8
00495c  1f042000  addli r8, zero, 16
004960  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
004964  b3930518  bfloat2float.rn r7, r11
004968  7e0004e0  vmmov mr0, r8
00496c  1f044000  addli r8, zero, 32
004970  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
004974  b3130618  bfloat2float.rn r7, r12
004978  7e0004e0  vmmov mr0, r8
00497c  1f048000  addli r8, zero, 64
004980  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
004984  b3930618  bfloat2float.rn r7, r13
004988  7e0004e0  vmmov mr0, r8
00498c  1f040001  addli r8, zero, 128
004990  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
004994  b3130718  bfloat2float.rn r7, r14
004998  7e0004e0  vmmov mr0, r8
00499c  1f040002  addli r8, zero, 256
0049a0  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
0049a4  b3930718  bfloat2float.rn r7, r15
0049a8  7e0004e0  vmmov mr0, r8
0049ac  1f040004  addli r8, zero, 512
0049b0  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
0049b4  b3130818  bfloat2float.rn r7, r16
0049b8  7e0004e0  vmmov mr0, r8
0049bc  1f040008  addli r8, zero, 1024
0049c0  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
0049c4  b3930818  bfloat2float.rn r7, r17
0049c8  7e0004e0  vmmov mr0, r8
0049cc  1f040010  addli r8, zero, 2048
0049d0  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
0049d4  b3130918  bfloat2float.rn r7, r18
0049d8  7e0004e0  vmmov mr0, r8
0049dc  1f040020  addli r8, zero, 4096
0049e0  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
0049e4  b3130a18  bfloat2float.rn r7, r20
0049e8  7e0004e0  vmmov mr0, r8
0049ec  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
0049f0  9f030040  addli r7, zero, 8192
0049f4  7e8003e0  vmmov mr0, r7
0049f8  ab830000  lui r7, 8
0049fc  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
004a00  ab420000  lui r5, 4
004a04  7e8002e0  vmmov mr0, r5
004a08  9f020ffa  addli r5, r30, -768
004a0c  ea201230  vor.u.mh vr1{mr0}, r4, vr1
004a10  33920a18  bfloat2float.rn r4, r21
004a14  8b923210  add.s r5, r5, r3
004a18  7e8003e0  vmmov mr0, r7
004a1c  ea201230  vor.u.mh vr1{mr0}, r4, vr1
004a20  6bb20200  load.hu r4, 0(r5)
004a24  ebb32200  load.hu r7, 2(r5)
004a28  6bb44200  load.hu r8, 4(r5)
004a2c  ebb46200  load.hu r9, 6(r5)
004a30  6bb58200  load.hu r10, 8(r5)
004a34  ebb5a200  load.hu r11, 10(r5)
004a38  6bb6c200  load.hu r12, 12(r5)
004a3c  ebb6e200  load.hu r13, 14(r5)
004a40  6bb70201  load.hu r14, 16(r5)
004a44  ebb72201  load.hu r15, 18(r5)
004a48  6bb84201  load.hu r16, 20(r5)
004a4c  ebb86201  load.hu r17, 22(r5)
004a50  6bb98201  load.hu r18, 24(r5)
004a54  6bbaa201  load.hu r20, 26(r5)
004a58  ebbac201  load.hu r21, 28(r5)
004a5c  ebb2e201  load.hu r5, 30(r5)
004a60  33120218  bfloat2float.rn r4, r4
004a64  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004a68  33920318  bfloat2float.rn r4, r7
004a6c  9f430000  addli r7, zero, 4
004a70  7e8103e0  vmmov mr2, r7
004a74  9f031000  addli r7, zero, 8
004a78  6a212236  vor.u.mh vr2{mr3}, r4, vr2
004a7c  33120418  bfloat2float.rn r4, r8
004a80  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004a84  33920418  bfloat2float.rn r4, r9
004a88  7e8103e0  vmmov mr2, r7
004a8c  9f032000  addli r7, zero, 16
004a90  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004a94  33120518  bfloat2float.rn r4, r10
004a98  7e8103e0  vmmov mr2, r7
004a9c  9f034000  addli r7, zero, 32
004aa0  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004aa4  33920518  bfloat2float.rn r4, r11
004aa8  7e8103e0  vmmov mr2, r7
004aac  9f038000  addli r7, zero, 64
004ab0  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004ab4  33120618  bfloat2float.rn r4, r12
004ab8  7e8103e0  vmmov mr2, r7
004abc  9f030001  addli r7, zero, 128
004ac0  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004ac4  33920618  bfloat2float.rn r4, r13
004ac8  7e8103e0  vmmov mr2, r7
004acc  9f030002  addli r7, zero, 256
004ad0  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004ad4  33120718  bfloat2float.rn r4, r14
004ad8  7e8103e0  vmmov mr2, r7
004adc  9f030004  addli r7, zero, 512
004ae0  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004ae4  33920718  bfloat2float.rn r4, r15
004ae8  7e8103e0  vmmov mr2, r7
004aec  9f030008  addli r7, zero, 1024
004af0  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004af4  33120818  bfloat2float.rn r4, r16
004af8  7e8103e0  vmmov mr2, r7
004afc  9f030010  addli r7, zero, 2048
004b00  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004b04  33920818  bfloat2float.rn r4, r17
004b08  7e8103e0  vmmov mr2, r7
004b0c  9f030020  addli r7, zero, 4096
004b10  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004b14  33120918  bfloat2float.rn r4, r18
004b18  7e8103e0  vmmov mr2, r7
004b1c  9f030040  addli r7, zero, 8192
004b20  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004b24  33120a18  bfloat2float.rn r4, r20
004b28  7e8103e0  vmmov mr2, r7
004b2c  ab430000  lui r7, 4
004b30  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004b34  33920a18  bfloat2float.rn r4, r21
004b38  7e8103e0  vmmov mr2, r7
004b3c  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004b40  33920218  bfloat2float.rn r4, r5
004b44  ab02807f  lui r5, 522240
004b48  6a212230  vor.u.mh vr2{mr0}, r4, vr2
004b4c  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
004b50  46100fc2  vstore_mask16.mz vr0{mr1}, 1536(r30)
004b54  00a00000  mfence { lm }
004b58  e3050ffc  loadli.w r11,  -512(r30)
004b5c  63440ffc  loadli.w r8,  -508(r30)
004b60  e30a1ffc  loadli.w r21,  -504(r30)
004b64  634a1ffc  loadli.w r20,  -500(r30)
004b68  63092ffc  loadli.w r18,  -496(r30)
004b6c  e3482ffc  loadli.w r17,  -492(r30)
004b70  63083ffc  loadli.w r16,  -488(r30)
004b74  e3473ffc  loadli.w r15,  -484(r30)
004b78  63074ffc  loadli.w r14,  -480(r30)
004b7c  e3464ffc  loadli.w r13,  -476(r30)
004b80  63065ffc  loadli.w r12,  -472(r30)
004b84  63455ffc  loadli.w r10,  -468(r30)
004b88  e3046ffc  loadli.w r9,  -464(r30)
004b8c  e3436ffc  loadli.w r7,  -460(r30)
004b90  17823501  and r4, r11, r19
004b94  138b4204  setlt.u r22, r5, r4
004b98  e3027ffc  loadli.w r5,  -456(r30)
004b9c  63427ffc  loadli.w r4,  -452(r30)
004ba0  3b600b00  bneq r22, zero, 24
004ba4  1bcb0501  srli r22, r11, 16
004ba8  1b0b1b00  andi r22, r22, 1
004bac  8b956511  add.s r11, r11, r22
004bb0  8b957511  add.s r11, r11, r23
004bb4  db010000  j 12
004bb8  2b0b4000  lui r22, 1024
004bbc  97956501  or r11, r11, r22
004bc0  170b3401  and r22, r8, r19
004bc4  2b0c807f  lui r24, 522240
004bc8  130b6c05  setlt.u r22, r24, r22
004bcc  3b600b00  bneq r22, zero, 24
004bd0  1b4b0401  srli r22, r8, 16
004bd4  1b0b1b00  andi r22, r22, 1
004bd8  0b146411  add.s r8, r8, r22
004bdc  0b147411  add.s r8, r8, r23
004be0  db010000  j 12
004be4  2b0b4000  lui r22, 1024
004be8  17146401  or r8, r8, r22
004bec  178b3a01  and r22, r21, r19
004bf0  130b6c05  setlt.u r22, r24, r22
004bf4  3b600b00  bneq r22, zero, 24
004bf8  1bcb0a01  srli r22, r21, 16
004bfc  1b0b1b00  andi r22, r22, 1
004c00  8b9a6a11  add.s r21, r21, r22
004c04  0b9e7a11  add.s r28, r21, r23
004c08  db010000  j 12
004c0c  2b0b4000  lui r22, 1024
004c10  179e6a01  or r28, r21, r22
004c14  970a3a01  and r21, r20, r19
004c18  2b0b807f  lui r22, 522240
004c1c  930a5b05  setlt.u r21, r22, r21
004c20  3be00a00  bneq r21, zero, 24
004c24  9b4a0a01  srli r21, r20, 16
004c28  9b8a1a00  andi r21, r21, 1
004c2c  0b1a5a11  add.s r20, r20, r21
004c30  8b1d7a11  add.s r27, r20, r23
004c34  db010000  j 12
004c38  ab0a4000  lui r21, 1024
004c3c  971d5a01  or r27, r20, r21
004c40  170a3901  and r20, r18, r19
004c44  ab0a807f  lui r21, 522240
004c48  138a4a05  setlt.u r20, r21, r20
004c4c  3b600a00  bneq r20, zero, 24
004c50  1b4a0901  srli r20, r18, 16
004c54  1b0a1a00  andi r20, r20, 1
004c58  0b194911  add.s r18, r18, r20
004c5c  0b1d7911  add.s r26, r18, r23
004c60  db010000  j 12
004c64  2b0a4000  lui r20, 1024
004c68  171d4901  or r26, r18, r20
004c6c  17893801  and r18, r17, r19
004c70  2b0a807f  lui r20, 522240
004c74  13092a05  setlt.u r18, r20, r18
004c78  3b600900  bneq r18, zero, 24
004c7c  1bc90801  srli r18, r17, 16
004c80  1b091900  andi r18, r18, 1
004c84  8b982811  add.s r17, r17, r18
004c88  0b9c7811  add.s r24, r17, r23
004c8c  db010000  j 12
004c90  2b094000  lui r18, 1024
004c94  179c2801  or r24, r17, r18
004c98  97083801  and r17, r16, r19
004c9c  2b09807f  lui r18, 522240
004ca0  93081905  setlt.u r17, r18, r17
004ca4  3be00800  bneq r17, zero, 24
004ca8  9b480801  srli r17, r16, 16
004cac  9b881800  andi r17, r17, 1
004cb0  0b181811  add.s r16, r16, r17
004cb4  0b197811  add.s r18, r16, r23
004cb8  db010000  j 12
004cbc  ab084000  lui r17, 1024
004cc0  17191801  or r18, r16, r17
004cc4  17883701  and r16, r15, r19
004cc8  ab08807f  lui r17, 522240
004ccc  13880805  setlt.u r16, r17, r16
004cd0  3b600800  bneq r16, zero, 24
004cd4  1bc80701  srli r16, r15, 16
004cd8  1b081800  andi r16, r16, 1
004cdc  8b970711  add.s r15, r15, r16
004ce0  8b977711  add.s r15, r15, r23
004ce4  db010000  j 12
004ce8  2b084000  lui r16, 1024
004cec  97970701  or r15, r15, r16
004cf0  17083701  and r16, r14, r19
004cf4  13880805  setlt.u r16, r17, r16
004cf8  3b600800  bneq r16, zero, 24
004cfc  1b480701  srli r16, r14, 16
004d00  1b081800  andi r16, r16, 1
004d04  0b170711  add.s r14, r14, r16
004d08  0b177711  add.s r14, r14, r23
004d0c  db010000  j 12
004d10  2b084000  lui r16, 1024
004d14  17170701  or r14, r14, r16
004d18  17883601  and r16, r13, r19
004d1c  13880805  setlt.u r16, r17, r16
004d20  3b600800  bneq r16, zero, 24
004d24  1bc80601  srli r16, r13, 16
004d28  1b081800  andi r16, r16, 1
004d2c  8b960611  add.s r13, r13, r16
004d30  8b967611  add.s r13, r13, r23
004d34  db010000  j 12
004d38  2b084000  lui r16, 1024
004d3c  97960601  or r13, r13, r16
004d40  17083601  and r16, r12, r19
004d44  13880805  setlt.u r16, r17, r16
004d48  3b600800  bneq r16, zero, 24
004d4c  1b480601  srli r16, r12, 16
004d50  1b081800  andi r16, r16, 1
004d54  0b160611  add.s r12, r12, r16
004d58  0b167611  add.s r12, r12, r23
004d5c  db010000  j 12
004d60  2b084000  lui r16, 1024
004d64  17160601  or r12, r12, r16
004d68  17083501  and r16, r10, r19
004d6c  13880805  setlt.u r16, r17, r16
004d70  3b600800  bneq r16, zero, 24
004d74  1b480501  srli r16, r10, 16
004d78  1b081800  andi r16, r16, 1
004d7c  0b150511  add.s r10, r10, r16
004d80  0b157511  add.s r10, r10, r23
004d84  db010000  j 12
004d88  2b084000  lui r16, 1024
004d8c  17150501  or r10, r10, r16
004d90  17883401  and r16, r9, r19
004d94  13880805  setlt.u r16, r17, r16
004d98  3b600800  bneq r16, zero, 24
004d9c  1bc80401  srli r16, r9, 16
004da0  1b081800  andi r16, r16, 1
004da4  8b940411  add.s r9, r9, r16
004da8  8b947411  add.s r9, r9, r23
004dac  db010000  j 12
004db0  2b084000  lui r16, 1024
004db4  97940401  or r9, r9, r16
004db8  17883301  and r16, r7, r19
004dbc  13880805  setlt.u r16, r17, r16
004dc0  3b600800  bneq r16, zero, 24
004dc4  1bc80301  srli r16, r7, 16
004dc8  1b081800  andi r16, r16, 1
004dcc  8b930311  add.s r7, r7, r16
004dd0  8b937311  add.s r7, r7, r23
004dd4  db010000  j 12
004dd8  2b084000  lui r16, 1024
004ddc  97930301  or r7, r7, r16
004de0  17883201  and r16, r5, r19
004de4  13880805  setlt.u r16, r17, r16
004de8  3b600800  bneq r16, zero, 24
004dec  1bc80201  srli r16, r5, 16
004df0  1b081800  andi r16, r16, 1
004df4  8b920211  add.s r5, r5, r16
004df8  8b927211  add.s r5, r5, r23
004dfc  db010000  j 12
004e00  2b084000  lui r16, 1024
004e04  97920201  or r5, r5, r16
004e08  17083201  and r16, r4, r19
004e0c  13880805  setlt.u r16, r17, r16
004e10  3b600800  bneq r16, zero, 24
004e14  1b480201  srli r16, r4, 16
004e18  1b081800  andi r16, r16, 1
004e1c  0b120211  add.s r4, r4, r16
004e20  0b127211  add.s r4, r4, r23
004e24  db010000  j 12
004e28  2b084000  lui r16, 1024
004e2c  17120201  or r4, r4, r16
004e30  97859501  and r11, r11, r25
004e34  8be52518  sub.f.rn r11, r11, r2
004e38  8f850500  exp.f.rn r11, r11
004e3c  8be5b020  mul.f.rn r11, r1, r11
004e40  17883501  and r16, r11, r19
004e44  13880805  setlt.u r16, r17, r16
004e48  3b600800  bneq r16, zero, 24
004e4c  1bc80501  srli r16, r11, 16
004e50  1b081800  andi r16, r16, 1
004e54  8b950511  add.s r11, r11, r16
004e58  8b957511  add.s r11, r11, r23
004e5c  db010000  j 12
004e60  2b084000  lui r16, 1024
004e64  97950501  or r11, r11, r16
004e68  17049401  and r8, r8, r25
004e6c  9bc50501  srli r11, r11, 16
004e70  0b642418  sub.f.rn r8, r8, r2
004e74  7310b300  store.h r11, 0(r6)
004e78  0f040400  exp.f.rn r8, r8
004e7c  0be48020  mul.f.rn r8, r1, r8
004e80  17083401  and r16, r8, r19
004e84  13880805  setlt.u r16, r17, r16
004e88  3b600800  bneq r16, zero, 24
004e8c  9b450401  srli r11, r8, 16
004e90  9b851500  andi r11, r11, 1
004e94  0b14b410  add.s r8, r8, r11
004e98  0b147411  add.s r8, r8, r23
004e9c  db010000  j 12
004ea0  ab054000  lui r11, 1024
004ea4  1714b400  or r8, r8, r11
004ea8  97059e01  and r11, r28, r25
004eac  1b440401  srli r8, r8, 16
004eb0  8be52518  sub.f.rn r11, r11, r2
004eb4  73118300  store.h r8, 2(r6)
004eb8  8f850500  exp.f.rn r11, r11
004ebc  8be5b020  mul.f.rn r11, r1, r11
004ec0  17883501  and r16, r11, r19
004ec4  13880805  setlt.u r16, r17, r16
004ec8  3b600800  bneq r16, zero, 24
004ecc  1bc40501  srli r8, r11, 16
004ed0  1b041400  andi r8, r8, 1
004ed4  0b948510  add.s r8, r11, r8
004ed8  0b147411  add.s r8, r8, r23
004edc  db010000  j 12
004ee0  2b044000  lui r8, 1024
004ee4  17948500  or r8, r11, r8
004ee8  97859d01  and r11, r27, r25
004eec  1b440401  srli r8, r8, 16
004ef0  8be52518  sub.f.rn r11, r11, r2
004ef4  73128300  store.h r8, 4(r6)
004ef8  8f850500  exp.f.rn r11, r11
004efc  8be5b020  mul.f.rn r11, r1, r11
004f00  17883501  and r16, r11, r19
004f04  13880805  setlt.u r16, r17, r16
004f08  3b600800  bneq r16, zero, 24
004f0c  1bc40501  srli r8, r11, 16
004f10  1b041400  andi r8, r8, 1
004f14  0b948510  add.s r8, r11, r8
004f18  0b147411  add.s r8, r8, r23
004f1c  db010000  j 12
004f20  2b044000  lui r8, 1024
004f24  17948500  or r8, r11, r8
004f28  97059d01  and r11, r26, r25
004f2c  1b440401  srli r8, r8, 16
004f30  8be52518  sub.f.rn r11, r11, r2
004f34  73138300  store.h r8, 6(r6)
004f38  8f850500  exp.f.rn r11, r11
004f3c  8be5b020  mul.f.rn r11, r1, r11
004f40  17883501  and r16, r11, r19
004f44  13880805  setlt.u r16, r17, r16
004f48  3b600800  bneq r16, zero, 24
004f4c  1bc40501  srli r8, r11, 16
004f50  1b041400  andi r8, r8, 1
004f54  0b948510  add.s r8, r11, r8
004f58  0b147411  add.s r8, r8, r23
004f5c  db010000  j 12
004f60  2b044000  lui r8, 1024
004f64  17948500  or r8, r11, r8
004f68  ab05ffff  lui r11, 1048560
004f6c  1b440401  srli r8, r8, 16
004f70  1f0d0ff8  addli r26, r30, -1024
004f74  2b0affff  lui r20, 1048560
004f78  9705bc00  and r11, r24, r11
004f7c  73148300  store.h r8, 8(r6)
004f80  8be52518  sub.f.rn r11, r11, r2
004f84  8f850500  exp.f.rn r11, r11
004f88  8be5b020  mul.f.rn r11, r1, r11
004f8c  17883501  and r16, r11, r19
004f90  13880805  setlt.u r16, r17, r16
004f94  3b600800  bneq r16, zero, 24
004f98  1bc40501  srli r8, r11, 16
004f9c  1b041400  andi r8, r8, 1
004fa0  0b948510  add.s r8, r11, r8
004fa4  0b147411  add.s r8, r8, r23
004fa8  db010000  j 12
004fac  2b044000  lui r8, 1024
004fb0  17948500  or r8, r11, r8
004fb4  97054901  and r11, r18, r20
004fb8  1b440401  srli r8, r8, 16
004fbc  8be52518  sub.f.rn r11, r11, r2
004fc0  73158300  store.h r8, 10(r6)
004fc4  8f850500  exp.f.rn r11, r11
004fc8  8be5b020  mul.f.rn r11, r1, r11
004fcc  17883501  and r16, r11, r19
004fd0  13880805  setlt.u r16, r17, r16
004fd4  3b600800  bneq r16, zero, 24
004fd8  1bc40501  srli r8, r11, 16
004fdc  1b041400  andi r8, r8, 1
004fe0  0b948510  add.s r8, r11, r8
004fe4  0b147411  add.s r8, r8, r23
004fe8  db010000  j 12
004fec  2b044000  lui r8, 1024
004ff0  17948500  or r8, r11, r8
004ff4  97854701  and r11, r15, r20
004ff8  1b440401  srli r8, r8, 16
004ffc  8be52518  sub.f.rn r11, r11, r2
005000  73168300  store.h r8, 12(r6)
005004  8f850500  exp.f.rn r11, r11
005008  8be5b020  mul.f.rn r11, r1, r11
00500c  97873501  and r15, r11, r19
005010  9387f804  setlt.u r15, r17, r15
005014  3be00700  bneq r15, zero, 24
005018  1bc40501  srli r8, r11, 16
00501c  1b041400  andi r8, r8, 1
005020  0b948510  add.s r8, r11, r8
005024  0b147411  add.s r8, r8, r23
005028  db010000  j 12
00502c  2b044000  lui r8, 1024
005030  17948500  or r8, r11, r8
005034  97054701  and r11, r14, r20
005038  1b440401  srli r8, r8, 16
00503c  9f070002  addli r15, zero, 256
005040  8be52518  sub.f.rn r11, r11, r2
005044  73178300  store.h r8, 14(r6)
005048  8f850500  exp.f.rn r11, r11
00504c  8be5b020  mul.f.rn r11, r1, r11
005050  17873501  and r14, r11, r19
005054  1387e804  setlt.u r14, r17, r14
005058  3b600700  bneq r14, zero, 24
00505c  1bc40501  srli r8, r11, 16
005060  1b041400  andi r8, r8, 1
005064  0b948510  add.s r8, r11, r8
005068  0b147411  add.s r8, r8, r23
00506c  db010000  j 12
005070  2b044000  lui r8, 1024
005074  17948500  or r8, r11, r8
005078  97854601  and r11, r13, r20
00507c  1b440401  srli r8, r8, 16
005080  8be52518  sub.f.rn r11, r11, r2
005084  73188300  store.h r8, 16(r6)
005088  8f850500  exp.f.rn r11, r11
00508c  8be5b020  mul.f.rn r11, r1, r11
005090  97863501  and r13, r11, r19
005094  9386d804  setlt.u r13, r17, r13
005098  3be00600  bneq r13, zero, 24
00509c  1bc40501  srli r8, r11, 16
0050a0  1b041400  andi r8, r8, 1
0050a4  0b948510  add.s r8, r11, r8
0050a8  0b147411  add.s r8, r8, r23
0050ac  db010000  j 12
0050b0  2b044000  lui r8, 1024
0050b4  17948500  or r8, r11, r8
0050b8  97054601  and r11, r12, r20
0050bc  1b440401  srli r8, r8, 16
0050c0  8be52518  sub.f.rn r11, r11, r2
0050c4  73198300  store.h r8, 18(r6)
0050c8  8f850500  exp.f.rn r11, r11
0050cc  8be5b020  mul.f.rn r11, r1, r11
0050d0  17863501  and r12, r11, r19
0050d4  1386c804  setlt.u r12, r17, r12
0050d8  3b600600  bneq r12, zero, 24
0050dc  1bc40501  srli r8, r11, 16
0050e0  1b041400  andi r8, r8, 1
0050e4  0b948510  add.s r8, r11, r8
0050e8  0b147411  add.s r8, r8, r23
0050ec  db010000  j 12
0050f0  2b044000  lui r8, 1024
0050f4  17948500  or r8, r11, r8
0050f8  17054501  and r10, r10, r20
0050fc  1b440401  srli r8, r8, 16
005100  0b652518  sub.f.rn r10, r10, r2
005104  731a8300  store.h r8, 20(r6)
005108  0f050500  exp.f.rn r10, r10
00510c  0be5a020  mul.f.rn r10, r1, r10
005110  97053501  and r11, r10, r19
005114  9385b804  setlt.u r11, r17, r11
005118  3be00500  bneq r11, zero, 24
00511c  1b440501  srli r8, r10, 16
005120  1b041400  andi r8, r8, 1
005124  0b148510  add.s r8, r10, r8
005128  0b147411  add.s r8, r8, r23
00512c  db010000  j 12
005130  2b044000  lui r8, 1024
005134  17148500  or r8, r10, r8
005138  97844401  and r9, r9, r20
00513c  1b440401  srli r8, r8, 16
005140  8be42418  sub.f.rn r9, r9, r2
005144  731b8300  store.h r8, 22(r6)
005148  8f840400  exp.f.rn r9, r9
00514c  8be49020  mul.f.rn r9, r1, r9
005150  17853401  and r10, r9, r19
005154  1385a804  setlt.u r10, r17, r10
005158  3b600500  bneq r10, zero, 24
00515c  1bc40401  srli r8, r9, 16
005160  1b041400  andi r8, r8, 1
005164  0b948410  add.s r8, r9, r8
005168  0b147411  add.s r8, r8, r23
00516c  db010000  j 12
005170  2b044000  lui r8, 1024
005174  17948400  or r8, r9, r8
005178  97834301  and r7, r7, r20
00517c  1b440401  srli r8, r8, 16
005180  8be32318  sub.f.rn r7, r7, r2
005184  731c8300  store.h r8, 24(r6)
005188  8f830300  exp.f.rn r7, r7
00518c  8be37020  mul.f.rn r7, r1, r7
005190  97843301  and r9, r7, r19
005194  93849804  setlt.u r9, r17, r9
005198  3be00400  bneq r9, zero, 24
00519c  1bc40301  srli r8, r7, 16
0051a0  1b041400  andi r8, r8, 1
0051a4  8b938310  add.s r7, r7, r8
0051a8  8b937311  add.s r7, r7, r23
0051ac  db010000  j 12
0051b0  2b044000  lui r8, 1024
0051b4  97938300  or r7, r7, r8
0051b8  97824201  and r5, r5, r20
0051bc  9bc30301  srli r7, r7, 16
0051c0  8be22218  sub.f.rn r5, r5, r2
0051c4  731d7300  store.h r7, 26(r6)
0051c8  8f820200  exp.f.rn r5, r5
0051cc  8be25020  mul.f.rn r5, r1, r5
0051d0  17843201  and r8, r5, r19
0051d4  13848804  setlt.u r8, r17, r8
0051d8  3b600400  bneq r8, zero, 24
0051dc  9bc30201  srli r7, r5, 16
0051e0  9b831300  andi r7, r7, 1
0051e4  8b927210  add.s r5, r5, r7
0051e8  8b927211  add.s r5, r5, r23
0051ec  db010000  j 12
0051f0  ab034000  lui r7, 1024
0051f4  97927200  or r5, r5, r7
0051f8  17024201  and r4, r4, r20
0051fc  9bc20201  srli r5, r5, 16
005200  0b622218  sub.f.rn r4, r4, r2
005204  731e5300  store.h r5, 28(r6)
005208  0f020200  exp.f.rn r4, r4
00520c  0be24020  mul.f.rn r4, r1, r4
005210  97033201  and r7, r4, r19
005214  93837804  setlt.u r7, r17, r7
005218  37ba03fa  beq r7, zero, -2420
00521c  ab024000  lui r5, 1024
005220  17125200  or r4, r4, r5
005224  5bd2feff  j -2416
005228  b78b01f0  beq r3, zero, -7456
00522c  9f010100  addli r3, r2, 0
005230  3bfb00f0  bneq r1, zero, -7460
005234  db5bfcff  j -7460
005238  378d00f0  beq r1, zero, -7360
00523c  9f000100  addli r1, r2, 0
005240  bbfc02f0  bneq r5, zero, -7364
005244  db67fcff  j -7364
005248  b7ce02f0  beq r5, zero, -7248
00524c  9f820300  addli r5, r7, 0
005250  bb3e03f0  bneq r6, zero, -7252
005254  db75fcff  j -7252
005258  373003f2  beq r6, zero, -7156
00525c  1f830200  addli r6, r5, 0
005260  3b2002f2  bneq r4, zero, -7160
005264  5b81fcff  j -7160
005268  b72102f2  beq r4, zero, -7064
00526c  1f820200  addli r4, r5, 0
005270  bb9101f2  bneq r3, zero, -7068
005274  db8cfcff  j -7068
005278  379301f2  beq r3, zero, -6972
00527c  9f010200  addli r3, r4, 0
005280  3b0301f2  bneq r2, zero, -6976
005284  5b98fcff  j -6976
005288  b70401f2  beq r2, zero, -6880
00528c  1f810100  addli r2, r3, 0
005290  3bf400f2  bneq r1, zero, -6884
005294  dba3fcff  j -6884
005298  9f0e8fe4  addli sp, r30, -3520
00529c  9f8e8e1b  addli sp, sp, 3520
0052a0  00a00300  mfence { lm, sm, gm }
0052a4  00100000  exit
0052a8  00100000  exit
0052ac  00100000  exit
0052b0  00100000  exit
0052b4  00100000  exit
0052b8  00100000  exit
0052bc  00100000  exit
0052c0  00100000  exit
0052c4  00100000  exit
0052c8  00100000  exit
0052cc  00100000  exit
0052d0  00100000  exit
0052d4  00100000  exit
0052d8  00100000  exit
0052dc  00100000  exit
0052e0  00100000  exit
0052e4  00100000  exit
0052e8  00100000  exit
0052ec  00100000  exit
0052f0  00100000  exit
0052f4  00100000  exit
0052f8  00100000  exit
0052fc  00100000  exit
005300  00100000  exit
005304  00100000  exit
005308  00100000  exit
00530c  00100000  exit
005310  00100000  exit
005314  00100000  exit
005318  00100000  exit
00531c  00100000  exit
005320  00100000  exit
005324  00100000  exit
005328  00100000  exit
00532c  00100000  exit
005330  00100000  exit
005334  00100000  exit
005338  00100000  exit
00533c  00100000  exit
005340  00100000  exit
005344  00100000  exit
005348  00100000  exit
00534c  00100000  exit
005350  00100000  exit
005354  00100000  exit
005358  00100000  exit
00535c  00100000  exit
005360  00100000  exit
005364  00100000  exit
005368  00100000  exit
00536c  00100000  exit
005370  00100000  exit
005374  00100000  exit
005378  00100000  exit
00537c  00100000  exit
005380  00100000  exit
005384  00100000  exit
005388  00100000  exit
00538c  00100000  exit
005390  00100000  exit
005394  00100000  exit
005398  00100000  exit
00539c  00100000  exit
0053a0  00100000  exit
0053a4  00100000  exit
0053a8  00100000  exit
0053ac  00100000  exit
0053b0  00100000  exit
0053b4  00100000  exit
0053b8  00100000  exit
0053bc  00100000  exit
0053c0  00100000  exit
0053c4  00100000  exit
0053c8  00100000  exit
0053cc  00100000  exit
0053d0  00100000  exit
0053d4  00100000  exit
0053d8  00100000  exit
0053dc  00100000  exit
0053e0  00100000  exit
0053e4  00100000  exit
0053e8  00100000  exit
0053ec  00100000  exit
0053f0  00100000  exit
0053f4  00100000  exit
0053f8  00100000  exit
0053fc  00100000  exit
005400  00100000  exit
005404  00100000  exit
005408  00100000  exit
00540c  00100000  exit
005410  00100000  exit
005414  00100000  exit
005418  00100000  exit
00541c  00100000  exit
005420  00100000  exit
005424  00100000  exit
005428  00100000  exit
00542c  00100000  exit
005430  00100000  exit
005434  00100000  exit
005438  00100000  exit
00543c  00100000  exit
005440  00100000  exit
005444  00100000  exit
005448  00100000  exit
00544c  00100000  exit
005450  00100000  exit
005454  00100000  exit
005458  00100000  exit
00545c  00100000  exit
005460  00100000  exit
005464  00100000  exit
005468  00100000  exit
00546c  00100000  exit
005470  00100000  exit
005474  00100000  exit
005478  00100000  exit
00547c  00100000  exit
005480  00100000  exit
005484  00100000  exit
005488  00100000  exit
00548c  00100000  exit
005490  00100000  exit
005494  00100000  exit
005498  00100000  exit
00549c  00100000  exit
0054a0  00100000  exit
0054a4  00100000  exit
0054a8  00100000  exit
0054ac  00100000  exit
0054b0  00100000  exit
0054b4  00100000  exit
0054b8  00100000  exit
0054bc  00100000  exit
0054c0  00100000  exit
0054c4  00100000  exit
0054c8  00100000  exit
0054cc  00100000  exit
0054d0  00100000  exit
0054d4  00100000  exit
0054d8  00100000  exit
0054dc  00100000  exit
0054e0  00100000  exit
0054e4  00100000  exit
