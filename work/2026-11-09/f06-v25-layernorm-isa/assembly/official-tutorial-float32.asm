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
0000e4  9f8e9efc  addli sp, sp, -440
0000e8  2b020000  lui r4, 0
0000ec  80300002  core_id r1
0000f0  1f8f7e02  addli r30, sp, 312
0000f4  1bb12000  slli r2, r1, 2
0000f8  1f020200  addli r4, r4, 0
0000fc  63038f00  loadli.w r6,  64(r30)
000100  e3417f00  loadli.w r3,  60(r30)
000104  e3428f00  loadli.w r5,  68(r30)
000108  8b134110  add.s r7, r2, r4
00010c  2bf20000  lui r4, 15
000110  8b113320  mul.s r3, r6, r3
000114  00530002  load_param_i r6, 0
000118  1b12f2ff  ori r4, r4, 4095
00011c  73e80340  stores.w zero, 1040(r7)
000120  00a00300  mfence { lm, sm, gm }
000124  8b915120  mul.s r3, r3, r5
000128  80210204  csr_set csr3, r4
00012c  00d00100  sync_group
000130  e74d7ffc  storeli.w r7, -292(r30)
000134  73e00300  stores.w zero, 0(r7)
000138  00a00300  mfence { lm, sm, gm }
00013c  e74f4ffc  storeli.w r4, -260(r30)
000140  80210204  csr_set csr3, r4
000144  00d00100  sync_group
000148  e70d3ffc  storeli.w r3, -296(r30)
00014c  4bb66104  ble.s r3, r6, 2444
000150  e341bffd  loadli.w r3,  -292(r30)
000154  1b82f003  andi r4, r1, 63
000158  e3446f00  loadli.w r9,  52(r30)
00015c  1bbd4000  slli r26, r1, 4
000160  9bf00004  setlti r1, r1, 64
000164  1f270000  addli r14, zero, 2
000168  1f0a2000  addli r20, zero, 16
00016c  1f040ffe  addli r8, r30, -256
000170  9f0a8fff  addli r21, r30, -64
000174  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000178  eeb01062  vxor.s.mz vr1{mr1}, vr1, vr1
00017c  e70f4ffc  storeli.w r4, -264(r30)
000180  13020200  seteq r4, r4, zero
000184  9f812108  addli r3, r3, 1040
000188  674d3ffc  storeli.w r3, -300(r30)
00018c  80d10002  load_param_i r3, 1
000190  670d3ffc  storeli.w r3, -304(r30)
000194  abf1ffff  lui r3, 1048575
000198  9b9101f0  ori r3, r3, 3840
00019c  97804000  and r1, r1, r4
0001a0  17013100  and r2, r2, r3
0001a4  b3810408  fix2float.rn r3, r9
0001a8  e74c1ffc  storeli.w r1, -308(r30)
0001ac  8b90a419  sub.s r1, r9, r26
0001b0  674f3ffc  storeli.w r3, -268(r30)
0001b4  ab010000  lui r3, 0
0001b8  670f1ffc  storeli.w r1, -272(r30)
0001bc  9f810100  addli r3, r3, 0
0001c0  0b1e3110  add.s r28, r2, r3
0001c4  9f052e08  addli r11, r28, 1040
0001c8  5b030000  j 24
0001cc  e300affd  loadli.w r1,  -304(r30)
0001d0  0b131310  add.s r6, r6, r1
0001d4  e300bffd  loadli.w r1,  -296(r30)
0001d8  3f201300  blt.s r6, r1, 8
0001dc  db1f0100  j 2300
0001e0  e3408f00  loadli.w r1,  68(r30)
0001e4  63018f00  loadli.w r2,  64(r30)
0001e8  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0001ec  8b101330  div.s r1, r6, r1
0001f0  0b912030  div.s r2, r1, r2
0001f4  e3006f00  loadli.w r1,  48(r30)
0001f8  8b101120  mul.s r1, r2, r1
0001fc  674e2ffc  storeli.w r2, -284(r30)
000200  b3900028  sext_int2long r[2:3], r1
000204  97b1e002  sll.d r[4:5], r[2:3], r14
000208  eb500f00  load.d r[2:3], 0(r30)
00020c  73343fee  store.d r[4:5], -280(r30)
000210  8ba03010  add.ul r[2:3], r[2:3], r[4:5]
000214  9f110000  addli r3, zero, 1
000218  bfb13400  blt.s r9, r3, 108
00021c  12310002  vadd.s.mz vr2{mr1}, zero, vr0
000220  6302effd  loadli.w r4,  -272(r30)
000224  9f010000  addli r3, zero, 0
000228  db020000  j 20
00022c  9f810108  addli r3, r3, 1024
000230  1f0202f8  addli r4, r4, -1024
000234  3fa09100  blt.s r3, r9, 8
000238  db090000  j 76
00023c  8b133d10  add.s r7, r26, r3
000240  cbbf74fe  ble.s r9, r7, -20
000244  33960328  sext_int2long r[13:14], r7
000248  8b130248  max.s r7, r4, zero
00024c  ab0900f0  lui r19, 983040
000250  46100fe2  vstore_mask16.mz vr0{mr1}, 1792(r30)
000254  00a00000  mfence { lm }
000258  8b934341  min.s r7, r7, r20
00025c  1736e602  sll.d r[13:14], r[13:14], r14
000260  9bb32300  slli r7, r7, 2
000264  0ba6c010  add.ul r[13:14], r[2:3], r[13:14]
000268  97933301  or r7, r7, r19
00026c  ff238600  l_gm2lm r7, r8, 0(r[13:14])
000270  00a00000  mfence { lm }
000274  c2110fe2  vload_mask16.mz vr3{mr1}, 1792(r30)
000278  00a00000  mfence { lm }
00027c  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000280  dbf5ffff  j -84
000284  fa110140  vextracti.f r3, 0(vr2)
000288  7a121140  vextracti.f r4, 1(vr2)
00028c  8be14110  add.f.rn r3, r3, r4
000290  7a122140  vextracti.f r4, 2(vr2)
000294  8b613210  add.f.rn r3, r4, r3
000298  7a123140  vextracti.f r4, 3(vr2)
00029c  8b613210  add.f.rn r3, r4, r3
0002a0  7a124140  vextracti.f r4, 4(vr2)
0002a4  8b613210  add.f.rn r3, r4, r3
0002a8  7a125140  vextracti.f r4, 5(vr2)
0002ac  8b613210  add.f.rn r3, r4, r3
0002b0  7a126140  vextracti.f r4, 6(vr2)
0002b4  8b613210  add.f.rn r3, r4, r3
0002b8  7a127140  vextracti.f r4, 7(vr2)
0002bc  8b613210  add.f.rn r3, r4, r3
0002c0  7a128140  vextracti.f r4, 8(vr2)
0002c4  8b613210  add.f.rn r3, r4, r3
0002c8  7a129140  vextracti.f r4, 9(vr2)
0002cc  8b613210  add.f.rn r3, r4, r3
0002d0  7a12a140  vextracti.f r4, 10(vr2)
0002d4  8b613210  add.f.rn r3, r4, r3
0002d8  7a12b140  vextracti.f r4, 11(vr2)
0002dc  8b613210  add.f.rn r3, r4, r3
0002e0  7a12c140  vextracti.f r4, 12(vr2)
0002e4  8b613210  add.f.rn r3, r4, r3
0002e8  7a12d140  vextracti.f r4, 13(vr2)
0002ec  8b613210  add.f.rn r3, r4, r3
0002f0  7a12e140  vextracti.f r4, 14(vr2)
0002f4  8b613210  add.f.rn r3, r4, r3
0002f8  7a12f140  vextracti.f r4, 15(vr2)
0002fc  8b613210  add.f.rn r3, r4, r3
000300  6342bffd  loadli.w r4,  -292(r30)
000304  73603200  stores.w r3, 0(r4)
000308  00a00300  mfence { lm, sm, gm }
00030c  6342fffd  loadli.w r4,  -260(r30)
000310  80210204  csr_set csr3, r4
000314  00d00100  sync_group
000318  e301fffd  loadli.w r3,  -264(r30)
00031c  3ba80100  bneq r3, zero, 520
000320  6f420e00  loads.w r4, 0(r28)
000324  6f464e00  loads.w r12, 4(r28)
000328  ef438e00  loads.w r7, 8(r28)
00032c  8b61c210  add.f.rn r3, r4, r12
000330  6f42ce00  loads.w r4, 12(r28)
000334  8be17110  add.f.rn r3, r3, r7
000338  ef430e01  loads.w r7, 16(r28)
00033c  8be14110  add.f.rn r3, r3, r4
000340  6f424e01  loads.w r4, 20(r28)
000344  8be17110  add.f.rn r3, r3, r7
000348  ef438e01  loads.w r7, 24(r28)
00034c  8be14110  add.f.rn r3, r3, r4
000350  6f42ce01  loads.w r4, 28(r28)
000354  8be17110  add.f.rn r3, r3, r7
000358  ef430e02  loads.w r7, 32(r28)
00035c  8be14110  add.f.rn r3, r3, r4
000360  6f424e02  loads.w r4, 36(r28)
000364  8be17110  add.f.rn r3, r3, r7
000368  ef438e02  loads.w r7, 40(r28)
00036c  8be14110  add.f.rn r3, r3, r4
000370  6f42ce02  loads.w r4, 44(r28)
000374  8be17110  add.f.rn r3, r3, r7
000378  ef430e03  loads.w r7, 48(r28)
00037c  8be14110  add.f.rn r3, r3, r4
000380  6f424e03  loads.w r4, 52(r28)
000384  8be17110  add.f.rn r3, r3, r7
000388  ef438e03  loads.w r7, 56(r28)
00038c  8be14110  add.f.rn r3, r3, r4
000390  6f42ce03  loads.w r4, 60(r28)
000394  8be17110  add.f.rn r3, r3, r7
000398  ef430e04  loads.w r7, 64(r28)
00039c  8be14110  add.f.rn r3, r3, r4
0003a0  6f424e04  loads.w r4, 68(r28)
0003a4  8be17110  add.f.rn r3, r3, r7
0003a8  ef438e04  loads.w r7, 72(r28)
0003ac  8be14110  add.f.rn r3, r3, r4
0003b0  6f42ce04  loads.w r4, 76(r28)
0003b4  8be17110  add.f.rn r3, r3, r7
0003b8  ef430e05  loads.w r7, 80(r28)
0003bc  8be14110  add.f.rn r3, r3, r4
0003c0  6f424e05  loads.w r4, 84(r28)
0003c4  8be17110  add.f.rn r3, r3, r7
0003c8  ef438e05  loads.w r7, 88(r28)
0003cc  8be14110  add.f.rn r3, r3, r4
0003d0  6f42ce05  loads.w r4, 92(r28)
0003d4  8be17110  add.f.rn r3, r3, r7
0003d8  ef430e06  loads.w r7, 96(r28)
0003dc  8be14110  add.f.rn r3, r3, r4
0003e0  6f424e06  loads.w r4, 100(r28)
0003e4  8be17110  add.f.rn r3, r3, r7
0003e8  ef438e06  loads.w r7, 104(r28)
0003ec  8be14110  add.f.rn r3, r3, r4
0003f0  6f42ce06  loads.w r4, 108(r28)
0003f4  8be17110  add.f.rn r3, r3, r7
0003f8  ef430e07  loads.w r7, 112(r28)
0003fc  8be14110  add.f.rn r3, r3, r4
000400  6f424e07  loads.w r4, 116(r28)
000404  8be17110  add.f.rn r3, r3, r7
000408  ef438e07  loads.w r7, 120(r28)
00040c  8be14110  add.f.rn r3, r3, r4
000410  6f42ce07  loads.w r4, 124(r28)
000414  8be17110  add.f.rn r3, r3, r7
000418  ef430e08  loads.w r7, 128(r28)
00041c  8be14110  add.f.rn r3, r3, r4
000420  6f424e08  loads.w r4, 132(r28)
000424  8be17110  add.f.rn r3, r3, r7
000428  ef438e08  loads.w r7, 136(r28)
00042c  8be14110  add.f.rn r3, r3, r4
000430  6f42ce08  loads.w r4, 140(r28)
000434  8be17110  add.f.rn r3, r3, r7
000438  ef430e09  loads.w r7, 144(r28)
00043c  8be14110  add.f.rn r3, r3, r4
000440  6f424e09  loads.w r4, 148(r28)
000444  8be17110  add.f.rn r3, r3, r7
000448  ef438e09  loads.w r7, 152(r28)
00044c  8be14110  add.f.rn r3, r3, r4
000450  6f42ce09  loads.w r4, 156(r28)
000454  8be17110  add.f.rn r3, r3, r7
000458  ef430e0a  loads.w r7, 160(r28)
00045c  8be14110  add.f.rn r3, r3, r4
000460  6f424e0a  loads.w r4, 164(r28)
000464  8be17110  add.f.rn r3, r3, r7
000468  ef438e0a  loads.w r7, 168(r28)
00046c  8be14110  add.f.rn r3, r3, r4
000470  6f42ce0a  loads.w r4, 172(r28)
000474  8be17110  add.f.rn r3, r3, r7
000478  ef430e0b  loads.w r7, 176(r28)
00047c  8be14110  add.f.rn r3, r3, r4
000480  6f424e0b  loads.w r4, 180(r28)
000484  8be17110  add.f.rn r3, r3, r7
000488  ef438e0b  loads.w r7, 184(r28)
00048c  8be14110  add.f.rn r3, r3, r4
000490  6f42ce0b  loads.w r4, 188(r28)
000494  8be17110  add.f.rn r3, r3, r7
000498  ef430e0c  loads.w r7, 192(r28)
00049c  8be14110  add.f.rn r3, r3, r4
0004a0  6f424e0c  loads.w r4, 196(r28)
0004a4  8be17110  add.f.rn r3, r3, r7
0004a8  ef438e0c  loads.w r7, 200(r28)
0004ac  8be14110  add.f.rn r3, r3, r4
0004b0  6f42ce0c  loads.w r4, 204(r28)
0004b4  8be17110  add.f.rn r3, r3, r7
0004b8  ef430e0d  loads.w r7, 208(r28)
0004bc  8be14110  add.f.rn r3, r3, r4
0004c0  6f424e0d  loads.w r4, 212(r28)
0004c4  8be17110  add.f.rn r3, r3, r7
0004c8  ef438e0d  loads.w r7, 216(r28)
0004cc  8be14110  add.f.rn r3, r3, r4
0004d0  6f42ce0d  loads.w r4, 220(r28)
0004d4  8be17110  add.f.rn r3, r3, r7
0004d8  ef430e0e  loads.w r7, 224(r28)
0004dc  8be14110  add.f.rn r3, r3, r4
0004e0  6f424e0e  loads.w r4, 228(r28)
0004e4  8be17110  add.f.rn r3, r3, r7
0004e8  ef438e0e  loads.w r7, 232(r28)
0004ec  8be14110  add.f.rn r3, r3, r4
0004f0  6f42ce0e  loads.w r4, 236(r28)
0004f4  8be17110  add.f.rn r3, r3, r7
0004f8  ef430e0f  loads.w r7, 240(r28)
0004fc  8be14110  add.f.rn r3, r3, r4
000500  6f424e0f  loads.w r4, 244(r28)
000504  8be17110  add.f.rn r3, r3, r7
000508  ef438e0f  loads.w r7, 248(r28)
00050c  8be14110  add.f.rn r3, r3, r4
000510  6f42ce0f  loads.w r4, 252(r28)
000514  8be17110  add.f.rn r3, r3, r7
000518  8be14110  add.f.rn r3, r3, r4
00051c  6342fffd  loadli.w r4,  -260(r30)
000520  73603e00  stores.w r3, 0(r28)
000524  ab010000  lui r3, 0
000528  00a00300  mfence { lm, sm, gm }
00052c  80210204  csr_set csr3, r4
000530  00d00100  sync_group
000534  e342effd  loadli.w r5,  -268(r30)
000538  92310002  vadd.s.mz vr3{mr1}, zero, vr0
00053c  9f810100  addli r3, r3, 0
000540  1f820100  addli r4, r3, 0
000544  ef410200  loads.w r3, 0(r4)
000548  8f825118  div.f.rn r5, r3, r5
00054c  73603210  stores.w r3, 256(r4)
000550  9f110000  addli r3, zero, 1
000554  6a910222  vor.f.mz vr2{mr1}, r5, vr0
000558  670e5ffc  storeli.w r5, -288(r30)
00055c  bfb53400  blt.s r9, r3, 364
000560  92310002  vadd.s.mz vr3{mr1}, zero, vr0
000564  e306effd  loadli.w r13,  -272(r30)
000568  9f030000  addli r7, zero, 0
00056c  5b210000  j 264
000570  1f280200  addli r16, r4, 2
000574  1f390200  addli r18, r4, 3
000578  1f450200  addli r10, r4, 4
00057c  9f611200  addli r3, r4, 14
000580  9f121200  addli r5, r4, 9
000584  9f071200  addli r15, r4, 8
000588  9f780200  addli r17, r4, 7
00058c  1f660200  addli r12, r4, 6
000590  9f791200  addli r19, r4, 15
000594  9f5d1200  addli r27, r4, 13
000598  1f4c1200  addli r24, r4, 12
00059c  1f3b1200  addli r22, r4, 11
0005a0  9f2b1200  addli r23, r4, 10
0005a4  1f520200  addli r4, r4, 5
0005a8  1e122202  vsub.f.mz.rn vr4{mr1}, vr4, vr2
0005ac  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0005b0  13189804  setlt.s r16, r16, r9
0005b4  13199904  setlt.s r18, r18, r9
0005b8  13159504  setlt.s r10, r10, r9
0005bc  13129204  setlt.s r4, r4, r9
0005c0  13169604  setlt.s r12, r12, r9
0005c4  93989804  setlt.s r17, r17, r9
0005c8  93979704  setlt.s r15, r15, r9
0005cc  93929204  setlt.s r5, r5, r9
0005d0  93919104  setlt.s r3, r3, r9
0005d4  1b382800  slli r16, r16, 2
0005d8  1b393900  slli r18, r18, 3
0005dc  1b354500  slli r10, r10, 4
0005e0  1b325200  slli r4, r4, 5
0005e4  9bb29200  slli r5, r5, 9
0005e8  9bb1e100  slli r3, r3, 14
0005ec  17980c01  or r16, r25, r16
0005f0  17182801  or r16, r16, r18
0005f4  1715a800  or r10, r16, r10
0005f8  17124500  or r4, r10, r4
0005fc  1b356600  slli r10, r12, 6
000600  13969b04  setlt.s r12, r23, r9
000604  1712a200  or r4, r4, r10
000608  1bb57800  slli r10, r17, 7
00060c  1712a200  or r4, r4, r10
000610  1bb58700  slli r10, r15, 8
000614  93179b04  setlt.s r15, r22, r9
000618  1712a200  or r4, r4, r10
00061c  13159c04  setlt.s r10, r24, r9
000620  17125200  or r4, r4, r5
000624  9b32a600  slli r5, r12, 10
000628  13969d04  setlt.s r12, r27, r9
00062c  17125200  or r4, r4, r5
000630  9bb2b700  slli r5, r15, 11
000634  17125200  or r4, r4, r5
000638  9b32c500  slli r5, r10, 12
00063c  13959904  setlt.s r10, r19, r9
000640  17125200  or r4, r4, r5
000644  9b32d600  slli r5, r12, 13
000648  17125200  or r4, r4, r5
00064c  97113200  or r3, r4, r3
000650  1b32f500  slli r4, r10, 15
000654  97914100  or r3, r3, r4
000658  7e8001e0  vmmov mr0, r3
00065c  ee924030  vor.f.mh vr5{mr0}, vr1, vr4
000660  a6915202  vmac.f.mz.rn vr3{mr1}, vr5, vr5
000664  9f830308  addli r7, r7, 1024
000668  9f8606f8  addli r13, r13, -1024
00066c  3fa09300  blt.s r7, r9, 8
000670  5b0b0000  j 88
000674  0b127d10  add.s r4, r26, r7
000678  cbbf44fe  ble.s r9, r4, -20
00067c  8b910648  max.s r3, r13, zero
000680  331c0228  sext_int2long r[25:26], r4
000684  ab0900f0  lui r19, 983040
000688  46100fe2  vstore_mask16.mz vr0{mr1}, 1792(r30)
00068c  00a00000  mfence { lm }
000690  8b914141  min.s r3, r3, r20
000694  173cec02  sll.d r[25:26], r[25:26], r14
000698  9bb12100  slli r3, r3, 2
00069c  0bac8011  add.ul r[25:26], r[2:3], r[25:26]
0006a0  97913101  or r3, r3, r19
0006a4  ff218c00  l_gm2lm r3, r8, 0(r[25:26])
0006a8  9f110200  addli r3, r4, 1
0006ac  9f3c0000  addli r25, zero, 3
0006b0  00a00000  mfence { lm }
0006b4  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
0006b8  00a00000  mfence { lm }
0006bc  bfda91fe  blt.s r3, r9, -332
0006c0  9f1c0000  addli r25, zero, 1
0006c4  dbd5ffff  j -340
0006c8  fa910140  vextracti.f r3, 0(vr3)
0006cc  7a921140  vextracti.f r4, 1(vr3)
0006d0  8be14110  add.f.rn r3, r3, r4
0006d4  7a922140  vextracti.f r4, 2(vr3)
0006d8  8b613210  add.f.rn r3, r4, r3
0006dc  7a923140  vextracti.f r4, 3(vr3)
0006e0  8b613210  add.f.rn r3, r4, r3
0006e4  7a924140  vextracti.f r4, 4(vr3)
0006e8  8b613210  add.f.rn r3, r4, r3
0006ec  7a925140  vextracti.f r4, 5(vr3)
0006f0  8b613210  add.f.rn r3, r4, r3
0006f4  7a926140  vextracti.f r4, 6(vr3)
0006f8  8b613210  add.f.rn r3, r4, r3
0006fc  7a927140  vextracti.f r4, 7(vr3)
000700  8b613210  add.f.rn r3, r4, r3
000704  7a928140  vextracti.f r4, 8(vr3)
000708  8b613210  add.f.rn r3, r4, r3
00070c  7a929140  vextracti.f r4, 9(vr3)
000710  8b613210  add.f.rn r3, r4, r3
000714  7a92a140  vextracti.f r4, 10(vr3)
000718  8b613210  add.f.rn r3, r4, r3
00071c  7a92b140  vextracti.f r4, 11(vr3)
000720  8b613210  add.f.rn r3, r4, r3
000724  7a92c140  vextracti.f r4, 12(vr3)
000728  8b613210  add.f.rn r3, r4, r3
00072c  7a92d140  vextracti.f r4, 13(vr3)
000730  8b613210  add.f.rn r3, r4, r3
000734  7a92e140  vextracti.f r4, 14(vr3)
000738  8b613210  add.f.rn r3, r4, r3
00073c  7a92f140  vextracti.f r4, 15(vr3)
000740  8b613210  add.f.rn r3, r4, r3
000744  6342affd  loadli.w r4,  -300(r30)
000748  73603200  stores.w r3, 0(r4)
00074c  00a00300  mfence { lm, sm, gm }
000750  6342fffd  loadli.w r4,  -260(r30)
000754  80210204  csr_set csr3, r4
000758  00d00100  sync_group
00075c  e301fffd  loadli.w r3,  -264(r30)
000760  3ba80100  bneq r3, zero, 520
000764  6fc20500  loads.w r4, 0(r11)
000768  efc64500  loads.w r13, 4(r11)
00076c  efc38500  loads.w r7, 8(r11)
000770  efc20501  loads.w r5, 16(r11)
000774  8b61d210  add.f.rn r3, r4, r13
000778  6fc2c500  loads.w r4, 12(r11)
00077c  8be17110  add.f.rn r3, r3, r7
000780  8be14110  add.f.rn r3, r3, r4
000784  6fc24501  loads.w r4, 20(r11)
000788  8be15110  add.f.rn r3, r3, r5
00078c  efc28501  loads.w r5, 24(r11)
000790  8be14110  add.f.rn r3, r3, r4
000794  6fc2c501  loads.w r4, 28(r11)
000798  8be15110  add.f.rn r3, r3, r5
00079c  efc20502  loads.w r5, 32(r11)
0007a0  8be14110  add.f.rn r3, r3, r4
0007a4  6fc24502  loads.w r4, 36(r11)
0007a8  8be15110  add.f.rn r3, r3, r5
0007ac  efc28502  loads.w r5, 40(r11)
0007b0  8be14110  add.f.rn r3, r3, r4
0007b4  6fc2c502  loads.w r4, 44(r11)
0007b8  8be15110  add.f.rn r3, r3, r5
0007bc  efc20503  loads.w r5, 48(r11)
0007c0  8be14110  add.f.rn r3, r3, r4
0007c4  6fc24503  loads.w r4, 52(r11)
0007c8  8be15110  add.f.rn r3, r3, r5
0007cc  efc28503  loads.w r5, 56(r11)
0007d0  8be14110  add.f.rn r3, r3, r4
0007d4  6fc2c503  loads.w r4, 60(r11)
0007d8  8be15110  add.f.rn r3, r3, r5
0007dc  efc20504  loads.w r5, 64(r11)
0007e0  8be14110  add.f.rn r3, r3, r4
0007e4  6fc24504  loads.w r4, 68(r11)
0007e8  8be15110  add.f.rn r3, r3, r5
0007ec  efc28504  loads.w r5, 72(r11)
0007f0  8be14110  add.f.rn r3, r3, r4
0007f4  6fc2c504  loads.w r4, 76(r11)
0007f8  8be15110  add.f.rn r3, r3, r5
0007fc  efc20505  loads.w r5, 80(r11)
000800  8be14110  add.f.rn r3, r3, r4
000804  6fc24505  loads.w r4, 84(r11)
000808  8be15110  add.f.rn r3, r3, r5
00080c  efc28505  loads.w r5, 88(r11)
000810  8be14110  add.f.rn r3, r3, r4
000814  6fc2c505  loads.w r4, 92(r11)
000818  8be15110  add.f.rn r3, r3, r5
00081c  efc20506  loads.w r5, 96(r11)
000820  8be14110  add.f.rn r3, r3, r4
000824  6fc24506  loads.w r4, 100(r11)
000828  8be15110  add.f.rn r3, r3, r5
00082c  efc28506  loads.w r5, 104(r11)
000830  8be14110  add.f.rn r3, r3, r4
000834  6fc2c506  loads.w r4, 108(r11)
000838  8be15110  add.f.rn r3, r3, r5
00083c  efc20507  loads.w r5, 112(r11)
000840  8be14110  add.f.rn r3, r3, r4
000844  6fc24507  loads.w r4, 116(r11)
000848  8be15110  add.f.rn r3, r3, r5
00084c  efc28507  loads.w r5, 120(r11)
000850  8be14110  add.f.rn r3, r3, r4
000854  6fc2c507  loads.w r4, 124(r11)
000858  8be15110  add.f.rn r3, r3, r5
00085c  efc20508  loads.w r5, 128(r11)
000860  8be14110  add.f.rn r3, r3, r4
000864  6fc24508  loads.w r4, 132(r11)
000868  8be15110  add.f.rn r3, r3, r5
00086c  efc28508  loads.w r5, 136(r11)
000870  8be14110  add.f.rn r3, r3, r4
000874  6fc2c508  loads.w r4, 140(r11)
000878  8be15110  add.f.rn r3, r3, r5
00087c  efc20509  loads.w r5, 144(r11)
000880  8be14110  add.f.rn r3, r3, r4
000884  6fc24509  loads.w r4, 148(r11)
000888  8be15110  add.f.rn r3, r3, r5
00088c  efc28509  loads.w r5, 152(r11)
000890  8be14110  add.f.rn r3, r3, r4
000894  6fc2c509  loads.w r4, 156(r11)
000898  8be15110  add.f.rn r3, r3, r5
00089c  efc2050a  loads.w r5, 160(r11)
0008a0  8be14110  add.f.rn r3, r3, r4
0008a4  6fc2450a  loads.w r4, 164(r11)
0008a8  8be15110  add.f.rn r3, r3, r5
0008ac  efc2850a  loads.w r5, 168(r11)
0008b0  8be14110  add.f.rn r3, r3, r4
0008b4  6fc2c50a  loads.w r4, 172(r11)
0008b8  8be15110  add.f.rn r3, r3, r5
0008bc  efc2050b  loads.w r5, 176(r11)
0008c0  8be14110  add.f.rn r3, r3, r4
0008c4  6fc2450b  loads.w r4, 180(r11)
0008c8  8be15110  add.f.rn r3, r3, r5
0008cc  efc2850b  loads.w r5, 184(r11)
0008d0  8be14110  add.f.rn r3, r3, r4
0008d4  6fc2c50b  loads.w r4, 188(r11)
0008d8  8be15110  add.f.rn r3, r3, r5
0008dc  efc2050c  loads.w r5, 192(r11)
0008e0  8be14110  add.f.rn r3, r3, r4
0008e4  6fc2450c  loads.w r4, 196(r11)
0008e8  8be15110  add.f.rn r3, r3, r5
0008ec  efc2850c  loads.w r5, 200(r11)
0008f0  8be14110  add.f.rn r3, r3, r4
0008f4  6fc2c50c  loads.w r4, 204(r11)
0008f8  8be15110  add.f.rn r3, r3, r5
0008fc  efc2050d  loads.w r5, 208(r11)
000900  8be14110  add.f.rn r3, r3, r4
000904  6fc2450d  loads.w r4, 212(r11)
000908  8be15110  add.f.rn r3, r3, r5
00090c  efc2850d  loads.w r5, 216(r11)
000910  8be14110  add.f.rn r3, r3, r4
000914  6fc2c50d  loads.w r4, 220(r11)
000918  8be15110  add.f.rn r3, r3, r5
00091c  efc2050e  loads.w r5, 224(r11)
000920  8be14110  add.f.rn r3, r3, r4
000924  6fc2450e  loads.w r4, 228(r11)
000928  8be15110  add.f.rn r3, r3, r5
00092c  efc2850e  loads.w r5, 232(r11)
000930  8be14110  add.f.rn r3, r3, r4
000934  6fc2c50e  loads.w r4, 236(r11)
000938  8be15110  add.f.rn r3, r3, r5
00093c  efc2050f  loads.w r5, 240(r11)
000940  8be14110  add.f.rn r3, r3, r4
000944  6fc2450f  loads.w r4, 244(r11)
000948  8be15110  add.f.rn r3, r3, r5
00094c  efc2850f  loads.w r5, 248(r11)
000950  8be14110  add.f.rn r3, r3, r4
000954  6fc2c50f  loads.w r4, 252(r11)
000958  8be15110  add.f.rn r3, r3, r5
00095c  8be14110  add.f.rn r3, r3, r4
000960  6342fffd  loadli.w r4,  -260(r30)
000964  73e03500  stores.w r3, 0(r11)
000968  ab010000  lui r3, 0
00096c  00a00300  mfence { lm, sm, gm }
000970  80210204  csr_set csr3, r4
000974  00d00100  sync_group
000978  e3037f00  loadli.w r7,  56(r30)
00097c  9f810100  addli r3, r3, 0
000980  9f820100  addli r5, r3, 0
000984  e341effd  loadli.w r3,  -268(r30)
000988  6fc20241  loads.w r4, 1040(r5)
00098c  8f013218  div.f.rn r3, r4, r3
000990  73e84250  stores.w r4, 1296(r5)
000994  63429ffd  loadli.w r4,  -308(r30)
000998  8be13310  add.f.rn r3, r7, r3
00099c  ab03803f  lui r7, 260096
0009a0  8f810108  sqrt.f.rn r3, r3
0009a4  8f813318  div.f.rn r3, r7, r3
0009a8  37710200  beq r4, zero, 92
0009ac  6342cffd  loadli.w r4,  -284(r30)
0009b0  e303cffd  loadli.w r7,  -288(r30)
0009b4  6b560f02  load.d r[13:14], 32(r30)
0009b8  9f470000  addli r15, zero, 4
0009bc  1f058ffe  addli r10, r30, -192
0009c0  33120228  sext_int2long r[5:6], r4
0009c4  67047ffe  storeli.w r7, -192(r30)
0009c8  ab0300f0  lui r7, 983040
0009cc  00a00000  mfence { lm }
0009d0  1732e202  sll.d r[5:6], r[5:6], r14
0009d4  97937700  or r7, r15, r7
0009d8  0b264610  add.ul r[13:14], r[13:14], r[5:6]
0009dc  ff33a600  s_lm2gm r7, r10, 0(r[13:14])
0009e0  ab0300f0  lui r7, 983040
0009e4  00a00000  mfence { lm }
0009e8  6b568f02  load.d r[13:14], 40(r30)
0009ec  67043ffe  storeli.w r3, -192(r30)
0009f0  97937700  or r7, r15, r7
0009f4  00a00000  mfence { lm }
0009f8  0b224610  add.ul r[5:6], r[13:14], r[5:6]
0009fc  ff33a200  s_lm2gm r7, r10, 0(r[5:6])
000a00  00a00000  mfence { lm }
000a04  1f120000  addli r4, zero, 1
000a08  3f9f44fa  blt.s r9, r4, -2108
000a0c  ea910122  vor.f.mz vr3{mr1}, r3, vr0
000a10  eb518f00  load.d r[4:5], 8(r30)
000a14  6b568fee  load.d r[13:14], -280(r30)
000a18  9f030000  addli r7, zero, 0
000a1c  0ba6c110  add.ul r[13:14], r[4:5], r[13:14]
000a20  6302effd  loadli.w r4,  -272(r30)
000a24  db020000  j 20
000a28  9f830308  addli r7, r7, 1024
000a2c  1f0202f8  addli r4, r4, -1024
000a30  3fa09300  blt.s r7, r9, 8
000a34  5bf3feff  j -2152
000a38  8b117d10  add.s r3, r26, r7
000a3c  cbbf34fe  ble.s r9, r3, -20
000a40  8b120248  max.s r5, r4, zero
000a44  b3970128  sext_int2long r[16:17], r3
000a48  eb580f01  load.d r[18:19], 16(r30)
000a4c  6b5b8f01  load.d r[23:24], 24(r30)
000a50  2b0500f0  lui r10, 983040
000a54  461c0fe2  vstore_mask16.mz vr0{mr1}, 1984(r30)
000a58  8b914241  min.s r3, r5, r20
000a5c  97b7e702  sll.d r[16:17], r[16:17], r14
000a60  ab0200f0  lui r5, 983040
000a64  9bb12100  slli r3, r3, 2
000a68  8ba8f810  add.ul r[18:19], r[18:19], r[16:17]
000a6c  0b2bfb10  add.ul r[23:24], r[23:24], r[16:17]
000a70  97925100  or r5, r3, r5
000a74  1795a100  or r10, r3, r10
000a78  ffa28800  l_gm2lm r5, r8, 0(r[18:19])
000a7c  9f020fff  addli r5, r30, -128
000a80  8ba8f010  add.ul r[18:19], r[2:3], r[16:17]
000a84  8b27f610  add.ul r[16:17], r[13:14], r[16:17]
000a88  7f255b00  l_gm2lm r10, r5, 0(r[23:24])
000a8c  ab0200f0  lui r5, 983040
000a90  00a00000  mfence { lm }
000a94  97925100  or r5, r3, r5
000a98  ffa25801  l_gm2lm r5, r21, 0(r[18:19])
000a9c  ab0200f0  lui r5, 983040
000aa0  00a00000  mfence { lm }
000aa4  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
000aa8  00a00000  mfence { lm }
000aac  97915100  or r3, r3, r5
000ab0  c2128fe3  vload_mask16.mz vr5{mr1}, 1984(r30)
000ab4  42130fe3  vload_mask16.mz vr6{mr1}, 1920(r30)
000ab8  9e922202  vsub.f.mz.rn vr5{mr1}, vr5, vr2
000abc  8e925102  vmul.f.mz.rn vr5{mr1}, vr3, vr5
000ac0  26934202  vmac.f.mz.rn vr6{mr1}, vr5, vr4
000ac4  461c6fe2  vstore_mask16.mz vr6{mr1}, 1984(r30)
000ac8  00a00000  mfence { lm }
000acc  ffb15701  s_lm2gm r3, r21, 0(r[16:17])
000ad0  00a00000  mfence { lm }
000ad4  dbeaffff  j -172
000ad8  9f8e7e02  addli sp, sp, 312
000adc  00a00300  mfence { lm, sm, gm }
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
000ce0  00100000  exit
000ce4  00100000  exit
000ce8  00100000  exit
000cec  00100000  exit
000cf0  00100000  exit
000cf4  00100000  exit
000cf8  00100000  exit
000cfc  00100000  exit
000d00  00100000  exit
000d04  00100000  exit
000d08  00100000  exit
000d0c  00100000  exit
000d10  00100000  exit
000d14  00100000  exit
000d18  00100000  exit
000d1c  00100000  exit
000d20  00100000  exit
