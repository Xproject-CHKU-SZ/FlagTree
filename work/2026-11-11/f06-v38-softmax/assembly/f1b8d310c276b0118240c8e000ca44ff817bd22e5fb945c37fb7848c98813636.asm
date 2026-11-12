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
000078  9f493000  addli r19, zero, 28
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
0000dc  9f8e0ef9  addli sp, sp, -896
0000e0  1f8f8e06  addli r30, sp, 832
0000e4  63412f00  loadli.w r2,  20(r30)
0000e8  e3002f00  loadli.w r1,  16(r30)
0000ec  e3013f00  loadli.w r3,  24(r30)
0000f0  8b101120  mul.s r1, r2, r1
0000f4  00510002  load_param_i r2, 0
0000f8  8b903020  mul.s r1, r1, r3
0000fc  67401ffa  storeli.w r1, -764(r30)
000100  cbd52006  ble.s r1, r2, 3444
000104  80300002  core_id r1
000108  2b07807f  lui r14, 522240
00010c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000110  80d10002  load_param_i r3, 1
000114  ab0780ff  lui r15, 1046528
000118  eeb01062  vxor.s.mz vr1{mr1}, vr1, vr1
00011c  9bb05000  slli r1, r1, 5
000120  ea110722  vor.f.mz vr3{mr1}, r14, vr0
000124  67003ffa  storeli.w r3, -768(r30)
000128  e74f1ff8  storeli.w r1, -772(r30)
00012c  abf0ff7f  lui r1, 524287
000130  1b98f0ff  ori r16, r1, 4095
000134  ab00c07f  lui r1, 523264
000138  6a910022  vor.f.mz vr2{mr1}, r1, vr0
00013c  5b330000  j 408
000140  9bb61600  slli r13, r13, 1
000144  1b362600  slli r12, r12, 2
000148  9bb53500  slli r11, r11, 3
00014c  9bb24200  slli r5, r5, 4
000150  9bb11100  slli r3, r3, 1
000154  1b325200  slli r4, r4, 5
000158  9bb03000  slli r1, r1, 3
00015c  1b316100  slli r2, r2, 6
000160  97983801  or r17, r17, r19
000164  6e922034  vor.f.mh vr4{mr2}, vr1, vr2
000168  17948600  or r8, r13, r8
00016c  97916100  or r3, r3, r6
000170  7e8108e0  vmmov mr2, r17
000174  ee922034  vor.f.mh vr5{mr2}, vr1, vr2
000178  1714c400  or r8, r8, r12
00017c  1714b400  or r8, r8, r11
000180  97125400  or r5, r8, r5
000184  17924200  or r4, r5, r4
000188  9bb22300  slli r5, r7, 2
00018c  97915100  or r3, r3, r5
000190  17112200  or r2, r4, r2
000194  1b327500  slli r4, r10, 7
000198  97901100  or r1, r3, r1
00019c  9b314d00  slli r3, r26, 4
0001a0  17114100  or r2, r2, r4
0001a4  1bb28400  slli r4, r9, 8
0001a8  97903000  or r1, r1, r3
0001ac  9b315e00  slli r3, r28, 5
0001b0  17114100  or r2, r2, r4
0001b4  1bb29d00  slli r4, r27, 9
0001b8  97903000  or r1, r1, r3
0001bc  9bb16c00  slli r3, r25, 6
0001c0  17114100  or r2, r2, r4
0001c4  1b32ab00  slli r4, r22, 10
0001c8  97903000  or r1, r1, r3
0001cc  9b317c00  slli r3, r24, 7
0001d0  17114100  or r2, r2, r4
0001d4  6302dffa  loadli.w r4,  -664(r30)
0001d8  97903000  or r1, r1, r3
0001dc  9bb18b00  slli r3, r23, 8
0001e0  1b32b200  slli r4, r4, 11
0001e4  97903000  or r1, r1, r3
0001e8  e3013ffb  loadli.w r3,  -616(r30)
0001ec  17114100  or r2, r2, r4
0001f0  6342dffa  loadli.w r4,  -660(r30)
0001f4  9bb19100  slli r3, r3, 9
0001f8  1b32c200  slli r4, r4, 12
0001fc  97903000  or r1, r1, r3
000200  e3413ffb  loadli.w r3,  -612(r30)
000204  17114100  or r2, r2, r4
000208  63426ffb  loadli.w r4,  -588(r30)
00020c  9bb1a100  slli r3, r3, 10
000210  1b32d200  slli r4, r4, 13
000214  97903000  or r1, r1, r3
000218  e3014ffb  loadli.w r3,  -608(r30)
00021c  17114100  or r2, r2, r4
000220  63027ffb  loadli.w r4,  -584(r30)
000224  9bb1b100  slli r3, r3, 11
000228  1b32e200  slli r4, r4, 14
00022c  97903000  or r1, r1, r3
000230  e3414ffb  loadli.w r3,  -604(r30)
000234  17114100  or r2, r2, r4
000238  63427ffb  loadli.w r4,  -580(r30)
00023c  9bb1c100  slli r3, r3, 12
000240  1b32f200  slli r4, r4, 15
000244  97903000  or r1, r1, r3
000248  e3015ffb  loadli.w r3,  -600(r30)
00024c  17114100  or r2, r2, r4
000250  9bb1d100  slli r3, r3, 13
000254  7e0101e0  vmmov mr2, r2
000258  6e923034  vor.f.mh vr4{mr2}, vr1, vr3
00025c  97903000  or r1, r1, r3
000260  e3415ffb  loadli.w r3,  -596(r30)
000264  9bb1e100  slli r3, r3, 14
000268  97903000  or r1, r1, r3
00026c  e3016ffb  loadli.w r3,  -592(r30)
000270  9bb1f100  slli r3, r3, 15
000274  97903000  or r1, r1, r3
000278  6b518fd5  load.d r[3:4], -680(r30)
00027c  7e8100e0  vmmov mr2, r1
000280  9f100000  addli r1, zero, 1
000284  ee923034  vor.f.mh vr5{mr2}, vr1, vr3
000288  06130200  vfloat2fp16_l.rn vr6, vr4
00028c  06d30200  vfloat2fp16_h.rn vr6, vr5
000290  461c6fc2  vstore_mask16.mz vr6{mr1}, 1728(r30)
000294  97301102  sll.d r[2:3], r[3:4], r1
000298  eb518f00  load.d r[4:5], 8(r30)
00029c  00a00000  mfence { lm }
0002a0  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
0002a4  ab0100f0  lui r3, 983040
0002a8  1f028000  addli r4, zero, 64
0002ac  97113200  or r3, r4, r3
0002b0  1f028ffd  addli r4, r30, -320
0002b4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0002b8  6301cffa  loadli.w r2,  -672(r30)
0002bc  e3000ffa  loadli.w r1,  -768(r30)
0002c0  00a00000  mfence { lm }
0002c4  0b111110  add.s r2, r2, r1
0002c8  e3400ffa  loadli.w r1,  -764(r30)
0002cc  3f201100  blt.s r2, r1, 8
0002d0  db740100  j 2980
0002d4  e3003f00  loadli.w r1,  24(r30)
0002d8  67062ffa  storeli.w r2, -672(r30)
0002dc  1f220000  addli r4, zero, 2
0002e0  9f020001  addli r5, zero, 128
0002e4  1f230000  addli r6, zero, 2
0002e8  1f0a0ffe  addli r20, r30, -256
0002ec  67464ffa  storeli.w r4, -668(r30)
0002f0  1f020001  addli r4, zero, 128
0002f4  8b101130  div.s r1, r2, r1
0002f8  63412f00  loadli.w r2,  20(r30)
0002fc  e7064ffa  storeli.w r4, -664(r30)
000300  8b902030  div.s r1, r1, r2
000304  6341fff9  loadli.w r2,  -772(r30)
000308  9bb0b000  slli r1, r1, 11
00030c  8b902010  add.s r1, r1, r2
000310  33910028  sext_int2long r[3:4], r1
000314  ab0000f0  lui r1, 983040
000318  97901200  or r1, r5, r1
00031c  6b520f00  load.d r[5:6], 0(r30)
000320  733c2fd4  store.d r[3:4], -680(r30)
000324  17316102  sll.d r[3:4], r[3:4], r6
000328  0b212210  add.ul r[3:4], r[5:6], r[3:4]
00032c  1f028ffb  addli r4, r30, -576
000330  ff204100  l_gm2lm r1, r4, 0(r[3:4])
000334  00a00000  mfence { lm }
000338  c2128fa3  vload_mask16.mz vr5{mr1}, 1472(r30)
00033c  42130fc2  vload_mask16.mz vr6{mr1}, 1536(r30)
000340  46145fc2  vstore_mask16.mz vr5{mr1}, 1600(r30)
000344  46186fc2  vstore_mask16.mz vr6{mr1}, 1664(r30)
000348  00a00000  mfence { lm }
00034c  1a125002  vsub.f.mz.rn vr4{mr1}, zero, vr5
000350  9a136002  vsub.f.mz.rn vr7{mr1}, zero, vr6
000354  e3008ffc  loadli.w r1,  -448(r30)
000358  e7441ffa  storeli.w r1, -692(r30)
00035c  e34a8ffc  loadli.w r21,  -444(r30)
000360  e3009ffc  loadli.w r1,  -440(r30)
000364  67431ffa  storeli.w r1, -716(r30)
000368  e34b9ffc  loadli.w r23,  -436(r30)
00036c  630caffc  loadli.w r24,  -432(r30)
000370  e34caffc  loadli.w r25,  -428(r30)
000374  630dbffc  loadli.w r26,  -424(r30)
000378  e34dbffc  loadli.w r27,  -420(r30)
00037c  630ecffc  loadli.w r28,  -416(r30)
000380  e340cffc  loadli.w r1,  -412(r30)
000384  e74b1ffa  storeli.w r1, -580(r30)
000388  e300dffc  loadli.w r1,  -408(r30)
00038c  e70b1ffa  storeli.w r1, -584(r30)
000390  e340dffc  loadli.w r1,  -404(r30)
000394  674b1ffa  storeli.w r1, -588(r30)
000398  e300effc  loadli.w r1,  -400(r30)
00039c  670b1ffa  storeli.w r1, -592(r30)
0003a0  e340effc  loadli.w r1,  -396(r30)
0003a4  e74a1ffa  storeli.w r1, -596(r30)
0003a8  e300fffc  loadli.w r1,  -392(r30)
0003ac  e70a1ffa  storeli.w r1, -600(r30)
0003b0  e340fffc  loadli.w r1,  -388(r30)
0003b4  674a1ffa  storeli.w r1, -604(r30)
0003b8  e3000ffd  loadli.w r1,  -384(r30)
0003bc  e7031ffa  storeli.w r1, -712(r30)
0003c0  e3400ffd  loadli.w r1,  -380(r30)
0003c4  670a1ffa  storeli.w r1, -608(r30)
0003c8  e3001ffd  loadli.w r1,  -376(r30)
0003cc  e7491ffa  storeli.w r1, -612(r30)
0003d0  e3401ffd  loadli.w r1,  -372(r30)
0003d4  e7091ffa  storeli.w r1, -616(r30)
0003d8  e3002ffd  loadli.w r1,  -368(r30)
0003dc  67491ffa  storeli.w r1, -620(r30)
0003e0  e3402ffd  loadli.w r1,  -364(r30)
0003e4  67091ffa  storeli.w r1, -624(r30)
0003e8  e3003ffd  loadli.w r1,  -360(r30)
0003ec  e7481ffa  storeli.w r1, -628(r30)
0003f0  e3403ffd  loadli.w r1,  -356(r30)
0003f4  e7081ffa  storeli.w r1, -632(r30)
0003f8  e3004ffd  loadli.w r1,  -352(r30)
0003fc  67481ffa  storeli.w r1, -636(r30)
000400  e3404ffd  loadli.w r1,  -348(r30)
000404  67081ffa  storeli.w r1, -640(r30)
000408  e3005ffd  loadli.w r1,  -344(r30)
00040c  e7471ffa  storeli.w r1, -644(r30)
000410  e3405ffd  loadli.w r1,  -340(r30)
000414  e7071ffa  storeli.w r1, -648(r30)
000418  e3006ffd  loadli.w r1,  -336(r30)
00041c  67471ffa  storeli.w r1, -652(r30)
000420  e3406ffd  loadli.w r1,  -332(r30)
000424  67071ffa  storeli.w r1, -656(r30)
000428  630b7ffd  loadli.w r22,  -328(r30)
00042c  e3407ffd  loadli.w r1,  -324(r30)
000430  67451ffa  storeli.w r1, -684(r30)
000434  46104fe2  vstore_mask16.mz vr4{mr1}, 1792(r30)
000438  46147fe2  vstore_mask16.mz vr7{mr1}, 1856(r30)
00043c  00a00000  mfence { lm }
000440  e3000a00  loadli.w r1,  0(r20)
000444  63410a00  loadli.w r2,  4(r20)
000448  e3011a00  loadli.w r3,  8(r20)
00044c  63421a00  loadli.w r4,  12(r20)
000450  e3022a00  loadli.w r5,  16(r20)
000454  63432a00  loadli.w r6,  20(r20)
000458  e3033a00  loadli.w r7,  24(r20)
00045c  63443a00  loadli.w r8,  28(r20)
000460  e3044a00  loadli.w r9,  32(r20)
000464  63454a00  loadli.w r10,  36(r20)
000468  e3055a00  loadli.w r11,  40(r20)
00046c  63465a00  loadli.w r12,  44(r20)
000470  e3066a00  loadli.w r13,  48(r20)
000474  e3486a00  loadli.w r17,  52(r20)
000478  63097a00  loadli.w r18,  56(r20)
00047c  e3497a00  loadli.w r19,  60(r20)
000480  8f800000  exp.f.rn r1, r1
000484  0f010100  exp.f.rn r2, r2
000488  8f810100  exp.f.rn r3, r3
00048c  0f020200  exp.f.rn r4, r4
000490  8f820200  exp.f.rn r5, r5
000494  0f030300  exp.f.rn r6, r6
000498  8f830300  exp.f.rn r7, r7
00049c  0f040400  exp.f.rn r8, r8
0004a0  8f840400  exp.f.rn r9, r9
0004a4  0f050500  exp.f.rn r10, r10
0004a8  8f850500  exp.f.rn r11, r11
0004ac  0f060600  exp.f.rn r12, r12
0004b0  8f860600  exp.f.rn r13, r13
0004b4  8f880800  exp.f.rn r17, r17
0004b8  0f090900  exp.f.rn r18, r18
0004bc  8f890900  exp.f.rn r19, r19
0004c0  67001a00  storeli.w r1, 0(r20)
0004c4  67402a00  storeli.w r2, 4(r20)
0004c8  e7003a00  storeli.w r3, 8(r20)
0004cc  e7404a00  storeli.w r4, 12(r20)
0004d0  67015a00  storeli.w r5, 16(r20)
0004d4  67416a00  storeli.w r6, 20(r20)
0004d8  e7017a00  storeli.w r7, 24(r20)
0004dc  e7418a00  storeli.w r8, 28(r20)
0004e0  67029a00  storeli.w r9, 32(r20)
0004e4  6742aa00  storeli.w r10, 36(r20)
0004e8  e702ba00  storeli.w r11, 40(r20)
0004ec  e742ca00  storeli.w r12, 44(r20)
0004f0  6703da00  storeli.w r13, 48(r20)
0004f4  67431a01  storeli.w r17, 52(r20)
0004f8  e7032a01  storeli.w r18, 56(r20)
0004fc  e7433a01  storeli.w r19, 60(r20)
000500  e3008a00  loadli.w r1,  64(r20)
000504  63418a00  loadli.w r2,  68(r20)
000508  e3019a00  loadli.w r3,  72(r20)
00050c  63429a00  loadli.w r4,  76(r20)
000510  e302aa00  loadli.w r5,  80(r20)
000514  6343aa00  loadli.w r6,  84(r20)
000518  e303ba00  loadli.w r7,  88(r20)
00051c  6344ba00  loadli.w r8,  92(r20)
000520  e304ca00  loadli.w r9,  96(r20)
000524  6345ca00  loadli.w r10,  100(r20)
000528  e305da00  loadli.w r11,  104(r20)
00052c  6346da00  loadli.w r12,  108(r20)
000530  e306ea00  loadli.w r13,  112(r20)
000534  e348ea00  loadli.w r17,  116(r20)
000538  6309fa00  loadli.w r18,  120(r20)
00053c  e349fa00  loadli.w r19,  124(r20)
000540  8f800000  exp.f.rn r1, r1
000544  0f010100  exp.f.rn r2, r2
000548  8f810100  exp.f.rn r3, r3
00054c  0f020200  exp.f.rn r4, r4
000550  8f820200  exp.f.rn r5, r5
000554  0f030300  exp.f.rn r6, r6
000558  8f830300  exp.f.rn r7, r7
00055c  0f040400  exp.f.rn r8, r8
000560  8f840400  exp.f.rn r9, r9
000564  0f050500  exp.f.rn r10, r10
000568  8f850500  exp.f.rn r11, r11
00056c  0f060600  exp.f.rn r12, r12
000570  8f860600  exp.f.rn r13, r13
000574  8f880800  exp.f.rn r17, r17
000578  0f090900  exp.f.rn r18, r18
00057c  8f890900  exp.f.rn r19, r19
000580  67041a00  storeli.w r1, 64(r20)
000584  67442a00  storeli.w r2, 68(r20)
000588  e7043a00  storeli.w r3, 72(r20)
00058c  e7444a00  storeli.w r4, 76(r20)
000590  67055a00  storeli.w r5, 80(r20)
000594  67456a00  storeli.w r6, 84(r20)
000598  e7057a00  storeli.w r7, 88(r20)
00059c  e7458a00  storeli.w r8, 92(r20)
0005a0  67069a00  storeli.w r9, 96(r20)
0005a4  6746aa00  storeli.w r10, 100(r20)
0005a8  e706ba00  storeli.w r11, 104(r20)
0005ac  e746ca00  storeli.w r12, 108(r20)
0005b0  6707da00  storeli.w r13, 112(r20)
0005b4  67471a01  storeli.w r17, 116(r20)
0005b8  e7072a01  storeli.w r18, 120(r20)
0005bc  e7473a01  storeli.w r19, 124(r20)
0005c0  00a00000  mfence { lm }
0005c4  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
0005c8  2b02803f  lui r4, 260096
0005cc  12144202  vadd.f.mz.rn vr8{mr1}, r4, vr4
0005d0  fa100440  vextracti.f r1, 0(vr8)
0005d4  7a910240  vextracti.f r2, 0(vr5)
0005d8  fa911240  vextracti.f r3, 1(vr5)
0005dc  c2138fe2  vload_mask16.mz vr7{mr1}, 1856(r30)
0005e0  fa120340  vextracti.f r5, 0(vr6)
0005e4  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0005e8  92137202  vadd.f.mz.rn vr7{mr1}, r4, vr7
0005ec  7a920340  vextracti.f r4, 0(vr7)
0005f0  8f001118  div.f.rn r1, r2, r1
0005f4  7a111440  vextracti.f r2, 1(vr8)
0005f8  0f812118  div.f.rn r2, r3, r2
0005fc  9f110000  addli r3, zero, 1
000600  7e8101e0  vmmov mr2, r3
000604  fa912240  vextracti.f r3, 2(vr5)
000608  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
00060c  fa102440  vextracti.f r1, 2(vr8)
000610  8f801118  div.f.rn r1, r3, r1
000614  9f210000  addli r3, zero, 2
000618  fe8101e0  vmmov mr3, r3
00061c  fa913240  vextracti.f r3, 3(vr5)
000620  6a224136  vor.u.mh vr4{mr3}, r2, vr4
000624  7a113440  vextracti.f r2, 3(vr8)
000628  0f812118  div.f.rn r2, r3, r2
00062c  9f410000  addli r3, zero, 4
000630  7e8001e0  vmmov mr0, r3
000634  fa914240  vextracti.f r3, 4(vr5)
000638  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
00063c  fa104440  vextracti.f r1, 4(vr8)
000640  8f801118  div.f.rn r1, r3, r1
000644  9f011000  addli r3, zero, 8
000648  7e8001e0  vmmov mr0, r3
00064c  fa915240  vextracti.f r3, 5(vr5)
000650  6a224130  vor.u.mh vr4{mr0}, r2, vr4
000654  7a115440  vextracti.f r2, 5(vr8)
000658  0f812118  div.f.rn r2, r3, r2
00065c  9f012000  addli r3, zero, 16
000660  7e8001e0  vmmov mr0, r3
000664  fa916240  vextracti.f r3, 6(vr5)
000668  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
00066c  fa106440  vextracti.f r1, 6(vr8)
000670  8f801118  div.f.rn r1, r3, r1
000674  9f014000  addli r3, zero, 32
000678  7e8001e0  vmmov mr0, r3
00067c  fa917240  vextracti.f r3, 7(vr5)
000680  6a224130  vor.u.mh vr4{mr0}, r2, vr4
000684  7a117440  vextracti.f r2, 7(vr8)
000688  0f812118  div.f.rn r2, r3, r2
00068c  9f018000  addli r3, zero, 64
000690  7e8001e0  vmmov mr0, r3
000694  fa918240  vextracti.f r3, 8(vr5)
000698  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
00069c  fa108440  vextracti.f r1, 8(vr8)
0006a0  8f801118  div.f.rn r1, r3, r1
0006a4  9f010001  addli r3, zero, 128
0006a8  7e8001e0  vmmov mr0, r3
0006ac  fa919240  vextracti.f r3, 9(vr5)
0006b0  6a224130  vor.u.mh vr4{mr0}, r2, vr4
0006b4  7a119440  vextracti.f r2, 9(vr8)
0006b8  0f812118  div.f.rn r2, r3, r2
0006bc  9f010002  addli r3, zero, 256
0006c0  7e8001e0  vmmov mr0, r3
0006c4  fa91a240  vextracti.f r3, 10(vr5)
0006c8  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0006cc  fa10a440  vextracti.f r1, 10(vr8)
0006d0  8f801118  div.f.rn r1, r3, r1
0006d4  9f010004  addli r3, zero, 512
0006d8  7e8001e0  vmmov mr0, r3
0006dc  fa91b240  vextracti.f r3, 11(vr5)
0006e0  6a224130  vor.u.mh vr4{mr0}, r2, vr4
0006e4  7a11b440  vextracti.f r2, 11(vr8)
0006e8  0f812118  div.f.rn r2, r3, r2
0006ec  9f010008  addli r3, zero, 1024
0006f0  7e8001e0  vmmov mr0, r3
0006f4  fa91c240  vextracti.f r3, 12(vr5)
0006f8  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0006fc  fa10c440  vextracti.f r1, 12(vr8)
000700  8f801118  div.f.rn r1, r3, r1
000704  9f010010  addli r3, zero, 2048
000708  7e8001e0  vmmov mr0, r3
00070c  fa91d240  vextracti.f r3, 13(vr5)
000710  6a224130  vor.u.mh vr4{mr0}, r2, vr4
000714  7a11d440  vextracti.f r2, 13(vr8)
000718  0f812118  div.f.rn r2, r3, r2
00071c  9f010020  addli r3, zero, 4096
000720  7e8001e0  vmmov mr0, r3
000724  fa91e240  vextracti.f r3, 14(vr5)
000728  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
00072c  fa10e440  vextracti.f r1, 14(vr8)
000730  8f801118  div.f.rn r1, r3, r1
000734  9f010040  addli r3, zero, 8192
000738  7e8001e0  vmmov mr0, r3
00073c  fa91f240  vextracti.f r3, 15(vr5)
000740  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000744  6a224130  vor.u.mh vr4{mr0}, r2, vr4
000748  7a11f440  vextracti.f r2, 15(vr8)
00074c  0f812118  div.f.rn r2, r3, r2
000750  8f814218  div.f.rn r3, r5, r4
000754  2b420000  lui r4, 4
000758  ab820000  lui r5, 8
00075c  7e0102e0  vmmov mr2, r4
000760  7e8002e0  vmmov mr0, r5
000764  7a121340  vextracti.f r4, 1(vr6)
000768  fa12e340  vextracti.f r5, 14(vr6)
00076c  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
000770  fa901340  vextracti.f r1, 1(vr7)
000774  8f001218  div.f.rn r1, r4, r1
000778  7a92e340  vextracti.f r4, 14(vr7)
00077c  6a224130  vor.u.mh vr4{mr0}, r2, vr4
000780  1f110000  addli r2, zero, 1
000784  fe0101e0  vmmov mr3, r2
000788  7a912340  vextracti.f r2, 2(vr7)
00078c  eaa25136  vor.u.mh vr5{mr3}, r3, vr5
000790  fa112340  vextracti.f r3, 2(vr6)
000794  0f812118  div.f.rn r2, r3, r2
000798  9f210000  addli r3, zero, 2
00079c  fe8101e0  vmmov mr3, r3
0007a0  fa113340  vextracti.f r3, 3(vr6)
0007a4  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
0007a8  fa903340  vextracti.f r1, 3(vr7)
0007ac  8f801118  div.f.rn r1, r3, r1
0007b0  9f410000  addli r3, zero, 4
0007b4  fe8101e0  vmmov mr3, r3
0007b8  fa114340  vextracti.f r3, 4(vr6)
0007bc  ea225136  vor.u.mh vr5{mr3}, r2, vr5
0007c0  7a914340  vextracti.f r2, 4(vr7)
0007c4  0f812118  div.f.rn r2, r3, r2
0007c8  9f011000  addli r3, zero, 8
0007cc  fe8101e0  vmmov mr3, r3
0007d0  fa115340  vextracti.f r3, 5(vr6)
0007d4  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
0007d8  fa905340  vextracti.f r1, 5(vr7)
0007dc  8f801118  div.f.rn r1, r3, r1
0007e0  9f012000  addli r3, zero, 16
0007e4  fe8101e0  vmmov mr3, r3
0007e8  fa116340  vextracti.f r3, 6(vr6)
0007ec  ea225136  vor.u.mh vr5{mr3}, r2, vr5
0007f0  7a916340  vextracti.f r2, 6(vr7)
0007f4  0f812118  div.f.rn r2, r3, r2
0007f8  9f014000  addli r3, zero, 32
0007fc  fe8101e0  vmmov mr3, r3
000800  fa117340  vextracti.f r3, 7(vr6)
000804  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000808  fa907340  vextracti.f r1, 7(vr7)
00080c  8f801118  div.f.rn r1, r3, r1
000810  9f018000  addli r3, zero, 64
000814  fe8101e0  vmmov mr3, r3
000818  fa118340  vextracti.f r3, 8(vr6)
00081c  ea225136  vor.u.mh vr5{mr3}, r2, vr5
000820  7a918340  vextracti.f r2, 8(vr7)
000824  0f812118  div.f.rn r2, r3, r2
000828  9f010001  addli r3, zero, 128
00082c  fe8101e0  vmmov mr3, r3
000830  fa119340  vextracti.f r3, 9(vr6)
000834  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000838  fa909340  vextracti.f r1, 9(vr7)
00083c  8f801118  div.f.rn r1, r3, r1
000840  9f010002  addli r3, zero, 256
000844  fe8101e0  vmmov mr3, r3
000848  fa11a340  vextracti.f r3, 10(vr6)
00084c  ea225136  vor.u.mh vr5{mr3}, r2, vr5
000850  7a91a340  vextracti.f r2, 10(vr7)
000854  0f812118  div.f.rn r2, r3, r2
000858  9f010004  addli r3, zero, 512
00085c  fe8101e0  vmmov mr3, r3
000860  fa11b340  vextracti.f r3, 11(vr6)
000864  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000868  fa90b340  vextracti.f r1, 11(vr7)
00086c  8f801118  div.f.rn r1, r3, r1
000870  9f010008  addli r3, zero, 1024
000874  fe8101e0  vmmov mr3, r3
000878  fa11c340  vextracti.f r3, 12(vr6)
00087c  ea225136  vor.u.mh vr5{mr3}, r2, vr5
000880  7a91c340  vextracti.f r2, 12(vr7)
000884  0f812118  div.f.rn r2, r3, r2
000888  9f010010  addli r3, zero, 2048
00088c  fe8101e0  vmmov mr3, r3
000890  fa11d340  vextracti.f r3, 13(vr6)
000894  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
000898  fa90d340  vextracti.f r1, 13(vr7)
00089c  8f801118  div.f.rn r1, r3, r1
0008a0  8f814218  div.f.rn r3, r5, r4
0008a4  1f020020  addli r4, zero, 4096
0008a8  9f020040  addli r5, zero, 8192
0008ac  fe0102e0  vmmov mr3, r4
0008b0  7a12f340  vextracti.f r4, 15(vr6)
0008b4  ea225136  vor.u.mh vr5{mr3}, r2, vr5
0008b8  7a91f340  vextracti.f r2, 15(vr7)
0008bc  fe8102e0  vmmov mr3, r5
0008c0  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
0008c4  8f002218  div.f.rn r1, r4, r2
0008c8  eaa25134  vor.u.mh vr5{mr2}, r3, vr5
0008cc  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0008d0  9f200000  addli r1, zero, 2
0008d4  e7465ffb  storeli.w r21, -660(r30)
0008d8  37d0fa00  beq r21, r15, 20
0008dc  e340dffa  loadli.w r1,  -660(r30)
0008e0  97800001  and r1, r1, r16
0008e4  93001704  setlt.u r1, r14, r1
0008e8  9bb01000  slli r1, r1, 1
0008ec  63456ffa  loadli.w r10,  -716(r30)
0008f0  67031ffa  storeli.w r1, -720(r30)
0008f4  1f430000  addli r6, zero, 4
0008f8  9f400000  addli r1, zero, 4
0008fc  3740f500  beq r10, r15, 16
000900  97000501  and r1, r10, r16
000904  93001704  setlt.u r1, r14, r1
000908  9bb02000  slli r1, r1, 2
00090c  e7021ffa  storeli.w r1, -728(r30)
000910  9f031000  addli r7, zero, 8
000914  9f001000  addli r1, zero, 8
000918  9f010b00  addli r3, r22, 0
00091c  37c0fb00  beq r23, r15, 16
000920  97800b01  and r1, r23, r16
000924  93001704  setlt.u r1, r14, r1
000928  9bb03000  slli r1, r1, 3
00092c  e7421ffa  storeli.w r1, -724(r30)
000930  9f042000  addli r9, zero, 16
000934  9f002000  addli r1, zero, 16
000938  3740fc00  beq r24, r15, 16
00093c  97000c01  and r1, r24, r16
000940  93001704  setlt.u r1, r14, r1
000944  9bb04000  slli r1, r1, 4
000948  67421ffa  storeli.w r1, -732(r30)
00094c  67057ffb  storeli.w r23, -688(r30)
000950  9f0b4000  addli r23, zero, 32
000954  9f004000  addli r1, zero, 32
000958  37c0fc00  beq r25, r15, 16
00095c  97800c01  and r1, r25, r16
000960  93001704  setlt.u r1, r14, r1
000964  9bb05000  slli r1, r1, 5
000968  67021ffa  storeli.w r1, -736(r30)
00096c  9f008000  addli r1, zero, 64
000970  e7048ffb  storeli.w r24, -696(r30)
000974  3740fd00  beq r26, r15, 16
000978  97000d01  and r1, r26, r16
00097c  93001704  setlt.u r1, r14, r1
000980  9bb06000  slli r1, r1, 6
000984  e7411ffa  storeli.w r1, -740(r30)
000988  9f000001  addli r1, zero, 128
00098c  67449ffb  storeli.w r25, -700(r30)
000990  37c0fd00  beq r27, r15, 16
000994  97800d01  and r1, r27, r16
000998  93001704  setlt.u r1, r14, r1
00099c  9bb07000  slli r1, r1, 7
0009a0  6704bffb  storeli.w r27, -704(r30)
0009a4  9f0c0002  addli r25, zero, 256
0009a8  9f0d0002  addli r27, zero, 256
0009ac  67011ffa  storeli.w r1, -752(r30)
0009b0  3740fe00  beq r28, r15, 16
0009b4  97000e01  and r1, r28, r16
0009b8  93001704  setlt.u r1, r14, r1
0009bc  9bbd8000  slli r27, r1, 8
0009c0  e3407ffb  loadli.w r1,  -580(r30)
0009c4  e743cffb  storeli.w r28, -708(r30)
0009c8  1f0e0004  addli r28, zero, 512
0009cc  1f020004  addli r4, zero, 512
0009d0  37d0f000  beq r1, r15, 20
0009d4  e3407ffb  loadli.w r1,  -580(r30)
0009d8  97800001  and r1, r1, r16
0009dc  93001704  setlt.u r1, r14, r1
0009e0  1bb29000  slli r4, r1, 9
0009e4  e3007ffb  loadli.w r1,  -584(r30)
0009e8  9f020008  addli r5, zero, 1024
0009ec  1f040008  addli r8, zero, 1024
0009f0  37d0f000  beq r1, r15, 20
0009f4  e3007ffb  loadli.w r1,  -584(r30)
0009f8  97800001  and r1, r1, r16
0009fc  93001704  setlt.u r1, r14, r1
000a00  1bb4a000  slli r8, r1, 10
000a04  e3406ffb  loadli.w r1,  -588(r30)
000a08  1f010010  addli r2, zero, 2048
000a0c  1f0b0010  addli r22, zero, 2048
000a10  37d0f000  beq r1, r15, 20
000a14  e3406ffb  loadli.w r1,  -588(r30)
000a18  97800001  and r1, r1, r16
000a1c  93001704  setlt.u r1, r14, r1
000a20  1bbbb000  slli r22, r1, 11
000a24  e3006ffb  loadli.w r1,  -592(r30)
000a28  9f080020  addli r17, zero, 4096
000a2c  9f050020  addli r11, zero, 4096
000a30  37d0f000  beq r1, r15, 20
000a34  e3006ffb  loadli.w r1,  -592(r30)
000a38  97800001  and r1, r1, r16
000a3c  93001704  setlt.u r1, r14, r1
000a40  9bb5c000  slli r11, r1, 12
000a44  e3405ffb  loadli.w r1,  -596(r30)
000a48  1f090040  addli r18, zero, 8192
000a4c  1f060040  addli r12, zero, 8192
000a50  37d0f000  beq r1, r15, 20
000a54  e3405ffb  loadli.w r1,  -596(r30)
000a58  97800001  and r1, r1, r16
000a5c  93001704  setlt.u r1, r14, r1
000a60  1bb6d000  slli r12, r1, 13
000a64  e3005ffb  loadli.w r1,  -600(r30)
000a68  ab4a0000  lui r21, 4
000a6c  ab460000  lui r13, 4
000a70  37d0f000  beq r1, r15, 20
000a74  e3005ffb  loadli.w r1,  -600(r30)
000a78  97800001  and r1, r1, r16
000a7c  93001704  setlt.u r1, r14, r1
000a80  9bb6e000  slli r13, r1, 14
000a84  e3404ffb  loadli.w r1,  -604(r30)
000a88  ab890000  lui r19, 8
000a8c  bbabf000  bneq r1, r15, 744
000a90  e3004ffb  loadli.w r1,  -608(r30)
000a94  bbebf000  bneq r1, r15, 760
000a98  e3403ffb  loadli.w r1,  -612(r30)
000a9c  3bbcf000  bneq r1, r15, 780
000aa0  e3003ffb  loadli.w r1,  -616(r30)
000aa4  3bfcf000  bneq r1, r15, 796
000aa8  e3402ffb  loadli.w r1,  -620(r30)
000aac  37d0f000  beq r1, r15, 20
000ab0  e3402ffb  loadli.w r1,  -620(r30)
000ab4  97800001  and r1, r1, r16
000ab8  93001704  setlt.u r1, r14, r1
000abc  9bb44000  slli r9, r1, 4
000ac0  e3002ffb  loadli.w r1,  -624(r30)
000ac4  e740dffa  storeli.w r13, -756(r30)
000ac8  37d0f000  beq r1, r15, 20
000acc  e3002ffb  loadli.w r1,  -624(r30)
000ad0  97800001  and r1, r1, r16
000ad4  93001704  setlt.u r1, r14, r1
000ad8  9bbb5000  slli r23, r1, 5
000adc  e3401ffb  loadli.w r1,  -628(r30)
000ae0  9f068000  addli r13, zero, 64
000ae4  bbebf000  bneq r1, r15, 760
000ae8  e3001ffb  loadli.w r1,  -632(r30)
000aec  3bacf000  bneq r1, r15, 776
000af0  e3400ffb  loadli.w r1,  -636(r30)
000af4  3bfcf000  bneq r1, r15, 796
000af8  e3000ffb  loadli.w r1,  -640(r30)
000afc  bbbcf000  bneq r1, r15, 812
000b00  e340fffa  loadli.w r1,  -644(r30)
000b04  bbfcf000  bneq r1, r15, 828
000b08  e300fffa  loadli.w r1,  -648(r30)
000b0c  3bbdf000  bneq r1, r15, 844
000b10  e340effa  loadli.w r1,  -652(r30)
000b14  37d0f000  beq r1, r15, 20
000b18  e340effa  loadli.w r1,  -652(r30)
000b1c  97800001  and r1, r1, r16
000b20  93001704  setlt.u r1, r14, r1
000b24  9bb8c000  slli r17, r1, 12
000b28  e300effa  loadli.w r1,  -656(r30)
000b2c  e7003ffb  storeli.w r19, -760(r30)
000b30  e7011ffb  storeli.w r17, -744(r30)
000b34  37d0f000  beq r1, r15, 20
000b38  e300effa  loadli.w r1,  -656(r30)
000b3c  97800001  and r1, r1, r16
000b40  93001704  setlt.u r1, r14, r1
000b44  1bb9d000  slli r18, r1, 13
000b48  9f880300  addli r17, r7, 0
000b4c  9f090300  addli r19, r6, 0
000b50  1f0c0d00  addli r24, r26, 0
000b54  67412ffb  storeli.w r18, -748(r30)
000b58  37c0f100  beq r3, r15, 16
000b5c  97800101  and r1, r3, r16
000b60  93001704  setlt.u r1, r14, r1
000b64  9bbae000  slli r21, r1, 14
000b68  634d9ffa  loadli.w r26,  -692(r30)
000b6c  63097ffa  loadli.w r18,  -712(r30)
000b70  1f8a0100  addli r20, r3, 0
000b74  97000d01  and r1, r26, r16
000b78  9301fd00  seteq r3, r26, r15
000b7c  17030901  and r6, r18, r16
000b80  9303f900  seteq r7, r18, r15
000b84  93001704  setlt.u r1, r14, r1
000b88  13036704  setlt.u r6, r14, r6
000b8c  97901100  or r1, r3, r1
000b90  e3016ffa  loadli.w r3,  -720(r30)
000b94  97901100  or r1, r3, r1
000b98  97916300  or r3, r7, r6
000b9c  63035ffa  loadli.w r6,  -728(r30)
000ba0  97906000  or r1, r1, r6
000ba4  6343cffa  loadli.w r6,  -668(r30)
000ba8  97113300  or r3, r6, r3
000bac  63435ffa  loadli.w r6,  -724(r30)
000bb0  97913101  or r3, r3, r19
000bb4  97906000  or r1, r1, r6
000bb8  63434ffa  loadli.w r6,  -732(r30)
000bbc  97911101  or r3, r3, r17
000bc0  97906000  or r1, r1, r6
000bc4  63034ffa  loadli.w r6,  -736(r30)
000bc8  97919100  or r3, r3, r9
000bcc  97917101  or r3, r3, r23
000bd0  97906000  or r1, r1, r6
000bd4  63433ffa  loadli.w r6,  -740(r30)
000bd8  9791d100  or r3, r3, r13
000bdc  97906000  or r1, r1, r6
000be0  63032ffa  loadli.w r6,  -752(r30)
000be4  97906000  or r1, r1, r6
000be8  6303dffa  loadli.w r6,  -664(r30)
000bec  9790b001  or r1, r1, r27
000bf0  97916100  or r3, r3, r6
000bf4  1303e900  seteq r6, r18, r14
000bf8  63492ffb  loadli.w r18,  -620(r30)
000bfc  97904000  or r1, r1, r4
000c00  97919101  or r3, r3, r25
000c04  97908000  or r1, r1, r8
000c08  1304ed00  seteq r8, r26, r14
000c0c  130de900  seteq r26, r18, r14
000c10  63092ffb  loadli.w r18,  -624(r30)
000c14  9791c101  or r3, r3, r28
000c18  97906001  or r1, r1, r22
000c1c  97915100  or r3, r3, r5
000c20  130ee900  seteq r28, r18, r14
000c24  63491ffb  loadli.w r18,  -628(r30)
000c28  9790b000  or r1, r1, r11
000c2c  97982100  or r17, r3, r2
000c30  1301ec00  seteq r2, r24, r14
000c34  9799c000  or r19, r1, r12
000c38  e340dffa  loadli.w r1,  -660(r30)
000c3c  1306e500  seteq r12, r10, r14
000c40  930ce900  seteq r25, r18, r14
000c44  63091ffb  loadli.w r18,  -632(r30)
000c48  9386e000  seteq r13, r1, r14
000c4c  e300affa  loadli.w r1,  -688(r30)
000c50  130ce900  seteq r24, r18, r14
000c54  63490ffb  loadli.w r18,  -636(r30)
000c58  9385e000  seteq r11, r1, r14
000c5c  e3009ffa  loadli.w r1,  -696(r30)
000c60  930be900  seteq r23, r18, r14
000c64  63090ffb  loadli.w r18,  -640(r30)
000c68  9382e000  seteq r5, r1, r14
000c6c  e3408ffa  loadli.w r1,  -700(r30)
000c70  1309e900  seteq r18, r18, r14
000c74  1382e000  seteq r4, r1, r14
000c78  e3008ffa  loadli.w r1,  -704(r30)
000c7c  1385e000  seteq r10, r1, r14
000c80  e3407ffa  loadli.w r1,  -708(r30)
000c84  9384e000  seteq r9, r1, r14
000c88  e3407ffb  loadli.w r1,  -580(r30)
000c8c  938de000  seteq r27, r1, r14
000c90  e3007ffb  loadli.w r1,  -584(r30)
000c94  138be000  seteq r22, r1, r14
000c98  e3406ffb  loadli.w r1,  -588(r30)
000c9c  9380e000  seteq r1, r1, r14
000ca0  e7061ffa  storeli.w r1, -664(r30)
000ca4  e3006ffb  loadli.w r1,  -592(r30)
000ca8  9380e000  seteq r1, r1, r14
000cac  e7461ffa  storeli.w r1, -660(r30)
000cb0  e3405ffb  loadli.w r1,  -596(r30)
000cb4  9380e000  seteq r1, r1, r14
000cb8  674b1ffa  storeli.w r1, -588(r30)
000cbc  e3005ffb  loadli.w r1,  -600(r30)
000cc0  9380e000  seteq r1, r1, r14
000cc4  e70b1ffa  storeli.w r1, -584(r30)
000cc8  e3404ffb  loadli.w r1,  -604(r30)
000ccc  9380e000  seteq r1, r1, r14
000cd0  e74b1ffa  storeli.w r1, -580(r30)
000cd4  e3004ffb  loadli.w r1,  -608(r30)
000cd8  9381e000  seteq r3, r1, r14
000cdc  e3403ffb  loadli.w r1,  -612(r30)
000ce0  9383e000  seteq r7, r1, r14
000ce4  e3003ffb  loadli.w r1,  -616(r30)
000ce8  e7092ffb  storeli.w r18, -616(r30)
000cec  6349fffa  loadli.w r18,  -644(r30)
000cf0  1309e900  seteq r18, r18, r14
000cf4  9380e000  seteq r1, r1, r14
000cf8  e7492ffb  storeli.w r18, -612(r30)
000cfc  6309fffa  loadli.w r18,  -648(r30)
000d00  1309e900  seteq r18, r18, r14
000d04  670a2ffb  storeli.w r18, -608(r30)
000d08  6349effa  loadli.w r18,  -652(r30)
000d0c  1309e900  seteq r18, r18, r14
000d10  674a2ffb  storeli.w r18, -604(r30)
000d14  6309effa  loadli.w r18,  -656(r30)
000d18  1309e900  seteq r18, r18, r14
000d1c  e70a2ffb  storeli.w r18, -600(r30)
000d20  1309ea00  seteq r18, r20, r14
000d24  e74a2ffb  storeli.w r18, -596(r30)
000d28  6349affa  loadli.w r18,  -684(r30)
000d2c  130ae900  seteq r20, r18, r14
000d30  670b4ffb  storeli.w r20, -592(r30)
000d34  630a3ffa  loadli.w r20,  -744(r30)
000d38  97984801  or r17, r17, r20
000d3c  634a1ffa  loadli.w r20,  -756(r30)
000d40  97994901  or r19, r19, r20
000d44  634a2ffa  loadli.w r20,  -748(r30)
000d48  97984801  or r17, r17, r20
000d4c  630a1ffa  loadli.w r20,  -760(r30)
000d50  97985801  or r17, r17, r21
000d54  97994901  or r19, r19, r20
000d58  7e8109e0  vmmov mr2, r19
000d5c  ab890000  lui r19, 8
000d60  b70ff9f8  beq r18, r15, -3104
000d64  17090901  and r18, r18, r16
000d68  13092705  setlt.u r18, r14, r18
000d6c  9b39f900  slli r19, r18, 15
000d70  5b7afeff  j -3120
000d74  e3404ffb  loadli.w r1,  -604(r30)
000d78  97800001  and r1, r1, r16
000d7c  93001704  setlt.u r1, r14, r1
000d80  9bb9f000  slli r19, r1, 15
000d84  e3004ffb  loadli.w r1,  -608(r30)
000d88  37c4f0fe  beq r1, r15, -752
000d8c  e3004ffb  loadli.w r1,  -608(r30)
000d90  97800001  and r1, r1, r16
000d94  93001704  setlt.u r1, r14, r1
000d98  9bb01000  slli r1, r1, 1
000d9c  67461ffa  storeli.w r1, -668(r30)
000da0  e3403ffb  loadli.w r1,  -612(r30)
000da4  b7f3f0fe  beq r1, r15, -772
000da8  e3403ffb  loadli.w r1,  -612(r30)
000dac  97800001  and r1, r1, r16
000db0  93001704  setlt.u r1, r14, r1
000db4  1bb32000  slli r6, r1, 2
000db8  e3003ffb  loadli.w r1,  -616(r30)
000dbc  b7b3f0fe  beq r1, r15, -788
000dc0  e3003ffb  loadli.w r1,  -616(r30)
000dc4  97800001  and r1, r1, r16
000dc8  93001704  setlt.u r1, r14, r1
000dcc  9bb33000  slli r7, r1, 3
000dd0  e3402ffb  loadli.w r1,  -620(r30)
000dd4  3bf3f0fe  bneq r1, r15, -804
000dd8  5b9dffff  j -792
000ddc  e3401ffb  loadli.w r1,  -628(r30)
000de0  97800001  and r1, r1, r16
000de4  93001704  setlt.u r1, r14, r1
000de8  9bb66000  slli r13, r1, 6
000dec  e3001ffb  loadli.w r1,  -632(r30)
000df0  3784f0fe  beq r1, r15, -768
000df4  e3001ffb  loadli.w r1,  -632(r30)
000df8  97800001  and r1, r1, r16
000dfc  93001704  setlt.u r1, r14, r1
000e00  9bb07000  slli r1, r1, 7
000e04  e7061ffa  storeli.w r1, -664(r30)
000e08  e3400ffb  loadli.w r1,  -636(r30)
000e0c  b7b3f0fe  beq r1, r15, -788
000e10  e3400ffb  loadli.w r1,  -636(r30)
000e14  97800001  and r1, r1, r16
000e18  93001704  setlt.u r1, r14, r1
000e1c  9bbc8000  slli r25, r1, 8
000e20  e3000ffb  loadli.w r1,  -640(r30)
000e24  37f3f0fe  beq r1, r15, -804
000e28  e3000ffb  loadli.w r1,  -640(r30)
000e2c  97800001  and r1, r1, r16
000e30  93001704  setlt.u r1, r14, r1
000e34  1bbe9000  slli r28, r1, 9
000e38  e340fffa  loadli.w r1,  -644(r30)
000e3c  37b3f0fe  beq r1, r15, -820
000e40  e340fffa  loadli.w r1,  -644(r30)
000e44  97800001  and r1, r1, r16
000e48  93001704  setlt.u r1, r14, r1
000e4c  9bb2a000  slli r5, r1, 10
000e50  e300fffa  loadli.w r1,  -648(r30)
000e54  b7f2f0fe  beq r1, r15, -836
000e58  e300fffa  loadli.w r1,  -648(r30)
000e5c  97800001  and r1, r1, r16
000e60  93001704  setlt.u r1, r14, r1
000e64  1bb1b000  slli r2, r1, 11
000e68  e340effa  loadli.w r1,  -652(r30)
000e6c  bbb2f0fe  bneq r1, r15, -852
000e70  5b97ffff  j -840
000e74  9f0e8ff9  addli sp, r30, -832
000e78  9f8e8e06  addli sp, sp, 832
000e7c  00a00300  mfence { lm, sm, gm }
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
001030  00100000  exit
001034  00100000  exit
001038  00100000  exit
00103c  00100000  exit
001040  00100000  exit
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
