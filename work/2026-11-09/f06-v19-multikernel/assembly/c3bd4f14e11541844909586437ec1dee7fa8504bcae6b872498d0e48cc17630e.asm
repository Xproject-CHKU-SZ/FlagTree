; SHA-256 c3bd4f14e11541844909586437ec1dee7fa8504bcae6b872498d0e48cc17630e
; P800 Cluster · XTDK LLVM 19 · 4225 / 4225 words decoded
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
0000dc  9f8e0ee0  addli sp, sp, -4096
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f8e1f  addli r30, sp, 4032
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
00011c  e70a9fe4  storeli.w r9, -3416(r30)
000120  73e00400  stores.w zero, 0(r9)
000124  00a00300  mfence { lm, sm, gm }
000128  80a10204  csr_set csr3, r5
00012c  00d00100  sync_group
000130  e74a8fe4  storeli.w r8, -3412(r30)
000134  73600400  stores.w zero, 0(r8)
000138  00a00300  mfence { lm, sm, gm }
00013c  674d5fe8  storeli.w r5, -2860(r30)
000140  80a10204  csr_set csr3, r5
000144  00d00100  sync_group
000148  674a4fe4  storeli.w r4, -3420(r30)
00014c  cb29c21e  ble.s r4, r12, 15976
000150  1f021000  addli r4, zero, 8
000154  1f170000  addli r14, zero, 1
000158  1f0e0ff4  addli r28, r30, -1536
00015c  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
000160  0b934030  div.s r6, r1, r4
000164  6b528f01  load.d r[5:6], 24(r30)
000168  1b343300  slli r8, r6, 3
00016c  670a6fe4  storeli.w r6, -3424(r30)
000170  6b530f01  load.d r[7:8], 16(r30)
000174  0b958018  sub.s r10, r1, r8
000178  9b807000  andi r1, r1, 7
00017c  6b548f00  load.d r[9:10], 8(r30)
000180  670d1fe8  storeli.w r1, -2864(r30)
000184  ab700000  lui r1, 7
000188  9b367500  slli r13, r10, 7
00018c  00d50002  load_param_i r10, 1
000190  9b90f0ff  ori r1, r1, 4095
000194  e709afe4  storeli.w r10, -3432(r30)
000198  1b951600  ori r10, r13, 1
00019c  9b97e600  ori r15, r13, 14
0001a0  e749dfe4  storeli.w r13, -3428(r30)
0001a4  e70f1fea  storeli.w r1, -2568(r30)
0001a8  ab10833a  lui r1, 239665
0001ac  6749afe4  storeli.w r10, -3436(r30)
0001b0  1b952600  ori r10, r13, 2
0001b4  6706ffe4  storeli.w r15, -3488(r30)
0001b8  9b90f026  ori r1, r1, 623
0001bc  6709afe4  storeli.w r10, -3440(r30)
0001c0  1b953600  ori r10, r13, 3
0001c4  e7031fe4  storeli.w r1, -3528(r30)
0001c8  9b901601  ori r1, r13, 17
0001cc  e748afe4  storeli.w r10, -3444(r30)
0001d0  1b954600  ori r10, r13, 4
0001d4  67431fe4  storeli.w r1, -3532(r30)
0001d8  9b902601  ori r1, r13, 18
0001dc  e708afe4  storeli.w r10, -3448(r30)
0001e0  1b955600  ori r10, r13, 5
0001e4  67031fe4  storeli.w r1, -3536(r30)
0001e8  9b903601  ori r1, r13, 19
0001ec  6748afe4  storeli.w r10, -3452(r30)
0001f0  1b956600  ori r10, r13, 6
0001f4  e7421fe4  storeli.w r1, -3540(r30)
0001f8  9b904601  ori r1, r13, 20
0001fc  6708afe4  storeli.w r10, -3456(r30)
000200  1b957600  ori r10, r13, 7
000204  e7021fe4  storeli.w r1, -3544(r30)
000208  9b905601  ori r1, r13, 21
00020c  e747afe4  storeli.w r10, -3460(r30)
000210  1b958600  ori r10, r13, 8
000214  67421fe4  storeli.w r1, -3548(r30)
000218  9b906601  ori r1, r13, 22
00021c  e707afe4  storeli.w r10, -3464(r30)
000220  1b959600  ori r10, r13, 9
000224  67021fe4  storeli.w r1, -3552(r30)
000228  9b907601  ori r1, r13, 23
00022c  6747afe4  storeli.w r10, -3468(r30)
000230  1b95a600  ori r10, r13, 10
000234  e7411fe4  storeli.w r1, -3556(r30)
000238  9b908601  ori r1, r13, 24
00023c  6707afe4  storeli.w r10, -3472(r30)
000240  1b95b600  ori r10, r13, 11
000244  e7011fe4  storeli.w r1, -3560(r30)
000248  9b909601  ori r1, r13, 25
00024c  e746afe4  storeli.w r10, -3476(r30)
000250  1b95c600  ori r10, r13, 12
000254  67411fe4  storeli.w r1, -3564(r30)
000258  9b90a601  ori r1, r13, 26
00025c  e706afe4  storeli.w r10, -3480(r30)
000260  1b95d600  ori r10, r13, 13
000264  67011fe4  storeli.w r1, -3568(r30)
000268  9b90b601  ori r1, r13, 27
00026c  6746afe4  storeli.w r10, -3484(r30)
000270  33950628  sext_int2long r[11:12], r13
000274  e7401fe4  storeli.w r1, -3572(r30)
000278  9b90c601  ori r1, r13, 28
00027c  1735e502  sll.d r[11:12], r[11:12], r14
000280  1b97f600  ori r14, r13, 15
000284  e7001fe4  storeli.w r1, -3576(r30)
000288  9b90d601  ori r1, r13, 29
00028c  e745efe4  storeli.w r14, -3492(r30)
000290  0b24a410  add.ul r[9:10], r[9:10], r[11:12]
000294  1f07afe4  addli r14, r30, -3504
000298  0b23a310  add.ul r[7:8], r[7:8], r[11:12]
00029c  0b22a210  add.ul r[5:6], r[5:6], r[11:12]
0002a0  67401fe4  storeli.w r1, -3580(r30)
0002a4  9b90e601  ori r1, r13, 30
0002a8  73308700  store.d r[9:10], 0(r14)
0002ac  1f049fe4  addli r8, r30, -3512
0002b0  67001fe4  storeli.w r1, -3584(r30)
0002b4  9b90f601  ori r1, r13, 31
0002b8  73306400  store.d r[7:8], 0(r8)
0002bc  9f038fe4  addli r7, r30, -3520
0002c0  2bf3ffff  lui r6, 1048575
0002c4  1f040002  addli r8, zero, 256
0002c8  e74f1fe2  storeli.w r1, -3588(r30)
0002cc  9b900602  ori r1, r13, 32
0002d0  73b04300  store.d r[5:6], 0(r7)
0002d4  1b1203fe  ori r4, r6, 4064
0002d8  9b920601  ori r5, r13, 16
0002dc  e70f1fe2  storeli.w r1, -3592(r30)
0002e0  9b901602  ori r1, r13, 33
0002e4  97814100  and r3, r3, r4
0002e8  e7435fe4  storeli.w r5, -3524(r30)
0002ec  674f1fe2  storeli.w r1, -3596(r30)
0002f0  9b902602  ori r1, r13, 34
0002f4  8b912110  add.s r3, r3, r2
0002f8  2bf1ff7f  lui r2, 524287
0002fc  670f1fe2  storeli.w r1, -3600(r30)
000300  9b903602  ori r1, r13, 35
000304  1b1af1ff  ori r20, r2, 4095
000308  674b3fe4  storeli.w r3, -3404(r30)
00030c  e74e1fe2  storeli.w r1, -3604(r30)
000310  9b904602  ori r1, r13, 36
000314  e74f4feb  storeli.w r20, -2564(r30)
000318  e70e1fe2  storeli.w r1, -3608(r30)
00031c  9b905602  ori r1, r13, 37
000320  674e1fe2  storeli.w r1, -3612(r30)
000324  9b906602  ori r1, r13, 38
000328  670e1fe2  storeli.w r1, -3616(r30)
00032c  9b907602  ori r1, r13, 39
000330  e74d1fe2  storeli.w r1, -3620(r30)
000334  9b908602  ori r1, r13, 40
000338  e70d1fe2  storeli.w r1, -3624(r30)
00033c  9b909602  ori r1, r13, 41
000340  674d1fe2  storeli.w r1, -3628(r30)
000344  9b90a602  ori r1, r13, 42
000348  670d1fe2  storeli.w r1, -3632(r30)
00034c  9b90b602  ori r1, r13, 43
000350  e74c1fe2  storeli.w r1, -3636(r30)
000354  9b90c602  ori r1, r13, 44
000358  e70c1fe2  storeli.w r1, -3640(r30)
00035c  9b90d602  ori r1, r13, 45
000360  674c1fe2  storeli.w r1, -3644(r30)
000364  9b90e602  ori r1, r13, 46
000368  670c1fe2  storeli.w r1, -3648(r30)
00036c  9b90f602  ori r1, r13, 47
000370  e74b1fe2  storeli.w r1, -3652(r30)
000374  9b900603  ori r1, r13, 48
000378  e70b1fe2  storeli.w r1, -3656(r30)
00037c  9b901603  ori r1, r13, 49
000380  674b1fe2  storeli.w r1, -3660(r30)
000384  9b902603  ori r1, r13, 50
000388  670b1fe2  storeli.w r1, -3664(r30)
00038c  9b903603  ori r1, r13, 51
000390  e74a1fe2  storeli.w r1, -3668(r30)
000394  9b904603  ori r1, r13, 52
000398  e70a1fe2  storeli.w r1, -3672(r30)
00039c  9b905603  ori r1, r13, 53
0003a0  674a1fe2  storeli.w r1, -3676(r30)
0003a4  9b906603  ori r1, r13, 54
0003a8  670a1fe2  storeli.w r1, -3680(r30)
0003ac  9b907603  ori r1, r13, 55
0003b0  e7491fe2  storeli.w r1, -3684(r30)
0003b4  9b908603  ori r1, r13, 56
0003b8  e7091fe2  storeli.w r1, -3688(r30)
0003bc  9b909603  ori r1, r13, 57
0003c0  67491fe2  storeli.w r1, -3692(r30)
0003c4  9b90a603  ori r1, r13, 58
0003c8  67091fe2  storeli.w r1, -3696(r30)
0003cc  9b90b603  ori r1, r13, 59
0003d0  e7481fe2  storeli.w r1, -3700(r30)
0003d4  9b90c603  ori r1, r13, 60
0003d8  e7081fe2  storeli.w r1, -3704(r30)
0003dc  9b90d603  ori r1, r13, 61
0003e0  67481fe2  storeli.w r1, -3708(r30)
0003e4  9b90e603  ori r1, r13, 62
0003e8  67081fe2  storeli.w r1, -3712(r30)
0003ec  9b90f603  ori r1, r13, 63
0003f0  e7471fe2  storeli.w r1, -3716(r30)
0003f4  9b900604  ori r1, r13, 64
0003f8  e7071fe2  storeli.w r1, -3720(r30)
0003fc  9b901604  ori r1, r13, 65
000400  67471fe2  storeli.w r1, -3724(r30)
000404  9b902604  ori r1, r13, 66
000408  67071fe2  storeli.w r1, -3728(r30)
00040c  9b903604  ori r1, r13, 67
000410  e7461fe2  storeli.w r1, -3732(r30)
000414  9b904604  ori r1, r13, 68
000418  e7061fe2  storeli.w r1, -3736(r30)
00041c  9b905604  ori r1, r13, 69
000420  67461fe2  storeli.w r1, -3740(r30)
000424  9b906604  ori r1, r13, 70
000428  67061fe2  storeli.w r1, -3744(r30)
00042c  9b907604  ori r1, r13, 71
000430  e7451fe2  storeli.w r1, -3748(r30)
000434  9b908604  ori r1, r13, 72
000438  e7051fe2  storeli.w r1, -3752(r30)
00043c  9b909604  ori r1, r13, 73
000440  67451fe2  storeli.w r1, -3756(r30)
000444  9b90a604  ori r1, r13, 74
000448  67051fe2  storeli.w r1, -3760(r30)
00044c  9b90b604  ori r1, r13, 75
000450  e7441fe2  storeli.w r1, -3764(r30)
000454  9b90c604  ori r1, r13, 76
000458  e7041fe2  storeli.w r1, -3768(r30)
00045c  9b90d604  ori r1, r13, 77
000460  67441fe2  storeli.w r1, -3772(r30)
000464  9b90e604  ori r1, r13, 78
000468  67041fe2  storeli.w r1, -3776(r30)
00046c  9b90f604  ori r1, r13, 79
000470  e7431fe2  storeli.w r1, -3780(r30)
000474  9b900605  ori r1, r13, 80
000478  e7031fe2  storeli.w r1, -3784(r30)
00047c  9b901605  ori r1, r13, 81
000480  67431fe2  storeli.w r1, -3788(r30)
000484  9b902605  ori r1, r13, 82
000488  67031fe2  storeli.w r1, -3792(r30)
00048c  9b903605  ori r1, r13, 83
000490  e7421fe2  storeli.w r1, -3796(r30)
000494  9b904605  ori r1, r13, 84
000498  e7021fe2  storeli.w r1, -3800(r30)
00049c  9b905605  ori r1, r13, 85
0004a0  67421fe2  storeli.w r1, -3804(r30)
0004a4  9b906605  ori r1, r13, 86
0004a8  67021fe2  storeli.w r1, -3808(r30)
0004ac  9b907605  ori r1, r13, 87
0004b0  e7411fe2  storeli.w r1, -3812(r30)
0004b4  9b908605  ori r1, r13, 88
0004b8  e7011fe2  storeli.w r1, -3816(r30)
0004bc  9b909605  ori r1, r13, 89
0004c0  67411fe2  storeli.w r1, -3820(r30)
0004c4  9b90a605  ori r1, r13, 90
0004c8  67011fe2  storeli.w r1, -3824(r30)
0004cc  9b90b605  ori r1, r13, 91
0004d0  e7401fe2  storeli.w r1, -3828(r30)
0004d4  9b90c605  ori r1, r13, 92
0004d8  e7001fe2  storeli.w r1, -3832(r30)
0004dc  9b90d605  ori r1, r13, 93
0004e0  67401fe2  storeli.w r1, -3836(r30)
0004e4  9b90e605  ori r1, r13, 94
0004e8  67001fe2  storeli.w r1, -3840(r30)
0004ec  9b90f605  ori r1, r13, 95
0004f0  e74f1fe0  storeli.w r1, -3844(r30)
0004f4  9b900606  ori r1, r13, 96
0004f8  e70f1fe0  storeli.w r1, -3848(r30)
0004fc  9b901606  ori r1, r13, 97
000500  674f1fe0  storeli.w r1, -3852(r30)
000504  9b902606  ori r1, r13, 98
000508  670f1fe0  storeli.w r1, -3856(r30)
00050c  9b903606  ori r1, r13, 99
000510  e74e1fe0  storeli.w r1, -3860(r30)
000514  9b904606  ori r1, r13, 100
000518  e70e1fe0  storeli.w r1, -3864(r30)
00051c  9b905606  ori r1, r13, 101
000520  674e1fe0  storeli.w r1, -3868(r30)
000524  9b906606  ori r1, r13, 102
000528  670e1fe0  storeli.w r1, -3872(r30)
00052c  9b907606  ori r1, r13, 103
000530  e74d1fe0  storeli.w r1, -3876(r30)
000534  9b908606  ori r1, r13, 104
000538  e70d1fe0  storeli.w r1, -3880(r30)
00053c  9b909606  ori r1, r13, 105
000540  674d1fe0  storeli.w r1, -3884(r30)
000544  9b90a606  ori r1, r13, 106
000548  670d1fe0  storeli.w r1, -3888(r30)
00054c  9b90b606  ori r1, r13, 107
000550  e74c1fe0  storeli.w r1, -3892(r30)
000554  9b90c606  ori r1, r13, 108
000558  e70c1fe0  storeli.w r1, -3896(r30)
00055c  9b90d606  ori r1, r13, 109
000560  674c1fe0  storeli.w r1, -3900(r30)
000564  9b90e606  ori r1, r13, 110
000568  670c1fe0  storeli.w r1, -3904(r30)
00056c  9b90f606  ori r1, r13, 111
000570  e74b1fe0  storeli.w r1, -3908(r30)
000574  9b900607  ori r1, r13, 112
000578  e70b1fe0  storeli.w r1, -3912(r30)
00057c  9b901607  ori r1, r13, 113
000580  674b1fe0  storeli.w r1, -3916(r30)
000584  9b902607  ori r1, r13, 114
000588  670b1fe0  storeli.w r1, -3920(r30)
00058c  9b903607  ori r1, r13, 115
000590  e74a1fe0  storeli.w r1, -3924(r30)
000594  9b904607  ori r1, r13, 116
000598  e70a1fe0  storeli.w r1, -3928(r30)
00059c  9b905607  ori r1, r13, 117
0005a0  674a1fe0  storeli.w r1, -3932(r30)
0005a4  9b906607  ori r1, r13, 118
0005a8  670a1fe0  storeli.w r1, -3936(r30)
0005ac  9b907607  ori r1, r13, 119
0005b0  e7491fe0  storeli.w r1, -3940(r30)
0005b4  9b908607  ori r1, r13, 120
0005b8  e7091fe0  storeli.w r1, -3944(r30)
0005bc  9b909607  ori r1, r13, 121
0005c0  67491fe0  storeli.w r1, -3948(r30)
0005c4  9b90a607  ori r1, r13, 122
0005c8  67091fe0  storeli.w r1, -3952(r30)
0005cc  9b90b607  ori r1, r13, 123
0005d0  e7481fe0  storeli.w r1, -3956(r30)
0005d4  9b90c607  ori r1, r13, 124
0005d8  e7081fe0  storeli.w r1, -3960(r30)
0005dc  9b90d607  ori r1, r13, 125
0005e0  67481fe0  storeli.w r1, -3964(r30)
0005e4  9b90e607  ori r1, r13, 126
0005e8  67081fe0  storeli.w r1, -3968(r30)
0005ec  9b90f607  ori r1, r13, 127
0005f0  e7471fe0  storeli.w r1, -3972(r30)
0005f4  9f802140  addli r1, r3, 8208
0005f8  670b1fe4  storeli.w r1, -3408(r30)
0005fc  db130200  j 4252
000600  e302bfe5  loadli.w r5,  -3368(r30)
000604  9f050feb  addli r11, r30, -2688
000608  e300cfe5  loadli.w r1,  -3360(r30)
00060c  e341bfe5  loadli.w r3,  -3364(r30)
000610  eb580f02  load.d r[18:19], 32(r30)
000614  9f07efeb  addli r15, r30, -2576
000618  1f1e0000  addli r28, zero, 1
00061c  1fc80d00  addli r16, r27, 4
000620  1fedbd01  addli r26, r27, 222
000624  339b0228  sext_int2long r[23:24], r5
000628  e342afe5  loadli.w r5,  -3372(r30)
00062c  b3900028  sext_int2long r[2:3], r1
000630  b3910128  sext_int2long r[4:5], r3
000634  27890800  addli.d r[19:20], r[18:19], 0
000638  9f280000  addli r17, zero, 2
00063c  97b0c003  sll.d r[2:3], r[2:3], r28
000640  97b1c103  sll.d r[4:5], r[4:5], r28
000644  339c0228  sext_int2long r[25:26], r5
000648  e302afe5  loadli.w r5,  -3376(r30)
00064c  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000650  8b213910  add.ul r[4:5], r[19:20], r[4:5]
000654  b3960228  sext_int2long r[14:15], r5
000658  e3429fe5  loadli.w r5,  -3380(r30)
00065c  339a0228  sext_int2long r[21:22], r5
000660  e3029fe5  loadli.w r5,  -3384(r30)
000664  b3930228  sext_int2long r[8:9], r5
000668  e3428fe5  loadli.w r5,  -3388(r30)
00066c  b3940228  sext_int2long r[10:11], r5
000670  e3028fe5  loadli.w r5,  -3392(r30)
000674  b3920228  sext_int2long r[6:7], r5
000678  73b05500  store.d r[6:7], 0(r11)
00067c  e3057fe5  loadli.w r11,  -3400(r30)
000680  e3427fe5  loadli.w r5,  -3396(r30)
000684  b3950528  sext_int2long r[12:13], r11
000688  b3920228  sext_int2long r[6:7], r5
00068c  73b0b700  store.d r[12:13], 0(r15)
000690  ab0500f0  lui r11, 983040
000694  2b0600f0  lui r12, 983040
000698  9fa70d00  addli r15, r27, 2
00069c  9795b800  or r11, r17, r11
0006a0  1796c800  or r12, r17, r12
0006a4  ffb5f000  s_lm2gm r11, r15, 0(r[2:3])
0006a8  7fb60101  s_lm2gm r12, r16, 0(r[4:5])
0006ac  9731cc03  sll.d r[4:5], r[25:26], r28
0006b0  9730cb03  sll.d r[2:3], r[23:24], r28
0006b4  ab0500f0  lui r11, 983040
0006b8  2b0600f0  lui r12, 983040
0006bc  9fe70d00  addli r15, r27, 6
0006c0  1f881d00  addli r16, r27, 8
0006c4  ab0c00f0  lui r25, 983040
0006c8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
0006cc  9795b800  or r11, r17, r11
0006d0  8b213910  add.ul r[4:5], r[19:20], r[4:5]
0006d4  1796c800  or r12, r17, r12
0006d8  979c9801  or r25, r17, r25
0006dc  ffb5f000  s_lm2gm r11, r15, 0(r[2:3])
0006e0  97b0c603  sll.d r[2:3], r[14:15], r28
0006e4  7fb60101  s_lm2gm r12, r16, 0(r[4:5])
0006e8  9731ca03  sll.d r[4:5], r[21:22], r28
0006ec  ab0500f0  lui r11, 983040
0006f0  2b0600f0  lui r12, 983040
0006f4  9fa61d00  addli r13, r27, 10
0006f8  1fc71d00  addli r14, r27, 12
0006fc  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000700  9795b800  or r11, r17, r11
000704  8b213910  add.ul r[4:5], r[19:20], r[4:5]
000708  1796c800  or r12, r17, r12
00070c  ffb5d000  s_lm2gm r11, r13, 0(r[2:3])
000710  97b0c303  sll.d r[2:3], r[8:9], r28
000714  2b0400f0  lui r8, 983040
000718  7fb6e100  s_lm2gm r12, r14, 0(r[4:5])
00071c  97b1c403  sll.d r[4:5], r[10:11], r28
000720  ab0300f0  lui r7, 983040
000724  1f852d00  addli r10, r27, 16
000728  9fe41d00  addli r9, r27, 14
00072c  e345cfe8  loadli.w r11,  -2972(r30)
000730  e346dfe8  loadli.w r13,  -2964(r30)
000734  8b213910  add.ul r[4:5], r[19:20], r[4:5]
000738  17948800  or r8, r17, r8
00073c  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000740  97937800  or r7, r17, r7
000744  b3950528  sext_int2long r[12:13], r11
000748  b3960628  sext_int2long r[14:15], r13
00074c  7fb4a100  s_lm2gm r8, r10, 0(r[4:5])
000750  9f010feb  addli r3, r30, -2688
000754  ffb39000  s_lm2gm r7, r9, 0(r[2:3])
000758  1fc42d00  addli r8, r27, 20
00075c  9fa32d00  addli r7, r27, 18
000760  e344bfe8  loadli.w r9,  -2980(r30)
000764  ebd00100  load.d r[2:3], 0(r3)
000768  97b1c203  sll.d r[4:5], r[6:7], r28
00076c  2b0300f0  lui r6, 983040
000770  ab0200f0  lui r5, 983040
000774  b3940428  sext_int2long r[10:11], r9
000778  8b213910  add.ul r[4:5], r[19:20], r[4:5]
00077c  17936800  or r6, r17, r6
000780  97925800  or r5, r17, r5
000784  97b0c003  sll.d r[2:3], r[2:3], r28
000788  7fb38100  s_lm2gm r6, r8, 0(r[4:5])
00078c  9f01efeb  addli r3, r30, -2576
000790  1fe22d00  addli r4, r27, 22
000794  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000798  ffb27000  s_lm2gm r5, r7, 0(r[2:3])
00079c  ebd00100  load.d r[2:3], 0(r3)
0007a0  e342cfe5  loadli.w r5,  -3356(r30)
0007a4  ab0100f0  lui r3, 983040
0007a8  e343afe8  loadli.w r7,  -2988(r30)
0007ac  97913800  or r3, r17, r3
0007b0  97b0c003  sll.d r[2:3], r[2:3], r28
0007b4  b3920228  sext_int2long r[6:7], r5
0007b8  b3930328  sext_int2long r[8:9], r7
0007bc  8b201910  add.ul r[2:3], r[19:20], r[2:3]
0007c0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0007c4  97b0c203  sll.d r[2:3], r[6:7], r28
0007c8  e302dfe5  loadli.w r5,  -3352(r30)
0007cc  ab0100f0  lui r3, 983040
0007d0  1f823d00  addli r4, r27, 24
0007d4  8b201910  add.ul r[2:3], r[19:20], r[2:3]
0007d8  97913800  or r3, r17, r3
0007dc  b3920228  sext_int2long r[6:7], r5
0007e0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0007e4  ab0100f0  lui r3, 983040
0007e8  1fa23d00  addli r4, r27, 26
0007ec  97b0c203  sll.d r[2:3], r[6:7], r28
0007f0  e342dfe5  loadli.w r5,  -3348(r30)
0007f4  97913800  or r3, r17, r3
0007f8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
0007fc  b3920228  sext_int2long r[6:7], r5
000800  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000804  ab0100f0  lui r3, 983040
000808  1fc23d00  addli r4, r27, 28
00080c  97b0c203  sll.d r[2:3], r[6:7], r28
000810  e302efe5  loadli.w r5,  -3344(r30)
000814  97913800  or r3, r17, r3
000818  8b201910  add.ul r[2:3], r[19:20], r[2:3]
00081c  b3920228  sext_int2long r[6:7], r5
000820  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000824  ab0100f0  lui r3, 983040
000828  1fe23d00  addli r4, r27, 30
00082c  97b0c203  sll.d r[2:3], r[6:7], r28
000830  e342efe5  loadli.w r5,  -3340(r30)
000834  97913800  or r3, r17, r3
000838  8b201910  add.ul r[2:3], r[19:20], r[2:3]
00083c  b3920228  sext_int2long r[6:7], r5
000840  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000844  ab0100f0  lui r3, 983040
000848  1f824d00  addli r4, r27, 32
00084c  97b0c203  sll.d r[2:3], r[6:7], r28
000850  e302ffe5  loadli.w r5,  -3336(r30)
000854  97913800  or r3, r17, r3
000858  8b201910  add.ul r[2:3], r[19:20], r[2:3]
00085c  b3920228  sext_int2long r[6:7], r5
000860  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000864  ab0100f0  lui r3, 983040
000868  1fa24d00  addli r4, r27, 34
00086c  97b0c203  sll.d r[2:3], r[6:7], r28
000870  e342ffe5  loadli.w r5,  -3332(r30)
000874  97913800  or r3, r17, r3
000878  8b201910  add.ul r[2:3], r[19:20], r[2:3]
00087c  b3920228  sext_int2long r[6:7], r5
000880  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000884  ab0100f0  lui r3, 983040
000888  1fc24d00  addli r4, r27, 36
00088c  97b0c203  sll.d r[2:3], r[6:7], r28
000890  e3020fe6  loadli.w r5,  -3328(r30)
000894  97913800  or r3, r17, r3
000898  8b201910  add.ul r[2:3], r[19:20], r[2:3]
00089c  b3920228  sext_int2long r[6:7], r5
0008a0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0008a4  ab0100f0  lui r3, 983040
0008a8  1fe24d00  addli r4, r27, 38
0008ac  97b0c203  sll.d r[2:3], r[6:7], r28
0008b0  e3420fe6  loadli.w r5,  -3324(r30)
0008b4  97913800  or r3, r17, r3
0008b8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
0008bc  b3920228  sext_int2long r[6:7], r5
0008c0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0008c4  ab0100f0  lui r3, 983040
0008c8  1f825d00  addli r4, r27, 40
0008cc  97b0c203  sll.d r[2:3], r[6:7], r28
0008d0  e3021fe6  loadli.w r5,  -3320(r30)
0008d4  97913800  or r3, r17, r3
0008d8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
0008dc  b3920228  sext_int2long r[6:7], r5
0008e0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0008e4  ab0100f0  lui r3, 983040
0008e8  1fa25d00  addli r4, r27, 42
0008ec  97b0c203  sll.d r[2:3], r[6:7], r28
0008f0  e3421fe6  loadli.w r5,  -3316(r30)
0008f4  97913800  or r3, r17, r3
0008f8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
0008fc  b3920228  sext_int2long r[6:7], r5
000900  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000904  ab0100f0  lui r3, 983040
000908  1fc25d00  addli r4, r27, 44
00090c  97b0c203  sll.d r[2:3], r[6:7], r28
000910  e3022fe6  loadli.w r5,  -3312(r30)
000914  97913800  or r3, r17, r3
000918  8b201910  add.ul r[2:3], r[19:20], r[2:3]
00091c  b3920228  sext_int2long r[6:7], r5
000920  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000924  ab0100f0  lui r3, 983040
000928  1fe25d00  addli r4, r27, 46
00092c  97b0c203  sll.d r[2:3], r[6:7], r28
000930  e3422fe6  loadli.w r5,  -3308(r30)
000934  97913800  or r3, r17, r3
000938  8b201910  add.ul r[2:3], r[19:20], r[2:3]
00093c  b3920228  sext_int2long r[6:7], r5
000940  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000944  ab0100f0  lui r3, 983040
000948  1f826d00  addli r4, r27, 48
00094c  97b0c203  sll.d r[2:3], r[6:7], r28
000950  e3023fe6  loadli.w r5,  -3304(r30)
000954  97913800  or r3, r17, r3
000958  8b201910  add.ul r[2:3], r[19:20], r[2:3]
00095c  b3920228  sext_int2long r[6:7], r5
000960  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000964  ab0100f0  lui r3, 983040
000968  1fa26d00  addli r4, r27, 50
00096c  97b0c203  sll.d r[2:3], r[6:7], r28
000970  e3423fe6  loadli.w r5,  -3300(r30)
000974  97913800  or r3, r17, r3
000978  8b201910  add.ul r[2:3], r[19:20], r[2:3]
00097c  b3920228  sext_int2long r[6:7], r5
000980  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000984  ab0100f0  lui r3, 983040
000988  1fc26d00  addli r4, r27, 52
00098c  97b0c203  sll.d r[2:3], r[6:7], r28
000990  e3024fe6  loadli.w r5,  -3296(r30)
000994  97913800  or r3, r17, r3
000998  8b201910  add.ul r[2:3], r[19:20], r[2:3]
00099c  b3920228  sext_int2long r[6:7], r5
0009a0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0009a4  ab0100f0  lui r3, 983040
0009a8  1fe26d00  addli r4, r27, 54
0009ac  97b0c203  sll.d r[2:3], r[6:7], r28
0009b0  e3424fe6  loadli.w r5,  -3292(r30)
0009b4  97913800  or r3, r17, r3
0009b8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
0009bc  b3920228  sext_int2long r[6:7], r5
0009c0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0009c4  ab0100f0  lui r3, 983040
0009c8  1f827d00  addli r4, r27, 56
0009cc  97b0c203  sll.d r[2:3], r[6:7], r28
0009d0  e3025fe6  loadli.w r5,  -3288(r30)
0009d4  97913800  or r3, r17, r3
0009d8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
0009dc  b3920228  sext_int2long r[6:7], r5
0009e0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0009e4  ab0100f0  lui r3, 983040
0009e8  1fa27d00  addli r4, r27, 58
0009ec  97b0c203  sll.d r[2:3], r[6:7], r28
0009f0  e3425fe6  loadli.w r5,  -3284(r30)
0009f4  97913800  or r3, r17, r3
0009f8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
0009fc  b3920228  sext_int2long r[6:7], r5
000a00  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a04  ab0100f0  lui r3, 983040
000a08  1fc27d00  addli r4, r27, 60
000a0c  97b0c203  sll.d r[2:3], r[6:7], r28
000a10  e3026fe6  loadli.w r5,  -3280(r30)
000a14  97913800  or r3, r17, r3
000a18  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000a1c  b3920228  sext_int2long r[6:7], r5
000a20  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a24  ab0100f0  lui r3, 983040
000a28  1fe27d00  addli r4, r27, 62
000a2c  97b0c203  sll.d r[2:3], r[6:7], r28
000a30  e3426fe6  loadli.w r5,  -3276(r30)
000a34  97913800  or r3, r17, r3
000a38  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000a3c  b3920228  sext_int2long r[6:7], r5
000a40  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a44  63027fe6  loadli.w r4,  -3272(r30)
000a48  ab0100f0  lui r3, 983040
000a4c  97b0c203  sll.d r[2:3], r[6:7], r28
000a50  63436fe9  loadli.w r6,  -2892(r30)
000a54  97913800  or r3, r17, r3
000a58  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000a5c  33120228  sext_int2long r[5:6], r4
000a60  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
000a64  9730c203  sll.d r[2:3], r[5:6], r28
000a68  e3427fe6  loadli.w r5,  -3268(r30)
000a6c  ab0100f0  lui r3, 983040
000a70  1fa28d00  addli r4, r27, 66
000a74  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000a78  97913800  or r3, r17, r3
000a7c  b3920228  sext_int2long r[6:7], r5
000a80  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a84  ab0100f0  lui r3, 983040
000a88  1fc28d00  addli r4, r27, 68
000a8c  97b0c203  sll.d r[2:3], r[6:7], r28
000a90  e3028fe6  loadli.w r5,  -3264(r30)
000a94  97913800  or r3, r17, r3
000a98  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000a9c  b3920228  sext_int2long r[6:7], r5
000aa0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000aa4  ab0100f0  lui r3, 983040
000aa8  1fe28d00  addli r4, r27, 70
000aac  97b0c203  sll.d r[2:3], r[6:7], r28
000ab0  e3428fe6  loadli.w r5,  -3260(r30)
000ab4  97913800  or r3, r17, r3
000ab8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000abc  b3920228  sext_int2long r[6:7], r5
000ac0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ac4  ab0100f0  lui r3, 983040
000ac8  1f829d00  addli r4, r27, 72
000acc  97b0c203  sll.d r[2:3], r[6:7], r28
000ad0  e3029fe6  loadli.w r5,  -3256(r30)
000ad4  97913800  or r3, r17, r3
000ad8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000adc  b3920228  sext_int2long r[6:7], r5
000ae0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ae4  ab0100f0  lui r3, 983040
000ae8  1fa29d00  addli r4, r27, 74
000aec  97b0c203  sll.d r[2:3], r[6:7], r28
000af0  e3429fe6  loadli.w r5,  -3252(r30)
000af4  97913800  or r3, r17, r3
000af8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000afc  b3920228  sext_int2long r[6:7], r5
000b00  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b04  ab0100f0  lui r3, 983040
000b08  1fc29d00  addli r4, r27, 76
000b0c  97b0c203  sll.d r[2:3], r[6:7], r28
000b10  e302afe6  loadli.w r5,  -3248(r30)
000b14  97913800  or r3, r17, r3
000b18  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000b1c  b3920228  sext_int2long r[6:7], r5
000b20  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b24  ab0100f0  lui r3, 983040
000b28  1fe29d00  addli r4, r27, 78
000b2c  97b0c203  sll.d r[2:3], r[6:7], r28
000b30  e342afe6  loadli.w r5,  -3244(r30)
000b34  97913800  or r3, r17, r3
000b38  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000b3c  b3920228  sext_int2long r[6:7], r5
000b40  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b44  ab0100f0  lui r3, 983040
000b48  1f82ad00  addli r4, r27, 80
000b4c  97b0c203  sll.d r[2:3], r[6:7], r28
000b50  e302bfe6  loadli.w r5,  -3240(r30)
000b54  97913800  or r3, r17, r3
000b58  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000b5c  b3920228  sext_int2long r[6:7], r5
000b60  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b64  ab0100f0  lui r3, 983040
000b68  1fa2ad00  addli r4, r27, 82
000b6c  97b0c203  sll.d r[2:3], r[6:7], r28
000b70  e342bfe6  loadli.w r5,  -3236(r30)
000b74  97913800  or r3, r17, r3
000b78  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000b7c  b3920228  sext_int2long r[6:7], r5
000b80  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b84  ab0100f0  lui r3, 983040
000b88  1fc2ad00  addli r4, r27, 84
000b8c  97b0c203  sll.d r[2:3], r[6:7], r28
000b90  e302cfe6  loadli.w r5,  -3232(r30)
000b94  97913800  or r3, r17, r3
000b98  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000b9c  b3920228  sext_int2long r[6:7], r5
000ba0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ba4  ab0100f0  lui r3, 983040
000ba8  1fe2ad00  addli r4, r27, 86
000bac  97b0c203  sll.d r[2:3], r[6:7], r28
000bb0  e342cfe6  loadli.w r5,  -3228(r30)
000bb4  97913800  or r3, r17, r3
000bb8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000bbc  b3920228  sext_int2long r[6:7], r5
000bc0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000bc4  ab0100f0  lui r3, 983040
000bc8  1f82bd00  addli r4, r27, 88
000bcc  97b0c203  sll.d r[2:3], r[6:7], r28
000bd0  e302dfe6  loadli.w r5,  -3224(r30)
000bd4  97913800  or r3, r17, r3
000bd8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000bdc  b3920228  sext_int2long r[6:7], r5
000be0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000be4  ab0100f0  lui r3, 983040
000be8  1fa2bd00  addli r4, r27, 90
000bec  97b0c203  sll.d r[2:3], r[6:7], r28
000bf0  e342dfe6  loadli.w r5,  -3220(r30)
000bf4  97913800  or r3, r17, r3
000bf8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000bfc  b3920228  sext_int2long r[6:7], r5
000c00  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c04  ab0100f0  lui r3, 983040
000c08  1fc2bd00  addli r4, r27, 92
000c0c  97b0c203  sll.d r[2:3], r[6:7], r28
000c10  e302efe6  loadli.w r5,  -3216(r30)
000c14  97913800  or r3, r17, r3
000c18  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000c1c  b3920228  sext_int2long r[6:7], r5
000c20  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c24  ab0100f0  lui r3, 983040
000c28  1fe2bd00  addli r4, r27, 94
000c2c  97b0c203  sll.d r[2:3], r[6:7], r28
000c30  e342efe6  loadli.w r5,  -3212(r30)
000c34  97913800  or r3, r17, r3
000c38  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000c3c  b3920228  sext_int2long r[6:7], r5
000c40  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c44  ab0100f0  lui r3, 983040
000c48  1f82cd00  addli r4, r27, 96
000c4c  97b0c203  sll.d r[2:3], r[6:7], r28
000c50  e302ffe6  loadli.w r5,  -3208(r30)
000c54  97913800  or r3, r17, r3
000c58  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000c5c  b3920228  sext_int2long r[6:7], r5
000c60  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c64  ab0100f0  lui r3, 983040
000c68  1fa2cd00  addli r4, r27, 98
000c6c  97b0c203  sll.d r[2:3], r[6:7], r28
000c70  e342ffe6  loadli.w r5,  -3204(r30)
000c74  97913800  or r3, r17, r3
000c78  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000c7c  b3920228  sext_int2long r[6:7], r5
000c80  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c84  ab0100f0  lui r3, 983040
000c88  1fc2cd00  addli r4, r27, 100
000c8c  97b0c203  sll.d r[2:3], r[6:7], r28
000c90  e3020fe7  loadli.w r5,  -3200(r30)
000c94  97913800  or r3, r17, r3
000c98  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000c9c  b3920228  sext_int2long r[6:7], r5
000ca0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ca4  ab0100f0  lui r3, 983040
000ca8  1fe2cd00  addli r4, r27, 102
000cac  97b0c203  sll.d r[2:3], r[6:7], r28
000cb0  e3420fe7  loadli.w r5,  -3196(r30)
000cb4  97913800  or r3, r17, r3
000cb8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000cbc  b3920228  sext_int2long r[6:7], r5
000cc0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000cc4  ab0100f0  lui r3, 983040
000cc8  1f82dd00  addli r4, r27, 104
000ccc  97b0c203  sll.d r[2:3], r[6:7], r28
000cd0  e3021fe7  loadli.w r5,  -3192(r30)
000cd4  97913800  or r3, r17, r3
000cd8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000cdc  b3920228  sext_int2long r[6:7], r5
000ce0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ce4  ab0100f0  lui r3, 983040
000ce8  1fa2dd00  addli r4, r27, 106
000cec  97b0c203  sll.d r[2:3], r[6:7], r28
000cf0  e3421fe7  loadli.w r5,  -3188(r30)
000cf4  97913800  or r3, r17, r3
000cf8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000cfc  b3920228  sext_int2long r[6:7], r5
000d00  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d04  ab0100f0  lui r3, 983040
000d08  1fc2dd00  addli r4, r27, 108
000d0c  97b0c203  sll.d r[2:3], r[6:7], r28
000d10  e3022fe7  loadli.w r5,  -3184(r30)
000d14  97913800  or r3, r17, r3
000d18  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000d1c  b3920228  sext_int2long r[6:7], r5
000d20  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d24  ab0100f0  lui r3, 983040
000d28  1fe2dd00  addli r4, r27, 110
000d2c  97b0c203  sll.d r[2:3], r[6:7], r28
000d30  e3422fe7  loadli.w r5,  -3180(r30)
000d34  97913800  or r3, r17, r3
000d38  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000d3c  b3920228  sext_int2long r[6:7], r5
000d40  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d44  ab0100f0  lui r3, 983040
000d48  1f82ed00  addli r4, r27, 112
000d4c  97b0c203  sll.d r[2:3], r[6:7], r28
000d50  e3023fe7  loadli.w r5,  -3176(r30)
000d54  97913800  or r3, r17, r3
000d58  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000d5c  b3920228  sext_int2long r[6:7], r5
000d60  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d64  ab0100f0  lui r3, 983040
000d68  1fa2ed00  addli r4, r27, 114
000d6c  97b0c203  sll.d r[2:3], r[6:7], r28
000d70  e3423fe7  loadli.w r5,  -3172(r30)
000d74  97913800  or r3, r17, r3
000d78  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000d7c  b3920228  sext_int2long r[6:7], r5
000d80  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d84  ab0100f0  lui r3, 983040
000d88  1fc2ed00  addli r4, r27, 116
000d8c  97b0c203  sll.d r[2:3], r[6:7], r28
000d90  e3024fe7  loadli.w r5,  -3168(r30)
000d94  97913800  or r3, r17, r3
000d98  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000d9c  b3920228  sext_int2long r[6:7], r5
000da0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000da4  ab0100f0  lui r3, 983040
000da8  1fe2ed00  addli r4, r27, 118
000dac  97b0c203  sll.d r[2:3], r[6:7], r28
000db0  e3424fe7  loadli.w r5,  -3164(r30)
000db4  97913800  or r3, r17, r3
000db8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000dbc  b3920228  sext_int2long r[6:7], r5
000dc0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000dc4  ab0100f0  lui r3, 983040
000dc8  1f82fd00  addli r4, r27, 120
000dcc  97b0c203  sll.d r[2:3], r[6:7], r28
000dd0  e3025fe7  loadli.w r5,  -3160(r30)
000dd4  97913800  or r3, r17, r3
000dd8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000ddc  b3920228  sext_int2long r[6:7], r5
000de0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000de4  ab0100f0  lui r3, 983040
000de8  1fa2fd00  addli r4, r27, 122
000dec  97b0c203  sll.d r[2:3], r[6:7], r28
000df0  e3425fe7  loadli.w r5,  -3156(r30)
000df4  97913800  or r3, r17, r3
000df8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000dfc  b3920228  sext_int2long r[6:7], r5
000e00  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e04  ab0100f0  lui r3, 983040
000e08  1fc2fd00  addli r4, r27, 124
000e0c  97b0c203  sll.d r[2:3], r[6:7], r28
000e10  e3026fe7  loadli.w r5,  -3152(r30)
000e14  97913800  or r3, r17, r3
000e18  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000e1c  b3920228  sext_int2long r[6:7], r5
000e20  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e24  ab0100f0  lui r3, 983040
000e28  1fe2fd00  addli r4, r27, 126
000e2c  97b0c203  sll.d r[2:3], r[6:7], r28
000e30  e3426fe7  loadli.w r5,  -3148(r30)
000e34  97913800  or r3, r17, r3
000e38  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000e3c  b3920228  sext_int2long r[6:7], r5
000e40  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e44  63027fe7  loadli.w r4,  -3144(r30)
000e48  ab0100f0  lui r3, 983040
000e4c  97b0c203  sll.d r[2:3], r[6:7], r28
000e50  63037fe9  loadli.w r6,  -2888(r30)
000e54  97913800  or r3, r17, r3
000e58  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000e5c  33120228  sext_int2long r[5:6], r4
000e60  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
000e64  9730c203  sll.d r[2:3], r[5:6], r28
000e68  e3427fe7  loadli.w r5,  -3140(r30)
000e6c  ab0100f0  lui r3, 983040
000e70  1fa20d01  addli r4, r27, 130
000e74  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000e78  97913800  or r3, r17, r3
000e7c  b3920228  sext_int2long r[6:7], r5
000e80  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e84  ab0100f0  lui r3, 983040
000e88  1fc20d01  addli r4, r27, 132
000e8c  97b0c203  sll.d r[2:3], r[6:7], r28
000e90  e3028fe7  loadli.w r5,  -3136(r30)
000e94  97913800  or r3, r17, r3
000e98  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000e9c  b3920228  sext_int2long r[6:7], r5
000ea0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ea4  ab0100f0  lui r3, 983040
000ea8  1fe20d01  addli r4, r27, 134
000eac  97b0c203  sll.d r[2:3], r[6:7], r28
000eb0  e3428fe7  loadli.w r5,  -3132(r30)
000eb4  97913800  or r3, r17, r3
000eb8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000ebc  b3920228  sext_int2long r[6:7], r5
000ec0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ec4  ab0100f0  lui r3, 983040
000ec8  1f821d01  addli r4, r27, 136
000ecc  97b0c203  sll.d r[2:3], r[6:7], r28
000ed0  e3029fe7  loadli.w r5,  -3128(r30)
000ed4  97913800  or r3, r17, r3
000ed8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000edc  b3920228  sext_int2long r[6:7], r5
000ee0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ee4  ab0100f0  lui r3, 983040
000ee8  1fa21d01  addli r4, r27, 138
000eec  97b0c203  sll.d r[2:3], r[6:7], r28
000ef0  e3429fe7  loadli.w r5,  -3124(r30)
000ef4  97913800  or r3, r17, r3
000ef8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000efc  b3920228  sext_int2long r[6:7], r5
000f00  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f04  ab0100f0  lui r3, 983040
000f08  1fc21d01  addli r4, r27, 140
000f0c  97b0c203  sll.d r[2:3], r[6:7], r28
000f10  e302afe7  loadli.w r5,  -3120(r30)
000f14  97913800  or r3, r17, r3
000f18  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000f1c  b3920228  sext_int2long r[6:7], r5
000f20  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f24  ab0100f0  lui r3, 983040
000f28  1fe21d01  addli r4, r27, 142
000f2c  97b0c203  sll.d r[2:3], r[6:7], r28
000f30  e342afe7  loadli.w r5,  -3116(r30)
000f34  97913800  or r3, r17, r3
000f38  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000f3c  b3920228  sext_int2long r[6:7], r5
000f40  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f44  ab0100f0  lui r3, 983040
000f48  1f822d01  addli r4, r27, 144
000f4c  97b0c203  sll.d r[2:3], r[6:7], r28
000f50  e302bfe7  loadli.w r5,  -3112(r30)
000f54  97913800  or r3, r17, r3
000f58  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000f5c  b3920228  sext_int2long r[6:7], r5
000f60  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f64  ab0100f0  lui r3, 983040
000f68  1fa22d01  addli r4, r27, 146
000f6c  97b0c203  sll.d r[2:3], r[6:7], r28
000f70  e342bfe7  loadli.w r5,  -3108(r30)
000f74  97913800  or r3, r17, r3
000f78  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000f7c  b3920228  sext_int2long r[6:7], r5
000f80  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f84  ab0100f0  lui r3, 983040
000f88  1fc22d01  addli r4, r27, 148
000f8c  97b0c203  sll.d r[2:3], r[6:7], r28
000f90  e302cfe7  loadli.w r5,  -3104(r30)
000f94  97913800  or r3, r17, r3
000f98  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000f9c  b3920228  sext_int2long r[6:7], r5
000fa0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000fa4  ab0100f0  lui r3, 983040
000fa8  1fe22d01  addli r4, r27, 150
000fac  97b0c203  sll.d r[2:3], r[6:7], r28
000fb0  e342cfe7  loadli.w r5,  -3100(r30)
000fb4  97913800  or r3, r17, r3
000fb8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000fbc  b3920228  sext_int2long r[6:7], r5
000fc0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000fc4  ab0100f0  lui r3, 983040
000fc8  1f823d01  addli r4, r27, 152
000fcc  97b0c203  sll.d r[2:3], r[6:7], r28
000fd0  e302dfe7  loadli.w r5,  -3096(r30)
000fd4  97913800  or r3, r17, r3
000fd8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000fdc  b3920228  sext_int2long r[6:7], r5
000fe0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000fe4  ab0100f0  lui r3, 983040
000fe8  1fa23d01  addli r4, r27, 154
000fec  97b0c203  sll.d r[2:3], r[6:7], r28
000ff0  e342dfe7  loadli.w r5,  -3092(r30)
000ff4  97913800  or r3, r17, r3
000ff8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
000ffc  b3920228  sext_int2long r[6:7], r5
001000  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001004  ab0100f0  lui r3, 983040
001008  1fc23d01  addli r4, r27, 156
00100c  97b0c203  sll.d r[2:3], r[6:7], r28
001010  e302efe7  loadli.w r5,  -3088(r30)
001014  97913800  or r3, r17, r3
001018  8b201910  add.ul r[2:3], r[19:20], r[2:3]
00101c  b3920228  sext_int2long r[6:7], r5
001020  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001024  ab0100f0  lui r3, 983040
001028  1fe23d01  addli r4, r27, 158
00102c  97b0c203  sll.d r[2:3], r[6:7], r28
001030  e342efe7  loadli.w r5,  -3084(r30)
001034  97913800  or r3, r17, r3
001038  8b201910  add.ul r[2:3], r[19:20], r[2:3]
00103c  b3920228  sext_int2long r[6:7], r5
001040  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001044  ab0100f0  lui r3, 983040
001048  1f824d01  addli r4, r27, 160
00104c  97b0c203  sll.d r[2:3], r[6:7], r28
001050  e302ffe7  loadli.w r5,  -3080(r30)
001054  97913800  or r3, r17, r3
001058  8b201910  add.ul r[2:3], r[19:20], r[2:3]
00105c  b3920228  sext_int2long r[6:7], r5
001060  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001064  ab0100f0  lui r3, 983040
001068  1fa24d01  addli r4, r27, 162
00106c  97b0c203  sll.d r[2:3], r[6:7], r28
001070  e342ffe7  loadli.w r5,  -3076(r30)
001074  97913800  or r3, r17, r3
001078  8b201910  add.ul r[2:3], r[19:20], r[2:3]
00107c  b3920228  sext_int2long r[6:7], r5
001080  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001084  ab0100f0  lui r3, 983040
001088  1fc24d01  addli r4, r27, 164
00108c  97b0c203  sll.d r[2:3], r[6:7], r28
001090  e3020fe8  loadli.w r5,  -3072(r30)
001094  97913800  or r3, r17, r3
001098  8b201910  add.ul r[2:3], r[19:20], r[2:3]
00109c  b3920228  sext_int2long r[6:7], r5
0010a0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010a4  ab0100f0  lui r3, 983040
0010a8  1fe24d01  addli r4, r27, 166
0010ac  97b0c203  sll.d r[2:3], r[6:7], r28
0010b0  e3420fe8  loadli.w r5,  -3068(r30)
0010b4  97913800  or r3, r17, r3
0010b8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
0010bc  b3920228  sext_int2long r[6:7], r5
0010c0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010c4  ab0100f0  lui r3, 983040
0010c8  1f825d01  addli r4, r27, 168
0010cc  97b0c203  sll.d r[2:3], r[6:7], r28
0010d0  e3021fe8  loadli.w r5,  -3064(r30)
0010d4  97913800  or r3, r17, r3
0010d8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
0010dc  b3920228  sext_int2long r[6:7], r5
0010e0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010e4  ab0100f0  lui r3, 983040
0010e8  1fa25d01  addli r4, r27, 170
0010ec  97b0c203  sll.d r[2:3], r[6:7], r28
0010f0  e3421fe8  loadli.w r5,  -3060(r30)
0010f4  97913800  or r3, r17, r3
0010f8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
0010fc  b3920228  sext_int2long r[6:7], r5
001100  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001104  ab0100f0  lui r3, 983040
001108  1fc25d01  addli r4, r27, 172
00110c  97b0c203  sll.d r[2:3], r[6:7], r28
001110  e3022fe8  loadli.w r5,  -3056(r30)
001114  97913800  or r3, r17, r3
001118  8b201910  add.ul r[2:3], r[19:20], r[2:3]
00111c  b3920228  sext_int2long r[6:7], r5
001120  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001124  ab0100f0  lui r3, 983040
001128  1fe25d01  addli r4, r27, 174
00112c  97b0c203  sll.d r[2:3], r[6:7], r28
001130  e3422fe8  loadli.w r5,  -3052(r30)
001134  97913800  or r3, r17, r3
001138  8b201910  add.ul r[2:3], r[19:20], r[2:3]
00113c  b3920228  sext_int2long r[6:7], r5
001140  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001144  ab0100f0  lui r3, 983040
001148  1f826d01  addli r4, r27, 176
00114c  97b0c203  sll.d r[2:3], r[6:7], r28
001150  e3023fe8  loadli.w r5,  -3048(r30)
001154  97913800  or r3, r17, r3
001158  8b201910  add.ul r[2:3], r[19:20], r[2:3]
00115c  b3920228  sext_int2long r[6:7], r5
001160  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001164  ab0100f0  lui r3, 983040
001168  1fa26d01  addli r4, r27, 178
00116c  97b0c203  sll.d r[2:3], r[6:7], r28
001170  e3423fe8  loadli.w r5,  -3044(r30)
001174  97913800  or r3, r17, r3
001178  8b201910  add.ul r[2:3], r[19:20], r[2:3]
00117c  b3920228  sext_int2long r[6:7], r5
001180  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001184  ab0100f0  lui r3, 983040
001188  1fc26d01  addli r4, r27, 180
00118c  97b0c203  sll.d r[2:3], r[6:7], r28
001190  e3024fe8  loadli.w r5,  -3040(r30)
001194  97913800  or r3, r17, r3
001198  8b201910  add.ul r[2:3], r[19:20], r[2:3]
00119c  b3920228  sext_int2long r[6:7], r5
0011a0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011a4  ab0100f0  lui r3, 983040
0011a8  1fe26d01  addli r4, r27, 182
0011ac  97b0c203  sll.d r[2:3], r[6:7], r28
0011b0  e3424fe8  loadli.w r5,  -3036(r30)
0011b4  97913800  or r3, r17, r3
0011b8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
0011bc  b3920228  sext_int2long r[6:7], r5
0011c0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011c4  ab0100f0  lui r3, 983040
0011c8  1f827d01  addli r4, r27, 184
0011cc  97b0c203  sll.d r[2:3], r[6:7], r28
0011d0  e3025fe8  loadli.w r5,  -3032(r30)
0011d4  97913800  or r3, r17, r3
0011d8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
0011dc  b3920228  sext_int2long r[6:7], r5
0011e0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011e4  ab0100f0  lui r3, 983040
0011e8  1fa27d01  addli r4, r27, 186
0011ec  97b0c203  sll.d r[2:3], r[6:7], r28
0011f0  e3425fe8  loadli.w r5,  -3028(r30)
0011f4  97913800  or r3, r17, r3
0011f8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
0011fc  b3920228  sext_int2long r[6:7], r5
001200  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001204  ab0100f0  lui r3, 983040
001208  1fc27d01  addli r4, r27, 188
00120c  97b0c203  sll.d r[2:3], r[6:7], r28
001210  e3026fe8  loadli.w r5,  -3024(r30)
001214  97913800  or r3, r17, r3
001218  8b201910  add.ul r[2:3], r[19:20], r[2:3]
00121c  b3920228  sext_int2long r[6:7], r5
001220  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001224  ab0100f0  lui r3, 983040
001228  1fe27d01  addli r4, r27, 190
00122c  97b0c203  sll.d r[2:3], r[6:7], r28
001230  e3426fe8  loadli.w r5,  -3020(r30)
001234  97913800  or r3, r17, r3
001238  8b201910  add.ul r[2:3], r[19:20], r[2:3]
00123c  b3920228  sext_int2long r[6:7], r5
001240  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001244  63027fe8  loadli.w r4,  -3016(r30)
001248  ab0100f0  lui r3, 983040
00124c  97b0c203  sll.d r[2:3], r[6:7], r28
001250  63437fe9  loadli.w r6,  -2884(r30)
001254  97913800  or r3, r17, r3
001258  8b201910  add.ul r[2:3], r[19:20], r[2:3]
00125c  33120228  sext_int2long r[5:6], r4
001260  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
001264  9730c203  sll.d r[2:3], r[5:6], r28
001268  e3427fe8  loadli.w r5,  -3012(r30)
00126c  ab0100f0  lui r3, 983040
001270  1fa28d01  addli r4, r27, 194
001274  8b201910  add.ul r[2:3], r[19:20], r[2:3]
001278  97913800  or r3, r17, r3
00127c  b3920228  sext_int2long r[6:7], r5
001280  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001284  ab0100f0  lui r3, 983040
001288  1fc28d01  addli r4, r27, 196
00128c  97b0c203  sll.d r[2:3], r[6:7], r28
001290  e3028fe8  loadli.w r5,  -3008(r30)
001294  97913800  or r3, r17, r3
001298  8b201910  add.ul r[2:3], r[19:20], r[2:3]
00129c  b3920228  sext_int2long r[6:7], r5
0012a0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012a4  ab0100f0  lui r3, 983040
0012a8  1fe28d01  addli r4, r27, 198
0012ac  97b0c203  sll.d r[2:3], r[6:7], r28
0012b0  e3428fe8  loadli.w r5,  -3004(r30)
0012b4  97913800  or r3, r17, r3
0012b8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
0012bc  b3920228  sext_int2long r[6:7], r5
0012c0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012c4  ab0100f0  lui r3, 983040
0012c8  1f829d01  addli r4, r27, 200
0012cc  97b0c203  sll.d r[2:3], r[6:7], r28
0012d0  e3029fe8  loadli.w r5,  -3000(r30)
0012d4  97913800  or r3, r17, r3
0012d8  8b201910  add.ul r[2:3], r[19:20], r[2:3]
0012dc  b3920228  sext_int2long r[6:7], r5
0012e0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012e4  63429fe8  loadli.w r4,  -2996(r30)
0012e8  ab0100f0  lui r3, 983040
0012ec  97b0c203  sll.d r[2:3], r[6:7], r28
0012f0  1fa39d01  addli r6, r27, 202
0012f4  97913800  or r3, r17, r3
0012f8  33120228  sext_int2long r[5:6], r4
0012fc  8b201910  add.ul r[2:3], r[19:20], r[2:3]
001300  1732c203  sll.d r[5:6], r[5:6], r28
001304  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
001308  ab0100f0  lui r3, 983040
00130c  8b204910  add.ul r[2:3], r[19:20], r[5:6]
001310  e302afe8  loadli.w r5,  -2992(r30)
001314  1fc29d01  addli r4, r27, 204
001318  97913800  or r3, r17, r3
00131c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001320  b3920228  sext_int2long r[6:7], r5
001324  97b1c203  sll.d r[4:5], r[6:7], r28
001328  9f028fe9  addli r5, r30, -2880
00132c  1fe39d01  addli r6, r27, 206
001330  ebd00200  load.d r[2:3], 0(r5)
001334  ab0200f0  lui r5, 983040
001338  8b213910  add.ul r[4:5], r[19:20], r[4:5]
00133c  97925800  or r5, r17, r5
001340  8b201910  add.ul r[2:3], r[19:20], r[2:3]
001344  ffb26100  s_lm2gm r5, r6, 0(r[4:5])
001348  e301bfe8  loadli.w r3,  -2984(r30)
00134c  97b2c303  sll.d r[6:7], r[8:9], r28
001350  ab0300f0  lui r7, 983040
001354  1f84ad01  addli r8, r27, 208
001358  ffbcb001  s_lm2gm r25, r27, 0(r[2:3])
00135c  ab0c00f0  lui r25, 983040
001360  e3403fe9  loadli.w r1,  -2916(r30)
001364  8b225910  add.ul r[6:7], r[19:20], r[6:7]
001368  97937800  or r7, r17, r7
00136c  b3910128  sext_int2long r[4:5], r3
001370  979c9801  or r25, r17, r25
001374  ffb38200  s_lm2gm r7, r8, 0(r[6:7])
001378  97b3c403  sll.d r[8:9], r[10:11], r28
00137c  ab0400f0  lui r9, 983040
001380  1fa5ad01  addli r10, r27, 210
001384  e302cfe8  loadli.w r5,  -2976(r30)
001388  b3900028  sext_int2long r[2:3], r1
00138c  97b1c103  sll.d r[4:5], r[4:5], r28
001390  97949800  or r9, r17, r9
001394  8b237910  add.ul r[8:9], r[19:20], r[8:9]
001398  97b0c003  sll.d r[2:3], r[2:3], r28
00139c  8b213910  add.ul r[4:5], r[19:20], r[4:5]
0013a0  b3920228  sext_int2long r[6:7], r5
0013a4  ffb4a100  s_lm2gm r9, r10, 0(r[4:5])
0013a8  97b4c503  sll.d r[10:11], r[12:13], r28
0013ac  ab0500f0  lui r11, 983040
0013b0  1fc6ad01  addli r12, r27, 212
0013b4  97b2c203  sll.d r[6:7], r[6:7], r28
0013b8  e301dfe8  loadli.w r3,  -2968(r30)
0013bc  9795b800  or r11, r17, r11
0013c0  8b225910  add.ul r[6:7], r[19:20], r[6:7]
0013c4  8b249910  add.ul r[10:11], r[19:20], r[10:11]
0013c8  b3910128  sext_int2long r[4:5], r3
0013cc  ffb5c300  s_lm2gm r11, r12, 0(r[8:9])
0013d0  e303efe8  loadli.w r7,  -2960(r30)
0013d4  97b5c603  sll.d r[12:13], r[14:15], r28
0013d8  97b1c103  sll.d r[4:5], r[4:5], r28
0013dc  8b26b910  add.ul r[14:15], r[19:20], r[12:13]
0013e0  e345efe8  loadli.w r11,  -2956(r30)
0013e4  b3930328  sext_int2long r[8:9], r7
0013e8  8b213910  add.ul r[4:5], r[19:20], r[4:5]
0013ec  97b3c303  sll.d r[8:9], r[8:9], r28
0013f0  b3950528  sext_int2long r[12:13], r11
0013f4  8b277910  add.ul r[16:17], r[19:20], r[8:9]
0013f8  ab0300f0  lui r7, 983040
0013fc  1fe4ad01  addli r8, r27, 214
001400  97937800  or r7, r17, r7
001404  ffbca701  s_lm2gm r25, r26, 0(r[16:17])
001408  ab0c00f0  lui r25, 983040
00140c  1f8dcd01  addli r26, r27, 224
001410  ffb38200  s_lm2gm r7, r8, 0(r[6:7])
001414  e302ffe8  loadli.w r5,  -2952(r30)
001418  97b3c503  sll.d r[8:9], r[12:13], r28
00141c  979c9801  or r25, r17, r25
001420  8b2a7910  add.ul r[22:23], r[19:20], r[8:9]
001424  e343ffe8  loadli.w r7,  -2948(r30)
001428  b3920228  sext_int2long r[6:7], r5
00142c  ffbcaa01  s_lm2gm r25, r26, 0(r[22:23])
001430  ab0c00f0  lui r25, 983040
001434  1fadcd01  addli r26, r27, 226
001438  97b2c203  sll.d r[6:7], r[6:7], r28
00143c  b3930328  sext_int2long r[8:9], r7
001440  979c9801  or r25, r17, r25
001444  8b255910  add.ul r[12:13], r[19:20], r[6:7]
001448  ab0200f0  lui r5, 983040
00144c  1f83bd01  addli r6, r27, 216
001450  97b3c303  sll.d r[8:9], r[8:9], r28
001454  97925800  or r5, r17, r5
001458  8b2b7910  add.ul r[24:25], r[19:20], r[8:9]
00145c  ab0300f0  lui r7, 983040
001460  1fa4bd01  addli r8, r27, 218
001464  ffbca501  s_lm2gm r25, r26, 0(r[12:13])
001468  e3455fe9  loadli.w r11,  -2900(r30)
00146c  ffb26400  s_lm2gm r5, r6, 0(r[10:11])
001470  e3020fe9  loadli.w r5,  -2944(r30)
001474  97937800  or r7, r17, r7
001478  ffb38100  s_lm2gm r7, r8, 0(r[4:5])
00147c  e3011fe9  loadli.w r3,  -2936(r30)
001480  9f03ffea  addli r7, r30, -2696
001484  b3920228  sext_int2long r[6:7], r5
001488  97b2c203  sll.d r[6:7], r[6:7], r28
00148c  b3910128  sext_int2long r[4:5], r3
001490  8b245910  add.ul r[10:11], r[19:20], r[6:7]
001494  e3420fe9  loadli.w r5,  -2940(r30)
001498  97b1c103  sll.d r[4:5], r[4:5], r28
00149c  8b213910  add.ul r[4:5], r[19:20], r[4:5]
0014a0  b3920228  sext_int2long r[6:7], r5
0014a4  97b2c203  sll.d r[6:7], r[6:7], r28
0014a8  8b225910  add.ul r[6:7], r[19:20], r[6:7]
0014ac  73b05300  store.d r[6:7], 0(r7)
0014b0  e3421fe9  loadli.w r5,  -2932(r30)
0014b4  9f03efea  addli r7, r30, -2704
0014b8  73b03300  store.d r[4:5], 0(r7)
0014bc  9fc3bd01  addli r7, r27, 220
0014c0  b3920228  sext_int2long r[6:7], r5
0014c4  97b1c203  sll.d r[4:5], r[6:7], r28
0014c8  ab0200f0  lui r5, 983040
0014cc  17945800  or r8, r17, r5
0014d0  8b223910  add.ul r[6:7], r[19:20], r[4:5]
0014d4  e3412fe9  loadli.w r3,  -2924(r30)
0014d8  7fb47600  s_lm2gm r8, r7, 0(r[14:15])
0014dc  e3032fe9  loadli.w r7,  -2928(r30)
0014e0  b3910128  sext_int2long r[4:5], r3
0014e4  b3930328  sext_int2long r[8:9], r7
0014e8  97b1c103  sll.d r[4:5], r[4:5], r28
0014ec  97b3c303  sll.d r[8:9], r[8:9], r28
0014f0  8b263910  add.ul r[14:15], r[19:20], r[4:5]
0014f4  8b217910  add.ul r[4:5], r[19:20], r[8:9]
0014f8  9f03efeb  addli r7, r30, -2576
0014fc  73b03300  store.d r[4:5], 0(r7)
001500  e3013fe9  loadli.w r3,  -2920(r30)
001504  b3930128  sext_int2long r[8:9], r3
001508  97b3c303  sll.d r[8:9], r[8:9], r28
00150c  8b217910  add.ul r[4:5], r[19:20], r[8:9]
001510  9f030feb  addli r7, r30, -2688
001514  73b03300  store.d r[4:5], 0(r7)
001518  e3034fe9  loadli.w r7,  -2912(r30)
00151c  a7010900  addli.d r[4:5], r[19:20], 0
001520  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
001524  b3970328  sext_int2long r[16:17], r7
001528  e3434fe9  loadli.w r7,  -2908(r30)
00152c  97b7c703  sll.d r[16:17], r[16:17], r28
001530  b39a0328  sext_int2long r[22:23], r7
001534  e3035fe9  loadli.w r7,  -2904(r30)
001538  8ba7f110  add.ul r[16:17], r[4:5], r[16:17]
00153c  97baca03  sll.d r[22:23], r[22:23], r28
001540  b39c0328  sext_int2long r[26:27], r7
001544  8ba35111  add.ul r[8:9], r[4:5], r[22:23]
001548  97bacc03  sll.d r[22:23], r[26:27], r28
00154c  ab0c00f0  lui r25, 983040
001550  1fcdcd01  addli r26, r27, 228
001554  979c9801  or r25, r17, r25
001558  8baa5111  add.ul r[22:23], r[4:5], r[22:23]
00155c  ffbcab01  s_lm2gm r25, r26, 0(r[24:25])
001560  b39c0528  sext_int2long r[26:27], r11
001564  e3056fe9  loadli.w r11,  -2896(r30)
001568  ab0b00f0  lui r23, 983040
00156c  1feccd01  addli r24, r27, 230
001570  979b7801  or r23, r17, r23
001574  b3990528  sext_int2long r[20:21], r11
001578  9f050ff4  addli r11, r30, -1536
00157c  ffbb8401  s_lm2gm r23, r24, 0(r[10:11])
001580  97bbcc03  sll.d r[24:25], r[26:27], r28
001584  9f04ffea  addli r9, r30, -2696
001588  97bcc903  sll.d r[26:27], r[20:21], r28
00158c  1faed501  addli r28, r11, 234
001590  ab0500f0  lui r11, 983040
001594  8ba97111  add.ul r[20:21], r[4:5], r[24:25]
001598  8bab9111  add.ul r[24:25], r[4:5], r[26:27]
00159c  ab0c00f0  lui r25, 983040
0015a0  ebd10400  load.d r[4:5], 0(r9)
0015a4  1f8ddd01  addli r26, r27, 232
0015a8  9f04efea  addli r9, r30, -2704
0015ac  ab0d00f0  lui r27, 983040
0015b0  9795b800  or r11, r17, r11
0015b4  979c9801  or r25, r17, r25
0015b8  979db801  or r27, r17, r27
0015bc  ffbca101  s_lm2gm r25, r26, 0(r[4:5])
0015c0  ebd10400  load.d r[4:5], 0(r9)
0015c4  ab0400f0  lui r9, 983040
0015c8  97949800  or r9, r17, r9
0015cc  ffbdc101  s_lm2gm r27, r28, 0(r[4:5])
0015d0  1f0e0ff4  addli r28, r30, -1536
0015d4  1f66de01  addli r12, r28, 238
0015d8  1f45de01  addli r10, r28, 236
0015dc  ffb5c600  s_lm2gm r11, r12, 0(r[14:15])
0015e0  9f05efeb  addli r11, r30, -2576
0015e4  ffb4a200  s_lm2gm r9, r10, 0(r[6:7])
0015e8  ab0200f0  lui r5, 983040
0015ec  1f03ee01  addli r6, r28, 240
0015f0  ab0400f0  lui r9, 983040
0015f4  1f25ee01  addli r10, r28, 242
0015f8  63469fe9  loadli.w r12,  -2868(r30)
0015fc  ebd10500  load.d r[4:5], 0(r11)
001600  97925800  or r5, r17, r5
001604  97949800  or r9, r17, r9
001608  ffb26100  s_lm2gm r5, r6, 0(r[4:5])
00160c  9f020feb  addli r5, r30, -2688
001610  1f63ee01  addli r6, r28, 246
001614  ebd10200  load.d r[4:5], 0(r5)
001618  ab0200f0  lui r5, 983040
00161c  97925800  or r5, r17, r5
001620  ffb4a100  s_lm2gm r9, r10, 0(r[4:5])
001624  ab0100f0  lui r3, 983040
001628  1f42ee01  addli r4, r28, 244
00162c  ffb26700  s_lm2gm r5, r6, 0(r[16:17])
001630  97913800  or r3, r17, r3
001634  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001638  ab0000f0  lui r1, 983040
00163c  ab0100f0  lui r3, 983040
001640  1f01fe01  addli r2, r28, 248
001644  1f22fe01  addli r4, r28, 250
001648  97901800  or r1, r17, r1
00164c  97913800  or r3, r17, r3
001650  ffb02300  s_lm2gm r1, r2, 0(r[8:9])
001654  ab0000f0  lui r1, 983040
001658  ffb14a00  s_lm2gm r3, r4, 0(r[22:23])
00165c  ab0100f0  lui r3, 983040
001660  1f41fe01  addli r2, r28, 252
001664  1f62fe01  addli r4, r28, 254
001668  1f040002  addli r8, zero, 256
00166c  97901800  or r1, r17, r1
001670  97913800  or r3, r17, r3
001674  ffb02900  s_lm2gm r1, r2, 0(r[20:21])
001678  e3003fe5  loadli.w r1,  -3432(r30)
00167c  ffb14b00  s_lm2gm r3, r4, 0(r[24:25])
001680  00a00000  mfence { lm }
001684  634affeb  loadli.w r20,  -2564(r30)
001688  0b161610  add.s r12, r12, r1
00168c  e3404fe5  loadli.w r1,  -3420(r30)
001690  3f201600  blt.s r12, r1, 8
001694  5b240500  j 10528
001698  9f000000  addli r1, zero, 0
00169c  0b111e10  add.s r2, r28, r1
0016a0  9fc00000  addli r1, r1, 4
0016a4  73100100  store.h zero, 0(r2)
0016a8  73110100  store.h zero, 2(r2)
0016ac  00a00000  mfence { lm }
0016b0  bbbf80fe  bneq r1, r8, -20
0016b4  e3007f00  loadli.w r1,  56(r30)
0016b8  63416f00  loadli.w r2,  52(r30)
0016bc  63024fe5  loadli.w r4,  -3424(r30)
0016c0  e3423fe5  loadli.w r5,  -3428(r30)
0016c4  9f130000  addli r7, zero, 1
0016c8  ab0100f0  lui r3, 983040
0016cc  e74ccfe8  storeli.w r12, -2868(r30)
0016d0  97113400  or r3, r8, r3
0016d4  8b101630  div.s r1, r12, r1
0016d8  8b902030  div.s r1, r1, r2
0016dc  2b0100f0  lui r2, 983040
0016e0  17112400  or r2, r8, r2
0016e4  9bb03000  slli r1, r1, 3
0016e8  0b924010  add.s r4, r1, r4
0016ec  ab0000f0  lui r1, 983040
0016f0  1b33a200  slli r6, r4, 10
0016f4  97101400  or r1, r8, r1
0016f8  670f4fea  storeli.w r4, -2576(r30)
0016fc  2b0200f0  lui r4, 983040
001700  8b125310  add.s r5, r6, r5
001704  e7446fea  storeli.w r6, -2740(r30)
001708  17124400  or r4, r8, r4
00170c  b3920228  sext_int2long r[6:7], r5
001710  97b47202  sll.d r[10:11], r[6:7], r7
001714  eb520f00  load.d r[6:7], 0(r30)
001718  9f038fe9  addli r7, r30, -2880
00171c  73b09300  store.d r[10:11], 0(r7)
001720  8ba29210  add.ul r[6:7], r[6:7], r[10:11]
001724  7fa1c201  l_gm2lm r2, r28, 0(r[6:7])
001728  1f01afe4  addli r2, r30, -3504
00172c  eb520100  load.d r[6:7], 0(r2)
001730  1f010ff6  addli r2, r30, -1280
001734  ffa12200  l_gm2lm r3, r2, 0(r[6:7])
001738  9f029fe4  addli r5, r30, -3512
00173c  6bd10200  load.d r[3:4], 0(r5)
001740  9f020ff8  addli r5, r30, -1024
001744  ff205100  l_gm2lm r1, r5, 0(r[3:4])
001748  9f018fe4  addli r3, r30, -3520
00174c  ebd00100  load.d r[2:3], 0(r3)
001750  9f010ffa  addli r3, r30, -768
001754  7fa23000  l_gm2lm r4, r3, 0(r[2:3])
001758  9f000ff4  addli r1, r30, -1536
00175c  1f018ff6  addli r2, r30, -1216
001760  00a00000  mfence { lm }
001764  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001768  9f008ff4  addli r1, r30, -1472
00176c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001770  9f000ff5  addli r1, r30, -1408
001774  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001778  9f008ff5  addli r1, r30, -1344
00177c  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
001780  9f000ff6  addli r1, r30, -1280
001784  e6c47180  vmerge_l.hf vr9, vr3, vr7
001788  e6c371a0  vmerge_h.hf vr7, vr3, vr7
00178c  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
001790  9f000feb  addli r1, r30, -2688
001794  00a00000  mfence { lm }
001798  66c31180  vmerge_l.hf vr6, vr3, vr1
00179c  e6c211a0  vmerge_h.hf vr5, vr3, vr1
0017a0  e6c02180  vmerge_l.hf vr1, vr3, vr2
0017a4  66c121a0  vmerge_h.hf vr2, vr3, vr2
0017a8  66c04180  vmerge_l.hf vr0, vr3, vr4
0017ac  66c241a0  vmerge_h.hf vr4, vr3, vr4
0017b0  66c58180  vmerge_l.hf vr10, vr3, vr8
0017b4  66c481a0  vmerge_h.hf vr8, vr3, vr8
0017b8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0017bc  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
0017c0  1f010ff7  addli r2, r30, -1152
0017c4  9694a402  vadd.f.mz.rn vr9{mr1}, vr9, vr10
0017c8  96938302  vadd.f.mz.rn vr7{mr1}, vr7, vr8
0017cc  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0017d0  1f018ff7  addli r2, r30, -1088
0017d4  42140102  vload_mask16.mz vr8{mr1}, 0(r2)
0017d8  66c5b180  vmerge_l.hf vr10, vr3, vr11
0017dc  e6c5b1a0  vmerge_h.hf vr11, vr3, vr11
0017e0  1613a302  vadd.f.mz.rn vr6{mr1}, vr6, vr10
0017e4  66c50180  vmerge_l.hf vr10, vr3, vr0
0017e8  66c001a0  vmerge_h.hf vr0, vr3, vr0
0017ec  9692b202  vadd.f.mz.rn vr5{mr1}, vr5, vr11
0017f0  e6c58180  vmerge_l.hf vr11, vr3, vr8
0017f4  66c481a0  vmerge_h.hf vr8, vr3, vr8
0017f8  16100102  vadd.f.mz.rn vr0{mr1}, vr2, vr0
0017fc  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001800  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
001804  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
001808  46109fc2  vstore_mask16.mz vr9{mr1}, 1536(r30)
00180c  46147fc2  vstore_mask16.mz vr7{mr1}, 1600(r30)
001810  46186fc2  vstore_mask16.mz vr6{mr1}, 1664(r30)
001814  461c5fc2  vstore_mask16.mz vr5{mr1}, 1728(r30)
001818  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
00181c  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
001820  1611b102  vadd.f.mz.rn vr2{mr1}, vr2, vr11
001824  46182fe2  vstore_mask16.mz vr2{mr1}, 1920(r30)
001828  461c4fe2  vstore_mask16.mz vr4{mr1}, 1984(r30)
00182c  00a00000  mfence { lm }
001830  63060ffc  loadli.w r12,  -512(r30)
001834  e3420ffc  loadli.w r5,  -508(r30)
001838  e3011ffc  loadli.w r3,  -504(r30)
00183c  e3491ffc  loadli.w r19,  -500(r30)
001840  63092ffc  loadli.w r18,  -496(r30)
001844  e3472ffc  loadli.w r15,  -492(r30)
001848  e3063ffc  loadli.w r13,  -488(r30)
00184c  e3453ffc  loadli.w r11,  -484(r30)
001850  63054ffc  loadli.w r10,  -480(r30)
001854  e3444ffc  loadli.w r9,  -476(r30)
001858  63045ffc  loadli.w r8,  -472(r30)
00185c  e3435ffc  loadli.w r7,  -468(r30)
001860  63036ffc  loadli.w r6,  -464(r30)
001864  63426ffc  loadli.w r4,  -460(r30)
001868  63017ffc  loadli.w r2,  -456(r30)
00186c  e3407ffc  loadli.w r1,  -452(r30)
001870  63078ffc  loadli.w r14,  -448(r30)
001874  63478ffc  loadli.w r14,  -444(r30)
001878  63079ffc  loadli.w r14,  -440(r30)
00187c  63479ffc  loadli.w r14,  -436(r30)
001880  6307affc  loadli.w r14,  -432(r30)
001884  6347affc  loadli.w r14,  -428(r30)
001888  6307bffc  loadli.w r14,  -424(r30)
00188c  6347bffc  loadli.w r14,  -420(r30)
001890  6307cffc  loadli.w r14,  -416(r30)
001894  6347cffc  loadli.w r14,  -412(r30)
001898  6307dffc  loadli.w r14,  -408(r30)
00189c  6347dffc  loadli.w r14,  -404(r30)
0018a0  6307effc  loadli.w r14,  -400(r30)
0018a4  6347effc  loadli.w r14,  -396(r30)
0018a8  6307fffc  loadli.w r14,  -392(r30)
0018ac  6347fffc  loadli.w r14,  -388(r30)
0018b0  63070ffd  loadli.w r14,  -384(r30)
0018b4  63470ffd  loadli.w r14,  -380(r30)
0018b8  63071ffd  loadli.w r14,  -376(r30)
0018bc  63471ffd  loadli.w r14,  -372(r30)
0018c0  63072ffd  loadli.w r14,  -368(r30)
0018c4  63472ffd  loadli.w r14,  -364(r30)
0018c8  63073ffd  loadli.w r14,  -360(r30)
0018cc  63473ffd  loadli.w r14,  -356(r30)
0018d0  63074ffd  loadli.w r14,  -352(r30)
0018d4  63474ffd  loadli.w r14,  -348(r30)
0018d8  63075ffd  loadli.w r14,  -344(r30)
0018dc  63475ffd  loadli.w r14,  -340(r30)
0018e0  63076ffd  loadli.w r14,  -336(r30)
0018e4  63476ffd  loadli.w r14,  -332(r30)
0018e8  63077ffd  loadli.w r14,  -328(r30)
0018ec  63477ffd  loadli.w r14,  -324(r30)
0018f0  63078ffd  loadli.w r14,  -320(r30)
0018f4  63478ffd  loadli.w r14,  -316(r30)
0018f8  63079ffd  loadli.w r14,  -312(r30)
0018fc  63479ffd  loadli.w r14,  -308(r30)
001900  6307affd  loadli.w r14,  -304(r30)
001904  6347affd  loadli.w r14,  -300(r30)
001908  6307bffd  loadli.w r14,  -296(r30)
00190c  6347bffd  loadli.w r14,  -292(r30)
001910  6307cffd  loadli.w r14,  -288(r30)
001914  6347cffd  loadli.w r14,  -284(r30)
001918  6307dffd  loadli.w r14,  -280(r30)
00191c  6347dffd  loadli.w r14,  -276(r30)
001920  6307effd  loadli.w r14,  -272(r30)
001924  6347effd  loadli.w r14,  -268(r30)
001928  6307fffd  loadli.w r14,  -264(r30)
00192c  6347fffd  loadli.w r14,  -260(r30)
001930  63070ffe  loadli.w r14,  -256(r30)
001934  63470ffe  loadli.w r14,  -252(r30)
001938  63071ffe  loadli.w r14,  -248(r30)
00193c  63471ffe  loadli.w r14,  -244(r30)
001940  63072ffe  loadli.w r14,  -240(r30)
001944  63472ffe  loadli.w r14,  -236(r30)
001948  63073ffe  loadli.w r14,  -232(r30)
00194c  63473ffe  loadli.w r14,  -228(r30)
001950  63074ffe  loadli.w r14,  -224(r30)
001954  63474ffe  loadli.w r14,  -220(r30)
001958  63075ffe  loadli.w r14,  -216(r30)
00195c  63475ffe  loadli.w r14,  -212(r30)
001960  63076ffe  loadli.w r14,  -208(r30)
001964  63476ffe  loadli.w r14,  -204(r30)
001968  63077ffe  loadli.w r14,  -200(r30)
00196c  63477ffe  loadli.w r14,  -196(r30)
001970  63078ffe  loadli.w r14,  -192(r30)
001974  63478ffe  loadli.w r14,  -188(r30)
001978  63079ffe  loadli.w r14,  -184(r30)
00197c  63479ffe  loadli.w r14,  -180(r30)
001980  6307affe  loadli.w r14,  -176(r30)
001984  6347affe  loadli.w r14,  -172(r30)
001988  6307bffe  loadli.w r14,  -168(r30)
00198c  6347bffe  loadli.w r14,  -164(r30)
001990  6307cffe  loadli.w r14,  -160(r30)
001994  6347cffe  loadli.w r14,  -156(r30)
001998  6307dffe  loadli.w r14,  -152(r30)
00199c  6347dffe  loadli.w r14,  -148(r30)
0019a0  6307effe  loadli.w r14,  -144(r30)
0019a4  6347effe  loadli.w r14,  -140(r30)
0019a8  6307fffe  loadli.w r14,  -136(r30)
0019ac  6347fffe  loadli.w r14,  -132(r30)
0019b0  63070fff  loadli.w r14,  -128(r30)
0019b4  63470fff  loadli.w r14,  -124(r30)
0019b8  63071fff  loadli.w r14,  -120(r30)
0019bc  63471fff  loadli.w r14,  -116(r30)
0019c0  63072fff  loadli.w r14,  -112(r30)
0019c4  63472fff  loadli.w r14,  -108(r30)
0019c8  63073fff  loadli.w r14,  -104(r30)
0019cc  63473fff  loadli.w r14,  -100(r30)
0019d0  63074fff  loadli.w r14,  -96(r30)
0019d4  63474fff  loadli.w r14,  -92(r30)
0019d8  63075fff  loadli.w r14,  -88(r30)
0019dc  63475fff  loadli.w r14,  -84(r30)
0019e0  63076fff  loadli.w r14,  -80(r30)
0019e4  63476fff  loadli.w r14,  -76(r30)
0019e8  63077fff  loadli.w r14,  -72(r30)
0019ec  63477fff  loadli.w r14,  -68(r30)
0019f0  63078fff  loadli.w r14,  -64(r30)
0019f4  63478fff  loadli.w r14,  -60(r30)
0019f8  63079fff  loadli.w r14,  -56(r30)
0019fc  63479fff  loadli.w r14,  -52(r30)
001a00  6307afff  loadli.w r14,  -48(r30)
001a04  6347afff  loadli.w r14,  -44(r30)
001a08  6307bfff  loadli.w r14,  -40(r30)
001a0c  6347bfff  loadli.w r14,  -36(r30)
001a10  6307cfff  loadli.w r14,  -32(r30)
001a14  6347cfff  loadli.w r14,  -28(r30)
001a18  6308dfff  loadli.w r16,  -24(r30)
001a1c  2b08807f  lui r16, 522240
001a20  17074601  and r14, r12, r20
001a24  1307e804  setlt.u r14, r16, r14
001a28  6348dfff  loadli.w r16,  -20(r30)
001a2c  6308efff  loadli.w r16,  -16(r30)
001a30  6348efff  loadli.w r16,  -12(r30)
001a34  6308ffff  loadli.w r16,  -8(r30)
001a38  6348ffff  loadli.w r16,  -4(r30)
001a3c  3b700700  bneq r14, zero, 28
001a40  1b470601  srli r14, r12, 16
001a44  1b071700  andi r14, r14, 1
001a48  0b16e610  add.s r12, r12, r14
001a4c  6307ffeb  loadli.w r14,  -2568(r30)
001a50  0b16e610  add.s r12, r12, r14
001a54  db010000  j 12
001a58  2b074000  lui r14, 1024
001a5c  1716e600  or r12, r12, r14
001a60  17874201  and r14, r5, r20
001a64  2b08807f  lui r16, 522240
001a68  1307e804  setlt.u r14, r16, r14
001a6c  3b700700  bneq r14, zero, 28
001a70  1bc70201  srli r14, r5, 16
001a74  1b071700  andi r14, r14, 1
001a78  8b92e210  add.s r5, r5, r14
001a7c  6307ffeb  loadli.w r14,  -2568(r30)
001a80  0b97e210  add.s r14, r5, r14
001a84  db010000  j 12
001a88  2b074000  lui r14, 1024
001a8c  1797e200  or r14, r5, r14
001a90  97824101  and r5, r3, r20
001a94  93025804  setlt.u r5, r16, r5
001a98  3bf00200  bneq r5, zero, 28
001a9c  9bc20101  srli r5, r3, 16
001aa0  9b821200  andi r5, r5, 1
001aa4  8b915110  add.s r3, r3, r5
001aa8  e302ffeb  loadli.w r5,  -2568(r30)
001aac  8b985110  add.s r17, r3, r5
001ab0  db010000  j 12
001ab4  ab024000  lui r5, 1024
001ab8  97985100  or r17, r3, r5
001abc  97814901  and r3, r19, r20
001ac0  ab02807f  lui r5, 522240
001ac4  93813204  setlt.u r3, r5, r3
001ac8  3bf00100  bneq r3, zero, 28
001acc  9bc10901  srli r3, r19, 16
001ad0  e302ffeb  loadli.w r5,  -2568(r30)
001ad4  9b811100  andi r3, r3, 1
001ad8  8b913910  add.s r3, r19, r3
001adc  8b995110  add.s r19, r3, r5
001ae0  db010000  j 12
001ae4  ab014000  lui r3, 1024
001ae8  97993900  or r19, r19, r3
001aec  97014901  and r3, r18, r20
001af0  ab02807f  lui r5, 522240
001af4  93813204  setlt.u r3, r5, r3
001af8  3bf00100  bneq r3, zero, 28
001afc  9b410901  srli r3, r18, 16
001b00  e302ffeb  loadli.w r5,  -2568(r30)
001b04  9b811100  andi r3, r3, 1
001b08  8b113910  add.s r3, r18, r3
001b0c  8b925110  add.s r5, r3, r5
001b10  db010000  j 12
001b14  ab014000  lui r3, 1024
001b18  97123900  or r5, r18, r3
001b1c  97814701  and r3, r15, r20
001b20  93013804  setlt.u r3, r16, r3
001b24  3bf00100  bneq r3, zero, 28
001b28  9bc10701  srli r3, r15, 16
001b2c  9b811100  andi r3, r3, 1
001b30  8b913710  add.s r3, r15, r3
001b34  e307ffeb  loadli.w r15,  -2568(r30)
001b38  8b91f110  add.s r3, r3, r15
001b3c  db010000  j 12
001b40  ab014000  lui r3, 1024
001b44  97913700  or r3, r15, r3
001b48  97874601  and r15, r13, r20
001b4c  9307f804  setlt.u r15, r16, r15
001b50  3bf00700  bneq r15, zero, 28
001b54  9bc70601  srli r15, r13, 16
001b58  9b871700  andi r15, r15, 1
001b5c  8b96f610  add.s r13, r13, r15
001b60  e307ffeb  loadli.w r15,  -2568(r30)
001b64  8b96f610  add.s r13, r13, r15
001b68  db010000  j 12
001b6c  ab074000  lui r15, 1024
001b70  9796f600  or r13, r13, r15
001b74  97874501  and r15, r11, r20
001b78  9307f804  setlt.u r15, r16, r15
001b7c  3bf00700  bneq r15, zero, 28
001b80  9bc70501  srli r15, r11, 16
001b84  9b871700  andi r15, r15, 1
001b88  8b95f510  add.s r11, r11, r15
001b8c  e307ffeb  loadli.w r15,  -2568(r30)
001b90  8b95f510  add.s r11, r11, r15
001b94  db010000  j 12
001b98  ab074000  lui r15, 1024
001b9c  9795f500  or r11, r11, r15
001ba0  97074501  and r15, r10, r20
001ba4  9307f804  setlt.u r15, r16, r15
001ba8  3bf00700  bneq r15, zero, 28
001bac  9b470501  srli r15, r10, 16
001bb0  9b871700  andi r15, r15, 1
001bb4  0b15f510  add.s r10, r10, r15
001bb8  e307ffeb  loadli.w r15,  -2568(r30)
001bbc  0b15f510  add.s r10, r10, r15
001bc0  db010000  j 12
001bc4  ab074000  lui r15, 1024
001bc8  1715f500  or r10, r10, r15
001bcc  97874401  and r15, r9, r20
001bd0  9307f804  setlt.u r15, r16, r15
001bd4  3bf00700  bneq r15, zero, 28
001bd8  9bc70401  srli r15, r9, 16
001bdc  9b871700  andi r15, r15, 1
001be0  8b94f410  add.s r9, r9, r15
001be4  e307ffeb  loadli.w r15,  -2568(r30)
001be8  8b94f410  add.s r9, r9, r15
001bec  db010000  j 12
001bf0  ab074000  lui r15, 1024
001bf4  9794f400  or r9, r9, r15
001bf8  97074401  and r15, r8, r20
001bfc  9307f804  setlt.u r15, r16, r15
001c00  3bf00700  bneq r15, zero, 28
001c04  9b470401  srli r15, r8, 16
001c08  9b871700  andi r15, r15, 1
001c0c  0b14f410  add.s r8, r8, r15
001c10  e307ffeb  loadli.w r15,  -2568(r30)
001c14  0b14f410  add.s r8, r8, r15
001c18  db010000  j 12
001c1c  ab074000  lui r15, 1024
001c20  1714f400  or r8, r8, r15
001c24  97874301  and r15, r7, r20
001c28  9307f804  setlt.u r15, r16, r15
001c2c  3bf00700  bneq r15, zero, 28
001c30  9bc70301  srli r15, r7, 16
001c34  9b871700  andi r15, r15, 1
001c38  8b93f310  add.s r7, r7, r15
001c3c  e307ffeb  loadli.w r15,  -2568(r30)
001c40  8b93f310  add.s r7, r7, r15
001c44  db010000  j 12
001c48  ab074000  lui r15, 1024
001c4c  9793f300  or r7, r7, r15
001c50  97074301  and r15, r6, r20
001c54  9307f804  setlt.u r15, r16, r15
001c58  3bf00700  bneq r15, zero, 28
001c5c  9b470301  srli r15, r6, 16
001c60  9b871700  andi r15, r15, 1
001c64  0b13f310  add.s r6, r6, r15
001c68  e307ffeb  loadli.w r15,  -2568(r30)
001c6c  0b13f310  add.s r6, r6, r15
001c70  db010000  j 12
001c74  ab074000  lui r15, 1024
001c78  1713f300  or r6, r6, r15
001c7c  97074201  and r15, r4, r20
001c80  9307f804  setlt.u r15, r16, r15
001c84  3bf00700  bneq r15, zero, 28
001c88  9b470201  srli r15, r4, 16
001c8c  9b871700  andi r15, r15, 1
001c90  0b12f210  add.s r4, r4, r15
001c94  e307ffeb  loadli.w r15,  -2568(r30)
001c98  0b12f210  add.s r4, r4, r15
001c9c  db010000  j 12
001ca0  ab074000  lui r15, 1024
001ca4  1712f200  or r4, r4, r15
001ca8  97074101  and r15, r2, r20
001cac  9307f804  setlt.u r15, r16, r15
001cb0  3bf00700  bneq r15, zero, 28
001cb4  9b470101  srli r15, r2, 16
001cb8  9b871700  andi r15, r15, 1
001cbc  0b11f110  add.s r2, r2, r15
001cc0  e307ffeb  loadli.w r15,  -2568(r30)
001cc4  0b11f110  add.s r2, r2, r15
001cc8  db010000  j 12
001ccc  ab074000  lui r15, 1024
001cd0  1711f100  or r2, r2, r15
001cd4  97874001  and r15, r1, r20
001cd8  9307f804  setlt.u r15, r16, r15
001cdc  3bf00700  bneq r15, zero, 28
001ce0  9bc70001  srli r15, r1, 16
001ce4  9b871700  andi r15, r15, 1
001ce8  8b90f010  add.s r1, r1, r15
001cec  e307ffeb  loadli.w r15,  -2568(r30)
001cf0  8b90f010  add.s r1, r1, r15
001cf4  db010000  j 12
001cf8  ab074000  lui r15, 1024
001cfc  9790f000  or r1, r1, r15
001d00  ab07ffff  lui r15, 1048560
001d04  1788f800  and r16, r17, r15
001d08  1706f600  and r12, r12, r15
001d0c  1707f700  and r14, r14, r15
001d10  9782f200  and r5, r5, r15
001d14  9781f100  and r3, r3, r15
001d18  970cf100  and r25, r2, r15
001d1c  6301efeb  loadli.w r2,  -2576(r30)
001d20  1709f500  and r18, r10, r15
001d24  178af400  and r20, r9, r15
001d28  970af400  and r21, r8, r15
001d2c  178df000  and r26, r1, r15
001d30  9788f900  and r17, r19, r15
001d34  9786f600  and r13, r13, r15
001d38  9785f500  and r11, r11, r15
001d3c  178bf300  and r22, r7, r15
001d40  970bf300  and r23, r6, r15
001d44  170cf200  and r24, r4, r15
001d48  9f000004  addli r1, zero, 512
001d4c  e704cfea  storeli.w r12, -2744(r30)
001d50  1f040600  addli r8, r12, 0
001d54  6744efea  storeli.w r14, -2748(r30)
001d58  9f040700  addli r9, r14, 0
001d5c  1f050800  addli r10, r16, 0
001d60  1f860200  addli r12, r5, 0
001d64  1f870100  addli r14, r3, 0
001d68  67040feb  storeli.w r16, -2752(r30)
001d6c  e7431feb  storeli.w r17, -2756(r30)
001d70  e7035fea  storeli.w r5, -2760(r30)
001d74  67433fea  storeli.w r3, -2764(r30)
001d78  6703dfea  storeli.w r13, -2768(r30)
001d7c  e742bfea  storeli.w r11, -2772(r30)
001d80  e7022feb  storeli.w r18, -2776(r30)
001d84  67424feb  storeli.w r20, -2780(r30)
001d88  67025feb  storeli.w r21, -2784(r30)
001d8c  e7416feb  storeli.w r22, -2788(r30)
001d90  e7017feb  storeli.w r23, -2792(r30)
001d94  67418feb  storeli.w r24, -2796(r30)
001d98  67019feb  storeli.w r25, -2800(r30)
001d9c  e740afeb  storeli.w r26, -2804(r30)
001da0  3f111100  blt.s r2, r1, 68
001da4  1f040000  addli r8, zero, 0
001da8  9f040000  addli r9, zero, 0
001dac  1f050000  addli r10, zero, 0
001db0  9f080000  addli r17, zero, 0
001db4  1f060000  addli r12, zero, 0
001db8  1f070000  addli r14, zero, 0
001dbc  9f060000  addli r13, zero, 0
001dc0  9f050000  addli r11, zero, 0
001dc4  1f090000  addli r18, zero, 0
001dc8  1f0a0000  addli r20, zero, 0
001dcc  9f0a0000  addli r21, zero, 0
001dd0  1f0b0000  addli r22, zero, 0
001dd4  9f0b0000  addli r23, zero, 0
001dd8  1f0c0000  addli r24, zero, 0
001ddc  9f0c0000  addli r25, zero, 0
001de0  1f0d0000  addli r26, zero, 0
001de4  9f008e00  addli r1, r28, 64
001de8  674b1fe8  storeli.w r1, -2892(r30)
001dec  9f000e01  addli r1, r28, 128
001df0  e70b1fe8  storeli.w r1, -2888(r30)
001df4  9f008e01  addli r1, r28, 192
001df8  e74b1fe8  storeli.w r1, -2884(r30)
001dfc  9f008000  addli r1, zero, 64
001e00  00a00000  mfence { lm }
001e04  5b180000  j 192
001e08  1f060000  addli r12, zero, 0
001e0c  9f060000  addli r13, zero, 0
001e10  9f080000  addli r17, zero, 0
001e14  1f090000  addli r18, zero, 0
001e18  9f090000  addli r19, zero, 0
001e1c  1f0e0000  addli r28, zero, 0
001e20  9f0d0000  addli r27, zero, 0
001e24  9f050000  addli r11, zero, 0
001e28  9f020000  addli r5, zero, 0
001e2c  1f020000  addli r4, zero, 0
001e30  9f070000  addli r15, zero, 0
001e34  9f010000  addli r3, zero, 0
001e38  1f010000  addli r2, zero, 0
001e3c  1f030000  addli r6, zero, 0
001e40  1f080000  addli r16, zero, 0
001e44  9f030000  addli r7, zero, 0
001e48  9f040500  addli r9, r10, 0
001e4c  1f050700  addli r10, r14, 0
001e50  63040feb  loadli.w r8,  -2688(r30)
001e54  1f070a00  addli r14, r20, 0
001e58  630acfea  loadli.w r20,  -2720(r30)
001e5c  8beb2b10  add.f.rn r23, r23, r2
001e60  8beafa10  add.f.rn r21, r21, r15
001e64  0b6b3b10  add.f.rn r22, r22, r3
001e68  0b6c6c10  add.f.rn r24, r24, r6
001e6c  8bec0c11  add.f.rn r25, r25, r16
001e70  0b6d7d10  add.f.rn r26, r26, r7
001e74  9f808000  addli r1, r1, 64
001e78  1f010004  addli r2, zero, 512
001e7c  0b651511  add.f.rn r10, r10, r17
001e80  e308ffea  loadli.w r17,  -2696(r30)
001e84  8be4d410  add.f.rn r9, r9, r13
001e88  e346dfea  loadli.w r13,  -2708(r30)
001e8c  0b67c711  add.f.rn r14, r14, r28
001e90  1f0e0ff4  addli r28, r30, -1536
001e94  0b64c410  add.f.rn r8, r8, r12
001e98  6306efea  loadli.w r12,  -2704(r30)
001e9c  0b6a4a10  add.f.rn r20, r20, r4
001ea0  8be82811  add.f.rn r17, r17, r18
001ea4  6309dfea  loadli.w r18,  -2712(r30)
001ea8  8be6b611  add.f.rn r13, r13, r27
001eac  0b663611  add.f.rn r12, r12, r19
001eb0  0b69b910  add.f.rn r18, r18, r11
001eb4  9f050900  addli r11, r18, 0
001eb8  6349cfea  loadli.w r18,  -2716(r30)
001ebc  0b695910  add.f.rn r18, r18, r5
001ec0  b7c82002  beq r1, r2, 1584
001ec4  0b121e10  add.s r4, r28, r1
001ec8  92303002  vadd.s.mz vr1{mr1}, zero, vr3
001ecc  67064feb  storeli.w r20, -2720(r30)
001ed0  1f1a0000  addli r20, zero, 1
001ed4  67462feb  storeli.w r18, -2716(r30)
001ed8  e706bfea  storeli.w r11, -2712(r30)
001edc  e746dfea  storeli.w r13, -2708(r30)
001ee0  6707cfea  storeli.w r12, -2704(r30)
001ee4  e7071feb  storeli.w r17, -2696(r30)
001ee8  67088fea  storeli.w r8, -2688(r30)
001eec  12313002  vadd.s.mz vr2{mr1}, zero, vr3
001ef0  eb320200  load.hu r5, 0(r4)
001ef4  6b332200  load.hu r6, 2(r4)
001ef8  7e010ae0  vmmov mr2, r20
001efc  eb31a201  load.hu r3, 26(r4)
001f00  6b31c201  load.hu r2, 28(r4)
001f04  eb334200  load.hu r7, 4(r4)
001f08  6b346200  load.hu r8, 6(r4)
001f0c  eb358200  load.hu r11, 8(r4)
001f10  6b36a200  load.hu r12, 10(r4)
001f14  eb36c200  load.hu r13, 12(r4)
001f18  eb37e200  load.hu r15, 14(r4)
001f1c  6b380201  load.hu r16, 16(r4)
001f20  eb382201  load.hu r17, 18(r4)
001f24  6b394201  load.hu r18, 20(r4)
001f28  eb396201  load.hu r19, 22(r4)
001f2c  eb3d8201  load.hu r27, 24(r4)
001f30  6b32e201  load.hu r4, 30(r4)
001f34  b3920218  bfloat2float.rn r5, r5
001f38  b3910118  bfloat2float.rn r3, r3
001f3c  33110118  bfloat2float.rn r2, r2
001f40  eaa01234  vor.u.mh vr1{mr2}, r5, vr1
001f44  b3120318  bfloat2float.rn r5, r6
001f48  1f230000  addli r6, zero, 2
001f4c  fe0103e0  vmmov mr3, r6
001f50  1f430000  addli r6, zero, 4
001f54  eaa01236  vor.u.mh vr1{mr3}, r5, vr1
001f58  b3920318  bfloat2float.rn r5, r7
001f5c  7e0003e0  vmmov mr0, r6
001f60  1f031000  addli r6, zero, 8
001f64  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
001f68  b3120418  bfloat2float.rn r5, r8
001f6c  7e0003e0  vmmov mr0, r6
001f70  1f032000  addli r6, zero, 16
001f74  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
001f78  b3920518  bfloat2float.rn r5, r11
001f7c  7e0003e0  vmmov mr0, r6
001f80  1f034000  addli r6, zero, 32
001f84  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
001f88  b3120618  bfloat2float.rn r5, r12
001f8c  7e0003e0  vmmov mr0, r6
001f90  1f038000  addli r6, zero, 64
001f94  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
001f98  b3920618  bfloat2float.rn r5, r13
001f9c  7e0003e0  vmmov mr0, r6
001fa0  1f030001  addli r6, zero, 128
001fa4  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
001fa8  b3920718  bfloat2float.rn r5, r15
001fac  7e0003e0  vmmov mr0, r6
001fb0  1f030002  addli r6, zero, 256
001fb4  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
001fb8  b3120818  bfloat2float.rn r5, r16
001fbc  7e0003e0  vmmov mr0, r6
001fc0  1f030004  addli r6, zero, 512
001fc4  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
001fc8  b3920818  bfloat2float.rn r5, r17
001fcc  7e0003e0  vmmov mr0, r6
001fd0  1f030008  addli r6, zero, 1024
001fd4  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
001fd8  b3120918  bfloat2float.rn r5, r18
001fdc  7e0003e0  vmmov mr0, r6
001fe0  1f030010  addli r6, zero, 2048
001fe4  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
001fe8  b3920918  bfloat2float.rn r5, r19
001fec  7e0003e0  vmmov mr0, r6
001ff0  1f030020  addli r6, zero, 4096
001ff4  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
001ff8  b3920d18  bfloat2float.rn r5, r27
001ffc  7e0003e0  vmmov mr0, r6
002000  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002004  9f020040  addli r5, zero, 8192
002008  7e8002e0  vmmov mr0, r5
00200c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
002010  ab410000  lui r3, 4
002014  7e8001e0  vmmov mr0, r3
002018  9f010ff6  addli r3, r30, -1280
00201c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002020  33110218  bfloat2float.rn r2, r4
002024  2b820000  lui r4, 8
002028  8b911110  add.s r3, r3, r1
00202c  7e0002e0  vmmov mr0, r4
002030  ea201130  vor.u.mh vr1{mr0}, r2, vr1
002034  6bb10100  load.hu r2, 0(r3)
002038  6bb22100  load.hu r4, 2(r3)
00203c  ebb24100  load.hu r5, 4(r3)
002040  6bb36100  load.hu r6, 6(r3)
002044  ebb38100  load.hu r7, 8(r3)
002048  6bb4a100  load.hu r8, 10(r3)
00204c  ebb5c100  load.hu r11, 12(r3)
002050  6bb6e100  load.hu r12, 14(r3)
002054  ebb60101  load.hu r13, 16(r3)
002058  ebb72101  load.hu r15, 18(r3)
00205c  6bb84101  load.hu r16, 20(r3)
002060  ebb86101  load.hu r17, 22(r3)
002064  6bb98101  load.hu r18, 24(r3)
002068  ebb9a101  load.hu r19, 26(r3)
00206c  ebbdc101  load.hu r27, 28(r3)
002070  ebb1e101  load.hu r3, 30(r3)
002074  33110118  bfloat2float.rn r2, r2
002078  6a212134  vor.u.mh vr2{mr2}, r2, vr2
00207c  33110218  bfloat2float.rn r2, r4
002080  1f420000  addli r4, zero, 4
002084  7e0102e0  vmmov mr2, r4
002088  1f021000  addli r4, zero, 8
00208c  6a212136  vor.u.mh vr2{mr3}, r2, vr2
002090  33910218  bfloat2float.rn r2, r5
002094  6a212134  vor.u.mh vr2{mr2}, r2, vr2
002098  33110318  bfloat2float.rn r2, r6
00209c  7e0102e0  vmmov mr2, r4
0020a0  1f022000  addli r4, zero, 16
0020a4  6a212134  vor.u.mh vr2{mr2}, r2, vr2
0020a8  33910318  bfloat2float.rn r2, r7
0020ac  7e0102e0  vmmov mr2, r4
0020b0  1f024000  addli r4, zero, 32
0020b4  6a212134  vor.u.mh vr2{mr2}, r2, vr2
0020b8  33110418  bfloat2float.rn r2, r8
0020bc  7e0102e0  vmmov mr2, r4
0020c0  1f028000  addli r4, zero, 64
0020c4  6a212134  vor.u.mh vr2{mr2}, r2, vr2
0020c8  33910518  bfloat2float.rn r2, r11
0020cc  7e0102e0  vmmov mr2, r4
0020d0  1f020001  addli r4, zero, 128
0020d4  6a212134  vor.u.mh vr2{mr2}, r2, vr2
0020d8  33110618  bfloat2float.rn r2, r12
0020dc  7e0102e0  vmmov mr2, r4
0020e0  1f020002  addli r4, zero, 256
0020e4  6a212134  vor.u.mh vr2{mr2}, r2, vr2
0020e8  33910618  bfloat2float.rn r2, r13
0020ec  7e0102e0  vmmov mr2, r4
0020f0  1f020004  addli r4, zero, 512
0020f4  6a212134  vor.u.mh vr2{mr2}, r2, vr2
0020f8  33910718  bfloat2float.rn r2, r15
0020fc  7e0102e0  vmmov mr2, r4
002100  1f020008  addli r4, zero, 1024
002104  6a212134  vor.u.mh vr2{mr2}, r2, vr2
002108  33110818  bfloat2float.rn r2, r16
00210c  7e0102e0  vmmov mr2, r4
002110  1f020010  addli r4, zero, 2048
002114  6a212134  vor.u.mh vr2{mr2}, r2, vr2
002118  33910818  bfloat2float.rn r2, r17
00211c  7e0102e0  vmmov mr2, r4
002120  1f020020  addli r4, zero, 4096
002124  6a212134  vor.u.mh vr2{mr2}, r2, vr2
002128  33110918  bfloat2float.rn r2, r18
00212c  7e0102e0  vmmov mr2, r4
002130  1f020040  addli r4, zero, 8192
002134  6a212134  vor.u.mh vr2{mr2}, r2, vr2
002138  33910918  bfloat2float.rn r2, r19
00213c  7e0102e0  vmmov mr2, r4
002140  2b420000  lui r4, 4
002144  6a212134  vor.u.mh vr2{mr2}, r2, vr2
002148  33910d18  bfloat2float.rn r2, r27
00214c  7e0102e0  vmmov mr2, r4
002150  6a212134  vor.u.mh vr2{mr2}, r2, vr2
002154  33910118  bfloat2float.rn r2, r3
002158  ab01807f  lui r3, 522240
00215c  6a212130  vor.u.mh vr2{mr0}, r2, vr2
002160  1f010ff0  addli r2, r30, -2048
002164  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
002168  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00216c  00a00000  mfence { lm }
002170  e3030ff0  loadli.w r7,  -2048(r30)
002174  63430ff0  loadli.w r6,  -2044(r30)
002178  63021ff0  loadli.w r4,  -2040(r30)
00217c  634e1ff0  loadli.w r28,  -2036(r30)
002180  e3062ff0  loadli.w r13,  -2032(r30)
002184  e34d2ff0  loadli.w r27,  -2028(r30)
002188  63083ff0  loadli.w r16,  -2024(r30)
00218c  e3453ff0  loadli.w r11,  -2020(r30)
002190  e3024ff0  loadli.w r5,  -2016(r30)
002194  63494ff0  loadli.w r18,  -2012(r30)
002198  6341ffeb  loadli.w r2,  -2564(r30)
00219c  e3075ff0  loadli.w r15,  -2008(r30)
0021a0  17812300  and r2, r7, r2
0021a4  13842104  setlt.u r8, r3, r2
0021a8  e3415ff0  loadli.w r3,  -2004(r30)
0021ac  63016ff0  loadli.w r2,  -2000(r30)
0021b0  e3496ff0  loadli.w r19,  -1996(r30)
0021b4  e3087ff0  loadli.w r17,  -1992(r30)
0021b8  63467ff0  loadli.w r12,  -1988(r30)
0021bc  3b700400  bneq r8, zero, 28
0021c0  1bc40301  srli r8, r7, 16
0021c4  1b041400  andi r8, r8, 1
0021c8  8b938310  add.s r7, r7, r8
0021cc  6304ffeb  loadli.w r8,  -2568(r30)
0021d0  8b938310  add.s r7, r7, r8
0021d4  db010000  j 12
0021d8  2b044000  lui r8, 1024
0021dc  97938300  or r7, r7, r8
0021e0  e7457fea  storeli.w r7, -2724(r30)
0021e4  e343ffeb  loadli.w r7,  -2564(r30)
0021e8  2b04807f  lui r8, 522240
0021ec  97037300  and r7, r6, r7
0021f0  93037404  setlt.u r7, r8, r7
0021f4  3bf00300  bneq r7, zero, 28
0021f8  9b430301  srli r7, r6, 16
0021fc  9b831300  andi r7, r7, 1
002200  0b137310  add.s r6, r6, r7
002204  e303ffeb  loadli.w r7,  -2568(r30)
002208  0b137310  add.s r6, r6, r7
00220c  db010000  j 12
002210  ab034000  lui r7, 1024
002214  17137300  or r6, r6, r7
002218  e7056fea  storeli.w r6, -2728(r30)
00221c  6343ffeb  loadli.w r6,  -2564(r30)
002220  ab03807f  lui r7, 522240
002224  17036200  and r6, r4, r6
002228  13836304  setlt.u r6, r7, r6
00222c  3b700300  bneq r6, zero, 28
002230  1b430201  srli r6, r4, 16
002234  1b031300  andi r6, r6, 1
002238  0b126210  add.s r4, r4, r6
00223c  6303ffeb  loadli.w r6,  -2568(r30)
002240  0b126210  add.s r4, r4, r6
002244  5b020000  j 16
002248  2b034000  lui r6, 1024
00224c  17126200  or r4, r4, r6
002250  6303ffeb  loadli.w r6,  -2568(r30)
002254  67454fea  storeli.w r4, -2732(r30)
002258  6342ffeb  loadli.w r4,  -2564(r30)
00225c  17024e00  and r4, r28, r4
002260  13824304  setlt.u r4, r7, r4
002264  3b600200  bneq r4, zero, 24
002268  1b420e01  srli r4, r28, 16
00226c  1b021200  andi r4, r4, 1
002270  0b124e10  add.s r4, r28, r4
002274  0b1e6210  add.s r28, r4, r6
002278  db010000  j 12
00227c  2b024000  lui r4, 1024
002280  171e4e00  or r28, r28, r4
002284  6344ffeb  loadli.w r8,  -2564(r30)
002288  17828600  and r4, r13, r8
00228c  13824304  setlt.u r4, r7, r4
002290  3b600200  bneq r4, zero, 24
002294  1bc20601  srli r4, r13, 16
002298  1b021200  andi r4, r4, 1
00229c  0b924610  add.s r4, r13, r4
0022a0  8b166210  add.s r13, r4, r6
0022a4  db010000  j 12
0022a8  2b024000  lui r4, 1024
0022ac  97964600  or r13, r13, r4
0022b0  17828d00  and r4, r27, r8
0022b4  13824304  setlt.u r4, r7, r4
0022b8  3b600200  bneq r4, zero, 24
0022bc  1bc20d01  srli r4, r27, 16
0022c0  1b021200  andi r4, r4, 1
0022c4  0b924d10  add.s r4, r27, r4
0022c8  0b126210  add.s r4, r4, r6
0022cc  db010000  j 12
0022d0  2b024000  lui r4, 1024
0022d4  17924d00  or r4, r27, r4
0022d8  67054fea  storeli.w r4, -2736(r30)
0022dc  17028800  and r4, r16, r8
0022e0  13824304  setlt.u r4, r7, r4
0022e4  3b600200  bneq r4, zero, 24
0022e8  1b420801  srli r4, r16, 16
0022ec  1b021200  andi r4, r4, 1
0022f0  0b124810  add.s r4, r16, r4
0022f4  8b1d6210  add.s r27, r4, r6
0022f8  db010000  j 12
0022fc  2b024000  lui r4, 1024
002300  971d4800  or r27, r16, r4
002304  17828500  and r4, r11, r8
002308  13824304  setlt.u r4, r7, r4
00230c  3b600200  bneq r4, zero, 24
002310  1bc20501  srli r4, r11, 16
002314  1b021200  andi r4, r4, 1
002318  0b924510  add.s r4, r11, r4
00231c  8b156210  add.s r11, r4, r6
002320  db010000  j 12
002324  2b024000  lui r4, 1024
002328  97954500  or r11, r11, r4
00232c  17828200  and r4, r5, r8
002330  13824304  setlt.u r4, r7, r4
002334  3b600200  bneq r4, zero, 24
002338  1bc20201  srli r4, r5, 16
00233c  1b021200  andi r4, r4, 1
002340  0b924210  add.s r4, r5, r4
002344  8b126210  add.s r5, r4, r6
002348  db010000  j 12
00234c  2b024000  lui r4, 1024
002350  97924200  or r5, r5, r4
002354  17028900  and r4, r18, r8
002358  13824304  setlt.u r4, r7, r4
00235c  3b600200  bneq r4, zero, 24
002360  1b420901  srli r4, r18, 16
002364  1b021200  andi r4, r4, 1
002368  0b124910  add.s r4, r18, r4
00236c  0b186210  add.s r16, r4, r6
002370  db010000  j 12
002374  2b024000  lui r4, 1024
002378  17184900  or r16, r18, r4
00237c  17828700  and r4, r15, r8
002380  13824304  setlt.u r4, r7, r4
002384  3b600200  bneq r4, zero, 24
002388  1bc20701  srli r4, r15, 16
00238c  1b021200  andi r4, r4, 1
002390  0b924710  add.s r4, r15, r4
002394  8b176210  add.s r15, r4, r6
002398  db010000  j 12
00239c  2b024000  lui r4, 1024
0023a0  97974700  or r15, r15, r4
0023a4  17828100  and r4, r3, r8
0023a8  13824304  setlt.u r4, r7, r4
0023ac  3b600200  bneq r4, zero, 24
0023b0  1bc20101  srli r4, r3, 16
0023b4  1b021200  andi r4, r4, 1
0023b8  8b914110  add.s r3, r3, r4
0023bc  8b916110  add.s r3, r3, r6
0023c0  db010000  j 12
0023c4  2b024000  lui r4, 1024
0023c8  97914100  or r3, r3, r4
0023cc  17028100  and r4, r2, r8
0023d0  13824304  setlt.u r4, r7, r4
0023d4  3b600200  bneq r4, zero, 24
0023d8  1b420101  srli r4, r2, 16
0023dc  1b021200  andi r4, r4, 1
0023e0  0b114110  add.s r2, r2, r4
0023e4  0b116110  add.s r2, r2, r6
0023e8  db010000  j 12
0023ec  2b024000  lui r4, 1024
0023f0  17114100  or r2, r2, r4
0023f4  17828900  and r4, r19, r8
0023f8  13824304  setlt.u r4, r7, r4
0023fc  3b600200  bneq r4, zero, 24
002400  1bc20901  srli r4, r19, 16
002404  1b021200  andi r4, r4, 1
002408  0b924910  add.s r4, r19, r4
00240c  0b136210  add.s r6, r4, r6
002410  db010000  j 12
002414  2b024000  lui r4, 1024
002418  17934900  or r6, r19, r4
00241c  17828800  and r4, r17, r8
002420  1f0a0700  addli r20, r14, 0
002424  13824304  setlt.u r4, r7, r4
002428  3b700200  bneq r4, zero, 28
00242c  1bc20801  srli r4, r17, 16
002430  e303ffeb  loadli.w r7,  -2568(r30)
002434  1b021200  andi r4, r4, 1
002438  0b924810  add.s r4, r17, r4
00243c  8b137210  add.s r7, r4, r7
002440  db010000  j 12
002444  2b024000  lui r4, 1024
002448  97934800  or r7, r17, r4
00244c  17028600  and r4, r12, r8
002450  2b04807f  lui r8, 522240
002454  1f070500  addli r14, r10, 0
002458  1f850400  addli r10, r9, 0
00245c  13024404  setlt.u r4, r8, r4
002460  3b700200  bneq r4, zero, 28
002464  1b420601  srli r4, r12, 16
002468  6304ffeb  loadli.w r8,  -2568(r30)
00246c  1b021200  andi r4, r4, 1
002470  0b124610  add.s r4, r12, r4
002474  0b148210  add.s r8, r4, r8
002478  db010000  j 12
00247c  2b024000  lui r4, 1024
002480  17144600  or r8, r12, r4
002484  e304efeb  loadli.w r9,  -2576(r30)
002488  1f020004  addli r4, zero, 512
00248c  3fa04400  blt.s r9, r4, 8
002490  5b2fffff  j -1672
002494  6342bfea  loadli.w r4,  -2724(r30)
002498  ab04ffff  lui r9, 1048560
00249c  9f890600  addli r19, r13, 0
0024a0  17099e00  and r18, r28, r9
0024a4  97899900  and r19, r19, r9
0024a8  978d9d00  and r27, r27, r9
0024ac  97859500  and r11, r11, r9
0024b0  97829200  and r5, r5, r9
0024b4  97879700  and r15, r15, r9
0024b8  97819100  and r3, r3, r9
0024bc  17019100  and r2, r2, r9
0024c0  17039300  and r6, r6, r9
0024c4  17069200  and r12, r4, r9
0024c8  6302bfea  loadli.w r4,  -2728(r30)
0024cc  97069200  and r13, r4, r9
0024d0  6342afea  loadli.w r4,  -2732(r30)
0024d4  97089200  and r17, r4, r9
0024d8  6302afea  loadli.w r4,  -2736(r30)
0024dc  170e9200  and r28, r4, r9
0024e0  17029800  and r4, r16, r9
0024e4  17889300  and r16, r7, r9
0024e8  97039400  and r7, r8, r9
0024ec  db2bffff  j -1700
0024f0  8b609410  add.f.rn r1, r8, r9
0024f4  63415fe5  loadli.w r2,  -3412(r30)
0024f8  8be0a010  add.f.rn r1, r1, r10
0024fc  8be01011  add.f.rn r1, r1, r17
002500  8be0c010  add.f.rn r1, r1, r12
002504  8be0e010  add.f.rn r1, r1, r14
002508  8be0d010  add.f.rn r1, r1, r13
00250c  8be0b010  add.f.rn r1, r1, r11
002510  8be02011  add.f.rn r1, r1, r18
002514  8be04011  add.f.rn r1, r1, r20
002518  8be05011  add.f.rn r1, r1, r21
00251c  8be06011  add.f.rn r1, r1, r22
002520  8be07011  add.f.rn r1, r1, r23
002524  8be08011  add.f.rn r1, r1, r24
002528  8be09011  add.f.rn r1, r1, r25
00252c  8be0a011  add.f.rn r1, r1, r26
002530  73601100  stores.w r1, 0(r2)
002534  00a00300  mfence { lm, sm, gm }
002538  6342afe9  loadli.w r4,  -2860(r30)
00253c  80210204  csr_set csr3, r4
002540  00d00100  sync_group
002544  e300afe9  loadli.w r1,  -2864(r30)
002548  3ba10000  bneq r1, zero, 72
00254c  e3426fe5  loadli.w r5,  -3404(r30)
002550  efc00200  loads.w r1, 0(r5)
002554  6fc14200  loads.w r2, 4(r5)
002558  efc18200  loads.w r3, 8(r5)
00255c  8be02010  add.f.rn r1, r1, r2
002560  6fc1c200  loads.w r2, 12(r5)
002564  8be03010  add.f.rn r1, r1, r3
002568  efc10201  loads.w r3, 16(r5)
00256c  8be02010  add.f.rn r1, r1, r2
002570  6fc14201  loads.w r2, 20(r5)
002574  8be03010  add.f.rn r1, r1, r3
002578  efc18201  loads.w r3, 24(r5)
00257c  8be02010  add.f.rn r1, r1, r2
002580  6fc1c201  loads.w r2, 28(r5)
002584  8be03010  add.f.rn r1, r1, r3
002588  8be02010  add.f.rn r1, r1, r2
00258c  73e01200  stores.w r1, 0(r5)
002590  00a00300  mfence { lm, sm, gm }
002594  80210204  csr_set csr3, r4
002598  00d00100  sync_group
00259c  e3406fe5  loadli.w r1,  -3404(r30)
0025a0  2b01803a  lui r2, 239616
0025a4  e34cffeb  loadli.w r25,  -2564(r30)
0025a8  efc00000  loads.w r1, 0(r1)
0025ac  8be62020  mul.f.rn r13, r1, r2
0025b0  6301efeb  loadli.w r2,  -2576(r30)
0025b4  9f000004  addli r1, zero, 512
0025b8  3f211100  blt.s r2, r1, 72
0025bc  1f0d0000  addli r26, zero, 0
0025c0  1f0c0000  addli r24, zero, 0
0025c4  9f0a0000  addli r21, zero, 0
0025c8  1f020000  addli r4, zero, 0
0025cc  9f020000  addli r5, zero, 0
0025d0  9f0b0000  addli r23, zero, 0
0025d4  9f030000  addli r7, zero, 0
0025d8  1f040000  addli r8, zero, 0
0025dc  1f050000  addli r10, zero, 0
0025e0  9f040000  addli r9, zero, 0
0025e4  9f050000  addli r11, zero, 0
0025e8  1f060000  addli r12, zero, 0
0025ec  1f090000  addli r18, zero, 0
0025f0  9f070000  addli r15, zero, 0
0025f4  1f070000  addli r14, zero, 0
0025f8  1f080000  addli r16, zero, 0
0025fc  5b190000  j 200
002600  e3009fea  loadli.w r1,  -2744(r30)
002604  e3045fea  loadli.w r9,  -2776(r30)
002608  63418fea  loadli.w r2,  -2748(r30)
00260c  e3018fea  loadli.w r3,  -2752(r30)
002610  63427fea  loadli.w r4,  -2756(r30)
002614  e3027fea  loadli.w r5,  -2760(r30)
002618  63436fea  loadli.w r6,  -2764(r30)
00261c  e3036fea  loadli.w r7,  -2768(r30)
002620  63445fea  loadli.w r8,  -2772(r30)
002624  63454fea  loadli.w r10,  -2780(r30)
002628  e3054fea  loadli.w r11,  -2784(r30)
00262c  63463fea  loadli.w r12,  -2788(r30)
002630  63073fea  loadli.w r14,  -2792(r30)
002634  e3472fea  loadli.w r15,  -2796(r30)
002638  63082fea  loadli.w r16,  -2800(r30)
00263c  e3481fea  loadli.w r17,  -2804(r30)
002640  8be0d018  sub.f.rn r1, r1, r13
002644  8be4d418  sub.f.rn r9, r9, r13
002648  0b62d218  sub.f.rn r4, r4, r13
00264c  8be2d218  sub.f.rn r5, r5, r13
002650  8be3d318  sub.f.rn r7, r7, r13
002654  0b64d418  sub.f.rn r8, r8, r13
002658  8be5d518  sub.f.rn r11, r11, r13
00265c  0b66d618  sub.f.rn r12, r12, r13
002660  8be7d718  sub.f.rn r15, r15, r13
002664  0b61d118  sub.f.rn r2, r2, r13
002668  8be1d118  sub.f.rn r3, r3, r13
00266c  0b63d318  sub.f.rn r6, r6, r13
002670  0b67d718  sub.f.rn r14, r14, r13
002674  0b65d518  sub.f.rn r10, r10, r13
002678  0b68d818  sub.f.rn r16, r16, r13
00267c  8be8d818  sub.f.rn r17, r17, r13
002680  0bed1020  mul.f.rn r26, r1, r1
002684  8be09420  mul.f.rn r1, r9, r9
002688  8b64a520  mul.f.rn r9, r10, r10
00268c  0b69e720  mul.f.rn r18, r14, r14
002690  0b670821  mul.f.rn r14, r16, r16
002694  0b6c2120  mul.f.rn r24, r2, r2
002698  8bea3120  mul.f.rn r21, r3, r3
00269c  0b624220  mul.f.rn r4, r4, r4
0026a0  8be25220  mul.f.rn r5, r5, r5
0026a4  8b6b6320  mul.f.rn r23, r6, r6
0026a8  8be37320  mul.f.rn r7, r7, r7
0026ac  0b648420  mul.f.rn r8, r8, r8
0026b0  8be5b520  mul.f.rn r11, r11, r11
0026b4  0b66c620  mul.f.rn r12, r12, r12
0026b8  8be7f720  mul.f.rn r15, r15, r15
0026bc  0be81821  mul.f.rn r16, r17, r17
0026c0  1f850000  addli r10, r1, 0
0026c4  e3402fe5  loadli.w r1,  -3436(r30)
0026c8  e3419fea  loadli.w r3,  -2740(r30)
0026cc  6303ffeb  loadli.w r6,  -2568(r30)
0026d0  2b01807f  lui r2, 522240
0026d4  9f088000  addli r17, zero, 64
0026d8  8b903010  add.s r1, r1, r3
0026dc  670e1fe4  storeli.w r1, -3360(r30)
0026e0  e3002fe5  loadli.w r1,  -3440(r30)
0026e4  8b903010  add.s r1, r1, r3
0026e8  e74d1fe4  storeli.w r1, -3364(r30)
0026ec  e3401fe5  loadli.w r1,  -3444(r30)
0026f0  8b903010  add.s r1, r1, r3
0026f4  e70d1fe4  storeli.w r1, -3368(r30)
0026f8  e3001fe5  loadli.w r1,  -3448(r30)
0026fc  8b903010  add.s r1, r1, r3
002700  674d1fe4  storeli.w r1, -3372(r30)
002704  e3400fe5  loadli.w r1,  -3452(r30)
002708  8b903010  add.s r1, r1, r3
00270c  670d1fe4  storeli.w r1, -3376(r30)
002710  e3000fe5  loadli.w r1,  -3456(r30)
002714  8b903010  add.s r1, r1, r3
002718  e74c1fe4  storeli.w r1, -3380(r30)
00271c  e340ffe4  loadli.w r1,  -3460(r30)
002720  8b903010  add.s r1, r1, r3
002724  e70c1fe4  storeli.w r1, -3384(r30)
002728  e300ffe4  loadli.w r1,  -3464(r30)
00272c  8b903010  add.s r1, r1, r3
002730  674c1fe4  storeli.w r1, -3388(r30)
002734  e340efe4  loadli.w r1,  -3468(r30)
002738  8b903010  add.s r1, r1, r3
00273c  670c1fe4  storeli.w r1, -3392(r30)
002740  e300efe4  loadli.w r1,  -3472(r30)
002744  8b903010  add.s r1, r1, r3
002748  e74b1fe4  storeli.w r1, -3396(r30)
00274c  e340dfe4  loadli.w r1,  -3476(r30)
002750  8b903010  add.s r1, r1, r3
002754  e70b1fe4  storeli.w r1, -3400(r30)
002758  e300dfe4  loadli.w r1,  -3480(r30)
00275c  8b903010  add.s r1, r1, r3
002760  674e1fe4  storeli.w r1, -3356(r30)
002764  e340cfe4  loadli.w r1,  -3484(r30)
002768  8b903010  add.s r1, r1, r3
00276c  e70e1fe4  storeli.w r1, -3352(r30)
002770  e300cfe4  loadli.w r1,  -3488(r30)
002774  8b903010  add.s r1, r1, r3
002778  e74e1fe4  storeli.w r1, -3348(r30)
00277c  e340bfe4  loadli.w r1,  -3492(r30)
002780  8b903010  add.s r1, r1, r3
002784  670f1fe4  storeli.w r1, -3344(r30)
002788  e3407fe4  loadli.w r1,  -3524(r30)
00278c  8b903010  add.s r1, r1, r3
002790  674f1fe4  storeli.w r1, -3340(r30)
002794  e3406fe4  loadli.w r1,  -3532(r30)
002798  8b903010  add.s r1, r1, r3
00279c  e70f1fe4  storeli.w r1, -3336(r30)
0027a0  e3006fe4  loadli.w r1,  -3536(r30)
0027a4  8b903010  add.s r1, r1, r3
0027a8  e74f1fe4  storeli.w r1, -3332(r30)
0027ac  e3405fe4  loadli.w r1,  -3540(r30)
0027b0  8b903010  add.s r1, r1, r3
0027b4  67001fe6  storeli.w r1, -3328(r30)
0027b8  e3005fe4  loadli.w r1,  -3544(r30)
0027bc  8b903010  add.s r1, r1, r3
0027c0  67401fe6  storeli.w r1, -3324(r30)
0027c4  e3404fe4  loadli.w r1,  -3548(r30)
0027c8  8b903010  add.s r1, r1, r3
0027cc  e7001fe6  storeli.w r1, -3320(r30)
0027d0  e3004fe4  loadli.w r1,  -3552(r30)
0027d4  8b903010  add.s r1, r1, r3
0027d8  e7401fe6  storeli.w r1, -3316(r30)
0027dc  e3403fe4  loadli.w r1,  -3556(r30)
0027e0  8b903010  add.s r1, r1, r3
0027e4  67011fe6  storeli.w r1, -3312(r30)
0027e8  e3003fe4  loadli.w r1,  -3560(r30)
0027ec  8b903010  add.s r1, r1, r3
0027f0  67411fe6  storeli.w r1, -3308(r30)
0027f4  e3402fe4  loadli.w r1,  -3564(r30)
0027f8  8b903010  add.s r1, r1, r3
0027fc  e7011fe6  storeli.w r1, -3304(r30)
002800  e3002fe4  loadli.w r1,  -3568(r30)
002804  8b903010  add.s r1, r1, r3
002808  e7411fe6  storeli.w r1, -3300(r30)
00280c  e3401fe4  loadli.w r1,  -3572(r30)
002810  8b903010  add.s r1, r1, r3
002814  67021fe6  storeli.w r1, -3296(r30)
002818  e3001fe4  loadli.w r1,  -3576(r30)
00281c  8b903010  add.s r1, r1, r3
002820  67421fe6  storeli.w r1, -3292(r30)
002824  e3400fe4  loadli.w r1,  -3580(r30)
002828  8b903010  add.s r1, r1, r3
00282c  e7021fe6  storeli.w r1, -3288(r30)
002830  e3000fe4  loadli.w r1,  -3584(r30)
002834  8b903010  add.s r1, r1, r3
002838  e7421fe6  storeli.w r1, -3284(r30)
00283c  e340ffe3  loadli.w r1,  -3588(r30)
002840  8b903010  add.s r1, r1, r3
002844  67031fe6  storeli.w r1, -3280(r30)
002848  e300ffe3  loadli.w r1,  -3592(r30)
00284c  8b903010  add.s r1, r1, r3
002850  67431fe6  storeli.w r1, -3276(r30)
002854  e340efe3  loadli.w r1,  -3596(r30)
002858  8b903010  add.s r1, r1, r3
00285c  e7031fe6  storeli.w r1, -3272(r30)
002860  e300efe3  loadli.w r1,  -3600(r30)
002864  8b903010  add.s r1, r1, r3
002868  e7431fe6  storeli.w r1, -3268(r30)
00286c  e340dfe3  loadli.w r1,  -3604(r30)
002870  8b903010  add.s r1, r1, r3
002874  67041fe6  storeli.w r1, -3264(r30)
002878  e300dfe3  loadli.w r1,  -3608(r30)
00287c  8b903010  add.s r1, r1, r3
002880  67441fe6  storeli.w r1, -3260(r30)
002884  e340cfe3  loadli.w r1,  -3612(r30)
002888  8b903010  add.s r1, r1, r3
00288c  e7041fe6  storeli.w r1, -3256(r30)
002890  e300cfe3  loadli.w r1,  -3616(r30)
002894  8b903010  add.s r1, r1, r3
002898  e7441fe6  storeli.w r1, -3252(r30)
00289c  e340bfe3  loadli.w r1,  -3620(r30)
0028a0  8b903010  add.s r1, r1, r3
0028a4  67051fe6  storeli.w r1, -3248(r30)
0028a8  e300bfe3  loadli.w r1,  -3624(r30)
0028ac  8b903010  add.s r1, r1, r3
0028b0  67451fe6  storeli.w r1, -3244(r30)
0028b4  e340afe3  loadli.w r1,  -3628(r30)
0028b8  8b903010  add.s r1, r1, r3
0028bc  e7051fe6  storeli.w r1, -3240(r30)
0028c0  e300afe3  loadli.w r1,  -3632(r30)
0028c4  8b903010  add.s r1, r1, r3
0028c8  e7451fe6  storeli.w r1, -3236(r30)
0028cc  e3409fe3  loadli.w r1,  -3636(r30)
0028d0  8b903010  add.s r1, r1, r3
0028d4  67061fe6  storeli.w r1, -3232(r30)
0028d8  e3009fe3  loadli.w r1,  -3640(r30)
0028dc  8b903010  add.s r1, r1, r3
0028e0  67461fe6  storeli.w r1, -3228(r30)
0028e4  e3408fe3  loadli.w r1,  -3644(r30)
0028e8  8b903010  add.s r1, r1, r3
0028ec  e7061fe6  storeli.w r1, -3224(r30)
0028f0  e3008fe3  loadli.w r1,  -3648(r30)
0028f4  8b903010  add.s r1, r1, r3
0028f8  e7461fe6  storeli.w r1, -3220(r30)
0028fc  e3407fe3  loadli.w r1,  -3652(r30)
002900  8b903010  add.s r1, r1, r3
002904  67071fe6  storeli.w r1, -3216(r30)
002908  e3007fe3  loadli.w r1,  -3656(r30)
00290c  8b903010  add.s r1, r1, r3
002910  67471fe6  storeli.w r1, -3212(r30)
002914  e3406fe3  loadli.w r1,  -3660(r30)
002918  8b903010  add.s r1, r1, r3
00291c  e7071fe6  storeli.w r1, -3208(r30)
002920  e3006fe3  loadli.w r1,  -3664(r30)
002924  8b903010  add.s r1, r1, r3
002928  e7471fe6  storeli.w r1, -3204(r30)
00292c  e3405fe3  loadli.w r1,  -3668(r30)
002930  8b903010  add.s r1, r1, r3
002934  67081fe6  storeli.w r1, -3200(r30)
002938  e3005fe3  loadli.w r1,  -3672(r30)
00293c  8b903010  add.s r1, r1, r3
002940  67481fe6  storeli.w r1, -3196(r30)
002944  e3404fe3  loadli.w r1,  -3676(r30)
002948  8b903010  add.s r1, r1, r3
00294c  e7081fe6  storeli.w r1, -3192(r30)
002950  e3004fe3  loadli.w r1,  -3680(r30)
002954  8b903010  add.s r1, r1, r3
002958  e7481fe6  storeli.w r1, -3188(r30)
00295c  e3403fe3  loadli.w r1,  -3684(r30)
002960  8b903010  add.s r1, r1, r3
002964  67091fe6  storeli.w r1, -3184(r30)
002968  e3003fe3  loadli.w r1,  -3688(r30)
00296c  8b903010  add.s r1, r1, r3
002970  67491fe6  storeli.w r1, -3180(r30)
002974  e3402fe3  loadli.w r1,  -3692(r30)
002978  8b903010  add.s r1, r1, r3
00297c  e7091fe6  storeli.w r1, -3176(r30)
002980  e3002fe3  loadli.w r1,  -3696(r30)
002984  8b903010  add.s r1, r1, r3
002988  e7491fe6  storeli.w r1, -3172(r30)
00298c  e3401fe3  loadli.w r1,  -3700(r30)
002990  8b903010  add.s r1, r1, r3
002994  670a1fe6  storeli.w r1, -3168(r30)
002998  e3001fe3  loadli.w r1,  -3704(r30)
00299c  8b903010  add.s r1, r1, r3
0029a0  674a1fe6  storeli.w r1, -3164(r30)
0029a4  e3400fe3  loadli.w r1,  -3708(r30)
0029a8  8b903010  add.s r1, r1, r3
0029ac  e70a1fe6  storeli.w r1, -3160(r30)
0029b0  e3000fe3  loadli.w r1,  -3712(r30)
0029b4  8b903010  add.s r1, r1, r3
0029b8  e74a1fe6  storeli.w r1, -3156(r30)
0029bc  e340ffe2  loadli.w r1,  -3716(r30)
0029c0  8b903010  add.s r1, r1, r3
0029c4  670b1fe6  storeli.w r1, -3152(r30)
0029c8  e300ffe2  loadli.w r1,  -3720(r30)
0029cc  8b903010  add.s r1, r1, r3
0029d0  674b1fe6  storeli.w r1, -3148(r30)
0029d4  e340efe2  loadli.w r1,  -3724(r30)
0029d8  8b903010  add.s r1, r1, r3
0029dc  e70b1fe6  storeli.w r1, -3144(r30)
0029e0  e300efe2  loadli.w r1,  -3728(r30)
0029e4  8b903010  add.s r1, r1, r3
0029e8  e74b1fe6  storeli.w r1, -3140(r30)
0029ec  e340dfe2  loadli.w r1,  -3732(r30)
0029f0  8b903010  add.s r1, r1, r3
0029f4  670c1fe6  storeli.w r1, -3136(r30)
0029f8  e300dfe2  loadli.w r1,  -3736(r30)
0029fc  8b903010  add.s r1, r1, r3
002a00  674c1fe6  storeli.w r1, -3132(r30)
002a04  e340cfe2  loadli.w r1,  -3740(r30)
002a08  8b903010  add.s r1, r1, r3
002a0c  e70c1fe6  storeli.w r1, -3128(r30)
002a10  e300cfe2  loadli.w r1,  -3744(r30)
002a14  8b903010  add.s r1, r1, r3
002a18  e74c1fe6  storeli.w r1, -3124(r30)
002a1c  e340bfe2  loadli.w r1,  -3748(r30)
002a20  8b903010  add.s r1, r1, r3
002a24  670d1fe6  storeli.w r1, -3120(r30)
002a28  e300bfe2  loadli.w r1,  -3752(r30)
002a2c  8b903010  add.s r1, r1, r3
002a30  674d1fe6  storeli.w r1, -3116(r30)
002a34  e340afe2  loadli.w r1,  -3756(r30)
002a38  8b903010  add.s r1, r1, r3
002a3c  e70d1fe6  storeli.w r1, -3112(r30)
002a40  e300afe2  loadli.w r1,  -3760(r30)
002a44  8b903010  add.s r1, r1, r3
002a48  e74d1fe6  storeli.w r1, -3108(r30)
002a4c  e3409fe2  loadli.w r1,  -3764(r30)
002a50  8b903010  add.s r1, r1, r3
002a54  670e1fe6  storeli.w r1, -3104(r30)
002a58  e3009fe2  loadli.w r1,  -3768(r30)
002a5c  8b903010  add.s r1, r1, r3
002a60  674e1fe6  storeli.w r1, -3100(r30)
002a64  e3408fe2  loadli.w r1,  -3772(r30)
002a68  8b903010  add.s r1, r1, r3
002a6c  e70e1fe6  storeli.w r1, -3096(r30)
002a70  e3008fe2  loadli.w r1,  -3776(r30)
002a74  8b903010  add.s r1, r1, r3
002a78  e74e1fe6  storeli.w r1, -3092(r30)
002a7c  e3407fe2  loadli.w r1,  -3780(r30)
002a80  8b903010  add.s r1, r1, r3
002a84  670f1fe6  storeli.w r1, -3088(r30)
002a88  e3007fe2  loadli.w r1,  -3784(r30)
002a8c  8b903010  add.s r1, r1, r3
002a90  674f1fe6  storeli.w r1, -3084(r30)
002a94  e3406fe2  loadli.w r1,  -3788(r30)
002a98  8b903010  add.s r1, r1, r3
002a9c  e70f1fe6  storeli.w r1, -3080(r30)
002aa0  e3006fe2  loadli.w r1,  -3792(r30)
002aa4  8b903010  add.s r1, r1, r3
002aa8  e74f1fe6  storeli.w r1, -3076(r30)
002aac  e3405fe2  loadli.w r1,  -3796(r30)
002ab0  8b903010  add.s r1, r1, r3
002ab4  67001fe8  storeli.w r1, -3072(r30)
002ab8  e3005fe2  loadli.w r1,  -3800(r30)
002abc  8b903010  add.s r1, r1, r3
002ac0  67401fe8  storeli.w r1, -3068(r30)
002ac4  e3404fe2  loadli.w r1,  -3804(r30)
002ac8  8b903010  add.s r1, r1, r3
002acc  e7001fe8  storeli.w r1, -3064(r30)
002ad0  e3004fe2  loadli.w r1,  -3808(r30)
002ad4  8b903010  add.s r1, r1, r3
002ad8  e7401fe8  storeli.w r1, -3060(r30)
002adc  e3403fe2  loadli.w r1,  -3812(r30)
002ae0  8b903010  add.s r1, r1, r3
002ae4  67011fe8  storeli.w r1, -3056(r30)
002ae8  e3003fe2  loadli.w r1,  -3816(r30)
002aec  8b903010  add.s r1, r1, r3
002af0  67411fe8  storeli.w r1, -3052(r30)
002af4  e3402fe2  loadli.w r1,  -3820(r30)
002af8  8b903010  add.s r1, r1, r3
002afc  e7011fe8  storeli.w r1, -3048(r30)
002b00  e3002fe2  loadli.w r1,  -3824(r30)
002b04  8b903010  add.s r1, r1, r3
002b08  e7411fe8  storeli.w r1, -3044(r30)
002b0c  e3401fe2  loadli.w r1,  -3828(r30)
002b10  8b903010  add.s r1, r1, r3
002b14  67021fe8  storeli.w r1, -3040(r30)
002b18  e3001fe2  loadli.w r1,  -3832(r30)
002b1c  8b903010  add.s r1, r1, r3
002b20  67421fe8  storeli.w r1, -3036(r30)
002b24  e3400fe2  loadli.w r1,  -3836(r30)
002b28  8b903010  add.s r1, r1, r3
002b2c  e7021fe8  storeli.w r1, -3032(r30)
002b30  e3000fe2  loadli.w r1,  -3840(r30)
002b34  8b903010  add.s r1, r1, r3
002b38  e7421fe8  storeli.w r1, -3028(r30)
002b3c  e340ffe1  loadli.w r1,  -3844(r30)
002b40  8b903010  add.s r1, r1, r3
002b44  67031fe8  storeli.w r1, -3024(r30)
002b48  e300ffe1  loadli.w r1,  -3848(r30)
002b4c  8b903010  add.s r1, r1, r3
002b50  67431fe8  storeli.w r1, -3020(r30)
002b54  e340efe1  loadli.w r1,  -3852(r30)
002b58  8b903010  add.s r1, r1, r3
002b5c  e7031fe8  storeli.w r1, -3016(r30)
002b60  e300efe1  loadli.w r1,  -3856(r30)
002b64  8b903010  add.s r1, r1, r3
002b68  e7431fe8  storeli.w r1, -3012(r30)
002b6c  e340dfe1  loadli.w r1,  -3860(r30)
002b70  8b903010  add.s r1, r1, r3
002b74  67041fe8  storeli.w r1, -3008(r30)
002b78  e300dfe1  loadli.w r1,  -3864(r30)
002b7c  8b903010  add.s r1, r1, r3
002b80  67441fe8  storeli.w r1, -3004(r30)
002b84  e340cfe1  loadli.w r1,  -3868(r30)
002b88  8b903010  add.s r1, r1, r3
002b8c  e7041fe8  storeli.w r1, -3000(r30)
002b90  e300cfe1  loadli.w r1,  -3872(r30)
002b94  8b903010  add.s r1, r1, r3
002b98  e7441fe8  storeli.w r1, -2996(r30)
002b9c  e340bfe1  loadli.w r1,  -3876(r30)
002ba0  8b903010  add.s r1, r1, r3
002ba4  67051fe8  storeli.w r1, -2992(r30)
002ba8  e300bfe1  loadli.w r1,  -3880(r30)
002bac  8b903010  add.s r1, r1, r3
002bb0  67451fe8  storeli.w r1, -2988(r30)
002bb4  e340afe1  loadli.w r1,  -3884(r30)
002bb8  8b903010  add.s r1, r1, r3
002bbc  e7051fe8  storeli.w r1, -2984(r30)
002bc0  e300afe1  loadli.w r1,  -3888(r30)
002bc4  8b903010  add.s r1, r1, r3
002bc8  e7451fe8  storeli.w r1, -2980(r30)
002bcc  e3409fe1  loadli.w r1,  -3892(r30)
002bd0  8b903010  add.s r1, r1, r3
002bd4  67061fe8  storeli.w r1, -2976(r30)
002bd8  e3009fe1  loadli.w r1,  -3896(r30)
002bdc  8b903010  add.s r1, r1, r3
002be0  67461fe8  storeli.w r1, -2972(r30)
002be4  e3408fe1  loadli.w r1,  -3900(r30)
002be8  8b903010  add.s r1, r1, r3
002bec  e7061fe8  storeli.w r1, -2968(r30)
002bf0  e3008fe1  loadli.w r1,  -3904(r30)
002bf4  8b903010  add.s r1, r1, r3
002bf8  e7461fe8  storeli.w r1, -2964(r30)
002bfc  e3407fe1  loadli.w r1,  -3908(r30)
002c00  8b903010  add.s r1, r1, r3
002c04  67071fe8  storeli.w r1, -2960(r30)
002c08  e3007fe1  loadli.w r1,  -3912(r30)
002c0c  8b903010  add.s r1, r1, r3
002c10  67471fe8  storeli.w r1, -2956(r30)
002c14  e3406fe1  loadli.w r1,  -3916(r30)
002c18  8b903010  add.s r1, r1, r3
002c1c  e7071fe8  storeli.w r1, -2952(r30)
002c20  e3006fe1  loadli.w r1,  -3920(r30)
002c24  8b903010  add.s r1, r1, r3
002c28  e7471fe8  storeli.w r1, -2948(r30)
002c2c  e3405fe1  loadli.w r1,  -3924(r30)
002c30  8b903010  add.s r1, r1, r3
002c34  67081fe8  storeli.w r1, -2944(r30)
002c38  e3005fe1  loadli.w r1,  -3928(r30)
002c3c  8b903010  add.s r1, r1, r3
002c40  67481fe8  storeli.w r1, -2940(r30)
002c44  e3404fe1  loadli.w r1,  -3932(r30)
002c48  8b903010  add.s r1, r1, r3
002c4c  e7081fe8  storeli.w r1, -2936(r30)
002c50  e3004fe1  loadli.w r1,  -3936(r30)
002c54  8b903010  add.s r1, r1, r3
002c58  e7481fe8  storeli.w r1, -2932(r30)
002c5c  e3403fe1  loadli.w r1,  -3940(r30)
002c60  8b903010  add.s r1, r1, r3
002c64  67491fe8  storeli.w r1, -2924(r30)
002c68  e3003fe1  loadli.w r1,  -3944(r30)
002c6c  8b903010  add.s r1, r1, r3
002c70  67091fe8  storeli.w r1, -2928(r30)
002c74  e3402fe1  loadli.w r1,  -3948(r30)
002c78  8b903010  add.s r1, r1, r3
002c7c  e7091fe8  storeli.w r1, -2920(r30)
002c80  e3002fe1  loadli.w r1,  -3952(r30)
002c84  8b903010  add.s r1, r1, r3
002c88  e7491fe8  storeli.w r1, -2916(r30)
002c8c  e3401fe1  loadli.w r1,  -3956(r30)
002c90  8b903010  add.s r1, r1, r3
002c94  670a1fe8  storeli.w r1, -2912(r30)
002c98  e3001fe1  loadli.w r1,  -3960(r30)
002c9c  8b903010  add.s r1, r1, r3
002ca0  674a1fe8  storeli.w r1, -2908(r30)
002ca4  e3400fe1  loadli.w r1,  -3964(r30)
002ca8  8b903010  add.s r1, r1, r3
002cac  e70a1fe8  storeli.w r1, -2904(r30)
002cb0  e3000fe1  loadli.w r1,  -3968(r30)
002cb4  8b903010  add.s r1, r1, r3
002cb8  e74a1fe8  storeli.w r1, -2900(r30)
002cbc  e340ffe0  loadli.w r1,  -3972(r30)
002cc0  8b903010  add.s r1, r1, r3
002cc4  9f010200  addli r3, r4, 0
002cc8  670b1fe8  storeli.w r1, -2896(r30)
002ccc  db190000  j 204
002cd0  9f000000  addli r1, zero, 0
002cd4  9f020000  addli r5, zero, 0
002cd8  9f030000  addli r7, zero, 0
002cdc  1f040000  addli r8, zero, 0
002ce0  9f050000  addli r11, zero, 0
002ce4  1f060000  addli r12, zero, 0
002ce8  9f070000  addli r15, zero, 0
002cec  1f080000  addli r16, zero, 0
002cf0  9f080000  addli r17, zero, 0
002cf4  9f040000  addli r9, zero, 0
002cf8  1f090000  addli r18, zero, 0
002cfc  9f090000  addli r19, zero, 0
002d00  1f0b0000  addli r22, zero, 0
002d04  9f0d0000  addli r27, zero, 0
002d08  1f070000  addli r14, zero, 0
002d0c  1f0a0000  addli r20, zero, 0
002d10  0b6d1d10  add.f.rn r26, r26, r1
002d14  e340cfea  loadli.w r1,  -2716(r30)
002d18  0b6c5c10  add.f.rn r24, r24, r5
002d1c  e3020feb  loadli.w r5,  -2688(r30)
002d20  e30bffea  loadli.w r23,  -2696(r30)
002d24  8bea7a10  add.f.rn r21, r21, r7
002d28  e303efea  loadli.w r7,  -2704(r30)
002d2c  8be18110  add.f.rn r3, r3, r8
002d30  6344dfea  loadli.w r8,  -2708(r30)
002d34  6305dfea  loadli.w r10,  -2712(r30)
002d38  8be09010  add.f.rn r1, r1, r9
002d3c  8be2b210  add.f.rn r5, r5, r11
002d40  e305cfea  loadli.w r11,  -2720(r30)
002d44  8bebcb10  add.f.rn r23, r23, r12
002d48  6346bfea  loadli.w r12,  -2724(r30)
002d4c  8be3f310  add.f.rn r7, r7, r15
002d50  e347afea  loadli.w r15,  -2732(r30)
002d54  0b640411  add.f.rn r8, r8, r16
002d58  63489fea  loadli.w r16,  -2740(r30)
002d5c  0b651511  add.f.rn r10, r10, r17
002d60  e3089fea  loadli.w r17,  -2744(r30)
002d64  8be52511  add.f.rn r11, r11, r18
002d68  6309bfea  loadli.w r18,  -2728(r30)
002d6c  0b663611  add.f.rn r12, r12, r19
002d70  8be7b711  add.f.rn r15, r15, r27
002d74  0b684811  add.f.rn r16, r16, r20
002d78  9f888800  addli r17, r17, 64
002d7c  9f840000  addli r9, r1, 0
002d80  e300afea  loadli.w r1,  -2736(r30)
002d84  0b696911  add.f.rn r18, r18, r22
002d88  8be0e010  add.f.rn r1, r1, r14
002d8c  1f870000  addli r14, r1, 0
002d90  9f000004  addli r1, zero, 512
002d94  b7aa1802  beq r17, r1, 1704
002d98  67077fea  storeli.w r7, -2704(r30)
002d9c  8b131e11  add.s r7, r28, r17
002da0  e7468fea  storeli.w r8, -2708(r30)
002da4  92303002  vadd.s.mz vr1{mr1}, zero, vr3
002da8  9f100000  addli r1, zero, 1
002dac  67469fea  storeli.w r9, -2716(r30)
002db0  e7440feb  storeli.w r16, -2740(r30)
002db4  6705efea  storeli.w r14, -2736(r30)
002db8  6745ffea  storeli.w r15, -2732(r30)
002dbc  e7052feb  storeli.w r18, -2728(r30)
002dc0  e745cfea  storeli.w r12, -2724(r30)
002dc4  6706bfea  storeli.w r11, -2720(r30)
002dc8  e7077feb  storeli.w r23, -2696(r30)
002dcc  67085fea  storeli.w r5, -2688(r30)
002dd0  9f8b0800  addli r23, r17, 0
002dd4  12313002  vadd.s.mz vr2{mr1}, zero, vr3
002dd8  6bb40300  load.hu r8, 0(r7)
002ddc  7e8100e0  vmmov mr2, r1
002de0  ebb42300  load.hu r9, 2(r7)
002de4  ebb2a301  load.hu r5, 26(r7)
002de8  6bb2c301  load.hu r4, 28(r7)
002dec  ebb54300  load.hu r11, 4(r7)
002df0  6bb66300  load.hu r12, 6(r7)
002df4  6bb78300  load.hu r14, 8(r7)
002df8  ebb7a300  load.hu r15, 10(r7)
002dfc  6bb8c300  load.hu r16, 12(r7)
002e00  ebb8e300  load.hu r17, 14(r7)
002e04  6bb90301  load.hu r18, 16(r7)
002e08  ebb92301  load.hu r19, 18(r7)
002e0c  6bba4301  load.hu r20, 20(r7)
002e10  6bbb6301  load.hu r22, 22(r7)
002e14  ebbd8301  load.hu r27, 24(r7)
002e18  ebb3e301  load.hu r7, 30(r7)
002e1c  9f200000  addli r1, zero, 2
002e20  fe8100e0  vmmov mr3, r1
002e24  9f400000  addli r1, zero, 4
002e28  33140418  bfloat2float.rn r8, r8
002e2c  b3920218  bfloat2float.rn r5, r5
002e30  33120218  bfloat2float.rn r4, r4
002e34  7e8000e0  vmmov mr0, r1
002e38  9f001000  addli r1, zero, 8
002e3c  ea201434  vor.u.mh vr1{mr2}, r8, vr1
002e40  33940418  bfloat2float.rn r8, r9
002e44  ea201436  vor.u.mh vr1{mr3}, r8, vr1
002e48  33940518  bfloat2float.rn r8, r11
002e4c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002e50  33140618  bfloat2float.rn r8, r12
002e54  7e8000e0  vmmov mr0, r1
002e58  9f002000  addli r1, zero, 16
002e5c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002e60  33140718  bfloat2float.rn r8, r14
002e64  7e8000e0  vmmov mr0, r1
002e68  9f004000  addli r1, zero, 32
002e6c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002e70  33940718  bfloat2float.rn r8, r15
002e74  7e8000e0  vmmov mr0, r1
002e78  9f008000  addli r1, zero, 64
002e7c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002e80  33140818  bfloat2float.rn r8, r16
002e84  7e8000e0  vmmov mr0, r1
002e88  9f000001  addli r1, zero, 128
002e8c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002e90  33940818  bfloat2float.rn r8, r17
002e94  7e8000e0  vmmov mr0, r1
002e98  9f000002  addli r1, zero, 256
002e9c  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002ea0  33140918  bfloat2float.rn r8, r18
002ea4  7e8000e0  vmmov mr0, r1
002ea8  9f000004  addli r1, zero, 512
002eac  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002eb0  33940918  bfloat2float.rn r8, r19
002eb4  7e8000e0  vmmov mr0, r1
002eb8  9f000008  addli r1, zero, 1024
002ebc  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002ec0  33140a18  bfloat2float.rn r8, r20
002ec4  7e8000e0  vmmov mr0, r1
002ec8  9f000010  addli r1, zero, 2048
002ecc  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002ed0  33140b18  bfloat2float.rn r8, r22
002ed4  7e8000e0  vmmov mr0, r1
002ed8  9f000020  addli r1, zero, 4096
002edc  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002ee0  33940d18  bfloat2float.rn r8, r27
002ee4  7e8000e0  vmmov mr0, r1
002ee8  9f000040  addli r1, zero, 8192
002eec  ea201430  vor.u.mh vr1{mr0}, r8, vr1
002ef0  7e8000e0  vmmov mr0, r1
002ef4  ab400000  lui r1, 4
002ef8  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002efc  7e8000e0  vmmov mr0, r1
002f00  9f000ff6  addli r1, r30, -1280
002f04  8b927011  add.s r5, r1, r23
002f08  ab800000  lui r1, 8
002f0c  ea201230  vor.u.mh vr1{mr0}, r4, vr1
002f10  33920318  bfloat2float.rn r4, r7
002f14  7e8000e0  vmmov mr0, r1
002f18  e7047feb  storeli.w r23, -2744(r30)
002f1c  9f400000  addli r1, zero, 4
002f20  ea201230  vor.u.mh vr1{mr0}, r4, vr1
002f24  6bb20200  load.hu r4, 0(r5)
002f28  ebb32200  load.hu r7, 2(r5)
002f2c  6bb44200  load.hu r8, 4(r5)
002f30  ebb46200  load.hu r9, 6(r5)
002f34  ebb58200  load.hu r11, 8(r5)
002f38  6bb6a200  load.hu r12, 10(r5)
002f3c  6bb7c200  load.hu r14, 12(r5)
002f40  ebb7e200  load.hu r15, 14(r5)
002f44  6bb80201  load.hu r16, 16(r5)
002f48  ebb82201  load.hu r17, 18(r5)
002f4c  6bb94201  load.hu r18, 20(r5)
002f50  ebb96201  load.hu r19, 22(r5)
002f54  6bba8201  load.hu r20, 24(r5)
002f58  6bbba201  load.hu r22, 26(r5)
002f5c  ebbdc201  load.hu r27, 28(r5)
002f60  ebb2e201  load.hu r5, 30(r5)
002f64  33120218  bfloat2float.rn r4, r4
002f68  6a212234  vor.u.mh vr2{mr2}, r4, vr2
002f6c  33920318  bfloat2float.rn r4, r7
002f70  7e8100e0  vmmov mr2, r1
002f74  9f001000  addli r1, zero, 8
002f78  6a212236  vor.u.mh vr2{mr3}, r4, vr2
002f7c  33120418  bfloat2float.rn r4, r8
002f80  6a212234  vor.u.mh vr2{mr2}, r4, vr2
002f84  33920418  bfloat2float.rn r4, r9
002f88  7e8100e0  vmmov mr2, r1
002f8c  9f002000  addli r1, zero, 16
002f90  6a212234  vor.u.mh vr2{mr2}, r4, vr2
002f94  33920518  bfloat2float.rn r4, r11
002f98  7e8100e0  vmmov mr2, r1
002f9c  9f004000  addli r1, zero, 32
002fa0  6a212234  vor.u.mh vr2{mr2}, r4, vr2
002fa4  33120618  bfloat2float.rn r4, r12
002fa8  7e8100e0  vmmov mr2, r1
002fac  9f008000  addli r1, zero, 64
002fb0  6a212234  vor.u.mh vr2{mr2}, r4, vr2
002fb4  33120718  bfloat2float.rn r4, r14
002fb8  7e8100e0  vmmov mr2, r1
002fbc  9f000001  addli r1, zero, 128
002fc0  6a212234  vor.u.mh vr2{mr2}, r4, vr2
002fc4  33920718  bfloat2float.rn r4, r15
002fc8  7e8100e0  vmmov mr2, r1
002fcc  9f000002  addli r1, zero, 256
002fd0  6a212234  vor.u.mh vr2{mr2}, r4, vr2
002fd4  33120818  bfloat2float.rn r4, r16
002fd8  7e8100e0  vmmov mr2, r1
002fdc  9f000004  addli r1, zero, 512
002fe0  6a212234  vor.u.mh vr2{mr2}, r4, vr2
002fe4  33920818  bfloat2float.rn r4, r17
002fe8  7e8100e0  vmmov mr2, r1
002fec  9f000008  addli r1, zero, 1024
002ff0  6a212234  vor.u.mh vr2{mr2}, r4, vr2
002ff4  33120918  bfloat2float.rn r4, r18
002ff8  7e8100e0  vmmov mr2, r1
002ffc  9f000010  addli r1, zero, 2048
003000  6a212234  vor.u.mh vr2{mr2}, r4, vr2
003004  33920918  bfloat2float.rn r4, r19
003008  7e8100e0  vmmov mr2, r1
00300c  9f000020  addli r1, zero, 4096
003010  6a212234  vor.u.mh vr2{mr2}, r4, vr2
003014  33120a18  bfloat2float.rn r4, r20
003018  7e8100e0  vmmov mr2, r1
00301c  9f000040  addli r1, zero, 8192
003020  6a212234  vor.u.mh vr2{mr2}, r4, vr2
003024  33120b18  bfloat2float.rn r4, r22
003028  7e8100e0  vmmov mr2, r1
00302c  ab400000  lui r1, 4
003030  6a212234  vor.u.mh vr2{mr2}, r4, vr2
003034  33920d18  bfloat2float.rn r4, r27
003038  7e8100e0  vmmov mr2, r1
00303c  9f000fec  addli r1, r30, -2560
003040  6a212234  vor.u.mh vr2{mr2}, r4, vr2
003044  33920218  bfloat2float.rn r4, r5
003048  6a212230  vor.u.mh vr2{mr0}, r4, vr2
00304c  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
003050  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
003054  00a00000  mfence { lm }
003058  630a0fec  loadli.w r20,  -2560(r30)
00305c  63470fec  loadli.w r14,  -2556(r30)
003060  e3041fec  loadli.w r9,  -2552(r30)
003064  63481fec  loadli.w r16,  -2548(r30)
003068  e3022fec  loadli.w r5,  -2544(r30)
00306c  e3472fec  loadli.w r15,  -2540(r30)
003070  63023fec  loadli.w r4,  -2536(r30)
003074  63443fec  loadli.w r8,  -2532(r30)
003078  e3034fec  loadli.w r7,  -2528(r30)
00307c  634b4fec  loadli.w r22,  -2524(r30)
003080  63095fec  loadli.w r18,  -2520(r30)
003084  97059a01  and r11, r20, r25
003088  930bb104  setlt.u r23, r2, r11
00308c  e3455fec  loadli.w r11,  -2516(r30)
003090  e30d6fec  loadli.w r27,  -2512(r30)
003094  e3496fec  loadli.w r19,  -2508(r30)
003098  e3087fec  loadli.w r17,  -2504(r30)
00309c  63467fec  loadli.w r12,  -2500(r30)
0030a0  3be00b00  bneq r23, zero, 24
0030a4  9b4b0a01  srli r23, r20, 16
0030a8  9b8b1b00  andi r23, r23, 1
0030ac  0b1a7a11  add.s r20, r20, r23
0030b0  8b1b6a10  add.s r23, r20, r6
0030b4  db010000  j 12
0030b8  ab004000  lui r1, 1024
0030bc  971b1a00  or r23, r20, r1
0030c0  170a9701  and r20, r14, r25
0030c4  130a4105  setlt.u r20, r2, r20
0030c8  3b600a00  bneq r20, zero, 24
0030cc  1b4a0701  srli r20, r14, 16
0030d0  1b0a1a00  andi r20, r20, 1
0030d4  0b174711  add.s r14, r14, r20
0030d8  0b1a6710  add.s r20, r14, r6
0030dc  db010000  j 12
0030e0  ab004000  lui r1, 1024
0030e4  171a1700  or r20, r14, r1
0030e8  17879401  and r14, r9, r25
0030ec  1307e104  setlt.u r14, r2, r14
0030f0  3b600700  bneq r14, zero, 24
0030f4  1bc70401  srli r14, r9, 16
0030f8  1b071700  andi r14, r14, 1
0030fc  8b94e410  add.s r9, r9, r14
003100  8b906410  add.s r1, r9, r6
003104  db010000  j 12
003108  ab004000  lui r1, 1024
00310c  97901400  or r1, r9, r1
003110  97049801  and r9, r16, r25
003114  67441fea  storeli.w r1, -2748(r30)
003118  93049104  setlt.u r9, r2, r9
00311c  3be00400  bneq r9, zero, 24
003120  9b440801  srli r9, r16, 16
003124  9b841400  andi r9, r9, 1
003128  8b149810  add.s r9, r16, r9
00312c  8b906410  add.s r1, r9, r6
003130  db010000  j 12
003134  ab004000  lui r1, 1024
003138  97101800  or r1, r16, r1
00313c  97849201  and r9, r5, r25
003140  67041fea  storeli.w r1, -2752(r30)
003144  93049104  setlt.u r9, r2, r9
003148  3be00400  bneq r9, zero, 24
00314c  9bc40201  srli r9, r5, 16
003150  9b841400  andi r9, r9, 1
003154  8b929210  add.s r5, r5, r9
003158  8b926210  add.s r5, r5, r6
00315c  db010000  j 12
003160  ab004000  lui r1, 1024
003164  97921200  or r5, r5, r1
003168  97849701  and r9, r15, r25
00316c  93049104  setlt.u r9, r2, r9
003170  3be00400  bneq r9, zero, 24
003174  9bc40701  srli r9, r15, 16
003178  9b841400  andi r9, r9, 1
00317c  8b949710  add.s r9, r15, r9
003180  8b976410  add.s r15, r9, r6
003184  db010000  j 12
003188  ab004000  lui r1, 1024
00318c  97971700  or r15, r15, r1
003190  97049201  and r9, r4, r25
003194  93049104  setlt.u r9, r2, r9
003198  3be00400  bneq r9, zero, 24
00319c  9b440201  srli r9, r4, 16
0031a0  9b841400  andi r9, r9, 1
0031a4  0b129210  add.s r4, r4, r9
0031a8  0b126210  add.s r4, r4, r6
0031ac  db010000  j 12
0031b0  ab004000  lui r1, 1024
0031b4  17121200  or r4, r4, r1
0031b8  97049401  and r9, r8, r25
0031bc  93049104  setlt.u r9, r2, r9
0031c0  3be00400  bneq r9, zero, 24
0031c4  9b440401  srli r9, r8, 16
0031c8  9b841400  andi r9, r9, 1
0031cc  0b149410  add.s r8, r8, r9
0031d0  0b146410  add.s r8, r8, r6
0031d4  db010000  j 12
0031d8  ab004000  lui r1, 1024
0031dc  17141400  or r8, r8, r1
0031e0  97849301  and r9, r7, r25
0031e4  93049104  setlt.u r9, r2, r9
0031e8  3be00400  bneq r9, zero, 24
0031ec  9bc40301  srli r9, r7, 16
0031f0  9b841400  andi r9, r9, 1
0031f4  8b939310  add.s r7, r7, r9
0031f8  8b936310  add.s r7, r7, r6
0031fc  db010000  j 12
003200  ab004000  lui r1, 1024
003204  97931300  or r7, r7, r1
003208  97049b01  and r9, r22, r25
00320c  93049104  setlt.u r9, r2, r9
003210  3be00400  bneq r9, zero, 24
003214  9b440b01  srli r9, r22, 16
003218  9b841400  andi r9, r9, 1
00321c  8b149b10  add.s r9, r22, r9
003220  0b986410  add.s r16, r9, r6
003224  db010000  j 12
003228  ab004000  lui r1, 1024
00322c  17181b00  or r16, r22, r1
003230  97049901  and r9, r18, r25
003234  93049104  setlt.u r9, r2, r9
003238  3be00400  bneq r9, zero, 24
00323c  9b440901  srli r9, r18, 16
003240  9b841400  andi r9, r9, 1
003244  8b149910  add.s r9, r18, r9
003248  0b996410  add.s r18, r9, r6
00324c  db010000  j 12
003250  ab004000  lui r1, 1024
003254  17191900  or r18, r18, r1
003258  97849501  and r9, r11, r25
00325c  93049104  setlt.u r9, r2, r9
003260  3be00400  bneq r9, zero, 24
003264  9bc40501  srli r9, r11, 16
003268  9b841400  andi r9, r9, 1
00326c  8b949510  add.s r9, r11, r9
003270  8b956410  add.s r11, r9, r6
003274  db010000  j 12
003278  ab004000  lui r1, 1024
00327c  97951500  or r11, r11, r1
003280  97849d01  and r9, r27, r25
003284  93049104  setlt.u r9, r2, r9
003288  3be00400  bneq r9, zero, 24
00328c  9bc40d01  srli r9, r27, 16
003290  9b841400  andi r9, r9, 1
003294  8b949d10  add.s r9, r27, r9
003298  0b9b6410  add.s r22, r9, r6
00329c  db010000  j 12
0032a0  ab004000  lui r1, 1024
0032a4  179b1d00  or r22, r27, r1
0032a8  97849901  and r9, r19, r25
0032ac  93049104  setlt.u r9, r2, r9
0032b0  3be00400  bneq r9, zero, 24
0032b4  9bc40901  srli r9, r19, 16
0032b8  9b841400  andi r9, r9, 1
0032bc  8b949910  add.s r9, r19, r9
0032c0  8b946410  add.s r9, r9, r6
0032c4  db010000  j 12
0032c8  ab004000  lui r1, 1024
0032cc  97941900  or r9, r19, r1
0032d0  17879801  and r14, r17, r25
0032d4  1307e104  setlt.u r14, r2, r14
0032d8  3b600700  bneq r14, zero, 24
0032dc  1bc70801  srli r14, r17, 16
0032e0  1b071700  andi r14, r14, 1
0032e4  0b97e810  add.s r14, r17, r14
0032e8  0b176710  add.s r14, r14, r6
0032ec  db010000  j 12
0032f0  ab004000  lui r1, 1024
0032f4  17971800  or r14, r17, r1
0032f8  97089601  and r17, r12, r25
0032fc  e706afea  storeli.w r10, -2712(r30)
003300  93081105  setlt.u r17, r2, r17
003304  3be00800  bneq r17, zero, 24
003308  9b480601  srli r17, r12, 16
00330c  9b881800  andi r17, r17, 1
003310  0b161611  add.s r12, r12, r17
003314  0b166610  add.s r12, r12, r6
003318  db010000  j 12
00331c  ab004000  lui r1, 1024
003320  17161600  or r12, r12, r1
003324  6305efeb  loadli.w r10,  -2576(r30)
003328  9f000004  addli r1, zero, 512
00332c  3f201500  blt.s r10, r1, 8
003330  5b34ffff  j -1632
003334  ab00ffff  lui r1, 1048560
003338  63418fea  loadli.w r2,  -2748(r30)
00333c  97881b00  and r17, r23, r1
003340  97091a00  and r19, r20, r1
003344  97821200  and r5, r5, r1
003348  97871700  and r15, r15, r1
00334c  17021200  and r4, r4, r1
003350  97831300  and r7, r7, r1
003354  17061600  and r12, r12, r1
003358  17091900  and r18, r18, r1
00335c  170b1b00  and r22, r22, r1
003360  17071700  and r14, r14, r1
003364  97851500  and r11, r11, r1
003368  97841400  and r9, r9, r1
00336c  17041400  and r8, r8, r1
003370  17081800  and r16, r16, r1
003374  170a1100  and r20, r2, r1
003378  63018fea  loadli.w r2,  -2752(r30)
00337c  8be8d818  sub.f.rn r17, r17, r13
003380  8bedd218  sub.f.rn r27, r5, r13
003384  8b6cd218  sub.f.rn r25, r4, r13
003388  8be7d718  sub.f.rn r15, r15, r13
00338c  0be3d318  sub.f.rn r6, r7, r13
003390  0b69d918  sub.f.rn r18, r18, r13
003394  0b6bdb18  sub.f.rn r22, r22, r13
003398  0b67d718  sub.f.rn r14, r14, r13
00339c  1f820100  addli r4, r3, 0
0033a0  9f810a00  addli r3, r21, 0
0033a4  9f0a0c00  addli r21, r24, 0
0033a8  1f0c0d00  addli r24, r26, 0
0033ac  0be5d518  sub.f.rn r10, r11, r13
0033b0  8be9d918  sub.f.rn r19, r19, r13
0033b4  0b6dd418  sub.f.rn r26, r8, r13
0033b8  0beed418  sub.f.rn r28, r9, r13
0033bc  0b6ada18  sub.f.rn r20, r20, r13
0033c0  970b1100  and r23, r2, r1
0033c4  8b60d618  sub.f.rn r1, r12, r13
0033c8  0b61d818  sub.f.rn r2, r16, r13
0033cc  8bebdb18  sub.f.rn r23, r23, r13
0033d0  8be21821  mul.f.rn r5, r17, r17
0033d4  0be6f720  mul.f.rn r12, r15, r15
0033d8  8be79c21  mul.f.rn r15, r25, r25
0033dc  8b686320  mul.f.rn r17, r6, r6
0033e0  6303ffeb  loadli.w r6,  -2568(r30)
0033e4  e34cffeb  loadli.w r25,  -2564(r30)
0033e8  8be5bd21  mul.f.rn r11, r27, r27
0033ec  0b68ad21  mul.f.rn r16, r26, r26
0033f0  1f0d0c00  addli r26, r24, 0
0033f4  1f8c0a00  addli r24, r21, 0
0033f8  9f8a0100  addli r21, r3, 0
0033fc  8b6dce21  mul.f.rn r27, r28, r28
003400  9f010200  addli r3, r4, 0
003404  0b692921  mul.f.rn r18, r18, r18
003408  0b6b6b21  mul.f.rn r22, r22, r22
00340c  1f0e0ff4  addli r28, r30, -1536
003410  0b67e720  mul.f.rn r14, r14, r14
003414  8b634a21  mul.f.rn r7, r20, r20
003418  0bea1020  mul.f.rn r20, r1, r1
00341c  8b642120  mul.f.rn r9, r2, r2
003420  2b01807f  lui r2, 522240
003424  0be47b21  mul.f.rn r8, r23, r23
003428  67445fea  storeli.w r5, -2748(r30)
00342c  8be23921  mul.f.rn r5, r19, r19
003430  8b69a520  mul.f.rn r19, r10, r10
003434  e3408fea  loadli.w r1,  -2748(r30)
003438  5b1bffff  j -1832
00343c  8b608d11  add.f.rn r1, r26, r24
003440  63015fe5  loadli.w r2,  -3416(r30)
003444  8be05011  add.f.rn r1, r1, r21
003448  8be03010  add.f.rn r1, r1, r3
00344c  8be05010  add.f.rn r1, r1, r5
003450  8be07011  add.f.rn r1, r1, r23
003454  8be07010  add.f.rn r1, r1, r7
003458  8be08010  add.f.rn r1, r1, r8
00345c  8be0a010  add.f.rn r1, r1, r10
003460  8be09010  add.f.rn r1, r1, r9
003464  8be0b010  add.f.rn r1, r1, r11
003468  8be0c010  add.f.rn r1, r1, r12
00346c  8be02011  add.f.rn r1, r1, r18
003470  8be0f010  add.f.rn r1, r1, r15
003474  8be0e010  add.f.rn r1, r1, r14
003478  8be00011  add.f.rn r1, r1, r16
00347c  73601100  stores.w r1, 0(r2)
003480  00a00300  mfence { lm, sm, gm }
003484  6342afe9  loadli.w r4,  -2860(r30)
003488  80210204  csr_set csr3, r4
00348c  00d00100  sync_group
003490  e300afe9  loadli.w r1,  -2864(r30)
003494  3ba10000  bneq r1, zero, 72
003498  e3026fe5  loadli.w r5,  -3408(r30)
00349c  efc00200  loads.w r1, 0(r5)
0034a0  6fc14200  loads.w r2, 4(r5)
0034a4  efc18200  loads.w r3, 8(r5)
0034a8  8be02010  add.f.rn r1, r1, r2
0034ac  6fc1c200  loads.w r2, 12(r5)
0034b0  8be03010  add.f.rn r1, r1, r3
0034b4  efc10201  loads.w r3, 16(r5)
0034b8  8be02010  add.f.rn r1, r1, r2
0034bc  6fc14201  loads.w r2, 20(r5)
0034c0  8be03010  add.f.rn r1, r1, r3
0034c4  efc18201  loads.w r3, 24(r5)
0034c8  8be02010  add.f.rn r1, r1, r2
0034cc  6fc1c201  loads.w r2, 28(r5)
0034d0  8be03010  add.f.rn r1, r1, r3
0034d4  8be02010  add.f.rn r1, r1, r2
0034d8  73e01200  stores.w r1, 0(r5)
0034dc  00a00300  mfence { lm, sm, gm }
0034e0  80210204  csr_set csr3, r4
0034e4  00d00100  sync_group
0034e8  63016fe5  loadli.w r2,  -3408(r30)
0034ec  ab01803a  lui r3, 239616
0034f0  9f000000  addli r1, zero, 0
0034f4  1f0e0000  addli r28, zero, 0
0034f8  9f0d0ff4  addli r27, r30, -1536
0034fc  6f410100  loads.w r2, 0(r2)
003500  0b613120  mul.f.rn r2, r2, r3
003504  e3017fe4  loadli.w r3,  -3528(r30)
003508  0b613110  add.f.rn r2, r2, r3
00350c  ab01803f  lui r3, 260096
003510  0f010108  sqrt.f.rn r2, r2
003514  0f812118  div.f.rn r2, r3, r2
003518  9f010ff8  addli r3, r30, -1024
00351c  9fe13100  addli r3, r3, 30
003520  e74d3fe8  storeli.w r3, -2852(r30)
003524  9f010ffa  addli r3, r30, -768
003528  9fe13100  addli r3, r3, 30
00352c  e70d3fe8  storeli.w r3, -2856(r30)
003530  5b4f0000  j 632
003534  1b460b01  srli r12, r22, 16
003538  e307ffeb  loadli.w r15,  -2568(r30)
00353c  1b061600  andi r12, r12, 1
003540  0b16cb10  add.s r12, r22, r12
003544  0b16f610  add.s r12, r12, r15
003548  e3473fea  loadli.w r15,  -2788(r30)
00354c  ab0dffff  lui r27, 1048560
003550  630b2fea  loadli.w r22,  -2800(r30)
003554  e30b1fea  loadli.w r23,  -2808(r30)
003558  630c0fea  loadli.w r24,  -2816(r30)
00355c  e30cffe9  loadli.w r25,  -2824(r30)
003560  630defe9  loadli.w r26,  -2832(r30)
003564  630eefeb  loadli.w r28,  -2576(r30)
003568  1706b601  and r12, r12, r27
00356c  9787b701  and r15, r15, r27
003570  170bbb01  and r22, r22, r27
003574  978bbb01  and r23, r23, r27
003578  170cbc01  and r24, r24, r27
00357c  978cbc01  and r25, r25, r27
003580  170dbd01  and r26, r26, r27
003584  1f0e8e00  addli r28, r28, 64
003588  0b66d618  sub.f.rn r12, r12, r13
00358c  8be7d718  sub.f.rn r15, r15, r13
003590  0b6bdb18  sub.f.rn r22, r22, r13
003594  8bebdb18  sub.f.rn r23, r23, r13
003598  0b6cdc18  sub.f.rn r24, r24, r13
00359c  8becdc18  sub.f.rn r25, r25, r13
0035a0  0b6ddd18  sub.f.rn r26, r26, r13
0035a4  0b66c120  mul.f.rn r12, r2, r12
0035a8  8b67f120  mul.f.rn r15, r2, r15
0035ac  0b6b6121  mul.f.rn r22, r2, r22
0035b0  8b6b7121  mul.f.rn r23, r2, r23
0035b4  0b6c8121  mul.f.rn r24, r2, r24
0035b8  8b6c9121  mul.f.rn r25, r2, r25
0035bc  0b6da121  mul.f.rn r26, r2, r26
0035c0  0be48720  mul.f.rn r8, r15, r8
0035c4  e3472fea  loadli.w r15,  -2796(r30)
0035c8  8b649b20  mul.f.rn r9, r22, r9
0035cc  634b1fea  loadli.w r22,  -2804(r30)
0035d0  0be5ab20  mul.f.rn r10, r23, r10
0035d4  e34b0fea  loadli.w r23,  -2812(r30)
0035d8  8b65bc20  mul.f.rn r11, r24, r11
0035dc  634cffe9  loadli.w r24,  -2820(r30)
0035e0  0be36c20  mul.f.rn r6, r25, r6
0035e4  e30ccfe9  loadli.w r25,  -2848(r30)
0035e8  8b637d20  mul.f.rn r7, r26, r7
0035ec  634dcfea  loadli.w r26,  -2716(r30)
0035f0  9787b701  and r15, r15, r27
0035f4  170bbb01  and r22, r22, r27
0035f8  978bbb01  and r23, r23, r27
0035fc  170cbc01  and r24, r24, r27
003600  978cbc01  and r25, r25, r27
003604  8be7d718  sub.f.rn r15, r15, r13
003608  0b6bdb18  sub.f.rn r22, r22, r13
00360c  8bebdb18  sub.f.rn r23, r23, r13
003610  0b6cdc18  sub.f.rn r24, r24, r13
003614  8becdc18  sub.f.rn r25, r25, r13
003618  8b67f120  mul.f.rn r15, r2, r15
00361c  0b6b6121  mul.f.rn r22, r2, r22
003620  8b6b7121  mul.f.rn r23, r2, r23
003624  0b6c8121  mul.f.rn r24, r2, r24
003628  8b6c9121  mul.f.rn r25, r2, r25
00362c  0be24720  mul.f.rn r4, r15, r4
003630  e347efe9  loadli.w r15,  -2828(r30)
003634  8b625b20  mul.f.rn r5, r22, r5
003638  634bdfe9  loadli.w r22,  -2836(r30)
00363c  0be7eb20  mul.f.rn r14, r23, r14
003640  e30bdfe9  loadli.w r23,  -2840(r30)
003644  8b613c20  mul.f.rn r3, r24, r3
003648  634ccfe9  loadli.w r24,  -2844(r30)
00364c  9787b701  and r15, r15, r27
003650  170bbb01  and r22, r22, r27
003654  978bbb01  and r23, r23, r27
003658  170cbc01  and r24, r24, r27
00365c  9f0d0ff4  addli r27, r30, -1536
003660  8be7d718  sub.f.rn r15, r15, r13
003664  0b6bdb18  sub.f.rn r22, r22, r13
003668  8bebdb18  sub.f.rn r23, r23, r13
00366c  0b6cdc18  sub.f.rn r24, r24, r13
003670  8b67f120  mul.f.rn r15, r2, r15
003674  0b6b6121  mul.f.rn r22, r2, r22
003678  8b6b7121  mul.f.rn r23, r2, r23
00367c  0b6c8121  mul.f.rn r24, r2, r24
003680  8be7a721  mul.f.rn r15, r15, r26
003684  630dcfea  loadli.w r26,  -2720(r30)
003688  0b6bab21  mul.f.rn r22, r22, r26
00368c  634dbfea  loadli.w r26,  -2724(r30)
003690  8bebab21  mul.f.rn r23, r23, r26
003694  630dbfea  loadli.w r26,  -2728(r30)
003698  8be72711  add.f.rn r15, r15, r18
00369c  0b6cac21  mul.f.rn r24, r24, r26
0036a0  634dafea  loadli.w r26,  -2732(r30)
0036a4  0b693b11  add.f.rn r18, r22, r19
0036a8  8becac21  mul.f.rn r25, r25, r26
0036ac  630dafea  loadli.w r26,  -2736(r30)
0036b0  8be95b11  add.f.rn r19, r23, r21
0036b4  0b66a621  mul.f.rn r12, r12, r26
0036b8  634d9fea  loadli.w r26,  -2740(r30)
0036bc  0b6a4c11  add.f.rn r20, r24, r20
0036c0  0b64a411  add.f.rn r8, r8, r26
0036c4  630d9fea  loadli.w r26,  -2744(r30)
0036c8  0be80c11  add.f.rn r16, r25, r16
0036cc  8be4a411  add.f.rn r9, r9, r26
0036d0  634d8fea  loadli.w r26,  -2748(r30)
0036d4  0b661611  add.f.rn r12, r12, r17
0036d8  8b981d10  add.s r17, r27, r1
0036dc  9f804000  addli r1, r1, 32
0036e0  0b65a511  add.f.rn r10, r10, r26
0036e4  630d8fea  loadli.w r26,  -2752(r30)
0036e8  33140400  float2bfloat.rn r8, r8
0036ec  73908800  store.h r8, 0(r17)
0036f0  8be5a511  add.f.rn r11, r11, r26
0036f4  634d7fea  loadli.w r26,  -2756(r30)
0036f8  b3940400  float2bfloat.rn r9, r9
0036fc  73919800  store.h r9, 2(r17)
003700  0b62a211  add.f.rn r4, r4, r26
003704  630d7fea  loadli.w r26,  -2760(r30)
003708  33140500  float2bfloat.rn r8, r10
00370c  73928800  store.h r8, 4(r17)
003710  8be2a211  add.f.rn r5, r5, r26
003714  634d6fea  loadli.w r26,  -2764(r30)
003718  b3940500  float2bfloat.rn r9, r11
00371c  73939800  store.h r9, 6(r17)
003720  0b67a711  add.f.rn r14, r14, r26
003724  630d6fea  loadli.w r26,  -2768(r30)
003728  33120200  float2bfloat.rn r4, r4
00372c  73944800  store.h r4, 8(r17)
003730  8be1a111  add.f.rn r3, r3, r26
003734  634d5fea  loadli.w r26,  -2772(r30)
003738  b3920200  float2bfloat.rn r5, r5
00373c  73955800  store.h r5, 10(r17)
003740  0b63a311  add.f.rn r6, r6, r26
003744  630d5fea  loadli.w r26,  -2776(r30)
003748  33120700  float2bfloat.rn r4, r14
00374c  73964800  store.h r4, 12(r17)
003750  8be3a311  add.f.rn r7, r7, r26
003754  b3910100  float2bfloat.rn r3, r3
003758  73973800  store.h r3, 14(r17)
00375c  b3110300  float2bfloat.rn r3, r6
003760  73983800  store.h r3, 16(r17)
003764  b3910700  float2bfloat.rn r3, r15
003768  33920300  float2bfloat.rn r4, r7
00376c  739a3800  store.h r3, 20(r17)
003770  b3910900  float2bfloat.rn r3, r19
003774  73994800  store.h r4, 18(r17)
003778  33120900  float2bfloat.rn r4, r18
00377c  739c3800  store.h r3, 24(r17)
003780  b3110800  float2bfloat.rn r3, r16
003784  739b4800  store.h r4, 22(r17)
003788  33120a00  float2bfloat.rn r4, r20
00378c  739e3800  store.h r3, 28(r17)
003790  9f010004  addli r3, zero, 512
003794  739d4800  store.h r4, 26(r17)
003798  33120600  float2bfloat.rn r4, r12
00379c  739f4800  store.h r4, 30(r17)
0037a0  00a00000  mfence { lm }
0037a4  37793ee6  beq r28, r3, -12708
0037a8  8b92cd11  add.s r5, r27, r28
0037ac  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0037b0  1f1a0000  addli r20, zero, 1
0037b4  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0037b8  6bb30200  load.hu r6, 0(r5)
0037bc  ebb32200  load.hu r7, 2(r5)
0037c0  7e010ae0  vmmov mr2, r20
0037c4  6bb2a201  load.hu r4, 26(r5)
0037c8  ebb1c201  load.hu r3, 28(r5)
0037cc  6bb44200  load.hu r8, 4(r5)
0037d0  ebb46200  load.hu r9, 6(r5)
0037d4  6bb58200  load.hu r10, 8(r5)
0037d8  ebb5a200  load.hu r11, 10(r5)
0037dc  6bb6c200  load.hu r12, 12(r5)
0037e0  6bb7e200  load.hu r14, 14(r5)
0037e4  ebb70201  load.hu r15, 16(r5)
0037e8  6bb82201  load.hu r16, 18(r5)
0037ec  ebb84201  load.hu r17, 20(r5)
0037f0  6bb96201  load.hu r18, 22(r5)
0037f4  ebb98201  load.hu r19, 24(r5)
0037f8  ebb2e201  load.hu r5, 30(r5)
0037fc  33130318  bfloat2float.rn r6, r6
003800  33120218  bfloat2float.rn r4, r4
003804  b3910118  bfloat2float.rn r3, r3
003808  ea201334  vor.u.mh vr1{mr2}, r6, vr1
00380c  33930318  bfloat2float.rn r6, r7
003810  9f230000  addli r7, zero, 2
003814  fe8103e0  vmmov mr3, r7
003818  9f430000  addli r7, zero, 4
00381c  ea201336  vor.u.mh vr1{mr3}, r6, vr1
003820  33130418  bfloat2float.rn r6, r8
003824  7e8003e0  vmmov mr0, r7
003828  9f031000  addli r7, zero, 8
00382c  ea201330  vor.u.mh vr1{mr0}, r6, vr1
003830  33930418  bfloat2float.rn r6, r9
003834  7e8003e0  vmmov mr0, r7
003838  9f032000  addli r7, zero, 16
00383c  ea201330  vor.u.mh vr1{mr0}, r6, vr1
003840  33130518  bfloat2float.rn r6, r10
003844  7e8003e0  vmmov mr0, r7
003848  9f034000  addli r7, zero, 32
00384c  ea201330  vor.u.mh vr1{mr0}, r6, vr1
003850  33930518  bfloat2float.rn r6, r11
003854  7e8003e0  vmmov mr0, r7
003858  9f038000  addli r7, zero, 64
00385c  ea201330  vor.u.mh vr1{mr0}, r6, vr1
003860  33130618  bfloat2float.rn r6, r12
003864  7e8003e0  vmmov mr0, r7
003868  9f030001  addli r7, zero, 128
00386c  ea201330  vor.u.mh vr1{mr0}, r6, vr1
003870  33130718  bfloat2float.rn r6, r14
003874  7e8003e0  vmmov mr0, r7
003878  9f030002  addli r7, zero, 256
00387c  ea201330  vor.u.mh vr1{mr0}, r6, vr1
003880  33930718  bfloat2float.rn r6, r15
003884  7e8003e0  vmmov mr0, r7
003888  9f030004  addli r7, zero, 512
00388c  ea201330  vor.u.mh vr1{mr0}, r6, vr1
003890  33130818  bfloat2float.rn r6, r16
003894  7e8003e0  vmmov mr0, r7
003898  9f030008  addli r7, zero, 1024
00389c  ea201330  vor.u.mh vr1{mr0}, r6, vr1
0038a0  33930818  bfloat2float.rn r6, r17
0038a4  7e8003e0  vmmov mr0, r7
0038a8  9f030010  addli r7, zero, 2048
0038ac  ea201330  vor.u.mh vr1{mr0}, r6, vr1
0038b0  33130918  bfloat2float.rn r6, r18
0038b4  7e8003e0  vmmov mr0, r7
0038b8  9f030020  addli r7, zero, 4096
0038bc  ea201330  vor.u.mh vr1{mr0}, r6, vr1
0038c0  33930918  bfloat2float.rn r6, r19
0038c4  7e8003e0  vmmov mr0, r7
0038c8  ea201330  vor.u.mh vr1{mr0}, r6, vr1
0038cc  1f030040  addli r6, zero, 8192
0038d0  7e0003e0  vmmov mr0, r6
0038d4  ea201230  vor.u.mh vr1{mr0}, r4, vr1
0038d8  2b420000  lui r4, 4
0038dc  7e0002e0  vmmov mr0, r4
0038e0  1f020ff6  addli r4, r30, -1280
0038e4  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0038e8  b3910218  bfloat2float.rn r3, r5
0038ec  ab820000  lui r5, 8
0038f0  0b12c211  add.s r4, r4, r28
0038f4  670fcfeb  storeli.w r28, -2576(r30)
0038f8  7e8002e0  vmmov mr0, r5
0038fc  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
003900  eb310200  load.hu r3, 0(r4)
003904  eb322200  load.hu r5, 2(r4)
003908  6b334200  load.hu r6, 4(r4)
00390c  eb336200  load.hu r7, 6(r4)
003910  6b348200  load.hu r8, 8(r4)
003914  eb34a200  load.hu r9, 10(r4)
003918  6b35c200  load.hu r10, 12(r4)
00391c  eb35e200  load.hu r11, 14(r4)
003920  6b360201  load.hu r12, 16(r4)
003924  6b372201  load.hu r14, 18(r4)
003928  eb374201  load.hu r15, 20(r4)
00392c  6b386201  load.hu r16, 22(r4)
003930  eb388201  load.hu r17, 24(r4)
003934  6b39a201  load.hu r18, 26(r4)
003938  eb39c201  load.hu r19, 28(r4)
00393c  339a0118  bfloat2float.rn r20, r3
003940  eb31e201  load.hu r3, 30(r4)
003944  33920218  bfloat2float.rn r4, r5
003948  9f420000  addli r5, zero, 4
00394c  6a212a34  vor.u.mh vr2{mr2}, r20, vr2
003950  7e8102e0  vmmov mr2, r5
003954  9f021000  addli r5, zero, 8
003958  b3910118  bfloat2float.rn r3, r3
00395c  6a212236  vor.u.mh vr2{mr3}, r4, vr2
003960  33120318  bfloat2float.rn r4, r6
003964  1f030ff8  addli r6, r30, -1024
003968  0b131310  add.s r6, r6, r1
00396c  6a212234  vor.u.mh vr2{mr2}, r4, vr2
003970  33920318  bfloat2float.rn r4, r7
003974  7e8102e0  vmmov mr2, r5
003978  9f022000  addli r5, zero, 16
00397c  ab430000  lui r7, 4
003980  6a212234  vor.u.mh vr2{mr2}, r4, vr2
003984  33120418  bfloat2float.rn r4, r8
003988  7e8102e0  vmmov mr2, r5
00398c  9f024000  addli r5, zero, 32
003990  6a212234  vor.u.mh vr2{mr2}, r4, vr2
003994  33920418  bfloat2float.rn r4, r9
003998  7e8102e0  vmmov mr2, r5
00399c  9f028000  addli r5, zero, 64
0039a0  6a212234  vor.u.mh vr2{mr2}, r4, vr2
0039a4  33120518  bfloat2float.rn r4, r10
0039a8  7e8102e0  vmmov mr2, r5
0039ac  9f020001  addli r5, zero, 128
0039b0  6a212234  vor.u.mh vr2{mr2}, r4, vr2
0039b4  33920518  bfloat2float.rn r4, r11
0039b8  7e8102e0  vmmov mr2, r5
0039bc  9f020002  addli r5, zero, 256
0039c0  6a212234  vor.u.mh vr2{mr2}, r4, vr2
0039c4  33120618  bfloat2float.rn r4, r12
0039c8  7e8102e0  vmmov mr2, r5
0039cc  9f020004  addli r5, zero, 512
0039d0  6a212234  vor.u.mh vr2{mr2}, r4, vr2
0039d4  33120718  bfloat2float.rn r4, r14
0039d8  7e8102e0  vmmov mr2, r5
0039dc  9f020008  addli r5, zero, 1024
0039e0  6a212234  vor.u.mh vr2{mr2}, r4, vr2
0039e4  33920718  bfloat2float.rn r4, r15
0039e8  7e8102e0  vmmov mr2, r5
0039ec  9f020010  addli r5, zero, 2048
0039f0  6a212234  vor.u.mh vr2{mr2}, r4, vr2
0039f4  33120818  bfloat2float.rn r4, r16
0039f8  7e8102e0  vmmov mr2, r5
0039fc  9f020020  addli r5, zero, 4096
003a00  6a212234  vor.u.mh vr2{mr2}, r4, vr2
003a04  33920818  bfloat2float.rn r4, r17
003a08  7e8102e0  vmmov mr2, r5
003a0c  9f020040  addli r5, zero, 8192
003a10  6a212234  vor.u.mh vr2{mr2}, r4, vr2
003a14  33120918  bfloat2float.rn r4, r18
003a18  7e8102e0  vmmov mr2, r5
003a1c  b3920918  bfloat2float.rn r5, r19
003a20  6a212234  vor.u.mh vr2{mr2}, r4, vr2
003a24  6342bfe9  loadli.w r4,  -2852(r30)
003a28  7e8103e0  vmmov mr2, r7
003a2c  9f030ffa  addli r7, r30, -768
003a30  8b931310  add.s r7, r7, r1
003a34  0b121210  add.s r4, r4, r1
003a38  6aa12234  vor.u.mh vr2{mr2}, r5, vr2
003a3c  e302bfe9  loadli.w r5,  -2856(r30)
003a40  8b921210  add.s r5, r5, r1
003a44  6aa12130  vor.u.mh vr2{mr0}, r3, vr2
003a48  eb3142fe  load.hu r3, -28(r4)
003a4c  eb370300  load.hu r15, 0(r6)
003a50  6b3862fe  load.hu r16, -26(r4)
003a54  eb3b82fe  load.hu r23, -24(r4)
003a58  6b3ca2fe  load.hu r24, -22(r4)
003a5c  eb3cc2fe  load.hu r25, -20(r4)
003a60  6b3de2fe  load.hu r26, -18(r4)
003a64  6b3e02ff  load.hu r28, -16(r4)
003a68  eb3d62ff  load.hu r27, -10(r4)
003a6c  67463fea  storeli.w r3, -2716(r30)
003a70  eb3122ff  load.hu r3, -14(r4)
003a74  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
003a78  67063fea  storeli.w r3, -2720(r30)
003a7c  eb3142ff  load.hu r3, -12(r4)
003a80  e7453fea  storeli.w r3, -2724(r30)
003a84  eb3182ff  load.hu r3, -8(r4)
003a88  e7053fea  storeli.w r3, -2728(r30)
003a8c  eb31a2ff  load.hu r3, -6(r4)
003a90  67453fea  storeli.w r3, -2732(r30)
003a94  eb31c2ff  load.hu r3, -4(r4)
003a98  67053fea  storeli.w r3, -2736(r30)
003a9c  eb31e2ff  load.hu r3, -2(r4)
003aa0  e7443fea  storeli.w r3, -2740(r30)
003aa4  eb310200  load.hu r3, 0(r4)
003aa8  2b02807f  lui r4, 522240
003aac  e7043fea  storeli.w r3, -2744(r30)
003ab0  ebb10300  load.hu r3, 0(r7)
003ab4  67443fea  storeli.w r3, -2748(r30)
003ab8  ebb142fe  load.hu r3, -28(r5)
003abc  67043fea  storeli.w r3, -2752(r30)
003ac0  ebb162fe  load.hu r3, -26(r5)
003ac4  e7433fea  storeli.w r3, -2756(r30)
003ac8  ebb182fe  load.hu r3, -24(r5)
003acc  e7033fea  storeli.w r3, -2760(r30)
003ad0  ebb1a2fe  load.hu r3, -22(r5)
003ad4  67433fea  storeli.w r3, -2764(r30)
003ad8  ebb1c2fe  load.hu r3, -20(r5)
003adc  67033fea  storeli.w r3, -2768(r30)
003ae0  ebb1e2fe  load.hu r3, -18(r5)
003ae4  e7423fea  storeli.w r3, -2772(r30)
003ae8  ebb102ff  load.hu r3, -16(r5)
003aec  e7023fea  storeli.w r3, -2776(r30)
003af0  ebb122ff  load.hu r3, -14(r5)
003af4  67423fea  storeli.w r3, -2780(r30)
003af8  ebb142ff  load.hu r3, -12(r5)
003afc  67023fea  storeli.w r3, -2784(r30)
003b00  ebb162ff  load.hu r3, -10(r5)
003b04  e7013fea  storeli.w r3, -2792(r30)
003b08  ebb182ff  load.hu r3, -8(r5)
003b0c  67083fea  storeli.w r3, -2688(r30)
003b10  ebb1a2ff  load.hu r3, -6(r5)
003b14  e7073fea  storeli.w r3, -2696(r30)
003b18  ebb1c2ff  load.hu r3, -4(r5)
003b1c  67073fea  storeli.w r3, -2704(r30)
003b20  ebb1e2ff  load.hu r3, -2(r5)
003b24  e7463fea  storeli.w r3, -2708(r30)
003b28  ebb10200  load.hu r3, 0(r5)
003b2c  e7063fea  storeli.w r3, -2712(r30)
003b30  46100fc2  vstore_mask16.mz vr0{mr1}, 1536(r30)
003b34  00a00000  mfence { lm }
003b38  63050ffc  loadli.w r10,  -512(r30)
003b3c  e341ffeb  loadli.w r3,  -2564(r30)
003b40  e3450ffc  loadli.w r11,  -508(r30)
003b44  e3041ffc  loadli.w r9,  -504(r30)
003b48  63441ffc  loadli.w r8,  -500(r30)
003b4c  e3032ffc  loadli.w r7,  -496(r30)
003b50  e3422ffc  loadli.w r5,  -492(r30)
003b54  97013500  and r3, r10, r3
003b58  13063204  setlt.u r12, r4, r3
003b5c  63023ffc  loadli.w r4,  -488(r30)
003b60  63433ffc  loadli.w r6,  -484(r30)
003b64  e3014ffc  loadli.w r3,  -480(r30)
003b68  e3494ffc  loadli.w r19,  -476(r30)
003b6c  63095ffc  loadli.w r18,  -472(r30)
003b70  e34a5ffc  loadli.w r21,  -468(r30)
003b74  630a6ffc  loadli.w r20,  -464(r30)
003b78  e3486ffc  loadli.w r17,  -460(r30)
003b7c  63077ffc  loadli.w r14,  -456(r30)
003b80  634b7ffc  loadli.w r22,  -452(r30)
003b84  3b700600  bneq r12, zero, 28
003b88  1b460501  srli r12, r10, 16
003b8c  1b061600  andi r12, r12, 1
003b90  0b15c510  add.s r10, r10, r12
003b94  6306ffeb  loadli.w r12,  -2568(r30)
003b98  0b15c510  add.s r10, r10, r12
003b9c  db010000  j 12
003ba0  2b064000  lui r12, 1024
003ba4  1715c500  or r10, r10, r12
003ba8  e741afea  storeli.w r10, -2788(r30)
003bac  6345ffeb  loadli.w r10,  -2564(r30)
003bb0  2b06807f  lui r12, 522240
003bb4  1785a500  and r10, r11, r10
003bb8  1305a604  setlt.u r10, r12, r10
003bbc  3b700500  bneq r10, zero, 28
003bc0  1bc50501  srli r10, r11, 16
003bc4  1b051500  andi r10, r10, 1
003bc8  0b95a510  add.s r10, r11, r10
003bcc  e305ffeb  loadli.w r11,  -2568(r30)
003bd0  0b15b510  add.s r10, r10, r11
003bd4  db010000  j 12
003bd8  2b054000  lui r10, 1024
003bdc  1795a500  or r10, r11, r10
003be0  6701afea  storeli.w r10, -2800(r30)
003be4  6345ffeb  loadli.w r10,  -2564(r30)
003be8  ab05807f  lui r11, 522240
003bec  1785a400  and r10, r9, r10
003bf0  1385a504  setlt.u r10, r11, r10
003bf4  3b700500  bneq r10, zero, 28
003bf8  1bc50401  srli r10, r9, 16
003bfc  1b051500  andi r10, r10, 1
003c00  8b94a410  add.s r9, r9, r10
003c04  6305ffeb  loadli.w r10,  -2568(r30)
003c08  8b94a410  add.s r9, r9, r10
003c0c  db010000  j 12
003c10  2b054000  lui r10, 1024
003c14  9794a400  or r9, r9, r10
003c18  e7009fea  storeli.w r9, -2808(r30)
003c1c  e344ffeb  loadli.w r9,  -2564(r30)
003c20  2b05807f  lui r10, 522240
003c24  97049400  and r9, r8, r9
003c28  93049504  setlt.u r9, r10, r9
003c2c  3bf00400  bneq r9, zero, 28
003c30  9b440401  srli r9, r8, 16
003c34  9b841400  andi r9, r9, 1
003c38  0b149410  add.s r8, r8, r9
003c3c  e304ffeb  loadli.w r9,  -2568(r30)
003c40  0b149410  add.s r8, r8, r9
003c44  db010000  j 12
003c48  ab044000  lui r9, 1024
003c4c  17149400  or r8, r8, r9
003c50  67008fea  storeli.w r8, -2816(r30)
003c54  6344ffeb  loadli.w r8,  -2564(r30)
003c58  17848300  and r8, r7, r8
003c5c  13048504  setlt.u r8, r10, r8
003c60  3b700400  bneq r8, zero, 28
003c64  1bc40301  srli r8, r7, 16
003c68  1b041400  andi r8, r8, 1
003c6c  8b938310  add.s r7, r7, r8
003c70  6304ffeb  loadli.w r8,  -2568(r30)
003c74  8b938310  add.s r7, r7, r8
003c78  db010000  j 12
003c7c  2b044000  lui r8, 1024
003c80  97938300  or r7, r7, r8
003c84  67417fea  storeli.w r7, -2796(r30)
003c88  e343ffeb  loadli.w r7,  -2564(r30)
003c8c  97837200  and r7, r5, r7
003c90  93037504  setlt.u r7, r10, r7
003c94  3bf00300  bneq r7, zero, 28
003c98  9bc30201  srli r7, r5, 16
003c9c  9b831300  andi r7, r7, 1
003ca0  8b927210  add.s r5, r5, r7
003ca4  e303ffeb  loadli.w r7,  -2568(r30)
003ca8  8b927210  add.s r5, r5, r7
003cac  db010000  j 12
003cb0  ab034000  lui r7, 1024
003cb4  97927200  or r5, r5, r7
003cb8  e7405fea  storeli.w r5, -2804(r30)
003cbc  e342ffeb  loadli.w r5,  -2564(r30)
003cc0  97025200  and r5, r4, r5
003cc4  93025504  setlt.u r5, r10, r5
003cc8  3bf00200  bneq r5, zero, 28
003ccc  9b420201  srli r5, r4, 16
003cd0  9b821200  andi r5, r5, 1
003cd4  0b125210  add.s r4, r4, r5
003cd8  e302ffeb  loadli.w r5,  -2568(r30)
003cdc  0b125210  add.s r4, r4, r5
003ce0  db010000  j 12
003ce4  ab024000  lui r5, 1024
003ce8  17125200  or r4, r4, r5
003cec  67404fea  storeli.w r4, -2812(r30)
003cf0  6342ffeb  loadli.w r4,  -2564(r30)
003cf4  17024300  and r4, r6, r4
003cf8  13024504  setlt.u r4, r10, r4
003cfc  3b700200  bneq r4, zero, 28
003d00  1b420301  srli r4, r6, 16
003d04  e302ffeb  loadli.w r5,  -2568(r30)
003d08  1b021200  andi r4, r4, 1
003d0c  0b124310  add.s r4, r6, r4
003d10  0b125210  add.s r4, r4, r5
003d14  5b020000  j 16
003d18  2b024000  lui r4, 1024
003d1c  e302ffeb  loadli.w r5,  -2568(r30)
003d20  17124300  or r4, r6, r4
003d24  e74f4fe8  storeli.w r4, -2820(r30)
003d28  6342ffeb  loadli.w r4,  -2564(r30)
003d2c  17824100  and r4, r3, r4
003d30  13024504  setlt.u r4, r10, r4
003d34  3b600200  bneq r4, zero, 24
003d38  1bc20101  srli r4, r3, 16
003d3c  1b021200  andi r4, r4, 1
003d40  8b914110  add.s r3, r3, r4
003d44  8b915110  add.s r3, r3, r5
003d48  db010000  j 12
003d4c  2b024000  lui r4, 1024
003d50  97914100  or r3, r3, r4
003d54  e70f3fe8  storeli.w r3, -2824(r30)
003d58  e341ffeb  loadli.w r3,  -2564(r30)
003d5c  97813900  and r3, r19, r3
003d60  93013504  setlt.u r3, r10, r3
003d64  3be00100  bneq r3, zero, 24
003d68  9bc10901  srli r3, r19, 16
003d6c  9b811100  andi r3, r3, 1
003d70  8b913910  add.s r3, r19, r3
003d74  8b915110  add.s r3, r3, r5
003d78  db010000  j 12
003d7c  ab014000  lui r3, 1024
003d80  97913900  or r3, r19, r3
003d84  670f3fe8  storeli.w r3, -2832(r30)
003d88  e341ffeb  loadli.w r3,  -2564(r30)
003d8c  97013900  and r3, r18, r3
003d90  93013504  setlt.u r3, r10, r3
003d94  3be00100  bneq r3, zero, 24
003d98  9b410901  srli r3, r18, 16
003d9c  9b811100  andi r3, r3, 1
003da0  8b113910  add.s r3, r18, r3
003da4  8b915110  add.s r3, r3, r5
003da8  db010000  j 12
003dac  ab014000  lui r3, 1024
003db0  97113900  or r3, r18, r3
003db4  674f3fe8  storeli.w r3, -2828(r30)
003db8  e341ffeb  loadli.w r3,  -2564(r30)
003dbc  97813a00  and r3, r21, r3
003dc0  93013504  setlt.u r3, r10, r3
003dc4  3be00100  bneq r3, zero, 24
003dc8  9bc10a01  srli r3, r21, 16
003dcc  9b811100  andi r3, r3, 1
003dd0  8b913a10  add.s r3, r21, r3
003dd4  8b915110  add.s r3, r3, r5
003dd8  db010000  j 12
003ddc  ab014000  lui r3, 1024
003de0  97913a00  or r3, r21, r3
003de4  e74e3fe8  storeli.w r3, -2836(r30)
003de8  e341ffeb  loadli.w r3,  -2564(r30)
003dec  97013a00  and r3, r20, r3
003df0  93013504  setlt.u r3, r10, r3
003df4  3be00100  bneq r3, zero, 24
003df8  9b410a01  srli r3, r20, 16
003dfc  9b811100  andi r3, r3, 1
003e00  8b113a10  add.s r3, r20, r3
003e04  8b915110  add.s r3, r3, r5
003e08  db010000  j 12
003e0c  ab014000  lui r3, 1024
003e10  97113a00  or r3, r20, r3
003e14  e70e3fe8  storeli.w r3, -2840(r30)
003e18  e341ffeb  loadli.w r3,  -2564(r30)
003e1c  97813800  and r3, r17, r3
003e20  93013504  setlt.u r3, r10, r3
003e24  3be00100  bneq r3, zero, 24
003e28  9bc10801  srli r3, r17, 16
003e2c  9b811100  andi r3, r3, 1
003e30  8b913810  add.s r3, r17, r3
003e34  8b915110  add.s r3, r3, r5
003e38  db010000  j 12
003e3c  ab014000  lui r3, 1024
003e40  97913800  or r3, r17, r3
003e44  6342ffeb  loadli.w r4,  -2564(r30)
003e48  674e3fe8  storeli.w r3, -2844(r30)
003e4c  97014700  and r3, r14, r4
003e50  17064b00  and r12, r22, r4
003e54  93013504  setlt.u r3, r10, r3
003e58  3be00100  bneq r3, zero, 24
003e5c  9b410701  srli r3, r14, 16
003e60  9b811100  andi r3, r3, 1
003e64  8b113710  add.s r3, r14, r3
003e68  8b915110  add.s r3, r3, r5
003e6c  db010000  j 12
003e70  ab014000  lui r3, 1024
003e74  97113700  or r3, r14, r3
003e78  33940718  bfloat2float.rn r8, r15
003e7c  b3970d18  bfloat2float.rn r15, r27
003e80  670e3fe8  storeli.w r3, -2848(r30)
003e84  e341cfea  loadli.w r3,  -2716(r30)
003e88  6303cfea  loadli.w r6,  -2720(r30)
003e8c  e343bfea  loadli.w r7,  -2724(r30)
003e90  33150818  bfloat2float.rn r10, r16
003e94  b3950b18  bfloat2float.rn r11, r23
003e98  33120c18  bfloat2float.rn r4, r24
003e9c  b3920c18  bfloat2float.rn r5, r25
003ea0  33170d18  bfloat2float.rn r14, r26
003ea4  6746ffea  storeli.w r15, -2716(r30)
003ea8  e307bfea  loadli.w r15,  -2728(r30)
003eac  b3940118  bfloat2float.rn r9, r3
003eb0  b3110e18  bfloat2float.rn r3, r28
003eb4  33130318  bfloat2float.rn r6, r6
003eb8  b3930318  bfloat2float.rn r7, r7
003ebc  b3970718  bfloat2float.rn r15, r15
003ec0  6706ffea  storeli.w r15, -2720(r30)
003ec4  e347afea  loadli.w r15,  -2732(r30)
003ec8  b3970718  bfloat2float.rn r15, r15
003ecc  e745ffea  storeli.w r15, -2724(r30)
003ed0  e307afea  loadli.w r15,  -2736(r30)
003ed4  b3970718  bfloat2float.rn r15, r15
003ed8  e705ffea  storeli.w r15, -2728(r30)
003edc  e3479fea  loadli.w r15,  -2740(r30)
003ee0  b3970718  bfloat2float.rn r15, r15
003ee4  6745ffea  storeli.w r15, -2732(r30)
003ee8  e3079fea  loadli.w r15,  -2744(r30)
003eec  b3970718  bfloat2float.rn r15, r15
003ef0  6705ffea  storeli.w r15, -2736(r30)
003ef4  e3478fea  loadli.w r15,  -2748(r30)
003ef8  b3970718  bfloat2float.rn r15, r15
003efc  e744ffea  storeli.w r15, -2740(r30)
003f00  e3078fea  loadli.w r15,  -2752(r30)
003f04  b3970718  bfloat2float.rn r15, r15
003f08  e704ffea  storeli.w r15, -2744(r30)
003f0c  e3477fea  loadli.w r15,  -2756(r30)
003f10  b3970718  bfloat2float.rn r15, r15
003f14  6744ffea  storeli.w r15, -2748(r30)
003f18  e3077fea  loadli.w r15,  -2760(r30)
003f1c  b3970718  bfloat2float.rn r15, r15
003f20  6704ffea  storeli.w r15, -2752(r30)
003f24  e3476fea  loadli.w r15,  -2764(r30)
003f28  b3970718  bfloat2float.rn r15, r15
003f2c  e743ffea  storeli.w r15, -2756(r30)
003f30  e3076fea  loadli.w r15,  -2768(r30)
003f34  b3970718  bfloat2float.rn r15, r15
003f38  e703ffea  storeli.w r15, -2760(r30)
003f3c  e3475fea  loadli.w r15,  -2772(r30)
003f40  b3970718  bfloat2float.rn r15, r15
003f44  6743ffea  storeli.w r15, -2764(r30)
003f48  e3075fea  loadli.w r15,  -2776(r30)
003f4c  b3970718  bfloat2float.rn r15, r15
003f50  6703ffea  storeli.w r15, -2768(r30)
003f54  e3474fea  loadli.w r15,  -2780(r30)
003f58  b3970718  bfloat2float.rn r15, r15
003f5c  e742ffea  storeli.w r15, -2772(r30)
003f60  e3074fea  loadli.w r15,  -2784(r30)
003f64  b3970718  bfloat2float.rn r15, r15
003f68  e702ffea  storeli.w r15, -2776(r30)
003f6c  ab07807f  lui r15, 522240
003f70  1386c704  setlt.u r12, r15, r12
003f74  e3073fea  loadli.w r15,  -2792(r30)
003f78  33990718  bfloat2float.rn r18, r15
003f7c  e3070feb  loadli.w r15,  -2688(r30)
003f80  b3990718  bfloat2float.rn r19, r15
003f84  e307ffea  loadli.w r15,  -2696(r30)
003f88  b39a0718  bfloat2float.rn r21, r15
003f8c  e307efea  loadli.w r15,  -2704(r30)
003f90  339a0718  bfloat2float.rn r20, r15
003f94  e347dfea  loadli.w r15,  -2708(r30)
003f98  33980718  bfloat2float.rn r16, r15
003f9c  e307dfea  loadli.w r15,  -2712(r30)
003fa0  b3980718  bfloat2float.rn r17, r15
003fa4  374606fa  beq r12, zero, -2672
003fa8  2b064000  lui r12, 1024
003fac  1716cb00  or r12, r22, r12
003fb0  5bb3feff  j -2664
003fb4  9f0e8fe0  addli sp, r30, -4032
003fb8  9f8e8e1f  addli sp, sp, 4032
003fbc  00a00300  mfence { lm, sm, gm }
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
003ff4  00100000  exit
003ff8  00100000  exit
003ffc  00100000  exit
004000  00100000  exit
004004  00100000  exit
004008  00100000  exit
00400c  00100000  exit
004010  00100000  exit
004014  00100000  exit
004018  00100000  exit
00401c  00100000  exit
004020  00100000  exit
004024  00100000  exit
004028  00100000  exit
00402c  00100000  exit
004030  00100000  exit
004034  00100000  exit
004038  00100000  exit
00403c  00100000  exit
004040  00100000  exit
004044  00100000  exit
004048  00100000  exit
00404c  00100000  exit
004050  00100000  exit
004054  00100000  exit
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
