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
000078  9f099000  addli r19, zero, 72
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
0000ac  d71c0000  jal 228
0000b0  fe8007e0  vmmov mr1, r15
0000b4  fe900720  vmmovh mr1, r15
0000b8  1f8a0eff  addli r20, sp, -128
0000bc  4a100002  vloads_mask16.mz vr0{mr1}, 0(zero)
0000c0  ca108002  vloads_mask16.mz vr1{mr1}, 64(zero)
0000c4  46000a02  vstore.mz vr0{mr1}, 0(r20)
0000c8  46041a02  vstore.mz vr1{mr1}, 64(r20)
0000cc  00a00100  mfence { lm, sm }
0000d0  00d00100  sync_group
0000d4  97a01000  xor r1, r1, r1
0000d8  1f8f0e00  addli r30, sp, 0
0000dc  d71c0000  jal 228
0000e0  00400000  trap
0000e4  9f8edefb  addli sp, sp, -536
0000e8  2b020000  lui r4, 0
0000ec  80300002  core_id r1
0000f0  1f8f3e03  addli r30, sp, 408
0000f4  1bb12000  slli r2, r1, 2
0000f8  1f020200  addli r4, r4, 0
0000fc  63038f00  loadli.w r6,  64(r30)
000100  e3417f00  loadli.w r3,  60(r30)
000104  e3428f00  loadli.w r5,  68(r30)
000108  8b134110  add.s r7, r2, r4
00010c  2bf20000  lui r4, 15
000110  8b113320  mul.s r3, r6, r3
000114  00530002  load_param_i r6, 0
000118  1b14f2ff  ori r8, r4, 4095
00011c  73e80340  stores.w zero, 1040(r7)
000120  00a00300  mfence { lm, sm, gm }
000124  8b915120  mul.s r3, r3, r5
000128  80210404  csr_set csr3, r8
00012c  00d00100  sync_group
000130  e7087ffc  storeli.w r7, -376(r30)
000134  73e00300  stores.w zero, 0(r7)
000138  00a00300  mfence { lm, sm, gm }
00013c  80210404  csr_set csr3, r8
000140  00d00100  sync_group
000144  67483ffc  storeli.w r3, -380(r30)
000148  4bf26106  ble.s r3, r6, 3228
00014c  e3011ffd  loadli.w r3,  -376(r30)
000150  e3446f00  loadli.w r9,  52(r30)
000154  9b82f003  andi r5, r1, 63
000158  1f028000  addli r4, zero, 64
00015c  1bb74000  slli r14, r1, 4
000160  1f190000  addli r18, zero, 1
000164  1f060ffe  addli r12, r30, -256
000168  9f064000  addli r13, zero, 32
00016c  9f092000  addli r19, zero, 16
000170  1f0a8ffd  addli r20, r30, -320
000174  9f0a7000  addli r21, zero, 56
000178  1f0b0fff  addli r22, r30, -128
00017c  9f0b8fff  addli r23, r30, -64
000180  e7488ffc  storeli.w r8, -372(r30)
000184  e7095ffc  storeli.w r5, -360(r30)
000188  93820200  seteq r5, r5, zero
00018c  0b924038  mod.s r4, r1, r4
000190  9bf00004  setlti r1, r1, 64
000194  e749effc  storeli.w r14, -356(r30)
000198  9f812108  addli r3, r3, 1040
00019c  67083ffc  storeli.w r3, -384(r30)
0001a0  80d10002  load_param_i r3, 1
0001a4  e7473ffc  storeli.w r3, -388(r30)
0001a8  abf1ffff  lui r3, 1048575
0001ac  9b9101f0  ori r3, r3, 3840
0001b0  97805000  and r1, r1, r5
0001b4  17013100  and r2, r2, r3
0001b8  b3810408  fix2float.rn r3, r9
0001bc  e7071ffc  storeli.w r1, -392(r30)
0001c0  67493ffc  storeli.w r3, -364(r30)
0001c4  ab010000  lui r3, 0
0001c8  9f810100  addli r3, r3, 0
0001cc  0b113110  add.s r2, r2, r3
0001d0  9b314200  slli r3, r4, 4
0001d4  67072ffc  storeli.w r2, -400(r30)
0001d8  1f012108  addli r2, r2, 1040
0001dc  67473ffc  storeli.w r3, -396(r30)
0001e0  e7462ffc  storeli.w r2, -404(r30)
0001e4  5b050000  j 40
0001e8  63032ffd  loadli.w r6,  -368(r30)
0001ec  e340fffc  loadli.w r1,  -388(r30)
0001f0  63441ffd  loadli.w r8,  -372(r30)
0001f4  1f0a8ffd  addli r20, r30, -320
0001f8  9f0a7000  addli r21, zero, 56
0001fc  0b131310  add.s r6, r6, r1
000200  e3400ffd  loadli.w r1,  -380(r30)
000204  3f201300  blt.s r6, r1, 8
000208  db7b0100  j 3036
00020c  e3408f00  loadli.w r1,  68(r30)
000210  63018f00  loadli.w r2,  64(r30)
000214  67096ffc  storeli.w r6, -368(r30)
000218  670c0ffc  storeli.w zero, -320(r30)
00021c  674c0ffc  storeli.w zero, -316(r30)
000220  e70c0ffc  storeli.w zero, -312(r30)
000224  e74c0ffc  storeli.w zero, -308(r30)
000228  670d0ffc  storeli.w zero, -304(r30)
00022c  674d0ffc  storeli.w zero, -300(r30)
000230  e70d0ffc  storeli.w zero, -296(r30)
000234  e74d0ffc  storeli.w zero, -292(r30)
000238  670e0ffc  storeli.w zero, -288(r30)
00023c  674e0ffc  storeli.w zero, -284(r30)
000240  e70e0ffc  storeli.w zero, -280(r30)
000244  e74e0ffc  storeli.w zero, -276(r30)
000248  670f0ffc  storeli.w zero, -272(r30)
00024c  674f0ffc  storeli.w zero, -268(r30)
000250  e70f0ffc  storeli.w zero, -264(r30)
000254  e74f0ffc  storeli.w zero, -260(r30)
000258  8b101330  div.s r1, r6, r1
00025c  0b9e2030  div.s r28, r1, r2
000260  e3006f00  loadli.w r1,  48(r30)
000264  8b101e20  mul.s r1, r28, r1
000268  b3910028  sext_int2long r[4:5], r1
00026c  eb500f00  load.d r[2:3], 0(r30)
000270  97b12103  sll.d r[4:5], r[4:5], r18
000274  8ba03010  add.ul r[2:3], r[2:3], r[4:5]
000278  733c1fea  store.d r[2:3], -328(r30)
00027c  00a00000  mfence { lm }
000280  3fb32401  blt.s r9, r18, 204
000284  9f200600  addli r1, r12, 2
000288  9f020000  addli r5, zero, 0
00028c  1f018000  addli r2, zero, 64
000290  5b020000  j 16
000294  9f820208  addli r5, r5, 1024
000298  3fa09200  blt.s r5, r9, 8
00029c  db140000  j 164
0002a0  8b93e210  add.s r7, r5, r14
0002a4  cbcf74fe  ble.s r9, r7, -16
0002a8  0b957418  sub.s r10, r9, r7
0002ac  1f030000  addli r6, zero, 0
0002b0  8b156610  add.s r11, r12, r6
0002b4  1f430300  addli r6, r6, 4
0002b8  73900500  store.h zero, 0(r11)
0002bc  73910500  store.h zero, 2(r11)
0002c0  00a00000  mfence { lm }
0002c4  bb3fd3fe  bneq r6, r13, -20
0002c8  0b150548  max.s r10, r10, zero
0002cc  b3970328  sext_int2long r[16:17], r7
0002d0  1f030000  addli r6, zero, 0
0002d4  8b133541  min.s r7, r10, r19
0002d8  17b52703  sll.d r[11:12], r[16:17], r18
0002dc  6b588feb  load.d r[17:18], -328(r30)
0002e0  ab0700f0  lui r15, 983040
0002e4  9bb31300  slli r7, r7, 1
0002e8  0b25a810  add.ul r[11:12], r[17:18], r[11:12]
0002ec  9793f300  or r7, r7, r15
0002f0  ff23c500  l_gm2lm r7, r12, 0(r[11:12])
0002f4  9f830000  addli r7, r1, 0
0002f8  00a00000  mfence { lm }
0002fc  0b156a10  add.s r10, r20, r6
000300  ebb5e3ff  load.hu r11, -2(r7)
000304  6bb80300  load.hu r16, 0(r7)
000308  1f031300  addli r6, r6, 8
00030c  9fc30300  addli r7, r7, 4
000310  e3070500  loadli.w r15,  0(r10)
000314  e3480500  loadli.w r17,  4(r10)
000318  00a00000  mfence { lm }
00031c  b3950520  hfloat2float.rn r11, r11
000320  33180820  hfloat2float.rn r16, r16
000324  8be5b710  add.f.rn r11, r15, r11
000328  8be70811  add.f.rn r15, r17, r16
00032c  6700b500  storeli.w r11, 0(r10)
000330  6740f500  storeli.w r15, 4(r10)
000334  00a00000  mfence { lm }
000338  3b1f23fe  bneq r6, r2, -60
00033c  5bebffff  j -168
000340  e3028ffd  loadli.w r5,  -320(r30)
000344  e3408ffd  loadli.w r1,  -316(r30)
000348  db010000  j 12
00034c  9f000000  addli r1, zero, 0
000350  9f020000  addli r5, zero, 0
000354  6b538f00  load.d r[7:8], 8(r30)
000358  0b213310  add.ul r[3:4], r[7:8], r[4:5]
00035c  73302fea  store.d r[3:4], -352(r30)
000360  9f010000  addli r3, zero, 0
000364  0b123a10  add.s r4, r20, r3
000368  9f811100  addli r3, r3, 8
00036c  63031200  loadli.w r6,  8(r4)
000370  63421200  loadli.w r4,  12(r4)
000374  8be26210  add.f.rn r5, r5, r6
000378  8be04010  add.f.rn r1, r1, r4
00037c  bbaf51ff  bneq r3, r21, -24
000380  8be01210  add.f.rn r1, r5, r1
000384  63011ffd  loadli.w r2,  -376(r30)
000388  73601100  stores.w r1, 0(r2)
00038c  00a00300  mfence { lm, sm, gm }
000390  80210404  csr_set csr3, r8
000394  00d00100  sync_group
000398  e3003ffd  loadli.w r1,  -360(r30)
00039c  3ba80000  bneq r1, zero, 520
0003a0  6301effc  loadli.w r2,  -400(r30)
0003a4  ef400100  loads.w r1, 0(r2)
0003a8  6f424100  loads.w r4, 4(r2)
0003ac  ef418100  loads.w r3, 8(r2)
0003b0  8be04010  add.f.rn r1, r1, r4
0003b4  6f42c100  loads.w r4, 12(r2)
0003b8  8be03010  add.f.rn r1, r1, r3
0003bc  ef410101  loads.w r3, 16(r2)
0003c0  8be04010  add.f.rn r1, r1, r4
0003c4  6f424101  loads.w r4, 20(r2)
0003c8  8be03010  add.f.rn r1, r1, r3
0003cc  ef418101  loads.w r3, 24(r2)
0003d0  8be04010  add.f.rn r1, r1, r4
0003d4  6f42c101  loads.w r4, 28(r2)
0003d8  8be03010  add.f.rn r1, r1, r3
0003dc  ef410102  loads.w r3, 32(r2)
0003e0  8be04010  add.f.rn r1, r1, r4
0003e4  6f424102  loads.w r4, 36(r2)
0003e8  8be03010  add.f.rn r1, r1, r3
0003ec  ef418102  loads.w r3, 40(r2)
0003f0  8be04010  add.f.rn r1, r1, r4
0003f4  6f42c102  loads.w r4, 44(r2)
0003f8  8be03010  add.f.rn r1, r1, r3
0003fc  ef410103  loads.w r3, 48(r2)
000400  8be04010  add.f.rn r1, r1, r4
000404  6f424103  loads.w r4, 52(r2)
000408  8be03010  add.f.rn r1, r1, r3
00040c  ef418103  loads.w r3, 56(r2)
000410  8be04010  add.f.rn r1, r1, r4
000414  6f42c103  loads.w r4, 60(r2)
000418  8be03010  add.f.rn r1, r1, r3
00041c  ef410104  loads.w r3, 64(r2)
000420  8be04010  add.f.rn r1, r1, r4
000424  6f424104  loads.w r4, 68(r2)
000428  8be03010  add.f.rn r1, r1, r3
00042c  ef418104  loads.w r3, 72(r2)
000430  8be04010  add.f.rn r1, r1, r4
000434  6f42c104  loads.w r4, 76(r2)
000438  8be03010  add.f.rn r1, r1, r3
00043c  ef410105  loads.w r3, 80(r2)
000440  8be04010  add.f.rn r1, r1, r4
000444  6f424105  loads.w r4, 84(r2)
000448  8be03010  add.f.rn r1, r1, r3
00044c  ef418105  loads.w r3, 88(r2)
000450  8be04010  add.f.rn r1, r1, r4
000454  6f42c105  loads.w r4, 92(r2)
000458  8be03010  add.f.rn r1, r1, r3
00045c  ef410106  loads.w r3, 96(r2)
000460  8be04010  add.f.rn r1, r1, r4
000464  6f424106  loads.w r4, 100(r2)
000468  8be03010  add.f.rn r1, r1, r3
00046c  ef418106  loads.w r3, 104(r2)
000470  8be04010  add.f.rn r1, r1, r4
000474  6f42c106  loads.w r4, 108(r2)
000478  8be03010  add.f.rn r1, r1, r3
00047c  ef410107  loads.w r3, 112(r2)
000480  8be04010  add.f.rn r1, r1, r4
000484  6f424107  loads.w r4, 116(r2)
000488  8be03010  add.f.rn r1, r1, r3
00048c  ef418107  loads.w r3, 120(r2)
000490  8be04010  add.f.rn r1, r1, r4
000494  6f42c107  loads.w r4, 124(r2)
000498  8be03010  add.f.rn r1, r1, r3
00049c  ef410108  loads.w r3, 128(r2)
0004a0  8be04010  add.f.rn r1, r1, r4
0004a4  6f424108  loads.w r4, 132(r2)
0004a8  8be03010  add.f.rn r1, r1, r3
0004ac  ef418108  loads.w r3, 136(r2)
0004b0  8be04010  add.f.rn r1, r1, r4
0004b4  6f42c108  loads.w r4, 140(r2)
0004b8  8be03010  add.f.rn r1, r1, r3
0004bc  ef410109  loads.w r3, 144(r2)
0004c0  8be04010  add.f.rn r1, r1, r4
0004c4  6f424109  loads.w r4, 148(r2)
0004c8  8be03010  add.f.rn r1, r1, r3
0004cc  ef418109  loads.w r3, 152(r2)
0004d0  8be04010  add.f.rn r1, r1, r4
0004d4  6f42c109  loads.w r4, 156(r2)
0004d8  8be03010  add.f.rn r1, r1, r3
0004dc  ef41010a  loads.w r3, 160(r2)
0004e0  8be04010  add.f.rn r1, r1, r4
0004e4  6f42410a  loads.w r4, 164(r2)
0004e8  8be03010  add.f.rn r1, r1, r3
0004ec  ef41810a  loads.w r3, 168(r2)
0004f0  8be04010  add.f.rn r1, r1, r4
0004f4  6f42c10a  loads.w r4, 172(r2)
0004f8  8be03010  add.f.rn r1, r1, r3
0004fc  ef41010b  loads.w r3, 176(r2)
000500  8be04010  add.f.rn r1, r1, r4
000504  6f42410b  loads.w r4, 180(r2)
000508  8be03010  add.f.rn r1, r1, r3
00050c  ef41810b  loads.w r3, 184(r2)
000510  8be04010  add.f.rn r1, r1, r4
000514  6f42c10b  loads.w r4, 188(r2)
000518  8be03010  add.f.rn r1, r1, r3
00051c  ef41010c  loads.w r3, 192(r2)
000520  8be04010  add.f.rn r1, r1, r4
000524  6f42410c  loads.w r4, 196(r2)
000528  8be03010  add.f.rn r1, r1, r3
00052c  ef41810c  loads.w r3, 200(r2)
000530  8be04010  add.f.rn r1, r1, r4
000534  6f42c10c  loads.w r4, 204(r2)
000538  8be03010  add.f.rn r1, r1, r3
00053c  ef41010d  loads.w r3, 208(r2)
000540  8be04010  add.f.rn r1, r1, r4
000544  6f42410d  loads.w r4, 212(r2)
000548  8be03010  add.f.rn r1, r1, r3
00054c  ef41810d  loads.w r3, 216(r2)
000550  8be04010  add.f.rn r1, r1, r4
000554  6f42c10d  loads.w r4, 220(r2)
000558  8be03010  add.f.rn r1, r1, r3
00055c  ef41010e  loads.w r3, 224(r2)
000560  8be04010  add.f.rn r1, r1, r4
000564  6f42410e  loads.w r4, 228(r2)
000568  8be03010  add.f.rn r1, r1, r3
00056c  ef41810e  loads.w r3, 232(r2)
000570  8be04010  add.f.rn r1, r1, r4
000574  6f42c10e  loads.w r4, 236(r2)
000578  8be03010  add.f.rn r1, r1, r3
00057c  ef41010f  loads.w r3, 240(r2)
000580  8be04010  add.f.rn r1, r1, r4
000584  6f42410f  loads.w r4, 244(r2)
000588  8be03010  add.f.rn r1, r1, r3
00058c  ef41810f  loads.w r3, 248(r2)
000590  8be04010  add.f.rn r1, r1, r4
000594  6f42c10f  loads.w r4, 252(r2)
000598  8be03010  add.f.rn r1, r1, r3
00059c  8be04010  add.f.rn r1, r1, r4
0005a0  73601100  stores.w r1, 0(r2)
0005a4  ab000000  lui r1, 0
0005a8  00a00300  mfence { lm, sm, gm }
0005ac  80210404  csr_set csr3, r8
0005b0  00d00100  sync_group
0005b4  670c0ffc  storeli.w zero, -320(r30)
0005b8  674c0ffc  storeli.w zero, -316(r30)
0005bc  e70c0ffc  storeli.w zero, -312(r30)
0005c0  e74c0ffc  storeli.w zero, -308(r30)
0005c4  670d0ffc  storeli.w zero, -304(r30)
0005c8  674d0ffc  storeli.w zero, -300(r30)
0005cc  e70d0ffc  storeli.w zero, -296(r30)
0005d0  e74d0ffc  storeli.w zero, -292(r30)
0005d4  670e0ffc  storeli.w zero, -288(r30)
0005d8  674e0ffc  storeli.w zero, -284(r30)
0005dc  e70e0ffc  storeli.w zero, -280(r30)
0005e0  e74e0ffc  storeli.w zero, -276(r30)
0005e4  670f0ffc  storeli.w zero, -272(r30)
0005e8  674f0ffc  storeli.w zero, -268(r30)
0005ec  e70f0ffc  storeli.w zero, -264(r30)
0005f0  e74f0ffc  storeli.w zero, -260(r30)
0005f4  9f800000  addli r1, r1, 0
0005f8  1f810000  addli r2, r1, 0
0005fc  ef400100  loads.w r1, 0(r2)
000600  73601110  stores.w r1, 256(r2)
000604  63412ffd  loadli.w r2,  -364(r30)
000608  00a00000  mfence { lm }
00060c  8f832018  div.f.rn r7, r1, r2
000610  3fe42401  blt.s r9, r18, 280
000614  634deffc  loadli.w r26,  -396(r30)
000618  9f070000  addli r15, zero, 0
00061c  1f280600  addli r16, r12, 2
000620  1f4c0a00  addli r24, r20, 4
000624  db020000  j 20
000628  9f870708  addli r15, r15, 1024
00062c  1f0d0d08  addli r26, r26, 1024
000630  3fa09700  blt.s r15, r9, 8
000634  db1b0000  j 220
000638  8b91e710  add.s r3, r15, r14
00063c  cbbf34fe  ble.s r9, r3, -20
000640  0b923418  sub.s r4, r9, r3
000644  9f000000  addli r1, zero, 0
000648  8b121610  add.s r5, r12, r1
00064c  9fc00000  addli r1, r1, 4
000650  73900200  store.h zero, 0(r5)
000654  73910200  store.h zero, 2(r5)
000658  00a00000  mfence { lm }
00065c  bbbfd0fe  bneq r1, r13, -20
000660  0b120248  max.s r4, r4, zero
000664  b3920128  sext_int2long r[6:7], r3
000668  6b558feb  load.d r[11:12], -328(r30)
00066c  9f000000  addli r1, zero, 0
000670  8b113241  min.s r3, r4, r19
000674  17b22203  sll.d r[5:6], r[6:7], r18
000678  2b0300f0  lui r6, 983040
00067c  9bb11100  slli r3, r3, 1
000680  0b224510  add.ul r[5:6], r[11:12], r[5:6]
000684  97916100  or r3, r3, r6
000688  ff21c200  l_gm2lm r3, r12, 0(r[5:6])
00068c  9f010c00  addli r3, r24, 0
000690  1f020800  addli r4, r16, 0
000694  db060000  j 52
000698  1f050000  addli r10, zero, 0
00069c  8be51821  mul.f.rn r11, r17, r17
0006a0  0b65a520  mul.f.rn r10, r10, r10
0006a4  9fa00000  addli r1, r1, 2
0006a8  1f420200  addli r4, r4, 4
0006ac  8be2b210  add.f.rn r5, r5, r11
0006b0  0b63a310  add.f.rn r6, r6, r10
0006b4  e7cf51fe  storeli.w r5, -4(r3)
0006b8  67806100  storeli.w r6, 0(r3)
0006bc  9f811100  addli r3, r3, 8
0006c0  00a00000  mfence { lm }
0006c4  b79d30ff  beq r1, r19, -156
0006c8  e3c2f1ff  loadli.w r5,  -4(r3)
0006cc  63830100  loadli.w r6,  0(r3)
0006d0  00a00000  mfence { lm }
0006d4  0b151d10  add.s r10, r26, r1
0006d8  eb38e2ff  load.hu r17, -2(r4)
0006dc  eb350200  load.hu r11, 0(r4)
0006e0  00a00000  mfence { lm }
0006e4  3f309500  blt.s r10, r9, 12
0006e8  9f080000  addli r17, zero, 0
0006ec  db010000  j 12
0006f0  b3980820  hfloat2float.rn r17, r17
0006f4  8be87818  sub.f.rn r17, r17, r7
0006f8  1f150500  addli r10, r10, 1
0006fc  3f209500  blt.s r10, r9, 8
000700  5bf3ffff  j -104
000704  33950520  hfloat2float.rn r10, r11
000708  0b657518  sub.f.rn r10, r10, r7
00070c  5bf2ffff  j -112
000710  e3018ffd  loadli.w r3,  -320(r30)
000714  e3408ffd  loadli.w r1,  -316(r30)
000718  63441ffd  loadli.w r8,  -372(r30)
00071c  1f0a8ffd  addli r20, r30, -320
000720  9f0a7000  addli r21, zero, 56
000724  db010000  j 12
000728  9f000000  addli r1, zero, 0
00072c  9f010000  addli r3, zero, 0
000730  1f020000  addli r4, zero, 0
000734  8b124a10  add.s r5, r20, r4
000738  1f021200  addli r4, r4, 8
00073c  63831200  loadli.w r6,  8(r5)
000740  e3c21200  loadli.w r5,  12(r5)
000744  8be16110  add.f.rn r3, r3, r6
000748  8be05010  add.f.rn r1, r1, r5
00074c  bb2f52ff  bneq r4, r21, -24
000750  8be01110  add.f.rn r1, r3, r1
000754  63010ffd  loadli.w r2,  -384(r30)
000758  73601100  stores.w r1, 0(r2)
00075c  00a00300  mfence { lm, sm, gm }
000760  80210404  csr_set csr3, r8
000764  00d00100  sync_group
000768  e3003ffd  loadli.w r1,  -360(r30)
00076c  3ba80000  bneq r1, zero, 520
000770  6341dffc  loadli.w r2,  -404(r30)
000774  ef400100  loads.w r1, 0(r2)
000778  6f424100  loads.w r4, 4(r2)
00077c  ef418100  loads.w r3, 8(r2)
000780  8be04010  add.f.rn r1, r1, r4
000784  6f42c100  loads.w r4, 12(r2)
000788  8be03010  add.f.rn r1, r1, r3
00078c  ef410101  loads.w r3, 16(r2)
000790  8be04010  add.f.rn r1, r1, r4
000794  6f424101  loads.w r4, 20(r2)
000798  8be03010  add.f.rn r1, r1, r3
00079c  ef418101  loads.w r3, 24(r2)
0007a0  8be04010  add.f.rn r1, r1, r4
0007a4  6f42c101  loads.w r4, 28(r2)
0007a8  8be03010  add.f.rn r1, r1, r3
0007ac  ef410102  loads.w r3, 32(r2)
0007b0  8be04010  add.f.rn r1, r1, r4
0007b4  6f424102  loads.w r4, 36(r2)
0007b8  8be03010  add.f.rn r1, r1, r3
0007bc  ef418102  loads.w r3, 40(r2)
0007c0  8be04010  add.f.rn r1, r1, r4
0007c4  6f42c102  loads.w r4, 44(r2)
0007c8  8be03010  add.f.rn r1, r1, r3
0007cc  ef410103  loads.w r3, 48(r2)
0007d0  8be04010  add.f.rn r1, r1, r4
0007d4  6f424103  loads.w r4, 52(r2)
0007d8  8be03010  add.f.rn r1, r1, r3
0007dc  ef418103  loads.w r3, 56(r2)
0007e0  8be04010  add.f.rn r1, r1, r4
0007e4  6f42c103  loads.w r4, 60(r2)
0007e8  8be03010  add.f.rn r1, r1, r3
0007ec  ef410104  loads.w r3, 64(r2)
0007f0  8be04010  add.f.rn r1, r1, r4
0007f4  6f424104  loads.w r4, 68(r2)
0007f8  8be03010  add.f.rn r1, r1, r3
0007fc  ef418104  loads.w r3, 72(r2)
000800  8be04010  add.f.rn r1, r1, r4
000804  6f42c104  loads.w r4, 76(r2)
000808  8be03010  add.f.rn r1, r1, r3
00080c  ef410105  loads.w r3, 80(r2)
000810  8be04010  add.f.rn r1, r1, r4
000814  6f424105  loads.w r4, 84(r2)
000818  8be03010  add.f.rn r1, r1, r3
00081c  ef418105  loads.w r3, 88(r2)
000820  8be04010  add.f.rn r1, r1, r4
000824  6f42c105  loads.w r4, 92(r2)
000828  8be03010  add.f.rn r1, r1, r3
00082c  ef410106  loads.w r3, 96(r2)
000830  8be04010  add.f.rn r1, r1, r4
000834  6f424106  loads.w r4, 100(r2)
000838  8be03010  add.f.rn r1, r1, r3
00083c  ef418106  loads.w r3, 104(r2)
000840  8be04010  add.f.rn r1, r1, r4
000844  6f42c106  loads.w r4, 108(r2)
000848  8be03010  add.f.rn r1, r1, r3
00084c  ef410107  loads.w r3, 112(r2)
000850  8be04010  add.f.rn r1, r1, r4
000854  6f424107  loads.w r4, 116(r2)
000858  8be03010  add.f.rn r1, r1, r3
00085c  ef418107  loads.w r3, 120(r2)
000860  8be04010  add.f.rn r1, r1, r4
000864  6f42c107  loads.w r4, 124(r2)
000868  8be03010  add.f.rn r1, r1, r3
00086c  ef410108  loads.w r3, 128(r2)
000870  8be04010  add.f.rn r1, r1, r4
000874  6f424108  loads.w r4, 132(r2)
000878  8be03010  add.f.rn r1, r1, r3
00087c  ef418108  loads.w r3, 136(r2)
000880  8be04010  add.f.rn r1, r1, r4
000884  6f42c108  loads.w r4, 140(r2)
000888  8be03010  add.f.rn r1, r1, r3
00088c  ef410109  loads.w r3, 144(r2)
000890  8be04010  add.f.rn r1, r1, r4
000894  6f424109  loads.w r4, 148(r2)
000898  8be03010  add.f.rn r1, r1, r3
00089c  ef418109  loads.w r3, 152(r2)
0008a0  8be04010  add.f.rn r1, r1, r4
0008a4  6f42c109  loads.w r4, 156(r2)
0008a8  8be03010  add.f.rn r1, r1, r3
0008ac  ef41010a  loads.w r3, 160(r2)
0008b0  8be04010  add.f.rn r1, r1, r4
0008b4  6f42410a  loads.w r4, 164(r2)
0008b8  8be03010  add.f.rn r1, r1, r3
0008bc  ef41810a  loads.w r3, 168(r2)
0008c0  8be04010  add.f.rn r1, r1, r4
0008c4  6f42c10a  loads.w r4, 172(r2)
0008c8  8be03010  add.f.rn r1, r1, r3
0008cc  ef41010b  loads.w r3, 176(r2)
0008d0  8be04010  add.f.rn r1, r1, r4
0008d4  6f42410b  loads.w r4, 180(r2)
0008d8  8be03010  add.f.rn r1, r1, r3
0008dc  ef41810b  loads.w r3, 184(r2)
0008e0  8be04010  add.f.rn r1, r1, r4
0008e4  6f42c10b  loads.w r4, 188(r2)
0008e8  8be03010  add.f.rn r1, r1, r3
0008ec  ef41010c  loads.w r3, 192(r2)
0008f0  8be04010  add.f.rn r1, r1, r4
0008f4  6f42410c  loads.w r4, 196(r2)
0008f8  8be03010  add.f.rn r1, r1, r3
0008fc  ef41810c  loads.w r3, 200(r2)
000900  8be04010  add.f.rn r1, r1, r4
000904  6f42c10c  loads.w r4, 204(r2)
000908  8be03010  add.f.rn r1, r1, r3
00090c  ef41010d  loads.w r3, 208(r2)
000910  8be04010  add.f.rn r1, r1, r4
000914  6f42410d  loads.w r4, 212(r2)
000918  8be03010  add.f.rn r1, r1, r3
00091c  ef41810d  loads.w r3, 216(r2)
000920  8be04010  add.f.rn r1, r1, r4
000924  6f42c10d  loads.w r4, 220(r2)
000928  8be03010  add.f.rn r1, r1, r3
00092c  ef41010e  loads.w r3, 224(r2)
000930  8be04010  add.f.rn r1, r1, r4
000934  6f42410e  loads.w r4, 228(r2)
000938  8be03010  add.f.rn r1, r1, r3
00093c  ef41810e  loads.w r3, 232(r2)
000940  8be04010  add.f.rn r1, r1, r4
000944  6f42c10e  loads.w r4, 236(r2)
000948  8be03010  add.f.rn r1, r1, r3
00094c  ef41010f  loads.w r3, 240(r2)
000950  8be04010  add.f.rn r1, r1, r4
000954  6f42410f  loads.w r4, 244(r2)
000958  8be03010  add.f.rn r1, r1, r3
00095c  ef41810f  loads.w r3, 248(r2)
000960  8be04010  add.f.rn r1, r1, r4
000964  6f42c10f  loads.w r4, 252(r2)
000968  8be03010  add.f.rn r1, r1, r3
00096c  8be04010  add.f.rn r1, r1, r4
000970  73601100  stores.w r1, 0(r2)
000974  ab000000  lui r1, 0
000978  00a00300  mfence { lm, sm, gm }
00097c  80210404  csr_set csr3, r8
000980  00d00100  sync_group
000984  e3412ffd  loadli.w r3,  -364(r30)
000988  63027f00  loadli.w r4,  56(r30)
00098c  9f800000  addli r1, r1, 0
000990  1f810000  addli r2, r1, 0
000994  ef400141  loads.w r1, 1040(r2)
000998  8f813018  div.f.rn r3, r1, r3
00099c  73681150  stores.w r1, 1296(r2)
0009a0  e300fffc  loadli.w r1,  -392(r30)
0009a4  8b613210  add.f.rn r3, r4, r3
0009a8  2b02803f  lui r4, 260096
0009ac  8f810108  sqrt.f.rn r3, r3
0009b0  0f0d3218  div.f.rn r26, r4, r3
0009b4  37e10000  beq r1, zero, 88
0009b8  b3110e28  sext_int2long r[4:5], r28
0009bc  9f200000  addli r1, zero, 2
0009c0  eb520f02  load.d r[6:7], 32(r30)
0009c4  1f450000  addli r10, zero, 4
0009c8  67047ffe  storeli.w r7, -192(r30)
0009cc  1f048ffe  addli r8, r30, -192
0009d0  00a00000  mfence { lm }
0009d4  97b11102  sll.d r[4:5], r[4:5], r1
0009d8  ab0000f0  lui r1, 983040
0009dc  8ba23210  add.ul r[6:7], r[6:7], r[4:5]
0009e0  97101500  or r1, r10, r1
0009e4  ffb08200  s_lm2gm r1, r8, 0(r[6:7])
0009e8  00a00000  mfence { lm }
0009ec  eb508f02  load.d r[2:3], 40(r30)
0009f0  6704afff  storeli.w r26, -192(r30)
0009f4  00a00000  mfence { lm }
0009f8  8ba13010  add.ul r[4:5], r[2:3], r[4:5]
0009fc  ab0000f0  lui r1, 983040
000a00  97101500  or r1, r10, r1
000a04  ffb08100  s_lm2gm r1, r8, 0(r[4:5])
000a08  00a00000  mfence { lm }
000a0c  3fff24fb  blt.s r9, r18, -2084
000a10  1f0e0000  addli r28, zero, 0
000a14  db6d0000  j 876
000a18  6b518feb  load.d r[3:4], -328(r30)
000a1c  ab0000f0  lui r1, 983040
000a20  97101300  or r1, r6, r1
000a24  8b21e110  add.ul r[4:5], r[3:4], r[15:16]
000a28  ffa07101  l_gm2lm r1, r23, 0(r[4:5])
000a2c  00a00000  mfence { lm }
000a30  674b6ffc  storeli.w r6, -332(r30)
000a34  7334efea  store.d r[15:16], -344(r30)
000a38  eb300ffc  load.hu r1, -64(r30)
000a3c  eb326ffc  load.hu r5, -58(r30)
000a40  6b338ffc  load.hu r6, -56(r30)
000a44  eb312ffc  load.hu r3, -62(r30)
000a48  6b324ffc  load.hu r4, -60(r30)
000a4c  6b35affc  load.hu r10, -54(r30)
000a50  eb35cffc  load.hu r11, -52(r30)
000a54  6b3a4ffd  load.hu r20, -44(r30)
000a58  6b3b8ffd  load.hu r22, -40(r30)
000a5c  eb3baffd  load.hu r23, -38(r30)
000a60  6b390ffd  load.hu r18, -48(r30)
000a64  eb3ccffd  load.hu r25, -36(r30)
000a68  eb38effc  load.hu r17, -50(r30)
000a6c  eb392ffd  load.hu r19, -46(r30)
000a70  eb3a6ffd  load.hu r21, -42(r30)
000a74  eb3deffd  load.hu r27, -34(r30)
000a78  b3900020  hfloat2float.rn r1, r1
000a7c  b3920220  hfloat2float.rn r5, r5
000a80  33130320  hfloat2float.rn r6, r6
000a84  b3910120  hfloat2float.rn r3, r3
000a88  33120220  hfloat2float.rn r4, r4
000a8c  b3950520  hfloat2float.rn r11, r11
000a90  331b0b20  hfloat2float.rn r22, r22
000a94  33150520  hfloat2float.rn r10, r10
000a98  331a0a20  hfloat2float.rn r20, r20
000a9c  b39b0b20  hfloat2float.rn r23, r23
000aa0  33190920  hfloat2float.rn r18, r18
000aa4  b39c0c20  hfloat2float.rn r25, r25
000aa8  b3980820  hfloat2float.rn r17, r17
000aac  b39d0d20  hfloat2float.rn r27, r27
000ab0  b3990920  hfloat2float.rn r19, r19
000ab4  b39a0a20  hfloat2float.rn r21, r21
000ab8  8be07018  sub.f.rn r1, r1, r7
000abc  8be27218  sub.f.rn r5, r5, r7
000ac0  0b637318  sub.f.rn r6, r6, r7
000ac4  8be17118  sub.f.rn r3, r3, r7
000ac8  0b627218  sub.f.rn r4, r4, r7
000acc  0b617518  sub.f.rn r2, r10, r7
000ad0  0be77b18  sub.f.rn r14, r23, r7
000ad4  8be57518  sub.f.rn r11, r11, r7
000ad8  0b687a18  sub.f.rn r16, r20, r7
000adc  0b6b7b18  sub.f.rn r22, r22, r7
000ae0  0be47c18  sub.f.rn r8, r25, r7
000ae4  0b697918  sub.f.rn r18, r18, r7
000ae8  8be87818  sub.f.rn r17, r17, r7
000aec  8be77918  sub.f.rn r15, r19, r7
000af0  0bec7a18  sub.f.rn r24, r21, r7
000af4  8bed7d18  sub.f.rn r27, r27, r7
000af8  8b6c1d20  mul.f.rn r25, r26, r1
000afc  0b655d20  mul.f.rn r10, r26, r5
000b00  8b626d20  mul.f.rn r5, r26, r6
000b04  6b330ff0  load.hu r6, -256(r30)
000b08  8b6b3d20  mul.f.rn r23, r26, r3
000b0c  8b604d20  mul.f.rn r1, r26, r4
000b10  8b692d20  mul.f.rn r19, r26, r2
000b14  8b61bd20  mul.f.rn r3, r26, r11
000b18  8b650d21  mul.f.rn r11, r26, r16
000b1c  0b616d21  mul.f.rn r2, r26, r22
000b20  0b6bed20  mul.f.rn r22, r26, r14
000b24  6b372ff0  load.hu r14, -254(r30)
000b28  6b384ff0  load.hu r16, -252(r30)
000b2c  0b622d21  mul.f.rn r4, r26, r18
000b30  0b6a1d21  mul.f.rn r20, r26, r17
000b34  8b6afd20  mul.f.rn r21, r26, r15
000b38  8b678d21  mul.f.rn r15, r26, r24
000b3c  8b68bd21  mul.f.rn r17, r26, r27
000b40  6b3c6ff0  load.hu r24, -250(r30)
000b44  0b648d20  mul.f.rn r8, r26, r8
000b48  33130320  hfloat2float.rn r6, r6
000b4c  0be96c20  mul.f.rn r18, r25, r6
000b50  33130720  hfloat2float.rn r6, r14
000b54  33170820  hfloat2float.rn r14, r16
000b58  6b388ff0  load.hu r16, -248(r30)
000b5c  8bed6b20  mul.f.rn r27, r23, r6
000b60  0be3e020  mul.f.rn r6, r1, r14
000b64  6b37aff0  load.hu r14, -246(r30)
000b68  eb3bcff0  load.hu r23, -244(r30)
000b6c  b3100c20  hfloat2float.rn r1, r24
000b70  33180820  hfloat2float.rn r16, r16
000b74  0b651520  mul.f.rn r10, r10, r1
000b78  33170720  hfloat2float.rn r14, r14
000b7c  8be00221  mul.f.rn r1, r5, r16
000b80  eb32eff0  load.hu r5, -242(r30)
000b84  33980b20  hfloat2float.rn r16, r23
000b88  8be9e920  mul.f.rn r19, r19, r14
000b8c  6b370ff1  load.hu r14, -240(r30)
000b90  8be10121  mul.f.rn r3, r3, r16
000b94  6b382ff1  load.hu r16, -238(r30)
000b98  b3920220  hfloat2float.rn r5, r5
000b9c  33170720  hfloat2float.rn r14, r14
000ba0  0b6a5a20  mul.f.rn r20, r20, r5
000ba4  eb324ff1  load.hu r5, -236(r30)
000ba8  33180820  hfloat2float.rn r16, r16
000bac  0b62e220  mul.f.rn r4, r4, r14
000bb0  6b376ff1  load.hu r14, -234(r30)
000bb4  8bea0a21  mul.f.rn r21, r21, r16
000bb8  6b388ff1  load.hu r16, -232(r30)
000bbc  b3920220  hfloat2float.rn r5, r5
000bc0  33170720  hfloat2float.rn r14, r14
000bc4  8be55520  mul.f.rn r11, r11, r5
000bc8  eb32aff1  load.hu r5, -230(r30)
000bcc  33180820  hfloat2float.rn r16, r16
000bd0  8bebe720  mul.f.rn r23, r15, r14
000bd4  6b37cff1  load.hu r14, -228(r30)
000bd8  8b6c0121  mul.f.rn r25, r2, r16
000bdc  6b31eff1  load.hu r2, -226(r30)
000be0  00a00000  mfence { lm }
000be4  b3920220  hfloat2float.rn r5, r5
000be8  eb376ff8  load.hu r15, -122(r30)
000bec  6b388ff8  load.hu r16, -120(r30)
000bf0  33170720  hfloat2float.rn r14, r14
000bf4  33110120  hfloat2float.rn r2, r2
000bf8  0b6b5b20  mul.f.rn r22, r22, r5
000bfc  b3970720  hfloat2float.rn r15, r15
000c00  33180820  hfloat2float.rn r16, r16
000c04  8b62e420  mul.f.rn r5, r8, r14
000c08  6b374ff8  load.hu r14, -124(r30)
000c0c  8be82820  mul.f.rn r17, r17, r2
000c10  6b310ff8  load.hu r2, -128(r30)
000c14  6b342ff8  load.hu r8, -126(r30)
000c18  0b65f510  add.f.rn r10, r10, r15
000c1c  eb37cff8  load.hu r15, -116(r30)
000c20  8be00011  add.f.rn r1, r1, r16
000c24  6b38eff8  load.hu r16, -114(r30)
000c28  33170720  hfloat2float.rn r14, r14
000c2c  33110120  hfloat2float.rn r2, r2
000c30  33140420  hfloat2float.rn r8, r8
000c34  b3970720  hfloat2float.rn r15, r15
000c38  33180820  hfloat2float.rn r16, r16
000c3c  0b63e310  add.f.rn r6, r6, r14
000c40  6b37aff8  load.hu r14, -118(r30)
000c44  0b612910  add.f.rn r2, r18, r2
000c48  6b390ff9  load.hu r18, -112(r30)
000c4c  0be48d10  add.f.rn r8, r27, r8
000c50  8be1f110  add.f.rn r3, r3, r15
000c54  eb372ff9  load.hu r15, -110(r30)
000c58  0b680a11  add.f.rn r16, r20, r16
000c5c  6b3a8ff9  load.hu r20, -104(r30)
000c60  b3a00000  float2hfloat.rn r1, r1
000c64  33170720  hfloat2float.rn r14, r14
000c68  33190920  hfloat2float.rn r18, r18
000c6c  b3970720  hfloat2float.rn r15, r15
000c70  331a0a20  hfloat2float.rn r20, r20
000c74  73141ff8  store.h r1, -120(r30)
000c78  0be7e910  add.f.rn r14, r19, r14
000c7c  eb394ff9  load.hu r19, -108(r30)
000c80  0b622211  add.f.rn r4, r4, r18
000c84  6b396ff9  load.hu r18, -106(r30)
000c88  33210100  float2hfloat.rn r2, r2
000c8c  8be7fa10  add.f.rn r15, r21, r15
000c90  eb3acff9  load.hu r21, -100(r30)
000c94  0bea4c11  add.f.rn r20, r25, r20
000c98  33240400  float2hfloat.rn r8, r8
000c9c  b3a00100  float2hfloat.rn r1, r3
000ca0  b3990920  hfloat2float.rn r19, r19
000ca4  33190920  hfloat2float.rn r18, r18
000ca8  73102ff8  store.h r2, -128(r30)
000cac  33210300  float2hfloat.rn r2, r6
000cb0  33230500  float2hfloat.rn r6, r10
000cb4  73118ff8  store.h r8, -126(r30)
000cb8  b39a0a20  hfloat2float.rn r21, r21
000cbc  73161ff8  store.h r1, -116(r30)
000cc0  8be53511  add.f.rn r11, r11, r19
000cc4  eb39aff9  load.hu r19, -102(r30)
000cc8  0be92b11  add.f.rn r18, r23, r18
000ccc  eb3beff9  load.hu r23, -98(r30)
000cd0  73122ff8  store.h r2, -124(r30)
000cd4  73136ff8  store.h r6, -122(r30)
000cd8  33210700  float2hfloat.rn r2, r14
000cdc  b3200200  float2hfloat.rn r1, r4
000ce0  8be25211  add.f.rn r5, r5, r21
000ce4  b3990920  hfloat2float.rn r19, r19
000ce8  73152ff8  store.h r2, -118(r30)
000cec  33210800  float2hfloat.rn r2, r16
000cf0  73181ff8  store.h r1, -112(r30)
000cf4  8b693b11  add.f.rn r19, r22, r19
000cf8  339b0b20  hfloat2float.rn r22, r23
000cfc  73172ff8  store.h r2, -114(r30)
000d00  33a10700  float2hfloat.rn r2, r15
000d04  9f0b8fff  addli r23, r30, -64
000d08  b3a00500  float2hfloat.rn r1, r11
000d0c  8be86811  add.f.rn r17, r17, r22
000d10  73192ff8  store.h r2, -110(r30)
000d14  33210900  float2hfloat.rn r2, r18
000d18  1f0b0fff  addli r22, r30, -128
000d1c  1f190000  addli r18, zero, 1
000d20  731a1ff8  store.h r1, -108(r30)
000d24  b3200a00  float2hfloat.rn r1, r20
000d28  731b2ff8  store.h r2, -106(r30)
000d2c  731c1ff8  store.h r1, -104(r30)
000d30  b3a00200  float2hfloat.rn r1, r5
000d34  6b528fea  load.d r[5:6], -344(r30)
000d38  33a10900  float2hfloat.rn r2, r19
000d3c  9f092000  addli r19, zero, 16
000d40  731e1ff8  store.h r1, -100(r30)
000d44  ab0000f0  lui r1, 983040
000d48  731d2ff8  store.h r2, -102(r30)
000d4c  33a10800  float2hfloat.rn r2, r17
000d50  731f2ff8  store.h r2, -98(r30)
000d54  63416ffd  loadli.w r2,  -332(r30)
000d58  97101100  or r1, r2, r1
000d5c  6b510fea  load.d r[3:4], -352(r30)
000d60  00a00000  mfence { lm }
000d64  0b214110  add.ul r[3:4], r[3:4], r[5:6]
000d68  ff306101  s_lm2gm r1, r22, 0(r[3:4])
000d6c  00a00000  mfence { lm }
000d70  63473ffd  loadli.w r14,  -356(r30)
000d74  1f0e0e08  addli r28, r28, 1024
000d78  3f209e00  blt.s r28, r9, 8
000d7c  db8dfeff  j -2964
000d80  8b10ee10  add.s r1, r28, r14
000d84  cbcf14fe  ble.s r9, r1, -16
000d88  8b911418  sub.s r3, r9, r1
000d8c  33920028  sext_int2long r[5:6], r1
000d90  6b558f01  load.d r[11:12], 24(r30)
000d94  8b900148  max.s r1, r3, zero
000d98  17372203  sll.d r[15:16], r[5:6], r18
000d9c  ab0100f0  lui r3, 983040
000da0  8b903041  min.s r1, r1, r19
000da4  0b25e510  add.ul r[11:12], r[11:12], r[15:16]
000da8  1bb31000  slli r6, r1, 1
000dac  eb500f01  load.d r[2:3], 16(r30)
000db0  0ba2e010  add.ul r[5:6], r[2:3], r[15:16]
000db4  97103300  or r1, r6, r3
000db8  97113300  or r3, r6, r3
000dbc  ff20c200  l_gm2lm r1, r12, 0(r[5:6])
000dc0  ff216501  l_gm2lm r3, r22, 0(r[11:12])
000dc4  9f000000  addli r1, zero, 0
000dc8  8b911b10  add.s r3, r23, r1
000dcc  9fc00000  addli r1, r1, 4
000dd0  73900100  store.h zero, 0(r3)
000dd4  73910100  store.h zero, 2(r3)
000dd8  00a00000  mfence { lm }
000ddc  bbbfd0fe  bneq r1, r13, -20
000de0  5b87ffff  j -968
000de4  9f8e3e03  addli sp, sp, 408
000de8  00a00300  mfence { lm, sm, gm }
000dec  00100000  exit
000df0  00100000  exit
000df4  00100000  exit
000df8  00100000  exit
000dfc  00100000  exit
000e00  00100000  exit
000e04  00100000  exit
000e08  00100000  exit
000e0c  00100000  exit
000e10  00100000  exit
000e14  00100000  exit
000e18  00100000  exit
000e1c  00100000  exit
000e20  00100000  exit
000e24  00100000  exit
000e28  00100000  exit
000e2c  00100000  exit
000e30  00100000  exit
000e34  00100000  exit
000e38  00100000  exit
000e3c  00100000  exit
000e40  00100000  exit
000e44  00100000  exit
000e48  00100000  exit
000e4c  00100000  exit
000e50  00100000  exit
000e54  00100000  exit
000e58  00100000  exit
000e5c  00100000  exit
000e60  00100000  exit
000e64  00100000  exit
000e68  00100000  exit
000e6c  00100000  exit
000e70  00100000  exit
000e74  00100000  exit
000e78  00100000  exit
000e7c  00100000  exit
000e80  00100000  exit
000e84  00100000  exit
000e88  00100000  exit
000e8c  00100000  exit
000e90  00100000  exit
000e94  00100000  exit
000e98  00100000  exit
000e9c  00100000  exit
000ea0  00100000  exit
000ea4  00100000  exit
000ea8  00100000  exit
000eac  00100000  exit
000eb0  00100000  exit
000eb4  00100000  exit
000eb8  00100000  exit
000ebc  00100000  exit
000ec0  00100000  exit
000ec4  00100000  exit
000ec8  00100000  exit
000ecc  00100000  exit
000ed0  00100000  exit
000ed4  00100000  exit
000ed8  00100000  exit
000edc  00100000  exit
000ee0  00100000  exit
000ee4  00100000  exit
000ee8  00100000  exit
000eec  00100000  exit
000ef0  00100000  exit
000ef4  00100000  exit
000ef8  00100000  exit
000efc  00100000  exit
000f00  00100000  exit
000f04  00100000  exit
000f08  00100000  exit
000f0c  00100000  exit
000f10  00100000  exit
000f14  00100000  exit
000f18  00100000  exit
000f1c  00100000  exit
000f20  00100000  exit
000f24  00100000  exit
000f28  00100000  exit
000f2c  00100000  exit
000f30  00100000  exit
000f34  00100000  exit
000f38  00100000  exit
000f3c  00100000  exit
000f40  00100000  exit
000f44  00100000  exit
000f48  00100000  exit
000f4c  00100000  exit
000f50  00100000  exit
000f54  00100000  exit
000f58  00100000  exit
000f5c  00100000  exit
000f60  00100000  exit
000f64  00100000  exit
000f68  00100000  exit
000f6c  00100000  exit
000f70  00100000  exit
000f74  00100000  exit
000f78  00100000  exit
000f7c  00100000  exit
000f80  00100000  exit
000f84  00100000  exit
000f88  00100000  exit
000f8c  00100000  exit
000f90  00100000  exit
000f94  00100000  exit
000f98  00100000  exit
000f9c  00100000  exit
000fa0  00100000  exit
000fa4  00100000  exit
000fa8  00100000  exit
000fac  00100000  exit
000fb0  00100000  exit
000fb4  00100000  exit
000fb8  00100000  exit
000fbc  00100000  exit
000fc0  00100000  exit
000fc4  00100000  exit
000fc8  00100000  exit
000fcc  00100000  exit
000fd0  00100000  exit
000fd4  00100000  exit
000fd8  00100000  exit
000fdc  00100000  exit
000fe0  00100000  exit
000fe4  00100000  exit
000fe8  00100000  exit
000fec  00100000  exit
000ff0  00100000  exit
000ff4  00100000  exit
000ff8  00100000  exit
000ffc  00100000  exit
001000  00100000  exit
001004  00100000  exit
001008  00100000  exit
00100c  00100000  exit
001010  00100000  exit
001014  00100000  exit
001018  00100000  exit
00101c  00100000  exit
001020  00100000  exit
001024  00100000  exit
001028  00100000  exit
00102c  00100000  exit
