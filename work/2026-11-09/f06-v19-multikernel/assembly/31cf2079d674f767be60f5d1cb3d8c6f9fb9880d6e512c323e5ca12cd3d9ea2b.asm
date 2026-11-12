; SHA-256 31cf2079d674f767be60f5d1cb3d8c6f9fb9880d6e512c323e5ca12cd3d9ea2b
; P800 Cluster · XTDK LLVM 19 · 1185 / 1185 words decoded
; bound names: _flat_row_reduce
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
000078  9f496000  addli r19, zero, 52
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
0000dc  9f8e8ef8  addli sp, sp, -960
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f0e07  addli r30, sp, 896
0000ec  abf20000  lui r5, 15
0000f0  00560002  load_param_i r12, 0
0000f4  9bb12000  slli r3, r1, 2
0000f8  1f010100  addli r2, r2, 0
0000fc  e3435f00  loadli.w r7,  44(r30)
000100  63025f00  loadli.w r4,  40(r30)
000104  63036f00  loadli.w r6,  48(r30)
000108  9b92f2ff  ori r5, r5, 4095
00010c  0b942110  add.s r8, r3, r2
000110  0b924320  mul.s r4, r7, r4
000114  9f042410  addli r9, r8, 2064
000118  0b126220  mul.s r4, r4, r6
00011c  67469ffa  storeli.w r9, -668(r30)
000120  73e00400  stores.w zero, 0(r9)
000124  00a00300  mfence { lm, sm, gm }
000128  80a10204  csr_set csr3, r5
00012c  00d00100  sync_group
000130  e7068ffa  storeli.w r8, -664(r30)
000134  73600400  stores.w zero, 0(r8)
000138  00a00300  mfence { lm, sm, gm }
00013c  e74b5ffc  storeli.w r5, -324(r30)
000140  80a10204  csr_set csr3, r5
000144  00d00100  sync_group
000148  67064ffa  storeli.w r4, -672(r30)
00014c  cb78c206  ble.s r4, r12, 3644
000150  1f024000  addli r4, zero, 32
000154  00d50002  load_param_i r10, 1
000158  9f170000  addli r15, zero, 1
00015c  eb568f00  load.d r[14:15], 8(r30)
000160  eb520f02  load.d r[6:7], 32(r30)
000164  6b548f01  load.d r[9:10], 24(r30)
000168  6e236362  vxor.u.mz vr6{mr1}, vr6, vr6
00016c  461c6f82  vstore_mask16.mz vr6{mr1}, 1216(r30)
000170  0b924030  div.s r4, r1, r4
000174  e745affa  storeli.w r10, -676(r30)
000178  9b335200  slli r7, r4, 5
00017c  1b32a200  slli r4, r4, 10
000180  8b937018  sub.s r7, r1, r7
000184  9b80f001  andi r1, r1, 31
000188  e7434ffa  storeli.w r4, -708(r30)
00018c  9bb35300  slli r7, r7, 5
000190  e7031ffa  storeli.w r1, -712(r30)
000194  33950328  sext_int2long r[11:12], r7
000198  e7057ffa  storeli.w r7, -680(r30)
00019c  abf3ffff  lui r7, 1048575
0001a0  9b9303f8  ori r7, r7, 3968
0001a4  1735f502  sll.d r[11:12], r[11:12], r15
0001a8  97817100  and r3, r3, r7
0001ac  8ba6a610  add.ul r[14:15], r[14:15], r[11:12]
0001b0  0b24a410  add.ul r[9:10], r[9:10], r[11:12]
0001b4  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
0001b8  9f038000  addli r7, zero, 64
0001bc  0b912110  add.s r2, r3, r2
0001c0  7338dfd4  store.d r[14:15], -688(r30)
0001c4  9f068ffe  addli r13, r30, -192
0001c8  1f070fff  addli r14, r30, -128
0001cc  73348fd4  store.d r[9:10], -696(r30)
0001d0  73305fd4  store.d r[6:7], -704(r30)
0001d4  9f002110  addli r1, r2, 2064
0001d8  67072ffa  storeli.w r2, -656(r30)
0001dc  e7461ffa  storeli.w r1, -660(r30)
0001e0  ab10833a  lui r1, 239665
0001e4  9b90f026  ori r1, r1, 623
0001e8  e74b1ff8  storeli.w r1, -836(r30)
0001ec  ab400000  lui r1, 4
0001f0  7e8000e0  vmmov mr0, r1
0001f4  5be00000  j 1792
0001f8  00a00300  mfence { lm, sm, gm }
0001fc  0be13921  mul.f.rn r2, r19, r19
000200  9f010000  addli r3, zero, 0
000204  e3407ffd  loadli.w r1,  -324(r30)
000208  80a10004  csr_set csr3, r1
00020c  00d00100  sync_group
000210  e340dffa  loadli.w r1,  -660(r30)
000214  efc00000  loads.w r1, 0(r1)
000218  8be06020  mul.f.rn r1, r1, r6
00021c  0be12018  sub.f.rn r2, r1, r2
000220  57f30100  jal 3992
000224  e3407ff9  loadli.w r1,  -836(r30)
000228  ab02803f  lui r5, 260096
00022c  ab0100f0  lui r3, 983040
000230  2b0200f0  lui r4, 983040
000234  42100fc2  vload_mask16.mz vr0{mr1}, 1536(r30)
000238  c2108fc2  vload_mask16.mz vr1{mr1}, 1600(r30)
00023c  1f030fff  addli r6, r30, -128
000240  8b601110  add.f.rn r1, r2, r1
000244  17a14901  xor r2, r19, r20
000248  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
00024c  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
000250  8f800008  sqrt.f.rn r1, r1
000254  8f801218  div.f.rn r1, r5, r1
000258  9f028000  addli r5, zero, 64
00025c  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
000260  8a901002  vmul.f.mz.rn vr1{mr1}, r1, vr1
000264  17913200  or r2, r5, r3
000268  97914200  or r3, r5, r4
00026c  6b528fd4  load.d r[5:6], -696(r30)
000270  7f216200  l_gm2lm r2, r6, 0(r[5:6])
000274  6b520fd4  load.d r[5:6], -704(r30)
000278  1f018fff  addli r2, r30, -64
00027c  ff212200  l_gm2lm r3, r2, 0(r[5:6])
000280  00a00000  mfence { lm }
000284  6b318ff8  load.hu r2, -120(r30)
000288  eb300ff8  load.hu r1, -128(r30)
00028c  6b3b2ff8  load.hu r22, -126(r30)
000290  6b3c4ff8  load.hu r24, -124(r30)
000294  6b3d6ff8  load.hu r26, -122(r30)
000298  6b3aeff9  load.hu r20, -98(r30)
00029c  67472ffa  storeli.w r2, -652(r30)
0002a0  6b31aff8  load.hu r2, -118(r30)
0002a4  b3910020  hfloat2float.rn r3, r1
0002a8  e7472ffa  storeli.w r2, -644(r30)
0002ac  6b31cff8  load.hu r2, -116(r30)
0002b0  67482ffa  storeli.w r2, -636(r30)
0002b4  6b31eff8  load.hu r2, -114(r30)
0002b8  e7482ffa  storeli.w r2, -628(r30)
0002bc  6b310ff9  load.hu r2, -112(r30)
0002c0  67492ffa  storeli.w r2, -620(r30)
0002c4  6b312ff9  load.hu r2, -110(r30)
0002c8  e7492ffa  storeli.w r2, -612(r30)
0002cc  6b314ff9  load.hu r2, -108(r30)
0002d0  674a2ffa  storeli.w r2, -604(r30)
0002d4  6b316ff9  load.hu r2, -106(r30)
0002d8  e74a2ffa  storeli.w r2, -596(r30)
0002dc  6b318ff9  load.hu r2, -104(r30)
0002e0  674b2ffa  storeli.w r2, -588(r30)
0002e4  6b31aff9  load.hu r2, -102(r30)
0002e8  e74b2ffa  storeli.w r2, -580(r30)
0002ec  6b31cff9  load.hu r2, -100(r30)
0002f0  674c2ffa  storeli.w r2, -572(r30)
0002f4  6b310ffa  load.hu r2, -96(r30)
0002f8  e70c2ffa  storeli.w r2, -568(r30)
0002fc  6b312ffa  load.hu r2, -94(r30)
000300  e74c2ffa  storeli.w r2, -564(r30)
000304  6b314ffa  load.hu r2, -92(r30)
000308  670d2ffa  storeli.w r2, -560(r30)
00030c  6b316ffa  load.hu r2, -90(r30)
000310  674d2ffa  storeli.w r2, -556(r30)
000314  6b318ffa  load.hu r2, -88(r30)
000318  e70d2ffa  storeli.w r2, -552(r30)
00031c  6b31affa  load.hu r2, -86(r30)
000320  e74d2ffa  storeli.w r2, -548(r30)
000324  6b31cffa  load.hu r2, -84(r30)
000328  670e2ffa  storeli.w r2, -544(r30)
00032c  6b31effa  load.hu r2, -82(r30)
000330  674e2ffa  storeli.w r2, -540(r30)
000334  6b310ffb  load.hu r2, -80(r30)
000338  e70e2ffa  storeli.w r2, -536(r30)
00033c  6b312ffb  load.hu r2, -78(r30)
000340  e74e2ffa  storeli.w r2, -532(r30)
000344  6b314ffb  load.hu r2, -76(r30)
000348  670f2ffa  storeli.w r2, -528(r30)
00034c  6b316ffb  load.hu r2, -74(r30)
000350  674f2ffa  storeli.w r2, -524(r30)
000354  6b318ffb  load.hu r2, -72(r30)
000358  e70f2ffa  storeli.w r2, -520(r30)
00035c  6b31affb  load.hu r2, -70(r30)
000360  e74f2ffa  storeli.w r2, -516(r30)
000364  6b31cffb  load.hu r2, -68(r30)
000368  00a00000  mfence { lm }
00036c  67002ffc  storeli.w r2, -512(r30)
000370  6b31effb  load.hu r2, -66(r30)
000374  67042ffc  storeli.w r2, -448(r30)
000378  00a00000  mfence { lm }
00037c  6b3ecffe  load.hu r28, -20(r30)
000380  42138f83  vload_mask16.mz vr6{mr1}, 1216(r30)
000384  eb300ffc  load.hu r1, -64(r30)
000388  6b312ffc  load.hu r2, -62(r30)
00038c  6b324ffc  load.hu r4, -60(r30)
000390  eb326ffc  load.hu r5, -58(r30)
000394  6b338ffc  load.hu r6, -56(r30)
000398  eb33affc  load.hu r7, -54(r30)
00039c  6b34cffc  load.hu r8, -52(r30)
0003a0  eb34effc  load.hu r9, -50(r30)
0003a4  6b350ffd  load.hu r10, -48(r30)
0003a8  eb352ffd  load.hu r11, -46(r30)
0003ac  6b364ffd  load.hu r12, -44(r30)
0003b0  eb366ffd  load.hu r13, -42(r30)
0003b4  6b378ffd  load.hu r14, -40(r30)
0003b8  eb37affd  load.hu r15, -38(r30)
0003bc  6b38cffd  load.hu r16, -36(r30)
0003c0  eb38effd  load.hu r17, -34(r30)
0003c4  6b390ffe  load.hu r18, -32(r30)
0003c8  eb392ffe  load.hu r19, -30(r30)
0003cc  eb3a4ffe  load.hu r21, -28(r30)
0003d0  eb3b6ffe  load.hu r23, -26(r30)
0003d4  eb3c8ffe  load.hu r25, -24(r30)
0003d8  eb3daffe  load.hu r27, -22(r30)
0003dc  e707cffb  storeli.w r28, -648(r30)
0003e0  6b3eeffe  load.hu r28, -18(r30)
0003e4  b3900020  hfloat2float.rn r1, r1
0003e8  6708cffb  storeli.w r28, -640(r30)
0003ec  6b3e0fff  load.hu r28, -16(r30)
0003f0  12316002  vadd.s.mz vr2{mr1}, zero, vr6
0003f4  92316002  vadd.s.mz vr3{mr1}, zero, vr6
0003f8  12326002  vadd.s.mz vr4{mr1}, zero, vr6
0003fc  92326002  vadd.s.mz vr5{mr1}, zero, vr6
000400  e708cffb  storeli.w r28, -632(r30)
000404  6b3e2fff  load.hu r28, -14(r30)
000408  6709cffb  storeli.w r28, -624(r30)
00040c  6b3e4fff  load.hu r28, -12(r30)
000410  e709cffb  storeli.w r28, -616(r30)
000414  6b3e6fff  load.hu r28, -10(r30)
000418  670acffb  storeli.w r28, -608(r30)
00041c  6b3e8fff  load.hu r28, -8(r30)
000420  e70acffb  storeli.w r28, -600(r30)
000424  6b3eafff  load.hu r28, -6(r30)
000428  670bcffb  storeli.w r28, -592(r30)
00042c  6b3ecfff  load.hu r28, -4(r30)
000430  e70bcffb  storeli.w r28, -584(r30)
000434  6b3eefff  load.hu r28, -2(r30)
000438  670ccffb  storeli.w r28, -576(r30)
00043c  6aa12130  vor.u.mh vr2{mr0}, r3, vr2
000440  b3110b20  hfloat2float.rn r3, r22
000444  1f2b0000  addli r22, zero, 2
000448  7e000be0  vmmov mr0, r22
00044c  1f4b0000  addli r22, zero, 4
000450  6aa12130  vor.u.mh vr2{mr0}, r3, vr2
000454  b3110c20  hfloat2float.rn r3, r24
000458  fe010be0  vmmov mr3, r22
00045c  1f0b1000  addli r22, zero, 8
000460  7e010be0  vmmov mr2, r22
000464  1f0b2000  addli r22, zero, 16
000468  6aa12136  vor.u.mh vr2{mr3}, r3, vr2
00046c  b3110d20  hfloat2float.rn r3, r26
000470  fe010be0  vmmov mr3, r22
000474  1f0b4000  addli r22, zero, 32
000478  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
00047c  e341effa  loadli.w r3,  -652(r30)
000480  7e010be0  vmmov mr2, r22
000484  1f0b8000  addli r22, zero, 64
000488  b3910120  hfloat2float.rn r3, r3
00048c  6aa12136  vor.u.mh vr2{mr3}, r3, vr2
000490  e341fffa  loadli.w r3,  -644(r30)
000494  fe010be0  vmmov mr3, r22
000498  1f0b0001  addli r22, zero, 128
00049c  b3910120  hfloat2float.rn r3, r3
0004a0  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
0004a4  e3410ffb  loadli.w r3,  -636(r30)
0004a8  7e010be0  vmmov mr2, r22
0004ac  1f0b0002  addli r22, zero, 256
0004b0  b3910120  hfloat2float.rn r3, r3
0004b4  6aa12136  vor.u.mh vr2{mr3}, r3, vr2
0004b8  e3411ffb  loadli.w r3,  -628(r30)
0004bc  fe010be0  vmmov mr3, r22
0004c0  1f0b0004  addli r22, zero, 512
0004c4  b3910120  hfloat2float.rn r3, r3
0004c8  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
0004cc  e3412ffb  loadli.w r3,  -620(r30)
0004d0  7e010be0  vmmov mr2, r22
0004d4  1f0b0008  addli r22, zero, 1024
0004d8  b3910120  hfloat2float.rn r3, r3
0004dc  6aa12136  vor.u.mh vr2{mr3}, r3, vr2
0004e0  e3413ffb  loadli.w r3,  -612(r30)
0004e4  fe010be0  vmmov mr3, r22
0004e8  1f0b0010  addli r22, zero, 2048
0004ec  b3910120  hfloat2float.rn r3, r3
0004f0  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
0004f4  e3414ffb  loadli.w r3,  -604(r30)
0004f8  7e010be0  vmmov mr2, r22
0004fc  1f0b0020  addli r22, zero, 4096
000500  b3910120  hfloat2float.rn r3, r3
000504  6aa12136  vor.u.mh vr2{mr3}, r3, vr2
000508  e3415ffb  loadli.w r3,  -596(r30)
00050c  fe010be0  vmmov mr3, r22
000510  1f0b0040  addli r22, zero, 8192
000514  b3910120  hfloat2float.rn r3, r3
000518  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
00051c  e3416ffb  loadli.w r3,  -588(r30)
000520  7e010be0  vmmov mr2, r22
000524  2b4b0000  lui r22, 4
000528  b3910120  hfloat2float.rn r3, r3
00052c  6aa12136  vor.u.mh vr2{mr3}, r3, vr2
000530  e3417ffb  loadli.w r3,  -580(r30)
000534  fe010be0  vmmov mr3, r22
000538  2b8b0000  lui r22, 8
00053c  b3910120  hfloat2float.rn r3, r3
000540  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
000544  e3418ffb  loadli.w r3,  -572(r30)
000548  7e010be0  vmmov mr2, r22
00054c  b3910120  hfloat2float.rn r3, r3
000550  6aa12136  vor.u.mh vr2{mr3}, r3, vr2
000554  b3110a20  hfloat2float.rn r3, r20
000558  630a9ffb  loadli.w r20,  -568(r30)
00055c  331a0a20  hfloat2float.rn r20, r20
000560  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
000564  9f110000  addli r3, zero, 1
000568  7e8001e0  vmmov mr0, r3
00056c  ea213a30  vor.u.mh vr3{mr0}, r20, vr3
000570  e3419ffb  loadli.w r3,  -564(r30)
000574  1f2a0000  addli r20, zero, 2
000578  7e000ae0  vmmov mr0, r20
00057c  1f4a0000  addli r20, zero, 4
000580  b3910120  hfloat2float.rn r3, r3
000584  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
000588  e301affb  loadli.w r3,  -560(r30)
00058c  7e000ae0  vmmov mr0, r20
000590  1f0a1000  addli r20, zero, 8
000594  b3910120  hfloat2float.rn r3, r3
000598  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
00059c  e341affb  loadli.w r3,  -556(r30)
0005a0  7e000ae0  vmmov mr0, r20
0005a4  1f0a2000  addli r20, zero, 16
0005a8  b3910120  hfloat2float.rn r3, r3
0005ac  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
0005b0  e301bffb  loadli.w r3,  -552(r30)
0005b4  7e000ae0  vmmov mr0, r20
0005b8  1f0a4000  addli r20, zero, 32
0005bc  b3910120  hfloat2float.rn r3, r3
0005c0  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
0005c4  e341bffb  loadli.w r3,  -548(r30)
0005c8  7e000ae0  vmmov mr0, r20
0005cc  1f0a8000  addli r20, zero, 64
0005d0  b3910120  hfloat2float.rn r3, r3
0005d4  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
0005d8  e301cffb  loadli.w r3,  -544(r30)
0005dc  7e000ae0  vmmov mr0, r20
0005e0  1f0a0001  addli r20, zero, 128
0005e4  b3910120  hfloat2float.rn r3, r3
0005e8  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
0005ec  e341cffb  loadli.w r3,  -540(r30)
0005f0  7e000ae0  vmmov mr0, r20
0005f4  1f0a0002  addli r20, zero, 256
0005f8  b3910120  hfloat2float.rn r3, r3
0005fc  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
000600  e301dffb  loadli.w r3,  -536(r30)
000604  7e000ae0  vmmov mr0, r20
000608  1f0a0004  addli r20, zero, 512
00060c  b3910120  hfloat2float.rn r3, r3
000610  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
000614  e341dffb  loadli.w r3,  -532(r30)
000618  7e000ae0  vmmov mr0, r20
00061c  1f0a0008  addli r20, zero, 1024
000620  b3910120  hfloat2float.rn r3, r3
000624  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
000628  e301effb  loadli.w r3,  -528(r30)
00062c  7e000ae0  vmmov mr0, r20
000630  1f0a0010  addli r20, zero, 2048
000634  b3910120  hfloat2float.rn r3, r3
000638  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
00063c  e341effb  loadli.w r3,  -524(r30)
000640  7e000ae0  vmmov mr0, r20
000644  1f0a0020  addli r20, zero, 4096
000648  b3910120  hfloat2float.rn r3, r3
00064c  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
000650  e301fffb  loadli.w r3,  -520(r30)
000654  7e000ae0  vmmov mr0, r20
000658  1f0a0040  addli r20, zero, 8192
00065c  b3910120  hfloat2float.rn r3, r3
000660  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
000664  e341fffb  loadli.w r3,  -516(r30)
000668  7e000ae0  vmmov mr0, r20
00066c  b3910120  hfloat2float.rn r3, r3
000670  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
000674  e3010ffc  loadli.w r3,  -512(r30)
000678  b3910120  hfloat2float.rn r3, r3
00067c  eaa13136  vor.u.mh vr3{mr3}, r3, vr3
000680  e3018ffc  loadli.w r3,  -448(r30)
000684  b3910120  hfloat2float.rn r3, r3
000688  eaa13134  vor.u.mh vr3{mr2}, r3, vr3
00068c  9f110000  addli r3, zero, 1
000690  7e8001e0  vmmov mr0, r3
000694  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000698  b3100120  hfloat2float.rn r1, r2
00069c  1f210000  addli r2, zero, 2
0006a0  7e0001e0  vmmov mr0, r2
0006a4  1f410000  addli r2, zero, 4
0006a8  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0006ac  b3100220  hfloat2float.rn r1, r4
0006b0  7e0001e0  vmmov mr0, r2
0006b4  1f011000  addli r2, zero, 8
0006b8  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0006bc  b3900220  hfloat2float.rn r1, r5
0006c0  7e0001e0  vmmov mr0, r2
0006c4  1f012000  addli r2, zero, 16
0006c8  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0006cc  b3100320  hfloat2float.rn r1, r6
0006d0  7e0001e0  vmmov mr0, r2
0006d4  1f014000  addli r2, zero, 32
0006d8  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0006dc  b3900320  hfloat2float.rn r1, r7
0006e0  7e0001e0  vmmov mr0, r2
0006e4  1f018000  addli r2, zero, 64
0006e8  9f038000  addli r7, zero, 64
0006ec  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0006f0  b3100420  hfloat2float.rn r1, r8
0006f4  7e0001e0  vmmov mr0, r2
0006f8  1f010001  addli r2, zero, 128
0006fc  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000700  b3900420  hfloat2float.rn r1, r9
000704  7e0001e0  vmmov mr0, r2
000708  1f010002  addli r2, zero, 256
00070c  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000710  b3100520  hfloat2float.rn r1, r10
000714  7e0001e0  vmmov mr0, r2
000718  1f010004  addli r2, zero, 512
00071c  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000720  b3900520  hfloat2float.rn r1, r11
000724  7e0001e0  vmmov mr0, r2
000728  1f010008  addli r2, zero, 1024
00072c  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000730  b3100620  hfloat2float.rn r1, r12
000734  7e0001e0  vmmov mr0, r2
000738  1f010010  addli r2, zero, 2048
00073c  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000740  b3900620  hfloat2float.rn r1, r13
000744  7e0001e0  vmmov mr0, r2
000748  1f010020  addli r2, zero, 4096
00074c  9f068ffe  addli r13, r30, -192
000750  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000754  b3100720  hfloat2float.rn r1, r14
000758  7e0001e0  vmmov mr0, r2
00075c  1f010040  addli r2, zero, 8192
000760  1f070fff  addli r14, r30, -128
000764  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000768  b3900720  hfloat2float.rn r1, r15
00076c  7e0001e0  vmmov mr0, r2
000770  33110920  hfloat2float.rn r2, r18
000774  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
000778  b3100820  hfloat2float.rn r1, r16
00077c  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
000780  b3900820  hfloat2float.rn r1, r17
000784  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000788  9f100000  addli r1, zero, 1
00078c  26122002  vmac.f.mz.rn vr4{mr1}, vr0, vr2
000790  7e8000e0  vmmov mr0, r1
000794  b3900920  hfloat2float.rn r1, r19
000798  ea225130  vor.u.mh vr5{mr0}, r2, vr5
00079c  1f210000  addli r2, zero, 2
0007a0  7e0001e0  vmmov mr0, r2
0007a4  1f410000  addli r2, zero, 4
0007a8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0007ac  b3900a20  hfloat2float.rn r1, r21
0007b0  7e0001e0  vmmov mr0, r2
0007b4  1f011000  addli r2, zero, 8
0007b8  fe0101e0  vmmov mr3, r2
0007bc  1f012000  addli r2, zero, 16
0007c0  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0007c4  b3900b20  hfloat2float.rn r1, r23
0007c8  7e0001e0  vmmov mr0, r2
0007cc  1f014000  addli r2, zero, 32
0007d0  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
0007d4  b3900c20  hfloat2float.rn r1, r25
0007d8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0007dc  b3900d20  hfloat2float.rn r1, r27
0007e0  7e0001e0  vmmov mr0, r2
0007e4  1f018000  addli r2, zero, 64
0007e8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0007ec  e300fffa  loadli.w r1,  -648(r30)
0007f0  7e0001e0  vmmov mr0, r2
0007f4  1f010001  addli r2, zero, 128
0007f8  b3900020  hfloat2float.rn r1, r1
0007fc  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000800  e3000ffb  loadli.w r1,  -640(r30)
000804  7e0001e0  vmmov mr0, r2
000808  1f010002  addli r2, zero, 256
00080c  b3900020  hfloat2float.rn r1, r1
000810  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000814  e3001ffb  loadli.w r1,  -632(r30)
000818  7e0001e0  vmmov mr0, r2
00081c  1f010004  addli r2, zero, 512
000820  b3900020  hfloat2float.rn r1, r1
000824  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000828  e3002ffb  loadli.w r1,  -624(r30)
00082c  7e0001e0  vmmov mr0, r2
000830  1f010008  addli r2, zero, 1024
000834  b3900020  hfloat2float.rn r1, r1
000838  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
00083c  e3003ffb  loadli.w r1,  -616(r30)
000840  7e0001e0  vmmov mr0, r2
000844  1f010010  addli r2, zero, 2048
000848  b3900020  hfloat2float.rn r1, r1
00084c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000850  e3004ffb  loadli.w r1,  -608(r30)
000854  7e0001e0  vmmov mr0, r2
000858  1f010020  addli r2, zero, 4096
00085c  b3900020  hfloat2float.rn r1, r1
000860  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000864  e3005ffb  loadli.w r1,  -600(r30)
000868  7e0001e0  vmmov mr0, r2
00086c  1f010040  addli r2, zero, 8192
000870  b3900020  hfloat2float.rn r1, r1
000874  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000878  e3006ffb  loadli.w r1,  -592(r30)
00087c  7e0001e0  vmmov mr0, r2
000880  2b410000  lui r2, 4
000884  fe0101e0  vmmov mr3, r2
000888  b3900020  hfloat2float.rn r1, r1
00088c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
000890  e3007ffb  loadli.w r1,  -584(r30)
000894  7e8001c0  vmmov mr0, mr3
000898  b3900020  hfloat2float.rn r1, r1
00089c  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
0008a0  e3008ffb  loadli.w r1,  -576(r30)
0008a4  b3900020  hfloat2float.rn r1, r1
0008a8  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
0008ac  eb500f01  load.d r[2:3], 16(r30)
0008b0  eb510feb  load.d r[4:5], -336(r30)
0008b4  a6923002  vmac.f.mz.rn vr5{mr1}, vr1, vr3
0008b8  06100200  vfloat2fp16_l.rn vr0, vr4
0008bc  06d00200  vfloat2fp16_h.rn vr0, vr5
0008c0  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
0008c4  00a00000  mfence { lm }
0008c8  8ba03010  add.ul r[2:3], r[2:3], r[4:5]
0008cc  ab0100f0  lui r3, 983040
0008d0  63067ffd  loadli.w r12,  -328(r30)
0008d4  97913300  or r3, r7, r3
0008d8  ffb1d000  s_lm2gm r3, r13, 0(r[2:3])
0008dc  e340bffa  loadli.w r1,  -676(r30)
0008e0  00a00000  mfence { lm }
0008e4  0b161610  add.s r12, r12, r1
0008e8  e300cffa  loadli.w r1,  -672(r30)
0008ec  3f201600  blt.s r12, r1, 8
0008f0  5bd30000  j 1688
0008f4  e3006f00  loadli.w r1,  48(r30)
0008f8  e3415f00  loadli.w r3,  44(r30)
0008fc  2b0100f0  lui r2, 983040
000900  1f230000  addli r6, zero, 2
000904  2b0200f0  lui r4, 983040
000908  ab0200f0  lui r5, 983040
00090c  6304bffa  loadli.w r8,  -680(r30)
000910  e70bcffc  storeli.w r12, -328(r30)
000914  6b550f00  load.d r[11:12], 0(r30)
000918  92306002  vadd.s.mz vr1{mr1}, zero, vr6
00091c  17112300  or r2, r6, r2
000920  17924300  or r4, r7, r4
000924  97925300  or r5, r7, r5
000928  8b101630  div.s r1, r12, r1
00092c  1f160000  addli r12, zero, 1
000930  8b903030  div.s r1, r1, r3
000934  ab0100f0  lui r3, 983040
000938  97113300  or r3, r6, r3
00093c  63437ffa  loadli.w r6,  -708(r30)
000940  9bb0b000  slli r1, r1, 11
000944  8b906010  add.s r1, r1, r6
000948  33930028  sext_int2long r[7:8], r1
00094c  8b908010  add.s r1, r1, r8
000950  1733c302  sll.d r[7:8], r[7:8], r12
000954  33940028  sext_int2long r[9:10], r1
000958  9f008ffd  addli r1, r30, -320
00095c  0b236510  add.ul r[7:8], r[11:12], r[7:8]
000960  1734c402  sll.d r[9:10], r[9:10], r12
000964  7f211300  l_gm2lm r2, r1, 0(r[7:8])
000968  6b538f00  load.d r[7:8], 8(r30)
00096c  73388fea  store.d r[9:10], -336(r30)
000970  8b208510  add.ul r[2:3], r[11:12], r[9:10]
000974  1f040ffe  addli r8, r30, -256
000978  ff218300  l_gm2lm r3, r8, 0(r[7:8])
00097c  7fa2d000  l_gm2lm r4, r13, 0(r[2:3])
000980  eb500fd5  load.d r[2:3], -688(r30)
000984  ffa2e000  l_gm2lm r5, r14, 0(r[2:3])
000988  00a00000  mfence { lm }
00098c  eb300ff0  load.hu r1, -256(r30)
000990  6b310fec  load.hu r2, -320(r30)
000994  6b360ff8  load.hu r12, -128(r30)
000998  42108fe2  vload_mask16.mz vr0{mr1}, 1856(r30)
00099c  eb362ff8  load.hu r13, -126(r30)
0009a0  6b374ff8  load.hu r14, -124(r30)
0009a4  eb376ff8  load.hu r15, -122(r30)
0009a8  6b388ff8  load.hu r16, -120(r30)
0009ac  eb38aff8  load.hu r17, -118(r30)
0009b0  6b39cff8  load.hu r18, -116(r30)
0009b4  eb39eff8  load.hu r19, -114(r30)
0009b8  eb3a0ff9  load.hu r21, -112(r30)
0009bc  6b3b2ff9  load.hu r22, -110(r30)
0009c0  eb3b4ff9  load.hu r23, -108(r30)
0009c4  6b3c6ff9  load.hu r24, -106(r30)
0009c8  eb3c8ff9  load.hu r25, -104(r30)
0009cc  6b3daff9  load.hu r26, -102(r30)
0009d0  eb3dcff9  load.hu r27, -100(r30)
0009d4  6b3eeff9  load.hu r28, -98(r30)
0009d8  6b3a0ffa  load.hu r20, -96(r30)
0009dc  eb314ffa  load.hu r3, -92(r30)
0009e0  6b326ffa  load.hu r4, -90(r30)
0009e4  eb328ffa  load.hu r5, -88(r30)
0009e8  6b33affa  load.hu r6, -86(r30)
0009ec  eb33cffa  load.hu r7, -84(r30)
0009f0  eb35effa  load.hu r11, -82(r30)
0009f4  6b350ffb  load.hu r10, -80(r30)
0009f8  eb342ffb  load.hu r9, -78(r30)
0009fc  6b344ffb  load.hu r8, -76(r30)
000a00  e74f1ffa  storeli.w r1, -516(r30)
000a04  eb306ffb  load.hu r1, -74(r30)
000a08  67042ffc  storeli.w r2, -448(r30)
000a0c  6b312ffa  load.hu r2, -94(r30)
000a10  e74e1ffa  storeli.w r1, -532(r30)
000a14  eb308ffb  load.hu r1, -72(r30)
000a18  670f1ffa  storeli.w r1, -528(r30)
000a1c  eb30affb  load.hu r1, -70(r30)
000a20  674f1ffa  storeli.w r1, -524(r30)
000a24  eb30cffb  load.hu r1, -68(r30)
000a28  e70f1ffa  storeli.w r1, -520(r30)
000a2c  eb30effb  load.hu r1, -66(r30)
000a30  67001ffc  storeli.w r1, -512(r30)
000a34  9f100000  addli r1, zero, 1
000a38  00a00000  mfence { lm }
000a3c  7e0100c0  vmmov mr2, mr0
000a40  fe8100e0  vmmov mr3, r1
000a44  9f200000  addli r1, zero, 2
000a48  ea401636  vor.hf.mh vr1{mr3}, r12, vr1
000a4c  7e8000e0  vmmov mr0, r1
000a50  9f400000  addli r1, zero, 4
000a54  eac01630  vor.hf.mh vr1{mr0}, r13, vr1
000a58  7e8000e0  vmmov mr0, r1
000a5c  9f001000  addli r1, zero, 8
000a60  ea401730  vor.hf.mh vr1{mr0}, r14, vr1
000a64  7e8000e0  vmmov mr0, r1
000a68  9f002000  addli r1, zero, 16
000a6c  eac01730  vor.hf.mh vr1{mr0}, r15, vr1
000a70  7e8000e0  vmmov mr0, r1
000a74  9f004000  addli r1, zero, 32
000a78  ea401830  vor.hf.mh vr1{mr0}, r16, vr1
000a7c  7e8000e0  vmmov mr0, r1
000a80  9f008000  addli r1, zero, 64
000a84  eac01830  vor.hf.mh vr1{mr0}, r17, vr1
000a88  7e8000e0  vmmov mr0, r1
000a8c  9f000001  addli r1, zero, 128
000a90  ea401930  vor.hf.mh vr1{mr0}, r18, vr1
000a94  7e8000e0  vmmov mr0, r1
000a98  9f000002  addli r1, zero, 256
000a9c  eac01930  vor.hf.mh vr1{mr0}, r19, vr1
000aa0  7e8000e0  vmmov mr0, r1
000aa4  9f000004  addli r1, zero, 512
000aa8  eac01a30  vor.hf.mh vr1{mr0}, r21, vr1
000aac  7e8000e0  vmmov mr0, r1
000ab0  9f000008  addli r1, zero, 1024
000ab4  ea401b30  vor.hf.mh vr1{mr0}, r22, vr1
000ab8  7e8000e0  vmmov mr0, r1
000abc  9f000010  addli r1, zero, 2048
000ac0  eac01b30  vor.hf.mh vr1{mr0}, r23, vr1
000ac4  7e8000e0  vmmov mr0, r1
000ac8  9f000020  addli r1, zero, 4096
000acc  ea401c30  vor.hf.mh vr1{mr0}, r24, vr1
000ad0  7e8000e0  vmmov mr0, r1
000ad4  9f000040  addli r1, zero, 8192
000ad8  eac01c30  vor.hf.mh vr1{mr0}, r25, vr1
000adc  7e8000e0  vmmov mr0, r1
000ae0  ab800000  lui r1, 8
000ae4  ea401d30  vor.hf.mh vr1{mr0}, r26, vr1
000ae8  7e8000e0  vmmov mr0, r1
000aec  ab000100  lui r1, 16
000af0  eac01d34  vor.hf.mh vr1{mr2}, r27, vr1
000af4  ea401e30  vor.hf.mh vr1{mr0}, r28, vr1
000af8  7e8000e0  vmmov mr0, r1
000afc  63467ffd  loadli.w r12,  -324(r30)
000b00  ab000200  lui r1, 32
000b04  ea401a30  vor.hf.mh vr1{mr0}, r20, vr1
000b08  7e8000e0  vmmov mr0, r1
000b0c  ab000400  lui r1, 64
000b10  2b0a0080  lui r20, 524288
000b14  ea401130  vor.hf.mh vr1{mr0}, r2, vr1
000b18  7e8000e0  vmmov mr0, r1
000b1c  ab000800  lui r1, 128
000b20  eac01130  vor.hf.mh vr1{mr0}, r3, vr1
000b24  7e8000e0  vmmov mr0, r1
000b28  ab001000  lui r1, 256
000b2c  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
000b30  7e8000e0  vmmov mr0, r1
000b34  ab002000  lui r1, 512
000b38  eac01230  vor.hf.mh vr1{mr0}, r5, vr1
000b3c  7e8000e0  vmmov mr0, r1
000b40  ab004000  lui r1, 1024
000b44  ea401330  vor.hf.mh vr1{mr0}, r6, vr1
000b48  7e8000e0  vmmov mr0, r1
000b4c  ab008000  lui r1, 2048
000b50  eac01330  vor.hf.mh vr1{mr0}, r7, vr1
000b54  7e8000e0  vmmov mr0, r1
000b58  ab000001  lui r1, 4096
000b5c  eac01530  vor.hf.mh vr1{mr0}, r11, vr1
000b60  7e8000e0  vmmov mr0, r1
000b64  ab000002  lui r1, 8192
000b68  ea401530  vor.hf.mh vr1{mr0}, r10, vr1
000b6c  7e8000e0  vmmov mr0, r1
000b70  ab000004  lui r1, 16384
000b74  eac01430  vor.hf.mh vr1{mr0}, r9, vr1
000b78  7e8000e0  vmmov mr0, r1
000b7c  ab000008  lui r1, 32768
000b80  ea401430  vor.hf.mh vr1{mr0}, r8, vr1
000b84  7e8000e0  vmmov mr0, r1
000b88  e340dffb  loadli.w r1,  -532(r30)
000b8c  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
000b90  ab000010  lui r1, 65536
000b94  7e8000e0  vmmov mr0, r1
000b98  e300effb  loadli.w r1,  -528(r30)
000b9c  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
000ba0  ab000020  lui r1, 131072
000ba4  7e8000e0  vmmov mr0, r1
000ba8  e340effb  loadli.w r1,  -524(r30)
000bac  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
000bb0  ab000040  lui r1, 262144
000bb4  7e8000e0  vmmov mr0, r1
000bb8  e300fffb  loadli.w r1,  -520(r30)
000bbc  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
000bc0  63018ffc  loadli.w r2,  -448(r30)
000bc4  e340fffb  loadli.w r1,  -516(r30)
000bc8  8bd02010  add.hf.rn r1, r1, r2
000bcc  2b010080  lui r2, 524288
000bd0  7e0001e0  vmmov mr0, r2
000bd4  63010ffc  loadli.w r2,  -512(r30)
000bd8  ea401130  vor.hf.mh vr1{mr0}, r2, vr1
000bdc  2b010080  lui r2, 524288
000be0  b3900020  hfloat2float.rn r1, r1
000be4  97a02000  xor r1, r1, r2
000be8  16401002  vadd.hf.mz.rn vr0{mr1}, vr0, vr1
000bec  06710000  vfp162float_h.rn vr2, vr0
000bf0  86300000  vfp162float_l.rn vr1, vr0
000bf4  92911002  vadd.f.mz.rn vr3{mr1}, r1, vr1
000bf8  12103002  vadd.f.mz.rn vr0{mr1}, zero, vr3
000bfc  12912002  vadd.f.mz.rn vr2{mr1}, r1, vr2
000c00  92102002  vadd.f.mz.rn vr1{mr1}, zero, vr2
000c04  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
000c08  fa100040  vextracti.f r1, 0(vr0)
000c0c  7a111040  vextracti.f r2, 1(vr0)
000c10  8be02010  add.f.rn r1, r1, r2
000c14  7a112040  vextracti.f r2, 2(vr0)
000c18  8b601110  add.f.rn r1, r2, r1
000c1c  7a113040  vextracti.f r2, 3(vr0)
000c20  8b601110  add.f.rn r1, r2, r1
000c24  7a114040  vextracti.f r2, 4(vr0)
000c28  8b601110  add.f.rn r1, r2, r1
000c2c  7a115040  vextracti.f r2, 5(vr0)
000c30  8b601110  add.f.rn r1, r2, r1
000c34  7a116040  vextracti.f r2, 6(vr0)
000c38  8b601110  add.f.rn r1, r2, r1
000c3c  7a117040  vextracti.f r2, 7(vr0)
000c40  8b601110  add.f.rn r1, r2, r1
000c44  7a118040  vextracti.f r2, 8(vr0)
000c48  8b601110  add.f.rn r1, r2, r1
000c4c  7a119040  vextracti.f r2, 9(vr0)
000c50  8b601110  add.f.rn r1, r2, r1
000c54  7a11a040  vextracti.f r2, 10(vr0)
000c58  8b601110  add.f.rn r1, r2, r1
000c5c  7a11b040  vextracti.f r2, 11(vr0)
000c60  8b601110  add.f.rn r1, r2, r1
000c64  7a11c040  vextracti.f r2, 12(vr0)
000c68  8b601110  add.f.rn r1, r2, r1
000c6c  7a11d040  vextracti.f r2, 13(vr0)
000c70  8b601110  add.f.rn r1, r2, r1
000c74  7a11e040  vextracti.f r2, 14(vr0)
000c78  8b601110  add.f.rn r1, r2, r1
000c7c  7a11f040  vextracti.f r2, 15(vr0)
000c80  8b601110  add.f.rn r1, r2, r1
000c84  6301dffa  loadli.w r2,  -664(r30)
000c88  73601100  stores.w r1, 0(r2)
000c8c  00a00300  mfence { lm, sm, gm }
000c90  80210604  csr_set csr3, r12
000c94  00d00100  sync_group
000c98  e3027ffa  loadli.w r5,  -712(r30)
000c9c  3ba40200  bneq r5, zero, 264
000ca0  6302effa  loadli.w r4,  -656(r30)
000ca4  ef400200  loads.w r1, 0(r4)
000ca8  6f414200  loads.w r2, 4(r4)
000cac  ef418200  loads.w r3, 8(r4)
000cb0  8be02010  add.f.rn r1, r1, r2
000cb4  6f41c200  loads.w r2, 12(r4)
000cb8  8be03010  add.f.rn r1, r1, r3
000cbc  ef410201  loads.w r3, 16(r4)
000cc0  8be02010  add.f.rn r1, r1, r2
000cc4  6f414201  loads.w r2, 20(r4)
000cc8  8be03010  add.f.rn r1, r1, r3
000ccc  ef418201  loads.w r3, 24(r4)
000cd0  8be02010  add.f.rn r1, r1, r2
000cd4  6f41c201  loads.w r2, 28(r4)
000cd8  8be03010  add.f.rn r1, r1, r3
000cdc  ef410202  loads.w r3, 32(r4)
000ce0  8be02010  add.f.rn r1, r1, r2
000ce4  6f414202  loads.w r2, 36(r4)
000ce8  8be03010  add.f.rn r1, r1, r3
000cec  ef418202  loads.w r3, 40(r4)
000cf0  8be02010  add.f.rn r1, r1, r2
000cf4  6f41c202  loads.w r2, 44(r4)
000cf8  8be03010  add.f.rn r1, r1, r3
000cfc  ef410203  loads.w r3, 48(r4)
000d00  8be02010  add.f.rn r1, r1, r2
000d04  6f414203  loads.w r2, 52(r4)
000d08  8be03010  add.f.rn r1, r1, r3
000d0c  ef418203  loads.w r3, 56(r4)
000d10  8be02010  add.f.rn r1, r1, r2
000d14  6f41c203  loads.w r2, 60(r4)
000d18  8be03010  add.f.rn r1, r1, r3
000d1c  ef410204  loads.w r3, 64(r4)
000d20  8be02010  add.f.rn r1, r1, r2
000d24  6f414204  loads.w r2, 68(r4)
000d28  8be03010  add.f.rn r1, r1, r3
000d2c  ef418204  loads.w r3, 72(r4)
000d30  8be02010  add.f.rn r1, r1, r2
000d34  6f41c204  loads.w r2, 76(r4)
000d38  8be03010  add.f.rn r1, r1, r3
000d3c  ef410205  loads.w r3, 80(r4)
000d40  8be02010  add.f.rn r1, r1, r2
000d44  6f414205  loads.w r2, 84(r4)
000d48  8be03010  add.f.rn r1, r1, r3
000d4c  ef418205  loads.w r3, 88(r4)
000d50  8be02010  add.f.rn r1, r1, r2
000d54  6f41c205  loads.w r2, 92(r4)
000d58  8be03010  add.f.rn r1, r1, r3
000d5c  ef410206  loads.w r3, 96(r4)
000d60  8be02010  add.f.rn r1, r1, r2
000d64  6f414206  loads.w r2, 100(r4)
000d68  8be03010  add.f.rn r1, r1, r3
000d6c  ef418206  loads.w r3, 104(r4)
000d70  8be02010  add.f.rn r1, r1, r2
000d74  6f41c206  loads.w r2, 108(r4)
000d78  8be03010  add.f.rn r1, r1, r3
000d7c  ef410207  loads.w r3, 112(r4)
000d80  8be02010  add.f.rn r1, r1, r2
000d84  6f414207  loads.w r2, 116(r4)
000d88  8be03010  add.f.rn r1, r1, r3
000d8c  ef418207  loads.w r3, 120(r4)
000d90  8be02010  add.f.rn r1, r1, r2
000d94  6f41c207  loads.w r2, 124(r4)
000d98  8be03010  add.f.rn r1, r1, r3
000d9c  8be02010  add.f.rn r1, r1, r2
000da0  73601200  stores.w r1, 0(r4)
000da4  0e903102  vmul.f.mz.rn vr0{mr1}, vr3, vr3
000da8  8e102102  vmul.f.mz.rn vr1{mr1}, vr2, vr2
000dac  9f100000  addli r1, zero, 1
000db0  2b03803a  lui r6, 239616
000db4  12100002  vadd.f.mz.rn vr0{mr1}, zero, vr0
000db8  92101002  vadd.f.mz.rn vr1{mr1}, zero, vr1
000dbc  00a00300  mfence { lm, sm, gm }
000dc0  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
000dc4  7e8000e0  vmmov mr0, r1
000dc8  63427ffd  loadli.w r4,  -324(r30)
000dcc  80210204  csr_set csr3, r4
000dd0  00d00100  sync_group
000dd4  e301effa  loadli.w r3,  -656(r30)
000dd8  fa100040  vextracti.f r1, 0(vr0)
000ddc  7a111040  vextracti.f r2, 1(vr0)
000de0  efc10100  loads.w r3, 0(r3)
000de4  8be02010  add.f.rn r1, r1, r2
000de8  7a112040  vextracti.f r2, 2(vr0)
000dec  8b601110  add.f.rn r1, r2, r1
000df0  7a113040  vextracti.f r2, 3(vr0)
000df4  8be96120  mul.f.rn r19, r3, r6
000df8  8b601110  add.f.rn r1, r2, r1
000dfc  7a114040  vextracti.f r2, 4(vr0)
000e00  8b601110  add.f.rn r1, r2, r1
000e04  7a115040  vextracti.f r2, 5(vr0)
000e08  8b601110  add.f.rn r1, r2, r1
000e0c  7a116040  vextracti.f r2, 6(vr0)
000e10  8b601110  add.f.rn r1, r2, r1
000e14  7a117040  vextracti.f r2, 7(vr0)
000e18  8b601110  add.f.rn r1, r2, r1
000e1c  7a118040  vextracti.f r2, 8(vr0)
000e20  8b601110  add.f.rn r1, r2, r1
000e24  7a119040  vextracti.f r2, 9(vr0)
000e28  8b601110  add.f.rn r1, r2, r1
000e2c  7a11a040  vextracti.f r2, 10(vr0)
000e30  8b601110  add.f.rn r1, r2, r1
000e34  7a11b040  vextracti.f r2, 11(vr0)
000e38  8b601110  add.f.rn r1, r2, r1
000e3c  7a11c040  vextracti.f r2, 12(vr0)
000e40  8b601110  add.f.rn r1, r2, r1
000e44  7a11d040  vextracti.f r2, 13(vr0)
000e48  8b601110  add.f.rn r1, r2, r1
000e4c  7a11e040  vextracti.f r2, 14(vr0)
000e50  8b601110  add.f.rn r1, r2, r1
000e54  7a11f040  vextracti.f r2, 15(vr0)
000e58  8b601110  add.f.rn r1, r2, r1
000e5c  6341cffa  loadli.w r2,  -668(r30)
000e60  73601100  stores.w r1, 0(r2)
000e64  00a00300  mfence { lm, sm, gm }
000e68  80210204  csr_set csr3, r4
000e6c  00d00100  sync_group
000e70  00a00000  mfence { lm }
000e74  46103fc2  vstore_mask16.mz vr3{mr1}, 1536(r30)
000e78  46142fc2  vstore_mask16.mz vr2{mr1}, 1600(r30)
000e7c  bbfd02f8  bneq r5, zero, -3204
000e80  6342dffa  loadli.w r4,  -660(r30)
000e84  ef400200  loads.w r1, 0(r4)
000e88  6f414200  loads.w r2, 4(r4)
000e8c  ef418200  loads.w r3, 8(r4)
000e90  8be02010  add.f.rn r1, r1, r2
000e94  6f41c200  loads.w r2, 12(r4)
000e98  8be03010  add.f.rn r1, r1, r3
000e9c  ef410201  loads.w r3, 16(r4)
000ea0  8be02010  add.f.rn r1, r1, r2
000ea4  6f414201  loads.w r2, 20(r4)
000ea8  8be03010  add.f.rn r1, r1, r3
000eac  ef418201  loads.w r3, 24(r4)
000eb0  8be02010  add.f.rn r1, r1, r2
000eb4  6f41c201  loads.w r2, 28(r4)
000eb8  8be03010  add.f.rn r1, r1, r3
000ebc  ef410202  loads.w r3, 32(r4)
000ec0  8be02010  add.f.rn r1, r1, r2
000ec4  6f414202  loads.w r2, 36(r4)
000ec8  8be03010  add.f.rn r1, r1, r3
000ecc  ef418202  loads.w r3, 40(r4)
000ed0  8be02010  add.f.rn r1, r1, r2
000ed4  6f41c202  loads.w r2, 44(r4)
000ed8  8be03010  add.f.rn r1, r1, r3
000edc  ef410203  loads.w r3, 48(r4)
000ee0  8be02010  add.f.rn r1, r1, r2
000ee4  6f414203  loads.w r2, 52(r4)
000ee8  8be03010  add.f.rn r1, r1, r3
000eec  ef418203  loads.w r3, 56(r4)
000ef0  8be02010  add.f.rn r1, r1, r2
000ef4  6f41c203  loads.w r2, 60(r4)
000ef8  8be03010  add.f.rn r1, r1, r3
000efc  ef410204  loads.w r3, 64(r4)
000f00  8be02010  add.f.rn r1, r1, r2
000f04  6f414204  loads.w r2, 68(r4)
000f08  8be03010  add.f.rn r1, r1, r3
000f0c  ef418204  loads.w r3, 72(r4)
000f10  8be02010  add.f.rn r1, r1, r2
000f14  6f41c204  loads.w r2, 76(r4)
000f18  8be03010  add.f.rn r1, r1, r3
000f1c  ef410205  loads.w r3, 80(r4)
000f20  8be02010  add.f.rn r1, r1, r2
000f24  6f414205  loads.w r2, 84(r4)
000f28  8be03010  add.f.rn r1, r1, r3
000f2c  ef418205  loads.w r3, 88(r4)
000f30  8be02010  add.f.rn r1, r1, r2
000f34  6f41c205  loads.w r2, 92(r4)
000f38  8be03010  add.f.rn r1, r1, r3
000f3c  ef410206  loads.w r3, 96(r4)
000f40  8be02010  add.f.rn r1, r1, r2
000f44  6f414206  loads.w r2, 100(r4)
000f48  8be03010  add.f.rn r1, r1, r3
000f4c  ef418206  loads.w r3, 104(r4)
000f50  8be02010  add.f.rn r1, r1, r2
000f54  6f41c206  loads.w r2, 108(r4)
000f58  8be03010  add.f.rn r1, r1, r3
000f5c  ef410207  loads.w r3, 112(r4)
000f60  8be02010  add.f.rn r1, r1, r2
000f64  6f414207  loads.w r2, 116(r4)
000f68  8be03010  add.f.rn r1, r1, r3
000f6c  ef418207  loads.w r3, 120(r4)
000f70  8be02010  add.f.rn r1, r1, r2
000f74  6f41c207  loads.w r2, 124(r4)
000f78  8be03010  add.f.rn r1, r1, r3
000f7c  8be02010  add.f.rn r1, r1, r2
000f80  73601200  stores.w r1, 0(r4)
000f84  db4efeff  j -3468
000f88  9f0e0ff9  addli sp, r30, -896
000f8c  9f8e0e07  addli sp, sp, 896
000f90  00a00300  mfence { lm, sm, gm }
000f94  00100000  exit
000f98  9f8efeff  addli sp, sp, -8
000f9c  9f000100  addli r1, r2, 0
000fa0  2bf1ff7f  lui r2, 524287
000fa4  ab02807f  lui r5, 522240
000fa8  67c0ee01  storeli.w r30, 4(sp)
000fac  6780fe01  storeli.w r31, 0(sp)
000fb0  1f8f1e00  addli r30, sp, 8
000fb4  1b12f1ff  ori r4, r2, 4095
000fb8  17814000  and r2, r1, r4
000fbc  13832204  setlt.u r6, r5, r2
000fc0  1f810100  addli r2, r3, 0
000fc4  bb210300  bneq r6, zero, 104
000fc8  97014100  and r3, r2, r4
000fcc  93813204  setlt.u r3, r5, r3
000fd0  3be10100  bneq r3, zero, 88
000fd4  abf1ffff  lui r3, 1048575
000fd8  17221100  xor r4, r2, r1
000fdc  9b91f1ff  ori r3, r3, 4095
000fe0  3fa04100  blt.s r3, r4, 8
000fe4  5b0b0000  j 88
000fe8  9b319100  slli r3, r2, 9
000fec  9bb29000  slli r5, r1, 9
000ff0  1b427101  srli r4, r2, 23
000ff4  1bc37001  srli r6, r1, 23
000ff8  93e32004  setlt.f r7, r1, r2
000ffc  93810100  seteq r3, r3, zero
001000  93820200  seteq r5, r5, zero
001004  1b02f20f  andi r4, r4, 255
001008  1b03f30f  andi r6, r6, 255
00100c  1b72f20f  setlti r4, r4, 255
001010  1b73f30f  setlti r6, r6, 255
001014  97113200  or r3, r4, r3
001018  17125300  or r4, r6, r5
00101c  97013200  and r3, r4, r3
001020  97813300  and r3, r7, r3
001024  3ba00100  bneq r3, zero, 8
001028  1f810000  addli r2, r1, 0
00102c  e38f0e00  loadli.w r31,  0(sp)
001030  63cf0e00  loadli.w r30,  4(sp)
001034  9f8e1e00  addli sp, sp, 8
001038  5f800f00  jr r31, 0
00103c  bfcf00fe  blt.s r1, zero, -16
001040  5bfdffff  j -24
001044  00100000  exit
001048  00100000  exit
00104c  00100000  exit
001050  00100000  exit
001054  00100000  exit
001058  00100000  exit
00105c  00100000  exit
001060  00100000  exit
001064  00100000  exit
001068  00100000  exit
00106c  00100000  exit
001070  00100000  exit
001074  00100000  exit
001078  00100000  exit
00107c  00100000  exit
001080  00100000  exit
001084  00100000  exit
001088  00100000  exit
00108c  00100000  exit
001090  00100000  exit
001094  00100000  exit
001098  00100000  exit
00109c  00100000  exit
0010a0  00100000  exit
0010a4  00100000  exit
0010a8  00100000  exit
0010ac  00100000  exit
0010b0  00100000  exit
0010b4  00100000  exit
0010b8  00100000  exit
0010bc  00100000  exit
0010c0  00100000  exit
0010c4  00100000  exit
0010c8  00100000  exit
0010cc  00100000  exit
0010d0  00100000  exit
0010d4  00100000  exit
0010d8  00100000  exit
0010dc  00100000  exit
0010e0  00100000  exit
0010e4  00100000  exit
0010e8  00100000  exit
0010ec  00100000  exit
0010f0  00100000  exit
0010f4  00100000  exit
0010f8  00100000  exit
0010fc  00100000  exit
001100  00100000  exit
001104  00100000  exit
001108  00100000  exit
00110c  00100000  exit
001110  00100000  exit
001114  00100000  exit
001118  00100000  exit
00111c  00100000  exit
001120  00100000  exit
001124  00100000  exit
001128  00100000  exit
00112c  00100000  exit
001130  00100000  exit
001134  00100000  exit
001138  00100000  exit
00113c  00100000  exit
001140  00100000  exit
001144  00100000  exit
001148  00100000  exit
00114c  00100000  exit
001150  00100000  exit
001154  00100000  exit
001158  00100000  exit
00115c  00100000  exit
001160  00100000  exit
001164  00100000  exit
001168  00100000  exit
00116c  00100000  exit
001170  00100000  exit
001174  00100000  exit
001178  00100000  exit
00117c  00100000  exit
001180  00100000  exit
001184  00100000  exit
001188  00100000  exit
00118c  00100000  exit
001190  00100000  exit
001194  00100000  exit
001198  00100000  exit
00119c  00100000  exit
0011a0  00100000  exit
0011a4  00100000  exit
0011a8  00100000  exit
0011ac  00100000  exit
0011b0  00100000  exit
0011b4  00100000  exit
0011b8  00100000  exit
0011bc  00100000  exit
0011c0  00100000  exit
0011c4  00100000  exit
0011c8  00100000  exit
0011cc  00100000  exit
0011d0  00100000  exit
0011d4  00100000  exit
0011d8  00100000  exit
0011dc  00100000  exit
0011e0  00100000  exit
0011e4  00100000  exit
0011e8  00100000  exit
0011ec  00100000  exit
0011f0  00100000  exit
0011f4  00100000  exit
0011f8  00100000  exit
0011fc  00100000  exit
001200  00100000  exit
001204  00100000  exit
001208  00100000  exit
00120c  00100000  exit
001210  00100000  exit
001214  00100000  exit
001218  00100000  exit
00121c  00100000  exit
001220  00100000  exit
001224  00100000  exit
001228  00100000  exit
00122c  00100000  exit
001230  00100000  exit
001234  00100000  exit
001238  00100000  exit
00123c  00100000  exit
001240  00100000  exit
001244  00100000  exit
001248  00100000  exit
00124c  00100000  exit
001250  00100000  exit
001254  00100000  exit
001258  00100000  exit
00125c  00100000  exit
001260  00100000  exit
001264  00100000  exit
001268  00100000  exit
00126c  00100000  exit
001270  00100000  exit
001274  00100000  exit
001278  00100000  exit
00127c  00100000  exit
001280  00100000  exit
