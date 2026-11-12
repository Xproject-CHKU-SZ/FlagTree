; SHA-256 24f87c3e8ed790de9cdfb8927a1e0a4954240b98b87a9685000e0c82a40ecbbb
; P800 Cluster · XTDK LLVM 19 · 4316 / 4316 words decoded
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
000078  9f497000  addli r19, zero, 60
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
0000dc  9f8e8ee0  addli sp, sp, -4032
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f0e1f  addli r30, sp, 3968
0000ec  abf20000  lui r5, 15
0000f0  00560002  load_param_i r12, 0
0000f4  9bb12000  slli r3, r1, 2
0000f8  1f010100  addli r2, r2, 0
0000fc  e3436f00  loadli.w r7,  52(r30)
000100  63026f00  loadli.w r4,  48(r30)
000104  63037f00  loadli.w r6,  56(r30)
000108  9b92f2ff  ori r5, r5, 4095
00010c  0b942110  add.s r8, r3, r2
000110  0b924320  mul.s r4, r7, r4
000114  9f042440  addli r9, r8, 8208
000118  0b126220  mul.s r4, r4, r6
00011c  670b9fe4  storeli.w r9, -3408(r30)
000120  73e00400  stores.w zero, 0(r9)
000124  00a00300  mfence { lm, sm, gm }
000128  80a10204  csr_set csr3, r5
00012c  00d00100  sync_group
000130  674b8fe4  storeli.w r8, -3404(r30)
000134  73600400  stores.w zero, 0(r8)
000138  00a00300  mfence { lm, sm, gm }
00013c  e74d5fe8  storeli.w r5, -2852(r30)
000140  80a10204  csr_set csr3, r5
000144  00d00100  sync_group
000148  e74a4fe4  storeli.w r4, -3412(r30)
00014c  4b5fc21e  ble.s r4, r12, 16340
000150  1f021000  addli r4, zero, 8
000154  1f170000  addli r14, zero, 1
000158  9f0d0ff4  addli r27, r30, -1536
00015c  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
000160  0b934030  div.s r6, r1, r4
000164  6b528f01  load.d r[5:6], 24(r30)
000168  1b343300  slli r8, r6, 3
00016c  e70a6fe4  storeli.w r6, -3416(r30)
000170  6b530f01  load.d r[7:8], 16(r30)
000174  0b958018  sub.s r10, r1, r8
000178  9b807000  andi r1, r1, 7
00017c  6b548f00  load.d r[9:10], 8(r30)
000180  e70d1fe8  storeli.w r1, -2856(r30)
000184  ab700000  lui r1, 7
000188  9b367500  slli r13, r10, 7
00018c  00d50002  load_param_i r10, 1
000190  9b90f0ff  ori r1, r1, 4095
000194  670aafe4  storeli.w r10, -3424(r30)
000198  1b951600  ori r10, r13, 1
00019c  9b97e600  ori r15, r13, 14
0001a0  674adfe4  storeli.w r13, -3420(r30)
0001a4  e70f1fea  storeli.w r1, -2568(r30)
0001a8  ab10833a  lui r1, 239665
0001ac  e749afe4  storeli.w r10, -3428(r30)
0001b0  1b952600  ori r10, r13, 2
0001b4  e706ffe4  storeli.w r15, -3480(r30)
0001b8  9b90f026  ori r1, r1, 623
0001bc  e709afe4  storeli.w r10, -3432(r30)
0001c0  1b953600  ori r10, r13, 3
0001c4  67041fe4  storeli.w r1, -3520(r30)
0001c8  9b901601  ori r1, r13, 17
0001cc  6749afe4  storeli.w r10, -3436(r30)
0001d0  1b954600  ori r10, r13, 4
0001d4  e7431fe4  storeli.w r1, -3524(r30)
0001d8  9b902601  ori r1, r13, 18
0001dc  6709afe4  storeli.w r10, -3440(r30)
0001e0  1b955600  ori r10, r13, 5
0001e4  e7031fe4  storeli.w r1, -3528(r30)
0001e8  9b903601  ori r1, r13, 19
0001ec  e748afe4  storeli.w r10, -3444(r30)
0001f0  1b956600  ori r10, r13, 6
0001f4  67431fe4  storeli.w r1, -3532(r30)
0001f8  9b904601  ori r1, r13, 20
0001fc  e708afe4  storeli.w r10, -3448(r30)
000200  1b957600  ori r10, r13, 7
000204  67031fe4  storeli.w r1, -3536(r30)
000208  9b905601  ori r1, r13, 21
00020c  6748afe4  storeli.w r10, -3452(r30)
000210  1b958600  ori r10, r13, 8
000214  e7421fe4  storeli.w r1, -3540(r30)
000218  9b906601  ori r1, r13, 22
00021c  6708afe4  storeli.w r10, -3456(r30)
000220  1b959600  ori r10, r13, 9
000224  e7021fe4  storeli.w r1, -3544(r30)
000228  9b907601  ori r1, r13, 23
00022c  e747afe4  storeli.w r10, -3460(r30)
000230  1b95a600  ori r10, r13, 10
000234  67421fe4  storeli.w r1, -3548(r30)
000238  9b908601  ori r1, r13, 24
00023c  e707afe4  storeli.w r10, -3464(r30)
000240  1b95b600  ori r10, r13, 11
000244  67021fe4  storeli.w r1, -3552(r30)
000248  9b909601  ori r1, r13, 25
00024c  6747afe4  storeli.w r10, -3468(r30)
000250  1b95c600  ori r10, r13, 12
000254  e7411fe4  storeli.w r1, -3556(r30)
000258  9b90a601  ori r1, r13, 26
00025c  6707afe4  storeli.w r10, -3472(r30)
000260  1b95d600  ori r10, r13, 13
000264  e7011fe4  storeli.w r1, -3560(r30)
000268  9b90b601  ori r1, r13, 27
00026c  e746afe4  storeli.w r10, -3476(r30)
000270  33950628  sext_int2long r[11:12], r13
000274  67411fe4  storeli.w r1, -3564(r30)
000278  9b90c601  ori r1, r13, 28
00027c  1735e502  sll.d r[11:12], r[11:12], r14
000280  1b97f600  ori r14, r13, 15
000284  67011fe4  storeli.w r1, -3568(r30)
000288  9b90d601  ori r1, r13, 29
00028c  6746efe4  storeli.w r14, -3484(r30)
000290  0b24a410  add.ul r[9:10], r[9:10], r[11:12]
000294  1f07bfe4  addli r14, r30, -3496
000298  0b23a310  add.ul r[7:8], r[7:8], r[11:12]
00029c  0b22a210  add.ul r[5:6], r[5:6], r[11:12]
0002a0  e7401fe4  storeli.w r1, -3572(r30)
0002a4  9b90e601  ori r1, r13, 30
0002a8  73308700  store.d r[9:10], 0(r14)
0002ac  1f04afe4  addli r8, r30, -3504
0002b0  e7001fe4  storeli.w r1, -3576(r30)
0002b4  9b90f601  ori r1, r13, 31
0002b8  73306400  store.d r[7:8], 0(r8)
0002bc  9f039fe4  addli r7, r30, -3512
0002c0  2bf3ffff  lui r6, 1048575
0002c4  1f040002  addli r8, zero, 256
0002c8  67401fe4  storeli.w r1, -3580(r30)
0002cc  9b900602  ori r1, r13, 32
0002d0  73b04300  store.d r[5:6], 0(r7)
0002d4  1b1203fe  ori r4, r6, 4064
0002d8  9b920601  ori r5, r13, 16
0002dc  67001fe4  storeli.w r1, -3584(r30)
0002e0  9b901602  ori r1, r13, 33
0002e4  97814100  and r3, r3, r4
0002e8  67445fe4  storeli.w r5, -3516(r30)
0002ec  e74f1fe2  storeli.w r1, -3588(r30)
0002f0  9b902602  ori r1, r13, 34
0002f4  8b912110  add.s r3, r3, r2
0002f8  2bf1ff7f  lui r2, 524287
0002fc  e70f1fe2  storeli.w r1, -3592(r30)
000300  9b903602  ori r1, r13, 35
000304  1b1af1ff  ori r20, r2, 4095
000308  e74b3fe4  storeli.w r3, -3396(r30)
00030c  674f1fe2  storeli.w r1, -3596(r30)
000310  9b904602  ori r1, r13, 36
000314  e74f4feb  storeli.w r20, -2564(r30)
000318  670f1fe2  storeli.w r1, -3600(r30)
00031c  9b905602  ori r1, r13, 37
000320  e74e1fe2  storeli.w r1, -3604(r30)
000324  9b906602  ori r1, r13, 38
000328  e70e1fe2  storeli.w r1, -3608(r30)
00032c  9b907602  ori r1, r13, 39
000330  674e1fe2  storeli.w r1, -3612(r30)
000334  9b908602  ori r1, r13, 40
000338  670e1fe2  storeli.w r1, -3616(r30)
00033c  9b909602  ori r1, r13, 41
000340  e74d1fe2  storeli.w r1, -3620(r30)
000344  9b90a602  ori r1, r13, 42
000348  e70d1fe2  storeli.w r1, -3624(r30)
00034c  9b90b602  ori r1, r13, 43
000350  674d1fe2  storeli.w r1, -3628(r30)
000354  9b90c602  ori r1, r13, 44
000358  670d1fe2  storeli.w r1, -3632(r30)
00035c  9b90d602  ori r1, r13, 45
000360  e74c1fe2  storeli.w r1, -3636(r30)
000364  9b90e602  ori r1, r13, 46
000368  e70c1fe2  storeli.w r1, -3640(r30)
00036c  9b90f602  ori r1, r13, 47
000370  674c1fe2  storeli.w r1, -3644(r30)
000374  9b900603  ori r1, r13, 48
000378  670c1fe2  storeli.w r1, -3648(r30)
00037c  9b901603  ori r1, r13, 49
000380  e74b1fe2  storeli.w r1, -3652(r30)
000384  9b902603  ori r1, r13, 50
000388  e70b1fe2  storeli.w r1, -3656(r30)
00038c  9b903603  ori r1, r13, 51
000390  674b1fe2  storeli.w r1, -3660(r30)
000394  9b904603  ori r1, r13, 52
000398  670b1fe2  storeli.w r1, -3664(r30)
00039c  9b905603  ori r1, r13, 53
0003a0  e74a1fe2  storeli.w r1, -3668(r30)
0003a4  9b906603  ori r1, r13, 54
0003a8  e70a1fe2  storeli.w r1, -3672(r30)
0003ac  9b907603  ori r1, r13, 55
0003b0  674a1fe2  storeli.w r1, -3676(r30)
0003b4  9b908603  ori r1, r13, 56
0003b8  670a1fe2  storeli.w r1, -3680(r30)
0003bc  9b909603  ori r1, r13, 57
0003c0  e7491fe2  storeli.w r1, -3684(r30)
0003c4  9b90a603  ori r1, r13, 58
0003c8  e7091fe2  storeli.w r1, -3688(r30)
0003cc  9b90b603  ori r1, r13, 59
0003d0  67491fe2  storeli.w r1, -3692(r30)
0003d4  9b90c603  ori r1, r13, 60
0003d8  67091fe2  storeli.w r1, -3696(r30)
0003dc  9b90d603  ori r1, r13, 61
0003e0  e7481fe2  storeli.w r1, -3700(r30)
0003e4  9b90e603  ori r1, r13, 62
0003e8  e7081fe2  storeli.w r1, -3704(r30)
0003ec  9b90f603  ori r1, r13, 63
0003f0  67481fe2  storeli.w r1, -3708(r30)
0003f4  9b900604  ori r1, r13, 64
0003f8  67081fe2  storeli.w r1, -3712(r30)
0003fc  9b901604  ori r1, r13, 65
000400  e7471fe2  storeli.w r1, -3716(r30)
000404  9b902604  ori r1, r13, 66
000408  e7071fe2  storeli.w r1, -3720(r30)
00040c  9b903604  ori r1, r13, 67
000410  67471fe2  storeli.w r1, -3724(r30)
000414  9b904604  ori r1, r13, 68
000418  67071fe2  storeli.w r1, -3728(r30)
00041c  9b905604  ori r1, r13, 69
000420  e7461fe2  storeli.w r1, -3732(r30)
000424  9b906604  ori r1, r13, 70
000428  e7061fe2  storeli.w r1, -3736(r30)
00042c  9b907604  ori r1, r13, 71
000430  67461fe2  storeli.w r1, -3740(r30)
000434  9b908604  ori r1, r13, 72
000438  67061fe2  storeli.w r1, -3744(r30)
00043c  9b909604  ori r1, r13, 73
000440  e7451fe2  storeli.w r1, -3748(r30)
000444  9b90a604  ori r1, r13, 74
000448  e7051fe2  storeli.w r1, -3752(r30)
00044c  9b90b604  ori r1, r13, 75
000450  67451fe2  storeli.w r1, -3756(r30)
000454  9b90c604  ori r1, r13, 76
000458  67051fe2  storeli.w r1, -3760(r30)
00045c  9b90d604  ori r1, r13, 77
000460  e7441fe2  storeli.w r1, -3764(r30)
000464  9b90e604  ori r1, r13, 78
000468  e7041fe2  storeli.w r1, -3768(r30)
00046c  9b90f604  ori r1, r13, 79
000470  67441fe2  storeli.w r1, -3772(r30)
000474  9b900605  ori r1, r13, 80
000478  67041fe2  storeli.w r1, -3776(r30)
00047c  9b901605  ori r1, r13, 81
000480  e7431fe2  storeli.w r1, -3780(r30)
000484  9b902605  ori r1, r13, 82
000488  e7031fe2  storeli.w r1, -3784(r30)
00048c  9b903605  ori r1, r13, 83
000490  67431fe2  storeli.w r1, -3788(r30)
000494  9b904605  ori r1, r13, 84
000498  67031fe2  storeli.w r1, -3792(r30)
00049c  9b905605  ori r1, r13, 85
0004a0  e7421fe2  storeli.w r1, -3796(r30)
0004a4  9b906605  ori r1, r13, 86
0004a8  e7021fe2  storeli.w r1, -3800(r30)
0004ac  9b907605  ori r1, r13, 87
0004b0  67421fe2  storeli.w r1, -3804(r30)
0004b4  9b908605  ori r1, r13, 88
0004b8  67021fe2  storeli.w r1, -3808(r30)
0004bc  9b909605  ori r1, r13, 89
0004c0  e7411fe2  storeli.w r1, -3812(r30)
0004c4  9b90a605  ori r1, r13, 90
0004c8  e7011fe2  storeli.w r1, -3816(r30)
0004cc  9b90b605  ori r1, r13, 91
0004d0  67411fe2  storeli.w r1, -3820(r30)
0004d4  9b90c605  ori r1, r13, 92
0004d8  67011fe2  storeli.w r1, -3824(r30)
0004dc  9b90d605  ori r1, r13, 93
0004e0  e7401fe2  storeli.w r1, -3828(r30)
0004e4  9b90e605  ori r1, r13, 94
0004e8  e7001fe2  storeli.w r1, -3832(r30)
0004ec  9b90f605  ori r1, r13, 95
0004f0  67401fe2  storeli.w r1, -3836(r30)
0004f4  9b900606  ori r1, r13, 96
0004f8  67001fe2  storeli.w r1, -3840(r30)
0004fc  9b901606  ori r1, r13, 97
000500  e74f1fe0  storeli.w r1, -3844(r30)
000504  9b902606  ori r1, r13, 98
000508  e70f1fe0  storeli.w r1, -3848(r30)
00050c  9b903606  ori r1, r13, 99
000510  674f1fe0  storeli.w r1, -3852(r30)
000514  9b904606  ori r1, r13, 100
000518  670f1fe0  storeli.w r1, -3856(r30)
00051c  9b905606  ori r1, r13, 101
000520  e74e1fe0  storeli.w r1, -3860(r30)
000524  9b906606  ori r1, r13, 102
000528  e70e1fe0  storeli.w r1, -3864(r30)
00052c  9b907606  ori r1, r13, 103
000530  674e1fe0  storeli.w r1, -3868(r30)
000534  9b908606  ori r1, r13, 104
000538  670e1fe0  storeli.w r1, -3872(r30)
00053c  9b909606  ori r1, r13, 105
000540  e74d1fe0  storeli.w r1, -3876(r30)
000544  9b90a606  ori r1, r13, 106
000548  e70d1fe0  storeli.w r1, -3880(r30)
00054c  9b90b606  ori r1, r13, 107
000550  674d1fe0  storeli.w r1, -3884(r30)
000554  9b90c606  ori r1, r13, 108
000558  670d1fe0  storeli.w r1, -3888(r30)
00055c  9b90d606  ori r1, r13, 109
000560  e74c1fe0  storeli.w r1, -3892(r30)
000564  9b90e606  ori r1, r13, 110
000568  e70c1fe0  storeli.w r1, -3896(r30)
00056c  9b90f606  ori r1, r13, 111
000570  674c1fe0  storeli.w r1, -3900(r30)
000574  9b900607  ori r1, r13, 112
000578  670c1fe0  storeli.w r1, -3904(r30)
00057c  9b901607  ori r1, r13, 113
000580  e74b1fe0  storeli.w r1, -3908(r30)
000584  9b902607  ori r1, r13, 114
000588  e70b1fe0  storeli.w r1, -3912(r30)
00058c  9b903607  ori r1, r13, 115
000590  674b1fe0  storeli.w r1, -3916(r30)
000594  9b904607  ori r1, r13, 116
000598  670b1fe0  storeli.w r1, -3920(r30)
00059c  9b905607  ori r1, r13, 117
0005a0  e74a1fe0  storeli.w r1, -3924(r30)
0005a4  9b906607  ori r1, r13, 118
0005a8  e70a1fe0  storeli.w r1, -3928(r30)
0005ac  9b907607  ori r1, r13, 119
0005b0  674a1fe0  storeli.w r1, -3932(r30)
0005b4  9b908607  ori r1, r13, 120
0005b8  670a1fe0  storeli.w r1, -3936(r30)
0005bc  9b909607  ori r1, r13, 121
0005c0  e7491fe0  storeli.w r1, -3940(r30)
0005c4  9b90a607  ori r1, r13, 122
0005c8  e7091fe0  storeli.w r1, -3944(r30)
0005cc  9b90b607  ori r1, r13, 123
0005d0  67491fe0  storeli.w r1, -3948(r30)
0005d4  9b90c607  ori r1, r13, 124
0005d8  67091fe0  storeli.w r1, -3952(r30)
0005dc  9b90d607  ori r1, r13, 125
0005e0  e7481fe0  storeli.w r1, -3956(r30)
0005e4  9b90e607  ori r1, r13, 126
0005e8  e7081fe0  storeli.w r1, -3960(r30)
0005ec  9b90f607  ori r1, r13, 127
0005f0  67481fe0  storeli.w r1, -3964(r30)
0005f4  9f802140  addli r1, r3, 8208
0005f8  e70b1fe4  storeli.w r1, -3400(r30)
0005fc  db450200  j 4652
000600  e302afe5  loadli.w r5,  -3376(r30)
000604  e341cfe5  loadli.w r3,  -3356(r30)
000608  e300dfe5  loadli.w r1,  -3352(r30)
00060c  9f070feb  addli r15, r30, -2688
000610  9f1a0000  addli r21, zero, 1
000614  eb5d0f02  load.d r[28:29], 32(r30)
000618  9f08efeb  addli r17, r30, -2576
00061c  1f290000  addli r18, zero, 2
000620  b3930228  sext_int2long r[8:9], r5
000624  e3429fe5  loadli.w r5,  -3380(r30)
000628  b3950128  sext_int2long r[12:13], r3
00062c  e301cfe5  loadli.w r3,  -3360(r30)
000630  b3900028  sext_int2long r[2:3], r1
000634  97b05003  sll.d r[2:3], r[2:3], r21
000638  97b55503  sll.d r[12:13], r[12:13], r21
00063c  b3940228  sext_int2long r[10:11], r5
000640  e3029fe5  loadli.w r5,  -3384(r30)
000644  b3990128  sext_int2long r[20:21], r3
000648  e341bfe5  loadli.w r3,  -3364(r30)
00064c  8bac1d10  add.ul r[26:27], r[28:29], r[2:3]
000650  8ba0bd10  add.ul r[2:3], r[28:29], r[12:13]
000654  ab0500f0  lui r11, 983040
000658  2b0600f0  lui r12, 983040
00065c  b3920228  sext_int2long r[6:7], r5
000660  b39b0128  sext_int2long r[24:25], r3
000664  e301bfe5  loadli.w r3,  -3368(r30)
000668  9715b900  or r11, r18, r11
00066c  1716c900  or r12, r18, r12
000670  73b05700  store.d r[6:7], 0(r15)
000674  e3078fe5  loadli.w r15,  -3392(r30)
000678  e3428fe5  loadli.w r5,  -3388(r30)
00067c  b3960128  sext_int2long r[14:15], r3
000680  e341afe5  loadli.w r3,  -3372(r30)
000684  b3970728  sext_int2long r[16:17], r15
000688  b3920228  sext_int2long r[6:7], r5
00068c  b3910128  sext_int2long r[4:5], r3
000690  73b0f800  store.d r[16:17], 0(r17)
000694  9f070ff4  addli r15, r30, -1536
000698  1f080ff4  addli r16, r30, -1536
00069c  9f080ff4  addli r17, r30, -1536
0006a0  9fa70700  addli r15, r15, 2
0006a4  1f480800  addli r16, r16, 4
0006a8  9fe80800  addli r17, r17, 6
0006ac  ffb5fc00  s_lm2gm r11, r15, 0(r[26:27])
0006b0  7fb60001  s_lm2gm r12, r16, 0(r[2:3])
0006b4  97b05903  sll.d r[2:3], r[20:21], r21
0006b8  97b55b03  sll.d r[12:13], r[24:25], r21
0006bc  ab0700f0  lui r15, 983040
0006c0  2b0800f0  lui r16, 983040
0006c4  9f090ff4  addli r19, r30, -1536
0006c8  ab0c00f0  lui r25, 983040
0006cc  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0006d0  9717f900  or r15, r18, r15
0006d4  8ba5bd10  add.ul r[12:13], r[28:29], r[12:13]
0006d8  17180901  or r16, r18, r16
0006dc  1f8a1900  addli r20, r19, 8
0006e0  971c9901  or r25, r18, r25
0006e4  ffb71001  s_lm2gm r15, r17, 0(r[2:3])
0006e8  97b05603  sll.d r[2:3], r[14:15], r21
0006ec  ab0600f0  lui r13, 983040
0006f0  7fb84501  s_lm2gm r16, r20, 0(r[12:13])
0006f4  97b55103  sll.d r[12:13], r[4:5], r21
0006f8  9f010ff4  addli r3, r30, -1536
0006fc  2b0700f0  lui r14, 983040
000700  9f180000  addli r17, zero, 1
000704  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000708  9716d900  or r13, r18, r13
00070c  9fa71100  addli r15, r3, 10
000710  8ba5bd10  add.ul r[12:13], r[28:29], r[12:13]
000714  1717e900  or r14, r18, r14
000718  1fc81100  addli r16, r3, 12
00071c  ffb6f000  s_lm2gm r13, r15, 0(r[2:3])
000720  97b05303  sll.d r[2:3], r[8:9], r21
000724  97b35403  sll.d r[8:9], r[10:11], r21
000728  ab0400f0  lui r9, 983040
00072c  2b0500f0  lui r10, 983040
000730  7fb70501  s_lm2gm r14, r16, 0(r[12:13])
000734  9fe51100  addli r11, r3, 14
000738  1f862100  addli r12, r3, 16
00073c  9f010feb  addli r3, r30, -2688
000740  e346efe8  loadli.w r13,  -2956(r30)
000744  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000748  97149900  or r9, r18, r9
00074c  8ba37d10  add.ul r[8:9], r[28:29], r[8:9]
000750  1715a900  or r10, r18, r10
000754  b3960628  sext_int2long r[14:15], r13
000758  ffb4b000  s_lm2gm r9, r11, 0(r[2:3])
00075c  ebd00100  load.d r[2:3], 0(r3)
000760  97b15203  sll.d r[4:5], r[6:7], r21
000764  7fb5c300  s_lm2gm r10, r12, 0(r[8:9])
000768  2b0300f0  lui r6, 983040
00076c  1f040ff4  addli r8, r30, -1536
000770  ab0200f0  lui r5, 983040
000774  9f030ff4  addli r7, r30, -1536
000778  e344cfe8  loadli.w r9,  -2972(r30)
00077c  e345dfe8  loadli.w r11,  -2964(r30)
000780  8ba13d10  add.ul r[4:5], r[28:29], r[4:5]
000784  17136900  or r6, r18, r6
000788  1f442400  addli r8, r8, 20
00078c  97125900  or r5, r18, r5
000790  9fa32300  addli r7, r7, 18
000794  97b05003  sll.d r[2:3], r[2:3], r21
000798  b3940428  sext_int2long r[10:11], r9
00079c  b3950528  sext_int2long r[12:13], r11
0007a0  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
0007a4  9f01efeb  addli r3, r30, -2576
0007a8  1f020ff4  addli r4, r30, -1536
0007ac  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0007b0  1f622200  addli r4, r4, 22
0007b4  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
0007b8  ebd00100  load.d r[2:3], 0(r3)
0007bc  e342dfe5  loadli.w r5,  -3348(r30)
0007c0  ab0100f0  lui r3, 983040
0007c4  e343bfe8  loadli.w r7,  -2980(r30)
0007c8  97113900  or r3, r18, r3
0007cc  97b05003  sll.d r[2:3], r[2:3], r21
0007d0  b3920228  sext_int2long r[6:7], r5
0007d4  b3930328  sext_int2long r[8:9], r7
0007d8  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0007dc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0007e0  97b05203  sll.d r[2:3], r[6:7], r21
0007e4  e302efe5  loadli.w r5,  -3344(r30)
0007e8  ab0100f0  lui r3, 983040
0007ec  1f020ff4  addli r4, r30, -1536
0007f0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0007f4  97113900  or r3, r18, r3
0007f8  1f023200  addli r4, r4, 24
0007fc  b3920228  sext_int2long r[6:7], r5
000800  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000804  ab0100f0  lui r3, 983040
000808  1f020ff4  addli r4, r30, -1536
00080c  97b05203  sll.d r[2:3], r[6:7], r21
000810  e342efe5  loadli.w r5,  -3340(r30)
000814  97113900  or r3, r18, r3
000818  1f223200  addli r4, r4, 26
00081c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000820  b3920228  sext_int2long r[6:7], r5
000824  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000828  ab0100f0  lui r3, 983040
00082c  1f020ff4  addli r4, r30, -1536
000830  97b05203  sll.d r[2:3], r[6:7], r21
000834  e302ffe5  loadli.w r5,  -3336(r30)
000838  97113900  or r3, r18, r3
00083c  1f423200  addli r4, r4, 28
000840  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000844  b3920228  sext_int2long r[6:7], r5
000848  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00084c  ab0100f0  lui r3, 983040
000850  1f020ff4  addli r4, r30, -1536
000854  97b05203  sll.d r[2:3], r[6:7], r21
000858  e342ffe5  loadli.w r5,  -3332(r30)
00085c  97113900  or r3, r18, r3
000860  1f623200  addli r4, r4, 30
000864  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000868  b3920228  sext_int2long r[6:7], r5
00086c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000870  ab0100f0  lui r3, 983040
000874  1f020ff4  addli r4, r30, -1536
000878  97b05203  sll.d r[2:3], r[6:7], r21
00087c  e3020fe6  loadli.w r5,  -3328(r30)
000880  97113900  or r3, r18, r3
000884  1f024200  addli r4, r4, 32
000888  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
00088c  b3920228  sext_int2long r[6:7], r5
000890  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000894  ab0100f0  lui r3, 983040
000898  1f020ff4  addli r4, r30, -1536
00089c  97b05203  sll.d r[2:3], r[6:7], r21
0008a0  e3420fe6  loadli.w r5,  -3324(r30)
0008a4  97113900  or r3, r18, r3
0008a8  1f224200  addli r4, r4, 34
0008ac  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0008b0  b3920228  sext_int2long r[6:7], r5
0008b4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0008b8  ab0100f0  lui r3, 983040
0008bc  1f020ff4  addli r4, r30, -1536
0008c0  97b05203  sll.d r[2:3], r[6:7], r21
0008c4  e3021fe6  loadli.w r5,  -3320(r30)
0008c8  97113900  or r3, r18, r3
0008cc  1f424200  addli r4, r4, 36
0008d0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0008d4  b3920228  sext_int2long r[6:7], r5
0008d8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0008dc  ab0100f0  lui r3, 983040
0008e0  1f020ff4  addli r4, r30, -1536
0008e4  97b05203  sll.d r[2:3], r[6:7], r21
0008e8  e3421fe6  loadli.w r5,  -3316(r30)
0008ec  97113900  or r3, r18, r3
0008f0  1f624200  addli r4, r4, 38
0008f4  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0008f8  b3920228  sext_int2long r[6:7], r5
0008fc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000900  ab0100f0  lui r3, 983040
000904  1f020ff4  addli r4, r30, -1536
000908  97b05203  sll.d r[2:3], r[6:7], r21
00090c  e3022fe6  loadli.w r5,  -3312(r30)
000910  97113900  or r3, r18, r3
000914  1f025200  addli r4, r4, 40
000918  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
00091c  b3920228  sext_int2long r[6:7], r5
000920  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000924  ab0100f0  lui r3, 983040
000928  1f020ff4  addli r4, r30, -1536
00092c  97b05203  sll.d r[2:3], r[6:7], r21
000930  e3422fe6  loadli.w r5,  -3308(r30)
000934  97113900  or r3, r18, r3
000938  1f225200  addli r4, r4, 42
00093c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000940  b3920228  sext_int2long r[6:7], r5
000944  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000948  ab0100f0  lui r3, 983040
00094c  1f020ff4  addli r4, r30, -1536
000950  97b05203  sll.d r[2:3], r[6:7], r21
000954  e3023fe6  loadli.w r5,  -3304(r30)
000958  97113900  or r3, r18, r3
00095c  1f425200  addli r4, r4, 44
000960  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000964  b3920228  sext_int2long r[6:7], r5
000968  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00096c  ab0100f0  lui r3, 983040
000970  1f020ff4  addli r4, r30, -1536
000974  97b05203  sll.d r[2:3], r[6:7], r21
000978  e3423fe6  loadli.w r5,  -3300(r30)
00097c  97113900  or r3, r18, r3
000980  1f625200  addli r4, r4, 46
000984  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000988  b3920228  sext_int2long r[6:7], r5
00098c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000990  ab0100f0  lui r3, 983040
000994  1f020ff4  addli r4, r30, -1536
000998  97b05203  sll.d r[2:3], r[6:7], r21
00099c  e3024fe6  loadli.w r5,  -3296(r30)
0009a0  97113900  or r3, r18, r3
0009a4  1f026200  addli r4, r4, 48
0009a8  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0009ac  b3920228  sext_int2long r[6:7], r5
0009b0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0009b4  ab0100f0  lui r3, 983040
0009b8  1f020ff4  addli r4, r30, -1536
0009bc  97b05203  sll.d r[2:3], r[6:7], r21
0009c0  e3424fe6  loadli.w r5,  -3292(r30)
0009c4  97113900  or r3, r18, r3
0009c8  1f226200  addli r4, r4, 50
0009cc  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0009d0  b3920228  sext_int2long r[6:7], r5
0009d4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0009d8  ab0100f0  lui r3, 983040
0009dc  1f020ff4  addli r4, r30, -1536
0009e0  97b05203  sll.d r[2:3], r[6:7], r21
0009e4  e3025fe6  loadli.w r5,  -3288(r30)
0009e8  97113900  or r3, r18, r3
0009ec  1f426200  addli r4, r4, 52
0009f0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0009f4  b3920228  sext_int2long r[6:7], r5
0009f8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0009fc  ab0100f0  lui r3, 983040
000a00  1f020ff4  addli r4, r30, -1536
000a04  97b05203  sll.d r[2:3], r[6:7], r21
000a08  e3425fe6  loadli.w r5,  -3284(r30)
000a0c  97113900  or r3, r18, r3
000a10  1f626200  addli r4, r4, 54
000a14  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000a18  b3920228  sext_int2long r[6:7], r5
000a1c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a20  ab0100f0  lui r3, 983040
000a24  1f020ff4  addli r4, r30, -1536
000a28  97b05203  sll.d r[2:3], r[6:7], r21
000a2c  e3026fe6  loadli.w r5,  -3280(r30)
000a30  97113900  or r3, r18, r3
000a34  1f027200  addli r4, r4, 56
000a38  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000a3c  b3920228  sext_int2long r[6:7], r5
000a40  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a44  ab0100f0  lui r3, 983040
000a48  1f020ff4  addli r4, r30, -1536
000a4c  97b05203  sll.d r[2:3], r[6:7], r21
000a50  e3426fe6  loadli.w r5,  -3276(r30)
000a54  97113900  or r3, r18, r3
000a58  1f227200  addli r4, r4, 58
000a5c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000a60  b3920228  sext_int2long r[6:7], r5
000a64  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a68  ab0100f0  lui r3, 983040
000a6c  1f020ff4  addli r4, r30, -1536
000a70  97b05203  sll.d r[2:3], r[6:7], r21
000a74  e3027fe6  loadli.w r5,  -3272(r30)
000a78  97113900  or r3, r18, r3
000a7c  1f427200  addli r4, r4, 60
000a80  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000a84  b3920228  sext_int2long r[6:7], r5
000a88  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a8c  ab0100f0  lui r3, 983040
000a90  1f020ff4  addli r4, r30, -1536
000a94  97b05203  sll.d r[2:3], r[6:7], r21
000a98  e3427fe6  loadli.w r5,  -3268(r30)
000a9c  97113900  or r3, r18, r3
000aa0  1f627200  addli r4, r4, 62
000aa4  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000aa8  b3920228  sext_int2long r[6:7], r5
000aac  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ab0  63028fe6  loadli.w r4,  -3264(r30)
000ab4  ab0100f0  lui r3, 983040
000ab8  97b05203  sll.d r[2:3], r[6:7], r21
000abc  63437fe9  loadli.w r6,  -2884(r30)
000ac0  97113900  or r3, r18, r3
000ac4  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000ac8  33120228  sext_int2long r[5:6], r4
000acc  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
000ad0  97305203  sll.d r[2:3], r[5:6], r21
000ad4  e3428fe6  loadli.w r5,  -3260(r30)
000ad8  ab0100f0  lui r3, 983040
000adc  1f020ff4  addli r4, r30, -1536
000ae0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000ae4  97113900  or r3, r18, r3
000ae8  1f228200  addli r4, r4, 66
000aec  b3920228  sext_int2long r[6:7], r5
000af0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000af4  ab0100f0  lui r3, 983040
000af8  1f020ff4  addli r4, r30, -1536
000afc  97b05203  sll.d r[2:3], r[6:7], r21
000b00  e3029fe6  loadli.w r5,  -3256(r30)
000b04  97113900  or r3, r18, r3
000b08  1f428200  addli r4, r4, 68
000b0c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000b10  b3920228  sext_int2long r[6:7], r5
000b14  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b18  ab0100f0  lui r3, 983040
000b1c  1f020ff4  addli r4, r30, -1536
000b20  97b05203  sll.d r[2:3], r[6:7], r21
000b24  e3429fe6  loadli.w r5,  -3252(r30)
000b28  97113900  or r3, r18, r3
000b2c  1f628200  addli r4, r4, 70
000b30  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000b34  b3920228  sext_int2long r[6:7], r5
000b38  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b3c  ab0100f0  lui r3, 983040
000b40  1f020ff4  addli r4, r30, -1536
000b44  97b05203  sll.d r[2:3], r[6:7], r21
000b48  e302afe6  loadli.w r5,  -3248(r30)
000b4c  97113900  or r3, r18, r3
000b50  1f029200  addli r4, r4, 72
000b54  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000b58  b3920228  sext_int2long r[6:7], r5
000b5c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b60  ab0100f0  lui r3, 983040
000b64  1f020ff4  addli r4, r30, -1536
000b68  97b05203  sll.d r[2:3], r[6:7], r21
000b6c  e342afe6  loadli.w r5,  -3244(r30)
000b70  97113900  or r3, r18, r3
000b74  1f229200  addli r4, r4, 74
000b78  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000b7c  b3920228  sext_int2long r[6:7], r5
000b80  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b84  ab0100f0  lui r3, 983040
000b88  1f020ff4  addli r4, r30, -1536
000b8c  97b05203  sll.d r[2:3], r[6:7], r21
000b90  e302bfe6  loadli.w r5,  -3240(r30)
000b94  97113900  or r3, r18, r3
000b98  1f429200  addli r4, r4, 76
000b9c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000ba0  b3920228  sext_int2long r[6:7], r5
000ba4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ba8  ab0100f0  lui r3, 983040
000bac  1f020ff4  addli r4, r30, -1536
000bb0  97b05203  sll.d r[2:3], r[6:7], r21
000bb4  e342bfe6  loadli.w r5,  -3236(r30)
000bb8  97113900  or r3, r18, r3
000bbc  1f629200  addli r4, r4, 78
000bc0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000bc4  b3920228  sext_int2long r[6:7], r5
000bc8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000bcc  ab0100f0  lui r3, 983040
000bd0  1f020ff4  addli r4, r30, -1536
000bd4  97b05203  sll.d r[2:3], r[6:7], r21
000bd8  e302cfe6  loadli.w r5,  -3232(r30)
000bdc  97113900  or r3, r18, r3
000be0  1f02a200  addli r4, r4, 80
000be4  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000be8  b3920228  sext_int2long r[6:7], r5
000bec  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000bf0  ab0100f0  lui r3, 983040
000bf4  1f020ff4  addli r4, r30, -1536
000bf8  97b05203  sll.d r[2:3], r[6:7], r21
000bfc  e342cfe6  loadli.w r5,  -3228(r30)
000c00  97113900  or r3, r18, r3
000c04  1f22a200  addli r4, r4, 82
000c08  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000c0c  b3920228  sext_int2long r[6:7], r5
000c10  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c14  ab0100f0  lui r3, 983040
000c18  1f020ff4  addli r4, r30, -1536
000c1c  97b05203  sll.d r[2:3], r[6:7], r21
000c20  e302dfe6  loadli.w r5,  -3224(r30)
000c24  97113900  or r3, r18, r3
000c28  1f42a200  addli r4, r4, 84
000c2c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000c30  b3920228  sext_int2long r[6:7], r5
000c34  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c38  ab0100f0  lui r3, 983040
000c3c  1f020ff4  addli r4, r30, -1536
000c40  97b05203  sll.d r[2:3], r[6:7], r21
000c44  e342dfe6  loadli.w r5,  -3220(r30)
000c48  97113900  or r3, r18, r3
000c4c  1f62a200  addli r4, r4, 86
000c50  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000c54  b3920228  sext_int2long r[6:7], r5
000c58  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c5c  ab0100f0  lui r3, 983040
000c60  1f020ff4  addli r4, r30, -1536
000c64  97b05203  sll.d r[2:3], r[6:7], r21
000c68  e302efe6  loadli.w r5,  -3216(r30)
000c6c  97113900  or r3, r18, r3
000c70  1f02b200  addli r4, r4, 88
000c74  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000c78  b3920228  sext_int2long r[6:7], r5
000c7c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c80  ab0100f0  lui r3, 983040
000c84  1f020ff4  addli r4, r30, -1536
000c88  97b05203  sll.d r[2:3], r[6:7], r21
000c8c  e342efe6  loadli.w r5,  -3212(r30)
000c90  97113900  or r3, r18, r3
000c94  1f22b200  addli r4, r4, 90
000c98  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000c9c  b3920228  sext_int2long r[6:7], r5
000ca0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ca4  ab0100f0  lui r3, 983040
000ca8  1f020ff4  addli r4, r30, -1536
000cac  97b05203  sll.d r[2:3], r[6:7], r21
000cb0  e302ffe6  loadli.w r5,  -3208(r30)
000cb4  97113900  or r3, r18, r3
000cb8  1f42b200  addli r4, r4, 92
000cbc  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000cc0  b3920228  sext_int2long r[6:7], r5
000cc4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000cc8  ab0100f0  lui r3, 983040
000ccc  1f020ff4  addli r4, r30, -1536
000cd0  97b05203  sll.d r[2:3], r[6:7], r21
000cd4  e342ffe6  loadli.w r5,  -3204(r30)
000cd8  97113900  or r3, r18, r3
000cdc  1f62b200  addli r4, r4, 94
000ce0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000ce4  b3920228  sext_int2long r[6:7], r5
000ce8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000cec  ab0100f0  lui r3, 983040
000cf0  1f020ff4  addli r4, r30, -1536
000cf4  97b05203  sll.d r[2:3], r[6:7], r21
000cf8  e3020fe7  loadli.w r5,  -3200(r30)
000cfc  97113900  or r3, r18, r3
000d00  1f02c200  addli r4, r4, 96
000d04  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000d08  b3920228  sext_int2long r[6:7], r5
000d0c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d10  ab0100f0  lui r3, 983040
000d14  1f020ff4  addli r4, r30, -1536
000d18  97b05203  sll.d r[2:3], r[6:7], r21
000d1c  e3420fe7  loadli.w r5,  -3196(r30)
000d20  97113900  or r3, r18, r3
000d24  1f22c200  addli r4, r4, 98
000d28  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000d2c  b3920228  sext_int2long r[6:7], r5
000d30  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d34  ab0100f0  lui r3, 983040
000d38  1f020ff4  addli r4, r30, -1536
000d3c  97b05203  sll.d r[2:3], r[6:7], r21
000d40  e3021fe7  loadli.w r5,  -3192(r30)
000d44  97113900  or r3, r18, r3
000d48  1f42c200  addli r4, r4, 100
000d4c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000d50  b3920228  sext_int2long r[6:7], r5
000d54  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d58  ab0100f0  lui r3, 983040
000d5c  1f020ff4  addli r4, r30, -1536
000d60  97b05203  sll.d r[2:3], r[6:7], r21
000d64  e3421fe7  loadli.w r5,  -3188(r30)
000d68  97113900  or r3, r18, r3
000d6c  1f62c200  addli r4, r4, 102
000d70  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000d74  b3920228  sext_int2long r[6:7], r5
000d78  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d7c  ab0100f0  lui r3, 983040
000d80  1f020ff4  addli r4, r30, -1536
000d84  97b05203  sll.d r[2:3], r[6:7], r21
000d88  e3022fe7  loadli.w r5,  -3184(r30)
000d8c  97113900  or r3, r18, r3
000d90  1f02d200  addli r4, r4, 104
000d94  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000d98  b3920228  sext_int2long r[6:7], r5
000d9c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000da0  ab0100f0  lui r3, 983040
000da4  1f020ff4  addli r4, r30, -1536
000da8  97b05203  sll.d r[2:3], r[6:7], r21
000dac  e3422fe7  loadli.w r5,  -3180(r30)
000db0  97113900  or r3, r18, r3
000db4  1f22d200  addli r4, r4, 106
000db8  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000dbc  b3920228  sext_int2long r[6:7], r5
000dc0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000dc4  ab0100f0  lui r3, 983040
000dc8  1f020ff4  addli r4, r30, -1536
000dcc  97b05203  sll.d r[2:3], r[6:7], r21
000dd0  e3023fe7  loadli.w r5,  -3176(r30)
000dd4  97113900  or r3, r18, r3
000dd8  1f42d200  addli r4, r4, 108
000ddc  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000de0  b3920228  sext_int2long r[6:7], r5
000de4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000de8  ab0100f0  lui r3, 983040
000dec  1f020ff4  addli r4, r30, -1536
000df0  97b05203  sll.d r[2:3], r[6:7], r21
000df4  e3423fe7  loadli.w r5,  -3172(r30)
000df8  97113900  or r3, r18, r3
000dfc  1f62d200  addli r4, r4, 110
000e00  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000e04  b3920228  sext_int2long r[6:7], r5
000e08  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e0c  ab0100f0  lui r3, 983040
000e10  1f020ff4  addli r4, r30, -1536
000e14  97b05203  sll.d r[2:3], r[6:7], r21
000e18  e3024fe7  loadli.w r5,  -3168(r30)
000e1c  97113900  or r3, r18, r3
000e20  1f02e200  addli r4, r4, 112
000e24  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000e28  b3920228  sext_int2long r[6:7], r5
000e2c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e30  ab0100f0  lui r3, 983040
000e34  1f020ff4  addli r4, r30, -1536
000e38  97b05203  sll.d r[2:3], r[6:7], r21
000e3c  e3424fe7  loadli.w r5,  -3164(r30)
000e40  97113900  or r3, r18, r3
000e44  1f22e200  addli r4, r4, 114
000e48  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000e4c  b3920228  sext_int2long r[6:7], r5
000e50  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e54  ab0100f0  lui r3, 983040
000e58  1f020ff4  addli r4, r30, -1536
000e5c  97b05203  sll.d r[2:3], r[6:7], r21
000e60  e3025fe7  loadli.w r5,  -3160(r30)
000e64  97113900  or r3, r18, r3
000e68  1f42e200  addli r4, r4, 116
000e6c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000e70  b3920228  sext_int2long r[6:7], r5
000e74  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e78  ab0100f0  lui r3, 983040
000e7c  1f020ff4  addli r4, r30, -1536
000e80  97b05203  sll.d r[2:3], r[6:7], r21
000e84  e3425fe7  loadli.w r5,  -3156(r30)
000e88  97113900  or r3, r18, r3
000e8c  1f62e200  addli r4, r4, 118
000e90  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000e94  b3920228  sext_int2long r[6:7], r5
000e98  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e9c  ab0100f0  lui r3, 983040
000ea0  1f020ff4  addli r4, r30, -1536
000ea4  97b05203  sll.d r[2:3], r[6:7], r21
000ea8  e3026fe7  loadli.w r5,  -3152(r30)
000eac  97113900  or r3, r18, r3
000eb0  1f02f200  addli r4, r4, 120
000eb4  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000eb8  b3920228  sext_int2long r[6:7], r5
000ebc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ec0  ab0100f0  lui r3, 983040
000ec4  1f020ff4  addli r4, r30, -1536
000ec8  97b05203  sll.d r[2:3], r[6:7], r21
000ecc  e3426fe7  loadli.w r5,  -3148(r30)
000ed0  97113900  or r3, r18, r3
000ed4  1f22f200  addli r4, r4, 122
000ed8  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000edc  b3920228  sext_int2long r[6:7], r5
000ee0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ee4  ab0100f0  lui r3, 983040
000ee8  1f020ff4  addli r4, r30, -1536
000eec  97b05203  sll.d r[2:3], r[6:7], r21
000ef0  e3027fe7  loadli.w r5,  -3144(r30)
000ef4  97113900  or r3, r18, r3
000ef8  1f42f200  addli r4, r4, 124
000efc  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000f00  b3920228  sext_int2long r[6:7], r5
000f04  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f08  ab0100f0  lui r3, 983040
000f0c  1f020ff4  addli r4, r30, -1536
000f10  97b05203  sll.d r[2:3], r[6:7], r21
000f14  e3427fe7  loadli.w r5,  -3140(r30)
000f18  97113900  or r3, r18, r3
000f1c  1f62f200  addli r4, r4, 126
000f20  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000f24  b3920228  sext_int2long r[6:7], r5
000f28  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f2c  63028fe7  loadli.w r4,  -3136(r30)
000f30  ab0100f0  lui r3, 983040
000f34  97b05203  sll.d r[2:3], r[6:7], r21
000f38  63038fe9  loadli.w r6,  -2880(r30)
000f3c  97113900  or r3, r18, r3
000f40  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000f44  33120228  sext_int2long r[5:6], r4
000f48  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
000f4c  97305203  sll.d r[2:3], r[5:6], r21
000f50  e3428fe7  loadli.w r5,  -3132(r30)
000f54  ab0100f0  lui r3, 983040
000f58  1f020ff4  addli r4, r30, -1536
000f5c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000f60  97113900  or r3, r18, r3
000f64  1f220201  addli r4, r4, 130
000f68  b3920228  sext_int2long r[6:7], r5
000f6c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f70  ab0100f0  lui r3, 983040
000f74  1f020ff4  addli r4, r30, -1536
000f78  97b05203  sll.d r[2:3], r[6:7], r21
000f7c  e3029fe7  loadli.w r5,  -3128(r30)
000f80  97113900  or r3, r18, r3
000f84  1f420201  addli r4, r4, 132
000f88  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000f8c  b3920228  sext_int2long r[6:7], r5
000f90  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f94  ab0100f0  lui r3, 983040
000f98  1f020ff4  addli r4, r30, -1536
000f9c  97b05203  sll.d r[2:3], r[6:7], r21
000fa0  e3429fe7  loadli.w r5,  -3124(r30)
000fa4  97113900  or r3, r18, r3
000fa8  1f620201  addli r4, r4, 134
000fac  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000fb0  b3920228  sext_int2long r[6:7], r5
000fb4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000fb8  ab0100f0  lui r3, 983040
000fbc  1f020ff4  addli r4, r30, -1536
000fc0  97b05203  sll.d r[2:3], r[6:7], r21
000fc4  e302afe7  loadli.w r5,  -3120(r30)
000fc8  97113900  or r3, r18, r3
000fcc  1f021201  addli r4, r4, 136
000fd0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000fd4  b3920228  sext_int2long r[6:7], r5
000fd8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000fdc  ab0100f0  lui r3, 983040
000fe0  1f020ff4  addli r4, r30, -1536
000fe4  97b05203  sll.d r[2:3], r[6:7], r21
000fe8  e342afe7  loadli.w r5,  -3116(r30)
000fec  97113900  or r3, r18, r3
000ff0  1f221201  addli r4, r4, 138
000ff4  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
000ff8  b3920228  sext_int2long r[6:7], r5
000ffc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001000  ab0100f0  lui r3, 983040
001004  1f020ff4  addli r4, r30, -1536
001008  97b05203  sll.d r[2:3], r[6:7], r21
00100c  e302bfe7  loadli.w r5,  -3112(r30)
001010  97113900  or r3, r18, r3
001014  1f421201  addli r4, r4, 140
001018  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
00101c  b3920228  sext_int2long r[6:7], r5
001020  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001024  ab0100f0  lui r3, 983040
001028  1f020ff4  addli r4, r30, -1536
00102c  97b05203  sll.d r[2:3], r[6:7], r21
001030  e342bfe7  loadli.w r5,  -3108(r30)
001034  97113900  or r3, r18, r3
001038  1f621201  addli r4, r4, 142
00103c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
001040  b3920228  sext_int2long r[6:7], r5
001044  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001048  ab0100f0  lui r3, 983040
00104c  1f020ff4  addli r4, r30, -1536
001050  97b05203  sll.d r[2:3], r[6:7], r21
001054  e302cfe7  loadli.w r5,  -3104(r30)
001058  97113900  or r3, r18, r3
00105c  1f022201  addli r4, r4, 144
001060  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
001064  b3920228  sext_int2long r[6:7], r5
001068  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00106c  ab0100f0  lui r3, 983040
001070  1f020ff4  addli r4, r30, -1536
001074  97b05203  sll.d r[2:3], r[6:7], r21
001078  e342cfe7  loadli.w r5,  -3100(r30)
00107c  97113900  or r3, r18, r3
001080  1f222201  addli r4, r4, 146
001084  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
001088  b3920228  sext_int2long r[6:7], r5
00108c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001090  ab0100f0  lui r3, 983040
001094  1f020ff4  addli r4, r30, -1536
001098  97b05203  sll.d r[2:3], r[6:7], r21
00109c  e302dfe7  loadli.w r5,  -3096(r30)
0010a0  97113900  or r3, r18, r3
0010a4  1f422201  addli r4, r4, 148
0010a8  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0010ac  b3920228  sext_int2long r[6:7], r5
0010b0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010b4  ab0100f0  lui r3, 983040
0010b8  1f020ff4  addli r4, r30, -1536
0010bc  97b05203  sll.d r[2:3], r[6:7], r21
0010c0  e342dfe7  loadli.w r5,  -3092(r30)
0010c4  97113900  or r3, r18, r3
0010c8  1f622201  addli r4, r4, 150
0010cc  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0010d0  b3920228  sext_int2long r[6:7], r5
0010d4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010d8  ab0100f0  lui r3, 983040
0010dc  1f020ff4  addli r4, r30, -1536
0010e0  97b05203  sll.d r[2:3], r[6:7], r21
0010e4  e302efe7  loadli.w r5,  -3088(r30)
0010e8  97113900  or r3, r18, r3
0010ec  1f023201  addli r4, r4, 152
0010f0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0010f4  b3920228  sext_int2long r[6:7], r5
0010f8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010fc  ab0100f0  lui r3, 983040
001100  1f020ff4  addli r4, r30, -1536
001104  97b05203  sll.d r[2:3], r[6:7], r21
001108  e342efe7  loadli.w r5,  -3084(r30)
00110c  97113900  or r3, r18, r3
001110  1f223201  addli r4, r4, 154
001114  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
001118  b3920228  sext_int2long r[6:7], r5
00111c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001120  ab0100f0  lui r3, 983040
001124  1f020ff4  addli r4, r30, -1536
001128  97b05203  sll.d r[2:3], r[6:7], r21
00112c  e302ffe7  loadli.w r5,  -3080(r30)
001130  97113900  or r3, r18, r3
001134  1f423201  addli r4, r4, 156
001138  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
00113c  b3920228  sext_int2long r[6:7], r5
001140  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001144  ab0100f0  lui r3, 983040
001148  1f020ff4  addli r4, r30, -1536
00114c  97b05203  sll.d r[2:3], r[6:7], r21
001150  e342ffe7  loadli.w r5,  -3076(r30)
001154  97113900  or r3, r18, r3
001158  1f623201  addli r4, r4, 158
00115c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
001160  b3920228  sext_int2long r[6:7], r5
001164  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001168  ab0100f0  lui r3, 983040
00116c  1f020ff4  addli r4, r30, -1536
001170  97b05203  sll.d r[2:3], r[6:7], r21
001174  e3020fe8  loadli.w r5,  -3072(r30)
001178  97113900  or r3, r18, r3
00117c  1f024201  addli r4, r4, 160
001180  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
001184  b3920228  sext_int2long r[6:7], r5
001188  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00118c  ab0100f0  lui r3, 983040
001190  1f020ff4  addli r4, r30, -1536
001194  97b05203  sll.d r[2:3], r[6:7], r21
001198  e3420fe8  loadli.w r5,  -3068(r30)
00119c  97113900  or r3, r18, r3
0011a0  1f224201  addli r4, r4, 162
0011a4  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0011a8  b3920228  sext_int2long r[6:7], r5
0011ac  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011b0  ab0100f0  lui r3, 983040
0011b4  1f020ff4  addli r4, r30, -1536
0011b8  97b05203  sll.d r[2:3], r[6:7], r21
0011bc  e3021fe8  loadli.w r5,  -3064(r30)
0011c0  97113900  or r3, r18, r3
0011c4  1f424201  addli r4, r4, 164
0011c8  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0011cc  b3920228  sext_int2long r[6:7], r5
0011d0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011d4  ab0100f0  lui r3, 983040
0011d8  1f020ff4  addli r4, r30, -1536
0011dc  97b05203  sll.d r[2:3], r[6:7], r21
0011e0  e3421fe8  loadli.w r5,  -3060(r30)
0011e4  97113900  or r3, r18, r3
0011e8  1f624201  addli r4, r4, 166
0011ec  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0011f0  b3920228  sext_int2long r[6:7], r5
0011f4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011f8  ab0100f0  lui r3, 983040
0011fc  1f020ff4  addli r4, r30, -1536
001200  97b05203  sll.d r[2:3], r[6:7], r21
001204  e3022fe8  loadli.w r5,  -3056(r30)
001208  97113900  or r3, r18, r3
00120c  1f025201  addli r4, r4, 168
001210  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
001214  b3920228  sext_int2long r[6:7], r5
001218  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00121c  ab0100f0  lui r3, 983040
001220  1f020ff4  addli r4, r30, -1536
001224  97b05203  sll.d r[2:3], r[6:7], r21
001228  e3422fe8  loadli.w r5,  -3052(r30)
00122c  97113900  or r3, r18, r3
001230  1f225201  addli r4, r4, 170
001234  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
001238  b3920228  sext_int2long r[6:7], r5
00123c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001240  ab0100f0  lui r3, 983040
001244  1f020ff4  addli r4, r30, -1536
001248  97b05203  sll.d r[2:3], r[6:7], r21
00124c  e3023fe8  loadli.w r5,  -3048(r30)
001250  97113900  or r3, r18, r3
001254  1f425201  addli r4, r4, 172
001258  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
00125c  b3920228  sext_int2long r[6:7], r5
001260  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001264  ab0100f0  lui r3, 983040
001268  1f020ff4  addli r4, r30, -1536
00126c  97b05203  sll.d r[2:3], r[6:7], r21
001270  e3423fe8  loadli.w r5,  -3044(r30)
001274  97113900  or r3, r18, r3
001278  1f625201  addli r4, r4, 174
00127c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
001280  b3920228  sext_int2long r[6:7], r5
001284  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001288  ab0100f0  lui r3, 983040
00128c  1f020ff4  addli r4, r30, -1536
001290  97b05203  sll.d r[2:3], r[6:7], r21
001294  e3024fe8  loadli.w r5,  -3040(r30)
001298  97113900  or r3, r18, r3
00129c  1f026201  addli r4, r4, 176
0012a0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0012a4  b3920228  sext_int2long r[6:7], r5
0012a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012ac  ab0100f0  lui r3, 983040
0012b0  1f020ff4  addli r4, r30, -1536
0012b4  97b05203  sll.d r[2:3], r[6:7], r21
0012b8  e3424fe8  loadli.w r5,  -3036(r30)
0012bc  97113900  or r3, r18, r3
0012c0  1f226201  addli r4, r4, 178
0012c4  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0012c8  b3920228  sext_int2long r[6:7], r5
0012cc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012d0  ab0100f0  lui r3, 983040
0012d4  1f020ff4  addli r4, r30, -1536
0012d8  97b05203  sll.d r[2:3], r[6:7], r21
0012dc  e3025fe8  loadli.w r5,  -3032(r30)
0012e0  97113900  or r3, r18, r3
0012e4  1f426201  addli r4, r4, 180
0012e8  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0012ec  b3920228  sext_int2long r[6:7], r5
0012f0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012f4  ab0100f0  lui r3, 983040
0012f8  1f020ff4  addli r4, r30, -1536
0012fc  97b05203  sll.d r[2:3], r[6:7], r21
001300  e3425fe8  loadli.w r5,  -3028(r30)
001304  97113900  or r3, r18, r3
001308  1f626201  addli r4, r4, 182
00130c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
001310  b3920228  sext_int2long r[6:7], r5
001314  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001318  ab0100f0  lui r3, 983040
00131c  1f020ff4  addli r4, r30, -1536
001320  97b05203  sll.d r[2:3], r[6:7], r21
001324  e3026fe8  loadli.w r5,  -3024(r30)
001328  97113900  or r3, r18, r3
00132c  1f027201  addli r4, r4, 184
001330  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
001334  b3920228  sext_int2long r[6:7], r5
001338  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00133c  ab0100f0  lui r3, 983040
001340  1f020ff4  addli r4, r30, -1536
001344  97b05203  sll.d r[2:3], r[6:7], r21
001348  e3426fe8  loadli.w r5,  -3020(r30)
00134c  97113900  or r3, r18, r3
001350  1f227201  addli r4, r4, 186
001354  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
001358  b3920228  sext_int2long r[6:7], r5
00135c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001360  ab0100f0  lui r3, 983040
001364  1f020ff4  addli r4, r30, -1536
001368  97b05203  sll.d r[2:3], r[6:7], r21
00136c  e3027fe8  loadli.w r5,  -3016(r30)
001370  97113900  or r3, r18, r3
001374  1f427201  addli r4, r4, 188
001378  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
00137c  b3920228  sext_int2long r[6:7], r5
001380  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001384  ab0100f0  lui r3, 983040
001388  1f020ff4  addli r4, r30, -1536
00138c  97b05203  sll.d r[2:3], r[6:7], r21
001390  e3427fe8  loadli.w r5,  -3012(r30)
001394  97113900  or r3, r18, r3
001398  1f627201  addli r4, r4, 190
00139c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0013a0  b3920228  sext_int2long r[6:7], r5
0013a4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0013a8  63028fe8  loadli.w r4,  -3008(r30)
0013ac  ab0100f0  lui r3, 983040
0013b0  97b05203  sll.d r[2:3], r[6:7], r21
0013b4  63438fe9  loadli.w r6,  -2876(r30)
0013b8  97113900  or r3, r18, r3
0013bc  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0013c0  33120228  sext_int2long r[5:6], r4
0013c4  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
0013c8  97305203  sll.d r[2:3], r[5:6], r21
0013cc  e3428fe8  loadli.w r5,  -3004(r30)
0013d0  ab0100f0  lui r3, 983040
0013d4  1f020ff4  addli r4, r30, -1536
0013d8  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0013dc  97113900  or r3, r18, r3
0013e0  1f228201  addli r4, r4, 194
0013e4  b3920228  sext_int2long r[6:7], r5
0013e8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0013ec  ab0100f0  lui r3, 983040
0013f0  1f020ff4  addli r4, r30, -1536
0013f4  97b05203  sll.d r[2:3], r[6:7], r21
0013f8  e3029fe8  loadli.w r5,  -3000(r30)
0013fc  97113900  or r3, r18, r3
001400  1f428201  addli r4, r4, 196
001404  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
001408  b3920228  sext_int2long r[6:7], r5
00140c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001410  ab0100f0  lui r3, 983040
001414  1f020ff4  addli r4, r30, -1536
001418  97b05203  sll.d r[2:3], r[6:7], r21
00141c  e3429fe8  loadli.w r5,  -2996(r30)
001420  97113900  or r3, r18, r3
001424  1f628201  addli r4, r4, 198
001428  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
00142c  b3920228  sext_int2long r[6:7], r5
001430  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001434  ab0100f0  lui r3, 983040
001438  1f020ff4  addli r4, r30, -1536
00143c  97b05203  sll.d r[2:3], r[6:7], r21
001440  e302afe8  loadli.w r5,  -2992(r30)
001444  97113900  or r3, r18, r3
001448  1f029201  addli r4, r4, 200
00144c  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
001450  b3920228  sext_int2long r[6:7], r5
001454  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001458  6342afe8  loadli.w r4,  -2988(r30)
00145c  ab0100f0  lui r3, 983040
001460  97b05203  sll.d r[2:3], r[6:7], r21
001464  1f030ff4  addli r6, r30, -1536
001468  97113900  or r3, r18, r3
00146c  33120228  sext_int2long r[5:6], r4
001470  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
001474  1f239301  addli r6, r6, 202
001478  17325203  sll.d r[5:6], r[5:6], r21
00147c  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
001480  ab0100f0  lui r3, 983040
001484  8ba04d10  add.ul r[2:3], r[28:29], r[5:6]
001488  e302bfe8  loadli.w r5,  -2984(r30)
00148c  1f020ff4  addli r4, r30, -1536
001490  97113900  or r3, r18, r3
001494  1f429201  addli r4, r4, 204
001498  b3920228  sext_int2long r[6:7], r5
00149c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0014a0  97b15203  sll.d r[4:5], r[6:7], r21
0014a4  9f029fe9  addli r5, r30, -2872
0014a8  1f030ff4  addli r6, r30, -1536
0014ac  ebd00200  load.d r[2:3], 0(r5)
0014b0  ab0200f0  lui r5, 983040
0014b4  8ba13d10  add.ul r[4:5], r[28:29], r[4:5]
0014b8  1f639301  addli r6, r6, 206
0014bc  97125900  or r5, r18, r5
0014c0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0014c4  ffb26100  s_lm2gm r5, r6, 0(r[4:5])
0014c8  e301cfe8  loadli.w r3,  -2976(r30)
0014cc  97b21303  sll.d r[6:7], r[8:9], r17
0014d0  ab0300f0  lui r7, 983040
0014d4  1f040ff4  addli r8, r30, -1536
0014d8  8ba25d10  add.ul r[6:7], r[28:29], r[6:7]
0014dc  1f04a401  addli r8, r8, 208
0014e0  97137900  or r7, r18, r7
0014e4  b3910128  sext_int2long r[4:5], r3
0014e8  ffb38200  s_lm2gm r7, r8, 0(r[6:7])
0014ec  97b31403  sll.d r[8:9], r[10:11], r17
0014f0  ab0400f0  lui r9, 983040
0014f4  1f050ff4  addli r10, r30, -1536
0014f8  e302dfe8  loadli.w r5,  -2968(r30)
0014fc  97b11103  sll.d r[4:5], r[4:5], r17
001500  1f25a501  addli r10, r10, 210
001504  97149900  or r9, r18, r9
001508  8ba37d10  add.ul r[8:9], r[28:29], r[8:9]
00150c  8ba13d10  add.ul r[4:5], r[28:29], r[4:5]
001510  b3920228  sext_int2long r[6:7], r5
001514  ffb4a100  s_lm2gm r9, r10, 0(r[4:5])
001518  97b41503  sll.d r[10:11], r[12:13], r17
00151c  ab0500f0  lui r11, 983040
001520  1f060ff4  addli r12, r30, -1536
001524  97b21203  sll.d r[6:7], r[6:7], r17
001528  e301efe8  loadli.w r3,  -2960(r30)
00152c  1f46a601  addli r12, r12, 212
001530  9715b900  or r11, r18, r11
001534  8ba25d10  add.ul r[6:7], r[28:29], r[6:7]
001538  8ba49d10  add.ul r[10:11], r[28:29], r[10:11]
00153c  b3910128  sext_int2long r[4:5], r3
001540  ffb5c300  s_lm2gm r11, r12, 0(r[8:9])
001544  e303ffe8  loadli.w r7,  -2952(r30)
001548  97b51603  sll.d r[12:13], r[14:15], r17
00154c  97b11103  sll.d r[4:5], r[4:5], r17
001550  8ba6bd10  add.ul r[14:15], r[28:29], r[12:13]
001554  e345ffe8  loadli.w r11,  -2948(r30)
001558  b3930328  sext_int2long r[8:9], r7
00155c  8ba13d10  add.ul r[4:5], r[28:29], r[4:5]
001560  97b31303  sll.d r[8:9], r[8:9], r17
001564  b3950528  sext_int2long r[12:13], r11
001568  8ba77d10  add.ul r[16:17], r[28:29], r[8:9]
00156c  ab0300f0  lui r7, 983040
001570  1f040ff4  addli r8, r30, -1536
001574  1f64a401  addli r8, r8, 214
001578  97137900  or r7, r18, r7
00157c  ffb38200  s_lm2gm r7, r8, 0(r[6:7])
001580  e3020fe9  loadli.w r5,  -2944(r30)
001584  97b31503  sll.d r[8:9], r[12:13], r17
001588  8baa7d10  add.ul r[22:23], r[28:29], r[8:9]
00158c  e3430fe9  loadli.w r7,  -2940(r30)
001590  b3920228  sext_int2long r[6:7], r5
001594  97b21203  sll.d r[6:7], r[6:7], r17
001598  b3930328  sext_int2long r[8:9], r7
00159c  8ba55d10  add.ul r[12:13], r[28:29], r[6:7]
0015a0  ab0200f0  lui r5, 983040
0015a4  1f030ff4  addli r6, r30, -1536
0015a8  97b31303  sll.d r[8:9], r[8:9], r17
0015ac  1f03b301  addli r6, r6, 216
0015b0  97125900  or r5, r18, r5
0015b4  8bab7d10  add.ul r[24:25], r[28:29], r[8:9]
0015b8  ab0300f0  lui r7, 983040
0015bc  1f040ff4  addli r8, r30, -1536
0015c0  ffb26400  s_lm2gm r5, r6, 0(r[10:11])
0015c4  e3021fe9  loadli.w r5,  -2936(r30)
0015c8  1f24b401  addli r8, r8, 218
0015cc  97137900  or r7, r18, r7
0015d0  ffb38100  s_lm2gm r7, r8, 0(r[4:5])
0015d4  e3012fe9  loadli.w r3,  -2928(r30)
0015d8  9f030feb  addli r7, r30, -2688
0015dc  b3920228  sext_int2long r[6:7], r5
0015e0  97b21203  sll.d r[6:7], r[6:7], r17
0015e4  b3910128  sext_int2long r[4:5], r3
0015e8  8ba95d10  add.ul r[20:21], r[28:29], r[6:7]
0015ec  e3421fe9  loadli.w r5,  -2932(r30)
0015f0  97b11103  sll.d r[4:5], r[4:5], r17
0015f4  8ba43d10  add.ul r[10:11], r[28:29], r[4:5]
0015f8  b3920228  sext_int2long r[6:7], r5
0015fc  97b21203  sll.d r[6:7], r[6:7], r17
001600  8ba25d10  add.ul r[6:7], r[28:29], r[6:7]
001604  73b05300  store.d r[6:7], 0(r7)
001608  e3422fe9  loadli.w r5,  -2924(r30)
00160c  b3920228  sext_int2long r[6:7], r5
001610  97b11203  sll.d r[4:5], r[6:7], r17
001614  ab0200f0  lui r5, 983040
001618  1f030ff4  addli r6, r30, -1536
00161c  9f43b301  addli r7, r6, 220
001620  17145900  or r8, r18, r5
001624  8ba23d10  add.ul r[6:7], r[28:29], r[4:5]
001628  e3413fe9  loadli.w r3,  -2916(r30)
00162c  7fb47600  s_lm2gm r8, r7, 0(r[14:15])
001630  e3033fe9  loadli.w r7,  -2920(r30)
001634  b3910128  sext_int2long r[4:5], r3
001638  b3930328  sext_int2long r[8:9], r7
00163c  97b11103  sll.d r[4:5], r[4:5], r17
001640  97b31303  sll.d r[8:9], r[8:9], r17
001644  8ba63d10  add.ul r[14:15], r[28:29], r[4:5]
001648  8ba17d10  add.ul r[4:5], r[28:29], r[8:9]
00164c  9f03efeb  addli r7, r30, -2576
001650  73b03300  store.d r[4:5], 0(r7)
001654  e3014fe9  loadli.w r3,  -2912(r30)
001658  b3930128  sext_int2long r[8:9], r3
00165c  97b31303  sll.d r[8:9], r[8:9], r17
001660  9f180000  addli r17, zero, 1
001664  8ba17d10  add.ul r[4:5], r[28:29], r[8:9]
001668  9f030ff4  addli r7, r30, -1536
00166c  ffbc7000  s_lm2gm r25, r7, 0(r[2:3])
001670  ab0c00f0  lui r25, 983040
001674  1fedb301  addli r26, r7, 222
001678  e3035fe9  loadli.w r7,  -2904(r30)
00167c  e3404fe9  loadli.w r1,  -2908(r30)
001680  971c9901  or r25, r18, r25
001684  b3900028  sext_int2long r[2:3], r1
001688  ffbca701  s_lm2gm r25, r26, 0(r[16:17])
00168c  b3970328  sext_int2long r[16:17], r7
001690  9f030ff4  addli r7, r30, -1536
001694  ab0c00f0  lui r25, 983040
001698  97b01003  sll.d r[2:3], r[2:3], r17
00169c  1f8dc301  addli r26, r7, 224
0016a0  e3435fe9  loadli.w r7,  -2900(r30)
0016a4  971c9901  or r25, r18, r25
0016a8  97b71703  sll.d r[16:17], r[16:17], r17
0016ac  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0016b0  ffbcaa01  s_lm2gm r25, r26, 0(r[22:23])
0016b4  ab0c00f0  lui r25, 983040
0016b8  8ba7fd10  add.ul r[16:17], r[28:29], r[16:17]
0016bc  b39a0328  sext_int2long r[22:23], r7
0016c0  9f030ff4  addli r7, r30, -1536
0016c4  971c9901  or r25, r18, r25
0016c8  1fadc301  addli r26, r7, 226
0016cc  e3036fe9  loadli.w r7,  -2896(r30)
0016d0  97ba1a03  sll.d r[22:23], r[22:23], r17
0016d4  ffbca501  s_lm2gm r25, r26, 0(r[12:13])
0016d8  9f050ff4  addli r11, r30, -1536
0016dc  b39c0328  sext_int2long r[26:27], r7
0016e0  8ba35d11  add.ul r[8:9], r[28:29], r[22:23]
0016e4  97ba1c03  sll.d r[22:23], r[26:27], r17
0016e8  ab0c00f0  lui r25, 983040
0016ec  1fcdc501  addli r26, r11, 228
0016f0  971c9901  or r25, r18, r25
0016f4  8baa5d11  add.ul r[22:23], r[28:29], r[22:23]
0016f8  ffbcab01  s_lm2gm r25, r26, 0(r[24:25])
0016fc  1fecc501  addli r24, r11, 230
001700  e3456fe9  loadli.w r11,  -2892(r30)
001704  ab0b00f0  lui r23, 983040
001708  971b7901  or r23, r18, r23
00170c  b39c0528  sext_int2long r[26:27], r11
001710  e3057fe9  loadli.w r11,  -2888(r30)
001714  ffbb8901  s_lm2gm r23, r24, 0(r[20:21])
001718  97bb1c03  sll.d r[24:25], r[26:27], r17
00171c  b3990528  sext_int2long r[20:21], r11
001720  9f050ff4  addli r11, r30, -1536
001724  97bc1903  sll.d r[26:27], r[20:21], r17
001728  8ba97d11  add.ul r[20:21], r[28:29], r[24:25]
00172c  9f080feb  addli r17, r30, -2688
001730  8bab9d11  add.ul r[24:25], r[28:29], r[26:27]
001734  ab0d00f0  lui r27, 983040
001738  1faed501  addli r28, r11, 234
00173c  ab0c00f0  lui r25, 983040
001740  1f8dd501  addli r26, r11, 232
001744  ebd50800  load.d r[12:13], 0(r17)
001748  971db901  or r27, r18, r27
00174c  971c9901  or r25, r18, r25
001750  ffbdc401  s_lm2gm r27, r28, 0(r[10:11])
001754  ab0400f0  lui r9, 983040
001758  9f0d0ff4  addli r27, r30, -1536
00175c  ffbca501  s_lm2gm r25, r26, 0(r[12:13])
001760  ab0500f0  lui r11, 983040
001764  1fc5dd01  addli r10, r27, 236
001768  97149900  or r9, r18, r9
00176c  1fe6dd01  addli r12, r27, 238
001770  9715b900  or r11, r18, r11
001774  ffb4a200  s_lm2gm r9, r10, 0(r[6:7])
001778  ab0400f0  lui r9, 983040
00177c  1fa5ed01  addli r10, r27, 242
001780  ffb5c600  s_lm2gm r11, r12, 0(r[14:15])
001784  9f06efeb  addli r13, r30, -2576
001788  ab0200f0  lui r5, 983040
00178c  1f83ed01  addli r6, r27, 240
001790  97149900  or r9, r18, r9
001794  ebd50600  load.d r[12:13], 0(r13)
001798  97125900  or r5, r18, r5
00179c  ffb4a100  s_lm2gm r9, r10, 0(r[4:5])
0017a0  ab0100f0  lui r3, 983040
0017a4  1fc2ed01  addli r4, r27, 244
0017a8  ffb26500  s_lm2gm r5, r6, 0(r[12:13])
0017ac  ab0200f0  lui r5, 983040
0017b0  1fe3ed01  addli r6, r27, 246
0017b4  6346afe9  loadli.w r12,  -2860(r30)
0017b8  97113900  or r3, r18, r3
0017bc  97125900  or r5, r18, r5
0017c0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0017c4  ab0000f0  lui r1, 983040
0017c8  ab0100f0  lui r3, 983040
0017cc  1f81fd01  addli r2, r27, 248
0017d0  1fa2fd01  addli r4, r27, 250
0017d4  ffb26700  s_lm2gm r5, r6, 0(r[16:17])
0017d8  97101900  or r1, r18, r1
0017dc  97113900  or r3, r18, r3
0017e0  ffb02300  s_lm2gm r1, r2, 0(r[8:9])
0017e4  ab0000f0  lui r1, 983040
0017e8  ffb14a00  s_lm2gm r3, r4, 0(r[22:23])
0017ec  ab0100f0  lui r3, 983040
0017f0  1fc1fd01  addli r2, r27, 252
0017f4  1fe2fd01  addli r4, r27, 254
0017f8  1f040002  addli r8, zero, 256
0017fc  97101900  or r1, r18, r1
001800  97113900  or r3, r18, r3
001804  ffb02900  s_lm2gm r1, r2, 0(r[20:21])
001808  e3004fe5  loadli.w r1,  -3424(r30)
00180c  ffb14b00  s_lm2gm r3, r4, 0(r[24:25])
001810  00a00000  mfence { lm }
001814  634affeb  loadli.w r20,  -2564(r30)
001818  0b161610  add.s r12, r12, r1
00181c  e3405fe5  loadli.w r1,  -3412(r30)
001820  3f201600  blt.s r12, r1, 8
001824  db1f0500  j 10492
001828  9f000000  addli r1, zero, 0
00182c  0b911d10  add.s r2, r27, r1
001830  9fc00000  addli r1, r1, 4
001834  73100100  store.h zero, 0(r2)
001838  73110100  store.h zero, 2(r2)
00183c  00a00000  mfence { lm }
001840  bbbf80fe  bneq r1, r8, -20
001844  e3007f00  loadli.w r1,  56(r30)
001848  63416f00  loadli.w r2,  52(r30)
00184c  63025fe5  loadli.w r4,  -3416(r30)
001850  e3424fe5  loadli.w r5,  -3420(r30)
001854  9f130000  addli r7, zero, 1
001858  ab0100f0  lui r3, 983040
00185c  674dcfe8  storeli.w r12, -2860(r30)
001860  97113400  or r3, r8, r3
001864  8b101630  div.s r1, r12, r1
001868  8b902030  div.s r1, r1, r2
00186c  2b0100f0  lui r2, 983040
001870  17112400  or r2, r8, r2
001874  9bb03000  slli r1, r1, 3
001878  0b924010  add.s r4, r1, r4
00187c  ab0000f0  lui r1, 983040
001880  1b33a200  slli r6, r4, 10
001884  97101400  or r1, r8, r1
001888  670f4fea  storeli.w r4, -2576(r30)
00188c  2b0200f0  lui r4, 983040
001890  8b125310  add.s r5, r6, r5
001894  67456fea  storeli.w r6, -2732(r30)
001898  17124400  or r4, r8, r4
00189c  b3920228  sext_int2long r[6:7], r5
0018a0  97b47202  sll.d r[10:11], r[6:7], r7
0018a4  eb520f00  load.d r[6:7], 0(r30)
0018a8  9f039fe9  addli r7, r30, -2872
0018ac  73b09300  store.d r[10:11], 0(r7)
0018b0  8ba29210  add.ul r[6:7], r[6:7], r[10:11]
0018b4  7fa1b201  l_gm2lm r2, r27, 0(r[6:7])
0018b8  1f01bfe4  addli r2, r30, -3496
0018bc  eb520100  load.d r[6:7], 0(r2)
0018c0  1f010ff6  addli r2, r30, -1280
0018c4  ffa12200  l_gm2lm r3, r2, 0(r[6:7])
0018c8  9f02afe4  addli r5, r30, -3504
0018cc  6bd10200  load.d r[3:4], 0(r5)
0018d0  9f020ff8  addli r5, r30, -1024
0018d4  ff205100  l_gm2lm r1, r5, 0(r[3:4])
0018d8  9f019fe4  addli r3, r30, -3512
0018dc  ebd00100  load.d r[2:3], 0(r3)
0018e0  9f010ffa  addli r3, r30, -768
0018e4  7fa23000  l_gm2lm r4, r3, 0(r[2:3])
0018e8  9f000ff4  addli r1, r30, -1536
0018ec  1f018ff6  addli r2, r30, -1216
0018f0  00a00000  mfence { lm }
0018f4  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0018f8  9f008ff4  addli r1, r30, -1472
0018fc  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001900  9f000ff5  addli r1, r30, -1408
001904  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001908  9f008ff5  addli r1, r30, -1344
00190c  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
001910  9f000ff6  addli r1, r30, -1280
001914  e6c47180  vmerge_l.hf vr9, vr3, vr7
001918  e6c371a0  vmerge_h.hf vr7, vr3, vr7
00191c  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
001920  9f000feb  addli r1, r30, -2688
001924  00a00000  mfence { lm }
001928  66c31180  vmerge_l.hf vr6, vr3, vr1
00192c  e6c211a0  vmerge_h.hf vr5, vr3, vr1
001930  e6c02180  vmerge_l.hf vr1, vr3, vr2
001934  66c121a0  vmerge_h.hf vr2, vr3, vr2
001938  66c04180  vmerge_l.hf vr0, vr3, vr4
00193c  66c241a0  vmerge_h.hf vr4, vr3, vr4
001940  66c58180  vmerge_l.hf vr10, vr3, vr8
001944  66c481a0  vmerge_h.hf vr8, vr3, vr8
001948  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00194c  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
001950  1f010ff7  addli r2, r30, -1152
001954  9694a402  vadd.f.mz.rn vr9{mr1}, vr9, vr10
001958  96938302  vadd.f.mz.rn vr7{mr1}, vr7, vr8
00195c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
001960  1f018ff7  addli r2, r30, -1088
001964  42140102  vload_mask16.mz vr8{mr1}, 0(r2)
001968  66c5b180  vmerge_l.hf vr10, vr3, vr11
00196c  e6c5b1a0  vmerge_h.hf vr11, vr3, vr11
001970  1613a302  vadd.f.mz.rn vr6{mr1}, vr6, vr10
001974  66c50180  vmerge_l.hf vr10, vr3, vr0
001978  66c001a0  vmerge_h.hf vr0, vr3, vr0
00197c  9692b202  vadd.f.mz.rn vr5{mr1}, vr5, vr11
001980  e6c58180  vmerge_l.hf vr11, vr3, vr8
001984  66c481a0  vmerge_h.hf vr8, vr3, vr8
001988  16100102  vadd.f.mz.rn vr0{mr1}, vr2, vr0
00198c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001990  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
001994  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
001998  46109fc2  vstore_mask16.mz vr9{mr1}, 1536(r30)
00199c  46147fc2  vstore_mask16.mz vr7{mr1}, 1600(r30)
0019a0  46186fc2  vstore_mask16.mz vr6{mr1}, 1664(r30)
0019a4  461c5fc2  vstore_mask16.mz vr5{mr1}, 1728(r30)
0019a8  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
0019ac  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
0019b0  1611b102  vadd.f.mz.rn vr2{mr1}, vr2, vr11
0019b4  46182fe2  vstore_mask16.mz vr2{mr1}, 1920(r30)
0019b8  461c4fe2  vstore_mask16.mz vr4{mr1}, 1984(r30)
0019bc  00a00000  mfence { lm }
0019c0  63060ffc  loadli.w r12,  -512(r30)
0019c4  63440ffc  loadli.w r8,  -508(r30)
0019c8  e3011ffc  loadli.w r3,  -504(r30)
0019cc  e3491ffc  loadli.w r19,  -500(r30)
0019d0  63092ffc  loadli.w r18,  -496(r30)
0019d4  e3472ffc  loadli.w r15,  -492(r30)
0019d8  e3063ffc  loadli.w r13,  -488(r30)
0019dc  e3453ffc  loadli.w r11,  -484(r30)
0019e0  63054ffc  loadli.w r10,  -480(r30)
0019e4  e3444ffc  loadli.w r9,  -476(r30)
0019e8  e3035ffc  loadli.w r7,  -472(r30)
0019ec  63435ffc  loadli.w r6,  -468(r30)
0019f0  e3026ffc  loadli.w r5,  -464(r30)
0019f4  63426ffc  loadli.w r4,  -460(r30)
0019f8  63017ffc  loadli.w r2,  -456(r30)
0019fc  e3407ffc  loadli.w r1,  -452(r30)
001a00  63078ffc  loadli.w r14,  -448(r30)
001a04  63478ffc  loadli.w r14,  -444(r30)
001a08  63079ffc  loadli.w r14,  -440(r30)
001a0c  63479ffc  loadli.w r14,  -436(r30)
001a10  6307affc  loadli.w r14,  -432(r30)
001a14  6347affc  loadli.w r14,  -428(r30)
001a18  6307bffc  loadli.w r14,  -424(r30)
001a1c  6347bffc  loadli.w r14,  -420(r30)
001a20  6307cffc  loadli.w r14,  -416(r30)
001a24  6347cffc  loadli.w r14,  -412(r30)
001a28  6307dffc  loadli.w r14,  -408(r30)
001a2c  6347dffc  loadli.w r14,  -404(r30)
001a30  6307effc  loadli.w r14,  -400(r30)
001a34  6347effc  loadli.w r14,  -396(r30)
001a38  6307fffc  loadli.w r14,  -392(r30)
001a3c  6347fffc  loadli.w r14,  -388(r30)
001a40  63070ffd  loadli.w r14,  -384(r30)
001a44  63470ffd  loadli.w r14,  -380(r30)
001a48  63071ffd  loadli.w r14,  -376(r30)
001a4c  63471ffd  loadli.w r14,  -372(r30)
001a50  63072ffd  loadli.w r14,  -368(r30)
001a54  63472ffd  loadli.w r14,  -364(r30)
001a58  63073ffd  loadli.w r14,  -360(r30)
001a5c  63473ffd  loadli.w r14,  -356(r30)
001a60  63074ffd  loadli.w r14,  -352(r30)
001a64  63474ffd  loadli.w r14,  -348(r30)
001a68  63075ffd  loadli.w r14,  -344(r30)
001a6c  63475ffd  loadli.w r14,  -340(r30)
001a70  63076ffd  loadli.w r14,  -336(r30)
001a74  63476ffd  loadli.w r14,  -332(r30)
001a78  63077ffd  loadli.w r14,  -328(r30)
001a7c  63477ffd  loadli.w r14,  -324(r30)
001a80  63078ffd  loadli.w r14,  -320(r30)
001a84  63478ffd  loadli.w r14,  -316(r30)
001a88  63079ffd  loadli.w r14,  -312(r30)
001a8c  63479ffd  loadli.w r14,  -308(r30)
001a90  6307affd  loadli.w r14,  -304(r30)
001a94  6347affd  loadli.w r14,  -300(r30)
001a98  6307bffd  loadli.w r14,  -296(r30)
001a9c  6347bffd  loadli.w r14,  -292(r30)
001aa0  6307cffd  loadli.w r14,  -288(r30)
001aa4  6347cffd  loadli.w r14,  -284(r30)
001aa8  6307dffd  loadli.w r14,  -280(r30)
001aac  6347dffd  loadli.w r14,  -276(r30)
001ab0  6307effd  loadli.w r14,  -272(r30)
001ab4  6347effd  loadli.w r14,  -268(r30)
001ab8  6307fffd  loadli.w r14,  -264(r30)
001abc  6347fffd  loadli.w r14,  -260(r30)
001ac0  63070ffe  loadli.w r14,  -256(r30)
001ac4  63470ffe  loadli.w r14,  -252(r30)
001ac8  63071ffe  loadli.w r14,  -248(r30)
001acc  63471ffe  loadli.w r14,  -244(r30)
001ad0  63072ffe  loadli.w r14,  -240(r30)
001ad4  63472ffe  loadli.w r14,  -236(r30)
001ad8  63073ffe  loadli.w r14,  -232(r30)
001adc  63473ffe  loadli.w r14,  -228(r30)
001ae0  63074ffe  loadli.w r14,  -224(r30)
001ae4  63474ffe  loadli.w r14,  -220(r30)
001ae8  63075ffe  loadli.w r14,  -216(r30)
001aec  63475ffe  loadli.w r14,  -212(r30)
001af0  63076ffe  loadli.w r14,  -208(r30)
001af4  63476ffe  loadli.w r14,  -204(r30)
001af8  63077ffe  loadli.w r14,  -200(r30)
001afc  63477ffe  loadli.w r14,  -196(r30)
001b00  63078ffe  loadli.w r14,  -192(r30)
001b04  63478ffe  loadli.w r14,  -188(r30)
001b08  63079ffe  loadli.w r14,  -184(r30)
001b0c  63479ffe  loadli.w r14,  -180(r30)
001b10  6307affe  loadli.w r14,  -176(r30)
001b14  6347affe  loadli.w r14,  -172(r30)
001b18  6307bffe  loadli.w r14,  -168(r30)
001b1c  6347bffe  loadli.w r14,  -164(r30)
001b20  6307cffe  loadli.w r14,  -160(r30)
001b24  6347cffe  loadli.w r14,  -156(r30)
001b28  6307dffe  loadli.w r14,  -152(r30)
001b2c  6347dffe  loadli.w r14,  -148(r30)
001b30  6307effe  loadli.w r14,  -144(r30)
001b34  6347effe  loadli.w r14,  -140(r30)
001b38  6307fffe  loadli.w r14,  -136(r30)
001b3c  6347fffe  loadli.w r14,  -132(r30)
001b40  63070fff  loadli.w r14,  -128(r30)
001b44  63470fff  loadli.w r14,  -124(r30)
001b48  63071fff  loadli.w r14,  -120(r30)
001b4c  63471fff  loadli.w r14,  -116(r30)
001b50  63072fff  loadli.w r14,  -112(r30)
001b54  63472fff  loadli.w r14,  -108(r30)
001b58  63073fff  loadli.w r14,  -104(r30)
001b5c  63473fff  loadli.w r14,  -100(r30)
001b60  63074fff  loadli.w r14,  -96(r30)
001b64  63474fff  loadli.w r14,  -92(r30)
001b68  63075fff  loadli.w r14,  -88(r30)
001b6c  63475fff  loadli.w r14,  -84(r30)
001b70  63076fff  loadli.w r14,  -80(r30)
001b74  63476fff  loadli.w r14,  -76(r30)
001b78  63077fff  loadli.w r14,  -72(r30)
001b7c  63477fff  loadli.w r14,  -68(r30)
001b80  63078fff  loadli.w r14,  -64(r30)
001b84  63478fff  loadli.w r14,  -60(r30)
001b88  63079fff  loadli.w r14,  -56(r30)
001b8c  63479fff  loadli.w r14,  -52(r30)
001b90  6307afff  loadli.w r14,  -48(r30)
001b94  6347afff  loadli.w r14,  -44(r30)
001b98  6307bfff  loadli.w r14,  -40(r30)
001b9c  6347bfff  loadli.w r14,  -36(r30)
001ba0  6307cfff  loadli.w r14,  -32(r30)
001ba4  6347cfff  loadli.w r14,  -28(r30)
001ba8  6308dfff  loadli.w r16,  -24(r30)
001bac  2b08807f  lui r16, 522240
001bb0  17074601  and r14, r12, r20
001bb4  1307e804  setlt.u r14, r16, r14
001bb8  6348dfff  loadli.w r16,  -20(r30)
001bbc  6308efff  loadli.w r16,  -16(r30)
001bc0  6348efff  loadli.w r16,  -12(r30)
001bc4  6308ffff  loadli.w r16,  -8(r30)
001bc8  6348ffff  loadli.w r16,  -4(r30)
001bcc  3b700700  bneq r14, zero, 28
001bd0  1b470601  srli r14, r12, 16
001bd4  1b071700  andi r14, r14, 1
001bd8  0b16e610  add.s r12, r12, r14
001bdc  6307ffeb  loadli.w r14,  -2568(r30)
001be0  0b16e610  add.s r12, r12, r14
001be4  db010000  j 12
001be8  2b074000  lui r14, 1024
001bec  1716e600  or r12, r12, r14
001bf0  17074401  and r14, r8, r20
001bf4  2b08807f  lui r16, 522240
001bf8  1307e804  setlt.u r14, r16, r14
001bfc  3b700700  bneq r14, zero, 28
001c00  1b470401  srli r14, r8, 16
001c04  1b071700  andi r14, r14, 1
001c08  0b14e410  add.s r8, r8, r14
001c0c  6307ffeb  loadli.w r14,  -2568(r30)
001c10  0b17e410  add.s r14, r8, r14
001c14  db010000  j 12
001c18  2b074000  lui r14, 1024
001c1c  1717e400  or r14, r8, r14
001c20  17844101  and r8, r3, r20
001c24  13048804  setlt.u r8, r16, r8
001c28  3b700400  bneq r8, zero, 28
001c2c  1bc40101  srli r8, r3, 16
001c30  1b041400  andi r8, r8, 1
001c34  8b918110  add.s r3, r3, r8
001c38  6304ffeb  loadli.w r8,  -2568(r30)
001c3c  8b988110  add.s r17, r3, r8
001c40  db010000  j 12
001c44  2b044000  lui r8, 1024
001c48  97988100  or r17, r3, r8
001c4c  97814901  and r3, r19, r20
001c50  2b04807f  lui r8, 522240
001c54  93013404  setlt.u r3, r8, r3
001c58  3bf00100  bneq r3, zero, 28
001c5c  9bc10901  srli r3, r19, 16
001c60  6304ffeb  loadli.w r8,  -2568(r30)
001c64  9b811100  andi r3, r3, 1
001c68  8b913910  add.s r3, r19, r3
001c6c  8b998110  add.s r19, r3, r8
001c70  db010000  j 12
001c74  ab014000  lui r3, 1024
001c78  97993900  or r19, r19, r3
001c7c  97014901  and r3, r18, r20
001c80  2b04807f  lui r8, 522240
001c84  93013404  setlt.u r3, r8, r3
001c88  3bf00100  bneq r3, zero, 28
001c8c  9b410901  srli r3, r18, 16
001c90  6304ffeb  loadli.w r8,  -2568(r30)
001c94  9b811100  andi r3, r3, 1
001c98  8b113910  add.s r3, r18, r3
001c9c  0b948110  add.s r8, r3, r8
001ca0  db010000  j 12
001ca4  ab014000  lui r3, 1024
001ca8  17143900  or r8, r18, r3
001cac  97814701  and r3, r15, r20
001cb0  93013804  setlt.u r3, r16, r3
001cb4  3bf00100  bneq r3, zero, 28
001cb8  9bc10701  srli r3, r15, 16
001cbc  9b811100  andi r3, r3, 1
001cc0  8b913710  add.s r3, r15, r3
001cc4  e307ffeb  loadli.w r15,  -2568(r30)
001cc8  8b91f110  add.s r3, r3, r15
001ccc  db010000  j 12
001cd0  ab014000  lui r3, 1024
001cd4  97913700  or r3, r15, r3
001cd8  97874601  and r15, r13, r20
001cdc  9307f804  setlt.u r15, r16, r15
001ce0  3bf00700  bneq r15, zero, 28
001ce4  9bc70601  srli r15, r13, 16
001ce8  9b871700  andi r15, r15, 1
001cec  8b96f610  add.s r13, r13, r15
001cf0  e307ffeb  loadli.w r15,  -2568(r30)
001cf4  8b96f610  add.s r13, r13, r15
001cf8  db010000  j 12
001cfc  ab074000  lui r15, 1024
001d00  9796f600  or r13, r13, r15
001d04  97874501  and r15, r11, r20
001d08  9307f804  setlt.u r15, r16, r15
001d0c  3bf00700  bneq r15, zero, 28
001d10  9bc70501  srli r15, r11, 16
001d14  9b871700  andi r15, r15, 1
001d18  8b95f510  add.s r11, r11, r15
001d1c  e307ffeb  loadli.w r15,  -2568(r30)
001d20  8b95f510  add.s r11, r11, r15
001d24  db010000  j 12
001d28  ab074000  lui r15, 1024
001d2c  9795f500  or r11, r11, r15
001d30  97074501  and r15, r10, r20
001d34  9307f804  setlt.u r15, r16, r15
001d38  3bf00700  bneq r15, zero, 28
001d3c  9b470501  srli r15, r10, 16
001d40  9b871700  andi r15, r15, 1
001d44  0b15f510  add.s r10, r10, r15
001d48  e307ffeb  loadli.w r15,  -2568(r30)
001d4c  0b15f510  add.s r10, r10, r15
001d50  db010000  j 12
001d54  ab074000  lui r15, 1024
001d58  1715f500  or r10, r10, r15
001d5c  97874401  and r15, r9, r20
001d60  9307f804  setlt.u r15, r16, r15
001d64  3bf00700  bneq r15, zero, 28
001d68  9bc70401  srli r15, r9, 16
001d6c  9b871700  andi r15, r15, 1
001d70  8b94f410  add.s r9, r9, r15
001d74  e307ffeb  loadli.w r15,  -2568(r30)
001d78  8b94f410  add.s r9, r9, r15
001d7c  db010000  j 12
001d80  ab074000  lui r15, 1024
001d84  9794f400  or r9, r9, r15
001d88  97874301  and r15, r7, r20
001d8c  9307f804  setlt.u r15, r16, r15
001d90  3bf00700  bneq r15, zero, 28
001d94  9bc70301  srli r15, r7, 16
001d98  9b871700  andi r15, r15, 1
001d9c  8b93f310  add.s r7, r7, r15
001da0  e307ffeb  loadli.w r15,  -2568(r30)
001da4  8b93f310  add.s r7, r7, r15
001da8  db010000  j 12
001dac  ab074000  lui r15, 1024
001db0  9793f300  or r7, r7, r15
001db4  97074301  and r15, r6, r20
001db8  9307f804  setlt.u r15, r16, r15
001dbc  3bf00700  bneq r15, zero, 28
001dc0  9b470301  srli r15, r6, 16
001dc4  9b871700  andi r15, r15, 1
001dc8  0b13f310  add.s r6, r6, r15
001dcc  e307ffeb  loadli.w r15,  -2568(r30)
001dd0  0b13f310  add.s r6, r6, r15
001dd4  db010000  j 12
001dd8  ab074000  lui r15, 1024
001ddc  1713f300  or r6, r6, r15
001de0  97874201  and r15, r5, r20
001de4  9307f804  setlt.u r15, r16, r15
001de8  3bf00700  bneq r15, zero, 28
001dec  9bc70201  srli r15, r5, 16
001df0  9b871700  andi r15, r15, 1
001df4  8b92f210  add.s r5, r5, r15
001df8  e307ffeb  loadli.w r15,  -2568(r30)
001dfc  8b92f210  add.s r5, r5, r15
001e00  db010000  j 12
001e04  ab074000  lui r15, 1024
001e08  9792f200  or r5, r5, r15
001e0c  97074201  and r15, r4, r20
001e10  9307f804  setlt.u r15, r16, r15
001e14  3bf00700  bneq r15, zero, 28
001e18  9b470201  srli r15, r4, 16
001e1c  9b871700  andi r15, r15, 1
001e20  0b12f210  add.s r4, r4, r15
001e24  e307ffeb  loadli.w r15,  -2568(r30)
001e28  0b12f210  add.s r4, r4, r15
001e2c  db010000  j 12
001e30  ab074000  lui r15, 1024
001e34  1712f200  or r4, r4, r15
001e38  97074101  and r15, r2, r20
001e3c  9307f804  setlt.u r15, r16, r15
001e40  3bf00700  bneq r15, zero, 28
001e44  9b470101  srli r15, r2, 16
001e48  9b871700  andi r15, r15, 1
001e4c  0b11f110  add.s r2, r2, r15
001e50  e307ffeb  loadli.w r15,  -2568(r30)
001e54  0b11f110  add.s r2, r2, r15
001e58  db010000  j 12
001e5c  ab074000  lui r15, 1024
001e60  1711f100  or r2, r2, r15
001e64  97874001  and r15, r1, r20
001e68  9307f804  setlt.u r15, r16, r15
001e6c  3bf00700  bneq r15, zero, 28
001e70  9bc70001  srli r15, r1, 16
001e74  9b871700  andi r15, r15, 1
001e78  8b90f010  add.s r1, r1, r15
001e7c  e307ffeb  loadli.w r15,  -2568(r30)
001e80  8b90f010  add.s r1, r1, r15
001e84  db010000  j 12
001e88  ab074000  lui r15, 1024
001e8c  9790f000  or r1, r1, r15
001e90  ab07ffff  lui r15, 1048560
001e94  1788f800  and r16, r17, r15
001e98  1704f400  and r8, r8, r15
001e9c  9781f100  and r3, r3, r15
001ea0  1706f600  and r12, r12, r15
001ea4  1707f700  and r14, r14, r15
001ea8  1705f500  and r10, r10, r15
001eac  178df000  and r26, r1, r15
001eb0  e300efeb  loadli.w r1,  -2576(r30)
001eb4  9788f900  and r17, r19, r15
001eb8  1789f400  and r18, r9, r15
001ebc  970bf200  and r23, r4, r15
001ec0  9786f600  and r13, r13, r15
001ec4  9785f500  and r11, r11, r15
001ec8  9789f300  and r19, r7, r15
001ecc  970af300  and r21, r6, r15
001ed0  178bf200  and r22, r5, r15
001ed4  170cf100  and r24, r2, r15
001ed8  1f028000  addli r4, zero, 64
001edc  6705cfea  storeli.w r12, -2736(r30)
001ee0  9f040600  addli r9, r12, 0
001ee4  e744efea  storeli.w r14, -2740(r30)
001ee8  1f060700  addli r12, r14, 0
001eec  1f0a0800  addli r20, r16, 0
001ef0  9f0c0400  addli r25, r8, 0
001ef4  1f8e0100  addli r28, r3, 0
001ef8  1f070500  addli r14, r10, 0
001efc  e7040feb  storeli.w r16, -2744(r30)
001f00  67441feb  storeli.w r17, -2748(r30)
001f04  67048fea  storeli.w r8, -2752(r30)
001f08  e7433fea  storeli.w r3, -2756(r30)
001f0c  e703dfea  storeli.w r13, -2760(r30)
001f10  6743bfea  storeli.w r11, -2764(r30)
001f14  6703afea  storeli.w r10, -2768(r30)
001f18  e7422feb  storeli.w r18, -2772(r30)
001f1c  e7023feb  storeli.w r19, -2776(r30)
001f20  67425feb  storeli.w r21, -2780(r30)
001f24  67026feb  storeli.w r22, -2784(r30)
001f28  e7417feb  storeli.w r23, -2788(r30)
001f2c  e7018feb  storeli.w r24, -2792(r30)
001f30  6741afeb  storeli.w r26, -2796(r30)
001f34  3f914000  blt.s r1, r4, 68
001f38  9f040000  addli r9, zero, 0
001f3c  1f060000  addli r12, zero, 0
001f40  1f0a0000  addli r20, zero, 0
001f44  9f080000  addli r17, zero, 0
001f48  9f0c0000  addli r25, zero, 0
001f4c  1f0e0000  addli r28, zero, 0
001f50  9f060000  addli r13, zero, 0
001f54  9f050000  addli r11, zero, 0
001f58  1f070000  addli r14, zero, 0
001f5c  1f090000  addli r18, zero, 0
001f60  9f090000  addli r19, zero, 0
001f64  9f0a0000  addli r21, zero, 0
001f68  1f0b0000  addli r22, zero, 0
001f6c  9f0b0000  addli r23, zero, 0
001f70  1f0c0000  addli r24, zero, 0
001f74  1f0d0000  addli r26, zero, 0
001f78  9f808d00  addli r1, r27, 64
001f7c  e74b1fe8  storeli.w r1, -2884(r30)
001f80  9f800d01  addli r1, r27, 128
001f84  670c1fe8  storeli.w r1, -2880(r30)
001f88  9f808d01  addli r1, r27, 192
001f8c  674c1fe8  storeli.w r1, -2876(r30)
001f90  00a00000  mfence { lm }
001f94  db170000  j 188
001f98  1f060000  addli r12, zero, 0
001f9c  9f080000  addli r17, zero, 0
001fa0  1f0a0000  addli r20, zero, 0
001fa4  9f0c0000  addli r25, zero, 0
001fa8  9f0d0000  addli r27, zero, 0
001fac  1f0e0000  addli r28, zero, 0
001fb0  9f000000  addli r1, zero, 0
001fb4  9f050000  addli r11, zero, 0
001fb8  1f040000  addli r8, zero, 0
001fbc  9f020000  addli r5, zero, 0
001fc0  9f070000  addli r15, zero, 0
001fc4  9f010000  addli r3, zero, 0
001fc8  1f010000  addli r2, zero, 0
001fcc  1f030000  addli r6, zero, 0
001fd0  1f080000  addli r16, zero, 0
001fd4  9f030000  addli r7, zero, 0
001fd8  6305ffea  loadli.w r10,  -2696(r30)
001fdc  e3040feb  loadli.w r9,  -2688(r30)
001fe0  8be61610  add.f.rn r13, r13, r1
001fe4  e300dfea  loadli.w r1,  -2712(r30)
001fe8  0b678710  add.f.rn r14, r14, r8
001fec  0b695910  add.f.rn r18, r18, r5
001ff0  8be9f910  add.f.rn r19, r19, r15
001ff4  8bea3a10  add.f.rn r21, r21, r3
001ff8  0b6b2b10  add.f.rn r22, r22, r2
001ffc  8beb6b10  add.f.rn r23, r23, r6
002000  0b6c0c11  add.f.rn r24, r24, r16
002004  0b6d7d10  add.f.rn r26, r26, r7
002008  1f028200  addli r4, r4, 64
00200c  0b654511  add.f.rn r10, r10, r20
002010  8be4c410  add.f.rn r9, r9, r12
002014  6346ffea  loadli.w r12,  -2692(r30)
002018  8be0b010  add.f.rn r1, r1, r11
00201c  0b661611  add.f.rn r12, r12, r17
002020  e348efea  loadli.w r17,  -2700(r30)
002024  1f0a0500  addli r20, r10, 0
002028  6345dfea  loadli.w r10,  -2708(r30)
00202c  8be89811  add.f.rn r17, r17, r25
002030  e30cefea  loadli.w r25,  -2704(r30)
002034  9f850000  addli r11, r1, 0
002038  9f000004  addli r1, zero, 512
00203c  0b65c511  add.f.rn r10, r10, r28
002040  8becbc11  add.f.rn r25, r25, r27
002044  9f0d0ff4  addli r27, r30, -1536
002048  1f0e0500  addli r28, r10, 0
00204c  b7181202  beq r4, r1, 1572
002050  8b914d10  add.s r3, r27, r4
002054  92303002  vadd.s.mz vr1{mr1}, zero, vr3
002058  1f150000  addli r10, zero, 1
00205c  e706bfea  storeli.w r11, -2712(r30)
002060  67079feb  storeli.w r25, -2704(r30)
002064  67471feb  storeli.w r17, -2700(r30)
002068  e7074feb  storeli.w r20, -2696(r30)
00206c  e747cfea  storeli.w r12, -2692(r30)
002070  67089fea  storeli.w r9, -2688(r30)
002074  e746cfeb  storeli.w r28, -2708(r30)
002078  12313002  vadd.s.mz vr2{mr1}, zero, vr3
00207c  ebb20100  load.hu r5, 0(r3)
002080  6bb32100  load.hu r6, 2(r3)
002084  7e0105e0  vmmov mr2, r10
002088  6bb1a101  load.hu r2, 26(r3)
00208c  ebb0c101  load.hu r1, 28(r3)
002090  ebb34100  load.hu r7, 4(r3)
002094  6bb46100  load.hu r8, 6(r3)
002098  ebb48100  load.hu r9, 8(r3)
00209c  ebb5a100  load.hu r11, 10(r3)
0020a0  6bb6c100  load.hu r12, 12(r3)
0020a4  ebb7e100  load.hu r15, 14(r3)
0020a8  6bb80101  load.hu r16, 16(r3)
0020ac  ebb82101  load.hu r17, 18(r3)
0020b0  6bba4101  load.hu r20, 20(r3)
0020b4  ebbc6101  load.hu r25, 22(r3)
0020b8  ebbd8101  load.hu r27, 24(r3)
0020bc  ebb1e101  load.hu r3, 30(r3)
0020c0  b3920218  bfloat2float.rn r5, r5
0020c4  33110118  bfloat2float.rn r2, r2
0020c8  b3900018  bfloat2float.rn r1, r1
0020cc  eaa01234  vor.u.mh vr1{mr2}, r5, vr1
0020d0  b3120318  bfloat2float.rn r5, r6
0020d4  1f230000  addli r6, zero, 2
0020d8  fe0103e0  vmmov mr3, r6
0020dc  1f430000  addli r6, zero, 4
0020e0  eaa01236  vor.u.mh vr1{mr3}, r5, vr1
0020e4  b3920318  bfloat2float.rn r5, r7
0020e8  7e0003e0  vmmov mr0, r6
0020ec  1f031000  addli r6, zero, 8
0020f0  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0020f4  b3120418  bfloat2float.rn r5, r8
0020f8  7e0003e0  vmmov mr0, r6
0020fc  1f032000  addli r6, zero, 16
002100  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002104  b3920418  bfloat2float.rn r5, r9
002108  7e0003e0  vmmov mr0, r6
00210c  1f034000  addli r6, zero, 32
002110  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002114  b3920518  bfloat2float.rn r5, r11
002118  7e0003e0  vmmov mr0, r6
00211c  1f038000  addli r6, zero, 64
002120  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002124  b3120618  bfloat2float.rn r5, r12
002128  7e0003e0  vmmov mr0, r6
00212c  1f030001  addli r6, zero, 128
002130  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002134  b3920718  bfloat2float.rn r5, r15
002138  7e0003e0  vmmov mr0, r6
00213c  1f030002  addli r6, zero, 256
002140  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002144  b3120818  bfloat2float.rn r5, r16
002148  7e0003e0  vmmov mr0, r6
00214c  1f030004  addli r6, zero, 512
002150  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002154  b3920818  bfloat2float.rn r5, r17
002158  7e0003e0  vmmov mr0, r6
00215c  1f030008  addli r6, zero, 1024
002160  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002164  b3120a18  bfloat2float.rn r5, r20
002168  7e0003e0  vmmov mr0, r6
00216c  1f030010  addli r6, zero, 2048
002170  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002174  b3920c18  bfloat2float.rn r5, r25
002178  7e0003e0  vmmov mr0, r6
00217c  1f030020  addli r6, zero, 4096
002180  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002184  b3920d18  bfloat2float.rn r5, r27
002188  7e0003e0  vmmov mr0, r6
00218c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002190  9f020040  addli r5, zero, 8192
002194  7e8002e0  vmmov mr0, r5
002198  ea201130  vor.u.mh vr1{mr0}, r2, vr1
00219c  2b410000  lui r2, 4
0021a0  7e0001e0  vmmov mr0, r2
0021a4  1f010ff6  addli r2, r30, -1280
0021a8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0021ac  b3900118  bfloat2float.rn r1, r3
0021b0  ab810000  lui r3, 8
0021b4  0b114110  add.s r2, r2, r4
0021b8  7e8001e0  vmmov mr0, r3
0021bc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0021c0  eb300100  load.hu r1, 0(r2)
0021c4  eb312100  load.hu r3, 2(r2)
0021c8  eb324100  load.hu r5, 4(r2)
0021cc  6b336100  load.hu r6, 6(r2)
0021d0  eb338100  load.hu r7, 8(r2)
0021d4  6b34a100  load.hu r8, 10(r2)
0021d8  eb34c100  load.hu r9, 12(r2)
0021dc  eb35e100  load.hu r11, 14(r2)
0021e0  6b360101  load.hu r12, 16(r2)
0021e4  eb372101  load.hu r15, 18(r2)
0021e8  6b384101  load.hu r16, 20(r2)
0021ec  eb386101  load.hu r17, 22(r2)
0021f0  6b3a8101  load.hu r20, 24(r2)
0021f4  eb3ca101  load.hu r25, 26(r2)
0021f8  eb3dc101  load.hu r27, 28(r2)
0021fc  6b31e101  load.hu r2, 30(r2)
002200  b3900018  bfloat2float.rn r1, r1
002204  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002208  b3900118  bfloat2float.rn r1, r3
00220c  9f410000  addli r3, zero, 4
002210  7e8101e0  vmmov mr2, r3
002214  9f011000  addli r3, zero, 8
002218  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
00221c  b3900218  bfloat2float.rn r1, r5
002220  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002224  b3100318  bfloat2float.rn r1, r6
002228  7e8101e0  vmmov mr2, r3
00222c  9f012000  addli r3, zero, 16
002230  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002234  b3900318  bfloat2float.rn r1, r7
002238  7e8101e0  vmmov mr2, r3
00223c  9f014000  addli r3, zero, 32
002240  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002244  b3100418  bfloat2float.rn r1, r8
002248  7e8101e0  vmmov mr2, r3
00224c  9f018000  addli r3, zero, 64
002250  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002254  b3900418  bfloat2float.rn r1, r9
002258  7e8101e0  vmmov mr2, r3
00225c  9f010001  addli r3, zero, 128
002260  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002264  b3900518  bfloat2float.rn r1, r11
002268  7e8101e0  vmmov mr2, r3
00226c  9f010002  addli r3, zero, 256
002270  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002274  b3100618  bfloat2float.rn r1, r12
002278  7e8101e0  vmmov mr2, r3
00227c  9f010004  addli r3, zero, 512
002280  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002284  b3900718  bfloat2float.rn r1, r15
002288  7e8101e0  vmmov mr2, r3
00228c  9f010008  addli r3, zero, 1024
002290  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002294  b3100818  bfloat2float.rn r1, r16
002298  7e8101e0  vmmov mr2, r3
00229c  9f010010  addli r3, zero, 2048
0022a0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0022a4  b3900818  bfloat2float.rn r1, r17
0022a8  7e8101e0  vmmov mr2, r3
0022ac  9f010020  addli r3, zero, 4096
0022b0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0022b4  b3100a18  bfloat2float.rn r1, r20
0022b8  7e8101e0  vmmov mr2, r3
0022bc  9f010040  addli r3, zero, 8192
0022c0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0022c4  b3900c18  bfloat2float.rn r1, r25
0022c8  7e8101e0  vmmov mr2, r3
0022cc  ab410000  lui r3, 4
0022d0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0022d4  b3900d18  bfloat2float.rn r1, r27
0022d8  7e8101e0  vmmov mr2, r3
0022dc  ab01807f  lui r3, 522240
0022e0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0022e4  b3100118  bfloat2float.rn r1, r2
0022e8  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0022ec  9f000ff0  addli r1, r30, -2048
0022f0  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
0022f4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0022f8  00a00000  mfence { lm }
0022fc  e3030ff0  loadli.w r7,  -2048(r30)
002300  63430ff0  loadli.w r6,  -2044(r30)
002304  e3021ff0  loadli.w r5,  -2040(r30)
002308  634e1ff0  loadli.w r28,  -2036(r30)
00230c  e30c2ff0  loadli.w r25,  -2032(r30)
002310  63482ff0  loadli.w r16,  -2028(r30)
002314  e3003ff0  loadli.w r1,  -2024(r30)
002318  e3453ff0  loadli.w r11,  -2020(r30)
00231c  63044ff0  loadli.w r8,  -2016(r30)
002320  634a4ff0  loadli.w r20,  -2012(r30)
002324  6341ffeb  loadli.w r2,  -2564(r30)
002328  e3075ff0  loadli.w r15,  -2008(r30)
00232c  17812300  and r2, r7, r2
002330  93842104  setlt.u r9, r3, r2
002334  e3415ff0  loadli.w r3,  -2004(r30)
002338  63016ff0  loadli.w r2,  -2000(r30)
00233c  e34d6ff0  loadli.w r27,  -1996(r30)
002340  e3087ff0  loadli.w r17,  -1992(r30)
002344  63467ff0  loadli.w r12,  -1988(r30)
002348  3bf00400  bneq r9, zero, 28
00234c  9bc40301  srli r9, r7, 16
002350  9b841400  andi r9, r9, 1
002354  8b939310  add.s r7, r7, r9
002358  e304ffeb  loadli.w r9,  -2568(r30)
00235c  8b939310  add.s r7, r7, r9
002360  db010000  j 12
002364  ab044000  lui r9, 1024
002368  97939300  or r7, r7, r9
00236c  67467fea  storeli.w r7, -2716(r30)
002370  e343ffeb  loadli.w r7,  -2564(r30)
002374  ab04807f  lui r9, 522240
002378  97037300  and r7, r6, r7
00237c  93837404  setlt.u r7, r9, r7
002380  3bf00300  bneq r7, zero, 28
002384  9b430301  srli r7, r6, 16
002388  9b831300  andi r7, r7, 1
00238c  0b137310  add.s r6, r6, r7
002390  e303ffeb  loadli.w r7,  -2568(r30)
002394  0b137310  add.s r6, r6, r7
002398  db010000  j 12
00239c  ab034000  lui r7, 1024
0023a0  17137300  or r6, r6, r7
0023a4  67066fea  storeli.w r6, -2720(r30)
0023a8  6343ffeb  loadli.w r6,  -2564(r30)
0023ac  ab03807f  lui r7, 522240
0023b0  17836200  and r6, r5, r6
0023b4  13836304  setlt.u r6, r7, r6
0023b8  3b700300  bneq r6, zero, 28
0023bc  1bc30201  srli r6, r5, 16
0023c0  1b031300  andi r6, r6, 1
0023c4  8b926210  add.s r5, r5, r6
0023c8  6303ffeb  loadli.w r6,  -2568(r30)
0023cc  8b926210  add.s r5, r5, r6
0023d0  5b020000  j 16
0023d4  2b034000  lui r6, 1024
0023d8  97926200  or r5, r5, r6
0023dc  6303ffeb  loadli.w r6,  -2568(r30)
0023e0  e7455fea  storeli.w r5, -2724(r30)
0023e4  e342ffeb  loadli.w r5,  -2564(r30)
0023e8  97025e00  and r5, r28, r5
0023ec  93825304  setlt.u r5, r7, r5
0023f0  3be00200  bneq r5, zero, 24
0023f4  9b420e01  srli r5, r28, 16
0023f8  9b821200  andi r5, r5, 1
0023fc  8b125e10  add.s r5, r28, r5
002400  0b9e6210  add.s r28, r5, r6
002404  db010000  j 12
002408  ab024000  lui r5, 1024
00240c  171e5e00  or r28, r28, r5
002410  e344ffeb  loadli.w r9,  -2564(r30)
002414  97829c00  and r5, r25, r9
002418  93825304  setlt.u r5, r7, r5
00241c  3be00200  bneq r5, zero, 24
002420  9bc20c01  srli r5, r25, 16
002424  9b821200  andi r5, r5, 1
002428  8b925c10  add.s r5, r25, r5
00242c  8b9c6210  add.s r25, r5, r6
002430  db010000  j 12
002434  ab024000  lui r5, 1024
002438  979c5c00  or r25, r25, r5
00243c  97029800  and r5, r16, r9
002440  93825304  setlt.u r5, r7, r5
002444  3be00200  bneq r5, zero, 24
002448  9b420801  srli r5, r16, 16
00244c  9b821200  andi r5, r5, 1
002450  8b125810  add.s r5, r16, r5
002454  8b926210  add.s r5, r5, r6
002458  db010000  j 12
00245c  ab024000  lui r5, 1024
002460  97125800  or r5, r16, r5
002464  e7055fea  storeli.w r5, -2728(r30)
002468  97829000  and r5, r1, r9
00246c  93825304  setlt.u r5, r7, r5
002470  3be00200  bneq r5, zero, 24
002474  9bc20001  srli r5, r1, 16
002478  9b821200  andi r5, r5, 1
00247c  8b905010  add.s r1, r1, r5
002480  8b906010  add.s r1, r1, r6
002484  db010000  j 12
002488  ab024000  lui r5, 1024
00248c  97905000  or r1, r1, r5
002490  97829500  and r5, r11, r9
002494  93825304  setlt.u r5, r7, r5
002498  3be00200  bneq r5, zero, 24
00249c  9bc20501  srli r5, r11, 16
0024a0  9b821200  andi r5, r5, 1
0024a4  8b925510  add.s r5, r11, r5
0024a8  8b956210  add.s r11, r5, r6
0024ac  db010000  j 12
0024b0  ab024000  lui r5, 1024
0024b4  97955500  or r11, r11, r5
0024b8  97029400  and r5, r8, r9
0024bc  93825304  setlt.u r5, r7, r5
0024c0  3be00200  bneq r5, zero, 24
0024c4  9b420401  srli r5, r8, 16
0024c8  9b821200  andi r5, r5, 1
0024cc  8b125410  add.s r5, r8, r5
0024d0  0b946210  add.s r8, r5, r6
0024d4  db010000  j 12
0024d8  ab024000  lui r5, 1024
0024dc  17145400  or r8, r8, r5
0024e0  97029a00  and r5, r20, r9
0024e4  93825304  setlt.u r5, r7, r5
0024e8  3be00200  bneq r5, zero, 24
0024ec  9b420a01  srli r5, r20, 16
0024f0  9b821200  andi r5, r5, 1
0024f4  8b125a10  add.s r5, r20, r5
0024f8  0b986210  add.s r16, r5, r6
0024fc  db010000  j 12
002500  ab024000  lui r5, 1024
002504  17185a00  or r16, r20, r5
002508  97829700  and r5, r15, r9
00250c  93825304  setlt.u r5, r7, r5
002510  3be00200  bneq r5, zero, 24
002514  9bc20701  srli r5, r15, 16
002518  9b821200  andi r5, r5, 1
00251c  8b925710  add.s r5, r15, r5
002520  8b976210  add.s r15, r5, r6
002524  db010000  j 12
002528  ab024000  lui r5, 1024
00252c  97975700  or r15, r15, r5
002530  97829100  and r5, r3, r9
002534  93825304  setlt.u r5, r7, r5
002538  3be00200  bneq r5, zero, 24
00253c  9bc20101  srli r5, r3, 16
002540  9b821200  andi r5, r5, 1
002544  8b915110  add.s r3, r3, r5
002548  8b916110  add.s r3, r3, r6
00254c  db010000  j 12
002550  ab024000  lui r5, 1024
002554  97915100  or r3, r3, r5
002558  97029100  and r5, r2, r9
00255c  93825304  setlt.u r5, r7, r5
002560  3be00200  bneq r5, zero, 24
002564  9b420101  srli r5, r2, 16
002568  9b821200  andi r5, r5, 1
00256c  0b115110  add.s r2, r2, r5
002570  0b116110  add.s r2, r2, r6
002574  db010000  j 12
002578  ab024000  lui r5, 1024
00257c  17115100  or r2, r2, r5
002580  97829d00  and r5, r27, r9
002584  93825304  setlt.u r5, r7, r5
002588  3be00200  bneq r5, zero, 24
00258c  9bc20d01  srli r5, r27, 16
002590  9b821200  andi r5, r5, 1
002594  8b925d10  add.s r5, r27, r5
002598  0b936210  add.s r6, r5, r6
00259c  db010000  j 12
0025a0  ab024000  lui r5, 1024
0025a4  17935d00  or r6, r27, r5
0025a8  97829800  and r5, r17, r9
0025ac  93825304  setlt.u r5, r7, r5
0025b0  3bf00200  bneq r5, zero, 28
0025b4  9bc20801  srli r5, r17, 16
0025b8  e303ffeb  loadli.w r7,  -2568(r30)
0025bc  9b821200  andi r5, r5, 1
0025c0  8b925810  add.s r5, r17, r5
0025c4  8b937210  add.s r7, r5, r7
0025c8  db010000  j 12
0025cc  ab024000  lui r5, 1024
0025d0  97935800  or r7, r17, r5
0025d4  97029600  and r5, r12, r9
0025d8  ab04807f  lui r9, 522240
0025dc  93825404  setlt.u r5, r9, r5
0025e0  3bf00200  bneq r5, zero, 28
0025e4  9b420601  srli r5, r12, 16
0025e8  e304ffeb  loadli.w r9,  -2568(r30)
0025ec  9b821200  andi r5, r5, 1
0025f0  8b125610  add.s r5, r12, r5
0025f4  8b949210  add.s r9, r5, r9
0025f8  db010000  j 12
0025fc  ab024000  lui r5, 1024
002600  97145600  or r9, r12, r5
002604  6305efeb  loadli.w r10,  -2576(r30)
002608  9f028000  addli r5, zero, 64
00260c  3f205500  blt.s r10, r5, 8
002610  5b31ffff  j -1656
002614  e342cfea  loadli.w r5,  -2716(r30)
002618  2b05ffff  lui r10, 1048560
00261c  9780a000  and r1, r1, r10
002620  9785a500  and r11, r11, r10
002624  1704a400  and r8, r8, r10
002628  9787a700  and r15, r15, r10
00262c  9781a100  and r3, r3, r10
002630  1701a100  and r2, r2, r10
002634  1703a300  and r6, r6, r10
002638  1786a200  and r12, r5, r10
00263c  e302cfea  loadli.w r5,  -2720(r30)
002640  9788a200  and r17, r5, r10
002644  e342bfea  loadli.w r5,  -2724(r30)
002648  178aa200  and r20, r5, r10
00264c  9f820c00  addli r5, r25, 0
002650  970cae00  and r25, r28, r10
002654  978da200  and r27, r5, r10
002658  e302bfea  loadli.w r5,  -2728(r30)
00265c  178ea200  and r28, r5, r10
002660  9702a800  and r5, r16, r10
002664  1788a300  and r16, r7, r10
002668  9783a400  and r7, r9, r10
00266c  db2dffff  j -1684
002670  8be0c410  add.f.rn r1, r9, r12
002674  63416fe5  loadli.w r2,  -3404(r30)
002678  8be04011  add.f.rn r1, r1, r20
00267c  8be01011  add.f.rn r1, r1, r17
002680  8be09011  add.f.rn r1, r1, r25
002684  8be0c011  add.f.rn r1, r1, r28
002688  8be0d010  add.f.rn r1, r1, r13
00268c  8be0b010  add.f.rn r1, r1, r11
002690  8be0e010  add.f.rn r1, r1, r14
002694  8be02011  add.f.rn r1, r1, r18
002698  8be03011  add.f.rn r1, r1, r19
00269c  8be05011  add.f.rn r1, r1, r21
0026a0  8be06011  add.f.rn r1, r1, r22
0026a4  8be07011  add.f.rn r1, r1, r23
0026a8  8be08011  add.f.rn r1, r1, r24
0026ac  8be0a011  add.f.rn r1, r1, r26
0026b0  73601100  stores.w r1, 0(r2)
0026b4  00a00300  mfence { lm, sm, gm }
0026b8  6342bfe9  loadli.w r4,  -2852(r30)
0026bc  80210204  csr_set csr3, r4
0026c0  00d00100  sync_group
0026c4  e300bfe9  loadli.w r1,  -2856(r30)
0026c8  3ba10000  bneq r1, zero, 72
0026cc  e3427fe5  loadli.w r5,  -3396(r30)
0026d0  efc00200  loads.w r1, 0(r5)
0026d4  6fc14200  loads.w r2, 4(r5)
0026d8  efc18200  loads.w r3, 8(r5)
0026dc  8be02010  add.f.rn r1, r1, r2
0026e0  6fc1c200  loads.w r2, 12(r5)
0026e4  8be03010  add.f.rn r1, r1, r3
0026e8  efc10201  loads.w r3, 16(r5)
0026ec  8be02010  add.f.rn r1, r1, r2
0026f0  6fc14201  loads.w r2, 20(r5)
0026f4  8be03010  add.f.rn r1, r1, r3
0026f8  efc18201  loads.w r3, 24(r5)
0026fc  8be02010  add.f.rn r1, r1, r2
002700  6fc1c201  loads.w r2, 28(r5)
002704  8be03010  add.f.rn r1, r1, r3
002708  8be02010  add.f.rn r1, r1, r2
00270c  73e01200  stores.w r1, 0(r5)
002710  00a00300  mfence { lm, sm, gm }
002714  80210204  csr_set csr3, r4
002718  00d00100  sync_group
00271c  e3407fe5  loadli.w r1,  -3396(r30)
002720  2b01803a  lui r2, 239616
002724  634effeb  loadli.w r28,  -2564(r30)
002728  1f028000  addli r4, zero, 64
00272c  efc00000  loads.w r1, 0(r1)
002730  8bec2020  mul.f.rn r25, r1, r2
002734  e300efeb  loadli.w r1,  -2576(r30)
002738  3fa14000  blt.s r1, r4, 72
00273c  1f090000  addli r18, zero, 0
002740  9f090000  addli r19, zero, 0
002744  9f0a0000  addli r21, zero, 0
002748  1f0c0000  addli r24, zero, 0
00274c  9f020000  addli r5, zero, 0
002750  9f030000  addli r7, zero, 0
002754  1f040000  addli r8, zero, 0
002758  9f040000  addli r9, zero, 0
00275c  1f050000  addli r10, zero, 0
002760  9f050000  addli r11, zero, 0
002764  1f060000  addli r12, zero, 0
002768  9f060000  addli r13, zero, 0
00276c  1f0a0000  addli r20, zero, 0
002770  9f070000  addli r15, zero, 0
002774  1f070000  addli r14, zero, 0
002778  1f080000  addli r16, zero, 0
00277c  db180000  j 196
002780  e300afea  loadli.w r1,  -2736(r30)
002784  63419fea  loadli.w r2,  -2740(r30)
002788  e3019fea  loadli.w r3,  -2744(r30)
00278c  e3428fea  loadli.w r5,  -2748(r30)
002790  63038fea  loadli.w r6,  -2752(r30)
002794  e3437fea  loadli.w r7,  -2756(r30)
002798  63047fea  loadli.w r8,  -2760(r30)
00279c  e3446fea  loadli.w r9,  -2764(r30)
0027a0  63056fea  loadli.w r10,  -2768(r30)
0027a4  e3455fea  loadli.w r11,  -2772(r30)
0027a8  63065fea  loadli.w r12,  -2776(r30)
0027ac  e3464fea  loadli.w r13,  -2780(r30)
0027b0  63074fea  loadli.w r14,  -2784(r30)
0027b4  e3473fea  loadli.w r15,  -2788(r30)
0027b8  63083fea  loadli.w r16,  -2792(r30)
0027bc  e3482fea  loadli.w r17,  -2796(r30)
0027c0  8be39319  sub.f.rn r7, r7, r25
0027c4  0b649419  sub.f.rn r8, r8, r25
0027c8  8be49419  sub.f.rn r9, r9, r25
0027cc  0b659519  sub.f.rn r10, r10, r25
0027d0  8be59519  sub.f.rn r11, r11, r25
0027d4  0b669619  sub.f.rn r12, r12, r25
0027d8  8be69619  sub.f.rn r13, r13, r25
0027dc  8be79719  sub.f.rn r15, r15, r25
0027e0  8be09019  sub.f.rn r1, r1, r25
0027e4  0b619119  sub.f.rn r2, r2, r25
0027e8  8be19119  sub.f.rn r3, r3, r25
0027ec  8be29219  sub.f.rn r5, r5, r25
0027f0  0b679719  sub.f.rn r14, r14, r25
0027f4  0b639319  sub.f.rn r6, r6, r25
0027f8  0b689819  sub.f.rn r16, r16, r25
0027fc  8be89819  sub.f.rn r17, r17, r25
002800  0bec5220  mul.f.rn r24, r5, r5
002804  0b6ae720  mul.f.rn r20, r14, r14
002808  0b670821  mul.f.rn r14, r16, r16
00280c  0be91020  mul.f.rn r18, r1, r1
002810  8b692120  mul.f.rn r19, r2, r2
002814  8bea3120  mul.f.rn r21, r3, r3
002818  8b626320  mul.f.rn r5, r6, r6
00281c  8be37320  mul.f.rn r7, r7, r7
002820  0b648420  mul.f.rn r8, r8, r8
002824  8be49420  mul.f.rn r9, r9, r9
002828  0b65a520  mul.f.rn r10, r10, r10
00282c  8be5b520  mul.f.rn r11, r11, r11
002830  0b66c620  mul.f.rn r12, r12, r12
002834  8be6d620  mul.f.rn r13, r13, r13
002838  8be7f720  mul.f.rn r15, r15, r15
00283c  0be81821  mul.f.rn r16, r17, r17
002840  e3403fe5  loadli.w r1,  -3428(r30)
002844  e341afea  loadli.w r3,  -2732(r30)
002848  6303ffeb  loadli.w r6,  -2568(r30)
00284c  2b01807f  lui r2, 522240
002850  8b903010  add.s r1, r1, r3
002854  e70e1fe4  storeli.w r1, -3352(r30)
002858  e3003fe5  loadli.w r1,  -3432(r30)
00285c  8b903010  add.s r1, r1, r3
002860  674e1fe4  storeli.w r1, -3356(r30)
002864  e3402fe5  loadli.w r1,  -3436(r30)
002868  8b903010  add.s r1, r1, r3
00286c  670e1fe4  storeli.w r1, -3360(r30)
002870  e3002fe5  loadli.w r1,  -3440(r30)
002874  8b903010  add.s r1, r1, r3
002878  e74d1fe4  storeli.w r1, -3364(r30)
00287c  e3401fe5  loadli.w r1,  -3444(r30)
002880  8b903010  add.s r1, r1, r3
002884  e70d1fe4  storeli.w r1, -3368(r30)
002888  e3001fe5  loadli.w r1,  -3448(r30)
00288c  8b903010  add.s r1, r1, r3
002890  674d1fe4  storeli.w r1, -3372(r30)
002894  e3400fe5  loadli.w r1,  -3452(r30)
002898  8b903010  add.s r1, r1, r3
00289c  670d1fe4  storeli.w r1, -3376(r30)
0028a0  e3000fe5  loadli.w r1,  -3456(r30)
0028a4  8b903010  add.s r1, r1, r3
0028a8  e74c1fe4  storeli.w r1, -3380(r30)
0028ac  e340ffe4  loadli.w r1,  -3460(r30)
0028b0  8b903010  add.s r1, r1, r3
0028b4  e70c1fe4  storeli.w r1, -3384(r30)
0028b8  e300ffe4  loadli.w r1,  -3464(r30)
0028bc  8b903010  add.s r1, r1, r3
0028c0  674c1fe4  storeli.w r1, -3388(r30)
0028c4  e340efe4  loadli.w r1,  -3468(r30)
0028c8  8b903010  add.s r1, r1, r3
0028cc  670c1fe4  storeli.w r1, -3392(r30)
0028d0  e300efe4  loadli.w r1,  -3472(r30)
0028d4  8b903010  add.s r1, r1, r3
0028d8  e74e1fe4  storeli.w r1, -3348(r30)
0028dc  e340dfe4  loadli.w r1,  -3476(r30)
0028e0  8b903010  add.s r1, r1, r3
0028e4  670f1fe4  storeli.w r1, -3344(r30)
0028e8  e300dfe4  loadli.w r1,  -3480(r30)
0028ec  8b903010  add.s r1, r1, r3
0028f0  674f1fe4  storeli.w r1, -3340(r30)
0028f4  e340cfe4  loadli.w r1,  -3484(r30)
0028f8  8b903010  add.s r1, r1, r3
0028fc  e70f1fe4  storeli.w r1, -3336(r30)
002900  e3408fe4  loadli.w r1,  -3516(r30)
002904  8b903010  add.s r1, r1, r3
002908  e74f1fe4  storeli.w r1, -3332(r30)
00290c  e3407fe4  loadli.w r1,  -3524(r30)
002910  8b903010  add.s r1, r1, r3
002914  67001fe6  storeli.w r1, -3328(r30)
002918  e3007fe4  loadli.w r1,  -3528(r30)
00291c  8b903010  add.s r1, r1, r3
002920  67401fe6  storeli.w r1, -3324(r30)
002924  e3406fe4  loadli.w r1,  -3532(r30)
002928  8b903010  add.s r1, r1, r3
00292c  e7001fe6  storeli.w r1, -3320(r30)
002930  e3006fe4  loadli.w r1,  -3536(r30)
002934  8b903010  add.s r1, r1, r3
002938  e7401fe6  storeli.w r1, -3316(r30)
00293c  e3405fe4  loadli.w r1,  -3540(r30)
002940  8b903010  add.s r1, r1, r3
002944  67011fe6  storeli.w r1, -3312(r30)
002948  e3005fe4  loadli.w r1,  -3544(r30)
00294c  8b903010  add.s r1, r1, r3
002950  67411fe6  storeli.w r1, -3308(r30)
002954  e3404fe4  loadli.w r1,  -3548(r30)
002958  8b903010  add.s r1, r1, r3
00295c  e7011fe6  storeli.w r1, -3304(r30)
002960  e3004fe4  loadli.w r1,  -3552(r30)
002964  8b903010  add.s r1, r1, r3
002968  e7411fe6  storeli.w r1, -3300(r30)
00296c  e3403fe4  loadli.w r1,  -3556(r30)
002970  8b903010  add.s r1, r1, r3
002974  67021fe6  storeli.w r1, -3296(r30)
002978  e3003fe4  loadli.w r1,  -3560(r30)
00297c  8b903010  add.s r1, r1, r3
002980  67421fe6  storeli.w r1, -3292(r30)
002984  e3402fe4  loadli.w r1,  -3564(r30)
002988  8b903010  add.s r1, r1, r3
00298c  e7021fe6  storeli.w r1, -3288(r30)
002990  e3002fe4  loadli.w r1,  -3568(r30)
002994  8b903010  add.s r1, r1, r3
002998  e7421fe6  storeli.w r1, -3284(r30)
00299c  e3401fe4  loadli.w r1,  -3572(r30)
0029a0  8b903010  add.s r1, r1, r3
0029a4  67031fe6  storeli.w r1, -3280(r30)
0029a8  e3001fe4  loadli.w r1,  -3576(r30)
0029ac  8b903010  add.s r1, r1, r3
0029b0  67431fe6  storeli.w r1, -3276(r30)
0029b4  e3400fe4  loadli.w r1,  -3580(r30)
0029b8  8b903010  add.s r1, r1, r3
0029bc  e7031fe6  storeli.w r1, -3272(r30)
0029c0  e3000fe4  loadli.w r1,  -3584(r30)
0029c4  8b903010  add.s r1, r1, r3
0029c8  e7431fe6  storeli.w r1, -3268(r30)
0029cc  e340ffe3  loadli.w r1,  -3588(r30)
0029d0  8b903010  add.s r1, r1, r3
0029d4  67041fe6  storeli.w r1, -3264(r30)
0029d8  e300ffe3  loadli.w r1,  -3592(r30)
0029dc  8b903010  add.s r1, r1, r3
0029e0  67441fe6  storeli.w r1, -3260(r30)
0029e4  e340efe3  loadli.w r1,  -3596(r30)
0029e8  8b903010  add.s r1, r1, r3
0029ec  e7041fe6  storeli.w r1, -3256(r30)
0029f0  e300efe3  loadli.w r1,  -3600(r30)
0029f4  8b903010  add.s r1, r1, r3
0029f8  e7441fe6  storeli.w r1, -3252(r30)
0029fc  e340dfe3  loadli.w r1,  -3604(r30)
002a00  8b903010  add.s r1, r1, r3
002a04  67051fe6  storeli.w r1, -3248(r30)
002a08  e300dfe3  loadli.w r1,  -3608(r30)
002a0c  8b903010  add.s r1, r1, r3
002a10  67451fe6  storeli.w r1, -3244(r30)
002a14  e340cfe3  loadli.w r1,  -3612(r30)
002a18  8b903010  add.s r1, r1, r3
002a1c  e7051fe6  storeli.w r1, -3240(r30)
002a20  e300cfe3  loadli.w r1,  -3616(r30)
002a24  8b903010  add.s r1, r1, r3
002a28  e7451fe6  storeli.w r1, -3236(r30)
002a2c  e340bfe3  loadli.w r1,  -3620(r30)
002a30  8b903010  add.s r1, r1, r3
002a34  67061fe6  storeli.w r1, -3232(r30)
002a38  e300bfe3  loadli.w r1,  -3624(r30)
002a3c  8b903010  add.s r1, r1, r3
002a40  67461fe6  storeli.w r1, -3228(r30)
002a44  e340afe3  loadli.w r1,  -3628(r30)
002a48  8b903010  add.s r1, r1, r3
002a4c  e7061fe6  storeli.w r1, -3224(r30)
002a50  e300afe3  loadli.w r1,  -3632(r30)
002a54  8b903010  add.s r1, r1, r3
002a58  e7461fe6  storeli.w r1, -3220(r30)
002a5c  e3409fe3  loadli.w r1,  -3636(r30)
002a60  8b903010  add.s r1, r1, r3
002a64  67071fe6  storeli.w r1, -3216(r30)
002a68  e3009fe3  loadli.w r1,  -3640(r30)
002a6c  8b903010  add.s r1, r1, r3
002a70  67471fe6  storeli.w r1, -3212(r30)
002a74  e3408fe3  loadli.w r1,  -3644(r30)
002a78  8b903010  add.s r1, r1, r3
002a7c  e7071fe6  storeli.w r1, -3208(r30)
002a80  e3008fe3  loadli.w r1,  -3648(r30)
002a84  8b903010  add.s r1, r1, r3
002a88  e7471fe6  storeli.w r1, -3204(r30)
002a8c  e3407fe3  loadli.w r1,  -3652(r30)
002a90  8b903010  add.s r1, r1, r3
002a94  67081fe6  storeli.w r1, -3200(r30)
002a98  e3007fe3  loadli.w r1,  -3656(r30)
002a9c  8b903010  add.s r1, r1, r3
002aa0  67481fe6  storeli.w r1, -3196(r30)
002aa4  e3406fe3  loadli.w r1,  -3660(r30)
002aa8  8b903010  add.s r1, r1, r3
002aac  e7081fe6  storeli.w r1, -3192(r30)
002ab0  e3006fe3  loadli.w r1,  -3664(r30)
002ab4  8b903010  add.s r1, r1, r3
002ab8  e7481fe6  storeli.w r1, -3188(r30)
002abc  e3405fe3  loadli.w r1,  -3668(r30)
002ac0  8b903010  add.s r1, r1, r3
002ac4  67091fe6  storeli.w r1, -3184(r30)
002ac8  e3005fe3  loadli.w r1,  -3672(r30)
002acc  8b903010  add.s r1, r1, r3
002ad0  67491fe6  storeli.w r1, -3180(r30)
002ad4  e3404fe3  loadli.w r1,  -3676(r30)
002ad8  8b903010  add.s r1, r1, r3
002adc  e7091fe6  storeli.w r1, -3176(r30)
002ae0  e3004fe3  loadli.w r1,  -3680(r30)
002ae4  8b903010  add.s r1, r1, r3
002ae8  e7491fe6  storeli.w r1, -3172(r30)
002aec  e3403fe3  loadli.w r1,  -3684(r30)
002af0  8b903010  add.s r1, r1, r3
002af4  670a1fe6  storeli.w r1, -3168(r30)
002af8  e3003fe3  loadli.w r1,  -3688(r30)
002afc  8b903010  add.s r1, r1, r3
002b00  674a1fe6  storeli.w r1, -3164(r30)
002b04  e3402fe3  loadli.w r1,  -3692(r30)
002b08  8b903010  add.s r1, r1, r3
002b0c  e70a1fe6  storeli.w r1, -3160(r30)
002b10  e3002fe3  loadli.w r1,  -3696(r30)
002b14  8b903010  add.s r1, r1, r3
002b18  e74a1fe6  storeli.w r1, -3156(r30)
002b1c  e3401fe3  loadli.w r1,  -3700(r30)
002b20  8b903010  add.s r1, r1, r3
002b24  670b1fe6  storeli.w r1, -3152(r30)
002b28  e3001fe3  loadli.w r1,  -3704(r30)
002b2c  8b903010  add.s r1, r1, r3
002b30  674b1fe6  storeli.w r1, -3148(r30)
002b34  e3400fe3  loadli.w r1,  -3708(r30)
002b38  8b903010  add.s r1, r1, r3
002b3c  e70b1fe6  storeli.w r1, -3144(r30)
002b40  e3000fe3  loadli.w r1,  -3712(r30)
002b44  8b903010  add.s r1, r1, r3
002b48  e74b1fe6  storeli.w r1, -3140(r30)
002b4c  e340ffe2  loadli.w r1,  -3716(r30)
002b50  8b903010  add.s r1, r1, r3
002b54  670c1fe6  storeli.w r1, -3136(r30)
002b58  e300ffe2  loadli.w r1,  -3720(r30)
002b5c  8b903010  add.s r1, r1, r3
002b60  674c1fe6  storeli.w r1, -3132(r30)
002b64  e340efe2  loadli.w r1,  -3724(r30)
002b68  8b903010  add.s r1, r1, r3
002b6c  e70c1fe6  storeli.w r1, -3128(r30)
002b70  e300efe2  loadli.w r1,  -3728(r30)
002b74  8b903010  add.s r1, r1, r3
002b78  e74c1fe6  storeli.w r1, -3124(r30)
002b7c  e340dfe2  loadli.w r1,  -3732(r30)
002b80  8b903010  add.s r1, r1, r3
002b84  670d1fe6  storeli.w r1, -3120(r30)
002b88  e300dfe2  loadli.w r1,  -3736(r30)
002b8c  8b903010  add.s r1, r1, r3
002b90  674d1fe6  storeli.w r1, -3116(r30)
002b94  e340cfe2  loadli.w r1,  -3740(r30)
002b98  8b903010  add.s r1, r1, r3
002b9c  e70d1fe6  storeli.w r1, -3112(r30)
002ba0  e300cfe2  loadli.w r1,  -3744(r30)
002ba4  8b903010  add.s r1, r1, r3
002ba8  e74d1fe6  storeli.w r1, -3108(r30)
002bac  e340bfe2  loadli.w r1,  -3748(r30)
002bb0  8b903010  add.s r1, r1, r3
002bb4  670e1fe6  storeli.w r1, -3104(r30)
002bb8  e300bfe2  loadli.w r1,  -3752(r30)
002bbc  8b903010  add.s r1, r1, r3
002bc0  674e1fe6  storeli.w r1, -3100(r30)
002bc4  e340afe2  loadli.w r1,  -3756(r30)
002bc8  8b903010  add.s r1, r1, r3
002bcc  e70e1fe6  storeli.w r1, -3096(r30)
002bd0  e300afe2  loadli.w r1,  -3760(r30)
002bd4  8b903010  add.s r1, r1, r3
002bd8  e74e1fe6  storeli.w r1, -3092(r30)
002bdc  e3409fe2  loadli.w r1,  -3764(r30)
002be0  8b903010  add.s r1, r1, r3
002be4  670f1fe6  storeli.w r1, -3088(r30)
002be8  e3009fe2  loadli.w r1,  -3768(r30)
002bec  8b903010  add.s r1, r1, r3
002bf0  674f1fe6  storeli.w r1, -3084(r30)
002bf4  e3408fe2  loadli.w r1,  -3772(r30)
002bf8  8b903010  add.s r1, r1, r3
002bfc  e70f1fe6  storeli.w r1, -3080(r30)
002c00  e3008fe2  loadli.w r1,  -3776(r30)
002c04  8b903010  add.s r1, r1, r3
002c08  e74f1fe6  storeli.w r1, -3076(r30)
002c0c  e3407fe2  loadli.w r1,  -3780(r30)
002c10  8b903010  add.s r1, r1, r3
002c14  67001fe8  storeli.w r1, -3072(r30)
002c18  e3007fe2  loadli.w r1,  -3784(r30)
002c1c  8b903010  add.s r1, r1, r3
002c20  67401fe8  storeli.w r1, -3068(r30)
002c24  e3406fe2  loadli.w r1,  -3788(r30)
002c28  8b903010  add.s r1, r1, r3
002c2c  e7001fe8  storeli.w r1, -3064(r30)
002c30  e3006fe2  loadli.w r1,  -3792(r30)
002c34  8b903010  add.s r1, r1, r3
002c38  e7401fe8  storeli.w r1, -3060(r30)
002c3c  e3405fe2  loadli.w r1,  -3796(r30)
002c40  8b903010  add.s r1, r1, r3
002c44  67011fe8  storeli.w r1, -3056(r30)
002c48  e3005fe2  loadli.w r1,  -3800(r30)
002c4c  8b903010  add.s r1, r1, r3
002c50  67411fe8  storeli.w r1, -3052(r30)
002c54  e3404fe2  loadli.w r1,  -3804(r30)
002c58  8b903010  add.s r1, r1, r3
002c5c  e7011fe8  storeli.w r1, -3048(r30)
002c60  e3004fe2  loadli.w r1,  -3808(r30)
002c64  8b903010  add.s r1, r1, r3
002c68  e7411fe8  storeli.w r1, -3044(r30)
002c6c  e3403fe2  loadli.w r1,  -3812(r30)
002c70  8b903010  add.s r1, r1, r3
002c74  67021fe8  storeli.w r1, -3040(r30)
002c78  e3003fe2  loadli.w r1,  -3816(r30)
002c7c  8b903010  add.s r1, r1, r3
002c80  67421fe8  storeli.w r1, -3036(r30)
002c84  e3402fe2  loadli.w r1,  -3820(r30)
002c88  8b903010  add.s r1, r1, r3
002c8c  e7021fe8  storeli.w r1, -3032(r30)
002c90  e3002fe2  loadli.w r1,  -3824(r30)
002c94  8b903010  add.s r1, r1, r3
002c98  e7421fe8  storeli.w r1, -3028(r30)
002c9c  e3401fe2  loadli.w r1,  -3828(r30)
002ca0  8b903010  add.s r1, r1, r3
002ca4  67031fe8  storeli.w r1, -3024(r30)
002ca8  e3001fe2  loadli.w r1,  -3832(r30)
002cac  8b903010  add.s r1, r1, r3
002cb0  67431fe8  storeli.w r1, -3020(r30)
002cb4  e3400fe2  loadli.w r1,  -3836(r30)
002cb8  8b903010  add.s r1, r1, r3
002cbc  e7031fe8  storeli.w r1, -3016(r30)
002cc0  e3000fe2  loadli.w r1,  -3840(r30)
002cc4  8b903010  add.s r1, r1, r3
002cc8  e7431fe8  storeli.w r1, -3012(r30)
002ccc  e340ffe1  loadli.w r1,  -3844(r30)
002cd0  8b903010  add.s r1, r1, r3
002cd4  67041fe8  storeli.w r1, -3008(r30)
002cd8  e300ffe1  loadli.w r1,  -3848(r30)
002cdc  8b903010  add.s r1, r1, r3
002ce0  67441fe8  storeli.w r1, -3004(r30)
002ce4  e340efe1  loadli.w r1,  -3852(r30)
002ce8  8b903010  add.s r1, r1, r3
002cec  e7041fe8  storeli.w r1, -3000(r30)
002cf0  e300efe1  loadli.w r1,  -3856(r30)
002cf4  8b903010  add.s r1, r1, r3
002cf8  e7441fe8  storeli.w r1, -2996(r30)
002cfc  e340dfe1  loadli.w r1,  -3860(r30)
002d00  8b903010  add.s r1, r1, r3
002d04  67051fe8  storeli.w r1, -2992(r30)
002d08  e300dfe1  loadli.w r1,  -3864(r30)
002d0c  8b903010  add.s r1, r1, r3
002d10  67451fe8  storeli.w r1, -2988(r30)
002d14  e340cfe1  loadli.w r1,  -3868(r30)
002d18  8b903010  add.s r1, r1, r3
002d1c  e7051fe8  storeli.w r1, -2984(r30)
002d20  e300cfe1  loadli.w r1,  -3872(r30)
002d24  8b903010  add.s r1, r1, r3
002d28  e7451fe8  storeli.w r1, -2980(r30)
002d2c  e340bfe1  loadli.w r1,  -3876(r30)
002d30  8b903010  add.s r1, r1, r3
002d34  67061fe8  storeli.w r1, -2976(r30)
002d38  e300bfe1  loadli.w r1,  -3880(r30)
002d3c  8b903010  add.s r1, r1, r3
002d40  67461fe8  storeli.w r1, -2972(r30)
002d44  e340afe1  loadli.w r1,  -3884(r30)
002d48  8b903010  add.s r1, r1, r3
002d4c  e7061fe8  storeli.w r1, -2968(r30)
002d50  e300afe1  loadli.w r1,  -3888(r30)
002d54  8b903010  add.s r1, r1, r3
002d58  e7461fe8  storeli.w r1, -2964(r30)
002d5c  e3409fe1  loadli.w r1,  -3892(r30)
002d60  8b903010  add.s r1, r1, r3
002d64  67071fe8  storeli.w r1, -2960(r30)
002d68  e3009fe1  loadli.w r1,  -3896(r30)
002d6c  8b903010  add.s r1, r1, r3
002d70  67471fe8  storeli.w r1, -2956(r30)
002d74  e3408fe1  loadli.w r1,  -3900(r30)
002d78  8b903010  add.s r1, r1, r3
002d7c  e7071fe8  storeli.w r1, -2952(r30)
002d80  e3008fe1  loadli.w r1,  -3904(r30)
002d84  8b903010  add.s r1, r1, r3
002d88  e7471fe8  storeli.w r1, -2948(r30)
002d8c  e3407fe1  loadli.w r1,  -3908(r30)
002d90  8b903010  add.s r1, r1, r3
002d94  67081fe8  storeli.w r1, -2944(r30)
002d98  e3007fe1  loadli.w r1,  -3912(r30)
002d9c  8b903010  add.s r1, r1, r3
002da0  67481fe8  storeli.w r1, -2940(r30)
002da4  e3406fe1  loadli.w r1,  -3916(r30)
002da8  8b903010  add.s r1, r1, r3
002dac  e7081fe8  storeli.w r1, -2936(r30)
002db0  e3006fe1  loadli.w r1,  -3920(r30)
002db4  8b903010  add.s r1, r1, r3
002db8  e7481fe8  storeli.w r1, -2932(r30)
002dbc  e3405fe1  loadli.w r1,  -3924(r30)
002dc0  8b903010  add.s r1, r1, r3
002dc4  67091fe8  storeli.w r1, -2928(r30)
002dc8  e3005fe1  loadli.w r1,  -3928(r30)
002dcc  8b903010  add.s r1, r1, r3
002dd0  67491fe8  storeli.w r1, -2924(r30)
002dd4  e3404fe1  loadli.w r1,  -3932(r30)
002dd8  8b903010  add.s r1, r1, r3
002ddc  e7491fe8  storeli.w r1, -2916(r30)
002de0  e3004fe1  loadli.w r1,  -3936(r30)
002de4  8b903010  add.s r1, r1, r3
002de8  e7091fe8  storeli.w r1, -2920(r30)
002dec  e3403fe1  loadli.w r1,  -3940(r30)
002df0  8b903010  add.s r1, r1, r3
002df4  670a1fe8  storeli.w r1, -2912(r30)
002df8  e3003fe1  loadli.w r1,  -3944(r30)
002dfc  8b903010  add.s r1, r1, r3
002e00  674a1fe8  storeli.w r1, -2908(r30)
002e04  e3402fe1  loadli.w r1,  -3948(r30)
002e08  8b903010  add.s r1, r1, r3
002e0c  e70a1fe8  storeli.w r1, -2904(r30)
002e10  e3002fe1  loadli.w r1,  -3952(r30)
002e14  8b903010  add.s r1, r1, r3
002e18  e74a1fe8  storeli.w r1, -2900(r30)
002e1c  e3401fe1  loadli.w r1,  -3956(r30)
002e20  8b903010  add.s r1, r1, r3
002e24  670b1fe8  storeli.w r1, -2896(r30)
002e28  e3001fe1  loadli.w r1,  -3960(r30)
002e2c  8b903010  add.s r1, r1, r3
002e30  674b1fe8  storeli.w r1, -2892(r30)
002e34  e3400fe1  loadli.w r1,  -3964(r30)
002e38  8b903010  add.s r1, r1, r3
002e3c  e70b1fe8  storeli.w r1, -2888(r30)
002e40  5b190000  j 200
002e44  9f000000  addli r1, zero, 0
002e48  9f010000  addli r3, zero, 0
002e4c  9f020000  addli r5, zero, 0
002e50  1f040000  addli r8, zero, 0
002e54  9f040000  addli r9, zero, 0
002e58  9f050000  addli r11, zero, 0
002e5c  1f060000  addli r12, zero, 0
002e60  9f070000  addli r15, zero, 0
002e64  1f080000  addli r16, zero, 0
002e68  9f060000  addli r13, zero, 0
002e6c  9f080000  addli r17, zero, 0
002e70  1f0a0000  addli r20, zero, 0
002e74  1f0b0000  addli r22, zero, 0
002e78  9f0d0000  addli r27, zero, 0
002e7c  1f070000  addli r14, zero, 0
002e80  9f0b0000  addli r23, zero, 0
002e84  e343ffea  loadli.w r7,  -2692(r30)
002e88  8bea5a10  add.f.rn r21, r21, r5
002e8c  e3020feb  loadli.w r5,  -2688(r30)
002e90  6305efea  loadli.w r10,  -2704(r30)
002e94  0b6c8c10  add.f.rn r24, r24, r8
002e98  6304ffea  loadli.w r8,  -2696(r30)
002e9c  0b691910  add.f.rn r18, r18, r1
002ea0  e300bfea  loadli.w r1,  -2728(r30)
002ea4  8be93910  add.f.rn r19, r19, r3
002ea8  1f028200  addli r4, r4, 64
002eac  8be3b310  add.f.rn r7, r7, r11
002eb0  e345dfea  loadli.w r11,  -2708(r30)
002eb4  8be29210  add.f.rn r5, r5, r9
002eb8  e344efea  loadli.w r9,  -2700(r30)
002ebc  0b64c410  add.f.rn r8, r8, r12
002ec0  6306dfea  loadli.w r12,  -2712(r30)
002ec4  0b650511  add.f.rn r10, r10, r16
002ec8  6348afea  loadli.w r16,  -2732(r30)
002ecc  8be0e010  add.f.rn r1, r1, r14
002ed0  8be5d510  add.f.rn r11, r11, r13
002ed4  e346cfea  loadli.w r13,  -2716(r30)
002ed8  8be4f410  add.f.rn r9, r9, r15
002edc  e347bfea  loadli.w r15,  -2724(r30)
002ee0  0b661611  add.f.rn r12, r12, r17
002ee4  0b687811  add.f.rn r16, r16, r23
002ee8  8be64611  add.f.rn r13, r13, r20
002eec  630acfea  loadli.w r20,  -2720(r30)
002ef0  8be7b711  add.f.rn r15, r15, r27
002ef4  1f870000  addli r14, r1, 0
002ef8  9f0d0ff4  addli r27, r30, -1536
002efc  9f000004  addli r1, zero, 512
002f00  0b6a6a11  add.f.rn r20, r20, r22
002f04  b72a1202  beq r4, r1, 1704
002f08  e7477fea  storeli.w r7, -2692(r30)
002f0c  8b934d10  add.s r7, r27, r4
002f10  e7078fea  storeli.w r8, -2696(r30)
002f14  92303002  vadd.s.mz vr1{mr1}, zero, vr3
002f18  9f100000  addli r1, zero, 1
002f1c  67479fea  storeli.w r9, -2700(r30)
002f20  67450feb  storeli.w r16, -2732(r30)
002f24  e705efea  storeli.w r14, -2728(r30)
002f28  e745ffea  storeli.w r15, -2724(r30)
002f2c  67064feb  storeli.w r20, -2720(r30)
002f30  6746dfea  storeli.w r13, -2716(r30)
002f34  e706cfea  storeli.w r12, -2712(r30)
002f38  e746bfea  storeli.w r11, -2708(r30)
002f3c  67085fea  storeli.w r5, -2688(r30)
002f40  12313002  vadd.s.mz vr2{mr1}, zero, vr3
002f44  6bb40300  load.hu r8, 0(r7)
002f48  7e8100e0  vmmov mr2, r1
002f4c  ebb42300  load.hu r9, 2(r7)
002f50  ebb2a301  load.hu r5, 26(r7)
002f54  ebb1c301  load.hu r3, 28(r7)
002f58  ebb54300  load.hu r11, 4(r7)
002f5c  6bb66300  load.hu r12, 6(r7)
002f60  ebb68300  load.hu r13, 8(r7)
002f64  6bb7a300  load.hu r14, 10(r7)
002f68  ebb7c300  load.hu r15, 12(r7)
002f6c  6bb8e300  load.hu r16, 14(r7)
002f70  ebb80301  load.hu r17, 16(r7)
002f74  6bba2301  load.hu r20, 18(r7)
002f78  6bbb4301  load.hu r22, 20(r7)
002f7c  ebbb6301  load.hu r23, 22(r7)
002f80  ebbd8301  load.hu r27, 24(r7)
002f84  ebb3e301  load.hu r7, 30(r7)
002f88  9f200000  addli r1, zero, 2
002f8c  fe8100e0  vmmov mr3, r1
002f90  9f400000  addli r1, zero, 4
002f94  33140418  bfloat2float.rn r8, r8
002f98  b3920218  bfloat2float.rn r5, r5
002f9c  b3910118  bfloat2float.rn r3, r3
002fa0  7e8000e0  vmmov mr0, r1
002fa4  9f001000  addli r1, zero, 8
002fa8  ea201434  vor.u.mh vr1{mr2}, r8, vr1
002fac  33940418  bfloat2float.rn r8, r9
002fb0  ea201436  vor.u.mh vr1{mr3}, r8, vr1
002fb4  33940518  bfloat2float.rn r8, r11
002fb8  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002fbc  33140618  bfloat2float.rn r8, r12
002fc0  7e8000e0  vmmov mr0, r1
002fc4  9f002000  addli r1, zero, 16
002fc8  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002fcc  33940618  bfloat2float.rn r8, r13
002fd0  7e8000e0  vmmov mr0, r1
002fd4  9f004000  addli r1, zero, 32
002fd8  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002fdc  33140718  bfloat2float.rn r8, r14
002fe0  7e8000e0  vmmov mr0, r1
002fe4  9f008000  addli r1, zero, 64
002fe8  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002fec  33940718  bfloat2float.rn r8, r15
002ff0  7e8000e0  vmmov mr0, r1
002ff4  9f000001  addli r1, zero, 128
002ff8  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002ffc  33140818  bfloat2float.rn r8, r16
003000  7e8000e0  vmmov mr0, r1
003004  9f000002  addli r1, zero, 256
003008  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00300c  33940818  bfloat2float.rn r8, r17
003010  7e8000e0  vmmov mr0, r1
003014  9f000004  addli r1, zero, 512
003018  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00301c  33140a18  bfloat2float.rn r8, r20
003020  7e8000e0  vmmov mr0, r1
003024  9f000008  addli r1, zero, 1024
003028  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00302c  33140b18  bfloat2float.rn r8, r22
003030  7e8000e0  vmmov mr0, r1
003034  9f000010  addli r1, zero, 2048
003038  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00303c  33940b18  bfloat2float.rn r8, r23
003040  7e8000e0  vmmov mr0, r1
003044  9f000020  addli r1, zero, 4096
003048  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00304c  33940d18  bfloat2float.rn r8, r27
003050  7e8000e0  vmmov mr0, r1
003054  9f000040  addli r1, zero, 8192
003058  ea201430  vor.u.mh vr1{mr0}, r8, vr1
00305c  7e8000e0  vmmov mr0, r1
003060  ab400000  lui r1, 4
003064  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
003068  7e8000e0  vmmov mr0, r1
00306c  9f000ff6  addli r1, r30, -1280
003070  8b924010  add.s r5, r1, r4
003074  ab800000  lui r1, 8
003078  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
00307c  b3910318  bfloat2float.rn r3, r7
003080  7e8000e0  vmmov mr0, r1
003084  9f400000  addli r1, zero, 4
003088  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
00308c  ebb10200  load.hu r3, 0(r5)
003090  ebb32200  load.hu r7, 2(r5)
003094  6bb44200  load.hu r8, 4(r5)
003098  ebb46200  load.hu r9, 6(r5)
00309c  ebb58200  load.hu r11, 8(r5)
0030a0  6bb6a200  load.hu r12, 10(r5)
0030a4  ebb6c200  load.hu r13, 12(r5)
0030a8  6bb7e200  load.hu r14, 14(r5)
0030ac  ebb70201  load.hu r15, 16(r5)
0030b0  6bb82201  load.hu r16, 18(r5)
0030b4  ebb84201  load.hu r17, 20(r5)
0030b8  6bba6201  load.hu r20, 22(r5)
0030bc  6bbb8201  load.hu r22, 24(r5)
0030c0  ebbba201  load.hu r23, 26(r5)
0030c4  ebbdc201  load.hu r27, 28(r5)
0030c8  ebb2e201  load.hu r5, 30(r5)
0030cc  b3910118  bfloat2float.rn r3, r3
0030d0  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
0030d4  b3910318  bfloat2float.rn r3, r7
0030d8  7e8100e0  vmmov mr2, r1
0030dc  9f001000  addli r1, zero, 8
0030e0  6aa12136  vor.u.mh vr2{mr3}, r3, vr2
0030e4  b3110418  bfloat2float.rn r3, r8
0030e8  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
0030ec  b3910418  bfloat2float.rn r3, r9
0030f0  7e8100e0  vmmov mr2, r1
0030f4  9f002000  addli r1, zero, 16
0030f8  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
0030fc  b3910518  bfloat2float.rn r3, r11
003100  7e8100e0  vmmov mr2, r1
003104  9f004000  addli r1, zero, 32
003108  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
00310c  b3110618  bfloat2float.rn r3, r12
003110  7e8100e0  vmmov mr2, r1
003114  9f008000  addli r1, zero, 64
003118  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
00311c  b3910618  bfloat2float.rn r3, r13
003120  7e8100e0  vmmov mr2, r1
003124  9f000001  addli r1, zero, 128
003128  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
00312c  b3110718  bfloat2float.rn r3, r14
003130  7e8100e0  vmmov mr2, r1
003134  9f000002  addli r1, zero, 256
003138  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
00313c  b3910718  bfloat2float.rn r3, r15
003140  7e8100e0  vmmov mr2, r1
003144  9f000004  addli r1, zero, 512
003148  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
00314c  b3110818  bfloat2float.rn r3, r16
003150  7e8100e0  vmmov mr2, r1
003154  9f000008  addli r1, zero, 1024
003158  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
00315c  b3910818  bfloat2float.rn r3, r17
003160  7e8100e0  vmmov mr2, r1
003164  9f000010  addli r1, zero, 2048
003168  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
00316c  b3110a18  bfloat2float.rn r3, r20
003170  7e8100e0  vmmov mr2, r1
003174  9f000020  addli r1, zero, 4096
003178  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
00317c  b3110b18  bfloat2float.rn r3, r22
003180  7e8100e0  vmmov mr2, r1
003184  9f000040  addli r1, zero, 8192
003188  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
00318c  b3910b18  bfloat2float.rn r3, r23
003190  7e8100e0  vmmov mr2, r1
003194  ab400000  lui r1, 4
003198  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
00319c  b3910d18  bfloat2float.rn r3, r27
0031a0  7e8100e0  vmmov mr2, r1
0031a4  9f000fec  addli r1, r30, -2560
0031a8  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
0031ac  b3910218  bfloat2float.rn r3, r5
0031b0  6aa12130  vor.u.mh vr2{mr0}, r3, vr2
0031b4  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
0031b8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0031bc  00a00000  mfence { lm }
0031c0  e30b0fec  loadli.w r23,  -2560(r30)
0031c4  63470fec  loadli.w r14,  -2556(r30)
0031c8  e3061fec  loadli.w r13,  -2552(r30)
0031cc  63481fec  loadli.w r16,  -2548(r30)
0031d0  63042fec  loadli.w r8,  -2544(r30)
0031d4  63462fec  loadli.w r12,  -2540(r30)
0031d8  e3023fec  loadli.w r5,  -2536(r30)
0031dc  e3443fec  loadli.w r9,  -2532(r30)
0031e0  e3034fec  loadli.w r7,  -2528(r30)
0031e4  634b4fec  loadli.w r22,  -2524(r30)
0031e8  e3085fec  loadli.w r17,  -2520(r30)
0031ec  9781cb01  and r3, r23, r28
0031f0  130d3104  setlt.u r26, r2, r3
0031f4  e3415fec  loadli.w r3,  -2516(r30)
0031f8  e30d6fec  loadli.w r27,  -2512(r30)
0031fc  634a6fec  loadli.w r20,  -2508(r30)
003200  e3077fec  loadli.w r15,  -2504(r30)
003204  e3457fec  loadli.w r11,  -2500(r30)
003208  3b600d00  bneq r26, zero, 24
00320c  1bcd0b01  srli r26, r23, 16
003210  1b0d1d00  andi r26, r26, 1
003214  8b9bab11  add.s r23, r23, r26
003218  0b9d6b10  add.s r26, r23, r6
00321c  db010000  j 12
003220  ab004000  lui r1, 1024
003224  179d1b00  or r26, r23, r1
003228  970bc701  and r23, r14, r28
00322c  930b7105  setlt.u r23, r2, r23
003230  3be00b00  bneq r23, zero, 24
003234  9b4b0701  srli r23, r14, 16
003238  9b8b1b00  andi r23, r23, 1
00323c  0b177711  add.s r14, r14, r23
003240  8b1b6710  add.s r23, r14, r6
003244  db010000  j 12
003248  ab004000  lui r1, 1024
00324c  971b1700  or r23, r14, r1
003250  1787c601  and r14, r13, r28
003254  1307e104  setlt.u r14, r2, r14
003258  3b600700  bneq r14, zero, 24
00325c  1bc70601  srli r14, r13, 16
003260  1b071700  andi r14, r14, 1
003264  8b96e610  add.s r13, r13, r14
003268  8b906610  add.s r1, r13, r6
00326c  db010000  j 12
003270  ab004000  lui r1, 1024
003274  97901600  or r1, r13, r1
003278  9706c801  and r13, r16, r28
00327c  67051fea  storeli.w r1, -2736(r30)
003280  9306d104  setlt.u r13, r2, r13
003284  3be00600  bneq r13, zero, 24
003288  9b460801  srli r13, r16, 16
00328c  9b861600  andi r13, r13, 1
003290  8b16d810  add.s r13, r16, r13
003294  8b906610  add.s r1, r13, r6
003298  db010000  j 12
00329c  ab004000  lui r1, 1024
0032a0  97101800  or r1, r16, r1
0032a4  9706c401  and r13, r8, r28
0032a8  e7441fea  storeli.w r1, -2740(r30)
0032ac  9306d104  setlt.u r13, r2, r13
0032b0  3be00600  bneq r13, zero, 24
0032b4  9b460401  srli r13, r8, 16
0032b8  9b861600  andi r13, r13, 1
0032bc  0b14d410  add.s r8, r8, r13
0032c0  0b146410  add.s r8, r8, r6
0032c4  db010000  j 12
0032c8  ab004000  lui r1, 1024
0032cc  17141400  or r8, r8, r1
0032d0  9706c601  and r13, r12, r28
0032d4  9306d104  setlt.u r13, r2, r13
0032d8  3be00600  bneq r13, zero, 24
0032dc  9b460601  srli r13, r12, 16
0032e0  9b861600  andi r13, r13, 1
0032e4  0b16d610  add.s r12, r12, r13
0032e8  0b166610  add.s r12, r12, r6
0032ec  db010000  j 12
0032f0  ab004000  lui r1, 1024
0032f4  17161600  or r12, r12, r1
0032f8  9786c201  and r13, r5, r28
0032fc  9306d104  setlt.u r13, r2, r13
003300  3be00600  bneq r13, zero, 24
003304  9bc60201  srli r13, r5, 16
003308  9b861600  andi r13, r13, 1
00330c  8b92d210  add.s r5, r5, r13
003310  8b926210  add.s r5, r5, r6
003314  db010000  j 12
003318  ab004000  lui r1, 1024
00331c  97921200  or r5, r5, r1
003320  9786c401  and r13, r9, r28
003324  9306d104  setlt.u r13, r2, r13
003328  3be00600  bneq r13, zero, 24
00332c  9bc60401  srli r13, r9, 16
003330  9b861600  andi r13, r13, 1
003334  8b94d410  add.s r9, r9, r13
003338  8b946410  add.s r9, r9, r6
00333c  db010000  j 12
003340  ab004000  lui r1, 1024
003344  97941400  or r9, r9, r1
003348  9786c301  and r13, r7, r28
00334c  9306d104  setlt.u r13, r2, r13
003350  3be00600  bneq r13, zero, 24
003354  9bc60301  srli r13, r7, 16
003358  9b861600  andi r13, r13, 1
00335c  8b93d310  add.s r7, r7, r13
003360  8b936310  add.s r7, r7, r6
003364  db010000  j 12
003368  ab004000  lui r1, 1024
00336c  97931300  or r7, r7, r1
003370  9706cb01  and r13, r22, r28
003374  9306d104  setlt.u r13, r2, r13
003378  3be00600  bneq r13, zero, 24
00337c  9b460b01  srli r13, r22, 16
003380  9b861600  andi r13, r13, 1
003384  8b16db10  add.s r13, r22, r13
003388  0b986610  add.s r16, r13, r6
00338c  db010000  j 12
003390  ab004000  lui r1, 1024
003394  17181b00  or r16, r22, r1
003398  9786c801  and r13, r17, r28
00339c  9306d104  setlt.u r13, r2, r13
0033a0  3be00600  bneq r13, zero, 24
0033a4  9bc60801  srli r13, r17, 16
0033a8  9b861600  andi r13, r13, 1
0033ac  8b96d810  add.s r13, r17, r13
0033b0  8b986610  add.s r17, r13, r6
0033b4  db010000  j 12
0033b8  ab004000  lui r1, 1024
0033bc  97981800  or r17, r17, r1
0033c0  9786c101  and r13, r3, r28
0033c4  9306d104  setlt.u r13, r2, r13
0033c8  3be00600  bneq r13, zero, 24
0033cc  9bc60101  srli r13, r3, 16
0033d0  9b861600  andi r13, r13, 1
0033d4  8b91d110  add.s r3, r3, r13
0033d8  8b916110  add.s r3, r3, r6
0033dc  db010000  j 12
0033e0  ab004000  lui r1, 1024
0033e4  97911100  or r3, r3, r1
0033e8  9786cd01  and r13, r27, r28
0033ec  9306d104  setlt.u r13, r2, r13
0033f0  3be00600  bneq r13, zero, 24
0033f4  9bc60d01  srli r13, r27, 16
0033f8  9b861600  andi r13, r13, 1
0033fc  8b96dd10  add.s r13, r27, r13
003400  0b9b6610  add.s r22, r13, r6
003404  db010000  j 12
003408  ab004000  lui r1, 1024
00340c  179b1d00  or r22, r27, r1
003410  9706ca01  and r13, r20, r28
003414  9306d104  setlt.u r13, r2, r13
003418  3be00600  bneq r13, zero, 24
00341c  9b460a01  srli r13, r20, 16
003420  9b861600  andi r13, r13, 1
003424  8b16da10  add.s r13, r20, r13
003428  8b966610  add.s r13, r13, r6
00342c  db010000  j 12
003430  ab004000  lui r1, 1024
003434  97161a00  or r13, r20, r1
003438  1787c701  and r14, r15, r28
00343c  1307e104  setlt.u r14, r2, r14
003440  3b600700  bneq r14, zero, 24
003444  1bc70701  srli r14, r15, 16
003448  1b071700  andi r14, r14, 1
00344c  0b97e710  add.s r14, r15, r14
003450  0b176710  add.s r14, r14, r6
003454  db010000  j 12
003458  ab004000  lui r1, 1024
00345c  17971700  or r14, r15, r1
003460  9787c501  and r15, r11, r28
003464  6707afea  storeli.w r10, -2704(r30)
003468  9307f104  setlt.u r15, r2, r15
00346c  3be00700  bneq r15, zero, 24
003470  9bc70501  srli r15, r11, 16
003474  9b871700  andi r15, r15, 1
003478  8b95f510  add.s r11, r11, r15
00347c  8b956510  add.s r11, r11, r6
003480  db010000  j 12
003484  ab004000  lui r1, 1024
003488  97951500  or r11, r11, r1
00348c  6305efeb  loadli.w r10,  -2576(r30)
003490  9f008000  addli r1, zero, 64
003494  3f201500  blt.s r10, r1, 8
003498  db35ffff  j -1620
00349c  ab00ffff  lui r1, 1048560
0034a0  6301afea  loadli.w r2,  -2736(r30)
0034a4  97071d00  and r15, r26, r1
0034a8  178a1b00  and r20, r23, r1
0034ac  97821200  and r5, r5, r1
0034b0  97811100  and r3, r3, r1
0034b4  17061600  and r12, r12, r1
0034b8  17081800  and r16, r16, r1
0034bc  97851500  and r11, r11, r1
0034c0  97881800  and r17, r17, r1
0034c4  170b1b00  and r22, r22, r1
0034c8  17071700  and r14, r14, r1
0034cc  17041400  and r8, r8, r1
0034d0  97831300  and r7, r7, r1
0034d4  97841400  and r9, r9, r1
0034d8  97861600  and r13, r13, r1
0034dc  970b1100  and r23, r2, r1
0034e0  63419fea  loadli.w r2,  -2740(r30)
0034e4  8be79719  sub.f.rn r15, r15, r25
0034e8  0be39219  sub.f.rn r6, r5, r25
0034ec  9f020c00  addli r5, r24, 0
0034f0  1f0c0900  addli r24, r18, 0
0034f4  0be99119  sub.f.rn r18, r3, r25
0034f8  0b6a9a19  sub.f.rn r20, r20, r25
0034fc  0b669619  sub.f.rn r12, r12, r25
003500  0b6e9819  sub.f.rn r28, r16, r25
003504  0be59319  sub.f.rn r10, r7, r25
003508  8be89819  sub.f.rn r17, r17, r25
00350c  0b6b9b19  sub.f.rn r22, r22, r25
003510  0b679719  sub.f.rn r14, r14, r25
003514  9f030200  addli r7, r4, 0
003518  1f820a00  addli r4, r21, 0
00351c  9f8a0900  addli r21, r19, 0
003520  8be99619  sub.f.rn r19, r13, r25
003524  8b6d9419  sub.f.rn r27, r8, r25
003528  8beb9b19  sub.f.rn r23, r23, r25
00352c  170d1100  and r26, r2, r1
003530  8be09519  sub.f.rn r1, r11, r25
003534  0be19419  sub.f.rn r2, r9, r25
003538  0b6d9d19  sub.f.rn r26, r26, r25
00353c  8be1f720  mul.f.rn r3, r15, r15
003540  8b65c620  mul.f.rn r11, r12, r12
003544  0b666320  mul.f.rn r12, r6, r6
003548  8b66ce21  mul.f.rn r13, r28, r28
00354c  6303ffeb  loadli.w r6,  -2568(r30)
003550  634effeb  loadli.w r28,  -2564(r30)
003554  8be4bd21  mul.f.rn r9, r27, r27
003558  8bed3921  mul.f.rn r27, r19, r19
00355c  9f890a00  addli r19, r21, 0
003560  9f0a0200  addli r21, r4, 0
003564  0b68a520  mul.f.rn r16, r10, r10
003568  8be81821  mul.f.rn r17, r17, r17
00356c  0b6b6b21  mul.f.rn r22, r22, r22
003570  1f820300  addli r4, r7, 0
003574  0b67e720  mul.f.rn r14, r14, r14
003578  8beb7b21  mul.f.rn r23, r23, r23
00357c  8b672120  mul.f.rn r15, r2, r2
003580  2b01807f  lui r2, 522240
003584  0b64ad21  mul.f.rn r8, r26, r26
003588  67053fea  storeli.w r3, -2736(r30)
00358c  8b614a21  mul.f.rn r3, r20, r20
003590  0b6a2921  mul.f.rn r20, r18, r18
003594  1f090c00  addli r18, r24, 0
003598  1f8c0200  addli r24, r5, 0
00359c  9f820b00  addli r5, r23, 0
0035a0  8beb1020  mul.f.rn r23, r1, r1
0035a4  e300afea  loadli.w r1,  -2736(r30)
0035a8  db1bffff  j -1828
0035ac  8b603911  add.f.rn r1, r18, r19
0035b0  63016fe5  loadli.w r2,  -3408(r30)
0035b4  8be05011  add.f.rn r1, r1, r21
0035b8  8be08011  add.f.rn r1, r1, r24
0035bc  8be05010  add.f.rn r1, r1, r5
0035c0  8be07010  add.f.rn r1, r1, r7
0035c4  8be08010  add.f.rn r1, r1, r8
0035c8  8be09010  add.f.rn r1, r1, r9
0035cc  8be0a010  add.f.rn r1, r1, r10
0035d0  8be0b010  add.f.rn r1, r1, r11
0035d4  8be0c010  add.f.rn r1, r1, r12
0035d8  8be0d010  add.f.rn r1, r1, r13
0035dc  8be04011  add.f.rn r1, r1, r20
0035e0  8be0f010  add.f.rn r1, r1, r15
0035e4  8be0e010  add.f.rn r1, r1, r14
0035e8  8be00011  add.f.rn r1, r1, r16
0035ec  73601100  stores.w r1, 0(r2)
0035f0  00a00300  mfence { lm, sm, gm }
0035f4  6342bfe9  loadli.w r4,  -2852(r30)
0035f8  80210204  csr_set csr3, r4
0035fc  00d00100  sync_group
003600  e300bfe9  loadli.w r1,  -2856(r30)
003604  3ba10000  bneq r1, zero, 72
003608  e3027fe5  loadli.w r5,  -3400(r30)
00360c  efc00200  loads.w r1, 0(r5)
003610  6fc14200  loads.w r2, 4(r5)
003614  efc18200  loads.w r3, 8(r5)
003618  8be02010  add.f.rn r1, r1, r2
00361c  6fc1c200  loads.w r2, 12(r5)
003620  8be03010  add.f.rn r1, r1, r3
003624  efc10201  loads.w r3, 16(r5)
003628  8be02010  add.f.rn r1, r1, r2
00362c  6fc14201  loads.w r2, 20(r5)
003630  8be03010  add.f.rn r1, r1, r3
003634  efc18201  loads.w r3, 24(r5)
003638  8be02010  add.f.rn r1, r1, r2
00363c  6fc1c201  loads.w r2, 28(r5)
003640  8be03010  add.f.rn r1, r1, r3
003644  8be02010  add.f.rn r1, r1, r2
003648  73e01200  stores.w r1, 0(r5)
00364c  00a00300  mfence { lm, sm, gm }
003650  80210204  csr_set csr3, r4
003654  00d00100  sync_group
003658  63017fe5  loadli.w r2,  -3400(r30)
00365c  ab01803a  lui r3, 239616
003660  9f000000  addli r1, zero, 0
003664  1f0e0000  addli r28, zero, 0
003668  6f410100  loads.w r2, 0(r2)
00366c  0b613120  mul.f.rn r2, r2, r3
003670  e3018fe4  loadli.w r3,  -3520(r30)
003674  0b613110  add.f.rn r2, r2, r3
003678  ab01803f  lui r3, 260096
00367c  0f010108  sqrt.f.rn r2, r2
003680  0f812118  div.f.rn r2, r3, r2
003684  9f010ff8  addli r3, r30, -1024
003688  9fe13100  addli r3, r3, 30
00368c  674e3fe8  storeli.w r3, -2844(r30)
003690  9f010ffa  addli r3, r30, -768
003694  9fe13100  addli r3, r3, 30
003698  670e3fe8  storeli.w r3, -2848(r30)
00369c  5b4f0000  j 632
0036a0  1bc60a01  srli r12, r21, 16
0036a4  6307ffeb  loadli.w r14,  -2568(r30)
0036a8  1b061600  andi r12, r12, 1
0036ac  0b96ca10  add.s r12, r21, r12
0036b0  0b16e610  add.s r12, r12, r14
0036b4  63474fea  loadli.w r14,  -2780(r30)
0036b8  ab0dffff  lui r27, 1048560
0036bc  e30a3fea  loadli.w r21,  -2792(r30)
0036c0  630b2fea  loadli.w r22,  -2800(r30)
0036c4  e30b1fea  loadli.w r23,  -2808(r30)
0036c8  630c0fea  loadli.w r24,  -2816(r30)
0036cc  630dffe9  loadli.w r26,  -2824(r30)
0036d0  630eefeb  loadli.w r28,  -2576(r30)
0036d4  1706b601  and r12, r12, r27
0036d8  1707b701  and r14, r14, r27
0036dc  978aba01  and r21, r21, r27
0036e0  170bbb01  and r22, r22, r27
0036e4  978bbb01  and r23, r23, r27
0036e8  170cbc01  and r24, r24, r27
0036ec  170dbd01  and r26, r26, r27
0036f0  1f0e8e00  addli r28, r28, 64
0036f4  0b669619  sub.f.rn r12, r12, r25
0036f8  0b679719  sub.f.rn r14, r14, r25
0036fc  8bea9a19  sub.f.rn r21, r21, r25
003700  0b6b9b19  sub.f.rn r22, r22, r25
003704  8beb9b19  sub.f.rn r23, r23, r25
003708  0b6c9c19  sub.f.rn r24, r24, r25
00370c  0b6d9d19  sub.f.rn r26, r26, r25
003710  0b66c120  mul.f.rn r12, r2, r12
003714  0b67e120  mul.f.rn r14, r2, r14
003718  8b6a5121  mul.f.rn r21, r2, r21
00371c  0b6b6121  mul.f.rn r22, r2, r22
003720  8b6b7121  mul.f.rn r23, r2, r23
003724  0b6c8121  mul.f.rn r24, r2, r24
003728  0b6da121  mul.f.rn r26, r2, r26
00372c  0b648720  mul.f.rn r8, r14, r8
003730  63473fea  loadli.w r14,  -2788(r30)
003734  8be49a20  mul.f.rn r9, r21, r9
003738  e34a2fea  loadli.w r21,  -2796(r30)
00373c  0b65ab20  mul.f.rn r10, r22, r10
003740  634b1fea  loadli.w r22,  -2804(r30)
003744  8be5bb20  mul.f.rn r11, r23, r11
003748  e34b0fea  loadli.w r23,  -2812(r30)
00374c  0b636c20  mul.f.rn r6, r24, r6
003750  630cdfe9  loadli.w r24,  -2840(r30)
003754  8b637d20  mul.f.rn r7, r26, r7
003758  634ddfea  loadli.w r26,  -2708(r30)
00375c  1707b701  and r14, r14, r27
003760  978aba01  and r21, r21, r27
003764  170bbb01  and r22, r22, r27
003768  978bbb01  and r23, r23, r27
00376c  170cbc01  and r24, r24, r27
003770  0b679719  sub.f.rn r14, r14, r25
003774  8bea9a19  sub.f.rn r21, r21, r25
003778  0b6b9b19  sub.f.rn r22, r22, r25
00377c  8beb9b19  sub.f.rn r23, r23, r25
003780  0b6c9c19  sub.f.rn r24, r24, r25
003784  0b67e120  mul.f.rn r14, r2, r14
003788  8b6a5121  mul.f.rn r21, r2, r21
00378c  0b6b6121  mul.f.rn r22, r2, r22
003790  8b6b7121  mul.f.rn r23, r2, r23
003794  0b6c8121  mul.f.rn r24, r2, r24
003798  0b624720  mul.f.rn r4, r14, r4
00379c  6347ffe9  loadli.w r14,  -2820(r30)
0037a0  8be25a20  mul.f.rn r5, r21, r5
0037a4  e34aefe9  loadli.w r21,  -2828(r30)
0037a8  8b66db20  mul.f.rn r13, r22, r13
0037ac  630befe9  loadli.w r22,  -2832(r30)
0037b0  8be13b20  mul.f.rn r3, r23, r3
0037b4  e34bdfe9  loadli.w r23,  -2836(r30)
0037b8  1707b701  and r14, r14, r27
0037bc  978aba01  and r21, r21, r27
0037c0  170bbb01  and r22, r22, r27
0037c4  978bbb01  and r23, r23, r27
0037c8  9f0d0ff4  addli r27, r30, -1536
0037cc  0b679719  sub.f.rn r14, r14, r25
0037d0  8bea9a19  sub.f.rn r21, r21, r25
0037d4  0b6b9b19  sub.f.rn r22, r22, r25
0037d8  8beb9b19  sub.f.rn r23, r23, r25
0037dc  0b67e120  mul.f.rn r14, r2, r14
0037e0  8b6a5121  mul.f.rn r21, r2, r21
0037e4  0b6b6121  mul.f.rn r22, r2, r22
0037e8  8b6b7121  mul.f.rn r23, r2, r23
0037ec  0b67a721  mul.f.rn r14, r14, r26
0037f0  630ddfea  loadli.w r26,  -2712(r30)
0037f4  8beaaa21  mul.f.rn r21, r21, r26
0037f8  634dcfea  loadli.w r26,  -2716(r30)
0037fc  0b6bab21  mul.f.rn r22, r22, r26
003800  630dcfea  loadli.w r26,  -2720(r30)
003804  0b671711  add.f.rn r14, r14, r17
003808  8bebab21  mul.f.rn r23, r23, r26
00380c  634dbfea  loadli.w r26,  -2724(r30)
003810  8be82a11  add.f.rn r17, r21, r18
003814  0b6cac21  mul.f.rn r24, r24, r26
003818  630dbfea  loadli.w r26,  -2728(r30)
00381c  0b694b11  add.f.rn r18, r22, r20
003820  0b66a621  mul.f.rn r12, r12, r26
003824  634dafea  loadli.w r26,  -2732(r30)
003828  8be93b11  add.f.rn r19, r23, r19
00382c  0b64a411  add.f.rn r8, r8, r26
003830  630dafea  loadli.w r26,  -2736(r30)
003834  0b680c11  add.f.rn r16, r24, r16
003838  8be4a411  add.f.rn r9, r9, r26
00383c  634d9fea  loadli.w r26,  -2740(r30)
003840  0b66f610  add.f.rn r12, r12, r15
003844  8b971d10  add.s r15, r27, r1
003848  9f804000  addli r1, r1, 32
00384c  0b65a511  add.f.rn r10, r10, r26
003850  630d9fea  loadli.w r26,  -2744(r30)
003854  33140400  float2bfloat.rn r8, r8
003858  73908700  store.h r8, 0(r15)
00385c  8be5a511  add.f.rn r11, r11, r26
003860  634d8fea  loadli.w r26,  -2748(r30)
003864  b3940400  float2bfloat.rn r9, r9
003868  73919700  store.h r9, 2(r15)
00386c  0b62a211  add.f.rn r4, r4, r26
003870  630d8fea  loadli.w r26,  -2752(r30)
003874  33140500  float2bfloat.rn r8, r10
003878  73928700  store.h r8, 4(r15)
00387c  8be2a211  add.f.rn r5, r5, r26
003880  634d7fea  loadli.w r26,  -2756(r30)
003884  b3940500  float2bfloat.rn r9, r11
003888  73939700  store.h r9, 6(r15)
00388c  8be6a611  add.f.rn r13, r13, r26
003890  630d7fea  loadli.w r26,  -2760(r30)
003894  33120200  float2bfloat.rn r4, r4
003898  73944700  store.h r4, 8(r15)
00389c  8be1a111  add.f.rn r3, r3, r26
0038a0  634d6fea  loadli.w r26,  -2764(r30)
0038a4  b3920200  float2bfloat.rn r5, r5
0038a8  73955700  store.h r5, 10(r15)
0038ac  0b63a311  add.f.rn r6, r6, r26
0038b0  630d6fea  loadli.w r26,  -2768(r30)
0038b4  33920600  float2bfloat.rn r4, r13
0038b8  73964700  store.h r4, 12(r15)
0038bc  8be3a311  add.f.rn r7, r7, r26
0038c0  b3910100  float2bfloat.rn r3, r3
0038c4  73973700  store.h r3, 14(r15)
0038c8  b3110300  float2bfloat.rn r3, r6
0038cc  73983700  store.h r3, 16(r15)
0038d0  b3110700  float2bfloat.rn r3, r14
0038d4  33920300  float2bfloat.rn r4, r7
0038d8  739a3700  store.h r3, 20(r15)
0038dc  b3110900  float2bfloat.rn r3, r18
0038e0  73994700  store.h r4, 18(r15)
0038e4  33920800  float2bfloat.rn r4, r17
0038e8  739c3700  store.h r3, 24(r15)
0038ec  b3110800  float2bfloat.rn r3, r16
0038f0  739b4700  store.h r4, 22(r15)
0038f4  33920900  float2bfloat.rn r4, r19
0038f8  739e3700  store.h r3, 28(r15)
0038fc  9f010004  addli r3, zero, 512
003900  739d4700  store.h r4, 26(r15)
003904  33120600  float2bfloat.rn r4, r12
003908  739f4700  store.h r4, 30(r15)
00390c  00a00000  mfence { lm }
003910  b7433ee6  beq r28, r3, -13072
003914  8b92cd11  add.s r5, r27, r28
003918  92303002  vadd.s.mz vr1{mr1}, zero, vr3
00391c  9f190000  addli r19, zero, 1
003920  12313002  vadd.s.mz vr2{mr1}, zero, vr3
003924  6bb30200  load.hu r6, 0(r5)
003928  ebb32200  load.hu r7, 2(r5)
00392c  7e8109e0  vmmov mr2, r19
003930  6bb2a201  load.hu r4, 26(r5)
003934  ebb1c201  load.hu r3, 28(r5)
003938  6bb44200  load.hu r8, 4(r5)
00393c  ebb46200  load.hu r9, 6(r5)
003940  6bb58200  load.hu r10, 8(r5)
003944  ebb5a200  load.hu r11, 10(r5)
003948  6bb6c200  load.hu r12, 12(r5)
00394c  ebb6e200  load.hu r13, 14(r5)
003950  6bb70201  load.hu r14, 16(r5)
003954  ebb72201  load.hu r15, 18(r5)
003958  6bb84201  load.hu r16, 20(r5)
00395c  ebb86201  load.hu r17, 22(r5)
003960  6bb98201  load.hu r18, 24(r5)
003964  ebb2e201  load.hu r5, 30(r5)
003968  33130318  bfloat2float.rn r6, r6
00396c  33120218  bfloat2float.rn r4, r4
003970  b3910118  bfloat2float.rn r3, r3
003974  ea201334  vor.u.mh vr1{mr2}, r6, vr1
003978  33930318  bfloat2float.rn r6, r7
00397c  9f230000  addli r7, zero, 2
003980  fe8103e0  vmmov mr3, r7
003984  9f430000  addli r7, zero, 4
003988  ea201336  vor.u.mh vr1{mr3}, r6, vr1
00398c  33130418  bfloat2float.rn r6, r8
003990  7e8003e0  vmmov mr0, r7
003994  9f031000  addli r7, zero, 8
003998  ea201330  vor.u.mh vr1{mr0}, r6, vr1
00399c  33930418  bfloat2float.rn r6, r9
0039a0  7e8003e0  vmmov mr0, r7
0039a4  9f032000  addli r7, zero, 16
0039a8  ea201330  vor.u.mh vr1{mr0}, r6, vr1
0039ac  33130518  bfloat2float.rn r6, r10
0039b0  7e8003e0  vmmov mr0, r7
0039b4  9f034000  addli r7, zero, 32
0039b8  ea201330  vor.u.mh vr1{mr0}, r6, vr1
0039bc  33930518  bfloat2float.rn r6, r11
0039c0  7e8003e0  vmmov mr0, r7
0039c4  9f038000  addli r7, zero, 64
0039c8  ea201330  vor.u.mh vr1{mr0}, r6, vr1
0039cc  33130618  bfloat2float.rn r6, r12
0039d0  7e8003e0  vmmov mr0, r7
0039d4  9f030001  addli r7, zero, 128
0039d8  ea201330  vor.u.mh vr1{mr0}, r6, vr1
0039dc  33930618  bfloat2float.rn r6, r13
0039e0  7e8003e0  vmmov mr0, r7
0039e4  9f030002  addli r7, zero, 256
0039e8  ea201330  vor.u.mh vr1{mr0}, r6, vr1
0039ec  33130718  bfloat2float.rn r6, r14
0039f0  7e8003e0  vmmov mr0, r7
0039f4  9f030004  addli r7, zero, 512
0039f8  ea201330  vor.u.mh vr1{mr0}, r6, vr1
0039fc  33930718  bfloat2float.rn r6, r15
003a00  7e8003e0  vmmov mr0, r7
003a04  9f030008  addli r7, zero, 1024
003a08  ea201330  vor.u.mh vr1{mr0}, r6, vr1
003a0c  33130818  bfloat2float.rn r6, r16
003a10  7e8003e0  vmmov mr0, r7
003a14  9f030010  addli r7, zero, 2048
003a18  ea201330  vor.u.mh vr1{mr0}, r6, vr1
003a1c  33930818  bfloat2float.rn r6, r17
003a20  7e8003e0  vmmov mr0, r7
003a24  9f030020  addli r7, zero, 4096
003a28  ea201330  vor.u.mh vr1{mr0}, r6, vr1
003a2c  33130918  bfloat2float.rn r6, r18
003a30  7e8003e0  vmmov mr0, r7
003a34  ea201330  vor.u.mh vr1{mr0}, r6, vr1
003a38  1f030040  addli r6, zero, 8192
003a3c  7e0003e0  vmmov mr0, r6
003a40  ea201230  vor.u.mh vr1{mr0}, r4, vr1
003a44  2b420000  lui r4, 4
003a48  7e0002e0  vmmov mr0, r4
003a4c  1f020ff6  addli r4, r30, -1280
003a50  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
003a54  b3910218  bfloat2float.rn r3, r5
003a58  ab820000  lui r5, 8
003a5c  0b12c211  add.s r4, r4, r28
003a60  670fcfeb  storeli.w r28, -2576(r30)
003a64  7e8002e0  vmmov mr0, r5
003a68  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
003a6c  eb310200  load.hu r3, 0(r4)
003a70  eb322200  load.hu r5, 2(r4)
003a74  6b334200  load.hu r6, 4(r4)
003a78  eb336200  load.hu r7, 6(r4)
003a7c  6b348200  load.hu r8, 8(r4)
003a80  eb34a200  load.hu r9, 10(r4)
003a84  6b35c200  load.hu r10, 12(r4)
003a88  eb35e200  load.hu r11, 14(r4)
003a8c  6b360201  load.hu r12, 16(r4)
003a90  eb362201  load.hu r13, 18(r4)
003a94  6b374201  load.hu r14, 20(r4)
003a98  eb376201  load.hu r15, 22(r4)
003a9c  6b388201  load.hu r16, 24(r4)
003aa0  eb38a201  load.hu r17, 26(r4)
003aa4  6b39c201  load.hu r18, 28(r4)
003aa8  b3990118  bfloat2float.rn r19, r3
003aac  eb31e201  load.hu r3, 30(r4)
003ab0  33920218  bfloat2float.rn r4, r5
003ab4  9f420000  addli r5, zero, 4
003ab8  6aa12934  vor.u.mh vr2{mr2}, r19, vr2
003abc  7e8102e0  vmmov mr2, r5
003ac0  9f021000  addli r5, zero, 8
003ac4  b3910118  bfloat2float.rn r3, r3
003ac8  6a212236  vor.u.mh vr2{mr3}, r4, vr2
003acc  33120318  bfloat2float.rn r4, r6
003ad0  1f030ff8  addli r6, r30, -1024
003ad4  0b131310  add.s r6, r6, r1
003ad8  6a212234  vor.u.mh vr2{mr2}, r4, vr2
003adc  33920318  bfloat2float.rn r4, r7
003ae0  7e8102e0  vmmov mr2, r5
003ae4  9f022000  addli r5, zero, 16
003ae8  ab430000  lui r7, 4
003aec  6a212234  vor.u.mh vr2{mr2}, r4, vr2
003af0  33120418  bfloat2float.rn r4, r8
003af4  7e8102e0  vmmov mr2, r5
003af8  9f024000  addli r5, zero, 32
003afc  6a212234  vor.u.mh vr2{mr2}, r4, vr2
003b00  33920418  bfloat2float.rn r4, r9
003b04  7e8102e0  vmmov mr2, r5
003b08  9f028000  addli r5, zero, 64
003b0c  6a212234  vor.u.mh vr2{mr2}, r4, vr2
003b10  33120518  bfloat2float.rn r4, r10
003b14  7e8102e0  vmmov mr2, r5
003b18  9f020001  addli r5, zero, 128
003b1c  6a212234  vor.u.mh vr2{mr2}, r4, vr2
003b20  33920518  bfloat2float.rn r4, r11
003b24  7e8102e0  vmmov mr2, r5
003b28  9f020002  addli r5, zero, 256
003b2c  6a212234  vor.u.mh vr2{mr2}, r4, vr2
003b30  33120618  bfloat2float.rn r4, r12
003b34  7e8102e0  vmmov mr2, r5
003b38  9f020004  addli r5, zero, 512
003b3c  6a212234  vor.u.mh vr2{mr2}, r4, vr2
003b40  33920618  bfloat2float.rn r4, r13
003b44  7e8102e0  vmmov mr2, r5
003b48  9f020008  addli r5, zero, 1024
003b4c  6a212234  vor.u.mh vr2{mr2}, r4, vr2
003b50  33120718  bfloat2float.rn r4, r14
003b54  7e8102e0  vmmov mr2, r5
003b58  9f020010  addli r5, zero, 2048
003b5c  6a212234  vor.u.mh vr2{mr2}, r4, vr2
003b60  33920718  bfloat2float.rn r4, r15
003b64  7e8102e0  vmmov mr2, r5
003b68  9f020020  addli r5, zero, 4096
003b6c  6a212234  vor.u.mh vr2{mr2}, r4, vr2
003b70  33120818  bfloat2float.rn r4, r16
003b74  7e8102e0  vmmov mr2, r5
003b78  9f020040  addli r5, zero, 8192
003b7c  6a212234  vor.u.mh vr2{mr2}, r4, vr2
003b80  33920818  bfloat2float.rn r4, r17
003b84  7e8102e0  vmmov mr2, r5
003b88  b3120918  bfloat2float.rn r5, r18
003b8c  6a212234  vor.u.mh vr2{mr2}, r4, vr2
003b90  6342cfe9  loadli.w r4,  -2844(r30)
003b94  7e8103e0  vmmov mr2, r7
003b98  9f030ffa  addli r7, r30, -768
003b9c  8b931310  add.s r7, r7, r1
003ba0  0b121210  add.s r4, r4, r1
003ba4  6aa12234  vor.u.mh vr2{mr2}, r5, vr2
003ba8  e302cfe9  loadli.w r5,  -2848(r30)
003bac  8b921210  add.s r5, r5, r1
003bb0  6aa12130  vor.u.mh vr2{mr0}, r3, vr2
003bb4  eb3142fe  load.hu r3, -28(r4)
003bb8  6b370300  load.hu r14, 0(r6)
003bbc  6b3882fe  load.hu r16, -24(r4)
003bc0  6b3ba2fe  load.hu r22, -22(r4)
003bc4  eb3bc2fe  load.hu r23, -20(r4)
003bc8  6b3ce2fe  load.hu r24, -18(r4)
003bcc  6b3d02ff  load.hu r26, -16(r4)
003bd0  6b3e22ff  load.hu r28, -14(r4)
003bd4  eb3d62ff  load.hu r27, -10(r4)
003bd8  e7463fea  storeli.w r3, -2708(r30)
003bdc  eb3162fe  load.hu r3, -26(r4)
003be0  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
003be4  e7063fea  storeli.w r3, -2712(r30)
003be8  eb3142ff  load.hu r3, -12(r4)
003bec  67463fea  storeli.w r3, -2716(r30)
003bf0  eb3182ff  load.hu r3, -8(r4)
003bf4  67063fea  storeli.w r3, -2720(r30)
003bf8  eb31a2ff  load.hu r3, -6(r4)
003bfc  e7453fea  storeli.w r3, -2724(r30)
003c00  eb31c2ff  load.hu r3, -4(r4)
003c04  e7053fea  storeli.w r3, -2728(r30)
003c08  eb31e2ff  load.hu r3, -2(r4)
003c0c  67453fea  storeli.w r3, -2732(r30)
003c10  eb310200  load.hu r3, 0(r4)
003c14  2b02807f  lui r4, 522240
003c18  67053fea  storeli.w r3, -2736(r30)
003c1c  ebb10300  load.hu r3, 0(r7)
003c20  e7443fea  storeli.w r3, -2740(r30)
003c24  ebb142fe  load.hu r3, -28(r5)
003c28  e7043fea  storeli.w r3, -2744(r30)
003c2c  ebb162fe  load.hu r3, -26(r5)
003c30  67443fea  storeli.w r3, -2748(r30)
003c34  ebb182fe  load.hu r3, -24(r5)
003c38  67043fea  storeli.w r3, -2752(r30)
003c3c  ebb1a2fe  load.hu r3, -22(r5)
003c40  e7433fea  storeli.w r3, -2756(r30)
003c44  ebb1c2fe  load.hu r3, -20(r5)
003c48  e7033fea  storeli.w r3, -2760(r30)
003c4c  ebb1e2fe  load.hu r3, -18(r5)
003c50  67433fea  storeli.w r3, -2764(r30)
003c54  ebb102ff  load.hu r3, -16(r5)
003c58  67033fea  storeli.w r3, -2768(r30)
003c5c  ebb122ff  load.hu r3, -14(r5)
003c60  e7423fea  storeli.w r3, -2772(r30)
003c64  ebb142ff  load.hu r3, -12(r5)
003c68  e7023fea  storeli.w r3, -2776(r30)
003c6c  ebb162ff  load.hu r3, -10(r5)
003c70  67023fea  storeli.w r3, -2784(r30)
003c74  ebb182ff  load.hu r3, -8(r5)
003c78  67083fea  storeli.w r3, -2688(r30)
003c7c  ebb1a2ff  load.hu r3, -6(r5)
003c80  e7473fea  storeli.w r3, -2692(r30)
003c84  ebb1c2ff  load.hu r3, -4(r5)
003c88  e7073fea  storeli.w r3, -2696(r30)
003c8c  ebb1e2ff  load.hu r3, -2(r5)
003c90  67473fea  storeli.w r3, -2700(r30)
003c94  ebb10200  load.hu r3, 0(r5)
003c98  67073fea  storeli.w r3, -2704(r30)
003c9c  46100fc2  vstore_mask16.mz vr0{mr1}, 1536(r30)
003ca0  00a00000  mfence { lm }
003ca4  63050ffc  loadli.w r10,  -512(r30)
003ca8  e341ffeb  loadli.w r3,  -2564(r30)
003cac  e3450ffc  loadli.w r11,  -508(r30)
003cb0  e3041ffc  loadli.w r9,  -504(r30)
003cb4  63441ffc  loadli.w r8,  -500(r30)
003cb8  e3032ffc  loadli.w r7,  -496(r30)
003cbc  e3422ffc  loadli.w r5,  -492(r30)
003cc0  97013500  and r3, r10, r3
003cc4  13063204  setlt.u r12, r4, r3
003cc8  63023ffc  loadli.w r4,  -488(r30)
003ccc  63433ffc  loadli.w r6,  -484(r30)
003cd0  e3014ffc  loadli.w r3,  -480(r30)
003cd4  63494ffc  loadli.w r18,  -476(r30)
003cd8  e3085ffc  loadli.w r17,  -472(r30)
003cdc  634a5ffc  loadli.w r20,  -468(r30)
003ce0  e3096ffc  loadli.w r19,  -464(r30)
003ce4  e3476ffc  loadli.w r15,  -460(r30)
003ce8  e3067ffc  loadli.w r13,  -456(r30)
003cec  e34a7ffc  loadli.w r21,  -452(r30)
003cf0  3b700600  bneq r12, zero, 28
003cf4  1b460501  srli r12, r10, 16
003cf8  1b061600  andi r12, r12, 1
003cfc  0b15c510  add.s r10, r10, r12
003d00  6306ffeb  loadli.w r12,  -2568(r30)
003d04  0b15c510  add.s r10, r10, r12
003d08  db010000  j 12
003d0c  2b064000  lui r12, 1024
003d10  1715c500  or r10, r10, r12
003d14  6742afea  storeli.w r10, -2780(r30)
003d18  6345ffeb  loadli.w r10,  -2564(r30)
003d1c  2b06807f  lui r12, 522240
003d20  1785a500  and r10, r11, r10
003d24  1305a604  setlt.u r10, r12, r10
003d28  3b700500  bneq r10, zero, 28
003d2c  1bc50501  srli r10, r11, 16
003d30  1b051500  andi r10, r10, 1
003d34  0b95a510  add.s r10, r11, r10
003d38  e305ffeb  loadli.w r11,  -2568(r30)
003d3c  0b15b510  add.s r10, r10, r11
003d40  db010000  j 12
003d44  2b054000  lui r10, 1024
003d48  1795a500  or r10, r11, r10
003d4c  e701afea  storeli.w r10, -2792(r30)
003d50  6345ffeb  loadli.w r10,  -2564(r30)
003d54  ab05807f  lui r11, 522240
003d58  1785a400  and r10, r9, r10
003d5c  1385a504  setlt.u r10, r11, r10
003d60  3b700500  bneq r10, zero, 28
003d64  1bc50401  srli r10, r9, 16
003d68  1b051500  andi r10, r10, 1
003d6c  8b94a410  add.s r9, r9, r10
003d70  6305ffeb  loadli.w r10,  -2568(r30)
003d74  8b94a410  add.s r9, r9, r10
003d78  db010000  j 12
003d7c  2b054000  lui r10, 1024
003d80  9794a400  or r9, r9, r10
003d84  67019fea  storeli.w r9, -2800(r30)
003d88  e344ffeb  loadli.w r9,  -2564(r30)
003d8c  2b05807f  lui r10, 522240
003d90  97049400  and r9, r8, r9
003d94  93049504  setlt.u r9, r10, r9
003d98  3bf00400  bneq r9, zero, 28
003d9c  9b440401  srli r9, r8, 16
003da0  9b841400  andi r9, r9, 1
003da4  0b149410  add.s r8, r8, r9
003da8  e304ffeb  loadli.w r9,  -2568(r30)
003dac  0b149410  add.s r8, r8, r9
003db0  db010000  j 12
003db4  ab044000  lui r9, 1024
003db8  17149400  or r8, r8, r9
003dbc  e7008fea  storeli.w r8, -2808(r30)
003dc0  6344ffeb  loadli.w r8,  -2564(r30)
003dc4  17848300  and r8, r7, r8
003dc8  13048504  setlt.u r8, r10, r8
003dcc  3b700400  bneq r8, zero, 28
003dd0  1bc40301  srli r8, r7, 16
003dd4  1b041400  andi r8, r8, 1
003dd8  8b938310  add.s r7, r7, r8
003ddc  6304ffeb  loadli.w r8,  -2568(r30)
003de0  8b938310  add.s r7, r7, r8
003de4  db010000  j 12
003de8  2b044000  lui r8, 1024
003dec  97938300  or r7, r7, r8
003df0  e7417fea  storeli.w r7, -2788(r30)
003df4  e343ffeb  loadli.w r7,  -2564(r30)
003df8  97837200  and r7, r5, r7
003dfc  93037504  setlt.u r7, r10, r7
003e00  3bf00300  bneq r7, zero, 28
003e04  9bc30201  srli r7, r5, 16
003e08  9b831300  andi r7, r7, 1
003e0c  8b927210  add.s r5, r5, r7
003e10  e303ffeb  loadli.w r7,  -2568(r30)
003e14  8b927210  add.s r5, r5, r7
003e18  db010000  j 12
003e1c  ab034000  lui r7, 1024
003e20  97927200  or r5, r5, r7
003e24  67415fea  storeli.w r5, -2796(r30)
003e28  e342ffeb  loadli.w r5,  -2564(r30)
003e2c  97025200  and r5, r4, r5
003e30  93025504  setlt.u r5, r10, r5
003e34  3bf00200  bneq r5, zero, 28
003e38  9b420201  srli r5, r4, 16
003e3c  9b821200  andi r5, r5, 1
003e40  0b125210  add.s r4, r4, r5
003e44  e302ffeb  loadli.w r5,  -2568(r30)
003e48  0b125210  add.s r4, r4, r5
003e4c  db010000  j 12
003e50  ab024000  lui r5, 1024
003e54  17125200  or r4, r4, r5
003e58  e7404fea  storeli.w r4, -2804(r30)
003e5c  6342ffeb  loadli.w r4,  -2564(r30)
003e60  17024300  and r4, r6, r4
003e64  13024504  setlt.u r4, r10, r4
003e68  3b700200  bneq r4, zero, 28
003e6c  1b420301  srli r4, r6, 16
003e70  e302ffeb  loadli.w r5,  -2568(r30)
003e74  1b021200  andi r4, r4, 1
003e78  0b124310  add.s r4, r6, r4
003e7c  0b125210  add.s r4, r4, r5
003e80  5b020000  j 16
003e84  2b024000  lui r4, 1024
003e88  e302ffeb  loadli.w r5,  -2568(r30)
003e8c  17124300  or r4, r6, r4
003e90  67404fea  storeli.w r4, -2812(r30)
003e94  6342ffeb  loadli.w r4,  -2564(r30)
003e98  17824100  and r4, r3, r4
003e9c  13024504  setlt.u r4, r10, r4
003ea0  3b600200  bneq r4, zero, 24
003ea4  1bc20101  srli r4, r3, 16
003ea8  1b021200  andi r4, r4, 1
003eac  8b914110  add.s r3, r3, r4
003eb0  8b915110  add.s r3, r3, r5
003eb4  db010000  j 12
003eb8  2b024000  lui r4, 1024
003ebc  97914100  or r3, r3, r4
003ec0  67003fea  storeli.w r3, -2816(r30)
003ec4  e341ffeb  loadli.w r3,  -2564(r30)
003ec8  97013900  and r3, r18, r3
003ecc  93013504  setlt.u r3, r10, r3
003ed0  3be00100  bneq r3, zero, 24
003ed4  9b410901  srli r3, r18, 16
003ed8  9b811100  andi r3, r3, 1
003edc  8b113910  add.s r3, r18, r3
003ee0  8b915110  add.s r3, r3, r5
003ee4  db010000  j 12
003ee8  ab014000  lui r3, 1024
003eec  97113900  or r3, r18, r3
003ef0  e70f3fe8  storeli.w r3, -2824(r30)
003ef4  e341ffeb  loadli.w r3,  -2564(r30)
003ef8  97813800  and r3, r17, r3
003efc  93013504  setlt.u r3, r10, r3
003f00  3be00100  bneq r3, zero, 24
003f04  9bc10801  srli r3, r17, 16
003f08  9b811100  andi r3, r3, 1
003f0c  8b913810  add.s r3, r17, r3
003f10  8b915110  add.s r3, r3, r5
003f14  db010000  j 12
003f18  ab014000  lui r3, 1024
003f1c  97913800  or r3, r17, r3
003f20  e74f3fe8  storeli.w r3, -2820(r30)
003f24  e341ffeb  loadli.w r3,  -2564(r30)
003f28  97013a00  and r3, r20, r3
003f2c  93013504  setlt.u r3, r10, r3
003f30  3be00100  bneq r3, zero, 24
003f34  9b410a01  srli r3, r20, 16
003f38  9b811100  andi r3, r3, 1
003f3c  8b113a10  add.s r3, r20, r3
003f40  8b915110  add.s r3, r3, r5
003f44  db010000  j 12
003f48  ab014000  lui r3, 1024
003f4c  97113a00  or r3, r20, r3
003f50  674f3fe8  storeli.w r3, -2828(r30)
003f54  e341ffeb  loadli.w r3,  -2564(r30)
003f58  97813900  and r3, r19, r3
003f5c  93013504  setlt.u r3, r10, r3
003f60  3be00100  bneq r3, zero, 24
003f64  9bc10901  srli r3, r19, 16
003f68  9b811100  andi r3, r3, 1
003f6c  8b913910  add.s r3, r19, r3
003f70  8b915110  add.s r3, r3, r5
003f74  db010000  j 12
003f78  ab014000  lui r3, 1024
003f7c  97913900  or r3, r19, r3
003f80  670f3fe8  storeli.w r3, -2832(r30)
003f84  e341ffeb  loadli.w r3,  -2564(r30)
003f88  97813700  and r3, r15, r3
003f8c  93013504  setlt.u r3, r10, r3
003f90  3be00100  bneq r3, zero, 24
003f94  9bc10701  srli r3, r15, 16
003f98  9b811100  andi r3, r3, 1
003f9c  8b913710  add.s r3, r15, r3
003fa0  8b915110  add.s r3, r3, r5
003fa4  db010000  j 12
003fa8  ab014000  lui r3, 1024
003fac  97913700  or r3, r15, r3
003fb0  6342ffeb  loadli.w r4,  -2564(r30)
003fb4  e74e3fe8  storeli.w r3, -2836(r30)
003fb8  97814600  and r3, r13, r4
003fbc  17864a00  and r12, r21, r4
003fc0  93013504  setlt.u r3, r10, r3
003fc4  3be00100  bneq r3, zero, 24
003fc8  9bc10601  srli r3, r13, 16
003fcc  9b811100  andi r3, r3, 1
003fd0  8b913610  add.s r3, r13, r3
003fd4  8b915110  add.s r3, r3, r5
003fd8  db010000  j 12
003fdc  ab014000  lui r3, 1024
003fe0  97913600  or r3, r13, r3
003fe4  33140718  bfloat2float.rn r8, r14
003fe8  33970d18  bfloat2float.rn r14, r27
003fec  e70e3fe8  storeli.w r3, -2840(r30)
003ff0  e341dfea  loadli.w r3,  -2708(r30)
003ff4  e343cfea  loadli.w r7,  -2716(r30)
003ff8  b3150818  bfloat2float.rn r11, r16
003ffc  33120b18  bfloat2float.rn r4, r22
004000  b3920b18  bfloat2float.rn r5, r23
004004  b3160c18  bfloat2float.rn r13, r24
004008  33130e18  bfloat2float.rn r6, r28
00400c  e746efea  storeli.w r14, -2708(r30)
004010  6307cfea  loadli.w r14,  -2720(r30)
004014  b3940118  bfloat2float.rn r9, r3
004018  e301dfea  loadli.w r3,  -2712(r30)
00401c  b3930318  bfloat2float.rn r7, r7
004020  33170718  bfloat2float.rn r14, r14
004024  33950118  bfloat2float.rn r10, r3
004028  b3110d18  bfloat2float.rn r3, r26
00402c  e706efea  storeli.w r14, -2712(r30)
004030  6347bfea  loadli.w r14,  -2724(r30)
004034  33170718  bfloat2float.rn r14, r14
004038  6746efea  storeli.w r14, -2716(r30)
00403c  6307bfea  loadli.w r14,  -2728(r30)
004040  33170718  bfloat2float.rn r14, r14
004044  6706efea  storeli.w r14, -2720(r30)
004048  6347afea  loadli.w r14,  -2732(r30)
00404c  33170718  bfloat2float.rn r14, r14
004050  e745efea  storeli.w r14, -2724(r30)
004054  6307afea  loadli.w r14,  -2736(r30)
004058  33170718  bfloat2float.rn r14, r14
00405c  e705efea  storeli.w r14, -2728(r30)
004060  63479fea  loadli.w r14,  -2740(r30)
004064  33170718  bfloat2float.rn r14, r14
004068  6745efea  storeli.w r14, -2732(r30)
00406c  63079fea  loadli.w r14,  -2744(r30)
004070  33170718  bfloat2float.rn r14, r14
004074  6705efea  storeli.w r14, -2736(r30)
004078  63478fea  loadli.w r14,  -2748(r30)
00407c  33170718  bfloat2float.rn r14, r14
004080  e744efea  storeli.w r14, -2740(r30)
004084  63078fea  loadli.w r14,  -2752(r30)
004088  33170718  bfloat2float.rn r14, r14
00408c  e704efea  storeli.w r14, -2744(r30)
004090  63477fea  loadli.w r14,  -2756(r30)
004094  33170718  bfloat2float.rn r14, r14
004098  6744efea  storeli.w r14, -2748(r30)
00409c  63077fea  loadli.w r14,  -2760(r30)
0040a0  33170718  bfloat2float.rn r14, r14
0040a4  6704efea  storeli.w r14, -2752(r30)
0040a8  63476fea  loadli.w r14,  -2764(r30)
0040ac  33170718  bfloat2float.rn r14, r14
0040b0  e743efea  storeli.w r14, -2756(r30)
0040b4  63076fea  loadli.w r14,  -2768(r30)
0040b8  33170718  bfloat2float.rn r14, r14
0040bc  e703efea  storeli.w r14, -2760(r30)
0040c0  63475fea  loadli.w r14,  -2772(r30)
0040c4  33170718  bfloat2float.rn r14, r14
0040c8  6743efea  storeli.w r14, -2764(r30)
0040cc  63075fea  loadli.w r14,  -2776(r30)
0040d0  33170718  bfloat2float.rn r14, r14
0040d4  6703efea  storeli.w r14, -2768(r30)
0040d8  2b07807f  lui r14, 522240
0040dc  1306c704  setlt.u r12, r14, r12
0040e0  63074fea  loadli.w r14,  -2784(r30)
0040e4  b3180718  bfloat2float.rn r17, r14
0040e8  63070feb  loadli.w r14,  -2688(r30)
0040ec  33190718  bfloat2float.rn r18, r14
0040f0  6347ffea  loadli.w r14,  -2692(r30)
0040f4  331a0718  bfloat2float.rn r20, r14
0040f8  6307ffea  loadli.w r14,  -2696(r30)
0040fc  b3190718  bfloat2float.rn r19, r14
004100  6347efea  loadli.w r14,  -2700(r30)
004104  33180718  bfloat2float.rn r16, r14
004108  6307efea  loadli.w r14,  -2704(r30)
00410c  b3170718  bfloat2float.rn r15, r14
004110  374606fa  beq r12, zero, -2672
004114  2b064000  lui r12, 1024
004118  1796ca00  or r12, r21, r12
00411c  5bb3feff  j -2664
004120  9f0e0fe1  addli sp, r30, -3968
004124  9f8e0e1f  addli sp, sp, 3968
004128  00a00300  mfence { lm, sm, gm }
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
00429c  00100000  exit
0042a0  00100000  exit
0042a4  00100000  exit
0042a8  00100000  exit
0042ac  00100000  exit
0042b0  00100000  exit
0042b4  00100000  exit
0042b8  00100000  exit
0042bc  00100000  exit
0042c0  00100000  exit
0042c4  00100000  exit
0042c8  00100000  exit
0042cc  00100000  exit
0042d0  00100000  exit
0042d4  00100000  exit
0042d8  00100000  exit
0042dc  00100000  exit
0042e0  00100000  exit
0042e4  00100000  exit
0042e8  00100000  exit
0042ec  00100000  exit
0042f0  00100000  exit
0042f4  00100000  exit
0042f8  00100000  exit
0042fc  00100000  exit
004300  00100000  exit
004304  00100000  exit
004308  00100000  exit
00430c  00100000  exit
004310  00100000  exit
004314  00100000  exit
004318  00100000  exit
00431c  00100000  exit
004320  00100000  exit
004324  00100000  exit
004328  00100000  exit
00432c  00100000  exit
004330  00100000  exit
004334  00100000  exit
004338  00100000  exit
00433c  00100000  exit
004340  00100000  exit
004344  00100000  exit
004348  00100000  exit
00434c  00100000  exit
004350  00100000  exit
004354  00100000  exit
004358  00100000  exit
00435c  00100000  exit
004360  00100000  exit
004364  00100000  exit
004368  00100000  exit
00436c  00100000  exit
