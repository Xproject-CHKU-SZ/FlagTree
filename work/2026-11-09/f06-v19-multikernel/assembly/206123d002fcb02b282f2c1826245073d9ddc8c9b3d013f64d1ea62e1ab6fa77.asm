; SHA-256 206123d002fcb02b282f2c1826245073d9ddc8c9b3d013f64d1ea62e1ab6fa77
; P800 Cluster · XTDK LLVM 19 · 824 / 824 words decoded
; bound names: triton_poi_fused_add_relu_1
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
000078  9f094000  addli r19, zero, 32
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
0000dc  9f8e0efb  addli sp, sp, -640
0000e0  1f8f8e04  addli r30, sp, 576
0000e4  00520002  load_param_i r4, 0
0000e8  63013f00  loadli.w r2,  24(r30)
0000ec  e3402f00  loadli.w r1,  20(r30)
0000f0  e3413f00  loadli.w r3,  28(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  e74e1ffa  storeli.w r1, -532(r30)
000100  4bc64004  ble.s r1, r4, 2448
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  9f050ffd  addli r11, r30, -384
000110  1f050001  addli r10, zero, 128
000114  2b09807f  lui r18, 522240
000118  ab094000  lui r19, 1024
00011c  2b0affff  lui r20, 1048560
000120  9f0a0002  addli r21, zero, 256
000124  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000128  9bb06000  slli r1, r1, 6
00012c  e70e2ffa  storeli.w r2, -536(r30)
000130  2bf1ff7f  lui r2, 524287
000134  674e1ffa  storeli.w r1, -540(r30)
000138  ab700000  lui r1, 7
00013c  9b18f1ff  ori r17, r2, 4095
000140  1b98f0ff  ori r16, r1, 4095
000144  9f200000  addli r1, zero, 2
000148  fe8100e0  vmmov mr3, r1
00014c  db060000  j 52
000150  ab0000f0  lui r1, 983040
000154  1f050001  addli r10, zero, 128
000158  6b510fdf  load.d r[3:4], -528(r30)
00015c  6342fffb  loadli.w r4,  -516(r30)
000160  97101500  or r1, r10, r1
000164  ff30b100  s_lm2gm r1, r11, 0(r[3:4])
000168  e300dffb  loadli.w r1,  -536(r30)
00016c  00a00000  mfence { lm }
000170  0b121210  add.s r4, r4, r1
000174  e340dffb  loadli.w r1,  -532(r30)
000178  3f201200  blt.s r4, r1, 8
00017c  db220100  j 2324
000180  e3403f00  loadli.w r1,  28(r30)
000184  63013f00  loadli.w r2,  24(r30)
000188  e74f4ffa  storeli.w r4, -516(r30)
00018c  9f110000  addli r3, zero, 1
000190  6b540f00  load.d r[9:10], 0(r30)
000194  1f8c2500  addli r24, r11, 16
000198  9f0c0000  addli r25, zero, 0
00019c  8b101230  div.s r1, r4, r1
0001a0  8b902030  div.s r1, r1, r2
0001a4  6341cffb  loadli.w r2,  -540(r30)
0001a8  9bb0c000  slli r1, r1, 12
0001ac  8b902010  add.s r1, r1, r2
0001b0  1f010010  addli r2, zero, 2048
0001b4  0b912038  mod.s r2, r1, r2
0001b8  33920028  sext_int2long r[5:6], r1
0001bc  ab0000f0  lui r1, 983040
0001c0  17323202  sll.d r[5:6], r[5:6], r3
0001c4  97101500  or r1, r10, r1
0001c8  0b244410  add.ul r[9:10], r[9:10], r[5:6]
0001cc  33130128  sext_int2long r[7:8], r2
0001d0  2b0100f0  lui r2, 983040
0001d4  73388fde  store.d r[9:10], -528(r30)
0001d8  17333302  sll.d r[7:8], r[7:8], r3
0001dc  eb518f00  load.d r[4:5], 8(r30)
0001e0  17112500  or r2, r10, r2
0001e4  0ba26110  add.ul r[5:6], r[4:5], r[7:8]
0001e8  9f010ffc  addli r3, r30, -512
0001ec  ff203400  l_gm2lm r1, r3, 0(r[9:10])
0001f0  7f21b200  l_gm2lm r2, r11, 0(r[5:6])
0001f4  00a00000  mfence { lm }
0001f8  db120000  j 148
0001fc  33110100  float2bfloat.rn r2, r2
000200  b3910200  float2bfloat.rn r3, r5
000204  b3900000  float2bfloat.rn r1, r1
000208  9f8c8c00  addli r25, r25, 64
00020c  73192cfe  store.h r2, -14(r24)
000210  33110b00  float2bfloat.rn r2, r22
000214  73183cfe  store.h r3, -16(r24)
000218  b3910700  float2bfloat.rn r3, r15
00021c  73101c00  store.h r1, 0(r24)
000220  b3100400  float2bfloat.rn r1, r8
000224  731a2cfe  store.h r2, -12(r24)
000228  33110200  float2bfloat.rn r2, r4
00022c  731b3cfe  store.h r3, -10(r24)
000230  b3110500  float2bfloat.rn r3, r10
000234  73121c00  store.h r1, 4(r24)
000238  b3100300  float2bfloat.rn r1, r6
00023c  731c2cfe  store.h r2, -8(r24)
000240  33910400  float2bfloat.rn r2, r9
000244  731d3cfe  store.h r3, -6(r24)
000248  b3910600  float2bfloat.rn r3, r13
00024c  73141c00  store.h r1, 8(r24)
000250  b3900d00  float2bfloat.rn r1, r27
000254  731e2cfe  store.h r2, -4(r24)
000258  33110600  float2bfloat.rn r2, r12
00025c  731f3cfe  store.h r3, -2(r24)
000260  73161c00  store.h r1, 12(r24)
000264  73112c00  store.h r2, 2(r24)
000268  33910300  float2bfloat.rn r2, r7
00026c  73132c00  store.h r2, 6(r24)
000270  33110e00  float2bfloat.rn r2, r28
000274  73152c00  store.h r2, 10(r24)
000278  33110d00  float2bfloat.rn r2, r26
00027c  73172c00  store.h r2, 14(r24)
000280  1f0c4c00  addli r24, r24, 32
000284  00a00000  mfence { lm }
000288  37ab5cff  beq r25, r21, -312
00028c  9f000ffc  addli r1, r30, -512
000290  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000294  9f110000  addli r3, zero, 1
000298  12310002  vadd.s.mz vr2{mr1}, zero, vr0
00029c  0b929011  add.s r4, r1, r25
0002a0  7e8101e0  vmmov mr2, r3
0002a4  9f410000  addli r3, zero, 4
0002a8  eb320200  load.hu r5, 0(r4)
0002ac  6b332200  load.hu r6, 2(r4)
0002b0  6b31a201  load.hu r2, 26(r4)
0002b4  eb30c201  load.hu r1, 28(r4)
0002b8  eb334200  load.hu r7, 4(r4)
0002bc  6b346200  load.hu r8, 6(r4)
0002c0  eb348200  load.hu r9, 8(r4)
0002c4  6b35a200  load.hu r10, 10(r4)
0002c8  6b36c200  load.hu r12, 12(r4)
0002cc  eb36e200  load.hu r13, 14(r4)
0002d0  eb370201  load.hu r15, 16(r4)
0002d4  6b3b2201  load.hu r22, 18(r4)
0002d8  eb3b4201  load.hu r23, 20(r4)
0002dc  6b3d6201  load.hu r26, 22(r4)
0002e0  eb3d8201  load.hu r27, 24(r4)
0002e4  6b32e201  load.hu r4, 30(r4)
0002e8  7e8001e0  vmmov mr0, r3
0002ec  9f011000  addli r3, zero, 8
0002f0  b3920218  bfloat2float.rn r5, r5
0002f4  33110118  bfloat2float.rn r2, r2
0002f8  b3900018  bfloat2float.rn r1, r1
0002fc  eaa01234  vor.u.mh vr1{mr2}, r5, vr1
000300  b3120318  bfloat2float.rn r5, r6
000304  eaa01236  vor.u.mh vr1{mr3}, r5, vr1
000308  b3920318  bfloat2float.rn r5, r7
00030c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000310  b3120418  bfloat2float.rn r5, r8
000314  7e8001e0  vmmov mr0, r3
000318  9f012000  addli r3, zero, 16
00031c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000320  b3920418  bfloat2float.rn r5, r9
000324  7e8001e0  vmmov mr0, r3
000328  9f014000  addli r3, zero, 32
00032c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000330  b3120518  bfloat2float.rn r5, r10
000334  7e8001e0  vmmov mr0, r3
000338  9f018000  addli r3, zero, 64
00033c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000340  b3120618  bfloat2float.rn r5, r12
000344  7e8001e0  vmmov mr0, r3
000348  9f010001  addli r3, zero, 128
00034c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000350  b3920618  bfloat2float.rn r5, r13
000354  7e8001e0  vmmov mr0, r3
000358  9f010002  addli r3, zero, 256
00035c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000360  b3920718  bfloat2float.rn r5, r15
000364  7e8001e0  vmmov mr0, r3
000368  9f010004  addli r3, zero, 512
00036c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000370  b3120b18  bfloat2float.rn r5, r22
000374  7e8001e0  vmmov mr0, r3
000378  9f010008  addli r3, zero, 1024
00037c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000380  b3920b18  bfloat2float.rn r5, r23
000384  7e8001e0  vmmov mr0, r3
000388  9f010010  addli r3, zero, 2048
00038c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000390  b3120d18  bfloat2float.rn r5, r26
000394  7e8001e0  vmmov mr0, r3
000398  9f010020  addli r3, zero, 4096
00039c  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0003a0  b3920d18  bfloat2float.rn r5, r27
0003a4  7e8001e0  vmmov mr0, r3
0003a8  9f010040  addli r3, zero, 8192
0003ac  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0003b0  7e8001e0  vmmov mr0, r3
0003b4  ab810000  lui r3, 8
0003b8  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0003bc  2b410000  lui r2, 4
0003c0  7e0001e0  vmmov mr0, r2
0003c4  0b919511  add.s r2, r11, r25
0003c8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0003cc  b3100218  bfloat2float.rn r1, r4
0003d0  7e8001e0  vmmov mr0, r3
0003d4  9f410000  addli r3, zero, 4
0003d8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0003dc  eb300100  load.hu r1, 0(r2)
0003e0  6b322100  load.hu r4, 2(r2)
0003e4  eb324100  load.hu r5, 4(r2)
0003e8  6b336100  load.hu r6, 6(r2)
0003ec  eb338100  load.hu r7, 8(r2)
0003f0  6b34a100  load.hu r8, 10(r2)
0003f4  eb34c100  load.hu r9, 12(r2)
0003f8  6b35e100  load.hu r10, 14(r2)
0003fc  6b360101  load.hu r12, 16(r2)
000400  eb362101  load.hu r13, 18(r2)
000404  eb374101  load.hu r15, 20(r2)
000408  6b3b6101  load.hu r22, 22(r2)
00040c  eb3b8101  load.hu r23, 24(r2)
000410  6b3da101  load.hu r26, 26(r2)
000414  eb3dc101  load.hu r27, 28(r2)
000418  6b31e101  load.hu r2, 30(r2)
00041c  b3900018  bfloat2float.rn r1, r1
000420  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000424  b3100218  bfloat2float.rn r1, r4
000428  7e8101e0  vmmov mr2, r3
00042c  9f011000  addli r3, zero, 8
000430  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
000434  b3900218  bfloat2float.rn r1, r5
000438  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00043c  b3100318  bfloat2float.rn r1, r6
000440  7e8101e0  vmmov mr2, r3
000444  9f012000  addli r3, zero, 16
000448  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00044c  b3900318  bfloat2float.rn r1, r7
000450  7e8101e0  vmmov mr2, r3
000454  9f014000  addli r3, zero, 32
000458  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00045c  b3100418  bfloat2float.rn r1, r8
000460  7e8101e0  vmmov mr2, r3
000464  9f018000  addli r3, zero, 64
000468  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00046c  b3900418  bfloat2float.rn r1, r9
000470  7e8101e0  vmmov mr2, r3
000474  9f010001  addli r3, zero, 128
000478  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00047c  b3100518  bfloat2float.rn r1, r10
000480  7e8101e0  vmmov mr2, r3
000484  9f010002  addli r3, zero, 256
000488  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00048c  b3100618  bfloat2float.rn r1, r12
000490  7e8101e0  vmmov mr2, r3
000494  9f010004  addli r3, zero, 512
000498  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00049c  b3900618  bfloat2float.rn r1, r13
0004a0  7e8101e0  vmmov mr2, r3
0004a4  9f010008  addli r3, zero, 1024
0004a8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004ac  b3900718  bfloat2float.rn r1, r15
0004b0  7e8101e0  vmmov mr2, r3
0004b4  9f010010  addli r3, zero, 2048
0004b8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004bc  b3100b18  bfloat2float.rn r1, r22
0004c0  7e8101e0  vmmov mr2, r3
0004c4  9f010020  addli r3, zero, 4096
0004c8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004cc  b3900b18  bfloat2float.rn r1, r23
0004d0  7e8101e0  vmmov mr2, r3
0004d4  9f010040  addli r3, zero, 8192
0004d8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004dc  b3100d18  bfloat2float.rn r1, r26
0004e0  7e8101e0  vmmov mr2, r3
0004e4  ab410000  lui r3, 4
0004e8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004ec  b3900d18  bfloat2float.rn r1, r27
0004f0  7e8101e0  vmmov mr2, r3
0004f4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0004f8  b3100118  bfloat2float.rn r1, r2
0004fc  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000500  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000504  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
000508  00a00000  mfence { lm }
00050c  e3020ffe  loadli.w r5,  -256(r30)
000510  63410ffe  loadli.w r2,  -252(r30)
000514  630b1ffe  loadli.w r22,  -248(r30)
000518  e3471ffe  loadli.w r15,  -244(r30)
00051c  63022ffe  loadli.w r4,  -240(r30)
000520  63452ffe  loadli.w r10,  -236(r30)
000524  e3043ffe  loadli.w r9,  -232(r30)
000528  e3463ffe  loadli.w r13,  -228(r30)
00052c  e3004ffe  loadli.w r1,  -224(r30)
000530  63464ffe  loadli.w r12,  -220(r30)
000534  63045ffe  loadli.w r8,  -216(r30)
000538  e3435ffe  loadli.w r7,  -212(r30)
00053c  17831201  and r6, r5, r17
000540  130e6904  setlt.u r28, r18, r6
000544  63036ffe  loadli.w r6,  -208(r30)
000548  e34d6ffe  loadli.w r27,  -204(r30)
00054c  630d7ffe  loadli.w r26,  -200(r30)
000550  e34b7ffe  loadli.w r23,  -196(r30)
000554  3b600e00  bneq r28, zero, 24
000558  1bce0201  srli r28, r5, 16
00055c  1b0e1e00  andi r28, r28, 1
000560  8b92c211  add.s r5, r5, r28
000564  8b920211  add.s r5, r5, r16
000568  5b010000  j 8
00056c  97923201  or r5, r5, r19
000570  170e1101  and r28, r2, r17
000574  130ec905  setlt.u r28, r18, r28
000578  3b600e00  bneq r28, zero, 24
00057c  1b4e0101  srli r28, r2, 16
000580  1b0e1e00  andi r28, r28, 1
000584  0b11c111  add.s r2, r2, r28
000588  0b110111  add.s r2, r2, r16
00058c  5b010000  j 8
000590  17113101  or r2, r2, r19
000594  170e1b01  and r28, r22, r17
000598  130ec905  setlt.u r28, r18, r28
00059c  3b600e00  bneq r28, zero, 24
0005a0  1b4e0b01  srli r28, r22, 16
0005a4  1b0e1e00  andi r28, r28, 1
0005a8  0b1bcb11  add.s r22, r22, r28
0005ac  0b1b0b11  add.s r22, r22, r16
0005b0  5b010000  j 8
0005b4  171b3b01  or r22, r22, r19
0005b8  178e1701  and r28, r15, r17
0005bc  130ec905  setlt.u r28, r18, r28
0005c0  3b600e00  bneq r28, zero, 24
0005c4  1bce0701  srli r28, r15, 16
0005c8  1b0e1e00  andi r28, r28, 1
0005cc  8b97c711  add.s r15, r15, r28
0005d0  8b970711  add.s r15, r15, r16
0005d4  5b010000  j 8
0005d8  97973701  or r15, r15, r19
0005dc  170e1201  and r28, r4, r17
0005e0  130ec905  setlt.u r28, r18, r28
0005e4  3b600e00  bneq r28, zero, 24
0005e8  1b4e0201  srli r28, r4, 16
0005ec  1b0e1e00  andi r28, r28, 1
0005f0  0b12c211  add.s r4, r4, r28
0005f4  0b120211  add.s r4, r4, r16
0005f8  5b010000  j 8
0005fc  17123201  or r4, r4, r19
000600  170e1501  and r28, r10, r17
000604  130ec905  setlt.u r28, r18, r28
000608  3b600e00  bneq r28, zero, 24
00060c  1b4e0501  srli r28, r10, 16
000610  1b0e1e00  andi r28, r28, 1
000614  0b15c511  add.s r10, r10, r28
000618  0b150511  add.s r10, r10, r16
00061c  5b010000  j 8
000620  17153501  or r10, r10, r19
000624  178e1401  and r28, r9, r17
000628  130ec905  setlt.u r28, r18, r28
00062c  3b600e00  bneq r28, zero, 24
000630  1bce0401  srli r28, r9, 16
000634  1b0e1e00  andi r28, r28, 1
000638  8b94c411  add.s r9, r9, r28
00063c  8b940411  add.s r9, r9, r16
000640  5b010000  j 8
000644  97943401  or r9, r9, r19
000648  178e1601  and r28, r13, r17
00064c  130ec905  setlt.u r28, r18, r28
000650  3b600e00  bneq r28, zero, 24
000654  1bce0601  srli r28, r13, 16
000658  1b0e1e00  andi r28, r28, 1
00065c  8b96c611  add.s r13, r13, r28
000660  8b960611  add.s r13, r13, r16
000664  5b010000  j 8
000668  97963601  or r13, r13, r19
00066c  178e1001  and r28, r1, r17
000670  130ec905  setlt.u r28, r18, r28
000674  3b600e00  bneq r28, zero, 24
000678  1bce0001  srli r28, r1, 16
00067c  1b0e1e00  andi r28, r28, 1
000680  8b90c011  add.s r1, r1, r28
000684  8b900011  add.s r1, r1, r16
000688  5b010000  j 8
00068c  97903001  or r1, r1, r19
000690  170e1601  and r28, r12, r17
000694  130ec905  setlt.u r28, r18, r28
000698  3b600e00  bneq r28, zero, 24
00069c  1b4e0601  srli r28, r12, 16
0006a0  1b0e1e00  andi r28, r28, 1
0006a4  0b16c611  add.s r12, r12, r28
0006a8  0b160611  add.s r12, r12, r16
0006ac  5b010000  j 8
0006b0  17163601  or r12, r12, r19
0006b4  170e1401  and r28, r8, r17
0006b8  130ec905  setlt.u r28, r18, r28
0006bc  3b600e00  bneq r28, zero, 24
0006c0  1b4e0401  srli r28, r8, 16
0006c4  1b0e1e00  andi r28, r28, 1
0006c8  0b14c411  add.s r8, r8, r28
0006cc  0b140411  add.s r8, r8, r16
0006d0  5b010000  j 8
0006d4  17143401  or r8, r8, r19
0006d8  178e1301  and r28, r7, r17
0006dc  130ec905  setlt.u r28, r18, r28
0006e0  3b600e00  bneq r28, zero, 24
0006e4  1bce0301  srli r28, r7, 16
0006e8  1b0e1e00  andi r28, r28, 1
0006ec  8b93c311  add.s r7, r7, r28
0006f0  8b930311  add.s r7, r7, r16
0006f4  5b010000  j 8
0006f8  97933301  or r7, r7, r19
0006fc  170e1301  and r28, r6, r17
000700  130ec905  setlt.u r28, r18, r28
000704  3b600e00  bneq r28, zero, 24
000708  1b4e0301  srli r28, r6, 16
00070c  1b0e1e00  andi r28, r28, 1
000710  0b13c311  add.s r6, r6, r28
000714  0b130311  add.s r6, r6, r16
000718  5b010000  j 8
00071c  17133301  or r6, r6, r19
000720  178e1d01  and r28, r27, r17
000724  130ec905  setlt.u r28, r18, r28
000728  3b600e00  bneq r28, zero, 24
00072c  1bce0d01  srli r28, r27, 16
000730  1b0e1e00  andi r28, r28, 1
000734  8b9dcd11  add.s r27, r27, r28
000738  0b9e0d11  add.s r28, r27, r16
00073c  5b010000  j 8
000740  179e3d01  or r28, r27, r19
000744  970d1d01  and r27, r26, r17
000748  930db905  setlt.u r27, r18, r27
00074c  3be00d00  bneq r27, zero, 24
000750  9b4d0d01  srli r27, r26, 16
000754  9b8d1d00  andi r27, r27, 1
000758  0b1dbd11  add.s r26, r26, r27
00075c  8b1d0d11  add.s r27, r26, r16
000760  5b010000  j 8
000764  971d3d01  or r27, r26, r19
000768  178d1b01  and r26, r23, r17
00076c  130da905  setlt.u r26, r18, r26
000770  3b600d00  bneq r26, zero, 24
000774  1bcd0b01  srli r26, r23, 16
000778  1b0d1d00  andi r26, r26, 1
00077c  8b9bab11  add.s r23, r23, r26
000780  0b9d0b11  add.s r26, r23, r16
000784  5b010000  j 8
000788  179d3b01  or r26, r23, r19
00078c  978b4201  and r23, r5, r20
000790  9bc27201  srli r5, r5, 23
000794  9bb19b00  slli r3, r23, 9
000798  13e70b04  setlt.f r14, r23, zero
00079c  9b82f20f  andi r5, r5, 255
0007a0  93810100  seteq r3, r3, zero
0007a4  9bf2f20f  setlti r5, r5, 255
0007a8  97913200  or r3, r5, r3
0007ac  9f020000  addli r5, zero, 0
0007b0  97013700  and r3, r14, r3
0007b4  3ba00100  bneq r3, zero, 8
0007b8  9f820b00  addli r5, r23, 0
0007bc  970b4101  and r23, r2, r20
0007c0  1b417101  srli r2, r2, 23
0007c4  9bb19b00  slli r3, r23, 9
0007c8  13e70b04  setlt.f r14, r23, zero
0007cc  1b01f10f  andi r2, r2, 255
0007d0  93810100  seteq r3, r3, zero
0007d4  1b71f10f  setlti r2, r2, 255
0007d8  17113100  or r2, r2, r3
0007dc  97012700  and r3, r14, r2
0007e0  1f010000  addli r2, zero, 0
0007e4  3ba00100  bneq r3, zero, 8
0007e8  1f810b00  addli r2, r23, 0
0007ec  970b4b01  and r23, r22, r20
0007f0  1b477b01  srli r14, r22, 23
0007f4  9bb19b00  slli r3, r23, 9
0007f8  13eb0b04  setlt.f r22, r23, zero
0007fc  1b07f70f  andi r14, r14, 255
000800  93810100  seteq r3, r3, zero
000804  1b77f70f  setlti r14, r14, 255
000808  97113700  or r3, r14, r3
00080c  97013b00  and r3, r22, r3
000810  1f0b0000  addli r22, zero, 0
000814  3ba00100  bneq r3, zero, 8
000818  1f8b0b00  addli r22, r23, 0
00081c  978b4701  and r23, r15, r20
000820  1bc77701  srli r14, r15, 23
000824  9bb19b00  slli r3, r23, 9
000828  93e70b04  setlt.f r15, r23, zero
00082c  1b07f70f  andi r14, r14, 255
000830  93810100  seteq r3, r3, zero
000834  1b77f70f  setlti r14, r14, 255
000838  97113700  or r3, r14, r3
00083c  97813700  and r3, r15, r3
000840  9f070000  addli r15, zero, 0
000844  3ba00100  bneq r3, zero, 8
000848  9f870b00  addli r15, r23, 0
00084c  970b4201  and r23, r4, r20
000850  1b427201  srli r4, r4, 23
000854  9bb19b00  slli r3, r23, 9
000858  13e70b04  setlt.f r14, r23, zero
00085c  1b02f20f  andi r4, r4, 255
000860  93810100  seteq r3, r3, zero
000864  1b72f20f  setlti r4, r4, 255
000868  97113200  or r3, r4, r3
00086c  1f020000  addli r4, zero, 0
000870  97013700  and r3, r14, r3
000874  3ba00100  bneq r3, zero, 8
000878  1f820b00  addli r4, r23, 0
00087c  970b4501  and r23, r10, r20
000880  1b457501  srli r10, r10, 23
000884  9bb19b00  slli r3, r23, 9
000888  13e70b04  setlt.f r14, r23, zero
00088c  1b05f50f  andi r10, r10, 255
000890  93810100  seteq r3, r3, zero
000894  1b75f50f  setlti r10, r10, 255
000898  97113500  or r3, r10, r3
00089c  1f050000  addli r10, zero, 0
0008a0  97013700  and r3, r14, r3
0008a4  3ba00100  bneq r3, zero, 8
0008a8  1f850b00  addli r10, r23, 0
0008ac  978b4401  and r23, r9, r20
0008b0  9bc47401  srli r9, r9, 23
0008b4  9bb19b00  slli r3, r23, 9
0008b8  13e70b04  setlt.f r14, r23, zero
0008bc  9b84f40f  andi r9, r9, 255
0008c0  93810100  seteq r3, r3, zero
0008c4  9bf4f40f  setlti r9, r9, 255
0008c8  97913400  or r3, r9, r3
0008cc  9f040000  addli r9, zero, 0
0008d0  97013700  and r3, r14, r3
0008d4  3ba00100  bneq r3, zero, 8
0008d8  9f840b00  addli r9, r23, 0
0008dc  978b4601  and r23, r13, r20
0008e0  9bc67601  srli r13, r13, 23
0008e4  9bb19b00  slli r3, r23, 9
0008e8  13e70b04  setlt.f r14, r23, zero
0008ec  9b86f60f  andi r13, r13, 255
0008f0  93810100  seteq r3, r3, zero
0008f4  9bf6f60f  setlti r13, r13, 255
0008f8  97913600  or r3, r13, r3
0008fc  9f060000  addli r13, zero, 0
000900  97013700  and r3, r14, r3
000904  3ba00100  bneq r3, zero, 8
000908  9f860b00  addli r13, r23, 0
00090c  978b4001  and r23, r1, r20
000910  9bc07001  srli r1, r1, 23
000914  9bb19b00  slli r3, r23, 9
000918  13e70b04  setlt.f r14, r23, zero
00091c  9b80f00f  andi r1, r1, 255
000920  93810100  seteq r3, r3, zero
000924  9bf0f00f  setlti r1, r1, 255
000928  97903000  or r1, r1, r3
00092c  97011700  and r3, r14, r1
000930  9f000000  addli r1, zero, 0
000934  3ba00100  bneq r3, zero, 8
000938  9f800b00  addli r1, r23, 0
00093c  970b4601  and r23, r12, r20
000940  1b467601  srli r12, r12, 23
000944  9bb19b00  slli r3, r23, 9
000948  13e70b04  setlt.f r14, r23, zero
00094c  1b06f60f  andi r12, r12, 255
000950  93810100  seteq r3, r3, zero
000954  1b76f60f  setlti r12, r12, 255
000958  97113600  or r3, r12, r3
00095c  1f060000  addli r12, zero, 0
000960  97013700  and r3, r14, r3
000964  3ba00100  bneq r3, zero, 8
000968  1f860b00  addli r12, r23, 0
00096c  970b4401  and r23, r8, r20
000970  1b447401  srli r8, r8, 23
000974  9bb19b00  slli r3, r23, 9
000978  13e70b04  setlt.f r14, r23, zero
00097c  1b04f40f  andi r8, r8, 255
000980  93810100  seteq r3, r3, zero
000984  1b74f40f  setlti r8, r8, 255
000988  97113400  or r3, r8, r3
00098c  1f040000  addli r8, zero, 0
000990  97013700  and r3, r14, r3
000994  3ba00100  bneq r3, zero, 8
000998  1f840b00  addli r8, r23, 0
00099c  978b4301  and r23, r7, r20
0009a0  9bc37301  srli r7, r7, 23
0009a4  9bb19b00  slli r3, r23, 9
0009a8  13e70b04  setlt.f r14, r23, zero
0009ac  9b83f30f  andi r7, r7, 255
0009b0  93810100  seteq r3, r3, zero
0009b4  9bf3f30f  setlti r7, r7, 255
0009b8  97913300  or r3, r7, r3
0009bc  9f030000  addli r7, zero, 0
0009c0  97013700  and r3, r14, r3
0009c4  3ba00100  bneq r3, zero, 8
0009c8  9f830b00  addli r7, r23, 0
0009cc  970b4301  and r23, r6, r20
0009d0  1b437301  srli r6, r6, 23
0009d4  9bb19b00  slli r3, r23, 9
0009d8  13e70b04  setlt.f r14, r23, zero
0009dc  1b03f30f  andi r6, r6, 255
0009e0  93810100  seteq r3, r3, zero
0009e4  1b73f30f  setlti r6, r6, 255
0009e8  97113300  or r3, r6, r3
0009ec  1f030000  addli r6, zero, 0
0009f0  97013700  and r3, r14, r3
0009f4  3ba00100  bneq r3, zero, 8
0009f8  1f830b00  addli r6, r23, 0
0009fc  970b4e01  and r23, r28, r20
000a00  1b477e01  srli r14, r28, 23
000a04  9bb19b00  slli r3, r23, 9
000a08  13ee0b04  setlt.f r28, r23, zero
000a0c  1b07f70f  andi r14, r14, 255
000a10  93810100  seteq r3, r3, zero
000a14  1b77f70f  setlti r14, r14, 255
000a18  97113700  or r3, r14, r3
000a1c  97013e00  and r3, r28, r3
000a20  1f0e0000  addli r28, zero, 0
000a24  3ba00100  bneq r3, zero, 8
000a28  1f8e0b00  addli r28, r23, 0
000a2c  978b4d01  and r23, r27, r20
000a30  1bc77d01  srli r14, r27, 23
000a34  9bb19b00  slli r3, r23, 9
000a38  93ed0b04  setlt.f r27, r23, zero
000a3c  1b07f70f  andi r14, r14, 255
000a40  93810100  seteq r3, r3, zero
000a44  1b77f70f  setlti r14, r14, 255
000a48  97113700  or r3, r14, r3
000a4c  97813d00  and r3, r27, r3
000a50  9f0d0000  addli r27, zero, 0
000a54  3ba00100  bneq r3, zero, 8
000a58  9f8d0b00  addli r27, r23, 0
000a5c  970b4d01  and r23, r26, r20
000a60  1b477d01  srli r14, r26, 23
000a64  9bb19b00  slli r3, r23, 9
000a68  13ed0b04  setlt.f r26, r23, zero
000a6c  1b07f70f  andi r14, r14, 255
000a70  93810100  seteq r3, r3, zero
000a74  1b77f70f  setlti r14, r14, 255
000a78  97113700  or r3, r14, r3
000a7c  97013d00  and r3, r26, r3
000a80  1f0d0000  addli r26, zero, 0
000a84  bbed01fa  bneq r3, zero, -2184
000a88  1f8d0b00  addli r26, r23, 0
000a8c  5beefeff  j -2192
000a90  9f0e8ffb  addli sp, r30, -576
000a94  9f8e8e04  addli sp, sp, 576
000a98  00a00300  mfence { lm, sm, gm }
000a9c  00100000  exit
000aa0  00100000  exit
000aa4  00100000  exit
000aa8  00100000  exit
000aac  00100000  exit
000ab0  00100000  exit
000ab4  00100000  exit
000ab8  00100000  exit
000abc  00100000  exit
000ac0  00100000  exit
000ac4  00100000  exit
000ac8  00100000  exit
000acc  00100000  exit
000ad0  00100000  exit
000ad4  00100000  exit
000ad8  00100000  exit
000adc  00100000  exit
000ae0  00100000  exit
000ae4  00100000  exit
000ae8  00100000  exit
000aec  00100000  exit
000af0  00100000  exit
000af4  00100000  exit
000af8  00100000  exit
000afc  00100000  exit
000b00  00100000  exit
000b04  00100000  exit
000b08  00100000  exit
000b0c  00100000  exit
000b10  00100000  exit
000b14  00100000  exit
000b18  00100000  exit
000b1c  00100000  exit
000b20  00100000  exit
000b24  00100000  exit
000b28  00100000  exit
000b2c  00100000  exit
000b30  00100000  exit
000b34  00100000  exit
000b38  00100000  exit
000b3c  00100000  exit
000b40  00100000  exit
000b44  00100000  exit
000b48  00100000  exit
000b4c  00100000  exit
000b50  00100000  exit
000b54  00100000  exit
000b58  00100000  exit
000b5c  00100000  exit
000b60  00100000  exit
000b64  00100000  exit
000b68  00100000  exit
000b6c  00100000  exit
000b70  00100000  exit
000b74  00100000  exit
000b78  00100000  exit
000b7c  00100000  exit
000b80  00100000  exit
000b84  00100000  exit
000b88  00100000  exit
000b8c  00100000  exit
000b90  00100000  exit
000b94  00100000  exit
000b98  00100000  exit
000b9c  00100000  exit
000ba0  00100000  exit
000ba4  00100000  exit
000ba8  00100000  exit
000bac  00100000  exit
000bb0  00100000  exit
000bb4  00100000  exit
000bb8  00100000  exit
000bbc  00100000  exit
000bc0  00100000  exit
000bc4  00100000  exit
000bc8  00100000  exit
000bcc  00100000  exit
000bd0  00100000  exit
000bd4  00100000  exit
000bd8  00100000  exit
000bdc  00100000  exit
000be0  00100000  exit
000be4  00100000  exit
000be8  00100000  exit
000bec  00100000  exit
000bf0  00100000  exit
000bf4  00100000  exit
000bf8  00100000  exit
000bfc  00100000  exit
000c00  00100000  exit
000c04  00100000  exit
000c08  00100000  exit
000c0c  00100000  exit
000c10  00100000  exit
000c14  00100000  exit
000c18  00100000  exit
000c1c  00100000  exit
000c20  00100000  exit
000c24  00100000  exit
000c28  00100000  exit
000c2c  00100000  exit
000c30  00100000  exit
000c34  00100000  exit
000c38  00100000  exit
000c3c  00100000  exit
000c40  00100000  exit
000c44  00100000  exit
000c48  00100000  exit
000c4c  00100000  exit
000c50  00100000  exit
000c54  00100000  exit
000c58  00100000  exit
000c5c  00100000  exit
000c60  00100000  exit
000c64  00100000  exit
000c68  00100000  exit
000c6c  00100000  exit
000c70  00100000  exit
000c74  00100000  exit
000c78  00100000  exit
000c7c  00100000  exit
000c80  00100000  exit
000c84  00100000  exit
000c88  00100000  exit
000c8c  00100000  exit
000c90  00100000  exit
000c94  00100000  exit
000c98  00100000  exit
000c9c  00100000  exit
000ca0  00100000  exit
000ca4  00100000  exit
000ca8  00100000  exit
000cac  00100000  exit
000cb0  00100000  exit
000cb4  00100000  exit
000cb8  00100000  exit
000cbc  00100000  exit
000cc0  00100000  exit
000cc4  00100000  exit
000cc8  00100000  exit
000ccc  00100000  exit
000cd0  00100000  exit
000cd4  00100000  exit
000cd8  00100000  exit
000cdc  00100000  exit
