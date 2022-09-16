
hello2.exe:     file format pei-x86-64


Disassembly of section .rdata:

0000000140009000 <.rdata>:
   140009000:	48                   	rex.W
   140009001:	65 6c                	gs ins BYTE PTR es:[rdi],dx
   140009003:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009004:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009005:	20 57 6f             	and    BYTE PTR [rdi+0x6f],dl
   140009008:	72 6c                	jb     140009076 <_tls_used+0x36>
   14000900a:	64 0a 00             	or     al,BYTE PTR fs:[rax]
	...

0000000140009020 <__dyn_tls_init_callback>:
   140009020:	d0 16                	rcl    BYTE PTR [rsi],1
   140009022:	00 40 01             	add    BYTE PTR [rax+0x1],al
	...

0000000140009040 <_tls_used>:
   140009040:	00 00                	add    BYTE PTR [rax],al
   140009042:	01 40 01             	add    DWORD PTR [rax+0x1],eax
   140009045:	00 00                	add    BYTE PTR [rax],al
   140009047:	00 08                	add    BYTE PTR [rax],cl
   140009049:	00 01                	add    BYTE PTR [rcx],al
   14000904b:	40 01 00             	rex add DWORD PTR [rax],eax
   14000904e:	00 00                	add    BYTE PTR [rax],al
   140009050:	7c d0                	jl     140009022 <__dyn_tls_init_callback+0x2>
   140009052:	00 40 01             	add    BYTE PTR [rax+0x1],al
   140009055:	00 00                	add    BYTE PTR [rax],al
   140009057:	00 38                	add    BYTE PTR [rax],bh
   140009059:	f0 00 40 01          	lock add BYTE PTR [rax+0x1],al
	...

0000000140009080 <.rdata>:
   140009080:	41 72 67             	rex.B jb 1400090ea <.rdata+0x6a>
   140009083:	75 6d                	jne    1400090f2 <.rdata+0x72>
   140009085:	65 6e                	outs   dx,BYTE PTR gs:[rsi]
   140009087:	74 20                	je     1400090a9 <.rdata+0x29>
   140009089:	64 6f                	outs   dx,DWORD PTR fs:[rsi]
   14000908b:	6d                   	ins    DWORD PTR es:[rdi],dx
   14000908c:	61                   	(bad)
   14000908d:	69 6e 20 65 72 72 6f 	imul   ebp,DWORD PTR [rsi+0x20],0x6f727265
   140009094:	72 20                	jb     1400090b6 <.rdata+0x36>
   140009096:	28 44 4f 4d          	sub    BYTE PTR [rdi+rcx*2+0x4d],al
   14000909a:	41                   	rex.B
   14000909b:	49                   	rex.WB
   14000909c:	4e 29 00             	rex.WRX sub QWORD PTR [rax],r8
   14000909f:	41 72 67             	rex.B jb 140009109 <.rdata+0x89>
   1400090a2:	75 6d                	jne    140009111 <.rdata+0x91>
   1400090a4:	65 6e                	outs   dx,BYTE PTR gs:[rsi]
   1400090a6:	74 20                	je     1400090c8 <.rdata+0x48>
   1400090a8:	73 69                	jae    140009113 <.rdata+0x93>
   1400090aa:	6e                   	outs   dx,BYTE PTR ds:[rsi]
   1400090ab:	67 75 6c             	addr32 jne 14000911a <.rdata+0x9a>
   1400090ae:	61                   	(bad)
   1400090af:	72 69                	jb     14000911a <.rdata+0x9a>
   1400090b1:	74 79                	je     14000912c <.rdata+0xac>
   1400090b3:	20 28                	and    BYTE PTR [rax],ch
   1400090b5:	53                   	push   rbx
   1400090b6:	49                   	rex.WB
   1400090b7:	47                   	rex.RXB
   1400090b8:	4e 29 00             	rex.WRX sub QWORD PTR [rax],r8
   1400090bb:	00 00                	add    BYTE PTR [rax],al
   1400090bd:	00 00                	add    BYTE PTR [rax],al
   1400090bf:	00 4f 76             	add    BYTE PTR [rdi+0x76],cl
   1400090c2:	65 72 66             	gs jb  14000912b <.rdata+0xab>
   1400090c5:	6c                   	ins    BYTE PTR es:[rdi],dx
   1400090c6:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   1400090c7:	77 20                	ja     1400090e9 <.rdata+0x69>
   1400090c9:	72 61                	jb     14000912c <.rdata+0xac>
   1400090cb:	6e                   	outs   dx,BYTE PTR ds:[rsi]
   1400090cc:	67 65 20 65 72       	and    BYTE PTR gs:[ebp+0x72],ah
   1400090d1:	72 6f                	jb     140009142 <.rdata+0xc2>
   1400090d3:	72 20                	jb     1400090f5 <.rdata+0x75>
   1400090d5:	28 4f 56             	sub    BYTE PTR [rdi+0x56],cl
   1400090d8:	45 52                	rex.RB push r10
   1400090da:	46                   	rex.RX
   1400090db:	4c                   	rex.WR
   1400090dc:	4f 57                	rex.WRXB push r15
   1400090de:	29 00                	sub    DWORD PTR [rax],eax
   1400090e0:	50                   	push   rax
   1400090e1:	61                   	(bad)
   1400090e2:	72 74                	jb     140009158 <.rdata+0xd8>
   1400090e4:	69 61 6c 20 6c 6f 73 	imul   esp,DWORD PTR [rcx+0x6c],0x736f6c20
   1400090eb:	73 20                	jae    14000910d <.rdata+0x8d>
   1400090ed:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   1400090ee:	66 20 73 69          	data16 and BYTE PTR [rbx+0x69],dh
   1400090f2:	67 6e                	outs   dx,BYTE PTR ds:[esi]
   1400090f4:	69 66 69 63 61 6e 63 	imul   esp,DWORD PTR [rsi+0x69],0x636e6163
   1400090fb:	65 20 28             	and    BYTE PTR gs:[rax],ch
   1400090fe:	50                   	push   rax
   1400090ff:	4c                   	rex.WR
   140009100:	4f 53                	rex.WRXB push r11
   140009102:	53                   	push   rbx
   140009103:	29 00                	sub    DWORD PTR [rax],eax
   140009105:	00 00                	add    BYTE PTR [rax],al
   140009107:	00 54 6f 74          	add    BYTE PTR [rdi+rbp*2+0x74],dl
   14000910b:	61                   	(bad)
   14000910c:	6c                   	ins    BYTE PTR es:[rdi],dx
   14000910d:	20 6c 6f 73          	and    BYTE PTR [rdi+rbp*2+0x73],ch
   140009111:	73 20                	jae    140009133 <.rdata+0xb3>
   140009113:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009114:	66 20 73 69          	data16 and BYTE PTR [rbx+0x69],dh
   140009118:	67 6e                	outs   dx,BYTE PTR ds:[esi]
   14000911a:	69 66 69 63 61 6e 63 	imul   esp,DWORD PTR [rsi+0x69],0x636e6163
   140009121:	65 20 28             	and    BYTE PTR gs:[rax],ch
   140009124:	54                   	push   rsp
   140009125:	4c                   	rex.WR
   140009126:	4f 53                	rex.WRXB push r11
   140009128:	53                   	push   rbx
   140009129:	29 00                	sub    DWORD PTR [rax],eax
   14000912b:	00 00                	add    BYTE PTR [rax],al
   14000912d:	00 00                	add    BYTE PTR [rax],al
   14000912f:	00 54 68 65          	add    BYTE PTR [rax+rbp*2+0x65],dl
   140009133:	20 72 65             	and    BYTE PTR [rdx+0x65],dh
   140009136:	73 75                	jae    1400091ad <.rdata+0x12d>
   140009138:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009139:	74 20                	je     14000915b <.rdata+0xdb>
   14000913b:	69 73 20 74 6f 6f 20 	imul   esi,DWORD PTR [rbx+0x20],0x206f6f74
   140009142:	73 6d                	jae    1400091b1 <.rdata+0x131>
   140009144:	61                   	(bad)
   140009145:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009146:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009147:	20 74 6f 20          	and    BYTE PTR [rdi+rbp*2+0x20],dh
   14000914b:	62 65                	(bad)
   14000914d:	20 72 65             	and    BYTE PTR [rdx+0x65],dh
   140009150:	70 72                	jo     1400091c4 <.rdata+0x4>
   140009152:	65 73 65             	gs jae 1400091ba <.rdata+0x13a>
   140009155:	6e                   	outs   dx,BYTE PTR ds:[rsi]
   140009156:	74 65                	je     1400091bd <.rdata+0x13d>
   140009158:	64 20 28             	and    BYTE PTR fs:[rax],ch
   14000915b:	55                   	push   rbp
   14000915c:	4e                   	rex.WRX
   14000915d:	44                   	rex.R
   14000915e:	45 52                	rex.RB push r10
   140009160:	46                   	rex.RX
   140009161:	4c                   	rex.WR
   140009162:	4f 57                	rex.WRXB push r15
   140009164:	29 00                	sub    DWORD PTR [rax],eax
   140009166:	55                   	push   rbp
   140009167:	6e                   	outs   dx,BYTE PTR ds:[rsi]
   140009168:	6b 6e 6f 77          	imul   ebp,DWORD PTR [rsi+0x6f],0x77
   14000916c:	6e                   	outs   dx,BYTE PTR ds:[rsi]
   14000916d:	20 65 72             	and    BYTE PTR [rbp+0x72],ah
   140009170:	72 6f                	jb     1400091e1 <.rdata+0x21>
   140009172:	72 00                	jb     140009174 <.rdata+0xf4>
   140009174:	00 00                	add    BYTE PTR [rax],al
   140009176:	00 00                	add    BYTE PTR [rax],al
   140009178:	5f                   	pop    rdi
   140009179:	6d                   	ins    DWORD PTR es:[rdi],dx
   14000917a:	61                   	(bad)
   14000917b:	74 68                	je     1400091e5 <.rdata+0x25>
   14000917d:	65 72 72             	gs jb  1400091f2 <.rdata+0x32>
   140009180:	28 29                	sub    BYTE PTR [rcx],ch
   140009182:	3a 20                	cmp    ah,BYTE PTR [rax]
   140009184:	25 73 20 69 6e       	and    eax,0x6e692073
   140009189:	20 25 73 28 25 67    	and    BYTE PTR [rip+0x67252873],ah        # 1a725ba02 <.debug_rnglists+0x6721b4fa>
   14000918f:	2c 20                	sub    al,0x20
   140009191:	25 67 29 20 20       	and    eax,0x20202967
   140009196:	28 72 65             	sub    BYTE PTR [rdx+0x65],dh
   140009199:	74 76                	je     140009211 <.rdata+0x51>
   14000919b:	61                   	(bad)
   14000919c:	6c                   	ins    BYTE PTR es:[rdi],dx
   14000919d:	3d 25 67 29 0a       	cmp    eax,0xa296725
   1400091a2:	00 00                	add    BYTE PTR [rax],al
   1400091a4:	b8 86 ff ff 6c       	mov    eax,0x6cffff86
   1400091a9:	86 ff                	xchg   bh,bh
   1400091ab:	ff 04 86             	inc    DWORD PTR [rsi+rax*4]
   1400091ae:	ff                   	(bad)
   1400091af:	ff 8c 86 ff ff 9c 86 	dec    DWORD PTR [rsi+rax*4-0x79630001]
   1400091b6:	ff                   	(bad)
   1400091b7:	ff ac 86 ff ff 7c 86 	jmp    FWORD PTR [rsi+rax*4-0x79830001]
   1400091be:	ff                   	(bad)
   1400091bf:	ff               	dec    DWORD PTR [rbp+0x69]

00000001400091c0 <.rdata>:
   1400091c0:	4d 69 6e 67 77 2d 77 	imul   r13,QWORD PTR [r14+0x67],0x36772d77
   1400091c7:	36 
   1400091c8:	34 20                	xor    al,0x20
   1400091ca:	72 75                	jb     140009241 <.rdata+0x81>
   1400091cc:	6e                   	outs   dx,BYTE PTR ds:[rsi]
   1400091cd:	74 69                	je     140009238 <.rdata+0x78>
   1400091cf:	6d                   	ins    DWORD PTR es:[rdi],dx
   1400091d0:	65 20 66 61          	and    BYTE PTR gs:[rsi+0x61],ah
   1400091d4:	69 6c 75 72 65 3a 0a 	imul   ebp,DWORD PTR [rbp+rsi*2+0x72],0xa3a65
   1400091db:	00 
   1400091dc:	00 00                	add    BYTE PTR [rax],al
   1400091de:	00 00                	add    BYTE PTR [rax],al
   1400091e0:	41                   	rex.B
   1400091e1:	64 64 72 65          	fs fs jb 14000924a <.rdata+0x8a>
   1400091e5:	73 73                	jae    14000925a <.rdata+0x9a>
   1400091e7:	20 25 70 20 68 61    	and    BYTE PTR [rip+0x61682070],ah        # 1a168b25d <.debug_rnglists+0x6164ad55>
   1400091ed:	73 20                	jae    14000920f <.rdata+0x4f>
   1400091ef:	6e                   	outs   dx,BYTE PTR ds:[rsi]
   1400091f0:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   1400091f1:	20 69 6d             	and    BYTE PTR [rcx+0x6d],ch
   1400091f4:	61                   	(bad)
   1400091f5:	67 65 2d 73 65 63 74 	addr32 gs sub eax,0x74636573
   1400091fc:	69 6f 6e 00 20 20 56 	imul   ebp,DWORD PTR [rdi+0x6e],0x56202000
   140009203:	69 72 74 75 61 6c 51 	imul   esi,DWORD PTR [rdx+0x74],0x516c6175
   14000920a:	75 65                	jne    140009271 <.rdata+0xb1>
   14000920c:	72 79                	jb     140009287 <.rdata+0xc7>
   14000920e:	20 66 61             	and    BYTE PTR [rsi+0x61],ah
   140009211:	69 6c 65 64 20 66 6f 	imul   ebp,DWORD PTR [rbp+riz*2+0x64],0x726f6620
   140009218:	72 
   140009219:	20 25 64 20 62 79    	and    BYTE PTR [rip+0x79622064],ah        # 1b962b283 <.debug_rnglists+0x795ead7b>
   14000921f:	74 65                	je     140009286 <.rdata+0xc6>
   140009221:	73 20                	jae    140009243 <.rdata+0x83>
   140009223:	61                   	(bad)
   140009224:	74 20                	je     140009246 <.rdata+0x86>
   140009226:	61                   	(bad)
   140009227:	64 64 72 65          	fs fs jb 140009290 <.rdata+0xd0>
   14000922b:	73 73                	jae    1400092a0 <.rdata+0xe0>
   14000922d:	20 25 70 00 00 00    	and    BYTE PTR [rip+0x70],ah        # 1400092a3 <.rdata+0xe3>
   140009233:	00 00                	add    BYTE PTR [rax],al
   140009235:	00 00                	add    BYTE PTR [rax],al
   140009237:	00 20                	add    BYTE PTR [rax],ah
   140009239:	20 56 69             	and    BYTE PTR [rsi+0x69],dl
   14000923c:	72 74                	jb     1400092b2 <.rdata+0xf2>
   14000923e:	75 61                	jne    1400092a1 <.rdata+0xe1>
   140009240:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009241:	50                   	push   rax
   140009242:	72 6f                	jb     1400092b3 <.rdata+0xf3>
   140009244:	74 65                	je     1400092ab <.rdata+0xeb>
   140009246:	63 74 20 66          	movsxd esi,DWORD PTR [rax+riz*1+0x66]
   14000924a:	61                   	(bad)
   14000924b:	69 6c 65 64 20 77 69 	imul   ebp,DWORD PTR [rbp+riz*2+0x64],0x74697720
   140009252:	74 
   140009253:	68 20 63 6f 64       	push   0x646f6320
   140009258:	65 20 30             	and    BYTE PTR gs:[rax],dh
   14000925b:	78 25                	js     140009282 <.rdata+0xc2>
   14000925d:	78 00                	js     14000925f <.rdata+0x9f>
   14000925f:	00 20                	add    BYTE PTR [rax],ah
   140009261:	20 55 6e             	and    BYTE PTR [rbp+0x6e],dl
   140009264:	6b 6e 6f 77          	imul   ebp,DWORD PTR [rsi+0x6f],0x77
   140009268:	6e                   	outs   dx,BYTE PTR ds:[rsi]
   140009269:	20 70 73             	and    BYTE PTR [rax+0x73],dh
   14000926c:	65 75 64             	gs jne 1400092d3 <.rdata+0x113>
   14000926f:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009270:	20 72 65             	and    BYTE PTR [rdx+0x65],dh
   140009273:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009274:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009275:	63 61 74             	movsxd esp,DWORD PTR [rcx+0x74]
   140009278:	69 6f 6e 20 70 72 6f 	imul   ebp,DWORD PTR [rdi+0x6e],0x6f727020
   14000927f:	74 6f                	je     1400092f0 <.rdata+0x130>
   140009281:	63 6f 6c             	movsxd ebp,DWORD PTR [rdi+0x6c]
   140009284:	20 76 65             	and    BYTE PTR [rsi+0x65],dh
   140009287:	72 73                	jb     1400092fc <.rdata+0x13c>
   140009289:	69 6f 6e 20 25 64 2e 	imul   ebp,DWORD PTR [rdi+0x6e],0x2e642520
   140009290:	0a 00                	or     al,BYTE PTR [rax]
   140009292:	00 00                	add    BYTE PTR [rax],al
   140009294:	00 00                	add    BYTE PTR [rax],al
   140009296:	00 00                	add    BYTE PTR [rax],al
   140009298:	20 20                	and    BYTE PTR [rax],ah
   14000929a:	55                   	push   rbp
   14000929b:	6e                   	outs   dx,BYTE PTR ds:[rsi]
   14000929c:	6b 6e 6f 77          	imul   ebp,DWORD PTR [rsi+0x6f],0x77
   1400092a0:	6e                   	outs   dx,BYTE PTR ds:[rsi]
   1400092a1:	20 70 73             	and    BYTE PTR [rax+0x73],dh
   1400092a4:	65 75 64             	gs jne 14000930b <.rdata+0x14b>
   1400092a7:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   1400092a8:	20 72 65             	and    BYTE PTR [rdx+0x65],dh
   1400092ab:	6c                   	ins    BYTE PTR es:[rdi],dx
   1400092ac:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   1400092ad:	63 61 74             	movsxd esp,DWORD PTR [rcx+0x74]
   1400092b0:	69 6f 6e 20 62 69 74 	imul   ebp,DWORD PTR [rdi+0x6e],0x74696220
   1400092b7:	20 73 69             	and    BYTE PTR [rbx+0x69],dh
   1400092ba:	7a 65                	jp     140009321 <.rdata+0x1>
   1400092bc:	20 25 64 2e 0a 00    	and    BYTE PTR [rip+0xa2e64],ah        # 1400ac126 <.debug_rnglists+0x6bc1e>
   1400092c2:	00 00                	add    BYTE PTR [rax],al
   1400092c4:	00 00                	add    BYTE PTR [rax],al
   1400092c6:	00 00                	add    BYTE PTR [rax],al
   1400092c8:	25 64 20 62 69       	and    eax,0x69622064
   1400092cd:	74 20                	je     1400092ef <.rdata+0x12f>
   1400092cf:	70 73                	jo     140009344 <.rdata+0x24>
   1400092d1:	65 75 64             	gs jne 140009338 <.rdata+0x18>
   1400092d4:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   1400092d5:	20 72 65             	and    BYTE PTR [rdx+0x65],dh
   1400092d8:	6c                   	ins    BYTE PTR es:[rdi],dx
   1400092d9:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   1400092da:	63 61 74             	movsxd esp,DWORD PTR [rcx+0x74]
   1400092dd:	69 6f 6e 20 61 74 20 	imul   ebp,DWORD PTR [rdi+0x6e],0x20746120
   1400092e4:	25 70 20 6f 75       	and    eax,0x756f2070
   1400092e9:	74 20                	je     14000930b <.rdata+0x14b>
   1400092eb:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   1400092ec:	66 20 72 61          	data16 and BYTE PTR [rdx+0x61],dh
   1400092f0:	6e                   	outs   dx,BYTE PTR ds:[rsi]
   1400092f1:	67 65 2c 20          	addr32 gs sub al,0x20
   1400092f5:	74 61                	je     140009358 <.rdata+0x8>
   1400092f7:	72 67                	jb     140009360 <.rdata+0x10>
   1400092f9:	65 74 69             	gs je  140009365 <.rdata+0x15>
   1400092fc:	6e                   	outs   dx,BYTE PTR ds:[rsi]
   1400092fd:	67 20 25 70 2c 20 79 	and    BYTE PTR [eip+0x79202c70],ah        # 1b920bf74 <.debug_rnglists+0x791cba6c>
   140009304:	69 65 6c 64 69 6e 67 	imul   esp,DWORD PTR [rbp+0x6c],0x676e6964
   14000930b:	20 74 68 65          	and    BYTE PTR [rax+rbp*2+0x65],dh
   14000930f:	20 76 61             	and    BYTE PTR [rsi+0x61],dh
   140009312:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009313:	75 65                	jne    14000937a <.rdata+0x2a>
   140009315:	20 25 70 2e 0a 00    	and    BYTE PTR [rip+0xa2e70],ah        # 1400ac18b <.debug_rnglists+0x6bc83>
   14000931b:	00 00                	add    BYTE PTR [rax],al
   14000931d:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009320 <.rdata>:
   140009320:	d0 8b ff ff d0 8b    	ror    BYTE PTR [rbx-0x742f0001],1
   140009326:	ff                   	(bad)
   140009327:	ff d0                	call   rax
   140009329:	8b ff                	mov    edi,edi
   14000932b:	ff d0                	call   rax
   14000932d:	8b ff                	mov    edi,edi
   14000932f:	ff d0                	call   rax
   140009331:	8b ff                	mov    edi,edi
   140009333:	ff                   	(bad)
   140009334:	7d 8b                	jge    1400092c1 <.rdata+0x101>
   140009336:	ff                   	(bad)
   140009337:	ff d0                	call   rax
   140009339:	8b ff                	mov    edi,edi
   14000933b:	ff                   	(bad)
   14000933c:	f8                   	clc
   14000933d:	8b ff                	mov    edi,edi
   14000933f:	ff                   	(bad)
   140009340:	7d 8b                	jge    1400092cd <.rdata+0x10d>
   140009342:	ff                   	(bad)
   140009343:	ff 5b 8b             	call   FWORD PTR [rbx-0x75]
   140009346:	ff                   	(bad)
   140009347:	ff 00                	inc    DWORD PTR [rax]
   140009349:	00 00                	add    BYTE PTR [rax],al
   14000934b:	00 00                	add    BYTE PTR [rax],al
   14000934d:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009350 <.rdata>:
   140009350:	28 6e 75             	sub    BYTE PTR [rsi+0x75],ch
   140009353:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009354:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009355:	29 00                	sub    DWORD PTR [rax],eax
   140009357:	00 28                	add    BYTE PTR [rax],ch
   140009359:	00 6e 00             	add    BYTE PTR [rsi+0x0],ch
   14000935c:	75 00                	jne    14000935e <.rdata+0xe>
   14000935e:	6c                   	ins    BYTE PTR es:[rdi],dx
   14000935f:	00 6c 00 29          	add    BYTE PTR [rax+rax*1+0x29],ch
   140009363:	00 00                	add    BYTE PTR [rax],al
   140009365:	00 4e 61             	add    BYTE PTR [rsi+0x61],cl
   140009368:	4e 00 49 6e          	rex.WRX add BYTE PTR [rcx+0x6e],r9b
   14000936c:	66 00 00             	data16 add BYTE PTR [rax],al
   14000936f:	00 78 b3             	add    BYTE PTR [rax-0x4d],bh
   140009372:	ff                   	(bad)
   140009373:	ff 98 af ff ff 98    	call   FWORD PTR [rax-0x67000051]
   140009379:	af                   	scas   eax,DWORD PTR es:[rdi]
   14000937a:	ff                   	(bad)
   14000937b:	ff 42 b6             	inc    DWORD PTR [rdx-0x4a]
   14000937e:	ff                   	(bad)
   14000937f:	ff 98 af ff ff 5a    	call   FWORD PTR [rax+0x5affffaf]
   140009385:	b5 ff                	mov    ch,0xff
   140009387:	ff 98 af ff ff 71    	call   FWORD PTR [rax+0x71ffffaf]
   14000938d:	b5 ff                	mov    ch,0xff
   14000938f:	ff 98 af ff ff 98    	call   FWORD PTR [rax-0x67000051]
   140009395:	af                   	scas   eax,DWORD PTR es:[rdi]
   140009396:	ff                   	(bad)
   140009397:	ff                   	(bad)
   140009398:	ea                   	(bad)
   140009399:	b5 ff                	mov    ch,0xff
   14000939b:	ff 25 b6 ff ff 98    	jmp    QWORD PTR [rip+0xffffffff98ffffb6]        # d9009357 <__size_of_stack_reserve__+0xd8e09357>
   1400093a1:	af                   	scas   eax,DWORD PTR es:[rdi]
   1400093a2:	ff                   	(bad)
   1400093a3:	ff 92 b3 ff ff af    	call   QWORD PTR [rdx-0x5000004d]
   1400093a9:	b3 ff                	mov    bl,0xff
   1400093ab:	ff 98 af ff ff cb    	call   FWORD PTR [rax-0x34000051]
   1400093b1:	b3 ff                	mov    bl,0xff
   1400093b3:	ff 98 af ff ff 98    	call   FWORD PTR [rax-0x67000051]
   1400093b9:	af                   	scas   eax,DWORD PTR es:[rdi]
   1400093ba:	ff                   	(bad)
   1400093bb:	ff 98 af ff ff 98    	call   FWORD PTR [rax-0x67000051]
   1400093c1:	af                   	scas   eax,DWORD PTR es:[rdi]
   1400093c2:	ff                   	(bad)
   1400093c3:	ff 98 af ff ff 98    	call   FWORD PTR [rax-0x67000051]
   1400093c9:	af                   	scas   eax,DWORD PTR es:[rdi]
   1400093ca:	ff                   	(bad)
   1400093cb:	ff 98 af ff ff 98    	call   FWORD PTR [rax-0x67000051]
   1400093d1:	af                   	scas   eax,DWORD PTR es:[rdi]
   1400093d2:	ff                   	(bad)
   1400093d3:	ff 98 af ff ff 98    	call   FWORD PTR [rax-0x67000051]
   1400093d9:	af                   	scas   eax,DWORD PTR es:[rdi]
   1400093da:	ff                   	(bad)
   1400093db:	ff 98 af ff ff 98    	call   FWORD PTR [rax-0x67000051]
   1400093e1:	af                   	scas   eax,DWORD PTR es:[rdi]
   1400093e2:	ff                   	(bad)
   1400093e3:	ff 98 af ff ff 98    	call   FWORD PTR [rax-0x67000051]
   1400093e9:	af                   	scas   eax,DWORD PTR es:[rdi]
   1400093ea:	ff                   	(bad)
   1400093eb:	ff 98 af ff ff 98    	call   FWORD PTR [rax-0x67000051]
   1400093f1:	af                   	scas   eax,DWORD PTR es:[rdi]
   1400093f2:	ff                   	(bad)
   1400093f3:	ff                   	(bad)
   1400093f4:	e8 b3 ff ff 98       	call   d90093ac <__size_of_stack_reserve__+0xd8e093ac>
   1400093f9:	af                   	scas   eax,DWORD PTR es:[rdi]
   1400093fa:	ff                   	(bad)
   1400093fb:	ff 90 b4 ff ff 98    	call   QWORD PTR [rax-0x6700004c]
   140009401:	af                   	scas   eax,DWORD PTR es:[rdi]
   140009402:	ff                   	(bad)
   140009403:	ff c7                	inc    edi
   140009405:	b4 ff                	mov    ah,0xff
   140009407:	ff                   	(bad)
   140009408:	f8                   	clc
   140009409:	b4 ff                	mov    ah,0xff
   14000940b:	ff 29                	jmp    FWORD PTR [rcx]
   14000940d:	b5 ff                	mov    ch,0xff
   14000940f:	ff 98 af ff ff 99    	call   FWORD PTR [rax-0x66000051]
   140009415:	b1 ff                	mov    cl,0xff
   140009417:	ff 98 af ff ff 98    	call   FWORD PTR [rax-0x67000051]
   14000941d:	af                   	scas   eax,DWORD PTR es:[rdi]
   14000941e:	ff                   	(bad)
   14000941f:	ff d0                	call   rax
   140009421:	b1 ff                	mov    cl,0xff
   140009423:	ff 98 af ff ff 98    	call   FWORD PTR [rax-0x67000051]
   140009429:	af                   	scas   eax,DWORD PTR es:[rdi]
   14000942a:	ff                   	(bad)
   14000942b:	ff 98 af ff ff 98    	call   FWORD PTR [rax-0x67000051]
   140009431:	af                   	scas   eax,DWORD PTR es:[rdi]
   140009432:	ff                   	(bad)
   140009433:	ff 98 af ff ff 98    	call   FWORD PTR [rax-0x67000051]
   140009439:	af                   	scas   eax,DWORD PTR es:[rdi]
   14000943a:	ff                   	(bad)
   14000943b:	ff a6 b6 ff ff 98    	jmp    QWORD PTR [rsi-0x6700004a]
   140009441:	af                   	scas   eax,DWORD PTR es:[rdi]
   140009442:	ff                   	(bad)
   140009443:	ff 98 af ff ff 98    	call   FWORD PTR [rax-0x67000051]
   140009449:	af                   	scas   eax,DWORD PTR es:[rdi]
   14000944a:	ff                   	(bad)
   14000944b:	ff 98 af ff ff 10    	call   FWORD PTR [rax+0x10ffffaf]
   140009451:	b0 ff                	mov    al,0xff
   140009453:	ff 98 af ff ff 98    	call   FWORD PTR [rax-0x67000051]
   140009459:	af                   	scas   eax,DWORD PTR es:[rdi]
   14000945a:	ff                   	(bad)
   14000945b:	ff 98 af ff ff 98    	call   FWORD PTR [rax-0x67000051]
   140009461:	af                   	scas   eax,DWORD PTR es:[rdi]
   140009462:	ff                   	(bad)
   140009463:	ff 98 af ff ff 98    	call   FWORD PTR [rax-0x67000051]
   140009469:	af                   	scas   eax,DWORD PTR es:[rdi]
   14000946a:	ff                   	(bad)
   14000946b:	ff 98 af ff ff 98    	call   FWORD PTR [rax-0x67000051]
   140009471:	af                   	scas   eax,DWORD PTR es:[rdi]
   140009472:	ff                   	(bad)
   140009473:	ff e7                	jmp    rdi
   140009475:	b1 ff                	mov    cl,0xff
   140009477:	ff 98 af ff ff 75    	call   FWORD PTR [rax+0x75ffffaf]
   14000947d:	b2 ff                	mov    dl,0xff
   14000947f:	ff 88 b0 ff ff 4a    	dec    DWORD PTR [rax+0x4affffb0]
   140009485:	b3 ff                	mov    bl,0xff
   140009487:	ff 1c b3             	call   FWORD PTR [rbx+rsi*4]
   14000948a:	ff                   	(bad)
   14000948b:	ff e4                	jmp    rsp
   14000948d:	b2 ff                	mov    dl,0xff
   14000948f:	ff 04 b1             	inc    DWORD PTR [rcx+rsi*4]
   140009492:	ff                   	(bad)
   140009493:	ff 88 b0 ff ff 70    	dec    DWORD PTR [rax+0x70ffffb0]
   140009499:	b0 ff                	mov    al,0xff
   14000949b:	ff 98 af ff ff 79    	call   FWORD PTR [rax+0x79ffffaf]
   1400094a1:	b1 ff                	mov    cl,0xff
   1400094a3:	ff 24 b1             	jmp    QWORD PTR [rcx+rsi*4]
   1400094a6:	ff                   	(bad)
   1400094a7:	ff 42 b1             	inc    DWORD PTR [rdx-0x4f]
   1400094aa:	ff                   	(bad)
   1400094ab:	ff 10                	call   QWORD PTR [rax]
   1400094ad:	b0 ff                	mov    al,0xff
   1400094af:	ff d3                	call   rbx
   1400094b1:	b0 ff                	mov    al,0xff
   1400094b3:	ff 98 af ff ff 98    	call   FWORD PTR [rax-0x67000051]
   1400094b9:	af                   	scas   eax,DWORD PTR es:[rdi]
   1400094ba:	ff                   	(bad)
   1400094bb:	ff                   	(bad)
   1400094bc:	b9 b2 ff ff 70       	mov    ecx,0x70ffffb2
   1400094c1:	b0 ff                	mov    al,0xff
   1400094c3:	ff 10                	call   QWORD PTR [rax]
   1400094c5:	b0 ff                	mov    al,0xff
   1400094c7:	ff 98 af ff ff 98    	call   FWORD PTR [rax-0x67000051]
   1400094cd:	af                   	scas   eax,DWORD PTR es:[rdi]
   1400094ce:	ff                   	(bad)
   1400094cf:	ff 10                	call   QWORD PTR [rax]
   1400094d1:	b0 ff                	mov    al,0xff
   1400094d3:	ff 98 af ff ff 70    	call   FWORD PTR [rax+0x70ffffaf]
   1400094d9:	b0 ff                	mov    al,0xff
   1400094db:	ff 00                	inc    DWORD PTR [rax]
   1400094dd:	00 00                	add    BYTE PTR [rax],al
	...

00000001400094e0 <.rdata>:
   1400094e0:	49 6e                	rex.WB outs dx,BYTE PTR ds:[rsi]
   1400094e2:	66 69 6e 69 74 79    	imul   bp,WORD PTR [rsi+0x69],0x7974
   1400094e8:	00 4e 61             	add    BYTE PTR [rsi+0x61],cl
   1400094eb:	4e 00 30             	rex.WRX add BYTE PTR [rax],r14b
	...
   1400094f6:	f8                   	clc
   1400094f7:	3f                   	(bad)
   1400094f8:	61                   	(bad)
   1400094f9:	43 6f                	rex.XB outs dx,DWORD PTR ds:[rsi]
   1400094fb:	63 a7 87 d2 3f b3    	movsxd esp,DWORD PTR [rdi-0x4cc02d79]
   140009501:	c8 60 8b 28          	enter  0x8b60,0x28
   140009505:	8a c6                	mov    al,dh
   140009507:	3f                   	(bad)
   140009508:	fb                   	sti
   140009509:	79 9f                	jns    1400094aa <.rdata+0x15a>
   14000950b:	50                   	push   rax
   14000950c:	13 44 d3 3f          	adc    eax,DWORD PTR [rbx+rdx*8+0x3f]
   140009510:	04 fa                	add    al,0xfa
   140009512:	7d 9d                	jge    1400094b1 <.rdata+0x161>
   140009514:	16                   	(bad)
   140009515:	2d 94 3c 32 5a       	sub    eax,0x5a323c94
   14000951a:	47 55                	rex.RXB push r13
   14000951c:	13 44 d3 3f          	adc    eax,DWORD PTR [rbx+rdx*8+0x3f]
   140009520:	00 00                	add    BYTE PTR [rax],al
   140009522:	00 00                	add    BYTE PTR [rax],al
   140009524:	00 00                	add    BYTE PTR [rax],al
   140009526:	f0 3f                	lock (bad)
   140009528:	00 00                	add    BYTE PTR [rax],al
   14000952a:	00 00                	add    BYTE PTR [rax],al
   14000952c:	00 00                	add    BYTE PTR [rax],al
   14000952e:	24 40                	and    al,0x40
   140009530:	00 00                	add    BYTE PTR [rax],al
   140009532:	00 00                	add    BYTE PTR [rax],al
   140009534:	00 00                	add    BYTE PTR [rax],al
   140009536:	08 40 00             	or     BYTE PTR [rax+0x0],al
   140009539:	00 00                	add    BYTE PTR [rax],al
   14000953b:	00 00                	add    BYTE PTR [rax],al
   14000953d:	00 1c 40             	add    BYTE PTR [rax+rax*2],bl
   140009540:	00 00                	add    BYTE PTR [rax],al
   140009542:	00 00                	add    BYTE PTR [rax],al
   140009544:	00 00                	add    BYTE PTR [rax],al
   140009546:	14 40                	adc    al,0x40
	...
   140009554:	00 00                	add    BYTE PTR [rax],al
   140009556:	00 80 00 00 00 00    	add    BYTE PTR [rax+0x0],al
	...
   140009564:	00 00                	add    BYTE PTR [rax],al
   140009566:	e0 3f                	loopne 1400095a7 <__tens_D2A+0x7>
	...

0000000140009580 <p05.0>:
   140009580:	05 00 00 00 19       	add    eax,0x19000000
   140009585:	00 00                	add    BYTE PTR [rax],al
   140009587:	00 7d 00             	add    BYTE PTR [rbp+0x0],bh
	...

00000001400095a0 <__tens_D2A>:
   1400095a0:	00 00                	add    BYTE PTR [rax],al
   1400095a2:	00 00                	add    BYTE PTR [rax],al
   1400095a4:	00 00                	add    BYTE PTR [rax],al
   1400095a6:	f0 3f                	lock (bad)
   1400095a8:	00 00                	add    BYTE PTR [rax],al
   1400095aa:	00 00                	add    BYTE PTR [rax],al
   1400095ac:	00 00                	add    BYTE PTR [rax],al
   1400095ae:	24 40                	and    al,0x40
   1400095b0:	00 00                	add    BYTE PTR [rax],al
   1400095b2:	00 00                	add    BYTE PTR [rax],al
   1400095b4:	00 00                	add    BYTE PTR [rax],al
   1400095b6:	59                   	pop    rcx
   1400095b7:	40 00 00             	rex add BYTE PTR [rax],al
   1400095ba:	00 00                	add    BYTE PTR [rax],al
   1400095bc:	00 40 8f             	add    BYTE PTR [rax-0x71],al
   1400095bf:	40 00 00             	rex add BYTE PTR [rax],al
   1400095c2:	00 00                	add    BYTE PTR [rax],al
   1400095c4:	00 88 c3 40 00 00    	add    BYTE PTR [rax+0x40c3],cl
   1400095ca:	00 00                	add    BYTE PTR [rax],al
   1400095cc:	00 6a f8             	add    BYTE PTR [rdx-0x8],ch
   1400095cf:	40 00 00             	rex add BYTE PTR [rax],al
   1400095d2:	00 00                	add    BYTE PTR [rax],al
   1400095d4:	80 84 2e 41 00 00 00 	add    BYTE PTR [rsi+rbp*1+0x41],0x0
   1400095db:	00 
   1400095dc:	d0 12                	rcl    BYTE PTR [rdx],1
   1400095de:	63 41 00             	movsxd eax,DWORD PTR [rcx+0x0]
   1400095e1:	00 00                	add    BYTE PTR [rax],al
   1400095e3:	00 84 d7 97 41 00 00 	add    BYTE PTR [rdi+rdx*8+0x4197],al
   1400095ea:	00 00                	add    BYTE PTR [rax],al
   1400095ec:	65 cd cd             	gs int 0xcd
   1400095ef:	41 00 00             	add    BYTE PTR [r8],al
   1400095f2:	00 20                	add    BYTE PTR [rax],ah
   1400095f4:	5f                   	pop    rdi
   1400095f5:	a0 02 42 00 00 00 e8 	movabs al,ds:0x4876e80000004202
   1400095fc:	76 48 
   1400095fe:	37                   	(bad)
   1400095ff:	42 00 00             	rex.X add BYTE PTR [rax],al
   140009602:	00 a2 94 1a 6d 42    	add    BYTE PTR [rdx+0x426d1a94],ah
   140009608:	00 00                	add    BYTE PTR [rax],al
   14000960a:	40 e5 9c             	rex in eax,0x9c
   14000960d:	30 a2 42 00 00 90    	xor    BYTE PTR [rdx-0x6fffffbe],ah
   140009613:	1e                   	(bad)
   140009614:	c4                   	(bad)
   140009615:	bc d6 42 00 00       	mov    esp,0x42d6
   14000961a:	34 26                	xor    al,0x26
   14000961c:	f5                   	cmc
   14000961d:	6b 0c 43 00          	imul   ecx,DWORD PTR [rbx+rax*2],0x0
   140009621:	80 e0 37             	and    al,0x37
   140009624:	79 c3                	jns    1400095e9 <__tens_D2A+0x49>
   140009626:	41                   	rex.B
   140009627:	43 00 a0 d8 85 57 34 	rex.XB add BYTE PTR [r8+0x345785d8],spl
   14000962e:	76 43                	jbe    140009673 <__tinytens_D2A+0x13>
   140009630:	00 c8                	add    al,cl
   140009632:	4e                   	rex.WRX
   140009633:	67 6d                	ins    DWORD PTR es:[edi],dx
   140009635:	c1 ab 43 00 3d 91 60 	shr    DWORD PTR [rbx-0x6ec2ffbd],0x60
   14000963c:	e4 58                	in     al,0x58
   14000963e:	e1 43                	loope  140009683 <__tinytens_D2A+0x23>
   140009640:	40 8c b5 78 1d af 15 	rex mov WORD PTR [rbp+0x15af1d78],?
   140009647:	44 50                	rex.R push rax
   140009649:	ef                   	out    dx,eax
   14000964a:	e2 d6                	loop   140009622 <__tens_D2A+0x82>
   14000964c:	e4 1a                	in     al,0x1a
   14000964e:	4b                   	rex.WXB
   14000964f:	44 92                	rex.R xchg edx,eax
   140009651:	d5                   	(bad)
   140009652:	4d 06                	rex.WRB (bad)
   140009654:	cf                   	iret
   140009655:	f0 80 44 00 00 00    	lock add BYTE PTR [rax+rax*1+0x0],0x0
   14000965b:	00 00                	add    BYTE PTR [rax],al
   14000965d:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009660 <__tinytens_D2A>:
   140009660:	bc 89 d8 97 b2       	mov    esp,0xb297d889
   140009665:	d2 9c 3c 33 a7 a8 d5 	rcr    BYTE PTR [rsp+rdi*1-0x2a5758cd],cl
   14000966c:	23 f6                	and    esi,esi
   14000966e:	49 39 3d a7 f4 44 fd 	cmp    QWORD PTR [rip+0xfffffffffd44f4a7],rdi        # 13d458b1c <__size_of_stack_reserve__+0x13d258b1c>
   140009675:	0f a5 32             	shld   DWORD PTR [rdx],esi,cl
   140009678:	9d                   	popf
   140009679:	97                   	xchg   edi,eax
   14000967a:	8c cf                	mov    edi,cs
   14000967c:	08 ba 5b 25 43 6f    	or     BYTE PTR [rdx+0x6f43255b],bh
   140009682:	ac                   	lods   al,BYTE PTR ds:[rsi]
   140009683:	64 28 06             	sub    BYTE PTR fs:[rsi],al
   140009686:	c8 0a 00 00          	enter  0xa,0x0
	...

00000001400096a0 <__bigtens_D2A>:
   1400096a0:	00 80 e0 37 79 c3    	add    BYTE PTR [rax-0x3c86c820],al
   1400096a6:	41                   	rex.B
   1400096a7:	43 17                	rex.XB (bad)
   1400096a9:	6e                   	outs   dx,BYTE PTR ds:[rsi]
   1400096aa:	05 b5 b5 b8 93       	add    eax,0x93b8b5b5
   1400096af:	46 f5                	rex.RX cmc
   1400096b1:	f9                   	stc
   1400096b2:	3f                   	(bad)
   1400096b3:	e9 03 4f 38 4d       	jmp    18d38e5bb <.debug_rnglists+0x4d34e0b3>
   1400096b8:	32 1d 30 f9 48 77    	xor    bl,BYTE PTR [rip+0x7748f930]        # 1b7498fee <.debug_rnglists+0x77458ae6>
   1400096be:	82                   	(bad)
   1400096bf:	5a                   	pop    rdx
   1400096c0:	3c bf                	cmp    al,0xbf
   1400096c2:	73 7f                	jae    140009743 <.refptr.__image_base__+0x3>
   1400096c4:	dd 4f 15             	fisttp QWORD PTR [rdi+0x15]
   1400096c7:	75 01                	jne    1400096ca <__bigtens_D2A+0x2a>
   1400096c9:	00 00                	add    BYTE PTR [rax],al
   1400096cb:	00 02                	add    BYTE PTR [rdx],al
   1400096cd:	00 00                	add    BYTE PTR [rax],al
   1400096cf:	00 00                	add    BYTE PTR [rax],al
   1400096d1:	00 00                	add    BYTE PTR [rax],al
   1400096d3:	00 01                	add    BYTE PTR [rcx],al
	...

00000001400096e0 <.refptr._CRT_MT>:
   1400096e0:	40 80 00 40          	rex add BYTE PTR [rax],0x40
   1400096e4:	01 00                	add    DWORD PTR [rax],eax
	...

00000001400096f0 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>:
   1400096f0:	50                   	push   rax
   1400096f1:	80 00 40             	add    BYTE PTR [rax],0x40
   1400096f4:	01 00                	add    DWORD PTR [rax],eax
	...

0000000140009700 <.refptr.__CTOR_LIST__>:
   140009700:	b0 7c                	mov    al,0x7c
   140009702:	00 40 01             	add    BYTE PTR [rax+0x1],al
	...

0000000140009710 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>:
   140009710:	60                   	(bad)
   140009711:	a0 00 40 01 00 00 00 	movabs al,ds:0x14000
   140009718:	00 00 
   14000971a:	00 00                	add    BYTE PTR [rax],al
   14000971c:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009720 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>:
   140009720:	60                   	(bad)
   140009721:	a0 00 40 01 00 00 00 	movabs al,ds:0x14000
   140009728:	00 00 
   14000972a:	00 00                	add    BYTE PTR [rax],al
   14000972c:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009730 <.refptr.__dyn_tls_init_callback>:
   140009730:	20 90 00 40 01 00    	and    BYTE PTR [rax+0x14000],dl
	...

0000000140009740 <.refptr.__image_base__>:
   140009740:	00 00                	add    BYTE PTR [rax],al
   140009742:	00 40 01             	add    BYTE PTR [rax+0x1],al
	...

0000000140009750 <.refptr.__imp___initenv>:
   140009750:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009751:	e2 00                	loop   140009753 <.refptr.__imp___initenv+0x3>
   140009753:	40 01 00             	rex add DWORD PTR [rax],eax
	...

0000000140009760 <.refptr.__imp__acmdln>:
   140009760:	8c e2                	mov    edx,fs
   140009762:	00 40 01             	add    BYTE PTR [rax+0x1],al
	...

0000000140009770 <.refptr.__imp__commode>:
   140009770:	a4                   	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
   140009771:	e2 00                	loop   140009773 <.refptr.__imp__commode+0x3>
   140009773:	40 01 00             	rex add DWORD PTR [rax],eax
	...

0000000140009780 <.refptr.__imp__fmode>:
   140009780:	b4 e2                	mov    ah,0xe2
   140009782:	00 40 01             	add    BYTE PTR [rax+0x1],al
	...

0000000140009790 <.refptr.__mingw_app_type>:
   140009790:	90                   	nop
   140009791:	d0 00                	rol    BYTE PTR [rax],1
   140009793:	40 01 00             	rex add DWORD PTR [rax],eax
	...

00000001400097a0 <.refptr.__mingw_initltsdrot_force>:
   1400097a0:	78 d0                	js     140009772 <.refptr.__imp__commode+0x2>
   1400097a2:	00 40 01             	add    BYTE PTR [rax+0x1],al
	...

00000001400097b0 <.refptr.__mingw_initltsdyn_force>:
   1400097b0:	74 d0                	je     140009782 <.refptr.__imp__fmode+0x2>
   1400097b2:	00 40 01             	add    BYTE PTR [rax+0x1],al
	...

00000001400097c0 <.refptr.__mingw_initltssuo_force>:
   1400097c0:	70 d0                	jo     140009792 <.refptr.__mingw_app_type+0x2>
   1400097c2:	00 40 01             	add    BYTE PTR [rax+0x1],al
	...

00000001400097d0 <.refptr.__mingw_oldexcpt_handler>:
   1400097d0:	d0 d0                	rcl    al,1
   1400097d2:	00 40 01             	add    BYTE PTR [rax+0x1],al
	...

00000001400097e0 <.refptr.__native_startup_lock>:
   1400097e0:	50                   	push   rax
   1400097e1:	d0 00                	rol    BYTE PTR [rax],1
   1400097e3:	40 01 00             	rex add DWORD PTR [rax],eax
	...

00000001400097f0 <.refptr.__native_startup_state>:
   1400097f0:	58                   	pop    rax
   1400097f1:	d0 00                	rol    BYTE PTR [rax],1
   1400097f3:	40 01 00             	rex add DWORD PTR [rax],eax
	...

0000000140009800 <.refptr.__tens_D2A>:
   140009800:	a0 95 00 40 01 00 00 	movabs al,ds:0x1400095
   140009807:	00 00 
   140009809:	00 00                	add    BYTE PTR [rax],al
   14000980b:	00 00                	add    BYTE PTR [rax],al
   14000980d:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009810 <.refptr.__xc_a>:
   140009810:	00 f0                	add    al,dh
   140009812:	00 40 01             	add    BYTE PTR [rax+0x1],al
	...

0000000140009820 <.refptr.__xc_z>:
   140009820:	10 f0                	adc    al,dh
   140009822:	00 40 01             	add    BYTE PTR [rax+0x1],al
	...

0000000140009830 <.refptr.__xi_a>:
   140009830:	18 f0                	sbb    al,dh
   140009832:	00 40 01             	add    BYTE PTR [rax+0x1],al
	...

0000000140009840 <.refptr.__xi_z>:
   140009840:	28 f0                	sub    al,dh
   140009842:	00 40 01             	add    BYTE PTR [rax+0x1],al
	...

0000000140009850 <.refptr._commode>:
   140009850:	80 d0 00             	adc    al,0x0
   140009853:	40 01 00             	rex add DWORD PTR [rax],eax
	...

0000000140009860 <.refptr._dowildcard>:
   140009860:	30 80 00 40 01 00    	xor    BYTE PTR [rax+0x14000],al
	...

0000000140009870 <.refptr._fmode>:
   140009870:	c0 d0 00             	rcl    al,0x0
   140009873:	40 01 00             	rex add DWORD PTR [rax],eax
	...

0000000140009880 <.refptr._gnu_exception_handler>:
   140009880:	10 1e                	adc    BYTE PTR [rsi],bl
   140009882:	00 40 01             	add    BYTE PTR [rax+0x1],al
	...

0000000140009890 <.refptr._matherr>:
   140009890:	70 17                	jo     1400098a9 <.refptr._newmode+0x9>
   140009892:	00 40 01             	add    BYTE PTR [rax+0x1],al
	...

00000001400098a0 <.refptr._newmode>:
   1400098a0:	60                   	(bad)
   1400098a1:	d0 00                	rol    BYTE PTR [rax],1
   1400098a3:	40 01 00             	rex add DWORD PTR [rax],eax
	...

00000001400098b0 <.rdata$zzz>:
   1400098b0:	47                   	rex.RXB
   1400098b1:	43                   	rex.XB
   1400098b2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   1400098b5:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   1400098b8:	76 31                	jbe    1400098eb <.rdata$zzz+0xb>
   1400098ba:	2c 20                	sub    al,0x20
   1400098bc:	42 75 69             	rex.X jne 140009928 <.rdata$zzz+0x18>
   1400098bf:	6c                   	ins    BYTE PTR es:[rdi],dx
   1400098c0:	74 20                	je     1400098e2 <.rdata$zzz+0x2>
   1400098c2:	62                   	(bad)
   1400098c3:	79 20                	jns    1400098e5 <.rdata$zzz+0x5>
   1400098c5:	4d 53                	rex.WRB push r11
   1400098c7:	59                   	pop    rcx
   1400098c8:	53                   	push   rbx
   1400098c9:	32 20                	xor    ah,BYTE PTR [rax]
   1400098cb:	70 72                	jo     14000993f <.rdata$zzz+0x2f>
   1400098cd:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   1400098ce:	6a 65                	push   0x65
   1400098d0:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   1400098d4:	31 32                	xor    DWORD PTR [rdx],esi
   1400098d6:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   1400098d9:	30 00                	xor    BYTE PTR [rax],al
   1400098db:	00 00                	add    BYTE PTR [rax],al
   1400098dd:	00 00                	add    BYTE PTR [rax],al
	...

00000001400098e0 <.rdata$zzz>:
   1400098e0:	47                   	rex.RXB
   1400098e1:	43                   	rex.XB
   1400098e2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   1400098e5:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   1400098e8:	76 31                	jbe    14000991b <.rdata$zzz+0xb>
   1400098ea:	2c 20                	sub    al,0x20
   1400098ec:	42 75 69             	rex.X jne 140009958 <.rdata$zzz+0x18>
   1400098ef:	6c                   	ins    BYTE PTR es:[rdi],dx
   1400098f0:	74 20                	je     140009912 <.rdata$zzz+0x2>
   1400098f2:	62                   	(bad)
   1400098f3:	79 20                	jns    140009915 <.rdata$zzz+0x5>
   1400098f5:	4d 53                	rex.WRB push r11
   1400098f7:	59                   	pop    rcx
   1400098f8:	53                   	push   rbx
   1400098f9:	32 20                	xor    ah,BYTE PTR [rax]
   1400098fb:	70 72                	jo     14000996f <.rdata$zzz+0x2f>
   1400098fd:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   1400098fe:	6a 65                	push   0x65
   140009900:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009904:	31 32                	xor    DWORD PTR [rdx],esi
   140009906:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009909:	30 00                	xor    BYTE PTR [rax],al
   14000990b:	00 00                	add    BYTE PTR [rax],al
   14000990d:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009910 <.rdata$zzz>:
   140009910:	47                   	rex.RXB
   140009911:	43                   	rex.XB
   140009912:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009915:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009918:	76 31                	jbe    14000994b <.rdata$zzz+0xb>
   14000991a:	2c 20                	sub    al,0x20
   14000991c:	42 75 69             	rex.X jne 140009988 <.rdata$zzz+0x18>
   14000991f:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009920:	74 20                	je     140009942 <.rdata$zzz+0x2>
   140009922:	62                   	(bad)
   140009923:	79 20                	jns    140009945 <.rdata$zzz+0x5>
   140009925:	4d 53                	rex.WRB push r11
   140009927:	59                   	pop    rcx
   140009928:	53                   	push   rbx
   140009929:	32 20                	xor    ah,BYTE PTR [rax]
   14000992b:	70 72                	jo     14000999f <.rdata$zzz+0x2f>
   14000992d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   14000992e:	6a 65                	push   0x65
   140009930:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009934:	31 32                	xor    DWORD PTR [rdx],esi
   140009936:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009939:	30 00                	xor    BYTE PTR [rax],al
   14000993b:	00 00                	add    BYTE PTR [rax],al
   14000993d:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009940 <.rdata$zzz>:
   140009940:	47                   	rex.RXB
   140009941:	43                   	rex.XB
   140009942:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009945:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009948:	76 31                	jbe    14000997b <.rdata$zzz+0xb>
   14000994a:	2c 20                	sub    al,0x20
   14000994c:	42 75 69             	rex.X jne 1400099b8 <.rdata$zzz+0x18>
   14000994f:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009950:	74 20                	je     140009972 <.rdata$zzz+0x2>
   140009952:	62                   	(bad)
   140009953:	79 20                	jns    140009975 <.rdata$zzz+0x5>
   140009955:	4d 53                	rex.WRB push r11
   140009957:	59                   	pop    rcx
   140009958:	53                   	push   rbx
   140009959:	32 20                	xor    ah,BYTE PTR [rax]
   14000995b:	70 72                	jo     1400099cf <.rdata$zzz+0x2f>
   14000995d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   14000995e:	6a 65                	push   0x65
   140009960:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009964:	31 32                	xor    DWORD PTR [rdx],esi
   140009966:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009969:	30 00                	xor    BYTE PTR [rax],al
   14000996b:	00 00                	add    BYTE PTR [rax],al
   14000996d:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009970 <.rdata$zzz>:
   140009970:	47                   	rex.RXB
   140009971:	43                   	rex.XB
   140009972:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009975:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009978:	76 31                	jbe    1400099ab <.rdata$zzz+0xb>
   14000997a:	2c 20                	sub    al,0x20
   14000997c:	42 75 69             	rex.X jne 1400099e8 <.rdata$zzz+0x18>
   14000997f:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009980:	74 20                	je     1400099a2 <.rdata$zzz+0x2>
   140009982:	62                   	(bad)
   140009983:	79 20                	jns    1400099a5 <.rdata$zzz+0x5>
   140009985:	4d 53                	rex.WRB push r11
   140009987:	59                   	pop    rcx
   140009988:	53                   	push   rbx
   140009989:	32 20                	xor    ah,BYTE PTR [rax]
   14000998b:	70 72                	jo     1400099ff <.rdata$zzz+0x2f>
   14000998d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   14000998e:	6a 65                	push   0x65
   140009990:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009994:	31 32                	xor    DWORD PTR [rdx],esi
   140009996:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009999:	30 00                	xor    BYTE PTR [rax],al
   14000999b:	00 00                	add    BYTE PTR [rax],al
   14000999d:	00 00                	add    BYTE PTR [rax],al
	...

00000001400099a0 <.rdata$zzz>:
   1400099a0:	47                   	rex.RXB
   1400099a1:	43                   	rex.XB
   1400099a2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   1400099a5:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   1400099a8:	76 31                	jbe    1400099db <.rdata$zzz+0xb>
   1400099aa:	2c 20                	sub    al,0x20
   1400099ac:	42 75 69             	rex.X jne 140009a18 <.rdata$zzz+0x18>
   1400099af:	6c                   	ins    BYTE PTR es:[rdi],dx
   1400099b0:	74 20                	je     1400099d2 <.rdata$zzz+0x2>
   1400099b2:	62                   	(bad)
   1400099b3:	79 20                	jns    1400099d5 <.rdata$zzz+0x5>
   1400099b5:	4d 53                	rex.WRB push r11
   1400099b7:	59                   	pop    rcx
   1400099b8:	53                   	push   rbx
   1400099b9:	32 20                	xor    ah,BYTE PTR [rax]
   1400099bb:	70 72                	jo     140009a2f <.rdata$zzz+0x2f>
   1400099bd:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   1400099be:	6a 65                	push   0x65
   1400099c0:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   1400099c4:	31 32                	xor    DWORD PTR [rdx],esi
   1400099c6:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   1400099c9:	30 00                	xor    BYTE PTR [rax],al
   1400099cb:	00 00                	add    BYTE PTR [rax],al
   1400099cd:	00 00                	add    BYTE PTR [rax],al
	...

00000001400099d0 <.rdata$zzz>:
   1400099d0:	47                   	rex.RXB
   1400099d1:	43                   	rex.XB
   1400099d2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   1400099d5:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   1400099d8:	76 31                	jbe    140009a0b <.rdata$zzz+0xb>
   1400099da:	2c 20                	sub    al,0x20
   1400099dc:	42 75 69             	rex.X jne 140009a48 <.rdata$zzz+0x18>
   1400099df:	6c                   	ins    BYTE PTR es:[rdi],dx
   1400099e0:	74 20                	je     140009a02 <.rdata$zzz+0x2>
   1400099e2:	62                   	(bad)
   1400099e3:	79 20                	jns    140009a05 <.rdata$zzz+0x5>
   1400099e5:	4d 53                	rex.WRB push r11
   1400099e7:	59                   	pop    rcx
   1400099e8:	53                   	push   rbx
   1400099e9:	32 20                	xor    ah,BYTE PTR [rax]
   1400099eb:	70 72                	jo     140009a5f <.rdata$zzz+0x2f>
   1400099ed:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   1400099ee:	6a 65                	push   0x65
   1400099f0:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   1400099f4:	31 32                	xor    DWORD PTR [rdx],esi
   1400099f6:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   1400099f9:	30 00                	xor    BYTE PTR [rax],al
   1400099fb:	00 00                	add    BYTE PTR [rax],al
   1400099fd:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009a00 <.rdata$zzz>:
   140009a00:	47                   	rex.RXB
   140009a01:	43                   	rex.XB
   140009a02:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009a05:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009a08:	76 31                	jbe    140009a3b <.rdata$zzz+0xb>
   140009a0a:	2c 20                	sub    al,0x20
   140009a0c:	42 75 69             	rex.X jne 140009a78 <.rdata$zzz+0x18>
   140009a0f:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009a10:	74 20                	je     140009a32 <.rdata$zzz+0x2>
   140009a12:	62                   	(bad)
   140009a13:	79 20                	jns    140009a35 <.rdata$zzz+0x5>
   140009a15:	4d 53                	rex.WRB push r11
   140009a17:	59                   	pop    rcx
   140009a18:	53                   	push   rbx
   140009a19:	32 20                	xor    ah,BYTE PTR [rax]
   140009a1b:	70 72                	jo     140009a8f <.rdata$zzz+0x2f>
   140009a1d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009a1e:	6a 65                	push   0x65
   140009a20:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009a24:	31 32                	xor    DWORD PTR [rdx],esi
   140009a26:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009a29:	30 00                	xor    BYTE PTR [rax],al
   140009a2b:	00 00                	add    BYTE PTR [rax],al
   140009a2d:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009a30 <.rdata$zzz>:
   140009a30:	47                   	rex.RXB
   140009a31:	43                   	rex.XB
   140009a32:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009a35:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009a38:	76 31                	jbe    140009a6b <.rdata$zzz+0xb>
   140009a3a:	2c 20                	sub    al,0x20
   140009a3c:	42 75 69             	rex.X jne 140009aa8 <.rdata$zzz+0x18>
   140009a3f:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009a40:	74 20                	je     140009a62 <.rdata$zzz+0x2>
   140009a42:	62                   	(bad)
   140009a43:	79 20                	jns    140009a65 <.rdata$zzz+0x5>
   140009a45:	4d 53                	rex.WRB push r11
   140009a47:	59                   	pop    rcx
   140009a48:	53                   	push   rbx
   140009a49:	32 20                	xor    ah,BYTE PTR [rax]
   140009a4b:	70 72                	jo     140009abf <.rdata$zzz+0x2f>
   140009a4d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009a4e:	6a 65                	push   0x65
   140009a50:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009a54:	31 32                	xor    DWORD PTR [rdx],esi
   140009a56:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009a59:	30 00                	xor    BYTE PTR [rax],al
   140009a5b:	00 00                	add    BYTE PTR [rax],al
   140009a5d:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009a60 <.rdata$zzz>:
   140009a60:	47                   	rex.RXB
   140009a61:	43                   	rex.XB
   140009a62:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009a65:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009a68:	76 31                	jbe    140009a9b <.rdata$zzz+0xb>
   140009a6a:	2c 20                	sub    al,0x20
   140009a6c:	42 75 69             	rex.X jne 140009ad8 <.rdata$zzz+0x18>
   140009a6f:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009a70:	74 20                	je     140009a92 <.rdata$zzz+0x2>
   140009a72:	62                   	(bad)
   140009a73:	79 20                	jns    140009a95 <.rdata$zzz+0x5>
   140009a75:	4d 53                	rex.WRB push r11
   140009a77:	59                   	pop    rcx
   140009a78:	53                   	push   rbx
   140009a79:	32 20                	xor    ah,BYTE PTR [rax]
   140009a7b:	70 72                	jo     140009aef <.rdata$zzz+0x2f>
   140009a7d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009a7e:	6a 65                	push   0x65
   140009a80:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009a84:	31 32                	xor    DWORD PTR [rdx],esi
   140009a86:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009a89:	30 00                	xor    BYTE PTR [rax],al
   140009a8b:	00 00                	add    BYTE PTR [rax],al
   140009a8d:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009a90 <.rdata$zzz>:
   140009a90:	47                   	rex.RXB
   140009a91:	43                   	rex.XB
   140009a92:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009a95:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009a98:	76 31                	jbe    140009acb <.rdata$zzz+0xb>
   140009a9a:	2c 20                	sub    al,0x20
   140009a9c:	42 75 69             	rex.X jne 140009b08 <.rdata$zzz+0x18>
   140009a9f:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009aa0:	74 20                	je     140009ac2 <.rdata$zzz+0x2>
   140009aa2:	62                   	(bad)
   140009aa3:	79 20                	jns    140009ac5 <.rdata$zzz+0x5>
   140009aa5:	4d 53                	rex.WRB push r11
   140009aa7:	59                   	pop    rcx
   140009aa8:	53                   	push   rbx
   140009aa9:	32 20                	xor    ah,BYTE PTR [rax]
   140009aab:	70 72                	jo     140009b1f <.rdata$zzz+0x2f>
   140009aad:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009aae:	6a 65                	push   0x65
   140009ab0:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009ab4:	31 32                	xor    DWORD PTR [rdx],esi
   140009ab6:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009ab9:	30 00                	xor    BYTE PTR [rax],al
   140009abb:	00 00                	add    BYTE PTR [rax],al
   140009abd:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009ac0 <.rdata$zzz>:
   140009ac0:	47                   	rex.RXB
   140009ac1:	43                   	rex.XB
   140009ac2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009ac5:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009ac8:	76 31                	jbe    140009afb <.rdata$zzz+0xb>
   140009aca:	2c 20                	sub    al,0x20
   140009acc:	42 75 69             	rex.X jne 140009b38 <.rdata$zzz+0x18>
   140009acf:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009ad0:	74 20                	je     140009af2 <.rdata$zzz+0x2>
   140009ad2:	62                   	(bad)
   140009ad3:	79 20                	jns    140009af5 <.rdata$zzz+0x5>
   140009ad5:	4d 53                	rex.WRB push r11
   140009ad7:	59                   	pop    rcx
   140009ad8:	53                   	push   rbx
   140009ad9:	32 20                	xor    ah,BYTE PTR [rax]
   140009adb:	70 72                	jo     140009b4f <.rdata$zzz+0x2f>
   140009add:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009ade:	6a 65                	push   0x65
   140009ae0:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009ae4:	31 32                	xor    DWORD PTR [rdx],esi
   140009ae6:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009ae9:	30 00                	xor    BYTE PTR [rax],al
   140009aeb:	00 00                	add    BYTE PTR [rax],al
   140009aed:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009af0 <.rdata$zzz>:
   140009af0:	47                   	rex.RXB
   140009af1:	43                   	rex.XB
   140009af2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009af5:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009af8:	76 31                	jbe    140009b2b <.rdata$zzz+0xb>
   140009afa:	2c 20                	sub    al,0x20
   140009afc:	42 75 69             	rex.X jne 140009b68 <.rdata$zzz+0x18>
   140009aff:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009b00:	74 20                	je     140009b22 <.rdata$zzz+0x2>
   140009b02:	62                   	(bad)
   140009b03:	79 20                	jns    140009b25 <.rdata$zzz+0x5>
   140009b05:	4d 53                	rex.WRB push r11
   140009b07:	59                   	pop    rcx
   140009b08:	53                   	push   rbx
   140009b09:	32 20                	xor    ah,BYTE PTR [rax]
   140009b0b:	70 72                	jo     140009b7f <.rdata$zzz+0x2f>
   140009b0d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009b0e:	6a 65                	push   0x65
   140009b10:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009b14:	31 32                	xor    DWORD PTR [rdx],esi
   140009b16:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009b19:	30 00                	xor    BYTE PTR [rax],al
   140009b1b:	00 00                	add    BYTE PTR [rax],al
   140009b1d:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009b20 <.rdata$zzz>:
   140009b20:	47                   	rex.RXB
   140009b21:	43                   	rex.XB
   140009b22:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009b25:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009b28:	76 31                	jbe    140009b5b <.rdata$zzz+0xb>
   140009b2a:	2c 20                	sub    al,0x20
   140009b2c:	42 75 69             	rex.X jne 140009b98 <.rdata$zzz+0x18>
   140009b2f:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009b30:	74 20                	je     140009b52 <.rdata$zzz+0x2>
   140009b32:	62                   	(bad)
   140009b33:	79 20                	jns    140009b55 <.rdata$zzz+0x5>
   140009b35:	4d 53                	rex.WRB push r11
   140009b37:	59                   	pop    rcx
   140009b38:	53                   	push   rbx
   140009b39:	32 20                	xor    ah,BYTE PTR [rax]
   140009b3b:	70 72                	jo     140009baf <.rdata$zzz+0x2f>
   140009b3d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009b3e:	6a 65                	push   0x65
   140009b40:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009b44:	31 32                	xor    DWORD PTR [rdx],esi
   140009b46:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009b49:	30 00                	xor    BYTE PTR [rax],al
   140009b4b:	00 00                	add    BYTE PTR [rax],al
   140009b4d:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009b50 <.rdata$zzz>:
   140009b50:	47                   	rex.RXB
   140009b51:	43                   	rex.XB
   140009b52:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009b55:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009b58:	76 31                	jbe    140009b8b <.rdata$zzz+0xb>
   140009b5a:	2c 20                	sub    al,0x20
   140009b5c:	42 75 69             	rex.X jne 140009bc8 <.rdata$zzz+0x18>
   140009b5f:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009b60:	74 20                	je     140009b82 <.rdata$zzz+0x2>
   140009b62:	62                   	(bad)
   140009b63:	79 20                	jns    140009b85 <.rdata$zzz+0x5>
   140009b65:	4d 53                	rex.WRB push r11
   140009b67:	59                   	pop    rcx
   140009b68:	53                   	push   rbx
   140009b69:	32 20                	xor    ah,BYTE PTR [rax]
   140009b6b:	70 72                	jo     140009bdf <.rdata$zzz+0x2f>
   140009b6d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009b6e:	6a 65                	push   0x65
   140009b70:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009b74:	31 32                	xor    DWORD PTR [rdx],esi
   140009b76:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009b79:	30 00                	xor    BYTE PTR [rax],al
   140009b7b:	00 00                	add    BYTE PTR [rax],al
   140009b7d:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009b80 <.rdata$zzz>:
   140009b80:	47                   	rex.RXB
   140009b81:	43                   	rex.XB
   140009b82:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009b85:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009b88:	76 31                	jbe    140009bbb <.rdata$zzz+0xb>
   140009b8a:	2c 20                	sub    al,0x20
   140009b8c:	42 75 69             	rex.X jne 140009bf8 <.rdata$zzz+0x18>
   140009b8f:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009b90:	74 20                	je     140009bb2 <.rdata$zzz+0x2>
   140009b92:	62                   	(bad)
   140009b93:	79 20                	jns    140009bb5 <.rdata$zzz+0x5>
   140009b95:	4d 53                	rex.WRB push r11
   140009b97:	59                   	pop    rcx
   140009b98:	53                   	push   rbx
   140009b99:	32 20                	xor    ah,BYTE PTR [rax]
   140009b9b:	70 72                	jo     140009c0f <.rdata$zzz+0x2f>
   140009b9d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009b9e:	6a 65                	push   0x65
   140009ba0:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009ba4:	31 32                	xor    DWORD PTR [rdx],esi
   140009ba6:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009ba9:	30 00                	xor    BYTE PTR [rax],al
   140009bab:	00 00                	add    BYTE PTR [rax],al
   140009bad:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009bb0 <.rdata$zzz>:
   140009bb0:	47                   	rex.RXB
   140009bb1:	43                   	rex.XB
   140009bb2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009bb5:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009bb8:	76 31                	jbe    140009beb <.rdata$zzz+0xb>
   140009bba:	2c 20                	sub    al,0x20
   140009bbc:	42 75 69             	rex.X jne 140009c28 <.rdata$zzz+0x18>
   140009bbf:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009bc0:	74 20                	je     140009be2 <.rdata$zzz+0x2>
   140009bc2:	62                   	(bad)
   140009bc3:	79 20                	jns    140009be5 <.rdata$zzz+0x5>
   140009bc5:	4d 53                	rex.WRB push r11
   140009bc7:	59                   	pop    rcx
   140009bc8:	53                   	push   rbx
   140009bc9:	32 20                	xor    ah,BYTE PTR [rax]
   140009bcb:	70 72                	jo     140009c3f <.rdata$zzz+0x2f>
   140009bcd:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009bce:	6a 65                	push   0x65
   140009bd0:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009bd4:	31 32                	xor    DWORD PTR [rdx],esi
   140009bd6:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009bd9:	30 00                	xor    BYTE PTR [rax],al
   140009bdb:	00 00                	add    BYTE PTR [rax],al
   140009bdd:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009be0 <.rdata$zzz>:
   140009be0:	47                   	rex.RXB
   140009be1:	43                   	rex.XB
   140009be2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009be5:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009be8:	76 31                	jbe    140009c1b <.rdata$zzz+0xb>
   140009bea:	2c 20                	sub    al,0x20
   140009bec:	42 75 69             	rex.X jne 140009c58 <.rdata$zzz+0x18>
   140009bef:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009bf0:	74 20                	je     140009c12 <.rdata$zzz+0x2>
   140009bf2:	62                   	(bad)
   140009bf3:	79 20                	jns    140009c15 <.rdata$zzz+0x5>
   140009bf5:	4d 53                	rex.WRB push r11
   140009bf7:	59                   	pop    rcx
   140009bf8:	53                   	push   rbx
   140009bf9:	32 20                	xor    ah,BYTE PTR [rax]
   140009bfb:	70 72                	jo     140009c6f <.rdata$zzz+0x2f>
   140009bfd:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009bfe:	6a 65                	push   0x65
   140009c00:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009c04:	31 32                	xor    DWORD PTR [rdx],esi
   140009c06:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009c09:	30 00                	xor    BYTE PTR [rax],al
   140009c0b:	00 00                	add    BYTE PTR [rax],al
   140009c0d:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009c10 <.rdata$zzz>:
   140009c10:	47                   	rex.RXB
   140009c11:	43                   	rex.XB
   140009c12:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009c15:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009c18:	76 31                	jbe    140009c4b <.rdata$zzz+0xb>
   140009c1a:	2c 20                	sub    al,0x20
   140009c1c:	42 75 69             	rex.X jne 140009c88 <.rdata$zzz+0x18>
   140009c1f:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009c20:	74 20                	je     140009c42 <.rdata$zzz+0x2>
   140009c22:	62                   	(bad)
   140009c23:	79 20                	jns    140009c45 <.rdata$zzz+0x5>
   140009c25:	4d 53                	rex.WRB push r11
   140009c27:	59                   	pop    rcx
   140009c28:	53                   	push   rbx
   140009c29:	32 20                	xor    ah,BYTE PTR [rax]
   140009c2b:	70 72                	jo     140009c9f <.rdata$zzz+0x2f>
   140009c2d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009c2e:	6a 65                	push   0x65
   140009c30:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009c34:	31 32                	xor    DWORD PTR [rdx],esi
   140009c36:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009c39:	30 00                	xor    BYTE PTR [rax],al
   140009c3b:	00 00                	add    BYTE PTR [rax],al
   140009c3d:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009c40 <.rdata$zzz>:
   140009c40:	47                   	rex.RXB
   140009c41:	43                   	rex.XB
   140009c42:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009c45:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009c48:	76 31                	jbe    140009c7b <.rdata$zzz+0xb>
   140009c4a:	2c 20                	sub    al,0x20
   140009c4c:	42 75 69             	rex.X jne 140009cb8 <.rdata$zzz+0x18>
   140009c4f:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009c50:	74 20                	je     140009c72 <.rdata$zzz+0x2>
   140009c52:	62                   	(bad)
   140009c53:	79 20                	jns    140009c75 <.rdata$zzz+0x5>
   140009c55:	4d 53                	rex.WRB push r11
   140009c57:	59                   	pop    rcx
   140009c58:	53                   	push   rbx
   140009c59:	32 20                	xor    ah,BYTE PTR [rax]
   140009c5b:	70 72                	jo     140009ccf <.rdata$zzz+0x2f>
   140009c5d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009c5e:	6a 65                	push   0x65
   140009c60:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009c64:	31 32                	xor    DWORD PTR [rdx],esi
   140009c66:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009c69:	30 00                	xor    BYTE PTR [rax],al
   140009c6b:	00 00                	add    BYTE PTR [rax],al
   140009c6d:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009c70 <.rdata$zzz>:
   140009c70:	47                   	rex.RXB
   140009c71:	43                   	rex.XB
   140009c72:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009c75:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009c78:	76 31                	jbe    140009cab <.rdata$zzz+0xb>
   140009c7a:	2c 20                	sub    al,0x20
   140009c7c:	42 75 69             	rex.X jne 140009ce8 <.rdata$zzz+0x18>
   140009c7f:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009c80:	74 20                	je     140009ca2 <.rdata$zzz+0x2>
   140009c82:	62                   	(bad)
   140009c83:	79 20                	jns    140009ca5 <.rdata$zzz+0x5>
   140009c85:	4d 53                	rex.WRB push r11
   140009c87:	59                   	pop    rcx
   140009c88:	53                   	push   rbx
   140009c89:	32 20                	xor    ah,BYTE PTR [rax]
   140009c8b:	70 72                	jo     140009cff <.rdata$zzz+0x2f>
   140009c8d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009c8e:	6a 65                	push   0x65
   140009c90:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009c94:	31 32                	xor    DWORD PTR [rdx],esi
   140009c96:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009c99:	30 00                	xor    BYTE PTR [rax],al
   140009c9b:	00 00                	add    BYTE PTR [rax],al
   140009c9d:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009ca0 <.rdata$zzz>:
   140009ca0:	47                   	rex.RXB
   140009ca1:	43                   	rex.XB
   140009ca2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009ca5:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009ca8:	76 31                	jbe    140009cdb <.rdata$zzz+0xb>
   140009caa:	2c 20                	sub    al,0x20
   140009cac:	42 75 69             	rex.X jne 140009d18 <.rdata$zzz+0x18>
   140009caf:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009cb0:	74 20                	je     140009cd2 <.rdata$zzz+0x2>
   140009cb2:	62                   	(bad)
   140009cb3:	79 20                	jns    140009cd5 <.rdata$zzz+0x5>
   140009cb5:	4d 53                	rex.WRB push r11
   140009cb7:	59                   	pop    rcx
   140009cb8:	53                   	push   rbx
   140009cb9:	32 20                	xor    ah,BYTE PTR [rax]
   140009cbb:	70 72                	jo     140009d2f <.rdata$zzz+0x2f>
   140009cbd:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009cbe:	6a 65                	push   0x65
   140009cc0:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009cc4:	31 32                	xor    DWORD PTR [rdx],esi
   140009cc6:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009cc9:	30 00                	xor    BYTE PTR [rax],al
   140009ccb:	00 00                	add    BYTE PTR [rax],al
   140009ccd:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009cd0 <.rdata$zzz>:
   140009cd0:	47                   	rex.RXB
   140009cd1:	43                   	rex.XB
   140009cd2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009cd5:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009cd8:	76 31                	jbe    140009d0b <.rdata$zzz+0xb>
   140009cda:	2c 20                	sub    al,0x20
   140009cdc:	42 75 69             	rex.X jne 140009d48 <.rdata$zzz+0x18>
   140009cdf:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009ce0:	74 20                	je     140009d02 <.rdata$zzz+0x2>
   140009ce2:	62                   	(bad)
   140009ce3:	79 20                	jns    140009d05 <.rdata$zzz+0x5>
   140009ce5:	4d 53                	rex.WRB push r11
   140009ce7:	59                   	pop    rcx
   140009ce8:	53                   	push   rbx
   140009ce9:	32 20                	xor    ah,BYTE PTR [rax]
   140009ceb:	70 72                	jo     140009d5f <.rdata$zzz+0x2f>
   140009ced:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009cee:	6a 65                	push   0x65
   140009cf0:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009cf4:	31 32                	xor    DWORD PTR [rdx],esi
   140009cf6:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009cf9:	30 00                	xor    BYTE PTR [rax],al
   140009cfb:	00 00                	add    BYTE PTR [rax],al
   140009cfd:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009d00 <.rdata$zzz>:
   140009d00:	47                   	rex.RXB
   140009d01:	43                   	rex.XB
   140009d02:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009d05:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009d08:	76 31                	jbe    140009d3b <.rdata$zzz+0xb>
   140009d0a:	2c 20                	sub    al,0x20
   140009d0c:	42 75 69             	rex.X jne 140009d78 <.rdata$zzz+0x18>
   140009d0f:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009d10:	74 20                	je     140009d32 <.rdata$zzz+0x2>
   140009d12:	62                   	(bad)
   140009d13:	79 20                	jns    140009d35 <.rdata$zzz+0x5>
   140009d15:	4d 53                	rex.WRB push r11
   140009d17:	59                   	pop    rcx
   140009d18:	53                   	push   rbx
   140009d19:	32 20                	xor    ah,BYTE PTR [rax]
   140009d1b:	70 72                	jo     140009d8f <.rdata$zzz+0x2f>
   140009d1d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009d1e:	6a 65                	push   0x65
   140009d20:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009d24:	31 32                	xor    DWORD PTR [rdx],esi
   140009d26:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009d29:	30 00                	xor    BYTE PTR [rax],al
   140009d2b:	00 00                	add    BYTE PTR [rax],al
   140009d2d:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009d30 <.rdata$zzz>:
   140009d30:	47                   	rex.RXB
   140009d31:	43                   	rex.XB
   140009d32:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009d35:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009d38:	76 31                	jbe    140009d6b <.rdata$zzz+0xb>
   140009d3a:	2c 20                	sub    al,0x20
   140009d3c:	42 75 69             	rex.X jne 140009da8 <.rdata$zzz+0x18>
   140009d3f:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009d40:	74 20                	je     140009d62 <.rdata$zzz+0x2>
   140009d42:	62                   	(bad)
   140009d43:	79 20                	jns    140009d65 <.rdata$zzz+0x5>
   140009d45:	4d 53                	rex.WRB push r11
   140009d47:	59                   	pop    rcx
   140009d48:	53                   	push   rbx
   140009d49:	32 20                	xor    ah,BYTE PTR [rax]
   140009d4b:	70 72                	jo     140009dbf <.rdata$zzz+0x2f>
   140009d4d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009d4e:	6a 65                	push   0x65
   140009d50:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009d54:	31 32                	xor    DWORD PTR [rdx],esi
   140009d56:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009d59:	30 00                	xor    BYTE PTR [rax],al
   140009d5b:	00 00                	add    BYTE PTR [rax],al
   140009d5d:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009d60 <.rdata$zzz>:
   140009d60:	47                   	rex.RXB
   140009d61:	43                   	rex.XB
   140009d62:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009d65:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009d68:	76 31                	jbe    140009d9b <.rdata$zzz+0xb>
   140009d6a:	2c 20                	sub    al,0x20
   140009d6c:	42 75 69             	rex.X jne 140009dd8 <.rdata$zzz+0x18>
   140009d6f:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009d70:	74 20                	je     140009d92 <.rdata$zzz+0x2>
   140009d72:	62                   	(bad)
   140009d73:	79 20                	jns    140009d95 <.rdata$zzz+0x5>
   140009d75:	4d 53                	rex.WRB push r11
   140009d77:	59                   	pop    rcx
   140009d78:	53                   	push   rbx
   140009d79:	32 20                	xor    ah,BYTE PTR [rax]
   140009d7b:	70 72                	jo     140009def <.rdata$zzz+0x2f>
   140009d7d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009d7e:	6a 65                	push   0x65
   140009d80:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009d84:	31 32                	xor    DWORD PTR [rdx],esi
   140009d86:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009d89:	30 00                	xor    BYTE PTR [rax],al
   140009d8b:	00 00                	add    BYTE PTR [rax],al
   140009d8d:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009d90 <.rdata$zzz>:
   140009d90:	47                   	rex.RXB
   140009d91:	43                   	rex.XB
   140009d92:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009d95:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009d98:	76 31                	jbe    140009dcb <.rdata$zzz+0xb>
   140009d9a:	2c 20                	sub    al,0x20
   140009d9c:	42 75 69             	rex.X jne 140009e08 <.rdata$zzz+0x18>
   140009d9f:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009da0:	74 20                	je     140009dc2 <.rdata$zzz+0x2>
   140009da2:	62                   	(bad)
   140009da3:	79 20                	jns    140009dc5 <.rdata$zzz+0x5>
   140009da5:	4d 53                	rex.WRB push r11
   140009da7:	59                   	pop    rcx
   140009da8:	53                   	push   rbx
   140009da9:	32 20                	xor    ah,BYTE PTR [rax]
   140009dab:	70 72                	jo     140009e1f <.rdata$zzz+0x2f>
   140009dad:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009dae:	6a 65                	push   0x65
   140009db0:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009db4:	31 32                	xor    DWORD PTR [rdx],esi
   140009db6:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009db9:	30 00                	xor    BYTE PTR [rax],al
   140009dbb:	00 00                	add    BYTE PTR [rax],al
   140009dbd:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009dc0 <.rdata$zzz>:
   140009dc0:	47                   	rex.RXB
   140009dc1:	43                   	rex.XB
   140009dc2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009dc5:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009dc8:	76 31                	jbe    140009dfb <.rdata$zzz+0xb>
   140009dca:	2c 20                	sub    al,0x20
   140009dcc:	42 75 69             	rex.X jne 140009e38 <.rdata$zzz+0x18>
   140009dcf:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009dd0:	74 20                	je     140009df2 <.rdata$zzz+0x2>
   140009dd2:	62                   	(bad)
   140009dd3:	79 20                	jns    140009df5 <.rdata$zzz+0x5>
   140009dd5:	4d 53                	rex.WRB push r11
   140009dd7:	59                   	pop    rcx
   140009dd8:	53                   	push   rbx
   140009dd9:	32 20                	xor    ah,BYTE PTR [rax]
   140009ddb:	70 72                	jo     140009e4f <.rdata$zzz+0x2f>
   140009ddd:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009dde:	6a 65                	push   0x65
   140009de0:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009de4:	31 32                	xor    DWORD PTR [rdx],esi
   140009de6:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009de9:	30 00                	xor    BYTE PTR [rax],al
   140009deb:	00 00                	add    BYTE PTR [rax],al
   140009ded:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009df0 <.rdata$zzz>:
   140009df0:	47                   	rex.RXB
   140009df1:	43                   	rex.XB
   140009df2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009df5:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009df8:	76 31                	jbe    140009e2b <.rdata$zzz+0xb>
   140009dfa:	2c 20                	sub    al,0x20
   140009dfc:	42 75 69             	rex.X jne 140009e68 <.rdata$zzz+0x18>
   140009dff:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009e00:	74 20                	je     140009e22 <.rdata$zzz+0x2>
   140009e02:	62                   	(bad)
   140009e03:	79 20                	jns    140009e25 <.rdata$zzz+0x5>
   140009e05:	4d 53                	rex.WRB push r11
   140009e07:	59                   	pop    rcx
   140009e08:	53                   	push   rbx
   140009e09:	32 20                	xor    ah,BYTE PTR [rax]
   140009e0b:	70 72                	jo     140009e7f <.rdata$zzz+0x2f>
   140009e0d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009e0e:	6a 65                	push   0x65
   140009e10:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009e14:	31 32                	xor    DWORD PTR [rdx],esi
   140009e16:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009e19:	30 00                	xor    BYTE PTR [rax],al
   140009e1b:	00 00                	add    BYTE PTR [rax],al
   140009e1d:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009e20 <.rdata$zzz>:
   140009e20:	47                   	rex.RXB
   140009e21:	43                   	rex.XB
   140009e22:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009e25:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009e28:	76 31                	jbe    140009e5b <.rdata$zzz+0xb>
   140009e2a:	2c 20                	sub    al,0x20
   140009e2c:	42 75 69             	rex.X jne 140009e98 <.rdata$zzz+0x18>
   140009e2f:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009e30:	74 20                	je     140009e52 <.rdata$zzz+0x2>
   140009e32:	62                   	(bad)
   140009e33:	79 20                	jns    140009e55 <.rdata$zzz+0x5>
   140009e35:	4d 53                	rex.WRB push r11
   140009e37:	59                   	pop    rcx
   140009e38:	53                   	push   rbx
   140009e39:	32 20                	xor    ah,BYTE PTR [rax]
   140009e3b:	70 72                	jo     140009eaf <.rdata$zzz+0x2f>
   140009e3d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009e3e:	6a 65                	push   0x65
   140009e40:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009e44:	31 32                	xor    DWORD PTR [rdx],esi
   140009e46:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009e49:	30 00                	xor    BYTE PTR [rax],al
   140009e4b:	00 00                	add    BYTE PTR [rax],al
   140009e4d:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009e50 <.rdata$zzz>:
   140009e50:	47                   	rex.RXB
   140009e51:	43                   	rex.XB
   140009e52:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009e55:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009e58:	76 31                	jbe    140009e8b <.rdata$zzz+0xb>
   140009e5a:	2c 20                	sub    al,0x20
   140009e5c:	42 75 69             	rex.X jne 140009ec8 <.rdata$zzz+0x18>
   140009e5f:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009e60:	74 20                	je     140009e82 <.rdata$zzz+0x2>
   140009e62:	62                   	(bad)
   140009e63:	79 20                	jns    140009e85 <.rdata$zzz+0x5>
   140009e65:	4d 53                	rex.WRB push r11
   140009e67:	59                   	pop    rcx
   140009e68:	53                   	push   rbx
   140009e69:	32 20                	xor    ah,BYTE PTR [rax]
   140009e6b:	70 72                	jo     140009edf <.rdata$zzz+0x2f>
   140009e6d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009e6e:	6a 65                	push   0x65
   140009e70:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009e74:	31 32                	xor    DWORD PTR [rdx],esi
   140009e76:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009e79:	30 00                	xor    BYTE PTR [rax],al
   140009e7b:	00 00                	add    BYTE PTR [rax],al
   140009e7d:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009e80 <.rdata$zzz>:
   140009e80:	47                   	rex.RXB
   140009e81:	43                   	rex.XB
   140009e82:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009e85:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009e88:	76 31                	jbe    140009ebb <.rdata$zzz+0xb>
   140009e8a:	2c 20                	sub    al,0x20
   140009e8c:	42 75 69             	rex.X jne 140009ef8 <.rdata$zzz+0x18>
   140009e8f:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009e90:	74 20                	je     140009eb2 <.rdata$zzz+0x2>
   140009e92:	62                   	(bad)
   140009e93:	79 20                	jns    140009eb5 <.rdata$zzz+0x5>
   140009e95:	4d 53                	rex.WRB push r11
   140009e97:	59                   	pop    rcx
   140009e98:	53                   	push   rbx
   140009e99:	32 20                	xor    ah,BYTE PTR [rax]
   140009e9b:	70 72                	jo     140009f0f <.rdata$zzz+0x2f>
   140009e9d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009e9e:	6a 65                	push   0x65
   140009ea0:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009ea4:	31 32                	xor    DWORD PTR [rdx],esi
   140009ea6:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009ea9:	30 00                	xor    BYTE PTR [rax],al
   140009eab:	00 00                	add    BYTE PTR [rax],al
   140009ead:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009eb0 <.rdata$zzz>:
   140009eb0:	47                   	rex.RXB
   140009eb1:	43                   	rex.XB
   140009eb2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009eb5:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009eb8:	76 31                	jbe    140009eeb <.rdata$zzz+0xb>
   140009eba:	2c 20                	sub    al,0x20
   140009ebc:	42 75 69             	rex.X jne 140009f28 <.rdata$zzz+0x18>
   140009ebf:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009ec0:	74 20                	je     140009ee2 <.rdata$zzz+0x2>
   140009ec2:	62                   	(bad)
   140009ec3:	79 20                	jns    140009ee5 <.rdata$zzz+0x5>
   140009ec5:	4d 53                	rex.WRB push r11
   140009ec7:	59                   	pop    rcx
   140009ec8:	53                   	push   rbx
   140009ec9:	32 20                	xor    ah,BYTE PTR [rax]
   140009ecb:	70 72                	jo     140009f3f <.rdata$zzz+0x2f>
   140009ecd:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009ece:	6a 65                	push   0x65
   140009ed0:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009ed4:	31 32                	xor    DWORD PTR [rdx],esi
   140009ed6:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009ed9:	30 00                	xor    BYTE PTR [rax],al
   140009edb:	00 00                	add    BYTE PTR [rax],al
   140009edd:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009ee0 <.rdata$zzz>:
   140009ee0:	47                   	rex.RXB
   140009ee1:	43                   	rex.XB
   140009ee2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009ee5:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009ee8:	76 31                	jbe    140009f1b <.rdata$zzz+0xb>
   140009eea:	2c 20                	sub    al,0x20
   140009eec:	42 75 69             	rex.X jne 140009f58 <.rdata$zzz+0x18>
   140009eef:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009ef0:	74 20                	je     140009f12 <.rdata$zzz+0x2>
   140009ef2:	62                   	(bad)
   140009ef3:	79 20                	jns    140009f15 <.rdata$zzz+0x5>
   140009ef5:	4d 53                	rex.WRB push r11
   140009ef7:	59                   	pop    rcx
   140009ef8:	53                   	push   rbx
   140009ef9:	32 20                	xor    ah,BYTE PTR [rax]
   140009efb:	70 72                	jo     140009f6f <.rdata$zzz+0x2f>
   140009efd:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009efe:	6a 65                	push   0x65
   140009f00:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009f04:	31 32                	xor    DWORD PTR [rdx],esi
   140009f06:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009f09:	30 00                	xor    BYTE PTR [rax],al
   140009f0b:	00 00                	add    BYTE PTR [rax],al
   140009f0d:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009f10 <.rdata$zzz>:
   140009f10:	47                   	rex.RXB
   140009f11:	43                   	rex.XB
   140009f12:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009f15:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009f18:	76 31                	jbe    140009f4b <.rdata$zzz+0xb>
   140009f1a:	2c 20                	sub    al,0x20
   140009f1c:	42 75 69             	rex.X jne 140009f88 <.rdata$zzz+0x18>
   140009f1f:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009f20:	74 20                	je     140009f42 <.rdata$zzz+0x2>
   140009f22:	62                   	(bad)
   140009f23:	79 20                	jns    140009f45 <.rdata$zzz+0x5>
   140009f25:	4d 53                	rex.WRB push r11
   140009f27:	59                   	pop    rcx
   140009f28:	53                   	push   rbx
   140009f29:	32 20                	xor    ah,BYTE PTR [rax]
   140009f2b:	70 72                	jo     140009f9f <.rdata$zzz+0x2f>
   140009f2d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009f2e:	6a 65                	push   0x65
   140009f30:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009f34:	31 32                	xor    DWORD PTR [rdx],esi
   140009f36:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009f39:	30 00                	xor    BYTE PTR [rax],al
   140009f3b:	00 00                	add    BYTE PTR [rax],al
   140009f3d:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009f40 <.rdata$zzz>:
   140009f40:	47                   	rex.RXB
   140009f41:	43                   	rex.XB
   140009f42:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009f45:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009f48:	76 31                	jbe    140009f7b <.rdata$zzz+0xb>
   140009f4a:	2c 20                	sub    al,0x20
   140009f4c:	42 75 69             	rex.X jne 140009fb8 <.rdata$zzz+0x18>
   140009f4f:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009f50:	74 20                	je     140009f72 <.rdata$zzz+0x2>
   140009f52:	62                   	(bad)
   140009f53:	79 20                	jns    140009f75 <.rdata$zzz+0x5>
   140009f55:	4d 53                	rex.WRB push r11
   140009f57:	59                   	pop    rcx
   140009f58:	53                   	push   rbx
   140009f59:	32 20                	xor    ah,BYTE PTR [rax]
   140009f5b:	70 72                	jo     140009fcf <.rdata$zzz+0x2f>
   140009f5d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009f5e:	6a 65                	push   0x65
   140009f60:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009f64:	31 32                	xor    DWORD PTR [rdx],esi
   140009f66:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009f69:	30 00                	xor    BYTE PTR [rax],al
   140009f6b:	00 00                	add    BYTE PTR [rax],al
   140009f6d:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009f70 <.rdata$zzz>:
   140009f70:	47                   	rex.RXB
   140009f71:	43                   	rex.XB
   140009f72:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009f75:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009f78:	76 31                	jbe    140009fab <.rdata$zzz+0xb>
   140009f7a:	2c 20                	sub    al,0x20
   140009f7c:	42 75 69             	rex.X jne 140009fe8 <.rdata$zzz+0x18>
   140009f7f:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009f80:	74 20                	je     140009fa2 <.rdata$zzz+0x2>
   140009f82:	62                   	(bad)
   140009f83:	79 20                	jns    140009fa5 <.rdata$zzz+0x5>
   140009f85:	4d 53                	rex.WRB push r11
   140009f87:	59                   	pop    rcx
   140009f88:	53                   	push   rbx
   140009f89:	32 20                	xor    ah,BYTE PTR [rax]
   140009f8b:	70 72                	jo     140009fff <.rdata$zzz+0x2f>
   140009f8d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009f8e:	6a 65                	push   0x65
   140009f90:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009f94:	31 32                	xor    DWORD PTR [rdx],esi
   140009f96:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009f99:	30 00                	xor    BYTE PTR [rax],al
   140009f9b:	00 00                	add    BYTE PTR [rax],al
   140009f9d:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009fa0 <.rdata$zzz>:
   140009fa0:	47                   	rex.RXB
   140009fa1:	43                   	rex.XB
   140009fa2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009fa5:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009fa8:	76 31                	jbe    140009fdb <.rdata$zzz+0xb>
   140009faa:	2c 20                	sub    al,0x20
   140009fac:	42 75 69             	rex.X jne 14000a018 <.rdata$zzz+0x18>
   140009faf:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009fb0:	74 20                	je     140009fd2 <.rdata$zzz+0x2>
   140009fb2:	62                   	(bad)
   140009fb3:	79 20                	jns    140009fd5 <.rdata$zzz+0x5>
   140009fb5:	4d 53                	rex.WRB push r11
   140009fb7:	59                   	pop    rcx
   140009fb8:	53                   	push   rbx
   140009fb9:	32 20                	xor    ah,BYTE PTR [rax]
   140009fbb:	70 72                	jo     14000a02f <.rdata$zzz+0x2f>
   140009fbd:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009fbe:	6a 65                	push   0x65
   140009fc0:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009fc4:	31 32                	xor    DWORD PTR [rdx],esi
   140009fc6:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009fc9:	30 00                	xor    BYTE PTR [rax],al
   140009fcb:	00 00                	add    BYTE PTR [rax],al
   140009fcd:	00 00                	add    BYTE PTR [rax],al
	...

0000000140009fd0 <.rdata$zzz>:
   140009fd0:	47                   	rex.RXB
   140009fd1:	43                   	rex.XB
   140009fd2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   140009fd5:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   140009fd8:	76 31                	jbe    14000a00b <.rdata$zzz+0xb>
   140009fda:	2c 20                	sub    al,0x20
   140009fdc:	42 75 69             	rex.X jne 14000a048 <.rdata$zzz+0x18>
   140009fdf:	6c                   	ins    BYTE PTR es:[rdi],dx
   140009fe0:	74 20                	je     14000a002 <.rdata$zzz+0x2>
   140009fe2:	62                   	(bad)
   140009fe3:	79 20                	jns    14000a005 <.rdata$zzz+0x5>
   140009fe5:	4d 53                	rex.WRB push r11
   140009fe7:	59                   	pop    rcx
   140009fe8:	53                   	push   rbx
   140009fe9:	32 20                	xor    ah,BYTE PTR [rax]
   140009feb:	70 72                	jo     14000a05f <.rdata$zzz+0x2f>
   140009fed:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   140009fee:	6a 65                	push   0x65
   140009ff0:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   140009ff4:	31 32                	xor    DWORD PTR [rdx],esi
   140009ff6:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   140009ff9:	30 00                	xor    BYTE PTR [rax],al
   140009ffb:	00 00                	add    BYTE PTR [rax],al
   140009ffd:	00 00                	add    BYTE PTR [rax],al
	...

000000014000a000 <.rdata$zzz>:
   14000a000:	47                   	rex.RXB
   14000a001:	43                   	rex.XB
   14000a002:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   14000a005:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   14000a008:	76 31                	jbe    14000a03b <.rdata$zzz+0xb>
   14000a00a:	2c 20                	sub    al,0x20
   14000a00c:	42 75 69             	rex.X jne 14000a078 <__RUNTIME_PSEUDO_RELOC_LIST_END__+0x18>
   14000a00f:	6c                   	ins    BYTE PTR es:[rdi],dx
   14000a010:	74 20                	je     14000a032 <.rdata$zzz+0x2>
   14000a012:	62                   	(bad)
   14000a013:	79 20                	jns    14000a035 <.rdata$zzz+0x5>
   14000a015:	4d 53                	rex.WRB push r11
   14000a017:	59                   	pop    rcx
   14000a018:	53                   	push   rbx
   14000a019:	32 20                	xor    ah,BYTE PTR [rax]
   14000a01b:	70 72                	jo     14000a08f <__RUNTIME_PSEUDO_RELOC_LIST_END__+0x2f>
   14000a01d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   14000a01e:	6a 65                	push   0x65
   14000a020:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   14000a024:	31 32                	xor    DWORD PTR [rdx],esi
   14000a026:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   14000a029:	30 00                	xor    BYTE PTR [rax],al
   14000a02b:	00 00                	add    BYTE PTR [rax],al
   14000a02d:	00 00                	add    BYTE PTR [rax],al
	...

000000014000a030 <.rdata$zzz>:
   14000a030:	47                   	rex.RXB
   14000a031:	43                   	rex.XB
   14000a032:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   14000a035:	28 52 65             	sub    BYTE PTR [rdx+0x65],dl
   14000a038:	76 31                	jbe    14000a06b <__RUNTIME_PSEUDO_RELOC_LIST_END__+0xb>
   14000a03a:	2c 20                	sub    al,0x20
   14000a03c:	42 75 69             	rex.X jne 14000a0a8 <__RUNTIME_PSEUDO_RELOC_LIST_END__+0x48>
   14000a03f:	6c                   	ins    BYTE PTR es:[rdi],dx
   14000a040:	74 20                	je     14000a062 <__RUNTIME_PSEUDO_RELOC_LIST_END__+0x2>
   14000a042:	62                   	(bad)
   14000a043:	79 20                	jns    14000a065 <__RUNTIME_PSEUDO_RELOC_LIST_END__+0x5>
   14000a045:	4d 53                	rex.WRB push r11
   14000a047:	59                   	pop    rcx
   14000a048:	53                   	push   rbx
   14000a049:	32 20                	xor    ah,BYTE PTR [rax]
   14000a04b:	70 72                	jo     14000a0bf <__RUNTIME_PSEUDO_RELOC_LIST_END__+0x5f>
   14000a04d:	6f                   	outs   dx,DWORD PTR ds:[rsi]
   14000a04e:	6a 65                	push   0x65
   14000a050:	63 74 29 20          	movsxd esi,DWORD PTR [rcx+rbp*1+0x20]
   14000a054:	31 32                	xor    DWORD PTR [rdx],esi
   14000a056:	2e 32 2e             	cs xor ch,BYTE PTR [rsi]
   14000a059:	30 00                	xor    BYTE PTR [rax],al
   14000a05b:	00 00                	add    BYTE PTR [rax],al
   14000a05d:	00 00                	add    BYTE PTR [rax],al
	...
