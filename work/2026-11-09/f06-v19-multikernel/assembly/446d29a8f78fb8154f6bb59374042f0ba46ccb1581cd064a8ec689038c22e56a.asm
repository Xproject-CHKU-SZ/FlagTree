; SHA-256 446d29a8f78fb8154f6bb59374042f0ba46ccb1581cd064a8ec689038c22e56a
; P800 Cluster · XTDK LLVM 19 · 802 / 802 words decoded
; bound names: triton_unk_fused_0
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
0000dc  9f8e8eee  addli sp, sp, -2240
0000e0  1f8f0e11  addli r30, sp, 2176
0000e4  80560002  load_param_i r13, 0
0000e8  63013f00  loadli.w r2,  24(r30)
0000ec  e3402f00  loadli.w r1,  20(r30)
0000f0  e3413f00  loadli.w r3,  28(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  674a1fee  storeli.w r1, -2140(r30)
000100  cbe4d004  ble.s r1, r13, 2360
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  9f080ff4  addli r17, r30, -1536
000110  9f0a0004  addli r21, zero, 512
000114  9f078ff8  addli r15, r30, -960
000118  2b08803f  lui r16, 260096
00011c  2b0b80bf  lui r22, 784384
000120  1f090ff8  addli r18, r30, -1024
000124  1f0a8000  addli r20, zero, 64
000128  1f0d8ff9  addli r26, r30, -832
00012c  9f0d0ff9  addli r27, r30, -896
000130  1f0e8ffa  addli r28, r30, -704
000134  9f020ffa  addli r5, r30, -768
000138  1f038ffb  addli r6, r30, -576
00013c  9f030ffb  addli r7, r30, -640
000140  1f048ffc  addli r8, r30, -448
000144  1f060ffd  addli r12, r30, -384
000148  9f048ffe  addli r9, r30, -192
00014c  1f050ffe  addli r10, r30, -256
000150  1f028fff  addli r4, r30, -64
000154  9f010fff  addli r3, r30, -128
000158  9bb08000  slli r1, r1, 8
00015c  670a2fee  storeli.w r2, -2144(r30)
000160  2bf1b53f  lui r2, 260959
000164  e7491fee  storeli.w r1, -2148(r30)
000168  ab00353f  lui r1, 258896
00016c  9b90304f  ori r1, r1, 1267
000170  674b1fee  storeli.w r1, -2124(r30)
000174  abb0a73e  lui r1, 256635
000178  9b9950a0  ori r19, r1, 2565
00017c  abd0873f  lui r1, 260221
000180  9b9020c2  ori r1, r1, 3106
000184  e74f1ff2  storeli.w r1, -1540(r30)
000188  ab00babf  lui r1, 785312
00018c  9b90300e  ori r1, r1, 227
000190  e70f1ff2  storeli.w r1, -1544(r30)
000194  9b10310e  ori r1, r2, 227
000198  2b71823e  lui r2, 256039
00019c  674f1ff2  storeli.w r1, -1548(r30)
0001a0  aba091be  lui r1, 780570
0001a4  9b1c6190  ori r25, r2, 2310
0001a8  1f018ffd  addli r2, r30, -320
0001ac  9b90e098  ori r1, r1, 2446
0001b0  e7091fee  storeli.w r1, -2152(r30)
0001b4  9f000ffc  addli r1, r30, -512
0001b8  e3453f00  loadli.w r11,  28(r30)
0001bc  670bdfee  storeli.w r13, -2128(r30)
0001c0  8b95b630  div.s r11, r13, r11
0001c4  e3063f00  loadli.w r13,  24(r30)
0001c8  8b95d530  div.s r11, r11, r13
0001cc  e3463fef  loadli.w r13,  -2148(r30)
0001d0  9bb5e500  slli r11, r11, 14
0001d4  8b95d510  add.s r11, r11, r13
0001d8  b3960528  sext_int2long r[14:15], r11
0001dc  9f150000  addli r11, zero, 1
0001e0  1f005fef  addli zero, r30, -2136
0001e4  97bbb602  sll.d r[24:25], r[14:15], r11
0001e8  eb560f00  load.d r[14:15], 0(r30)
0001ec  ab0500f0  lui r11, 983040
0001f0  9795ba00  or r11, r21, r11
0001f4  73307001  store.d r[24:25], 0(zero)
0001f8  17200000  xor zero, zero, zero
0001fc  8ba67611  add.ul r[14:15], r[14:15], r[24:25]
000200  ffa51601  l_gm2lm r11, r17, 0(r[14:15])
000204  1f170000  addli r14, zero, 1
000208  9f050000  addli r11, zero, 0
00020c  00a00000  mfence { lm }
000210  630c3fef  loadli.w r24,  -2152(r30)
000214  8b96b810  add.s r13, r17, r11
000218  670feff2  storeli.w r14, -1552(r30)
00021c  9f457fef  addli r11, r30, -2116
000220  9f080ff0  addli r17, r30, -2048
000224  42910602  vload_mask16.mz vr2{mr1}, 0(r13)
000228  c2918602  vload_mask16.mz vr3{mr1}, 64(r13)
00022c  c2930603  vload_mask16.mz vr7{mr1}, 128(r13)
000230  c2948603  vload_mask16.mz vr9{mr1}, 192(r13)
000234  06330100  vfp162float_l.rn vr6, vr2
000238  06720100  vfp162float_h.rn vr4, vr2
00023c  86f20300  vfp162float_h.rn vr5, vr7
000240  63476fef  loadli.w r14,  -2124(r30)
000244  06b00100  vfp162float_l.rn vr0, vr3
000248  86f00100  vfp162float_h.rn vr1, vr3
00024c  06b40400  vfp162float_l.rn vr8, vr9
000250  06b10300  vfp162float_l.rn vr2, vr7
000254  8a136702  vmul.f.mz.rn vr7{mr1}, r14, vr6
000258  72107042  vlt.f.mz mr0{mr1}, zero, vr7
00025c  86f10400  vfp162float_h.rn vr3, vr9
000260  8e957302  vmul.f.mz.rn vr11{mr1}, vr7, vr7
000264  7e010040  vmnot mr2, mr0
000268  8a147800  vmul.f.mz.rn vr9{mr0}, r16, vr7
00026c  7e0001a0  vmmov zero, mr2
000270  0a157b04  vmul.f.mz.rn vr10{mr2}, r22, vr7
000274  67800500  storeli.w zero, 0(r11)
000278  ab05003f  lui r11, 258048
00027c  0a936502  vmul.f.mz.rn vr6{mr1}, r11, vr6
000280  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
000284  9f088fef  addli r17, r30, -2112
000288  17200000  xor zero, zero, zero
00028c  0a934502  vmul.f.mz.rn vr6{mr1}, r11, vr4
000290  4690b702  vstore_mask16.mz vr11{mr1}, 0(r15)
000294  8a158702  vmul.f.mz.rn vr11{mr1}, r14, vr8
000298  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
00029c  9f080ff2  addli r17, r30, -1792
0002a0  0a930502  vmul.f.mz.rn vr6{mr1}, r11, vr0
0002a4  9694a402  vadd.f.mz.rn vr9{mr1}, vr9, vr10
0002a8  0a150702  vmul.f.mz.rn vr10{mr1}, r14, vr0
0002ac  0a101702  vmul.f.mz.rn vr0{mr1}, r14, vr1
0002b0  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
0002b4  9f088ff1  addli r17, r30, -1856
0002b8  0a931502  vmul.f.mz.rn vr6{mr1}, r11, vr1
0002bc  8a905502  vmul.f.mz.rn vr1{mr1}, r11, vr5
0002c0  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
0002c4  9f088ff2  addli r17, r30, -1728
0002c8  0a932502  vmul.f.mz.rn vr6{mr1}, r11, vr2
0002cc  0a112702  vmul.f.mz.rn vr2{mr1}, r14, vr2
0002d0  46109902  vstore_mask16.mz vr9{mr1}, 0(r18)
0002d4  8a144702  vmul.f.mz.rn vr9{mr1}, r14, vr4
0002d8  0a928502  vmul.f.mz.rn vr4{mr1}, r11, vr8
0002dc  0a143702  vmul.f.mz.rn vr8{mr1}, r14, vr3
0002e0  46906802  vstore_mask16.mz vr6{mr1}, 0(r17)
0002e4  9f080ff1  addli r17, r30, -1920
0002e8  46901802  vstore_mask16.mz vr1{mr1}, 0(r17)
0002ec  9f088ff0  addli r17, r30, -1984
0002f0  8a105702  vmul.f.mz.rn vr1{mr1}, r14, vr5
0002f4  46904802  vstore_mask16.mz vr4{mr1}, 0(r17)
0002f8  0a923502  vmul.f.mz.rn vr4{mr1}, r11, vr3
0002fc  9f050ff3  addli r11, r30, -1664
000300  46904502  vstore_mask16.mz vr4{mr1}, 0(r11)
000304  9f050000  addli r11, zero, 0
000308  00a00000  mfence { lm }
00030c  0b17b910  add.s r14, r18, r11
000310  2b0b803f  lui r22, 260096
000314  8b98b710  add.s r17, r15, r11
000318  9fc50500  addli r11, r11, 4
00031c  e30a0700  loadli.w r21,  0(r14)
000320  e38b0800  loadli.w r23,  0(r17)
000324  0beb3a51  fmac.f.rn r22, r21, r19
000328  8bea0b58  neg.f r21, r23
00032c  8f8a0a00  exp.f.rn r21, r21
000330  0f0b6819  div.f.rn r22, r16, r22
000334  67805801  storeli.w r21, 0(r17)
000338  67006701  storeli.w r22, 0(r14)
00033c  3bcf45ff  bneq r11, r20, -48
000340  00a00000  mfence { lm }
000344  f2119042  vlt.f.mz mr3{mr1}, zero, vr9
000348  1f077fef  addli r14, r30, -2120
00034c  8e939402  vmul.f.mz.rn vr7{mr1}, vr9, vr9
000350  c2110902  vload_mask16.mz vr3{mr1}, 0(r18)
000354  e345fff3  loadli.w r11,  -1540(r30)
000358  c2920702  vload_mask16.mz vr5{mr1}, 0(r15)
00035c  7e810140  vmnot mr2, mr3
000360  7e0001a0  vmmov zero, mr2
000364  67000700  storeli.w zero, 0(r14)
000368  1f477fef  addli r14, r30, -2116
00036c  17200000  xor zero, zero, zero
000370  46107d02  vstore_mask16.mz vr7{mr1}, 0(r26)
000374  63000700  loadli.w zero,  0(r14)
000378  0a923502  vmul.f.mz.rn vr4{mr1}, r11, vr3
00037c  e305fff3  loadli.w r11,  -1544(r30)
000380  12924502  vadd.f.mz.rn vr4{mr1}, r11, vr4
000384  e345eff3  loadli.w r11,  -1548(r30)
000388  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00038c  12924502  vadd.f.mz.rn vr4{mr1}, r11, vr4
000390  ab0580bf  lui r11, 784384
000394  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000398  12124c02  vadd.f.mz.rn vr4{mr1}, r24, vr4
00039c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0003a0  12924c02  vadd.f.mz.rn vr4{mr1}, r25, vr4
0003a4  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
0003a8  0a129806  vmul.f.mz.rn vr4{mr3}, r16, vr9
0003ac  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
0003b0  8a929504  vmul.f.mz.rn vr5{mr2}, r11, vr9
0003b4  9a113802  vsub.f.mz.rn vr3{mr1}, r16, vr3
0003b8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0003bc  0a133800  vmul.f.mz.rn vr6{mr0}, r16, vr3
0003c0  7e0000e0  vmmov mr0, zero
0003c4  17200000  xor zero, zero, zero
0003c8  46904d02  vstore_mask16.mz vr4{mr1}, 0(r27)
0003cc  8a913500  vmul.f.mz.rn vr3{mr0}, r11, vr3
0003d0  00a00000  mfence { lm }
0003d4  9f050000  addli r11, zero, 0
0003d8  96143302  vadd.f.mz.rn vr9{mr1}, vr6, vr3
0003dc  0b97bd10  add.s r14, r27, r11
0003e0  2b0b803f  lui r22, 260096
0003e4  8b18bd10  add.s r17, r26, r11
0003e8  9fc50500  addli r11, r11, 4
0003ec  e30a0700  loadli.w r21,  0(r14)
0003f0  e38b0800  loadli.w r23,  0(r17)
0003f4  0beb3a51  fmac.f.rn r22, r21, r19
0003f8  8bea0b58  neg.f r21, r23
0003fc  8f8a0a00  exp.f.rn r21, r21
000400  0f0b6819  div.f.rn r22, r16, r22
000404  67805801  storeli.w r21, 0(r17)
000408  67006701  storeli.w r22, 0(r14)
00040c  3bcf45ff  bneq r11, r20, -48
000410  00a00000  mfence { lm }
000414  7210a042  vlt.f.mz mr0{mr1}, zero, vr10
000418  1f477fef  addli r14, r30, -2116
00041c  8e13a502  vmul.f.mz.rn vr7{mr1}, vr10, vr10
000420  c2910d02  vload_mask16.mz vr3{mr1}, 0(r27)
000424  e345fff3  loadli.w r11,  -1540(r30)
000428  c2120d02  vload_mask16.mz vr5{mr1}, 0(r26)
00042c  7e010040  vmnot mr2, mr0
000430  7e0001a0  vmmov zero, mr2
000434  67000700  storeli.w zero, 0(r14)
000438  1f077fef  addli r14, r30, -2120
00043c  17200000  xor zero, zero, zero
000440  46107e02  vstore_mask16.mz vr7{mr1}, 0(r28)
000444  63000700  loadli.w zero,  0(r14)
000448  0a923502  vmul.f.mz.rn vr4{mr1}, r11, vr3
00044c  e305fff3  loadli.w r11,  -1544(r30)
000450  12924502  vadd.f.mz.rn vr4{mr1}, r11, vr4
000454  e345eff3  loadli.w r11,  -1548(r30)
000458  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00045c  12924502  vadd.f.mz.rn vr4{mr1}, r11, vr4
000460  ab0580bf  lui r11, 784384
000464  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000468  12124c02  vadd.f.mz.rn vr4{mr1}, r24, vr4
00046c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000470  12924c02  vadd.f.mz.rn vr4{mr1}, r25, vr4
000474  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000478  0a12a800  vmul.f.mz.rn vr4{mr0}, r16, vr10
00047c  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000480  8a92a504  vmul.f.mz.rn vr5{mr2}, r11, vr10
000484  7e0100e0  vmmov mr2, zero
000488  17200000  xor zero, zero, zero
00048c  9a113802  vsub.f.mz.rn vr3{mr1}, r16, vr3
000490  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
000494  0a133806  vmul.f.mz.rn vr6{mr3}, r16, vr3
000498  8a913504  vmul.f.mz.rn vr3{mr2}, r11, vr3
00049c  46904202  vstore_mask16.mz vr4{mr1}, 0(r5)
0004a0  9f050000  addli r11, zero, 0
0004a4  00a00000  mfence { lm }
0004a8  16153302  vadd.f.mz.rn vr10{mr1}, vr6, vr3
0004ac  0b97b210  add.s r14, r5, r11
0004b0  2b0b803f  lui r22, 260096
0004b4  8b18be10  add.s r17, r28, r11
0004b8  9fc50500  addli r11, r11, 4
0004bc  e30a0700  loadli.w r21,  0(r14)
0004c0  e38b0800  loadli.w r23,  0(r17)
0004c4  0beb3a51  fmac.f.rn r22, r21, r19
0004c8  8bea0b58  neg.f r21, r23
0004cc  8f8a0a00  exp.f.rn r21, r21
0004d0  0f0b6819  div.f.rn r22, r16, r22
0004d4  67805801  storeli.w r21, 0(r17)
0004d8  67006701  storeli.w r22, 0(r14)
0004dc  3bcf45ff  bneq r11, r20, -48
0004e0  00a00000  mfence { lm }
0004e4  72110042  vlt.f.mz mr2{mr1}, zero, vr0
0004e8  1f077fef  addli r14, r30, -2120
0004ec  8e130002  vmul.f.mz.rn vr7{mr1}, vr0, vr0
0004f0  c2910202  vload_mask16.mz vr3{mr1}, 0(r5)
0004f4  e345fff3  loadli.w r11,  -1540(r30)
0004f8  c2120e02  vload_mask16.mz vr5{mr1}, 0(r28)
0004fc  fe010140  vmnot mr3, mr2
000500  7e8001a0  vmmov zero, mr3
000504  67000700  storeli.w zero, 0(r14)
000508  1f477fef  addli r14, r30, -2116
00050c  17200000  xor zero, zero, zero
000510  46107302  vstore_mask16.mz vr7{mr1}, 0(r6)
000514  63000700  loadli.w zero,  0(r14)
000518  0a923502  vmul.f.mz.rn vr4{mr1}, r11, vr3
00051c  e305fff3  loadli.w r11,  -1544(r30)
000520  12924502  vadd.f.mz.rn vr4{mr1}, r11, vr4
000524  e345eff3  loadli.w r11,  -1548(r30)
000528  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00052c  12924502  vadd.f.mz.rn vr4{mr1}, r11, vr4
000530  ab0580bf  lui r11, 784384
000534  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000538  12124c02  vadd.f.mz.rn vr4{mr1}, r24, vr4
00053c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000540  12924c02  vadd.f.mz.rn vr4{mr1}, r25, vr4
000544  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000548  0a120804  vmul.f.mz.rn vr4{mr2}, r16, vr0
00054c  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000550  8a920506  vmul.f.mz.rn vr5{mr3}, r11, vr0
000554  9a113802  vsub.f.mz.rn vr3{mr1}, r16, vr3
000558  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00055c  0a133800  vmul.f.mz.rn vr6{mr0}, r16, vr3
000560  7e0000e0  vmmov mr0, zero
000564  17200000  xor zero, zero, zero
000568  46904302  vstore_mask16.mz vr4{mr1}, 0(r7)
00056c  8a913500  vmul.f.mz.rn vr3{mr0}, r11, vr3
000570  00a00000  mfence { lm }
000574  9f050000  addli r11, zero, 0
000578  16103302  vadd.f.mz.rn vr0{mr1}, vr6, vr3
00057c  0b97b310  add.s r14, r7, r11
000580  2b0b803f  lui r22, 260096
000584  8b18b310  add.s r17, r6, r11
000588  9fc50500  addli r11, r11, 4
00058c  e30a0700  loadli.w r21,  0(r14)
000590  e38b0800  loadli.w r23,  0(r17)
000594  0beb3a51  fmac.f.rn r22, r21, r19
000598  8bea0b58  neg.f r21, r23
00059c  8f8a0a00  exp.f.rn r21, r21
0005a0  0f0b6819  div.f.rn r22, r16, r22
0005a4  67805801  storeli.w r21, 0(r17)
0005a8  67006701  storeli.w r22, 0(r14)
0005ac  3bcf45ff  bneq r11, r20, -48
0005b0  00a00000  mfence { lm }
0005b4  72102042  vlt.f.mz mr0{mr1}, zero, vr2
0005b8  1f477fef  addli r14, r30, -2116
0005bc  8e132102  vmul.f.mz.rn vr7{mr1}, vr2, vr2
0005c0  c2910302  vload_mask16.mz vr3{mr1}, 0(r7)
0005c4  e345fff3  loadli.w r11,  -1540(r30)
0005c8  c2120302  vload_mask16.mz vr5{mr1}, 0(r6)
0005cc  fe010040  vmnot mr3, mr0
0005d0  7e8001a0  vmmov zero, mr3
0005d4  67000700  storeli.w zero, 0(r14)
0005d8  1f077fef  addli r14, r30, -2120
0005dc  17200000  xor zero, zero, zero
0005e0  46107402  vstore_mask16.mz vr7{mr1}, 0(r8)
0005e4  63000700  loadli.w zero,  0(r14)
0005e8  0a923502  vmul.f.mz.rn vr4{mr1}, r11, vr3
0005ec  e305fff3  loadli.w r11,  -1544(r30)
0005f0  12924502  vadd.f.mz.rn vr4{mr1}, r11, vr4
0005f4  e345eff3  loadli.w r11,  -1548(r30)
0005f8  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0005fc  12924502  vadd.f.mz.rn vr4{mr1}, r11, vr4
000600  ab0580bf  lui r11, 784384
000604  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000608  12124c02  vadd.f.mz.rn vr4{mr1}, r24, vr4
00060c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000610  12924c02  vadd.f.mz.rn vr4{mr1}, r25, vr4
000614  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000618  0a122800  vmul.f.mz.rn vr4{mr0}, r16, vr2
00061c  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000620  8a922506  vmul.f.mz.rn vr5{mr3}, r11, vr2
000624  9a113802  vsub.f.mz.rn vr3{mr1}, r16, vr3
000628  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00062c  0a133804  vmul.f.mz.rn vr6{mr2}, r16, vr3
000630  7e0100e0  vmmov mr2, zero
000634  17200000  xor zero, zero, zero
000638  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
00063c  8a913504  vmul.f.mz.rn vr3{mr2}, r11, vr3
000640  00a00000  mfence { lm }
000644  9f050000  addli r11, zero, 0
000648  16113302  vadd.f.mz.rn vr2{mr1}, vr6, vr3
00064c  0b97b010  add.s r14, r1, r11
000650  2b0b803f  lui r22, 260096
000654  8b18b410  add.s r17, r8, r11
000658  9fc50500  addli r11, r11, 4
00065c  e30a0700  loadli.w r21,  0(r14)
000660  e38b0800  loadli.w r23,  0(r17)
000664  0beb3a51  fmac.f.rn r22, r21, r19
000668  8bea0b58  neg.f r21, r23
00066c  8f8a0a00  exp.f.rn r21, r21
000670  0f0b6819  div.f.rn r22, r16, r22
000674  67805801  storeli.w r21, 0(r17)
000678  67006701  storeli.w r22, 0(r14)
00067c  3bcf45ff  bneq r11, r20, -48
000680  00a00000  mfence { lm }
000684  72111042  vlt.f.mz mr2{mr1}, zero, vr1
000688  1f077fef  addli r14, r30, -2120
00068c  8e931002  vmul.f.mz.rn vr7{mr1}, vr1, vr1
000690  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000694  e345fff3  loadli.w r11,  -1540(r30)
000698  c2120402  vload_mask16.mz vr5{mr1}, 0(r8)
00069c  fe010140  vmnot mr3, mr2
0006a0  7e8001a0  vmmov zero, mr3
0006a4  67000700  storeli.w zero, 0(r14)
0006a8  1f477fef  addli r14, r30, -2116
0006ac  17200000  xor zero, zero, zero
0006b0  46107102  vstore_mask16.mz vr7{mr1}, 0(r2)
0006b4  63000700  loadli.w zero,  0(r14)
0006b8  0a923502  vmul.f.mz.rn vr4{mr1}, r11, vr3
0006bc  e305fff3  loadli.w r11,  -1544(r30)
0006c0  12924502  vadd.f.mz.rn vr4{mr1}, r11, vr4
0006c4  e345eff3  loadli.w r11,  -1548(r30)
0006c8  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0006cc  12924502  vadd.f.mz.rn vr4{mr1}, r11, vr4
0006d0  ab0580bf  lui r11, 784384
0006d4  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0006d8  12124c02  vadd.f.mz.rn vr4{mr1}, r24, vr4
0006dc  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0006e0  12924c02  vadd.f.mz.rn vr4{mr1}, r25, vr4
0006e4  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
0006e8  0a121804  vmul.f.mz.rn vr4{mr2}, r16, vr1
0006ec  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
0006f0  8a921506  vmul.f.mz.rn vr5{mr3}, r11, vr1
0006f4  9a113802  vsub.f.mz.rn vr3{mr1}, r16, vr3
0006f8  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0006fc  0a133800  vmul.f.mz.rn vr6{mr0}, r16, vr3
000700  7e0000e0  vmmov mr0, zero
000704  17200000  xor zero, zero, zero
000708  46104602  vstore_mask16.mz vr4{mr1}, 0(r12)
00070c  8a913500  vmul.f.mz.rn vr3{mr0}, r11, vr3
000710  00a00000  mfence { lm }
000714  9f050000  addli r11, zero, 0
000718  96103302  vadd.f.mz.rn vr1{mr1}, vr6, vr3
00071c  0b17b610  add.s r14, r12, r11
000720  2b0b803f  lui r22, 260096
000724  8b18b110  add.s r17, r2, r11
000728  9fc50500  addli r11, r11, 4
00072c  e30a0700  loadli.w r21,  0(r14)
000730  e38b0800  loadli.w r23,  0(r17)
000734  0beb3a51  fmac.f.rn r22, r21, r19
000738  8bea0b58  neg.f r21, r23
00073c  8f8a0a00  exp.f.rn r21, r21
000740  0f0b6819  div.f.rn r22, r16, r22
000744  67805801  storeli.w r21, 0(r17)
000748  67006701  storeli.w r22, 0(r14)
00074c  3bcf45ff  bneq r11, r20, -48
000750  00a00000  mfence { lm }
000754  f211b042  vlt.f.mz mr3{mr1}, zero, vr11
000758  1f477fef  addli r14, r30, -2116
00075c  8e93b502  vmul.f.mz.rn vr7{mr1}, vr11, vr11
000760  c2110602  vload_mask16.mz vr3{mr1}, 0(r12)
000764  e345fff3  loadli.w r11,  -1540(r30)
000768  c2120102  vload_mask16.mz vr5{mr1}, 0(r2)
00076c  7e800140  vmnot mr0, mr3
000770  7e0000a0  vmmov zero, mr0
000774  67000700  storeli.w zero, 0(r14)
000778  1f077fef  addli r14, r30, -2120
00077c  17200000  xor zero, zero, zero
000780  46907402  vstore_mask16.mz vr7{mr1}, 0(r9)
000784  63000700  loadli.w zero,  0(r14)
000788  0a923502  vmul.f.mz.rn vr4{mr1}, r11, vr3
00078c  e305fff3  loadli.w r11,  -1544(r30)
000790  12924502  vadd.f.mz.rn vr4{mr1}, r11, vr4
000794  e345eff3  loadli.w r11,  -1548(r30)
000798  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00079c  12924502  vadd.f.mz.rn vr4{mr1}, r11, vr4
0007a0  ab0580bf  lui r11, 784384
0007a4  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0007a8  12124c02  vadd.f.mz.rn vr4{mr1}, r24, vr4
0007ac  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
0007b0  12924c02  vadd.f.mz.rn vr4{mr1}, r25, vr4
0007b4  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
0007b8  0a12b806  vmul.f.mz.rn vr4{mr3}, r16, vr11
0007bc  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
0007c0  8a92b500  vmul.f.mz.rn vr5{mr0}, r11, vr11
0007c4  7e0000e0  vmmov mr0, zero
0007c8  17200000  xor zero, zero, zero
0007cc  9a113802  vsub.f.mz.rn vr3{mr1}, r16, vr3
0007d0  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
0007d4  0a133804  vmul.f.mz.rn vr6{mr2}, r16, vr3
0007d8  8a913500  vmul.f.mz.rn vr3{mr0}, r11, vr3
0007dc  46104502  vstore_mask16.mz vr4{mr1}, 0(r10)
0007e0  9f050000  addli r11, zero, 0
0007e4  00a00000  mfence { lm }
0007e8  96153302  vadd.f.mz.rn vr11{mr1}, vr6, vr3
0007ec  0b17b510  add.s r14, r10, r11
0007f0  2b0b803f  lui r22, 260096
0007f4  8b98b410  add.s r17, r9, r11
0007f8  9fc50500  addli r11, r11, 4
0007fc  e30a0700  loadli.w r21,  0(r14)
000800  e38b0800  loadli.w r23,  0(r17)
000804  0beb3a51  fmac.f.rn r22, r21, r19
000808  8bea0b58  neg.f r21, r23
00080c  8f8a0a00  exp.f.rn r21, r21
000810  0f0b6819  div.f.rn r22, r16, r22
000814  67805801  storeli.w r21, 0(r17)
000818  67006701  storeli.w r22, 0(r14)
00081c  3bcf45ff  bneq r11, r20, -48
000820  00a00000  mfence { lm }
000824  1f477fef  addli r14, r30, -2116
000828  72108042  vlt.f.mz mr0{mr1}, zero, vr8
00082c  8e138402  vmul.f.mz.rn vr7{mr1}, vr8, vr8
000830  c2110502  vload_mask16.mz vr3{mr1}, 0(r10)
000834  e345fff3  loadli.w r11,  -1540(r30)
000838  c2920402  vload_mask16.mz vr5{mr1}, 0(r9)
00083c  7e010040  vmnot mr2, mr0
000840  63000700  loadli.w zero,  0(r14)
000844  46107202  vstore_mask16.mz vr7{mr1}, 0(r4)
000848  0a923502  vmul.f.mz.rn vr4{mr1}, r11, vr3
00084c  e305fff3  loadli.w r11,  -1544(r30)
000850  12924502  vadd.f.mz.rn vr4{mr1}, r11, vr4
000854  e345eff3  loadli.w r11,  -1548(r30)
000858  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
00085c  12924502  vadd.f.mz.rn vr4{mr1}, r11, vr4
000860  ab0580bf  lui r11, 784384
000864  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000868  12124c02  vadd.f.mz.rn vr4{mr1}, r24, vr4
00086c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000870  12924c02  vadd.f.mz.rn vr4{mr1}, r25, vr4
000874  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
000878  0a128800  vmul.f.mz.rn vr4{mr0}, r16, vr8
00087c  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000880  8a928504  vmul.f.mz.rn vr5{mr2}, r11, vr8
000884  9a113802  vsub.f.mz.rn vr3{mr1}, r16, vr3
000888  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
00088c  0a133806  vmul.f.mz.rn vr6{mr3}, r16, vr3
000890  fe0100e0  vmmov mr3, zero
000894  17200000  xor zero, zero, zero
000898  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
00089c  8a913506  vmul.f.mz.rn vr3{mr3}, r11, vr3
0008a0  00a00000  mfence { lm }
0008a4  9f050000  addli r11, zero, 0
0008a8  16143302  vadd.f.mz.rn vr8{mr1}, vr6, vr3
0008ac  0b97b110  add.s r14, r3, r11
0008b0  2b0b803f  lui r22, 260096
0008b4  8b18b210  add.s r17, r4, r11
0008b8  9fc50500  addli r11, r11, 4
0008bc  e30a0700  loadli.w r21,  0(r14)
0008c0  e38b0800  loadli.w r23,  0(r17)
0008c4  0beb3a51  fmac.f.rn r22, r21, r19
0008c8  8bea0b58  neg.f r21, r23
0008cc  8f8a0a00  exp.f.rn r21, r21
0008d0  0f0b6819  div.f.rn r22, r16, r22
0008d4  67805801  storeli.w r21, 0(r17)
0008d8  67006701  storeli.w r22, 0(r14)
0008dc  3bcf45ff  bneq r11, r20, -48
0008e0  00a00000  mfence { lm }
0008e4  12100802  vadd.f.mz.rn vr0{mr1}, r16, vr0
0008e8  2b0b80bf  lui r22, 784384
0008ec  92101802  vadd.f.mz.rn vr1{mr1}, r16, vr1
0008f0  12112802  vadd.f.mz.rn vr2{mr1}, r16, vr2
0008f4  12148802  vadd.f.mz.rn vr8{mr1}, r16, vr8
0008f8  1f070000  addli r14, zero, 0
0008fc  9f080ff4  addli r17, r30, -1536
000900  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
000904  e345fff3  loadli.w r11,  -1540(r30)
000908  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
00090c  0a923502  vmul.f.mz.rn vr4{mr1}, r11, vr3
000910  e305fff3  loadli.w r11,  -1544(r30)
000914  12924502  vadd.f.mz.rn vr4{mr1}, r11, vr4
000918  e345eff3  loadli.w r11,  -1548(r30)
00091c  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000920  12924502  vadd.f.mz.rn vr4{mr1}, r11, vr4
000924  9f050ff0  addli r11, r30, -2048
000928  42930502  vload_mask16.mz vr6{mr1}, 0(r11)
00092c  9f058fef  addli r11, r30, -2112
000930  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000934  c2930502  vload_mask16.mz vr7{mr1}, 0(r11)
000938  9f050ff2  addli r11, r30, -1792
00093c  12124c02  vadd.f.mz.rn vr4{mr1}, r24, vr4
000940  0e123202  vmul.f.mz.rn vr4{mr1}, vr4, vr3
000944  12924c02  vadd.f.mz.rn vr4{mr1}, r25, vr4
000948  8e113202  vmul.f.mz.rn vr3{mr1}, vr4, vr3
00094c  12129802  vadd.f.mz.rn vr4{mr1}, r16, vr9
000950  0e124302  vmul.f.mz.rn vr4{mr1}, vr6, vr4
000954  1213a802  vadd.f.mz.rn vr6{mr1}, r16, vr10
000958  0e936302  vmul.f.mz.rn vr6{mr1}, vr7, vr6
00095c  8e913202  vmul.f.mz.rn vr3{mr1}, vr5, vr3
000960  c2920502  vload_mask16.mz vr5{mr1}, 0(r11)
000964  9f058ff1  addli r11, r30, -1856
000968  9a113802  vsub.f.mz.rn vr3{mr1}, r16, vr3
00096c  0e900202  vmul.f.mz.rn vr0{mr1}, vr5, vr0
000970  c2920502  vload_mask16.mz vr5{mr1}, 0(r11)
000974  9f058ff2  addli r11, r30, -1728
000978  c2930502  vload_mask16.mz vr7{mr1}, 0(r11)
00097c  9f050ff1  addli r11, r30, -1920
000980  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
000984  9f058ff0  addli r11, r30, -1984
000988  0e912202  vmul.f.mz.rn vr2{mr1}, vr5, vr2
00098c  9212b802  vadd.f.mz.rn vr5{mr1}, r16, vr11
000990  8e901302  vmul.f.mz.rn vr1{mr1}, vr7, vr1
000994  8a133800  vmul.f.mz.rn vr7{mr0}, r16, vr3
000998  8a113b04  vmul.f.mz.rn vr3{mr2}, r22, vr3
00099c  8e925402  vmul.f.mz.rn vr5{mr1}, vr9, vr5
0009a0  c2940502  vload_mask16.mz vr9{mr1}, 0(r11)
0009a4  9f050ff3  addli r11, r30, -1664
0009a8  96913302  vadd.f.mz.rn vr3{mr1}, vr7, vr3
0009ac  86130200  vfloat2fp16_l.rn vr7, vr4
0009b0  86530300  vfloat2fp16_h.rn vr7, vr6
0009b4  06120000  vfloat2fp16_l.rn vr4, vr0
0009b8  06520100  vfloat2fp16_h.rn vr4, vr2
0009bc  42910502  vload_mask16.mz vr2{mr1}, 0(r11)
0009c0  06900000  vfloat2fp16_l.rn vr0, vr1
0009c4  06d00200  vfloat2fp16_h.rn vr0, vr5
0009c8  92103802  vadd.f.mz.rn vr1{mr1}, r16, vr3
0009cc  46907602  vstore_mask16.mz vr7{mr1}, 0(r13)
0009d0  46944602  vstore_mask16.mz vr4{mr1}, 64(r13)
0009d4  46980602  vstore_mask16.mz vr0{mr1}, 128(r13)
0009d8  0e948402  vmul.f.mz.rn vr8{mr1}, vr9, vr8
0009dc  8e101102  vmul.f.mz.rn vr1{mr1}, vr2, vr1
0009e0  06100400  vfloat2fp16_l.rn vr0, vr8
0009e4  06d00000  vfloat2fp16_h.rn vr0, vr1
0009e8  469c0602  vstore_mask16.mz vr0{mr1}, 192(r13)
0009ec  e305eff3  loadli.w r11,  -1552(r30)
0009f0  00a00000  mfence { lm }
0009f4  9b861500  andi r13, r11, 1
0009f8  9f050002  addli r11, zero, 256
0009fc  3be006fc  bneq r13, zero, -2024
000a00  9f0a5fef  addli r21, r30, -2136
000a04  eb568f00  load.d r[14:15], 8(r30)
000a08  ab0500f0  lui r11, 983040
000a0c  ebdb0a00  load.d r[24:25], 0(r21)
000a10  9f0a0004  addli r21, zero, 512
000a14  9795ba00  or r11, r21, r11
000a18  8ba67611  add.ul r[14:15], r[14:15], r[24:25]
000a1c  ffb51601  s_lm2gm r11, r17, 0(r[14:15])
000a20  e3066fef  loadli.w r13,  -2128(r30)
000a24  e3054fef  loadli.w r11,  -2144(r30)
000a28  00a00000  mfence { lm }
000a2c  8b96b610  add.s r13, r13, r11
000a30  e3454fef  loadli.w r11,  -2140(r30)
000a34  3f9eb6fa  blt.s r13, r11, -2172
000a38  9f0e0fef  addli sp, r30, -2176
000a3c  9f8e0e11  addli sp, sp, 2176
000a40  00a00300  mfence { lm, sm, gm }
000a44  00100000  exit
000a48  00100000  exit
000a4c  00100000  exit
000a50  00100000  exit
000a54  00100000  exit
000a58  00100000  exit
000a5c  00100000  exit
000a60  00100000  exit
000a64  00100000  exit
000a68  00100000  exit
000a6c  00100000  exit
000a70  00100000  exit
000a74  00100000  exit
000a78  00100000  exit
000a7c  00100000  exit
000a80  00100000  exit
000a84  00100000  exit
000a88  00100000  exit
000a8c  00100000  exit
000a90  00100000  exit
000a94  00100000  exit
000a98  00100000  exit
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
