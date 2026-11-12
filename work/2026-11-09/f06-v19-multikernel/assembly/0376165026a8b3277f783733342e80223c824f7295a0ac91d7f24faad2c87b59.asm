; SHA-256 0376165026a8b3277f783733342e80223c824f7295a0ac91d7f24faad2c87b59
; P800 Cluster · XTDK LLVM 19 · 896 / 896 words decoded
; bound names: triton_unk_fused__softmax_add_0
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
000078  9f495000  addli r19, zero, 44
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
0000dc  9f8e0ef5  addli sp, sp, -1408
0000e0  ab000000  lui r1, 0
0000e4  00360002  core_id r12
0000e8  1f8f8e0a  addli r30, sp, 1344
0000ec  abf20000  lui r5, 15
0000f0  1b312600  slli r2, r12, 2
0000f4  9f800000  addli r1, r1, 0
0000f8  63424f00  loadli.w r4,  36(r30)
0000fc  63034f00  loadli.w r6,  32(r30)
000100  9b92f2ff  ori r5, r5, 4095
000104  e3015f00  loadli.w r3,  40(r30)
000108  8b131110  add.s r7, r2, r1
00010c  1f842320  addli r8, r7, 4112
000110  674f8ff4  storeli.w r8, -1292(r30)
000114  73600400  stores.w zero, 0(r8)
000118  00a00300  mfence { lm, sm, gm }
00011c  80a10204  csr_set csr3, r5
000120  00d00100  sync_group
000124  e70f7ff4  storeli.w r7, -1288(r30)
000128  73e00300  stores.w zero, 0(r7)
00012c  8b136220  mul.s r7, r4, r6
000130  00520002  load_param_i r4, 0
000134  00a00300  mfence { lm, sm, gm }
000138  80a10204  csr_set csr3, r5
00013c  00d00100  sync_group
000140  8b913320  mul.s r3, r7, r3
000144  e74e3ff4  storeli.w r3, -1300(r30)
000148  cba94104  ble.s r3, r4, 2664
00014c  1f052000  addli r10, zero, 16
000150  2bfaffff  lui r20, 1048575
000154  80d10002  load_param_i r3, 1
000158  eb588f00  load.d r[18:19], 8(r30)
00015c  9b0df600  andi r27, r12, 15
000160  1f040ff6  addli r8, r30, -1280
000164  9f040002  addli r9, zero, 256
000168  9f058000  addli r11, zero, 64
00016c  9f064000  addli r13, zero, 32
000170  1f0b0002  addli r22, zero, 256
000174  9f0b0001  addli r23, zero, 128
000178  9f0c8000  addli r25, zero, 64
00017c  0b18a630  div.s r16, r12, r10
000180  e70e3ff4  storeli.w r3, -1304(r30)
000184  9f210000  addli r3, zero, 2
000188  1f050001  addli r10, zero, 128
00018c  9b394800  slli r19, r16, 4
000190  1b38b800  slli r16, r16, 11
000194  0b133619  sub.s r6, r12, r19
000198  9b190afc  ori r19, r20, 4032
00019c  1b337300  slli r6, r6, 7
0001a0  17013101  and r2, r2, r19
0001a4  b3190328  sext_int2long r[20:21], r6
0001a8  97b93902  sll.d r[20:21], r[20:21], r3
0001ac  8b110311  add.s r3, r6, r16
0001b0  0b181110  add.s r16, r2, r1
0001b4  1f030004  addli r6, zero, 512
0001b8  ab0000f0  lui r1, 983040
0001bc  1f010ffa  addli r2, r30, -768
0001c0  8ba93811  add.ul r[20:21], r[18:19], r[20:21]
0001c4  97101300  or r1, r6, r1
0001c8  674e3ff4  storeli.w r3, -1308(r30)
0001cc  1f092820  addli r18, r16, 4112
0001d0  ffa02900  l_gm2lm r1, r2, 0(r[20:21])
0001d4  00a00000  mfence { lm }
0001d8  db030000  j 28
0001dc  6302eff5  loadli.w r4,  -1296(r30)
0001e0  e300dff5  loadli.w r1,  -1304(r30)
0001e4  0b121210  add.s r4, r4, r1
0001e8  e340dff5  loadli.w r1,  -1300(r30)
0001ec  3f201200  blt.s r4, r1, 8
0001f0  5b380100  j 2496
0001f4  e3005f00  loadli.w r1,  40(r30)
0001f8  63414f00  loadli.w r2,  36(r30)
0001fc  1f1e0000  addli r28, zero, 1
000200  670f4ff4  storeli.w r4, -1296(r30)
000204  8b101230  div.s r1, r4, r1
000208  8b902030  div.s r1, r1, r2
00020c  6341cff5  loadli.w r2,  -1308(r30)
000210  9bb0e000  slli r1, r1, 14
000214  8b101110  add.s r1, r2, r1
000218  e74f1ff4  storeli.w r1, -1284(r30)
00021c  9f000000  addli r1, zero, 0
000220  5b140000  j 160
000224  00a00300  mfence { lm, sm, gm }
000228  80a10204  csr_set csr3, r5
00022c  00d00100  sync_group
000230  ef410900  loads.w r3, 0(r18)
000234  2b02803f  lui r4, 260096
000238  6b530f01  load.d r[7:8], 16(r30)
00023c  1f040ff6  addli r8, r30, -1280
000240  8b201310  add.ul r[2:3], r[7:8], r[2:3]
000244  1f030004  addli r6, zero, 512
000248  8f013218  div.f.rn r3, r4, r3
00024c  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
000250  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
000254  0a912102  vmul.f.mz.rn vr2{mr1}, r3, vr2
000258  8a913102  vmul.f.mz.rn vr3{mr1}, r3, vr3
00025c  0a924102  vmul.f.mz.rn vr4{mr1}, r3, vr4
000260  8a925102  vmul.f.mz.rn vr5{mr1}, r3, vr5
000264  0a936102  vmul.f.mz.rn vr6{mr1}, r3, vr6
000268  8a937102  vmul.f.mz.rn vr7{mr1}, r3, vr7
00026c  9f010ff6  addli r3, r30, -1280
000270  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
000274  9f018ff6  addli r3, r30, -1216
000278  46900102  vstore_mask16.mz vr0{mr1}, 0(r3)
00027c  9f010ff7  addli r3, r30, -1152
000280  46902102  vstore_mask16.mz vr2{mr1}, 0(r3)
000284  9f018ff7  addli r3, r30, -1088
000288  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
00028c  ab0100f0  lui r3, 983040
000290  46104f82  vstore_mask16.mz vr4{mr1}, 1024(r30)
000294  46145f82  vstore_mask16.mz vr5{mr1}, 1088(r30)
000298  46186f82  vstore_mask16.mz vr6{mr1}, 1152(r30)
00029c  461c7f82  vstore_mask16.mz vr7{mr1}, 1216(r30)
0002a0  00a00000  mfence { lm }
0002a4  97113300  or r3, r6, r3
0002a8  ffb18000  s_lm2gm r3, r8, 0(r[2:3])
0002ac  1b011e00  andi r2, r28, 1
0002b0  9f000040  addli r1, zero, 8192
0002b4  1f0e0000  addli r28, zero, 0
0002b8  00a00000  mfence { lm }
0002bc  b70c01fe  beq r2, zero, -224
0002c0  6341fff5  loadli.w r2,  -1284(r30)
0002c4  9f210000  addli r3, zero, 2
0002c8  2b0600f0  lui r12, 983040
0002cc  1716c300  or r12, r6, r12
0002d0  8b101110  add.s r1, r2, r1
0002d4  b3900028  sext_int2long r[2:3], r1
0002d8  97b03002  sll.d r[2:3], r[2:3], r3
0002dc  eb510f00  load.d r[4:5], 0(r30)
0002e0  0ba31110  add.ul r[7:8], r[4:5], r[2:3]
0002e4  9f010ff6  addli r3, r30, -1280
0002e8  7f268300  l_gm2lm r12, r8, 0(r[7:8])
0002ec  00a00000  mfence { lm }
0002f0  42900102  vload_mask16.mz vr0{mr1}, 0(r3)
0002f4  9f018ff6  addli r3, r30, -1216
0002f8  c2900102  vload_mask16.mz vr1{mr1}, 0(r3)
0002fc  9f010ff7  addli r3, r30, -1152
000300  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
000304  9f018ff7  addli r3, r30, -1088
000308  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
00030c  c2120f82  vload_mask16.mz vr5{mr1}, 1024(r30)
000310  42110fa2  vload_mask16.mz vr2{mr1}, 1280(r30)
000314  42138f82  vload_mask16.mz vr6{mr1}, 1088(r30)
000318  42140f83  vload_mask16.mz vr8{mr1}, 1152(r30)
00031c  c2148f83  vload_mask16.mz vr9{mr1}, 1216(r30)
000320  42158fa2  vload_mask16.mz vr10{mr1}, 1344(r30)
000324  c2150fa3  vload_mask16.mz vr11{mr1}, 1408(r30)
000328  96132002  vadd.f.mz.rn vr7{mr1}, vr0, vr2
00032c  42108fa3  vload_mask16.mz vr0{mr1}, 1472(r30)
000330  1691a002  vadd.f.mz.rn vr2{mr1}, vr1, vr10
000334  c2100fc2  vload_mask16.mz vr1{mr1}, 1536(r30)
000338  42158fc2  vload_mask16.mz vr10{mr1}, 1600(r30)
00033c  9691b102  vadd.f.mz.rn vr3{mr1}, vr3, vr11
000340  16120202  vadd.f.mz.rn vr4{mr1}, vr4, vr0
000344  42100fc3  vload_mask16.mz vr0{mr1}, 1664(r30)
000348  96921202  vadd.f.mz.rn vr5{mr1}, vr5, vr1
00034c  c2158fc3  vload_mask16.mz vr11{mr1}, 1728(r30)
000350  1613a302  vadd.f.mz.rn vr6{mr1}, vr6, vr10
000354  e301fff5  loadli.w r3,  -1288(r30)
000358  96100402  vadd.f.mz.rn vr1{mr1}, vr8, vr0
00035c  36942302  vmax.f.mz vr8{mr1}, vr7, vr2
000360  1690b402  vadd.f.mz.rn vr0{mr1}, vr9, vr11
000364  36143402  vmax.f.mz vr8{mr1}, vr8, vr3
000368  36144402  vmax.f.mz vr8{mr1}, vr8, vr4
00036c  36145402  vmax.f.mz vr8{mr1}, vr8, vr5
000370  36146402  vmax.f.mz vr8{mr1}, vr8, vr6
000374  36141402  vmax.f.mz vr8{mr1}, vr8, vr1
000378  36140402  vmax.f.mz vr8{mr1}, vr8, vr0
00037c  eaf484c0  vsrl.p vr9, r9, vr8
000380  36149402  vmax.f.mz vr8{mr1}, vr8, vr9
000384  ea7485c0  vsrl.p vr9, r10, vr8
000388  36149402  vmax.f.mz vr8{mr1}, vr8, vr9
00038c  eaf485c0  vsrl.p vr9, r11, vr8
000390  36149402  vmax.f.mz vr8{mr1}, vr8, vr9
000394  eaf486c0  vsrl.p vr9, r13, vr8
000398  36149402  vmax.f.mz vr8{mr1}, vr8, vr9
00039c  7a130440  vextracti.f r6, 0(vr8)
0003a0  73e06100  stores.w r6, 0(r3)
0003a4  00a00300  mfence { lm, sm, gm }
0003a8  80a10204  csr_set csr3, r5
0003ac  00d00100  sync_group
0003b0  3b920d00  bneq r27, zero, 132
0003b4  6f430800  loads.w r6, 0(r16)
0003b8  ef434800  loads.w r7, 4(r16)
0003bc  6f468800  loads.w r12, 8(r16)
0003c0  ef47c800  loads.w r15, 12(r16)
0003c4  6f440801  loads.w r8, 16(r16)
0003c8  ef444801  loads.w r9, 20(r16)
0003cc  6f458801  loads.w r10, 24(r16)
0003d0  ef45c801  loads.w r11, 28(r16)
0003d4  ef460802  loads.w r13, 32(r16)
0003d8  6f4c4802  loads.w r24, 36(r16)
0003dc  6f4d8802  loads.w r26, 40(r16)
0003e0  ef41c803  loads.w r3, 60(r16)
0003e4  0b637348  max.f r6, r6, r7
0003e8  ef43c802  loads.w r7, 44(r16)
0003ec  0b63c348  max.f r6, r6, r12
0003f0  6f464803  loads.w r12, 52(r16)
0003f4  0b63f348  max.f r6, r6, r15
0003f8  ef478803  loads.w r15, 56(r16)
0003fc  0b638348  max.f r6, r6, r8
000400  6f440803  loads.w r8, 48(r16)
000404  0b639348  max.f r6, r6, r9
000408  0b63a348  max.f r6, r6, r10
00040c  0b63b348  max.f r6, r6, r11
000410  0b63d348  max.f r6, r6, r13
000414  0b638349  max.f r6, r6, r24
000418  0b63a349  max.f r6, r6, r26
00041c  0b637348  max.f r6, r6, r7
000420  0b638348  max.f r6, r6, r8
000424  0b63c348  max.f r6, r6, r12
000428  0b63f348  max.f r6, r6, r15
00042c  8b613348  max.f r3, r6, r3
000430  73603800  stores.w r3, 0(r16)
000434  00a00300  mfence { lm, sm, gm }
000438  80a10204  csr_set csr3, r5
00043c  00d00100  sync_group
000440  ef410800  loads.w r3, 0(r16)
000444  2b020080  lui r4, 524288
000448  1f070ffe  addli r14, r30, -256
00044c  97a14100  xor r3, r3, r4
000450  92937102  vadd.f.mz.rn vr7{mr1}, r3, vr7
000454  12944102  vadd.f.mz.rn vr8{mr1}, r3, vr4
000458  46107fe2  vstore_mask16.mz vr7{mr1}, 1792(r30)
00045c  12912102  vadd.f.mz.rn vr2{mr1}, r3, vr2
000460  92913102  vadd.f.mz.rn vr3{mr1}, r3, vr3
000464  46142fe2  vstore_mask16.mz vr2{mr1}, 1856(r30)
000468  46183fe2  vstore_mask16.mz vr3{mr1}, 1920(r30)
00046c  461c8fe2  vstore_mask16.mz vr8{mr1}, 1984(r30)
000470  12926102  vadd.f.mz.rn vr4{mr1}, r3, vr6
000474  12931102  vadd.f.mz.rn vr6{mr1}, r3, vr1
000478  92925102  vadd.f.mz.rn vr5{mr1}, r3, vr5
00047c  00a00000  mfence { lm }
000480  63030700  loadli.w r6,  0(r14)
000484  e3430700  loadli.w r7,  4(r14)
000488  63041700  loadli.w r8,  8(r14)
00048c  e3441700  loadli.w r9,  12(r14)
000490  63052700  loadli.w r10,  16(r14)
000494  e3452700  loadli.w r11,  20(r14)
000498  63063700  loadli.w r12,  24(r14)
00049c  e3463700  loadli.w r13,  28(r14)
0004a0  e3074700  loadli.w r15,  32(r14)
0004a4  634c4700  loadli.w r24,  36(r14)
0004a8  630d5700  loadli.w r26,  40(r14)
0004ac  63425700  loadli.w r4,  44(r14)
0004b0  e3086700  loadli.w r17,  48(r14)
0004b4  e3496700  loadli.w r19,  52(r14)
0004b8  630a7700  loadli.w r20,  56(r14)
0004bc  e34a7700  loadli.w r21,  60(r14)
0004c0  0f030300  exp.f.rn r6, r6
0004c4  8f830300  exp.f.rn r7, r7
0004c8  0f040400  exp.f.rn r8, r8
0004cc  8f840400  exp.f.rn r9, r9
0004d0  0f050500  exp.f.rn r10, r10
0004d4  8f850500  exp.f.rn r11, r11
0004d8  0f060600  exp.f.rn r12, r12
0004dc  8f860600  exp.f.rn r13, r13
0004e0  8f870700  exp.f.rn r15, r15
0004e4  0f0c0c00  exp.f.rn r24, r24
0004e8  0f0d0d00  exp.f.rn r26, r26
0004ec  0f020200  exp.f.rn r4, r4
0004f0  8f880800  exp.f.rn r17, r17
0004f4  8f890900  exp.f.rn r19, r19
0004f8  0f0a0a00  exp.f.rn r20, r20
0004fc  8f8a0a00  exp.f.rn r21, r21
000500  67006700  storeli.w r6, 0(r14)
000504  67407700  storeli.w r7, 4(r14)
000508  e7008700  storeli.w r8, 8(r14)
00050c  e7409700  storeli.w r9, 12(r14)
000510  6701a700  storeli.w r10, 16(r14)
000514  6741b700  storeli.w r11, 20(r14)
000518  e701c700  storeli.w r12, 24(r14)
00051c  e741d700  storeli.w r13, 28(r14)
000520  6702f700  storeli.w r15, 32(r14)
000524  67428701  storeli.w r24, 36(r14)
000528  e702a701  storeli.w r26, 40(r14)
00052c  e7424700  storeli.w r4, 44(r14)
000530  67031701  storeli.w r17, 48(r14)
000534  67433701  storeli.w r19, 52(r14)
000538  e7034701  storeli.w r20, 56(r14)
00053c  e7435701  storeli.w r21, 60(r14)
000540  63038700  loadli.w r6,  64(r14)
000544  e3438700  loadli.w r7,  68(r14)
000548  63049700  loadli.w r8,  72(r14)
00054c  e3449700  loadli.w r9,  76(r14)
000550  6305a700  loadli.w r10,  80(r14)
000554  e345a700  loadli.w r11,  84(r14)
000558  6306b700  loadli.w r12,  88(r14)
00055c  e346b700  loadli.w r13,  92(r14)
000560  e307c700  loadli.w r15,  96(r14)
000564  634cc700  loadli.w r24,  100(r14)
000568  630dd700  loadli.w r26,  104(r14)
00056c  6342d700  loadli.w r4,  108(r14)
000570  e308e700  loadli.w r17,  112(r14)
000574  e349e700  loadli.w r19,  116(r14)
000578  630af700  loadli.w r20,  120(r14)
00057c  e34af700  loadli.w r21,  124(r14)
000580  0f030300  exp.f.rn r6, r6
000584  8f830300  exp.f.rn r7, r7
000588  0f040400  exp.f.rn r8, r8
00058c  8f840400  exp.f.rn r9, r9
000590  0f050500  exp.f.rn r10, r10
000594  8f850500  exp.f.rn r11, r11
000598  0f060600  exp.f.rn r12, r12
00059c  8f860600  exp.f.rn r13, r13
0005a0  8f870700  exp.f.rn r15, r15
0005a4  0f0c0c00  exp.f.rn r24, r24
0005a8  0f0d0d00  exp.f.rn r26, r26
0005ac  0f020200  exp.f.rn r4, r4
0005b0  8f880800  exp.f.rn r17, r17
0005b4  8f890900  exp.f.rn r19, r19
0005b8  0f0a0a00  exp.f.rn r20, r20
0005bc  8f8a0a00  exp.f.rn r21, r21
0005c0  67046700  storeli.w r6, 64(r14)
0005c4  67447700  storeli.w r7, 68(r14)
0005c8  e7048700  storeli.w r8, 72(r14)
0005cc  e7449700  storeli.w r9, 76(r14)
0005d0  6705a700  storeli.w r10, 80(r14)
0005d4  6745b700  storeli.w r11, 84(r14)
0005d8  e705c700  storeli.w r12, 88(r14)
0005dc  e745d700  storeli.w r13, 92(r14)
0005e0  6706f700  storeli.w r15, 96(r14)
0005e4  67468701  storeli.w r24, 100(r14)
0005e8  e706a701  storeli.w r26, 104(r14)
0005ec  e7464700  storeli.w r4, 108(r14)
0005f0  67071701  storeli.w r17, 112(r14)
0005f4  67473701  storeli.w r19, 116(r14)
0005f8  e7074701  storeli.w r20, 120(r14)
0005fc  e7475701  storeli.w r21, 124(r14)
000600  63030701  loadli.w r6,  128(r14)
000604  e3430701  loadli.w r7,  132(r14)
000608  63041701  loadli.w r8,  136(r14)
00060c  e3441701  loadli.w r9,  140(r14)
000610  63052701  loadli.w r10,  144(r14)
000614  e3452701  loadli.w r11,  148(r14)
000618  63063701  loadli.w r12,  152(r14)
00061c  e3463701  loadli.w r13,  156(r14)
000620  e3074701  loadli.w r15,  160(r14)
000624  634c4701  loadli.w r24,  164(r14)
000628  630d5701  loadli.w r26,  168(r14)
00062c  63425701  loadli.w r4,  172(r14)
000630  e3086701  loadli.w r17,  176(r14)
000634  e3496701  loadli.w r19,  180(r14)
000638  630a7701  loadli.w r20,  184(r14)
00063c  e34a7701  loadli.w r21,  188(r14)
000640  0f030300  exp.f.rn r6, r6
000644  8f830300  exp.f.rn r7, r7
000648  0f040400  exp.f.rn r8, r8
00064c  8f840400  exp.f.rn r9, r9
000650  0f050500  exp.f.rn r10, r10
000654  8f850500  exp.f.rn r11, r11
000658  0f060600  exp.f.rn r12, r12
00065c  8f860600  exp.f.rn r13, r13
000660  8f870700  exp.f.rn r15, r15
000664  0f0c0c00  exp.f.rn r24, r24
000668  0f0d0d00  exp.f.rn r26, r26
00066c  0f020200  exp.f.rn r4, r4
000670  8f880800  exp.f.rn r17, r17
000674  8f890900  exp.f.rn r19, r19
000678  0f0a0a00  exp.f.rn r20, r20
00067c  8f8a0a00  exp.f.rn r21, r21
000680  67086700  storeli.w r6, 128(r14)
000684  67487700  storeli.w r7, 132(r14)
000688  e7088700  storeli.w r8, 136(r14)
00068c  e7489700  storeli.w r9, 140(r14)
000690  6709a700  storeli.w r10, 144(r14)
000694  6749b700  storeli.w r11, 148(r14)
000698  e709c700  storeli.w r12, 152(r14)
00069c  e749d700  storeli.w r13, 156(r14)
0006a0  670af700  storeli.w r15, 160(r14)
0006a4  674a8701  storeli.w r24, 164(r14)
0006a8  e70aa701  storeli.w r26, 168(r14)
0006ac  e74a4700  storeli.w r4, 172(r14)
0006b0  670b1701  storeli.w r17, 176(r14)
0006b4  674b3701  storeli.w r19, 180(r14)
0006b8  e70b4701  storeli.w r20, 184(r14)
0006bc  e74b5701  storeli.w r21, 188(r14)
0006c0  63038701  loadli.w r6,  192(r14)
0006c4  e3438701  loadli.w r7,  196(r14)
0006c8  63049701  loadli.w r8,  200(r14)
0006cc  e3449701  loadli.w r9,  204(r14)
0006d0  6305a701  loadli.w r10,  208(r14)
0006d4  e345a701  loadli.w r11,  212(r14)
0006d8  6306b701  loadli.w r12,  216(r14)
0006dc  e346b701  loadli.w r13,  220(r14)
0006e0  e307c701  loadli.w r15,  224(r14)
0006e4  634cc701  loadli.w r24,  228(r14)
0006e8  630dd701  loadli.w r26,  232(r14)
0006ec  6342d701  loadli.w r4,  236(r14)
0006f0  e308e701  loadli.w r17,  240(r14)
0006f4  e349e701  loadli.w r19,  244(r14)
0006f8  630af701  loadli.w r20,  248(r14)
0006fc  e34af701  loadli.w r21,  252(r14)
000700  0f030300  exp.f.rn r6, r6
000704  8f830300  exp.f.rn r7, r7
000708  0f040400  exp.f.rn r8, r8
00070c  8f840400  exp.f.rn r9, r9
000710  0f050500  exp.f.rn r10, r10
000714  8f850500  exp.f.rn r11, r11
000718  0f060600  exp.f.rn r12, r12
00071c  8f860600  exp.f.rn r13, r13
000720  8f870700  exp.f.rn r15, r15
000724  0f0c0c00  exp.f.rn r24, r24
000728  0f0d0d00  exp.f.rn r26, r26
00072c  0f020200  exp.f.rn r4, r4
000730  8f880800  exp.f.rn r17, r17
000734  8f890900  exp.f.rn r19, r19
000738  0f0a0a00  exp.f.rn r20, r20
00073c  8f8a0a00  exp.f.rn r21, r21
000740  670c6700  storeli.w r6, 192(r14)
000744  674c7700  storeli.w r7, 196(r14)
000748  e70c8700  storeli.w r8, 200(r14)
00074c  e74c9700  storeli.w r9, 204(r14)
000750  670da700  storeli.w r10, 208(r14)
000754  674db700  storeli.w r11, 212(r14)
000758  e70dc700  storeli.w r12, 216(r14)
00075c  e74dd700  storeli.w r13, 220(r14)
000760  670ef700  storeli.w r15, 224(r14)
000764  674e8701  storeli.w r24, 228(r14)
000768  e70ea701  storeli.w r26, 232(r14)
00076c  e74e4700  storeli.w r4, 236(r14)
000770  670f1701  storeli.w r17, 240(r14)
000774  674f3701  storeli.w r19, 244(r14)
000778  e70f4701  storeli.w r20, 248(r14)
00077c  e74f5701  storeli.w r21, 252(r14)
000780  00a00000  mfence { lm }
000784  92930102  vadd.f.mz.rn vr7{mr1}, r3, vr0
000788  c2100fe2  vload_mask16.mz vr1{mr1}, 1792(r30)
00078c  42108fe2  vload_mask16.mz vr0{mr1}, 1856(r30)
000790  42110fe3  vload_mask16.mz vr2{mr1}, 1920(r30)
000794  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
000798  46105fe2  vstore_mask16.mz vr5{mr1}, 1792(r30)
00079c  46144fe2  vstore_mask16.mz vr4{mr1}, 1856(r30)
0007a0  46186fe2  vstore_mask16.mz vr6{mr1}, 1920(r30)
0007a4  461c7fe2  vstore_mask16.mz vr7{mr1}, 1984(r30)
0007a8  00a00000  mfence { lm }
0007ac  e3010700  loadli.w r3,  0(r14)
0007b0  63420700  loadli.w r4,  4(r14)
0007b4  63031700  loadli.w r6,  8(r14)
0007b8  e3431700  loadli.w r7,  12(r14)
0007bc  63042700  loadli.w r8,  16(r14)
0007c0  e3442700  loadli.w r9,  20(r14)
0007c4  63053700  loadli.w r10,  24(r14)
0007c8  e3453700  loadli.w r11,  28(r14)
0007cc  63064700  loadli.w r12,  32(r14)
0007d0  e3464700  loadli.w r13,  36(r14)
0007d4  e3075700  loadli.w r15,  40(r14)
0007d8  e3485700  loadli.w r17,  44(r14)
0007dc  e3096700  loadli.w r19,  48(r14)
0007e0  634a6700  loadli.w r20,  52(r14)
0007e4  e30a7700  loadli.w r21,  56(r14)
0007e8  634c7700  loadli.w r24,  60(r14)
0007ec  8f810100  exp.f.rn r3, r3
0007f0  0f020200  exp.f.rn r4, r4
0007f4  0f030300  exp.f.rn r6, r6
0007f8  8f830300  exp.f.rn r7, r7
0007fc  0f040400  exp.f.rn r8, r8
000800  8f840400  exp.f.rn r9, r9
000804  0f050500  exp.f.rn r10, r10
000808  8f850500  exp.f.rn r11, r11
00080c  0f060600  exp.f.rn r12, r12
000810  8f860600  exp.f.rn r13, r13
000814  8f870700  exp.f.rn r15, r15
000818  8f880800  exp.f.rn r17, r17
00081c  8f890900  exp.f.rn r19, r19
000820  0f0a0a00  exp.f.rn r20, r20
000824  8f8a0a00  exp.f.rn r21, r21
000828  0f0c0c00  exp.f.rn r24, r24
00082c  67003700  storeli.w r3, 0(r14)
000830  67404700  storeli.w r4, 4(r14)
000834  e7006700  storeli.w r6, 8(r14)
000838  e7407700  storeli.w r7, 12(r14)
00083c  67018700  storeli.w r8, 16(r14)
000840  67419700  storeli.w r9, 20(r14)
000844  e701a700  storeli.w r10, 24(r14)
000848  e741b700  storeli.w r11, 28(r14)
00084c  6702c700  storeli.w r12, 32(r14)
000850  6742d700  storeli.w r13, 36(r14)
000854  e702f700  storeli.w r15, 40(r14)
000858  e7421701  storeli.w r17, 44(r14)
00085c  67033701  storeli.w r19, 48(r14)
000860  67434701  storeli.w r20, 52(r14)
000864  e7035701  storeli.w r21, 56(r14)
000868  e7438701  storeli.w r24, 60(r14)
00086c  e3018700  loadli.w r3,  64(r14)
000870  63428700  loadli.w r4,  68(r14)
000874  63039700  loadli.w r6,  72(r14)
000878  e3439700  loadli.w r7,  76(r14)
00087c  6304a700  loadli.w r8,  80(r14)
000880  e344a700  loadli.w r9,  84(r14)
000884  6305b700  loadli.w r10,  88(r14)
000888  e345b700  loadli.w r11,  92(r14)
00088c  6306c700  loadli.w r12,  96(r14)
000890  e346c700  loadli.w r13,  100(r14)
000894  e307d700  loadli.w r15,  104(r14)
000898  e348d700  loadli.w r17,  108(r14)
00089c  e309e700  loadli.w r19,  112(r14)
0008a0  634ae700  loadli.w r20,  116(r14)
0008a4  e30af700  loadli.w r21,  120(r14)
0008a8  634cf700  loadli.w r24,  124(r14)
0008ac  8f810100  exp.f.rn r3, r3
0008b0  0f020200  exp.f.rn r4, r4
0008b4  0f030300  exp.f.rn r6, r6
0008b8  8f830300  exp.f.rn r7, r7
0008bc  0f040400  exp.f.rn r8, r8
0008c0  8f840400  exp.f.rn r9, r9
0008c4  0f050500  exp.f.rn r10, r10
0008c8  8f850500  exp.f.rn r11, r11
0008cc  0f060600  exp.f.rn r12, r12
0008d0  8f860600  exp.f.rn r13, r13
0008d4  8f870700  exp.f.rn r15, r15
0008d8  8f880800  exp.f.rn r17, r17
0008dc  8f890900  exp.f.rn r19, r19
0008e0  0f0a0a00  exp.f.rn r20, r20
0008e4  8f8a0a00  exp.f.rn r21, r21
0008e8  0f0c0c00  exp.f.rn r24, r24
0008ec  67043700  storeli.w r3, 64(r14)
0008f0  67444700  storeli.w r4, 68(r14)
0008f4  e7046700  storeli.w r6, 72(r14)
0008f8  e7447700  storeli.w r7, 76(r14)
0008fc  67058700  storeli.w r8, 80(r14)
000900  67459700  storeli.w r9, 84(r14)
000904  e705a700  storeli.w r10, 88(r14)
000908  e745b700  storeli.w r11, 92(r14)
00090c  6706c700  storeli.w r12, 96(r14)
000910  6746d700  storeli.w r13, 100(r14)
000914  e706f700  storeli.w r15, 104(r14)
000918  e7461701  storeli.w r17, 108(r14)
00091c  67073701  storeli.w r19, 112(r14)
000920  67474701  storeli.w r20, 116(r14)
000924  e7075701  storeli.w r21, 120(r14)
000928  e7478701  storeli.w r24, 124(r14)
00092c  e3010701  loadli.w r3,  128(r14)
000930  63420701  loadli.w r4,  132(r14)
000934  63031701  loadli.w r6,  136(r14)
000938  e3431701  loadli.w r7,  140(r14)
00093c  63042701  loadli.w r8,  144(r14)
000940  e3442701  loadli.w r9,  148(r14)
000944  63053701  loadli.w r10,  152(r14)
000948  e3453701  loadli.w r11,  156(r14)
00094c  63064701  loadli.w r12,  160(r14)
000950  e3464701  loadli.w r13,  164(r14)
000954  e3075701  loadli.w r15,  168(r14)
000958  e3485701  loadli.w r17,  172(r14)
00095c  e3096701  loadli.w r19,  176(r14)
000960  634a6701  loadli.w r20,  180(r14)
000964  e30a7701  loadli.w r21,  184(r14)
000968  634c7701  loadli.w r24,  188(r14)
00096c  8f810100  exp.f.rn r3, r3
000970  0f020200  exp.f.rn r4, r4
000974  0f030300  exp.f.rn r6, r6
000978  8f830300  exp.f.rn r7, r7
00097c  0f040400  exp.f.rn r8, r8
000980  8f840400  exp.f.rn r9, r9
000984  0f050500  exp.f.rn r10, r10
000988  8f850500  exp.f.rn r11, r11
00098c  0f060600  exp.f.rn r12, r12
000990  8f860600  exp.f.rn r13, r13
000994  8f870700  exp.f.rn r15, r15
000998  8f880800  exp.f.rn r17, r17
00099c  8f890900  exp.f.rn r19, r19
0009a0  0f0a0a00  exp.f.rn r20, r20
0009a4  8f8a0a00  exp.f.rn r21, r21
0009a8  0f0c0c00  exp.f.rn r24, r24
0009ac  67083700  storeli.w r3, 128(r14)
0009b0  67484700  storeli.w r4, 132(r14)
0009b4  e7086700  storeli.w r6, 136(r14)
0009b8  e7487700  storeli.w r7, 140(r14)
0009bc  67098700  storeli.w r8, 144(r14)
0009c0  67499700  storeli.w r9, 148(r14)
0009c4  e709a700  storeli.w r10, 152(r14)
0009c8  e749b700  storeli.w r11, 156(r14)
0009cc  670ac700  storeli.w r12, 160(r14)
0009d0  674ad700  storeli.w r13, 164(r14)
0009d4  e70af700  storeli.w r15, 168(r14)
0009d8  e74a1701  storeli.w r17, 172(r14)
0009dc  670b3701  storeli.w r19, 176(r14)
0009e0  674b4701  storeli.w r20, 180(r14)
0009e4  e70b5701  storeli.w r21, 184(r14)
0009e8  e74b8701  storeli.w r24, 188(r14)
0009ec  e3018701  loadli.w r3,  192(r14)
0009f0  63428701  loadli.w r4,  196(r14)
0009f4  63039701  loadli.w r6,  200(r14)
0009f8  e3439701  loadli.w r7,  204(r14)
0009fc  6304a701  loadli.w r8,  208(r14)
000a00  e344a701  loadli.w r9,  212(r14)
000a04  6305b701  loadli.w r10,  216(r14)
000a08  e345b701  loadli.w r11,  220(r14)
000a0c  6306c701  loadli.w r12,  224(r14)
000a10  e346c701  loadli.w r13,  228(r14)
000a14  e307d701  loadli.w r15,  232(r14)
000a18  e348d701  loadli.w r17,  236(r14)
000a1c  e309e701  loadli.w r19,  240(r14)
000a20  634ae701  loadli.w r20,  244(r14)
000a24  e30af701  loadli.w r21,  248(r14)
000a28  634cf701  loadli.w r24,  252(r14)
000a2c  8f810100  exp.f.rn r3, r3
000a30  0f020200  exp.f.rn r4, r4
000a34  0f030300  exp.f.rn r6, r6
000a38  8f830300  exp.f.rn r7, r7
000a3c  0f040400  exp.f.rn r8, r8
000a40  8f840400  exp.f.rn r9, r9
000a44  0f050500  exp.f.rn r10, r10
000a48  8f850500  exp.f.rn r11, r11
000a4c  0f060600  exp.f.rn r12, r12
000a50  8f860600  exp.f.rn r13, r13
000a54  8f870700  exp.f.rn r15, r15
000a58  8f880800  exp.f.rn r17, r17
000a5c  8f890900  exp.f.rn r19, r19
000a60  0f0a0a00  exp.f.rn r20, r20
000a64  8f8a0a00  exp.f.rn r21, r21
000a68  0f0c0c00  exp.f.rn r24, r24
000a6c  670c3700  storeli.w r3, 192(r14)
000a70  674c4700  storeli.w r4, 196(r14)
000a74  e70c6700  storeli.w r6, 200(r14)
000a78  e74c7700  storeli.w r7, 204(r14)
000a7c  670d8700  storeli.w r8, 208(r14)
000a80  674d9700  storeli.w r9, 212(r14)
000a84  e70da700  storeli.w r10, 216(r14)
000a88  e74db700  storeli.w r11, 220(r14)
000a8c  670ec700  storeli.w r12, 224(r14)
000a90  674ed700  storeli.w r13, 228(r14)
000a94  e70ef700  storeli.w r15, 232(r14)
000a98  e74e1701  storeli.w r17, 236(r14)
000a9c  670f3701  storeli.w r19, 240(r14)
000aa0  674f4701  storeli.w r20, 244(r14)
000aa4  e70f5701  storeli.w r21, 248(r14)
000aa8  e74f8701  storeli.w r24, 252(r14)
000aac  00a00000  mfence { lm }
000ab0  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
000ab4  9f014000  addli r3, zero, 32
000ab8  9f040002  addli r9, zero, 256
000abc  1f050001  addli r10, zero, 128
000ac0  9f058000  addli r11, zero, 64
000ac4  9f064000  addli r13, zero, 32
000ac8  96920002  vadd.f.mz.rn vr5{mr1}, vr1, vr0
000acc  96922202  vadd.f.mz.rn vr5{mr1}, vr5, vr2
000ad0  96923202  vadd.f.mz.rn vr5{mr1}, vr5, vr3
000ad4  16934202  vadd.f.mz.rn vr6{mr1}, vr5, vr4
000ad8  c2128fe2  vload_mask16.mz vr5{mr1}, 1856(r30)
000adc  96135302  vadd.f.mz.rn vr7{mr1}, vr6, vr5
000ae0  42130fe3  vload_mask16.mz vr6{mr1}, 1920(r30)
000ae4  16946302  vadd.f.mz.rn vr8{mr1}, vr7, vr6
000ae8  c2138fe3  vload_mask16.mz vr7{mr1}, 1984(r30)
000aec  6342eff5  loadli.w r4,  -1292(r30)
000af0  16147402  vadd.f.mz.rn vr8{mr1}, vr8, vr7
000af4  ea748bc0  vsrl.p vr9, r22, vr8
000af8  16149402  vadd.f.mz.rn vr8{mr1}, vr8, vr9
000afc  eaf48bc0  vsrl.p vr9, r23, vr8
000b00  16149402  vadd.f.mz.rn vr8{mr1}, vr8, vr9
000b04  eaf48cc0  vsrl.p vr9, r25, vr8
000b08  16149402  vadd.f.mz.rn vr8{mr1}, vr8, vr9
000b0c  eaf481c0  vsrl.p vr9, r3, vr8
000b10  16149402  vadd.f.mz.rn vr8{mr1}, vr8, vr9
000b14  fa110440  vextracti.f r3, 0(vr8)
000b18  73603200  stores.w r3, 0(r4)
000b1c  00a00300  mfence { lm, sm, gm }
000b20  80a10204  csr_set csr3, r5
000b24  00d00100  sync_group
000b28  bbfb0dfa  bneq r27, zero, -2308
000b2c  ef410900  loads.w r3, 0(r18)
000b30  6f424900  loads.w r4, 4(r18)
000b34  6f438900  loads.w r6, 8(r18)
000b38  8be14110  add.f.rn r3, r3, r4
000b3c  6f42c900  loads.w r4, 12(r18)
000b40  8be16110  add.f.rn r3, r3, r6
000b44  6f430901  loads.w r6, 16(r18)
000b48  8be14110  add.f.rn r3, r3, r4
000b4c  6f424901  loads.w r4, 20(r18)
000b50  8be16110  add.f.rn r3, r3, r6
000b54  6f438901  loads.w r6, 24(r18)
000b58  8be14110  add.f.rn r3, r3, r4
000b5c  6f42c901  loads.w r4, 28(r18)
000b60  8be16110  add.f.rn r3, r3, r6
000b64  6f430902  loads.w r6, 32(r18)
000b68  8be14110  add.f.rn r3, r3, r4
000b6c  6f424902  loads.w r4, 36(r18)
000b70  8be16110  add.f.rn r3, r3, r6
000b74  6f438902  loads.w r6, 40(r18)
000b78  8be14110  add.f.rn r3, r3, r4
000b7c  6f42c902  loads.w r4, 44(r18)
000b80  8be16110  add.f.rn r3, r3, r6
000b84  6f430903  loads.w r6, 48(r18)
000b88  8be14110  add.f.rn r3, r3, r4
000b8c  6f424903  loads.w r4, 52(r18)
000b90  8be16110  add.f.rn r3, r3, r6
000b94  6f438903  loads.w r6, 56(r18)
000b98  8be14110  add.f.rn r3, r3, r4
000b9c  6f42c903  loads.w r4, 60(r18)
000ba0  8be16110  add.f.rn r3, r3, r6
000ba4  8be14110  add.f.rn r3, r3, r4
000ba8  73603900  stores.w r3, 0(r18)
000bac  5bcffeff  j -2440
000bb0  9f0e8ff5  addli sp, r30, -1344
000bb4  9f8e8e0a  addli sp, sp, 1344
000bb8  00a00300  mfence { lm, sm, gm }
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
000d24  00100000  exit
000d28  00100000  exit
000d2c  00100000  exit
000d30  00100000  exit
000d34  00100000  exit
000d38  00100000  exit
000d3c  00100000  exit
000d40  00100000  exit
000d44  00100000  exit
000d48  00100000  exit
000d4c  00100000  exit
000d50  00100000  exit
000d54  00100000  exit
000d58  00100000  exit
000d5c  00100000  exit
000d60  00100000  exit
000d64  00100000  exit
000d68  00100000  exit
000d6c  00100000  exit
000d70  00100000  exit
000d74  00100000  exit
000d78  00100000  exit
000d7c  00100000  exit
000d80  00100000  exit
000d84  00100000  exit
000d88  00100000  exit
000d8c  00100000  exit
000d90  00100000  exit
000d94  00100000  exit
000d98  00100000  exit
000d9c  00100000  exit
000da0  00100000  exit
000da4  00100000  exit
000da8  00100000  exit
000dac  00100000  exit
000db0  00100000  exit
000db4  00100000  exit
000db8  00100000  exit
000dbc  00100000  exit
000dc0  00100000  exit
000dc4  00100000  exit
000dc8  00100000  exit
000dcc  00100000  exit
000dd0  00100000  exit
000dd4  00100000  exit
000dd8  00100000  exit
000ddc  00100000  exit
000de0  00100000  exit
000de4  00100000  exit
000de8  00100000  exit
000dec  00100000  exit
000df0  00100000  exit
000df4  00100000  exit
000df8  00100000  exit
000dfc  00100000  exit
