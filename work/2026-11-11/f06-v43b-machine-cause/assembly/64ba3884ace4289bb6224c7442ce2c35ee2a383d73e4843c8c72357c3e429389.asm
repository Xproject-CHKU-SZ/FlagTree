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
000078  9f494000  addli r19, zero, 36
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
0000dc  9f8eeece  addli sp, sp, -6288
0000e0  1f8fae30  addli r30, sp, 6224
0000e4  63413f00  loadli.w r2,  28(r30)
0000e8  e3003f00  loadli.w r1,  24(r30)
0000ec  e3014f00  loadli.w r3,  32(r30)
0000f0  8b101120  mul.s r1, r2, r1
0000f4  00510002  load_param_i r2, 0
0000f8  8b903020  mul.s r1, r1, r3
0000fc  e70b1fce  storeli.w r1, -6216(r30)
000100  4b9c2000  ble.s r1, r2, 772
000104  e3422f00  loadli.w r5,  20(r30)
000108  6b650f01  loadext.w r[11:12], 16(r30)
00010c  80d00002  load_param_i r1, 1
000110  80370002  core_id r15
000114  9f180000  addli r17, zero, 1
000118  1f098fcf  addli r18, r30, -6208
00011c  9f090020  addli r19, zero, 4096
000120  1f0a8fef  addli r20, r30, -2112
000124  9f0a0010  addli r21, zero, 2048
000128  1f0b0008  addli r22, zero, 1024
00012c  9f0b001c  addli r23, zero, 3584
000130  1f7c7000  addli r24, zero, 63
000134  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000138  674b1fce  storeli.w r1, -6220(r30)
00013c  b3960228  sext_int2long r[14:15], r5
000140  db030000  j 28
000144  63417fcf  loadli.w r2,  -6212(r30)
000148  e3406fcf  loadli.w r1,  -6220(r30)
00014c  0b111110  add.s r2, r2, r1
000150  e3007fcf  loadli.w r1,  -6216(r30)
000154  3f201100  blt.s r2, r1, 8
000158  db550000  j 684
00015c  e3004f00  loadli.w r1,  32(r30)
000160  e74b2fce  storeli.w r2, -6212(r30)
000164  9f710000  addli r3, zero, 7
000168  1f180000  addli r16, zero, 1
00016c  8b101130  div.s r1, r2, r1
000170  63413f00  loadli.w r2,  28(r30)
000174  8b902030  div.s r1, r1, r2
000178  b3900028  sext_int2long r[2:3], r1
00017c  97bd3002  sll.d r[28:29], r[2:3], r3
000180  9f000000  addli r1, zero, 0
000184  db020000  j 20
000188  1b011800  andi r2, r16, 1
00018c  9f008000  addli r1, zero, 64
000190  1f080000  addli r16, zero, 0
000194  b74e01fe  beq r2, zero, -80
000198  8b901710  add.s r1, r15, r1
00019c  b3900028  sext_int2long r[2:3], r1
0001a0  8ba01d10  add.ul r[2:3], r[28:29], r[2:3]
0001a4  93311506  setle.sl r3, r[11:12], r[2:3]
0001a8  bb8f01fe  bneq r3, zero, -32
0001ac  8bb1d020  mul.sl r[4:5], r[2:3], r[14:15]
0001b0  6b530f00  load.d r[7:8], 0(r30)
0001b4  97b01003  sll.d r[2:3], r[2:3], r17
0001b8  97b11103  sll.d r[4:5], r[4:5], r17
0001bc  8b2c3310  add.ul r[26:27], r[7:8], r[4:5]
0001c0  eb518f00  load.d r[4:5], 8(r30)
0001c4  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
0001c8  9f010000  addli r3, zero, 0
0001cc  0b123910  add.s r4, r18, r3
0001d0  9f810102  addli r3, r3, 256
0001d4  46100202  vstore_mask16.mz vr0{mr1}, 0(r4)
0001d8  46140202  vstore_mask16.mz vr0{mr1}, 64(r4)
0001dc  46180202  vstore_mask16.mz vr0{mr1}, 128(r4)
0001e0  461c0202  vstore_mask16.mz vr0{mr1}, 192(r4)
0001e4  00a00000  mfence { lm }
0001e8  bb9f31ff  bneq r3, r19, -28
0001ec  3f831201  blt.s r5, r17, 192
0001f0  1f030901  addli r6, r18, 128
0001f4  1f020000  addli r4, zero, 0
0001f8  9f010000  addli r3, zero, 0
0001fc  8b133a10  add.s r7, r20, r3
000200  9fc10100  addli r3, r3, 4
000204  73900300  store.h zero, 0(r7)
000208  73910300  store.h zero, 2(r7)
00020c  00a00000  mfence { lm }
000210  bbbf51ff  bneq r3, r21, -20
000214  8b934218  sub.s r7, r5, r4
000218  33140228  sext_int2long r[9:10], r4
00021c  2b0600f0  lui r12, 983040
000220  9f010000  addli r3, zero, 0
000224  8b930348  max.s r7, r7, zero
000228  17341403  sll.d r[9:10], r[9:10], r17
00022c  8b936341  min.s r7, r7, r22
000230  0ba48c10  add.ul r[9:10], r[26:27], r[9:10]
000234  9bb31300  slli r7, r7, 1
000238  9793c300  or r7, r7, r12
00023c  1f060300  addli r12, r6, 0
000240  ff234401  l_gm2lm r7, r20, 0(r[9:10])
000244  00a00000  mfence { lm }
000248  8b133a10  add.s r7, r20, r3
00024c  9f810101  addli r3, r3, 128
000250  c2900302  vload_mask16.mz vr1{mr1}, 0(r7)
000254  421106e3  vload_mask16.mz vr2{mr1}, 1920(r12)
000258  c21186e3  vload_mask16.mz vr3{mr1}, 1984(r12)
00025c  42120602  vload_mask16.mz vr4{mr1}, 0(r12)
000260  c2128602  vload_mask16.mz vr5{mr1}, 64(r12)
000264  42938302  vload_mask16.mz vr6{mr1}, 64(r7)
000268  86b30000  vfp162float_l.rn vr7, vr1
00026c  06f40000  vfp162float_h.rn vr8, vr1
000270  86740300  vfp162float_h.rn vr9, vr6
000274  86300300  vfp162float_l.rn vr1, vr6
000278  16117102  vadd.f.mz.rn vr2{mr1}, vr2, vr7
00027c  96101202  vadd.f.mz.rn vr1{mr1}, vr4, vr1
000280  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
000284  16929202  vadd.f.mz.rn vr4{mr1}, vr5, vr9
000288  461826e2  vstore_mask16.mz vr2{mr1}, 1920(r12)
00028c  461c36e2  vstore_mask16.mz vr3{mr1}, 1984(r12)
000290  46101602  vstore_mask16.mz vr1{mr1}, 0(r12)
000294  46144602  vstore_mask16.mz vr4{mr1}, 64(r12)
000298  1f060602  addli r12, r12, 256
00029c  00a00000  mfence { lm }
0002a0  bbae51ff  bneq r3, r21, -88
0002a4  1f020208  addli r4, r4, 1024
0002a8  3f4d52fe  blt.s r4, r5, -176
0002ac  9f018fcf  addli r3, r30, -6208
0002b0  1f020904  addli r4, r18, 512
0002b4  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0002b8  9f010fd0  addli r3, r30, -6144
0002bc  42940102  vload_mask16.mz vr8{mr1}, 0(r3)
0002c0  9f018fd0  addli r3, r30, -6080
0002c4  c2930102  vload_mask16.mz vr7{mr1}, 0(r3)
0002c8  9f010fd1  addli r3, r30, -6016
0002cc  42930102  vload_mask16.mz vr6{mr1}, 0(r3)
0002d0  9f018fd1  addli r3, r30, -5952
0002d4  c2920102  vload_mask16.mz vr5{mr1}, 0(r3)
0002d8  9f010fd2  addli r3, r30, -5888
0002dc  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
0002e0  9f018fd2  addli r3, r30, -5824
0002e4  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
0002e8  9f010fd3  addli r3, r30, -5760
0002ec  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
0002f0  9f010000  addli r3, zero, 0
0002f4  0b133210  add.s r6, r4, r3
0002f8  9f810104  addli r3, r3, 512
0002fc  c2148302  vload_mask16.mz vr9{mr1}, 64(r6)
000300  42150302  vload_mask16.mz vr10{mr1}, 0(r6)
000304  c2150303  vload_mask16.mz vr11{mr1}, 128(r6)
000308  16149402  vadd.f.mz.rn vr8{mr1}, vr8, vr9
00030c  c2148303  vload_mask16.mz vr9{mr1}, 192(r6)
000310  9693b302  vadd.f.mz.rn vr7{mr1}, vr7, vr11
000314  c2150322  vload_mask16.mz vr11{mr1}, 256(r6)
000318  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
00031c  42158322  vload_mask16.mz vr10{mr1}, 320(r6)
000320  16139302  vadd.f.mz.rn vr6{mr1}, vr6, vr9
000324  c2140323  vload_mask16.mz vr9{mr1}, 384(r6)
000328  9692b202  vadd.f.mz.rn vr5{mr1}, vr5, vr11
00032c  c2158323  vload_mask16.mz vr11{mr1}, 448(r6)
000330  1612a202  vadd.f.mz.rn vr4{mr1}, vr4, vr10
000334  96919102  vadd.f.mz.rn vr3{mr1}, vr3, vr9
000338  1611b102  vadd.f.mz.rn vr2{mr1}, vr2, vr11
00033c  bbee71ff  bneq r3, r23, -72
000340  3f29fcfe  blt.s r24, r15, -440
000344  96908002  vadd.f.mz.rn vr1{mr1}, vr1, vr8
000348  96907002  vadd.f.mz.rn vr1{mr1}, vr1, vr7
00034c  96906002  vadd.f.mz.rn vr1{mr1}, vr1, vr6
000350  96905002  vadd.f.mz.rn vr1{mr1}, vr1, vr5
000354  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000358  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00035c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000360  fa910040  vextracti.f r3, 0(vr1)
000364  7a921040  vextracti.f r4, 1(vr1)
000368  8be14110  add.f.rn r3, r3, r4
00036c  7a922040  vextracti.f r4, 2(vr1)
000370  8b613210  add.f.rn r3, r4, r3
000374  7a923040  vextracti.f r4, 3(vr1)
000378  8b613210  add.f.rn r3, r4, r3
00037c  7a924040  vextracti.f r4, 4(vr1)
000380  8b613210  add.f.rn r3, r4, r3
000384  7a925040  vextracti.f r4, 5(vr1)
000388  8b613210  add.f.rn r3, r4, r3
00038c  7a926040  vextracti.f r4, 6(vr1)
000390  8b613210  add.f.rn r3, r4, r3
000394  7a927040  vextracti.f r4, 7(vr1)
000398  8b613210  add.f.rn r3, r4, r3
00039c  7a928040  vextracti.f r4, 8(vr1)
0003a0  8b613210  add.f.rn r3, r4, r3
0003a4  7a929040  vextracti.f r4, 9(vr1)
0003a8  8b613210  add.f.rn r3, r4, r3
0003ac  7a92a040  vextracti.f r4, 10(vr1)
0003b0  8b613210  add.f.rn r3, r4, r3
0003b4  7a92b040  vextracti.f r4, 11(vr1)
0003b8  8b613210  add.f.rn r3, r4, r3
0003bc  7a92c040  vextracti.f r4, 12(vr1)
0003c0  8b613210  add.f.rn r3, r4, r3
0003c4  7a92d040  vextracti.f r4, 13(vr1)
0003c8  8b613210  add.f.rn r3, r4, r3
0003cc  7a92e040  vextracti.f r4, 14(vr1)
0003d0  8b613210  add.f.rn r3, r4, r3
0003d4  7a92f040  vextracti.f r4, 15(vr1)
0003d8  8b613210  add.f.rn r3, r4, r3
0003dc  2b0200f0  lui r4, 983040
0003e0  b3a10100  float2hfloat.rn r3, r3
0003e4  73103ffc  store.h r3, -64(r30)
0003e8  9f210000  addli r3, zero, 2
0003ec  00a00000  mfence { lm }
0003f0  97914100  or r3, r3, r4
0003f4  1f028fff  addli r4, r30, -64
0003f8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0003fc  00a00000  mfence { lm }
000400  5bb1ffff  j -632
000404  9f8eae30  addli sp, sp, 6224
000408  00a00300  mfence { lm, sm, gm }
00040c  00100000  exit
000410  00100000  exit
000414  00100000  exit
000418  00100000  exit
00041c  00100000  exit
000420  00100000  exit
000424  00100000  exit
000428  00100000  exit
00042c  00100000  exit
000430  00100000  exit
000434  00100000  exit
000438  00100000  exit
00043c  00100000  exit
000440  00100000  exit
000444  00100000  exit
000448  00100000  exit
00044c  00100000  exit
000450  00100000  exit
000454  00100000  exit
000458  00100000  exit
00045c  00100000  exit
000460  00100000  exit
000464  00100000  exit
000468  00100000  exit
00046c  00100000  exit
000470  00100000  exit
000474  00100000  exit
000478  00100000  exit
00047c  00100000  exit
000480  00100000  exit
000484  00100000  exit
000488  00100000  exit
00048c  00100000  exit
000490  00100000  exit
000494  00100000  exit
000498  00100000  exit
00049c  00100000  exit
0004a0  00100000  exit
0004a4  00100000  exit
0004a8  00100000  exit
0004ac  00100000  exit
0004b0  00100000  exit
0004b4  00100000  exit
0004b8  00100000  exit
0004bc  00100000  exit
0004c0  00100000  exit
0004c4  00100000  exit
0004c8  00100000  exit
0004cc  00100000  exit
0004d0  00100000  exit
0004d4  00100000  exit
0004d8  00100000  exit
0004dc  00100000  exit
0004e0  00100000  exit
0004e4  00100000  exit
0004e8  00100000  exit
0004ec  00100000  exit
0004f0  00100000  exit
0004f4  00100000  exit
0004f8  00100000  exit
0004fc  00100000  exit
000500  00100000  exit
000504  00100000  exit
000508  00100000  exit
00050c  00100000  exit
000510  00100000  exit
000514  00100000  exit
000518  00100000  exit
00051c  00100000  exit
000520  00100000  exit
000524  00100000  exit
000528  00100000  exit
00052c  00100000  exit
000530  00100000  exit
000534  00100000  exit
000538  00100000  exit
00053c  00100000  exit
000540  00100000  exit
000544  00100000  exit
000548  00100000  exit
00054c  00100000  exit
000550  00100000  exit
000554  00100000  exit
000558  00100000  exit
00055c  00100000  exit
000560  00100000  exit
000564  00100000  exit
000568  00100000  exit
00056c  00100000  exit
000570  00100000  exit
000574  00100000  exit
000578  00100000  exit
00057c  00100000  exit
000580  00100000  exit
000584  00100000  exit
000588  00100000  exit
00058c  00100000  exit
000590  00100000  exit
000594  00100000  exit
000598  00100000  exit
00059c  00100000  exit
0005a0  00100000  exit
0005a4  00100000  exit
0005a8  00100000  exit
0005ac  00100000  exit
0005b0  00100000  exit
0005b4  00100000  exit
0005b8  00100000  exit
0005bc  00100000  exit
0005c0  00100000  exit
0005c4  00100000  exit
0005c8  00100000  exit
0005cc  00100000  exit
0005d0  00100000  exit
0005d4  00100000  exit
0005d8  00100000  exit
0005dc  00100000  exit
0005e0  00100000  exit
0005e4  00100000  exit
0005e8  00100000  exit
0005ec  00100000  exit
0005f0  00100000  exit
0005f4  00100000  exit
0005f8  00100000  exit
0005fc  00100000  exit
000600  00100000  exit
000604  00100000  exit
000608  00100000  exit
00060c  00100000  exit
000610  00100000  exit
000614  00100000  exit
000618  00100000  exit
00061c  00100000  exit
000620  00100000  exit
000624  00100000  exit
000628  00100000  exit
00062c  00100000  exit
000630  00100000  exit
000634  00100000  exit
000638  00100000  exit
00063c  00100000  exit
000640  00100000  exit
000644  00100000  exit
000648  00100000  exit
00064c  00100000  exit
