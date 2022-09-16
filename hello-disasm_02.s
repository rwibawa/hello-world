
hello2.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    rsp,0x28
   140001014:	48 8b 05 85 87 00 00 	mov    rax,QWORD PTR [rip+0x8785]        # 1400097a0 <.refptr.__mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    ecx,ecx
   14000101d:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   140001023:	48 8b 05 86 87 00 00 	mov    rax,QWORD PTR [rip+0x8786]        # 1400097b0 <.refptr.__mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   140001030:	48 8b 05 89 87 00 00 	mov    rax,QWORD PTR [rip+0x8789]        # 1400097c0 <.refptr.__mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   14000103d:	48 8b 05 fc 86 00 00 	mov    rax,QWORD PTR [rip+0x86fc]        # 140009740 <.refptr.__image_base__>
   140001044:	66 81 38 4d 5a       	cmp    WORD PTR [rax],0x5a4d
   140001049:	75 0f                	jne    14000105a <pre_c_init+0x4a>
   14000104b:	48 63 50 3c          	movsxd rdx,DWORD PTR [rax+0x3c]
   14000104f:	48 01 d0             	add    rax,rdx
   140001052:	81 38 50 45 00 00    	cmp    DWORD PTR [rax],0x4550
   140001058:	74 66                	je     1400010c0 <pre_c_init+0xb0>
   14000105a:	48 8b 05 2f 87 00 00 	mov    rax,QWORD PTR [rip+0x872f]        # 140009790 <.refptr.__mingw_app_type>
   140001061:	89 0d b9 bf 00 00    	mov    DWORD PTR [rip+0xbfb9],ecx        # 14000d020 <managedapp>
   140001067:	8b 00                	mov    eax,DWORD PTR [rax]
   140001069:	85 c0                	test   eax,eax
   14000106b:	74 43                	je     1400010b0 <pre_c_init+0xa0>
   14000106d:	b9 02 00 00 00       	mov    ecx,0x2
   140001072:	e8 e1 6a 00 00       	call   140007b58 <__set_app_type>
   140001077:	e8 64 64 00 00       	call   1400074e0 <__p__fmode>
   14000107c:	48 8b 15 ed 87 00 00 	mov    rdx,QWORD PTR [rip+0x87ed]        # 140009870 <.refptr._fmode>
   140001083:	8b 12                	mov    edx,DWORD PTR [rdx]
   140001085:	89 10                	mov    DWORD PTR [rax],edx
   140001087:	e8 64 64 00 00       	call   1400074f0 <__p__commode>
   14000108c:	48 8b 15 bd 87 00 00 	mov    rdx,QWORD PTR [rip+0x87bd]        # 140009850 <.refptr._commode>
   140001093:	8b 12                	mov    edx,DWORD PTR [rdx]
   140001095:	89 10                	mov    DWORD PTR [rax],edx
   140001097:	e8 f4 05 00 00       	call   140001690 <_setargv>
   14000109c:	48 8b 05 4d 86 00 00 	mov    rax,QWORD PTR [rip+0x864d]        # 1400096f0 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmp    DWORD PTR [rax],0x1
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    eax,eax
   1400010aa:	48 83 c4 28          	add    rsp,0x28
   1400010ae:	c3                   	ret
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    ecx,0x1
   1400010b5:	e8 9e 6a 00 00       	call   140007b58 <__set_app_type>
   1400010ba:	eb bb                	jmp    140001077 <pre_c_init+0x67>
   1400010bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   1400010c0:	0f b7 50 18          	movzx  edx,WORD PTR [rax+0x18]
   1400010c4:	66 81 fa 0b 01       	cmp    dx,0x10b
   1400010c9:	74 45                	je     140001110 <pre_c_init+0x100>
   1400010cb:	66 81 fa 0b 02       	cmp    dx,0x20b
   1400010d0:	75 88                	jne    14000105a <pre_c_init+0x4a>
   1400010d2:	83 b8 84 00 00 00 0e 	cmp    DWORD PTR [rax+0x84],0xe
   1400010d9:	0f 86 7b ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   1400010df:	8b 90 f8 00 00 00    	mov    edx,DWORD PTR [rax+0xf8]
   1400010e5:	31 c9                	xor    ecx,ecx
   1400010e7:	85 d2                	test   edx,edx
   1400010e9:	0f 95 c1             	setne  cl
   1400010ec:	e9 69 ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   1400010f1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400010f8:	48 8b 0d 91 87 00 00 	mov    rcx,QWORD PTR [rip+0x8791]        # 140009890 <.refptr._matherr>
   1400010ff:	e8 fc 0c 00 00       	call   140001e00 <__mingw_setusermatherr>
   140001104:	31 c0                	xor    eax,eax
   140001106:	48 83 c4 28          	add    rsp,0x28
   14000110a:	c3                   	ret
   14000110b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140001110:	83 78 74 0e          	cmp    DWORD PTR [rax+0x74],0xe
   140001114:	0f 86 40 ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   14000111a:	44 8b 80 e8 00 00 00 	mov    r8d,DWORD PTR [rax+0xe8]
   140001121:	31 c9                	xor    ecx,ecx
   140001123:	45 85 c0             	test   r8d,r8d
   140001126:	0f 95 c1             	setne  cl
   140001129:	e9 2c ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   14000112e:	66 90                	xchg   ax,ax

0000000140001130 <pre_cpp_init>:
   140001130:	48 83 ec 38          	sub    rsp,0x38
   140001134:	48 8b 05 65 87 00 00 	mov    rax,QWORD PTR [rip+0x8765]        # 1400098a0 <.refptr._newmode>
   14000113b:	4c 8d 05 e6 be 00 00 	lea    r8,[rip+0xbee6]        # 14000d028 <envp>
   140001142:	48 8d 15 e7 be 00 00 	lea    rdx,[rip+0xbee7]        # 14000d030 <argv>
   140001149:	48 8d 0d e8 be 00 00 	lea    rcx,[rip+0xbee8]        # 14000d038 <argc>
   140001150:	8b 00                	mov    eax,DWORD PTR [rax]
   140001152:	89 05 c0 be 00 00    	mov    DWORD PTR [rip+0xbec0],eax        # 14000d018 <startinfo>
   140001158:	48 8b 05 01 87 00 00 	mov    rax,QWORD PTR [rip+0x8701]        # 140009860 <.refptr._dowildcard>
   14000115f:	44 8b 08             	mov    r9d,DWORD PTR [rax]
   140001162:	48 8d 05 af be 00 00 	lea    rax,[rip+0xbeaf]        # 14000d018 <startinfo>
   140001169:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
   14000116e:	e8 d5 69 00 00       	call   140007b48 <__getmainargs>
   140001173:	90                   	nop
   140001174:	48 83 c4 38          	add    rsp,0x38
   140001178:	c3                   	ret
   140001179:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000140001180 <__tmainCRTStartup>:
   140001180:	41 54                	push   r12
   140001182:	55                   	push   rbp
   140001183:	57                   	push   rdi
   140001184:	56                   	push   rsi
   140001185:	53                   	push   rbx
   140001186:	48 81 ec 90 00 00 00 	sub    rsp,0x90
   14000118d:	b9 0d 00 00 00       	mov    ecx,0xd
   140001192:	31 c0                	xor    eax,eax
   140001194:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
   140001199:	48 89 d7             	mov    rdi,rdx
   14000119c:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
   14000119f:	48 8b 3d ea 85 00 00 	mov    rdi,QWORD PTR [rip+0x85ea]        # 140009790 <.refptr.__mingw_app_type>
   1400011a6:	44 8b 0f             	mov    r9d,DWORD PTR [rdi]
   1400011a9:	45 85 c9             	test   r9d,r9d
   1400011ac:	0f 85 9e 02 00 00    	jne    140001450 <__tmainCRTStartup+0x2d0>
   1400011b2:	65 48 8b 04 25 30 00 	mov    rax,QWORD PTR gs:0x30
   1400011b9:	00 00 
   1400011bb:	48 8b 1d 1e 86 00 00 	mov    rbx,QWORD PTR [rip+0x861e]        # 1400097e0 <.refptr.__native_startup_lock>
   1400011c2:	48 8b 70 08          	mov    rsi,QWORD PTR [rax+0x8]
   1400011c6:	31 ed                	xor    ebp,ebp
   1400011c8:	4c 8b 25 4d d0 00 00 	mov    r12,QWORD PTR [rip+0xd04d]        # 14000e21c <__imp_Sleep>
   1400011cf:	eb 18                	jmp    1400011e9 <__tmainCRTStartup+0x69>
   1400011d1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400011d8:	48 39 c6             	cmp    rsi,rax
   1400011db:	0f 84 0f 02 00 00    	je     1400013f0 <__tmainCRTStartup+0x270>
   1400011e1:	b9 e8 03 00 00       	mov    ecx,0x3e8
   1400011e6:	41 ff d4             	call   r12
   1400011e9:	48 89 e8             	mov    rax,rbp
   1400011ec:	f0 48 0f b1 33       	lock cmpxchg QWORD PTR [rbx],rsi
   1400011f1:	48 85 c0             	test   rax,rax
   1400011f4:	75 e2                	jne    1400011d8 <__tmainCRTStartup+0x58>
   1400011f6:	48 8b 35 f3 85 00 00 	mov    rsi,QWORD PTR [rip+0x85f3]        # 1400097f0 <.refptr.__native_startup_state>
   1400011fd:	31 ed                	xor    ebp,ebp
   1400011ff:	8b 06                	mov    eax,DWORD PTR [rsi]
   140001201:	83 f8 01             	cmp    eax,0x1
   140001204:	0f 84 fd 01 00 00    	je     140001407 <__tmainCRTStartup+0x287>
   14000120a:	8b 06                	mov    eax,DWORD PTR [rsi]
   14000120c:	85 c0                	test   eax,eax
   14000120e:	0f 84 6c 02 00 00    	je     140001480 <__tmainCRTStartup+0x300>
   140001214:	c7 05 fe bd 00 00 01 	mov    DWORD PTR [rip+0xbdfe],0x1        # 14000d01c <has_cctor>
   14000121b:	00 00 00 
   14000121e:	8b 06                	mov    eax,DWORD PTR [rsi]
   140001220:	83 f8 01             	cmp    eax,0x1
   140001223:	0f 84 f3 01 00 00    	je     14000141c <__tmainCRTStartup+0x29c>
   140001229:	85 ed                	test   ebp,ebp
   14000122b:	0f 84 0c 02 00 00    	je     14000143d <__tmainCRTStartup+0x2bd>
   140001231:	48 8b 05 f8 84 00 00 	mov    rax,QWORD PTR [rip+0x84f8]        # 140009730 <.refptr.__dyn_tls_init_callback>
   140001238:	48 8b 00             	mov    rax,QWORD PTR [rax]
   14000123b:	48 85 c0             	test   rax,rax
   14000123e:	74 0c                	je     14000124c <__tmainCRTStartup+0xcc>
   140001240:	45 31 c0             	xor    r8d,r8d
   140001243:	ba 02 00 00 00       	mov    edx,0x2
   140001248:	31 c9                	xor    ecx,ecx
   14000124a:	ff d0                	call   rax
   14000124c:	e8 0f 08 00 00       	call   140001a60 <_pei386_runtime_relocator>
   140001251:	48 8b 0d 28 86 00 00 	mov    rcx,QWORD PTR [rip+0x8628]        # 140009880 <.refptr._gnu_exception_handler>
   140001258:	ff 15 b6 cf 00 00    	call   QWORD PTR [rip+0xcfb6]        # 14000e214 <__imp_SetUnhandledExceptionFilter>
   14000125e:	48 8b 15 6b 85 00 00 	mov    rdx,QWORD PTR [rip+0x856b]        # 1400097d0 <.refptr.__mingw_oldexcpt_handler>
   140001265:	48 8d 0d 94 fd ff ff 	lea    rcx,[rip+0xfffffffffffffd94]        # 140001000 <__mingw_invalidParameterHandler>
   14000126c:	48 89 02             	mov    QWORD PTR [rdx],rax
   14000126f:	e8 7c 63 00 00       	call   1400075f0 <_set_invalid_parameter_handler>
   140001274:	e8 f7 05 00 00       	call   140001870 <_fpreset>
   140001279:	48 8b 05 c0 84 00 00 	mov    rax,QWORD PTR [rip+0x84c0]        # 140009740 <.refptr.__image_base__>
   140001280:	48 89 05 89 bd 00 00 	mov    QWORD PTR [rip+0xbd89],rax        # 14000d010 <__mingw_winmain_hInstance>
   140001287:	e8 74 62 00 00       	call   140007500 <__p__acmdln>
   14000128c:	31 c9                	xor    ecx,ecx
   14000128e:	48 8b 00             	mov    rax,QWORD PTR [rax]
   140001291:	48 85 c0             	test   rax,rax
   140001294:	75 1c                	jne    1400012b2 <__tmainCRTStartup+0x132>
   140001296:	eb 58                	jmp    1400012f0 <__tmainCRTStartup+0x170>
   140001298:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000129f:	00 
   1400012a0:	84 d2                	test   dl,dl
   1400012a2:	74 45                	je     1400012e9 <__tmainCRTStartup+0x169>
   1400012a4:	83 e1 01             	and    ecx,0x1
   1400012a7:	74 27                	je     1400012d0 <__tmainCRTStartup+0x150>
   1400012a9:	b9 01 00 00 00       	mov    ecx,0x1
   1400012ae:	48 83 c0 01          	add    rax,0x1
   1400012b2:	0f b6 10             	movzx  edx,BYTE PTR [rax]
   1400012b5:	80 fa 20             	cmp    dl,0x20
   1400012b8:	7e e6                	jle    1400012a0 <__tmainCRTStartup+0x120>
   1400012ba:	41 89 c8             	mov    r8d,ecx
   1400012bd:	41 83 f0 01          	xor    r8d,0x1
   1400012c1:	80 fa 22             	cmp    dl,0x22
   1400012c4:	41 0f 44 c8          	cmove  ecx,r8d
   1400012c8:	eb e4                	jmp    1400012ae <__tmainCRTStartup+0x12e>
   1400012ca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400012d0:	84 d2                	test   dl,dl
   1400012d2:	74 15                	je     1400012e9 <__tmainCRTStartup+0x169>
   1400012d4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   1400012d8:	0f b6 50 01          	movzx  edx,BYTE PTR [rax+0x1]
   1400012dc:	48 83 c0 01          	add    rax,0x1
   1400012e0:	84 d2                	test   dl,dl
   1400012e2:	74 05                	je     1400012e9 <__tmainCRTStartup+0x169>
   1400012e4:	80 fa 20             	cmp    dl,0x20
   1400012e7:	7e ef                	jle    1400012d8 <__tmainCRTStartup+0x158>
   1400012e9:	48 89 05 18 bd 00 00 	mov    QWORD PTR [rip+0xbd18],rax        # 14000d008 <__mingw_winmain_lpCmdLine>
   1400012f0:	44 8b 07             	mov    r8d,DWORD PTR [rdi]
   1400012f3:	45 85 c0             	test   r8d,r8d
   1400012f6:	74 16                	je     14000130e <__tmainCRTStartup+0x18e>
   1400012f8:	b8 0a 00 00 00       	mov    eax,0xa
   1400012fd:	f6 44 24 5c 01       	test   BYTE PTR [rsp+0x5c],0x1
   140001302:	0f 85 d8 00 00 00    	jne    1400013e0 <__tmainCRTStartup+0x260>
   140001308:	89 05 f2 6c 00 00    	mov    DWORD PTR [rip+0x6cf2],eax        # 140008000 <__data_start__>
   14000130e:	8b 1d 24 bd 00 00    	mov    ebx,DWORD PTR [rip+0xbd24]        # 14000d038 <argc>
   140001314:	44 8d 63 01          	lea    r12d,[rbx+0x1]
   140001318:	4d 63 e4             	movsxd r12,r12d
   14000131b:	49 c1 e4 03          	shl    r12,0x3
   14000131f:	4c 89 e1             	mov    rcx,r12
   140001322:	e8 b9 68 00 00       	call   140007be0 <malloc>
   140001327:	48 8b 3d 02 bd 00 00 	mov    rdi,QWORD PTR [rip+0xbd02]        # 14000d030 <argv>
   14000132e:	48 89 c5             	mov    rbp,rax
   140001331:	85 db                	test   ebx,ebx
   140001333:	0f 8e 65 01 00 00    	jle    14000149e <__tmainCRTStartup+0x31e>
   140001339:	49 83 ec 08          	sub    r12,0x8
   14000133d:	31 db                	xor    ebx,ebx
   14000133f:	90                   	nop
   140001340:	48 8b 0c 1f          	mov    rcx,QWORD PTR [rdi+rbx*1]
   140001344:	e8 bf 68 00 00       	call   140007c08 <strlen>
   140001349:	48 8d 70 01          	lea    rsi,[rax+0x1]
   14000134d:	48 89 f1             	mov    rcx,rsi
   140001350:	e8 8b 68 00 00       	call   140007be0 <malloc>
   140001355:	49 89 f0             	mov    r8,rsi
   140001358:	48 89 44 1d 00       	mov    QWORD PTR [rbp+rbx*1+0x0],rax
   14000135d:	48 8b 14 1f          	mov    rdx,QWORD PTR [rdi+rbx*1]
   140001361:	48 89 c1             	mov    rcx,rax
   140001364:	48 83 c3 08          	add    rbx,0x8
   140001368:	e8 7b 68 00 00       	call   140007be8 <memcpy>
   14000136d:	4c 39 e3             	cmp    rbx,r12
   140001370:	75 ce                	jne    140001340 <__tmainCRTStartup+0x1c0>
   140001372:	48 01 eb             	add    rbx,rbp
   140001375:	48 c7 03 00 00 00 00 	mov    QWORD PTR [rbx],0x0
   14000137c:	48 89 2d ad bc 00 00 	mov    QWORD PTR [rip+0xbcad],rbp        # 14000d030 <argv>
   140001383:	e8 e8 02 00 00       	call   140001670 <__main>
   140001388:	48 8b 05 c1 83 00 00 	mov    rax,QWORD PTR [rip+0x83c1]        # 140009750 <.refptr.__imp___initenv>
   14000138f:	4c 8b 05 92 bc 00 00 	mov    r8,QWORD PTR [rip+0xbc92]        # 14000d028 <envp>
   140001396:	8b 0d 9c bc 00 00    	mov    ecx,DWORD PTR [rip+0xbc9c]        # 14000d038 <argc>
   14000139c:	48 8b 00             	mov    rax,QWORD PTR [rax]
   14000139f:	4c 89 00             	mov    QWORD PTR [rax],r8
   1400013a2:	48 8b 15 87 bc 00 00 	mov    rdx,QWORD PTR [rip+0xbc87]        # 14000d030 <argv>
   1400013a9:	e8 d6 01 00 00       	call   140001584 <main>
   1400013ae:	8b 0d 6c bc 00 00    	mov    ecx,DWORD PTR [rip+0xbc6c]        # 14000d020 <managedapp>
   1400013b4:	89 05 6a bc 00 00    	mov    DWORD PTR [rip+0xbc6a],eax        # 14000d024 <mainret>
   1400013ba:	85 c9                	test   ecx,ecx
   1400013bc:	0f 84 e4 00 00 00    	je     1400014a6 <__tmainCRTStartup+0x326>
   1400013c2:	8b 15 54 bc 00 00    	mov    edx,DWORD PTR [rip+0xbc54]        # 14000d01c <has_cctor>
   1400013c8:	85 d2                	test   edx,edx
   1400013ca:	0f 84 90 00 00 00    	je     140001460 <__tmainCRTStartup+0x2e0>
   1400013d0:	48 81 c4 90 00 00 00 	add    rsp,0x90
   1400013d7:	5b                   	pop    rbx
   1400013d8:	5e                   	pop    rsi
   1400013d9:	5f                   	pop    rdi
   1400013da:	5d                   	pop    rbp
   1400013db:	41 5c                	pop    r12
   1400013dd:	c3                   	ret
   1400013de:	66 90                	xchg   ax,ax
   1400013e0:	0f b7 44 24 60       	movzx  eax,WORD PTR [rsp+0x60]
   1400013e5:	e9 1e ff ff ff       	jmp    140001308 <__tmainCRTStartup+0x188>
   1400013ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400013f0:	48 8b 35 f9 83 00 00 	mov    rsi,QWORD PTR [rip+0x83f9]        # 1400097f0 <.refptr.__native_startup_state>
   1400013f7:	bd 01 00 00 00       	mov    ebp,0x1
   1400013fc:	8b 06                	mov    eax,DWORD PTR [rsi]
   1400013fe:	83 f8 01             	cmp    eax,0x1
   140001401:	0f 85 03 fe ff ff    	jne    14000120a <__tmainCRTStartup+0x8a>
   140001407:	b9 1f 00 00 00       	mov    ecx,0x1f
   14000140c:	e8 57 67 00 00       	call   140007b68 <_amsg_exit>
   140001411:	8b 06                	mov    eax,DWORD PTR [rsi]
   140001413:	83 f8 01             	cmp    eax,0x1
   140001416:	0f 85 0d fe ff ff    	jne    140001229 <__tmainCRTStartup+0xa9>
   14000141c:	48 8b 15 fd 83 00 00 	mov    rdx,QWORD PTR [rip+0x83fd]        # 140009820 <.refptr.__xc_z>
   140001423:	48 8b 0d e6 83 00 00 	mov    rcx,QWORD PTR [rip+0x83e6]        # 140009810 <.refptr.__xc_a>
   14000142a:	e8 51 67 00 00       	call   140007b80 <_initterm>
   14000142f:	c7 06 02 00 00 00    	mov    DWORD PTR [rsi],0x2
   140001435:	85 ed                	test   ebp,ebp
   140001437:	0f 85 f4 fd ff ff    	jne    140001231 <__tmainCRTStartup+0xb1>
   14000143d:	31 c0                	xor    eax,eax
   14000143f:	48 87 03             	xchg   QWORD PTR [rbx],rax
   140001442:	e9 ea fd ff ff       	jmp    140001231 <__tmainCRTStartup+0xb1>
   140001447:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000144e:	00 00 
   140001450:	48 89 d1             	mov    rcx,rdx
   140001453:	ff 15 93 cd 00 00    	call   QWORD PTR [rip+0xcd93]        # 14000e1ec <__imp_GetStartupInfoA>
   140001459:	e9 54 fd ff ff       	jmp    1400011b2 <__tmainCRTStartup+0x32>
   14000145e:	66 90                	xchg   ax,ax
   140001460:	e8 0b 67 00 00       	call   140007b70 <_cexit>
   140001465:	8b 05 b9 bb 00 00    	mov    eax,DWORD PTR [rip+0xbbb9]        # 14000d024 <mainret>
   14000146b:	48 81 c4 90 00 00 00 	add    rsp,0x90
   140001472:	5b                   	pop    rbx
   140001473:	5e                   	pop    rsi
   140001474:	5f                   	pop    rdi
   140001475:	5d                   	pop    rbp
   140001476:	41 5c                	pop    r12
   140001478:	c3                   	ret
   140001479:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140001480:	48 8b 15 b9 83 00 00 	mov    rdx,QWORD PTR [rip+0x83b9]        # 140009840 <.refptr.__xi_z>
   140001487:	48 8b 0d a2 83 00 00 	mov    rcx,QWORD PTR [rip+0x83a2]        # 140009830 <.refptr.__xi_a>
   14000148e:	c7 06 01 00 00 00    	mov    DWORD PTR [rsi],0x1
   140001494:	e8 e7 66 00 00       	call   140007b80 <_initterm>
   140001499:	e9 80 fd ff ff       	jmp    14000121e <__tmainCRTStartup+0x9e>
   14000149e:	48 89 c3             	mov    rbx,rax
   1400014a1:	e9 cf fe ff ff       	jmp    140001375 <__tmainCRTStartup+0x1f5>
   1400014a6:	89 c1                	mov    ecx,eax
   1400014a8:	e8 03 67 00 00       	call   140007bb0 <exit>
   1400014ad:	90                   	nop
   1400014ae:	66 90                	xchg   ax,ax

00000001400014b0 <WinMainCRTStartup>:
   1400014b0:	48 83 ec 28          	sub    rsp,0x28

00000001400014b4 <.l_startw>:
   1400014b4:	48 8b 05 d5 82 00 00 	mov    rax,QWORD PTR [rip+0x82d5]        # 140009790 <.refptr.__mingw_app_type>
   1400014bb:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   1400014c1:	e8 ba fc ff ff       	call   140001180 <__tmainCRTStartup>
   1400014c6:	90                   	nop

00000001400014c7 <.l_endw>:
   1400014c7:	90                   	nop
   1400014c8:	48 83 c4 28          	add    rsp,0x28
   1400014cc:	c3                   	ret
   1400014cd:	0f 1f 00             	nop    DWORD PTR [rax]

00000001400014d0 <mainCRTStartup>:
   1400014d0:	48 83 ec 28          	sub    rsp,0x28

00000001400014d4 <.l_start>:
   1400014d4:	48 8b 05 b5 82 00 00 	mov    rax,QWORD PTR [rip+0x82b5]        # 140009790 <.refptr.__mingw_app_type>
   1400014db:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
   1400014e1:	e8 9a fc ff ff       	call   140001180 <__tmainCRTStartup>
   1400014e6:	90                   	nop

00000001400014e7 <.l_end>:
   1400014e7:	90                   	nop
   1400014e8:	48 83 c4 28          	add    rsp,0x28
   1400014ec:	c3                   	ret
   1400014ed:	0f 1f 00             	nop    DWORD PTR [rax]

00000001400014f0 <atexit>:
   1400014f0:	48 83 ec 28          	sub    rsp,0x28
   1400014f4:	e8 97 66 00 00       	call   140007b90 <_onexit>
   1400014f9:	48 83 f8 01          	cmp    rax,0x1
   1400014fd:	19 c0                	sbb    eax,eax
   1400014ff:	48 83 c4 28          	add    rsp,0x28
   140001503:	c3                   	ret
   140001504:	90                   	nop
   140001505:	90                   	nop
   140001506:	90                   	nop
   140001507:	90                   	nop
   140001508:	90                   	nop
   140001509:	90                   	nop
   14000150a:	90                   	nop
   14000150b:	90                   	nop
   14000150c:	90                   	nop
   14000150d:	90                   	nop
   14000150e:	90                   	nop
   14000150f:	90                   	nop

0000000140001510 <__gcc_register_frame>:
   140001510:	48 8d 0d 09 00 00 00 	lea    rcx,[rip+0x9]        # 140001520 <__gcc_deregister_frame>
   140001517:	e9 d4 ff ff ff       	jmp    1400014f0 <atexit>
   14000151c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000140001520 <__gcc_deregister_frame>:
   140001520:	c3                   	ret
   140001521:	90                   	nop
   140001522:	90                   	nop
   140001523:	90                   	nop
   140001524:	90                   	nop
   140001525:	90                   	nop
   140001526:	90                   	nop
   140001527:	90                   	nop
   140001528:	90                   	nop
   140001529:	90                   	nop
   14000152a:	90                   	nop
   14000152b:	90                   	nop
   14000152c:	90                   	nop
   14000152d:	90                   	nop
   14000152e:	90                   	nop
   14000152f:	90                   	nop

0000000140001530 <printf>:
   140001530:	55                   	push   rbp
   140001531:	53                   	push   rbx
   140001532:	48 83 ec 38          	sub    rsp,0x38
   140001536:	48 8d 6c 24 30       	lea    rbp,[rsp+0x30]
   14000153b:	48 89 4d 20          	mov    QWORD PTR [rbp+0x20],rcx
   14000153f:	48 89 55 28          	mov    QWORD PTR [rbp+0x28],rdx
   140001543:	4c 89 45 30          	mov    QWORD PTR [rbp+0x30],r8
   140001547:	4c 89 4d 38          	mov    QWORD PTR [rbp+0x38],r9
   14000154b:	48 8d 45 28          	lea    rax,[rbp+0x28]
   14000154f:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
   140001553:	48 8b 5d f0          	mov    rbx,QWORD PTR [rbp-0x10]
   140001557:	b9 01 00 00 00       	mov    ecx,0x1
   14000155c:	48 8b 05 7d 6b 00 00 	mov    rax,QWORD PTR [rip+0x6b7d]        # 1400080e0 <__imp___acrt_iob_func>
   140001563:	ff d0                	call   rax
   140001565:	48 89 c1             	mov    rcx,rax
   140001568:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
   14000156c:	49 89 d8             	mov    r8,rbx
   14000156f:	48 89 c2             	mov    rdx,rax
   140001572:	e8 e9 10 00 00       	call   140002660 <__mingw_vfprintf>
   140001577:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   14000157a:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   14000157d:	48 83 c4 38          	add    rsp,0x38
   140001581:	5b                   	pop    rbx
   140001582:	5d                   	pop    rbp
   140001583:	c3                   	ret

0000000140001584 <main>:
   140001584:	55                   	push   rbp
   140001585:	48 89 e5             	mov    rbp,rsp
   140001588:	48 83 ec 20          	sub    rsp,0x20
   14000158c:	89 4d 10             	mov    DWORD PTR [rbp+0x10],ecx
   14000158f:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
   140001593:	e8 d8 00 00 00       	call   140001670 <__main>
   140001598:	48 8d 05 61 7a 00 00 	lea    rax,[rip+0x7a61]        # 140009000 <.rdata>
   14000159f:	48 89 c1             	mov    rcx,rax
   1400015a2:	e8 89 ff ff ff       	call   140001530 <printf>
   1400015a7:	b8 00 00 00 00       	mov    eax,0x0
   1400015ac:	48 83 c4 20          	add    rsp,0x20
   1400015b0:	5d                   	pop    rbp
   1400015b1:	c3                   	ret
   1400015b2:	90                   	nop
   1400015b3:	90                   	nop
   1400015b4:	90                   	nop
   1400015b5:	90                   	nop
   1400015b6:	90                   	nop
   1400015b7:	90                   	nop
   1400015b8:	90                   	nop
   1400015b9:	90                   	nop
   1400015ba:	90                   	nop
   1400015bb:	90                   	nop
   1400015bc:	90                   	nop
   1400015bd:	90                   	nop
   1400015be:	90                   	nop
   1400015bf:	90                   	nop

00000001400015c0 <__do_global_dtors>:
   1400015c0:	48 83 ec 28          	sub    rsp,0x28
   1400015c4:	48 8b 05 45 6a 00 00 	mov    rax,QWORD PTR [rip+0x6a45]        # 140008010 <p.0>
   1400015cb:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400015ce:	48 85 c0             	test   rax,rax
   1400015d1:	74 22                	je     1400015f5 <__do_global_dtors+0x35>
   1400015d3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400015d8:	ff d0                	call   rax
   1400015da:	48 8b 05 2f 6a 00 00 	mov    rax,QWORD PTR [rip+0x6a2f]        # 140008010 <p.0>
   1400015e1:	48 8d 50 08          	lea    rdx,[rax+0x8]
   1400015e5:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
   1400015e9:	48 89 15 20 6a 00 00 	mov    QWORD PTR [rip+0x6a20],rdx        # 140008010 <p.0>
   1400015f0:	48 85 c0             	test   rax,rax
   1400015f3:	75 e3                	jne    1400015d8 <__do_global_dtors+0x18>
   1400015f5:	48 83 c4 28          	add    rsp,0x28
   1400015f9:	c3                   	ret
   1400015fa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000140001600 <__do_global_ctors>:
   140001600:	56                   	push   rsi
   140001601:	53                   	push   rbx
   140001602:	48 83 ec 28          	sub    rsp,0x28
   140001606:	48 8b 15 f3 80 00 00 	mov    rdx,QWORD PTR [rip+0x80f3]        # 140009700 <.refptr.__CTOR_LIST__>
   14000160d:	48 8b 02             	mov    rax,QWORD PTR [rdx]
   140001610:	89 c1                	mov    ecx,eax
   140001612:	83 f8 ff             	cmp    eax,0xffffffff
   140001615:	74 39                	je     140001650 <__do_global_ctors+0x50>
   140001617:	85 c9                	test   ecx,ecx
   140001619:	74 20                	je     14000163b <__do_global_ctors+0x3b>
   14000161b:	89 c8                	mov    eax,ecx
   14000161d:	83 e9 01             	sub    ecx,0x1
   140001620:	48 8d 1c c2          	lea    rbx,[rdx+rax*8]
   140001624:	48 29 c8             	sub    rax,rcx
   140001627:	48 8d 74 c2 f8       	lea    rsi,[rdx+rax*8-0x8]
   14000162c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001630:	ff 13                	call   QWORD PTR [rbx]
   140001632:	48 83 eb 08          	sub    rbx,0x8
   140001636:	48 39 f3             	cmp    rbx,rsi
   140001639:	75 f5                	jne    140001630 <__do_global_ctors+0x30>
   14000163b:	48 8d 0d 7e ff ff ff 	lea    rcx,[rip+0xffffffffffffff7e]        # 1400015c0 <__do_global_dtors>
   140001642:	48 83 c4 28          	add    rsp,0x28
   140001646:	5b                   	pop    rbx
   140001647:	5e                   	pop    rsi
   140001648:	e9 a3 fe ff ff       	jmp    1400014f0 <atexit>
   14000164d:	0f 1f 00             	nop    DWORD PTR [rax]
   140001650:	31 c0                	xor    eax,eax
   140001652:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140001658:	44 8d 40 01          	lea    r8d,[rax+0x1]
   14000165c:	89 c1                	mov    ecx,eax
   14000165e:	4a 83 3c c2 00       	cmp    QWORD PTR [rdx+r8*8],0x0
   140001663:	4c 89 c0             	mov    rax,r8
   140001666:	75 f0                	jne    140001658 <__do_global_ctors+0x58>
   140001668:	eb ad                	jmp    140001617 <__do_global_ctors+0x17>
   14000166a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000140001670 <__main>:
   140001670:	8b 05 ca b9 00 00    	mov    eax,DWORD PTR [rip+0xb9ca]        # 14000d040 <initialized>
   140001676:	85 c0                	test   eax,eax
   140001678:	74 06                	je     140001680 <__main+0x10>
   14000167a:	c3                   	ret
   14000167b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140001680:	c7 05 b6 b9 00 00 01 	mov    DWORD PTR [rip+0xb9b6],0x1        # 14000d040 <initialized>
   140001687:	00 00 00 
   14000168a:	e9 71 ff ff ff       	jmp    140001600 <__do_global_ctors>
   14000168f:	90                   	nop

0000000140001690 <_setargv>:
   140001690:	31 c0                	xor    eax,eax
   140001692:	c3                   	ret
   140001693:	90                   	nop
   140001694:	90                   	nop
   140001695:	90                   	nop
   140001696:	90                   	nop
   140001697:	90                   	nop
   140001698:	90                   	nop
   140001699:	90                   	nop
   14000169a:	90                   	nop
   14000169b:	90                   	nop
   14000169c:	90                   	nop
   14000169d:	90                   	nop
   14000169e:	90                   	nop
   14000169f:	90                   	nop

00000001400016a0 <__dyn_tls_dtor>:
   1400016a0:	48 83 ec 28          	sub    rsp,0x28
   1400016a4:	83 fa 03             	cmp    edx,0x3
   1400016a7:	74 17                	je     1400016c0 <__dyn_tls_dtor+0x20>
   1400016a9:	85 d2                	test   edx,edx
   1400016ab:	74 13                	je     1400016c0 <__dyn_tls_dtor+0x20>
   1400016ad:	b8 01 00 00 00       	mov    eax,0x1
   1400016b2:	48 83 c4 28          	add    rsp,0x28
   1400016b6:	c3                   	ret
   1400016b7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   1400016be:	00 00 
   1400016c0:	e8 5b 0a 00 00       	call   140002120 <__mingw_TLScallback>
   1400016c5:	b8 01 00 00 00       	mov    eax,0x1
   1400016ca:	48 83 c4 28          	add    rsp,0x28
   1400016ce:	c3                   	ret
   1400016cf:	90                   	nop

00000001400016d0 <__dyn_tls_init>:
   1400016d0:	56                   	push   rsi
   1400016d1:	53                   	push   rbx
   1400016d2:	48 83 ec 28          	sub    rsp,0x28
   1400016d6:	48 8b 05 03 80 00 00 	mov    rax,QWORD PTR [rip+0x8003]        # 1400096e0 <.refptr._CRT_MT>
   1400016dd:	83 38 02             	cmp    DWORD PTR [rax],0x2
   1400016e0:	74 06                	je     1400016e8 <__dyn_tls_init+0x18>
   1400016e2:	c7 00 02 00 00 00    	mov    DWORD PTR [rax],0x2
   1400016e8:	83 fa 02             	cmp    edx,0x2
   1400016eb:	74 13                	je     140001700 <__dyn_tls_init+0x30>
   1400016ed:	83 fa 01             	cmp    edx,0x1
   1400016f0:	74 4e                	je     140001740 <__dyn_tls_init+0x70>
   1400016f2:	b8 01 00 00 00       	mov    eax,0x1
   1400016f7:	48 83 c4 28          	add    rsp,0x28
   1400016fb:	5b                   	pop    rbx
   1400016fc:	5e                   	pop    rsi
   1400016fd:	c3                   	ret
   1400016fe:	66 90                	xchg   ax,ax
   140001700:	48 8d 1d 51 d9 00 00 	lea    rbx,[rip+0xd951]        # 14000f058 <__xd_z>
   140001707:	48 8d 35 4a d9 00 00 	lea    rsi,[rip+0xd94a]        # 14000f058 <__xd_z>
   14000170e:	48 39 de             	cmp    rsi,rbx
   140001711:	74 df                	je     1400016f2 <__dyn_tls_init+0x22>
   140001713:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140001718:	48 8b 03             	mov    rax,QWORD PTR [rbx]
   14000171b:	48 85 c0             	test   rax,rax
   14000171e:	74 02                	je     140001722 <__dyn_tls_init+0x52>
   140001720:	ff d0                	call   rax
   140001722:	48 83 c3 08          	add    rbx,0x8
   140001726:	48 39 de             	cmp    rsi,rbx
   140001729:	75 ed                	jne    140001718 <__dyn_tls_init+0x48>
   14000172b:	b8 01 00 00 00       	mov    eax,0x1
   140001730:	48 83 c4 28          	add    rsp,0x28
   140001734:	5b                   	pop    rbx
   140001735:	5e                   	pop    rsi
   140001736:	c3                   	ret
   140001737:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000173e:	00 00 
   140001740:	e8 db 09 00 00       	call   140002120 <__mingw_TLScallback>
   140001745:	b8 01 00 00 00       	mov    eax,0x1
   14000174a:	48 83 c4 28          	add    rsp,0x28
   14000174e:	5b                   	pop    rbx
   14000174f:	5e                   	pop    rsi
   140001750:	c3                   	ret
   140001751:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140001758:	00 00 00 00 
   14000175c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000140001760 <__tlregdtor>:
   140001760:	31 c0                	xor    eax,eax
   140001762:	c3                   	ret
   140001763:	90                   	nop
   140001764:	90                   	nop
   140001765:	90                   	nop
   140001766:	90                   	nop
   140001767:	90                   	nop
   140001768:	90                   	nop
   140001769:	90                   	nop
   14000176a:	90                   	nop
   14000176b:	90                   	nop
   14000176c:	90                   	nop
   14000176d:	90                   	nop
   14000176e:	90                   	nop
   14000176f:	90                   	nop

0000000140001770 <_matherr>:
   140001770:	56                   	push   rsi
   140001771:	53                   	push   rbx
   140001772:	48 83 ec 78          	sub    rsp,0x78
   140001776:	0f 11 74 24 40       	movups XMMWORD PTR [rsp+0x40],xmm6
   14000177b:	0f 11 7c 24 50       	movups XMMWORD PTR [rsp+0x50],xmm7
   140001780:	44 0f 11 44 24 60    	movups XMMWORD PTR [rsp+0x60],xmm8
   140001786:	83 39 06             	cmp    DWORD PTR [rcx],0x6
   140001789:	0f 87 cd 00 00 00    	ja     14000185c <_matherr+0xec>
   14000178f:	8b 01                	mov    eax,DWORD PTR [rcx]
   140001791:	48 8d 15 0c 7a 00 00 	lea    rdx,[rip+0x7a0c]        # 1400091a4 <.rdata+0x124>
   140001798:	48 63 04 82          	movsxd rax,DWORD PTR [rdx+rax*4]
   14000179c:	48 01 d0             	add    rax,rdx
   14000179f:	ff e0                	jmp    rax
   1400017a1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400017a8:	48 8d 1d f0 78 00 00 	lea    rbx,[rip+0x78f0]        # 14000909f <.rdata+0x1f>
   1400017af:	f2 44 0f 10 41 20    	movsd  xmm8,QWORD PTR [rcx+0x20]
   1400017b5:	f2 0f 10 79 18       	movsd  xmm7,QWORD PTR [rcx+0x18]
   1400017ba:	f2 0f 10 71 10       	movsd  xmm6,QWORD PTR [rcx+0x10]
   1400017bf:	48 8b 71 08          	mov    rsi,QWORD PTR [rcx+0x8]
   1400017c3:	b9 02 00 00 00       	mov    ecx,0x2
   1400017c8:	e8 33 5e 00 00       	call   140007600 <__acrt_iob_func>
   1400017cd:	f2 44 0f 11 44 24 30 	movsd  QWORD PTR [rsp+0x30],xmm8
   1400017d4:	49 89 d8             	mov    r8,rbx
   1400017d7:	48 8d 15 9a 79 00 00 	lea    rdx,[rip+0x799a]        # 140009178 <.rdata+0xf8>
   1400017de:	f2 0f 11 7c 24 28    	movsd  QWORD PTR [rsp+0x28],xmm7
   1400017e4:	48 89 c1             	mov    rcx,rax
   1400017e7:	49 89 f1             	mov    r9,rsi
   1400017ea:	f2 0f 11 74 24 20    	movsd  QWORD PTR [rsp+0x20],xmm6
   1400017f0:	e8 c3 63 00 00       	call   140007bb8 <fprintf>
   1400017f5:	90                   	nop
   1400017f6:	0f 10 74 24 40       	movups xmm6,XMMWORD PTR [rsp+0x40]
   1400017fb:	0f 10 7c 24 50       	movups xmm7,XMMWORD PTR [rsp+0x50]
   140001800:	31 c0                	xor    eax,eax
   140001802:	44 0f 10 44 24 60    	movups xmm8,XMMWORD PTR [rsp+0x60]
   140001808:	48 83 c4 78          	add    rsp,0x78
   14000180c:	5b                   	pop    rbx
   14000180d:	5e                   	pop    rsi
   14000180e:	c3                   	ret
   14000180f:	90                   	nop
   140001810:	48 8d 1d 69 78 00 00 	lea    rbx,[rip+0x7869]        # 140009080 <.rdata>
   140001817:	eb 96                	jmp    1400017af <_matherr+0x3f>
   140001819:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140001820:	48 8d 1d b9 78 00 00 	lea    rbx,[rip+0x78b9]        # 1400090e0 <.rdata+0x60>
   140001827:	eb 86                	jmp    1400017af <_matherr+0x3f>
   140001829:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140001830:	48 8d 1d 89 78 00 00 	lea    rbx,[rip+0x7889]        # 1400090c0 <.rdata+0x40>
   140001837:	e9 73 ff ff ff       	jmp    1400017af <_matherr+0x3f>
   14000183c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001840:	48 8d 1d e9 78 00 00 	lea    rbx,[rip+0x78e9]        # 140009130 <.rdata+0xb0>
   140001847:	e9 63 ff ff ff       	jmp    1400017af <_matherr+0x3f>
   14000184c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001850:	48 8d 1d b1 78 00 00 	lea    rbx,[rip+0x78b1]        # 140009108 <.rdata+0x88>
   140001857:	e9 53 ff ff ff       	jmp    1400017af <_matherr+0x3f>
   14000185c:	48 8d 1d 03 79 00 00 	lea    rbx,[rip+0x7903]        # 140009166 <.rdata+0xe6>
   140001863:	e9 47 ff ff ff       	jmp    1400017af <_matherr+0x3f>
   140001868:	90                   	nop
   140001869:	90                   	nop
   14000186a:	90                   	nop
   14000186b:	90                   	nop
   14000186c:	90                   	nop
   14000186d:	90                   	nop
   14000186e:	90                   	nop
   14000186f:	90                   	nop

0000000140001870 <_fpreset>:
   140001870:	db e3                	fninit
   140001872:	c3                   	ret
   140001873:	90                   	nop
   140001874:	90                   	nop
   140001875:	90                   	nop
   140001876:	90                   	nop
   140001877:	90                   	nop
   140001878:	90                   	nop
   140001879:	90                   	nop
   14000187a:	90                   	nop
   14000187b:	90                   	nop
   14000187c:	90                   	nop
   14000187d:	90                   	nop
   14000187e:	90                   	nop
   14000187f:	90                   	nop

0000000140001880 <__report_error>:
   140001880:	56                   	push   rsi
   140001881:	53                   	push   rbx
   140001882:	48 83 ec 38          	sub    rsp,0x38
   140001886:	48 89 cb             	mov    rbx,rcx
   140001889:	48 8d 44 24 58       	lea    rax,[rsp+0x58]
   14000188e:	b9 02 00 00 00       	mov    ecx,0x2
   140001893:	48 89 54 24 58       	mov    QWORD PTR [rsp+0x58],rdx
   140001898:	4c 89 44 24 60       	mov    QWORD PTR [rsp+0x60],r8
   14000189d:	4c 89 4c 24 68       	mov    QWORD PTR [rsp+0x68],r9
   1400018a2:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
   1400018a7:	e8 54 5d 00 00       	call   140007600 <__acrt_iob_func>
   1400018ac:	41 b8 1b 00 00 00    	mov    r8d,0x1b
   1400018b2:	ba 01 00 00 00       	mov    edx,0x1
   1400018b7:	48 8d 0d 02 79 00 00 	lea    rcx,[rip+0x7902]        # 1400091c0 <.rdata>
   1400018be:	49 89 c1             	mov    r9,rax
   1400018c1:	e8 0a 63 00 00       	call   140007bd0 <fwrite>
   1400018c6:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
   1400018cb:	b9 02 00 00 00       	mov    ecx,0x2
   1400018d0:	e8 2b 5d 00 00       	call   140007600 <__acrt_iob_func>
   1400018d5:	48 89 da             	mov    rdx,rbx
   1400018d8:	48 89 c1             	mov    rcx,rax
   1400018db:	49 89 f0             	mov    r8,rsi
   1400018de:	e8 35 63 00 00       	call   140007c18 <vfprintf>
   1400018e3:	e8 b8 62 00 00       	call   140007ba0 <abort>
   1400018e8:	90                   	nop
   1400018e9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000001400018f0 <mark_section_writable>:
   1400018f0:	57                   	push   rdi
   1400018f1:	56                   	push   rsi
   1400018f2:	53                   	push   rbx
   1400018f3:	48 83 ec 50          	sub    rsp,0x50
   1400018f7:	48 63 35 a6 b7 00 00 	movsxd rsi,DWORD PTR [rip+0xb7a6]        # 14000d0a4 <maxSections>
   1400018fe:	48 89 cb             	mov    rbx,rcx
   140001901:	85 f6                	test   esi,esi
   140001903:	0f 8e 17 01 00 00    	jle    140001a20 <mark_section_writable+0x130>
   140001909:	48 8b 05 98 b7 00 00 	mov    rax,QWORD PTR [rip+0xb798]        # 14000d0a8 <the_secs>
   140001910:	45 31 c9             	xor    r9d,r9d
   140001913:	48 83 c0 18          	add    rax,0x18
   140001917:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000191e:	00 00 
   140001920:	4c 8b 00             	mov    r8,QWORD PTR [rax]
   140001923:	4c 39 c3             	cmp    rbx,r8
   140001926:	72 13                	jb     14000193b <mark_section_writable+0x4b>
   140001928:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
   14000192c:	8b 52 08             	mov    edx,DWORD PTR [rdx+0x8]
   14000192f:	49 01 d0             	add    r8,rdx
   140001932:	4c 39 c3             	cmp    rbx,r8
   140001935:	0f 82 8a 00 00 00    	jb     1400019c5 <mark_section_writable+0xd5>
   14000193b:	41 83 c1 01          	add    r9d,0x1
   14000193f:	48 83 c0 28          	add    rax,0x28
   140001943:	41 39 f1             	cmp    r9d,esi
   140001946:	75 d8                	jne    140001920 <mark_section_writable+0x30>
   140001948:	48 89 d9             	mov    rcx,rbx
   14000194b:	e8 f0 09 00 00       	call   140002340 <__mingw_GetSectionForAddress>
   140001950:	48 89 c7             	mov    rdi,rax
   140001953:	48 85 c0             	test   rax,rax
   140001956:	0f 84 e6 00 00 00    	je     140001a42 <mark_section_writable+0x152>
   14000195c:	48 8b 05 45 b7 00 00 	mov    rax,QWORD PTR [rip+0xb745]        # 14000d0a8 <the_secs>
   140001963:	48 8d 1c b6          	lea    rbx,[rsi+rsi*4]
   140001967:	48 c1 e3 03          	shl    rbx,0x3
   14000196b:	48 01 d8             	add    rax,rbx
   14000196e:	48 89 78 20          	mov    QWORD PTR [rax+0x20],rdi
   140001972:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
   140001978:	e8 03 0b 00 00       	call   140002480 <_GetPEImageBase>
   14000197d:	8b 57 0c             	mov    edx,DWORD PTR [rdi+0xc]
   140001980:	41 b8 30 00 00 00    	mov    r8d,0x30
   140001986:	48 8d 0c 10          	lea    rcx,[rax+rdx*1]
   14000198a:	48 8b 05 17 b7 00 00 	mov    rax,QWORD PTR [rip+0xb717]        # 14000d0a8 <the_secs>
   140001991:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
   140001996:	48 89 4c 18 18       	mov    QWORD PTR [rax+rbx*1+0x18],rcx
   14000199b:	ff 15 93 c8 00 00    	call   QWORD PTR [rip+0xc893]        # 14000e234 <__imp_VirtualQuery>
   1400019a1:	48 85 c0             	test   rax,rax
   1400019a4:	0f 84 7d 00 00 00    	je     140001a27 <mark_section_writable+0x137>
   1400019aa:	8b 44 24 44          	mov    eax,DWORD PTR [rsp+0x44]
   1400019ae:	8d 50 c0             	lea    edx,[rax-0x40]
   1400019b1:	83 e2 bf             	and    edx,0xffffffbf
   1400019b4:	74 08                	je     1400019be <mark_section_writable+0xce>
   1400019b6:	8d 50 fc             	lea    edx,[rax-0x4]
   1400019b9:	83 e2 fb             	and    edx,0xfffffffb
   1400019bc:	75 12                	jne    1400019d0 <mark_section_writable+0xe0>
   1400019be:	83 05 df b6 00 00 01 	add    DWORD PTR [rip+0xb6df],0x1        # 14000d0a4 <maxSections>
   1400019c5:	48 83 c4 50          	add    rsp,0x50
   1400019c9:	5b                   	pop    rbx
   1400019ca:	5e                   	pop    rsi
   1400019cb:	5f                   	pop    rdi
   1400019cc:	c3                   	ret
   1400019cd:	0f 1f 00             	nop    DWORD PTR [rax]
   1400019d0:	83 f8 02             	cmp    eax,0x2
   1400019d3:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
   1400019d8:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
   1400019dd:	41 b8 40 00 00 00    	mov    r8d,0x40
   1400019e3:	b8 04 00 00 00       	mov    eax,0x4
   1400019e8:	44 0f 44 c0          	cmove  r8d,eax
   1400019ec:	48 03 1d b5 b6 00 00 	add    rbx,QWORD PTR [rip+0xb6b5]        # 14000d0a8 <the_secs>
   1400019f3:	48 89 4b 08          	mov    QWORD PTR [rbx+0x8],rcx
   1400019f7:	49 89 d9             	mov    r9,rbx
   1400019fa:	48 89 53 10          	mov    QWORD PTR [rbx+0x10],rdx
   1400019fe:	ff 15 28 c8 00 00    	call   QWORD PTR [rip+0xc828]        # 14000e22c <__imp_VirtualProtect>
   140001a04:	85 c0                	test   eax,eax
   140001a06:	75 b6                	jne    1400019be <mark_section_writable+0xce>
   140001a08:	ff 15 d6 c7 00 00    	call   QWORD PTR [rip+0xc7d6]        # 14000e1e4 <__imp_GetLastError>
   140001a0e:	48 8d 0d 23 78 00 00 	lea    rcx,[rip+0x7823]        # 140009238 <.rdata+0x78>
   140001a15:	89 c2                	mov    edx,eax
   140001a17:	e8 64 fe ff ff       	call   140001880 <__report_error>
   140001a1c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001a20:	31 f6                	xor    esi,esi
   140001a22:	e9 21 ff ff ff       	jmp    140001948 <mark_section_writable+0x58>
   140001a27:	48 8b 05 7a b6 00 00 	mov    rax,QWORD PTR [rip+0xb67a]        # 14000d0a8 <the_secs>
   140001a2e:	8b 57 08             	mov    edx,DWORD PTR [rdi+0x8]
   140001a31:	48 8d 0d c8 77 00 00 	lea    rcx,[rip+0x77c8]        # 140009200 <.rdata+0x40>
   140001a38:	4c 8b 44 18 18       	mov    r8,QWORD PTR [rax+rbx*1+0x18]
   140001a3d:	e8 3e fe ff ff       	call   140001880 <__report_error>
   140001a42:	48 89 da             	mov    rdx,rbx
   140001a45:	48 8d 0d 94 77 00 00 	lea    rcx,[rip+0x7794]        # 1400091e0 <.rdata+0x20>
   140001a4c:	e8 2f fe ff ff       	call   140001880 <__report_error>
   140001a51:	90                   	nop
   140001a52:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140001a59:	00 00 00 00 
   140001a5d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000140001a60 <_pei386_runtime_relocator>:
   140001a60:	55                   	push   rbp
   140001a61:	41 57                	push   r15
   140001a63:	41 56                	push   r14
   140001a65:	41 55                	push   r13
   140001a67:	41 54                	push   r12
   140001a69:	57                   	push   rdi
   140001a6a:	56                   	push   rsi
   140001a6b:	53                   	push   rbx
   140001a6c:	48 83 ec 48          	sub    rsp,0x48
   140001a70:	48 8d 6c 24 40       	lea    rbp,[rsp+0x40]
   140001a75:	44 8b 25 24 b6 00 00 	mov    r12d,DWORD PTR [rip+0xb624]        # 14000d0a0 <was_init.0>
   140001a7c:	45 85 e4             	test   r12d,r12d
   140001a7f:	74 17                	je     140001a98 <_pei386_runtime_relocator+0x38>
   140001a81:	48 8d 65 08          	lea    rsp,[rbp+0x8]
   140001a85:	5b                   	pop    rbx
   140001a86:	5e                   	pop    rsi
   140001a87:	5f                   	pop    rdi
   140001a88:	41 5c                	pop    r12
   140001a8a:	41 5d                	pop    r13
   140001a8c:	41 5e                	pop    r14
   140001a8e:	41 5f                	pop    r15
   140001a90:	5d                   	pop    rbp
   140001a91:	c3                   	ret
   140001a92:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140001a98:	c7 05 fe b5 00 00 01 	mov    DWORD PTR [rip+0xb5fe],0x1        # 14000d0a0 <was_init.0>
   140001a9f:	00 00 00 
   140001aa2:	e8 19 09 00 00       	call   1400023c0 <__mingw_GetSectionCount>
   140001aa7:	48 98                	cdqe
   140001aa9:	48 8d 04 80          	lea    rax,[rax+rax*4]
   140001aad:	48 8d 04 c5 0f 00 00 	lea    rax,[rax*8+0xf]
   140001ab4:	00 
   140001ab5:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   140001ab9:	e8 62 0b 00 00       	call   140002620 <___chkstk_ms>
   140001abe:	4c 8b 2d 4b 7c 00 00 	mov    r13,QWORD PTR [rip+0x7c4b]        # 140009710 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   140001ac5:	48 8b 1d 54 7c 00 00 	mov    rbx,QWORD PTR [rip+0x7c54]        # 140009720 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140001acc:	c7 05 ce b5 00 00 00 	mov    DWORD PTR [rip+0xb5ce],0x0        # 14000d0a4 <maxSections>
   140001ad3:	00 00 00 
   140001ad6:	48 29 c4             	sub    rsp,rax
   140001ad9:	48 8d 44 24 30       	lea    rax,[rsp+0x30]
   140001ade:	48 89 05 c3 b5 00 00 	mov    QWORD PTR [rip+0xb5c3],rax        # 14000d0a8 <the_secs>
   140001ae5:	4c 89 e8             	mov    rax,r13
   140001ae8:	48 29 d8             	sub    rax,rbx
   140001aeb:	48 83 f8 07          	cmp    rax,0x7
   140001aef:	7e 90                	jle    140001a81 <_pei386_runtime_relocator+0x21>
   140001af1:	8b 13                	mov    edx,DWORD PTR [rbx]
   140001af3:	48 83 f8 0b          	cmp    rax,0xb
   140001af7:	0f 8f 7b 01 00 00    	jg     140001c78 <_pei386_runtime_relocator+0x218>
   140001afd:	8b 03                	mov    eax,DWORD PTR [rbx]
   140001aff:	85 c0                	test   eax,eax
   140001b01:	0f 85 69 02 00 00    	jne    140001d70 <_pei386_runtime_relocator+0x310>
   140001b07:	8b 43 04             	mov    eax,DWORD PTR [rbx+0x4]
   140001b0a:	85 c0                	test   eax,eax
   140001b0c:	0f 85 5e 02 00 00    	jne    140001d70 <_pei386_runtime_relocator+0x310>
   140001b12:	8b 53 08             	mov    edx,DWORD PTR [rbx+0x8]
   140001b15:	83 fa 01             	cmp    edx,0x1
   140001b18:	0f 85 90 02 00 00    	jne    140001dae <_pei386_runtime_relocator+0x34e>
   140001b1e:	48 83 c3 0c          	add    rbx,0xc
   140001b22:	4c 39 eb             	cmp    rbx,r13
   140001b25:	0f 83 56 ff ff ff    	jae    140001a81 <_pei386_runtime_relocator+0x21>
   140001b2b:	4c 8b 35 0e 7c 00 00 	mov    r14,QWORD PTR [rip+0x7c0e]        # 140009740 <.refptr.__image_base__>
   140001b32:	49 bf ff ff ff 7f ff 	movabs r15,0xffffffff7fffffff
   140001b39:	ff ff ff 
   140001b3c:	eb 54                	jmp    140001b92 <_pei386_runtime_relocator+0x132>
   140001b3e:	66 90                	xchg   ax,ax
   140001b40:	0f b6 37             	movzx  esi,BYTE PTR [rdi]
   140001b43:	81 e1 c0 00 00 00    	and    ecx,0xc0
   140001b49:	40 84 f6             	test   sil,sil
   140001b4c:	0f 89 06 02 00 00    	jns    140001d58 <_pei386_runtime_relocator+0x2f8>
   140001b52:	48 81 ce 00 ff ff ff 	or     rsi,0xffffffffffffff00
   140001b59:	48 29 c6             	sub    rsi,rax
   140001b5c:	4c 01 ce             	add    rsi,r9
   140001b5f:	85 c9                	test   ecx,ecx
   140001b61:	75 17                	jne    140001b7a <_pei386_runtime_relocator+0x11a>
   140001b63:	48 81 fe ff 00 00 00 	cmp    rsi,0xff
   140001b6a:	0f 8f 4f 01 00 00    	jg     140001cbf <_pei386_runtime_relocator+0x25f>
   140001b70:	48 83 fe 80          	cmp    rsi,0xffffffffffffff80
   140001b74:	0f 8c 45 01 00 00    	jl     140001cbf <_pei386_runtime_relocator+0x25f>
   140001b7a:	48 89 f9             	mov    rcx,rdi
   140001b7d:	e8 6e fd ff ff       	call   1400018f0 <mark_section_writable>
   140001b82:	40 88 37             	mov    BYTE PTR [rdi],sil
   140001b85:	48 83 c3 0c          	add    rbx,0xc
   140001b89:	4c 39 eb             	cmp    rbx,r13
   140001b8c:	0f 83 8e 00 00 00    	jae    140001c20 <_pei386_runtime_relocator+0x1c0>
   140001b92:	8b 03                	mov    eax,DWORD PTR [rbx]
   140001b94:	8b 4b 08             	mov    ecx,DWORD PTR [rbx+0x8]
   140001b97:	8b 7b 04             	mov    edi,DWORD PTR [rbx+0x4]
   140001b9a:	4c 01 f0             	add    rax,r14
   140001b9d:	0f b6 d1             	movzx  edx,cl
   140001ba0:	4c 8b 08             	mov    r9,QWORD PTR [rax]
   140001ba3:	4c 01 f7             	add    rdi,r14
   140001ba6:	83 fa 20             	cmp    edx,0x20
   140001ba9:	0f 84 29 01 00 00    	je     140001cd8 <_pei386_runtime_relocator+0x278>
   140001baf:	0f 87 eb 00 00 00    	ja     140001ca0 <_pei386_runtime_relocator+0x240>
   140001bb5:	83 fa 08             	cmp    edx,0x8
   140001bb8:	74 86                	je     140001b40 <_pei386_runtime_relocator+0xe0>
   140001bba:	83 fa 10             	cmp    edx,0x10
   140001bbd:	0f 85 df 01 00 00    	jne    140001da2 <_pei386_runtime_relocator+0x342>
   140001bc3:	0f b7 37             	movzx  esi,WORD PTR [rdi]
   140001bc6:	81 e1 c0 00 00 00    	and    ecx,0xc0
   140001bcc:	66 85 f6             	test   si,si
   140001bcf:	0f 89 6b 01 00 00    	jns    140001d40 <_pei386_runtime_relocator+0x2e0>
   140001bd5:	48 81 ce 00 00 ff ff 	or     rsi,0xffffffffffff0000
   140001bdc:	48 29 c6             	sub    rsi,rax
   140001bdf:	4c 01 ce             	add    rsi,r9
   140001be2:	85 c9                	test   ecx,ecx
   140001be4:	75 1a                	jne    140001c00 <_pei386_runtime_relocator+0x1a0>
   140001be6:	48 81 fe 00 80 ff ff 	cmp    rsi,0xffffffffffff8000
   140001bed:	0f 8c cc 00 00 00    	jl     140001cbf <_pei386_runtime_relocator+0x25f>
   140001bf3:	48 81 fe ff ff 00 00 	cmp    rsi,0xffff
   140001bfa:	0f 8f bf 00 00 00    	jg     140001cbf <_pei386_runtime_relocator+0x25f>
   140001c00:	48 89 f9             	mov    rcx,rdi
   140001c03:	48 83 c3 0c          	add    rbx,0xc
   140001c07:	e8 e4 fc ff ff       	call   1400018f0 <mark_section_writable>
   140001c0c:	66 89 37             	mov    WORD PTR [rdi],si
   140001c0f:	4c 39 eb             	cmp    rbx,r13
   140001c12:	0f 82 7a ff ff ff    	jb     140001b92 <_pei386_runtime_relocator+0x132>
   140001c18:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140001c1f:	00 
   140001c20:	8b 15 7e b4 00 00    	mov    edx,DWORD PTR [rip+0xb47e]        # 14000d0a4 <maxSections>
   140001c26:	85 d2                	test   edx,edx
   140001c28:	0f 8e 53 fe ff ff    	jle    140001a81 <_pei386_runtime_relocator+0x21>
   140001c2e:	48 8b 35 f7 c5 00 00 	mov    rsi,QWORD PTR [rip+0xc5f7]        # 14000e22c <__imp_VirtualProtect>
   140001c35:	31 db                	xor    ebx,ebx
   140001c37:	48 8d 7d fc          	lea    rdi,[rbp-0x4]
   140001c3b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140001c40:	48 8b 05 61 b4 00 00 	mov    rax,QWORD PTR [rip+0xb461]        # 14000d0a8 <the_secs>
   140001c47:	48 01 d8             	add    rax,rbx
   140001c4a:	44 8b 00             	mov    r8d,DWORD PTR [rax]
   140001c4d:	45 85 c0             	test   r8d,r8d
   140001c50:	74 0d                	je     140001c5f <_pei386_runtime_relocator+0x1ff>
   140001c52:	48 8b 50 10          	mov    rdx,QWORD PTR [rax+0x10]
   140001c56:	48 8b 48 08          	mov    rcx,QWORD PTR [rax+0x8]
   140001c5a:	49 89 f9             	mov    r9,rdi
   140001c5d:	ff d6                	call   rsi
   140001c5f:	41 83 c4 01          	add    r12d,0x1
   140001c63:	48 83 c3 28          	add    rbx,0x28
   140001c67:	44 3b 25 36 b4 00 00 	cmp    r12d,DWORD PTR [rip+0xb436]        # 14000d0a4 <maxSections>
   140001c6e:	7c d0                	jl     140001c40 <_pei386_runtime_relocator+0x1e0>
   140001c70:	e9 0c fe ff ff       	jmp    140001a81 <_pei386_runtime_relocator+0x21>
   140001c75:	0f 1f 00             	nop    DWORD PTR [rax]
   140001c78:	85 d2                	test   edx,edx
   140001c7a:	0f 85 f0 00 00 00    	jne    140001d70 <_pei386_runtime_relocator+0x310>
   140001c80:	8b 43 04             	mov    eax,DWORD PTR [rbx+0x4]
   140001c83:	89 c2                	mov    edx,eax
   140001c85:	0b 53 08             	or     edx,DWORD PTR [rbx+0x8]
   140001c88:	0f 85 7c fe ff ff    	jne    140001b0a <_pei386_runtime_relocator+0xaa>
   140001c8e:	48 83 c3 0c          	add    rbx,0xc
   140001c92:	e9 66 fe ff ff       	jmp    140001afd <_pei386_runtime_relocator+0x9d>
   140001c97:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140001c9e:	00 00 
   140001ca0:	83 fa 40             	cmp    edx,0x40
   140001ca3:	0f 85 f9 00 00 00    	jne    140001da2 <_pei386_runtime_relocator+0x342>
   140001ca9:	48 8b 37             	mov    rsi,QWORD PTR [rdi]
   140001cac:	48 29 c6             	sub    rsi,rax
   140001caf:	4c 01 ce             	add    rsi,r9
   140001cb2:	81 e1 c0 00 00 00    	and    ecx,0xc0
   140001cb8:	75 66                	jne    140001d20 <_pei386_runtime_relocator+0x2c0>
   140001cba:	48 85 f6             	test   rsi,rsi
   140001cbd:	78 61                	js     140001d20 <_pei386_runtime_relocator+0x2c0>
   140001cbf:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
   140001cc4:	49 89 f8             	mov    r8,rdi
   140001cc7:	48 8d 0d fa 75 00 00 	lea    rcx,[rip+0x75fa]        # 1400092c8 <.rdata+0x108>
   140001cce:	e8 ad fb ff ff       	call   140001880 <__report_error>
   140001cd3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140001cd8:	8b 37                	mov    esi,DWORD PTR [rdi]
   140001cda:	81 e1 c0 00 00 00    	and    ecx,0xc0
   140001ce0:	85 f6                	test   esi,esi
   140001ce2:	79 4c                	jns    140001d30 <_pei386_runtime_relocator+0x2d0>
   140001ce4:	49 bb 00 00 00 00 ff 	movabs r11,0xffffffff00000000
   140001ceb:	ff ff ff 
   140001cee:	4c 09 de             	or     rsi,r11
   140001cf1:	48 29 c6             	sub    rsi,rax
   140001cf4:	4c 01 ce             	add    rsi,r9
   140001cf7:	85 c9                	test   ecx,ecx
   140001cf9:	75 0f                	jne    140001d0a <_pei386_runtime_relocator+0x2aa>
   140001cfb:	4c 39 fe             	cmp    rsi,r15
   140001cfe:	7e bf                	jle    140001cbf <_pei386_runtime_relocator+0x25f>
   140001d00:	b8 ff ff ff ff       	mov    eax,0xffffffff
   140001d05:	48 39 c6             	cmp    rsi,rax
   140001d08:	7f b5                	jg     140001cbf <_pei386_runtime_relocator+0x25f>
   140001d0a:	48 89 f9             	mov    rcx,rdi
   140001d0d:	e8 de fb ff ff       	call   1400018f0 <mark_section_writable>
   140001d12:	89 37                	mov    DWORD PTR [rdi],esi
   140001d14:	e9 6c fe ff ff       	jmp    140001b85 <_pei386_runtime_relocator+0x125>
   140001d19:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140001d20:	48 89 f9             	mov    rcx,rdi
   140001d23:	e8 c8 fb ff ff       	call   1400018f0 <mark_section_writable>
   140001d28:	48 89 37             	mov    QWORD PTR [rdi],rsi
   140001d2b:	e9 55 fe ff ff       	jmp    140001b85 <_pei386_runtime_relocator+0x125>
   140001d30:	48 29 c6             	sub    rsi,rax
   140001d33:	4c 01 ce             	add    rsi,r9
   140001d36:	85 c9                	test   ecx,ecx
   140001d38:	74 c1                	je     140001cfb <_pei386_runtime_relocator+0x29b>
   140001d3a:	eb ce                	jmp    140001d0a <_pei386_runtime_relocator+0x2aa>
   140001d3c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001d40:	48 29 c6             	sub    rsi,rax
   140001d43:	4c 01 ce             	add    rsi,r9
   140001d46:	85 c9                	test   ecx,ecx
   140001d48:	0f 84 98 fe ff ff    	je     140001be6 <_pei386_runtime_relocator+0x186>
   140001d4e:	e9 ad fe ff ff       	jmp    140001c00 <_pei386_runtime_relocator+0x1a0>
   140001d53:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140001d58:	48 29 c6             	sub    rsi,rax
   140001d5b:	4c 01 ce             	add    rsi,r9
   140001d5e:	85 c9                	test   ecx,ecx
   140001d60:	0f 84 fd fd ff ff    	je     140001b63 <_pei386_runtime_relocator+0x103>
   140001d66:	e9 0f fe ff ff       	jmp    140001b7a <_pei386_runtime_relocator+0x11a>
   140001d6b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140001d70:	4c 39 eb             	cmp    rbx,r13
   140001d73:	0f 83 08 fd ff ff    	jae    140001a81 <_pei386_runtime_relocator+0x21>
   140001d79:	4c 8b 35 c0 79 00 00 	mov    r14,QWORD PTR [rip+0x79c0]        # 140009740 <.refptr.__image_base__>
   140001d80:	8b 73 04             	mov    esi,DWORD PTR [rbx+0x4]
   140001d83:	8b 3b                	mov    edi,DWORD PTR [rbx]
   140001d85:	48 83 c3 08          	add    rbx,0x8
   140001d89:	4c 01 f6             	add    rsi,r14
   140001d8c:	03 3e                	add    edi,DWORD PTR [rsi]
   140001d8e:	48 89 f1             	mov    rcx,rsi
   140001d91:	e8 5a fb ff ff       	call   1400018f0 <mark_section_writable>
   140001d96:	89 3e                	mov    DWORD PTR [rsi],edi
   140001d98:	4c 39 eb             	cmp    rbx,r13
   140001d9b:	72 e3                	jb     140001d80 <_pei386_runtime_relocator+0x320>
   140001d9d:	e9 7e fe ff ff       	jmp    140001c20 <_pei386_runtime_relocator+0x1c0>
   140001da2:	48 8d 0d ef 74 00 00 	lea    rcx,[rip+0x74ef]        # 140009298 <.rdata+0xd8>
   140001da9:	e8 d2 fa ff ff       	call   140001880 <__report_error>
   140001dae:	48 8d 0d ab 74 00 00 	lea    rcx,[rip+0x74ab]        # 140009260 <.rdata+0xa0>
   140001db5:	e8 c6 fa ff ff       	call   140001880 <__report_error>
   140001dba:	90                   	nop
   140001dbb:	90                   	nop
   140001dbc:	90                   	nop
   140001dbd:	90                   	nop
   140001dbe:	90                   	nop
   140001dbf:	90                   	nop

0000000140001dc0 <__mingw_raise_matherr>:
   140001dc0:	48 83 ec 58          	sub    rsp,0x58
   140001dc4:	48 8b 05 e5 b2 00 00 	mov    rax,QWORD PTR [rip+0xb2e5]        # 14000d0b0 <stUserMathErr>
   140001dcb:	66 0f 14 d3          	unpcklpd xmm2,xmm3
   140001dcf:	48 85 c0             	test   rax,rax
   140001dd2:	74 25                	je     140001df9 <__mingw_raise_matherr+0x39>
   140001dd4:	f2 0f 10 84 24 80 00 	movsd  xmm0,QWORD PTR [rsp+0x80]
   140001ddb:	00 00 
   140001ddd:	89 4c 24 20          	mov    DWORD PTR [rsp+0x20],ecx
   140001de1:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
   140001de6:	48 89 54 24 28       	mov    QWORD PTR [rsp+0x28],rdx
   140001deb:	0f 11 54 24 30       	movups XMMWORD PTR [rsp+0x30],xmm2
   140001df0:	f2 0f 11 44 24 40    	movsd  QWORD PTR [rsp+0x40],xmm0
   140001df6:	ff d0                	call   rax
   140001df8:	90                   	nop
   140001df9:	48 83 c4 58          	add    rsp,0x58
   140001dfd:	c3                   	ret
   140001dfe:	66 90                	xchg   ax,ax

0000000140001e00 <__mingw_setusermatherr>:
   140001e00:	48 89 0d a9 b2 00 00 	mov    QWORD PTR [rip+0xb2a9],rcx        # 14000d0b0 <stUserMathErr>
   140001e07:	e9 54 5d 00 00       	jmp    140007b60 <__setusermatherr>
   140001e0c:	90                   	nop
   140001e0d:	90                   	nop
   140001e0e:	90                   	nop
   140001e0f:	90                   	nop

0000000140001e10 <_gnu_exception_handler>:
   140001e10:	53                   	push   rbx
   140001e11:	48 83 ec 20          	sub    rsp,0x20
   140001e15:	48 8b 11             	mov    rdx,QWORD PTR [rcx]
   140001e18:	8b 02                	mov    eax,DWORD PTR [rdx]
   140001e1a:	48 89 cb             	mov    rbx,rcx
   140001e1d:	89 c1                	mov    ecx,eax
   140001e1f:	81 e1 ff ff ff 20    	and    ecx,0x20ffffff
   140001e25:	81 f9 43 43 47 20    	cmp    ecx,0x20474343
   140001e2b:	0f 84 9f 00 00 00    	je     140001ed0 <_gnu_exception_handler+0xc0>
   140001e31:	3d 96 00 00 c0       	cmp    eax,0xc0000096
   140001e36:	77 77                	ja     140001eaf <_gnu_exception_handler+0x9f>
   140001e38:	3d 8b 00 00 c0       	cmp    eax,0xc000008b
   140001e3d:	76 21                	jbe    140001e60 <_gnu_exception_handler+0x50>
   140001e3f:	05 73 ff ff 3f       	add    eax,0x3fffff73
   140001e44:	83 f8 09             	cmp    eax,0x9
   140001e47:	77 54                	ja     140001e9d <_gnu_exception_handler+0x8d>
   140001e49:	48 8d 15 d0 74 00 00 	lea    rdx,[rip+0x74d0]        # 140009320 <.rdata>
   140001e50:	48 63 04 82          	movsxd rax,DWORD PTR [rdx+rax*4]
   140001e54:	48 01 d0             	add    rax,rdx
   140001e57:	ff e0                	jmp    rax
   140001e59:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140001e60:	3d 05 00 00 c0       	cmp    eax,0xc0000005
   140001e65:	0f 84 d5 00 00 00    	je     140001f40 <_gnu_exception_handler+0x130>
   140001e6b:	76 3b                	jbe    140001ea8 <_gnu_exception_handler+0x98>
   140001e6d:	3d 08 00 00 c0       	cmp    eax,0xc0000008
   140001e72:	74 29                	je     140001e9d <_gnu_exception_handler+0x8d>
   140001e74:	3d 1d 00 00 c0       	cmp    eax,0xc000001d
   140001e79:	75 34                	jne    140001eaf <_gnu_exception_handler+0x9f>
   140001e7b:	31 d2                	xor    edx,edx
   140001e7d:	b9 04 00 00 00       	mov    ecx,0x4
   140001e82:	e8 71 5d 00 00       	call   140007bf8 <signal>
   140001e87:	48 83 f8 01          	cmp    rax,0x1
   140001e8b:	0f 84 d6 00 00 00    	je     140001f67 <_gnu_exception_handler+0x157>
   140001e91:	48 85 c0             	test   rax,rax
   140001e94:	74 19                	je     140001eaf <_gnu_exception_handler+0x9f>
   140001e96:	b9 04 00 00 00       	mov    ecx,0x4
   140001e9b:	ff d0                	call   rax
   140001e9d:	b8 ff ff ff ff       	mov    eax,0xffffffff
   140001ea2:	48 83 c4 20          	add    rsp,0x20
   140001ea6:	5b                   	pop    rbx
   140001ea7:	c3                   	ret
   140001ea8:	3d 02 00 00 80       	cmp    eax,0x80000002
   140001ead:	74 ee                	je     140001e9d <_gnu_exception_handler+0x8d>
   140001eaf:	48 8b 05 1a b2 00 00 	mov    rax,QWORD PTR [rip+0xb21a]        # 14000d0d0 <__mingw_oldexcpt_handler>
   140001eb6:	48 85 c0             	test   rax,rax
   140001eb9:	74 25                	je     140001ee0 <_gnu_exception_handler+0xd0>
   140001ebb:	48 89 d9             	mov    rcx,rbx
   140001ebe:	48 83 c4 20          	add    rsp,0x20
   140001ec2:	5b                   	pop    rbx
   140001ec3:	48 ff e0             	rex.W jmp rax
   140001ec6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   140001ecd:	00 00 00 
   140001ed0:	f6 42 04 01          	test   BYTE PTR [rdx+0x4],0x1
   140001ed4:	0f 85 57 ff ff ff    	jne    140001e31 <_gnu_exception_handler+0x21>
   140001eda:	eb c1                	jmp    140001e9d <_gnu_exception_handler+0x8d>
   140001edc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001ee0:	31 c0                	xor    eax,eax
   140001ee2:	48 83 c4 20          	add    rsp,0x20
   140001ee6:	5b                   	pop    rbx
   140001ee7:	c3                   	ret
   140001ee8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140001eef:	00 
   140001ef0:	31 d2                	xor    edx,edx
   140001ef2:	b9 08 00 00 00       	mov    ecx,0x8
   140001ef7:	e8 fc 5c 00 00       	call   140007bf8 <signal>
   140001efc:	48 83 f8 01          	cmp    rax,0x1
   140001f00:	0f 84 89 00 00 00    	je     140001f8f <_gnu_exception_handler+0x17f>
   140001f06:	48 85 c0             	test   rax,rax
   140001f09:	74 a4                	je     140001eaf <_gnu_exception_handler+0x9f>
   140001f0b:	b9 08 00 00 00       	mov    ecx,0x8
   140001f10:	ff d0                	call   rax
   140001f12:	eb 89                	jmp    140001e9d <_gnu_exception_handler+0x8d>
   140001f14:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001f18:	31 d2                	xor    edx,edx
   140001f1a:	b9 08 00 00 00       	mov    ecx,0x8
   140001f1f:	e8 d4 5c 00 00       	call   140007bf8 <signal>
   140001f24:	48 83 f8 01          	cmp    rax,0x1
   140001f28:	75 dc                	jne    140001f06 <_gnu_exception_handler+0xf6>
   140001f2a:	ba 01 00 00 00       	mov    edx,0x1
   140001f2f:	b9 08 00 00 00       	mov    ecx,0x8
   140001f34:	e8 bf 5c 00 00       	call   140007bf8 <signal>
   140001f39:	e9 5f ff ff ff       	jmp    140001e9d <_gnu_exception_handler+0x8d>
   140001f3e:	66 90                	xchg   ax,ax
   140001f40:	31 d2                	xor    edx,edx
   140001f42:	b9 0b 00 00 00       	mov    ecx,0xb
   140001f47:	e8 ac 5c 00 00       	call   140007bf8 <signal>
   140001f4c:	48 83 f8 01          	cmp    rax,0x1
   140001f50:	74 29                	je     140001f7b <_gnu_exception_handler+0x16b>
   140001f52:	48 85 c0             	test   rax,rax
   140001f55:	0f 84 54 ff ff ff    	je     140001eaf <_gnu_exception_handler+0x9f>
   140001f5b:	b9 0b 00 00 00       	mov    ecx,0xb
   140001f60:	ff d0                	call   rax
   140001f62:	e9 36 ff ff ff       	jmp    140001e9d <_gnu_exception_handler+0x8d>
   140001f67:	ba 01 00 00 00       	mov    edx,0x1
   140001f6c:	b9 04 00 00 00       	mov    ecx,0x4
   140001f71:	e8 82 5c 00 00       	call   140007bf8 <signal>
   140001f76:	e9 22 ff ff ff       	jmp    140001e9d <_gnu_exception_handler+0x8d>
   140001f7b:	ba 01 00 00 00       	mov    edx,0x1
   140001f80:	b9 0b 00 00 00       	mov    ecx,0xb
   140001f85:	e8 6e 5c 00 00       	call   140007bf8 <signal>
   140001f8a:	e9 0e ff ff ff       	jmp    140001e9d <_gnu_exception_handler+0x8d>
   140001f8f:	ba 01 00 00 00       	mov    edx,0x1
   140001f94:	b9 08 00 00 00       	mov    ecx,0x8
   140001f99:	e8 5a 5c 00 00       	call   140007bf8 <signal>
   140001f9e:	e8 cd f8 ff ff       	call   140001870 <_fpreset>
   140001fa3:	e9 f5 fe ff ff       	jmp    140001e9d <_gnu_exception_handler+0x8d>
   140001fa8:	90                   	nop
   140001fa9:	90                   	nop
   140001faa:	90                   	nop
   140001fab:	90                   	nop
   140001fac:	90                   	nop
   140001fad:	90                   	nop
   140001fae:	90                   	nop
   140001faf:	90                   	nop

0000000140001fb0 <__mingwthr_run_key_dtors.part.0>:
   140001fb0:	41 54                	push   r12
   140001fb2:	55                   	push   rbp
   140001fb3:	57                   	push   rdi
   140001fb4:	56                   	push   rsi
   140001fb5:	53                   	push   rbx
   140001fb6:	48 83 ec 20          	sub    rsp,0x20
   140001fba:	4c 8d 25 3f b1 00 00 	lea    r12,[rip+0xb13f]        # 14000d100 <__mingwthr_cs>
   140001fc1:	4c 89 e1             	mov    rcx,r12
   140001fc4:	ff 15 12 c2 00 00    	call   QWORD PTR [rip+0xc212]        # 14000e1dc <__imp_EnterCriticalSection>
   140001fca:	48 8b 1d 0f b1 00 00 	mov    rbx,QWORD PTR [rip+0xb10f]        # 14000d0e0 <key_dtor_list>
   140001fd1:	48 85 db             	test   rbx,rbx
   140001fd4:	74 36                	je     14000200c <__mingwthr_run_key_dtors.part.0+0x5c>
   140001fd6:	48 8b 2d 47 c2 00 00 	mov    rbp,QWORD PTR [rip+0xc247]        # 14000e224 <__imp_TlsGetValue>
   140001fdd:	48 8b 3d 00 c2 00 00 	mov    rdi,QWORD PTR [rip+0xc200]        # 14000e1e4 <__imp_GetLastError>
   140001fe4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001fe8:	8b 0b                	mov    ecx,DWORD PTR [rbx]
   140001fea:	ff d5                	call   rbp
   140001fec:	48 89 c6             	mov    rsi,rax
   140001fef:	ff d7                	call   rdi
   140001ff1:	85 c0                	test   eax,eax
   140001ff3:	75 0e                	jne    140002003 <__mingwthr_run_key_dtors.part.0+0x53>
   140001ff5:	48 85 f6             	test   rsi,rsi
   140001ff8:	74 09                	je     140002003 <__mingwthr_run_key_dtors.part.0+0x53>
   140001ffa:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
   140001ffe:	48 89 f1             	mov    rcx,rsi
   140002001:	ff d0                	call   rax
   140002003:	48 8b 5b 10          	mov    rbx,QWORD PTR [rbx+0x10]
   140002007:	48 85 db             	test   rbx,rbx
   14000200a:	75 dc                	jne    140001fe8 <__mingwthr_run_key_dtors.part.0+0x38>
   14000200c:	4c 89 e1             	mov    rcx,r12
   14000200f:	48 83 c4 20          	add    rsp,0x20
   140002013:	5b                   	pop    rbx
   140002014:	5e                   	pop    rsi
   140002015:	5f                   	pop    rdi
   140002016:	5d                   	pop    rbp
   140002017:	41 5c                	pop    r12
   140002019:	48 ff 25 e4 c1 00 00 	rex.W jmp QWORD PTR [rip+0xc1e4]        # 14000e204 <__imp_LeaveCriticalSection>

0000000140002020 <___w64_mingwthr_add_key_dtor>:
   140002020:	57                   	push   rdi
   140002021:	56                   	push   rsi
   140002022:	53                   	push   rbx
   140002023:	48 83 ec 20          	sub    rsp,0x20
   140002027:	8b 05 bb b0 00 00    	mov    eax,DWORD PTR [rip+0xb0bb]        # 14000d0e8 <__mingwthr_cs_init>
   14000202d:	89 cf                	mov    edi,ecx
   14000202f:	48 89 d6             	mov    rsi,rdx
   140002032:	85 c0                	test   eax,eax
   140002034:	75 0a                	jne    140002040 <___w64_mingwthr_add_key_dtor+0x20>
   140002036:	31 c0                	xor    eax,eax
   140002038:	48 83 c4 20          	add    rsp,0x20
   14000203c:	5b                   	pop    rbx
   14000203d:	5e                   	pop    rsi
   14000203e:	5f                   	pop    rdi
   14000203f:	c3                   	ret
   140002040:	ba 18 00 00 00       	mov    edx,0x18
   140002045:	b9 01 00 00 00       	mov    ecx,0x1
   14000204a:	e8 59 5b 00 00       	call   140007ba8 <calloc>
   14000204f:	48 89 c3             	mov    rbx,rax
   140002052:	48 85 c0             	test   rax,rax
   140002055:	74 33                	je     14000208a <___w64_mingwthr_add_key_dtor+0x6a>
   140002057:	48 89 70 08          	mov    QWORD PTR [rax+0x8],rsi
   14000205b:	48 8d 35 9e b0 00 00 	lea    rsi,[rip+0xb09e]        # 14000d100 <__mingwthr_cs>
   140002062:	89 38                	mov    DWORD PTR [rax],edi
   140002064:	48 89 f1             	mov    rcx,rsi
   140002067:	ff 15 6f c1 00 00    	call   QWORD PTR [rip+0xc16f]        # 14000e1dc <__imp_EnterCriticalSection>
   14000206d:	48 8b 05 6c b0 00 00 	mov    rax,QWORD PTR [rip+0xb06c]        # 14000d0e0 <key_dtor_list>
   140002074:	48 89 f1             	mov    rcx,rsi
   140002077:	48 89 1d 62 b0 00 00 	mov    QWORD PTR [rip+0xb062],rbx        # 14000d0e0 <key_dtor_list>
   14000207e:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
   140002082:	ff 15 7c c1 00 00    	call   QWORD PTR [rip+0xc17c]        # 14000e204 <__imp_LeaveCriticalSection>
   140002088:	eb ac                	jmp    140002036 <___w64_mingwthr_add_key_dtor+0x16>
   14000208a:	83 c8 ff             	or     eax,0xffffffff
   14000208d:	eb a9                	jmp    140002038 <___w64_mingwthr_add_key_dtor+0x18>
   14000208f:	90                   	nop

0000000140002090 <___w64_mingwthr_remove_key_dtor>:
   140002090:	56                   	push   rsi
   140002091:	53                   	push   rbx
   140002092:	48 83 ec 28          	sub    rsp,0x28
   140002096:	8b 05 4c b0 00 00    	mov    eax,DWORD PTR [rip+0xb04c]        # 14000d0e8 <__mingwthr_cs_init>
   14000209c:	89 cb                	mov    ebx,ecx
   14000209e:	85 c0                	test   eax,eax
   1400020a0:	75 0e                	jne    1400020b0 <___w64_mingwthr_remove_key_dtor+0x20>
   1400020a2:	31 c0                	xor    eax,eax
   1400020a4:	48 83 c4 28          	add    rsp,0x28
   1400020a8:	5b                   	pop    rbx
   1400020a9:	5e                   	pop    rsi
   1400020aa:	c3                   	ret
   1400020ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400020b0:	48 8d 35 49 b0 00 00 	lea    rsi,[rip+0xb049]        # 14000d100 <__mingwthr_cs>
   1400020b7:	48 89 f1             	mov    rcx,rsi
   1400020ba:	ff 15 1c c1 00 00    	call   QWORD PTR [rip+0xc11c]        # 14000e1dc <__imp_EnterCriticalSection>
   1400020c0:	48 8b 0d 19 b0 00 00 	mov    rcx,QWORD PTR [rip+0xb019]        # 14000d0e0 <key_dtor_list>
   1400020c7:	48 85 c9             	test   rcx,rcx
   1400020ca:	74 27                	je     1400020f3 <___w64_mingwthr_remove_key_dtor+0x63>
   1400020cc:	31 d2                	xor    edx,edx
   1400020ce:	eb 0b                	jmp    1400020db <___w64_mingwthr_remove_key_dtor+0x4b>
   1400020d0:	48 89 ca             	mov    rdx,rcx
   1400020d3:	48 85 c0             	test   rax,rax
   1400020d6:	74 1b                	je     1400020f3 <___w64_mingwthr_remove_key_dtor+0x63>
   1400020d8:	48 89 c1             	mov    rcx,rax
   1400020db:	8b 01                	mov    eax,DWORD PTR [rcx]
   1400020dd:	39 d8                	cmp    eax,ebx
   1400020df:	48 8b 41 10          	mov    rax,QWORD PTR [rcx+0x10]
   1400020e3:	75 eb                	jne    1400020d0 <___w64_mingwthr_remove_key_dtor+0x40>
   1400020e5:	48 85 d2             	test   rdx,rdx
   1400020e8:	74 1e                	je     140002108 <___w64_mingwthr_remove_key_dtor+0x78>
   1400020ea:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
   1400020ee:	e8 d5 5a 00 00       	call   140007bc8 <free>
   1400020f3:	48 89 f1             	mov    rcx,rsi
   1400020f6:	ff 15 08 c1 00 00    	call   QWORD PTR [rip+0xc108]        # 14000e204 <__imp_LeaveCriticalSection>
   1400020fc:	31 c0                	xor    eax,eax
   1400020fe:	48 83 c4 28          	add    rsp,0x28
   140002102:	5b                   	pop    rbx
   140002103:	5e                   	pop    rsi
   140002104:	c3                   	ret
   140002105:	0f 1f 00             	nop    DWORD PTR [rax]
   140002108:	48 89 05 d1 af 00 00 	mov    QWORD PTR [rip+0xafd1],rax        # 14000d0e0 <key_dtor_list>
   14000210f:	eb dd                	jmp    1400020ee <___w64_mingwthr_remove_key_dtor+0x5e>
   140002111:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140002118:	00 00 00 00 
   14000211c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000140002120 <__mingw_TLScallback>:
   140002120:	53                   	push   rbx
   140002121:	48 83 ec 20          	sub    rsp,0x20
   140002125:	83 fa 02             	cmp    edx,0x2
   140002128:	0f 84 b2 00 00 00    	je     1400021e0 <__mingw_TLScallback+0xc0>
   14000212e:	77 30                	ja     140002160 <__mingw_TLScallback+0x40>
   140002130:	85 d2                	test   edx,edx
   140002132:	74 4c                	je     140002180 <__mingw_TLScallback+0x60>
   140002134:	8b 05 ae af 00 00    	mov    eax,DWORD PTR [rip+0xafae]        # 14000d0e8 <__mingwthr_cs_init>
   14000213a:	85 c0                	test   eax,eax
   14000213c:	0f 84 be 00 00 00    	je     140002200 <__mingw_TLScallback+0xe0>
   140002142:	c7 05 9c af 00 00 01 	mov    DWORD PTR [rip+0xaf9c],0x1        # 14000d0e8 <__mingwthr_cs_init>
   140002149:	00 00 00 
   14000214c:	b8 01 00 00 00       	mov    eax,0x1
   140002151:	48 83 c4 20          	add    rsp,0x20
   140002155:	5b                   	pop    rbx
   140002156:	c3                   	ret
   140002157:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000215e:	00 00 
   140002160:	83 fa 03             	cmp    edx,0x3
   140002163:	75 e7                	jne    14000214c <__mingw_TLScallback+0x2c>
   140002165:	8b 05 7d af 00 00    	mov    eax,DWORD PTR [rip+0xaf7d]        # 14000d0e8 <__mingwthr_cs_init>
   14000216b:	85 c0                	test   eax,eax
   14000216d:	74 dd                	je     14000214c <__mingw_TLScallback+0x2c>
   14000216f:	e8 3c fe ff ff       	call   140001fb0 <__mingwthr_run_key_dtors.part.0>
   140002174:	eb d6                	jmp    14000214c <__mingw_TLScallback+0x2c>
   140002176:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000217d:	00 00 00 
   140002180:	8b 05 62 af 00 00    	mov    eax,DWORD PTR [rip+0xaf62]        # 14000d0e8 <__mingwthr_cs_init>
   140002186:	85 c0                	test   eax,eax
   140002188:	75 66                	jne    1400021f0 <__mingw_TLScallback+0xd0>
   14000218a:	8b 05 58 af 00 00    	mov    eax,DWORD PTR [rip+0xaf58]        # 14000d0e8 <__mingwthr_cs_init>
   140002190:	83 f8 01             	cmp    eax,0x1
   140002193:	75 b7                	jne    14000214c <__mingw_TLScallback+0x2c>
   140002195:	48 8b 1d 44 af 00 00 	mov    rbx,QWORD PTR [rip+0xaf44]        # 14000d0e0 <key_dtor_list>
   14000219c:	48 85 db             	test   rbx,rbx
   14000219f:	74 18                	je     1400021b9 <__mingw_TLScallback+0x99>
   1400021a1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400021a8:	48 89 d9             	mov    rcx,rbx
   1400021ab:	48 8b 5b 10          	mov    rbx,QWORD PTR [rbx+0x10]
   1400021af:	e8 14 5a 00 00       	call   140007bc8 <free>
   1400021b4:	48 85 db             	test   rbx,rbx
   1400021b7:	75 ef                	jne    1400021a8 <__mingw_TLScallback+0x88>
   1400021b9:	48 8d 0d 40 af 00 00 	lea    rcx,[rip+0xaf40]        # 14000d100 <__mingwthr_cs>
   1400021c0:	48 c7 05 15 af 00 00 	mov    QWORD PTR [rip+0xaf15],0x0        # 14000d0e0 <key_dtor_list>
   1400021c7:	00 00 00 00 
   1400021cb:	c7 05 13 af 00 00 00 	mov    DWORD PTR [rip+0xaf13],0x0        # 14000d0e8 <__mingwthr_cs_init>
   1400021d2:	00 00 00 
   1400021d5:	ff 15 f9 bf 00 00    	call   QWORD PTR [rip+0xbff9]        # 14000e1d4 <__IAT_start__>
   1400021db:	e9 6c ff ff ff       	jmp    14000214c <__mingw_TLScallback+0x2c>
   1400021e0:	e8 8b f6 ff ff       	call   140001870 <_fpreset>
   1400021e5:	b8 01 00 00 00       	mov    eax,0x1
   1400021ea:	48 83 c4 20          	add    rsp,0x20
   1400021ee:	5b                   	pop    rbx
   1400021ef:	c3                   	ret
   1400021f0:	e8 bb fd ff ff       	call   140001fb0 <__mingwthr_run_key_dtors.part.0>
   1400021f5:	eb 93                	jmp    14000218a <__mingw_TLScallback+0x6a>
   1400021f7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   1400021fe:	00 00 
   140002200:	48 8d 0d f9 ae 00 00 	lea    rcx,[rip+0xaef9]        # 14000d100 <__mingwthr_cs>
   140002207:	ff 15 e7 bf 00 00    	call   QWORD PTR [rip+0xbfe7]        # 14000e1f4 <__imp_InitializeCriticalSection>
   14000220d:	e9 30 ff ff ff       	jmp    140002142 <__mingw_TLScallback+0x22>
   140002212:	90                   	nop
   140002213:	90                   	nop
   140002214:	90                   	nop
   140002215:	90                   	nop
   140002216:	90                   	nop
   140002217:	90                   	nop
   140002218:	90                   	nop
   140002219:	90                   	nop
   14000221a:	90                   	nop
   14000221b:	90                   	nop
   14000221c:	90                   	nop
   14000221d:	90                   	nop
   14000221e:	90                   	nop
   14000221f:	90                   	nop

0000000140002220 <_ValidateImageBase>:
   140002220:	31 c0                	xor    eax,eax
   140002222:	66 81 39 4d 5a       	cmp    WORD PTR [rcx],0x5a4d
   140002227:	75 0f                	jne    140002238 <_ValidateImageBase+0x18>
   140002229:	48 63 51 3c          	movsxd rdx,DWORD PTR [rcx+0x3c]
   14000222d:	48 01 d1             	add    rcx,rdx
   140002230:	81 39 50 45 00 00    	cmp    DWORD PTR [rcx],0x4550
   140002236:	74 08                	je     140002240 <_ValidateImageBase+0x20>
   140002238:	c3                   	ret
   140002239:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002240:	31 c0                	xor    eax,eax
   140002242:	66 81 79 18 0b 02    	cmp    WORD PTR [rcx+0x18],0x20b
   140002248:	0f 94 c0             	sete   al
   14000224b:	c3                   	ret
   14000224c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000140002250 <_FindPESection>:
   140002250:	48 63 41 3c          	movsxd rax,DWORD PTR [rcx+0x3c]
   140002254:	48 01 c1             	add    rcx,rax
   140002257:	0f b7 41 14          	movzx  eax,WORD PTR [rcx+0x14]
   14000225b:	44 0f b7 41 06       	movzx  r8d,WORD PTR [rcx+0x6]
   140002260:	48 8d 44 01 18       	lea    rax,[rcx+rax*1+0x18]
   140002265:	66 45 85 c0          	test   r8w,r8w
   140002269:	74 32                	je     14000229d <_FindPESection+0x4d>
   14000226b:	41 8d 48 ff          	lea    ecx,[r8-0x1]
   14000226f:	48 8d 0c 89          	lea    rcx,[rcx+rcx*4]
   140002273:	4c 8d 4c c8 28       	lea    r9,[rax+rcx*8+0x28]
   140002278:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000227f:	00 
   140002280:	44 8b 40 0c          	mov    r8d,DWORD PTR [rax+0xc]
   140002284:	4c 89 c1             	mov    rcx,r8
   140002287:	4c 39 c2             	cmp    rdx,r8
   14000228a:	72 08                	jb     140002294 <_FindPESection+0x44>
   14000228c:	03 48 08             	add    ecx,DWORD PTR [rax+0x8]
   14000228f:	48 39 ca             	cmp    rdx,rcx
   140002292:	72 0b                	jb     14000229f <_FindPESection+0x4f>
   140002294:	48 83 c0 28          	add    rax,0x28
   140002298:	4c 39 c8             	cmp    rax,r9
   14000229b:	75 e3                	jne    140002280 <_FindPESection+0x30>
   14000229d:	31 c0                	xor    eax,eax
   14000229f:	c3                   	ret

00000001400022a0 <_FindPESectionByName>:
   1400022a0:	57                   	push   rdi
   1400022a1:	56                   	push   rsi
   1400022a2:	53                   	push   rbx
   1400022a3:	48 83 ec 20          	sub    rsp,0x20
   1400022a7:	48 89 ce             	mov    rsi,rcx
   1400022aa:	e8 59 59 00 00       	call   140007c08 <strlen>
   1400022af:	48 83 f8 08          	cmp    rax,0x8
   1400022b3:	77 7b                	ja     140002330 <_FindPESectionByName+0x90>
   1400022b5:	48 8b 15 84 74 00 00 	mov    rdx,QWORD PTR [rip+0x7484]        # 140009740 <.refptr.__image_base__>
   1400022bc:	31 db                	xor    ebx,ebx
   1400022be:	66 81 3a 4d 5a       	cmp    WORD PTR [rdx],0x5a4d
   1400022c3:	75 59                	jne    14000231e <_FindPESectionByName+0x7e>
   1400022c5:	48 63 42 3c          	movsxd rax,DWORD PTR [rdx+0x3c]
   1400022c9:	48 01 d0             	add    rax,rdx
   1400022cc:	81 38 50 45 00 00    	cmp    DWORD PTR [rax],0x4550
   1400022d2:	75 4a                	jne    14000231e <_FindPESectionByName+0x7e>
   1400022d4:	66 81 78 18 0b 02    	cmp    WORD PTR [rax+0x18],0x20b
   1400022da:	75 42                	jne    14000231e <_FindPESectionByName+0x7e>
   1400022dc:	0f b7 50 14          	movzx  edx,WORD PTR [rax+0x14]
   1400022e0:	48 8d 5c 10 18       	lea    rbx,[rax+rdx*1+0x18]
   1400022e5:	0f b7 50 06          	movzx  edx,WORD PTR [rax+0x6]
   1400022e9:	66 85 d2             	test   dx,dx
   1400022ec:	74 42                	je     140002330 <_FindPESectionByName+0x90>
   1400022ee:	8d 42 ff             	lea    eax,[rdx-0x1]
   1400022f1:	48 8d 04 80          	lea    rax,[rax+rax*4]
   1400022f5:	48 8d 7c c3 28       	lea    rdi,[rbx+rax*8+0x28]
   1400022fa:	eb 0d                	jmp    140002309 <_FindPESectionByName+0x69>
   1400022fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140002300:	48 83 c3 28          	add    rbx,0x28
   140002304:	48 39 fb             	cmp    rbx,rdi
   140002307:	74 27                	je     140002330 <_FindPESectionByName+0x90>
   140002309:	41 b8 08 00 00 00    	mov    r8d,0x8
   14000230f:	48 89 f2             	mov    rdx,rsi
   140002312:	48 89 d9             	mov    rcx,rbx
   140002315:	e8 f6 58 00 00       	call   140007c10 <strncmp>
   14000231a:	85 c0                	test   eax,eax
   14000231c:	75 e2                	jne    140002300 <_FindPESectionByName+0x60>
   14000231e:	48 89 d8             	mov    rax,rbx
   140002321:	48 83 c4 20          	add    rsp,0x20
   140002325:	5b                   	pop    rbx
   140002326:	5e                   	pop    rsi
   140002327:	5f                   	pop    rdi
   140002328:	c3                   	ret
   140002329:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002330:	31 db                	xor    ebx,ebx
   140002332:	48 89 d8             	mov    rax,rbx
   140002335:	48 83 c4 20          	add    rsp,0x20
   140002339:	5b                   	pop    rbx
   14000233a:	5e                   	pop    rsi
   14000233b:	5f                   	pop    rdi
   14000233c:	c3                   	ret
   14000233d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000140002340 <__mingw_GetSectionForAddress>:
   140002340:	48 8b 15 f9 73 00 00 	mov    rdx,QWORD PTR [rip+0x73f9]        # 140009740 <.refptr.__image_base__>
   140002347:	31 c0                	xor    eax,eax
   140002349:	66 81 3a 4d 5a       	cmp    WORD PTR [rdx],0x5a4d
   14000234e:	75 10                	jne    140002360 <__mingw_GetSectionForAddress+0x20>
   140002350:	4c 63 42 3c          	movsxd r8,DWORD PTR [rdx+0x3c]
   140002354:	49 01 d0             	add    r8,rdx
   140002357:	41 81 38 50 45 00 00 	cmp    DWORD PTR [r8],0x4550
   14000235e:	74 08                	je     140002368 <__mingw_GetSectionForAddress+0x28>
   140002360:	c3                   	ret
   140002361:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002368:	66 41 81 78 18 0b 02 	cmp    WORD PTR [r8+0x18],0x20b
   14000236f:	75 ef                	jne    140002360 <__mingw_GetSectionForAddress+0x20>
   140002371:	41 0f b7 40 14       	movzx  eax,WORD PTR [r8+0x14]
   140002376:	48 29 d1             	sub    rcx,rdx
   140002379:	49 8d 44 00 18       	lea    rax,[r8+rax*1+0x18]
   14000237e:	45 0f b7 40 06       	movzx  r8d,WORD PTR [r8+0x6]
   140002383:	66 45 85 c0          	test   r8w,r8w
   140002387:	74 34                	je     1400023bd <__mingw_GetSectionForAddress+0x7d>
   140002389:	41 8d 50 ff          	lea    edx,[r8-0x1]
   14000238d:	48 8d 14 92          	lea    rdx,[rdx+rdx*4]
   140002391:	4c 8d 4c d0 28       	lea    r9,[rax+rdx*8+0x28]
   140002396:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000239d:	00 00 00 
   1400023a0:	44 8b 40 0c          	mov    r8d,DWORD PTR [rax+0xc]
   1400023a4:	4c 89 c2             	mov    rdx,r8
   1400023a7:	4c 39 c1             	cmp    rcx,r8
   1400023aa:	72 08                	jb     1400023b4 <__mingw_GetSectionForAddress+0x74>
   1400023ac:	03 50 08             	add    edx,DWORD PTR [rax+0x8]
   1400023af:	48 39 d1             	cmp    rcx,rdx
   1400023b2:	72 ac                	jb     140002360 <__mingw_GetSectionForAddress+0x20>
   1400023b4:	48 83 c0 28          	add    rax,0x28
   1400023b8:	4c 39 c8             	cmp    rax,r9
   1400023bb:	75 e3                	jne    1400023a0 <__mingw_GetSectionForAddress+0x60>
   1400023bd:	31 c0                	xor    eax,eax
   1400023bf:	c3                   	ret

00000001400023c0 <__mingw_GetSectionCount>:
   1400023c0:	48 8b 05 79 73 00 00 	mov    rax,QWORD PTR [rip+0x7379]        # 140009740 <.refptr.__image_base__>
   1400023c7:	31 c9                	xor    ecx,ecx
   1400023c9:	66 81 38 4d 5a       	cmp    WORD PTR [rax],0x5a4d
   1400023ce:	75 0f                	jne    1400023df <__mingw_GetSectionCount+0x1f>
   1400023d0:	48 63 50 3c          	movsxd rdx,DWORD PTR [rax+0x3c]
   1400023d4:	48 01 d0             	add    rax,rdx
   1400023d7:	81 38 50 45 00 00    	cmp    DWORD PTR [rax],0x4550
   1400023dd:	74 09                	je     1400023e8 <__mingw_GetSectionCount+0x28>
   1400023df:	89 c8                	mov    eax,ecx
   1400023e1:	c3                   	ret
   1400023e2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400023e8:	66 81 78 18 0b 02    	cmp    WORD PTR [rax+0x18],0x20b
   1400023ee:	75 ef                	jne    1400023df <__mingw_GetSectionCount+0x1f>
   1400023f0:	0f b7 48 06          	movzx  ecx,WORD PTR [rax+0x6]
   1400023f4:	89 c8                	mov    eax,ecx
   1400023f6:	c3                   	ret
   1400023f7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   1400023fe:	00 00 

0000000140002400 <_FindPESectionExec>:
   140002400:	4c 8b 05 39 73 00 00 	mov    r8,QWORD PTR [rip+0x7339]        # 140009740 <.refptr.__image_base__>
   140002407:	31 c0                	xor    eax,eax
   140002409:	66 41 81 38 4d 5a    	cmp    WORD PTR [r8],0x5a4d
   14000240f:	75 0f                	jne    140002420 <_FindPESectionExec+0x20>
   140002411:	49 63 50 3c          	movsxd rdx,DWORD PTR [r8+0x3c]
   140002415:	4c 01 c2             	add    rdx,r8
   140002418:	81 3a 50 45 00 00    	cmp    DWORD PTR [rdx],0x4550
   14000241e:	74 08                	je     140002428 <_FindPESectionExec+0x28>
   140002420:	c3                   	ret
   140002421:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002428:	66 81 7a 18 0b 02    	cmp    WORD PTR [rdx+0x18],0x20b
   14000242e:	75 f0                	jne    140002420 <_FindPESectionExec+0x20>
   140002430:	0f b7 42 14          	movzx  eax,WORD PTR [rdx+0x14]
   140002434:	44 0f b7 42 06       	movzx  r8d,WORD PTR [rdx+0x6]
   140002439:	48 8d 44 02 18       	lea    rax,[rdx+rax*1+0x18]
   14000243e:	66 45 85 c0          	test   r8w,r8w
   140002442:	74 2c                	je     140002470 <_FindPESectionExec+0x70>
   140002444:	41 8d 50 ff          	lea    edx,[r8-0x1]
   140002448:	48 8d 14 92          	lea    rdx,[rdx+rdx*4]
   14000244c:	48 8d 54 d0 28       	lea    rdx,[rax+rdx*8+0x28]
   140002451:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002458:	f6 40 27 20          	test   BYTE PTR [rax+0x27],0x20
   14000245c:	74 09                	je     140002467 <_FindPESectionExec+0x67>
   14000245e:	48 85 c9             	test   rcx,rcx
   140002461:	74 bd                	je     140002420 <_FindPESectionExec+0x20>
   140002463:	48 83 e9 01          	sub    rcx,0x1
   140002467:	48 83 c0 28          	add    rax,0x28
   14000246b:	48 39 d0             	cmp    rax,rdx
   14000246e:	75 e8                	jne    140002458 <_FindPESectionExec+0x58>
   140002470:	31 c0                	xor    eax,eax
   140002472:	c3                   	ret
   140002473:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   14000247a:	00 00 00 00 
   14000247e:	66 90                	xchg   ax,ax

0000000140002480 <_GetPEImageBase>:
   140002480:	48 8b 05 b9 72 00 00 	mov    rax,QWORD PTR [rip+0x72b9]        # 140009740 <.refptr.__image_base__>
   140002487:	31 d2                	xor    edx,edx
   140002489:	66 81 38 4d 5a       	cmp    WORD PTR [rax],0x5a4d
   14000248e:	75 0f                	jne    14000249f <_GetPEImageBase+0x1f>
   140002490:	48 63 48 3c          	movsxd rcx,DWORD PTR [rax+0x3c]
   140002494:	48 01 c1             	add    rcx,rax
   140002497:	81 39 50 45 00 00    	cmp    DWORD PTR [rcx],0x4550
   14000249d:	74 09                	je     1400024a8 <_GetPEImageBase+0x28>
   14000249f:	48 89 d0             	mov    rax,rdx
   1400024a2:	c3                   	ret
   1400024a3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400024a8:	66 81 79 18 0b 02    	cmp    WORD PTR [rcx+0x18],0x20b
   1400024ae:	48 0f 44 d0          	cmove  rdx,rax
   1400024b2:	48 89 d0             	mov    rax,rdx
   1400024b5:	c3                   	ret
   1400024b6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400024bd:	00 00 00 

00000001400024c0 <_IsNonwritableInCurrentImage>:
   1400024c0:	48 8b 15 79 72 00 00 	mov    rdx,QWORD PTR [rip+0x7279]        # 140009740 <.refptr.__image_base__>
   1400024c7:	31 c0                	xor    eax,eax
   1400024c9:	66 81 3a 4d 5a       	cmp    WORD PTR [rdx],0x5a4d
   1400024ce:	75 10                	jne    1400024e0 <_IsNonwritableInCurrentImage+0x20>
   1400024d0:	4c 63 42 3c          	movsxd r8,DWORD PTR [rdx+0x3c]
   1400024d4:	49 01 d0             	add    r8,rdx
   1400024d7:	41 81 38 50 45 00 00 	cmp    DWORD PTR [r8],0x4550
   1400024de:	74 08                	je     1400024e8 <_IsNonwritableInCurrentImage+0x28>
   1400024e0:	c3                   	ret
   1400024e1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400024e8:	66 41 81 78 18 0b 02 	cmp    WORD PTR [r8+0x18],0x20b
   1400024ef:	75 ef                	jne    1400024e0 <_IsNonwritableInCurrentImage+0x20>
   1400024f1:	48 29 d1             	sub    rcx,rdx
   1400024f4:	45 0f b7 48 06       	movzx  r9d,WORD PTR [r8+0x6]
   1400024f9:	41 0f b7 50 14       	movzx  edx,WORD PTR [r8+0x14]
   1400024fe:	49 8d 54 10 18       	lea    rdx,[r8+rdx*1+0x18]
   140002503:	66 45 85 c9          	test   r9w,r9w
   140002507:	74 d7                	je     1400024e0 <_IsNonwritableInCurrentImage+0x20>
   140002509:	41 8d 41 ff          	lea    eax,[r9-0x1]
   14000250d:	48 8d 04 80          	lea    rax,[rax+rax*4]
   140002511:	4c 8d 4c c2 28       	lea    r9,[rdx+rax*8+0x28]
   140002516:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000251d:	00 00 00 
   140002520:	44 8b 42 0c          	mov    r8d,DWORD PTR [rdx+0xc]
   140002524:	4c 89 c0             	mov    rax,r8
   140002527:	4c 39 c1             	cmp    rcx,r8
   14000252a:	72 08                	jb     140002534 <_IsNonwritableInCurrentImage+0x74>
   14000252c:	03 42 08             	add    eax,DWORD PTR [rdx+0x8]
   14000252f:	48 39 c1             	cmp    rcx,rax
   140002532:	72 0c                	jb     140002540 <_IsNonwritableInCurrentImage+0x80>
   140002534:	48 83 c2 28          	add    rdx,0x28
   140002538:	49 39 d1             	cmp    r9,rdx
   14000253b:	75 e3                	jne    140002520 <_IsNonwritableInCurrentImage+0x60>
   14000253d:	31 c0                	xor    eax,eax
   14000253f:	c3                   	ret
   140002540:	8b 42 24             	mov    eax,DWORD PTR [rdx+0x24]
   140002543:	f7 d0                	not    eax
   140002545:	c1 e8 1f             	shr    eax,0x1f
   140002548:	c3                   	ret
   140002549:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000140002550 <__mingw_enum_import_library_names>:
   140002550:	4c 8b 1d e9 71 00 00 	mov    r11,QWORD PTR [rip+0x71e9]        # 140009740 <.refptr.__image_base__>
   140002557:	45 31 c9             	xor    r9d,r9d
   14000255a:	66 41 81 3b 4d 5a    	cmp    WORD PTR [r11],0x5a4d
   140002560:	75 10                	jne    140002572 <__mingw_enum_import_library_names+0x22>
   140002562:	4d 63 43 3c          	movsxd r8,DWORD PTR [r11+0x3c]
   140002566:	4d 01 d8             	add    r8,r11
   140002569:	41 81 38 50 45 00 00 	cmp    DWORD PTR [r8],0x4550
   140002570:	74 0e                	je     140002580 <__mingw_enum_import_library_names+0x30>
   140002572:	4c 89 c8             	mov    rax,r9
   140002575:	c3                   	ret
   140002576:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000257d:	00 00 00 
   140002580:	66 41 81 78 18 0b 02 	cmp    WORD PTR [r8+0x18],0x20b
   140002587:	75 e9                	jne    140002572 <__mingw_enum_import_library_names+0x22>
   140002589:	41 8b 80 90 00 00 00 	mov    eax,DWORD PTR [r8+0x90]
   140002590:	85 c0                	test   eax,eax
   140002592:	74 de                	je     140002572 <__mingw_enum_import_library_names+0x22>
   140002594:	41 0f b7 50 14       	movzx  edx,WORD PTR [r8+0x14]
   140002599:	45 0f b7 50 06       	movzx  r10d,WORD PTR [r8+0x6]
   14000259e:	49 8d 54 10 18       	lea    rdx,[r8+rdx*1+0x18]
   1400025a3:	66 45 85 d2          	test   r10w,r10w
   1400025a7:	74 c9                	je     140002572 <__mingw_enum_import_library_names+0x22>
   1400025a9:	45 8d 42 ff          	lea    r8d,[r10-0x1]
   1400025ad:	4f 8d 04 80          	lea    r8,[r8+r8*4]
   1400025b1:	4e 8d 54 c2 28       	lea    r10,[rdx+r8*8+0x28]
   1400025b6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400025bd:	00 00 00 
   1400025c0:	44 8b 4a 0c          	mov    r9d,DWORD PTR [rdx+0xc]
   1400025c4:	4d 89 c8             	mov    r8,r9
   1400025c7:	4c 39 c8             	cmp    rax,r9
   1400025ca:	72 09                	jb     1400025d5 <__mingw_enum_import_library_names+0x85>
   1400025cc:	44 03 42 08          	add    r8d,DWORD PTR [rdx+0x8]
   1400025d0:	4c 39 c0             	cmp    rax,r8
   1400025d3:	72 13                	jb     1400025e8 <__mingw_enum_import_library_names+0x98>
   1400025d5:	48 83 c2 28          	add    rdx,0x28
   1400025d9:	4c 39 d2             	cmp    rdx,r10
   1400025dc:	75 e2                	jne    1400025c0 <__mingw_enum_import_library_names+0x70>
   1400025de:	45 31 c9             	xor    r9d,r9d
   1400025e1:	4c 89 c8             	mov    rax,r9
   1400025e4:	c3                   	ret
   1400025e5:	0f 1f 00             	nop    DWORD PTR [rax]
   1400025e8:	4c 01 d8             	add    rax,r11
   1400025eb:	eb 0a                	jmp    1400025f7 <__mingw_enum_import_library_names+0xa7>
   1400025ed:	0f 1f 00             	nop    DWORD PTR [rax]
   1400025f0:	83 e9 01             	sub    ecx,0x1
   1400025f3:	48 83 c0 14          	add    rax,0x14
   1400025f7:	44 8b 40 04          	mov    r8d,DWORD PTR [rax+0x4]
   1400025fb:	45 85 c0             	test   r8d,r8d
   1400025fe:	75 07                	jne    140002607 <__mingw_enum_import_library_names+0xb7>
   140002600:	8b 50 0c             	mov    edx,DWORD PTR [rax+0xc]
   140002603:	85 d2                	test   edx,edx
   140002605:	74 d7                	je     1400025de <__mingw_enum_import_library_names+0x8e>
   140002607:	85 c9                	test   ecx,ecx
   140002609:	7f e5                	jg     1400025f0 <__mingw_enum_import_library_names+0xa0>
   14000260b:	44 8b 48 0c          	mov    r9d,DWORD PTR [rax+0xc]
   14000260f:	4d 01 d9             	add    r9,r11
   140002612:	4c 89 c8             	mov    rax,r9
   140002615:	c3                   	ret
   140002616:	90                   	nop
   140002617:	90                   	nop
   140002618:	90                   	nop
   140002619:	90                   	nop
   14000261a:	90                   	nop
   14000261b:	90                   	nop
   14000261c:	90                   	nop
   14000261d:	90                   	nop
   14000261e:	90                   	nop
   14000261f:	90                   	nop

0000000140002620 <___chkstk_ms>:
   140002620:	51                   	push   rcx
   140002621:	50                   	push   rax
   140002622:	48 3d 00 10 00 00    	cmp    rax,0x1000
   140002628:	48 8d 4c 24 18       	lea    rcx,[rsp+0x18]
   14000262d:	72 19                	jb     140002648 <___chkstk_ms+0x28>
   14000262f:	48 81 e9 00 10 00 00 	sub    rcx,0x1000
   140002636:	48 83 09 00          	or     QWORD PTR [rcx],0x0
   14000263a:	48 2d 00 10 00 00    	sub    rax,0x1000
   140002640:	48 3d 00 10 00 00    	cmp    rax,0x1000
   140002646:	77 e7                	ja     14000262f <___chkstk_ms+0xf>
   140002648:	48 29 c1             	sub    rcx,rax
   14000264b:	48 83 09 00          	or     QWORD PTR [rcx],0x0
   14000264f:	58                   	pop    rax
   140002650:	59                   	pop    rcx
   140002651:	c3                   	ret
   140002652:	90                   	nop
   140002653:	90                   	nop
   140002654:	90                   	nop
   140002655:	90                   	nop
   140002656:	90                   	nop
   140002657:	90                   	nop
   140002658:	90                   	nop
   140002659:	90                   	nop
   14000265a:	90                   	nop
   14000265b:	90                   	nop
   14000265c:	90                   	nop
   14000265d:	90                   	nop
   14000265e:	90                   	nop
   14000265f:	90                   	nop

0000000140002660 <__mingw_vfprintf>:
   140002660:	57                   	push   rdi
   140002661:	56                   	push   rsi
   140002662:	53                   	push   rbx
   140002663:	48 83 ec 30          	sub    rsp,0x30
   140002667:	4c 89 c7             	mov    rdi,r8
   14000266a:	48 89 cb             	mov    rbx,rcx
   14000266d:	48 89 d6             	mov    rsi,rdx
   140002670:	e8 9b 4e 00 00       	call   140007510 <_lock_file>
   140002675:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
   14000267a:	49 89 f1             	mov    r9,rsi
   14000267d:	45 31 c0             	xor    r8d,r8d
   140002680:	48 89 da             	mov    rdx,rbx
   140002683:	b9 00 60 00 00       	mov    ecx,0x6000
   140002688:	e8 23 1b 00 00       	call   1400041b0 <__mingw_pformat>
   14000268d:	48 89 d9             	mov    rcx,rbx
   140002690:	89 c6                	mov    esi,eax
   140002692:	e8 e9 4e 00 00       	call   140007580 <_unlock_file>
   140002697:	89 f0                	mov    eax,esi
   140002699:	48 83 c4 30          	add    rsp,0x30
   14000269d:	5b                   	pop    rbx
   14000269e:	5e                   	pop    rsi
   14000269f:	5f                   	pop    rdi
   1400026a0:	c3                   	ret
   1400026a1:	90                   	nop
   1400026a2:	90                   	nop
   1400026a3:	90                   	nop
   1400026a4:	90                   	nop
   1400026a5:	90                   	nop
   1400026a6:	90                   	nop
   1400026a7:	90                   	nop
   1400026a8:	90                   	nop
   1400026a9:	90                   	nop
   1400026aa:	90                   	nop
   1400026ab:	90                   	nop
   1400026ac:	90                   	nop
   1400026ad:	90                   	nop
   1400026ae:	90                   	nop
   1400026af:	90                   	nop

00000001400026b0 <__pformat_cvt>:
   1400026b0:	48 83 ec 68          	sub    rsp,0x68
   1400026b4:	48 8b 02             	mov    rax,QWORD PTR [rdx]
   1400026b7:	8b 52 08             	mov    edx,DWORD PTR [rdx+0x8]
   1400026ba:	41 89 d2             	mov    r10d,edx
   1400026bd:	41 89 cb             	mov    r11d,ecx
   1400026c0:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
   1400026c5:	48 89 d1             	mov    rcx,rdx
   1400026c8:	89 54 24 58          	mov    DWORD PTR [rsp+0x58],edx
   1400026cc:	66 41 81 e2 ff 7f    	and    r10w,0x7fff
   1400026d2:	75 74                	jne    140002748 <__pformat_cvt+0x98>
   1400026d4:	48 89 c2             	mov    rdx,rax
   1400026d7:	48 c1 ea 20          	shr    rdx,0x20
   1400026db:	09 d0                	or     eax,edx
   1400026dd:	0f 84 8d 00 00 00    	je     140002770 <__pformat_cvt+0xc0>
   1400026e3:	85 d2                	test   edx,edx
   1400026e5:	0f 89 95 00 00 00    	jns    140002780 <__pformat_cvt+0xd0>
   1400026eb:	41 8d 92 c2 bf ff ff 	lea    edx,[r10-0x403e]
   1400026f2:	b8 01 00 00 00       	mov    eax,0x1
   1400026f7:	0f bf d2             	movsx  edx,dx
   1400026fa:	89 44 24 44          	mov    DWORD PTR [rsp+0x44],eax
   1400026fe:	81 e1 00 80 00 00    	and    ecx,0x8000
   140002704:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
   14000270b:	00 
   14000270c:	89 08                	mov    DWORD PTR [rax],ecx
   14000270e:	48 8d 44 24 48       	lea    rax,[rsp+0x48]
   140002713:	48 8d 0d 46 59 00 00 	lea    rcx,[rip+0x5946]        # 140008060 <fpi.0>
   14000271a:	4c 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],r9
   14000271f:	4c 8d 4c 24 44       	lea    r9,[rsp+0x44]
   140002724:	44 89 44 24 28       	mov    DWORD PTR [rsp+0x28],r8d
   140002729:	4c 8d 44 24 50       	lea    r8,[rsp+0x50]
   14000272e:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
   140002733:	44 89 5c 24 20       	mov    DWORD PTR [rsp+0x20],r11d
   140002738:	e8 b3 27 00 00       	call   140004ef0 <__gdtoa>
   14000273d:	48 83 c4 68          	add    rsp,0x68
   140002741:	c3                   	ret
   140002742:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002748:	66 41 81 fa ff 7f    	cmp    r10w,0x7fff
   14000274e:	75 9b                	jne    1400026eb <__pformat_cvt+0x3b>
   140002750:	48 89 c2             	mov    rdx,rax
   140002753:	48 c1 ea 20          	shr    rdx,0x20
   140002757:	81 e2 ff ff ff 7f    	and    edx,0x7fffffff
   14000275d:	09 c2                	or     edx,eax
   14000275f:	74 2f                	je     140002790 <__pformat_cvt+0xe0>
   140002761:	c7 44 24 44 04 00 00 	mov    DWORD PTR [rsp+0x44],0x4
   140002768:	00 
   140002769:	31 d2                	xor    edx,edx
   14000276b:	31 c9                	xor    ecx,ecx
   14000276d:	eb 95                	jmp    140002704 <__pformat_cvt+0x54>
   14000276f:	90                   	nop
   140002770:	31 c0                	xor    eax,eax
   140002772:	31 d2                	xor    edx,edx
   140002774:	eb 84                	jmp    1400026fa <__pformat_cvt+0x4a>
   140002776:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000277d:	00 00 00 
   140002780:	b8 02 00 00 00       	mov    eax,0x2
   140002785:	ba c3 bf ff ff       	mov    edx,0xffffbfc3
   14000278a:	e9 6b ff ff ff       	jmp    1400026fa <__pformat_cvt+0x4a>
   14000278f:	90                   	nop
   140002790:	b8 03 00 00 00       	mov    eax,0x3
   140002795:	31 d2                	xor    edx,edx
   140002797:	e9 5e ff ff ff       	jmp    1400026fa <__pformat_cvt+0x4a>
   14000279c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000001400027a0 <__pformat_putc>:
   1400027a0:	53                   	push   rbx
   1400027a1:	48 83 ec 20          	sub    rsp,0x20
   1400027a5:	48 89 d3             	mov    rbx,rdx
   1400027a8:	8b 52 08             	mov    edx,DWORD PTR [rdx+0x8]
   1400027ab:	f6 c6 40             	test   dh,0x40
   1400027ae:	75 08                	jne    1400027b8 <__pformat_putc+0x18>
   1400027b0:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   1400027b3:	39 43 28             	cmp    DWORD PTR [rbx+0x28],eax
   1400027b6:	7e 12                	jle    1400027ca <__pformat_putc+0x2a>
   1400027b8:	48 8b 03             	mov    rax,QWORD PTR [rbx]
   1400027bb:	80 e6 20             	and    dh,0x20
   1400027be:	75 20                	jne    1400027e0 <__pformat_putc+0x40>
   1400027c0:	48 63 53 24          	movsxd rdx,DWORD PTR [rbx+0x24]
   1400027c4:	88 0c 10             	mov    BYTE PTR [rax+rdx*1],cl
   1400027c7:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   1400027ca:	83 c0 01             	add    eax,0x1
   1400027cd:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   1400027d0:	48 83 c4 20          	add    rsp,0x20
   1400027d4:	5b                   	pop    rbx
   1400027d5:	c3                   	ret
   1400027d6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400027dd:	00 00 00 
   1400027e0:	48 89 c2             	mov    rdx,rax
   1400027e3:	e8 d8 53 00 00       	call   140007bc0 <fputc>
   1400027e8:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   1400027eb:	83 c0 01             	add    eax,0x1
   1400027ee:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   1400027f1:	48 83 c4 20          	add    rsp,0x20
   1400027f5:	5b                   	pop    rbx
   1400027f6:	c3                   	ret
   1400027f7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   1400027fe:	00 00 

0000000140002800 <__pformat_wputchars>:
   140002800:	41 57                	push   r15
   140002802:	41 56                	push   r14
   140002804:	41 55                	push   r13
   140002806:	41 54                	push   r12
   140002808:	55                   	push   rbp
   140002809:	57                   	push   rdi
   14000280a:	56                   	push   rsi
   14000280b:	53                   	push   rbx
   14000280c:	48 83 ec 48          	sub    rsp,0x48
   140002810:	4c 8d 6c 24 28       	lea    r13,[rsp+0x28]
   140002815:	48 8d 7c 24 30       	lea    rdi,[rsp+0x30]
   14000281a:	89 d6                	mov    esi,edx
   14000281c:	4c 89 c3             	mov    rbx,r8
   14000281f:	31 d2                	xor    edx,edx
   140002821:	48 89 cd             	mov    rbp,rcx
   140002824:	4d 89 e8             	mov    r8,r13
   140002827:	48 89 f9             	mov    rcx,rdi
   14000282a:	e8 81 4e 00 00       	call   1400076b0 <wcrtomb>
   14000282f:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   140002832:	39 c6                	cmp    esi,eax
   140002834:	89 c2                	mov    edx,eax
   140002836:	0f 4e d6             	cmovle edx,esi
   140002839:	85 c0                	test   eax,eax
   14000283b:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   14000283e:	0f 49 f2             	cmovns esi,edx
   140002841:	39 f0                	cmp    eax,esi
   140002843:	0f 8f e2 00 00 00    	jg     14000292b <__pformat_wputchars+0x12b>
   140002849:	c7 43 0c ff ff ff ff 	mov    DWORD PTR [rbx+0xc],0xffffffff
   140002850:	44 8d 66 ff          	lea    r12d,[rsi-0x1]
   140002854:	85 f6                	test   esi,esi
   140002856:	0f 8e 29 01 00 00    	jle    140002985 <__pformat_wputchars+0x185>
   14000285c:	31 f6                	xor    esi,esi
   14000285e:	41 83 c4 01          	add    r12d,0x1
   140002862:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002868:	0f b7 54 75 00       	movzx  edx,WORD PTR [rbp+rsi*2+0x0]
   14000286d:	4d 89 e8             	mov    r8,r13
   140002870:	48 89 f9             	mov    rcx,rdi
   140002873:	e8 38 4e 00 00       	call   1400076b0 <wcrtomb>
   140002878:	85 c0                	test   eax,eax
   14000287a:	0f 8e 8d 00 00 00    	jle    14000290d <__pformat_wputchars+0x10d>
   140002880:	83 e8 01             	sub    eax,0x1
   140002883:	49 89 fe             	mov    r14,rdi
   140002886:	4c 8d 7c 07 01       	lea    r15,[rdi+rax*1+0x1]
   14000288b:	eb 18                	jmp    1400028a5 <__pformat_wputchars+0xa5>
   14000288d:	0f 1f 00             	nop    DWORD PTR [rax]
   140002890:	48 63 53 24          	movsxd rdx,DWORD PTR [rbx+0x24]
   140002894:	88 0c 10             	mov    BYTE PTR [rax+rdx*1],cl
   140002897:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   14000289a:	83 c0 01             	add    eax,0x1
   14000289d:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   1400028a0:	4d 39 fe             	cmp    r14,r15
   1400028a3:	74 37                	je     1400028dc <__pformat_wputchars+0xdc>
   1400028a5:	8b 53 08             	mov    edx,DWORD PTR [rbx+0x8]
   1400028a8:	49 83 c6 01          	add    r14,0x1
   1400028ac:	f6 c6 40             	test   dh,0x40
   1400028af:	75 08                	jne    1400028b9 <__pformat_wputchars+0xb9>
   1400028b1:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   1400028b4:	39 43 28             	cmp    DWORD PTR [rbx+0x28],eax
   1400028b7:	7e e1                	jle    14000289a <__pformat_wputchars+0x9a>
   1400028b9:	41 0f be 4e ff       	movsx  ecx,BYTE PTR [r14-0x1]
   1400028be:	48 8b 03             	mov    rax,QWORD PTR [rbx]
   1400028c1:	80 e6 20             	and    dh,0x20
   1400028c4:	74 ca                	je     140002890 <__pformat_wputchars+0x90>
   1400028c6:	48 89 c2             	mov    rdx,rax
   1400028c9:	e8 f2 52 00 00       	call   140007bc0 <fputc>
   1400028ce:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   1400028d1:	83 c0 01             	add    eax,0x1
   1400028d4:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   1400028d7:	4d 39 fe             	cmp    r14,r15
   1400028da:	75 c9                	jne    1400028a5 <__pformat_wputchars+0xa5>
   1400028dc:	48 83 c6 01          	add    rsi,0x1
   1400028e0:	44 89 e0             	mov    eax,r12d
   1400028e3:	29 f0                	sub    eax,esi
   1400028e5:	85 c0                	test   eax,eax
   1400028e7:	0f 8f 7b ff ff ff    	jg     140002868 <__pformat_wputchars+0x68>
   1400028ed:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   1400028f0:	8d 50 ff             	lea    edx,[rax-0x1]
   1400028f3:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   1400028f6:	85 c0                	test   eax,eax
   1400028f8:	7e 20                	jle    14000291a <__pformat_wputchars+0x11a>
   1400028fa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002900:	48 89 da             	mov    rdx,rbx
   140002903:	b9 20 00 00 00       	mov    ecx,0x20
   140002908:	e8 93 fe ff ff       	call   1400027a0 <__pformat_putc>
   14000290d:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140002910:	8d 50 ff             	lea    edx,[rax-0x1]
   140002913:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140002916:	85 c0                	test   eax,eax
   140002918:	7f e6                	jg     140002900 <__pformat_wputchars+0x100>
   14000291a:	48 83 c4 48          	add    rsp,0x48
   14000291e:	5b                   	pop    rbx
   14000291f:	5e                   	pop    rsi
   140002920:	5f                   	pop    rdi
   140002921:	5d                   	pop    rbp
   140002922:	41 5c                	pop    r12
   140002924:	41 5d                	pop    r13
   140002926:	41 5e                	pop    r14
   140002928:	41 5f                	pop    r15
   14000292a:	c3                   	ret
   14000292b:	29 f0                	sub    eax,esi
   14000292d:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   140002930:	f6 43 09 04          	test   BYTE PTR [rbx+0x9],0x4
   140002934:	75 3a                	jne    140002970 <__pformat_wputchars+0x170>
   140002936:	83 e8 01             	sub    eax,0x1
   140002939:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   14000293c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140002940:	48 89 da             	mov    rdx,rbx
   140002943:	b9 20 00 00 00       	mov    ecx,0x20
   140002948:	e8 53 fe ff ff       	call   1400027a0 <__pformat_putc>
   14000294d:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140002950:	8d 50 ff             	lea    edx,[rax-0x1]
   140002953:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140002956:	85 c0                	test   eax,eax
   140002958:	75 e6                	jne    140002940 <__pformat_wputchars+0x140>
   14000295a:	44 8d 66 ff          	lea    r12d,[rsi-0x1]
   14000295e:	85 f6                	test   esi,esi
   140002960:	0f 8f f6 fe ff ff    	jg     14000285c <__pformat_wputchars+0x5c>
   140002966:	eb a5                	jmp    14000290d <__pformat_wputchars+0x10d>
   140002968:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000296f:	00 
   140002970:	44 8d 66 ff          	lea    r12d,[rsi-0x1]
   140002974:	85 f6                	test   esi,esi
   140002976:	0f 8f e0 fe ff ff    	jg     14000285c <__pformat_wputchars+0x5c>
   14000297c:	83 6b 0c 01          	sub    DWORD PTR [rbx+0xc],0x1
   140002980:	e9 7b ff ff ff       	jmp    140002900 <__pformat_wputchars+0x100>
   140002985:	c7 43 0c fe ff ff ff 	mov    DWORD PTR [rbx+0xc],0xfffffffe
   14000298c:	eb 8c                	jmp    14000291a <__pformat_wputchars+0x11a>
   14000298e:	66 90                	xchg   ax,ax

0000000140002990 <__pformat_putchars>:
   140002990:	57                   	push   rdi
   140002991:	56                   	push   rsi
   140002992:	53                   	push   rbx
   140002993:	48 83 ec 20          	sub    rsp,0x20
   140002997:	41 8b 40 10          	mov    eax,DWORD PTR [r8+0x10]
   14000299b:	89 d7                	mov    edi,edx
   14000299d:	39 c2                	cmp    edx,eax
   14000299f:	89 c2                	mov    edx,eax
   1400029a1:	48 89 ce             	mov    rsi,rcx
   1400029a4:	0f 4e d7             	cmovle edx,edi
   1400029a7:	85 c0                	test   eax,eax
   1400029a9:	41 8b 40 0c          	mov    eax,DWORD PTR [r8+0xc]
   1400029ad:	4c 89 c3             	mov    rbx,r8
   1400029b0:	0f 49 fa             	cmovns edi,edx
   1400029b3:	39 f8                	cmp    eax,edi
   1400029b5:	0f 8f bd 00 00 00    	jg     140002a78 <__pformat_putchars+0xe8>
   1400029bb:	41 c7 40 0c ff ff ff 	mov    DWORD PTR [r8+0xc],0xffffffff
   1400029c2:	ff 
   1400029c3:	8d 57 ff             	lea    edx,[rdi-0x1]
   1400029c6:	85 ff                	test   edi,edi
   1400029c8:	0f 84 97 00 00 00    	je     140002a65 <__pformat_putchars+0xd5>
   1400029ce:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
   1400029d1:	8d 7a 01             	lea    edi,[rdx+0x1]
   1400029d4:	48 01 f7             	add    rdi,rsi
   1400029d7:	eb 1f                	jmp    1400029f8 <__pformat_putchars+0x68>
   1400029d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400029e0:	48 63 43 24          	movsxd rax,DWORD PTR [rbx+0x24]
   1400029e4:	88 0c 02             	mov    BYTE PTR [rdx+rax*1],cl
   1400029e7:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   1400029ea:	83 c2 01             	add    edx,0x1
   1400029ed:	89 53 24             	mov    DWORD PTR [rbx+0x24],edx
   1400029f0:	48 39 fe             	cmp    rsi,rdi
   1400029f3:	74 3c                	je     140002a31 <__pformat_putchars+0xa1>
   1400029f5:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
   1400029f8:	48 83 c6 01          	add    rsi,0x1
   1400029fc:	f6 c4 40             	test   ah,0x40
   1400029ff:	75 08                	jne    140002a09 <__pformat_putchars+0x79>
   140002a01:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140002a04:	39 53 28             	cmp    DWORD PTR [rbx+0x28],edx
   140002a07:	7e e1                	jle    1400029ea <__pformat_putchars+0x5a>
   140002a09:	0f be 4e ff          	movsx  ecx,BYTE PTR [rsi-0x1]
   140002a0d:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   140002a10:	f6 c4 20             	test   ah,0x20
   140002a13:	74 cb                	je     1400029e0 <__pformat_putchars+0x50>
   140002a15:	e8 a6 51 00 00       	call   140007bc0 <fputc>
   140002a1a:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140002a1d:	eb cb                	jmp    1400029ea <__pformat_putchars+0x5a>
   140002a1f:	90                   	nop
   140002a20:	48 63 43 24          	movsxd rax,DWORD PTR [rbx+0x24]
   140002a24:	c6 04 02 20          	mov    BYTE PTR [rdx+rax*1],0x20
   140002a28:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140002a2b:	83 c2 01             	add    edx,0x1
   140002a2e:	89 53 24             	mov    DWORD PTR [rbx+0x24],edx
   140002a31:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140002a34:	8d 50 ff             	lea    edx,[rax-0x1]
   140002a37:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140002a3a:	85 c0                	test   eax,eax
   140002a3c:	7e 2e                	jle    140002a6c <__pformat_putchars+0xdc>
   140002a3e:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
   140002a41:	f6 c4 40             	test   ah,0x40
   140002a44:	75 08                	jne    140002a4e <__pformat_putchars+0xbe>
   140002a46:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140002a49:	39 53 28             	cmp    DWORD PTR [rbx+0x28],edx
   140002a4c:	7e dd                	jle    140002a2b <__pformat_putchars+0x9b>
   140002a4e:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   140002a51:	f6 c4 20             	test   ah,0x20
   140002a54:	74 ca                	je     140002a20 <__pformat_putchars+0x90>
   140002a56:	b9 20 00 00 00       	mov    ecx,0x20
   140002a5b:	e8 60 51 00 00       	call   140007bc0 <fputc>
   140002a60:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140002a63:	eb c6                	jmp    140002a2b <__pformat_putchars+0x9b>
   140002a65:	c7 43 0c fe ff ff ff 	mov    DWORD PTR [rbx+0xc],0xfffffffe
   140002a6c:	48 83 c4 20          	add    rsp,0x20
   140002a70:	5b                   	pop    rbx
   140002a71:	5e                   	pop    rsi
   140002a72:	5f                   	pop    rdi
   140002a73:	c3                   	ret
   140002a74:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140002a78:	29 f8                	sub    eax,edi
   140002a7a:	41 89 40 0c          	mov    DWORD PTR [r8+0xc],eax
   140002a7e:	89 c2                	mov    edx,eax
   140002a80:	41 8b 40 08          	mov    eax,DWORD PTR [r8+0x8]
   140002a84:	f6 c4 04             	test   ah,0x4
   140002a87:	75 37                	jne    140002ac0 <__pformat_putchars+0x130>
   140002a89:	8d 42 ff             	lea    eax,[rdx-0x1]
   140002a8c:	41 89 40 0c          	mov    DWORD PTR [r8+0xc],eax
   140002a90:	48 89 da             	mov    rdx,rbx
   140002a93:	b9 20 00 00 00       	mov    ecx,0x20
   140002a98:	e8 03 fd ff ff       	call   1400027a0 <__pformat_putc>
   140002a9d:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140002aa0:	8d 50 ff             	lea    edx,[rax-0x1]
   140002aa3:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140002aa6:	85 c0                	test   eax,eax
   140002aa8:	75 e6                	jne    140002a90 <__pformat_putchars+0x100>
   140002aaa:	8d 57 ff             	lea    edx,[rdi-0x1]
   140002aad:	85 ff                	test   edi,edi
   140002aaf:	0f 85 19 ff ff ff    	jne    1400029ce <__pformat_putchars+0x3e>
   140002ab5:	e9 77 ff ff ff       	jmp    140002a31 <__pformat_putchars+0xa1>
   140002aba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002ac0:	8d 57 ff             	lea    edx,[rdi-0x1]
   140002ac3:	85 ff                	test   edi,edi
   140002ac5:	0f 85 06 ff ff ff    	jne    1400029d1 <__pformat_putchars+0x41>
   140002acb:	83 6b 0c 01          	sub    DWORD PTR [rbx+0xc],0x1
   140002acf:	e9 6d ff ff ff       	jmp    140002a41 <__pformat_putchars+0xb1>
   140002ad4:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140002adb:	00 00 00 00 
   140002adf:	90                   	nop

0000000140002ae0 <__pformat_puts>:
   140002ae0:	56                   	push   rsi
   140002ae1:	53                   	push   rbx
   140002ae2:	48 83 ec 28          	sub    rsp,0x28
   140002ae6:	48 8d 05 63 68 00 00 	lea    rax,[rip+0x6863]        # 140009350 <.rdata>
   140002aed:	48 89 cb             	mov    rbx,rcx
   140002af0:	48 85 c9             	test   rcx,rcx
   140002af3:	48 89 d6             	mov    rsi,rdx
   140002af6:	48 63 52 10          	movsxd rdx,DWORD PTR [rdx+0x10]
   140002afa:	48 0f 44 d8          	cmove  rbx,rax
   140002afe:	48 89 d9             	mov    rcx,rbx
   140002b01:	85 d2                	test   edx,edx
   140002b03:	78 1b                	js     140002b20 <__pformat_puts+0x40>
   140002b05:	e8 76 49 00 00       	call   140007480 <strnlen>
   140002b0a:	49 89 f0             	mov    r8,rsi
   140002b0d:	89 c2                	mov    edx,eax
   140002b0f:	48 89 d9             	mov    rcx,rbx
   140002b12:	48 83 c4 28          	add    rsp,0x28
   140002b16:	5b                   	pop    rbx
   140002b17:	5e                   	pop    rsi
   140002b18:	e9 73 fe ff ff       	jmp    140002990 <__pformat_putchars>
   140002b1d:	0f 1f 00             	nop    DWORD PTR [rax]
   140002b20:	e8 e3 50 00 00       	call   140007c08 <strlen>
   140002b25:	eb e3                	jmp    140002b0a <__pformat_puts+0x2a>
   140002b27:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140002b2e:	00 00 

0000000140002b30 <__pformat_emit_inf_or_nan>:
   140002b30:	48 83 ec 38          	sub    rsp,0x38
   140002b34:	45 8b 50 08          	mov    r10d,DWORD PTR [r8+0x8]
   140002b38:	41 c7 40 10 ff ff ff 	mov    DWORD PTR [r8+0x10],0xffffffff
   140002b3f:	ff 
   140002b40:	85 c9                	test   ecx,ecx
   140002b42:	75 5c                	jne    140002ba0 <__pformat_emit_inf_or_nan+0x70>
   140002b44:	b8 2b 00 00 00       	mov    eax,0x2b
   140002b49:	41 f7 c2 00 01 00 00 	test   r10d,0x100
   140002b50:	75 53                	jne    140002ba5 <__pformat_emit_inf_or_nan+0x75>
   140002b52:	41 f6 c2 40          	test   r10b,0x40
   140002b56:	74 60                	je     140002bb8 <__pformat_emit_inf_or_nan+0x88>
   140002b58:	b8 20 00 00 00       	mov    eax,0x20
   140002b5d:	4c 8d 4c 24 2d       	lea    r9,[rsp+0x2d]
   140002b62:	4c 8d 5c 24 2c       	lea    r11,[rsp+0x2c]
   140002b67:	88 44 24 2c          	mov    BYTE PTR [rsp+0x2c],al
   140002b6b:	41 83 e2 20          	and    r10d,0x20
   140002b6f:	31 c9                	xor    ecx,ecx
   140002b71:	0f b6 04 0a          	movzx  eax,BYTE PTR [rdx+rcx*1]
   140002b75:	83 e0 df             	and    eax,0xffffffdf
   140002b78:	44 09 d0             	or     eax,r10d
   140002b7b:	41 88 04 09          	mov    BYTE PTR [r9+rcx*1],al
   140002b7f:	48 83 c1 01          	add    rcx,0x1
   140002b83:	48 83 f9 03          	cmp    rcx,0x3
   140002b87:	75 e8                	jne    140002b71 <__pformat_emit_inf_or_nan+0x41>
   140002b89:	49 8d 51 03          	lea    rdx,[r9+0x3]
   140002b8d:	4c 89 d9             	mov    rcx,r11
   140002b90:	44 29 da             	sub    edx,r11d
   140002b93:	e8 f8 fd ff ff       	call   140002990 <__pformat_putchars>
   140002b98:	90                   	nop
   140002b99:	48 83 c4 38          	add    rsp,0x38
   140002b9d:	c3                   	ret
   140002b9e:	66 90                	xchg   ax,ax
   140002ba0:	b8 2d 00 00 00       	mov    eax,0x2d
   140002ba5:	88 44 24 2c          	mov    BYTE PTR [rsp+0x2c],al
   140002ba9:	4c 8d 4c 24 2d       	lea    r9,[rsp+0x2d]
   140002bae:	4c 8d 5c 24 2c       	lea    r11,[rsp+0x2c]
   140002bb3:	eb b6                	jmp    140002b6b <__pformat_emit_inf_or_nan+0x3b>
   140002bb5:	0f 1f 00             	nop    DWORD PTR [rax]
   140002bb8:	4c 8d 5c 24 2c       	lea    r11,[rsp+0x2c]
   140002bbd:	4d 89 d9             	mov    r9,r11
   140002bc0:	eb a9                	jmp    140002b6b <__pformat_emit_inf_or_nan+0x3b>
   140002bc2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140002bc9:	00 00 00 00 
   140002bcd:	0f 1f 00             	nop    DWORD PTR [rax]

0000000140002bd0 <__pformat_xint.isra.0>:
   140002bd0:	55                   	push   rbp
   140002bd1:	41 57                	push   r15
   140002bd3:	41 56                	push   r14
   140002bd5:	41 55                	push   r13
   140002bd7:	41 54                	push   r12
   140002bd9:	57                   	push   rdi
   140002bda:	56                   	push   rsi
   140002bdb:	53                   	push   rbx
   140002bdc:	48 83 ec 28          	sub    rsp,0x28
   140002be0:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   140002be5:	41 89 ce             	mov    r14d,ecx
   140002be8:	4c 89 c3             	mov    rbx,r8
   140002beb:	83 f9 6f             	cmp    ecx,0x6f
   140002bee:	0f 84 fc 02 00 00    	je     140002ef0 <__pformat_xint.isra.0+0x320>
   140002bf4:	45 8b 78 10          	mov    r15d,DWORD PTR [r8+0x10]
   140002bf8:	31 c0                	xor    eax,eax
   140002bfa:	41 8b 78 08          	mov    edi,DWORD PTR [r8+0x8]
   140002bfe:	45 85 ff             	test   r15d,r15d
   140002c01:	41 0f 49 c7          	cmovns eax,r15d
   140002c05:	83 c0 12             	add    eax,0x12
   140002c08:	f7 c7 00 10 00 00    	test   edi,0x1000
   140002c0e:	0f 84 9c 00 00 00    	je     140002cb0 <__pformat_xint.isra.0+0xe0>
   140002c14:	b9 04 00 00 00       	mov    ecx,0x4
   140002c19:	66 83 7b 20 00       	cmp    WORD PTR [rbx+0x20],0x0
   140002c1e:	74 14                	je     140002c34 <__pformat_xint.isra.0+0x64>
   140002c20:	41 89 c0             	mov    r8d,eax
   140002c23:	41 b9 ab aa aa aa    	mov    r9d,0xaaaaaaab
   140002c29:	4d 0f af c1          	imul   r8,r9
   140002c2d:	49 c1 e8 21          	shr    r8,0x21
   140002c31:	44 01 c0             	add    eax,r8d
   140002c34:	44 8b 63 0c          	mov    r12d,DWORD PTR [rbx+0xc]
   140002c38:	41 39 c4             	cmp    r12d,eax
   140002c3b:	41 0f 4d c4          	cmovge eax,r12d
   140002c3f:	48 98                	cdqe
   140002c41:	48 83 c0 0f          	add    rax,0xf
   140002c45:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   140002c49:	e8 d2 f9 ff ff       	call   140002620 <___chkstk_ms>
   140002c4e:	45 31 c0             	xor    r8d,r8d
   140002c51:	48 29 c4             	sub    rsp,rax
   140002c54:	41 83 fe 6f          	cmp    r14d,0x6f
   140002c58:	4c 8d 6c 24 20       	lea    r13,[rsp+0x20]
   140002c5d:	41 0f 95 c0          	setne  r8b
   140002c61:	46 8d 04 c5 07 00 00 	lea    r8d,[r8*8+0x7]
   140002c68:	00 
   140002c69:	4c 89 ee             	mov    rsi,r13
   140002c6c:	48 85 d2             	test   rdx,rdx
   140002c6f:	75 74                	jne    140002ce5 <__pformat_xint.isra.0+0x115>
   140002c71:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002c78:	81 e7 ff f7 ff ff    	and    edi,0xfffff7ff
   140002c7e:	89 7b 08             	mov    DWORD PTR [rbx+0x8],edi
   140002c81:	45 85 ff             	test   r15d,r15d
   140002c84:	0f 8f a1 00 00 00    	jg     140002d2b <__pformat_xint.isra.0+0x15b>
   140002c8a:	41 83 fe 6f          	cmp    r14d,0x6f
   140002c8e:	0f 85 c2 00 00 00    	jne    140002d56 <__pformat_xint.isra.0+0x186>
   140002c94:	f6 43 09 08          	test   BYTE PTR [rbx+0x9],0x8
   140002c98:	0f 84 b8 00 00 00    	je     140002d56 <__pformat_xint.isra.0+0x186>
   140002c9e:	c6 06 30             	mov    BYTE PTR [rsi],0x30
   140002ca1:	48 83 c6 01          	add    rsi,0x1
   140002ca5:	e9 ac 00 00 00       	jmp    140002d56 <__pformat_xint.isra.0+0x186>
   140002caa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002cb0:	44 8b 63 0c          	mov    r12d,DWORD PTR [rbx+0xc]
   140002cb4:	41 39 c4             	cmp    r12d,eax
   140002cb7:	41 0f 4d c4          	cmovge eax,r12d
   140002cbb:	48 98                	cdqe
   140002cbd:	48 83 c0 0f          	add    rax,0xf
   140002cc1:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   140002cc5:	e8 56 f9 ff ff       	call   140002620 <___chkstk_ms>
   140002cca:	b9 04 00 00 00       	mov    ecx,0x4
   140002ccf:	41 b8 0f 00 00 00    	mov    r8d,0xf
   140002cd5:	48 29 c4             	sub    rsp,rax
   140002cd8:	4c 8d 6c 24 20       	lea    r13,[rsp+0x20]
   140002cdd:	4c 89 ee             	mov    rsi,r13
   140002ce0:	48 85 d2             	test   rdx,rdx
   140002ce3:	74 93                	je     140002c78 <__pformat_xint.isra.0+0xa8>
   140002ce5:	45 89 f1             	mov    r9d,r14d
   140002ce8:	41 83 e1 20          	and    r9d,0x20
   140002cec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140002cf0:	44 89 c0             	mov    eax,r8d
   140002cf3:	48 83 c6 01          	add    rsi,0x1
   140002cf7:	21 d0                	and    eax,edx
   140002cf9:	44 8d 50 30          	lea    r10d,[rax+0x30]
   140002cfd:	83 c0 37             	add    eax,0x37
   140002d00:	44 09 c8             	or     eax,r9d
   140002d03:	45 89 d3             	mov    r11d,r10d
   140002d06:	41 80 fa 39          	cmp    r10b,0x39
   140002d0a:	41 0f 46 c3          	cmovbe eax,r11d
   140002d0e:	48 d3 ea             	shr    rdx,cl
   140002d11:	88 46 ff             	mov    BYTE PTR [rsi-0x1],al
   140002d14:	48 85 d2             	test   rdx,rdx
   140002d17:	75 d7                	jne    140002cf0 <__pformat_xint.isra.0+0x120>
   140002d19:	4c 39 ee             	cmp    rsi,r13
   140002d1c:	0f 84 56 ff ff ff    	je     140002c78 <__pformat_xint.isra.0+0xa8>
   140002d22:	45 85 ff             	test   r15d,r15d
   140002d25:	0f 8e 5f ff ff ff    	jle    140002c8a <__pformat_xint.isra.0+0xba>
   140002d2b:	48 89 f0             	mov    rax,rsi
   140002d2e:	45 89 f8             	mov    r8d,r15d
   140002d31:	4c 29 e8             	sub    rax,r13
   140002d34:	41 29 c0             	sub    r8d,eax
   140002d37:	45 85 c0             	test   r8d,r8d
   140002d3a:	0f 8e f0 01 00 00    	jle    140002f30 <__pformat_xint.isra.0+0x360>
   140002d40:	49 63 f8             	movsxd rdi,r8d
   140002d43:	48 89 f1             	mov    rcx,rsi
   140002d46:	ba 30 00 00 00       	mov    edx,0x30
   140002d4b:	49 89 f8             	mov    r8,rdi
   140002d4e:	48 01 fe             	add    rsi,rdi
   140002d51:	e8 9a 4e 00 00       	call   140007bf0 <memset>
   140002d56:	4c 39 ee             	cmp    rsi,r13
   140002d59:	75 09                	jne    140002d64 <__pformat_xint.isra.0+0x194>
   140002d5b:	45 85 ff             	test   r15d,r15d
   140002d5e:	0f 85 94 02 00 00    	jne    140002ff8 <__pformat_xint.isra.0+0x428>
   140002d64:	48 89 f0             	mov    rax,rsi
   140002d67:	4c 29 e8             	sub    rax,r13
   140002d6a:	44 39 e0             	cmp    eax,r12d
   140002d6d:	7c 59                	jl     140002dc8 <__pformat_xint.isra.0+0x1f8>
   140002d6f:	c7 43 0c ff ff ff ff 	mov    DWORD PTR [rbx+0xc],0xffffffff
   140002d76:	41 83 fe 6f          	cmp    r14d,0x6f
   140002d7a:	0f 84 90 02 00 00    	je     140003010 <__pformat_xint.isra.0+0x440>
   140002d80:	f6 43 09 08          	test   BYTE PTR [rbx+0x9],0x8
   140002d84:	74 0b                	je     140002d91 <__pformat_xint.isra.0+0x1c1>
   140002d86:	44 88 36             	mov    BYTE PTR [rsi],r14b
   140002d89:	48 83 c6 02          	add    rsi,0x2
   140002d8d:	c6 46 ff 30          	mov    BYTE PTR [rsi-0x1],0x30
   140002d91:	41 bc ff ff ff ff    	mov    r12d,0xffffffff
   140002d97:	49 39 f5             	cmp    r13,rsi
   140002d9a:	73 14                	jae    140002db0 <__pformat_xint.isra.0+0x1e0>
   140002d9c:	8b 7b 08             	mov    edi,DWORD PTR [rbx+0x8]
   140002d9f:	45 8d 74 24 ff       	lea    r14d,[r12-0x1]
   140002da4:	e9 b7 00 00 00       	jmp    140002e60 <__pformat_xint.isra.0+0x290>
   140002da9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002db0:	48 8d 65 08          	lea    rsp,[rbp+0x8]
   140002db4:	5b                   	pop    rbx
   140002db5:	5e                   	pop    rsi
   140002db6:	5f                   	pop    rdi
   140002db7:	41 5c                	pop    r12
   140002db9:	41 5d                	pop    r13
   140002dbb:	41 5e                	pop    r14
   140002dbd:	41 5f                	pop    r15
   140002dbf:	5d                   	pop    rbp
   140002dc0:	c3                   	ret
   140002dc1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002dc8:	41 29 c4             	sub    r12d,eax
   140002dcb:	8b 7b 08             	mov    edi,DWORD PTR [rbx+0x8]
   140002dce:	44 89 63 0c          	mov    DWORD PTR [rbx+0xc],r12d
   140002dd2:	41 83 fe 6f          	cmp    r14d,0x6f
   140002dd6:	74 28                	je     140002e00 <__pformat_xint.isra.0+0x230>
   140002dd8:	f7 c7 00 08 00 00    	test   edi,0x800
   140002dde:	74 20                	je     140002e00 <__pformat_xint.isra.0+0x230>
   140002de0:	41 83 ec 02          	sub    r12d,0x2
   140002de4:	45 85 e4             	test   r12d,r12d
   140002de7:	0f 8f 4c 02 00 00    	jg     140003039 <__pformat_xint.isra.0+0x469>
   140002ded:	44 88 36             	mov    BYTE PTR [rsi],r14b
   140002df0:	48 83 c6 02          	add    rsi,0x2
   140002df4:	c6 46 ff 30          	mov    BYTE PTR [rsi-0x1],0x30
   140002df8:	eb 9d                	jmp    140002d97 <__pformat_xint.isra.0+0x1c7>
   140002dfa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002e00:	45 85 ff             	test   r15d,r15d
   140002e03:	0f 88 9f 01 00 00    	js     140002fa8 <__pformat_xint.isra.0+0x3d8>
   140002e09:	45 8d 74 24 ff       	lea    r14d,[r12-0x1]
   140002e0e:	f7 c7 00 04 00 00    	test   edi,0x400
   140002e14:	0f 85 06 01 00 00    	jne    140002f20 <__pformat_xint.isra.0+0x350>
   140002e1a:	45 89 f4             	mov    r12d,r14d
   140002e1d:	0f 1f 00             	nop    DWORD PTR [rax]
   140002e20:	48 89 da             	mov    rdx,rbx
   140002e23:	b9 20 00 00 00       	mov    ecx,0x20
   140002e28:	e8 73 f9 ff ff       	call   1400027a0 <__pformat_putc>
   140002e2d:	41 83 ec 01          	sub    r12d,0x1
   140002e31:	73 ed                	jae    140002e20 <__pformat_xint.isra.0+0x250>
   140002e33:	41 be fe ff ff ff    	mov    r14d,0xfffffffe
   140002e39:	49 39 f5             	cmp    r13,rsi
   140002e3c:	72 1f                	jb     140002e5d <__pformat_xint.isra.0+0x28d>
   140002e3e:	e9 6d ff ff ff       	jmp    140002db0 <__pformat_xint.isra.0+0x1e0>
   140002e43:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140002e48:	48 63 43 24          	movsxd rax,DWORD PTR [rbx+0x24]
   140002e4c:	88 0c 02             	mov    BYTE PTR [rdx+rax*1],cl
   140002e4f:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   140002e52:	83 c0 01             	add    eax,0x1
   140002e55:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   140002e58:	49 39 f5             	cmp    r13,rsi
   140002e5b:	73 38                	jae    140002e95 <__pformat_xint.isra.0+0x2c5>
   140002e5d:	8b 7b 08             	mov    edi,DWORD PTR [rbx+0x8]
   140002e60:	48 83 ee 01          	sub    rsi,0x1
   140002e64:	f7 c7 00 40 00 00    	test   edi,0x4000
   140002e6a:	75 08                	jne    140002e74 <__pformat_xint.isra.0+0x2a4>
   140002e6c:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   140002e6f:	39 43 28             	cmp    DWORD PTR [rbx+0x28],eax
   140002e72:	7e de                	jle    140002e52 <__pformat_xint.isra.0+0x282>
   140002e74:	81 e7 00 20 00 00    	and    edi,0x2000
   140002e7a:	0f be 0e             	movsx  ecx,BYTE PTR [rsi]
   140002e7d:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   140002e80:	74 c6                	je     140002e48 <__pformat_xint.isra.0+0x278>
   140002e82:	e8 39 4d 00 00       	call   140007bc0 <fputc>
   140002e87:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   140002e8a:	83 c0 01             	add    eax,0x1
   140002e8d:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   140002e90:	49 39 f5             	cmp    r13,rsi
   140002e93:	72 c8                	jb     140002e5d <__pformat_xint.isra.0+0x28d>
   140002e95:	45 85 e4             	test   r12d,r12d
   140002e98:	7f 27                	jg     140002ec1 <__pformat_xint.isra.0+0x2f1>
   140002e9a:	e9 11 ff ff ff       	jmp    140002db0 <__pformat_xint.isra.0+0x1e0>
   140002e9f:	90                   	nop
   140002ea0:	48 63 43 24          	movsxd rax,DWORD PTR [rbx+0x24]
   140002ea4:	c6 04 02 20          	mov    BYTE PTR [rdx+rax*1],0x20
   140002ea8:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   140002eab:	83 c0 01             	add    eax,0x1
   140002eae:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   140002eb1:	41 8d 46 ff          	lea    eax,[r14-0x1]
   140002eb5:	45 85 f6             	test   r14d,r14d
   140002eb8:	0f 8e f2 fe ff ff    	jle    140002db0 <__pformat_xint.isra.0+0x1e0>
   140002ebe:	41 89 c6             	mov    r14d,eax
   140002ec1:	8b 7b 08             	mov    edi,DWORD PTR [rbx+0x8]
   140002ec4:	f7 c7 00 40 00 00    	test   edi,0x4000
   140002eca:	75 08                	jne    140002ed4 <__pformat_xint.isra.0+0x304>
   140002ecc:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   140002ecf:	39 43 28             	cmp    DWORD PTR [rbx+0x28],eax
   140002ed2:	7e d7                	jle    140002eab <__pformat_xint.isra.0+0x2db>
   140002ed4:	81 e7 00 20 00 00    	and    edi,0x2000
   140002eda:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   140002edd:	74 c1                	je     140002ea0 <__pformat_xint.isra.0+0x2d0>
   140002edf:	b9 20 00 00 00       	mov    ecx,0x20
   140002ee4:	e8 d7 4c 00 00       	call   140007bc0 <fputc>
   140002ee9:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   140002eec:	eb bd                	jmp    140002eab <__pformat_xint.isra.0+0x2db>
   140002eee:	66 90                	xchg   ax,ax
   140002ef0:	45 8b 78 10          	mov    r15d,DWORD PTR [r8+0x10]
   140002ef4:	31 c0                	xor    eax,eax
   140002ef6:	41 8b 78 08          	mov    edi,DWORD PTR [r8+0x8]
   140002efa:	45 85 ff             	test   r15d,r15d
   140002efd:	41 0f 49 c7          	cmovns eax,r15d
   140002f01:	83 c0 18             	add    eax,0x18
   140002f04:	f7 c7 00 10 00 00    	test   edi,0x1000
   140002f0a:	74 64                	je     140002f70 <__pformat_xint.isra.0+0x3a0>
   140002f0c:	b9 03 00 00 00       	mov    ecx,0x3
   140002f11:	e9 03 fd ff ff       	jmp    140002c19 <__pformat_xint.isra.0+0x49>
   140002f16:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   140002f1d:	00 00 00 
   140002f20:	49 39 f5             	cmp    r13,rsi
   140002f23:	0f 82 37 ff ff ff    	jb     140002e60 <__pformat_xint.isra.0+0x290>
   140002f29:	eb 99                	jmp    140002ec4 <__pformat_xint.isra.0+0x2f4>
   140002f2b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140002f30:	41 83 fe 6f          	cmp    r14d,0x6f
   140002f34:	0f 84 5a fd ff ff    	je     140002c94 <__pformat_xint.isra.0+0xc4>
   140002f3a:	4c 39 ee             	cmp    rsi,r13
   140002f3d:	0f 84 b5 00 00 00    	je     140002ff8 <__pformat_xint.isra.0+0x428>
   140002f43:	44 39 e0             	cmp    eax,r12d
   140002f46:	0f 8d e1 00 00 00    	jge    14000302d <__pformat_xint.isra.0+0x45d>
   140002f4c:	8b 7b 08             	mov    edi,DWORD PTR [rbx+0x8]
   140002f4f:	41 29 c4             	sub    r12d,eax
   140002f52:	44 89 63 0c          	mov    DWORD PTR [rbx+0xc],r12d
   140002f56:	f7 c7 00 08 00 00    	test   edi,0x800
   140002f5c:	0f 85 7e fe ff ff    	jne    140002de0 <__pformat_xint.isra.0+0x210>
   140002f62:	e9 a2 fe ff ff       	jmp    140002e09 <__pformat_xint.isra.0+0x239>
   140002f67:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140002f6e:	00 00 
   140002f70:	44 8b 63 0c          	mov    r12d,DWORD PTR [rbx+0xc]
   140002f74:	41 39 c4             	cmp    r12d,eax
   140002f77:	41 0f 4d c4          	cmovge eax,r12d
   140002f7b:	48 98                	cdqe
   140002f7d:	48 83 c0 0f          	add    rax,0xf
   140002f81:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   140002f85:	e8 96 f6 ff ff       	call   140002620 <___chkstk_ms>
   140002f8a:	b9 03 00 00 00       	mov    ecx,0x3
   140002f8f:	41 b8 07 00 00 00    	mov    r8d,0x7
   140002f95:	48 29 c4             	sub    rsp,rax
   140002f98:	4c 8d 6c 24 20       	lea    r13,[rsp+0x20]
   140002f9d:	e9 3b fd ff ff       	jmp    140002cdd <__pformat_xint.isra.0+0x10d>
   140002fa2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002fa8:	89 f8                	mov    eax,edi
   140002faa:	25 00 06 00 00       	and    eax,0x600
   140002faf:	3d 00 02 00 00       	cmp    eax,0x200
   140002fb4:	0f 85 4f fe ff ff    	jne    140002e09 <__pformat_xint.isra.0+0x239>
   140002fba:	4d 63 e4             	movsxd r12,r12d
   140002fbd:	48 89 f1             	mov    rcx,rsi
   140002fc0:	ba 30 00 00 00       	mov    edx,0x30
   140002fc5:	4d 89 e0             	mov    r8,r12
   140002fc8:	4c 01 e6             	add    rsi,r12
   140002fcb:	e8 20 4c 00 00       	call   140007bf0 <memset>
   140002fd0:	41 83 fe 6f          	cmp    r14d,0x6f
   140002fd4:	0f 84 b7 fd ff ff    	je     140002d91 <__pformat_xint.isra.0+0x1c1>
   140002fda:	81 e7 00 08 00 00    	and    edi,0x800
   140002fe0:	41 bc ff ff ff ff    	mov    r12d,0xffffffff
   140002fe6:	0f 84 ab fd ff ff    	je     140002d97 <__pformat_xint.isra.0+0x1c7>
   140002fec:	e9 fc fd ff ff       	jmp    140002ded <__pformat_xint.isra.0+0x21d>
   140002ff1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002ff8:	48 8d 56 01          	lea    rdx,[rsi+0x1]
   140002ffc:	c6 06 30             	mov    BYTE PTR [rsi],0x30
   140002fff:	48 89 d0             	mov    rax,rdx
   140003002:	48 89 d6             	mov    rsi,rdx
   140003005:	4c 29 e8             	sub    rax,r13
   140003008:	e9 5d fd ff ff       	jmp    140002d6a <__pformat_xint.isra.0+0x19a>
   14000300d:	0f 1f 00             	nop    DWORD PTR [rax]
   140003010:	49 39 f5             	cmp    r13,rsi
   140003013:	0f 83 97 fd ff ff    	jae    140002db0 <__pformat_xint.isra.0+0x1e0>
   140003019:	8b 7b 08             	mov    edi,DWORD PTR [rbx+0x8]
   14000301c:	41 be fe ff ff ff    	mov    r14d,0xfffffffe
   140003022:	41 bc ff ff ff ff    	mov    r12d,0xffffffff
   140003028:	e9 33 fe ff ff       	jmp    140002e60 <__pformat_xint.isra.0+0x290>
   14000302d:	c7 43 0c ff ff ff ff 	mov    DWORD PTR [rbx+0xc],0xffffffff
   140003034:	e9 47 fd ff ff       	jmp    140002d80 <__pformat_xint.isra.0+0x1b0>
   140003039:	45 85 ff             	test   r15d,r15d
   14000303c:	78 10                	js     14000304e <__pformat_xint.isra.0+0x47e>
   14000303e:	44 88 36             	mov    BYTE PTR [rsi],r14b
   140003041:	48 83 c6 02          	add    rsi,0x2
   140003045:	c6 46 ff 30          	mov    BYTE PTR [rsi-0x1],0x30
   140003049:	e9 bb fd ff ff       	jmp    140002e09 <__pformat_xint.isra.0+0x239>
   14000304e:	89 f8                	mov    eax,edi
   140003050:	25 00 06 00 00       	and    eax,0x600
   140003055:	3d 00 02 00 00       	cmp    eax,0x200
   14000305a:	75 e2                	jne    14000303e <__pformat_xint.isra.0+0x46e>
   14000305c:	4d 63 e4             	movsxd r12,r12d
   14000305f:	48 89 f1             	mov    rcx,rsi
   140003062:	ba 30 00 00 00       	mov    edx,0x30
   140003067:	4d 89 e0             	mov    r8,r12
   14000306a:	4c 01 e6             	add    rsi,r12
   14000306d:	e8 7e 4b 00 00       	call   140007bf0 <memset>
   140003072:	e9 63 ff ff ff       	jmp    140002fda <__pformat_xint.isra.0+0x40a>
   140003077:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000307e:	00 00 

0000000140003080 <__pformat_int.isra.0>:
   140003080:	55                   	push   rbp
   140003081:	41 57                	push   r15
   140003083:	41 56                	push   r14
   140003085:	41 55                	push   r13
   140003087:	41 54                	push   r12
   140003089:	57                   	push   rdi
   14000308a:	56                   	push   rsi
   14000308b:	53                   	push   rbx
   14000308c:	48 83 ec 28          	sub    rsp,0x28
   140003090:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   140003095:	31 c0                	xor    eax,eax
   140003097:	44 8b 72 10          	mov    r14d,DWORD PTR [rdx+0x10]
   14000309b:	44 8b 62 08          	mov    r12d,DWORD PTR [rdx+0x8]
   14000309f:	45 85 f6             	test   r14d,r14d
   1400030a2:	41 0f 49 c6          	cmovns eax,r14d
   1400030a6:	48 89 d3             	mov    rbx,rdx
   1400030a9:	83 c0 17             	add    eax,0x17
   1400030ac:	41 f7 c4 00 10 00 00 	test   r12d,0x1000
   1400030b3:	74 0b                	je     1400030c0 <__pformat_int.isra.0+0x40>
   1400030b5:	66 83 7a 20 00       	cmp    WORD PTR [rdx+0x20],0x0
   1400030ba:	0f 85 48 02 00 00    	jne    140003308 <__pformat_int.isra.0+0x288>
   1400030c0:	8b 73 0c             	mov    esi,DWORD PTR [rbx+0xc]
   1400030c3:	39 c6                	cmp    esi,eax
   1400030c5:	0f 4d c6             	cmovge eax,esi
   1400030c8:	48 98                	cdqe
   1400030ca:	48 83 c0 0f          	add    rax,0xf
   1400030ce:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   1400030d2:	e8 49 f5 ff ff       	call   140002620 <___chkstk_ms>
   1400030d7:	48 29 c4             	sub    rsp,rax
   1400030da:	4c 8d 6c 24 20       	lea    r13,[rsp+0x20]
   1400030df:	41 f6 c4 80          	test   r12b,0x80
   1400030e3:	74 11                	je     1400030f6 <__pformat_int.isra.0+0x76>
   1400030e5:	48 85 c9             	test   rcx,rcx
   1400030e8:	0f 88 72 02 00 00    	js     140003360 <__pformat_int.isra.0+0x2e0>
   1400030ee:	41 80 e4 7f          	and    r12b,0x7f
   1400030f2:	44 89 63 08          	mov    DWORD PTR [rbx+0x8],r12d
   1400030f6:	4c 89 ef             	mov    rdi,r13
   1400030f9:	48 85 c9             	test   rcx,rcx
   1400030fc:	0f 84 8e 00 00 00    	je     140003190 <__pformat_int.isra.0+0x110>
   140003102:	49 b9 cd cc cc cc cc 	movabs r9,0xcccccccccccccccd
   140003109:	cc cc cc 
   14000310c:	45 89 e2             	mov    r10d,r12d
   14000310f:	4d 89 e8             	mov    r8,r13
   140003112:	49 bb 03 00 00 00 00 	movabs r11,0x8000000000000003
   140003119:	00 00 80 
   14000311c:	41 81 e2 00 10 00 00 	and    r10d,0x1000
   140003123:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003128:	48 89 c8             	mov    rax,rcx
   14000312b:	49 8d 78 01          	lea    rdi,[r8+0x1]
   14000312f:	49 f7 e1             	mul    r9
   140003132:	48 89 c8             	mov    rax,rcx
   140003135:	48 c1 ea 03          	shr    rdx,0x3
   140003139:	4c 8d 3c 92          	lea    r15,[rdx+rdx*4]
   14000313d:	4d 01 ff             	add    r15,r15
   140003140:	4c 29 f8             	sub    rax,r15
   140003143:	83 c0 30             	add    eax,0x30
   140003146:	41 88 00             	mov    BYTE PTR [r8],al
   140003149:	48 83 f9 09          	cmp    rcx,0x9
   14000314d:	76 41                	jbe    140003190 <__pformat_int.isra.0+0x110>
   14000314f:	49 39 fd             	cmp    r13,rdi
   140003152:	74 2c                	je     140003180 <__pformat_int.isra.0+0x100>
   140003154:	45 85 d2             	test   r10d,r10d
   140003157:	74 27                	je     140003180 <__pformat_int.isra.0+0x100>
   140003159:	66 83 7b 20 00       	cmp    WORD PTR [rbx+0x20],0x0
   14000315e:	74 20                	je     140003180 <__pformat_int.isra.0+0x100>
   140003160:	48 89 f8             	mov    rax,rdi
   140003163:	4c 29 e8             	sub    rax,r13
   140003166:	4c 21 d8             	and    rax,r11
   140003169:	48 83 f8 03          	cmp    rax,0x3
   14000316d:	75 11                	jne    140003180 <__pformat_int.isra.0+0x100>
   14000316f:	c6 07 2c             	mov    BYTE PTR [rdi],0x2c
   140003172:	49 8d 78 02          	lea    rdi,[r8+0x2]
   140003176:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000317d:	00 00 00 
   140003180:	48 89 d1             	mov    rcx,rdx
   140003183:	49 89 f8             	mov    r8,rdi
   140003186:	eb a0                	jmp    140003128 <__pformat_int.isra.0+0xa8>
   140003188:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000318f:	00 
   140003190:	45 85 f6             	test   r14d,r14d
   140003193:	7e 2b                	jle    1400031c0 <__pformat_int.isra.0+0x140>
   140003195:	48 89 f8             	mov    rax,rdi
   140003198:	45 89 f0             	mov    r8d,r14d
   14000319b:	4c 29 e8             	sub    rax,r13
   14000319e:	41 29 c0             	sub    r8d,eax
   1400031a1:	45 85 c0             	test   r8d,r8d
   1400031a4:	0f 8e 96 01 00 00    	jle    140003340 <__pformat_int.isra.0+0x2c0>
   1400031aa:	4d 63 f8             	movsxd r15,r8d
   1400031ad:	48 89 f9             	mov    rcx,rdi
   1400031b0:	ba 30 00 00 00       	mov    edx,0x30
   1400031b5:	4d 89 f8             	mov    r8,r15
   1400031b8:	4c 01 ff             	add    rdi,r15
   1400031bb:	e8 30 4a 00 00       	call   140007bf0 <memset>
   1400031c0:	49 39 fd             	cmp    r13,rdi
   1400031c3:	75 0c                	jne    1400031d1 <__pformat_int.isra.0+0x151>
   1400031c5:	48 89 f8             	mov    rax,rdi
   1400031c8:	45 85 f6             	test   r14d,r14d
   1400031cb:	0f 85 7b 01 00 00    	jne    14000334c <__pformat_int.isra.0+0x2cc>
   1400031d1:	85 f6                	test   esi,esi
   1400031d3:	7e 3b                	jle    140003210 <__pformat_int.isra.0+0x190>
   1400031d5:	48 89 f8             	mov    rax,rdi
   1400031d8:	4c 29 e8             	sub    rax,r13
   1400031db:	29 c6                	sub    esi,eax
   1400031dd:	89 73 0c             	mov    DWORD PTR [rbx+0xc],esi
   1400031e0:	85 f6                	test   esi,esi
   1400031e2:	7e 2c                	jle    140003210 <__pformat_int.isra.0+0x190>
   1400031e4:	41 f7 c4 c0 01 00 00 	test   r12d,0x1c0
   1400031eb:	0f 85 7f 01 00 00    	jne    140003370 <__pformat_int.isra.0+0x2f0>
   1400031f1:	45 85 f6             	test   r14d,r14d
   1400031f4:	0f 88 85 01 00 00    	js     14000337f <__pformat_int.isra.0+0x2ff>
   1400031fa:	41 f7 c4 00 04 00 00 	test   r12d,0x400
   140003201:	0f 84 c1 01 00 00    	je     1400033c8 <__pformat_int.isra.0+0x348>
   140003207:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000320e:	00 00 
   140003210:	41 f6 c4 80          	test   r12b,0x80
   140003214:	0f 84 d6 00 00 00    	je     1400032f0 <__pformat_int.isra.0+0x270>
   14000321a:	c6 07 2d             	mov    BYTE PTR [rdi],0x2d
   14000321d:	48 8d 77 01          	lea    rsi,[rdi+0x1]
   140003221:	49 39 f5             	cmp    r13,rsi
   140003224:	72 23                	jb     140003249 <__pformat_int.isra.0+0x1c9>
   140003226:	eb 58                	jmp    140003280 <__pformat_int.isra.0+0x200>
   140003228:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000322f:	00 
   140003230:	48 63 43 24          	movsxd rax,DWORD PTR [rbx+0x24]
   140003234:	88 0c 02             	mov    BYTE PTR [rdx+rax*1],cl
   140003237:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   14000323a:	83 c0 01             	add    eax,0x1
   14000323d:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   140003240:	49 39 f5             	cmp    r13,rsi
   140003243:	74 3b                	je     140003280 <__pformat_int.isra.0+0x200>
   140003245:	44 8b 63 08          	mov    r12d,DWORD PTR [rbx+0x8]
   140003249:	48 83 ee 01          	sub    rsi,0x1
   14000324d:	41 f7 c4 00 40 00 00 	test   r12d,0x4000
   140003254:	75 08                	jne    14000325e <__pformat_int.isra.0+0x1de>
   140003256:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   140003259:	39 43 28             	cmp    DWORD PTR [rbx+0x28],eax
   14000325c:	7e dc                	jle    14000323a <__pformat_int.isra.0+0x1ba>
   14000325e:	41 81 e4 00 20 00 00 	and    r12d,0x2000
   140003265:	0f be 0e             	movsx  ecx,BYTE PTR [rsi]
   140003268:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   14000326b:	74 c3                	je     140003230 <__pformat_int.isra.0+0x1b0>
   14000326d:	e8 4e 49 00 00       	call   140007bc0 <fputc>
   140003272:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   140003275:	83 c0 01             	add    eax,0x1
   140003278:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   14000327b:	49 39 f5             	cmp    r13,rsi
   14000327e:	75 c5                	jne    140003245 <__pformat_int.isra.0+0x1c5>
   140003280:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003283:	eb 17                	jmp    14000329c <__pformat_int.isra.0+0x21c>
   140003285:	0f 1f 00             	nop    DWORD PTR [rax]
   140003288:	48 63 43 24          	movsxd rax,DWORD PTR [rbx+0x24]
   14000328c:	c6 04 02 20          	mov    BYTE PTR [rdx+rax*1],0x20
   140003290:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140003293:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003296:	83 c2 01             	add    edx,0x1
   140003299:	89 53 24             	mov    DWORD PTR [rbx+0x24],edx
   14000329c:	89 c2                	mov    edx,eax
   14000329e:	83 e8 01             	sub    eax,0x1
   1400032a1:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   1400032a4:	85 d2                	test   edx,edx
   1400032a6:	7e 30                	jle    1400032d8 <__pformat_int.isra.0+0x258>
   1400032a8:	8b 4b 08             	mov    ecx,DWORD PTR [rbx+0x8]
   1400032ab:	f6 c5 40             	test   ch,0x40
   1400032ae:	75 08                	jne    1400032b8 <__pformat_int.isra.0+0x238>
   1400032b0:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   1400032b3:	39 53 28             	cmp    DWORD PTR [rbx+0x28],edx
   1400032b6:	7e de                	jle    140003296 <__pformat_int.isra.0+0x216>
   1400032b8:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   1400032bb:	80 e5 20             	and    ch,0x20
   1400032be:	74 c8                	je     140003288 <__pformat_int.isra.0+0x208>
   1400032c0:	b9 20 00 00 00       	mov    ecx,0x20
   1400032c5:	e8 f6 48 00 00       	call   140007bc0 <fputc>
   1400032ca:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   1400032cd:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   1400032d0:	eb c4                	jmp    140003296 <__pformat_int.isra.0+0x216>
   1400032d2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400032d8:	48 8d 65 08          	lea    rsp,[rbp+0x8]
   1400032dc:	5b                   	pop    rbx
   1400032dd:	5e                   	pop    rsi
   1400032de:	5f                   	pop    rdi
   1400032df:	41 5c                	pop    r12
   1400032e1:	41 5d                	pop    r13
   1400032e3:	41 5e                	pop    r14
   1400032e5:	41 5f                	pop    r15
   1400032e7:	5d                   	pop    rbp
   1400032e8:	c3                   	ret
   1400032e9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400032f0:	41 f7 c4 00 01 00 00 	test   r12d,0x100
   1400032f7:	74 27                	je     140003320 <__pformat_int.isra.0+0x2a0>
   1400032f9:	c6 07 2b             	mov    BYTE PTR [rdi],0x2b
   1400032fc:	48 8d 77 01          	lea    rsi,[rdi+0x1]
   140003300:	e9 1c ff ff ff       	jmp    140003221 <__pformat_int.isra.0+0x1a1>
   140003305:	0f 1f 00             	nop    DWORD PTR [rax]
   140003308:	89 c2                	mov    edx,eax
   14000330a:	41 b8 ab aa aa aa    	mov    r8d,0xaaaaaaab
   140003310:	49 0f af d0          	imul   rdx,r8
   140003314:	48 c1 ea 21          	shr    rdx,0x21
   140003318:	01 d0                	add    eax,edx
   14000331a:	e9 a1 fd ff ff       	jmp    1400030c0 <__pformat_int.isra.0+0x40>
   14000331f:	90                   	nop
   140003320:	48 89 fe             	mov    rsi,rdi
   140003323:	41 f6 c4 40          	test   r12b,0x40
   140003327:	0f 84 f4 fe ff ff    	je     140003221 <__pformat_int.isra.0+0x1a1>
   14000332d:	c6 07 20             	mov    BYTE PTR [rdi],0x20
   140003330:	48 83 c6 01          	add    rsi,0x1
   140003334:	e9 e8 fe ff ff       	jmp    140003221 <__pformat_int.isra.0+0x1a1>
   140003339:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140003340:	49 39 fd             	cmp    r13,rdi
   140003343:	0f 85 88 fe ff ff    	jne    1400031d1 <__pformat_int.isra.0+0x151>
   140003349:	4c 89 e8             	mov    rax,r13
   14000334c:	c6 00 30             	mov    BYTE PTR [rax],0x30
   14000334f:	48 8d 78 01          	lea    rdi,[rax+0x1]
   140003353:	e9 79 fe ff ff       	jmp    1400031d1 <__pformat_int.isra.0+0x151>
   140003358:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000335f:	00 
   140003360:	48 f7 d9             	neg    rcx
   140003363:	e9 9a fd ff ff       	jmp    140003102 <__pformat_int.isra.0+0x82>
   140003368:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000336f:	00 
   140003370:	83 ee 01             	sub    esi,0x1
   140003373:	89 73 0c             	mov    DWORD PTR [rbx+0xc],esi
   140003376:	45 85 f6             	test   r14d,r14d
   140003379:	0f 89 7b fe ff ff    	jns    1400031fa <__pformat_int.isra.0+0x17a>
   14000337f:	44 89 e0             	mov    eax,r12d
   140003382:	25 00 06 00 00       	and    eax,0x600
   140003387:	3d 00 02 00 00       	cmp    eax,0x200
   14000338c:	0f 85 68 fe ff ff    	jne    1400031fa <__pformat_int.isra.0+0x17a>
   140003392:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003395:	8d 50 ff             	lea    edx,[rax-0x1]
   140003398:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   14000339b:	85 c0                	test   eax,eax
   14000339d:	0f 8e 6d fe ff ff    	jle    140003210 <__pformat_int.isra.0+0x190>
   1400033a3:	48 63 f0             	movsxd rsi,eax
   1400033a6:	48 89 f9             	mov    rcx,rdi
   1400033a9:	ba 30 00 00 00       	mov    edx,0x30
   1400033ae:	49 89 f0             	mov    r8,rsi
   1400033b1:	48 01 f7             	add    rdi,rsi
   1400033b4:	e8 37 48 00 00       	call   140007bf0 <memset>
   1400033b9:	c7 43 0c ff ff ff ff 	mov    DWORD PTR [rbx+0xc],0xffffffff
   1400033c0:	e9 4b fe ff ff       	jmp    140003210 <__pformat_int.isra.0+0x190>
   1400033c5:	0f 1f 00             	nop    DWORD PTR [rax]
   1400033c8:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   1400033cb:	8d 50 ff             	lea    edx,[rax-0x1]
   1400033ce:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   1400033d1:	85 c0                	test   eax,eax
   1400033d3:	0f 8e 37 fe ff ff    	jle    140003210 <__pformat_int.isra.0+0x190>
   1400033d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400033e0:	48 89 da             	mov    rdx,rbx
   1400033e3:	b9 20 00 00 00       	mov    ecx,0x20
   1400033e8:	e8 b3 f3 ff ff       	call   1400027a0 <__pformat_putc>
   1400033ed:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   1400033f0:	8d 50 ff             	lea    edx,[rax-0x1]
   1400033f3:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   1400033f6:	85 c0                	test   eax,eax
   1400033f8:	7f e6                	jg     1400033e0 <__pformat_int.isra.0+0x360>
   1400033fa:	44 8b 63 08          	mov    r12d,DWORD PTR [rbx+0x8]
   1400033fe:	e9 0d fe ff ff       	jmp    140003210 <__pformat_int.isra.0+0x190>
   140003403:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   14000340a:	00 00 00 00 
   14000340e:	66 90                	xchg   ax,ax

0000000140003410 <__pformat_emit_radix_point>:
   140003410:	55                   	push   rbp
   140003411:	41 54                	push   r12
   140003413:	57                   	push   rdi
   140003414:	56                   	push   rsi
   140003415:	53                   	push   rbx
   140003416:	48 83 ec 30          	sub    rsp,0x30
   14000341a:	48 8d 6c 24 30       	lea    rbp,[rsp+0x30]
   14000341f:	83 79 14 fd          	cmp    DWORD PTR [rcx+0x14],0xfffffffd
   140003423:	48 89 cb             	mov    rbx,rcx
   140003426:	0f 84 d4 00 00 00    	je     140003500 <__pformat_emit_radix_point+0xf0>
   14000342c:	0f b7 51 18          	movzx  edx,WORD PTR [rcx+0x18]
   140003430:	66 85 d2             	test   dx,dx
   140003433:	0f 84 a7 00 00 00    	je     1400034e0 <__pformat_emit_radix_point+0xd0>
   140003439:	48 63 43 14          	movsxd rax,DWORD PTR [rbx+0x14]
   14000343d:	48 89 e7             	mov    rdi,rsp
   140003440:	48 83 c0 0f          	add    rax,0xf
   140003444:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   140003448:	e8 d3 f1 ff ff       	call   140002620 <___chkstk_ms>
   14000344d:	48 29 c4             	sub    rsp,rax
   140003450:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
   140003457:	00 
   140003458:	4c 8d 45 f8          	lea    r8,[rbp-0x8]
   14000345c:	48 8d 74 24 20       	lea    rsi,[rsp+0x20]
   140003461:	48 89 f1             	mov    rcx,rsi
   140003464:	e8 47 42 00 00       	call   1400076b0 <wcrtomb>
   140003469:	85 c0                	test   eax,eax
   14000346b:	0f 8e cf 00 00 00    	jle    140003540 <__pformat_emit_radix_point+0x130>
   140003471:	83 e8 01             	sub    eax,0x1
   140003474:	4c 8d 64 06 01       	lea    r12,[rsi+rax*1+0x1]
   140003479:	eb 1a                	jmp    140003495 <__pformat_emit_radix_point+0x85>
   14000347b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003480:	48 63 53 24          	movsxd rdx,DWORD PTR [rbx+0x24]
   140003484:	88 0c 10             	mov    BYTE PTR [rax+rdx*1],cl
   140003487:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   14000348a:	83 c0 01             	add    eax,0x1
   14000348d:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   140003490:	49 39 f4             	cmp    r12,rsi
   140003493:	74 36                	je     1400034cb <__pformat_emit_radix_point+0xbb>
   140003495:	8b 53 08             	mov    edx,DWORD PTR [rbx+0x8]
   140003498:	48 83 c6 01          	add    rsi,0x1
   14000349c:	f6 c6 40             	test   dh,0x40
   14000349f:	75 08                	jne    1400034a9 <__pformat_emit_radix_point+0x99>
   1400034a1:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   1400034a4:	39 43 28             	cmp    DWORD PTR [rbx+0x28],eax
   1400034a7:	7e e1                	jle    14000348a <__pformat_emit_radix_point+0x7a>
   1400034a9:	0f be 4e ff          	movsx  ecx,BYTE PTR [rsi-0x1]
   1400034ad:	48 8b 03             	mov    rax,QWORD PTR [rbx]
   1400034b0:	80 e6 20             	and    dh,0x20
   1400034b3:	74 cb                	je     140003480 <__pformat_emit_radix_point+0x70>
   1400034b5:	48 89 c2             	mov    rdx,rax
   1400034b8:	e8 03 47 00 00       	call   140007bc0 <fputc>
   1400034bd:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   1400034c0:	83 c0 01             	add    eax,0x1
   1400034c3:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   1400034c6:	49 39 f4             	cmp    r12,rsi
   1400034c9:	75 ca                	jne    140003495 <__pformat_emit_radix_point+0x85>
   1400034cb:	48 89 fc             	mov    rsp,rdi
   1400034ce:	48 89 ec             	mov    rsp,rbp
   1400034d1:	5b                   	pop    rbx
   1400034d2:	5e                   	pop    rsi
   1400034d3:	5f                   	pop    rdi
   1400034d4:	41 5c                	pop    r12
   1400034d6:	5d                   	pop    rbp
   1400034d7:	c3                   	ret
   1400034d8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400034df:	00 
   1400034e0:	48 89 da             	mov    rdx,rbx
   1400034e3:	b9 2e 00 00 00       	mov    ecx,0x2e
   1400034e8:	e8 b3 f2 ff ff       	call   1400027a0 <__pformat_putc>
   1400034ed:	90                   	nop
   1400034ee:	48 89 ec             	mov    rsp,rbp
   1400034f1:	5b                   	pop    rbx
   1400034f2:	5e                   	pop    rsi
   1400034f3:	5f                   	pop    rdi
   1400034f4:	41 5c                	pop    r12
   1400034f6:	5d                   	pop    rbp
   1400034f7:	c3                   	ret
   1400034f8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400034ff:	00 
   140003500:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
   140003507:	00 
   140003508:	48 8d 75 f8          	lea    rsi,[rbp-0x8]
   14000350c:	e8 c7 46 00 00       	call   140007bd8 <localeconv>
   140003511:	48 8d 4d f6          	lea    rcx,[rbp-0xa]
   140003515:	49 89 f1             	mov    r9,rsi
   140003518:	41 b8 10 00 00 00    	mov    r8d,0x10
   14000351e:	48 8b 10             	mov    rdx,QWORD PTR [rax]
   140003521:	e8 2a 44 00 00       	call   140007950 <mbrtowc>
   140003526:	85 c0                	test   eax,eax
   140003528:	7e 2e                	jle    140003558 <__pformat_emit_radix_point+0x148>
   14000352a:	0f b7 55 f6          	movzx  edx,WORD PTR [rbp-0xa]
   14000352e:	66 89 53 18          	mov    WORD PTR [rbx+0x18],dx
   140003532:	89 43 14             	mov    DWORD PTR [rbx+0x14],eax
   140003535:	e9 f6 fe ff ff       	jmp    140003430 <__pformat_emit_radix_point+0x20>
   14000353a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003540:	48 89 da             	mov    rdx,rbx
   140003543:	b9 2e 00 00 00       	mov    ecx,0x2e
   140003548:	e8 53 f2 ff ff       	call   1400027a0 <__pformat_putc>
   14000354d:	48 89 fc             	mov    rsp,rdi
   140003550:	e9 79 ff ff ff       	jmp    1400034ce <__pformat_emit_radix_point+0xbe>
   140003555:	0f 1f 00             	nop    DWORD PTR [rax]
   140003558:	0f b7 53 18          	movzx  edx,WORD PTR [rbx+0x18]
   14000355c:	eb d4                	jmp    140003532 <__pformat_emit_radix_point+0x122>
   14000355e:	66 90                	xchg   ax,ax

0000000140003560 <__pformat_emit_float>:
   140003560:	55                   	push   rbp
   140003561:	57                   	push   rdi
   140003562:	56                   	push   rsi
   140003563:	53                   	push   rbx
   140003564:	48 83 ec 28          	sub    rsp,0x28
   140003568:	89 cd                	mov    ebp,ecx
   14000356a:	48 89 d7             	mov    rdi,rdx
   14000356d:	41 8b 49 0c          	mov    ecx,DWORD PTR [r9+0xc]
   140003571:	44 89 c6             	mov    esi,r8d
   140003574:	4c 89 cb             	mov    rbx,r9
   140003577:	45 85 c0             	test   r8d,r8d
   14000357a:	0f 8e 30 01 00 00    	jle    1400036b0 <__pformat_emit_float+0x150>
   140003580:	41 39 c8             	cmp    r8d,ecx
   140003583:	7f 63                	jg     1400035e8 <__pformat_emit_float+0x88>
   140003585:	41 8b 41 10          	mov    eax,DWORD PTR [r9+0x10]
   140003589:	44 29 c1             	sub    ecx,r8d
   14000358c:	39 c1                	cmp    ecx,eax
   14000358e:	0f 8e 3c 03 00 00    	jle    1400038d0 <__pformat_emit_float+0x370>
   140003594:	29 c1                	sub    ecx,eax
   140003596:	89 4b 0c             	mov    DWORD PTR [rbx+0xc],ecx
   140003599:	85 c0                	test   eax,eax
   14000359b:	0f 8e 47 02 00 00    	jle    1400037e8 <__pformat_emit_float+0x288>
   1400035a1:	83 e9 01             	sub    ecx,0x1
   1400035a4:	89 4b 0c             	mov    DWORD PTR [rbx+0xc],ecx
   1400035a7:	85 f6                	test   esi,esi
   1400035a9:	7e 0a                	jle    1400035b5 <__pformat_emit_float+0x55>
   1400035ab:	f6 43 09 10          	test   BYTE PTR [rbx+0x9],0x10
   1400035af:	0f 85 50 02 00 00    	jne    140003805 <__pformat_emit_float+0x2a5>
   1400035b5:	85 c9                	test   ecx,ecx
   1400035b7:	7e 42                	jle    1400035fb <__pformat_emit_float+0x9b>
   1400035b9:	85 ed                	test   ebp,ebp
   1400035bb:	0f 85 c7 01 00 00    	jne    140003788 <__pformat_emit_float+0x228>
   1400035c1:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
   1400035c4:	a9 c0 01 00 00       	test   eax,0x1c0
   1400035c9:	0f 84 e9 02 00 00    	je     1400038b8 <__pformat_emit_float+0x358>
   1400035cf:	8d 51 ff             	lea    edx,[rcx-0x1]
   1400035d2:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   1400035d5:	85 d2                	test   edx,edx
   1400035d7:	74 2d                	je     140003606 <__pformat_emit_float+0xa6>
   1400035d9:	f6 c4 06             	test   ah,0x6
   1400035dc:	75 28                	jne    140003606 <__pformat_emit_float+0xa6>
   1400035de:	e9 c0 01 00 00       	jmp    1400037a3 <__pformat_emit_float+0x243>
   1400035e3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400035e8:	41 c7 41 0c ff ff ff 	mov    DWORD PTR [r9+0xc],0xffffffff
   1400035ef:	ff 
   1400035f0:	41 f6 41 09 10       	test   BYTE PTR [r9+0x9],0x10
   1400035f5:	0f 85 65 02 00 00    	jne    140003860 <__pformat_emit_float+0x300>
   1400035fb:	85 ed                	test   ebp,ebp
   1400035fd:	0f 85 dd 00 00 00    	jne    1400036e0 <__pformat_emit_float+0x180>
   140003603:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
   140003606:	f6 c4 01             	test   ah,0x1
   140003609:	0f 85 09 02 00 00    	jne    140003818 <__pformat_emit_float+0x2b8>
   14000360f:	a8 40                	test   al,0x40
   140003611:	0f 85 f9 02 00 00    	jne    140003910 <__pformat_emit_float+0x3b0>
   140003617:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   14000361a:	85 c0                	test   eax,eax
   14000361c:	7e 15                	jle    140003633 <__pformat_emit_float+0xd3>
   14000361e:	8b 53 08             	mov    edx,DWORD PTR [rbx+0x8]
   140003621:	81 e2 00 06 00 00    	and    edx,0x600
   140003627:	81 fa 00 02 00 00    	cmp    edx,0x200
   14000362d:	0f 84 fd 01 00 00    	je     140003830 <__pformat_emit_float+0x2d0>
   140003633:	85 f6                	test   esi,esi
   140003635:	0f 8e 05 01 00 00    	jle    140003740 <__pformat_emit_float+0x1e0>
   14000363b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003640:	0f b6 07             	movzx  eax,BYTE PTR [rdi]
   140003643:	b9 30 00 00 00       	mov    ecx,0x30
   140003648:	84 c0                	test   al,al
   14000364a:	74 07                	je     140003653 <__pformat_emit_float+0xf3>
   14000364c:	48 83 c7 01          	add    rdi,0x1
   140003650:	0f be c8             	movsx  ecx,al
   140003653:	48 89 da             	mov    rdx,rbx
   140003656:	e8 45 f1 ff ff       	call   1400027a0 <__pformat_putc>
   14000365b:	83 ee 01             	sub    esi,0x1
   14000365e:	74 30                	je     140003690 <__pformat_emit_float+0x130>
   140003660:	f6 43 09 10          	test   BYTE PTR [rbx+0x9],0x10
   140003664:	74 da                	je     140003640 <__pformat_emit_float+0xe0>
   140003666:	66 83 7b 20 00       	cmp    WORD PTR [rbx+0x20],0x0
   14000366b:	74 d3                	je     140003640 <__pformat_emit_float+0xe0>
   14000366d:	69 c6 ab aa aa aa    	imul   eax,esi,0xaaaaaaab
   140003673:	3d 55 55 55 55       	cmp    eax,0x55555555
   140003678:	77 c6                	ja     140003640 <__pformat_emit_float+0xe0>
   14000367a:	48 8d 4b 20          	lea    rcx,[rbx+0x20]
   14000367e:	49 89 d8             	mov    r8,rbx
   140003681:	ba 01 00 00 00       	mov    edx,0x1
   140003686:	e8 75 f1 ff ff       	call   140002800 <__pformat_wputchars>
   14000368b:	eb b3                	jmp    140003640 <__pformat_emit_float+0xe0>
   14000368d:	0f 1f 00             	nop    DWORD PTR [rax]
   140003690:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   140003693:	85 c0                	test   eax,eax
   140003695:	7f 61                	jg     1400036f8 <__pformat_emit_float+0x198>
   140003697:	f6 43 09 08          	test   BYTE PTR [rbx+0x9],0x8
   14000369b:	0f 85 b7 00 00 00    	jne    140003758 <__pformat_emit_float+0x1f8>
   1400036a1:	83 e8 01             	sub    eax,0x1
   1400036a4:	89 43 10             	mov    DWORD PTR [rbx+0x10],eax
   1400036a7:	48 83 c4 28          	add    rsp,0x28
   1400036ab:	5b                   	pop    rbx
   1400036ac:	5e                   	pop    rsi
   1400036ad:	5f                   	pop    rdi
   1400036ae:	5d                   	pop    rbp
   1400036af:	c3                   	ret
   1400036b0:	85 c9                	test   ecx,ecx
   1400036b2:	0f 8e 18 01 00 00    	jle    1400037d0 <__pformat_emit_float+0x270>
   1400036b8:	41 8b 41 10          	mov    eax,DWORD PTR [r9+0x10]
   1400036bc:	83 e9 01             	sub    ecx,0x1
   1400036bf:	39 c1                	cmp    ecx,eax
   1400036c1:	0f 8f cd fe ff ff    	jg     140003594 <__pformat_emit_float+0x34>
   1400036c7:	c7 43 0c ff ff ff ff 	mov    DWORD PTR [rbx+0xc],0xffffffff
   1400036ce:	85 ed                	test   ebp,ebp
   1400036d0:	0f 84 2d ff ff ff    	je     140003603 <__pformat_emit_float+0xa3>
   1400036d6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400036dd:	00 00 00 
   1400036e0:	48 89 da             	mov    rdx,rbx
   1400036e3:	b9 2d 00 00 00       	mov    ecx,0x2d
   1400036e8:	e8 b3 f0 ff ff       	call   1400027a0 <__pformat_putc>
   1400036ed:	e9 25 ff ff ff       	jmp    140003617 <__pformat_emit_float+0xb7>
   1400036f2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400036f8:	48 89 d9             	mov    rcx,rbx
   1400036fb:	e8 10 fd ff ff       	call   140003410 <__pformat_emit_radix_point>
   140003700:	eb 21                	jmp    140003723 <__pformat_emit_float+0x1c3>
   140003702:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003708:	0f b6 07             	movzx  eax,BYTE PTR [rdi]
   14000370b:	b9 30 00 00 00       	mov    ecx,0x30
   140003710:	84 c0                	test   al,al
   140003712:	74 07                	je     14000371b <__pformat_emit_float+0x1bb>
   140003714:	48 83 c7 01          	add    rdi,0x1
   140003718:	0f be c8             	movsx  ecx,al
   14000371b:	48 89 da             	mov    rdx,rbx
   14000371e:	e8 7d f0 ff ff       	call   1400027a0 <__pformat_putc>
   140003723:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   140003726:	8d 50 ff             	lea    edx,[rax-0x1]
   140003729:	89 53 10             	mov    DWORD PTR [rbx+0x10],edx
   14000372c:	85 c0                	test   eax,eax
   14000372e:	7f d8                	jg     140003708 <__pformat_emit_float+0x1a8>
   140003730:	48 83 c4 28          	add    rsp,0x28
   140003734:	5b                   	pop    rbx
   140003735:	5e                   	pop    rsi
   140003736:	5f                   	pop    rdi
   140003737:	5d                   	pop    rbp
   140003738:	c3                   	ret
   140003739:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140003740:	48 89 da             	mov    rdx,rbx
   140003743:	b9 30 00 00 00       	mov    ecx,0x30
   140003748:	e8 53 f0 ff ff       	call   1400027a0 <__pformat_putc>
   14000374d:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   140003750:	85 c0                	test   eax,eax
   140003752:	0f 8e ca 01 00 00    	jle    140003922 <__pformat_emit_float+0x3c2>
   140003758:	48 89 d9             	mov    rcx,rbx
   14000375b:	e8 b0 fc ff ff       	call   140003410 <__pformat_emit_radix_point>
   140003760:	85 f6                	test   esi,esi
   140003762:	74 bf                	je     140003723 <__pformat_emit_float+0x1c3>
   140003764:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   140003767:	01 f0                	add    eax,esi
   140003769:	89 43 10             	mov    DWORD PTR [rbx+0x10],eax
   14000376c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140003770:	48 89 da             	mov    rdx,rbx
   140003773:	b9 30 00 00 00       	mov    ecx,0x30
   140003778:	e8 23 f0 ff ff       	call   1400027a0 <__pformat_putc>
   14000377d:	83 c6 01             	add    esi,0x1
   140003780:	75 ee                	jne    140003770 <__pformat_emit_float+0x210>
   140003782:	eb 9f                	jmp    140003723 <__pformat_emit_float+0x1c3>
   140003784:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140003788:	8d 41 ff             	lea    eax,[rcx-0x1]
   14000378b:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   14000378e:	85 c0                	test   eax,eax
   140003790:	0f 84 4a ff ff ff    	je     1400036e0 <__pformat_emit_float+0x180>
   140003796:	f7 43 08 00 06 00 00 	test   DWORD PTR [rbx+0x8],0x600
   14000379d:	0f 85 3d ff ff ff    	jne    1400036e0 <__pformat_emit_float+0x180>
   1400037a3:	83 e9 02             	sub    ecx,0x2
   1400037a6:	89 4b 0c             	mov    DWORD PTR [rbx+0xc],ecx
   1400037a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400037b0:	48 89 da             	mov    rdx,rbx
   1400037b3:	b9 20 00 00 00       	mov    ecx,0x20
   1400037b8:	e8 e3 ef ff ff       	call   1400027a0 <__pformat_putc>
   1400037bd:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   1400037c0:	8d 50 ff             	lea    edx,[rax-0x1]
   1400037c3:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   1400037c6:	85 c0                	test   eax,eax
   1400037c8:	7f e6                	jg     1400037b0 <__pformat_emit_float+0x250>
   1400037ca:	e9 2c fe ff ff       	jmp    1400035fb <__pformat_emit_float+0x9b>
   1400037cf:	90                   	nop
   1400037d0:	0f 85 f1 fe ff ff    	jne    1400036c7 <__pformat_emit_float+0x167>
   1400037d6:	41 8b 49 10          	mov    ecx,DWORD PTR [r9+0x10]
   1400037da:	85 c9                	test   ecx,ecx
   1400037dc:	0f 89 e5 fe ff ff    	jns    1400036c7 <__pformat_emit_float+0x167>
   1400037e2:	f7 d9                	neg    ecx
   1400037e4:	41 89 49 0c          	mov    DWORD PTR [r9+0xc],ecx
   1400037e8:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
   1400037eb:	f6 c4 08             	test   ah,0x8
   1400037ee:	0f 85 ad fd ff ff    	jne    1400035a1 <__pformat_emit_float+0x41>
   1400037f4:	85 f6                	test   esi,esi
   1400037f6:	0f 8e bd fd ff ff    	jle    1400035b9 <__pformat_emit_float+0x59>
   1400037fc:	f6 c4 10             	test   ah,0x10
   1400037ff:	0f 84 b4 fd ff ff    	je     1400035b9 <__pformat_emit_float+0x59>
   140003805:	66 83 7b 20 00       	cmp    WORD PTR [rbx+0x20],0x0
   14000380a:	0f 84 a5 fd ff ff    	je     1400035b5 <__pformat_emit_float+0x55>
   140003810:	e9 dd 00 00 00       	jmp    1400038f2 <__pformat_emit_float+0x392>
   140003815:	0f 1f 00             	nop    DWORD PTR [rax]
   140003818:	48 89 da             	mov    rdx,rbx
   14000381b:	b9 2b 00 00 00       	mov    ecx,0x2b
   140003820:	e8 7b ef ff ff       	call   1400027a0 <__pformat_putc>
   140003825:	e9 ed fd ff ff       	jmp    140003617 <__pformat_emit_float+0xb7>
   14000382a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003830:	83 e8 01             	sub    eax,0x1
   140003833:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   140003836:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000383d:	00 00 00 
   140003840:	48 89 da             	mov    rdx,rbx
   140003843:	b9 30 00 00 00       	mov    ecx,0x30
   140003848:	e8 53 ef ff ff       	call   1400027a0 <__pformat_putc>
   14000384d:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003850:	8d 50 ff             	lea    edx,[rax-0x1]
   140003853:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140003856:	85 c0                	test   eax,eax
   140003858:	7f e6                	jg     140003840 <__pformat_emit_float+0x2e0>
   14000385a:	e9 d4 fd ff ff       	jmp    140003633 <__pformat_emit_float+0xd3>
   14000385f:	90                   	nop
   140003860:	66 41 83 79 20 00    	cmp    WORD PTR [r9+0x20],0x0
   140003866:	0f 84 8f fd ff ff    	je     1400035fb <__pformat_emit_float+0x9b>
   14000386c:	41 8d 40 02          	lea    eax,[r8+0x2]
   140003870:	ba ab aa aa aa       	mov    edx,0xaaaaaaab
   140003875:	b9 ff ff ff ff       	mov    ecx,0xffffffff
   14000387a:	48 0f af c2          	imul   rax,rdx
   14000387e:	48 c1 e8 21          	shr    rax,0x21
   140003882:	83 f8 01             	cmp    eax,0x1
   140003885:	0f 84 70 fd ff ff    	je     1400035fb <__pformat_emit_float+0x9b>
   14000388b:	83 e8 01             	sub    eax,0x1
   14000388e:	29 c8                	sub    eax,ecx
   140003890:	eb 16                	jmp    1400038a8 <__pformat_emit_float+0x348>
   140003892:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003898:	83 e9 01             	sub    ecx,0x1
   14000389b:	89 c2                	mov    edx,eax
   14000389d:	01 ca                	add    edx,ecx
   14000389f:	89 4b 0c             	mov    DWORD PTR [rbx+0xc],ecx
   1400038a2:	0f 84 0d fd ff ff    	je     1400035b5 <__pformat_emit_float+0x55>
   1400038a8:	85 c9                	test   ecx,ecx
   1400038aa:	7f ec                	jg     140003898 <__pformat_emit_float+0x338>
   1400038ac:	e9 4a fd ff ff       	jmp    1400035fb <__pformat_emit_float+0x9b>
   1400038b1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400038b8:	83 e9 01             	sub    ecx,0x1
   1400038bb:	f6 c4 06             	test   ah,0x6
   1400038be:	0f 84 e2 fe ff ff    	je     1400037a6 <__pformat_emit_float+0x246>
   1400038c4:	e9 3d fd ff ff       	jmp    140003606 <__pformat_emit_float+0xa6>
   1400038c9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400038d0:	41 c7 41 0c ff ff ff 	mov    DWORD PTR [r9+0xc],0xffffffff
   1400038d7:	ff 
   1400038d8:	41 f6 41 09 10       	test   BYTE PTR [r9+0x9],0x10
   1400038dd:	0f 84 18 fd ff ff    	je     1400035fb <__pformat_emit_float+0x9b>
   1400038e3:	66 41 83 79 20 00    	cmp    WORD PTR [r9+0x20],0x0
   1400038e9:	0f 84 0c fd ff ff    	je     1400035fb <__pformat_emit_float+0x9b>
   1400038ef:	83 c9 ff             	or     ecx,0xffffffff
   1400038f2:	8d 46 02             	lea    eax,[rsi+0x2]
   1400038f5:	41 b8 03 00 00 00    	mov    r8d,0x3
   1400038fb:	99                   	cdq
   1400038fc:	41 f7 f8             	idiv   r8d
   1400038ff:	83 f8 01             	cmp    eax,0x1
   140003902:	75 87                	jne    14000388b <__pformat_emit_float+0x32b>
   140003904:	e9 ac fc ff ff       	jmp    1400035b5 <__pformat_emit_float+0x55>
   140003909:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140003910:	48 89 da             	mov    rdx,rbx
   140003913:	b9 20 00 00 00       	mov    ecx,0x20
   140003918:	e8 83 ee ff ff       	call   1400027a0 <__pformat_putc>
   14000391d:	e9 f5 fc ff ff       	jmp    140003617 <__pformat_emit_float+0xb7>
   140003922:	f6 43 09 08          	test   BYTE PTR [rbx+0x9],0x8
   140003926:	0f 85 2c fe ff ff    	jne    140003758 <__pformat_emit_float+0x1f8>
   14000392c:	85 f6                	test   esi,esi
   14000392e:	0f 85 33 fe ff ff    	jne    140003767 <__pformat_emit_float+0x207>
   140003934:	e9 68 fd ff ff       	jmp    1400036a1 <__pformat_emit_float+0x141>
   140003939:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000140003940 <__pformat_emit_efloat>:
   140003940:	57                   	push   rdi
   140003941:	56                   	push   rsi
   140003942:	53                   	push   rbx
   140003943:	48 83 ec 20          	sub    rsp,0x20
   140003947:	41 ba 01 00 00 00    	mov    r10d,0x1
   14000394d:	41 83 e8 01          	sub    r8d,0x1
   140003951:	41 89 cb             	mov    r11d,ecx
   140003954:	4c 89 cb             	mov    rbx,r9
   140003957:	49 63 f0             	movsxd rsi,r8d
   14000395a:	41 c1 f8 1f          	sar    r8d,0x1f
   14000395e:	48 69 ce 67 66 66 66 	imul   rcx,rsi,0x66666667
   140003965:	48 c1 f9 22          	sar    rcx,0x22
   140003969:	44 29 c1             	sub    ecx,r8d
   14000396c:	74 1d                	je     14000398b <__pformat_emit_efloat+0x4b>
   14000396e:	66 90                	xchg   ax,ax
   140003970:	48 63 c1             	movsxd rax,ecx
   140003973:	c1 f9 1f             	sar    ecx,0x1f
   140003976:	41 83 c2 01          	add    r10d,0x1
   14000397a:	48 69 c0 67 66 66 66 	imul   rax,rax,0x66666667
   140003981:	48 c1 f8 22          	sar    rax,0x22
   140003985:	29 c8                	sub    eax,ecx
   140003987:	89 c1                	mov    ecx,eax
   140003989:	75 e5                	jne    140003970 <__pformat_emit_efloat+0x30>
   14000398b:	8b 43 2c             	mov    eax,DWORD PTR [rbx+0x2c]
   14000398e:	83 f8 ff             	cmp    eax,0xffffffff
   140003991:	75 0c                	jne    14000399f <__pformat_emit_efloat+0x5f>
   140003993:	c7 43 2c 02 00 00 00 	mov    DWORD PTR [rbx+0x2c],0x2
   14000399a:	b8 02 00 00 00       	mov    eax,0x2
   14000399f:	44 39 d0             	cmp    eax,r10d
   1400039a2:	44 89 d7             	mov    edi,r10d
   1400039a5:	44 8b 43 0c          	mov    r8d,DWORD PTR [rbx+0xc]
   1400039a9:	49 89 d9             	mov    r9,rbx
   1400039ac:	0f 4d f8             	cmovge edi,eax
   1400039af:	44 89 c0             	mov    eax,r8d
   1400039b2:	8d 4f 02             	lea    ecx,[rdi+0x2]
   1400039b5:	29 c8                	sub    eax,ecx
   1400039b7:	41 39 c8             	cmp    r8d,ecx
   1400039ba:	b9 ff ff ff ff       	mov    ecx,0xffffffff
   1400039bf:	41 b8 01 00 00 00    	mov    r8d,0x1
   1400039c5:	0f 4e c1             	cmovle eax,ecx
   1400039c8:	44 89 d9             	mov    ecx,r11d
   1400039cb:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   1400039ce:	e8 8d fb ff ff       	call   140003560 <__pformat_emit_float>
   1400039d3:	8b 4b 08             	mov    ecx,DWORD PTR [rbx+0x8]
   1400039d6:	8b 43 2c             	mov    eax,DWORD PTR [rbx+0x2c]
   1400039d9:	48 89 da             	mov    rdx,rbx
   1400039dc:	89 43 10             	mov    DWORD PTR [rbx+0x10],eax
   1400039df:	89 c8                	mov    eax,ecx
   1400039e1:	83 e1 20             	and    ecx,0x20
   1400039e4:	0d c0 01 00 00       	or     eax,0x1c0
   1400039e9:	83 c9 45             	or     ecx,0x45
   1400039ec:	89 43 08             	mov    DWORD PTR [rbx+0x8],eax
   1400039ef:	e8 ac ed ff ff       	call   1400027a0 <__pformat_putc>
   1400039f4:	8d 47 01             	lea    eax,[rdi+0x1]
   1400039f7:	01 43 0c             	add    DWORD PTR [rbx+0xc],eax
   1400039fa:	48 89 da             	mov    rdx,rbx
   1400039fd:	48 89 f1             	mov    rcx,rsi
   140003a00:	48 83 c4 20          	add    rsp,0x20
   140003a04:	5b                   	pop    rbx
   140003a05:	5e                   	pop    rsi
   140003a06:	5f                   	pop    rdi
   140003a07:	e9 74 f6 ff ff       	jmp    140003080 <__pformat_int.isra.0>
   140003a0c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000140003a10 <__pformat_efloat>:
   140003a10:	56                   	push   rsi
   140003a11:	53                   	push   rbx
   140003a12:	48 83 ec 58          	sub    rsp,0x58
   140003a16:	44 8b 42 10          	mov    r8d,DWORD PTR [rdx+0x10]
   140003a1a:	db 29                	fld    TBYTE PTR [rcx]
   140003a1c:	48 89 d3             	mov    rbx,rdx
   140003a1f:	45 85 c0             	test   r8d,r8d
   140003a22:	78 5c                	js     140003a80 <__pformat_efloat+0x70>
   140003a24:	41 83 c0 01          	add    r8d,0x1
   140003a28:	48 8d 44 24 48       	lea    rax,[rsp+0x48]
   140003a2d:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
   140003a32:	b9 02 00 00 00       	mov    ecx,0x2
   140003a37:	db 7c 24 30          	fstp   TBYTE PTR [rsp+0x30]
   140003a3b:	4c 8d 4c 24 4c       	lea    r9,[rsp+0x4c]
   140003a40:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
   140003a45:	e8 66 ec ff ff       	call   1400026b0 <__pformat_cvt>
   140003a4a:	44 8b 44 24 4c       	mov    r8d,DWORD PTR [rsp+0x4c]
   140003a4f:	48 89 c6             	mov    rsi,rax
   140003a52:	41 81 f8 00 80 ff ff 	cmp    r8d,0xffff8000
   140003a59:	74 35                	je     140003a90 <__pformat_efloat+0x80>
   140003a5b:	8b 4c 24 48          	mov    ecx,DWORD PTR [rsp+0x48]
   140003a5f:	49 89 d9             	mov    r9,rbx
   140003a62:	48 89 c2             	mov    rdx,rax
   140003a65:	e8 d6 fe ff ff       	call   140003940 <__pformat_emit_efloat>
   140003a6a:	48 89 f1             	mov    rcx,rsi
   140003a6d:	e8 ce 12 00 00       	call   140004d40 <__freedtoa>
   140003a72:	90                   	nop
   140003a73:	48 83 c4 58          	add    rsp,0x58
   140003a77:	5b                   	pop    rbx
   140003a78:	5e                   	pop    rsi
   140003a79:	c3                   	ret
   140003a7a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003a80:	c7 42 10 06 00 00 00 	mov    DWORD PTR [rdx+0x10],0x6
   140003a87:	41 b8 07 00 00 00    	mov    r8d,0x7
   140003a8d:	eb 99                	jmp    140003a28 <__pformat_efloat+0x18>
   140003a8f:	90                   	nop
   140003a90:	8b 4c 24 48          	mov    ecx,DWORD PTR [rsp+0x48]
   140003a94:	49 89 d8             	mov    r8,rbx
   140003a97:	48 89 c2             	mov    rdx,rax
   140003a9a:	e8 91 f0 ff ff       	call   140002b30 <__pformat_emit_inf_or_nan>
   140003a9f:	48 89 f1             	mov    rcx,rsi
   140003aa2:	e8 99 12 00 00       	call   140004d40 <__freedtoa>
   140003aa7:	90                   	nop
   140003aa8:	48 83 c4 58          	add    rsp,0x58
   140003aac:	5b                   	pop    rbx
   140003aad:	5e                   	pop    rsi
   140003aae:	c3                   	ret
   140003aaf:	90                   	nop

0000000140003ab0 <__pformat_float>:
   140003ab0:	56                   	push   rsi
   140003ab1:	53                   	push   rbx
   140003ab2:	48 83 ec 58          	sub    rsp,0x58
   140003ab6:	44 8b 42 10          	mov    r8d,DWORD PTR [rdx+0x10]
   140003aba:	db 29                	fld    TBYTE PTR [rcx]
   140003abc:	48 89 d3             	mov    rbx,rdx
   140003abf:	45 85 c0             	test   r8d,r8d
   140003ac2:	79 0d                	jns    140003ad1 <__pformat_float+0x21>
   140003ac4:	c7 42 10 06 00 00 00 	mov    DWORD PTR [rdx+0x10],0x6
   140003acb:	41 b8 06 00 00 00    	mov    r8d,0x6
   140003ad1:	48 8d 44 24 48       	lea    rax,[rsp+0x48]
   140003ad6:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
   140003adb:	b9 03 00 00 00       	mov    ecx,0x3
   140003ae0:	db 7c 24 30          	fstp   TBYTE PTR [rsp+0x30]
   140003ae4:	4c 8d 4c 24 4c       	lea    r9,[rsp+0x4c]
   140003ae9:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
   140003aee:	e8 bd eb ff ff       	call   1400026b0 <__pformat_cvt>
   140003af3:	44 8b 44 24 4c       	mov    r8d,DWORD PTR [rsp+0x4c]
   140003af8:	48 89 c6             	mov    rsi,rax
   140003afb:	41 81 f8 00 80 ff ff 	cmp    r8d,0xffff8000
   140003b02:	74 6c                	je     140003b70 <__pformat_float+0xc0>
   140003b04:	8b 4c 24 48          	mov    ecx,DWORD PTR [rsp+0x48]
   140003b08:	48 89 c2             	mov    rdx,rax
   140003b0b:	49 89 d9             	mov    r9,rbx
   140003b0e:	e8 4d fa ff ff       	call   140003560 <__pformat_emit_float>
   140003b13:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003b16:	eb 1c                	jmp    140003b34 <__pformat_float+0x84>
   140003b18:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140003b1f:	00 
   140003b20:	48 63 43 24          	movsxd rax,DWORD PTR [rbx+0x24]
   140003b24:	c6 04 02 20          	mov    BYTE PTR [rdx+rax*1],0x20
   140003b28:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140003b2b:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003b2e:	83 c2 01             	add    edx,0x1
   140003b31:	89 53 24             	mov    DWORD PTR [rbx+0x24],edx
   140003b34:	89 c2                	mov    edx,eax
   140003b36:	83 e8 01             	sub    eax,0x1
   140003b39:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   140003b3c:	85 d2                	test   edx,edx
   140003b3e:	7e 3f                	jle    140003b7f <__pformat_float+0xcf>
   140003b40:	8b 4b 08             	mov    ecx,DWORD PTR [rbx+0x8]
   140003b43:	f6 c5 40             	test   ch,0x40
   140003b46:	75 08                	jne    140003b50 <__pformat_float+0xa0>
   140003b48:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140003b4b:	39 53 28             	cmp    DWORD PTR [rbx+0x28],edx
   140003b4e:	7e de                	jle    140003b2e <__pformat_float+0x7e>
   140003b50:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   140003b53:	80 e5 20             	and    ch,0x20
   140003b56:	74 c8                	je     140003b20 <__pformat_float+0x70>
   140003b58:	b9 20 00 00 00       	mov    ecx,0x20
   140003b5d:	e8 5e 40 00 00       	call   140007bc0 <fputc>
   140003b62:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140003b65:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003b68:	eb c4                	jmp    140003b2e <__pformat_float+0x7e>
   140003b6a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003b70:	8b 4c 24 48          	mov    ecx,DWORD PTR [rsp+0x48]
   140003b74:	49 89 d8             	mov    r8,rbx
   140003b77:	48 89 c2             	mov    rdx,rax
   140003b7a:	e8 b1 ef ff ff       	call   140002b30 <__pformat_emit_inf_or_nan>
   140003b7f:	48 89 f1             	mov    rcx,rsi
   140003b82:	e8 b9 11 00 00       	call   140004d40 <__freedtoa>
   140003b87:	90                   	nop
   140003b88:	48 83 c4 58          	add    rsp,0x58
   140003b8c:	5b                   	pop    rbx
   140003b8d:	5e                   	pop    rsi
   140003b8e:	c3                   	ret
   140003b8f:	90                   	nop

0000000140003b90 <__pformat_gfloat>:
   140003b90:	57                   	push   rdi
   140003b91:	56                   	push   rsi
   140003b92:	53                   	push   rbx
   140003b93:	48 83 ec 50          	sub    rsp,0x50
   140003b97:	44 8b 42 10          	mov    r8d,DWORD PTR [rdx+0x10]
   140003b9b:	db 29                	fld    TBYTE PTR [rcx]
   140003b9d:	48 89 d3             	mov    rbx,rdx
   140003ba0:	45 85 c0             	test   r8d,r8d
   140003ba3:	0f 88 ff 00 00 00    	js     140003ca8 <__pformat_gfloat+0x118>
   140003ba9:	0f 84 e1 00 00 00    	je     140003c90 <__pformat_gfloat+0x100>
   140003baf:	48 8d 44 24 48       	lea    rax,[rsp+0x48]
   140003bb4:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
   140003bb9:	b9 02 00 00 00       	mov    ecx,0x2
   140003bbe:	db 7c 24 30          	fstp   TBYTE PTR [rsp+0x30]
   140003bc2:	4c 8d 4c 24 4c       	lea    r9,[rsp+0x4c]
   140003bc7:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
   140003bcc:	e8 df ea ff ff       	call   1400026b0 <__pformat_cvt>
   140003bd1:	8b 7c 24 4c          	mov    edi,DWORD PTR [rsp+0x4c]
   140003bd5:	48 89 c6             	mov    rsi,rax
   140003bd8:	81 ff 00 80 ff ff    	cmp    edi,0xffff8000
   140003bde:	0f 84 dc 00 00 00    	je     140003cc0 <__pformat_gfloat+0x130>
   140003be4:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
   140003be7:	25 00 08 00 00       	and    eax,0x800
   140003bec:	83 ff fd             	cmp    edi,0xfffffffd
   140003bef:	7c 5f                	jl     140003c50 <__pformat_gfloat+0xc0>
   140003bf1:	8b 53 10             	mov    edx,DWORD PTR [rbx+0x10]
   140003bf4:	39 d7                	cmp    edi,edx
   140003bf6:	7f 58                	jg     140003c50 <__pformat_gfloat+0xc0>
   140003bf8:	85 c0                	test   eax,eax
   140003bfa:	0f 84 e0 00 00 00    	je     140003ce0 <__pformat_gfloat+0x150>
   140003c00:	29 fa                	sub    edx,edi
   140003c02:	89 53 10             	mov    DWORD PTR [rbx+0x10],edx
   140003c05:	8b 4c 24 48          	mov    ecx,DWORD PTR [rsp+0x48]
   140003c09:	49 89 d9             	mov    r9,rbx
   140003c0c:	41 89 f8             	mov    r8d,edi
   140003c0f:	48 89 f2             	mov    rdx,rsi
   140003c12:	e8 49 f9 ff ff       	call   140003560 <__pformat_emit_float>
   140003c17:	eb 14                	jmp    140003c2d <__pformat_gfloat+0x9d>
   140003c19:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140003c20:	48 89 da             	mov    rdx,rbx
   140003c23:	b9 20 00 00 00       	mov    ecx,0x20
   140003c28:	e8 73 eb ff ff       	call   1400027a0 <__pformat_putc>
   140003c2d:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003c30:	8d 50 ff             	lea    edx,[rax-0x1]
   140003c33:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140003c36:	85 c0                	test   eax,eax
   140003c38:	7f e6                	jg     140003c20 <__pformat_gfloat+0x90>
   140003c3a:	48 89 f1             	mov    rcx,rsi
   140003c3d:	e8 fe 10 00 00       	call   140004d40 <__freedtoa>
   140003c42:	90                   	nop
   140003c43:	48 83 c4 50          	add    rsp,0x50
   140003c47:	5b                   	pop    rbx
   140003c48:	5e                   	pop    rsi
   140003c49:	5f                   	pop    rdi
   140003c4a:	c3                   	ret
   140003c4b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003c50:	85 c0                	test   eax,eax
   140003c52:	75 34                	jne    140003c88 <__pformat_gfloat+0xf8>
   140003c54:	48 89 f1             	mov    rcx,rsi
   140003c57:	e8 ac 3f 00 00       	call   140007c08 <strlen>
   140003c5c:	83 e8 01             	sub    eax,0x1
   140003c5f:	89 43 10             	mov    DWORD PTR [rbx+0x10],eax
   140003c62:	8b 4c 24 48          	mov    ecx,DWORD PTR [rsp+0x48]
   140003c66:	49 89 d9             	mov    r9,rbx
   140003c69:	41 89 f8             	mov    r8d,edi
   140003c6c:	48 89 f2             	mov    rdx,rsi
   140003c6f:	e8 cc fc ff ff       	call   140003940 <__pformat_emit_efloat>
   140003c74:	48 89 f1             	mov    rcx,rsi
   140003c77:	e8 c4 10 00 00       	call   140004d40 <__freedtoa>
   140003c7c:	90                   	nop
   140003c7d:	48 83 c4 50          	add    rsp,0x50
   140003c81:	5b                   	pop    rbx
   140003c82:	5e                   	pop    rsi
   140003c83:	5f                   	pop    rdi
   140003c84:	c3                   	ret
   140003c85:	0f 1f 00             	nop    DWORD PTR [rax]
   140003c88:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   140003c8b:	83 e8 01             	sub    eax,0x1
   140003c8e:	eb cf                	jmp    140003c5f <__pformat_gfloat+0xcf>
   140003c90:	c7 42 10 01 00 00 00 	mov    DWORD PTR [rdx+0x10],0x1
   140003c97:	41 b8 01 00 00 00    	mov    r8d,0x1
   140003c9d:	e9 0d ff ff ff       	jmp    140003baf <__pformat_gfloat+0x1f>
   140003ca2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003ca8:	c7 42 10 06 00 00 00 	mov    DWORD PTR [rdx+0x10],0x6
   140003caf:	41 b8 06 00 00 00    	mov    r8d,0x6
   140003cb5:	e9 f5 fe ff ff       	jmp    140003baf <__pformat_gfloat+0x1f>
   140003cba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003cc0:	8b 4c 24 48          	mov    ecx,DWORD PTR [rsp+0x48]
   140003cc4:	49 89 d8             	mov    r8,rbx
   140003cc7:	48 89 c2             	mov    rdx,rax
   140003cca:	e8 61 ee ff ff       	call   140002b30 <__pformat_emit_inf_or_nan>
   140003ccf:	48 89 f1             	mov    rcx,rsi
   140003cd2:	e8 69 10 00 00       	call   140004d40 <__freedtoa>
   140003cd7:	90                   	nop
   140003cd8:	48 83 c4 50          	add    rsp,0x50
   140003cdc:	5b                   	pop    rbx
   140003cdd:	5e                   	pop    rsi
   140003cde:	5f                   	pop    rdi
   140003cdf:	c3                   	ret
   140003ce0:	48 89 f1             	mov    rcx,rsi
   140003ce3:	e8 20 3f 00 00       	call   140007c08 <strlen>
   140003ce8:	29 f8                	sub    eax,edi
   140003cea:	89 43 10             	mov    DWORD PTR [rbx+0x10],eax
   140003ced:	0f 89 12 ff ff ff    	jns    140003c05 <__pformat_gfloat+0x75>
   140003cf3:	8b 53 0c             	mov    edx,DWORD PTR [rbx+0xc]
   140003cf6:	85 d2                	test   edx,edx
   140003cf8:	0f 8e 07 ff ff ff    	jle    140003c05 <__pformat_gfloat+0x75>
   140003cfe:	01 d0                	add    eax,edx
   140003d00:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   140003d03:	e9 fd fe ff ff       	jmp    140003c05 <__pformat_gfloat+0x75>
   140003d08:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140003d0f:	00 

0000000140003d10 <__pformat_emit_xfloat.isra.0>:
   140003d10:	41 55                	push   r13
   140003d12:	41 54                	push   r12
   140003d14:	55                   	push   rbp
   140003d15:	57                   	push   rdi
   140003d16:	56                   	push   rsi
   140003d17:	53                   	push   rbx
   140003d18:	48 83 ec 58          	sub    rsp,0x58
   140003d1c:	45 8b 50 10          	mov    r10d,DWORD PTR [r8+0x10]
   140003d20:	49 89 c9             	mov    r9,rcx
   140003d23:	4c 89 c3             	mov    rbx,r8
   140003d26:	66 85 d2             	test   dx,dx
   140003d29:	75 09                	jne    140003d34 <__pformat_emit_xfloat.isra.0+0x24>
   140003d2b:	48 85 c9             	test   rcx,rcx
   140003d2e:	0f 84 a4 00 00 00    	je     140003dd8 <__pformat_emit_xfloat.isra.0+0xc8>
   140003d34:	44 8d 42 fd          	lea    r8d,[rdx-0x3]
   140003d38:	41 83 fa 0e          	cmp    r10d,0xe
   140003d3c:	0f 86 a3 00 00 00    	jbe    140003de5 <__pformat_emit_xfloat.isra.0+0xd5>
   140003d42:	49 0f bf e8          	movsx  rbp,r8w
   140003d46:	ba 10 00 00 00       	mov    edx,0x10
   140003d4b:	4d 85 c9             	test   r9,r9
   140003d4e:	0f 84 ec 03 00 00    	je     140004140 <__pformat_emit_xfloat.isra.0+0x430>
   140003d54:	8b 4b 08             	mov    ecx,DWORD PTR [rbx+0x8]
   140003d57:	48 8d 7c 24 30       	lea    rdi,[rsp+0x30]
   140003d5c:	48 89 fe             	mov    rsi,rdi
   140003d5f:	41 89 cb             	mov    r11d,ecx
   140003d62:	41 89 cc             	mov    r12d,ecx
   140003d65:	41 83 e3 20          	and    r11d,0x20
   140003d69:	41 81 e4 00 08 00 00 	and    r12d,0x800
   140003d70:	eb 2d                	jmp    140003d9f <__pformat_emit_xfloat.isra.0+0x8f>
   140003d72:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003d78:	4c 39 d7             	cmp    rdi,r10
   140003d7b:	72 0b                	jb     140003d88 <__pformat_emit_xfloat.isra.0+0x78>
   140003d7d:	8b 73 10             	mov    esi,DWORD PTR [rbx+0x10]
   140003d80:	85 f6                	test   esi,esi
   140003d82:	0f 88 68 03 00 00    	js     1400040f0 <__pformat_emit_xfloat.isra.0+0x3e0>
   140003d88:	83 c0 30             	add    eax,0x30
   140003d8b:	41 88 02             	mov    BYTE PTR [r10],al
   140003d8e:	49 8d 72 01          	lea    rsi,[r10+0x1]
   140003d92:	49 c1 e9 04          	shr    r9,0x4
   140003d96:	83 ea 01             	sub    edx,0x1
   140003d99:	0f 84 e1 01 00 00    	je     140003f80 <__pformat_emit_xfloat.isra.0+0x270>
   140003d9f:	44 89 c8             	mov    eax,r9d
   140003da2:	83 e0 0f             	and    eax,0xf
   140003da5:	83 fa 01             	cmp    edx,0x1
   140003da8:	0f 84 92 01 00 00    	je     140003f40 <__pformat_emit_xfloat.isra.0+0x230>
   140003dae:	44 8b 53 10          	mov    r10d,DWORD PTR [rbx+0x10]
   140003db2:	45 85 d2             	test   r10d,r10d
   140003db5:	7e 08                	jle    140003dbf <__pformat_emit_xfloat.isra.0+0xaf>
   140003db7:	41 83 ea 01          	sub    r10d,0x1
   140003dbb:	44 89 53 10          	mov    DWORD PTR [rbx+0x10],r10d
   140003dbf:	49 89 f2             	mov    r10,rsi
   140003dc2:	85 c0                	test   eax,eax
   140003dc4:	74 b2                	je     140003d78 <__pformat_emit_xfloat.isra.0+0x68>
   140003dc6:	83 f8 09             	cmp    eax,0x9
   140003dc9:	76 bd                	jbe    140003d88 <__pformat_emit_xfloat.isra.0+0x78>
   140003dcb:	83 c0 37             	add    eax,0x37
   140003dce:	44 09 d8             	or     eax,r11d
   140003dd1:	eb b8                	jmp    140003d8b <__pformat_emit_xfloat.isra.0+0x7b>
   140003dd3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003dd8:	41 83 fa 0e          	cmp    r10d,0xe
   140003ddc:	0f 87 46 03 00 00    	ja     140004128 <__pformat_emit_xfloat.isra.0+0x418>
   140003de2:	45 31 c0             	xor    r8d,r8d
   140003de5:	b9 0e 00 00 00       	mov    ecx,0xe
   140003dea:	b8 04 00 00 00       	mov    eax,0x4
   140003def:	49 d1 e9             	shr    r9,1
   140003df2:	44 29 d1             	sub    ecx,r10d
   140003df5:	c1 e1 02             	shl    ecx,0x2
   140003df8:	48 d3 e0             	shl    rax,cl
   140003dfb:	b9 0f 00 00 00       	mov    ecx,0xf
   140003e00:	44 29 d1             	sub    ecx,r10d
   140003e03:	c1 e1 02             	shl    ecx,0x2
   140003e06:	4c 01 c8             	add    rax,r9
   140003e09:	0f 88 11 01 00 00    	js     140003f20 <__pformat_emit_xfloat.isra.0+0x210>
   140003e0f:	48 01 c0             	add    rax,rax
   140003e12:	48 d3 e8             	shr    rax,cl
   140003e15:	49 89 c1             	mov    r9,rax
   140003e18:	48 85 c0             	test   rax,rax
   140003e1b:	0f 85 0d 01 00 00    	jne    140003f2e <__pformat_emit_xfloat.isra.0+0x21e>
   140003e21:	45 85 d2             	test   r10d,r10d
   140003e24:	0f 85 04 01 00 00    	jne    140003f2e <__pformat_emit_xfloat.isra.0+0x21e>
   140003e2a:	8b 4b 08             	mov    ecx,DWORD PTR [rbx+0x8]
   140003e2d:	49 0f bf e8          	movsx  rbp,r8w
   140003e31:	48 8d 7c 24 30       	lea    rdi,[rsp+0x30]
   140003e36:	48 89 f8             	mov    rax,rdi
   140003e39:	f6 c5 08             	test   ch,0x8
   140003e3c:	74 0a                	je     140003e48 <__pformat_emit_xfloat.isra.0+0x138>
   140003e3e:	c6 44 24 30 2e       	mov    BYTE PTR [rsp+0x30],0x2e
   140003e43:	48 8d 44 24 31       	lea    rax,[rsp+0x31]
   140003e48:	44 8b 53 0c          	mov    r10d,DWORD PTR [rbx+0xc]
   140003e4c:	c6 00 30             	mov    BYTE PTR [rax],0x30
   140003e4f:	48 8d 70 01          	lea    rsi,[rax+0x1]
   140003e53:	41 bc 02 00 00 00    	mov    r12d,0x2
   140003e59:	45 85 d2             	test   r10d,r10d
   140003e5c:	0f 8f 3a 01 00 00    	jg     140003f9c <__pformat_emit_xfloat.isra.0+0x28c>
   140003e62:	f6 c1 80             	test   cl,0x80
   140003e65:	0f 85 f5 01 00 00    	jne    140004060 <__pformat_emit_xfloat.isra.0+0x350>
   140003e6b:	f6 c5 01             	test   ch,0x1
   140003e6e:	0f 85 9c 02 00 00    	jne    140004110 <__pformat_emit_xfloat.isra.0+0x400>
   140003e74:	83 e1 40             	and    ecx,0x40
   140003e77:	0f 85 e3 02 00 00    	jne    140004160 <__pformat_emit_xfloat.isra.0+0x450>
   140003e7d:	48 89 da             	mov    rdx,rbx
   140003e80:	b9 30 00 00 00       	mov    ecx,0x30
   140003e85:	e8 16 e9 ff ff       	call   1400027a0 <__pformat_putc>
   140003e8a:	8b 4b 08             	mov    ecx,DWORD PTR [rbx+0x8]
   140003e8d:	48 89 da             	mov    rdx,rbx
   140003e90:	83 e1 20             	and    ecx,0x20
   140003e93:	83 c9 58             	or     ecx,0x58
   140003e96:	e8 05 e9 ff ff       	call   1400027a0 <__pformat_putc>
   140003e9b:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003e9e:	85 c0                	test   eax,eax
   140003ea0:	7e 28                	jle    140003eca <__pformat_emit_xfloat.isra.0+0x1ba>
   140003ea2:	f6 43 09 02          	test   BYTE PTR [rbx+0x9],0x2
   140003ea6:	74 22                	je     140003eca <__pformat_emit_xfloat.isra.0+0x1ba>
   140003ea8:	83 e8 01             	sub    eax,0x1
   140003eab:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   140003eae:	66 90                	xchg   ax,ax
   140003eb0:	48 89 da             	mov    rdx,rbx
   140003eb3:	b9 30 00 00 00       	mov    ecx,0x30
   140003eb8:	e8 e3 e8 ff ff       	call   1400027a0 <__pformat_putc>
   140003ebd:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003ec0:	8d 50 ff             	lea    edx,[rax-0x1]
   140003ec3:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140003ec6:	85 c0                	test   eax,eax
   140003ec8:	7f e6                	jg     140003eb0 <__pformat_emit_xfloat.isra.0+0x1a0>
   140003eca:	4c 8d 6c 24 2e       	lea    r13,[rsp+0x2e]
   140003ecf:	48 39 f7             	cmp    rdi,rsi
   140003ed2:	72 27                	jb     140003efb <__pformat_emit_xfloat.isra.0+0x1eb>
   140003ed4:	e9 ac 01 00 00       	jmp    140004085 <__pformat_emit_xfloat.isra.0+0x375>
   140003ed9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140003ee0:	0f b7 43 20          	movzx  eax,WORD PTR [rbx+0x20]
   140003ee4:	66 89 44 24 2e       	mov    WORD PTR [rsp+0x2e],ax
   140003ee9:	66 85 c0             	test   ax,ax
   140003eec:	0f 85 e6 01 00 00    	jne    1400040d8 <__pformat_emit_xfloat.isra.0+0x3c8>
   140003ef2:	48 39 fe             	cmp    rsi,rdi
   140003ef5:	0f 84 8a 01 00 00    	je     140004085 <__pformat_emit_xfloat.isra.0+0x375>
   140003efb:	0f be 4e ff          	movsx  ecx,BYTE PTR [rsi-0x1]
   140003eff:	48 83 ee 01          	sub    rsi,0x1
   140003f03:	83 f9 2e             	cmp    ecx,0x2e
   140003f06:	0f 84 bc 01 00 00    	je     1400040c8 <__pformat_emit_xfloat.isra.0+0x3b8>
   140003f0c:	83 f9 2c             	cmp    ecx,0x2c
   140003f0f:	74 cf                	je     140003ee0 <__pformat_emit_xfloat.isra.0+0x1d0>
   140003f11:	48 89 da             	mov    rdx,rbx
   140003f14:	e8 87 e8 ff ff       	call   1400027a0 <__pformat_putc>
   140003f19:	eb d7                	jmp    140003ef2 <__pformat_emit_xfloat.isra.0+0x1e2>
   140003f1b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003f20:	48 c1 e8 03          	shr    rax,0x3
   140003f24:	41 83 c0 04          	add    r8d,0x4
   140003f28:	48 d3 e8             	shr    rax,cl
   140003f2b:	49 89 c1             	mov    r9,rax
   140003f2e:	41 8d 52 01          	lea    edx,[r10+0x1]
   140003f32:	49 0f bf e8          	movsx  rbp,r8w
   140003f36:	e9 19 fe ff ff       	jmp    140003d54 <__pformat_emit_xfloat.isra.0+0x44>
   140003f3b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003f40:	48 39 f7             	cmp    rdi,rsi
   140003f43:	72 13                	jb     140003f58 <__pformat_emit_xfloat.isra.0+0x248>
   140003f45:	45 85 e4             	test   r12d,r12d
   140003f48:	75 0e                	jne    140003f58 <__pformat_emit_xfloat.isra.0+0x248>
   140003f4a:	44 8b 53 10          	mov    r10d,DWORD PTR [rbx+0x10]
   140003f4e:	45 85 d2             	test   r10d,r10d
   140003f51:	7e 15                	jle    140003f68 <__pformat_emit_xfloat.isra.0+0x258>
   140003f53:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003f58:	c6 06 2e             	mov    BYTE PTR [rsi],0x2e
   140003f5b:	4c 8d 56 01          	lea    r10,[rsi+0x1]
   140003f5f:	e9 5e fe ff ff       	jmp    140003dc2 <__pformat_emit_xfloat.isra.0+0xb2>
   140003f64:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140003f68:	85 c0                	test   eax,eax
   140003f6a:	0f 85 20 02 00 00    	jne    140004190 <__pformat_emit_xfloat.isra.0+0x480>
   140003f70:	45 85 d2             	test   r10d,r10d
   140003f73:	75 0b                	jne    140003f80 <__pformat_emit_xfloat.isra.0+0x270>
   140003f75:	c6 06 30             	mov    BYTE PTR [rsi],0x30
   140003f78:	48 83 c6 01          	add    rsi,0x1
   140003f7c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140003f80:	48 39 fe             	cmp    rsi,rdi
   140003f83:	0f 84 ef 01 00 00    	je     140004178 <__pformat_emit_xfloat.isra.0+0x468>
   140003f89:	44 8b 53 0c          	mov    r10d,DWORD PTR [rbx+0xc]
   140003f8d:	41 bc 02 00 00 00    	mov    r12d,0x2
   140003f93:	45 85 d2             	test   r10d,r10d
   140003f96:	0f 8e c6 fe ff ff    	jle    140003e62 <__pformat_emit_xfloat.isra.0+0x152>
   140003f9c:	8b 53 10             	mov    edx,DWORD PTR [rbx+0x10]
   140003f9f:	49 89 f1             	mov    r9,rsi
   140003fa2:	41 0f bf c0          	movsx  eax,r8w
   140003fa6:	49 29 f9             	sub    r9,rdi
   140003fa9:	46 8d 1c 0a          	lea    r11d,[rdx+r9*1]
   140003fad:	85 d2                	test   edx,edx
   140003faf:	89 ca                	mov    edx,ecx
   140003fb1:	45 0f 4f cb          	cmovg  r9d,r11d
   140003fb5:	81 e2 c0 01 00 00    	and    edx,0x1c0
   140003fbb:	83 fa 01             	cmp    edx,0x1
   140003fbe:	49 0f bf d0          	movsx  rdx,r8w
   140003fc2:	41 83 d9 fa          	sbb    r9d,0xfffffffa
   140003fc6:	48 69 d2 67 66 66 66 	imul   rdx,rdx,0x66666667
   140003fcd:	c1 f8 1f             	sar    eax,0x1f
   140003fd0:	45 89 cb             	mov    r11d,r9d
   140003fd3:	48 c1 fa 22          	sar    rdx,0x22
   140003fd7:	29 c2                	sub    edx,eax
   140003fd9:	74 2e                	je     140004009 <__pformat_emit_xfloat.isra.0+0x2f9>
   140003fdb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003fe0:	48 63 c2             	movsxd rax,edx
   140003fe3:	c1 fa 1f             	sar    edx,0x1f
   140003fe6:	41 83 c3 01          	add    r11d,0x1
   140003fea:	48 69 c0 67 66 66 66 	imul   rax,rax,0x66666667
   140003ff1:	48 c1 f8 22          	sar    rax,0x22
   140003ff5:	29 d0                	sub    eax,edx
   140003ff7:	89 c2                	mov    edx,eax
   140003ff9:	75 e5                	jne    140003fe0 <__pformat_emit_xfloat.isra.0+0x2d0>
   140003ffb:	45 89 dc             	mov    r12d,r11d
   140003ffe:	45 29 cc             	sub    r12d,r9d
   140004001:	41 83 c4 02          	add    r12d,0x2
   140004005:	45 0f bf e4          	movsx  r12d,r12w
   140004009:	45 39 da             	cmp    r10d,r11d
   14000400c:	0f 8e ee 00 00 00    	jle    140004100 <__pformat_emit_xfloat.isra.0+0x3f0>
   140004012:	45 29 da             	sub    r10d,r11d
   140004015:	f6 c5 06             	test   ch,0x6
   140004018:	0f 85 e8 00 00 00    	jne    140004106 <__pformat_emit_xfloat.isra.0+0x3f6>
   14000401e:	41 83 ea 01          	sub    r10d,0x1
   140004022:	44 89 53 0c          	mov    DWORD PTR [rbx+0xc],r10d
   140004026:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000402d:	00 00 00 
   140004030:	48 89 da             	mov    rdx,rbx
   140004033:	b9 20 00 00 00       	mov    ecx,0x20
   140004038:	e8 63 e7 ff ff       	call   1400027a0 <__pformat_putc>
   14000403d:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140004040:	8d 50 ff             	lea    edx,[rax-0x1]
   140004043:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140004046:	85 c0                	test   eax,eax
   140004048:	7f e6                	jg     140004030 <__pformat_emit_xfloat.isra.0+0x320>
   14000404a:	8b 4b 08             	mov    ecx,DWORD PTR [rbx+0x8]
   14000404d:	f6 c1 80             	test   cl,0x80
   140004050:	0f 84 15 fe ff ff    	je     140003e6b <__pformat_emit_xfloat.isra.0+0x15b>
   140004056:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000405d:	00 00 00 
   140004060:	48 89 da             	mov    rdx,rbx
   140004063:	b9 2d 00 00 00       	mov    ecx,0x2d
   140004068:	e8 33 e7 ff ff       	call   1400027a0 <__pformat_putc>
   14000406d:	e9 0b fe ff ff       	jmp    140003e7d <__pformat_emit_xfloat.isra.0+0x16d>
   140004072:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140004078:	48 89 da             	mov    rdx,rbx
   14000407b:	b9 30 00 00 00       	mov    ecx,0x30
   140004080:	e8 1b e7 ff ff       	call   1400027a0 <__pformat_putc>
   140004085:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   140004088:	8d 50 ff             	lea    edx,[rax-0x1]
   14000408b:	89 53 10             	mov    DWORD PTR [rbx+0x10],edx
   14000408e:	85 c0                	test   eax,eax
   140004090:	7f e6                	jg     140004078 <__pformat_emit_xfloat.isra.0+0x368>
   140004092:	8b 4b 08             	mov    ecx,DWORD PTR [rbx+0x8]
   140004095:	48 89 da             	mov    rdx,rbx
   140004098:	83 e1 20             	and    ecx,0x20
   14000409b:	83 c9 50             	or     ecx,0x50
   14000409e:	e8 fd e6 ff ff       	call   1400027a0 <__pformat_putc>
   1400040a3:	44 01 63 0c          	add    DWORD PTR [rbx+0xc],r12d
   1400040a7:	48 89 da             	mov    rdx,rbx
   1400040aa:	48 89 e9             	mov    rcx,rbp
   1400040ad:	81 4b 08 c0 01 00 00 	or     DWORD PTR [rbx+0x8],0x1c0
   1400040b4:	48 83 c4 58          	add    rsp,0x58
   1400040b8:	5b                   	pop    rbx
   1400040b9:	5e                   	pop    rsi
   1400040ba:	5f                   	pop    rdi
   1400040bb:	5d                   	pop    rbp
   1400040bc:	41 5c                	pop    r12
   1400040be:	41 5d                	pop    r13
   1400040c0:	e9 bb ef ff ff       	jmp    140003080 <__pformat_int.isra.0>
   1400040c5:	0f 1f 00             	nop    DWORD PTR [rax]
   1400040c8:	48 89 d9             	mov    rcx,rbx
   1400040cb:	e8 40 f3 ff ff       	call   140003410 <__pformat_emit_radix_point>
   1400040d0:	e9 1d fe ff ff       	jmp    140003ef2 <__pformat_emit_xfloat.isra.0+0x1e2>
   1400040d5:	0f 1f 00             	nop    DWORD PTR [rax]
   1400040d8:	49 89 d8             	mov    r8,rbx
   1400040db:	ba 01 00 00 00       	mov    edx,0x1
   1400040e0:	4c 89 e9             	mov    rcx,r13
   1400040e3:	e8 18 e7 ff ff       	call   140002800 <__pformat_wputchars>
   1400040e8:	e9 05 fe ff ff       	jmp    140003ef2 <__pformat_emit_xfloat.isra.0+0x1e2>
   1400040ed:	0f 1f 00             	nop    DWORD PTR [rax]
   1400040f0:	4c 89 d6             	mov    rsi,r10
   1400040f3:	e9 9a fc ff ff       	jmp    140003d92 <__pformat_emit_xfloat.isra.0+0x82>
   1400040f8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400040ff:	00 
   140004100:	41 ba ff ff ff ff    	mov    r10d,0xffffffff
   140004106:	44 89 53 0c          	mov    DWORD PTR [rbx+0xc],r10d
   14000410a:	e9 53 fd ff ff       	jmp    140003e62 <__pformat_emit_xfloat.isra.0+0x152>
   14000410f:	90                   	nop
   140004110:	48 89 da             	mov    rdx,rbx
   140004113:	b9 2b 00 00 00       	mov    ecx,0x2b
   140004118:	e8 83 e6 ff ff       	call   1400027a0 <__pformat_putc>
   14000411d:	e9 5b fd ff ff       	jmp    140003e7d <__pformat_emit_xfloat.isra.0+0x16d>
   140004122:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140004128:	45 85 d2             	test   r10d,r10d
   14000412b:	7e 6b                	jle    140004198 <__pformat_emit_xfloat.isra.0+0x488>
   14000412d:	31 ed                	xor    ebp,ebp
   14000412f:	45 31 c0             	xor    r8d,r8d
   140004132:	ba 10 00 00 00       	mov    edx,0x10
   140004137:	45 31 c9             	xor    r9d,r9d
   14000413a:	e9 15 fc ff ff       	jmp    140003d54 <__pformat_emit_xfloat.isra.0+0x44>
   14000413f:	90                   	nop
   140004140:	45 85 d2             	test   r10d,r10d
   140004143:	0f 8f 0b fc ff ff    	jg     140003d54 <__pformat_emit_xfloat.isra.0+0x44>
   140004149:	8b 4b 08             	mov    ecx,DWORD PTR [rbx+0x8]
   14000414c:	48 8d 7c 24 30       	lea    rdi,[rsp+0x30]
   140004151:	e9 e0 fc ff ff       	jmp    140003e36 <__pformat_emit_xfloat.isra.0+0x126>
   140004156:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000415d:	00 00 00 
   140004160:	48 89 da             	mov    rdx,rbx
   140004163:	b9 20 00 00 00       	mov    ecx,0x20
   140004168:	e8 33 e6 ff ff       	call   1400027a0 <__pformat_putc>
   14000416d:	e9 0b fd ff ff       	jmp    140003e7d <__pformat_emit_xfloat.isra.0+0x16d>
   140004172:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140004178:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   14000417b:	85 c0                	test   eax,eax
   14000417d:	0f 8f bb fc ff ff    	jg     140003e3e <__pformat_emit_xfloat.isra.0+0x12e>
   140004183:	e9 ae fc ff ff       	jmp    140003e36 <__pformat_emit_xfloat.isra.0+0x126>
   140004188:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000418f:	00 
   140004190:	49 89 f2             	mov    r10,rsi
   140004193:	e9 2e fc ff ff       	jmp    140003dc6 <__pformat_emit_xfloat.isra.0+0xb6>
   140004198:	41 8b 48 08          	mov    ecx,DWORD PTR [r8+0x8]
   14000419c:	31 ed                	xor    ebp,ebp
   14000419e:	45 31 c0             	xor    r8d,r8d
   1400041a1:	48 8d 7c 24 30       	lea    rdi,[rsp+0x30]
   1400041a6:	e9 8b fc ff ff       	jmp    140003e36 <__pformat_emit_xfloat.isra.0+0x126>
   1400041ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000001400041b0 <__mingw_pformat>:
   1400041b0:	41 57                	push   r15
   1400041b2:	41 56                	push   r14
   1400041b4:	41 55                	push   r13
   1400041b6:	41 54                	push   r12
   1400041b8:	55                   	push   rbp
   1400041b9:	57                   	push   rdi
   1400041ba:	56                   	push   rsi
   1400041bb:	53                   	push   rbx
   1400041bc:	48 81 ec a8 00 00 00 	sub    rsp,0xa8
   1400041c3:	4c 8b ac 24 10 01 00 	mov    r13,QWORD PTR [rsp+0x110]
   1400041ca:	00 
   1400041cb:	89 cf                	mov    edi,ecx
   1400041cd:	48 89 d5             	mov    rbp,rdx
   1400041d0:	44 89 c3             	mov    ebx,r8d
   1400041d3:	4c 89 ce             	mov    rsi,r9
   1400041d6:	e8 9d 39 00 00       	call   140007b78 <_errno>
   1400041db:	0f be 0e             	movsx  ecx,BYTE PTR [rsi]
   1400041de:	81 e7 00 60 00 00    	and    edi,0x6000
   1400041e4:	31 d2                	xor    edx,edx
   1400041e6:	8b 00                	mov    eax,DWORD PTR [rax]
   1400041e8:	89 9c 24 98 00 00 00 	mov    DWORD PTR [rsp+0x98],ebx
   1400041ef:	48 8d 5e 01          	lea    rbx,[rsi+0x1]
   1400041f3:	48 89 6c 24 70       	mov    QWORD PTR [rsp+0x70],rbp
   1400041f8:	89 44 24 30          	mov    DWORD PTR [rsp+0x30],eax
   1400041fc:	48 b8 ff ff ff ff fd 	movabs rax,0xfffffffdffffffff
   140004203:	ff ff ff 
   140004206:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
   14000420d:	00 
   14000420e:	31 c0                	xor    eax,eax
   140004210:	66 89 84 24 88 00 00 	mov    WORD PTR [rsp+0x88],ax
   140004217:	00 
   140004218:	89 c8                	mov    eax,ecx
   14000421a:	89 7c 24 78          	mov    DWORD PTR [rsp+0x78],edi
   14000421e:	c7 44 24 7c ff ff ff 	mov    DWORD PTR [rsp+0x7c],0xffffffff
   140004225:	ff 
   140004226:	c7 84 24 8c 00 00 00 	mov    DWORD PTR [rsp+0x8c],0x0
   14000422d:	00 00 00 00 
   140004231:	66 89 94 24 90 00 00 	mov    WORD PTR [rsp+0x90],dx
   140004238:	00 
   140004239:	c7 84 24 94 00 00 00 	mov    DWORD PTR [rsp+0x94],0x0
   140004240:	00 00 00 00 
   140004244:	c7 84 24 9c 00 00 00 	mov    DWORD PTR [rsp+0x9c],0xffffffff
   14000424b:	ff ff ff ff 
   14000424f:	85 c9                	test   ecx,ecx
   140004251:	0f 84 10 01 00 00    	je     140004367 <__mingw_pformat+0x1b7>
   140004257:	4c 8d 7c 24 7c       	lea    r15,[rsp+0x7c]
   14000425c:	4c 8d 25 0d 51 00 00 	lea    r12,[rip+0x510d]        # 140009370 <.rdata+0x20>
   140004263:	eb 49                	jmp    1400042ae <__mingw_pformat+0xfe>
   140004265:	0f 1f 00             	nop    DWORD PTR [rax]
   140004268:	8b 54 24 78          	mov    edx,DWORD PTR [rsp+0x78]
   14000426c:	8b b4 24 94 00 00 00 	mov    esi,DWORD PTR [rsp+0x94]
   140004273:	f6 c6 40             	test   dh,0x40
   140004276:	75 09                	jne    140004281 <__mingw_pformat+0xd1>
   140004278:	39 b4 24 98 00 00 00 	cmp    DWORD PTR [rsp+0x98],esi
   14000427f:	7e 11                	jle    140004292 <__mingw_pformat+0xe2>
   140004281:	4c 8b 44 24 70       	mov    r8,QWORD PTR [rsp+0x70]
   140004286:	80 e6 20             	and    dh,0x20
   140004289:	75 6d                	jne    1400042f8 <__mingw_pformat+0x148>
   14000428b:	48 63 d6             	movsxd rdx,esi
   14000428e:	41 88 04 10          	mov    BYTE PTR [r8+rdx*1],al
   140004292:	83 c6 01             	add    esi,0x1
   140004295:	89 b4 24 94 00 00 00 	mov    DWORD PTR [rsp+0x94],esi
   14000429c:	0f b6 03             	movzx  eax,BYTE PTR [rbx]
   14000429f:	48 83 c3 01          	add    rbx,0x1
   1400042a3:	0f be c8             	movsx  ecx,al
   1400042a6:	85 c9                	test   ecx,ecx
   1400042a8:	0f 84 b2 00 00 00    	je     140004360 <__mingw_pformat+0x1b0>
   1400042ae:	83 f9 25             	cmp    ecx,0x25
   1400042b1:	75 b5                	jne    140004268 <__mingw_pformat+0xb8>
   1400042b3:	0f b6 03             	movzx  eax,BYTE PTR [rbx]
   1400042b6:	89 7c 24 78          	mov    DWORD PTR [rsp+0x78],edi
   1400042ba:	48 c7 44 24 7c ff ff 	mov    QWORD PTR [rsp+0x7c],0xffffffffffffffff
   1400042c1:	ff ff 
   1400042c3:	84 c0                	test   al,al
   1400042c5:	0f 84 95 00 00 00    	je     140004360 <__mingw_pformat+0x1b0>
   1400042cb:	48 89 de             	mov    rsi,rbx
   1400042ce:	4d 89 fb             	mov    r11,r15
   1400042d1:	45 31 d2             	xor    r10d,r10d
   1400042d4:	45 31 f6             	xor    r14d,r14d
   1400042d7:	8d 50 e0             	lea    edx,[rax-0x20]
   1400042da:	48 8d 6e 01          	lea    rbp,[rsi+0x1]
   1400042de:	0f be c8             	movsx  ecx,al
   1400042e1:	80 fa 5a             	cmp    dl,0x5a
   1400042e4:	77 22                	ja     140004308 <__mingw_pformat+0x158>
   1400042e6:	0f b6 d2             	movzx  edx,dl
   1400042e9:	49 63 14 94          	movsxd rdx,DWORD PTR [r12+rdx*4]
   1400042ed:	4c 01 e2             	add    rdx,r12
   1400042f0:	ff e2                	jmp    rdx
   1400042f2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400042f8:	4c 89 c2             	mov    rdx,r8
   1400042fb:	e8 c0 38 00 00       	call   140007bc0 <fputc>
   140004300:	eb 90                	jmp    140004292 <__mingw_pformat+0xe2>
   140004302:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140004308:	83 e8 30             	sub    eax,0x30
   14000430b:	3c 09                	cmp    al,0x9
   14000430d:	0f 87 14 02 00 00    	ja     140004527 <__mingw_pformat+0x377>
   140004313:	41 83 fe 03          	cmp    r14d,0x3
   140004317:	0f 87 0a 02 00 00    	ja     140004527 <__mingw_pformat+0x377>
   14000431d:	45 85 f6             	test   r14d,r14d
   140004320:	0f 85 43 07 00 00    	jne    140004a69 <__mingw_pformat+0x8b9>
   140004326:	41 be 01 00 00 00    	mov    r14d,0x1
   14000432c:	4d 85 db             	test   r11,r11
   14000432f:	74 1f                	je     140004350 <__mingw_pformat+0x1a0>
   140004331:	41 8b 03             	mov    eax,DWORD PTR [r11]
   140004334:	85 c0                	test   eax,eax
   140004336:	0f 88 e6 07 00 00    	js     140004b22 <__mingw_pformat+0x972>
   14000433c:	8d 04 80             	lea    eax,[rax+rax*4]
   14000433f:	8d 44 41 d0          	lea    eax,[rcx+rax*2-0x30]
   140004343:	41 89 03             	mov    DWORD PTR [r11],eax
   140004346:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000434d:	00 00 00 
   140004350:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   140004354:	48 89 ee             	mov    rsi,rbp
   140004357:	84 c0                	test   al,al
   140004359:	0f 85 78 ff ff ff    	jne    1400042d7 <__mingw_pformat+0x127>
   14000435f:	90                   	nop
   140004360:	8b 8c 24 94 00 00 00 	mov    ecx,DWORD PTR [rsp+0x94]
   140004367:	89 c8                	mov    eax,ecx
   140004369:	48 81 c4 a8 00 00 00 	add    rsp,0xa8
   140004370:	5b                   	pop    rbx
   140004371:	5e                   	pop    rsi
   140004372:	5f                   	pop    rdi
   140004373:	5d                   	pop    rbp
   140004374:	41 5c                	pop    r12
   140004376:	41 5d                	pop    r13
   140004378:	41 5e                	pop    r14
   14000437a:	41 5f                	pop    r15
   14000437c:	c3                   	ret
   14000437d:	0f 1f 00             	nop    DWORD PTR [rax]
   140004380:	81 64 24 78 ff fe ff 	and    DWORD PTR [rsp+0x78],0xfffffeff
   140004387:	ff 
   140004388:	41 83 fa 03          	cmp    r10d,0x3
   14000438c:	0f 84 d0 07 00 00    	je     140004b62 <__mingw_pformat+0x9b2>
   140004392:	41 83 fa 02          	cmp    r10d,0x2
   140004396:	0f 84 59 08 00 00    	je     140004bf5 <__mingw_pformat+0xa45>
   14000439c:	41 8b 45 00          	mov    eax,DWORD PTR [r13+0x0]
   1400043a0:	41 83 fa 01          	cmp    r10d,0x1
   1400043a4:	0f 84 68 07 00 00    	je     140004b12 <__mingw_pformat+0x962>
   1400043aa:	89 c2                	mov    edx,eax
   1400043ac:	41 83 fa 05          	cmp    r10d,0x5
   1400043b0:	0f b6 c0             	movzx  eax,al
   1400043b3:	48 0f 45 c2          	cmovne rax,rdx
   1400043b7:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
   1400043bc:	83 f9 75             	cmp    ecx,0x75
   1400043bf:	0f 84 1e 08 00 00    	je     140004be3 <__mingw_pformat+0xa33>
   1400043c5:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
   1400043ca:	48 89 c2             	mov    rdx,rax
   1400043cd:	e8 fe e7 ff ff       	call   140002bd0 <__pformat_xint.isra.0>
   1400043d2:	e9 a9 02 00 00       	jmp    140004680 <__mingw_pformat+0x4d0>
   1400043d7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   1400043de:	00 00 
   1400043e0:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   1400043e4:	41 ba 03 00 00 00    	mov    r10d,0x3
   1400043ea:	48 89 ee             	mov    rsi,rbp
   1400043ed:	41 be 04 00 00 00    	mov    r14d,0x4
   1400043f3:	e9 5f ff ff ff       	jmp    140004357 <__mingw_pformat+0x1a7>
   1400043f8:	81 4c 24 78 80 00 00 	or     DWORD PTR [rsp+0x78],0x80
   1400043ff:	00 
   140004400:	49 8d 5d 08          	lea    rbx,[r13+0x8]
   140004404:	41 83 fa 03          	cmp    r10d,0x3
   140004408:	0f 84 4b 07 00 00    	je     140004b59 <__mingw_pformat+0x9a9>
   14000440e:	49 63 4d 00          	movsxd rcx,DWORD PTR [r13+0x0]
   140004412:	41 83 fa 02          	cmp    r10d,0x2
   140004416:	74 16                	je     14000442e <__mingw_pformat+0x27e>
   140004418:	41 83 fa 01          	cmp    r10d,0x1
   14000441c:	0f 84 e7 06 00 00    	je     140004b09 <__mingw_pformat+0x959>
   140004422:	48 0f be c1          	movsx  rax,cl
   140004426:	41 83 fa 05          	cmp    r10d,0x5
   14000442a:	48 0f 44 c8          	cmove  rcx,rax
   14000442e:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   140004433:	49 89 dd             	mov    r13,rbx
   140004436:	48 89 eb             	mov    rbx,rbp
   140004439:	e8 42 ec ff ff       	call   140003080 <__pformat_int.isra.0>
   14000443e:	e9 59 fe ff ff       	jmp    14000429c <__mingw_pformat+0xec>
   140004443:	45 85 f6             	test   r14d,r14d
   140004446:	75 0a                	jne    140004452 <__mingw_pformat+0x2a2>
   140004448:	39 7c 24 78          	cmp    DWORD PTR [rsp+0x78],edi
   14000444c:	0f 84 85 06 00 00    	je     140004ad7 <__mingw_pformat+0x927>
   140004452:	49 8b 55 00          	mov    rdx,QWORD PTR [r13+0x0]
   140004456:	49 8d 5d 08          	lea    rbx,[r13+0x8]
   14000445a:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
   14000445f:	b9 78 00 00 00       	mov    ecx,0x78
   140004464:	49 89 dd             	mov    r13,rbx
   140004467:	48 89 eb             	mov    rbx,rbp
   14000446a:	e8 61 e7 ff ff       	call   140002bd0 <__pformat_xint.isra.0>
   14000446f:	e9 28 fe ff ff       	jmp    14000429c <__mingw_pformat+0xec>
   140004474:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   140004478:	3c 68                	cmp    al,0x68
   14000447a:	0f 84 31 07 00 00    	je     140004bb1 <__mingw_pformat+0xa01>
   140004480:	48 89 ee             	mov    rsi,rbp
   140004483:	41 ba 01 00 00 00    	mov    r10d,0x1
   140004489:	41 be 04 00 00 00    	mov    r14d,0x4
   14000448f:	e9 c3 fe ff ff       	jmp    140004357 <__mingw_pformat+0x1a7>
   140004494:	8b 4c 24 30          	mov    ecx,DWORD PTR [rsp+0x30]
   140004498:	48 89 eb             	mov    rbx,rbp
   14000449b:	e8 60 37 00 00       	call   140007c00 <strerror>
   1400044a0:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   1400044a5:	48 89 c1             	mov    rcx,rax
   1400044a8:	e8 33 e6 ff ff       	call   140002ae0 <__pformat_puts>
   1400044ad:	e9 ea fd ff ff       	jmp    14000429c <__mingw_pformat+0xec>
   1400044b2:	49 8b 55 00          	mov    rdx,QWORD PTR [r13+0x0]
   1400044b6:	48 63 84 24 94 00 00 	movsxd rax,DWORD PTR [rsp+0x94]
   1400044bd:	00 
   1400044be:	41 83 fa 05          	cmp    r10d,0x5
   1400044c2:	0f 84 e2 06 00 00    	je     140004baa <__mingw_pformat+0x9fa>
   1400044c8:	41 83 fa 01          	cmp    r10d,0x1
   1400044cc:	0f 84 2c 07 00 00    	je     140004bfe <__mingw_pformat+0xa4e>
   1400044d2:	41 83 fa 02          	cmp    r10d,0x2
   1400044d6:	74 0a                	je     1400044e2 <__mingw_pformat+0x332>
   1400044d8:	41 83 fa 03          	cmp    r10d,0x3
   1400044dc:	0f 84 38 06 00 00    	je     140004b1a <__mingw_pformat+0x96a>
   1400044e2:	89 02                	mov    DWORD PTR [rdx],eax
   1400044e4:	e9 97 01 00 00       	jmp    140004680 <__mingw_pformat+0x4d0>
   1400044e9:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   1400044ed:	3c 6c                	cmp    al,0x6c
   1400044ef:	0f 84 d5 06 00 00    	je     140004bca <__mingw_pformat+0xa1a>
   1400044f5:	48 89 ee             	mov    rsi,rbp
   1400044f8:	41 ba 02 00 00 00    	mov    r10d,0x2
   1400044fe:	41 be 04 00 00 00    	mov    r14d,0x4
   140004504:	e9 4e fe ff ff       	jmp    140004357 <__mingw_pformat+0x1a7>
   140004509:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   14000450d:	3c 36                	cmp    al,0x36
   14000450f:	0f 84 72 06 00 00    	je     140004b87 <__mingw_pformat+0x9d7>
   140004515:	3c 33                	cmp    al,0x33
   140004517:	0f 85 9b 05 00 00    	jne    140004ab8 <__mingw_pformat+0x908>
   14000451d:	80 7e 02 32          	cmp    BYTE PTR [rsi+0x2],0x32
   140004521:	0f 84 f5 06 00 00    	je     140004c1c <__mingw_pformat+0xa6c>
   140004527:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   14000452c:	b9 25 00 00 00       	mov    ecx,0x25
   140004531:	e8 6a e2 ff ff       	call   1400027a0 <__pformat_putc>
   140004536:	e9 61 fd ff ff       	jmp    14000429c <__mingw_pformat+0xec>
   14000453b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140004540:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   140004544:	83 4c 24 78 04       	or     DWORD PTR [rsp+0x78],0x4
   140004549:	48 89 ee             	mov    rsi,rbp
   14000454c:	41 be 04 00 00 00    	mov    r14d,0x4
   140004552:	e9 00 fe ff ff       	jmp    140004357 <__mingw_pformat+0x1a7>
   140004557:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   14000455b:	49 8b 4d 00          	mov    rcx,QWORD PTR [r13+0x0]
   14000455f:	83 c8 20             	or     eax,0x20
   140004562:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
   140004566:	a8 04                	test   al,0x4
   140004568:	0f 84 fa 01 00 00    	je     140004768 <__mingw_pformat+0x5b8>
   14000456e:	8b 59 08             	mov    ebx,DWORD PTR [rcx+0x8]
   140004571:	48 8b 09             	mov    rcx,QWORD PTR [rcx]
   140004574:	49 89 c9             	mov    r9,rcx
   140004577:	44 0f bf d3          	movsx  r10d,bx
   14000457b:	48 89 da             	mov    rdx,rbx
   14000457e:	49 c1 e9 20          	shr    r9,0x20
   140004582:	47 8d 1c 12          	lea    r11d,[r10+r10*1]
   140004586:	41 81 e1 ff ff ff 7f 	and    r9d,0x7fffffff
   14000458d:	45 0f b7 db          	movzx  r11d,r11w
   140004591:	41 09 c9             	or     r9d,ecx
   140004594:	45 89 c8             	mov    r8d,r9d
   140004597:	41 f7 d8             	neg    r8d
   14000459a:	45 09 c8             	or     r8d,r9d
   14000459d:	41 c1 e8 1f          	shr    r8d,0x1f
   1400045a1:	45 09 d8             	or     r8d,r11d
   1400045a4:	41 bb fe ff 00 00    	mov    r11d,0xfffe
   1400045aa:	45 29 c3             	sub    r11d,r8d
   1400045ad:	41 c1 eb 10          	shr    r11d,0x10
   1400045b1:	0f 85 c4 04 00 00    	jne    140004a7b <__mingw_pformat+0x8cb>
   1400045b7:	66 85 db             	test   bx,bx
   1400045ba:	0f 88 0c 05 00 00    	js     140004acc <__mingw_pformat+0x91c>
   1400045c0:	66 81 e2 ff 7f       	and    dx,0x7fff
   1400045c5:	0f 84 dd 04 00 00    	je     140004aa8 <__mingw_pformat+0x8f8>
   1400045cb:	66 81 fa ff 7f       	cmp    dx,0x7fff
   1400045d0:	75 09                	jne    1400045db <__mingw_pformat+0x42b>
   1400045d2:	45 85 c9             	test   r9d,r9d
   1400045d5:	0f 84 7d 06 00 00    	je     140004c58 <__mingw_pformat+0xaa8>
   1400045db:	66 81 ea ff 3f       	sub    dx,0x3fff
   1400045e0:	e9 22 04 00 00       	jmp    140004a07 <__mingw_pformat+0x857>
   1400045e5:	41 83 ea 02          	sub    r10d,0x2
   1400045e9:	41 8b 45 00          	mov    eax,DWORD PTR [r13+0x0]
   1400045ed:	49 8d 5d 08          	lea    rbx,[r13+0x8]
   1400045f1:	c7 84 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],0xffffffff
   1400045f8:	ff ff ff ff 
   1400045fc:	41 83 fa 01          	cmp    r10d,0x1
   140004600:	0f 86 09 02 00 00    	jbe    14000480f <__mingw_pformat+0x65f>
   140004606:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
   14000460b:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
   140004610:	88 44 24 60          	mov    BYTE PTR [rsp+0x60],al
   140004614:	49 89 dd             	mov    r13,rbx
   140004617:	ba 01 00 00 00       	mov    edx,0x1
   14000461c:	48 89 eb             	mov    rbx,rbp
   14000461f:	e8 6c e3 ff ff       	call   140002990 <__pformat_putchars>
   140004624:	e9 73 fc ff ff       	jmp    14000429c <__mingw_pformat+0xec>
   140004629:	41 83 ea 02          	sub    r10d,0x2
   14000462d:	49 8b 4d 00          	mov    rcx,QWORD PTR [r13+0x0]
   140004631:	49 8d 5d 08          	lea    rbx,[r13+0x8]
   140004635:	41 83 fa 01          	cmp    r10d,0x1
   140004639:	0f 86 db 03 00 00    	jbe    140004a1a <__mingw_pformat+0x86a>
   14000463f:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   140004644:	e8 97 e4 ff ff       	call   140002ae0 <__pformat_puts>
   140004649:	49 89 dd             	mov    r13,rbx
   14000464c:	48 89 eb             	mov    rbx,rbp
   14000464f:	e9 48 fc ff ff       	jmp    14000429c <__mingw_pformat+0xec>
   140004654:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   140004658:	49 8b 55 00          	mov    rdx,QWORD PTR [r13+0x0]
   14000465c:	83 c8 20             	or     eax,0x20
   14000465f:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
   140004663:	a8 04                	test   al,0x4
   140004665:	0f 84 3e 02 00 00    	je     1400048a9 <__mingw_pformat+0x6f9>
   14000466b:	db 2a                	fld    TBYTE PTR [rdx]
   14000466d:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
   140004672:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   140004677:	db 7c 24 40          	fstp   TBYTE PTR [rsp+0x40]
   14000467b:	e8 10 f5 ff ff       	call   140003b90 <__pformat_gfloat>
   140004680:	49 83 c5 08          	add    r13,0x8
   140004684:	48 89 eb             	mov    rbx,rbp
   140004687:	e9 10 fc ff ff       	jmp    14000429c <__mingw_pformat+0xec>
   14000468c:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   140004690:	49 8b 55 00          	mov    rdx,QWORD PTR [r13+0x0]
   140004694:	83 c8 20             	or     eax,0x20
   140004697:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
   14000469b:	a8 04                	test   al,0x4
   14000469d:	0f 84 d5 01 00 00    	je     140004878 <__mingw_pformat+0x6c8>
   1400046a3:	db 2a                	fld    TBYTE PTR [rdx]
   1400046a5:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
   1400046aa:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   1400046af:	db 7c 24 40          	fstp   TBYTE PTR [rsp+0x40]
   1400046b3:	e8 f8 f3 ff ff       	call   140003ab0 <__pformat_float>
   1400046b8:	eb c6                	jmp    140004680 <__mingw_pformat+0x4d0>
   1400046ba:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   1400046be:	49 8b 55 00          	mov    rdx,QWORD PTR [r13+0x0]
   1400046c2:	83 c8 20             	or     eax,0x20
   1400046c5:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
   1400046c9:	a8 04                	test   al,0x4
   1400046cb:	0f 84 76 01 00 00    	je     140004847 <__mingw_pformat+0x697>
   1400046d1:	db 2a                	fld    TBYTE PTR [rdx]
   1400046d3:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
   1400046d8:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   1400046dd:	db 7c 24 40          	fstp   TBYTE PTR [rsp+0x40]
   1400046e1:	e8 2a f3 ff ff       	call   140003a10 <__pformat_efloat>
   1400046e6:	eb 98                	jmp    140004680 <__mingw_pformat+0x4d0>
   1400046e8:	45 85 f6             	test   r14d,r14d
   1400046eb:	0f 85 5f fc ff ff    	jne    140004350 <__mingw_pformat+0x1a0>
   1400046f1:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   1400046f5:	83 4c 24 78 40       	or     DWORD PTR [rsp+0x78],0x40
   1400046fa:	48 89 ee             	mov    rsi,rbp
   1400046fd:	e9 55 fc ff ff       	jmp    140004357 <__mingw_pformat+0x1a7>
   140004702:	45 85 f6             	test   r14d,r14d
   140004705:	0f 85 45 fc ff ff    	jne    140004350 <__mingw_pformat+0x1a0>
   14000470b:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   14000470f:	81 4c 24 78 00 04 00 	or     DWORD PTR [rsp+0x78],0x400
   140004716:	00 
   140004717:	48 89 ee             	mov    rsi,rbp
   14000471a:	e9 38 fc ff ff       	jmp    140004357 <__mingw_pformat+0x1a7>
   14000471f:	41 83 fe 01          	cmp    r14d,0x1
   140004723:	0f 86 0b 04 00 00    	jbe    140004b34 <__mingw_pformat+0x984>
   140004729:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   14000472d:	41 be 04 00 00 00    	mov    r14d,0x4
   140004733:	48 89 ee             	mov    rsi,rbp
   140004736:	e9 1c fc ff ff       	jmp    140004357 <__mingw_pformat+0x1a7>
   14000473b:	45 85 f6             	test   r14d,r14d
   14000473e:	0f 85 16 03 00 00    	jne    140004a5a <__mingw_pformat+0x8aa>
   140004744:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   140004748:	81 4c 24 78 00 02 00 	or     DWORD PTR [rsp+0x78],0x200
   14000474f:	00 
   140004750:	48 89 ee             	mov    rsi,rbp
   140004753:	e9 ff fb ff ff       	jmp    140004357 <__mingw_pformat+0x1a7>
   140004758:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   14000475c:	49 8b 4d 00          	mov    rcx,QWORD PTR [r13+0x0]
   140004760:	a8 04                	test   al,0x4
   140004762:	0f 85 06 fe ff ff    	jne    14000456e <__mingw_pformat+0x3be>
   140004768:	49 89 c8             	mov    r8,rcx
   14000476b:	89 ca                	mov    edx,ecx
   14000476d:	49 c1 e8 20          	shr    r8,0x20
   140004771:	f7 da                	neg    edx
   140004773:	09 ca                	or     edx,ecx
   140004775:	45 89 c1             	mov    r9d,r8d
   140004778:	c1 ea 1f             	shr    edx,0x1f
   14000477b:	41 81 e1 ff ff ff 7f 	and    r9d,0x7fffffff
   140004782:	44 09 ca             	or     edx,r9d
   140004785:	81 fa 00 00 f0 7f    	cmp    edx,0x7ff00000
   14000478b:	0f 8f ea 02 00 00    	jg     140004a7b <__mingw_pformat+0x8cb>
   140004791:	48 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],rcx
   140004796:	dd 44 24 20          	fld    QWORD PTR [rsp+0x20]
   14000479a:	db 7c 24 20          	fstp   TBYTE PTR [rsp+0x20]
   14000479e:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
   1400047a3:	66 85 d2             	test   dx,dx
   1400047a6:	79 06                	jns    1400047ae <__mingw_pformat+0x5fe>
   1400047a8:	0c 80                	or     al,0x80
   1400047aa:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
   1400047ae:	44 89 c0             	mov    eax,r8d
   1400047b1:	41 81 e0 00 00 f0 7f 	and    r8d,0x7ff00000
   1400047b8:	25 ff ff 0f 00       	and    eax,0xfffff
   1400047bd:	09 c8                	or     eax,ecx
   1400047bf:	0f 95 c1             	setne  cl
   1400047c2:	41 81 f8 00 00 f0 7f 	cmp    r8d,0x7ff00000
   1400047c9:	41 0f 95 c1          	setne  r9b
   1400047cd:	44 08 c9             	or     cl,r9b
   1400047d0:	0f 85 f9 01 00 00    	jne    1400049cf <__mingw_pformat+0x81f>
   1400047d6:	44 09 c0             	or     eax,r8d
   1400047d9:	0f 84 f0 01 00 00    	je     1400049cf <__mingw_pformat+0x81f>
   1400047df:	89 d1                	mov    ecx,edx
   1400047e1:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
   1400047e6:	48 8d 15 7d 4b 00 00 	lea    rdx,[rip+0x4b7d]        # 14000936a <.rdata+0x1a>
   1400047ed:	81 e1 00 80 00 00    	and    ecx,0x8000
   1400047f3:	e8 38 e3 ff ff       	call   140002b30 <__pformat_emit_inf_or_nan>
   1400047f8:	e9 83 fe ff ff       	jmp    140004680 <__mingw_pformat+0x4d0>
   1400047fd:	0f 1f 00             	nop    DWORD PTR [rax]
   140004800:	c7 84 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],0xffffffff
   140004807:	ff ff ff ff 
   14000480b:	49 8d 5d 08          	lea    rbx,[r13+0x8]
   14000480f:	41 8b 45 00          	mov    eax,DWORD PTR [r13+0x0]
   140004813:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
   140004818:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
   14000481d:	49 89 dd             	mov    r13,rbx
   140004820:	ba 01 00 00 00       	mov    edx,0x1
   140004825:	48 89 eb             	mov    rbx,rbp
   140004828:	66 89 44 24 60       	mov    WORD PTR [rsp+0x60],ax
   14000482d:	e8 ce df ff ff       	call   140002800 <__pformat_wputchars>
   140004832:	e9 65 fa ff ff       	jmp    14000429c <__mingw_pformat+0xec>
   140004837:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   14000483b:	49 8b 55 00          	mov    rdx,QWORD PTR [r13+0x0]
   14000483f:	a8 04                	test   al,0x4
   140004841:	0f 85 8a fe ff ff    	jne    1400046d1 <__mingw_pformat+0x521>
   140004847:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
   14000484c:	dd 44 24 20          	fld    QWORD PTR [rsp+0x20]
   140004850:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   140004855:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
   14000485a:	db 7c 24 40          	fstp   TBYTE PTR [rsp+0x40]
   14000485e:	e8 ad f1 ff ff       	call   140003a10 <__pformat_efloat>
   140004863:	e9 18 fe ff ff       	jmp    140004680 <__mingw_pformat+0x4d0>
   140004868:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   14000486c:	49 8b 55 00          	mov    rdx,QWORD PTR [r13+0x0]
   140004870:	a8 04                	test   al,0x4
   140004872:	0f 85 2b fe ff ff    	jne    1400046a3 <__mingw_pformat+0x4f3>
   140004878:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
   14000487d:	dd 44 24 20          	fld    QWORD PTR [rsp+0x20]
   140004881:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   140004886:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
   14000488b:	db 7c 24 40          	fstp   TBYTE PTR [rsp+0x40]
   14000488f:	e8 1c f2 ff ff       	call   140003ab0 <__pformat_float>
   140004894:	e9 e7 fd ff ff       	jmp    140004680 <__mingw_pformat+0x4d0>
   140004899:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   14000489d:	49 8b 55 00          	mov    rdx,QWORD PTR [r13+0x0]
   1400048a1:	a8 04                	test   al,0x4
   1400048a3:	0f 85 c2 fd ff ff    	jne    14000466b <__mingw_pformat+0x4bb>
   1400048a9:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
   1400048ae:	dd 44 24 20          	fld    QWORD PTR [rsp+0x20]
   1400048b2:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   1400048b7:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
   1400048bc:	db 7c 24 40          	fstp   TBYTE PTR [rsp+0x40]
   1400048c0:	e8 cb f2 ff ff       	call   140003b90 <__pformat_gfloat>
   1400048c5:	e9 b6 fd ff ff       	jmp    140004680 <__mingw_pformat+0x4d0>
   1400048ca:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   1400048cf:	b9 25 00 00 00       	mov    ecx,0x25
   1400048d4:	48 89 eb             	mov    rbx,rbp
   1400048d7:	e8 c4 de ff ff       	call   1400027a0 <__pformat_putc>
   1400048dc:	e9 bb f9 ff ff       	jmp    14000429c <__mingw_pformat+0xec>
   1400048e1:	45 85 f6             	test   r14d,r14d
   1400048e4:	0f 85 66 fa ff ff    	jne    140004350 <__mingw_pformat+0x1a0>
   1400048ea:	4c 8d 4c 24 60       	lea    r9,[rsp+0x60]
   1400048ef:	4c 89 5c 24 38       	mov    QWORD PTR [rsp+0x38],r11
   1400048f4:	44 89 54 24 34       	mov    DWORD PTR [rsp+0x34],r10d
   1400048f9:	81 4c 24 78 00 10 00 	or     DWORD PTR [rsp+0x78],0x1000
   140004900:	00 
   140004901:	4c 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],r9
   140004906:	c7 44 24 60 00 00 00 	mov    DWORD PTR [rsp+0x60],0x0
   14000490d:	00 
   14000490e:	e8 c5 32 00 00       	call   140007bd8 <localeconv>
   140004913:	4c 8b 4c 24 20       	mov    r9,QWORD PTR [rsp+0x20]
   140004918:	48 8d 4c 24 5e       	lea    rcx,[rsp+0x5e]
   14000491d:	41 b8 10 00 00 00    	mov    r8d,0x10
   140004923:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
   140004927:	e8 24 30 00 00       	call   140007950 <mbrtowc>
   14000492c:	44 8b 54 24 34       	mov    r10d,DWORD PTR [rsp+0x34]
   140004931:	4c 8b 5c 24 38       	mov    r11,QWORD PTR [rsp+0x38]
   140004936:	85 c0                	test   eax,eax
   140004938:	7e 0d                	jle    140004947 <__mingw_pformat+0x797>
   14000493a:	0f b7 54 24 5e       	movzx  edx,WORD PTR [rsp+0x5e]
   14000493f:	66 89 94 24 90 00 00 	mov    WORD PTR [rsp+0x90],dx
   140004946:	00 
   140004947:	89 84 24 8c 00 00 00 	mov    DWORD PTR [rsp+0x8c],eax
   14000494e:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   140004952:	48 89 ee             	mov    rsi,rbp
   140004955:	e9 fd f9 ff ff       	jmp    140004357 <__mingw_pformat+0x1a7>
   14000495a:	4d 85 db             	test   r11,r11
   14000495d:	0f 84 c6 fd ff ff    	je     140004729 <__mingw_pformat+0x579>
   140004963:	41 f7 c6 fd ff ff ff 	test   r14d,0xfffffffd
   14000496a:	0f 85 23 01 00 00    	jne    140004a93 <__mingw_pformat+0x8e3>
   140004970:	41 8b 45 00          	mov    eax,DWORD PTR [r13+0x0]
   140004974:	49 8d 55 08          	lea    rdx,[r13+0x8]
   140004978:	41 89 03             	mov    DWORD PTR [r11],eax
   14000497b:	85 c0                	test   eax,eax
   14000497d:	0f 88 83 02 00 00    	js     140004c06 <__mingw_pformat+0xa56>
   140004983:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   140004987:	49 89 d5             	mov    r13,rdx
   14000498a:	48 89 ee             	mov    rsi,rbp
   14000498d:	45 31 db             	xor    r11d,r11d
   140004990:	e9 c2 f9 ff ff       	jmp    140004357 <__mingw_pformat+0x1a7>
   140004995:	45 85 f6             	test   r14d,r14d
   140004998:	0f 85 b2 f9 ff ff    	jne    140004350 <__mingw_pformat+0x1a0>
   14000499e:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   1400049a2:	81 4c 24 78 00 01 00 	or     DWORD PTR [rsp+0x78],0x100
   1400049a9:	00 
   1400049aa:	48 89 ee             	mov    rsi,rbp
   1400049ad:	e9 a5 f9 ff ff       	jmp    140004357 <__mingw_pformat+0x1a7>
   1400049b2:	45 85 f6             	test   r14d,r14d
   1400049b5:	0f 85 95 f9 ff ff    	jne    140004350 <__mingw_pformat+0x1a0>
   1400049bb:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   1400049bf:	81 4c 24 78 00 08 00 	or     DWORD PTR [rsp+0x78],0x800
   1400049c6:	00 
   1400049c7:	48 89 ee             	mov    rsi,rbp
   1400049ca:	e9 88 f9 ff ff       	jmp    140004357 <__mingw_pformat+0x1a7>
   1400049cf:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
   1400049d4:	66 81 e2 ff 7f       	and    dx,0x7fff
   1400049d9:	0f 84 1a 01 00 00    	je     140004af9 <__mingw_pformat+0x949>
   1400049df:	66 81 fa 00 3c       	cmp    dx,0x3c00
   1400049e4:	0f 8f 06 01 00 00    	jg     140004af0 <__mingw_pformat+0x940>
   1400049ea:	44 0f bf c2          	movsx  r8d,dx
   1400049ee:	b9 01 3c 00 00       	mov    ecx,0x3c01
   1400049f3:	44 29 c1             	sub    ecx,r8d
   1400049f6:	48 d3 e8             	shr    rax,cl
   1400049f9:	01 ca                	add    edx,ecx
   1400049fb:	66 81 ea fc 3f       	sub    dx,0x3ffc
   140004a00:	48 c1 e8 03          	shr    rax,0x3
   140004a04:	48 89 c1             	mov    rcx,rax
   140004a07:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
   140004a0c:	e8 ff f2 ff ff       	call   140003d10 <__pformat_emit_xfloat.isra.0>
   140004a11:	e9 6a fc ff ff       	jmp    140004680 <__mingw_pformat+0x4d0>
   140004a16:	49 8d 5d 08          	lea    rbx,[r13+0x8]
   140004a1a:	49 8b 75 00          	mov    rsi,QWORD PTR [r13+0x0]
   140004a1e:	48 8d 05 33 49 00 00 	lea    rax,[rip+0x4933]        # 140009358 <.rdata+0x8>
   140004a25:	48 85 f6             	test   rsi,rsi
   140004a28:	48 0f 44 f0          	cmove  rsi,rax
   140004a2c:	8b 84 24 80 00 00 00 	mov    eax,DWORD PTR [rsp+0x80]
   140004a33:	85 c0                	test   eax,eax
   140004a35:	0f 88 30 01 00 00    	js     140004b6b <__mingw_pformat+0x9bb>
   140004a3b:	48 89 f1             	mov    rcx,rsi
   140004a3e:	48 63 d0             	movsxd rdx,eax
   140004a41:	e8 6a 2a 00 00       	call   1400074b0 <wcsnlen>
   140004a46:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
   140004a4b:	48 89 f1             	mov    rcx,rsi
   140004a4e:	89 c2                	mov    edx,eax
   140004a50:	e8 ab dd ff ff       	call   140002800 <__pformat_wputchars>
   140004a55:	e9 ef fb ff ff       	jmp    140004649 <__mingw_pformat+0x499>
   140004a5a:	41 83 fe 04          	cmp    r14d,0x4
   140004a5e:	0f 84 c3 fa ff ff    	je     140004527 <__mingw_pformat+0x377>
   140004a64:	b9 30 00 00 00       	mov    ecx,0x30
   140004a69:	41 83 fe 02          	cmp    r14d,0x2
   140004a6d:	b8 03 00 00 00       	mov    eax,0x3
   140004a72:	44 0f 44 f0          	cmove  r14d,eax
   140004a76:	e9 b1 f8 ff ff       	jmp    14000432c <__mingw_pformat+0x17c>
   140004a7b:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
   140004a80:	48 8d 15 df 48 00 00 	lea    rdx,[rip+0x48df]        # 140009366 <.rdata+0x16>
   140004a87:	31 c9                	xor    ecx,ecx
   140004a89:	e8 a2 e0 ff ff       	call   140002b30 <__pformat_emit_inf_or_nan>
   140004a8e:	e9 ed fb ff ff       	jmp    140004680 <__mingw_pformat+0x4d0>
   140004a93:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   140004a97:	45 31 db             	xor    r11d,r11d
   140004a9a:	48 89 ee             	mov    rsi,rbp
   140004a9d:	41 be 04 00 00 00    	mov    r14d,0x4
   140004aa3:	e9 af f8 ff ff       	jmp    140004357 <__mingw_pformat+0x1a7>
   140004aa8:	48 85 c9             	test   rcx,rcx
   140004aab:	b8 02 c0 ff ff       	mov    eax,0xffffc002
   140004ab0:	0f 45 d0             	cmovne edx,eax
   140004ab3:	e9 4f ff ff ff       	jmp    140004a07 <__mingw_pformat+0x857>
   140004ab8:	48 89 ee             	mov    rsi,rbp
   140004abb:	41 ba 03 00 00 00    	mov    r10d,0x3
   140004ac1:	41 be 04 00 00 00    	mov    r14d,0x4
   140004ac7:	e9 8b f8 ff ff       	jmp    140004357 <__mingw_pformat+0x1a7>
   140004acc:	0c 80                	or     al,0x80
   140004ace:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
   140004ad2:	e9 e9 fa ff ff       	jmp    1400045c0 <__mingw_pformat+0x410>
   140004ad7:	c7 84 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],0x10
   140004ade:	10 00 00 00 
   140004ae2:	89 f8                	mov    eax,edi
   140004ae4:	80 cc 02             	or     ah,0x2
   140004ae7:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
   140004aeb:	e9 62 f9 ff ff       	jmp    140004452 <__mingw_pformat+0x2a2>
   140004af0:	66 85 d2             	test   dx,dx
   140004af3:	0f 85 02 ff ff ff    	jne    1400049fb <__mingw_pformat+0x84b>
   140004af9:	48 85 c0             	test   rax,rax
   140004afc:	b9 05 fc ff ff       	mov    ecx,0xfffffc05
   140004b01:	0f 45 d1             	cmovne edx,ecx
   140004b04:	e9 f7 fe ff ff       	jmp    140004a00 <__mingw_pformat+0x850>
   140004b09:	48 0f bf c9          	movsx  rcx,cx
   140004b0d:	e9 1c f9 ff ff       	jmp    14000442e <__mingw_pformat+0x27e>
   140004b12:	0f b7 c0             	movzx  eax,ax
   140004b15:	e9 9d f8 ff ff       	jmp    1400043b7 <__mingw_pformat+0x207>
   140004b1a:	48 89 02             	mov    QWORD PTR [rdx],rax
   140004b1d:	e9 5e fb ff ff       	jmp    140004680 <__mingw_pformat+0x4d0>
   140004b22:	83 e9 30             	sub    ecx,0x30
   140004b25:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   140004b29:	48 89 ee             	mov    rsi,rbp
   140004b2c:	41 89 0b             	mov    DWORD PTR [r11],ecx
   140004b2f:	e9 23 f8 ff ff       	jmp    140004357 <__mingw_pformat+0x1a7>
   140004b34:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   140004b38:	41 be 02 00 00 00    	mov    r14d,0x2
   140004b3e:	48 89 ee             	mov    rsi,rbp
   140004b41:	c7 84 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],0x0
   140004b48:	00 00 00 00 
   140004b4c:	4c 8d 9c 24 80 00 00 	lea    r11,[rsp+0x80]
   140004b53:	00 
   140004b54:	e9 fe f7 ff ff       	jmp    140004357 <__mingw_pformat+0x1a7>
   140004b59:	49 8b 4d 00          	mov    rcx,QWORD PTR [r13+0x0]
   140004b5d:	e9 cc f8 ff ff       	jmp    14000442e <__mingw_pformat+0x27e>
   140004b62:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
   140004b66:	e9 4c f8 ff ff       	jmp    1400043b7 <__mingw_pformat+0x207>
   140004b6b:	48 89 f1             	mov    rcx,rsi
   140004b6e:	e8 ad 30 00 00       	call   140007c20 <wcslen>
   140004b73:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
   140004b78:	48 89 f1             	mov    rcx,rsi
   140004b7b:	89 c2                	mov    edx,eax
   140004b7d:	e8 7e dc ff ff       	call   140002800 <__pformat_wputchars>
   140004b82:	e9 c2 fa ff ff       	jmp    140004649 <__mingw_pformat+0x499>
   140004b87:	80 7e 02 34          	cmp    BYTE PTR [rsi+0x2],0x34
   140004b8b:	0f 85 96 f9 ff ff    	jne    140004527 <__mingw_pformat+0x377>
   140004b91:	0f b6 46 03          	movzx  eax,BYTE PTR [rsi+0x3]
   140004b95:	41 ba 03 00 00 00    	mov    r10d,0x3
   140004b9b:	48 83 c6 03          	add    rsi,0x3
   140004b9f:	41 be 04 00 00 00    	mov    r14d,0x4
   140004ba5:	e9 ad f7 ff ff       	jmp    140004357 <__mingw_pformat+0x1a7>
   140004baa:	88 02                	mov    BYTE PTR [rdx],al
   140004bac:	e9 cf fa ff ff       	jmp    140004680 <__mingw_pformat+0x4d0>
   140004bb1:	0f b6 46 02          	movzx  eax,BYTE PTR [rsi+0x2]
   140004bb5:	41 ba 05 00 00 00    	mov    r10d,0x5
   140004bbb:	48 83 c6 02          	add    rsi,0x2
   140004bbf:	41 be 04 00 00 00    	mov    r14d,0x4
   140004bc5:	e9 8d f7 ff ff       	jmp    140004357 <__mingw_pformat+0x1a7>
   140004bca:	0f b6 46 02          	movzx  eax,BYTE PTR [rsi+0x2]
   140004bce:	41 ba 03 00 00 00    	mov    r10d,0x3
   140004bd4:	48 83 c6 02          	add    rsi,0x2
   140004bd8:	41 be 04 00 00 00    	mov    r14d,0x4
   140004bde:	e9 74 f7 ff ff       	jmp    140004357 <__mingw_pformat+0x1a7>
   140004be3:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   140004be8:	48 89 c1             	mov    rcx,rax
   140004beb:	e8 90 e4 ff ff       	call   140003080 <__pformat_int.isra.0>
   140004bf0:	e9 8b fa ff ff       	jmp    140004680 <__mingw_pformat+0x4d0>
   140004bf5:	41 8b 45 00          	mov    eax,DWORD PTR [r13+0x0]
   140004bf9:	e9 b9 f7 ff ff       	jmp    1400043b7 <__mingw_pformat+0x207>
   140004bfe:	66 89 02             	mov    WORD PTR [rdx],ax
   140004c01:	e9 7a fa ff ff       	jmp    140004680 <__mingw_pformat+0x4d0>
   140004c06:	45 85 f6             	test   r14d,r14d
   140004c09:	75 2a                	jne    140004c35 <__mingw_pformat+0xa85>
   140004c0b:	81 4c 24 78 00 04 00 	or     DWORD PTR [rsp+0x78],0x400
   140004c12:	00 
   140004c13:	f7 5c 24 7c          	neg    DWORD PTR [rsp+0x7c]
   140004c17:	e9 67 fd ff ff       	jmp    140004983 <__mingw_pformat+0x7d3>
   140004c1c:	0f b6 46 03          	movzx  eax,BYTE PTR [rsi+0x3]
   140004c20:	41 ba 02 00 00 00    	mov    r10d,0x2
   140004c26:	48 83 c6 03          	add    rsi,0x3
   140004c2a:	41 be 04 00 00 00    	mov    r14d,0x4
   140004c30:	e9 22 f7 ff ff       	jmp    140004357 <__mingw_pformat+0x1a7>
   140004c35:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   140004c39:	49 89 d5             	mov    r13,rdx
   140004c3c:	48 89 ee             	mov    rsi,rbp
   140004c3f:	45 31 db             	xor    r11d,r11d
   140004c42:	c7 84 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],0xffffffff
   140004c49:	ff ff ff ff 
   140004c4d:	41 be 02 00 00 00    	mov    r14d,0x2
   140004c53:	e9 ff f6 ff ff       	jmp    140004357 <__mingw_pformat+0x1a7>
   140004c58:	44 89 d1             	mov    ecx,r10d
   140004c5b:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
   140004c60:	48 8d 15 03 47 00 00 	lea    rdx,[rip+0x4703]        # 14000936a <.rdata+0x1a>
   140004c67:	81 e1 00 80 00 00    	and    ecx,0x8000
   140004c6d:	e8 be de ff ff       	call   140002b30 <__pformat_emit_inf_or_nan>
   140004c72:	e9 09 fa ff ff       	jmp    140004680 <__mingw_pformat+0x4d0>
   140004c77:	90                   	nop
   140004c78:	90                   	nop
   140004c79:	90                   	nop
   140004c7a:	90                   	nop
   140004c7b:	90                   	nop
   140004c7c:	90                   	nop
   140004c7d:	90                   	nop
   140004c7e:	90                   	nop
   140004c7f:	90                   	nop

0000000140004c80 <__rv_alloc_D2A>:
   140004c80:	53                   	push   rbx
   140004c81:	48 83 ec 20          	sub    rsp,0x20
   140004c85:	31 db                	xor    ebx,ebx
   140004c87:	83 f9 1b             	cmp    ecx,0x1b
   140004c8a:	7e 18                	jle    140004ca4 <__rv_alloc_D2A+0x24>
   140004c8c:	b8 04 00 00 00       	mov    eax,0x4
   140004c91:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140004c98:	01 c0                	add    eax,eax
   140004c9a:	83 c3 01             	add    ebx,0x1
   140004c9d:	8d 50 17             	lea    edx,[rax+0x17]
   140004ca0:	39 ca                	cmp    edx,ecx
   140004ca2:	7c f4                	jl     140004c98 <__rv_alloc_D2A+0x18>
   140004ca4:	89 d9                	mov    ecx,ebx
   140004ca6:	e8 95 1c 00 00       	call   140006940 <__Balloc_D2A>
   140004cab:	89 18                	mov    DWORD PTR [rax],ebx
   140004cad:	48 83 c0 04          	add    rax,0x4
   140004cb1:	48 83 c4 20          	add    rsp,0x20
   140004cb5:	5b                   	pop    rbx
   140004cb6:	c3                   	ret
   140004cb7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140004cbe:	00 00 

0000000140004cc0 <__nrv_alloc_D2A>:
   140004cc0:	57                   	push   rdi
   140004cc1:	56                   	push   rsi
   140004cc2:	53                   	push   rbx
   140004cc3:	48 83 ec 20          	sub    rsp,0x20
   140004cc7:	48 89 ce             	mov    rsi,rcx
   140004cca:	48 89 d7             	mov    rdi,rdx
   140004ccd:	41 83 f8 1b          	cmp    r8d,0x1b
   140004cd1:	7e 65                	jle    140004d38 <__nrv_alloc_D2A+0x78>
   140004cd3:	b8 04 00 00 00       	mov    eax,0x4
   140004cd8:	31 db                	xor    ebx,ebx
   140004cda:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140004ce0:	01 c0                	add    eax,eax
   140004ce2:	83 c3 01             	add    ebx,0x1
   140004ce5:	8d 50 17             	lea    edx,[rax+0x17]
   140004ce8:	41 39 d0             	cmp    r8d,edx
   140004ceb:	7f f3                	jg     140004ce0 <__nrv_alloc_D2A+0x20>
   140004ced:	89 d9                	mov    ecx,ebx
   140004cef:	e8 4c 1c 00 00       	call   140006940 <__Balloc_D2A>
   140004cf4:	48 8d 56 01          	lea    rdx,[rsi+0x1]
   140004cf8:	89 18                	mov    DWORD PTR [rax],ebx
   140004cfa:	0f b6 0e             	movzx  ecx,BYTE PTR [rsi]
   140004cfd:	4c 8d 40 04          	lea    r8,[rax+0x4]
   140004d01:	88 48 04             	mov    BYTE PTR [rax+0x4],cl
   140004d04:	4c 89 c0             	mov    rax,r8
   140004d07:	84 c9                	test   cl,cl
   140004d09:	74 16                	je     140004d21 <__nrv_alloc_D2A+0x61>
   140004d0b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140004d10:	0f b6 0a             	movzx  ecx,BYTE PTR [rdx]
   140004d13:	48 83 c0 01          	add    rax,0x1
   140004d17:	48 83 c2 01          	add    rdx,0x1
   140004d1b:	88 08                	mov    BYTE PTR [rax],cl
   140004d1d:	84 c9                	test   cl,cl
   140004d1f:	75 ef                	jne    140004d10 <__nrv_alloc_D2A+0x50>
   140004d21:	48 85 ff             	test   rdi,rdi
   140004d24:	74 03                	je     140004d29 <__nrv_alloc_D2A+0x69>
   140004d26:	48 89 07             	mov    QWORD PTR [rdi],rax
   140004d29:	4c 89 c0             	mov    rax,r8
   140004d2c:	48 83 c4 20          	add    rsp,0x20
   140004d30:	5b                   	pop    rbx
   140004d31:	5e                   	pop    rsi
   140004d32:	5f                   	pop    rdi
   140004d33:	c3                   	ret
   140004d34:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140004d38:	31 db                	xor    ebx,ebx
   140004d3a:	eb b1                	jmp    140004ced <__nrv_alloc_D2A+0x2d>
   140004d3c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000140004d40 <__freedtoa>:
   140004d40:	ba 01 00 00 00       	mov    edx,0x1
   140004d45:	48 89 c8             	mov    rax,rcx
   140004d48:	8b 49 fc             	mov    ecx,DWORD PTR [rcx-0x4]
   140004d4b:	d3 e2                	shl    edx,cl
   140004d4d:	66 0f 6e c1          	movd   xmm0,ecx
   140004d51:	48 8d 48 fc          	lea    rcx,[rax-0x4]
   140004d55:	66 0f 6e ca          	movd   xmm1,edx
   140004d59:	66 0f 62 c1          	punpckldq xmm0,xmm1
   140004d5d:	66 0f d6 40 04       	movq   QWORD PTR [rax+0x4],xmm0
   140004d62:	e9 c9 1c 00 00       	jmp    140006a30 <__Bfree_D2A>
   140004d67:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140004d6e:	00 00 

0000000140004d70 <__quorem_D2A>:
   140004d70:	41 57                	push   r15
   140004d72:	41 56                	push   r14
   140004d74:	41 55                	push   r13
   140004d76:	41 54                	push   r12
   140004d78:	55                   	push   rbp
   140004d79:	57                   	push   rdi
   140004d7a:	56                   	push   rsi
   140004d7b:	53                   	push   rbx
   140004d7c:	48 83 ec 38          	sub    rsp,0x38
   140004d80:	31 c0                	xor    eax,eax
   140004d82:	8b 72 14             	mov    esi,DWORD PTR [rdx+0x14]
   140004d85:	49 89 cc             	mov    r12,rcx
   140004d88:	49 89 d3             	mov    r11,rdx
   140004d8b:	39 71 14             	cmp    DWORD PTR [rcx+0x14],esi
   140004d8e:	0f 8c f0 00 00 00    	jl     140004e84 <__quorem_D2A+0x114>
   140004d94:	83 ee 01             	sub    esi,0x1
   140004d97:	48 8d 5a 18          	lea    rbx,[rdx+0x18]
   140004d9b:	48 8d 69 18          	lea    rbp,[rcx+0x18]
   140004d9f:	31 d2                	xor    edx,edx
   140004da1:	4c 63 d6             	movsxd r10,esi
   140004da4:	49 c1 e2 02          	shl    r10,0x2
   140004da8:	4a 8d 3c 13          	lea    rdi,[rbx+r10*1]
   140004dac:	49 01 ea             	add    r10,rbp
   140004daf:	8b 07                	mov    eax,DWORD PTR [rdi]
   140004db1:	45 8b 02             	mov    r8d,DWORD PTR [r10]
   140004db4:	8d 48 01             	lea    ecx,[rax+0x1]
   140004db7:	44 89 c0             	mov    eax,r8d
   140004dba:	f7 f1                	div    ecx
   140004dbc:	89 44 24 2c          	mov    DWORD PTR [rsp+0x2c],eax
   140004dc0:	41 89 c5             	mov    r13d,eax
   140004dc3:	41 39 c8             	cmp    r8d,ecx
   140004dc6:	72 5e                	jb     140004e26 <__quorem_D2A+0xb6>
   140004dc8:	41 89 c7             	mov    r15d,eax
   140004dcb:	49 89 d9             	mov    r9,rbx
   140004dce:	49 89 e8             	mov    r8,rbp
   140004dd1:	45 31 f6             	xor    r14d,r14d
   140004dd4:	31 c9                	xor    ecx,ecx
   140004dd6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   140004ddd:	00 00 00 
   140004de0:	41 8b 01             	mov    eax,DWORD PTR [r9]
   140004de3:	41 8b 10             	mov    edx,DWORD PTR [r8]
   140004de6:	49 83 c1 04          	add    r9,0x4
   140004dea:	49 83 c0 04          	add    r8,0x4
   140004dee:	49 0f af c7          	imul   rax,r15
   140004df2:	4c 01 f0             	add    rax,r14
   140004df5:	49 89 c6             	mov    r14,rax
   140004df8:	89 c0                	mov    eax,eax
   140004dfa:	48 29 c2             	sub    rdx,rax
   140004dfd:	49 c1 ee 20          	shr    r14,0x20
   140004e01:	48 89 d0             	mov    rax,rdx
   140004e04:	48 29 c8             	sub    rax,rcx
   140004e07:	48 89 c1             	mov    rcx,rax
   140004e0a:	41 89 40 fc          	mov    DWORD PTR [r8-0x4],eax
   140004e0e:	48 c1 e9 20          	shr    rcx,0x20
   140004e12:	83 e1 01             	and    ecx,0x1
   140004e15:	4c 39 cf             	cmp    rdi,r9
   140004e18:	73 c6                	jae    140004de0 <__quorem_D2A+0x70>
   140004e1a:	45 8b 0a             	mov    r9d,DWORD PTR [r10]
   140004e1d:	45 85 c9             	test   r9d,r9d
   140004e20:	0f 84 a5 00 00 00    	je     140004ecb <__quorem_D2A+0x15b>
   140004e26:	4c 89 da             	mov    rdx,r11
   140004e29:	4c 89 e1             	mov    rcx,r12
   140004e2c:	e8 df 21 00 00       	call   140007010 <__cmp_D2A>
   140004e31:	85 c0                	test   eax,eax
   140004e33:	78 4b                	js     140004e80 <__quorem_D2A+0x110>
   140004e35:	48 89 e9             	mov    rcx,rbp
   140004e38:	31 d2                	xor    edx,edx
   140004e3a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140004e40:	8b 01                	mov    eax,DWORD PTR [rcx]
   140004e42:	44 8b 03             	mov    r8d,DWORD PTR [rbx]
   140004e45:	48 83 c3 04          	add    rbx,0x4
   140004e49:	48 83 c1 04          	add    rcx,0x4
   140004e4d:	4c 29 c0             	sub    rax,r8
   140004e50:	48 29 d0             	sub    rax,rdx
   140004e53:	48 89 c2             	mov    rdx,rax
   140004e56:	89 41 fc             	mov    DWORD PTR [rcx-0x4],eax
   140004e59:	48 c1 ea 20          	shr    rdx,0x20
   140004e5d:	83 e2 01             	and    edx,0x1
   140004e60:	48 39 df             	cmp    rdi,rbx
   140004e63:	73 db                	jae    140004e40 <__quorem_D2A+0xd0>
   140004e65:	48 63 c6             	movsxd rax,esi
   140004e68:	48 8d 44 85 00       	lea    rax,[rbp+rax*4+0x0]
   140004e6d:	8b 08                	mov    ecx,DWORD PTR [rax]
   140004e6f:	85 c9                	test   ecx,ecx
   140004e71:	74 2e                	je     140004ea1 <__quorem_D2A+0x131>
   140004e73:	41 8d 45 01          	lea    eax,[r13+0x1]
   140004e77:	89 44 24 2c          	mov    DWORD PTR [rsp+0x2c],eax
   140004e7b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140004e80:	8b 44 24 2c          	mov    eax,DWORD PTR [rsp+0x2c]
   140004e84:	48 83 c4 38          	add    rsp,0x38
   140004e88:	5b                   	pop    rbx
   140004e89:	5e                   	pop    rsi
   140004e8a:	5f                   	pop    rdi
   140004e8b:	5d                   	pop    rbp
   140004e8c:	41 5c                	pop    r12
   140004e8e:	41 5d                	pop    r13
   140004e90:	41 5e                	pop    r14
   140004e92:	41 5f                	pop    r15
   140004e94:	c3                   	ret
   140004e95:	0f 1f 00             	nop    DWORD PTR [rax]
   140004e98:	8b 10                	mov    edx,DWORD PTR [rax]
   140004e9a:	85 d2                	test   edx,edx
   140004e9c:	75 0c                	jne    140004eaa <__quorem_D2A+0x13a>
   140004e9e:	83 ee 01             	sub    esi,0x1
   140004ea1:	48 83 e8 04          	sub    rax,0x4
   140004ea5:	48 39 c5             	cmp    rbp,rax
   140004ea8:	72 ee                	jb     140004e98 <__quorem_D2A+0x128>
   140004eaa:	41 8d 45 01          	lea    eax,[r13+0x1]
   140004eae:	41 89 74 24 14       	mov    DWORD PTR [r12+0x14],esi
   140004eb3:	89 44 24 2c          	mov    DWORD PTR [rsp+0x2c],eax
   140004eb7:	eb c7                	jmp    140004e80 <__quorem_D2A+0x110>
   140004eb9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140004ec0:	45 8b 02             	mov    r8d,DWORD PTR [r10]
   140004ec3:	45 85 c0             	test   r8d,r8d
   140004ec6:	75 0c                	jne    140004ed4 <__quorem_D2A+0x164>
   140004ec8:	83 ee 01             	sub    esi,0x1
   140004ecb:	49 83 ea 04          	sub    r10,0x4
   140004ecf:	4c 39 d5             	cmp    rbp,r10
   140004ed2:	72 ec                	jb     140004ec0 <__quorem_D2A+0x150>
   140004ed4:	41 89 74 24 14       	mov    DWORD PTR [r12+0x14],esi
   140004ed9:	4c 89 da             	mov    rdx,r11
   140004edc:	4c 89 e1             	mov    rcx,r12
   140004edf:	e8 2c 21 00 00       	call   140007010 <__cmp_D2A>
   140004ee4:	85 c0                	test   eax,eax
   140004ee6:	0f 89 49 ff ff ff    	jns    140004e35 <__quorem_D2A+0xc5>
   140004eec:	eb 92                	jmp    140004e80 <__quorem_D2A+0x110>
   140004eee:	90                   	nop
   140004eef:	90                   	nop

0000000140004ef0 <__gdtoa>:
   140004ef0:	41 57                	push   r15
   140004ef2:	41 56                	push   r14
   140004ef4:	41 55                	push   r13
   140004ef6:	41 54                	push   r12
   140004ef8:	55                   	push   rbp
   140004ef9:	57                   	push   rdi
   140004efa:	56                   	push   rsi
   140004efb:	53                   	push   rbx
   140004efc:	48 81 ec b8 00 00 00 	sub    rsp,0xb8
   140004f03:	8b 84 24 28 01 00 00 	mov    eax,DWORD PTR [rsp+0x128]
   140004f0a:	41 8b 29             	mov    ebp,DWORD PTR [r9]
   140004f0d:	8b bc 24 20 01 00 00 	mov    edi,DWORD PTR [rsp+0x120]
   140004f14:	89 44 24 38          	mov    DWORD PTR [rsp+0x38],eax
   140004f18:	48 8b 84 24 30 01 00 	mov    rax,QWORD PTR [rsp+0x130]
   140004f1f:	00 
   140004f20:	49 89 cd             	mov    r13,rcx
   140004f23:	4c 89 c6             	mov    rsi,r8
   140004f26:	89 54 24 30          	mov    DWORD PTR [rsp+0x30],edx
   140004f2a:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
   140004f2f:	48 8b 84 24 38 01 00 	mov    rax,QWORD PTR [rsp+0x138]
   140004f36:	00 
   140004f37:	4c 89 4c 24 40       	mov    QWORD PTR [rsp+0x40],r9
   140004f3c:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
   140004f41:	89 e8                	mov    eax,ebp
   140004f43:	83 e0 cf             	and    eax,0xffffffcf
   140004f46:	41 89 01             	mov    DWORD PTR [r9],eax
   140004f49:	89 e8                	mov    eax,ebp
   140004f4b:	83 e0 07             	and    eax,0x7
   140004f4e:	83 f8 03             	cmp    eax,0x3
   140004f51:	0f 84 e1 02 00 00    	je     140005238 <__gdtoa+0x348>
   140004f57:	89 eb                	mov    ebx,ebp
   140004f59:	83 e3 04             	and    ebx,0x4
   140004f5c:	89 5c 24 48          	mov    DWORD PTR [rsp+0x48],ebx
   140004f60:	0f 85 4a 02 00 00    	jne    1400051b0 <__gdtoa+0x2c0>
   140004f66:	85 c0                	test   eax,eax
   140004f68:	0f 84 8a 02 00 00    	je     1400051f8 <__gdtoa+0x308>
   140004f6e:	44 8b 21             	mov    r12d,DWORD PTR [rcx]
   140004f71:	b8 20 00 00 00       	mov    eax,0x20
   140004f76:	31 c9                	xor    ecx,ecx
   140004f78:	41 83 fc 20          	cmp    r12d,0x20
   140004f7c:	7e 0a                	jle    140004f88 <__gdtoa+0x98>
   140004f7e:	01 c0                	add    eax,eax
   140004f80:	83 c1 01             	add    ecx,0x1
   140004f83:	41 39 c4             	cmp    r12d,eax
   140004f86:	7f f6                	jg     140004f7e <__gdtoa+0x8e>
   140004f88:	e8 b3 19 00 00       	call   140006940 <__Balloc_D2A>
   140004f8d:	45 8d 44 24 ff       	lea    r8d,[r12-0x1]
   140004f92:	41 c1 f8 05          	sar    r8d,0x5
   140004f96:	48 89 c3             	mov    rbx,rax
   140004f99:	48 8d 50 18          	lea    rdx,[rax+0x18]
   140004f9d:	48 89 f0             	mov    rax,rsi
   140004fa0:	4d 63 c0             	movsxd r8,r8d
   140004fa3:	4a 8d 0c 86          	lea    rcx,[rsi+r8*4]
   140004fa7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140004fae:	00 00 
   140004fb0:	44 8b 08             	mov    r9d,DWORD PTR [rax]
   140004fb3:	48 83 c0 04          	add    rax,0x4
   140004fb7:	48 83 c2 04          	add    rdx,0x4
   140004fbb:	44 89 4a fc          	mov    DWORD PTR [rdx-0x4],r9d
   140004fbf:	48 39 c1             	cmp    rcx,rax
   140004fc2:	73 ec                	jae    140004fb0 <__gdtoa+0xc0>
   140004fc4:	48 8d 56 01          	lea    rdx,[rsi+0x1]
   140004fc8:	48 83 c1 01          	add    rcx,0x1
   140004fcc:	4a 8d 04 85 04 00 00 	lea    rax,[r8*4+0x4]
   140004fd3:	00 
   140004fd4:	48 39 d1             	cmp    rcx,rdx
   140004fd7:	ba 04 00 00 00       	mov    edx,0x4
   140004fdc:	48 0f 42 c2          	cmovb  rax,rdx
   140004fe0:	48 c1 f8 02          	sar    rax,0x2
   140004fe4:	41 89 c6             	mov    r14d,eax
   140004fe7:	48 8d 04 83          	lea    rax,[rbx+rax*4]
   140004feb:	eb 10                	jmp    140004ffd <__gdtoa+0x10d>
   140004fed:	0f 1f 00             	nop    DWORD PTR [rax]
   140004ff0:	48 83 e8 04          	sub    rax,0x4
   140004ff4:	45 85 f6             	test   r14d,r14d
   140004ff7:	0f 84 63 02 00 00    	je     140005260 <__gdtoa+0x370>
   140004ffd:	44 8b 78 14          	mov    r15d,DWORD PTR [rax+0x14]
   140005001:	44 89 f2             	mov    edx,r14d
   140005004:	41 83 ee 01          	sub    r14d,0x1
   140005008:	45 85 ff             	test   r15d,r15d
   14000500b:	74 e3                	je     140004ff0 <__gdtoa+0x100>
   14000500d:	4d 63 f6             	movsxd r14,r14d
   140005010:	89 53 14             	mov    DWORD PTR [rbx+0x14],edx
   140005013:	c1 e2 05             	shl    edx,0x5
   140005016:	42 0f bd 44 b3 18    	bsr    eax,DWORD PTR [rbx+r14*4+0x18]
   14000501c:	83 f0 1f             	xor    eax,0x1f
   14000501f:	29 c2                	sub    edx,eax
   140005021:	41 89 d6             	mov    r14d,edx
   140005024:	48 89 d9             	mov    rcx,rbx
   140005027:	e8 a4 17 00 00       	call   1400067d0 <__trailz_D2A>
   14000502c:	8b 4c 24 30          	mov    ecx,DWORD PTR [rsp+0x30]
   140005030:	89 84 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],eax
   140005037:	89 4c 24 60          	mov    DWORD PTR [rsp+0x60],ecx
   14000503b:	85 c0                	test   eax,eax
   14000503d:	0f 85 2d 02 00 00    	jne    140005270 <__gdtoa+0x380>
   140005043:	44 8b 5b 14          	mov    r11d,DWORD PTR [rbx+0x14]
   140005047:	45 85 db             	test   r11d,r11d
   14000504a:	0f 84 a0 01 00 00    	je     1400051f0 <__gdtoa+0x300>
   140005050:	48 8d 94 24 ac 00 00 	lea    rdx,[rsp+0xac]
   140005057:	00 
   140005058:	48 89 d9             	mov    rcx,rbx
   14000505b:	e8 e0 21 00 00       	call   140007240 <__b2d_D2A>
   140005060:	8b 44 24 60          	mov    eax,DWORD PTR [rsp+0x60]
   140005064:	66 0f ef c9          	pxor   xmm1,xmm1
   140005068:	66 49 0f 7e c1       	movq   r9,xmm0
   14000506d:	4c 89 ca             	mov    rdx,r9
   140005070:	46 8d 04 30          	lea    r8d,[rax+r14*1]
   140005074:	44 89 c8             	mov    eax,r9d
   140005077:	48 c1 ea 20          	shr    rdx,0x20
   14000507b:	41 8d 48 ff          	lea    ecx,[r8-0x1]
   14000507f:	81 e2 ff ff 0f 00    	and    edx,0xfffff
   140005085:	f2 0f 2a c9          	cvtsi2sd xmm1,ecx
   140005089:	f2 0f 59 0d 77 44 00 	mulsd  xmm1,QWORD PTR [rip+0x4477]        # 140009508 <.rdata+0x28>
   140005090:	00 
   140005091:	81 ca 00 00 f0 3f    	or     edx,0x3ff00000
   140005097:	49 89 d2             	mov    r10,rdx
   14000509a:	49 c1 e2 20          	shl    r10,0x20
   14000509e:	4c 09 d0             	or     rax,r10
   1400050a1:	41 ba 01 00 00 00    	mov    r10d,0x1
   1400050a7:	45 29 c2             	sub    r10d,r8d
   1400050aa:	66 48 0f 6e c0       	movq   xmm0,rax
   1400050af:	85 c9                	test   ecx,ecx
   1400050b1:	f2 0f 5c 05 37 44 00 	subsd  xmm0,QWORD PTR [rip+0x4437]        # 1400094f0 <.rdata+0x10>
   1400050b8:	00 
   1400050b9:	f2 0f 59 05 37 44 00 	mulsd  xmm0,QWORD PTR [rip+0x4437]        # 1400094f8 <.rdata+0x18>
   1400050c0:	00 
   1400050c1:	44 0f 49 d1          	cmovns r10d,ecx
   1400050c5:	f2 0f 58 05 33 44 00 	addsd  xmm0,QWORD PTR [rip+0x4433]        # 140009500 <.rdata+0x20>
   1400050cc:	00 
   1400050cd:	41 81 ea 35 04 00 00 	sub    r10d,0x435
   1400050d4:	f2 0f 58 c1          	addsd  xmm0,xmm1
   1400050d8:	45 85 d2             	test   r10d,r10d
   1400050db:	7e 15                	jle    1400050f2 <__gdtoa+0x202>
   1400050dd:	66 0f ef c9          	pxor   xmm1,xmm1
   1400050e1:	f2 41 0f 2a ca       	cvtsi2sd xmm1,r10d
   1400050e6:	f2 0f 59 0d 22 44 00 	mulsd  xmm1,QWORD PTR [rip+0x4422]        # 140009510 <.rdata+0x30>
   1400050ed:	00 
   1400050ee:	f2 0f 58 c1          	addsd  xmm0,xmm1
   1400050f2:	66 0f ef c9          	pxor   xmm1,xmm1
   1400050f6:	f2 44 0f 2c d8       	cvttsd2si r11d,xmm0
   1400050fb:	66 0f 2f c8          	comisd xmm1,xmm0
   1400050ff:	0f 87 eb 04 00 00    	ja     1400055f0 <__gdtoa+0x700>
   140005105:	41 89 ca             	mov    r10d,ecx
   140005108:	89 c0                	mov    eax,eax
   14000510a:	41 c1 e2 14          	shl    r10d,0x14
   14000510e:	44 01 d2             	add    edx,r10d
   140005111:	89 d2                	mov    edx,edx
   140005113:	48 c1 e2 20          	shl    rdx,0x20
   140005117:	48 09 d0             	or     rax,rdx
   14000511a:	48 89 84 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rax
   140005121:	00 
   140005122:	49 89 c7             	mov    r15,rax
   140005125:	49 89 c1             	mov    r9,rax
   140005128:	44 89 f0             	mov    eax,r14d
   14000512b:	29 c8                	sub    eax,ecx
   14000512d:	8d 50 ff             	lea    edx,[rax-0x1]
   140005130:	89 54 24 5c          	mov    DWORD PTR [rsp+0x5c],edx
   140005134:	41 83 fb 16          	cmp    r11d,0x16
   140005138:	0f 87 5a 01 00 00    	ja     140005298 <__gdtoa+0x3a8>
   14000513e:	48 8b 15 bb 46 00 00 	mov    rdx,QWORD PTR [rip+0x46bb]        # 140009800 <.refptr.__tens_D2A>
   140005145:	49 63 cb             	movsxd rcx,r11d
   140005148:	66 49 0f 6e ef       	movq   xmm5,r15
   14000514d:	f2 0f 10 04 ca       	movsd  xmm0,QWORD PTR [rdx+rcx*8]
   140005152:	66 0f 2f c5          	comisd xmm0,xmm5
   140005156:	0f 87 14 05 00 00    	ja     140005670 <__gdtoa+0x780>
   14000515c:	c7 84 24 84 00 00 00 	mov    DWORD PTR [rsp+0x84],0x0
   140005163:	00 00 00 00 
   140005167:	c7 44 24 70 00 00 00 	mov    DWORD PTR [rsp+0x70],0x0
   14000516e:	00 
   14000516f:	85 c0                	test   eax,eax
   140005171:	7f 1d                	jg     140005190 <__gdtoa+0x2a0>
   140005173:	ba 01 00 00 00       	mov    edx,0x1
   140005178:	c7 44 24 5c 00 00 00 	mov    DWORD PTR [rsp+0x5c],0x0
   14000517f:	00 
   140005180:	29 c2                	sub    edx,eax
   140005182:	89 54 24 70          	mov    DWORD PTR [rsp+0x70],edx
   140005186:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000518d:	00 00 00 
   140005190:	44 01 5c 24 5c       	add    DWORD PTR [rsp+0x5c],r11d
   140005195:	44 89 5c 24 78       	mov    DWORD PTR [rsp+0x78],r11d
   14000519a:	c7 84 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],0x0
   1400051a1:	00 00 00 00 
   1400051a5:	e9 40 01 00 00       	jmp    1400052ea <__gdtoa+0x3fa>
   1400051aa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400051b0:	31 f6                	xor    esi,esi
   1400051b2:	83 f8 04             	cmp    eax,0x4
   1400051b5:	75 66                	jne    14000521d <__gdtoa+0x32d>
   1400051b7:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
   1400051bc:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
   1400051c1:	41 b8 03 00 00 00    	mov    r8d,0x3
   1400051c7:	48 8d 0d 1b 43 00 00 	lea    rcx,[rip+0x431b]        # 1400094e9 <.rdata+0x9>
   1400051ce:	c7 00 00 80 ff ff    	mov    DWORD PTR [rax],0xffff8000
   1400051d4:	48 81 c4 b8 00 00 00 	add    rsp,0xb8
   1400051db:	5b                   	pop    rbx
   1400051dc:	5e                   	pop    rsi
   1400051dd:	5f                   	pop    rdi
   1400051de:	5d                   	pop    rbp
   1400051df:	41 5c                	pop    r12
   1400051e1:	41 5d                	pop    r13
   1400051e3:	41 5e                	pop    r14
   1400051e5:	41 5f                	pop    r15
   1400051e7:	e9 d4 fa ff ff       	jmp    140004cc0 <__nrv_alloc_D2A>
   1400051ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   1400051f0:	48 89 d9             	mov    rcx,rbx
   1400051f3:	e8 38 18 00 00       	call   140006a30 <__Bfree_D2A>
   1400051f8:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
   1400051fd:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
   140005202:	41 b8 01 00 00 00    	mov    r8d,0x1
   140005208:	48 8d 0d de 42 00 00 	lea    rcx,[rip+0x42de]        # 1400094ed <.rdata+0xd>
   14000520f:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   140005215:	e8 a6 fa ff ff       	call   140004cc0 <__nrv_alloc_D2A>
   14000521a:	48 89 c6             	mov    rsi,rax
   14000521d:	48 89 f0             	mov    rax,rsi
   140005220:	48 81 c4 b8 00 00 00 	add    rsp,0xb8
   140005227:	5b                   	pop    rbx
   140005228:	5e                   	pop    rsi
   140005229:	5f                   	pop    rdi
   14000522a:	5d                   	pop    rbp
   14000522b:	41 5c                	pop    r12
   14000522d:	41 5d                	pop    r13
   14000522f:	41 5e                	pop    r14
   140005231:	41 5f                	pop    r15
   140005233:	c3                   	ret
   140005234:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140005238:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
   14000523d:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
   140005242:	41 b8 08 00 00 00    	mov    r8d,0x8
   140005248:	48 8d 0d 91 42 00 00 	lea    rcx,[rip+0x4291]        # 1400094e0 <.rdata>
   14000524f:	c7 00 00 80 ff ff    	mov    DWORD PTR [rax],0xffff8000
   140005255:	e9 7a ff ff ff       	jmp    1400051d4 <__gdtoa+0x2e4>
   14000525a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140005260:	c7 43 14 00 00 00 00 	mov    DWORD PTR [rbx+0x14],0x0
   140005267:	e9 b8 fd ff ff       	jmp    140005024 <__gdtoa+0x134>
   14000526c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140005270:	89 c2                	mov    edx,eax
   140005272:	48 89 d9             	mov    rcx,rbx
   140005275:	e8 56 14 00 00       	call   1400066d0 <__rshift_D2A>
   14000527a:	8b 84 24 ac 00 00 00 	mov    eax,DWORD PTR [rsp+0xac]
   140005281:	8b 4c 24 30          	mov    ecx,DWORD PTR [rsp+0x30]
   140005285:	01 c1                	add    ecx,eax
   140005287:	41 29 c6             	sub    r14d,eax
   14000528a:	89 4c 24 60          	mov    DWORD PTR [rsp+0x60],ecx
   14000528e:	e9 b0 fd ff ff       	jmp    140005043 <__gdtoa+0x153>
   140005293:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140005298:	c7 84 24 84 00 00 00 	mov    DWORD PTR [rsp+0x84],0x1
   14000529f:	01 00 00 00 
   1400052a3:	44 8b 54 24 5c       	mov    r10d,DWORD PTR [rsp+0x5c]
   1400052a8:	c7 44 24 70 00 00 00 	mov    DWORD PTR [rsp+0x70],0x0
   1400052af:	00 
   1400052b0:	45 85 d2             	test   r10d,r10d
   1400052b3:	79 13                	jns    1400052c8 <__gdtoa+0x3d8>
   1400052b5:	ba 01 00 00 00       	mov    edx,0x1
   1400052ba:	c7 44 24 5c 00 00 00 	mov    DWORD PTR [rsp+0x5c],0x0
   1400052c1:	00 
   1400052c2:	29 c2                	sub    edx,eax
   1400052c4:	89 54 24 70          	mov    DWORD PTR [rsp+0x70],edx
   1400052c8:	45 85 db             	test   r11d,r11d
   1400052cb:	0f 89 bf fe ff ff    	jns    140005190 <__gdtoa+0x2a0>
   1400052d1:	44 89 d8             	mov    eax,r11d
   1400052d4:	44 29 5c 24 70       	sub    DWORD PTR [rsp+0x70],r11d
   1400052d9:	f7 d8                	neg    eax
   1400052db:	44 89 5c 24 78       	mov    DWORD PTR [rsp+0x78],r11d
   1400052e0:	45 31 db             	xor    r11d,r11d
   1400052e3:	89 84 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],eax
   1400052ea:	83 ff 09             	cmp    edi,0x9
   1400052ed:	0f 87 6d 02 00 00    	ja     140005560 <__gdtoa+0x670>
   1400052f3:	83 ff 05             	cmp    edi,0x5
   1400052f6:	0f 8f 14 03 00 00    	jg     140005610 <__gdtoa+0x720>
   1400052fc:	41 81 c0 fd 03 00 00 	add    r8d,0x3fd
   140005303:	31 c0                	xor    eax,eax
   140005305:	41 81 f8 f7 07 00 00 	cmp    r8d,0x7f7
   14000530c:	0f 96 c0             	setbe  al
   14000530f:	41 89 c7             	mov    r15d,eax
   140005312:	83 ff 04             	cmp    edi,0x4
   140005315:	0f 84 49 0d 00 00    	je     140006064 <__gdtoa+0x1174>
   14000531b:	83 ff 05             	cmp    edi,0x5
   14000531e:	0f 84 a4 0b 00 00    	je     140005ec8 <__gdtoa+0xfd8>
   140005324:	83 ff 02             	cmp    edi,0x2
   140005327:	0f 85 f3 06 00 00    	jne    140005a20 <__gdtoa+0xb30>
   14000532d:	c7 44 24 7c 00 00 00 	mov    DWORD PTR [rsp+0x7c],0x0
   140005334:	00 
   140005335:	8b 44 24 38          	mov    eax,DWORD PTR [rsp+0x38]
   140005339:	b9 01 00 00 00       	mov    ecx,0x1
   14000533e:	85 c0                	test   eax,eax
   140005340:	0f 4f c8             	cmovg  ecx,eax
   140005343:	89 8c 24 9c 00 00 00 	mov    DWORD PTR [rsp+0x9c],ecx
   14000534a:	89 c8                	mov    eax,ecx
   14000534c:	89 4c 24 50          	mov    DWORD PTR [rsp+0x50],ecx
   140005350:	89 4c 24 38          	mov    DWORD PTR [rsp+0x38],ecx
   140005354:	4c 89 8c 24 88 00 00 	mov    QWORD PTR [rsp+0x88],r9
   14000535b:	00 
   14000535c:	44 89 9c 24 98 00 00 	mov    DWORD PTR [rsp+0x98],r11d
   140005363:	00 
   140005364:	89 84 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],eax
   14000536b:	e8 10 f9 ff ff       	call   140004c80 <__rv_alloc_D2A>
   140005370:	44 8b 9c 24 98 00 00 	mov    r11d,DWORD PTR [rsp+0x98]
   140005377:	00 
   140005378:	4c 8b 8c 24 88 00 00 	mov    r9,QWORD PTR [rsp+0x88]
   14000537f:	00 
   140005380:	48 89 44 24 68       	mov    QWORD PTR [rsp+0x68],rax
   140005385:	41 8b 45 0c          	mov    eax,DWORD PTR [r13+0xc]
   140005389:	83 e8 01             	sub    eax,0x1
   14000538c:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
   140005390:	74 28                	je     1400053ba <__gdtoa+0x4ca>
   140005392:	8b 4c 24 58          	mov    ecx,DWORD PTR [rsp+0x58]
   140005396:	b8 02 00 00 00       	mov    eax,0x2
   14000539b:	85 c9                	test   ecx,ecx
   14000539d:	0f 49 c1             	cmovns eax,ecx
   1400053a0:	83 e5 08             	and    ebp,0x8
   1400053a3:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
   1400053a7:	89 c1                	mov    ecx,eax
   1400053a9:	0f 84 31 04 00 00    	je     1400057e0 <__gdtoa+0x8f0>
   1400053af:	b8 03 00 00 00       	mov    eax,0x3
   1400053b4:	29 c8                	sub    eax,ecx
   1400053b6:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
   1400053ba:	8b 54 24 50          	mov    edx,DWORD PTR [rsp+0x50]
   1400053be:	45 89 fa             	mov    r10d,r15d
   1400053c1:	83 fa 0e             	cmp    edx,0xe
   1400053c4:	0f 96 c0             	setbe  al
   1400053c7:	41 20 c2             	and    r10b,al
   1400053ca:	0f 84 10 04 00 00    	je     1400057e0 <__gdtoa+0x8f0>
   1400053d0:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   1400053d4:	0b 44 24 58          	or     eax,DWORD PTR [rsp+0x58]
   1400053d8:	0f 85 02 04 00 00    	jne    1400057e0 <__gdtoa+0x8f0>
   1400053de:	f2 0f 10 84 24 90 00 	movsd  xmm0,QWORD PTR [rsp+0x90]
   1400053e5:	00 00 
   1400053e7:	8b 8c 24 84 00 00 00 	mov    ecx,DWORD PTR [rsp+0x84]
   1400053ee:	c7 84 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],0x0
   1400053f5:	00 00 00 00 
   1400053f9:	85 c9                	test   ecx,ecx
   1400053fb:	74 12                	je     14000540f <__gdtoa+0x51f>
   1400053fd:	f2 0f 10 25 1b 41 00 	movsd  xmm4,QWORD PTR [rip+0x411b]        # 140009520 <.rdata+0x40>
   140005404:	00 
   140005405:	66 0f 2f e0          	comisd xmm4,xmm0
   140005409:	0f 87 cb 0e 00 00    	ja     1400062da <__gdtoa+0x13ea>
   14000540f:	66 0f 28 c8          	movapd xmm1,xmm0
   140005413:	f2 0f 58 c8          	addsd  xmm1,xmm0
   140005417:	f2 0f 58 0d 19 41 00 	addsd  xmm1,QWORD PTR [rip+0x4119]        # 140009538 <.rdata+0x58>
   14000541e:	00 
   14000541f:	66 48 0f 7e c8       	movq   rax,xmm1
   140005424:	48 89 c2             	mov    rdx,rax
   140005427:	89 c0                	mov    eax,eax
   140005429:	48 c1 ea 20          	shr    rdx,0x20
   14000542d:	81 ea 00 00 40 03    	sub    edx,0x3400000
   140005433:	48 c1 e2 20          	shl    rdx,0x20
   140005437:	48 09 d0             	or     rax,rdx
   14000543a:	8b 54 24 50          	mov    edx,DWORD PTR [rsp+0x50]
   14000543e:	85 d2                	test   edx,edx
   140005440:	0f 84 5f 03 00 00    	je     1400057a5 <__gdtoa+0x8b5>
   140005446:	8b 6c 24 50          	mov    ebp,DWORD PTR [rsp+0x50]
   14000544a:	45 31 ff             	xor    r15d,r15d
   14000544d:	48 8b 15 ac 43 00 00 	mov    rdx,QWORD PTR [rip+0x43ac]        # 140009800 <.refptr.__tens_D2A>
   140005454:	66 48 0f 6e d0       	movq   xmm2,rax
   140005459:	8d 45 ff             	lea    eax,[rbp-0x1]
   14000545c:	48 98                	cdqe
   14000545e:	f2 0f 10 1c c2       	movsd  xmm3,QWORD PTR [rdx+rax*8]
   140005463:	8b 44 24 7c          	mov    eax,DWORD PTR [rsp+0x7c]
   140005467:	85 c0                	test   eax,eax
   140005469:	0f 84 e6 05 00 00    	je     140005a55 <__gdtoa+0xb65>
   14000546f:	f2 0f 10 0d e9 40 00 	movsd  xmm1,QWORD PTR [rip+0x40e9]        # 140009560 <.rdata+0x80>
   140005476:	00 
   140005477:	f2 0f 2c c0          	cvttsd2si eax,xmm0
   14000547b:	48 8b 4c 24 68       	mov    rcx,QWORD PTR [rsp+0x68]
   140005480:	f2 0f 5e cb          	divsd  xmm1,xmm3
   140005484:	48 8d 51 01          	lea    rdx,[rcx+0x1]
   140005488:	f2 0f 5c ca          	subsd  xmm1,xmm2
   14000548c:	66 0f ef d2          	pxor   xmm2,xmm2
   140005490:	f2 0f 2a d0          	cvtsi2sd xmm2,eax
   140005494:	83 c0 30             	add    eax,0x30
   140005497:	88 01                	mov    BYTE PTR [rcx],al
   140005499:	f2 0f 5c c2          	subsd  xmm0,xmm2
   14000549d:	66 0f 2f c8          	comisd xmm1,xmm0
   1400054a1:	0f 87 61 10 00 00    	ja     140006508 <__gdtoa+0x1618>
   1400054a7:	f2 0f 10 25 71 40 00 	movsd  xmm4,QWORD PTR [rip+0x4071]        # 140009520 <.rdata+0x40>
   1400054ae:	00 
   1400054af:	f2 0f 10 1d 71 40 00 	movsd  xmm3,QWORD PTR [rip+0x4071]        # 140009528 <.rdata+0x48>
   1400054b6:	00 
   1400054b7:	eb 4c                	jmp    140005505 <__gdtoa+0x615>
   1400054b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400054c0:	8b 84 24 ac 00 00 00 	mov    eax,DWORD PTR [rsp+0xac]
   1400054c7:	83 c0 01             	add    eax,0x1
   1400054ca:	89 84 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],eax
   1400054d1:	39 e8                	cmp    eax,ebp
   1400054d3:	0f 8d f5 02 00 00    	jge    1400057ce <__gdtoa+0x8de>
   1400054d9:	f2 0f 59 c3          	mulsd  xmm0,xmm3
   1400054dd:	66 0f ef d2          	pxor   xmm2,xmm2
   1400054e1:	48 83 c2 01          	add    rdx,0x1
   1400054e5:	f2 0f 59 cb          	mulsd  xmm1,xmm3
   1400054e9:	f2 0f 2c c0          	cvttsd2si eax,xmm0
   1400054ed:	f2 0f 2a d0          	cvtsi2sd xmm2,eax
   1400054f1:	83 c0 30             	add    eax,0x30
   1400054f4:	88 42 ff             	mov    BYTE PTR [rdx-0x1],al
   1400054f7:	f2 0f 5c c2          	subsd  xmm0,xmm2
   1400054fb:	66 0f 2f c8          	comisd xmm1,xmm0
   1400054ff:	0f 87 03 10 00 00    	ja     140006508 <__gdtoa+0x1618>
   140005505:	66 0f 28 d4          	movapd xmm2,xmm4
   140005509:	f2 0f 5c d0          	subsd  xmm2,xmm0
   14000550d:	66 0f 2f ca          	comisd xmm1,xmm2
   140005511:	76 ad                	jbe    1400054c0 <__gdtoa+0x5d0>
   140005513:	44 0f b6 42 ff       	movzx  r8d,BYTE PTR [rdx-0x1]
   140005518:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   14000551d:	eb 12                	jmp    140005531 <__gdtoa+0x641>
   14000551f:	90                   	nop
   140005520:	48 39 c6             	cmp    rsi,rax
   140005523:	0f 84 b2 0e 00 00    	je     1400063db <__gdtoa+0x14eb>
   140005529:	44 0f b6 40 ff       	movzx  r8d,BYTE PTR [rax-0x1]
   14000552e:	48 89 c2             	mov    rdx,rax
   140005531:	48 8d 42 ff          	lea    rax,[rdx-0x1]
   140005535:	41 80 f8 39          	cmp    r8b,0x39
   140005539:	74 e5                	je     140005520 <__gdtoa+0x630>
   14000553b:	48 89 54 24 68       	mov    QWORD PTR [rsp+0x68],rdx
   140005540:	41 83 c0 01          	add    r8d,0x1
   140005544:	44 88 00             	mov    BYTE PTR [rax],r8b
   140005547:	41 83 c7 01          	add    r15d,0x1
   14000554b:	c7 44 24 48 20 00 00 	mov    DWORD PTR [rsp+0x48],0x20
   140005552:	00 
   140005553:	e9 ed 01 00 00       	jmp    140005745 <__gdtoa+0x855>
   140005558:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000555f:	00 
   140005560:	41 81 c0 fd 03 00 00 	add    r8d,0x3fd
   140005567:	31 c0                	xor    eax,eax
   140005569:	41 81 f8 f7 07 00 00 	cmp    r8d,0x7f7
   140005570:	0f 96 c0             	setbe  al
   140005573:	31 ff                	xor    edi,edi
   140005575:	41 89 c7             	mov    r15d,eax
   140005578:	66 0f ef c0          	pxor   xmm0,xmm0
   14000557c:	4c 89 4c 24 50       	mov    QWORD PTR [rsp+0x50],r9
   140005581:	f2 41 0f 2a c4       	cvtsi2sd xmm0,r12d
   140005586:	f2 0f 59 05 8a 3f 00 	mulsd  xmm0,QWORD PTR [rip+0x3f8a]        # 140009518 <.rdata+0x38>
   14000558d:	00 
   14000558e:	44 89 5c 24 38       	mov    DWORD PTR [rsp+0x38],r11d
   140005593:	f2 0f 2c c8          	cvttsd2si ecx,xmm0
   140005597:	83 c1 03             	add    ecx,0x3
   14000559a:	89 8c 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],ecx
   1400055a1:	e8 da f6 ff ff       	call   140004c80 <__rv_alloc_D2A>
   1400055a6:	44 8b 5c 24 38       	mov    r11d,DWORD PTR [rsp+0x38]
   1400055ab:	4c 8b 4c 24 50       	mov    r9,QWORD PTR [rsp+0x50]
   1400055b0:	48 89 44 24 68       	mov    QWORD PTR [rsp+0x68],rax
   1400055b5:	41 8b 45 0c          	mov    eax,DWORD PTR [r13+0xc]
   1400055b9:	83 e8 01             	sub    eax,0x1
   1400055bc:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
   1400055c0:	0f 84 be 00 00 00    	je     140005684 <__gdtoa+0x794>
   1400055c6:	c7 44 24 38 00 00 00 	mov    DWORD PTR [rsp+0x38],0x0
   1400055cd:	00 
   1400055ce:	c7 44 24 7c 01 00 00 	mov    DWORD PTR [rsp+0x7c],0x1
   1400055d5:	00 
   1400055d6:	c7 84 24 9c 00 00 00 	mov    DWORD PTR [rsp+0x9c],0xffffffff
   1400055dd:	ff ff ff ff 
   1400055e1:	c7 44 24 50 ff ff ff 	mov    DWORD PTR [rsp+0x50],0xffffffff
   1400055e8:	ff 
   1400055e9:	e9 a4 fd ff ff       	jmp    140005392 <__gdtoa+0x4a2>
   1400055ee:	66 90                	xchg   ax,ax
   1400055f0:	66 0f ef c9          	pxor   xmm1,xmm1
   1400055f4:	f2 41 0f 2a cb       	cvtsi2sd xmm1,r11d
   1400055f9:	66 0f 2e c8          	ucomisd xmm1,xmm0
   1400055fd:	7a 06                	jp     140005605 <__gdtoa+0x715>
   1400055ff:	0f 84 00 fb ff ff    	je     140005105 <__gdtoa+0x215>
   140005605:	41 83 eb 01          	sub    r11d,0x1
   140005609:	e9 f7 fa ff ff       	jmp    140005105 <__gdtoa+0x215>
   14000560e:	66 90                	xchg   ax,ax
   140005610:	83 ef 04             	sub    edi,0x4
   140005613:	45 31 ff             	xor    r15d,r15d
   140005616:	83 ff 04             	cmp    edi,0x4
   140005619:	0f 84 45 0a 00 00    	je     140006064 <__gdtoa+0x1174>
   14000561f:	83 ff 05             	cmp    edi,0x5
   140005622:	0f 84 a0 08 00 00    	je     140005ec8 <__gdtoa+0xfd8>
   140005628:	c7 44 24 7c 00 00 00 	mov    DWORD PTR [rsp+0x7c],0x0
   14000562f:	00 
   140005630:	83 ff 02             	cmp    edi,0x2
   140005633:	0f 84 fc fc ff ff    	je     140005335 <__gdtoa+0x445>
   140005639:	bf 03 00 00 00       	mov    edi,0x3
   14000563e:	66 90                	xchg   ax,ax
   140005640:	8b 4c 24 38          	mov    ecx,DWORD PTR [rsp+0x38]
   140005644:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   140005648:	01 c8                	add    eax,ecx
   14000564a:	8d 50 01             	lea    edx,[rax+0x1]
   14000564d:	89 84 24 9c 00 00 00 	mov    DWORD PTR [rsp+0x9c],eax
   140005654:	b8 01 00 00 00       	mov    eax,0x1
   140005659:	85 d2                	test   edx,edx
   14000565b:	89 54 24 50          	mov    DWORD PTR [rsp+0x50],edx
   14000565f:	0f 4f c2             	cmovg  eax,edx
   140005662:	89 c1                	mov    ecx,eax
   140005664:	e9 eb fc ff ff       	jmp    140005354 <__gdtoa+0x464>
   140005669:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140005670:	c7 84 24 84 00 00 00 	mov    DWORD PTR [rsp+0x84],0x0
   140005677:	00 00 00 00 
   14000567b:	41 83 eb 01          	sub    r11d,0x1
   14000567f:	e9 1f fc ff ff       	jmp    1400052a3 <__gdtoa+0x3b3>
   140005684:	8b 44 24 60          	mov    eax,DWORD PTR [rsp+0x60]
   140005688:	c7 44 24 38 00 00 00 	mov    DWORD PTR [rsp+0x38],0x0
   14000568f:	00 
   140005690:	c7 44 24 50 ff ff ff 	mov    DWORD PTR [rsp+0x50],0xffffffff
   140005697:	ff 
   140005698:	85 c0                	test   eax,eax
   14000569a:	0f 88 e4 0d 00 00    	js     140006484 <__gdtoa+0x1594>
   1400056a0:	c7 44 24 7c 01 00 00 	mov    DWORD PTR [rsp+0x7c],0x1
   1400056a7:	00 
   1400056a8:	c7 84 24 9c 00 00 00 	mov    DWORD PTR [rsp+0x9c],0xffffffff
   1400056af:	ff ff ff ff 
   1400056b3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400056b8:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   1400056bc:	41 3b 45 14          	cmp    eax,DWORD PTR [r13+0x14]
   1400056c0:	0f 8f 28 01 00 00    	jg     1400057ee <__gdtoa+0x8fe>
   1400056c6:	48 8b 15 33 41 00 00 	mov    rdx,QWORD PTR [rip+0x4133]        # 140009800 <.refptr.__tens_D2A>
   1400056cd:	48 63 44 24 78       	movsxd rax,DWORD PTR [rsp+0x78]
   1400056d2:	8b 4c 24 38          	mov    ecx,DWORD PTR [rsp+0x38]
   1400056d6:	f2 0f 10 14 c2       	movsd  xmm2,QWORD PTR [rdx+rax*8]
   1400056db:	48 89 c6             	mov    rsi,rax
   1400056de:	85 c9                	test   ecx,ecx
   1400056e0:	0f 89 96 08 00 00    	jns    140005f7c <__gdtoa+0x108c>
   1400056e6:	8b 44 24 50          	mov    eax,DWORD PTR [rsp+0x50]
   1400056ea:	85 c0                	test   eax,eax
   1400056ec:	0f 8f 8a 08 00 00    	jg     140005f7c <__gdtoa+0x108c>
   1400056f2:	0f 85 3e 03 00 00    	jne    140005a36 <__gdtoa+0xb46>
   1400056f8:	f2 0f 59 15 40 3e 00 	mulsd  xmm2,QWORD PTR [rip+0x3e40]        # 140009540 <.rdata+0x60>
   1400056ff:	00 
   140005700:	66 0f 2f 94 24 90 00 	comisd xmm2,QWORD PTR [rsp+0x90]
   140005707:	00 00 
   140005709:	0f 83 27 03 00 00    	jae    140005a36 <__gdtoa+0xb46>
   14000570f:	83 c6 02             	add    esi,0x2
   140005712:	45 31 d2             	xor    r10d,r10d
   140005715:	31 ed                	xor    ebp,ebp
   140005717:	41 89 f7             	mov    r15d,esi
   14000571a:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   14000571f:	48 83 44 24 68 01    	add    QWORD PTR [rsp+0x68],0x1
   140005725:	c6 06 31             	mov    BYTE PTR [rsi],0x31
   140005728:	c7 44 24 48 20 00 00 	mov    DWORD PTR [rsp+0x48],0x20
   14000572f:	00 
   140005730:	4c 89 d1             	mov    rcx,r10
   140005733:	e8 f8 12 00 00       	call   140006a30 <__Bfree_D2A>
   140005738:	48 85 ed             	test   rbp,rbp
   14000573b:	74 08                	je     140005745 <__gdtoa+0x855>
   14000573d:	48 89 e9             	mov    rcx,rbp
   140005740:	e8 eb 12 00 00       	call   140006a30 <__Bfree_D2A>
   140005745:	48 89 d9             	mov    rcx,rbx
   140005748:	e8 e3 12 00 00       	call   140006a30 <__Bfree_D2A>
   14000574d:	48 8b 7c 24 20       	mov    rdi,QWORD PTR [rsp+0x20]
   140005752:	48 8b 44 24 68       	mov    rax,QWORD PTR [rsp+0x68]
   140005757:	c6 00 00             	mov    BYTE PTR [rax],0x0
   14000575a:	44 89 3f             	mov    DWORD PTR [rdi],r15d
   14000575d:	48 8b 7c 24 28       	mov    rdi,QWORD PTR [rsp+0x28]
   140005762:	48 85 ff             	test   rdi,rdi
   140005765:	74 03                	je     14000576a <__gdtoa+0x87a>
   140005767:	48 89 07             	mov    QWORD PTR [rdi],rax
   14000576a:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
   14000576f:	8b 7c 24 48          	mov    edi,DWORD PTR [rsp+0x48]
   140005773:	09 38                	or     DWORD PTR [rax],edi
   140005775:	e9 a3 fa ff ff       	jmp    14000521d <__gdtoa+0x32d>
   14000577a:	66 0f 28 c8          	movapd xmm1,xmm0
   14000577e:	f2 0f 58 c8          	addsd  xmm1,xmm0
   140005782:	f2 0f 58 0d ae 3d 00 	addsd  xmm1,QWORD PTR [rip+0x3dae]        # 140009538 <.rdata+0x58>
   140005789:	00 
   14000578a:	66 48 0f 7e c8       	movq   rax,xmm1
   14000578f:	48 89 c2             	mov    rdx,rax
   140005792:	89 c0                	mov    eax,eax
   140005794:	48 c1 ea 20          	shr    rdx,0x20
   140005798:	81 ea 00 00 40 03    	sub    edx,0x3400000
   14000579e:	48 c1 e2 20          	shl    rdx,0x20
   1400057a2:	48 09 d0             	or     rax,rdx
   1400057a5:	f2 0f 5c 05 93 3d 00 	subsd  xmm0,QWORD PTR [rip+0x3d93]        # 140009540 <.rdata+0x60>
   1400057ac:	00 
   1400057ad:	66 48 0f 6e c8       	movq   xmm1,rax
   1400057b2:	66 0f 2f c1          	comisd xmm0,xmm1
   1400057b6:	0f 87 bf 0b 00 00    	ja     14000637b <__gdtoa+0x148b>
   1400057bc:	66 0f 57 0d 8c 3d 00 	xorpd  xmm1,XMMWORD PTR [rip+0x3d8c]        # 140009550 <.rdata+0x70>
   1400057c3:	00 
   1400057c4:	66 0f 2f c8          	comisd xmm1,xmm0
   1400057c8:	0f 87 68 02 00 00    	ja     140005a36 <__gdtoa+0xb46>
   1400057ce:	c7 44 24 58 00 00 00 	mov    DWORD PTR [rsp+0x58],0x0
   1400057d5:	00 
   1400057d6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400057dd:	00 00 00 
   1400057e0:	44 8b 44 24 60       	mov    r8d,DWORD PTR [rsp+0x60]
   1400057e5:	45 85 c0             	test   r8d,r8d
   1400057e8:	0f 89 ca fe ff ff    	jns    1400056b8 <__gdtoa+0x7c8>
   1400057ee:	8b 54 24 7c          	mov    edx,DWORD PTR [rsp+0x7c]
   1400057f2:	85 d2                	test   edx,edx
   1400057f4:	0f 84 1e 03 00 00    	je     140005b18 <__gdtoa+0xc28>
   1400057fa:	44 8b 7c 24 60       	mov    r15d,DWORD PTR [rsp+0x60]
   1400057ff:	45 29 f4             	sub    r12d,r14d
   140005802:	41 8b 55 04          	mov    edx,DWORD PTR [r13+0x4]
   140005806:	41 8d 44 24 01       	lea    eax,[r12+0x1]
   14000580b:	44 89 f9             	mov    ecx,r15d
   14000580e:	89 84 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],eax
   140005815:	44 29 e1             	sub    ecx,r12d
   140005818:	39 d1                	cmp    ecx,edx
   14000581a:	0f 8d 38 07 00 00    	jge    140005f58 <__gdtoa+0x1068>
   140005820:	8d 47 fd             	lea    eax,[rdi-0x3]
   140005823:	83 e0 fd             	and    eax,0xfffffffd
   140005826:	0f 84 e4 06 00 00    	je     140005f10 <__gdtoa+0x1020>
   14000582c:	44 89 f8             	mov    eax,r15d
   14000582f:	44 8b 7c 24 50       	mov    r15d,DWORD PTR [rsp+0x50]
   140005834:	29 d0                	sub    eax,edx
   140005836:	83 c0 01             	add    eax,0x1
   140005839:	83 ff 01             	cmp    edi,0x1
   14000583c:	0f 9f c1             	setg   cl
   14000583f:	45 85 ff             	test   r15d,r15d
   140005842:	89 84 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],eax
   140005849:	0f 9f c2             	setg   dl
   14000584c:	84 d1                	test   cl,dl
   14000584e:	74 09                	je     140005859 <__gdtoa+0x969>
   140005850:	44 39 f8             	cmp    eax,r15d
   140005853:	0f 8f a1 0d 00 00    	jg     1400065fa <__gdtoa+0x170a>
   140005859:	8b 54 24 70          	mov    edx,DWORD PTR [rsp+0x70]
   14000585d:	01 44 24 5c          	add    DWORD PTR [rsp+0x5c],eax
   140005861:	44 8b a4 24 80 00 00 	mov    r12d,DWORD PTR [rsp+0x80]
   140005868:	00 
   140005869:	01 d0                	add    eax,edx
   14000586b:	89 54 24 60          	mov    DWORD PTR [rsp+0x60],edx
   14000586f:	89 44 24 70          	mov    DWORD PTR [rsp+0x70],eax
   140005873:	b9 01 00 00 00       	mov    ecx,0x1
   140005878:	44 89 9c 24 98 00 00 	mov    DWORD PTR [rsp+0x98],r11d
   14000587f:	00 
   140005880:	e8 db 12 00 00       	call   140006b60 <__i2b_D2A>
   140005885:	c7 44 24 7c 01 00 00 	mov    DWORD PTR [rsp+0x7c],0x1
   14000588c:	00 
   14000588d:	44 8b 9c 24 98 00 00 	mov    r11d,DWORD PTR [rsp+0x98]
   140005894:	00 
   140005895:	48 89 c5             	mov    rbp,rax
   140005898:	8b 4c 24 60          	mov    ecx,DWORD PTR [rsp+0x60]
   14000589c:	85 c9                	test   ecx,ecx
   14000589e:	7e 26                	jle    1400058c6 <__gdtoa+0x9d6>
   1400058a0:	8b 54 24 5c          	mov    edx,DWORD PTR [rsp+0x5c]
   1400058a4:	85 d2                	test   edx,edx
   1400058a6:	7e 1e                	jle    1400058c6 <__gdtoa+0x9d6>
   1400058a8:	39 d1                	cmp    ecx,edx
   1400058aa:	89 d0                	mov    eax,edx
   1400058ac:	0f 4e c1             	cmovle eax,ecx
   1400058af:	29 44 24 70          	sub    DWORD PTR [rsp+0x70],eax
   1400058b3:	29 c1                	sub    ecx,eax
   1400058b5:	29 c2                	sub    edx,eax
   1400058b7:	89 84 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],eax
   1400058be:	89 4c 24 60          	mov    DWORD PTR [rsp+0x60],ecx
   1400058c2:	89 54 24 5c          	mov    DWORD PTR [rsp+0x5c],edx
   1400058c6:	8b 84 24 80 00 00 00 	mov    eax,DWORD PTR [rsp+0x80]
   1400058cd:	85 c0                	test   eax,eax
   1400058cf:	74 33                	je     140005904 <__gdtoa+0xa14>
   1400058d1:	8b 44 24 7c          	mov    eax,DWORD PTR [rsp+0x7c]
   1400058d5:	85 c0                	test   eax,eax
   1400058d7:	74 09                	je     1400058e2 <__gdtoa+0x9f2>
   1400058d9:	45 85 e4             	test   r12d,r12d
   1400058dc:	0f 85 67 08 00 00    	jne    140006149 <__gdtoa+0x1259>
   1400058e2:	8b 94 24 80 00 00 00 	mov    edx,DWORD PTR [rsp+0x80]
   1400058e9:	48 89 d9             	mov    rcx,rbx
   1400058ec:	44 89 9c 24 98 00 00 	mov    DWORD PTR [rsp+0x98],r11d
   1400058f3:	00 
   1400058f4:	e8 87 14 00 00       	call   140006d80 <__pow5mult_D2A>
   1400058f9:	44 8b 9c 24 98 00 00 	mov    r11d,DWORD PTR [rsp+0x98]
   140005900:	00 
   140005901:	48 89 c3             	mov    rbx,rax
   140005904:	b9 01 00 00 00       	mov    ecx,0x1
   140005909:	44 89 9c 24 80 00 00 	mov    DWORD PTR [rsp+0x80],r11d
   140005910:	00 
   140005911:	e8 4a 12 00 00       	call   140006b60 <__i2b_D2A>
   140005916:	44 8b 9c 24 80 00 00 	mov    r11d,DWORD PTR [rsp+0x80]
   14000591d:	00 
   14000591e:	49 89 c2             	mov    r10,rax
   140005921:	45 85 db             	test   r11d,r11d
   140005924:	0f 85 66 05 00 00    	jne    140005e90 <__gdtoa+0xfa0>
   14000592a:	83 ff 01             	cmp    edi,0x1
   14000592d:	0f 8e a5 05 00 00    	jle    140005ed8 <__gdtoa+0xfe8>
   140005933:	41 bc 1f 00 00 00    	mov    r12d,0x1f
   140005939:	8b 44 24 5c          	mov    eax,DWORD PTR [rsp+0x5c]
   14000593d:	41 29 c4             	sub    r12d,eax
   140005940:	8b 44 24 70          	mov    eax,DWORD PTR [rsp+0x70]
   140005944:	41 83 ec 04          	sub    r12d,0x4
   140005948:	41 83 e4 1f          	and    r12d,0x1f
   14000594c:	44 01 e0             	add    eax,r12d
   14000594f:	44 89 a4 24 ac 00 00 	mov    DWORD PTR [rsp+0xac],r12d
   140005956:	00 
   140005957:	44 89 e2             	mov    edx,r12d
   14000595a:	85 c0                	test   eax,eax
   14000595c:	7e 28                	jle    140005986 <__gdtoa+0xa96>
   14000595e:	89 c2                	mov    edx,eax
   140005960:	48 89 d9             	mov    rcx,rbx
   140005963:	4c 89 54 24 70       	mov    QWORD PTR [rsp+0x70],r10
   140005968:	44 89 5c 24 30       	mov    DWORD PTR [rsp+0x30],r11d
   14000596d:	e8 8e 15 00 00       	call   140006f00 <__lshift_D2A>
   140005972:	4c 8b 54 24 70       	mov    r10,QWORD PTR [rsp+0x70]
   140005977:	44 8b 5c 24 30       	mov    r11d,DWORD PTR [rsp+0x30]
   14000597c:	8b 94 24 ac 00 00 00 	mov    edx,DWORD PTR [rsp+0xac]
   140005983:	48 89 c3             	mov    rbx,rax
   140005986:	8b 44 24 5c          	mov    eax,DWORD PTR [rsp+0x5c]
   14000598a:	01 d0                	add    eax,edx
   14000598c:	89 c2                	mov    edx,eax
   14000598e:	85 c0                	test   eax,eax
   140005990:	7e 15                	jle    1400059a7 <__gdtoa+0xab7>
   140005992:	4c 89 d1             	mov    rcx,r10
   140005995:	44 89 5c 24 30       	mov    DWORD PTR [rsp+0x30],r11d
   14000599a:	e8 61 15 00 00       	call   140006f00 <__lshift_D2A>
   14000599f:	44 8b 5c 24 30       	mov    r11d,DWORD PTR [rsp+0x30]
   1400059a4:	49 89 c2             	mov    r10,rax
   1400059a7:	8b 84 24 84 00 00 00 	mov    eax,DWORD PTR [rsp+0x84]
   1400059ae:	83 ff 02             	cmp    edi,0x2
   1400059b1:	41 0f 9f c5          	setg   r13b
   1400059b5:	85 c0                	test   eax,eax
   1400059b7:	0f 85 93 03 00 00    	jne    140005d50 <__gdtoa+0xe60>
   1400059bd:	44 8b 7c 24 50       	mov    r15d,DWORD PTR [rsp+0x50]
   1400059c2:	45 85 ff             	test   r15d,r15d
   1400059c5:	0f 8f 65 01 00 00    	jg     140005b30 <__gdtoa+0xc40>
   1400059cb:	45 84 ed             	test   r13b,r13b
   1400059ce:	0f 84 5c 01 00 00    	je     140005b30 <__gdtoa+0xc40>
   1400059d4:	44 8b 74 24 50       	mov    r14d,DWORD PTR [rsp+0x50]
   1400059d9:	45 85 f6             	test   r14d,r14d
   1400059dc:	75 5d                	jne    140005a3b <__gdtoa+0xb4b>
   1400059de:	4c 89 d1             	mov    rcx,r10
   1400059e1:	45 31 c0             	xor    r8d,r8d
   1400059e4:	ba 05 00 00 00       	mov    edx,0x5
   1400059e9:	e8 b2 10 00 00       	call   140006aa0 <__multadd_D2A>
   1400059ee:	48 89 d9             	mov    rcx,rbx
   1400059f1:	48 89 c2             	mov    rdx,rax
   1400059f4:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
   1400059f9:	e8 12 16 00 00       	call   140007010 <__cmp_D2A>
   1400059fe:	4c 8b 54 24 30       	mov    r10,QWORD PTR [rsp+0x30]
   140005a03:	85 c0                	test   eax,eax
   140005a05:	7e 34                	jle    140005a3b <__gdtoa+0xb4b>
   140005a07:	44 8b 7c 24 78       	mov    r15d,DWORD PTR [rsp+0x78]
   140005a0c:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   140005a11:	41 83 c7 02          	add    r15d,0x2
   140005a15:	e9 05 fd ff ff       	jmp    14000571f <__gdtoa+0x82f>
   140005a1a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140005a20:	83 ff 03             	cmp    edi,0x3
   140005a23:	0f 85 4f fb ff ff    	jne    140005578 <__gdtoa+0x688>
   140005a29:	c7 44 24 7c 00 00 00 	mov    DWORD PTR [rsp+0x7c],0x0
   140005a30:	00 
   140005a31:	e9 0a fc ff ff       	jmp    140005640 <__gdtoa+0x750>
   140005a36:	45 31 d2             	xor    r10d,r10d
   140005a39:	31 ed                	xor    ebp,ebp
   140005a3b:	44 8b 7c 24 38       	mov    r15d,DWORD PTR [rsp+0x38]
   140005a40:	c7 44 24 48 10 00 00 	mov    DWORD PTR [rsp+0x48],0x10
   140005a47:	00 
   140005a48:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   140005a4d:	41 f7 df             	neg    r15d
   140005a50:	e9 db fc ff ff       	jmp    140005730 <__gdtoa+0x840>
   140005a55:	f2 0f 59 da          	mulsd  xmm3,xmm2
   140005a59:	66 49 0f 6e d1       	movq   xmm2,r9
   140005a5e:	c7 84 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],0x1
   140005a65:	01 00 00 00 
   140005a69:	48 8b 4c 24 68       	mov    rcx,QWORD PTR [rsp+0x68]
   140005a6e:	f2 0f 10 0d b2 3a 00 	movsd  xmm1,QWORD PTR [rip+0x3ab2]        # 140009528 <.rdata+0x48>
   140005a75:	00 
   140005a76:	66 0f 28 c2          	movapd xmm0,xmm2
   140005a7a:	45 31 c9             	xor    r9d,r9d
   140005a7d:	eb 12                	jmp    140005a91 <__gdtoa+0xba1>
   140005a7f:	90                   	nop
   140005a80:	f2 0f 59 c1          	mulsd  xmm0,xmm1
   140005a84:	83 c0 01             	add    eax,0x1
   140005a87:	45 89 d1             	mov    r9d,r10d
   140005a8a:	89 84 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],eax
   140005a91:	f2 0f 2c c0          	cvttsd2si eax,xmm0
   140005a95:	85 c0                	test   eax,eax
   140005a97:	74 0f                	je     140005aa8 <__gdtoa+0xbb8>
   140005a99:	66 0f ef e4          	pxor   xmm4,xmm4
   140005a9d:	45 89 d1             	mov    r9d,r10d
   140005aa0:	f2 0f 2a e0          	cvtsi2sd xmm4,eax
   140005aa4:	f2 0f 5c c4          	subsd  xmm0,xmm4
   140005aa8:	44 8d 40 30          	lea    r8d,[rax+0x30]
   140005aac:	48 83 c1 01          	add    rcx,0x1
   140005ab0:	44 88 41 ff          	mov    BYTE PTR [rcx-0x1],r8b
   140005ab4:	8b 84 24 ac 00 00 00 	mov    eax,DWORD PTR [rsp+0xac]
   140005abb:	39 e8                	cmp    eax,ebp
   140005abd:	75 c1                	jne    140005a80 <__gdtoa+0xb90>
   140005abf:	45 84 c9             	test   r9b,r9b
   140005ac2:	0f 84 6f 0a 00 00    	je     140006537 <__gdtoa+0x1647>
   140005ac8:	f2 0f 10 0d 90 3a 00 	movsd  xmm1,QWORD PTR [rip+0x3a90]        # 140009560 <.rdata+0x80>
   140005acf:	00 
   140005ad0:	66 0f 28 d3          	movapd xmm2,xmm3
   140005ad4:	f2 0f 58 d1          	addsd  xmm2,xmm1
   140005ad8:	66 0f 2f c2          	comisd xmm0,xmm2
   140005adc:	0f 87 19 0a 00 00    	ja     1400064fb <__gdtoa+0x160b>
   140005ae2:	f2 0f 5c cb          	subsd  xmm1,xmm3
   140005ae6:	66 0f 2f c8          	comisd xmm1,xmm0
   140005aea:	0f 87 ab 0a 00 00    	ja     14000659b <__gdtoa+0x16ab>
   140005af0:	44 8b 54 24 60       	mov    r10d,DWORD PTR [rsp+0x60]
   140005af5:	45 85 d2             	test   r10d,r10d
   140005af8:	0f 88 37 0b 00 00    	js     140006635 <__gdtoa+0x1745>
   140005afe:	45 8b 4d 14          	mov    r9d,DWORD PTR [r13+0x14]
   140005b02:	c7 44 24 58 00 00 00 	mov    DWORD PTR [rsp+0x58],0x0
   140005b09:	00 
   140005b0a:	45 85 c9             	test   r9d,r9d
   140005b0d:	0f 89 ba fb ff ff    	jns    1400056cd <__gdtoa+0x7dd>
   140005b13:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140005b18:	8b 44 24 70          	mov    eax,DWORD PTR [rsp+0x70]
   140005b1c:	44 8b a4 24 80 00 00 	mov    r12d,DWORD PTR [rsp+0x80]
   140005b23:	00 
   140005b24:	31 ed                	xor    ebp,ebp
   140005b26:	89 44 24 60          	mov    DWORD PTR [rsp+0x60],eax
   140005b2a:	e9 69 fd ff ff       	jmp    140005898 <__gdtoa+0x9a8>
   140005b2f:	90                   	nop
   140005b30:	44 8b 7c 24 78       	mov    r15d,DWORD PTR [rsp+0x78]
   140005b35:	44 8b 6c 24 7c       	mov    r13d,DWORD PTR [rsp+0x7c]
   140005b3a:	41 83 c7 01          	add    r15d,0x1
   140005b3e:	45 85 ed             	test   r13d,r13d
   140005b41:	0f 84 91 02 00 00    	je     140005dd8 <__gdtoa+0xee8>
   140005b47:	8b 54 24 60          	mov    edx,DWORD PTR [rsp+0x60]
   140005b4b:	44 01 e2             	add    edx,r12d
   140005b4e:	85 d2                	test   edx,edx
   140005b50:	7e 1f                	jle    140005b71 <__gdtoa+0xc81>
   140005b52:	48 89 e9             	mov    rcx,rbp
   140005b55:	4c 89 54 24 38       	mov    QWORD PTR [rsp+0x38],r10
   140005b5a:	44 89 5c 24 30       	mov    DWORD PTR [rsp+0x30],r11d
   140005b5f:	e8 9c 13 00 00       	call   140006f00 <__lshift_D2A>
   140005b64:	4c 8b 54 24 38       	mov    r10,QWORD PTR [rsp+0x38]
   140005b69:	44 8b 5c 24 30       	mov    r11d,DWORD PTR [rsp+0x30]
   140005b6e:	48 89 c5             	mov    rbp,rax
   140005b71:	49 89 ed             	mov    r13,rbp
   140005b74:	45 85 db             	test   r11d,r11d
   140005b77:	0f 85 bb 07 00 00    	jne    140006338 <__gdtoa+0x1448>
   140005b7d:	4c 8b 5c 24 68       	mov    r11,QWORD PTR [rsp+0x68]
   140005b82:	44 89 7c 24 70       	mov    DWORD PTR [rsp+0x70],r15d
   140005b87:	b8 01 00 00 00       	mov    eax,0x1
   140005b8c:	49 89 f7             	mov    r15,rsi
   140005b8f:	89 7c 24 38          	mov    DWORD PTR [rsp+0x38],edi
   140005b93:	4c 89 54 24 30       	mov    QWORD PTR [rsp+0x30],r10
   140005b98:	4c 89 df             	mov    rdi,r11
   140005b9b:	e9 a2 00 00 00       	jmp    140005c42 <__gdtoa+0xd52>
   140005ba0:	48 89 c1             	mov    rcx,rax
   140005ba3:	e8 88 0e 00 00       	call   140006a30 <__Bfree_D2A>
   140005ba8:	ba 01 00 00 00       	mov    edx,0x1
   140005bad:	45 85 e4             	test   r12d,r12d
   140005bb0:	0f 88 52 06 00 00    	js     140006208 <__gdtoa+0x1318>
   140005bb6:	44 0b 64 24 38       	or     r12d,DWORD PTR [rsp+0x38]
   140005bbb:	75 0a                	jne    140005bc7 <__gdtoa+0xcd7>
   140005bbd:	41 f6 07 01          	test   BYTE PTR [r15],0x1
   140005bc1:	0f 84 41 06 00 00    	je     140006208 <__gdtoa+0x1318>
   140005bc7:	4c 8d 67 01          	lea    r12,[rdi+0x1]
   140005bcb:	4d 89 e6             	mov    r14,r12
   140005bce:	85 d2                	test   edx,edx
   140005bd0:	7e 0b                	jle    140005bdd <__gdtoa+0xced>
   140005bd2:	83 7c 24 58 02       	cmp    DWORD PTR [rsp+0x58],0x2
   140005bd7:	0f 85 b3 07 00 00    	jne    140006390 <__gdtoa+0x14a0>
   140005bdd:	41 88 74 24 ff       	mov    BYTE PTR [r12-0x1],sil
   140005be2:	8b 44 24 50          	mov    eax,DWORD PTR [rsp+0x50]
   140005be6:	39 84 24 ac 00 00 00 	cmp    DWORD PTR [rsp+0xac],eax
   140005bed:	0f 84 d0 07 00 00    	je     1400063c3 <__gdtoa+0x14d3>
   140005bf3:	48 89 d9             	mov    rcx,rbx
   140005bf6:	45 31 c0             	xor    r8d,r8d
   140005bf9:	ba 0a 00 00 00       	mov    edx,0xa
   140005bfe:	e8 9d 0e 00 00       	call   140006aa0 <__multadd_D2A>
   140005c03:	45 31 c0             	xor    r8d,r8d
   140005c06:	ba 0a 00 00 00       	mov    edx,0xa
   140005c0b:	48 89 e9             	mov    rcx,rbp
   140005c0e:	48 89 c3             	mov    rbx,rax
   140005c11:	4c 39 ed             	cmp    rbp,r13
   140005c14:	0f 84 1e 01 00 00    	je     140005d38 <__gdtoa+0xe48>
   140005c1a:	e8 81 0e 00 00       	call   140006aa0 <__multadd_D2A>
   140005c1f:	4c 89 e9             	mov    rcx,r13
   140005c22:	45 31 c0             	xor    r8d,r8d
   140005c25:	ba 0a 00 00 00       	mov    edx,0xa
   140005c2a:	48 89 c5             	mov    rbp,rax
   140005c2d:	e8 6e 0e 00 00       	call   140006aa0 <__multadd_D2A>
   140005c32:	49 89 c5             	mov    r13,rax
   140005c35:	8b 84 24 ac 00 00 00 	mov    eax,DWORD PTR [rsp+0xac]
   140005c3c:	4c 89 e7             	mov    rdi,r12
   140005c3f:	83 c0 01             	add    eax,0x1
   140005c42:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
   140005c47:	48 89 d9             	mov    rcx,rbx
   140005c4a:	89 84 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],eax
   140005c51:	e8 1a f1 ff ff       	call   140004d70 <__quorem_D2A>
   140005c56:	48 89 ea             	mov    rdx,rbp
   140005c59:	48 89 d9             	mov    rcx,rbx
   140005c5c:	41 89 c6             	mov    r14d,eax
   140005c5f:	8d 70 30             	lea    esi,[rax+0x30]
   140005c62:	e8 a9 13 00 00       	call   140007010 <__cmp_D2A>
   140005c67:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
   140005c6c:	4c 89 ea             	mov    rdx,r13
   140005c6f:	41 89 c4             	mov    r12d,eax
   140005c72:	e8 e9 13 00 00       	call   140007060 <__diff_D2A>
   140005c77:	44 8b 50 10          	mov    r10d,DWORD PTR [rax+0x10]
   140005c7b:	48 89 c2             	mov    rdx,rax
   140005c7e:	45 85 d2             	test   r10d,r10d
   140005c81:	0f 85 19 ff ff ff    	jne    140005ba0 <__gdtoa+0xcb0>
   140005c87:	48 89 d9             	mov    rcx,rbx
   140005c8a:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
   140005c8f:	e8 7c 13 00 00       	call   140007010 <__cmp_D2A>
   140005c94:	48 8b 4c 24 60       	mov    rcx,QWORD PTR [rsp+0x60]
   140005c99:	89 44 24 5c          	mov    DWORD PTR [rsp+0x5c],eax
   140005c9d:	e8 8e 0d 00 00       	call   140006a30 <__Bfree_D2A>
   140005ca2:	8b 54 24 5c          	mov    edx,DWORD PTR [rsp+0x5c]
   140005ca6:	8b 44 24 38          	mov    eax,DWORD PTR [rsp+0x38]
   140005caa:	09 c2                	or     edx,eax
   140005cac:	0f 85 a9 03 00 00    	jne    14000605b <__gdtoa+0x116b>
   140005cb2:	41 8b 07             	mov    eax,DWORD PTR [r15]
   140005cb5:	83 e0 01             	and    eax,0x1
   140005cb8:	0b 44 24 58          	or     eax,DWORD PTR [rsp+0x58]
   140005cbc:	0f 85 eb fe ff ff    	jne    140005bad <__gdtoa+0xcbd>
   140005cc2:	4c 8b 54 24 30       	mov    r10,QWORD PTR [rsp+0x30]
   140005cc7:	44 8b 7c 24 70       	mov    r15d,DWORD PTR [rsp+0x70]
   140005ccc:	41 89 f0             	mov    r8d,esi
   140005ccf:	49 89 fb             	mov    r11,rdi
   140005cd2:	83 fe 39             	cmp    esi,0x39
   140005cd5:	0f 84 8e 07 00 00    	je     140006469 <__gdtoa+0x1579>
   140005cdb:	45 85 e4             	test   r12d,r12d
   140005cde:	0f 8e bd 09 00 00    	jle    1400066a1 <__gdtoa+0x17b1>
   140005ce4:	c7 44 24 48 20 00 00 	mov    DWORD PTR [rsp+0x48],0x20
   140005ceb:	00 
   140005cec:	45 8d 46 31          	lea    r8d,[r14+0x31]
   140005cf0:	45 88 03             	mov    BYTE PTR [r11],r8b
   140005cf3:	48 89 ee             	mov    rsi,rbp
   140005cf6:	4d 8d 63 01          	lea    r12,[r11+0x1]
   140005cfa:	4c 89 ed             	mov    rbp,r13
   140005cfd:	0f 1f 00             	nop    DWORD PTR [rax]
   140005d00:	4c 89 d1             	mov    rcx,r10
   140005d03:	e8 28 0d 00 00       	call   140006a30 <__Bfree_D2A>
   140005d08:	48 85 ed             	test   rbp,rbp
   140005d0b:	0f 84 9c 03 00 00    	je     1400060ad <__gdtoa+0x11bd>
   140005d11:	48 85 f6             	test   rsi,rsi
   140005d14:	74 0d                	je     140005d23 <__gdtoa+0xe33>
   140005d16:	48 39 ee             	cmp    rsi,rbp
   140005d19:	74 08                	je     140005d23 <__gdtoa+0xe33>
   140005d1b:	48 89 f1             	mov    rcx,rsi
   140005d1e:	e8 0d 0d 00 00       	call   140006a30 <__Bfree_D2A>
   140005d23:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   140005d28:	4c 89 64 24 68       	mov    QWORD PTR [rsp+0x68],r12
   140005d2d:	e9 0b fa ff ff       	jmp    14000573d <__gdtoa+0x84d>
   140005d32:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140005d38:	e8 63 0d 00 00       	call   140006aa0 <__multadd_D2A>
   140005d3d:	48 89 c5             	mov    rbp,rax
   140005d40:	49 89 c5             	mov    r13,rax
   140005d43:	e9 ed fe ff ff       	jmp    140005c35 <__gdtoa+0xd45>
   140005d48:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140005d4f:	00 
   140005d50:	4c 89 d2             	mov    rdx,r10
   140005d53:	48 89 d9             	mov    rcx,rbx
   140005d56:	44 89 5c 24 5c       	mov    DWORD PTR [rsp+0x5c],r11d
   140005d5b:	4c 89 54 24 30       	mov    QWORD PTR [rsp+0x30],r10
   140005d60:	e8 ab 12 00 00       	call   140007010 <__cmp_D2A>
   140005d65:	4c 8b 54 24 30       	mov    r10,QWORD PTR [rsp+0x30]
   140005d6a:	44 8b 5c 24 5c       	mov    r11d,DWORD PTR [rsp+0x5c]
   140005d6f:	85 c0                	test   eax,eax
   140005d71:	0f 89 46 fc ff ff    	jns    1400059bd <__gdtoa+0xacd>
   140005d77:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   140005d7b:	45 31 c0             	xor    r8d,r8d
   140005d7e:	48 89 d9             	mov    rcx,rbx
   140005d81:	ba 0a 00 00 00       	mov    edx,0xa
   140005d86:	4c 89 54 24 50       	mov    QWORD PTR [rsp+0x50],r10
   140005d8b:	44 89 5c 24 30       	mov    DWORD PTR [rsp+0x30],r11d
   140005d90:	44 8d 70 ff          	lea    r14d,[rax-0x1]
   140005d94:	e8 07 0d 00 00       	call   140006aa0 <__multadd_D2A>
   140005d99:	4c 8b 54 24 50       	mov    r10,QWORD PTR [rsp+0x50]
   140005d9e:	48 89 c3             	mov    rbx,rax
   140005da1:	8b 84 24 9c 00 00 00 	mov    eax,DWORD PTR [rsp+0x9c]
   140005da8:	85 c0                	test   eax,eax
   140005daa:	0f 9e c0             	setle  al
   140005dad:	41 21 c5             	and    r13d,eax
   140005db0:	8b 44 24 7c          	mov    eax,DWORD PTR [rsp+0x7c]
   140005db4:	85 c0                	test   eax,eax
   140005db6:	0f 85 a4 07 00 00    	jne    140006560 <__gdtoa+0x1670>
   140005dbc:	45 84 ed             	test   r13b,r13b
   140005dbf:	0f 85 cf 06 00 00    	jne    140006494 <__gdtoa+0x15a4>
   140005dc5:	8b 84 24 9c 00 00 00 	mov    eax,DWORD PTR [rsp+0x9c]
   140005dcc:	44 8b 7c 24 78       	mov    r15d,DWORD PTR [rsp+0x78]
   140005dd1:	89 44 24 50          	mov    DWORD PTR [rsp+0x50],eax
   140005dd5:	0f 1f 00             	nop    DWORD PTR [rax]
   140005dd8:	4c 8b 74 24 68       	mov    r14,QWORD PTR [rsp+0x68]
   140005ddd:	8b 7c 24 50          	mov    edi,DWORD PTR [rsp+0x50]
   140005de1:	b8 01 00 00 00       	mov    eax,0x1
   140005de6:	4c 89 d6             	mov    rsi,r10
   140005de9:	eb 22                	jmp    140005e0d <__gdtoa+0xf1d>
   140005deb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140005df0:	48 89 d9             	mov    rcx,rbx
   140005df3:	45 31 c0             	xor    r8d,r8d
   140005df6:	ba 0a 00 00 00       	mov    edx,0xa
   140005dfb:	e8 a0 0c 00 00       	call   140006aa0 <__multadd_D2A>
   140005e00:	48 89 c3             	mov    rbx,rax
   140005e03:	8b 84 24 ac 00 00 00 	mov    eax,DWORD PTR [rsp+0xac]
   140005e0a:	83 c0 01             	add    eax,0x1
   140005e0d:	48 89 f2             	mov    rdx,rsi
   140005e10:	48 89 d9             	mov    rcx,rbx
   140005e13:	89 84 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],eax
   140005e1a:	49 83 c6 01          	add    r14,0x1
   140005e1e:	e8 4d ef ff ff       	call   140004d70 <__quorem_D2A>
   140005e23:	44 8d 40 30          	lea    r8d,[rax+0x30]
   140005e27:	45 88 46 ff          	mov    BYTE PTR [r14-0x1],r8b
   140005e2b:	39 bc 24 ac 00 00 00 	cmp    DWORD PTR [rsp+0xac],edi
   140005e32:	7c bc                	jl     140005df0 <__gdtoa+0xf00>
   140005e34:	49 89 f2             	mov    r10,rsi
   140005e37:	31 f6                	xor    esi,esi
   140005e39:	8b 7c 24 58          	mov    edi,DWORD PTR [rsp+0x58]
   140005e3d:	85 ff                	test   edi,edi
   140005e3f:	0f 84 5d 03 00 00    	je     1400061a2 <__gdtoa+0x12b2>
   140005e45:	8b 43 14             	mov    eax,DWORD PTR [rbx+0x14]
   140005e48:	83 ff 02             	cmp    edi,0x2
   140005e4b:	0f 84 96 03 00 00    	je     1400061e7 <__gdtoa+0x12f7>
   140005e51:	83 f8 01             	cmp    eax,0x1
   140005e54:	0f 8f 17 02 00 00    	jg     140006071 <__gdtoa+0x1181>
   140005e5a:	8b 43 18             	mov    eax,DWORD PTR [rbx+0x18]
   140005e5d:	85 c0                	test   eax,eax
   140005e5f:	0f 85 0c 02 00 00    	jne    140006071 <__gdtoa+0x1181>
   140005e65:	85 c0                	test   eax,eax
   140005e67:	0f 95 c0             	setne  al
   140005e6a:	0f b6 c0             	movzx  eax,al
   140005e6d:	c1 e0 04             	shl    eax,0x4
   140005e70:	89 44 24 48          	mov    DWORD PTR [rsp+0x48],eax
   140005e74:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140005e78:	4d 89 f4             	mov    r12,r14
   140005e7b:	49 83 ee 01          	sub    r14,0x1
   140005e7f:	41 80 3e 30          	cmp    BYTE PTR [r14],0x30
   140005e83:	74 f3                	je     140005e78 <__gdtoa+0xf88>
   140005e85:	e9 76 fe ff ff       	jmp    140005d00 <__gdtoa+0xe10>
   140005e8a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140005e90:	44 89 da             	mov    edx,r11d
   140005e93:	48 89 c1             	mov    rcx,rax
   140005e96:	e8 e5 0e 00 00       	call   140006d80 <__pow5mult_D2A>
   140005e9b:	49 89 c2             	mov    r10,rax
   140005e9e:	83 ff 01             	cmp    edi,0x1
   140005ea1:	0f 8e 4f 02 00 00    	jle    1400060f6 <__gdtoa+0x1206>
   140005ea7:	45 31 db             	xor    r11d,r11d
   140005eaa:	41 8b 42 14          	mov    eax,DWORD PTR [r10+0x14]
   140005eae:	83 e8 01             	sub    eax,0x1
   140005eb1:	48 98                	cdqe
   140005eb3:	45 0f bd 64 82 18    	bsr    r12d,DWORD PTR [r10+rax*4+0x18]
   140005eb9:	41 83 f4 1f          	xor    r12d,0x1f
   140005ebd:	e9 77 fa ff ff       	jmp    140005939 <__gdtoa+0xa49>
   140005ec2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140005ec8:	c7 44 24 7c 01 00 00 	mov    DWORD PTR [rsp+0x7c],0x1
   140005ecf:	00 
   140005ed0:	e9 6b f7 ff ff       	jmp    140005640 <__gdtoa+0x750>
   140005ed5:	0f 1f 00             	nop    DWORD PTR [rax]
   140005ed8:	41 83 fe 01          	cmp    r14d,0x1
   140005edc:	0f 85 51 fa ff ff    	jne    140005933 <__gdtoa+0xa43>
   140005ee2:	41 8b 45 04          	mov    eax,DWORD PTR [r13+0x4]
   140005ee6:	83 c0 01             	add    eax,0x1
   140005ee9:	39 44 24 30          	cmp    DWORD PTR [rsp+0x30],eax
   140005eed:	0f 8e 40 fa ff ff    	jle    140005933 <__gdtoa+0xa43>
   140005ef3:	83 44 24 70 01       	add    DWORD PTR [rsp+0x70],0x1
   140005ef8:	41 bb 01 00 00 00    	mov    r11d,0x1
   140005efe:	83 44 24 5c 01       	add    DWORD PTR [rsp+0x5c],0x1
   140005f03:	e9 2b fa ff ff       	jmp    140005933 <__gdtoa+0xa43>
   140005f08:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140005f0f:	00 
   140005f10:	8b 4c 24 50          	mov    ecx,DWORD PTR [rsp+0x50]
   140005f14:	8b 94 24 80 00 00 00 	mov    edx,DWORD PTR [rsp+0x80]
   140005f1b:	8d 41 ff             	lea    eax,[rcx-0x1]
   140005f1e:	39 c2                	cmp    edx,eax
   140005f20:	0f 8c 96 01 00 00    	jl     1400060bc <__gdtoa+0x11cc>
   140005f26:	41 89 d4             	mov    r12d,edx
   140005f29:	41 29 c4             	sub    r12d,eax
   140005f2c:	85 c9                	test   ecx,ecx
   140005f2e:	0f 89 0c 06 00 00    	jns    140006540 <__gdtoa+0x1650>
   140005f34:	8b 44 24 70          	mov    eax,DWORD PTR [rsp+0x70]
   140005f38:	8b 54 24 50          	mov    edx,DWORD PTR [rsp+0x50]
   140005f3c:	c7 84 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],0x0
   140005f43:	00 00 00 00 
   140005f47:	29 d0                	sub    eax,edx
   140005f49:	89 44 24 60          	mov    DWORD PTR [rsp+0x60],eax
   140005f4d:	e9 21 f9 ff ff       	jmp    140005873 <__gdtoa+0x983>
   140005f52:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140005f58:	83 ff 01             	cmp    edi,0x1
   140005f5b:	7f b3                	jg     140005f10 <__gdtoa+0x1020>
   140005f5d:	8b 4c 24 70          	mov    ecx,DWORD PTR [rsp+0x70]
   140005f61:	01 44 24 5c          	add    DWORD PTR [rsp+0x5c],eax
   140005f65:	44 8b a4 24 80 00 00 	mov    r12d,DWORD PTR [rsp+0x80]
   140005f6c:	00 
   140005f6d:	01 c8                	add    eax,ecx
   140005f6f:	89 4c 24 60          	mov    DWORD PTR [rsp+0x60],ecx
   140005f73:	89 44 24 70          	mov    DWORD PTR [rsp+0x70],eax
   140005f77:	e9 f7 f8 ff ff       	jmp    140005873 <__gdtoa+0x983>
   140005f7c:	f2 0f 10 84 24 90 00 	movsd  xmm0,QWORD PTR [rsp+0x90]
   140005f83:	00 00 
   140005f85:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   140005f8a:	c7 84 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],0x1
   140005f91:	01 00 00 00 
   140005f95:	8b 7c 24 78          	mov    edi,DWORD PTR [rsp+0x78]
   140005f99:	66 0f 28 c8          	movapd xmm1,xmm0
   140005f9d:	48 8d 4e 01          	lea    rcx,[rsi+0x1]
   140005fa1:	f2 0f 5e ca          	divsd  xmm1,xmm2
   140005fa5:	44 8d 7f 01          	lea    r15d,[rdi+0x1]
   140005fa9:	f2 0f 2c c1          	cvttsd2si eax,xmm1
   140005fad:	66 0f ef c9          	pxor   xmm1,xmm1
   140005fb1:	f2 0f 2a c8          	cvtsi2sd xmm1,eax
   140005fb5:	8d 50 30             	lea    edx,[rax+0x30]
   140005fb8:	88 16                	mov    BYTE PTR [rsi],dl
   140005fba:	f2 0f 59 ca          	mulsd  xmm1,xmm2
   140005fbe:	f2 0f 5c c1          	subsd  xmm0,xmm1
   140005fc2:	66 0f ef c9          	pxor   xmm1,xmm1
   140005fc6:	66 0f 2e c1          	ucomisd xmm0,xmm1
   140005fca:	7a 06                	jp     140005fd2 <__gdtoa+0x10e2>
   140005fcc:	0f 84 c1 01 00 00    	je     140006193 <__gdtoa+0x12a3>
   140005fd2:	f2 0f 10 25 4e 35 00 	movsd  xmm4,QWORD PTR [rip+0x354e]        # 140009528 <.rdata+0x48>
   140005fd9:	00 
   140005fda:	66 0f ef db          	pxor   xmm3,xmm3
   140005fde:	eb 40                	jmp    140006020 <__gdtoa+0x1130>
   140005fe0:	f2 0f 59 c4          	mulsd  xmm0,xmm4
   140005fe4:	83 c2 01             	add    edx,0x1
   140005fe7:	48 83 c1 01          	add    rcx,0x1
   140005feb:	89 94 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],edx
   140005ff2:	66 0f 28 c8          	movapd xmm1,xmm0
   140005ff6:	f2 0f 5e ca          	divsd  xmm1,xmm2
   140005ffa:	f2 0f 2c c1          	cvttsd2si eax,xmm1
   140005ffe:	66 0f ef c9          	pxor   xmm1,xmm1
   140006002:	f2 0f 2a c8          	cvtsi2sd xmm1,eax
   140006006:	8d 50 30             	lea    edx,[rax+0x30]
   140006009:	88 51 ff             	mov    BYTE PTR [rcx-0x1],dl
   14000600c:	f2 0f 59 ca          	mulsd  xmm1,xmm2
   140006010:	f2 0f 5c c1          	subsd  xmm0,xmm1
   140006014:	66 0f 2e c3          	ucomisd xmm0,xmm3
   140006018:	7a 06                	jp     140006020 <__gdtoa+0x1130>
   14000601a:	0f 84 73 01 00 00    	je     140006193 <__gdtoa+0x12a3>
   140006020:	8b 94 24 ac 00 00 00 	mov    edx,DWORD PTR [rsp+0xac]
   140006027:	8b 7c 24 50          	mov    edi,DWORD PTR [rsp+0x50]
   14000602b:	39 fa                	cmp    edx,edi
   14000602d:	75 b1                	jne    140005fe0 <__gdtoa+0x10f0>
   14000602f:	8b 7c 24 58          	mov    edi,DWORD PTR [rsp+0x58]
   140006033:	85 ff                	test   edi,edi
   140006035:	0f 84 6e 04 00 00    	je     1400064a9 <__gdtoa+0x15b9>
   14000603b:	83 ff 01             	cmp    edi,0x1
   14000603e:	0f 84 7d 05 00 00    	je     1400065c1 <__gdtoa+0x16d1>
   140006044:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   140006049:	c7 44 24 48 10 00 00 	mov    DWORD PTR [rsp+0x48],0x10
   140006050:	00 
   140006051:	48 89 4c 24 68       	mov    QWORD PTR [rsp+0x68],rcx
   140006056:	e9 ea f6 ff ff       	jmp    140005745 <__gdtoa+0x855>
   14000605b:	8b 54 24 5c          	mov    edx,DWORD PTR [rsp+0x5c]
   14000605f:	e9 49 fb ff ff       	jmp    140005bad <__gdtoa+0xcbd>
   140006064:	c7 44 24 7c 01 00 00 	mov    DWORD PTR [rsp+0x7c],0x1
   14000606b:	00 
   14000606c:	e9 c4 f2 ff ff       	jmp    140005335 <__gdtoa+0x445>
   140006071:	48 8b 54 24 68       	mov    rdx,QWORD PTR [rsp+0x68]
   140006076:	eb 11                	jmp    140006089 <__gdtoa+0x1199>
   140006078:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000607f:	00 
   140006080:	4c 39 f2             	cmp    rdx,r14
   140006083:	0f 84 a7 00 00 00    	je     140006130 <__gdtoa+0x1240>
   140006089:	4d 89 f4             	mov    r12,r14
   14000608c:	4d 8d 76 ff          	lea    r14,[r14-0x1]
   140006090:	41 0f b6 44 24 ff    	movzx  eax,BYTE PTR [r12-0x1]
   140006096:	3c 39                	cmp    al,0x39
   140006098:	74 e6                	je     140006080 <__gdtoa+0x1190>
   14000609a:	83 c0 01             	add    eax,0x1
   14000609d:	c7 44 24 48 20 00 00 	mov    DWORD PTR [rsp+0x48],0x20
   1400060a4:	00 
   1400060a5:	41 88 06             	mov    BYTE PTR [r14],al
   1400060a8:	e9 53 fc ff ff       	jmp    140005d00 <__gdtoa+0xe10>
   1400060ad:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   1400060b2:	4c 89 64 24 68       	mov    QWORD PTR [rsp+0x68],r12
   1400060b7:	e9 89 f6 ff ff       	jmp    140005745 <__gdtoa+0x855>
   1400060bc:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [rsp+0x80]
   1400060c3:	89 c2                	mov    edx,eax
   1400060c5:	89 84 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],eax
   1400060cc:	45 31 e4             	xor    r12d,r12d
   1400060cf:	29 ca                	sub    edx,ecx
   1400060d1:	8b 4c 24 70          	mov    ecx,DWORD PTR [rsp+0x70]
   1400060d5:	41 01 d3             	add    r11d,edx
   1400060d8:	8b 54 24 50          	mov    edx,DWORD PTR [rsp+0x50]
   1400060dc:	01 54 24 5c          	add    DWORD PTR [rsp+0x5c],edx
   1400060e0:	89 4c 24 60          	mov    DWORD PTR [rsp+0x60],ecx
   1400060e4:	89 94 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],edx
   1400060eb:	01 ca                	add    edx,ecx
   1400060ed:	89 54 24 70          	mov    DWORD PTR [rsp+0x70],edx
   1400060f1:	e9 7d f7 ff ff       	jmp    140005873 <__gdtoa+0x983>
   1400060f6:	41 83 fe 01          	cmp    r14d,0x1
   1400060fa:	0f 85 a7 fd ff ff    	jne    140005ea7 <__gdtoa+0xfb7>
   140006100:	41 8b 45 04          	mov    eax,DWORD PTR [r13+0x4]
   140006104:	83 c0 01             	add    eax,0x1
   140006107:	39 44 24 30          	cmp    DWORD PTR [rsp+0x30],eax
   14000610b:	0f 8e 96 fd ff ff    	jle    140005ea7 <__gdtoa+0xfb7>
   140006111:	83 44 24 70 01       	add    DWORD PTR [rsp+0x70],0x1
   140006116:	41 bb 01 00 00 00    	mov    r11d,0x1
   14000611c:	83 44 24 5c 01       	add    DWORD PTR [rsp+0x5c],0x1
   140006121:	e9 84 fd ff ff       	jmp    140005eaa <__gdtoa+0xfba>
   140006126:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000612d:	00 00 00 
   140006130:	48 8b 44 24 68       	mov    rax,QWORD PTR [rsp+0x68]
   140006135:	c7 44 24 48 20 00 00 	mov    DWORD PTR [rsp+0x48],0x20
   14000613c:	00 
   14000613d:	41 83 c7 01          	add    r15d,0x1
   140006141:	c6 00 31             	mov    BYTE PTR [rax],0x31
   140006144:	e9 b7 fb ff ff       	jmp    140005d00 <__gdtoa+0xe10>
   140006149:	48 89 e9             	mov    rcx,rbp
   14000614c:	44 89 e2             	mov    edx,r12d
   14000614f:	44 89 9c 24 98 00 00 	mov    DWORD PTR [rsp+0x98],r11d
   140006156:	00 
   140006157:	e8 24 0c 00 00       	call   140006d80 <__pow5mult_D2A>
   14000615c:	48 89 da             	mov    rdx,rbx
   14000615f:	48 89 c1             	mov    rcx,rax
   140006162:	48 89 c5             	mov    rbp,rax
   140006165:	e8 b6 0a 00 00       	call   140006c20 <__mult_D2A>
   14000616a:	48 89 d9             	mov    rcx,rbx
   14000616d:	49 89 c7             	mov    r15,rax
   140006170:	e8 bb 08 00 00       	call   140006a30 <__Bfree_D2A>
   140006175:	44 29 a4 24 80 00 00 	sub    DWORD PTR [rsp+0x80],r12d
   14000617c:	00 
   14000617d:	4c 89 fb             	mov    rbx,r15
   140006180:	44 8b 9c 24 98 00 00 	mov    r11d,DWORD PTR [rsp+0x98]
   140006187:	00 
   140006188:	0f 84 76 f7 ff ff    	je     140005904 <__gdtoa+0xa14>
   14000618e:	e9 4f f7 ff ff       	jmp    1400058e2 <__gdtoa+0x9f2>
   140006193:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   140006198:	48 89 4c 24 68       	mov    QWORD PTR [rsp+0x68],rcx
   14000619d:	e9 a3 f5 ff ff       	jmp    140005745 <__gdtoa+0x855>
   1400061a2:	48 89 d9             	mov    rcx,rbx
   1400061a5:	ba 01 00 00 00       	mov    edx,0x1
   1400061aa:	4c 89 54 24 30       	mov    QWORD PTR [rsp+0x30],r10
   1400061af:	44 89 44 24 38       	mov    DWORD PTR [rsp+0x38],r8d
   1400061b4:	e8 47 0d 00 00       	call   140006f00 <__lshift_D2A>
   1400061b9:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
   1400061be:	48 89 c1             	mov    rcx,rax
   1400061c1:	48 89 c3             	mov    rbx,rax
   1400061c4:	e8 47 0e 00 00       	call   140007010 <__cmp_D2A>
   1400061c9:	4c 8b 54 24 30       	mov    r10,QWORD PTR [rsp+0x30]
   1400061ce:	85 c0                	test   eax,eax
   1400061d0:	0f 8f 9b fe ff ff    	jg     140006071 <__gdtoa+0x1181>
   1400061d6:	75 0f                	jne    1400061e7 <__gdtoa+0x12f7>
   1400061d8:	44 8b 44 24 38       	mov    r8d,DWORD PTR [rsp+0x38]
   1400061dd:	41 83 e0 01          	and    r8d,0x1
   1400061e1:	0f 85 8a fe ff ff    	jne    140006071 <__gdtoa+0x1181>
   1400061e7:	83 7b 14 01          	cmp    DWORD PTR [rbx+0x14],0x1
   1400061eb:	c7 44 24 48 10 00 00 	mov    DWORD PTR [rsp+0x48],0x10
   1400061f2:	00 
   1400061f3:	0f 8f 7f fc ff ff    	jg     140005e78 <__gdtoa+0xf88>
   1400061f9:	8b 43 18             	mov    eax,DWORD PTR [rbx+0x18]
   1400061fc:	e9 64 fc ff ff       	jmp    140005e65 <__gdtoa+0xf75>
   140006201:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140006208:	44 8b 4c 24 58       	mov    r9d,DWORD PTR [rsp+0x58]
   14000620d:	4c 8b 54 24 30       	mov    r10,QWORD PTR [rsp+0x30]
   140006212:	41 89 f0             	mov    r8d,esi
   140006215:	49 89 fb             	mov    r11,rdi
   140006218:	44 8b 7c 24 70       	mov    r15d,DWORD PTR [rsp+0x70]
   14000621d:	45 85 c9             	test   r9d,r9d
   140006220:	0f 84 c9 01 00 00    	je     1400063ef <__gdtoa+0x14ff>
   140006226:	83 7b 14 01          	cmp    DWORD PTR [rbx+0x14],0x1
   14000622a:	0f 8e a8 03 00 00    	jle    1400065d8 <__gdtoa+0x16e8>
   140006230:	83 7c 24 58 02       	cmp    DWORD PTR [rsp+0x58],0x2
   140006235:	0f 84 17 02 00 00    	je     140006452 <__gdtoa+0x1562>
   14000623b:	44 89 7c 24 30       	mov    DWORD PTR [rsp+0x30],r15d
   140006240:	44 89 c7             	mov    edi,r8d
   140006243:	4d 89 d6             	mov    r14,r10
   140006246:	4d 89 df             	mov    r15,r11
   140006249:	eb 4b                	jmp    140006296 <__gdtoa+0x13a6>
   14000624b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140006250:	41 88 7c 24 ff       	mov    BYTE PTR [r12-0x1],dil
   140006255:	45 31 c0             	xor    r8d,r8d
   140006258:	4c 89 e9             	mov    rcx,r13
   14000625b:	ba 0a 00 00 00       	mov    edx,0xa
   140006260:	4d 89 e7             	mov    r15,r12
   140006263:	e8 38 08 00 00       	call   140006aa0 <__multadd_D2A>
   140006268:	4c 39 ed             	cmp    rbp,r13
   14000626b:	48 89 d9             	mov    rcx,rbx
   14000626e:	ba 0a 00 00 00       	mov    edx,0xa
   140006273:	48 0f 44 e8          	cmove  rbp,rax
   140006277:	45 31 c0             	xor    r8d,r8d
   14000627a:	48 89 c6             	mov    rsi,rax
   14000627d:	e8 1e 08 00 00       	call   140006aa0 <__multadd_D2A>
   140006282:	4c 89 f2             	mov    rdx,r14
   140006285:	49 89 f5             	mov    r13,rsi
   140006288:	48 89 c1             	mov    rcx,rax
   14000628b:	48 89 c3             	mov    rbx,rax
   14000628e:	e8 dd ea ff ff       	call   140004d70 <__quorem_D2A>
   140006293:	8d 78 30             	lea    edi,[rax+0x30]
   140006296:	4c 89 ea             	mov    rdx,r13
   140006299:	4c 89 f1             	mov    rcx,r14
   14000629c:	4d 8d 67 01          	lea    r12,[r15+0x1]
   1400062a0:	e8 6b 0d 00 00       	call   140007010 <__cmp_D2A>
   1400062a5:	85 c0                	test   eax,eax
   1400062a7:	7f a7                	jg     140006250 <__gdtoa+0x1360>
   1400062a9:	4d 89 fb             	mov    r11,r15
   1400062ac:	41 89 f8             	mov    r8d,edi
   1400062af:	44 8b 7c 24 30       	mov    r15d,DWORD PTR [rsp+0x30]
   1400062b4:	4d 89 f2             	mov    r10,r14
   1400062b7:	83 ff 39             	cmp    edi,0x39
   1400062ba:	0f 84 ad 01 00 00    	je     14000646d <__gdtoa+0x157d>
   1400062c0:	c7 44 24 48 20 00 00 	mov    DWORD PTR [rsp+0x48],0x20
   1400062c7:	00 
   1400062c8:	48 89 ee             	mov    rsi,rbp
   1400062cb:	41 83 c0 01          	add    r8d,0x1
   1400062cf:	4c 89 ed             	mov    rbp,r13
   1400062d2:	45 88 03             	mov    BYTE PTR [r11],r8b
   1400062d5:	e9 26 fa ff ff       	jmp    140005d00 <__gdtoa+0xe10>
   1400062da:	85 d2                	test   edx,edx
   1400062dc:	0f 84 98 f4 ff ff    	je     14000577a <__gdtoa+0x88a>
   1400062e2:	8b ac 24 9c 00 00 00 	mov    ebp,DWORD PTR [rsp+0x9c]
   1400062e9:	85 ed                	test   ebp,ebp
   1400062eb:	0f 8e dd f4 ff ff    	jle    1400057ce <__gdtoa+0x8de>
   1400062f1:	f2 0f 59 05 2f 32 00 	mulsd  xmm0,QWORD PTR [rip+0x322f]        # 140009528 <.rdata+0x48>
   1400062f8:	00 
   1400062f9:	f2 0f 10 0d 2f 32 00 	movsd  xmm1,QWORD PTR [rip+0x322f]        # 140009530 <.rdata+0x50>
   140006300:	00 
   140006301:	41 bf ff ff ff ff    	mov    r15d,0xffffffff
   140006307:	f2 0f 59 c8          	mulsd  xmm1,xmm0
   14000630b:	66 49 0f 7e c1       	movq   r9,xmm0
   140006310:	f2 0f 58 0d 20 32 00 	addsd  xmm1,QWORD PTR [rip+0x3220]        # 140009538 <.rdata+0x58>
   140006317:	00 
   140006318:	66 48 0f 7e c8       	movq   rax,xmm1
   14000631d:	48 89 c2             	mov    rdx,rax
   140006320:	89 c0                	mov    eax,eax
   140006322:	48 c1 ea 20          	shr    rdx,0x20
   140006326:	81 ea 00 00 40 03    	sub    edx,0x3400000
   14000632c:	48 c1 e2 20          	shl    rdx,0x20
   140006330:	48 09 d0             	or     rax,rdx
   140006333:	e9 15 f1 ff ff       	jmp    14000544d <__gdtoa+0x55d>
   140006338:	8b 4d 08             	mov    ecx,DWORD PTR [rbp+0x8]
   14000633b:	4c 89 54 24 30       	mov    QWORD PTR [rsp+0x30],r10
   140006340:	e8 fb 05 00 00       	call   140006940 <__Balloc_D2A>
   140006345:	48 8d 55 10          	lea    rdx,[rbp+0x10]
   140006349:	48 8d 48 10          	lea    rcx,[rax+0x10]
   14000634d:	49 89 c4             	mov    r12,rax
   140006350:	48 63 45 14          	movsxd rax,DWORD PTR [rbp+0x14]
   140006354:	4c 8d 04 85 08 00 00 	lea    r8,[rax*4+0x8]
   14000635b:	00 
   14000635c:	e8 87 18 00 00       	call   140007be8 <memcpy>
   140006361:	ba 01 00 00 00       	mov    edx,0x1
   140006366:	4c 89 e1             	mov    rcx,r12
   140006369:	e8 92 0b 00 00       	call   140006f00 <__lshift_D2A>
   14000636e:	4c 8b 54 24 30       	mov    r10,QWORD PTR [rsp+0x30]
   140006373:	49 89 c5             	mov    r13,rax
   140006376:	e9 02 f8 ff ff       	jmp    140005b7d <__gdtoa+0xc8d>
   14000637b:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   140006380:	41 bf 02 00 00 00    	mov    r15d,0x2
   140006386:	45 31 d2             	xor    r10d,r10d
   140006389:	31 ed                	xor    ebp,ebp
   14000638b:	e9 8f f3 ff ff       	jmp    14000571f <__gdtoa+0x82f>
   140006390:	4c 8b 54 24 30       	mov    r10,QWORD PTR [rsp+0x30]
   140006395:	44 8b 7c 24 70       	mov    r15d,DWORD PTR [rsp+0x70]
   14000639a:	41 89 f0             	mov    r8d,esi
   14000639d:	49 89 fb             	mov    r11,rdi
   1400063a0:	83 fe 39             	cmp    esi,0x39
   1400063a3:	0f 84 c4 00 00 00    	je     14000646d <__gdtoa+0x157d>
   1400063a9:	41 83 c0 01          	add    r8d,0x1
   1400063ad:	48 89 ee             	mov    rsi,rbp
   1400063b0:	c7 44 24 48 20 00 00 	mov    DWORD PTR [rsp+0x48],0x20
   1400063b7:	00 
   1400063b8:	4c 89 ed             	mov    rbp,r13
   1400063bb:	44 88 07             	mov    BYTE PTR [rdi],r8b
   1400063be:	e9 3d f9 ff ff       	jmp    140005d00 <__gdtoa+0xe10>
   1400063c3:	41 89 f0             	mov    r8d,esi
   1400063c6:	4c 8b 54 24 30       	mov    r10,QWORD PTR [rsp+0x30]
   1400063cb:	48 89 ee             	mov    rsi,rbp
   1400063ce:	44 8b 7c 24 70       	mov    r15d,DWORD PTR [rsp+0x70]
   1400063d3:	4c 89 ed             	mov    rbp,r13
   1400063d6:	e9 5e fa ff ff       	jmp    140005e39 <__gdtoa+0xf49>
   1400063db:	48 89 54 24 68       	mov    QWORD PTR [rsp+0x68],rdx
   1400063e0:	41 83 c7 01          	add    r15d,0x1
   1400063e4:	41 b8 31 00 00 00    	mov    r8d,0x31
   1400063ea:	e9 55 f1 ff ff       	jmp    140005544 <__gdtoa+0x654>
   1400063ef:	85 d2                	test   edx,edx
   1400063f1:	7e 55                	jle    140006448 <__gdtoa+0x1558>
   1400063f3:	48 89 d9             	mov    rcx,rbx
   1400063f6:	ba 01 00 00 00       	mov    edx,0x1
   1400063fb:	4c 89 54 24 30       	mov    QWORD PTR [rsp+0x30],r10
   140006400:	4c 89 5c 24 48       	mov    QWORD PTR [rsp+0x48],r11
   140006405:	44 89 44 24 38       	mov    DWORD PTR [rsp+0x38],r8d
   14000640a:	e8 f1 0a 00 00       	call   140006f00 <__lshift_D2A>
   14000640f:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
   140006414:	48 89 c1             	mov    rcx,rax
   140006417:	48 89 c3             	mov    rbx,rax
   14000641a:	e8 f1 0b 00 00       	call   140007010 <__cmp_D2A>
   14000641f:	4c 8b 54 24 30       	mov    r10,QWORD PTR [rsp+0x30]
   140006424:	44 8b 44 24 38       	mov    r8d,DWORD PTR [rsp+0x38]
   140006429:	85 c0                	test   eax,eax
   14000642b:	4c 8b 5c 24 48       	mov    r11,QWORD PTR [rsp+0x48]
   140006430:	0f 8e 52 02 00 00    	jle    140006688 <__gdtoa+0x1798>
   140006436:	41 83 f8 39          	cmp    r8d,0x39
   14000643a:	74 2d                	je     140006469 <__gdtoa+0x1579>
   14000643c:	c7 44 24 58 20 00 00 	mov    DWORD PTR [rsp+0x58],0x20
   140006443:	00 
   140006444:	45 8d 46 31          	lea    r8d,[r14+0x31]
   140006448:	83 7b 14 01          	cmp    DWORD PTR [rbx+0x14],0x1
   14000644c:	0f 8e 14 02 00 00    	jle    140006666 <__gdtoa+0x1776>
   140006452:	48 89 ee             	mov    rsi,rbp
   140006455:	4c 89 ed             	mov    rbp,r13
   140006458:	c7 44 24 48 10 00 00 	mov    DWORD PTR [rsp+0x48],0x10
   14000645f:	00 
   140006460:	4d 8d 63 01          	lea    r12,[r11+0x1]
   140006464:	e9 69 fe ff ff       	jmp    1400062d2 <__gdtoa+0x13e2>
   140006469:	4d 8d 63 01          	lea    r12,[r11+0x1]
   14000646d:	48 89 ee             	mov    rsi,rbp
   140006470:	41 c6 03 39          	mov    BYTE PTR [r11],0x39
   140006474:	48 8b 54 24 68       	mov    rdx,QWORD PTR [rsp+0x68]
   140006479:	4d 89 e6             	mov    r14,r12
   14000647c:	4c 89 ed             	mov    rbp,r13
   14000647f:	e9 05 fc ff ff       	jmp    140006089 <__gdtoa+0x1199>
   140006484:	c7 84 24 9c 00 00 00 	mov    DWORD PTR [rsp+0x9c],0xffffffff
   14000648b:	ff ff ff ff 
   14000648f:	e9 66 f3 ff ff       	jmp    1400057fa <__gdtoa+0x90a>
   140006494:	8b 84 24 9c 00 00 00 	mov    eax,DWORD PTR [rsp+0x9c]
   14000649b:	44 89 74 24 78       	mov    DWORD PTR [rsp+0x78],r14d
   1400064a0:	89 44 24 50          	mov    DWORD PTR [rsp+0x50],eax
   1400064a4:	e9 2b f5 ff ff       	jmp    1400059d4 <__gdtoa+0xae4>
   1400064a9:	f2 0f 58 c0          	addsd  xmm0,xmm0
   1400064ad:	44 0f b6 41 ff       	movzx  r8d,BYTE PTR [rcx-0x1]
   1400064b2:	66 0f 2f c2          	comisd xmm0,xmm2
   1400064b6:	0f 87 98 01 00 00    	ja     140006654 <__gdtoa+0x1764>
   1400064bc:	66 0f 2e c2          	ucomisd xmm0,xmm2
   1400064c0:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   1400064c5:	44 8b 7c 24 78       	mov    r15d,DWORD PTR [rsp+0x78]
   1400064ca:	7a 06                	jp     1400064d2 <__gdtoa+0x15e2>
   1400064cc:	75 04                	jne    1400064d2 <__gdtoa+0x15e2>
   1400064ce:	a8 01                	test   al,0x1
   1400064d0:	75 2e                	jne    140006500 <__gdtoa+0x1610>
   1400064d2:	c7 44 24 48 10 00 00 	mov    DWORD PTR [rsp+0x48],0x10
   1400064d9:	00 
   1400064da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400064e0:	48 89 c8             	mov    rax,rcx
   1400064e3:	48 8d 49 ff          	lea    rcx,[rcx-0x1]
   1400064e7:	80 78 ff 30          	cmp    BYTE PTR [rax-0x1],0x30
   1400064eb:	74 f3                	je     1400064e0 <__gdtoa+0x15f0>
   1400064ed:	48 89 44 24 68       	mov    QWORD PTR [rsp+0x68],rax
   1400064f2:	41 83 c7 01          	add    r15d,0x1
   1400064f6:	e9 4a f2 ff ff       	jmp    140005745 <__gdtoa+0x855>
   1400064fb:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   140006500:	48 89 ca             	mov    rdx,rcx
   140006503:	e9 29 f0 ff ff       	jmp    140005531 <__gdtoa+0x641>
   140006508:	66 0f ef c9          	pxor   xmm1,xmm1
   14000650c:	31 c0                	xor    eax,eax
   14000650e:	b9 01 00 00 00       	mov    ecx,0x1
   140006513:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   140006518:	66 0f 2e c1          	ucomisd xmm0,xmm1
   14000651c:	48 89 54 24 68       	mov    QWORD PTR [rsp+0x68],rdx
   140006521:	0f 9a c0             	setp   al
   140006524:	0f 45 c1             	cmovne eax,ecx
   140006527:	41 83 c7 01          	add    r15d,0x1
   14000652b:	c1 e0 04             	shl    eax,0x4
   14000652e:	89 44 24 48          	mov    DWORD PTR [rsp+0x48],eax
   140006532:	e9 0e f2 ff ff       	jmp    140005745 <__gdtoa+0x855>
   140006537:	66 0f 28 c2          	movapd xmm0,xmm2
   14000653b:	e9 88 f5 ff ff       	jmp    140005ac8 <__gdtoa+0xbd8>
   140006540:	8b 54 24 70          	mov    edx,DWORD PTR [rsp+0x70]
   140006544:	89 c8                	mov    eax,ecx
   140006546:	01 4c 24 5c          	add    DWORD PTR [rsp+0x5c],ecx
   14000654a:	89 8c 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],ecx
   140006551:	01 d0                	add    eax,edx
   140006553:	89 54 24 60          	mov    DWORD PTR [rsp+0x60],edx
   140006557:	89 44 24 70          	mov    DWORD PTR [rsp+0x70],eax
   14000655b:	e9 13 f3 ff ff       	jmp    140005873 <__gdtoa+0x983>
   140006560:	45 31 c0             	xor    r8d,r8d
   140006563:	48 89 e9             	mov    rcx,rbp
   140006566:	ba 0a 00 00 00       	mov    edx,0xa
   14000656b:	e8 30 05 00 00       	call   140006aa0 <__multadd_D2A>
   140006570:	45 84 ed             	test   r13b,r13b
   140006573:	4c 8b 54 24 50       	mov    r10,QWORD PTR [rsp+0x50]
   140006578:	48 89 c5             	mov    rbp,rax
   14000657b:	0f 85 13 ff ff ff    	jne    140006494 <__gdtoa+0x15a4>
   140006581:	8b 84 24 9c 00 00 00 	mov    eax,DWORD PTR [rsp+0x9c]
   140006588:	44 8b 7c 24 78       	mov    r15d,DWORD PTR [rsp+0x78]
   14000658d:	44 8b 5c 24 30       	mov    r11d,DWORD PTR [rsp+0x30]
   140006592:	89 44 24 50          	mov    DWORD PTR [rsp+0x50],eax
   140006596:	e9 ac f5 ff ff       	jmp    140005b47 <__gdtoa+0xc57>
   14000659b:	66 0f ef c9          	pxor   xmm1,xmm1
   14000659f:	31 c0                	xor    eax,eax
   1400065a1:	ba 01 00 00 00       	mov    edx,0x1
   1400065a6:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   1400065ab:	66 0f 2e c1          	ucomisd xmm0,xmm1
   1400065af:	0f 9a c0             	setp   al
   1400065b2:	0f 45 c2             	cmovne eax,edx
   1400065b5:	c1 e0 04             	shl    eax,0x4
   1400065b8:	89 44 24 48          	mov    DWORD PTR [rsp+0x48],eax
   1400065bc:	e9 1f ff ff ff       	jmp    1400064e0 <__gdtoa+0x15f0>
   1400065c1:	44 0f b6 41 ff       	movzx  r8d,BYTE PTR [rcx-0x1]
   1400065c6:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   1400065cb:	48 89 ca             	mov    rdx,rcx
   1400065ce:	44 8b 7c 24 78       	mov    r15d,DWORD PTR [rsp+0x78]
   1400065d3:	e9 59 ef ff ff       	jmp    140005531 <__gdtoa+0x641>
   1400065d8:	8b 4b 18             	mov    ecx,DWORD PTR [rbx+0x18]
   1400065db:	85 c9                	test   ecx,ecx
   1400065dd:	0f 85 4d fc ff ff    	jne    140006230 <__gdtoa+0x1340>
   1400065e3:	85 d2                	test   edx,edx
   1400065e5:	0f 8f 08 fe ff ff    	jg     1400063f3 <__gdtoa+0x1503>
   1400065eb:	48 89 ee             	mov    rsi,rbp
   1400065ee:	4c 8d 67 01          	lea    r12,[rdi+0x1]
   1400065f2:	4c 89 ed             	mov    rbp,r13
   1400065f5:	e9 d8 fc ff ff       	jmp    1400062d2 <__gdtoa+0x13e2>
   1400065fa:	8b 4c 24 50          	mov    ecx,DWORD PTR [rsp+0x50]
   1400065fe:	8b 94 24 80 00 00 00 	mov    edx,DWORD PTR [rsp+0x80]
   140006605:	8d 41 ff             	lea    eax,[rcx-0x1]
   140006608:	39 c2                	cmp    edx,eax
   14000660a:	0f 8c ac fa ff ff    	jl     1400060bc <__gdtoa+0x11cc>
   140006610:	29 c2                	sub    edx,eax
   140006612:	01 4c 24 5c          	add    DWORD PTR [rsp+0x5c],ecx
   140006616:	89 c8                	mov    eax,ecx
   140006618:	89 8c 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],ecx
   14000661f:	8b 4c 24 70          	mov    ecx,DWORD PTR [rsp+0x70]
   140006623:	41 89 d4             	mov    r12d,edx
   140006626:	01 c8                	add    eax,ecx
   140006628:	89 4c 24 60          	mov    DWORD PTR [rsp+0x60],ecx
   14000662c:	89 44 24 70          	mov    DWORD PTR [rsp+0x70],eax
   140006630:	e9 3e f2 ff ff       	jmp    140005873 <__gdtoa+0x983>
   140006635:	8b 44 24 70          	mov    eax,DWORD PTR [rsp+0x70]
   140006639:	c7 44 24 58 00 00 00 	mov    DWORD PTR [rsp+0x58],0x0
   140006640:	00 
   140006641:	31 ed                	xor    ebp,ebp
   140006643:	44 8b a4 24 80 00 00 	mov    r12d,DWORD PTR [rsp+0x80]
   14000664a:	00 
   14000664b:	89 44 24 60          	mov    DWORD PTR [rsp+0x60],eax
   14000664f:	e9 44 f2 ff ff       	jmp    140005898 <__gdtoa+0x9a8>
   140006654:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   140006659:	44 8b 7c 24 78       	mov    r15d,DWORD PTR [rsp+0x78]
   14000665e:	48 89 ca             	mov    rdx,rcx
   140006661:	e9 cb ee ff ff       	jmp    140005531 <__gdtoa+0x641>
   140006666:	8b 53 18             	mov    edx,DWORD PTR [rbx+0x18]
   140006669:	48 89 ee             	mov    rsi,rbp
   14000666c:	4c 89 ed             	mov    rbp,r13
   14000666f:	85 d2                	test   edx,edx
   140006671:	0f 85 e1 fd ff ff    	jne    140006458 <__gdtoa+0x1568>
   140006677:	8b 44 24 58          	mov    eax,DWORD PTR [rsp+0x58]
   14000667b:	4d 8d 63 01          	lea    r12,[r11+0x1]
   14000667f:	89 44 24 48          	mov    DWORD PTR [rsp+0x48],eax
   140006683:	e9 4a fc ff ff       	jmp    1400062d2 <__gdtoa+0x13e2>
   140006688:	75 0a                	jne    140006694 <__gdtoa+0x17a4>
   14000668a:	41 f6 c0 01          	test   r8b,0x1
   14000668e:	0f 85 a2 fd ff ff    	jne    140006436 <__gdtoa+0x1546>
   140006694:	c7 44 24 58 20 00 00 	mov    DWORD PTR [rsp+0x58],0x20
   14000669b:	00 
   14000669c:	e9 a7 fd ff ff       	jmp    140006448 <__gdtoa+0x1558>
   1400066a1:	83 7b 14 01          	cmp    DWORD PTR [rbx+0x14],0x1
   1400066a5:	c7 44 24 48 10 00 00 	mov    DWORD PTR [rsp+0x48],0x10
   1400066ac:	00 
   1400066ad:	0f 8f 3d f6 ff ff    	jg     140005cf0 <__gdtoa+0xe00>
   1400066b3:	31 c0                	xor    eax,eax
   1400066b5:	83 7b 18 00          	cmp    DWORD PTR [rbx+0x18],0x0
   1400066b9:	0f 95 c0             	setne  al
   1400066bc:	c1 e0 04             	shl    eax,0x4
   1400066bf:	89 44 24 48          	mov    DWORD PTR [rsp+0x48],eax
   1400066c3:	e9 28 f6 ff ff       	jmp    140005cf0 <__gdtoa+0xe00>
   1400066c8:	90                   	nop
   1400066c9:	90                   	nop
   1400066ca:	90                   	nop
   1400066cb:	90                   	nop
   1400066cc:	90                   	nop
   1400066cd:	90                   	nop
   1400066ce:	90                   	nop
   1400066cf:	90                   	nop

00000001400066d0 <__rshift_D2A>:
   1400066d0:	41 54                	push   r12
   1400066d2:	55                   	push   rbp
   1400066d3:	57                   	push   rdi
   1400066d4:	56                   	push   rsi
   1400066d5:	53                   	push   rbx
   1400066d6:	48 63 59 14          	movsxd rbx,DWORD PTR [rcx+0x14]
   1400066da:	89 d5                	mov    ebp,edx
   1400066dc:	49 89 ca             	mov    r10,rcx
   1400066df:	c1 fd 05             	sar    ebp,0x5
   1400066e2:	39 eb                	cmp    ebx,ebp
   1400066e4:	7f 1a                	jg     140006700 <__rshift_D2A+0x30>
   1400066e6:	41 c7 42 14 00 00 00 	mov    DWORD PTR [r10+0x14],0x0
   1400066ed:	00 
   1400066ee:	41 c7 42 18 00 00 00 	mov    DWORD PTR [r10+0x18],0x0
   1400066f5:	00 
   1400066f6:	5b                   	pop    rbx
   1400066f7:	5e                   	pop    rsi
   1400066f8:	5f                   	pop    rdi
   1400066f9:	5d                   	pop    rbp
   1400066fa:	41 5c                	pop    r12
   1400066fc:	c3                   	ret
   1400066fd:	0f 1f 00             	nop    DWORD PTR [rax]
   140006700:	4c 8d 61 18          	lea    r12,[rcx+0x18]
   140006704:	48 63 ed             	movsxd rbp,ebp
   140006707:	4d 8d 1c 9c          	lea    r11,[r12+rbx*4]
   14000670b:	49 8d 34 ac          	lea    rsi,[r12+rbp*4]
   14000670f:	83 e2 1f             	and    edx,0x1f
   140006712:	74 64                	je     140006778 <__rshift_D2A+0xa8>
   140006714:	44 8b 0e             	mov    r9d,DWORD PTR [rsi]
   140006717:	bf 20 00 00 00       	mov    edi,0x20
   14000671c:	89 d1                	mov    ecx,edx
   14000671e:	4c 8d 46 04          	lea    r8,[rsi+0x4]
   140006722:	29 d7                	sub    edi,edx
   140006724:	41 d3 e9             	shr    r9d,cl
   140006727:	4d 39 d8             	cmp    r8,r11
   14000672a:	0f 83 80 00 00 00    	jae    1400067b0 <__rshift_D2A+0xe0>
   140006730:	4c 89 e6             	mov    rsi,r12
   140006733:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140006738:	41 8b 00             	mov    eax,DWORD PTR [r8]
   14000673b:	89 f9                	mov    ecx,edi
   14000673d:	48 83 c6 04          	add    rsi,0x4
   140006741:	49 83 c0 04          	add    r8,0x4
   140006745:	d3 e0                	shl    eax,cl
   140006747:	89 d1                	mov    ecx,edx
   140006749:	44 09 c8             	or     eax,r9d
   14000674c:	89 46 fc             	mov    DWORD PTR [rsi-0x4],eax
   14000674f:	45 8b 48 fc          	mov    r9d,DWORD PTR [r8-0x4]
   140006753:	41 d3 e9             	shr    r9d,cl
   140006756:	4d 39 d8             	cmp    r8,r11
   140006759:	72 dd                	jb     140006738 <__rshift_D2A+0x68>
   14000675b:	48 29 eb             	sub    rbx,rbp
   14000675e:	49 8d 44 9c fc       	lea    rax,[r12+rbx*4-0x4]
   140006763:	44 89 08             	mov    DWORD PTR [rax],r9d
   140006766:	45 85 c9             	test   r9d,r9d
   140006769:	74 2a                	je     140006795 <__rshift_D2A+0xc5>
   14000676b:	48 83 c0 04          	add    rax,0x4
   14000676f:	eb 24                	jmp    140006795 <__rshift_D2A+0xc5>
   140006771:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140006778:	4c 89 e7             	mov    rdi,r12
   14000677b:	4c 39 de             	cmp    rsi,r11
   14000677e:	0f 83 62 ff ff ff    	jae    1400066e6 <__rshift_D2A+0x16>
   140006784:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140006788:	a5                   	movs   DWORD PTR es:[rdi],DWORD PTR ds:[rsi]
   140006789:	4c 39 de             	cmp    rsi,r11
   14000678c:	72 fa                	jb     140006788 <__rshift_D2A+0xb8>
   14000678e:	48 29 eb             	sub    rbx,rbp
   140006791:	49 8d 04 9c          	lea    rax,[r12+rbx*4]
   140006795:	4c 29 e0             	sub    rax,r12
   140006798:	48 c1 f8 02          	sar    rax,0x2
   14000679c:	41 89 42 14          	mov    DWORD PTR [r10+0x14],eax
   1400067a0:	85 c0                	test   eax,eax
   1400067a2:	0f 84 46 ff ff ff    	je     1400066ee <__rshift_D2A+0x1e>
   1400067a8:	5b                   	pop    rbx
   1400067a9:	5e                   	pop    rsi
   1400067aa:	5f                   	pop    rdi
   1400067ab:	5d                   	pop    rbp
   1400067ac:	41 5c                	pop    r12
   1400067ae:	c3                   	ret
   1400067af:	90                   	nop
   1400067b0:	45 89 4a 18          	mov    DWORD PTR [r10+0x18],r9d
   1400067b4:	45 85 c9             	test   r9d,r9d
   1400067b7:	0f 84 29 ff ff ff    	je     1400066e6 <__rshift_D2A+0x16>
   1400067bd:	4c 89 e0             	mov    rax,r12
   1400067c0:	eb a9                	jmp    14000676b <__rshift_D2A+0x9b>
   1400067c2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   1400067c9:	00 00 00 00 
   1400067cd:	0f 1f 00             	nop    DWORD PTR [rax]

00000001400067d0 <__trailz_D2A>:
   1400067d0:	48 63 51 14          	movsxd rdx,DWORD PTR [rcx+0x14]
   1400067d4:	48 8d 41 18          	lea    rax,[rcx+0x18]
   1400067d8:	48 8d 0c 90          	lea    rcx,[rax+rdx*4]
   1400067dc:	31 d2                	xor    edx,edx
   1400067de:	48 39 c8             	cmp    rax,rcx
   1400067e1:	72 11                	jb     1400067f4 <__trailz_D2A+0x24>
   1400067e3:	eb 22                	jmp    140006807 <__trailz_D2A+0x37>
   1400067e5:	0f 1f 00             	nop    DWORD PTR [rax]
   1400067e8:	48 83 c0 04          	add    rax,0x4
   1400067ec:	83 c2 20             	add    edx,0x20
   1400067ef:	48 39 c8             	cmp    rax,rcx
   1400067f2:	73 13                	jae    140006807 <__trailz_D2A+0x37>
   1400067f4:	44 8b 00             	mov    r8d,DWORD PTR [rax]
   1400067f7:	45 85 c0             	test   r8d,r8d
   1400067fa:	74 ec                	je     1400067e8 <__trailz_D2A+0x18>
   1400067fc:	48 39 c8             	cmp    rax,rcx
   1400067ff:	73 06                	jae    140006807 <__trailz_D2A+0x37>
   140006801:	f3 0f bc 00          	tzcnt  eax,DWORD PTR [rax]
   140006805:	01 c2                	add    edx,eax
   140006807:	89 d0                	mov    eax,edx
   140006809:	c3                   	ret
   14000680a:	90                   	nop
   14000680b:	90                   	nop
   14000680c:	90                   	nop
   14000680d:	90                   	nop
   14000680e:	90                   	nop
   14000680f:	90                   	nop

0000000140006810 <dtoa_lock>:
   140006810:	57                   	push   rdi
   140006811:	56                   	push   rsi
   140006812:	53                   	push   rbx
   140006813:	48 83 ec 20          	sub    rsp,0x20
   140006817:	8b 05 d3 72 00 00    	mov    eax,DWORD PTR [rip+0x72d3]        # 14000daf0 <dtoa_CS_init>
   14000681d:	89 ce                	mov    esi,ecx
   14000681f:	83 f8 02             	cmp    eax,0x2
   140006822:	0f 84 b8 00 00 00    	je     1400068e0 <dtoa_lock+0xd0>
   140006828:	85 c0                	test   eax,eax
   14000682a:	74 3c                	je     140006868 <dtoa_lock+0x58>
   14000682c:	83 f8 01             	cmp    eax,0x1
   14000682f:	75 2a                	jne    14000685b <dtoa_lock+0x4b>
   140006831:	48 8b 1d e4 79 00 00 	mov    rbx,QWORD PTR [rip+0x79e4]        # 14000e21c <__imp_Sleep>
   140006838:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000683f:	00 
   140006840:	b9 01 00 00 00       	mov    ecx,0x1
   140006845:	ff d3                	call   rbx
   140006847:	8b 05 a3 72 00 00    	mov    eax,DWORD PTR [rip+0x72a3]        # 14000daf0 <dtoa_CS_init>
   14000684d:	83 f8 01             	cmp    eax,0x1
   140006850:	74 ee                	je     140006840 <dtoa_lock+0x30>
   140006852:	83 f8 02             	cmp    eax,0x2
   140006855:	0f 84 85 00 00 00    	je     1400068e0 <dtoa_lock+0xd0>
   14000685b:	48 83 c4 20          	add    rsp,0x20
   14000685f:	5b                   	pop    rbx
   140006860:	5e                   	pop    rsi
   140006861:	5f                   	pop    rdi
   140006862:	c3                   	ret
   140006863:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140006868:	b8 01 00 00 00       	mov    eax,0x1
   14000686d:	87 05 7d 72 00 00    	xchg   DWORD PTR [rip+0x727d],eax        # 14000daf0 <dtoa_CS_init>
   140006873:	85 c0                	test   eax,eax
   140006875:	75 49                	jne    1400068c0 <dtoa_lock+0xb0>
   140006877:	48 8d 1d 82 72 00 00 	lea    rbx,[rip+0x7282]        # 14000db00 <dtoa_CritSec>
   14000687e:	48 8b 3d 6f 79 00 00 	mov    rdi,QWORD PTR [rip+0x796f]        # 14000e1f4 <__imp_InitializeCriticalSection>
   140006885:	48 89 d9             	mov    rcx,rbx
   140006888:	ff d7                	call   rdi
   14000688a:	48 8d 4b 28          	lea    rcx,[rbx+0x28]
   14000688e:	ff d7                	call   rdi
   140006890:	48 8d 0d 59 00 00 00 	lea    rcx,[rip+0x59]        # 1400068f0 <dtoa_lock_cleanup>
   140006897:	e8 54 ac ff ff       	call   1400014f0 <atexit>
   14000689c:	c7 05 4a 72 00 00 02 	mov    DWORD PTR [rip+0x724a],0x2        # 14000daf0 <dtoa_CS_init>
   1400068a3:	00 00 00 
   1400068a6:	48 63 ce             	movsxd rcx,esi
   1400068a9:	48 8d 04 89          	lea    rax,[rcx+rcx*4]
   1400068ad:	48 8d 0c c3          	lea    rcx,[rbx+rax*8]
   1400068b1:	48 83 c4 20          	add    rsp,0x20
   1400068b5:	5b                   	pop    rbx
   1400068b6:	5e                   	pop    rsi
   1400068b7:	5f                   	pop    rdi
   1400068b8:	48 ff 25 1d 79 00 00 	rex.W jmp QWORD PTR [rip+0x791d]        # 14000e1dc <__imp_EnterCriticalSection>
   1400068bf:	90                   	nop
   1400068c0:	48 8d 1d 39 72 00 00 	lea    rbx,[rip+0x7239]        # 14000db00 <dtoa_CritSec>
   1400068c7:	83 f8 02             	cmp    eax,0x2
   1400068ca:	74 d0                	je     14000689c <dtoa_lock+0x8c>
   1400068cc:	8b 05 1e 72 00 00    	mov    eax,DWORD PTR [rip+0x721e]        # 14000daf0 <dtoa_CS_init>
   1400068d2:	83 f8 01             	cmp    eax,0x1
   1400068d5:	0f 84 56 ff ff ff    	je     140006831 <dtoa_lock+0x21>
   1400068db:	e9 72 ff ff ff       	jmp    140006852 <dtoa_lock+0x42>
   1400068e0:	48 8d 1d 19 72 00 00 	lea    rbx,[rip+0x7219]        # 14000db00 <dtoa_CritSec>
   1400068e7:	eb bd                	jmp    1400068a6 <dtoa_lock+0x96>
   1400068e9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000001400068f0 <dtoa_lock_cleanup>:
   1400068f0:	53                   	push   rbx
   1400068f1:	48 83 ec 20          	sub    rsp,0x20
   1400068f5:	b8 03 00 00 00       	mov    eax,0x3
   1400068fa:	87 05 f0 71 00 00    	xchg   DWORD PTR [rip+0x71f0],eax        # 14000daf0 <dtoa_CS_init>
   140006900:	83 f8 02             	cmp    eax,0x2
   140006903:	74 0b                	je     140006910 <dtoa_lock_cleanup+0x20>
   140006905:	48 83 c4 20          	add    rsp,0x20
   140006909:	5b                   	pop    rbx
   14000690a:	c3                   	ret
   14000690b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140006910:	48 8b 1d bd 78 00 00 	mov    rbx,QWORD PTR [rip+0x78bd]        # 14000e1d4 <__IAT_start__>
   140006917:	48 8d 0d e2 71 00 00 	lea    rcx,[rip+0x71e2]        # 14000db00 <dtoa_CritSec>
   14000691e:	ff d3                	call   rbx
   140006920:	48 8d 0d 01 72 00 00 	lea    rcx,[rip+0x7201]        # 14000db28 <dtoa_CritSec+0x28>
   140006927:	48 89 d8             	mov    rax,rbx
   14000692a:	48 83 c4 20          	add    rsp,0x20
   14000692e:	5b                   	pop    rbx
   14000692f:	48 ff e0             	rex.W jmp rax
   140006932:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140006939:	00 00 00 00 
   14000693d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000140006940 <__Balloc_D2A>:
   140006940:	56                   	push   rsi
   140006941:	53                   	push   rbx
   140006942:	48 83 ec 38          	sub    rsp,0x38
   140006946:	89 cb                	mov    ebx,ecx
   140006948:	31 c9                	xor    ecx,ecx
   14000694a:	e8 c1 fe ff ff       	call   140006810 <dtoa_lock>
   14000694f:	83 fb 09             	cmp    ebx,0x9
   140006952:	7f 3c                	jg     140006990 <__Balloc_D2A+0x50>
   140006954:	48 8d 15 45 71 00 00 	lea    rdx,[rip+0x7145]        # 14000daa0 <freelist>
   14000695b:	48 63 cb             	movsxd rcx,ebx
   14000695e:	48 8b 04 ca          	mov    rax,QWORD PTR [rdx+rcx*8]
   140006962:	48 85 c0             	test   rax,rax
   140006965:	74 79                	je     1400069e0 <__Balloc_D2A+0xa0>
   140006967:	4c 8b 00             	mov    r8,QWORD PTR [rax]
   14000696a:	83 3d 7f 71 00 00 02 	cmp    DWORD PTR [rip+0x717f],0x2        # 14000daf0 <dtoa_CS_init>
   140006971:	4c 89 04 ca          	mov    QWORD PTR [rdx+rcx*8],r8
   140006975:	75 50                	jne    1400069c7 <__Balloc_D2A+0x87>
   140006977:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
   14000697c:	48 8d 0d 7d 71 00 00 	lea    rcx,[rip+0x717d]        # 14000db00 <dtoa_CritSec>
   140006983:	ff 15 7b 78 00 00    	call   QWORD PTR [rip+0x787b]        # 14000e204 <__imp_LeaveCriticalSection>
   140006989:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
   14000698e:	eb 37                	jmp    1400069c7 <__Balloc_D2A+0x87>
   140006990:	89 d9                	mov    ecx,ebx
   140006992:	be 01 00 00 00       	mov    esi,0x1
   140006997:	d3 e6                	shl    esi,cl
   140006999:	48 63 c6             	movsxd rax,esi
   14000699c:	48 8d 0c 85 23 00 00 	lea    rcx,[rax*4+0x23]
   1400069a3:	00 
   1400069a4:	48 c1 e9 03          	shr    rcx,0x3
   1400069a8:	89 c9                	mov    ecx,ecx
   1400069aa:	48 c1 e1 03          	shl    rcx,0x3
   1400069ae:	e8 2d 12 00 00       	call   140007be0 <malloc>
   1400069b3:	48 85 c0             	test   rax,rax
   1400069b6:	74 17                	je     1400069cf <__Balloc_D2A+0x8f>
   1400069b8:	83 3d 31 71 00 00 02 	cmp    DWORD PTR [rip+0x7131],0x2        # 14000daf0 <dtoa_CS_init>
   1400069bf:	89 58 08             	mov    DWORD PTR [rax+0x8],ebx
   1400069c2:	89 70 0c             	mov    DWORD PTR [rax+0xc],esi
   1400069c5:	74 b0                	je     140006977 <__Balloc_D2A+0x37>
   1400069c7:	48 c7 40 10 00 00 00 	mov    QWORD PTR [rax+0x10],0x0
   1400069ce:	00 
   1400069cf:	48 83 c4 38          	add    rsp,0x38
   1400069d3:	5b                   	pop    rbx
   1400069d4:	5e                   	pop    rsi
   1400069d5:	c3                   	ret
   1400069d6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400069dd:	00 00 00 
   1400069e0:	89 d9                	mov    ecx,ebx
   1400069e2:	be 01 00 00 00       	mov    esi,0x1
   1400069e7:	4c 8d 05 b2 67 00 00 	lea    r8,[rip+0x67b2]        # 14000d1a0 <private_mem>
   1400069ee:	d3 e6                	shl    esi,cl
   1400069f0:	8d 46 09             	lea    eax,[rsi+0x9]
   1400069f3:	48 98                	cdqe
   1400069f5:	48 8d 0c 85 ff ff ff 	lea    rcx,[rax*4-0x1]
   1400069fc:	ff 
   1400069fd:	48 8b 05 7c 16 00 00 	mov    rax,QWORD PTR [rip+0x167c]        # 140008080 <pmem_next>
   140006a04:	48 c1 e9 03          	shr    rcx,0x3
   140006a08:	48 89 c2             	mov    rdx,rax
   140006a0b:	4c 29 c2             	sub    rdx,r8
   140006a0e:	48 c1 fa 03          	sar    rdx,0x3
   140006a12:	48 01 ca             	add    rdx,rcx
   140006a15:	48 81 fa 20 01 00 00 	cmp    rdx,0x120
   140006a1c:	77 8c                	ja     1400069aa <__Balloc_D2A+0x6a>
   140006a1e:	48 8d 14 c8          	lea    rdx,[rax+rcx*8]
   140006a22:	48 89 15 57 16 00 00 	mov    QWORD PTR [rip+0x1657],rdx        # 140008080 <pmem_next>
   140006a29:	eb 8d                	jmp    1400069b8 <__Balloc_D2A+0x78>
   140006a2b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000140006a30 <__Bfree_D2A>:
   140006a30:	53                   	push   rbx
   140006a31:	48 83 ec 20          	sub    rsp,0x20
   140006a35:	48 89 cb             	mov    rbx,rcx
   140006a38:	48 85 c9             	test   rcx,rcx
   140006a3b:	74 39                	je     140006a76 <__Bfree_D2A+0x46>
   140006a3d:	83 79 08 09          	cmp    DWORD PTR [rcx+0x8],0x9
   140006a41:	7e 0d                	jle    140006a50 <__Bfree_D2A+0x20>
   140006a43:	48 83 c4 20          	add    rsp,0x20
   140006a47:	5b                   	pop    rbx
   140006a48:	e9 7b 11 00 00       	jmp    140007bc8 <free>
   140006a4d:	0f 1f 00             	nop    DWORD PTR [rax]
   140006a50:	31 c9                	xor    ecx,ecx
   140006a52:	e8 b9 fd ff ff       	call   140006810 <dtoa_lock>
   140006a57:	48 63 53 08          	movsxd rdx,DWORD PTR [rbx+0x8]
   140006a5b:	48 8d 05 3e 70 00 00 	lea    rax,[rip+0x703e]        # 14000daa0 <freelist>
   140006a62:	83 3d 87 70 00 00 02 	cmp    DWORD PTR [rip+0x7087],0x2        # 14000daf0 <dtoa_CS_init>
   140006a69:	48 8b 0c d0          	mov    rcx,QWORD PTR [rax+rdx*8]
   140006a6d:	48 89 1c d0          	mov    QWORD PTR [rax+rdx*8],rbx
   140006a71:	48 89 0b             	mov    QWORD PTR [rbx],rcx
   140006a74:	74 0a                	je     140006a80 <__Bfree_D2A+0x50>
   140006a76:	48 83 c4 20          	add    rsp,0x20
   140006a7a:	5b                   	pop    rbx
   140006a7b:	c3                   	ret
   140006a7c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140006a80:	48 8d 0d 79 70 00 00 	lea    rcx,[rip+0x7079]        # 14000db00 <dtoa_CritSec>
   140006a87:	48 83 c4 20          	add    rsp,0x20
   140006a8b:	5b                   	pop    rbx
   140006a8c:	48 ff 25 71 77 00 00 	rex.W jmp QWORD PTR [rip+0x7771]        # 14000e204 <__imp_LeaveCriticalSection>
   140006a93:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140006a9a:	00 00 00 00 
   140006a9e:	66 90                	xchg   ax,ax

0000000140006aa0 <__multadd_D2A>:
   140006aa0:	55                   	push   rbp
   140006aa1:	57                   	push   rdi
   140006aa2:	56                   	push   rsi
   140006aa3:	53                   	push   rbx
   140006aa4:	48 83 ec 28          	sub    rsp,0x28
   140006aa8:	8b 79 14             	mov    edi,DWORD PTR [rcx+0x14]
   140006aab:	48 89 cb             	mov    rbx,rcx
   140006aae:	49 63 f0             	movsxd rsi,r8d
   140006ab1:	48 63 d2             	movsxd rdx,edx
   140006ab4:	31 c9                	xor    ecx,ecx
   140006ab6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   140006abd:	00 00 00 
   140006ac0:	8b 44 8b 18          	mov    eax,DWORD PTR [rbx+rcx*4+0x18]
   140006ac4:	48 0f af c2          	imul   rax,rdx
   140006ac8:	48 01 f0             	add    rax,rsi
   140006acb:	89 44 8b 18          	mov    DWORD PTR [rbx+rcx*4+0x18],eax
   140006acf:	48 89 c6             	mov    rsi,rax
   140006ad2:	48 83 c1 01          	add    rcx,0x1
   140006ad6:	48 c1 ee 20          	shr    rsi,0x20
   140006ada:	39 cf                	cmp    edi,ecx
   140006adc:	7f e2                	jg     140006ac0 <__multadd_D2A+0x20>
   140006ade:	48 89 dd             	mov    rbp,rbx
   140006ae1:	48 85 f6             	test   rsi,rsi
   140006ae4:	74 15                	je     140006afb <__multadd_D2A+0x5b>
   140006ae6:	39 7b 0c             	cmp    DWORD PTR [rbx+0xc],edi
   140006ae9:	7e 25                	jle    140006b10 <__multadd_D2A+0x70>
   140006aeb:	48 63 c7             	movsxd rax,edi
   140006aee:	83 c7 01             	add    edi,0x1
   140006af1:	48 89 dd             	mov    rbp,rbx
   140006af4:	89 74 83 18          	mov    DWORD PTR [rbx+rax*4+0x18],esi
   140006af8:	89 7b 14             	mov    DWORD PTR [rbx+0x14],edi
   140006afb:	48 89 e8             	mov    rax,rbp
   140006afe:	48 83 c4 28          	add    rsp,0x28
   140006b02:	5b                   	pop    rbx
   140006b03:	5e                   	pop    rsi
   140006b04:	5f                   	pop    rdi
   140006b05:	5d                   	pop    rbp
   140006b06:	c3                   	ret
   140006b07:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140006b0e:	00 00 
   140006b10:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
   140006b13:	8d 48 01             	lea    ecx,[rax+0x1]
   140006b16:	e8 25 fe ff ff       	call   140006940 <__Balloc_D2A>
   140006b1b:	48 89 c5             	mov    rbp,rax
   140006b1e:	48 85 c0             	test   rax,rax
   140006b21:	74 d8                	je     140006afb <__multadd_D2A+0x5b>
   140006b23:	48 8d 48 10          	lea    rcx,[rax+0x10]
   140006b27:	48 63 43 14          	movsxd rax,DWORD PTR [rbx+0x14]
   140006b2b:	48 8d 53 10          	lea    rdx,[rbx+0x10]
   140006b2f:	4c 8d 04 85 08 00 00 	lea    r8,[rax*4+0x8]
   140006b36:	00 
   140006b37:	e8 ac 10 00 00       	call   140007be8 <memcpy>
   140006b3c:	48 89 d9             	mov    rcx,rbx
   140006b3f:	48 89 eb             	mov    rbx,rbp
   140006b42:	e8 e9 fe ff ff       	call   140006a30 <__Bfree_D2A>
   140006b47:	48 63 c7             	movsxd rax,edi
   140006b4a:	83 c7 01             	add    edi,0x1
   140006b4d:	48 89 dd             	mov    rbp,rbx
   140006b50:	89 74 83 18          	mov    DWORD PTR [rbx+rax*4+0x18],esi
   140006b54:	89 7b 14             	mov    DWORD PTR [rbx+0x14],edi
   140006b57:	eb a2                	jmp    140006afb <__multadd_D2A+0x5b>
   140006b59:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000140006b60 <__i2b_D2A>:
   140006b60:	53                   	push   rbx
   140006b61:	48 83 ec 30          	sub    rsp,0x30
   140006b65:	89 cb                	mov    ebx,ecx
   140006b67:	31 c9                	xor    ecx,ecx
   140006b69:	e8 a2 fc ff ff       	call   140006810 <dtoa_lock>
   140006b6e:	48 8b 05 33 6f 00 00 	mov    rax,QWORD PTR [rip+0x6f33]        # 14000daa8 <freelist+0x8>
   140006b75:	48 85 c0             	test   rax,rax
   140006b78:	74 2e                	je     140006ba8 <__i2b_D2A+0x48>
   140006b7a:	48 8b 10             	mov    rdx,QWORD PTR [rax]
   140006b7d:	83 3d 6c 6f 00 00 02 	cmp    DWORD PTR [rip+0x6f6c],0x2        # 14000daf0 <dtoa_CS_init>
   140006b84:	48 89 15 1d 6f 00 00 	mov    QWORD PTR [rip+0x6f1d],rdx        # 14000daa8 <freelist+0x8>
   140006b8b:	74 63                	je     140006bf0 <__i2b_D2A+0x90>
   140006b8d:	48 8b 15 3c 2b 00 00 	mov    rdx,QWORD PTR [rip+0x2b3c]        # 1400096d0 <__bigtens_D2A+0x30>
   140006b94:	89 58 18             	mov    DWORD PTR [rax+0x18],ebx
   140006b97:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
   140006b9b:	48 83 c4 30          	add    rsp,0x30
   140006b9f:	5b                   	pop    rbx
   140006ba0:	c3                   	ret
   140006ba1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140006ba8:	48 8b 05 d1 14 00 00 	mov    rax,QWORD PTR [rip+0x14d1]        # 140008080 <pmem_next>
   140006baf:	48 8d 0d ea 65 00 00 	lea    rcx,[rip+0x65ea]        # 14000d1a0 <private_mem>
   140006bb6:	48 89 c2             	mov    rdx,rax
   140006bb9:	48 29 ca             	sub    rdx,rcx
   140006bbc:	48 c1 fa 03          	sar    rdx,0x3
   140006bc0:	48 83 c2 05          	add    rdx,0x5
   140006bc4:	48 81 fa 20 01 00 00 	cmp    rdx,0x120
   140006bcb:	76 43                	jbe    140006c10 <__i2b_D2A+0xb0>
   140006bcd:	b9 28 00 00 00       	mov    ecx,0x28
   140006bd2:	e8 09 10 00 00       	call   140007be0 <malloc>
   140006bd7:	48 85 c0             	test   rax,rax
   140006bda:	74 bf                	je     140006b9b <__i2b_D2A+0x3b>
   140006bdc:	48 8b 15 e5 2a 00 00 	mov    rdx,QWORD PTR [rip+0x2ae5]        # 1400096c8 <__bigtens_D2A+0x28>
   140006be3:	83 3d 06 6f 00 00 02 	cmp    DWORD PTR [rip+0x6f06],0x2        # 14000daf0 <dtoa_CS_init>
   140006bea:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
   140006bee:	75 9d                	jne    140006b8d <__i2b_D2A+0x2d>
   140006bf0:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
   140006bf5:	48 8d 0d 04 6f 00 00 	lea    rcx,[rip+0x6f04]        # 14000db00 <dtoa_CritSec>
   140006bfc:	ff 15 02 76 00 00    	call   QWORD PTR [rip+0x7602]        # 14000e204 <__imp_LeaveCriticalSection>
   140006c02:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
   140006c07:	eb 84                	jmp    140006b8d <__i2b_D2A+0x2d>
   140006c09:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140006c10:	48 8d 50 28          	lea    rdx,[rax+0x28]
   140006c14:	48 89 15 65 14 00 00 	mov    QWORD PTR [rip+0x1465],rdx        # 140008080 <pmem_next>
   140006c1b:	eb bf                	jmp    140006bdc <__i2b_D2A+0x7c>
   140006c1d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000140006c20 <__mult_D2A>:
   140006c20:	41 57                	push   r15
   140006c22:	41 56                	push   r14
   140006c24:	41 55                	push   r13
   140006c26:	41 54                	push   r12
   140006c28:	55                   	push   rbp
   140006c29:	57                   	push   rdi
   140006c2a:	56                   	push   rsi
   140006c2b:	53                   	push   rbx
   140006c2c:	48 83 ec 28          	sub    rsp,0x28
   140006c30:	4c 63 61 14          	movsxd r12,DWORD PTR [rcx+0x14]
   140006c34:	48 63 6a 14          	movsxd rbp,DWORD PTR [rdx+0x14]
   140006c38:	49 89 cd             	mov    r13,rcx
   140006c3b:	49 89 d7             	mov    r15,rdx
   140006c3e:	41 39 ec             	cmp    r12d,ebp
   140006c41:	7c 0e                	jl     140006c51 <__mult_D2A+0x31>
   140006c43:	89 e8                	mov    eax,ebp
   140006c45:	49 89 cf             	mov    r15,rcx
   140006c48:	49 63 ec             	movsxd rbp,r12d
   140006c4b:	49 89 d5             	mov    r13,rdx
   140006c4e:	4c 63 e0             	movsxd r12,eax
   140006c51:	41 8b 4f 08          	mov    ecx,DWORD PTR [r15+0x8]
   140006c55:	42 8d 5c 25 00       	lea    ebx,[rbp+r12*1+0x0]
   140006c5a:	41 39 5f 0c          	cmp    DWORD PTR [r15+0xc],ebx
   140006c5e:	7d 03                	jge    140006c63 <__mult_D2A+0x43>
   140006c60:	83 c1 01             	add    ecx,0x1
   140006c63:	e8 d8 fc ff ff       	call   140006940 <__Balloc_D2A>
   140006c68:	48 89 c7             	mov    rdi,rax
   140006c6b:	48 85 c0             	test   rax,rax
   140006c6e:	0f 84 ef 00 00 00    	je     140006d63 <__mult_D2A+0x143>
   140006c74:	4c 8d 58 18          	lea    r11,[rax+0x18]
   140006c78:	48 63 c3             	movsxd rax,ebx
   140006c7b:	49 8d 34 83          	lea    rsi,[r11+rax*4]
   140006c7f:	49 39 f3             	cmp    r11,rsi
   140006c82:	73 23                	jae    140006ca7 <__mult_D2A+0x87>
   140006c84:	48 89 f0             	mov    rax,rsi
   140006c87:	4c 89 d9             	mov    rcx,r11
   140006c8a:	31 d2                	xor    edx,edx
   140006c8c:	48 29 f8             	sub    rax,rdi
   140006c8f:	48 83 e8 19          	sub    rax,0x19
   140006c93:	48 c1 e8 02          	shr    rax,0x2
   140006c97:	4c 8d 04 85 04 00 00 	lea    r8,[rax*4+0x4]
   140006c9e:	00 
   140006c9f:	e8 4c 0f 00 00       	call   140007bf0 <memset>
   140006ca4:	49 89 c3             	mov    r11,rax
   140006ca7:	4d 8d 4d 18          	lea    r9,[r13+0x18]
   140006cab:	4d 8d 77 18          	lea    r14,[r15+0x18]
   140006caf:	4f 8d 24 a1          	lea    r12,[r9+r12*4]
   140006cb3:	49 8d 2c ae          	lea    rbp,[r14+rbp*4]
   140006cb7:	4d 39 e1             	cmp    r9,r12
   140006cba:	0f 83 83 00 00 00    	jae    140006d43 <__mult_D2A+0x123>
   140006cc0:	48 89 e8             	mov    rax,rbp
   140006cc3:	4c 29 f8             	sub    rax,r15
   140006cc6:	49 83 c7 19          	add    r15,0x19
   140006cca:	48 83 e8 19          	sub    rax,0x19
   140006cce:	48 c1 e8 02          	shr    rax,0x2
   140006cd2:	4c 39 fd             	cmp    rbp,r15
   140006cd5:	4c 8d 2c 85 04 00 00 	lea    r13,[rax*4+0x4]
   140006cdc:	00 
   140006cdd:	b8 04 00 00 00       	mov    eax,0x4
   140006ce2:	4c 0f 42 e8          	cmovb  r13,rax
   140006ce6:	eb 11                	jmp    140006cf9 <__mult_D2A+0xd9>
   140006ce8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140006cef:	00 
   140006cf0:	49 83 c3 04          	add    r11,0x4
   140006cf4:	4d 39 e1             	cmp    r9,r12
   140006cf7:	73 4a                	jae    140006d43 <__mult_D2A+0x123>
   140006cf9:	45 8b 11             	mov    r10d,DWORD PTR [r9]
   140006cfc:	49 83 c1 04          	add    r9,0x4
   140006d00:	45 85 d2             	test   r10d,r10d
   140006d03:	74 eb                	je     140006cf0 <__mult_D2A+0xd0>
   140006d05:	4c 89 d9             	mov    rcx,r11
   140006d08:	4c 89 f2             	mov    rdx,r14
   140006d0b:	45 31 c0             	xor    r8d,r8d
   140006d0e:	66 90                	xchg   ax,ax
   140006d10:	8b 02                	mov    eax,DWORD PTR [rdx]
   140006d12:	44 8b 39             	mov    r15d,DWORD PTR [rcx]
   140006d15:	48 83 c2 04          	add    rdx,0x4
   140006d19:	48 83 c1 04          	add    rcx,0x4
   140006d1d:	49 0f af c2          	imul   rax,r10
   140006d21:	4c 01 f8             	add    rax,r15
   140006d24:	4c 01 c0             	add    rax,r8
   140006d27:	49 89 c0             	mov    r8,rax
   140006d2a:	89 41 fc             	mov    DWORD PTR [rcx-0x4],eax
   140006d2d:	49 c1 e8 20          	shr    r8,0x20
   140006d31:	48 39 ea             	cmp    rdx,rbp
   140006d34:	72 da                	jb     140006d10 <__mult_D2A+0xf0>
   140006d36:	47 89 04 2b          	mov    DWORD PTR [r11+r13*1],r8d
   140006d3a:	49 83 c3 04          	add    r11,0x4
   140006d3e:	4d 39 e1             	cmp    r9,r12
   140006d41:	72 b6                	jb     140006cf9 <__mult_D2A+0xd9>
   140006d43:	85 db                	test   ebx,ebx
   140006d45:	7f 0e                	jg     140006d55 <__mult_D2A+0x135>
   140006d47:	eb 17                	jmp    140006d60 <__mult_D2A+0x140>
   140006d49:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140006d50:	83 eb 01             	sub    ebx,0x1
   140006d53:	74 0b                	je     140006d60 <__mult_D2A+0x140>
   140006d55:	8b 46 fc             	mov    eax,DWORD PTR [rsi-0x4]
   140006d58:	48 83 ee 04          	sub    rsi,0x4
   140006d5c:	85 c0                	test   eax,eax
   140006d5e:	74 f0                	je     140006d50 <__mult_D2A+0x130>
   140006d60:	89 5f 14             	mov    DWORD PTR [rdi+0x14],ebx
   140006d63:	48 89 f8             	mov    rax,rdi
   140006d66:	48 83 c4 28          	add    rsp,0x28
   140006d6a:	5b                   	pop    rbx
   140006d6b:	5e                   	pop    rsi
   140006d6c:	5f                   	pop    rdi
   140006d6d:	5d                   	pop    rbp
   140006d6e:	41 5c                	pop    r12
   140006d70:	41 5d                	pop    r13
   140006d72:	41 5e                	pop    r14
   140006d74:	41 5f                	pop    r15
   140006d76:	c3                   	ret
   140006d77:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140006d7e:	00 00 

0000000140006d80 <__pow5mult_D2A>:
   140006d80:	55                   	push   rbp
   140006d81:	57                   	push   rdi
   140006d82:	56                   	push   rsi
   140006d83:	53                   	push   rbx
   140006d84:	48 83 ec 28          	sub    rsp,0x28
   140006d88:	89 d0                	mov    eax,edx
   140006d8a:	48 89 ce             	mov    rsi,rcx
   140006d8d:	89 d3                	mov    ebx,edx
   140006d8f:	83 e0 03             	and    eax,0x3
   140006d92:	0f 85 b8 00 00 00    	jne    140006e50 <__pow5mult_D2A+0xd0>
   140006d98:	c1 fb 02             	sar    ebx,0x2
   140006d9b:	48 89 f5             	mov    rbp,rsi
   140006d9e:	74 52                	je     140006df2 <__pow5mult_D2A+0x72>
   140006da0:	48 8b 3d d9 63 00 00 	mov    rdi,QWORD PTR [rip+0x63d9]        # 14000d180 <p5s>
   140006da7:	48 85 ff             	test   rdi,rdi
   140006daa:	0f 84 d0 00 00 00    	je     140006e80 <__pow5mult_D2A+0x100>
   140006db0:	48 89 f5             	mov    rbp,rsi
   140006db3:	eb 12                	jmp    140006dc7 <__pow5mult_D2A+0x47>
   140006db5:	0f 1f 00             	nop    DWORD PTR [rax]
   140006db8:	d1 fb                	sar    ebx,1
   140006dba:	74 36                	je     140006df2 <__pow5mult_D2A+0x72>
   140006dbc:	48 8b 37             	mov    rsi,QWORD PTR [rdi]
   140006dbf:	48 85 f6             	test   rsi,rsi
   140006dc2:	74 3c                	je     140006e00 <__pow5mult_D2A+0x80>
   140006dc4:	48 89 f7             	mov    rdi,rsi
   140006dc7:	f6 c3 01             	test   bl,0x1
   140006dca:	74 ec                	je     140006db8 <__pow5mult_D2A+0x38>
   140006dcc:	48 89 fa             	mov    rdx,rdi
   140006dcf:	48 89 e9             	mov    rcx,rbp
   140006dd2:	e8 49 fe ff ff       	call   140006c20 <__mult_D2A>
   140006dd7:	48 89 c6             	mov    rsi,rax
   140006dda:	48 85 c0             	test   rax,rax
   140006ddd:	0f 84 90 00 00 00    	je     140006e73 <__pow5mult_D2A+0xf3>
   140006de3:	48 89 e9             	mov    rcx,rbp
   140006de6:	48 89 f5             	mov    rbp,rsi
   140006de9:	e8 42 fc ff ff       	call   140006a30 <__Bfree_D2A>
   140006dee:	d1 fb                	sar    ebx,1
   140006df0:	75 ca                	jne    140006dbc <__pow5mult_D2A+0x3c>
   140006df2:	48 89 e8             	mov    rax,rbp
   140006df5:	48 83 c4 28          	add    rsp,0x28
   140006df9:	5b                   	pop    rbx
   140006dfa:	5e                   	pop    rsi
   140006dfb:	5f                   	pop    rdi
   140006dfc:	5d                   	pop    rbp
   140006dfd:	c3                   	ret
   140006dfe:	66 90                	xchg   ax,ax
   140006e00:	b9 01 00 00 00       	mov    ecx,0x1
   140006e05:	e8 06 fa ff ff       	call   140006810 <dtoa_lock>
   140006e0a:	48 8b 37             	mov    rsi,QWORD PTR [rdi]
   140006e0d:	48 85 f6             	test   rsi,rsi
   140006e10:	74 1e                	je     140006e30 <__pow5mult_D2A+0xb0>
   140006e12:	83 3d d7 6c 00 00 02 	cmp    DWORD PTR [rip+0x6cd7],0x2        # 14000daf0 <dtoa_CS_init>
   140006e19:	75 a9                	jne    140006dc4 <__pow5mult_D2A+0x44>
   140006e1b:	48 8d 0d 06 6d 00 00 	lea    rcx,[rip+0x6d06]        # 14000db28 <dtoa_CritSec+0x28>
   140006e22:	ff 15 dc 73 00 00    	call   QWORD PTR [rip+0x73dc]        # 14000e204 <__imp_LeaveCriticalSection>
   140006e28:	eb 9a                	jmp    140006dc4 <__pow5mult_D2A+0x44>
   140006e2a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140006e30:	48 89 fa             	mov    rdx,rdi
   140006e33:	48 89 f9             	mov    rcx,rdi
   140006e36:	e8 e5 fd ff ff       	call   140006c20 <__mult_D2A>
   140006e3b:	48 89 07             	mov    QWORD PTR [rdi],rax
   140006e3e:	48 89 c6             	mov    rsi,rax
   140006e41:	48 85 c0             	test   rax,rax
   140006e44:	74 2d                	je     140006e73 <__pow5mult_D2A+0xf3>
   140006e46:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
   140006e4d:	eb c3                	jmp    140006e12 <__pow5mult_D2A+0x92>
   140006e4f:	90                   	nop
   140006e50:	83 e8 01             	sub    eax,0x1
   140006e53:	48 8d 15 26 27 00 00 	lea    rdx,[rip+0x2726]        # 140009580 <p05.0>
   140006e5a:	45 31 c0             	xor    r8d,r8d
   140006e5d:	48 98                	cdqe
   140006e5f:	8b 14 82             	mov    edx,DWORD PTR [rdx+rax*4]
   140006e62:	e8 39 fc ff ff       	call   140006aa0 <__multadd_D2A>
   140006e67:	48 89 c6             	mov    rsi,rax
   140006e6a:	48 85 c0             	test   rax,rax
   140006e6d:	0f 85 25 ff ff ff    	jne    140006d98 <__pow5mult_D2A+0x18>
   140006e73:	31 ed                	xor    ebp,ebp
   140006e75:	e9 78 ff ff ff       	jmp    140006df2 <__pow5mult_D2A+0x72>
   140006e7a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140006e80:	b9 01 00 00 00       	mov    ecx,0x1
   140006e85:	e8 86 f9 ff ff       	call   140006810 <dtoa_lock>
   140006e8a:	48 8b 3d ef 62 00 00 	mov    rdi,QWORD PTR [rip+0x62ef]        # 14000d180 <p5s>
   140006e91:	48 85 ff             	test   rdi,rdi
   140006e94:	74 1f                	je     140006eb5 <__pow5mult_D2A+0x135>
   140006e96:	83 3d 53 6c 00 00 02 	cmp    DWORD PTR [rip+0x6c53],0x2        # 14000daf0 <dtoa_CS_init>
   140006e9d:	0f 85 0d ff ff ff    	jne    140006db0 <__pow5mult_D2A+0x30>
   140006ea3:	48 8d 0d 7e 6c 00 00 	lea    rcx,[rip+0x6c7e]        # 14000db28 <dtoa_CritSec+0x28>
   140006eaa:	ff 15 54 73 00 00    	call   QWORD PTR [rip+0x7354]        # 14000e204 <__imp_LeaveCriticalSection>
   140006eb0:	e9 fb fe ff ff       	jmp    140006db0 <__pow5mult_D2A+0x30>
   140006eb5:	b9 01 00 00 00       	mov    ecx,0x1
   140006eba:	e8 81 fa ff ff       	call   140006940 <__Balloc_D2A>
   140006ebf:	48 89 c7             	mov    rdi,rax
   140006ec2:	48 85 c0             	test   rax,rax
   140006ec5:	74 1e                	je     140006ee5 <__pow5mult_D2A+0x165>
   140006ec7:	48 b8 01 00 00 00 71 	movabs rax,0x27100000001
   140006ece:	02 00 00 
   140006ed1:	48 89 3d a8 62 00 00 	mov    QWORD PTR [rip+0x62a8],rdi        # 14000d180 <p5s>
   140006ed8:	48 89 47 14          	mov    QWORD PTR [rdi+0x14],rax
   140006edc:	48 c7 07 00 00 00 00 	mov    QWORD PTR [rdi],0x0
   140006ee3:	eb b1                	jmp    140006e96 <__pow5mult_D2A+0x116>
   140006ee5:	48 c7 05 90 62 00 00 	mov    QWORD PTR [rip+0x6290],0x0        # 14000d180 <p5s>
   140006eec:	00 00 00 00 
   140006ef0:	31 ed                	xor    ebp,ebp
   140006ef2:	e9 fb fe ff ff       	jmp    140006df2 <__pow5mult_D2A+0x72>
   140006ef7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140006efe:	00 00 

0000000140006f00 <__lshift_D2A>:
   140006f00:	41 56                	push   r14
   140006f02:	41 55                	push   r13
   140006f04:	41 54                	push   r12
   140006f06:	55                   	push   rbp
   140006f07:	57                   	push   rdi
   140006f08:	56                   	push   rsi
   140006f09:	53                   	push   rbx
   140006f0a:	48 83 ec 20          	sub    rsp,0x20
   140006f0e:	49 89 cc             	mov    r12,rcx
   140006f11:	89 d6                	mov    esi,edx
   140006f13:	8b 49 08             	mov    ecx,DWORD PTR [rcx+0x8]
   140006f16:	89 d5                	mov    ebp,edx
   140006f18:	41 8b 5c 24 14       	mov    ebx,DWORD PTR [r12+0x14]
   140006f1d:	c1 fe 05             	sar    esi,0x5
   140006f20:	41 8b 44 24 0c       	mov    eax,DWORD PTR [r12+0xc]
   140006f25:	01 f3                	add    ebx,esi
   140006f27:	44 8d 6b 01          	lea    r13d,[rbx+0x1]
   140006f2b:	41 39 c5             	cmp    r13d,eax
   140006f2e:	7e 0a                	jle    140006f3a <__lshift_D2A+0x3a>
   140006f30:	01 c0                	add    eax,eax
   140006f32:	83 c1 01             	add    ecx,0x1
   140006f35:	41 39 c5             	cmp    r13d,eax
   140006f38:	7f f6                	jg     140006f30 <__lshift_D2A+0x30>
   140006f3a:	e8 01 fa ff ff       	call   140006940 <__Balloc_D2A>
   140006f3f:	49 89 c6             	mov    r14,rax
   140006f42:	48 85 c0             	test   rax,rax
   140006f45:	0f 84 a3 00 00 00    	je     140006fee <__lshift_D2A+0xee>
   140006f4b:	48 8d 78 18          	lea    rdi,[rax+0x18]
   140006f4f:	85 f6                	test   esi,esi
   140006f51:	7e 14                	jle    140006f67 <__lshift_D2A+0x67>
   140006f53:	48 c1 e6 02          	shl    rsi,0x2
   140006f57:	48 89 f9             	mov    rcx,rdi
   140006f5a:	31 d2                	xor    edx,edx
   140006f5c:	49 89 f0             	mov    r8,rsi
   140006f5f:	48 01 f7             	add    rdi,rsi
   140006f62:	e8 89 0c 00 00       	call   140007bf0 <memset>
   140006f67:	49 63 44 24 14       	movsxd rax,DWORD PTR [r12+0x14]
   140006f6c:	49 8d 74 24 18       	lea    rsi,[r12+0x18]
   140006f71:	4c 8d 0c 86          	lea    r9,[rsi+rax*4]
   140006f75:	83 e5 1f             	and    ebp,0x1f
   140006f78:	0f 84 82 00 00 00    	je     140007000 <__lshift_D2A+0x100>
   140006f7e:	41 ba 20 00 00 00    	mov    r10d,0x20
   140006f84:	49 89 f8             	mov    r8,rdi
   140006f87:	31 d2                	xor    edx,edx
   140006f89:	41 29 ea             	sub    r10d,ebp
   140006f8c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140006f90:	8b 06                	mov    eax,DWORD PTR [rsi]
   140006f92:	89 e9                	mov    ecx,ebp
   140006f94:	49 83 c0 04          	add    r8,0x4
   140006f98:	48 83 c6 04          	add    rsi,0x4
   140006f9c:	d3 e0                	shl    eax,cl
   140006f9e:	44 89 d1             	mov    ecx,r10d
   140006fa1:	09 d0                	or     eax,edx
   140006fa3:	41 89 40 fc          	mov    DWORD PTR [r8-0x4],eax
   140006fa7:	8b 56 fc             	mov    edx,DWORD PTR [rsi-0x4]
   140006faa:	d3 ea                	shr    edx,cl
   140006fac:	4c 39 ce             	cmp    rsi,r9
   140006faf:	72 df                	jb     140006f90 <__lshift_D2A+0x90>
   140006fb1:	4c 89 c8             	mov    rax,r9
   140006fb4:	49 8d 4c 24 19       	lea    rcx,[r12+0x19]
   140006fb9:	4c 29 e0             	sub    rax,r12
   140006fbc:	48 83 e8 19          	sub    rax,0x19
   140006fc0:	48 c1 e8 02          	shr    rax,0x2
   140006fc4:	49 39 c9             	cmp    r9,rcx
   140006fc7:	b9 04 00 00 00       	mov    ecx,0x4
   140006fcc:	48 8d 04 85 04 00 00 	lea    rax,[rax*4+0x4]
   140006fd3:	00 
   140006fd4:	48 0f 42 c1          	cmovb  rax,rcx
   140006fd8:	89 14 07             	mov    DWORD PTR [rdi+rax*1],edx
   140006fdb:	85 d2                	test   edx,edx
   140006fdd:	75 03                	jne    140006fe2 <__lshift_D2A+0xe2>
   140006fdf:	41 89 dd             	mov    r13d,ebx
   140006fe2:	45 89 6e 14          	mov    DWORD PTR [r14+0x14],r13d
   140006fe6:	4c 89 e1             	mov    rcx,r12
   140006fe9:	e8 42 fa ff ff       	call   140006a30 <__Bfree_D2A>
   140006fee:	4c 89 f0             	mov    rax,r14
   140006ff1:	48 83 c4 20          	add    rsp,0x20
   140006ff5:	5b                   	pop    rbx
   140006ff6:	5e                   	pop    rsi
   140006ff7:	5f                   	pop    rdi
   140006ff8:	5d                   	pop    rbp
   140006ff9:	41 5c                	pop    r12
   140006ffb:	41 5d                	pop    r13
   140006ffd:	41 5e                	pop    r14
   140006fff:	c3                   	ret
   140007000:	a5                   	movs   DWORD PTR es:[rdi],DWORD PTR ds:[rsi]
   140007001:	4c 39 ce             	cmp    rsi,r9
   140007004:	73 d9                	jae    140006fdf <__lshift_D2A+0xdf>
   140007006:	a5                   	movs   DWORD PTR es:[rdi],DWORD PTR ds:[rsi]
   140007007:	4c 39 ce             	cmp    rsi,r9
   14000700a:	72 f4                	jb     140007000 <__lshift_D2A+0x100>
   14000700c:	eb d1                	jmp    140006fdf <__lshift_D2A+0xdf>
   14000700e:	66 90                	xchg   ax,ax

0000000140007010 <__cmp_D2A>:
   140007010:	48 63 42 14          	movsxd rax,DWORD PTR [rdx+0x14]
   140007014:	44 8b 49 14          	mov    r9d,DWORD PTR [rcx+0x14]
   140007018:	41 29 c1             	sub    r9d,eax
   14000701b:	75 37                	jne    140007054 <__cmp_D2A+0x44>
   14000701d:	4c 8d 04 85 00 00 00 	lea    r8,[rax*4+0x0]
   140007024:	00 
   140007025:	48 83 c1 18          	add    rcx,0x18
   140007029:	4a 8d 04 01          	lea    rax,[rcx+r8*1]
   14000702d:	4a 8d 54 02 18       	lea    rdx,[rdx+r8*1+0x18]
   140007032:	eb 09                	jmp    14000703d <__cmp_D2A+0x2d>
   140007034:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140007038:	48 39 c1             	cmp    rcx,rax
   14000703b:	73 17                	jae    140007054 <__cmp_D2A+0x44>
   14000703d:	48 83 e8 04          	sub    rax,0x4
   140007041:	48 83 ea 04          	sub    rdx,0x4
   140007045:	44 8b 12             	mov    r10d,DWORD PTR [rdx]
   140007048:	44 39 10             	cmp    DWORD PTR [rax],r10d
   14000704b:	74 eb                	je     140007038 <__cmp_D2A+0x28>
   14000704d:	45 19 c9             	sbb    r9d,r9d
   140007050:	41 83 c9 01          	or     r9d,0x1
   140007054:	44 89 c8             	mov    eax,r9d
   140007057:	c3                   	ret
   140007058:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000705f:	00 

0000000140007060 <__diff_D2A>:
   140007060:	41 56                	push   r14
   140007062:	41 55                	push   r13
   140007064:	41 54                	push   r12
   140007066:	55                   	push   rbp
   140007067:	57                   	push   rdi
   140007068:	56                   	push   rsi
   140007069:	53                   	push   rbx
   14000706a:	48 83 ec 20          	sub    rsp,0x20
   14000706e:	48 63 42 14          	movsxd rax,DWORD PTR [rdx+0x14]
   140007072:	8b 79 14             	mov    edi,DWORD PTR [rcx+0x14]
   140007075:	48 89 ce             	mov    rsi,rcx
   140007078:	48 89 d3             	mov    rbx,rdx
   14000707b:	29 c7                	sub    edi,eax
   14000707d:	0f 85 55 01 00 00    	jne    1400071d8 <__diff_D2A+0x178>
   140007083:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
   14000708a:	00 
   14000708b:	48 8d 49 18          	lea    rcx,[rcx+0x18]
   14000708f:	48 8d 04 11          	lea    rax,[rcx+rdx*1]
   140007093:	48 8d 54 13 18       	lea    rdx,[rbx+rdx*1+0x18]
   140007098:	eb 0f                	jmp    1400070a9 <__diff_D2A+0x49>
   14000709a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400070a0:	48 39 c1             	cmp    rcx,rax
   1400070a3:	0f 83 57 01 00 00    	jae    140007200 <__diff_D2A+0x1a0>
   1400070a9:	48 83 e8 04          	sub    rax,0x4
   1400070ad:	48 83 ea 04          	sub    rdx,0x4
   1400070b1:	44 8b 32             	mov    r14d,DWORD PTR [rdx]
   1400070b4:	44 39 30             	cmp    DWORD PTR [rax],r14d
   1400070b7:	74 e7                	je     1400070a0 <__diff_D2A+0x40>
   1400070b9:	0f 82 24 01 00 00    	jb     1400071e3 <__diff_D2A+0x183>
   1400070bf:	90                   	nop
   1400070c0:	8b 4e 08             	mov    ecx,DWORD PTR [rsi+0x8]
   1400070c3:	e8 78 f8 ff ff       	call   140006940 <__Balloc_D2A>
   1400070c8:	49 89 c1             	mov    r9,rax
   1400070cb:	48 85 c0             	test   rax,rax
   1400070ce:	0f 84 ef 00 00 00    	je     1400071c3 <__diff_D2A+0x163>
   1400070d4:	89 78 10             	mov    DWORD PTR [rax+0x10],edi
   1400070d7:	48 63 46 14          	movsxd rax,DWORD PTR [rsi+0x14]
   1400070db:	4c 8d 6e 18          	lea    r13,[rsi+0x18]
   1400070df:	4d 8d 61 18          	lea    r12,[r9+0x18]
   1400070e3:	b9 18 00 00 00       	mov    ecx,0x18
   1400070e8:	31 d2                	xor    edx,edx
   1400070ea:	49 89 c2             	mov    r10,rax
   1400070ed:	49 8d 7c 85 00       	lea    rdi,[r13+rax*4+0x0]
   1400070f2:	48 63 43 14          	movsxd rax,DWORD PTR [rbx+0x14]
   1400070f6:	48 8d 6c 83 18       	lea    rbp,[rbx+rax*4+0x18]
   1400070fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140007100:	8b 04 0e             	mov    eax,DWORD PTR [rsi+rcx*1]
   140007103:	44 8b 04 0b          	mov    r8d,DWORD PTR [rbx+rcx*1]
   140007107:	4c 29 c0             	sub    rax,r8
   14000710a:	48 29 d0             	sub    rax,rdx
   14000710d:	41 89 04 09          	mov    DWORD PTR [r9+rcx*1],eax
   140007111:	48 89 c2             	mov    rdx,rax
   140007114:	48 83 c1 04          	add    rcx,0x4
   140007118:	41 89 c3             	mov    r11d,eax
   14000711b:	48 c1 ea 20          	shr    rdx,0x20
   14000711f:	48 8d 04 19          	lea    rax,[rcx+rbx*1]
   140007123:	83 e2 01             	and    edx,0x1
   140007126:	48 39 e8             	cmp    rax,rbp
   140007129:	72 d5                	jb     140007100 <__diff_D2A+0xa0>
   14000712b:	48 89 e8             	mov    rax,rbp
   14000712e:	48 8d 73 19          	lea    rsi,[rbx+0x19]
   140007132:	b9 04 00 00 00       	mov    ecx,0x4
   140007137:	48 29 d8             	sub    rax,rbx
   14000713a:	4c 8d 70 e7          	lea    r14,[rax-0x19]
   14000713e:	49 c1 ee 02          	shr    r14,0x2
   140007142:	48 39 f5             	cmp    rbp,rsi
   140007145:	4a 8d 04 b5 04 00 00 	lea    rax,[r14*4+0x4]
   14000714c:	00 
   14000714d:	48 0f 42 c1          	cmovb  rax,rcx
   140007151:	49 01 c5             	add    r13,rax
   140007154:	4d 8d 04 04          	lea    r8,[r12+rax*1]
   140007158:	4c 89 c3             	mov    rbx,r8
   14000715b:	4c 89 e9             	mov    rcx,r13
   14000715e:	49 39 fd             	cmp    r13,rdi
   140007161:	0f 83 b9 00 00 00    	jae    140007220 <__diff_D2A+0x1c0>
   140007167:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000716e:	00 00 
   140007170:	8b 01                	mov    eax,DWORD PTR [rcx]
   140007172:	48 83 c1 04          	add    rcx,0x4
   140007176:	48 83 c3 04          	add    rbx,0x4
   14000717a:	48 29 d0             	sub    rax,rdx
   14000717d:	48 89 c2             	mov    rdx,rax
   140007180:	89 43 fc             	mov    DWORD PTR [rbx-0x4],eax
   140007183:	41 89 c3             	mov    r11d,eax
   140007186:	48 c1 ea 20          	shr    rdx,0x20
   14000718a:	83 e2 01             	and    edx,0x1
   14000718d:	48 39 f9             	cmp    rcx,rdi
   140007190:	72 de                	jb     140007170 <__diff_D2A+0x110>
   140007192:	48 83 ef 01          	sub    rdi,0x1
   140007196:	4c 29 ef             	sub    rdi,r13
   140007199:	48 83 e7 fc          	and    rdi,0xfffffffffffffffc
   14000719d:	49 8d 04 38          	lea    rax,[r8+rdi*1]
   1400071a1:	45 85 db             	test   r11d,r11d
   1400071a4:	75 19                	jne    1400071bf <__diff_D2A+0x15f>
   1400071a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400071ad:	00 00 00 
   1400071b0:	8b 50 fc             	mov    edx,DWORD PTR [rax-0x4]
   1400071b3:	48 83 e8 04          	sub    rax,0x4
   1400071b7:	41 83 ea 01          	sub    r10d,0x1
   1400071bb:	85 d2                	test   edx,edx
   1400071bd:	74 f1                	je     1400071b0 <__diff_D2A+0x150>
   1400071bf:	45 89 51 14          	mov    DWORD PTR [r9+0x14],r10d
   1400071c3:	4c 89 c8             	mov    rax,r9
   1400071c6:	48 83 c4 20          	add    rsp,0x20
   1400071ca:	5b                   	pop    rbx
   1400071cb:	5e                   	pop    rsi
   1400071cc:	5f                   	pop    rdi
   1400071cd:	5d                   	pop    rbp
   1400071ce:	41 5c                	pop    r12
   1400071d0:	41 5d                	pop    r13
   1400071d2:	41 5e                	pop    r14
   1400071d4:	c3                   	ret
   1400071d5:	0f 1f 00             	nop    DWORD PTR [rax]
   1400071d8:	bf 00 00 00 00       	mov    edi,0x0
   1400071dd:	0f 89 dd fe ff ff    	jns    1400070c0 <__diff_D2A+0x60>
   1400071e3:	48 89 f0             	mov    rax,rsi
   1400071e6:	bf 01 00 00 00       	mov    edi,0x1
   1400071eb:	48 89 de             	mov    rsi,rbx
   1400071ee:	48 89 c3             	mov    rbx,rax
   1400071f1:	e9 ca fe ff ff       	jmp    1400070c0 <__diff_D2A+0x60>
   1400071f6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400071fd:	00 00 00 
   140007200:	31 c9                	xor    ecx,ecx
   140007202:	e8 39 f7 ff ff       	call   140006940 <__Balloc_D2A>
   140007207:	49 89 c1             	mov    r9,rax
   14000720a:	48 85 c0             	test   rax,rax
   14000720d:	74 b4                	je     1400071c3 <__diff_D2A+0x163>
   14000720f:	48 c7 40 14 01 00 00 	mov    QWORD PTR [rax+0x14],0x1
   140007216:	00 
   140007217:	eb aa                	jmp    1400071c3 <__diff_D2A+0x163>
   140007219:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140007220:	31 c0                	xor    eax,eax
   140007222:	49 c1 e6 02          	shl    r14,0x2
   140007226:	48 39 f5             	cmp    rbp,rsi
   140007229:	4c 0f 42 f0          	cmovb  r14,rax
   14000722d:	4b 8d 04 34          	lea    rax,[r12+r14*1]
   140007231:	e9 6b ff ff ff       	jmp    1400071a1 <__diff_D2A+0x141>
   140007236:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000723d:	00 00 00 

0000000140007240 <__b2d_D2A>:
   140007240:	57                   	push   rdi
   140007241:	56                   	push   rsi
   140007242:	53                   	push   rbx
   140007243:	48 63 41 14          	movsxd rax,DWORD PTR [rcx+0x14]
   140007247:	4c 8d 51 18          	lea    r10,[rcx+0x18]
   14000724b:	49 8d 1c 82          	lea    rbx,[r10+rax*4]
   14000724f:	44 8b 5b fc          	mov    r11d,DWORD PTR [rbx-0x4]
   140007253:	48 8d 73 fc          	lea    rsi,[rbx-0x4]
   140007257:	41 0f bd cb          	bsr    ecx,r11d
   14000725b:	89 cf                	mov    edi,ecx
   14000725d:	b9 20 00 00 00       	mov    ecx,0x20
   140007262:	83 f7 1f             	xor    edi,0x1f
   140007265:	41 89 c8             	mov    r8d,ecx
   140007268:	41 29 f8             	sub    r8d,edi
   14000726b:	44 89 02             	mov    DWORD PTR [rdx],r8d
   14000726e:	83 ff 0a             	cmp    edi,0xa
   140007271:	7e 7d                	jle    1400072f0 <__b2d_D2A+0xb0>
   140007273:	44 8d 4f f5          	lea    r9d,[rdi-0xb]
   140007277:	49 39 f2             	cmp    r10,rsi
   14000727a:	73 54                	jae    1400072d0 <__b2d_D2A+0x90>
   14000727c:	8b 53 f8             	mov    edx,DWORD PTR [rbx-0x8]
   14000727f:	45 85 c9             	test   r9d,r9d
   140007282:	74 53                	je     1400072d7 <__b2d_D2A+0x97>
   140007284:	44 29 c9             	sub    ecx,r9d
   140007287:	44 89 d8             	mov    eax,r11d
   14000728a:	89 d6                	mov    esi,edx
   14000728c:	41 89 c8             	mov    r8d,ecx
   14000728f:	44 89 c9             	mov    ecx,r9d
   140007292:	d3 e0                	shl    eax,cl
   140007294:	44 89 c1             	mov    ecx,r8d
   140007297:	d3 ee                	shr    esi,cl
   140007299:	44 89 c9             	mov    ecx,r9d
   14000729c:	09 f0                	or     eax,esi
   14000729e:	d3 e2                	shl    edx,cl
   1400072a0:	48 8d 4b f8          	lea    rcx,[rbx-0x8]
   1400072a4:	0d 00 00 f0 3f       	or     eax,0x3ff00000
   1400072a9:	48 c1 e0 20          	shl    rax,0x20
   1400072ad:	49 39 ca             	cmp    r10,rcx
   1400072b0:	73 31                	jae    1400072e3 <__b2d_D2A+0xa3>
   1400072b2:	44 8b 4b f4          	mov    r9d,DWORD PTR [rbx-0xc]
   1400072b6:	44 89 c1             	mov    ecx,r8d
   1400072b9:	41 d3 e9             	shr    r9d,cl
   1400072bc:	44 09 ca             	or     edx,r9d
   1400072bf:	48 09 d0             	or     rax,rdx
   1400072c2:	66 48 0f 6e c0       	movq   xmm0,rax
   1400072c7:	5b                   	pop    rbx
   1400072c8:	5e                   	pop    rsi
   1400072c9:	5f                   	pop    rdi
   1400072ca:	c3                   	ret
   1400072cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400072d0:	31 d2                	xor    edx,edx
   1400072d2:	83 ff 0b             	cmp    edi,0xb
   1400072d5:	75 59                	jne    140007330 <__b2d_D2A+0xf0>
   1400072d7:	44 89 d8             	mov    eax,r11d
   1400072da:	0d 00 00 f0 3f       	or     eax,0x3ff00000
   1400072df:	48 c1 e0 20          	shl    rax,0x20
   1400072e3:	48 09 d0             	or     rax,rdx
   1400072e6:	66 48 0f 6e c0       	movq   xmm0,rax
   1400072eb:	5b                   	pop    rbx
   1400072ec:	5e                   	pop    rsi
   1400072ed:	5f                   	pop    rdi
   1400072ee:	c3                   	ret
   1400072ef:	90                   	nop
   1400072f0:	b9 0b 00 00 00       	mov    ecx,0xb
   1400072f5:	44 89 d8             	mov    eax,r11d
   1400072f8:	45 31 c0             	xor    r8d,r8d
   1400072fb:	29 f9                	sub    ecx,edi
   1400072fd:	d3 e8                	shr    eax,cl
   1400072ff:	0d 00 00 f0 3f       	or     eax,0x3ff00000
   140007304:	48 c1 e0 20          	shl    rax,0x20
   140007308:	49 39 f2             	cmp    r10,rsi
   14000730b:	73 07                	jae    140007314 <__b2d_D2A+0xd4>
   14000730d:	44 8b 43 f8          	mov    r8d,DWORD PTR [rbx-0x8]
   140007311:	41 d3 e8             	shr    r8d,cl
   140007314:	8d 4f 15             	lea    ecx,[rdi+0x15]
   140007317:	44 89 da             	mov    edx,r11d
   14000731a:	d3 e2                	shl    edx,cl
   14000731c:	44 09 c2             	or     edx,r8d
   14000731f:	48 09 d0             	or     rax,rdx
   140007322:	66 48 0f 6e c0       	movq   xmm0,rax
   140007327:	5b                   	pop    rbx
   140007328:	5e                   	pop    rsi
   140007329:	5f                   	pop    rdi
   14000732a:	c3                   	ret
   14000732b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140007330:	44 89 d8             	mov    eax,r11d
   140007333:	44 89 c9             	mov    ecx,r9d
   140007336:	31 d2                	xor    edx,edx
   140007338:	d3 e0                	shl    eax,cl
   14000733a:	0d 00 00 f0 3f       	or     eax,0x3ff00000
   14000733f:	48 c1 e0 20          	shl    rax,0x20
   140007343:	48 09 d0             	or     rax,rdx
   140007346:	66 48 0f 6e c0       	movq   xmm0,rax
   14000734b:	5b                   	pop    rbx
   14000734c:	5e                   	pop    rsi
   14000734d:	5f                   	pop    rdi
   14000734e:	c3                   	ret
   14000734f:	90                   	nop

0000000140007350 <__d2b_D2A>:
   140007350:	57                   	push   rdi
   140007351:	56                   	push   rsi
   140007352:	53                   	push   rbx
   140007353:	48 83 ec 20          	sub    rsp,0x20
   140007357:	b9 01 00 00 00       	mov    ecx,0x1
   14000735c:	48 89 d6             	mov    rsi,rdx
   14000735f:	66 48 0f 7e c3       	movq   rbx,xmm0
   140007364:	4c 89 c7             	mov    rdi,r8
   140007367:	e8 d4 f5 ff ff       	call   140006940 <__Balloc_D2A>
   14000736c:	48 89 c2             	mov    rdx,rax
   14000736f:	48 85 c0             	test   rax,rax
   140007372:	0f 84 90 00 00 00    	je     140007408 <__d2b_D2A+0xb8>
   140007378:	48 89 d9             	mov    rcx,rbx
   14000737b:	48 89 d8             	mov    rax,rbx
   14000737e:	48 c1 e9 20          	shr    rcx,0x20
   140007382:	41 89 c9             	mov    r9d,ecx
   140007385:	c1 e9 14             	shr    ecx,0x14
   140007388:	41 81 e1 ff ff 0f 00 	and    r9d,0xfffff
   14000738f:	45 89 c8             	mov    r8d,r9d
   140007392:	41 81 c8 00 00 10 00 	or     r8d,0x100000
   140007399:	81 e1 ff 07 00 00    	and    ecx,0x7ff
   14000739f:	45 0f 45 c8          	cmovne r9d,r8d
   1400073a3:	41 89 ca             	mov    r10d,ecx
   1400073a6:	85 db                	test   ebx,ebx
   1400073a8:	74 6e                	je     140007418 <__d2b_D2A+0xc8>
   1400073aa:	45 31 c0             	xor    r8d,r8d
   1400073ad:	f3 44 0f bc c3       	tzcnt  r8d,ebx
   1400073b2:	44 89 c1             	mov    ecx,r8d
   1400073b5:	d3 e8                	shr    eax,cl
   1400073b7:	45 85 c0             	test   r8d,r8d
   1400073ba:	74 15                	je     1400073d1 <__d2b_D2A+0x81>
   1400073bc:	b9 20 00 00 00       	mov    ecx,0x20
   1400073c1:	44 89 cb             	mov    ebx,r9d
   1400073c4:	44 29 c1             	sub    ecx,r8d
   1400073c7:	d3 e3                	shl    ebx,cl
   1400073c9:	44 89 c1             	mov    ecx,r8d
   1400073cc:	09 d8                	or     eax,ebx
   1400073ce:	41 d3 e9             	shr    r9d,cl
   1400073d1:	89 42 18             	mov    DWORD PTR [rdx+0x18],eax
   1400073d4:	41 83 f9 01          	cmp    r9d,0x1
   1400073d8:	b8 01 00 00 00       	mov    eax,0x1
   1400073dd:	83 d8 ff             	sbb    eax,0xffffffff
   1400073e0:	44 89 4a 1c          	mov    DWORD PTR [rdx+0x1c],r9d
   1400073e4:	89 42 14             	mov    DWORD PTR [rdx+0x14],eax
   1400073e7:	45 85 d2             	test   r10d,r10d
   1400073ea:	75 4b                	jne    140007437 <__d2b_D2A+0xe7>
   1400073ec:	48 63 c8             	movsxd rcx,eax
   1400073ef:	41 81 e8 32 04 00 00 	sub    r8d,0x432
   1400073f6:	0f bd 4c 8a 14       	bsr    ecx,DWORD PTR [rdx+rcx*4+0x14]
   1400073fb:	c1 e0 05             	shl    eax,0x5
   1400073fe:	44 89 06             	mov    DWORD PTR [rsi],r8d
   140007401:	83 f1 1f             	xor    ecx,0x1f
   140007404:	29 c8                	sub    eax,ecx
   140007406:	89 07                	mov    DWORD PTR [rdi],eax
   140007408:	48 89 d0             	mov    rax,rdx
   14000740b:	48 83 c4 20          	add    rsp,0x20
   14000740f:	5b                   	pop    rbx
   140007410:	5e                   	pop    rsi
   140007411:	5f                   	pop    rdi
   140007412:	c3                   	ret
   140007413:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140007418:	31 c9                	xor    ecx,ecx
   14000741a:	b8 01 00 00 00       	mov    eax,0x1
   14000741f:	f3 41 0f bc c9       	tzcnt  ecx,r9d
   140007424:	89 42 14             	mov    DWORD PTR [rdx+0x14],eax
   140007427:	41 d3 e9             	shr    r9d,cl
   14000742a:	44 8d 41 20          	lea    r8d,[rcx+0x20]
   14000742e:	44 89 4a 18          	mov    DWORD PTR [rdx+0x18],r9d
   140007432:	45 85 d2             	test   r10d,r10d
   140007435:	74 b5                	je     1400073ec <__d2b_D2A+0x9c>
   140007437:	43 8d 84 02 cd fb ff 	lea    eax,[r10+r8*1-0x433]
   14000743e:	ff 
   14000743f:	89 06                	mov    DWORD PTR [rsi],eax
   140007441:	b8 35 00 00 00       	mov    eax,0x35
   140007446:	44 29 c0             	sub    eax,r8d
   140007449:	89 07                	mov    DWORD PTR [rdi],eax
   14000744b:	eb bb                	jmp    140007408 <__d2b_D2A+0xb8>
   14000744d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000140007450 <__strcp_D2A>:
   140007450:	48 89 c8             	mov    rax,rcx
   140007453:	48 8d 4a 01          	lea    rcx,[rdx+0x1]
   140007457:	0f b6 12             	movzx  edx,BYTE PTR [rdx]
   14000745a:	88 10                	mov    BYTE PTR [rax],dl
   14000745c:	84 d2                	test   dl,dl
   14000745e:	74 11                	je     140007471 <__strcp_D2A+0x21>
   140007460:	0f b6 11             	movzx  edx,BYTE PTR [rcx]
   140007463:	48 83 c0 01          	add    rax,0x1
   140007467:	48 83 c1 01          	add    rcx,0x1
   14000746b:	88 10                	mov    BYTE PTR [rax],dl
   14000746d:	84 d2                	test   dl,dl
   14000746f:	75 ef                	jne    140007460 <__strcp_D2A+0x10>
   140007471:	c3                   	ret
   140007472:	90                   	nop
   140007473:	90                   	nop
   140007474:	90                   	nop
   140007475:	90                   	nop
   140007476:	90                   	nop
   140007477:	90                   	nop
   140007478:	90                   	nop
   140007479:	90                   	nop
   14000747a:	90                   	nop
   14000747b:	90                   	nop
   14000747c:	90                   	nop
   14000747d:	90                   	nop
   14000747e:	90                   	nop
   14000747f:	90                   	nop

0000000140007480 <strnlen>:
   140007480:	45 31 c0             	xor    r8d,r8d
   140007483:	48 89 c8             	mov    rax,rcx
   140007486:	48 85 d2             	test   rdx,rdx
   140007489:	75 14                	jne    14000749f <strnlen+0x1f>
   14000748b:	eb 17                	jmp    1400074a4 <strnlen+0x24>
   14000748d:	0f 1f 00             	nop    DWORD PTR [rax]
   140007490:	48 83 c0 01          	add    rax,0x1
   140007494:	49 89 c0             	mov    r8,rax
   140007497:	49 29 c8             	sub    r8,rcx
   14000749a:	49 39 d0             	cmp    r8,rdx
   14000749d:	73 05                	jae    1400074a4 <strnlen+0x24>
   14000749f:	80 38 00             	cmp    BYTE PTR [rax],0x0
   1400074a2:	75 ec                	jne    140007490 <strnlen+0x10>
   1400074a4:	4c 89 c0             	mov    rax,r8
   1400074a7:	c3                   	ret
   1400074a8:	90                   	nop
   1400074a9:	90                   	nop
   1400074aa:	90                   	nop
   1400074ab:	90                   	nop
   1400074ac:	90                   	nop
   1400074ad:	90                   	nop
   1400074ae:	90                   	nop
   1400074af:	90                   	nop

00000001400074b0 <wcsnlen>:
   1400074b0:	45 31 c0             	xor    r8d,r8d
   1400074b3:	48 89 d0             	mov    rax,rdx
   1400074b6:	48 85 d2             	test   rdx,rdx
   1400074b9:	75 0e                	jne    1400074c9 <wcsnlen+0x19>
   1400074bb:	eb 17                	jmp    1400074d4 <wcsnlen+0x24>
   1400074bd:	0f 1f 00             	nop    DWORD PTR [rax]
   1400074c0:	49 83 c0 01          	add    r8,0x1
   1400074c4:	4c 39 c0             	cmp    rax,r8
   1400074c7:	74 0b                	je     1400074d4 <wcsnlen+0x24>
   1400074c9:	66 42 83 3c 41 00    	cmp    WORD PTR [rcx+r8*2],0x0
   1400074cf:	75 ef                	jne    1400074c0 <wcsnlen+0x10>
   1400074d1:	4c 89 c0             	mov    rax,r8
   1400074d4:	c3                   	ret
   1400074d5:	90                   	nop
   1400074d6:	90                   	nop
   1400074d7:	90                   	nop
   1400074d8:	90                   	nop
   1400074d9:	90                   	nop
   1400074da:	90                   	nop
   1400074db:	90                   	nop
   1400074dc:	90                   	nop
   1400074dd:	90                   	nop
   1400074de:	90                   	nop
   1400074df:	90                   	nop

00000001400074e0 <__p__fmode>:
   1400074e0:	48 8b 05 99 22 00 00 	mov    rax,QWORD PTR [rip+0x2299]        # 140009780 <.refptr.__imp__fmode>
   1400074e7:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400074ea:	c3                   	ret
   1400074eb:	90                   	nop
   1400074ec:	90                   	nop
   1400074ed:	90                   	nop
   1400074ee:	90                   	nop
   1400074ef:	90                   	nop

00000001400074f0 <__p__commode>:
   1400074f0:	48 8b 05 79 22 00 00 	mov    rax,QWORD PTR [rip+0x2279]        # 140009770 <.refptr.__imp__commode>
   1400074f7:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400074fa:	c3                   	ret
   1400074fb:	90                   	nop
   1400074fc:	90                   	nop
   1400074fd:	90                   	nop
   1400074fe:	90                   	nop
   1400074ff:	90                   	nop

0000000140007500 <__p__acmdln>:
   140007500:	48 8b 05 59 22 00 00 	mov    rax,QWORD PTR [rip+0x2259]        # 140009760 <.refptr.__imp__acmdln>
   140007507:	48 8b 00             	mov    rax,QWORD PTR [rax]
   14000750a:	c3                   	ret
   14000750b:	90                   	nop
   14000750c:	90                   	nop
   14000750d:	90                   	nop
   14000750e:	90                   	nop
   14000750f:	90                   	nop

0000000140007510 <_lock_file>:
   140007510:	53                   	push   rbx
   140007511:	48 83 ec 20          	sub    rsp,0x20
   140007515:	48 89 cb             	mov    rbx,rcx
   140007518:	31 c9                	xor    ecx,ecx
   14000751a:	e8 e1 00 00 00       	call   140007600 <__acrt_iob_func>
   14000751f:	48 39 c3             	cmp    rbx,rax
   140007522:	72 0f                	jb     140007533 <_lock_file+0x23>
   140007524:	b9 13 00 00 00       	mov    ecx,0x13
   140007529:	e8 d2 00 00 00       	call   140007600 <__acrt_iob_func>
   14000752e:	48 39 c3             	cmp    rbx,rax
   140007531:	76 15                	jbe    140007548 <_lock_file+0x38>
   140007533:	48 8d 4b 30          	lea    rcx,[rbx+0x30]
   140007537:	48 83 c4 20          	add    rsp,0x20
   14000753b:	5b                   	pop    rbx
   14000753c:	48 ff 25 99 6c 00 00 	rex.W jmp QWORD PTR [rip+0x6c99]        # 14000e1dc <__imp_EnterCriticalSection>
   140007543:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140007548:	31 c9                	xor    ecx,ecx
   14000754a:	e8 b1 00 00 00       	call   140007600 <__acrt_iob_func>
   14000754f:	48 89 c2             	mov    rdx,rax
   140007552:	48 89 d8             	mov    rax,rbx
   140007555:	48 29 d0             	sub    rax,rdx
   140007558:	48 c1 f8 04          	sar    rax,0x4
   14000755c:	69 c0 ab aa aa aa    	imul   eax,eax,0xaaaaaaab
   140007562:	8d 48 10             	lea    ecx,[rax+0x10]
   140007565:	e8 1e 06 00 00       	call   140007b88 <_lock>
   14000756a:	81 4b 18 00 80 00 00 	or     DWORD PTR [rbx+0x18],0x8000
   140007571:	48 83 c4 20          	add    rsp,0x20
   140007575:	5b                   	pop    rbx
   140007576:	c3                   	ret
   140007577:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000757e:	00 00 

0000000140007580 <_unlock_file>:
   140007580:	53                   	push   rbx
   140007581:	48 83 ec 20          	sub    rsp,0x20
   140007585:	48 89 cb             	mov    rbx,rcx
   140007588:	31 c9                	xor    ecx,ecx
   14000758a:	e8 71 00 00 00       	call   140007600 <__acrt_iob_func>
   14000758f:	48 39 c3             	cmp    rbx,rax
   140007592:	72 0f                	jb     1400075a3 <_unlock_file+0x23>
   140007594:	b9 13 00 00 00       	mov    ecx,0x13
   140007599:	e8 62 00 00 00       	call   140007600 <__acrt_iob_func>
   14000759e:	48 39 c3             	cmp    rbx,rax
   1400075a1:	76 15                	jbe    1400075b8 <_unlock_file+0x38>
   1400075a3:	48 8d 4b 30          	lea    rcx,[rbx+0x30]
   1400075a7:	48 83 c4 20          	add    rsp,0x20
   1400075ab:	5b                   	pop    rbx
   1400075ac:	48 ff 25 51 6c 00 00 	rex.W jmp QWORD PTR [rip+0x6c51]        # 14000e204 <__imp_LeaveCriticalSection>
   1400075b3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400075b8:	81 63 18 ff 7f ff ff 	and    DWORD PTR [rbx+0x18],0xffff7fff
   1400075bf:	31 c9                	xor    ecx,ecx
   1400075c1:	e8 3a 00 00 00       	call   140007600 <__acrt_iob_func>
   1400075c6:	48 29 c3             	sub    rbx,rax
   1400075c9:	48 c1 fb 04          	sar    rbx,0x4
   1400075cd:	69 db ab aa aa aa    	imul   ebx,ebx,0xaaaaaaab
   1400075d3:	8d 4b 10             	lea    ecx,[rbx+0x10]
   1400075d6:	48 83 c4 20          	add    rsp,0x20
   1400075da:	5b                   	pop    rbx
   1400075db:	e9 b8 05 00 00       	jmp    140007b98 <_unlock>

00000001400075e0 <_get_invalid_parameter_handler>:
   1400075e0:	48 8b 05 79 65 00 00 	mov    rax,QWORD PTR [rip+0x6579]        # 14000db60 <handler>
   1400075e7:	c3                   	ret
   1400075e8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400075ef:	00 

00000001400075f0 <_set_invalid_parameter_handler>:
   1400075f0:	48 89 c8             	mov    rax,rcx
   1400075f3:	48 87 05 66 65 00 00 	xchg   QWORD PTR [rip+0x6566],rax        # 14000db60 <handler>
   1400075fa:	c3                   	ret
   1400075fb:	90                   	nop
   1400075fc:	90                   	nop
   1400075fd:	90                   	nop
   1400075fe:	90                   	nop
   1400075ff:	90                   	nop

0000000140007600 <__acrt_iob_func>:
   140007600:	53                   	push   rbx
   140007601:	48 83 ec 20          	sub    rsp,0x20
   140007605:	89 cb                	mov    ebx,ecx
   140007607:	e8 44 05 00 00       	call   140007b50 <__iob_func>
   14000760c:	89 d9                	mov    ecx,ebx
   14000760e:	48 8d 14 49          	lea    rdx,[rcx+rcx*2]
   140007612:	48 c1 e2 04          	shl    rdx,0x4
   140007616:	48 01 d0             	add    rax,rdx
   140007619:	48 83 c4 20          	add    rsp,0x20
   14000761d:	5b                   	pop    rbx
   14000761e:	c3                   	ret
   14000761f:	90                   	nop

0000000140007620 <__wcrtomb_cp>:
   140007620:	48 83 ec 58          	sub    rsp,0x58
   140007624:	48 89 c8             	mov    rax,rcx
   140007627:	66 89 54 24 68       	mov    WORD PTR [rsp+0x68],dx
   14000762c:	44 89 c1             	mov    ecx,r8d
   14000762f:	45 85 c0             	test   r8d,r8d
   140007632:	75 1c                	jne    140007650 <__wcrtomb_cp+0x30>
   140007634:	66 81 fa ff 00       	cmp    dx,0xff
   140007639:	77 59                	ja     140007694 <__wcrtomb_cp+0x74>
   14000763b:	88 10                	mov    BYTE PTR [rax],dl
   14000763d:	b8 01 00 00 00       	mov    eax,0x1
   140007642:	48 83 c4 58          	add    rsp,0x58
   140007646:	c3                   	ret
   140007647:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000764e:	00 00 
   140007650:	48 8d 54 24 4c       	lea    rdx,[rsp+0x4c]
   140007655:	44 89 4c 24 28       	mov    DWORD PTR [rsp+0x28],r9d
   14000765a:	4c 8d 44 24 68       	lea    r8,[rsp+0x68]
   14000765f:	41 b9 01 00 00 00    	mov    r9d,0x1
   140007665:	48 89 54 24 38       	mov    QWORD PTR [rsp+0x38],rdx
   14000766a:	31 d2                	xor    edx,edx
   14000766c:	c7 44 24 4c 00 00 00 	mov    DWORD PTR [rsp+0x4c],0x0
   140007673:	00 
   140007674:	48 c7 44 24 30 00 00 	mov    QWORD PTR [rsp+0x30],0x0
   14000767b:	00 00 
   14000767d:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
   140007682:	ff 15 b4 6b 00 00    	call   QWORD PTR [rip+0x6bb4]        # 14000e23c <__imp_WideCharToMultiByte>
   140007688:	85 c0                	test   eax,eax
   14000768a:	74 08                	je     140007694 <__wcrtomb_cp+0x74>
   14000768c:	8b 54 24 4c          	mov    edx,DWORD PTR [rsp+0x4c]
   140007690:	85 d2                	test   edx,edx
   140007692:	74 ae                	je     140007642 <__wcrtomb_cp+0x22>
   140007694:	e8 df 04 00 00       	call   140007b78 <_errno>
   140007699:	c7 00 2a 00 00 00    	mov    DWORD PTR [rax],0x2a
   14000769f:	b8 ff ff ff ff       	mov    eax,0xffffffff
   1400076a4:	48 83 c4 58          	add    rsp,0x58
   1400076a8:	c3                   	ret
   1400076a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000001400076b0 <wcrtomb>:
   1400076b0:	57                   	push   rdi
   1400076b1:	56                   	push   rsi
   1400076b2:	53                   	push   rbx
   1400076b3:	48 83 ec 30          	sub    rsp,0x30
   1400076b7:	48 85 c9             	test   rcx,rcx
   1400076ba:	48 89 cb             	mov    rbx,rcx
   1400076bd:	48 8d 44 24 2b       	lea    rax,[rsp+0x2b]
   1400076c2:	89 d6                	mov    esi,edx
   1400076c4:	48 0f 44 d8          	cmove  rbx,rax
   1400076c8:	e8 73 04 00 00       	call   140007b40 <___mb_cur_max_func>
   1400076cd:	89 c7                	mov    edi,eax
   1400076cf:	e8 64 04 00 00       	call   140007b38 <___lc_codepage_func>
   1400076d4:	0f b7 d6             	movzx  edx,si
   1400076d7:	41 89 f9             	mov    r9d,edi
   1400076da:	48 89 d9             	mov    rcx,rbx
   1400076dd:	41 89 c0             	mov    r8d,eax
   1400076e0:	e8 3b ff ff ff       	call   140007620 <__wcrtomb_cp>
   1400076e5:	48 98                	cdqe
   1400076e7:	48 83 c4 30          	add    rsp,0x30
   1400076eb:	5b                   	pop    rbx
   1400076ec:	5e                   	pop    rsi
   1400076ed:	5f                   	pop    rdi
   1400076ee:	c3                   	ret
   1400076ef:	90                   	nop

00000001400076f0 <wcsrtombs>:
   1400076f0:	41 56                	push   r14
   1400076f2:	41 55                	push   r13
   1400076f4:	41 54                	push   r12
   1400076f6:	55                   	push   rbp
   1400076f7:	57                   	push   rdi
   1400076f8:	56                   	push   rsi
   1400076f9:	53                   	push   rbx
   1400076fa:	48 83 ec 30          	sub    rsp,0x30
   1400076fe:	45 31 f6             	xor    r14d,r14d
   140007701:	49 89 d4             	mov    r12,rdx
   140007704:	48 89 cb             	mov    rbx,rcx
   140007707:	4c 89 c5             	mov    rbp,r8
   14000770a:	e8 29 04 00 00       	call   140007b38 <___lc_codepage_func>
   14000770f:	89 c6                	mov    esi,eax
   140007711:	e8 2a 04 00 00       	call   140007b40 <___mb_cur_max_func>
   140007716:	4d 8b 2c 24          	mov    r13,QWORD PTR [r12]
   14000771a:	89 c7                	mov    edi,eax
   14000771c:	4d 85 ed             	test   r13,r13
   14000771f:	74 48                	je     140007769 <wcsrtombs+0x79>
   140007721:	48 85 db             	test   rbx,rbx
   140007724:	74 5a                	je     140007780 <wcsrtombs+0x90>
   140007726:	48 85 ed             	test   rbp,rbp
   140007729:	75 20                	jne    14000774b <wcsrtombs+0x5b>
   14000772b:	e9 90 00 00 00       	jmp    1400077c0 <wcsrtombs+0xd0>
   140007730:	48 98                	cdqe
   140007732:	48 01 c3             	add    rbx,rax
   140007735:	49 01 c6             	add    r14,rax
   140007738:	80 7b ff 00          	cmp    BYTE PTR [rbx-0x1],0x0
   14000773c:	0f 84 8e 00 00 00    	je     1400077d0 <wcsrtombs+0xe0>
   140007742:	49 83 c5 02          	add    r13,0x2
   140007746:	49 39 ee             	cmp    r14,rbp
   140007749:	73 75                	jae    1400077c0 <wcsrtombs+0xd0>
   14000774b:	41 0f b7 55 00       	movzx  edx,WORD PTR [r13+0x0]
   140007750:	41 89 f9             	mov    r9d,edi
   140007753:	41 89 f0             	mov    r8d,esi
   140007756:	48 89 d9             	mov    rcx,rbx
   140007759:	e8 c2 fe ff ff       	call   140007620 <__wcrtomb_cp>
   14000775e:	85 c0                	test   eax,eax
   140007760:	7f ce                	jg     140007730 <wcsrtombs+0x40>
   140007762:	49 c7 c6 ff ff ff ff 	mov    r14,0xffffffffffffffff
   140007769:	4c 89 f0             	mov    rax,r14
   14000776c:	48 83 c4 30          	add    rsp,0x30
   140007770:	5b                   	pop    rbx
   140007771:	5e                   	pop    rsi
   140007772:	5f                   	pop    rdi
   140007773:	5d                   	pop    rbp
   140007774:	41 5c                	pop    r12
   140007776:	41 5d                	pop    r13
   140007778:	41 5e                	pop    r14
   14000777a:	c3                   	ret
   14000777b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140007780:	48 8d 6c 24 2b       	lea    rbp,[rsp+0x2b]
   140007785:	eb 1f                	jmp    1400077a6 <wcsrtombs+0xb6>
   140007787:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000778e:	00 00 
   140007790:	48 63 d0             	movsxd rdx,eax
   140007793:	83 e8 01             	sub    eax,0x1
   140007796:	48 98                	cdqe
   140007798:	49 01 d6             	add    r14,rdx
   14000779b:	80 7c 04 2b 00       	cmp    BYTE PTR [rsp+rax*1+0x2b],0x0
   1400077a0:	74 3e                	je     1400077e0 <wcsrtombs+0xf0>
   1400077a2:	49 83 c5 02          	add    r13,0x2
   1400077a6:	41 0f b7 55 00       	movzx  edx,WORD PTR [r13+0x0]
   1400077ab:	41 89 f9             	mov    r9d,edi
   1400077ae:	41 89 f0             	mov    r8d,esi
   1400077b1:	48 89 e9             	mov    rcx,rbp
   1400077b4:	e8 67 fe ff ff       	call   140007620 <__wcrtomb_cp>
   1400077b9:	85 c0                	test   eax,eax
   1400077bb:	7f d3                	jg     140007790 <wcsrtombs+0xa0>
   1400077bd:	eb a3                	jmp    140007762 <wcsrtombs+0x72>
   1400077bf:	90                   	nop
   1400077c0:	4d 89 2c 24          	mov    QWORD PTR [r12],r13
   1400077c4:	eb a3                	jmp    140007769 <wcsrtombs+0x79>
   1400077c6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400077cd:	00 00 00 
   1400077d0:	49 c7 04 24 00 00 00 	mov    QWORD PTR [r12],0x0
   1400077d7:	00 
   1400077d8:	49 83 ee 01          	sub    r14,0x1
   1400077dc:	eb 8b                	jmp    140007769 <wcsrtombs+0x79>
   1400077de:	66 90                	xchg   ax,ax
   1400077e0:	49 83 ee 01          	sub    r14,0x1
   1400077e4:	eb 83                	jmp    140007769 <wcsrtombs+0x79>
   1400077e6:	90                   	nop
   1400077e7:	90                   	nop
   1400077e8:	90                   	nop
   1400077e9:	90                   	nop
   1400077ea:	90                   	nop
   1400077eb:	90                   	nop
   1400077ec:	90                   	nop
   1400077ed:	90                   	nop
   1400077ee:	90                   	nop
   1400077ef:	90                   	nop

00000001400077f0 <__mbrtowc_cp>:
   1400077f0:	57                   	push   rdi
   1400077f1:	53                   	push   rbx
   1400077f2:	48 83 ec 48          	sub    rsp,0x48
   1400077f6:	48 89 cf             	mov    rdi,rcx
   1400077f9:	48 89 d3             	mov    rbx,rdx
   1400077fc:	48 85 d2             	test   rdx,rdx
   1400077ff:	0f 84 c8 00 00 00    	je     1400078cd <__mbrtowc_cp+0xdd>
   140007805:	4d 85 c0             	test   r8,r8
   140007808:	0f 84 36 01 00 00    	je     140007944 <__mbrtowc_cp+0x154>
   14000780e:	41 8b 01             	mov    eax,DWORD PTR [r9]
   140007811:	0f b6 12             	movzx  edx,BYTE PTR [rdx]
   140007814:	41 c7 01 00 00 00 00 	mov    DWORD PTR [r9],0x0
   14000781b:	89 44 24 3c          	mov    DWORD PTR [rsp+0x3c],eax
   14000781f:	84 d2                	test   dl,dl
   140007821:	0f 84 a1 00 00 00    	je     1400078c8 <__mbrtowc_cp+0xd8>
   140007827:	83 bc 24 88 00 00 00 	cmp    DWORD PTR [rsp+0x88],0x1
   14000782e:	01 
   14000782f:	76 77                	jbe    1400078a8 <__mbrtowc_cp+0xb8>
   140007831:	84 c0                	test   al,al
   140007833:	0f 85 a7 00 00 00    	jne    1400078e0 <__mbrtowc_cp+0xf0>
   140007839:	4c 89 4c 24 78       	mov    QWORD PTR [rsp+0x78],r9
   14000783e:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [rsp+0x80]
   140007845:	4c 89 44 24 70       	mov    QWORD PTR [rsp+0x70],r8
   14000784a:	ff 15 ac 69 00 00    	call   QWORD PTR [rip+0x69ac]        # 14000e1fc <__imp_IsDBCSLeadByteEx>
   140007850:	85 c0                	test   eax,eax
   140007852:	74 54                	je     1400078a8 <__mbrtowc_cp+0xb8>
   140007854:	4c 8b 44 24 70       	mov    r8,QWORD PTR [rsp+0x70]
   140007859:	4c 8b 4c 24 78       	mov    r9,QWORD PTR [rsp+0x78]
   14000785e:	49 83 f8 01          	cmp    r8,0x1
   140007862:	0f 84 d6 00 00 00    	je     14000793e <__mbrtowc_cp+0x14e>
   140007868:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
   14000786d:	41 b9 02 00 00 00    	mov    r9d,0x2
   140007873:	49 89 d8             	mov    r8,rbx
   140007876:	c7 44 24 28 01 00 00 	mov    DWORD PTR [rsp+0x28],0x1
   14000787d:	00 
   14000787e:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [rsp+0x80]
   140007885:	ba 08 00 00 00       	mov    edx,0x8
   14000788a:	ff 15 7c 69 00 00    	call   QWORD PTR [rip+0x697c]        # 14000e20c <__imp_MultiByteToWideChar>
   140007890:	85 c0                	test   eax,eax
   140007892:	0f 84 94 00 00 00    	je     14000792c <__mbrtowc_cp+0x13c>
   140007898:	b8 02 00 00 00       	mov    eax,0x2
   14000789d:	48 83 c4 48          	add    rsp,0x48
   1400078a1:	5b                   	pop    rbx
   1400078a2:	5f                   	pop    rdi
   1400078a3:	c3                   	ret
   1400078a4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   1400078a8:	8b 84 24 80 00 00 00 	mov    eax,DWORD PTR [rsp+0x80]
   1400078af:	85 c0                	test   eax,eax
   1400078b1:	75 4d                	jne    140007900 <__mbrtowc_cp+0x110>
   1400078b3:	0f b6 03             	movzx  eax,BYTE PTR [rbx]
   1400078b6:	66 89 07             	mov    WORD PTR [rdi],ax
   1400078b9:	b8 01 00 00 00       	mov    eax,0x1
   1400078be:	48 83 c4 48          	add    rsp,0x48
   1400078c2:	5b                   	pop    rbx
   1400078c3:	5f                   	pop    rdi
   1400078c4:	c3                   	ret
   1400078c5:	0f 1f 00             	nop    DWORD PTR [rax]
   1400078c8:	31 d2                	xor    edx,edx
   1400078ca:	66 89 11             	mov    WORD PTR [rcx],dx
   1400078cd:	31 c0                	xor    eax,eax
   1400078cf:	48 83 c4 48          	add    rsp,0x48
   1400078d3:	5b                   	pop    rbx
   1400078d4:	5f                   	pop    rdi
   1400078d5:	c3                   	ret
   1400078d6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400078dd:	00 00 00 
   1400078e0:	88 54 24 3d          	mov    BYTE PTR [rsp+0x3d],dl
   1400078e4:	41 b9 02 00 00 00    	mov    r9d,0x2
   1400078ea:	4c 8d 44 24 3c       	lea    r8,[rsp+0x3c]
   1400078ef:	c7 44 24 28 01 00 00 	mov    DWORD PTR [rsp+0x28],0x1
   1400078f6:	00 
   1400078f7:	48 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],rcx
   1400078fc:	eb 80                	jmp    14000787e <__mbrtowc_cp+0x8e>
   1400078fe:	66 90                	xchg   ax,ax
   140007900:	c7 44 24 28 01 00 00 	mov    DWORD PTR [rsp+0x28],0x1
   140007907:	00 
   140007908:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [rsp+0x80]
   14000790f:	49 89 d8             	mov    r8,rbx
   140007912:	41 b9 01 00 00 00    	mov    r9d,0x1
   140007918:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
   14000791d:	ba 08 00 00 00       	mov    edx,0x8
   140007922:	ff 15 e4 68 00 00    	call   QWORD PTR [rip+0x68e4]        # 14000e20c <__imp_MultiByteToWideChar>
   140007928:	85 c0                	test   eax,eax
   14000792a:	75 8d                	jne    1400078b9 <__mbrtowc_cp+0xc9>
   14000792c:	e8 47 02 00 00       	call   140007b78 <_errno>
   140007931:	c7 00 2a 00 00 00    	mov    DWORD PTR [rax],0x2a
   140007937:	b8 ff ff ff ff       	mov    eax,0xffffffff
   14000793c:	eb 91                	jmp    1400078cf <__mbrtowc_cp+0xdf>
   14000793e:	0f b6 03             	movzx  eax,BYTE PTR [rbx]
   140007941:	41 88 01             	mov    BYTE PTR [r9],al
   140007944:	b8 fe ff ff ff       	mov    eax,0xfffffffe
   140007949:	eb 84                	jmp    1400078cf <__mbrtowc_cp+0xdf>
   14000794b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000140007950 <mbrtowc>:
   140007950:	41 54                	push   r12
   140007952:	55                   	push   rbp
   140007953:	57                   	push   rdi
   140007954:	56                   	push   rsi
   140007955:	53                   	push   rbx
   140007956:	48 83 ec 40          	sub    rsp,0x40
   14000795a:	31 c0                	xor    eax,eax
   14000795c:	48 89 cb             	mov    rbx,rcx
   14000795f:	48 85 c9             	test   rcx,rcx
   140007962:	66 89 44 24 3e       	mov    WORD PTR [rsp+0x3e],ax
   140007967:	48 8d 44 24 3e       	lea    rax,[rsp+0x3e]
   14000796c:	4c 89 ce             	mov    rsi,r9
   14000796f:	48 0f 44 d8          	cmove  rbx,rax
   140007973:	48 89 d7             	mov    rdi,rdx
   140007976:	4c 89 c5             	mov    rbp,r8
   140007979:	e8 c2 01 00 00       	call   140007b40 <___mb_cur_max_func>
   14000797e:	41 89 c4             	mov    r12d,eax
   140007981:	e8 b2 01 00 00       	call   140007b38 <___lc_codepage_func>
   140007986:	48 85 f6             	test   rsi,rsi
   140007989:	44 89 64 24 28       	mov    DWORD PTR [rsp+0x28],r12d
   14000798e:	49 89 e8             	mov    r8,rbp
   140007991:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
   140007995:	4c 8d 0d dc 61 00 00 	lea    r9,[rip+0x61dc]        # 14000db78 <internal_mbstate.2>
   14000799c:	48 89 fa             	mov    rdx,rdi
   14000799f:	48 89 d9             	mov    rcx,rbx
   1400079a2:	4c 0f 45 ce          	cmovne r9,rsi
   1400079a6:	e8 45 fe ff ff       	call   1400077f0 <__mbrtowc_cp>
   1400079ab:	48 98                	cdqe
   1400079ad:	48 83 c4 40          	add    rsp,0x40
   1400079b1:	5b                   	pop    rbx
   1400079b2:	5e                   	pop    rsi
   1400079b3:	5f                   	pop    rdi
   1400079b4:	5d                   	pop    rbp
   1400079b5:	41 5c                	pop    r12
   1400079b7:	c3                   	ret
   1400079b8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400079bf:	00 

00000001400079c0 <mbsrtowcs>:
   1400079c0:	41 56                	push   r14
   1400079c2:	41 55                	push   r13
   1400079c4:	41 54                	push   r12
   1400079c6:	55                   	push   rbp
   1400079c7:	57                   	push   rdi
   1400079c8:	56                   	push   rsi
   1400079c9:	53                   	push   rbx
   1400079ca:	48 83 ec 40          	sub    rsp,0x40
   1400079ce:	48 8d 05 9f 61 00 00 	lea    rax,[rip+0x619f]        # 14000db74 <internal_mbstate.1>
   1400079d5:	4c 89 ce             	mov    rsi,r9
   1400079d8:	4d 85 c9             	test   r9,r9
   1400079db:	49 89 ce             	mov    r14,rcx
   1400079de:	48 89 d3             	mov    rbx,rdx
   1400079e1:	48 0f 44 f0          	cmove  rsi,rax
   1400079e5:	4c 89 c7             	mov    rdi,r8
   1400079e8:	e8 4b 01 00 00       	call   140007b38 <___lc_codepage_func>
   1400079ed:	41 89 c4             	mov    r12d,eax
   1400079f0:	e8 4b 01 00 00       	call   140007b40 <___mb_cur_max_func>
   1400079f5:	89 c5                	mov    ebp,eax
   1400079f7:	48 85 db             	test   rbx,rbx
   1400079fa:	0f 84 c0 00 00 00    	je     140007ac0 <mbsrtowcs+0x100>
   140007a00:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   140007a03:	48 85 d2             	test   rdx,rdx
   140007a06:	0f 84 b4 00 00 00    	je     140007ac0 <mbsrtowcs+0x100>
   140007a0c:	4d 85 f6             	test   r14,r14
   140007a0f:	74 6f                	je     140007a80 <mbsrtowcs+0xc0>
   140007a11:	45 31 ed             	xor    r13d,r13d
   140007a14:	48 85 ff             	test   rdi,rdi
   140007a17:	75 1e                	jne    140007a37 <mbsrtowcs+0x77>
   140007a19:	eb 4a                	jmp    140007a65 <mbsrtowcs+0xa5>
   140007a1b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140007a20:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   140007a23:	48 98                	cdqe
   140007a25:	49 83 c6 02          	add    r14,0x2
   140007a29:	49 01 c5             	add    r13,rax
   140007a2c:	48 01 c2             	add    rdx,rax
   140007a2f:	48 89 13             	mov    QWORD PTR [rbx],rdx
   140007a32:	49 39 fd             	cmp    r13,rdi
   140007a35:	73 2e                	jae    140007a65 <mbsrtowcs+0xa5>
   140007a37:	89 6c 24 28          	mov    DWORD PTR [rsp+0x28],ebp
   140007a3b:	49 89 f8             	mov    r8,rdi
   140007a3e:	49 89 f1             	mov    r9,rsi
   140007a41:	4c 89 f1             	mov    rcx,r14
   140007a44:	44 89 64 24 20       	mov    DWORD PTR [rsp+0x20],r12d
   140007a49:	4d 29 e8             	sub    r8,r13
   140007a4c:	e8 9f fd ff ff       	call   1400077f0 <__mbrtowc_cp>
   140007a51:	85 c0                	test   eax,eax
   140007a53:	7f cb                	jg     140007a20 <mbsrtowcs+0x60>
   140007a55:	49 39 fd             	cmp    r13,rdi
   140007a58:	73 0b                	jae    140007a65 <mbsrtowcs+0xa5>
   140007a5a:	85 c0                	test   eax,eax
   140007a5c:	75 07                	jne    140007a65 <mbsrtowcs+0xa5>
   140007a5e:	48 c7 03 00 00 00 00 	mov    QWORD PTR [rbx],0x0
   140007a65:	4c 89 e8             	mov    rax,r13
   140007a68:	48 83 c4 40          	add    rsp,0x40
   140007a6c:	5b                   	pop    rbx
   140007a6d:	5e                   	pop    rsi
   140007a6e:	5f                   	pop    rdi
   140007a6f:	5d                   	pop    rbp
   140007a70:	41 5c                	pop    r12
   140007a72:	41 5d                	pop    r13
   140007a74:	41 5e                	pop    r14
   140007a76:	c3                   	ret
   140007a77:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140007a7e:	00 00 
   140007a80:	31 c0                	xor    eax,eax
   140007a82:	41 89 ee             	mov    r14d,ebp
   140007a85:	48 8d 7c 24 3e       	lea    rdi,[rsp+0x3e]
   140007a8a:	45 31 ed             	xor    r13d,r13d
   140007a8d:	66 89 44 24 3e       	mov    WORD PTR [rsp+0x3e],ax
   140007a92:	eb 0c                	jmp    140007aa0 <mbsrtowcs+0xe0>
   140007a94:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140007a98:	48 98                	cdqe
   140007a9a:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   140007a9d:	49 01 c5             	add    r13,rax
   140007aa0:	89 6c 24 28          	mov    DWORD PTR [rsp+0x28],ebp
   140007aa4:	4c 01 ea             	add    rdx,r13
   140007aa7:	49 89 f1             	mov    r9,rsi
   140007aaa:	4d 89 f0             	mov    r8,r14
   140007aad:	44 89 64 24 20       	mov    DWORD PTR [rsp+0x20],r12d
   140007ab2:	48 89 f9             	mov    rcx,rdi
   140007ab5:	e8 36 fd ff ff       	call   1400077f0 <__mbrtowc_cp>
   140007aba:	85 c0                	test   eax,eax
   140007abc:	7f da                	jg     140007a98 <mbsrtowcs+0xd8>
   140007abe:	eb a5                	jmp    140007a65 <mbsrtowcs+0xa5>
   140007ac0:	45 31 ed             	xor    r13d,r13d
   140007ac3:	eb a0                	jmp    140007a65 <mbsrtowcs+0xa5>
   140007ac5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140007acc:	00 00 00 00 

0000000140007ad0 <mbrlen>:
   140007ad0:	55                   	push   rbp
   140007ad1:	57                   	push   rdi
   140007ad2:	56                   	push   rsi
   140007ad3:	53                   	push   rbx
   140007ad4:	48 83 ec 48          	sub    rsp,0x48
   140007ad8:	31 c0                	xor    eax,eax
   140007ada:	48 89 ce             	mov    rsi,rcx
   140007add:	48 89 d7             	mov    rdi,rdx
   140007ae0:	4c 89 c3             	mov    rbx,r8
   140007ae3:	66 89 44 24 3e       	mov    WORD PTR [rsp+0x3e],ax
   140007ae8:	e8 53 00 00 00       	call   140007b40 <___mb_cur_max_func>
   140007aed:	89 c5                	mov    ebp,eax
   140007aef:	e8 44 00 00 00       	call   140007b38 <___lc_codepage_func>
   140007af4:	48 85 db             	test   rbx,rbx
   140007af7:	89 6c 24 28          	mov    DWORD PTR [rsp+0x28],ebp
   140007afb:	49 89 f8             	mov    r8,rdi
   140007afe:	48 8d 15 6b 60 00 00 	lea    rdx,[rip+0x606b]        # 14000db70 <s_mbstate.0>
   140007b05:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
   140007b09:	48 8d 4c 24 3e       	lea    rcx,[rsp+0x3e]
   140007b0e:	48 0f 44 da          	cmove  rbx,rdx
   140007b12:	48 89 f2             	mov    rdx,rsi
   140007b15:	49 89 d9             	mov    r9,rbx
   140007b18:	e8 d3 fc ff ff       	call   1400077f0 <__mbrtowc_cp>
   140007b1d:	48 98                	cdqe
   140007b1f:	48 83 c4 48          	add    rsp,0x48
   140007b23:	5b                   	pop    rbx
   140007b24:	5e                   	pop    rsi
   140007b25:	5f                   	pop    rdi
   140007b26:	5d                   	pop    rbp
   140007b27:	c3                   	ret
   140007b28:	90                   	nop
   140007b29:	90                   	nop
   140007b2a:	90                   	nop
   140007b2b:	90                   	nop
   140007b2c:	90                   	nop
   140007b2d:	90                   	nop
   140007b2e:	90                   	nop
   140007b2f:	90                   	nop

0000000140007b30 <__C_specific_handler>:
   140007b30:	ff 25 16 67 00 00    	jmp    QWORD PTR [rip+0x6716]        # 14000e24c <__imp___C_specific_handler>
   140007b36:	90                   	nop
   140007b37:	90                   	nop

0000000140007b38 <___lc_codepage_func>:
   140007b38:	ff 25 16 67 00 00    	jmp    QWORD PTR [rip+0x6716]        # 14000e254 <__imp____lc_codepage_func>
   140007b3e:	90                   	nop
   140007b3f:	90                   	nop

0000000140007b40 <___mb_cur_max_func>:
   140007b40:	ff 25 16 67 00 00    	jmp    QWORD PTR [rip+0x6716]        # 14000e25c <__imp____mb_cur_max_func>
   140007b46:	90                   	nop
   140007b47:	90                   	nop

0000000140007b48 <__getmainargs>:
   140007b48:	ff 25 16 67 00 00    	jmp    QWORD PTR [rip+0x6716]        # 14000e264 <__imp___getmainargs>
   140007b4e:	90                   	nop
   140007b4f:	90                   	nop

0000000140007b50 <__iob_func>:
   140007b50:	ff 25 1e 67 00 00    	jmp    QWORD PTR [rip+0x671e]        # 14000e274 <__imp___iob_func>
   140007b56:	90                   	nop
   140007b57:	90                   	nop

0000000140007b58 <__set_app_type>:
   140007b58:	ff 25 1e 67 00 00    	jmp    QWORD PTR [rip+0x671e]        # 14000e27c <__imp___set_app_type>
   140007b5e:	90                   	nop
   140007b5f:	90                   	nop

0000000140007b60 <__setusermatherr>:
   140007b60:	ff 25 1e 67 00 00    	jmp    QWORD PTR [rip+0x671e]        # 14000e284 <__imp___setusermatherr>
   140007b66:	90                   	nop
   140007b67:	90                   	nop

0000000140007b68 <_amsg_exit>:
   140007b68:	ff 25 26 67 00 00    	jmp    QWORD PTR [rip+0x6726]        # 14000e294 <__imp__amsg_exit>
   140007b6e:	90                   	nop
   140007b6f:	90                   	nop

0000000140007b70 <_cexit>:
   140007b70:	ff 25 26 67 00 00    	jmp    QWORD PTR [rip+0x6726]        # 14000e29c <__imp__cexit>
   140007b76:	90                   	nop
   140007b77:	90                   	nop

0000000140007b78 <_errno>:
   140007b78:	ff 25 2e 67 00 00    	jmp    QWORD PTR [rip+0x672e]        # 14000e2ac <__imp__errno>
   140007b7e:	90                   	nop
   140007b7f:	90                   	nop

0000000140007b80 <_initterm>:
   140007b80:	ff 25 36 67 00 00    	jmp    QWORD PTR [rip+0x6736]        # 14000e2bc <__imp__initterm>
   140007b86:	90                   	nop
   140007b87:	90                   	nop

0000000140007b88 <_lock>:
   140007b88:	ff 25 36 67 00 00    	jmp    QWORD PTR [rip+0x6736]        # 14000e2c4 <__imp__lock>
   140007b8e:	90                   	nop
   140007b8f:	90                   	nop

0000000140007b90 <_onexit>:
   140007b90:	ff 25 36 67 00 00    	jmp    QWORD PTR [rip+0x6736]        # 14000e2cc <__imp__onexit>
   140007b96:	90                   	nop
   140007b97:	90                   	nop

0000000140007b98 <_unlock>:
   140007b98:	ff 25 36 67 00 00    	jmp    QWORD PTR [rip+0x6736]        # 14000e2d4 <__imp__unlock>
   140007b9e:	90                   	nop
   140007b9f:	90                   	nop

0000000140007ba0 <abort>:
   140007ba0:	ff 25 36 67 00 00    	jmp    QWORD PTR [rip+0x6736]        # 14000e2dc <__imp_abort>
   140007ba6:	90                   	nop
   140007ba7:	90                   	nop

0000000140007ba8 <calloc>:
   140007ba8:	ff 25 36 67 00 00    	jmp    QWORD PTR [rip+0x6736]        # 14000e2e4 <__imp_calloc>
   140007bae:	90                   	nop
   140007baf:	90                   	nop

0000000140007bb0 <exit>:
   140007bb0:	ff 25 36 67 00 00    	jmp    QWORD PTR [rip+0x6736]        # 14000e2ec <__imp_exit>
   140007bb6:	90                   	nop
   140007bb7:	90                   	nop

0000000140007bb8 <fprintf>:
   140007bb8:	ff 25 36 67 00 00    	jmp    QWORD PTR [rip+0x6736]        # 14000e2f4 <__imp_fprintf>
   140007bbe:	90                   	nop
   140007bbf:	90                   	nop

0000000140007bc0 <fputc>:
   140007bc0:	ff 25 36 67 00 00    	jmp    QWORD PTR [rip+0x6736]        # 14000e2fc <__imp_fputc>
   140007bc6:	90                   	nop
   140007bc7:	90                   	nop

0000000140007bc8 <free>:
   140007bc8:	ff 25 36 67 00 00    	jmp    QWORD PTR [rip+0x6736]        # 14000e304 <__imp_free>
   140007bce:	90                   	nop
   140007bcf:	90                   	nop

0000000140007bd0 <fwrite>:
   140007bd0:	ff 25 36 67 00 00    	jmp    QWORD PTR [rip+0x6736]        # 14000e30c <__imp_fwrite>
   140007bd6:	90                   	nop
   140007bd7:	90                   	nop

0000000140007bd8 <localeconv>:
   140007bd8:	ff 25 36 67 00 00    	jmp    QWORD PTR [rip+0x6736]        # 14000e314 <__imp_localeconv>
   140007bde:	90                   	nop
   140007bdf:	90                   	nop

0000000140007be0 <malloc>:
   140007be0:	ff 25 36 67 00 00    	jmp    QWORD PTR [rip+0x6736]        # 14000e31c <__imp_malloc>
   140007be6:	90                   	nop
   140007be7:	90                   	nop

0000000140007be8 <memcpy>:
   140007be8:	ff 25 36 67 00 00    	jmp    QWORD PTR [rip+0x6736]        # 14000e324 <__imp_memcpy>
   140007bee:	90                   	nop
   140007bef:	90                   	nop

0000000140007bf0 <memset>:
   140007bf0:	ff 25 36 67 00 00    	jmp    QWORD PTR [rip+0x6736]        # 14000e32c <__imp_memset>
   140007bf6:	90                   	nop
   140007bf7:	90                   	nop

0000000140007bf8 <signal>:
   140007bf8:	ff 25 36 67 00 00    	jmp    QWORD PTR [rip+0x6736]        # 14000e334 <__imp_signal>
   140007bfe:	90                   	nop
   140007bff:	90                   	nop

0000000140007c00 <strerror>:
   140007c00:	ff 25 36 67 00 00    	jmp    QWORD PTR [rip+0x6736]        # 14000e33c <__imp_strerror>
   140007c06:	90                   	nop
   140007c07:	90                   	nop

0000000140007c08 <strlen>:
   140007c08:	ff 25 36 67 00 00    	jmp    QWORD PTR [rip+0x6736]        # 14000e344 <__imp_strlen>
   140007c0e:	90                   	nop
   140007c0f:	90                   	nop

0000000140007c10 <strncmp>:
   140007c10:	ff 25 36 67 00 00    	jmp    QWORD PTR [rip+0x6736]        # 14000e34c <__imp_strncmp>
   140007c16:	90                   	nop
   140007c17:	90                   	nop

0000000140007c18 <vfprintf>:
   140007c18:	ff 25 36 67 00 00    	jmp    QWORD PTR [rip+0x6736]        # 14000e354 <__imp_vfprintf>
   140007c1e:	90                   	nop
   140007c1f:	90                   	nop

0000000140007c20 <wcslen>:
   140007c20:	ff 25 36 67 00 00    	jmp    QWORD PTR [rip+0x6736]        # 14000e35c <__imp_wcslen>
   140007c26:	90                   	nop
   140007c27:	90                   	nop
   140007c28:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140007c2f:	00 

0000000140007c30 <WideCharToMultiByte>:
   140007c30:	ff 25 06 66 00 00    	jmp    QWORD PTR [rip+0x6606]        # 14000e23c <__imp_WideCharToMultiByte>
   140007c36:	90                   	nop
   140007c37:	90                   	nop

0000000140007c38 <VirtualQuery>:
   140007c38:	ff 25 f6 65 00 00    	jmp    QWORD PTR [rip+0x65f6]        # 14000e234 <__imp_VirtualQuery>
   140007c3e:	90                   	nop
   140007c3f:	90                   	nop

0000000140007c40 <VirtualProtect>:
   140007c40:	ff 25 e6 65 00 00    	jmp    QWORD PTR [rip+0x65e6]        # 14000e22c <__imp_VirtualProtect>
   140007c46:	90                   	nop
   140007c47:	90                   	nop

0000000140007c48 <TlsGetValue>:
   140007c48:	ff 25 d6 65 00 00    	jmp    QWORD PTR [rip+0x65d6]        # 14000e224 <__imp_TlsGetValue>
   140007c4e:	90                   	nop
   140007c4f:	90                   	nop

0000000140007c50 <Sleep>:
   140007c50:	ff 25 c6 65 00 00    	jmp    QWORD PTR [rip+0x65c6]        # 14000e21c <__imp_Sleep>
   140007c56:	90                   	nop
   140007c57:	90                   	nop

0000000140007c58 <SetUnhandledExceptionFilter>:
   140007c58:	ff 25 b6 65 00 00    	jmp    QWORD PTR [rip+0x65b6]        # 14000e214 <__imp_SetUnhandledExceptionFilter>
   140007c5e:	90                   	nop
   140007c5f:	90                   	nop

0000000140007c60 <MultiByteToWideChar>:
   140007c60:	ff 25 a6 65 00 00    	jmp    QWORD PTR [rip+0x65a6]        # 14000e20c <__imp_MultiByteToWideChar>
   140007c66:	90                   	nop
   140007c67:	90                   	nop

0000000140007c68 <LeaveCriticalSection>:
   140007c68:	ff 25 96 65 00 00    	jmp    QWORD PTR [rip+0x6596]        # 14000e204 <__imp_LeaveCriticalSection>
   140007c6e:	90                   	nop
   140007c6f:	90                   	nop

0000000140007c70 <IsDBCSLeadByteEx>:
   140007c70:	ff 25 86 65 00 00    	jmp    QWORD PTR [rip+0x6586]        # 14000e1fc <__imp_IsDBCSLeadByteEx>
   140007c76:	90                   	nop
   140007c77:	90                   	nop

0000000140007c78 <InitializeCriticalSection>:
   140007c78:	ff 25 76 65 00 00    	jmp    QWORD PTR [rip+0x6576]        # 14000e1f4 <__imp_InitializeCriticalSection>
   140007c7e:	90                   	nop
   140007c7f:	90                   	nop

0000000140007c80 <GetStartupInfoA>:
   140007c80:	ff 25 66 65 00 00    	jmp    QWORD PTR [rip+0x6566]        # 14000e1ec <__imp_GetStartupInfoA>
   140007c86:	90                   	nop
   140007c87:	90                   	nop

0000000140007c88 <GetLastError>:
   140007c88:	ff 25 56 65 00 00    	jmp    QWORD PTR [rip+0x6556]        # 14000e1e4 <__imp_GetLastError>
   140007c8e:	90                   	nop
   140007c8f:	90                   	nop

0000000140007c90 <EnterCriticalSection>:
   140007c90:	ff 25 46 65 00 00    	jmp    QWORD PTR [rip+0x6546]        # 14000e1dc <__imp_EnterCriticalSection>
   140007c96:	90                   	nop
   140007c97:	90                   	nop

0000000140007c98 <DeleteCriticalSection>:
   140007c98:	ff 25 36 65 00 00    	jmp    QWORD PTR [rip+0x6536]        # 14000e1d4 <__IAT_start__>
   140007c9e:	90                   	nop
   140007c9f:	90                   	nop

0000000140007ca0 <register_frame_ctor>:
   140007ca0:	e9 6b 98 ff ff       	jmp    140001510 <__gcc_register_frame>
   140007ca5:	90                   	nop
   140007ca6:	90                   	nop
   140007ca7:	90                   	nop
   140007ca8:	90                   	nop
   140007ca9:	90                   	nop
   140007caa:	90                   	nop
   140007cab:	90                   	nop
   140007cac:	90                   	nop
   140007cad:	90                   	nop
   140007cae:	90                   	nop
   140007caf:	90                   	nop

0000000140007cb0 <__CTOR_LIST__>:
   140007cb0:	ff                   	(bad)
   140007cb1:	ff                   	(bad)
   140007cb2:	ff                   	(bad)
   140007cb3:	ff                   	(bad)
   140007cb4:	ff                   	(bad)
   140007cb5:	ff                   	(bad)
   140007cb6:	ff                   	(bad)
   140007cb7:	ff                   	.byte 0xff

0000000140007cb8 <.ctors.65535>:
   140007cb8:	a0 7c 00 40 01 00 00 	movabs al,ds:0x140007c
   140007cbf:	00 00 
   140007cc1:	00 00                	add    BYTE PTR [rax],al
   140007cc3:	00 00                	add    BYTE PTR [rax],al
   140007cc5:	00 00                	add    BYTE PTR [rax],al
	...

0000000140007cc8 <__DTOR_LIST__>:
   140007cc8:	ff                   	(bad)
   140007cc9:	ff                   	(bad)
   140007cca:	ff                   	(bad)
   140007ccb:	ff                   	(bad)
   140007ccc:	ff                   	(bad)
   140007ccd:	ff                   	(bad)
   140007cce:	ff                   	(bad)
   140007ccf:	ff 00                	inc    DWORD PTR [rax]
   140007cd1:	00 00                	add    BYTE PTR [rax],al
   140007cd3:	00 00                	add    BYTE PTR [rax],al
   140007cd5:	00 00                	add    BYTE PTR [rax],al
	...
