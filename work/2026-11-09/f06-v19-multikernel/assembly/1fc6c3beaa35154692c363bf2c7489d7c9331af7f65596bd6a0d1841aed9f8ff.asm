; SHA-256 1fc6c3beaa35154692c363bf2c7489d7c9331af7f65596bd6a0d1841aed9f8ff
; P800 Cluster · XTDK LLVM 19 · 5250 / 5250 words decoded
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
0000dc  9f8e8ee3  addli sp, sp, -3648
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f0e1c  addli r30, sp, 3584
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
000114  67495fe8  storeli.w r5, -2924(r30)
000118  73e00200  stores.w zero, 0(r5)
00011c  abf20000  lui r5, 15
000120  00a00300  mfence { lm, sm, gm }
000124  9b94f2ff  ori r9, r5, 4095
000128  abf27fff  lui r5, 1046527
00012c  9b92f2ff  ori r5, r5, 4095
000130  80a10404  csr_set csr3, r9
000134  00d00100  sync_group
000138  e7097fe8  storeli.w r7, -2920(r30)
00013c  73e05300  stores.w r5, 0(r7)
000140  00a00300  mfence { lm, sm, gm }
000144  e70b9fec  storeli.w r9, -2376(r30)
000148  80a10404  csr_set csr3, r9
00014c  00d00100  sync_group
000150  67094fe8  storeli.w r4, -2928(r30)
000154  cb198226  ble.s r4, r8, 20068
000158  1f021000  addli r4, zero, 8
00015c  1f150000  addli r10, zero, 1
000160  9f0a0ff8  addli r21, r30, -1024
000164  eea49462  vxor.u.mz vr9{mr1}, vr9, vr9
000168  0b924030  div.s r4, r1, r4
00016c  e7484fe8  storeli.w r4, -2932(r30)
000170  1b323200  slli r4, r4, 3
000174  0b934018  sub.s r6, r1, r4
000178  9b807000  andi r1, r1, 7
00017c  6b528f00  load.d r[5:6], 8(r30)
000180  9b347300  slli r9, r6, 7
000184  674b1fec  storeli.w r1, -2380(r30)
000188  ab700000  lui r1, 7
00018c  00d30002  load_param_i r6, 1
000190  9b99f0ff  ori r19, r1, 4095
000194  9b904401  ori r1, r9, 20
000198  67486fe8  storeli.w r6, -2940(r30)
00019c  1b931400  ori r6, r9, 1
0001a0  9b950401  ori r11, r9, 16
0001a4  e7089fe8  storeli.w r9, -2936(r30)
0001a8  e74b1fe6  storeli.w r1, -3140(r30)
0001ac  9b905401  ori r1, r9, 21
0001b0  67086fe8  storeli.w r6, -2944(r30)
0001b4  1b932400  ori r6, r9, 2
0001b8  6744bfe8  storeli.w r11, -3004(r30)
0001bc  e70f3fef  storeli.w r19, -2056(r30)
0001c0  e70b1fe6  storeli.w r1, -3144(r30)
0001c4  9b906401  ori r1, r9, 22
0001c8  e7476fe8  storeli.w r6, -2948(r30)
0001cc  1b933400  ori r6, r9, 3
0001d0  674b1fe6  storeli.w r1, -3148(r30)
0001d4  9b907401  ori r1, r9, 23
0001d8  e7076fe8  storeli.w r6, -2952(r30)
0001dc  1b934400  ori r6, r9, 4
0001e0  670b1fe6  storeli.w r1, -3152(r30)
0001e4  9b908401  ori r1, r9, 24
0001e8  67476fe8  storeli.w r6, -2956(r30)
0001ec  1b935400  ori r6, r9, 5
0001f0  e74a1fe6  storeli.w r1, -3156(r30)
0001f4  9b909401  ori r1, r9, 25
0001f8  67076fe8  storeli.w r6, -2960(r30)
0001fc  1b936400  ori r6, r9, 6
000200  e70a1fe6  storeli.w r1, -3160(r30)
000204  9b90a401  ori r1, r9, 26
000208  e7466fe8  storeli.w r6, -2964(r30)
00020c  1b937400  ori r6, r9, 7
000210  674a1fe6  storeli.w r1, -3164(r30)
000214  9b90b401  ori r1, r9, 27
000218  e7066fe8  storeli.w r6, -2968(r30)
00021c  1b938400  ori r6, r9, 8
000220  670a1fe6  storeli.w r1, -3168(r30)
000224  9b90c401  ori r1, r9, 28
000228  67466fe8  storeli.w r6, -2972(r30)
00022c  1b939400  ori r6, r9, 9
000230  e7491fe6  storeli.w r1, -3172(r30)
000234  9b90d401  ori r1, r9, 29
000238  67066fe8  storeli.w r6, -2976(r30)
00023c  1b93a400  ori r6, r9, 10
000240  e7091fe6  storeli.w r1, -3176(r30)
000244  9b90e401  ori r1, r9, 30
000248  e7456fe8  storeli.w r6, -2980(r30)
00024c  1b93b400  ori r6, r9, 11
000250  67491fe6  storeli.w r1, -3180(r30)
000254  9b90f401  ori r1, r9, 31
000258  e7056fe8  storeli.w r6, -2984(r30)
00025c  1b93c400  ori r6, r9, 12
000260  67091fe6  storeli.w r1, -3184(r30)
000264  9b900402  ori r1, r9, 32
000268  67456fe8  storeli.w r6, -2988(r30)
00026c  1b93d400  ori r6, r9, 13
000270  e7481fe6  storeli.w r1, -3188(r30)
000274  9b901402  ori r1, r9, 33
000278  67056fe8  storeli.w r6, -2992(r30)
00027c  1b93e400  ori r6, r9, 14
000280  e7081fe6  storeli.w r1, -3192(r30)
000284  9b902402  ori r1, r9, 34
000288  e7446fe8  storeli.w r6, -2996(r30)
00028c  1b93f400  ori r6, r9, 15
000290  67481fe6  storeli.w r1, -3196(r30)
000294  9b903402  ori r1, r9, 35
000298  e7046fe8  storeli.w r6, -3000(r30)
00029c  33930428  sext_int2long r[7:8], r9
0002a0  67081fe6  storeli.w r1, -3200(r30)
0002a4  9b904402  ori r1, r9, 36
0002a8  1733a302  sll.d r[7:8], r[7:8], r10
0002ac  1b951401  ori r10, r9, 17
0002b0  e7471fe6  storeli.w r1, -3204(r30)
0002b4  9b905402  ori r1, r9, 37
0002b8  0b226210  add.ul r[5:6], r[5:6], r[7:8]
0002bc  1f037fe8  addli r6, r30, -3016
0002c0  6704afe8  storeli.w r10, -3008(r30)
0002c4  e7071fe6  storeli.w r1, -3208(r30)
0002c8  9b906402  ori r1, r9, 38
0002cc  73304300  store.d r[5:6], 0(r6)
0002d0  2bf2ffff  lui r4, 1048575
0002d4  9b922401  ori r5, r9, 18
0002d8  1f030002  addli r6, zero, 256
0002dc  67471fe6  storeli.w r1, -3212(r30)
0002e0  9b907402  ori r1, r9, 39
0002e4  1b1202fe  ori r4, r4, 4064
0002e8  67435fe8  storeli.w r5, -3020(r30)
0002ec  9b923401  ori r5, r9, 19
0002f0  67071fe6  storeli.w r1, -3216(r30)
0002f4  9b908402  ori r1, r9, 40
0002f8  97814100  and r3, r3, r4
0002fc  67035fe8  storeli.w r5, -3024(r30)
000300  e7461fe6  storeli.w r1, -3220(r30)
000304  9b909402  ori r1, r9, 41
000308  8b912110  add.s r3, r3, r2
00030c  2bf1ff7f  lui r2, 524287
000310  e7061fe6  storeli.w r1, -3224(r30)
000314  9b90a402  ori r1, r9, 42
000318  1b1df1ff  ori r26, r2, 4095
00031c  e7423fe8  storeli.w r3, -3028(r30)
000320  67461fe6  storeli.w r1, -3228(r30)
000324  9b90b402  ori r1, r9, 43
000328  e74fafef  storeli.w r26, -2052(r30)
00032c  67061fe6  storeli.w r1, -3232(r30)
000330  9b90c402  ori r1, r9, 44
000334  e7451fe6  storeli.w r1, -3236(r30)
000338  9b90d402  ori r1, r9, 45
00033c  e7051fe6  storeli.w r1, -3240(r30)
000340  9b90e402  ori r1, r9, 46
000344  67451fe6  storeli.w r1, -3244(r30)
000348  9b90f402  ori r1, r9, 47
00034c  67051fe6  storeli.w r1, -3248(r30)
000350  9b900403  ori r1, r9, 48
000354  e7441fe6  storeli.w r1, -3252(r30)
000358  9b901403  ori r1, r9, 49
00035c  e7041fe6  storeli.w r1, -3256(r30)
000360  9b902403  ori r1, r9, 50
000364  67441fe6  storeli.w r1, -3260(r30)
000368  9b903403  ori r1, r9, 51
00036c  67041fe6  storeli.w r1, -3264(r30)
000370  9b904403  ori r1, r9, 52
000374  e7431fe6  storeli.w r1, -3268(r30)
000378  9b905403  ori r1, r9, 53
00037c  e7031fe6  storeli.w r1, -3272(r30)
000380  9b906403  ori r1, r9, 54
000384  67431fe6  storeli.w r1, -3276(r30)
000388  9b907403  ori r1, r9, 55
00038c  67031fe6  storeli.w r1, -3280(r30)
000390  9b908403  ori r1, r9, 56
000394  e7421fe6  storeli.w r1, -3284(r30)
000398  9b909403  ori r1, r9, 57
00039c  e7021fe6  storeli.w r1, -3288(r30)
0003a0  9b90a403  ori r1, r9, 58
0003a4  67421fe6  storeli.w r1, -3292(r30)
0003a8  9b90b403  ori r1, r9, 59
0003ac  67021fe6  storeli.w r1, -3296(r30)
0003b0  9b90c403  ori r1, r9, 60
0003b4  e7411fe6  storeli.w r1, -3300(r30)
0003b8  9b90d403  ori r1, r9, 61
0003bc  e7011fe6  storeli.w r1, -3304(r30)
0003c0  9b90e403  ori r1, r9, 62
0003c4  67411fe6  storeli.w r1, -3308(r30)
0003c8  9b90f403  ori r1, r9, 63
0003cc  67011fe6  storeli.w r1, -3312(r30)
0003d0  9b900404  ori r1, r9, 64
0003d4  e7401fe6  storeli.w r1, -3316(r30)
0003d8  9b901404  ori r1, r9, 65
0003dc  e7001fe6  storeli.w r1, -3320(r30)
0003e0  9b902404  ori r1, r9, 66
0003e4  67401fe6  storeli.w r1, -3324(r30)
0003e8  9b903404  ori r1, r9, 67
0003ec  67001fe6  storeli.w r1, -3328(r30)
0003f0  9b904404  ori r1, r9, 68
0003f4  e74f1fe4  storeli.w r1, -3332(r30)
0003f8  9b905404  ori r1, r9, 69
0003fc  e70f1fe4  storeli.w r1, -3336(r30)
000400  9b906404  ori r1, r9, 70
000404  674f1fe4  storeli.w r1, -3340(r30)
000408  9b907404  ori r1, r9, 71
00040c  670f1fe4  storeli.w r1, -3344(r30)
000410  9b908404  ori r1, r9, 72
000414  e74e1fe4  storeli.w r1, -3348(r30)
000418  9b909404  ori r1, r9, 73
00041c  e70e1fe4  storeli.w r1, -3352(r30)
000420  9b90a404  ori r1, r9, 74
000424  674e1fe4  storeli.w r1, -3356(r30)
000428  9b90b404  ori r1, r9, 75
00042c  670e1fe4  storeli.w r1, -3360(r30)
000430  9b90c404  ori r1, r9, 76
000434  e74d1fe4  storeli.w r1, -3364(r30)
000438  9b90d404  ori r1, r9, 77
00043c  e70d1fe4  storeli.w r1, -3368(r30)
000440  9b90e404  ori r1, r9, 78
000444  674d1fe4  storeli.w r1, -3372(r30)
000448  9b90f404  ori r1, r9, 79
00044c  670d1fe4  storeli.w r1, -3376(r30)
000450  9b900405  ori r1, r9, 80
000454  e74c1fe4  storeli.w r1, -3380(r30)
000458  9b901405  ori r1, r9, 81
00045c  e70c1fe4  storeli.w r1, -3384(r30)
000460  9b902405  ori r1, r9, 82
000464  674c1fe4  storeli.w r1, -3388(r30)
000468  9b903405  ori r1, r9, 83
00046c  670c1fe4  storeli.w r1, -3392(r30)
000470  9b904405  ori r1, r9, 84
000474  e74b1fe4  storeli.w r1, -3396(r30)
000478  9b905405  ori r1, r9, 85
00047c  e70b1fe4  storeli.w r1, -3400(r30)
000480  9b906405  ori r1, r9, 86
000484  674b1fe4  storeli.w r1, -3404(r30)
000488  9b907405  ori r1, r9, 87
00048c  670b1fe4  storeli.w r1, -3408(r30)
000490  9b908405  ori r1, r9, 88
000494  e74a1fe4  storeli.w r1, -3412(r30)
000498  9b909405  ori r1, r9, 89
00049c  e70a1fe4  storeli.w r1, -3416(r30)
0004a0  9b90a405  ori r1, r9, 90
0004a4  674a1fe4  storeli.w r1, -3420(r30)
0004a8  9b90b405  ori r1, r9, 91
0004ac  670a1fe4  storeli.w r1, -3424(r30)
0004b0  9b90c405  ori r1, r9, 92
0004b4  e7491fe4  storeli.w r1, -3428(r30)
0004b8  9b90d405  ori r1, r9, 93
0004bc  e7091fe4  storeli.w r1, -3432(r30)
0004c0  9b90e405  ori r1, r9, 94
0004c4  67491fe4  storeli.w r1, -3436(r30)
0004c8  9b90f405  ori r1, r9, 95
0004cc  67091fe4  storeli.w r1, -3440(r30)
0004d0  9b900406  ori r1, r9, 96
0004d4  e7481fe4  storeli.w r1, -3444(r30)
0004d8  9b901406  ori r1, r9, 97
0004dc  e7081fe4  storeli.w r1, -3448(r30)
0004e0  9b902406  ori r1, r9, 98
0004e4  67481fe4  storeli.w r1, -3452(r30)
0004e8  9b903406  ori r1, r9, 99
0004ec  67081fe4  storeli.w r1, -3456(r30)
0004f0  9b904406  ori r1, r9, 100
0004f4  e7471fe4  storeli.w r1, -3460(r30)
0004f8  9b905406  ori r1, r9, 101
0004fc  e7071fe4  storeli.w r1, -3464(r30)
000500  9b906406  ori r1, r9, 102
000504  67471fe4  storeli.w r1, -3468(r30)
000508  9b907406  ori r1, r9, 103
00050c  67071fe4  storeli.w r1, -3472(r30)
000510  9b908406  ori r1, r9, 104
000514  e7461fe4  storeli.w r1, -3476(r30)
000518  9b909406  ori r1, r9, 105
00051c  e7061fe4  storeli.w r1, -3480(r30)
000520  9b90a406  ori r1, r9, 106
000524  67461fe4  storeli.w r1, -3484(r30)
000528  9b90b406  ori r1, r9, 107
00052c  67061fe4  storeli.w r1, -3488(r30)
000530  9b90c406  ori r1, r9, 108
000534  e7451fe4  storeli.w r1, -3492(r30)
000538  9b90d406  ori r1, r9, 109
00053c  e7051fe4  storeli.w r1, -3496(r30)
000540  9b90e406  ori r1, r9, 110
000544  67451fe4  storeli.w r1, -3500(r30)
000548  9b90f406  ori r1, r9, 111
00054c  67051fe4  storeli.w r1, -3504(r30)
000550  9b900407  ori r1, r9, 112
000554  e7441fe4  storeli.w r1, -3508(r30)
000558  9b901407  ori r1, r9, 113
00055c  e7041fe4  storeli.w r1, -3512(r30)
000560  9b902407  ori r1, r9, 114
000564  67441fe4  storeli.w r1, -3516(r30)
000568  9b903407  ori r1, r9, 115
00056c  67041fe4  storeli.w r1, -3520(r30)
000570  9b904407  ori r1, r9, 116
000574  e7431fe4  storeli.w r1, -3524(r30)
000578  9b905407  ori r1, r9, 117
00057c  e7031fe4  storeli.w r1, -3528(r30)
000580  9b906407  ori r1, r9, 118
000584  67431fe4  storeli.w r1, -3532(r30)
000588  9b907407  ori r1, r9, 119
00058c  67031fe4  storeli.w r1, -3536(r30)
000590  9b908407  ori r1, r9, 120
000594  e7421fe4  storeli.w r1, -3540(r30)
000598  9b909407  ori r1, r9, 121
00059c  e7021fe4  storeli.w r1, -3544(r30)
0005a0  9b90a407  ori r1, r9, 122
0005a4  67421fe4  storeli.w r1, -3548(r30)
0005a8  9b90b407  ori r1, r9, 123
0005ac  67021fe4  storeli.w r1, -3552(r30)
0005b0  9b90c407  ori r1, r9, 124
0005b4  e7411fe4  storeli.w r1, -3556(r30)
0005b8  9b90d407  ori r1, r9, 125
0005bc  e7011fe4  storeli.w r1, -3560(r30)
0005c0  9b90e407  ori r1, r9, 126
0005c4  67411fe4  storeli.w r1, -3564(r30)
0005c8  9b90f407  ori r1, r9, 127
0005cc  67011fe4  storeli.w r1, -3568(r30)
0005d0  9f802140  addli r1, r3, 8208
0005d4  e7491fe8  storeli.w r1, -2916(r30)
0005d8  9f008fe7  addli r1, r30, -3136
0005dc  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
0005e0  db4b0200  j 4700
0005e4  e3009fe9  loadli.w r1,  -2872(r30)
0005e8  e3084fe9  loadli.w r17,  -2912(r30)
0005ec  9f090fef  addli r19, r30, -2176
0005f0  1f1e0000  addli r28, zero, 1
0005f4  eb5a0f01  load.d r[22:23], 16(r30)
0005f8  1f0a0ff8  addli r20, r30, -1024
0005fc  9f2d0000  addli r27, zero, 2
000600  e3016fe9  loadli.w r3,  -2896(r30)
000604  e3434fe9  loadli.w r7,  -2908(r30)
000608  1f4a0a00  addli r20, r20, 4
00060c  b3920028  sext_int2long r[6:7], r1
000610  e3408fe9  loadli.w r1,  -2876(r30)
000614  b3980828  sext_int2long r[18:19], r17
000618  b3940128  sext_int2long r[10:11], r3
00061c  e3415fe9  loadli.w r3,  -2900(r30)
000620  b3930328  sext_int2long r[8:9], r7
000624  73b01901  store.d r[18:19], 0(r19)
000628  ab0800f0  lui r17, 983040
00062c  9f290000  addli r19, zero, 2
000630  2b0900f0  lui r18, 983040
000634  97b2c203  sll.d r[6:7], r[6:7], r28
000638  b3970028  sext_int2long r[16:17], r1
00063c  e3008fe9  loadli.w r1,  -2880(r30)
000640  b3950128  sext_int2long r[12:13], r3
000644  e3015fe9  loadli.w r3,  -2904(r30)
000648  97981901  or r17, r19, r17
00064c  17992901  or r18, r19, r18
000650  9f090ff8  addli r19, r30, -1024
000654  8ba25a10  add.ul r[6:7], r[22:23], r[6:7]
000658  97b7c703  sll.d r[16:17], r[16:17], r28
00065c  b39b0028  sext_int2long r[24:25], r1
000660  e3407fe9  loadli.w r1,  -2884(r30)
000664  9fa90900  addli r19, r19, 2
000668  b3910128  sext_int2long r[4:5], r3
00066c  8ba7fa10  add.ul r[16:17], r[22:23], r[16:17]
000670  ffb83201  s_lm2gm r17, r19, 0(r[6:7])
000674  97b2cb03  sll.d r[6:7], r[24:25], r28
000678  ab0800f0  lui r17, 983040
00067c  9f090ff8  addli r19, r30, -1024
000680  97b1c103  sll.d r[4:5], r[4:5], r28
000684  b39c0028  sext_int2long r[26:27], r1
000688  e3007fe9  loadli.w r1,  -2888(r30)
00068c  7fb94701  s_lm2gm r18, r20, 0(r[16:17])
000690  2b0900f0  lui r18, 983040
000694  1f0a0ff8  addli r20, r30, -1024
000698  8ba25a10  add.ul r[6:7], r[22:23], r[6:7]
00069c  97981d01  or r17, r27, r17
0006a0  9fe90900  addli r19, r19, 6
0006a4  8ba13a10  add.ul r[4:5], r[22:23], r[4:5]
0006a8  97b7cc03  sll.d r[16:17], r[26:27], r28
0006ac  17992d01  or r18, r27, r18
0006b0  1f0a1a00  addli r20, r20, 8
0006b4  b3960028  sext_int2long r[14:15], r1
0006b8  e3406fe9  loadli.w r1,  -2892(r30)
0006bc  ffb83201  s_lm2gm r17, r19, 0(r[6:7])
0006c0  ab0900f0  lui r19, 983040
0006c4  8ba7fa10  add.ul r[16:17], r[22:23], r[16:17]
0006c8  97b2c603  sll.d r[6:7], r[14:15], r28
0006cc  b3900028  sext_int2long r[2:3], r1
0006d0  7fb94701  s_lm2gm r18, r20, 0(r[16:17])
0006d4  ab0700f0  lui r15, 983040
0006d8  2b0800f0  lui r16, 983040
0006dc  8ba25a10  add.ul r[6:7], r[22:23], r[6:7]
0006e0  97b6c003  sll.d r[14:15], r[2:3], r28
0006e4  9f200000  addli r1, zero, 2
0006e8  9797f000  or r15, r1, r15
0006ec  17980001  or r16, r1, r16
0006f0  9f000ff8  addli r1, r30, -1024
0006f4  8ba6da10  add.ul r[14:15], r[22:23], r[14:15]
0006f8  9fa81000  addli r17, r1, 10
0006fc  1fc91000  addli r18, r1, 12
000700  9f200000  addli r1, zero, 2
000704  ffb71201  s_lm2gm r15, r17, 0(r[6:7])
000708  97b2c403  sll.d r[6:7], r[10:11], r28
00070c  97b4c503  sll.d r[10:11], r[12:13], r28
000710  ab0500f0  lui r11, 983040
000714  2b0600f0  lui r12, 983040
000718  7fb82601  s_lm2gm r16, r18, 0(r[14:15])
00071c  9f280000  addli r17, zero, 2
000720  9795b000  or r11, r1, r11
000724  1796c000  or r12, r1, r12
000728  9f000ff8  addli r1, r30, -1024
00072c  8ba25a10  add.ul r[6:7], r[22:23], r[6:7]
000730  8ba49a10  add.ul r[10:11], r[22:23], r[10:11]
000734  97993801  or r19, r17, r19
000738  9fe61000  addli r13, r1, 14
00073c  1f872000  addli r14, r1, 16
000740  ffb5d200  s_lm2gm r11, r13, 0(r[6:7])
000744  97b2c303  sll.d r[6:7], r[8:9], r28
000748  ab0300f0  lui r7, 983040
00074c  7fb6e400  s_lm2gm r12, r14, 0(r[10:11])
000750  9fa42000  addli r9, r1, 18
000754  2b0400f0  lui r8, 983040
000758  1fc52000  addli r10, r1, 20
00075c  e3459fec  loadli.w r11,  -2484(r30)
000760  e346afec  loadli.w r13,  -2476(r30)
000764  97937800  or r7, r17, r7
000768  8ba25a10  add.ul r[6:7], r[22:23], r[6:7]
00076c  17948800  or r8, r17, r8
000770  b3950528  sext_int2long r[12:13], r11
000774  b3960628  sext_int2long r[14:15], r13
000778  ffb39100  s_lm2gm r7, r9, 0(r[4:5])
00077c  9f010fef  addli r3, r30, -2176
000780  7fb4a200  s_lm2gm r8, r10, 0(r[6:7])
000784  e3429fe9  loadli.w r5,  -2868(r30)
000788  1f020ff8  addli r4, r30, -1024
00078c  e3437fec  loadli.w r7,  -2500(r30)
000790  e3448fec  loadli.w r9,  -2492(r30)
000794  ebd00100  load.d r[2:3], 0(r3)
000798  ab0100f0  lui r3, 983040
00079c  1f622200  addli r4, r4, 22
0007a0  b3920228  sext_int2long r[6:7], r5
0007a4  b3930328  sext_int2long r[8:9], r7
0007a8  b3940428  sext_int2long r[10:11], r9
0007ac  97913800  or r3, r17, r3
0007b0  97b0c003  sll.d r[2:3], r[2:3], r28
0007b4  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0007b8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0007bc  97b0c203  sll.d r[2:3], r[6:7], r28
0007c0  e302afe9  loadli.w r5,  -2864(r30)
0007c4  ab0100f0  lui r3, 983040
0007c8  1f020ff8  addli r4, r30, -1024
0007cc  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0007d0  97913800  or r3, r17, r3
0007d4  1f023200  addli r4, r4, 24
0007d8  b3920228  sext_int2long r[6:7], r5
0007dc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0007e0  ab0100f0  lui r3, 983040
0007e4  1f020ff8  addli r4, r30, -1024
0007e8  97b0c203  sll.d r[2:3], r[6:7], r28
0007ec  e342afe9  loadli.w r5,  -2860(r30)
0007f0  97913800  or r3, r17, r3
0007f4  1f223200  addli r4, r4, 26
0007f8  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0007fc  b3920228  sext_int2long r[6:7], r5
000800  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000804  ab0100f0  lui r3, 983040
000808  1f020ff8  addli r4, r30, -1024
00080c  97b0c203  sll.d r[2:3], r[6:7], r28
000810  e302bfe9  loadli.w r5,  -2856(r30)
000814  97913800  or r3, r17, r3
000818  1f423200  addli r4, r4, 28
00081c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000820  b3920228  sext_int2long r[6:7], r5
000824  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000828  ab0100f0  lui r3, 983040
00082c  1f020ff8  addli r4, r30, -1024
000830  97b0c203  sll.d r[2:3], r[6:7], r28
000834  e342bfe9  loadli.w r5,  -2852(r30)
000838  97913800  or r3, r17, r3
00083c  1f623200  addli r4, r4, 30
000840  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000844  b3920228  sext_int2long r[6:7], r5
000848  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00084c  ab0100f0  lui r3, 983040
000850  1f020ff8  addli r4, r30, -1024
000854  97b0c203  sll.d r[2:3], r[6:7], r28
000858  e302cfe9  loadli.w r5,  -2848(r30)
00085c  97913800  or r3, r17, r3
000860  1f024200  addli r4, r4, 32
000864  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000868  b3920228  sext_int2long r[6:7], r5
00086c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000870  ab0100f0  lui r3, 983040
000874  1f020ff8  addli r4, r30, -1024
000878  97b0c203  sll.d r[2:3], r[6:7], r28
00087c  e342cfe9  loadli.w r5,  -2844(r30)
000880  97913800  or r3, r17, r3
000884  1f224200  addli r4, r4, 34
000888  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
00088c  b3920228  sext_int2long r[6:7], r5
000890  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000894  ab0100f0  lui r3, 983040
000898  1f020ff8  addli r4, r30, -1024
00089c  97b0c203  sll.d r[2:3], r[6:7], r28
0008a0  e302dfe9  loadli.w r5,  -2840(r30)
0008a4  97913800  or r3, r17, r3
0008a8  1f424200  addli r4, r4, 36
0008ac  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0008b0  b3920228  sext_int2long r[6:7], r5
0008b4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0008b8  ab0100f0  lui r3, 983040
0008bc  1f020ff8  addli r4, r30, -1024
0008c0  97b0c203  sll.d r[2:3], r[6:7], r28
0008c4  e342dfe9  loadli.w r5,  -2836(r30)
0008c8  97913800  or r3, r17, r3
0008cc  1f624200  addli r4, r4, 38
0008d0  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0008d4  b3920228  sext_int2long r[6:7], r5
0008d8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0008dc  ab0100f0  lui r3, 983040
0008e0  1f020ff8  addli r4, r30, -1024
0008e4  97b0c203  sll.d r[2:3], r[6:7], r28
0008e8  e302efe9  loadli.w r5,  -2832(r30)
0008ec  97913800  or r3, r17, r3
0008f0  1f025200  addli r4, r4, 40
0008f4  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0008f8  b3920228  sext_int2long r[6:7], r5
0008fc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000900  ab0100f0  lui r3, 983040
000904  1f020ff8  addli r4, r30, -1024
000908  97b0c203  sll.d r[2:3], r[6:7], r28
00090c  e342efe9  loadli.w r5,  -2828(r30)
000910  97913800  or r3, r17, r3
000914  1f225200  addli r4, r4, 42
000918  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
00091c  b3920228  sext_int2long r[6:7], r5
000920  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000924  ab0100f0  lui r3, 983040
000928  1f020ff8  addli r4, r30, -1024
00092c  97b0c203  sll.d r[2:3], r[6:7], r28
000930  e302ffe9  loadli.w r5,  -2824(r30)
000934  97913800  or r3, r17, r3
000938  1f425200  addli r4, r4, 44
00093c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000940  b3920228  sext_int2long r[6:7], r5
000944  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000948  ab0100f0  lui r3, 983040
00094c  1f020ff8  addli r4, r30, -1024
000950  97b0c203  sll.d r[2:3], r[6:7], r28
000954  e342ffe9  loadli.w r5,  -2820(r30)
000958  97913800  or r3, r17, r3
00095c  1f625200  addli r4, r4, 46
000960  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000964  b3920228  sext_int2long r[6:7], r5
000968  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00096c  ab0100f0  lui r3, 983040
000970  1f020ff8  addli r4, r30, -1024
000974  97b0c203  sll.d r[2:3], r[6:7], r28
000978  e3020fea  loadli.w r5,  -2816(r30)
00097c  97913800  or r3, r17, r3
000980  1f026200  addli r4, r4, 48
000984  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000988  b3920228  sext_int2long r[6:7], r5
00098c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000990  ab0100f0  lui r3, 983040
000994  1f020ff8  addli r4, r30, -1024
000998  97b0c203  sll.d r[2:3], r[6:7], r28
00099c  e3420fea  loadli.w r5,  -2812(r30)
0009a0  97913800  or r3, r17, r3
0009a4  1f226200  addli r4, r4, 50
0009a8  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0009ac  b3920228  sext_int2long r[6:7], r5
0009b0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0009b4  ab0100f0  lui r3, 983040
0009b8  1f020ff8  addli r4, r30, -1024
0009bc  97b0c203  sll.d r[2:3], r[6:7], r28
0009c0  e3021fea  loadli.w r5,  -2808(r30)
0009c4  97913800  or r3, r17, r3
0009c8  1f426200  addli r4, r4, 52
0009cc  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0009d0  b3920228  sext_int2long r[6:7], r5
0009d4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0009d8  ab0100f0  lui r3, 983040
0009dc  1f020ff8  addli r4, r30, -1024
0009e0  97b0c203  sll.d r[2:3], r[6:7], r28
0009e4  e3421fea  loadli.w r5,  -2804(r30)
0009e8  97913800  or r3, r17, r3
0009ec  1f626200  addli r4, r4, 54
0009f0  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0009f4  b3920228  sext_int2long r[6:7], r5
0009f8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0009fc  ab0100f0  lui r3, 983040
000a00  1f020ff8  addli r4, r30, -1024
000a04  97b0c203  sll.d r[2:3], r[6:7], r28
000a08  e3022fea  loadli.w r5,  -2800(r30)
000a0c  97913800  or r3, r17, r3
000a10  1f027200  addli r4, r4, 56
000a14  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000a18  b3920228  sext_int2long r[6:7], r5
000a1c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a20  ab0100f0  lui r3, 983040
000a24  1f020ff8  addli r4, r30, -1024
000a28  97b0c203  sll.d r[2:3], r[6:7], r28
000a2c  e3422fea  loadli.w r5,  -2796(r30)
000a30  97913800  or r3, r17, r3
000a34  1f227200  addli r4, r4, 58
000a38  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000a3c  b3920228  sext_int2long r[6:7], r5
000a40  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a44  ab0100f0  lui r3, 983040
000a48  1f020ff8  addli r4, r30, -1024
000a4c  97b0c203  sll.d r[2:3], r[6:7], r28
000a50  e3023fea  loadli.w r5,  -2792(r30)
000a54  97913800  or r3, r17, r3
000a58  1f427200  addli r4, r4, 60
000a5c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000a60  b3920228  sext_int2long r[6:7], r5
000a64  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a68  ab0100f0  lui r3, 983040
000a6c  1f020ff8  addli r4, r30, -1024
000a70  97b0c203  sll.d r[2:3], r[6:7], r28
000a74  e3423fea  loadli.w r5,  -2788(r30)
000a78  97913800  or r3, r17, r3
000a7c  1f627200  addli r4, r4, 62
000a80  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000a84  b3920228  sext_int2long r[6:7], r5
000a88  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a8c  63024fea  loadli.w r4,  -2784(r30)
000a90  ab0100f0  lui r3, 983040
000a94  97b0c203  sll.d r[2:3], r[6:7], r28
000a98  63433fed  loadli.w r6,  -2404(r30)
000a9c  97913800  or r3, r17, r3
000aa0  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000aa4  33120228  sext_int2long r[5:6], r4
000aa8  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
000aac  9730c203  sll.d r[2:3], r[5:6], r28
000ab0  e3424fea  loadli.w r5,  -2780(r30)
000ab4  ab0100f0  lui r3, 983040
000ab8  1f020ff8  addli r4, r30, -1024
000abc  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000ac0  97913800  or r3, r17, r3
000ac4  1f228200  addli r4, r4, 66
000ac8  b3920228  sext_int2long r[6:7], r5
000acc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ad0  ab0100f0  lui r3, 983040
000ad4  1f020ff8  addli r4, r30, -1024
000ad8  97b0c203  sll.d r[2:3], r[6:7], r28
000adc  e3025fea  loadli.w r5,  -2776(r30)
000ae0  97913800  or r3, r17, r3
000ae4  1f428200  addli r4, r4, 68
000ae8  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000aec  b3920228  sext_int2long r[6:7], r5
000af0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000af4  ab0100f0  lui r3, 983040
000af8  1f020ff8  addli r4, r30, -1024
000afc  97b0c203  sll.d r[2:3], r[6:7], r28
000b00  e3425fea  loadli.w r5,  -2772(r30)
000b04  97913800  or r3, r17, r3
000b08  1f628200  addli r4, r4, 70
000b0c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000b10  b3920228  sext_int2long r[6:7], r5
000b14  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b18  ab0100f0  lui r3, 983040
000b1c  1f020ff8  addli r4, r30, -1024
000b20  97b0c203  sll.d r[2:3], r[6:7], r28
000b24  e3026fea  loadli.w r5,  -2768(r30)
000b28  97913800  or r3, r17, r3
000b2c  1f029200  addli r4, r4, 72
000b30  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000b34  b3920228  sext_int2long r[6:7], r5
000b38  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b3c  ab0100f0  lui r3, 983040
000b40  1f020ff8  addli r4, r30, -1024
000b44  97b0c203  sll.d r[2:3], r[6:7], r28
000b48  e3426fea  loadli.w r5,  -2764(r30)
000b4c  97913800  or r3, r17, r3
000b50  1f229200  addli r4, r4, 74
000b54  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000b58  b3920228  sext_int2long r[6:7], r5
000b5c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b60  ab0100f0  lui r3, 983040
000b64  1f020ff8  addli r4, r30, -1024
000b68  97b0c203  sll.d r[2:3], r[6:7], r28
000b6c  e3027fea  loadli.w r5,  -2760(r30)
000b70  97913800  or r3, r17, r3
000b74  1f429200  addli r4, r4, 76
000b78  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000b7c  b3920228  sext_int2long r[6:7], r5
000b80  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b84  ab0100f0  lui r3, 983040
000b88  1f020ff8  addli r4, r30, -1024
000b8c  97b0c203  sll.d r[2:3], r[6:7], r28
000b90  e3427fea  loadli.w r5,  -2756(r30)
000b94  97913800  or r3, r17, r3
000b98  1f629200  addli r4, r4, 78
000b9c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000ba0  b3920228  sext_int2long r[6:7], r5
000ba4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ba8  ab0100f0  lui r3, 983040
000bac  1f020ff8  addli r4, r30, -1024
000bb0  97b0c203  sll.d r[2:3], r[6:7], r28
000bb4  e3028fea  loadli.w r5,  -2752(r30)
000bb8  97913800  or r3, r17, r3
000bbc  1f02a200  addli r4, r4, 80
000bc0  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000bc4  b3920228  sext_int2long r[6:7], r5
000bc8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000bcc  ab0100f0  lui r3, 983040
000bd0  1f020ff8  addli r4, r30, -1024
000bd4  97b0c203  sll.d r[2:3], r[6:7], r28
000bd8  e3428fea  loadli.w r5,  -2748(r30)
000bdc  97913800  or r3, r17, r3
000be0  1f22a200  addli r4, r4, 82
000be4  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000be8  b3920228  sext_int2long r[6:7], r5
000bec  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000bf0  ab0100f0  lui r3, 983040
000bf4  1f020ff8  addli r4, r30, -1024
000bf8  97b0c203  sll.d r[2:3], r[6:7], r28
000bfc  e3029fea  loadli.w r5,  -2744(r30)
000c00  97913800  or r3, r17, r3
000c04  1f42a200  addli r4, r4, 84
000c08  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000c0c  b3920228  sext_int2long r[6:7], r5
000c10  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c14  ab0100f0  lui r3, 983040
000c18  1f020ff8  addli r4, r30, -1024
000c1c  97b0c203  sll.d r[2:3], r[6:7], r28
000c20  e3429fea  loadli.w r5,  -2740(r30)
000c24  97913800  or r3, r17, r3
000c28  1f62a200  addli r4, r4, 86
000c2c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000c30  b3920228  sext_int2long r[6:7], r5
000c34  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c38  ab0100f0  lui r3, 983040
000c3c  1f020ff8  addli r4, r30, -1024
000c40  97b0c203  sll.d r[2:3], r[6:7], r28
000c44  e302afea  loadli.w r5,  -2736(r30)
000c48  97913800  or r3, r17, r3
000c4c  1f02b200  addli r4, r4, 88
000c50  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000c54  b3920228  sext_int2long r[6:7], r5
000c58  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c5c  ab0100f0  lui r3, 983040
000c60  1f020ff8  addli r4, r30, -1024
000c64  97b0c203  sll.d r[2:3], r[6:7], r28
000c68  e342afea  loadli.w r5,  -2732(r30)
000c6c  97913800  or r3, r17, r3
000c70  1f22b200  addli r4, r4, 90
000c74  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000c78  b3920228  sext_int2long r[6:7], r5
000c7c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c80  ab0100f0  lui r3, 983040
000c84  1f020ff8  addli r4, r30, -1024
000c88  97b0c203  sll.d r[2:3], r[6:7], r28
000c8c  e302bfea  loadli.w r5,  -2728(r30)
000c90  97913800  or r3, r17, r3
000c94  1f42b200  addli r4, r4, 92
000c98  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000c9c  b3920228  sext_int2long r[6:7], r5
000ca0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ca4  ab0100f0  lui r3, 983040
000ca8  1f020ff8  addli r4, r30, -1024
000cac  97b0c203  sll.d r[2:3], r[6:7], r28
000cb0  e342bfea  loadli.w r5,  -2724(r30)
000cb4  97913800  or r3, r17, r3
000cb8  1f62b200  addli r4, r4, 94
000cbc  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000cc0  b3920228  sext_int2long r[6:7], r5
000cc4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000cc8  ab0100f0  lui r3, 983040
000ccc  1f020ff8  addli r4, r30, -1024
000cd0  97b0c203  sll.d r[2:3], r[6:7], r28
000cd4  e302cfea  loadli.w r5,  -2720(r30)
000cd8  97913800  or r3, r17, r3
000cdc  1f02c200  addli r4, r4, 96
000ce0  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000ce4  b3920228  sext_int2long r[6:7], r5
000ce8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000cec  ab0100f0  lui r3, 983040
000cf0  1f020ff8  addli r4, r30, -1024
000cf4  97b0c203  sll.d r[2:3], r[6:7], r28
000cf8  e342cfea  loadli.w r5,  -2716(r30)
000cfc  97913800  or r3, r17, r3
000d00  1f22c200  addli r4, r4, 98
000d04  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000d08  b3920228  sext_int2long r[6:7], r5
000d0c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d10  ab0100f0  lui r3, 983040
000d14  1f020ff8  addli r4, r30, -1024
000d18  97b0c203  sll.d r[2:3], r[6:7], r28
000d1c  e302dfea  loadli.w r5,  -2712(r30)
000d20  97913800  or r3, r17, r3
000d24  1f42c200  addli r4, r4, 100
000d28  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000d2c  b3920228  sext_int2long r[6:7], r5
000d30  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d34  ab0100f0  lui r3, 983040
000d38  1f020ff8  addli r4, r30, -1024
000d3c  97b0c203  sll.d r[2:3], r[6:7], r28
000d40  e342dfea  loadli.w r5,  -2708(r30)
000d44  97913800  or r3, r17, r3
000d48  1f62c200  addli r4, r4, 102
000d4c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000d50  b3920228  sext_int2long r[6:7], r5
000d54  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d58  ab0100f0  lui r3, 983040
000d5c  1f020ff8  addli r4, r30, -1024
000d60  97b0c203  sll.d r[2:3], r[6:7], r28
000d64  e302efea  loadli.w r5,  -2704(r30)
000d68  97913800  or r3, r17, r3
000d6c  1f02d200  addli r4, r4, 104
000d70  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000d74  b3920228  sext_int2long r[6:7], r5
000d78  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d7c  ab0100f0  lui r3, 983040
000d80  1f020ff8  addli r4, r30, -1024
000d84  97b0c203  sll.d r[2:3], r[6:7], r28
000d88  e342efea  loadli.w r5,  -2700(r30)
000d8c  97913800  or r3, r17, r3
000d90  1f22d200  addli r4, r4, 106
000d94  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000d98  b3920228  sext_int2long r[6:7], r5
000d9c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000da0  ab0100f0  lui r3, 983040
000da4  1f020ff8  addli r4, r30, -1024
000da8  97b0c203  sll.d r[2:3], r[6:7], r28
000dac  e302ffea  loadli.w r5,  -2696(r30)
000db0  97913800  or r3, r17, r3
000db4  1f42d200  addli r4, r4, 108
000db8  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000dbc  b3920228  sext_int2long r[6:7], r5
000dc0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000dc4  ab0100f0  lui r3, 983040
000dc8  1f020ff8  addli r4, r30, -1024
000dcc  97b0c203  sll.d r[2:3], r[6:7], r28
000dd0  e342ffea  loadli.w r5,  -2692(r30)
000dd4  97913800  or r3, r17, r3
000dd8  1f62d200  addli r4, r4, 110
000ddc  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000de0  b3920228  sext_int2long r[6:7], r5
000de4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000de8  ab0100f0  lui r3, 983040
000dec  1f020ff8  addli r4, r30, -1024
000df0  97b0c203  sll.d r[2:3], r[6:7], r28
000df4  e3020feb  loadli.w r5,  -2688(r30)
000df8  97913800  or r3, r17, r3
000dfc  1f02e200  addli r4, r4, 112
000e00  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000e04  b3920228  sext_int2long r[6:7], r5
000e08  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e0c  ab0100f0  lui r3, 983040
000e10  1f020ff8  addli r4, r30, -1024
000e14  97b0c203  sll.d r[2:3], r[6:7], r28
000e18  e3420feb  loadli.w r5,  -2684(r30)
000e1c  97913800  or r3, r17, r3
000e20  1f22e200  addli r4, r4, 114
000e24  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000e28  b3920228  sext_int2long r[6:7], r5
000e2c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e30  ab0100f0  lui r3, 983040
000e34  1f020ff8  addli r4, r30, -1024
000e38  97b0c203  sll.d r[2:3], r[6:7], r28
000e3c  e3021feb  loadli.w r5,  -2680(r30)
000e40  97913800  or r3, r17, r3
000e44  1f42e200  addli r4, r4, 116
000e48  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000e4c  b3920228  sext_int2long r[6:7], r5
000e50  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e54  ab0100f0  lui r3, 983040
000e58  1f020ff8  addli r4, r30, -1024
000e5c  97b0c203  sll.d r[2:3], r[6:7], r28
000e60  e3421feb  loadli.w r5,  -2676(r30)
000e64  97913800  or r3, r17, r3
000e68  1f62e200  addli r4, r4, 118
000e6c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000e70  b3920228  sext_int2long r[6:7], r5
000e74  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e78  ab0100f0  lui r3, 983040
000e7c  1f020ff8  addli r4, r30, -1024
000e80  97b0c203  sll.d r[2:3], r[6:7], r28
000e84  e3022feb  loadli.w r5,  -2672(r30)
000e88  97913800  or r3, r17, r3
000e8c  1f02f200  addli r4, r4, 120
000e90  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000e94  b3920228  sext_int2long r[6:7], r5
000e98  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e9c  ab0100f0  lui r3, 983040
000ea0  1f020ff8  addli r4, r30, -1024
000ea4  97b0c203  sll.d r[2:3], r[6:7], r28
000ea8  e3422feb  loadli.w r5,  -2668(r30)
000eac  97913800  or r3, r17, r3
000eb0  1f22f200  addli r4, r4, 122
000eb4  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000eb8  b3920228  sext_int2long r[6:7], r5
000ebc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ec0  ab0100f0  lui r3, 983040
000ec4  1f020ff8  addli r4, r30, -1024
000ec8  97b0c203  sll.d r[2:3], r[6:7], r28
000ecc  e3023feb  loadli.w r5,  -2664(r30)
000ed0  97913800  or r3, r17, r3
000ed4  1f42f200  addli r4, r4, 124
000ed8  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000edc  b3920228  sext_int2long r[6:7], r5
000ee0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ee4  ab0100f0  lui r3, 983040
000ee8  1f020ff8  addli r4, r30, -1024
000eec  97b0c203  sll.d r[2:3], r[6:7], r28
000ef0  e3423feb  loadli.w r5,  -2660(r30)
000ef4  97913800  or r3, r17, r3
000ef8  1f62f200  addli r4, r4, 126
000efc  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000f00  b3920228  sext_int2long r[6:7], r5
000f04  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f08  63024feb  loadli.w r4,  -2656(r30)
000f0c  ab0100f0  lui r3, 983040
000f10  97b0c203  sll.d r[2:3], r[6:7], r28
000f14  63034fed  loadli.w r6,  -2400(r30)
000f18  97913800  or r3, r17, r3
000f1c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000f20  33120228  sext_int2long r[5:6], r4
000f24  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
000f28  9730c203  sll.d r[2:3], r[5:6], r28
000f2c  e3424feb  loadli.w r5,  -2652(r30)
000f30  ab0100f0  lui r3, 983040
000f34  1f020ff8  addli r4, r30, -1024
000f38  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000f3c  97913800  or r3, r17, r3
000f40  1f220201  addli r4, r4, 130
000f44  b3920228  sext_int2long r[6:7], r5
000f48  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f4c  ab0100f0  lui r3, 983040
000f50  1f020ff8  addli r4, r30, -1024
000f54  97b0c203  sll.d r[2:3], r[6:7], r28
000f58  e3025feb  loadli.w r5,  -2648(r30)
000f5c  97913800  or r3, r17, r3
000f60  1f420201  addli r4, r4, 132
000f64  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000f68  b3920228  sext_int2long r[6:7], r5
000f6c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f70  ab0100f0  lui r3, 983040
000f74  1f020ff8  addli r4, r30, -1024
000f78  97b0c203  sll.d r[2:3], r[6:7], r28
000f7c  e3425feb  loadli.w r5,  -2644(r30)
000f80  97913800  or r3, r17, r3
000f84  1f620201  addli r4, r4, 134
000f88  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000f8c  b3920228  sext_int2long r[6:7], r5
000f90  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f94  ab0100f0  lui r3, 983040
000f98  1f020ff8  addli r4, r30, -1024
000f9c  97b0c203  sll.d r[2:3], r[6:7], r28
000fa0  e3026feb  loadli.w r5,  -2640(r30)
000fa4  97913800  or r3, r17, r3
000fa8  1f021201  addli r4, r4, 136
000fac  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000fb0  b3920228  sext_int2long r[6:7], r5
000fb4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000fb8  ab0100f0  lui r3, 983040
000fbc  1f020ff8  addli r4, r30, -1024
000fc0  97b0c203  sll.d r[2:3], r[6:7], r28
000fc4  e3426feb  loadli.w r5,  -2636(r30)
000fc8  97913800  or r3, r17, r3
000fcc  1f221201  addli r4, r4, 138
000fd0  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000fd4  b3920228  sext_int2long r[6:7], r5
000fd8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000fdc  ab0100f0  lui r3, 983040
000fe0  1f020ff8  addli r4, r30, -1024
000fe4  97b0c203  sll.d r[2:3], r[6:7], r28
000fe8  e3027feb  loadli.w r5,  -2632(r30)
000fec  97913800  or r3, r17, r3
000ff0  1f421201  addli r4, r4, 140
000ff4  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
000ff8  b3920228  sext_int2long r[6:7], r5
000ffc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001000  ab0100f0  lui r3, 983040
001004  1f020ff8  addli r4, r30, -1024
001008  97b0c203  sll.d r[2:3], r[6:7], r28
00100c  e3427feb  loadli.w r5,  -2628(r30)
001010  97913800  or r3, r17, r3
001014  1f621201  addli r4, r4, 142
001018  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
00101c  b3920228  sext_int2long r[6:7], r5
001020  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001024  ab0100f0  lui r3, 983040
001028  1f020ff8  addli r4, r30, -1024
00102c  97b0c203  sll.d r[2:3], r[6:7], r28
001030  e3028feb  loadli.w r5,  -2624(r30)
001034  97913800  or r3, r17, r3
001038  1f022201  addli r4, r4, 144
00103c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001040  b3920228  sext_int2long r[6:7], r5
001044  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001048  ab0100f0  lui r3, 983040
00104c  1f020ff8  addli r4, r30, -1024
001050  97b0c203  sll.d r[2:3], r[6:7], r28
001054  e3428feb  loadli.w r5,  -2620(r30)
001058  97913800  or r3, r17, r3
00105c  1f222201  addli r4, r4, 146
001060  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001064  b3920228  sext_int2long r[6:7], r5
001068  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00106c  ab0100f0  lui r3, 983040
001070  1f020ff8  addli r4, r30, -1024
001074  97b0c203  sll.d r[2:3], r[6:7], r28
001078  e3029feb  loadli.w r5,  -2616(r30)
00107c  97913800  or r3, r17, r3
001080  1f422201  addli r4, r4, 148
001084  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001088  b3920228  sext_int2long r[6:7], r5
00108c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001090  ab0100f0  lui r3, 983040
001094  1f020ff8  addli r4, r30, -1024
001098  97b0c203  sll.d r[2:3], r[6:7], r28
00109c  e3429feb  loadli.w r5,  -2612(r30)
0010a0  97913800  or r3, r17, r3
0010a4  1f622201  addli r4, r4, 150
0010a8  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0010ac  b3920228  sext_int2long r[6:7], r5
0010b0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010b4  ab0100f0  lui r3, 983040
0010b8  1f020ff8  addli r4, r30, -1024
0010bc  97b0c203  sll.d r[2:3], r[6:7], r28
0010c0  e302afeb  loadli.w r5,  -2608(r30)
0010c4  97913800  or r3, r17, r3
0010c8  1f023201  addli r4, r4, 152
0010cc  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0010d0  b3920228  sext_int2long r[6:7], r5
0010d4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010d8  ab0100f0  lui r3, 983040
0010dc  1f020ff8  addli r4, r30, -1024
0010e0  97b0c203  sll.d r[2:3], r[6:7], r28
0010e4  e342afeb  loadli.w r5,  -2604(r30)
0010e8  97913800  or r3, r17, r3
0010ec  1f223201  addli r4, r4, 154
0010f0  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0010f4  b3920228  sext_int2long r[6:7], r5
0010f8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010fc  ab0100f0  lui r3, 983040
001100  1f020ff8  addli r4, r30, -1024
001104  97b0c203  sll.d r[2:3], r[6:7], r28
001108  e302bfeb  loadli.w r5,  -2600(r30)
00110c  97913800  or r3, r17, r3
001110  1f423201  addli r4, r4, 156
001114  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001118  b3920228  sext_int2long r[6:7], r5
00111c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001120  ab0100f0  lui r3, 983040
001124  1f020ff8  addli r4, r30, -1024
001128  97b0c203  sll.d r[2:3], r[6:7], r28
00112c  e342bfeb  loadli.w r5,  -2596(r30)
001130  97913800  or r3, r17, r3
001134  1f623201  addli r4, r4, 158
001138  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
00113c  b3920228  sext_int2long r[6:7], r5
001140  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001144  ab0100f0  lui r3, 983040
001148  1f020ff8  addli r4, r30, -1024
00114c  97b0c203  sll.d r[2:3], r[6:7], r28
001150  e302cfeb  loadli.w r5,  -2592(r30)
001154  97913800  or r3, r17, r3
001158  1f024201  addli r4, r4, 160
00115c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001160  b3920228  sext_int2long r[6:7], r5
001164  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001168  ab0100f0  lui r3, 983040
00116c  1f020ff8  addli r4, r30, -1024
001170  97b0c203  sll.d r[2:3], r[6:7], r28
001174  e342cfeb  loadli.w r5,  -2588(r30)
001178  97913800  or r3, r17, r3
00117c  1f224201  addli r4, r4, 162
001180  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001184  b3920228  sext_int2long r[6:7], r5
001188  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00118c  ab0100f0  lui r3, 983040
001190  1f020ff8  addli r4, r30, -1024
001194  97b0c203  sll.d r[2:3], r[6:7], r28
001198  e302dfeb  loadli.w r5,  -2584(r30)
00119c  97913800  or r3, r17, r3
0011a0  1f424201  addli r4, r4, 164
0011a4  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0011a8  b3920228  sext_int2long r[6:7], r5
0011ac  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011b0  ab0100f0  lui r3, 983040
0011b4  1f020ff8  addli r4, r30, -1024
0011b8  97b0c203  sll.d r[2:3], r[6:7], r28
0011bc  e342dfeb  loadli.w r5,  -2580(r30)
0011c0  97913800  or r3, r17, r3
0011c4  1f624201  addli r4, r4, 166
0011c8  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0011cc  b3920228  sext_int2long r[6:7], r5
0011d0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011d4  ab0100f0  lui r3, 983040
0011d8  1f020ff8  addli r4, r30, -1024
0011dc  97b0c203  sll.d r[2:3], r[6:7], r28
0011e0  e302efeb  loadli.w r5,  -2576(r30)
0011e4  97913800  or r3, r17, r3
0011e8  1f025201  addli r4, r4, 168
0011ec  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0011f0  b3920228  sext_int2long r[6:7], r5
0011f4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011f8  ab0100f0  lui r3, 983040
0011fc  1f020ff8  addli r4, r30, -1024
001200  97b0c203  sll.d r[2:3], r[6:7], r28
001204  e342efeb  loadli.w r5,  -2572(r30)
001208  97913800  or r3, r17, r3
00120c  1f225201  addli r4, r4, 170
001210  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001214  b3920228  sext_int2long r[6:7], r5
001218  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00121c  ab0100f0  lui r3, 983040
001220  1f020ff8  addli r4, r30, -1024
001224  97b0c203  sll.d r[2:3], r[6:7], r28
001228  e302ffeb  loadli.w r5,  -2568(r30)
00122c  97913800  or r3, r17, r3
001230  1f425201  addli r4, r4, 172
001234  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001238  b3920228  sext_int2long r[6:7], r5
00123c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001240  ab0100f0  lui r3, 983040
001244  1f020ff8  addli r4, r30, -1024
001248  97b0c203  sll.d r[2:3], r[6:7], r28
00124c  e342ffeb  loadli.w r5,  -2564(r30)
001250  97913800  or r3, r17, r3
001254  1f625201  addli r4, r4, 174
001258  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
00125c  b3920228  sext_int2long r[6:7], r5
001260  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001264  ab0100f0  lui r3, 983040
001268  1f020ff8  addli r4, r30, -1024
00126c  97b0c203  sll.d r[2:3], r[6:7], r28
001270  e3020fec  loadli.w r5,  -2560(r30)
001274  97913800  or r3, r17, r3
001278  1f026201  addli r4, r4, 176
00127c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001280  b3920228  sext_int2long r[6:7], r5
001284  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001288  ab0100f0  lui r3, 983040
00128c  1f020ff8  addli r4, r30, -1024
001290  97b0c203  sll.d r[2:3], r[6:7], r28
001294  e3420fec  loadli.w r5,  -2556(r30)
001298  97913800  or r3, r17, r3
00129c  1f226201  addli r4, r4, 178
0012a0  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0012a4  b3920228  sext_int2long r[6:7], r5
0012a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012ac  ab0100f0  lui r3, 983040
0012b0  1f020ff8  addli r4, r30, -1024
0012b4  97b0c203  sll.d r[2:3], r[6:7], r28
0012b8  e3021fec  loadli.w r5,  -2552(r30)
0012bc  97913800  or r3, r17, r3
0012c0  1f426201  addli r4, r4, 180
0012c4  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0012c8  b3920228  sext_int2long r[6:7], r5
0012cc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012d0  ab0100f0  lui r3, 983040
0012d4  1f020ff8  addli r4, r30, -1024
0012d8  97b0c203  sll.d r[2:3], r[6:7], r28
0012dc  e3421fec  loadli.w r5,  -2548(r30)
0012e0  97913800  or r3, r17, r3
0012e4  1f626201  addli r4, r4, 182
0012e8  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0012ec  b3920228  sext_int2long r[6:7], r5
0012f0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012f4  ab0100f0  lui r3, 983040
0012f8  1f020ff8  addli r4, r30, -1024
0012fc  97b0c203  sll.d r[2:3], r[6:7], r28
001300  e3022fec  loadli.w r5,  -2544(r30)
001304  97913800  or r3, r17, r3
001308  1f027201  addli r4, r4, 184
00130c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001310  b3920228  sext_int2long r[6:7], r5
001314  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001318  ab0100f0  lui r3, 983040
00131c  1f020ff8  addli r4, r30, -1024
001320  97b0c203  sll.d r[2:3], r[6:7], r28
001324  e3422fec  loadli.w r5,  -2540(r30)
001328  97913800  or r3, r17, r3
00132c  1f227201  addli r4, r4, 186
001330  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001334  b3920228  sext_int2long r[6:7], r5
001338  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00133c  ab0100f0  lui r3, 983040
001340  1f020ff8  addli r4, r30, -1024
001344  97b0c203  sll.d r[2:3], r[6:7], r28
001348  e3023fec  loadli.w r5,  -2536(r30)
00134c  97913800  or r3, r17, r3
001350  1f427201  addli r4, r4, 188
001354  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001358  b3920228  sext_int2long r[6:7], r5
00135c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001360  ab0100f0  lui r3, 983040
001364  1f020ff8  addli r4, r30, -1024
001368  97b0c203  sll.d r[2:3], r[6:7], r28
00136c  e3423fec  loadli.w r5,  -2532(r30)
001370  97913800  or r3, r17, r3
001374  1f627201  addli r4, r4, 190
001378  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
00137c  b3920228  sext_int2long r[6:7], r5
001380  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001384  63024fec  loadli.w r4,  -2528(r30)
001388  ab0100f0  lui r3, 983040
00138c  97b0c203  sll.d r[2:3], r[6:7], r28
001390  63434fed  loadli.w r6,  -2396(r30)
001394  97913800  or r3, r17, r3
001398  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
00139c  33120228  sext_int2long r[5:6], r4
0013a0  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
0013a4  9730c203  sll.d r[2:3], r[5:6], r28
0013a8  e3424fec  loadli.w r5,  -2524(r30)
0013ac  ab0100f0  lui r3, 983040
0013b0  1f020ff8  addli r4, r30, -1024
0013b4  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0013b8  97913800  or r3, r17, r3
0013bc  1f228201  addli r4, r4, 194
0013c0  b3920228  sext_int2long r[6:7], r5
0013c4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0013c8  ab0100f0  lui r3, 983040
0013cc  1f020ff8  addli r4, r30, -1024
0013d0  97b0c203  sll.d r[2:3], r[6:7], r28
0013d4  e3025fec  loadli.w r5,  -2520(r30)
0013d8  97913800  or r3, r17, r3
0013dc  1f428201  addli r4, r4, 196
0013e0  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0013e4  b3920228  sext_int2long r[6:7], r5
0013e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0013ec  ab0100f0  lui r3, 983040
0013f0  1f020ff8  addli r4, r30, -1024
0013f4  97b0c203  sll.d r[2:3], r[6:7], r28
0013f8  e3425fec  loadli.w r5,  -2516(r30)
0013fc  97913800  or r3, r17, r3
001400  1f628201  addli r4, r4, 198
001404  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001408  b3920228  sext_int2long r[6:7], r5
00140c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001410  ab0100f0  lui r3, 983040
001414  1f020ff8  addli r4, r30, -1024
001418  97b0c203  sll.d r[2:3], r[6:7], r28
00141c  e3026fec  loadli.w r5,  -2512(r30)
001420  97913800  or r3, r17, r3
001424  1f029201  addli r4, r4, 200
001428  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
00142c  b3920228  sext_int2long r[6:7], r5
001430  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001434  63426fec  loadli.w r4,  -2508(r30)
001438  ab0100f0  lui r3, 983040
00143c  97b0c203  sll.d r[2:3], r[6:7], r28
001440  1f030ff8  addli r6, r30, -1024
001444  97913800  or r3, r17, r3
001448  33120228  sext_int2long r[5:6], r4
00144c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
001450  1f239301  addli r6, r6, 202
001454  1732c203  sll.d r[5:6], r[5:6], r28
001458  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
00145c  ab0100f0  lui r3, 983040
001460  8ba04a10  add.ul r[2:3], r[22:23], r[5:6]
001464  e3027fec  loadli.w r5,  -2504(r30)
001468  1f020ff8  addli r4, r30, -1024
00146c  97913800  or r3, r17, r3
001470  1f429201  addli r4, r4, 204
001474  b3920228  sext_int2long r[6:7], r5
001478  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00147c  97b1c203  sll.d r[4:5], r[6:7], r28
001480  9f025fed  addli r5, r30, -2392
001484  1f030ff8  addli r6, r30, -1024
001488  ebd00200  load.d r[2:3], 0(r5)
00148c  ab0200f0  lui r5, 983040
001490  8ba13a10  add.ul r[4:5], r[22:23], r[4:5]
001494  1f639301  addli r6, r6, 206
001498  97925800  or r5, r17, r5
00149c  8ba01a10  add.ul r[2:3], r[22:23], r[2:3]
0014a0  ffb26100  s_lm2gm r5, r6, 0(r[4:5])
0014a4  e3018fec  loadli.w r3,  -2496(r30)
0014a8  97b2c303  sll.d r[6:7], r[8:9], r28
0014ac  ab0300f0  lui r7, 983040
0014b0  1f040ff8  addli r8, r30, -1024
0014b4  8ba25a10  add.ul r[6:7], r[22:23], r[6:7]
0014b8  1f04a401  addli r8, r8, 208
0014bc  97937800  or r7, r17, r7
0014c0  b3910128  sext_int2long r[4:5], r3
0014c4  ffb38200  s_lm2gm r7, r8, 0(r[6:7])
0014c8  97b3c403  sll.d r[8:9], r[10:11], r28
0014cc  ab0400f0  lui r9, 983040
0014d0  1f050ff8  addli r10, r30, -1024
0014d4  e3029fec  loadli.w r5,  -2488(r30)
0014d8  97b1c103  sll.d r[4:5], r[4:5], r28
0014dc  1f25a501  addli r10, r10, 210
0014e0  97949800  or r9, r17, r9
0014e4  8ba37a10  add.ul r[8:9], r[22:23], r[8:9]
0014e8  8ba13a10  add.ul r[4:5], r[22:23], r[4:5]
0014ec  b3920228  sext_int2long r[6:7], r5
0014f0  ffb4a100  s_lm2gm r9, r10, 0(r[4:5])
0014f4  97b4c503  sll.d r[10:11], r[12:13], r28
0014f8  ab0500f0  lui r11, 983040
0014fc  1f060ff8  addli r12, r30, -1024
001500  97b2c203  sll.d r[6:7], r[6:7], r28
001504  e301afec  loadli.w r3,  -2480(r30)
001508  1f46a601  addli r12, r12, 212
00150c  9795b800  or r11, r17, r11
001510  8ba25a10  add.ul r[6:7], r[22:23], r[6:7]
001514  8ba49a10  add.ul r[10:11], r[22:23], r[10:11]
001518  b3910128  sext_int2long r[4:5], r3
00151c  ffb5c300  s_lm2gm r11, r12, 0(r[8:9])
001520  e303bfec  loadli.w r7,  -2472(r30)
001524  97b5c603  sll.d r[12:13], r[14:15], r28
001528  97b1c103  sll.d r[4:5], r[4:5], r28
00152c  8ba6ba10  add.ul r[14:15], r[22:23], r[12:13]
001530  e345bfec  loadli.w r11,  -2468(r30)
001534  b3930328  sext_int2long r[8:9], r7
001538  8ba13a10  add.ul r[4:5], r[22:23], r[4:5]
00153c  97b3c303  sll.d r[8:9], r[8:9], r28
001540  b3950528  sext_int2long r[12:13], r11
001544  8ba77a10  add.ul r[16:17], r[22:23], r[8:9]
001548  ab0300f0  lui r7, 983040
00154c  1f040ff8  addli r8, r30, -1024
001550  278a0a00  addli.d r[21:22], r[22:23], 0
001554  1f64a401  addli r8, r8, 214
001558  97937800  or r7, r17, r7
00155c  ffb38200  s_lm2gm r7, r8, 0(r[6:7])
001560  e302cfec  loadli.w r5,  -2464(r30)
001564  97b3c503  sll.d r[8:9], r[12:13], r28
001568  0b2b7a10  add.ul r[23:24], r[21:22], r[8:9]
00156c  e343cfec  loadli.w r7,  -2460(r30)
001570  b3920228  sext_int2long r[6:7], r5
001574  97b2c203  sll.d r[6:7], r[6:7], r28
001578  b3930328  sext_int2long r[8:9], r7
00157c  8b255a10  add.ul r[12:13], r[21:22], r[6:7]
001580  ab0200f0  lui r5, 983040
001584  1f030ff8  addli r6, r30, -1024
001588  97b3c303  sll.d r[8:9], r[8:9], r28
00158c  1f03b301  addli r6, r6, 216
001590  97925800  or r5, r17, r5
001594  0b2c7a10  add.ul r[25:26], r[21:22], r[8:9]
001598  ab0300f0  lui r7, 983040
00159c  1f040ff8  addli r8, r30, -1024
0015a0  ffb26400  s_lm2gm r5, r6, 0(r[10:11])
0015a4  e302dfec  loadli.w r5,  -2456(r30)
0015a8  1f24b401  addli r8, r8, 218
0015ac  97937800  or r7, r17, r7
0015b0  ffb38100  s_lm2gm r7, r8, 0(r[4:5])
0015b4  e301efec  loadli.w r3,  -2448(r30)
0015b8  9f030fee  addli r7, r30, -2304
0015bc  b3920228  sext_int2long r[6:7], r5
0015c0  97b2c203  sll.d r[6:7], r[6:7], r28
0015c4  b3910128  sext_int2long r[4:5], r3
0015c8  8b245a10  add.ul r[10:11], r[21:22], r[6:7]
0015cc  e342dfec  loadli.w r5,  -2452(r30)
0015d0  97b1c103  sll.d r[4:5], r[4:5], r28
0015d4  8b213a10  add.ul r[4:5], r[21:22], r[4:5]
0015d8  b3920228  sext_int2long r[6:7], r5
0015dc  97b2c203  sll.d r[6:7], r[6:7], r28
0015e0  8b225a10  add.ul r[6:7], r[21:22], r[6:7]
0015e4  73b05300  store.d r[6:7], 0(r7)
0015e8  e342efec  loadli.w r5,  -2444(r30)
0015ec  9f03ffed  addli r7, r30, -2312
0015f0  73b03300  store.d r[4:5], 0(r7)
0015f4  b3920228  sext_int2long r[6:7], r5
0015f8  97b1c203  sll.d r[4:5], r[6:7], r28
0015fc  ab0200f0  lui r5, 983040
001600  1f030ff8  addli r6, r30, -1024
001604  9f43b301  addli r7, r6, 220
001608  17945800  or r8, r17, r5
00160c  8b223a10  add.ul r[6:7], r[21:22], r[4:5]
001610  e341ffec  loadli.w r3,  -2436(r30)
001614  7fb47600  s_lm2gm r8, r7, 0(r[14:15])
001618  e303ffec  loadli.w r7,  -2440(r30)
00161c  b3910128  sext_int2long r[4:5], r3
001620  b3930328  sext_int2long r[8:9], r7
001624  97b1c103  sll.d r[4:5], r[4:5], r28
001628  97b3c303  sll.d r[8:9], r[8:9], r28
00162c  8b263a10  add.ul r[14:15], r[21:22], r[4:5]
001630  8b217a10  add.ul r[4:5], r[21:22], r[8:9]
001634  9f030fef  addli r7, r30, -2176
001638  73b03300  store.d r[4:5], 0(r7)
00163c  e3010fed  loadli.w r3,  -2432(r30)
001640  b3930128  sext_int2long r[8:9], r3
001644  97b3c303  sll.d r[8:9], r[8:9], r28
001648  8b217a10  add.ul r[4:5], r[21:22], r[8:9]
00164c  9f03ffee  addli r7, r30, -2184
001650  73b03300  store.d r[4:5], 0(r7)
001654  9f030ff8  addli r7, r30, -1024
001658  a7010a00  addli.d r[4:5], r[21:22], 0
00165c  9f0a0ff8  addli r21, r30, -1024
001660  ffb97000  s_lm2gm r19, r7, 0(r[2:3])
001664  ab0900f0  lui r19, 983040
001668  1fedb301  addli r26, r7, 222
00166c  e3031fed  loadli.w r7,  -2424(r30)
001670  e3400fed  loadli.w r1,  -2428(r30)
001674  97993801  or r19, r17, r19
001678  b3900028  sext_int2long r[2:3], r1
00167c  ffb9a701  s_lm2gm r19, r26, 0(r[16:17])
001680  b3970328  sext_int2long r[16:17], r7
001684  9f030ff8  addli r7, r30, -1024
001688  ab0900f0  lui r19, 983040
00168c  97b0c003  sll.d r[2:3], r[2:3], r28
001690  1f8dc301  addli r26, r7, 224
001694  e3431fed  loadli.w r7,  -2420(r30)
001698  97993801  or r19, r17, r19
00169c  97b7c703  sll.d r[16:17], r[16:17], r28
0016a0  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
0016a4  ff39ab01  s_lm2gm r19, r26, 0(r[23:24])
0016a8  ab0900f0  lui r19, 983040
0016ac  8ba7f110  add.ul r[16:17], r[4:5], r[16:17]
0016b0  339b0328  sext_int2long r[23:24], r7
0016b4  9f030ff8  addli r7, r30, -1024
0016b8  97993801  or r19, r17, r19
0016bc  1fadc301  addli r26, r7, 226
0016c0  e3032fed  loadli.w r7,  -2416(r30)
0016c4  173bcb03  sll.d r[23:24], r[23:24], r28
0016c8  ffb9a501  s_lm2gm r19, r26, 0(r[12:13])
0016cc  9f05efed  addli r11, r30, -2320
0016d0  ab0900f0  lui r19, 983040
0016d4  1fe6da01  addli r12, r21, 238
0016d8  339d0328  sext_int2long r[27:28], r7
0016dc  8ba36111  add.ul r[8:9], r[4:5], r[23:24]
0016e0  97993801  or r19, r17, r19
0016e4  73b07500  store.d r[8:9], 0(r11)
0016e8  9f030ff8  addli r7, r30, -1024
0016ec  173bcd03  sll.d r[23:24], r[27:28], r28
0016f0  ab0500f0  lui r11, 983040
0016f4  1fcdc301  addli r26, r7, 228
0016f8  0bab6111  add.ul r[23:24], r[4:5], r[23:24]
0016fc  9795b800  or r11, r17, r11
001700  ff39ac01  s_lm2gm r19, r26, 0(r[25:26])
001704  1fecc301  addli r24, r7, 230
001708  e3432fed  loadli.w r7,  -2412(r30)
00170c  ab0900f0  lui r19, 983040
001710  ffb5c600  s_lm2gm r11, r12, 0(r[14:15])
001714  9f050fef  addli r11, r30, -2176
001718  97993801  or r19, r17, r19
00171c  b39c0328  sext_int2long r[26:27], r7
001720  e3437fed  loadli.w r7,  -2372(r30)
001724  ffb98401  s_lm2gm r19, r24, 0(r[10:11])
001728  9f040ff8  addli r9, r30, -1024
00172c  1fc5da01  addli r10, r21, 236
001730  17bccc03  sll.d r[25:26], r[26:27], r28
001734  b3990328  sext_int2long r[20:21], r7
001738  8ba38111  add.ul r[8:9], r[4:5], r[25:26]
00173c  17bdc903  sll.d r[27:28], r[20:21], r28
001740  1faed401  addli r28, r9, 234
001744  ab0900f0  lui r19, 983040
001748  0baca111  add.ul r[25:26], r[4:5], r[27:28]
00174c  1f8dd401  addli r26, r9, 232
001750  9f040fee  addli r9, r30, -2304
001754  97993801  or r19, r17, r19
001758  ab0d00f0  lui r27, 983040
00175c  ebd10400  load.d r[4:5], 0(r9)
001760  9f04ffed  addli r9, r30, -2312
001764  979db801  or r27, r17, r27
001768  ffb9a101  s_lm2gm r19, r26, 0(r[4:5])
00176c  ebd10400  load.d r[4:5], 0(r9)
001770  ab0400f0  lui r9, 983040
001774  e309ffef  loadli.w r19,  -2056(r30)
001778  634dffef  loadli.w r26,  -2052(r30)
00177c  97949800  or r9, r17, r9
001780  ffbdc101  s_lm2gm r27, r28, 0(r[4:5])
001784  ebd10500  load.d r[4:5], 0(r11)
001788  ffb4a200  s_lm2gm r9, r10, 0(r[6:7])
00178c  ab0200f0  lui r5, 983040
001790  1f83ea01  addli r6, r21, 240
001794  ab0400f0  lui r9, 983040
001798  1fa5ea01  addli r10, r21, 242
00179c  97925800  or r5, r17, r5
0017a0  97949800  or r9, r17, r9
0017a4  ffb26100  s_lm2gm r5, r6, 0(r[4:5])
0017a8  9f02ffee  addli r5, r30, -2184
0017ac  1fe3ea01  addli r6, r21, 246
0017b0  ebd10200  load.d r[4:5], 0(r5)
0017b4  ab0200f0  lui r5, 983040
0017b8  97925800  or r5, r17, r5
0017bc  ffb4a100  s_lm2gm r9, r10, 0(r[4:5])
0017c0  ab0100f0  lui r3, 983040
0017c4  1fc2ea01  addli r4, r21, 244
0017c8  9f04efed  addli r9, r30, -2320
0017cc  ffb26700  s_lm2gm r5, r6, 0(r[16:17])
0017d0  97913800  or r3, r17, r3
0017d4  ebd20400  load.d r[6:7], 0(r9)
0017d8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0017dc  ab0000f0  lui r1, 983040
0017e0  ab0100f0  lui r3, 983040
0017e4  1f81fa01  addli r2, r21, 248
0017e8  1fa2fa01  addli r4, r21, 250
0017ec  97901800  or r1, r17, r1
0017f0  97913800  or r3, r17, r3
0017f4  ffb02200  s_lm2gm r1, r2, 0(r[6:7])
0017f8  ab0000f0  lui r1, 983040
0017fc  ff314b00  s_lm2gm r3, r4, 0(r[23:24])
001800  ab0100f0  lui r3, 983040
001804  1fc1fa01  addli r2, r21, 252
001808  1fe2fa01  addli r4, r21, 254
00180c  1f030002  addli r6, zero, 256
001810  97901800  or r1, r17, r1
001814  97913800  or r3, r17, r3
001818  ffb02300  s_lm2gm r1, r2, 0(r[8:9])
00181c  63046fed  loadli.w r8,  -2384(r30)
001820  e3400fe9  loadli.w r1,  -2940(r30)
001824  ff314c00  s_lm2gm r3, r4, 0(r[25:26])
001828  00a00000  mfence { lm }
00182c  0b141410  add.s r8, r8, r1
001830  e3002fe9  loadli.w r1,  -2928(r30)
001834  3f201400  blt.s r8, r1, 8
001838  5bf00600  j 14208
00183c  9f000000  addli r1, zero, 0
001840  0b911a10  add.s r2, r21, r1
001844  9fc00000  addli r1, r1, 4
001848  73100100  store.h zero, 0(r2)
00184c  73110100  store.h zero, 2(r2)
001850  00a00000  mfence { lm }
001854  bbbf60fe  bneq r1, r6, -20
001858  e3005f00  loadli.w r1,  40(r30)
00185c  63414f00  loadli.w r2,  36(r30)
001860  9f120000  addli r5, zero, 1
001864  670b8fec  storeli.w r8, -2384(r30)
001868  8b101430  div.s r1, r8, r1
00186c  8b902030  div.s r1, r1, r2
001870  63411fe9  loadli.w r2,  -2932(r30)
001874  9bb03000  slli r1, r1, 3
001878  8b902010  add.s r1, r1, r2
00187c  1bb1a000  slli r2, r1, 10
001880  e7071fee  storeli.w r1, -2184(r30)
001884  e3001fe9  loadli.w r1,  -2936(r30)
001888  e7092fec  storeli.w r2, -2408(r30)
00188c  8b101110  add.s r1, r2, r1
001890  2b0100f0  lui r2, 983040
001894  b3910028  sext_int2long r[4:5], r1
001898  17112300  or r2, r6, r2
00189c  ab0000f0  lui r1, 983040
0018a0  97b35102  sll.d r[8:9], r[4:5], r5
0018a4  eb510f00  load.d r[4:5], 0(r30)
0018a8  9f025fed  addli r5, r30, -2392
0018ac  97101300  or r1, r6, r1
0018b0  73b07200  store.d r[8:9], 0(r5)
0018b4  8ba17110  add.ul r[4:5], r[4:5], r[8:9]
0018b8  7fa15101  l_gm2lm r2, r21, 0(r[4:5])
0018bc  1f027fe8  addli r4, r30, -3016
0018c0  6b510200  load.d r[3:4], 0(r4)
0018c4  1f020ffa  addli r4, r30, -768
0018c8  ff204100  l_gm2lm r1, r4, 0(r[3:4])
0018cc  9f000fef  addli r1, r30, -2176
0018d0  00a00000  mfence { lm }
0018d4  42110f82  vload_mask16.mz vr2{mr1}, 1024(r30)
0018d8  c2138f82  vload_mask16.mz vr7{mr1}, 1088(r30)
0018dc  c2110f83  vload_mask16.mz vr3{mr1}, 1152(r30)
0018e0  c2158f83  vload_mask16.mz vr11{mr1}, 1216(r30)
0018e4  42140fa2  vload_mask16.mz vr8{mr1}, 1280(r30)
0018e8  42138fa2  vload_mask16.mz vr6{mr1}, 1344(r30)
0018ec  c2120fa3  vload_mask16.mz vr5{mr1}, 1408(r30)
0018f0  42128fa3  vload_mask16.mz vr4{mr1}, 1472(r30)
0018f4  00a00000  mfence { lm }
0018f8  e6c07480  vmerge_l.hf vr1, vr9, vr7
0018fc  66c56480  vmerge_l.hf vr10, vr9, vr6
001900  66c03480  vmerge_l.hf vr0, vr9, vr3
001904  e6c374a0  vmerge_h.hf vr7, vr9, vr7
001908  66c364a0  vmerge_h.hf vr6, vr9, vr6
00190c  e6c134a0  vmerge_h.hf vr3, vr9, vr3
001910  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
001914  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001918  66c02480  vmerge_l.hf vr0, vr9, vr2
00191c  66c58480  vmerge_l.hf vr10, vr9, vr8
001920  66c124a0  vmerge_h.hf vr2, vr9, vr2
001924  66c484a0  vmerge_h.hf vr8, vr9, vr8
001928  9f000fee  addli r1, r30, -2304
00192c  16936302  vadd.f.mz.rn vr6{mr1}, vr7, vr6
001930  e6c34480  vmerge_l.hf vr7, vr9, vr4
001934  66c244a0  vmerge_h.hf vr4, vr9, vr4
001938  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00193c  9f000fef  addli r1, r30, -2176
001940  1610a002  vadd.f.mz.rn vr0{mr1}, vr0, vr10
001944  16118102  vadd.f.mz.rn vr2{mr1}, vr2, vr8
001948  e6c0b4a0  vmerge_h.hf vr1, vr9, vr11
00194c  66c45480  vmerge_l.hf vr8, vr9, vr5
001950  e6c254a0  vmerge_h.hf vr5, vr9, vr5
001954  66c5b480  vmerge_l.hf vr10, vr9, vr11
001958  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
00195c  9f000fee  addli r1, r30, -2304
001960  46100fc2  vstore_mask16.mz vr0{mr1}, 1536(r30)
001964  46142fc2  vstore_mask16.mz vr2{mr1}, 1600(r30)
001968  96915102  vadd.f.mz.rn vr3{mr1}, vr3, vr5
00196c  96127502  vadd.f.mz.rn vr5{mr1}, vr10, vr7
001970  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
001974  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001978  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
00197c  46180fc2  vstore_mask16.mz vr0{mr1}, 1664(r30)
001980  461c6fc2  vstore_mask16.mz vr6{mr1}, 1728(r30)
001984  46108fe2  vstore_mask16.mz vr8{mr1}, 1792(r30)
001988  46143fe2  vstore_mask16.mz vr3{mr1}, 1856(r30)
00198c  46185fe2  vstore_mask16.mz vr5{mr1}, 1920(r30)
001990  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
001994  00a00000  mfence { lm }
001998  63050ffc  loadli.w r10,  -512(r30)
00199c  63460ffc  loadli.w r12,  -508(r30)
0019a0  63071ffc  loadli.w r14,  -504(r30)
0019a4  63481ffc  loadli.w r16,  -500(r30)
0019a8  e3072ffc  loadli.w r15,  -496(r30)
0019ac  e3462ffc  loadli.w r13,  -492(r30)
0019b0  e3053ffc  loadli.w r11,  -488(r30)
0019b4  e3443ffc  loadli.w r9,  -484(r30)
0019b8  63044ffc  loadli.w r8,  -480(r30)
0019bc  e3434ffc  loadli.w r7,  -476(r30)
0019c0  63035ffc  loadli.w r6,  -472(r30)
0019c4  e3425ffc  loadli.w r5,  -468(r30)
0019c8  63026ffc  loadli.w r4,  -464(r30)
0019cc  e3416ffc  loadli.w r3,  -460(r30)
0019d0  63017ffc  loadli.w r2,  -456(r30)
0019d4  e3407ffc  loadli.w r1,  -452(r30)
0019d8  e3088ffc  loadli.w r17,  -448(r30)
0019dc  e3488ffc  loadli.w r17,  -444(r30)
0019e0  e3089ffc  loadli.w r17,  -440(r30)
0019e4  e3489ffc  loadli.w r17,  -436(r30)
0019e8  e308affc  loadli.w r17,  -432(r30)
0019ec  e348affc  loadli.w r17,  -428(r30)
0019f0  e308bffc  loadli.w r17,  -424(r30)
0019f4  e348bffc  loadli.w r17,  -420(r30)
0019f8  e308cffc  loadli.w r17,  -416(r30)
0019fc  e348cffc  loadli.w r17,  -412(r30)
001a00  e308dffc  loadli.w r17,  -408(r30)
001a04  e348dffc  loadli.w r17,  -404(r30)
001a08  e308effc  loadli.w r17,  -400(r30)
001a0c  e348effc  loadli.w r17,  -396(r30)
001a10  e308fffc  loadli.w r17,  -392(r30)
001a14  e348fffc  loadli.w r17,  -388(r30)
001a18  e3080ffd  loadli.w r17,  -384(r30)
001a1c  e3480ffd  loadli.w r17,  -380(r30)
001a20  e3081ffd  loadli.w r17,  -376(r30)
001a24  e3481ffd  loadli.w r17,  -372(r30)
001a28  e3082ffd  loadli.w r17,  -368(r30)
001a2c  e3482ffd  loadli.w r17,  -364(r30)
001a30  e3083ffd  loadli.w r17,  -360(r30)
001a34  e3483ffd  loadli.w r17,  -356(r30)
001a38  e3084ffd  loadli.w r17,  -352(r30)
001a3c  e3484ffd  loadli.w r17,  -348(r30)
001a40  e3085ffd  loadli.w r17,  -344(r30)
001a44  e3485ffd  loadli.w r17,  -340(r30)
001a48  e3086ffd  loadli.w r17,  -336(r30)
001a4c  e3486ffd  loadli.w r17,  -332(r30)
001a50  e3087ffd  loadli.w r17,  -328(r30)
001a54  e3487ffd  loadli.w r17,  -324(r30)
001a58  e3088ffd  loadli.w r17,  -320(r30)
001a5c  e3488ffd  loadli.w r17,  -316(r30)
001a60  e3089ffd  loadli.w r17,  -312(r30)
001a64  e3489ffd  loadli.w r17,  -308(r30)
001a68  e308affd  loadli.w r17,  -304(r30)
001a6c  e348affd  loadli.w r17,  -300(r30)
001a70  e308bffd  loadli.w r17,  -296(r30)
001a74  e348bffd  loadli.w r17,  -292(r30)
001a78  e308cffd  loadli.w r17,  -288(r30)
001a7c  e348cffd  loadli.w r17,  -284(r30)
001a80  e308dffd  loadli.w r17,  -280(r30)
001a84  e348dffd  loadli.w r17,  -276(r30)
001a88  e308effd  loadli.w r17,  -272(r30)
001a8c  e348effd  loadli.w r17,  -268(r30)
001a90  e308fffd  loadli.w r17,  -264(r30)
001a94  e348fffd  loadli.w r17,  -260(r30)
001a98  e3080ffe  loadli.w r17,  -256(r30)
001a9c  e3480ffe  loadli.w r17,  -252(r30)
001aa0  e3081ffe  loadli.w r17,  -248(r30)
001aa4  e3481ffe  loadli.w r17,  -244(r30)
001aa8  e3082ffe  loadli.w r17,  -240(r30)
001aac  e3482ffe  loadli.w r17,  -236(r30)
001ab0  e3083ffe  loadli.w r17,  -232(r30)
001ab4  e3483ffe  loadli.w r17,  -228(r30)
001ab8  e3084ffe  loadli.w r17,  -224(r30)
001abc  e3484ffe  loadli.w r17,  -220(r30)
001ac0  e3085ffe  loadli.w r17,  -216(r30)
001ac4  e3485ffe  loadli.w r17,  -212(r30)
001ac8  e3086ffe  loadli.w r17,  -208(r30)
001acc  e3486ffe  loadli.w r17,  -204(r30)
001ad0  e3087ffe  loadli.w r17,  -200(r30)
001ad4  e3487ffe  loadli.w r17,  -196(r30)
001ad8  e3088ffe  loadli.w r17,  -192(r30)
001adc  e3488ffe  loadli.w r17,  -188(r30)
001ae0  e3089ffe  loadli.w r17,  -184(r30)
001ae4  e3489ffe  loadli.w r17,  -180(r30)
001ae8  e308affe  loadli.w r17,  -176(r30)
001aec  e348affe  loadli.w r17,  -172(r30)
001af0  e308bffe  loadli.w r17,  -168(r30)
001af4  e348bffe  loadli.w r17,  -164(r30)
001af8  e308cffe  loadli.w r17,  -160(r30)
001afc  e348cffe  loadli.w r17,  -156(r30)
001b00  e308dffe  loadli.w r17,  -152(r30)
001b04  e348dffe  loadli.w r17,  -148(r30)
001b08  e308effe  loadli.w r17,  -144(r30)
001b0c  e348effe  loadli.w r17,  -140(r30)
001b10  e308fffe  loadli.w r17,  -136(r30)
001b14  e348fffe  loadli.w r17,  -132(r30)
001b18  e3080fff  loadli.w r17,  -128(r30)
001b1c  e3480fff  loadli.w r17,  -124(r30)
001b20  e3081fff  loadli.w r17,  -120(r30)
001b24  e3481fff  loadli.w r17,  -116(r30)
001b28  e3082fff  loadli.w r17,  -112(r30)
001b2c  e3482fff  loadli.w r17,  -108(r30)
001b30  e3083fff  loadli.w r17,  -104(r30)
001b34  e3483fff  loadli.w r17,  -100(r30)
001b38  e3084fff  loadli.w r17,  -96(r30)
001b3c  e3484fff  loadli.w r17,  -92(r30)
001b40  e3085fff  loadli.w r17,  -88(r30)
001b44  e3485fff  loadli.w r17,  -84(r30)
001b48  e3086fff  loadli.w r17,  -80(r30)
001b4c  e3486fff  loadli.w r17,  -76(r30)
001b50  e3087fff  loadli.w r17,  -72(r30)
001b54  e3487fff  loadli.w r17,  -68(r30)
001b58  e3088fff  loadli.w r17,  -64(r30)
001b5c  e3488fff  loadli.w r17,  -60(r30)
001b60  e3089fff  loadli.w r17,  -56(r30)
001b64  e3489fff  loadli.w r17,  -52(r30)
001b68  e308afff  loadli.w r17,  -48(r30)
001b6c  e348afff  loadli.w r17,  -44(r30)
001b70  e308bfff  loadli.w r17,  -40(r30)
001b74  e348bfff  loadli.w r17,  -36(r30)
001b78  e308cfff  loadli.w r17,  -32(r30)
001b7c  e348cfff  loadli.w r17,  -28(r30)
001b80  6309dfff  loadli.w r18,  -24(r30)
001b84  2b09807f  lui r18, 522240
001b88  9708a501  and r17, r10, r26
001b8c  93081905  setlt.u r17, r18, r17
001b90  6349dfff  loadli.w r18,  -20(r30)
001b94  6309efff  loadli.w r18,  -16(r30)
001b98  6349efff  loadli.w r18,  -12(r30)
001b9c  6309ffff  loadli.w r18,  -8(r30)
001ba0  6349ffff  loadli.w r18,  -4(r30)
001ba4  3be00800  bneq r17, zero, 24
001ba8  9b480501  srli r17, r10, 16
001bac  9b881800  andi r17, r17, 1
001bb0  0b151511  add.s r10, r10, r17
001bb4  0b153511  add.s r10, r10, r19
001bb8  db010000  j 12
001bbc  ab084000  lui r17, 1024
001bc0  17151501  or r10, r10, r17
001bc4  9708a601  and r17, r12, r26
001bc8  2b09807f  lui r18, 522240
001bcc  93081905  setlt.u r17, r18, r17
001bd0  1f098fe7  addli r18, r30, -3136
001bd4  c2140902  vload_mask16.mz vr9{mr1}, 0(r18)
001bd8  3be00800  bneq r17, zero, 24
001bdc  9b480601  srli r17, r12, 16
001be0  9b881800  andi r17, r17, 1
001be4  0b161611  add.s r12, r12, r17
001be8  0b163611  add.s r12, r12, r19
001bec  db010000  j 12
001bf0  ab084000  lui r17, 1024
001bf4  17161601  or r12, r12, r17
001bf8  9708a701  and r17, r14, r26
001bfc  2b09807f  lui r18, 522240
001c00  93081905  setlt.u r17, r18, r17
001c04  3be00800  bneq r17, zero, 24
001c08  9b480701  srli r17, r14, 16
001c0c  9b881800  andi r17, r17, 1
001c10  0b171711  add.s r14, r14, r17
001c14  0b173711  add.s r14, r14, r19
001c18  db010000  j 12
001c1c  ab084000  lui r17, 1024
001c20  17171701  or r14, r14, r17
001c24  9708a801  and r17, r16, r26
001c28  93081905  setlt.u r17, r18, r17
001c2c  3be00800  bneq r17, zero, 24
001c30  9b480801  srli r17, r16, 16
001c34  9b881800  andi r17, r17, 1
001c38  0b181811  add.s r16, r16, r17
001c3c  0b183811  add.s r16, r16, r19
001c40  db010000  j 12
001c44  ab084000  lui r17, 1024
001c48  17181801  or r16, r16, r17
001c4c  9788a701  and r17, r15, r26
001c50  93081905  setlt.u r17, r18, r17
001c54  3be00800  bneq r17, zero, 24
001c58  9bc80701  srli r17, r15, 16
001c5c  9b881800  andi r17, r17, 1
001c60  8b971711  add.s r15, r15, r17
001c64  8b973711  add.s r15, r15, r19
001c68  db010000  j 12
001c6c  ab084000  lui r17, 1024
001c70  97971701  or r15, r15, r17
001c74  9788a601  and r17, r13, r26
001c78  93081905  setlt.u r17, r18, r17
001c7c  3be00800  bneq r17, zero, 24
001c80  9bc80601  srli r17, r13, 16
001c84  9b881800  andi r17, r17, 1
001c88  8b961611  add.s r13, r13, r17
001c8c  8b963611  add.s r13, r13, r19
001c90  db010000  j 12
001c94  ab084000  lui r17, 1024
001c98  97961601  or r13, r13, r17
001c9c  9788a501  and r17, r11, r26
001ca0  93081905  setlt.u r17, r18, r17
001ca4  3be00800  bneq r17, zero, 24
001ca8  9bc80501  srli r17, r11, 16
001cac  9b881800  andi r17, r17, 1
001cb0  8b951511  add.s r11, r11, r17
001cb4  8b953511  add.s r11, r11, r19
001cb8  db010000  j 12
001cbc  ab084000  lui r17, 1024
001cc0  97951501  or r11, r11, r17
001cc4  9788a401  and r17, r9, r26
001cc8  93081905  setlt.u r17, r18, r17
001ccc  3be00800  bneq r17, zero, 24
001cd0  9bc80401  srli r17, r9, 16
001cd4  9b881800  andi r17, r17, 1
001cd8  8b941411  add.s r9, r9, r17
001cdc  8b943411  add.s r9, r9, r19
001ce0  db010000  j 12
001ce4  ab084000  lui r17, 1024
001ce8  97941401  or r9, r9, r17
001cec  9708a401  and r17, r8, r26
001cf0  93081905  setlt.u r17, r18, r17
001cf4  3be00800  bneq r17, zero, 24
001cf8  9b480401  srli r17, r8, 16
001cfc  9b881800  andi r17, r17, 1
001d00  0b141411  add.s r8, r8, r17
001d04  0b143411  add.s r8, r8, r19
001d08  db010000  j 12
001d0c  ab084000  lui r17, 1024
001d10  17141401  or r8, r8, r17
001d14  9788a301  and r17, r7, r26
001d18  93081905  setlt.u r17, r18, r17
001d1c  3be00800  bneq r17, zero, 24
001d20  9bc80301  srli r17, r7, 16
001d24  9b881800  andi r17, r17, 1
001d28  8b931311  add.s r7, r7, r17
001d2c  8b933311  add.s r7, r7, r19
001d30  db010000  j 12
001d34  ab084000  lui r17, 1024
001d38  97931301  or r7, r7, r17
001d3c  9708a301  and r17, r6, r26
001d40  93081905  setlt.u r17, r18, r17
001d44  3be00800  bneq r17, zero, 24
001d48  9b480301  srli r17, r6, 16
001d4c  9b881800  andi r17, r17, 1
001d50  0b131311  add.s r6, r6, r17
001d54  0b133311  add.s r6, r6, r19
001d58  db010000  j 12
001d5c  ab084000  lui r17, 1024
001d60  17131301  or r6, r6, r17
001d64  9788a201  and r17, r5, r26
001d68  93081905  setlt.u r17, r18, r17
001d6c  3be00800  bneq r17, zero, 24
001d70  9bc80201  srli r17, r5, 16
001d74  9b881800  andi r17, r17, 1
001d78  8b921211  add.s r5, r5, r17
001d7c  8b923211  add.s r5, r5, r19
001d80  db010000  j 12
001d84  ab084000  lui r17, 1024
001d88  97921201  or r5, r5, r17
001d8c  9708a201  and r17, r4, r26
001d90  93081905  setlt.u r17, r18, r17
001d94  3be00800  bneq r17, zero, 24
001d98  9b480201  srli r17, r4, 16
001d9c  9b881800  andi r17, r17, 1
001da0  0b121211  add.s r4, r4, r17
001da4  0b123211  add.s r4, r4, r19
001da8  db010000  j 12
001dac  ab084000  lui r17, 1024
001db0  17121201  or r4, r4, r17
001db4  9788a101  and r17, r3, r26
001db8  93081905  setlt.u r17, r18, r17
001dbc  3be00800  bneq r17, zero, 24
001dc0  9bc80101  srli r17, r3, 16
001dc4  9b881800  andi r17, r17, 1
001dc8  8b911111  add.s r3, r3, r17
001dcc  8b913111  add.s r3, r3, r19
001dd0  db010000  j 12
001dd4  ab084000  lui r17, 1024
001dd8  97911101  or r3, r3, r17
001ddc  9708a101  and r17, r2, r26
001de0  93081905  setlt.u r17, r18, r17
001de4  3be00800  bneq r17, zero, 24
001de8  9b480101  srli r17, r2, 16
001dec  9b881800  andi r17, r17, 1
001df0  0b111111  add.s r2, r2, r17
001df4  0b113111  add.s r2, r2, r19
001df8  db010000  j 12
001dfc  ab084000  lui r17, 1024
001e00  17111101  or r2, r2, r17
001e04  9788a001  and r17, r1, r26
001e08  93081905  setlt.u r17, r18, r17
001e0c  3be00800  bneq r17, zero, 24
001e10  9bc80001  srli r17, r1, 16
001e14  9b881800  andi r17, r17, 1
001e18  8b901011  add.s r1, r1, r17
001e1c  8b903011  add.s r1, r1, r19
001e20  db010000  j 12
001e24  ab084000  lui r17, 1024
001e28  97901001  or r1, r1, r17
001e2c  ab08ffff  lui r17, 1048560
001e30  97821201  and r5, r5, r17
001e34  97801001  and r1, r1, r17
001e38  17091501  and r18, r10, r17
001e3c  17051601  and r10, r12, r17
001e40  17061701  and r12, r14, r17
001e44  17071801  and r14, r16, r17
001e48  178c1501  and r24, r11, r17
001e4c  97051201  and r11, r4, r17
001e50  978b1401  and r23, r9, r17
001e54  170a1401  and r20, r8, r17
001e58  17881301  and r16, r7, r17
001e5c  97811101  and r3, r3, r17
001e60  17011101  and r2, r2, r17
001e64  97871701  and r15, r15, r17
001e68  978c1601  and r25, r13, r17
001e6c  17031301  and r6, r6, r17
001e70  9f088000  addli r17, zero, 64
001e74  e7065fec  storeli.w r5, -2456(r30)
001e78  e70e5fec  storeli.w r5, -2328(r30)
001e7c  e7051fec  storeli.w r1, -2472(r30)
001e80  9f820000  addli r5, r1, 0
001e84  e300ffee  loadli.w r1,  -2184(r30)
001e88  9f040900  addli r9, r18, 0
001e8c  1f040500  addli r8, r10, 0
001e90  1f020600  addli r4, r12, 0
001e94  9f030700  addli r7, r14, 0
001e98  67492fed  storeli.w r18, -2412(r30)
001e9c  6709afec  storeli.w r10, -2416(r30)
001ea0  e748cfec  storeli.w r12, -2420(r30)
001ea4  e708efec  storeli.w r14, -2424(r30)
001ea8  6748ffec  storeli.w r15, -2428(r30)
001eac  67089fed  storeli.w r25, -2432(r30)
001eb0  e7478fed  storeli.w r24, -2436(r30)
001eb4  e7077fed  storeli.w r23, -2440(r30)
001eb8  67474fed  storeli.w r20, -2444(r30)
001ebc  67070fed  storeli.w r16, -2448(r30)
001ec0  e7466fec  storeli.w r6, -2452(r30)
001ec4  6746bfec  storeli.w r11, -2460(r30)
001ec8  e74ebfec  storeli.w r11, -2324(r30)
001ecc  67063fec  storeli.w r3, -2464(r30)
001ed0  670f3fec  storeli.w r3, -2320(r30)
001ed4  e7452fec  storeli.w r2, -2468(r30)
001ed8  e70f2fec  storeli.w r2, -2312(r30)
001edc  3fa11001  blt.s r1, r17, 72
001ee0  ab0080ff  lui r1, 1046528
001ee4  ab0480ff  lui r9, 1046528
001ee8  2b0480ff  lui r8, 1046528
001eec  2b0280ff  lui r4, 1046528
001ef0  ab0380ff  lui r7, 1046528
001ef4  ab0780ff  lui r15, 1046528
001ef8  ab0c80ff  lui r25, 1046528
001efc  2b0c80ff  lui r24, 1046528
001f00  ab0b80ff  lui r23, 1046528
001f04  2b0a80ff  lui r20, 1046528
001f08  2b0880ff  lui r16, 1046528
001f0c  2b0380ff  lui r6, 1046528
001f10  ab0280ff  lui r5, 1046528
001f14  e70e1fec  storeli.w r1, -2328(r30)
001f18  e74e1fec  storeli.w r1, -2324(r30)
001f1c  670f1fec  storeli.w r1, -2320(r30)
001f20  e70f1fec  storeli.w r1, -2312(r30)
001f24  9f808a00  addli r1, r21, 64
001f28  670e0fed  storeli.w r16, -2336(r30)
001f2c  674e6fec  storeli.w r6, -2332(r30)
001f30  e7491fec  storeli.w r1, -2404(r30)
001f34  9f800a01  addli r1, r21, 128
001f38  670a1fec  storeli.w r1, -2400(r30)
001f3c  9f808a01  addli r1, r21, 192
001f40  674a1fec  storeli.w r1, -2396(r30)
001f44  00a00000  mfence { lm }
001f48  db0b0000  j 92
001f4c  e348bfed  loadli.w r17,  -2340(r30)
001f50  9f030400  addli r7, r8, 0
001f54  1f040900  addli r8, r18, 0
001f58  1f060900  addli r12, r18, 0
001f5c  63090fef  loadli.w r18,  -2176(r30)
001f60  9f820a00  addli r5, r21, 0
001f64  1f8a0d00  addli r20, r27, 0
001f68  9f0b0700  addli r23, r14, 0
001f6c  1f8c0000  addli r24, r1, 0
001f70  9f0c0e00  addli r25, r28, 0
001f74  9f070d00  addli r15, r26, 0
001f78  1f020100  addli r4, r2, 0
001f7c  9f010004  addli r3, zero, 512
001f80  e70f6fec  storeli.w r6, -2312(r30)
001f84  670fbfec  storeli.w r11, -2320(r30)
001f88  e74e0fed  storeli.w r16, -2324(r30)
001f8c  e70eafec  storeli.w r10, -2328(r30)
001f90  674e6fed  storeli.w r22, -2332(r30)
001f94  670edfec  storeli.w r13, -2336(r30)
001f98  9f888800  addli r17, r17, 64
001f9c  9f040900  addli r9, r18, 0
001fa0  b7e93806  beq r17, r3, 3704
001fa4  9f000ff8  addli r1, r30, -1024
001fa8  e70d5fec  storeli.w r5, -2344(r30)
001fac  92309002  vadd.s.mz vr1{mr1}, zero, vr9
001fb0  1f190000  addli r18, zero, 1
001fb4  12319002  vadd.s.mz vr2{mr1}, zero, vr9
001fb8  8b911011  add.s r3, r1, r17
001fbc  7e0109e0  vmmov mr2, r18
001fc0  ebb20100  load.hu r5, 0(r3)
001fc4  6bb32100  load.hu r6, 2(r3)
001fc8  6bb1a101  load.hu r2, 26(r3)
001fcc  ebb0c101  load.hu r1, 28(r3)
001fd0  6bb54100  load.hu r10, 4(r3)
001fd4  ebb56100  load.hu r11, 6(r3)
001fd8  6bb68100  load.hu r12, 8(r3)
001fdc  ebb6a100  load.hu r13, 10(r3)
001fe0  6bb7c100  load.hu r14, 12(r3)
001fe4  6bb8e100  load.hu r16, 14(r3)
001fe8  ebba0101  load.hu r21, 16(r3)
001fec  6bbb2101  load.hu r22, 18(r3)
001ff0  6bbd4101  load.hu r26, 20(r3)
001ff4  ebbd6101  load.hu r27, 22(r3)
001ff8  6bbe8101  load.hu r28, 24(r3)
001ffc  ebb1e101  load.hu r3, 30(r3)
002000  b3920218  bfloat2float.rn r5, r5
002004  33110118  bfloat2float.rn r2, r2
002008  b3900018  bfloat2float.rn r1, r1
00200c  eaa01234  vor.u.mh vr1{mr2}, r5, vr1
002010  b3120318  bfloat2float.rn r5, r6
002014  1f230000  addli r6, zero, 2
002018  fe0103e0  vmmov mr3, r6
00201c  1f430000  addli r6, zero, 4
002020  eaa01236  vor.u.mh vr1{mr3}, r5, vr1
002024  b3120518  bfloat2float.rn r5, r10
002028  7e0003e0  vmmov mr0, r6
00202c  1f031000  addli r6, zero, 8
002030  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002034  b3920518  bfloat2float.rn r5, r11
002038  7e0003e0  vmmov mr0, r6
00203c  1f032000  addli r6, zero, 16
002040  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002044  b3120618  bfloat2float.rn r5, r12
002048  7e0003e0  vmmov mr0, r6
00204c  1f034000  addli r6, zero, 32
002050  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002054  b3920618  bfloat2float.rn r5, r13
002058  7e0003e0  vmmov mr0, r6
00205c  1f038000  addli r6, zero, 64
002060  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002064  b3120718  bfloat2float.rn r5, r14
002068  7e0003e0  vmmov mr0, r6
00206c  1f030001  addli r6, zero, 128
002070  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002074  b3120818  bfloat2float.rn r5, r16
002078  7e0003e0  vmmov mr0, r6
00207c  1f030002  addli r6, zero, 256
002080  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002084  b3920a18  bfloat2float.rn r5, r21
002088  7e0003e0  vmmov mr0, r6
00208c  1f030004  addli r6, zero, 512
002090  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002094  b3120b18  bfloat2float.rn r5, r22
002098  7e0003e0  vmmov mr0, r6
00209c  1f030008  addli r6, zero, 1024
0020a0  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0020a4  b3120d18  bfloat2float.rn r5, r26
0020a8  7e0003e0  vmmov mr0, r6
0020ac  1f030010  addli r6, zero, 2048
0020b0  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0020b4  b3920d18  bfloat2float.rn r5, r27
0020b8  7e0003e0  vmmov mr0, r6
0020bc  1f030020  addli r6, zero, 4096
0020c0  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0020c4  b3120e18  bfloat2float.rn r5, r28
0020c8  7e0003e0  vmmov mr0, r6
0020cc  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0020d0  9f020040  addli r5, zero, 8192
0020d4  7e8002e0  vmmov mr0, r5
0020d8  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0020dc  2b410000  lui r2, 4
0020e0  7e0001e0  vmmov mr0, r2
0020e4  1f010ffa  addli r2, r30, -768
0020e8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0020ec  b3900118  bfloat2float.rn r1, r3
0020f0  ab810000  lui r3, 8
0020f4  0b111111  add.s r2, r2, r17
0020f8  7e8001e0  vmmov mr0, r3
0020fc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002100  eb300100  load.hu r1, 0(r2)
002104  eb312100  load.hu r3, 2(r2)
002108  eb324100  load.hu r5, 4(r2)
00210c  6b336100  load.hu r6, 6(r2)
002110  6b358100  load.hu r10, 8(r2)
002114  eb35a100  load.hu r11, 10(r2)
002118  6b36c100  load.hu r12, 12(r2)
00211c  eb36e100  load.hu r13, 14(r2)
002120  6b370101  load.hu r14, 16(r2)
002124  6b382101  load.hu r16, 18(r2)
002128  eb3a4101  load.hu r21, 20(r2)
00212c  6b3b6101  load.hu r22, 22(r2)
002130  6b3d8101  load.hu r26, 24(r2)
002134  eb3da101  load.hu r27, 26(r2)
002138  6b3ec101  load.hu r28, 28(r2)
00213c  6b31e101  load.hu r2, 30(r2)
002140  b3900018  bfloat2float.rn r1, r1
002144  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002148  b3900118  bfloat2float.rn r1, r3
00214c  9f410000  addli r3, zero, 4
002150  7e8101e0  vmmov mr2, r3
002154  9f011000  addli r3, zero, 8
002158  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
00215c  b3900218  bfloat2float.rn r1, r5
002160  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002164  b3100318  bfloat2float.rn r1, r6
002168  7e8101e0  vmmov mr2, r3
00216c  9f012000  addli r3, zero, 16
002170  2b03807f  lui r6, 522240
002174  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002178  b3100518  bfloat2float.rn r1, r10
00217c  7e8101e0  vmmov mr2, r3
002180  9f014000  addli r3, zero, 32
002184  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002188  b3900518  bfloat2float.rn r1, r11
00218c  7e8101e0  vmmov mr2, r3
002190  9f018000  addli r3, zero, 64
002194  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002198  b3100618  bfloat2float.rn r1, r12
00219c  7e8101e0  vmmov mr2, r3
0021a0  9f010001  addli r3, zero, 128
0021a4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0021a8  b3900618  bfloat2float.rn r1, r13
0021ac  7e8101e0  vmmov mr2, r3
0021b0  9f010002  addli r3, zero, 256
0021b4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0021b8  b3100718  bfloat2float.rn r1, r14
0021bc  7e8101e0  vmmov mr2, r3
0021c0  9f010004  addli r3, zero, 512
0021c4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0021c8  b3100818  bfloat2float.rn r1, r16
0021cc  7e8101e0  vmmov mr2, r3
0021d0  9f010008  addli r3, zero, 1024
0021d4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0021d8  b3900a18  bfloat2float.rn r1, r21
0021dc  7e8101e0  vmmov mr2, r3
0021e0  9f010010  addli r3, zero, 2048
0021e4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0021e8  b3100b18  bfloat2float.rn r1, r22
0021ec  7e8101e0  vmmov mr2, r3
0021f0  9f010020  addli r3, zero, 4096
0021f4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0021f8  b3100d18  bfloat2float.rn r1, r26
0021fc  7e8101e0  vmmov mr2, r3
002200  9f010040  addli r3, zero, 8192
002204  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002208  b3900d18  bfloat2float.rn r1, r27
00220c  7e8101e0  vmmov mr2, r3
002210  ab410000  lui r3, 4
002214  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002218  b3100e18  bfloat2float.rn r1, r28
00221c  7e8101e0  vmmov mr2, r3
002220  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002224  b3100118  bfloat2float.rn r1, r2
002228  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
00222c  9f000ff4  addli r1, r30, -1536
002230  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
002234  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002238  00a00000  mfence { lm }
00223c  630e0ff4  loadli.w r28,  -1536(r30)
002240  63410ff4  loadli.w r2,  -1532(r30)
002244  e3061ff4  loadli.w r13,  -1528(r30)
002248  e3411ff4  loadli.w r3,  -1524(r30)
00224c  630d2ff4  loadli.w r26,  -1520(r30)
002250  63462ff4  loadli.w r12,  -1516(r30)
002254  e30d3ff4  loadli.w r27,  -1512(r30)
002258  e3403ff4  loadli.w r1,  -1508(r30)
00225c  63074ff4  loadli.w r14,  -1504(r30)
002260  634b4ff4  loadli.w r22,  -1500(r30)
002264  e342ffef  loadli.w r5,  -2052(r30)
002268  e30a5ff4  loadli.w r21,  -1496(r30)
00226c  63455ff4  loadli.w r10,  -1492(r30)
002270  63086ff4  loadli.w r16,  -1488(r30)
002274  e3456ff4  loadli.w r11,  -1484(r30)
002278  97025e00  and r5, r28, r5
00227c  93095304  setlt.u r19, r6, r5
002280  63037ff4  loadli.w r6,  -1480(r30)
002284  e3427ff4  loadli.w r5,  -1476(r30)
002288  e74d1fed  storeli.w r17, -2340(r30)
00228c  3bf00900  bneq r19, zero, 28
002290  9b490e01  srli r19, r28, 16
002294  9b891900  andi r19, r19, 1
002298  8b193e11  add.s r19, r28, r19
00229c  630effef  loadli.w r28,  -2056(r30)
0022a0  0b9ec911  add.s r28, r19, r28
0022a4  db010000  j 12
0022a8  ab084000  lui r17, 1024
0022ac  171e1e01  or r28, r28, r17
0022b0  e349ffef  loadli.w r19,  -2052(r30)
0022b4  ab08807f  lui r17, 522240
0022b8  97093101  and r19, r2, r19
0022bc  93893805  setlt.u r19, r17, r19
0022c0  3bf00900  bneq r19, zero, 28
0022c4  9b490101  srli r19, r2, 16
0022c8  9b891900  andi r19, r19, 1
0022cc  0b113111  add.s r2, r2, r19
0022d0  e309ffef  loadli.w r19,  -2056(r30)
0022d4  0b113111  add.s r2, r2, r19
0022d8  db010000  j 12
0022dc  ab084000  lui r17, 1024
0022e0  17111101  or r2, r2, r17
0022e4  e349ffef  loadli.w r19,  -2052(r30)
0022e8  ab08807f  lui r17, 522240
0022ec  97893601  and r19, r13, r19
0022f0  93893805  setlt.u r19, r17, r19
0022f4  3bf00900  bneq r19, zero, 28
0022f8  9bc90601  srli r19, r13, 16
0022fc  9b891900  andi r19, r19, 1
002300  8b963611  add.s r13, r13, r19
002304  e309ffef  loadli.w r19,  -2056(r30)
002308  8b963611  add.s r13, r13, r19
00230c  db010000  j 12
002310  ab084000  lui r17, 1024
002314  97961601  or r13, r13, r17
002318  e349ffef  loadli.w r19,  -2052(r30)
00231c  ab08807f  lui r17, 522240
002320  97893101  and r19, r3, r19
002324  93893805  setlt.u r19, r17, r19
002328  3bf00900  bneq r19, zero, 28
00232c  9bc90101  srli r19, r3, 16
002330  9b891900  andi r19, r19, 1
002334  8b913111  add.s r3, r3, r19
002338  e309ffef  loadli.w r19,  -2056(r30)
00233c  8b913111  add.s r3, r3, r19
002340  db010000  j 12
002344  ab084000  lui r17, 1024
002348  97911101  or r3, r3, r17
00234c  67003fee  storeli.w r3, -2304(r30)
002350  e341ffef  loadli.w r3,  -2052(r30)
002354  ab08807f  lui r17, 522240
002358  97013d00  and r3, r26, r3
00235c  93813804  setlt.u r3, r17, r3
002360  3bf00100  bneq r3, zero, 28
002364  9b410d01  srli r3, r26, 16
002368  e309ffef  loadli.w r19,  -2056(r30)
00236c  9b811100  andi r3, r3, 1
002370  8b113d10  add.s r3, r26, r3
002374  0b9d3111  add.s r26, r3, r19
002378  5b020000  j 16
00237c  ab014000  lui r3, 1024
002380  e309ffef  loadli.w r19,  -2056(r30)
002384  171d3d00  or r26, r26, r3
002388  e341ffef  loadli.w r3,  -2052(r30)
00238c  97013600  and r3, r12, r3
002390  93813804  setlt.u r3, r17, r3
002394  3be00100  bneq r3, zero, 24
002398  9b410601  srli r3, r12, 16
00239c  9b811100  andi r3, r3, 1
0023a0  8b113610  add.s r3, r12, r3
0023a4  8b913111  add.s r3, r3, r19
0023a8  db010000  j 12
0023ac  ab014000  lui r3, 1024
0023b0  97113600  or r3, r12, r3
0023b4  67083fee  storeli.w r3, -2176(r30)
0023b8  e341ffef  loadli.w r3,  -2052(r30)
0023bc  2b06807f  lui r12, 522240
0023c0  97813d00  and r3, r27, r3
0023c4  93013604  setlt.u r3, r12, r3
0023c8  3be00100  bneq r3, zero, 24
0023cc  9bc10d01  srli r3, r27, 16
0023d0  9b811100  andi r3, r3, 1
0023d4  8b913d10  add.s r3, r27, r3
0023d8  8b9d3111  add.s r27, r3, r19
0023dc  db010000  j 12
0023e0  ab014000  lui r3, 1024
0023e4  979d3d00  or r27, r27, r3
0023e8  6346ffef  loadli.w r12,  -2052(r30)
0023ec  9781c000  and r3, r1, r12
0023f0  93813804  setlt.u r3, r17, r3
0023f4  3be00100  bneq r3, zero, 24
0023f8  9bc10001  srli r3, r1, 16
0023fc  9b811100  andi r3, r3, 1
002400  8b903010  add.s r1, r1, r3
002404  8b903011  add.s r1, r1, r19
002408  db010000  j 12
00240c  ab014000  lui r3, 1024
002410  97903000  or r1, r1, r3
002414  e74b1fec  storeli.w r1, -2372(r30)
002418  9700c700  and r1, r14, r12
00241c  ab01807f  lui r3, 522240
002420  9f088000  addli r17, zero, 64
002424  93801104  setlt.u r1, r3, r1
002428  3be00000  bneq r1, zero, 24
00242c  9b400701  srli r1, r14, 16
002430  9b801000  andi r1, r1, 1
002434  8b101710  add.s r1, r14, r1
002438  8b903011  add.s r1, r1, r19
00243c  db010000  j 12
002440  ab004000  lui r1, 1024
002444  97101700  or r1, r14, r1
002448  670c1fec  storeli.w r1, -2368(r30)
00244c  9700cb00  and r1, r22, r12
002450  93801104  setlt.u r1, r3, r1
002454  3be00000  bneq r1, zero, 24
002458  9b400b01  srli r1, r22, 16
00245c  9b801000  andi r1, r1, 1
002460  8b101b10  add.s r1, r22, r1
002464  0b9b3011  add.s r22, r1, r19
002468  db010000  j 12
00246c  ab004000  lui r1, 1024
002470  171b1b00  or r22, r22, r1
002474  9780ca00  and r1, r21, r12
002478  93801104  setlt.u r1, r3, r1
00247c  3be00000  bneq r1, zero, 24
002480  9bc00a01  srli r1, r21, 16
002484  9b801000  andi r1, r1, 1
002488  8b901a10  add.s r1, r21, r1
00248c  8b903011  add.s r1, r1, r19
002490  db010000  j 12
002494  ab004000  lui r1, 1024
002498  97901a00  or r1, r21, r1
00249c  674c1fec  storeli.w r1, -2364(r30)
0024a0  9700c500  and r1, r10, r12
0024a4  93801104  setlt.u r1, r3, r1
0024a8  3be00000  bneq r1, zero, 24
0024ac  9b400501  srli r1, r10, 16
0024b0  9b801000  andi r1, r1, 1
0024b4  8b101510  add.s r1, r10, r1
0024b8  8b903011  add.s r1, r1, r19
0024bc  db010000  j 12
0024c0  ab004000  lui r1, 1024
0024c4  97101500  or r1, r10, r1
0024c8  e70c1fec  storeli.w r1, -2360(r30)
0024cc  9700c800  and r1, r16, r12
0024d0  93801104  setlt.u r1, r3, r1
0024d4  3be00000  bneq r1, zero, 24
0024d8  9b400801  srli r1, r16, 16
0024dc  9b801000  andi r1, r1, 1
0024e0  8b101810  add.s r1, r16, r1
0024e4  8b903011  add.s r1, r1, r19
0024e8  db010000  j 12
0024ec  ab004000  lui r1, 1024
0024f0  97101800  or r1, r16, r1
0024f4  e74c1fec  storeli.w r1, -2356(r30)
0024f8  9780c500  and r1, r11, r12
0024fc  6348cfed  loadli.w r16,  -2332(r30)
002500  93801104  setlt.u r1, r3, r1
002504  3be00000  bneq r1, zero, 24
002508  9bc00501  srli r1, r11, 16
00250c  9b801000  andi r1, r1, 1
002510  8b901510  add.s r1, r11, r1
002514  8b903011  add.s r1, r1, r19
002518  db010000  j 12
00251c  ab004000  lui r1, 1024
002520  97901500  or r1, r11, r1
002524  670d1fec  storeli.w r1, -2352(r30)
002528  9700c300  and r1, r6, r12
00252c  e305dfed  loadli.w r11,  -2328(r30)
002530  93801104  setlt.u r1, r3, r1
002534  3be00000  bneq r1, zero, 24
002538  9b400301  srli r1, r6, 16
00253c  9b801000  andi r1, r1, 1
002540  8b101310  add.s r1, r6, r1
002544  8b903011  add.s r1, r1, r19
002548  db010000  j 12
00254c  ab004000  lui r1, 1024
002550  97101300  or r1, r6, r1
002554  674d1fec  storeli.w r1, -2348(r30)
002558  9780c200  and r1, r5, r12
00255c  93801104  setlt.u r1, r3, r1
002560  3be00000  bneq r1, zero, 24
002564  9bc00201  srli r1, r5, 16
002568  9b801000  andi r1, r1, 1
00256c  8b901210  add.s r1, r5, r1
002570  8b9a3011  add.s r21, r1, r19
002574  db010000  j 12
002578  ab004000  lui r1, 1024
00257c  979a1200  or r21, r5, r1
002580  2b06ffff  lui r12, 1048560
002584  e309ffee  loadli.w r19,  -2184(r30)
002588  9f800400  addli r1, r9, 0
00258c  1707ce00  and r14, r28, r12
002590  93619704  setlt.f r3, r14, r9
002594  3ba00100  bneq r3, zero, 8
002598  9f000700  addli r1, r14, 0
00259c  9b319700  slli r3, r14, 9
0025a0  9bb29400  slli r5, r9, 9
0025a4  1b437e01  srli r6, r28, 23
0025a8  1bc57401  srli r10, r9, 23
0025ac  93810100  seteq r3, r3, zero
0025b0  93820200  seteq r5, r5, zero
0025b4  1b03f30f  andi r6, r6, 255
0025b8  1b05f50f  andi r10, r10, 255
0025bc  1b73f30f  setlti r6, r6, 255
0025c0  1b75f50f  setlti r10, r10, 255
0025c4  97113300  or r3, r6, r3
0025c8  97125500  or r5, r10, r5
0025cc  97813200  and r3, r5, r3
0025d0  3ba00100  bneq r3, zero, 8
0025d4  ab00c07f  lui r1, 523264
0025d8  6305cfed  loadli.w r10,  -2336(r30)
0025dc  9f810400  addli r3, r9, 0
0025e0  37a00400  beq r9, zero, 8
0025e4  9f810000  addli r3, r1, 0
0025e8  37200700  beq r14, zero, 8
0025ec  1f870100  addli r14, r3, 0
0025f0  93611006  setle.f r3, zero, r1
0025f4  93e20006  setle.f r5, r1, zero
0025f8  97813200  and r3, r5, r3
0025fc  3ba00100  bneq r3, zero, 8
002600  1f870000  addli r14, r1, 0
002604  3fa01901  blt.s r19, r17, 8
002608  1f870400  addli r14, r9, 0
00260c  1709c100  and r18, r2, r12
002610  9f000400  addli r1, r8, 0
002614  93618904  setlt.f r3, r18, r8
002618  3ba00100  bneq r3, zero, 8
00261c  9f000900  addli r1, r18, 0
002620  9b319900  slli r3, r18, 9
002624  9b329400  slli r5, r8, 9
002628  1b417101  srli r2, r2, 23
00262c  1b437401  srli r6, r8, 23
002630  93810100  seteq r3, r3, zero
002634  93820200  seteq r5, r5, zero
002638  1b01f10f  andi r2, r2, 255
00263c  1b03f30f  andi r6, r6, 255
002640  1b71f10f  setlti r2, r2, 255
002644  1b73f30f  setlti r6, r6, 255
002648  17113100  or r2, r2, r3
00264c  97115300  or r3, r6, r5
002650  17812100  and r2, r3, r2
002654  b71d0102  beq r2, zero, 1892
002658  1f010400  addli r2, r8, 0
00265c  bb2d0402  bneq r8, zero, 1896
002660  37200900  beq r18, zero, 8
002664  1f090100  addli r18, r2, 0
002668  13611006  setle.f r2, zero, r1
00266c  93e10006  setle.f r3, r1, zero
002670  17812100  and r2, r3, r2
002674  3b200100  bneq r2, zero, 8
002678  1f890000  addli r18, r1, 0
00267c  3fa01901  blt.s r19, r17, 8
002680  1f090400  addli r18, r8, 0
002684  1781c600  and r2, r13, r12
002688  9f000200  addli r1, r4, 0
00268c  93614104  setlt.f r3, r2, r4
002690  3ba00100  bneq r3, zero, 8
002694  9f000100  addli r1, r2, 0
002698  9b319100  slli r3, r2, 9
00269c  9b329200  slli r5, r4, 9
0026a0  1bc37601  srli r6, r13, 23
0026a4  1b447201  srli r8, r4, 23
0026a8  93810100  seteq r3, r3, zero
0026ac  93820200  seteq r5, r5, zero
0026b0  1b03f30f  andi r6, r6, 255
0026b4  1b04f40f  andi r8, r8, 255
0026b8  1b73f30f  setlti r6, r6, 255
0026bc  1b74f40f  setlti r8, r8, 255
0026c0  97113300  or r3, r6, r3
0026c4  97125400  or r5, r8, r5
0026c8  97813200  and r3, r5, r3
0026cc  3ba00100  bneq r3, zero, 8
0026d0  ab00c07f  lui r1, 523264
0026d4  6344dfed  loadli.w r8,  -2324(r30)
0026d8  9f010200  addli r3, r4, 0
0026dc  37200200  beq r4, zero, 8
0026e0  9f810000  addli r3, r1, 0
0026e4  37200100  beq r2, zero, 8
0026e8  1f810100  addli r2, r3, 0
0026ec  93611006  setle.f r3, zero, r1
0026f0  93e20006  setle.f r5, r1, zero
0026f4  97813200  and r3, r5, r3
0026f8  3ba00100  bneq r3, zero, 8
0026fc  1f810000  addli r2, r1, 0
002700  e3020fee  loadli.w r5,  -2304(r30)
002704  3fa01901  blt.s r19, r17, 8
002708  1f010200  addli r2, r4, 0
00270c  9784c200  and r9, r5, r12
002710  9f800300  addli r1, r7, 0
002714  93e17404  setlt.f r3, r9, r7
002718  3ba00100  bneq r3, zero, 8
00271c  9f800400  addli r1, r9, 0
002720  9bb19400  slli r3, r9, 9
002724  1bb29300  slli r4, r7, 9
002728  9bc27201  srli r5, r5, 23
00272c  1bc37301  srli r6, r7, 23
002730  93810100  seteq r3, r3, zero
002734  13020200  seteq r4, r4, zero
002738  9b82f20f  andi r5, r5, 255
00273c  1b03f30f  andi r6, r6, 255
002740  9bf2f20f  setlti r5, r5, 255
002744  1b73f30f  setlti r6, r6, 255
002748  97913200  or r3, r5, r3
00274c  17124300  or r4, r6, r4
002750  97013200  and r3, r4, r3
002754  3ba00100  bneq r3, zero, 8
002758  ab00c07f  lui r1, 523264
00275c  9f810300  addli r3, r7, 0
002760  9f020d00  addli r5, r26, 0
002764  37a00300  beq r7, zero, 8
002768  9f810000  addli r3, r1, 0
00276c  37a00400  beq r9, zero, 8
002770  9f840100  addli r9, r3, 0
002774  93611006  setle.f r3, zero, r1
002778  13e20006  setle.f r4, r1, zero
00277c  97013200  and r3, r4, r3
002780  3ba00100  bneq r3, zero, 8
002784  9f840000  addli r9, r1, 0
002788  3fa01901  blt.s r19, r17, 8
00278c  9f840300  addli r9, r7, 0
002790  178dc200  and r26, r5, r12
002794  9f800700  addli r1, r15, 0
002798  9361fd04  setlt.f r3, r26, r15
00279c  3ba00100  bneq r3, zero, 8
0027a0  9f000d00  addli r1, r26, 0
0027a4  9b319d00  slli r3, r26, 9
0027a8  1bb29700  slli r4, r15, 9
0027ac  9bc27201  srli r5, r5, 23
0027b0  1bc37701  srli r6, r15, 23
0027b4  93810100  seteq r3, r3, zero
0027b8  13020200  seteq r4, r4, zero
0027bc  9b82f20f  andi r5, r5, 255
0027c0  1b03f30f  andi r6, r6, 255
0027c4  9bf2f20f  setlti r5, r5, 255
0027c8  1b73f30f  setlti r6, r6, 255
0027cc  97913200  or r3, r5, r3
0027d0  17124300  or r4, r6, r4
0027d4  97013200  and r3, r4, r3
0027d8  3ba00100  bneq r3, zero, 8
0027dc  ab00c07f  lui r1, 523264
0027e0  e3020fef  loadli.w r5,  -2176(r30)
0027e4  9f810700  addli r3, r15, 0
0027e8  37a00700  beq r15, zero, 8
0027ec  9f810000  addli r3, r1, 0
0027f0  37200d00  beq r26, zero, 8
0027f4  1f8d0100  addli r26, r3, 0
0027f8  93611006  setle.f r3, zero, r1
0027fc  13e20006  setle.f r4, r1, zero
002800  97013200  and r3, r4, r3
002804  3ba00100  bneq r3, zero, 8
002808  1f8d0000  addli r26, r1, 0
00280c  3fa01901  blt.s r19, r17, 8
002810  1f8d0700  addli r26, r15, 0
002814  178ec200  and r28, r5, r12
002818  9f800c00  addli r1, r25, 0
00281c  93619e05  setlt.f r3, r28, r25
002820  3ba00100  bneq r3, zero, 8
002824  9f000e00  addli r1, r28, 0
002828  9b319e00  slli r3, r28, 9
00282c  1bb29c00  slli r4, r25, 9
002830  9bc27201  srli r5, r5, 23
002834  1bc37c01  srli r6, r25, 23
002838  e307efed  loadli.w r15,  -2320(r30)
00283c  93810100  seteq r3, r3, zero
002840  13020200  seteq r4, r4, zero
002844  9b82f20f  andi r5, r5, 255
002848  1b03f30f  andi r6, r6, 255
00284c  9bf2f20f  setlti r5, r5, 255
002850  1b73f30f  setlti r6, r6, 255
002854  97913200  or r3, r5, r3
002858  17124300  or r4, r6, r4
00285c  97013200  and r3, r4, r3
002860  b7c50102  beq r3, zero, 1392
002864  9f810c00  addli r3, r25, 0
002868  bbd50c02  bneq r25, zero, 1396
00286c  37200e00  beq r28, zero, 8
002870  1f8e0100  addli r28, r3, 0
002874  93611006  setle.f r3, zero, r1
002878  13e20006  setle.f r4, r1, zero
00287c  97013200  and r3, r4, r3
002880  3ba00100  bneq r3, zero, 8
002884  1f8e0000  addli r28, r1, 0
002888  3fa01901  blt.s r19, r17, 8
00288c  1f8e0c00  addli r28, r25, 0
002890  9780cd00  and r1, r27, r12
002894  9f010c00  addli r3, r24, 0
002898  67009fee  storeli.w r9, -2304(r30)
00289c  13e28005  setlt.f r4, r1, r24
0028a0  3b200200  bneq r4, zero, 8
0028a4  9f810000  addli r3, r1, 0
0028a8  1bb29000  slli r4, r1, 9
0028ac  9b329c00  slli r5, r24, 9
0028b0  1bc37d01  srli r6, r27, 23
0028b4  9b437c01  srli r7, r24, 23
0028b8  e304ffed  loadli.w r9,  -2312(r30)
0028bc  13020200  seteq r4, r4, zero
0028c0  93820200  seteq r5, r5, zero
0028c4  1b03f30f  andi r6, r6, 255
0028c8  9b83f30f  andi r7, r7, 255
0028cc  1b73f30f  setlti r6, r6, 255
0028d0  9bf3f30f  setlti r7, r7, 255
0028d4  17124300  or r4, r6, r4
0028d8  97925300  or r5, r7, r5
0028dc  17824200  and r4, r5, r4
0028e0  3b200200  bneq r4, zero, 8
0028e4  ab01c07f  lui r3, 523264
0028e8  e34d7fed  loadli.w r27,  -2372(r30)
0028ec  1f020c00  addli r4, r24, 0
0028f0  37200c00  beq r24, zero, 8
0028f4  1f820100  addli r4, r3, 0
0028f8  37a00000  beq r1, zero, 8
0028fc  9f000200  addli r1, r4, 0
002900  13623006  setle.f r4, zero, r3
002904  93e20106  setle.f r5, r3, zero
002908  17824200  and r4, r5, r4
00290c  3b200200  bneq r4, zero, 8
002910  9f800100  addli r1, r3, 0
002914  6708efee  storeli.w r14, -2176(r30)
002918  3fa01901  blt.s r19, r17, 8
00291c  9f000c00  addli r1, r24, 0
002920  1787cd00  and r14, r27, r12
002924  9f810b00  addli r3, r23, 0
002928  13627705  setlt.f r4, r14, r23
00292c  3b200200  bneq r4, zero, 8
002930  9f010700  addli r3, r14, 0
002934  1b329700  slli r4, r14, 9
002938  9bb29b00  slli r5, r23, 9
00293c  1bc37d01  srli r6, r27, 23
002940  9bc37b01  srli r7, r23, 23
002944  13020200  seteq r4, r4, zero
002948  93820200  seteq r5, r5, zero
00294c  1b03f30f  andi r6, r6, 255
002950  9b83f30f  andi r7, r7, 255
002954  1b73f30f  setlti r6, r6, 255
002958  9bf3f30f  setlti r7, r7, 255
00295c  17124300  or r4, r6, r4
002960  97925300  or r5, r7, r5
002964  17824200  and r4, r5, r4
002968  3b200200  bneq r4, zero, 8
00296c  ab01c07f  lui r3, 523264
002970  63038fed  loadli.w r6,  -2368(r30)
002974  1f820b00  addli r4, r23, 0
002978  37a00b00  beq r23, zero, 8
00297c  1f820100  addli r4, r3, 0
002980  37200700  beq r14, zero, 8
002984  1f070200  addli r14, r4, 0
002988  13623006  setle.f r4, zero, r3
00298c  93e20106  setle.f r5, r3, zero
002990  17824200  and r4, r5, r4
002994  3b200200  bneq r4, zero, 8
002998  1f870100  addli r14, r3, 0
00299c  3fa01901  blt.s r19, r17, 8
0029a0  1f870b00  addli r14, r23, 0
0029a4  970dc300  and r27, r6, r12
0029a8  9f010a00  addli r3, r20, 0
0029ac  13e24d05  setlt.f r4, r27, r20
0029b0  3b200200  bneq r4, zero, 8
0029b4  9f810d00  addli r3, r27, 0
0029b8  1bb29d00  slli r4, r27, 9
0029bc  9b329a00  slli r5, r20, 9
0029c0  1b437301  srli r6, r6, 23
0029c4  9b437a01  srli r7, r20, 23
0029c8  13020200  seteq r4, r4, zero
0029cc  93820200  seteq r5, r5, zero
0029d0  1b03f30f  andi r6, r6, 255
0029d4  9b83f30f  andi r7, r7, 255
0029d8  1b73f30f  setlti r6, r6, 255
0029dc  9bf3f30f  setlti r7, r7, 255
0029e0  17124300  or r4, r6, r4
0029e4  97925300  or r5, r7, r5
0029e8  17824200  and r4, r5, r4
0029ec  b77f0200  beq r4, zero, 1020
0029f0  1f020a00  addli r4, r20, 0
0029f4  3b000a02  bneq r20, zero, 1024
0029f8  37a00d00  beq r27, zero, 8
0029fc  9f0d0200  addli r27, r4, 0
002a00  13623006  setle.f r4, zero, r3
002a04  93e20106  setle.f r5, r3, zero
002a08  17824200  and r4, r5, r4
002a0c  3b200200  bneq r4, zero, 8
002a10  9f8d0100  addli r27, r3, 0
002a14  3fa01901  blt.s r19, r17, 8
002a18  9f0d0a00  addli r27, r20, 0
002a1c  9706cb00  and r13, r22, r12
002a20  9f010500  addli r3, r10, 0
002a24  13e2a604  setlt.f r4, r13, r10
002a28  3b200200  bneq r4, zero, 8
002a2c  9f810600  addli r3, r13, 0
002a30  1bb29600  slli r4, r13, 9
002a34  9b329500  slli r5, r10, 9
002a38  1b437b01  srli r6, r22, 23
002a3c  9b437501  srli r7, r10, 23
002a40  13020200  seteq r4, r4, zero
002a44  93820200  seteq r5, r5, zero
002a48  1b03f30f  andi r6, r6, 255
002a4c  9b83f30f  andi r7, r7, 255
002a50  1b73f30f  setlti r6, r6, 255
002a54  9bf3f30f  setlti r7, r7, 255
002a58  17124300  or r4, r6, r4
002a5c  97925300  or r5, r7, r5
002a60  17824200  and r4, r5, r4
002a64  3b200200  bneq r4, zero, 8
002a68  ab01c07f  lui r3, 523264
002a6c  63438fed  loadli.w r6,  -2364(r30)
002a70  1f020500  addli r4, r10, 0
002a74  37200500  beq r10, zero, 8
002a78  1f820100  addli r4, r3, 0
002a7c  37a00600  beq r13, zero, 8
002a80  9f060200  addli r13, r4, 0
002a84  13623006  setle.f r4, zero, r3
002a88  93e20106  setle.f r5, r3, zero
002a8c  17824200  and r4, r5, r4
002a90  3b200200  bneq r4, zero, 8
002a94  9f860100  addli r13, r3, 0
002a98  3fa01901  blt.s r19, r17, 8
002a9c  9f060500  addli r13, r10, 0
002aa0  170bc300  and r22, r6, r12
002aa4  9f010800  addli r3, r16, 0
002aa8  13620b05  setlt.f r4, r22, r16
002aac  3b200200  bneq r4, zero, 8
002ab0  9f010b00  addli r3, r22, 0
002ab4  1b329b00  slli r4, r22, 9
002ab8  9b329800  slli r5, r16, 9
002abc  1b437301  srli r6, r6, 23
002ac0  9b437801  srli r7, r16, 23
002ac4  13020200  seteq r4, r4, zero
002ac8  93820200  seteq r5, r5, zero
002acc  1b03f30f  andi r6, r6, 255
002ad0  9b83f30f  andi r7, r7, 255
002ad4  1b73f30f  setlti r6, r6, 255
002ad8  9bf3f30f  setlti r7, r7, 255
002adc  17124300  or r4, r6, r4
002ae0  97925300  or r5, r7, r5
002ae4  17824200  and r4, r5, r4
002ae8  3b200200  bneq r4, zero, 8
002aec  ab01c07f  lui r3, 523264
002af0  63039fed  loadli.w r6,  -2360(r30)
002af4  1f020800  addli r4, r16, 0
002af8  37200800  beq r16, zero, 8
002afc  1f820100  addli r4, r3, 0
002b00  37200b00  beq r22, zero, 8
002b04  1f0b0200  addli r22, r4, 0
002b08  13623006  setle.f r4, zero, r3
002b0c  93e20106  setle.f r5, r3, zero
002b10  17824200  and r4, r5, r4
002b14  3b200200  bneq r4, zero, 8
002b18  1f8b0100  addli r22, r3, 0
002b1c  3fa01901  blt.s r19, r17, 8
002b20  1f0b0800  addli r22, r16, 0
002b24  1705c300  and r10, r6, r12
002b28  9f810500  addli r3, r11, 0
002b2c  1362b504  setlt.f r4, r10, r11
002b30  3b200200  bneq r4, zero, 8
002b34  9f010500  addli r3, r10, 0
002b38  1b329500  slli r4, r10, 9
002b3c  9bb29500  slli r5, r11, 9
002b40  1b437301  srli r6, r6, 23
002b44  9bc37501  srli r7, r11, 23
002b48  13020200  seteq r4, r4, zero
002b4c  93820200  seteq r5, r5, zero
002b50  1b03f30f  andi r6, r6, 255
002b54  9b83f30f  andi r7, r7, 255
002b58  1b73f30f  setlti r6, r6, 255
002b5c  9bf3f30f  setlti r7, r7, 255
002b60  17124300  or r4, r6, r4
002b64  97925300  or r5, r7, r5
002b68  17824200  and r4, r5, r4
002b6c  3b200200  bneq r4, zero, 8
002b70  ab01c07f  lui r3, 523264
002b74  63439fed  loadli.w r6,  -2356(r30)
002b78  1f820500  addli r4, r11, 0
002b7c  37a00500  beq r11, zero, 8
002b80  1f820100  addli r4, r3, 0
002b84  37200500  beq r10, zero, 8
002b88  1f050200  addli r10, r4, 0
002b8c  13623006  setle.f r4, zero, r3
002b90  93e20106  setle.f r5, r3, zero
002b94  17824200  and r4, r5, r4
002b98  3b200200  bneq r4, zero, 8
002b9c  1f850100  addli r10, r3, 0
002ba0  3fa01901  blt.s r19, r17, 8
002ba4  1f850500  addli r10, r11, 0
002ba8  1708c300  and r16, r6, r12
002bac  9f010400  addli r3, r8, 0
002bb0  13628804  setlt.f r4, r16, r8
002bb4  3b200200  bneq r4, zero, 8
002bb8  9f010800  addli r3, r16, 0
002bbc  1b329800  slli r4, r16, 9
002bc0  9b329400  slli r5, r8, 9
002bc4  1b437301  srli r6, r6, 23
002bc8  9b437401  srli r7, r8, 23
002bcc  13020200  seteq r4, r4, zero
002bd0  93820200  seteq r5, r5, zero
002bd4  1b03f30f  andi r6, r6, 255
002bd8  9b83f30f  andi r7, r7, 255
002bdc  1b73f30f  setlti r6, r6, 255
002be0  9bf3f30f  setlti r7, r7, 255
002be4  17124300  or r4, r6, r4
002be8  97925300  or r5, r7, r5
002bec  17824200  and r4, r5, r4
002bf0  3b200200  bneq r4, zero, 8
002bf4  ab01c07f  lui r3, 523264
002bf8  6303afed  loadli.w r6,  -2352(r30)
002bfc  1f020400  addli r4, r8, 0
002c00  37200400  beq r8, zero, 8
002c04  1f820100  addli r4, r3, 0
002c08  37200800  beq r16, zero, 8
002c0c  1f080200  addli r16, r4, 0
002c10  13623006  setle.f r4, zero, r3
002c14  93e20106  setle.f r5, r3, zero
002c18  17824200  and r4, r5, r4
002c1c  3b200200  bneq r4, zero, 8
002c20  1f880100  addli r16, r3, 0
002c24  3fa01901  blt.s r19, r17, 8
002c28  1f080400  addli r16, r8, 0
002c2c  9705c300  and r11, r6, r12
002c30  9f810700  addli r3, r15, 0
002c34  13e2f504  setlt.f r4, r11, r15
002c38  3b200200  bneq r4, zero, 8
002c3c  9f810500  addli r3, r11, 0
002c40  1bb29500  slli r4, r11, 9
002c44  9bb29700  slli r5, r15, 9
002c48  9b437301  srli r7, r6, 23
002c4c  1bc47701  srli r8, r15, 23
002c50  13020200  seteq r4, r4, zero
002c54  93820200  seteq r5, r5, zero
002c58  9b83f30f  andi r7, r7, 255
002c5c  1b04f40f  andi r8, r8, 255
002c60  9bf3f30f  setlti r7, r7, 255
002c64  1b74f40f  setlti r8, r8, 255
002c68  17924300  or r4, r7, r4
002c6c  97125400  or r5, r8, r5
002c70  17824200  and r4, r5, r4
002c74  3b200200  bneq r4, zero, 8
002c78  ab01c07f  lui r3, 523264
002c7c  e343afed  loadli.w r7,  -2348(r30)
002c80  1f820700  addli r4, r15, 0
002c84  37a00700  beq r15, zero, 8
002c88  1f820100  addli r4, r3, 0
002c8c  37a00500  beq r11, zero, 8
002c90  9f050200  addli r11, r4, 0
002c94  13623006  setle.f r4, zero, r3
002c98  93e20106  setle.f r5, r3, zero
002c9c  17824200  and r4, r5, r4
002ca0  3b200200  bneq r4, zero, 8
002ca4  9f850100  addli r11, r3, 0
002ca8  3fa01901  blt.s r19, r17, 8
002cac  9f850700  addli r11, r15, 0
002cb0  1783c300  and r6, r7, r12
002cb4  9f810400  addli r3, r9, 0
002cb8  13629304  setlt.f r4, r6, r9
002cbc  3b200200  bneq r4, zero, 8
002cc0  9f010300  addli r3, r6, 0
002cc4  1b329300  slli r4, r6, 9
002cc8  9bb29400  slli r5, r9, 9
002ccc  9bc37301  srli r7, r7, 23
002cd0  1bc47401  srli r8, r9, 23
002cd4  13020200  seteq r4, r4, zero
002cd8  93820200  seteq r5, r5, zero
002cdc  9b83f30f  andi r7, r7, 255
002ce0  1b04f40f  andi r8, r8, 255
002ce4  9bf3f30f  setlti r7, r7, 255
002ce8  1b74f40f  setlti r8, r8, 255
002cec  17924300  or r4, r7, r4
002cf0  97125400  or r5, r8, r5
002cf4  17824200  and r4, r5, r4
002cf8  37240200  beq r4, zero, 264
002cfc  1f820400  addli r4, r9, 0
002d00  3bb40400  bneq r9, zero, 268
002d04  37200300  beq r6, zero, 8
002d08  1f030200  addli r6, r4, 0
002d0c  13623006  setle.f r4, zero, r3
002d10  93e20106  setle.f r5, r3, zero
002d14  17824200  and r4, r5, r4
002d18  3b200200  bneq r4, zero, 8
002d1c  1f830100  addli r6, r3, 0
002d20  9f820a00  addli r5, r21, 0
002d24  3fa01901  blt.s r19, r17, 8
002d28  1f830400  addli r6, r9, 0
002d2c  978ac200  and r21, r5, r12
002d30  6306bfed  loadli.w r12,  -2344(r30)
002d34  13e2ca04  setlt.f r4, r21, r12
002d38  9f010600  addli r3, r12, 0
002d3c  3b200200  bneq r4, zero, 8
002d40  9f810a00  addli r3, r21, 0
002d44  1bb29a00  slli r4, r21, 9
002d48  9b339600  slli r7, r12, 9
002d4c  1bc47201  srli r8, r5, 23
002d50  9b447601  srli r9, r12, 23
002d54  13020200  seteq r4, r4, zero
002d58  93830300  seteq r7, r7, zero
002d5c  1b04f40f  andi r8, r8, 255
002d60  9b84f40f  andi r9, r9, 255
002d64  1b74f40f  setlti r8, r8, 255
002d68  9bf4f40f  setlti r9, r9, 255
002d6c  17124400  or r4, r8, r4
002d70  97937400  or r7, r9, r7
002d74  17824300  and r4, r7, r4
002d78  3b200200  bneq r4, zero, 8
002d7c  ab01c07f  lui r3, 523264
002d80  63040fee  loadli.w r8,  -2304(r30)
002d84  1f020600  addli r4, r12, 0
002d88  37200600  beq r12, zero, 8
002d8c  1f820100  addli r4, r3, 0
002d90  37a00a00  beq r21, zero, 8
002d94  9f0a0200  addli r21, r4, 0
002d98  13623006  setle.f r4, zero, r3
002d9c  93e30106  setle.f r7, r3, zero
002da0  17824300  and r4, r7, r4
002da4  3b200200  bneq r4, zero, 8
002da8  9f8a0100  addli r21, r3, 0
002dac  bf8619f9  blt.s r19, r17, -3680
002db0  9f0a0600  addli r21, r12, 0
002db4  5b33feff  j -3688
002db8  ab00c07f  lui r1, 523264
002dbc  1f010400  addli r2, r8, 0
002dc0  b70204fc  beq r8, zero, -1888
002dc4  1f810000  addli r2, r1, 0
002dc8  3b7209fc  bneq r18, zero, -1892
002dcc  db13ffff  j -1892
002dd0  ab00c07f  lui r1, 523264
002dd4  9f810c00  addli r3, r25, 0
002dd8  37da0cfc  beq r25, zero, -1388
002ddc  9f810000  addli r3, r1, 0
002de0  3b4a0efc  bneq r28, zero, -1392
002de4  5b52ffff  j -1392
002de8  ab01c07f  lui r3, 523264
002dec  1f020a00  addli r4, r20, 0
002df0  37200afe  beq r20, zero, -1016
002df4  1f820100  addli r4, r3, 0
002df8  3b900dfe  bneq r27, zero, -1020
002dfc  db80ffff  j -1020
002e00  ab01c07f  lui r3, 523264
002e04  1f820400  addli r4, r9, 0
002e08  b7fb04fe  beq r9, zero, -260
002e0c  1f820100  addli r4, r3, 0
002e10  bb6b03fe  bneq r6, zero, -264
002e14  5bdfffff  j -264
002e18  13622605  setlt.f r4, r12, r18
002e1c  3b200200  bneq r4, zero, 8
002e20  1f090600  addli r18, r12, 0
002e24  e3040fef  loadli.w r9,  -2176(r30)
002e28  1b329600  slli r4, r12, 9
002e2c  1b447601  srli r8, r12, 23
002e30  13020200  seteq r4, r4, zero
002e34  1b04f40f  andi r8, r8, 255
002e38  9bb39400  slli r7, r9, 9
002e3c  9bc47401  srli r9, r9, 23
002e40  1b74f40f  setlti r8, r8, 255
002e44  93830300  seteq r7, r7, zero
002e48  9b84f40f  andi r9, r9, 255
002e4c  9bf4f40f  setlti r9, r9, 255
002e50  17124400  or r4, r8, r4
002e54  97937400  or r7, r9, r7
002e58  17824300  and r4, r7, r4
002e5c  b7350204  beq r4, zero, 2412
002e60  63020fef  loadli.w r4,  -2176(r30)
002e64  bb450204  bneq r4, zero, 2416
002e68  37200600  beq r12, zero, 8
002e6c  63060fef  loadli.w r12,  -2176(r30)
002e70  13622007  setle.f r4, zero, r18
002e74  93630906  setle.f r7, r18, zero
002e78  17824300  and r4, r7, r4
002e7c  3b200200  bneq r4, zero, 8
002e80  1f060900  addli r12, r18, 0
002e84  1362c104  setlt.f r4, r2, r12
002e88  9f010600  addli r3, r12, 0
002e8c  3b200200  bneq r4, zero, 8
002e90  9f010100  addli r3, r2, 0
002e94  1b329600  slli r4, r12, 9
002e98  9b339100  slli r7, r2, 9
002e9c  1b447601  srli r8, r12, 23
002ea0  9b447101  srli r9, r2, 23
002ea4  13020200  seteq r4, r4, zero
002ea8  93830300  seteq r7, r7, zero
002eac  1b04f40f  andi r8, r8, 255
002eb0  9b84f40f  andi r9, r9, 255
002eb4  1b74f40f  setlti r8, r8, 255
002eb8  9bf4f40f  setlti r9, r9, 255
002ebc  17124400  or r4, r8, r4
002ec0  97937400  or r7, r9, r7
002ec4  17027200  and r4, r4, r7
002ec8  37640204  beq r4, zero, 2328
002ecc  e3020fee  loadli.w r5,  -2304(r30)
002ed0  3b740604  bneq r12, zero, 2332
002ed4  37200100  beq r2, zero, 8
002ed8  1f010600  addli r2, r12, 0
002edc  13623006  setle.f r4, zero, r3
002ee0  93e30106  setle.f r7, r3, zero
002ee4  17824300  and r4, r7, r4
002ee8  3b200200  bneq r4, zero, 8
002eec  1f810100  addli r2, r3, 0
002ef0  13e22204  setlt.f r4, r5, r2
002ef4  9f010100  addli r3, r2, 0
002ef8  3b200200  bneq r4, zero, 8
002efc  9f810200  addli r3, r5, 0
002f00  1b329100  slli r4, r2, 9
002f04  9bb39200  slli r7, r5, 9
002f08  1b447101  srli r8, r2, 23
002f0c  9bc47201  srli r9, r5, 23
002f10  13020200  seteq r4, r4, zero
002f14  93830300  seteq r7, r7, zero
002f18  1b04f40f  andi r8, r8, 255
002f1c  9b84f40f  andi r9, r9, 255
002f20  1b74f40f  setlti r8, r8, 255
002f24  9bf4f40f  setlti r9, r9, 255
002f28  17124400  or r4, r8, r4
002f2c  97937400  or r7, r9, r7
002f30  17027200  and r4, r4, r7
002f34  37130204  beq r4, zero, 2244
002f38  3b230104  bneq r2, zero, 2248
002f3c  e3020fee  loadli.w r5,  -2304(r30)
002f40  37a00200  beq r5, zero, 8
002f44  9f020100  addli r5, r2, 0
002f48  13613006  setle.f r2, zero, r3
002f4c  13e20106  setle.f r4, r3, zero
002f50  17012200  and r2, r4, r2
002f54  3b200100  bneq r2, zero, 8
002f58  9f820100  addli r5, r3, 0
002f5c  93615d04  setlt.f r3, r26, r5
002f60  1f810200  addli r2, r5, 0
002f64  3ba00100  bneq r3, zero, 8
002f68  1f010d00  addli r2, r26, 0
002f6c  9bb19200  slli r3, r5, 9
002f70  1b329d00  slli r4, r26, 9
002f74  9bc37201  srli r7, r5, 23
002f78  1b447d01  srli r8, r26, 23
002f7c  93810100  seteq r3, r3, zero
002f80  13020200  seteq r4, r4, zero
002f84  9b83f30f  andi r7, r7, 255
002f88  1b04f40f  andi r8, r8, 255
002f8c  9bf3f30f  setlti r7, r7, 255
002f90  1b74f40f  setlti r8, r8, 255
002f94  97913300  or r3, r7, r3
002f98  17124400  or r4, r8, r4
002f9c  97814100  and r3, r3, r4
002fa0  b7c10104  beq r3, zero, 2160
002fa4  bbd10204  bneq r5, zero, 2164
002fa8  37200d00  beq r26, zero, 8
002fac  1f8d0200  addli r26, r5, 0
002fb0  93612006  setle.f r3, zero, r2
002fb4  13620106  setle.f r4, r2, zero
002fb8  97013200  and r3, r4, r3
002fbc  3ba00100  bneq r3, zero, 8
002fc0  1f0d0100  addli r26, r2, 0
002fc4  9361ae05  setlt.f r3, r28, r26
002fc8  63067fed  loadli.w r12,  -2376(r30)
002fcc  e3475fe8  loadli.w r15,  -3028(r30)
002fd0  1f010d00  addli r2, r26, 0
002fd4  3ba00100  bneq r3, zero, 8
002fd8  1f010e00  addli r2, r28, 0
002fdc  9b319d00  slli r3, r26, 9
002fe0  1b329e00  slli r4, r28, 9
002fe4  9b437d01  srli r7, r26, 23
002fe8  1b447e01  srli r8, r28, 23
002fec  93810100  seteq r3, r3, zero
002ff0  13020200  seteq r4, r4, zero
002ff4  9b83f30f  andi r7, r7, 255
002ff8  1b04f40f  andi r8, r8, 255
002ffc  9bf3f30f  setlti r7, r7, 255
003000  1b74f40f  setlti r8, r8, 255
003004  97913300  or r3, r7, r3
003008  17124400  or r4, r8, r4
00300c  97814100  and r3, r3, r4
003010  37d00104  beq r3, zero, 2068
003014  3b600d04  bneq r26, zero, 2072
003018  37200e00  beq r28, zero, 8
00301c  1f0e0d00  addli r28, r26, 0
003020  93612006  setle.f r3, zero, r2
003024  13620106  setle.f r4, r2, zero
003028  97013200  and r3, r4, r3
00302c  3ba00100  bneq r3, zero, 8
003030  1f0e0100  addli r28, r2, 0
003034  93e1c005  setlt.f r3, r1, r28
003038  630dffef  loadli.w r26,  -2056(r30)
00303c  1f010e00  addli r2, r28, 0
003040  3ba00100  bneq r3, zero, 8
003044  1f810000  addli r2, r1, 0
003048  9b319e00  slli r3, r28, 9
00304c  1bb29000  slli r4, r1, 9
003050  9b437e01  srli r7, r28, 23
003054  1bc47001  srli r8, r1, 23
003058  93810100  seteq r3, r3, zero
00305c  13020200  seteq r4, r4, zero
003060  9b83f30f  andi r7, r7, 255
003064  1b04f40f  andi r8, r8, 255
003068  9bf3f30f  setlti r7, r7, 255
00306c  1b74f40f  setlti r8, r8, 255
003070  97913300  or r3, r7, r3
003074  17124400  or r4, r8, r4
003078  97814100  and r3, r3, r4
00307c  b7fe0102  beq r3, zero, 1980
003080  3b0f0e02  bneq r28, zero, 1984
003084  37a00000  beq r1, zero, 8
003088  9f000e00  addli r1, r28, 0
00308c  93612006  setle.f r3, zero, r2
003090  13620106  setle.f r4, r2, zero
003094  97013200  and r3, r4, r3
003098  3ba00100  bneq r3, zero, 8
00309c  9f000100  addli r1, r2, 0
0030a0  93611704  setlt.f r3, r14, r1
0030a4  1f810000  addli r2, r1, 0
0030a8  1f0e0ff8  addli r28, r30, -1024
0030ac  3ba00100  bneq r3, zero, 8
0030b0  1f010700  addli r2, r14, 0
0030b4  9bb19000  slli r3, r1, 9
0030b8  1b329700  slli r4, r14, 9
0030bc  9bc37001  srli r7, r1, 23
0030c0  1b447701  srli r8, r14, 23
0030c4  93810100  seteq r3, r3, zero
0030c8  13020200  seteq r4, r4, zero
0030cc  9b83f30f  andi r7, r7, 255
0030d0  1b04f40f  andi r8, r8, 255
0030d4  9bf3f30f  setlti r7, r7, 255
0030d8  1b74f40f  setlti r8, r8, 255
0030dc  97913300  or r3, r7, r3
0030e0  17124400  or r4, r8, r4
0030e4  97814100  and r3, r3, r4
0030e8  b79d0102  beq r3, zero, 1892
0030ec  bbad0002  bneq r1, zero, 1896
0030f0  37200700  beq r14, zero, 8
0030f4  1f870000  addli r14, r1, 0
0030f8  93602006  setle.f r1, zero, r2
0030fc  93610106  setle.f r3, r2, zero
003100  97801100  and r1, r3, r1
003104  3ba00000  bneq r1, zero, 8
003108  1f070100  addli r14, r2, 0
00310c  13e1ed04  setlt.f r2, r27, r14
003110  9f000700  addli r1, r14, 0
003114  3b200100  bneq r2, zero, 8
003118  9f800d00  addli r1, r27, 0
00311c  1b319700  slli r2, r14, 9
003120  9bb19d00  slli r3, r27, 9
003124  1b427701  srli r4, r14, 23
003128  9bc37d01  srli r7, r27, 23
00312c  13010100  seteq r2, r2, zero
003130  93810100  seteq r3, r3, zero
003134  1b02f20f  andi r4, r4, 255
003138  9b83f30f  andi r7, r7, 255
00313c  1b72f20f  setlti r4, r4, 255
003140  9bf3f30f  setlti r7, r7, 255
003144  17112200  or r2, r4, r2
003148  97913300  or r3, r7, r3
00314c  17013100  and r2, r2, r3
003150  374c0102  beq r2, zero, 1808
003154  3b5c0702  bneq r14, zero, 1812
003158  37a00d00  beq r27, zero, 8
00315c  9f0d0700  addli r27, r14, 0
003160  13611006  setle.f r2, zero, r1
003164  93e10006  setle.f r3, r1, zero
003168  17812100  and r2, r3, r2
00316c  3b200100  bneq r2, zero, 8
003170  9f8d0000  addli r27, r1, 0
003174  13e1b605  setlt.f r2, r13, r27
003178  9f800d00  addli r1, r27, 0
00317c  3b200100  bneq r2, zero, 8
003180  9f800600  addli r1, r13, 0
003184  1bb19d00  slli r2, r27, 9
003188  9bb19600  slli r3, r13, 9
00318c  1bc27d01  srli r4, r27, 23
003190  9bc37601  srli r7, r13, 23
003194  13010100  seteq r2, r2, zero
003198  93810100  seteq r3, r3, zero
00319c  1b02f20f  andi r4, r4, 255
0031a0  9b83f30f  andi r7, r7, 255
0031a4  1b72f20f  setlti r4, r4, 255
0031a8  9bf3f30f  setlti r7, r7, 255
0031ac  17112200  or r2, r4, r2
0031b0  97913300  or r3, r7, r3
0031b4  17013100  and r2, r2, r3
0031b8  b77a0102  beq r2, zero, 1724
0031bc  3b8b0d02  bneq r27, zero, 1728
0031c0  37a00600  beq r13, zero, 8
0031c4  9f860d00  addli r13, r27, 0
0031c8  13611006  setle.f r2, zero, r1
0031cc  93e10006  setle.f r3, r1, zero
0031d0  17812100  and r2, r3, r2
0031d4  3b200100  bneq r2, zero, 8
0031d8  9f860000  addli r13, r1, 0
0031dc  1361db04  setlt.f r2, r22, r13
0031e0  e34dffef  loadli.w r27,  -2052(r30)
0031e4  9f800600  addli r1, r13, 0
0031e8  3b200100  bneq r2, zero, 8
0031ec  9f000b00  addli r1, r22, 0
0031f0  1bb19600  slli r2, r13, 9
0031f4  9b319b00  slli r3, r22, 9
0031f8  1bc27601  srli r4, r13, 23
0031fc  9b437b01  srli r7, r22, 23
003200  13010100  seteq r2, r2, zero
003204  93810100  seteq r3, r3, zero
003208  1b02f20f  andi r4, r4, 255
00320c  9b83f30f  andi r7, r7, 255
003210  1b72f20f  setlti r4, r4, 255
003214  9bf3f30f  setlti r7, r7, 255
003218  17112200  or r2, r4, r2
00321c  97913300  or r3, r7, r3
003220  17013100  and r2, r2, r3
003224  b7190102  beq r2, zero, 1636
003228  bba90602  bneq r13, zero, 1640
00322c  37200b00  beq r22, zero, 8
003230  1f8b0600  addli r22, r13, 0
003234  13611006  setle.f r2, zero, r1
003238  93e10006  setle.f r3, r1, zero
00323c  17812100  and r2, r3, r2
003240  3b200100  bneq r2, zero, 8
003244  1f8b0000  addli r22, r1, 0
003248  13616505  setlt.f r2, r10, r22
00324c  9f000b00  addli r1, r22, 0
003250  3b200100  bneq r2, zero, 8
003254  9f000500  addli r1, r10, 0
003258  1b319b00  slli r2, r22, 9
00325c  9b319500  slli r3, r10, 9
003260  1b427b01  srli r4, r22, 23
003264  9b437501  srli r7, r10, 23
003268  13010100  seteq r2, r2, zero
00326c  93810100  seteq r3, r3, zero
003270  1b02f20f  andi r4, r4, 255
003274  9b83f30f  andi r7, r7, 255
003278  1b72f20f  setlti r4, r4, 255
00327c  9bf3f30f  setlti r7, r7, 255
003280  17112200  or r2, r4, r2
003284  97913300  or r3, r7, r3
003288  17013100  and r2, r2, r3
00328c  37480102  beq r2, zero, 1552
003290  3b580b02  bneq r22, zero, 1556
003294  37200500  beq r10, zero, 8
003298  1f050b00  addli r10, r22, 0
00329c  13611006  setle.f r2, zero, r1
0032a0  93e10006  setle.f r3, r1, zero
0032a4  17812100  and r2, r3, r2
0032a8  3b200100  bneq r2, zero, 8
0032ac  1f850000  addli r10, r1, 0
0032b0  1361a804  setlt.f r2, r16, r10
0032b4  9f000500  addli r1, r10, 0
0032b8  3b200100  bneq r2, zero, 8
0032bc  9f000800  addli r1, r16, 0
0032c0  1b319500  slli r2, r10, 9
0032c4  9b319800  slli r3, r16, 9
0032c8  1b427501  srli r4, r10, 23
0032cc  9b437801  srli r7, r16, 23
0032d0  13010100  seteq r2, r2, zero
0032d4  93810100  seteq r3, r3, zero
0032d8  1b02f20f  andi r4, r4, 255
0032dc  9b83f30f  andi r7, r7, 255
0032e0  1b72f20f  setlti r4, r4, 255
0032e4  9bf3f30f  setlti r7, r7, 255
0032e8  17112200  or r2, r4, r2
0032ec  97913300  or r3, r7, r3
0032f0  17013100  and r2, r2, r3
0032f4  b7760102  beq r2, zero, 1468
0032f8  3b070502  bneq r10, zero, 1472
0032fc  37200800  beq r16, zero, 8
003300  1f080500  addli r16, r10, 0
003304  13611006  setle.f r2, zero, r1
003308  93e10006  setle.f r3, r1, zero
00330c  17812100  and r2, r3, r2
003310  3b200100  bneq r2, zero, 8
003314  1f880000  addli r16, r1, 0
003318  13e10505  setlt.f r2, r11, r16
00331c  9f000800  addli r1, r16, 0
003320  3b200100  bneq r2, zero, 8
003324  9f800500  addli r1, r11, 0
003328  1b319800  slli r2, r16, 9
00332c  9bb19500  slli r3, r11, 9
003330  1b427801  srli r4, r16, 23
003334  9bc37501  srli r7, r11, 23
003338  13010100  seteq r2, r2, zero
00333c  93810100  seteq r3, r3, zero
003340  1b02f20f  andi r4, r4, 255
003344  9b83f30f  andi r7, r7, 255
003348  1b72f20f  setlti r4, r4, 255
00334c  9bf3f30f  setlti r7, r7, 255
003350  17112200  or r2, r4, r2
003354  97913300  or r3, r7, r3
003358  17013100  and r2, r2, r3
00335c  b7250102  beq r2, zero, 1384
003360  bb350802  bneq r16, zero, 1388
003364  37a00500  beq r11, zero, 8
003368  9f050800  addli r11, r16, 0
00336c  13611006  setle.f r2, zero, r1
003370  93e10006  setle.f r3, r1, zero
003374  17812100  and r2, r3, r2
003378  3b200100  bneq r2, zero, 8
00337c  9f850000  addli r11, r1, 0
003380  1361b304  setlt.f r2, r6, r11
003384  9f800500  addli r1, r11, 0
003388  3b200100  bneq r2, zero, 8
00338c  9f000300  addli r1, r6, 0
003390  1bb19500  slli r2, r11, 9
003394  9b319300  slli r3, r6, 9
003398  1bc27501  srli r4, r11, 23
00339c  9b437301  srli r7, r6, 23
0033a0  13010100  seteq r2, r2, zero
0033a4  93810100  seteq r3, r3, zero
0033a8  1b02f20f  andi r4, r4, 255
0033ac  9b83f30f  andi r7, r7, 255
0033b0  1b72f20f  setlti r4, r4, 255
0033b4  9bf3f30f  setlti r7, r7, 255
0033b8  17112200  or r2, r4, r2
0033bc  97913300  or r3, r7, r3
0033c0  17013100  and r2, r2, r3
0033c4  37540102  beq r2, zero, 1300
0033c8  3be40502  bneq r11, zero, 1304
0033cc  37200300  beq r6, zero, 8
0033d0  1f830500  addli r6, r11, 0
0033d4  13611006  setle.f r2, zero, r1
0033d8  93e10006  setle.f r3, r1, zero
0033dc  17812100  and r2, r3, r2
0033e0  3b200100  bneq r2, zero, 8
0033e4  1f830000  addli r6, r1, 0
0033e8  13e16a04  setlt.f r2, r21, r6
0033ec  9f000300  addli r1, r6, 0
0033f0  3b200100  bneq r2, zero, 8
0033f4  9f800a00  addli r1, r21, 0
0033f8  1b319300  slli r2, r6, 9
0033fc  9bb19a00  slli r3, r21, 9
003400  1b427301  srli r4, r6, 23
003404  9bc27a01  srli r5, r21, 23
003408  13010100  seteq r2, r2, zero
00340c  93810100  seteq r3, r3, zero
003410  1b02f20f  andi r4, r4, 255
003414  9b82f20f  andi r5, r5, 255
003418  1b72f20f  setlti r4, r4, 255
00341c  9bf2f20f  setlti r5, r5, 255
003420  17112200  or r2, r4, r2
003424  97913200  or r3, r5, r3
003428  17013100  and r2, r2, r3
00342c  37030102  beq r2, zero, 1216
003430  3b130302  bneq r6, zero, 1220
003434  37a00a00  beq r21, zero, 8
003438  9f0a0300  addli r21, r6, 0
00343c  13611006  setle.f r2, zero, r1
003440  93e10006  setle.f r3, r1, zero
003444  17812100  and r2, r3, r2
003448  3b200100  bneq r2, zero, 8
00344c  9f8a0000  addli r21, r1, 0
003450  e3003fe9  loadli.w r1,  -2920(r30)
003454  73e05001  stores.w r21, 0(r1)
003458  00a00300  mfence { lm, sm, gm }
00345c  80210604  csr_set csr3, r12
003460  00d00100  sync_group
003464  e3406fed  loadli.w r1,  -2380(r30)
003468  3b8c0000  bneq r1, zero, 768
00346c  efc10700  loads.w r3, 0(r15)
003470  efc04700  loads.w r1, 4(r15)
003474  13e23004  setlt.f r4, r1, r3
003478  1f810100  addli r2, r3, 0
00347c  3b200200  bneq r4, zero, 8
003480  1f810000  addli r2, r1, 0
003484  1bb29100  slli r4, r3, 9
003488  9bb29000  slli r5, r1, 9
00348c  1bc37101  srli r6, r3, 23
003490  9bc37001  srli r7, r1, 23
003494  13020200  seteq r4, r4, zero
003498  93820200  seteq r5, r5, zero
00349c  1b03f30f  andi r6, r6, 255
0034a0  9b83f30f  andi r7, r7, 255
0034a4  1b73f30f  setlti r6, r6, 255
0034a8  9bf3f30f  setlti r7, r7, 255
0034ac  17124300  or r4, r6, r4
0034b0  97925300  or r5, r7, r5
0034b4  17025200  and r4, r4, r5
0034b8  b759020c  beq r4, zero, 6772
0034bc  bbe9010c  bneq r3, zero, 6776
0034c0  37a00000  beq r1, zero, 8
0034c4  9f800100  addli r1, r3, 0
0034c8  93612006  setle.f r3, zero, r2
0034cc  13620106  setle.f r4, r2, zero
0034d0  97013200  and r3, r4, r3
0034d4  3ba00100  bneq r3, zero, 8
0034d8  9f000100  addli r1, r2, 0
0034dc  efc28700  loads.w r5, 8(r15)
0034e0  1f810000  addli r2, r1, 0
0034e4  93e11204  setlt.f r3, r5, r1
0034e8  3ba00100  bneq r3, zero, 8
0034ec  1f810200  addli r2, r5, 0
0034f0  9bb19200  slli r3, r5, 9
0034f4  1bb29000  slli r4, r1, 9
0034f8  1bc37201  srli r6, r5, 23
0034fc  9bc37001  srli r7, r1, 23
003500  93810100  seteq r3, r3, zero
003504  13020200  seteq r4, r4, zero
003508  1b03f30f  andi r6, r6, 255
00350c  9b83f30f  andi r7, r7, 255
003510  1b73f30f  setlti r6, r6, 255
003514  9bf3f30f  setlti r7, r7, 255
003518  97113300  or r3, r6, r3
00351c  17924300  or r4, r7, r4
003520  97013200  and r3, r4, r3
003524  37f8010c  beq r3, zero, 6684
003528  bb88000c  bneq r1, zero, 6688
00352c  37a00200  beq r5, zero, 8
003530  9f820000  addli r5, r1, 0
003534  93602006  setle.f r1, zero, r2
003538  93610106  setle.f r3, r2, zero
00353c  97801100  and r1, r3, r1
003540  3ba00000  bneq r1, zero, 8
003544  9f020100  addli r5, r2, 0
003548  6fc3c700  loads.w r6, 12(r15)
00354c  6fc20701  loads.w r4, 16(r15)
003550  efc14701  loads.w r3, 20(r15)
003554  6fc18701  loads.w r2, 24(r15)
003558  efc0c701  loads.w r1, 28(r15)
00355c  9f830200  addli r7, r5, 0
003560  13645304  setlt.f r8, r6, r5
003564  3b200400  bneq r8, zero, 8
003568  9f030300  addli r7, r6, 0
00356c  1b349300  slli r8, r6, 9
003570  9bb49200  slli r9, r5, 9
003574  1b457301  srli r10, r6, 23
003578  9bc57201  srli r11, r5, 23
00357c  13040400  seteq r8, r8, zero
003580  93840400  seteq r9, r9, zero
003584  1b05f50f  andi r10, r10, 255
003588  9b85f50f  andi r11, r11, 255
00358c  1b75f50f  setlti r10, r10, 255
003590  9bf5f50f  setlti r11, r11, 255
003594  17148500  or r8, r10, r8
003598  97949500  or r9, r11, r9
00359c  17848400  and r8, r9, r8
0035a0  b756040c  beq r8, zero, 6580
0035a4  bbe6020c  bneq r5, zero, 6584
0035a8  37200300  beq r6, zero, 8
0035ac  1f830200  addli r6, r5, 0
0035b0  93627006  setle.f r5, zero, r7
0035b4  13e40306  setle.f r8, r7, zero
0035b8  97025400  and r5, r8, r5
0035bc  3ba00200  bneq r5, zero, 8
0035c0  1f830300  addli r6, r7, 0
0035c4  93636204  setlt.f r7, r4, r6
0035c8  9f020300  addli r5, r6, 0
0035cc  3ba00300  bneq r7, zero, 8
0035d0  9f020200  addli r5, r4, 0
0035d4  9b339200  slli r7, r4, 9
0035d8  1b349300  slli r8, r6, 9
0035dc  9b447201  srli r9, r4, 23
0035e0  1b457301  srli r10, r6, 23
0035e4  93830300  seteq r7, r7, zero
0035e8  13040400  seteq r8, r8, zero
0035ec  9b84f40f  andi r9, r9, 255
0035f0  1b05f50f  andi r10, r10, 255
0035f4  9bf4f40f  setlti r9, r9, 255
0035f8  1b75f50f  setlti r10, r10, 255
0035fc  97937400  or r7, r9, r7
003600  17148500  or r8, r10, r8
003604  97037400  and r7, r8, r7
003608  b785030c  beq r7, zero, 6496
00360c  bb15030c  bneq r6, zero, 6500
003610  37200200  beq r4, zero, 8
003614  1f020300  addli r4, r6, 0
003618  13635006  setle.f r6, zero, r5
00361c  93e30206  setle.f r7, r5, zero
003620  17836300  and r6, r7, r6
003624  3b200300  bneq r6, zero, 8
003628  1f820200  addli r4, r5, 0
00362c  13e34104  setlt.f r6, r3, r4
003630  9f020200  addli r5, r4, 0
003634  3b200300  bneq r6, zero, 8
003638  9f820100  addli r5, r3, 0
00363c  1bb39100  slli r6, r3, 9
003640  9b339200  slli r7, r4, 9
003644  1bc47101  srli r8, r3, 23
003648  9b447201  srli r9, r4, 23
00364c  13030300  seteq r6, r6, zero
003650  93830300  seteq r7, r7, zero
003654  1b04f40f  andi r8, r8, 255
003658  9b84f40f  andi r9, r9, 255
00365c  1b74f40f  setlti r8, r8, 255
003660  9bf4f40f  setlti r9, r9, 255
003664  17136400  or r6, r8, r6
003668  97937400  or r7, r9, r7
00366c  17836300  and r6, r7, r6
003670  3734030c  beq r6, zero, 6412
003674  3b44020c  bneq r4, zero, 6416
003678  37a00100  beq r3, zero, 8
00367c  9f010200  addli r3, r4, 0
003680  13625006  setle.f r4, zero, r5
003684  13e30206  setle.f r6, r5, zero
003688  17024300  and r4, r6, r4
00368c  3b200200  bneq r4, zero, 8
003690  9f810200  addli r3, r5, 0
003694  93623104  setlt.f r5, r2, r3
003698  1f820100  addli r4, r3, 0
00369c  3ba00200  bneq r5, zero, 8
0036a0  1f020100  addli r4, r2, 0
0036a4  9b329100  slli r5, r2, 9
0036a8  1bb39100  slli r6, r3, 9
0036ac  9b437101  srli r7, r2, 23
0036b0  1bc47101  srli r8, r3, 23
0036b4  93820200  seteq r5, r5, zero
0036b8  13030300  seteq r6, r6, zero
0036bc  9b83f30f  andi r7, r7, 255
0036c0  1b04f40f  andi r8, r8, 255
0036c4  9bf3f30f  setlti r7, r7, 255
0036c8  1b74f40f  setlti r8, r8, 255
0036cc  97925300  or r5, r7, r5
0036d0  17136400  or r6, r8, r6
0036d4  97025300  and r5, r6, r5
0036d8  b7e2020c  beq r5, zero, 6328
0036dc  bbf2010c  bneq r3, zero, 6332
0036e0  37200100  beq r2, zero, 8
0036e4  1f810100  addli r2, r3, 0
0036e8  93614006  setle.f r3, zero, r4
0036ec  93620206  setle.f r5, r4, zero
0036f0  97813200  and r3, r5, r3
0036f4  3ba00100  bneq r3, zero, 8
0036f8  1f010200  addli r2, r4, 0
0036fc  13e22004  setlt.f r4, r1, r2
003700  9f010100  addli r3, r2, 0
003704  3b200200  bneq r4, zero, 8
003708  9f810000  addli r3, r1, 0
00370c  1bb29000  slli r4, r1, 9
003710  9b329100  slli r5, r2, 9
003714  1bc37001  srli r6, r1, 23
003718  9b437101  srli r7, r2, 23
00371c  13020200  seteq r4, r4, zero
003720  93820200  seteq r5, r5, zero
003724  1b03f30f  andi r6, r6, 255
003728  9b83f30f  andi r7, r7, 255
00372c  1b73f30f  setlti r6, r6, 255
003730  9bf3f30f  setlti r7, r7, 255
003734  17124300  or r4, r6, r4
003738  97925300  or r5, r7, r5
00373c  17824200  and r4, r5, r4
003740  b711020c  beq r4, zero, 6244
003744  bb21010c  bneq r2, zero, 6248
003748  37a00000  beq r1, zero, 8
00374c  9f000100  addli r1, r2, 0
003750  13613006  setle.f r2, zero, r3
003754  13e20106  setle.f r4, r3, zero
003758  17012200  and r2, r4, r2
00375c  3b200100  bneq r2, zero, 8
003760  9f800100  addli r1, r3, 0
003764  73e01700  stores.w r1, 0(r15)
003768  00a00300  mfence { lm, sm, gm }
00376c  80210604  csr_set csr3, r12
003770  00d00100  sync_group
003774  efc70700  loads.w r15, 0(r15)
003778  9f008000  addli r1, zero, 64
00377c  670cffec  storeli.w r15, -2368(r30)
003780  3f861900  blt.s r19, r1, 384
003784  1f090000  addli r18, zero, 0
003788  1f010000  addli r2, zero, 0
00378c  9f020000  addli r5, zero, 0
003790  9f0a0000  addli r21, zero, 0
003794  1f030000  addli r6, zero, 0
003798  9f030000  addli r7, zero, 0
00379c  1f040000  addli r8, zero, 0
0037a0  9f040000  addli r9, zero, 0
0037a4  1f070000  addli r14, zero, 0
0037a8  1f050000  addli r10, zero, 0
0037ac  9f050000  addli r11, zero, 0
0037b0  9f070000  addli r15, zero, 0
0037b4  1f080000  addli r16, zero, 0
0037b8  9f080000  addli r17, zero, 0
0037bc  1f060000  addli r12, zero, 0
0037c0  9f060000  addli r13, zero, 0
0037c4  db400000  j 516
0037c8  2b09c07f  lui r18, 523264
0037cc  63020fef  loadli.w r4,  -2176(r30)
0037d0  376a02fa  beq r4, zero, -2408
0037d4  67082fef  storeli.w r18, -2176(r30)
0037d8  3b5a06fa  bneq r12, zero, -2412
0037dc  dbd2feff  j -2412
0037e0  ab01c07f  lui r3, 523264
0037e4  e3020fee  loadli.w r5,  -2304(r30)
0037e8  b73b06fa  beq r12, zero, -2324
0037ec  1f860100  addli r12, r3, 0
0037f0  bb2b01fa  bneq r2, zero, -2328
0037f4  5bddfeff  j -2328
0037f8  ab01c07f  lui r3, 523264
0037fc  370d01fa  beq r2, zero, -2240
003800  1f810100  addli r2, r3, 0
003804  e3020fee  loadli.w r5,  -2304(r30)
003808  bbfc02fa  bneq r5, zero, -2244
00380c  dbe7feff  j -2244
003810  2b01c07f  lui r2, 523264
003814  37de02fa  beq r5, zero, -2156
003818  9f020100  addli r5, r2, 0
00381c  3b4e0dfa  bneq r26, zero, -2160
003820  5bf2feff  j -2160
003824  2b01c07f  lui r2, 523264
003828  b74f0dfa  beq r26, zero, -2064
00382c  1f0d0100  addli r26, r2, 0
003830  bb3f0efa  bneq r28, zero, -2068
003834  dbfdfeff  j -2068
003838  2b01c07f  lui r2, 523264
00383c  37210efc  beq r28, zero, -1976
003840  1f0e0100  addli r28, r2, 0
003844  3b9100fc  bneq r1, zero, -1980
003848  db08ffff  j -1980
00384c  2b01c07f  lui r2, 523264
003850  b78200fc  beq r1, zero, -1888
003854  9f000100  addli r1, r2, 0
003858  3b7207fc  bneq r14, zero, -1892
00385c  db13ffff  j -1892
003860  ab00c07f  lui r1, 523264
003864  b75307fc  beq r14, zero, -1804
003868  1f870000  addli r14, r1, 0
00386c  bbc30dfc  bneq r27, zero, -1808
003870  5b1effff  j -1808
003874  ab00c07f  lui r1, 523264
003878  37a50dfc  beq r27, zero, -1720
00387c  9f8d0000  addli r27, r1, 0
003880  3b9506fc  bneq r13, zero, -1724
003884  db28ffff  j -1724
003888  ab00c07f  lui r1, 523264
00388c  b78606fc  beq r13, zero, -1632
003890  9f860000  addli r13, r1, 0
003894  3b760bfc  bneq r22, zero, -1636
003898  db33ffff  j -1636
00389c  ab00c07f  lui r1, 523264
0038a0  b7570bfc  beq r22, zero, -1548
0038a4  1f8b0000  addli r22, r1, 0
0038a8  bb4705fc  bneq r10, zero, -1552
0038ac  5b3effff  j -1552
0038b0  ab00c07f  lui r1, 523264
0038b4  372905fc  beq r10, zero, -1464
0038b8  1f850000  addli r10, r1, 0
0038bc  3b1908fc  bneq r16, zero, -1468
0038c0  db48ffff  j -1468
0038c4  ab00c07f  lui r1, 523264
0038c8  377a08fc  beq r16, zero, -1380
0038cc  1f880000  addli r16, r1, 0
0038d0  3bea05fc  bneq r11, zero, -1384
0038d4  5b53ffff  j -1384
0038d8  ab00c07f  lui r1, 523264
0038dc  b7cb05fc  beq r11, zero, -1296
0038e0  9f850000  addli r11, r1, 0
0038e4  bb3b03fc  bneq r6, zero, -1300
0038e8  db5dffff  j -1300
0038ec  ab00c07f  lui r1, 523264
0038f0  371d03fc  beq r6, zero, -1212
0038f4  1f830000  addli r6, r1, 0
0038f8  3b8d0afc  bneq r21, zero, -1216
0038fc  5b68ffff  j -1216
003900  6347cfec  loadli.w r14,  -2460(r30)
003904  63421fed  loadli.w r4,  -2420(r30)
003908  63412fed  loadli.w r2,  -2412(r30)
00390c  e3012fed  loadli.w r3,  -2416(r30)
003910  e3021fed  loadli.w r5,  -2424(r30)
003914  63430fed  loadli.w r6,  -2428(r30)
003918  e3030fed  loadli.w r7,  -2432(r30)
00391c  6344ffec  loadli.w r8,  -2436(r30)
003920  e304ffec  loadli.w r9,  -2440(r30)
003924  6345efec  loadli.w r10,  -2444(r30)
003928  e305efec  loadli.w r11,  -2448(r30)
00392c  6346dfec  loadli.w r12,  -2452(r30)
003930  e306dfec  loadli.w r13,  -2456(r30)
003934  0b68f718  sub.f.rn r16, r14, r15
003938  6307cfec  loadli.w r14,  -2464(r30)
00393c  0b62f218  sub.f.rn r4, r4, r15
003940  0b63f318  sub.f.rn r6, r6, r15
003944  8be3f318  sub.f.rn r7, r7, r15
003948  0b64f418  sub.f.rn r8, r8, r15
00394c  8be4f418  sub.f.rn r9, r9, r15
003950  0b61f118  sub.f.rn r2, r2, r15
003954  8be2f218  sub.f.rn r5, r5, r15
003958  8be1f118  sub.f.rn r3, r3, r15
00395c  0b65f518  sub.f.rn r10, r10, r15
003960  8be5f518  sub.f.rn r11, r11, r15
003964  0b66f618  sub.f.rn r12, r12, r15
003968  8be6f618  sub.f.rn r13, r13, r15
00396c  8b68f718  sub.f.rn r17, r14, r15
003970  6347bfec  loadli.w r14,  -2468(r30)
003974  8b69f718  sub.f.rn r19, r14, r15
003978  6307bfec  loadli.w r14,  -2472(r30)
00397c  8f000200  exp.f.rn r1, r4
003980  0f090100  exp.f.rn r18, r2
003984  8f8a0200  exp.f.rn r21, r5
003988  0f810100  exp.f.rn r2, r3
00398c  0f030300  exp.f.rn r6, r6
003990  8f830300  exp.f.rn r7, r7
003994  0f040400  exp.f.rn r8, r8
003998  8f840400  exp.f.rn r9, r9
00399c  0f080800  exp.f.rn r16, r16
0039a0  0b6af718  sub.f.rn r20, r14, r15
0039a4  0f070500  exp.f.rn r14, r10
0039a8  0f850500  exp.f.rn r10, r11
0039ac  8f050600  exp.f.rn r11, r12
0039b0  8f870600  exp.f.rn r15, r13
0039b4  8f880800  exp.f.rn r17, r17
0039b8  0f860900  exp.f.rn r12, r19
0039bc  9f820000  addli r5, r1, 0
0039c0  9f008000  addli r1, zero, 64
0039c4  8f060a00  exp.f.rn r13, r20
0039c8  e3010fe9  loadli.w r3,  -2944(r30)
0039cc  63023fed  loadli.w r4,  -2408(r30)
0039d0  8b914110  add.s r3, r3, r4
0039d4  e70c3fe8  storeli.w r3, -2872(r30)
0039d8  e341ffe8  loadli.w r3,  -2948(r30)
0039dc  8b914110  add.s r3, r3, r4
0039e0  674c3fe8  storeli.w r3, -2876(r30)
0039e4  e301ffe8  loadli.w r3,  -2952(r30)
0039e8  8b914110  add.s r3, r3, r4
0039ec  670c3fe8  storeli.w r3, -2880(r30)
0039f0  e341efe8  loadli.w r3,  -2956(r30)
0039f4  8b914110  add.s r3, r3, r4
0039f8  e74b3fe8  storeli.w r3, -2884(r30)
0039fc  e301efe8  loadli.w r3,  -2960(r30)
003a00  8b914110  add.s r3, r3, r4
003a04  e70b3fe8  storeli.w r3, -2888(r30)
003a08  e341dfe8  loadli.w r3,  -2964(r30)
003a0c  8b914110  add.s r3, r3, r4
003a10  674b3fe8  storeli.w r3, -2892(r30)
003a14  e301dfe8  loadli.w r3,  -2968(r30)
003a18  8b914110  add.s r3, r3, r4
003a1c  670b3fe8  storeli.w r3, -2896(r30)
003a20  e341cfe8  loadli.w r3,  -2972(r30)
003a24  8b914110  add.s r3, r3, r4
003a28  e74a3fe8  storeli.w r3, -2900(r30)
003a2c  e301cfe8  loadli.w r3,  -2976(r30)
003a30  8b914110  add.s r3, r3, r4
003a34  e70a3fe8  storeli.w r3, -2904(r30)
003a38  e341bfe8  loadli.w r3,  -2980(r30)
003a3c  8b914110  add.s r3, r3, r4
003a40  674a3fe8  storeli.w r3, -2908(r30)
003a44  e301bfe8  loadli.w r3,  -2984(r30)
003a48  8b914110  add.s r3, r3, r4
003a4c  670a3fe8  storeli.w r3, -2912(r30)
003a50  e341afe8  loadli.w r3,  -2988(r30)
003a54  8b914110  add.s r3, r3, r4
003a58  e74c3fe8  storeli.w r3, -2868(r30)
003a5c  e301afe8  loadli.w r3,  -2992(r30)
003a60  8b914110  add.s r3, r3, r4
003a64  670d3fe8  storeli.w r3, -2864(r30)
003a68  e3419fe8  loadli.w r3,  -2996(r30)
003a6c  8b914110  add.s r3, r3, r4
003a70  674d3fe8  storeli.w r3, -2860(r30)
003a74  e3019fe8  loadli.w r3,  -3000(r30)
003a78  8b914110  add.s r3, r3, r4
003a7c  e70d3fe8  storeli.w r3, -2856(r30)
003a80  e3418fe8  loadli.w r3,  -3004(r30)
003a84  8b914110  add.s r3, r3, r4
003a88  e74d3fe8  storeli.w r3, -2852(r30)
003a8c  e3018fe8  loadli.w r3,  -3008(r30)
003a90  8b914110  add.s r3, r3, r4
003a94  670e3fe8  storeli.w r3, -2848(r30)
003a98  e3416fe8  loadli.w r3,  -3020(r30)
003a9c  8b914110  add.s r3, r3, r4
003aa0  674e3fe8  storeli.w r3, -2844(r30)
003aa4  e3016fe8  loadli.w r3,  -3024(r30)
003aa8  8b914110  add.s r3, r3, r4
003aac  e70e3fe8  storeli.w r3, -2840(r30)
003ab0  e3417fe7  loadli.w r3,  -3140(r30)
003ab4  8b914110  add.s r3, r3, r4
003ab8  e74e3fe8  storeli.w r3, -2836(r30)
003abc  e3017fe7  loadli.w r3,  -3144(r30)
003ac0  8b914110  add.s r3, r3, r4
003ac4  670f3fe8  storeli.w r3, -2832(r30)
003ac8  e3416fe7  loadli.w r3,  -3148(r30)
003acc  8b914110  add.s r3, r3, r4
003ad0  674f3fe8  storeli.w r3, -2828(r30)
003ad4  e3016fe7  loadli.w r3,  -3152(r30)
003ad8  8b914110  add.s r3, r3, r4
003adc  e70f3fe8  storeli.w r3, -2824(r30)
003ae0  e3415fe7  loadli.w r3,  -3156(r30)
003ae4  8b914110  add.s r3, r3, r4
003ae8  e74f3fe8  storeli.w r3, -2820(r30)
003aec  e3015fe7  loadli.w r3,  -3160(r30)
003af0  8b914110  add.s r3, r3, r4
003af4  67003fea  storeli.w r3, -2816(r30)
003af8  e3414fe7  loadli.w r3,  -3164(r30)
003afc  8b914110  add.s r3, r3, r4
003b00  67403fea  storeli.w r3, -2812(r30)
003b04  e3014fe7  loadli.w r3,  -3168(r30)
003b08  8b914110  add.s r3, r3, r4
003b0c  e7003fea  storeli.w r3, -2808(r30)
003b10  e3413fe7  loadli.w r3,  -3172(r30)
003b14  8b914110  add.s r3, r3, r4
003b18  e7403fea  storeli.w r3, -2804(r30)
003b1c  e3013fe7  loadli.w r3,  -3176(r30)
003b20  8b914110  add.s r3, r3, r4
003b24  67013fea  storeli.w r3, -2800(r30)
003b28  e3412fe7  loadli.w r3,  -3180(r30)
003b2c  8b914110  add.s r3, r3, r4
003b30  67413fea  storeli.w r3, -2796(r30)
003b34  e3012fe7  loadli.w r3,  -3184(r30)
003b38  8b914110  add.s r3, r3, r4
003b3c  e7013fea  storeli.w r3, -2792(r30)
003b40  e3411fe7  loadli.w r3,  -3188(r30)
003b44  8b914110  add.s r3, r3, r4
003b48  e7413fea  storeli.w r3, -2788(r30)
003b4c  e3011fe7  loadli.w r3,  -3192(r30)
003b50  8b914110  add.s r3, r3, r4
003b54  67023fea  storeli.w r3, -2784(r30)
003b58  e3410fe7  loadli.w r3,  -3196(r30)
003b5c  8b914110  add.s r3, r3, r4
003b60  67423fea  storeli.w r3, -2780(r30)
003b64  e3010fe7  loadli.w r3,  -3200(r30)
003b68  8b914110  add.s r3, r3, r4
003b6c  e7023fea  storeli.w r3, -2776(r30)
003b70  e341ffe6  loadli.w r3,  -3204(r30)
003b74  8b914110  add.s r3, r3, r4
003b78  e7423fea  storeli.w r3, -2772(r30)
003b7c  e301ffe6  loadli.w r3,  -3208(r30)
003b80  8b914110  add.s r3, r3, r4
003b84  67033fea  storeli.w r3, -2768(r30)
003b88  e341efe6  loadli.w r3,  -3212(r30)
003b8c  8b914110  add.s r3, r3, r4
003b90  67433fea  storeli.w r3, -2764(r30)
003b94  e301efe6  loadli.w r3,  -3216(r30)
003b98  8b914110  add.s r3, r3, r4
003b9c  e7033fea  storeli.w r3, -2760(r30)
003ba0  e341dfe6  loadli.w r3,  -3220(r30)
003ba4  8b914110  add.s r3, r3, r4
003ba8  e7433fea  storeli.w r3, -2756(r30)
003bac  e301dfe6  loadli.w r3,  -3224(r30)
003bb0  8b914110  add.s r3, r3, r4
003bb4  67043fea  storeli.w r3, -2752(r30)
003bb8  e341cfe6  loadli.w r3,  -3228(r30)
003bbc  8b914110  add.s r3, r3, r4
003bc0  67443fea  storeli.w r3, -2748(r30)
003bc4  e301cfe6  loadli.w r3,  -3232(r30)
003bc8  8b914110  add.s r3, r3, r4
003bcc  e7043fea  storeli.w r3, -2744(r30)
003bd0  e341bfe6  loadli.w r3,  -3236(r30)
003bd4  8b914110  add.s r3, r3, r4
003bd8  e7443fea  storeli.w r3, -2740(r30)
003bdc  e301bfe6  loadli.w r3,  -3240(r30)
003be0  8b914110  add.s r3, r3, r4
003be4  67053fea  storeli.w r3, -2736(r30)
003be8  e341afe6  loadli.w r3,  -3244(r30)
003bec  8b914110  add.s r3, r3, r4
003bf0  67453fea  storeli.w r3, -2732(r30)
003bf4  e301afe6  loadli.w r3,  -3248(r30)
003bf8  8b914110  add.s r3, r3, r4
003bfc  e7053fea  storeli.w r3, -2728(r30)
003c00  e3419fe6  loadli.w r3,  -3252(r30)
003c04  8b914110  add.s r3, r3, r4
003c08  e7453fea  storeli.w r3, -2724(r30)
003c0c  e3019fe6  loadli.w r3,  -3256(r30)
003c10  8b914110  add.s r3, r3, r4
003c14  67063fea  storeli.w r3, -2720(r30)
003c18  e3418fe6  loadli.w r3,  -3260(r30)
003c1c  8b914110  add.s r3, r3, r4
003c20  67463fea  storeli.w r3, -2716(r30)
003c24  e3018fe6  loadli.w r3,  -3264(r30)
003c28  8b914110  add.s r3, r3, r4
003c2c  e7063fea  storeli.w r3, -2712(r30)
003c30  e3417fe6  loadli.w r3,  -3268(r30)
003c34  8b914110  add.s r3, r3, r4
003c38  e7463fea  storeli.w r3, -2708(r30)
003c3c  e3017fe6  loadli.w r3,  -3272(r30)
003c40  8b914110  add.s r3, r3, r4
003c44  67073fea  storeli.w r3, -2704(r30)
003c48  e3416fe6  loadli.w r3,  -3276(r30)
003c4c  8b914110  add.s r3, r3, r4
003c50  67473fea  storeli.w r3, -2700(r30)
003c54  e3016fe6  loadli.w r3,  -3280(r30)
003c58  8b914110  add.s r3, r3, r4
003c5c  e7073fea  storeli.w r3, -2696(r30)
003c60  e3415fe6  loadli.w r3,  -3284(r30)
003c64  8b914110  add.s r3, r3, r4
003c68  e7473fea  storeli.w r3, -2692(r30)
003c6c  e3015fe6  loadli.w r3,  -3288(r30)
003c70  8b914110  add.s r3, r3, r4
003c74  67083fea  storeli.w r3, -2688(r30)
003c78  e3414fe6  loadli.w r3,  -3292(r30)
003c7c  8b914110  add.s r3, r3, r4
003c80  67483fea  storeli.w r3, -2684(r30)
003c84  e3014fe6  loadli.w r3,  -3296(r30)
003c88  8b914110  add.s r3, r3, r4
003c8c  e7083fea  storeli.w r3, -2680(r30)
003c90  e3413fe6  loadli.w r3,  -3300(r30)
003c94  8b914110  add.s r3, r3, r4
003c98  e7483fea  storeli.w r3, -2676(r30)
003c9c  e3013fe6  loadli.w r3,  -3304(r30)
003ca0  8b914110  add.s r3, r3, r4
003ca4  67093fea  storeli.w r3, -2672(r30)
003ca8  e3412fe6  loadli.w r3,  -3308(r30)
003cac  8b914110  add.s r3, r3, r4
003cb0  67493fea  storeli.w r3, -2668(r30)
003cb4  e3012fe6  loadli.w r3,  -3312(r30)
003cb8  8b914110  add.s r3, r3, r4
003cbc  e7093fea  storeli.w r3, -2664(r30)
003cc0  e3411fe6  loadli.w r3,  -3316(r30)
003cc4  8b914110  add.s r3, r3, r4
003cc8  e7493fea  storeli.w r3, -2660(r30)
003ccc  e3011fe6  loadli.w r3,  -3320(r30)
003cd0  8b914110  add.s r3, r3, r4
003cd4  670a3fea  storeli.w r3, -2656(r30)
003cd8  e3410fe6  loadli.w r3,  -3324(r30)
003cdc  8b914110  add.s r3, r3, r4
003ce0  674a3fea  storeli.w r3, -2652(r30)
003ce4  e3010fe6  loadli.w r3,  -3328(r30)
003ce8  8b914110  add.s r3, r3, r4
003cec  e70a3fea  storeli.w r3, -2648(r30)
003cf0  e341ffe5  loadli.w r3,  -3332(r30)
003cf4  8b914110  add.s r3, r3, r4
003cf8  e74a3fea  storeli.w r3, -2644(r30)
003cfc  e301ffe5  loadli.w r3,  -3336(r30)
003d00  8b914110  add.s r3, r3, r4
003d04  670b3fea  storeli.w r3, -2640(r30)
003d08  e341efe5  loadli.w r3,  -3340(r30)
003d0c  8b914110  add.s r3, r3, r4
003d10  674b3fea  storeli.w r3, -2636(r30)
003d14  e301efe5  loadli.w r3,  -3344(r30)
003d18  8b914110  add.s r3, r3, r4
003d1c  e70b3fea  storeli.w r3, -2632(r30)
003d20  e341dfe5  loadli.w r3,  -3348(r30)
003d24  8b914110  add.s r3, r3, r4
003d28  e74b3fea  storeli.w r3, -2628(r30)
003d2c  e301dfe5  loadli.w r3,  -3352(r30)
003d30  8b914110  add.s r3, r3, r4
003d34  670c3fea  storeli.w r3, -2624(r30)
003d38  e341cfe5  loadli.w r3,  -3356(r30)
003d3c  8b914110  add.s r3, r3, r4
003d40  674c3fea  storeli.w r3, -2620(r30)
003d44  e301cfe5  loadli.w r3,  -3360(r30)
003d48  8b914110  add.s r3, r3, r4
003d4c  e70c3fea  storeli.w r3, -2616(r30)
003d50  e341bfe5  loadli.w r3,  -3364(r30)
003d54  8b914110  add.s r3, r3, r4
003d58  e74c3fea  storeli.w r3, -2612(r30)
003d5c  e301bfe5  loadli.w r3,  -3368(r30)
003d60  8b914110  add.s r3, r3, r4
003d64  670d3fea  storeli.w r3, -2608(r30)
003d68  e341afe5  loadli.w r3,  -3372(r30)
003d6c  8b914110  add.s r3, r3, r4
003d70  674d3fea  storeli.w r3, -2604(r30)
003d74  e301afe5  loadli.w r3,  -3376(r30)
003d78  8b914110  add.s r3, r3, r4
003d7c  e70d3fea  storeli.w r3, -2600(r30)
003d80  e3419fe5  loadli.w r3,  -3380(r30)
003d84  8b914110  add.s r3, r3, r4
003d88  e74d3fea  storeli.w r3, -2596(r30)
003d8c  e3019fe5  loadli.w r3,  -3384(r30)
003d90  8b914110  add.s r3, r3, r4
003d94  670e3fea  storeli.w r3, -2592(r30)
003d98  e3418fe5  loadli.w r3,  -3388(r30)
003d9c  8b914110  add.s r3, r3, r4
003da0  674e3fea  storeli.w r3, -2588(r30)
003da4  e3018fe5  loadli.w r3,  -3392(r30)
003da8  8b914110  add.s r3, r3, r4
003dac  e70e3fea  storeli.w r3, -2584(r30)
003db0  e3417fe5  loadli.w r3,  -3396(r30)
003db4  8b914110  add.s r3, r3, r4
003db8  e74e3fea  storeli.w r3, -2580(r30)
003dbc  e3017fe5  loadli.w r3,  -3400(r30)
003dc0  8b914110  add.s r3, r3, r4
003dc4  670f3fea  storeli.w r3, -2576(r30)
003dc8  e3416fe5  loadli.w r3,  -3404(r30)
003dcc  8b914110  add.s r3, r3, r4
003dd0  674f3fea  storeli.w r3, -2572(r30)
003dd4  e3016fe5  loadli.w r3,  -3408(r30)
003dd8  8b914110  add.s r3, r3, r4
003ddc  e70f3fea  storeli.w r3, -2568(r30)
003de0  e3415fe5  loadli.w r3,  -3412(r30)
003de4  8b914110  add.s r3, r3, r4
003de8  e74f3fea  storeli.w r3, -2564(r30)
003dec  e3015fe5  loadli.w r3,  -3416(r30)
003df0  8b914110  add.s r3, r3, r4
003df4  67003fec  storeli.w r3, -2560(r30)
003df8  e3414fe5  loadli.w r3,  -3420(r30)
003dfc  8b914110  add.s r3, r3, r4
003e00  67403fec  storeli.w r3, -2556(r30)
003e04  e3014fe5  loadli.w r3,  -3424(r30)
003e08  8b914110  add.s r3, r3, r4
003e0c  e7003fec  storeli.w r3, -2552(r30)
003e10  e3413fe5  loadli.w r3,  -3428(r30)
003e14  8b914110  add.s r3, r3, r4
003e18  e7403fec  storeli.w r3, -2548(r30)
003e1c  e3013fe5  loadli.w r3,  -3432(r30)
003e20  8b914110  add.s r3, r3, r4
003e24  67013fec  storeli.w r3, -2544(r30)
003e28  e3412fe5  loadli.w r3,  -3436(r30)
003e2c  8b914110  add.s r3, r3, r4
003e30  67413fec  storeli.w r3, -2540(r30)
003e34  e3012fe5  loadli.w r3,  -3440(r30)
003e38  8b914110  add.s r3, r3, r4
003e3c  e7013fec  storeli.w r3, -2536(r30)
003e40  e3411fe5  loadli.w r3,  -3444(r30)
003e44  8b914110  add.s r3, r3, r4
003e48  e7413fec  storeli.w r3, -2532(r30)
003e4c  e3011fe5  loadli.w r3,  -3448(r30)
003e50  8b914110  add.s r3, r3, r4
003e54  67023fec  storeli.w r3, -2528(r30)
003e58  e3410fe5  loadli.w r3,  -3452(r30)
003e5c  8b914110  add.s r3, r3, r4
003e60  67423fec  storeli.w r3, -2524(r30)
003e64  e3010fe5  loadli.w r3,  -3456(r30)
003e68  8b914110  add.s r3, r3, r4
003e6c  e7023fec  storeli.w r3, -2520(r30)
003e70  e341ffe4  loadli.w r3,  -3460(r30)
003e74  8b914110  add.s r3, r3, r4
003e78  e7423fec  storeli.w r3, -2516(r30)
003e7c  e301ffe4  loadli.w r3,  -3464(r30)
003e80  8b914110  add.s r3, r3, r4
003e84  67033fec  storeli.w r3, -2512(r30)
003e88  e341efe4  loadli.w r3,  -3468(r30)
003e8c  8b914110  add.s r3, r3, r4
003e90  67433fec  storeli.w r3, -2508(r30)
003e94  e301efe4  loadli.w r3,  -3472(r30)
003e98  8b914110  add.s r3, r3, r4
003e9c  e7033fec  storeli.w r3, -2504(r30)
003ea0  e341dfe4  loadli.w r3,  -3476(r30)
003ea4  8b914110  add.s r3, r3, r4
003ea8  e7433fec  storeli.w r3, -2500(r30)
003eac  e301dfe4  loadli.w r3,  -3480(r30)
003eb0  8b914110  add.s r3, r3, r4
003eb4  67043fec  storeli.w r3, -2496(r30)
003eb8  e341cfe4  loadli.w r3,  -3484(r30)
003ebc  8b914110  add.s r3, r3, r4
003ec0  67443fec  storeli.w r3, -2492(r30)
003ec4  e301cfe4  loadli.w r3,  -3488(r30)
003ec8  8b914110  add.s r3, r3, r4
003ecc  e7043fec  storeli.w r3, -2488(r30)
003ed0  e341bfe4  loadli.w r3,  -3492(r30)
003ed4  8b914110  add.s r3, r3, r4
003ed8  e7443fec  storeli.w r3, -2484(r30)
003edc  e301bfe4  loadli.w r3,  -3496(r30)
003ee0  8b914110  add.s r3, r3, r4
003ee4  67053fec  storeli.w r3, -2480(r30)
003ee8  e341afe4  loadli.w r3,  -3500(r30)
003eec  8b914110  add.s r3, r3, r4
003ef0  67453fec  storeli.w r3, -2476(r30)
003ef4  e301afe4  loadli.w r3,  -3504(r30)
003ef8  8b914110  add.s r3, r3, r4
003efc  e7053fec  storeli.w r3, -2472(r30)
003f00  e3419fe4  loadli.w r3,  -3508(r30)
003f04  8b914110  add.s r3, r3, r4
003f08  e7453fec  storeli.w r3, -2468(r30)
003f0c  e3019fe4  loadli.w r3,  -3512(r30)
003f10  8b914110  add.s r3, r3, r4
003f14  67063fec  storeli.w r3, -2464(r30)
003f18  e3418fe4  loadli.w r3,  -3516(r30)
003f1c  8b914110  add.s r3, r3, r4
003f20  67463fec  storeli.w r3, -2460(r30)
003f24  e3018fe4  loadli.w r3,  -3520(r30)
003f28  8b914110  add.s r3, r3, r4
003f2c  e7063fec  storeli.w r3, -2456(r30)
003f30  e3417fe4  loadli.w r3,  -3524(r30)
003f34  8b914110  add.s r3, r3, r4
003f38  e7463fec  storeli.w r3, -2452(r30)
003f3c  e3017fe4  loadli.w r3,  -3528(r30)
003f40  8b914110  add.s r3, r3, r4
003f44  67073fec  storeli.w r3, -2448(r30)
003f48  e3416fe4  loadli.w r3,  -3532(r30)
003f4c  8b914110  add.s r3, r3, r4
003f50  67473fec  storeli.w r3, -2444(r30)
003f54  e3016fe4  loadli.w r3,  -3536(r30)
003f58  8b914110  add.s r3, r3, r4
003f5c  e7473fec  storeli.w r3, -2436(r30)
003f60  e3415fe4  loadli.w r3,  -3540(r30)
003f64  8b914110  add.s r3, r3, r4
003f68  e7073fec  storeli.w r3, -2440(r30)
003f6c  e3015fe4  loadli.w r3,  -3544(r30)
003f70  8b914110  add.s r3, r3, r4
003f74  67083fec  storeli.w r3, -2432(r30)
003f78  e3414fe4  loadli.w r3,  -3548(r30)
003f7c  8b914110  add.s r3, r3, r4
003f80  67483fec  storeli.w r3, -2428(r30)
003f84  e3014fe4  loadli.w r3,  -3552(r30)
003f88  8b914110  add.s r3, r3, r4
003f8c  e7083fec  storeli.w r3, -2424(r30)
003f90  e3413fe4  loadli.w r3,  -3556(r30)
003f94  8b914110  add.s r3, r3, r4
003f98  e7483fec  storeli.w r3, -2420(r30)
003f9c  e3013fe4  loadli.w r3,  -3560(r30)
003fa0  8b914110  add.s r3, r3, r4
003fa4  67093fec  storeli.w r3, -2416(r30)
003fa8  e3412fe4  loadli.w r3,  -3564(r30)
003fac  8b914110  add.s r3, r3, r4
003fb0  67493fec  storeli.w r3, -2412(r30)
003fb4  e3012fe4  loadli.w r3,  -3568(r30)
003fb8  8b914110  add.s r3, r3, r4
003fbc  e74b3fec  storeli.w r3, -2372(r30)
003fc0  db190000  j 204
003fc4  9f010000  addli r3, zero, 0
003fc8  1f020000  addli r4, zero, 0
003fcc  1f030000  addli r6, zero, 0
003fd0  1f040000  addli r8, zero, 0
003fd4  9f040000  addli r9, zero, 0
003fd8  9f050000  addli r11, zero, 0
003fdc  1f080000  addli r16, zero, 0
003fe0  9f080000  addli r17, zero, 0
003fe4  1f0a0000  addli r20, zero, 0
003fe8  1f050000  addli r10, zero, 0
003fec  1f0b0000  addli r22, zero, 0
003ff0  9f0b0000  addli r23, zero, 0
003ff4  1f0c0000  addli r24, zero, 0
003ff8  9f0c0000  addli r25, zero, 0
003ffc  1f060000  addli r12, zero, 0
004000  9f060000  addli r13, zero, 0
004004  0b693910  add.f.rn r18, r18, r3
004008  e301dfed  loadli.w r3,  -2328(r30)
00400c  8be26210  add.f.rn r5, r5, r6
004010  63030fef  loadli.w r6,  -2176(r30)
004014  e3030fee  loadli.w r7,  -2304(r30)
004018  8bea8a10  add.f.rn r21, r21, r8
00401c  6304ffed  loadli.w r8,  -2312(r30)
004020  6347dfed  loadli.w r14,  -2324(r30)
004024  e307cfed  loadli.w r15,  -2336(r30)
004028  0b614110  add.f.rn r2, r2, r4
00402c  9f808000  addli r1, r1, 64
004030  8be1a110  add.f.rn r3, r3, r10
004034  0b639310  add.f.rn r6, r6, r9
004038  e304efed  loadli.w r9,  -2320(r30)
00403c  8be3b310  add.f.rn r7, r7, r11
004040  e345cfed  loadli.w r11,  -2332(r30)
004044  0b640411  add.f.rn r8, r8, r16
004048  6348bfed  loadli.w r16,  -2340(r30)
00404c  0b674711  add.f.rn r14, r14, r20
004050  8be77711  add.f.rn r15, r15, r23
004054  8be41411  add.f.rn r9, r9, r17
004058  e308bfed  loadli.w r17,  -2344(r30)
00405c  8be56511  add.f.rn r11, r11, r22
004060  0b688811  add.f.rn r16, r16, r24
004064  1f850100  addli r10, r3, 0
004068  e341afed  loadli.w r3,  -2348(r30)
00406c  8be89811  add.f.rn r17, r17, r25
004070  8be1c110  add.f.rn r3, r3, r12
004074  1f860100  addli r12, r3, 0
004078  e301afed  loadli.w r3,  -2352(r30)
00407c  8be1d110  add.f.rn r3, r3, r13
004080  9f860100  addli r13, r3, 0
004084  9f010004  addli r3, zero, 512
004088  b7cb3002  beq r1, r3, 1776
00408c  67086fee  storeli.w r6, -2176(r30)
004090  0b131e10  add.s r6, r28, r1
004094  e70f8fec  storeli.w r8, -2312(r30)
004098  92309002  vadd.s.mz vr1{mr1}, zero, vr9
00409c  67007fee  storeli.w r7, -2304(r30)
0040a0  9f130000  addli r7, zero, 1
0040a4  670f9fec  storeli.w r9, -2320(r30)
0040a8  670ddfec  storeli.w r13, -2352(r30)
0040ac  674dcfec  storeli.w r12, -2348(r30)
0040b0  e70d1fed  storeli.w r17, -2344(r30)
0040b4  e74d0fed  storeli.w r16, -2340(r30)
0040b8  674ebfec  storeli.w r11, -2332(r30)
0040bc  e70eafec  storeli.w r10, -2328(r30)
0040c0  670effec  storeli.w r15, -2336(r30)
0040c4  12319002  vadd.s.mz vr2{mr1}, zero, vr9
0040c8  6b340300  load.hu r8, 0(r6)
0040cc  7e8103e0  vmmov mr2, r7
0040d0  eb342300  load.hu r9, 2(r6)
0040d4  6b32a301  load.hu r4, 26(r6)
0040d8  eb31c301  load.hu r3, 28(r6)
0040dc  6b354300  load.hu r10, 4(r6)
0040e0  eb356300  load.hu r11, 6(r6)
0040e4  6b368300  load.hu r12, 8(r6)
0040e8  eb36a300  load.hu r13, 10(r6)
0040ec  6b38c300  load.hu r16, 12(r6)
0040f0  eb38e300  load.hu r17, 14(r6)
0040f4  eb390301  load.hu r19, 16(r6)
0040f8  6b3a2301  load.hu r20, 18(r6)
0040fc  6b3b4301  load.hu r22, 20(r6)
004100  eb3b6301  load.hu r23, 22(r6)
004104  6b3c8301  load.hu r24, 24(r6)
004108  6b33e301  load.hu r6, 30(r6)
00410c  9f230000  addli r7, zero, 2
004110  fe8103e0  vmmov mr3, r7
004114  9f430000  addli r7, zero, 4
004118  33140418  bfloat2float.rn r8, r8
00411c  33120218  bfloat2float.rn r4, r4
004120  b3910118  bfloat2float.rn r3, r3
004124  7e8003e0  vmmov mr0, r7
004128  9f031000  addli r7, zero, 8
00412c  ea201434  vor.u.mh vr1{mr2}, r8, vr1
004130  33940418  bfloat2float.rn r8, r9
004134  ea201436  vor.u.mh vr1{mr3}, r8, vr1
004138  33140518  bfloat2float.rn r8, r10
00413c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
004140  33940518  bfloat2float.rn r8, r11
004144  7e8003e0  vmmov mr0, r7
004148  9f032000  addli r7, zero, 16
00414c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
004150  33140618  bfloat2float.rn r8, r12
004154  7e8003e0  vmmov mr0, r7
004158  9f034000  addli r7, zero, 32
00415c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
004160  33940618  bfloat2float.rn r8, r13
004164  7e8003e0  vmmov mr0, r7
004168  9f038000  addli r7, zero, 64
00416c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
004170  33140818  bfloat2float.rn r8, r16
004174  7e8003e0  vmmov mr0, r7
004178  9f030001  addli r7, zero, 128
00417c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
004180  33940818  bfloat2float.rn r8, r17
004184  7e8003e0  vmmov mr0, r7
004188  9f030002  addli r7, zero, 256
00418c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
004190  33940918  bfloat2float.rn r8, r19
004194  7e8003e0  vmmov mr0, r7
004198  9f030004  addli r7, zero, 512
00419c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0041a0  33140a18  bfloat2float.rn r8, r20
0041a4  7e8003e0  vmmov mr0, r7
0041a8  9f030008  addli r7, zero, 1024
0041ac  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0041b0  33140b18  bfloat2float.rn r8, r22
0041b4  7e8003e0  vmmov mr0, r7
0041b8  9f030010  addli r7, zero, 2048
0041bc  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0041c0  33940b18  bfloat2float.rn r8, r23
0041c4  7e8003e0  vmmov mr0, r7
0041c8  9f030020  addli r7, zero, 4096
0041cc  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0041d0  33140c18  bfloat2float.rn r8, r24
0041d4  7e8003e0  vmmov mr0, r7
0041d8  9f030040  addli r7, zero, 8192
0041dc  ea201430  vor.u.mh vr1{mr0}, r8, vr1
0041e0  7e8003e0  vmmov mr0, r7
0041e4  ab03807f  lui r7, 522240
0041e8  ea201230  vor.u.mh vr1{mr0}, r4, vr1
0041ec  2b420000  lui r4, 4
0041f0  7e0002e0  vmmov mr0, r4
0041f4  1f020ffa  addli r4, r30, -768
0041f8  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0041fc  b3110318  bfloat2float.rn r3, r6
004200  2b830000  lui r6, 8
004204  0b121210  add.s r4, r4, r1
004208  7e0003e0  vmmov mr0, r6
00420c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
004210  eb310200  load.hu r3, 0(r4)
004214  6b332200  load.hu r6, 2(r4)
004218  6b344200  load.hu r8, 4(r4)
00421c  eb346200  load.hu r9, 6(r4)
004220  6b358200  load.hu r10, 8(r4)
004224  eb35a200  load.hu r11, 10(r4)
004228  6b36c200  load.hu r12, 12(r4)
00422c  eb36e200  load.hu r13, 14(r4)
004230  6b380201  load.hu r16, 16(r4)
004234  eb382201  load.hu r17, 18(r4)
004238  eb394201  load.hu r19, 20(r4)
00423c  6b3a6201  load.hu r20, 22(r4)
004240  6b3b8201  load.hu r22, 24(r4)
004244  eb3ba201  load.hu r23, 26(r4)
004248  6b3cc201  load.hu r24, 28(r4)
00424c  6b32e201  load.hu r4, 30(r4)
004250  b3910118  bfloat2float.rn r3, r3
004254  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
004258  b3110318  bfloat2float.rn r3, r6
00425c  1f430000  addli r6, zero, 4
004260  7e0103e0  vmmov mr2, r6
004264  1f031000  addli r6, zero, 8
004268  6aa12136  vor.u.mh vr2{mr3}, r3, vr2
00426c  b3110418  bfloat2float.rn r3, r8
004270  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
004274  b3910418  bfloat2float.rn r3, r9
004278  7e0103e0  vmmov mr2, r6
00427c  1f032000  addli r6, zero, 16
004280  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
004284  b3110518  bfloat2float.rn r3, r10
004288  7e0103e0  vmmov mr2, r6
00428c  1f034000  addli r6, zero, 32
004290  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
004294  b3910518  bfloat2float.rn r3, r11
004298  7e0103e0  vmmov mr2, r6
00429c  1f038000  addli r6, zero, 64
0042a0  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
0042a4  b3110618  bfloat2float.rn r3, r12
0042a8  7e0103e0  vmmov mr2, r6
0042ac  1f030001  addli r6, zero, 128
0042b0  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
0042b4  b3910618  bfloat2float.rn r3, r13
0042b8  7e0103e0  vmmov mr2, r6
0042bc  1f030002  addli r6, zero, 256
0042c0  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
0042c4  b3110818  bfloat2float.rn r3, r16
0042c8  7e0103e0  vmmov mr2, r6
0042cc  1f030004  addli r6, zero, 512
0042d0  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
0042d4  b3910818  bfloat2float.rn r3, r17
0042d8  7e0103e0  vmmov mr2, r6
0042dc  1f030008  addli r6, zero, 1024
0042e0  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
0042e4  b3910918  bfloat2float.rn r3, r19
0042e8  7e0103e0  vmmov mr2, r6
0042ec  1f030010  addli r6, zero, 2048
0042f0  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
0042f4  b3110a18  bfloat2float.rn r3, r20
0042f8  7e0103e0  vmmov mr2, r6
0042fc  1f030020  addli r6, zero, 4096
004300  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
004304  b3110b18  bfloat2float.rn r3, r22
004308  7e0103e0  vmmov mr2, r6
00430c  1f030040  addli r6, zero, 8192
004310  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
004314  b3910b18  bfloat2float.rn r3, r23
004318  7e0103e0  vmmov mr2, r6
00431c  2b430000  lui r6, 4
004320  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
004324  b3110c18  bfloat2float.rn r3, r24
004328  7e0103e0  vmmov mr2, r6
00432c  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
004330  b3110218  bfloat2float.rn r3, r4
004334  6aa12130  vor.u.mh vr2{mr0}, r3, vr2
004338  9f010ff0  addli r3, r30, -2048
00433c  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
004340  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
004344  00a00000  mfence { lm }
004348  e3060ff0  loadli.w r13,  -2048(r30)
00434c  63460ff0  loadli.w r12,  -2044(r30)
004350  63051ff0  loadli.w r10,  -2040(r30)
004354  e3441ff0  loadli.w r9,  -2036(r30)
004358  e30c2ff0  loadli.w r25,  -2032(r30)
00435c  63482ff0  loadli.w r16,  -2028(r30)
004360  e3013ff0  loadli.w r3,  -2024(r30)
004364  63443ff0  loadli.w r8,  -2020(r30)
004368  63024ff0  loadli.w r4,  -2016(r30)
00436c  e34b4ff0  loadli.w r23,  -2012(r30)
004370  630a5ff0  loadli.w r20,  -2008(r30)
004374  1783b601  and r6, r13, r27
004378  93896304  setlt.u r19, r7, r6
00437c  63435ff0  loadli.w r6,  -2004(r30)
004380  630c6ff0  loadli.w r24,  -2000(r30)
004384  634b6ff0  loadli.w r22,  -1996(r30)
004388  e3087ff0  loadli.w r17,  -1992(r30)
00438c  e3457ff0  loadli.w r11,  -1988(r30)
004390  3be00900  bneq r19, zero, 24
004394  9bc90601  srli r19, r13, 16
004398  9b891900  andi r19, r19, 1
00439c  8b963611  add.s r13, r13, r19
0043a0  8b99a611  add.s r19, r13, r26
0043a4  db010000  j 12
0043a8  ab034000  lui r7, 1024
0043ac  97997600  or r19, r13, r7
0043b0  9706b601  and r13, r12, r27
0043b4  ab03807f  lui r7, 522240
0043b8  e307ffee  loadli.w r15,  -2184(r30)
0043bc  9386d304  setlt.u r13, r7, r13
0043c0  3be00600  bneq r13, zero, 24
0043c4  9b460601  srli r13, r12, 16
0043c8  9b861600  andi r13, r13, 1
0043cc  0b16d610  add.s r12, r12, r13
0043d0  8b13a611  add.s r7, r12, r26
0043d4  db010000  j 12
0043d8  ab034000  lui r7, 1024
0043dc  97137600  or r7, r12, r7
0043e0  e74c7fec  storeli.w r7, -2356(r30)
0043e4  1706b501  and r12, r10, r27
0043e8  ab03807f  lui r7, 522240
0043ec  1386c304  setlt.u r12, r7, r12
0043f0  3b600600  bneq r12, zero, 24
0043f4  1b460501  srli r12, r10, 16
0043f8  1b061600  andi r12, r12, 1
0043fc  0b15c510  add.s r10, r10, r12
004400  8b13a511  add.s r7, r10, r26
004404  db010000  j 12
004408  ab034000  lui r7, 1024
00440c  97137500  or r7, r10, r7
004410  e70c7fec  storeli.w r7, -2360(r30)
004414  1785b401  and r10, r9, r27
004418  ab03807f  lui r7, 522240
00441c  1385a304  setlt.u r10, r7, r10
004420  3b600500  bneq r10, zero, 24
004424  1bc50401  srli r10, r9, 16
004428  1b051500  andi r10, r10, 1
00442c  8b94a410  add.s r9, r9, r10
004430  8b93a411  add.s r7, r9, r26
004434  db010000  j 12
004438  ab034000  lui r7, 1024
00443c  97937400  or r7, r9, r7
004440  674c7fec  storeli.w r7, -2364(r30)
004444  9784bc01  and r9, r25, r27
004448  ab03807f  lui r7, 522240
00444c  93849304  setlt.u r9, r7, r9
004450  3be00400  bneq r9, zero, 24
004454  9bc40c01  srli r9, r25, 16
004458  9b841400  andi r9, r9, 1
00445c  8b949c10  add.s r9, r25, r9
004460  8b9ca411  add.s r25, r9, r26
004464  db010000  j 12
004468  ab034000  lui r7, 1024
00446c  979c7c00  or r25, r25, r7
004470  9704b801  and r9, r16, r27
004474  ab03807f  lui r7, 522240
004478  93849304  setlt.u r9, r7, r9
00447c  3be00400  bneq r9, zero, 24
004480  9b440801  srli r9, r16, 16
004484  9b841400  andi r9, r9, 1
004488  8b149810  add.s r9, r16, r9
00448c  0b98a411  add.s r16, r9, r26
004490  db010000  j 12
004494  ab034000  lui r7, 1024
004498  17187800  or r16, r16, r7
00449c  9784b101  and r9, r3, r27
0044a0  ab03807f  lui r7, 522240
0044a4  93849304  setlt.u r9, r7, r9
0044a8  3be00400  bneq r9, zero, 24
0044ac  9bc40101  srli r9, r3, 16
0044b0  9b841400  andi r9, r9, 1
0044b4  8b919110  add.s r3, r3, r9
0044b8  8b91a111  add.s r3, r3, r26
0044bc  db010000  j 12
0044c0  ab034000  lui r7, 1024
0044c4  97917100  or r3, r3, r7
0044c8  9704b401  and r9, r8, r27
0044cc  ab03807f  lui r7, 522240
0044d0  93849304  setlt.u r9, r7, r9
0044d4  3be00400  bneq r9, zero, 24
0044d8  9b440401  srli r9, r8, 16
0044dc  9b841400  andi r9, r9, 1
0044e0  0b149410  add.s r8, r8, r9
0044e4  0b14a411  add.s r8, r8, r26
0044e8  db010000  j 12
0044ec  ab034000  lui r7, 1024
0044f0  17147400  or r8, r8, r7
0044f4  9704b201  and r9, r4, r27
0044f8  ab03807f  lui r7, 522240
0044fc  93849304  setlt.u r9, r7, r9
004500  3be00400  bneq r9, zero, 24
004504  9b440201  srli r9, r4, 16
004508  9b841400  andi r9, r9, 1
00450c  0b129210  add.s r4, r4, r9
004510  0b12a211  add.s r4, r4, r26
004514  db010000  j 12
004518  ab034000  lui r7, 1024
00451c  17127200  or r4, r4, r7
004520  9784bb01  and r9, r23, r27
004524  ab03807f  lui r7, 522240
004528  93849304  setlt.u r9, r7, r9
00452c  3be00400  bneq r9, zero, 24
004530  9bc40b01  srli r9, r23, 16
004534  9b841400  andi r9, r9, 1
004538  8b949b10  add.s r9, r23, r9
00453c  8b9ba411  add.s r23, r9, r26
004540  db010000  j 12
004544  ab034000  lui r7, 1024
004548  979b7b00  or r23, r23, r7
00454c  9704ba01  and r9, r20, r27
004550  ab03807f  lui r7, 522240
004554  93849304  setlt.u r9, r7, r9
004558  3be00400  bneq r9, zero, 24
00455c  9b440a01  srli r9, r20, 16
004560  9b841400  andi r9, r9, 1
004564  8b149a10  add.s r9, r20, r9
004568  0b9aa411  add.s r20, r9, r26
00456c  db010000  j 12
004570  ab034000  lui r7, 1024
004574  171a7a00  or r20, r20, r7
004578  9704b301  and r9, r6, r27
00457c  ab03807f  lui r7, 522240
004580  93849304  setlt.u r9, r7, r9
004584  3be00400  bneq r9, zero, 24
004588  9b440301  srli r9, r6, 16
00458c  9b841400  andi r9, r9, 1
004590  0b139310  add.s r6, r6, r9
004594  0b13a311  add.s r6, r6, r26
004598  db010000  j 12
00459c  ab034000  lui r7, 1024
0045a0  17137300  or r6, r6, r7
0045a4  9704bc01  and r9, r24, r27
0045a8  ab03807f  lui r7, 522240
0045ac  93849304  setlt.u r9, r7, r9
0045b0  3be00400  bneq r9, zero, 24
0045b4  9b440c01  srli r9, r24, 16
0045b8  9b841400  andi r9, r9, 1
0045bc  8b149c10  add.s r9, r24, r9
0045c0  8b94a411  add.s r9, r9, r26
0045c4  db010000  j 12
0045c8  ab034000  lui r7, 1024
0045cc  97147c00  or r9, r24, r7
0045d0  1705bb01  and r10, r22, r27
0045d4  ab03807f  lui r7, 522240
0045d8  1385a304  setlt.u r10, r7, r10
0045dc  3b600500  bneq r10, zero, 24
0045e0  1b450b01  srli r10, r22, 16
0045e4  1b051500  andi r10, r10, 1
0045e8  0b15ab10  add.s r10, r22, r10
0045ec  0b15a511  add.s r10, r10, r26
0045f0  db010000  j 12
0045f4  ab034000  lui r7, 1024
0045f8  17157b00  or r10, r22, r7
0045fc  1786b801  and r12, r17, r27
004600  ab03807f  lui r7, 522240
004604  e74eefec  storeli.w r14, -2324(r30)
004608  1386c304  setlt.u r12, r7, r12
00460c  3b600600  bneq r12, zero, 24
004610  1bc60801  srli r12, r17, 16
004614  1b061600  andi r12, r12, 1
004618  0b96c810  add.s r12, r17, r12
00461c  0b16a611  add.s r12, r12, r26
004620  db010000  j 12
004624  ab034000  lui r7, 1024
004628  17967800  or r12, r17, r7
00462c  9786b501  and r13, r11, r27
004630  ab03807f  lui r7, 522240
004634  1f078000  addli r14, zero, 64
004638  9386d304  setlt.u r13, r7, r13
00463c  3bf00600  bneq r13, zero, 28
004640  9bc60501  srli r13, r11, 16
004644  9b861600  andi r13, r13, 1
004648  8b95d510  add.s r11, r11, r13
00464c  8b95a511  add.s r11, r11, r26
004650  3fe0e700  blt.s r15, r14, 24
004654  5b2effff  j -1680
004658  ab034000  lui r7, 1024
00465c  97957500  or r11, r11, r7
004660  3fa0e700  blt.s r15, r14, 8
004664  5b2cffff  j -1696
004668  63479fed  loadli.w r14,  -2356(r30)
00466c  ab03ffff  lui r7, 1048560
004670  97867900  and r13, r19, r7
004674  178c7c00  and r24, r25, r7
004678  17087800  and r16, r16, r7
00467c  97817100  and r3, r3, r7
004680  17047400  and r8, r8, r7
004684  17027200  and r4, r4, r7
004688  978b7b00  and r23, r23, r7
00468c  170a7a00  and r20, r20, r7
004690  17037300  and r6, r6, r7
004694  97847400  and r9, r9, r7
004698  17057500  and r10, r10, r7
00469c  17067600  and r12, r12, r7
0046a0  97857500  and r11, r11, r7
0046a4  97087700  and r17, r14, r7
0046a8  63079fed  loadli.w r14,  -2360(r30)
0046ac  97097700  and r19, r14, r7
0046b0  63478fed  loadli.w r14,  -2364(r30)
0046b4  170b7700  and r22, r14, r7
0046b8  e3038fed  loadli.w r7,  -2368(r30)
0046bc  8be67618  sub.f.rn r13, r13, r7
0046c0  0b6c7c18  sub.f.rn r24, r24, r7
0046c4  8bed7418  sub.f.rn r27, r9, r7
0046c8  8beb7b18  sub.f.rn r23, r23, r7
0046cc  0b6d7318  sub.f.rn r26, r6, r7
0046d0  0b667618  sub.f.rn r12, r12, r7
0046d4  8be97918  sub.f.rn r19, r19, r7
0046d8  8bec7118  sub.f.rn r25, r3, r7
0046dc  9f810a00  addli r3, r21, 0
0046e0  9f8a0000  addli r21, r1, 0
0046e4  9f800200  addli r1, r5, 0
0046e8  9f020100  addli r5, r2, 0
0046ec  1f010900  addli r2, r18, 0
0046f0  0b6e7518  sub.f.rn r28, r10, r7
0046f4  8be87818  sub.f.rn r17, r17, r7
0046f8  8b677218  sub.f.rn r15, r4, r7
0046fc  0b697a18  sub.f.rn r18, r20, r7
004700  0b6b7b18  sub.f.rn r22, r22, r7
004704  0b677418  sub.f.rn r14, r8, r7
004708  0b687818  sub.f.rn r16, r16, r7
00470c  8be37518  sub.f.rn r7, r11, r7
004710  8f860600  exp.f.rn r13, r13
004714  8f040c00  exp.f.rn r9, r24
004718  0f850b00  exp.f.rn r10, r23
00471c  8f0b0d00  exp.f.rn r23, r26
004720  0f8c0d00  exp.f.rn r24, r27
004724  630dffef  loadli.w r26,  -2056(r30)
004728  e34dffef  loadli.w r27,  -2052(r30)
00472c  0f820800  exp.f.rn r4, r17
004730  0f040b00  exp.f.rn r8, r22
004734  8f050800  exp.f.rn r11, r16
004738  0f880c00  exp.f.rn r16, r25
00473c  0f0b0900  exp.f.rn r22, r18
004740  1f090100  addli r18, r2, 0
004744  1f810200  addli r2, r5, 0
004748  9f820000  addli r5, r1, 0
00474c  9f800a00  addli r1, r21, 0
004750  9f8a0100  addli r21, r3, 0
004754  8f0c0e00  exp.f.rn r25, r28
004758  0f830900  exp.f.rn r6, r19
00475c  8f080700  exp.f.rn r17, r14
004760  0f8a0700  exp.f.rn r20, r15
004764  1f0e0ff8  addli r28, r30, -1024
004768  0f060600  exp.f.rn r12, r12
00476c  9f810600  addli r3, r13, 0
004770  8f860300  exp.f.rn r13, r7
004774  5b12ffff  j -1904
004778  8b602910  add.f.rn r1, r18, r2
00477c  63412fe9  loadli.w r2,  -2924(r30)
004780  8be05010  add.f.rn r1, r1, r5
004784  8be05011  add.f.rn r1, r1, r21
004788  8be06010  add.f.rn r1, r1, r6
00478c  8be07010  add.f.rn r1, r1, r7
004790  8be08010  add.f.rn r1, r1, r8
004794  8be09010  add.f.rn r1, r1, r9
004798  8be0e010  add.f.rn r1, r1, r14
00479c  8be0a010  add.f.rn r1, r1, r10
0047a0  8be0b010  add.f.rn r1, r1, r11
0047a4  8be0f010  add.f.rn r1, r1, r15
0047a8  8be00011  add.f.rn r1, r1, r16
0047ac  8be01011  add.f.rn r1, r1, r17
0047b0  8be0c010  add.f.rn r1, r1, r12
0047b4  8be0d010  add.f.rn r1, r1, r13
0047b8  73601100  stores.w r1, 0(r2)
0047bc  00a00300  mfence { lm, sm, gm }
0047c0  63027fed  loadli.w r4,  -2376(r30)
0047c4  80210204  csr_set csr3, r4
0047c8  00d00100  sync_group
0047cc  e3406fed  loadli.w r1,  -2380(r30)
0047d0  3ba10000  bneq r1, zero, 72
0047d4  e3423fe9  loadli.w r5,  -2916(r30)
0047d8  efc00200  loads.w r1, 0(r5)
0047dc  6fc14200  loads.w r2, 4(r5)
0047e0  efc18200  loads.w r3, 8(r5)
0047e4  8be02010  add.f.rn r1, r1, r2
0047e8  6fc1c200  loads.w r2, 12(r5)
0047ec  8be03010  add.f.rn r1, r1, r3
0047f0  efc10201  loads.w r3, 16(r5)
0047f4  8be02010  add.f.rn r1, r1, r2
0047f8  6fc14201  loads.w r2, 20(r5)
0047fc  8be03010  add.f.rn r1, r1, r3
004800  efc18201  loads.w r3, 24(r5)
004804  8be02010  add.f.rn r1, r1, r2
004808  6fc1c201  loads.w r2, 28(r5)
00480c  8be03010  add.f.rn r1, r1, r3
004810  8be02010  add.f.rn r1, r1, r2
004814  73e01200  stores.w r1, 0(r5)
004818  00a00300  mfence { lm, sm, gm }
00481c  80210204  csr_set csr3, r4
004820  00d00100  sync_group
004824  e3403fe9  loadli.w r1,  -2916(r30)
004828  2b01803f  lui r2, 260096
00482c  e30a8fed  loadli.w r21,  -2368(r30)
004830  9f010000  addli r3, zero, 0
004834  efc00000  loads.w r1, 0(r1)
004838  8f001118  div.f.rn r1, r2, r1
00483c  1f012e00  addli r2, r28, 16
004840  db350000  j 428
004844  9bc90201  srli r19, r5, 16
004848  9b891900  andi r19, r19, 1
00484c  8b923211  add.s r5, r5, r19
004850  8b92a211  add.s r5, r5, r26
004854  2b0bffff  lui r22, 1048560
004858  9f818100  addli r3, r3, 64
00485c  17026201  and r4, r4, r22
004860  17036301  and r6, r6, r22
004864  17046401  and r8, r8, r22
004868  17056501  and r10, r10, r22
00486c  17066601  and r12, r12, r22
004870  97876701  and r15, r15, r22
004874  97886801  and r17, r17, r22
004878  97096a01  and r19, r20, r22
00487c  17096901  and r18, r18, r22
004880  17086801  and r16, r16, r22
004884  17076701  and r14, r14, r22
004888  97866601  and r13, r13, r22
00488c  97856501  and r11, r11, r22
004890  97846401  and r9, r9, r22
004894  97836301  and r7, r7, r22
004898  97826201  and r5, r5, r22
00489c  0b625219  sub.f.rn r4, r4, r21
0048a0  0b635319  sub.f.rn r6, r6, r21
0048a4  0b645419  sub.f.rn r8, r8, r21
0048a8  0b655519  sub.f.rn r10, r10, r21
0048ac  0b665619  sub.f.rn r12, r12, r21
0048b0  8be75719  sub.f.rn r15, r15, r21
0048b4  8be85819  sub.f.rn r17, r17, r21
0048b8  8be95919  sub.f.rn r19, r19, r21
0048bc  0b695919  sub.f.rn r18, r18, r21
0048c0  0b685819  sub.f.rn r16, r16, r21
0048c4  0b675719  sub.f.rn r14, r14, r21
0048c8  8be65619  sub.f.rn r13, r13, r21
0048cc  8be55519  sub.f.rn r11, r11, r21
0048d0  8be45419  sub.f.rn r9, r9, r21
0048d4  8be35319  sub.f.rn r7, r7, r21
0048d8  8be25219  sub.f.rn r5, r5, r21
0048dc  0f020200  exp.f.rn r4, r4
0048e0  0f030300  exp.f.rn r6, r6
0048e4  0f040400  exp.f.rn r8, r8
0048e8  0f050500  exp.f.rn r10, r10
0048ec  0f060600  exp.f.rn r12, r12
0048f0  8f870700  exp.f.rn r15, r15
0048f4  8f880800  exp.f.rn r17, r17
0048f8  8f890900  exp.f.rn r19, r19
0048fc  0f090900  exp.f.rn r18, r18
004900  0f080800  exp.f.rn r16, r16
004904  0f070700  exp.f.rn r14, r14
004908  8f860600  exp.f.rn r13, r13
00490c  8f850500  exp.f.rn r11, r11
004910  8f840400  exp.f.rn r9, r9
004914  8f830300  exp.f.rn r7, r7
004918  8f820200  exp.f.rn r5, r5
00491c  0be24020  mul.f.rn r4, r1, r4
004920  0be36020  mul.f.rn r6, r1, r6
004924  0be48020  mul.f.rn r8, r1, r8
004928  0be5a020  mul.f.rn r10, r1, r10
00492c  0be6c020  mul.f.rn r12, r1, r12
004930  8be7f020  mul.f.rn r15, r1, r15
004934  8be81021  mul.f.rn r17, r1, r17
004938  8be93021  mul.f.rn r19, r1, r19
00493c  0be92021  mul.f.rn r18, r1, r18
004940  0be80021  mul.f.rn r16, r1, r16
004944  0be7e020  mul.f.rn r14, r1, r14
004948  8be6d020  mul.f.rn r13, r1, r13
00494c  8be5b020  mul.f.rn r11, r1, r11
004950  8be25020  mul.f.rn r5, r1, r5
004954  8be49020  mul.f.rn r9, r1, r9
004958  8be37020  mul.f.rn r7, r1, r7
00495c  33120200  float2bfloat.rn r4, r4
004960  33130300  float2bfloat.rn r6, r6
004964  b3920200  float2bfloat.rn r5, r5
004968  731841fe  store.h r4, -16(r2)
00496c  33120400  float2bfloat.rn r4, r8
004970  731961fe  store.h r6, -14(r2)
004974  33130500  float2bfloat.rn r6, r10
004978  73175100  store.h r5, 14(r2)
00497c  731a41fe  store.h r4, -12(r2)
004980  33120600  float2bfloat.rn r4, r12
004984  731b61fe  store.h r6, -10(r2)
004988  33930700  float2bfloat.rn r6, r15
00498c  731c41fe  store.h r4, -8(r2)
004990  33920800  float2bfloat.rn r4, r17
004994  731d61fe  store.h r6, -6(r2)
004998  33930900  float2bfloat.rn r6, r19
00499c  731e41fe  store.h r4, -4(r2)
0049a0  33120900  float2bfloat.rn r4, r18
0049a4  731f61fe  store.h r6, -2(r2)
0049a8  33130800  float2bfloat.rn r6, r16
0049ac  73104100  store.h r4, 0(r2)
0049b0  33120700  float2bfloat.rn r4, r14
0049b4  73116100  store.h r6, 2(r2)
0049b8  33930600  float2bfloat.rn r6, r13
0049bc  73124100  store.h r4, 4(r2)
0049c0  33920500  float2bfloat.rn r4, r11
0049c4  73136100  store.h r6, 6(r2)
0049c8  33930400  float2bfloat.rn r6, r9
0049cc  73144100  store.h r4, 8(r2)
0049d0  33920300  float2bfloat.rn r4, r7
0049d4  73156100  store.h r6, 10(r2)
0049d8  73164100  store.h r4, 12(r2)
0049dc  1f014100  addli r2, r2, 32
0049e0  1f020004  addli r4, zero, 512
0049e4  00a00000  mfence { lm }
0049e8  b7ff41dc  beq r3, r4, -17412
0049ec  0b133e10  add.s r6, r28, r3
0049f0  92309002  vadd.s.mz vr1{mr1}, zero, vr9
0049f4  1f1a0000  addli r20, zero, 1
0049f8  12319002  vadd.s.mz vr2{mr1}, zero, vr9
0049fc  eb330300  load.hu r7, 0(r6)
004a00  6b342300  load.hu r8, 2(r6)
004a04  7e010ae0  vmmov mr2, r20
004a08  eb32a301  load.hu r5, 26(r6)
004a0c  6b32c301  load.hu r4, 28(r6)
004a10  eb344300  load.hu r9, 4(r6)
004a14  6b356300  load.hu r10, 6(r6)
004a18  eb358300  load.hu r11, 8(r6)
004a1c  6b36a300  load.hu r12, 10(r6)
004a20  eb36c300  load.hu r13, 12(r6)
004a24  6b37e300  load.hu r14, 14(r6)
004a28  eb370301  load.hu r15, 16(r6)
004a2c  6b382301  load.hu r16, 18(r6)
004a30  eb384301  load.hu r17, 20(r6)
004a34  6b396301  load.hu r18, 22(r6)
004a38  eb398301  load.hu r19, 24(r6)
004a3c  6b33e301  load.hu r6, 30(r6)
004a40  b3930318  bfloat2float.rn r7, r7
004a44  b3920218  bfloat2float.rn r5, r5
004a48  33120218  bfloat2float.rn r4, r4
004a4c  eaa01334  vor.u.mh vr1{mr2}, r7, vr1
004a50  b3130418  bfloat2float.rn r7, r8
004a54  1f240000  addli r8, zero, 2
004a58  fe0104e0  vmmov mr3, r8
004a5c  1f440000  addli r8, zero, 4
004a60  eaa01336  vor.u.mh vr1{mr3}, r7, vr1
004a64  b3930418  bfloat2float.rn r7, r9
004a68  7e0004e0  vmmov mr0, r8
004a6c  1f041000  addli r8, zero, 8
004a70  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
004a74  b3130518  bfloat2float.rn r7, r10
004a78  7e0004e0  vmmov mr0, r8
004a7c  1f042000  addli r8, zero, 16
004a80  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
004a84  b3930518  bfloat2float.rn r7, r11
004a88  7e0004e0  vmmov mr0, r8
004a8c  1f044000  addli r8, zero, 32
004a90  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
004a94  b3130618  bfloat2float.rn r7, r12
004a98  7e0004e0  vmmov mr0, r8
004a9c  1f048000  addli r8, zero, 64
004aa0  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
004aa4  b3930618  bfloat2float.rn r7, r13
004aa8  7e0004e0  vmmov mr0, r8
004aac  1f040001  addli r8, zero, 128
004ab0  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
004ab4  b3130718  bfloat2float.rn r7, r14
004ab8  7e0004e0  vmmov mr0, r8
004abc  1f040002  addli r8, zero, 256
004ac0  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
004ac4  b3930718  bfloat2float.rn r7, r15
004ac8  7e0004e0  vmmov mr0, r8
004acc  1f040004  addli r8, zero, 512
004ad0  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
004ad4  b3130818  bfloat2float.rn r7, r16
004ad8  7e0004e0  vmmov mr0, r8
004adc  1f040008  addli r8, zero, 1024
004ae0  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
004ae4  b3930818  bfloat2float.rn r7, r17
004ae8  7e0004e0  vmmov mr0, r8
004aec  1f040010  addli r8, zero, 2048
004af0  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
004af4  b3130918  bfloat2float.rn r7, r18
004af8  7e0004e0  vmmov mr0, r8
004afc  1f040020  addli r8, zero, 4096
004b00  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
004b04  b3930918  bfloat2float.rn r7, r19
004b08  7e0004e0  vmmov mr0, r8
004b0c  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
004b10  9f030040  addli r7, zero, 8192
004b14  7e8003e0  vmmov mr0, r7
004b18  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
004b1c  ab420000  lui r5, 4
004b20  7e8002e0  vmmov mr0, r5
004b24  9f020ffa  addli r5, r30, -768
004b28  ea201230  vor.u.mh vr1{mr0}, r4, vr1
004b2c  33120318  bfloat2float.rn r4, r6
004b30  2b830000  lui r6, 8
004b34  8b923210  add.s r5, r5, r3
004b38  7e0003e0  vmmov mr0, r6
004b3c  ea201230  vor.u.mh vr1{mr0}, r4, vr1
004b40  6bb20200  load.hu r4, 0(r5)
004b44  6bb32200  load.hu r6, 2(r5)
004b48  ebb34200  load.hu r7, 4(r5)
004b4c  6bb46200  load.hu r8, 6(r5)
004b50  ebb48200  load.hu r9, 8(r5)
004b54  6bb5a200  load.hu r10, 10(r5)
004b58  ebb5c200  load.hu r11, 12(r5)
004b5c  6bb6e200  load.hu r12, 14(r5)
004b60  ebb60201  load.hu r13, 16(r5)
004b64  6bb72201  load.hu r14, 18(r5)
004b68  ebb74201  load.hu r15, 20(r5)
004b6c  6bb86201  load.hu r16, 22(r5)
004b70  ebb88201  load.hu r17, 24(r5)
004b74  6bb9a201  load.hu r18, 26(r5)
004b78  ebb9c201  load.hu r19, 28(r5)
004b7c  ebb2e201  load.hu r5, 30(r5)
004b80  33120218  bfloat2float.rn r4, r4
004b84  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004b88  33120318  bfloat2float.rn r4, r6
004b8c  1f430000  addli r6, zero, 4
004b90  7e0103e0  vmmov mr2, r6
004b94  1f031000  addli r6, zero, 8
004b98  6a212236  vor.u.mh vr2{mr3}, r4, vr2
004b9c  33920318  bfloat2float.rn r4, r7
004ba0  ab03807f  lui r7, 522240
004ba4  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004ba8  33120418  bfloat2float.rn r4, r8
004bac  7e0103e0  vmmov mr2, r6
004bb0  1f032000  addli r6, zero, 16
004bb4  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004bb8  33920418  bfloat2float.rn r4, r9
004bbc  7e0103e0  vmmov mr2, r6
004bc0  1f034000  addli r6, zero, 32
004bc4  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004bc8  33120518  bfloat2float.rn r4, r10
004bcc  7e0103e0  vmmov mr2, r6
004bd0  1f038000  addli r6, zero, 64
004bd4  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004bd8  33920518  bfloat2float.rn r4, r11
004bdc  7e0103e0  vmmov mr2, r6
004be0  1f030001  addli r6, zero, 128
004be4  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004be8  33120618  bfloat2float.rn r4, r12
004bec  7e0103e0  vmmov mr2, r6
004bf0  1f030002  addli r6, zero, 256
004bf4  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004bf8  33920618  bfloat2float.rn r4, r13
004bfc  7e0103e0  vmmov mr2, r6
004c00  1f030004  addli r6, zero, 512
004c04  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004c08  33120718  bfloat2float.rn r4, r14
004c0c  7e0103e0  vmmov mr2, r6
004c10  1f030008  addli r6, zero, 1024
004c14  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004c18  33920718  bfloat2float.rn r4, r15
004c1c  7e0103e0  vmmov mr2, r6
004c20  1f030010  addli r6, zero, 2048
004c24  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004c28  33120818  bfloat2float.rn r4, r16
004c2c  7e0103e0  vmmov mr2, r6
004c30  1f030020  addli r6, zero, 4096
004c34  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004c38  33920818  bfloat2float.rn r4, r17
004c3c  7e0103e0  vmmov mr2, r6
004c40  1f030040  addli r6, zero, 8192
004c44  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004c48  33120918  bfloat2float.rn r4, r18
004c4c  7e0103e0  vmmov mr2, r6
004c50  2b430000  lui r6, 4
004c54  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004c58  33920918  bfloat2float.rn r4, r19
004c5c  7e0103e0  vmmov mr2, r6
004c60  6a212234  vor.u.mh vr2{mr2}, r4, vr2
004c64  33920218  bfloat2float.rn r4, r5
004c68  6a212230  vor.u.mh vr2{mr0}, r4, vr2
004c6c  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
004c70  46100fc2  vstore_mask16.mz vr0{mr1}, 1536(r30)
004c74  00a00000  mfence { lm }
004c78  63020ffc  loadli.w r4,  -512(r30)
004c7c  63430ffc  loadli.w r6,  -508(r30)
004c80  63041ffc  loadli.w r8,  -504(r30)
004c84  63451ffc  loadli.w r10,  -500(r30)
004c88  63062ffc  loadli.w r12,  -496(r30)
004c8c  e3472ffc  loadli.w r15,  -492(r30)
004c90  e3083ffc  loadli.w r17,  -488(r30)
004c94  634a3ffc  loadli.w r20,  -484(r30)
004c98  63094ffc  loadli.w r18,  -480(r30)
004c9c  63484ffc  loadli.w r16,  -476(r30)
004ca0  63075ffc  loadli.w r14,  -472(r30)
004ca4  e3465ffc  loadli.w r13,  -468(r30)
004ca8  e3056ffc  loadli.w r11,  -464(r30)
004cac  e3446ffc  loadli.w r9,  -460(r30)
004cb0  9702b201  and r5, r4, r27
004cb4  93895304  setlt.u r19, r7, r5
004cb8  e3037ffc  loadli.w r7,  -456(r30)
004cbc  e3427ffc  loadli.w r5,  -452(r30)
004cc0  3be00900  bneq r19, zero, 24
004cc4  9b490201  srli r19, r4, 16
004cc8  9b891900  andi r19, r19, 1
004ccc  0b123211  add.s r4, r4, r19
004cd0  0b12a211  add.s r4, r4, r26
004cd4  db010000  j 12
004cd8  ab094000  lui r19, 1024
004cdc  17123201  or r4, r4, r19
004ce0  9709b301  and r19, r6, r27
004ce4  2b0b807f  lui r22, 522240
004ce8  93093b05  setlt.u r19, r22, r19
004cec  3be00900  bneq r19, zero, 24
004cf0  9b490301  srli r19, r6, 16
004cf4  9b891900  andi r19, r19, 1
004cf8  0b133311  add.s r6, r6, r19
004cfc  0b13a311  add.s r6, r6, r26
004d00  db010000  j 12
004d04  ab094000  lui r19, 1024
004d08  17133301  or r6, r6, r19
004d0c  9709b401  and r19, r8, r27
004d10  93093b05  setlt.u r19, r22, r19
004d14  3be00900  bneq r19, zero, 24
004d18  9b490401  srli r19, r8, 16
004d1c  9b891900  andi r19, r19, 1
004d20  0b143411  add.s r8, r8, r19
004d24  0b14a411  add.s r8, r8, r26
004d28  db010000  j 12
004d2c  ab094000  lui r19, 1024
004d30  17143401  or r8, r8, r19
004d34  9709b501  and r19, r10, r27
004d38  93093b05  setlt.u r19, r22, r19
004d3c  3be00900  bneq r19, zero, 24
004d40  9b490501  srli r19, r10, 16
004d44  9b891900  andi r19, r19, 1
004d48  0b153511  add.s r10, r10, r19
004d4c  0b15a511  add.s r10, r10, r26
004d50  db010000  j 12
004d54  ab094000  lui r19, 1024
004d58  17153501  or r10, r10, r19
004d5c  9709b601  and r19, r12, r27
004d60  93093b05  setlt.u r19, r22, r19
004d64  3be00900  bneq r19, zero, 24
004d68  9b490601  srli r19, r12, 16
004d6c  9b891900  andi r19, r19, 1
004d70  0b163611  add.s r12, r12, r19
004d74  0b16a611  add.s r12, r12, r26
004d78  db010000  j 12
004d7c  ab094000  lui r19, 1024
004d80  17163601  or r12, r12, r19
004d84  9789b701  and r19, r15, r27
004d88  93093b05  setlt.u r19, r22, r19
004d8c  3be00900  bneq r19, zero, 24
004d90  9bc90701  srli r19, r15, 16
004d94  9b891900  andi r19, r19, 1
004d98  8b973711  add.s r15, r15, r19
004d9c  8b97a711  add.s r15, r15, r26
004da0  db010000  j 12
004da4  ab094000  lui r19, 1024
004da8  97973701  or r15, r15, r19
004dac  9789b801  and r19, r17, r27
004db0  93093b05  setlt.u r19, r22, r19
004db4  3be00900  bneq r19, zero, 24
004db8  9bc90801  srli r19, r17, 16
004dbc  9b891900  andi r19, r19, 1
004dc0  8b983811  add.s r17, r17, r19
004dc4  8b98a811  add.s r17, r17, r26
004dc8  db010000  j 12
004dcc  ab094000  lui r19, 1024
004dd0  97983801  or r17, r17, r19
004dd4  9709ba01  and r19, r20, r27
004dd8  93093b05  setlt.u r19, r22, r19
004ddc  3be00900  bneq r19, zero, 24
004de0  9b490a01  srli r19, r20, 16
004de4  9b891900  andi r19, r19, 1
004de8  8b193a11  add.s r19, r20, r19
004dec  0b9aa911  add.s r20, r19, r26
004df0  db010000  j 12
004df4  ab094000  lui r19, 1024
004df8  171a3a01  or r20, r20, r19
004dfc  9709b901  and r19, r18, r27
004e00  93093b05  setlt.u r19, r22, r19
004e04  3be00900  bneq r19, zero, 24
004e08  9b490901  srli r19, r18, 16
004e0c  9b891900  andi r19, r19, 1
004e10  0b193911  add.s r18, r18, r19
004e14  0b19a911  add.s r18, r18, r26
004e18  db010000  j 12
004e1c  ab094000  lui r19, 1024
004e20  17193901  or r18, r18, r19
004e24  9709b801  and r19, r16, r27
004e28  93093b05  setlt.u r19, r22, r19
004e2c  3be00900  bneq r19, zero, 24
004e30  9b490801  srli r19, r16, 16
004e34  9b891900  andi r19, r19, 1
004e38  0b183811  add.s r16, r16, r19
004e3c  0b18a811  add.s r16, r16, r26
004e40  db010000  j 12
004e44  ab094000  lui r19, 1024
004e48  17183801  or r16, r16, r19
004e4c  9709b701  and r19, r14, r27
004e50  93093b05  setlt.u r19, r22, r19
004e54  3be00900  bneq r19, zero, 24
004e58  9b490701  srli r19, r14, 16
004e5c  9b891900  andi r19, r19, 1
004e60  0b173711  add.s r14, r14, r19
004e64  0b17a711  add.s r14, r14, r26
004e68  db010000  j 12
004e6c  ab094000  lui r19, 1024
004e70  17173701  or r14, r14, r19
004e74  9789b601  and r19, r13, r27
004e78  93093b05  setlt.u r19, r22, r19
004e7c  3be00900  bneq r19, zero, 24
004e80  9bc90601  srli r19, r13, 16
004e84  9b891900  andi r19, r19, 1
004e88  8b963611  add.s r13, r13, r19
004e8c  8b96a611  add.s r13, r13, r26
004e90  db010000  j 12
004e94  ab094000  lui r19, 1024
004e98  97963601  or r13, r13, r19
004e9c  9789b501  and r19, r11, r27
004ea0  93093b05  setlt.u r19, r22, r19
004ea4  3be00900  bneq r19, zero, 24
004ea8  9bc90501  srli r19, r11, 16
004eac  9b891900  andi r19, r19, 1
004eb0  8b953511  add.s r11, r11, r19
004eb4  8b95a511  add.s r11, r11, r26
004eb8  db010000  j 12
004ebc  ab094000  lui r19, 1024
004ec0  97953501  or r11, r11, r19
004ec4  9789b401  and r19, r9, r27
004ec8  93093b05  setlt.u r19, r22, r19
004ecc  3be00900  bneq r19, zero, 24
004ed0  9bc90401  srli r19, r9, 16
004ed4  9b891900  andi r19, r19, 1
004ed8  8b943411  add.s r9, r9, r19
004edc  8b94a411  add.s r9, r9, r26
004ee0  db010000  j 12
004ee4  ab094000  lui r19, 1024
004ee8  97943401  or r9, r9, r19
004eec  9789b301  and r19, r7, r27
004ef0  93093b05  setlt.u r19, r22, r19
004ef4  3be00900  bneq r19, zero, 24
004ef8  9bc90301  srli r19, r7, 16
004efc  9b891900  andi r19, r19, 1
004f00  8b933311  add.s r7, r7, r19
004f04  8b93a311  add.s r7, r7, r26
004f08  db010000  j 12
004f0c  ab094000  lui r19, 1024
004f10  97933301  or r7, r7, r19
004f14  9789b201  and r19, r5, r27
004f18  93093b05  setlt.u r19, r22, r19
004f1c  b7a409fc  beq r19, zero, -1752
004f20  ab094000  lui r19, 1024
004f24  97923201  or r5, r5, r19
004f28  db25ffff  j -1748
004f2c  2b01c07f  lui r2, 523264
004f30  37c601f2  beq r3, zero, -6768
004f34  9f010100  addli r3, r2, 0
004f38  3bb600f2  bneq r1, zero, -6772
004f3c  dbb1fcff  j -6772
004f40  2b01c07f  lui r2, 523264
004f44  b7a700f2  beq r1, zero, -6680
004f48  9f000100  addli r1, r2, 0
004f4c  bb9702f2  bneq r5, zero, -6684
004f50  dbbcfcff  j -6684
004f54  ab03c07f  lui r7, 523264
004f58  37c902f2  beq r5, zero, -6576
004f5c  9f820300  addli r5, r7, 0
004f60  3b3903f2  bneq r6, zero, -6580
004f64  dbc9fcff  j -6580
004f68  ab02c07f  lui r5, 523264
004f6c  b71a03f2  beq r6, zero, -6492
004f70  1f830200  addli r6, r5, 0
004f74  bb0a02f2  bneq r4, zero, -6496
004f78  5bd4fcff  j -6496
004f7c  ab02c07f  lui r5, 523264
004f80  b76b02f2  beq r4, zero, -6408
004f84  1f820200  addli r4, r5, 0
004f88  bbdb01f2  bneq r3, zero, -6412
004f8c  dbdefcff  j -6412
004f90  2b02c07f  lui r4, 523264
004f94  37bd01f2  beq r3, zero, -6324
004f98  9f010200  addli r3, r4, 0
004f9c  3b2d01f2  bneq r2, zero, -6328
004fa0  5be9fcff  j -6328
004fa4  ab01c07f  lui r3, 523264
004fa8  b70e01f2  beq r2, zero, -6240
004fac  1f810100  addli r2, r3, 0
004fb0  3bfe00f2  bneq r1, zero, -6244
004fb4  dbf3fcff  j -6244
004fb8  9f0e0fe4  addli sp, r30, -3584
004fbc  9f8e0e1c  addli sp, sp, 3584
004fc0  00a00300  mfence { lm, sm, gm }
004fc4  00100000  exit
004fc8  00100000  exit
004fcc  00100000  exit
004fd0  00100000  exit
004fd4  00100000  exit
004fd8  00100000  exit
004fdc  00100000  exit
004fe0  00100000  exit
004fe4  00100000  exit
004fe8  00100000  exit
004fec  00100000  exit
004ff0  00100000  exit
004ff4  00100000  exit
004ff8  00100000  exit
004ffc  00100000  exit
005000  00100000  exit
005004  00100000  exit
005008  00100000  exit
00500c  00100000  exit
005010  00100000  exit
005014  00100000  exit
005018  00100000  exit
00501c  00100000  exit
005020  00100000  exit
005024  00100000  exit
005028  00100000  exit
00502c  00100000  exit
005030  00100000  exit
005034  00100000  exit
005038  00100000  exit
00503c  00100000  exit
005040  00100000  exit
005044  00100000  exit
005048  00100000  exit
00504c  00100000  exit
005050  00100000  exit
005054  00100000  exit
005058  00100000  exit
00505c  00100000  exit
005060  00100000  exit
005064  00100000  exit
005068  00100000  exit
00506c  00100000  exit
005070  00100000  exit
005074  00100000  exit
005078  00100000  exit
00507c  00100000  exit
005080  00100000  exit
005084  00100000  exit
005088  00100000  exit
00508c  00100000  exit
005090  00100000  exit
005094  00100000  exit
005098  00100000  exit
00509c  00100000  exit
0050a0  00100000  exit
0050a4  00100000  exit
0050a8  00100000  exit
0050ac  00100000  exit
0050b0  00100000  exit
0050b4  00100000  exit
0050b8  00100000  exit
0050bc  00100000  exit
0050c0  00100000  exit
0050c4  00100000  exit
0050c8  00100000  exit
0050cc  00100000  exit
0050d0  00100000  exit
0050d4  00100000  exit
0050d8  00100000  exit
0050dc  00100000  exit
0050e0  00100000  exit
0050e4  00100000  exit
0050e8  00100000  exit
0050ec  00100000  exit
0050f0  00100000  exit
0050f4  00100000  exit
0050f8  00100000  exit
0050fc  00100000  exit
005100  00100000  exit
005104  00100000  exit
005108  00100000  exit
00510c  00100000  exit
005110  00100000  exit
005114  00100000  exit
005118  00100000  exit
00511c  00100000  exit
005120  00100000  exit
005124  00100000  exit
005128  00100000  exit
00512c  00100000  exit
005130  00100000  exit
005134  00100000  exit
005138  00100000  exit
00513c  00100000  exit
005140  00100000  exit
005144  00100000  exit
005148  00100000  exit
00514c  00100000  exit
005150  00100000  exit
005154  00100000  exit
005158  00100000  exit
00515c  00100000  exit
005160  00100000  exit
005164  00100000  exit
005168  00100000  exit
00516c  00100000  exit
005170  00100000  exit
005174  00100000  exit
005178  00100000  exit
00517c  00100000  exit
005180  00100000  exit
005184  00100000  exit
005188  00100000  exit
00518c  00100000  exit
005190  00100000  exit
005194  00100000  exit
005198  00100000  exit
00519c  00100000  exit
0051a0  00100000  exit
0051a4  00100000  exit
0051a8  00100000  exit
0051ac  00100000  exit
0051b0  00100000  exit
0051b4  00100000  exit
0051b8  00100000  exit
0051bc  00100000  exit
0051c0  00100000  exit
0051c4  00100000  exit
0051c8  00100000  exit
0051cc  00100000  exit
0051d0  00100000  exit
0051d4  00100000  exit
0051d8  00100000  exit
0051dc  00100000  exit
0051e0  00100000  exit
0051e4  00100000  exit
0051e8  00100000  exit
0051ec  00100000  exit
0051f0  00100000  exit
0051f4  00100000  exit
0051f8  00100000  exit
0051fc  00100000  exit
005200  00100000  exit
005204  00100000  exit
