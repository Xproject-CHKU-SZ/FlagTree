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
00005c  9f496000  addli r19, zero, 52
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
0000b4  9f8e2ef9  addli sp, sp, -880
0000b8  1f110000  addli r2, zero, 1
0000bc  80300002  core_id r1
0000c0  1f8f6e06  addli r30, sp, 816
0000c4  7d400100  xsignal_mode_cfg r2
0000c8  b7900000  beq r1, zero, 36
0000cc  abf1ffff  lui r3, 1048575
0000d0  7d100100  xwait r2, 0
0000d4  7d100100  xwait r2, 0
0000d8  7d100000  xwait zero, 0
0000dc  1b91f1ff  ori r2, r3, 4095
0000e0  80210104  csr_set csr3, r2
0000e4  00d00100  sync_group
0000e8  5b6e0000  j 880
0000ec  9f220000  addli r5, zero, 2
0000f0  7d510100  uni_sram_cfg r2, r2
0000f4  1f430000  addli r6, zero, 4
0000f8  eb510f02  load.d r[4:5], 32(r30)
0000fc  9f030020  addli r7, zero, 4096
000100  1d800200  lock zero, r5
000104  0d010020  ew_cfg r2, zero, zero, 16
000108  1d900200  unlock r5
00010c  1d000300  lock zero, r6
000110  15000000  dma_cfg zero, zero, zero, 0
000114  15000204  dma_cfg zero, r4, zero, 2
000118  15807106  dma_cfg zero, r3, r7, 3
00011c  9f014000  addli r3, zero, 32
000120  1f020008  addli r4, zero, 1024
000124  15002008  dma_cfg zero, zero, r2, 4
000128  35000000  dma_run zero
00012c  1d100300  unlock r6
000130  7d000100  xsignal r2, 0
000134  7d100100  xwait r2, 0
000138  1d000000  lock zero, zero
00013c  81020000  ds_cfg r5, zero, 0
000140  01000002  ds_cfg zero, zero, 1
000144  01000016  ds_cfg zero, zero, 11
000148  8101001a  ds_cfg r3, zero, 13
00014c  9f510000  addli r3, zero, 5
000150  0102001c  ds_cfg r4, zero, 14
000154  a1134008  shuffle_batch r7, zero, r4, 4
000158  1f320000  addli r4, zero, 3
00015c  1d100000  unlock zero
000160  7d000100  xsignal r2, 0
000164  7d100100  xwait r2, 0
000168  1d800200  lock zero, r5
00016c  2b110100  lui r2, 17
000170  0da00300  ewtable_cfg r7, 0
000174  0d200102  ewtable_cfg r2, 1
000178  2bf1ffff  lui r2, 1048575
00017c  1d900200  unlock r5
000180  7d000000  xsignal zero, 0
000184  7d100000  xwait zero, 0
000188  1b11f1ff  ori r2, r2, 4095
00018c  80210104  csr_set csr3, r2
000190  1f311000  addli r2, zero, 11
000194  00d00100  sync_group
000198  7d000100  xsignal r2, 0
00019c  7d000100  xsignal r2, 0
0001a0  7d000100  xsignal r2, 0
0001a4  7d000100  xsignal r2, 0
0001a8  7d000100  xsignal r2, 0
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
0001dc  7d800100  xsignal r3, 0
0001e0  7d800100  xsignal r3, 0
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
00026c  1f111000  addli r2, zero, 9
000270  9f710000  addli r3, zero, 7
000274  7d000200  xsignal r4, 0
000278  7d000200  xsignal r4, 0
00027c  7d000200  xsignal r4, 0
000280  7d000200  xsignal r4, 0
000284  7d000200  xsignal r4, 0
000288  7d000200  xsignal r4, 0
00028c  7d000200  xsignal r4, 0
000290  7d000200  xsignal r4, 0
000294  7d000200  xsignal r4, 0
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
0002d8  7d000100  xsignal r2, 0
0002dc  7d000100  xsignal r2, 0
0002e0  7d000100  xsignal r2, 0
0002e4  7d000100  xsignal r2, 0
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
00036c  7d000100  xsignal r2, 0
000370  7d000100  xsignal r2, 0
000374  7d000100  xsignal r2, 0
000378  7d000100  xsignal r2, 0
00037c  7d000100  xsignal r2, 0
000380  7d000100  xsignal r2, 0
000384  7d000100  xsignal r2, 0
000388  7d000100  xsignal r2, 0
00038c  7d000100  xsignal r2, 0
000390  7d000100  xsignal r2, 0
000394  7d000100  xsignal r2, 0
000398  7d000100  xsignal r2, 0
00039c  7d000100  xsignal r2, 0
0003a0  7d000100  xsignal r2, 0
0003a4  7d000100  xsignal r2, 0
0003a8  7d000100  xsignal r2, 0
0003ac  7d000100  xsignal r2, 0
0003b0  7d000100  xsignal r2, 0
0003b4  7d000100  xsignal r2, 0
0003b8  7d000100  xsignal r2, 0
0003bc  7d000100  xsignal r2, 0
0003c0  7d000100  xsignal r2, 0
0003c4  7d000100  xsignal r2, 0
0003c8  7d000100  xsignal r2, 0
0003cc  7d000100  xsignal r2, 0
0003d0  7d000100  xsignal r2, 0
0003d4  7d000100  xsignal r2, 0
0003d8  7d800100  xsignal r3, 0
0003dc  7d800100  xsignal r3, 0
0003e0  7d800100  xsignal r3, 0
0003e4  7d800100  xsignal r3, 0
0003e8  7d800100  xsignal r3, 0
0003ec  7d800100  xsignal r3, 0
0003f0  7d800100  xsignal r3, 0
0003f4  7d800100  xsignal r3, 0
0003f8  1f511000  addli r2, zero, 13
0003fc  9f711000  addli r3, zero, 15
000400  7d000100  xsignal r2, 0
000404  7d000100  xsignal r2, 0
000408  7d000100  xsignal r2, 0
00040c  7d000100  xsignal r2, 0
000410  7d000100  xsignal r2, 0
000414  7d800100  xsignal r3, 0
000418  7d800100  xsignal r3, 0
00041c  7d800100  xsignal r3, 0
000420  7d800100  xsignal r3, 0
000424  7d800100  xsignal r3, 0
000428  1f312000  addli r2, zero, 19
00042c  9f412000  addli r3, zero, 20
000430  7d000100  xsignal r2, 0
000434  7d000100  xsignal r2, 0
000438  7d000100  xsignal r2, 0
00043c  7d000100  xsignal r2, 0
000440  7d000100  xsignal r2, 0
000444  7d800100  xsignal r3, 0
000448  7d800100  xsignal r3, 0
00044c  7d800100  xsignal r3, 0
000450  7d800100  xsignal r3, 0
000454  7d800100  xsignal r3, 0
000458  63015f00  loadli.w r2,  40(r30)
00045c  e3415f00  loadli.w r3,  44(r30)
000460  00d20002  load_param_i r4, 1
000464  e3026f00  loadli.w r5,  48(r30)
000468  80530002  load_param_i r7, 0
00046c  2bf3ffff  lui r6, 1048575
000470  e70e0ffe  storeli.w zero, -24(r30)
000474  670d0ffe  storeli.w zero, -48(r30)
000478  e70b0ffe  storeli.w zero, -72(r30)
00047c  670a0ffe  storeli.w zero, -96(r30)
000480  e7470ffe  storeli.w zero, -132(r30)
000484  e7030ffc  storeli.w zero, -456(r30)
000488  67010ffc  storeli.w zero, -496(r30)
00048c  e7440ffa  storeli.w zero, -692(r30)
000490  0b912120  mul.s r2, r3, r2
000494  9f010200  addli r3, r4, 0
000498  8b115150  fmac.s r3, r2, r5
00049c  8b125120  mul.s r5, r2, r5
0004a0  9ff1f1ff  addli r3, r3, -1
0004a4  8b914130  div.s r3, r3, r4
0004a8  1b12f3ff  ori r4, r6, 4095
0004ac  e74e4ffe  storeli.w r4, -20(r30)
0004b0  670f4ffe  storeli.w r4, -16(r30)
0004b4  674f4ffe  storeli.w r4, -12(r30)
0004b8  e70f4ffe  storeli.w r4, -8(r30)
0004bc  e74f4ffe  storeli.w r4, -4(r30)
0004c0  674d4ffe  storeli.w r4, -44(r30)
0004c4  e70d4ffe  storeli.w r4, -40(r30)
0004c8  e74d4ffe  storeli.w r4, -36(r30)
0004cc  670e4ffe  storeli.w r4, -32(r30)
0004d0  674e4ffe  storeli.w r4, -28(r30)
0004d4  e74b4ffe  storeli.w r4, -68(r30)
0004d8  670c4ffe  storeli.w r4, -64(r30)
0004dc  674c4ffe  storeli.w r4, -60(r30)
0004e0  e70c4ffe  storeli.w r4, -56(r30)
0004e4  e74c4ffe  storeli.w r4, -52(r30)
0004e8  674a4ffe  storeli.w r4, -92(r30)
0004ec  e70a4ffe  storeli.w r4, -88(r30)
0004f0  e74a4ffe  storeli.w r4, -84(r30)
0004f4  670b4ffe  storeli.w r4, -80(r30)
0004f8  674b4ffe  storeli.w r4, -76(r30)
0004fc  67084ffe  storeli.w r4, -128(r30)
000500  67484ffe  storeli.w r4, -124(r30)
000504  e7084ffe  storeli.w r4, -120(r30)
000508  e7484ffe  storeli.w r4, -116(r30)
00050c  67094ffe  storeli.w r4, -112(r30)
000510  67494ffe  storeli.w r4, -108(r30)
000514  e7094ffe  storeli.w r4, -104(r30)
000518  e7494ffe  storeli.w r4, -100(r30)
00051c  e7434ffc  storeli.w r4, -452(r30)
000520  67044ffc  storeli.w r4, -448(r30)
000524  67444ffc  storeli.w r4, -444(r30)
000528  e7044ffc  storeli.w r4, -440(r30)
00052c  e7444ffc  storeli.w r4, -436(r30)
000530  67054ffc  storeli.w r4, -432(r30)
000534  67454ffc  storeli.w r4, -428(r30)
000538  e7054ffc  storeli.w r4, -424(r30)
00053c  e7454ffc  storeli.w r4, -420(r30)
000540  67064ffc  storeli.w r4, -416(r30)
000544  67464ffc  storeli.w r4, -412(r30)
000548  e7064ffc  storeli.w r4, -408(r30)
00054c  e7464ffc  storeli.w r4, -404(r30)
000550  67074ffc  storeli.w r4, -400(r30)
000554  67474ffc  storeli.w r4, -396(r30)
000558  e7074ffc  storeli.w r4, -392(r30)
00055c  e7474ffc  storeli.w r4, -388(r30)
000560  67084ffc  storeli.w r4, -384(r30)
000564  67484ffc  storeli.w r4, -380(r30)
000568  e7084ffc  storeli.w r4, -376(r30)
00056c  e7484ffc  storeli.w r4, -372(r30)
000570  67094ffc  storeli.w r4, -368(r30)
000574  67494ffc  storeli.w r4, -364(r30)
000578  e7094ffc  storeli.w r4, -360(r30)
00057c  e7494ffc  storeli.w r4, -356(r30)
000580  670a4ffc  storeli.w r4, -352(r30)
000584  674a4ffc  storeli.w r4, -348(r30)
000588  e70a4ffc  storeli.w r4, -344(r30)
00058c  e74a4ffc  storeli.w r4, -340(r30)
000590  670b4ffc  storeli.w r4, -336(r30)
000594  674b4ffc  storeli.w r4, -332(r30)
000598  e70b4ffc  storeli.w r4, -328(r30)
00059c  e74b4ffc  storeli.w r4, -324(r30)
0005a0  670c4ffc  storeli.w r4, -320(r30)
0005a4  674c4ffc  storeli.w r4, -316(r30)
0005a8  e70c4ffc  storeli.w r4, -312(r30)
0005ac  e74c4ffc  storeli.w r4, -308(r30)
0005b0  670d4ffc  storeli.w r4, -304(r30)
0005b4  674d4ffc  storeli.w r4, -300(r30)
0005b8  e70d4ffc  storeli.w r4, -296(r30)
0005bc  e74d4ffc  storeli.w r4, -292(r30)
0005c0  670e4ffc  storeli.w r4, -288(r30)
0005c4  674e4ffc  storeli.w r4, -284(r30)
0005c8  e70e4ffc  storeli.w r4, -280(r30)
0005cc  e74e4ffc  storeli.w r4, -276(r30)
0005d0  670f4ffc  storeli.w r4, -272(r30)
0005d4  674f4ffc  storeli.w r4, -268(r30)
0005d8  e70f4ffc  storeli.w r4, -264(r30)
0005dc  e74f4ffc  storeli.w r4, -260(r30)
0005e0  67004ffe  storeli.w r4, -256(r30)
0005e4  67404ffe  storeli.w r4, -252(r30)
0005e8  e7004ffe  storeli.w r4, -248(r30)
0005ec  e7404ffe  storeli.w r4, -244(r30)
0005f0  67014ffe  storeli.w r4, -240(r30)
0005f4  67414ffe  storeli.w r4, -236(r30)
0005f8  e7014ffe  storeli.w r4, -232(r30)
0005fc  e7414ffe  storeli.w r4, -228(r30)
000600  67024ffe  storeli.w r4, -224(r30)
000604  67424ffe  storeli.w r4, -220(r30)
000608  e7024ffe  storeli.w r4, -216(r30)
00060c  e7424ffe  storeli.w r4, -212(r30)
000610  67034ffe  storeli.w r4, -208(r30)
000614  67434ffe  storeli.w r4, -204(r30)
000618  e7034ffe  storeli.w r4, -200(r30)
00061c  e7434ffe  storeli.w r4, -196(r30)
000620  67044ffe  storeli.w r4, -192(r30)
000624  67444ffe  storeli.w r4, -188(r30)
000628  e7044ffe  storeli.w r4, -184(r30)
00062c  e7444ffe  storeli.w r4, -180(r30)
000630  67054ffe  storeli.w r4, -176(r30)
000634  67454ffe  storeli.w r4, -172(r30)
000638  e7054ffe  storeli.w r4, -168(r30)
00063c  e7454ffe  storeli.w r4, -164(r30)
000640  67064ffe  storeli.w r4, -160(r30)
000644  67464ffe  storeli.w r4, -156(r30)
000648  e7064ffe  storeli.w r4, -152(r30)
00064c  e7464ffe  storeli.w r4, -148(r30)
000650  67074ffe  storeli.w r4, -144(r30)
000654  67474ffe  storeli.w r4, -140(r30)
000658  e7074ffe  storeli.w r4, -136(r30)
00065c  67414ffc  storeli.w r4, -492(r30)
000660  e7014ffc  storeli.w r4, -488(r30)
000664  e7414ffc  storeli.w r4, -484(r30)
000668  67024ffc  storeli.w r4, -480(r30)
00066c  67424ffc  storeli.w r4, -476(r30)
000670  e7024ffc  storeli.w r4, -472(r30)
000674  e7424ffc  storeli.w r4, -468(r30)
000678  67034ffc  storeli.w r4, -464(r30)
00067c  67434ffc  storeli.w r4, -460(r30)
000680  67054ffa  storeli.w r4, -688(r30)
000684  67454ffa  storeli.w r4, -684(r30)
000688  e7054ffa  storeli.w r4, -680(r30)
00068c  e7454ffa  storeli.w r4, -676(r30)
000690  67064ffa  storeli.w r4, -672(r30)
000694  67464ffa  storeli.w r4, -668(r30)
000698  e7064ffa  storeli.w r4, -664(r30)
00069c  e7464ffa  storeli.w r4, -660(r30)
0006a0  67074ffa  storeli.w r4, -656(r30)
0006a4  67474ffa  storeli.w r4, -652(r30)
0006a8  e7074ffa  storeli.w r4, -648(r30)
0006ac  e7474ffa  storeli.w r4, -644(r30)
0006b0  67084ffa  storeli.w r4, -640(r30)
0006b4  67484ffa  storeli.w r4, -636(r30)
0006b8  e7084ffa  storeli.w r4, -632(r30)
0006bc  e7484ffa  storeli.w r4, -628(r30)
0006c0  67094ffa  storeli.w r4, -624(r30)
0006c4  67494ffa  storeli.w r4, -620(r30)
0006c8  e7094ffa  storeli.w r4, -616(r30)
0006cc  e7494ffa  storeli.w r4, -612(r30)
0006d0  670a4ffa  storeli.w r4, -608(r30)
0006d4  674a4ffa  storeli.w r4, -604(r30)
0006d8  e70a4ffa  storeli.w r4, -600(r30)
0006dc  e74a4ffa  storeli.w r4, -596(r30)
0006e0  670b4ffa  storeli.w r4, -592(r30)
0006e4  674b4ffa  storeli.w r4, -588(r30)
0006e8  e70b4ffa  storeli.w r4, -584(r30)
0006ec  e74b4ffa  storeli.w r4, -580(r30)
0006f0  670c4ffa  storeli.w r4, -576(r30)
0006f4  674c4ffa  storeli.w r4, -572(r30)
0006f8  e70c4ffa  storeli.w r4, -568(r30)
0006fc  e74c4ffa  storeli.w r4, -564(r30)
000700  670d4ffa  storeli.w r4, -560(r30)
000704  674d4ffa  storeli.w r4, -556(r30)
000708  e70d4ffa  storeli.w r4, -552(r30)
00070c  e74d4ffa  storeli.w r4, -548(r30)
000710  670e4ffa  storeli.w r4, -544(r30)
000714  674e4ffa  storeli.w r4, -540(r30)
000718  e70e4ffa  storeli.w r4, -536(r30)
00071c  e74e4ffa  storeli.w r4, -532(r30)
000720  670f4ffa  storeli.w r4, -528(r30)
000724  674f4ffa  storeli.w r4, -524(r30)
000728  e70f4ffa  storeli.w r4, -520(r30)
00072c  e74f4ffa  storeli.w r4, -516(r30)
000730  67004ffc  storeli.w r4, -512(r30)
000734  67404ffc  storeli.w r4, -508(r30)
000738  e7004ffc  storeli.w r4, -504(r30)
00073c  e7404ffc  storeli.w r4, -500(r30)
000740  0b917120  mul.s r2, r3, r7
000744  8b917150  fmac.s r3, r3, r7
000748  8b915140  min.s r3, r3, r5
00074c  cbed2102  ble.s r3, r2, 1912
000750  b3910128  sext_int2long r[4:5], r3
000754  b3160128  sext_int2long r[14:15], r2
000758  e304dfff  loadli.w r9,  -24(r30)
00075c  e309afff  loadli.w r19,  -48(r30)
000760  e30c7fff  loadli.w r25,  -72(r30)
000764  6345fffe  loadli.w r10,  -132(r30)
000768  e3052ffc  loadli.w r11,  -496(r30)
00076c  63469ffa  loadli.w r12,  -692(r30)
000770  e3077ffc  loadli.w r15,  -456(r30)
000774  1f080001  addli r16, zero, 128
000778  9f0d1000  addli r27, zero, 8
00077c  1f5a0000  addli r20, zero, 5
000780  9f4a0000  addli r21, zero, 4
000784  9f2b0000  addli r23, zero, 2
000788  1f0e6000  addli r28, zero, 48
00078c  9f121000  addli r5, zero, 9
000790  1f0b4000  addli r22, zero, 32
000794  1f0d8000  addli r26, zero, 64
000798  67030ffa  storeli.w zero, -720(r30)
00079c  73383fce  store.d r[4:5], -784(r30)
0007a0  e3014fff  loadli.w r3,  -96(r30)
0007a4  2b421300  lui r4, 308
0007a8  67433ffa  storeli.w r3, -716(r30)
0007ac  9f71f01f  addli r3, zero, 4095
0007b0  2b01feff  lui r2, 1048544
0007b4  73342fce  store.d r[3:4], -792(r30)
0007b8  ab410e00  lui r3, 228
0007bc  1b9101a0  ori r2, r3, 2560
0007c0  ab810d00  lui r3, 216
0007c4  674e2ff8  storeli.w r2, -796(r30)
0007c8  1b91d1b4  ori r2, r3, 2893
0007cc  abf17fff  lui r3, 1046527
0007d0  670e2ff8  storeli.w r2, -800(r30)
0007d4  1b1102a0  ori r2, r4, 2560
0007d8  2bf27f7f  lui r4, 522239
0007dc  e74d2ff8  storeli.w r2, -804(r30)
0007e0  1b91f1ff  ori r2, r3, 4095
0007e4  e70d2ff8  storeli.w r2, -808(r30)
0007e8  1b11f2ff  ori r2, r4, 4095
0007ec  674d2ff8  storeli.w r2, -812(r30)
0007f0  5b100000  j 128
0007f4  6b510f01  load.d r[3:4], 16(r30)
0007f8  eb538fd0  load.d r[8:9], -760(r30)
0007fc  1f521000  addli r4, zero, 13
000800  7d100200  xwait r4, 0
000804  1d800a00  lock zero, r21
000808  1bb22800  slli r4, r17, 2
00080c  0b217110  add.ul r[3:4], r[3:4], r[8:9]
000810  15000000  dma_cfg zero, zero, zero, 0
000814  15800104  dma_cfg zero, r3, zero, 2
000818  15034106  dma_cfg r6, r2, r4, 3
00081c  1f110000  addli r2, zero, 1
000820  9f010004  addli r3, zero, 512
000824  95812108  dma_cfg r3, r3, r2, 4
000828  35000000  dma_run zero
00082c  1d900a00  unlock r21
000830  1f411000  addli r2, zero, 12
000834  e30c4ffa  loadli.w r25,  -736(r30)
000838  7d000100  xsignal r2, 0
00083c  e3445ffa  loadli.w r9,  -724(r30)
000840  e3095ffa  loadli.w r19,  -728(r30)
000844  9f9c0c00  addli r25, r25, 1
000848  eb568fd1  load.d r[14:15], -744(r30)
00084c  6b510fcf  load.d r[3:4], -784(r30)
000850  a7960600  addli.d r[14:15], r[14:15], 1
000854  9f990900  addli r19, r19, 1
000858  9f940400  addli r9, r9, 1
00085c  13b12604  setlt.sl r2, r[14:15], r[3:4]
000860  e3416ffa  loadli.w r3,  -716(r30)
000864  9f910100  addli r3, r3, 1
000868  67433ffa  storeli.w r3, -716(r30)
00086c  37590102  beq r2, zero, 1620
000870  e7023ffb  storeli.w r19, -728(r30)
000874  3bb05001  bneq r1, r21, 12
000878  1f311000  addli r2, zero, 11
00087c  7d100100  xwait r2, 0
000880  63016f00  loadli.w r2,  48(r30)
000884  e7429ffa  storeli.w r9, -724(r30)
000888  733cdfd0  store.d r[14:15], -744(r30)
00088c  67029ffb  storeli.w r25, -736(r30)
000890  0b922630  div.s r4, r13, r2
000894  63415f00  loadli.w r2,  44(r30)
000898  8b142230  div.s r9, r4, r2
00089c  1f012000  addli r2, zero, 16
0008a0  8b990431  div.s r19, r9, r16
0008a4  1bb23900  slli r4, r19, 3
0008a8  0b134118  sub.s r6, r2, r4
0008ac  1f711000  addli r2, zero, 15
0008b0  0b1cb341  min.s r24, r6, r27
0008b4  0b938439  mod.s r6, r9, r24
0008b8  0b126210  add.s r4, r4, r6
0008bc  13044104  setlt.u r8, r2, r4
0008c0  33030228  zext_int2long r[7:8], r4
0008c4  1f511000  addli r2, zero, 13
0008c8  73306fd0  store.d r[7:8], -768(r30)
0008cc  17332302  sll.d r[7:8], r[7:8], r2
0008d0  3b300400  bneq r8, zero, 12
0008d4  33010028  zext_int2long r[3:4], zero
0008d8  db010000  j 12
0008dc  6b518fce  load.d r[3:4], -792(r30)
0008e0  17012302  and.d r[3:4], r[7:8], r[3:4]
0008e4  9bb87900  slli r17, r19, 7
0008e8  73302fd4  store.d r[3:4], -704(r30)
0008ec  63016ffa  loadli.w r2,  -720(r30)
0008f0  9b317200  slli r3, r4, 7
0008f4  9f06a000  addli r13, zero, 80
0008f8  1f670000  addli r14, zero, 6
0008fc  1f040000  addli r8, zero, 0
000900  1f120000  addli r4, zero, 1
000904  9f0c0000  addli r25, zero, 0
000908  8b941419  sub.s r9, r9, r17
00090c  e74f3ff8  storeli.w r3, -772(r30)
000910  8b184139  mod.s r17, r2, r20
000914  1f110100  addli r2, r2, 1
000918  8b948431  div.s r9, r9, r24
00091c  67032ffa  storeli.w r2, -720(r30)
000920  1f710000  addli r2, zero, 7
000924  1bbc0801  slli r24, r17, 16
000928  33890428  zext_int2long r[19:20], r9
00092c  17392902  sll.d r[19:20], r[19:20], r2
000930  1bb17400  slli r2, r9, 7
000934  67412ffa  storeli.w r2, -748(r30)
000938  6b518f00  load.d r[3:4], 8(r30)
00093c  97387903  sll.d r[18:19], r[19:20], r23
000940  73341fd1  store.d r[18:19], -760(r30)
000944  0b211111  add.ul r[3:4], r[3:4], r[18:19]
000948  733c2fd2  store.d r[3:4], -712(r30)
00094c  5b030000  j 24
000950  1b011200  andi r2, r4, 1
000954  37490100  beq r2, zero, 592
000958  9f9c0c00  addli r25, r25, 1
00095c  1f140000  addli r8, zero, 1
000960  1f020000  addli r4, zero, 0
000964  8b945538  mod.s r9, r11, r5
000968  8b18c639  mod.s r17, r12, r28
00096c  2b010500  lui r2, 80
000970  1f160600  addli r12, r12, 1
000974  9f950500  addli r11, r11, 1
000978  9bb4e400  slli r9, r9, 14
00097c  9bb9e800  slli r19, r17, 14
000980  8b942410  add.s r9, r9, r2
000984  37927001  beq r1, r23, 132
000988  b3080428  zext_int2long r[18:19], r8
00098c  3be5e000  bneq r1, r14, 344
000990  97b84803  sll.d r[18:19], r[18:19], r20
000994  6b510fd4  load.d r[3:4], -704(r30)
000998  b30d0d28  zext_int2long r[28:29], r26
00099c  1f04000f  addli r8, zero, 1920
0009a0  eb560f00  load.d r[14:15], 0(r30)
0009a4  97986802  or.d r[18:19], r[18:19], r[7:8]
0009a8  0bb12818  sub.sl r[3:4], r[18:19], r[3:4]
0009ac  97b87803  sll.d r[18:19], r[18:19], r23
0009b0  0f11b161  div.sl r[3:4], r[3:4], r[28:29]
0009b4  b30d0428  zext_int2long r[28:29], r8
0009b8  1f340000  addli r8, zero, 3
0009bc  8ba81611  add.ul r[18:19], r[14:15], r[18:19]
0009c0  1f670000  addli r14, zero, 6
0009c4  9f06a000  addli r13, zero, 80
0009c8  7d100400  xwait r8, 0
0009cc  1d800a00  lock zero, r21
0009d0  15000000  dma_cfg zero, zero, zero, 0
0009d4  15000904  dma_cfg zero, r18, zero, 2
0009d8  95840807  dma_cfg r9, r17, r16, 3
0009dc  8b3db141  min.sl r[28:29], r[3:4], r[28:29]
0009e0  0bb12d18  sub.sl r[3:4], r[28:29], r[3:4]
0009e4  1f0e6000  addli r28, zero, 48
0009e8  9f0d1000  addli r27, zero, 8
0009ec  1f010101  addli r2, r2, 128
0009f0  9f010002  addli r3, zero, 256
0009f4  15882108  dma_cfg r16, r3, r2, 4
0009f8  35000000  dma_run zero
0009fc  1d900a00  unlock r21
000a00  7d800b00  xsignal r23, 0
000a04  db060000  j 52
000a08  7d900b00  xwait r23, 0
000a0c  7d100a00  xwait r20, 0
000a10  1d000000  lock zero, zero
000a14  1f310000  addli r2, zero, 3
000a18  810b0000  ds_cfg r23, zero, 0
000a1c  010b0002  ds_cfg r22, zero, 1
000a20  010b001c  ds_cfg r22, zero, 14
000a24  0108001a  ds_cfg r16, zero, 13
000a28  a1996403  shuffle_batch r19, r9, r22, 1
000a2c  1d100000  unlock zero
000a30  7d000100  xsignal r2, 0
000a34  7d800a00  xsignal r21, 0
000a38  0b91d738  mod.s r2, r15, r13
000a3c  9f970700  addli r15, r15, 1
000a40  1f150500  addli r10, r10, 1
000a44  1b34e100  slli r8, r2, 14
000a48  3bac50ff  bneq r1, r21, -248
000a4c  9f140000  addli r9, zero, 1
000a50  9f180000  addli r17, zero, 1
000a54  1f090000  addli r18, zero, 0
000a58  7d900a00  xwait r21, 0
000a5c  7d900d00  xwait r27, 0
000a60  b7f00c00  beq r25, zero, 60
000a64  1b31d900  slli r2, r18, 13
000a68  9b318900  slli r3, r18, 8
000a6c  1d800400  lock zero, r9
000a70  1f190000  addli r18, zero, 1
000a74  090d0b01  mm_cfg r26, r22, r16, 0
000a78  17118100  or r2, r2, r8
000a7c  97918101  or r3, r3, r24
000a80  898b9a04  mm_cfg r23, r21, r9, 2
000a84  a9912910  mm_acc r3, r19, r2, 8
000a88  1b811800  andi r2, r17, 1
000a8c  9f080000  addli r17, zero, 0
000a90  1d900400  unlock r9
000a94  3b4f01fe  bneq r2, zero, -48
000a98  5b070000  j 56
000a9c  1b31d900  slli r2, r18, 13
000aa0  9b318900  slli r3, r18, 8
000aa4  1d800400  lock zero, r9
000aa8  1f190000  addli r18, zero, 1
000aac  090d0b01  mm_cfg r26, r22, r16, 0
000ab0  17118100  or r2, r2, r8
000ab4  97918101  or r3, r3, r24
000ab8  898b9a04  mm_cfg r23, r21, r9, 2
000abc  a9812910  mm r3, r19, r2, 8
000ac0  1b811800  andi r2, r17, 1
000ac4  9f080000  addli r17, zero, 0
000ac8  1d900400  unlock r9
000acc  3b4f01fe  bneq r2, zero, -48
000ad0  1b011200  andi r2, r4, 1
000ad4  7d000a00  xsignal r20, 0
000ad8  7d800200  xsignal r5, 0
000adc  bb7901fe  bneq r2, zero, -388
000ae0  db170000  j 188
000ae4  0b11b539  mod.s r2, r10, r27
000ae8  8b91d738  mod.s r3, r15, r13
000aec  9f970700  addli r15, r15, 1
000af0  1f150500  addli r10, r10, 1
000af4  1bb4e100  slli r8, r3, 14
000af8  1b31e100  slli r2, r2, 14
000afc  ab410700  lui r3, 116
000b00  8b143110  add.s r9, r2, r3
000b04  1f710000  addli r2, zero, 7
000b08  37e12000  beq r1, r2, 88
000b0c  1f110000  addli r2, zero, 1
000b10  bbec20fe  bneq r1, r2, -200
000b14  1f212000  addli r2, zero, 18
000b18  1f740000  addli r8, zero, 7
000b1c  7d100400  xwait r8, 0
000b20  17b12802  sll.d r[3:4], r[18:19], r2
000b24  eb588fd3  load.d r[18:19], -712(r30)
000b28  1d800a00  lock zero, r21
000b2c  1f040004  addli r8, zero, 512
000b30  15000000  dma_cfg zero, zero, zero, 0
000b34  0ba12810  add.ul r[3:4], r[18:19], r[3:4]
000b38  15800104  dma_cfg zero, r3, zero, 2
000b3c  95048106  dma_cfg r9, r2, r8, 3
000b40  1f010040  addli r2, zero, 8192
000b44  15046109  dma_cfg r8, r2, r22, 4
000b48  35000000  dma_run zero
000b4c  1d900a00  unlock r21
000b50  7d000700  xsignal r14, 0
000b54  1b011200  andi r2, r4, 1
000b58  3b0801fe  bneq r2, zero, -512
000b5c  db070000  j 60
000b60  7d100700  xwait r14, 0
000b64  7d900200  xwait r5, 0
000b68  1d000000  lock zero, zero
000b6c  1f710000  addli r2, zero, 7
000b70  810b0000  ds_cfg r23, zero, 0
000b74  01080002  ds_cfg r16, zero, 1
000b78  010b001c  ds_cfg r22, zero, 14
000b7c  0108001a  ds_cfg r16, zero, 13
000b80  41846405  shuffle_coa r8, r9, r22, 2
000b84  1d100000  unlock zero
000b88  7d000100  xsignal r2, 0
000b8c  7d800d00  xsignal r27, 0
000b90  1b011200  andi r2, r4, 1
000b94  3b1701fe  bneq r2, zero, -572
000b98  3bb05001  bneq r1, r21, 12
000b9c  1f211000  addli r2, zero, 10
000ba0  7d000100  xsignal r2, 0
000ba4  1f01000f  addli r2, zero, 1920
000ba8  63426ffa  loadli.w r4,  -716(r30)
000bac  9f640000  addli r9, zero, 6
000bb0  b3060128  zext_int2long r[14:15], r2
000bb4  63412ffa  loadli.w r2,  -748(r30)
000bb8  0b124239  mod.s r4, r4, r20
000bbc  33010128  zext_int2long r[3:4], r2
000bc0  0b23d140  min.ul r[7:8], r[3:4], r[14:15]
000bc4  27030301  addli.d r[7:8], r[7:8], 128
000bc8  1b329200  slli r4, r4, 9
000bcc  8b282348  max.ul r[18:19], r[7:8], r[3:4]
000bd0  b3030828  zext_int2long r[8:9], r16
000bd4  0bb12818  sub.sl r[3:4], r[18:19], r[3:4]
000bd8  8b287140  min.ul r[18:19], r[3:4], r[8:9]
000bdc  ab410900  lui r3, 148
000be0  0b133210  add.s r6, r4, r3
000be4  37c090fe  beq r1, r9, -1008
000be8  e30c4ffa  loadli.w r25,  -736(r30)
000bec  9b9101a0  ori r3, r3, 2560
000bf0  e3095ffa  loadli.w r19,  -728(r30)
000bf4  73301fd5  store.d r[18:19], -704(r30)
000bf8  ab080100  lui r17, 16
000bfc  0b914c39  mod.s r2, r25, r20
000c00  9f9c0c00  addli r25, r25, 1
000c04  1b310101  slli r2, r2, 16
000c08  0b123110  add.s r4, r2, r3
000c0c  1f310000  addli r2, zero, 3
000c10  3bb22000  bneq r1, r2, 140
000c14  1f211000  addli r2, zero, 10
000c18  9f030000  addli r7, zero, 0
000c1c  7d100100  xwait r2, 0
000c20  1f411000  addli r2, zero, 12
000c24  7d100100  xwait r2, 0
000c28  1f711000  addli r2, zero, 15
000c2c  7d100100  xwait r2, 0
000c30  1d800b00  lock zero, r23
000c34  2b01803f  lui r2, 260096
000c38  0d000002  ew_cfg zero, zero, zero, 1
000c3c  0d110100  ewcoeff_cfg r2, r2, zero, 0
000c40  1f71f000  addli r2, zero, 127
000c44  0d000104  ew_cfg zero, r2, zero, 2
000c48  1f110000  addli r2, zero, 1
000c4c  0d010006  ew_cfg r2, zero, zero, 3
000c50  eb568fd1  load.d r[14:15], -744(r30)
000c54  0b117210  add.s r2, r4, r7
000c58  8b117c10  add.s r3, r24, r7
000c5c  9f830304  addli r7, r7, 512
000c60  2d816100  dsmadd r2, r3, r6, 0
000c64  bbcf13ff  bneq r7, r17, -16
000c68  1f311000  addli r2, zero, 11
000c6c  1d900b00  unlock r23
000c70  7d000100  xsignal r2, 0
000c74  1f511000  addli r2, zero, 13
000c78  7d000100  xsignal r2, 0
000c7c  1f012000  addli r2, zero, 16
000c80  7d000100  xsignal r2, 0
000c84  1f112000  addli r2, zero, 17
000c88  7d000100  xsignal r2, 0
000c8c  1f611000  addli r2, zero, 14
000c90  7d000100  xsignal r2, 0
000c94  e3445ffa  loadli.w r9,  -724(r30)
000c98  db76ffff  j -1100
000c9c  0b914939  mod.s r2, r19, r20
000ca0  e341cff9  loadli.w r3,  -796(r30)
000ca4  1b310101  slli r2, r2, 16
000ca8  0b133110  add.s r6, r2, r3
000cac  bbf54001  bneq r1, r20, 380
000cb0  1f611000  addli r2, zero, 14
000cb4  9f160000  addli r13, zero, 1
000cb8  ab0300c1  lui r7, 790528
000cbc  1f040000  addli r8, zero, 0
000cc0  7d100100  xwait r2, 0
000cc4  1f312000  addli r2, zero, 19
000cc8  7d100100  xwait r2, 0
000ccc  1d800b00  lock zero, r23
000cd0  0d000002  ew_cfg zero, zero, zero, 1
000cd4  6b518fce  load.d r[3:4], -792(r30)
000cd8  0d800104  ew_cfg zero, r3, zero, 2
000cdc  1f511000  addli r2, zero, 13
000ce0  ab81ff40  lui r3, 266232
000ce4  8d0a0006  ew_cfg r21, zero, zero, 3
000ce8  8d8a0a26  ew_cfg r21, r21, zero, 19
000cec  0d010014  ew_cfg r2, zero, zero, 10
000cf0  6301cff9  loadli.w r2,  -800(r30)
000cf4  8d8b2616  ew_cfg r23, r13, r2, 11
000cf8  1f310000  addli r2, zero, 3
000cfc  0d00201a  ew_cfg zero, zero, r2, 13
000d00  e3445ffa  loadli.w r9,  -724(r30)
000d04  8d833a1c  ew_cfg r7, r21, r3, 14
000d08  ab01803f  lui r3, 260096
000d0c  0d80011e  ew_cfg zero, r3, zero, 15
000d10  0b914439  mod.s r2, r9, r20
000d14  4d230200  sslut r6, r4, 0
000d18  0d000014  ew_cfg zero, zero, zero, 10
000d1c  0d000026  ew_cfg zero, zero, zero, 19
000d20  1d900b00  unlock r23
000d24  e341bff9  loadli.w r3,  -804(r30)
000d28  1b310101  slli r2, r2, 16
000d2c  8b133110  add.s r7, r2, r3
000d30  1f012000  addli r2, zero, 16
000d34  7d100100  xwait r2, 0
000d38  1f412000  addli r2, zero, 20
000d3c  7d100100  xwait r2, 0
000d40  1d800b00  lock zero, r23
000d44  1f71f000  addli r2, zero, 127
000d48  0d000002  ew_cfg zero, zero, zero, 1
000d4c  0d000104  ew_cfg zero, r2, zero, 2
000d50  8d060006  ew_cfg r13, zero, zero, 3
000d54  6301bff9  loadli.w r2,  -808(r30)
000d58  0d110000  ewcoeff_cfg r2, zero, zero, 0
000d5c  0b918310  add.s r2, r7, r8
000d60  8b118210  add.s r3, r4, r8
000d64  1f040404  addli r8, r8, 512
000d68  2da13100  dscmpnsel r2, r3, r3, 0
000d6c  bb4f14ff  bneq r8, r17, -16
000d70  1d900b00  unlock r23
000d74  1f71f000  addli r2, zero, 127
000d78  1f040000  addli r8, zero, 0
000d7c  1d800b00  lock zero, r23
000d80  0d000002  ew_cfg zero, zero, zero, 1
000d84  0d000104  ew_cfg zero, r2, zero, 2
000d88  1f110000  addli r2, zero, 1
000d8c  0d010006  ew_cfg r2, zero, zero, 3
000d90  6341aff9  loadli.w r2,  -812(r30)
000d94  0d110000  ewcoeff_cfg r2, zero, zero, 0
000d98  eb568fd1  load.d r[14:15], -744(r30)
000d9c  0b918310  add.s r2, r7, r8
000da0  1f040404  addli r8, r8, 512
000da4  2d212108  dscmpnsel r2, r2, r2, 4
000da8  bb5f14ff  bneq r8, r17, -12
000dac  1f112000  addli r2, zero, 17
000db0  1d900b00  unlock r23
000db4  2b04803f  lui r8, 260096
000db8  7d100100  xwait r2, 0
000dbc  1d800b00  lock zero, r23
000dc0  2b0180bf  lui r2, 784384
000dc4  0d000002  ew_cfg zero, zero, zero, 1
000dc8  0d140100  ewcoeff_cfg r8, r2, zero, 0
000dcc  6b518fce  load.d r[3:4], -792(r30)
000dd0  0d800104  ew_cfg zero, r3, zero, 2
000dd4  8d0a0006  ew_cfg r21, zero, zero, 3
000dd8  8d8a5a27  ew_cfg r21, r21, r21, 19
000ddc  2d027200  dsmadd r4, r4, r7, 0
000de0  9f432000  addli r7, zero, 20
000de4  0d000026  ew_cfg zero, zero, zero, 19
000de8  1d900b00  unlock r23
000dec  7d800300  xsignal r7, 0
000df0  1d800b00  lock zero, r23
000df4  0d000002  ew_cfg zero, zero, zero, 1
000df8  0d140400  ewcoeff_cfg r8, r8, zero, 0
000dfc  0d800104  ew_cfg zero, r3, zero, 2
000e00  1f711000  addli r2, zero, 15
000e04  8d0a0006  ew_cfg r21, zero, zero, 3
000e08  8d8a5a27  ew_cfg r21, r21, r21, 19
000e0c  2d034300  dsmadd r6, r6, r4, 0
000e10  0d000026  ew_cfg zero, zero, zero, 19
000e14  1d900b00  unlock r23
000e18  7d000100  xsignal r2, 0
000e1c  1f212000  addli r2, zero, 18
000e20  7d000100  xsignal r2, 0
000e24  5b45ffff  j -1496
000e28  3bc20000  bneq r1, zero, 144
000e2c  6341fff9  loadli.w r2,  -772(r30)
000e30  eb580fd0  load.d r[18:19], -768(r30)
000e34  1f422000  addli r4, zero, 20
000e38  33110128  sext_int2long r[3:4], r2
000e3c  97b84802  sll.d r[18:19], r[18:19], r4
000e40  1f222000  addli r4, zero, 18
000e44  8b36d140  min.sl r[14:15], r[3:4], r[14:15]
000e48  733c1fd3  store.d r[18:19], -712(r30)
000e4c  7d100200  xwait r4, 0
000e50  1d000a00  lock zero, r20
000e54  eb588f01  load.d r[18:19], 24(r30)
000e58  1f120000  addli r4, zero, 1
000e5c  a7860601  addli.d r[14:15], r[14:15], 128
000e60  8bb62648  max.sl r[14:15], r[14:15], r[3:4]
000e64  7330dfd2  store.d r[14:15], -736(r30)
000e68  eb568fd3  load.d r[14:15], -712(r30)
000e6c  8ba8d810  add.ul r[18:19], r[18:19], r[14:15]
000e70  eb560fd2  load.d r[14:15], -736(r30)
000e74  0bb12618  sub.sl r[3:4], r[14:15], r[3:4]
000e78  eb568fd0  load.d r[14:15], -760(r30)
000e7c  15000000  dma_cfg zero, zero, zero, 0
000e80  15000202  dma_cfg zero, r4, zero, 1
000e84  0b317140  min.sl r[3:4], r[3:4], r[8:9]
000e88  eb530fd4  load.d r[8:9], -704(r30)
000e8c  8ba6d810  add.ul r[14:15], r[18:19], r[14:15]
000e90  1bb22300  slli r4, r7, 2
000e94  15070004  dma_cfg r14, zero, zero, 2
000e98  95064306  dma_cfg r13, r6, r4, 3
000e9c  1f020004  addli r4, zero, 512
000ea0  1f030040  addli r6, zero, 8192
000ea4  15032208  dma_cfg r6, r4, r2, 4
000ea8  1f312000  addli r2, zero, 19
000eac  35000000  dma_run zero
000eb0  1d100a00  unlock r20
000eb4  7d000100  xsignal r2, 0
000eb8  e3445ffa  loadli.w r9,  -724(r30)
000ebc  db31ffff  j -1652
000ec0  e703fffc  storeli.w r15, -456(r30)
000ec4  7d000000  xsignal zero, 0
000ec8  bbe00000  bneq r1, zero, 56
000ecc  9f200000  addli r1, zero, 2
000ed0  7d100000  xwait zero, 0
000ed4  7d100000  xwait zero, 0
000ed8  7d100000  xwait zero, 0
000edc  7d100000  xwait zero, 0
000ee0  7d100000  xwait zero, 0
000ee4  7d100000  xwait zero, 0
000ee8  7d100000  xwait zero, 0
000eec  7d100000  xwait zero, 0
000ef0  1d800000  lock zero, r1
000ef4  0d000020  ew_cfg zero, zero, zero, 16
000ef8  1d900000  unlock r1
000efc  7d400000  xsignal_mode_cfg zero
000f00  9f8e6e06  addli sp, sp, 816
000f04  00a00300  mfence { lm, sm, gm }
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
