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
0000b4  9f8e1ef8  addli sp, sp, -1016
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  1f8f7e07  addli r30, sp, 952
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7100100  beq r2, zero, 36
0000cc  abf1ffff  lui r3, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b90f1ff  ori r1, r3, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  5b810000  j 1032
0000ec  9f220000  addli r5, zero, 2
0000f0  fdd00000  uni_sram_cfg r1, r1
0000f4  1f430000  addli r6, zero, 4
0000f8  eb510f02  load.d r[4:5], 32(r30)
0000fc  9f030020  addli r7, zero, 4096
000100  1d800200  lock zero, r5
000104  8d000020  ew_cfg r1, zero, zero, 16
000108  1d900200  unlock r5
00010c  1d000300  lock zero, r6
000110  15000000  dma_cfg zero, zero, zero, 0
000114  15000204  dma_cfg zero, r4, zero, 2
000118  15807106  dma_cfg zero, r3, r7, 3
00011c  9f014000  addli r3, zero, 32
000120  1f020008  addli r4, zero, 1024
000124  15001008  dma_cfg zero, zero, r1, 4
000128  35000000  dma_run zero
00012c  1d100300  unlock r6
000130  7d800000  xsignal r1, 0
000134  7d900000  xwait r1, 0
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
000160  7d800000  xsignal r1, 0
000164  7d900000  xwait r1, 0
000168  1d800200  lock zero, r5
00016c  ab100100  lui r1, 17
000170  0da00300  ewtable_cfg r7, 0
000174  0da00002  ewtable_cfg r1, 1
000178  abf0ffff  lui r1, 1048575
00017c  1d900200  unlock r5
000180  7d000000  xsignal zero, 0
000184  7d100000  xwait zero, 0
000188  9b90f0ff  ori r1, r1, 4095
00018c  80a10004  csr_set csr3, r1
000190  9f301000  addli r1, zero, 11
000194  00d00100  sync_group
000198  7d800000  xsignal r1, 0
00019c  7d800000  xsignal r1, 0
0001a0  7d800000  xsignal r1, 0
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
000264  9f101000  addli r1, zero, 9
000268  9f710000  addli r3, zero, 7
00026c  7d000200  xsignal r4, 0
000270  7d000200  xsignal r4, 0
000274  7d000200  xsignal r4, 0
000278  7d000200  xsignal r4, 0
00027c  7d000200  xsignal r4, 0
000280  7d000200  xsignal r4, 0
000284  7d000200  xsignal r4, 0
000288  7d000200  xsignal r4, 0
00028c  7d000200  xsignal r4, 0
000290  7d000200  xsignal r4, 0
000294  7d000200  xsignal r4, 0
000298  7d000200  xsignal r4, 0
00029c  7d000200  xsignal r4, 0
0002a0  7d000200  xsignal r4, 0
0002a4  7d000200  xsignal r4, 0
0002a8  7d000200  xsignal r4, 0
0002ac  7d000200  xsignal r4, 0
0002b0  7d000200  xsignal r4, 0
0002b4  7d000200  xsignal r4, 0
0002b8  7d000200  xsignal r4, 0
0002bc  7d000200  xsignal r4, 0
0002c0  7d000200  xsignal r4, 0
0002c4  7d000200  xsignal r4, 0
0002c8  7d000200  xsignal r4, 0
0002cc  7d000200  xsignal r4, 0
0002d0  7d000200  xsignal r4, 0
0002d4  7d000200  xsignal r4, 0
0002d8  7d000200  xsignal r4, 0
0002dc  7d000200  xsignal r4, 0
0002e0  7d000200  xsignal r4, 0
0002e4  7d000200  xsignal r4, 0
0002e8  7d000200  xsignal r4, 0
0002ec  7d000200  xsignal r4, 0
0002f0  7d000200  xsignal r4, 0
0002f4  7d000200  xsignal r4, 0
0002f8  7d000200  xsignal r4, 0
0002fc  7d000200  xsignal r4, 0
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
0003d0  7d800000  xsignal r1, 0
0003d4  7d800000  xsignal r1, 0
0003d8  7d800000  xsignal r1, 0
0003dc  7d800000  xsignal r1, 0
0003e0  7d800000  xsignal r1, 0
0003e4  7d800000  xsignal r1, 0
0003e8  7d800000  xsignal r1, 0
0003ec  7d800000  xsignal r1, 0
0003f0  7d800000  xsignal r1, 0
0003f4  7d800000  xsignal r1, 0
0003f8  7d800000  xsignal r1, 0
0003fc  7d800000  xsignal r1, 0
000400  7d800000  xsignal r1, 0
000404  7d800000  xsignal r1, 0
000408  7d800000  xsignal r1, 0
00040c  7d800000  xsignal r1, 0
000410  7d800000  xsignal r1, 0
000414  7d800000  xsignal r1, 0
000418  7d800000  xsignal r1, 0
00041c  7d800000  xsignal r1, 0
000420  7d800000  xsignal r1, 0
000424  7d800000  xsignal r1, 0
000428  7d800000  xsignal r1, 0
00042c  7d800000  xsignal r1, 0
000430  7d800000  xsignal r1, 0
000434  7d800000  xsignal r1, 0
000438  7d800000  xsignal r1, 0
00043c  7d800000  xsignal r1, 0
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
00047c  7d800100  xsignal r3, 0
000480  7d800100  xsignal r3, 0
000484  7d800100  xsignal r3, 0
000488  7d800100  xsignal r3, 0
00048c  7d800100  xsignal r3, 0
000490  7d800100  xsignal r3, 0
000494  7d800100  xsignal r3, 0
000498  7d800100  xsignal r3, 0
00049c  7d800100  xsignal r3, 0
0004a0  7d800100  xsignal r3, 0
0004a4  7d800100  xsignal r3, 0
0004a8  7d800100  xsignal r3, 0
0004ac  7d800100  xsignal r3, 0
0004b0  7d800100  xsignal r3, 0
0004b4  7d800100  xsignal r3, 0
0004b8  7d800100  xsignal r3, 0
0004bc  7d800100  xsignal r3, 0
0004c0  7d800100  xsignal r3, 0
0004c4  7d800100  xsignal r3, 0
0004c8  7d800100  xsignal r3, 0
0004cc  7d800100  xsignal r3, 0
0004d0  9f501000  addli r1, zero, 13
0004d4  9f012000  addli r3, zero, 16
0004d8  7d800000  xsignal r1, 0
0004dc  7d800000  xsignal r1, 0
0004e0  7d800000  xsignal r1, 0
0004e4  7d800100  xsignal r3, 0
0004e8  7d800100  xsignal r3, 0
0004ec  7d800100  xsignal r3, 0
0004f0  e3005f00  loadli.w r1,  40(r30)
0004f4  e3415f00  loadli.w r3,  44(r30)
0004f8  00d20002  load_param_i r4, 1
0004fc  e3026f00  loadli.w r5,  48(r30)
000500  80530002  load_param_i r7, 0
000504  2bf3ffff  lui r6, 1048575
000508  670f0ffe  storeli.w zero, -16(r30)
00050c  670e0ffe  storeli.w zero, -32(r30)
000510  e7440ffe  storeli.w zero, -180(r30)
000514  e7000ffc  storeli.w zero, -504(r30)
000518  67070ffa  storeli.w zero, -656(r30)
00051c  e74a0ff8  storeli.w zero, -852(r30)
000520  8b901120  mul.s r1, r3, r1
000524  9f010200  addli r3, r4, 0
000528  8b915050  fmac.s r3, r1, r5
00052c  8b925020  mul.s r5, r1, r5
000530  9ff1f1ff  addli r3, r3, -1
000534  8b914130  div.s r3, r3, r4
000538  1b12f3ff  ori r4, r6, 4095
00053c  674f4ffe  storeli.w r4, -12(r30)
000540  e70f4ffe  storeli.w r4, -8(r30)
000544  e74f4ffe  storeli.w r4, -4(r30)
000548  674e4ffe  storeli.w r4, -28(r30)
00054c  e70e4ffe  storeli.w r4, -24(r30)
000550  e74e4ffe  storeli.w r4, -20(r30)
000554  67054ffe  storeli.w r4, -176(r30)
000558  67454ffe  storeli.w r4, -172(r30)
00055c  e7054ffe  storeli.w r4, -168(r30)
000560  e7454ffe  storeli.w r4, -164(r30)
000564  67064ffe  storeli.w r4, -160(r30)
000568  67464ffe  storeli.w r4, -156(r30)
00056c  e7064ffe  storeli.w r4, -152(r30)
000570  e7464ffe  storeli.w r4, -148(r30)
000574  67074ffe  storeli.w r4, -144(r30)
000578  67474ffe  storeli.w r4, -140(r30)
00057c  e7074ffe  storeli.w r4, -136(r30)
000580  e7474ffe  storeli.w r4, -132(r30)
000584  67084ffe  storeli.w r4, -128(r30)
000588  67484ffe  storeli.w r4, -124(r30)
00058c  e7084ffe  storeli.w r4, -120(r30)
000590  e7484ffe  storeli.w r4, -116(r30)
000594  67094ffe  storeli.w r4, -112(r30)
000598  67494ffe  storeli.w r4, -108(r30)
00059c  e7094ffe  storeli.w r4, -104(r30)
0005a0  e7494ffe  storeli.w r4, -100(r30)
0005a4  670a4ffe  storeli.w r4, -96(r30)
0005a8  674a4ffe  storeli.w r4, -92(r30)
0005ac  e70a4ffe  storeli.w r4, -88(r30)
0005b0  e74a4ffe  storeli.w r4, -84(r30)
0005b4  670b4ffe  storeli.w r4, -80(r30)
0005b8  674b4ffe  storeli.w r4, -76(r30)
0005bc  e70b4ffe  storeli.w r4, -72(r30)
0005c0  e74b4ffe  storeli.w r4, -68(r30)
0005c4  670c4ffe  storeli.w r4, -64(r30)
0005c8  674c4ffe  storeli.w r4, -60(r30)
0005cc  e70c4ffe  storeli.w r4, -56(r30)
0005d0  e74c4ffe  storeli.w r4, -52(r30)
0005d4  670d4ffe  storeli.w r4, -48(r30)
0005d8  674d4ffe  storeli.w r4, -44(r30)
0005dc  e70d4ffe  storeli.w r4, -40(r30)
0005e0  e74d4ffe  storeli.w r4, -36(r30)
0005e4  e7404ffc  storeli.w r4, -500(r30)
0005e8  67014ffc  storeli.w r4, -496(r30)
0005ec  67414ffc  storeli.w r4, -492(r30)
0005f0  e7014ffc  storeli.w r4, -488(r30)
0005f4  e7414ffc  storeli.w r4, -484(r30)
0005f8  67024ffc  storeli.w r4, -480(r30)
0005fc  67424ffc  storeli.w r4, -476(r30)
000600  e7024ffc  storeli.w r4, -472(r30)
000604  e7424ffc  storeli.w r4, -468(r30)
000608  67034ffc  storeli.w r4, -464(r30)
00060c  67434ffc  storeli.w r4, -460(r30)
000610  e7034ffc  storeli.w r4, -456(r30)
000614  e7434ffc  storeli.w r4, -452(r30)
000618  67044ffc  storeli.w r4, -448(r30)
00061c  67444ffc  storeli.w r4, -444(r30)
000620  e7044ffc  storeli.w r4, -440(r30)
000624  e7444ffc  storeli.w r4, -436(r30)
000628  67054ffc  storeli.w r4, -432(r30)
00062c  67454ffc  storeli.w r4, -428(r30)
000630  e7054ffc  storeli.w r4, -424(r30)
000634  e7454ffc  storeli.w r4, -420(r30)
000638  67064ffc  storeli.w r4, -416(r30)
00063c  67464ffc  storeli.w r4, -412(r30)
000640  e7064ffc  storeli.w r4, -408(r30)
000644  e7464ffc  storeli.w r4, -404(r30)
000648  67074ffc  storeli.w r4, -400(r30)
00064c  67474ffc  storeli.w r4, -396(r30)
000650  e7074ffc  storeli.w r4, -392(r30)
000654  e7474ffc  storeli.w r4, -388(r30)
000658  67084ffc  storeli.w r4, -384(r30)
00065c  67484ffc  storeli.w r4, -380(r30)
000660  e7084ffc  storeli.w r4, -376(r30)
000664  e7484ffc  storeli.w r4, -372(r30)
000668  67094ffc  storeli.w r4, -368(r30)
00066c  67494ffc  storeli.w r4, -364(r30)
000670  e7094ffc  storeli.w r4, -360(r30)
000674  e7494ffc  storeli.w r4, -356(r30)
000678  670a4ffc  storeli.w r4, -352(r30)
00067c  674a4ffc  storeli.w r4, -348(r30)
000680  e70a4ffc  storeli.w r4, -344(r30)
000684  e74a4ffc  storeli.w r4, -340(r30)
000688  670b4ffc  storeli.w r4, -336(r30)
00068c  674b4ffc  storeli.w r4, -332(r30)
000690  e70b4ffc  storeli.w r4, -328(r30)
000694  e74b4ffc  storeli.w r4, -324(r30)
000698  670c4ffc  storeli.w r4, -320(r30)
00069c  674c4ffc  storeli.w r4, -316(r30)
0006a0  e70c4ffc  storeli.w r4, -312(r30)
0006a4  e74c4ffc  storeli.w r4, -308(r30)
0006a8  670d4ffc  storeli.w r4, -304(r30)
0006ac  674d4ffc  storeli.w r4, -300(r30)
0006b0  e70d4ffc  storeli.w r4, -296(r30)
0006b4  e74d4ffc  storeli.w r4, -292(r30)
0006b8  670e4ffc  storeli.w r4, -288(r30)
0006bc  674e4ffc  storeli.w r4, -284(r30)
0006c0  e70e4ffc  storeli.w r4, -280(r30)
0006c4  e74e4ffc  storeli.w r4, -276(r30)
0006c8  670f4ffc  storeli.w r4, -272(r30)
0006cc  674f4ffc  storeli.w r4, -268(r30)
0006d0  e70f4ffc  storeli.w r4, -264(r30)
0006d4  e74f4ffc  storeli.w r4, -260(r30)
0006d8  67004ffe  storeli.w r4, -256(r30)
0006dc  67404ffe  storeli.w r4, -252(r30)
0006e0  e7004ffe  storeli.w r4, -248(r30)
0006e4  e7404ffe  storeli.w r4, -244(r30)
0006e8  67014ffe  storeli.w r4, -240(r30)
0006ec  67414ffe  storeli.w r4, -236(r30)
0006f0  e7014ffe  storeli.w r4, -232(r30)
0006f4  e7414ffe  storeli.w r4, -228(r30)
0006f8  67024ffe  storeli.w r4, -224(r30)
0006fc  67424ffe  storeli.w r4, -220(r30)
000700  e7024ffe  storeli.w r4, -216(r30)
000704  e7424ffe  storeli.w r4, -212(r30)
000708  67034ffe  storeli.w r4, -208(r30)
00070c  67434ffe  storeli.w r4, -204(r30)
000710  e7034ffe  storeli.w r4, -200(r30)
000714  e7434ffe  storeli.w r4, -196(r30)
000718  67044ffe  storeli.w r4, -192(r30)
00071c  67444ffe  storeli.w r4, -188(r30)
000720  e7044ffe  storeli.w r4, -184(r30)
000724  67474ffa  storeli.w r4, -652(r30)
000728  e7074ffa  storeli.w r4, -648(r30)
00072c  e7474ffa  storeli.w r4, -644(r30)
000730  67084ffa  storeli.w r4, -640(r30)
000734  67484ffa  storeli.w r4, -636(r30)
000738  e7084ffa  storeli.w r4, -632(r30)
00073c  e7484ffa  storeli.w r4, -628(r30)
000740  67094ffa  storeli.w r4, -624(r30)
000744  67494ffa  storeli.w r4, -620(r30)
000748  e7094ffa  storeli.w r4, -616(r30)
00074c  e7494ffa  storeli.w r4, -612(r30)
000750  670a4ffa  storeli.w r4, -608(r30)
000754  674a4ffa  storeli.w r4, -604(r30)
000758  e70a4ffa  storeli.w r4, -600(r30)
00075c  e74a4ffa  storeli.w r4, -596(r30)
000760  670b4ffa  storeli.w r4, -592(r30)
000764  674b4ffa  storeli.w r4, -588(r30)
000768  e70b4ffa  storeli.w r4, -584(r30)
00076c  e74b4ffa  storeli.w r4, -580(r30)
000770  670c4ffa  storeli.w r4, -576(r30)
000774  674c4ffa  storeli.w r4, -572(r30)
000778  e70c4ffa  storeli.w r4, -568(r30)
00077c  e74c4ffa  storeli.w r4, -564(r30)
000780  670d4ffa  storeli.w r4, -560(r30)
000784  674d4ffa  storeli.w r4, -556(r30)
000788  e70d4ffa  storeli.w r4, -552(r30)
00078c  e74d4ffa  storeli.w r4, -548(r30)
000790  670e4ffa  storeli.w r4, -544(r30)
000794  674e4ffa  storeli.w r4, -540(r30)
000798  e70e4ffa  storeli.w r4, -536(r30)
00079c  e74e4ffa  storeli.w r4, -532(r30)
0007a0  670f4ffa  storeli.w r4, -528(r30)
0007a4  674f4ffa  storeli.w r4, -524(r30)
0007a8  e70f4ffa  storeli.w r4, -520(r30)
0007ac  e74f4ffa  storeli.w r4, -516(r30)
0007b0  67004ffc  storeli.w r4, -512(r30)
0007b4  67404ffc  storeli.w r4, -508(r30)
0007b8  670b4ff8  storeli.w r4, -848(r30)
0007bc  674b4ff8  storeli.w r4, -844(r30)
0007c0  e70b4ff8  storeli.w r4, -840(r30)
0007c4  e74b4ff8  storeli.w r4, -836(r30)
0007c8  670c4ff8  storeli.w r4, -832(r30)
0007cc  674c4ff8  storeli.w r4, -828(r30)
0007d0  e70c4ff8  storeli.w r4, -824(r30)
0007d4  e74c4ff8  storeli.w r4, -820(r30)
0007d8  670d4ff8  storeli.w r4, -816(r30)
0007dc  674d4ff8  storeli.w r4, -812(r30)
0007e0  e70d4ff8  storeli.w r4, -808(r30)
0007e4  e74d4ff8  storeli.w r4, -804(r30)
0007e8  670e4ff8  storeli.w r4, -800(r30)
0007ec  674e4ff8  storeli.w r4, -796(r30)
0007f0  e70e4ff8  storeli.w r4, -792(r30)
0007f4  e74e4ff8  storeli.w r4, -788(r30)
0007f8  670f4ff8  storeli.w r4, -784(r30)
0007fc  674f4ff8  storeli.w r4, -780(r30)
000800  e70f4ff8  storeli.w r4, -776(r30)
000804  e74f4ff8  storeli.w r4, -772(r30)
000808  67004ffa  storeli.w r4, -768(r30)
00080c  67404ffa  storeli.w r4, -764(r30)
000810  e7004ffa  storeli.w r4, -760(r30)
000814  e7404ffa  storeli.w r4, -756(r30)
000818  67014ffa  storeli.w r4, -752(r30)
00081c  67414ffa  storeli.w r4, -748(r30)
000820  e7014ffa  storeli.w r4, -744(r30)
000824  e7414ffa  storeli.w r4, -740(r30)
000828  67024ffa  storeli.w r4, -736(r30)
00082c  67424ffa  storeli.w r4, -732(r30)
000830  e7024ffa  storeli.w r4, -728(r30)
000834  e7424ffa  storeli.w r4, -724(r30)
000838  67034ffa  storeli.w r4, -720(r30)
00083c  67434ffa  storeli.w r4, -716(r30)
000840  e7034ffa  storeli.w r4, -712(r30)
000844  e7434ffa  storeli.w r4, -708(r30)
000848  67044ffa  storeli.w r4, -704(r30)
00084c  67444ffa  storeli.w r4, -700(r30)
000850  e7044ffa  storeli.w r4, -696(r30)
000854  e7444ffa  storeli.w r4, -692(r30)
000858  67054ffa  storeli.w r4, -688(r30)
00085c  67454ffa  storeli.w r4, -684(r30)
000860  e7054ffa  storeli.w r4, -680(r30)
000864  e7454ffa  storeli.w r4, -676(r30)
000868  67064ffa  storeli.w r4, -672(r30)
00086c  67464ffa  storeli.w r4, -668(r30)
000870  e7064ffa  storeli.w r4, -664(r30)
000874  e7464ffa  storeli.w r4, -660(r30)
000878  8b907120  mul.s r1, r3, r7
00087c  8b917150  fmac.s r3, r3, r7
000880  8b915140  min.s r3, r3, r5
000884  4bc31106  ble.s r3, r1, 3280
000888  b3910128  sext_int2long r[4:5], r3
00088c  b3920028  sext_int2long r[6:7], r1
000890  1f048000  addli r8, zero, 64
000894  9f440000  addli r9, zero, 4
000898  9f061000  addli r13, zero, 8
00089c  1f770000  addli r14, zero, 7
0008a0  1f3e0000  addli r28, zero, 3
0008a4  9f551000  addli r11, zero, 13
0008a8  1f510000  addli r2, zero, 5
0008ac  1f1b0000  addli r22, zero, 1
0008b0  9f2b0000  addli r23, zero, 2
0008b4  1f0c4000  addli r24, zero, 32
0008b8  9f0c0001  addli r25, zero, 128
0008bc  9f680000  addli r17, zero, 6
0008c0  9f090000  addli r19, zero, 0
0008c4  733c3fc4  store.d r[4:5], -936(r30)
0008c8  1f72f01f  addli r4, zero, 4095
0008cc  ab81ffff  lui r3, 1048568
0008d0  73383fc4  store.d r[4:5], -944(r30)
0008d4  ab810200  lui r3, 40
0008d8  9b902184  ori r1, r3, 2114
0008dc  e7441ff8  storeli.w r1, -948(r30)
0008e0  db300000  j 388
0008e4  9b930d04  ori r7, r27, 64
0008e8  1d800400  lock zero, r9
0008ec  9f000002  addli r1, zero, 256
0008f0  150b0b00  dma_cfg r22, r22, zero, 0
0008f4  0b127210  add.s r4, r4, r7
0008f8  9ff33600  addli r7, r13, 31
0008fc  15000304  dma_cfg zero, r6, zero, 2
000900  15828206  dma_cfg r4, r5, r8, 3
000904  1bc25300  srli r4, r7, 5
000908  9bb21600  slli r5, r13, 1
00090c  9f030004  addli r7, zero, 512
000910  1f131000  addli r6, zero, 9
000914  950c4408  dma_cfg r25, r8, r4, 4
000918  9b82e203  andi r5, r5, 62
00091c  9583600b  dma_cfg r7, r1, r22, 5
000920  9f601000  addli r1, zero, 14
000924  15005010  dma_cfg zero, zero, r5, 8
000928  35000000  dma_run zero
00092c  1500600b  dma_cfg zero, zero, r22, 5
000930  15000010  dma_cfg zero, zero, zero, 8
000934  1d900400  unlock r9
000938  1d000100  lock zero, r2
00093c  15000014  dma_cfg zero, zero, zero, 10
000940  15006015  dma_cfg zero, zero, r22, 10
000944  15007015  dma_cfg zero, zero, r23, 10
000948  1500c015  dma_cfg zero, zero, r28, 10
00094c  15009014  dma_cfg zero, zero, r9, 10
000950  15002014  dma_cfg zero, zero, r2, 10
000954  15001015  dma_cfg zero, zero, r17, 10
000958  1500a015  dma_cfg zero, zero, r26, 10
00095c  15004015  dma_cfg zero, zero, r20, 10
000960  15006014  dma_cfg zero, zero, r6, 10
000964  1f231000  addli r6, zero, 10
000968  15006014  dma_cfg zero, zero, r6, 10
00096c  1f331000  addli r6, zero, 11
000970  15006014  dma_cfg zero, zero, r6, 10
000974  1f431000  addli r6, zero, 12
000978  15006014  dma_cfg zero, zero, r6, 10
00097c  1500b014  dma_cfg zero, zero, r11, 10
000980  15001014  dma_cfg zero, zero, r1, 10
000984  9f701000  addli r1, zero, 15
000988  15001014  dma_cfg zero, zero, r1, 10
00098c  9f102000  addli r1, zero, 17
000990  1500c014  dma_cfg zero, zero, r12, 10
000994  15001014  dma_cfg zero, zero, r1, 10
000998  9f202000  addli r1, zero, 18
00099c  15001014  dma_cfg zero, zero, r1, 10
0009a0  9f302000  addli r1, zero, 19
0009a4  15001014  dma_cfg zero, zero, r1, 10
0009a8  9f402000  addli r1, zero, 20
0009ac  15001014  dma_cfg zero, zero, r1, 10
0009b0  9f502000  addli r1, zero, 21
0009b4  15001014  dma_cfg zero, zero, r1, 10
0009b8  9f602000  addli r1, zero, 22
0009bc  15001014  dma_cfg zero, zero, r1, 10
0009c0  9f702000  addli r1, zero, 23
0009c4  15001014  dma_cfg zero, zero, r1, 10
0009c8  9f003000  addli r1, zero, 24
0009cc  15001014  dma_cfg zero, zero, r1, 10
0009d0  9f103000  addli r1, zero, 25
0009d4  15001014  dma_cfg zero, zero, r1, 10
0009d8  9f203000  addli r1, zero, 26
0009dc  15001014  dma_cfg zero, zero, r1, 10
0009e0  9f303000  addli r1, zero, 27
0009e4  15001014  dma_cfg zero, zero, r1, 10
0009e8  9f403000  addli r1, zero, 28
0009ec  15001014  dma_cfg zero, zero, r1, 10
0009f0  9f503000  addli r1, zero, 29
0009f4  15001014  dma_cfg zero, zero, r1, 10
0009f8  9f603000  addli r1, zero, 30
0009fc  15001014  dma_cfg zero, zero, r1, 10
000a00  9f703000  addli r1, zero, 31
000a04  15001014  dma_cfg zero, zero, r1, 10
000a08  150b0b00  dma_cfg r22, r22, zero, 0
000a0c  150b0002  dma_cfg r22, zero, zero, 1
000a10  15000004  dma_cfg zero, zero, zero, 2
000a14  95018006  dma_cfg r3, zero, r8, 3
000a18  950c4008  dma_cfg r25, zero, r4, 4
000a1c  9503600b  dma_cfg r7, zero, r22, 5
000a20  15005010  dma_cfg zero, zero, r5, 8
000a24  35000000  dma_run zero
000a28  1500600b  dma_cfg zero, zero, r22, 5
000a2c  15000010  dma_cfg zero, zero, zero, 8
000a30  1d100100  unlock r2
000a34  7d000300  xsignal r6, 0
000a38  e301efff  loadli.w r3,  -16(r30)
000a3c  9f910100  addli r3, r3, 1
000a40  670f3ffe  storeli.w r3, -16(r30)
000a44  eb528fc8  load.d r[6:7], -888(r30)
000a48  eb518fc5  load.d r[4:5], -936(r30)
000a4c  e3490ff9  loadli.w r19,  -892(r30)
000a50  9f061000  addli r13, zero, 8
000a54  1f770000  addli r14, zero, 7
000a58  a7920200  addli.d r[6:7], r[6:7], 1
000a5c  93b13204  setlt.sl r3, r[6:7], r[4:5]
000a60  b7db0104  beq r3, zero, 2804
000a64  80300002  core_id r1
000a68  3bb09000  bneq r1, r9, 12
000a6c  9f311000  addli r3, zero, 11
000a70  7d900100  xwait r3, 0
000a74  e3016f00  loadli.w r3,  48(r30)
000a78  63425f00  loadli.w r4,  44(r30)
000a7c  73345fc8  store.d r[6:7], -888(r30)
000a80  6309effa  loadli.w r18,  -656(r30)
000a84  8b913230  div.s r3, r5, r3
000a88  0b934130  div.s r6, r3, r4
000a8c  8b138330  div.s r7, r6, r8
000a90  9bb13300  slli r3, r7, 3
000a94  0b923418  sub.s r4, r9, r3
000a98  0b15d240  min.s r10, r4, r13
000a9c  0b12a338  mod.s r4, r6, r10
000aa0  8b924110  add.s r5, r3, r4
000aa4  63425ff9  loadli.w r4,  -852(r30)
000aa8  93015e04  setlt.u r3, r28, r5
000aac  b3870228  zext_int2long r[16:17], r5
000ab0  7334ffc6  store.d r[16:17], -920(r30)
000ab4  97b7b702  sll.d r[16:17], r[16:17], r11
000ab8  7330ffca  store.d r[16:17], -864(r30)
000abc  3bb00100  bneq r3, zero, 12
000ac0  b3050028  zext_int2long r[12:13], zero
000ac4  db010000  j 12
000ac8  eb550fc5  load.d r[12:13], -944(r30)
000acc  9785b702  and.d r[12:13], r[16:17], r[12:13]
000ad0  9bb36300  slli r7, r7, 6
000ad4  9bb27200  slli r5, r5, 7
000ad8  733cbfc8  store.d r[12:13], -872(r30)
000adc  9f010000  addli r3, zero, 0
000ae0  9f3a0000  addli r21, zero, 3
000ae4  0b137318  sub.s r6, r6, r7
000ae8  8b93c939  mod.s r7, r19, r28
000aec  67465ff8  storeli.w r5, -924(r30)
000af0  1f1e0000  addli r28, zero, 1
000af4  9f990900  addli r19, r19, 1
000af8  0b13a330  div.s r6, r6, r10
000afc  6b558f00  load.d r[11:12], 8(r30)
000b00  67483ff9  storeli.w r19, -892(r30)
000b04  9bb30301  slli r7, r7, 16
000b08  9b327300  slli r5, r6, 7
000b0c  b3070328  zext_int2long r[16:17], r6
000b10  67475ff8  storeli.w r5, -908(r30)
000b14  97b2e702  sll.d r[6:7], r[16:17], r14
000b18  9f070000  addli r15, zero, 0
000b1c  733c5fc6  store.d r[6:7], -904(r30)
000b20  97b2c203  sll.d r[6:7], r[6:7], r28
000b24  8b225510  add.ul r[6:7], r[11:12], r[6:7]
000b28  73385fc8  store.d r[6:7], -880(r30)
000b2c  db030000  j 28
000b30  1b051e00  andi r10, r28, 1
000b34  370c0502  beq r10, zero, 1792
000b38  1f0e0000  addli r28, zero, 0
000b3c  9f910100  addli r3, r3, 1
000b40  9f170000  addli r15, zero, 1
000b44  1f890d00  addli r18, r27, 0
000b48  9f026000  addli r5, zero, 48
000b4c  ab050300  lui r11, 48
000b50  9f1d0900  addli r27, r18, 1
000b54  0b155238  mod.s r10, r4, r5
000b58  9f524000  addli r5, zero, 37
000b5c  1f120200  addli r4, r4, 1
000b60  6707bffb  storeli.w r27, -656(r30)
000b64  0b185938  mod.s r16, r18, r5
000b68  9f020003  addli r5, zero, 384
000b6c  e74a4ff8  storeli.w r4, -852(r30)
000b70  b3820228  zext_int2long r[6:7], r5
000b74  9b39e500  slli r19, r10, 14
000b78  1b35e800  slli r10, r16, 14
000b7c  0b1ab510  add.s r20, r10, r11
000b80  b7ea7001  beq r1, r23, 696
000b84  b3870728  zext_int2long r[16:17], r15
000b88  bb8e1001  bneq r1, r17, 928
000b8c  97b72702  sll.d r[16:17], r[16:17], r2
000b90  eb500fca  load.d r[2:3], -864(r30)
000b94  b3050428  zext_int2long r[12:13], r8
000b98  97971702  or.d r[16:17], r[16:17], r[2:3]
000b9c  eb508fc9  load.d r[2:3], -872(r30)
000ba0  8bb61718  sub.sl r[14:15], r[16:17], r[2:3]
000ba4  eb500f00  load.d r[2:3], 0(r30)
000ba8  97b76703  sll.d r[16:17], r[16:17], r22
000bac  8f95b660  div.sl r[12:13], r[14:15], r[12:13]
000bb0  8ba7f010  add.ul r[16:17], r[2:3], r[16:17]
000bb4  9f300000  addli r1, zero, 3
000bb8  1f510000  addli r2, zero, 5
000bbc  7d900000  xwait r1, 0
000bc0  8bb65540  min.sl r[14:15], r[12:13], r[6:7]
000bc4  8bb5b618  sub.sl r[12:13], r[14:15], r[12:13]
000bc8  1f770000  addli r14, zero, 7
000bcc  9f061000  addli r13, zero, 8
000bd0  1f8d0501  addli r26, r11, 128
000bd4  1f561000  addli r12, zero, 13
000bd8  9f454000  addli r11, zero, 36
000bdc  3fb42501  blt.s r11, r18, 268
000be0  1d000100  lock zero, r2
000be4  9f151000  addli r11, zero, 9
000be8  15000014  dma_cfg zero, zero, zero, 10
000bec  15006015  dma_cfg zero, zero, r22, 10
000bf0  15007015  dma_cfg zero, zero, r23, 10
000bf4  15001014  dma_cfg zero, zero, r1, 10
000bf8  15009014  dma_cfg zero, zero, r9, 10
000bfc  15002014  dma_cfg zero, zero, r2, 10
000c00  15001015  dma_cfg zero, zero, r17, 10
000c04  1500e014  dma_cfg zero, zero, r14, 10
000c08  1500d014  dma_cfg zero, zero, r13, 10
000c0c  1500b014  dma_cfg zero, zero, r11, 10
000c10  9f251000  addli r11, zero, 10
000c14  1500b014  dma_cfg zero, zero, r11, 10
000c18  9f351000  addli r11, zero, 11
000c1c  1500b014  dma_cfg zero, zero, r11, 10
000c20  9f451000  addli r11, zero, 12
000c24  1500b014  dma_cfg zero, zero, r11, 10
000c28  9f651000  addli r11, zero, 14
000c2c  1500c014  dma_cfg zero, zero, r12, 10
000c30  1500b014  dma_cfg zero, zero, r11, 10
000c34  9f751000  addli r11, zero, 15
000c38  1500b014  dma_cfg zero, zero, r11, 10
000c3c  9f052000  addli r11, zero, 16
000c40  1500b014  dma_cfg zero, zero, r11, 10
000c44  9f152000  addli r11, zero, 17
000c48  1500b014  dma_cfg zero, zero, r11, 10
000c4c  9f252000  addli r11, zero, 18
000c50  1500b014  dma_cfg zero, zero, r11, 10
000c54  9f352000  addli r11, zero, 19
000c58  1500b014  dma_cfg zero, zero, r11, 10
000c5c  9f452000  addli r11, zero, 20
000c60  1500b014  dma_cfg zero, zero, r11, 10
000c64  9f552000  addli r11, zero, 21
000c68  1500b014  dma_cfg zero, zero, r11, 10
000c6c  9f652000  addli r11, zero, 22
000c70  1500b014  dma_cfg zero, zero, r11, 10
000c74  9f752000  addli r11, zero, 23
000c78  1500b014  dma_cfg zero, zero, r11, 10
000c7c  9f053000  addli r11, zero, 24
000c80  1500b014  dma_cfg zero, zero, r11, 10
000c84  9f153000  addli r11, zero, 25
000c88  1500b014  dma_cfg zero, zero, r11, 10
000c8c  9f253000  addli r11, zero, 26
000c90  1500b014  dma_cfg zero, zero, r11, 10
000c94  9f353000  addli r11, zero, 27
000c98  1500b014  dma_cfg zero, zero, r11, 10
000c9c  9f453000  addli r11, zero, 28
000ca0  1500b014  dma_cfg zero, zero, r11, 10
000ca4  9f553000  addli r11, zero, 29
000ca8  1500b014  dma_cfg zero, zero, r11, 10
000cac  9f653000  addli r11, zero, 30
000cb0  1500b014  dma_cfg zero, zero, r11, 10
000cb4  9f753000  addli r11, zero, 31
000cb8  1500b014  dma_cfg zero, zero, r11, 10
000cbc  150b0b00  dma_cfg r22, r22, zero, 0
000cc0  150b0002  dma_cfg r22, zero, zero, 1
000cc4  15000004  dma_cfg zero, zero, zero, 2
000cc8  150a8006  dma_cfg r20, zero, r8, 3
000ccc  950c6009  dma_cfg r25, zero, r22, 4
000cd0  950c900b  dma_cfg r25, zero, r25, 5
000cd4  15000010  dma_cfg zero, zero, zero, 8
000cd8  35000000  dma_run zero
000cdc  1500600b  dma_cfg zero, zero, r22, 5
000ce0  15000010  dma_cfg zero, zero, zero, 8
000ce4  1d100100  unlock r2
000ce8  ab050300  lui r11, 48
000cec  1d800400  lock zero, r9
000cf0  9f3a0000  addli r21, zero, 3
000cf4  150b0b00  dma_cfg r22, r22, zero, 0
000cf8  9b950504  ori r11, r11, 64
000cfc  15000804  dma_cfg zero, r16, zero, 2
000d00  0b15b510  add.s r10, r10, r11
000d04  15858706  dma_cfg r10, r15, r8, 3
000d08  1f151000  addli r10, zero, 9
000d0c  950c6409  dma_cfg r25, r8, r22, 4
000d10  958cac0b  dma_cfg r25, r25, r26, 5
000d14  15000010  dma_cfg zero, zero, zero, 8
000d18  35000000  dma_run zero
000d1c  1500600b  dma_cfg zero, zero, r22, 5
000d20  15000010  dma_cfg zero, zero, zero, 8
000d24  1d900400  unlock r9
000d28  1d000100  lock zero, r2
000d2c  15000014  dma_cfg zero, zero, zero, 10
000d30  15006015  dma_cfg zero, zero, r22, 10
000d34  15007015  dma_cfg zero, zero, r23, 10
000d38  15001014  dma_cfg zero, zero, r1, 10
000d3c  9f401000  addli r1, zero, 12
000d40  15009014  dma_cfg zero, zero, r9, 10
000d44  15002014  dma_cfg zero, zero, r2, 10
000d48  15001015  dma_cfg zero, zero, r17, 10
000d4c  1500e014  dma_cfg zero, zero, r14, 10
000d50  1500d014  dma_cfg zero, zero, r13, 10
000d54  1500a014  dma_cfg zero, zero, r10, 10
000d58  1f251000  addli r10, zero, 10
000d5c  1500a014  dma_cfg zero, zero, r10, 10
000d60  1f351000  addli r10, zero, 11
000d64  1500a014  dma_cfg zero, zero, r10, 10
000d68  15001014  dma_cfg zero, zero, r1, 10
000d6c  9f601000  addli r1, zero, 14
000d70  1500c014  dma_cfg zero, zero, r12, 10
000d74  15001014  dma_cfg zero, zero, r1, 10
000d78  9f701000  addli r1, zero, 15
000d7c  15001014  dma_cfg zero, zero, r1, 10
000d80  9f002000  addli r1, zero, 16
000d84  15001014  dma_cfg zero, zero, r1, 10
000d88  9f102000  addli r1, zero, 17
000d8c  15001014  dma_cfg zero, zero, r1, 10
000d90  9f202000  addli r1, zero, 18
000d94  15001014  dma_cfg zero, zero, r1, 10
000d98  9f302000  addli r1, zero, 19
000d9c  15001014  dma_cfg zero, zero, r1, 10
000da0  9f402000  addli r1, zero, 20
000da4  15001014  dma_cfg zero, zero, r1, 10
000da8  9f502000  addli r1, zero, 21
000dac  15001014  dma_cfg zero, zero, r1, 10
000db0  9f602000  addli r1, zero, 22
000db4  15001014  dma_cfg zero, zero, r1, 10
000db8  9f702000  addli r1, zero, 23
000dbc  15001014  dma_cfg zero, zero, r1, 10
000dc0  9f003000  addli r1, zero, 24
000dc4  15001014  dma_cfg zero, zero, r1, 10
000dc8  9f103000  addli r1, zero, 25
000dcc  15001014  dma_cfg zero, zero, r1, 10
000dd0  9f203000  addli r1, zero, 26
000dd4  15001014  dma_cfg zero, zero, r1, 10
000dd8  9f303000  addli r1, zero, 27
000ddc  15001014  dma_cfg zero, zero, r1, 10
000de0  9f403000  addli r1, zero, 28
000de4  15001014  dma_cfg zero, zero, r1, 10
000de8  9f503000  addli r1, zero, 29
000dec  15001014  dma_cfg zero, zero, r1, 10
000df0  9f603000  addli r1, zero, 30
000df4  15001014  dma_cfg zero, zero, r1, 10
000df8  9f703000  addli r1, zero, 31
000dfc  15001014  dma_cfg zero, zero, r1, 10
000e00  80300002  core_id r1
000e04  150b0b00  dma_cfg r22, r22, zero, 0
000e08  150b0002  dma_cfg r22, zero, zero, 1
000e0c  15000004  dma_cfg zero, zero, zero, 2
000e10  150a8006  dma_cfg r20, zero, r8, 3
000e14  950c6009  dma_cfg r25, zero, r22, 4
000e18  950ca00b  dma_cfg r25, zero, r26, 5
000e1c  15000010  dma_cfg zero, zero, zero, 8
000e20  35000000  dma_run zero
000e24  1500600b  dma_cfg zero, zero, r22, 5
000e28  15000010  dma_cfg zero, zero, zero, 8
000e2c  1d100100  unlock r2
000e30  7d800b00  xsignal r23, 0
000e34  5b060000  j 48
000e38  7d900b00  xwait r23, 0
000e3c  7d100100  xwait r2, 0
000e40  1d000000  lock zero, zero
000e44  810b0000  ds_cfg r23, zero, 0
000e48  010c0002  ds_cfg r24, zero, 1
000e4c  010c001c  ds_cfg r24, zero, 14
000e50  810c001a  ds_cfg r25, zero, 13
000e54  a1198a03  shuffle_batch r19, r20, r24, 1
000e58  1d100000  unlock zero
000e5c  7d800a00  xsignal r21, 0
000e60  7d800400  xsignal r9, 0
000e64  63051ffc  loadli.w r10,  -504(r30)
000e68  9f05a000  addli r11, zero, 80
000e6c  63469ffe  loadli.w r12,  -180(r30)
000e70  8b15b538  mod.s r11, r10, r11
000e74  1f150500  addli r10, r10, 1
000e78  1f160600  addli r12, r12, 1
000e7c  e700affc  storeli.w r10, -504(r30)
000e80  e744cffe  storeli.w r12, -180(r30)
000e84  1bbde500  slli r26, r11, 14
000e88  bba290fe  bneq r1, r9, -856
000e8c  1f150000  addli r10, zero, 1
000e90  9f170000  addli r15, zero, 1
000e94  1f080000  addli r16, zero, 0
000e98  7d900400  xwait r9, 0
000e9c  7d900600  xwait r13, 0
000ea0  b7f00100  beq r3, zero, 60
000ea4  9b35d800  slli r11, r16, 13
000ea8  1b368800  slli r12, r16, 8
000eac  1d000500  lock zero, r10
000eb0  1f180000  addli r16, zero, 1
000eb4  09049c01  mm_cfg r8, r24, r25, 0
000eb8  9795a501  or r11, r11, r26
000ebc  17167600  or r12, r12, r7
000ec0  898ba404  mm_cfg r23, r9, r10, 2
000ec4  2996b910  mm_acc r12, r19, r11, 8
000ec8  9b851700  andi r11, r15, 1
000ecc  9f070000  addli r15, zero, 0
000ed0  1d100500  unlock r10
000ed4  3bcf05fe  bneq r11, zero, -48
000ed8  5b070000  j 56
000edc  9b35d800  slli r11, r16, 13
000ee0  1b368800  slli r12, r16, 8
000ee4  1d000500  lock zero, r10
000ee8  1f180000  addli r16, zero, 1
000eec  09049c01  mm_cfg r8, r24, r25, 0
000ef0  9795a501  or r11, r11, r26
000ef4  17167600  or r12, r12, r7
000ef8  898ba404  mm_cfg r23, r9, r10, 2
000efc  2986b910  mm r12, r19, r11, 8
000f00  9b851700  andi r11, r15, 1
000f04  9f070000  addli r15, zero, 0
000f08  1d100500  unlock r10
000f0c  3bcf05fe  bneq r11, zero, -48
000f10  1b051e00  andi r10, r28, 1
000f14  9f151000  addli r11, zero, 9
000f18  7d000100  xsignal r2, 0
000f1c  7d800500  xsignal r11, 0
000f20  3b6005fe  bneq r10, zero, -1000
000f24  5b610000  j 776
000f28  63499ffe  loadli.w r18,  -180(r30)
000f2c  1f464000  addli r12, zero, 36
000f30  63051ffc  loadli.w r10,  -504(r30)
000f34  9f05a000  addli r11, zero, 80
000f38  0b16c938  mod.s r12, r18, r12
000f3c  8b15b538  mod.s r11, r10, r11
000f40  1f150500  addli r10, r10, 1
000f44  e700affc  storeli.w r10, -504(r30)
000f48  1b35e600  slli r10, r12, 14
000f4c  2b460c00  lui r12, 196
000f50  1bbde500  slli r26, r11, 14
000f54  9f150900  addli r11, r18, 1
000f58  0b1ac510  add.s r20, r10, r12
000f5c  e744bffe  storeli.w r11, -180(r30)
000f60  37cae000  beq r1, r14, 656
000f64  bb9c60ff  bneq r1, r22, -220
000f68  9f092000  addli r19, zero, 16
000f6c  9f304000  addli r1, zero, 35
000f70  97b53703  sll.d r[12:13], r[16:17], r19
000f74  eb570fc9  load.d r[16:17], -880(r30)
000f78  7d100700  xwait r14, 0
000f7c  8ba7b710  add.ul r[16:17], r[16:17], r[12:13]
000f80  1f561000  addli r12, zero, 13
000f84  3fb42001  blt.s r1, r18, 268
000f88  1d000100  lock zero, r2
000f8c  9f151000  addli r11, zero, 9
000f90  9f401000  addli r1, zero, 12
000f94  15000014  dma_cfg zero, zero, zero, 10
000f98  15006015  dma_cfg zero, zero, r22, 10
000f9c  15007015  dma_cfg zero, zero, r23, 10
000fa0  15005015  dma_cfg zero, zero, r21, 10
000fa4  15009014  dma_cfg zero, zero, r9, 10
000fa8  15002014  dma_cfg zero, zero, r2, 10
000fac  15001015  dma_cfg zero, zero, r17, 10
000fb0  1500e014  dma_cfg zero, zero, r14, 10
000fb4  1500d014  dma_cfg zero, zero, r13, 10
000fb8  1500b014  dma_cfg zero, zero, r11, 10
000fbc  9f251000  addli r11, zero, 10
000fc0  1500b014  dma_cfg zero, zero, r11, 10
000fc4  9f351000  addli r11, zero, 11
000fc8  1500b014  dma_cfg zero, zero, r11, 10
000fcc  15001014  dma_cfg zero, zero, r1, 10
000fd0  9f601000  addli r1, zero, 14
000fd4  1500c014  dma_cfg zero, zero, r12, 10
000fd8  15001014  dma_cfg zero, zero, r1, 10
000fdc  9f701000  addli r1, zero, 15
000fe0  15001014  dma_cfg zero, zero, r1, 10
000fe4  9f102000  addli r1, zero, 17
000fe8  15003015  dma_cfg zero, zero, r19, 10
000fec  15001014  dma_cfg zero, zero, r1, 10
000ff0  9f202000  addli r1, zero, 18
000ff4  15001014  dma_cfg zero, zero, r1, 10
000ff8  9f302000  addli r1, zero, 19
000ffc  15001014  dma_cfg zero, zero, r1, 10
001000  9f402000  addli r1, zero, 20
001004  15001014  dma_cfg zero, zero, r1, 10
001008  9f502000  addli r1, zero, 21
00100c  15001014  dma_cfg zero, zero, r1, 10
001010  9f602000  addli r1, zero, 22
001014  15001014  dma_cfg zero, zero, r1, 10
001018  9f702000  addli r1, zero, 23
00101c  15001014  dma_cfg zero, zero, r1, 10
001020  9f003000  addli r1, zero, 24
001024  15001014  dma_cfg zero, zero, r1, 10
001028  9f103000  addli r1, zero, 25
00102c  15001014  dma_cfg zero, zero, r1, 10
001030  9f203000  addli r1, zero, 26
001034  15001014  dma_cfg zero, zero, r1, 10
001038  9f303000  addli r1, zero, 27
00103c  15001014  dma_cfg zero, zero, r1, 10
001040  9f403000  addli r1, zero, 28
001044  15001014  dma_cfg zero, zero, r1, 10
001048  9f503000  addli r1, zero, 29
00104c  15001014  dma_cfg zero, zero, r1, 10
001050  9f603000  addli r1, zero, 30
001054  15001014  dma_cfg zero, zero, r1, 10
001058  9f703000  addli r1, zero, 31
00105c  15001014  dma_cfg zero, zero, r1, 10
001060  9f000004  addli r1, zero, 512
001064  150b0b00  dma_cfg r22, r22, zero, 0
001068  150b0002  dma_cfg r22, zero, zero, 1
00106c  15000004  dma_cfg zero, zero, zero, 2
001070  150a8006  dma_cfg r20, zero, r8, 3
001074  950c9008  dma_cfg r25, zero, r9, 4
001078  9500800b  dma_cfg r1, zero, r24, 5
00107c  15000010  dma_cfg zero, zero, zero, 8
001080  35000000  dma_run zero
001084  1500600b  dma_cfg zero, zero, r22, 5
001088  15000010  dma_cfg zero, zero, zero, 8
00108c  1d100100  unlock r2
001090  ab400c00  lui r1, 196
001094  1d800400  lock zero, r9
001098  9f680000  addli r17, zero, 6
00109c  150b0b00  dma_cfg r22, r22, zero, 0
0010a0  9b950004  ori r11, r1, 64
0010a4  15000804  dma_cfg zero, r16, zero, 2
0010a8  9f000010  addli r1, zero, 2048
0010ac  0b15b510  add.s r10, r10, r11
0010b0  9f650000  addli r11, zero, 6
0010b4  15858706  dma_cfg r10, r15, r8, 3
0010b8  9f070004  addli r15, zero, 512
0010bc  1f151000  addli r10, zero, 9
0010c0  950c9408  dma_cfg r25, r8, r9, 4
0010c4  9587800b  dma_cfg r15, r1, r24, 5
0010c8  9f401000  addli r1, zero, 12
0010cc  15000010  dma_cfg zero, zero, zero, 8
0010d0  35000000  dma_run zero
0010d4  1500600b  dma_cfg zero, zero, r22, 5
0010d8  15000010  dma_cfg zero, zero, zero, 8
0010dc  1d900400  unlock r9
0010e0  1d000100  lock zero, r2
0010e4  15000014  dma_cfg zero, zero, zero, 10
0010e8  15006015  dma_cfg zero, zero, r22, 10
0010ec  15007015  dma_cfg zero, zero, r23, 10
0010f0  15005015  dma_cfg zero, zero, r21, 10
0010f4  15009014  dma_cfg zero, zero, r9, 10
0010f8  15002014  dma_cfg zero, zero, r2, 10
0010fc  1500b014  dma_cfg zero, zero, r11, 10
001100  1500e014  dma_cfg zero, zero, r14, 10
001104  1500d014  dma_cfg zero, zero, r13, 10
001108  1500a014  dma_cfg zero, zero, r10, 10
00110c  1f251000  addli r10, zero, 10
001110  1500a014  dma_cfg zero, zero, r10, 10
001114  1f351000  addli r10, zero, 11
001118  1500a014  dma_cfg zero, zero, r10, 10
00111c  15001014  dma_cfg zero, zero, r1, 10
001120  9f601000  addli r1, zero, 14
001124  1500c014  dma_cfg zero, zero, r12, 10
001128  15001014  dma_cfg zero, zero, r1, 10
00112c  9f701000  addli r1, zero, 15
001130  15001014  dma_cfg zero, zero, r1, 10
001134  9f102000  addli r1, zero, 17
001138  15003015  dma_cfg zero, zero, r19, 10
00113c  15001014  dma_cfg zero, zero, r1, 10
001140  9f202000  addli r1, zero, 18
001144  15001014  dma_cfg zero, zero, r1, 10
001148  9f302000  addli r1, zero, 19
00114c  15001014  dma_cfg zero, zero, r1, 10
001150  9f402000  addli r1, zero, 20
001154  15001014  dma_cfg zero, zero, r1, 10
001158  9f502000  addli r1, zero, 21
00115c  15001014  dma_cfg zero, zero, r1, 10
001160  9f602000  addli r1, zero, 22
001164  15001014  dma_cfg zero, zero, r1, 10
001168  9f702000  addli r1, zero, 23
00116c  15001014  dma_cfg zero, zero, r1, 10
001170  9f003000  addli r1, zero, 24
001174  15001014  dma_cfg zero, zero, r1, 10
001178  9f103000  addli r1, zero, 25
00117c  15001014  dma_cfg zero, zero, r1, 10
001180  9f203000  addli r1, zero, 26
001184  15001014  dma_cfg zero, zero, r1, 10
001188  9f303000  addli r1, zero, 27
00118c  15001014  dma_cfg zero, zero, r1, 10
001190  9f403000  addli r1, zero, 28
001194  15001014  dma_cfg zero, zero, r1, 10
001198  9f503000  addli r1, zero, 29
00119c  15001014  dma_cfg zero, zero, r1, 10
0011a0  9f603000  addli r1, zero, 30
0011a4  15001014  dma_cfg zero, zero, r1, 10
0011a8  9f703000  addli r1, zero, 31
0011ac  15001014  dma_cfg zero, zero, r1, 10
0011b0  80300002  core_id r1
0011b4  150b0b00  dma_cfg r22, r22, zero, 0
0011b8  150b0002  dma_cfg r22, zero, zero, 1
0011bc  15000004  dma_cfg zero, zero, zero, 2
0011c0  150a8006  dma_cfg r20, zero, r8, 3
0011c4  950c9008  dma_cfg r25, zero, r9, 4
0011c8  9507800b  dma_cfg r15, zero, r24, 5
0011cc  15000010  dma_cfg zero, zero, zero, 8
0011d0  35000000  dma_run zero
0011d4  1500600b  dma_cfg zero, zero, r22, 5
0011d8  15000010  dma_cfg zero, zero, zero, 8
0011dc  1d100100  unlock r2
0011e0  7d800500  xsignal r11, 0
0011e4  1b051e00  andi r10, r28, 1
0011e8  3b4505fc  bneq r10, zero, -1712
0011ec  db070000  j 60
0011f0  1f151000  addli r10, zero, 9
0011f4  7d900800  xwait r17, 0
0011f8  7d100500  xwait r10, 0
0011fc  1d000000  lock zero, zero
001200  810b0000  ds_cfg r23, zero, 0
001204  810c0002  ds_cfg r25, zero, 1
001208  010c001c  ds_cfg r24, zero, 14
00120c  810c001a  ds_cfg r25, zero, 13
001210  410d8a05  shuffle_coa r26, r20, r24, 2
001214  1d100000  unlock zero
001218  7d000700  xsignal r14, 0
00121c  7d800600  xsignal r13, 0
001220  1b051e00  andi r10, r28, 1
001224  3b5405fc  bneq r10, zero, -1772
001228  3bb09000  bneq r1, r9, 12
00122c  9f211000  addli r3, zero, 10
001230  7d800100  xsignal r3, 0
001234  e341eff8  loadli.w r3,  -908(r30)
001238  1f050007  addli r10, zero, 896
00123c  1f3e0000  addli r28, zero, 3
001240  6b598fc7  load.d r[19:20], -904(r30)
001244  b3870c28  zext_int2long r[16:17], r25
001248  ab4d1500  lui r27, 340
00124c  1f7d0000  addli r26, zero, 7
001250  1f0a1000  addli r20, zero, 8
001254  33050528  zext_int2long r[11:12], r10
001258  b3810128  zext_int2long r[4:5], r3
00125c  17396903  sll.d r[19:20], r[19:20], r22
001260  8ba5a140  min.ul r[12:13], r[4:5], r[11:12]
001264  6305cfff  loadli.w r10,  -32(r30)
001268  a7850501  addli.d r[12:13], r[12:13], 128
00126c  8b16c539  mod.s r13, r10, r28
001270  8ba53548  max.ul r[12:13], r[12:13], r[4:5]
001274  8bb53518  sub.sl r[12:13], r[12:13], r[4:5]
001278  1bb29600  slli r4, r13, 9
00127c  8ba6f540  min.ul r[14:15], r[12:13], r[16:17]
001280  9f150500  addli r11, r10, 1
001284  8b11b211  add.s r3, r4, r27
001288  670ebffe  storeli.w r11, -32(r30)
00128c  bba41001  bneq r1, r17, 296
001290  eb520f01  load.d r[6:7], 16(r30)
001294  9f551000  addli r11, zero, 13
001298  1f062000  addli r12, zero, 16
00129c  7d900500  xwait r11, 0
0012a0  8ba22211  add.ul r[6:7], r[6:7], r[19:20]
0012a4  3f89abfa  blt.s r23, r10, -2496
0012a8  1d000100  lock zero, r2
0012ac  9f131000  addli r7, zero, 9
0012b0  9f401000  addli r1, zero, 12
0012b4  15000014  dma_cfg zero, zero, zero, 10
0012b8  15006015  dma_cfg zero, zero, r22, 10
0012bc  15007015  dma_cfg zero, zero, r23, 10
0012c0  1500c015  dma_cfg zero, zero, r28, 10
0012c4  15009014  dma_cfg zero, zero, r9, 10
0012c8  15002014  dma_cfg zero, zero, r2, 10
0012cc  15001015  dma_cfg zero, zero, r17, 10
0012d0  1500a015  dma_cfg zero, zero, r26, 10
0012d4  15004015  dma_cfg zero, zero, r20, 10
0012d8  15007014  dma_cfg zero, zero, r7, 10
0012dc  9f231000  addli r7, zero, 10
0012e0  15007014  dma_cfg zero, zero, r7, 10
0012e4  9f331000  addli r7, zero, 11
0012e8  15007014  dma_cfg zero, zero, r7, 10
0012ec  15001014  dma_cfg zero, zero, r1, 10
0012f0  9f601000  addli r1, zero, 14
0012f4  1500b014  dma_cfg zero, zero, r11, 10
0012f8  15001014  dma_cfg zero, zero, r1, 10
0012fc  9f701000  addli r1, zero, 15
001300  15001014  dma_cfg zero, zero, r1, 10
001304  9f102000  addli r1, zero, 17
001308  1500c014  dma_cfg zero, zero, r12, 10
00130c  15001014  dma_cfg zero, zero, r1, 10
001310  9f202000  addli r1, zero, 18
001314  15001014  dma_cfg zero, zero, r1, 10
001318  9f302000  addli r1, zero, 19
00131c  15001014  dma_cfg zero, zero, r1, 10
001320  9f402000  addli r1, zero, 20
001324  15001014  dma_cfg zero, zero, r1, 10
001328  9f502000  addli r1, zero, 21
00132c  15001014  dma_cfg zero, zero, r1, 10
001330  9f602000  addli r1, zero, 22
001334  15001014  dma_cfg zero, zero, r1, 10
001338  9f702000  addli r1, zero, 23
00133c  15001014  dma_cfg zero, zero, r1, 10
001340  9f003000  addli r1, zero, 24
001344  15001014  dma_cfg zero, zero, r1, 10
001348  9f103000  addli r1, zero, 25
00134c  15001014  dma_cfg zero, zero, r1, 10
001350  9f203000  addli r1, zero, 26
001354  15001014  dma_cfg zero, zero, r1, 10
001358  9f303000  addli r1, zero, 27
00135c  15001014  dma_cfg zero, zero, r1, 10
001360  9f403000  addli r1, zero, 28
001364  15001014  dma_cfg zero, zero, r1, 10
001368  9f503000  addli r1, zero, 29
00136c  15001014  dma_cfg zero, zero, r1, 10
001370  9f603000  addli r1, zero, 30
001374  15001014  dma_cfg zero, zero, r1, 10
001378  9f703000  addli r1, zero, 31
00137c  15001014  dma_cfg zero, zero, r1, 10
001380  9f000004  addli r1, zero, 512
001384  150b0b00  dma_cfg r22, r22, zero, 0
001388  150b0002  dma_cfg r22, zero, zero, 1
00138c  15000004  dma_cfg zero, zero, zero, 2
001390  95018006  dma_cfg r3, zero, r8, 3
001394  950c9008  dma_cfg r25, zero, r9, 4
001398  9500600b  dma_cfg r1, zero, r22, 5
00139c  15000010  dma_cfg zero, zero, zero, 8
0013a0  35000000  dma_run zero
0013a4  1500600b  dma_cfg zero, zero, r22, 5
0013a8  15000010  dma_cfg zero, zero, zero, 8
0013ac  1d100100  unlock r2
0013b0  dba6feff  j -2764
0013b4  6302efff  loadli.w r4,  -16(r30)
0013b8  9b950d60  ori r11, r27, 1536
0013bc  0b15c239  mod.s r10, r4, r28
0013c0  1f160200  addli r12, r4, 1
0013c4  670fcffe  storeli.w r12, -16(r30)
0013c8  1b350501  slli r10, r10, 16
0013cc  0b12b510  add.s r4, r10, r11
0013d0  b7d12000  beq r1, r2, 116
0013d4  3bf3c001  bneq r1, r28, 220
0013d8  1f231000  addli r6, zero, 10
0013dc  9f401000  addli r1, zero, 12
0013e0  9f020000  addli r5, zero, 0
0013e4  9f551000  addli r11, zero, 13
0013e8  7d100300  xwait r6, 0
0013ec  7d900000  xwait r1, 0
0013f0  9f002000  addli r1, zero, 16
0013f4  7d900000  xwait r1, 0
0013f8  1d800b00  lock zero, r23
0013fc  ab00803f  lui r1, 260096
001400  0d000002  ew_cfg zero, zero, zero, 1
001404  8d900000  ewcoeff_cfg r1, r1, zero, 0
001408  9f70f000  addli r1, zero, 127
00140c  0d800004  ew_cfg zero, r1, zero, 2
001410  ab000100  lui r1, 16
001414  0d0b0006  ew_cfg r22, zero, zero, 3
001418  0b135210  add.s r6, r4, r5
00141c  0b955310  add.s r10, r7, r5
001420  9f820204  addli r5, r5, 512
001424  2d033500  dsmadd r6, r10, r3, 0
001428  bbcf12fe  bneq r5, r1, -16
00142c  9f311000  addli r3, zero, 11
001430  1d900b00  unlock r23
001434  9f601000  addli r1, zero, 14
001438  7d800100  xsignal r3, 0
00143c  7d800500  xsignal r11, 0
001440  db210000  j 268
001444  9f601000  addli r1, zero, 14
001448  9f551000  addli r11, zero, 13
00144c  7d900000  xwait r1, 0
001450  1d800b00  lock zero, r23
001454  ab00803f  lui r1, 260096
001458  0d000002  ew_cfg zero, zero, zero, 1
00145c  0d101000  ewcoeff_cfg zero, zero, r1, 0
001460  0d0b0024  ew_cfg r22, zero, zero, 18
001464  8d0b0014  ew_cfg r23, zero, zero, 10
001468  e3409ff8  loadli.w r1,  -948(r30)
00146c  8d0b1b16  ew_cfg r23, r22, r1, 11
001470  abc07f41  lui r1, 268284
001474  0d00001a  ew_cfg zero, zero, zero, 13
001478  0d80141c  ew_cfg zero, r9, r1, 14
00147c  9f701000  addli r1, zero, 15
001480  0d00001e  ew_cfg zero, zero, zero, 15
001484  eb520fc5  load.d r[6:7], -944(r30)
001488  0d000304  ew_cfg zero, r6, zero, 2
00148c  8d040006  ew_cfg r9, zero, zero, 3
001490  8d849426  ew_cfg r9, r9, r9, 19
001494  2d124200  dsmul r4, r4, r4, 0
001498  0d000014  ew_cfg zero, zero, zero, 10
00149c  0d000024  ew_cfg zero, zero, zero, 18
0014a0  0d000026  ew_cfg zero, zero, zero, 19
0014a4  1d900b00  unlock r23
0014a8  7d800000  xsignal r1, 0
0014ac  5bb3feff  j -2664
0014b0  9f551000  addli r11, zero, 13
0014b4  3bc600fa  bneq r1, zero, -2672
0014b8  e340cff8  loadli.w r1,  -924(r30)
0014bc  eb558fc6  load.d r[12:13], -920(r30)
0014c0  6b5a8f01  load.d r[21:22], 24(r30)
0014c4  9b930d64  ori r7, r27, 1600
0014c8  8b137510  add.s r7, r10, r7
0014cc  1ff53600  addli r10, r13, 31
0014d0  b3910028  sext_int2long r[4:5], r1
0014d4  9f202000  addli r1, zero, 18
0014d8  8bb25140  min.sl r[6:7], r[4:5], r[6:7]
0014dc  97b51502  sll.d r[12:13], r[12:13], r1
0014e0  9f701000  addli r1, zero, 15
0014e4  a7820201  addli.d r[6:7], r[6:7], 128
0014e8  8b25ba10  add.ul r[12:13], r[21:22], r[12:13]
0014ec  7d900000  xwait r1, 0
0014f0  1d000100  lock zero, r2
0014f4  9f000004  addli r1, zero, 512
0014f8  150b0b00  dma_cfg r22, r22, zero, 0
0014fc  8bb23248  max.sl r[6:7], r[6:7], r[4:5]
001500  15000b02  dma_cfg zero, r22, zero, 1
001504  8bb13218  sub.sl r[4:5], r[6:7], r[4:5]
001508  8ba22511  add.ul r[6:7], r[12:13], r[19:20]
00150c  9f551000  addli r11, zero, 13
001510  15030004  dma_cfg r6, zero, zero, 2
001514  8bb1f140  min.sl r[4:5], r[4:5], r[16:17]
001518  95828306  dma_cfg r5, r7, r8, 3
00151c  9b425500  srli r5, r10, 5
001520  1bb31600  slli r6, r13, 1
001524  15845c08  dma_cfg r8, r25, r5, 4
001528  9b02e303  andi r5, r6, 62
00152c  1f030010  addli r6, zero, 2048
001530  1583300a  dma_cfg r6, r1, r3, 5
001534  9f002000  addli r1, zero, 16
001538  15005010  dma_cfg zero, zero, r5, 8
00153c  35000000  dma_run zero
001540  1500600b  dma_cfg zero, zero, r22, 5
001544  15000010  dma_cfg zero, zero, zero, 8
001548  1d100100  unlock r2
00154c  7d800000  xsignal r1, 0
001550  db9efeff  j -2828
001554  80300002  core_id r1
001558  7d000000  xsignal zero, 0
00155c  bbe00000  bneq r1, zero, 56
001560  9f200000  addli r1, zero, 2
001564  7d100000  xwait zero, 0
001568  7d100000  xwait zero, 0
00156c  7d100000  xwait zero, 0
001570  7d100000  xwait zero, 0
001574  7d100000  xwait zero, 0
001578  7d100000  xwait zero, 0
00157c  7d100000  xwait zero, 0
001580  7d100000  xwait zero, 0
001584  1d800000  lock zero, r1
001588  0d000020  ew_cfg zero, zero, zero, 16
00158c  1d900000  unlock r1
001590  7d400000  xsignal_mode_cfg zero
001594  9f8e7e07  addli sp, sp, 952
001598  00a00300  mfence { lm, sm, gm }
00159c  00100000  exit
0015a0  00100000  exit
0015a4  00100000  exit
0015a8  00100000  exit
0015ac  00100000  exit
0015b0  00100000  exit
0015b4  00100000  exit
0015b8  00100000  exit
0015bc  00100000  exit
0015c0  00100000  exit
0015c4  00100000  exit
0015c8  00100000  exit
0015cc  00100000  exit
0015d0  00100000  exit
0015d4  00100000  exit
0015d8  00100000  exit
0015dc  00100000  exit
0015e0  00100000  exit
0015e4  00100000  exit
0015e8  00100000  exit
0015ec  00100000  exit
0015f0  00100000  exit
0015f4  00100000  exit
0015f8  00100000  exit
0015fc  00100000  exit
001600  00100000  exit
001604  00100000  exit
001608  00100000  exit
00160c  00100000  exit
001610  00100000  exit
001614  00100000  exit
001618  00100000  exit
00161c  00100000  exit
001620  00100000  exit
001624  00100000  exit
001628  00100000  exit
00162c  00100000  exit
001630  00100000  exit
001634  00100000  exit
001638  00100000  exit
00163c  00100000  exit
001640  00100000  exit
001644  00100000  exit
001648  00100000  exit
00164c  00100000  exit
001650  00100000  exit
001654  00100000  exit
001658  00100000  exit
00165c  00100000  exit
001660  00100000  exit
001664  00100000  exit
001668  00100000  exit
00166c  00100000  exit
001670  00100000  exit
001674  00100000  exit
001678  00100000  exit
00167c  00100000  exit
001680  00100000  exit
001684  00100000  exit
001688  00100000  exit
00168c  00100000  exit
001690  00100000  exit
001694  00100000  exit
001698  00100000  exit
00169c  00100000  exit
0016a0  00100000  exit
0016a4  00100000  exit
0016a8  00100000  exit
0016ac  00100000  exit
0016b0  00100000  exit
0016b4  00100000  exit
0016b8  00100000  exit
0016bc  00100000  exit
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
