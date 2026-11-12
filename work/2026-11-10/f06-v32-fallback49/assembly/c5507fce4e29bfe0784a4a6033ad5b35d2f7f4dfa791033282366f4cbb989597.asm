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
000028  0b864138  mod.u r12, r3, r4
00002c  9f450000  addli r11, zero, 4
000030  8b86b030  div.u r13, r1, r11
000034  1f160600  addli r12, r12, 1
000038  8b00d620  mul.u r1, r12, r13
00003c  8b805010  add.u r1, r1, r5
000040  9f8e0000  addli sp, r1, 0
000044  1bba6700  slli r20, r15, 6
000048  978e4e01  and sp, sp, r20
00004c  cb003200  ble.s r4, r3, 32
000050  80520202  load_param_i r5, 4
000054  00d20102  load_param_i r4, 3
000058  ab0900f0  lui r19, 983040
00005c  9f495000  addli r19, zero, 44
000060  1f8a8eff  addli r20, sp, -64
000064  ff494201  bl_gm2lm r19, r20, 0(r[5:6])
000068  00a00200  mfence { lm, gm }
00006c  abfa0000  lui r21, 15
000070  9b9afaff  ori r21, r21, 4095
000074  80a10a04  csr_set csr3, r21
000078  00d00100  sync_group
00007c  fe8007e0  vmmov mr1, r15
000080  fe900720  vmmovh mr1, r15
000084  d7160000  jal 180
000088  fe8007e0  vmmov mr1, r15
00008c  fe900720  vmmovh mr1, r15
000090  1f8a8eff  addli r20, sp, -64
000094  4a100002  vloads_mask16.mz vr0{mr1}, 0(zero)
000098  46000a02  vstore.mz vr0{mr1}, 0(r20)
00009c  00a00100  mfence { lm, sm }
0000a0  00d00100  sync_group
0000a4  97a01000  xor r1, r1, r1
0000a8  1f8f0e00  addli r30, sp, 0
0000ac  d7160000  jal 180
0000b0  00400000  trap
0000b4  9f8e8ef7  addli sp, sp, -1088
0000b8  9f100000  addli r1, zero, 1
0000bc  00360002  core_id r12
0000c0  1f8f0e08  addli r30, sp, 1024
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600600  beq r12, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  db710000  j 908
0000e0  1f210000  addli r2, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  abf1ffff  lui r3, 1048575
0000ec  1d000100  lock zero, r2
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b90f1ff  ori r1, r3, 4095
0000f8  9f310000  addli r3, zero, 3
0000fc  1d100100  unlock r2
000100  1f510000  addli r2, zero, 5
000104  80a10004  csr_set csr3, r1
000108  9f601000  addli r1, zero, 14
00010c  00d00100  sync_group
000110  7d800000  xsignal r1, 0
000114  7d800000  xsignal r1, 0
000118  7d800000  xsignal r1, 0
00011c  7d000100  xsignal r2, 0
000120  7d000100  xsignal r2, 0
000124  7d000100  xsignal r2, 0
000128  7d000100  xsignal r2, 0
00012c  7d000100  xsignal r2, 0
000130  7d000100  xsignal r2, 0
000134  7d000100  xsignal r2, 0
000138  7d000100  xsignal r2, 0
00013c  7d000100  xsignal r2, 0
000140  7d000100  xsignal r2, 0
000144  7d000100  xsignal r2, 0
000148  7d000100  xsignal r2, 0
00014c  7d000100  xsignal r2, 0
000150  7d000100  xsignal r2, 0
000154  7d000100  xsignal r2, 0
000158  7d000100  xsignal r2, 0
00015c  7d000100  xsignal r2, 0
000160  7d000100  xsignal r2, 0
000164  7d000100  xsignal r2, 0
000168  7d000100  xsignal r2, 0
00016c  7d000100  xsignal r2, 0
000170  7d000100  xsignal r2, 0
000174  7d000100  xsignal r2, 0
000178  7d000100  xsignal r2, 0
00017c  7d000100  xsignal r2, 0
000180  7d000100  xsignal r2, 0
000184  7d000100  xsignal r2, 0
000188  7d000100  xsignal r2, 0
00018c  7d000100  xsignal r2, 0
000190  7d000100  xsignal r2, 0
000194  7d000100  xsignal r2, 0
000198  7d000100  xsignal r2, 0
00019c  7d000100  xsignal r2, 0
0001a0  7d000100  xsignal r2, 0
0001a4  7d000100  xsignal r2, 0
0001a8  7d000100  xsignal r2, 0
0001ac  7d000100  xsignal r2, 0
0001b0  7d000100  xsignal r2, 0
0001b4  7d000100  xsignal r2, 0
0001b8  7d000100  xsignal r2, 0
0001bc  7d000100  xsignal r2, 0
0001c0  7d000100  xsignal r2, 0
0001c4  7d000100  xsignal r2, 0
0001c8  7d000100  xsignal r2, 0
0001cc  7d000100  xsignal r2, 0
0001d0  7d000100  xsignal r2, 0
0001d4  7d000100  xsignal r2, 0
0001d8  7d000100  xsignal r2, 0
0001dc  9f101000  addli r1, zero, 9
0001e0  1f710000  addli r2, zero, 7
0001e4  7d800100  xsignal r3, 0
0001e8  7d800100  xsignal r3, 0
0001ec  7d800100  xsignal r3, 0
0001f0  7d800100  xsignal r3, 0
0001f4  7d800100  xsignal r3, 0
0001f8  7d800100  xsignal r3, 0
0001fc  7d800100  xsignal r3, 0
000200  7d800100  xsignal r3, 0
000204  7d800100  xsignal r3, 0
000208  7d800100  xsignal r3, 0
00020c  7d800100  xsignal r3, 0
000210  7d800100  xsignal r3, 0
000214  7d800100  xsignal r3, 0
000218  7d800100  xsignal r3, 0
00021c  7d800100  xsignal r3, 0
000220  7d800100  xsignal r3, 0
000224  7d800100  xsignal r3, 0
000228  7d800100  xsignal r3, 0
00022c  7d800100  xsignal r3, 0
000230  7d800100  xsignal r3, 0
000234  7d800100  xsignal r3, 0
000238  7d800100  xsignal r3, 0
00023c  7d800100  xsignal r3, 0
000240  7d800100  xsignal r3, 0
000244  7d800100  xsignal r3, 0
000248  7d800100  xsignal r3, 0
00024c  7d800100  xsignal r3, 0
000250  7d800100  xsignal r3, 0
000254  7d800100  xsignal r3, 0
000258  7d800100  xsignal r3, 0
00025c  7d800100  xsignal r3, 0
000260  7d800100  xsignal r3, 0
000264  7d800100  xsignal r3, 0
000268  7d800100  xsignal r3, 0
00026c  7d800100  xsignal r3, 0
000270  7d800100  xsignal r3, 0
000274  7d800100  xsignal r3, 0
000278  7d800000  xsignal r1, 0
00027c  7d800000  xsignal r1, 0
000280  7d800000  xsignal r1, 0
000284  7d800000  xsignal r1, 0
000288  7d800000  xsignal r1, 0
00028c  7d800000  xsignal r1, 0
000290  7d800000  xsignal r1, 0
000294  7d800000  xsignal r1, 0
000298  7d800000  xsignal r1, 0
00029c  7d800000  xsignal r1, 0
0002a0  7d800000  xsignal r1, 0
0002a4  7d800000  xsignal r1, 0
0002a8  7d800000  xsignal r1, 0
0002ac  7d800000  xsignal r1, 0
0002b0  7d800000  xsignal r1, 0
0002b4  7d800000  xsignal r1, 0
0002b8  7d800000  xsignal r1, 0
0002bc  7d800000  xsignal r1, 0
0002c0  7d800000  xsignal r1, 0
0002c4  7d800000  xsignal r1, 0
0002c8  7d800000  xsignal r1, 0
0002cc  7d800000  xsignal r1, 0
0002d0  7d800000  xsignal r1, 0
0002d4  7d800000  xsignal r1, 0
0002d8  7d800000  xsignal r1, 0
0002dc  7d800000  xsignal r1, 0
0002e0  7d800000  xsignal r1, 0
0002e4  7d800000  xsignal r1, 0
0002e8  7d800000  xsignal r1, 0
0002ec  7d800000  xsignal r1, 0
0002f0  7d800000  xsignal r1, 0
0002f4  7d800000  xsignal r1, 0
0002f8  7d800000  xsignal r1, 0
0002fc  7d800000  xsignal r1, 0
000300  7d800000  xsignal r1, 0
000304  7d800000  xsignal r1, 0
000308  7d800000  xsignal r1, 0
00030c  7d800000  xsignal r1, 0
000310  7d800000  xsignal r1, 0
000314  7d800000  xsignal r1, 0
000318  7d800000  xsignal r1, 0
00031c  7d800000  xsignal r1, 0
000320  7d800000  xsignal r1, 0
000324  7d800000  xsignal r1, 0
000328  7d800000  xsignal r1, 0
00032c  7d800000  xsignal r1, 0
000330  7d800000  xsignal r1, 0
000334  7d800000  xsignal r1, 0
000338  7d800000  xsignal r1, 0
00033c  7d800000  xsignal r1, 0
000340  7d800000  xsignal r1, 0
000344  7d800000  xsignal r1, 0
000348  7d800000  xsignal r1, 0
00034c  7d800000  xsignal r1, 0
000350  7d800000  xsignal r1, 0
000354  7d800000  xsignal r1, 0
000358  7d800000  xsignal r1, 0
00035c  7d800000  xsignal r1, 0
000360  7d800000  xsignal r1, 0
000364  7d800000  xsignal r1, 0
000368  7d800000  xsignal r1, 0
00036c  7d800000  xsignal r1, 0
000370  7d800000  xsignal r1, 0
000374  7d800000  xsignal r1, 0
000378  7d800000  xsignal r1, 0
00037c  7d800000  xsignal r1, 0
000380  7d800000  xsignal r1, 0
000384  7d800000  xsignal r1, 0
000388  7d800000  xsignal r1, 0
00038c  7d800000  xsignal r1, 0
000390  7d800000  xsignal r1, 0
000394  7d800000  xsignal r1, 0
000398  7d800000  xsignal r1, 0
00039c  7d800000  xsignal r1, 0
0003a0  7d800000  xsignal r1, 0
0003a4  7d800000  xsignal r1, 0
0003a8  7d800000  xsignal r1, 0
0003ac  7d800000  xsignal r1, 0
0003b0  7d800000  xsignal r1, 0
0003b4  7d800000  xsignal r1, 0
0003b8  7d000100  xsignal r2, 0
0003bc  7d000100  xsignal r2, 0
0003c0  7d000100  xsignal r2, 0
0003c4  7d000100  xsignal r2, 0
0003c8  7d000100  xsignal r2, 0
0003cc  7d000100  xsignal r2, 0
0003d0  7d000100  xsignal r2, 0
0003d4  7d000100  xsignal r2, 0
0003d8  7d000100  xsignal r2, 0
0003dc  7d000100  xsignal r2, 0
0003e0  7d000100  xsignal r2, 0
0003e4  7d000100  xsignal r2, 0
0003e8  7d000100  xsignal r2, 0
0003ec  7d000100  xsignal r2, 0
0003f0  7d000100  xsignal r2, 0
0003f4  7d000100  xsignal r2, 0
0003f8  7d000100  xsignal r2, 0
0003fc  7d000100  xsignal r2, 0
000400  7d000100  xsignal r2, 0
000404  7d000100  xsignal r2, 0
000408  7d000100  xsignal r2, 0
00040c  7d000100  xsignal r2, 0
000410  7d000100  xsignal r2, 0
000414  7d000100  xsignal r2, 0
000418  7d000100  xsignal r2, 0
00041c  7d000100  xsignal r2, 0
000420  7d000100  xsignal r2, 0
000424  7d000100  xsignal r2, 0
000428  7d000100  xsignal r2, 0
00042c  7d000100  xsignal r2, 0
000430  7d000100  xsignal r2, 0
000434  7d000100  xsignal r2, 0
000438  7d000100  xsignal r2, 0
00043c  7d000100  xsignal r2, 0
000440  7d000100  xsignal r2, 0
000444  7d000100  xsignal r2, 0
000448  9f302000  addli r1, zero, 19
00044c  1f112000  addli r2, zero, 17
000450  7d800000  xsignal r1, 0
000454  7d800000  xsignal r1, 0
000458  7d800000  xsignal r1, 0
00045c  7d000100  xsignal r2, 0
000460  7d000100  xsignal r2, 0
000464  7d000100  xsignal r2, 0
000468  e3004f00  loadli.w r1,  32(r30)
00046c  63414f00  loadli.w r2,  36(r30)
000470  80d10002  load_param_i r3, 1
000474  63025f00  loadli.w r4,  40(r30)
000478  00530002  load_param_i r6, 0
00047c  abf2ffff  lui r5, 1048575
000480  670f0ffe  storeli.w zero, -16(r30)
000484  670e0ffe  storeli.w zero, -32(r30)
000488  e7440ffe  storeli.w zero, -180(r30)
00048c  e7000ffc  storeli.w zero, -504(r30)
000490  67070ffa  storeli.w zero, -656(r30)
000494  e74a0ff8  storeli.w zero, -852(r30)
000498  8b101120  mul.s r1, r2, r1
00049c  1f810100  addli r2, r3, 0
0004a0  0b914050  fmac.s r2, r1, r4
0004a4  0b924020  mul.s r4, r1, r4
0004a8  1f71f1ff  addli r2, r2, -1
0004ac  0b113130  div.s r2, r2, r3
0004b0  9b91f2ff  ori r3, r5, 4095
0004b4  674f3ffe  storeli.w r3, -12(r30)
0004b8  e70f3ffe  storeli.w r3, -8(r30)
0004bc  e74f3ffe  storeli.w r3, -4(r30)
0004c0  674e3ffe  storeli.w r3, -28(r30)
0004c4  e70e3ffe  storeli.w r3, -24(r30)
0004c8  e74e3ffe  storeli.w r3, -20(r30)
0004cc  67053ffe  storeli.w r3, -176(r30)
0004d0  67453ffe  storeli.w r3, -172(r30)
0004d4  e7053ffe  storeli.w r3, -168(r30)
0004d8  e7453ffe  storeli.w r3, -164(r30)
0004dc  67063ffe  storeli.w r3, -160(r30)
0004e0  67463ffe  storeli.w r3, -156(r30)
0004e4  e7063ffe  storeli.w r3, -152(r30)
0004e8  e7463ffe  storeli.w r3, -148(r30)
0004ec  67073ffe  storeli.w r3, -144(r30)
0004f0  67473ffe  storeli.w r3, -140(r30)
0004f4  e7073ffe  storeli.w r3, -136(r30)
0004f8  e7473ffe  storeli.w r3, -132(r30)
0004fc  67083ffe  storeli.w r3, -128(r30)
000500  67483ffe  storeli.w r3, -124(r30)
000504  e7083ffe  storeli.w r3, -120(r30)
000508  e7483ffe  storeli.w r3, -116(r30)
00050c  67093ffe  storeli.w r3, -112(r30)
000510  67493ffe  storeli.w r3, -108(r30)
000514  e7093ffe  storeli.w r3, -104(r30)
000518  e7493ffe  storeli.w r3, -100(r30)
00051c  670a3ffe  storeli.w r3, -96(r30)
000520  674a3ffe  storeli.w r3, -92(r30)
000524  e70a3ffe  storeli.w r3, -88(r30)
000528  e74a3ffe  storeli.w r3, -84(r30)
00052c  670b3ffe  storeli.w r3, -80(r30)
000530  674b3ffe  storeli.w r3, -76(r30)
000534  e70b3ffe  storeli.w r3, -72(r30)
000538  e74b3ffe  storeli.w r3, -68(r30)
00053c  670c3ffe  storeli.w r3, -64(r30)
000540  674c3ffe  storeli.w r3, -60(r30)
000544  e70c3ffe  storeli.w r3, -56(r30)
000548  e74c3ffe  storeli.w r3, -52(r30)
00054c  670d3ffe  storeli.w r3, -48(r30)
000550  674d3ffe  storeli.w r3, -44(r30)
000554  e70d3ffe  storeli.w r3, -40(r30)
000558  e74d3ffe  storeli.w r3, -36(r30)
00055c  e7403ffc  storeli.w r3, -500(r30)
000560  67013ffc  storeli.w r3, -496(r30)
000564  67413ffc  storeli.w r3, -492(r30)
000568  e7013ffc  storeli.w r3, -488(r30)
00056c  e7413ffc  storeli.w r3, -484(r30)
000570  67023ffc  storeli.w r3, -480(r30)
000574  67423ffc  storeli.w r3, -476(r30)
000578  e7023ffc  storeli.w r3, -472(r30)
00057c  e7423ffc  storeli.w r3, -468(r30)
000580  67033ffc  storeli.w r3, -464(r30)
000584  67433ffc  storeli.w r3, -460(r30)
000588  e7033ffc  storeli.w r3, -456(r30)
00058c  e7433ffc  storeli.w r3, -452(r30)
000590  67043ffc  storeli.w r3, -448(r30)
000594  67443ffc  storeli.w r3, -444(r30)
000598  e7043ffc  storeli.w r3, -440(r30)
00059c  e7443ffc  storeli.w r3, -436(r30)
0005a0  67053ffc  storeli.w r3, -432(r30)
0005a4  67453ffc  storeli.w r3, -428(r30)
0005a8  e7053ffc  storeli.w r3, -424(r30)
0005ac  e7453ffc  storeli.w r3, -420(r30)
0005b0  67063ffc  storeli.w r3, -416(r30)
0005b4  67463ffc  storeli.w r3, -412(r30)
0005b8  e7063ffc  storeli.w r3, -408(r30)
0005bc  e7463ffc  storeli.w r3, -404(r30)
0005c0  67073ffc  storeli.w r3, -400(r30)
0005c4  67473ffc  storeli.w r3, -396(r30)
0005c8  e7073ffc  storeli.w r3, -392(r30)
0005cc  e7473ffc  storeli.w r3, -388(r30)
0005d0  67083ffc  storeli.w r3, -384(r30)
0005d4  67483ffc  storeli.w r3, -380(r30)
0005d8  e7083ffc  storeli.w r3, -376(r30)
0005dc  e7483ffc  storeli.w r3, -372(r30)
0005e0  67093ffc  storeli.w r3, -368(r30)
0005e4  67493ffc  storeli.w r3, -364(r30)
0005e8  e7093ffc  storeli.w r3, -360(r30)
0005ec  e7493ffc  storeli.w r3, -356(r30)
0005f0  670a3ffc  storeli.w r3, -352(r30)
0005f4  674a3ffc  storeli.w r3, -348(r30)
0005f8  e70a3ffc  storeli.w r3, -344(r30)
0005fc  e74a3ffc  storeli.w r3, -340(r30)
000600  670b3ffc  storeli.w r3, -336(r30)
000604  674b3ffc  storeli.w r3, -332(r30)
000608  e70b3ffc  storeli.w r3, -328(r30)
00060c  e74b3ffc  storeli.w r3, -324(r30)
000610  670c3ffc  storeli.w r3, -320(r30)
000614  674c3ffc  storeli.w r3, -316(r30)
000618  e70c3ffc  storeli.w r3, -312(r30)
00061c  e74c3ffc  storeli.w r3, -308(r30)
000620  670d3ffc  storeli.w r3, -304(r30)
000624  674d3ffc  storeli.w r3, -300(r30)
000628  e70d3ffc  storeli.w r3, -296(r30)
00062c  e74d3ffc  storeli.w r3, -292(r30)
000630  670e3ffc  storeli.w r3, -288(r30)
000634  674e3ffc  storeli.w r3, -284(r30)
000638  e70e3ffc  storeli.w r3, -280(r30)
00063c  e74e3ffc  storeli.w r3, -276(r30)
000640  670f3ffc  storeli.w r3, -272(r30)
000644  674f3ffc  storeli.w r3, -268(r30)
000648  e70f3ffc  storeli.w r3, -264(r30)
00064c  e74f3ffc  storeli.w r3, -260(r30)
000650  67003ffe  storeli.w r3, -256(r30)
000654  67403ffe  storeli.w r3, -252(r30)
000658  e7003ffe  storeli.w r3, -248(r30)
00065c  e7403ffe  storeli.w r3, -244(r30)
000660  67013ffe  storeli.w r3, -240(r30)
000664  67413ffe  storeli.w r3, -236(r30)
000668  e7013ffe  storeli.w r3, -232(r30)
00066c  e7413ffe  storeli.w r3, -228(r30)
000670  67023ffe  storeli.w r3, -224(r30)
000674  67423ffe  storeli.w r3, -220(r30)
000678  e7023ffe  storeli.w r3, -216(r30)
00067c  e7423ffe  storeli.w r3, -212(r30)
000680  67033ffe  storeli.w r3, -208(r30)
000684  67433ffe  storeli.w r3, -204(r30)
000688  e7033ffe  storeli.w r3, -200(r30)
00068c  e7433ffe  storeli.w r3, -196(r30)
000690  67043ffe  storeli.w r3, -192(r30)
000694  67443ffe  storeli.w r3, -188(r30)
000698  e7043ffe  storeli.w r3, -184(r30)
00069c  67473ffa  storeli.w r3, -652(r30)
0006a0  e7073ffa  storeli.w r3, -648(r30)
0006a4  e7473ffa  storeli.w r3, -644(r30)
0006a8  67083ffa  storeli.w r3, -640(r30)
0006ac  67483ffa  storeli.w r3, -636(r30)
0006b0  e7083ffa  storeli.w r3, -632(r30)
0006b4  e7483ffa  storeli.w r3, -628(r30)
0006b8  67093ffa  storeli.w r3, -624(r30)
0006bc  67493ffa  storeli.w r3, -620(r30)
0006c0  e7093ffa  storeli.w r3, -616(r30)
0006c4  e7493ffa  storeli.w r3, -612(r30)
0006c8  670a3ffa  storeli.w r3, -608(r30)
0006cc  674a3ffa  storeli.w r3, -604(r30)
0006d0  e70a3ffa  storeli.w r3, -600(r30)
0006d4  e74a3ffa  storeli.w r3, -596(r30)
0006d8  670b3ffa  storeli.w r3, -592(r30)
0006dc  674b3ffa  storeli.w r3, -588(r30)
0006e0  e70b3ffa  storeli.w r3, -584(r30)
0006e4  e74b3ffa  storeli.w r3, -580(r30)
0006e8  670c3ffa  storeli.w r3, -576(r30)
0006ec  674c3ffa  storeli.w r3, -572(r30)
0006f0  e70c3ffa  storeli.w r3, -568(r30)
0006f4  e74c3ffa  storeli.w r3, -564(r30)
0006f8  670d3ffa  storeli.w r3, -560(r30)
0006fc  674d3ffa  storeli.w r3, -556(r30)
000700  e70d3ffa  storeli.w r3, -552(r30)
000704  e74d3ffa  storeli.w r3, -548(r30)
000708  670e3ffa  storeli.w r3, -544(r30)
00070c  674e3ffa  storeli.w r3, -540(r30)
000710  e70e3ffa  storeli.w r3, -536(r30)
000714  e74e3ffa  storeli.w r3, -532(r30)
000718  670f3ffa  storeli.w r3, -528(r30)
00071c  674f3ffa  storeli.w r3, -524(r30)
000720  e70f3ffa  storeli.w r3, -520(r30)
000724  e74f3ffa  storeli.w r3, -516(r30)
000728  67003ffc  storeli.w r3, -512(r30)
00072c  67403ffc  storeli.w r3, -508(r30)
000730  670b3ff8  storeli.w r3, -848(r30)
000734  674b3ff8  storeli.w r3, -844(r30)
000738  e70b3ff8  storeli.w r3, -840(r30)
00073c  e74b3ff8  storeli.w r3, -836(r30)
000740  670c3ff8  storeli.w r3, -832(r30)
000744  674c3ff8  storeli.w r3, -828(r30)
000748  e70c3ff8  storeli.w r3, -824(r30)
00074c  e74c3ff8  storeli.w r3, -820(r30)
000750  670d3ff8  storeli.w r3, -816(r30)
000754  674d3ff8  storeli.w r3, -812(r30)
000758  e70d3ff8  storeli.w r3, -808(r30)
00075c  e74d3ff8  storeli.w r3, -804(r30)
000760  670e3ff8  storeli.w r3, -800(r30)
000764  674e3ff8  storeli.w r3, -796(r30)
000768  e70e3ff8  storeli.w r3, -792(r30)
00076c  e74e3ff8  storeli.w r3, -788(r30)
000770  670f3ff8  storeli.w r3, -784(r30)
000774  674f3ff8  storeli.w r3, -780(r30)
000778  e70f3ff8  storeli.w r3, -776(r30)
00077c  e74f3ff8  storeli.w r3, -772(r30)
000780  67003ffa  storeli.w r3, -768(r30)
000784  67403ffa  storeli.w r3, -764(r30)
000788  e7003ffa  storeli.w r3, -760(r30)
00078c  e7403ffa  storeli.w r3, -756(r30)
000790  67013ffa  storeli.w r3, -752(r30)
000794  67413ffa  storeli.w r3, -748(r30)
000798  e7013ffa  storeli.w r3, -744(r30)
00079c  e7413ffa  storeli.w r3, -740(r30)
0007a0  67023ffa  storeli.w r3, -736(r30)
0007a4  67423ffa  storeli.w r3, -732(r30)
0007a8  e7023ffa  storeli.w r3, -728(r30)
0007ac  e7423ffa  storeli.w r3, -724(r30)
0007b0  67033ffa  storeli.w r3, -720(r30)
0007b4  67433ffa  storeli.w r3, -716(r30)
0007b8  e7033ffa  storeli.w r3, -712(r30)
0007bc  e7433ffa  storeli.w r3, -708(r30)
0007c0  67043ffa  storeli.w r3, -704(r30)
0007c4  67443ffa  storeli.w r3, -700(r30)
0007c8  e7043ffa  storeli.w r3, -696(r30)
0007cc  e7443ffa  storeli.w r3, -692(r30)
0007d0  67053ffa  storeli.w r3, -688(r30)
0007d4  67453ffa  storeli.w r3, -684(r30)
0007d8  e7053ffa  storeli.w r3, -680(r30)
0007dc  e7453ffa  storeli.w r3, -676(r30)
0007e0  67063ffa  storeli.w r3, -672(r30)
0007e4  67463ffa  storeli.w r3, -668(r30)
0007e8  e7063ffa  storeli.w r3, -664(r30)
0007ec  e7463ffa  storeli.w r3, -660(r30)
0007f0  8b106120  mul.s r1, r2, r6
0007f4  0b116150  fmac.s r2, r2, r6
0007f8  0b114140  min.s r2, r2, r4
0007fc  4b2b1112  ble.s r2, r1, 9928
000800  33110128  sext_int2long r[3:4], r2
000804  33930028  sext_int2long r[7:8], r1
000808  9f440000  addli r9, zero, 4
00080c  1f750000  addli r10, zero, 7
000810  9f3a0000  addli r21, zero, 3
000814  ab074000  lui r15, 1024
000818  2b02807f  lui r4, 522240
00081c  ab02ffff  lui r5, 1048560
000820  67440ff8  storeli.w zero, -956(r30)
000824  73342fc0  store.d r[3:4], -1016(r30)
000828  1f71f01f  addli r2, zero, 4095
00082c  9f018000  addli r3, zero, 64
000830  ab80ffff  lui r1, 1048568
000834  73301fc0  store.d r[2:3], -1024(r30)
000838  abf0ff7f  lui r1, 524287
00083c  2bf17f7f  lui r2, 522239
000840  9b9df0ff  ori r27, r1, 4095
000844  ab700000  lui r1, 7
000848  1b1ef1ff  ori r28, r2, 4095
00084c  1b98f0ff  ori r16, r1, 4095
000850  5b060000  j 48
000854  9f401000  addli r1, zero, 12
000858  7d800000  xsignal r1, 0
00085c  9f102000  addli r1, zero, 17
000860  7d800000  xsignal r1, 0
000864  6b538fc3  load.d r[7:8], -968(r30)
000868  eb508fc0  load.d r[2:3], -1016(r30)
00086c  9f018000  addli r3, zero, 64
000870  9f440000  addli r9, zero, 4
000874  27130300  addli.d r[7:8], r[7:8], 1
000878  93301304  setlt.sl r1, r[7:8], r[2:3]
00087c  37a90012  beq r1, zero, 9800
000880  3b309600  bneq r12, r9, 12
000884  9f601000  addli r1, zero, 14
000888  7d900000  xwait r1, 0
00088c  e3005f00  loadli.w r1,  40(r30)
000890  63414f00  loadli.w r2,  36(r30)
000894  733c6fc2  store.d r[7:8], -968(r30)
000898  6306effa  loadli.w r12,  -656(r30)
00089c  8b101330  div.s r1, r6, r1
0008a0  8b932030  div.s r7, r1, r2
0008a4  0b943330  div.s r8, r7, r3
0008a8  9f011000  addli r3, zero, 8
0008ac  9b303400  slli r1, r8, 3
0008b0  0b911418  sub.s r2, r9, r1
0008b4  8b153140  min.s r11, r2, r3
0008b8  0b91b338  mod.s r2, r7, r11
0008bc  0b932010  add.s r6, r1, r2
0008c0  1f511000  addli r2, zero, 13
0008c4  e3405ff9  loadli.w r1,  -852(r30)
0008c8  93846a04  setlt.u r9, r21, r6
0008cc  b3060328  zext_int2long r[14:15], r6
0008d0  17b12602  sll.d r[3:4], r[14:15], r2
0008d4  733cdfc0  store.d r[14:15], -1000(r30)
0008d8  73382fc8  store.d r[3:4], -880(r30)
0008dc  3bb00400  bneq r9, zero, 12
0008e0  33010028  zext_int2long r[3:4], zero
0008e4  db010000  j 12
0008e8  eb560fc0  load.d r[14:15], -1024(r30)
0008ec  1701d102  and.d r[3:4], r[3:4], r[14:15]
0008f0  1b346400  slli r8, r8, 6
0008f4  9f340000  addli r9, zero, 3
0008f8  1f170000  addli r14, zero, 1
0008fc  eb598f00  load.d r[20:21], 8(r30)
000900  1b337300  slli r6, r6, 7
000904  73342fc8  store.d r[3:4], -888(r30)
000908  9f210000  addli r3, zero, 2
00090c  1f014000  addli r2, zero, 32
000910  9f060000  addli r13, zero, 0
000914  8b938318  sub.s r7, r7, r8
000918  67416ff8  storeli.w r6, -1004(r30)
00091c  8b93b330  div.s r7, r7, r11
000920  e3458ff8  loadli.w r11,  -956(r30)
000924  0b949538  mod.s r8, r11, r9
000928  9f950500  addli r11, r11, 1
00092c  6744bff8  storeli.w r11, -956(r30)
000930  b3880328  zext_int2long r[18:19], r7
000934  1bb37300  slli r6, r7, 7
000938  97b8a802  sll.d r[18:19], r[18:19], r10
00093c  e7046ff8  storeli.w r6, -952(r30)
000940  9b330401  slli r7, r8, 16
000944  1f040000  addli r8, zero, 0
000948  73341fc3  store.d r[18:19], -984(r30)
00094c  97b8e802  sll.d r[18:19], r[18:19], r14
000950  8ba81911  add.ul r[18:19], r[20:21], r[18:19]
000954  73301fc9  store.d r[18:19], -896(r30)
000958  db320000  j 404
00095c  2b040300  lui r8, 48
000960  9f450000  addli r11, zero, 4
000964  1f060001  addli r12, zero, 128
000968  1b140404  ori r8, r8, 64
00096c  1d800500  lock zero, r11
000970  15010100  dma_cfg r2, r2, zero, 0
000974  0b138310  add.s r6, r6, r8
000978  1f048000  addli r8, zero, 64
00097c  15800b04  dma_cfg zero, r23, zero, 2
000980  15038b06  dma_cfg r6, r22, r8, 3
000984  1f630000  addli r6, zero, 6
000988  15062408  dma_cfg r12, r8, r2, 4
00098c  1506960b  dma_cfg r12, r12, r25, 5
000990  15000010  dma_cfg zero, zero, zero, 8
000994  35000000  dma_run zero
000998  1500200a  dma_cfg zero, zero, r2, 5
00099c  15000010  dma_cfg zero, zero, zero, 8
0009a0  1d900500  unlock r11
0009a4  1d000900  lock zero, r18
0009a8  15000014  dma_cfg zero, zero, zero, 10
0009ac  15002014  dma_cfg zero, zero, r2, 10
0009b0  15003014  dma_cfg zero, zero, r3, 10
0009b4  15009014  dma_cfg zero, zero, r9, 10
0009b8  1500b014  dma_cfg zero, zero, r11, 10
0009bc  15002015  dma_cfg zero, zero, r18, 10
0009c0  15006014  dma_cfg zero, zero, r6, 10
0009c4  1f031000  addli r6, zero, 8
0009c8  1500a014  dma_cfg zero, zero, r10, 10
0009cc  15006014  dma_cfg zero, zero, r6, 10
0009d0  1f131000  addli r6, zero, 9
0009d4  15006014  dma_cfg zero, zero, r6, 10
0009d8  1f231000  addli r6, zero, 10
0009dc  15006014  dma_cfg zero, zero, r6, 10
0009e0  1f331000  addli r6, zero, 11
0009e4  15006014  dma_cfg zero, zero, r6, 10
0009e8  1f431000  addli r6, zero, 12
0009ec  15006014  dma_cfg zero, zero, r6, 10
0009f0  1f531000  addli r6, zero, 13
0009f4  15006014  dma_cfg zero, zero, r6, 10
0009f8  1f631000  addli r6, zero, 14
0009fc  15006014  dma_cfg zero, zero, r6, 10
000a00  1f731000  addli r6, zero, 15
000a04  15006014  dma_cfg zero, zero, r6, 10
000a08  1f032000  addli r6, zero, 16
000a0c  15006014  dma_cfg zero, zero, r6, 10
000a10  1f132000  addli r6, zero, 17
000a14  15006014  dma_cfg zero, zero, r6, 10
000a18  1f232000  addli r6, zero, 18
000a1c  15006014  dma_cfg zero, zero, r6, 10
000a20  1f332000  addli r6, zero, 19
000a24  15006014  dma_cfg zero, zero, r6, 10
000a28  1f432000  addli r6, zero, 20
000a2c  15006014  dma_cfg zero, zero, r6, 10
000a30  1f532000  addli r6, zero, 21
000a34  15006014  dma_cfg zero, zero, r6, 10
000a38  1f632000  addli r6, zero, 22
000a3c  15006014  dma_cfg zero, zero, r6, 10
000a40  1f732000  addli r6, zero, 23
000a44  15006014  dma_cfg zero, zero, r6, 10
000a48  1f033000  addli r6, zero, 24
000a4c  15006014  dma_cfg zero, zero, r6, 10
000a50  1f133000  addli r6, zero, 25
000a54  15006014  dma_cfg zero, zero, r6, 10
000a58  1f233000  addli r6, zero, 26
000a5c  15006014  dma_cfg zero, zero, r6, 10
000a60  1f333000  addli r6, zero, 27
000a64  15006014  dma_cfg zero, zero, r6, 10
000a68  1f433000  addli r6, zero, 28
000a6c  15006014  dma_cfg zero, zero, r6, 10
000a70  1f533000  addli r6, zero, 29
000a74  15006014  dma_cfg zero, zero, r6, 10
000a78  1f633000  addli r6, zero, 30
000a7c  15006014  dma_cfg zero, zero, r6, 10
000a80  1f733000  addli r6, zero, 31
000a84  15006014  dma_cfg zero, zero, r6, 10
000a88  15010100  dma_cfg r2, r2, zero, 0
000a8c  15010002  dma_cfg r2, zero, zero, 1
000a90  15000004  dma_cfg zero, zero, zero, 2
000a94  95098006  dma_cfg r19, zero, r8, 3
000a98  15062008  dma_cfg r12, zero, r2, 4
000a9c  1506900b  dma_cfg r12, zero, r25, 5
000aa0  15000010  dma_cfg zero, zero, zero, 8
000aa4  35000000  dma_run zero
000aa8  1500200a  dma_cfg zero, zero, r2, 5
000aac  1f014000  addli r2, zero, 32
000ab0  15000010  dma_cfg zero, zero, zero, 8
000ab4  1d100900  unlock r18
000ab8  7d800100  xsignal r3, 0
000abc  63031ffc  loadli.w r6,  -504(r30)
000ac0  63449ffe  loadli.w r8,  -180(r30)
000ac4  1f130300  addli r6, r6, 1
000ac8  1f140400  addli r8, r8, 1
000acc  e7006ffc  storeli.w r6, -504(r30)
000ad0  e7448ffe  storeli.w r8, -180(r30)
000ad4  1b031700  andi r6, r14, 1
000ad8  b7680302  beq r6, zero, 1592
000adc  1f070000  addli r14, zero, 0
000ae0  9f960600  addli r13, r13, 1
000ae4  1f140000  addli r8, zero, 1
000ae8  1f060c00  addli r12, r24, 0
000aec  1f036000  addli r6, zero, 48
000af0  9f554000  addli r11, zero, 37
000af4  9f088000  addli r17, zero, 64
000af8  1f1c0600  addli r24, r12, 1
000afc  0b936038  mod.s r6, r1, r6
000b00  8b15b638  mod.s r11, r12, r11
000b04  b3880828  zext_int2long r[18:19], r17
000b08  9f900000  addli r1, r1, 1
000b0c  67078ffb  storeli.w r24, -656(r30)
000b10  73301fcb  store.d r[18:19], -864(r30)
000b14  9f080003  addli r17, zero, 384
000b18  e74a1ff8  storeli.w r1, -852(r30)
000b1c  b3880828  zext_int2long r[18:19], r17
000b20  9b3ce300  slli r25, r6, 14
000b24  1bb3e500  slli r6, r11, 14
000b28  ab050300  lui r11, 48
000b2c  733c1fc9  store.d r[18:19], -872(r30)
000b30  80380002  core_id r17
000b34  8b19b310  add.s r19, r6, r11
000b38  37863800  beq r17, r3, 384
000b3c  1f0b4000  addli r22, zero, 32
000b40  330a0428  zext_int2long r[21:22], r8
000b44  1f110000  addli r2, zero, 1
000b48  bbb62800  bneq r17, r2, 428
000b4c  1f590000  addli r18, zero, 5
000b50  6b5b0fc9  load.d r[23:24], -880(r30)
000b54  eb5c0fca  load.d r[26:27], -864(r30)
000b58  1f444000  addli r8, zero, 36
000b5c  173a2a03  sll.d r[21:22], r[21:22], r18
000b60  171a6a03  or.d r[21:22], r[21:22], r[23:24]
000b64  6b5b8fc8  load.d r[23:24], -888(r30)
000b68  0b3b6a19  sub.sl r[23:24], r[21:22], r[23:24]
000b6c  173a2a02  sll.d r[21:22], r[21:22], r2
000b70  0f1b9b61  div.sl r[23:24], r[23:24], r[26:27]
000b74  eb5c8fc9  load.d r[26:27], -872(r30)
000b78  7d900400  xwait r9, 0
000b7c  8b3c9b41  min.sl r[26:27], r[23:24], r[26:27]
000b80  8bbc6c19  sub.sl r[26:27], r[26:27], r[23:24]
000b84  6b5b0f00  load.d r[23:24], 0(r30)
000b88  9f8c0c01  addli r25, r25, 128
000b8c  0b2b4b11  add.ul r[23:24], r[23:24], r[21:22]
000b90  3f37c4fe  blt.s r8, r12, -564
000b94  1d000900  lock zero, r18
000b98  1f440000  addli r8, zero, 4
000b9c  15000014  dma_cfg zero, zero, zero, 10
000ba0  15002014  dma_cfg zero, zero, r2, 10
000ba4  15003014  dma_cfg zero, zero, r3, 10
000ba8  15009014  dma_cfg zero, zero, r9, 10
000bac  15008014  dma_cfg zero, zero, r8, 10
000bb0  1f640000  addli r8, zero, 6
000bb4  15002015  dma_cfg zero, zero, r18, 10
000bb8  15008014  dma_cfg zero, zero, r8, 10
000bbc  1f041000  addli r8, zero, 8
000bc0  1500a014  dma_cfg zero, zero, r10, 10
000bc4  15008014  dma_cfg zero, zero, r8, 10
000bc8  1f141000  addli r8, zero, 9
000bcc  15008014  dma_cfg zero, zero, r8, 10
000bd0  1f241000  addli r8, zero, 10
000bd4  15008014  dma_cfg zero, zero, r8, 10
000bd8  1f341000  addli r8, zero, 11
000bdc  15008014  dma_cfg zero, zero, r8, 10
000be0  1f441000  addli r8, zero, 12
000be4  15008014  dma_cfg zero, zero, r8, 10
000be8  1f541000  addli r8, zero, 13
000bec  15008014  dma_cfg zero, zero, r8, 10
000bf0  1f641000  addli r8, zero, 14
000bf4  15008014  dma_cfg zero, zero, r8, 10
000bf8  1f741000  addli r8, zero, 15
000bfc  15008014  dma_cfg zero, zero, r8, 10
000c00  1f042000  addli r8, zero, 16
000c04  15008014  dma_cfg zero, zero, r8, 10
000c08  1f142000  addli r8, zero, 17
000c0c  15008014  dma_cfg zero, zero, r8, 10
000c10  1f242000  addli r8, zero, 18
000c14  15008014  dma_cfg zero, zero, r8, 10
000c18  1f342000  addli r8, zero, 19
000c1c  15008014  dma_cfg zero, zero, r8, 10
000c20  1f442000  addli r8, zero, 20
000c24  15008014  dma_cfg zero, zero, r8, 10
000c28  1f542000  addli r8, zero, 21
000c2c  15008014  dma_cfg zero, zero, r8, 10
000c30  1f642000  addli r8, zero, 22
000c34  15008014  dma_cfg zero, zero, r8, 10
000c38  1f742000  addli r8, zero, 23
000c3c  15008014  dma_cfg zero, zero, r8, 10
000c40  1f043000  addli r8, zero, 24
000c44  15008014  dma_cfg zero, zero, r8, 10
000c48  1f143000  addli r8, zero, 25
000c4c  15008014  dma_cfg zero, zero, r8, 10
000c50  1f243000  addli r8, zero, 26
000c54  15008014  dma_cfg zero, zero, r8, 10
000c58  1f343000  addli r8, zero, 27
000c5c  15008014  dma_cfg zero, zero, r8, 10
000c60  1f443000  addli r8, zero, 28
000c64  15008014  dma_cfg zero, zero, r8, 10
000c68  1f543000  addli r8, zero, 29
000c6c  15008014  dma_cfg zero, zero, r8, 10
000c70  1f643000  addli r8, zero, 30
000c74  15008014  dma_cfg zero, zero, r8, 10
000c78  1f743000  addli r8, zero, 31
000c7c  15008014  dma_cfg zero, zero, r8, 10
000c80  1f048000  addli r8, zero, 64
000c84  15010100  dma_cfg r2, r2, zero, 0
000c88  15010002  dma_cfg r2, zero, zero, 1
000c8c  15000004  dma_cfg zero, zero, zero, 2
000c90  95098006  dma_cfg r19, zero, r8, 3
000c94  1f040001  addli r8, zero, 128
000c98  15042008  dma_cfg r8, zero, r2, 4
000c9c  1504800a  dma_cfg r8, zero, r8, 5
000ca0  15000010  dma_cfg zero, zero, zero, 8
000ca4  35000000  dma_run zero
000ca8  1500200a  dma_cfg zero, zero, r2, 5
000cac  15000010  dma_cfg zero, zero, zero, 8
000cb0  1d100900  unlock r18
000cb4  5b95ffff  j -856
000cb8  1f530000  addli r6, zero, 5
000cbc  7d900100  xwait r3, 0
000cc0  7d100300  xwait r6, 0
000cc4  1d000000  lock zero, zero
000cc8  1f030001  addli r6, zero, 128
000ccc  81010000  ds_cfg r3, zero, 0
000cd0  01010002  ds_cfg r2, zero, 1
000cd4  0101001c  ds_cfg r2, zero, 14
000cd8  0103001a  ds_cfg r6, zero, 13
000cdc  1f430000  addli r6, zero, 4
000ce0  a19c2902  shuffle_batch r25, r19, r2, 1
000ce4  1d100000  unlock zero
000ce8  7d800400  xsignal r9, 0
000cec  7d000300  xsignal r6, 0
000cf0  dbb9ffff  j -564
000cf4  63031ffc  loadli.w r6,  -504(r30)
000cf8  1f01a000  addli r2, zero, 80
000cfc  63449ffe  loadli.w r8,  -180(r30)
000d00  8b152338  mod.s r11, r6, r2
000d04  1f414000  addli r2, zero, 36
000d08  1f130300  addli r6, r6, 1
000d0c  8b192438  mod.s r19, r8, r2
000d10  e7006ffc  storeli.w r6, -504(r30)
000d14  2b410c00  lui r2, 196
000d18  1bb6e500  slli r12, r11, 14
000d1c  9f150400  addli r11, r8, 1
000d20  1bb3e900  slli r6, r19, 14
000d24  e744bffe  storeli.w r11, -180(r30)
000d28  8b192310  add.s r19, r6, r2
000d2c  1f610000  addli r2, zero, 6
000d30  37dba800  beq r17, r10, 724
000d34  3bcc2800  bneq r17, r2, 784
000d38  9f0b2000  addli r23, zero, 16
000d3c  1f350000  addli r10, zero, 3
000d40  9f740000  addli r9, zero, 7
000d44  1f314000  addli r2, zero, 35
000d48  97357a03  sll.d r[12:13], r[21:22], r23
000d4c  6b5a0fc8  load.d r[21:22], -896(r30)
000d50  7d900400  xwait r9, 0
000d54  8b25ba10  add.ul r[12:13], r[21:22], r[12:13]
000d58  bf348100  blt.s r2, r8, 300
000d5c  1f5a0000  addli r20, zero, 5
000d60  1f110000  addli r2, zero, 1
000d64  1f490000  addli r18, zero, 4
000d68  1f640000  addli r8, zero, 6
000d6c  1d000a00  lock zero, r20
000d70  15000014  dma_cfg zero, zero, zero, 10
000d74  15002014  dma_cfg zero, zero, r2, 10
000d78  15003014  dma_cfg zero, zero, r3, 10
000d7c  1500a014  dma_cfg zero, zero, r10, 10
000d80  15002015  dma_cfg zero, zero, r18, 10
000d84  15004015  dma_cfg zero, zero, r20, 10
000d88  15008014  dma_cfg zero, zero, r8, 10
000d8c  1f041000  addli r8, zero, 8
000d90  15009014  dma_cfg zero, zero, r9, 10
000d94  15008014  dma_cfg zero, zero, r8, 10
000d98  1f141000  addli r8, zero, 9
000d9c  15008014  dma_cfg zero, zero, r8, 10
000da0  1f241000  addli r8, zero, 10
000da4  15008014  dma_cfg zero, zero, r8, 10
000da8  1f341000  addli r8, zero, 11
000dac  15008014  dma_cfg zero, zero, r8, 10
000db0  1f441000  addli r8, zero, 12
000db4  15008014  dma_cfg zero, zero, r8, 10
000db8  1f541000  addli r8, zero, 13
000dbc  15008014  dma_cfg zero, zero, r8, 10
000dc0  1f641000  addli r8, zero, 14
000dc4  15008014  dma_cfg zero, zero, r8, 10
000dc8  1f741000  addli r8, zero, 15
000dcc  15008014  dma_cfg zero, zero, r8, 10
000dd0  1f142000  addli r8, zero, 17
000dd4  15007015  dma_cfg zero, zero, r23, 10
000dd8  15008014  dma_cfg zero, zero, r8, 10
000ddc  1f242000  addli r8, zero, 18
000de0  15008014  dma_cfg zero, zero, r8, 10
000de4  1f342000  addli r8, zero, 19
000de8  15008014  dma_cfg zero, zero, r8, 10
000dec  1f442000  addli r8, zero, 20
000df0  15008014  dma_cfg zero, zero, r8, 10
000df4  1f542000  addli r8, zero, 21
000df8  15008014  dma_cfg zero, zero, r8, 10
000dfc  1f642000  addli r8, zero, 22
000e00  15008014  dma_cfg zero, zero, r8, 10
000e04  1f742000  addli r8, zero, 23
000e08  15008014  dma_cfg zero, zero, r8, 10
000e0c  1f043000  addli r8, zero, 24
000e10  15008014  dma_cfg zero, zero, r8, 10
000e14  1f143000  addli r8, zero, 25
000e18  15008014  dma_cfg zero, zero, r8, 10
000e1c  1f243000  addli r8, zero, 26
000e20  15008014  dma_cfg zero, zero, r8, 10
000e24  1f343000  addli r8, zero, 27
000e28  15008014  dma_cfg zero, zero, r8, 10
000e2c  1f443000  addli r8, zero, 28
000e30  15008014  dma_cfg zero, zero, r8, 10
000e34  1f543000  addli r8, zero, 29
000e38  15008014  dma_cfg zero, zero, r8, 10
000e3c  1f643000  addli r8, zero, 30
000e40  15008014  dma_cfg zero, zero, r8, 10
000e44  1f743000  addli r8, zero, 31
000e48  15008014  dma_cfg zero, zero, r8, 10
000e4c  1f048000  addli r8, zero, 64
000e50  15010100  dma_cfg r2, r2, zero, 0
000e54  15010002  dma_cfg r2, zero, zero, 1
000e58  15000004  dma_cfg zero, zero, zero, 2
000e5c  95098006  dma_cfg r19, zero, r8, 3
000e60  1f040001  addli r8, zero, 128
000e64  15042009  dma_cfg r8, zero, r18, 4
000e68  1f040004  addli r8, zero, 512
000e6c  1504600b  dma_cfg r8, zero, r22, 5
000e70  15000010  dma_cfg zero, zero, zero, 8
000e74  35000000  dma_run zero
000e78  1500200a  dma_cfg zero, zero, r2, 5
000e7c  15000010  dma_cfg zero, zero, zero, 8
000e80  1d100a00  unlock r20
000e84  2b410c00  lui r2, 196
000e88  1f490000  addli r18, zero, 4
000e8c  1f0a0001  addli r20, zero, 128
000e90  1f0b0004  addli r22, zero, 512
000e94  9f6a0000  addli r21, zero, 6
000e98  1f750000  addli r10, zero, 7
000e9c  1b140104  ori r8, r2, 64
000ea0  1f110000  addli r2, zero, 1
000ea4  1d000900  lock zero, r18
000ea8  0b138310  add.s r6, r6, r8
000eac  15010100  dma_cfg r2, r2, zero, 0
000eb0  1f048000  addli r8, zero, 64
000eb4  15000604  dma_cfg zero, r12, zero, 2
000eb8  15838506  dma_cfg r6, r11, r8, 3
000ebc  1f064000  addli r12, zero, 32
000ec0  1f030010  addli r6, zero, 2048
000ec4  9f550000  addli r11, zero, 5
000ec8  150a2409  dma_cfg r20, r8, r18, 4
000ecc  150bc30a  dma_cfg r22, r6, r12, 5
000ed0  1f330000  addli r6, zero, 3
000ed4  15000010  dma_cfg zero, zero, zero, 8
000ed8  35000000  dma_run zero
000edc  1500200a  dma_cfg zero, zero, r2, 5
000ee0  15000010  dma_cfg zero, zero, zero, 8
000ee4  1d100900  unlock r18
000ee8  1d800500  lock zero, r11
000eec  15000014  dma_cfg zero, zero, zero, 10
000ef0  15002014  dma_cfg zero, zero, r2, 10
000ef4  15003014  dma_cfg zero, zero, r3, 10
000ef8  15006014  dma_cfg zero, zero, r6, 10
000efc  1f031000  addli r6, zero, 8
000f00  15002015  dma_cfg zero, zero, r18, 10
000f04  1500b014  dma_cfg zero, zero, r11, 10
000f08  15005015  dma_cfg zero, zero, r21, 10
000f0c  15009014  dma_cfg zero, zero, r9, 10
000f10  9f340000  addli r9, zero, 3
000f14  15006014  dma_cfg zero, zero, r6, 10
000f18  1f131000  addli r6, zero, 9
000f1c  15006014  dma_cfg zero, zero, r6, 10
000f20  1f231000  addli r6, zero, 10
000f24  15006014  dma_cfg zero, zero, r6, 10
000f28  1f331000  addli r6, zero, 11
000f2c  15006014  dma_cfg zero, zero, r6, 10
000f30  1f431000  addli r6, zero, 12
000f34  15006014  dma_cfg zero, zero, r6, 10
000f38  1f531000  addli r6, zero, 13
000f3c  15006014  dma_cfg zero, zero, r6, 10
000f40  1f631000  addli r6, zero, 14
000f44  15006014  dma_cfg zero, zero, r6, 10
000f48  1f731000  addli r6, zero, 15
000f4c  15006014  dma_cfg zero, zero, r6, 10
000f50  1f132000  addli r6, zero, 17
000f54  15007015  dma_cfg zero, zero, r23, 10
000f58  15006014  dma_cfg zero, zero, r6, 10
000f5c  1f232000  addli r6, zero, 18
000f60  15006014  dma_cfg zero, zero, r6, 10
000f64  1f332000  addli r6, zero, 19
000f68  15006014  dma_cfg zero, zero, r6, 10
000f6c  1f432000  addli r6, zero, 20
000f70  15006014  dma_cfg zero, zero, r6, 10
000f74  1f532000  addli r6, zero, 21
000f78  15006014  dma_cfg zero, zero, r6, 10
000f7c  1f632000  addli r6, zero, 22
000f80  15006014  dma_cfg zero, zero, r6, 10
000f84  1f732000  addli r6, zero, 23
000f88  15006014  dma_cfg zero, zero, r6, 10
000f8c  1f033000  addli r6, zero, 24
000f90  15006014  dma_cfg zero, zero, r6, 10
000f94  1f133000  addli r6, zero, 25
000f98  15006014  dma_cfg zero, zero, r6, 10
000f9c  1f233000  addli r6, zero, 26
000fa0  15006014  dma_cfg zero, zero, r6, 10
000fa4  1f333000  addli r6, zero, 27
000fa8  15006014  dma_cfg zero, zero, r6, 10
000fac  1f433000  addli r6, zero, 28
000fb0  15006014  dma_cfg zero, zero, r6, 10
000fb4  1f533000  addli r6, zero, 29
000fb8  15006014  dma_cfg zero, zero, r6, 10
000fbc  1f633000  addli r6, zero, 30
000fc0  15006014  dma_cfg zero, zero, r6, 10
000fc4  1f733000  addli r6, zero, 31
000fc8  15006014  dma_cfg zero, zero, r6, 10
000fcc  15010100  dma_cfg r2, r2, zero, 0
000fd0  15010002  dma_cfg r2, zero, zero, 1
000fd4  15000004  dma_cfg zero, zero, zero, 2
000fd8  95098006  dma_cfg r19, zero, r8, 3
000fdc  150a2009  dma_cfg r20, zero, r18, 4
000fe0  150bc00a  dma_cfg r22, zero, r12, 5
000fe4  15000010  dma_cfg zero, zero, zero, 8
000fe8  35000000  dma_run zero
000fec  1500200a  dma_cfg zero, zero, r2, 5
000ff0  1f014000  addli r2, zero, 32
000ff4  15000010  dma_cfg zero, zero, zero, 8
000ff8  1d900500  unlock r11
000ffc  7d800a00  xsignal r21, 0
001000  db5affff  j -1324
001004  7d100100  xwait r2, 0
001008  1f111000  addli r2, zero, 9
00100c  1f030001  addli r6, zero, 128
001010  7d100100  xwait r2, 0
001014  1d000000  lock zero, zero
001018  1f014000  addli r2, zero, 32
00101c  81010000  ds_cfg r3, zero, 0
001020  01030002  ds_cfg r6, zero, 1
001024  0101001c  ds_cfg r2, zero, 14
001028  0103001a  ds_cfg r6, zero, 13
00102c  1f031000  addli r6, zero, 8
001030  41862904  shuffle_coa r12, r19, r2, 2
001034  1d100000  unlock zero
001038  7d000500  xsignal r10, 0
00103c  7d000300  xsignal r6, 0
001040  db52ffff  j -1388
001044  1f430000  addli r6, zero, 4
001048  bbe26800  bneq r17, r6, 184
00104c  7d100300  xwait r6, 0
001050  1f031000  addli r6, zero, 8
001054  1f014000  addli r2, zero, 32
001058  1f140000  addli r8, zero, 1
00105c  9f050000  addli r11, zero, 0
001060  9f088000  addli r17, zero, 64
001064  1f490000  addli r18, zero, 4
001068  1f0a0001  addli r20, zero, 128
00106c  7d100300  xwait r6, 0
001070  1f130000  addli r6, zero, 1
001074  b7f00600  beq r13, zero, 60
001078  9bb9d500  slli r19, r11, 13
00107c  9bb58500  slli r11, r11, 8
001080  1d000300  lock zero, r6
001084  89084101  mm_cfg r17, r2, r20, 0
001088  9799c900  or r19, r19, r12
00108c  97957500  or r11, r11, r7
001090  89016904  mm_cfg r3, r18, r6, 2
001094  a9953c11  mm_acc r11, r25, r19, 8
001098  9b091400  andi r19, r8, 1
00109c  9f150000  addli r11, zero, 1
0010a0  1f040000  addli r8, zero, 0
0010a4  1d100300  unlock r6
0010a8  3bcf09fe  bneq r19, zero, -48
0010ac  5b070000  j 56
0010b0  9bb9d500  slli r19, r11, 13
0010b4  9bb58500  slli r11, r11, 8
0010b8  1d000300  lock zero, r6
0010bc  89084101  mm_cfg r17, r2, r20, 0
0010c0  9799c900  or r19, r19, r12
0010c4  97957500  or r11, r11, r7
0010c8  89016904  mm_cfg r3, r18, r6, 2
0010cc  a9853c11  mm r11, r25, r19, 8
0010d0  9b091400  andi r19, r8, 1
0010d4  9f150000  addli r11, zero, 1
0010d8  1f040000  addli r8, zero, 0
0010dc  1d100300  unlock r6
0010e0  3bcf09fe  bneq r19, zero, -48
0010e4  1f540000  addli r8, zero, 5
0010e8  1b031700  andi r6, r14, 1
0010ec  7d000400  xsignal r8, 0
0010f0  1f141000  addli r8, zero, 9
0010f4  7d000400  xsignal r8, 0
0010f8  bb1703fc  bneq r6, zero, -1564
0010fc  db030000  j 28
001100  1b031700  andi r6, r14, 1
001104  1f014000  addli r2, zero, 32
001108  3b5703fc  bneq r6, zero, -1580
00110c  db020000  j 20
001110  9f400000  addli r1, zero, 4
001114  3bb01800  bneq r17, r1, 12
001118  9f201000  addli r1, zero, 10
00111c  7d800000  xsignal r1, 0
001120  6304cfff  loadli.w r8,  -32(r30)
001124  e300efff  loadli.w r1,  -16(r30)
001128  00360002  core_id r12
00112c  1f730000  addli r6, zero, 7
001130  1f110400  addli r2, r8, 1
001134  9f910000  addli r3, r1, 1
001138  670e2ffe  storeli.w r2, -32(r30)
00113c  670f3ffe  storeli.w r3, -16(r30)
001140  3b509600  bneq r12, r9, 20
001144  1f211000  addli r2, zero, 10
001148  7d100100  xwait r2, 0
00114c  1f112000  addli r2, zero, 17
001150  7d100100  xwait r2, 0
001154  8b909038  mod.s r1, r1, r9
001158  1f010001  addli r2, zero, 128
00115c  9f71f001  addli r3, zero, 255
001160  3d000000  xfence
001164  00a00300  mfence { lm, sm, gm }
001168  b3060128  zext_int2long r[14:15], r2
00116c  2b411500  lui r2, 340
001170  80a20104  csr_set csr5, r3
001174  1b110160  ori r2, r2, 1536
001178  9bb00001  slli r1, r1, 16
00117c  8b902010  add.s r1, r1, r2
001180  1f711000  addli r2, zero, 15
001184  33010128  zext_int2long r[3:4], r2
001188  73382fc4  store.d r[3:4], -944(r30)
00118c  9f210000  addli r3, zero, 2
001190  00e00200  sync_core
001194  67438ff8  storeli.w r8, -972(r30)
001198  3b060600  bneq r12, zero, 384
00119c  33010028  zext_int2long r[3:4], zero
0011a0  3d000000  xfence
0011a4  00a00300  mfence { lm, sm, gm }
0011a8  27040100  addli.d r[9:10], r[3:4], 0
0011ac  73342fc8  store.d r[3:4], -888(r30)
0011b0  db030000  j 28
0011b4  6b510fc5  load.d r[3:4], -944(r30)
0011b8  6b540fc9  load.d r[9:10], -880(r30)
0011bc  1f730000  addli r6, zero, 7
0011c0  13212404  setlt.ul r2, r[9:10], r[3:4]
0011c4  27140400  addli.d r[9:10], r[9:10], 1
0011c8  37050100  beq r2, zero, 320
0011cc  6b5c8fc8  load.d r[25:26], -888(r30)
0011d0  97386402  sll.d r[18:19], r[9:10], r6
0011d4  73388fc8  store.d r[9:10], -880(r30)
0011d8  db040000  j 36
0011dc  274c0c00  addli.d r[25:26], r[25:26], 4
0011e0  0b933011  add.s r6, r1, r19
0011e4  9321dc02  setneq.d r3, r[25:26], r[14:15]
0011e8  7366a301  stores.w r26, 12(r6)
0011ec  73647301  stores.w r23, 8(r6)
0011f0  7362b300  stores.w r11, 4(r6)
0011f4  73602300  stores.w r2, 0(r6)
0011f8  b7fe01fe  beq r3, zero, -68
0011fc  0b211c11  add.ul r[3:4], r[25:26], r[18:19]
001200  9b392100  slli r19, r2, 2
001204  0b913311  add.s r2, r7, r19
001208  6f46c100  loads.w r12, 12(r2)
00120c  6f4a0100  loads.w r20, 0(r2)
001210  6f4b4100  loads.w r22, 4(r2)
001214  6f448100  loads.w r8, 8(r2)
001218  1703b601  and r6, r12, r27
00121c  13016204  setlt.u r2, r4, r6
001220  3b300100  bneq r2, zero, 12
001224  1f0d0600  addli r26, r12, 0
001228  5b010000  j 8
00122c  171df600  or r26, r12, r15
001230  970ab401  and r21, r8, r27
001234  13015205  setlt.u r2, r4, r21
001238  3b300100  bneq r2, zero, 12
00123c  9f0b0400  addli r23, r8, 0
001240  5b010000  j 8
001244  971bf400  or r23, r8, r15
001248  9701bb01  and r3, r22, r27
00124c  13013204  setlt.u r2, r4, r3
001250  3b300100  bneq r2, zero, 12
001254  9f050b00  addli r11, r22, 0
001258  5b010000  j 8
00125c  9715fb00  or r11, r22, r15
001260  9704ba01  and r9, r20, r27
001264  13019204  setlt.u r2, r4, r9
001268  3b500100  bneq r2, zero, 20
00126c  1f010a00  addli r2, r20, 0
001270  93049e04  setlt.u r9, r28, r9
001274  37d00400  beq r9, zero, 20
001278  db040000  j 36
00127c  1711fa00  or r2, r20, r15
001280  93049e04  setlt.u r9, r28, r9
001284  3be00400  bneq r9, zero, 24
001288  1b410a01  srli r2, r20, 16
00128c  1b011100  andi r2, r2, 1
001290  0b112a10  add.s r2, r20, r2
001294  0b110111  add.s r2, r2, r16
001298  17015100  and r2, r2, r5
00129c  93013e04  setlt.u r3, r28, r3
0012a0  37e00100  beq r3, zero, 24
0012a4  93015e05  setlt.u r3, r28, r21
0012a8  b7b00100  beq r3, zero, 44
0012ac  93016e04  setlt.u r3, r28, r6
0012b0  bbbc01fe  bneq r3, zero, -212
0012b4  db070000  j 60
0012b8  9b410b01  srli r3, r22, 16
0012bc  9b811100  andi r3, r3, 1
0012c0  8b113b10  add.s r3, r22, r3
0012c4  8b910111  add.s r3, r3, r16
0012c8  97855100  and r11, r3, r5
0012cc  93015e05  setlt.u r3, r28, r21
0012d0  3bff01fe  bneq r3, zero, -36
0012d4  9b410401  srli r3, r8, 16
0012d8  9b811100  andi r3, r3, 1
0012dc  8b113410  add.s r3, r8, r3
0012e0  8b910111  add.s r3, r3, r16
0012e4  978b5100  and r23, r3, r5
0012e8  93016e04  setlt.u r3, r28, r6
0012ec  bbcb01fe  bneq r3, zero, -272
0012f0  9b410601  srli r3, r12, 16
0012f4  9b811100  andi r3, r3, 1
0012f8  8b113610  add.s r3, r12, r3
0012fc  8b910111  add.s r3, r3, r16
001300  178d5100  and r26, r3, r5
001304  5bdbffff  j -296
001308  00360002  core_id r12
00130c  9f340000  addli r9, zero, 3
001310  9f210000  addli r3, zero, 2
001314  00200100  mfence { sm }
001318  1f713000  addli r2, zero, 31
00131c  33050128  zext_int2long r[11:12], r2
001320  1f110000  addli r2, zero, 1
001324  7338afc8  store.d r[11:12], -880(r30)
001328  bb752600  bneq r12, r2, 380
00132c  1f012000  addli r2, zero, 16
001330  3d000000  xfence
001334  00a00300  mfence { lm, sm, gm }
001338  33040128  zext_int2long r[9:10], r2
00133c  db030000  j 28
001340  6b510fc9  load.d r[3:4], -880(r30)
001344  6b548fc8  load.d r[9:10], -888(r30)
001348  1f730000  addli r6, zero, 7
00134c  13212404  setlt.ul r2, r[9:10], r[3:4]
001350  27140400  addli.d r[9:10], r[9:10], 1
001354  37050100  beq r2, zero, 320
001358  73348fc8  store.d r[9:10], -888(r30)
00135c  97346402  sll.d r[10:11], r[9:10], r6
001360  b3080028  zext_int2long r[18:19], zero
001364  db040000  j 36
001368  a7c80800  addli.d r[18:19], r[18:19], 4
00136c  8b913011  add.s r3, r1, r19
001370  13a1d802  setneq.d r2, r[18:19], r[14:15]
001374  73e68101  stores.w r24, 12(r3)
001378  73e48100  stores.w r8, 8(r3)
00137c  73e26101  stores.w r22, 4(r3)
001380  73e04101  stores.w r20, 0(r3)
001384  b77e01fe  beq r2, zero, -68
001388  0ba19810  add.ul r[3:4], r[18:19], r[10:11]
00138c  9b392100  slli r19, r2, 2
001390  0b913311  add.s r2, r7, r19
001394  6f46c100  loads.w r12, 12(r2)
001398  ef4c0100  loads.w r25, 0(r2)
00139c  ef454100  loads.w r11, 4(r2)
0013a0  ef4b8100  loads.w r23, 8(r2)
0013a4  1703b601  and r6, r12, r27
0013a8  13016204  setlt.u r2, r4, r6
0013ac  3b300100  bneq r2, zero, 12
0013b0  1f0c0600  addli r24, r12, 0
0013b4  5b010000  j 8
0013b8  171cf600  or r24, r12, r15
0013bc  978abb01  and r21, r23, r27
0013c0  13015205  setlt.u r2, r4, r21
0013c4  3b300100  bneq r2, zero, 12
0013c8  1f840b00  addli r8, r23, 0
0013cc  5b010000  j 8
0013d0  1794fb00  or r8, r23, r15
0013d4  178db501  and r26, r11, r27
0013d8  1301a205  setlt.u r2, r4, r26
0013dc  3b300100  bneq r2, zero, 12
0013e0  1f8b0500  addli r22, r11, 0
0013e4  5b010000  j 8
0013e8  179bf500  or r22, r11, r15
0013ec  1781bc01  and r2, r25, r27
0013f0  93012204  setlt.u r3, r4, r2
0013f4  3bd00100  bneq r3, zero, 20
0013f8  1f8a0c00  addli r20, r25, 0
0013fc  13012e04  setlt.u r2, r28, r2
001400  37500100  beq r2, zero, 20
001404  db040000  j 36
001408  179afc00  or r20, r25, r15
00140c  13012e04  setlt.u r2, r28, r2
001410  3b600100  bneq r2, zero, 24
001414  1bc10c01  srli r2, r25, 16
001418  1b011100  andi r2, r2, 1
00141c  0b912c10  add.s r2, r25, r2
001420  0b110111  add.s r2, r2, r16
001424  170a5100  and r20, r2, r5
001428  1301ae05  setlt.u r2, r28, r26
00142c  37600100  beq r2, zero, 24
001430  13015e05  setlt.u r2, r28, r21
001434  b7300100  beq r2, zero, 44
001438  13016e04  setlt.u r2, r28, r6
00143c  bb3c01fe  bneq r2, zero, -212
001440  db070000  j 60
001444  1bc10501  srli r2, r11, 16
001448  1b011100  andi r2, r2, 1
00144c  0b912510  add.s r2, r11, r2
001450  0b110111  add.s r2, r2, r16
001454  170b5100  and r22, r2, r5
001458  13015e05  setlt.u r2, r28, r21
00145c  3b7f01fe  bneq r2, zero, -36
001460  1bc10b01  srli r2, r23, 16
001464  1b011100  andi r2, r2, 1
001468  0b912b10  add.s r2, r23, r2
00146c  0b110111  add.s r2, r2, r16
001470  17045100  and r8, r2, r5
001474  13016e04  setlt.u r2, r28, r6
001478  bb4b01fe  bneq r2, zero, -272
00147c  1b410601  srli r2, r12, 16
001480  1b011100  andi r2, r2, 1
001484  0b112610  add.s r2, r12, r2
001488  0b110111  add.s r2, r2, r16
00148c  170c5100  and r24, r2, r5
001490  5bdbffff  j -296
001494  00360002  core_id r12
001498  9f340000  addli r9, zero, 3
00149c  9f210000  addli r3, zero, 2
0014a0  00200100  mfence { sm }
0014a4  1f715000  addli r2, zero, 47
0014a8  33050128  zext_int2long r[11:12], r2
0014ac  7334afc8  store.d r[11:12], -888(r30)
0014b0  bb653600  bneq r12, r3, 376
0014b4  1f014000  addli r2, zero, 32
0014b8  3d000000  xfence
0014bc  00a00300  mfence { lm, sm, gm }
0014c0  33040128  zext_int2long r[9:10], r2
0014c4  db030000  j 28
0014c8  6b518fc8  load.d r[3:4], -888(r30)
0014cc  6b540fc8  load.d r[9:10], -896(r30)
0014d0  1f730000  addli r6, zero, 7
0014d4  13212404  setlt.ul r2, r[9:10], r[3:4]
0014d8  27140400  addli.d r[9:10], r[9:10], 1
0014dc  37050100  beq r2, zero, 320
0014e0  73308fc8  store.d r[9:10], -896(r30)
0014e4  97346402  sll.d r[10:11], r[9:10], r6
0014e8  b3080028  zext_int2long r[18:19], zero
0014ec  db040000  j 36
0014f0  a7c80800  addli.d r[18:19], r[18:19], 4
0014f4  8b913011  add.s r3, r1, r19
0014f8  13a1d802  setneq.d r2, r[18:19], r[14:15]
0014fc  73e68101  stores.w r24, 12(r3)
001500  73e48100  stores.w r8, 8(r3)
001504  73e26101  stores.w r22, 4(r3)
001508  73e04101  stores.w r20, 0(r3)
00150c  b77e01fe  beq r2, zero, -68
001510  0ba19810  add.ul r[3:4], r[18:19], r[10:11]
001514  9b392100  slli r19, r2, 2
001518  0b913311  add.s r2, r7, r19
00151c  6f46c100  loads.w r12, 12(r2)
001520  ef4c0100  loads.w r25, 0(r2)
001524  ef454100  loads.w r11, 4(r2)
001528  ef4b8100  loads.w r23, 8(r2)
00152c  1703b601  and r6, r12, r27
001530  13016204  setlt.u r2, r4, r6
001534  3b300100  bneq r2, zero, 12
001538  1f0c0600  addli r24, r12, 0
00153c  5b010000  j 8
001540  171cf600  or r24, r12, r15
001544  978abb01  and r21, r23, r27
001548  13015205  setlt.u r2, r4, r21
00154c  3b300100  bneq r2, zero, 12
001550  1f840b00  addli r8, r23, 0
001554  5b010000  j 8
001558  1794fb00  or r8, r23, r15
00155c  178db501  and r26, r11, r27
001560  1301a205  setlt.u r2, r4, r26
001564  3b300100  bneq r2, zero, 12
001568  1f8b0500  addli r22, r11, 0
00156c  5b010000  j 8
001570  179bf500  or r22, r11, r15
001574  1781bc01  and r2, r25, r27
001578  93012204  setlt.u r3, r4, r2
00157c  3bd00100  bneq r3, zero, 20
001580  1f8a0c00  addli r20, r25, 0
001584  13012e04  setlt.u r2, r28, r2
001588  37500100  beq r2, zero, 20
00158c  db040000  j 36
001590  179afc00  or r20, r25, r15
001594  13012e04  setlt.u r2, r28, r2
001598  3b600100  bneq r2, zero, 24
00159c  1bc10c01  srli r2, r25, 16
0015a0  1b011100  andi r2, r2, 1
0015a4  0b912c10  add.s r2, r25, r2
0015a8  0b110111  add.s r2, r2, r16
0015ac  170a5100  and r20, r2, r5
0015b0  1301ae05  setlt.u r2, r28, r26
0015b4  37600100  beq r2, zero, 24
0015b8  13015e05  setlt.u r2, r28, r21
0015bc  b7300100  beq r2, zero, 44
0015c0  13016e04  setlt.u r2, r28, r6
0015c4  bb3c01fe  bneq r2, zero, -212
0015c8  db070000  j 60
0015cc  1bc10501  srli r2, r11, 16
0015d0  1b011100  andi r2, r2, 1
0015d4  0b912510  add.s r2, r11, r2
0015d8  0b110111  add.s r2, r2, r16
0015dc  170b5100  and r22, r2, r5
0015e0  13015e05  setlt.u r2, r28, r21
0015e4  3b7f01fe  bneq r2, zero, -36
0015e8  1bc10b01  srli r2, r23, 16
0015ec  1b011100  andi r2, r2, 1
0015f0  0b912b10  add.s r2, r23, r2
0015f4  0b110111  add.s r2, r2, r16
0015f8  17045100  and r8, r2, r5
0015fc  13016e04  setlt.u r2, r28, r6
001600  bb4b01fe  bneq r2, zero, -272
001604  1b410601  srli r2, r12, 16
001608  1b011100  andi r2, r2, 1
00160c  0b112610  add.s r2, r12, r2
001610  0b110111  add.s r2, r2, r16
001614  170c5100  and r24, r2, r5
001618  5bdbffff  j -296
00161c  00360002  core_id r12
001620  9f340000  addli r9, zero, 3
001624  00200100  mfence { sm }
001628  1f717000  addli r2, zero, 63
00162c  33010128  zext_int2long r[3:4], r2
001630  73302fc8  store.d r[3:4], -896(r30)
001634  bb559600  bneq r12, r9, 372
001638  1f016000  addli r2, zero, 48
00163c  3d000000  xfence
001640  00a00300  mfence { lm, sm, gm }
001644  33040128  zext_int2long r[9:10], r2
001648  db030000  j 28
00164c  6b510fc8  load.d r[3:4], -896(r30)
001650  6b548fc7  load.d r[9:10], -904(r30)
001654  1f730000  addli r6, zero, 7
001658  13212404  setlt.ul r2, r[9:10], r[3:4]
00165c  27140400  addli.d r[9:10], r[9:10], 1
001660  37050100  beq r2, zero, 320
001664  733c8fc6  store.d r[9:10], -904(r30)
001668  97346402  sll.d r[10:11], r[9:10], r6
00166c  b3080028  zext_int2long r[18:19], zero
001670  db040000  j 36
001674  a7c80800  addli.d r[18:19], r[18:19], 4
001678  8b913011  add.s r3, r1, r19
00167c  13a1d802  setneq.d r2, r[18:19], r[14:15]
001680  73e68101  stores.w r24, 12(r3)
001684  73e48100  stores.w r8, 8(r3)
001688  73e26101  stores.w r22, 4(r3)
00168c  73e04101  stores.w r20, 0(r3)
001690  b77e01fe  beq r2, zero, -68
001694  0ba19810  add.ul r[3:4], r[18:19], r[10:11]
001698  9b392100  slli r19, r2, 2
00169c  0b913311  add.s r2, r7, r19
0016a0  6f46c100  loads.w r12, 12(r2)
0016a4  ef4c0100  loads.w r25, 0(r2)
0016a8  ef454100  loads.w r11, 4(r2)
0016ac  ef4b8100  loads.w r23, 8(r2)
0016b0  1703b601  and r6, r12, r27
0016b4  13016204  setlt.u r2, r4, r6
0016b8  3b300100  bneq r2, zero, 12
0016bc  1f0c0600  addli r24, r12, 0
0016c0  5b010000  j 8
0016c4  171cf600  or r24, r12, r15
0016c8  978abb01  and r21, r23, r27
0016cc  13015205  setlt.u r2, r4, r21
0016d0  3b300100  bneq r2, zero, 12
0016d4  1f840b00  addli r8, r23, 0
0016d8  5b010000  j 8
0016dc  1794fb00  or r8, r23, r15
0016e0  178db501  and r26, r11, r27
0016e4  1301a205  setlt.u r2, r4, r26
0016e8  3b300100  bneq r2, zero, 12
0016ec  1f8b0500  addli r22, r11, 0
0016f0  5b010000  j 8
0016f4  179bf500  or r22, r11, r15
0016f8  1781bc01  and r2, r25, r27
0016fc  93012204  setlt.u r3, r4, r2
001700  3bd00100  bneq r3, zero, 20
001704  1f8a0c00  addli r20, r25, 0
001708  13012e04  setlt.u r2, r28, r2
00170c  37500100  beq r2, zero, 20
001710  db040000  j 36
001714  179afc00  or r20, r25, r15
001718  13012e04  setlt.u r2, r28, r2
00171c  3b600100  bneq r2, zero, 24
001720  1bc10c01  srli r2, r25, 16
001724  1b011100  andi r2, r2, 1
001728  0b912c10  add.s r2, r25, r2
00172c  0b110111  add.s r2, r2, r16
001730  170a5100  and r20, r2, r5
001734  1301ae05  setlt.u r2, r28, r26
001738  37600100  beq r2, zero, 24
00173c  13015e05  setlt.u r2, r28, r21
001740  b7300100  beq r2, zero, 44
001744  13016e04  setlt.u r2, r28, r6
001748  bb3c01fe  bneq r2, zero, -212
00174c  db070000  j 60
001750  1bc10501  srli r2, r11, 16
001754  1b011100  andi r2, r2, 1
001758  0b912510  add.s r2, r11, r2
00175c  0b110111  add.s r2, r2, r16
001760  170b5100  and r22, r2, r5
001764  13015e05  setlt.u r2, r28, r21
001768  3b7f01fe  bneq r2, zero, -36
00176c  1bc10b01  srli r2, r23, 16
001770  1b011100  andi r2, r2, 1
001774  0b912b10  add.s r2, r23, r2
001778  0b110111  add.s r2, r2, r16
00177c  17045100  and r8, r2, r5
001780  13016e04  setlt.u r2, r28, r6
001784  bb4b01fe  bneq r2, zero, -272
001788  1b410601  srli r2, r12, 16
00178c  1b011100  andi r2, r2, 1
001790  0b112610  add.s r2, r12, r2
001794  0b110111  add.s r2, r2, r16
001798  170c5100  and r24, r2, r5
00179c  5bdbffff  j -296
0017a0  00360002  core_id r12
0017a4  00200100  mfence { sm }
0017a8  1f719000  addli r2, zero, 79
0017ac  33010128  zext_int2long r[3:4], r2
0017b0  733c2fc6  store.d r[3:4], -904(r30)
0017b4  1f410000  addli r2, zero, 4
0017b8  bb552600  bneq r12, r2, 372
0017bc  1f018000  addli r2, zero, 64
0017c0  3d000000  xfence
0017c4  00a00300  mfence { lm, sm, gm }
0017c8  33040128  zext_int2long r[9:10], r2
0017cc  db030000  j 28
0017d0  6b518fc7  load.d r[3:4], -904(r30)
0017d4  6b540fc7  load.d r[9:10], -912(r30)
0017d8  1f730000  addli r6, zero, 7
0017dc  13212404  setlt.ul r2, r[9:10], r[3:4]
0017e0  27140400  addli.d r[9:10], r[9:10], 1
0017e4  37050100  beq r2, zero, 320
0017e8  73388fc6  store.d r[9:10], -912(r30)
0017ec  97346402  sll.d r[10:11], r[9:10], r6
0017f0  b3080028  zext_int2long r[18:19], zero
0017f4  db040000  j 36
0017f8  a7c80800  addli.d r[18:19], r[18:19], 4
0017fc  8b913011  add.s r3, r1, r19
001800  13a1d802  setneq.d r2, r[18:19], r[14:15]
001804  73e68101  stores.w r24, 12(r3)
001808  73e48100  stores.w r8, 8(r3)
00180c  73e26101  stores.w r22, 4(r3)
001810  73e04101  stores.w r20, 0(r3)
001814  b77e01fe  beq r2, zero, -68
001818  0ba19810  add.ul r[3:4], r[18:19], r[10:11]
00181c  9b392100  slli r19, r2, 2
001820  0b913311  add.s r2, r7, r19
001824  6f46c100  loads.w r12, 12(r2)
001828  ef4c0100  loads.w r25, 0(r2)
00182c  ef454100  loads.w r11, 4(r2)
001830  ef4b8100  loads.w r23, 8(r2)
001834  1703b601  and r6, r12, r27
001838  13016204  setlt.u r2, r4, r6
00183c  3b300100  bneq r2, zero, 12
001840  1f0c0600  addli r24, r12, 0
001844  5b010000  j 8
001848  171cf600  or r24, r12, r15
00184c  978abb01  and r21, r23, r27
001850  13015205  setlt.u r2, r4, r21
001854  3b300100  bneq r2, zero, 12
001858  1f840b00  addli r8, r23, 0
00185c  5b010000  j 8
001860  1794fb00  or r8, r23, r15
001864  178db501  and r26, r11, r27
001868  1301a205  setlt.u r2, r4, r26
00186c  3b300100  bneq r2, zero, 12
001870  1f8b0500  addli r22, r11, 0
001874  5b010000  j 8
001878  179bf500  or r22, r11, r15
00187c  1781bc01  and r2, r25, r27
001880  93012204  setlt.u r3, r4, r2
001884  3bd00100  bneq r3, zero, 20
001888  1f8a0c00  addli r20, r25, 0
00188c  13012e04  setlt.u r2, r28, r2
001890  37500100  beq r2, zero, 20
001894  db040000  j 36
001898  179afc00  or r20, r25, r15
00189c  13012e04  setlt.u r2, r28, r2
0018a0  3b600100  bneq r2, zero, 24
0018a4  1bc10c01  srli r2, r25, 16
0018a8  1b011100  andi r2, r2, 1
0018ac  0b912c10  add.s r2, r25, r2
0018b0  0b110111  add.s r2, r2, r16
0018b4  170a5100  and r20, r2, r5
0018b8  1301ae05  setlt.u r2, r28, r26
0018bc  37600100  beq r2, zero, 24
0018c0  13015e05  setlt.u r2, r28, r21
0018c4  b7300100  beq r2, zero, 44
0018c8  13016e04  setlt.u r2, r28, r6
0018cc  bb3c01fe  bneq r2, zero, -212
0018d0  db070000  j 60
0018d4  1bc10501  srli r2, r11, 16
0018d8  1b011100  andi r2, r2, 1
0018dc  0b912510  add.s r2, r11, r2
0018e0  0b110111  add.s r2, r2, r16
0018e4  170b5100  and r22, r2, r5
0018e8  13015e05  setlt.u r2, r28, r21
0018ec  3b7f01fe  bneq r2, zero, -36
0018f0  1bc10b01  srli r2, r23, 16
0018f4  1b011100  andi r2, r2, 1
0018f8  0b912b10  add.s r2, r23, r2
0018fc  0b110111  add.s r2, r2, r16
001900  17045100  and r8, r2, r5
001904  13016e04  setlt.u r2, r28, r6
001908  bb4b01fe  bneq r2, zero, -272
00190c  1b410601  srli r2, r12, 16
001910  1b011100  andi r2, r2, 1
001914  0b112610  add.s r2, r12, r2
001918  0b110111  add.s r2, r2, r16
00191c  170c5100  and r24, r2, r5
001920  5bdbffff  j -296
001924  00360002  core_id r12
001928  00200100  mfence { sm }
00192c  1f71b000  addli r2, zero, 95
001930  33010128  zext_int2long r[3:4], r2
001934  73382fc6  store.d r[3:4], -912(r30)
001938  1f510000  addli r2, zero, 5
00193c  bb552600  bneq r12, r2, 372
001940  1f01a000  addli r2, zero, 80
001944  3d000000  xfence
001948  00a00300  mfence { lm, sm, gm }
00194c  33040128  zext_int2long r[9:10], r2
001950  db030000  j 28
001954  6b510fc7  load.d r[3:4], -912(r30)
001958  6b548fc6  load.d r[9:10], -920(r30)
00195c  1f730000  addli r6, zero, 7
001960  13212404  setlt.ul r2, r[9:10], r[3:4]
001964  27140400  addli.d r[9:10], r[9:10], 1
001968  37050100  beq r2, zero, 320
00196c  73348fc6  store.d r[9:10], -920(r30)
001970  97346402  sll.d r[10:11], r[9:10], r6
001974  b3080028  zext_int2long r[18:19], zero
001978  db040000  j 36
00197c  a7c80800  addli.d r[18:19], r[18:19], 4
001980  8b913011  add.s r3, r1, r19
001984  13a1d802  setneq.d r2, r[18:19], r[14:15]
001988  73e68101  stores.w r24, 12(r3)
00198c  73e48100  stores.w r8, 8(r3)
001990  73e26101  stores.w r22, 4(r3)
001994  73e04101  stores.w r20, 0(r3)
001998  b77e01fe  beq r2, zero, -68
00199c  0ba19810  add.ul r[3:4], r[18:19], r[10:11]
0019a0  9b392100  slli r19, r2, 2
0019a4  0b913311  add.s r2, r7, r19
0019a8  6f46c100  loads.w r12, 12(r2)
0019ac  ef4c0100  loads.w r25, 0(r2)
0019b0  ef454100  loads.w r11, 4(r2)
0019b4  ef4b8100  loads.w r23, 8(r2)
0019b8  1703b601  and r6, r12, r27
0019bc  13016204  setlt.u r2, r4, r6
0019c0  3b300100  bneq r2, zero, 12
0019c4  1f0c0600  addli r24, r12, 0
0019c8  5b010000  j 8
0019cc  171cf600  or r24, r12, r15
0019d0  978abb01  and r21, r23, r27
0019d4  13015205  setlt.u r2, r4, r21
0019d8  3b300100  bneq r2, zero, 12
0019dc  1f840b00  addli r8, r23, 0
0019e0  5b010000  j 8
0019e4  1794fb00  or r8, r23, r15
0019e8  178db501  and r26, r11, r27
0019ec  1301a205  setlt.u r2, r4, r26
0019f0  3b300100  bneq r2, zero, 12
0019f4  1f8b0500  addli r22, r11, 0
0019f8  5b010000  j 8
0019fc  179bf500  or r22, r11, r15
001a00  1781bc01  and r2, r25, r27
001a04  93012204  setlt.u r3, r4, r2
001a08  3bd00100  bneq r3, zero, 20
001a0c  1f8a0c00  addli r20, r25, 0
001a10  13012e04  setlt.u r2, r28, r2
001a14  37500100  beq r2, zero, 20
001a18  db040000  j 36
001a1c  179afc00  or r20, r25, r15
001a20  13012e04  setlt.u r2, r28, r2
001a24  3b600100  bneq r2, zero, 24
001a28  1bc10c01  srli r2, r25, 16
001a2c  1b011100  andi r2, r2, 1
001a30  0b912c10  add.s r2, r25, r2
001a34  0b110111  add.s r2, r2, r16
001a38  170a5100  and r20, r2, r5
001a3c  1301ae05  setlt.u r2, r28, r26
001a40  37600100  beq r2, zero, 24
001a44  13015e05  setlt.u r2, r28, r21
001a48  b7300100  beq r2, zero, 44
001a4c  13016e04  setlt.u r2, r28, r6
001a50  bb3c01fe  bneq r2, zero, -212
001a54  db070000  j 60
001a58  1bc10501  srli r2, r11, 16
001a5c  1b011100  andi r2, r2, 1
001a60  0b912510  add.s r2, r11, r2
001a64  0b110111  add.s r2, r2, r16
001a68  170b5100  and r22, r2, r5
001a6c  13015e05  setlt.u r2, r28, r21
001a70  3b7f01fe  bneq r2, zero, -36
001a74  1bc10b01  srli r2, r23, 16
001a78  1b011100  andi r2, r2, 1
001a7c  0b912b10  add.s r2, r23, r2
001a80  0b110111  add.s r2, r2, r16
001a84  17045100  and r8, r2, r5
001a88  13016e04  setlt.u r2, r28, r6
001a8c  bb4b01fe  bneq r2, zero, -272
001a90  1b410601  srli r2, r12, 16
001a94  1b011100  andi r2, r2, 1
001a98  0b112610  add.s r2, r12, r2
001a9c  0b110111  add.s r2, r2, r16
001aa0  170c5100  and r24, r2, r5
001aa4  5bdbffff  j -296
001aa8  00360002  core_id r12
001aac  00200100  mfence { sm }
001ab0  1f71d000  addli r2, zero, 111
001ab4  33010128  zext_int2long r[3:4], r2
001ab8  73342fc6  store.d r[3:4], -920(r30)
001abc  1f610000  addli r2, zero, 6
001ac0  bb552600  bneq r12, r2, 372
001ac4  1f01c000  addli r2, zero, 96
001ac8  3d000000  xfence
001acc  00a00300  mfence { lm, sm, gm }
001ad0  33040128  zext_int2long r[9:10], r2
001ad4  db030000  j 28
001ad8  6b518fc6  load.d r[3:4], -920(r30)
001adc  6b540fc6  load.d r[9:10], -928(r30)
001ae0  1f730000  addli r6, zero, 7
001ae4  13212404  setlt.ul r2, r[9:10], r[3:4]
001ae8  27140400  addli.d r[9:10], r[9:10], 1
001aec  37050100  beq r2, zero, 320
001af0  97386402  sll.d r[18:19], r[9:10], r6
001af4  33010028  zext_int2long r[3:4], zero
001af8  73308fc6  store.d r[9:10], -928(r30)
001afc  db040000  j 36
001b00  27410100  addli.d r[3:4], r[3:4], 4
001b04  8b943011  add.s r9, r1, r19
001b08  1323d102  setneq.d r6, r[3:4], r[14:15]
001b0c  73e68401  stores.w r24, 12(r9)
001b10  73e48400  stores.w r8, 8(r9)
001b14  73e26401  stores.w r22, 4(r9)
001b18  73e04401  stores.w r20, 0(r9)
001b1c  b77e03fe  beq r6, zero, -68
001b20  0b241111  add.ul r[9:10], r[3:4], r[18:19]
001b24  9b392400  slli r19, r8, 2
001b28  0b933311  add.s r6, r7, r19
001b2c  6f46c300  loads.w r12, 12(r6)
001b30  ef4c0300  loads.w r25, 0(r6)
001b34  ef454300  loads.w r11, 4(r6)
001b38  ef4b8300  loads.w r23, 8(r6)
001b3c  1703b601  and r6, r12, r27
001b40  13046204  setlt.u r8, r4, r6
001b44  3b300400  bneq r8, zero, 12
001b48  1f0c0600  addli r24, r12, 0
001b4c  5b010000  j 8
001b50  171cf600  or r24, r12, r15
001b54  978abb01  and r21, r23, r27
001b58  13045205  setlt.u r8, r4, r21
001b5c  3b300400  bneq r8, zero, 12
001b60  1f840b00  addli r8, r23, 0
001b64  5b010000  j 8
001b68  1794fb00  or r8, r23, r15
001b6c  178db501  and r26, r11, r27
001b70  9304a205  setlt.u r9, r4, r26
001b74  3bb00400  bneq r9, zero, 12
001b78  1f8b0500  addli r22, r11, 0
001b7c  5b010000  j 8
001b80  179bf500  or r22, r11, r15
001b84  9784bc01  and r9, r25, r27
001b88  13059204  setlt.u r10, r4, r9
001b8c  3b500500  bneq r10, zero, 20
001b90  1f8a0c00  addli r20, r25, 0
001b94  93049e04  setlt.u r9, r28, r9
001b98  37d00400  beq r9, zero, 20
001b9c  db040000  j 36
001ba0  179afc00  or r20, r25, r15
001ba4  93049e04  setlt.u r9, r28, r9
001ba8  3be00400  bneq r9, zero, 24
001bac  9bc40c01  srli r9, r25, 16
001bb0  9b841400  andi r9, r9, 1
001bb4  8b949c10  add.s r9, r25, r9
001bb8  8b940411  add.s r9, r9, r16
001bbc  178a5400  and r20, r9, r5
001bc0  9304ae05  setlt.u r9, r28, r26
001bc4  37e00400  beq r9, zero, 24
001bc8  93045e05  setlt.u r9, r28, r21
001bcc  b7b00400  beq r9, zero, 44
001bd0  13036e04  setlt.u r6, r28, r6
001bd4  bb3c03fe  bneq r6, zero, -212
001bd8  db070000  j 60
001bdc  9bc40501  srli r9, r11, 16
001be0  9b841400  andi r9, r9, 1
001be4  8b949510  add.s r9, r11, r9
001be8  8b940411  add.s r9, r9, r16
001bec  178b5400  and r22, r9, r5
001bf0  93045e05  setlt.u r9, r28, r21
001bf4  3bff04fe  bneq r9, zero, -36
001bf8  1bc40b01  srli r8, r23, 16
001bfc  1b041400  andi r8, r8, 1
001c00  0b948b10  add.s r8, r23, r8
001c04  0b140411  add.s r8, r8, r16
001c08  17045400  and r8, r8, r5
001c0c  13036e04  setlt.u r6, r28, r6
001c10  bb4b03fe  bneq r6, zero, -272
001c14  1b430601  srli r6, r12, 16
001c18  1b031300  andi r6, r6, 1
001c1c  0b136610  add.s r6, r12, r6
001c20  0b130311  add.s r6, r6, r16
001c24  170c5300  and r24, r6, r5
001c28  5bdbffff  j -296
001c2c  00360002  core_id r12
001c30  00200100  mfence { sm }
001c34  1f71f000  addli r2, zero, 127
001c38  33010128  zext_int2long r[3:4], r2
001c3c  73302fc6  store.d r[3:4], -928(r30)
001c40  bb556600  bneq r12, r6, 372
001c44  1f01e000  addli r2, zero, 112
001c48  3d000000  xfence
001c4c  00a00300  mfence { lm, sm, gm }
001c50  33040128  zext_int2long r[9:10], r2
001c54  db030000  j 28
001c58  6b510fc6  load.d r[3:4], -928(r30)
001c5c  6b548fc5  load.d r[9:10], -936(r30)
001c60  1f730000  addli r6, zero, 7
001c64  13212404  setlt.ul r2, r[9:10], r[3:4]
001c68  27140400  addli.d r[9:10], r[9:10], 1
001c6c  37050100  beq r2, zero, 320
001c70  97386402  sll.d r[18:19], r[9:10], r6
001c74  33010028  zext_int2long r[3:4], zero
001c78  733c8fc4  store.d r[9:10], -936(r30)
001c7c  db040000  j 36
001c80  27410100  addli.d r[3:4], r[3:4], 4
001c84  8b949010  add.s r9, r1, r9
001c88  1323d102  setneq.d r6, r[3:4], r[14:15]
001c8c  73e6c400  stores.w r12, 12(r9)
001c90  73e48400  stores.w r8, 8(r9)
001c94  73e26401  stores.w r22, 4(r9)
001c98  73e04401  stores.w r20, 0(r9)
001c9c  b77e03fe  beq r6, zero, -68
001ca0  0b241111  add.ul r[9:10], r[3:4], r[18:19]
001ca4  9b342400  slli r9, r8, 2
001ca8  0b939310  add.s r6, r7, r9
001cac  6f45c300  loads.w r10, 12(r6)
001cb0  ef4b0300  loads.w r23, 0(r6)
001cb4  ef454300  loads.w r11, 4(r6)
001cb8  ef498300  loads.w r19, 8(r6)
001cbc  1703b501  and r6, r10, r27
001cc0  13046204  setlt.u r8, r4, r6
001cc4  3b300400  bneq r8, zero, 12
001cc8  1f060500  addli r12, r10, 0
001ccc  5b010000  j 8
001cd0  1716f500  or r12, r10, r15
001cd4  978ab901  and r21, r19, r27
001cd8  13045205  setlt.u r8, r4, r21
001cdc  3b300400  bneq r8, zero, 12
001ce0  1f840900  addli r8, r19, 0
001ce4  5b010000  j 8
001ce8  1794f900  or r8, r19, r15
001cec  178db501  and r26, r11, r27
001cf0  130aa205  setlt.u r20, r4, r26
001cf4  3b300a00  bneq r20, zero, 12
001cf8  1f8b0500  addli r22, r11, 0
001cfc  5b010000  j 8
001d00  179bf500  or r22, r11, r15
001d04  178cbb01  and r24, r23, r27
001d08  130a8205  setlt.u r20, r4, r24
001d0c  3b500a00  bneq r20, zero, 20
001d10  1f8a0b00  addli r20, r23, 0
001d14  130c8e05  setlt.u r24, r28, r24
001d18  37500c00  beq r24, zero, 20
001d1c  db040000  j 36
001d20  179afb00  or r20, r23, r15
001d24  130c8e05  setlt.u r24, r28, r24
001d28  3b600c00  bneq r24, zero, 24
001d2c  1bca0b01  srli r20, r23, 16
001d30  1b0a1a00  andi r20, r20, 1
001d34  0b9a4b11  add.s r20, r23, r20
001d38  0b1a0a11  add.s r20, r20, r16
001d3c  170a5a00  and r20, r20, r5
001d40  930bae05  setlt.u r23, r28, r26
001d44  37e00b00  beq r23, zero, 24
001d48  93055e05  setlt.u r11, r28, r21
001d4c  b7b00500  beq r11, zero, 44
001d50  13036e04  setlt.u r6, r28, r6
001d54  bb3c03fe  bneq r6, zero, -212
001d58  db070000  j 60
001d5c  1bcb0501  srli r22, r11, 16
001d60  1b0b1b00  andi r22, r22, 1
001d64  8b956511  add.s r11, r11, r22
001d68  8b950511  add.s r11, r11, r16
001d6c  178b5500  and r22, r11, r5
001d70  93055e05  setlt.u r11, r28, r21
001d74  3bff05fe  bneq r11, zero, -36
001d78  1bc40901  srli r8, r19, 16
001d7c  1b041400  andi r8, r8, 1
001d80  0b948910  add.s r8, r19, r8
001d84  0b140411  add.s r8, r8, r16
001d88  17045400  and r8, r8, r5
001d8c  13036e04  setlt.u r6, r28, r6
001d90  bb4b03fe  bneq r6, zero, -272
001d94  1b430501  srli r6, r10, 16
001d98  1b031300  andi r6, r6, 1
001d9c  0b136510  add.s r6, r10, r6
001da0  0b130311  add.s r6, r6, r16
001da4  17065300  and r12, r6, r5
001da8  5bdbffff  j -296
001dac  00360002  core_id r12
001db0  00200100  mfence { sm }
001db4  63019ff8  loadli.w r2,  -952(r30)
001db8  1f040007  addli r8, zero, 896
001dbc  33040428  zext_int2long r[9:10], r8
001dc0  33010128  zext_int2long r[3:4], r2
001dc4  0b248140  min.ul r[9:10], r[3:4], r[9:10]
001dc8  27040401  addli.d r[9:10], r[9:10], 128
001dcc  0b242448  max.ul r[9:10], r[9:10], r[3:4]
001dd0  0b312418  sub.sl r[3:4], r[9:10], r[3:4]
001dd4  9f340000  addli r9, zero, 3
001dd8  0b21d140  min.ul r[3:4], r[3:4], r[14:15]
001ddc  73302fc2  store.d r[3:4], -992(r30)
001de0  1f71f001  addli r2, zero, 255
001de4  80220104  csr_set csr5, r2
001de8  00e00200  sync_core
001dec  bb109600  bneq r12, r9, 36
001df0  9f311000  addli r3, zero, 11
001df4  1f711000  addli r2, zero, 15
001df8  7d800100  xsignal r3, 0
001dfc  7d000100  xsignal r2, 0
001e00  1f012000  addli r2, zero, 16
001e04  7d900100  xwait r3, 0
001e08  7d100100  xwait r2, 0
001e0c  db6d0000  j 876
001e10  63446ff8  loadli.w r8,  -972(r30)
001e14  ab411500  lui r3, 340
001e18  9f180000  addli r17, zero, 1
001e1c  0b119438  mod.s r2, r8, r9
001e20  1b319100  slli r2, r2, 9
001e24  8b193110  add.s r19, r2, r3
001e28  3b7b1601  bneq r12, r17, 732
001e2c  1f0a0400  addli r20, r8, 0
001e30  6b548fc2  load.d r[9:10], -984(r30)
001e34  6b550f01  load.d r[11:12], 16(r30)
001e38  1f3b2000  addli r22, zero, 19
001e3c  1f330000  addli r6, zero, 3
001e40  9f710000  addli r3, zero, 7
001e44  1f290000  addli r18, zero, 2
001e48  7d100b00  xwait r22, 0
001e4c  17341403  sll.d r[9:10], r[9:10], r17
001e50  0b248510  add.ul r[9:10], r[11:12], r[9:10]
001e54  bf244901  blt.s r18, r20, 296
001e58  1f550000  addli r10, zero, 5
001e5c  9f650000  addli r11, zero, 6
001e60  1d000500  lock zero, r10
001e64  15000014  dma_cfg zero, zero, zero, 10
001e68  15001015  dma_cfg zero, zero, r17, 10
001e6c  15002015  dma_cfg zero, zero, r18, 10
001e70  15006014  dma_cfg zero, zero, r6, 10
001e74  1f430000  addli r6, zero, 4
001e78  15006014  dma_cfg zero, zero, r6, 10
001e7c  1500a014  dma_cfg zero, zero, r10, 10
001e80  1500b014  dma_cfg zero, zero, r11, 10
001e84  15003014  dma_cfg zero, zero, r3, 10
001e88  9f011000  addli r3, zero, 8
001e8c  15003014  dma_cfg zero, zero, r3, 10
001e90  9f111000  addli r3, zero, 9
001e94  15003014  dma_cfg zero, zero, r3, 10
001e98  9f211000  addli r3, zero, 10
001e9c  15003014  dma_cfg zero, zero, r3, 10
001ea0  9f311000  addli r3, zero, 11
001ea4  15003014  dma_cfg zero, zero, r3, 10
001ea8  9f411000  addli r3, zero, 12
001eac  15003014  dma_cfg zero, zero, r3, 10
001eb0  9f511000  addli r3, zero, 13
001eb4  15003014  dma_cfg zero, zero, r3, 10
001eb8  9f611000  addli r3, zero, 14
001ebc  15003014  dma_cfg zero, zero, r3, 10
001ec0  9f711000  addli r3, zero, 15
001ec4  15003014  dma_cfg zero, zero, r3, 10
001ec8  9f012000  addli r3, zero, 16
001ecc  15003014  dma_cfg zero, zero, r3, 10
001ed0  9f112000  addli r3, zero, 17
001ed4  15003014  dma_cfg zero, zero, r3, 10
001ed8  9f212000  addli r3, zero, 18
001edc  15003014  dma_cfg zero, zero, r3, 10
001ee0  9f412000  addli r3, zero, 20
001ee4  15006015  dma_cfg zero, zero, r22, 10
001ee8  15003014  dma_cfg zero, zero, r3, 10
001eec  9f512000  addli r3, zero, 21
001ef0  15003014  dma_cfg zero, zero, r3, 10
001ef4  9f612000  addli r3, zero, 22
001ef8  15003014  dma_cfg zero, zero, r3, 10
001efc  9f712000  addli r3, zero, 23
001f00  15003014  dma_cfg zero, zero, r3, 10
001f04  9f013000  addli r3, zero, 24
001f08  15003014  dma_cfg zero, zero, r3, 10
001f0c  9f113000  addli r3, zero, 25
001f10  15003014  dma_cfg zero, zero, r3, 10
001f14  9f213000  addli r3, zero, 26
001f18  15003014  dma_cfg zero, zero, r3, 10
001f1c  9f313000  addli r3, zero, 27
001f20  15003014  dma_cfg zero, zero, r3, 10
001f24  9f413000  addli r3, zero, 28
001f28  15003014  dma_cfg zero, zero, r3, 10
001f2c  9f513000  addli r3, zero, 29
001f30  15003014  dma_cfg zero, zero, r3, 10
001f34  9f613000  addli r3, zero, 30
001f38  15003014  dma_cfg zero, zero, r3, 10
001f3c  9f713000  addli r3, zero, 31
001f40  15003014  dma_cfg zero, zero, r3, 10
001f44  9f018000  addli r3, zero, 64
001f48  95880800  dma_cfg r17, r17, zero, 0
001f4c  95080002  dma_cfg r17, zero, zero, 1
001f50  15000004  dma_cfg zero, zero, zero, 2
001f54  95093006  dma_cfg r19, zero, r3, 3
001f58  9f010001  addli r3, zero, 128
001f5c  95016008  dma_cfg r3, zero, r6, 4
001f60  9f010004  addli r3, zero, 512
001f64  9501100b  dma_cfg r3, zero, r17, 5
001f68  15000010  dma_cfg zero, zero, zero, 8
001f6c  35000000  dma_run zero
001f70  1500100b  dma_cfg zero, zero, r17, 5
001f74  15000010  dma_cfg zero, zero, zero, 8
001f78  1d100500  unlock r10
001f7c  1f450000  addli r10, zero, 4
001f80  ab411500  lui r3, 340
001f84  1f038000  addli r6, zero, 64
001f88  9f550000  addli r11, zero, 5
001f8c  1d000500  lock zero, r10
001f90  9b910104  ori r3, r3, 64
001f94  95880800  dma_cfg r17, r17, zero, 0
001f98  15800404  dma_cfg zero, r9, zero, 2
001f9c  0b113110  add.s r2, r2, r3
001fa0  6b5a0fc2  load.d r[21:22], -992(r30)
001fa4  15016406  dma_cfg r2, r8, r6, 3
001fa8  1f040002  addli r8, zero, 256
001fac  9f340000  addli r9, zero, 3
001fb0  9f713a00  addli r3, r20, 31
001fb4  1bc15100  srli r2, r3, 5
001fb8  9b311a00  slli r3, r20, 1
001fbc  1f0a0001  addli r20, zero, 128
001fc0  9f0a0004  addli r21, zero, 512
001fc4  150a2308  dma_cfg r20, r6, r2, 4
001fc8  9b81e103  andi r3, r3, 62
001fcc  950a140b  dma_cfg r21, r8, r17, 5
001fd0  1f640000  addli r8, zero, 6
001fd4  15003010  dma_cfg zero, zero, r3, 8
001fd8  35000000  dma_run zero
001fdc  1500100b  dma_cfg zero, zero, r17, 5
001fe0  15000010  dma_cfg zero, zero, zero, 8
001fe4  1d100500  unlock r10
001fe8  1d800500  lock zero, r11
001fec  15000014  dma_cfg zero, zero, zero, 10
001ff0  15001015  dma_cfg zero, zero, r17, 10
001ff4  15002015  dma_cfg zero, zero, r18, 10
001ff8  15009014  dma_cfg zero, zero, r9, 10
001ffc  1500a014  dma_cfg zero, zero, r10, 10
002000  1f252000  addli r10, zero, 18
002004  1500b014  dma_cfg zero, zero, r11, 10
002008  15008014  dma_cfg zero, zero, r8, 10
00200c  1f740000  addli r8, zero, 7
002010  15008014  dma_cfg zero, zero, r8, 10
002014  1f041000  addli r8, zero, 8
002018  15008014  dma_cfg zero, zero, r8, 10
00201c  1f141000  addli r8, zero, 9
002020  15008014  dma_cfg zero, zero, r8, 10
002024  1f241000  addli r8, zero, 10
002028  15008014  dma_cfg zero, zero, r8, 10
00202c  1f341000  addli r8, zero, 11
002030  15008014  dma_cfg zero, zero, r8, 10
002034  1f441000  addli r8, zero, 12
002038  15008014  dma_cfg zero, zero, r8, 10
00203c  1f541000  addli r8, zero, 13
002040  15008014  dma_cfg zero, zero, r8, 10
002044  1f641000  addli r8, zero, 14
002048  15008014  dma_cfg zero, zero, r8, 10
00204c  1f741000  addli r8, zero, 15
002050  15008014  dma_cfg zero, zero, r8, 10
002054  1f042000  addli r8, zero, 16
002058  15008014  dma_cfg zero, zero, r8, 10
00205c  1f142000  addli r8, zero, 17
002060  15008014  dma_cfg zero, zero, r8, 10
002064  1f442000  addli r8, zero, 20
002068  1500a014  dma_cfg zero, zero, r10, 10
00206c  15006015  dma_cfg zero, zero, r22, 10
002070  15008014  dma_cfg zero, zero, r8, 10
002074  1f542000  addli r8, zero, 21
002078  15008014  dma_cfg zero, zero, r8, 10
00207c  1f642000  addli r8, zero, 22
002080  15008014  dma_cfg zero, zero, r8, 10
002084  1f742000  addli r8, zero, 23
002088  15008014  dma_cfg zero, zero, r8, 10
00208c  1f043000  addli r8, zero, 24
002090  15008014  dma_cfg zero, zero, r8, 10
002094  1f143000  addli r8, zero, 25
002098  15008014  dma_cfg zero, zero, r8, 10
00209c  1f243000  addli r8, zero, 26
0020a0  15008014  dma_cfg zero, zero, r8, 10
0020a4  1f343000  addli r8, zero, 27
0020a8  15008014  dma_cfg zero, zero, r8, 10
0020ac  1f443000  addli r8, zero, 28
0020b0  15008014  dma_cfg zero, zero, r8, 10
0020b4  1f543000  addli r8, zero, 29
0020b8  15008014  dma_cfg zero, zero, r8, 10
0020bc  1f643000  addli r8, zero, 30
0020c0  15008014  dma_cfg zero, zero, r8, 10
0020c4  1f743000  addli r8, zero, 31
0020c8  15008014  dma_cfg zero, zero, r8, 10
0020cc  95880800  dma_cfg r17, r17, zero, 0
0020d0  95080002  dma_cfg r17, zero, zero, 1
0020d4  15000004  dma_cfg zero, zero, zero, 2
0020d8  95096006  dma_cfg r19, zero, r6, 3
0020dc  1f730000  addli r6, zero, 7
0020e0  150a2008  dma_cfg r20, zero, r2, 4
0020e4  950a100b  dma_cfg r21, zero, r17, 5
0020e8  15003010  dma_cfg zero, zero, r3, 8
0020ec  35000000  dma_run zero
0020f0  1500100b  dma_cfg zero, zero, r17, 5
0020f4  15000010  dma_cfg zero, zero, zero, 8
0020f8  1d900500  unlock r11
0020fc  7d000500  xsignal r10, 0
002100  5b0f0000  j 120
002104  9f110000  addli r3, zero, 1
002108  1f510000  addli r2, zero, 5
00210c  bb312600  bneq r12, r2, 108
002110  1f741000  addli r8, zero, 15
002114  1f010000  addli r2, zero, 0
002118  7d100400  xwait r8, 0
00211c  1f242000  addli r8, zero, 18
002120  7d100400  xwait r8, 0
002124  1f240000  addli r8, zero, 2
002128  1d000400  lock zero, r8
00212c  2b04803f  lui r8, 260096
002130  0d000002  ew_cfg zero, zero, zero, 1
002134  0d140400  ewcoeff_cfg r8, r8, zero, 0
002138  1f74f000  addli r8, zero, 127
00213c  0d000404  ew_cfg zero, r8, zero, 2
002140  2b040100  lui r8, 16
002144  8d010006  ew_cfg r3, zero, zero, 3
002148  8b912010  add.s r3, r1, r2
00214c  1f010104  addli r2, r2, 512
002150  ad813101  dsmadd r3, r3, r19, 0
002154  bb5f81fe  bneq r2, r8, -12
002158  9f210000  addli r3, zero, 2
00215c  1f012000  addli r2, zero, 16
002160  1d900100  unlock r3
002164  7d000100  xsignal r2, 0
002168  1f312000  addli r2, zero, 19
00216c  7d000100  xsignal r2, 0
002170  1f110000  addli r2, zero, 1
002174  db010000  j 12
002178  1f110000  addli r2, zero, 1
00217c  9f210000  addli r3, zero, 2
002180  3d000000  xfence
002184  1f74f001  addli r8, zero, 255
002188  00a00300  mfence { lm, sm, gm }
00218c  80220404  csr_set csr5, r8
002190  00e00200  sync_core
002194  b7400600  beq r12, zero, 48
002198  b7462600  beq r12, r2, 432
00219c  b72c3600  beq r12, r3, 808
0021a0  37729602  beq r12, r9, 1180
0021a4  1f410000  addli r2, zero, 4
0021a8  37482602  beq r12, r2, 1552
0021ac  1f510000  addli r2, zero, 5
0021b0  370e2602  beq r12, r2, 1920
0021b4  1f610000  addli r2, zero, 6
0021b8  b7532604  beq r12, r2, 2292
0021bc  b7296604  beq r12, r6, 2664
0021c0  5b7c0100  j 3040
0021c4  33010028  zext_int2long r[3:4], zero
0021c8  3d000000  xfence
0021cc  00a00300  mfence { lm, sm, gm }
0021d0  27040100  addli.d r[9:10], r[3:4], 0
0021d4  73342fc4  store.d r[3:4], -952(r30)
0021d8  db030000  j 28
0021dc  6b510fc5  load.d r[3:4], -944(r30)
0021e0  6b548fc5  load.d r[9:10], -936(r30)
0021e4  1f730000  addli r6, zero, 7
0021e8  13212404  setlt.ul r2, r[9:10], r[3:4]
0021ec  27140400  addli.d r[9:10], r[9:10], 1
0021f0  37050100  beq r2, zero, 320
0021f4  eb588fc4  load.d r[18:19], -952(r30)
0021f8  17316402  sll.d r[3:4], r[9:10], r6
0021fc  733c8fc4  store.d r[9:10], -936(r30)
002200  db040000  j 36
002204  a7c80800  addli.d r[18:19], r[18:19], 4
002208  0b953311  add.s r10, r7, r19
00220c  13a3d802  setneq.d r6, r[18:19], r[14:15]
002210  7366a501  stores.w r26, 12(r10)
002214  73648500  stores.w r8, 8(r10)
002218  73626501  stores.w r22, 4(r10)
00221c  73609500  stores.w r9, 0(r10)
002220  b77e03fe  beq r6, zero, -68
002224  0ba42810  add.ul r[9:10], r[18:19], r[3:4]
002228  9b392400  slli r19, r8, 2
00222c  0b933011  add.s r6, r1, r19
002230  6f46c300  loads.w r12, 12(r6)
002234  6f4a0300  loads.w r20, 0(r6)
002238  ef454300  loads.w r11, 4(r6)
00223c  ef4b8300  loads.w r23, 8(r6)
002240  1703b601  and r6, r12, r27
002244  13046204  setlt.u r8, r4, r6
002248  3b300400  bneq r8, zero, 12
00224c  1f0d0600  addli r26, r12, 0
002250  5b010000  j 8
002254  171df600  or r26, r12, r15
002258  978abb01  and r21, r23, r27
00225c  13045205  setlt.u r8, r4, r21
002260  3b300400  bneq r8, zero, 12
002264  1f840b00  addli r8, r23, 0
002268  5b010000  j 8
00226c  1794fb00  or r8, r23, r15
002270  1785b501  and r10, r11, r27
002274  9304a204  setlt.u r9, r4, r10
002278  3bb00400  bneq r9, zero, 12
00227c  1f8b0500  addli r22, r11, 0
002280  5b010000  j 8
002284  179bf500  or r22, r11, r15
002288  170cba01  and r24, r20, r27
00228c  93048205  setlt.u r9, r4, r24
002290  3bd00400  bneq r9, zero, 20
002294  9f040a00  addli r9, r20, 0
002298  130c8e05  setlt.u r24, r28, r24
00229c  37500c00  beq r24, zero, 20
0022a0  db040000  j 36
0022a4  9714fa00  or r9, r20, r15
0022a8  130c8e05  setlt.u r24, r28, r24
0022ac  3b600c00  bneq r24, zero, 24
0022b0  9b440a01  srli r9, r20, 16
0022b4  9b841400  andi r9, r9, 1
0022b8  8b149a10  add.s r9, r20, r9
0022bc  8b940411  add.s r9, r9, r16
0022c0  97845400  and r9, r9, r5
0022c4  1305ae04  setlt.u r10, r28, r10
0022c8  37600500  beq r10, zero, 24
0022cc  13055e05  setlt.u r10, r28, r21
0022d0  b7300500  beq r10, zero, 44
0022d4  13036e04  setlt.u r6, r28, r6
0022d8  bb3c03fe  bneq r6, zero, -212
0022dc  db070000  j 60
0022e0  1bc50501  srli r10, r11, 16
0022e4  1b051500  andi r10, r10, 1
0022e8  0b95a510  add.s r10, r11, r10
0022ec  0b150511  add.s r10, r10, r16
0022f0  170b5500  and r22, r10, r5
0022f4  13055e05  setlt.u r10, r28, r21
0022f8  3b7f05fe  bneq r10, zero, -36
0022fc  1bc40b01  srli r8, r23, 16
002300  1b041400  andi r8, r8, 1
002304  0b948b10  add.s r8, r23, r8
002308  0b140411  add.s r8, r8, r16
00230c  17045400  and r8, r8, r5
002310  13036e04  setlt.u r6, r28, r6
002314  bb4b03fe  bneq r6, zero, -272
002318  1b430601  srli r6, r12, 16
00231c  1b031300  andi r6, r6, 1
002320  0b136610  add.s r6, r12, r6
002324  0b130311  add.s r6, r6, r16
002328  170d5300  and r26, r6, r5
00232c  5bdbffff  j -296
002330  00360002  core_id r12
002334  9f340000  addli r9, zero, 3
002338  1f110000  addli r2, zero, 1
00233c  9f210000  addli r3, zero, 2
002340  00200100  mfence { sm }
002344  3b6926fe  bneq r12, r2, -424
002348  1f012000  addli r2, zero, 16
00234c  3d000000  xfence
002350  00a00300  mfence { lm, sm, gm }
002354  33040128  zext_int2long r[9:10], r2
002358  db030000  j 28
00235c  6b510fc9  load.d r[3:4], -880(r30)
002360  6b548fc5  load.d r[9:10], -936(r30)
002364  1f730000  addli r6, zero, 7
002368  13212404  setlt.ul r2, r[9:10], r[3:4]
00236c  27140400  addli.d r[9:10], r[9:10], 1
002370  37050100  beq r2, zero, 320
002374  97386402  sll.d r[18:19], r[9:10], r6
002378  33010028  zext_int2long r[3:4], zero
00237c  733c8fc4  store.d r[9:10], -936(r30)
002380  db040000  j 36
002384  27410100  addli.d r[3:4], r[3:4], 4
002388  8b949310  add.s r9, r7, r9
00238c  1323d102  setneq.d r6, r[3:4], r[14:15]
002390  73e6c400  stores.w r12, 12(r9)
002394  73e48400  stores.w r8, 8(r9)
002398  73e26401  stores.w r22, 4(r9)
00239c  73e04401  stores.w r20, 0(r9)
0023a0  b77e03fe  beq r6, zero, -68
0023a4  0b241111  add.ul r[9:10], r[3:4], r[18:19]
0023a8  9b342400  slli r9, r8, 2
0023ac  0b939010  add.s r6, r1, r9
0023b0  6f45c300  loads.w r10, 12(r6)
0023b4  ef4b0300  loads.w r23, 0(r6)
0023b8  ef454300  loads.w r11, 4(r6)
0023bc  ef498300  loads.w r19, 8(r6)
0023c0  1703b501  and r6, r10, r27
0023c4  13046204  setlt.u r8, r4, r6
0023c8  3b300400  bneq r8, zero, 12
0023cc  1f060500  addli r12, r10, 0
0023d0  5b010000  j 8
0023d4  1716f500  or r12, r10, r15
0023d8  978ab901  and r21, r19, r27
0023dc  13045205  setlt.u r8, r4, r21
0023e0  3b300400  bneq r8, zero, 12
0023e4  1f840900  addli r8, r19, 0
0023e8  5b010000  j 8
0023ec  1794f900  or r8, r19, r15
0023f0  178db501  and r26, r11, r27
0023f4  130aa205  setlt.u r20, r4, r26
0023f8  3b300a00  bneq r20, zero, 12
0023fc  1f8b0500  addli r22, r11, 0
002400  5b010000  j 8
002404  179bf500  or r22, r11, r15
002408  178cbb01  and r24, r23, r27
00240c  130a8205  setlt.u r20, r4, r24
002410  3b500a00  bneq r20, zero, 20
002414  1f8a0b00  addli r20, r23, 0
002418  130c8e05  setlt.u r24, r28, r24
00241c  37500c00  beq r24, zero, 20
002420  db040000  j 36
002424  179afb00  or r20, r23, r15
002428  130c8e05  setlt.u r24, r28, r24
00242c  3b600c00  bneq r24, zero, 24
002430  1bca0b01  srli r20, r23, 16
002434  1b0a1a00  andi r20, r20, 1
002438  0b9a4b11  add.s r20, r23, r20
00243c  0b1a0a11  add.s r20, r20, r16
002440  170a5a00  and r20, r20, r5
002444  930bae05  setlt.u r23, r28, r26
002448  37e00b00  beq r23, zero, 24
00244c  93055e05  setlt.u r11, r28, r21
002450  b7b00500  beq r11, zero, 44
002454  13036e04  setlt.u r6, r28, r6
002458  bb3c03fe  bneq r6, zero, -212
00245c  db070000  j 60
002460  1bcb0501  srli r22, r11, 16
002464  1b0b1b00  andi r22, r22, 1
002468  8b956511  add.s r11, r11, r22
00246c  8b950511  add.s r11, r11, r16
002470  178b5500  and r22, r11, r5
002474  93055e05  setlt.u r11, r28, r21
002478  3bff05fe  bneq r11, zero, -36
00247c  1bc40901  srli r8, r19, 16
002480  1b041400  andi r8, r8, 1
002484  0b948910  add.s r8, r19, r8
002488  0b140411  add.s r8, r8, r16
00248c  17045400  and r8, r8, r5
002490  13036e04  setlt.u r6, r28, r6
002494  bb4b03fe  bneq r6, zero, -272
002498  1b430501  srli r6, r10, 16
00249c  1b031300  andi r6, r6, 1
0024a0  0b136510  add.s r6, r10, r6
0024a4  0b130311  add.s r6, r6, r16
0024a8  17065300  and r12, r6, r5
0024ac  5bdbffff  j -296
0024b0  00360002  core_id r12
0024b4  9f340000  addli r9, zero, 3
0024b8  9f210000  addli r3, zero, 2
0024bc  00200100  mfence { sm }
0024c0  bb0336fe  bneq r12, r3, -800
0024c4  1f014000  addli r2, zero, 32
0024c8  3d000000  xfence
0024cc  00a00300  mfence { lm, sm, gm }
0024d0  33040128  zext_int2long r[9:10], r2
0024d4  db030000  j 28
0024d8  6b518fc8  load.d r[3:4], -888(r30)
0024dc  6b540fc9  load.d r[9:10], -880(r30)
0024e0  1f730000  addli r6, zero, 7
0024e4  13212404  setlt.ul r2, r[9:10], r[3:4]
0024e8  27140400  addli.d r[9:10], r[9:10], 1
0024ec  37050100  beq r2, zero, 320
0024f0  97386402  sll.d r[18:19], r[9:10], r6
0024f4  33010028  zext_int2long r[3:4], zero
0024f8  73388fc8  store.d r[9:10], -880(r30)
0024fc  db040000  j 36
002500  27410100  addli.d r[3:4], r[3:4], 4
002504  8b949310  add.s r9, r7, r9
002508  1323d102  setneq.d r6, r[3:4], r[14:15]
00250c  73e6c400  stores.w r12, 12(r9)
002510  73e48400  stores.w r8, 8(r9)
002514  73e26401  stores.w r22, 4(r9)
002518  73e04401  stores.w r20, 0(r9)
00251c  b77e03fe  beq r6, zero, -68
002520  0b241111  add.ul r[9:10], r[3:4], r[18:19]
002524  9b342400  slli r9, r8, 2
002528  0b939010  add.s r6, r1, r9
00252c  6f45c300  loads.w r10, 12(r6)
002530  ef4b0300  loads.w r23, 0(r6)
002534  ef454300  loads.w r11, 4(r6)
002538  ef498300  loads.w r19, 8(r6)
00253c  1703b501  and r6, r10, r27
002540  13046204  setlt.u r8, r4, r6
002544  3b300400  bneq r8, zero, 12
002548  1f060500  addli r12, r10, 0
00254c  5b010000  j 8
002550  1716f500  or r12, r10, r15
002554  978ab901  and r21, r19, r27
002558  13045205  setlt.u r8, r4, r21
00255c  3b300400  bneq r8, zero, 12
002560  1f840900  addli r8, r19, 0
002564  5b010000  j 8
002568  1794f900  or r8, r19, r15
00256c  178db501  and r26, r11, r27
002570  130aa205  setlt.u r20, r4, r26
002574  3b300a00  bneq r20, zero, 12
002578  1f8b0500  addli r22, r11, 0
00257c  5b010000  j 8
002580  179bf500  or r22, r11, r15
002584  178cbb01  and r24, r23, r27
002588  130a8205  setlt.u r20, r4, r24
00258c  3b500a00  bneq r20, zero, 20
002590  1f8a0b00  addli r20, r23, 0
002594  130c8e05  setlt.u r24, r28, r24
002598  37500c00  beq r24, zero, 20
00259c  db040000  j 36
0025a0  179afb00  or r20, r23, r15
0025a4  130c8e05  setlt.u r24, r28, r24
0025a8  3b600c00  bneq r24, zero, 24
0025ac  1bca0b01  srli r20, r23, 16
0025b0  1b0a1a00  andi r20, r20, 1
0025b4  0b9a4b11  add.s r20, r23, r20
0025b8  0b1a0a11  add.s r20, r20, r16
0025bc  170a5a00  and r20, r20, r5
0025c0  930bae05  setlt.u r23, r28, r26
0025c4  37e00b00  beq r23, zero, 24
0025c8  93055e05  setlt.u r11, r28, r21
0025cc  b7b00500  beq r11, zero, 44
0025d0  13036e04  setlt.u r6, r28, r6
0025d4  bb3c03fe  bneq r6, zero, -212
0025d8  db070000  j 60
0025dc  1bcb0501  srli r22, r11, 16
0025e0  1b0b1b00  andi r22, r22, 1
0025e4  8b956511  add.s r11, r11, r22
0025e8  8b950511  add.s r11, r11, r16
0025ec  178b5500  and r22, r11, r5
0025f0  93055e05  setlt.u r11, r28, r21
0025f4  3bff05fe  bneq r11, zero, -36
0025f8  1bc40901  srli r8, r19, 16
0025fc  1b041400  andi r8, r8, 1
002600  0b948910  add.s r8, r19, r8
002604  0b140411  add.s r8, r8, r16
002608  17045400  and r8, r8, r5
00260c  13036e04  setlt.u r6, r28, r6
002610  bb4b03fe  bneq r6, zero, -272
002614  1b430501  srli r6, r10, 16
002618  1b031300  andi r6, r6, 1
00261c  0b136510  add.s r6, r10, r6
002620  0b130311  add.s r6, r6, r16
002624  17065300  and r12, r6, r5
002628  5bdbffff  j -296
00262c  00360002  core_id r12
002630  9f340000  addli r9, zero, 3
002634  00200100  mfence { sm }
002638  bb3d96fc  bneq r12, r9, -1172
00263c  1f016000  addli r2, zero, 48
002640  3d000000  xfence
002644  00a00300  mfence { lm, sm, gm }
002648  33040128  zext_int2long r[9:10], r2
00264c  db030000  j 28
002650  6b510fc8  load.d r[3:4], -896(r30)
002654  6b540fc9  load.d r[9:10], -880(r30)
002658  1f730000  addli r6, zero, 7
00265c  13212404  setlt.ul r2, r[9:10], r[3:4]
002660  27140400  addli.d r[9:10], r[9:10], 1
002664  37050100  beq r2, zero, 320
002668  97386402  sll.d r[18:19], r[9:10], r6
00266c  33010028  zext_int2long r[3:4], zero
002670  73388fc8  store.d r[9:10], -880(r30)
002674  db040000  j 36
002678  27410100  addli.d r[3:4], r[3:4], 4
00267c  8b949310  add.s r9, r7, r9
002680  1323d102  setneq.d r6, r[3:4], r[14:15]
002684  73e6c400  stores.w r12, 12(r9)
002688  73e48400  stores.w r8, 8(r9)
00268c  73e26401  stores.w r22, 4(r9)
002690  73e04401  stores.w r20, 0(r9)
002694  b77e03fe  beq r6, zero, -68
002698  0b241111  add.ul r[9:10], r[3:4], r[18:19]
00269c  9b342400  slli r9, r8, 2
0026a0  0b939010  add.s r6, r1, r9
0026a4  6f45c300  loads.w r10, 12(r6)
0026a8  ef4b0300  loads.w r23, 0(r6)
0026ac  ef454300  loads.w r11, 4(r6)
0026b0  ef498300  loads.w r19, 8(r6)
0026b4  1703b501  and r6, r10, r27
0026b8  13046204  setlt.u r8, r4, r6
0026bc  3b300400  bneq r8, zero, 12
0026c0  1f060500  addli r12, r10, 0
0026c4  5b010000  j 8
0026c8  1716f500  or r12, r10, r15
0026cc  978ab901  and r21, r19, r27
0026d0  13045205  setlt.u r8, r4, r21
0026d4  3b300400  bneq r8, zero, 12
0026d8  1f840900  addli r8, r19, 0
0026dc  5b010000  j 8
0026e0  1794f900  or r8, r19, r15
0026e4  178db501  and r26, r11, r27
0026e8  130aa205  setlt.u r20, r4, r26
0026ec  3b300a00  bneq r20, zero, 12
0026f0  1f8b0500  addli r22, r11, 0
0026f4  5b010000  j 8
0026f8  179bf500  or r22, r11, r15
0026fc  178cbb01  and r24, r23, r27
002700  130a8205  setlt.u r20, r4, r24
002704  3b500a00  bneq r20, zero, 20
002708  1f8a0b00  addli r20, r23, 0
00270c  130c8e05  setlt.u r24, r28, r24
002710  37500c00  beq r24, zero, 20
002714  db040000  j 36
002718  179afb00  or r20, r23, r15
00271c  130c8e05  setlt.u r24, r28, r24
002720  3b600c00  bneq r24, zero, 24
002724  1bca0b01  srli r20, r23, 16
002728  1b0a1a00  andi r20, r20, 1
00272c  0b9a4b11  add.s r20, r23, r20
002730  0b1a0a11  add.s r20, r20, r16
002734  170a5a00  and r20, r20, r5
002738  930bae05  setlt.u r23, r28, r26
00273c  37e00b00  beq r23, zero, 24
002740  93055e05  setlt.u r11, r28, r21
002744  b7b00500  beq r11, zero, 44
002748  13036e04  setlt.u r6, r28, r6
00274c  bb3c03fe  bneq r6, zero, -212
002750  db070000  j 60
002754  1bcb0501  srli r22, r11, 16
002758  1b0b1b00  andi r22, r22, 1
00275c  8b956511  add.s r11, r11, r22
002760  8b950511  add.s r11, r11, r16
002764  178b5500  and r22, r11, r5
002768  93055e05  setlt.u r11, r28, r21
00276c  3bff05fe  bneq r11, zero, -36
002770  1bc40901  srli r8, r19, 16
002774  1b041400  andi r8, r8, 1
002778  0b948910  add.s r8, r19, r8
00277c  0b140411  add.s r8, r8, r16
002780  17045400  and r8, r8, r5
002784  13036e04  setlt.u r6, r28, r6
002788  bb4b03fe  bneq r6, zero, -272
00278c  1b430501  srli r6, r10, 16
002790  1b031300  andi r6, r6, 1
002794  0b136510  add.s r6, r10, r6
002798  0b130311  add.s r6, r6, r16
00279c  17065300  and r12, r6, r5
0027a0  5bdbffff  j -296
0027a4  00360002  core_id r12
0027a8  9f340000  addli r9, zero, 3
0027ac  00200100  mfence { sm }
0027b0  1f410000  addli r2, zero, 4
0027b4  bb6726fc  bneq r12, r2, -1544
0027b8  3d000000  xfence
0027bc  00a00300  mfence { lm, sm, gm }
0027c0  6b540fca  load.d r[9:10], -864(r30)
0027c4  db030000  j 28
0027c8  6b540fca  load.d r[9:10], -864(r30)
0027cc  6b518fc7  load.d r[3:4], -904(r30)
0027d0  1f730000  addli r6, zero, 7
0027d4  13212404  setlt.ul r2, r[9:10], r[3:4]
0027d8  27140400  addli.d r[9:10], r[9:10], 1
0027dc  37050100  beq r2, zero, 320
0027e0  97386402  sll.d r[18:19], r[9:10], r6
0027e4  33010028  zext_int2long r[3:4], zero
0027e8  73308fca  store.d r[9:10], -864(r30)
0027ec  db040000  j 36
0027f0  27410100  addli.d r[3:4], r[3:4], 4
0027f4  8b949310  add.s r9, r7, r9
0027f8  1323d102  setneq.d r6, r[3:4], r[14:15]
0027fc  73e6c400  stores.w r12, 12(r9)
002800  73e48400  stores.w r8, 8(r9)
002804  73e26401  stores.w r22, 4(r9)
002808  73e04401  stores.w r20, 0(r9)
00280c  b77e03fe  beq r6, zero, -68
002810  0b241111  add.ul r[9:10], r[3:4], r[18:19]
002814  9b342400  slli r9, r8, 2
002818  0b939010  add.s r6, r1, r9
00281c  6f45c300  loads.w r10, 12(r6)
002820  ef4b0300  loads.w r23, 0(r6)
002824  ef454300  loads.w r11, 4(r6)
002828  ef498300  loads.w r19, 8(r6)
00282c  1703b501  and r6, r10, r27
002830  13046204  setlt.u r8, r4, r6
002834  3b300400  bneq r8, zero, 12
002838  1f060500  addli r12, r10, 0
00283c  5b010000  j 8
002840  1716f500  or r12, r10, r15
002844  978ab901  and r21, r19, r27
002848  13045205  setlt.u r8, r4, r21
00284c  3b300400  bneq r8, zero, 12
002850  1f840900  addli r8, r19, 0
002854  5b010000  j 8
002858  1794f900  or r8, r19, r15
00285c  178cb501  and r24, r11, r27
002860  130a8205  setlt.u r20, r4, r24
002864  3b300a00  bneq r20, zero, 12
002868  1f8b0500  addli r22, r11, 0
00286c  5b010000  j 8
002870  179bf500  or r22, r11, r15
002874  978cbb01  and r25, r23, r27
002878  130a9205  setlt.u r20, r4, r25
00287c  3b500a00  bneq r20, zero, 20
002880  1f8a0b00  addli r20, r23, 0
002884  930c9e05  setlt.u r25, r28, r25
002888  37d00c00  beq r25, zero, 20
00288c  db040000  j 36
002890  179afb00  or r20, r23, r15
002894  930c9e05  setlt.u r25, r28, r25
002898  3be00c00  bneq r25, zero, 24
00289c  1bca0b01  srli r20, r23, 16
0028a0  1b0a1a00  andi r20, r20, 1
0028a4  0b9a4b11  add.s r20, r23, r20
0028a8  0b1a0a11  add.s r20, r20, r16
0028ac  170a5a00  and r20, r20, r5
0028b0  930b8e05  setlt.u r23, r28, r24
0028b4  37e00b00  beq r23, zero, 24
0028b8  93055e05  setlt.u r11, r28, r21
0028bc  b7b00500  beq r11, zero, 44
0028c0  13036e04  setlt.u r6, r28, r6
0028c4  bb3c03fe  bneq r6, zero, -212
0028c8  db070000  j 60
0028cc  1bcb0501  srli r22, r11, 16
0028d0  1b0b1b00  andi r22, r22, 1
0028d4  8b956511  add.s r11, r11, r22
0028d8  8b950511  add.s r11, r11, r16
0028dc  178b5500  and r22, r11, r5
0028e0  93055e05  setlt.u r11, r28, r21
0028e4  3bff05fe  bneq r11, zero, -36
0028e8  1bc40901  srli r8, r19, 16
0028ec  1b041400  andi r8, r8, 1
0028f0  0b948910  add.s r8, r19, r8
0028f4  0b140411  add.s r8, r8, r16
0028f8  17045400  and r8, r8, r5
0028fc  13036e04  setlt.u r6, r28, r6
002900  bb4b03fe  bneq r6, zero, -272
002904  1b430501  srli r6, r10, 16
002908  1b031300  andi r6, r6, 1
00290c  0b136510  add.s r6, r10, r6
002910  0b130311  add.s r6, r6, r16
002914  17065300  and r12, r6, r5
002918  5bdbffff  j -296
00291c  00360002  core_id r12
002920  9f340000  addli r9, zero, 3
002924  00200100  mfence { sm }
002928  1f510000  addli r2, zero, 5
00292c  3b2226fc  bneq r12, r2, -1912
002930  1f01a000  addli r2, zero, 80
002934  3d000000  xfence
002938  00a00300  mfence { lm, sm, gm }
00293c  33040128  zext_int2long r[9:10], r2
002940  db030000  j 28
002944  6b510fc7  load.d r[3:4], -912(r30)
002948  6b540fca  load.d r[9:10], -864(r30)
00294c  1f730000  addli r6, zero, 7
002950  13212404  setlt.ul r2, r[9:10], r[3:4]
002954  27140400  addli.d r[9:10], r[9:10], 1
002958  37050100  beq r2, zero, 320
00295c  97386402  sll.d r[18:19], r[9:10], r6
002960  33010028  zext_int2long r[3:4], zero
002964  73308fca  store.d r[9:10], -864(r30)
002968  db040000  j 36
00296c  27410100  addli.d r[3:4], r[3:4], 4
002970  8b949310  add.s r9, r7, r9
002974  1323d102  setneq.d r6, r[3:4], r[14:15]
002978  73e6c400  stores.w r12, 12(r9)
00297c  73e48400  stores.w r8, 8(r9)
002980  73e26401  stores.w r22, 4(r9)
002984  73e07401  stores.w r23, 0(r9)
002988  b77e03fe  beq r6, zero, -68
00298c  0b241111  add.ul r[9:10], r[3:4], r[18:19]
002990  9b342400  slli r9, r8, 2
002994  0b939010  add.s r6, r1, r9
002998  6f45c300  loads.w r10, 12(r6)
00299c  ef4c0300  loads.w r25, 0(r6)
0029a0  ef454300  loads.w r11, 4(r6)
0029a4  ef4a8300  loads.w r21, 8(r6)
0029a8  1703b501  and r6, r10, r27
0029ac  13046204  setlt.u r8, r4, r6
0029b0  3b300400  bneq r8, zero, 12
0029b4  1f060500  addli r12, r10, 0
0029b8  5b010000  j 8
0029bc  1716f500  or r12, r10, r15
0029c0  178cba01  and r24, r21, r27
0029c4  13048205  setlt.u r8, r4, r24
0029c8  3b300400  bneq r8, zero, 12
0029cc  1f840a00  addli r8, r21, 0
0029d0  5b010000  j 8
0029d4  1794fa00  or r8, r21, r15
0029d8  178db501  and r26, r11, r27
0029dc  9309a205  setlt.u r19, r4, r26
0029e0  3bb00900  bneq r19, zero, 12
0029e4  1f8b0500  addli r22, r11, 0
0029e8  5b010000  j 8
0029ec  179bf500  or r22, r11, r15
0029f0  9789bc01  and r19, r25, r27
0029f4  130a3205  setlt.u r20, r4, r19
0029f8  3b500a00  bneq r20, zero, 20
0029fc  9f8b0c00  addli r23, r25, 0
002a00  93093e05  setlt.u r19, r28, r19
002a04  37d00900  beq r19, zero, 20
002a08  db040000  j 36
002a0c  979bfc00  or r23, r25, r15
002a10  93093e05  setlt.u r19, r28, r19
002a14  3be00900  bneq r19, zero, 24
002a18  9bc90c01  srli r19, r25, 16
002a1c  9b891900  andi r19, r19, 1
002a20  8b993c11  add.s r19, r25, r19
002a24  8b990911  add.s r19, r19, r16
002a28  978b5900  and r23, r19, r5
002a2c  9309ae05  setlt.u r19, r28, r26
002a30  37e00900  beq r19, zero, 24
002a34  93058e05  setlt.u r11, r28, r24
002a38  b7b00500  beq r11, zero, 44
002a3c  13036e04  setlt.u r6, r28, r6
002a40  bb3c03fe  bneq r6, zero, -212
002a44  db070000  j 60
002a48  9bc90501  srli r19, r11, 16
002a4c  9b891900  andi r19, r19, 1
002a50  8b953511  add.s r11, r11, r19
002a54  8b950511  add.s r11, r11, r16
002a58  178b5500  and r22, r11, r5
002a5c  93058e05  setlt.u r11, r28, r24
002a60  3bff05fe  bneq r11, zero, -36
002a64  1bc40a01  srli r8, r21, 16
002a68  1b041400  andi r8, r8, 1
002a6c  0b948a10  add.s r8, r21, r8
002a70  0b140411  add.s r8, r8, r16
002a74  17045400  and r8, r8, r5
002a78  13036e04  setlt.u r6, r28, r6
002a7c  bb4b03fe  bneq r6, zero, -272
002a80  1b430501  srli r6, r10, 16
002a84  1b031300  andi r6, r6, 1
002a88  0b136510  add.s r6, r10, r6
002a8c  0b130311  add.s r6, r6, r16
002a90  17065300  and r12, r6, r5
002a94  5bdbffff  j -296
002a98  00360002  core_id r12
002a9c  9f340000  addli r9, zero, 3
002aa0  00200100  mfence { sm }
002aa4  1f610000  addli r2, zero, 6
002aa8  3b5c26fa  bneq r12, r2, -2284
002aac  1f01c000  addli r2, zero, 96
002ab0  3d000000  xfence
002ab4  00a00300  mfence { lm, sm, gm }
002ab8  33040128  zext_int2long r[9:10], r2
002abc  db030000  j 28
002ac0  6b518fc6  load.d r[3:4], -920(r30)
002ac4  6b540fca  load.d r[9:10], -864(r30)
002ac8  1f730000  addli r6, zero, 7
002acc  13212404  setlt.ul r2, r[9:10], r[3:4]
002ad0  27140400  addli.d r[9:10], r[9:10], 1
002ad4  37050100  beq r2, zero, 320
002ad8  97396402  sll.d r[20:21], r[9:10], r6
002adc  33010028  zext_int2long r[3:4], zero
002ae0  73308fca  store.d r[9:10], -864(r30)
002ae4  db040000  j 36
002ae8  27410100  addli.d r[3:4], r[3:4], 4
002aec  8b949310  add.s r9, r7, r9
002af0  1323d102  setneq.d r6, r[3:4], r[14:15]
002af4  73e6c400  stores.w r12, 12(r9)
002af8  73e48400  stores.w r8, 8(r9)
002afc  73e26401  stores.w r22, 4(r9)
002b00  73e07401  stores.w r23, 0(r9)
002b04  b77e03fe  beq r6, zero, -68
002b08  0b243111  add.ul r[9:10], r[3:4], r[20:21]
002b0c  9b342400  slli r9, r8, 2
002b10  0b939010  add.s r6, r1, r9
002b14  6f45c300  loads.w r10, 12(r6)
002b18  ef4c0300  loads.w r25, 0(r6)
002b1c  ef454300  loads.w r11, 4(r6)
002b20  ef4a8300  loads.w r21, 8(r6)
002b24  1703b501  and r6, r10, r27
002b28  13046204  setlt.u r8, r4, r6
002b2c  3b300400  bneq r8, zero, 12
002b30  1f060500  addli r12, r10, 0
002b34  5b010000  j 8
002b38  1716f500  or r12, r10, r15
002b3c  178cba01  and r24, r21, r27
002b40  13048205  setlt.u r8, r4, r24
002b44  3b300400  bneq r8, zero, 12
002b48  1f840a00  addli r8, r21, 0
002b4c  5b010000  j 8
002b50  1794fa00  or r8, r21, r15
002b54  178db501  and r26, r11, r27
002b58  9308a205  setlt.u r17, r4, r26
002b5c  3bb00800  bneq r17, zero, 12
002b60  1f8b0500  addli r22, r11, 0
002b64  5b010000  j 8
002b68  179bf500  or r22, r11, r15
002b6c  9788bc01  and r17, r25, r27
002b70  13091205  setlt.u r18, r4, r17
002b74  3b500900  bneq r18, zero, 20
002b78  9f8b0c00  addli r23, r25, 0
002b7c  93081e05  setlt.u r17, r28, r17
002b80  37d00800  beq r17, zero, 20
002b84  db040000  j 36
002b88  979bfc00  or r23, r25, r15
002b8c  93081e05  setlt.u r17, r28, r17
002b90  3be00800  bneq r17, zero, 24
002b94  9bc80c01  srli r17, r25, 16
002b98  9b881800  andi r17, r17, 1
002b9c  8b981c11  add.s r17, r25, r17
002ba0  8b980811  add.s r17, r17, r16
002ba4  978b5800  and r23, r17, r5
002ba8  9308ae05  setlt.u r17, r28, r26
002bac  37e00800  beq r17, zero, 24
002bb0  93058e05  setlt.u r11, r28, r24
002bb4  b7b00500  beq r11, zero, 44
002bb8  13036e04  setlt.u r6, r28, r6
002bbc  bb3c03fe  bneq r6, zero, -212
002bc0  db070000  j 60
002bc4  9bc80501  srli r17, r11, 16
002bc8  9b881800  andi r17, r17, 1
002bcc  8b951511  add.s r11, r11, r17
002bd0  8b950511  add.s r11, r11, r16
002bd4  178b5500  and r22, r11, r5
002bd8  93058e05  setlt.u r11, r28, r24
002bdc  3bff05fe  bneq r11, zero, -36
002be0  1bc40a01  srli r8, r21, 16
002be4  1b041400  andi r8, r8, 1
002be8  0b948a10  add.s r8, r21, r8
002bec  0b140411  add.s r8, r8, r16
002bf0  17045400  and r8, r8, r5
002bf4  13036e04  setlt.u r6, r28, r6
002bf8  bb4b03fe  bneq r6, zero, -272
002bfc  1b430501  srli r6, r10, 16
002c00  1b031300  andi r6, r6, 1
002c04  0b136510  add.s r6, r10, r6
002c08  0b130311  add.s r6, r6, r16
002c0c  17065300  and r12, r6, r5
002c10  5bdbffff  j -296
002c14  00360002  core_id r12
002c18  9f340000  addli r9, zero, 3
002c1c  00200100  mfence { sm }
002c20  3b066600  bneq r12, r6, 384
002c24  33010028  zext_int2long r[3:4], zero
002c28  73382fc8  store.d r[3:4], -880(r30)
002c2c  1f01e000  addli r2, zero, 112
002c30  3d000000  xfence
002c34  33040128  zext_int2long r[9:10], r2
002c38  00a00300  mfence { lm, sm, gm }
002c3c  db030000  j 28
002c40  6b510fc6  load.d r[3:4], -928(r30)
002c44  6b540fca  load.d r[9:10], -864(r30)
002c48  1f730000  addli r6, zero, 7
002c4c  13212404  setlt.ul r2, r[9:10], r[3:4]
002c50  27140400  addli.d r[9:10], r[9:10], 1
002c54  37050100  beq r2, zero, 320
002c58  73308fca  store.d r[9:10], -864(r30)
002c5c  97396402  sll.d r[20:21], r[9:10], r6
002c60  eb540fc9  load.d r[10:11], -880(r30)
002c64  db040000  j 36
002c68  a7c40400  addli.d r[10:11], r[10:11], 4
002c6c  0b935311  add.s r6, r7, r21
002c70  93a1d402  setneq.d r3, r[10:11], r[14:15]
002c74  73668301  stores.w r24, 12(r6)
002c78  73648300  stores.w r8, 8(r6)
002c7c  73626301  stores.w r22, 4(r6)
002c80  73602300  stores.w r2, 0(r6)
002c84  b7fe01fe  beq r3, zero, -68
002c88  0ba13411  add.ul r[3:4], r[10:11], r[20:21]
002c8c  9b3a2100  slli r21, r2, 2
002c90  0b915011  add.s r2, r1, r21
002c94  6f46c100  loads.w r12, 12(r2)
002c98  ef4c0100  loads.w r25, 0(r2)
002c9c  ef454100  loads.w r11, 4(r2)
002ca0  ef4b8100  loads.w r23, 8(r2)
002ca4  1703b601  and r6, r12, r27
002ca8  13016204  setlt.u r2, r4, r6
002cac  3b300100  bneq r2, zero, 12
002cb0  1f0c0600  addli r24, r12, 0
002cb4  5b010000  j 8
002cb8  171cf600  or r24, r12, r15
002cbc  178dbb01  and r26, r23, r27
002cc0  1301a205  setlt.u r2, r4, r26
002cc4  3b300100  bneq r2, zero, 12
002cc8  1f840b00  addli r8, r23, 0
002ccc  5b010000  j 8
002cd0  1794fb00  or r8, r23, r15
002cd4  9781b501  and r3, r11, r27
002cd8  13013204  setlt.u r2, r4, r3
002cdc  3b300100  bneq r2, zero, 12
002ce0  1f8b0500  addli r22, r11, 0
002ce4  5b010000  j 8
002ce8  179bf500  or r22, r11, r15
002cec  9788bc01  and r17, r25, r27
002cf0  13011205  setlt.u r2, r4, r17
002cf4  3b500100  bneq r2, zero, 20
002cf8  1f810c00  addli r2, r25, 0
002cfc  93081e05  setlt.u r17, r28, r17
002d00  37d00800  beq r17, zero, 20
002d04  db040000  j 36
002d08  1791fc00  or r2, r25, r15
002d0c  93081e05  setlt.u r17, r28, r17
002d10  3be00800  bneq r17, zero, 24
002d14  1bc10c01  srli r2, r25, 16
002d18  1b011100  andi r2, r2, 1
002d1c  0b912c10  add.s r2, r25, r2
002d20  0b110111  add.s r2, r2, r16
002d24  17015100  and r2, r2, r5
002d28  93013e04  setlt.u r3, r28, r3
002d2c  37e00100  beq r3, zero, 24
002d30  9301ae05  setlt.u r3, r28, r26
002d34  b7b00100  beq r3, zero, 44
002d38  93016e04  setlt.u r3, r28, r6
002d3c  bbbc01fe  bneq r3, zero, -212
002d40  db070000  j 60
002d44  9bc10501  srli r3, r11, 16
002d48  9b811100  andi r3, r3, 1
002d4c  8b913510  add.s r3, r11, r3
002d50  8b910111  add.s r3, r3, r16
002d54  178b5100  and r22, r3, r5
002d58  9301ae05  setlt.u r3, r28, r26
002d5c  3bff01fe  bneq r3, zero, -36
002d60  9bc10b01  srli r3, r23, 16
002d64  9b811100  andi r3, r3, 1
002d68  8b913b10  add.s r3, r23, r3
002d6c  8b910111  add.s r3, r3, r16
002d70  17845100  and r8, r3, r5
002d74  93016e04  setlt.u r3, r28, r6
002d78  bbcb01fe  bneq r3, zero, -272
002d7c  9b410601  srli r3, r12, 16
002d80  9b811100  andi r3, r3, 1
002d84  8b113610  add.s r3, r12, r3
002d88  8b910111  add.s r3, r3, r16
002d8c  178c5100  and r24, r3, r5
002d90  5bdbffff  j -296
002d94  00360002  core_id r12
002d98  9f340000  addli r9, zero, 3
002d9c  00200100  mfence { sm }
002da0  9f70f001  addli r1, zero, 255
002da4  9f3a0000  addli r21, zero, 3
002da8  1f750000  addli r10, zero, 7
002dac  80a20004  csr_set csr5, r1
002db0  00e00200  sync_core
002db4  b70a96ec  beq r12, r9, -9568
002db8  9f500000  addli r1, zero, 5
002dbc  3b511600  bneq r12, r1, 84
002dc0  9f401000  addli r1, zero, 12
002dc4  9f210000  addli r3, zero, 2
002dc8  7d900000  xwait r1, 0
002dcc  9f100000  addli r1, zero, 1
002dd0  1d800100  lock zero, r3
002dd4  8d000014  ew_cfg r1, zero, zero, 10
002dd8  ab00803f  lui r1, 260096
002ddc  0d000002  ew_cfg zero, zero, zero, 1
002de0  8d100000  ewcoeff_cfg r1, zero, zero, 0
002de4  eb500fc0  load.d r[2:3], -1024(r30)
002de8  0d000104  ew_cfg zero, r2, zero, 2
002dec  9f400000  addli r1, zero, 4
002df0  8d000006  ew_cfg r1, zero, zero, 3
002df4  8d800026  ew_cfg r1, r1, zero, 19
002df8  9f501000  addli r1, zero, 13
002dfc  ad837300  dsmadd r7, r7, r7, 0
002e00  0d000014  ew_cfg zero, zero, zero, 10
002e04  0d000026  ew_cfg zero, zero, zero, 19
002e08  1d900100  unlock r3
002e0c  db4afbff  j -9644
002e10  3b5906ec  bneq r12, zero, -9644
002e14  e3402ff8  loadli.w r1,  -1004(r30)
002e18  eb588fc9  load.d r[18:19], -872(r30)
002e1c  6b548fc1  load.d r[9:10], -1000(r30)
002e20  9f212000  addli r3, zero, 18
002e24  eb5b8f01  load.d r[24:25], 24(r30)
002e28  1f1b0000  addli r22, zero, 1
002e2c  9f550000  addli r11, zero, 5
002e30  b3900028  sext_int2long r[2:3], r1
002e34  17343402  sll.d r[9:10], r[9:10], r3
002e38  9f511000  addli r3, zero, 13
002e3c  8bb91041  min.sl r[20:21], r[2:3], r[18:19]
002e40  eb588fc2  load.d r[18:19], -984(r30)
002e44  0ba48b10  add.ul r[9:10], r[24:25], r[9:10]
002e48  7d900100  xwait r3, 0
002e4c  1d800500  lock zero, r11
002e50  9b910304  ori r3, r7, 64
002e54  9f038000  addli r7, zero, 64
002e58  150b0b00  dma_cfg r22, r22, zero, 0
002e5c  15000b02  dma_cfg zero, r22, zero, 1
002e60  a7890901  addli.d r[20:21], r[20:21], 128
002e64  97b86803  sll.d r[18:19], r[18:19], r22
002e68  8bb91948  max.sl r[20:21], r[20:21], r[2:3]
002e6c  0b241411  add.ul r[9:10], r[9:10], r[18:19]
002e70  8bb01918  sub.sl r[2:3], r[20:21], r[2:3]
002e74  95040004  dma_cfg r9, zero, zero, 2
002e78  15847106  dma_cfg r8, r3, r7, 3
002e7c  8bb0d040  min.sl r[2:3], r[2:3], r[14:15]
002e80  6b540fc2  load.d r[9:10], -992(r30)
002e84  9f713400  addli r3, r8, 31
002e88  1b331400  slli r6, r8, 1
002e8c  1f040001  addli r8, zero, 128
002e90  9bc15100  srli r3, r3, 5
002e94  95033408  dma_cfg r7, r8, r3, 4
002e98  9b01e303  andi r3, r6, 62
002e9c  1f030004  addli r6, zero, 512
002ea0  9f030010  addli r7, zero, 2048
002ea4  9503130a  dma_cfg r7, r6, r1, 5
002ea8  9f601000  addli r1, zero, 14
002eac  15003010  dma_cfg zero, zero, r3, 8
002eb0  35000000  dma_run zero
002eb4  1500600b  dma_cfg zero, zero, r22, 5
002eb8  15000010  dma_cfg zero, zero, zero, 8
002ebc  1d900500  unlock r11
002ec0  5b34fbff  j -9824
002ec4  7d000000  xsignal zero, 0
002ec8  bb600600  bneq r12, zero, 56
002ecc  9f200000  addli r1, zero, 2
002ed0  7d100000  xwait zero, 0
002ed4  7d100000  xwait zero, 0
002ed8  7d100000  xwait zero, 0
002edc  7d100000  xwait zero, 0
002ee0  7d100000  xwait zero, 0
002ee4  7d100000  xwait zero, 0
002ee8  7d100000  xwait zero, 0
002eec  7d100000  xwait zero, 0
002ef0  1d800000  lock zero, r1
002ef4  0d000020  ew_cfg zero, zero, zero, 16
002ef8  1d900000  unlock r1
002efc  7d400000  xsignal_mode_cfg zero
002f00  9f8e0e08  addli sp, sp, 1024
002f04  00a00300  mfence { lm, sm, gm }
002f08  00100000  exit
002f0c  00100000  exit
002f10  00100000  exit
002f14  00100000  exit
002f18  00100000  exit
002f1c  00100000  exit
002f20  00100000  exit
002f24  00100000  exit
002f28  00100000  exit
002f2c  00100000  exit
002f30  00100000  exit
002f34  00100000  exit
002f38  00100000  exit
002f3c  00100000  exit
002f40  00100000  exit
002f44  00100000  exit
002f48  00100000  exit
002f4c  00100000  exit
002f50  00100000  exit
002f54  00100000  exit
002f58  00100000  exit
002f5c  00100000  exit
002f60  00100000  exit
002f64  00100000  exit
002f68  00100000  exit
002f6c  00100000  exit
002f70  00100000  exit
002f74  00100000  exit
002f78  00100000  exit
002f7c  00100000  exit
002f80  00100000  exit
002f84  00100000  exit
002f88  00100000  exit
002f8c  00100000  exit
002f90  00100000  exit
002f94  00100000  exit
002f98  00100000  exit
002f9c  00100000  exit
002fa0  00100000  exit
002fa4  00100000  exit
002fa8  00100000  exit
002fac  00100000  exit
002fb0  00100000  exit
002fb4  00100000  exit
002fb8  00100000  exit
002fbc  00100000  exit
002fc0  00100000  exit
002fc4  00100000  exit
002fc8  00100000  exit
002fcc  00100000  exit
002fd0  00100000  exit
002fd4  00100000  exit
002fd8  00100000  exit
002fdc  00100000  exit
002fe0  00100000  exit
002fe4  00100000  exit
002fe8  00100000  exit
002fec  00100000  exit
002ff0  00100000  exit
002ff4  00100000  exit
002ff8  00100000  exit
002ffc  00100000  exit
003000  00100000  exit
003004  00100000  exit
003008  00100000  exit
00300c  00100000  exit
003010  00100000  exit
003014  00100000  exit
003018  00100000  exit
00301c  00100000  exit
003020  00100000  exit
003024  00100000  exit
003028  00100000  exit
00302c  00100000  exit
003030  00100000  exit
003034  00100000  exit
003038  00100000  exit
00303c  00100000  exit
003040  00100000  exit
003044  00100000  exit
003048  00100000  exit
00304c  00100000  exit
003050  00100000  exit
003054  00100000  exit
003058  00100000  exit
00305c  00100000  exit
003060  00100000  exit
003064  00100000  exit
003068  00100000  exit
00306c  00100000  exit
003070  00100000  exit
003074  00100000  exit
003078  00100000  exit
00307c  00100000  exit
003080  00100000  exit
003084  00100000  exit
003088  00100000  exit
00308c  00100000  exit
003090  00100000  exit
003094  00100000  exit
003098  00100000  exit
00309c  00100000  exit
0030a0  00100000  exit
0030a4  00100000  exit
0030a8  00100000  exit
0030ac  00100000  exit
0030b0  00100000  exit
0030b4  00100000  exit
0030b8  00100000  exit
0030bc  00100000  exit
0030c0  00100000  exit
0030c4  00100000  exit
0030c8  00100000  exit
0030cc  00100000  exit
0030d0  00100000  exit
0030d4  00100000  exit
0030d8  00100000  exit
0030dc  00100000  exit
0030e0  00100000  exit
0030e4  00100000  exit
0030e8  00100000  exit
0030ec  00100000  exit
0030f0  00100000  exit
0030f4  00100000  exit
0030f8  00100000  exit
0030fc  00100000  exit
003100  00100000  exit
003104  00100000  exit
003108  00100000  exit
00310c  00100000  exit
003110  00100000  exit
003114  00100000  exit
003118  00100000  exit
00311c  00100000  exit
003120  00100000  exit
003124  00100000  exit
003128  00100000  exit
00312c  00100000  exit
003130  00100000  exit
003134  00100000  exit
003138  00100000  exit
00313c  00100000  exit
003140  00100000  exit
003144  00100000  exit
003148  00100000  exit
