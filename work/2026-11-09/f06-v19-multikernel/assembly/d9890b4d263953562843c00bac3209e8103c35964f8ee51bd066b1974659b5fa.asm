; SHA-256 d9890b4d263953562843c00bac3209e8103c35964f8ee51bd066b1974659b5fa
; P800 SDNN · XTDK LLVM 19 · 1153 / 1153 words decoded
; bound names: mm_act
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
0000b4  9f8edef9  addli sp, sp, -792
0000b8  9f100000  addli r1, zero, 1
0000bc  80360002  core_id r13
0000c0  1f8fbe05  addli r30, sp, 728
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00600  beq r13, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  db550000  j 684
0000e0  1f210000  addli r2, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  abf1ffff  lui r3, 1048575
0000ec  1d000100  lock zero, r2
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b90f1ff  ori r1, r3, 4095
0000f8  1d100100  unlock r2
0000fc  1f711000  addli r2, zero, 15
000100  80a10004  csr_set csr3, r1
000104  00d00100  sync_group
000108  9f600000  addli r1, zero, 6
00010c  7d000100  xsignal r2, 0
000110  1f410000  addli r2, zero, 4
000114  7d800000  xsignal r1, 0
000118  7d800000  xsignal r1, 0
00011c  7d800000  xsignal r1, 0
000120  7d800000  xsignal r1, 0
000124  7d800000  xsignal r1, 0
000128  7d800000  xsignal r1, 0
00012c  7d800000  xsignal r1, 0
000130  7d800000  xsignal r1, 0
000134  7d800000  xsignal r1, 0
000138  7d800000  xsignal r1, 0
00013c  7d800000  xsignal r1, 0
000140  7d800000  xsignal r1, 0
000144  7d800000  xsignal r1, 0
000148  7d800000  xsignal r1, 0
00014c  7d800000  xsignal r1, 0
000150  7d800000  xsignal r1, 0
000154  7d800000  xsignal r1, 0
000158  7d800000  xsignal r1, 0
00015c  7d800000  xsignal r1, 0
000160  7d800000  xsignal r1, 0
000164  7d800000  xsignal r1, 0
000168  7d800000  xsignal r1, 0
00016c  7d800000  xsignal r1, 0
000170  7d800000  xsignal r1, 0
000174  7d800000  xsignal r1, 0
000178  7d800000  xsignal r1, 0
00017c  7d800000  xsignal r1, 0
000180  7d800000  xsignal r1, 0
000184  7d800000  xsignal r1, 0
000188  7d800000  xsignal r1, 0
00018c  7d800000  xsignal r1, 0
000190  7d800000  xsignal r1, 0
000194  7d800000  xsignal r1, 0
000198  7d800000  xsignal r1, 0
00019c  7d800000  xsignal r1, 0
0001a0  7d800000  xsignal r1, 0
0001a4  7d800000  xsignal r1, 0
0001a8  7d800000  xsignal r1, 0
0001ac  7d800000  xsignal r1, 0
0001b0  7d800000  xsignal r1, 0
0001b4  7d800000  xsignal r1, 0
0001b8  7d800000  xsignal r1, 0
0001bc  7d800000  xsignal r1, 0
0001c0  7d800000  xsignal r1, 0
0001c4  7d800000  xsignal r1, 0
0001c8  7d800000  xsignal r1, 0
0001cc  7d800000  xsignal r1, 0
0001d0  7d800000  xsignal r1, 0
0001d4  7d800000  xsignal r1, 0
0001d8  7d800000  xsignal r1, 0
0001dc  7d800000  xsignal r1, 0
0001e0  7d800000  xsignal r1, 0
0001e4  7d800000  xsignal r1, 0
0001e8  7d800000  xsignal r1, 0
0001ec  7d800000  xsignal r1, 0
0001f0  7d800000  xsignal r1, 0
0001f4  7d800000  xsignal r1, 0
0001f8  7d800000  xsignal r1, 0
0001fc  7d800000  xsignal r1, 0
000200  7d800000  xsignal r1, 0
000204  7d800000  xsignal r1, 0
000208  7d800000  xsignal r1, 0
00020c  7d800000  xsignal r1, 0
000210  7d800000  xsignal r1, 0
000214  7d800000  xsignal r1, 0
000218  7d800000  xsignal r1, 0
00021c  7d800000  xsignal r1, 0
000220  7d800000  xsignal r1, 0
000224  7d800000  xsignal r1, 0
000228  7d800000  xsignal r1, 0
00022c  7d800000  xsignal r1, 0
000230  7d800000  xsignal r1, 0
000234  7d800000  xsignal r1, 0
000238  7d800000  xsignal r1, 0
00023c  7d800000  xsignal r1, 0
000240  7d800000  xsignal r1, 0
000244  7d800000  xsignal r1, 0
000248  7d800000  xsignal r1, 0
00024c  7d800000  xsignal r1, 0
000250  7d800000  xsignal r1, 0
000254  7d800000  xsignal r1, 0
000258  7d800000  xsignal r1, 0
00025c  7d800000  xsignal r1, 0
000260  7d800000  xsignal r1, 0
000264  7d800000  xsignal r1, 0
000268  7d800000  xsignal r1, 0
00026c  7d800000  xsignal r1, 0
000270  7d800000  xsignal r1, 0
000274  7d800000  xsignal r1, 0
000278  7d800000  xsignal r1, 0
00027c  7d800000  xsignal r1, 0
000280  7d800000  xsignal r1, 0
000284  7d800000  xsignal r1, 0
000288  7d800000  xsignal r1, 0
00028c  7d800000  xsignal r1, 0
000290  7d800000  xsignal r1, 0
000294  9f301000  addli r1, zero, 11
000298  7d000100  xsignal r2, 0
00029c  7d000100  xsignal r2, 0
0002a0  7d000100  xsignal r2, 0
0002a4  7d000100  xsignal r2, 0
0002a8  7d000100  xsignal r2, 0
0002ac  7d000100  xsignal r2, 0
0002b0  7d000100  xsignal r2, 0
0002b4  7d000100  xsignal r2, 0
0002b8  7d000100  xsignal r2, 0
0002bc  7d000100  xsignal r2, 0
0002c0  7d000100  xsignal r2, 0
0002c4  7d000100  xsignal r2, 0
0002c8  7d000100  xsignal r2, 0
0002cc  7d000100  xsignal r2, 0
0002d0  7d000100  xsignal r2, 0
0002d4  7d000100  xsignal r2, 0
0002d8  1f111000  addli r2, zero, 9
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
00032c  9f202000  addli r1, zero, 18
000330  7d000100  xsignal r2, 0
000334  7d000100  xsignal r2, 0
000338  7d000100  xsignal r2, 0
00033c  7d000100  xsignal r2, 0
000340  7d000100  xsignal r2, 0
000344  7d000100  xsignal r2, 0
000348  7d000100  xsignal r2, 0
00034c  7d000100  xsignal r2, 0
000350  7d000100  xsignal r2, 0
000354  7d000100  xsignal r2, 0
000358  7d000100  xsignal r2, 0
00035c  7d000100  xsignal r2, 0
000360  7d000100  xsignal r2, 0
000364  7d000100  xsignal r2, 0
000368  7d000100  xsignal r2, 0
00036c  1f512000  addli r2, zero, 21
000370  7d800000  xsignal r1, 0
000374  9f702000  addli r1, zero, 23
000378  7d000100  xsignal r2, 0
00037c  1f113000  addli r2, zero, 25
000380  7d800000  xsignal r1, 0
000384  7d000100  xsignal r2, 0
000388  e3405f00  loadli.w r1,  44(r30)
00038c  63016f00  loadli.w r2,  48(r30)
000390  00d20002  load_param_i r4, 1
000394  e3416f00  loadli.w r3,  52(r30)
000398  00530002  load_param_i r6, 0
00039c  abf2ffff  lui r5, 1048575
0003a0  670c0ffe  storeli.w zero, -64(r30)
0003a4  e7460ffe  storeli.w zero, -148(r30)
0003a8  e7020ffe  storeli.w zero, -216(r30)
0003ac  674a0ffa  storeli.w zero, -604(r30)
0003b0  8b101120  mul.s r1, r2, r1
0003b4  1f010200  addli r2, r4, 0
0003b8  0b913050  fmac.s r2, r1, r3
0003bc  8b913020  mul.s r3, r1, r3
0003c0  1f71f1ff  addli r2, r2, -1
0003c4  0b114130  div.s r2, r2, r4
0003c8  1b92f2ff  ori r4, r5, 4095
0003cc  674c4ffe  storeli.w r4, -60(r30)
0003d0  e70c4ffe  storeli.w r4, -56(r30)
0003d4  e74c4ffe  storeli.w r4, -52(r30)
0003d8  670d4ffe  storeli.w r4, -48(r30)
0003dc  674d4ffe  storeli.w r4, -44(r30)
0003e0  e70d4ffe  storeli.w r4, -40(r30)
0003e4  e74d4ffe  storeli.w r4, -36(r30)
0003e8  670e4ffe  storeli.w r4, -32(r30)
0003ec  674e4ffe  storeli.w r4, -28(r30)
0003f0  e70e4ffe  storeli.w r4, -24(r30)
0003f4  e74e4ffe  storeli.w r4, -20(r30)
0003f8  670f4ffe  storeli.w r4, -16(r30)
0003fc  674f4ffe  storeli.w r4, -12(r30)
000400  e70f4ffe  storeli.w r4, -8(r30)
000404  e74f4ffe  storeli.w r4, -4(r30)
000408  67074ffe  storeli.w r4, -144(r30)
00040c  67474ffe  storeli.w r4, -140(r30)
000410  e7074ffe  storeli.w r4, -136(r30)
000414  e7474ffe  storeli.w r4, -132(r30)
000418  67084ffe  storeli.w r4, -128(r30)
00041c  67484ffe  storeli.w r4, -124(r30)
000420  e7084ffe  storeli.w r4, -120(r30)
000424  e7484ffe  storeli.w r4, -116(r30)
000428  67094ffe  storeli.w r4, -112(r30)
00042c  67494ffe  storeli.w r4, -108(r30)
000430  e7094ffe  storeli.w r4, -104(r30)
000434  e7494ffe  storeli.w r4, -100(r30)
000438  670a4ffe  storeli.w r4, -96(r30)
00043c  674a4ffe  storeli.w r4, -92(r30)
000440  e70a4ffe  storeli.w r4, -88(r30)
000444  e74a4ffe  storeli.w r4, -84(r30)
000448  670b4ffe  storeli.w r4, -80(r30)
00044c  674b4ffe  storeli.w r4, -76(r30)
000450  e70b4ffe  storeli.w r4, -72(r30)
000454  e74b4ffe  storeli.w r4, -68(r30)
000458  e7424ffe  storeli.w r4, -212(r30)
00045c  67034ffe  storeli.w r4, -208(r30)
000460  67434ffe  storeli.w r4, -204(r30)
000464  e7034ffe  storeli.w r4, -200(r30)
000468  e7434ffe  storeli.w r4, -196(r30)
00046c  67044ffe  storeli.w r4, -192(r30)
000470  67444ffe  storeli.w r4, -188(r30)
000474  e7044ffe  storeli.w r4, -184(r30)
000478  e7444ffe  storeli.w r4, -180(r30)
00047c  67054ffe  storeli.w r4, -176(r30)
000480  67454ffe  storeli.w r4, -172(r30)
000484  e7054ffe  storeli.w r4, -168(r30)
000488  e7454ffe  storeli.w r4, -164(r30)
00048c  67064ffe  storeli.w r4, -160(r30)
000490  67464ffe  storeli.w r4, -156(r30)
000494  e7064ffe  storeli.w r4, -152(r30)
000498  e70a4ffa  storeli.w r4, -600(r30)
00049c  e74a4ffa  storeli.w r4, -596(r30)
0004a0  670b4ffa  storeli.w r4, -592(r30)
0004a4  674b4ffa  storeli.w r4, -588(r30)
0004a8  e70b4ffa  storeli.w r4, -584(r30)
0004ac  e74b4ffa  storeli.w r4, -580(r30)
0004b0  670c4ffa  storeli.w r4, -576(r30)
0004b4  674c4ffa  storeli.w r4, -572(r30)
0004b8  e70c4ffa  storeli.w r4, -568(r30)
0004bc  e74c4ffa  storeli.w r4, -564(r30)
0004c0  670d4ffa  storeli.w r4, -560(r30)
0004c4  674d4ffa  storeli.w r4, -556(r30)
0004c8  e70d4ffa  storeli.w r4, -552(r30)
0004cc  e74d4ffa  storeli.w r4, -548(r30)
0004d0  670e4ffa  storeli.w r4, -544(r30)
0004d4  674e4ffa  storeli.w r4, -540(r30)
0004d8  e70e4ffa  storeli.w r4, -536(r30)
0004dc  e74e4ffa  storeli.w r4, -532(r30)
0004e0  670f4ffa  storeli.w r4, -528(r30)
0004e4  674f4ffa  storeli.w r4, -524(r30)
0004e8  e70f4ffa  storeli.w r4, -520(r30)
0004ec  e74f4ffa  storeli.w r4, -516(r30)
0004f0  67004ffc  storeli.w r4, -512(r30)
0004f4  67404ffc  storeli.w r4, -508(r30)
0004f8  e7004ffc  storeli.w r4, -504(r30)
0004fc  e7404ffc  storeli.w r4, -500(r30)
000500  67014ffc  storeli.w r4, -496(r30)
000504  67414ffc  storeli.w r4, -492(r30)
000508  e7014ffc  storeli.w r4, -488(r30)
00050c  e7414ffc  storeli.w r4, -484(r30)
000510  67024ffc  storeli.w r4, -480(r30)
000514  67424ffc  storeli.w r4, -476(r30)
000518  e7024ffc  storeli.w r4, -472(r30)
00051c  e7424ffc  storeli.w r4, -468(r30)
000520  67034ffc  storeli.w r4, -464(r30)
000524  67434ffc  storeli.w r4, -460(r30)
000528  e7034ffc  storeli.w r4, -456(r30)
00052c  e7434ffc  storeli.w r4, -452(r30)
000530  67044ffc  storeli.w r4, -448(r30)
000534  67444ffc  storeli.w r4, -444(r30)
000538  e7044ffc  storeli.w r4, -440(r30)
00053c  e7444ffc  storeli.w r4, -436(r30)
000540  67054ffc  storeli.w r4, -432(r30)
000544  67454ffc  storeli.w r4, -428(r30)
000548  e7054ffc  storeli.w r4, -424(r30)
00054c  e7454ffc  storeli.w r4, -420(r30)
000550  67064ffc  storeli.w r4, -416(r30)
000554  67464ffc  storeli.w r4, -412(r30)
000558  e7064ffc  storeli.w r4, -408(r30)
00055c  e7464ffc  storeli.w r4, -404(r30)
000560  67074ffc  storeli.w r4, -400(r30)
000564  67474ffc  storeli.w r4, -396(r30)
000568  e7074ffc  storeli.w r4, -392(r30)
00056c  e7474ffc  storeli.w r4, -388(r30)
000570  67084ffc  storeli.w r4, -384(r30)
000574  67484ffc  storeli.w r4, -380(r30)
000578  e7084ffc  storeli.w r4, -376(r30)
00057c  e7484ffc  storeli.w r4, -372(r30)
000580  67094ffc  storeli.w r4, -368(r30)
000584  67494ffc  storeli.w r4, -364(r30)
000588  e7094ffc  storeli.w r4, -360(r30)
00058c  e7494ffc  storeli.w r4, -356(r30)
000590  670a4ffc  storeli.w r4, -352(r30)
000594  674a4ffc  storeli.w r4, -348(r30)
000598  e70a4ffc  storeli.w r4, -344(r30)
00059c  e74a4ffc  storeli.w r4, -340(r30)
0005a0  670b4ffc  storeli.w r4, -336(r30)
0005a4  674b4ffc  storeli.w r4, -332(r30)
0005a8  e70b4ffc  storeli.w r4, -328(r30)
0005ac  e74b4ffc  storeli.w r4, -324(r30)
0005b0  670c4ffc  storeli.w r4, -320(r30)
0005b4  674c4ffc  storeli.w r4, -316(r30)
0005b8  e70c4ffc  storeli.w r4, -312(r30)
0005bc  e74c4ffc  storeli.w r4, -308(r30)
0005c0  670d4ffc  storeli.w r4, -304(r30)
0005c4  674d4ffc  storeli.w r4, -300(r30)
0005c8  e70d4ffc  storeli.w r4, -296(r30)
0005cc  e74d4ffc  storeli.w r4, -292(r30)
0005d0  670e4ffc  storeli.w r4, -288(r30)
0005d4  674e4ffc  storeli.w r4, -284(r30)
0005d8  e70e4ffc  storeli.w r4, -280(r30)
0005dc  e74e4ffc  storeli.w r4, -276(r30)
0005e0  670f4ffc  storeli.w r4, -272(r30)
0005e4  674f4ffc  storeli.w r4, -268(r30)
0005e8  e70f4ffc  storeli.w r4, -264(r30)
0005ec  e74f4ffc  storeli.w r4, -260(r30)
0005f0  67004ffe  storeli.w r4, -256(r30)
0005f4  67404ffe  storeli.w r4, -252(r30)
0005f8  e7004ffe  storeli.w r4, -248(r30)
0005fc  e7404ffe  storeli.w r4, -244(r30)
000600  67014ffe  storeli.w r4, -240(r30)
000604  67414ffe  storeli.w r4, -236(r30)
000608  e7014ffe  storeli.w r4, -232(r30)
00060c  e7414ffe  storeli.w r4, -228(r30)
000610  67024ffe  storeli.w r4, -224(r30)
000614  67424ffe  storeli.w r4, -220(r30)
000618  8b106120  mul.s r1, r2, r6
00061c  0b116150  fmac.s r2, r2, r6
000620  8b113140  min.s r3, r2, r3
000624  4be51104  ble.s r3, r1, 2392
000628  e30b5f00  loadli.w r23,  40(r30)
00062c  63414f00  loadli.w r2,  36(r30)
000630  33970028  sext_int2long r[15:16], r1
000634  63024f00  loadli.w r4,  32(r30)
000638  b3920128  sext_int2long r[6:7], r3
00063c  e3048fff  loadli.w r9,  -64(r30)
000640  6345dffe  loadli.w r10,  -148(r30)
000644  e3055ffe  loadli.w r11,  -216(r30)
000648  63494ffb  loadli.w r18,  -604(r30)
00064c  9f0ac000  addli r21, zero, 96
000650  2b0c1300  lui r24, 304
000654  2b0a0100  lui r20, 16
000658  733c5fd2  store.d r[6:7], -712(r30)
00065c  9bb01b00  slli r1, r23, 1
000660  b3110228  sext_int2long r[4:5], r4
000664  e7461ffa  storeli.w r1, -660(r30)
000668  9b301100  slli r1, r2, 1
00066c  73383fd2  store.d r[4:5], -720(r30)
000670  b3110128  sext_int2long r[4:5], r2
000674  2b011400  lui r2, 320
000678  e7471ffa  storeli.w r1, -644(r30)
00067c  ab001600  lui r1, 352
000680  73343fd8  store.d r[4:5], -632(r30)
000684  9b900040  ori r1, r1, 1024
000688  e7491ffa  storeli.w r1, -612(r30)
00068c  9b100140  ori r1, r2, 1024
000690  670a1ffa  storeli.w r1, -608(r30)
000694  b3900b28  sext_int2long r[2:3], r23
000698  73341fd2  store.d r[2:3], -728(r30)
00069c  db030000  j 28
0006a0  9f401000  addli r1, zero, 12
0006a4  7d800000  xsignal r1, 0
0006a8  eb508fd3  load.d r[2:3], -712(r30)
0006ac  27170700  addli.d r[15:16], r[15:16], 1
0006b0  93301704  setlt.sl r1, r[15:16], r[2:3]
0006b4  37a30004  beq r1, zero, 2248
0006b8  1f0e8000  addli r28, zero, 64
0006bc  9f2c0000  addli r25, zero, 2
0006c0  9f630000  addli r7, zero, 6
0006c4  9f400000  addli r1, zero, 4
0006c8  3bb01600  bneq r13, r1, 12
0006cc  9f701000  addli r1, zero, 15
0006d0  7d900000  xwait r1, 0
0006d4  e3406f00  loadli.w r1,  52(r30)
0006d8  63016f00  loadli.w r2,  48(r30)
0006dc  8b101730  div.s r1, r14, r1
0006e0  9f010100  addli r3, r2, 0
0006e4  0b913030  div.s r2, r1, r3
0006e8  8b903038  mod.s r1, r1, r3
0006ec  9f71f003  addli r3, zero, 511
0006f0  b3810128  zext_int2long r[4:5], r3
0006f4  73303fd8  store.d r[4:5], -640(r30)
0006f8  1b366100  slli r12, r2, 6
0006fc  33110128  sext_int2long r[3:4], r2
000700  1bb29000  slli r4, r1, 9
000704  b3920028  sext_int2long r[6:7], r1
000708  9f101000  addli r1, zero, 9
00070c  97337102  sll.d r[8:9], r[3:4], r7
000710  97b01202  sll.d r[2:3], r[6:7], r1
000714  9f110000  addli r3, zero, 1
000718  331d0228  sext_int2long r[27:28], r4
00071c  6744cffa  storeli.w r12, -700(r30)
000720  17b23002  sll.d r[5:6], r[2:3], r3
000724  9f707000  addli r1, zero, 63
000728  73347fd4  store.d r[8:9], -696(r30)
00072c  7330afd7  store.d r[27:28], -672(r30)
000730  b3800028  zext_int2long r[2:3], r1
000734  73381fd8  store.d r[2:3], -624(r30)
000738  bfad3b00  blt.s r23, r3, 872
00073c  a7090200  addli.d r[20:21], r[5:6], 0
000740  eb528fd2  load.d r[6:7], -728(r30)
000744  b3100628  sext_int2long r[2:3], r12
000748  733cefd4  store.d r[15:16], -680(r30)
00074c  6b578fd8  load.d r[15:16], -632(r30)
000750  1f160000  addli r12, zero, 1
000754  9f080000  addli r17, zero, 0
000758  1f0b0000  addli r22, zero, 0
00075c  a7818000  addli.d r[4:5], r[2:3], 64
000760  73383fd5  store.d r[20:21], -688(r30)
000764  8bb25320  mul.sl r[6:7], r[8:9], r[6:7]
000768  eb530fd3  load.d r[8:9], -720(r30)
00076c  97b2c202  sll.d r[6:7], r[6:7], r12
000770  8bb17140  min.sl r[4:5], r[4:5], r[8:9]
000774  a7030d04  addli.d r[8:9], r[27:28], 512
000778  8bb11148  max.sl r[4:5], r[4:5], r[2:3]
00077c  8bb3e340  min.sl r[8:9], r[8:9], r[15:16]
000780  8bb11118  sub.sl r[4:5], r[4:5], r[2:3]
000784  eb508f00  load.d r[2:3], 8(r30)
000788  0ba73011  add.ul r[15:16], r[2:3], r[20:21]
00078c  8bb0a349  max.sl r[2:3], r[8:9], r[27:28]
000790  1f042000  addli r8, zero, 16
000794  0bbda019  sub.sl r[27:28], r[2:3], r[27:28]
000798  eb500f00  load.d r[2:3], 0(r30)
00079c  1b381d00  slli r16, r26, 1
0007a0  8ba05010  add.ul r[2:3], r[2:3], r[6:7]
0007a4  9f120000  addli r5, zero, 1
0007a8  1f630000  addli r6, zero, 6
0007ac  73381fd6  store.d r[2:3], -656(r30)
0007b0  db0f0000  j 124
0007b4  eb508fd8  load.d r[2:3], -632(r30)
0007b8  8bb01320  mul.sl r[2:3], r[8:9], r[2:3]
0007bc  9f730000  addli r7, zero, 7
0007c0  1f140000  addli r8, zero, 1
0007c4  97b08002  sll.d r[2:3], r[2:3], r8
0007c8  7d800300  xsignal r7, 0
0007cc  7d900300  xwait r7, 0
0007d0  9f430000  addli r7, zero, 4
0007d4  1d800300  lock zero, r7
0007d8  8b201710  add.ul r[2:3], r[15:16], r[2:3]
0007dc  15040400  dma_cfg r8, r8, zero, 0
0007e0  1f042000  addli r8, zero, 16
0007e4  15000104  dma_cfg zero, r2, zero, 2
0007e8  95820007  dma_cfg r5, r1, r16, 3
0007ec  9f000008  addli r1, zero, 1024
0007f0  9f120000  addli r5, zero, 1
0007f4  6341fffa  loadli.w r2,  -644(r30)
0007f8  9500c109  dma_cfg r1, r2, r28, 4
0007fc  9f001000  addli r1, zero, 8
000800  35000000  dma_run zero
000804  1d900300  unlock r7
000808  7d800000  xsignal r1, 0
00080c  1f190900  addli r18, r18, 1
000810  9f950500  addli r11, r11, 1
000814  1f150500  addli r10, r10, 1
000818  9f940400  addli r9, r9, 1
00081c  9f888800  addli r17, r17, 64
000820  1f1b0b00  addli r22, r22, 1
000824  3fa07801  blt.s r17, r23, 8
000828  5b4c0000  j 608
00082c  8b908538  mod.s r1, r11, r8
000830  0b115939  mod.s r2, r18, r21
000834  b3930828  sext_int2long r[8:9], r17
000838  1f160000  addli r12, zero, 1
00083c  1b3cd100  slli r24, r2, 13
000840  9bb0d000  slli r1, r1, 13
000844  2b010200  lui r2, 32
000848  0b912010  add.s r2, r1, r2
00084c  3ba15600  bneq r13, r5, 72
000850  eb590fd9  load.d r[20:21], -624(r30)
000854  9f420000  addli r5, zero, 4
000858  7d900200  xwait r5, 0
00085c  93b03904  setlt.sl r1, r[20:21], r[4:5]
000860  bbb00000  bneq r1, zero, 44
000864  9f220000  addli r5, zero, 2
000868  9f707000  addli r1, zero, 63
00086c  9f2c0000  addli r25, zero, 2
000870  1d800200  lock zero, r5
000874  0d060002  ew_cfg r12, zero, zero, 1
000878  0d100000  ewcoeff_cfg zero, zero, zero, 0
00087c  0d800004  ew_cfg zero, r1, zero, 2
000880  0d0e0006  ew_cfg r28, zero, zero, 3
000884  4d310000  ssaux r2, 0
000888  1d900200  unlock r5
00088c  7d800c00  xsignal r25, 0
000890  5b140000  j 160
000894  37e19601  beq r13, r25, 88
000898  3be26600  bneq r13, r6, 152
00089c  9f1a0000  addli r21, zero, 1
0008a0  7d900c00  xwait r25, 0
0008a4  eb590fd7  load.d r[20:21], -656(r30)
0008a8  9f400000  addli r1, zero, 4
0008ac  1f160000  addli r12, zero, 1
0008b0  97b25303  sll.d r[6:7], r[8:9], r21
0008b4  1d800000  lock zero, r1
0008b8  958a0a00  dma_cfg r21, r21, zero, 0
0008bc  9f0ac000  addli r21, zero, 96
0008c0  8ba25910  add.ul r[6:7], r[20:21], r[6:7]
0008c4  9f090001  addli r19, zero, 128
0008c8  15000304  dma_cfg zero, r6, zero, 2
0008cc  15813207  dma_cfg r2, r5, r19, 3
0008d0  1f630000  addli r6, zero, 6
0008d4  6341dffa  loadli.w r2,  -660(r30)
0008d8  95093108  dma_cfg r19, r2, r3, 4
0008dc  35000000  dma_run zero
0008e0  1d900000  unlock r1
0008e4  9f300000  addli r1, zero, 3
0008e8  db080000  j 68
0008ec  9f300000  addli r1, zero, 3
0008f0  7d900000  xwait r1, 0
0008f4  7d100300  xwait r6, 0
0008f8  b7a00100  beq r3, zero, 40
0008fc  1d000000  lock zero, zero
000900  1f0e8000  addli r28, zero, 64
000904  81000000  ds_cfg r1, zero, 0
000908  9f008000  addli r1, zero, 64
00090c  81000002  ds_cfg r1, zero, 1
000910  8100001c  ds_cfg r1, zero, 14
000914  8101001a  ds_cfg r3, zero, 13
000918  211c1102  shuffle_batch r24, r2, r1, 1
00091c  1d100000  unlock zero
000920  9f400000  addli r1, zero, 4
000924  7d800000  xsignal r1, 0
000928  9f500000  addli r1, zero, 5
00092c  7d800000  xsignal r1, 0
000930  9f701000  addli r1, zero, 15
000934  2b010400  lui r2, 64
000938  8b901438  mod.s r1, r9, r1
00093c  9bb00001  slli r1, r1, 16
000940  8b922010  add.s r5, r1, r2
000944  3b91c600  bneq r13, r12, 68
000948  eb500fd8  load.d r[2:3], -640(r30)
00094c  93b0a005  setlt.sl r1, r[2:3], r[27:28]
000950  1f111000  addli r2, zero, 9
000954  7d100100  xwait r2, 0
000958  3bf900fe  bneq r1, zero, -420
00095c  9f200000  addli r1, zero, 2
000960  1f71f003  addli r2, zero, 511
000964  9f2c0000  addli r25, zero, 2
000968  1d800000  lock zero, r1
00096c  0d060002  ew_cfg r12, zero, zero, 1
000970  0d100000  ewcoeff_cfg zero, zero, zero, 0
000974  0d000104  ew_cfg zero, r2, zero, 2
000978  0d0e0006  ew_cfg r28, zero, zero, 3
00097c  cd320000  ssaux r5, 0
000980  1d900000  unlock r1
000984  5bc6ffff  j -464
000988  9f402000  addli r1, zero, 20
00098c  8b101538  mod.s r1, r10, r1
000990  1bb10001  slli r2, r1, 16
000994  9f700000  addli r1, zero, 7
000998  3be11600  bneq r13, r1, 88
00099c  9f001000  addli r1, zero, 8
0009a0  9f030004  addli r7, zero, 512
0009a4  1f0e8000  addli r28, zero, 64
0009a8  1f042000  addli r8, zero, 16
0009ac  7d900000  xwait r1, 0
0009b0  9f301000  addli r1, zero, 11
0009b4  7d900000  xwait r1, 0
0009b8  9f300000  addli r1, zero, 3
0009bc  1d000000  lock zero, zero
0009c0  81000000  ds_cfg r1, zero, 0
0009c4  9f008000  addli r1, zero, 64
0009c8  81030002  ds_cfg r7, zero, 1
0009cc  8100001c  ds_cfg r1, zero, 14
0009d0  8103001a  ds_cfg r7, zero, 13
0009d4  41811204  shuffle_coa r2, r5, r1, 2
0009d8  9f101000  addli r1, zero, 9
0009dc  9f120000  addli r5, zero, 1
0009e0  1d100000  unlock zero
0009e4  7d800000  xsignal r1, 0
0009e8  9f201000  addli r1, zero, 10
0009ec  dbc3ffff  j -484
0009f0  9f400000  addli r1, zero, 4
0009f4  9f120000  addli r5, zero, 1
0009f8  1f042000  addli r8, zero, 16
0009fc  3bc816fe  bneq r13, r1, -496
000a00  9f500000  addli r1, zero, 5
000a04  9f230000  addli r7, zero, 2
000a08  1f068000  addli r12, zero, 64
000a0c  9f0c0010  addli r25, zero, 2048
000a10  7d900000  xwait r1, 0
000a14  9f201000  addli r1, zero, 10
000a18  7d900000  xwait r1, 0
000a1c  b7400b00  beq r22, zero, 48
000a20  37d10100  beq r3, zero, 84
000a24  9f000000  addli r1, zero, 0
000a28  1d800200  lock zero, r5
000a2c  09063600  mm_cfg r12, r12, r3, 0
000a30  89035404  mm_cfg r7, r8, r5, 2
000a34  a9102c0a  mm_acc r1, r24, r2, 5
000a38  9f800002  addli r1, r1, 256
000a3c  1f010140  addli r2, r2, 8192
000a40  1d900200  unlock r5
000a44  bb9f90ff  bneq r1, r25, -28
000a48  db050000  j 44
000a4c  b7a00100  beq r3, zero, 40
000a50  9f000000  addli r1, zero, 0
000a54  1d800200  lock zero, r5
000a58  09063600  mm_cfg r12, r12, r3, 0
000a5c  89035404  mm_cfg r7, r8, r5, 2
000a60  a9002c0a  mm r1, r24, r2, 5
000a64  9f800002  addli r1, r1, 256
000a68  1f010140  addli r2, r2, 8192
000a6c  1d900200  unlock r5
000a70  bb9f90ff  bneq r1, r25, -28
000a74  1f0e8000  addli r28, zero, 64
000a78  9f2c0000  addli r25, zero, 2
000a7c  9f301000  addli r1, zero, 11
000a80  7d000300  xsignal r6, 0
000a84  dbb0ffff  j -636
000a88  6b578fd5  load.d r[15:16], -680(r30)
000a8c  6b520fd5  load.d r[5:6], -688(r30)
000a90  2b0c1300  lui r24, 304
000a94  2b0a0100  lui r20, 16
000a98  674a2ffb  storeli.w r18, -604(r30)
000a9c  5b010000  j 8
000aa0  1f042000  addli r8, zero, 16
000aa4  6b510fd6  load.d r[3:4], -672(r30)
000aa8  9f400000  addli r1, zero, 4
000aac  1f088000  addli r16, zero, 64
000ab0  1f0b0010  addli r22, zero, 2048
000ab4  e702bffe  storeli.w r11, -216(r30)
000ab8  e746affe  storeli.w r10, -148(r30)
000abc  670c9ffe  storeli.w r9, -64(r30)
000ac0  b78f16fc  beq r13, r1, -1056
000ac4  a70d0200  addli.d r[28:29], r[5:6], 0
000ac8  a7020100  addli.d r[6:7], r[3:4], 0
000acc  eb518fd8  load.d r[4:5], -632(r30)
000ad0  9f130000  addli r7, zero, 1
000ad4  a7800204  addli.d r[2:3], r[6:7], 512
000ad8  8bb03040  min.sl r[2:3], r[2:3], r[4:5]
000adc  9f610000  addli r3, zero, 6
000ae0  8bb05048  max.sl r[2:3], r[2:3], r[6:7]
000ae4  8bb25018  sub.sl r[6:7], r[2:3], r[6:7]
000ae8  37b13600  beq r13, r3, 76
000aec  3ba27600  bneq r13, r7, 136
000af0  eb500fd8  load.d r[2:3], -640(r30)
000af4  9f210000  addli r3, zero, 2
000af8  93b05004  setlt.sl r1, r[2:3], r[6:7]
000afc  1f212000  addli r2, zero, 18
000b00  7d100100  xwait r2, 0
000b04  1f110000  addli r2, zero, 1
000b08  bb900000  bneq r1, zero, 36
000b0c  1d800100  lock zero, r3
000b10  9f70f003  addli r1, zero, 511
000b14  0d010002  ew_cfg r2, zero, zero, 1
000b18  0d100000  ewcoeff_cfg zero, zero, zero, 0
000b1c  0d800004  ew_cfg zero, r1, zero, 2
000b20  0d010006  ew_cfg r2, zero, zero, 3
000b24  4d3c0000  ssaux r24, 0
000b28  1d900100  unlock r3
000b2c  7d000400  xsignal r8, 0
000b30  5b6fffff  j -1160
000b34  eb500f01  load.d r[2:3], 16(r30)
000b38  1f420000  addli r4, zero, 4
000b3c  9f110000  addli r3, zero, 1
000b40  7d100400  xwait r8, 0
000b44  1d000200  lock zero, r4
000b48  8ba0b011  add.ul r[2:3], r[2:3], r[28:29]
000b4c  95810100  dma_cfg r3, r3, zero, 0
000b50  9bb11200  slli r3, r5, 1
000b54  9f120000  addli r5, zero, 1
000b58  15000104  dma_cfg zero, r2, zero, 2
000b5c  158c3006  dma_cfg r24, r1, r3, 3
000b60  9f102000  addli r1, zero, 17
000b64  95815108  dma_cfg r3, r3, r5, 4
000b68  35000000  dma_run zero
000b6c  1d100200  unlock r4
000b70  db66ffff  j -1228
000b74  9f000004  addli r1, zero, 512
000b78  6706affa  storeli.w r10, -672(r30)
000b7c  67079ffa  storeli.w r9, -656(r30)
000b80  1b110c40  ori r2, r24, 1024
000b84  b3840028  zext_int2long r[10:11], r1
000b88  37c30600  beq r13, zero, 208
000b8c  9f300000  addli r1, zero, 3
000b90  37c71600  beq r13, r1, 464
000b94  e304effa  loadli.w r9,  -656(r30)
000b98  6305cffa  loadli.w r10,  -672(r30)
000b9c  1f120000  addli r4, zero, 1
000ba0  9f220000  addli r5, zero, 2
000ba4  9f500000  addli r1, zero, 5
000ba8  3b8c16fc  bneq r13, r1, -1280
000bac  9f112000  addli r3, zero, 17
000bb0  9f000000  addli r1, zero, 0
000bb4  7d900100  xwait r3, 0
000bb8  9f312000  addli r3, zero, 19
000bbc  7d900100  xwait r3, 0
000bc0  1d800200  lock zero, r5
000bc4  9f010078  addli r3, zero, 15360
000bc8  0d020002  ew_cfg r4, zero, zero, 1
000bcc  8d910100  ewcoeff_cfg r3, r3, zero, 0
000bd0  9f71f003  addli r3, zero, 511
000bd4  0d800104  ew_cfg zero, r3, zero, 2
000bd8  0d020006  ew_cfg r4, zero, zero, 3
000bdc  8b912010  add.s r3, r1, r2
000be0  9f800008  addli r1, r1, 1024
000be4  ad818101  dsmadd r3, r3, r24, 0
000be8  bbdf40ff  bneq r1, r20, -12
000bec  1f212000  addli r2, zero, 18
000bf0  1d900200  unlock r5
000bf4  9f000000  addli r1, zero, 0
000bf8  ab010200  lui r3, 32
000bfc  7d000100  xsignal r2, 0
000c00  1f412000  addli r2, zero, 20
000c04  7d000100  xsignal r2, 0
000c08  1f511000  addli r2, zero, 13
000c0c  7d100100  xwait r2, 0
000c10  1f712000  addli r2, zero, 23
000c14  7d100100  xwait r2, 0
000c18  1d800200  lock zero, r5
000c1c  1f71f003  addli r2, zero, 511
000c20  0d000002  ew_cfg zero, zero, zero, 1
000c24  0d000104  ew_cfg zero, r2, zero, 2
000c28  0d020006  ew_cfg r4, zero, zero, 3
000c2c  0d100000  ewcoeff_cfg zero, zero, zero, 0
000c30  63024ffb  loadli.w r4,  -608(r30)
000c34  0b914010  add.s r2, r1, r4
000c38  2da11000  dscmpnsel r2, r1, r1, 0
000c3c  9f800010  addli r1, r1, 2048
000c40  bbdf30fe  bneq r1, r3, -12
000c44  9f601000  addli r1, zero, 14
000c48  1d900200  unlock r5
000c4c  7d800000  xsignal r1, 0
000c50  9f602000  addli r1, zero, 22
000c54  5b4affff  j -1456
000c58  9f401000  addli r1, zero, 12
000c5c  9f582000  addli r17, zero, 21
000c60  9f590000  addli r19, zero, 5
000c64  1f160000  addli r12, zero, 1
000c68  9f010008  addli r3, zero, 1024
000c6c  9f531000  addli r7, zero, 13
000c70  8bb49240  min.sl r[10:11], r[6:7], r[10:11]
000c74  7d900000  xwait r1, 0
000c78  7d900800  xwait r17, 0
000c7c  1d800900  lock zero, r19
000c80  9f302000  addli r1, zero, 19
000c84  15060000  dma_cfg r12, zero, zero, 0
000c88  15060602  dma_cfg r12, r12, zero, 1
000c8c  15000004  dma_cfg zero, zero, zero, 2
000c90  15016007  dma_cfg r2, zero, r22, 3
000c94  95010b09  dma_cfg r3, r22, r16, 4
000c98  35000000  dma_run zero
000c9c  1d900900  unlock r19
000ca0  7d800000  xsignal r1, 0
000ca4  9f402000  addli r1, zero, 20
000ca8  7d900000  xwait r1, 0
000cac  1d800900  lock zero, r19
000cb0  7d200000  xflush
000cb4  1d900900  unlock r19
000cb8  1d800900  lock zero, r19
000cbc  15000600  dma_cfg zero, r12, zero, 0
000cc0  15060602  dma_cfg r12, r12, zero, 1
000cc4  15000004  dma_cfg zero, zero, zero, 2
000cc8  15003106  dma_cfg zero, r2, r3, 3
000ccc  158b0109  dma_cfg r22, r3, r16, 4
000cd0  35000000  dma_run zero
000cd4  1d900900  unlock r19
000cd8  e3408ffa  loadli.w r1,  -700(r30)
000cdc  7d800300  xsignal r7, 0
000ce0  eb530fd3  load.d r[8:9], -720(r30)
000ce4  7d800800  xsignal r17, 0
000ce8  eb518fd4  load.d r[4:5], -696(r30)
000cec  b3900028  sext_int2long r[2:3], r1
000cf0  a7828000  addli.d r[6:7], r[2:3], 64
000cf4  8bb27240  min.sl r[6:7], r[6:7], r[8:9]
000cf8  eb538fd8  load.d r[8:9], -632(r30)
000cfc  8bb21248  max.sl r[6:7], r[6:7], r[2:3]
000d00  8bb37120  mul.sl r[8:9], r[4:5], r[8:9]
000d04  9bb12400  slli r3, r9, 2
000d08  8bb01218  sub.sl r[2:3], r[6:7], r[2:3]
000d0c  97b2c302  sll.d r[6:7], r[8:9], r12
000d10  b3030828  zext_int2long r[8:9], r16
000d14  6b588f01  load.d r[17:18], 24(r30)
000d18  8bb07040  min.sl r[2:3], r[2:3], r[8:9]
000d1c  9f033000  addli r7, zero, 24
000d20  8b225810  add.ul r[6:7], r[17:18], r[6:7]
000d24  7d900300  xwait r7, 0
000d28  1d800900  lock zero, r19
000d2c  15060000  dma_cfg r12, zero, zero, 0
000d30  8ba2b211  add.ul r[6:7], r[6:7], r[28:29]
000d34  15000602  dma_cfg zero, r12, zero, 1
000d38  15030004  dma_cfg r6, zero, zero, 2
000d3c  63423ffb  loadli.w r4,  -612(r30)
000d40  95023206  dma_cfg r5, r4, r3, 3
000d44  e341fffa  loadli.w r3,  -644(r30)
000d48  95011b08  dma_cfg r3, r22, r1, 4
000d4c  9f103000  addli r1, zero, 25
000d50  35000000  dma_run zero
000d54  1d900900  unlock r19
000d58  7d800000  xsignal r1, 0
000d5c  db420000  j 532
000d60  9f601000  addli r1, zero, 14
000d64  733cefd4  store.d r[15:16], -680(r30)
000d68  33010028  zext_int2long r[3:4], zero
000d6c  7d900000  xwait r1, 0
000d70  9f602000  addli r1, zero, 22
000d74  7d900000  xwait r1, 0
000d78  9f103000  addli r1, zero, 25
000d7c  7d900000  xwait r1, 0
000d80  3d000000  xfence
000d84  00a00300  mfence { lm, sm, gm }
000d88  63024ffb  loadli.w r4,  -608(r30)
000d8c  5b030000  j 24
000d90  eb500fd9  load.d r[2:3], -624(r30)
000d94  eb520fd8  load.d r[6:7], -640(r30)
000d98  93a01204  setlt.ul r1, r[6:7], r[2:3]
000d9c  27910200  addli.d r[3:4], r[6:7], 1
000da0  37f60000  beq r1, zero, 412
000da4  9f101000  addli r1, zero, 9
000da8  b3090028  zext_int2long r[20:21], zero
000dac  73302fd8  store.d r[3:4], -640(r30)
000db0  17381102  sll.d r[17:18], r[3:4], r1
000db4  5b070000  j 56
000db8  a7891900  addli.d r[20:21], r[20:21], 8
000dbc  63413ffb  loadli.w r2,  -612(r30)
000dc0  93a19902  setneq.d r3, r[20:21], r[10:11]
000dc4  0b112c10  add.s r2, r24, r2
000dc8  73669101  stores.w r25, 12(r2)
000dcc  73646100  stores.w r6, 8(r2)
000dd0  73621100  stores.w r1, 4(r2)
000dd4  73606101  stores.w r22, 0(r2)
000dd8  736ed100  stores.w r13, 28(r2)
000ddc  736ce100  stores.w r14, 24(r2)
000de0  736a8100  stores.w r8, 20(r2)
000de4  73685100  stores.w r5, 16(r2)
000de8  b7ae01fe  beq r3, zero, -88
000dec  8ba00911  add.ul r[2:3], r[20:21], r[17:18]
000df0  1bbc2000  slli r24, r1, 2
000df4  6f4b0c00  loads.w r22, 0(r24)
000df8  0b1e4c10  add.s r28, r24, r4
000dfc  6f41cc00  loads.w r2, 12(r24)
000e00  6f468c00  loads.w r12, 8(r24)
000e04  ef4d4c00  loads.w r27, 4(r24)
000e08  6f4dcc01  loads.w r26, 28(r24)
000e0c  ef4a8c01  loads.w r21, 24(r24)
000e10  ef474c01  loads.w r15, 20(r24)
000e14  ef430c01  loads.w r7, 16(r24)
000e18  ef4cce00  loads.w r25, 12(r28)
000e1c  6f438e00  loads.w r6, 8(r28)
000e20  ef404e00  loads.w r1, 4(r28)
000e24  ef46ce01  loads.w r13, 28(r28)
000e28  6f478e01  loads.w r14, 24(r28)
000e2c  6f444e01  loads.w r8, 20(r28)
000e30  ef420e01  loads.w r5, 16(r28)
000e34  9b3b9b00  slli r23, r22, 9
000e38  9b417b01  srli r3, r22, 23
000e3c  938b0b00  seteq r23, r23, zero
000e40  9b81f10f  andi r3, r3, 255
000e44  9bf1f10f  setlti r3, r3, 255
000e48  97917101  or r3, r3, r23
000e4c  37a00100  beq r3, zero, 8
000e50  6f4b0e00  loads.w r22, 0(r28)
000e54  9bb19d00  slli r3, r27, 9
000e58  1bc27d01  srli r4, r27, 23
000e5c  93810100  seteq r3, r3, zero
000e60  1b02f20f  andi r4, r4, 255
000e64  1b72f20f  setlti r4, r4, 255
000e68  97113200  or r3, r4, r3
000e6c  3ba00100  bneq r3, zero, 8
000e70  9f800d00  addli r1, r27, 0
000e74  9b319600  slli r3, r12, 9
000e78  1b427601  srli r4, r12, 23
000e7c  93810100  seteq r3, r3, zero
000e80  1b02f20f  andi r4, r4, 255
000e84  1b72f20f  setlti r4, r4, 255
000e88  97113200  or r3, r4, r3
000e8c  3ba00100  bneq r3, zero, 8
000e90  1f030600  addli r6, r12, 0
000e94  9b319100  slli r3, r2, 9
000e98  1b427101  srli r4, r2, 23
000e9c  93810100  seteq r3, r3, zero
000ea0  1b02f20f  andi r4, r4, 255
000ea4  1b72f20f  setlti r4, r4, 255
000ea8  97113200  or r3, r4, r3
000eac  3ba00100  bneq r3, zero, 8
000eb0  9f0c0100  addli r25, r2, 0
000eb4  1bb19300  slli r2, r7, 9
000eb8  9bc17301  srli r3, r7, 23
000ebc  63024ffb  loadli.w r4,  -608(r30)
000ec0  13010100  seteq r2, r2, zero
000ec4  9b81f10f  andi r3, r3, 255
000ec8  9bf1f10f  setlti r3, r3, 255
000ecc  17912100  or r2, r3, r2
000ed0  3b200100  bneq r2, zero, 8
000ed4  9f820300  addli r5, r7, 0
000ed8  1bb19700  slli r2, r15, 9
000edc  9bc17701  srli r3, r15, 23
000ee0  13010100  seteq r2, r2, zero
000ee4  9b81f10f  andi r3, r3, 255
000ee8  9bf1f10f  setlti r3, r3, 255
000eec  17912100  or r2, r3, r2
000ef0  3b200100  bneq r2, zero, 8
000ef4  1f840700  addli r8, r15, 0
000ef8  1bb19a00  slli r2, r21, 9
000efc  9bc17a01  srli r3, r21, 23
000f00  13010100  seteq r2, r2, zero
000f04  9b81f10f  andi r3, r3, 255
000f08  9bf1f10f  setlti r3, r3, 255
000f0c  17912100  or r2, r3, r2
000f10  3b200100  bneq r2, zero, 8
000f14  1f870a00  addli r14, r21, 0
000f18  1b319d00  slli r2, r26, 9
000f1c  9b417d01  srli r3, r26, 23
000f20  13010100  seteq r2, r2, zero
000f24  9b81f10f  andi r3, r3, 255
000f28  9bf1f10f  setlti r3, r3, 255
000f2c  17912100  or r2, r3, r2
000f30  3b2a01fe  bneq r2, zero, -376
000f34  9f060d00  addli r13, r26, 0
000f38  5bd0ffff  j -384
000f3c  9f701000  addli r1, zero, 15
000f40  00200100  mfence { sm }
000f44  e30b5f00  loadli.w r23,  40(r30)
000f48  80360002  core_id r13
000f4c  9f0ac000  addli r21, zero, 96
000f50  2b0c1300  lui r24, 304
000f54  2b0a0100  lui r20, 16
000f58  7d800000  xsignal r1, 0
000f5c  9f702000  addli r1, zero, 23
000f60  7d800000  xsignal r1, 0
000f64  9f003000  addli r1, zero, 24
000f68  7d800000  xsignal r1, 0
000f6c  6b578fd5  load.d r[15:16], -680(r30)
000f70  e304effa  loadli.w r9,  -656(r30)
000f74  6305cffa  loadli.w r10,  -672(r30)
000f78  5be6feff  j -2256
000f7c  7d000000  xsignal zero, 0
000f80  bbe00600  bneq r13, zero, 56
000f84  9f200000  addli r1, zero, 2
000f88  7d100000  xwait zero, 0
000f8c  7d100000  xwait zero, 0
000f90  7d100000  xwait zero, 0
000f94  7d100000  xwait zero, 0
000f98  7d100000  xwait zero, 0
000f9c  7d100000  xwait zero, 0
000fa0  7d100000  xwait zero, 0
000fa4  7d100000  xwait zero, 0
000fa8  1d800000  lock zero, r1
000fac  0d000020  ew_cfg zero, zero, zero, 16
000fb0  1d900000  unlock r1
000fb4  7d400000  xsignal_mode_cfg zero
000fb8  9f8ebe05  addli sp, sp, 728
000fbc  00a00300  mfence { lm, sm, gm }
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
