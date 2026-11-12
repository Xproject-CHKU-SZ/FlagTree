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
0000dc  9f8e8edc  addli sp, sp, -4544
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f0e23  addli r30, sp, 4480
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
00011c  e74d9fe0  storeli.w r9, -3876(r30)
000120  73e00400  stores.w zero, 0(r9)
000124  00a00300  mfence { lm, sm, gm }
000128  80a10204  csr_set csr3, r5
00012c  00d00100  sync_group
000130  670e8fe0  storeli.w r8, -3872(r30)
000134  73600400  stores.w zero, 0(r8)
000138  00a00300  mfence { lm, sm, gm }
00013c  e74f5fe8  storeli.w r5, -2820(r30)
000140  80a10204  csr_set csr3, r5
000144  00d00100  sync_group
000148  674b4fdc  storeli.w r4, -4428(r30)
00014c  cb64c222  ble.s r4, r12, 17720
000150  1f021000  addli r4, zero, 8
000154  1f170000  addli r14, zero, 1
000158  2b0b4000  lui r22, 1024
00015c  eea25262  vxor.u.mz vr5{mr1}, vr5, vr5
000160  0b934030  div.s r6, r1, r4
000164  6b528f01  load.d r[5:6], 24(r30)
000168  1b343300  slli r8, r6, 3
00016c  670b6fdc  storeli.w r6, -4432(r30)
000170  6b530f01  load.d r[7:8], 16(r30)
000174  0b958018  sub.s r10, r1, r8
000178  9b807000  andi r1, r1, 7
00017c  6b548f00  load.d r[9:10], 8(r30)
000180  e70f1fe8  storeli.w r1, -2824(r30)
000184  ab700000  lui r1, 7
000188  9b367500  slli r13, r10, 7
00018c  00d50002  load_param_i r10, 1
000190  9b90f0ff  ori r1, r1, 4095
000194  e74aafdc  storeli.w r10, -4436(r30)
000198  1b951600  ori r10, r13, 1
00019c  9b97e600  ori r15, r13, 14
0001a0  e70ddfe0  storeli.w r13, -3880(r30)
0001a4  e74f1fea  storeli.w r1, -2564(r30)
0001a8  ab10833a  lui r1, 239665
0001ac  674dafe0  storeli.w r10, -3884(r30)
0001b0  1b952600  ori r10, r13, 2
0001b4  670affe0  storeli.w r15, -3936(r30)
0001b8  9b90f026  ori r1, r1, 623
0001bc  670dafe0  storeli.w r10, -3888(r30)
0001c0  1b953600  ori r10, r13, 3
0001c4  e7071fe0  storeli.w r1, -3976(r30)
0001c8  9b901601  ori r1, r13, 17
0001cc  e74cafe0  storeli.w r10, -3892(r30)
0001d0  1b954600  ori r10, r13, 4
0001d4  67471fe0  storeli.w r1, -3980(r30)
0001d8  9b902601  ori r1, r13, 18
0001dc  e70cafe0  storeli.w r10, -3896(r30)
0001e0  1b955600  ori r10, r13, 5
0001e4  67071fe0  storeli.w r1, -3984(r30)
0001e8  9b903601  ori r1, r13, 19
0001ec  674cafe0  storeli.w r10, -3900(r30)
0001f0  1b956600  ori r10, r13, 6
0001f4  e7461fe0  storeli.w r1, -3988(r30)
0001f8  9b904601  ori r1, r13, 20
0001fc  670cafe0  storeli.w r10, -3904(r30)
000200  1b957600  ori r10, r13, 7
000204  e7061fe0  storeli.w r1, -3992(r30)
000208  9b905601  ori r1, r13, 21
00020c  e74bafe0  storeli.w r10, -3908(r30)
000210  1b958600  ori r10, r13, 8
000214  67461fe0  storeli.w r1, -3996(r30)
000218  9b906601  ori r1, r13, 22
00021c  e70bafe0  storeli.w r10, -3912(r30)
000220  1b959600  ori r10, r13, 9
000224  67061fe0  storeli.w r1, -4000(r30)
000228  9b907601  ori r1, r13, 23
00022c  674bafe0  storeli.w r10, -3916(r30)
000230  1b95a600  ori r10, r13, 10
000234  e7451fe0  storeli.w r1, -4004(r30)
000238  9b908601  ori r1, r13, 24
00023c  670bafe0  storeli.w r10, -3920(r30)
000240  1b95b600  ori r10, r13, 11
000244  e7051fe0  storeli.w r1, -4008(r30)
000248  9b909601  ori r1, r13, 25
00024c  e74aafe0  storeli.w r10, -3924(r30)
000250  1b95c600  ori r10, r13, 12
000254  67451fe0  storeli.w r1, -4012(r30)
000258  9b90a601  ori r1, r13, 26
00025c  e70aafe0  storeli.w r10, -3928(r30)
000260  1b95d600  ori r10, r13, 13
000264  67051fe0  storeli.w r1, -4016(r30)
000268  9b90b601  ori r1, r13, 27
00026c  674aafe0  storeli.w r10, -3932(r30)
000270  33950628  sext_int2long r[11:12], r13
000274  e7441fe0  storeli.w r1, -4020(r30)
000278  9b90c601  ori r1, r13, 28
00027c  1735e502  sll.d r[11:12], r[11:12], r14
000280  1b97f600  ori r14, r13, 15
000284  e7041fe0  storeli.w r1, -4024(r30)
000288  9b90d601  ori r1, r13, 29
00028c  e749efe0  storeli.w r14, -3940(r30)
000290  0b24a410  add.ul r[9:10], r[9:10], r[11:12]
000294  1f072fe1  addli r14, r30, -3952
000298  0b23a310  add.ul r[7:8], r[7:8], r[11:12]
00029c  0b22a210  add.ul r[5:6], r[5:6], r[11:12]
0002a0  67441fe0  storeli.w r1, -4028(r30)
0002a4  9b90e601  ori r1, r13, 30
0002a8  73308700  store.d r[9:10], 0(r14)
0002ac  1f041fe1  addli r8, r30, -3960
0002b0  67041fe0  storeli.w r1, -4032(r30)
0002b4  9b90f601  ori r1, r13, 31
0002b8  73306400  store.d r[7:8], 0(r8)
0002bc  9f030fe1  addli r7, r30, -3968
0002c0  2bf3ffff  lui r6, 1048575
0002c4  e7431fe0  storeli.w r1, -4036(r30)
0002c8  9b900602  ori r1, r13, 32
0002cc  73b04300  store.d r[5:6], 0(r7)
0002d0  1b1203fe  ori r4, r6, 4064
0002d4  9b920601  ori r5, r13, 16
0002d8  1f030ff4  addli r6, r30, -1536
0002dc  9f030002  addli r7, zero, 256
0002e0  e7031fe0  storeli.w r1, -4040(r30)
0002e4  9b901602  ori r1, r13, 33
0002e8  97814100  and r3, r3, r4
0002ec  e7475fe0  storeli.w r5, -3972(r30)
0002f0  67431fe0  storeli.w r1, -4044(r30)
0002f4  9b902602  ori r1, r13, 34
0002f8  8b912110  add.s r3, r3, r2
0002fc  2bf1ff7f  lui r2, 524287
000300  67031fe0  storeli.w r1, -4048(r30)
000304  9b903602  ori r1, r13, 35
000308  9b15f1ff  ori r11, r2, 4095
00030c  1f010ffa  addli r2, r30, -768
000310  e70e3fe4  storeli.w r3, -3352(r30)
000314  e7421fe0  storeli.w r1, -4052(r30)
000318  9b904602  ori r1, r13, 36
00031c  e7021fe0  storeli.w r1, -4056(r30)
000320  9b905602  ori r1, r13, 37
000324  67421fe0  storeli.w r1, -4060(r30)
000328  9b906602  ori r1, r13, 38
00032c  67021fe0  storeli.w r1, -4064(r30)
000330  9b907602  ori r1, r13, 39
000334  e7411fe0  storeli.w r1, -4068(r30)
000338  9b908602  ori r1, r13, 40
00033c  e7011fe0  storeli.w r1, -4072(r30)
000340  9b909602  ori r1, r13, 41
000344  67411fe0  storeli.w r1, -4076(r30)
000348  9b90a602  ori r1, r13, 42
00034c  67011fe0  storeli.w r1, -4080(r30)
000350  9b90b602  ori r1, r13, 43
000354  e7401fe0  storeli.w r1, -4084(r30)
000358  9b90c602  ori r1, r13, 44
00035c  e7001fe0  storeli.w r1, -4088(r30)
000360  9b90d602  ori r1, r13, 45
000364  67401fe0  storeli.w r1, -4092(r30)
000368  9b90e602  ori r1, r13, 46
00036c  67001fe0  storeli.w r1, -4096(r30)
000370  9b90f602  ori r1, r13, 47
000374  e74f1fde  storeli.w r1, -4100(r30)
000378  9b900603  ori r1, r13, 48
00037c  e70f1fde  storeli.w r1, -4104(r30)
000380  9b901603  ori r1, r13, 49
000384  674f1fde  storeli.w r1, -4108(r30)
000388  9b902603  ori r1, r13, 50
00038c  670f1fde  storeli.w r1, -4112(r30)
000390  9b903603  ori r1, r13, 51
000394  e74e1fde  storeli.w r1, -4116(r30)
000398  9b904603  ori r1, r13, 52
00039c  e70e1fde  storeli.w r1, -4120(r30)
0003a0  9b905603  ori r1, r13, 53
0003a4  674e1fde  storeli.w r1, -4124(r30)
0003a8  9b906603  ori r1, r13, 54
0003ac  670e1fde  storeli.w r1, -4128(r30)
0003b0  9b907603  ori r1, r13, 55
0003b4  e74d1fde  storeli.w r1, -4132(r30)
0003b8  9b908603  ori r1, r13, 56
0003bc  e70d1fde  storeli.w r1, -4136(r30)
0003c0  9b909603  ori r1, r13, 57
0003c4  674d1fde  storeli.w r1, -4140(r30)
0003c8  9b90a603  ori r1, r13, 58
0003cc  670d1fde  storeli.w r1, -4144(r30)
0003d0  9b90b603  ori r1, r13, 59
0003d4  e74c1fde  storeli.w r1, -4148(r30)
0003d8  9b90c603  ori r1, r13, 60
0003dc  e70c1fde  storeli.w r1, -4152(r30)
0003e0  9b90d603  ori r1, r13, 61
0003e4  674c1fde  storeli.w r1, -4156(r30)
0003e8  9b90e603  ori r1, r13, 62
0003ec  670c1fde  storeli.w r1, -4160(r30)
0003f0  9b90f603  ori r1, r13, 63
0003f4  e74b1fde  storeli.w r1, -4164(r30)
0003f8  9b900604  ori r1, r13, 64
0003fc  e70b1fde  storeli.w r1, -4168(r30)
000400  9b901604  ori r1, r13, 65
000404  674b1fde  storeli.w r1, -4172(r30)
000408  9b902604  ori r1, r13, 66
00040c  670b1fde  storeli.w r1, -4176(r30)
000410  9b903604  ori r1, r13, 67
000414  e74a1fde  storeli.w r1, -4180(r30)
000418  9b904604  ori r1, r13, 68
00041c  e70a1fde  storeli.w r1, -4184(r30)
000420  9b905604  ori r1, r13, 69
000424  674a1fde  storeli.w r1, -4188(r30)
000428  9b906604  ori r1, r13, 70
00042c  670a1fde  storeli.w r1, -4192(r30)
000430  9b907604  ori r1, r13, 71
000434  e7491fde  storeli.w r1, -4196(r30)
000438  9b908604  ori r1, r13, 72
00043c  e7091fde  storeli.w r1, -4200(r30)
000440  9b909604  ori r1, r13, 73
000444  67491fde  storeli.w r1, -4204(r30)
000448  9b90a604  ori r1, r13, 74
00044c  67091fde  storeli.w r1, -4208(r30)
000450  9b90b604  ori r1, r13, 75
000454  e7481fde  storeli.w r1, -4212(r30)
000458  9b90c604  ori r1, r13, 76
00045c  e7081fde  storeli.w r1, -4216(r30)
000460  9b90d604  ori r1, r13, 77
000464  67481fde  storeli.w r1, -4220(r30)
000468  9b90e604  ori r1, r13, 78
00046c  67081fde  storeli.w r1, -4224(r30)
000470  9b90f604  ori r1, r13, 79
000474  e7471fde  storeli.w r1, -4228(r30)
000478  9b900605  ori r1, r13, 80
00047c  e7071fde  storeli.w r1, -4232(r30)
000480  9b901605  ori r1, r13, 81
000484  67471fde  storeli.w r1, -4236(r30)
000488  9b902605  ori r1, r13, 82
00048c  67071fde  storeli.w r1, -4240(r30)
000490  9b903605  ori r1, r13, 83
000494  e7461fde  storeli.w r1, -4244(r30)
000498  9b904605  ori r1, r13, 84
00049c  e7061fde  storeli.w r1, -4248(r30)
0004a0  9b905605  ori r1, r13, 85
0004a4  67461fde  storeli.w r1, -4252(r30)
0004a8  9b906605  ori r1, r13, 86
0004ac  67061fde  storeli.w r1, -4256(r30)
0004b0  9b907605  ori r1, r13, 87
0004b4  e7451fde  storeli.w r1, -4260(r30)
0004b8  9b908605  ori r1, r13, 88
0004bc  e7051fde  storeli.w r1, -4264(r30)
0004c0  9b909605  ori r1, r13, 89
0004c4  67451fde  storeli.w r1, -4268(r30)
0004c8  9b90a605  ori r1, r13, 90
0004cc  67051fde  storeli.w r1, -4272(r30)
0004d0  9b90b605  ori r1, r13, 91
0004d4  e7441fde  storeli.w r1, -4276(r30)
0004d8  9b90c605  ori r1, r13, 92
0004dc  e7041fde  storeli.w r1, -4280(r30)
0004e0  9b90d605  ori r1, r13, 93
0004e4  67441fde  storeli.w r1, -4284(r30)
0004e8  9b90e605  ori r1, r13, 94
0004ec  67041fde  storeli.w r1, -4288(r30)
0004f0  9b90f605  ori r1, r13, 95
0004f4  e7431fde  storeli.w r1, -4292(r30)
0004f8  9b900606  ori r1, r13, 96
0004fc  e7031fde  storeli.w r1, -4296(r30)
000500  9b901606  ori r1, r13, 97
000504  67431fde  storeli.w r1, -4300(r30)
000508  9b902606  ori r1, r13, 98
00050c  67031fde  storeli.w r1, -4304(r30)
000510  9b903606  ori r1, r13, 99
000514  e7421fde  storeli.w r1, -4308(r30)
000518  9b904606  ori r1, r13, 100
00051c  e7021fde  storeli.w r1, -4312(r30)
000520  9b905606  ori r1, r13, 101
000524  67421fde  storeli.w r1, -4316(r30)
000528  9b906606  ori r1, r13, 102
00052c  67021fde  storeli.w r1, -4320(r30)
000530  9b907606  ori r1, r13, 103
000534  e7411fde  storeli.w r1, -4324(r30)
000538  9b908606  ori r1, r13, 104
00053c  e7011fde  storeli.w r1, -4328(r30)
000540  9b909606  ori r1, r13, 105
000544  67411fde  storeli.w r1, -4332(r30)
000548  9b90a606  ori r1, r13, 106
00054c  67011fde  storeli.w r1, -4336(r30)
000550  9b90b606  ori r1, r13, 107
000554  e7401fde  storeli.w r1, -4340(r30)
000558  9b90c606  ori r1, r13, 108
00055c  e7001fde  storeli.w r1, -4344(r30)
000560  9b90d606  ori r1, r13, 109
000564  67401fde  storeli.w r1, -4348(r30)
000568  9b90e606  ori r1, r13, 110
00056c  67001fde  storeli.w r1, -4352(r30)
000570  9b90f606  ori r1, r13, 111
000574  e74f1fdc  storeli.w r1, -4356(r30)
000578  9b900607  ori r1, r13, 112
00057c  e70f1fdc  storeli.w r1, -4360(r30)
000580  9b901607  ori r1, r13, 113
000584  674f1fdc  storeli.w r1, -4364(r30)
000588  9b902607  ori r1, r13, 114
00058c  670f1fdc  storeli.w r1, -4368(r30)
000590  9b903607  ori r1, r13, 115
000594  e74e1fdc  storeli.w r1, -4372(r30)
000598  9b904607  ori r1, r13, 116
00059c  e70e1fdc  storeli.w r1, -4376(r30)
0005a0  9b905607  ori r1, r13, 117
0005a4  674e1fdc  storeli.w r1, -4380(r30)
0005a8  9b906607  ori r1, r13, 118
0005ac  670e1fdc  storeli.w r1, -4384(r30)
0005b0  9b907607  ori r1, r13, 119
0005b4  e74d1fdc  storeli.w r1, -4388(r30)
0005b8  9b908607  ori r1, r13, 120
0005bc  e70d1fdc  storeli.w r1, -4392(r30)
0005c0  9b909607  ori r1, r13, 121
0005c4  674d1fdc  storeli.w r1, -4396(r30)
0005c8  9b90a607  ori r1, r13, 122
0005cc  670d1fdc  storeli.w r1, -4400(r30)
0005d0  9b90b607  ori r1, r13, 123
0005d4  e74c1fdc  storeli.w r1, -4404(r30)
0005d8  9b90c607  ori r1, r13, 124
0005dc  e70c1fdc  storeli.w r1, -4408(r30)
0005e0  9b90d607  ori r1, r13, 125
0005e4  674c1fdc  storeli.w r1, -4412(r30)
0005e8  9b90e607  ori r1, r13, 126
0005ec  670c1fdc  storeli.w r1, -4416(r30)
0005f0  9b90f607  ori r1, r13, 127
0005f4  e74b1fdc  storeli.w r1, -4420(r30)
0005f8  9f802140  addli r1, r3, 8208
0005fc  674e1fe4  storeli.w r1, -3356(r30)
000600  9f000ff8  addli r1, r30, -1024
000604  9fe03000  addli r1, r1, 30
000608  67401fea  storeli.w r1, -2812(r30)
00060c  9f002100  addli r1, r2, 16
000610  67001fea  storeli.w r1, -2816(r30)
000614  db030000  j 28
000618  63067fdd  loadli.w r12,  -4424(r30)
00061c  e3405fdd  loadli.w r1,  -4436(r30)
000620  0b161610  add.s r12, r12, r1
000624  e3406fdd  loadli.w r1,  -4428(r30)
000628  3f201600  blt.s r12, r1, 8
00062c  5b0b0800  j 16472
000630  1f018300  addli r2, r6, 64
000634  e3007f00  loadli.w r1,  56(r30)
000638  e70bcfdc  storeli.w r12, -4424(r30)
00063c  9f110000  addli r3, zero, 1
000640  670e2fe4  storeli.w r2, -3360(r30)
000644  1f010301  addli r2, r6, 128
000648  8b101630  div.s r1, r12, r1
00064c  e74d2fe4  storeli.w r2, -3364(r30)
000650  1f018301  addli r2, r6, 192
000654  e70d2fe4  storeli.w r2, -3368(r30)
000658  1f210300  addli r2, r6, 2
00065c  674d2fe4  storeli.w r2, -3372(r30)
000660  1f410300  addli r2, r6, 4
000664  670d2fe4  storeli.w r2, -3376(r30)
000668  63416f00  loadli.w r2,  52(r30)
00066c  8b902030  div.s r1, r1, r2
000670  1f610300  addli r2, r6, 6
000674  e74c2fe4  storeli.w r2, -3380(r30)
000678  1f011300  addli r2, r6, 8
00067c  e70c2fe4  storeli.w r2, -3384(r30)
000680  1f211300  addli r2, r6, 10
000684  674c2fe4  storeli.w r2, -3388(r30)
000688  1f411300  addli r2, r6, 12
00068c  9bb04000  slli r1, r1, 4
000690  670c2fe4  storeli.w r2, -3392(r30)
000694  1f611300  addli r2, r6, 14
000698  e74b2fe4  storeli.w r2, -3396(r30)
00069c  1f012300  addli r2, r6, 16
0006a0  e70b2fe4  storeli.w r2, -3400(r30)
0006a4  63016fdd  loadli.w r2,  -4432(r30)
0006a8  8b902010  add.s r1, r1, r2
0006ac  674b1fe4  storeli.w r1, -3404(r30)
0006b0  9f202300  addli r1, r6, 18
0006b4  670b1fe4  storeli.w r1, -3408(r30)
0006b8  9f402300  addli r1, r6, 20
0006bc  e74a1fe4  storeli.w r1, -3412(r30)
0006c0  9f602300  addli r1, r6, 22
0006c4  e70a1fe4  storeli.w r1, -3416(r30)
0006c8  9f003300  addli r1, r6, 24
0006cc  674a1fe4  storeli.w r1, -3420(r30)
0006d0  9f203300  addli r1, r6, 26
0006d4  670a1fe4  storeli.w r1, -3424(r30)
0006d8  9f403300  addli r1, r6, 28
0006dc  e7491fe4  storeli.w r1, -3428(r30)
0006e0  9f603300  addli r1, r6, 30
0006e4  e7091fe4  storeli.w r1, -3432(r30)
0006e8  9f004300  addli r1, r6, 32
0006ec  67491fe4  storeli.w r1, -3436(r30)
0006f0  9f204300  addli r1, r6, 34
0006f4  67091fe4  storeli.w r1, -3440(r30)
0006f8  9f404300  addli r1, r6, 36
0006fc  e7481fe4  storeli.w r1, -3444(r30)
000700  9f604300  addli r1, r6, 38
000704  e7081fe4  storeli.w r1, -3448(r30)
000708  9f005300  addli r1, r6, 40
00070c  67481fe4  storeli.w r1, -3452(r30)
000710  9f205300  addli r1, r6, 42
000714  67081fe4  storeli.w r1, -3456(r30)
000718  9f405300  addli r1, r6, 44
00071c  e7471fe4  storeli.w r1, -3460(r30)
000720  9f605300  addli r1, r6, 46
000724  e7071fe4  storeli.w r1, -3464(r30)
000728  9f006300  addli r1, r6, 48
00072c  67471fe4  storeli.w r1, -3468(r30)
000730  9f206300  addli r1, r6, 50
000734  67071fe4  storeli.w r1, -3472(r30)
000738  9f406300  addli r1, r6, 52
00073c  e7461fe4  storeli.w r1, -3476(r30)
000740  9f606300  addli r1, r6, 54
000744  e7061fe4  storeli.w r1, -3480(r30)
000748  9f007300  addli r1, r6, 56
00074c  67461fe4  storeli.w r1, -3484(r30)
000750  9f207300  addli r1, r6, 58
000754  67061fe4  storeli.w r1, -3488(r30)
000758  9f407300  addli r1, r6, 60
00075c  e7451fe4  storeli.w r1, -3492(r30)
000760  9f607300  addli r1, r6, 62
000764  e7051fe4  storeli.w r1, -3496(r30)
000768  9f208300  addli r1, r6, 66
00076c  67451fe4  storeli.w r1, -3500(r30)
000770  9f408300  addli r1, r6, 68
000774  67051fe4  storeli.w r1, -3504(r30)
000778  9f608300  addli r1, r6, 70
00077c  e7441fe4  storeli.w r1, -3508(r30)
000780  9f009300  addli r1, r6, 72
000784  e7041fe4  storeli.w r1, -3512(r30)
000788  9f209300  addli r1, r6, 74
00078c  67441fe4  storeli.w r1, -3516(r30)
000790  9f409300  addli r1, r6, 76
000794  67041fe4  storeli.w r1, -3520(r30)
000798  9f609300  addli r1, r6, 78
00079c  e7431fe4  storeli.w r1, -3524(r30)
0007a0  9f00a300  addli r1, r6, 80
0007a4  e7031fe4  storeli.w r1, -3528(r30)
0007a8  9f20a300  addli r1, r6, 82
0007ac  67431fe4  storeli.w r1, -3532(r30)
0007b0  9f40a300  addli r1, r6, 84
0007b4  67031fe4  storeli.w r1, -3536(r30)
0007b8  9f60a300  addli r1, r6, 86
0007bc  e7421fe4  storeli.w r1, -3540(r30)
0007c0  9f00b300  addli r1, r6, 88
0007c4  e7021fe4  storeli.w r1, -3544(r30)
0007c8  9f20b300  addli r1, r6, 90
0007cc  67421fe4  storeli.w r1, -3548(r30)
0007d0  9f40b300  addli r1, r6, 92
0007d4  67021fe4  storeli.w r1, -3552(r30)
0007d8  9f60b300  addli r1, r6, 94
0007dc  e7411fe4  storeli.w r1, -3556(r30)
0007e0  9f00c300  addli r1, r6, 96
0007e4  e7011fe4  storeli.w r1, -3560(r30)
0007e8  9f20c300  addli r1, r6, 98
0007ec  67411fe4  storeli.w r1, -3564(r30)
0007f0  9f40c300  addli r1, r6, 100
0007f4  67011fe4  storeli.w r1, -3568(r30)
0007f8  9f60c300  addli r1, r6, 102
0007fc  e7401fe4  storeli.w r1, -3572(r30)
000800  9f00d300  addli r1, r6, 104
000804  e7001fe4  storeli.w r1, -3576(r30)
000808  9f20d300  addli r1, r6, 106
00080c  67401fe4  storeli.w r1, -3580(r30)
000810  9f40d300  addli r1, r6, 108
000814  67001fe4  storeli.w r1, -3584(r30)
000818  9f60d300  addli r1, r6, 110
00081c  e74f1fe2  storeli.w r1, -3588(r30)
000820  9f00e300  addli r1, r6, 112
000824  e70f1fe2  storeli.w r1, -3592(r30)
000828  9f20e300  addli r1, r6, 114
00082c  674f1fe2  storeli.w r1, -3596(r30)
000830  9f40e300  addli r1, r6, 116
000834  670f1fe2  storeli.w r1, -3600(r30)
000838  9f60e300  addli r1, r6, 118
00083c  e74e1fe2  storeli.w r1, -3604(r30)
000840  9f00f300  addli r1, r6, 120
000844  e70e1fe2  storeli.w r1, -3608(r30)
000848  9f20f300  addli r1, r6, 122
00084c  674e1fe2  storeli.w r1, -3612(r30)
000850  9f40f300  addli r1, r6, 124
000854  670e1fe2  storeli.w r1, -3616(r30)
000858  9f60f300  addli r1, r6, 126
00085c  e74d1fe2  storeli.w r1, -3620(r30)
000860  9f200301  addli r1, r6, 130
000864  e70d1fe2  storeli.w r1, -3624(r30)
000868  9f400301  addli r1, r6, 132
00086c  674d1fe2  storeli.w r1, -3628(r30)
000870  9f600301  addli r1, r6, 134
000874  670d1fe2  storeli.w r1, -3632(r30)
000878  9f001301  addli r1, r6, 136
00087c  e74c1fe2  storeli.w r1, -3636(r30)
000880  9f201301  addli r1, r6, 138
000884  e70c1fe2  storeli.w r1, -3640(r30)
000888  9f401301  addli r1, r6, 140
00088c  674c1fe2  storeli.w r1, -3644(r30)
000890  9f601301  addli r1, r6, 142
000894  670c1fe2  storeli.w r1, -3648(r30)
000898  9f002301  addli r1, r6, 144
00089c  e74b1fe2  storeli.w r1, -3652(r30)
0008a0  9f202301  addli r1, r6, 146
0008a4  e70b1fe2  storeli.w r1, -3656(r30)
0008a8  9f402301  addli r1, r6, 148
0008ac  674b1fe2  storeli.w r1, -3660(r30)
0008b0  9f602301  addli r1, r6, 150
0008b4  670b1fe2  storeli.w r1, -3664(r30)
0008b8  9f003301  addli r1, r6, 152
0008bc  e74a1fe2  storeli.w r1, -3668(r30)
0008c0  9f203301  addli r1, r6, 154
0008c4  e70a1fe2  storeli.w r1, -3672(r30)
0008c8  9f403301  addli r1, r6, 156
0008cc  674a1fe2  storeli.w r1, -3676(r30)
0008d0  9f603301  addli r1, r6, 158
0008d4  670a1fe2  storeli.w r1, -3680(r30)
0008d8  9f004301  addli r1, r6, 160
0008dc  e7491fe2  storeli.w r1, -3684(r30)
0008e0  9f204301  addli r1, r6, 162
0008e4  e7091fe2  storeli.w r1, -3688(r30)
0008e8  9f404301  addli r1, r6, 164
0008ec  67491fe2  storeli.w r1, -3692(r30)
0008f0  9f604301  addli r1, r6, 166
0008f4  67091fe2  storeli.w r1, -3696(r30)
0008f8  9f005301  addli r1, r6, 168
0008fc  e7481fe2  storeli.w r1, -3700(r30)
000900  9f205301  addli r1, r6, 170
000904  e7081fe2  storeli.w r1, -3704(r30)
000908  9f405301  addli r1, r6, 172
00090c  67481fe2  storeli.w r1, -3708(r30)
000910  9f605301  addli r1, r6, 174
000914  67081fe2  storeli.w r1, -3712(r30)
000918  9f006301  addli r1, r6, 176
00091c  e7471fe2  storeli.w r1, -3716(r30)
000920  9f206301  addli r1, r6, 178
000924  e7071fe2  storeli.w r1, -3720(r30)
000928  9f406301  addli r1, r6, 180
00092c  67471fe2  storeli.w r1, -3724(r30)
000930  9f606301  addli r1, r6, 182
000934  67071fe2  storeli.w r1, -3728(r30)
000938  9f007301  addli r1, r6, 184
00093c  e7461fe2  storeli.w r1, -3732(r30)
000940  9f207301  addli r1, r6, 186
000944  e7061fe2  storeli.w r1, -3736(r30)
000948  9f407301  addli r1, r6, 188
00094c  67461fe2  storeli.w r1, -3740(r30)
000950  9f607301  addli r1, r6, 190
000954  67061fe2  storeli.w r1, -3744(r30)
000958  9f208301  addli r1, r6, 194
00095c  e7451fe2  storeli.w r1, -3748(r30)
000960  9f408301  addli r1, r6, 196
000964  e7051fe2  storeli.w r1, -3752(r30)
000968  9f608301  addli r1, r6, 198
00096c  67451fe2  storeli.w r1, -3756(r30)
000970  9f009301  addli r1, r6, 200
000974  67051fe2  storeli.w r1, -3760(r30)
000978  9f209301  addli r1, r6, 202
00097c  e7441fe2  storeli.w r1, -3764(r30)
000980  9f409301  addli r1, r6, 204
000984  e7041fe2  storeli.w r1, -3768(r30)
000988  9f609301  addli r1, r6, 206
00098c  67441fe2  storeli.w r1, -3772(r30)
000990  9f00a301  addli r1, r6, 208
000994  67041fe2  storeli.w r1, -3776(r30)
000998  9f20a301  addli r1, r6, 210
00099c  e7431fe2  storeli.w r1, -3780(r30)
0009a0  9f40a301  addli r1, r6, 212
0009a4  e7031fe2  storeli.w r1, -3784(r30)
0009a8  9f60a301  addli r1, r6, 214
0009ac  67431fe2  storeli.w r1, -3788(r30)
0009b0  9f00b301  addli r1, r6, 216
0009b4  67031fe2  storeli.w r1, -3792(r30)
0009b8  9f20b301  addli r1, r6, 218
0009bc  e7421fe2  storeli.w r1, -3796(r30)
0009c0  9f40b301  addli r1, r6, 220
0009c4  e7021fe2  storeli.w r1, -3800(r30)
0009c8  9f60b301  addli r1, r6, 222
0009cc  67421fe2  storeli.w r1, -3804(r30)
0009d0  9f00c301  addli r1, r6, 224
0009d4  67021fe2  storeli.w r1, -3808(r30)
0009d8  9f20c301  addli r1, r6, 226
0009dc  e7411fe2  storeli.w r1, -3812(r30)
0009e0  9f40c301  addli r1, r6, 228
0009e4  e7011fe2  storeli.w r1, -3816(r30)
0009e8  9f60c301  addli r1, r6, 230
0009ec  67411fe2  storeli.w r1, -3820(r30)
0009f0  9f00d301  addli r1, r6, 232
0009f4  67011fe2  storeli.w r1, -3824(r30)
0009f8  9f20d301  addli r1, r6, 234
0009fc  e7401fe2  storeli.w r1, -3828(r30)
000a00  9f40d301  addli r1, r6, 236
000a04  e7001fe2  storeli.w r1, -3832(r30)
000a08  9f60d301  addli r1, r6, 238
000a0c  67401fe2  storeli.w r1, -3836(r30)
000a10  9f00e301  addli r1, r6, 240
000a14  67001fe2  storeli.w r1, -3840(r30)
000a18  9f20e301  addli r1, r6, 242
000a1c  e74f1fe0  storeli.w r1, -3844(r30)
000a20  9f40e301  addli r1, r6, 244
000a24  e70f1fe0  storeli.w r1, -3848(r30)
000a28  9f60e301  addli r1, r6, 246
000a2c  674f1fe0  storeli.w r1, -3852(r30)
000a30  9f00f301  addli r1, r6, 248
000a34  670f1fe0  storeli.w r1, -3856(r30)
000a38  9f20f301  addli r1, r6, 250
000a3c  e74e1fe0  storeli.w r1, -3860(r30)
000a40  9f40f301  addli r1, r6, 252
000a44  e70e1fe0  storeli.w r1, -3864(r30)
000a48  9f60f301  addli r1, r6, 254
000a4c  674e1fe0  storeli.w r1, -3868(r30)
000a50  9f000000  addli r1, zero, 0
000a54  00a00000  mfence { lm }
000a58  db4d0200  j 4716
000a5c  e3402fe6  loadli.w r1,  -3308(r30)
000a60  9f010feb  addli r3, r30, -2688
000a64  1f02dfe9  addli r4, r30, -2840
000a68  1f050ff4  addli r10, r30, -1536
000a6c  1f1c0000  addli r24, zero, 1
000a70  6b5a0200  load.d r[21:22], 0(r4)
000a74  1f220000  addli r4, zero, 2
000a78  b39d0028  sext_int2long r[28:29], r1
000a7c  e3002fe6  loadli.w r1,  -3312(r30)
000a80  b39c0028  sext_int2long r[26:27], r1
000a84  e3401fe6  loadli.w r1,  -3316(r30)
000a88  97bc8c03  sll.d r[26:27], r[26:27], r24
000a8c  339b0028  sext_int2long r[23:24], r1
000a90  e3001fe6  loadli.w r1,  -3320(r30)
000a94  173b8b03  sll.d r[23:24], r[23:24], r24
000a98  33990028  sext_int2long r[19:20], r1
000a9c  e3400fe6  loadli.w r1,  -3324(r30)
000aa0  17398903  sll.d r[19:20], r[19:20], r24
000aa4  33980028  sext_int2long r[17:18], r1
000aa8  e3000fe6  loadli.w r1,  -3328(r30)
000aac  17388803  sll.d r[17:18], r[17:18], r24
000ab0  33970028  sext_int2long r[15:16], r1
000ab4  e340ffe5  loadli.w r1,  -3332(r30)
000ab8  17378703  sll.d r[15:16], r[15:16], r24
000abc  33960028  sext_int2long r[13:14], r1
000ac0  e300ffe5  loadli.w r1,  -3336(r30)
000ac4  17368603  sll.d r[13:14], r[13:14], r24
000ac8  33940028  sext_int2long r[9:10], r1
000acc  e340efe5  loadli.w r1,  -3340(r30)
000ad0  17348403  sll.d r[9:10], r[9:10], r24
000ad4  33930028  sext_int2long r[7:8], r1
000ad8  e300efe5  loadli.w r1,  -3344(r30)
000adc  17338303  sll.d r[7:8], r[7:8], r24
000ae0  b3900028  sext_int2long r[2:3], r1
000ae4  73b01100  store.d r[2:3], 0(r3)
000ae8  e340dfe5  loadli.w r1,  -3348(r30)
000aec  9f01efeb  addli r3, r30, -2576
000af0  b3900028  sext_int2long r[2:3], r1
000af4  73b01100  store.d r[2:3], 0(r3)
000af8  eb500f02  load.d r[2:3], 32(r30)
000afc  ab0100f0  lui r3, 983040
000b00  97113200  or r3, r4, r3
000b04  0baa4011  add.ul r[21:22], r[2:3], r[21:22]
000b08  ff31aa00  s_lm2gm r3, r10, 0(r[21:22])
000b0c  63053fe6  loadli.w r10,  -3304(r30)
000b10  17ba8d03  sll.d r[21:22], r[28:29], r24
000b14  ab0100f0  lui r3, 983040
000b18  8bad4011  add.ul r[28:29], r[2:3], r[21:22]
000b1c  97113200  or r3, r4, r3
000b20  331a0528  sext_int2long r[21:22], r10
000b24  6345afe5  loadli.w r10,  -3372(r30)
000b28  173a8a03  sll.d r[21:22], r[21:22], r24
000b2c  ffb1ad00  s_lm2gm r3, r10, 0(r[28:29])
000b30  63453fe6  loadli.w r10,  -3300(r30)
000b34  ab0100f0  lui r3, 983040
000b38  8bad9011  add.ul r[28:29], r[2:3], r[26:27]
000b3c  97113200  or r3, r4, r3
000b40  b31c0528  sext_int2long r[26:27], r10
000b44  6305afe5  loadli.w r10,  -3376(r30)
000b48  ffb1ad00  s_lm2gm r3, r10, 0(r[28:29])
000b4c  63054fe6  loadli.w r10,  -3296(r30)
000b50  ab0100f0  lui r3, 983040
000b54  8bad6011  add.ul r[28:29], r[2:3], r[23:24]
000b58  97113200  or r3, r4, r3
000b5c  331b0528  sext_int2long r[23:24], r10
000b60  63459fe5  loadli.w r10,  -3380(r30)
000b64  ffb1ad00  s_lm2gm r3, r10, 0(r[28:29])
000b68  63454fe6  loadli.w r10,  -3292(r30)
000b6c  ab0100f0  lui r3, 983040
000b70  8bad2011  add.ul r[28:29], r[2:3], r[19:20]
000b74  9f290000  addli r19, zero, 2
000b78  1f09ffea  addli r18, r30, -2696
000b7c  97113200  or r3, r4, r3
000b80  33120528  sext_int2long r[5:6], r10
000b84  1f05ffea  addli r10, r30, -2696
000b88  73304500  store.d r[5:6], 0(r10)
000b8c  63059fe5  loadli.w r10,  -3384(r30)
000b90  ffb1ad00  s_lm2gm r3, r10, 0(r[28:29])
000b94  63055fe6  loadli.w r10,  -3288(r30)
000b98  ab0100f0  lui r3, 983040
000b9c  8bad0011  add.ul r[28:29], r[2:3], r[17:18]
000ba0  97913900  or r3, r19, r3
000ba4  33180528  sext_int2long r[17:18], r10
000ba8  63458fe5  loadli.w r10,  -3388(r30)
000bac  ffb1ad00  s_lm2gm r3, r10, 0(r[28:29])
000bb0  63455fe6  loadli.w r10,  -3284(r30)
000bb4  ab0100f0  lui r3, 983040
000bb8  8bade010  add.ul r[28:29], r[2:3], r[15:16]
000bbc  97913900  or r3, r19, r3
000bc0  33170528  sext_int2long r[15:16], r10
000bc4  63058fe5  loadli.w r10,  -3392(r30)
000bc8  ffb1ad00  s_lm2gm r3, r10, 0(r[28:29])
000bcc  63056fe6  loadli.w r10,  -3280(r30)
000bd0  ab0100f0  lui r3, 983040
000bd4  8badc010  add.ul r[28:29], r[2:3], r[13:14]
000bd8  27860000  addli.d r[13:14], r[2:3], 0
000bdc  97913900  or r3, r19, r3
000be0  33120528  sext_int2long r[5:6], r10
000be4  1f05efea  addli r10, r30, -2704
000be8  73304500  store.d r[5:6], 0(r10)
000bec  63457fe5  loadli.w r10,  -3396(r30)
000bf0  9f020feb  addli r5, r30, -2688
000bf4  ffb1ad00  s_lm2gm r3, r10, 0(r[28:29])
000bf8  ab0100f0  lui r3, 983040
000bfc  63057fe5  loadli.w r10,  -3400(r30)
000c00  8bad8010  add.ul r[28:29], r[2:3], r[9:10]
000c04  63446fe6  loadli.w r8,  -3276(r30)
000c08  97913900  or r3, r19, r3
000c0c  33140428  sext_int2long r[9:10], r8
000c10  ffb1ad00  s_lm2gm r3, r10, 0(r[28:29])
000c14  ab0100f0  lui r3, 983040
000c18  63056fe5  loadli.w r10,  -3408(r30)
000c1c  8bad6010  add.ul r[28:29], r[2:3], r[7:8]
000c20  63037fe6  loadli.w r6,  -3272(r30)
000c24  97913900  or r3, r19, r3
000c28  33130328  sext_int2long r[7:8], r6
000c2c  ffb1ad00  s_lm2gm r3, r10, 0(r[28:29])
000c30  ebd10200  load.d r[4:5], 0(r5)
000c34  ab0200f0  lui r5, 983040
000c38  63455fe5  loadli.w r10,  -3412(r30)
000c3c  97925900  or r5, r19, r5
000c40  97b18103  sll.d r[4:5], r[4:5], r24
000c44  8bad3010  add.ul r[28:29], r[2:3], r[4:5]
000c48  e3417fe6  loadli.w r3,  -3268(r30)
000c4c  ffb2ad00  s_lm2gm r5, r10, 0(r[28:29])
000c50  9f02efeb  addli r5, r30, -2576
000c54  1f05efeb  addli r10, r30, -2576
000c58  b3910128  sext_int2long r[4:5], r3
000c5c  ebd00200  load.d r[2:3], 0(r5)
000c60  ab0200f0  lui r5, 983040
000c64  97925900  or r5, r19, r5
000c68  97b08003  sll.d r[2:3], r[2:3], r24
000c6c  8b2d1610  add.ul r[28:29], r[13:14], r[2:3]
000c70  e3008fe6  loadli.w r1,  -3264(r30)
000c74  b3900028  sext_int2long r[2:3], r1
000c78  73301500  store.d r[2:3], 0(r10)
000c7c  63055fe5  loadli.w r10,  -3416(r30)
000c80  8b204611  add.ul r[2:3], r[13:14], r[21:22]
000c84  ffb2ad00  s_lm2gm r5, r10, 0(r[28:29])
000c88  63458fe6  loadli.w r10,  -3260(r30)
000c8c  ab0200f0  lui r5, 983040
000c90  1f1e0000  addli r28, zero, 1
000c94  97925900  or r5, r19, r5
000c98  17bccc03  sll.d r[25:26], r[26:27], r28
000c9c  173bcb03  sll.d r[23:24], r[23:24], r28
000ca0  1738c803  sll.d r[17:18], r[17:18], r28
000ca4  1737c703  sll.d r[15:16], r[15:16], r28
000ca8  1734c403  sll.d r[9:10], r[9:10], r28
000cac  97b1c103  sll.d r[4:5], r[4:5], r28
000cb0  331a0528  sext_int2long r[21:22], r10
000cb4  63454fe5  loadli.w r10,  -3420(r30)
000cb8  0b2d8611  add.ul r[27:28], r[13:14], r[25:26]
000cbc  173aca03  sll.d r[21:22], r[21:22], r28
000cc0  ffb2a000  s_lm2gm r5, r10, 0(r[2:3])
000cc4  63059fe6  loadli.w r10,  -3256(r30)
000cc8  ab0200f0  lui r5, 983040
000ccc  97925900  or r5, r19, r5
000cd0  331c0528  sext_int2long r[25:26], r10
000cd4  63054fe5  loadli.w r10,  -3424(r30)
000cd8  173ccc03  sll.d r[25:26], r[25:26], r28
000cdc  ff32ad00  s_lm2gm r5, r10, 0(r[27:28])
000ce0  63459fe6  loadli.w r10,  -3252(r30)
000ce4  ab0200f0  lui r5, 983040
000ce8  0b2d6611  add.ul r[27:28], r[13:14], r[23:24]
000cec  97925900  or r5, r19, r5
000cf0  331b0528  sext_int2long r[23:24], r10
000cf4  63453fe5  loadli.w r10,  -3428(r30)
000cf8  173bcb03  sll.d r[23:24], r[23:24], r28
000cfc  ff32ad00  s_lm2gm r5, r10, 0(r[27:28])
000d00  9f02ffea  addli r5, r30, -2696
000d04  6305afe6  loadli.w r10,  -3248(r30)
000d08  ebd00200  load.d r[2:3], 0(r5)
000d0c  ab0200f0  lui r5, 983040
000d10  97925900  or r5, r19, r5
000d14  97b0c003  sll.d r[2:3], r[2:3], r28
000d18  0b2d1610  add.ul r[27:28], r[13:14], r[2:3]
000d1c  b3100528  sext_int2long r[2:3], r10
000d20  1f050feb  addli r10, r30, -2688
000d24  73301500  store.d r[2:3], 0(r10)
000d28  63053fe5  loadli.w r10,  -3432(r30)
000d2c  ff32ad00  s_lm2gm r5, r10, 0(r[27:28])
000d30  6345afe6  loadli.w r10,  -3244(r30)
000d34  ab0200f0  lui r5, 983040
000d38  0b2d0611  add.ul r[27:28], r[13:14], r[17:18]
000d3c  97925900  or r5, r19, r5
000d40  33180528  sext_int2long r[17:18], r10
000d44  63452fe5  loadli.w r10,  -3436(r30)
000d48  1738c803  sll.d r[17:18], r[17:18], r28
000d4c  ff32ad00  s_lm2gm r5, r10, 0(r[27:28])
000d50  6305bfe6  loadli.w r10,  -3240(r30)
000d54  ab0200f0  lui r5, 983040
000d58  0b2de610  add.ul r[27:28], r[13:14], r[15:16]
000d5c  97925900  or r5, r19, r5
000d60  33170528  sext_int2long r[15:16], r10
000d64  63052fe5  loadli.w r10,  -3440(r30)
000d68  1737c703  sll.d r[15:16], r[15:16], r28
000d6c  ff32ad00  s_lm2gm r5, r10, 0(r[27:28])
000d70  9f02efea  addli r5, r30, -2704
000d74  6345bfe6  loadli.w r10,  -3236(r30)
000d78  ebd00200  load.d r[2:3], 0(r5)
000d7c  ab0200f0  lui r5, 983040
000d80  97925900  or r5, r19, r5
000d84  97b0c003  sll.d r[2:3], r[2:3], r28
000d88  0b2d1610  add.ul r[27:28], r[13:14], r[2:3]
000d8c  b3100528  sext_int2long r[2:3], r10
000d90  1f05ffea  addli r10, r30, -2696
000d94  73301500  store.d r[2:3], 0(r10)
000d98  63451fe5  loadli.w r10,  -3444(r30)
000d9c  ff32ad00  s_lm2gm r5, r10, 0(r[27:28])
000da0  ab0200f0  lui r5, 983040
000da4  63051fe5  loadli.w r10,  -3448(r30)
000da8  0b2d8610  add.ul r[27:28], r[13:14], r[9:10]
000dac  6304cfe6  loadli.w r8,  -3232(r30)
000db0  97925900  or r5, r19, r5
000db4  33140428  sext_int2long r[9:10], r8
000db8  ff32ad00  s_lm2gm r5, r10, 0(r[27:28])
000dbc  9732c303  sll.d r[6:7], r[7:8], r28
000dc0  ab0300f0  lui r7, 983040
000dc4  63450fe5  loadli.w r10,  -3452(r30)
000dc8  0b2d5610  add.ul r[27:28], r[13:14], r[6:7]
000dcc  97937900  or r7, r19, r7
000dd0  e342cfe6  loadli.w r5,  -3228(r30)
000dd4  ff33ad00  s_lm2gm r7, r10, 0(r[27:28])
000dd8  ab0300f0  lui r7, 983040
000ddc  63050fe5  loadli.w r10,  -3456(r30)
000de0  0b2d3610  add.ul r[27:28], r[13:14], r[4:5]
000de4  e301dfe6  loadli.w r3,  -3224(r30)
000de8  b3920228  sext_int2long r[6:7], r5
000dec  97937900  or r7, r19, r7
000df0  97b2c203  sll.d r[6:7], r[6:7], r28
000df4  b3910128  sext_int2long r[4:5], r3
000df8  ff33ad00  s_lm2gm r7, r10, 0(r[27:28])
000dfc  9f03efeb  addli r7, r30, -2576
000e00  1f05efea  addli r10, r30, -2704
000e04  97b1c103  sll.d r[4:5], r[4:5], r28
000e08  ebd00300  load.d r[2:3], 0(r7)
000e0c  ab0300f0  lui r7, 983040
000e10  97937900  or r7, r19, r7
000e14  97b0c003  sll.d r[2:3], r[2:3], r28
000e18  0b2d1610  add.ul r[27:28], r[13:14], r[2:3]
000e1c  e340dfe6  loadli.w r1,  -3220(r30)
000e20  b3900028  sext_int2long r[2:3], r1
000e24  73301500  store.d r[2:3], 0(r10)
000e28  6345ffe4  loadli.w r10,  -3460(r30)
000e2c  9f000feb  addli r1, r30, -2688
000e30  ff33ad00  s_lm2gm r7, r10, 0(r[27:28])
000e34  6305efe6  loadli.w r10,  -3216(r30)
000e38  ab0300f0  lui r7, 983040
000e3c  0b2d4611  add.ul r[27:28], r[13:14], r[21:22]
000e40  97937900  or r7, r19, r7
000e44  331a0528  sext_int2long r[21:22], r10
000e48  6305ffe4  loadli.w r10,  -3464(r30)
000e4c  ff33ad00  s_lm2gm r7, r10, 0(r[27:28])
000e50  6345efe6  loadli.w r10,  -3212(r30)
000e54  ab0300f0  lui r7, 983040
000e58  0b2d8611  add.ul r[27:28], r[13:14], r[25:26]
000e5c  97937900  or r7, r19, r7
000e60  331c0528  sext_int2long r[25:26], r10
000e64  6345efe4  loadli.w r10,  -3468(r30)
000e68  ff33ad00  s_lm2gm r7, r10, 0(r[27:28])
000e6c  6305ffe6  loadli.w r10,  -3208(r30)
000e70  ab0300f0  lui r7, 983040
000e74  0b2d6611  add.ul r[27:28], r[13:14], r[23:24]
000e78  97937900  or r7, r19, r7
000e7c  331b0528  sext_int2long r[23:24], r10
000e80  6305efe4  loadli.w r10,  -3472(r30)
000e84  173bcb03  sll.d r[23:24], r[23:24], r28
000e88  ff33ad00  s_lm2gm r7, r10, 0(r[27:28])
000e8c  6345ffe6  loadli.w r10,  -3204(r30)
000e90  6bdd0000  load.d r[27:28], 0(r1)
000e94  ab0300f0  lui r7, 983040
000e98  97937900  or r7, r19, r7
000e9c  b3100528  sext_int2long r[2:3], r10
000ea0  1f05efeb  addli r10, r30, -2576
000ea4  173dcd03  sll.d r[27:28], r[27:28], r28
000ea8  73301500  store.d r[2:3], 0(r10)
000eac  6345dfe4  loadli.w r10,  -3476(r30)
000eb0  0b2da611  add.ul r[27:28], r[13:14], r[27:28]
000eb4  9f00ffea  addli r1, r30, -2696
000eb8  ff33ad00  s_lm2gm r7, r10, 0(r[27:28])
000ebc  63050fe7  loadli.w r10,  -3200(r30)
000ec0  ab0300f0  lui r7, 983040
000ec4  0b2d0611  add.ul r[27:28], r[13:14], r[17:18]
000ec8  97937900  or r7, r19, r7
000ecc  33180528  sext_int2long r[17:18], r10
000ed0  6305dfe4  loadli.w r10,  -3480(r30)
000ed4  1738c803  sll.d r[17:18], r[17:18], r28
000ed8  ff33ad00  s_lm2gm r7, r10, 0(r[27:28])
000edc  63450fe7  loadli.w r10,  -3196(r30)
000ee0  ab0300f0  lui r7, 983040
000ee4  0b2de610  add.ul r[27:28], r[13:14], r[15:16]
000ee8  97937900  or r7, r19, r7
000eec  33170528  sext_int2long r[15:16], r10
000ef0  6345cfe4  loadli.w r10,  -3484(r30)
000ef4  1737c703  sll.d r[15:16], r[15:16], r28
000ef8  ff33ad00  s_lm2gm r7, r10, 0(r[27:28])
000efc  63051fe7  loadli.w r10,  -3192(r30)
000f00  6bdd0000  load.d r[27:28], 0(r1)
000f04  ab0300f0  lui r7, 983040
000f08  97937900  or r7, r19, r7
000f0c  b3100528  sext_int2long r[2:3], r10
000f10  1f050feb  addli r10, r30, -2688
000f14  173dcd03  sll.d r[27:28], r[27:28], r28
000f18  73301500  store.d r[2:3], 0(r10)
000f1c  6305cfe4  loadli.w r10,  -3488(r30)
000f20  0b2da611  add.ul r[27:28], r[13:14], r[27:28]
000f24  ff33ad00  s_lm2gm r7, r10, 0(r[27:28])
000f28  9733c403  sll.d r[8:9], r[9:10], r28
000f2c  ab0400f0  lui r9, 983040
000f30  6345bfe4  loadli.w r10,  -3492(r30)
000f34  0b2d7610  add.ul r[27:28], r[13:14], r[8:9]
000f38  97949900  or r9, r19, r9
000f3c  e3431fe7  loadli.w r7,  -3188(r30)
000f40  ff34ad00  s_lm2gm r9, r10, 0(r[27:28])
000f44  ab0400f0  lui r9, 983040
000f48  6305bfe4  loadli.w r10,  -3496(r30)
000f4c  0b2d5610  add.ul r[27:28], r[13:14], r[6:7]
000f50  e3022fe7  loadli.w r5,  -3184(r30)
000f54  b3930328  sext_int2long r[8:9], r7
000f58  97949900  or r9, r19, r9
000f5c  97b3c303  sll.d r[8:9], r[8:9], r28
000f60  b3920228  sext_int2long r[6:7], r5
000f64  ff34ad00  s_lm2gm r9, r10, 0(r[27:28])
000f68  ab0400f0  lui r9, 983040
000f6c  6305cfe5  loadli.w r10,  -3360(r30)
000f70  0b2d3610  add.ul r[27:28], r[13:14], r[4:5]
000f74  e3412fe7  loadli.w r3,  -3180(r30)
000f78  97b2c203  sll.d r[6:7], r[6:7], r28
000f7c  97949900  or r9, r19, r9
000f80  b3910128  sext_int2long r[4:5], r3
000f84  ff34ad00  s_lm2gm r9, r10, 0(r[27:28])
000f88  9f04efea  addli r9, r30, -2704
000f8c  6345afe4  loadli.w r10,  -3500(r30)
000f90  97b1c103  sll.d r[4:5], r[4:5], r28
000f94  ebd00400  load.d r[2:3], 0(r9)
000f98  ab0400f0  lui r9, 983040
000f9c  97949900  or r9, r19, r9
000fa0  97b0c003  sll.d r[2:3], r[2:3], r28
000fa4  0b2d1610  add.ul r[27:28], r[13:14], r[2:3]
000fa8  e3003fe7  loadli.w r1,  -3176(r30)
000fac  ff34ad00  s_lm2gm r9, r10, 0(r[27:28])
000fb0  9734ca03  sll.d r[10:11], r[21:22], r28
000fb4  2b0a00f0  lui r20, 983040
000fb8  e30aafe4  loadli.w r21,  -3504(r30)
000fbc  b3900028  sext_int2long r[2:3], r1
000fc0  0b2d9610  add.ul r[27:28], r[13:14], r[10:11]
000fc4  179a4901  or r20, r19, r20
000fc8  e3443fe7  loadli.w r9,  -3172(r30)
000fcc  97b0c003  sll.d r[2:3], r[2:3], r28
000fd0  7f3a5d01  s_lm2gm r20, r21, 0(r[27:28])
000fd4  173acc03  sll.d r[21:22], r[25:26], r28
000fd8  2b0c00f0  lui r24, 983040
000fdc  e34d9fe4  loadli.w r27,  -3508(r30)
000fe0  b3940428  sext_int2long r[10:11], r9
000fe4  8b2c4611  add.ul r[26:27], r[13:14], r[21:22]
000fe8  630a4fe7  loadli.w r20,  -3168(r30)
000fec  179c8901  or r24, r19, r24
000ff0  97b4c403  sll.d r[10:11], r[10:11], r28
000ff4  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
000ff8  2b0c00f0  lui r24, 983040
000ffc  e30d9fe4  loadli.w r27,  -3512(r30)
001000  8b2c6611  add.ul r[26:27], r[13:14], r[23:24]
001004  634b4fe7  loadli.w r22,  -3164(r30)
001008  331a0a28  sext_int2long r[21:22], r20
00100c  179c8901  or r24, r19, r24
001010  73304901  store.d r[21:22], 0(r18)
001014  1f09efeb  addli r18, r30, -2576
001018  331b0b28  sext_int2long r[23:24], r22
00101c  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
001020  2b0c00f0  lui r24, 983040
001024  e34d8fe4  loadli.w r27,  -3516(r30)
001028  6b5a0900  load.d r[21:22], 0(r18)
00102c  63095fe7  loadli.w r18,  -3160(r30)
001030  173bcb03  sll.d r[23:24], r[23:24], r28
001034  179c8901  or r24, r19, r24
001038  973cca03  sll.d r[26:27], r[21:22], r28
00103c  270a0600  addli.d r[21:22], r[13:14], 0
001040  33160928  sext_int2long r[13:14], r18
001044  1f09efeb  addli r18, r30, -2576
001048  8b2c9a11  add.ul r[26:27], r[21:22], r[26:27]
00104c  7330c900  store.d r[13:14], 0(r18)
001050  1f090feb  addli r18, r30, -2688
001054  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
001058  2b0c00f0  lui r24, 983040
00105c  e30d8fe4  loadli.w r27,  -3520(r30)
001060  8b2c0a11  add.ul r[26:27], r[21:22], r[17:18]
001064  6b560900  load.d r[13:14], 0(r18)
001068  63485fe7  loadli.w r16,  -3156(r30)
00106c  179c8901  or r24, r19, r24
001070  1736c603  sll.d r[13:14], r[13:14], r28
001074  33180828  sext_int2long r[17:18], r16
001078  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
00107c  2b0c00f0  lui r24, 983040
001080  e34d7fe4  loadli.w r27,  -3524(r30)
001084  8b2cea10  add.ul r[26:27], r[21:22], r[15:16]
001088  63076fe7  loadli.w r14,  -3152(r30)
00108c  1738c803  sll.d r[17:18], r[17:18], r28
001090  179c8901  or r24, r19, r24
001094  33170728  sext_int2long r[15:16], r14
001098  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
00109c  2b0c00f0  lui r24, 983040
0010a0  e30d7fe4  loadli.w r27,  -3528(r30)
0010a4  8b2cca10  add.ul r[26:27], r[21:22], r[13:14]
0010a8  63466fe7  loadli.w r12,  -3148(r30)
0010ac  1737c703  sll.d r[15:16], r[15:16], r28
0010b0  179c8901  or r24, r19, r24
0010b4  33160628  sext_int2long r[13:14], r12
0010b8  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
0010bc  2b0c00f0  lui r24, 983040
0010c0  e34d6fe4  loadli.w r27,  -3532(r30)
0010c4  8b2c7a10  add.ul r[26:27], r[21:22], r[8:9]
0010c8  e3037fe7  loadli.w r7,  -3144(r30)
0010cc  1736c603  sll.d r[13:14], r[13:14], r28
0010d0  179c8901  or r24, r19, r24
0010d4  b3930328  sext_int2long r[8:9], r7
0010d8  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
0010dc  2b0c00f0  lui r24, 983040
0010e0  e30d6fe4  loadli.w r27,  -3536(r30)
0010e4  8b2c5a10  add.ul r[26:27], r[21:22], r[6:7]
0010e8  e3427fe7  loadli.w r5,  -3140(r30)
0010ec  97b3c303  sll.d r[8:9], r[8:9], r28
0010f0  179c8901  or r24, r19, r24
0010f4  b3920228  sext_int2long r[6:7], r5
0010f8  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
0010fc  2b0c00f0  lui r24, 983040
001100  e34d5fe4  loadli.w r27,  -3540(r30)
001104  8b2c3a10  add.ul r[26:27], r[21:22], r[4:5]
001108  e3018fe7  loadli.w r3,  -3136(r30)
00110c  97b2c203  sll.d r[6:7], r[6:7], r28
001110  179c8901  or r24, r19, r24
001114  b3910128  sext_int2long r[4:5], r3
001118  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
00111c  8b2c1a10  add.ul r[26:27], r[21:22], r[2:3]
001120  e3408fe7  loadli.w r1,  -3132(r30)
001124  2b0c00f0  lui r24, 983040
001128  e30d5fe4  loadli.w r27,  -3544(r30)
00112c  97b1c103  sll.d r[4:5], r[4:5], r28
001130  179c8901  or r24, r19, r24
001134  b3900028  sext_int2long r[2:3], r1
001138  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
00113c  2b0c00f0  lui r24, 983040
001140  e34d4fe4  loadli.w r27,  -3548(r30)
001144  8b2c9a10  add.ul r[26:27], r[21:22], r[10:11]
001148  e3049fe7  loadli.w r9,  -3128(r30)
00114c  73301900  store.d r[2:3], 0(r18)
001150  1f09ffea  addli r18, r30, -2696
001154  179c8901  or r24, r19, r24
001158  eb500900  load.d r[2:3], 0(r18)
00115c  b3940428  sext_int2long r[10:11], r9
001160  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
001164  2b0c00f0  lui r24, 983040
001168  e30d4fe4  loadli.w r27,  -3552(r30)
00116c  97b4c403  sll.d r[10:11], r[10:11], r28
001170  97b0c003  sll.d r[2:3], r[2:3], r28
001174  179c8901  or r24, r19, r24
001178  8b2c1a10  add.ul r[26:27], r[21:22], r[2:3]
00117c  a7000a00  addli.d r[2:3], r[21:22], 0
001180  634a9fe7  loadli.w r20,  -3124(r30)
001184  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
001188  2b0c00f0  lui r24, 983040
00118c  e34d3fe4  loadli.w r27,  -3556(r30)
001190  8bac6011  add.ul r[26:27], r[2:3], r[23:24]
001194  630bafe7  loadli.w r22,  -3120(r30)
001198  331a0a28  sext_int2long r[21:22], r20
00119c  179c8901  or r24, r19, r24
0011a0  73304901  store.d r[21:22], 0(r18)
0011a4  1f09efeb  addli r18, r30, -2576
0011a8  331b0b28  sext_int2long r[23:24], r22
0011ac  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
0011b0  2b0c00f0  lui r24, 983040
0011b4  e30d3fe4  loadli.w r27,  -3560(r30)
0011b8  6b5a0900  load.d r[21:22], 0(r18)
0011bc  6349afe7  loadli.w r18,  -3116(r30)
0011c0  173bcb03  sll.d r[23:24], r[23:24], r28
0011c4  179c8901  or r24, r19, r24
0011c8  973cca03  sll.d r[26:27], r[21:22], r28
0011cc  278a0000  addli.d r[21:22], r[2:3], 0
0011d0  b3100928  sext_int2long r[2:3], r18
0011d4  1f09efeb  addli r18, r30, -2576
0011d8  8b2c9a11  add.ul r[26:27], r[21:22], r[26:27]
0011dc  73301900  store.d r[2:3], 0(r18)
0011e0  1f090feb  addli r18, r30, -2688
0011e4  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
0011e8  2b0c00f0  lui r24, 983040
0011ec  e34d2fe4  loadli.w r27,  -3564(r30)
0011f0  8b2c0a11  add.ul r[26:27], r[21:22], r[17:18]
0011f4  eb500900  load.d r[2:3], 0(r18)
0011f8  6308bfe7  loadli.w r16,  -3112(r30)
0011fc  179c8901  or r24, r19, r24
001200  97b0c003  sll.d r[2:3], r[2:3], r28
001204  33180828  sext_int2long r[17:18], r16
001208  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
00120c  2b0c00f0  lui r24, 983040
001210  e30d2fe4  loadli.w r27,  -3568(r30)
001214  8b2cea10  add.ul r[26:27], r[21:22], r[15:16]
001218  6347bfe7  loadli.w r14,  -3108(r30)
00121c  1738c803  sll.d r[17:18], r[17:18], r28
001220  179c8901  or r24, r19, r24
001224  33170728  sext_int2long r[15:16], r14
001228  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
00122c  2b0c00f0  lui r24, 983040
001230  e34d1fe4  loadli.w r27,  -3572(r30)
001234  8b2cca10  add.ul r[26:27], r[21:22], r[13:14]
001238  6306cfe7  loadli.w r12,  -3104(r30)
00123c  1737c703  sll.d r[15:16], r[15:16], r28
001240  179c8901  or r24, r19, r24
001244  33160628  sext_int2long r[13:14], r12
001248  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
00124c  2b0c00f0  lui r24, 983040
001250  e30d1fe4  loadli.w r27,  -3576(r30)
001254  8b2c7a10  add.ul r[26:27], r[21:22], r[8:9]
001258  e343cfe7  loadli.w r7,  -3100(r30)
00125c  1736c603  sll.d r[13:14], r[13:14], r28
001260  179c8901  or r24, r19, r24
001264  b3930328  sext_int2long r[8:9], r7
001268  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
00126c  2b0c00f0  lui r24, 983040
001270  e34d0fe4  loadli.w r27,  -3580(r30)
001274  8b2c5a10  add.ul r[26:27], r[21:22], r[6:7]
001278  e302dfe7  loadli.w r5,  -3096(r30)
00127c  97b3c303  sll.d r[8:9], r[8:9], r28
001280  179c8901  or r24, r19, r24
001284  b3920228  sext_int2long r[6:7], r5
001288  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
00128c  2b0c00f0  lui r24, 983040
001290  e30d0fe4  loadli.w r27,  -3584(r30)
001294  8b2c3a10  add.ul r[26:27], r[21:22], r[4:5]
001298  e341dfe7  loadli.w r3,  -3092(r30)
00129c  97b2c203  sll.d r[6:7], r[6:7], r28
0012a0  179c8901  or r24, r19, r24
0012a4  b3910128  sext_int2long r[4:5], r3
0012a8  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
0012ac  8b2c1a10  add.ul r[26:27], r[21:22], r[2:3]
0012b0  e300efe7  loadli.w r1,  -3088(r30)
0012b4  2b0c00f0  lui r24, 983040
0012b8  e34dffe3  loadli.w r27,  -3588(r30)
0012bc  97b1c103  sll.d r[4:5], r[4:5], r28
0012c0  179c8901  or r24, r19, r24
0012c4  b3900028  sext_int2long r[2:3], r1
0012c8  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
0012cc  2b0c00f0  lui r24, 983040
0012d0  e30dffe3  loadli.w r27,  -3592(r30)
0012d4  8b2c9a10  add.ul r[26:27], r[21:22], r[10:11]
0012d8  e344efe7  loadli.w r9,  -3084(r30)
0012dc  73301900  store.d r[2:3], 0(r18)
0012e0  1f09ffea  addli r18, r30, -2696
0012e4  179c8901  or r24, r19, r24
0012e8  eb500900  load.d r[2:3], 0(r18)
0012ec  b3940428  sext_int2long r[10:11], r9
0012f0  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
0012f4  2b0c00f0  lui r24, 983040
0012f8  e34defe3  loadli.w r27,  -3596(r30)
0012fc  97b4c403  sll.d r[10:11], r[10:11], r28
001300  97b0c003  sll.d r[2:3], r[2:3], r28
001304  179c8901  or r24, r19, r24
001308  8b2c1a10  add.ul r[26:27], r[21:22], r[2:3]
00130c  a7000a00  addli.d r[2:3], r[21:22], 0
001310  630affe7  loadli.w r20,  -3080(r30)
001314  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
001318  2b0c00f0  lui r24, 983040
00131c  e30defe3  loadli.w r27,  -3600(r30)
001320  8bac6011  add.ul r[26:27], r[2:3], r[23:24]
001324  634bffe7  loadli.w r22,  -3076(r30)
001328  331a0a28  sext_int2long r[21:22], r20
00132c  179c8901  or r24, r19, r24
001330  73304901  store.d r[21:22], 0(r18)
001334  1f0aefeb  addli r20, r30, -2576
001338  9f2a0000  addli r21, zero, 2
00133c  331b0b28  sext_int2long r[23:24], r22
001340  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
001344  2b0c00f0  lui r24, 983040
001348  e34ddfe3  loadli.w r27,  -3604(r30)
00134c  6b590a00  load.d r[19:20], 0(r20)
001350  173bcb03  sll.d r[23:24], r[23:24], r28
001354  179c8a01  or r24, r21, r24
001358  973cc903  sll.d r[26:27], r[19:20], r28
00135c  a7890000  addli.d r[20:21], r[2:3], 0
001360  63090fe8  loadli.w r18,  -3072(r30)
001364  8bac9911  add.ul r[26:27], r[20:21], r[26:27]
001368  b3100928  sext_int2long r[2:3], r18
00136c  1f09efeb  addli r18, r30, -2576
001370  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
001374  2b0c00f0  lui r24, 983040
001378  e30ddfe3  loadli.w r27,  -3608(r30)
00137c  8bac0911  add.ul r[26:27], r[20:21], r[17:18]
001380  63480fe8  loadli.w r16,  -3068(r30)
001384  73301900  store.d r[2:3], 0(r18)
001388  1f090feb  addli r18, r30, -2688
00138c  179c8a01  or r24, r21, r24
001390  eb500900  load.d r[2:3], 0(r18)
001394  33180828  sext_int2long r[17:18], r16
001398  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
00139c  2b0c00f0  lui r24, 983040
0013a0  e34dcfe3  loadli.w r27,  -3612(r30)
0013a4  8bace910  add.ul r[26:27], r[20:21], r[15:16]
0013a8  63071fe8  loadli.w r14,  -3064(r30)
0013ac  1738c803  sll.d r[17:18], r[17:18], r28
0013b0  179c8a01  or r24, r21, r24
0013b4  97b0c003  sll.d r[2:3], r[2:3], r28
0013b8  33170728  sext_int2long r[15:16], r14
0013bc  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
0013c0  2b0c00f0  lui r24, 983040
0013c4  e30dcfe3  loadli.w r27,  -3616(r30)
0013c8  8bacc910  add.ul r[26:27], r[20:21], r[13:14]
0013cc  63461fe8  loadli.w r12,  -3060(r30)
0013d0  1737c703  sll.d r[15:16], r[15:16], r28
0013d4  179c8a01  or r24, r21, r24
0013d8  33160628  sext_int2long r[13:14], r12
0013dc  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
0013e0  2b0c00f0  lui r24, 983040
0013e4  e34dbfe3  loadli.w r27,  -3620(r30)
0013e8  8bac7910  add.ul r[26:27], r[20:21], r[8:9]
0013ec  e3032fe8  loadli.w r7,  -3056(r30)
0013f0  1736c603  sll.d r[13:14], r[13:14], r28
0013f4  179c8a01  or r24, r21, r24
0013f8  b3930328  sext_int2long r[8:9], r7
0013fc  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
001400  2b0c00f0  lui r24, 983040
001404  e34dbfe5  loadli.w r27,  -3364(r30)
001408  8bac5910  add.ul r[26:27], r[20:21], r[6:7]
00140c  e3422fe8  loadli.w r5,  -3052(r30)
001410  97b3c303  sll.d r[8:9], r[8:9], r28
001414  179c8a01  or r24, r21, r24
001418  b3920228  sext_int2long r[6:7], r5
00141c  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
001420  2b0c00f0  lui r24, 983040
001424  e30dbfe3  loadli.w r27,  -3624(r30)
001428  8bac3910  add.ul r[26:27], r[20:21], r[4:5]
00142c  e3013fe8  loadli.w r3,  -3048(r30)
001430  97b2c203  sll.d r[6:7], r[6:7], r28
001434  179c8a01  or r24, r21, r24
001438  b3910128  sext_int2long r[4:5], r3
00143c  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
001440  8bac1910  add.ul r[26:27], r[20:21], r[2:3]
001444  e3403fe8  loadli.w r1,  -3044(r30)
001448  2b0c00f0  lui r24, 983040
00144c  e34dafe3  loadli.w r27,  -3628(r30)
001450  97b1c103  sll.d r[4:5], r[4:5], r28
001454  179c8a01  or r24, r21, r24
001458  b3900028  sext_int2long r[2:3], r1
00145c  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
001460  2b0c00f0  lui r24, 983040
001464  e30dafe3  loadli.w r27,  -3632(r30)
001468  8bac9910  add.ul r[26:27], r[20:21], r[10:11]
00146c  e3044fe8  loadli.w r9,  -3040(r30)
001470  73301900  store.d r[2:3], 0(r18)
001474  1f09ffea  addli r18, r30, -2696
001478  179c8a01  or r24, r21, r24
00147c  eb500900  load.d r[2:3], 0(r18)
001480  b3940428  sext_int2long r[10:11], r9
001484  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
001488  2b0c00f0  lui r24, 983040
00148c  e34d9fe3  loadli.w r27,  -3636(r30)
001490  97b4c403  sll.d r[10:11], r[10:11], r28
001494  97b0c003  sll.d r[2:3], r[2:3], r28
001498  179c8a01  or r24, r21, r24
00149c  9f2a0000  addli r21, zero, 2
0014a0  8bac1910  add.ul r[26:27], r[20:21], r[2:3]
0014a4  a7800900  addli.d r[2:3], r[20:21], 0
0014a8  634a4fe8  loadli.w r20,  -3036(r30)
0014ac  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
0014b0  2b0c00f0  lui r24, 983040
0014b4  e30d9fe3  loadli.w r27,  -3640(r30)
0014b8  8bac6011  add.ul r[26:27], r[2:3], r[23:24]
0014bc  630b5fe8  loadli.w r22,  -3032(r30)
0014c0  33190a28  sext_int2long r[19:20], r20
0014c4  1f0affea  addli r20, r30, -2696
0014c8  179c8a01  or r24, r21, r24
0014cc  73302a01  store.d r[19:20], 0(r20)
0014d0  1f0aefeb  addli r20, r30, -2576
0014d4  331b0b28  sext_int2long r[23:24], r22
0014d8  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
0014dc  2b0c00f0  lui r24, 983040
0014e0  e34d8fe3  loadli.w r27,  -3644(r30)
0014e4  6b590a00  load.d r[19:20], 0(r20)
0014e8  173bcb03  sll.d r[23:24], r[23:24], r28
0014ec  179c8a01  or r24, r21, r24
0014f0  973cc903  sll.d r[26:27], r[19:20], r28
0014f4  a7890000  addli.d r[20:21], r[2:3], 0
0014f8  63495fe8  loadli.w r18,  -3028(r30)
0014fc  8bac9911  add.ul r[26:27], r[20:21], r[26:27]
001500  b3100928  sext_int2long r[2:3], r18
001504  1f09efeb  addli r18, r30, -2576
001508  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
00150c  2b0c00f0  lui r24, 983040
001510  e30d8fe3  loadli.w r27,  -3648(r30)
001514  8bac0911  add.ul r[26:27], r[20:21], r[17:18]
001518  63086fe8  loadli.w r16,  -3024(r30)
00151c  73301900  store.d r[2:3], 0(r18)
001520  179c8a01  or r24, r21, r24
001524  33180828  sext_int2long r[17:18], r16
001528  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
00152c  2b0c00f0  lui r24, 983040
001530  e34d7fe3  loadli.w r27,  -3652(r30)
001534  8bace910  add.ul r[26:27], r[20:21], r[15:16]
001538  63476fe8  loadli.w r14,  -3020(r30)
00153c  1738c803  sll.d r[17:18], r[17:18], r28
001540  179c8a01  or r24, r21, r24
001544  33170728  sext_int2long r[15:16], r14
001548  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
00154c  2b0c00f0  lui r24, 983040
001550  e30d7fe3  loadli.w r27,  -3656(r30)
001554  8bacc910  add.ul r[26:27], r[20:21], r[13:14]
001558  63067fe8  loadli.w r12,  -3016(r30)
00155c  1737c703  sll.d r[15:16], r[15:16], r28
001560  179c8a01  or r24, r21, r24
001564  33160628  sext_int2long r[13:14], r12
001568  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
00156c  8bac7910  add.ul r[26:27], r[20:21], r[8:9]
001570  e3437fe8  loadli.w r7,  -3012(r30)
001574  2b0c00f0  lui r24, 983040
001578  e34d6fe3  loadli.w r27,  -3660(r30)
00157c  1f040feb  addli r8, r30, -2688
001580  1736c603  sll.d r[13:14], r[13:14], r28
001584  179c8a01  or r24, r21, r24
001588  b3900328  sext_int2long r[2:3], r7
00158c  9f03efea  addli r7, r30, -2704
001590  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
001594  2b0c00f0  lui r24, 983040
001598  e30d6fe3  loadli.w r27,  -3664(r30)
00159c  8bac5910  add.ul r[26:27], r[20:21], r[6:7]
0015a0  e3028fe8  loadli.w r5,  -3008(r30)
0015a4  73b01300  store.d r[2:3], 0(r7)
0015a8  9f230000  addli r7, zero, 2
0015ac  eb500400  load.d r[2:3], 0(r8)
0015b0  1f04dfea  addli r8, r30, -2712
0015b4  179c8301  or r24, r7, r24
0015b8  b3920228  sext_int2long r[6:7], r5
0015bc  97b0c003  sll.d r[2:3], r[2:3], r28
0015c0  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
0015c4  2b0c00f0  lui r24, 983040
0015c8  e34d5fe3  loadli.w r27,  -3668(r30)
0015cc  8bac3910  add.ul r[26:27], r[20:21], r[4:5]
0015d0  e3418fe8  loadli.w r3,  -3004(r30)
0015d4  97b2c203  sll.d r[6:7], r[6:7], r28
0015d8  179c8301  or r24, r7, r24
0015dc  b3910128  sext_int2long r[4:5], r3
0015e0  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
0015e4  2b0c00f0  lui r24, 983040
0015e8  e30d5fe3  loadli.w r27,  -3672(r30)
0015ec  8bac1910  add.ul r[26:27], r[20:21], r[2:3]
0015f0  e3009fe8  loadli.w r1,  -3000(r30)
0015f4  97b1c103  sll.d r[4:5], r[4:5], r28
0015f8  179c8301  or r24, r7, r24
0015fc  b3900028  sext_int2long r[2:3], r1
001600  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
001604  8bac9910  add.ul r[26:27], r[20:21], r[10:11]
001608  e3449fe8  loadli.w r9,  -2996(r30)
00160c  2b0c00f0  lui r24, 983040
001610  e34d4fe3  loadli.w r27,  -3676(r30)
001614  6305ffe2  loadli.w r10,  -3720(r30)
001618  73301400  store.d r[2:3], 0(r8)
00161c  9f000feb  addli r1, r30, -2688
001620  179c8301  or r24, r7, r24
001624  33940428  sext_int2long r[9:10], r9
001628  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
00162c  2b0c00f0  lui r24, 983040
001630  e30d4fe3  loadli.w r27,  -3680(r30)
001634  73b08000  store.d r[9:10], 0(r1)
001638  9f00ffea  addli r1, r30, -2696
00163c  179c8301  or r24, r7, r24
001640  6bd40000  load.d r[9:10], 0(r1)
001644  9f00efeb  addli r1, r30, -2576
001648  1734c403  sll.d r[9:10], r[9:10], r28
00164c  8bac8910  add.ul r[26:27], r[20:21], r[9:10]
001650  27840900  addli.d r[9:10], r[20:21], 0
001654  6bd90000  load.d r[19:20], 0(r1)
001658  630aafe8  loadli.w r20,  -2992(r30)
00165c  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
001660  2b0c00f0  lui r24, 983040
001664  e34d3fe3  loadli.w r27,  -3684(r30)
001668  8b2c6411  add.ul r[26:27], r[9:10], r[23:24]
00166c  634bafe8  loadli.w r22,  -2988(r30)
001670  1739c903  sll.d r[19:20], r[19:20], r28
001674  331a0a28  sext_int2long r[21:22], r20
001678  179c8301  or r24, r7, r24
00167c  331b0b28  sext_int2long r[23:24], r22
001680  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
001684  2b0c00f0  lui r24, 983040
001688  e30d3fe3  loadli.w r27,  -3688(r30)
00168c  8b2c2411  add.ul r[26:27], r[9:10], r[19:20]
001690  6309bfe8  loadli.w r18,  -2984(r30)
001694  179c8301  or r24, r7, r24
001698  33190928  sext_int2long r[19:20], r18
00169c  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
0016a0  2b0c00f0  lui r24, 983040
0016a4  e34d2fe3  loadli.w r27,  -3692(r30)
0016a8  8b2c0411  add.ul r[26:27], r[9:10], r[17:18]
0016ac  6348bfe8  loadli.w r16,  -2980(r30)
0016b0  179c8301  or r24, r7, r24
0016b4  33180828  sext_int2long r[17:18], r16
0016b8  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
0016bc  2b0c00f0  lui r24, 983040
0016c0  8b2ce410  add.ul r[26:27], r[9:10], r[15:16]
0016c4  6307cfe8  loadli.w r14,  -2976(r30)
0016c8  e30d2fe3  loadli.w r27,  -3696(r30)
0016cc  1738c803  sll.d r[17:18], r[17:18], r28
0016d0  179c8301  or r24, r7, r24
0016d4  33170728  sext_int2long r[15:16], r14
0016d8  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
0016dc  2b0c00f0  lui r24, 983040
0016e0  e34d1fe3  loadli.w r27,  -3700(r30)
0016e4  8b2cc410  add.ul r[26:27], r[9:10], r[13:14]
0016e8  6346cfe8  loadli.w r12,  -2972(r30)
0016ec  73b0e000  store.d r[15:16], 0(r1)
0016f0  9f00efea  addli r1, r30, -2704
0016f4  ab0700f0  lui r15, 983040
0016f8  179c8301  or r24, r7, r24
0016fc  b3160628  sext_int2long r[14:15], r12
001700  1f260000  addli r12, zero, 2
001704  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
001708  6bdc0000  load.d r[25:26], 0(r1)
00170c  e30d1fe3  loadli.w r27,  -3704(r30)
001710  973ccc03  sll.d r[26:27], r[25:26], r28
001714  2b0c00f0  lui r24, 983040
001718  179c8301  or r24, r7, r24
00171c  8b2c9411  add.ul r[26:27], r[9:10], r[26:27]
001720  e303dfe8  loadli.w r7,  -2968(r30)
001724  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
001728  2b0c00f0  lui r24, 983040
00172c  e34d0fe3  loadli.w r27,  -3708(r30)
001730  8b2c5410  add.ul r[26:27], r[9:10], r[6:7]
001734  e342dfe8  loadli.w r5,  -2964(r30)
001738  b3900328  sext_int2long r[2:3], r7
00173c  9f03ffea  addli r7, r30, -2696
001740  171c8601  or r24, r12, r24
001744  73b01300  store.d r[2:3], 0(r7)
001748  ab0300f0  lui r7, 983040
00174c  b3920228  sext_int2long r[6:7], r5
001750  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
001754  8b2c3410  add.ul r[26:27], r[9:10], r[4:5]
001758  e301efe8  loadli.w r3,  -2960(r30)
00175c  2b0c00f0  lui r24, 983040
001760  e30d0fe3  loadli.w r27,  -3712(r30)
001764  171c8601  or r24, r12, r24
001768  b3900128  sext_int2long r[2:3], r3
00176c  9f01efea  addli r3, r30, -2704
001770  7fbcbc01  s_lm2gm r24, r27, 0(r[26:27])
001774  2b0c00f0  lui r24, 983040
001778  e34dffe2  loadli.w r27,  -3716(r30)
00177c  73b01100  store.d r[2:3], 0(r3)
001780  9f01dfea  addli r3, r30, -2712
001784  171d8601  or r26, r12, r24
001788  634cefe8  loadli.w r24,  -2956(r30)
00178c  ebd00100  load.d r[2:3], 0(r3)
001790  9f010feb  addli r3, r30, -2688
001794  331c0c28  sext_int2long r[25:26], r24
001798  97b0c003  sll.d r[2:3], r[2:3], r28
00179c  8b201410  add.ul r[2:3], r[9:10], r[2:3]
0017a0  7fbdb001  s_lm2gm r26, r27, 0(r[2:3])
0017a4  ebd00100  load.d r[2:3], 0(r3)
0017a8  97b0c003  sll.d r[2:3], r[2:3], r28
0017ac  0b2d1410  add.ul r[27:28], r[9:10], r[2:3]
0017b0  e300ffe8  loadli.w r1,  -2952(r30)
0017b4  17117600  or r2, r12, r7
0017b8  7f31ad00  s_lm2gm r2, r10, 0(r[27:28])
0017bc  634defe2  loadli.w r26,  -3724(r30)
0017c0  b3910028  sext_int2long r[4:5], r1
0017c4  9f000feb  addli r1, r30, -2688
0017c8  73b03000  store.d r[4:5], 0(r1)
0017cc  9730ca03  sll.d r[2:3], r[21:22], r28
0017d0  173acb03  sll.d r[21:22], r[23:24], r28
0017d4  2b0b00f0  lui r22, 983040
0017d8  ab0b00f0  lui r23, 983040
0017dc  9f01efeb  addli r3, r30, -2576
0017e0  8b201410  add.ul r[2:3], r[9:10], r[2:3]
0017e4  0b2a4411  add.ul r[21:22], r[9:10], r[21:22]
0017e8  a7030400  addli.d r[8:9], r[9:10], 0
0017ec  e304efe2  loadli.w r9,  -3728(r30)
0017f0  171b6601  or r22, r12, r22
0017f4  971b7601  or r23, r12, r23
0017f8  17b6c603  sll.d r[13:14], r[14:15], r28
0017fc  2b0700f0  lui r14, 983040
001800  7fbba001  s_lm2gm r22, r26, 0(r[2:3])
001804  278d0300  addli.d r[27:28], r[8:9], 0
001808  ebd00100  load.d r[2:3], 0(r3)
00180c  9f01ffea  addli r3, r30, -2696
001810  ff3b9a00  s_lm2gm r23, r9, 0(r[21:22])
001814  9734c903  sll.d r[10:11], r[19:20], r28
001818  9f2a0000  addli r21, zero, 2
00181c  2b0900f0  lui r18, 983040
001820  634adfe2  loadli.w r20,  -3732(r30)
001824  ab0900f0  lui r19, 983040
001828  0b280d11  add.ul r[17:18], r[27:28], r[17:18]
00182c  0b26cd10  add.ul r[13:14], r[27:28], r[13:14]
001830  8b249d10  add.ul r[10:11], r[27:28], r[10:11]
001834  17992a01  or r18, r21, r18
001838  97993a01  or r19, r21, r19
00183c  1797ea00  or r14, r21, r14
001840  9797fa00  or r15, r21, r15
001844  7fb94401  s_lm2gm r18, r20, 0(r[10:11])
001848  e304dfe2  loadli.w r9,  -3736(r30)
00184c  ff399800  s_lm2gm r19, r9, 0(r[17:18])
001850  97b4c003  sll.d r[10:11], r[2:3], r28
001854  6348cfe2  loadli.w r16,  -3740(r30)
001858  ebd00100  load.d r[2:3], 0(r3)
00185c  9f01efea  addli r3, r30, -2704
001860  630e3fe2  loadli.w r28,  -3816(r30)
001864  8b249d10  add.ul r[10:11], r[27:28], r[10:11]
001868  7fb70401  s_lm2gm r14, r16, 0(r[10:11])
00186c  e304cfe2  loadli.w r9,  -3744(r30)
001870  1f180000  addli r16, zero, 1
001874  2b0500f0  lui r10, 983040
001878  97b30003  sll.d r[8:9], r[2:3], r16
00187c  97b20203  sll.d r[6:7], r[6:7], r16
001880  ebd00100  load.d r[2:3], 0(r3)
001884  1795aa00  or r10, r21, r10
001888  ff379600  s_lm2gm r15, r9, 0(r[13:14])
00188c  ab0400f0  lui r9, 983040
001890  6306bfe5  loadli.w r12,  -3368(r30)
001894  e3477fe2  loadli.w r15,  -3780(r30)
001898  8b237d10  add.ul r[8:9], r[27:28], r[8:9]
00189c  8b225d10  add.ul r[6:7], r[27:28], r[6:7]
0018a0  97949a00  or r9, r21, r9
0018a4  97b10003  sll.d r[4:5], r[2:3], r16
0018a8  ffb4c300  s_lm2gm r9, r12, 0(r[8:9])
0018ac  e343bfe2  loadli.w r7,  -3748(r30)
0018b0  e304bfe2  loadli.w r9,  -3752(r30)
0018b4  8b213d10  add.ul r[4:5], r[27:28], r[4:5]
0018b8  2b0400f0  lui r8, 983040
0018bc  17948a00  or r8, r21, r8
0018c0  7fb57200  s_lm2gm r10, r7, 0(r[6:7])
0018c4  ab0300f0  lui r7, 983040
0018c8  97320c03  sll.d r[6:7], r[25:26], r16
0018cc  1f2c0000  addli r24, zero, 2
0018d0  63458fe2  loadli.w r10,  -3772(r30)
0018d4  9f1c0000  addli r25, zero, 1
0018d8  1f00ffea  addli zero, r30, -2696
0018dc  97937a00  or r7, r21, r7
0018e0  8b225d10  add.ul r[6:7], r[27:28], r[6:7]
0018e4  ffb39100  s_lm2gm r7, r9, 0(r[4:5])
0018e8  e341afe2  loadli.w r3,  -3756(r30)
0018ec  7fb43200  s_lm2gm r8, r3, 0(r[6:7])
0018f0  9f010feb  addli r3, r30, -2688
0018f4  ab0200f0  lui r5, 983040
0018f8  6303afe2  loadli.w r6,  -3760(r30)
0018fc  63049fe2  loadli.w r8,  -3768(r30)
001900  ebd00100  load.d r[2:3], 0(r3)
001904  e341ffe8  loadli.w r3,  -2948(r30)
001908  97925a00  or r5, r21, r5
00190c  97b00003  sll.d r[2:3], r[2:3], r16
001910  b3910128  sext_int2long r[4:5], r3
001914  8b201d10  add.ul r[2:3], r[27:28], r[2:3]
001918  97b10103  sll.d r[4:5], r[4:5], r16
00191c  ffb26000  s_lm2gm r5, r6, 0(r[2:3])
001920  8b203d10  add.ul r[2:3], r[27:28], r[4:5]
001924  63020fe9  loadli.w r4,  -2944(r30)
001928  ab0100f0  lui r3, 983040
00192c  63439fe2  loadli.w r6,  -3764(r30)
001930  97913a00  or r3, r21, r3
001934  33120228  sext_int2long r[5:6], r4
001938  ffb16000  s_lm2gm r3, r6, 0(r[2:3])
00193c  e3400fe9  loadli.w r1,  -2940(r30)
001940  63031fe9  loadli.w r6,  -2936(r30)
001944  17320203  sll.d r[5:6], r[5:6], r16
001948  8b214d10  add.ul r[4:5], r[27:28], r[5:6]
00194c  ab0200f0  lui r5, 983040
001950  b3900028  sext_int2long r[2:3], r1
001954  33130328  sext_int2long r[7:8], r6
001958  97925a00  or r5, r21, r5
00195c  97b00003  sll.d r[2:3], r[2:3], r16
001960  ffb28100  s_lm2gm r5, r8, 0(r[4:5])
001964  63042fe9  loadli.w r8,  -2928(r30)
001968  97320303  sll.d r[6:7], r[7:8], r16
00196c  ab0300f0  lui r7, 983040
001970  8b201d10  add.ul r[2:3], r[27:28], r[2:3]
001974  e3411fe9  loadli.w r3,  -2932(r30)
001978  97137c00  or r7, r24, r7
00197c  8b225d10  add.ul r[6:7], r[27:28], r[6:7]
001980  33140428  sext_int2long r[9:10], r8
001984  b3910128  sext_int2long r[4:5], r3
001988  ffb3a000  s_lm2gm r7, r10, 0(r[2:3])
00198c  63053fe9  loadli.w r10,  -2920(r30)
001990  e3402fe9  loadli.w r1,  -2924(r30)
001994  17340403  sll.d r[9:10], r[9:10], r16
001998  97b10103  sll.d r[4:5], r[4:5], r16
00199c  8b238d10  add.ul r[8:9], r[27:28], r[9:10]
0019a0  ab0400f0  lui r9, 983040
0019a4  33160528  sext_int2long r[13:14], r10
0019a8  63058fe2  loadli.w r10,  -3776(r30)
0019ac  8b213d10  add.ul r[4:5], r[27:28], r[4:5]
0019b0  b3900028  sext_int2long r[2:3], r1
0019b4  97149c00  or r9, r24, r9
0019b8  97b00003  sll.d r[2:3], r[2:3], r16
0019bc  ffb4a200  s_lm2gm r9, r10, 0(r[6:7])
0019c0  97340603  sll.d r[10:11], r[13:14], r16
0019c4  2b0600f0  lui r12, 983040
0019c8  e3064fe9  loadli.w r13,  -2912(r30)
0019cc  e3423fe9  loadli.w r5,  -2916(r30)
0019d0  8b201d10  add.ul r[2:3], r[27:28], r[2:3]
0019d4  1716cc00  or r12, r24, r12
0019d8  8b249d10  add.ul r[10:11], r[27:28], r[10:11]
0019dc  b3960628  sext_int2long r[14:15], r13
0019e0  b3920228  sext_int2long r[6:7], r5
0019e4  7fb6f100  s_lm2gm r12, r15, 0(r[4:5])
0019e8  e3414fe9  loadli.w r3,  -2908(r30)
0019ec  97b60603  sll.d r[14:15], r[14:15], r16
0019f0  97b20203  sll.d r[6:7], r[6:7], r16
0019f4  b3910128  sext_int2long r[4:5], r3
0019f8  0b26dd10  add.ul r[13:14], r[27:28], r[14:15]
0019fc  2b0700f0  lui r14, 983040
001a00  8b225d10  add.ul r[6:7], r[27:28], r[6:7]
001a04  97b10103  sll.d r[4:5], r[4:5], r16
001a08  0b2a3d10  add.ul r[21:22], r[27:28], r[4:5]
001a0c  63025fe9  loadli.w r4,  -2904(r30)
001a10  9711ec00  or r3, r24, r14
001a14  33170228  sext_int2long r[15:16], r4
001a18  63027fe2  loadli.w r4,  -3784(r30)
001a1c  ffb14300  s_lm2gm r3, r4, 0(r[8:9])
001a20  e3415fe9  loadli.w r3,  -2900(r30)
001a24  97330703  sll.d r[8:9], r[15:16], r16
001a28  0b2b7d10  add.ul r[23:24], r[27:28], r[8:9]
001a2c  b3910128  sext_int2long r[4:5], r3
001a30  97b10103  sll.d r[4:5], r[4:5], r16
001a34  0b283d10  add.ul r[17:18], r[27:28], r[4:5]
001a38  63026fe9  loadli.w r4,  -2896(r30)
001a3c  ab0100f0  lui r3, 983040
001a40  97113c00  or r3, r24, r3
001a44  b3130228  sext_int2long r[8:9], r4
001a48  63426fe2  loadli.w r4,  -3788(r30)
001a4c  97b39303  sll.d r[8:9], r[8:9], r25
001a50  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
001a54  e3406fe9  loadli.w r1,  -2892(r30)
001a58  8b217d10  add.ul r[4:5], r[27:28], r[8:9]
001a5c  9f03ffea  addli r7, r30, -2696
001a60  b3900028  sext_int2long r[2:3], r1
001a64  73b03300  store.d r[4:5], 0(r7)
001a68  ab0100f0  lui r3, 983040
001a6c  63026fe2  loadli.w r4,  -3792(r30)
001a70  97b09003  sll.d r[2:3], r[2:3], r25
001a74  0b291d10  add.ul r[19:20], r[27:28], r[2:3]
001a78  97103c00  or r1, r24, r3
001a7c  63017fe9  loadli.w r2,  -2888(r30)
001a80  ffb04400  s_lm2gm r1, r4, 0(r[10:11])
001a84  e3407fe9  loadli.w r1,  -2884(r30)
001a88  63455fe2  loadli.w r10,  -3796(r30)
001a8c  33110128  sext_int2long r[3:4], r2
001a90  b3930028  sext_int2long r[8:9], r1
001a94  97309103  sll.d r[2:3], r[3:4], r25
001a98  97b19303  sll.d r[4:5], r[8:9], r25
001a9c  8b201d10  add.ul r[2:3], r[27:28], r[2:3]
001aa0  9f03efeb  addli r7, r30, -2576
001aa4  63048fe9  loadli.w r8,  -2880(r30)
001aa8  73b01300  store.d r[2:3], 0(r7)
001aac  ab0300f0  lui r7, 983040
001ab0  a7000d00  addli.d r[2:3], r[27:28], 0
001ab4  8b213d10  add.ul r[4:5], r[27:28], r[4:5]
001ab8  33140428  sext_int2long r[9:10], r8
001abc  97137c00  or r7, r24, r7
001ac0  17349403  sll.d r[9:10], r[9:10], r25
001ac4  ffb3a200  s_lm2gm r7, r10, 0(r[6:7])
001ac8  e3428fe9  loadli.w r5,  -2876(r30)
001acc  33970228  sext_int2long r[15:16], r5
001ad0  8b228d10  add.ul r[6:7], r[27:28], r[9:10]
001ad4  97339703  sll.d r[8:9], r[15:16], r25
001ad8  2b0700f0  lui r14, 983040
001adc  8b247d10  add.ul r[10:11], r[27:28], r[8:9]
001ae0  63049fe9  loadli.w r8,  -2872(r30)
001ae4  9713ec00  or r7, r24, r14
001ae8  33170428  sext_int2long r[15:16], r8
001aec  63045fe2  loadli.w r8,  -3800(r30)
001af0  ff338600  s_lm2gm r7, r8, 0(r[13:14])
001af4  e3439fe9  loadli.w r7,  -2868(r30)
001af8  17369703  sll.d r[13:14], r[15:16], r25
001afc  0b26cd10  add.ul r[13:14], r[27:28], r[13:14]
001b00  b3930328  sext_int2long r[8:9], r7
001b04  97b39303  sll.d r[8:9], r[8:9], r25
001b08  0b277d10  add.ul r[15:16], r[27:28], r[8:9]
001b0c  e303afe9  loadli.w r7,  -2864(r30)
001b10  9f0d0feb  addli r27, r30, -2688
001b14  2b0d00f0  lui r26, 983040
001b18  171dac01  or r26, r24, r26
001b1c  b3930328  sext_int2long r[8:9], r7
001b20  97b39303  sll.d r[8:9], r[8:9], r25
001b24  8ba37010  add.ul r[8:9], r[2:3], r[8:9]
001b28  73b07d00  store.d r[8:9], 0(r27)
001b2c  e34d4fe2  loadli.w r27,  -3804(r30)
001b30  7f3dba01  s_lm2gm r26, r27, 0(r[21:22])
001b34  2b0d00f0  lui r26, 983040
001b38  e30d4fe2  loadli.w r27,  -3808(r30)
001b3c  634aafe9  loadli.w r20,  -2860(r30)
001b40  171dac01  or r26, r24, r26
001b44  331a0a28  sext_int2long r[21:22], r20
001b48  7f3dbb01  s_lm2gm r26, r27, 0(r[23:24])
001b4c  e30bbfe9  loadli.w r23,  -2856(r30)
001b50  2b0b00f0  lui r22, 983040
001b54  173a9a03  sll.d r[21:22], r[21:22], r25
001b58  171b6c01  or r22, r24, r22
001b5c  339d0b28  sext_int2long r[27:28], r23
001b60  e34b3fe2  loadli.w r23,  -3812(r30)
001b64  0baa4011  add.ul r[21:22], r[2:3], r[21:22]
001b68  173d9d03  sll.d r[27:28], r[27:28], r25
001b6c  7f3b7801  s_lm2gm r22, r23, 0(r[17:18])
001b70  6b580000  load.d r[17:18], 0(zero)
001b74  634bbfe9  loadli.w r22,  -2852(r30)
001b78  17200000  xor zero, zero, zero
001b7c  8ba3a011  add.ul r[8:9], r[2:3], r[27:28]
001b80  2b0d00f0  lui r26, 983040
001b84  ab0d00f0  lui r27, 983040
001b88  171dac01  or r26, r24, r26
001b8c  331b0b28  sext_int2long r[23:24], r22
001b90  7f3dc801  s_lm2gm r26, r28, 0(r[17:18])
001b94  e308cfe9  loadli.w r17,  -2848(r30)
001b98  1718bc01  or r16, r24, r27
001b9c  173b9b03  sll.d r[23:24], r[23:24], r25
001ba0  630e2fe2  loadli.w r28,  -3824(r30)
001ba4  0bab6011  add.ul r[23:24], r[2:3], r[23:24]
001ba8  339d0828  sext_int2long r[27:28], r17
001bac  e3482fe2  loadli.w r17,  -3820(r30)
001bb0  7f381901  s_lm2gm r16, r17, 0(r[19:20])
001bb4  6348cfe9  loadli.w r16,  -2844(r30)
001bb8  17399d03  sll.d r[19:20], r[27:28], r25
001bbc  2b0d00f0  lui r26, 983040
001bc0  ab0d00f0  lui r27, 983040
001bc4  171dac01  or r26, r24, r26
001bc8  971dbc01  or r27, r24, r27
001bcc  1f0cefeb  addli r24, r30, -2576
001bd0  0ba92011  add.ul r[19:20], r[2:3], r[19:20]
001bd4  33180828  sext_int2long r[17:18], r16
001bd8  17389803  sll.d r[17:18], r[17:18], r25
001bdc  0ba80011  add.ul r[17:18], r[2:3], r[17:18]
001be0  eb500c00  load.d r[2:3], 0(r24)
001be4  7fbdc001  s_lm2gm r26, r28, 0(r[2:3])
001be8  e3401fe2  loadli.w r1,  -3828(r30)
001bec  2b0100f0  lui r2, 983040
001bf0  ffbd1100  s_lm2gm r27, r1, 0(r[4:5])
001bf4  1f220000  addli r4, zero, 2
001bf8  ab0000f0  lui r1, 983040
001bfc  e3011fe2  loadli.w r3,  -3832(r30)
001c00  97101200  or r1, r4, r1
001c04  17112200  or r2, r4, r2
001c08  ffb03200  s_lm2gm r1, r3, 0(r[6:7])
001c0c  e3400fe2  loadli.w r1,  -3836(r30)
001c10  e3010fe2  loadli.w r3,  -3840(r30)
001c14  9f020feb  addli r5, r30, -2688
001c18  1f030ff4  addli r6, r30, -1536
001c1c  7fb11400  s_lm2gm r2, r1, 0(r[10:11])
001c20  ab0000f0  lui r1, 983040
001c24  2b0100f0  lui r2, 983040
001c28  ebd40200  load.d r[10:11], 0(r5)
001c2c  97101200  or r1, r4, r1
001c30  17112200  or r2, r4, r2
001c34  ff303600  s_lm2gm r1, r3, 0(r[13:14])
001c38  e340ffe1  loadli.w r1,  -3844(r30)
001c3c  e301ffe1  loadli.w r3,  -3848(r30)
001c40  7f311700  s_lm2gm r2, r1, 0(r[15:16])
001c44  ab0000f0  lui r1, 983040
001c48  2b0100f0  lui r2, 983040
001c4c  97101200  or r1, r4, r1
001c50  17112200  or r2, r4, r2
001c54  ffb03400  s_lm2gm r1, r3, 0(r[10:11])
001c58  e340efe1  loadli.w r1,  -3852(r30)
001c5c  e301efe1  loadli.w r3,  -3856(r30)
001c60  7f311a00  s_lm2gm r2, r1, 0(r[21:22])
001c64  ab0000f0  lui r1, 983040
001c68  2b0100f0  lui r2, 983040
001c6c  97101200  or r1, r4, r1
001c70  17112200  or r2, r4, r2
001c74  1f220000  addli r4, zero, 2
001c78  ffb03300  s_lm2gm r1, r3, 0(r[8:9])
001c7c  e340dfe1  loadli.w r1,  -3860(r30)
001c80  e301dfe1  loadli.w r3,  -3864(r30)
001c84  9f030002  addli r7, zero, 256
001c88  7f311b00  s_lm2gm r2, r1, 0(r[23:24])
001c8c  ab0000f0  lui r1, 983040
001c90  2b0100f0  lui r2, 983040
001c94  2b0b4000  lui r22, 1024
001c98  97101200  or r1, r4, r1
001c9c  17112200  or r2, r4, r2
001ca0  ff303900  s_lm2gm r1, r3, 0(r[19:20])
001ca4  e340cfe1  loadli.w r1,  -3868(r30)
001ca8  9f010000  addli r3, zero, 0
001cac  7f311800  s_lm2gm r2, r1, 0(r[17:18])
001cb0  00a00000  mfence { lm }
001cb4  e340efe9  loadli.w r1,  -2828(r30)
001cb8  1b811000  andi r2, r1, 1
001cbc  9f001000  addli r1, zero, 8
001cc0  376501f4  beq r2, zero, -5800
001cc4  1f010000  addli r2, zero, 0
001cc8  674f3fe8  storeli.w r3, -2828(r30)
001ccc  8b112310  add.s r3, r6, r2
001cd0  1f410100  addli r2, r2, 4
001cd4  73900100  store.h zero, 0(r3)
001cd8  73910100  store.h zero, 2(r3)
001cdc  00a00000  mfence { lm }
001ce0  bb3f71fe  bneq r2, r7, -20
001ce4  63416fe5  loadli.w r2,  -3404(r30)
001ce8  1f140000  addli r8, zero, 1
001cec  1f05dfe9  addli r10, r30, -2840
001cf0  ab0a807f  lui r21, 522240
001cf4  8b101110  add.s r1, r2, r1
001cf8  6301bfe1  loadli.w r2,  -3880(r30)
001cfc  9bb1a000  slli r3, r1, 10
001d00  670f1fea  storeli.w r1, -2576(r30)
001d04  ab0000f0  lui r1, 983040
001d08  0b912110  add.s r2, r3, r2
001d0c  97901300  or r1, r7, r1
001d10  67443fea  storeli.w r3, -2748(r30)
001d14  ab0100f0  lui r3, 983040
001d18  33120128  sext_int2long r[5:6], r2
001d1c  97913300  or r3, r7, r3
001d20  2b0100f0  lui r2, 983040
001d24  17348202  sll.d r[9:10], r[5:6], r8
001d28  6b520f00  load.d r[5:6], 0(r30)
001d2c  17912300  or r2, r7, r2
001d30  73308500  store.d r[9:10], 0(r10)
001d34  0b228210  add.ul r[5:6], r[5:6], r[9:10]
001d38  ff206200  l_gm2lm r1, r6, 0(r[5:6])
001d3c  9f002fe1  addli r1, r30, -3952
001d40  6bd20000  load.d r[5:6], 0(r1)
001d44  9f000ff6  addli r1, r30, -1280
001d48  ff211200  l_gm2lm r3, r1, 0(r[5:6])
001d4c  9f021fe1  addli r5, r30, -3960
001d50  ab0000f0  lui r1, 983040
001d54  ebd10200  load.d r[4:5], 0(r5)
001d58  9f020ff8  addli r5, r30, -1024
001d5c  97901300  or r1, r7, r1
001d60  7fa15100  l_gm2lm r2, r5, 0(r[4:5])
001d64  1f020fe1  addli r4, r30, -3968
001d68  6b510200  load.d r[3:4], 0(r4)
001d6c  1f020ffa  addli r4, r30, -768
001d70  ff204100  l_gm2lm r1, r4, 0(r[3:4])
001d74  9f000ff4  addli r1, r30, -1536
001d78  1f018ff6  addli r2, r30, -1216
001d7c  00a00000  mfence { lm }
001d80  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001d84  9f008ff4  addli r1, r30, -1472
001d88  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
001d8c  9f000ff5  addli r1, r30, -1408
001d90  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
001d94  9f008ff5  addli r1, r30, -1344
001d98  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
001d9c  9f000ff6  addli r1, r30, -1280
001da0  e6c31280  vmerge_l.hf vr7, vr5, vr1
001da4  66c112a0  vmerge_h.hf vr2, vr5, vr1
001da8  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
001dac  9f000feb  addli r1, r30, -2688
001db0  00a00000  mfence { lm }
001db4  e6c03280  vmerge_l.hf vr1, vr5, vr3
001db8  66c432a0  vmerge_h.hf vr8, vr5, vr3
001dbc  e6c14280  vmerge_l.hf vr3, vr5, vr4
001dc0  66c242a0  vmerge_h.hf vr4, vr5, vr4
001dc4  66c06280  vmerge_l.hf vr0, vr5, vr6
001dc8  66c362a0  vmerge_h.hf vr6, vr5, vr6
001dcc  66c59280  vmerge_l.hf vr10, vr5, vr9
001dd0  e6c492a0  vmerge_h.hf vr9, vr5, vr9
001dd4  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001dd8  c2150102  vload_mask16.mz vr11{mr1}, 0(r2)
001ddc  1f010ff7  addli r2, r30, -1152
001de0  9693a302  vadd.f.mz.rn vr7{mr1}, vr7, vr10
001de4  16119102  vadd.f.mz.rn vr2{mr1}, vr2, vr9
001de8  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
001dec  1f018ff7  addli r2, r30, -1088
001df0  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
001df4  66c5b280  vmerge_l.hf vr10, vr5, vr11
001df8  e6c5b2a0  vmerge_h.hf vr11, vr5, vr11
001dfc  1695a002  vadd.f.mz.rn vr10{mr1}, vr1, vr10
001e00  e6c00280  vmerge_l.hf vr1, vr5, vr0
001e04  66c002a0  vmerge_h.hf vr0, vr5, vr0
001e08  1614b402  vadd.f.mz.rn vr8{mr1}, vr8, vr11
001e0c  e6c59280  vmerge_l.hf vr11, vr5, vr9
001e10  e6c492a0  vmerge_h.hf vr9, vr5, vr9
001e14  96901102  vadd.f.mz.rn vr1{mr1}, vr3, vr1
001e18  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
001e1c  16100202  vadd.f.mz.rn vr0{mr1}, vr4, vr0
001e20  16129302  vadd.f.mz.rn vr4{mr1}, vr6, vr9
001e24  46107fc2  vstore_mask16.mz vr7{mr1}, 1536(r30)
001e28  46142fc2  vstore_mask16.mz vr2{mr1}, 1600(r30)
001e2c  4618afc2  vstore_mask16.mz vr10{mr1}, 1664(r30)
001e30  461c8fc2  vstore_mask16.mz vr8{mr1}, 1728(r30)
001e34  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
001e38  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
001e3c  9691b102  vadd.f.mz.rn vr3{mr1}, vr3, vr11
001e40  46183fe2  vstore_mask16.mz vr3{mr1}, 1920(r30)
001e44  461c4fe2  vstore_mask16.mz vr4{mr1}, 1984(r30)
001e48  00a00000  mfence { lm }
001e4c  63070ffc  loadli.w r14,  -512(r30)
001e50  e3410ffc  loadli.w r3,  -508(r30)
001e54  63011ffc  loadli.w r2,  -504(r30)
001e58  e3401ffc  loadli.w r1,  -500(r30)
001e5c  e3092ffc  loadli.w r19,  -496(r30)
001e60  e3482ffc  loadli.w r17,  -492(r30)
001e64  e3073ffc  loadli.w r15,  -488(r30)
001e68  e3463ffc  loadli.w r13,  -484(r30)
001e6c  63064ffc  loadli.w r12,  -480(r30)
001e70  63454ffc  loadli.w r10,  -476(r30)
001e74  e3045ffc  loadli.w r9,  -472(r30)
001e78  63445ffc  loadli.w r8,  -468(r30)
001e7c  e3036ffc  loadli.w r7,  -464(r30)
001e80  63436ffc  loadli.w r6,  -460(r30)
001e84  e3027ffc  loadli.w r5,  -456(r30)
001e88  63427ffc  loadli.w r4,  -452(r30)
001e8c  63088ffc  loadli.w r16,  -448(r30)
001e90  63488ffc  loadli.w r16,  -444(r30)
001e94  63089ffc  loadli.w r16,  -440(r30)
001e98  63489ffc  loadli.w r16,  -436(r30)
001e9c  6308affc  loadli.w r16,  -432(r30)
001ea0  6348affc  loadli.w r16,  -428(r30)
001ea4  6308bffc  loadli.w r16,  -424(r30)
001ea8  6348bffc  loadli.w r16,  -420(r30)
001eac  6308cffc  loadli.w r16,  -416(r30)
001eb0  6348cffc  loadli.w r16,  -412(r30)
001eb4  6308dffc  loadli.w r16,  -408(r30)
001eb8  6348dffc  loadli.w r16,  -404(r30)
001ebc  6308effc  loadli.w r16,  -400(r30)
001ec0  6348effc  loadli.w r16,  -396(r30)
001ec4  6308fffc  loadli.w r16,  -392(r30)
001ec8  6348fffc  loadli.w r16,  -388(r30)
001ecc  63080ffd  loadli.w r16,  -384(r30)
001ed0  63480ffd  loadli.w r16,  -380(r30)
001ed4  63081ffd  loadli.w r16,  -376(r30)
001ed8  63481ffd  loadli.w r16,  -372(r30)
001edc  63082ffd  loadli.w r16,  -368(r30)
001ee0  63482ffd  loadli.w r16,  -364(r30)
001ee4  63083ffd  loadli.w r16,  -360(r30)
001ee8  63483ffd  loadli.w r16,  -356(r30)
001eec  63084ffd  loadli.w r16,  -352(r30)
001ef0  63484ffd  loadli.w r16,  -348(r30)
001ef4  63085ffd  loadli.w r16,  -344(r30)
001ef8  63485ffd  loadli.w r16,  -340(r30)
001efc  63086ffd  loadli.w r16,  -336(r30)
001f00  63486ffd  loadli.w r16,  -332(r30)
001f04  63087ffd  loadli.w r16,  -328(r30)
001f08  63487ffd  loadli.w r16,  -324(r30)
001f0c  63088ffd  loadli.w r16,  -320(r30)
001f10  63488ffd  loadli.w r16,  -316(r30)
001f14  63089ffd  loadli.w r16,  -312(r30)
001f18  63489ffd  loadli.w r16,  -308(r30)
001f1c  6308affd  loadli.w r16,  -304(r30)
001f20  6348affd  loadli.w r16,  -300(r30)
001f24  6308bffd  loadli.w r16,  -296(r30)
001f28  6348bffd  loadli.w r16,  -292(r30)
001f2c  6308cffd  loadli.w r16,  -288(r30)
001f30  6348cffd  loadli.w r16,  -284(r30)
001f34  6308dffd  loadli.w r16,  -280(r30)
001f38  6348dffd  loadli.w r16,  -276(r30)
001f3c  6308effd  loadli.w r16,  -272(r30)
001f40  6348effd  loadli.w r16,  -268(r30)
001f44  6308fffd  loadli.w r16,  -264(r30)
001f48  6348fffd  loadli.w r16,  -260(r30)
001f4c  63080ffe  loadli.w r16,  -256(r30)
001f50  63480ffe  loadli.w r16,  -252(r30)
001f54  63081ffe  loadli.w r16,  -248(r30)
001f58  63481ffe  loadli.w r16,  -244(r30)
001f5c  63082ffe  loadli.w r16,  -240(r30)
001f60  63482ffe  loadli.w r16,  -236(r30)
001f64  63083ffe  loadli.w r16,  -232(r30)
001f68  63483ffe  loadli.w r16,  -228(r30)
001f6c  63084ffe  loadli.w r16,  -224(r30)
001f70  63484ffe  loadli.w r16,  -220(r30)
001f74  63085ffe  loadli.w r16,  -216(r30)
001f78  63485ffe  loadli.w r16,  -212(r30)
001f7c  63086ffe  loadli.w r16,  -208(r30)
001f80  63486ffe  loadli.w r16,  -204(r30)
001f84  63087ffe  loadli.w r16,  -200(r30)
001f88  63487ffe  loadli.w r16,  -196(r30)
001f8c  63088ffe  loadli.w r16,  -192(r30)
001f90  63488ffe  loadli.w r16,  -188(r30)
001f94  63089ffe  loadli.w r16,  -184(r30)
001f98  63489ffe  loadli.w r16,  -180(r30)
001f9c  6308affe  loadli.w r16,  -176(r30)
001fa0  6348affe  loadli.w r16,  -172(r30)
001fa4  6308bffe  loadli.w r16,  -168(r30)
001fa8  6348bffe  loadli.w r16,  -164(r30)
001fac  6308cffe  loadli.w r16,  -160(r30)
001fb0  6348cffe  loadli.w r16,  -156(r30)
001fb4  6308dffe  loadli.w r16,  -152(r30)
001fb8  6348dffe  loadli.w r16,  -148(r30)
001fbc  6308effe  loadli.w r16,  -144(r30)
001fc0  6348effe  loadli.w r16,  -140(r30)
001fc4  6308fffe  loadli.w r16,  -136(r30)
001fc8  6348fffe  loadli.w r16,  -132(r30)
001fcc  63080fff  loadli.w r16,  -128(r30)
001fd0  63480fff  loadli.w r16,  -124(r30)
001fd4  63081fff  loadli.w r16,  -120(r30)
001fd8  63481fff  loadli.w r16,  -116(r30)
001fdc  63082fff  loadli.w r16,  -112(r30)
001fe0  63482fff  loadli.w r16,  -108(r30)
001fe4  63083fff  loadli.w r16,  -104(r30)
001fe8  63483fff  loadli.w r16,  -100(r30)
001fec  63084fff  loadli.w r16,  -96(r30)
001ff0  63484fff  loadli.w r16,  -92(r30)
001ff4  63085fff  loadli.w r16,  -88(r30)
001ff8  63485fff  loadli.w r16,  -84(r30)
001ffc  63086fff  loadli.w r16,  -80(r30)
002000  63486fff  loadli.w r16,  -76(r30)
002004  63087fff  loadli.w r16,  -72(r30)
002008  63487fff  loadli.w r16,  -68(r30)
00200c  63088fff  loadli.w r16,  -64(r30)
002010  63488fff  loadli.w r16,  -60(r30)
002014  63089fff  loadli.w r16,  -56(r30)
002018  63489fff  loadli.w r16,  -52(r30)
00201c  6308afff  loadli.w r16,  -48(r30)
002020  6348afff  loadli.w r16,  -44(r30)
002024  6308bfff  loadli.w r16,  -40(r30)
002028  6348bfff  loadli.w r16,  -36(r30)
00202c  6308cfff  loadli.w r16,  -32(r30)
002030  6348cfff  loadli.w r16,  -28(r30)
002034  6309dfff  loadli.w r18,  -24(r30)
002038  6349dfff  loadli.w r18,  -20(r30)
00203c  6309efff  loadli.w r18,  -16(r30)
002040  6349efff  loadli.w r18,  -12(r30)
002044  6309ffff  loadli.w r18,  -8(r30)
002048  6349ffff  loadli.w r18,  -4(r30)
00204c  1708b700  and r16, r14, r11
002050  13880a05  setlt.u r16, r21, r16
002054  3b700800  bneq r16, zero, 28
002058  1b480701  srli r16, r14, 16
00205c  1b081800  andi r16, r16, 1
002060  0b170711  add.s r14, r14, r16
002064  6348ffeb  loadli.w r16,  -2564(r30)
002068  0b1a0711  add.s r20, r14, r16
00206c  5b010000  j 8
002070  171a6701  or r20, r14, r22
002074  1788b100  and r16, r3, r11
002078  13880a05  setlt.u r16, r21, r16
00207c  3b700800  bneq r16, zero, 28
002080  1bc80101  srli r16, r3, 16
002084  1b081800  andi r16, r16, 1
002088  8b910111  add.s r3, r3, r16
00208c  6348ffeb  loadli.w r16,  -2564(r30)
002090  0b980111  add.s r16, r3, r16
002094  5b010000  j 8
002098  17986101  or r16, r3, r22
00209c  9701b100  and r3, r2, r11
0020a0  93813a04  setlt.u r3, r21, r3
0020a4  3bf00100  bneq r3, zero, 28
0020a8  9b410101  srli r3, r2, 16
0020ac  9b811100  andi r3, r3, 1
0020b0  0b113110  add.s r2, r2, r3
0020b4  e341ffeb  loadli.w r3,  -2564(r30)
0020b8  0b193110  add.s r18, r2, r3
0020bc  5b010000  j 8
0020c0  17196101  or r18, r2, r22
0020c4  1781b000  and r2, r1, r11
0020c8  13812a04  setlt.u r2, r21, r2
0020cc  3b700100  bneq r2, zero, 28
0020d0  1bc10001  srli r2, r1, 16
0020d4  1b011100  andi r2, r2, 1
0020d8  8b902010  add.s r1, r1, r2
0020dc  6341ffeb  loadli.w r2,  -2564(r30)
0020e0  0b912010  add.s r2, r1, r2
0020e4  5b010000  j 8
0020e8  17916001  or r2, r1, r22
0020ec  9780b900  and r1, r19, r11
0020f0  93801a04  setlt.u r1, r21, r1
0020f4  3bf00000  bneq r1, zero, 28
0020f8  9bc00901  srli r1, r19, 16
0020fc  e341ffeb  loadli.w r3,  -2564(r30)
002100  9b801000  andi r1, r1, 1
002104  8b901910  add.s r1, r19, r1
002108  8b903010  add.s r1, r1, r3
00210c  5b010000  j 8
002110  97906901  or r1, r19, r22
002114  9781b800  and r3, r17, r11
002118  93813a04  setlt.u r3, r21, r3
00211c  3bf00100  bneq r3, zero, 28
002120  9bc10801  srli r3, r17, 16
002124  9b811100  andi r3, r3, 1
002128  8b913810  add.s r3, r17, r3
00212c  e348ffeb  loadli.w r17,  -2564(r30)
002130  8b911111  add.s r3, r3, r17
002134  5b010000  j 8
002138  97916801  or r3, r17, r22
00213c  9788b700  and r17, r15, r11
002140  93881a05  setlt.u r17, r21, r17
002144  3bf00800  bneq r17, zero, 28
002148  9bc80701  srli r17, r15, 16
00214c  9b881800  andi r17, r17, 1
002150  8b971711  add.s r15, r15, r17
002154  e348ffeb  loadli.w r17,  -2564(r30)
002158  8b991711  add.s r19, r15, r17
00215c  5b010000  j 8
002160  97996701  or r19, r15, r22
002164  9788b600  and r17, r13, r11
002168  93881a05  setlt.u r17, r21, r17
00216c  3bf00800  bneq r17, zero, 28
002170  9bc80601  srli r17, r13, 16
002174  9b881800  andi r17, r17, 1
002178  8b961611  add.s r13, r13, r17
00217c  e348ffeb  loadli.w r17,  -2564(r30)
002180  8b961611  add.s r13, r13, r17
002184  5b010000  j 8
002188  97966601  or r13, r13, r22
00218c  9708b600  and r17, r12, r11
002190  93881a05  setlt.u r17, r21, r17
002194  3bf00800  bneq r17, zero, 28
002198  9b480601  srli r17, r12, 16
00219c  9b881800  andi r17, r17, 1
0021a0  0b161611  add.s r12, r12, r17
0021a4  e348ffeb  loadli.w r17,  -2564(r30)
0021a8  0b161611  add.s r12, r12, r17
0021ac  5b010000  j 8
0021b0  17166601  or r12, r12, r22
0021b4  9708b500  and r17, r10, r11
0021b8  93881a05  setlt.u r17, r21, r17
0021bc  3bf00800  bneq r17, zero, 28
0021c0  9b480501  srli r17, r10, 16
0021c4  9b881800  andi r17, r17, 1
0021c8  0b151511  add.s r10, r10, r17
0021cc  e348ffeb  loadli.w r17,  -2564(r30)
0021d0  0b151511  add.s r10, r10, r17
0021d4  5b010000  j 8
0021d8  17156501  or r10, r10, r22
0021dc  9788b400  and r17, r9, r11
0021e0  93881a05  setlt.u r17, r21, r17
0021e4  3bf00800  bneq r17, zero, 28
0021e8  9bc80401  srli r17, r9, 16
0021ec  9b881800  andi r17, r17, 1
0021f0  8b941411  add.s r9, r9, r17
0021f4  e348ffeb  loadli.w r17,  -2564(r30)
0021f8  8b941411  add.s r9, r9, r17
0021fc  5b010000  j 8
002200  97946401  or r9, r9, r22
002204  9708b400  and r17, r8, r11
002208  93881a05  setlt.u r17, r21, r17
00220c  3bf00800  bneq r17, zero, 28
002210  9b480401  srli r17, r8, 16
002214  9b881800  andi r17, r17, 1
002218  0b141411  add.s r8, r8, r17
00221c  e348ffeb  loadli.w r17,  -2564(r30)
002220  0b141411  add.s r8, r8, r17
002224  5b010000  j 8
002228  17146401  or r8, r8, r22
00222c  9788b300  and r17, r7, r11
002230  93881a05  setlt.u r17, r21, r17
002234  3bf00800  bneq r17, zero, 28
002238  9bc80301  srli r17, r7, 16
00223c  9b881800  andi r17, r17, 1
002240  8b931311  add.s r7, r7, r17
002244  e348ffeb  loadli.w r17,  -2564(r30)
002248  8b931311  add.s r7, r7, r17
00224c  5b010000  j 8
002250  97936301  or r7, r7, r22
002254  9708b300  and r17, r6, r11
002258  93881a05  setlt.u r17, r21, r17
00225c  3bf00800  bneq r17, zero, 28
002260  9b480301  srli r17, r6, 16
002264  9b881800  andi r17, r17, 1
002268  0b131311  add.s r6, r6, r17
00226c  e348ffeb  loadli.w r17,  -2564(r30)
002270  0b131311  add.s r6, r6, r17
002274  5b010000  j 8
002278  17136301  or r6, r6, r22
00227c  9788b200  and r17, r5, r11
002280  93881a05  setlt.u r17, r21, r17
002284  3bf00800  bneq r17, zero, 28
002288  9bc80201  srli r17, r5, 16
00228c  9b881800  andi r17, r17, 1
002290  8b921211  add.s r5, r5, r17
002294  e348ffeb  loadli.w r17,  -2564(r30)
002298  8b921211  add.s r5, r5, r17
00229c  5b010000  j 8
0022a0  97926201  or r5, r5, r22
0022a4  9708b200  and r17, r4, r11
0022a8  93881a05  setlt.u r17, r21, r17
0022ac  3bf00800  bneq r17, zero, 28
0022b0  9b480201  srli r17, r4, 16
0022b4  9b881800  andi r17, r17, 1
0022b8  0b121211  add.s r4, r4, r17
0022bc  e348ffeb  loadli.w r17,  -2564(r30)
0022c0  0b121211  add.s r4, r4, r17
0022c4  5b010000  j 8
0022c8  17126201  or r4, r4, r22
0022cc  ab08ffff  lui r17, 1048560
0022d0  97891901  and r19, r19, r17
0022d4  978b1301  and r23, r7, r17
0022d8  17011101  and r2, r2, r17
0022dc  97861601  and r13, r13, r17
0022e0  97841401  and r9, r9, r17
0022e4  970d1201  and r27, r4, r17
0022e8  170a1a01  and r20, r20, r17
0022ec  17081801  and r16, r16, r17
0022f0  17091901  and r18, r18, r17
0022f4  97801001  and r1, r1, r17
0022f8  97811101  and r3, r3, r17
0022fc  17061601  and r12, r12, r17
002300  170c1301  and r24, r6, r17
002304  17041401  and r8, r8, r17
002308  978c1201  and r25, r5, r17
00230c  17051501  and r10, r10, r17
002310  1f820900  addli r4, r19, 0
002314  67432fea  storeli.w r2, -2764(r30)
002318  67017feb  storeli.w r23, -2800(r30)
00231c  1f870b00  addli r14, r23, 0
002320  9f0b0100  addli r23, r2, 0
002324  6301efeb  loadli.w r2,  -2576(r30)
002328  e7023feb  storeli.w r19, -2776(r30)
00232c  e7430feb  storeli.w r16, -2756(r30)
002330  9f080800  addli r17, r16, 0
002334  1f080a00  addli r16, r20, 0
002338  67031fea  storeli.w r1, -2768(r30)
00233c  e7423fea  storeli.w r3, -2772(r30)
002340  9f090900  addli r19, r18, 0
002344  9f870600  addli r15, r13, 0
002348  1f030600  addli r6, r12, 0
00234c  e7019fea  storeli.w r9, -2792(r30)
002350  9f830400  addli r7, r9, 0
002354  67418fea  storeli.w r8, -2796(r30)
002358  9f020400  addli r5, r8, 0
00235c  e7408feb  storeli.w r24, -2804(r30)
002360  1f040c00  addli r8, r24, 0
002364  1f8c0000  addli r24, r1, 0
002368  e7009feb  storeli.w r25, -2808(r30)
00236c  9f840c00  addli r9, r25, 0
002370  9f8c0100  addli r25, r3, 0
002374  674ebfe9  storeli.w r27, -2844(r30)
002378  9f810d00  addli r3, r27, 0
00237c  9f000004  addli r1, zero, 512
002380  67044feb  storeli.w r20, -2752(r30)
002384  e7032feb  storeli.w r18, -2760(r30)
002388  6742dfea  storeli.w r13, -2780(r30)
00238c  6702cfea  storeli.w r12, -2784(r30)
002390  e741afea  storeli.w r10, -2788(r30)
002394  9f0d0200  addli r27, r4, 0
002398  3f111100  blt.s r2, r1, 68
00239c  1f080000  addli r16, zero, 0
0023a0  9f080000  addli r17, zero, 0
0023a4  9f090000  addli r19, zero, 0
0023a8  9f0b0000  addli r23, zero, 0
0023ac  1f0c0000  addli r24, zero, 0
0023b0  9f0c0000  addli r25, zero, 0
0023b4  9f0d0000  addli r27, zero, 0
0023b8  9f070000  addli r15, zero, 0
0023bc  1f030000  addli r6, zero, 0
0023c0  1f050000  addli r10, zero, 0
0023c4  9f030000  addli r7, zero, 0
0023c8  9f020000  addli r5, zero, 0
0023cc  1f070000  addli r14, zero, 0
0023d0  1f040000  addli r8, zero, 0
0023d4  9f040000  addli r9, zero, 0
0023d8  9f010000  addli r3, zero, 0
0023dc  1f024000  addli r4, zero, 32
0023e0  00a00000  mfence { lm }
0023e4  db170000  j 188
0023e8  1f030000  addli r6, zero, 0
0023ec  9f030000  addli r7, zero, 0
0023f0  1f090000  addli r18, zero, 0
0023f4  9f0a0000  addli r21, zero, 0
0023f8  1f0b0000  addli r22, zero, 0
0023fc  1f0e0000  addli r28, zero, 0
002400  1f0a0000  addli r20, zero, 0
002404  1f0d0000  addli r26, zero, 0
002408  1f050000  addli r10, zero, 0
00240c  9f010000  addli r3, zero, 0
002410  1f010000  addli r2, zero, 0
002414  9f020000  addli r5, zero, 0
002418  9f000000  addli r1, zero, 0
00241c  1f040000  addli r8, zero, 0
002420  9f040000  addli r9, zero, 0
002424  1f060000  addli r12, zero, 0
002428  6347cfea  loadli.w r14,  -2716(r30)
00242c  0b686810  add.f.rn r16, r16, r6
002430  63030feb  loadli.w r6,  -2688(r30)
002434  8be87810  add.f.rn r17, r17, r7
002438  e303efea  loadli.w r7,  -2704(r30)
00243c  8be92911  add.f.rn r19, r19, r18
002440  8beb5b11  add.f.rn r23, r23, r21
002444  0b6c6c11  add.f.rn r24, r24, r22
002448  8beccc11  add.f.rn r25, r25, r28
00244c  8bed4d11  add.f.rn r27, r27, r20
002450  8be7a711  add.f.rn r15, r15, r26
002454  1f024200  addli r4, r4, 32
002458  0b671710  add.f.rn r14, r14, r1
00245c  e300cfea  loadli.w r1,  -2720(r30)
002460  0b63a310  add.f.rn r6, r6, r10
002464  6305ffea  loadli.w r10,  -2696(r30)
002468  8be32310  add.f.rn r7, r7, r2
00246c  6301dfea  loadli.w r2,  -2712(r30)
002470  8be08010  add.f.rn r1, r1, r8
002474  0b653510  add.f.rn r10, r10, r3
002478  e301bfea  loadli.w r3,  -2728(r30)
00247c  0b615110  add.f.rn r2, r2, r5
002480  8be1c110  add.f.rn r3, r3, r12
002484  1f840000  addli r8, r1, 0
002488  e340bfea  loadli.w r1,  -2724(r30)
00248c  9f020100  addli r5, r2, 0
002490  8be09010  add.f.rn r1, r1, r9
002494  9f840000  addli r9, r1, 0
002498  9f000002  addli r1, zero, 256
00249c  37391202  beq r4, r1, 1612
0024a0  9f000ff4  addli r1, r30, -1536
0024a4  e7053fea  storeli.w r3, -2728(r30)
0024a8  e7065fea  storeli.w r5, -2712(r30)
0024ac  92305002  vadd.s.mz vr1{mr1}, zero, vr5
0024b0  9f160000  addli r13, zero, 1
0024b4  67086fea  storeli.w r6, -2688(r30)
0024b8  e7459fea  storeli.w r9, -2724(r30)
0024bc  67068fea  storeli.w r8, -2720(r30)
0024c0  67077fea  storeli.w r7, -2704(r30)
0024c4  e707afea  storeli.w r10, -2696(r30)
0024c8  12315002  vadd.s.mz vr2{mr1}, zero, vr5
0024cc  8b914010  add.s r3, r1, r4
0024d0  7e8106e0  vmmov mr2, r13
0024d4  ebb20100  load.hu r5, 0(r3)
0024d8  6bb32100  load.hu r6, 2(r3)
0024dc  6bb1a101  load.hu r2, 26(r3)
0024e0  ebb0c101  load.hu r1, 28(r3)
0024e4  ebb34100  load.hu r7, 4(r3)
0024e8  6bb46100  load.hu r8, 6(r3)
0024ec  ebb48100  load.hu r9, 8(r3)
0024f0  6bb5a100  load.hu r10, 10(r3)
0024f4  6bb6c100  load.hu r12, 12(r3)
0024f8  6bb9e100  load.hu r18, 14(r3)
0024fc  6bba0101  load.hu r20, 16(r3)
002500  ebba2101  load.hu r21, 18(r3)
002504  6bbb4101  load.hu r22, 20(r3)
002508  6bbd6101  load.hu r26, 22(r3)
00250c  6bbe8101  load.hu r28, 24(r3)
002510  ebb1e101  load.hu r3, 30(r3)
002514  b3920218  bfloat2float.rn r5, r5
002518  33110118  bfloat2float.rn r2, r2
00251c  b3900018  bfloat2float.rn r1, r1
002520  eaa01234  vor.u.mh vr1{mr2}, r5, vr1
002524  b3120318  bfloat2float.rn r5, r6
002528  1f230000  addli r6, zero, 2
00252c  fe0103e0  vmmov mr3, r6
002530  1f430000  addli r6, zero, 4
002534  eaa01236  vor.u.mh vr1{mr3}, r5, vr1
002538  b3920318  bfloat2float.rn r5, r7
00253c  7e0003e0  vmmov mr0, r6
002540  1f031000  addli r6, zero, 8
002544  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002548  b3120418  bfloat2float.rn r5, r8
00254c  7e0003e0  vmmov mr0, r6
002550  1f032000  addli r6, zero, 16
002554  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002558  b3920418  bfloat2float.rn r5, r9
00255c  7e0003e0  vmmov mr0, r6
002560  1f034000  addli r6, zero, 32
002564  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002568  b3120518  bfloat2float.rn r5, r10
00256c  7e0003e0  vmmov mr0, r6
002570  1f038000  addli r6, zero, 64
002574  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002578  b3120618  bfloat2float.rn r5, r12
00257c  7e0003e0  vmmov mr0, r6
002580  1f030001  addli r6, zero, 128
002584  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002588  b3120918  bfloat2float.rn r5, r18
00258c  7e0003e0  vmmov mr0, r6
002590  1f030002  addli r6, zero, 256
002594  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
002598  b3120a18  bfloat2float.rn r5, r20
00259c  7e0003e0  vmmov mr0, r6
0025a0  1f030004  addli r6, zero, 512
0025a4  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0025a8  b3920a18  bfloat2float.rn r5, r21
0025ac  7e0003e0  vmmov mr0, r6
0025b0  1f030008  addli r6, zero, 1024
0025b4  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0025b8  b3120b18  bfloat2float.rn r5, r22
0025bc  7e0003e0  vmmov mr0, r6
0025c0  1f030010  addli r6, zero, 2048
0025c4  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0025c8  b3120d18  bfloat2float.rn r5, r26
0025cc  7e0003e0  vmmov mr0, r6
0025d0  1f030020  addli r6, zero, 4096
0025d4  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0025d8  b3120e18  bfloat2float.rn r5, r28
0025dc  7e0003e0  vmmov mr0, r6
0025e0  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0025e4  9f020040  addli r5, zero, 8192
0025e8  7e8002e0  vmmov mr0, r5
0025ec  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0025f0  2b410000  lui r2, 4
0025f4  7e0001e0  vmmov mr0, r2
0025f8  1f010ff6  addli r2, r30, -1280
0025fc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002600  b3900118  bfloat2float.rn r1, r3
002604  ab810000  lui r3, 8
002608  0b114110  add.s r2, r2, r4
00260c  7e8001e0  vmmov mr0, r3
002610  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002614  eb300100  load.hu r1, 0(r2)
002618  eb312100  load.hu r3, 2(r2)
00261c  eb324100  load.hu r5, 4(r2)
002620  6b336100  load.hu r6, 6(r2)
002624  eb338100  load.hu r7, 8(r2)
002628  6b34a100  load.hu r8, 10(r2)
00262c  eb34c100  load.hu r9, 12(r2)
002630  6b35e100  load.hu r10, 14(r2)
002634  6b360101  load.hu r12, 16(r2)
002638  6b392101  load.hu r18, 18(r2)
00263c  6b3a4101  load.hu r20, 20(r2)
002640  eb3a6101  load.hu r21, 22(r2)
002644  6b3b8101  load.hu r22, 24(r2)
002648  6b3da101  load.hu r26, 26(r2)
00264c  6b3ec101  load.hu r28, 28(r2)
002650  6b31e101  load.hu r2, 30(r2)
002654  b3900018  bfloat2float.rn r1, r1
002658  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00265c  b3900118  bfloat2float.rn r1, r3
002660  9f410000  addli r3, zero, 4
002664  7e8101e0  vmmov mr2, r3
002668  9f011000  addli r3, zero, 8
00266c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
002670  b3900218  bfloat2float.rn r1, r5
002674  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002678  b3100318  bfloat2float.rn r1, r6
00267c  7e8101e0  vmmov mr2, r3
002680  9f012000  addli r3, zero, 16
002684  2b03807f  lui r6, 522240
002688  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00268c  b3900318  bfloat2float.rn r1, r7
002690  7e8101e0  vmmov mr2, r3
002694  9f014000  addli r3, zero, 32
002698  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00269c  b3100418  bfloat2float.rn r1, r8
0026a0  7e8101e0  vmmov mr2, r3
0026a4  9f018000  addli r3, zero, 64
0026a8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0026ac  b3900418  bfloat2float.rn r1, r9
0026b0  7e8101e0  vmmov mr2, r3
0026b4  9f010001  addli r3, zero, 128
0026b8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0026bc  b3100518  bfloat2float.rn r1, r10
0026c0  7e8101e0  vmmov mr2, r3
0026c4  9f010002  addli r3, zero, 256
0026c8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0026cc  b3100618  bfloat2float.rn r1, r12
0026d0  7e8101e0  vmmov mr2, r3
0026d4  9f010004  addli r3, zero, 512
0026d8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0026dc  b3100918  bfloat2float.rn r1, r18
0026e0  7e8101e0  vmmov mr2, r3
0026e4  9f010008  addli r3, zero, 1024
0026e8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0026ec  b3100a18  bfloat2float.rn r1, r20
0026f0  7e8101e0  vmmov mr2, r3
0026f4  9f010010  addli r3, zero, 2048
0026f8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0026fc  b3900a18  bfloat2float.rn r1, r21
002700  7e8101e0  vmmov mr2, r3
002704  9f010020  addli r3, zero, 4096
002708  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00270c  b3100b18  bfloat2float.rn r1, r22
002710  7e8101e0  vmmov mr2, r3
002714  9f010040  addli r3, zero, 8192
002718  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00271c  b3100d18  bfloat2float.rn r1, r26
002720  7e8101e0  vmmov mr2, r3
002724  ab410000  lui r3, 4
002728  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00272c  b3100e18  bfloat2float.rn r1, r28
002730  7e8101e0  vmmov mr2, r3
002734  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
002738  b3100118  bfloat2float.rn r1, r2
00273c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
002740  9f000ff0  addli r1, r30, -2048
002744  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
002748  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00274c  00a00000  mfence { lm }
002750  63060ff0  loadli.w r12,  -2048(r30)
002754  e3440ff0  loadli.w r9,  -2044(r30)
002758  63041ff0  loadli.w r8,  -2040(r30)
00275c  e3431ff0  loadli.w r7,  -2036(r30)
002760  630e2ff0  loadli.w r28,  -2032(r30)
002764  e3422ff0  loadli.w r5,  -2028(r30)
002768  630a3ff0  loadli.w r20,  -2024(r30)
00276c  634d3ff0  loadli.w r26,  -2020(r30)
002770  63054ff0  loadli.w r10,  -2016(r30)
002774  e3414ff0  loadli.w r3,  -2012(r30)
002778  63015ff0  loadli.w r2,  -2008(r30)
00277c  e34a5ff0  loadli.w r21,  -2004(r30)
002780  9700b600  and r1, r12, r11
002784  93061304  setlt.u r13, r6, r1
002788  e3006ff0  loadli.w r1,  -2000(r30)
00278c  63436ff0  loadli.w r6,  -1996(r30)
002790  630b7ff0  loadli.w r22,  -1992(r30)
002794  63497ff0  loadli.w r18,  -1988(r30)
002798  6746efea  storeli.w r14, -2716(r30)
00279c  3bf00600  bneq r13, zero, 28
0027a0  9b460601  srli r13, r12, 16
0027a4  9b861600  andi r13, r13, 1
0027a8  0b16d610  add.s r12, r12, r13
0027ac  e346ffeb  loadli.w r13,  -2564(r30)
0027b0  0b16d610  add.s r12, r12, r13
0027b4  5b020000  j 16
0027b8  ab064000  lui r13, 1024
0027bc  1716d600  or r12, r12, r13
0027c0  e346ffeb  loadli.w r13,  -2564(r30)
0027c4  6745cfea  storeli.w r12, -2732(r30)
0027c8  1786b400  and r12, r9, r11
0027cc  2b07807f  lui r14, 522240
0027d0  1306c704  setlt.u r12, r14, r12
0027d4  3b600600  bneq r12, zero, 24
0027d8  1bc60401  srli r12, r9, 16
0027dc  1b061600  andi r12, r12, 1
0027e0  8b94c410  add.s r9, r9, r12
0027e4  0b97d410  add.s r14, r9, r13
0027e8  db010000  j 12
0027ec  2b064000  lui r12, 1024
0027f0  1797c400  or r14, r9, r12
0027f4  9704b400  and r9, r8, r11
0027f8  2b06807f  lui r12, 522240
0027fc  93049604  setlt.u r9, r12, r9
002800  3be00400  bneq r9, zero, 24
002804  9b440401  srli r9, r8, 16
002808  9b841400  andi r9, r9, 1
00280c  0b149410  add.s r8, r8, r9
002810  0b14d410  add.s r8, r8, r13
002814  db010000  j 12
002818  ab044000  lui r9, 1024
00281c  17149400  or r8, r8, r9
002820  67058fea  storeli.w r8, -2736(r30)
002824  1784b300  and r8, r7, r11
002828  ab04807f  lui r9, 522240
00282c  13848404  setlt.u r8, r9, r8
002830  3b600400  bneq r8, zero, 24
002834  1bc40301  srli r8, r7, 16
002838  1b041400  andi r8, r8, 1
00283c  8b938310  add.s r7, r7, r8
002840  8b93d310  add.s r7, r7, r13
002844  db010000  j 12
002848  2b044000  lui r8, 1024
00284c  97938300  or r7, r7, r8
002850  e7447fea  storeli.w r7, -2740(r30)
002854  9703be00  and r7, r28, r11
002858  2b04807f  lui r8, 522240
00285c  93037404  setlt.u r7, r8, r7
002860  3be00300  bneq r7, zero, 24
002864  9b430e01  srli r7, r28, 16
002868  9b831300  andi r7, r7, 1
00286c  8b137e10  add.s r7, r28, r7
002870  0b9ed310  add.s r28, r7, r13
002874  db010000  j 12
002878  ab034000  lui r7, 1024
00287c  171e7e00  or r28, r28, r7
002880  9783b200  and r7, r5, r11
002884  93037604  setlt.u r7, r12, r7
002888  3be00300  bneq r7, zero, 24
00288c  9bc30201  srli r7, r5, 16
002890  9b831300  andi r7, r7, 1
002894  8b927210  add.s r5, r5, r7
002898  8b92d210  add.s r5, r5, r13
00289c  db010000  j 12
0028a0  ab034000  lui r7, 1024
0028a4  97927200  or r5, r5, r7
0028a8  e7045fea  storeli.w r5, -2744(r30)
0028ac  9702ba00  and r5, r20, r11
0028b0  93025604  setlt.u r5, r12, r5
0028b4  3be00200  bneq r5, zero, 24
0028b8  9b420a01  srli r5, r20, 16
0028bc  9b821200  andi r5, r5, 1
0028c0  8b125a10  add.s r5, r20, r5
0028c4  0b9ad210  add.s r20, r5, r13
0028c8  db010000  j 12
0028cc  ab024000  lui r5, 1024
0028d0  171a5a00  or r20, r20, r5
0028d4  9702bd00  and r5, r26, r11
0028d8  93025604  setlt.u r5, r12, r5
0028dc  3be00200  bneq r5, zero, 24
0028e0  9b420d01  srli r5, r26, 16
0028e4  9b821200  andi r5, r5, 1
0028e8  8b125d10  add.s r5, r26, r5
0028ec  0b9dd210  add.s r26, r5, r13
0028f0  db010000  j 12
0028f4  ab024000  lui r5, 1024
0028f8  171d5d00  or r26, r26, r5
0028fc  9702b500  and r5, r10, r11
002900  93025604  setlt.u r5, r12, r5
002904  3be00200  bneq r5, zero, 24
002908  9b420501  srli r5, r10, 16
00290c  9b821200  andi r5, r5, 1
002910  8b125510  add.s r5, r10, r5
002914  0b95d210  add.s r10, r5, r13
002918  db010000  j 12
00291c  ab024000  lui r5, 1024
002920  17155500  or r10, r10, r5
002924  9782b100  and r5, r3, r11
002928  93025604  setlt.u r5, r12, r5
00292c  3be00200  bneq r5, zero, 24
002930  9bc20101  srli r5, r3, 16
002934  9b821200  andi r5, r5, 1
002938  8b915110  add.s r3, r3, r5
00293c  8b91d110  add.s r3, r3, r13
002940  db010000  j 12
002944  ab024000  lui r5, 1024
002948  97915100  or r3, r3, r5
00294c  9702b100  and r5, r2, r11
002950  93025604  setlt.u r5, r12, r5
002954  3be00200  bneq r5, zero, 24
002958  9b420101  srli r5, r2, 16
00295c  9b821200  andi r5, r5, 1
002960  0b115110  add.s r2, r2, r5
002964  0b11d110  add.s r2, r2, r13
002968  db010000  j 12
00296c  ab024000  lui r5, 1024
002970  17115100  or r2, r2, r5
002974  9782ba00  and r5, r21, r11
002978  93025604  setlt.u r5, r12, r5
00297c  3be00200  bneq r5, zero, 24
002980  9bc20a01  srli r5, r21, 16
002984  9b821200  andi r5, r5, 1
002988  8b925a10  add.s r5, r21, r5
00298c  8b92d210  add.s r5, r5, r13
002990  db010000  j 12
002994  ab024000  lui r5, 1024
002998  97925a00  or r5, r21, r5
00299c  9783b000  and r7, r1, r11
0029a0  93037604  setlt.u r7, r12, r7
0029a4  3be00300  bneq r7, zero, 24
0029a8  9bc30001  srli r7, r1, 16
0029ac  9b831300  andi r7, r7, 1
0029b0  8b907010  add.s r1, r1, r7
0029b4  8b90d010  add.s r1, r1, r13
0029b8  db010000  j 12
0029bc  ab034000  lui r7, 1024
0029c0  97907000  or r1, r1, r7
0029c4  9703b300  and r7, r6, r11
0029c8  93037604  setlt.u r7, r12, r7
0029cc  3be00300  bneq r7, zero, 24
0029d0  9b430301  srli r7, r6, 16
0029d4  9b831300  andi r7, r7, 1
0029d8  0b137310  add.s r6, r6, r7
0029dc  0b14d310  add.s r8, r6, r13
0029e0  db010000  j 12
0029e4  ab034000  lui r7, 1024
0029e8  17147300  or r8, r6, r7
0029ec  1703bb00  and r6, r22, r11
0029f0  13036604  setlt.u r6, r12, r6
0029f4  3b600300  bneq r6, zero, 24
0029f8  1b430b01  srli r6, r22, 16
0029fc  1b031300  andi r6, r6, 1
002a00  0b136b10  add.s r6, r22, r6
002a04  8b14d310  add.s r9, r6, r13
002a08  db010000  j 12
002a0c  2b034000  lui r6, 1024
002a10  97146b00  or r9, r22, r6
002a14  1703b900  and r6, r18, r11
002a18  13036604  setlt.u r6, r12, r6
002a1c  3b600300  bneq r6, zero, 24
002a20  1b430901  srli r6, r18, 16
002a24  1b031300  andi r6, r6, 1
002a28  0b136910  add.s r6, r18, r6
002a2c  0b16d310  add.s r12, r6, r13
002a30  db010000  j 12
002a34  2b034000  lui r6, 1024
002a38  17166900  or r12, r18, r6
002a3c  e303efeb  loadli.w r7,  -2576(r30)
002a40  1f030004  addli r6, zero, 512
002a44  3fa06300  blt.s r7, r6, 8
002a48  5b34ffff  j -1632
002a4c  9f030700  addli r7, r14, 0
002a50  1f870700  addli r14, r15, 0
002a54  9f870d00  addli r15, r27, 0
002a58  9f8d0c00  addli r27, r25, 0
002a5c  9f0c0c00  addli r25, r24, 0
002a60  1f8c0b00  addli r24, r23, 0
002a64  9f8b0900  addli r23, r19, 0
002a68  9f890800  addli r19, r17, 0
002a6c  9f080800  addli r17, r16, 0
002a70  2b08ffff  lui r16, 1048560
002a74  6343afea  loadli.w r6,  -2732(r30)
002a78  6309afea  loadli.w r18,  -2736(r30)
002a7c  e34a9fea  loadli.w r21,  -2740(r30)
002a80  170b0e01  and r22, r28, r16
002a84  630e9fea  loadli.w r28,  -2744(r30)
002a88  97830301  and r7, r7, r16
002a8c  170a0a01  and r20, r20, r16
002a90  170d0d01  and r26, r26, r16
002a94  17050501  and r10, r10, r16
002a98  97810101  and r3, r3, r16
002a9c  17010101  and r2, r2, r16
002aa0  97820201  and r5, r5, r16
002aa4  97800001  and r1, r1, r16
002aa8  17040401  and r8, r8, r16
002aac  97840401  and r9, r9, r16
002ab0  17060601  and r12, r12, r16
002ab4  17030301  and r6, r6, r16
002ab8  17090901  and r18, r18, r16
002abc  978a0a01  and r21, r21, r16
002ac0  170e0e01  and r28, r28, r16
002ac4  1f880800  addli r16, r17, 0
002ac8  9f880900  addli r17, r19, 0
002acc  9f890b00  addli r19, r23, 0
002ad0  9f0b0c00  addli r23, r24, 0
002ad4  1f8c0c00  addli r24, r25, 0
002ad8  9f8c0d00  addli r25, r27, 0
002adc  9f8d0700  addli r27, r15, 0
002ae0  9f070700  addli r15, r14, 0
002ae4  db28ffff  j -1724
002ae8  8b601811  add.f.rn r1, r16, r17
002aec  6301cfe1  loadli.w r2,  -3872(r30)
002af0  8be03011  add.f.rn r1, r1, r19
002af4  8be07011  add.f.rn r1, r1, r23
002af8  8be08011  add.f.rn r1, r1, r24
002afc  8be09011  add.f.rn r1, r1, r25
002b00  8be0b011  add.f.rn r1, r1, r27
002b04  8be0f010  add.f.rn r1, r1, r15
002b08  8be06010  add.f.rn r1, r1, r6
002b0c  8be0a010  add.f.rn r1, r1, r10
002b10  8be07010  add.f.rn r1, r1, r7
002b14  8be05010  add.f.rn r1, r1, r5
002b18  8be0e010  add.f.rn r1, r1, r14
002b1c  8be08010  add.f.rn r1, r1, r8
002b20  8be09010  add.f.rn r1, r1, r9
002b24  8be03010  add.f.rn r1, r1, r3
002b28  73601100  stores.w r1, 0(r2)
002b2c  00a00300  mfence { lm, sm, gm }
002b30  6342ffe9  loadli.w r4,  -2820(r30)
002b34  80210204  csr_set csr3, r4
002b38  00d00100  sync_group
002b3c  e300ffe9  loadli.w r1,  -2824(r30)
002b40  3ba10000  bneq r1, zero, 72
002b44  e302dfe5  loadli.w r5,  -3352(r30)
002b48  efc00200  loads.w r1, 0(r5)
002b4c  6fc14200  loads.w r2, 4(r5)
002b50  efc18200  loads.w r3, 8(r5)
002b54  8be02010  add.f.rn r1, r1, r2
002b58  6fc1c200  loads.w r2, 12(r5)
002b5c  8be03010  add.f.rn r1, r1, r3
002b60  efc10201  loads.w r3, 16(r5)
002b64  8be02010  add.f.rn r1, r1, r2
002b68  6fc14201  loads.w r2, 20(r5)
002b6c  8be03010  add.f.rn r1, r1, r3
002b70  efc18201  loads.w r3, 24(r5)
002b74  8be02010  add.f.rn r1, r1, r2
002b78  6fc1c201  loads.w r2, 28(r5)
002b7c  8be03010  add.f.rn r1, r1, r3
002b80  8be02010  add.f.rn r1, r1, r2
002b84  73e01200  stores.w r1, 0(r5)
002b88  00a00300  mfence { lm, sm, gm }
002b8c  80210204  csr_set csr3, r4
002b90  00d00100  sync_group
002b94  e300dfe5  loadli.w r1,  -3352(r30)
002b98  2b01803a  lui r2, 239616
002b9c  ab094000  lui r19, 1024
002ba0  efc00000  loads.w r1, 0(r1)
002ba4  8be22020  mul.f.rn r5, r1, r2
002ba8  6301efeb  loadli.w r2,  -2576(r30)
002bac  9f000004  addli r1, zero, 512
002bb0  3f211100  blt.s r2, r1, 72
002bb4  9f0b0000  addli r23, zero, 0
002bb8  1f0c0000  addli r24, zero, 0
002bbc  9f010000  addli r3, zero, 0
002bc0  1f020000  addli r4, zero, 0
002bc4  1f030000  addli r6, zero, 0
002bc8  9f030000  addli r7, zero, 0
002bcc  1f040000  addli r8, zero, 0
002bd0  1f050000  addli r10, zero, 0
002bd4  9f070000  addli r15, zero, 0
002bd8  9f040000  addli r9, zero, 0
002bdc  1f080000  addli r16, zero, 0
002be0  9f0a0000  addli r21, zero, 0
002be4  1f0b0000  addli r22, zero, 0
002be8  9f080000  addli r17, zero, 0
002bec  1f090000  addli r18, zero, 0
002bf0  1f0a0000  addli r20, zero, 0
002bf4  db1a0000  j 212
002bf8  63463fea  loadli.w r12,  -2788(r30)
002bfc  e3008fea  loadli.w r1,  -2752(r30)
002c00  e3444fea  loadli.w r9,  -2780(r30)
002c04  63417fea  loadli.w r2,  -2756(r30)
002c08  63054fea  loadli.w r10,  -2784(r30)
002c0c  e3017fea  loadli.w r3,  -2760(r30)
002c10  63426fea  loadli.w r4,  -2764(r30)
002c14  63036fea  loadli.w r6,  -2768(r30)
002c18  e3435fea  loadli.w r7,  -2772(r30)
002c1c  63045fea  loadli.w r8,  -2776(r30)
002c20  8b665618  sub.f.rn r13, r12, r5
002c24  63063fea  loadli.w r12,  -2792(r30)
002c28  8be05018  sub.f.rn r1, r1, r5
002c2c  8be45418  sub.f.rn r9, r9, r5
002c30  0b615118  sub.f.rn r2, r2, r5
002c34  0b655518  sub.f.rn r10, r10, r5
002c38  8be15118  sub.f.rn r3, r3, r5
002c3c  0b625218  sub.f.rn r4, r4, r5
002c40  0b635318  sub.f.rn r6, r6, r5
002c44  8be35318  sub.f.rn r7, r7, r5
002c48  0b645418  sub.f.rn r8, r8, r5
002c4c  0b675618  sub.f.rn r14, r12, r5
002c50  63462fea  loadli.w r12,  -2796(r30)
002c54  8b675618  sub.f.rn r15, r12, r5
002c58  63062fea  loadli.w r12,  -2800(r30)
002c5c  8beb1020  mul.f.rn r23, r1, r1
002c60  8be09420  mul.f.rn r1, r9, r9
002c64  0b6c2120  mul.f.rn r24, r2, r2
002c68  0b61a520  mul.f.rn r2, r10, r10
002c6c  8be4d620  mul.f.rn r9, r13, r13
002c70  e346ffeb  loadli.w r13,  -2564(r30)
002c74  8be13120  mul.f.rn r3, r3, r3
002c78  0b624220  mul.f.rn r4, r4, r4
002c7c  0b636320  mul.f.rn r6, r6, r6
002c80  8be37320  mul.f.rn r7, r7, r7
002c84  0b648420  mul.f.rn r8, r8, r8
002c88  0b685618  sub.f.rn r16, r12, r5
002c8c  63461fea  loadli.w r12,  -2804(r30)
002c90  8b685618  sub.f.rn r17, r12, r5
002c94  63061fea  loadli.w r12,  -2808(r30)
002c98  1f850000  addli r10, r1, 0
002c9c  8b60e720  mul.f.rn r1, r14, r14
002ca0  8beaf720  mul.f.rn r21, r15, r15
002ca4  9f070100  addli r15, r2, 0
002ca8  0b695618  sub.f.rn r18, r12, r5
002cac  6346cfe9  loadli.w r12,  -2844(r30)
002cb0  0b6b0821  mul.f.rn r22, r16, r16
002cb4  0b6a5618  sub.f.rn r20, r12, r5
002cb8  1f880000  addli r16, r1, 0
002cbc  8be81821  mul.f.rn r17, r17, r17
002cc0  0b692921  mul.f.rn r18, r18, r18
002cc4  0b6a4a21  mul.f.rn r20, r20, r20
002cc8  e340afe1  loadli.w r1,  -3884(r30)
002ccc  63418fea  loadli.w r2,  -2748(r30)
002cd0  1f070ff4  addli r14, r30, -1536
002cd4  1f060002  addli r12, zero, 256
002cd8  8b902010  add.s r1, r1, r2
002cdc  67411fe6  storeli.w r1, -3308(r30)
002ce0  e300afe1  loadli.w r1,  -3888(r30)
002ce4  8b902010  add.s r1, r1, r2
002ce8  67011fe6  storeli.w r1, -3312(r30)
002cec  e3409fe1  loadli.w r1,  -3892(r30)
002cf0  8b902010  add.s r1, r1, r2
002cf4  e7401fe6  storeli.w r1, -3316(r30)
002cf8  e3009fe1  loadli.w r1,  -3896(r30)
002cfc  8b902010  add.s r1, r1, r2
002d00  e7001fe6  storeli.w r1, -3320(r30)
002d04  e3408fe1  loadli.w r1,  -3900(r30)
002d08  8b902010  add.s r1, r1, r2
002d0c  67401fe6  storeli.w r1, -3324(r30)
002d10  e3008fe1  loadli.w r1,  -3904(r30)
002d14  8b902010  add.s r1, r1, r2
002d18  67001fe6  storeli.w r1, -3328(r30)
002d1c  e3407fe1  loadli.w r1,  -3908(r30)
002d20  8b902010  add.s r1, r1, r2
002d24  e74f1fe4  storeli.w r1, -3332(r30)
002d28  e3007fe1  loadli.w r1,  -3912(r30)
002d2c  8b902010  add.s r1, r1, r2
002d30  e70f1fe4  storeli.w r1, -3336(r30)
002d34  e3406fe1  loadli.w r1,  -3916(r30)
002d38  8b902010  add.s r1, r1, r2
002d3c  674f1fe4  storeli.w r1, -3340(r30)
002d40  e3006fe1  loadli.w r1,  -3920(r30)
002d44  8b902010  add.s r1, r1, r2
002d48  670f1fe4  storeli.w r1, -3344(r30)
002d4c  e3405fe1  loadli.w r1,  -3924(r30)
002d50  8b902010  add.s r1, r1, r2
002d54  e74e1fe4  storeli.w r1, -3348(r30)
002d58  e3005fe1  loadli.w r1,  -3928(r30)
002d5c  8b902010  add.s r1, r1, r2
002d60  e7011fe6  storeli.w r1, -3304(r30)
002d64  e3404fe1  loadli.w r1,  -3932(r30)
002d68  8b902010  add.s r1, r1, r2
002d6c  e7411fe6  storeli.w r1, -3300(r30)
002d70  e3004fe1  loadli.w r1,  -3936(r30)
002d74  8b902010  add.s r1, r1, r2
002d78  67021fe6  storeli.w r1, -3296(r30)
002d7c  e3403fe1  loadli.w r1,  -3940(r30)
002d80  8b902010  add.s r1, r1, r2
002d84  67421fe6  storeli.w r1, -3292(r30)
002d88  e340ffe0  loadli.w r1,  -3972(r30)
002d8c  8b902010  add.s r1, r1, r2
002d90  e7021fe6  storeli.w r1, -3288(r30)
002d94  e340efe0  loadli.w r1,  -3980(r30)
002d98  8b902010  add.s r1, r1, r2
002d9c  e7421fe6  storeli.w r1, -3284(r30)
002da0  e300efe0  loadli.w r1,  -3984(r30)
002da4  8b902010  add.s r1, r1, r2
002da8  67031fe6  storeli.w r1, -3280(r30)
002dac  e340dfe0  loadli.w r1,  -3988(r30)
002db0  8b902010  add.s r1, r1, r2
002db4  67431fe6  storeli.w r1, -3276(r30)
002db8  e300dfe0  loadli.w r1,  -3992(r30)
002dbc  8b902010  add.s r1, r1, r2
002dc0  e7031fe6  storeli.w r1, -3272(r30)
002dc4  e340cfe0  loadli.w r1,  -3996(r30)
002dc8  8b902010  add.s r1, r1, r2
002dcc  e7431fe6  storeli.w r1, -3268(r30)
002dd0  e300cfe0  loadli.w r1,  -4000(r30)
002dd4  8b902010  add.s r1, r1, r2
002dd8  67041fe6  storeli.w r1, -3264(r30)
002ddc  e340bfe0  loadli.w r1,  -4004(r30)
002de0  8b902010  add.s r1, r1, r2
002de4  67441fe6  storeli.w r1, -3260(r30)
002de8  e300bfe0  loadli.w r1,  -4008(r30)
002dec  8b902010  add.s r1, r1, r2
002df0  e7041fe6  storeli.w r1, -3256(r30)
002df4  e340afe0  loadli.w r1,  -4012(r30)
002df8  8b902010  add.s r1, r1, r2
002dfc  e7441fe6  storeli.w r1, -3252(r30)
002e00  e300afe0  loadli.w r1,  -4016(r30)
002e04  8b902010  add.s r1, r1, r2
002e08  67051fe6  storeli.w r1, -3248(r30)
002e0c  e3409fe0  loadli.w r1,  -4020(r30)
002e10  8b902010  add.s r1, r1, r2
002e14  67451fe6  storeli.w r1, -3244(r30)
002e18  e3009fe0  loadli.w r1,  -4024(r30)
002e1c  8b902010  add.s r1, r1, r2
002e20  e7051fe6  storeli.w r1, -3240(r30)
002e24  e3408fe0  loadli.w r1,  -4028(r30)
002e28  8b902010  add.s r1, r1, r2
002e2c  e7451fe6  storeli.w r1, -3236(r30)
002e30  e3008fe0  loadli.w r1,  -4032(r30)
002e34  8b902010  add.s r1, r1, r2
002e38  67061fe6  storeli.w r1, -3232(r30)
002e3c  e3407fe0  loadli.w r1,  -4036(r30)
002e40  8b902010  add.s r1, r1, r2
002e44  67461fe6  storeli.w r1, -3228(r30)
002e48  e3007fe0  loadli.w r1,  -4040(r30)
002e4c  8b902010  add.s r1, r1, r2
002e50  e7061fe6  storeli.w r1, -3224(r30)
002e54  e3406fe0  loadli.w r1,  -4044(r30)
002e58  8b902010  add.s r1, r1, r2
002e5c  e7461fe6  storeli.w r1, -3220(r30)
002e60  e3006fe0  loadli.w r1,  -4048(r30)
002e64  8b902010  add.s r1, r1, r2
002e68  67071fe6  storeli.w r1, -3216(r30)
002e6c  e3405fe0  loadli.w r1,  -4052(r30)
002e70  8b902010  add.s r1, r1, r2
002e74  67471fe6  storeli.w r1, -3212(r30)
002e78  e3005fe0  loadli.w r1,  -4056(r30)
002e7c  8b902010  add.s r1, r1, r2
002e80  e7071fe6  storeli.w r1, -3208(r30)
002e84  e3404fe0  loadli.w r1,  -4060(r30)
002e88  8b902010  add.s r1, r1, r2
002e8c  e7471fe6  storeli.w r1, -3204(r30)
002e90  e3004fe0  loadli.w r1,  -4064(r30)
002e94  8b902010  add.s r1, r1, r2
002e98  67081fe6  storeli.w r1, -3200(r30)
002e9c  e3403fe0  loadli.w r1,  -4068(r30)
002ea0  8b902010  add.s r1, r1, r2
002ea4  67481fe6  storeli.w r1, -3196(r30)
002ea8  e3003fe0  loadli.w r1,  -4072(r30)
002eac  8b902010  add.s r1, r1, r2
002eb0  e7081fe6  storeli.w r1, -3192(r30)
002eb4  e3402fe0  loadli.w r1,  -4076(r30)
002eb8  8b902010  add.s r1, r1, r2
002ebc  e7481fe6  storeli.w r1, -3188(r30)
002ec0  e3002fe0  loadli.w r1,  -4080(r30)
002ec4  8b902010  add.s r1, r1, r2
002ec8  67091fe6  storeli.w r1, -3184(r30)
002ecc  e3401fe0  loadli.w r1,  -4084(r30)
002ed0  8b902010  add.s r1, r1, r2
002ed4  67491fe6  storeli.w r1, -3180(r30)
002ed8  e3001fe0  loadli.w r1,  -4088(r30)
002edc  8b902010  add.s r1, r1, r2
002ee0  e7091fe6  storeli.w r1, -3176(r30)
002ee4  e3400fe0  loadli.w r1,  -4092(r30)
002ee8  8b902010  add.s r1, r1, r2
002eec  e7491fe6  storeli.w r1, -3172(r30)
002ef0  e3000fe0  loadli.w r1,  -4096(r30)
002ef4  8b902010  add.s r1, r1, r2
002ef8  670a1fe6  storeli.w r1, -3168(r30)
002efc  e340ffdf  loadli.w r1,  -4100(r30)
002f00  8b902010  add.s r1, r1, r2
002f04  674a1fe6  storeli.w r1, -3164(r30)
002f08  e300ffdf  loadli.w r1,  -4104(r30)
002f0c  8b902010  add.s r1, r1, r2
002f10  e70a1fe6  storeli.w r1, -3160(r30)
002f14  e340efdf  loadli.w r1,  -4108(r30)
002f18  8b902010  add.s r1, r1, r2
002f1c  e74a1fe6  storeli.w r1, -3156(r30)
002f20  e300efdf  loadli.w r1,  -4112(r30)
002f24  8b902010  add.s r1, r1, r2
002f28  670b1fe6  storeli.w r1, -3152(r30)
002f2c  e340dfdf  loadli.w r1,  -4116(r30)
002f30  8b902010  add.s r1, r1, r2
002f34  674b1fe6  storeli.w r1, -3148(r30)
002f38  e300dfdf  loadli.w r1,  -4120(r30)
002f3c  8b902010  add.s r1, r1, r2
002f40  e70b1fe6  storeli.w r1, -3144(r30)
002f44  e340cfdf  loadli.w r1,  -4124(r30)
002f48  8b902010  add.s r1, r1, r2
002f4c  e74b1fe6  storeli.w r1, -3140(r30)
002f50  e300cfdf  loadli.w r1,  -4128(r30)
002f54  8b902010  add.s r1, r1, r2
002f58  670c1fe6  storeli.w r1, -3136(r30)
002f5c  e340bfdf  loadli.w r1,  -4132(r30)
002f60  8b902010  add.s r1, r1, r2
002f64  674c1fe6  storeli.w r1, -3132(r30)
002f68  e300bfdf  loadli.w r1,  -4136(r30)
002f6c  8b902010  add.s r1, r1, r2
002f70  e70c1fe6  storeli.w r1, -3128(r30)
002f74  e340afdf  loadli.w r1,  -4140(r30)
002f78  8b902010  add.s r1, r1, r2
002f7c  e74c1fe6  storeli.w r1, -3124(r30)
002f80  e300afdf  loadli.w r1,  -4144(r30)
002f84  8b902010  add.s r1, r1, r2
002f88  670d1fe6  storeli.w r1, -3120(r30)
002f8c  e3409fdf  loadli.w r1,  -4148(r30)
002f90  8b902010  add.s r1, r1, r2
002f94  674d1fe6  storeli.w r1, -3116(r30)
002f98  e3009fdf  loadli.w r1,  -4152(r30)
002f9c  8b902010  add.s r1, r1, r2
002fa0  e70d1fe6  storeli.w r1, -3112(r30)
002fa4  e3408fdf  loadli.w r1,  -4156(r30)
002fa8  8b902010  add.s r1, r1, r2
002fac  e74d1fe6  storeli.w r1, -3108(r30)
002fb0  e3008fdf  loadli.w r1,  -4160(r30)
002fb4  8b902010  add.s r1, r1, r2
002fb8  670e1fe6  storeli.w r1, -3104(r30)
002fbc  e3407fdf  loadli.w r1,  -4164(r30)
002fc0  8b902010  add.s r1, r1, r2
002fc4  674e1fe6  storeli.w r1, -3100(r30)
002fc8  e3007fdf  loadli.w r1,  -4168(r30)
002fcc  8b902010  add.s r1, r1, r2
002fd0  e70e1fe6  storeli.w r1, -3096(r30)
002fd4  e3406fdf  loadli.w r1,  -4172(r30)
002fd8  8b902010  add.s r1, r1, r2
002fdc  e74e1fe6  storeli.w r1, -3092(r30)
002fe0  e3006fdf  loadli.w r1,  -4176(r30)
002fe4  8b902010  add.s r1, r1, r2
002fe8  670f1fe6  storeli.w r1, -3088(r30)
002fec  e3405fdf  loadli.w r1,  -4180(r30)
002ff0  8b902010  add.s r1, r1, r2
002ff4  674f1fe6  storeli.w r1, -3084(r30)
002ff8  e3005fdf  loadli.w r1,  -4184(r30)
002ffc  8b902010  add.s r1, r1, r2
003000  e70f1fe6  storeli.w r1, -3080(r30)
003004  e3404fdf  loadli.w r1,  -4188(r30)
003008  8b902010  add.s r1, r1, r2
00300c  e74f1fe6  storeli.w r1, -3076(r30)
003010  e3004fdf  loadli.w r1,  -4192(r30)
003014  8b902010  add.s r1, r1, r2
003018  67001fe8  storeli.w r1, -3072(r30)
00301c  e3403fdf  loadli.w r1,  -4196(r30)
003020  8b902010  add.s r1, r1, r2
003024  67401fe8  storeli.w r1, -3068(r30)
003028  e3003fdf  loadli.w r1,  -4200(r30)
00302c  8b902010  add.s r1, r1, r2
003030  e7001fe8  storeli.w r1, -3064(r30)
003034  e3402fdf  loadli.w r1,  -4204(r30)
003038  8b902010  add.s r1, r1, r2
00303c  e7401fe8  storeli.w r1, -3060(r30)
003040  e3002fdf  loadli.w r1,  -4208(r30)
003044  8b902010  add.s r1, r1, r2
003048  67011fe8  storeli.w r1, -3056(r30)
00304c  e3401fdf  loadli.w r1,  -4212(r30)
003050  8b902010  add.s r1, r1, r2
003054  67411fe8  storeli.w r1, -3052(r30)
003058  e3001fdf  loadli.w r1,  -4216(r30)
00305c  8b902010  add.s r1, r1, r2
003060  e7011fe8  storeli.w r1, -3048(r30)
003064  e3400fdf  loadli.w r1,  -4220(r30)
003068  8b902010  add.s r1, r1, r2
00306c  e7411fe8  storeli.w r1, -3044(r30)
003070  e3000fdf  loadli.w r1,  -4224(r30)
003074  8b902010  add.s r1, r1, r2
003078  67021fe8  storeli.w r1, -3040(r30)
00307c  e340ffde  loadli.w r1,  -4228(r30)
003080  8b902010  add.s r1, r1, r2
003084  67421fe8  storeli.w r1, -3036(r30)
003088  e300ffde  loadli.w r1,  -4232(r30)
00308c  8b902010  add.s r1, r1, r2
003090  e7021fe8  storeli.w r1, -3032(r30)
003094  e340efde  loadli.w r1,  -4236(r30)
003098  8b902010  add.s r1, r1, r2
00309c  e7421fe8  storeli.w r1, -3028(r30)
0030a0  e300efde  loadli.w r1,  -4240(r30)
0030a4  8b902010  add.s r1, r1, r2
0030a8  67031fe8  storeli.w r1, -3024(r30)
0030ac  e340dfde  loadli.w r1,  -4244(r30)
0030b0  8b902010  add.s r1, r1, r2
0030b4  67431fe8  storeli.w r1, -3020(r30)
0030b8  e300dfde  loadli.w r1,  -4248(r30)
0030bc  8b902010  add.s r1, r1, r2
0030c0  e7031fe8  storeli.w r1, -3016(r30)
0030c4  e340cfde  loadli.w r1,  -4252(r30)
0030c8  8b902010  add.s r1, r1, r2
0030cc  e7431fe8  storeli.w r1, -3012(r30)
0030d0  e300cfde  loadli.w r1,  -4256(r30)
0030d4  8b902010  add.s r1, r1, r2
0030d8  67041fe8  storeli.w r1, -3008(r30)
0030dc  e340bfde  loadli.w r1,  -4260(r30)
0030e0  8b902010  add.s r1, r1, r2
0030e4  67441fe8  storeli.w r1, -3004(r30)
0030e8  e300bfde  loadli.w r1,  -4264(r30)
0030ec  8b902010  add.s r1, r1, r2
0030f0  e7041fe8  storeli.w r1, -3000(r30)
0030f4  e340afde  loadli.w r1,  -4268(r30)
0030f8  8b902010  add.s r1, r1, r2
0030fc  e7441fe8  storeli.w r1, -2996(r30)
003100  e300afde  loadli.w r1,  -4272(r30)
003104  8b902010  add.s r1, r1, r2
003108  67051fe8  storeli.w r1, -2992(r30)
00310c  e3409fde  loadli.w r1,  -4276(r30)
003110  8b902010  add.s r1, r1, r2
003114  67451fe8  storeli.w r1, -2988(r30)
003118  e3009fde  loadli.w r1,  -4280(r30)
00311c  8b902010  add.s r1, r1, r2
003120  e7051fe8  storeli.w r1, -2984(r30)
003124  e3408fde  loadli.w r1,  -4284(r30)
003128  8b902010  add.s r1, r1, r2
00312c  e7451fe8  storeli.w r1, -2980(r30)
003130  e3008fde  loadli.w r1,  -4288(r30)
003134  8b902010  add.s r1, r1, r2
003138  67061fe8  storeli.w r1, -2976(r30)
00313c  e3407fde  loadli.w r1,  -4292(r30)
003140  8b902010  add.s r1, r1, r2
003144  67461fe8  storeli.w r1, -2972(r30)
003148  e3007fde  loadli.w r1,  -4296(r30)
00314c  8b902010  add.s r1, r1, r2
003150  e7061fe8  storeli.w r1, -2968(r30)
003154  e3406fde  loadli.w r1,  -4300(r30)
003158  8b902010  add.s r1, r1, r2
00315c  e7461fe8  storeli.w r1, -2964(r30)
003160  e3006fde  loadli.w r1,  -4304(r30)
003164  8b902010  add.s r1, r1, r2
003168  67071fe8  storeli.w r1, -2960(r30)
00316c  e3405fde  loadli.w r1,  -4308(r30)
003170  8b902010  add.s r1, r1, r2
003174  67471fe8  storeli.w r1, -2956(r30)
003178  e3005fde  loadli.w r1,  -4312(r30)
00317c  8b902010  add.s r1, r1, r2
003180  e7071fe8  storeli.w r1, -2952(r30)
003184  e3404fde  loadli.w r1,  -4316(r30)
003188  8b902010  add.s r1, r1, r2
00318c  e7471fe8  storeli.w r1, -2948(r30)
003190  e3004fde  loadli.w r1,  -4320(r30)
003194  8b902010  add.s r1, r1, r2
003198  67081fe8  storeli.w r1, -2944(r30)
00319c  e3403fde  loadli.w r1,  -4324(r30)
0031a0  8b902010  add.s r1, r1, r2
0031a4  67481fe8  storeli.w r1, -2940(r30)
0031a8  e3003fde  loadli.w r1,  -4328(r30)
0031ac  8b902010  add.s r1, r1, r2
0031b0  e7081fe8  storeli.w r1, -2936(r30)
0031b4  e3402fde  loadli.w r1,  -4332(r30)
0031b8  8b902010  add.s r1, r1, r2
0031bc  e7481fe8  storeli.w r1, -2932(r30)
0031c0  e3002fde  loadli.w r1,  -4336(r30)
0031c4  8b902010  add.s r1, r1, r2
0031c8  67091fe8  storeli.w r1, -2928(r30)
0031cc  e3401fde  loadli.w r1,  -4340(r30)
0031d0  8b902010  add.s r1, r1, r2
0031d4  67491fe8  storeli.w r1, -2924(r30)
0031d8  e3001fde  loadli.w r1,  -4344(r30)
0031dc  8b902010  add.s r1, r1, r2
0031e0  e7091fe8  storeli.w r1, -2920(r30)
0031e4  e3400fde  loadli.w r1,  -4348(r30)
0031e8  8b902010  add.s r1, r1, r2
0031ec  e7491fe8  storeli.w r1, -2916(r30)
0031f0  e3000fde  loadli.w r1,  -4352(r30)
0031f4  8b902010  add.s r1, r1, r2
0031f8  670a1fe8  storeli.w r1, -2912(r30)
0031fc  e340ffdd  loadli.w r1,  -4356(r30)
003200  8b902010  add.s r1, r1, r2
003204  674a1fe8  storeli.w r1, -2908(r30)
003208  e300ffdd  loadli.w r1,  -4360(r30)
00320c  8b902010  add.s r1, r1, r2
003210  e70a1fe8  storeli.w r1, -2904(r30)
003214  e340efdd  loadli.w r1,  -4364(r30)
003218  8b902010  add.s r1, r1, r2
00321c  e74a1fe8  storeli.w r1, -2900(r30)
003220  e300efdd  loadli.w r1,  -4368(r30)
003224  8b902010  add.s r1, r1, r2
003228  670b1fe8  storeli.w r1, -2896(r30)
00322c  e340dfdd  loadli.w r1,  -4372(r30)
003230  8b902010  add.s r1, r1, r2
003234  674b1fe8  storeli.w r1, -2892(r30)
003238  e300dfdd  loadli.w r1,  -4376(r30)
00323c  8b902010  add.s r1, r1, r2
003240  e70b1fe8  storeli.w r1, -2888(r30)
003244  e340cfdd  loadli.w r1,  -4380(r30)
003248  8b902010  add.s r1, r1, r2
00324c  e74b1fe8  storeli.w r1, -2884(r30)
003250  e300cfdd  loadli.w r1,  -4384(r30)
003254  8b902010  add.s r1, r1, r2
003258  670c1fe8  storeli.w r1, -2880(r30)
00325c  e340bfdd  loadli.w r1,  -4388(r30)
003260  8b902010  add.s r1, r1, r2
003264  674c1fe8  storeli.w r1, -2876(r30)
003268  e300bfdd  loadli.w r1,  -4392(r30)
00326c  8b902010  add.s r1, r1, r2
003270  e70c1fe8  storeli.w r1, -2872(r30)
003274  e340afdd  loadli.w r1,  -4396(r30)
003278  8b902010  add.s r1, r1, r2
00327c  e74c1fe8  storeli.w r1, -2868(r30)
003280  e300afdd  loadli.w r1,  -4400(r30)
003284  8b902010  add.s r1, r1, r2
003288  670d1fe8  storeli.w r1, -2864(r30)
00328c  e3409fdd  loadli.w r1,  -4404(r30)
003290  8b902010  add.s r1, r1, r2
003294  674d1fe8  storeli.w r1, -2860(r30)
003298  e3009fdd  loadli.w r1,  -4408(r30)
00329c  8b902010  add.s r1, r1, r2
0032a0  e70d1fe8  storeli.w r1, -2856(r30)
0032a4  e3408fdd  loadli.w r1,  -4412(r30)
0032a8  8b902010  add.s r1, r1, r2
0032ac  e74d1fe8  storeli.w r1, -2852(r30)
0032b0  e3008fdd  loadli.w r1,  -4416(r30)
0032b4  8b902010  add.s r1, r1, r2
0032b8  670e1fe8  storeli.w r1, -2848(r30)
0032bc  e3407fdd  loadli.w r1,  -4420(r30)
0032c0  8b902010  add.s r1, r1, r2
0032c4  1f014000  addli r2, zero, 32
0032c8  674e1fe8  storeli.w r1, -2844(r30)
0032cc  9f800100  addli r1, r3, 0
0032d0  5b1a0000  j 208
0032d4  1f010000  addli r2, zero, 0
0032d8  9f010000  addli r3, zero, 0
0032dc  1f020000  addli r4, zero, 0
0032e0  1f030000  addli r6, zero, 0
0032e4  9f030000  addli r7, zero, 0
0032e8  1f040000  addli r8, zero, 0
0032ec  1f050000  addli r10, zero, 0
0032f0  9f080000  addli r17, zero, 0
0032f4  1f090000  addli r18, zero, 0
0032f8  9f040000  addli r9, zero, 0
0032fc  1f0a0000  addli r20, zero, 0
003300  9f0a0000  addli r21, zero, 0
003304  1f0b0000  addli r22, zero, 0
003308  1f0d0000  addli r26, zero, 0
00330c  9f0c0000  addli r25, zero, 0
003310  9f0d0000  addli r27, zero, 0
003314  8beb2b10  add.f.rn r23, r23, r2
003318  6341bfea  loadli.w r2,  -2724(r30)
00331c  8be04010  add.f.rn r1, r1, r4
003320  63020feb  loadli.w r4,  -2688(r30)
003324  e307cfea  loadli.w r15,  -2720(r30)
003328  6308bfea  loadli.w r16,  -2728(r30)
00332c  0b6c3c10  add.f.rn r24, r24, r3
003330  0b619110  add.f.rn r2, r2, r9
003334  0b626210  add.f.rn r4, r4, r6
003338  6303ffea  loadli.w r6,  -2696(r30)
00333c  8be72711  add.f.rn r15, r15, r18
003340  63099fea  loadli.w r18,  -2744(r30)
003344  0b684811  add.f.rn r16, r16, r20
003348  634a8fea  loadli.w r20,  -2748(r30)
00334c  0b637310  add.f.rn r6, r6, r7
003350  e303efea  loadli.w r7,  -2704(r30)
003354  0b699911  add.f.rn r18, r18, r25
003358  0b6aba11  add.f.rn r20, r20, r27
00335c  9f040100  addli r9, r2, 0
003360  6341afea  loadli.w r2,  -2732(r30)
003364  8be38310  add.f.rn r7, r7, r8
003368  6304dfea  loadli.w r8,  -2712(r30)
00336c  0b615111  add.f.rn r2, r2, r21
003370  0b64a410  add.f.rn r8, r8, r10
003374  6345cfea  loadli.w r10,  -2716(r30)
003378  0b651511  add.f.rn r10, r10, r17
00337c  e3489fea  loadli.w r17,  -2740(r30)
003380  9f0a0100  addli r21, r2, 0
003384  6301afea  loadli.w r2,  -2736(r30)
003388  8be8a811  add.f.rn r17, r17, r26
00338c  0b616111  add.f.rn r2, r2, r22
003390  1f0b0100  addli r22, r2, 0
003394  63018fea  loadli.w r2,  -2752(r30)
003398  1f014100  addli r2, r2, 32
00339c  b779c102  beq r2, r12, 1660
0033a0  67084fea  storeli.w r4, -2688(r30)
0033a4  0b122710  add.s r4, r14, r2
0033a8  e7076fea  storeli.w r6, -2696(r30)
0033ac  92305002  vadd.s.mz vr1{mr1}, zero, vr5
0033b0  1f1e0000  addli r28, zero, 1
0033b4  67077fea  storeli.w r7, -2704(r30)
0033b8  67444feb  storeli.w r20, -2748(r30)
0033bc  e7042feb  storeli.w r18, -2744(r30)
0033c0  e7441feb  storeli.w r17, -2740(r30)
0033c4  67056feb  storeli.w r22, -2736(r30)
0033c8  67455feb  storeli.w r21, -2732(r30)
0033cc  e7459fea  storeli.w r9, -2724(r30)
0033d0  6706ffea  storeli.w r15, -2720(r30)
0033d4  6746afea  storeli.w r10, -2716(r30)
0033d8  e7068fea  storeli.w r8, -2712(r30)
0033dc  9f070100  addli r15, r2, 0
0033e0  12315002  vadd.s.mz vr2{mr1}, zero, vr5
0033e4  6b330200  load.hu r6, 0(r4)
0033e8  eb332200  load.hu r7, 2(r4)
0033ec  7e010ee0  vmmov mr2, r28
0033f0  eb31a201  load.hu r3, 26(r4)
0033f4  6b31c201  load.hu r2, 28(r4)
0033f8  6b344200  load.hu r8, 4(r4)
0033fc  eb346200  load.hu r9, 6(r4)
003400  6b358200  load.hu r10, 8(r4)
003404  eb38a200  load.hu r17, 10(r4)
003408  6b39c200  load.hu r18, 12(r4)
00340c  6b3ae200  load.hu r20, 14(r4)
003410  eb3a0201  load.hu r21, 16(r4)
003414  6b3b2201  load.hu r22, 18(r4)
003418  eb3c4201  load.hu r25, 20(r4)
00341c  6b3d6201  load.hu r26, 22(r4)
003420  eb3d8201  load.hu r27, 24(r4)
003424  6b32e201  load.hu r4, 30(r4)
003428  33130318  bfloat2float.rn r6, r6
00342c  b3910118  bfloat2float.rn r3, r3
003430  33110118  bfloat2float.rn r2, r2
003434  ea201334  vor.u.mh vr1{mr2}, r6, vr1
003438  33930318  bfloat2float.rn r6, r7
00343c  9f230000  addli r7, zero, 2
003440  fe8103e0  vmmov mr3, r7
003444  9f430000  addli r7, zero, 4
003448  ea201336  vor.u.mh vr1{mr3}, r6, vr1
00344c  33130418  bfloat2float.rn r6, r8
003450  7e8003e0  vmmov mr0, r7
003454  9f031000  addli r7, zero, 8
003458  ea201330  vor.u.mh vr1{mr0}, r6, vr1
00345c  33930418  bfloat2float.rn r6, r9
003460  7e8003e0  vmmov mr0, r7
003464  9f032000  addli r7, zero, 16
003468  ea201330  vor.u.mh vr1{mr0}, r6, vr1
00346c  33130518  bfloat2float.rn r6, r10
003470  7e8003e0  vmmov mr0, r7
003474  9f034000  addli r7, zero, 32
003478  ea201330  vor.u.mh vr1{mr0}, r6, vr1
00347c  33930818  bfloat2float.rn r6, r17
003480  7e8003e0  vmmov mr0, r7
003484  9f038000  addli r7, zero, 64
003488  ea201330  vor.u.mh vr1{mr0}, r6, vr1
00348c  33130918  bfloat2float.rn r6, r18
003490  7e8003e0  vmmov mr0, r7
003494  9f030001  addli r7, zero, 128
003498  ea201330  vor.u.mh vr1{mr0}, r6, vr1
00349c  33130a18  bfloat2float.rn r6, r20
0034a0  7e8003e0  vmmov mr0, r7
0034a4  9f030002  addli r7, zero, 256
0034a8  ea201330  vor.u.mh vr1{mr0}, r6, vr1
0034ac  33930a18  bfloat2float.rn r6, r21
0034b0  7e8003e0  vmmov mr0, r7
0034b4  9f030004  addli r7, zero, 512
0034b8  ea201330  vor.u.mh vr1{mr0}, r6, vr1
0034bc  33130b18  bfloat2float.rn r6, r22
0034c0  7e8003e0  vmmov mr0, r7
0034c4  9f030008  addli r7, zero, 1024
0034c8  ea201330  vor.u.mh vr1{mr0}, r6, vr1
0034cc  33930c18  bfloat2float.rn r6, r25
0034d0  7e8003e0  vmmov mr0, r7
0034d4  9f030010  addli r7, zero, 2048
0034d8  ea201330  vor.u.mh vr1{mr0}, r6, vr1
0034dc  33130d18  bfloat2float.rn r6, r26
0034e0  7e8003e0  vmmov mr0, r7
0034e4  9f030020  addli r7, zero, 4096
0034e8  ea201330  vor.u.mh vr1{mr0}, r6, vr1
0034ec  33930d18  bfloat2float.rn r6, r27
0034f0  7e8003e0  vmmov mr0, r7
0034f4  ea201330  vor.u.mh vr1{mr0}, r6, vr1
0034f8  1f030040  addli r6, zero, 8192
0034fc  7e0003e0  vmmov mr0, r6
003500  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
003504  ab410000  lui r3, 4
003508  7e8001e0  vmmov mr0, r3
00350c  9f010ff6  addli r3, r30, -1280
003510  ea201130  vor.u.mh vr1{mr0}, r2, vr1
003514  33110218  bfloat2float.rn r2, r4
003518  2b820000  lui r4, 8
00351c  8b91f110  add.s r3, r3, r15
003520  6704ffea  storeli.w r15, -2752(r30)
003524  ab07807f  lui r15, 522240
003528  7e0002e0  vmmov mr0, r4
00352c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
003530  6bb10100  load.hu r2, 0(r3)
003534  6bb22100  load.hu r4, 2(r3)
003538  6bb34100  load.hu r6, 4(r3)
00353c  ebb36100  load.hu r7, 6(r3)
003540  6bb48100  load.hu r8, 8(r3)
003544  ebb4a100  load.hu r9, 10(r3)
003548  6bb5c100  load.hu r10, 12(r3)
00354c  ebb8e100  load.hu r17, 14(r3)
003550  6bb90101  load.hu r18, 16(r3)
003554  6bba2101  load.hu r20, 18(r3)
003558  ebba4101  load.hu r21, 20(r3)
00355c  6bbb6101  load.hu r22, 22(r3)
003560  ebbc8101  load.hu r25, 24(r3)
003564  6bbda101  load.hu r26, 26(r3)
003568  ebbdc101  load.hu r27, 28(r3)
00356c  ebb1e101  load.hu r3, 30(r3)
003570  33110118  bfloat2float.rn r2, r2
003574  6a212134  vor.u.mh vr2{mr2}, r2, vr2
003578  33110218  bfloat2float.rn r2, r4
00357c  1f420000  addli r4, zero, 4
003580  7e0102e0  vmmov mr2, r4
003584  1f021000  addli r4, zero, 8
003588  6a212136  vor.u.mh vr2{mr3}, r2, vr2
00358c  33110318  bfloat2float.rn r2, r6
003590  6a212134  vor.u.mh vr2{mr2}, r2, vr2
003594  33910318  bfloat2float.rn r2, r7
003598  7e0102e0  vmmov mr2, r4
00359c  1f022000  addli r4, zero, 16
0035a0  6a212134  vor.u.mh vr2{mr2}, r2, vr2
0035a4  33110418  bfloat2float.rn r2, r8
0035a8  7e0102e0  vmmov mr2, r4
0035ac  1f024000  addli r4, zero, 32
0035b0  6a212134  vor.u.mh vr2{mr2}, r2, vr2
0035b4  33910418  bfloat2float.rn r2, r9
0035b8  7e0102e0  vmmov mr2, r4
0035bc  1f028000  addli r4, zero, 64
0035c0  6a212134  vor.u.mh vr2{mr2}, r2, vr2
0035c4  33110518  bfloat2float.rn r2, r10
0035c8  7e0102e0  vmmov mr2, r4
0035cc  1f020001  addli r4, zero, 128
0035d0  6a212134  vor.u.mh vr2{mr2}, r2, vr2
0035d4  33910818  bfloat2float.rn r2, r17
0035d8  7e0102e0  vmmov mr2, r4
0035dc  1f020002  addli r4, zero, 256
0035e0  6a212134  vor.u.mh vr2{mr2}, r2, vr2
0035e4  33110918  bfloat2float.rn r2, r18
0035e8  7e0102e0  vmmov mr2, r4
0035ec  1f020004  addli r4, zero, 512
0035f0  6a212134  vor.u.mh vr2{mr2}, r2, vr2
0035f4  33110a18  bfloat2float.rn r2, r20
0035f8  7e0102e0  vmmov mr2, r4
0035fc  1f020008  addli r4, zero, 1024
003600  6a212134  vor.u.mh vr2{mr2}, r2, vr2
003604  33910a18  bfloat2float.rn r2, r21
003608  7e0102e0  vmmov mr2, r4
00360c  1f020010  addli r4, zero, 2048
003610  6a212134  vor.u.mh vr2{mr2}, r2, vr2
003614  33110b18  bfloat2float.rn r2, r22
003618  7e0102e0  vmmov mr2, r4
00361c  1f020020  addli r4, zero, 4096
003620  6a212134  vor.u.mh vr2{mr2}, r2, vr2
003624  33910c18  bfloat2float.rn r2, r25
003628  7e0102e0  vmmov mr2, r4
00362c  1f020040  addli r4, zero, 8192
003630  6a212134  vor.u.mh vr2{mr2}, r2, vr2
003634  33110d18  bfloat2float.rn r2, r26
003638  7e0102e0  vmmov mr2, r4
00363c  2b420000  lui r4, 4
003640  6a212134  vor.u.mh vr2{mr2}, r2, vr2
003644  33910d18  bfloat2float.rn r2, r27
003648  7e0102e0  vmmov mr2, r4
00364c  6a212134  vor.u.mh vr2{mr2}, r2, vr2
003650  33910118  bfloat2float.rn r2, r3
003654  6a212130  vor.u.mh vr2{mr0}, r2, vr2
003658  1f010fec  addli r2, r30, -2560
00365c  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
003660  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
003664  00a00000  mfence { lm }
003668  e30d0fec  loadli.w r27,  -2560(r30)
00366c  e34c0fec  loadli.w r25,  -2556(r30)
003670  e3041fec  loadli.w r9,  -2552(r30)
003674  63441fec  loadli.w r8,  -2548(r30)
003678  63092fec  loadli.w r18,  -2544(r30)
00367c  63412fec  loadli.w r2,  -2540(r30)
003680  630a3fec  loadli.w r20,  -2536(r30)
003684  e3433fec  loadli.w r7,  -2532(r30)
003688  63034fec  loadli.w r6,  -2528(r30)
00368c  63424fec  loadli.w r4,  -2524(r30)
003690  e3015fec  loadli.w r3,  -2520(r30)
003694  634b5fec  loadli.w r22,  -2516(r30)
003698  1785bd00  and r10, r27, r11
00369c  138ea704  setlt.u r28, r15, r10
0036a0  63056fec  loadli.w r10,  -2512(r30)
0036a4  634d6fec  loadli.w r26,  -2508(r30)
0036a8  e30a7fec  loadli.w r21,  -2504(r30)
0036ac  e3487fec  loadli.w r17,  -2500(r30)
0036b0  3b600e00  bneq r28, zero, 24
0036b4  1bce0d01  srli r28, r27, 16
0036b8  1b0e1e00  andi r28, r28, 1
0036bc  8b9dcd11  add.s r27, r27, r28
0036c0  8b97dd10  add.s r15, r27, r13
0036c4  5b010000  j 8
0036c8  97973d01  or r15, r27, r19
0036cc  978dbc00  and r27, r25, r11
0036d0  2b0e807f  lui r28, 522240
0036d4  e743ffea  storeli.w r15, -2756(r30)
0036d8  930dbe05  setlt.u r27, r28, r27
0036dc  3be00d00  bneq r27, zero, 24
0036e0  9bcd0c01  srli r27, r25, 16
0036e4  9b8d1d00  andi r27, r27, 1
0036e8  8b9cbc11  add.s r25, r25, r27
0036ec  8b9ddc10  add.s r27, r25, r13
0036f0  5b010000  j 8
0036f4  979d3c01  or r27, r25, r19
0036f8  978cb400  and r25, r9, r11
0036fc  930c9e05  setlt.u r25, r28, r25
003700  3be00c00  bneq r25, zero, 24
003704  9bcc0401  srli r25, r9, 16
003708  9b8c1c00  andi r25, r25, 1
00370c  8b949411  add.s r9, r9, r25
003710  8b9cd410  add.s r25, r9, r13
003714  5b010000  j 8
003718  979c3401  or r25, r9, r19
00371c  9704b400  and r9, r8, r11
003720  93049e04  setlt.u r9, r28, r9
003724  3be00400  bneq r9, zero, 24
003728  9b440401  srli r9, r8, 16
00372c  9b841400  andi r9, r9, 1
003730  0b149410  add.s r8, r8, r9
003734  0b14d410  add.s r8, r8, r13
003738  5b010000  j 8
00373c  17143401  or r8, r8, r19
003740  e7038fea  storeli.w r8, -2760(r30)
003744  1704b900  and r8, r18, r11
003748  13048e04  setlt.u r8, r28, r8
00374c  3b600400  bneq r8, zero, 24
003750  1b440901  srli r8, r18, 16
003754  1b041400  andi r8, r8, 1
003758  0b148910  add.s r8, r18, r8
00375c  0b19d410  add.s r18, r8, r13
003760  5b010000  j 8
003764  17193901  or r18, r18, r19
003768  1704b100  and r8, r2, r11
00376c  13048e04  setlt.u r8, r28, r8
003770  3b600400  bneq r8, zero, 24
003774  1b440101  srli r8, r2, 16
003778  1b041400  andi r8, r8, 1
00377c  0b118110  add.s r2, r2, r8
003780  0b11d110  add.s r2, r2, r13
003784  5b010000  j 8
003788  17113101  or r2, r2, r19
00378c  1704ba00  and r8, r20, r11
003790  13048e04  setlt.u r8, r28, r8
003794  3b600400  bneq r8, zero, 24
003798  1b440a01  srli r8, r20, 16
00379c  1b041400  andi r8, r8, 1
0037a0  0b148a10  add.s r8, r20, r8
0037a4  0b1ad410  add.s r20, r8, r13
0037a8  5b010000  j 8
0037ac  171a3a01  or r20, r20, r19
0037b0  1784b300  and r8, r7, r11
0037b4  13048e04  setlt.u r8, r28, r8
0037b8  3b600400  bneq r8, zero, 24
0037bc  1bc40301  srli r8, r7, 16
0037c0  1b041400  andi r8, r8, 1
0037c4  8b938310  add.s r7, r7, r8
0037c8  8b93d310  add.s r7, r7, r13
0037cc  5b010000  j 8
0037d0  97933301  or r7, r7, r19
0037d4  1704b300  and r8, r6, r11
0037d8  13048e04  setlt.u r8, r28, r8
0037dc  3b600400  bneq r8, zero, 24
0037e0  1b440301  srli r8, r6, 16
0037e4  1b041400  andi r8, r8, 1
0037e8  0b138310  add.s r6, r6, r8
0037ec  0b13d310  add.s r6, r6, r13
0037f0  5b010000  j 8
0037f4  17133301  or r6, r6, r19
0037f8  1704b200  and r8, r4, r11
0037fc  13048e04  setlt.u r8, r28, r8
003800  3b600400  bneq r8, zero, 24
003804  1b440201  srli r8, r4, 16
003808  1b041400  andi r8, r8, 1
00380c  0b128210  add.s r4, r4, r8
003810  0b12d210  add.s r4, r4, r13
003814  5b010000  j 8
003818  17123201  or r4, r4, r19
00381c  1784b100  and r8, r3, r11
003820  13048e04  setlt.u r8, r28, r8
003824  3b600400  bneq r8, zero, 24
003828  1bc40101  srli r8, r3, 16
00382c  1b041400  andi r8, r8, 1
003830  8b918110  add.s r3, r3, r8
003834  8b91d110  add.s r3, r3, r13
003838  5b010000  j 8
00383c  97913101  or r3, r3, r19
003840  1704bb00  and r8, r22, r11
003844  13048e04  setlt.u r8, r28, r8
003848  3b600400  bneq r8, zero, 24
00384c  1b440b01  srli r8, r22, 16
003850  1b041400  andi r8, r8, 1
003854  0b148b10  add.s r8, r22, r8
003858  0b1bd410  add.s r22, r8, r13
00385c  5b010000  j 8
003860  171b3b01  or r22, r22, r19
003864  1704b500  and r8, r10, r11
003868  13048e04  setlt.u r8, r28, r8
00386c  3b600400  bneq r8, zero, 24
003870  1b440501  srli r8, r10, 16
003874  1b041400  andi r8, r8, 1
003878  0b148510  add.s r8, r10, r8
00387c  0b14d410  add.s r8, r8, r13
003880  5b010000  j 8
003884  17143501  or r8, r10, r19
003888  9704bd00  and r9, r26, r11
00388c  93049e04  setlt.u r9, r28, r9
003890  3be00400  bneq r9, zero, 24
003894  9b440d01  srli r9, r26, 16
003898  9b841400  andi r9, r9, 1
00389c  8b149d10  add.s r9, r26, r9
0038a0  8b94d410  add.s r9, r9, r13
0038a4  5b010000  j 8
0038a8  97143d01  or r9, r26, r19
0038ac  1785ba00  and r10, r21, r11
0038b0  1305ae04  setlt.u r10, r28, r10
0038b4  3b600500  bneq r10, zero, 24
0038b8  1bc50a01  srli r10, r21, 16
0038bc  1b051500  andi r10, r10, 1
0038c0  0b95aa10  add.s r10, r21, r10
0038c4  0b15d510  add.s r10, r10, r13
0038c8  5b010000  j 8
0038cc  17953a01  or r10, r21, r19
0038d0  978ab800  and r21, r17, r11
0038d4  e7050feb  storeli.w r16, -2728(r30)
0038d8  930a5e05  setlt.u r21, r28, r21
0038dc  3be00a00  bneq r21, zero, 24
0038e0  9bca0801  srli r21, r17, 16
0038e4  9b8a1a00  andi r21, r21, 1
0038e8  8b985811  add.s r17, r17, r21
0038ec  8b98d810  add.s r17, r17, r13
0038f0  5b010000  j 8
0038f4  97983801  or r17, r17, r19
0038f8  6308efeb  loadli.w r16,  -2576(r30)
0038fc  9f070004  addli r15, zero, 512
003900  3f20f800  blt.s r16, r15, 8
003904  5b3affff  j -1584
003908  e3467fea  loadli.w r13,  -2756(r30)
00390c  2b06ffff  lui r12, 1048560
003910  1709c900  and r18, r18, r12
003914  1703c300  and r6, r6, r12
003918  170aca00  and r20, r20, r12
00391c  170bcb00  and r22, r22, r12
003920  1701c100  and r2, r2, r12
003924  1702c200  and r4, r4, r12
003928  9781c100  and r3, r3, r12
00392c  9784c400  and r9, r9, r12
003930  9788c800  and r17, r17, r12
003934  9783c300  and r7, r7, r12
003938  1704c400  and r8, r8, r12
00393c  1705c500  and r10, r10, r12
003940  978ac600  and r21, r13, r12
003944  9f860c00  addli r13, r25, 0
003948  978ccd00  and r25, r27, r12
00394c  0b695918  sub.f.rn r18, r18, r5
003950  8be75118  sub.f.rn r15, r3, r5
003954  9f810000  addli r3, r1, 0
003958  9f800b00  addli r1, r23, 0
00395c  0b6e5118  sub.f.rn r28, r2, r5
003960  8b6b5418  sub.f.rn r23, r8, r5
003964  0b6a5a18  sub.f.rn r20, r20, r5
003968  0b675218  sub.f.rn r14, r4, r5
00396c  8be95418  sub.f.rn r19, r9, r5
003970  0b6b5b18  sub.f.rn r22, r22, r5
003974  0be85818  sub.f.rn r16, r17, r5
003978  178dc600  and r26, r13, r12
00397c  e3067fea  loadli.w r13,  -2760(r30)
003980  8bec5c18  sub.f.rn r25, r25, r5
003984  8bea5a18  sub.f.rn r21, r21, r5
003988  0b6d5d18  sub.f.rn r26, r26, r5
00398c  978dc600  and r27, r13, r12
003990  8b665318  sub.f.rn r13, r6, r5
003994  0be65318  sub.f.rn r12, r7, r5
003998  1f830500  addli r6, r11, 0
00399c  9f050c00  addli r11, r24, 0
0039a0  0b6c5518  sub.f.rn r24, r10, r5
0039a4  8bed5d18  sub.f.rn r27, r27, r5
0039a8  8b632921  mul.f.rn r7, r18, r18
0039ac  0b64ce21  mul.f.rn r8, r28, r28
0039b0  0b654a21  mul.f.rn r10, r20, r20
0039b4  8b64e720  mul.f.rn r9, r14, r14
0039b8  2b0e807f  lui r28, 522240
0039bc  1f070ff4  addli r14, r30, -1536
0039c0  0beaf720  mul.f.rn r20, r15, r15
0039c4  8bec9c21  mul.f.rn r25, r25, r25
0039c8  0be15a21  mul.f.rn r2, r21, r21
0039cc  8b6a6b21  mul.f.rn r21, r22, r22
0039d0  0beb7b21  mul.f.rn r22, r23, r23
0039d4  9f8b0000  addli r23, r1, 0
0039d8  9f800100  addli r1, r3, 0
0039dc  0b62ad21  mul.f.rn r4, r26, r26
0039e0  0bed3921  mul.f.rn r26, r19, r19
0039e4  ab094000  lui r19, 1024
0039e8  0be9d620  mul.f.rn r18, r13, r13
0039ec  e346ffeb  loadli.w r13,  -2564(r30)
0039f0  8b68c620  mul.f.rn r17, r12, r12
0039f4  1f060002  addli r12, zero, 256
0039f8  8bedbd21  mul.f.rn r27, r27, r27
0039fc  9f810c00  addli r3, r25, 0
003a00  8b6c8c21  mul.f.rn r25, r24, r24
003a04  1f8c0500  addli r24, r11, 0
003a08  9f050300  addli r11, r6, 0
003a0c  1f830d00  addli r6, r27, 0
003a10  8b6d0821  mul.f.rn r27, r16, r16
003a14  5b20ffff  j -1792
003a18  1f810000  addli r2, r1, 0
003a1c  8be08b11  add.f.rn r1, r23, r24
003a20  8be02010  add.f.rn r1, r1, r2
003a24  6341bfe1  loadli.w r2,  -3876(r30)
003a28  8be04010  add.f.rn r1, r1, r4
003a2c  8be06010  add.f.rn r1, r1, r6
003a30  8be07010  add.f.rn r1, r1, r7
003a34  8be08010  add.f.rn r1, r1, r8
003a38  8be0a010  add.f.rn r1, r1, r10
003a3c  8be0f010  add.f.rn r1, r1, r15
003a40  8be09010  add.f.rn r1, r1, r9
003a44  8be00011  add.f.rn r1, r1, r16
003a48  8be05011  add.f.rn r1, r1, r21
003a4c  8be06011  add.f.rn r1, r1, r22
003a50  8be01011  add.f.rn r1, r1, r17
003a54  8be02011  add.f.rn r1, r1, r18
003a58  8be04011  add.f.rn r1, r1, r20
003a5c  73601100  stores.w r1, 0(r2)
003a60  00a00300  mfence { lm, sm, gm }
003a64  6342ffe9  loadli.w r4,  -2820(r30)
003a68  80210204  csr_set csr3, r4
003a6c  00d00100  sync_group
003a70  e300ffe9  loadli.w r1,  -2824(r30)
003a74  3ba10000  bneq r1, zero, 72
003a78  6343cfe5  loadli.w r6,  -3356(r30)
003a7c  ef400300  loads.w r1, 0(r6)
003a80  6f414300  loads.w r2, 4(r6)
003a84  ef418300  loads.w r3, 8(r6)
003a88  8be02010  add.f.rn r1, r1, r2
003a8c  6f41c300  loads.w r2, 12(r6)
003a90  8be03010  add.f.rn r1, r1, r3
003a94  ef410301  loads.w r3, 16(r6)
003a98  8be02010  add.f.rn r1, r1, r2
003a9c  6f414301  loads.w r2, 20(r6)
003aa0  8be03010  add.f.rn r1, r1, r3
003aa4  ef418301  loads.w r3, 24(r6)
003aa8  8be02010  add.f.rn r1, r1, r2
003aac  6f41c301  loads.w r2, 28(r6)
003ab0  8be03010  add.f.rn r1, r1, r3
003ab4  8be02010  add.f.rn r1, r1, r2
003ab8  73601300  stores.w r1, 0(r6)
003abc  00a00300  mfence { lm, sm, gm }
003ac0  80210204  csr_set csr3, r4
003ac4  00d00100  sync_group
003ac8  e340cfe5  loadli.w r1,  -3356(r30)
003acc  2b01803a  lui r2, 239616
003ad0  2b0d4000  lui r26, 1024
003ad4  efc00000  loads.w r1, 0(r1)
003ad8  8be02020  mul.f.rn r1, r1, r2
003adc  6301ffe0  loadli.w r2,  -3976(r30)
003ae0  8be02010  add.f.rn r1, r1, r2
003ae4  2b01803f  lui r2, 260096
003ae8  8f800008  sqrt.f.rn r1, r1
003aec  8f001118  div.f.rn r1, r2, r1
003af0  1f010000  addli r2, zero, 0
003af4  db050000  j 44
003af8  9b410301  srli r3, r6, 16
003afc  9b811100  andi r3, r3, 1
003b00  8b113310  add.s r3, r6, r3
003b04  8b91d110  add.s r3, r3, r13
003b08  9bc10101  srli r3, r3, 16
003b0c  2b0d4000  lui r26, 1024
003b10  1f014100  addli r2, r2, 32
003b14  731f3200  store.h r3, 30(r4)
003b18  00a00000  mfence { lm }
003b1c  370df1e6  beq r2, r15, -12480
003b20  0b122710  add.s r4, r14, r2
003b24  92305002  vadd.s.mz vr1{mr1}, zero, vr5
003b28  1f1b0000  addli r22, zero, 1
003b2c  12315002  vadd.s.mz vr2{mr1}, zero, vr5
003b30  eb330200  load.hu r7, 0(r4)
003b34  6b342200  load.hu r8, 2(r4)
003b38  7e010be0  vmmov mr2, r22
003b3c  6b33a201  load.hu r6, 26(r4)
003b40  eb31c201  load.hu r3, 28(r4)
003b44  eb344200  load.hu r9, 4(r4)
003b48  6b356200  load.hu r10, 6(r4)
003b4c  6b368200  load.hu r12, 8(r4)
003b50  eb36a200  load.hu r13, 10(r4)
003b54  6b37c200  load.hu r14, 12(r4)
003b58  eb37e200  load.hu r15, 14(r4)
003b5c  6b380201  load.hu r16, 16(r4)
003b60  eb382201  load.hu r17, 18(r4)
003b64  6b394201  load.hu r18, 20(r4)
003b68  eb396201  load.hu r19, 22(r4)
003b6c  6b3a8201  load.hu r20, 24(r4)
003b70  eb3ae201  load.hu r21, 30(r4)
003b74  b3930318  bfloat2float.rn r7, r7
003b78  33130318  bfloat2float.rn r6, r6
003b7c  b3910118  bfloat2float.rn r3, r3
003b80  eaa01334  vor.u.mh vr1{mr2}, r7, vr1
003b84  b3130418  bfloat2float.rn r7, r8
003b88  1f240000  addli r8, zero, 2
003b8c  fe0104e0  vmmov mr3, r8
003b90  1f440000  addli r8, zero, 4
003b94  eaa01336  vor.u.mh vr1{mr3}, r7, vr1
003b98  b3930418  bfloat2float.rn r7, r9
003b9c  7e0004e0  vmmov mr0, r8
003ba0  1f041000  addli r8, zero, 8
003ba4  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
003ba8  b3130518  bfloat2float.rn r7, r10
003bac  7e0004e0  vmmov mr0, r8
003bb0  1f042000  addli r8, zero, 16
003bb4  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
003bb8  b3130618  bfloat2float.rn r7, r12
003bbc  7e0004e0  vmmov mr0, r8
003bc0  1f044000  addli r8, zero, 32
003bc4  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
003bc8  b3930618  bfloat2float.rn r7, r13
003bcc  7e0004e0  vmmov mr0, r8
003bd0  1f048000  addli r8, zero, 64
003bd4  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
003bd8  b3130718  bfloat2float.rn r7, r14
003bdc  7e0004e0  vmmov mr0, r8
003be0  1f040001  addli r8, zero, 128
003be4  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
003be8  b3930718  bfloat2float.rn r7, r15
003bec  7e0004e0  vmmov mr0, r8
003bf0  1f040002  addli r8, zero, 256
003bf4  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
003bf8  b3130818  bfloat2float.rn r7, r16
003bfc  7e0004e0  vmmov mr0, r8
003c00  1f040004  addli r8, zero, 512
003c04  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
003c08  b3930818  bfloat2float.rn r7, r17
003c0c  7e0004e0  vmmov mr0, r8
003c10  1f040008  addli r8, zero, 1024
003c14  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
003c18  b3130918  bfloat2float.rn r7, r18
003c1c  7e0004e0  vmmov mr0, r8
003c20  1f040010  addli r8, zero, 2048
003c24  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
003c28  b3930918  bfloat2float.rn r7, r19
003c2c  7e0004e0  vmmov mr0, r8
003c30  1f040020  addli r8, zero, 4096
003c34  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
003c38  b3130a18  bfloat2float.rn r7, r20
003c3c  7e0004e0  vmmov mr0, r8
003c40  eaa01330  vor.u.mh vr1{mr0}, r7, vr1
003c44  9f030040  addli r7, zero, 8192
003c48  7e8003e0  vmmov mr0, r7
003c4c  ab830000  lui r7, 8
003c50  ea201330  vor.u.mh vr1{mr0}, r6, vr1
003c54  2b430000  lui r6, 4
003c58  7e0003e0  vmmov mr0, r6
003c5c  1f030ff6  addli r6, r30, -1280
003c60  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
003c64  b3910a18  bfloat2float.rn r3, r21
003c68  0b132310  add.s r6, r6, r2
003c6c  7e8003e0  vmmov mr0, r7
003c70  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
003c74  eb310300  load.hu r3, 0(r6)
003c78  eb332300  load.hu r7, 2(r6)
003c7c  6b344300  load.hu r8, 4(r6)
003c80  eb346300  load.hu r9, 6(r6)
003c84  6b358300  load.hu r10, 8(r6)
003c88  6b36a300  load.hu r12, 10(r6)
003c8c  eb36c300  load.hu r13, 12(r6)
003c90  6b37e300  load.hu r14, 14(r6)
003c94  eb370301  load.hu r15, 16(r6)
003c98  6b382301  load.hu r16, 18(r6)
003c9c  eb384301  load.hu r17, 20(r6)
003ca0  6b396301  load.hu r18, 22(r6)
003ca4  eb398301  load.hu r19, 24(r6)
003ca8  6b3aa301  load.hu r20, 26(r6)
003cac  eb3ac301  load.hu r21, 28(r6)
003cb0  339b0118  bfloat2float.rn r22, r3
003cb4  eb31e301  load.hu r3, 30(r6)
003cb8  33930318  bfloat2float.rn r6, r7
003cbc  9f430000  addli r7, zero, 4
003cc0  6a212b34  vor.u.mh vr2{mr2}, r22, vr2
003cc4  7e8103e0  vmmov mr2, r7
003cc8  9f031000  addli r7, zero, 8
003ccc  b3910118  bfloat2float.rn r3, r3
003cd0  6a212336  vor.u.mh vr2{mr3}, r6, vr2
003cd4  33130418  bfloat2float.rn r6, r8
003cd8  1f040ff8  addli r8, r30, -1024
003cdc  0b142410  add.s r8, r8, r2
003ce0  6a212334  vor.u.mh vr2{mr2}, r6, vr2
003ce4  33930418  bfloat2float.rn r6, r9
003ce8  7e8103e0  vmmov mr2, r7
003cec  9f032000  addli r7, zero, 16
003cf0  ab440000  lui r9, 4
003cf4  6a212334  vor.u.mh vr2{mr2}, r6, vr2
003cf8  33130518  bfloat2float.rn r6, r10
003cfc  7e8103e0  vmmov mr2, r7
003d00  9f034000  addli r7, zero, 32
003d04  6a212334  vor.u.mh vr2{mr2}, r6, vr2
003d08  33130618  bfloat2float.rn r6, r12
003d0c  7e8103e0  vmmov mr2, r7
003d10  9f038000  addli r7, zero, 64
003d14  6a212334  vor.u.mh vr2{mr2}, r6, vr2
003d18  33930618  bfloat2float.rn r6, r13
003d1c  7e8103e0  vmmov mr2, r7
003d20  9f030001  addli r7, zero, 128
003d24  6a212334  vor.u.mh vr2{mr2}, r6, vr2
003d28  33130718  bfloat2float.rn r6, r14
003d2c  7e8103e0  vmmov mr2, r7
003d30  9f030002  addli r7, zero, 256
003d34  6a212334  vor.u.mh vr2{mr2}, r6, vr2
003d38  33930718  bfloat2float.rn r6, r15
003d3c  7e8103e0  vmmov mr2, r7
003d40  9f030004  addli r7, zero, 512
003d44  6a212334  vor.u.mh vr2{mr2}, r6, vr2
003d48  33130818  bfloat2float.rn r6, r16
003d4c  7e8103e0  vmmov mr2, r7
003d50  9f030008  addli r7, zero, 1024
003d54  6a212334  vor.u.mh vr2{mr2}, r6, vr2
003d58  33930818  bfloat2float.rn r6, r17
003d5c  7e8103e0  vmmov mr2, r7
003d60  9f030010  addli r7, zero, 2048
003d64  6a212334  vor.u.mh vr2{mr2}, r6, vr2
003d68  33130918  bfloat2float.rn r6, r18
003d6c  7e8103e0  vmmov mr2, r7
003d70  9f030020  addli r7, zero, 4096
003d74  6a212334  vor.u.mh vr2{mr2}, r6, vr2
003d78  33930918  bfloat2float.rn r6, r19
003d7c  7e8103e0  vmmov mr2, r7
003d80  9f030040  addli r7, zero, 8192
003d84  6a212334  vor.u.mh vr2{mr2}, r6, vr2
003d88  33130a18  bfloat2float.rn r6, r20
003d8c  7e8103e0  vmmov mr2, r7
003d90  b3930a18  bfloat2float.rn r7, r21
003d94  6a212334  vor.u.mh vr2{mr2}, r6, vr2
003d98  63430fea  loadli.w r6,  -2812(r30)
003d9c  7e8104e0  vmmov mr2, r9
003da0  0b132310  add.s r6, r6, r2
003da4  6aa12334  vor.u.mh vr2{mr2}, r7, vr2
003da8  e3030fea  loadli.w r7,  -2816(r30)
003dac  8b942310  add.s r9, r7, r2
003db0  9f030ffa  addli r7, r30, -768
003db4  6aa12130  vor.u.mh vr2{mr0}, r3, vr2
003db8  eb3143fe  load.hu r3, -28(r6)
003dbc  6b350400  load.hu r10, 0(r8)
003dc0  8b932310  add.s r7, r7, r2
003dc4  6bbb24ff  load.hu r22, -14(r9)
003dc8  e7003fea  storeli.w r3, -2808(r30)
003dcc  eb3163fe  load.hu r3, -26(r6)
003dd0  ebb30300  load.hu r7, 0(r7)
003dd4  16902002  vadd.f.mz.rn vr0{mr1}, vr1, vr2
003dd8  67013fea  storeli.w r3, -2800(r30)
003ddc  eb3183fe  load.hu r3, -24(r6)
003de0  e7013fea  storeli.w r3, -2792(r30)
003de4  eb31a3fe  load.hu r3, -22(r6)
003de8  67023fea  storeli.w r3, -2784(r30)
003dec  eb31c3fe  load.hu r3, -20(r6)
003df0  e7023fea  storeli.w r3, -2776(r30)
003df4  eb31e3fe  load.hu r3, -18(r6)
003df8  67033fea  storeli.w r3, -2768(r30)
003dfc  eb3103ff  load.hu r3, -16(r6)
003e00  e7033fea  storeli.w r3, -2760(r30)
003e04  eb3123ff  load.hu r3, -14(r6)
003e08  67043fea  storeli.w r3, -2752(r30)
003e0c  eb3143ff  load.hu r3, -12(r6)
003e10  e7043fea  storeli.w r3, -2744(r30)
003e14  eb3163ff  load.hu r3, -10(r6)
003e18  67053fea  storeli.w r3, -2736(r30)
003e1c  eb3183ff  load.hu r3, -8(r6)
003e20  e7053fea  storeli.w r3, -2728(r30)
003e24  eb31a3ff  load.hu r3, -6(r6)
003e28  67063fea  storeli.w r3, -2720(r30)
003e2c  eb31c3ff  load.hu r3, -4(r6)
003e30  e7063fea  storeli.w r3, -2712(r30)
003e34  eb31e3ff  load.hu r3, -2(r6)
003e38  e7073fea  storeli.w r3, -2696(r30)
003e3c  eb310300  load.hu r3, 0(r6)
003e40  670f3fea  storeli.w r3, -2576(r30)
003e44  ebb144ff  load.hu r3, -12(r9)
003e48  e7403fea  storeli.w r3, -2804(r30)
003e4c  ebb164ff  load.hu r3, -10(r9)
003e50  67413fea  storeli.w r3, -2796(r30)
003e54  ebb184ff  load.hu r3, -8(r9)
003e58  e7413fea  storeli.w r3, -2788(r30)
003e5c  ebb1a4ff  load.hu r3, -6(r9)
003e60  67423fea  storeli.w r3, -2780(r30)
003e64  ebb1c4ff  load.hu r3, -4(r9)
003e68  e7423fea  storeli.w r3, -2772(r30)
003e6c  ebb1e4ff  load.hu r3, -2(r9)
003e70  67433fea  storeli.w r3, -2764(r30)
003e74  ebb10400  load.hu r3, 0(r9)
003e78  e7433fea  storeli.w r3, -2756(r30)
003e7c  ebb12400  load.hu r3, 2(r9)
003e80  67443fea  storeli.w r3, -2748(r30)
003e84  ebb14400  load.hu r3, 4(r9)
003e88  e7443fea  storeli.w r3, -2740(r30)
003e8c  ebb16400  load.hu r3, 6(r9)
003e90  67453fea  storeli.w r3, -2732(r30)
003e94  ebb18400  load.hu r3, 8(r9)
003e98  e7453fea  storeli.w r3, -2724(r30)
003e9c  ebb1a400  load.hu r3, 10(r9)
003ea0  67463fea  storeli.w r3, -2716(r30)
003ea4  ebb1c400  load.hu r3, 12(r9)
003ea8  67073fea  storeli.w r3, -2704(r30)
003eac  ebb1e400  load.hu r3, 14(r9)
003eb0  67083fea  storeli.w r3, -2688(r30)
003eb4  46100fc2  vstore_mask16.mz vr0{mr1}, 1536(r30)
003eb8  00a00000  mfence { lm }
003ebc  63070ffc  loadli.w r14,  -512(r30)
003ec0  e34c0ffc  loadli.w r25,  -508(r30)
003ec4  e3061ffc  loadli.w r13,  -504(r30)
003ec8  63461ffc  loadli.w r12,  -500(r30)
003ecc  e3042ffc  loadli.w r9,  -496(r30)
003ed0  63442ffc  loadli.w r8,  -492(r30)
003ed4  63033ffc  loadli.w r6,  -488(r30)
003ed8  63493ffc  loadli.w r18,  -484(r30)
003edc  e30a4ffc  loadli.w r21,  -480(r30)
003ee0  634a4ffc  loadli.w r20,  -476(r30)
003ee4  9701b700  and r3, r14, r11
003ee8  93073e04  setlt.u r15, r28, r3
003eec  e3015ffc  loadli.w r3,  -472(r30)
003ef0  634c5ffc  loadli.w r24,  -468(r30)
003ef4  e30b6ffc  loadli.w r23,  -464(r30)
003ef8  e3496ffc  loadli.w r19,  -460(r30)
003efc  e3087ffc  loadli.w r17,  -456(r30)
003f00  63487ffc  loadli.w r16,  -452(r30)
003f04  3bf00700  bneq r15, zero, 28
003f08  9b470701  srli r15, r14, 16
003f0c  9b871700  andi r15, r15, 1
003f10  0b17f710  add.s r14, r14, r15
003f14  e347ffeb  loadli.w r15,  -2564(r30)
003f18  8b17f710  add.s r15, r14, r15
003f1c  5b010000  j 8
003f20  9717a701  or r15, r14, r26
003f24  1787bc00  and r14, r25, r11
003f28  1307ee04  setlt.u r14, r28, r14
003f2c  3b700700  bneq r14, zero, 28
003f30  1bc70c01  srli r14, r25, 16
003f34  1b071700  andi r14, r14, 1
003f38  0b97ec10  add.s r14, r25, r14
003f3c  e34cffeb  loadli.w r25,  -2564(r30)
003f40  0b179711  add.s r14, r14, r25
003f44  5b010000  j 8
003f48  1797ac01  or r14, r25, r26
003f4c  978cb600  and r25, r13, r11
003f50  930c9e05  setlt.u r25, r28, r25
003f54  3bf00c00  bneq r25, zero, 28
003f58  9bcc0601  srli r25, r13, 16
003f5c  9b8c1c00  andi r25, r25, 1
003f60  8b969611  add.s r13, r13, r25
003f64  e34cffeb  loadli.w r25,  -2564(r30)
003f68  8b969611  add.s r13, r13, r25
003f6c  5b010000  j 8
003f70  9796a601  or r13, r13, r26
003f74  970cb600  and r25, r12, r11
003f78  930c9e05  setlt.u r25, r28, r25
003f7c  3bf00c00  bneq r25, zero, 28
003f80  9b4c0601  srli r25, r12, 16
003f84  9b8c1c00  andi r25, r25, 1
003f88  0b169611  add.s r12, r12, r25
003f8c  e34cffeb  loadli.w r25,  -2564(r30)
003f90  0b169611  add.s r12, r12, r25
003f94  5b010000  j 8
003f98  1716a601  or r12, r12, r26
003f9c  978cb400  and r25, r9, r11
003fa0  930c9e05  setlt.u r25, r28, r25
003fa4  3bf00c00  bneq r25, zero, 28
003fa8  9bcc0401  srli r25, r9, 16
003fac  9b8c1c00  andi r25, r25, 1
003fb0  8b949411  add.s r9, r9, r25
003fb4  e34cffeb  loadli.w r25,  -2564(r30)
003fb8  8b949411  add.s r9, r9, r25
003fbc  5b010000  j 8
003fc0  9794a401  or r9, r9, r26
003fc4  970cb400  and r25, r8, r11
003fc8  930c9e05  setlt.u r25, r28, r25
003fcc  3bf00c00  bneq r25, zero, 28
003fd0  9b4c0401  srli r25, r8, 16
003fd4  9b8c1c00  andi r25, r25, 1
003fd8  0b149411  add.s r8, r8, r25
003fdc  e34cffeb  loadli.w r25,  -2564(r30)
003fe0  0b149411  add.s r8, r8, r25
003fe4  5b010000  j 8
003fe8  1714a401  or r8, r8, r26
003fec  970cb300  and r25, r6, r11
003ff0  930c9e05  setlt.u r25, r28, r25
003ff4  3bf00c00  bneq r25, zero, 28
003ff8  9b4c0301  srli r25, r6, 16
003ffc  9b8c1c00  andi r25, r25, 1
004000  0b139311  add.s r6, r6, r25
004004  e34cffeb  loadli.w r25,  -2564(r30)
004008  0b139311  add.s r6, r6, r25
00400c  5b010000  j 8
004010  1713a301  or r6, r6, r26
004014  970cb900  and r25, r18, r11
004018  930c9e05  setlt.u r25, r28, r25
00401c  3bf00c00  bneq r25, zero, 28
004020  9b4c0901  srli r25, r18, 16
004024  9b8c1c00  andi r25, r25, 1
004028  0b199911  add.s r18, r18, r25
00402c  e34cffeb  loadli.w r25,  -2564(r30)
004030  0b199911  add.s r18, r18, r25
004034  5b010000  j 8
004038  1719a901  or r18, r18, r26
00403c  978cba00  and r25, r21, r11
004040  ab0d807f  lui r27, 522240
004044  930c9e05  setlt.u r25, r28, r25
004048  3bf00c00  bneq r25, zero, 28
00404c  9bcc0a01  srli r25, r21, 16
004050  9b8c1c00  andi r25, r25, 1
004054  8b9a9a11  add.s r21, r21, r25
004058  e34cffeb  loadli.w r25,  -2564(r30)
00405c  0b9e9a11  add.s r28, r21, r25
004060  5b010000  j 8
004064  179eaa01  or r28, r21, r26
004068  970aba00  and r21, r20, r11
00406c  938a5d05  setlt.u r21, r27, r21
004070  3bf00a00  bneq r21, zero, 28
004074  9b4a0a01  srli r21, r20, 16
004078  9b8a1a00  andi r21, r21, 1
00407c  0b1a5a11  add.s r20, r20, r21
004080  e34affeb  loadli.w r21,  -2564(r30)
004084  8b1a5a11  add.s r21, r20, r21
004088  5b010000  j 8
00408c  971aaa01  or r21, r20, r26
004090  178ab100  and r20, r3, r11
004094  138a4d05  setlt.u r20, r27, r20
004098  3b700a00  bneq r20, zero, 28
00409c  1bca0101  srli r20, r3, 16
0040a0  1b0a1a00  andi r20, r20, 1
0040a4  8b914111  add.s r3, r3, r20
0040a8  634affeb  loadli.w r20,  -2564(r30)
0040ac  8b9c4111  add.s r25, r3, r20
0040b0  5b010000  j 8
0040b4  979ca101  or r25, r3, r26
0040b8  9701bc00  and r3, r24, r11
0040bc  93813d04  setlt.u r3, r27, r3
0040c0  3bf00100  bneq r3, zero, 28
0040c4  9b410c01  srli r3, r24, 16
0040c8  634affeb  loadli.w r20,  -2564(r30)
0040cc  9b811100  andi r3, r3, 1
0040d0  8b113c10  add.s r3, r24, r3
0040d4  0b9d4111  add.s r26, r3, r20
0040d8  db010000  j 12
0040dc  ab014000  lui r3, 1024
0040e0  171d3c00  or r26, r24, r3
0040e4  9781bb00  and r3, r23, r11
0040e8  2b0c4000  lui r24, 1024
0040ec  93813d04  setlt.u r3, r27, r3
0040f0  3bf00100  bneq r3, zero, 28
0040f4  9bc10b01  srli r3, r23, 16
0040f8  634affeb  loadli.w r20,  -2564(r30)
0040fc  9b811100  andi r3, r3, 1
004100  8b913b10  add.s r3, r23, r3
004104  8b9b4111  add.s r23, r3, r20
004108  5b010000  j 8
00410c  979b8b01  or r23, r23, r24
004110  9781b900  and r3, r19, r11
004114  93813d04  setlt.u r3, r27, r3
004118  3bf00100  bneq r3, zero, 28
00411c  9bc10901  srli r3, r19, 16
004120  9b811100  andi r3, r3, 1
004124  8b913910  add.s r3, r19, r3
004128  e349ffeb  loadli.w r19,  -2564(r30)
00412c  0b9a3111  add.s r20, r3, r19
004130  5b010000  j 8
004134  179a8901  or r20, r19, r24
004138  9781b800  and r3, r17, r11
00413c  93813d04  setlt.u r3, r27, r3
004140  3bf00100  bneq r3, zero, 28
004144  9bc10801  srli r3, r17, 16
004148  9b811100  andi r3, r3, 1
00414c  8b913810  add.s r3, r17, r3
004150  e348ffeb  loadli.w r17,  -2564(r30)
004154  8b991111  add.s r19, r3, r17
004158  5b010000  j 8
00415c  97998801  or r19, r17, r24
004160  9701b800  and r3, r16, r11
004164  ab08ffff  lui r17, 1048560
004168  93813d04  setlt.u r3, r27, r3
00416c  3bf00100  bneq r3, zero, 28
004170  9b410801  srli r3, r16, 16
004174  9b811100  andi r3, r3, 1
004178  8b113810  add.s r3, r16, r3
00417c  6348ffeb  loadli.w r16,  -2564(r30)
004180  0b980111  add.s r16, r3, r16
004184  5b010000  j 8
004188  17188801  or r16, r16, r24
00418c  97811701  and r3, r15, r17
004190  33150518  bfloat2float.rn r10, r10
004194  b3930318  bfloat2float.rn r7, r7
004198  8be15118  sub.f.rn r3, r3, r5
00419c  8be13020  mul.f.rn r3, r1, r3
0041a0  8be1a120  mul.f.rn r3, r3, r10
0041a4  8be17110  add.f.rn r3, r3, r7
0041a8  9783b100  and r7, r3, r11
0041ac  93837d04  setlt.u r7, r27, r7
0041b0  3bf00300  bneq r7, zero, 28
0041b4  9bc30101  srli r7, r3, 16
0041b8  9b831300  andi r7, r7, 1
0041bc  8b917110  add.s r3, r3, r7
0041c0  e343ffeb  loadli.w r7,  -2564(r30)
0041c4  8b917110  add.s r3, r3, r7
0041c8  5b010000  j 8
0041cc  97918101  or r3, r3, r24
0041d0  97031701  and r7, r14, r17
0041d4  63051fea  loadli.w r10,  -2808(r30)
0041d8  9bc10101  srli r3, r3, 16
0041dc  9f070002  addli r15, zero, 256
0041e0  8be35318  sub.f.rn r7, r7, r5
0041e4  73103200  store.h r3, 0(r4)
0041e8  33150518  bfloat2float.rn r10, r10
0041ec  8be37020  mul.f.rn r7, r1, r7
0041f0  8be3a320  mul.f.rn r7, r7, r10
0041f4  33150b18  bfloat2float.rn r10, r22
0041f8  8be3a310  add.f.rn r7, r7, r10
0041fc  1785b300  and r10, r7, r11
004200  1385ad04  setlt.u r10, r27, r10
004204  3b700500  bneq r10, zero, 28
004208  9bc10301  srli r3, r7, 16
00420c  9b811100  andi r3, r3, 1
004210  8b913310  add.s r3, r7, r3
004214  e343ffeb  loadli.w r7,  -2564(r30)
004218  8b917110  add.s r3, r3, r7
00421c  5b010000  j 8
004220  97918301  or r3, r7, r24
004224  97831601  and r7, r13, r17
004228  63052fea  loadli.w r10,  -2800(r30)
00422c  9bc10101  srli r3, r3, 16
004230  1f070ff4  addli r14, r30, -1536
004234  8be35318  sub.f.rn r7, r7, r5
004238  73113200  store.h r3, 2(r4)
00423c  33150518  bfloat2float.rn r10, r10
004240  8be37020  mul.f.rn r7, r1, r7
004244  8be3a320  mul.f.rn r7, r7, r10
004248  63451fea  loadli.w r10,  -2804(r30)
00424c  33150518  bfloat2float.rn r10, r10
004250  8be3a310  add.f.rn r7, r7, r10
004254  1785b300  and r10, r7, r11
004258  1385ad04  setlt.u r10, r27, r10
00425c  3b700500  bneq r10, zero, 28
004260  9bc10301  srli r3, r7, 16
004264  e346ffeb  loadli.w r13,  -2564(r30)
004268  9b811100  andi r3, r3, 1
00426c  8b913310  add.s r3, r7, r3
004270  8b91d110  add.s r3, r3, r13
004274  db010000  j 12
004278  e346ffeb  loadli.w r13,  -2564(r30)
00427c  97918301  or r3, r7, r24
004280  97031601  and r7, r12, r17
004284  63053fea  loadli.w r10,  -2792(r30)
004288  9bc10101  srli r3, r3, 16
00428c  8be35318  sub.f.rn r7, r7, r5
004290  73123200  store.h r3, 4(r4)
004294  33150518  bfloat2float.rn r10, r10
004298  8be37020  mul.f.rn r7, r1, r7
00429c  8be3a320  mul.f.rn r7, r7, r10
0042a0  63452fea  loadli.w r10,  -2796(r30)
0042a4  33150518  bfloat2float.rn r10, r10
0042a8  8be3a310  add.f.rn r7, r7, r10
0042ac  1785b300  and r10, r7, r11
0042b0  1385ad04  setlt.u r10, r27, r10
0042b4  3b600500  bneq r10, zero, 24
0042b8  9bc10301  srli r3, r7, 16
0042bc  9b811100  andi r3, r3, 1
0042c0  8b913310  add.s r3, r7, r3
0042c4  8b91d110  add.s r3, r3, r13
0042c8  5b010000  j 8
0042cc  97918301  or r3, r7, r24
0042d0  97831401  and r7, r9, r17
0042d4  e3044fea  loadli.w r9,  -2784(r30)
0042d8  9bc10101  srli r3, r3, 16
0042dc  8be35318  sub.f.rn r7, r7, r5
0042e0  73133200  store.h r3, 6(r4)
0042e4  b3940418  bfloat2float.rn r9, r9
0042e8  8be37020  mul.f.rn r7, r1, r7
0042ec  8be39320  mul.f.rn r7, r7, r9
0042f0  e3443fea  loadli.w r9,  -2788(r30)
0042f4  b3940418  bfloat2float.rn r9, r9
0042f8  8be39310  add.f.rn r7, r7, r9
0042fc  9784b300  and r9, r7, r11
004300  93849d04  setlt.u r9, r27, r9
004304  3be00400  bneq r9, zero, 24
004308  9bc10301  srli r3, r7, 16
00430c  9b811100  andi r3, r3, 1
004310  8b913310  add.s r3, r7, r3
004314  8b91d110  add.s r3, r3, r13
004318  5b010000  j 8
00431c  97918301  or r3, r7, r24
004320  97031401  and r7, r8, r17
004324  63045fea  loadli.w r8,  -2776(r30)
004328  9bc10101  srli r3, r3, 16
00432c  8be35318  sub.f.rn r7, r7, r5
004330  73143200  store.h r3, 8(r4)
004334  33140418  bfloat2float.rn r8, r8
004338  8be37020  mul.f.rn r7, r1, r7
00433c  8be38320  mul.f.rn r7, r7, r8
004340  63444fea  loadli.w r8,  -2780(r30)
004344  33140418  bfloat2float.rn r8, r8
004348  8be38310  add.f.rn r7, r7, r8
00434c  1784b300  and r8, r7, r11
004350  13848d04  setlt.u r8, r27, r8
004354  3b600400  bneq r8, zero, 24
004358  9bc10301  srli r3, r7, 16
00435c  9b811100  andi r3, r3, 1
004360  8b913310  add.s r3, r7, r3
004364  8b91d110  add.s r3, r3, r13
004368  5b010000  j 8
00436c  97918301  or r3, r7, r24
004370  17031301  and r6, r6, r17
004374  e3036fea  loadli.w r7,  -2768(r30)
004378  9bc10101  srli r3, r3, 16
00437c  0b635318  sub.f.rn r6, r6, r5
004380  73153200  store.h r3, 10(r4)
004384  b3930318  bfloat2float.rn r7, r7
004388  0be36020  mul.f.rn r6, r1, r6
00438c  0b637320  mul.f.rn r6, r6, r7
004390  e3435fea  loadli.w r7,  -2772(r30)
004394  b3930318  bfloat2float.rn r7, r7
004398  0b637310  add.f.rn r6, r6, r7
00439c  9703b300  and r7, r6, r11
0043a0  93837d04  setlt.u r7, r27, r7
0043a4  3be00300  bneq r7, zero, 24
0043a8  9b410301  srli r3, r6, 16
0043ac  9b811100  andi r3, r3, 1
0043b0  8b113310  add.s r3, r6, r3
0043b4  8b91d110  add.s r3, r3, r13
0043b8  5b010000  j 8
0043bc  97118301  or r3, r6, r24
0043c0  17031901  and r6, r18, r17
0043c4  e3037fea  loadli.w r7,  -2760(r30)
0043c8  9bc10101  srli r3, r3, 16
0043cc  0b635318  sub.f.rn r6, r6, r5
0043d0  73163200  store.h r3, 12(r4)
0043d4  b3930318  bfloat2float.rn r7, r7
0043d8  0be36020  mul.f.rn r6, r1, r6
0043dc  0b637320  mul.f.rn r6, r6, r7
0043e0  e3436fea  loadli.w r7,  -2764(r30)
0043e4  b3930318  bfloat2float.rn r7, r7
0043e8  0b637310  add.f.rn r6, r6, r7
0043ec  9703b300  and r7, r6, r11
0043f0  93837d04  setlt.u r7, r27, r7
0043f4  3be00300  bneq r7, zero, 24
0043f8  9b410301  srli r3, r6, 16
0043fc  9b811100  andi r3, r3, 1
004400  8b113310  add.s r3, r6, r3
004404  8b91d110  add.s r3, r3, r13
004408  5b010000  j 8
00440c  97118301  or r3, r6, r24
004410  17031e01  and r6, r28, r17
004414  e3038fea  loadli.w r7,  -2752(r30)
004418  2b0e807f  lui r28, 522240
00441c  9bc10101  srli r3, r3, 16
004420  0b635318  sub.f.rn r6, r6, r5
004424  73173200  store.h r3, 14(r4)
004428  b3930318  bfloat2float.rn r7, r7
00442c  0be36020  mul.f.rn r6, r1, r6
004430  0b637320  mul.f.rn r6, r6, r7
004434  e3437fea  loadli.w r7,  -2756(r30)
004438  b3930318  bfloat2float.rn r7, r7
00443c  0b637310  add.f.rn r6, r6, r7
004440  9703b300  and r7, r6, r11
004444  93037e04  setlt.u r7, r28, r7
004448  3be00300  bneq r7, zero, 24
00444c  9b410301  srli r3, r6, 16
004450  9b811100  andi r3, r3, 1
004454  8b113310  add.s r3, r6, r3
004458  8b91d110  add.s r3, r3, r13
00445c  5b010000  j 8
004460  97118301  or r3, r6, r24
004464  17831a01  and r6, r21, r17
004468  e3039fea  loadli.w r7,  -2744(r30)
00446c  9bc10101  srli r3, r3, 16
004470  0b635318  sub.f.rn r6, r6, r5
004474  73183200  store.h r3, 16(r4)
004478  b3930318  bfloat2float.rn r7, r7
00447c  0be36020  mul.f.rn r6, r1, r6
004480  0b637320  mul.f.rn r6, r6, r7
004484  e3438fea  loadli.w r7,  -2748(r30)
004488  b3930318  bfloat2float.rn r7, r7
00448c  0b637310  add.f.rn r6, r6, r7
004490  9703b300  and r7, r6, r11
004494  93037e04  setlt.u r7, r28, r7
004498  3be00300  bneq r7, zero, 24
00449c  9b410301  srli r3, r6, 16
0044a0  9b811100  andi r3, r3, 1
0044a4  8b113310  add.s r3, r6, r3
0044a8  8b91d110  add.s r3, r3, r13
0044ac  5b010000  j 8
0044b0  97118301  or r3, r6, r24
0044b4  17831c01  and r6, r25, r17
0044b8  e303afea  loadli.w r7,  -2736(r30)
0044bc  9bc10101  srli r3, r3, 16
0044c0  0b635318  sub.f.rn r6, r6, r5
0044c4  73193200  store.h r3, 18(r4)
0044c8  b3930318  bfloat2float.rn r7, r7
0044cc  0be36020  mul.f.rn r6, r1, r6
0044d0  0b637320  mul.f.rn r6, r6, r7
0044d4  e3439fea  loadli.w r7,  -2740(r30)
0044d8  b3930318  bfloat2float.rn r7, r7
0044dc  0b637310  add.f.rn r6, r6, r7
0044e0  9703b300  and r7, r6, r11
0044e4  93037e04  setlt.u r7, r28, r7
0044e8  3be00300  bneq r7, zero, 24
0044ec  9b410301  srli r3, r6, 16
0044f0  9b811100  andi r3, r3, 1
0044f4  8b113310  add.s r3, r6, r3
0044f8  8b91d110  add.s r3, r3, r13
0044fc  5b010000  j 8
004500  97118301  or r3, r6, r24
004504  17031d01  and r6, r26, r17
004508  e303bfea  loadli.w r7,  -2728(r30)
00450c  9bc10101  srli r3, r3, 16
004510  0b635318  sub.f.rn r6, r6, r5
004514  731a3200  store.h r3, 20(r4)
004518  b3930318  bfloat2float.rn r7, r7
00451c  0be36020  mul.f.rn r6, r1, r6
004520  0b637320  mul.f.rn r6, r6, r7
004524  e343afea  loadli.w r7,  -2732(r30)
004528  b3930318  bfloat2float.rn r7, r7
00452c  0b637310  add.f.rn r6, r6, r7
004530  9703b300  and r7, r6, r11
004534  93037e04  setlt.u r7, r28, r7
004538  3be00300  bneq r7, zero, 24
00453c  9b410301  srli r3, r6, 16
004540  9b811100  andi r3, r3, 1
004544  8b113310  add.s r3, r6, r3
004548  8b91d110  add.s r3, r3, r13
00454c  5b010000  j 8
004550  97118301  or r3, r6, r24
004554  17831b01  and r6, r23, r17
004558  e303cfea  loadli.w r7,  -2720(r30)
00455c  9bc10101  srli r3, r3, 16
004560  0b635318  sub.f.rn r6, r6, r5
004564  731b3200  store.h r3, 22(r4)
004568  b3930318  bfloat2float.rn r7, r7
00456c  0be36020  mul.f.rn r6, r1, r6
004570  0b637320  mul.f.rn r6, r6, r7
004574  e343bfea  loadli.w r7,  -2724(r30)
004578  b3930318  bfloat2float.rn r7, r7
00457c  0b637310  add.f.rn r6, r6, r7
004580  9703b300  and r7, r6, r11
004584  93037e04  setlt.u r7, r28, r7
004588  3be00300  bneq r7, zero, 24
00458c  9b410301  srli r3, r6, 16
004590  9b811100  andi r3, r3, 1
004594  8b113310  add.s r3, r6, r3
004598  8b91d110  add.s r3, r3, r13
00459c  5b010000  j 8
0045a0  97118301  or r3, r6, r24
0045a4  17031a01  and r6, r20, r17
0045a8  e303dfea  loadli.w r7,  -2712(r30)
0045ac  9bc10101  srli r3, r3, 16
0045b0  0b635318  sub.f.rn r6, r6, r5
0045b4  731c3200  store.h r3, 24(r4)
0045b8  b3930318  bfloat2float.rn r7, r7
0045bc  0be36020  mul.f.rn r6, r1, r6
0045c0  0b637320  mul.f.rn r6, r6, r7
0045c4  e343cfea  loadli.w r7,  -2716(r30)
0045c8  b3930318  bfloat2float.rn r7, r7
0045cc  0b637310  add.f.rn r6, r6, r7
0045d0  9703b300  and r7, r6, r11
0045d4  93037e04  setlt.u r7, r28, r7
0045d8  3be00300  bneq r7, zero, 24
0045dc  9b410301  srli r3, r6, 16
0045e0  9b811100  andi r3, r3, 1
0045e4  8b113310  add.s r3, r6, r3
0045e8  8b91d110  add.s r3, r3, r13
0045ec  5b010000  j 8
0045f0  97118301  or r3, r6, r24
0045f4  17831901  and r6, r19, r17
0045f8  e303ffea  loadli.w r7,  -2696(r30)
0045fc  9bc10101  srli r3, r3, 16
004600  0b635318  sub.f.rn r6, r6, r5
004604  731d3200  store.h r3, 26(r4)
004608  b3930318  bfloat2float.rn r7, r7
00460c  0be36020  mul.f.rn r6, r1, r6
004610  0b637320  mul.f.rn r6, r6, r7
004614  e303efea  loadli.w r7,  -2704(r30)
004618  b3930318  bfloat2float.rn r7, r7
00461c  0b637310  add.f.rn r6, r6, r7
004620  9703b300  and r7, r6, r11
004624  93037e04  setlt.u r7, r28, r7
004628  3be00300  bneq r7, zero, 24
00462c  9b410301  srli r3, r6, 16
004630  9b811100  andi r3, r3, 1
004634  8b113310  add.s r3, r6, r3
004638  8b91d110  add.s r3, r3, r13
00463c  5b010000  j 8
004640  97118301  or r3, r6, r24
004644  17031801  and r6, r16, r17
004648  e303efeb  loadli.w r7,  -2576(r30)
00464c  9bc10101  srli r3, r3, 16
004650  0b635318  sub.f.rn r6, r6, r5
004654  731e3200  store.h r3, 28(r4)
004658  b3930318  bfloat2float.rn r7, r7
00465c  0be36020  mul.f.rn r6, r1, r6
004660  0b637320  mul.f.rn r6, r6, r7
004664  e3030feb  loadli.w r7,  -2688(r30)
004668  b3930318  bfloat2float.rn r7, r7
00466c  0b637310  add.f.rn r6, r6, r7
004670  9703b300  and r7, r6, r11
004674  93037e04  setlt.u r7, r28, r7
004678  378203fa  beq r7, zero, -2944
00467c  97118301  or r3, r6, r24
004680  5b91feff  j -2936
004684  9f0e0fdd  addli sp, r30, -4480
004688  9f8e0e23  addli sp, sp, 4480
00468c  00a00300  mfence { lm, sm, gm }
004690  00100000  exit
004694  00100000  exit
004698  00100000  exit
00469c  00100000  exit
0046a0  00100000  exit
0046a4  00100000  exit
0046a8  00100000  exit
0046ac  00100000  exit
0046b0  00100000  exit
0046b4  00100000  exit
0046b8  00100000  exit
0046bc  00100000  exit
0046c0  00100000  exit
0046c4  00100000  exit
0046c8  00100000  exit
0046cc  00100000  exit
0046d0  00100000  exit
0046d4  00100000  exit
0046d8  00100000  exit
0046dc  00100000  exit
0046e0  00100000  exit
0046e4  00100000  exit
0046e8  00100000  exit
0046ec  00100000  exit
0046f0  00100000  exit
0046f4  00100000  exit
0046f8  00100000  exit
0046fc  00100000  exit
004700  00100000  exit
004704  00100000  exit
004708  00100000  exit
00470c  00100000  exit
004710  00100000  exit
004714  00100000  exit
004718  00100000  exit
00471c  00100000  exit
004720  00100000  exit
004724  00100000  exit
004728  00100000  exit
00472c  00100000  exit
004730  00100000  exit
004734  00100000  exit
004738  00100000  exit
00473c  00100000  exit
004740  00100000  exit
004744  00100000  exit
004748  00100000  exit
00474c  00100000  exit
004750  00100000  exit
004754  00100000  exit
004758  00100000  exit
00475c  00100000  exit
004760  00100000  exit
004764  00100000  exit
004768  00100000  exit
00476c  00100000  exit
004770  00100000  exit
004774  00100000  exit
004778  00100000  exit
00477c  00100000  exit
004780  00100000  exit
004784  00100000  exit
004788  00100000  exit
00478c  00100000  exit
004790  00100000  exit
004794  00100000  exit
004798  00100000  exit
00479c  00100000  exit
0047a0  00100000  exit
0047a4  00100000  exit
0047a8  00100000  exit
0047ac  00100000  exit
0047b0  00100000  exit
0047b4  00100000  exit
0047b8  00100000  exit
0047bc  00100000  exit
0047c0  00100000  exit
0047c4  00100000  exit
0047c8  00100000  exit
0047cc  00100000  exit
0047d0  00100000  exit
0047d4  00100000  exit
0047d8  00100000  exit
0047dc  00100000  exit
0047e0  00100000  exit
0047e4  00100000  exit
0047e8  00100000  exit
0047ec  00100000  exit
0047f0  00100000  exit
0047f4  00100000  exit
0047f8  00100000  exit
0047fc  00100000  exit
004800  00100000  exit
004804  00100000  exit
004808  00100000  exit
00480c  00100000  exit
004810  00100000  exit
004814  00100000  exit
004818  00100000  exit
00481c  00100000  exit
004820  00100000  exit
004824  00100000  exit
004828  00100000  exit
00482c  00100000  exit
004830  00100000  exit
004834  00100000  exit
004838  00100000  exit
00483c  00100000  exit
004840  00100000  exit
004844  00100000  exit
004848  00100000  exit
00484c  00100000  exit
004850  00100000  exit
004854  00100000  exit
004858  00100000  exit
00485c  00100000  exit
004860  00100000  exit
004864  00100000  exit
004868  00100000  exit
00486c  00100000  exit
004870  00100000  exit
004874  00100000  exit
004878  00100000  exit
00487c  00100000  exit
004880  00100000  exit
004884  00100000  exit
004888  00100000  exit
00488c  00100000  exit
004890  00100000  exit
004894  00100000  exit
004898  00100000  exit
00489c  00100000  exit
0048a0  00100000  exit
0048a4  00100000  exit
0048a8  00100000  exit
0048ac  00100000  exit
0048b0  00100000  exit
0048b4  00100000  exit
0048b8  00100000  exit
0048bc  00100000  exit
0048c0  00100000  exit
0048c4  00100000  exit
0048c8  00100000  exit
0048cc  00100000  exit
0048d0  00100000  exit
