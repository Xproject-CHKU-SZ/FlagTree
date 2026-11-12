; SHA-256 5b3a3ffe4bb693cb35b95fbf0087bb1ee803cec1443efa0bf40ee408d8851f4a
; P800 Cluster · XTDK LLVM 19 · 1600 / 1600 words decoded
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
0000dc  9f8e0ef3  addli sp, sp, -1664
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f8e0c  addli r30, sp, 1600
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
000114  9f042420  addli r9, r8, 4112
000118  0b126220  mul.s r4, r4, r6
00011c  674a9ff4  storeli.w r9, -1372(r30)
000120  73e00400  stores.w zero, 0(r9)
000124  00a00300  mfence { lm, sm, gm }
000128  80a10204  csr_set csr3, r5
00012c  00d00100  sync_group
000130  e70a8ff4  storeli.w r8, -1368(r30)
000134  73600400  stores.w zero, 0(r8)
000138  00a00300  mfence { lm, sm, gm }
00013c  e7495ff4  storeli.w r5, -1380(r30)
000140  80a10204  csr_set csr3, r5
000144  00d00100  sync_group
000148  670a4ff4  storeli.w r4, -1376(r30)
00014c  cb62c20a  ble.s r4, r12, 5304
000150  1f022000  addli r4, zero, 16
000154  00d50002  load_param_i r10, 1
000158  9f270000  addli r15, zero, 2
00015c  eb568f00  load.d r[14:15], 8(r30)
000160  eb520f02  load.d r[6:7], 32(r30)
000164  6b548f01  load.d r[9:10], 24(r30)
000168  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
00016c  0b924030  div.s r4, r1, r4
000170  e709aff4  storeli.w r10, -1384(r30)
000174  9b334200  slli r7, r4, 4
000178  1b32a200  slli r4, r4, 10
00017c  8b937018  sub.s r7, r1, r7
000180  9b80f000  andi r1, r1, 15
000184  67474ff4  storeli.w r4, -1420(r30)
000188  9bb36300  slli r7, r7, 6
00018c  67071ff4  storeli.w r1, -1424(r30)
000190  33950328  sext_int2long r[11:12], r7
000194  67497ff4  storeli.w r7, -1388(r30)
000198  abf3ffff  lui r7, 1048575
00019c  9b9303fc  ori r7, r7, 4032
0001a0  1735f502  sll.d r[11:12], r[11:12], r15
0001a4  97817100  and r3, r3, r7
0001a8  8ba6a610  add.ul r[14:15], r[14:15], r[11:12]
0001ac  0b24a410  add.ul r[9:10], r[9:10], r[11:12]
0001b0  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
0001b4  9f030002  addli r7, zero, 256
0001b8  0b912110  add.s r2, r3, r2
0001bc  7334dfa8  store.d r[14:15], -1400(r30)
0001c0  9f060ffa  addli r13, r30, -768
0001c4  1f070ffc  addli r14, r30, -512
0001c8  73308fa8  store.d r[9:10], -1408(r30)
0001cc  733c5fa6  store.d r[6:7], -1416(r30)
0001d0  9f002120  addli r1, r2, 4112
0001d4  670b2ff4  storeli.w r2, -1360(r30)
0001d8  e74a1ff4  storeli.w r1, -1364(r30)
0001dc  ab10833a  lui r1, 239665
0001e0  9b90f026  ori r1, r1, 623
0001e4  e74f1ff2  storeli.w r1, -1540(r30)
0001e8  9f000ff4  addli r1, r30, -1536
0001ec  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
0001f0  5b6a0100  j 2896
0001f4  00a00300  mfence { lm, sm, gm }
0001f8  80210204  csr_set csr3, r4
0001fc  00d00100  sync_group
000200  e3405ff5  loadli.w r1,  -1364(r30)
000204  0be13921  mul.f.rn r2, r19, r19
000208  9f010000  addli r3, zero, 0
00020c  efc00000  loads.w r1, 0(r1)
000210  8be07020  mul.f.rn r1, r1, r7
000214  0be12018  sub.f.rn r2, r1, r2
000218  d7c20200  jal 5652
00021c  e340fff3  loadli.w r1,  -1540(r30)
000220  9f028ff6  addli r5, r30, -1216
000224  ab0100f0  lui r3, 983040
000228  2b0200f0  lui r4, 983040
00022c  1f030ffc  addli r6, r30, -512
000230  42900202  vload_mask16.mz vr0{mr1}, 0(r5)
000234  ab02803f  lui r5, 260096
000238  8b601110  add.f.rn r1, r2, r1
00023c  17a14901  xor r2, r19, r20
000240  12100102  vadd.f.mz.rn vr0{mr1}, r2, vr0
000244  8f800008  sqrt.f.rn r1, r1
000248  8f801218  div.f.rn r1, r5, r1
00024c  9f020ff7  addli r5, r30, -1152
000250  8a910002  vmul.f.mz.rn vr3{mr1}, r1, vr0
000254  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
000258  9f028ff7  addli r5, r30, -1088
00025c  92101102  vadd.f.mz.rn vr1{mr1}, r2, vr1
000260  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
000264  9f020002  addli r5, zero, 256
000268  12122102  vadd.f.mz.rn vr4{mr1}, r2, vr2
00026c  42110f82  vload_mask16.mz vr2{mr1}, 1024(r30)
000270  92122102  vadd.f.mz.rn vr5{mr1}, r2, vr2
000274  0a905002  vmul.f.mz.rn vr0{mr1}, r1, vr5
000278  46100f82  vstore_mask16.mz vr0{mr1}, 1024(r30)
00027c  17913200  or r2, r5, r3
000280  97914200  or r3, r5, r4
000284  6b520fa8  load.d r[5:6], -1408(r30)
000288  0a911002  vmul.f.mz.rn vr2{mr1}, r1, vr1
00028c  8a904002  vmul.f.mz.rn vr1{mr1}, r1, vr4
000290  7f216200  l_gm2lm r2, r6, 0(r[5:6])
000294  1f020ffe  addli r4, r30, -256
000298  00a00000  mfence { lm }
00029c  634edffc  loadli.w r28,  -404(r30)
0002a0  eb508fa7  load.d r[2:3], -1416(r30)
0002a4  e3022ffc  loadli.w r5,  -496(r30)
0002a8  63432ffc  loadli.w r6,  -492(r30)
0002ac  e3033ffc  loadli.w r7,  -488(r30)
0002b0  63443ffc  loadli.w r8,  -484(r30)
0002b4  e3044ffc  loadli.w r9,  -480(r30)
0002b8  63454ffc  loadli.w r10,  -476(r30)
0002bc  e3055ffc  loadli.w r11,  -472(r30)
0002c0  63465ffc  loadli.w r12,  -468(r30)
0002c4  e3066ffc  loadli.w r13,  -464(r30)
0002c8  63476ffc  loadli.w r14,  -460(r30)
0002cc  e3077ffc  loadli.w r15,  -456(r30)
0002d0  63487ffc  loadli.w r16,  -452(r30)
0002d4  e3088ffc  loadli.w r17,  -448(r30)
0002d8  63498ffc  loadli.w r18,  -444(r30)
0002dc  e3099ffc  loadli.w r19,  -440(r30)
0002e0  634a9ffc  loadli.w r20,  -436(r30)
0002e4  e30aaffc  loadli.w r21,  -432(r30)
0002e8  634baffc  loadli.w r22,  -428(r30)
0002ec  e30bbffc  loadli.w r23,  -424(r30)
0002f0  634cbffc  loadli.w r24,  -420(r30)
0002f4  e30ccffc  loadli.w r25,  -416(r30)
0002f8  634dcffc  loadli.w r26,  -412(r30)
0002fc  e30ddffc  loadli.w r27,  -408(r30)
000300  e70bcff5  storeli.w r28, -1352(r30)
000304  630eeffc  loadli.w r28,  -400(r30)
000308  ffa14000  l_gm2lm r3, r4, 0(r[2:3])
00030c  e3000ffc  loadli.w r1,  -512(r30)
000310  63410ffc  loadli.w r2,  -508(r30)
000314  e3011ffc  loadli.w r3,  -504(r30)
000318  63421ffc  loadli.w r4,  -500(r30)
00031c  e74bcff5  storeli.w r28, -1348(r30)
000320  634eeffc  loadli.w r28,  -396(r30)
000324  670ccff5  storeli.w r28, -1344(r30)
000328  630efffc  loadli.w r28,  -392(r30)
00032c  674ccff5  storeli.w r28, -1340(r30)
000330  634efffc  loadli.w r28,  -388(r30)
000334  e70ccff5  storeli.w r28, -1336(r30)
000338  630e0ffd  loadli.w r28,  -384(r30)
00033c  e74ccff5  storeli.w r28, -1332(r30)
000340  634e0ffd  loadli.w r28,  -380(r30)
000344  670dcff5  storeli.w r28, -1328(r30)
000348  630e1ffd  loadli.w r28,  -376(r30)
00034c  674dcff5  storeli.w r28, -1324(r30)
000350  634e1ffd  loadli.w r28,  -372(r30)
000354  e70dcff5  storeli.w r28, -1320(r30)
000358  630e2ffd  loadli.w r28,  -368(r30)
00035c  e74dcff5  storeli.w r28, -1316(r30)
000360  634e2ffd  loadli.w r28,  -364(r30)
000364  670ecff5  storeli.w r28, -1312(r30)
000368  630e3ffd  loadli.w r28,  -360(r30)
00036c  674ecff5  storeli.w r28, -1308(r30)
000370  634e3ffd  loadli.w r28,  -356(r30)
000374  e70ecff5  storeli.w r28, -1304(r30)
000378  630e4ffd  loadli.w r28,  -352(r30)
00037c  e74ecff5  storeli.w r28, -1300(r30)
000380  634e4ffd  loadli.w r28,  -348(r30)
000384  670fcff5  storeli.w r28, -1296(r30)
000388  630e5ffd  loadli.w r28,  -344(r30)
00038c  674fcff5  storeli.w r28, -1292(r30)
000390  634e5ffd  loadli.w r28,  -340(r30)
000394  e70fcff5  storeli.w r28, -1288(r30)
000398  630e6ffd  loadli.w r28,  -336(r30)
00039c  e74fcff5  storeli.w r28, -1284(r30)
0003a0  634e6ffd  loadli.w r28,  -332(r30)
0003a4  6700cff7  storeli.w r28, -1280(r30)
0003a8  630e7ffd  loadli.w r28,  -328(r30)
0003ac  6740cff7  storeli.w r28, -1276(r30)
0003b0  634e7ffd  loadli.w r28,  -324(r30)
0003b4  e740cff7  storeli.w r28, -1268(r30)
0003b8  630e8ffd  loadli.w r28,  -320(r30)
0003bc  e700cff7  storeli.w r28, -1272(r30)
0003c0  634e8ffd  loadli.w r28,  -316(r30)
0003c4  6701cff7  storeli.w r28, -1264(r30)
0003c8  630e9ffd  loadli.w r28,  -312(r30)
0003cc  6741cff7  storeli.w r28, -1260(r30)
0003d0  634e9ffd  loadli.w r28,  -308(r30)
0003d4  e701cff7  storeli.w r28, -1256(r30)
0003d8  630eaffd  loadli.w r28,  -304(r30)
0003dc  e741cff7  storeli.w r28, -1252(r30)
0003e0  634eaffd  loadli.w r28,  -300(r30)
0003e4  6702cff7  storeli.w r28, -1248(r30)
0003e8  630ebffd  loadli.w r28,  -296(r30)
0003ec  6742cff7  storeli.w r28, -1244(r30)
0003f0  634ebffd  loadli.w r28,  -292(r30)
0003f4  e702cff7  storeli.w r28, -1240(r30)
0003f8  630ecffd  loadli.w r28,  -288(r30)
0003fc  e742cff7  storeli.w r28, -1236(r30)
000400  634ecffd  loadli.w r28,  -284(r30)
000404  6703cff7  storeli.w r28, -1232(r30)
000408  630edffd  loadli.w r28,  -280(r30)
00040c  6743cff7  storeli.w r28, -1228(r30)
000410  634edffd  loadli.w r28,  -276(r30)
000414  e703cff7  storeli.w r28, -1224(r30)
000418  630eeffd  loadli.w r28,  -272(r30)
00041c  e743cff7  storeli.w r28, -1220(r30)
000420  634eeffd  loadli.w r28,  -268(r30)
000424  00a00000  mfence { lm }
000428  6704cff7  storeli.w r28, -1216(r30)
00042c  630efffd  loadli.w r28,  -264(r30)
000430  6708cff7  storeli.w r28, -1152(r30)
000434  634efffd  loadli.w r28,  -260(r30)
000438  670ccff7  storeli.w r28, -1088(r30)
00043c  1f0e0ff4  addli r28, r30, -1536
000440  00a00000  mfence { lm }
000444  42100e02  vload_mask16.mz vr0{mr1}, 0(r28)
000448  12320002  vadd.s.mz vr4{mr1}, zero, vr0
00044c  92320002  vadd.s.mz vr5{mr1}, zero, vr0
000450  12330002  vadd.s.mz vr6{mr1}, zero, vr0
000454  92330002  vadd.s.mz vr7{mr1}, zero, vr0
000458  12340002  vadd.s.mz vr8{mr1}, zero, vr0
00045c  92340002  vadd.s.mz vr9{mr1}, zero, vr0
000460  12350002  vadd.s.mz vr10{mr1}, zero, vr0
000464  92350002  vadd.s.mz vr11{mr1}, zero, vr0
000468  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
00046c  9f200000  addli r1, zero, 2
000470  7e8000e0  vmmov mr0, r1
000474  9f400000  addli r1, zero, 4
000478  6a224130  vor.u.mh vr4{mr0}, r2, vr4
00047c  fe8100e0  vmmov mr3, r1
000480  9f001000  addli r1, zero, 8
000484  1f010010  addli r2, zero, 2048
000488  7e8100e0  vmmov mr2, r1
00048c  9f002000  addli r1, zero, 16
000490  6aa24136  vor.u.mh vr4{mr3}, r3, vr4
000494  7e8001c0  vmmov mr0, mr3
000498  fe8100e0  vmmov mr3, r1
00049c  9f004000  addli r1, zero, 32
0004a0  6a224234  vor.u.mh vr4{mr2}, r4, vr4
0004a4  7e8100e0  vmmov mr2, r1
0004a8  9f008000  addli r1, zero, 64
0004ac  6aa24236  vor.u.mh vr4{mr3}, r5, vr4
0004b0  fe8100e0  vmmov mr3, r1
0004b4  9f000001  addli r1, zero, 128
0004b8  6a224334  vor.u.mh vr4{mr2}, r6, vr4
0004bc  7e8100e0  vmmov mr2, r1
0004c0  9f000002  addli r1, zero, 256
0004c4  6aa24336  vor.u.mh vr4{mr3}, r7, vr4
0004c8  fe8100e0  vmmov mr3, r1
0004cc  9f000004  addli r1, zero, 512
0004d0  6a224434  vor.u.mh vr4{mr2}, r8, vr4
0004d4  7e8100e0  vmmov mr2, r1
0004d8  9f000008  addli r1, zero, 1024
0004dc  6aa24436  vor.u.mh vr4{mr3}, r9, vr4
0004e0  fe8100e0  vmmov mr3, r1
0004e4  9f000010  addli r1, zero, 2048
0004e8  6a224534  vor.u.mh vr4{mr2}, r10, vr4
0004ec  7e8100e0  vmmov mr2, r1
0004f0  9f000020  addli r1, zero, 4096
0004f4  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
0004f8  fe8100e0  vmmov mr3, r1
0004fc  9f000040  addli r1, zero, 8192
000500  6a224634  vor.u.mh vr4{mr2}, r12, vr4
000504  7e8100e0  vmmov mr2, r1
000508  ab400000  lui r1, 4
00050c  6aa24636  vor.u.mh vr4{mr3}, r13, vr4
000510  fe8100e0  vmmov mr3, r1
000514  ab800000  lui r1, 8
000518  6a224734  vor.u.mh vr4{mr2}, r14, vr4
00051c  7e8100e0  vmmov mr2, r1
000520  9f100000  addli r1, zero, 1
000524  6aa24736  vor.u.mh vr4{mr3}, r15, vr4
000528  6a224834  vor.u.mh vr4{mr2}, r16, vr4
00052c  7e8100e0  vmmov mr2, r1
000530  9f200000  addli r1, zero, 2
000534  eaa25834  vor.u.mh vr5{mr2}, r17, vr5
000538  7e8100e0  vmmov mr2, r1
00053c  9f001000  addli r1, zero, 8
000540  ea225934  vor.u.mh vr5{mr2}, r18, vr5
000544  eaa25930  vor.u.mh vr5{mr0}, r19, vr5
000548  7e8000e0  vmmov mr0, r1
00054c  9f002000  addli r1, zero, 16
000550  ea225a30  vor.u.mh vr5{mr0}, r20, vr5
000554  7e8000e0  vmmov mr0, r1
000558  9f004000  addli r1, zero, 32
00055c  fe8100e0  vmmov mr3, r1
000560  9f008000  addli r1, zero, 64
000564  eaa25a30  vor.u.mh vr5{mr0}, r21, vr5
000568  7e8000e0  vmmov mr0, r1
00056c  9f000001  addli r1, zero, 128
000570  7e8100e0  vmmov mr2, r1
000574  9f000002  addli r1, zero, 256
000578  ea225b36  vor.u.mh vr5{mr3}, r22, vr5
00057c  eaa25b30  vor.u.mh vr5{mr0}, r23, vr5
000580  7e8000e0  vmmov mr0, r1
000584  9f000004  addli r1, zero, 512
000588  ea225c34  vor.u.mh vr5{mr2}, r24, vr5
00058c  eaa25c30  vor.u.mh vr5{mr0}, r25, vr5
000590  7e8000e0  vmmov mr0, r1
000594  9f000008  addli r1, zero, 1024
000598  ea225d30  vor.u.mh vr5{mr0}, r26, vr5
00059c  7e8000e0  vmmov mr0, r1
0005a0  eaa25d30  vor.u.mh vr5{mr0}, r27, vr5
0005a4  e3007ff5  loadli.w r1,  -1352(r30)
0005a8  7e0001e0  vmmov mr0, r2
0005ac  1f010020  addli r2, zero, 4096
0005b0  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0005b4  e3407ff5  loadli.w r1,  -1348(r30)
0005b8  7e0001e0  vmmov mr0, r2
0005bc  2b410000  lui r2, 4
0005c0  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0005c4  9f000040  addli r1, zero, 8192
0005c8  7e8000e0  vmmov mr0, r1
0005cc  e3008ff5  loadli.w r1,  -1344(r30)
0005d0  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0005d4  e3408ff5  loadli.w r1,  -1340(r30)
0005d8  7e0001e0  vmmov mr0, r2
0005dc  2b810000  lui r2, 8
0005e0  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0005e4  e3009ff5  loadli.w r1,  -1336(r30)
0005e8  7e0001e0  vmmov mr0, r2
0005ec  1f110000  addli r2, zero, 1
0005f0  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0005f4  e3409ff5  loadli.w r1,  -1332(r30)
0005f8  7e0001e0  vmmov mr0, r2
0005fc  1f210000  addli r2, zero, 2
000600  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000604  e300aff5  loadli.w r1,  -1328(r30)
000608  7e0001e0  vmmov mr0, r2
00060c  1f410000  addli r2, zero, 4
000610  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000614  e340aff5  loadli.w r1,  -1324(r30)
000618  7e0001e0  vmmov mr0, r2
00061c  1f011000  addli r2, zero, 8
000620  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000624  e300bff5  loadli.w r1,  -1320(r30)
000628  7e0001e0  vmmov mr0, r2
00062c  1f012000  addli r2, zero, 16
000630  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000634  e340bff5  loadli.w r1,  -1316(r30)
000638  7e0001e0  vmmov mr0, r2
00063c  1f018000  addli r2, zero, 64
000640  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000644  e300cff5  loadli.w r1,  -1312(r30)
000648  7e0001e0  vmmov mr0, r2
00064c  1f010002  addli r2, zero, 256
000650  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
000654  e340cff5  loadli.w r1,  -1308(r30)
000658  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
00065c  e300dff5  loadli.w r1,  -1304(r30)
000660  7e0001e0  vmmov mr0, r2
000664  1f010004  addli r2, zero, 512
000668  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
00066c  e340dff5  loadli.w r1,  -1300(r30)
000670  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000674  e300eff5  loadli.w r1,  -1296(r30)
000678  7e0001e0  vmmov mr0, r2
00067c  1f010008  addli r2, zero, 1024
000680  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000684  e340eff5  loadli.w r1,  -1292(r30)
000688  7e0001e0  vmmov mr0, r2
00068c  1f010010  addli r2, zero, 2048
000690  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000694  e300fff5  loadli.w r1,  -1288(r30)
000698  7e0001e0  vmmov mr0, r2
00069c  1f010020  addli r2, zero, 4096
0006a0  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0006a4  e340fff5  loadli.w r1,  -1284(r30)
0006a8  7e0001e0  vmmov mr0, r2
0006ac  1f010040  addli r2, zero, 8192
0006b0  7e0101e0  vmmov mr2, r2
0006b4  2b410000  lui r2, 4
0006b8  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0006bc  e3000ff6  loadli.w r1,  -1280(r30)
0006c0  7e0001e0  vmmov mr0, r2
0006c4  2b810000  lui r2, 8
0006c8  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
0006cc  e3400ff6  loadli.w r1,  -1276(r30)
0006d0  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0006d4  e3401ff6  loadli.w r1,  -1268(r30)
0006d8  7e0001e0  vmmov mr0, r2
0006dc  1f012000  addli r2, zero, 16
0006e0  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0006e4  9f100000  addli r1, zero, 1
0006e8  7e8000e0  vmmov mr0, r1
0006ec  e3001ff6  loadli.w r1,  -1272(r30)
0006f0  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0006f4  9f200000  addli r1, zero, 2
0006f8  7e8000e0  vmmov mr0, r1
0006fc  e3002ff6  loadli.w r1,  -1264(r30)
000700  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000704  9f400000  addli r1, zero, 4
000708  7e8000e0  vmmov mr0, r1
00070c  e3402ff6  loadli.w r1,  -1260(r30)
000710  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000714  9f001000  addli r1, zero, 8
000718  7e8000e0  vmmov mr0, r1
00071c  e3003ff6  loadli.w r1,  -1256(r30)
000720  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000724  e3403ff6  loadli.w r1,  -1252(r30)
000728  7e0001e0  vmmov mr0, r2
00072c  1f010001  addli r2, zero, 128
000730  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
000734  e3004ff6  loadli.w r1,  -1248(r30)
000738  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
00073c  9f008000  addli r1, zero, 64
000740  7e8000e0  vmmov mr0, r1
000744  e3404ff6  loadli.w r1,  -1244(r30)
000748  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
00074c  e3005ff6  loadli.w r1,  -1240(r30)
000750  7e0001e0  vmmov mr0, r2
000754  2b810000  lui r2, 8
000758  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
00075c  9f000002  addli r1, zero, 256
000760  7e8000e0  vmmov mr0, r1
000764  e3405ff6  loadli.w r1,  -1236(r30)
000768  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
00076c  9f000004  addli r1, zero, 512
000770  7e8000e0  vmmov mr0, r1
000774  e3006ff6  loadli.w r1,  -1232(r30)
000778  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
00077c  9f000008  addli r1, zero, 1024
000780  7e8000e0  vmmov mr0, r1
000784  e3406ff6  loadli.w r1,  -1228(r30)
000788  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
00078c  9f000010  addli r1, zero, 2048
000790  7e8000e0  vmmov mr0, r1
000794  e3007ff6  loadli.w r1,  -1224(r30)
000798  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
00079c  9f000020  addli r1, zero, 4096
0007a0  7e8000e0  vmmov mr0, r1
0007a4  e3407ff6  loadli.w r1,  -1220(r30)
0007a8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0007ac  e3008ff6  loadli.w r1,  -1216(r30)
0007b0  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
0007b4  ab400000  lui r1, 4
0007b8  7e8000e0  vmmov mr0, r1
0007bc  e3000ff7  loadli.w r1,  -1152(r30)
0007c0  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0007c4  e3008ff7  loadli.w r1,  -1088(r30)
0007c8  7e0001e0  vmmov mr0, r2
0007cc  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0007d0  00a00000  mfence { lm }
0007d4  634edffe  loadli.w r28,  -148(r30)
0007d8  e3000ffe  loadli.w r1,  -256(r30)
0007dc  63410ffe  loadli.w r2,  -252(r30)
0007e0  e3011ffe  loadli.w r3,  -248(r30)
0007e4  63421ffe  loadli.w r4,  -244(r30)
0007e8  e3022ffe  loadli.w r5,  -240(r30)
0007ec  63432ffe  loadli.w r6,  -236(r30)
0007f0  e3033ffe  loadli.w r7,  -232(r30)
0007f4  63443ffe  loadli.w r8,  -228(r30)
0007f8  e3044ffe  loadli.w r9,  -224(r30)
0007fc  63454ffe  loadli.w r10,  -220(r30)
000800  e3055ffe  loadli.w r11,  -216(r30)
000804  63465ffe  loadli.w r12,  -212(r30)
000808  e3066ffe  loadli.w r13,  -208(r30)
00080c  63476ffe  loadli.w r14,  -204(r30)
000810  e3077ffe  loadli.w r15,  -200(r30)
000814  63487ffe  loadli.w r16,  -196(r30)
000818  e3088ffe  loadli.w r17,  -192(r30)
00081c  63498ffe  loadli.w r18,  -188(r30)
000820  e3099ffe  loadli.w r19,  -184(r30)
000824  634a9ffe  loadli.w r20,  -180(r30)
000828  e30aaffe  loadli.w r21,  -176(r30)
00082c  634baffe  loadli.w r22,  -172(r30)
000830  e30bbffe  loadli.w r23,  -168(r30)
000834  634cbffe  loadli.w r24,  -164(r30)
000838  e30ccffe  loadli.w r25,  -160(r30)
00083c  634dcffe  loadli.w r26,  -156(r30)
000840  e30ddffe  loadli.w r27,  -152(r30)
000844  e70bcff5  storeli.w r28, -1352(r30)
000848  630eeffe  loadli.w r28,  -144(r30)
00084c  e74bcff5  storeli.w r28, -1348(r30)
000850  634eeffe  loadli.w r28,  -140(r30)
000854  670ccff5  storeli.w r28, -1344(r30)
000858  630efffe  loadli.w r28,  -136(r30)
00085c  674ccff5  storeli.w r28, -1340(r30)
000860  634efffe  loadli.w r28,  -132(r30)
000864  e70ccff5  storeli.w r28, -1336(r30)
000868  630e0fff  loadli.w r28,  -128(r30)
00086c  e74ccff5  storeli.w r28, -1332(r30)
000870  634e0fff  loadli.w r28,  -124(r30)
000874  670dcff5  storeli.w r28, -1328(r30)
000878  630e1fff  loadli.w r28,  -120(r30)
00087c  674dcff5  storeli.w r28, -1324(r30)
000880  634e1fff  loadli.w r28,  -116(r30)
000884  e70dcff5  storeli.w r28, -1320(r30)
000888  630e2fff  loadli.w r28,  -112(r30)
00088c  e74dcff5  storeli.w r28, -1316(r30)
000890  634e2fff  loadli.w r28,  -108(r30)
000894  670ecff5  storeli.w r28, -1312(r30)
000898  630e3fff  loadli.w r28,  -104(r30)
00089c  674ecff5  storeli.w r28, -1308(r30)
0008a0  634e3fff  loadli.w r28,  -100(r30)
0008a4  e70ecff5  storeli.w r28, -1304(r30)
0008a8  630e4fff  loadli.w r28,  -96(r30)
0008ac  e74ecff5  storeli.w r28, -1300(r30)
0008b0  634e4fff  loadli.w r28,  -92(r30)
0008b4  670fcff5  storeli.w r28, -1296(r30)
0008b8  630e5fff  loadli.w r28,  -88(r30)
0008bc  674fcff5  storeli.w r28, -1292(r30)
0008c0  634e5fff  loadli.w r28,  -84(r30)
0008c4  e70fcff5  storeli.w r28, -1288(r30)
0008c8  630e6fff  loadli.w r28,  -80(r30)
0008cc  e74fcff5  storeli.w r28, -1284(r30)
0008d0  634e6fff  loadli.w r28,  -76(r30)
0008d4  6700cff7  storeli.w r28, -1280(r30)
0008d8  630e7fff  loadli.w r28,  -72(r30)
0008dc  6740cff7  storeli.w r28, -1276(r30)
0008e0  634e7fff  loadli.w r28,  -68(r30)
0008e4  e700cff7  storeli.w r28, -1272(r30)
0008e8  630e8fff  loadli.w r28,  -64(r30)
0008ec  e740cff7  storeli.w r28, -1268(r30)
0008f0  634e8fff  loadli.w r28,  -60(r30)
0008f4  6701cff7  storeli.w r28, -1264(r30)
0008f8  630e9fff  loadli.w r28,  -56(r30)
0008fc  6741cff7  storeli.w r28, -1260(r30)
000900  634e9fff  loadli.w r28,  -52(r30)
000904  e701cff7  storeli.w r28, -1256(r30)
000908  630eafff  loadli.w r28,  -48(r30)
00090c  e741cff7  storeli.w r28, -1252(r30)
000910  634eafff  loadli.w r28,  -44(r30)
000914  6702cff7  storeli.w r28, -1248(r30)
000918  630ebfff  loadli.w r28,  -40(r30)
00091c  6742cff7  storeli.w r28, -1244(r30)
000920  634ebfff  loadli.w r28,  -36(r30)
000924  e702cff7  storeli.w r28, -1240(r30)
000928  630ecfff  loadli.w r28,  -32(r30)
00092c  e742cff7  storeli.w r28, -1236(r30)
000930  634ecfff  loadli.w r28,  -28(r30)
000934  6703cff7  storeli.w r28, -1232(r30)
000938  630edfff  loadli.w r28,  -24(r30)
00093c  6743cff7  storeli.w r28, -1228(r30)
000940  634edfff  loadli.w r28,  -20(r30)
000944  e703cff7  storeli.w r28, -1224(r30)
000948  630eefff  loadli.w r28,  -16(r30)
00094c  e743cff7  storeli.w r28, -1220(r30)
000950  634eefff  loadli.w r28,  -12(r30)
000954  6704cff7  storeli.w r28, -1216(r30)
000958  630effff  loadli.w r28,  -8(r30)
00095c  6708cff7  storeli.w r28, -1152(r30)
000960  634effff  loadli.w r28,  -4(r30)
000964  670ccff7  storeli.w r28, -1088(r30)
000968  1f1e0000  addli r28, zero, 1
00096c  7e000ee0  vmmov mr0, r28
000970  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
000974  9f200000  addli r1, zero, 2
000978  7e8000e0  vmmov mr0, r1
00097c  9f400000  addli r1, zero, 4
000980  6a248130  vor.u.mh vr8{mr0}, r2, vr8
000984  7e8000e0  vmmov mr0, r1
000988  9f001000  addli r1, zero, 8
00098c  1f010010  addli r2, zero, 2048
000990  fe8100e0  vmmov mr3, r1
000994  9f002000  addli r1, zero, 16
000998  6aa48130  vor.u.mh vr8{mr0}, r3, vr8
00099c  7e8000e0  vmmov mr0, r1
0009a0  9f004000  addli r1, zero, 32
0009a4  6a248236  vor.u.mh vr8{mr3}, r4, vr8
0009a8  6aa48230  vor.u.mh vr8{mr0}, r5, vr8
0009ac  7e8000e0  vmmov mr0, r1
0009b0  9f008000  addli r1, zero, 64
0009b4  6a248330  vor.u.mh vr8{mr0}, r6, vr8
0009b8  7e8000e0  vmmov mr0, r1
0009bc  9f000001  addli r1, zero, 128
0009c0  6aa48330  vor.u.mh vr8{mr0}, r7, vr8
0009c4  7e8000e0  vmmov mr0, r1
0009c8  9f000002  addli r1, zero, 256
0009cc  9f030002  addli r7, zero, 256
0009d0  7e8100e0  vmmov mr2, r1
0009d4  9f000004  addli r1, zero, 512
0009d8  6a248430  vor.u.mh vr8{mr0}, r8, vr8
0009dc  6aa48434  vor.u.mh vr8{mr2}, r9, vr8
0009e0  7e8100e0  vmmov mr2, r1
0009e4  9f000008  addli r1, zero, 1024
0009e8  6a248534  vor.u.mh vr8{mr2}, r10, vr8
0009ec  7e8100e0  vmmov mr2, r1
0009f0  9f000010  addli r1, zero, 2048
0009f4  6aa48534  vor.u.mh vr8{mr2}, r11, vr8
0009f8  7e8100e0  vmmov mr2, r1
0009fc  9f000020  addli r1, zero, 4096
000a00  6a248634  vor.u.mh vr8{mr2}, r12, vr8
000a04  7e8100e0  vmmov mr2, r1
000a08  9f000040  addli r1, zero, 8192
000a0c  6aa48634  vor.u.mh vr8{mr2}, r13, vr8
000a10  7e8100e0  vmmov mr2, r1
000a14  ab400000  lui r1, 4
000a18  9f060ffa  addli r13, r30, -768
000a1c  6a248734  vor.u.mh vr8{mr2}, r14, vr8
000a20  7e8100e0  vmmov mr2, r1
000a24  ab800000  lui r1, 8
000a28  1f070ffc  addli r14, r30, -512
000a2c  fe8100e0  vmmov mr3, r1
000a30  9f100000  addli r1, zero, 1
000a34  6aa48734  vor.u.mh vr8{mr2}, r15, vr8
000a38  6a248836  vor.u.mh vr8{mr3}, r16, vr8
000a3c  fe8100e0  vmmov mr3, r1
000a40  9f200000  addli r1, zero, 2
000a44  eaa49836  vor.u.mh vr9{mr3}, r17, vr9
000a48  26944102  vmac.f.mz.rn vr8{mr1}, vr3, vr4
000a4c  fe8100e0  vmmov mr3, r1
000a50  9f400000  addli r1, zero, 4
000a54  ea249936  vor.u.mh vr9{mr3}, r18, vr9
000a58  fe8100e0  vmmov mr3, r1
000a5c  9f001000  addli r1, zero, 8
000a60  eaa49936  vor.u.mh vr9{mr3}, r19, vr9
000a64  fe8100e0  vmmov mr3, r1
000a68  9f002000  addli r1, zero, 16
000a6c  ea249a36  vor.u.mh vr9{mr3}, r20, vr9
000a70  fe8100e0  vmmov mr3, r1
000a74  9f004000  addli r1, zero, 32
000a78  eaa49a36  vor.u.mh vr9{mr3}, r21, vr9
000a7c  fe8100e0  vmmov mr3, r1
000a80  9f008000  addli r1, zero, 64
000a84  ea249b36  vor.u.mh vr9{mr3}, r22, vr9
000a88  fe8100e0  vmmov mr3, r1
000a8c  9f000002  addli r1, zero, 256
000a90  eaa49b36  vor.u.mh vr9{mr3}, r23, vr9
000a94  ea249c30  vor.u.mh vr9{mr0}, r24, vr9
000a98  7e8000e0  vmmov mr0, r1
000a9c  9f000004  addli r1, zero, 512
000aa0  fe8100e0  vmmov mr3, r1
000aa4  9f000008  addli r1, zero, 1024
000aa8  eaa49c30  vor.u.mh vr9{mr0}, r25, vr9
000aac  ea249d36  vor.u.mh vr9{mr3}, r26, vr9
000ab0  fe8100e0  vmmov mr3, r1
000ab4  eaa49d36  vor.u.mh vr9{mr3}, r27, vr9
000ab8  e3007ff5  loadli.w r1,  -1352(r30)
000abc  fe0101e0  vmmov mr3, r2
000ac0  1f010020  addli r2, zero, 4096
000ac4  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
000ac8  e3407ff5  loadli.w r1,  -1348(r30)
000acc  fe0101e0  vmmov mr3, r2
000ad0  1f010040  addli r2, zero, 8192
000ad4  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
000ad8  e3008ff5  loadli.w r1,  -1344(r30)
000adc  fe0101e0  vmmov mr3, r2
000ae0  2b810000  lui r2, 8
000ae4  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
000ae8  e3408ff5  loadli.w r1,  -1340(r30)
000aec  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000af0  e3009ff5  loadli.w r1,  -1336(r30)
000af4  7e0101e0  vmmov mr2, r2
000af8  1f110000  addli r2, zero, 1
000afc  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000b00  e3409ff5  loadli.w r1,  -1332(r30)
000b04  7e0101e0  vmmov mr2, r2
000b08  1f210000  addli r2, zero, 2
000b0c  a6145102  vmac.f.mz.rn vr9{mr1}, vr2, vr5
000b10  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
000b14  e300aff5  loadli.w r1,  -1328(r30)
000b18  7e0101e0  vmmov mr2, r2
000b1c  1f410000  addli r2, zero, 4
000b20  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
000b24  e340aff5  loadli.w r1,  -1324(r30)
000b28  7e0101e0  vmmov mr2, r2
000b2c  1f011000  addli r2, zero, 8
000b30  fe0101e0  vmmov mr3, r2
000b34  1f012000  addli r2, zero, 16
000b38  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
000b3c  e300bff5  loadli.w r1,  -1320(r30)
000b40  7e0101e0  vmmov mr2, r2
000b44  1f014000  addli r2, zero, 32
000b48  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
000b4c  e340bff5  loadli.w r1,  -1316(r30)
000b50  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
000b54  e300cff5  loadli.w r1,  -1312(r30)
000b58  7e0101e0  vmmov mr2, r2
000b5c  1f018000  addli r2, zero, 64
000b60  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
000b64  e340cff5  loadli.w r1,  -1308(r30)
000b68  7e0101e0  vmmov mr2, r2
000b6c  1f010001  addli r2, zero, 128
000b70  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
000b74  e300dff5  loadli.w r1,  -1304(r30)
000b78  7e0101e0  vmmov mr2, r2
000b7c  1f010004  addli r2, zero, 512
000b80  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
000b84  e340dff5  loadli.w r1,  -1300(r30)
000b88  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000b8c  e300eff5  loadli.w r1,  -1296(r30)
000b90  7e0001e0  vmmov mr0, r2
000b94  1f010008  addli r2, zero, 1024
000b98  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000b9c  e340eff5  loadli.w r1,  -1292(r30)
000ba0  7e0001e0  vmmov mr0, r2
000ba4  1f010010  addli r2, zero, 2048
000ba8  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000bac  e300fff5  loadli.w r1,  -1288(r30)
000bb0  7e0001e0  vmmov mr0, r2
000bb4  1f010020  addli r2, zero, 4096
000bb8  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000bbc  e340fff5  loadli.w r1,  -1284(r30)
000bc0  7e0001e0  vmmov mr0, r2
000bc4  1f010040  addli r2, zero, 8192
000bc8  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000bcc  e3000ff6  loadli.w r1,  -1280(r30)
000bd0  7e0001e0  vmmov mr0, r2
000bd4  2b410000  lui r2, 4
000bd8  7e0101e0  vmmov mr2, r2
000bdc  2b810000  lui r2, 8
000be0  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
000be4  e3400ff6  loadli.w r1,  -1276(r30)
000be8  fe0101e0  vmmov mr3, r2
000bec  1f110000  addli r2, zero, 1
000bf0  7e0001e0  vmmov mr0, r2
000bf4  1f210000  addli r2, zero, 2
000bf8  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
000bfc  e3001ff6  loadli.w r1,  -1272(r30)
000c00  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
000c04  e3401ff6  loadli.w r1,  -1268(r30)
000c08  26956002  vmac.f.mz.rn vr10{mr1}, vr1, vr6
000c0c  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000c10  e3002ff6  loadli.w r1,  -1264(r30)
000c14  7e0001e0  vmmov mr0, r2
000c18  1f410000  addli r2, zero, 4
000c1c  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000c20  e3402ff6  loadli.w r1,  -1260(r30)
000c24  7e0001e0  vmmov mr0, r2
000c28  1f011000  addli r2, zero, 8
000c2c  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000c30  e3003ff6  loadli.w r1,  -1256(r30)
000c34  7e0001e0  vmmov mr0, r2
000c38  1f012000  addli r2, zero, 16
000c3c  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000c40  e3403ff6  loadli.w r1,  -1252(r30)
000c44  7e0001e0  vmmov mr0, r2
000c48  1f014000  addli r2, zero, 32
000c4c  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000c50  e3004ff6  loadli.w r1,  -1248(r30)
000c54  7e0001e0  vmmov mr0, r2
000c58  1f018000  addli r2, zero, 64
000c5c  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000c60  e3404ff6  loadli.w r1,  -1244(r30)
000c64  7e0001e0  vmmov mr0, r2
000c68  1f010001  addli r2, zero, 128
000c6c  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000c70  e3005ff6  loadli.w r1,  -1240(r30)
000c74  7e0001e0  vmmov mr0, r2
000c78  1f010002  addli r2, zero, 256
000c7c  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000c80  e3405ff6  loadli.w r1,  -1236(r30)
000c84  7e0001e0  vmmov mr0, r2
000c88  1f010004  addli r2, zero, 512
000c8c  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000c90  e3006ff6  loadli.w r1,  -1232(r30)
000c94  7e0001e0  vmmov mr0, r2
000c98  1f010008  addli r2, zero, 1024
000c9c  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000ca0  e3406ff6  loadli.w r1,  -1228(r30)
000ca4  7e0001e0  vmmov mr0, r2
000ca8  1f010010  addli r2, zero, 2048
000cac  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000cb0  e3007ff6  loadli.w r1,  -1224(r30)
000cb4  7e0001e0  vmmov mr0, r2
000cb8  1f010020  addli r2, zero, 4096
000cbc  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000cc0  e3407ff6  loadli.w r1,  -1220(r30)
000cc4  7e0001e0  vmmov mr0, r2
000cc8  1f010040  addli r2, zero, 8192
000ccc  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000cd0  e3008ff6  loadli.w r1,  -1216(r30)
000cd4  7e0001e0  vmmov mr0, r2
000cd8  6b510f01  load.d r[3:4], 16(r30)
000cdc  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
000ce0  e3000ff7  loadli.w r1,  -1152(r30)
000ce4  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
000ce8  e3008ff7  loadli.w r1,  -1088(r30)
000cec  eaa5b036  vor.u.mh vr11{mr3}, r1, vr11
000cf0  c2100f82  vload_mask16.mz vr1{mr1}, 1024(r30)
000cf4  46108fa2  vstore_mask16.mz vr8{mr1}, 1280(r30)
000cf8  46149fa2  vstore_mask16.mz vr9{mr1}, 1344(r30)
000cfc  4618afa2  vstore_mask16.mz vr10{mr1}, 1408(r30)
000d00  ab0000f0  lui r1, 983040
000d04  a6957002  vmac.f.mz.rn vr11{mr1}, vr1, vr7
000d08  461cbfa2  vstore_mask16.mz vr11{mr1}, 1472(r30)
000d0c  92330002  vadd.s.mz vr7{mr1}, zero, vr0
000d10  6b520fc7  load.d r[5:6], -912(r30)
000d14  97901300  or r1, r7, r1
000d18  00a00000  mfence { lm }
000d1c  6346fff8  loadli.w r12,  -900(r30)
000d20  0b214110  add.ul r[3:4], r[3:4], r[5:6]
000d24  ff30d100  s_lm2gm r1, r13, 0(r[3:4])
000d28  e3003ff5  loadli.w r1,  -1384(r30)
000d2c  00a00000  mfence { lm }
000d30  0b161610  add.s r12, r12, r1
000d34  e3004ff5  loadli.w r1,  -1376(r30)
000d38  3f201600  blt.s r12, r1, 8
000d3c  5b190100  j 2248
000d40  e3006f00  loadli.w r1,  48(r30)
000d44  e3415f00  loadli.w r3,  44(r30)
000d48  2b0100f0  lui r2, 983040
000d4c  1f430000  addli r6, zero, 4
000d50  2b0200f0  lui r4, 983040
000d54  ab0200f0  lui r5, 983040
000d58  63442ff5  loadli.w r8,  -1388(r30)
000d5c  e747cff8  storeli.w r12, -900(r30)
000d60  6b550f00  load.d r[11:12], 0(r30)
000d64  12327002  vadd.s.mz vr4{mr1}, zero, vr7
000d68  92327002  vadd.s.mz vr5{mr1}, zero, vr7
000d6c  12337002  vadd.s.mz vr6{mr1}, zero, vr7
000d70  17112300  or r2, r6, r2
000d74  17924300  or r4, r7, r4
000d78  97925300  or r5, r7, r5
000d7c  8b101630  div.s r1, r12, r1
000d80  1f260000  addli r12, zero, 2
000d84  8b903030  div.s r1, r1, r3
000d88  ab0100f0  lui r3, 983040
000d8c  97113300  or r3, r6, r3
000d90  6343eff4  loadli.w r6,  -1420(r30)
000d94  9bb0c000  slli r1, r1, 12
000d98  8b906010  add.s r1, r1, r6
000d9c  33930028  sext_int2long r[7:8], r1
000da0  8b908010  add.s r1, r1, r8
000da4  1733c302  sll.d r[7:8], r[7:8], r12
000da8  33940028  sext_int2long r[9:10], r1
000dac  9f000ff9  addli r1, r30, -896
000db0  0b236510  add.ul r[7:8], r[11:12], r[7:8]
000db4  1734c402  sll.d r[9:10], r[9:10], r12
000db8  7f211300  l_gm2lm r2, r1, 0(r[7:8])
000dbc  6b538f00  load.d r[7:8], 8(r30)
000dc0  73388fc6  store.d r[9:10], -912(r30)
000dc4  8b208510  add.ul r[2:3], r[11:12], r[9:10]
000dc8  1f048ff9  addli r8, r30, -832
000dcc  ff218300  l_gm2lm r3, r8, 0(r[7:8])
000dd0  7fa2d000  l_gm2lm r4, r13, 0(r[2:3])
000dd4  eb508fa8  load.d r[2:3], -1400(r30)
000dd8  ffa2e000  l_gm2lm r5, r14, 0(r[2:3])
000ddc  00a00000  mfence { lm }
000de0  e3008ff9  loadli.w r1,  -832(r30)
000de4  00a00000  mfence { lm }
000de8  c2110fa2  vload_mask16.mz vr3{mr1}, 1280(r30)
000dec  67001ff8  storeli.w r1, -1024(r30)
000df0  e3000ff9  loadli.w r1,  -896(r30)
000df4  670c1ff6  storeli.w r1, -1088(r30)
000df8  42118fa2  vload_mask16.mz vr2{mr1}, 1344(r30)
000dfc  c2100fa3  vload_mask16.mz vr1{mr1}, 1408(r30)
000e00  42108fa3  vload_mask16.mz vr0{mr1}, 1472(r30)
000e04  634edffc  loadli.w r28,  -404(r30)
000e08  e3000ffc  loadli.w r1,  -512(r30)
000e0c  63410ffc  loadli.w r2,  -508(r30)
000e10  e3011ffc  loadli.w r3,  -504(r30)
000e14  63421ffc  loadli.w r4,  -500(r30)
000e18  e3022ffc  loadli.w r5,  -496(r30)
000e1c  63432ffc  loadli.w r6,  -492(r30)
000e20  e3033ffc  loadli.w r7,  -488(r30)
000e24  63443ffc  loadli.w r8,  -484(r30)
000e28  e3044ffc  loadli.w r9,  -480(r30)
000e2c  63454ffc  loadli.w r10,  -476(r30)
000e30  e3055ffc  loadli.w r11,  -472(r30)
000e34  63465ffc  loadli.w r12,  -468(r30)
000e38  e3066ffc  loadli.w r13,  -464(r30)
000e3c  63476ffc  loadli.w r14,  -460(r30)
000e40  e3077ffc  loadli.w r15,  -456(r30)
000e44  63487ffc  loadli.w r16,  -452(r30)
000e48  e3088ffc  loadli.w r17,  -448(r30)
000e4c  63498ffc  loadli.w r18,  -444(r30)
000e50  e3099ffc  loadli.w r19,  -440(r30)
000e54  634a9ffc  loadli.w r20,  -436(r30)
000e58  e30aaffc  loadli.w r21,  -432(r30)
000e5c  634baffc  loadli.w r22,  -428(r30)
000e60  e30bbffc  loadli.w r23,  -424(r30)
000e64  634cbffc  loadli.w r24,  -420(r30)
000e68  e30ccffc  loadli.w r25,  -416(r30)
000e6c  634dcffc  loadli.w r26,  -412(r30)
000e70  e30ddffc  loadli.w r27,  -408(r30)
000e74  674bcff5  storeli.w r28, -1356(r30)
000e78  630eeffc  loadli.w r28,  -400(r30)
000e7c  e70bcff5  storeli.w r28, -1352(r30)
000e80  634eeffc  loadli.w r28,  -396(r30)
000e84  e74bcff5  storeli.w r28, -1348(r30)
000e88  630efffc  loadli.w r28,  -392(r30)
000e8c  670ccff5  storeli.w r28, -1344(r30)
000e90  634efffc  loadli.w r28,  -388(r30)
000e94  674ccff5  storeli.w r28, -1340(r30)
000e98  630e0ffd  loadli.w r28,  -384(r30)
000e9c  e70ccff5  storeli.w r28, -1336(r30)
000ea0  634e0ffd  loadli.w r28,  -380(r30)
000ea4  e74ccff5  storeli.w r28, -1332(r30)
000ea8  630e1ffd  loadli.w r28,  -376(r30)
000eac  670dcff5  storeli.w r28, -1328(r30)
000eb0  634e1ffd  loadli.w r28,  -372(r30)
000eb4  674dcff5  storeli.w r28, -1324(r30)
000eb8  630e2ffd  loadli.w r28,  -368(r30)
000ebc  e70dcff5  storeli.w r28, -1320(r30)
000ec0  634e2ffd  loadli.w r28,  -364(r30)
000ec4  e74dcff5  storeli.w r28, -1316(r30)
000ec8  630e3ffd  loadli.w r28,  -360(r30)
000ecc  670ecff5  storeli.w r28, -1312(r30)
000ed0  634e3ffd  loadli.w r28,  -356(r30)
000ed4  674ecff5  storeli.w r28, -1308(r30)
000ed8  630e4ffd  loadli.w r28,  -352(r30)
000edc  e70ecff5  storeli.w r28, -1304(r30)
000ee0  634e4ffd  loadli.w r28,  -348(r30)
000ee4  e74ecff5  storeli.w r28, -1300(r30)
000ee8  630e5ffd  loadli.w r28,  -344(r30)
000eec  670fcff5  storeli.w r28, -1296(r30)
000ef0  634e5ffd  loadli.w r28,  -340(r30)
000ef4  674fcff5  storeli.w r28, -1292(r30)
000ef8  630e6ffd  loadli.w r28,  -336(r30)
000efc  e70fcff5  storeli.w r28, -1288(r30)
000f00  634e6ffd  loadli.w r28,  -332(r30)
000f04  e74fcff5  storeli.w r28, -1284(r30)
000f08  630e7ffd  loadli.w r28,  -328(r30)
000f0c  6700cff7  storeli.w r28, -1280(r30)
000f10  634e7ffd  loadli.w r28,  -324(r30)
000f14  6740cff7  storeli.w r28, -1276(r30)
000f18  630e8ffd  loadli.w r28,  -320(r30)
000f1c  e700cff7  storeli.w r28, -1272(r30)
000f20  634e8ffd  loadli.w r28,  -316(r30)
000f24  e740cff7  storeli.w r28, -1268(r30)
000f28  630e9ffd  loadli.w r28,  -312(r30)
000f2c  6701cff7  storeli.w r28, -1264(r30)
000f30  634e9ffd  loadli.w r28,  -308(r30)
000f34  6741cff7  storeli.w r28, -1260(r30)
000f38  630eaffd  loadli.w r28,  -304(r30)
000f3c  e701cff7  storeli.w r28, -1256(r30)
000f40  634eaffd  loadli.w r28,  -300(r30)
000f44  e741cff7  storeli.w r28, -1252(r30)
000f48  630ebffd  loadli.w r28,  -296(r30)
000f4c  6702cff7  storeli.w r28, -1248(r30)
000f50  634ebffd  loadli.w r28,  -292(r30)
000f54  6742cff7  storeli.w r28, -1244(r30)
000f58  630ecffd  loadli.w r28,  -288(r30)
000f5c  e702cff7  storeli.w r28, -1240(r30)
000f60  634ecffd  loadli.w r28,  -284(r30)
000f64  e742cff7  storeli.w r28, -1236(r30)
000f68  630edffd  loadli.w r28,  -280(r30)
000f6c  6703cff7  storeli.w r28, -1232(r30)
000f70  634edffd  loadli.w r28,  -276(r30)
000f74  6743cff7  storeli.w r28, -1228(r30)
000f78  630eeffd  loadli.w r28,  -272(r30)
000f7c  e703cff7  storeli.w r28, -1224(r30)
000f80  634eeffd  loadli.w r28,  -268(r30)
000f84  e743cff7  storeli.w r28, -1220(r30)
000f88  630efffd  loadli.w r28,  -264(r30)
000f8c  6704cff7  storeli.w r28, -1216(r30)
000f90  634efffd  loadli.w r28,  -260(r30)
000f94  6708cff7  storeli.w r28, -1152(r30)
000f98  1f1e0000  addli r28, zero, 1
000f9c  00a00000  mfence { lm }
000fa0  fe010ee0  vmmov mr3, r28
000fa4  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
000fa8  9f200000  addli r1, zero, 2
000fac  7e8000e0  vmmov mr0, r1
000fb0  9f400000  addli r1, zero, 4
000fb4  6a224130  vor.u.mh vr4{mr0}, r2, vr4
000fb8  7e8100e0  vmmov mr2, r1
000fbc  9f001000  addli r1, zero, 8
000fc0  1f010010  addli r2, zero, 2048
000fc4  7e8000e0  vmmov mr0, r1
000fc8  9f002000  addli r1, zero, 16
000fcc  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
000fd0  7e8100e0  vmmov mr2, r1
000fd4  9f004000  addli r1, zero, 32
000fd8  9f010020  addli r3, zero, 4096
000fdc  6a224230  vor.u.mh vr4{mr0}, r4, vr4
000fe0  6aa24234  vor.u.mh vr4{mr2}, r5, vr4
000fe4  7e8100e0  vmmov mr2, r1
000fe8  9f008000  addli r1, zero, 64
000fec  6a224334  vor.u.mh vr4{mr2}, r6, vr4
000ff0  7e8100e0  vmmov mr2, r1
000ff4  9f000001  addli r1, zero, 128
000ff8  6aa24334  vor.u.mh vr4{mr2}, r7, vr4
000ffc  7e8100e0  vmmov mr2, r1
001000  9f000002  addli r1, zero, 256
001004  6a224434  vor.u.mh vr4{mr2}, r8, vr4
001008  7e8100e0  vmmov mr2, r1
00100c  9f000004  addli r1, zero, 512
001010  6aa24434  vor.u.mh vr4{mr2}, r9, vr4
001014  7e8100e0  vmmov mr2, r1
001018  9f000008  addli r1, zero, 1024
00101c  6a224534  vor.u.mh vr4{mr2}, r10, vr4
001020  7e8100e0  vmmov mr2, r1
001024  9f000010  addli r1, zero, 2048
001028  6aa24534  vor.u.mh vr4{mr2}, r11, vr4
00102c  7e8100e0  vmmov mr2, r1
001030  9f000020  addli r1, zero, 4096
001034  6a224634  vor.u.mh vr4{mr2}, r12, vr4
001038  7e8100e0  vmmov mr2, r1
00103c  9f000040  addli r1, zero, 8192
001040  6aa24634  vor.u.mh vr4{mr2}, r13, vr4
001044  7e8100e0  vmmov mr2, r1
001048  ab400000  lui r1, 4
00104c  7e8000e0  vmmov mr0, r1
001050  ab800000  lui r1, 8
001054  6a224734  vor.u.mh vr4{mr2}, r14, vr4
001058  7e8100e0  vmmov mr2, r1
00105c  9f100000  addli r1, zero, 1
001060  fe8100e0  vmmov mr3, r1
001064  9f200000  addli r1, zero, 2
001068  6aa24730  vor.u.mh vr4{mr0}, r15, vr4
00106c  6a224834  vor.u.mh vr4{mr2}, r16, vr4
001070  eaa25836  vor.u.mh vr5{mr3}, r17, vr5
001074  fe8100e0  vmmov mr3, r1
001078  9f400000  addli r1, zero, 4
00107c  ea225936  vor.u.mh vr5{mr3}, r18, vr5
001080  fe8100e0  vmmov mr3, r1
001084  9f001000  addli r1, zero, 8
001088  96914102  vadd.f.mz.rn vr3{mr1}, vr3, vr4
00108c  eaa25936  vor.u.mh vr5{mr3}, r19, vr5
001090  fe8100e0  vmmov mr3, r1
001094  9f002000  addli r1, zero, 16
001098  ea225a36  vor.u.mh vr5{mr3}, r20, vr5
00109c  fe8100e0  vmmov mr3, r1
0010a0  9f004000  addli r1, zero, 32
0010a4  2b0a0080  lui r20, 524288
0010a8  eaa25a36  vor.u.mh vr5{mr3}, r21, vr5
0010ac  fe8100e0  vmmov mr3, r1
0010b0  9f008000  addli r1, zero, 64
0010b4  ea225b36  vor.u.mh vr5{mr3}, r22, vr5
0010b8  fe8100e0  vmmov mr3, r1
0010bc  9f000001  addli r1, zero, 128
0010c0  eaa25b36  vor.u.mh vr5{mr3}, r23, vr5
0010c4  fe8100e0  vmmov mr3, r1
0010c8  9f000002  addli r1, zero, 256
0010cc  ea225c36  vor.u.mh vr5{mr3}, r24, vr5
0010d0  fe8100e0  vmmov mr3, r1
0010d4  9f000004  addli r1, zero, 512
0010d8  eaa25c36  vor.u.mh vr5{mr3}, r25, vr5
0010dc  fe8100e0  vmmov mr3, r1
0010e0  9f000008  addli r1, zero, 1024
0010e4  ea225d36  vor.u.mh vr5{mr3}, r26, vr5
0010e8  fe8100e0  vmmov mr3, r1
0010ec  eaa25d36  vor.u.mh vr5{mr3}, r27, vr5
0010f0  e3406ff5  loadli.w r1,  -1356(r30)
0010f4  fe0101e0  vmmov mr3, r2
0010f8  1f010020  addli r2, zero, 4096
0010fc  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
001100  e3007ff5  loadli.w r1,  -1352(r30)
001104  fe0101e0  vmmov mr3, r2
001108  1f010040  addli r2, zero, 8192
00110c  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
001110  e3407ff5  loadli.w r1,  -1348(r30)
001114  fe0101e0  vmmov mr3, r2
001118  1f110000  addli r2, zero, 1
00111c  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
001120  e3008ff5  loadli.w r1,  -1344(r30)
001124  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
001128  e3408ff5  loadli.w r1,  -1340(r30)
00112c  7e0001e0  vmmov mr0, r2
001130  1f210000  addli r2, zero, 2
001134  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
001138  e3009ff5  loadli.w r1,  -1336(r30)
00113c  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001140  fe0100c0  vmmov mr3, mr0
001144  e3409ff5  loadli.w r1,  -1332(r30)
001148  7e0001e0  vmmov mr0, r2
00114c  1f410000  addli r2, zero, 4
001150  16115102  vadd.f.mz.rn vr2{mr1}, vr2, vr5
001154  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001158  e300aff5  loadli.w r1,  -1328(r30)
00115c  7e0001e0  vmmov mr0, r2
001160  1f011000  addli r2, zero, 8
001164  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001168  e340aff5  loadli.w r1,  -1324(r30)
00116c  7e0001e0  vmmov mr0, r2
001170  1f012000  addli r2, zero, 16
001174  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001178  e300bff5  loadli.w r1,  -1320(r30)
00117c  7e0001e0  vmmov mr0, r2
001180  1f014000  addli r2, zero, 32
001184  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001188  e340bff5  loadli.w r1,  -1316(r30)
00118c  7e0001e0  vmmov mr0, r2
001190  1f018000  addli r2, zero, 64
001194  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001198  e300cff5  loadli.w r1,  -1312(r30)
00119c  7e0001e0  vmmov mr0, r2
0011a0  1f010001  addli r2, zero, 128
0011a4  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0011a8  e340cff5  loadli.w r1,  -1308(r30)
0011ac  7e0001e0  vmmov mr0, r2
0011b0  1f010002  addli r2, zero, 256
0011b4  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0011b8  e300dff5  loadli.w r1,  -1304(r30)
0011bc  7e0001e0  vmmov mr0, r2
0011c0  1f010004  addli r2, zero, 512
0011c4  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0011c8  e340dff5  loadli.w r1,  -1300(r30)
0011cc  7e0001e0  vmmov mr0, r2
0011d0  1f010008  addli r2, zero, 1024
0011d4  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0011d8  e300eff5  loadli.w r1,  -1296(r30)
0011dc  7e0001e0  vmmov mr0, r2
0011e0  1f010010  addli r2, zero, 2048
0011e4  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0011e8  e340eff5  loadli.w r1,  -1292(r30)
0011ec  7e0001e0  vmmov mr0, r2
0011f0  1f010020  addli r2, zero, 4096
0011f4  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0011f8  e300fff5  loadli.w r1,  -1288(r30)
0011fc  7e0001e0  vmmov mr0, r2
001200  1f010040  addli r2, zero, 8192
001204  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001208  e340fff5  loadli.w r1,  -1284(r30)
00120c  7e0001e0  vmmov mr0, r2
001210  1f210000  addli r2, zero, 2
001214  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001218  ab400000  lui r1, 4
00121c  7e8000e0  vmmov mr0, r1
001220  e3000ff6  loadli.w r1,  -1280(r30)
001224  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
001228  e3400ff6  loadli.w r1,  -1276(r30)
00122c  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
001230  e3001ff6  loadli.w r1,  -1272(r30)
001234  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
001238  e3401ff6  loadli.w r1,  -1268(r30)
00123c  fe0101e0  vmmov mr3, r2
001240  1f410000  addli r2, zero, 4
001244  96906002  vadd.f.mz.rn vr1{mr1}, vr1, vr6
001248  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
00124c  e3002ff6  loadli.w r1,  -1264(r30)
001250  fe0101e0  vmmov mr3, r2
001254  1f011000  addli r2, zero, 8
001258  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
00125c  e3402ff6  loadli.w r1,  -1260(r30)
001260  fe0101e0  vmmov mr3, r2
001264  1f012000  addli r2, zero, 16
001268  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
00126c  e3003ff6  loadli.w r1,  -1256(r30)
001270  fe0101e0  vmmov mr3, r2
001274  1f014000  addli r2, zero, 32
001278  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
00127c  e3403ff6  loadli.w r1,  -1252(r30)
001280  fe0101e0  vmmov mr3, r2
001284  1f018000  addli r2, zero, 64
001288  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
00128c  e3004ff6  loadli.w r1,  -1248(r30)
001290  fe0101e0  vmmov mr3, r2
001294  1f010001  addli r2, zero, 128
001298  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
00129c  e3404ff6  loadli.w r1,  -1244(r30)
0012a0  fe0101e0  vmmov mr3, r2
0012a4  1f010002  addli r2, zero, 256
0012a8  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
0012ac  e3005ff6  loadli.w r1,  -1240(r30)
0012b0  fe0101e0  vmmov mr3, r2
0012b4  1f010004  addli r2, zero, 512
0012b8  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
0012bc  e3405ff6  loadli.w r1,  -1236(r30)
0012c0  fe0101e0  vmmov mr3, r2
0012c4  1f010008  addli r2, zero, 1024
0012c8  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
0012cc  e3006ff6  loadli.w r1,  -1232(r30)
0012d0  fe0101e0  vmmov mr3, r2
0012d4  1f010010  addli r2, zero, 2048
0012d8  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
0012dc  e3406ff6  loadli.w r1,  -1228(r30)
0012e0  fe0101e0  vmmov mr3, r2
0012e4  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
0012e8  e3000ff8  loadli.w r1,  -1024(r30)
0012ec  63018ff7  loadli.w r2,  -1088(r30)
0012f0  fe8101e0  vmmov mr3, r3
0012f4  9f010040  addli r3, zero, 8192
0012f8  8be02010  add.f.rn r1, r1, r2
0012fc  63017ff6  loadli.w r2,  -1224(r30)
001300  ea237136  vor.u.mh vr7{mr3}, r2, vr7
001304  63417ff6  loadli.w r2,  -1220(r30)
001308  fe8101e0  vmmov mr3, r3
00130c  ea237136  vor.u.mh vr7{mr3}, r2, vr7
001310  2b010080  lui r2, 524288
001314  97a02000  xor r1, r1, r2
001318  63018ff6  loadli.w r2,  -1216(r30)
00131c  92922002  vadd.f.mz.rn vr5{mr1}, r1, vr2
001320  12115002  vadd.f.mz.rn vr2{mr1}, zero, vr5
001324  12923002  vadd.f.mz.rn vr4{mr1}, r1, vr3
001328  92114002  vadd.f.mz.rn vr3{mr1}, zero, vr4
00132c  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
001330  92911002  vadd.f.mz.rn vr3{mr1}, r1, vr1
001334  92103002  vadd.f.mz.rn vr1{mr1}, zero, vr3
001338  ea237130  vor.u.mh vr7{mr0}, r2, vr7
00133c  63010ff7  loadli.w r2,  -1152(r30)
001340  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
001344  ea237134  vor.u.mh vr7{mr2}, r2, vr7
001348  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
00134c  12930002  vadd.f.mz.rn vr6{mr1}, r1, vr0
001350  12106002  vadd.f.mz.rn vr0{mr1}, zero, vr6
001354  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
001358  fa100040  vextracti.f r1, 0(vr0)
00135c  7a111040  vextracti.f r2, 1(vr0)
001360  8be02010  add.f.rn r1, r1, r2
001364  7a112040  vextracti.f r2, 2(vr0)
001368  8b601110  add.f.rn r1, r2, r1
00136c  7a113040  vextracti.f r2, 3(vr0)
001370  8b601110  add.f.rn r1, r2, r1
001374  7a114040  vextracti.f r2, 4(vr0)
001378  8b601110  add.f.rn r1, r2, r1
00137c  7a115040  vextracti.f r2, 5(vr0)
001380  8b601110  add.f.rn r1, r2, r1
001384  7a116040  vextracti.f r2, 6(vr0)
001388  8b601110  add.f.rn r1, r2, r1
00138c  7a117040  vextracti.f r2, 7(vr0)
001390  8b601110  add.f.rn r1, r2, r1
001394  7a118040  vextracti.f r2, 8(vr0)
001398  8b601110  add.f.rn r1, r2, r1
00139c  7a119040  vextracti.f r2, 9(vr0)
0013a0  8b601110  add.f.rn r1, r2, r1
0013a4  7a11a040  vextracti.f r2, 10(vr0)
0013a8  8b601110  add.f.rn r1, r2, r1
0013ac  7a11b040  vextracti.f r2, 11(vr0)
0013b0  8b601110  add.f.rn r1, r2, r1
0013b4  7a11c040  vextracti.f r2, 12(vr0)
0013b8  8b601110  add.f.rn r1, r2, r1
0013bc  7a11d040  vextracti.f r2, 13(vr0)
0013c0  8b601110  add.f.rn r1, r2, r1
0013c4  7a11e040  vextracti.f r2, 14(vr0)
0013c8  8b601110  add.f.rn r1, r2, r1
0013cc  7a11f040  vextracti.f r2, 15(vr0)
0013d0  8b601110  add.f.rn r1, r2, r1
0013d4  63015ff5  loadli.w r2,  -1368(r30)
0013d8  73601100  stores.w r1, 0(r2)
0013dc  00a00300  mfence { lm, sm, gm }
0013e0  63423ff5  loadli.w r4,  -1380(r30)
0013e4  80210204  csr_set csr3, r4
0013e8  00d00100  sync_group
0013ec  6303eff4  loadli.w r6,  -1424(r30)
0013f0  3b220300  bneq r6, zero, 136
0013f4  e3026ff5  loadli.w r5,  -1360(r30)
0013f8  efc00200  loads.w r1, 0(r5)
0013fc  6fc14200  loads.w r2, 4(r5)
001400  efc18200  loads.w r3, 8(r5)
001404  8be02010  add.f.rn r1, r1, r2
001408  6fc1c200  loads.w r2, 12(r5)
00140c  8be03010  add.f.rn r1, r1, r3
001410  efc10201  loads.w r3, 16(r5)
001414  8be02010  add.f.rn r1, r1, r2
001418  6fc14201  loads.w r2, 20(r5)
00141c  8be03010  add.f.rn r1, r1, r3
001420  efc18201  loads.w r3, 24(r5)
001424  8be02010  add.f.rn r1, r1, r2
001428  6fc1c201  loads.w r2, 28(r5)
00142c  8be03010  add.f.rn r1, r1, r3
001430  efc10202  loads.w r3, 32(r5)
001434  8be02010  add.f.rn r1, r1, r2
001438  6fc14202  loads.w r2, 36(r5)
00143c  8be03010  add.f.rn r1, r1, r3
001440  efc18202  loads.w r3, 40(r5)
001444  8be02010  add.f.rn r1, r1, r2
001448  6fc1c202  loads.w r2, 44(r5)
00144c  8be03010  add.f.rn r1, r1, r3
001450  efc10203  loads.w r3, 48(r5)
001454  8be02010  add.f.rn r1, r1, r2
001458  6fc14203  loads.w r2, 52(r5)
00145c  8be03010  add.f.rn r1, r1, r3
001460  efc18203  loads.w r3, 56(r5)
001464  8be02010  add.f.rn r1, r1, r2
001468  6fc1c203  loads.w r2, 60(r5)
00146c  8be03010  add.f.rn r1, r1, r3
001470  8be02010  add.f.rn r1, r1, r2
001474  73e01200  stores.w r1, 0(r5)
001478  0e104202  vmul.f.mz.rn vr0{mr1}, vr4, vr4
00147c  8e905202  vmul.f.mz.rn vr1{mr1}, vr5, vr5
001480  0e913102  vmul.f.mz.rn vr2{mr1}, vr3, vr3
001484  9f100000  addli r1, zero, 1
001488  ab03803a  lui r7, 239616
00148c  12100002  vadd.f.mz.rn vr0{mr1}, zero, vr0
001490  92101002  vadd.f.mz.rn vr1{mr1}, zero, vr1
001494  12112002  vadd.f.mz.rn vr2{mr1}, zero, vr2
001498  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
00149c  8e106302  vmul.f.mz.rn vr1{mr1}, vr6, vr6
0014a0  7e8000e0  vmmov mr0, r1
0014a4  92101002  vadd.f.mz.rn vr1{mr1}, zero, vr1
0014a8  00a00300  mfence { lm, sm, gm }
0014ac  80210204  csr_set csr3, r4
0014b0  00d00100  sync_group
0014b4  e3016ff5  loadli.w r3,  -1360(r30)
0014b8  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0014bc  efc10100  loads.w r3, 0(r3)
0014c0  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
0014c4  fa100040  vextracti.f r1, 0(vr0)
0014c8  7a111040  vextracti.f r2, 1(vr0)
0014cc  8be02010  add.f.rn r1, r1, r2
0014d0  7a112040  vextracti.f r2, 2(vr0)
0014d4  8be97120  mul.f.rn r19, r3, r7
0014d8  8b601110  add.f.rn r1, r2, r1
0014dc  7a113040  vextracti.f r2, 3(vr0)
0014e0  8b601110  add.f.rn r1, r2, r1
0014e4  7a114040  vextracti.f r2, 4(vr0)
0014e8  8b601110  add.f.rn r1, r2, r1
0014ec  7a115040  vextracti.f r2, 5(vr0)
0014f0  8b601110  add.f.rn r1, r2, r1
0014f4  7a116040  vextracti.f r2, 6(vr0)
0014f8  8b601110  add.f.rn r1, r2, r1
0014fc  7a117040  vextracti.f r2, 7(vr0)
001500  8b601110  add.f.rn r1, r2, r1
001504  7a118040  vextracti.f r2, 8(vr0)
001508  8b601110  add.f.rn r1, r2, r1
00150c  7a119040  vextracti.f r2, 9(vr0)
001510  8b601110  add.f.rn r1, r2, r1
001514  7a11a040  vextracti.f r2, 10(vr0)
001518  8b601110  add.f.rn r1, r2, r1
00151c  7a11b040  vextracti.f r2, 11(vr0)
001520  8b601110  add.f.rn r1, r2, r1
001524  7a11c040  vextracti.f r2, 12(vr0)
001528  8b601110  add.f.rn r1, r2, r1
00152c  7a11d040  vextracti.f r2, 13(vr0)
001530  8b601110  add.f.rn r1, r2, r1
001534  7a11e040  vextracti.f r2, 14(vr0)
001538  8b601110  add.f.rn r1, r2, r1
00153c  7a11f040  vextracti.f r2, 15(vr0)
001540  8b601110  add.f.rn r1, r2, r1
001544  63414ff5  loadli.w r2,  -1372(r30)
001548  73601100  stores.w r1, 0(r2)
00154c  9f008ff6  addli r1, r30, -1216
001550  00a00300  mfence { lm, sm, gm }
001554  80210204  csr_set csr3, r4
001558  00d00100  sync_group
00155c  00a00000  mfence { lm }
001560  46106f82  vstore_mask16.mz vr6{mr1}, 1024(r30)
001564  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
001568  9f000ff7  addli r1, r30, -1152
00156c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001570  9f008ff7  addli r1, r30, -1088
001574  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
001578  bb7103f6  bneq r6, zero, -4996
00157c  e3425ff5  loadli.w r5,  -1364(r30)
001580  efc00200  loads.w r1, 0(r5)
001584  6fc14200  loads.w r2, 4(r5)
001588  efc18200  loads.w r3, 8(r5)
00158c  8be02010  add.f.rn r1, r1, r2
001590  6fc1c200  loads.w r2, 12(r5)
001594  8be03010  add.f.rn r1, r1, r3
001598  efc10201  loads.w r3, 16(r5)
00159c  8be02010  add.f.rn r1, r1, r2
0015a0  6fc14201  loads.w r2, 20(r5)
0015a4  8be03010  add.f.rn r1, r1, r3
0015a8  efc18201  loads.w r3, 24(r5)
0015ac  8be02010  add.f.rn r1, r1, r2
0015b0  6fc1c201  loads.w r2, 28(r5)
0015b4  8be03010  add.f.rn r1, r1, r3
0015b8  efc10202  loads.w r3, 32(r5)
0015bc  8be02010  add.f.rn r1, r1, r2
0015c0  6fc14202  loads.w r2, 36(r5)
0015c4  8be03010  add.f.rn r1, r1, r3
0015c8  efc18202  loads.w r3, 40(r5)
0015cc  8be02010  add.f.rn r1, r1, r2
0015d0  6fc1c202  loads.w r2, 44(r5)
0015d4  8be03010  add.f.rn r1, r1, r3
0015d8  efc10203  loads.w r3, 48(r5)
0015dc  8be02010  add.f.rn r1, r1, r2
0015e0  6fc14203  loads.w r2, 52(r5)
0015e4  8be03010  add.f.rn r1, r1, r3
0015e8  efc18203  loads.w r3, 56(r5)
0015ec  8be02010  add.f.rn r1, r1, r2
0015f0  6fc1c203  loads.w r2, 60(r5)
0015f4  8be03010  add.f.rn r1, r1, r3
0015f8  8be02010  add.f.rn r1, r1, r2
0015fc  73e01200  stores.w r1, 0(r5)
001600  db7efdff  j -5132
001604  9f0e8ff3  addli sp, r30, -1600
001608  9f8e8e0c  addli sp, sp, 1600
00160c  00a00300  mfence { lm, sm, gm }
001610  00100000  exit
001614  9f8efeff  addli sp, sp, -8
001618  9f000100  addli r1, r2, 0
00161c  2bf1ff7f  lui r2, 524287
001620  ab02807f  lui r5, 522240
001624  67c0ee01  storeli.w r30, 4(sp)
001628  6780fe01  storeli.w r31, 0(sp)
00162c  1f8f1e00  addli r30, sp, 8
001630  1b12f1ff  ori r4, r2, 4095
001634  17814000  and r2, r1, r4
001638  13832204  setlt.u r6, r5, r2
00163c  1f810100  addli r2, r3, 0
001640  bb210300  bneq r6, zero, 104
001644  97014100  and r3, r2, r4
001648  93813204  setlt.u r3, r5, r3
00164c  3be10100  bneq r3, zero, 88
001650  abf1ffff  lui r3, 1048575
001654  17221100  xor r4, r2, r1
001658  9b91f1ff  ori r3, r3, 4095
00165c  3fa04100  blt.s r3, r4, 8
001660  5b0b0000  j 88
001664  9b319100  slli r3, r2, 9
001668  9bb29000  slli r5, r1, 9
00166c  1b427101  srli r4, r2, 23
001670  1bc37001  srli r6, r1, 23
001674  93e32004  setlt.f r7, r1, r2
001678  93810100  seteq r3, r3, zero
00167c  93820200  seteq r5, r5, zero
001680  1b02f20f  andi r4, r4, 255
001684  1b03f30f  andi r6, r6, 255
001688  1b72f20f  setlti r4, r4, 255
00168c  1b73f30f  setlti r6, r6, 255
001690  97113200  or r3, r4, r3
001694  17125300  or r4, r6, r5
001698  97013200  and r3, r4, r3
00169c  97813300  and r3, r7, r3
0016a0  3ba00100  bneq r3, zero, 8
0016a4  1f810000  addli r2, r1, 0
0016a8  e38f0e00  loadli.w r31,  0(sp)
0016ac  63cf0e00  loadli.w r30,  4(sp)
0016b0  9f8e1e00  addli sp, sp, 8
0016b4  5f800f00  jr r31, 0
0016b8  bfcf00fe  blt.s r1, zero, -16
0016bc  5bfdffff  j -24
0016c0  00100000  exit
0016c4  00100000  exit
0016c8  00100000  exit
0016cc  00100000  exit
0016d0  00100000  exit
0016d4  00100000  exit
0016d8  00100000  exit
0016dc  00100000  exit
0016e0  00100000  exit
0016e4  00100000  exit
0016e8  00100000  exit
0016ec  00100000  exit
0016f0  00100000  exit
0016f4  00100000  exit
0016f8  00100000  exit
0016fc  00100000  exit
001700  00100000  exit
001704  00100000  exit
001708  00100000  exit
00170c  00100000  exit
001710  00100000  exit
001714  00100000  exit
001718  00100000  exit
00171c  00100000  exit
001720  00100000  exit
001724  00100000  exit
001728  00100000  exit
00172c  00100000  exit
001730  00100000  exit
001734  00100000  exit
001738  00100000  exit
00173c  00100000  exit
001740  00100000  exit
001744  00100000  exit
001748  00100000  exit
00174c  00100000  exit
001750  00100000  exit
001754  00100000  exit
001758  00100000  exit
00175c  00100000  exit
001760  00100000  exit
001764  00100000  exit
001768  00100000  exit
00176c  00100000  exit
001770  00100000  exit
001774  00100000  exit
001778  00100000  exit
00177c  00100000  exit
001780  00100000  exit
001784  00100000  exit
001788  00100000  exit
00178c  00100000  exit
001790  00100000  exit
001794  00100000  exit
001798  00100000  exit
00179c  00100000  exit
0017a0  00100000  exit
0017a4  00100000  exit
0017a8  00100000  exit
0017ac  00100000  exit
0017b0  00100000  exit
0017b4  00100000  exit
0017b8  00100000  exit
0017bc  00100000  exit
0017c0  00100000  exit
0017c4  00100000  exit
0017c8  00100000  exit
0017cc  00100000  exit
0017d0  00100000  exit
0017d4  00100000  exit
0017d8  00100000  exit
0017dc  00100000  exit
0017e0  00100000  exit
0017e4  00100000  exit
0017e8  00100000  exit
0017ec  00100000  exit
0017f0  00100000  exit
0017f4  00100000  exit
0017f8  00100000  exit
0017fc  00100000  exit
001800  00100000  exit
001804  00100000  exit
001808  00100000  exit
00180c  00100000  exit
001810  00100000  exit
001814  00100000  exit
001818  00100000  exit
00181c  00100000  exit
001820  00100000  exit
001824  00100000  exit
001828  00100000  exit
00182c  00100000  exit
001830  00100000  exit
001834  00100000  exit
001838  00100000  exit
00183c  00100000  exit
001840  00100000  exit
001844  00100000  exit
001848  00100000  exit
00184c  00100000  exit
001850  00100000  exit
001854  00100000  exit
001858  00100000  exit
00185c  00100000  exit
001860  00100000  exit
001864  00100000  exit
001868  00100000  exit
00186c  00100000  exit
001870  00100000  exit
001874  00100000  exit
001878  00100000  exit
00187c  00100000  exit
001880  00100000  exit
001884  00100000  exit
001888  00100000  exit
00188c  00100000  exit
001890  00100000  exit
001894  00100000  exit
001898  00100000  exit
00189c  00100000  exit
0018a0  00100000  exit
0018a4  00100000  exit
0018a8  00100000  exit
0018ac  00100000  exit
0018b0  00100000  exit
0018b4  00100000  exit
0018b8  00100000  exit
0018bc  00100000  exit
0018c0  00100000  exit
0018c4  00100000  exit
0018c8  00100000  exit
0018cc  00100000  exit
0018d0  00100000  exit
0018d4  00100000  exit
0018d8  00100000  exit
0018dc  00100000  exit
0018e0  00100000  exit
0018e4  00100000  exit
0018e8  00100000  exit
0018ec  00100000  exit
0018f0  00100000  exit
0018f4  00100000  exit
0018f8  00100000  exit
0018fc  00100000  exit
