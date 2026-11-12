; SHA-256 9e9bb754f468257380e07776153bf3e62b87a21f76189c8840a8a0163948aaff
; P800 Cluster · XTDK LLVM 19 · 1692 / 1740 words decoded
; bound names: triton_poi_fused_add_gelu_1
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
0000fc  674e1ffa  storeli.w r1, -540(r30)
000100  4be84008  ble.s r1, r4, 4632
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  9f048000  addli r9, zero, 64
000110  1f098ffe  addli r18, r30, -192
000114  ab0a807f  lui r21, 522240
000118  ab0c4000  lui r25, 1024
00011c  ab0dffff  lui r27, 1048560
000120  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000124  46100fc2  vstore_mask16.mz vr0{mr1}, 1536(r30)
000128  9bb05000  slli r1, r1, 5
00012c  670e2ffa  storeli.w r2, -544(r30)
000130  2bf1ff7f  lui r2, 524287
000134  e74d1ffa  storeli.w r1, -548(r30)
000138  ab700000  lui r1, 7
00013c  1b1af1ff  ori r20, r2, 4095
000140  2bb1a73e  lui r2, 256635
000144  9b99f0ff  ori r19, r1, 4095
000148  ab00353f  lui r1, 258896
00014c  e70f4ffb  storeli.w r20, -520(r30)
000150  9b90304f  ori r1, r1, 1267
000154  e74f3ffb  storeli.w r19, -516(r30)
000158  e74d1ffc  storeli.w r1, -292(r30)
00015c  9b1051a0  ori r1, r2, 2565
000160  ab01f03f  lui r3, 261888
000164  670e1ffc  storeli.w r1, -288(r30)
000168  ab00babf  lui r1, 785312
00016c  733c2fee  store.d r[3:4], -264(r30)
000170  2bf1b53f  lui r2, 260959
000174  1b9e300e  ori r28, r1, 227
000178  abd0873f  lui r1, 260221
00017c  9b1b310e  ori r23, r2, 227
000180  2b71823e  lui r2, 256039
000184  1b9b20c2  ori r22, r1, 3106
000188  aba091be  lui r1, 780570
00018c  e74ecffd  storeli.w r28, -276(r30)
000190  674e7ffd  storeli.w r23, -284(r30)
000194  1b9ce098  ori r24, r1, 2446
000198  9b106190  ori r1, r2, 2310
00019c  e70e6ffd  storeli.w r22, -280(r30)
0001a0  674f1ffc  storeli.w r1, -268(r30)
0001a4  670f8ffd  storeli.w r24, -272(r30)
0001a8  db060000  j 52
0001ac  ab0000f0  lui r1, 983040
0001b0  9f048000  addli r9, zero, 64
0001b4  6b518fde  load.d r[3:4], -536(r30)
0001b8  6342effb  loadli.w r4,  -524(r30)
0001bc  97901400  or r1, r9, r1
0001c0  ff302101  s_lm2gm r1, r18, 0(r[3:4])
0001c4  e300cffb  loadli.w r1,  -544(r30)
0001c8  00a00000  mfence { lm }
0001cc  0b121210  add.s r4, r4, r1
0001d0  e340cffb  loadli.w r1,  -540(r30)
0001d4  3f201200  blt.s r4, r1, 8
0001d8  5b280200  j 4416
0001dc  e3403f00  loadli.w r1,  28(r30)
0001e0  63013f00  loadli.w r2,  24(r30)
0001e4  674f4ffa  storeli.w r4, -524(r30)
0001e8  1f150000  addli r10, zero, 1
0001ec  eb530f00  load.d r[8:9], 0(r30)
0001f0  8b101230  div.s r1, r4, r1
0001f4  8b902030  div.s r1, r1, r2
0001f8  6341bffb  loadli.w r2,  -548(r30)
0001fc  9bb0b000  slli r1, r1, 11
000200  8b902010  add.s r1, r1, r2
000204  1f010008  addli r2, zero, 1024
000208  0b912038  mod.s r2, r1, r2
00020c  b3910028  sext_int2long r[4:5], r1
000210  ab0000f0  lui r1, 983040
000214  97b1a102  sll.d r[4:5], r[4:5], r10
000218  97901400  or r1, r9, r1
00021c  8ba33310  add.ul r[8:9], r[8:9], r[4:5]
000220  eb518f00  load.d r[4:5], 8(r30)
000224  b3120128  sext_int2long r[6:7], r2
000228  2b0100f0  lui r2, 983040
00022c  73347fde  store.d r[8:9], -536(r30)
000230  97b2a202  sll.d r[6:7], r[6:7], r10
000234  17912400  or r2, r9, r2
000238  8ba15110  add.ul r[4:5], r[4:5], r[6:7]
00023c  9f020ffe  addli r5, r30, -256
000240  ffa05300  l_gm2lm r1, r5, 0(r[8:9])
000244  7fa12101  l_gm2lm r2, r18, 0(r[4:5])
000248  1f010000  addli r2, zero, 0
00024c  00a00000  mfence { lm }
000250  5b340000  j 416
000254  6301affd  loadli.w r2,  -304(r30)
000258  ab08803f  lui r17, 260096
00025c  e3418ffd  loadli.w r3,  -316(r30)
000260  63027ffd  loadli.w r4,  -328(r30)
000264  6303cffc  loadli.w r6,  -416(r30)
000268  e3025ffd  loadli.w r5,  -344(r30)
00026c  e3032ffd  loadli.w r7,  -368(r30)
000270  63469ffd  loadli.w r12,  -308(r30)
000274  63440ffd  loadli.w r8,  -380(r30)
000278  e304fffc  loadli.w r9,  -392(r30)
00027c  63050ffd  loadli.w r10,  -384(r30)
000280  e3451ffd  loadli.w r11,  -372(r30)
000284  e3064ffd  loadli.w r13,  -352(r30)
000288  1f098ffe  addli r18, r30, -192
00028c  ab0dffff  lui r27, 1048560
000290  8be01011  add.f.rn r1, r1, r17
000294  0be81c11  add.f.rn r16, r25, r17
000298  0b671e11  add.f.rn r14, r28, r17
00029c  8b671a11  add.f.rn r15, r20, r17
0002a0  ab0c4000  lui r25, 1024
0002a4  0b611111  add.f.rn r2, r2, r17
0002a8  8be11111  add.f.rn r3, r3, r17
0002ac  0b621211  add.f.rn r4, r4, r17
0002b0  8be21211  add.f.rn r5, r5, r17
0002b4  8be31311  add.f.rn r7, r7, r17
0002b8  0b641411  add.f.rn r8, r8, r17
0002bc  8be41411  add.f.rn r9, r9, r17
0002c0  0b651511  add.f.rn r10, r10, r17
0002c4  8be51511  add.f.rn r11, r11, r17
0002c8  8be61611  add.f.rn r13, r13, r17
0002cc  8be01920  mul.f.rn r1, r19, r1
0002d0  0b612320  mul.f.rn r2, r6, r2
0002d4  6343bffc  loadli.w r6,  -420(r30)
0002d8  0b648d20  mul.f.rn r8, r26, r8
0002dc  8be49a20  mul.f.rn r9, r21, r9
0002e0  0b65ab20  mul.f.rn r10, r22, r10
0002e4  8be5bb20  mul.f.rn r11, r23, r11
0002e8  ab0a807f  lui r21, 522240
0002ec  8b613320  mul.f.rn r3, r6, r3
0002f0  63036ffd  loadli.w r6,  -336(r30)
0002f4  b3900000  float2bfloat.rn r1, r1
0002f8  0b624320  mul.f.rn r4, r6, r4
0002fc  63434ffd  loadli.w r6,  -348(r30)
000300  33110100  float2bfloat.rn r2, r2
000304  8b625320  mul.f.rn r5, r6, r5
000308  63433ffd  loadli.w r6,  -356(r30)
00030c  b3910100  float2bfloat.rn r3, r3
000310  0b631311  add.f.rn r6, r6, r17
000314  0b636620  mul.f.rn r6, r12, r6
000318  63462ffd  loadli.w r12,  -364(r30)
00031c  8b637620  mul.f.rn r7, r12, r7
000320  63063ffd  loadli.w r12,  -360(r30)
000324  0b661611  add.f.rn r12, r12, r17
000328  e3089ffd  loadli.w r17,  -312(r30)
00032c  0be6c820  mul.f.rn r12, r17, r12
000330  e3088ffd  loadli.w r17,  -320(r30)
000334  8be6d820  mul.f.rn r13, r17, r13
000338  e3487ffd  loadli.w r17,  -324(r30)
00033c  0be7e820  mul.f.rn r14, r17, r14
000340  e3486ffd  loadli.w r17,  -332(r30)
000344  8be7f820  mul.f.rn r15, r17, r15
000348  e3485ffd  loadli.w r17,  -340(r30)
00034c  0be80821  mul.f.rn r16, r17, r16
000350  e348affd  loadli.w r17,  -300(r30)
000354  8b181911  add.s r17, r18, r17
000358  73902800  store.h r2, 0(r17)
00035c  33110200  float2bfloat.rn r2, r4
000360  73913800  store.h r3, 2(r17)
000364  b3910200  float2bfloat.rn r3, r5
000368  739f1800  store.h r1, 30(r17)
00036c  73922800  store.h r2, 4(r17)
000370  33110300  float2bfloat.rn r2, r6
000374  73933800  store.h r3, 6(r17)
000378  b3910300  float2bfloat.rn r3, r7
00037c  73942800  store.h r2, 8(r17)
000380  33110400  float2bfloat.rn r2, r8
000384  73953800  store.h r3, 10(r17)
000388  b3910400  float2bfloat.rn r3, r9
00038c  73962800  store.h r2, 12(r17)
000390  33110500  float2bfloat.rn r2, r10
000394  73973800  store.h r3, 14(r17)
000398  b3910500  float2bfloat.rn r3, r11
00039c  1f050000  addli r10, zero, 0
0003a0  73982800  store.h r2, 16(r17)
0003a4  33110600  float2bfloat.rn r2, r12
0003a8  73993800  store.h r3, 18(r17)
0003ac  b3910600  float2bfloat.rn r3, r13
0003b0  739a2800  store.h r2, 20(r17)
0003b4  33110700  float2bfloat.rn r2, r14
0003b8  739b3800  store.h r3, 22(r17)
0003bc  b3910700  float2bfloat.rn r3, r15
0003c0  739c2800  store.h r2, 24(r17)
0003c4  33110800  float2bfloat.rn r2, r16
0003c8  739d3800  store.h r3, 26(r17)
0003cc  739e2800  store.h r2, 28(r17)
0003d0  1f014000  addli r2, zero, 32
0003d4  00a00000  mfence { lm }
0003d8  e300bffd  loadli.w r1,  -296(r30)
0003dc  e349fffb  loadli.w r19,  -516(r30)
0003e0  630afffb  loadli.w r20,  -520(r30)
0003e4  634edffd  loadli.w r28,  -276(r30)
0003e8  9b801000  andi r1, r1, 1
0003ec  378700fe  beq r1, zero, -576
0003f0  c2100fc2  vload_mask16.mz vr1{mr1}, 1536(r30)
0003f4  eb310ff0  load.hu r3, -256(r30)
0003f8  9f180000  addli r17, zero, 1
0003fc  6b322ff0  load.hu r4, -254(r30)
000400  eb30cff1  load.hu r1, -228(r30)
000404  674d2ffc  storeli.w r2, -300(r30)
000408  6b31aff1  load.hu r2, -230(r30)
00040c  e70daffc  storeli.w r10, -296(r30)
000410  eb324ff0  load.hu r5, -252(r30)
000414  6b336ff0  load.hu r6, -250(r30)
000418  eb338ff0  load.hu r7, -248(r30)
00041c  6b34aff0  load.hu r8, -246(r30)
000420  eb34cff0  load.hu r9, -244(r30)
000424  6b35eff0  load.hu r10, -242(r30)
000428  eb350ff1  load.hu r11, -240(r30)
00042c  6b362ff1  load.hu r12, -238(r30)
000430  eb364ff1  load.hu r13, -236(r30)
000434  6b376ff1  load.hu r14, -234(r30)
000438  eb378ff1  load.hu r15, -232(r30)
00043c  6b38eff1  load.hu r16, -226(r30)
000440  7e8108e0  vmmov mr2, r17
000444  b3910118  bfloat2float.rn r3, r3
000448  33110118  bfloat2float.rn r2, r2
00044c  b3900018  bfloat2float.rn r1, r1
000450  12301002  vadd.s.mz vr0{mr1}, zero, vr1
000454  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000458  b3110218  bfloat2float.rn r3, r4
00045c  1f220000  addli r4, zero, 2
000460  fe0102e0  vmmov mr3, r4
000464  1f420000  addli r4, zero, 4
000468  6aa00136  vor.u.mh vr0{mr3}, r3, vr0
00046c  b3910218  bfloat2float.rn r3, r5
000470  7e0002e0  vmmov mr0, r4
000474  1f021000  addli r4, zero, 8
000478  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
00047c  b3110318  bfloat2float.rn r3, r6
000480  7e0002e0  vmmov mr0, r4
000484  1f022000  addli r4, zero, 16
000488  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
00048c  b3910318  bfloat2float.rn r3, r7
000490  7e0002e0  vmmov mr0, r4
000494  1f024000  addli r4, zero, 32
000498  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
00049c  b3110418  bfloat2float.rn r3, r8
0004a0  7e0002e0  vmmov mr0, r4
0004a4  1f028000  addli r4, zero, 64
0004a8  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0004ac  b3910418  bfloat2float.rn r3, r9
0004b0  7e0002e0  vmmov mr0, r4
0004b4  1f020001  addli r4, zero, 128
0004b8  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0004bc  b3110518  bfloat2float.rn r3, r10
0004c0  7e0002e0  vmmov mr0, r4
0004c4  1f020002  addli r4, zero, 256
0004c8  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0004cc  b3910518  bfloat2float.rn r3, r11
0004d0  7e0002e0  vmmov mr0, r4
0004d4  1f020004  addli r4, zero, 512
0004d8  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0004dc  b3110618  bfloat2float.rn r3, r12
0004e0  7e0002e0  vmmov mr0, r4
0004e4  1f020008  addli r4, zero, 1024
0004e8  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0004ec  b3910618  bfloat2float.rn r3, r13
0004f0  7e0002e0  vmmov mr0, r4
0004f4  1f020010  addli r4, zero, 2048
0004f8  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0004fc  b3110718  bfloat2float.rn r3, r14
000500  7e0002e0  vmmov mr0, r4
000504  1f020020  addli r4, zero, 4096
000508  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
00050c  b3910718  bfloat2float.rn r3, r15
000510  7e0002e0  vmmov mr0, r4
000514  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
000518  9f010040  addli r3, zero, 8192
00051c  7e8001e0  vmmov mr0, r3
000520  6a200130  vor.u.mh vr0{mr0}, r2, vr0
000524  2b410000  lui r2, 4
000528  7e0001e0  vmmov mr0, r2
00052c  2b810000  lui r2, 8
000530  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000534  b3100818  bfloat2float.rn r1, r16
000538  7e0001e0  vmmov mr0, r2
00053c  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000540  eb300ff4  load.hu r1, -192(r30)
000544  6b312ff4  load.hu r2, -190(r30)
000548  eb314ff4  load.hu r3, -188(r30)
00054c  6b326ff4  load.hu r4, -186(r30)
000550  eb328ff4  load.hu r5, -184(r30)
000554  6b33aff4  load.hu r6, -182(r30)
000558  eb33cff4  load.hu r7, -180(r30)
00055c  6b34eff4  load.hu r8, -178(r30)
000560  eb340ff5  load.hu r9, -176(r30)
000564  6b352ff5  load.hu r10, -174(r30)
000568  eb354ff5  load.hu r11, -172(r30)
00056c  6b366ff5  load.hu r12, -170(r30)
000570  eb368ff5  load.hu r13, -168(r30)
000574  6b37aff5  load.hu r14, -166(r30)
000578  eb37cff5  load.hu r15, -164(r30)
00057c  6b38eff5  load.hu r16, -162(r30)
000580  b3900018  bfloat2float.rn r1, r1
000584  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000588  b3100118  bfloat2float.rn r1, r2
00058c  1f410000  addli r2, zero, 4
000590  7e0101e0  vmmov mr2, r2
000594  1f011000  addli r2, zero, 8
000598  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
00059c  b3900118  bfloat2float.rn r1, r3
0005a0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0005a4  b3100218  bfloat2float.rn r1, r4
0005a8  7e0101e0  vmmov mr2, r2
0005ac  1f012000  addli r2, zero, 16
0005b0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0005b4  b3900218  bfloat2float.rn r1, r5
0005b8  7e0101e0  vmmov mr2, r2
0005bc  1f014000  addli r2, zero, 32
0005c0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0005c4  b3100318  bfloat2float.rn r1, r6
0005c8  7e0101e0  vmmov mr2, r2
0005cc  1f018000  addli r2, zero, 64
0005d0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0005d4  b3900318  bfloat2float.rn r1, r7
0005d8  7e0101e0  vmmov mr2, r2
0005dc  1f010001  addli r2, zero, 128
0005e0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0005e4  b3100418  bfloat2float.rn r1, r8
0005e8  7e0101e0  vmmov mr2, r2
0005ec  1f010002  addli r2, zero, 256
0005f0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0005f4  b3900418  bfloat2float.rn r1, r9
0005f8  7e0101e0  vmmov mr2, r2
0005fc  1f010004  addli r2, zero, 512
000600  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000604  b3100518  bfloat2float.rn r1, r10
000608  7e0101e0  vmmov mr2, r2
00060c  1f010008  addli r2, zero, 1024
000610  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000614  b3900518  bfloat2float.rn r1, r11
000618  7e0101e0  vmmov mr2, r2
00061c  1f010010  addli r2, zero, 2048
000620  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000624  b3100618  bfloat2float.rn r1, r12
000628  7e0101e0  vmmov mr2, r2
00062c  1f010020  addli r2, zero, 4096
000630  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000634  b3900618  bfloat2float.rn r1, r13
000638  7e0101e0  vmmov mr2, r2
00063c  1f010040  addli r2, zero, 8192
000640  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000644  b3100718  bfloat2float.rn r1, r14
000648  7e0101e0  vmmov mr2, r2
00064c  2b410000  lui r2, 4
000650  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000654  b3900718  bfloat2float.rn r1, r15
000658  7e0101e0  vmmov mr2, r2
00065c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000660  b3100818  bfloat2float.rn r1, r16
000664  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000668  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
00066c  46180fe2  vstore_mask16.mz vr0{mr1}, 1920(r30)
000670  00a00000  mfence { lm }
000674  e3000fff  loadli.w r1,  -128(r30)
000678  63480fff  loadli.w r16,  -124(r30)
00067c  e3071fff  loadli.w r15,  -120(r30)
000680  63471fff  loadli.w r14,  -116(r30)
000684  e3062fff  loadli.w r13,  -112(r30)
000688  63462fff  loadli.w r12,  -108(r30)
00068c  e3053fff  loadli.w r11,  -104(r30)
000690  63453fff  loadli.w r10,  -100(r30)
000694  e3044fff  loadli.w r9,  -96(r30)
000698  63444fff  loadli.w r8,  -92(r30)
00069c  e3035fff  loadli.w r7,  -88(r30)
0006a0  63435fff  loadli.w r6,  -84(r30)
0006a4  e3026fff  loadli.w r5,  -80(r30)
0006a8  63426fff  loadli.w r4,  -76(r30)
0006ac  e3017fff  loadli.w r3,  -72(r30)
0006b0  17814001  and r2, r1, r20
0006b4  93882a04  setlt.u r17, r21, r2
0006b8  63417fff  loadli.w r2,  -68(r30)
0006bc  3be00800  bneq r17, zero, 24
0006c0  9bc80001  srli r17, r1, 16
0006c4  9b881800  andi r17, r17, 1
0006c8  8b901011  add.s r1, r1, r17
0006cc  8b903011  add.s r1, r1, r19
0006d0  5b010000  j 8
0006d4  97909001  or r1, r1, r25
0006d8  97084801  and r17, r16, r20
0006dc  93881a05  setlt.u r17, r21, r17
0006e0  3be00800  bneq r17, zero, 24
0006e4  9b480801  srli r17, r16, 16
0006e8  9b881800  andi r17, r17, 1
0006ec  0b181811  add.s r16, r16, r17
0006f0  0b1b3811  add.s r22, r16, r19
0006f4  5b010000  j 8
0006f8  171b9801  or r22, r16, r25
0006fc  17884701  and r16, r15, r20
000700  13880a05  setlt.u r16, r21, r16
000704  3b600800  bneq r16, zero, 24
000708  1bc80701  srli r16, r15, 16
00070c  1b081800  andi r16, r16, 1
000710  8b970711  add.s r15, r15, r16
000714  0b9d3711  add.s r26, r15, r19
000718  5b010000  j 8
00071c  179d9701  or r26, r15, r25
000720  97074701  and r15, r14, r20
000724  9387fa04  setlt.u r15, r21, r15
000728  3be00700  bneq r15, zero, 24
00072c  9b470701  srli r15, r14, 16
000730  9b871700  andi r15, r15, 1
000734  0b17f710  add.s r14, r14, r15
000738  0b1c3711  add.s r24, r14, r19
00073c  5b010000  j 8
000740  171c9701  or r24, r14, r25
000744  17874601  and r14, r13, r20
000748  1387ea04  setlt.u r14, r21, r14
00074c  3b600700  bneq r14, zero, 24
000750  1bc70601  srli r14, r13, 16
000754  1b071700  andi r14, r14, 1
000758  8b96e610  add.s r13, r13, r14
00075c  8b9b3611  add.s r23, r13, r19
000760  5b010000  j 8
000764  979b9601  or r23, r13, r25
000768  97064601  and r13, r12, r20
00076c  9386da04  setlt.u r13, r21, r13
000770  3be00600  bneq r13, zero, 24
000774  9b460601  srli r13, r12, 16
000778  9b861600  andi r13, r13, 1
00077c  0b16d610  add.s r12, r12, r13
000780  0b163611  add.s r12, r12, r19
000784  5b010000  j 8
000788  17169601  or r12, r12, r25
00078c  6709cffc  storeli.w r12, -368(r30)
000790  17864501  and r12, r11, r20
000794  1386ca04  setlt.u r12, r21, r12
000798  3b600600  bneq r12, zero, 24
00079c  1bc60501  srli r12, r11, 16
0007a0  1b061600  andi r12, r12, 1
0007a4  8b95c510  add.s r11, r11, r12
0007a8  8b953511  add.s r11, r11, r19
0007ac  5b010000  j 8
0007b0  97959501  or r11, r11, r25
0007b4  6748bffc  storeli.w r11, -380(r30)
0007b8  97054501  and r11, r10, r20
0007bc  9385ba04  setlt.u r11, r21, r11
0007c0  3be00500  bneq r11, zero, 24
0007c4  9b450501  srli r11, r10, 16
0007c8  9b851500  andi r11, r11, 1
0007cc  0b15b510  add.s r10, r10, r11
0007d0  0b153511  add.s r10, r10, r19
0007d4  5b010000  j 8
0007d8  17159501  or r10, r10, r25
0007dc  e707affc  storeli.w r10, -392(r30)
0007e0  17854401  and r10, r9, r20
0007e4  1385aa04  setlt.u r10, r21, r10
0007e8  3b600500  bneq r10, zero, 24
0007ec  1bc50401  srli r10, r9, 16
0007f0  1b051500  andi r10, r10, 1
0007f4  8b94a410  add.s r9, r9, r10
0007f8  8b943411  add.s r9, r9, r19
0007fc  5b010000  j 8
000800  97949401  or r9, r9, r25
000804  67089ffc  storeli.w r9, -384(r30)
000808  97044401  and r9, r8, r20
00080c  93849a04  setlt.u r9, r21, r9
000810  3be00400  bneq r9, zero, 24
000814  9b440401  srli r9, r8, 16
000818  9b841400  andi r9, r9, 1
00081c  0b149410  add.s r8, r8, r9
000820  0b143411  add.s r8, r8, r19
000824  5b010000  j 8
000828  17149401  or r8, r8, r25
00082c  e7488ffc  storeli.w r8, -372(r30)
000830  17844301  and r8, r7, r20
000834  13848a04  setlt.u r8, r21, r8
000838  3b600400  bneq r8, zero, 24
00083c  1bc40301  srli r8, r7, 16
000840  1b041400  andi r8, r8, 1
000844  8b938310  add.s r7, r7, r8
000848  8b933311  add.s r7, r7, r19
00084c  5b010000  j 8
000850  97939301  or r7, r7, r25
000854  e7097ffc  storeli.w r7, -360(r30)
000858  97034301  and r7, r6, r20
00085c  93837a04  setlt.u r7, r21, r7
000860  3be00300  bneq r7, zero, 24
000864  9b430301  srli r7, r6, 16
000868  9b831300  andi r7, r7, 1
00086c  0b137310  add.s r6, r6, r7
000870  0b133311  add.s r6, r6, r19
000874  5b010000  j 8
000878  17139301  or r6, r6, r25
00087c  670a6ffc  storeli.w r6, -352(r30)
000880  17834201  and r6, r5, r20
000884  13836a04  setlt.u r6, r21, r6
000888  3b600300  bneq r6, zero, 24
00088c  1bc30201  srli r6, r5, 16
000890  1b031300  andi r6, r6, 1
000894  8b926210  add.s r5, r5, r6
000898  8b923211  add.s r5, r5, r19
00089c  5b010000  j 8
0008a0  97929201  or r5, r5, r25
0008a4  e74a5ffc  storeli.w r5, -340(r30)
0008a8  97024201  and r5, r4, r20
0008ac  93825a04  setlt.u r5, r21, r5
0008b0  3be00200  bneq r5, zero, 24
0008b4  9b420201  srli r5, r4, 16
0008b8  9b821200  andi r5, r5, 1
0008bc  0b125210  add.s r4, r4, r5
0008c0  0b123211  add.s r4, r4, r19
0008c4  5b010000  j 8
0008c8  17129201  or r4, r4, r25
0008cc  674b4ffc  storeli.w r4, -332(r30)
0008d0  17824101  and r4, r3, r20
0008d4  13824a04  setlt.u r4, r21, r4
0008d8  3b600200  bneq r4, zero, 24
0008dc  1bc20101  srli r4, r3, 16
0008e0  1b021200  andi r4, r4, 1
0008e4  8b914110  add.s r3, r3, r4
0008e8  8b913111  add.s r3, r3, r19
0008ec  5b010000  j 8
0008f0  97919101  or r3, r3, r25
0008f4  670c3ffc  storeli.w r3, -320(r30)
0008f8  97014101  and r3, r2, r20
0008fc  93813a04  setlt.u r3, r21, r3
000900  3be00100  bneq r3, zero, 24
000904  9b410101  srli r3, r2, 16
000908  9b811100  andi r3, r3, 1
00090c  0b113110  add.s r2, r2, r3
000910  0b113111  add.s r2, r2, r19
000914  5b010000  j 8
000918  17119101  or r2, r2, r25
00091c  e34cbffd  loadli.w r25,  -292(r30)
000920  9780b001  and r1, r1, r27
000924  e30acffd  loadli.w r21,  -288(r30)
000928  e70c2ffc  storeli.w r2, -312(r30)
00092c  6b518fef  load.d r[3:4], -264(r30)
000930  1f010000  addli r2, zero, 0
000934  e74c1ffc  storeli.w r1, -308(r30)
000938  8be09021  mul.f.rn r1, r1, r25
00093c  733c2fee  store.d r[3:4], -264(r30)
000940  8be90060  abs.f r19, r1
000944  0be25921  mul.f.rn r4, r19, r21
000948  8f230208  .word 0x0802238f
00094c  1bb29000  slli r4, r1, 9
000950  13030200  seteq r6, r4, zero
000954  0f922320  .word 0x2023920f
000958  9bc37001  srli r7, r1, 23
00095c  93e00004  setlt.f r1, r1, zero
000960  9b83f30f  andi r7, r7, 255
000964  9bf3f30f  setlti r7, r7, 255
000968  17936300  or r6, r7, r6
00096c  178a6000  and r20, r1, r6
000970  57650200  jal 4904
000974  8f300110  .word 0x1001308f
000978  e301dffd  loadli.w r3,  -280(r30)
00097c  1f010e00  addli r2, r28, 0
000980  0be20958  neg.f r4, r19
000984  0be13050  fmac.f.rn r2, r1, r3
000988  e341cffd  loadli.w r3,  -284(r30)
00098c  8b611150  fmac.f.rn r3, r2, r1
000990  6301effd  loadli.w r2,  -272(r30)
000994  0be11150  fmac.f.rn r2, r3, r1
000998  e341effd  loadli.w r3,  -268(r30)
00099c  8b611150  fmac.f.rn r3, r2, r1
0009a0  0be14920  mul.f.rn r2, r19, r4
0009a4  8be10158  neg.f r3, r3
0009a8  0f010100  exp.f.rn r2, r2
0009ac  8be03020  mul.f.rn r1, r1, r3
0009b0  ab01803f  lui r3, 260096
0009b4  8be12050  fmac.f.rn r3, r1, r2
0009b8  37200a00  beq r20, zero, 8
0009bc  8be10158  neg.f r3, r3
0009c0  9700bb01  and r1, r22, r27
0009c4  670d3ffc  storeli.w r3, -304(r30)
0009c8  e74b1ffc  storeli.w r1, -324(r30)
0009cc  8be09021  mul.f.rn r1, r1, r25
0009d0  8be90060  abs.f r19, r1
0009d4  1bb29000  slli r4, r1, 9
0009d8  0be15921  mul.f.rn r2, r19, r21
0009dc  13030200  seteq r6, r4, zero
0009e0  8f230108  .word 0x0801238f
0009e4  6b518fef  load.d r[3:4], -264(r30)
0009e8  0f922320  .word 0x2023920f
0009ec  9bc37001  srli r7, r1, 23
0009f0  93e00004  setlt.f r1, r1, zero
0009f4  9b83f30f  andi r7, r7, 255
0009f8  9bf3f30f  setlti r7, r7, 255
0009fc  17936300  or r6, r7, r6
000a00  178a6000  and r20, r1, r6
000a04  57650200  jal 4904
000a08  8f300110  .word 0x1001308f
000a0c  630bdffd  loadli.w r22,  -280(r30)
000a10  1f010e00  addli r2, r28, 0
000a14  e341cffd  loadli.w r3,  -284(r30)
000a18  0be20958  neg.f r4, r19
000a1c  0be16051  fmac.f.rn r2, r1, r22
000a20  8b611150  fmac.f.rn r3, r2, r1
000a24  6301effd  loadli.w r2,  -272(r30)
000a28  0be11150  fmac.f.rn r2, r3, r1
000a2c  e341effd  loadli.w r3,  -268(r30)
000a30  8b611150  fmac.f.rn r3, r2, r1
000a34  0be14920  mul.f.rn r2, r19, r4
000a38  8be10158  neg.f r3, r3
000a3c  0f010100  exp.f.rn r2, r2
000a40  8be03020  mul.f.rn r1, r1, r3
000a44  ab01803f  lui r3, 260096
000a48  8be12050  fmac.f.rn r3, r1, r2
000a4c  37200a00  beq r20, zero, 8
000a50  8be10158  neg.f r3, r3
000a54  9700bd01  and r1, r26, r27
000a58  674c3ffc  storeli.w r3, -316(r30)
000a5c  670b1ffc  storeli.w r1, -336(r30)
000a60  8be09021  mul.f.rn r1, r1, r25
000a64  8be90060  abs.f r19, r1
000a68  1bb29000  slli r4, r1, 9
000a6c  0be15921  mul.f.rn r2, r19, r21
000a70  13030200  seteq r6, r4, zero
000a74  8f230108  .word 0x0801238f
000a78  6b518fef  load.d r[3:4], -264(r30)
000a7c  0f922320  .word 0x2023920f
000a80  9bc37001  srli r7, r1, 23
000a84  93e00004  setlt.f r1, r1, zero
000a88  9b83f30f  andi r7, r7, 255
000a8c  9bf3f30f  setlti r7, r7, 255
000a90  17936300  or r6, r7, r6
000a94  178a6000  and r20, r1, r6
000a98  57650200  jal 4904
000a9c  8f300110  .word 0x1001308f
000aa0  1f010e00  addli r2, r28, 0
000aa4  634dcffd  loadli.w r26,  -284(r30)
000aa8  0be20958  neg.f r4, r19
000aac  9f010d00  addli r3, r26, 0
000ab0  0be16051  fmac.f.rn r2, r1, r22
000ab4  8b611150  fmac.f.rn r3, r2, r1
000ab8  6301effd  loadli.w r2,  -272(r30)
000abc  0be11150  fmac.f.rn r2, r3, r1
000ac0  e341effd  loadli.w r3,  -268(r30)
000ac4  8b611150  fmac.f.rn r3, r2, r1
000ac8  0be14920  mul.f.rn r2, r19, r4
000acc  8be10158  neg.f r3, r3
000ad0  0f010100  exp.f.rn r2, r2
000ad4  8be03020  mul.f.rn r1, r1, r3
000ad8  ab01803f  lui r3, 260096
000adc  8be12050  fmac.f.rn r3, r1, r2
000ae0  37200a00  beq r20, zero, 8
000ae4  8be10158  neg.f r3, r3
000ae8  9700bc01  and r1, r24, r27
000aec  e70b3ffc  storeli.w r3, -328(r30)
000af0  674a1ffc  storeli.w r1, -348(r30)
000af4  8be09021  mul.f.rn r1, r1, r25
000af8  8be90060  abs.f r19, r1
000afc  1bb29000  slli r4, r1, 9
000b00  0be15921  mul.f.rn r2, r19, r21
000b04  13030200  seteq r6, r4, zero
000b08  8f230108  .word 0x0801238f
000b0c  6b518fef  load.d r[3:4], -264(r30)
000b10  0f922320  .word 0x2023920f
000b14  9bc37001  srli r7, r1, 23
000b18  93e00004  setlt.f r1, r1, zero
000b1c  9b83f30f  andi r7, r7, 255
000b20  9bf3f30f  setlti r7, r7, 255
000b24  17936300  or r6, r7, r6
000b28  178a6000  and r20, r1, r6
000b2c  57650200  jal 4904
000b30  8f300110  .word 0x1001308f
000b34  1f010e00  addli r2, r28, 0
000b38  9f010d00  addli r3, r26, 0
000b3c  630ceffd  loadli.w r24,  -272(r30)
000b40  0be20958  neg.f r4, r19
000b44  0be16051  fmac.f.rn r2, r1, r22
000b48  8b611150  fmac.f.rn r3, r2, r1
000b4c  1f010c00  addli r2, r24, 0
000b50  0be11150  fmac.f.rn r2, r3, r1
000b54  e341effd  loadli.w r3,  -268(r30)
000b58  8b611150  fmac.f.rn r3, r2, r1
000b5c  0be14920  mul.f.rn r2, r19, r4
000b60  8be10158  neg.f r3, r3
000b64  0f010100  exp.f.rn r2, r2
000b68  8be03020  mul.f.rn r1, r1, r3
000b6c  ab01803f  lui r3, 260096
000b70  8be12050  fmac.f.rn r3, r1, r2
000b74  37200a00  beq r20, zero, 8
000b78  8be10158  neg.f r3, r3
000b7c  9780bb01  and r1, r23, r27
000b80  e70a3ffc  storeli.w r3, -344(r30)
000b84  67491ffc  storeli.w r1, -364(r30)
000b88  8be09021  mul.f.rn r1, r1, r25
000b8c  8be90060  abs.f r19, r1
000b90  1bb29000  slli r4, r1, 9
000b94  0be15921  mul.f.rn r2, r19, r21
000b98  13030200  seteq r6, r4, zero
000b9c  8f230108  .word 0x0801238f
000ba0  6b518fef  load.d r[3:4], -264(r30)
000ba4  0f922320  .word 0x2023920f
000ba8  9bc37001  srli r7, r1, 23
000bac  93e00004  setlt.f r1, r1, zero
000bb0  9b83f30f  andi r7, r7, 255
000bb4  9bf3f30f  setlti r7, r7, 255
000bb8  17936300  or r6, r7, r6
000bbc  178a6000  and r20, r1, r6
000bc0  57650200  jal 4904
000bc4  8f300110  .word 0x1001308f
000bc8  1f010e00  addli r2, r28, 0
000bcc  9f010d00  addli r3, r26, 0
000bd0  e34beffd  loadli.w r23,  -268(r30)
000bd4  0be20958  neg.f r4, r19
000bd8  0be16051  fmac.f.rn r2, r1, r22
000bdc  8b611150  fmac.f.rn r3, r2, r1
000be0  1f010c00  addli r2, r24, 0
000be4  0be11150  fmac.f.rn r2, r3, r1
000be8  9f810b00  addli r3, r23, 0
000bec  8b611150  fmac.f.rn r3, r2, r1
000bf0  0be14920  mul.f.rn r2, r19, r4
000bf4  8be10158  neg.f r3, r3
000bf8  0f010100  exp.f.rn r2, r2
000bfc  8be03020  mul.f.rn r1, r1, r3
000c00  ab01803f  lui r3, 260096
000c04  8be12050  fmac.f.rn r3, r1, r2
000c08  37200a00  beq r20, zero, 8
000c0c  8be10158  neg.f r3, r3
000c10  e3002ffd  loadli.w r1,  -368(r30)
000c14  e7493ffc  storeli.w r3, -356(r30)
000c18  9780b001  and r1, r1, r27
000c1c  e7081ffc  storeli.w r1, -376(r30)
000c20  8be09021  mul.f.rn r1, r1, r25
000c24  8be90060  abs.f r19, r1
000c28  1bb29000  slli r4, r1, 9
000c2c  0be15921  mul.f.rn r2, r19, r21
000c30  13030200  seteq r6, r4, zero
000c34  8f230108  .word 0x0801238f
000c38  6b518fef  load.d r[3:4], -264(r30)
000c3c  0f922320  .word 0x2023920f
000c40  9bc37001  srli r7, r1, 23
000c44  93e00004  setlt.f r1, r1, zero
000c48  9b83f30f  andi r7, r7, 255
000c4c  9bf3f30f  setlti r7, r7, 255
000c50  17936300  or r6, r7, r6
000c54  178a6000  and r20, r1, r6
000c58  57650200  jal 4904
000c5c  8f300110  .word 0x1001308f
000c60  1f010e00  addli r2, r28, 0
000c64  9f010d00  addli r3, r26, 0
000c68  0be20958  neg.f r4, r19
000c6c  0be16051  fmac.f.rn r2, r1, r22
000c70  8b611150  fmac.f.rn r3, r2, r1
000c74  1f010c00  addli r2, r24, 0
000c78  0be11150  fmac.f.rn r2, r3, r1
000c7c  9f810b00  addli r3, r23, 0
000c80  8b611150  fmac.f.rn r3, r2, r1
000c84  0be14920  mul.f.rn r2, r19, r4
000c88  8be10158  neg.f r3, r3
000c8c  0f010100  exp.f.rn r2, r2
000c90  8be03020  mul.f.rn r1, r1, r3
000c94  ab01803f  lui r3, 260096
000c98  8be12050  fmac.f.rn r3, r1, r2
000c9c  37200a00  beq r20, zero, 8
000ca0  8be10158  neg.f r3, r3
000ca4  e3400ffd  loadli.w r1,  -380(r30)
000ca8  67093ffc  storeli.w r3, -368(r30)
000cac  9780b001  and r1, r1, r27
000cb0  e7471ffc  storeli.w r1, -388(r30)
000cb4  8be09021  mul.f.rn r1, r1, r25
000cb8  8be90060  abs.f r19, r1
000cbc  1bb29000  slli r4, r1, 9
000cc0  0be15921  mul.f.rn r2, r19, r21
000cc4  13030200  seteq r6, r4, zero
000cc8  8f230108  .word 0x0801238f
000ccc  6b518fef  load.d r[3:4], -264(r30)
000cd0  0f922320  .word 0x2023920f
000cd4  9bc37001  srli r7, r1, 23
000cd8  93e00004  setlt.f r1, r1, zero
000cdc  9b83f30f  andi r7, r7, 255
000ce0  9bf3f30f  setlti r7, r7, 255
000ce4  17936300  or r6, r7, r6
000ce8  178a6000  and r20, r1, r6
000cec  57650200  jal 4904
000cf0  8f300110  .word 0x1001308f
000cf4  1f010e00  addli r2, r28, 0
000cf8  9f010d00  addli r3, r26, 0
000cfc  0be20958  neg.f r4, r19
000d00  0be16051  fmac.f.rn r2, r1, r22
000d04  8b611150  fmac.f.rn r3, r2, r1
000d08  1f010c00  addli r2, r24, 0
000d0c  0be11150  fmac.f.rn r2, r3, r1
000d10  9f810b00  addli r3, r23, 0
000d14  8b611150  fmac.f.rn r3, r2, r1
000d18  0be14920  mul.f.rn r2, r19, r4
000d1c  8be10158  neg.f r3, r3
000d20  0f010100  exp.f.rn r2, r2
000d24  8be03020  mul.f.rn r1, r1, r3
000d28  ab01803f  lui r3, 260096
000d2c  8be12050  fmac.f.rn r3, r1, r2
000d30  37200a00  beq r20, zero, 8
000d34  8be10158  neg.f r3, r3
000d38  e300fffc  loadli.w r1,  -392(r30)
000d3c  67483ffc  storeli.w r3, -380(r30)
000d40  9780b001  and r1, r1, r27
000d44  67471ffc  storeli.w r1, -396(r30)
000d48  8be09021  mul.f.rn r1, r1, r25
000d4c  8be90060  abs.f r19, r1
000d50  1bb29000  slli r4, r1, 9
000d54  0be15921  mul.f.rn r2, r19, r21
000d58  13030200  seteq r6, r4, zero
000d5c  8f230108  .word 0x0801238f
000d60  6b518fef  load.d r[3:4], -264(r30)
000d64  0f922320  .word 0x2023920f
000d68  9bc37001  srli r7, r1, 23
000d6c  93e00004  setlt.f r1, r1, zero
000d70  9b83f30f  andi r7, r7, 255
000d74  9bf3f30f  setlti r7, r7, 255
000d78  17936300  or r6, r7, r6
000d7c  178a6000  and r20, r1, r6
000d80  57650200  jal 4904
000d84  8f300110  .word 0x1001308f
000d88  1f010e00  addli r2, r28, 0
000d8c  9f010d00  addli r3, r26, 0
000d90  0be20958  neg.f r4, r19
000d94  0be16051  fmac.f.rn r2, r1, r22
000d98  8b611150  fmac.f.rn r3, r2, r1
000d9c  1f010c00  addli r2, r24, 0
000da0  0be11150  fmac.f.rn r2, r3, r1
000da4  9f810b00  addli r3, r23, 0
000da8  8b611150  fmac.f.rn r3, r2, r1
000dac  0be14920  mul.f.rn r2, r19, r4
000db0  8be10158  neg.f r3, r3
000db4  0f010100  exp.f.rn r2, r2
000db8  8be03020  mul.f.rn r1, r1, r3
000dbc  ab01803f  lui r3, 260096
000dc0  8be12050  fmac.f.rn r3, r1, r2
000dc4  37200a00  beq r20, zero, 8
000dc8  8be10158  neg.f r3, r3
000dcc  e3000ffd  loadli.w r1,  -384(r30)
000dd0  e7073ffc  storeli.w r3, -392(r30)
000dd4  9780b001  and r1, r1, r27
000dd8  67071ffc  storeli.w r1, -400(r30)
000ddc  8be09021  mul.f.rn r1, r1, r25
000de0  8be90060  abs.f r19, r1
000de4  1bb29000  slli r4, r1, 9
000de8  0be15921  mul.f.rn r2, r19, r21
000dec  13030200  seteq r6, r4, zero
000df0  8f230108  .word 0x0801238f
000df4  6b518fef  load.d r[3:4], -264(r30)
000df8  0f922320  .word 0x2023920f
000dfc  9bc37001  srli r7, r1, 23
000e00  93e00004  setlt.f r1, r1, zero
000e04  9b83f30f  andi r7, r7, 255
000e08  9bf3f30f  setlti r7, r7, 255
000e0c  17936300  or r6, r7, r6
000e10  178a6000  and r20, r1, r6
000e14  57650200  jal 4904
000e18  8f300110  .word 0x1001308f
000e1c  1f010e00  addli r2, r28, 0
000e20  9f010d00  addli r3, r26, 0
000e24  0be20958  neg.f r4, r19
000e28  0be16051  fmac.f.rn r2, r1, r22
000e2c  8b611150  fmac.f.rn r3, r2, r1
000e30  1f010c00  addli r2, r24, 0
000e34  0be11150  fmac.f.rn r2, r3, r1
000e38  9f810b00  addli r3, r23, 0
000e3c  8b611150  fmac.f.rn r3, r2, r1
000e40  0be14920  mul.f.rn r2, r19, r4
000e44  8be10158  neg.f r3, r3
000e48  0f010100  exp.f.rn r2, r2
000e4c  8be03020  mul.f.rn r1, r1, r3
000e50  ab01803f  lui r3, 260096
000e54  8be12050  fmac.f.rn r3, r1, r2
000e58  37200a00  beq r20, zero, 8
000e5c  8be10158  neg.f r3, r3
000e60  e3401ffd  loadli.w r1,  -372(r30)
000e64  67083ffc  storeli.w r3, -384(r30)
000e68  9780b001  and r1, r1, r27
000e6c  e7461ffc  storeli.w r1, -404(r30)
000e70  8be09021  mul.f.rn r1, r1, r25
000e74  8be90060  abs.f r19, r1
000e78  1bb29000  slli r4, r1, 9
000e7c  0be15921  mul.f.rn r2, r19, r21
000e80  13030200  seteq r6, r4, zero
000e84  8f230108  .word 0x0801238f
000e88  6b518fef  load.d r[3:4], -264(r30)
000e8c  0f922320  .word 0x2023920f
000e90  9bc37001  srli r7, r1, 23
000e94  93e00004  setlt.f r1, r1, zero
000e98  9b83f30f  andi r7, r7, 255
000e9c  9bf3f30f  setlti r7, r7, 255
000ea0  17936300  or r6, r7, r6
000ea4  178a6000  and r20, r1, r6
000ea8  57650200  jal 4904
000eac  8f300110  .word 0x1001308f
000eb0  1f010e00  addli r2, r28, 0
000eb4  9f010d00  addli r3, r26, 0
000eb8  0be20958  neg.f r4, r19
000ebc  0be16051  fmac.f.rn r2, r1, r22
000ec0  8b611150  fmac.f.rn r3, r2, r1
000ec4  1f010c00  addli r2, r24, 0
000ec8  0be11150  fmac.f.rn r2, r3, r1
000ecc  9f810b00  addli r3, r23, 0
000ed0  8b611150  fmac.f.rn r3, r2, r1
000ed4  0be14920  mul.f.rn r2, r19, r4
000ed8  8be10158  neg.f r3, r3
000edc  0f010100  exp.f.rn r2, r2
000ee0  8be03020  mul.f.rn r1, r1, r3
000ee4  ab01803f  lui r3, 260096
000ee8  8be12050  fmac.f.rn r3, r1, r2
000eec  37200a00  beq r20, zero, 8
000ef0  8be10158  neg.f r3, r3
000ef4  e3003ffd  loadli.w r1,  -360(r30)
000ef8  e7483ffc  storeli.w r3, -372(r30)
000efc  9780b001  and r1, r1, r27
000f00  e7061ffc  storeli.w r1, -408(r30)
000f04  8be09021  mul.f.rn r1, r1, r25
000f08  8be90060  abs.f r19, r1
000f0c  1bb29000  slli r4, r1, 9
000f10  0be15921  mul.f.rn r2, r19, r21
000f14  13030200  seteq r6, r4, zero
000f18  8f230108  .word 0x0801238f
000f1c  6b518fef  load.d r[3:4], -264(r30)
000f20  0f922320  .word 0x2023920f
000f24  9bc37001  srli r7, r1, 23
000f28  93e00004  setlt.f r1, r1, zero
000f2c  9b83f30f  andi r7, r7, 255
000f30  9bf3f30f  setlti r7, r7, 255
000f34  17936300  or r6, r7, r6
000f38  178a6000  and r20, r1, r6
000f3c  57650200  jal 4904
000f40  8f300110  .word 0x1001308f
000f44  1f010e00  addli r2, r28, 0
000f48  9f010d00  addli r3, r26, 0
000f4c  0be20958  neg.f r4, r19
000f50  0be16051  fmac.f.rn r2, r1, r22
000f54  8b611150  fmac.f.rn r3, r2, r1
000f58  1f010c00  addli r2, r24, 0
000f5c  0be11150  fmac.f.rn r2, r3, r1
000f60  9f810b00  addli r3, r23, 0
000f64  8b611150  fmac.f.rn r3, r2, r1
000f68  0be14920  mul.f.rn r2, r19, r4
000f6c  8be10158  neg.f r3, r3
000f70  0f010100  exp.f.rn r2, r2
000f74  8be03020  mul.f.rn r1, r1, r3
000f78  ab01803f  lui r3, 260096
000f7c  8be12050  fmac.f.rn r3, r1, r2
000f80  37200a00  beq r20, zero, 8
000f84  8be10158  neg.f r3, r3
000f88  e3004ffd  loadli.w r1,  -352(r30)
000f8c  e7093ffc  storeli.w r3, -360(r30)
000f90  9780b001  and r1, r1, r27
000f94  67461ffc  storeli.w r1, -412(r30)
000f98  8be09021  mul.f.rn r1, r1, r25
000f9c  8be90060  abs.f r19, r1
000fa0  1bb29000  slli r4, r1, 9
000fa4  0be15921  mul.f.rn r2, r19, r21
000fa8  13030200  seteq r6, r4, zero
000fac  8f230108  .word 0x0801238f
000fb0  6b518fef  load.d r[3:4], -264(r30)
000fb4  0f922320  .word 0x2023920f
000fb8  9bc37001  srli r7, r1, 23
000fbc  93e00004  setlt.f r1, r1, zero
000fc0  9b83f30f  andi r7, r7, 255
000fc4  9bf3f30f  setlti r7, r7, 255
000fc8  17936300  or r6, r7, r6
000fcc  178a6000  and r20, r1, r6
000fd0  57650200  jal 4904
000fd4  8f300110  .word 0x1001308f
000fd8  1f010e00  addli r2, r28, 0
000fdc  9f010d00  addli r3, r26, 0
000fe0  0be20958  neg.f r4, r19
000fe4  0be16051  fmac.f.rn r2, r1, r22
000fe8  8b611150  fmac.f.rn r3, r2, r1
000fec  1f010c00  addli r2, r24, 0
000ff0  0be11150  fmac.f.rn r2, r3, r1
000ff4  9f810b00  addli r3, r23, 0
000ff8  8b611150  fmac.f.rn r3, r2, r1
000ffc  0be14920  mul.f.rn r2, r19, r4
001000  8be10158  neg.f r3, r3
001004  0f010100  exp.f.rn r2, r2
001008  8be03020  mul.f.rn r1, r1, r3
00100c  ab01803f  lui r3, 260096
001010  8be12050  fmac.f.rn r3, r1, r2
001014  37200a00  beq r20, zero, 8
001018  8be10158  neg.f r3, r3
00101c  e3405ffd  loadli.w r1,  -340(r30)
001020  670a3ffc  storeli.w r3, -352(r30)
001024  9780b001  and r1, r1, r27
001028  e74a1ffc  storeli.w r1, -340(r30)
00102c  8be09021  mul.f.rn r1, r1, r25
001030  8be90060  abs.f r19, r1
001034  1bb29000  slli r4, r1, 9
001038  0be15921  mul.f.rn r2, r19, r21
00103c  13030200  seteq r6, r4, zero
001040  8f230108  .word 0x0801238f
001044  6b518fef  load.d r[3:4], -264(r30)
001048  0f922320  .word 0x2023920f
00104c  9bc37001  srli r7, r1, 23
001050  93e00004  setlt.f r1, r1, zero
001054  9b83f30f  andi r7, r7, 255
001058  9bf3f30f  setlti r7, r7, 255
00105c  17936300  or r6, r7, r6
001060  178a6000  and r20, r1, r6
001064  57650200  jal 4904
001068  8f300110  .word 0x1001308f
00106c  1f010e00  addli r2, r28, 0
001070  9f010d00  addli r3, r26, 0
001074  0be20958  neg.f r4, r19
001078  2b0e803f  lui r28, 260096
00107c  0be16051  fmac.f.rn r2, r1, r22
001080  8b611150  fmac.f.rn r3, r2, r1
001084  1f010c00  addli r2, r24, 0
001088  0be11150  fmac.f.rn r2, r3, r1
00108c  9f810b00  addli r3, r23, 0
001090  8b611150  fmac.f.rn r3, r2, r1
001094  0be14920  mul.f.rn r2, r19, r4
001098  8be10158  neg.f r3, r3
00109c  0f010100  exp.f.rn r2, r2
0010a0  8be03020  mul.f.rn r1, r1, r3
0010a4  0bee2050  fmac.f.rn r28, r1, r2
0010a8  37200a00  beq r20, zero, 8
0010ac  0b6e0e58  neg.f r28, r28
0010b0  e3406ffd  loadli.w r1,  -332(r30)
0010b4  9780b001  and r1, r1, r27
0010b8  674b1ffc  storeli.w r1, -332(r30)
0010bc  8be09021  mul.f.rn r1, r1, r25
0010c0  8be90060  abs.f r19, r1
0010c4  1bb29000  slli r4, r1, 9
0010c8  0be15921  mul.f.rn r2, r19, r21
0010cc  13030200  seteq r6, r4, zero
0010d0  8f230108  .word 0x0801238f
0010d4  6b518fef  load.d r[3:4], -264(r30)
0010d8  0f922320  .word 0x2023920f
0010dc  9bc37001  srli r7, r1, 23
0010e0  93e00004  setlt.f r1, r1, zero
0010e4  9b83f30f  andi r7, r7, 255
0010e8  9bf3f30f  setlti r7, r7, 255
0010ec  17936300  or r6, r7, r6
0010f0  978a6000  and r21, r1, r6
0010f4  57650200  jal 4904
0010f8  8f300110  .word 0x1001308f
0010fc  6341dffd  loadli.w r2,  -276(r30)
001100  9f010d00  addli r3, r26, 0
001104  0be20958  neg.f r4, r19
001108  2b0a803f  lui r20, 260096
00110c  0be16051  fmac.f.rn r2, r1, r22
001110  8b611150  fmac.f.rn r3, r2, r1
001114  1f010c00  addli r2, r24, 0
001118  0be11150  fmac.f.rn r2, r3, r1
00111c  9f810b00  addli r3, r23, 0
001120  8b611150  fmac.f.rn r3, r2, r1
001124  0be14920  mul.f.rn r2, r19, r4
001128  8be10158  neg.f r3, r3
00112c  0f010100  exp.f.rn r2, r2
001130  8be03020  mul.f.rn r1, r1, r3
001134  0bea2050  fmac.f.rn r20, r1, r2
001138  37a00a00  beq r21, zero, 8
00113c  0b6a0a58  neg.f r20, r20
001140  e3008ffd  loadli.w r1,  -320(r30)
001144  6301cffd  loadli.w r2,  -288(r30)
001148  9789b001  and r19, r1, r27
00114c  8be09921  mul.f.rn r1, r19, r25
001150  8bea0060  abs.f r21, r1
001154  1bb29000  slli r4, r1, 9
001158  0be12a20  mul.f.rn r2, r21, r2
00115c  13030200  seteq r6, r4, zero
001160  8f230108  .word 0x0801238f
001164  6b518fef  load.d r[3:4], -264(r30)
001168  0f922320  .word 0x2023920f
00116c  9bc37001  srli r7, r1, 23
001170  93e00004  setlt.f r1, r1, zero
001174  9b83f30f  andi r7, r7, 255
001178  9bf3f30f  setlti r7, r7, 255
00117c  17936300  or r6, r7, r6
001180  178b6000  and r22, r1, r6
001184  57650200  jal 4904
001188  8f300110  .word 0x1001308f
00118c  6341dffd  loadli.w r2,  -276(r30)
001190  e301dffd  loadli.w r3,  -280(r30)
001194  0be20a58  neg.f r4, r21
001198  ab0c803f  lui r25, 260096
00119c  0be13050  fmac.f.rn r2, r1, r3
0011a0  9f010d00  addli r3, r26, 0
0011a4  8b611150  fmac.f.rn r3, r2, r1
0011a8  1f010c00  addli r2, r24, 0
0011ac  0be11150  fmac.f.rn r2, r3, r1
0011b0  9f810b00  addli r3, r23, 0
0011b4  8b611150  fmac.f.rn r3, r2, r1
0011b8  0be14a20  mul.f.rn r2, r21, r4
0011bc  8be10158  neg.f r3, r3
0011c0  0f010100  exp.f.rn r2, r2
0011c4  8be03020  mul.f.rn r1, r1, r3
0011c8  8bec2050  fmac.f.rn r25, r1, r2
0011cc  37200b00  beq r22, zero, 8
0011d0  8bec0c58  neg.f r25, r25
0011d4  e3009ffd  loadli.w r1,  -312(r30)
0011d8  6341bffd  loadli.w r2,  -292(r30)
0011dc  ab03003f  lui r7, 258048
0011e0  e301cffd  loadli.w r3,  -288(r30)
0011e4  9780b001  and r1, r1, r27
0011e8  0be42020  mul.f.rn r8, r1, r2
0011ec  63419ffd  loadli.w r2,  -308(r30)
0011f0  0b617120  mul.f.rn r2, r2, r7
0011f4  8b6d0460  abs.f r27, r8
0011f8  9b329400  slli r5, r8, 9
0011fc  8be13d20  mul.f.rn r3, r27, r3
001200  13830200  seteq r6, r5, zero
001204  67062ffc  storeli.w r2, -416(r30)
001208  63417ffd  loadli.w r2,  -324(r30)
00120c  0b617120  mul.f.rn r2, r2, r7
001210  8fa40108  .word 0x0801a48f
001214  e7452ffc  storeli.w r2, -420(r30)
001218  63016ffd  loadli.w r2,  -336(r30)
00121c  0b617120  mul.f.rn r2, r2, r7
001220  670b2ffc  storeli.w r2, -336(r30)
001224  63414ffd  loadli.w r2,  -348(r30)
001228  0b617120  mul.f.rn r2, r2, r7
00122c  674a2ffc  storeli.w r2, -348(r30)
001230  63412ffd  loadli.w r2,  -364(r30)
001234  0b617120  mul.f.rn r2, r2, r7
001238  e74c2ffc  storeli.w r2, -308(r30)
00123c  63011ffd  loadli.w r2,  -376(r30)
001240  0b617120  mul.f.rn r2, r2, r7
001244  67492ffc  storeli.w r2, -364(r30)
001248  6341fffc  loadli.w r2,  -388(r30)
00124c  0b6d7120  mul.f.rn r26, r2, r7
001250  6341effc  loadli.w r2,  -396(r30)
001254  8b6a7120  mul.f.rn r21, r2, r7
001258  6301effc  loadli.w r2,  -400(r30)
00125c  0b6b7120  mul.f.rn r22, r2, r7
001260  6341dffc  loadli.w r2,  -404(r30)
001264  8b6b7120  mul.f.rn r23, r2, r7
001268  6301dffc  loadli.w r2,  -408(r30)
00126c  0b617120  mul.f.rn r2, r2, r7
001270  e70c2ffc  storeli.w r2, -312(r30)
001274  6341cffc  loadli.w r2,  -412(r30)
001278  0b617120  mul.f.rn r2, r2, r7
00127c  670c2ffc  storeli.w r2, -320(r30)
001280  63415ffd  loadli.w r2,  -340(r30)
001284  0b617120  mul.f.rn r2, r2, r7
001288  e74b2ffc  storeli.w r2, -324(r30)
00128c  63416ffd  loadli.w r2,  -332(r30)
001290  0b617120  mul.f.rn r2, r2, r7
001294  674b2ffc  storeli.w r2, -332(r30)
001298  0be17920  mul.f.rn r2, r19, r7
00129c  8be97020  mul.f.rn r19, r1, r7
0012a0  e74a2ffc  storeli.w r2, -340(r30)
0012a4  6b518fef  load.d r[3:4], -264(r30)
0012a8  0f922420  .word 0x2024920f
0012ac  9b447401  srli r9, r8, 23
0012b0  13640404  setlt.f r8, r8, zero
0012b4  9b84f40f  andi r9, r9, 255
0012b8  9bf0f40f  setlti r1, r9, 255
0012bc  97906000  or r1, r1, r6
0012c0  170c1400  and r24, r8, r1
0012c4  57650200  jal 4904
0012c8  8f300110  .word 0x1001308f
0012cc  6341dffd  loadli.w r2,  -276(r30)
0012d0  e301dffd  loadli.w r3,  -280(r30)
0012d4  0be20d58  neg.f r4, r27
0012d8  0be13050  fmac.f.rn r2, r1, r3
0012dc  e341cffd  loadli.w r3,  -284(r30)
0012e0  8b611150  fmac.f.rn r3, r2, r1
0012e4  6301effd  loadli.w r2,  -272(r30)
0012e8  0be11150  fmac.f.rn r2, r3, r1
0012ec  e341effd  loadli.w r3,  -268(r30)
0012f0  8b611150  fmac.f.rn r3, r2, r1
0012f4  0be14d20  mul.f.rn r2, r27, r4
0012f8  8be10158  neg.f r3, r3
0012fc  0f010100  exp.f.rn r2, r2
001300  8be13020  mul.f.rn r3, r1, r3
001304  ab00803f  lui r1, 260096
001308  8be02150  fmac.f.rn r1, r3, r2
00130c  372d0cf6  beq r24, zero, -4280
001310  8be00058  neg.f r1, r1
001314  5be8fdff  j -4288
001318  9f0e8ffb  addli sp, r30, -576
00131c  9f8e8e04  addli sp, sp, 576
001320  00a00300  mfence { lm, sm, gm }
001324  00100000  exit
001328  9f8e7eff  addli sp, sp, -72
00132c  9f406000  addli r1, zero, 52
001330  2bf50f00  lui r10, 255
001334  abf7ffff  lui r15, 1048575
001338  ab040080  lui r9, 524288
00133c  17232202  xor.d r[7:8], r[5:6], r[3:4]
001340  e7c1ee01  storeli.w r30, 28(sp)
001344  67c43e01  storeli.w r19, 68(sp)
001348  67844e01  storeli.w r20, 64(sp)
00134c  e7c35e01  storeli.w r21, 60(sp)
001350  e7836e01  storeli.w r22, 56(sp)
001354  67c37e01  storeli.w r23, 52(sp)
001358  67838e01  storeli.w r24, 48(sp)
00135c  e7c29e01  storeli.w r25, 44(sp)
001360  e782ae01  storeli.w r26, 40(sp)
001364  67c2be01  storeli.w r27, 36(sp)
001368  6782ce01  storeli.w r28, 32(sp)
00136c  e781fe01  storeli.w r31, 24(sp)
001370  1f8f9e00  addli r30, sp, 72
001374  1f040000  addli r8, zero, 0
001378  97451102  srl.d r[12:13], r[3:4], r1
00137c  17481202  srl.d r[17:18], r[5:6], r1
001380  1b17f5ff  ori r14, r10, 4095
001384  9b96f7ff  ori r13, r15, 4095
001388  17038302  and.d r[7:8], r[7:8], r[9:10]
00138c  9b80f57f  andi r1, r11, 2047
001390  1b05f87f  andi r10, r16, 2047
001394  9b982780  ori r17, r15, 2050
001398  1704d102  and.d r[9:10], r[3:4], r[14:15]
00139c  9705d202  and.d r[12:13], r[5:6], r[14:15]
0013a0  1f9800f0  addli r16, r1, -2047
0013a4  13081805  setlt.u r16, r16, r17
0013a8  3b700800  bneq r16, zero, 28
0013ac  1f1805f0  addli r16, r10, -2047
0013b0  9b971780  ori r15, r15, 2049
0013b4  93870705  setlt.u r15, r15, r16
0013b8  37b00700  beq r15, zero, 12
0013bc  1f020000  addli r4, zero, 0
0013c0  5b0b0000  j 88
0013c4  abf7ff7f  lui r15, 524287
0013c8  2b09f07f  lui r18, 524032
0013cc  9f180000  addli r17, zero, 1
0013d0  1b97f7ff  ori r14, r15, 4095
0013d4  9707d102  and.d r[16:17], r[3:4], r[14:15]
0013d8  93a91705  setlt.ul r19, r[16:17], r[18:19]
0013dc  3be00900  bneq r19, zero, 24
0013e0  ab020800  lui r5, 128
0013e4  9f060000  addli r13, zero, 0
0013e8  1f020000  addli r4, zero, 0
0013ec  17114102  or.d r[3:4], r[3:4], r[5:6]
0013f0  5b040000  j 32
0013f4  1701d202  and.d r[3:4], r[5:6], r[14:15]
0013f8  93261105  setlt.ul r13, r[3:4], r[18:19]
0013fc  3bf80600  bneq r13, zero, 540
001400  ab010800  lui r3, 128
001404  9f060000  addli r13, zero, 0
001408  1f010000  addli r2, zero, 0
00140c  17112202  or.d r[3:4], r[5:6], r[3:4]
001410  1f020000  addli r4, zero, 0
001414  b7c90600  beq r13, zero, 624
001418  ab011000  lui r3, 256
00141c  9f371000  addli r15, zero, 11
001420  abf9ffff  lui r19, 1048575
001424  2bf90475  lui r18, 479311
001428  9f582000  addli r17, zero, 21
00142c  73346ffc  store.d r[7:8], -56(r30)
001430  9f723000  addli r5, zero, 31
001434  73308ffc  store.d r[9:10], -64(r30)
001438  8b90a018  sub.s r1, r1, r10
00143c  1f010000  addli r2, zero, 0
001440  97b7f502  sll.d r[16:17], r[12:13], r15
001444  9b1a3933  ori r21, r18, 819
001448  8b101210  add.s r1, r4, r1
00144c  97162402  or.d r[14:15], r[9:10], r[3:4]
001450  17912502  or.d r[3:4], r[12:13], r[3:4]
001454  9b950980  ori r11, r19, 2048
001458  733cdffa  store.d r[14:15], -72(r30)
00145c  338c0528  zext_int2long r[25:26], r11
001460  174b1103  srl.d r[23:24], r[3:4], r17
001464  9b95f9ff  ori r11, r19, 4095
001468  9b99e9ff  ori r19, r19, 4094
00146c  b3880528  zext_int2long r[18:19], r11
001470  8b9a6a19  sub.s r21, r21, r22
001474  97878703  and.d r[16:17], r[16:17], r[25:26]
001478  b3890928  zext_int2long r[20:21], r19
00147c  170d1b03  and.d r[27:28], r[23:24], r[18:19]
001480  b38a0a28  zext_int2long r[22:23], r21
001484  0b335d21  mul.sl r[7:8], r[27:28], r[22:23]
001488  0b930358  neg.s r6, r7
00148c  33030328  zext_int2long r[7:8], r6
001490  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
001494  17435302  srl.d r[7:8], r[7:8], r5
001498  17031303  and.d r[7:8], r[7:8], r[18:19]
00149c  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
0014a0  8b1a0b58  neg.s r21, r22
0014a4  b38a0a28  zext_int2long r[22:23], r21
0014a8  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
0014ac  17435302  srl.d r[7:8], r[7:8], r5
0014b0  17031303  and.d r[7:8], r[7:8], r[18:19]
0014b4  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
0014b8  8b1a0b58  neg.s r21, r22
0014bc  1f0b4000  addli r22, zero, 32
0014c0  33840a28  zext_int2long r[9:10], r21
0014c4  9f1a0000  addli r21, zero, 1
0014c8  0b338320  mul.sl r[7:8], r[7:8], r[9:10]
0014cc  33840a28  zext_int2long r[9:10], r21
0014d0  17435302  srl.d r[7:8], r[7:8], r5
0014d4  1f73f3ff  addli r6, r6, -1
0014d8  33030328  zext_int2long r[7:8], r6
0014dc  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
0014e0  8b3b6d20  mul.sl r[24:25], r[27:28], r[7:8]
0014e4  97c76703  srl.d r[16:17], r[16:17], r22
0014e8  8ba7fb10  add.ul r[16:17], r[24:25], r[16:17]
0014ec  0b34f418  sub.sl r[9:10], r[9:10], r[16:17]
0014f0  97071403  and.d r[16:17], r[9:10], r[18:19]
0014f4  17446403  srl.d r[9:10], r[9:10], r22
0014f8  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
0014fc  97cb5702  srl.d r[24:25], r[16:17], r5
001500  8b328320  mul.sl r[6:7], r[7:8], r[9:10]
001504  97b75603  sll.d r[16:17], r[14:15], r21
001508  abf41f00  lui r9, 511
00150c  97b25203  sll.d r[6:7], r[6:7], r21
001510  97cc6703  srl.d r[26:27], r[16:17], r22
001514  978d3703  and.d r[28:29], r[16:17], r[20:21]
001518  1b96f4ff  ori r12, r9, 4095
00151c  8ba27211  add.ul r[6:7], r[6:7], r[24:25]
001520  a7f232fe  addli.d r[6:7], r[6:7], 32543
001524  97831203  and.d r[8:9], r[6:7], r[18:19]
001528  97c26203  srl.d r[6:7], r[6:7], r22
00152c  8bbbb321  mul.sl r[24:25], r[8:9], r[28:29]
001530  8bb39321  mul.sl r[8:9], r[8:9], r[26:27]
001534  8bbdb221  mul.sl r[28:29], r[6:7], r[28:29]
001538  8bb29221  mul.sl r[6:7], r[6:7], r[26:27]
00153c  97881303  and.d r[18:19], r[8:9], r[18:19]
001540  97cb6b03  srl.d r[24:25], r[24:25], r22
001544  97cc6d03  srl.d r[26:27], r[28:29], r22
001548  97893d03  and.d r[20:21], r[28:29], r[20:21]
00154c  97c36303  srl.d r[8:9], r[8:9], r22
001550  8ba81b11  add.ul r[18:19], r[24:25], r[18:19]
001554  0ba25c10  add.ul r[5:6], r[26:27], r[6:7]
001558  8ba83811  add.ul r[18:19], r[18:19], r[20:21]
00155c  0b227210  add.ul r[5:6], r[5:6], r[8:9]
001560  17c36803  srl.d r[7:8], r[18:19], r22
001564  0b226210  add.ul r[5:6], r[5:6], r[7:8]
001568  13a34504  setlt.ul r6, r[12:13], r[5:6]
00156c  3b710300  bneq r6, zero, 92
001570  1f536000  addli r6, zero, 53
001574  eb540ffc  load.d r[10:11], -64(r30)
001578  8b332220  mul.sl r[8:9], r[5:6], r[3:4]
00157c  9fe0f007  addli r1, r1, 1022
001580  97b46402  sll.d r[10:11], r[10:11], r6
001584  0bb47418  sub.sl r[9:10], r[10:11], r[8:9]
001588  1f73f00f  addli r6, zero, 2047
00158c  3fa06000  blt.s r1, r6, 8
001590  5b0c0000  j 96
001594  1f150000  addli r10, zero, 1
001598  bfb1a000  blt.s r1, r10, 108
00159c  2bf30f00  lui r6, 255
0015a0  abf3ffff  lui r7, 1048575
0015a4  b3850028  zext_int2long r[12:13], r1
0015a8  9f406000  addli r1, zero, 52
0015ac  1734a402  sll.d r[9:10], r[9:10], r10
0015b0  1b17f3ff  ori r14, r6, 4095
0015b4  97b51502  sll.d r[12:13], r[12:13], r1
0015b8  9b96f3ff  ori r13, r7, 4095
0015bc  1702d202  and.d r[5:6], r[5:6], r[14:15]
0015c0  17924502  or.d r[5:6], r[12:13], r[5:6]
0015c4  db140000  j 164
0015c8  17425203  srl.d r[5:6], r[5:6], r21
0015cc  1f436000  addli r6, zero, 52
0015d0  eb530ffc  load.d r[8:9], -64(r30)
0015d4  9ff0f007  addli r1, r1, 1023
0015d8  eb578ffb  load.d r[16:17], -72(r30)
0015dc  17b36302  sll.d r[7:8], r[8:9], r6
0015e0  0b342220  mul.sl r[9:10], r[5:6], r[3:4]
0015e4  0b348318  sub.sl r[9:10], r[7:8], r[9:10]
0015e8  1f73f00f  addli r6, zero, 2047
0015ec  bfae60fe  blt.s r1, r6, -88
0015f0  2b01f07f  lui r2, 524032
0015f4  eb518ffc  load.d r[4:5], -56(r30)
0015f8  9f000000  addli r1, zero, 0
0015fc  17911102  or.d r[3:4], r[4:5], r[2:3]
001600  db100000  j 132
001604  2bf3ffff  lui r6, 1048575
001608  1b13b3fc  ori r6, r6, 4043
00160c  bf701300  blt.s r6, r1, 60
001610  6b518ffc  load.d r[3:4], -56(r30)
001614  5b0e0000  j 112
001618  ab02f07f  lui r5, 524032
00161c  1f020000  addli r4, zero, 0
001620  93a64702  setneq.d r13, r[16:17], r[5:6]
001624  3be20600  bneq r13, zero, 152
001628  1f020000  addli r4, zero, 0
00162c  13214100  seteq.d r2, r[3:4], r[5:6]
001630  b7060100  beq r2, zero, 416
001634  ab01f87f  lui r3, 524160
001638  9f060000  addli r13, zero, 0
00163c  1f020000  addli r4, zero, 0
001640  1f010000  addli r2, zero, 0
001644  5bbaffff  j -560
001648  9f130000  addli r7, zero, 1
00164c  1fc36000  addli r6, r1, 52
001650  8b901318  sub.s r1, r7, r1
001654  17b46702  sll.d r[9:10], r[16:17], r6
001658  17421202  srl.d r[5:6], r[5:6], r1
00165c  0b354120  mul.sl r[11:12], r[3:4], r[5:6]
001660  17337502  sll.d r[7:8], r[11:12], r7
001664  0b346418  sub.sl r[9:10], r[9:10], r[7:8]
001668  23031200  andi.d r[7:8], r[5:6], 1
00166c  0b238310  add.ul r[7:8], r[7:8], r[9:10]
001670  93206104  setlt.ul r1, r[3:4], r[7:8]
001674  b3800028  zext_int2long r[2:3], r1
001678  8b201210  add.ul r[2:3], r[5:6], r[2:3]
00167c  eb518ffc  load.d r[4:5], -56(r30)
001680  17913002  or.d r[3:4], r[2:3], r[4:5]
001684  e38f3e00  loadli.w r31,  24(sp)
001688  63cf3e00  loadli.w r30,  28(sp)
00168c  638e4e00  loadli.w r28,  32(sp)
001690  e3cd4e00  loadli.w r27,  36(sp)
001694  638d5e00  loadli.w r26,  40(sp)
001698  e3cc5e00  loadli.w r25,  44(sp)
00169c  638c6e00  loadli.w r24,  48(sp)
0016a0  e3cb6e00  loadli.w r23,  52(sp)
0016a4  638b7e00  loadli.w r22,  56(sp)
0016a8  e3ca7e00  loadli.w r21,  60(sp)
0016ac  638a8e00  loadli.w r20,  64(sp)
0016b0  e3c98e00  loadli.w r19,  68(sp)
0016b4  9f8e9e00  addli sp, sp, 72
0016b8  5f800f00  jr r31, 0
0016bc  1f020000  addli r4, zero, 0
0016c0  13224102  setneq.d r4, r[3:4], r[5:6]
0016c4  3b500200  bneq r4, zero, 20
0016c8  9f060000  addli r13, zero, 0
0016cc  1f020000  addli r4, zero, 0
0016d0  27010300  addli.d r[3:4], r[7:8], 0
0016d4  5ba8ffff  j -704
0016d8  33020028  zext_int2long r[5:6], zero
0016dc  13a24702  setneq.d r4, r[16:17], r[5:6]
0016e0  37240200  beq r4, zero, 264
0016e4  33020028  zext_int2long r[5:6], zero
0016e8  13224102  setneq.d r4, r[3:4], r[5:6]
0016ec  b7130200  beq r4, zero, 228
0016f0  2bf20f00  lui r4, 255
0016f4  abf2ffff  lui r5, 1048575
0016f8  1b17f2ff  ori r14, r4, 4095
0016fc  9b96f2ff  ori r13, r5, 4095
001700  13a2f604  setlt.ul r4, r[14:15], r[16:17]
001704  bb630200  bneq r4, zero, 248
001708  9f120000  addli r5, zero, 1
00170c  9f270000  addli r15, zero, 2
001710  1f420000  addli r4, zero, 4
001714  1f081000  addli r16, zero, 8
001718  97485402  srl.d r[18:19], r[9:10], r5
00171c  97181403  or.d r[18:19], r[9:10], r[18:19]
001720  97c9f802  srl.d r[20:21], r[18:19], r15
001724  97983803  or.d r[18:19], r[18:19], r[20:21]
001728  97c94802  srl.d r[20:21], r[18:19], r4
00172c  97983803  or.d r[18:19], r[18:19], r[20:21]
001730  9f092000  addli r19, zero, 16
001734  17ca0803  srl.d r[21:22], r[18:19], r16
001738  17984803  or.d r[17:18], r[18:19], r[21:22]
00173c  1f094000  addli r18, zero, 32
001740  97493803  srl.d r[20:21], r[17:18], r19
001744  17183803  or.d r[17:18], r[17:18], r[20:21]
001748  2b5a5555  lui r20, 349525
00174c  17492803  srl.d r[19:20], r[17:18], r18
001750  17182803  or.d r[17:18], r[17:18], r[19:20]
001754  33990628  sext_int2long r[19:20], r13
001758  17282803  xor.d r[17:18], r[17:18], r[19:20]
00175c  1b195a55  ori r18, r20, 1365
001760  174a5802  srl.d r[21:22], r[17:18], r5
001764  9f090900  addli r19, r18, 0
001768  ab323333  lui r5, 209715
00176c  17092a03  and.d r[19:20], r[21:22], r[19:20]
001770  1b9a3233  ori r20, r5, 819
001774  ab020f0f  lui r5, 61680
001778  0b382819  sub.sl r[17:18], r[17:18], r[19:20]
00177c  9f0a0a00  addli r21, r20, 0
001780  1749f802  srl.d r[19:20], r[17:18], r15
001784  97074803  and.d r[16:17], r[17:18], r[21:22]
001788  97084903  and.d r[18:19], r[19:20], r[21:22]
00178c  ab090101  lui r19, 4112
001790  1f0a7000  addli r20, zero, 56
001794  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
001798  97c84702  srl.d r[18:19], r[16:17], r4
00179c  1b92f2f0  ori r4, r5, 3855
0017a0  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
0017a4  9f020200  addli r5, r4, 0
0017a8  9f481000  addli r17, zero, 12
0017ac  17824702  and.d r[5:6], r[16:17], r[5:6]
0017b0  9b971910  ori r15, r19, 257
0017b4  1f880700  addli r16, r15, 0
0017b8  0b32f220  mul.sl r[5:6], r[5:6], r[16:17]
0017bc  17424203  srl.d r[5:6], r[5:6], r20
0017c0  9f57e2ff  addli r15, r4, -11
0017c4  0b924818  sub.s r4, r17, r4
0017c8  1734f402  sll.d r[9:10], r[9:10], r15
0017cc  db060000  j 52
0017d0  ab01f07f  lui r3, 524032
0017d4  9f060000  addli r13, zero, 0
0017d8  1f020000  addli r4, zero, 0
0017dc  1f010000  addli r2, zero, 0
0017e0  17112302  or.d r[3:4], r[7:8], r[3:4]
0017e4  5b86ffff  j -976
0017e8  33020028  zext_int2long r[5:6], zero
0017ec  13214100  seteq.d r2, r[3:4], r[5:6]
0017f0  bb430100  bneq r2, zero, 240
0017f4  27010300  addli.d r[3:4], r[7:8], 0
0017f8  5b1e0000  j 240
0017fc  1f020000  addli r4, zero, 0
001800  13a12604  setlt.ul r2, r[14:15], r[3:4]
001804  3b530100  bneq r2, zero, 212
001808  9f160000  addli r13, zero, 1
00180c  9f210000  addli r3, zero, 2
001810  1f410000  addli r2, zero, 4
001814  9f021000  addli r5, zero, 8
001818  1f072000  addli r14, zero, 16
00181c  97c7d502  srl.d r[16:17], r[12:13], r13
001820  9797f502  or.d r[16:17], r[12:13], r[16:17]
001824  97c83702  srl.d r[18:19], r[16:17], r3
001828  97971703  or.d r[16:17], r[16:17], r[18:19]
00182c  97c82702  srl.d r[18:19], r[16:17], r2
001830  97971703  or.d r[16:17], r[16:17], r[18:19]
001834  97c85702  srl.d r[18:19], r[16:17], r5
001838  9f024000  addli r5, zero, 32
00183c  97971703  or.d r[16:17], r[16:17], r[18:19]
001840  97c8e702  srl.d r[18:19], r[16:17], r14
001844  2bf7ffff  lui r14, 1048575
001848  97971703  or.d r[16:17], r[16:17], r[18:19]
00184c  1b17f7ff  ori r14, r14, 4095
001850  97c85702  srl.d r[18:19], r[16:17], r5
001854  ab525555  lui r5, 349525
001858  97971703  or.d r[16:17], r[16:17], r[18:19]
00185c  b3180728  sext_int2long r[18:19], r14
001860  9b995255  ori r19, r5, 1365
001864  ab323333  lui r5, 209715
001868  17a71703  xor.d r[15:16], r[16:17], r[18:19]
00186c  1f8a0900  addli r20, r19, 0
001870  1748d702  srl.d r[17:18], r[15:16], r13
001874  17083803  and.d r[17:18], r[17:18], r[20:21]
001878  1b993233  ori r18, r5, 819
00187c  ab020101  lui r5, 4112
001880  0b370719  sub.sl r[15:16], r[15:16], r[17:18]
001884  9f090900  addli r19, r18, 0
001888  17483702  srl.d r[17:18], r[15:16], r3
00188c  17072703  and.d r[15:16], r[15:16], r[19:20]
001890  ab010f0f  lui r3, 61680
001894  17082803  and.d r[17:18], r[17:18], r[19:20]
001898  1b99f1f0  ori r18, r3, 3855
00189c  0b270711  add.ul r[15:16], r[15:16], r[17:18]
0018a0  9f090900  addli r19, r18, 0
0018a4  17412702  srl.d r[3:4], r[15:16], r2
0018a8  0b212710  add.ul r[3:4], r[15:16], r[3:4]
0018ac  1b971210  ori r14, r5, 257
0018b0  9f027000  addli r5, zero, 56
0018b4  17012103  and.d r[3:4], r[3:4], r[19:20]
0018b8  9f070700  addli r15, r14, 0
0018bc  0b31e120  mul.sl r[3:4], r[3:4], r[15:16]
0018c0  17415102  srl.d r[3:4], r[3:4], r5
0018c4  9f52e1ff  addli r5, r2, -11
0018c8  0b114110  add.s r2, r2, r4
0018cc  97b55502  sll.d r[12:13], r[12:13], r5
0018d0  1f42e1ff  addli r4, r2, -12
0018d4  5b010000  j 8
0018d8  9f160000  addli r13, zero, 1
0018dc  5b67ffff  j -1224
0018e0  ab01f87f  lui r3, 524160
0018e4  1f010000  addli r2, zero, 0
0018e8  9f060000  addli r13, zero, 0
0018ec  db64ffff  j -1244
0018f0  00100000  exit
0018f4  00100000  exit
0018f8  00100000  exit
0018fc  00100000  exit
001900  00100000  exit
001904  00100000  exit
001908  00100000  exit
00190c  00100000  exit
001910  00100000  exit
001914  00100000  exit
001918  00100000  exit
00191c  00100000  exit
001920  00100000  exit
001924  00100000  exit
001928  00100000  exit
00192c  00100000  exit
001930  00100000  exit
001934  00100000  exit
001938  00100000  exit
00193c  00100000  exit
001940  00100000  exit
001944  00100000  exit
001948  00100000  exit
00194c  00100000  exit
001950  00100000  exit
001954  00100000  exit
001958  00100000  exit
00195c  00100000  exit
001960  00100000  exit
001964  00100000  exit
001968  00100000  exit
00196c  00100000  exit
001970  00100000  exit
001974  00100000  exit
001978  00100000  exit
00197c  00100000  exit
001980  00100000  exit
001984  00100000  exit
001988  00100000  exit
00198c  00100000  exit
001990  00100000  exit
001994  00100000  exit
001998  00100000  exit
00199c  00100000  exit
0019a0  00100000  exit
0019a4  00100000  exit
0019a8  00100000  exit
0019ac  00100000  exit
0019b0  00100000  exit
0019b4  00100000  exit
0019b8  00100000  exit
0019bc  00100000  exit
0019c0  00100000  exit
0019c4  00100000  exit
0019c8  00100000  exit
0019cc  00100000  exit
0019d0  00100000  exit
0019d4  00100000  exit
0019d8  00100000  exit
0019dc  00100000  exit
0019e0  00100000  exit
0019e4  00100000  exit
0019e8  00100000  exit
0019ec  00100000  exit
0019f0  00100000  exit
0019f4  00100000  exit
0019f8  00100000  exit
0019fc  00100000  exit
001a00  00100000  exit
001a04  00100000  exit
001a08  00100000  exit
001a0c  00100000  exit
001a10  00100000  exit
001a14  00100000  exit
001a18  00100000  exit
001a1c  00100000  exit
001a20  00100000  exit
001a24  00100000  exit
001a28  00100000  exit
001a2c  00100000  exit
001a30  00100000  exit
001a34  00100000  exit
001a38  00100000  exit
001a3c  00100000  exit
001a40  00100000  exit
001a44  00100000  exit
001a48  00100000  exit
001a4c  00100000  exit
001a50  00100000  exit
001a54  00100000  exit
001a58  00100000  exit
001a5c  00100000  exit
001a60  00100000  exit
001a64  00100000  exit
001a68  00100000  exit
001a6c  00100000  exit
001a70  00100000  exit
001a74  00100000  exit
001a78  00100000  exit
001a7c  00100000  exit
001a80  00100000  exit
001a84  00100000  exit
001a88  00100000  exit
001a8c  00100000  exit
001a90  00100000  exit
001a94  00100000  exit
001a98  00100000  exit
001a9c  00100000  exit
001aa0  00100000  exit
001aa4  00100000  exit
001aa8  00100000  exit
001aac  00100000  exit
001ab0  00100000  exit
001ab4  00100000  exit
001ab8  00100000  exit
001abc  00100000  exit
001ac0  00100000  exit
001ac4  00100000  exit
001ac8  00100000  exit
001acc  00100000  exit
001ad0  00100000  exit
001ad4  00100000  exit
001ad8  00100000  exit
001adc  00100000  exit
001ae0  00100000  exit
001ae4  00100000  exit
001ae8  00100000  exit
001aec  00100000  exit
001af0  00100000  exit
001af4  00100000  exit
001af8  00100000  exit
001afc  00100000  exit
001b00  00100000  exit
001b04  00100000  exit
001b08  00100000  exit
001b0c  00100000  exit
001b10  00100000  exit
001b14  00100000  exit
001b18  00100000  exit
001b1c  00100000  exit
001b20  00100000  exit
001b24  00100000  exit
001b28  00100000  exit
001b2c  00100000  exit
