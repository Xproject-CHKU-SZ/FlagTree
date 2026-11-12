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
00011c  670d9fe4  storeli.w r9, -3376(r30)
000120  73e00400  stores.w zero, 0(r9)
000124  00a00300  mfence { lm, sm, gm }
000128  80a10204  csr_set csr3, r5
00012c  00d00100  sync_group
000130  674d8fe4  storeli.w r8, -3372(r30)
000134  73600400  stores.w zero, 0(r8)
000138  00a00300  mfence { lm, sm, gm }
00013c  e74f5fe8  storeli.w r5, -2820(r30)
000140  80a10204  csr_set csr3, r5
000144  00d00100  sync_group
000148  e74c4fe4  storeli.w r4, -3380(r30)
00014c  cb07c220  ble.s r4, r12, 16864
000150  1f021000  addli r4, zero, 8
000154  1f170000  addli r14, zero, 1
000158  2b084000  lui r16, 1024
00015c  ab0affff  lui r21, 1048560
000160  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
000164  0b934030  div.s r6, r1, r4
000168  6b528f01  load.d r[5:6], 24(r30)
00016c  1b343300  slli r8, r6, 3
000170  e70c6fe4  storeli.w r6, -3384(r30)
000174  6b530f01  load.d r[7:8], 16(r30)
000178  0b958018  sub.s r10, r1, r8
00017c  6b548f00  load.d r[9:10], 8(r30)
000180  9b807000  andi r1, r1, 7
000184  9b367500  slli r13, r10, 7
000188  00d50002  load_param_i r10, 1
00018c  e70f1fe8  storeli.w r1, -2824(r30)
000190  ab700000  lui r1, 7
000194  670cafe4  storeli.w r10, -3392(r30)
000198  1b951600  ori r10, r13, 1
00019c  9b9df0ff  ori r27, r1, 4095
0001a0  9b97e600  ori r15, r13, 14
0001a4  674cdfe4  storeli.w r13, -3388(r30)
0001a8  e74bafe4  storeli.w r10, -3396(r30)
0001ac  1b952600  ori r10, r13, 2
0001b0  e708ffe4  storeli.w r15, -3448(r30)
0001b4  e70fbfeb  storeli.w r27, -2568(r30)
0001b8  e70bafe4  storeli.w r10, -3400(r30)
0001bc  1b953600  ori r10, r13, 3
0001c0  674bafe4  storeli.w r10, -3404(r30)
0001c4  1b954600  ori r10, r13, 4
0001c8  670bafe4  storeli.w r10, -3408(r30)
0001cc  1b955600  ori r10, r13, 5
0001d0  e74aafe4  storeli.w r10, -3412(r30)
0001d4  1b956600  ori r10, r13, 6
0001d8  e70aafe4  storeli.w r10, -3416(r30)
0001dc  1b957600  ori r10, r13, 7
0001e0  674aafe4  storeli.w r10, -3420(r30)
0001e4  1b958600  ori r10, r13, 8
0001e8  670aafe4  storeli.w r10, -3424(r30)
0001ec  1b959600  ori r10, r13, 9
0001f0  e749afe4  storeli.w r10, -3428(r30)
0001f4  1b95a600  ori r10, r13, 10
0001f8  e709afe4  storeli.w r10, -3432(r30)
0001fc  1b95b600  ori r10, r13, 11
000200  6749afe4  storeli.w r10, -3436(r30)
000204  1b95c600  ori r10, r13, 12
000208  6709afe4  storeli.w r10, -3440(r30)
00020c  1b95d600  ori r10, r13, 13
000210  e748afe4  storeli.w r10, -3444(r30)
000214  33950628  sext_int2long r[11:12], r13
000218  1735e502  sll.d r[11:12], r[11:12], r14
00021c  1b97f600  ori r14, r13, 15
000220  6748efe4  storeli.w r14, -3452(r30)
000224  0b24a410  add.ul r[9:10], r[9:10], r[11:12]
000228  1f07ffe4  addli r14, r30, -3464
00022c  0b23a310  add.ul r[7:8], r[7:8], r[11:12]
000230  0b22a210  add.ul r[5:6], r[5:6], r[11:12]
000234  73308700  store.d r[9:10], 0(r14)
000238  1f04efe4  addli r8, r30, -3472
00023c  9f040002  addli r9, zero, 256
000240  73306400  store.d r[7:8], 0(r8)
000244  9f03dfe4  addli r7, r30, -3480
000248  2bf3ffff  lui r6, 1048575
00024c  1f040ff4  addli r8, r30, -1536
000250  73b04300  store.d r[5:6], 0(r7)
000254  1b1203fe  ori r4, r6, 4064
000258  9b920601  ori r5, r13, 16
00025c  97814100  and r3, r3, r4
000260  67465fe4  storeli.w r5, -3484(r30)
000264  8b912110  add.s r3, r3, r2
000268  2bf1ff7f  lui r2, 524287
00026c  9b10f1ff  ori r1, r2, 4095
000270  e74d3fe4  storeli.w r3, -3364(r30)
000274  e74f1fea  storeli.w r1, -2564(r30)
000278  ab10833a  lui r1, 239665
00027c  9b90f026  ori r1, r1, 623
000280  67061fe4  storeli.w r1, -3488(r30)
000284  9b901601  ori r1, r13, 17
000288  e7451fe4  storeli.w r1, -3492(r30)
00028c  9b902601  ori r1, r13, 18
000290  e7051fe4  storeli.w r1, -3496(r30)
000294  9b903601  ori r1, r13, 19
000298  67451fe4  storeli.w r1, -3500(r30)
00029c  9b904601  ori r1, r13, 20
0002a0  67051fe4  storeli.w r1, -3504(r30)
0002a4  9b905601  ori r1, r13, 21
0002a8  e7441fe4  storeli.w r1, -3508(r30)
0002ac  9b906601  ori r1, r13, 22
0002b0  e7041fe4  storeli.w r1, -3512(r30)
0002b4  9b907601  ori r1, r13, 23
0002b8  67441fe4  storeli.w r1, -3516(r30)
0002bc  9b908601  ori r1, r13, 24
0002c0  67041fe4  storeli.w r1, -3520(r30)
0002c4  9b909601  ori r1, r13, 25
0002c8  e7431fe4  storeli.w r1, -3524(r30)
0002cc  9b90a601  ori r1, r13, 26
0002d0  e7031fe4  storeli.w r1, -3528(r30)
0002d4  9b90b601  ori r1, r13, 27
0002d8  67431fe4  storeli.w r1, -3532(r30)
0002dc  9b90c601  ori r1, r13, 28
0002e0  67031fe4  storeli.w r1, -3536(r30)
0002e4  9b90d601  ori r1, r13, 29
0002e8  e7421fe4  storeli.w r1, -3540(r30)
0002ec  9b90e601  ori r1, r13, 30
0002f0  e7021fe4  storeli.w r1, -3544(r30)
0002f4  9b90f601  ori r1, r13, 31
0002f8  67421fe4  storeli.w r1, -3548(r30)
0002fc  9b900602  ori r1, r13, 32
000300  67021fe4  storeli.w r1, -3552(r30)
000304  9b901602  ori r1, r13, 33
000308  e7411fe4  storeli.w r1, -3556(r30)
00030c  9b902602  ori r1, r13, 34
000310  e7011fe4  storeli.w r1, -3560(r30)
000314  9b903602  ori r1, r13, 35
000318  67411fe4  storeli.w r1, -3564(r30)
00031c  9b904602  ori r1, r13, 36
000320  67011fe4  storeli.w r1, -3568(r30)
000324  9b905602  ori r1, r13, 37
000328  e7401fe4  storeli.w r1, -3572(r30)
00032c  9b906602  ori r1, r13, 38
000330  e7001fe4  storeli.w r1, -3576(r30)
000334  9b907602  ori r1, r13, 39
000338  67401fe4  storeli.w r1, -3580(r30)
00033c  9b908602  ori r1, r13, 40
000340  67001fe4  storeli.w r1, -3584(r30)
000344  9b909602  ori r1, r13, 41
000348  e74f1fe2  storeli.w r1, -3588(r30)
00034c  9b90a602  ori r1, r13, 42
000350  e70f1fe2  storeli.w r1, -3592(r30)
000354  9b90b602  ori r1, r13, 43
000358  674f1fe2  storeli.w r1, -3596(r30)
00035c  9b90c602  ori r1, r13, 44
000360  670f1fe2  storeli.w r1, -3600(r30)
000364  9b90d602  ori r1, r13, 45
000368  e74e1fe2  storeli.w r1, -3604(r30)
00036c  9b90e602  ori r1, r13, 46
000370  e70e1fe2  storeli.w r1, -3608(r30)
000374  9b90f602  ori r1, r13, 47
000378  674e1fe2  storeli.w r1, -3612(r30)
00037c  9b900603  ori r1, r13, 48
000380  670e1fe2  storeli.w r1, -3616(r30)
000384  9b901603  ori r1, r13, 49
000388  e74d1fe2  storeli.w r1, -3620(r30)
00038c  9b902603  ori r1, r13, 50
000390  e70d1fe2  storeli.w r1, -3624(r30)
000394  9b903603  ori r1, r13, 51
000398  674d1fe2  storeli.w r1, -3628(r30)
00039c  9b904603  ori r1, r13, 52
0003a0  670d1fe2  storeli.w r1, -3632(r30)
0003a4  9b905603  ori r1, r13, 53
0003a8  e74c1fe2  storeli.w r1, -3636(r30)
0003ac  9b906603  ori r1, r13, 54
0003b0  e70c1fe2  storeli.w r1, -3640(r30)
0003b4  9b907603  ori r1, r13, 55
0003b8  674c1fe2  storeli.w r1, -3644(r30)
0003bc  9b908603  ori r1, r13, 56
0003c0  670c1fe2  storeli.w r1, -3648(r30)
0003c4  9b909603  ori r1, r13, 57
0003c8  e74b1fe2  storeli.w r1, -3652(r30)
0003cc  9b90a603  ori r1, r13, 58
0003d0  e70b1fe2  storeli.w r1, -3656(r30)
0003d4  9b90b603  ori r1, r13, 59
0003d8  674b1fe2  storeli.w r1, -3660(r30)
0003dc  9b90c603  ori r1, r13, 60
0003e0  670b1fe2  storeli.w r1, -3664(r30)
0003e4  9b90d603  ori r1, r13, 61
0003e8  e74a1fe2  storeli.w r1, -3668(r30)
0003ec  9b90e603  ori r1, r13, 62
0003f0  e70a1fe2  storeli.w r1, -3672(r30)
0003f4  9b90f603  ori r1, r13, 63
0003f8  674a1fe2  storeli.w r1, -3676(r30)
0003fc  9b900604  ori r1, r13, 64
000400  670a1fe2  storeli.w r1, -3680(r30)
000404  9b901604  ori r1, r13, 65
000408  e7491fe2  storeli.w r1, -3684(r30)
00040c  9b902604  ori r1, r13, 66
000410  e7091fe2  storeli.w r1, -3688(r30)
000414  9b903604  ori r1, r13, 67
000418  67491fe2  storeli.w r1, -3692(r30)
00041c  9b904604  ori r1, r13, 68
000420  67091fe2  storeli.w r1, -3696(r30)
000424  9b905604  ori r1, r13, 69
000428  e7481fe2  storeli.w r1, -3700(r30)
00042c  9b906604  ori r1, r13, 70
000430  e7081fe2  storeli.w r1, -3704(r30)
000434  9b907604  ori r1, r13, 71
000438  67481fe2  storeli.w r1, -3708(r30)
00043c  9b908604  ori r1, r13, 72
000440  67081fe2  storeli.w r1, -3712(r30)
000444  9b909604  ori r1, r13, 73
000448  e7471fe2  storeli.w r1, -3716(r30)
00044c  9b90a604  ori r1, r13, 74
000450  e7071fe2  storeli.w r1, -3720(r30)
000454  9b90b604  ori r1, r13, 75
000458  67471fe2  storeli.w r1, -3724(r30)
00045c  9b90c604  ori r1, r13, 76
000460  67071fe2  storeli.w r1, -3728(r30)
000464  9b90d604  ori r1, r13, 77
000468  e7461fe2  storeli.w r1, -3732(r30)
00046c  9b90e604  ori r1, r13, 78
000470  e7061fe2  storeli.w r1, -3736(r30)
000474  9b90f604  ori r1, r13, 79
000478  67461fe2  storeli.w r1, -3740(r30)
00047c  9b900605  ori r1, r13, 80
000480  67061fe2  storeli.w r1, -3744(r30)
000484  9b901605  ori r1, r13, 81
000488  e7451fe2  storeli.w r1, -3748(r30)
00048c  9b902605  ori r1, r13, 82
000490  e7051fe2  storeli.w r1, -3752(r30)
000494  9b903605  ori r1, r13, 83
000498  67451fe2  storeli.w r1, -3756(r30)
00049c  9b904605  ori r1, r13, 84
0004a0  67051fe2  storeli.w r1, -3760(r30)
0004a4  9b905605  ori r1, r13, 85
0004a8  e7441fe2  storeli.w r1, -3764(r30)
0004ac  9b906605  ori r1, r13, 86
0004b0  e7041fe2  storeli.w r1, -3768(r30)
0004b4  9b907605  ori r1, r13, 87
0004b8  67441fe2  storeli.w r1, -3772(r30)
0004bc  9b908605  ori r1, r13, 88
0004c0  67041fe2  storeli.w r1, -3776(r30)
0004c4  9b909605  ori r1, r13, 89
0004c8  e7431fe2  storeli.w r1, -3780(r30)
0004cc  9b90a605  ori r1, r13, 90
0004d0  e7031fe2  storeli.w r1, -3784(r30)
0004d4  9b90b605  ori r1, r13, 91
0004d8  67431fe2  storeli.w r1, -3788(r30)
0004dc  9b90c605  ori r1, r13, 92
0004e0  67031fe2  storeli.w r1, -3792(r30)
0004e4  9b90d605  ori r1, r13, 93
0004e8  e7421fe2  storeli.w r1, -3796(r30)
0004ec  9b90e605  ori r1, r13, 94
0004f0  e7021fe2  storeli.w r1, -3800(r30)
0004f4  9b90f605  ori r1, r13, 95
0004f8  67421fe2  storeli.w r1, -3804(r30)
0004fc  9b900606  ori r1, r13, 96
000500  67021fe2  storeli.w r1, -3808(r30)
000504  9b901606  ori r1, r13, 97
000508  e7411fe2  storeli.w r1, -3812(r30)
00050c  9b902606  ori r1, r13, 98
000510  e7011fe2  storeli.w r1, -3816(r30)
000514  9b903606  ori r1, r13, 99
000518  67411fe2  storeli.w r1, -3820(r30)
00051c  9b904606  ori r1, r13, 100
000520  67011fe2  storeli.w r1, -3824(r30)
000524  9b905606  ori r1, r13, 101
000528  e7401fe2  storeli.w r1, -3828(r30)
00052c  9b906606  ori r1, r13, 102
000530  e7001fe2  storeli.w r1, -3832(r30)
000534  9b907606  ori r1, r13, 103
000538  67401fe2  storeli.w r1, -3836(r30)
00053c  9b908606  ori r1, r13, 104
000540  67001fe2  storeli.w r1, -3840(r30)
000544  9b909606  ori r1, r13, 105
000548  e74f1fe0  storeli.w r1, -3844(r30)
00054c  9b90a606  ori r1, r13, 106
000550  e70f1fe0  storeli.w r1, -3848(r30)
000554  9b90b606  ori r1, r13, 107
000558  674f1fe0  storeli.w r1, -3852(r30)
00055c  9b90c606  ori r1, r13, 108
000560  670f1fe0  storeli.w r1, -3856(r30)
000564  9b90d606  ori r1, r13, 109
000568  e74e1fe0  storeli.w r1, -3860(r30)
00056c  9b90e606  ori r1, r13, 110
000570  e70e1fe0  storeli.w r1, -3864(r30)
000574  9b90f606  ori r1, r13, 111
000578  674e1fe0  storeli.w r1, -3868(r30)
00057c  9b900607  ori r1, r13, 112
000580  670e1fe0  storeli.w r1, -3872(r30)
000584  9b901607  ori r1, r13, 113
000588  e74d1fe0  storeli.w r1, -3876(r30)
00058c  9b902607  ori r1, r13, 114
000590  e70d1fe0  storeli.w r1, -3880(r30)
000594  9b903607  ori r1, r13, 115
000598  674d1fe0  storeli.w r1, -3884(r30)
00059c  9b904607  ori r1, r13, 116
0005a0  670d1fe0  storeli.w r1, -3888(r30)
0005a4  9b905607  ori r1, r13, 117
0005a8  e74c1fe0  storeli.w r1, -3892(r30)
0005ac  9b906607  ori r1, r13, 118
0005b0  e70c1fe0  storeli.w r1, -3896(r30)
0005b4  9b907607  ori r1, r13, 119
0005b8  674c1fe0  storeli.w r1, -3900(r30)
0005bc  9b908607  ori r1, r13, 120
0005c0  670c1fe0  storeli.w r1, -3904(r30)
0005c4  9b909607  ori r1, r13, 121
0005c8  e74b1fe0  storeli.w r1, -3908(r30)
0005cc  9b90a607  ori r1, r13, 122
0005d0  e70b1fe0  storeli.w r1, -3912(r30)
0005d4  9b90b607  ori r1, r13, 123
0005d8  674b1fe0  storeli.w r1, -3916(r30)
0005dc  9b90c607  ori r1, r13, 124
0005e0  670b1fe0  storeli.w r1, -3920(r30)
0005e4  9b90d607  ori r1, r13, 125
0005e8  e74a1fe0  storeli.w r1, -3924(r30)
0005ec  9b90e607  ori r1, r13, 126
0005f0  e70a1fe0  storeli.w r1, -3928(r30)
0005f4  9b90f607  ori r1, r13, 127
0005f8  674a1fe0  storeli.w r1, -3932(r30)
0005fc  9f802140  addli r1, r3, 8208
000600  e70d1fe4  storeli.w r1, -3368(r30)
000604  db4c0200  j 4708
000608  e3001fe6  loadli.w r1,  -3320(r30)
00060c  1f1e0000  addli r28, zero, 1
000610  9f07efeb  addli r15, r30, -2576
000614  9f080ff4  addli r17, r30, -1536
000618  1f280000  addli r16, zero, 2
00061c  9fc80800  addli r17, r17, 4
000620  b3950028  sext_int2long r[12:13], r1
000624  e3400fe6  loadli.w r1,  -3324(r30)
000628  97b5c503  sll.d r[12:13], r[12:13], r28
00062c  339c0028  sext_int2long r[25:26], r1
000630  e3000fe6  loadli.w r1,  -3328(r30)
000634  173dcc03  sll.d r[27:28], r[25:26], r28
000638  6b5c0f02  load.d r[25:26], 32(r30)
00063c  339a0028  sext_int2long r[21:22], r1
000640  e340ffe5  loadli.w r1,  -3332(r30)
000644  0b2dac11  add.ul r[27:28], r[25:26], r[27:28]
000648  339b0028  sext_int2long r[23:24], r1
00064c  e300ffe5  loadli.w r1,  -3336(r30)
000650  b3960028  sext_int2long r[14:15], r1
000654  e340efe5  loadli.w r1,  -3340(r30)
000658  33990028  sext_int2long r[19:20], r1
00065c  e300efe5  loadli.w r1,  -3344(r30)
000660  b3930028  sext_int2long r[8:9], r1
000664  e340dfe5  loadli.w r1,  -3348(r30)
000668  97b3c303  sll.d r[8:9], r[8:9], r28
00066c  b3940028  sext_int2long r[10:11], r1
000670  e300dfe5  loadli.w r1,  -3352(r30)
000674  8b237c10  add.ul r[8:9], r[25:26], r[8:9]
000678  97b4c403  sll.d r[10:11], r[10:11], r28
00067c  b3910028  sext_int2long r[4:5], r1
000680  e340cfe5  loadli.w r1,  -3356(r30)
000684  8b249c10  add.ul r[10:11], r[25:26], r[10:11]
000688  97b1c103  sll.d r[4:5], r[4:5], r28
00068c  b3920028  sext_int2long r[6:7], r1
000690  e300cfe5  loadli.w r1,  -3360(r30)
000694  8b213c10  add.ul r[4:5], r[25:26], r[4:5]
000698  97b2c203  sll.d r[6:7], r[6:7], r28
00069c  b3900028  sext_int2long r[2:3], r1
0006a0  8b225c10  add.ul r[6:7], r[25:26], r[6:7]
0006a4  73b01700  store.d r[2:3], 0(r15)
0006a8  8b20bc10  add.ul r[2:3], r[25:26], r[12:13]
0006ac  ab0500f0  lui r11, 983040
0006b0  2b0600f0  lui r12, 983040
0006b4  9f070ff4  addli r15, r30, -1536
0006b8  1716c800  or r12, r16, r12
0006bc  9715b800  or r11, r16, r11
0006c0  9fa70700  addli r15, r15, 2
0006c4  7f361d01  s_lm2gm r12, r17, 0(r[27:28])
0006c8  ffb5f000  s_lm2gm r11, r15, 0(r[2:3])
0006cc  9735ca03  sll.d r[12:13], r[21:22], r28
0006d0  173acb03  sll.d r[21:22], r[23:24], r28
0006d4  ab0700f0  lui r15, 983040
0006d8  ab0800f0  lui r17, 983040
0006dc  1f0b0ff4  addli r22, r30, -1536
0006e0  9f0b0ff4  addli r23, r30, -1536
0006e4  9f1d0000  addli r27, zero, 1
0006e8  8b25bc10  add.ul r[12:13], r[25:26], r[12:13]
0006ec  0b2a4c11  add.ul r[21:22], r[25:26], r[21:22]
0006f0  9717f800  or r15, r16, r15
0006f4  1f6b0b00  addli r22, r22, 6
0006f8  97181801  or r17, r16, r17
0006fc  9f8b1b00  addli r23, r23, 8
000700  ffb76501  s_lm2gm r15, r22, 0(r[12:13])
000704  97b5c603  sll.d r[12:13], r[14:15], r28
000708  9736c903  sll.d r[14:15], r[19:20], r28
00070c  ab0700f0  lui r15, 983040
000710  1f090ff4  addli r18, r30, -1536
000714  9f090ff4  addli r19, r30, -1536
000718  ff387a01  s_lm2gm r17, r23, 0(r[21:22])
00071c  ab0800f0  lui r17, 983040
000720  8b25bc10  add.ul r[12:13], r[25:26], r[12:13]
000724  8b26dc10  add.ul r[14:15], r[25:26], r[14:15]
000728  9717f800  or r15, r16, r15
00072c  1f291900  addli r18, r18, 10
000730  97181801  or r17, r16, r17
000734  9fc91900  addli r19, r19, 12
000738  ffb72501  s_lm2gm r15, r18, 0(r[12:13])
00073c  ffb83601  s_lm2gm r17, r19, 0(r[14:15])
000740  ab0500f0  lui r11, 983040
000744  2b0600f0  lui r12, 983040
000748  9f060ff4  addli r13, r30, -1536
00074c  1f070ff4  addli r14, r30, -1536
000750  ab0700f0  lui r15, 983040
000754  9715b800  or r11, r16, r11
000758  9fe61600  addli r13, r13, 14
00075c  1716c800  or r12, r16, r12
000760  1f072700  addli r14, r14, 16
000764  9717f800  or r15, r16, r15
000768  ffb5d300  s_lm2gm r11, r13, 0(r[8:9])
00076c  7fb6e400  s_lm2gm r12, r14, 0(r[10:11])
000770  ab0300f0  lui r7, 983040
000774  9f040ff4  addli r9, r30, -1536
000778  2b0400f0  lui r8, 983040
00077c  1f050ff4  addli r10, r30, -1536
000780  e3451fe9  loadli.w r11,  -2932(r30)
000784  e3462fe9  loadli.w r13,  -2924(r30)
000788  97137800  or r7, r16, r7
00078c  9fa42400  addli r9, r9, 18
000790  17148800  or r8, r16, r8
000794  1f452500  addli r10, r10, 20
000798  b3950528  sext_int2long r[12:13], r11
00079c  b3960628  sext_int2long r[14:15], r13
0007a0  ffb39100  s_lm2gm r7, r9, 0(r[4:5])
0007a4  9f01efeb  addli r3, r30, -2576
0007a8  7fb4a200  s_lm2gm r8, r10, 0(r[6:7])
0007ac  e3421fe6  loadli.w r5,  -3316(r30)
0007b0  1f020ff4  addli r4, r30, -1536
0007b4  e343ffe8  loadli.w r7,  -2948(r30)
0007b8  e3440fe9  loadli.w r9,  -2940(r30)
0007bc  ebd00100  load.d r[2:3], 0(r3)
0007c0  ab0100f0  lui r3, 983040
0007c4  1f622200  addli r4, r4, 22
0007c8  b3920228  sext_int2long r[6:7], r5
0007cc  b3930328  sext_int2long r[8:9], r7
0007d0  b3940428  sext_int2long r[10:11], r9
0007d4  97113800  or r3, r16, r3
0007d8  97b0c003  sll.d r[2:3], r[2:3], r28
0007dc  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0007e0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0007e4  97b0c203  sll.d r[2:3], r[6:7], r28
0007e8  e3022fe6  loadli.w r5,  -3312(r30)
0007ec  ab0100f0  lui r3, 983040
0007f0  1f020ff4  addli r4, r30, -1536
0007f4  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0007f8  97113800  or r3, r16, r3
0007fc  1f023200  addli r4, r4, 24
000800  b3920228  sext_int2long r[6:7], r5
000804  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000808  ab0100f0  lui r3, 983040
00080c  1f020ff4  addli r4, r30, -1536
000810  97b0c203  sll.d r[2:3], r[6:7], r28
000814  e3422fe6  loadli.w r5,  -3308(r30)
000818  97113800  or r3, r16, r3
00081c  1f223200  addli r4, r4, 26
000820  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000824  b3920228  sext_int2long r[6:7], r5
000828  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00082c  ab0100f0  lui r3, 983040
000830  1f020ff4  addli r4, r30, -1536
000834  97b0c203  sll.d r[2:3], r[6:7], r28
000838  e3023fe6  loadli.w r5,  -3304(r30)
00083c  97113800  or r3, r16, r3
000840  1f423200  addli r4, r4, 28
000844  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000848  b3920228  sext_int2long r[6:7], r5
00084c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000850  ab0100f0  lui r3, 983040
000854  1f020ff4  addli r4, r30, -1536
000858  97b0c203  sll.d r[2:3], r[6:7], r28
00085c  e3423fe6  loadli.w r5,  -3300(r30)
000860  97113800  or r3, r16, r3
000864  1f623200  addli r4, r4, 30
000868  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
00086c  b3920228  sext_int2long r[6:7], r5
000870  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000874  ab0100f0  lui r3, 983040
000878  1f020ff4  addli r4, r30, -1536
00087c  97b0c203  sll.d r[2:3], r[6:7], r28
000880  e3024fe6  loadli.w r5,  -3296(r30)
000884  97113800  or r3, r16, r3
000888  1f024200  addli r4, r4, 32
00088c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000890  b3920228  sext_int2long r[6:7], r5
000894  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000898  ab0100f0  lui r3, 983040
00089c  1f020ff4  addli r4, r30, -1536
0008a0  97b0c203  sll.d r[2:3], r[6:7], r28
0008a4  e3424fe6  loadli.w r5,  -3292(r30)
0008a8  97113800  or r3, r16, r3
0008ac  1f224200  addli r4, r4, 34
0008b0  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0008b4  b3920228  sext_int2long r[6:7], r5
0008b8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0008bc  ab0100f0  lui r3, 983040
0008c0  1f020ff4  addli r4, r30, -1536
0008c4  97b0c203  sll.d r[2:3], r[6:7], r28
0008c8  e3025fe6  loadli.w r5,  -3288(r30)
0008cc  97113800  or r3, r16, r3
0008d0  1f424200  addli r4, r4, 36
0008d4  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0008d8  b3920228  sext_int2long r[6:7], r5
0008dc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0008e0  ab0100f0  lui r3, 983040
0008e4  1f020ff4  addli r4, r30, -1536
0008e8  97b0c203  sll.d r[2:3], r[6:7], r28
0008ec  e3425fe6  loadli.w r5,  -3284(r30)
0008f0  97113800  or r3, r16, r3
0008f4  1f624200  addli r4, r4, 38
0008f8  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0008fc  b3920228  sext_int2long r[6:7], r5
000900  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000904  ab0100f0  lui r3, 983040
000908  1f020ff4  addli r4, r30, -1536
00090c  97b0c203  sll.d r[2:3], r[6:7], r28
000910  e3026fe6  loadli.w r5,  -3280(r30)
000914  97113800  or r3, r16, r3
000918  1f025200  addli r4, r4, 40
00091c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000920  b3920228  sext_int2long r[6:7], r5
000924  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000928  ab0100f0  lui r3, 983040
00092c  1f020ff4  addli r4, r30, -1536
000930  97b0c203  sll.d r[2:3], r[6:7], r28
000934  e3426fe6  loadli.w r5,  -3276(r30)
000938  97113800  or r3, r16, r3
00093c  1f225200  addli r4, r4, 42
000940  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000944  b3920228  sext_int2long r[6:7], r5
000948  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00094c  ab0100f0  lui r3, 983040
000950  1f020ff4  addli r4, r30, -1536
000954  97b0c203  sll.d r[2:3], r[6:7], r28
000958  e3027fe6  loadli.w r5,  -3272(r30)
00095c  97113800  or r3, r16, r3
000960  1f425200  addli r4, r4, 44
000964  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000968  b3920228  sext_int2long r[6:7], r5
00096c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000970  ab0100f0  lui r3, 983040
000974  1f020ff4  addli r4, r30, -1536
000978  97b0c203  sll.d r[2:3], r[6:7], r28
00097c  e3427fe6  loadli.w r5,  -3268(r30)
000980  97113800  or r3, r16, r3
000984  1f625200  addli r4, r4, 46
000988  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
00098c  b3920228  sext_int2long r[6:7], r5
000990  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000994  ab0100f0  lui r3, 983040
000998  1f020ff4  addli r4, r30, -1536
00099c  97b0c203  sll.d r[2:3], r[6:7], r28
0009a0  e3028fe6  loadli.w r5,  -3264(r30)
0009a4  97113800  or r3, r16, r3
0009a8  1f026200  addli r4, r4, 48
0009ac  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0009b0  b3920228  sext_int2long r[6:7], r5
0009b4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0009b8  ab0100f0  lui r3, 983040
0009bc  1f020ff4  addli r4, r30, -1536
0009c0  97b0c203  sll.d r[2:3], r[6:7], r28
0009c4  e3428fe6  loadli.w r5,  -3260(r30)
0009c8  97113800  or r3, r16, r3
0009cc  1f226200  addli r4, r4, 50
0009d0  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0009d4  b3920228  sext_int2long r[6:7], r5
0009d8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0009dc  ab0100f0  lui r3, 983040
0009e0  1f020ff4  addli r4, r30, -1536
0009e4  97b0c203  sll.d r[2:3], r[6:7], r28
0009e8  e3029fe6  loadli.w r5,  -3256(r30)
0009ec  97113800  or r3, r16, r3
0009f0  1f426200  addli r4, r4, 52
0009f4  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0009f8  b3920228  sext_int2long r[6:7], r5
0009fc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a00  ab0100f0  lui r3, 983040
000a04  1f020ff4  addli r4, r30, -1536
000a08  97b0c203  sll.d r[2:3], r[6:7], r28
000a0c  e3429fe6  loadli.w r5,  -3252(r30)
000a10  97113800  or r3, r16, r3
000a14  1f626200  addli r4, r4, 54
000a18  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000a1c  b3920228  sext_int2long r[6:7], r5
000a20  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a24  ab0100f0  lui r3, 983040
000a28  1f020ff4  addli r4, r30, -1536
000a2c  97b0c203  sll.d r[2:3], r[6:7], r28
000a30  e302afe6  loadli.w r5,  -3248(r30)
000a34  97113800  or r3, r16, r3
000a38  1f027200  addli r4, r4, 56
000a3c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000a40  b3920228  sext_int2long r[6:7], r5
000a44  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a48  ab0100f0  lui r3, 983040
000a4c  1f020ff4  addli r4, r30, -1536
000a50  97b0c203  sll.d r[2:3], r[6:7], r28
000a54  e342afe6  loadli.w r5,  -3244(r30)
000a58  97113800  or r3, r16, r3
000a5c  1f227200  addli r4, r4, 58
000a60  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000a64  b3920228  sext_int2long r[6:7], r5
000a68  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a6c  ab0100f0  lui r3, 983040
000a70  1f020ff4  addli r4, r30, -1536
000a74  97b0c203  sll.d r[2:3], r[6:7], r28
000a78  e302bfe6  loadli.w r5,  -3240(r30)
000a7c  97113800  or r3, r16, r3
000a80  1f427200  addli r4, r4, 60
000a84  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000a88  b3920228  sext_int2long r[6:7], r5
000a8c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000a90  ab0100f0  lui r3, 983040
000a94  1f020ff4  addli r4, r30, -1536
000a98  97b0c203  sll.d r[2:3], r[6:7], r28
000a9c  e342bfe6  loadli.w r5,  -3236(r30)
000aa0  97113800  or r3, r16, r3
000aa4  1f627200  addli r4, r4, 62
000aa8  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000aac  b3920228  sext_int2long r[6:7], r5
000ab0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ab4  6302cfe6  loadli.w r4,  -3232(r30)
000ab8  ab0100f0  lui r3, 983040
000abc  97b0c203  sll.d r[2:3], r[6:7], r28
000ac0  6343bfe9  loadli.w r6,  -2852(r30)
000ac4  97113800  or r3, r16, r3
000ac8  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000acc  33120228  sext_int2long r[5:6], r4
000ad0  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
000ad4  9730c203  sll.d r[2:3], r[5:6], r28
000ad8  e342cfe6  loadli.w r5,  -3228(r30)
000adc  ab0100f0  lui r3, 983040
000ae0  1f020ff4  addli r4, r30, -1536
000ae4  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000ae8  97113800  or r3, r16, r3
000aec  1f228200  addli r4, r4, 66
000af0  b3920228  sext_int2long r[6:7], r5
000af4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000af8  ab0100f0  lui r3, 983040
000afc  1f020ff4  addli r4, r30, -1536
000b00  97b0c203  sll.d r[2:3], r[6:7], r28
000b04  e302dfe6  loadli.w r5,  -3224(r30)
000b08  97113800  or r3, r16, r3
000b0c  1f428200  addli r4, r4, 68
000b10  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000b14  b3920228  sext_int2long r[6:7], r5
000b18  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b1c  ab0100f0  lui r3, 983040
000b20  1f020ff4  addli r4, r30, -1536
000b24  97b0c203  sll.d r[2:3], r[6:7], r28
000b28  e342dfe6  loadli.w r5,  -3220(r30)
000b2c  97113800  or r3, r16, r3
000b30  1f628200  addli r4, r4, 70
000b34  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000b38  b3920228  sext_int2long r[6:7], r5
000b3c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b40  ab0100f0  lui r3, 983040
000b44  1f020ff4  addli r4, r30, -1536
000b48  97b0c203  sll.d r[2:3], r[6:7], r28
000b4c  e302efe6  loadli.w r5,  -3216(r30)
000b50  97113800  or r3, r16, r3
000b54  1f029200  addli r4, r4, 72
000b58  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000b5c  b3920228  sext_int2long r[6:7], r5
000b60  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b64  ab0100f0  lui r3, 983040
000b68  1f020ff4  addli r4, r30, -1536
000b6c  97b0c203  sll.d r[2:3], r[6:7], r28
000b70  e342efe6  loadli.w r5,  -3212(r30)
000b74  97113800  or r3, r16, r3
000b78  1f229200  addli r4, r4, 74
000b7c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000b80  b3920228  sext_int2long r[6:7], r5
000b84  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000b88  ab0100f0  lui r3, 983040
000b8c  1f020ff4  addli r4, r30, -1536
000b90  97b0c203  sll.d r[2:3], r[6:7], r28
000b94  e302ffe6  loadli.w r5,  -3208(r30)
000b98  97113800  or r3, r16, r3
000b9c  1f429200  addli r4, r4, 76
000ba0  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000ba4  b3920228  sext_int2long r[6:7], r5
000ba8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000bac  ab0100f0  lui r3, 983040
000bb0  1f020ff4  addli r4, r30, -1536
000bb4  97b0c203  sll.d r[2:3], r[6:7], r28
000bb8  e342ffe6  loadli.w r5,  -3204(r30)
000bbc  97113800  or r3, r16, r3
000bc0  1f629200  addli r4, r4, 78
000bc4  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000bc8  b3920228  sext_int2long r[6:7], r5
000bcc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000bd0  ab0100f0  lui r3, 983040
000bd4  1f020ff4  addli r4, r30, -1536
000bd8  97b0c203  sll.d r[2:3], r[6:7], r28
000bdc  e3020fe7  loadli.w r5,  -3200(r30)
000be0  97113800  or r3, r16, r3
000be4  1f02a200  addli r4, r4, 80
000be8  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000bec  b3920228  sext_int2long r[6:7], r5
000bf0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000bf4  ab0100f0  lui r3, 983040
000bf8  1f020ff4  addli r4, r30, -1536
000bfc  97b0c203  sll.d r[2:3], r[6:7], r28
000c00  e3420fe7  loadli.w r5,  -3196(r30)
000c04  97113800  or r3, r16, r3
000c08  1f22a200  addli r4, r4, 82
000c0c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000c10  b3920228  sext_int2long r[6:7], r5
000c14  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c18  ab0100f0  lui r3, 983040
000c1c  1f020ff4  addli r4, r30, -1536
000c20  97b0c203  sll.d r[2:3], r[6:7], r28
000c24  e3021fe7  loadli.w r5,  -3192(r30)
000c28  97113800  or r3, r16, r3
000c2c  1f42a200  addli r4, r4, 84
000c30  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000c34  b3920228  sext_int2long r[6:7], r5
000c38  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c3c  ab0100f0  lui r3, 983040
000c40  1f020ff4  addli r4, r30, -1536
000c44  97b0c203  sll.d r[2:3], r[6:7], r28
000c48  e3421fe7  loadli.w r5,  -3188(r30)
000c4c  97113800  or r3, r16, r3
000c50  1f62a200  addli r4, r4, 86
000c54  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000c58  b3920228  sext_int2long r[6:7], r5
000c5c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c60  ab0100f0  lui r3, 983040
000c64  1f020ff4  addli r4, r30, -1536
000c68  97b0c203  sll.d r[2:3], r[6:7], r28
000c6c  e3022fe7  loadli.w r5,  -3184(r30)
000c70  97113800  or r3, r16, r3
000c74  1f02b200  addli r4, r4, 88
000c78  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000c7c  b3920228  sext_int2long r[6:7], r5
000c80  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000c84  ab0100f0  lui r3, 983040
000c88  1f020ff4  addli r4, r30, -1536
000c8c  97b0c203  sll.d r[2:3], r[6:7], r28
000c90  e3422fe7  loadli.w r5,  -3180(r30)
000c94  97113800  or r3, r16, r3
000c98  1f22b200  addli r4, r4, 90
000c9c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000ca0  b3920228  sext_int2long r[6:7], r5
000ca4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ca8  ab0100f0  lui r3, 983040
000cac  1f020ff4  addli r4, r30, -1536
000cb0  97b0c203  sll.d r[2:3], r[6:7], r28
000cb4  e3023fe7  loadli.w r5,  -3176(r30)
000cb8  97113800  or r3, r16, r3
000cbc  1f42b200  addli r4, r4, 92
000cc0  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000cc4  b3920228  sext_int2long r[6:7], r5
000cc8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ccc  ab0100f0  lui r3, 983040
000cd0  1f020ff4  addli r4, r30, -1536
000cd4  97b0c203  sll.d r[2:3], r[6:7], r28
000cd8  e3423fe7  loadli.w r5,  -3172(r30)
000cdc  97113800  or r3, r16, r3
000ce0  1f62b200  addli r4, r4, 94
000ce4  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000ce8  b3920228  sext_int2long r[6:7], r5
000cec  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000cf0  ab0100f0  lui r3, 983040
000cf4  1f020ff4  addli r4, r30, -1536
000cf8  97b0c203  sll.d r[2:3], r[6:7], r28
000cfc  e3024fe7  loadli.w r5,  -3168(r30)
000d00  97113800  or r3, r16, r3
000d04  1f02c200  addli r4, r4, 96
000d08  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000d0c  b3920228  sext_int2long r[6:7], r5
000d10  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d14  ab0100f0  lui r3, 983040
000d18  1f020ff4  addli r4, r30, -1536
000d1c  97b0c203  sll.d r[2:3], r[6:7], r28
000d20  e3424fe7  loadli.w r5,  -3164(r30)
000d24  97113800  or r3, r16, r3
000d28  1f22c200  addli r4, r4, 98
000d2c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000d30  b3920228  sext_int2long r[6:7], r5
000d34  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d38  ab0100f0  lui r3, 983040
000d3c  1f020ff4  addli r4, r30, -1536
000d40  97b0c203  sll.d r[2:3], r[6:7], r28
000d44  e3025fe7  loadli.w r5,  -3160(r30)
000d48  97113800  or r3, r16, r3
000d4c  1f42c200  addli r4, r4, 100
000d50  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000d54  b3920228  sext_int2long r[6:7], r5
000d58  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d5c  ab0100f0  lui r3, 983040
000d60  1f020ff4  addli r4, r30, -1536
000d64  97b0c203  sll.d r[2:3], r[6:7], r28
000d68  e3425fe7  loadli.w r5,  -3156(r30)
000d6c  97113800  or r3, r16, r3
000d70  1f62c200  addli r4, r4, 102
000d74  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000d78  b3920228  sext_int2long r[6:7], r5
000d7c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000d80  ab0100f0  lui r3, 983040
000d84  1f020ff4  addli r4, r30, -1536
000d88  97b0c203  sll.d r[2:3], r[6:7], r28
000d8c  e3026fe7  loadli.w r5,  -3152(r30)
000d90  97113800  or r3, r16, r3
000d94  1f02d200  addli r4, r4, 104
000d98  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000d9c  b3920228  sext_int2long r[6:7], r5
000da0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000da4  ab0100f0  lui r3, 983040
000da8  1f020ff4  addli r4, r30, -1536
000dac  97b0c203  sll.d r[2:3], r[6:7], r28
000db0  e3426fe7  loadli.w r5,  -3148(r30)
000db4  97113800  or r3, r16, r3
000db8  1f22d200  addli r4, r4, 106
000dbc  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000dc0  b3920228  sext_int2long r[6:7], r5
000dc4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000dc8  ab0100f0  lui r3, 983040
000dcc  1f020ff4  addli r4, r30, -1536
000dd0  97b0c203  sll.d r[2:3], r[6:7], r28
000dd4  e3027fe7  loadli.w r5,  -3144(r30)
000dd8  97113800  or r3, r16, r3
000ddc  1f42d200  addli r4, r4, 108
000de0  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000de4  b3920228  sext_int2long r[6:7], r5
000de8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000dec  ab0100f0  lui r3, 983040
000df0  1f020ff4  addli r4, r30, -1536
000df4  97b0c203  sll.d r[2:3], r[6:7], r28
000df8  e3427fe7  loadli.w r5,  -3140(r30)
000dfc  97113800  or r3, r16, r3
000e00  1f62d200  addli r4, r4, 110
000e04  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000e08  b3920228  sext_int2long r[6:7], r5
000e0c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e10  ab0100f0  lui r3, 983040
000e14  1f020ff4  addli r4, r30, -1536
000e18  97b0c203  sll.d r[2:3], r[6:7], r28
000e1c  e3028fe7  loadli.w r5,  -3136(r30)
000e20  97113800  or r3, r16, r3
000e24  1f02e200  addli r4, r4, 112
000e28  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000e2c  b3920228  sext_int2long r[6:7], r5
000e30  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e34  ab0100f0  lui r3, 983040
000e38  1f020ff4  addli r4, r30, -1536
000e3c  97b0c203  sll.d r[2:3], r[6:7], r28
000e40  e3428fe7  loadli.w r5,  -3132(r30)
000e44  97113800  or r3, r16, r3
000e48  1f22e200  addli r4, r4, 114
000e4c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000e50  b3920228  sext_int2long r[6:7], r5
000e54  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e58  ab0100f0  lui r3, 983040
000e5c  1f020ff4  addli r4, r30, -1536
000e60  97b0c203  sll.d r[2:3], r[6:7], r28
000e64  e3029fe7  loadli.w r5,  -3128(r30)
000e68  97113800  or r3, r16, r3
000e6c  1f42e200  addli r4, r4, 116
000e70  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000e74  b3920228  sext_int2long r[6:7], r5
000e78  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000e7c  ab0100f0  lui r3, 983040
000e80  1f020ff4  addli r4, r30, -1536
000e84  97b0c203  sll.d r[2:3], r[6:7], r28
000e88  e3429fe7  loadli.w r5,  -3124(r30)
000e8c  97113800  or r3, r16, r3
000e90  1f62e200  addli r4, r4, 118
000e94  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000e98  b3920228  sext_int2long r[6:7], r5
000e9c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ea0  ab0100f0  lui r3, 983040
000ea4  1f020ff4  addli r4, r30, -1536
000ea8  97b0c203  sll.d r[2:3], r[6:7], r28
000eac  e302afe7  loadli.w r5,  -3120(r30)
000eb0  97113800  or r3, r16, r3
000eb4  1f02f200  addli r4, r4, 120
000eb8  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000ebc  b3920228  sext_int2long r[6:7], r5
000ec0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ec4  ab0100f0  lui r3, 983040
000ec8  1f020ff4  addli r4, r30, -1536
000ecc  97b0c203  sll.d r[2:3], r[6:7], r28
000ed0  e342afe7  loadli.w r5,  -3116(r30)
000ed4  97113800  or r3, r16, r3
000ed8  1f22f200  addli r4, r4, 122
000edc  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000ee0  b3920228  sext_int2long r[6:7], r5
000ee4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ee8  ab0100f0  lui r3, 983040
000eec  1f020ff4  addli r4, r30, -1536
000ef0  97b0c203  sll.d r[2:3], r[6:7], r28
000ef4  e302bfe7  loadli.w r5,  -3112(r30)
000ef8  97113800  or r3, r16, r3
000efc  1f42f200  addli r4, r4, 124
000f00  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000f04  b3920228  sext_int2long r[6:7], r5
000f08  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f0c  ab0100f0  lui r3, 983040
000f10  1f020ff4  addli r4, r30, -1536
000f14  97b0c203  sll.d r[2:3], r[6:7], r28
000f18  e342bfe7  loadli.w r5,  -3108(r30)
000f1c  97113800  or r3, r16, r3
000f20  1f62f200  addli r4, r4, 126
000f24  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000f28  b3920228  sext_int2long r[6:7], r5
000f2c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f30  6302cfe7  loadli.w r4,  -3104(r30)
000f34  ab0100f0  lui r3, 983040
000f38  97b0c203  sll.d r[2:3], r[6:7], r28
000f3c  6303cfe9  loadli.w r6,  -2848(r30)
000f40  97113800  or r3, r16, r3
000f44  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000f48  33120228  sext_int2long r[5:6], r4
000f4c  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
000f50  9730c203  sll.d r[2:3], r[5:6], r28
000f54  e342cfe7  loadli.w r5,  -3100(r30)
000f58  ab0100f0  lui r3, 983040
000f5c  1f020ff4  addli r4, r30, -1536
000f60  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000f64  97113800  or r3, r16, r3
000f68  1f220201  addli r4, r4, 130
000f6c  b3920228  sext_int2long r[6:7], r5
000f70  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f74  ab0100f0  lui r3, 983040
000f78  1f020ff4  addli r4, r30, -1536
000f7c  97b0c203  sll.d r[2:3], r[6:7], r28
000f80  e302dfe7  loadli.w r5,  -3096(r30)
000f84  97113800  or r3, r16, r3
000f88  1f420201  addli r4, r4, 132
000f8c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000f90  b3920228  sext_int2long r[6:7], r5
000f94  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000f98  ab0100f0  lui r3, 983040
000f9c  1f020ff4  addli r4, r30, -1536
000fa0  97b0c203  sll.d r[2:3], r[6:7], r28
000fa4  e342dfe7  loadli.w r5,  -3092(r30)
000fa8  97113800  or r3, r16, r3
000fac  1f620201  addli r4, r4, 134
000fb0  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000fb4  b3920228  sext_int2long r[6:7], r5
000fb8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000fbc  ab0100f0  lui r3, 983040
000fc0  1f020ff4  addli r4, r30, -1536
000fc4  97b0c203  sll.d r[2:3], r[6:7], r28
000fc8  e302efe7  loadli.w r5,  -3088(r30)
000fcc  97113800  or r3, r16, r3
000fd0  1f021201  addli r4, r4, 136
000fd4  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000fd8  b3920228  sext_int2long r[6:7], r5
000fdc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000fe0  ab0100f0  lui r3, 983040
000fe4  1f020ff4  addli r4, r30, -1536
000fe8  97b0c203  sll.d r[2:3], r[6:7], r28
000fec  e342efe7  loadli.w r5,  -3084(r30)
000ff0  97113800  or r3, r16, r3
000ff4  1f221201  addli r4, r4, 138
000ff8  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
000ffc  b3920228  sext_int2long r[6:7], r5
001000  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001004  ab0100f0  lui r3, 983040
001008  1f020ff4  addli r4, r30, -1536
00100c  97b0c203  sll.d r[2:3], r[6:7], r28
001010  e302ffe7  loadli.w r5,  -3080(r30)
001014  97113800  or r3, r16, r3
001018  1f421201  addli r4, r4, 140
00101c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001020  b3920228  sext_int2long r[6:7], r5
001024  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001028  ab0100f0  lui r3, 983040
00102c  1f020ff4  addli r4, r30, -1536
001030  97b0c203  sll.d r[2:3], r[6:7], r28
001034  e342ffe7  loadli.w r5,  -3076(r30)
001038  97113800  or r3, r16, r3
00103c  1f621201  addli r4, r4, 142
001040  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001044  b3920228  sext_int2long r[6:7], r5
001048  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00104c  ab0100f0  lui r3, 983040
001050  1f020ff4  addli r4, r30, -1536
001054  97b0c203  sll.d r[2:3], r[6:7], r28
001058  e3020fe8  loadli.w r5,  -3072(r30)
00105c  97113800  or r3, r16, r3
001060  1f022201  addli r4, r4, 144
001064  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001068  b3920228  sext_int2long r[6:7], r5
00106c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001070  ab0100f0  lui r3, 983040
001074  1f020ff4  addli r4, r30, -1536
001078  97b0c203  sll.d r[2:3], r[6:7], r28
00107c  e3420fe8  loadli.w r5,  -3068(r30)
001080  97113800  or r3, r16, r3
001084  1f222201  addli r4, r4, 146
001088  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
00108c  b3920228  sext_int2long r[6:7], r5
001090  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001094  ab0100f0  lui r3, 983040
001098  1f020ff4  addli r4, r30, -1536
00109c  97b0c203  sll.d r[2:3], r[6:7], r28
0010a0  e3021fe8  loadli.w r5,  -3064(r30)
0010a4  97113800  or r3, r16, r3
0010a8  1f422201  addli r4, r4, 148
0010ac  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0010b0  b3920228  sext_int2long r[6:7], r5
0010b4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010b8  ab0100f0  lui r3, 983040
0010bc  1f020ff4  addli r4, r30, -1536
0010c0  97b0c203  sll.d r[2:3], r[6:7], r28
0010c4  e3421fe8  loadli.w r5,  -3060(r30)
0010c8  97113800  or r3, r16, r3
0010cc  1f622201  addli r4, r4, 150
0010d0  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0010d4  b3920228  sext_int2long r[6:7], r5
0010d8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0010dc  ab0100f0  lui r3, 983040
0010e0  1f020ff4  addli r4, r30, -1536
0010e4  97b0c203  sll.d r[2:3], r[6:7], r28
0010e8  e3022fe8  loadli.w r5,  -3056(r30)
0010ec  97113800  or r3, r16, r3
0010f0  1f023201  addli r4, r4, 152
0010f4  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0010f8  b3920228  sext_int2long r[6:7], r5
0010fc  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001100  ab0100f0  lui r3, 983040
001104  1f020ff4  addli r4, r30, -1536
001108  97b0c203  sll.d r[2:3], r[6:7], r28
00110c  e3422fe8  loadli.w r5,  -3052(r30)
001110  97113800  or r3, r16, r3
001114  1f223201  addli r4, r4, 154
001118  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
00111c  b3920228  sext_int2long r[6:7], r5
001120  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001124  ab0100f0  lui r3, 983040
001128  1f020ff4  addli r4, r30, -1536
00112c  97b0c203  sll.d r[2:3], r[6:7], r28
001130  e3023fe8  loadli.w r5,  -3048(r30)
001134  97113800  or r3, r16, r3
001138  1f423201  addli r4, r4, 156
00113c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001140  b3920228  sext_int2long r[6:7], r5
001144  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001148  ab0100f0  lui r3, 983040
00114c  1f020ff4  addli r4, r30, -1536
001150  97b0c203  sll.d r[2:3], r[6:7], r28
001154  e3423fe8  loadli.w r5,  -3044(r30)
001158  97113800  or r3, r16, r3
00115c  1f623201  addli r4, r4, 158
001160  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001164  b3920228  sext_int2long r[6:7], r5
001168  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00116c  ab0100f0  lui r3, 983040
001170  1f020ff4  addli r4, r30, -1536
001174  97b0c203  sll.d r[2:3], r[6:7], r28
001178  e3024fe8  loadli.w r5,  -3040(r30)
00117c  97113800  or r3, r16, r3
001180  1f024201  addli r4, r4, 160
001184  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001188  b3920228  sext_int2long r[6:7], r5
00118c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001190  ab0100f0  lui r3, 983040
001194  1f020ff4  addli r4, r30, -1536
001198  97b0c203  sll.d r[2:3], r[6:7], r28
00119c  e3424fe8  loadli.w r5,  -3036(r30)
0011a0  97113800  or r3, r16, r3
0011a4  1f224201  addli r4, r4, 162
0011a8  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0011ac  b3920228  sext_int2long r[6:7], r5
0011b0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011b4  ab0100f0  lui r3, 983040
0011b8  1f020ff4  addli r4, r30, -1536
0011bc  97b0c203  sll.d r[2:3], r[6:7], r28
0011c0  e3025fe8  loadli.w r5,  -3032(r30)
0011c4  97113800  or r3, r16, r3
0011c8  1f424201  addli r4, r4, 164
0011cc  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0011d0  b3920228  sext_int2long r[6:7], r5
0011d4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011d8  ab0100f0  lui r3, 983040
0011dc  1f020ff4  addli r4, r30, -1536
0011e0  97b0c203  sll.d r[2:3], r[6:7], r28
0011e4  e3425fe8  loadli.w r5,  -3028(r30)
0011e8  97113800  or r3, r16, r3
0011ec  1f624201  addli r4, r4, 166
0011f0  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0011f4  b3920228  sext_int2long r[6:7], r5
0011f8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0011fc  ab0100f0  lui r3, 983040
001200  1f020ff4  addli r4, r30, -1536
001204  97b0c203  sll.d r[2:3], r[6:7], r28
001208  e3026fe8  loadli.w r5,  -3024(r30)
00120c  97113800  or r3, r16, r3
001210  1f025201  addli r4, r4, 168
001214  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001218  b3920228  sext_int2long r[6:7], r5
00121c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001220  ab0100f0  lui r3, 983040
001224  1f020ff4  addli r4, r30, -1536
001228  97b0c203  sll.d r[2:3], r[6:7], r28
00122c  e3426fe8  loadli.w r5,  -3020(r30)
001230  97113800  or r3, r16, r3
001234  1f225201  addli r4, r4, 170
001238  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
00123c  b3920228  sext_int2long r[6:7], r5
001240  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001244  ab0100f0  lui r3, 983040
001248  1f020ff4  addli r4, r30, -1536
00124c  97b0c203  sll.d r[2:3], r[6:7], r28
001250  e3027fe8  loadli.w r5,  -3016(r30)
001254  97113800  or r3, r16, r3
001258  1f425201  addli r4, r4, 172
00125c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001260  b3920228  sext_int2long r[6:7], r5
001264  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001268  ab0100f0  lui r3, 983040
00126c  1f020ff4  addli r4, r30, -1536
001270  97b0c203  sll.d r[2:3], r[6:7], r28
001274  e3427fe8  loadli.w r5,  -3012(r30)
001278  97113800  or r3, r16, r3
00127c  1f625201  addli r4, r4, 174
001280  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001284  b3920228  sext_int2long r[6:7], r5
001288  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00128c  ab0100f0  lui r3, 983040
001290  1f020ff4  addli r4, r30, -1536
001294  97b0c203  sll.d r[2:3], r[6:7], r28
001298  e3028fe8  loadli.w r5,  -3008(r30)
00129c  97113800  or r3, r16, r3
0012a0  1f026201  addli r4, r4, 176
0012a4  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0012a8  b3920228  sext_int2long r[6:7], r5
0012ac  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012b0  ab0100f0  lui r3, 983040
0012b4  1f020ff4  addli r4, r30, -1536
0012b8  97b0c203  sll.d r[2:3], r[6:7], r28
0012bc  e3428fe8  loadli.w r5,  -3004(r30)
0012c0  97113800  or r3, r16, r3
0012c4  1f226201  addli r4, r4, 178
0012c8  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0012cc  b3920228  sext_int2long r[6:7], r5
0012d0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012d4  ab0100f0  lui r3, 983040
0012d8  1f020ff4  addli r4, r30, -1536
0012dc  97b0c203  sll.d r[2:3], r[6:7], r28
0012e0  e3029fe8  loadli.w r5,  -3000(r30)
0012e4  97113800  or r3, r16, r3
0012e8  1f426201  addli r4, r4, 180
0012ec  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0012f0  b3920228  sext_int2long r[6:7], r5
0012f4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0012f8  ab0100f0  lui r3, 983040
0012fc  1f020ff4  addli r4, r30, -1536
001300  97b0c203  sll.d r[2:3], r[6:7], r28
001304  e3429fe8  loadli.w r5,  -2996(r30)
001308  97113800  or r3, r16, r3
00130c  1f626201  addli r4, r4, 182
001310  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001314  b3920228  sext_int2long r[6:7], r5
001318  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00131c  ab0100f0  lui r3, 983040
001320  1f020ff4  addli r4, r30, -1536
001324  97b0c203  sll.d r[2:3], r[6:7], r28
001328  e302afe8  loadli.w r5,  -2992(r30)
00132c  97113800  or r3, r16, r3
001330  1f027201  addli r4, r4, 184
001334  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001338  b3920228  sext_int2long r[6:7], r5
00133c  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001340  ab0100f0  lui r3, 983040
001344  1f020ff4  addli r4, r30, -1536
001348  97b0c203  sll.d r[2:3], r[6:7], r28
00134c  e342afe8  loadli.w r5,  -2988(r30)
001350  97113800  or r3, r16, r3
001354  1f227201  addli r4, r4, 186
001358  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
00135c  b3920228  sext_int2long r[6:7], r5
001360  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001364  ab0100f0  lui r3, 983040
001368  1f020ff4  addli r4, r30, -1536
00136c  97b0c203  sll.d r[2:3], r[6:7], r28
001370  e302bfe8  loadli.w r5,  -2984(r30)
001374  97113800  or r3, r16, r3
001378  1f427201  addli r4, r4, 188
00137c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001380  b3920228  sext_int2long r[6:7], r5
001384  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001388  ab0100f0  lui r3, 983040
00138c  1f020ff4  addli r4, r30, -1536
001390  97b0c203  sll.d r[2:3], r[6:7], r28
001394  e342bfe8  loadli.w r5,  -2980(r30)
001398  97113800  or r3, r16, r3
00139c  1f627201  addli r4, r4, 190
0013a0  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0013a4  b3920228  sext_int2long r[6:7], r5
0013a8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0013ac  6302cfe8  loadli.w r4,  -2976(r30)
0013b0  ab0100f0  lui r3, 983040
0013b4  97b0c203  sll.d r[2:3], r[6:7], r28
0013b8  6343cfe9  loadli.w r6,  -2844(r30)
0013bc  97113800  or r3, r16, r3
0013c0  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0013c4  33120228  sext_int2long r[5:6], r4
0013c8  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
0013cc  9730c203  sll.d r[2:3], r[5:6], r28
0013d0  e342cfe8  loadli.w r5,  -2972(r30)
0013d4  ab0100f0  lui r3, 983040
0013d8  1f020ff4  addli r4, r30, -1536
0013dc  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0013e0  97113800  or r3, r16, r3
0013e4  1f228201  addli r4, r4, 194
0013e8  b3920228  sext_int2long r[6:7], r5
0013ec  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0013f0  ab0100f0  lui r3, 983040
0013f4  1f020ff4  addli r4, r30, -1536
0013f8  97b0c203  sll.d r[2:3], r[6:7], r28
0013fc  e302dfe8  loadli.w r5,  -2968(r30)
001400  97113800  or r3, r16, r3
001404  1f428201  addli r4, r4, 196
001408  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
00140c  b3920228  sext_int2long r[6:7], r5
001410  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001414  ab0100f0  lui r3, 983040
001418  1f020ff4  addli r4, r30, -1536
00141c  97b0c203  sll.d r[2:3], r[6:7], r28
001420  e342dfe8  loadli.w r5,  -2964(r30)
001424  97113800  or r3, r16, r3
001428  1f628201  addli r4, r4, 198
00142c  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001430  b3920228  sext_int2long r[6:7], r5
001434  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001438  ab0100f0  lui r3, 983040
00143c  1f020ff4  addli r4, r30, -1536
001440  97b0c203  sll.d r[2:3], r[6:7], r28
001444  e302efe8  loadli.w r5,  -2960(r30)
001448  97113800  or r3, r16, r3
00144c  1f029201  addli r4, r4, 200
001450  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001454  b3920228  sext_int2long r[6:7], r5
001458  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00145c  6342efe8  loadli.w r4,  -2956(r30)
001460  ab0100f0  lui r3, 983040
001464  97b0c203  sll.d r[2:3], r[6:7], r28
001468  1f030ff4  addli r6, r30, -1536
00146c  97113800  or r3, r16, r3
001470  33120228  sext_int2long r[5:6], r4
001474  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001478  1f239301  addli r6, r6, 202
00147c  1732c203  sll.d r[5:6], r[5:6], r28
001480  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
001484  ab0100f0  lui r3, 983040
001488  8b204c10  add.ul r[2:3], r[25:26], r[5:6]
00148c  e302ffe8  loadli.w r5,  -2952(r30)
001490  1f020ff4  addli r4, r30, -1536
001494  97113800  or r3, r16, r3
001498  1f429201  addli r4, r4, 204
00149c  b3920228  sext_int2long r[6:7], r5
0014a0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0014a4  97b1c203  sll.d r[4:5], r[6:7], r28
0014a8  9f02dfe9  addli r5, r30, -2840
0014ac  1f030ff4  addli r6, r30, -1536
0014b0  ebd00200  load.d r[2:3], 0(r5)
0014b4  ab0200f0  lui r5, 983040
0014b8  8b213c10  add.ul r[4:5], r[25:26], r[4:5]
0014bc  1f639301  addli r6, r6, 206
0014c0  97125800  or r5, r16, r5
0014c4  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0014c8  ffb26100  s_lm2gm r5, r6, 0(r[4:5])
0014cc  e3010fe9  loadli.w r3,  -2944(r30)
0014d0  97b2b303  sll.d r[6:7], r[8:9], r27
0014d4  ab0300f0  lui r7, 983040
0014d8  1f040ff4  addli r8, r30, -1536
0014dc  8b225c10  add.ul r[6:7], r[25:26], r[6:7]
0014e0  1f04a401  addli r8, r8, 208
0014e4  97137800  or r7, r16, r7
0014e8  b3910128  sext_int2long r[4:5], r3
0014ec  ffb38200  s_lm2gm r7, r8, 0(r[6:7])
0014f0  97b3b403  sll.d r[8:9], r[10:11], r27
0014f4  ab0400f0  lui r9, 983040
0014f8  1f050ff4  addli r10, r30, -1536
0014fc  e3021fe9  loadli.w r5,  -2936(r30)
001500  97b1b103  sll.d r[4:5], r[4:5], r27
001504  1f25a501  addli r10, r10, 210
001508  97149800  or r9, r16, r9
00150c  8b237c10  add.ul r[8:9], r[25:26], r[8:9]
001510  8b213c10  add.ul r[4:5], r[25:26], r[4:5]
001514  b3920228  sext_int2long r[6:7], r5
001518  ffb4a100  s_lm2gm r9, r10, 0(r[4:5])
00151c  97b4b503  sll.d r[10:11], r[12:13], r27
001520  ab0500f0  lui r11, 983040
001524  1f060ff4  addli r12, r30, -1536
001528  97b2b203  sll.d r[6:7], r[6:7], r27
00152c  e3012fe9  loadli.w r3,  -2928(r30)
001530  1f46a601  addli r12, r12, 212
001534  9715b800  or r11, r16, r11
001538  8b225c10  add.ul r[6:7], r[25:26], r[6:7]
00153c  8b249c10  add.ul r[10:11], r[25:26], r[10:11]
001540  b3910128  sext_int2long r[4:5], r3
001544  ffb5c300  s_lm2gm r11, r12, 0(r[8:9])
001548  e3033fe9  loadli.w r7,  -2920(r30)
00154c  97b5b603  sll.d r[12:13], r[14:15], r27
001550  97b1b103  sll.d r[4:5], r[4:5], r27
001554  8b26bc10  add.ul r[14:15], r[25:26], r[12:13]
001558  e3453fe9  loadli.w r11,  -2916(r30)
00155c  b3930328  sext_int2long r[8:9], r7
001560  8b213c10  add.ul r[4:5], r[25:26], r[4:5]
001564  97b3b303  sll.d r[8:9], r[8:9], r27
001568  b3950528  sext_int2long r[12:13], r11
00156c  8b287c10  add.ul r[18:19], r[25:26], r[8:9]
001570  ab0300f0  lui r7, 983040
001574  1f040ff4  addli r8, r30, -1536
001578  1f64a401  addli r8, r8, 214
00157c  97137800  or r7, r16, r7
001580  ffb38200  s_lm2gm r7, r8, 0(r[6:7])
001584  e3024fe9  loadli.w r5,  -2912(r30)
001588  97b3b503  sll.d r[8:9], r[12:13], r27
00158c  8b257c10  add.ul r[12:13], r[25:26], r[8:9]
001590  e3434fe9  loadli.w r7,  -2908(r30)
001594  b3920228  sext_int2long r[6:7], r5
001598  97b2b203  sll.d r[6:7], r[6:7], r27
00159c  b3930328  sext_int2long r[8:9], r7
0015a0  8b295c10  add.ul r[20:21], r[25:26], r[6:7]
0015a4  ab0200f0  lui r5, 983040
0015a8  1f030ff4  addli r6, r30, -1536
0015ac  97b3b303  sll.d r[8:9], r[8:9], r27
0015b0  1f03b301  addli r6, r6, 216
0015b4  97125800  or r5, r16, r5
0015b8  ffb26400  s_lm2gm r5, r6, 0(r[10:11])
0015bc  e3025fe9  loadli.w r5,  -2904(r30)
0015c0  8b247c10  add.ul r[10:11], r[25:26], r[8:9]
0015c4  ab0300f0  lui r7, 983040
0015c8  1f040ff4  addli r8, r30, -1536
0015cc  1f24b401  addli r8, r8, 218
0015d0  97137800  or r7, r16, r7
0015d4  b3920228  sext_int2long r[6:7], r5
0015d8  ffb38100  s_lm2gm r7, r8, 0(r[4:5])
0015dc  e3016fe9  loadli.w r3,  -2896(r30)
0015e0  9f03ffea  addli r7, r30, -2696
0015e4  97b2b203  sll.d r[6:7], r[6:7], r27
0015e8  8b2a5c10  add.ul r[22:23], r[25:26], r[6:7]
0015ec  e3425fe9  loadli.w r5,  -2900(r30)
0015f0  b3910128  sext_int2long r[4:5], r3
0015f4  97b1b103  sll.d r[4:5], r[4:5], r27
0015f8  b3920228  sext_int2long r[6:7], r5
0015fc  8b213c10  add.ul r[4:5], r[25:26], r[4:5]
001600  97b2b203  sll.d r[6:7], r[6:7], r27
001604  8b225c10  add.ul r[6:7], r[25:26], r[6:7]
001608  73b05300  store.d r[6:7], 0(r7)
00160c  e3426fe9  loadli.w r5,  -2892(r30)
001610  9f03efea  addli r7, r30, -2704
001614  73b03300  store.d r[4:5], 0(r7)
001618  b3920228  sext_int2long r[6:7], r5
00161c  97b1b203  sll.d r[4:5], r[6:7], r27
001620  ab0200f0  lui r5, 983040
001624  1f030ff4  addli r6, r30, -1536
001628  9f43b301  addli r7, r6, 220
00162c  17145800  or r8, r16, r5
001630  8b213c10  add.ul r[4:5], r[25:26], r[4:5]
001634  9f020feb  addli r5, r30, -2688
001638  1f130000  addli r6, zero, 1
00163c  73b03200  store.d r[4:5], 0(r5)
001640  e3417fe9  loadli.w r3,  -2884(r30)
001644  7fb47600  s_lm2gm r8, r7, 0(r[14:15])
001648  e3037fe9  loadli.w r7,  -2888(r30)
00164c  9f02efeb  addli r5, r30, -2576
001650  b3910128  sext_int2long r[4:5], r3
001654  b3930328  sext_int2long r[8:9], r7
001658  97b1b103  sll.d r[4:5], r[4:5], r27
00165c  97b3b303  sll.d r[8:9], r[8:9], r27
001660  8b263c10  add.ul r[14:15], r[25:26], r[4:5]
001664  8b217c10  add.ul r[4:5], r[25:26], r[8:9]
001668  73b03200  store.d r[4:5], 0(r5)
00166c  e3018fe9  loadli.w r3,  -2880(r30)
001670  27020c00  addli.d r[5:6], r[25:26], 0
001674  b3930128  sext_int2long r[8:9], r3
001678  9f010ff4  addli r3, r30, -1536
00167c  ffb73000  s_lm2gm r15, r3, 0(r[2:3])
001680  e3408fe9  loadli.w r1,  -2876(r30)
001684  ab0700f0  lui r15, 983040
001688  97b3b303  sll.d r[8:9], r[8:9], r27
00168c  9fedb101  addli r27, r3, 222
001690  e3019fe9  loadli.w r3,  -2872(r30)
001694  9717f800  or r15, r16, r15
001698  8b237c10  add.ul r[8:9], r[25:26], r[8:9]
00169c  b3900028  sext_int2long r[2:3], r1
0016a0  ffb7b801  s_lm2gm r15, r27, 0(r[18:19])
0016a4  b3980128  sext_int2long r[18:19], r3
0016a8  ab0700f0  lui r15, 983040
0016ac  97b06002  sll.d r[2:3], r[2:3], r6
0016b0  9717f800  or r15, r16, r15
0016b4  97b86802  sll.d r[18:19], r[18:19], r6
0016b8  0b211210  add.ul r[3:4], r[5:6], r[2:3]
0016bc  9f000ff4  addli r1, r30, -1536
0016c0  8b281211  add.ul r[18:19], r[5:6], r[18:19]
0016c4  9f8dc001  addli r27, r1, 224
0016c8  e3409fe9  loadli.w r1,  -2868(r30)
0016cc  ffb7b501  s_lm2gm r15, r27, 0(r[12:13])
0016d0  ab0700f0  lui r15, 983040
0016d4  9f050feb  addli r11, r30, -2688
0016d8  6346efe9  loadli.w r12,  -2828(r30)
0016dc  b39b0028  sext_int2long r[24:25], r1
0016e0  9f000ff4  addli r1, r30, -1536
0016e4  9717f800  or r15, r16, r15
0016e8  9fadc001  addli r27, r1, 226
0016ec  e300afe9  loadli.w r1,  -2864(r30)
0016f0  97bb6b02  sll.d r[24:25], r[24:25], r6
0016f4  ffb7b901  s_lm2gm r15, r27, 0(r[20:21])
0016f8  ab0700f0  lui r15, 983040
0016fc  8b297211  add.ul r[20:21], r[5:6], r[24:25]
001700  b39d0028  sext_int2long r[28:29], r1
001704  9f000ff4  addli r1, r30, -1536
001708  9717f800  or r15, r16, r15
00170c  97bb6d02  sll.d r[24:25], r[28:29], r6
001710  9fcdc001  addli r27, r1, 228
001714  9fecc001  addli r25, r1, 230
001718  e340afe9  loadli.w r1,  -2860(r30)
00171c  ffb7b401  s_lm2gm r15, r27, 0(r[10:11])
001720  ab0700f0  lui r15, 983040
001724  9f04ffea  addli r9, r30, -2696
001728  8b2b7211  add.ul r[24:25], r[5:6], r[24:25]
00172c  1f050ff4  addli r10, r30, -1536
001730  339d0028  sext_int2long r[27:28], r1
001734  e300bfe9  loadli.w r1,  -2856(r30)
001738  9717f800  or r15, r16, r15
00173c  1f65d501  addli r10, r10, 238
001740  ffb79a01  s_lm2gm r15, r25, 0(r[22:23])
001744  b39a0028  sext_int2long r[22:23], r1
001748  973c6d02  sll.d r[26:27], r[27:28], r6
00174c  ab0700f0  lui r15, 983040
001750  9f000ff4  addli r1, r30, -1536
001754  97bd6a02  sll.d r[28:29], r[22:23], r6
001758  8b2a9211  add.ul r[22:23], r[5:6], r[26:27]
00175c  9717f800  or r15, r16, r15
001760  8b2cb211  add.ul r[26:27], r[5:6], r[28:29]
001764  ebd20400  load.d r[6:7], 0(r9)
001768  9f8dd001  addli r27, r1, 232
00176c  9f04efea  addli r9, r30, -2704
001770  2b0e00f0  lui r28, 983040
001774  9fa0d001  addli r1, r1, 234
001778  1712c801  or r4, r16, r28
00177c  ffb7b201  s_lm2gm r15, r27, 0(r[6:7])
001780  ebd20400  load.d r[6:7], 0(r9)
001784  ab0400f0  lui r9, 983040
001788  e30dffeb  loadli.w r27,  -2568(r30)
00178c  97149800  or r9, r16, r9
001790  7fb21200  s_lm2gm r4, r1, 0(r[6:7])
001794  ab0000f0  lui r1, 983040
001798  1f020ff4  addli r4, r30, -1536
00179c  ebd20500  load.d r[6:7], 0(r11)
0017a0  9f05efeb  addli r11, r30, -2576
0017a4  ffb4a600  s_lm2gm r9, r10, 0(r[14:15])
0017a8  1f42d201  addli r4, r4, 236
0017ac  97101800  or r1, r16, r1
0017b0  ebd40500  load.d r[10:11], 0(r11)
0017b4  ffb04200  s_lm2gm r1, r4, 0(r[6:7])
0017b8  ab0000f0  lui r1, 983040
0017bc  1f020ff4  addli r4, r30, -1536
0017c0  ab0200f0  lui r5, 983040
0017c4  1f030ff4  addli r6, r30, -1536
0017c8  1f02e201  addli r4, r4, 240
0017cc  97101800  or r1, r16, r1
0017d0  1f23e301  addli r6, r6, 242
0017d4  97125800  or r5, r16, r5
0017d8  ffb04400  s_lm2gm r1, r4, 0(r[10:11])
0017dc  ffb26300  s_lm2gm r5, r6, 0(r[8:9])
0017e0  1f040ff4  addli r8, r30, -1536
0017e4  ab0000f0  lui r1, 983040
0017e8  ab0200f0  lui r5, 983040
0017ec  9f040002  addli r9, zero, 256
0017f0  1f42e401  addli r4, r8, 244
0017f4  97101800  or r1, r16, r1
0017f8  1f63e401  addli r6, r8, 246
0017fc  97125800  or r5, r16, r5
001800  ff304100  s_lm2gm r1, r4, 0(r[3:4])
001804  ab0000f0  lui r1, 983040
001808  ab0100f0  lui r3, 983040
00180c  1f01f401  addli r2, r8, 248
001810  1f22f401  addli r4, r8, 250
001814  ffb26800  s_lm2gm r5, r6, 0(r[18:19])
001818  97101800  or r1, r16, r1
00181c  97113800  or r3, r16, r3
001820  ffb02900  s_lm2gm r1, r2, 0(r[20:21])
001824  ab0000f0  lui r1, 983040
001828  ffb14b00  s_lm2gm r3, r4, 0(r[24:25])
00182c  ab0100f0  lui r3, 983040
001830  1f41f401  addli r2, r8, 252
001834  1f62f401  addli r4, r8, 254
001838  97101800  or r1, r16, r1
00183c  97113800  or r3, r16, r3
001840  2b084000  lui r16, 1024
001844  ffb02a00  s_lm2gm r1, r2, 0(r[22:23])
001848  e3008fe5  loadli.w r1,  -3392(r30)
00184c  ffb14c00  s_lm2gm r3, r4, 0(r[26:27])
001850  ab0affff  lui r21, 1048560
001854  00a00000  mfence { lm }
001858  0b161610  add.s r12, r12, r1
00185c  e3409fe5  loadli.w r1,  -3380(r30)
001860  3f201600  blt.s r12, r1, 8
001864  5b590500  j 10952
001868  9f000000  addli r1, zero, 0
00186c  0b111410  add.s r2, r8, r1
001870  9fc00000  addli r1, r1, 4
001874  73100100  store.h zero, 0(r2)
001878  73110100  store.h zero, 2(r2)
00187c  00a00000  mfence { lm }
001880  bbbf90fe  bneq r1, r9, -20
001884  e3007f00  loadli.w r1,  56(r30)
001888  63416f00  loadli.w r2,  52(r30)
00188c  63029fe5  loadli.w r4,  -3384(r30)
001890  e3428fe5  loadli.w r5,  -3388(r30)
001894  9f130000  addli r7, zero, 1
001898  ab0100f0  lui r3, 983040
00189c  674fcfe8  storeli.w r12, -2828(r30)
0018a0  97913400  or r3, r9, r3
0018a4  8b101630  div.s r1, r12, r1
0018a8  8b902030  div.s r1, r1, r2
0018ac  2b0100f0  lui r2, 983040
0018b0  17912400  or r2, r9, r2
0018b4  9bb03000  slli r1, r1, 3
0018b8  0b924010  add.s r4, r1, r4
0018bc  ab0000f0  lui r1, 983040
0018c0  1b33a200  slli r6, r4, 10
0018c4  97901400  or r1, r9, r1
0018c8  670f4fea  storeli.w r4, -2576(r30)
0018cc  2b0200f0  lui r4, 983040
0018d0  8b125310  add.s r5, r6, r5
0018d4  e7046fea  storeli.w r6, -2744(r30)
0018d8  17924400  or r4, r9, r4
0018dc  b3920228  sext_int2long r[6:7], r5
0018e0  17b57202  sll.d r[11:12], r[6:7], r7
0018e4  eb520f00  load.d r[6:7], 0(r30)
0018e8  9f03dfe9  addli r7, r30, -2840
0018ec  73b0a300  store.d r[11:12], 0(r7)
0018f0  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
0018f4  7fa18200  l_gm2lm r2, r8, 0(r[6:7])
0018f8  1f01ffe4  addli r2, r30, -3464
0018fc  eb520100  load.d r[6:7], 0(r2)
001900  1f010ff6  addli r2, r30, -1280
001904  ffa12200  l_gm2lm r3, r2, 0(r[6:7])
001908  9f02efe4  addli r5, r30, -3472
00190c  6bd10200  load.d r[3:4], 0(r5)
001910  9f020ff8  addli r5, r30, -1024
001914  ff205100  l_gm2lm r1, r5, 0(r[3:4])
001918  9f01dfe4  addli r3, r30, -3480
00191c  ebd00100  load.d r[2:3], 0(r3)
001920  9f010ffa  addli r3, r30, -768
001924  7fa23000  l_gm2lm r4, r3, 0(r[2:3])
001928  9f000ff4  addli r1, r30, -1536
00192c  1f018ff6  addli r2, r30, -1216
001930  00a00000  mfence { lm }
001934  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001938  9f008ff4  addli r1, r30, -1472
00193c  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001940  9f000ff5  addli r1, r30, -1408
001944  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001948  9f008ff5  addli r1, r30, -1344
00194c  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
001950  9f000ff6  addli r1, r30, -1280
001954  e6c47180  vmerge_l.hf vr9, vr3, vr7
001958  e6c371a0  vmerge_h.hf vr7, vr3, vr7
00195c  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
001960  9f000feb  addli r1, r30, -2688
001964  00a00000  mfence { lm }
001968  66c31180  vmerge_l.hf vr6, vr3, vr1
00196c  e6c211a0  vmerge_h.hf vr5, vr3, vr1
001970  e6c02180  vmerge_l.hf vr1, vr3, vr2
001974  66c121a0  vmerge_h.hf vr2, vr3, vr2
001978  66c04180  vmerge_l.hf vr0, vr3, vr4
00197c  66c241a0  vmerge_h.hf vr4, vr3, vr4
001980  66c58180  vmerge_l.hf vr10, vr3, vr8
001984  66c481a0  vmerge_h.hf vr8, vr3, vr8
001988  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00198c  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
001990  1f010ff7  addli r2, r30, -1152
001994  9694a402  vadd.f.mz.rn vr9{mr1}, vr9, vr10
001998  96938302  vadd.f.mz.rn vr7{mr1}, vr7, vr8
00199c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0019a0  1f018ff7  addli r2, r30, -1088
0019a4  42140102  vload_mask16.mz vr8{mr1}, 0(r2)
0019a8  66c5b180  vmerge_l.hf vr10, vr3, vr11
0019ac  e6c5b1a0  vmerge_h.hf vr11, vr3, vr11
0019b0  1613a302  vadd.f.mz.rn vr6{mr1}, vr6, vr10
0019b4  66c50180  vmerge_l.hf vr10, vr3, vr0
0019b8  66c001a0  vmerge_h.hf vr0, vr3, vr0
0019bc  9692b202  vadd.f.mz.rn vr5{mr1}, vr5, vr11
0019c0  e6c58180  vmerge_l.hf vr11, vr3, vr8
0019c4  66c481a0  vmerge_h.hf vr8, vr3, vr8
0019c8  16100102  vadd.f.mz.rn vr0{mr1}, vr2, vr0
0019cc  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0019d0  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
0019d4  16128202  vadd.f.mz.rn vr4{mr1}, vr4, vr8
0019d8  46109fc2  vstore_mask16.mz vr9{mr1}, 1536(r30)
0019dc  46147fc2  vstore_mask16.mz vr7{mr1}, 1600(r30)
0019e0  46186fc2  vstore_mask16.mz vr6{mr1}, 1664(r30)
0019e4  461c5fc2  vstore_mask16.mz vr5{mr1}, 1728(r30)
0019e8  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
0019ec  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
0019f0  1611b102  vadd.f.mz.rn vr2{mr1}, vr2, vr11
0019f4  46182fe2  vstore_mask16.mz vr2{mr1}, 1920(r30)
0019f8  461c4fe2  vstore_mask16.mz vr4{mr1}, 1984(r30)
0019fc  00a00000  mfence { lm }
001a00  e3050ffc  loadli.w r11,  -512(r30)
001a04  e3470ffc  loadli.w r15,  -508(r30)
001a08  e3021ffc  loadli.w r5,  -504(r30)
001a0c  e3411ffc  loadli.w r3,  -500(r30)
001a10  630a2ffc  loadli.w r20,  -496(r30)
001a14  63492ffc  loadli.w r18,  -492(r30)
001a18  63073ffc  loadli.w r14,  -488(r30)
001a1c  63463ffc  loadli.w r12,  -484(r30)
001a20  63054ffc  loadli.w r10,  -480(r30)
001a24  e3444ffc  loadli.w r9,  -476(r30)
001a28  63045ffc  loadli.w r8,  -472(r30)
001a2c  e3435ffc  loadli.w r7,  -468(r30)
001a30  63036ffc  loadli.w r6,  -464(r30)
001a34  63426ffc  loadli.w r4,  -460(r30)
001a38  63017ffc  loadli.w r2,  -456(r30)
001a3c  e3407ffc  loadli.w r1,  -452(r30)
001a40  e3068ffc  loadli.w r13,  -448(r30)
001a44  e3468ffc  loadli.w r13,  -444(r30)
001a48  e3069ffc  loadli.w r13,  -440(r30)
001a4c  e3469ffc  loadli.w r13,  -436(r30)
001a50  e306affc  loadli.w r13,  -432(r30)
001a54  e346affc  loadli.w r13,  -428(r30)
001a58  e306bffc  loadli.w r13,  -424(r30)
001a5c  e346bffc  loadli.w r13,  -420(r30)
001a60  e306cffc  loadli.w r13,  -416(r30)
001a64  e346cffc  loadli.w r13,  -412(r30)
001a68  e306dffc  loadli.w r13,  -408(r30)
001a6c  e346dffc  loadli.w r13,  -404(r30)
001a70  e306effc  loadli.w r13,  -400(r30)
001a74  e346effc  loadli.w r13,  -396(r30)
001a78  e306fffc  loadli.w r13,  -392(r30)
001a7c  e346fffc  loadli.w r13,  -388(r30)
001a80  e3060ffd  loadli.w r13,  -384(r30)
001a84  e3460ffd  loadli.w r13,  -380(r30)
001a88  e3061ffd  loadli.w r13,  -376(r30)
001a8c  e3461ffd  loadli.w r13,  -372(r30)
001a90  e3062ffd  loadli.w r13,  -368(r30)
001a94  e3462ffd  loadli.w r13,  -364(r30)
001a98  e3063ffd  loadli.w r13,  -360(r30)
001a9c  e3463ffd  loadli.w r13,  -356(r30)
001aa0  e3064ffd  loadli.w r13,  -352(r30)
001aa4  e3464ffd  loadli.w r13,  -348(r30)
001aa8  e3065ffd  loadli.w r13,  -344(r30)
001aac  e3465ffd  loadli.w r13,  -340(r30)
001ab0  e3066ffd  loadli.w r13,  -336(r30)
001ab4  e3466ffd  loadli.w r13,  -332(r30)
001ab8  e3067ffd  loadli.w r13,  -328(r30)
001abc  e3467ffd  loadli.w r13,  -324(r30)
001ac0  e3068ffd  loadli.w r13,  -320(r30)
001ac4  e3468ffd  loadli.w r13,  -316(r30)
001ac8  e3069ffd  loadli.w r13,  -312(r30)
001acc  e3469ffd  loadli.w r13,  -308(r30)
001ad0  e306affd  loadli.w r13,  -304(r30)
001ad4  e346affd  loadli.w r13,  -300(r30)
001ad8  e306bffd  loadli.w r13,  -296(r30)
001adc  e346bffd  loadli.w r13,  -292(r30)
001ae0  e306cffd  loadli.w r13,  -288(r30)
001ae4  e346cffd  loadli.w r13,  -284(r30)
001ae8  e306dffd  loadli.w r13,  -280(r30)
001aec  e346dffd  loadli.w r13,  -276(r30)
001af0  e306effd  loadli.w r13,  -272(r30)
001af4  e346effd  loadli.w r13,  -268(r30)
001af8  e306fffd  loadli.w r13,  -264(r30)
001afc  e346fffd  loadli.w r13,  -260(r30)
001b00  e3060ffe  loadli.w r13,  -256(r30)
001b04  e3460ffe  loadli.w r13,  -252(r30)
001b08  e3061ffe  loadli.w r13,  -248(r30)
001b0c  e3461ffe  loadli.w r13,  -244(r30)
001b10  e3062ffe  loadli.w r13,  -240(r30)
001b14  e3462ffe  loadli.w r13,  -236(r30)
001b18  e3063ffe  loadli.w r13,  -232(r30)
001b1c  e3463ffe  loadli.w r13,  -228(r30)
001b20  e3064ffe  loadli.w r13,  -224(r30)
001b24  e3464ffe  loadli.w r13,  -220(r30)
001b28  e3065ffe  loadli.w r13,  -216(r30)
001b2c  e3465ffe  loadli.w r13,  -212(r30)
001b30  e3066ffe  loadli.w r13,  -208(r30)
001b34  e3466ffe  loadli.w r13,  -204(r30)
001b38  e3067ffe  loadli.w r13,  -200(r30)
001b3c  e3467ffe  loadli.w r13,  -196(r30)
001b40  e3068ffe  loadli.w r13,  -192(r30)
001b44  e3468ffe  loadli.w r13,  -188(r30)
001b48  e3069ffe  loadli.w r13,  -184(r30)
001b4c  e3469ffe  loadli.w r13,  -180(r30)
001b50  e306affe  loadli.w r13,  -176(r30)
001b54  e346affe  loadli.w r13,  -172(r30)
001b58  e306bffe  loadli.w r13,  -168(r30)
001b5c  e346bffe  loadli.w r13,  -164(r30)
001b60  e306cffe  loadli.w r13,  -160(r30)
001b64  e346cffe  loadli.w r13,  -156(r30)
001b68  e306dffe  loadli.w r13,  -152(r30)
001b6c  e346dffe  loadli.w r13,  -148(r30)
001b70  e306effe  loadli.w r13,  -144(r30)
001b74  e346effe  loadli.w r13,  -140(r30)
001b78  e306fffe  loadli.w r13,  -136(r30)
001b7c  e346fffe  loadli.w r13,  -132(r30)
001b80  e3060fff  loadli.w r13,  -128(r30)
001b84  e3460fff  loadli.w r13,  -124(r30)
001b88  e3061fff  loadli.w r13,  -120(r30)
001b8c  e3461fff  loadli.w r13,  -116(r30)
001b90  e3062fff  loadli.w r13,  -112(r30)
001b94  e3462fff  loadli.w r13,  -108(r30)
001b98  e3063fff  loadli.w r13,  -104(r30)
001b9c  e3463fff  loadli.w r13,  -100(r30)
001ba0  e3064fff  loadli.w r13,  -96(r30)
001ba4  e3464fff  loadli.w r13,  -92(r30)
001ba8  e3065fff  loadli.w r13,  -88(r30)
001bac  e3465fff  loadli.w r13,  -84(r30)
001bb0  e3066fff  loadli.w r13,  -80(r30)
001bb4  e3466fff  loadli.w r13,  -76(r30)
001bb8  e3067fff  loadli.w r13,  -72(r30)
001bbc  e3467fff  loadli.w r13,  -68(r30)
001bc0  e3068fff  loadli.w r13,  -64(r30)
001bc4  e3468fff  loadli.w r13,  -60(r30)
001bc8  e3069fff  loadli.w r13,  -56(r30)
001bcc  e3469fff  loadli.w r13,  -52(r30)
001bd0  e306afff  loadli.w r13,  -48(r30)
001bd4  e346afff  loadli.w r13,  -44(r30)
001bd8  e306bfff  loadli.w r13,  -40(r30)
001bdc  e346bfff  loadli.w r13,  -36(r30)
001be0  e306cfff  loadli.w r13,  -32(r30)
001be4  e346cfff  loadli.w r13,  -28(r30)
001be8  e346ffeb  loadli.w r13,  -2564(r30)
001bec  e308dfff  loadli.w r17,  -24(r30)
001bf0  ab08807f  lui r17, 522240
001bf4  9786d500  and r13, r11, r13
001bf8  9386d804  setlt.u r13, r17, r13
001bfc  e348dfff  loadli.w r17,  -20(r30)
001c00  e308efff  loadli.w r17,  -16(r30)
001c04  e348efff  loadli.w r17,  -12(r30)
001c08  e308ffff  loadli.w r17,  -8(r30)
001c0c  e348ffff  loadli.w r17,  -4(r30)
001c10  3be00600  bneq r13, zero, 24
001c14  9bc60501  srli r13, r11, 16
001c18  9b861600  andi r13, r13, 1
001c1c  8b95d510  add.s r11, r11, r13
001c20  8b96b511  add.s r13, r11, r27
001c24  5b010000  j 8
001c28  97960501  or r13, r11, r16
001c2c  e345ffeb  loadli.w r11,  -2564(r30)
001c30  ab08807f  lui r17, 522240
001c34  9785b700  and r11, r15, r11
001c38  9385b804  setlt.u r11, r17, r11
001c3c  3be00500  bneq r11, zero, 24
001c40  9bc50701  srli r11, r15, 16
001c44  9b851500  andi r11, r11, 1
001c48  8b95b710  add.s r11, r15, r11
001c4c  8b98b511  add.s r17, r11, r27
001c50  5b010000  j 8
001c54  97980701  or r17, r15, r16
001c58  e345ffeb  loadli.w r11,  -2564(r30)
001c5c  ab07807f  lui r15, 522240
001c60  9785b200  and r11, r5, r11
001c64  9385b704  setlt.u r11, r15, r11
001c68  3be00500  bneq r11, zero, 24
001c6c  9bc50201  srli r11, r5, 16
001c70  9b851500  andi r11, r11, 1
001c74  8b92b210  add.s r5, r5, r11
001c78  8b99b211  add.s r19, r5, r27
001c7c  5b010000  j 8
001c80  97990201  or r19, r5, r16
001c84  e342ffeb  loadli.w r5,  -2564(r30)
001c88  ab05807f  lui r11, 522240
001c8c  97825100  and r5, r3, r5
001c90  93825504  setlt.u r5, r11, r5
001c94  3be00200  bneq r5, zero, 24
001c98  9bc20101  srli r5, r3, 16
001c9c  9b821200  andi r5, r5, 1
001ca0  8b915110  add.s r3, r3, r5
001ca4  8b92b111  add.s r5, r3, r27
001ca8  5b010000  j 8
001cac  97920101  or r5, r3, r16
001cb0  e341ffeb  loadli.w r3,  -2564(r30)
001cb4  97013a00  and r3, r20, r3
001cb8  93813504  setlt.u r3, r11, r3
001cbc  3be00100  bneq r3, zero, 24
001cc0  9b410a01  srli r3, r20, 16
001cc4  9b811100  andi r3, r3, 1
001cc8  8b113a10  add.s r3, r20, r3
001ccc  8b91b111  add.s r3, r3, r27
001cd0  5b010000  j 8
001cd4  97110a01  or r3, r20, r16
001cd8  e345ffeb  loadli.w r11,  -2564(r30)
001cdc  9705b900  and r11, r18, r11
001ce0  9385b704  setlt.u r11, r15, r11
001ce4  3be00500  bneq r11, zero, 24
001ce8  9b450901  srli r11, r18, 16
001cec  9b851500  andi r11, r11, 1
001cf0  8b15b910  add.s r11, r18, r11
001cf4  8b97b511  add.s r15, r11, r27
001cf8  5b010000  j 8
001cfc  97170901  or r15, r18, r16
001d00  e345ffeb  loadli.w r11,  -2564(r30)
001d04  2b09807f  lui r18, 522240
001d08  9705b700  and r11, r14, r11
001d0c  9305b904  setlt.u r11, r18, r11
001d10  3be00500  bneq r11, zero, 24
001d14  9b450701  srli r11, r14, 16
001d18  9b851500  andi r11, r11, 1
001d1c  8b15b710  add.s r11, r14, r11
001d20  8b95b511  add.s r11, r11, r27
001d24  5b010000  j 8
001d28  97150701  or r11, r14, r16
001d2c  6347ffeb  loadli.w r14,  -2564(r30)
001d30  1707e600  and r14, r12, r14
001d34  1307e904  setlt.u r14, r18, r14
001d38  3b600700  bneq r14, zero, 24
001d3c  1b470601  srli r14, r12, 16
001d40  1b071700  andi r14, r14, 1
001d44  0b16e610  add.s r12, r12, r14
001d48  0b16b611  add.s r12, r12, r27
001d4c  5b010000  j 8
001d50  17160601  or r12, r12, r16
001d54  6347ffeb  loadli.w r14,  -2564(r30)
001d58  1707e500  and r14, r10, r14
001d5c  1307e904  setlt.u r14, r18, r14
001d60  3b600700  bneq r14, zero, 24
001d64  1b470501  srli r14, r10, 16
001d68  1b071700  andi r14, r14, 1
001d6c  0b15e510  add.s r10, r10, r14
001d70  0b15b511  add.s r10, r10, r27
001d74  5b010000  j 8
001d78  17150501  or r10, r10, r16
001d7c  6347ffeb  loadli.w r14,  -2564(r30)
001d80  1787e400  and r14, r9, r14
001d84  1307e904  setlt.u r14, r18, r14
001d88  3b600700  bneq r14, zero, 24
001d8c  1bc70401  srli r14, r9, 16
001d90  1b071700  andi r14, r14, 1
001d94  8b94e410  add.s r9, r9, r14
001d98  8b94b411  add.s r9, r9, r27
001d9c  5b010000  j 8
001da0  97940401  or r9, r9, r16
001da4  6347ffeb  loadli.w r14,  -2564(r30)
001da8  1707e400  and r14, r8, r14
001dac  1307e904  setlt.u r14, r18, r14
001db0  3b600700  bneq r14, zero, 24
001db4  1b470401  srli r14, r8, 16
001db8  1b071700  andi r14, r14, 1
001dbc  0b14e410  add.s r8, r8, r14
001dc0  0b14b411  add.s r8, r8, r27
001dc4  5b010000  j 8
001dc8  17140401  or r8, r8, r16
001dcc  6347ffeb  loadli.w r14,  -2564(r30)
001dd0  1787e300  and r14, r7, r14
001dd4  1307e904  setlt.u r14, r18, r14
001dd8  3b600700  bneq r14, zero, 24
001ddc  1bc70301  srli r14, r7, 16
001de0  1b071700  andi r14, r14, 1
001de4  8b93e310  add.s r7, r7, r14
001de8  8b93b311  add.s r7, r7, r27
001dec  5b010000  j 8
001df0  97930301  or r7, r7, r16
001df4  6347ffeb  loadli.w r14,  -2564(r30)
001df8  1707e300  and r14, r6, r14
001dfc  1307e904  setlt.u r14, r18, r14
001e00  3b600700  bneq r14, zero, 24
001e04  1b470301  srli r14, r6, 16
001e08  1b071700  andi r14, r14, 1
001e0c  0b13e310  add.s r6, r6, r14
001e10  0b13b311  add.s r6, r6, r27
001e14  5b010000  j 8
001e18  17130301  or r6, r6, r16
001e1c  6347ffeb  loadli.w r14,  -2564(r30)
001e20  1707e200  and r14, r4, r14
001e24  1307e904  setlt.u r14, r18, r14
001e28  3b600700  bneq r14, zero, 24
001e2c  1b470201  srli r14, r4, 16
001e30  1b071700  andi r14, r14, 1
001e34  0b12e210  add.s r4, r4, r14
001e38  0b12b211  add.s r4, r4, r27
001e3c  5b010000  j 8
001e40  17120201  or r4, r4, r16
001e44  6347ffeb  loadli.w r14,  -2564(r30)
001e48  1707e100  and r14, r2, r14
001e4c  1307e904  setlt.u r14, r18, r14
001e50  3b600700  bneq r14, zero, 24
001e54  1b470101  srli r14, r2, 16
001e58  1b071700  andi r14, r14, 1
001e5c  0b11e110  add.s r2, r2, r14
001e60  0b11b111  add.s r2, r2, r27
001e64  5b010000  j 8
001e68  17110101  or r2, r2, r16
001e6c  6347ffeb  loadli.w r14,  -2564(r30)
001e70  1787e000  and r14, r1, r14
001e74  1307e904  setlt.u r14, r18, r14
001e78  3b600700  bneq r14, zero, 24
001e7c  1bc70001  srli r14, r1, 16
001e80  1b071700  andi r14, r14, 1
001e84  8b90e010  add.s r1, r1, r14
001e88  8b90b011  add.s r1, r1, r27
001e8c  5b010000  j 8
001e90  97900001  or r1, r1, r16
001e94  17885901  and r16, r19, r21
001e98  17875801  and r14, r17, r21
001e9c  178a5401  and r20, r9, r21
001ea0  970c5101  and r25, r2, r21
001ea4  178d5001  and r26, r1, r21
001ea8  178b5301  and r22, r7, r21
001eac  97865601  and r13, r13, r21
001eb0  97825201  and r5, r5, r21
001eb4  97815101  and r3, r3, r21
001eb8  97875701  and r15, r15, r21
001ebc  97855501  and r11, r11, r21
001ec0  17065601  and r12, r12, r21
001ec4  17055501  and r10, r10, r21
001ec8  17045401  and r8, r8, r21
001ecc  170c5201  and r24, r4, r21
001ed0  970b5301  and r23, r6, r21
001ed4  1f010800  addli r2, r16, 0
001ed8  9f000700  addli r1, r14, 0
001edc  67024feb  storeli.w r20, -2784(r30)
001ee0  1f090a00  addli r18, r20, 0
001ee4  6704efea  storeli.w r14, -2752(r30)
001ee8  e7430feb  storeli.w r16, -2756(r30)
001eec  1f870600  addli r14, r13, 0
001ef0  e7035fea  storeli.w r5, -2760(r30)
001ef4  9f8a0200  addli r21, r5, 0
001ef8  67433fea  storeli.w r3, -2764(r30)
001efc  1f020400  addli r4, r8, 0
001f00  e7016feb  storeli.w r22, -2792(r30)
001f04  9f020b00  addli r5, r22, 0
001f08  1f8b0100  addli r22, r3, 0
001f0c  67417feb  storeli.w r23, -2796(r30)
001f10  9f810b00  addli r3, r23, 0
001f14  9f8b0700  addli r23, r15, 0
001f18  67018feb  storeli.w r24, -2800(r30)
001f1c  1f030c00  addli r6, r24, 0
001f20  1f8c0500  addli r24, r11, 0
001f24  e7409feb  storeli.w r25, -2804(r30)
001f28  9f830c00  addli r7, r25, 0
001f2c  9f0c0600  addli r25, r12, 0
001f30  6740afeb  storeli.w r26, -2812(r30)
001f34  9f040d00  addli r9, r26, 0
001f38  1f0d0500  addli r26, r10, 0
001f3c  6744dfea  storeli.w r13, -2748(r30)
001f40  6703ffea  storeli.w r15, -2768(r30)
001f44  e742bfea  storeli.w r11, -2772(r30)
001f48  e702cfea  storeli.w r12, -2776(r30)
001f4c  6742afea  storeli.w r10, -2780(r30)
001f50  e7418fea  storeli.w r8, -2788(r30)
001f54  1f0a0100  addli r20, r2, 0
001f58  6301efeb  loadli.w r2,  -2576(r30)
001f5c  1f880000  addli r16, r1, 0
001f60  9f008000  addli r1, zero, 64
001f64  3f111100  blt.s r2, r1, 68
001f68  1f070000  addli r14, zero, 0
001f6c  1f080000  addli r16, zero, 0
001f70  1f0a0000  addli r20, zero, 0
001f74  9f0a0000  addli r21, zero, 0
001f78  1f0b0000  addli r22, zero, 0
001f7c  9f0b0000  addli r23, zero, 0
001f80  1f0c0000  addli r24, zero, 0
001f84  9f0c0000  addli r25, zero, 0
001f88  1f0d0000  addli r26, zero, 0
001f8c  1f090000  addli r18, zero, 0
001f90  1f020000  addli r4, zero, 0
001f94  9f020000  addli r5, zero, 0
001f98  9f010000  addli r3, zero, 0
001f9c  1f030000  addli r6, zero, 0
001fa0  9f030000  addli r7, zero, 0
001fa4  9f040000  addli r9, zero, 0
001fa8  1f040ff4  addli r8, r30, -1536
001fac  1f0e4000  addli r28, zero, 32
001fb0  1f010200  addli r2, r4, 0
001fb4  9f008400  addli r1, r8, 64
001fb8  e74d1fe8  storeli.w r1, -2852(r30)
001fbc  9f000401  addli r1, r8, 128
001fc0  670e1fe8  storeli.w r1, -2848(r30)
001fc4  9f008401  addli r1, r8, 192
001fc8  674e1fe8  storeli.w r1, -2844(r30)
001fcc  00a00000  mfence { lm }
001fd0  5b160000  j 176
001fd4  1f020000  addli r4, zero, 0
001fd8  1f030000  addli r6, zero, 0
001fdc  1f060000  addli r12, zero, 0
001fe0  9f080000  addli r17, zero, 0
001fe4  9f090000  addli r19, zero, 0
001fe8  9f0d0000  addli r27, zero, 0
001fec  9f050000  addli r11, zero, 0
001ff0  1f0e0000  addli r28, zero, 0
001ff4  9f000000  addli r1, zero, 0
001ff8  1f040000  addli r8, zero, 0
001ffc  9f020000  addli r5, zero, 0
002000  9f030000  addli r7, zero, 0
002004  9f010000  addli r3, zero, 0
002008  9f040000  addli r9, zero, 0
00200c  9f070000  addli r15, zero, 0
002010  1f050000  addli r10, zero, 0
002014  0b686810  add.f.rn r16, r16, r6
002018  6303efea  loadli.w r6,  -2704(r30)
00201c  0b615110  add.f.rn r2, r2, r5
002020  e3020feb  loadli.w r5,  -2688(r30)
002024  0b6d1d10  add.f.rn r26, r26, r1
002028  e300ffea  loadli.w r1,  -2696(r30)
00202c  8beccc11  add.f.rn r25, r25, r28
002030  0b698910  add.f.rn r18, r18, r8
002034  0b674710  add.f.rn r14, r14, r4
002038  0b6aca10  add.f.rn r20, r20, r12
00203c  8bea1a11  add.f.rn r21, r21, r17
002040  0b6b3b11  add.f.rn r22, r22, r19
002044  8bebbb11  add.f.rn r23, r23, r27
002048  0b6cbc10  add.f.rn r24, r24, r11
00204c  634ecfea  loadli.w r28,  -2716(r30)
002050  1f040ff4  addli r8, r30, -1536
002054  8be27210  add.f.rn r5, r5, r7
002058  e343dfea  loadli.w r7,  -2708(r30)
00205c  0b639310  add.f.rn r6, r6, r9
002060  e304dfea  loadli.w r9,  -2712(r30)
002064  8be03010  add.f.rn r1, r1, r3
002068  1f0e4e00  addli r28, r28, 32
00206c  8be3f310  add.f.rn r7, r7, r15
002070  8be4a410  add.f.rn r9, r9, r10
002074  9f810000  addli r3, r1, 0
002078  9f000002  addli r1, zero, 256
00207c  b73a1e02  beq r28, r1, 1708
002080  0b12c411  add.s r4, r8, r28
002084  67085fea  storeli.w r5, -2688(r30)
002088  92303002  vadd.s.mz vr1{mr1}, zero, vr3
00208c  1f100000  addli zero, zero, 1
002090  67076fea  storeli.w r6, -2704(r30)
002094  e7069fea  storeli.w r9, -2712(r30)
002098  e7467fea  storeli.w r7, -2708(r30)
00209c  e7073fea  storeli.w r3, -2696(r30)
0020a0  eb320200  load.hu r5, 0(r4)
0020a4  6b332200  load.hu r6, 2(r4)
0020a8  7e0100e0  vmmov mr2, zero
0020ac  17200000  xor zero, zero, zero
0020b0  eb31a201  load.hu r3, 26(r4)
0020b4  eb30c201  load.hu r1, 28(r4)
0020b8  eb334200  load.hu r7, 4(r4)
0020bc  6b346200  load.hu r8, 6(r4)
0020c0  eb348200  load.hu r9, 8(r4)
0020c4  6b35a200  load.hu r10, 10(r4)
0020c8  eb35c200  load.hu r11, 12(r4)
0020cc  6b36e200  load.hu r12, 14(r4)
0020d0  eb360201  load.hu r13, 16(r4)
0020d4  eb372201  load.hu r15, 18(r4)
0020d8  eb384201  load.hu r17, 20(r4)
0020dc  eb396201  load.hu r19, 22(r4)
0020e0  eb3d8201  load.hu r27, 24(r4)
0020e4  6b32e201  load.hu r4, 30(r4)
0020e8  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0020ec  b3920218  bfloat2float.rn r5, r5
0020f0  b3910118  bfloat2float.rn r3, r3
0020f4  b3900018  bfloat2float.rn r1, r1
0020f8  eaa01234  vor.u.mh vr1{mr2}, r5, vr1
0020fc  b3120318  bfloat2float.rn r5, r6
002100  1f230000  addli r6, zero, 2
002104  fe0103e0  vmmov mr3, r6
002108  1f430000  addli r6, zero, 4
00210c  eaa01236  vor.u.mh vr1{mr3}, r5, vr1
002110  b3920318  bfloat2float.rn r5, r7
002114  7e0003e0  vmmov mr0, r6
002118  1f031000  addli r6, zero, 8
00211c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002120  b3120418  bfloat2float.rn r5, r8
002124  7e0003e0  vmmov mr0, r6
002128  1f032000  addli r6, zero, 16
00212c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002130  b3920418  bfloat2float.rn r5, r9
002134  7e0003e0  vmmov mr0, r6
002138  1f034000  addli r6, zero, 32
00213c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002140  b3120518  bfloat2float.rn r5, r10
002144  7e0003e0  vmmov mr0, r6
002148  1f038000  addli r6, zero, 64
00214c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002150  b3920518  bfloat2float.rn r5, r11
002154  7e0003e0  vmmov mr0, r6
002158  1f030001  addli r6, zero, 128
00215c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002160  b3120618  bfloat2float.rn r5, r12
002164  7e0003e0  vmmov mr0, r6
002168  1f030002  addli r6, zero, 256
00216c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002170  b3920618  bfloat2float.rn r5, r13
002174  7e0003e0  vmmov mr0, r6
002178  1f030004  addli r6, zero, 512
00217c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002180  b3920718  bfloat2float.rn r5, r15
002184  7e0003e0  vmmov mr0, r6
002188  1f030008  addli r6, zero, 1024
00218c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002190  b3920818  bfloat2float.rn r5, r17
002194  7e0003e0  vmmov mr0, r6
002198  1f030010  addli r6, zero, 2048
00219c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0021a0  b3920918  bfloat2float.rn r5, r19
0021a4  7e0003e0  vmmov mr0, r6
0021a8  1f030020  addli r6, zero, 4096
0021ac  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0021b0  b3920d18  bfloat2float.rn r5, r27
0021b4  7e0003e0  vmmov mr0, r6
0021b8  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0021bc  9f020040  addli r5, zero, 8192
0021c0  7e8002e0  vmmov mr0, r5
0021c4  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0021c8  ab410000  lui r3, 4
0021cc  7e8001e0  vmmov mr0, r3
0021d0  9f010ff6  addli r3, r30, -1280
0021d4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0021d8  b3100218  bfloat2float.rn r1, r4
0021dc  2b820000  lui r4, 8
0021e0  8b91c111  add.s r3, r3, r28
0021e4  6746cfeb  storeli.w r28, -2716(r30)
0021e8  7e0002e0  vmmov mr0, r4
0021ec  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0021f0  ebb00100  load.hu r1, 0(r3)
0021f4  6bb22100  load.hu r4, 2(r3)
0021f8  ebb24100  load.hu r5, 4(r3)
0021fc  6bb36100  load.hu r6, 6(r3)
002200  ebb38100  load.hu r7, 8(r3)
002204  6bb4a100  load.hu r8, 10(r3)
002208  ebb4c100  load.hu r9, 12(r3)
00220c  6bb5e100  load.hu r10, 14(r3)
002210  ebb50101  load.hu r11, 16(r3)
002214  6bb62101  load.hu r12, 18(r3)
002218  ebb64101  load.hu r13, 20(r3)
00221c  ebb76101  load.hu r15, 22(r3)
002220  ebb88101  load.hu r17, 24(r3)
002224  ebb9a101  load.hu r19, 26(r3)
002228  ebbdc101  load.hu r27, 28(r3)
00222c  ebb1e101  load.hu r3, 30(r3)
002230  b3900018  bfloat2float.rn r1, r1
002234  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002238  b3100218  bfloat2float.rn r1, r4
00223c  1f420000  addli r4, zero, 4
002240  7e0102e0  vmmov mr2, r4
002244  1f021000  addli r4, zero, 8
002248  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
00224c  b3900218  bfloat2float.rn r1, r5
002250  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002254  b3100318  bfloat2float.rn r1, r6
002258  7e0102e0  vmmov mr2, r4
00225c  1f022000  addli r4, zero, 16
002260  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002264  b3900318  bfloat2float.rn r1, r7
002268  7e0102e0  vmmov mr2, r4
00226c  1f024000  addli r4, zero, 32
002270  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002274  b3100418  bfloat2float.rn r1, r8
002278  7e0102e0  vmmov mr2, r4
00227c  1f028000  addli r4, zero, 64
002280  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002284  b3900418  bfloat2float.rn r1, r9
002288  7e0102e0  vmmov mr2, r4
00228c  1f020001  addli r4, zero, 128
002290  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002294  b3100518  bfloat2float.rn r1, r10
002298  7e0102e0  vmmov mr2, r4
00229c  1f020002  addli r4, zero, 256
0022a0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0022a4  b3900518  bfloat2float.rn r1, r11
0022a8  7e0102e0  vmmov mr2, r4
0022ac  1f020004  addli r4, zero, 512
0022b0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0022b4  b3100618  bfloat2float.rn r1, r12
0022b8  7e0102e0  vmmov mr2, r4
0022bc  1f020008  addli r4, zero, 1024
0022c0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0022c4  b3900618  bfloat2float.rn r1, r13
0022c8  7e0102e0  vmmov mr2, r4
0022cc  1f020010  addli r4, zero, 2048
0022d0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0022d4  b3900718  bfloat2float.rn r1, r15
0022d8  7e0102e0  vmmov mr2, r4
0022dc  1f020020  addli r4, zero, 4096
0022e0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0022e4  b3900818  bfloat2float.rn r1, r17
0022e8  7e0102e0  vmmov mr2, r4
0022ec  1f020040  addli r4, zero, 8192
0022f0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0022f4  b3900918  bfloat2float.rn r1, r19
0022f8  7e0102e0  vmmov mr2, r4
0022fc  2b420000  lui r4, 4
002300  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002304  b3900d18  bfloat2float.rn r1, r27
002308  7e0102e0  vmmov mr2, r4
00230c  2b02807f  lui r4, 522240
002310  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002314  b3900118  bfloat2float.rn r1, r3
002318  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
00231c  9f000ff0  addli r1, r30, -2048
002320  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
002324  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
002328  00a00000  mfence { lm }
00232c  63050ff0  loadli.w r10,  -2048(r30)
002330  e3440ff0  loadli.w r9,  -2044(r30)
002334  63041ff0  loadli.w r8,  -2040(r30)
002338  63431ff0  loadli.w r6,  -2036(r30)
00233c  e30d2ff0  loadli.w r27,  -2032(r30)
002340  e3432ff0  loadli.w r7,  -2028(r30)
002344  e3053ff0  loadli.w r11,  -2024(r30)
002348  634e3ff0  loadli.w r28,  -2020(r30)
00234c  e3004ff0  loadli.w r1,  -2016(r30)
002350  e3474ff0  loadli.w r15,  -2012(r30)
002354  e341ffeb  loadli.w r3,  -2564(r30)
002358  e3025ff0  loadli.w r5,  -2008(r30)
00235c  e3485ff0  loadli.w r17,  -2004(r30)
002360  97013500  and r3, r10, r3
002364  93063204  setlt.u r13, r4, r3
002368  e3016ff0  loadli.w r3,  -2000(r30)
00236c  63426ff0  loadli.w r4,  -1996(r30)
002370  e3097ff0  loadli.w r19,  -1992(r30)
002374  63467ff0  loadli.w r12,  -1988(r30)
002378  3bf00600  bneq r13, zero, 28
00237c  9b460501  srli r13, r10, 16
002380  9b861600  andi r13, r13, 1
002384  0b15d510  add.s r10, r10, r13
002388  e306ffeb  loadli.w r13,  -2568(r30)
00238c  0b15d510  add.s r10, r10, r13
002390  db010000  j 12
002394  ab064000  lui r13, 1024
002398  1715d500  or r10, r10, r13
00239c  6706afea  storeli.w r10, -2720(r30)
0023a0  6345ffeb  loadli.w r10,  -2564(r30)
0023a4  ab06807f  lui r13, 522240
0023a8  1785a400  and r10, r9, r10
0023ac  1385a604  setlt.u r10, r13, r10
0023b0  3b700500  bneq r10, zero, 28
0023b4  1bc50401  srli r10, r9, 16
0023b8  1b051500  andi r10, r10, 1
0023bc  8b94a410  add.s r9, r9, r10
0023c0  6305ffeb  loadli.w r10,  -2568(r30)
0023c4  8b94a410  add.s r9, r9, r10
0023c8  db010000  j 12
0023cc  2b054000  lui r10, 1024
0023d0  9794a400  or r9, r9, r10
0023d4  e7459fea  storeli.w r9, -2724(r30)
0023d8  e344ffeb  loadli.w r9,  -2564(r30)
0023dc  2b05807f  lui r10, 522240
0023e0  97049400  and r9, r8, r9
0023e4  93049504  setlt.u r9, r10, r9
0023e8  3bf00400  bneq r9, zero, 28
0023ec  9b440401  srli r9, r8, 16
0023f0  9b841400  andi r9, r9, 1
0023f4  0b149410  add.s r8, r8, r9
0023f8  e304ffeb  loadli.w r9,  -2568(r30)
0023fc  0b149410  add.s r8, r8, r9
002400  db010000  j 12
002404  ab044000  lui r9, 1024
002408  17149400  or r8, r8, r9
00240c  e7058fea  storeli.w r8, -2728(r30)
002410  6344ffeb  loadli.w r8,  -2564(r30)
002414  17048300  and r8, r6, r8
002418  13048504  setlt.u r8, r10, r8
00241c  3b700400  bneq r8, zero, 28
002420  1b440301  srli r8, r6, 16
002424  1b041400  andi r8, r8, 1
002428  0b138310  add.s r6, r6, r8
00242c  6304ffeb  loadli.w r8,  -2568(r30)
002430  0b138310  add.s r6, r6, r8
002434  db010000  j 12
002438  2b044000  lui r8, 1024
00243c  17138300  or r6, r6, r8
002440  67456fea  storeli.w r6, -2732(r30)
002444  6343ffeb  loadli.w r6,  -2564(r30)
002448  17836d00  and r6, r27, r6
00244c  13036504  setlt.u r6, r10, r6
002450  3b700300  bneq r6, zero, 28
002454  1bc30d01  srli r6, r27, 16
002458  6304ffeb  loadli.w r8,  -2568(r30)
00245c  1b031300  andi r6, r6, 1
002460  0b936d10  add.s r6, r27, r6
002464  8b1d8310  add.s r27, r6, r8
002468  5b020000  j 16
00246c  2b034000  lui r6, 1024
002470  6304ffeb  loadli.w r8,  -2568(r30)
002474  979d6d00  or r27, r27, r6
002478  6343ffeb  loadli.w r6,  -2564(r30)
00247c  17836300  and r6, r7, r6
002480  13036504  setlt.u r6, r10, r6
002484  3b600300  bneq r6, zero, 24
002488  1bc30301  srli r6, r7, 16
00248c  1b031300  andi r6, r6, 1
002490  0b936310  add.s r6, r7, r6
002494  0b138310  add.s r6, r6, r8
002498  db010000  j 12
00249c  2b034000  lui r6, 1024
0024a0  17936300  or r6, r7, r6
0024a4  67056fea  storeli.w r6, -2736(r30)
0024a8  6343ffeb  loadli.w r6,  -2564(r30)
0024ac  17836500  and r6, r11, r6
0024b0  13036504  setlt.u r6, r10, r6
0024b4  3b600300  bneq r6, zero, 24
0024b8  1bc30501  srli r6, r11, 16
0024bc  1b031300  andi r6, r6, 1
0024c0  0b936510  add.s r6, r11, r6
0024c4  8b158310  add.s r11, r6, r8
0024c8  db010000  j 12
0024cc  2b034000  lui r6, 1024
0024d0  97956500  or r11, r11, r6
0024d4  6343ffeb  loadli.w r6,  -2564(r30)
0024d8  17036e00  and r6, r28, r6
0024dc  13036504  setlt.u r6, r10, r6
0024e0  3b600300  bneq r6, zero, 24
0024e4  1b430e01  srli r6, r28, 16
0024e8  1b031300  andi r6, r6, 1
0024ec  0b136e10  add.s r6, r28, r6
0024f0  0b1e8310  add.s r28, r6, r8
0024f4  db010000  j 12
0024f8  2b034000  lui r6, 1024
0024fc  171e6e00  or r28, r28, r6
002500  6343ffeb  loadli.w r6,  -2564(r30)
002504  17836000  and r6, r1, r6
002508  13036504  setlt.u r6, r10, r6
00250c  3b600300  bneq r6, zero, 24
002510  1bc30001  srli r6, r1, 16
002514  1b031300  andi r6, r6, 1
002518  8b906010  add.s r1, r1, r6
00251c  8b908010  add.s r1, r1, r8
002520  db010000  j 12
002524  2b034000  lui r6, 1024
002528  97906000  or r1, r1, r6
00252c  6343ffeb  loadli.w r6,  -2564(r30)
002530  17836700  and r6, r15, r6
002534  13036504  setlt.u r6, r10, r6
002538  3b600300  bneq r6, zero, 24
00253c  1bc30701  srli r6, r15, 16
002540  1b031300  andi r6, r6, 1
002544  0b936710  add.s r6, r15, r6
002548  8b178310  add.s r15, r6, r8
00254c  db010000  j 12
002550  2b034000  lui r6, 1024
002554  97976700  or r15, r15, r6
002558  6343ffeb  loadli.w r6,  -2564(r30)
00255c  17836200  and r6, r5, r6
002560  13036504  setlt.u r6, r10, r6
002564  3b600300  bneq r6, zero, 24
002568  1bc30201  srli r6, r5, 16
00256c  1b031300  andi r6, r6, 1
002570  8b926210  add.s r5, r5, r6
002574  8b928210  add.s r5, r5, r8
002578  db010000  j 12
00257c  2b034000  lui r6, 1024
002580  97926200  or r5, r5, r6
002584  6343ffeb  loadli.w r6,  -2564(r30)
002588  17836800  and r6, r17, r6
00258c  13036504  setlt.u r6, r10, r6
002590  3b600300  bneq r6, zero, 24
002594  1bc30801  srli r6, r17, 16
002598  1b031300  andi r6, r6, 1
00259c  0b936810  add.s r6, r17, r6
0025a0  8b138310  add.s r7, r6, r8
0025a4  db010000  j 12
0025a8  2b034000  lui r6, 1024
0025ac  97936800  or r7, r17, r6
0025b0  6343ffeb  loadli.w r6,  -2564(r30)
0025b4  17836100  and r6, r3, r6
0025b8  13036504  setlt.u r6, r10, r6
0025bc  3b600300  bneq r6, zero, 24
0025c0  1bc30101  srli r6, r3, 16
0025c4  1b031300  andi r6, r6, 1
0025c8  8b916110  add.s r3, r3, r6
0025cc  8b918110  add.s r3, r3, r8
0025d0  db010000  j 12
0025d4  2b034000  lui r6, 1024
0025d8  97916100  or r3, r3, r6
0025dc  6343ffeb  loadli.w r6,  -2564(r30)
0025e0  17036200  and r6, r4, r6
0025e4  13036504  setlt.u r6, r10, r6
0025e8  3b600300  bneq r6, zero, 24
0025ec  1b430201  srli r6, r4, 16
0025f0  1b031300  andi r6, r6, 1
0025f4  0b126210  add.s r4, r4, r6
0025f8  8b148210  add.s r9, r4, r8
0025fc  db010000  j 12
002600  2b034000  lui r6, 1024
002604  97146200  or r9, r4, r6
002608  6342ffeb  loadli.w r4,  -2564(r30)
00260c  17824900  and r4, r19, r4
002610  13024504  setlt.u r4, r10, r4
002614  3b600200  bneq r4, zero, 24
002618  1bc20901  srli r4, r19, 16
00261c  1b021200  andi r4, r4, 1
002620  0b924910  add.s r4, r19, r4
002624  0b158210  add.s r10, r4, r8
002628  db010000  j 12
00262c  2b024000  lui r4, 1024
002630  17954900  or r10, r19, r4
002634  6342ffeb  loadli.w r4,  -2564(r30)
002638  2b03807f  lui r6, 522240
00263c  17024600  and r4, r12, r4
002640  13024304  setlt.u r4, r6, r4
002644  3b600200  bneq r4, zero, 24
002648  1b420601  srli r4, r12, 16
00264c  1b021200  andi r4, r4, 1
002650  0b124610  add.s r4, r12, r4
002654  8b168210  add.s r13, r4, r8
002658  db010000  j 12
00265c  2b024000  lui r4, 1024
002660  97164600  or r13, r12, r4
002664  6303efeb  loadli.w r6,  -2576(r30)
002668  1f028000  addli r4, zero, 64
00266c  3f204300  blt.s r6, r4, 8
002670  db2cffff  j -1692
002674  6304bfea  loadli.w r8,  -2728(r30)
002678  e7442fea  storeli.w r2, -2740(r30)
00267c  1f010900  addli r2, r18, 0
002680  1f090d00  addli r18, r26, 0
002684  1f8d0c00  addli r26, r25, 0
002688  9f0c0c00  addli r25, r24, 0
00268c  1f8c0b00  addli r24, r23, 0
002690  9f0b0b00  addli r23, r22, 0
002694  1f8b0a00  addli r22, r21, 0
002698  9f0a0a00  addli r21, r20, 0
00269c  1f0a0800  addli r20, r16, 0
0026a0  1f080700  addli r16, r14, 0
0026a4  2b07ffff  lui r14, 1048560
0026a8  6302cfea  loadli.w r4,  -2720(r30)
0026ac  6343bfea  loadli.w r6,  -2724(r30)
0026b0  9789ed00  and r19, r27, r14
0026b4  9785e500  and r11, r11, r14
0026b8  170eee00  and r28, r28, r14
0026bc  9780e000  and r1, r1, r14
0026c0  9782e200  and r5, r5, r14
0026c4  9783e300  and r7, r7, r14
0026c8  9781e100  and r3, r3, r14
0026cc  9784e400  and r9, r9, r14
0026d0  1706e400  and r12, r8, r14
0026d4  6344afea  loadli.w r8,  -2732(r30)
0026d8  1702e200  and r4, r4, r14
0026dc  1703e300  and r6, r6, r14
0026e0  9708e400  and r17, r8, r14
0026e4  6304afea  loadli.w r8,  -2736(r30)
0026e8  970de400  and r27, r8, r14
0026ec  1784e700  and r8, r15, r14
0026f0  9707e500  and r15, r10, r14
0026f4  1785e600  and r10, r13, r14
0026f8  1f070800  addli r14, r16, 0
0026fc  1f080a00  addli r16, r20, 0
002700  1f8a0a00  addli r20, r21, 0
002704  9f0a0b00  addli r21, r22, 0
002708  1f8b0b00  addli r22, r23, 0
00270c  9f0b0c00  addli r23, r24, 0
002710  1f8c0c00  addli r24, r25, 0
002714  9f0c0d00  addli r25, r26, 0
002718  1f0d0900  addli r26, r18, 0
00271c  1f090100  addli r18, r2, 0
002720  63419fea  loadli.w r2,  -2740(r30)
002724  5b1effff  j -1808
002728  8b600711  add.f.rn r1, r14, r16
00272c  8be04011  add.f.rn r1, r1, r20
002730  8be05011  add.f.rn r1, r1, r21
002734  8be06011  add.f.rn r1, r1, r22
002738  8be07011  add.f.rn r1, r1, r23
00273c  8be08011  add.f.rn r1, r1, r24
002740  8be09011  add.f.rn r1, r1, r25
002744  8be0a011  add.f.rn r1, r1, r26
002748  8be02011  add.f.rn r1, r1, r18
00274c  8be02010  add.f.rn r1, r1, r2
002750  6341afe5  loadli.w r2,  -3372(r30)
002754  8be05010  add.f.rn r1, r1, r5
002758  8be03010  add.f.rn r1, r1, r3
00275c  8be06010  add.f.rn r1, r1, r6
002760  8be07010  add.f.rn r1, r1, r7
002764  8be09010  add.f.rn r1, r1, r9
002768  73601100  stores.w r1, 0(r2)
00276c  00a00300  mfence { lm, sm, gm }
002770  6342ffe9  loadli.w r4,  -2820(r30)
002774  80210204  csr_set csr3, r4
002778  00d00100  sync_group
00277c  e300ffe9  loadli.w r1,  -2824(r30)
002780  3ba10000  bneq r1, zero, 72
002784  e342bfe5  loadli.w r5,  -3364(r30)
002788  efc00200  loads.w r1, 0(r5)
00278c  6fc14200  loads.w r2, 4(r5)
002790  efc18200  loads.w r3, 8(r5)
002794  8be02010  add.f.rn r1, r1, r2
002798  6fc1c200  loads.w r2, 12(r5)
00279c  8be03010  add.f.rn r1, r1, r3
0027a0  efc10201  loads.w r3, 16(r5)
0027a4  8be02010  add.f.rn r1, r1, r2
0027a8  6fc14201  loads.w r2, 20(r5)
0027ac  8be03010  add.f.rn r1, r1, r3
0027b0  efc18201  loads.w r3, 24(r5)
0027b4  8be02010  add.f.rn r1, r1, r2
0027b8  6fc1c201  loads.w r2, 28(r5)
0027bc  8be03010  add.f.rn r1, r1, r3
0027c0  8be02010  add.f.rn r1, r1, r2
0027c4  73e01200  stores.w r1, 0(r5)
0027c8  00a00300  mfence { lm, sm, gm }
0027cc  80210204  csr_set csr3, r4
0027d0  00d00100  sync_group
0027d4  e340bfe5  loadli.w r1,  -3364(r30)
0027d8  2b01803a  lui r2, 239616
0027dc  1f090002  addli r18, zero, 256
0027e0  efc00000  loads.w r1, 0(r1)
0027e4  8be32020  mul.f.rn r7, r1, r2
0027e8  6301efeb  loadli.w r2,  -2576(r30)
0027ec  9f008000  addli r1, zero, 64
0027f0  e7007fea  storeli.w r7, -2808(r30)
0027f4  3f211100  blt.s r2, r1, 72
0027f8  9f0a0000  addli r21, zero, 0
0027fc  1f0c0000  addli r24, zero, 0
002800  9f010000  addli r3, zero, 0
002804  1f080000  addli r16, zero, 0
002808  1f050000  addli r10, zero, 0
00280c  1f020000  addli r4, zero, 0
002810  9f020000  addli r5, zero, 0
002814  9f030000  addli r7, zero, 0
002818  9f040000  addli r9, zero, 0
00281c  9f050000  addli r11, zero, 0
002820  1f060000  addli r12, zero, 0
002824  9f060000  addli r13, zero, 0
002828  1f070000  addli r14, zero, 0
00282c  9f070000  addli r15, zero, 0
002830  9f080000  addli r17, zero, 0
002834  9f090000  addli r19, zero, 0
002838  db190000  j 204
00283c  e3408fea  loadli.w r1,  -2748(r30)
002840  e3426fea  loadli.w r5,  -2764(r30)
002844  63481fea  loadli.w r16,  -2804(r30)
002848  63018fea  loadli.w r2,  -2752(r30)
00284c  e3417fea  loadli.w r3,  -2756(r30)
002850  63027fea  loadli.w r4,  -2760(r30)
002854  63036fea  loadli.w r6,  -2768(r30)
002858  63445fea  loadli.w r8,  -2772(r30)
00285c  e3045fea  loadli.w r9,  -2776(r30)
002860  63454fea  loadli.w r10,  -2780(r30)
002864  e3054fea  loadli.w r11,  -2784(r30)
002868  63463fea  loadli.w r12,  -2788(r30)
00286c  e3063fea  loadli.w r13,  -2792(r30)
002870  63472fea  loadli.w r14,  -2796(r30)
002874  e3072fea  loadli.w r15,  -2800(r30)
002878  8be07018  sub.f.rn r1, r1, r7
00287c  8be27218  sub.f.rn r5, r5, r7
002880  8b687818  sub.f.rn r17, r16, r7
002884  63480fea  loadli.w r16,  -2812(r30)
002888  8be17118  sub.f.rn r3, r3, r7
00288c  8be57518  sub.f.rn r11, r11, r7
002890  0b667618  sub.f.rn r12, r12, r7
002894  8be67618  sub.f.rn r13, r13, r7
002898  0b677718  sub.f.rn r14, r14, r7
00289c  8be77718  sub.f.rn r15, r15, r7
0028a0  0b617118  sub.f.rn r2, r2, r7
0028a4  0b627218  sub.f.rn r4, r4, r7
0028a8  0b637318  sub.f.rn r6, r6, r7
0028ac  0b647418  sub.f.rn r8, r8, r7
0028b0  8be47418  sub.f.rn r9, r9, r7
0028b4  0b657518  sub.f.rn r10, r10, r7
0028b8  8b697818  sub.f.rn r19, r16, r7
0028bc  8bea1020  mul.f.rn r21, r1, r1
0028c0  8be05220  mul.f.rn r1, r5, r5
0028c4  0b684220  mul.f.rn r16, r4, r4
0028c8  8b628420  mul.f.rn r5, r8, r8
0028cc  8be39420  mul.f.rn r7, r9, r9
0028d0  8b64a520  mul.f.rn r9, r10, r10
0028d4  0b6c2120  mul.f.rn r24, r2, r2
0028d8  8be13120  mul.f.rn r3, r3, r3
0028dc  0b626320  mul.f.rn r4, r6, r6
0028e0  1f040ff4  addli r8, r30, -1536
0028e4  8be5b520  mul.f.rn r11, r11, r11
0028e8  0b66c620  mul.f.rn r12, r12, r12
0028ec  8be6d620  mul.f.rn r13, r13, r13
0028f0  0b67e720  mul.f.rn r14, r14, r14
0028f4  8be7f720  mul.f.rn r15, r15, r15
0028f8  8be81821  mul.f.rn r17, r17, r17
0028fc  8be93921  mul.f.rn r19, r19, r19
002900  1f850000  addli r10, r1, 0
002904  e3407fe5  loadli.w r1,  -3396(r30)
002908  63019fea  loadli.w r2,  -2744(r30)
00290c  e30dffeb  loadli.w r27,  -2568(r30)
002910  2b03807f  lui r6, 522240
002914  1f0d4000  addli r26, zero, 32
002918  8b902010  add.s r1, r1, r2
00291c  e7001fe6  storeli.w r1, -3320(r30)
002920  e3007fe5  loadli.w r1,  -3400(r30)
002924  8b902010  add.s r1, r1, r2
002928  67401fe6  storeli.w r1, -3324(r30)
00292c  e3406fe5  loadli.w r1,  -3404(r30)
002930  8b902010  add.s r1, r1, r2
002934  67001fe6  storeli.w r1, -3328(r30)
002938  e3006fe5  loadli.w r1,  -3408(r30)
00293c  8b902010  add.s r1, r1, r2
002940  e74f1fe4  storeli.w r1, -3332(r30)
002944  e3405fe5  loadli.w r1,  -3412(r30)
002948  8b902010  add.s r1, r1, r2
00294c  e70f1fe4  storeli.w r1, -3336(r30)
002950  e3005fe5  loadli.w r1,  -3416(r30)
002954  8b902010  add.s r1, r1, r2
002958  674f1fe4  storeli.w r1, -3340(r30)
00295c  e3404fe5  loadli.w r1,  -3420(r30)
002960  8b902010  add.s r1, r1, r2
002964  670f1fe4  storeli.w r1, -3344(r30)
002968  e3004fe5  loadli.w r1,  -3424(r30)
00296c  8b902010  add.s r1, r1, r2
002970  e74e1fe4  storeli.w r1, -3348(r30)
002974  e3403fe5  loadli.w r1,  -3428(r30)
002978  8b902010  add.s r1, r1, r2
00297c  e70e1fe4  storeli.w r1, -3352(r30)
002980  e3003fe5  loadli.w r1,  -3432(r30)
002984  8b902010  add.s r1, r1, r2
002988  674e1fe4  storeli.w r1, -3356(r30)
00298c  e3402fe5  loadli.w r1,  -3436(r30)
002990  8b902010  add.s r1, r1, r2
002994  670e1fe4  storeli.w r1, -3360(r30)
002998  e3002fe5  loadli.w r1,  -3440(r30)
00299c  8b902010  add.s r1, r1, r2
0029a0  e7401fe6  storeli.w r1, -3316(r30)
0029a4  e3401fe5  loadli.w r1,  -3444(r30)
0029a8  8b902010  add.s r1, r1, r2
0029ac  67011fe6  storeli.w r1, -3312(r30)
0029b0  e3001fe5  loadli.w r1,  -3448(r30)
0029b4  8b902010  add.s r1, r1, r2
0029b8  67411fe6  storeli.w r1, -3308(r30)
0029bc  e3400fe5  loadli.w r1,  -3452(r30)
0029c0  8b902010  add.s r1, r1, r2
0029c4  e7011fe6  storeli.w r1, -3304(r30)
0029c8  e340cfe4  loadli.w r1,  -3484(r30)
0029cc  8b902010  add.s r1, r1, r2
0029d0  e7411fe6  storeli.w r1, -3300(r30)
0029d4  e340bfe4  loadli.w r1,  -3492(r30)
0029d8  8b902010  add.s r1, r1, r2
0029dc  67021fe6  storeli.w r1, -3296(r30)
0029e0  e300bfe4  loadli.w r1,  -3496(r30)
0029e4  8b902010  add.s r1, r1, r2
0029e8  67421fe6  storeli.w r1, -3292(r30)
0029ec  e340afe4  loadli.w r1,  -3500(r30)
0029f0  8b902010  add.s r1, r1, r2
0029f4  e7021fe6  storeli.w r1, -3288(r30)
0029f8  e300afe4  loadli.w r1,  -3504(r30)
0029fc  8b902010  add.s r1, r1, r2
002a00  e7421fe6  storeli.w r1, -3284(r30)
002a04  e3409fe4  loadli.w r1,  -3508(r30)
002a08  8b902010  add.s r1, r1, r2
002a0c  67031fe6  storeli.w r1, -3280(r30)
002a10  e3009fe4  loadli.w r1,  -3512(r30)
002a14  8b902010  add.s r1, r1, r2
002a18  67431fe6  storeli.w r1, -3276(r30)
002a1c  e3408fe4  loadli.w r1,  -3516(r30)
002a20  8b902010  add.s r1, r1, r2
002a24  e7031fe6  storeli.w r1, -3272(r30)
002a28  e3008fe4  loadli.w r1,  -3520(r30)
002a2c  8b902010  add.s r1, r1, r2
002a30  e7431fe6  storeli.w r1, -3268(r30)
002a34  e3407fe4  loadli.w r1,  -3524(r30)
002a38  8b902010  add.s r1, r1, r2
002a3c  67041fe6  storeli.w r1, -3264(r30)
002a40  e3007fe4  loadli.w r1,  -3528(r30)
002a44  8b902010  add.s r1, r1, r2
002a48  67441fe6  storeli.w r1, -3260(r30)
002a4c  e3406fe4  loadli.w r1,  -3532(r30)
002a50  8b902010  add.s r1, r1, r2
002a54  e7041fe6  storeli.w r1, -3256(r30)
002a58  e3006fe4  loadli.w r1,  -3536(r30)
002a5c  8b902010  add.s r1, r1, r2
002a60  e7441fe6  storeli.w r1, -3252(r30)
002a64  e3405fe4  loadli.w r1,  -3540(r30)
002a68  8b902010  add.s r1, r1, r2
002a6c  67051fe6  storeli.w r1, -3248(r30)
002a70  e3005fe4  loadli.w r1,  -3544(r30)
002a74  8b902010  add.s r1, r1, r2
002a78  67451fe6  storeli.w r1, -3244(r30)
002a7c  e3404fe4  loadli.w r1,  -3548(r30)
002a80  8b902010  add.s r1, r1, r2
002a84  e7051fe6  storeli.w r1, -3240(r30)
002a88  e3004fe4  loadli.w r1,  -3552(r30)
002a8c  8b902010  add.s r1, r1, r2
002a90  e7451fe6  storeli.w r1, -3236(r30)
002a94  e3403fe4  loadli.w r1,  -3556(r30)
002a98  8b902010  add.s r1, r1, r2
002a9c  67061fe6  storeli.w r1, -3232(r30)
002aa0  e3003fe4  loadli.w r1,  -3560(r30)
002aa4  8b902010  add.s r1, r1, r2
002aa8  67461fe6  storeli.w r1, -3228(r30)
002aac  e3402fe4  loadli.w r1,  -3564(r30)
002ab0  8b902010  add.s r1, r1, r2
002ab4  e7061fe6  storeli.w r1, -3224(r30)
002ab8  e3002fe4  loadli.w r1,  -3568(r30)
002abc  8b902010  add.s r1, r1, r2
002ac0  e7461fe6  storeli.w r1, -3220(r30)
002ac4  e3401fe4  loadli.w r1,  -3572(r30)
002ac8  8b902010  add.s r1, r1, r2
002acc  67071fe6  storeli.w r1, -3216(r30)
002ad0  e3001fe4  loadli.w r1,  -3576(r30)
002ad4  8b902010  add.s r1, r1, r2
002ad8  67471fe6  storeli.w r1, -3212(r30)
002adc  e3400fe4  loadli.w r1,  -3580(r30)
002ae0  8b902010  add.s r1, r1, r2
002ae4  e7071fe6  storeli.w r1, -3208(r30)
002ae8  e3000fe4  loadli.w r1,  -3584(r30)
002aec  8b902010  add.s r1, r1, r2
002af0  e7471fe6  storeli.w r1, -3204(r30)
002af4  e340ffe3  loadli.w r1,  -3588(r30)
002af8  8b902010  add.s r1, r1, r2
002afc  67081fe6  storeli.w r1, -3200(r30)
002b00  e300ffe3  loadli.w r1,  -3592(r30)
002b04  8b902010  add.s r1, r1, r2
002b08  67481fe6  storeli.w r1, -3196(r30)
002b0c  e340efe3  loadli.w r1,  -3596(r30)
002b10  8b902010  add.s r1, r1, r2
002b14  e7081fe6  storeli.w r1, -3192(r30)
002b18  e300efe3  loadli.w r1,  -3600(r30)
002b1c  8b902010  add.s r1, r1, r2
002b20  e7481fe6  storeli.w r1, -3188(r30)
002b24  e340dfe3  loadli.w r1,  -3604(r30)
002b28  8b902010  add.s r1, r1, r2
002b2c  67091fe6  storeli.w r1, -3184(r30)
002b30  e300dfe3  loadli.w r1,  -3608(r30)
002b34  8b902010  add.s r1, r1, r2
002b38  67491fe6  storeli.w r1, -3180(r30)
002b3c  e340cfe3  loadli.w r1,  -3612(r30)
002b40  8b902010  add.s r1, r1, r2
002b44  e7091fe6  storeli.w r1, -3176(r30)
002b48  e300cfe3  loadli.w r1,  -3616(r30)
002b4c  8b902010  add.s r1, r1, r2
002b50  e7491fe6  storeli.w r1, -3172(r30)
002b54  e340bfe3  loadli.w r1,  -3620(r30)
002b58  8b902010  add.s r1, r1, r2
002b5c  670a1fe6  storeli.w r1, -3168(r30)
002b60  e300bfe3  loadli.w r1,  -3624(r30)
002b64  8b902010  add.s r1, r1, r2
002b68  674a1fe6  storeli.w r1, -3164(r30)
002b6c  e340afe3  loadli.w r1,  -3628(r30)
002b70  8b902010  add.s r1, r1, r2
002b74  e70a1fe6  storeli.w r1, -3160(r30)
002b78  e300afe3  loadli.w r1,  -3632(r30)
002b7c  8b902010  add.s r1, r1, r2
002b80  e74a1fe6  storeli.w r1, -3156(r30)
002b84  e3409fe3  loadli.w r1,  -3636(r30)
002b88  8b902010  add.s r1, r1, r2
002b8c  670b1fe6  storeli.w r1, -3152(r30)
002b90  e3009fe3  loadli.w r1,  -3640(r30)
002b94  8b902010  add.s r1, r1, r2
002b98  674b1fe6  storeli.w r1, -3148(r30)
002b9c  e3408fe3  loadli.w r1,  -3644(r30)
002ba0  8b902010  add.s r1, r1, r2
002ba4  e70b1fe6  storeli.w r1, -3144(r30)
002ba8  e3008fe3  loadli.w r1,  -3648(r30)
002bac  8b902010  add.s r1, r1, r2
002bb0  e74b1fe6  storeli.w r1, -3140(r30)
002bb4  e3407fe3  loadli.w r1,  -3652(r30)
002bb8  8b902010  add.s r1, r1, r2
002bbc  670c1fe6  storeli.w r1, -3136(r30)
002bc0  e3007fe3  loadli.w r1,  -3656(r30)
002bc4  8b902010  add.s r1, r1, r2
002bc8  674c1fe6  storeli.w r1, -3132(r30)
002bcc  e3406fe3  loadli.w r1,  -3660(r30)
002bd0  8b902010  add.s r1, r1, r2
002bd4  e70c1fe6  storeli.w r1, -3128(r30)
002bd8  e3006fe3  loadli.w r1,  -3664(r30)
002bdc  8b902010  add.s r1, r1, r2
002be0  e74c1fe6  storeli.w r1, -3124(r30)
002be4  e3405fe3  loadli.w r1,  -3668(r30)
002be8  8b902010  add.s r1, r1, r2
002bec  670d1fe6  storeli.w r1, -3120(r30)
002bf0  e3005fe3  loadli.w r1,  -3672(r30)
002bf4  8b902010  add.s r1, r1, r2
002bf8  674d1fe6  storeli.w r1, -3116(r30)
002bfc  e3404fe3  loadli.w r1,  -3676(r30)
002c00  8b902010  add.s r1, r1, r2
002c04  e70d1fe6  storeli.w r1, -3112(r30)
002c08  e3004fe3  loadli.w r1,  -3680(r30)
002c0c  8b902010  add.s r1, r1, r2
002c10  e74d1fe6  storeli.w r1, -3108(r30)
002c14  e3403fe3  loadli.w r1,  -3684(r30)
002c18  8b902010  add.s r1, r1, r2
002c1c  670e1fe6  storeli.w r1, -3104(r30)
002c20  e3003fe3  loadli.w r1,  -3688(r30)
002c24  8b902010  add.s r1, r1, r2
002c28  674e1fe6  storeli.w r1, -3100(r30)
002c2c  e3402fe3  loadli.w r1,  -3692(r30)
002c30  8b902010  add.s r1, r1, r2
002c34  e70e1fe6  storeli.w r1, -3096(r30)
002c38  e3002fe3  loadli.w r1,  -3696(r30)
002c3c  8b902010  add.s r1, r1, r2
002c40  e74e1fe6  storeli.w r1, -3092(r30)
002c44  e3401fe3  loadli.w r1,  -3700(r30)
002c48  8b902010  add.s r1, r1, r2
002c4c  670f1fe6  storeli.w r1, -3088(r30)
002c50  e3001fe3  loadli.w r1,  -3704(r30)
002c54  8b902010  add.s r1, r1, r2
002c58  674f1fe6  storeli.w r1, -3084(r30)
002c5c  e3400fe3  loadli.w r1,  -3708(r30)
002c60  8b902010  add.s r1, r1, r2
002c64  e70f1fe6  storeli.w r1, -3080(r30)
002c68  e3000fe3  loadli.w r1,  -3712(r30)
002c6c  8b902010  add.s r1, r1, r2
002c70  e74f1fe6  storeli.w r1, -3076(r30)
002c74  e340ffe2  loadli.w r1,  -3716(r30)
002c78  8b902010  add.s r1, r1, r2
002c7c  67001fe8  storeli.w r1, -3072(r30)
002c80  e300ffe2  loadli.w r1,  -3720(r30)
002c84  8b902010  add.s r1, r1, r2
002c88  67401fe8  storeli.w r1, -3068(r30)
002c8c  e340efe2  loadli.w r1,  -3724(r30)
002c90  8b902010  add.s r1, r1, r2
002c94  e7001fe8  storeli.w r1, -3064(r30)
002c98  e300efe2  loadli.w r1,  -3728(r30)
002c9c  8b902010  add.s r1, r1, r2
002ca0  e7401fe8  storeli.w r1, -3060(r30)
002ca4  e340dfe2  loadli.w r1,  -3732(r30)
002ca8  8b902010  add.s r1, r1, r2
002cac  67011fe8  storeli.w r1, -3056(r30)
002cb0  e300dfe2  loadli.w r1,  -3736(r30)
002cb4  8b902010  add.s r1, r1, r2
002cb8  67411fe8  storeli.w r1, -3052(r30)
002cbc  e340cfe2  loadli.w r1,  -3740(r30)
002cc0  8b902010  add.s r1, r1, r2
002cc4  e7011fe8  storeli.w r1, -3048(r30)
002cc8  e300cfe2  loadli.w r1,  -3744(r30)
002ccc  8b902010  add.s r1, r1, r2
002cd0  e7411fe8  storeli.w r1, -3044(r30)
002cd4  e340bfe2  loadli.w r1,  -3748(r30)
002cd8  8b902010  add.s r1, r1, r2
002cdc  67021fe8  storeli.w r1, -3040(r30)
002ce0  e300bfe2  loadli.w r1,  -3752(r30)
002ce4  8b902010  add.s r1, r1, r2
002ce8  67421fe8  storeli.w r1, -3036(r30)
002cec  e340afe2  loadli.w r1,  -3756(r30)
002cf0  8b902010  add.s r1, r1, r2
002cf4  e7021fe8  storeli.w r1, -3032(r30)
002cf8  e300afe2  loadli.w r1,  -3760(r30)
002cfc  8b902010  add.s r1, r1, r2
002d00  e7421fe8  storeli.w r1, -3028(r30)
002d04  e3409fe2  loadli.w r1,  -3764(r30)
002d08  8b902010  add.s r1, r1, r2
002d0c  67031fe8  storeli.w r1, -3024(r30)
002d10  e3009fe2  loadli.w r1,  -3768(r30)
002d14  8b902010  add.s r1, r1, r2
002d18  67431fe8  storeli.w r1, -3020(r30)
002d1c  e3408fe2  loadli.w r1,  -3772(r30)
002d20  8b902010  add.s r1, r1, r2
002d24  e7031fe8  storeli.w r1, -3016(r30)
002d28  e3008fe2  loadli.w r1,  -3776(r30)
002d2c  8b902010  add.s r1, r1, r2
002d30  e7431fe8  storeli.w r1, -3012(r30)
002d34  e3407fe2  loadli.w r1,  -3780(r30)
002d38  8b902010  add.s r1, r1, r2
002d3c  67041fe8  storeli.w r1, -3008(r30)
002d40  e3007fe2  loadli.w r1,  -3784(r30)
002d44  8b902010  add.s r1, r1, r2
002d48  67441fe8  storeli.w r1, -3004(r30)
002d4c  e3406fe2  loadli.w r1,  -3788(r30)
002d50  8b902010  add.s r1, r1, r2
002d54  e7041fe8  storeli.w r1, -3000(r30)
002d58  e3006fe2  loadli.w r1,  -3792(r30)
002d5c  8b902010  add.s r1, r1, r2
002d60  e7441fe8  storeli.w r1, -2996(r30)
002d64  e3405fe2  loadli.w r1,  -3796(r30)
002d68  8b902010  add.s r1, r1, r2
002d6c  67051fe8  storeli.w r1, -2992(r30)
002d70  e3005fe2  loadli.w r1,  -3800(r30)
002d74  8b902010  add.s r1, r1, r2
002d78  67451fe8  storeli.w r1, -2988(r30)
002d7c  e3404fe2  loadli.w r1,  -3804(r30)
002d80  8b902010  add.s r1, r1, r2
002d84  e7051fe8  storeli.w r1, -2984(r30)
002d88  e3004fe2  loadli.w r1,  -3808(r30)
002d8c  8b902010  add.s r1, r1, r2
002d90  e7451fe8  storeli.w r1, -2980(r30)
002d94  e3403fe2  loadli.w r1,  -3812(r30)
002d98  8b902010  add.s r1, r1, r2
002d9c  67061fe8  storeli.w r1, -2976(r30)
002da0  e3003fe2  loadli.w r1,  -3816(r30)
002da4  8b902010  add.s r1, r1, r2
002da8  67461fe8  storeli.w r1, -2972(r30)
002dac  e3402fe2  loadli.w r1,  -3820(r30)
002db0  8b902010  add.s r1, r1, r2
002db4  e7061fe8  storeli.w r1, -2968(r30)
002db8  e3002fe2  loadli.w r1,  -3824(r30)
002dbc  8b902010  add.s r1, r1, r2
002dc0  e7461fe8  storeli.w r1, -2964(r30)
002dc4  e3401fe2  loadli.w r1,  -3828(r30)
002dc8  8b902010  add.s r1, r1, r2
002dcc  67071fe8  storeli.w r1, -2960(r30)
002dd0  e3001fe2  loadli.w r1,  -3832(r30)
002dd4  8b902010  add.s r1, r1, r2
002dd8  67471fe8  storeli.w r1, -2956(r30)
002ddc  e3400fe2  loadli.w r1,  -3836(r30)
002de0  8b902010  add.s r1, r1, r2
002de4  e7071fe8  storeli.w r1, -2952(r30)
002de8  e3000fe2  loadli.w r1,  -3840(r30)
002dec  8b902010  add.s r1, r1, r2
002df0  e7471fe8  storeli.w r1, -2948(r30)
002df4  e340ffe1  loadli.w r1,  -3844(r30)
002df8  8b902010  add.s r1, r1, r2
002dfc  67081fe8  storeli.w r1, -2944(r30)
002e00  e300ffe1  loadli.w r1,  -3848(r30)
002e04  8b902010  add.s r1, r1, r2
002e08  67481fe8  storeli.w r1, -2940(r30)
002e0c  e340efe1  loadli.w r1,  -3852(r30)
002e10  8b902010  add.s r1, r1, r2
002e14  e7081fe8  storeli.w r1, -2936(r30)
002e18  e300efe1  loadli.w r1,  -3856(r30)
002e1c  8b902010  add.s r1, r1, r2
002e20  e7481fe8  storeli.w r1, -2932(r30)
002e24  e340dfe1  loadli.w r1,  -3860(r30)
002e28  8b902010  add.s r1, r1, r2
002e2c  67091fe8  storeli.w r1, -2928(r30)
002e30  e300dfe1  loadli.w r1,  -3864(r30)
002e34  8b902010  add.s r1, r1, r2
002e38  67491fe8  storeli.w r1, -2924(r30)
002e3c  e340cfe1  loadli.w r1,  -3868(r30)
002e40  8b902010  add.s r1, r1, r2
002e44  e7091fe8  storeli.w r1, -2920(r30)
002e48  e300cfe1  loadli.w r1,  -3872(r30)
002e4c  8b902010  add.s r1, r1, r2
002e50  e7491fe8  storeli.w r1, -2916(r30)
002e54  e340bfe1  loadli.w r1,  -3876(r30)
002e58  8b902010  add.s r1, r1, r2
002e5c  670a1fe8  storeli.w r1, -2912(r30)
002e60  e300bfe1  loadli.w r1,  -3880(r30)
002e64  8b902010  add.s r1, r1, r2
002e68  674a1fe8  storeli.w r1, -2908(r30)
002e6c  e340afe1  loadli.w r1,  -3884(r30)
002e70  8b902010  add.s r1, r1, r2
002e74  e70a1fe8  storeli.w r1, -2904(r30)
002e78  e300afe1  loadli.w r1,  -3888(r30)
002e7c  8b902010  add.s r1, r1, r2
002e80  e74a1fe8  storeli.w r1, -2900(r30)
002e84  e3409fe1  loadli.w r1,  -3892(r30)
002e88  8b902010  add.s r1, r1, r2
002e8c  670b1fe8  storeli.w r1, -2896(r30)
002e90  e3009fe1  loadli.w r1,  -3896(r30)
002e94  8b902010  add.s r1, r1, r2
002e98  674b1fe8  storeli.w r1, -2892(r30)
002e9c  e3408fe1  loadli.w r1,  -3900(r30)
002ea0  8b902010  add.s r1, r1, r2
002ea4  e74b1fe8  storeli.w r1, -2884(r30)
002ea8  e3008fe1  loadli.w r1,  -3904(r30)
002eac  8b902010  add.s r1, r1, r2
002eb0  e70b1fe8  storeli.w r1, -2888(r30)
002eb4  e3407fe1  loadli.w r1,  -3908(r30)
002eb8  8b902010  add.s r1, r1, r2
002ebc  670c1fe8  storeli.w r1, -2880(r30)
002ec0  e3007fe1  loadli.w r1,  -3912(r30)
002ec4  8b902010  add.s r1, r1, r2
002ec8  674c1fe8  storeli.w r1, -2876(r30)
002ecc  e3406fe1  loadli.w r1,  -3916(r30)
002ed0  8b902010  add.s r1, r1, r2
002ed4  e70c1fe8  storeli.w r1, -2872(r30)
002ed8  e3006fe1  loadli.w r1,  -3920(r30)
002edc  8b902010  add.s r1, r1, r2
002ee0  e74c1fe8  storeli.w r1, -2868(r30)
002ee4  e3405fe1  loadli.w r1,  -3924(r30)
002ee8  8b902010  add.s r1, r1, r2
002eec  670d1fe8  storeli.w r1, -2864(r30)
002ef0  e3005fe1  loadli.w r1,  -3928(r30)
002ef4  8b902010  add.s r1, r1, r2
002ef8  674d1fe8  storeli.w r1, -2860(r30)
002efc  e3404fe1  loadli.w r1,  -3932(r30)
002f00  8b902010  add.s r1, r1, r2
002f04  e70d1fe8  storeli.w r1, -2856(r30)
002f08  db170000  j 188
002f0c  9f000000  addli r1, zero, 0
002f10  1f010000  addli r2, zero, 0
002f14  1f020000  addli r4, zero, 0
002f18  9f020000  addli r5, zero, 0
002f1c  9f050000  addli r11, zero, 0
002f20  1f060000  addli r12, zero, 0
002f24  9f060000  addli r13, zero, 0
002f28  1f070000  addli r14, zero, 0
002f2c  9f070000  addli r15, zero, 0
002f30  9f080000  addli r17, zero, 0
002f34  9f090000  addli r19, zero, 0
002f38  1f0a0000  addli r20, zero, 0
002f3c  1f0b0000  addli r22, zero, 0
002f40  1f0e0000  addli r28, zero, 0
002f44  9f0b0000  addli r23, zero, 0
002f48  9f0c0000  addli r25, zero, 0
002f4c  8be14110  add.f.rn r3, r3, r4
002f50  63020feb  loadli.w r4,  -2688(r30)
002f54  e303efea  loadli.w r7,  -2704(r30)
002f58  e344dfea  loadli.w r9,  -2708(r30)
002f5c  0b685810  add.f.rn r16, r16, r5
002f60  e302ffea  loadli.w r5,  -2696(r30)
002f64  0b65b510  add.f.rn r10, r10, r11
002f68  e305dfea  loadli.w r11,  -2712(r30)
002f6c  8bea1a10  add.f.rn r21, r21, r1
002f70  0b6c2c10  add.f.rn r24, r24, r2
002f74  634d9fea  loadli.w r26,  -2740(r30)
002f78  0b62c210  add.f.rn r4, r4, r12
002f7c  6346cfea  loadli.w r12,  -2716(r30)
002f80  8be2d210  add.f.rn r5, r5, r13
002f84  e306cfea  loadli.w r13,  -2720(r30)
002f88  8be3e310  add.f.rn r7, r7, r14
002f8c  6347bfea  loadli.w r14,  -2724(r30)
002f90  8be4f410  add.f.rn r9, r9, r15
002f94  e307bfea  loadli.w r15,  -2728(r30)
002f98  8be51511  add.f.rn r11, r11, r17
002f9c  e348afea  loadli.w r17,  -2732(r30)
002fa0  1f0d4d00  addli r26, r26, 32
002fa4  0b663611  add.f.rn r12, r12, r19
002fa8  e309afea  loadli.w r19,  -2736(r30)
002fac  8be64611  add.f.rn r13, r13, r20
002fb0  0b676711  add.f.rn r14, r14, r22
002fb4  8be7c711  add.f.rn r15, r15, r28
002fb8  8be87811  add.f.rn r17, r17, r23
002fbc  8be99911  add.f.rn r19, r19, r25
002fc0  b7692d03  beq r26, r18, 1656
002fc4  e7075fea  storeli.w r5, -2696(r30)
002fc8  8b12a411  add.s r5, r8, r26
002fcc  e7469fea  storeli.w r9, -2708(r30)
002fd0  92303002  vadd.s.mz vr1{mr1}, zero, vr3
002fd4  1f110000  addli r2, zero, 1
002fd8  e706bfea  storeli.w r11, -2712(r30)
002fdc  67053feb  storeli.w r19, -2736(r30)
002fe0  67451feb  storeli.w r17, -2732(r30)
002fe4  e705ffea  storeli.w r15, -2728(r30)
002fe8  e745efea  storeli.w r14, -2724(r30)
002fec  6706dfea  storeli.w r13, -2720(r30)
002ff0  6746cfea  storeli.w r12, -2716(r30)
002ff4  67084fea  storeli.w r4, -2688(r30)
002ff8  67077fea  storeli.w r7, -2704(r30)
002ffc  12313002  vadd.s.mz vr2{mr1}, zero, vr3
003000  ebb40200  load.hu r9, 0(r5)
003004  7e0101e0  vmmov mr2, r2
003008  ebb52200  load.hu r11, 2(r5)
00300c  6bb2a201  load.hu r4, 26(r5)
003010  ebb0c201  load.hu r1, 28(r5)
003014  6bb64200  load.hu r12, 4(r5)
003018  ebb66200  load.hu r13, 6(r5)
00301c  6bb78200  load.hu r14, 8(r5)
003020  ebb7a200  load.hu r15, 10(r5)
003024  ebb8c200  load.hu r17, 12(r5)
003028  ebb9e200  load.hu r19, 14(r5)
00302c  6bba0201  load.hu r20, 16(r5)
003030  6bbb2201  load.hu r22, 18(r5)
003034  ebbb4201  load.hu r23, 20(r5)
003038  ebbc6201  load.hu r25, 22(r5)
00303c  6bbe8201  load.hu r28, 24(r5)
003040  ebb2e201  load.hu r5, 30(r5)
003044  1f210000  addli r2, zero, 2
003048  fe0101e0  vmmov mr3, r2
00304c  1f410000  addli r2, zero, 4
003050  b3940418  bfloat2float.rn r9, r9
003054  33120218  bfloat2float.rn r4, r4
003058  b3900018  bfloat2float.rn r1, r1
00305c  7e0001e0  vmmov mr0, r2
003060  1f011000  addli r2, zero, 8
003064  eaa01434  vor.u.mh vr1{mr2}, r9, vr1
003068  b3940518  bfloat2float.rn r9, r11
00306c  eaa01436  vor.u.mh vr1{mr3}, r9, vr1
003070  b3140618  bfloat2float.rn r9, r12
003074  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
003078  b3940618  bfloat2float.rn r9, r13
00307c  7e0001e0  vmmov mr0, r2
003080  1f012000  addli r2, zero, 16
003084  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
003088  b3140718  bfloat2float.rn r9, r14
00308c  7e0001e0  vmmov mr0, r2
003090  1f014000  addli r2, zero, 32
003094  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
003098  b3940718  bfloat2float.rn r9, r15
00309c  7e0001e0  vmmov mr0, r2
0030a0  1f018000  addli r2, zero, 64
0030a4  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
0030a8  b3940818  bfloat2float.rn r9, r17
0030ac  7e0001e0  vmmov mr0, r2
0030b0  1f010001  addli r2, zero, 128
0030b4  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
0030b8  b3940918  bfloat2float.rn r9, r19
0030bc  7e0001e0  vmmov mr0, r2
0030c0  1f010002  addli r2, zero, 256
0030c4  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
0030c8  b3140a18  bfloat2float.rn r9, r20
0030cc  7e0001e0  vmmov mr0, r2
0030d0  1f010004  addli r2, zero, 512
0030d4  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
0030d8  b3140b18  bfloat2float.rn r9, r22
0030dc  7e0001e0  vmmov mr0, r2
0030e0  1f010008  addli r2, zero, 1024
0030e4  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
0030e8  b3940b18  bfloat2float.rn r9, r23
0030ec  7e0001e0  vmmov mr0, r2
0030f0  1f010010  addli r2, zero, 2048
0030f4  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
0030f8  b3940c18  bfloat2float.rn r9, r25
0030fc  7e0001e0  vmmov mr0, r2
003100  1f010020  addli r2, zero, 4096
003104  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
003108  b3140e18  bfloat2float.rn r9, r28
00310c  7e0001e0  vmmov mr0, r2
003110  1f010040  addli r2, zero, 8192
003114  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
003118  7e0001e0  vmmov mr0, r2
00311c  2b410000  lui r2, 4
003120  ea201230  vor.u.mh vr1{mr0}, r4, vr1
003124  7e0001e0  vmmov mr0, r2
003128  1f010ff6  addli r2, r30, -1280
00312c  0b12a111  add.s r4, r2, r26
003130  2b810000  lui r2, 8
003134  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
003138  b3900218  bfloat2float.rn r1, r5
00313c  7e0001e0  vmmov mr0, r2
003140  e744afeb  storeli.w r26, -2740(r30)
003144  1f410000  addli r2, zero, 4
003148  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00314c  eb300200  load.hu r1, 0(r4)
003150  eb322200  load.hu r5, 2(r4)
003154  eb344200  load.hu r9, 4(r4)
003158  eb356200  load.hu r11, 6(r4)
00315c  6b368200  load.hu r12, 8(r4)
003160  eb36a200  load.hu r13, 10(r4)
003164  6b37c200  load.hu r14, 12(r4)
003168  eb37e200  load.hu r15, 14(r4)
00316c  eb380201  load.hu r17, 16(r4)
003170  eb392201  load.hu r19, 18(r4)
003174  6b3a4201  load.hu r20, 20(r4)
003178  6b3b6201  load.hu r22, 22(r4)
00317c  eb3b8201  load.hu r23, 24(r4)
003180  eb3ca201  load.hu r25, 26(r4)
003184  6b3ec201  load.hu r28, 28(r4)
003188  6b32e201  load.hu r4, 30(r4)
00318c  b3900018  bfloat2float.rn r1, r1
003190  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003194  b3900218  bfloat2float.rn r1, r5
003198  7e0101e0  vmmov mr2, r2
00319c  1f011000  addli r2, zero, 8
0031a0  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0031a4  b3900418  bfloat2float.rn r1, r9
0031a8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0031ac  b3900518  bfloat2float.rn r1, r11
0031b0  7e0101e0  vmmov mr2, r2
0031b4  1f012000  addli r2, zero, 16
0031b8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0031bc  b3100618  bfloat2float.rn r1, r12
0031c0  7e0101e0  vmmov mr2, r2
0031c4  1f014000  addli r2, zero, 32
0031c8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0031cc  b3900618  bfloat2float.rn r1, r13
0031d0  7e0101e0  vmmov mr2, r2
0031d4  1f018000  addli r2, zero, 64
0031d8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0031dc  b3100718  bfloat2float.rn r1, r14
0031e0  7e0101e0  vmmov mr2, r2
0031e4  1f010001  addli r2, zero, 128
0031e8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0031ec  b3900718  bfloat2float.rn r1, r15
0031f0  7e0101e0  vmmov mr2, r2
0031f4  1f010002  addli r2, zero, 256
0031f8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0031fc  b3900818  bfloat2float.rn r1, r17
003200  7e0101e0  vmmov mr2, r2
003204  1f010004  addli r2, zero, 512
003208  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00320c  b3900918  bfloat2float.rn r1, r19
003210  7e0101e0  vmmov mr2, r2
003214  1f010008  addli r2, zero, 1024
003218  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00321c  b3100a18  bfloat2float.rn r1, r20
003220  7e0101e0  vmmov mr2, r2
003224  1f010010  addli r2, zero, 2048
003228  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00322c  b3100b18  bfloat2float.rn r1, r22
003230  7e0101e0  vmmov mr2, r2
003234  1f010020  addli r2, zero, 4096
003238  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00323c  b3900b18  bfloat2float.rn r1, r23
003240  7e0101e0  vmmov mr2, r2
003244  1f010040  addli r2, zero, 8192
003248  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00324c  b3900c18  bfloat2float.rn r1, r25
003250  7e0101e0  vmmov mr2, r2
003254  2b410000  lui r2, 4
003258  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00325c  b3100e18  bfloat2float.rn r1, r28
003260  7e0101e0  vmmov mr2, r2
003264  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
003268  b3100218  bfloat2float.rn r1, r4
00326c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003270  9f000fec  addli r1, r30, -2560
003274  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
003278  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00327c  00a00000  mfence { lm }
003280  e30c0fec  loadli.w r25,  -2560(r30)
003284  e34b0fec  loadli.w r23,  -2556(r30)
003288  630a1fec  loadli.w r20,  -2552(r30)
00328c  63471fec  loadli.w r14,  -2548(r30)
003290  e3082fec  loadli.w r17,  -2544(r30)
003294  e3422fec  loadli.w r5,  -2540(r30)
003298  63023fec  loadli.w r4,  -2536(r30)
00329c  e3463fec  loadli.w r13,  -2532(r30)
0032a0  e3044fec  loadli.w r9,  -2528(r30)
0032a4  e3454fec  loadli.w r11,  -2524(r30)
0032a8  e343ffeb  loadli.w r7,  -2564(r30)
0032ac  e3075fec  loadli.w r15,  -2520(r30)
0032b0  634b5fec  loadli.w r22,  -2516(r30)
0032b4  97807c00  and r1, r25, r7
0032b8  130d1304  setlt.u r26, r6, r1
0032bc  e3006fec  loadli.w r1,  -2512(r30)
0032c0  634e6fec  loadli.w r28,  -2508(r30)
0032c4  e3097fec  loadli.w r19,  -2504(r30)
0032c8  63467fec  loadli.w r12,  -2500(r30)
0032cc  3b700d00  bneq r26, zero, 28
0032d0  1bcd0c01  srli r26, r25, 16
0032d4  2b014000  lui r2, 1024
0032d8  1b0d1d00  andi r26, r26, 1
0032dc  8b9cac11  add.s r25, r25, r26
0032e0  0b9dbc11  add.s r26, r25, r27
0032e4  db010000  j 12
0032e8  2b014000  lui r2, 1024
0032ec  179d2c00  or r26, r25, r2
0032f0  978c7b00  and r25, r23, r7
0032f4  930c9305  setlt.u r25, r6, r25
0032f8  3be00c00  bneq r25, zero, 24
0032fc  9bcc0b01  srli r25, r23, 16
003300  9b8c1c00  andi r25, r25, 1
003304  8b9b9b11  add.s r23, r23, r25
003308  8b9cbb11  add.s r25, r23, r27
00330c  5b010000  j 8
003310  979c2b00  or r25, r23, r2
003314  970b7a00  and r23, r20, r7
003318  930b7305  setlt.u r23, r6, r23
00331c  3be00b00  bneq r23, zero, 24
003320  9b4b0a01  srli r23, r20, 16
003324  9b8b1b00  andi r23, r23, 1
003328  0b1a7a11  add.s r20, r20, r23
00332c  8b1bba11  add.s r23, r20, r27
003330  5b010000  j 8
003334  971b2a00  or r23, r20, r2
003338  170a7700  and r20, r14, r7
00333c  130a4305  setlt.u r20, r6, r20
003340  3b600a00  bneq r20, zero, 24
003344  1b4a0701  srli r20, r14, 16
003348  1b0a1a00  andi r20, r20, 1
00334c  0b174711  add.s r14, r14, r20
003350  0b17b711  add.s r14, r14, r27
003354  5b010000  j 8
003358  17172700  or r14, r14, r2
00335c  e704efea  storeli.w r14, -2744(r30)
003360  17877800  and r14, r17, r7
003364  1307e304  setlt.u r14, r6, r14
003368  3b600700  bneq r14, zero, 24
00336c  1bc70801  srli r14, r17, 16
003370  1b071700  andi r14, r14, 1
003374  0b97e810  add.s r14, r17, r14
003378  8b18b711  add.s r17, r14, r27
00337c  5b010000  j 8
003380  97982800  or r17, r17, r2
003384  17877200  and r14, r5, r7
003388  1307e304  setlt.u r14, r6, r14
00338c  3b600700  bneq r14, zero, 24
003390  1bc70201  srli r14, r5, 16
003394  1b071700  andi r14, r14, 1
003398  8b92e210  add.s r5, r5, r14
00339c  8b92b211  add.s r5, r5, r27
0033a0  5b010000  j 8
0033a4  97922200  or r5, r5, r2
0033a8  17077200  and r14, r4, r7
0033ac  1307e304  setlt.u r14, r6, r14
0033b0  3b600700  bneq r14, zero, 24
0033b4  1b470201  srli r14, r4, 16
0033b8  1b071700  andi r14, r14, 1
0033bc  0b12e210  add.s r4, r4, r14
0033c0  0b12b211  add.s r4, r4, r27
0033c4  5b010000  j 8
0033c8  17122200  or r4, r4, r2
0033cc  17877600  and r14, r13, r7
0033d0  1307e304  setlt.u r14, r6, r14
0033d4  3b600700  bneq r14, zero, 24
0033d8  1bc70601  srli r14, r13, 16
0033dc  1b071700  andi r14, r14, 1
0033e0  8b96e610  add.s r13, r13, r14
0033e4  8b96b611  add.s r13, r13, r27
0033e8  5b010000  j 8
0033ec  97962600  or r13, r13, r2
0033f0  17877400  and r14, r9, r7
0033f4  1307e304  setlt.u r14, r6, r14
0033f8  3b600700  bneq r14, zero, 24
0033fc  1bc70401  srli r14, r9, 16
003400  1b071700  andi r14, r14, 1
003404  8b94e410  add.s r9, r9, r14
003408  8b94b411  add.s r9, r9, r27
00340c  5b010000  j 8
003410  97942400  or r9, r9, r2
003414  17877500  and r14, r11, r7
003418  1307e304  setlt.u r14, r6, r14
00341c  3b600700  bneq r14, zero, 24
003420  1bc70501  srli r14, r11, 16
003424  1b071700  andi r14, r14, 1
003428  8b95e510  add.s r11, r11, r14
00342c  8b95b511  add.s r11, r11, r27
003430  5b010000  j 8
003434  97952500  or r11, r11, r2
003438  17877700  and r14, r15, r7
00343c  1307e304  setlt.u r14, r6, r14
003440  3b600700  bneq r14, zero, 24
003444  1bc70701  srli r14, r15, 16
003448  1b071700  andi r14, r14, 1
00344c  0b97e710  add.s r14, r15, r14
003450  8b17b711  add.s r15, r14, r27
003454  5b010000  j 8
003458  97972700  or r15, r15, r2
00345c  17077b00  and r14, r22, r7
003460  1307e304  setlt.u r14, r6, r14
003464  3b600700  bneq r14, zero, 24
003468  1b470b01  srli r14, r22, 16
00346c  1b071700  andi r14, r14, 1
003470  0b17eb10  add.s r14, r22, r14
003474  0b1bb711  add.s r22, r14, r27
003478  5b010000  j 8
00347c  171b2b00  or r22, r22, r2
003480  17877000  and r14, r1, r7
003484  1307e304  setlt.u r14, r6, r14
003488  3b600700  bneq r14, zero, 24
00348c  1bc70001  srli r14, r1, 16
003490  1b071700  andi r14, r14, 1
003494  8b90e010  add.s r1, r1, r14
003498  8b90b011  add.s r1, r1, r27
00349c  5b010000  j 8
0034a0  97902000  or r1, r1, r2
0034a4  17077e00  and r14, r28, r7
0034a8  1307e304  setlt.u r14, r6, r14
0034ac  3b600700  bneq r14, zero, 24
0034b0  1b470e01  srli r14, r28, 16
0034b4  1b071700  andi r14, r14, 1
0034b8  0b17ee10  add.s r14, r28, r14
0034bc  0b17b711  add.s r14, r14, r27
0034c0  5b010000  j 8
0034c4  17172e00  or r14, r28, r2
0034c8  178a7900  and r20, r19, r7
0034cc  130a4305  setlt.u r20, r6, r20
0034d0  3b600a00  bneq r20, zero, 24
0034d4  1bca0901  srli r20, r19, 16
0034d8  1b0a1a00  andi r20, r20, 1
0034dc  8b994911  add.s r19, r19, r20
0034e0  8b99b911  add.s r19, r19, r27
0034e4  5b010000  j 8
0034e8  97992900  or r19, r19, r2
0034ec  170a7600  and r20, r12, r7
0034f0  130a4305  setlt.u r20, r6, r20
0034f4  3b600a00  bneq r20, zero, 24
0034f8  1b4a0601  srli r20, r12, 16
0034fc  1b0a1a00  andi r20, r20, 1
003500  0b164611  add.s r12, r12, r20
003504  0b16b611  add.s r12, r12, r27
003508  5b010000  j 8
00350c  17162600  or r12, r12, r2
003510  e303efeb  loadli.w r7,  -2576(r30)
003514  1f018000  addli r2, zero, 64
003518  3fa02300  blt.s r7, r2, 8
00351c  5b3effff  j -1552
003520  2b01ffff  lui r2, 1048560
003524  1f830b00  addli r6, r23, 0
003528  e3031fea  loadli.w r7,  -2808(r30)
00352c  978b2c00  and r23, r25, r2
003530  970c2300  and r25, r6, r2
003534  63039fea  loadli.w r6,  -2744(r30)
003538  170a2d00  and r20, r26, r2
00353c  17022200  and r4, r4, r2
003540  97882800  and r17, r17, r2
003544  170b2b00  and r22, r22, r2
003548  97822200  and r5, r5, r2
00354c  97842400  and r9, r9, r2
003550  97872700  and r15, r15, r2
003554  97862600  and r13, r13, r2
003558  97852500  and r11, r11, r2
00355c  97802000  and r1, r1, r2
003560  17072700  and r14, r14, r2
003564  97892900  and r19, r19, r2
003568  17062600  and r12, r12, r2
00356c  8beb7b18  sub.f.rn r23, r23, r7
003570  8bec7c18  sub.f.rn r25, r25, r7
003574  8b6d7218  sub.f.rn r27, r4, r7
003578  0bee7218  sub.f.rn r28, r5, r7
00357c  0be47418  sub.f.rn r8, r9, r7
003580  9f020500  addli r5, r10, 0
003584  0be97718  sub.f.rn r18, r15, r7
003588  1f020800  addli r4, r16, 0
00358c  1f080c00  addli r16, r24, 0
003590  9f840100  addli r9, r3, 0
003594  9f810a00  addli r3, r21, 0
003598  0b6a7a18  sub.f.rn r20, r20, r7
00359c  8be87818  sub.f.rn r17, r17, r7
0035a0  0be57518  sub.f.rn r10, r11, r7
0035a4  0b6b7b18  sub.f.rn r22, r22, r7
0035a8  0b6c7718  sub.f.rn r24, r14, r7
0035ac  8bea7918  sub.f.rn r21, r19, r7
0035b0  170d2300  and r26, r6, r2
0035b4  0be37618  sub.f.rn r6, r13, r7
0035b8  0be17018  sub.f.rn r2, r1, r7
0035bc  0b6d7d18  sub.f.rn r26, r26, r7
0035c0  8b637618  sub.f.rn r7, r12, r7
0035c4  8beb7b21  mul.f.rn r23, r23, r23
0035c8  8bec9c21  mul.f.rn r25, r25, r25
0035cc  8be6bd21  mul.f.rn r13, r27, r27
0035d0  e30dffeb  loadli.w r27,  -2568(r30)
0035d4  8b604a21  mul.f.rn r1, r20, r20
0035d8  8be51821  mul.f.rn r11, r17, r17
0035dc  0b66ce21  mul.f.rn r12, r28, r28
0035e0  8b678420  mul.f.rn r15, r8, r8
0035e4  8b68a520  mul.f.rn r17, r10, r10
0035e8  0b6a6b21  mul.f.rn r20, r22, r22
0035ec  0b6e8c21  mul.f.rn r28, r24, r24
0035f0  1f0c0800  addli r24, r16, 0
0035f4  1f080200  addli r16, r4, 0
0035f8  1f040ff4  addli r8, r30, -1536
0035fc  1f850200  addli r10, r5, 0
003600  0b676320  mul.f.rn r14, r6, r6
003604  0b6b2120  mul.f.rn r22, r2, r2
003608  2b03807f  lui r6, 522240
00360c  8b69ad21  mul.f.rn r19, r26, r26
003610  1f810b00  addli r2, r23, 0
003614  1f820c00  addli r4, r25, 0
003618  8beb5a21  mul.f.rn r23, r21, r21
00361c  9f8a0100  addli r21, r3, 0
003620  9f810400  addli r3, r9, 0
003624  8bec7320  mul.f.rn r25, r7, r7
003628  9f820900  addli r5, r19, 0
00362c  8b692921  mul.f.rn r19, r18, r18
003630  1f090002  addli r18, zero, 256
003634  5b23ffff  j -1768
003638  8be08a11  add.f.rn r1, r21, r24
00363c  6301afe5  loadli.w r2,  -3376(r30)
003640  8be03010  add.f.rn r1, r1, r3
003644  8be00011  add.f.rn r1, r1, r16
003648  8be0a010  add.f.rn r1, r1, r10
00364c  8be04010  add.f.rn r1, r1, r4
003650  8be05010  add.f.rn r1, r1, r5
003654  8be07010  add.f.rn r1, r1, r7
003658  8be09010  add.f.rn r1, r1, r9
00365c  8be0b010  add.f.rn r1, r1, r11
003660  8be0c010  add.f.rn r1, r1, r12
003664  8be0d010  add.f.rn r1, r1, r13
003668  8be0e010  add.f.rn r1, r1, r14
00366c  8be0f010  add.f.rn r1, r1, r15
003670  8be01011  add.f.rn r1, r1, r17
003674  8be03011  add.f.rn r1, r1, r19
003678  73601100  stores.w r1, 0(r2)
00367c  00a00300  mfence { lm, sm, gm }
003680  6342ffe9  loadli.w r4,  -2820(r30)
003684  80210204  csr_set csr3, r4
003688  00d00100  sync_group
00368c  e300ffe9  loadli.w r1,  -2824(r30)
003690  3ba10000  bneq r1, zero, 72
003694  e302bfe5  loadli.w r5,  -3368(r30)
003698  efc00200  loads.w r1, 0(r5)
00369c  6fc14200  loads.w r2, 4(r5)
0036a0  efc18200  loads.w r3, 8(r5)
0036a4  8be02010  add.f.rn r1, r1, r2
0036a8  6fc1c200  loads.w r2, 12(r5)
0036ac  8be03010  add.f.rn r1, r1, r3
0036b0  efc10201  loads.w r3, 16(r5)
0036b4  8be02010  add.f.rn r1, r1, r2
0036b8  6fc14201  loads.w r2, 20(r5)
0036bc  8be03010  add.f.rn r1, r1, r3
0036c0  efc18201  loads.w r3, 24(r5)
0036c4  8be02010  add.f.rn r1, r1, r2
0036c8  6fc1c201  loads.w r2, 28(r5)
0036cc  8be03010  add.f.rn r1, r1, r3
0036d0  8be02010  add.f.rn r1, r1, r2
0036d4  73e01200  stores.w r1, 0(r5)
0036d8  00a00300  mfence { lm, sm, gm }
0036dc  80210204  csr_set csr3, r4
0036e0  00d00100  sync_group
0036e4  e300bfe5  loadli.w r1,  -3368(r30)
0036e8  2b01803a  lui r2, 239616
0036ec  9f040000  addli r9, zero, 0
0036f0  efc00000  loads.w r1, 0(r1)
0036f4  8be02020  mul.f.rn r1, r1, r2
0036f8  6301cfe4  loadli.w r2,  -3488(r30)
0036fc  8be02010  add.f.rn r1, r1, r2
003700  2b01803f  lui r2, 260096
003704  8f800008  sqrt.f.rn r1, r1
003708  8f011118  div.f.rn r3, r2, r1
00370c  9f000ff8  addli r1, r30, -1024
003710  9fe03000  addli r1, r1, 30
003714  67401fea  storeli.w r1, -2812(r30)
003718  9f000ffa  addli r1, r30, -768
00371c  9f802000  addli r1, r1, 16
003720  67001fea  storeli.w r1, -2816(r30)
003724  5b050000  j 40
003728  9b400101  srli r1, r2, 16
00372c  9b801000  andi r1, r1, 1
003730  8b101110  add.s r1, r2, r1
003734  8b90b011  add.s r1, r1, r27
003738  9bc00001  srli r1, r1, 16
00373c  9f844400  addli r9, r9, 32
003740  739f1600  store.h r1, 30(r13)
003744  00a00000  mfence { lm }
003748  378bb4e6  beq r9, r11, -12608
00374c  8b169410  add.s r13, r8, r9
003750  92303002  vadd.s.mz vr1{mr1}, zero, vr3
003754  1f180000  addli r16, zero, 1
003758  12313002  vadd.s.mz vr2{mr1}, zero, vr3
00375c  6bb20600  load.hu r4, 0(r13)
003760  ebb22600  load.hu r5, 2(r13)
003764  7e0108e0  vmmov mr2, r16
003768  6bb1a601  load.hu r2, 26(r13)
00376c  ebb0c601  load.hu r1, 28(r13)
003770  6bb34600  load.hu r6, 4(r13)
003774  ebb36600  load.hu r7, 6(r13)
003778  6bb48600  load.hu r8, 8(r13)
00377c  6bb5a600  load.hu r10, 10(r13)
003780  ebb5c600  load.hu r11, 12(r13)
003784  6bb6e600  load.hu r12, 14(r13)
003788  6bb70601  load.hu r14, 16(r13)
00378c  ebb72601  load.hu r15, 18(r13)
003790  ebb84601  load.hu r17, 20(r13)
003794  6bb96601  load.hu r18, 22(r13)
003798  ebb98601  load.hu r19, 24(r13)
00379c  6bbae601  load.hu r20, 30(r13)
0037a0  33120218  bfloat2float.rn r4, r4
0037a4  33110118  bfloat2float.rn r2, r2
0037a8  b3900018  bfloat2float.rn r1, r1
0037ac  ea201234  vor.u.mh vr1{mr2}, r4, vr1
0037b0  33920218  bfloat2float.rn r4, r5
0037b4  9f220000  addli r5, zero, 2
0037b8  fe8102e0  vmmov mr3, r5
0037bc  9f420000  addli r5, zero, 4
0037c0  ea201236  vor.u.mh vr1{mr3}, r4, vr1
0037c4  33120318  bfloat2float.rn r4, r6
0037c8  7e8002e0  vmmov mr0, r5
0037cc  9f021000  addli r5, zero, 8
0037d0  ea201230  vor.u.mh vr1{mr0}, r4, vr1
0037d4  33920318  bfloat2float.rn r4, r7
0037d8  7e8002e0  vmmov mr0, r5
0037dc  9f022000  addli r5, zero, 16
0037e0  ea201230  vor.u.mh vr1{mr0}, r4, vr1
0037e4  33120418  bfloat2float.rn r4, r8
0037e8  7e8002e0  vmmov mr0, r5
0037ec  9f024000  addli r5, zero, 32
0037f0  ea201230  vor.u.mh vr1{mr0}, r4, vr1
0037f4  33120518  bfloat2float.rn r4, r10
0037f8  7e8002e0  vmmov mr0, r5
0037fc  9f028000  addli r5, zero, 64
003800  ea201230  vor.u.mh vr1{mr0}, r4, vr1
003804  33920518  bfloat2float.rn r4, r11
003808  7e8002e0  vmmov mr0, r5
00380c  9f020001  addli r5, zero, 128
003810  ea201230  vor.u.mh vr1{mr0}, r4, vr1
003814  33120618  bfloat2float.rn r4, r12
003818  7e8002e0  vmmov mr0, r5
00381c  9f020002  addli r5, zero, 256
003820  ea201230  vor.u.mh vr1{mr0}, r4, vr1
003824  33120718  bfloat2float.rn r4, r14
003828  7e8002e0  vmmov mr0, r5
00382c  9f020004  addli r5, zero, 512
003830  ea201230  vor.u.mh vr1{mr0}, r4, vr1
003834  33920718  bfloat2float.rn r4, r15
003838  7e8002e0  vmmov mr0, r5
00383c  9f020008  addli r5, zero, 1024
003840  ea201230  vor.u.mh vr1{mr0}, r4, vr1
003844  33920818  bfloat2float.rn r4, r17
003848  7e8002e0  vmmov mr0, r5
00384c  9f020010  addli r5, zero, 2048
003850  ea201230  vor.u.mh vr1{mr0}, r4, vr1
003854  33120918  bfloat2float.rn r4, r18
003858  7e8002e0  vmmov mr0, r5
00385c  9f020020  addli r5, zero, 4096
003860  ea201230  vor.u.mh vr1{mr0}, r4, vr1
003864  33920918  bfloat2float.rn r4, r19
003868  7e8002e0  vmmov mr0, r5
00386c  ea201230  vor.u.mh vr1{mr0}, r4, vr1
003870  1f020040  addli r4, zero, 8192
003874  7e0002e0  vmmov mr0, r4
003878  2b820000  lui r4, 8
00387c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
003880  2b410000  lui r2, 4
003884  7e0001e0  vmmov mr0, r2
003888  1f010ff6  addli r2, r30, -1280
00388c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
003890  b3100a18  bfloat2float.rn r1, r20
003894  0b119110  add.s r2, r2, r9
003898  7e0002e0  vmmov mr0, r4
00389c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0038a0  eb300100  load.hu r1, 0(r2)
0038a4  6b322100  load.hu r4, 2(r2)
0038a8  eb324100  load.hu r5, 4(r2)
0038ac  6b336100  load.hu r6, 6(r2)
0038b0  eb338100  load.hu r7, 8(r2)
0038b4  6b34a100  load.hu r8, 10(r2)
0038b8  6b35c100  load.hu r10, 12(r2)
0038bc  eb35e100  load.hu r11, 14(r2)
0038c0  6b360101  load.hu r12, 16(r2)
0038c4  6b372101  load.hu r14, 18(r2)
0038c8  eb374101  load.hu r15, 20(r2)
0038cc  eb386101  load.hu r17, 22(r2)
0038d0  6b398101  load.hu r18, 24(r2)
0038d4  eb39a101  load.hu r19, 26(r2)
0038d8  6b3ac101  load.hu r20, 28(r2)
0038dc  b39a0018  bfloat2float.rn r21, r1
0038e0  eb30e101  load.hu r1, 30(r2)
0038e4  33110218  bfloat2float.rn r2, r4
0038e8  1f420000  addli r4, zero, 4
0038ec  6aa12a34  vor.u.mh vr2{mr2}, r21, vr2
0038f0  7e0102e0  vmmov mr2, r4
0038f4  1f021000  addli r4, zero, 8
0038f8  b3900018  bfloat2float.rn r1, r1
0038fc  6a212136  vor.u.mh vr2{mr3}, r2, vr2
003900  33910218  bfloat2float.rn r2, r5
003904  9f020ff8  addli r5, r30, -1024
003908  8b929210  add.s r5, r5, r9
00390c  6a212134  vor.u.mh vr2{mr2}, r2, vr2
003910  33110318  bfloat2float.rn r2, r6
003914  7e0102e0  vmmov mr2, r4
003918  1f022000  addli r4, zero, 16
00391c  2b430000  lui r6, 4
003920  6a212134  vor.u.mh vr2{mr2}, r2, vr2
003924  33910318  bfloat2float.rn r2, r7
003928  7e0102e0  vmmov mr2, r4
00392c  1f024000  addli r4, zero, 32
003930  6a212134  vor.u.mh vr2{mr2}, r2, vr2
003934  33110418  bfloat2float.rn r2, r8
003938  7e0102e0  vmmov mr2, r4
00393c  1f028000  addli r4, zero, 64
003940  6a212134  vor.u.mh vr2{mr2}, r2, vr2
003944  33110518  bfloat2float.rn r2, r10
003948  7e0102e0  vmmov mr2, r4
00394c  1f020001  addli r4, zero, 128
003950  6a212134  vor.u.mh vr2{mr2}, r2, vr2
003954  33910518  bfloat2float.rn r2, r11
003958  7e0102e0  vmmov mr2, r4
00395c  1f020002  addli r4, zero, 256
003960  6a212134  vor.u.mh vr2{mr2}, r2, vr2
003964  33110618  bfloat2float.rn r2, r12
003968  7e0102e0  vmmov mr2, r4
00396c  1f020004  addli r4, zero, 512
003970  6a212134  vor.u.mh vr2{mr2}, r2, vr2
003974  33110718  bfloat2float.rn r2, r14
003978  7e0102e0  vmmov mr2, r4
00397c  1f020008  addli r4, zero, 1024
003980  6a212134  vor.u.mh vr2{mr2}, r2, vr2
003984  33910718  bfloat2float.rn r2, r15
003988  7e0102e0  vmmov mr2, r4
00398c  1f020010  addli r4, zero, 2048
003990  6a212134  vor.u.mh vr2{mr2}, r2, vr2
003994  33910818  bfloat2float.rn r2, r17
003998  7e0102e0  vmmov mr2, r4
00399c  1f020020  addli r4, zero, 4096
0039a0  6a212134  vor.u.mh vr2{mr2}, r2, vr2
0039a4  33110918  bfloat2float.rn r2, r18
0039a8  7e0102e0  vmmov mr2, r4
0039ac  1f020040  addli r4, zero, 8192
0039b0  6a212134  vor.u.mh vr2{mr2}, r2, vr2
0039b4  33910918  bfloat2float.rn r2, r19
0039b8  7e0102e0  vmmov mr2, r4
0039bc  33120a18  bfloat2float.rn r4, r20
0039c0  6a212134  vor.u.mh vr2{mr2}, r2, vr2
0039c4  63410fea  loadli.w r2,  -2812(r30)
0039c8  7e0103e0  vmmov mr2, r6
0039cc  0b119110  add.s r2, r2, r9
0039d0  6a212234  vor.u.mh vr2{mr2}, r4, vr2
0039d4  63020fea  loadli.w r4,  -2816(r30)
0039d8  8b139210  add.s r7, r4, r9
0039dc  1f020ffa  addli r4, r30, -768
0039e0  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0039e4  eb3061fe  load.hu r1, -26(r2)
0039e8  eb3941fe  load.hu r19, -28(r2)
0039ec  0b139210  add.s r6, r4, r9
0039f0  6bb20200  load.hu r4, 0(r5)
0039f4  6bbe23ff  load.hu r28, -14(r7)
0039f8  6bb643ff  load.hu r12, -12(r7)
0039fc  e7401fea  storeli.w r1, -2804(r30)
003a00  eb3081fe  load.hu r1, -24(r2)
003a04  6b330300  load.hu r6, 0(r6)
003a08  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
003a0c  e7411fea  storeli.w r1, -2788(r30)
003a10  eb30a1fe  load.hu r1, -22(r2)
003a14  67421fea  storeli.w r1, -2780(r30)
003a18  eb30c1fe  load.hu r1, -20(r2)
003a1c  e7421fea  storeli.w r1, -2772(r30)
003a20  eb30e1fe  load.hu r1, -18(r2)
003a24  67431fea  storeli.w r1, -2764(r30)
003a28  eb3001ff  load.hu r1, -16(r2)
003a2c  e7431fea  storeli.w r1, -2756(r30)
003a30  eb3021ff  load.hu r1, -14(r2)
003a34  67441fea  storeli.w r1, -2748(r30)
003a38  eb3041ff  load.hu r1, -12(r2)
003a3c  e7441fea  storeli.w r1, -2740(r30)
003a40  eb3061ff  load.hu r1, -10(r2)
003a44  67451fea  storeli.w r1, -2732(r30)
003a48  eb3081ff  load.hu r1, -8(r2)
003a4c  e7451fea  storeli.w r1, -2724(r30)
003a50  eb30a1ff  load.hu r1, -6(r2)
003a54  67461fea  storeli.w r1, -2716(r30)
003a58  eb30c1ff  load.hu r1, -4(r2)
003a5c  e7461fea  storeli.w r1, -2708(r30)
003a60  eb30e1ff  load.hu r1, -2(r2)
003a64  e7071fea  storeli.w r1, -2696(r30)
003a68  eb300100  load.hu r1, 0(r2)
003a6c  2b01807f  lui r2, 522240
003a70  670f1fea  storeli.w r1, -2576(r30)
003a74  ebb063ff  load.hu r1, -10(r7)
003a78  67411fea  storeli.w r1, -2796(r30)
003a7c  ebb083ff  load.hu r1, -8(r7)
003a80  67021fea  storeli.w r1, -2784(r30)
003a84  ebb0a3ff  load.hu r1, -6(r7)
003a88  e7021fea  storeli.w r1, -2776(r30)
003a8c  ebb0c3ff  load.hu r1, -4(r7)
003a90  67031fea  storeli.w r1, -2768(r30)
003a94  ebb0e3ff  load.hu r1, -2(r7)
003a98  e7031fea  storeli.w r1, -2760(r30)
003a9c  ebb00300  load.hu r1, 0(r7)
003aa0  67041fea  storeli.w r1, -2752(r30)
003aa4  ebb02300  load.hu r1, 2(r7)
003aa8  e7041fea  storeli.w r1, -2744(r30)
003aac  ebb04300  load.hu r1, 4(r7)
003ab0  67051fea  storeli.w r1, -2736(r30)
003ab4  ebb06300  load.hu r1, 6(r7)
003ab8  e7051fea  storeli.w r1, -2728(r30)
003abc  ebb08300  load.hu r1, 8(r7)
003ac0  67061fea  storeli.w r1, -2720(r30)
003ac4  ebb0a300  load.hu r1, 10(r7)
003ac8  e7061fea  storeli.w r1, -2712(r30)
003acc  ebb0c300  load.hu r1, 12(r7)
003ad0  67071fea  storeli.w r1, -2704(r30)
003ad4  ebb0e300  load.hu r1, 14(r7)
003ad8  67081fea  storeli.w r1, -2688(r30)
003adc  46100fc2  vstore_mask16.mz vr0{mr1}, 1536(r30)
003ae0  00a00000  mfence { lm }
003ae4  63090ffc  loadli.w r18,  -512(r30)
003ae8  e340ffeb  loadli.w r1,  -2564(r30)
003aec  634a0ffc  loadli.w r20,  -508(r30)
003af0  e3081ffc  loadli.w r17,  -504(r30)
003af4  63471ffc  loadli.w r14,  -500(r30)
003af8  63052ffc  loadli.w r10,  -496(r30)
003afc  63442ffc  loadli.w r8,  -492(r30)
003b00  97001900  and r1, r18, r1
003b04  93031104  setlt.u r7, r2, r1
003b08  63013ffc  loadli.w r2,  -488(r30)
003b0c  e3423ffc  loadli.w r5,  -484(r30)
003b10  e3004ffc  loadli.w r1,  -480(r30)
003b14  e3454ffc  loadli.w r11,  -476(r30)
003b18  e3075ffc  loadli.w r15,  -472(r30)
003b1c  634d5ffc  loadli.w r26,  -468(r30)
003b20  e30c6ffc  loadli.w r25,  -464(r30)
003b24  634c6ffc  loadli.w r24,  -460(r30)
003b28  e30b7ffc  loadli.w r23,  -456(r30)
003b2c  634b7ffc  loadli.w r22,  -452(r30)
003b30  3be00300  bneq r7, zero, 24
003b34  9b430901  srli r7, r18, 16
003b38  9b831300  andi r7, r7, 1
003b3c  8b137910  add.s r7, r18, r7
003b40  8b9ab311  add.s r21, r7, r27
003b44  db010000  j 12
003b48  ab034000  lui r7, 1024
003b4c  971a7900  or r21, r18, r7
003b50  e343ffeb  loadli.w r7,  -2564(r30)
003b54  2b09807f  lui r18, 522240
003b58  97037a00  and r7, r20, r7
003b5c  93037904  setlt.u r7, r18, r7
003b60  3be00300  bneq r7, zero, 24
003b64  9b430a01  srli r7, r20, 16
003b68  9b831300  andi r7, r7, 1
003b6c  8b137a10  add.s r7, r20, r7
003b70  0b9ab311  add.s r20, r7, r27
003b74  db010000  j 12
003b78  ab034000  lui r7, 1024
003b7c  171a7a00  or r20, r20, r7
003b80  e343ffeb  loadli.w r7,  -2564(r30)
003b84  97837800  and r7, r17, r7
003b88  93037904  setlt.u r7, r18, r7
003b8c  3be00300  bneq r7, zero, 24
003b90  9bc30801  srli r7, r17, 16
003b94  9b831300  andi r7, r7, 1
003b98  8b937810  add.s r7, r17, r7
003b9c  0b99b311  add.s r18, r7, r27
003ba0  db010000  j 12
003ba4  ab034000  lui r7, 1024
003ba8  17997800  or r18, r17, r7
003bac  e343ffeb  loadli.w r7,  -2564(r30)
003bb0  ab08807f  lui r17, 522240
003bb4  97037700  and r7, r14, r7
003bb8  93837804  setlt.u r7, r17, r7
003bbc  3be00300  bneq r7, zero, 24
003bc0  9b430701  srli r7, r14, 16
003bc4  9b831300  andi r7, r7, 1
003bc8  8b137710  add.s r7, r14, r7
003bcc  0b97b311  add.s r14, r7, r27
003bd0  db010000  j 12
003bd4  ab034000  lui r7, 1024
003bd8  17177700  or r14, r14, r7
003bdc  e343ffeb  loadli.w r7,  -2564(r30)
003be0  97037500  and r7, r10, r7
003be4  93837804  setlt.u r7, r17, r7
003be8  3be00300  bneq r7, zero, 24
003bec  9b430501  srli r7, r10, 16
003bf0  9b831300  andi r7, r7, 1
003bf4  8b137510  add.s r7, r10, r7
003bf8  0b95b311  add.s r10, r7, r27
003bfc  db010000  j 12
003c00  ab034000  lui r7, 1024
003c04  17157500  or r10, r10, r7
003c08  e343ffeb  loadli.w r7,  -2564(r30)
003c0c  97037400  and r7, r8, r7
003c10  93837804  setlt.u r7, r17, r7
003c14  3be00300  bneq r7, zero, 24
003c18  9b430401  srli r7, r8, 16
003c1c  9b831300  andi r7, r7, 1
003c20  8b137410  add.s r7, r8, r7
003c24  0b94b311  add.s r8, r7, r27
003c28  db010000  j 12
003c2c  ab034000  lui r7, 1024
003c30  17147400  or r8, r8, r7
003c34  e343ffeb  loadli.w r7,  -2564(r30)
003c38  97037100  and r7, r2, r7
003c3c  93837804  setlt.u r7, r17, r7
003c40  3be00300  bneq r7, zero, 24
003c44  9b430101  srli r7, r2, 16
003c48  9b831300  andi r7, r7, 1
003c4c  0b117110  add.s r2, r2, r7
003c50  0b11b111  add.s r2, r2, r27
003c54  db010000  j 12
003c58  ab034000  lui r7, 1024
003c5c  17117100  or r2, r2, r7
003c60  e343ffeb  loadli.w r7,  -2564(r30)
003c64  97837200  and r7, r5, r7
003c68  93837804  setlt.u r7, r17, r7
003c6c  3be00300  bneq r7, zero, 24
003c70  9bc30201  srli r7, r5, 16
003c74  9b831300  andi r7, r7, 1
003c78  8b927210  add.s r5, r5, r7
003c7c  8b92b211  add.s r5, r5, r27
003c80  db010000  j 12
003c84  ab034000  lui r7, 1024
003c88  97927200  or r5, r5, r7
003c8c  e343ffeb  loadli.w r7,  -2564(r30)
003c90  97837000  and r7, r1, r7
003c94  93837804  setlt.u r7, r17, r7
003c98  3be00300  bneq r7, zero, 24
003c9c  9bc30001  srli r7, r1, 16
003ca0  9b831300  andi r7, r7, 1
003ca4  8b907010  add.s r1, r1, r7
003ca8  8b90b011  add.s r1, r1, r27
003cac  db010000  j 12
003cb0  ab034000  lui r7, 1024
003cb4  97907000  or r1, r1, r7
003cb8  e343ffeb  loadli.w r7,  -2564(r30)
003cbc  97837500  and r7, r11, r7
003cc0  93837804  setlt.u r7, r17, r7
003cc4  3be00300  bneq r7, zero, 24
003cc8  9bc30501  srli r7, r11, 16
003ccc  9b831300  andi r7, r7, 1
003cd0  8b937510  add.s r7, r11, r7
003cd4  8b98b311  add.s r17, r7, r27
003cd8  db010000  j 12
003cdc  ab034000  lui r7, 1024
003ce0  97987500  or r17, r11, r7
003ce4  e343ffeb  loadli.w r7,  -2564(r30)
003ce8  ab05807f  lui r11, 522240
003cec  97837700  and r7, r15, r7
003cf0  93837504  setlt.u r7, r11, r7
003cf4  3be00300  bneq r7, zero, 24
003cf8  9bc30701  srli r7, r15, 16
003cfc  9b831300  andi r7, r7, 1
003d00  8b937710  add.s r7, r15, r7
003d04  8b9db311  add.s r27, r7, r27
003d08  db010000  j 12
003d0c  ab034000  lui r7, 1024
003d10  979d7700  or r27, r15, r7
003d14  6348ffeb  loadli.w r16,  -2564(r30)
003d18  97030d01  and r7, r26, r16
003d1c  93837504  setlt.u r7, r11, r7
003d20  3bf00300  bneq r7, zero, 28
003d24  9b430d01  srli r7, r26, 16
003d28  e305ffeb  loadli.w r11,  -2568(r30)
003d2c  9b831300  andi r7, r7, 1
003d30  8b137d10  add.s r7, r26, r7
003d34  8b93b310  add.s r7, r7, r11
003d38  db010000  j 12
003d3c  ab034000  lui r7, 1024
003d40  97137d00  or r7, r26, r7
003d44  67017fea  storeli.w r7, -2800(r30)
003d48  97830c01  and r7, r25, r16
003d4c  ab05807f  lui r11, 522240
003d50  ab074000  lui r15, 1024
003d54  93837504  setlt.u r7, r11, r7
003d58  3bf00300  bneq r7, zero, 28
003d5c  9bc30c01  srli r7, r25, 16
003d60  e305ffeb  loadli.w r11,  -2568(r30)
003d64  9b831300  andi r7, r7, 1
003d68  8b937c10  add.s r7, r25, r7
003d6c  8b93b310  add.s r7, r7, r11
003d70  5b010000  j 8
003d74  9793fc00  or r7, r25, r15
003d78  e7017fea  storeli.w r7, -2792(r30)
003d7c  97030c01  and r7, r24, r16
003d80  ab05807f  lui r11, 522240
003d84  93837504  setlt.u r7, r11, r7
003d88  3bf00300  bneq r7, zero, 28
003d8c  9b430c01  srli r7, r24, 16
003d90  e305ffeb  loadli.w r11,  -2568(r30)
003d94  9b831300  andi r7, r7, 1
003d98  8b137c10  add.s r7, r24, r7
003d9c  0b9db310  add.s r26, r7, r11
003da0  5b010000  j 8
003da4  171dfc00  or r26, r24, r15
003da8  97830b01  and r7, r23, r16
003dac  ab05807f  lui r11, 522240
003db0  93837504  setlt.u r7, r11, r7
003db4  3bf00300  bneq r7, zero, 28
003db8  9bc30b01  srli r7, r23, 16
003dbc  e305ffeb  loadli.w r11,  -2568(r30)
003dc0  9b831300  andi r7, r7, 1
003dc4  8b937b10  add.s r7, r23, r7
003dc8  8b9cb310  add.s r25, r7, r11
003dcc  5b010000  j 8
003dd0  979cfb00  or r25, r23, r15
003dd4  97030b01  and r7, r22, r16
003dd8  ab05807f  lui r11, 522240
003ddc  e30b1fea  loadli.w r23,  -2808(r30)
003de0  93837504  setlt.u r7, r11, r7
003de4  3bf00300  bneq r7, zero, 28
003de8  9b430b01  srli r7, r22, 16
003dec  e305ffeb  loadli.w r11,  -2568(r30)
003df0  9b831300  andi r7, r7, 1
003df4  8b137b10  add.s r7, r22, r7
003df8  0b9cb310  add.s r24, r7, r11
003dfc  5b010000  j 8
003e00  171cfb00  or r24, r22, r15
003e04  2b0bffff  lui r22, 1048560
003e08  33120218  bfloat2float.rn r4, r4
003e0c  33130318  bfloat2float.rn r6, r6
003e10  97836a01  and r7, r21, r22
003e14  8be37319  sub.f.rn r7, r7, r23
003e18  8be37120  mul.f.rn r7, r3, r7
003e1c  0be24320  mul.f.rn r4, r7, r4
003e20  ab03807f  lui r7, 522240
003e24  0b626210  add.f.rn r4, r4, r6
003e28  17030201  and r6, r4, r16
003e2c  13836304  setlt.u r6, r7, r6
003e30  3b700300  bneq r6, zero, 28
003e34  1b430201  srli r6, r4, 16
003e38  1b031300  andi r6, r6, 1
003e3c  0b126210  add.s r4, r4, r6
003e40  6303ffeb  loadli.w r6,  -2568(r30)
003e44  0b126210  add.s r4, r4, r6
003e48  5b010000  j 8
003e4c  1712f200  or r4, r4, r15
003e50  17036a01  and r6, r20, r22
003e54  b3930918  bfloat2float.rn r7, r19
003e58  ab05807f  lui r11, 522240
003e5c  1b420201  srli r4, r4, 16
003e60  0b637319  sub.f.rn r6, r6, r23
003e64  73904600  store.h r4, 0(r13)
003e68  0be36120  mul.f.rn r6, r3, r6
003e6c  0b637320  mul.f.rn r6, r6, r7
003e70  b3130e18  bfloat2float.rn r7, r28
003e74  0b637310  add.f.rn r6, r6, r7
003e78  97030301  and r7, r6, r16
003e7c  93837504  setlt.u r7, r11, r7
003e80  3bf00300  bneq r7, zero, 28
003e84  1b420301  srli r4, r6, 16
003e88  1b021200  andi r4, r4, 1
003e8c  0b124310  add.s r4, r6, r4
003e90  6303ffeb  loadli.w r6,  -2568(r30)
003e94  0b126210  add.s r4, r4, r6
003e98  5b010000  j 8
003e9c  1712f300  or r4, r6, r15
003ea0  17036901  and r6, r18, r22
003ea4  e3431fea  loadli.w r7,  -2804(r30)
003ea8  1b420201  srli r4, r4, 16
003eac  0b637319  sub.f.rn r6, r6, r23
003eb0  73914600  store.h r4, 2(r13)
003eb4  b3930318  bfloat2float.rn r7, r7
003eb8  0be36120  mul.f.rn r6, r3, r6
003ebc  0b637320  mul.f.rn r6, r6, r7
003ec0  b3130618  bfloat2float.rn r7, r12
003ec4  0b637310  add.f.rn r6, r6, r7
003ec8  97030301  and r7, r6, r16
003ecc  93837504  setlt.u r7, r11, r7
003ed0  3bf00300  bneq r7, zero, 28
003ed4  1b420301  srli r4, r6, 16
003ed8  1b021200  andi r4, r4, 1
003edc  0b124310  add.s r4, r6, r4
003ee0  6303ffeb  loadli.w r6,  -2568(r30)
003ee4  0b126210  add.s r4, r4, r6
003ee8  5b010000  j 8
003eec  1712f300  or r4, r6, r15
003ef0  17036701  and r6, r14, r22
003ef4  e3433fea  loadli.w r7,  -2788(r30)
003ef8  2b06807f  lui r12, 522240
003efc  1b420201  srli r4, r4, 16
003f00  9f050002  addli r11, zero, 256
003f04  0b637319  sub.f.rn r6, r6, r23
003f08  73924600  store.h r4, 4(r13)
003f0c  b3930318  bfloat2float.rn r7, r7
003f10  0be36120  mul.f.rn r6, r3, r6
003f14  0b637320  mul.f.rn r6, r6, r7
003f18  e3432fea  loadli.w r7,  -2796(r30)
003f1c  b3930318  bfloat2float.rn r7, r7
003f20  0b637310  add.f.rn r6, r6, r7
003f24  97030301  and r7, r6, r16
003f28  93037604  setlt.u r7, r12, r7
003f2c  3bf00300  bneq r7, zero, 28
003f30  1b420301  srli r4, r6, 16
003f34  1b021200  andi r4, r4, 1
003f38  0b124310  add.s r4, r6, r4
003f3c  6303ffeb  loadli.w r6,  -2568(r30)
003f40  0b126210  add.s r4, r4, r6
003f44  5b010000  j 8
003f48  1712f300  or r4, r6, r15
003f4c  17036501  and r6, r10, r22
003f50  e3434fea  loadli.w r7,  -2780(r30)
003f54  2b05807f  lui r10, 522240
003f58  1b420201  srli r4, r4, 16
003f5c  0b637319  sub.f.rn r6, r6, r23
003f60  73934600  store.h r4, 6(r13)
003f64  b3930318  bfloat2float.rn r7, r7
003f68  0be36120  mul.f.rn r6, r3, r6
003f6c  0b637320  mul.f.rn r6, r6, r7
003f70  e3034fea  loadli.w r7,  -2784(r30)
003f74  b3930318  bfloat2float.rn r7, r7
003f78  0b637310  add.f.rn r6, r6, r7
003f7c  97030301  and r7, r6, r16
003f80  93037504  setlt.u r7, r10, r7
003f84  3bf00300  bneq r7, zero, 28
003f88  1b420301  srli r4, r6, 16
003f8c  1b021200  andi r4, r4, 1
003f90  0b124310  add.s r4, r6, r4
003f94  6303ffeb  loadli.w r6,  -2568(r30)
003f98  0b126210  add.s r4, r4, r6
003f9c  5b010000  j 8
003fa0  1712f300  or r4, r6, r15
003fa4  17036401  and r6, r8, r22
003fa8  e3435fea  loadli.w r7,  -2772(r30)
003fac  1b420201  srli r4, r4, 16
003fb0  0b637319  sub.f.rn r6, r6, r23
003fb4  73944600  store.h r4, 8(r13)
003fb8  b3930318  bfloat2float.rn r7, r7
003fbc  0be36120  mul.f.rn r6, r3, r6
003fc0  0b637320  mul.f.rn r6, r6, r7
003fc4  e3035fea  loadli.w r7,  -2776(r30)
003fc8  b3930318  bfloat2float.rn r7, r7
003fcc  0b637310  add.f.rn r6, r6, r7
003fd0  97030301  and r7, r6, r16
003fd4  93037504  setlt.u r7, r10, r7
003fd8  3bf00300  bneq r7, zero, 28
003fdc  1b420301  srli r4, r6, 16
003fe0  1b021200  andi r4, r4, 1
003fe4  0b124310  add.s r4, r6, r4
003fe8  6303ffeb  loadli.w r6,  -2568(r30)
003fec  0b126210  add.s r4, r4, r6
003ff0  5b010000  j 8
003ff4  1712f300  or r4, r6, r15
003ff8  17016101  and r2, r2, r22
003ffc  63436fea  loadli.w r6,  -2764(r30)
004000  1b420201  srli r4, r4, 16
004004  1f040ff4  addli r8, r30, -1536
004008  0b617119  sub.f.rn r2, r2, r23
00400c  73954600  store.h r4, 10(r13)
004010  33130318  bfloat2float.rn r6, r6
004014  0be12120  mul.f.rn r2, r3, r2
004018  0b616120  mul.f.rn r2, r2, r6
00401c  63036fea  loadli.w r6,  -2768(r30)
004020  33130318  bfloat2float.rn r6, r6
004024  0b616110  add.f.rn r2, r2, r6
004028  17030101  and r6, r2, r16
00402c  13036504  setlt.u r6, r10, r6
004030  3b700300  bneq r6, zero, 28
004034  1b420101  srli r4, r2, 16
004038  1b021200  andi r4, r4, 1
00403c  0b114110  add.s r2, r2, r4
004040  6302ffeb  loadli.w r4,  -2568(r30)
004044  0b114110  add.s r2, r2, r4
004048  5b010000  j 8
00404c  1711f100  or r2, r2, r15
004050  17826201  and r4, r5, r22
004054  e3427fea  loadli.w r5,  -2756(r30)
004058  1b410101  srli r2, r2, 16
00405c  0b627219  sub.f.rn r4, r4, r23
004060  73962600  store.h r2, 12(r13)
004064  b3920218  bfloat2float.rn r5, r5
004068  0be24120  mul.f.rn r4, r3, r4
00406c  0b625220  mul.f.rn r4, r4, r5
004070  e3027fea  loadli.w r5,  -2760(r30)
004074  b3920218  bfloat2float.rn r5, r5
004078  0b625210  add.f.rn r4, r4, r5
00407c  97020201  and r5, r4, r16
004080  93025504  setlt.u r5, r10, r5
004084  3bf00200  bneq r5, zero, 28
004088  1b410201  srli r2, r4, 16
00408c  1b011100  andi r2, r2, 1
004090  0b112210  add.s r2, r4, r2
004094  6302ffeb  loadli.w r4,  -2568(r30)
004098  0b114110  add.s r2, r2, r4
00409c  5b010000  j 8
0040a0  1711f200  or r2, r4, r15
0040a4  97806001  and r1, r1, r22
0040a8  63428fea  loadli.w r4,  -2748(r30)
0040ac  1b410101  srli r2, r2, 16
0040b0  8be07019  sub.f.rn r1, r1, r23
0040b4  73972600  store.h r2, 14(r13)
0040b8  33120218  bfloat2float.rn r4, r4
0040bc  8be01120  mul.f.rn r1, r3, r1
0040c0  8be04020  mul.f.rn r1, r1, r4
0040c4  63028fea  loadli.w r4,  -2752(r30)
0040c8  33120218  bfloat2float.rn r4, r4
0040cc  8be04010  add.f.rn r1, r1, r4
0040d0  17820001  and r4, r1, r16
0040d4  13024504  setlt.u r4, r10, r4
0040d8  3b700200  bneq r4, zero, 28
0040dc  1bc10001  srli r2, r1, 16
0040e0  1b011100  andi r2, r2, 1
0040e4  8b902010  add.s r1, r1, r2
0040e8  6301ffeb  loadli.w r2,  -2568(r30)
0040ec  8b902010  add.s r1, r1, r2
0040f0  5b010000  j 8
0040f4  9790f000  or r1, r1, r15
0040f8  17816801  and r2, r17, r22
0040fc  63429fea  loadli.w r4,  -2740(r30)
004100  9bc00001  srli r1, r1, 16
004104  0b617119  sub.f.rn r2, r2, r23
004108  73981600  store.h r1, 16(r13)
00410c  33120218  bfloat2float.rn r4, r4
004110  0be12120  mul.f.rn r2, r3, r2
004114  0b614120  mul.f.rn r2, r2, r4
004118  63029fea  loadli.w r4,  -2744(r30)
00411c  33120218  bfloat2float.rn r4, r4
004120  0b614110  add.f.rn r2, r2, r4
004124  17020101  and r4, r2, r16
004128  13024504  setlt.u r4, r10, r4
00412c  3b700200  bneq r4, zero, 28
004130  9b400101  srli r1, r2, 16
004134  9b801000  andi r1, r1, 1
004138  8b101110  add.s r1, r2, r1
00413c  6301ffeb  loadli.w r2,  -2568(r30)
004140  8b902010  add.s r1, r1, r2
004144  5b010000  j 8
004148  9710f100  or r1, r2, r15
00414c  17816d01  and r2, r27, r22
004150  6342afea  loadli.w r4,  -2732(r30)
004154  9bc00001  srli r1, r1, 16
004158  0b617119  sub.f.rn r2, r2, r23
00415c  73991600  store.h r1, 18(r13)
004160  33120218  bfloat2float.rn r4, r4
004164  0be12120  mul.f.rn r2, r3, r2
004168  0b614120  mul.f.rn r2, r2, r4
00416c  6302afea  loadli.w r4,  -2736(r30)
004170  33120218  bfloat2float.rn r4, r4
004174  0b614110  add.f.rn r2, r2, r4
004178  17020101  and r4, r2, r16
00417c  13024504  setlt.u r4, r10, r4
004180  3b700200  bneq r4, zero, 28
004184  9b400101  srli r1, r2, 16
004188  e30dffeb  loadli.w r27,  -2568(r30)
00418c  9b801000  andi r1, r1, 1
004190  8b101110  add.s r1, r2, r1
004194  8b90b011  add.s r1, r1, r27
004198  db010000  j 12
00419c  e30dffeb  loadli.w r27,  -2568(r30)
0041a0  9710f100  or r1, r2, r15
0041a4  63012fea  loadli.w r2,  -2800(r30)
0041a8  6342bfea  loadli.w r4,  -2724(r30)
0041ac  9bc00001  srli r1, r1, 16
0041b0  739a1600  store.h r1, 20(r13)
0041b4  17016101  and r2, r2, r22
0041b8  33120218  bfloat2float.rn r4, r4
0041bc  0b617119  sub.f.rn r2, r2, r23
0041c0  0be12120  mul.f.rn r2, r3, r2
0041c4  0b614120  mul.f.rn r2, r2, r4
0041c8  6302bfea  loadli.w r4,  -2728(r30)
0041cc  33120218  bfloat2float.rn r4, r4
0041d0  0b614110  add.f.rn r2, r2, r4
0041d4  17020101  and r4, r2, r16
0041d8  13024504  setlt.u r4, r10, r4
0041dc  3b600200  bneq r4, zero, 24
0041e0  9b400101  srli r1, r2, 16
0041e4  9b801000  andi r1, r1, 1
0041e8  8b101110  add.s r1, r2, r1
0041ec  8b90b011  add.s r1, r1, r27
0041f0  5b010000  j 8
0041f4  9710f100  or r1, r2, r15
0041f8  63013fea  loadli.w r2,  -2792(r30)
0041fc  6342cfea  loadli.w r4,  -2716(r30)
004200  9bc00001  srli r1, r1, 16
004204  739b1600  store.h r1, 22(r13)
004208  17016101  and r2, r2, r22
00420c  33120218  bfloat2float.rn r4, r4
004210  0b617119  sub.f.rn r2, r2, r23
004214  0be12120  mul.f.rn r2, r3, r2
004218  0b614120  mul.f.rn r2, r2, r4
00421c  6302cfea  loadli.w r4,  -2720(r30)
004220  33120218  bfloat2float.rn r4, r4
004224  0b614110  add.f.rn r2, r2, r4
004228  17020101  and r4, r2, r16
00422c  13024504  setlt.u r4, r10, r4
004230  3b600200  bneq r4, zero, 24
004234  9b400101  srli r1, r2, 16
004238  9b801000  andi r1, r1, 1
00423c  8b101110  add.s r1, r2, r1
004240  8b90b011  add.s r1, r1, r27
004244  5b010000  j 8
004248  9710f100  or r1, r2, r15
00424c  17016d01  and r2, r26, r22
004250  6342dfea  loadli.w r4,  -2708(r30)
004254  9bc00001  srli r1, r1, 16
004258  0b617119  sub.f.rn r2, r2, r23
00425c  739c1600  store.h r1, 24(r13)
004260  33120218  bfloat2float.rn r4, r4
004264  0be12120  mul.f.rn r2, r3, r2
004268  0b614120  mul.f.rn r2, r2, r4
00426c  6302dfea  loadli.w r4,  -2712(r30)
004270  33120218  bfloat2float.rn r4, r4
004274  0b614110  add.f.rn r2, r2, r4
004278  17020101  and r4, r2, r16
00427c  13024504  setlt.u r4, r10, r4
004280  3b600200  bneq r4, zero, 24
004284  9b400101  srli r1, r2, 16
004288  9b801000  andi r1, r1, 1
00428c  8b101110  add.s r1, r2, r1
004290  8b90b011  add.s r1, r1, r27
004294  5b010000  j 8
004298  9710f100  or r1, r2, r15
00429c  17816c01  and r2, r25, r22
0042a0  6302ffea  loadli.w r4,  -2696(r30)
0042a4  9bc00001  srli r1, r1, 16
0042a8  0b617119  sub.f.rn r2, r2, r23
0042ac  739d1600  store.h r1, 26(r13)
0042b0  33120218  bfloat2float.rn r4, r4
0042b4  0be12120  mul.f.rn r2, r3, r2
0042b8  0b614120  mul.f.rn r2, r2, r4
0042bc  6302efea  loadli.w r4,  -2704(r30)
0042c0  33120218  bfloat2float.rn r4, r4
0042c4  0b614110  add.f.rn r2, r2, r4
0042c8  17020101  and r4, r2, r16
0042cc  13024504  setlt.u r4, r10, r4
0042d0  3b600200  bneq r4, zero, 24
0042d4  9b400101  srli r1, r2, 16
0042d8  9b801000  andi r1, r1, 1
0042dc  8b101110  add.s r1, r2, r1
0042e0  8b90b011  add.s r1, r1, r27
0042e4  5b010000  j 8
0042e8  9710f100  or r1, r2, r15
0042ec  17016c01  and r2, r24, r22
0042f0  6302efeb  loadli.w r4,  -2576(r30)
0042f4  9bc00001  srli r1, r1, 16
0042f8  0b617119  sub.f.rn r2, r2, r23
0042fc  739e1600  store.h r1, 28(r13)
004300  33120218  bfloat2float.rn r4, r4
004304  0be12120  mul.f.rn r2, r3, r2
004308  0b614120  mul.f.rn r2, r2, r4
00430c  63020feb  loadli.w r4,  -2688(r30)
004310  33120218  bfloat2float.rn r4, r4
004314  0b614110  add.f.rn r2, r2, r4
004318  17020101  and r4, r2, r16
00431c  13024504  setlt.u r4, r10, r4
004320  372002fa  beq r4, zero, -3064
004324  9710f100  or r1, r2, r15
004328  5b82feff  j -3056
00432c  9f0e0fe1  addli sp, r30, -3968
004330  9f8e0e1f  addli sp, sp, 3968
004334  00a00300  mfence { lm, sm, gm }
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
004370  00100000  exit
004374  00100000  exit
004378  00100000  exit
00437c  00100000  exit
004380  00100000  exit
004384  00100000  exit
004388  00100000  exit
00438c  00100000  exit
004390  00100000  exit
004394  00100000  exit
004398  00100000  exit
00439c  00100000  exit
0043a0  00100000  exit
0043a4  00100000  exit
0043a8  00100000  exit
0043ac  00100000  exit
0043b0  00100000  exit
0043b4  00100000  exit
0043b8  00100000  exit
0043bc  00100000  exit
0043c0  00100000  exit
0043c4  00100000  exit
0043c8  00100000  exit
0043cc  00100000  exit
0043d0  00100000  exit
0043d4  00100000  exit
0043d8  00100000  exit
0043dc  00100000  exit
0043e0  00100000  exit
0043e4  00100000  exit
0043e8  00100000  exit
0043ec  00100000  exit
0043f0  00100000  exit
0043f4  00100000  exit
0043f8  00100000  exit
0043fc  00100000  exit
004400  00100000  exit
004404  00100000  exit
004408  00100000  exit
00440c  00100000  exit
004410  00100000  exit
004414  00100000  exit
004418  00100000  exit
00441c  00100000  exit
004420  00100000  exit
004424  00100000  exit
004428  00100000  exit
00442c  00100000  exit
004430  00100000  exit
004434  00100000  exit
004438  00100000  exit
00443c  00100000  exit
004440  00100000  exit
004444  00100000  exit
004448  00100000  exit
00444c  00100000  exit
004450  00100000  exit
004454  00100000  exit
004458  00100000  exit
00445c  00100000  exit
004460  00100000  exit
004464  00100000  exit
004468  00100000  exit
00446c  00100000  exit
004470  00100000  exit
004474  00100000  exit
004478  00100000  exit
00447c  00100000  exit
004480  00100000  exit
004484  00100000  exit
004488  00100000  exit
00448c  00100000  exit
004490  00100000  exit
004494  00100000  exit
004498  00100000  exit
00449c  00100000  exit
0044a0  00100000  exit
0044a4  00100000  exit
0044a8  00100000  exit
0044ac  00100000  exit
0044b0  00100000  exit
0044b4  00100000  exit
0044b8  00100000  exit
0044bc  00100000  exit
0044c0  00100000  exit
0044c4  00100000  exit
0044c8  00100000  exit
0044cc  00100000  exit
0044d0  00100000  exit
0044d4  00100000  exit
0044d8  00100000  exit
0044dc  00100000  exit
0044e0  00100000  exit
0044e4  00100000  exit
0044e8  00100000  exit
0044ec  00100000  exit
0044f0  00100000  exit
0044f4  00100000  exit
0044f8  00100000  exit
0044fc  00100000  exit
004500  00100000  exit
004504  00100000  exit
004508  00100000  exit
00450c  00100000  exit
004510  00100000  exit
004514  00100000  exit
004518  00100000  exit
00451c  00100000  exit
004520  00100000  exit
004524  00100000  exit
004528  00100000  exit
00452c  00100000  exit
004530  00100000  exit
004534  00100000  exit
004538  00100000  exit
00453c  00100000  exit
004540  00100000  exit
004544  00100000  exit
004548  00100000  exit
00454c  00100000  exit
004550  00100000  exit
004554  00100000  exit
004558  00100000  exit
00455c  00100000  exit
004560  00100000  exit
004564  00100000  exit
004568  00100000  exit
00456c  00100000  exit
004570  00100000  exit
004574  00100000  exit
004578  00100000  exit
