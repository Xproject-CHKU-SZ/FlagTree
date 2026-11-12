; SHA-256 a7dbc80d129863a889cbd68adeb3c677ce6fb4c0a8e8a11fdd32556b32bb4422
; P800 Cluster · XTDK LLVM 19 · 1695 / 1743 words decoded
; bound names: triton_poi_fused_add_gelu_0
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
000078  9f095000  addli r19, zero, 40
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
0000e8  63014f00  loadli.w r2,  32(r30)
0000ec  e3403f00  loadli.w r1,  28(r30)
0000f0  e3414f00  loadli.w r3,  36(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  674e1ffa  storeli.w r1, -540(r30)
000100  cb984008  ble.s r1, r4, 4644
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
0001a8  db070000  j 60
0001ac  6b510f01  load.d r[3:4], 16(r30)
0001b0  6b528fde  load.d r[5:6], -536(r30)
0001b4  ab0000f0  lui r1, 983040
0001b8  9f048000  addli r9, zero, 64
0001bc  97901400  or r1, r9, r1
0001c0  0b214110  add.ul r[3:4], r[3:4], r[5:6]
0001c4  6342effb  loadli.w r4,  -524(r30)
0001c8  ff302101  s_lm2gm r1, r18, 0(r[3:4])
0001cc  e300cffb  loadli.w r1,  -544(r30)
0001d0  00a00000  mfence { lm }
0001d4  0b121210  add.s r4, r4, r1
0001d8  e340cffb  loadli.w r1,  -540(r30)
0001dc  3f201200  blt.s r4, r1, 8
0001e0  db280200  j 4420
0001e4  e3404f00  loadli.w r1,  36(r30)
0001e8  63014f00  loadli.w r2,  32(r30)
0001ec  674f4ffa  storeli.w r4, -524(r30)
0001f0  9f130000  addli r7, zero, 1
0001f4  8b101230  div.s r1, r4, r1
0001f8  8b902030  div.s r1, r1, r2
0001fc  6341bffb  loadli.w r2,  -548(r30)
000200  9bb0b000  slli r1, r1, 11
000204  8b902010  add.s r1, r1, r2
000208  1f010008  addli r2, zero, 1024
00020c  0b912038  mod.s r2, r1, r2
000210  b3910028  sext_int2long r[4:5], r1
000214  ab0000f0  lui r1, 983040
000218  17b57102  sll.d r[11:12], r[4:5], r7
00021c  97901400  or r1, r9, r1
000220  7334afde  store.d r[11:12], -536(r30)
000224  b3120128  sext_int2long r[6:7], r2
000228  2b0100f0  lui r2, 983040
00022c  97b17202  sll.d r[4:5], r[6:7], r7
000230  eb520f00  load.d r[6:7], 0(r30)
000234  eb538f00  load.d r[8:9], 8(r30)
000238  17912400  or r2, r9, r2
00023c  8ba13310  add.ul r[4:5], r[8:9], r[4:5]
000240  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
000244  9f030ffe  addli r7, r30, -256
000248  ffa07200  l_gm2lm r1, r7, 0(r[6:7])
00024c  7fa12101  l_gm2lm r2, r18, 0(r[4:5])
000250  1f110000  addli r2, zero, 1
000254  9f010000  addli r3, zero, 0
000258  00a00000  mfence { lm }
00025c  5b340000  j 416
000260  6301affd  loadli.w r2,  -304(r30)
000264  ab08803f  lui r17, 260096
000268  e3418ffd  loadli.w r3,  -316(r30)
00026c  63027ffd  loadli.w r4,  -328(r30)
000270  6303cffc  loadli.w r6,  -416(r30)
000274  e3025ffd  loadli.w r5,  -344(r30)
000278  e3032ffd  loadli.w r7,  -368(r30)
00027c  63469ffd  loadli.w r12,  -308(r30)
000280  63440ffd  loadli.w r8,  -380(r30)
000284  e304fffc  loadli.w r9,  -392(r30)
000288  63050ffd  loadli.w r10,  -384(r30)
00028c  e3451ffd  loadli.w r11,  -372(r30)
000290  e3064ffd  loadli.w r13,  -352(r30)
000294  1f098ffe  addli r18, r30, -192
000298  ab0dffff  lui r27, 1048560
00029c  8be01011  add.f.rn r1, r1, r17
0002a0  0be81c11  add.f.rn r16, r25, r17
0002a4  0b671e11  add.f.rn r14, r28, r17
0002a8  8b671a11  add.f.rn r15, r20, r17
0002ac  ab0c4000  lui r25, 1024
0002b0  0b611111  add.f.rn r2, r2, r17
0002b4  8be11111  add.f.rn r3, r3, r17
0002b8  0b621211  add.f.rn r4, r4, r17
0002bc  8be21211  add.f.rn r5, r5, r17
0002c0  8be31311  add.f.rn r7, r7, r17
0002c4  0b641411  add.f.rn r8, r8, r17
0002c8  8be41411  add.f.rn r9, r9, r17
0002cc  0b651511  add.f.rn r10, r10, r17
0002d0  8be51511  add.f.rn r11, r11, r17
0002d4  8be61611  add.f.rn r13, r13, r17
0002d8  8be01920  mul.f.rn r1, r19, r1
0002dc  0b612320  mul.f.rn r2, r6, r2
0002e0  6343bffc  loadli.w r6,  -420(r30)
0002e4  0b648d20  mul.f.rn r8, r26, r8
0002e8  8be49a20  mul.f.rn r9, r21, r9
0002ec  0b65ab20  mul.f.rn r10, r22, r10
0002f0  8be5bb20  mul.f.rn r11, r23, r11
0002f4  ab0a807f  lui r21, 522240
0002f8  8b613320  mul.f.rn r3, r6, r3
0002fc  63036ffd  loadli.w r6,  -336(r30)
000300  b3900000  float2bfloat.rn r1, r1
000304  0b624320  mul.f.rn r4, r6, r4
000308  63434ffd  loadli.w r6,  -348(r30)
00030c  33110100  float2bfloat.rn r2, r2
000310  8b625320  mul.f.rn r5, r6, r5
000314  63433ffd  loadli.w r6,  -356(r30)
000318  b3910100  float2bfloat.rn r3, r3
00031c  0b631311  add.f.rn r6, r6, r17
000320  0b636620  mul.f.rn r6, r12, r6
000324  63462ffd  loadli.w r12,  -364(r30)
000328  8b637620  mul.f.rn r7, r12, r7
00032c  63063ffd  loadli.w r12,  -360(r30)
000330  0b661611  add.f.rn r12, r12, r17
000334  e3089ffd  loadli.w r17,  -312(r30)
000338  0be6c820  mul.f.rn r12, r17, r12
00033c  e3088ffd  loadli.w r17,  -320(r30)
000340  8be6d820  mul.f.rn r13, r17, r13
000344  e3487ffd  loadli.w r17,  -324(r30)
000348  0be7e820  mul.f.rn r14, r17, r14
00034c  e3486ffd  loadli.w r17,  -332(r30)
000350  8be7f820  mul.f.rn r15, r17, r15
000354  e3485ffd  loadli.w r17,  -340(r30)
000358  0be80821  mul.f.rn r16, r17, r16
00035c  e348affd  loadli.w r17,  -300(r30)
000360  8b181911  add.s r17, r18, r17
000364  73902800  store.h r2, 0(r17)
000368  33110200  float2bfloat.rn r2, r4
00036c  73913800  store.h r3, 2(r17)
000370  b3910200  float2bfloat.rn r3, r5
000374  739f1800  store.h r1, 30(r17)
000378  73922800  store.h r2, 4(r17)
00037c  33110300  float2bfloat.rn r2, r6
000380  73933800  store.h r3, 6(r17)
000384  b3910300  float2bfloat.rn r3, r7
000388  73942800  store.h r2, 8(r17)
00038c  33110400  float2bfloat.rn r2, r8
000390  73953800  store.h r3, 10(r17)
000394  b3910400  float2bfloat.rn r3, r9
000398  73962800  store.h r2, 12(r17)
00039c  33110500  float2bfloat.rn r2, r10
0003a0  73973800  store.h r3, 14(r17)
0003a4  b3910500  float2bfloat.rn r3, r11
0003a8  73982800  store.h r2, 16(r17)
0003ac  33110600  float2bfloat.rn r2, r12
0003b0  73993800  store.h r3, 18(r17)
0003b4  b3910600  float2bfloat.rn r3, r13
0003b8  739a2800  store.h r2, 20(r17)
0003bc  33110700  float2bfloat.rn r2, r14
0003c0  739b3800  store.h r3, 22(r17)
0003c4  b3910700  float2bfloat.rn r3, r15
0003c8  739c2800  store.h r2, 24(r17)
0003cc  33110800  float2bfloat.rn r2, r16
0003d0  739d3800  store.h r3, 26(r17)
0003d4  9f014000  addli r3, zero, 32
0003d8  739e2800  store.h r2, 28(r17)
0003dc  1f010000  addli r2, zero, 0
0003e0  00a00000  mfence { lm }
0003e4  e300bffd  loadli.w r1,  -296(r30)
0003e8  e349fffb  loadli.w r19,  -516(r30)
0003ec  630afffb  loadli.w r20,  -520(r30)
0003f0  634edffd  loadli.w r28,  -276(r30)
0003f4  9b801000  andi r1, r1, 1
0003f8  b7d600fe  beq r1, zero, -588
0003fc  c2100fc2  vload_mask16.mz vr1{mr1}, 1536(r30)
000400  674d3ffc  storeli.w r3, -300(r30)
000404  eb310ff0  load.hu r3, -256(r30)
000408  9f180000  addli r17, zero, 1
00040c  6b322ff0  load.hu r4, -254(r30)
000410  eb30cff1  load.hu r1, -228(r30)
000414  e70d2ffc  storeli.w r2, -296(r30)
000418  6b31aff1  load.hu r2, -230(r30)
00041c  eb324ff0  load.hu r5, -252(r30)
000420  6b336ff0  load.hu r6, -250(r30)
000424  eb338ff0  load.hu r7, -248(r30)
000428  6b34aff0  load.hu r8, -246(r30)
00042c  eb34cff0  load.hu r9, -244(r30)
000430  6b35eff0  load.hu r10, -242(r30)
000434  eb350ff1  load.hu r11, -240(r30)
000438  6b362ff1  load.hu r12, -238(r30)
00043c  eb364ff1  load.hu r13, -236(r30)
000440  6b376ff1  load.hu r14, -234(r30)
000444  eb378ff1  load.hu r15, -232(r30)
000448  6b38eff1  load.hu r16, -226(r30)
00044c  7e8108e0  vmmov mr2, r17
000450  b3910118  bfloat2float.rn r3, r3
000454  33110118  bfloat2float.rn r2, r2
000458  b3900018  bfloat2float.rn r1, r1
00045c  12301002  vadd.s.mz vr0{mr1}, zero, vr1
000460  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000464  b3110218  bfloat2float.rn r3, r4
000468  1f220000  addli r4, zero, 2
00046c  fe0102e0  vmmov mr3, r4
000470  1f420000  addli r4, zero, 4
000474  6aa00136  vor.u.mh vr0{mr3}, r3, vr0
000478  b3910218  bfloat2float.rn r3, r5
00047c  7e0002e0  vmmov mr0, r4
000480  1f021000  addli r4, zero, 8
000484  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
000488  b3110318  bfloat2float.rn r3, r6
00048c  7e0002e0  vmmov mr0, r4
000490  1f022000  addli r4, zero, 16
000494  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
000498  b3910318  bfloat2float.rn r3, r7
00049c  7e0002e0  vmmov mr0, r4
0004a0  1f024000  addli r4, zero, 32
0004a4  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0004a8  b3110418  bfloat2float.rn r3, r8
0004ac  7e0002e0  vmmov mr0, r4
0004b0  1f028000  addli r4, zero, 64
0004b4  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0004b8  b3910418  bfloat2float.rn r3, r9
0004bc  7e0002e0  vmmov mr0, r4
0004c0  1f020001  addli r4, zero, 128
0004c4  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0004c8  b3110518  bfloat2float.rn r3, r10
0004cc  7e0002e0  vmmov mr0, r4
0004d0  1f020002  addli r4, zero, 256
0004d4  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0004d8  b3910518  bfloat2float.rn r3, r11
0004dc  7e0002e0  vmmov mr0, r4
0004e0  1f020004  addli r4, zero, 512
0004e4  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0004e8  b3110618  bfloat2float.rn r3, r12
0004ec  7e0002e0  vmmov mr0, r4
0004f0  1f020008  addli r4, zero, 1024
0004f4  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0004f8  b3910618  bfloat2float.rn r3, r13
0004fc  7e0002e0  vmmov mr0, r4
000500  1f020010  addli r4, zero, 2048
000504  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
000508  b3110718  bfloat2float.rn r3, r14
00050c  7e0002e0  vmmov mr0, r4
000510  1f020020  addli r4, zero, 4096
000514  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
000518  b3910718  bfloat2float.rn r3, r15
00051c  7e0002e0  vmmov mr0, r4
000520  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
000524  9f010040  addli r3, zero, 8192
000528  7e8001e0  vmmov mr0, r3
00052c  6a200130  vor.u.mh vr0{mr0}, r2, vr0
000530  2b410000  lui r2, 4
000534  7e0001e0  vmmov mr0, r2
000538  2b810000  lui r2, 8
00053c  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000540  b3100818  bfloat2float.rn r1, r16
000544  7e0001e0  vmmov mr0, r2
000548  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
00054c  eb300ff4  load.hu r1, -192(r30)
000550  6b312ff4  load.hu r2, -190(r30)
000554  eb314ff4  load.hu r3, -188(r30)
000558  6b326ff4  load.hu r4, -186(r30)
00055c  eb328ff4  load.hu r5, -184(r30)
000560  6b33aff4  load.hu r6, -182(r30)
000564  eb33cff4  load.hu r7, -180(r30)
000568  6b34eff4  load.hu r8, -178(r30)
00056c  eb340ff5  load.hu r9, -176(r30)
000570  6b352ff5  load.hu r10, -174(r30)
000574  eb354ff5  load.hu r11, -172(r30)
000578  6b366ff5  load.hu r12, -170(r30)
00057c  eb368ff5  load.hu r13, -168(r30)
000580  6b37aff5  load.hu r14, -166(r30)
000584  eb37cff5  load.hu r15, -164(r30)
000588  6b38eff5  load.hu r16, -162(r30)
00058c  b3900018  bfloat2float.rn r1, r1
000590  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000594  b3100118  bfloat2float.rn r1, r2
000598  1f410000  addli r2, zero, 4
00059c  7e0101e0  vmmov mr2, r2
0005a0  1f011000  addli r2, zero, 8
0005a4  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0005a8  b3900118  bfloat2float.rn r1, r3
0005ac  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0005b0  b3100218  bfloat2float.rn r1, r4
0005b4  7e0101e0  vmmov mr2, r2
0005b8  1f012000  addli r2, zero, 16
0005bc  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0005c0  b3900218  bfloat2float.rn r1, r5
0005c4  7e0101e0  vmmov mr2, r2
0005c8  1f014000  addli r2, zero, 32
0005cc  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0005d0  b3100318  bfloat2float.rn r1, r6
0005d4  7e0101e0  vmmov mr2, r2
0005d8  1f018000  addli r2, zero, 64
0005dc  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0005e0  b3900318  bfloat2float.rn r1, r7
0005e4  7e0101e0  vmmov mr2, r2
0005e8  1f010001  addli r2, zero, 128
0005ec  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0005f0  b3100418  bfloat2float.rn r1, r8
0005f4  7e0101e0  vmmov mr2, r2
0005f8  1f010002  addli r2, zero, 256
0005fc  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000600  b3900418  bfloat2float.rn r1, r9
000604  7e0101e0  vmmov mr2, r2
000608  1f010004  addli r2, zero, 512
00060c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000610  b3100518  bfloat2float.rn r1, r10
000614  7e0101e0  vmmov mr2, r2
000618  1f010008  addli r2, zero, 1024
00061c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000620  b3900518  bfloat2float.rn r1, r11
000624  7e0101e0  vmmov mr2, r2
000628  1f010010  addli r2, zero, 2048
00062c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000630  b3100618  bfloat2float.rn r1, r12
000634  7e0101e0  vmmov mr2, r2
000638  1f010020  addli r2, zero, 4096
00063c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000640  b3900618  bfloat2float.rn r1, r13
000644  7e0101e0  vmmov mr2, r2
000648  1f010040  addli r2, zero, 8192
00064c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000650  b3100718  bfloat2float.rn r1, r14
000654  7e0101e0  vmmov mr2, r2
000658  2b410000  lui r2, 4
00065c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000660  b3900718  bfloat2float.rn r1, r15
000664  7e0101e0  vmmov mr2, r2
000668  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
00066c  b3100818  bfloat2float.rn r1, r16
000670  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000674  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
000678  46180fe2  vstore_mask16.mz vr0{mr1}, 1920(r30)
00067c  00a00000  mfence { lm }
000680  e3000fff  loadli.w r1,  -128(r30)
000684  63480fff  loadli.w r16,  -124(r30)
000688  e3071fff  loadli.w r15,  -120(r30)
00068c  63471fff  loadli.w r14,  -116(r30)
000690  e3062fff  loadli.w r13,  -112(r30)
000694  63462fff  loadli.w r12,  -108(r30)
000698  e3053fff  loadli.w r11,  -104(r30)
00069c  63453fff  loadli.w r10,  -100(r30)
0006a0  e3044fff  loadli.w r9,  -96(r30)
0006a4  63444fff  loadli.w r8,  -92(r30)
0006a8  e3035fff  loadli.w r7,  -88(r30)
0006ac  63435fff  loadli.w r6,  -84(r30)
0006b0  e3026fff  loadli.w r5,  -80(r30)
0006b4  63426fff  loadli.w r4,  -76(r30)
0006b8  e3017fff  loadli.w r3,  -72(r30)
0006bc  17814001  and r2, r1, r20
0006c0  93882a04  setlt.u r17, r21, r2
0006c4  63417fff  loadli.w r2,  -68(r30)
0006c8  3be00800  bneq r17, zero, 24
0006cc  9bc80001  srli r17, r1, 16
0006d0  9b881800  andi r17, r17, 1
0006d4  8b901011  add.s r1, r1, r17
0006d8  8b903011  add.s r1, r1, r19
0006dc  5b010000  j 8
0006e0  97909001  or r1, r1, r25
0006e4  97084801  and r17, r16, r20
0006e8  93881a05  setlt.u r17, r21, r17
0006ec  3be00800  bneq r17, zero, 24
0006f0  9b480801  srli r17, r16, 16
0006f4  9b881800  andi r17, r17, 1
0006f8  0b181811  add.s r16, r16, r17
0006fc  0b1b3811  add.s r22, r16, r19
000700  5b010000  j 8
000704  171b9801  or r22, r16, r25
000708  17884701  and r16, r15, r20
00070c  13880a05  setlt.u r16, r21, r16
000710  3b600800  bneq r16, zero, 24
000714  1bc80701  srli r16, r15, 16
000718  1b081800  andi r16, r16, 1
00071c  8b970711  add.s r15, r15, r16
000720  0b9d3711  add.s r26, r15, r19
000724  5b010000  j 8
000728  179d9701  or r26, r15, r25
00072c  97074701  and r15, r14, r20
000730  9387fa04  setlt.u r15, r21, r15
000734  3be00700  bneq r15, zero, 24
000738  9b470701  srli r15, r14, 16
00073c  9b871700  andi r15, r15, 1
000740  0b17f710  add.s r14, r14, r15
000744  0b1c3711  add.s r24, r14, r19
000748  5b010000  j 8
00074c  171c9701  or r24, r14, r25
000750  17874601  and r14, r13, r20
000754  1387ea04  setlt.u r14, r21, r14
000758  3b600700  bneq r14, zero, 24
00075c  1bc70601  srli r14, r13, 16
000760  1b071700  andi r14, r14, 1
000764  8b96e610  add.s r13, r13, r14
000768  8b9b3611  add.s r23, r13, r19
00076c  5b010000  j 8
000770  979b9601  or r23, r13, r25
000774  97064601  and r13, r12, r20
000778  9386da04  setlt.u r13, r21, r13
00077c  3be00600  bneq r13, zero, 24
000780  9b460601  srli r13, r12, 16
000784  9b861600  andi r13, r13, 1
000788  0b16d610  add.s r12, r12, r13
00078c  0b163611  add.s r12, r12, r19
000790  5b010000  j 8
000794  17169601  or r12, r12, r25
000798  6709cffc  storeli.w r12, -368(r30)
00079c  17864501  and r12, r11, r20
0007a0  1386ca04  setlt.u r12, r21, r12
0007a4  3b600600  bneq r12, zero, 24
0007a8  1bc60501  srli r12, r11, 16
0007ac  1b061600  andi r12, r12, 1
0007b0  8b95c510  add.s r11, r11, r12
0007b4  8b953511  add.s r11, r11, r19
0007b8  5b010000  j 8
0007bc  97959501  or r11, r11, r25
0007c0  6748bffc  storeli.w r11, -380(r30)
0007c4  97054501  and r11, r10, r20
0007c8  9385ba04  setlt.u r11, r21, r11
0007cc  3be00500  bneq r11, zero, 24
0007d0  9b450501  srli r11, r10, 16
0007d4  9b851500  andi r11, r11, 1
0007d8  0b15b510  add.s r10, r10, r11
0007dc  0b153511  add.s r10, r10, r19
0007e0  5b010000  j 8
0007e4  17159501  or r10, r10, r25
0007e8  e707affc  storeli.w r10, -392(r30)
0007ec  17854401  and r10, r9, r20
0007f0  1385aa04  setlt.u r10, r21, r10
0007f4  3b600500  bneq r10, zero, 24
0007f8  1bc50401  srli r10, r9, 16
0007fc  1b051500  andi r10, r10, 1
000800  8b94a410  add.s r9, r9, r10
000804  8b943411  add.s r9, r9, r19
000808  5b010000  j 8
00080c  97949401  or r9, r9, r25
000810  67089ffc  storeli.w r9, -384(r30)
000814  97044401  and r9, r8, r20
000818  93849a04  setlt.u r9, r21, r9
00081c  3be00400  bneq r9, zero, 24
000820  9b440401  srli r9, r8, 16
000824  9b841400  andi r9, r9, 1
000828  0b149410  add.s r8, r8, r9
00082c  0b143411  add.s r8, r8, r19
000830  5b010000  j 8
000834  17149401  or r8, r8, r25
000838  e7488ffc  storeli.w r8, -372(r30)
00083c  17844301  and r8, r7, r20
000840  13848a04  setlt.u r8, r21, r8
000844  3b600400  bneq r8, zero, 24
000848  1bc40301  srli r8, r7, 16
00084c  1b041400  andi r8, r8, 1
000850  8b938310  add.s r7, r7, r8
000854  8b933311  add.s r7, r7, r19
000858  5b010000  j 8
00085c  97939301  or r7, r7, r25
000860  e7097ffc  storeli.w r7, -360(r30)
000864  97034301  and r7, r6, r20
000868  93837a04  setlt.u r7, r21, r7
00086c  3be00300  bneq r7, zero, 24
000870  9b430301  srli r7, r6, 16
000874  9b831300  andi r7, r7, 1
000878  0b137310  add.s r6, r6, r7
00087c  0b133311  add.s r6, r6, r19
000880  5b010000  j 8
000884  17139301  or r6, r6, r25
000888  670a6ffc  storeli.w r6, -352(r30)
00088c  17834201  and r6, r5, r20
000890  13836a04  setlt.u r6, r21, r6
000894  3b600300  bneq r6, zero, 24
000898  1bc30201  srli r6, r5, 16
00089c  1b031300  andi r6, r6, 1
0008a0  8b926210  add.s r5, r5, r6
0008a4  8b923211  add.s r5, r5, r19
0008a8  5b010000  j 8
0008ac  97929201  or r5, r5, r25
0008b0  e74a5ffc  storeli.w r5, -340(r30)
0008b4  97024201  and r5, r4, r20
0008b8  93825a04  setlt.u r5, r21, r5
0008bc  3be00200  bneq r5, zero, 24
0008c0  9b420201  srli r5, r4, 16
0008c4  9b821200  andi r5, r5, 1
0008c8  0b125210  add.s r4, r4, r5
0008cc  0b123211  add.s r4, r4, r19
0008d0  5b010000  j 8
0008d4  17129201  or r4, r4, r25
0008d8  674b4ffc  storeli.w r4, -332(r30)
0008dc  17824101  and r4, r3, r20
0008e0  13824a04  setlt.u r4, r21, r4
0008e4  3b600200  bneq r4, zero, 24
0008e8  1bc20101  srli r4, r3, 16
0008ec  1b021200  andi r4, r4, 1
0008f0  8b914110  add.s r3, r3, r4
0008f4  8b913111  add.s r3, r3, r19
0008f8  5b010000  j 8
0008fc  97919101  or r3, r3, r25
000900  670c3ffc  storeli.w r3, -320(r30)
000904  97014101  and r3, r2, r20
000908  93813a04  setlt.u r3, r21, r3
00090c  3be00100  bneq r3, zero, 24
000910  9b410101  srli r3, r2, 16
000914  9b811100  andi r3, r3, 1
000918  0b113110  add.s r2, r2, r3
00091c  0b113111  add.s r2, r2, r19
000920  5b010000  j 8
000924  17119101  or r2, r2, r25
000928  e34cbffd  loadli.w r25,  -292(r30)
00092c  9780b001  and r1, r1, r27
000930  e30acffd  loadli.w r21,  -288(r30)
000934  e70c2ffc  storeli.w r2, -312(r30)
000938  6b518fef  load.d r[3:4], -264(r30)
00093c  1f010000  addli r2, zero, 0
000940  e74c1ffc  storeli.w r1, -308(r30)
000944  8be09021  mul.f.rn r1, r1, r25
000948  733c2fee  store.d r[3:4], -264(r30)
00094c  8be90060  abs.f r19, r1
000950  0be25921  mul.f.rn r4, r19, r21
000954  8f230208  .word 0x0802238f
000958  1bb29000  slli r4, r1, 9
00095c  13030200  seteq r6, r4, zero
000960  0f922320  .word 0x2023920f
000964  9bc37001  srli r7, r1, 23
000968  93e00004  setlt.f r1, r1, zero
00096c  9b83f30f  andi r7, r7, 255
000970  9bf3f30f  setlti r7, r7, 255
000974  17936300  or r6, r7, r6
000978  178a6000  and r20, r1, r6
00097c  d7660200  jal 4916
000980  8f300110  .word 0x1001308f
000984  e301dffd  loadli.w r3,  -280(r30)
000988  1f010e00  addli r2, r28, 0
00098c  0be20958  neg.f r4, r19
000990  0be13050  fmac.f.rn r2, r1, r3
000994  e341cffd  loadli.w r3,  -284(r30)
000998  8b611150  fmac.f.rn r3, r2, r1
00099c  6301effd  loadli.w r2,  -272(r30)
0009a0  0be11150  fmac.f.rn r2, r3, r1
0009a4  e341effd  loadli.w r3,  -268(r30)
0009a8  8b611150  fmac.f.rn r3, r2, r1
0009ac  0be14920  mul.f.rn r2, r19, r4
0009b0  8be10158  neg.f r3, r3
0009b4  0f010100  exp.f.rn r2, r2
0009b8  8be03020  mul.f.rn r1, r1, r3
0009bc  ab01803f  lui r3, 260096
0009c0  8be12050  fmac.f.rn r3, r1, r2
0009c4  37200a00  beq r20, zero, 8
0009c8  8be10158  neg.f r3, r3
0009cc  9700bb01  and r1, r22, r27
0009d0  670d3ffc  storeli.w r3, -304(r30)
0009d4  e74b1ffc  storeli.w r1, -324(r30)
0009d8  8be09021  mul.f.rn r1, r1, r25
0009dc  8be90060  abs.f r19, r1
0009e0  1bb29000  slli r4, r1, 9
0009e4  0be15921  mul.f.rn r2, r19, r21
0009e8  13030200  seteq r6, r4, zero
0009ec  8f230108  .word 0x0801238f
0009f0  6b518fef  load.d r[3:4], -264(r30)
0009f4  0f922320  .word 0x2023920f
0009f8  9bc37001  srli r7, r1, 23
0009fc  93e00004  setlt.f r1, r1, zero
000a00  9b83f30f  andi r7, r7, 255
000a04  9bf3f30f  setlti r7, r7, 255
000a08  17936300  or r6, r7, r6
000a0c  178a6000  and r20, r1, r6
000a10  d7660200  jal 4916
000a14  8f300110  .word 0x1001308f
000a18  630bdffd  loadli.w r22,  -280(r30)
000a1c  1f010e00  addli r2, r28, 0
000a20  e341cffd  loadli.w r3,  -284(r30)
000a24  0be20958  neg.f r4, r19
000a28  0be16051  fmac.f.rn r2, r1, r22
000a2c  8b611150  fmac.f.rn r3, r2, r1
000a30  6301effd  loadli.w r2,  -272(r30)
000a34  0be11150  fmac.f.rn r2, r3, r1
000a38  e341effd  loadli.w r3,  -268(r30)
000a3c  8b611150  fmac.f.rn r3, r2, r1
000a40  0be14920  mul.f.rn r2, r19, r4
000a44  8be10158  neg.f r3, r3
000a48  0f010100  exp.f.rn r2, r2
000a4c  8be03020  mul.f.rn r1, r1, r3
000a50  ab01803f  lui r3, 260096
000a54  8be12050  fmac.f.rn r3, r1, r2
000a58  37200a00  beq r20, zero, 8
000a5c  8be10158  neg.f r3, r3
000a60  9700bd01  and r1, r26, r27
000a64  674c3ffc  storeli.w r3, -316(r30)
000a68  670b1ffc  storeli.w r1, -336(r30)
000a6c  8be09021  mul.f.rn r1, r1, r25
000a70  8be90060  abs.f r19, r1
000a74  1bb29000  slli r4, r1, 9
000a78  0be15921  mul.f.rn r2, r19, r21
000a7c  13030200  seteq r6, r4, zero
000a80  8f230108  .word 0x0801238f
000a84  6b518fef  load.d r[3:4], -264(r30)
000a88  0f922320  .word 0x2023920f
000a8c  9bc37001  srli r7, r1, 23
000a90  93e00004  setlt.f r1, r1, zero
000a94  9b83f30f  andi r7, r7, 255
000a98  9bf3f30f  setlti r7, r7, 255
000a9c  17936300  or r6, r7, r6
000aa0  178a6000  and r20, r1, r6
000aa4  d7660200  jal 4916
000aa8  8f300110  .word 0x1001308f
000aac  1f010e00  addli r2, r28, 0
000ab0  634dcffd  loadli.w r26,  -284(r30)
000ab4  0be20958  neg.f r4, r19
000ab8  9f010d00  addli r3, r26, 0
000abc  0be16051  fmac.f.rn r2, r1, r22
000ac0  8b611150  fmac.f.rn r3, r2, r1
000ac4  6301effd  loadli.w r2,  -272(r30)
000ac8  0be11150  fmac.f.rn r2, r3, r1
000acc  e341effd  loadli.w r3,  -268(r30)
000ad0  8b611150  fmac.f.rn r3, r2, r1
000ad4  0be14920  mul.f.rn r2, r19, r4
000ad8  8be10158  neg.f r3, r3
000adc  0f010100  exp.f.rn r2, r2
000ae0  8be03020  mul.f.rn r1, r1, r3
000ae4  ab01803f  lui r3, 260096
000ae8  8be12050  fmac.f.rn r3, r1, r2
000aec  37200a00  beq r20, zero, 8
000af0  8be10158  neg.f r3, r3
000af4  9700bc01  and r1, r24, r27
000af8  e70b3ffc  storeli.w r3, -328(r30)
000afc  674a1ffc  storeli.w r1, -348(r30)
000b00  8be09021  mul.f.rn r1, r1, r25
000b04  8be90060  abs.f r19, r1
000b08  1bb29000  slli r4, r1, 9
000b0c  0be15921  mul.f.rn r2, r19, r21
000b10  13030200  seteq r6, r4, zero
000b14  8f230108  .word 0x0801238f
000b18  6b518fef  load.d r[3:4], -264(r30)
000b1c  0f922320  .word 0x2023920f
000b20  9bc37001  srli r7, r1, 23
000b24  93e00004  setlt.f r1, r1, zero
000b28  9b83f30f  andi r7, r7, 255
000b2c  9bf3f30f  setlti r7, r7, 255
000b30  17936300  or r6, r7, r6
000b34  178a6000  and r20, r1, r6
000b38  d7660200  jal 4916
000b3c  8f300110  .word 0x1001308f
000b40  1f010e00  addli r2, r28, 0
000b44  9f010d00  addli r3, r26, 0
000b48  630ceffd  loadli.w r24,  -272(r30)
000b4c  0be20958  neg.f r4, r19
000b50  0be16051  fmac.f.rn r2, r1, r22
000b54  8b611150  fmac.f.rn r3, r2, r1
000b58  1f010c00  addli r2, r24, 0
000b5c  0be11150  fmac.f.rn r2, r3, r1
000b60  e341effd  loadli.w r3,  -268(r30)
000b64  8b611150  fmac.f.rn r3, r2, r1
000b68  0be14920  mul.f.rn r2, r19, r4
000b6c  8be10158  neg.f r3, r3
000b70  0f010100  exp.f.rn r2, r2
000b74  8be03020  mul.f.rn r1, r1, r3
000b78  ab01803f  lui r3, 260096
000b7c  8be12050  fmac.f.rn r3, r1, r2
000b80  37200a00  beq r20, zero, 8
000b84  8be10158  neg.f r3, r3
000b88  9780bb01  and r1, r23, r27
000b8c  e70a3ffc  storeli.w r3, -344(r30)
000b90  67491ffc  storeli.w r1, -364(r30)
000b94  8be09021  mul.f.rn r1, r1, r25
000b98  8be90060  abs.f r19, r1
000b9c  1bb29000  slli r4, r1, 9
000ba0  0be15921  mul.f.rn r2, r19, r21
000ba4  13030200  seteq r6, r4, zero
000ba8  8f230108  .word 0x0801238f
000bac  6b518fef  load.d r[3:4], -264(r30)
000bb0  0f922320  .word 0x2023920f
000bb4  9bc37001  srli r7, r1, 23
000bb8  93e00004  setlt.f r1, r1, zero
000bbc  9b83f30f  andi r7, r7, 255
000bc0  9bf3f30f  setlti r7, r7, 255
000bc4  17936300  or r6, r7, r6
000bc8  178a6000  and r20, r1, r6
000bcc  d7660200  jal 4916
000bd0  8f300110  .word 0x1001308f
000bd4  1f010e00  addli r2, r28, 0
000bd8  9f010d00  addli r3, r26, 0
000bdc  e34beffd  loadli.w r23,  -268(r30)
000be0  0be20958  neg.f r4, r19
000be4  0be16051  fmac.f.rn r2, r1, r22
000be8  8b611150  fmac.f.rn r3, r2, r1
000bec  1f010c00  addli r2, r24, 0
000bf0  0be11150  fmac.f.rn r2, r3, r1
000bf4  9f810b00  addli r3, r23, 0
000bf8  8b611150  fmac.f.rn r3, r2, r1
000bfc  0be14920  mul.f.rn r2, r19, r4
000c00  8be10158  neg.f r3, r3
000c04  0f010100  exp.f.rn r2, r2
000c08  8be03020  mul.f.rn r1, r1, r3
000c0c  ab01803f  lui r3, 260096
000c10  8be12050  fmac.f.rn r3, r1, r2
000c14  37200a00  beq r20, zero, 8
000c18  8be10158  neg.f r3, r3
000c1c  e3002ffd  loadli.w r1,  -368(r30)
000c20  e7493ffc  storeli.w r3, -356(r30)
000c24  9780b001  and r1, r1, r27
000c28  e7081ffc  storeli.w r1, -376(r30)
000c2c  8be09021  mul.f.rn r1, r1, r25
000c30  8be90060  abs.f r19, r1
000c34  1bb29000  slli r4, r1, 9
000c38  0be15921  mul.f.rn r2, r19, r21
000c3c  13030200  seteq r6, r4, zero
000c40  8f230108  .word 0x0801238f
000c44  6b518fef  load.d r[3:4], -264(r30)
000c48  0f922320  .word 0x2023920f
000c4c  9bc37001  srli r7, r1, 23
000c50  93e00004  setlt.f r1, r1, zero
000c54  9b83f30f  andi r7, r7, 255
000c58  9bf3f30f  setlti r7, r7, 255
000c5c  17936300  or r6, r7, r6
000c60  178a6000  and r20, r1, r6
000c64  d7660200  jal 4916
000c68  8f300110  .word 0x1001308f
000c6c  1f010e00  addli r2, r28, 0
000c70  9f010d00  addli r3, r26, 0
000c74  0be20958  neg.f r4, r19
000c78  0be16051  fmac.f.rn r2, r1, r22
000c7c  8b611150  fmac.f.rn r3, r2, r1
000c80  1f010c00  addli r2, r24, 0
000c84  0be11150  fmac.f.rn r2, r3, r1
000c88  9f810b00  addli r3, r23, 0
000c8c  8b611150  fmac.f.rn r3, r2, r1
000c90  0be14920  mul.f.rn r2, r19, r4
000c94  8be10158  neg.f r3, r3
000c98  0f010100  exp.f.rn r2, r2
000c9c  8be03020  mul.f.rn r1, r1, r3
000ca0  ab01803f  lui r3, 260096
000ca4  8be12050  fmac.f.rn r3, r1, r2
000ca8  37200a00  beq r20, zero, 8
000cac  8be10158  neg.f r3, r3
000cb0  e3400ffd  loadli.w r1,  -380(r30)
000cb4  67093ffc  storeli.w r3, -368(r30)
000cb8  9780b001  and r1, r1, r27
000cbc  e7471ffc  storeli.w r1, -388(r30)
000cc0  8be09021  mul.f.rn r1, r1, r25
000cc4  8be90060  abs.f r19, r1
000cc8  1bb29000  slli r4, r1, 9
000ccc  0be15921  mul.f.rn r2, r19, r21
000cd0  13030200  seteq r6, r4, zero
000cd4  8f230108  .word 0x0801238f
000cd8  6b518fef  load.d r[3:4], -264(r30)
000cdc  0f922320  .word 0x2023920f
000ce0  9bc37001  srli r7, r1, 23
000ce4  93e00004  setlt.f r1, r1, zero
000ce8  9b83f30f  andi r7, r7, 255
000cec  9bf3f30f  setlti r7, r7, 255
000cf0  17936300  or r6, r7, r6
000cf4  178a6000  and r20, r1, r6
000cf8  d7660200  jal 4916
000cfc  8f300110  .word 0x1001308f
000d00  1f010e00  addli r2, r28, 0
000d04  9f010d00  addli r3, r26, 0
000d08  0be20958  neg.f r4, r19
000d0c  0be16051  fmac.f.rn r2, r1, r22
000d10  8b611150  fmac.f.rn r3, r2, r1
000d14  1f010c00  addli r2, r24, 0
000d18  0be11150  fmac.f.rn r2, r3, r1
000d1c  9f810b00  addli r3, r23, 0
000d20  8b611150  fmac.f.rn r3, r2, r1
000d24  0be14920  mul.f.rn r2, r19, r4
000d28  8be10158  neg.f r3, r3
000d2c  0f010100  exp.f.rn r2, r2
000d30  8be03020  mul.f.rn r1, r1, r3
000d34  ab01803f  lui r3, 260096
000d38  8be12050  fmac.f.rn r3, r1, r2
000d3c  37200a00  beq r20, zero, 8
000d40  8be10158  neg.f r3, r3
000d44  e300fffc  loadli.w r1,  -392(r30)
000d48  67483ffc  storeli.w r3, -380(r30)
000d4c  9780b001  and r1, r1, r27
000d50  67471ffc  storeli.w r1, -396(r30)
000d54  8be09021  mul.f.rn r1, r1, r25
000d58  8be90060  abs.f r19, r1
000d5c  1bb29000  slli r4, r1, 9
000d60  0be15921  mul.f.rn r2, r19, r21
000d64  13030200  seteq r6, r4, zero
000d68  8f230108  .word 0x0801238f
000d6c  6b518fef  load.d r[3:4], -264(r30)
000d70  0f922320  .word 0x2023920f
000d74  9bc37001  srli r7, r1, 23
000d78  93e00004  setlt.f r1, r1, zero
000d7c  9b83f30f  andi r7, r7, 255
000d80  9bf3f30f  setlti r7, r7, 255
000d84  17936300  or r6, r7, r6
000d88  178a6000  and r20, r1, r6
000d8c  d7660200  jal 4916
000d90  8f300110  .word 0x1001308f
000d94  1f010e00  addli r2, r28, 0
000d98  9f010d00  addli r3, r26, 0
000d9c  0be20958  neg.f r4, r19
000da0  0be16051  fmac.f.rn r2, r1, r22
000da4  8b611150  fmac.f.rn r3, r2, r1
000da8  1f010c00  addli r2, r24, 0
000dac  0be11150  fmac.f.rn r2, r3, r1
000db0  9f810b00  addli r3, r23, 0
000db4  8b611150  fmac.f.rn r3, r2, r1
000db8  0be14920  mul.f.rn r2, r19, r4
000dbc  8be10158  neg.f r3, r3
000dc0  0f010100  exp.f.rn r2, r2
000dc4  8be03020  mul.f.rn r1, r1, r3
000dc8  ab01803f  lui r3, 260096
000dcc  8be12050  fmac.f.rn r3, r1, r2
000dd0  37200a00  beq r20, zero, 8
000dd4  8be10158  neg.f r3, r3
000dd8  e3000ffd  loadli.w r1,  -384(r30)
000ddc  e7073ffc  storeli.w r3, -392(r30)
000de0  9780b001  and r1, r1, r27
000de4  67071ffc  storeli.w r1, -400(r30)
000de8  8be09021  mul.f.rn r1, r1, r25
000dec  8be90060  abs.f r19, r1
000df0  1bb29000  slli r4, r1, 9
000df4  0be15921  mul.f.rn r2, r19, r21
000df8  13030200  seteq r6, r4, zero
000dfc  8f230108  .word 0x0801238f
000e00  6b518fef  load.d r[3:4], -264(r30)
000e04  0f922320  .word 0x2023920f
000e08  9bc37001  srli r7, r1, 23
000e0c  93e00004  setlt.f r1, r1, zero
000e10  9b83f30f  andi r7, r7, 255
000e14  9bf3f30f  setlti r7, r7, 255
000e18  17936300  or r6, r7, r6
000e1c  178a6000  and r20, r1, r6
000e20  d7660200  jal 4916
000e24  8f300110  .word 0x1001308f
000e28  1f010e00  addli r2, r28, 0
000e2c  9f010d00  addli r3, r26, 0
000e30  0be20958  neg.f r4, r19
000e34  0be16051  fmac.f.rn r2, r1, r22
000e38  8b611150  fmac.f.rn r3, r2, r1
000e3c  1f010c00  addli r2, r24, 0
000e40  0be11150  fmac.f.rn r2, r3, r1
000e44  9f810b00  addli r3, r23, 0
000e48  8b611150  fmac.f.rn r3, r2, r1
000e4c  0be14920  mul.f.rn r2, r19, r4
000e50  8be10158  neg.f r3, r3
000e54  0f010100  exp.f.rn r2, r2
000e58  8be03020  mul.f.rn r1, r1, r3
000e5c  ab01803f  lui r3, 260096
000e60  8be12050  fmac.f.rn r3, r1, r2
000e64  37200a00  beq r20, zero, 8
000e68  8be10158  neg.f r3, r3
000e6c  e3401ffd  loadli.w r1,  -372(r30)
000e70  67083ffc  storeli.w r3, -384(r30)
000e74  9780b001  and r1, r1, r27
000e78  e7461ffc  storeli.w r1, -404(r30)
000e7c  8be09021  mul.f.rn r1, r1, r25
000e80  8be90060  abs.f r19, r1
000e84  1bb29000  slli r4, r1, 9
000e88  0be15921  mul.f.rn r2, r19, r21
000e8c  13030200  seteq r6, r4, zero
000e90  8f230108  .word 0x0801238f
000e94  6b518fef  load.d r[3:4], -264(r30)
000e98  0f922320  .word 0x2023920f
000e9c  9bc37001  srli r7, r1, 23
000ea0  93e00004  setlt.f r1, r1, zero
000ea4  9b83f30f  andi r7, r7, 255
000ea8  9bf3f30f  setlti r7, r7, 255
000eac  17936300  or r6, r7, r6
000eb0  178a6000  and r20, r1, r6
000eb4  d7660200  jal 4916
000eb8  8f300110  .word 0x1001308f
000ebc  1f010e00  addli r2, r28, 0
000ec0  9f010d00  addli r3, r26, 0
000ec4  0be20958  neg.f r4, r19
000ec8  0be16051  fmac.f.rn r2, r1, r22
000ecc  8b611150  fmac.f.rn r3, r2, r1
000ed0  1f010c00  addli r2, r24, 0
000ed4  0be11150  fmac.f.rn r2, r3, r1
000ed8  9f810b00  addli r3, r23, 0
000edc  8b611150  fmac.f.rn r3, r2, r1
000ee0  0be14920  mul.f.rn r2, r19, r4
000ee4  8be10158  neg.f r3, r3
000ee8  0f010100  exp.f.rn r2, r2
000eec  8be03020  mul.f.rn r1, r1, r3
000ef0  ab01803f  lui r3, 260096
000ef4  8be12050  fmac.f.rn r3, r1, r2
000ef8  37200a00  beq r20, zero, 8
000efc  8be10158  neg.f r3, r3
000f00  e3003ffd  loadli.w r1,  -360(r30)
000f04  e7483ffc  storeli.w r3, -372(r30)
000f08  9780b001  and r1, r1, r27
000f0c  e7061ffc  storeli.w r1, -408(r30)
000f10  8be09021  mul.f.rn r1, r1, r25
000f14  8be90060  abs.f r19, r1
000f18  1bb29000  slli r4, r1, 9
000f1c  0be15921  mul.f.rn r2, r19, r21
000f20  13030200  seteq r6, r4, zero
000f24  8f230108  .word 0x0801238f
000f28  6b518fef  load.d r[3:4], -264(r30)
000f2c  0f922320  .word 0x2023920f
000f30  9bc37001  srli r7, r1, 23
000f34  93e00004  setlt.f r1, r1, zero
000f38  9b83f30f  andi r7, r7, 255
000f3c  9bf3f30f  setlti r7, r7, 255
000f40  17936300  or r6, r7, r6
000f44  178a6000  and r20, r1, r6
000f48  d7660200  jal 4916
000f4c  8f300110  .word 0x1001308f
000f50  1f010e00  addli r2, r28, 0
000f54  9f010d00  addli r3, r26, 0
000f58  0be20958  neg.f r4, r19
000f5c  0be16051  fmac.f.rn r2, r1, r22
000f60  8b611150  fmac.f.rn r3, r2, r1
000f64  1f010c00  addli r2, r24, 0
000f68  0be11150  fmac.f.rn r2, r3, r1
000f6c  9f810b00  addli r3, r23, 0
000f70  8b611150  fmac.f.rn r3, r2, r1
000f74  0be14920  mul.f.rn r2, r19, r4
000f78  8be10158  neg.f r3, r3
000f7c  0f010100  exp.f.rn r2, r2
000f80  8be03020  mul.f.rn r1, r1, r3
000f84  ab01803f  lui r3, 260096
000f88  8be12050  fmac.f.rn r3, r1, r2
000f8c  37200a00  beq r20, zero, 8
000f90  8be10158  neg.f r3, r3
000f94  e3004ffd  loadli.w r1,  -352(r30)
000f98  e7093ffc  storeli.w r3, -360(r30)
000f9c  9780b001  and r1, r1, r27
000fa0  67461ffc  storeli.w r1, -412(r30)
000fa4  8be09021  mul.f.rn r1, r1, r25
000fa8  8be90060  abs.f r19, r1
000fac  1bb29000  slli r4, r1, 9
000fb0  0be15921  mul.f.rn r2, r19, r21
000fb4  13030200  seteq r6, r4, zero
000fb8  8f230108  .word 0x0801238f
000fbc  6b518fef  load.d r[3:4], -264(r30)
000fc0  0f922320  .word 0x2023920f
000fc4  9bc37001  srli r7, r1, 23
000fc8  93e00004  setlt.f r1, r1, zero
000fcc  9b83f30f  andi r7, r7, 255
000fd0  9bf3f30f  setlti r7, r7, 255
000fd4  17936300  or r6, r7, r6
000fd8  178a6000  and r20, r1, r6
000fdc  d7660200  jal 4916
000fe0  8f300110  .word 0x1001308f
000fe4  1f010e00  addli r2, r28, 0
000fe8  9f010d00  addli r3, r26, 0
000fec  0be20958  neg.f r4, r19
000ff0  0be16051  fmac.f.rn r2, r1, r22
000ff4  8b611150  fmac.f.rn r3, r2, r1
000ff8  1f010c00  addli r2, r24, 0
000ffc  0be11150  fmac.f.rn r2, r3, r1
001000  9f810b00  addli r3, r23, 0
001004  8b611150  fmac.f.rn r3, r2, r1
001008  0be14920  mul.f.rn r2, r19, r4
00100c  8be10158  neg.f r3, r3
001010  0f010100  exp.f.rn r2, r2
001014  8be03020  mul.f.rn r1, r1, r3
001018  ab01803f  lui r3, 260096
00101c  8be12050  fmac.f.rn r3, r1, r2
001020  37200a00  beq r20, zero, 8
001024  8be10158  neg.f r3, r3
001028  e3405ffd  loadli.w r1,  -340(r30)
00102c  670a3ffc  storeli.w r3, -352(r30)
001030  9780b001  and r1, r1, r27
001034  e74a1ffc  storeli.w r1, -340(r30)
001038  8be09021  mul.f.rn r1, r1, r25
00103c  8be90060  abs.f r19, r1
001040  1bb29000  slli r4, r1, 9
001044  0be15921  mul.f.rn r2, r19, r21
001048  13030200  seteq r6, r4, zero
00104c  8f230108  .word 0x0801238f
001050  6b518fef  load.d r[3:4], -264(r30)
001054  0f922320  .word 0x2023920f
001058  9bc37001  srli r7, r1, 23
00105c  93e00004  setlt.f r1, r1, zero
001060  9b83f30f  andi r7, r7, 255
001064  9bf3f30f  setlti r7, r7, 255
001068  17936300  or r6, r7, r6
00106c  178a6000  and r20, r1, r6
001070  d7660200  jal 4916
001074  8f300110  .word 0x1001308f
001078  1f010e00  addli r2, r28, 0
00107c  9f010d00  addli r3, r26, 0
001080  0be20958  neg.f r4, r19
001084  2b0e803f  lui r28, 260096
001088  0be16051  fmac.f.rn r2, r1, r22
00108c  8b611150  fmac.f.rn r3, r2, r1
001090  1f010c00  addli r2, r24, 0
001094  0be11150  fmac.f.rn r2, r3, r1
001098  9f810b00  addli r3, r23, 0
00109c  8b611150  fmac.f.rn r3, r2, r1
0010a0  0be14920  mul.f.rn r2, r19, r4
0010a4  8be10158  neg.f r3, r3
0010a8  0f010100  exp.f.rn r2, r2
0010ac  8be03020  mul.f.rn r1, r1, r3
0010b0  0bee2050  fmac.f.rn r28, r1, r2
0010b4  37200a00  beq r20, zero, 8
0010b8  0b6e0e58  neg.f r28, r28
0010bc  e3406ffd  loadli.w r1,  -332(r30)
0010c0  9780b001  and r1, r1, r27
0010c4  674b1ffc  storeli.w r1, -332(r30)
0010c8  8be09021  mul.f.rn r1, r1, r25
0010cc  8be90060  abs.f r19, r1
0010d0  1bb29000  slli r4, r1, 9
0010d4  0be15921  mul.f.rn r2, r19, r21
0010d8  13030200  seteq r6, r4, zero
0010dc  8f230108  .word 0x0801238f
0010e0  6b518fef  load.d r[3:4], -264(r30)
0010e4  0f922320  .word 0x2023920f
0010e8  9bc37001  srli r7, r1, 23
0010ec  93e00004  setlt.f r1, r1, zero
0010f0  9b83f30f  andi r7, r7, 255
0010f4  9bf3f30f  setlti r7, r7, 255
0010f8  17936300  or r6, r7, r6
0010fc  978a6000  and r21, r1, r6
001100  d7660200  jal 4916
001104  8f300110  .word 0x1001308f
001108  6341dffd  loadli.w r2,  -276(r30)
00110c  9f010d00  addli r3, r26, 0
001110  0be20958  neg.f r4, r19
001114  2b0a803f  lui r20, 260096
001118  0be16051  fmac.f.rn r2, r1, r22
00111c  8b611150  fmac.f.rn r3, r2, r1
001120  1f010c00  addli r2, r24, 0
001124  0be11150  fmac.f.rn r2, r3, r1
001128  9f810b00  addli r3, r23, 0
00112c  8b611150  fmac.f.rn r3, r2, r1
001130  0be14920  mul.f.rn r2, r19, r4
001134  8be10158  neg.f r3, r3
001138  0f010100  exp.f.rn r2, r2
00113c  8be03020  mul.f.rn r1, r1, r3
001140  0bea2050  fmac.f.rn r20, r1, r2
001144  37a00a00  beq r21, zero, 8
001148  0b6a0a58  neg.f r20, r20
00114c  e3008ffd  loadli.w r1,  -320(r30)
001150  6301cffd  loadli.w r2,  -288(r30)
001154  9789b001  and r19, r1, r27
001158  8be09921  mul.f.rn r1, r19, r25
00115c  8bea0060  abs.f r21, r1
001160  1bb29000  slli r4, r1, 9
001164  0be12a20  mul.f.rn r2, r21, r2
001168  13030200  seteq r6, r4, zero
00116c  8f230108  .word 0x0801238f
001170  6b518fef  load.d r[3:4], -264(r30)
001174  0f922320  .word 0x2023920f
001178  9bc37001  srli r7, r1, 23
00117c  93e00004  setlt.f r1, r1, zero
001180  9b83f30f  andi r7, r7, 255
001184  9bf3f30f  setlti r7, r7, 255
001188  17936300  or r6, r7, r6
00118c  178b6000  and r22, r1, r6
001190  d7660200  jal 4916
001194  8f300110  .word 0x1001308f
001198  6341dffd  loadli.w r2,  -276(r30)
00119c  e301dffd  loadli.w r3,  -280(r30)
0011a0  0be20a58  neg.f r4, r21
0011a4  ab0c803f  lui r25, 260096
0011a8  0be13050  fmac.f.rn r2, r1, r3
0011ac  9f010d00  addli r3, r26, 0
0011b0  8b611150  fmac.f.rn r3, r2, r1
0011b4  1f010c00  addli r2, r24, 0
0011b8  0be11150  fmac.f.rn r2, r3, r1
0011bc  9f810b00  addli r3, r23, 0
0011c0  8b611150  fmac.f.rn r3, r2, r1
0011c4  0be14a20  mul.f.rn r2, r21, r4
0011c8  8be10158  neg.f r3, r3
0011cc  0f010100  exp.f.rn r2, r2
0011d0  8be03020  mul.f.rn r1, r1, r3
0011d4  8bec2050  fmac.f.rn r25, r1, r2
0011d8  37200b00  beq r22, zero, 8
0011dc  8bec0c58  neg.f r25, r25
0011e0  e3009ffd  loadli.w r1,  -312(r30)
0011e4  6341bffd  loadli.w r2,  -292(r30)
0011e8  ab03003f  lui r7, 258048
0011ec  e301cffd  loadli.w r3,  -288(r30)
0011f0  9780b001  and r1, r1, r27
0011f4  0be42020  mul.f.rn r8, r1, r2
0011f8  63419ffd  loadli.w r2,  -308(r30)
0011fc  0b617120  mul.f.rn r2, r2, r7
001200  8b6d0460  abs.f r27, r8
001204  9b329400  slli r5, r8, 9
001208  8be13d20  mul.f.rn r3, r27, r3
00120c  13830200  seteq r6, r5, zero
001210  67062ffc  storeli.w r2, -416(r30)
001214  63417ffd  loadli.w r2,  -324(r30)
001218  0b617120  mul.f.rn r2, r2, r7
00121c  8fa40108  .word 0x0801a48f
001220  e7452ffc  storeli.w r2, -420(r30)
001224  63016ffd  loadli.w r2,  -336(r30)
001228  0b617120  mul.f.rn r2, r2, r7
00122c  670b2ffc  storeli.w r2, -336(r30)
001230  63414ffd  loadli.w r2,  -348(r30)
001234  0b617120  mul.f.rn r2, r2, r7
001238  674a2ffc  storeli.w r2, -348(r30)
00123c  63412ffd  loadli.w r2,  -364(r30)
001240  0b617120  mul.f.rn r2, r2, r7
001244  e74c2ffc  storeli.w r2, -308(r30)
001248  63011ffd  loadli.w r2,  -376(r30)
00124c  0b617120  mul.f.rn r2, r2, r7
001250  67492ffc  storeli.w r2, -364(r30)
001254  6341fffc  loadli.w r2,  -388(r30)
001258  0b6d7120  mul.f.rn r26, r2, r7
00125c  6341effc  loadli.w r2,  -396(r30)
001260  8b6a7120  mul.f.rn r21, r2, r7
001264  6301effc  loadli.w r2,  -400(r30)
001268  0b6b7120  mul.f.rn r22, r2, r7
00126c  6341dffc  loadli.w r2,  -404(r30)
001270  8b6b7120  mul.f.rn r23, r2, r7
001274  6301dffc  loadli.w r2,  -408(r30)
001278  0b617120  mul.f.rn r2, r2, r7
00127c  e70c2ffc  storeli.w r2, -312(r30)
001280  6341cffc  loadli.w r2,  -412(r30)
001284  0b617120  mul.f.rn r2, r2, r7
001288  670c2ffc  storeli.w r2, -320(r30)
00128c  63415ffd  loadli.w r2,  -340(r30)
001290  0b617120  mul.f.rn r2, r2, r7
001294  e74b2ffc  storeli.w r2, -324(r30)
001298  63416ffd  loadli.w r2,  -332(r30)
00129c  0b617120  mul.f.rn r2, r2, r7
0012a0  674b2ffc  storeli.w r2, -332(r30)
0012a4  0be17920  mul.f.rn r2, r19, r7
0012a8  8be97020  mul.f.rn r19, r1, r7
0012ac  e74a2ffc  storeli.w r2, -340(r30)
0012b0  6b518fef  load.d r[3:4], -264(r30)
0012b4  0f922420  .word 0x2024920f
0012b8  9b447401  srli r9, r8, 23
0012bc  13640404  setlt.f r8, r8, zero
0012c0  9b84f40f  andi r9, r9, 255
0012c4  9bf0f40f  setlti r1, r9, 255
0012c8  97906000  or r1, r1, r6
0012cc  170c1400  and r24, r8, r1
0012d0  d7660200  jal 4916
0012d4  8f300110  .word 0x1001308f
0012d8  6341dffd  loadli.w r2,  -276(r30)
0012dc  e301dffd  loadli.w r3,  -280(r30)
0012e0  0be20d58  neg.f r4, r27
0012e4  0be13050  fmac.f.rn r2, r1, r3
0012e8  e341cffd  loadli.w r3,  -284(r30)
0012ec  8b611150  fmac.f.rn r3, r2, r1
0012f0  6301effd  loadli.w r2,  -272(r30)
0012f4  0be11150  fmac.f.rn r2, r3, r1
0012f8  e341effd  loadli.w r3,  -268(r30)
0012fc  8b611150  fmac.f.rn r3, r2, r1
001300  0be14d20  mul.f.rn r2, r27, r4
001304  8be10158  neg.f r3, r3
001308  0f010100  exp.f.rn r2, r2
00130c  8be13020  mul.f.rn r3, r1, r3
001310  ab00803f  lui r1, 260096
001314  8be02150  fmac.f.rn r1, r3, r2
001318  372d0cf6  beq r24, zero, -4280
00131c  8be00058  neg.f r1, r1
001320  5be8fdff  j -4288
001324  9f0e8ffb  addli sp, r30, -576
001328  9f8e8e04  addli sp, sp, 576
00132c  00a00300  mfence { lm, sm, gm }
001330  00100000  exit
001334  9f8e7eff  addli sp, sp, -72
001338  9f406000  addli r1, zero, 52
00133c  2bf50f00  lui r10, 255
001340  abf7ffff  lui r15, 1048575
001344  ab040080  lui r9, 524288
001348  17232202  xor.d r[7:8], r[5:6], r[3:4]
00134c  e7c1ee01  storeli.w r30, 28(sp)
001350  67c43e01  storeli.w r19, 68(sp)
001354  67844e01  storeli.w r20, 64(sp)
001358  e7c35e01  storeli.w r21, 60(sp)
00135c  e7836e01  storeli.w r22, 56(sp)
001360  67c37e01  storeli.w r23, 52(sp)
001364  67838e01  storeli.w r24, 48(sp)
001368  e7c29e01  storeli.w r25, 44(sp)
00136c  e782ae01  storeli.w r26, 40(sp)
001370  67c2be01  storeli.w r27, 36(sp)
001374  6782ce01  storeli.w r28, 32(sp)
001378  e781fe01  storeli.w r31, 24(sp)
00137c  1f8f9e00  addli r30, sp, 72
001380  1f040000  addli r8, zero, 0
001384  97451102  srl.d r[12:13], r[3:4], r1
001388  17481202  srl.d r[17:18], r[5:6], r1
00138c  1b17f5ff  ori r14, r10, 4095
001390  9b96f7ff  ori r13, r15, 4095
001394  17038302  and.d r[7:8], r[7:8], r[9:10]
001398  9b80f57f  andi r1, r11, 2047
00139c  1b05f87f  andi r10, r16, 2047
0013a0  9b982780  ori r17, r15, 2050
0013a4  1704d102  and.d r[9:10], r[3:4], r[14:15]
0013a8  9705d202  and.d r[12:13], r[5:6], r[14:15]
0013ac  1f9800f0  addli r16, r1, -2047
0013b0  13081805  setlt.u r16, r16, r17
0013b4  3b700800  bneq r16, zero, 28
0013b8  1f1805f0  addli r16, r10, -2047
0013bc  9b971780  ori r15, r15, 2049
0013c0  93870705  setlt.u r15, r15, r16
0013c4  37b00700  beq r15, zero, 12
0013c8  1f020000  addli r4, zero, 0
0013cc  5b0b0000  j 88
0013d0  abf7ff7f  lui r15, 524287
0013d4  2b09f07f  lui r18, 524032
0013d8  9f180000  addli r17, zero, 1
0013dc  1b97f7ff  ori r14, r15, 4095
0013e0  9707d102  and.d r[16:17], r[3:4], r[14:15]
0013e4  93a91705  setlt.ul r19, r[16:17], r[18:19]
0013e8  3be00900  bneq r19, zero, 24
0013ec  ab020800  lui r5, 128
0013f0  9f060000  addli r13, zero, 0
0013f4  1f020000  addli r4, zero, 0
0013f8  17114102  or.d r[3:4], r[3:4], r[5:6]
0013fc  5b040000  j 32
001400  1701d202  and.d r[3:4], r[5:6], r[14:15]
001404  93261105  setlt.ul r13, r[3:4], r[18:19]
001408  3bf80600  bneq r13, zero, 540
00140c  ab010800  lui r3, 128
001410  9f060000  addli r13, zero, 0
001414  1f010000  addli r2, zero, 0
001418  17112202  or.d r[3:4], r[5:6], r[3:4]
00141c  1f020000  addli r4, zero, 0
001420  b7c90600  beq r13, zero, 624
001424  ab011000  lui r3, 256
001428  9f371000  addli r15, zero, 11
00142c  abf9ffff  lui r19, 1048575
001430  2bf90475  lui r18, 479311
001434  9f582000  addli r17, zero, 21
001438  73346ffc  store.d r[7:8], -56(r30)
00143c  9f723000  addli r5, zero, 31
001440  73308ffc  store.d r[9:10], -64(r30)
001444  8b90a018  sub.s r1, r1, r10
001448  1f010000  addli r2, zero, 0
00144c  97b7f502  sll.d r[16:17], r[12:13], r15
001450  9b1a3933  ori r21, r18, 819
001454  8b101210  add.s r1, r4, r1
001458  97162402  or.d r[14:15], r[9:10], r[3:4]
00145c  17912502  or.d r[3:4], r[12:13], r[3:4]
001460  9b950980  ori r11, r19, 2048
001464  733cdffa  store.d r[14:15], -72(r30)
001468  338c0528  zext_int2long r[25:26], r11
00146c  174b1103  srl.d r[23:24], r[3:4], r17
001470  9b95f9ff  ori r11, r19, 4095
001474  9b99e9ff  ori r19, r19, 4094
001478  b3880528  zext_int2long r[18:19], r11
00147c  8b9a6a19  sub.s r21, r21, r22
001480  97878703  and.d r[16:17], r[16:17], r[25:26]
001484  b3890928  zext_int2long r[20:21], r19
001488  170d1b03  and.d r[27:28], r[23:24], r[18:19]
00148c  b38a0a28  zext_int2long r[22:23], r21
001490  0b335d21  mul.sl r[7:8], r[27:28], r[22:23]
001494  0b930358  neg.s r6, r7
001498  33030328  zext_int2long r[7:8], r6
00149c  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
0014a0  17435302  srl.d r[7:8], r[7:8], r5
0014a4  17031303  and.d r[7:8], r[7:8], r[18:19]
0014a8  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
0014ac  8b1a0b58  neg.s r21, r22
0014b0  b38a0a28  zext_int2long r[22:23], r21
0014b4  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
0014b8  17435302  srl.d r[7:8], r[7:8], r5
0014bc  17031303  and.d r[7:8], r[7:8], r[18:19]
0014c0  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
0014c4  8b1a0b58  neg.s r21, r22
0014c8  1f0b4000  addli r22, zero, 32
0014cc  33840a28  zext_int2long r[9:10], r21
0014d0  9f1a0000  addli r21, zero, 1
0014d4  0b338320  mul.sl r[7:8], r[7:8], r[9:10]
0014d8  33840a28  zext_int2long r[9:10], r21
0014dc  17435302  srl.d r[7:8], r[7:8], r5
0014e0  1f73f3ff  addli r6, r6, -1
0014e4  33030328  zext_int2long r[7:8], r6
0014e8  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
0014ec  8b3b6d20  mul.sl r[24:25], r[27:28], r[7:8]
0014f0  97c76703  srl.d r[16:17], r[16:17], r22
0014f4  8ba7fb10  add.ul r[16:17], r[24:25], r[16:17]
0014f8  0b34f418  sub.sl r[9:10], r[9:10], r[16:17]
0014fc  97071403  and.d r[16:17], r[9:10], r[18:19]
001500  17446403  srl.d r[9:10], r[9:10], r22
001504  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
001508  97cb5702  srl.d r[24:25], r[16:17], r5
00150c  8b328320  mul.sl r[6:7], r[7:8], r[9:10]
001510  97b75603  sll.d r[16:17], r[14:15], r21
001514  abf41f00  lui r9, 511
001518  97b25203  sll.d r[6:7], r[6:7], r21
00151c  97cc6703  srl.d r[26:27], r[16:17], r22
001520  978d3703  and.d r[28:29], r[16:17], r[20:21]
001524  1b96f4ff  ori r12, r9, 4095
001528  8ba27211  add.ul r[6:7], r[6:7], r[24:25]
00152c  a7f232fe  addli.d r[6:7], r[6:7], 32543
001530  97831203  and.d r[8:9], r[6:7], r[18:19]
001534  97c26203  srl.d r[6:7], r[6:7], r22
001538  8bbbb321  mul.sl r[24:25], r[8:9], r[28:29]
00153c  8bb39321  mul.sl r[8:9], r[8:9], r[26:27]
001540  8bbdb221  mul.sl r[28:29], r[6:7], r[28:29]
001544  8bb29221  mul.sl r[6:7], r[6:7], r[26:27]
001548  97881303  and.d r[18:19], r[8:9], r[18:19]
00154c  97cb6b03  srl.d r[24:25], r[24:25], r22
001550  97cc6d03  srl.d r[26:27], r[28:29], r22
001554  97893d03  and.d r[20:21], r[28:29], r[20:21]
001558  97c36303  srl.d r[8:9], r[8:9], r22
00155c  8ba81b11  add.ul r[18:19], r[24:25], r[18:19]
001560  0ba25c10  add.ul r[5:6], r[26:27], r[6:7]
001564  8ba83811  add.ul r[18:19], r[18:19], r[20:21]
001568  0b227210  add.ul r[5:6], r[5:6], r[8:9]
00156c  17c36803  srl.d r[7:8], r[18:19], r22
001570  0b226210  add.ul r[5:6], r[5:6], r[7:8]
001574  13a34504  setlt.ul r6, r[12:13], r[5:6]
001578  3b710300  bneq r6, zero, 92
00157c  1f536000  addli r6, zero, 53
001580  eb540ffc  load.d r[10:11], -64(r30)
001584  8b332220  mul.sl r[8:9], r[5:6], r[3:4]
001588  9fe0f007  addli r1, r1, 1022
00158c  97b46402  sll.d r[10:11], r[10:11], r6
001590  0bb47418  sub.sl r[9:10], r[10:11], r[8:9]
001594  1f73f00f  addli r6, zero, 2047
001598  3fa06000  blt.s r1, r6, 8
00159c  5b0c0000  j 96
0015a0  1f150000  addli r10, zero, 1
0015a4  bfb1a000  blt.s r1, r10, 108
0015a8  2bf30f00  lui r6, 255
0015ac  abf3ffff  lui r7, 1048575
0015b0  b3850028  zext_int2long r[12:13], r1
0015b4  9f406000  addli r1, zero, 52
0015b8  1734a402  sll.d r[9:10], r[9:10], r10
0015bc  1b17f3ff  ori r14, r6, 4095
0015c0  97b51502  sll.d r[12:13], r[12:13], r1
0015c4  9b96f3ff  ori r13, r7, 4095
0015c8  1702d202  and.d r[5:6], r[5:6], r[14:15]
0015cc  17924502  or.d r[5:6], r[12:13], r[5:6]
0015d0  db140000  j 164
0015d4  17425203  srl.d r[5:6], r[5:6], r21
0015d8  1f436000  addli r6, zero, 52
0015dc  eb530ffc  load.d r[8:9], -64(r30)
0015e0  9ff0f007  addli r1, r1, 1023
0015e4  eb578ffb  load.d r[16:17], -72(r30)
0015e8  17b36302  sll.d r[7:8], r[8:9], r6
0015ec  0b342220  mul.sl r[9:10], r[5:6], r[3:4]
0015f0  0b348318  sub.sl r[9:10], r[7:8], r[9:10]
0015f4  1f73f00f  addli r6, zero, 2047
0015f8  bfae60fe  blt.s r1, r6, -88
0015fc  2b01f07f  lui r2, 524032
001600  eb518ffc  load.d r[4:5], -56(r30)
001604  9f000000  addli r1, zero, 0
001608  17911102  or.d r[3:4], r[4:5], r[2:3]
00160c  db100000  j 132
001610  2bf3ffff  lui r6, 1048575
001614  1b13b3fc  ori r6, r6, 4043
001618  bf701300  blt.s r6, r1, 60
00161c  6b518ffc  load.d r[3:4], -56(r30)
001620  5b0e0000  j 112
001624  ab02f07f  lui r5, 524032
001628  1f020000  addli r4, zero, 0
00162c  93a64702  setneq.d r13, r[16:17], r[5:6]
001630  3be20600  bneq r13, zero, 152
001634  1f020000  addli r4, zero, 0
001638  13214100  seteq.d r2, r[3:4], r[5:6]
00163c  b7060100  beq r2, zero, 416
001640  ab01f87f  lui r3, 524160
001644  9f060000  addli r13, zero, 0
001648  1f020000  addli r4, zero, 0
00164c  1f010000  addli r2, zero, 0
001650  5bbaffff  j -560
001654  9f130000  addli r7, zero, 1
001658  1fc36000  addli r6, r1, 52
00165c  8b901318  sub.s r1, r7, r1
001660  17b46702  sll.d r[9:10], r[16:17], r6
001664  17421202  srl.d r[5:6], r[5:6], r1
001668  0b354120  mul.sl r[11:12], r[3:4], r[5:6]
00166c  17337502  sll.d r[7:8], r[11:12], r7
001670  0b346418  sub.sl r[9:10], r[9:10], r[7:8]
001674  23031200  andi.d r[7:8], r[5:6], 1
001678  0b238310  add.ul r[7:8], r[7:8], r[9:10]
00167c  93206104  setlt.ul r1, r[3:4], r[7:8]
001680  b3800028  zext_int2long r[2:3], r1
001684  8b201210  add.ul r[2:3], r[5:6], r[2:3]
001688  eb518ffc  load.d r[4:5], -56(r30)
00168c  17913002  or.d r[3:4], r[2:3], r[4:5]
001690  e38f3e00  loadli.w r31,  24(sp)
001694  63cf3e00  loadli.w r30,  28(sp)
001698  638e4e00  loadli.w r28,  32(sp)
00169c  e3cd4e00  loadli.w r27,  36(sp)
0016a0  638d5e00  loadli.w r26,  40(sp)
0016a4  e3cc5e00  loadli.w r25,  44(sp)
0016a8  638c6e00  loadli.w r24,  48(sp)
0016ac  e3cb6e00  loadli.w r23,  52(sp)
0016b0  638b7e00  loadli.w r22,  56(sp)
0016b4  e3ca7e00  loadli.w r21,  60(sp)
0016b8  638a8e00  loadli.w r20,  64(sp)
0016bc  e3c98e00  loadli.w r19,  68(sp)
0016c0  9f8e9e00  addli sp, sp, 72
0016c4  5f800f00  jr r31, 0
0016c8  1f020000  addli r4, zero, 0
0016cc  13224102  setneq.d r4, r[3:4], r[5:6]
0016d0  3b500200  bneq r4, zero, 20
0016d4  9f060000  addli r13, zero, 0
0016d8  1f020000  addli r4, zero, 0
0016dc  27010300  addli.d r[3:4], r[7:8], 0
0016e0  5ba8ffff  j -704
0016e4  33020028  zext_int2long r[5:6], zero
0016e8  13a24702  setneq.d r4, r[16:17], r[5:6]
0016ec  37240200  beq r4, zero, 264
0016f0  33020028  zext_int2long r[5:6], zero
0016f4  13224102  setneq.d r4, r[3:4], r[5:6]
0016f8  b7130200  beq r4, zero, 228
0016fc  2bf20f00  lui r4, 255
001700  abf2ffff  lui r5, 1048575
001704  1b17f2ff  ori r14, r4, 4095
001708  9b96f2ff  ori r13, r5, 4095
00170c  13a2f604  setlt.ul r4, r[14:15], r[16:17]
001710  bb630200  bneq r4, zero, 248
001714  9f120000  addli r5, zero, 1
001718  9f270000  addli r15, zero, 2
00171c  1f420000  addli r4, zero, 4
001720  1f081000  addli r16, zero, 8
001724  97485402  srl.d r[18:19], r[9:10], r5
001728  97181403  or.d r[18:19], r[9:10], r[18:19]
00172c  97c9f802  srl.d r[20:21], r[18:19], r15
001730  97983803  or.d r[18:19], r[18:19], r[20:21]
001734  97c94802  srl.d r[20:21], r[18:19], r4
001738  97983803  or.d r[18:19], r[18:19], r[20:21]
00173c  9f092000  addli r19, zero, 16
001740  17ca0803  srl.d r[21:22], r[18:19], r16
001744  17984803  or.d r[17:18], r[18:19], r[21:22]
001748  1f094000  addli r18, zero, 32
00174c  97493803  srl.d r[20:21], r[17:18], r19
001750  17183803  or.d r[17:18], r[17:18], r[20:21]
001754  2b5a5555  lui r20, 349525
001758  17492803  srl.d r[19:20], r[17:18], r18
00175c  17182803  or.d r[17:18], r[17:18], r[19:20]
001760  33990628  sext_int2long r[19:20], r13
001764  17282803  xor.d r[17:18], r[17:18], r[19:20]
001768  1b195a55  ori r18, r20, 1365
00176c  174a5802  srl.d r[21:22], r[17:18], r5
001770  9f090900  addli r19, r18, 0
001774  ab323333  lui r5, 209715
001778  17092a03  and.d r[19:20], r[21:22], r[19:20]
00177c  1b9a3233  ori r20, r5, 819
001780  ab020f0f  lui r5, 61680
001784  0b382819  sub.sl r[17:18], r[17:18], r[19:20]
001788  9f0a0a00  addli r21, r20, 0
00178c  1749f802  srl.d r[19:20], r[17:18], r15
001790  97074803  and.d r[16:17], r[17:18], r[21:22]
001794  97084903  and.d r[18:19], r[19:20], r[21:22]
001798  ab090101  lui r19, 4112
00179c  1f0a7000  addli r20, zero, 56
0017a0  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
0017a4  97c84702  srl.d r[18:19], r[16:17], r4
0017a8  1b92f2f0  ori r4, r5, 3855
0017ac  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
0017b0  9f020200  addli r5, r4, 0
0017b4  9f481000  addli r17, zero, 12
0017b8  17824702  and.d r[5:6], r[16:17], r[5:6]
0017bc  9b971910  ori r15, r19, 257
0017c0  1f880700  addli r16, r15, 0
0017c4  0b32f220  mul.sl r[5:6], r[5:6], r[16:17]
0017c8  17424203  srl.d r[5:6], r[5:6], r20
0017cc  9f57e2ff  addli r15, r4, -11
0017d0  0b924818  sub.s r4, r17, r4
0017d4  1734f402  sll.d r[9:10], r[9:10], r15
0017d8  db060000  j 52
0017dc  ab01f07f  lui r3, 524032
0017e0  9f060000  addli r13, zero, 0
0017e4  1f020000  addli r4, zero, 0
0017e8  1f010000  addli r2, zero, 0
0017ec  17112302  or.d r[3:4], r[7:8], r[3:4]
0017f0  5b86ffff  j -976
0017f4  33020028  zext_int2long r[5:6], zero
0017f8  13214100  seteq.d r2, r[3:4], r[5:6]
0017fc  bb430100  bneq r2, zero, 240
001800  27010300  addli.d r[3:4], r[7:8], 0
001804  5b1e0000  j 240
001808  1f020000  addli r4, zero, 0
00180c  13a12604  setlt.ul r2, r[14:15], r[3:4]
001810  3b530100  bneq r2, zero, 212
001814  9f160000  addli r13, zero, 1
001818  9f210000  addli r3, zero, 2
00181c  1f410000  addli r2, zero, 4
001820  9f021000  addli r5, zero, 8
001824  1f072000  addli r14, zero, 16
001828  97c7d502  srl.d r[16:17], r[12:13], r13
00182c  9797f502  or.d r[16:17], r[12:13], r[16:17]
001830  97c83702  srl.d r[18:19], r[16:17], r3
001834  97971703  or.d r[16:17], r[16:17], r[18:19]
001838  97c82702  srl.d r[18:19], r[16:17], r2
00183c  97971703  or.d r[16:17], r[16:17], r[18:19]
001840  97c85702  srl.d r[18:19], r[16:17], r5
001844  9f024000  addli r5, zero, 32
001848  97971703  or.d r[16:17], r[16:17], r[18:19]
00184c  97c8e702  srl.d r[18:19], r[16:17], r14
001850  2bf7ffff  lui r14, 1048575
001854  97971703  or.d r[16:17], r[16:17], r[18:19]
001858  1b17f7ff  ori r14, r14, 4095
00185c  97c85702  srl.d r[18:19], r[16:17], r5
001860  ab525555  lui r5, 349525
001864  97971703  or.d r[16:17], r[16:17], r[18:19]
001868  b3180728  sext_int2long r[18:19], r14
00186c  9b995255  ori r19, r5, 1365
001870  ab323333  lui r5, 209715
001874  17a71703  xor.d r[15:16], r[16:17], r[18:19]
001878  1f8a0900  addli r20, r19, 0
00187c  1748d702  srl.d r[17:18], r[15:16], r13
001880  17083803  and.d r[17:18], r[17:18], r[20:21]
001884  1b993233  ori r18, r5, 819
001888  ab020101  lui r5, 4112
00188c  0b370719  sub.sl r[15:16], r[15:16], r[17:18]
001890  9f090900  addli r19, r18, 0
001894  17483702  srl.d r[17:18], r[15:16], r3
001898  17072703  and.d r[15:16], r[15:16], r[19:20]
00189c  ab010f0f  lui r3, 61680
0018a0  17082803  and.d r[17:18], r[17:18], r[19:20]
0018a4  1b99f1f0  ori r18, r3, 3855
0018a8  0b270711  add.ul r[15:16], r[15:16], r[17:18]
0018ac  9f090900  addli r19, r18, 0
0018b0  17412702  srl.d r[3:4], r[15:16], r2
0018b4  0b212710  add.ul r[3:4], r[15:16], r[3:4]
0018b8  1b971210  ori r14, r5, 257
0018bc  9f027000  addli r5, zero, 56
0018c0  17012103  and.d r[3:4], r[3:4], r[19:20]
0018c4  9f070700  addli r15, r14, 0
0018c8  0b31e120  mul.sl r[3:4], r[3:4], r[15:16]
0018cc  17415102  srl.d r[3:4], r[3:4], r5
0018d0  9f52e1ff  addli r5, r2, -11
0018d4  0b114110  add.s r2, r2, r4
0018d8  97b55502  sll.d r[12:13], r[12:13], r5
0018dc  1f42e1ff  addli r4, r2, -12
0018e0  5b010000  j 8
0018e4  9f160000  addli r13, zero, 1
0018e8  5b67ffff  j -1224
0018ec  ab01f87f  lui r3, 524160
0018f0  1f010000  addli r2, zero, 0
0018f4  9f060000  addli r13, zero, 0
0018f8  db64ffff  j -1244
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
001b30  00100000  exit
001b34  00100000  exit
001b38  00100000  exit
