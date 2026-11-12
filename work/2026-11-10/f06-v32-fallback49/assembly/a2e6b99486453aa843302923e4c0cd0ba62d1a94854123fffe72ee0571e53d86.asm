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
00005c  9f494000  addli r19, zero, 36
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
0000b4  9f8e1ef8  addli sp, sp, -1016
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  1f8f7e07  addli r30, sp, 952
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600100  beq r2, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b740000  j 928
0000e0  9f210000  addli r3, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  2bf2ffff  lui r4, 1048575
0000ec  1d800100  lock zero, r3
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b10f2ff  ori r1, r4, 4095
0000f8  1f320000  addli r4, zero, 3
0000fc  1d900100  unlock r3
000100  9f510000  addli r3, zero, 5
000104  80a10004  csr_set csr3, r1
000108  9f301000  addli r1, zero, 11
00010c  00d00100  sync_group
000110  7d800000  xsignal r1, 0
000114  7d800000  xsignal r1, 0
000118  7d800000  xsignal r1, 0
00011c  7d800100  xsignal r3, 0
000120  7d800100  xsignal r3, 0
000124  7d800100  xsignal r3, 0
000128  7d800100  xsignal r3, 0
00012c  7d800100  xsignal r3, 0
000130  7d800100  xsignal r3, 0
000134  7d800100  xsignal r3, 0
000138  7d800100  xsignal r3, 0
00013c  7d800100  xsignal r3, 0
000140  7d800100  xsignal r3, 0
000144  7d800100  xsignal r3, 0
000148  7d800100  xsignal r3, 0
00014c  7d800100  xsignal r3, 0
000150  7d800100  xsignal r3, 0
000154  7d800100  xsignal r3, 0
000158  7d800100  xsignal r3, 0
00015c  7d800100  xsignal r3, 0
000160  7d800100  xsignal r3, 0
000164  7d800100  xsignal r3, 0
000168  7d800100  xsignal r3, 0
00016c  7d800100  xsignal r3, 0
000170  7d800100  xsignal r3, 0
000174  7d800100  xsignal r3, 0
000178  7d800100  xsignal r3, 0
00017c  7d800100  xsignal r3, 0
000180  7d800100  xsignal r3, 0
000184  7d800100  xsignal r3, 0
000188  7d800100  xsignal r3, 0
00018c  7d800100  xsignal r3, 0
000190  7d800100  xsignal r3, 0
000194  7d800100  xsignal r3, 0
000198  7d800100  xsignal r3, 0
00019c  7d800100  xsignal r3, 0
0001a0  7d800100  xsignal r3, 0
0001a4  7d800100  xsignal r3, 0
0001a8  7d800100  xsignal r3, 0
0001ac  7d800100  xsignal r3, 0
0001b0  7d800100  xsignal r3, 0
0001b4  7d800100  xsignal r3, 0
0001b8  7d800100  xsignal r3, 0
0001bc  7d800100  xsignal r3, 0
0001c0  7d800100  xsignal r3, 0
0001c4  7d800100  xsignal r3, 0
0001c8  7d800100  xsignal r3, 0
0001cc  7d800100  xsignal r3, 0
0001d0  7d800100  xsignal r3, 0
0001d4  7d800100  xsignal r3, 0
0001d8  7d800100  xsignal r3, 0
0001dc  9f101000  addli r1, zero, 9
0001e0  9f710000  addli r3, zero, 7
0001e4  7d000200  xsignal r4, 0
0001e8  7d000200  xsignal r4, 0
0001ec  7d000200  xsignal r4, 0
0001f0  7d000200  xsignal r4, 0
0001f4  7d000200  xsignal r4, 0
0001f8  7d000200  xsignal r4, 0
0001fc  7d000200  xsignal r4, 0
000200  7d000200  xsignal r4, 0
000204  7d000200  xsignal r4, 0
000208  7d000200  xsignal r4, 0
00020c  7d000200  xsignal r4, 0
000210  7d000200  xsignal r4, 0
000214  7d000200  xsignal r4, 0
000218  7d000200  xsignal r4, 0
00021c  7d000200  xsignal r4, 0
000220  7d000200  xsignal r4, 0
000224  7d000200  xsignal r4, 0
000228  7d000200  xsignal r4, 0
00022c  7d000200  xsignal r4, 0
000230  7d000200  xsignal r4, 0
000234  7d000200  xsignal r4, 0
000238  7d000200  xsignal r4, 0
00023c  7d000200  xsignal r4, 0
000240  7d000200  xsignal r4, 0
000244  7d000200  xsignal r4, 0
000248  7d000200  xsignal r4, 0
00024c  7d000200  xsignal r4, 0
000250  7d000200  xsignal r4, 0
000254  7d000200  xsignal r4, 0
000258  7d000200  xsignal r4, 0
00025c  7d000200  xsignal r4, 0
000260  7d000200  xsignal r4, 0
000264  7d000200  xsignal r4, 0
000268  7d000200  xsignal r4, 0
00026c  7d000200  xsignal r4, 0
000270  7d000200  xsignal r4, 0
000274  7d000200  xsignal r4, 0
000278  7d000200  xsignal r4, 0
00027c  7d000200  xsignal r4, 0
000280  7d000200  xsignal r4, 0
000284  7d000200  xsignal r4, 0
000288  7d000200  xsignal r4, 0
00028c  7d000200  xsignal r4, 0
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
0003b8  7d800000  xsignal r1, 0
0003bc  7d800000  xsignal r1, 0
0003c0  7d800000  xsignal r1, 0
0003c4  7d800000  xsignal r1, 0
0003c8  7d800000  xsignal r1, 0
0003cc  7d800000  xsignal r1, 0
0003d0  7d800100  xsignal r3, 0
0003d4  7d800100  xsignal r3, 0
0003d8  7d800100  xsignal r3, 0
0003dc  7d800100  xsignal r3, 0
0003e0  7d800100  xsignal r3, 0
0003e4  7d800100  xsignal r3, 0
0003e8  7d800100  xsignal r3, 0
0003ec  7d800100  xsignal r3, 0
0003f0  7d800100  xsignal r3, 0
0003f4  7d800100  xsignal r3, 0
0003f8  7d800100  xsignal r3, 0
0003fc  7d800100  xsignal r3, 0
000400  7d800100  xsignal r3, 0
000404  7d800100  xsignal r3, 0
000408  7d800100  xsignal r3, 0
00040c  7d800100  xsignal r3, 0
000410  7d800100  xsignal r3, 0
000414  7d800100  xsignal r3, 0
000418  7d800100  xsignal r3, 0
00041c  7d800100  xsignal r3, 0
000420  7d800100  xsignal r3, 0
000424  7d800100  xsignal r3, 0
000428  7d800100  xsignal r3, 0
00042c  7d800100  xsignal r3, 0
000430  7d800100  xsignal r3, 0
000434  7d800100  xsignal r3, 0
000438  7d800100  xsignal r3, 0
00043c  7d800100  xsignal r3, 0
000440  7d800100  xsignal r3, 0
000444  7d800100  xsignal r3, 0
000448  7d800100  xsignal r3, 0
00044c  7d800100  xsignal r3, 0
000450  7d800100  xsignal r3, 0
000454  7d800100  xsignal r3, 0
000458  7d800100  xsignal r3, 0
00045c  7d800100  xsignal r3, 0
000460  7d800100  xsignal r3, 0
000464  7d800100  xsignal r3, 0
000468  7d800100  xsignal r3, 0
00046c  7d800100  xsignal r3, 0
000470  7d800100  xsignal r3, 0
000474  7d800100  xsignal r3, 0
000478  7d800100  xsignal r3, 0
00047c  e3003f00  loadli.w r1,  24(r30)
000480  e3413f00  loadli.w r3,  28(r30)
000484  00d20002  load_param_i r4, 1
000488  e3024f00  loadli.w r5,  32(r30)
00048c  80530002  load_param_i r7, 0
000490  2bf3ffff  lui r6, 1048575
000494  67050ffe  storeli.w zero, -176(r30)
000498  e7400ffc  storeli.w zero, -500(r30)
00049c  e7450ffa  storeli.w zero, -676(r30)
0004a0  e7090ff8  storeli.w zero, -872(r30)
0004a4  8b901120  mul.s r1, r3, r1
0004a8  9f010200  addli r3, r4, 0
0004ac  8b915050  fmac.s r3, r1, r5
0004b0  8b925020  mul.s r5, r1, r5
0004b4  9ff1f1ff  addli r3, r3, -1
0004b8  8b914130  div.s r3, r3, r4
0004bc  1b12f3ff  ori r4, r6, 4095
0004c0  67454ffe  storeli.w r4, -172(r30)
0004c4  e7054ffe  storeli.w r4, -168(r30)
0004c8  e7454ffe  storeli.w r4, -164(r30)
0004cc  67064ffe  storeli.w r4, -160(r30)
0004d0  67464ffe  storeli.w r4, -156(r30)
0004d4  e7064ffe  storeli.w r4, -152(r30)
0004d8  e7464ffe  storeli.w r4, -148(r30)
0004dc  67074ffe  storeli.w r4, -144(r30)
0004e0  67474ffe  storeli.w r4, -140(r30)
0004e4  e7074ffe  storeli.w r4, -136(r30)
0004e8  e7474ffe  storeli.w r4, -132(r30)
0004ec  67084ffe  storeli.w r4, -128(r30)
0004f0  67484ffe  storeli.w r4, -124(r30)
0004f4  e7084ffe  storeli.w r4, -120(r30)
0004f8  e7484ffe  storeli.w r4, -116(r30)
0004fc  67094ffe  storeli.w r4, -112(r30)
000500  67494ffe  storeli.w r4, -108(r30)
000504  e7094ffe  storeli.w r4, -104(r30)
000508  e7494ffe  storeli.w r4, -100(r30)
00050c  670a4ffe  storeli.w r4, -96(r30)
000510  674a4ffe  storeli.w r4, -92(r30)
000514  e70a4ffe  storeli.w r4, -88(r30)
000518  e74a4ffe  storeli.w r4, -84(r30)
00051c  670b4ffe  storeli.w r4, -80(r30)
000520  674b4ffe  storeli.w r4, -76(r30)
000524  e70b4ffe  storeli.w r4, -72(r30)
000528  e74b4ffe  storeli.w r4, -68(r30)
00052c  670c4ffe  storeli.w r4, -64(r30)
000530  674c4ffe  storeli.w r4, -60(r30)
000534  e70c4ffe  storeli.w r4, -56(r30)
000538  e74c4ffe  storeli.w r4, -52(r30)
00053c  670d4ffe  storeli.w r4, -48(r30)
000540  674d4ffe  storeli.w r4, -44(r30)
000544  e70d4ffe  storeli.w r4, -40(r30)
000548  e74d4ffe  storeli.w r4, -36(r30)
00054c  670e4ffe  storeli.w r4, -32(r30)
000550  674e4ffe  storeli.w r4, -28(r30)
000554  e70e4ffe  storeli.w r4, -24(r30)
000558  e74e4ffe  storeli.w r4, -20(r30)
00055c  670f4ffe  storeli.w r4, -16(r30)
000560  674f4ffe  storeli.w r4, -12(r30)
000564  e70f4ffe  storeli.w r4, -8(r30)
000568  e74f4ffe  storeli.w r4, -4(r30)
00056c  67014ffc  storeli.w r4, -496(r30)
000570  67414ffc  storeli.w r4, -492(r30)
000574  e7014ffc  storeli.w r4, -488(r30)
000578  e7414ffc  storeli.w r4, -484(r30)
00057c  67024ffc  storeli.w r4, -480(r30)
000580  67424ffc  storeli.w r4, -476(r30)
000584  e7024ffc  storeli.w r4, -472(r30)
000588  e7424ffc  storeli.w r4, -468(r30)
00058c  67034ffc  storeli.w r4, -464(r30)
000590  67434ffc  storeli.w r4, -460(r30)
000594  e7034ffc  storeli.w r4, -456(r30)
000598  e7434ffc  storeli.w r4, -452(r30)
00059c  67044ffc  storeli.w r4, -448(r30)
0005a0  67444ffc  storeli.w r4, -444(r30)
0005a4  e7044ffc  storeli.w r4, -440(r30)
0005a8  e7444ffc  storeli.w r4, -436(r30)
0005ac  67054ffc  storeli.w r4, -432(r30)
0005b0  67454ffc  storeli.w r4, -428(r30)
0005b4  e7054ffc  storeli.w r4, -424(r30)
0005b8  e7454ffc  storeli.w r4, -420(r30)
0005bc  67064ffc  storeli.w r4, -416(r30)
0005c0  67464ffc  storeli.w r4, -412(r30)
0005c4  e7064ffc  storeli.w r4, -408(r30)
0005c8  e7464ffc  storeli.w r4, -404(r30)
0005cc  67074ffc  storeli.w r4, -400(r30)
0005d0  67474ffc  storeli.w r4, -396(r30)
0005d4  e7074ffc  storeli.w r4, -392(r30)
0005d8  e7474ffc  storeli.w r4, -388(r30)
0005dc  67084ffc  storeli.w r4, -384(r30)
0005e0  67484ffc  storeli.w r4, -380(r30)
0005e4  e7084ffc  storeli.w r4, -376(r30)
0005e8  e7484ffc  storeli.w r4, -372(r30)
0005ec  67094ffc  storeli.w r4, -368(r30)
0005f0  67494ffc  storeli.w r4, -364(r30)
0005f4  e7094ffc  storeli.w r4, -360(r30)
0005f8  e7494ffc  storeli.w r4, -356(r30)
0005fc  670a4ffc  storeli.w r4, -352(r30)
000600  674a4ffc  storeli.w r4, -348(r30)
000604  e70a4ffc  storeli.w r4, -344(r30)
000608  e74a4ffc  storeli.w r4, -340(r30)
00060c  670b4ffc  storeli.w r4, -336(r30)
000610  674b4ffc  storeli.w r4, -332(r30)
000614  e70b4ffc  storeli.w r4, -328(r30)
000618  e74b4ffc  storeli.w r4, -324(r30)
00061c  670c4ffc  storeli.w r4, -320(r30)
000620  674c4ffc  storeli.w r4, -316(r30)
000624  e70c4ffc  storeli.w r4, -312(r30)
000628  e74c4ffc  storeli.w r4, -308(r30)
00062c  670d4ffc  storeli.w r4, -304(r30)
000630  674d4ffc  storeli.w r4, -300(r30)
000634  e70d4ffc  storeli.w r4, -296(r30)
000638  e74d4ffc  storeli.w r4, -292(r30)
00063c  670e4ffc  storeli.w r4, -288(r30)
000640  674e4ffc  storeli.w r4, -284(r30)
000644  e70e4ffc  storeli.w r4, -280(r30)
000648  e74e4ffc  storeli.w r4, -276(r30)
00064c  670f4ffc  storeli.w r4, -272(r30)
000650  674f4ffc  storeli.w r4, -268(r30)
000654  e70f4ffc  storeli.w r4, -264(r30)
000658  e74f4ffc  storeli.w r4, -260(r30)
00065c  67004ffe  storeli.w r4, -256(r30)
000660  67404ffe  storeli.w r4, -252(r30)
000664  e7004ffe  storeli.w r4, -248(r30)
000668  e7404ffe  storeli.w r4, -244(r30)
00066c  67014ffe  storeli.w r4, -240(r30)
000670  67414ffe  storeli.w r4, -236(r30)
000674  e7014ffe  storeli.w r4, -232(r30)
000678  e7414ffe  storeli.w r4, -228(r30)
00067c  67024ffe  storeli.w r4, -224(r30)
000680  67424ffe  storeli.w r4, -220(r30)
000684  e7024ffe  storeli.w r4, -216(r30)
000688  e7424ffe  storeli.w r4, -212(r30)
00068c  67034ffe  storeli.w r4, -208(r30)
000690  67434ffe  storeli.w r4, -204(r30)
000694  e7034ffe  storeli.w r4, -200(r30)
000698  e7434ffe  storeli.w r4, -196(r30)
00069c  67044ffe  storeli.w r4, -192(r30)
0006a0  67444ffe  storeli.w r4, -188(r30)
0006a4  e7044ffe  storeli.w r4, -184(r30)
0006a8  e7444ffe  storeli.w r4, -180(r30)
0006ac  67064ffa  storeli.w r4, -672(r30)
0006b0  67464ffa  storeli.w r4, -668(r30)
0006b4  e7064ffa  storeli.w r4, -664(r30)
0006b8  e7464ffa  storeli.w r4, -660(r30)
0006bc  67074ffa  storeli.w r4, -656(r30)
0006c0  67474ffa  storeli.w r4, -652(r30)
0006c4  e7074ffa  storeli.w r4, -648(r30)
0006c8  e7474ffa  storeli.w r4, -644(r30)
0006cc  67084ffa  storeli.w r4, -640(r30)
0006d0  67484ffa  storeli.w r4, -636(r30)
0006d4  e7084ffa  storeli.w r4, -632(r30)
0006d8  e7484ffa  storeli.w r4, -628(r30)
0006dc  67094ffa  storeli.w r4, -624(r30)
0006e0  67494ffa  storeli.w r4, -620(r30)
0006e4  e7094ffa  storeli.w r4, -616(r30)
0006e8  e7494ffa  storeli.w r4, -612(r30)
0006ec  670a4ffa  storeli.w r4, -608(r30)
0006f0  674a4ffa  storeli.w r4, -604(r30)
0006f4  e70a4ffa  storeli.w r4, -600(r30)
0006f8  e74a4ffa  storeli.w r4, -596(r30)
0006fc  670b4ffa  storeli.w r4, -592(r30)
000700  674b4ffa  storeli.w r4, -588(r30)
000704  e70b4ffa  storeli.w r4, -584(r30)
000708  e74b4ffa  storeli.w r4, -580(r30)
00070c  670c4ffa  storeli.w r4, -576(r30)
000710  674c4ffa  storeli.w r4, -572(r30)
000714  e70c4ffa  storeli.w r4, -568(r30)
000718  e74c4ffa  storeli.w r4, -564(r30)
00071c  670d4ffa  storeli.w r4, -560(r30)
000720  674d4ffa  storeli.w r4, -556(r30)
000724  e70d4ffa  storeli.w r4, -552(r30)
000728  e74d4ffa  storeli.w r4, -548(r30)
00072c  670e4ffa  storeli.w r4, -544(r30)
000730  674e4ffa  storeli.w r4, -540(r30)
000734  e70e4ffa  storeli.w r4, -536(r30)
000738  e74e4ffa  storeli.w r4, -532(r30)
00073c  670f4ffa  storeli.w r4, -528(r30)
000740  674f4ffa  storeli.w r4, -524(r30)
000744  e70f4ffa  storeli.w r4, -520(r30)
000748  e74f4ffa  storeli.w r4, -516(r30)
00074c  67004ffc  storeli.w r4, -512(r30)
000750  67404ffc  storeli.w r4, -508(r30)
000754  e7004ffc  storeli.w r4, -504(r30)
000758  e7494ff8  storeli.w r4, -868(r30)
00075c  670a4ff8  storeli.w r4, -864(r30)
000760  674a4ff8  storeli.w r4, -860(r30)
000764  e70a4ff8  storeli.w r4, -856(r30)
000768  e74a4ff8  storeli.w r4, -852(r30)
00076c  670b4ff8  storeli.w r4, -848(r30)
000770  674b4ff8  storeli.w r4, -844(r30)
000774  e70b4ff8  storeli.w r4, -840(r30)
000778  e74b4ff8  storeli.w r4, -836(r30)
00077c  670c4ff8  storeli.w r4, -832(r30)
000780  674c4ff8  storeli.w r4, -828(r30)
000784  e70c4ff8  storeli.w r4, -824(r30)
000788  e74c4ff8  storeli.w r4, -820(r30)
00078c  670d4ff8  storeli.w r4, -816(r30)
000790  674d4ff8  storeli.w r4, -812(r30)
000794  e70d4ff8  storeli.w r4, -808(r30)
000798  e74d4ff8  storeli.w r4, -804(r30)
00079c  670e4ff8  storeli.w r4, -800(r30)
0007a0  674e4ff8  storeli.w r4, -796(r30)
0007a4  e70e4ff8  storeli.w r4, -792(r30)
0007a8  e74e4ff8  storeli.w r4, -788(r30)
0007ac  670f4ff8  storeli.w r4, -784(r30)
0007b0  674f4ff8  storeli.w r4, -780(r30)
0007b4  e70f4ff8  storeli.w r4, -776(r30)
0007b8  e74f4ff8  storeli.w r4, -772(r30)
0007bc  67004ffa  storeli.w r4, -768(r30)
0007c0  67404ffa  storeli.w r4, -764(r30)
0007c4  e7004ffa  storeli.w r4, -760(r30)
0007c8  e7404ffa  storeli.w r4, -756(r30)
0007cc  67014ffa  storeli.w r4, -752(r30)
0007d0  67414ffa  storeli.w r4, -748(r30)
0007d4  e7014ffa  storeli.w r4, -744(r30)
0007d8  e7414ffa  storeli.w r4, -740(r30)
0007dc  67024ffa  storeli.w r4, -736(r30)
0007e0  67424ffa  storeli.w r4, -732(r30)
0007e4  e7024ffa  storeli.w r4, -728(r30)
0007e8  e7424ffa  storeli.w r4, -724(r30)
0007ec  67034ffa  storeli.w r4, -720(r30)
0007f0  67434ffa  storeli.w r4, -716(r30)
0007f4  e7034ffa  storeli.w r4, -712(r30)
0007f8  e7434ffa  storeli.w r4, -708(r30)
0007fc  67044ffa  storeli.w r4, -704(r30)
000800  67444ffa  storeli.w r4, -700(r30)
000804  e7044ffa  storeli.w r4, -696(r30)
000808  e7444ffa  storeli.w r4, -692(r30)
00080c  67054ffa  storeli.w r4, -688(r30)
000810  67454ffa  storeli.w r4, -684(r30)
000814  e7054ffa  storeli.w r4, -680(r30)
000818  8b907120  mul.s r1, r3, r7
00081c  8b917150  fmac.s r3, r3, r7
000820  8b915140  min.s r3, r3, r5
000824  4bc41104  ble.s r3, r1, 2320
000828  b3910128  sext_int2long r[4:5], r3
00082c  b3920028  sext_int2long r[6:7], r1
000830  1f048000  addli r8, zero, 64
000834  9f440000  addli r9, zero, 4
000838  9f091000  addli r19, zero, 8
00083c  9f770000  addli r15, zero, 7
000840  9f350000  addli r11, zero, 3
000844  9f580000  addli r17, zero, 5
000848  ab0a0300  lui r21, 48
00084c  1f1b0000  addli r22, zero, 1
000850  9f2b0000  addli r23, zero, 2
000854  1f0c4000  addli r24, zero, 32
000858  9f0c0001  addli r25, zero, 128
00085c  1f080000  addli r16, zero, 0
000860  73383fc4  store.d r[4:5], -944(r30)
000864  1f72f01f  addli r4, zero, 4095
000868  ab81ffff  lui r3, 1048568
00086c  73343fc4  store.d r[4:5], -952(r30)
000870  db040000  j 36
000874  9f201000  addli r1, zero, 10
000878  7d800000  xsignal r1, 0
00087c  eb528fc7  load.d r[6:7], -904(r30)
000880  eb510fc5  load.d r[4:5], -944(r30)
000884  6348eff8  loadli.w r16,  -908(r30)
000888  a7920200  addli.d r[6:7], r[6:7], 1
00088c  93b03204  setlt.sl r1, r[6:7], r[4:5]
000890  b7920004  beq r1, zero, 2212
000894  3b309100  bneq r2, r9, 12
000898  9f301000  addli r1, zero, 11
00089c  7d900000  xwait r1, 0
0008a0  e3004f00  loadli.w r1,  32(r30)
0008a4  e3413f00  loadli.w r3,  28(r30)
0008a8  733c5fc6  store.d r[6:7], -904(r30)
0008ac  9f561000  addli r13, zero, 13
0008b0  63023ff9  loadli.w r4,  -872(r30)
0008b4  e343bffa  loadli.w r7,  -676(r30)
0008b8  8b901230  div.s r1, r5, r1
0008bc  8b923030  div.s r5, r1, r3
0008c0  0b938230  div.s r6, r5, r8
0008c4  9b303300  slli r1, r6, 3
0008c8  8b911418  sub.s r3, r9, r1
0008cc  0b953141  min.s r10, r3, r19
0008d0  8b91a238  mod.s r3, r5, r10
0008d4  8b903010  add.s r1, r1, r3
0008d8  93811504  setlt.u r3, r11, r1
0008dc  338d0028  zext_int2long r[27:28], r1
0008e0  7334afc7  store.d r[27:28], -920(r30)
0008e4  173ddd02  sll.d r[27:28], r[27:28], r13
0008e8  3bb00100  bneq r3, zero, 12
0008ec  b3060028  zext_int2long r[14:15], zero
0008f0  db010000  j 12
0008f4  eb568fc4  load.d r[14:15], -952(r30)
0008f8  9706dd02  and.d r[14:15], r[27:28], r[14:15]
0008fc  1b336300  slli r6, r6, 6
000900  9bb07000  slli r1, r1, 7
000904  7334dfc8  store.d r[14:15], -888(r30)
000908  9f010000  addli r3, zero, 0
00090c  7338afc9  store.d r[27:28], -880(r30)
000910  8b926218  sub.s r5, r5, r6
000914  0b13b838  mod.s r6, r16, r11
000918  e7451ff8  storeli.w r1, -932(r30)
00091c  1f180800  addli r16, r16, 1
000920  8b92a230  div.s r5, r5, r10
000924  67470ff9  storeli.w r16, -908(r30)
000928  1b3e0301  slli r28, r6, 16
00092c  b3860228  zext_int2long r[14:15], r5
000930  9bb07200  slli r1, r5, 7
000934  e7051ff8  storeli.w r1, -936(r30)
000938  97b6f602  sll.d r[14:15], r[14:15], r15
00093c  9f100000  addli r1, zero, 1
000940  7330dfc6  store.d r[14:15], -928(r30)
000944  97b21602  sll.d r[6:7], r[14:15], r1
000948  eb568f00  load.d r[14:15], 8(r30)
00094c  8ba25610  add.ul r[6:7], r[14:15], r[6:7]
000950  73305fc8  store.d r[6:7], -896(r30)
000954  9f020000  addli r5, zero, 0
000958  db2e0000  j 372
00095c  ab0a0300  lui r21, 48
000960  1d800400  lock zero, r9
000964  1f610000  addli r2, zero, 6
000968  9f770000  addli r15, zero, 7
00096c  150b0b00  dma_cfg r22, r22, zero, 0
000970  9b930a04  ori r7, r21, 64
000974  15000304  dma_cfg zero, r6, zero, 2
000978  8b137710  add.s r7, r14, r7
00097c  95838206  dma_cfg r7, r5, r8, 3
000980  9f221000  addli r5, zero, 10
000984  950c6409  dma_cfg r25, r8, r22, 4
000988  958c0c0b  dma_cfg r25, r25, r16, 5
00098c  15000010  dma_cfg zero, zero, zero, 8
000990  35000000  dma_run zero
000994  1500600b  dma_cfg zero, zero, r22, 5
000998  15000010  dma_cfg zero, zero, zero, 8
00099c  1d900400  unlock r9
0009a0  1d800800  lock zero, r17
0009a4  15000014  dma_cfg zero, zero, zero, 10
0009a8  15006015  dma_cfg zero, zero, r22, 10
0009ac  15007015  dma_cfg zero, zero, r23, 10
0009b0  1500b014  dma_cfg zero, zero, r11, 10
0009b4  15009014  dma_cfg zero, zero, r9, 10
0009b8  15001015  dma_cfg zero, zero, r17, 10
0009bc  15002014  dma_cfg zero, zero, r2, 10
0009c0  1f111000  addli r2, zero, 9
0009c4  1500f014  dma_cfg zero, zero, r15, 10
0009c8  15003015  dma_cfg zero, zero, r19, 10
0009cc  15002014  dma_cfg zero, zero, r2, 10
0009d0  1f411000  addli r2, zero, 12
0009d4  15005014  dma_cfg zero, zero, r5, 10
0009d8  9f321000  addli r5, zero, 11
0009dc  15005014  dma_cfg zero, zero, r5, 10
0009e0  9f521000  addli r5, zero, 13
0009e4  15002014  dma_cfg zero, zero, r2, 10
0009e8  1f611000  addli r2, zero, 14
0009ec  15005014  dma_cfg zero, zero, r5, 10
0009f0  9f222000  addli r5, zero, 18
0009f4  15002014  dma_cfg zero, zero, r2, 10
0009f8  1f711000  addli r2, zero, 15
0009fc  15002014  dma_cfg zero, zero, r2, 10
000a00  1f112000  addli r2, zero, 17
000a04  15002015  dma_cfg zero, zero, r18, 10
000a08  15002014  dma_cfg zero, zero, r2, 10
000a0c  1f312000  addli r2, zero, 19
000a10  15005014  dma_cfg zero, zero, r5, 10
000a14  15002014  dma_cfg zero, zero, r2, 10
000a18  1f412000  addli r2, zero, 20
000a1c  15002014  dma_cfg zero, zero, r2, 10
000a20  1f512000  addli r2, zero, 21
000a24  15002014  dma_cfg zero, zero, r2, 10
000a28  1f612000  addli r2, zero, 22
000a2c  15002014  dma_cfg zero, zero, r2, 10
000a30  1f712000  addli r2, zero, 23
000a34  15002014  dma_cfg zero, zero, r2, 10
000a38  1f013000  addli r2, zero, 24
000a3c  15002014  dma_cfg zero, zero, r2, 10
000a40  1f113000  addli r2, zero, 25
000a44  15002014  dma_cfg zero, zero, r2, 10
000a48  1f213000  addli r2, zero, 26
000a4c  15002014  dma_cfg zero, zero, r2, 10
000a50  1f313000  addli r2, zero, 27
000a54  15002014  dma_cfg zero, zero, r2, 10
000a58  1f413000  addli r2, zero, 28
000a5c  15002014  dma_cfg zero, zero, r2, 10
000a60  1f513000  addli r2, zero, 29
000a64  15002014  dma_cfg zero, zero, r2, 10
000a68  1f613000  addli r2, zero, 30
000a6c  15002014  dma_cfg zero, zero, r2, 10
000a70  1f713000  addli r2, zero, 31
000a74  15002014  dma_cfg zero, zero, r2, 10
000a78  00310002  core_id r2
000a7c  150b0b00  dma_cfg r22, r22, zero, 0
000a80  150b0002  dma_cfg r22, zero, zero, 1
000a84  15000004  dma_cfg zero, zero, zero, 2
000a88  15058006  dma_cfg r10, zero, r8, 3
000a8c  950c6009  dma_cfg r25, zero, r22, 4
000a90  950c000b  dma_cfg r25, zero, r16, 5
000a94  15000010  dma_cfg zero, zero, zero, 8
000a98  35000000  dma_run zero
000a9c  1500600b  dma_cfg zero, zero, r22, 5
000aa0  15000010  dma_cfg zero, zero, zero, 8
000aa4  1d900800  unlock r17
000aa8  7d800b00  xsignal r23, 0
000aac  e3421ffc  loadli.w r5,  -500(r30)
000ab0  6303affe  loadli.w r6,  -176(r30)
000ab4  9f920200  addli r5, r5, 1
000ab8  1f130300  addli r6, r6, 1
000abc  e7405ffc  storeli.w r5, -500(r30)
000ac0  67056ffe  storeli.w r6, -176(r30)
000ac4  bb830002  bneq r1, zero, 1248
000ac8  5bb30000  j 1432
000acc  1f335000  addli r6, zero, 43
000ad0  1f056000  addli r10, zero, 48
000ad4  9f060003  addli r13, zero, 384
000ad8  9b801000  andi r1, r1, 1
000adc  0b936338  mod.s r6, r7, r6
000ae0  0b15a238  mod.s r10, r4, r10
000ae4  338d0628  zext_int2long r[27:28], r13
000ae8  1f120200  addli r4, r4, 1
000aec  9f960300  addli r13, r7, 1
000af0  e7094ff8  storeli.w r4, -872(r30)
000af4  e745dffa  storeli.w r13, -676(r30)
000af8  1b37e300  slli r14, r6, 14
000afc  1b38e500  slli r16, r10, 14
000b00  0b155711  add.s r10, r14, r21
000b04  b7357101  beq r2, r23, 364
000b08  1f710000  addli r2, zero, 7
000b0c  b3820228  zext_int2long r[6:7], r5
000b10  003a0002  core_id r20
000b14  3b366a01  bneq r20, r22, 396
000b18  eb570fc9  load.d r[16:17], -880(r30)
000b1c  97b21203  sll.d r[6:7], r[6:7], r17
000b20  6b5a0f00  load.d r[21:22], 0(r30)
000b24  9792f202  or.d r[6:7], r[6:7], r[16:17]
000b28  eb578fc8  load.d r[16:17], -888(r30)
000b2c  7d900500  xwait r11, 0
000b30  0bb9f218  sub.sl r[19:20], r[6:7], r[16:17]
000b34  b3070428  zext_int2long r[16:17], r8
000b38  97b26203  sll.d r[6:7], r[6:7], r22
000b3c  8f17f960  div.sl r[16:17], r[19:20], r[16:17]
000b40  8b225a10  add.ul r[6:7], r[21:22], r[6:7]
000b44  0bb9a741  min.sl r[19:20], r[16:17], r[27:28]
000b48  8b37f918  sub.sl r[16:17], r[19:20], r[16:17]
000b4c  9f091000  addli r19, zero, 8
000b50  1f092000  addli r18, zero, 16
000b54  1f880701  addli r16, r15, 128
000b58  9f275000  addli r15, zero, 42
000b5c  3f8877fe  blt.s r15, r7, -512
000b60  1d800800  lock zero, r17
000b64  9f630000  addli r7, zero, 6
000b68  15000014  dma_cfg zero, zero, zero, 10
000b6c  15006015  dma_cfg zero, zero, r22, 10
000b70  15007015  dma_cfg zero, zero, r23, 10
000b74  1500b014  dma_cfg zero, zero, r11, 10
000b78  15009014  dma_cfg zero, zero, r9, 10
000b7c  15001015  dma_cfg zero, zero, r17, 10
000b80  15007014  dma_cfg zero, zero, r7, 10
000b84  9f231000  addli r7, zero, 10
000b88  15002014  dma_cfg zero, zero, r2, 10
000b8c  1f111000  addli r2, zero, 9
000b90  15003015  dma_cfg zero, zero, r19, 10
000b94  15002014  dma_cfg zero, zero, r2, 10
000b98  1f411000  addli r2, zero, 12
000b9c  15007014  dma_cfg zero, zero, r7, 10
000ba0  9f331000  addli r7, zero, 11
000ba4  15007014  dma_cfg zero, zero, r7, 10
000ba8  9f531000  addli r7, zero, 13
000bac  15002014  dma_cfg zero, zero, r2, 10
000bb0  1f611000  addli r2, zero, 14
000bb4  15007014  dma_cfg zero, zero, r7, 10
000bb8  9f232000  addli r7, zero, 18
000bbc  15002014  dma_cfg zero, zero, r2, 10
000bc0  1f711000  addli r2, zero, 15
000bc4  15002014  dma_cfg zero, zero, r2, 10
000bc8  1f112000  addli r2, zero, 17
000bcc  15002015  dma_cfg zero, zero, r18, 10
000bd0  15002014  dma_cfg zero, zero, r2, 10
000bd4  1f312000  addli r2, zero, 19
000bd8  15007014  dma_cfg zero, zero, r7, 10
000bdc  15002014  dma_cfg zero, zero, r2, 10
000be0  1f412000  addli r2, zero, 20
000be4  15002014  dma_cfg zero, zero, r2, 10
000be8  1f512000  addli r2, zero, 21
000bec  15002014  dma_cfg zero, zero, r2, 10
000bf0  1f612000  addli r2, zero, 22
000bf4  15002014  dma_cfg zero, zero, r2, 10
000bf8  1f712000  addli r2, zero, 23
000bfc  15002014  dma_cfg zero, zero, r2, 10
000c00  1f013000  addli r2, zero, 24
000c04  15002014  dma_cfg zero, zero, r2, 10
000c08  1f113000  addli r2, zero, 25
000c0c  15002014  dma_cfg zero, zero, r2, 10
000c10  1f213000  addli r2, zero, 26
000c14  15002014  dma_cfg zero, zero, r2, 10
000c18  1f313000  addli r2, zero, 27
000c1c  15002014  dma_cfg zero, zero, r2, 10
000c20  1f413000  addli r2, zero, 28
000c24  15002014  dma_cfg zero, zero, r2, 10
000c28  1f513000  addli r2, zero, 29
000c2c  15002014  dma_cfg zero, zero, r2, 10
000c30  1f613000  addli r2, zero, 30
000c34  15002014  dma_cfg zero, zero, r2, 10
000c38  1f713000  addli r2, zero, 31
000c3c  15002014  dma_cfg zero, zero, r2, 10
000c40  150b0b00  dma_cfg r22, r22, zero, 0
000c44  150b0002  dma_cfg r22, zero, zero, 1
000c48  15000004  dma_cfg zero, zero, zero, 2
000c4c  15058006  dma_cfg r10, zero, r8, 3
000c50  950c6009  dma_cfg r25, zero, r22, 4
000c54  950c900b  dma_cfg r25, zero, r25, 5
000c58  15000010  dma_cfg zero, zero, zero, 8
000c5c  35000000  dma_run zero
000c60  1500600b  dma_cfg zero, zero, r22, 5
000c64  15000010  dma_cfg zero, zero, zero, 8
000c68  1d900800  unlock r17
000c6c  5b9effff  j -784
000c70  7d900b00  xwait r23, 0
000c74  7d900800  xwait r17, 0
000c78  1d000000  lock zero, zero
000c7c  810b0000  ds_cfg r23, zero, 0
000c80  010c0002  ds_cfg r24, zero, 1
000c84  010c001c  ds_cfg r24, zero, 14
000c88  810c001a  ds_cfg r25, zero, 13
000c8c  21188503  shuffle_batch r16, r10, r24, 1
000c90  1d100000  unlock zero
000c94  7d800500  xsignal r11, 0
000c98  7d800400  xsignal r9, 0
000c9c  5bc2ffff  j -496
000ca0  e3431ffc  loadli.w r7,  -500(r30)
000ca4  1f01a000  addli r2, zero, 80
000ca8  6309affe  loadli.w r18,  -176(r30)
000cac  0b952338  mod.s r10, r7, r2
000cb0  1f315000  addli r2, zero, 43
000cb4  9f930300  addli r7, r7, 1
000cb8  9f170900  addli r15, r18, 1
000cbc  0b172938  mod.s r14, r18, r2
000cc0  2bc10d00  lui r2, 220
000cc4  e7407ffc  storeli.w r7, -500(r30)
000cc8  6705fffe  storeli.w r15, -176(r30)
000ccc  9f770000  addli r15, zero, 7
000cd0  9b33e500  slli r7, r10, 14
000cd4  1b37e700  slli r14, r14, 14
000cd8  0b152710  add.s r10, r14, r2
000cdc  1f610000  addli r2, zero, 6
000ce0  373afa00  beq r20, r15, 652
000ce4  3b5b2a00  bneq r20, r2, 724
000ce8  1f082000  addli r16, zero, 16
000cec  eb550fc8  load.d r[12:13], -896(r30)
000cf0  9f235000  addli r7, zero, 42
000cf4  7d900700  xwait r15, 0
000cf8  97b20203  sll.d r[6:7], r[6:7], r16
000cfc  8ba25510  add.ul r[6:7], r[12:13], r[6:7]
000d00  9f350000  addli r11, zero, 3
000d04  3fd42301  blt.s r7, r18, 276
000d08  1d800800  lock zero, r17
000d0c  1f610000  addli r2, zero, 6
000d10  9f231000  addli r7, zero, 10
000d14  15000014  dma_cfg zero, zero, zero, 10
000d18  15006015  dma_cfg zero, zero, r22, 10
000d1c  15007015  dma_cfg zero, zero, r23, 10
000d20  1500b014  dma_cfg zero, zero, r11, 10
000d24  15009014  dma_cfg zero, zero, r9, 10
000d28  15001015  dma_cfg zero, zero, r17, 10
000d2c  15002014  dma_cfg zero, zero, r2, 10
000d30  1f111000  addli r2, zero, 9
000d34  1500f014  dma_cfg zero, zero, r15, 10
000d38  15003015  dma_cfg zero, zero, r19, 10
000d3c  15002014  dma_cfg zero, zero, r2, 10
000d40  1f411000  addli r2, zero, 12
000d44  15007014  dma_cfg zero, zero, r7, 10
000d48  9f331000  addli r7, zero, 11
000d4c  15007014  dma_cfg zero, zero, r7, 10
000d50  9f531000  addli r7, zero, 13
000d54  15002014  dma_cfg zero, zero, r2, 10
000d58  1f611000  addli r2, zero, 14
000d5c  15007014  dma_cfg zero, zero, r7, 10
000d60  9f232000  addli r7, zero, 18
000d64  15002014  dma_cfg zero, zero, r2, 10
000d68  1f711000  addli r2, zero, 15
000d6c  15002014  dma_cfg zero, zero, r2, 10
000d70  1f112000  addli r2, zero, 17
000d74  15000015  dma_cfg zero, zero, r16, 10
000d78  15002014  dma_cfg zero, zero, r2, 10
000d7c  1f312000  addli r2, zero, 19
000d80  15007014  dma_cfg zero, zero, r7, 10
000d84  9f030004  addli r7, zero, 512
000d88  15002014  dma_cfg zero, zero, r2, 10
000d8c  1f412000  addli r2, zero, 20
000d90  15002014  dma_cfg zero, zero, r2, 10
000d94  1f512000  addli r2, zero, 21
000d98  15002014  dma_cfg zero, zero, r2, 10
000d9c  1f612000  addli r2, zero, 22
000da0  15002014  dma_cfg zero, zero, r2, 10
000da4  1f712000  addli r2, zero, 23
000da8  15002014  dma_cfg zero, zero, r2, 10
000dac  1f013000  addli r2, zero, 24
000db0  15002014  dma_cfg zero, zero, r2, 10
000db4  1f113000  addli r2, zero, 25
000db8  15002014  dma_cfg zero, zero, r2, 10
000dbc  1f213000  addli r2, zero, 26
000dc0  15002014  dma_cfg zero, zero, r2, 10
000dc4  1f313000  addli r2, zero, 27
000dc8  15002014  dma_cfg zero, zero, r2, 10
000dcc  1f413000  addli r2, zero, 28
000dd0  15002014  dma_cfg zero, zero, r2, 10
000dd4  1f513000  addli r2, zero, 29
000dd8  15002014  dma_cfg zero, zero, r2, 10
000ddc  1f613000  addli r2, zero, 30
000de0  15002014  dma_cfg zero, zero, r2, 10
000de4  1f713000  addli r2, zero, 31
000de8  15002014  dma_cfg zero, zero, r2, 10
000dec  150b0b00  dma_cfg r22, r22, zero, 0
000df0  150b0002  dma_cfg r22, zero, zero, 1
000df4  15000004  dma_cfg zero, zero, zero, 2
000df8  15058006  dma_cfg r10, zero, r8, 3
000dfc  950c9008  dma_cfg r25, zero, r9, 4
000e00  9503800b  dma_cfg r7, zero, r24, 5
000e04  15000010  dma_cfg zero, zero, zero, 8
000e08  35000000  dma_run zero
000e0c  1500600b  dma_cfg zero, zero, r22, 5
000e10  15000010  dma_cfg zero, zero, zero, 8
000e14  1d900800  unlock r17
000e18  2bc10d00  lui r2, 220
000e1c  1d800400  lock zero, r9
000e20  150b0b00  dma_cfg r22, r22, zero, 0
000e24  9b130104  ori r7, r2, 64
000e28  15000304  dma_cfg zero, r6, zero, 2
000e2c  1f111000  addli r2, zero, 9
000e30  8b137710  add.s r7, r14, r7
000e34  95838206  dma_cfg r7, r5, r8, 3
000e38  1f030004  addli r6, zero, 512
000e3c  9f020010  addli r5, zero, 2048
000e40  9f630000  addli r7, zero, 6
000e44  950c9408  dma_cfg r25, r8, r9, 4
000e48  1583820b  dma_cfg r6, r5, r24, 5
000e4c  9f221000  addli r5, zero, 10
000e50  15000010  dma_cfg zero, zero, zero, 8
000e54  35000000  dma_run zero
000e58  1500600b  dma_cfg zero, zero, r22, 5
000e5c  15000010  dma_cfg zero, zero, zero, 8
000e60  1d900400  unlock r9
000e64  1d800800  lock zero, r17
000e68  15000014  dma_cfg zero, zero, zero, 10
000e6c  15006015  dma_cfg zero, zero, r22, 10
000e70  15007015  dma_cfg zero, zero, r23, 10
000e74  1500b014  dma_cfg zero, zero, r11, 10
000e78  15009014  dma_cfg zero, zero, r9, 10
000e7c  15001015  dma_cfg zero, zero, r17, 10
000e80  15007014  dma_cfg zero, zero, r7, 10
000e84  1500f014  dma_cfg zero, zero, r15, 10
000e88  15003015  dma_cfg zero, zero, r19, 10
000e8c  15002014  dma_cfg zero, zero, r2, 10
000e90  1f411000  addli r2, zero, 12
000e94  15005014  dma_cfg zero, zero, r5, 10
000e98  9f321000  addli r5, zero, 11
000e9c  15005014  dma_cfg zero, zero, r5, 10
000ea0  9f521000  addli r5, zero, 13
000ea4  15002014  dma_cfg zero, zero, r2, 10
000ea8  1f611000  addli r2, zero, 14
000eac  15005014  dma_cfg zero, zero, r5, 10
000eb0  9f222000  addli r5, zero, 18
000eb4  15002014  dma_cfg zero, zero, r2, 10
000eb8  1f711000  addli r2, zero, 15
000ebc  15002014  dma_cfg zero, zero, r2, 10
000ec0  1f112000  addli r2, zero, 17
000ec4  15000015  dma_cfg zero, zero, r16, 10
000ec8  15002014  dma_cfg zero, zero, r2, 10
000ecc  1f312000  addli r2, zero, 19
000ed0  15005014  dma_cfg zero, zero, r5, 10
000ed4  15002014  dma_cfg zero, zero, r2, 10
000ed8  1f412000  addli r2, zero, 20
000edc  15002014  dma_cfg zero, zero, r2, 10
000ee0  1f512000  addli r2, zero, 21
000ee4  15002014  dma_cfg zero, zero, r2, 10
000ee8  1f612000  addli r2, zero, 22
000eec  15002014  dma_cfg zero, zero, r2, 10
000ef0  1f712000  addli r2, zero, 23
000ef4  15002014  dma_cfg zero, zero, r2, 10
000ef8  1f013000  addli r2, zero, 24
000efc  15002014  dma_cfg zero, zero, r2, 10
000f00  1f113000  addli r2, zero, 25
000f04  15002014  dma_cfg zero, zero, r2, 10
000f08  1f213000  addli r2, zero, 26
000f0c  15002014  dma_cfg zero, zero, r2, 10
000f10  1f313000  addli r2, zero, 27
000f14  15002014  dma_cfg zero, zero, r2, 10
000f18  1f413000  addli r2, zero, 28
000f1c  15002014  dma_cfg zero, zero, r2, 10
000f20  1f513000  addli r2, zero, 29
000f24  15002014  dma_cfg zero, zero, r2, 10
000f28  1f613000  addli r2, zero, 30
000f2c  15002014  dma_cfg zero, zero, r2, 10
000f30  1f713000  addli r2, zero, 31
000f34  15002014  dma_cfg zero, zero, r2, 10
000f38  150b0b00  dma_cfg r22, r22, zero, 0
000f3c  150b0002  dma_cfg r22, zero, zero, 1
000f40  15000004  dma_cfg zero, zero, zero, 2
000f44  15058006  dma_cfg r10, zero, r8, 3
000f48  950c9008  dma_cfg r25, zero, r9, 4
000f4c  1503800b  dma_cfg r6, zero, r24, 5
000f50  15000010  dma_cfg zero, zero, zero, 8
000f54  35000000  dma_run zero
000f58  1500600b  dma_cfg zero, zero, r22, 5
000f5c  15000010  dma_cfg zero, zero, zero, 8
000f60  1d900800  unlock r17
000f64  7d800300  xsignal r7, 0
000f68  db060000  j 52
000f6c  7d100100  xwait r2, 0
000f70  1f111000  addli r2, zero, 9
000f74  7d100100  xwait r2, 0
000f78  1d000000  lock zero, zero
000f7c  810b0000  ds_cfg r23, zero, 0
000f80  810c0002  ds_cfg r25, zero, 1
000f84  010c001c  ds_cfg r24, zero, 14
000f88  810c001a  ds_cfg r25, zero, 13
000f8c  c1038505  shuffle_coa r7, r10, r24, 2
000f90  1d100000  unlock zero
000f94  7d800700  xsignal r15, 0
000f98  7d800900  xsignal r19, 0
000f9c  00310002  core_id r2
000fa0  37830000  beq r1, zero, 192
000fa4  9f000000  addli r1, zero, 0
000fa8  9f910100  addli r3, r3, 1
000fac  9f120000  addli r5, zero, 1
000fb0  9f830600  addli r7, r13, 0
000fb4  5b63ffff  j -1256
000fb8  00310002  core_id r2
000fbc  3b729100  bneq r2, r9, 156
000fc0  9f120000  addli r5, zero, 1
000fc4  1f130000  addli r6, zero, 1
000fc8  1f050000  addli r10, zero, 0
000fcc  7d900400  xwait r9, 0
000fd0  7d900900  xwait r19, 0
000fd4  b7f00100  beq r3, zero, 60
000fd8  1b37d500  slli r14, r10, 13
000fdc  1b358500  slli r10, r10, 8
000fe0  1d800200  lock zero, r5
000fe4  09049c01  mm_cfg r8, r24, r25, 0
000fe8  17177700  or r14, r14, r7
000fec  1715c501  or r10, r10, r28
000ff0  898b5404  mm_cfg r23, r9, r5, 2
000ff4  2915e810  mm_acc r10, r16, r14, 8
000ff8  1b071300  andi r14, r6, 1
000ffc  1f150000  addli r10, zero, 1
001000  1f030000  addli r6, zero, 0
001004  1d900200  unlock r5
001008  3b4f07fe  bneq r14, zero, -48
00100c  5b070000  j 56
001010  1b37d500  slli r14, r10, 13
001014  1b358500  slli r10, r10, 8
001018  1d800200  lock zero, r5
00101c  09049c01  mm_cfg r8, r24, r25, 0
001020  17177700  or r14, r14, r7
001024  1715c501  or r10, r10, r28
001028  898b5404  mm_cfg r23, r9, r5, 2
00102c  2905e810  mm r10, r16, r14, 8
001030  1b071300  andi r14, r6, 1
001034  1f150000  addli r10, zero, 1
001038  1f030000  addli r6, zero, 0
00103c  1d900200  unlock r5
001040  3b4f07fe  bneq r14, zero, -48
001044  9f121000  addli r5, zero, 9
001048  7d800800  xsignal r17, 0
00104c  7d800200  xsignal r5, 0
001050  3bdd00fe  bneq r1, zero, -172
001054  5b04ffff  j -2016
001058  3bbd00fe  bneq r1, zero, -180
00105c  5b010000  j 8
001060  375091fc  beq r2, r9, -2028
001064  3b6001fc  bneq r2, zero, -2024
001068  e300bff8  loadli.w r1,  -936(r30)
00106c  6b598fc6  load.d r[19:20], -920(r30)
001070  b3810028  zext_int2long r[4:5], r1
001074  9f000007  addli r1, zero, 896
001078  b3820028  zext_int2long r[6:7], r1
00107c  e340bff8  loadli.w r1,  -932(r30)
001080  8ba25140  min.ul r[6:7], r[4:5], r[6:7]
001084  b3960028  sext_int2long r[14:15], r1
001088  9f202000  addli r1, zero, 18
00108c  a7820201  addli.d r[6:7], r[6:7], 128
001090  17391902  sll.d r[19:20], r[19:20], r1
001094  eb500f01  load.d r[2:3], 16(r30)
001098  8bb7a641  min.sl r[16:17], r[14:15], r[27:28]
00109c  8ba23248  max.ul r[6:7], r[6:7], r[4:5]
0010a0  a7870701  addli.d r[16:17], r[16:17], 128
0010a4  0ba92011  add.ul r[19:20], r[2:3], r[19:20]
0010a8  eb500fc6  load.d r[2:3], -928(r30)
0010ac  8bb13218  sub.sl r[4:5], r[6:7], r[4:5]
0010b0  b3820c28  zext_int2long r[6:7], r25
0010b4  8bb7d748  max.sl r[16:17], r[16:17], r[14:15]
0010b8  8ba15140  min.ul r[4:5], r[4:5], r[6:7]
0010bc  17bd6003  sll.d r[27:28], r[2:3], r22
0010c0  9f201000  addli r1, zero, 10
0010c4  8bb6d718  sub.sl r[14:15], r[16:17], r[14:15]
0010c8  00310002  core_id r2
0010cc  7d900000  xwait r1, 0
0010d0  1d800800  lock zero, r17
0010d4  8b27a911  add.ul r[16:17], r[19:20], r[27:28]
0010d8  9b100e04  ori r1, r28, 64
0010dc  8bb25640  min.sl r[6:7], r[14:15], r[6:7]
0010e0  9f091000  addli r19, zero, 8
0010e4  150b0b00  dma_cfg r22, r22, zero, 0
0010e8  15000b02  dma_cfg zero, r22, zero, 1
0010ec  15080004  dma_cfg r16, zero, zero, 2
0010f0  95878006  dma_cfg r15, r1, r8, 3
0010f4  9ff03100  addli r1, r3, 31
0010f8  9bb11100  slli r3, r3, 1
0010fc  1f020010  addli r4, zero, 2048
001100  9f770000  addli r15, zero, 7
001104  9bc05000  srli r1, r1, 5
001108  15841c08  dma_cfg r8, r25, r1, 4
00110c  9b80e103  andi r1, r3, 62
001110  9f010004  addli r3, zero, 512
001114  1582510a  dma_cfg r4, r3, r5, 5
001118  15001010  dma_cfg zero, zero, r1, 8
00111c  35000000  dma_run zero
001120  1500600b  dma_cfg zero, zero, r22, 5
001124  9f301000  addli r1, zero, 11
001128  15000010  dma_cfg zero, zero, zero, 8
00112c  1d900800  unlock r17
001130  5be9feff  j -2232
001134  7d000000  xsignal zero, 0
001138  bb600100  bneq r2, zero, 56
00113c  9f200000  addli r1, zero, 2
001140  7d100000  xwait zero, 0
001144  7d100000  xwait zero, 0
001148  7d100000  xwait zero, 0
00114c  7d100000  xwait zero, 0
001150  7d100000  xwait zero, 0
001154  7d100000  xwait zero, 0
001158  7d100000  xwait zero, 0
00115c  7d100000  xwait zero, 0
001160  1d800000  lock zero, r1
001164  0d000020  ew_cfg zero, zero, zero, 16
001168  1d900000  unlock r1
00116c  7d400000  xsignal_mode_cfg zero
001170  9f8e7e07  addli sp, sp, 952
001174  00a00300  mfence { lm, sm, gm }
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
001204  00100000  exit
001208  00100000  exit
00120c  00100000  exit
001210  00100000  exit
001214  00100000  exit
001218  00100000  exit
00121c  00100000  exit
001220  00100000  exit
001224  00100000  exit
001228  00100000  exit
00122c  00100000  exit
001230  00100000  exit
001234  00100000  exit
001238  00100000  exit
00123c  00100000  exit
001240  00100000  exit
001244  00100000  exit
001248  00100000  exit
00124c  00100000  exit
001250  00100000  exit
001254  00100000  exit
001258  00100000  exit
00125c  00100000  exit
001260  00100000  exit
001264  00100000  exit
001268  00100000  exit
00126c  00100000  exit
001270  00100000  exit
001274  00100000  exit
001278  00100000  exit
00127c  00100000  exit
001280  00100000  exit
001284  00100000  exit
001288  00100000  exit
00128c  00100000  exit
001290  00100000  exit
001294  00100000  exit
001298  00100000  exit
00129c  00100000  exit
0012a0  00100000  exit
0012a4  00100000  exit
0012a8  00100000  exit
0012ac  00100000  exit
0012b0  00100000  exit
0012b4  00100000  exit
0012b8  00100000  exit
0012bc  00100000  exit
0012c0  00100000  exit
0012c4  00100000  exit
0012c8  00100000  exit
0012cc  00100000  exit
0012d0  00100000  exit
0012d4  00100000  exit
0012d8  00100000  exit
0012dc  00100000  exit
0012e0  00100000  exit
0012e4  00100000  exit
0012e8  00100000  exit
0012ec  00100000  exit
0012f0  00100000  exit
0012f4  00100000  exit
0012f8  00100000  exit
0012fc  00100000  exit
001300  00100000  exit
001304  00100000  exit
001308  00100000  exit
00130c  00100000  exit
001310  00100000  exit
001314  00100000  exit
001318  00100000  exit
00131c  00100000  exit
001320  00100000  exit
001324  00100000  exit
001328  00100000  exit
00132c  00100000  exit
001330  00100000  exit
001334  00100000  exit
001338  00100000  exit
00133c  00100000  exit
001340  00100000  exit
001344  00100000  exit
001348  00100000  exit
00134c  00100000  exit
001350  00100000  exit
001354  00100000  exit
001358  00100000  exit
00135c  00100000  exit
001360  00100000  exit
001364  00100000  exit
001368  00100000  exit
00136c  00100000  exit
001370  00100000  exit
001374  00100000  exit
001378  00100000  exit
00137c  00100000  exit
001380  00100000  exit
001384  00100000  exit
001388  00100000  exit
00138c  00100000  exit
001390  00100000  exit
001394  00100000  exit
001398  00100000  exit
00139c  00100000  exit
0013a0  00100000  exit
0013a4  00100000  exit
0013a8  00100000  exit
0013ac  00100000  exit
0013b0  00100000  exit
0013b4  00100000  exit
0013b8  00100000  exit
