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
00005c  9f097000  addli r19, zero, 56
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
0000b4  9f8ecef9  addli sp, sp, -800
0000b8  1f110000  addli r2, zero, 1
0000bc  00370002  core_id r14
0000c0  1f8fce05  addli r30, sp, 736
0000c4  7d400100  xsignal_mode_cfg r2
0000c8  37600700  beq r14, zero, 24
0000cc  2bf1ffff  lui r2, 1048575
0000d0  1b11f1ff  ori r2, r2, 4095
0000d4  80210104  csr_set csr3, r2
0000d8  00d00100  sync_group
0000dc  5b570000  j 696
0000e0  9f210000  addli r3, zero, 2
0000e4  7d510100  uni_sram_cfg r2, r2
0000e8  2bf2ffff  lui r4, 1048575
0000ec  1d800100  lock zero, r3
0000f0  0d010020  ew_cfg r2, zero, zero, 16
0000f4  1b11f2ff  ori r2, r4, 4095
0000f8  1d900100  unlock r3
0000fc  9f511000  addli r3, zero, 13
000100  80210104  csr_set csr3, r2
000104  00d00100  sync_group
000108  1f610000  addli r2, zero, 6
00010c  7d800100  xsignal r3, 0
000110  9f410000  addli r3, zero, 4
000114  7d000100  xsignal r2, 0
000118  7d000100  xsignal r2, 0
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
0001dc  7d000100  xsignal r2, 0
0001e0  7d000100  xsignal r2, 0
0001e4  7d000100  xsignal r2, 0
0001e8  7d000100  xsignal r2, 0
0001ec  7d000100  xsignal r2, 0
0001f0  7d000100  xsignal r2, 0
0001f4  7d000100  xsignal r2, 0
0001f8  7d000100  xsignal r2, 0
0001fc  7d000100  xsignal r2, 0
000200  7d000100  xsignal r2, 0
000204  7d000100  xsignal r2, 0
000208  7d000100  xsignal r2, 0
00020c  7d000100  xsignal r2, 0
000210  7d000100  xsignal r2, 0
000214  7d000100  xsignal r2, 0
000218  7d000100  xsignal r2, 0
00021c  7d000100  xsignal r2, 0
000220  7d000100  xsignal r2, 0
000224  7d000100  xsignal r2, 0
000228  7d000100  xsignal r2, 0
00022c  7d000100  xsignal r2, 0
000230  7d000100  xsignal r2, 0
000234  7d000100  xsignal r2, 0
000238  7d000100  xsignal r2, 0
00023c  7d000100  xsignal r2, 0
000240  7d000100  xsignal r2, 0
000244  7d000100  xsignal r2, 0
000248  7d000100  xsignal r2, 0
00024c  7d000100  xsignal r2, 0
000250  7d000100  xsignal r2, 0
000254  7d000100  xsignal r2, 0
000258  7d000100  xsignal r2, 0
00025c  7d000100  xsignal r2, 0
000260  7d000100  xsignal r2, 0
000264  7d000100  xsignal r2, 0
000268  7d000100  xsignal r2, 0
00026c  7d000100  xsignal r2, 0
000270  7d000100  xsignal r2, 0
000274  7d000100  xsignal r2, 0
000278  7d000100  xsignal r2, 0
00027c  7d000100  xsignal r2, 0
000280  7d000100  xsignal r2, 0
000284  7d000100  xsignal r2, 0
000288  7d000100  xsignal r2, 0
00028c  7d000100  xsignal r2, 0
000290  7d000100  xsignal r2, 0
000294  1f311000  addli r2, zero, 11
000298  7d800100  xsignal r3, 0
00029c  7d800100  xsignal r3, 0
0002a0  7d800100  xsignal r3, 0
0002a4  7d800100  xsignal r3, 0
0002a8  7d800100  xsignal r3, 0
0002ac  7d800100  xsignal r3, 0
0002b0  7d800100  xsignal r3, 0
0002b4  7d800100  xsignal r3, 0
0002b8  7d800100  xsignal r3, 0
0002bc  7d800100  xsignal r3, 0
0002c0  7d800100  xsignal r3, 0
0002c4  7d800100  xsignal r3, 0
0002c8  7d800100  xsignal r3, 0
0002cc  7d800100  xsignal r3, 0
0002d0  7d800100  xsignal r3, 0
0002d4  7d800100  xsignal r3, 0
0002d8  7d800100  xsignal r3, 0
0002dc  7d800100  xsignal r3, 0
0002e0  7d800100  xsignal r3, 0
0002e4  9f111000  addli r3, zero, 9
0002e8  7d000100  xsignal r2, 0
0002ec  7d000100  xsignal r2, 0
0002f0  7d000100  xsignal r2, 0
0002f4  7d000100  xsignal r2, 0
0002f8  7d000100  xsignal r2, 0
0002fc  7d000100  xsignal r2, 0
000300  7d000100  xsignal r2, 0
000304  7d000100  xsignal r2, 0
000308  7d000100  xsignal r2, 0
00030c  7d000100  xsignal r2, 0
000310  7d000100  xsignal r2, 0
000314  7d000100  xsignal r2, 0
000318  7d000100  xsignal r2, 0
00031c  7d000100  xsignal r2, 0
000320  7d000100  xsignal r2, 0
000324  7d000100  xsignal r2, 0
000328  7d000100  xsignal r2, 0
00032c  7d000100  xsignal r2, 0
000330  7d000100  xsignal r2, 0
000334  7d000100  xsignal r2, 0
000338  1f012000  addli r2, zero, 16
00033c  7d800100  xsignal r3, 0
000340  7d800100  xsignal r3, 0
000344  7d800100  xsignal r3, 0
000348  7d800100  xsignal r3, 0
00034c  7d800100  xsignal r3, 0
000350  7d800100  xsignal r3, 0
000354  7d800100  xsignal r3, 0
000358  7d800100  xsignal r3, 0
00035c  7d800100  xsignal r3, 0
000360  7d800100  xsignal r3, 0
000364  7d800100  xsignal r3, 0
000368  7d800100  xsignal r3, 0
00036c  7d800100  xsignal r3, 0
000370  7d800100  xsignal r3, 0
000374  7d800100  xsignal r3, 0
000378  7d800100  xsignal r3, 0
00037c  7d800100  xsignal r3, 0
000380  7d800100  xsignal r3, 0
000384  7d800100  xsignal r3, 0
000388  9f312000  addli r3, zero, 19
00038c  7d000100  xsignal r2, 0
000390  7d800100  xsignal r3, 0
000394  63415f00  loadli.w r2,  44(r30)
000398  e3016f00  loadli.w r3,  48(r30)
00039c  00d20002  load_param_i r4, 1
0003a0  e3426f00  loadli.w r5,  52(r30)
0003a4  80530002  load_param_i r7, 0
0003a8  2bf3ffff  lui r6, 1048575
0003ac  670b0ffe  storeli.w zero, -80(r30)
0003b0  e7450ffe  storeli.w zero, -164(r30)
0003b4  e7400ffe  storeli.w zero, -244(r30)
0003b8  e7080ffa  storeli.w zero, -632(r30)
0003bc  0b912120  mul.s r2, r3, r2
0003c0  9f010200  addli r3, r4, 0
0003c4  8b115150  fmac.s r3, r2, r5
0003c8  8b125120  mul.s r5, r2, r5
0003cc  9ff1f1ff  addli r3, r3, -1
0003d0  8b914130  div.s r3, r3, r4
0003d4  1b12f3ff  ori r4, r6, 4095
0003d8  674b4ffe  storeli.w r4, -76(r30)
0003dc  e70b4ffe  storeli.w r4, -72(r30)
0003e0  e74b4ffe  storeli.w r4, -68(r30)
0003e4  670c4ffe  storeli.w r4, -64(r30)
0003e8  674c4ffe  storeli.w r4, -60(r30)
0003ec  e70c4ffe  storeli.w r4, -56(r30)
0003f0  e74c4ffe  storeli.w r4, -52(r30)
0003f4  670d4ffe  storeli.w r4, -48(r30)
0003f8  674d4ffe  storeli.w r4, -44(r30)
0003fc  e70d4ffe  storeli.w r4, -40(r30)
000400  e74d4ffe  storeli.w r4, -36(r30)
000404  670e4ffe  storeli.w r4, -32(r30)
000408  674e4ffe  storeli.w r4, -28(r30)
00040c  e70e4ffe  storeli.w r4, -24(r30)
000410  e74e4ffe  storeli.w r4, -20(r30)
000414  670f4ffe  storeli.w r4, -16(r30)
000418  674f4ffe  storeli.w r4, -12(r30)
00041c  e70f4ffe  storeli.w r4, -8(r30)
000420  e74f4ffe  storeli.w r4, -4(r30)
000424  67064ffe  storeli.w r4, -160(r30)
000428  67464ffe  storeli.w r4, -156(r30)
00042c  e7064ffe  storeli.w r4, -152(r30)
000430  e7464ffe  storeli.w r4, -148(r30)
000434  67074ffe  storeli.w r4, -144(r30)
000438  67474ffe  storeli.w r4, -140(r30)
00043c  e7074ffe  storeli.w r4, -136(r30)
000440  e7474ffe  storeli.w r4, -132(r30)
000444  67084ffe  storeli.w r4, -128(r30)
000448  67484ffe  storeli.w r4, -124(r30)
00044c  e7084ffe  storeli.w r4, -120(r30)
000450  e7484ffe  storeli.w r4, -116(r30)
000454  67094ffe  storeli.w r4, -112(r30)
000458  67494ffe  storeli.w r4, -108(r30)
00045c  e7094ffe  storeli.w r4, -104(r30)
000460  e7494ffe  storeli.w r4, -100(r30)
000464  670a4ffe  storeli.w r4, -96(r30)
000468  674a4ffe  storeli.w r4, -92(r30)
00046c  e70a4ffe  storeli.w r4, -88(r30)
000470  e74a4ffe  storeli.w r4, -84(r30)
000474  67014ffe  storeli.w r4, -240(r30)
000478  67414ffe  storeli.w r4, -236(r30)
00047c  e7014ffe  storeli.w r4, -232(r30)
000480  e7414ffe  storeli.w r4, -228(r30)
000484  67024ffe  storeli.w r4, -224(r30)
000488  67424ffe  storeli.w r4, -220(r30)
00048c  e7024ffe  storeli.w r4, -216(r30)
000490  e7424ffe  storeli.w r4, -212(r30)
000494  67034ffe  storeli.w r4, -208(r30)
000498  67434ffe  storeli.w r4, -204(r30)
00049c  e7034ffe  storeli.w r4, -200(r30)
0004a0  e7434ffe  storeli.w r4, -196(r30)
0004a4  67044ffe  storeli.w r4, -192(r30)
0004a8  67444ffe  storeli.w r4, -188(r30)
0004ac  e7044ffe  storeli.w r4, -184(r30)
0004b0  e7444ffe  storeli.w r4, -180(r30)
0004b4  67054ffe  storeli.w r4, -176(r30)
0004b8  67454ffe  storeli.w r4, -172(r30)
0004bc  e7054ffe  storeli.w r4, -168(r30)
0004c0  e7484ffa  storeli.w r4, -628(r30)
0004c4  67094ffa  storeli.w r4, -624(r30)
0004c8  67494ffa  storeli.w r4, -620(r30)
0004cc  e7094ffa  storeli.w r4, -616(r30)
0004d0  e7494ffa  storeli.w r4, -612(r30)
0004d4  670a4ffa  storeli.w r4, -608(r30)
0004d8  674a4ffa  storeli.w r4, -604(r30)
0004dc  e70a4ffa  storeli.w r4, -600(r30)
0004e0  e74a4ffa  storeli.w r4, -596(r30)
0004e4  670b4ffa  storeli.w r4, -592(r30)
0004e8  674b4ffa  storeli.w r4, -588(r30)
0004ec  e70b4ffa  storeli.w r4, -584(r30)
0004f0  e74b4ffa  storeli.w r4, -580(r30)
0004f4  670c4ffa  storeli.w r4, -576(r30)
0004f8  674c4ffa  storeli.w r4, -572(r30)
0004fc  e70c4ffa  storeli.w r4, -568(r30)
000500  e74c4ffa  storeli.w r4, -564(r30)
000504  670d4ffa  storeli.w r4, -560(r30)
000508  674d4ffa  storeli.w r4, -556(r30)
00050c  e70d4ffa  storeli.w r4, -552(r30)
000510  e74d4ffa  storeli.w r4, -548(r30)
000514  670e4ffa  storeli.w r4, -544(r30)
000518  674e4ffa  storeli.w r4, -540(r30)
00051c  e70e4ffa  storeli.w r4, -536(r30)
000520  e74e4ffa  storeli.w r4, -532(r30)
000524  670f4ffa  storeli.w r4, -528(r30)
000528  674f4ffa  storeli.w r4, -524(r30)
00052c  e70f4ffa  storeli.w r4, -520(r30)
000530  e74f4ffa  storeli.w r4, -516(r30)
000534  67004ffc  storeli.w r4, -512(r30)
000538  67404ffc  storeli.w r4, -508(r30)
00053c  e7004ffc  storeli.w r4, -504(r30)
000540  e7404ffc  storeli.w r4, -500(r30)
000544  67014ffc  storeli.w r4, -496(r30)
000548  67414ffc  storeli.w r4, -492(r30)
00054c  e7014ffc  storeli.w r4, -488(r30)
000550  e7414ffc  storeli.w r4, -484(r30)
000554  67024ffc  storeli.w r4, -480(r30)
000558  67424ffc  storeli.w r4, -476(r30)
00055c  e7024ffc  storeli.w r4, -472(r30)
000560  e7424ffc  storeli.w r4, -468(r30)
000564  67034ffc  storeli.w r4, -464(r30)
000568  67434ffc  storeli.w r4, -460(r30)
00056c  e7034ffc  storeli.w r4, -456(r30)
000570  e7434ffc  storeli.w r4, -452(r30)
000574  67044ffc  storeli.w r4, -448(r30)
000578  67444ffc  storeli.w r4, -444(r30)
00057c  e7044ffc  storeli.w r4, -440(r30)
000580  e7444ffc  storeli.w r4, -436(r30)
000584  67054ffc  storeli.w r4, -432(r30)
000588  67454ffc  storeli.w r4, -428(r30)
00058c  e7054ffc  storeli.w r4, -424(r30)
000590  e7454ffc  storeli.w r4, -420(r30)
000594  67064ffc  storeli.w r4, -416(r30)
000598  67464ffc  storeli.w r4, -412(r30)
00059c  e7064ffc  storeli.w r4, -408(r30)
0005a0  e7464ffc  storeli.w r4, -404(r30)
0005a4  67074ffc  storeli.w r4, -400(r30)
0005a8  67474ffc  storeli.w r4, -396(r30)
0005ac  e7074ffc  storeli.w r4, -392(r30)
0005b0  e7474ffc  storeli.w r4, -388(r30)
0005b4  67084ffc  storeli.w r4, -384(r30)
0005b8  67484ffc  storeli.w r4, -380(r30)
0005bc  e7084ffc  storeli.w r4, -376(r30)
0005c0  e7484ffc  storeli.w r4, -372(r30)
0005c4  67094ffc  storeli.w r4, -368(r30)
0005c8  67494ffc  storeli.w r4, -364(r30)
0005cc  e7094ffc  storeli.w r4, -360(r30)
0005d0  e7494ffc  storeli.w r4, -356(r30)
0005d4  670a4ffc  storeli.w r4, -352(r30)
0005d8  674a4ffc  storeli.w r4, -348(r30)
0005dc  e70a4ffc  storeli.w r4, -344(r30)
0005e0  e74a4ffc  storeli.w r4, -340(r30)
0005e4  670b4ffc  storeli.w r4, -336(r30)
0005e8  674b4ffc  storeli.w r4, -332(r30)
0005ec  e70b4ffc  storeli.w r4, -328(r30)
0005f0  e74b4ffc  storeli.w r4, -324(r30)
0005f4  670c4ffc  storeli.w r4, -320(r30)
0005f8  674c4ffc  storeli.w r4, -316(r30)
0005fc  e70c4ffc  storeli.w r4, -312(r30)
000600  e74c4ffc  storeli.w r4, -308(r30)
000604  670d4ffc  storeli.w r4, -304(r30)
000608  674d4ffc  storeli.w r4, -300(r30)
00060c  e70d4ffc  storeli.w r4, -296(r30)
000610  e74d4ffc  storeli.w r4, -292(r30)
000614  670e4ffc  storeli.w r4, -288(r30)
000618  674e4ffc  storeli.w r4, -284(r30)
00061c  e70e4ffc  storeli.w r4, -280(r30)
000620  e74e4ffc  storeli.w r4, -276(r30)
000624  670f4ffc  storeli.w r4, -272(r30)
000628  674f4ffc  storeli.w r4, -268(r30)
00062c  e70f4ffc  storeli.w r4, -264(r30)
000630  e74f4ffc  storeli.w r4, -260(r30)
000634  67004ffe  storeli.w r4, -256(r30)
000638  67404ffe  storeli.w r4, -252(r30)
00063c  e7004ffe  storeli.w r4, -248(r30)
000640  0b917120  mul.s r2, r3, r7
000644  8b917150  fmac.s r3, r3, r7
000648  8b915140  min.s r3, r3, r5
00064c  4bd72102  ble.s r3, r2, 1492
000650  e3024f00  loadli.w r5,  32(r30)
000654  63035f00  loadli.w r6,  40(r30)
000658  b3930128  sext_int2long r[8:9], r3
00065c  b3150128  sext_int2long r[12:13], r2
000660  63424f00  loadli.w r4,  36(r30)
000664  e3441ffe  loadli.w r9,  -244(r30)
000668  63051ffb  loadli.w r10,  -632(r30)
00066c  9f400000  addli r1, zero, 4
000670  9f1b0000  addli r23, zero, 1
000674  9f3c2000  addli r25, zero, 19
000678  1f2e0000  addli r28, zero, 2
00067c  1f0c2000  addli r24, zero, 16
000680  73387fd2  store.d r[8:9], -720(r30)
000684  e3036fff  loadli.w r7,  -80(r30)
000688  6344bffe  loadli.w r8,  -164(r30)
00068c  33910228  sext_int2long r[3:4], r5
000690  9f020010  addli r5, zero, 2048
000694  73342fd2  store.d r[3:4], -728(r30)
000698  1b311300  slli r2, r6, 1
00069c  67462ffa  storeli.w r2, -668(r30)
0006a0  33110228  sext_int2long r[3:4], r4
0006a4  73302fd8  store.d r[3:4], -640(r30)
0006a8  1b311200  slli r2, r4, 1
0006ac  b3110328  sext_int2long r[4:5], r6
0006b0  67472ffa  storeli.w r2, -652(r30)
0006b4  1f018000  addli r2, zero, 64
0006b8  73303fd2  store.d r[4:5], -736(r30)
0006bc  5b040000  j 32
0006c0  9f411000  addli r3, zero, 12
0006c4  7d800100  xsignal r3, 0
0006c8  eb558fd5  load.d r[12:13], -680(r30)
0006cc  eb510fd3  load.d r[4:5], -720(r30)
0006d0  a7950500  addli.d r[12:13], r[12:13], 1
0006d4  93b13504  setlt.sl r3, r[12:13], r[4:5]
0006d8  37950102  beq r3, zero, 1348
0006dc  3b301700  bneq r14, r1, 12
0006e0  9f511000  addli r3, zero, 13
0006e4  7d900100  xwait r3, 0
0006e8  e3416f00  loadli.w r3,  52(r30)
0006ec  63026f00  loadli.w r4,  48(r30)
0006f0  733cbfd4  store.d r[12:13], -680(r30)
0006f4  8b913530  div.s r3, r11, r3
0006f8  1f030200  addli r6, r4, 0
0006fc  0b926130  div.s r4, r3, r6
000700  8b916138  mod.s r3, r3, r6
000704  1b336200  slli r6, r4, 6
000708  b3150228  sext_int2long r[12:13], r4
00070c  1bb29100  slli r4, r3, 9
000710  b3970128  sext_int2long r[16:17], r3
000714  9f610000  addli r3, zero, 6
000718  97b83502  sll.d r[18:19], r[12:13], r3
00071c  9f111000  addli r3, zero, 9
000720  b31a0228  sext_int2long r[22:23], r4
000724  e7436ffa  storeli.w r6, -708(r30)
000728  97b53702  sll.d r[12:13], r[16:17], r3
00072c  9f71f003  addli r3, zero, 511
000730  73301fd5  store.d r[18:19], -704(r30)
000734  73345fd5  store.d r[22:23], -696(r30)
000738  b3810128  zext_int2long r[4:5], r3
00073c  17bd7503  sll.d r[27:28], r[12:13], r23
000740  733c3fd6  store.d r[4:5], -648(r30)
000744  e3015f00  loadli.w r3,  40(r30)
000748  7338afd5  store.d r[27:28], -688(r30)
00074c  bfdb7101  blt.s r3, r23, 756
000750  eb550fd2  load.d r[12:13], -736(r30)
000754  b3110328  sext_int2long r[4:5], r6
000758  a7890a04  addli.d r[20:21], r[22:23], 512
00075c  9f060000  addli r13, zero, 0
000760  00370002  core_id r14
000764  1f030000  addli r6, zero, 0
000768  a7878100  addli.d r[16:17], r[4:5], 64
00076c  8bb8b820  mul.sl r[18:19], r[18:19], r[12:13]
000770  eb558fd2  load.d r[12:13], -728(r30)
000774  8bb7b740  min.sl r[16:17], r[16:17], r[12:13]
000778  eb550fd8  load.d r[12:13], -640(r30)
00077c  8bb73748  max.sl r[16:17], r[16:17], r[4:5]
000780  8bb5b940  min.sl r[12:13], r[20:21], r[12:13]
000784  8bb93718  sub.sl r[20:21], r[16:17], r[4:5]
000788  eb518f00  load.d r[4:5], 8(r30)
00078c  eb570f00  load.d r[16:17], 0(r30)
000790  0bada111  add.ul r[27:28], r[4:5], r[27:28]
000794  8bb15549  max.sl r[4:5], r[12:13], r[22:23]
000798  97b57803  sll.d r[12:13], r[18:19], r23
00079c  8bb15119  sub.sl r[4:5], r[4:5], r[22:23]
0007a0  8ba5b710  add.ul r[12:13], r[16:17], r[12:13]
0007a4  9bba1100  slli r21, r3, 1
0007a8  7334bfd6  store.d r[12:13], -664(r30)
0007ac  5b0e0000  j 112
0007b0  eb550fd8  load.d r[12:13], -640(r30)
0007b4  9f770000  addli r15, zero, 7
0007b8  7d800700  xsignal r15, 0
0007bc  7d900700  xwait r15, 0
0007c0  1d800000  lock zero, r1
0007c4  8b35b820  mul.sl r[12:13], r[17:18], r[12:13]
0007c8  958b0b00  dma_cfg r23, r23, zero, 0
0007cc  97b57503  sll.d r[12:13], r[12:13], r23
0007d0  8b25bd10  add.ul r[12:13], r[27:28], r[12:13]
0007d4  15000604  dma_cfg zero, r12, zero, 2
0007d8  15895507  dma_cfg r18, r11, r21, 3
0007dc  1f060008  addli r12, zero, 1024
0007e0  e345effa  loadli.w r11,  -652(r30)
0007e4  15862508  dma_cfg r12, r11, r2, 4
0007e8  35000000  dma_run zero
0007ec  1d900000  unlock r1
0007f0  9f051000  addli r11, zero, 8
0007f4  7d800500  xsignal r11, 0
0007f8  e3055f00  loadli.w r11,  40(r30)
0007fc  1f150500  addli r10, r10, 1
000800  9f940400  addli r9, r9, 1
000804  1f140400  addli r8, r8, 1
000808  9f930300  addli r7, r7, 1
00080c  9f868600  addli r13, r13, 64
000810  1f130300  addli r6, r6, 1
000814  3fa0b600  blt.s r13, r11, 8
000818  5b450000  j 552
00081c  1f06c000  addli r12, zero, 96
000820  8b959439  mod.s r11, r9, r25
000824  33980628  sext_int2long r[17:18], r13
000828  0b16c538  mod.s r12, r10, r12
00082c  9bb5d500  slli r11, r11, 13
000830  9b37d600  slli r15, r12, 13
000834  2b060200  lui r12, 32
000838  0b99c510  add.s r18, r11, r12
00083c  3b017701  bneq r14, r23, 64
000840  9f757000  addli r11, zero, 63
000844  7d900000  xwait r1, 0
000848  b3850528  zext_int2long r[12:13], r11
00084c  93b53505  setlt.sl r11, r[12:13], r[20:21]
000850  bb900500  bneq r11, zero, 36
000854  1d000e00  lock zero, r28
000858  9f757000  addli r11, zero, 63
00085c  8d0b0002  ew_cfg r23, zero, zero, 1
000860  0d100000  ewcoeff_cfg zero, zero, zero, 0
000864  0d800504  ew_cfg zero, r11, zero, 2
000868  0d010006  ew_cfg r2, zero, zero, 3
00086c  4d390000  ssaux r18, 0
000870  1d100e00  unlock r28
000874  7d000e00  xsignal r28, 0
000878  5b150000  j 168
00087c  b721c701  beq r14, r28, 104
000880  9f650000  addli r11, zero, 6
000884  3b72b700  bneq r14, r11, 156
000888  9f800a00  addli r1, r21, 0
00088c  a78a0100  addli.d r[22:23], r[4:5], 0
000890  7d100e00  xwait r28, 0
000894  a7010d00  addli.d r[4:5], r[27:28], 0
000898  eb5c8fd6  load.d r[26:27], -664(r30)
00089c  97357803  sll.d r[12:13], r[17:18], r23
0008a0  8ba5bc10  add.ul r[12:13], r[26:27], r[12:13]
0008a4  278d0100  addli.d r[27:28], r[4:5], 0
0008a8  a7810a00  addli.d r[4:5], r[22:23], 0
0008ac  9f8a0000  addli r21, r1, 0
0008b0  9f400000  addli r1, zero, 4
0008b4  9f0c0001  addli r25, zero, 128
0008b8  1d800000  lock zero, r1
0008bc  958b0b00  dma_cfg r23, r23, zero, 0
0008c0  15000604  dma_cfg zero, r12, zero, 2
0008c4  15899507  dma_cfg r18, r11, r25, 3
0008c8  e345cffa  loadli.w r11,  -668(r30)
0008cc  958c3509  dma_cfg r25, r11, r19, 4
0008d0  35000000  dma_run zero
0008d4  9f3c2000  addli r25, zero, 19
0008d8  1d900000  unlock r1
0008dc  9f350000  addli r11, zero, 3
0008e0  db070000  j 60
0008e4  1f360000  addli r12, zero, 3
0008e8  9f650000  addli r11, zero, 6
0008ec  7d100600  xwait r12, 0
0008f0  7d900500  xwait r11, 0
0008f4  b7800900  beq r19, zero, 32
0008f8  1d000000  lock zero, zero
0008fc  01060000  ds_cfg r12, zero, 0
000900  01010002  ds_cfg r2, zero, 1
000904  0101001c  ds_cfg r2, zero, 14
000908  8109001a  ds_cfg r19, zero, 13
00090c  a1172902  shuffle_batch r15, r18, r2, 1
000910  1d100000  unlock zero
000914  9f550000  addli r11, zero, 5
000918  7d800000  xsignal r1, 0
00091c  7d800500  xsignal r11, 0
000920  8b959339  mod.s r11, r7, r25
000924  2b660400  lui r12, 70
000928  9bb50501  slli r11, r11, 16
00092c  0b99c510  add.s r18, r11, r12
000930  bb707701  bneq r14, r23, 60
000934  eb558fd7  load.d r[12:13], -648(r30)
000938  93b53504  setlt.sl r11, r[12:13], r[4:5]
00093c  1f161000  addli r12, zero, 9
000940  7d100600  xwait r12, 0
000944  bbb905fe  bneq r11, zero, -404
000948  1d000e00  lock zero, r28
00094c  9f75f003  addli r11, zero, 511
000950  8d0b0002  ew_cfg r23, zero, zero, 1
000954  0d100000  ewcoeff_cfg zero, zero, zero, 0
000958  0d800504  ew_cfg zero, r11, zero, 2
00095c  0d010006  ew_cfg r2, zero, zero, 3
000960  4d390000  ssaux r18, 0
000964  1d100e00  unlock r28
000968  5bc9ffff  j -440
00096c  9f452000  addli r11, zero, 20
000970  8b15b438  mod.s r11, r8, r11
000974  1bb80501  slli r16, r11, 16
000978  9f750000  addli r11, zero, 7
00097c  3b21b700  bneq r14, r11, 72
000980  9f051000  addli r11, zero, 8
000984  7d900500  xwait r11, 0
000988  9f351000  addli r11, zero, 11
00098c  7d900500  xwait r11, 0
000990  9f350000  addli r11, zero, 3
000994  1d000000  lock zero, zero
000998  81050000  ds_cfg r11, zero, 0
00099c  9f050004  addli r11, zero, 512
0009a0  81050002  ds_cfg r11, zero, 1
0009a4  0101001c  ds_cfg r2, zero, 14
0009a8  8105001a  ds_cfg r11, zero, 13
0009ac  9f151000  addli r11, zero, 9
0009b0  41082904  shuffle_coa r16, r18, r2, 2
0009b4  1d100000  unlock zero
0009b8  7d800500  xsignal r11, 0
0009bc  9f251000  addli r11, zero, 10
0009c0  dbc6ffff  j -460
0009c4  bb5817fe  bneq r14, r1, -460
0009c8  9f550000  addli r11, zero, 5
0009cc  7d900500  xwait r11, 0
0009d0  9f251000  addli r11, zero, 10
0009d4  7d900500  xwait r11, 0
0009d8  b7400300  beq r6, zero, 48
0009dc  37d10900  beq r19, zero, 84
0009e0  9f080000  addli r17, zero, 0
0009e4  1d800b00  lock zero, r23
0009e8  09013101  mm_cfg r2, r2, r19, 0
0009ec  090e7c05  mm_cfg r28, r24, r23, 2
0009f0  a998070b  mm_acc r17, r15, r16, 5
0009f4  9f880802  addli r17, r17, 256
0009f8  1f080840  addli r16, r16, 8192
0009fc  1d900b00  unlock r23
000a00  bb9f58fe  bneq r17, r5, -28
000a04  db050000  j 44
000a08  b7a00900  beq r19, zero, 40
000a0c  9f080000  addli r17, zero, 0
000a10  1d800b00  lock zero, r23
000a14  09013101  mm_cfg r2, r2, r19, 0
000a18  090e7c05  mm_cfg r28, r24, r23, 2
000a1c  a988070b  mm r17, r15, r16, 5
000a20  9f880802  addli r17, r17, 256
000a24  1f080840  addli r16, r16, 8192
000a28  1d900b00  unlock r23
000a2c  bb9f58fe  bneq r17, r5, -28
000a30  9f650000  addli r11, zero, 6
000a34  7d800500  xsignal r11, 0
000a38  9f351000  addli r11, zero, 11
000a3c  5bb7ffff  j -584
000a40  370217fe  beq r14, r1, -896
000a44  eb578fd4  load.d r[16:17], -696(r30)
000a48  eb550fd8  load.d r[12:13], -640(r30)
000a4c  ab661700  lui r13, 374
000a50  a7810704  addli.d r[4:5], r[16:17], 512
000a54  8bb1b140  min.sl r[4:5], r[4:5], r[12:13]
000a58  8bb1f148  max.sl r[4:5], r[4:5], r[16:17]
000a5c  8bb7f118  sub.sl r[16:17], r[4:5], r[16:17]
000a60  9f610000  addli r3, zero, 6
000a64  37113700  beq r14, r3, 68
000a68  6b5d0fd5  load.d r[27:28], -688(r30)
000a6c  bb617701  bneq r14, r23, 120
000a70  eb518fd7  load.d r[4:5], -648(r30)
000a74  7d100c00  xwait r24, 0
000a78  93b1f104  setlt.sl r3, r[4:5], r[16:17]
000a7c  bb900100  bneq r3, zero, 36
000a80  1d000e00  lock zero, r28
000a84  9f71f003  addli r3, zero, 511
000a88  8d0b0002  ew_cfg r23, zero, zero, 1
000a8c  0d100000  ewcoeff_cfg zero, zero, zero, 0
000a90  0d800104  ew_cfg zero, r3, zero, 2
000a94  8d0b0006  ew_cfg r23, zero, zero, 3
000a98  cd360000  ssaux r13, 0
000a9c  1d100e00  unlock r28
000aa0  9f611000  addli r3, zero, 14
000aa4  5b84ffff  j -992
000aa8  eb510f01  load.d r[4:5], 16(r30)
000aac  eb550fd5  load.d r[12:13], -688(r30)
000ab0  1f631000  addli r6, zero, 14
000ab4  7d100300  xwait r6, 0
000ab8  1d800000  lock zero, r1
000abc  1bb31700  slli r6, r15, 1
000ac0  8ba1b110  add.ul r[4:5], r[4:5], r[12:13]
000ac4  958b0b00  dma_cfg r23, r23, zero, 0
000ac8  15000204  dma_cfg zero, r4, zero, 2
000acc  95866106  dma_cfg r13, r3, r6, 3
000ad0  9f711000  addli r3, zero, 15
000ad4  15037309  dma_cfg r6, r6, r23, 4
000ad8  35000000  dma_run zero
000adc  1d900000  unlock r1
000ae0  db7cffff  j -1052
000ae4  9b910640  ori r3, r13, 1024
000ae8  b7210700  beq r14, zero, 104
000aec  eb558fd5  load.d r[12:13], -680(r30)
000af0  1f520000  addli r4, zero, 5
000af4  ab070100  lui r15, 16
000af8  3b5f47fc  bneq r14, r4, -1068
000afc  1f731000  addli r6, zero, 15
000b00  1f020000  addli r4, zero, 0
000b04  7d100300  xwait r6, 0
000b08  1f132000  addli r6, zero, 17
000b0c  7d100300  xwait r6, 0
000b10  1d000e00  lock zero, r28
000b14  1f030078  addli r6, zero, 15360
000b18  8d0b0002  ew_cfg r23, zero, zero, 1
000b1c  0d130300  ewcoeff_cfg r6, r6, zero, 0
000b20  1f73f003  addli r6, zero, 511
000b24  0d000304  ew_cfg zero, r6, zero, 2
000b28  8d0b0006  ew_cfg r23, zero, zero, 3
000b2c  0b133210  add.s r6, r4, r3
000b30  1f020208  addli r4, r4, 1024
000b34  2d03d300  dsmadd r6, r6, r13, 0
000b38  bb5ff2fe  bneq r4, r15, -12
000b3c  9f212000  addli r3, zero, 18
000b40  1d100e00  unlock r28
000b44  7d000c00  xsignal r24, 0
000b48  7d800100  xsignal r3, 0
000b4c  5b70ffff  j -1152
000b50  1f421000  addli r4, zero, 12
000b54  9f560000  addli r13, zero, 5
000b58  1f030008  addli r6, zero, 1024
000b5c  7d100200  xwait r4, 0
000b60  7d900c00  xwait r25, 0
000b64  1d800600  lock zero, r13
000b68  1f020004  addli r4, zero, 512
000b6c  950b0000  dma_cfg r23, zero, zero, 0
000b70  958b0b02  dma_cfg r23, r23, zero, 1
000b74  b3050228  zext_int2long r[12:13], r4
000b78  15000004  dma_cfg zero, zero, zero, 2
000b7c  95015006  dma_cfg r3, zero, r5, 3
000b80  8bbab740  min.sl r[22:23], r[16:17], r[12:13]
000b84  15832208  dma_cfg r6, r5, r2, 4
000b88  35000000  dma_run zero
000b8c  1d900600  unlock r13
000b90  63427ffa  loadli.w r4,  -708(r30)
000b94  b3180228  sext_int2long r[18:19], r4
000b98  1f521000  addli r4, zero, 13
000b9c  7d000200  xsignal r4, 0
000ba0  eb598fd2  load.d r[20:21], -728(r30)
000ba4  a7878800  addli.d r[16:17], r[18:19], 64
000ba8  1f122000  addli r4, zero, 17
000bac  7d000200  xsignal r4, 0
000bb0  eb550fd4  load.d r[12:13], -704(r30)
000bb4  1f222000  addli r4, zero, 18
000bb8  8bb73741  min.sl r[16:17], r[16:17], r[20:21]
000bbc  eb590fd8  load.d r[20:21], -640(r30)
000bc0  7d100200  xwait r4, 0
000bc4  1d800600  lock zero, r13
000bc8  1bb21a00  slli r4, r21, 1
000bcc  8bb71749  max.sl r[16:17], r[16:17], r[18:19]
000bd0  958b0b00  dma_cfg r23, r23, zero, 0
000bd4  8bb93521  mul.sl r[20:21], r[12:13], r[20:21]
000bd8  a7050d00  addli.d r[12:13], r[27:28], 0
000bdc  6b5d8f01  load.d r[27:28], 24(r30)
000be0  15800b02  dma_cfg zero, r23, zero, 1
000be4  8bb71719  sub.sl r[16:17], r[16:17], r[18:19]
000be8  97b87903  sll.d r[18:19], r[20:21], r23
000bec  b3090128  zext_int2long r[20:21], r2
000bf0  8b281d11  add.ul r[18:19], r[27:28], r[18:19]
000bf4  8bb73741  min.sl r[16:17], r[16:17], r[20:21]
000bf8  8ba8b810  add.ul r[18:19], r[18:19], r[12:13]
000bfc  15090004  dma_cfg r18, zero, zero, 2
000c00  95884106  dma_cfg r17, r3, r4, 3
000c04  e341effa  loadli.w r3,  -652(r30)
000c08  9501f308  dma_cfg r3, r6, r15, 4
000c0c  35000000  dma_run zero
000c10  1d900600  unlock r13
000c14  7d800c00  xsignal r25, 0
000c18  5b56ffff  j -1360
000c1c  e708affa  storeli.w r10, -632(r30)
000c20  7d000000  xsignal zero, 0
000c24  bb600700  bneq r14, zero, 56
000c28  9f200000  addli r1, zero, 2
000c2c  7d100000  xwait zero, 0
000c30  7d100000  xwait zero, 0
000c34  7d100000  xwait zero, 0
000c38  7d100000  xwait zero, 0
000c3c  7d100000  xwait zero, 0
000c40  7d100000  xwait zero, 0
000c44  7d100000  xwait zero, 0
000c48  7d100000  xwait zero, 0
000c4c  1d800000  lock zero, r1
000c50  0d000020  ew_cfg zero, zero, zero, 16
000c54  1d900000  unlock r1
000c58  7d400000  xsignal_mode_cfg zero
000c5c  9f8ece05  addli sp, sp, 736
000c60  00a00300  mfence { lm, sm, gm }
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
000e00  00100000  exit
000e04  00100000  exit
000e08  00100000  exit
000e0c  00100000  exit
000e10  00100000  exit
000e14  00100000  exit
000e18  00100000  exit
000e1c  00100000  exit
000e20  00100000  exit
000e24  00100000  exit
000e28  00100000  exit
000e2c  00100000  exit
000e30  00100000  exit
000e34  00100000  exit
000e38  00100000  exit
000e3c  00100000  exit
000e40  00100000  exit
000e44  00100000  exit
000e48  00100000  exit
000e4c  00100000  exit
000e50  00100000  exit
000e54  00100000  exit
000e58  00100000  exit
000e5c  00100000  exit
000e60  00100000  exit
000e64  00100000  exit
000e68  00100000  exit
000e6c  00100000  exit
000e70  00100000  exit
000e74  00100000  exit
000e78  00100000  exit
000e7c  00100000  exit
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
