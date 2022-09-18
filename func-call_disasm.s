
func-call.exe:     file format pei-x86-64


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
   140001072:	e8 f1 6a 00 00       	call   140007b68 <__set_app_type>
   140001077:	e8 74 64 00 00       	call   1400074f0 <__p__fmode>
   14000107c:	48 8b 15 ed 87 00 00 	mov    rdx,QWORD PTR [rip+0x87ed]        # 140009870 <.refptr._fmode>
   140001083:	8b 12                	mov    edx,DWORD PTR [rdx]
   140001085:	89 10                	mov    DWORD PTR [rax],edx
   140001087:	e8 74 64 00 00       	call   140007500 <__p__commode>
   14000108c:	48 8b 15 bd 87 00 00 	mov    rdx,QWORD PTR [rip+0x87bd]        # 140009850 <.refptr._commode>
   140001093:	8b 12                	mov    edx,DWORD PTR [rdx]
   140001095:	89 10                	mov    DWORD PTR [rax],edx
   140001097:	e8 04 06 00 00       	call   1400016a0 <_setargv>
   14000109c:	48 8b 05 4d 86 00 00 	mov    rax,QWORD PTR [rip+0x864d]        # 1400096f0 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmp    DWORD PTR [rax],0x1
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    eax,eax
   1400010aa:	48 83 c4 28          	add    rsp,0x28
   1400010ae:	c3                   	ret
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    ecx,0x1
   1400010b5:	e8 ae 6a 00 00       	call   140007b68 <__set_app_type>
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
   1400010ff:	e8 0c 0d 00 00       	call   140001e10 <__mingw_setusermatherr>
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
   14000116e:	e8 e5 69 00 00       	call   140007b58 <__getmainargs>
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
   14000124c:	e8 1f 08 00 00       	call   140001a70 <_pei386_runtime_relocator>
   140001251:	48 8b 0d 28 86 00 00 	mov    rcx,QWORD PTR [rip+0x8628]        # 140009880 <.refptr._gnu_exception_handler>
   140001258:	ff 15 b6 cf 00 00    	call   QWORD PTR [rip+0xcfb6]        # 14000e214 <__imp_SetUnhandledExceptionFilter>
   14000125e:	48 8b 15 6b 85 00 00 	mov    rdx,QWORD PTR [rip+0x856b]        # 1400097d0 <.refptr.__mingw_oldexcpt_handler>
   140001265:	48 8d 0d 94 fd ff ff 	lea    rcx,[rip+0xfffffffffffffd94]        # 140001000 <__mingw_invalidParameterHandler>
   14000126c:	48 89 02             	mov    QWORD PTR [rdx],rax
   14000126f:	e8 8c 63 00 00       	call   140007600 <_set_invalid_parameter_handler>
   140001274:	e8 07 06 00 00       	call   140001880 <_fpreset>
   140001279:	48 8b 05 c0 84 00 00 	mov    rax,QWORD PTR [rip+0x84c0]        # 140009740 <.refptr.__image_base__>
   140001280:	48 89 05 89 bd 00 00 	mov    QWORD PTR [rip+0xbd89],rax        # 14000d010 <__mingw_winmain_hInstance>
   140001287:	e8 84 62 00 00       	call   140007510 <__p__acmdln>
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
   140001322:	e8 c9 68 00 00       	call   140007bf0 <malloc>
   140001327:	48 8b 3d 02 bd 00 00 	mov    rdi,QWORD PTR [rip+0xbd02]        # 14000d030 <argv>
   14000132e:	48 89 c5             	mov    rbp,rax
   140001331:	85 db                	test   ebx,ebx
   140001333:	0f 8e 65 01 00 00    	jle    14000149e <__tmainCRTStartup+0x31e>
   140001339:	49 83 ec 08          	sub    r12,0x8
   14000133d:	31 db                	xor    ebx,ebx
   14000133f:	90                   	nop
   140001340:	48 8b 0c 1f          	mov    rcx,QWORD PTR [rdi+rbx*1]
   140001344:	e8 cf 68 00 00       	call   140007c18 <strlen>
   140001349:	48 8d 70 01          	lea    rsi,[rax+0x1]
   14000134d:	48 89 f1             	mov    rcx,rsi
   140001350:	e8 9b 68 00 00       	call   140007bf0 <malloc>
   140001355:	49 89 f0             	mov    r8,rsi
   140001358:	48 89 44 1d 00       	mov    QWORD PTR [rbp+rbx*1+0x0],rax
   14000135d:	48 8b 14 1f          	mov    rdx,QWORD PTR [rdi+rbx*1]
   140001361:	48 89 c1             	mov    rcx,rax
   140001364:	48 83 c3 08          	add    rbx,0x8
   140001368:	e8 8b 68 00 00       	call   140007bf8 <memcpy>
   14000136d:	4c 39 e3             	cmp    rbx,r12
   140001370:	75 ce                	jne    140001340 <__tmainCRTStartup+0x1c0>
   140001372:	48 01 eb             	add    rbx,rbp
   140001375:	48 c7 03 00 00 00 00 	mov    QWORD PTR [rbx],0x0
   14000137c:	48 89 2d ad bc 00 00 	mov    QWORD PTR [rip+0xbcad],rbp        # 14000d030 <argv>
   140001383:	e8 f8 02 00 00       	call   140001680 <__main>
   140001388:	48 8b 05 c1 83 00 00 	mov    rax,QWORD PTR [rip+0x83c1]        # 140009750 <.refptr.__imp___initenv>
   14000138f:	4c 8b 05 92 bc 00 00 	mov    r8,QWORD PTR [rip+0xbc92]        # 14000d028 <envp>
   140001396:	8b 0d 9c bc 00 00    	mov    ecx,DWORD PTR [rip+0xbc9c]        # 14000d038 <argc>
   14000139c:	48 8b 00             	mov    rax,QWORD PTR [rax]
   14000139f:	4c 89 00             	mov    QWORD PTR [rax],r8
   1400013a2:	48 8b 15 87 bc 00 00 	mov    rdx,QWORD PTR [rip+0xbc87]        # 14000d030 <argv>
   1400013a9:	e8 00 02 00 00       	call   1400015ae <main>
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
   14000140c:	e8 67 67 00 00       	call   140007b78 <_amsg_exit>
   140001411:	8b 06                	mov    eax,DWORD PTR [rsi]
   140001413:	83 f8 01             	cmp    eax,0x1
   140001416:	0f 85 0d fe ff ff    	jne    140001229 <__tmainCRTStartup+0xa9>
   14000141c:	48 8b 15 fd 83 00 00 	mov    rdx,QWORD PTR [rip+0x83fd]        # 140009820 <.refptr.__xc_z>
   140001423:	48 8b 0d e6 83 00 00 	mov    rcx,QWORD PTR [rip+0x83e6]        # 140009810 <.refptr.__xc_a>
   14000142a:	e8 61 67 00 00       	call   140007b90 <_initterm>
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
   140001460:	e8 1b 67 00 00       	call   140007b80 <_cexit>
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
   140001494:	e8 f7 66 00 00       	call   140007b90 <_initterm>
   140001499:	e9 80 fd ff ff       	jmp    14000121e <__tmainCRTStartup+0x9e>
   14000149e:	48 89 c3             	mov    rbx,rax
   1400014a1:	e9 cf fe ff ff       	jmp    140001375 <__tmainCRTStartup+0x1f5>
   1400014a6:	89 c1                	mov    ecx,eax
   1400014a8:	e8 13 67 00 00       	call   140007bc0 <exit>
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
   1400014f4:	e8 a7 66 00 00       	call   140007ba0 <_onexit>
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
   140001572:	e8 f9 10 00 00       	call   140002670 <__mingw_vfprintf>
   140001577:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
   14000157a:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   14000157d:	48 83 c4 38          	add    rsp,0x38
   140001581:	5b                   	pop    rbx
   140001582:	5d                   	pop    rbp
   140001583:	c3                   	ret

0000000140001584 <otherfunc>:
   140001584:	55                   	push   rbp
   140001585:	48 89 e5             	mov    rbp,rsp
   140001588:	48 83 ec 20          	sub    rsp,0x20
   14000158c:	89 4d 10             	mov    DWORD PTR [rbp+0x10],ecx
   14000158f:	8b 45 10             	mov    eax,DWORD PTR [rbp+0x10]
   140001592:	89 c2                	mov    edx,eax
   140001594:	48 8d 05 65 7a 00 00 	lea    rax,[rip+0x7a65]        # 140009000 <.rdata>
   14000159b:	48 89 c1             	mov    rcx,rax
   14000159e:	e8 8d ff ff ff       	call   140001530 <printf>
   1400015a3:	b8 00 00 00 00       	mov    eax,0x0
   1400015a8:	48 83 c4 20          	add    rsp,0x20
   1400015ac:	5d                   	pop    rbp
   1400015ad:	c3                   	ret

00000001400015ae <main>:
   1400015ae:	55                   	push   rbp
   1400015af:	48 89 e5             	mov    rbp,rsp
   1400015b2:	48 83 ec 20          	sub    rsp,0x20
   1400015b6:	e8 c5 00 00 00       	call   140001680 <__main>
   1400015bb:	b9 01 00 00 00       	mov    ecx,0x1
   1400015c0:	e8 bf ff ff ff       	call   140001584 <otherfunc>
   1400015c5:	b8 00 00 00 00       	mov    eax,0x0
   1400015ca:	48 83 c4 20          	add    rsp,0x20
   1400015ce:	5d                   	pop    rbp
   1400015cf:	c3                   	ret

00000001400015d0 <__do_global_dtors>:
   1400015d0:	48 83 ec 28          	sub    rsp,0x28
   1400015d4:	48 8b 05 35 6a 00 00 	mov    rax,QWORD PTR [rip+0x6a35]        # 140008010 <p.0>
   1400015db:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400015de:	48 85 c0             	test   rax,rax
   1400015e1:	74 22                	je     140001605 <__do_global_dtors+0x35>
   1400015e3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400015e8:	ff d0                	call   rax
   1400015ea:	48 8b 05 1f 6a 00 00 	mov    rax,QWORD PTR [rip+0x6a1f]        # 140008010 <p.0>
   1400015f1:	48 8d 50 08          	lea    rdx,[rax+0x8]
   1400015f5:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
   1400015f9:	48 89 15 10 6a 00 00 	mov    QWORD PTR [rip+0x6a10],rdx        # 140008010 <p.0>
   140001600:	48 85 c0             	test   rax,rax
   140001603:	75 e3                	jne    1400015e8 <__do_global_dtors+0x18>
   140001605:	48 83 c4 28          	add    rsp,0x28
   140001609:	c3                   	ret
   14000160a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000140001610 <__do_global_ctors>:
   140001610:	56                   	push   rsi
   140001611:	53                   	push   rbx
   140001612:	48 83 ec 28          	sub    rsp,0x28
   140001616:	48 8b 15 e3 80 00 00 	mov    rdx,QWORD PTR [rip+0x80e3]        # 140009700 <.refptr.__CTOR_LIST__>
   14000161d:	48 8b 02             	mov    rax,QWORD PTR [rdx]
   140001620:	89 c1                	mov    ecx,eax
   140001622:	83 f8 ff             	cmp    eax,0xffffffff
   140001625:	74 39                	je     140001660 <__do_global_ctors+0x50>
   140001627:	85 c9                	test   ecx,ecx
   140001629:	74 20                	je     14000164b <__do_global_ctors+0x3b>
   14000162b:	89 c8                	mov    eax,ecx
   14000162d:	83 e9 01             	sub    ecx,0x1
   140001630:	48 8d 1c c2          	lea    rbx,[rdx+rax*8]
   140001634:	48 29 c8             	sub    rax,rcx
   140001637:	48 8d 74 c2 f8       	lea    rsi,[rdx+rax*8-0x8]
   14000163c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001640:	ff 13                	call   QWORD PTR [rbx]
   140001642:	48 83 eb 08          	sub    rbx,0x8
   140001646:	48 39 f3             	cmp    rbx,rsi
   140001649:	75 f5                	jne    140001640 <__do_global_ctors+0x30>
   14000164b:	48 8d 0d 7e ff ff ff 	lea    rcx,[rip+0xffffffffffffff7e]        # 1400015d0 <__do_global_dtors>
   140001652:	48 83 c4 28          	add    rsp,0x28
   140001656:	5b                   	pop    rbx
   140001657:	5e                   	pop    rsi
   140001658:	e9 93 fe ff ff       	jmp    1400014f0 <atexit>
   14000165d:	0f 1f 00             	nop    DWORD PTR [rax]
   140001660:	31 c0                	xor    eax,eax
   140001662:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140001668:	44 8d 40 01          	lea    r8d,[rax+0x1]
   14000166c:	89 c1                	mov    ecx,eax
   14000166e:	4a 83 3c c2 00       	cmp    QWORD PTR [rdx+r8*8],0x0
   140001673:	4c 89 c0             	mov    rax,r8
   140001676:	75 f0                	jne    140001668 <__do_global_ctors+0x58>
   140001678:	eb ad                	jmp    140001627 <__do_global_ctors+0x17>
   14000167a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000140001680 <__main>:
   140001680:	8b 05 ba b9 00 00    	mov    eax,DWORD PTR [rip+0xb9ba]        # 14000d040 <initialized>
   140001686:	85 c0                	test   eax,eax
   140001688:	74 06                	je     140001690 <__main+0x10>
   14000168a:	c3                   	ret
   14000168b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140001690:	c7 05 a6 b9 00 00 01 	mov    DWORD PTR [rip+0xb9a6],0x1        # 14000d040 <initialized>
   140001697:	00 00 00 
   14000169a:	e9 71 ff ff ff       	jmp    140001610 <__do_global_ctors>
   14000169f:	90                   	nop

00000001400016a0 <_setargv>:
   1400016a0:	31 c0                	xor    eax,eax
   1400016a2:	c3                   	ret
   1400016a3:	90                   	nop
   1400016a4:	90                   	nop
   1400016a5:	90                   	nop
   1400016a6:	90                   	nop
   1400016a7:	90                   	nop
   1400016a8:	90                   	nop
   1400016a9:	90                   	nop
   1400016aa:	90                   	nop
   1400016ab:	90                   	nop
   1400016ac:	90                   	nop
   1400016ad:	90                   	nop
   1400016ae:	90                   	nop
   1400016af:	90                   	nop

00000001400016b0 <__dyn_tls_dtor>:
   1400016b0:	48 83 ec 28          	sub    rsp,0x28
   1400016b4:	83 fa 03             	cmp    edx,0x3
   1400016b7:	74 17                	je     1400016d0 <__dyn_tls_dtor+0x20>
   1400016b9:	85 d2                	test   edx,edx
   1400016bb:	74 13                	je     1400016d0 <__dyn_tls_dtor+0x20>
   1400016bd:	b8 01 00 00 00       	mov    eax,0x1
   1400016c2:	48 83 c4 28          	add    rsp,0x28
   1400016c6:	c3                   	ret
   1400016c7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   1400016ce:	00 00 
   1400016d0:	e8 5b 0a 00 00       	call   140002130 <__mingw_TLScallback>
   1400016d5:	b8 01 00 00 00       	mov    eax,0x1
   1400016da:	48 83 c4 28          	add    rsp,0x28
   1400016de:	c3                   	ret
   1400016df:	90                   	nop

00000001400016e0 <__dyn_tls_init>:
   1400016e0:	56                   	push   rsi
   1400016e1:	53                   	push   rbx
   1400016e2:	48 83 ec 28          	sub    rsp,0x28
   1400016e6:	48 8b 05 f3 7f 00 00 	mov    rax,QWORD PTR [rip+0x7ff3]        # 1400096e0 <.refptr._CRT_MT>
   1400016ed:	83 38 02             	cmp    DWORD PTR [rax],0x2
   1400016f0:	74 06                	je     1400016f8 <__dyn_tls_init+0x18>
   1400016f2:	c7 00 02 00 00 00    	mov    DWORD PTR [rax],0x2
   1400016f8:	83 fa 02             	cmp    edx,0x2
   1400016fb:	74 13                	je     140001710 <__dyn_tls_init+0x30>
   1400016fd:	83 fa 01             	cmp    edx,0x1
   140001700:	74 4e                	je     140001750 <__dyn_tls_init+0x70>
   140001702:	b8 01 00 00 00       	mov    eax,0x1
   140001707:	48 83 c4 28          	add    rsp,0x28
   14000170b:	5b                   	pop    rbx
   14000170c:	5e                   	pop    rsi
   14000170d:	c3                   	ret
   14000170e:	66 90                	xchg   ax,ax
   140001710:	48 8d 1d 41 d9 00 00 	lea    rbx,[rip+0xd941]        # 14000f058 <__xd_z>
   140001717:	48 8d 35 3a d9 00 00 	lea    rsi,[rip+0xd93a]        # 14000f058 <__xd_z>
   14000171e:	48 39 de             	cmp    rsi,rbx
   140001721:	74 df                	je     140001702 <__dyn_tls_init+0x22>
   140001723:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140001728:	48 8b 03             	mov    rax,QWORD PTR [rbx]
   14000172b:	48 85 c0             	test   rax,rax
   14000172e:	74 02                	je     140001732 <__dyn_tls_init+0x52>
   140001730:	ff d0                	call   rax
   140001732:	48 83 c3 08          	add    rbx,0x8
   140001736:	48 39 de             	cmp    rsi,rbx
   140001739:	75 ed                	jne    140001728 <__dyn_tls_init+0x48>
   14000173b:	b8 01 00 00 00       	mov    eax,0x1
   140001740:	48 83 c4 28          	add    rsp,0x28
   140001744:	5b                   	pop    rbx
   140001745:	5e                   	pop    rsi
   140001746:	c3                   	ret
   140001747:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000174e:	00 00 
   140001750:	e8 db 09 00 00       	call   140002130 <__mingw_TLScallback>
   140001755:	b8 01 00 00 00       	mov    eax,0x1
   14000175a:	48 83 c4 28          	add    rsp,0x28
   14000175e:	5b                   	pop    rbx
   14000175f:	5e                   	pop    rsi
   140001760:	c3                   	ret
   140001761:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140001768:	00 00 00 00 
   14000176c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000140001770 <__tlregdtor>:
   140001770:	31 c0                	xor    eax,eax
   140001772:	c3                   	ret
   140001773:	90                   	nop
   140001774:	90                   	nop
   140001775:	90                   	nop
   140001776:	90                   	nop
   140001777:	90                   	nop
   140001778:	90                   	nop
   140001779:	90                   	nop
   14000177a:	90                   	nop
   14000177b:	90                   	nop
   14000177c:	90                   	nop
   14000177d:	90                   	nop
   14000177e:	90                   	nop
   14000177f:	90                   	nop

0000000140001780 <_matherr>:
   140001780:	56                   	push   rsi
   140001781:	53                   	push   rbx
   140001782:	48 83 ec 78          	sub    rsp,0x78
   140001786:	0f 11 74 24 40       	movups XMMWORD PTR [rsp+0x40],xmm6
   14000178b:	0f 11 7c 24 50       	movups XMMWORD PTR [rsp+0x50],xmm7
   140001790:	44 0f 11 44 24 60    	movups XMMWORD PTR [rsp+0x60],xmm8
   140001796:	83 39 06             	cmp    DWORD PTR [rcx],0x6
   140001799:	0f 87 cd 00 00 00    	ja     14000186c <_matherr+0xec>
   14000179f:	8b 01                	mov    eax,DWORD PTR [rcx]
   1400017a1:	48 8d 15 fc 79 00 00 	lea    rdx,[rip+0x79fc]        # 1400091a4 <.rdata+0x124>
   1400017a8:	48 63 04 82          	movsxd rax,DWORD PTR [rdx+rax*4]
   1400017ac:	48 01 d0             	add    rax,rdx
   1400017af:	ff e0                	jmp    rax
   1400017b1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400017b8:	48 8d 1d e0 78 00 00 	lea    rbx,[rip+0x78e0]        # 14000909f <.rdata+0x1f>
   1400017bf:	f2 44 0f 10 41 20    	movsd  xmm8,QWORD PTR [rcx+0x20]
   1400017c5:	f2 0f 10 79 18       	movsd  xmm7,QWORD PTR [rcx+0x18]
   1400017ca:	f2 0f 10 71 10       	movsd  xmm6,QWORD PTR [rcx+0x10]
   1400017cf:	48 8b 71 08          	mov    rsi,QWORD PTR [rcx+0x8]
   1400017d3:	b9 02 00 00 00       	mov    ecx,0x2
   1400017d8:	e8 33 5e 00 00       	call   140007610 <__acrt_iob_func>
   1400017dd:	f2 44 0f 11 44 24 30 	movsd  QWORD PTR [rsp+0x30],xmm8
   1400017e4:	49 89 d8             	mov    r8,rbx
   1400017e7:	48 8d 15 8a 79 00 00 	lea    rdx,[rip+0x798a]        # 140009178 <.rdata+0xf8>
   1400017ee:	f2 0f 11 7c 24 28    	movsd  QWORD PTR [rsp+0x28],xmm7
   1400017f4:	48 89 c1             	mov    rcx,rax
   1400017f7:	49 89 f1             	mov    r9,rsi
   1400017fa:	f2 0f 11 74 24 20    	movsd  QWORD PTR [rsp+0x20],xmm6
   140001800:	e8 c3 63 00 00       	call   140007bc8 <fprintf>
   140001805:	90                   	nop
   140001806:	0f 10 74 24 40       	movups xmm6,XMMWORD PTR [rsp+0x40]
   14000180b:	0f 10 7c 24 50       	movups xmm7,XMMWORD PTR [rsp+0x50]
   140001810:	31 c0                	xor    eax,eax
   140001812:	44 0f 10 44 24 60    	movups xmm8,XMMWORD PTR [rsp+0x60]
   140001818:	48 83 c4 78          	add    rsp,0x78
   14000181c:	5b                   	pop    rbx
   14000181d:	5e                   	pop    rsi
   14000181e:	c3                   	ret
   14000181f:	90                   	nop
   140001820:	48 8d 1d 59 78 00 00 	lea    rbx,[rip+0x7859]        # 140009080 <.rdata>
   140001827:	eb 96                	jmp    1400017bf <_matherr+0x3f>
   140001829:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140001830:	48 8d 1d a9 78 00 00 	lea    rbx,[rip+0x78a9]        # 1400090e0 <.rdata+0x60>
   140001837:	eb 86                	jmp    1400017bf <_matherr+0x3f>
   140001839:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140001840:	48 8d 1d 79 78 00 00 	lea    rbx,[rip+0x7879]        # 1400090c0 <.rdata+0x40>
   140001847:	e9 73 ff ff ff       	jmp    1400017bf <_matherr+0x3f>
   14000184c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001850:	48 8d 1d d9 78 00 00 	lea    rbx,[rip+0x78d9]        # 140009130 <.rdata+0xb0>
   140001857:	e9 63 ff ff ff       	jmp    1400017bf <_matherr+0x3f>
   14000185c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001860:	48 8d 1d a1 78 00 00 	lea    rbx,[rip+0x78a1]        # 140009108 <.rdata+0x88>
   140001867:	e9 53 ff ff ff       	jmp    1400017bf <_matherr+0x3f>
   14000186c:	48 8d 1d f3 78 00 00 	lea    rbx,[rip+0x78f3]        # 140009166 <.rdata+0xe6>
   140001873:	e9 47 ff ff ff       	jmp    1400017bf <_matherr+0x3f>
   140001878:	90                   	nop
   140001879:	90                   	nop
   14000187a:	90                   	nop
   14000187b:	90                   	nop
   14000187c:	90                   	nop
   14000187d:	90                   	nop
   14000187e:	90                   	nop
   14000187f:	90                   	nop

0000000140001880 <_fpreset>:
   140001880:	db e3                	fninit
   140001882:	c3                   	ret
   140001883:	90                   	nop
   140001884:	90                   	nop
   140001885:	90                   	nop
   140001886:	90                   	nop
   140001887:	90                   	nop
   140001888:	90                   	nop
   140001889:	90                   	nop
   14000188a:	90                   	nop
   14000188b:	90                   	nop
   14000188c:	90                   	nop
   14000188d:	90                   	nop
   14000188e:	90                   	nop
   14000188f:	90                   	nop

0000000140001890 <__report_error>:
   140001890:	56                   	push   rsi
   140001891:	53                   	push   rbx
   140001892:	48 83 ec 38          	sub    rsp,0x38
   140001896:	48 89 cb             	mov    rbx,rcx
   140001899:	48 8d 44 24 58       	lea    rax,[rsp+0x58]
   14000189e:	b9 02 00 00 00       	mov    ecx,0x2
   1400018a3:	48 89 54 24 58       	mov    QWORD PTR [rsp+0x58],rdx
   1400018a8:	4c 89 44 24 60       	mov    QWORD PTR [rsp+0x60],r8
   1400018ad:	4c 89 4c 24 68       	mov    QWORD PTR [rsp+0x68],r9
   1400018b2:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
   1400018b7:	e8 54 5d 00 00       	call   140007610 <__acrt_iob_func>
   1400018bc:	41 b8 1b 00 00 00    	mov    r8d,0x1b
   1400018c2:	ba 01 00 00 00       	mov    edx,0x1
   1400018c7:	48 8d 0d f2 78 00 00 	lea    rcx,[rip+0x78f2]        # 1400091c0 <.rdata>
   1400018ce:	49 89 c1             	mov    r9,rax
   1400018d1:	e8 0a 63 00 00       	call   140007be0 <fwrite>
   1400018d6:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
   1400018db:	b9 02 00 00 00       	mov    ecx,0x2
   1400018e0:	e8 2b 5d 00 00       	call   140007610 <__acrt_iob_func>
   1400018e5:	48 89 da             	mov    rdx,rbx
   1400018e8:	48 89 c1             	mov    rcx,rax
   1400018eb:	49 89 f0             	mov    r8,rsi
   1400018ee:	e8 35 63 00 00       	call   140007c28 <vfprintf>
   1400018f3:	e8 b8 62 00 00       	call   140007bb0 <abort>
   1400018f8:	90                   	nop
   1400018f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000140001900 <mark_section_writable>:
   140001900:	57                   	push   rdi
   140001901:	56                   	push   rsi
   140001902:	53                   	push   rbx
   140001903:	48 83 ec 50          	sub    rsp,0x50
   140001907:	48 63 35 96 b7 00 00 	movsxd rsi,DWORD PTR [rip+0xb796]        # 14000d0a4 <maxSections>
   14000190e:	48 89 cb             	mov    rbx,rcx
   140001911:	85 f6                	test   esi,esi
   140001913:	0f 8e 17 01 00 00    	jle    140001a30 <mark_section_writable+0x130>
   140001919:	48 8b 05 88 b7 00 00 	mov    rax,QWORD PTR [rip+0xb788]        # 14000d0a8 <the_secs>
   140001920:	45 31 c9             	xor    r9d,r9d
   140001923:	48 83 c0 18          	add    rax,0x18
   140001927:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000192e:	00 00 
   140001930:	4c 8b 00             	mov    r8,QWORD PTR [rax]
   140001933:	4c 39 c3             	cmp    rbx,r8
   140001936:	72 13                	jb     14000194b <mark_section_writable+0x4b>
   140001938:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
   14000193c:	8b 52 08             	mov    edx,DWORD PTR [rdx+0x8]
   14000193f:	49 01 d0             	add    r8,rdx
   140001942:	4c 39 c3             	cmp    rbx,r8
   140001945:	0f 82 8a 00 00 00    	jb     1400019d5 <mark_section_writable+0xd5>
   14000194b:	41 83 c1 01          	add    r9d,0x1
   14000194f:	48 83 c0 28          	add    rax,0x28
   140001953:	41 39 f1             	cmp    r9d,esi
   140001956:	75 d8                	jne    140001930 <mark_section_writable+0x30>
   140001958:	48 89 d9             	mov    rcx,rbx
   14000195b:	e8 f0 09 00 00       	call   140002350 <__mingw_GetSectionForAddress>
   140001960:	48 89 c7             	mov    rdi,rax
   140001963:	48 85 c0             	test   rax,rax
   140001966:	0f 84 e6 00 00 00    	je     140001a52 <mark_section_writable+0x152>
   14000196c:	48 8b 05 35 b7 00 00 	mov    rax,QWORD PTR [rip+0xb735]        # 14000d0a8 <the_secs>
   140001973:	48 8d 1c b6          	lea    rbx,[rsi+rsi*4]
   140001977:	48 c1 e3 03          	shl    rbx,0x3
   14000197b:	48 01 d8             	add    rax,rbx
   14000197e:	48 89 78 20          	mov    QWORD PTR [rax+0x20],rdi
   140001982:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
   140001988:	e8 03 0b 00 00       	call   140002490 <_GetPEImageBase>
   14000198d:	8b 57 0c             	mov    edx,DWORD PTR [rdi+0xc]
   140001990:	41 b8 30 00 00 00    	mov    r8d,0x30
   140001996:	48 8d 0c 10          	lea    rcx,[rax+rdx*1]
   14000199a:	48 8b 05 07 b7 00 00 	mov    rax,QWORD PTR [rip+0xb707]        # 14000d0a8 <the_secs>
   1400019a1:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
   1400019a6:	48 89 4c 18 18       	mov    QWORD PTR [rax+rbx*1+0x18],rcx
   1400019ab:	ff 15 83 c8 00 00    	call   QWORD PTR [rip+0xc883]        # 14000e234 <__imp_VirtualQuery>
   1400019b1:	48 85 c0             	test   rax,rax
   1400019b4:	0f 84 7d 00 00 00    	je     140001a37 <mark_section_writable+0x137>
   1400019ba:	8b 44 24 44          	mov    eax,DWORD PTR [rsp+0x44]
   1400019be:	8d 50 c0             	lea    edx,[rax-0x40]
   1400019c1:	83 e2 bf             	and    edx,0xffffffbf
   1400019c4:	74 08                	je     1400019ce <mark_section_writable+0xce>
   1400019c6:	8d 50 fc             	lea    edx,[rax-0x4]
   1400019c9:	83 e2 fb             	and    edx,0xfffffffb
   1400019cc:	75 12                	jne    1400019e0 <mark_section_writable+0xe0>
   1400019ce:	83 05 cf b6 00 00 01 	add    DWORD PTR [rip+0xb6cf],0x1        # 14000d0a4 <maxSections>
   1400019d5:	48 83 c4 50          	add    rsp,0x50
   1400019d9:	5b                   	pop    rbx
   1400019da:	5e                   	pop    rsi
   1400019db:	5f                   	pop    rdi
   1400019dc:	c3                   	ret
   1400019dd:	0f 1f 00             	nop    DWORD PTR [rax]
   1400019e0:	83 f8 02             	cmp    eax,0x2
   1400019e3:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
   1400019e8:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
   1400019ed:	41 b8 40 00 00 00    	mov    r8d,0x40
   1400019f3:	b8 04 00 00 00       	mov    eax,0x4
   1400019f8:	44 0f 44 c0          	cmove  r8d,eax
   1400019fc:	48 03 1d a5 b6 00 00 	add    rbx,QWORD PTR [rip+0xb6a5]        # 14000d0a8 <the_secs>
   140001a03:	48 89 4b 08          	mov    QWORD PTR [rbx+0x8],rcx
   140001a07:	49 89 d9             	mov    r9,rbx
   140001a0a:	48 89 53 10          	mov    QWORD PTR [rbx+0x10],rdx
   140001a0e:	ff 15 18 c8 00 00    	call   QWORD PTR [rip+0xc818]        # 14000e22c <__imp_VirtualProtect>
   140001a14:	85 c0                	test   eax,eax
   140001a16:	75 b6                	jne    1400019ce <mark_section_writable+0xce>
   140001a18:	ff 15 c6 c7 00 00    	call   QWORD PTR [rip+0xc7c6]        # 14000e1e4 <__imp_GetLastError>
   140001a1e:	48 8d 0d 13 78 00 00 	lea    rcx,[rip+0x7813]        # 140009238 <.rdata+0x78>
   140001a25:	89 c2                	mov    edx,eax
   140001a27:	e8 64 fe ff ff       	call   140001890 <__report_error>
   140001a2c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001a30:	31 f6                	xor    esi,esi
   140001a32:	e9 21 ff ff ff       	jmp    140001958 <mark_section_writable+0x58>
   140001a37:	48 8b 05 6a b6 00 00 	mov    rax,QWORD PTR [rip+0xb66a]        # 14000d0a8 <the_secs>
   140001a3e:	8b 57 08             	mov    edx,DWORD PTR [rdi+0x8]
   140001a41:	48 8d 0d b8 77 00 00 	lea    rcx,[rip+0x77b8]        # 140009200 <.rdata+0x40>
   140001a48:	4c 8b 44 18 18       	mov    r8,QWORD PTR [rax+rbx*1+0x18]
   140001a4d:	e8 3e fe ff ff       	call   140001890 <__report_error>
   140001a52:	48 89 da             	mov    rdx,rbx
   140001a55:	48 8d 0d 84 77 00 00 	lea    rcx,[rip+0x7784]        # 1400091e0 <.rdata+0x20>
   140001a5c:	e8 2f fe ff ff       	call   140001890 <__report_error>
   140001a61:	90                   	nop
   140001a62:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140001a69:	00 00 00 00 
   140001a6d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000140001a70 <_pei386_runtime_relocator>:
   140001a70:	55                   	push   rbp
   140001a71:	41 57                	push   r15
   140001a73:	41 56                	push   r14
   140001a75:	41 55                	push   r13
   140001a77:	41 54                	push   r12
   140001a79:	57                   	push   rdi
   140001a7a:	56                   	push   rsi
   140001a7b:	53                   	push   rbx
   140001a7c:	48 83 ec 48          	sub    rsp,0x48
   140001a80:	48 8d 6c 24 40       	lea    rbp,[rsp+0x40]
   140001a85:	44 8b 25 14 b6 00 00 	mov    r12d,DWORD PTR [rip+0xb614]        # 14000d0a0 <was_init.0>
   140001a8c:	45 85 e4             	test   r12d,r12d
   140001a8f:	74 17                	je     140001aa8 <_pei386_runtime_relocator+0x38>
   140001a91:	48 8d 65 08          	lea    rsp,[rbp+0x8]
   140001a95:	5b                   	pop    rbx
   140001a96:	5e                   	pop    rsi
   140001a97:	5f                   	pop    rdi
   140001a98:	41 5c                	pop    r12
   140001a9a:	41 5d                	pop    r13
   140001a9c:	41 5e                	pop    r14
   140001a9e:	41 5f                	pop    r15
   140001aa0:	5d                   	pop    rbp
   140001aa1:	c3                   	ret
   140001aa2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140001aa8:	c7 05 ee b5 00 00 01 	mov    DWORD PTR [rip+0xb5ee],0x1        # 14000d0a0 <was_init.0>
   140001aaf:	00 00 00 
   140001ab2:	e8 19 09 00 00       	call   1400023d0 <__mingw_GetSectionCount>
   140001ab7:	48 98                	cdqe
   140001ab9:	48 8d 04 80          	lea    rax,[rax+rax*4]
   140001abd:	48 8d 04 c5 0f 00 00 	lea    rax,[rax*8+0xf]
   140001ac4:	00 
   140001ac5:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   140001ac9:	e8 62 0b 00 00       	call   140002630 <___chkstk_ms>
   140001ace:	4c 8b 2d 3b 7c 00 00 	mov    r13,QWORD PTR [rip+0x7c3b]        # 140009710 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   140001ad5:	48 8b 1d 44 7c 00 00 	mov    rbx,QWORD PTR [rip+0x7c44]        # 140009720 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140001adc:	c7 05 be b5 00 00 00 	mov    DWORD PTR [rip+0xb5be],0x0        # 14000d0a4 <maxSections>
   140001ae3:	00 00 00 
   140001ae6:	48 29 c4             	sub    rsp,rax
   140001ae9:	48 8d 44 24 30       	lea    rax,[rsp+0x30]
   140001aee:	48 89 05 b3 b5 00 00 	mov    QWORD PTR [rip+0xb5b3],rax        # 14000d0a8 <the_secs>
   140001af5:	4c 89 e8             	mov    rax,r13
   140001af8:	48 29 d8             	sub    rax,rbx
   140001afb:	48 83 f8 07          	cmp    rax,0x7
   140001aff:	7e 90                	jle    140001a91 <_pei386_runtime_relocator+0x21>
   140001b01:	8b 13                	mov    edx,DWORD PTR [rbx]
   140001b03:	48 83 f8 0b          	cmp    rax,0xb
   140001b07:	0f 8f 7b 01 00 00    	jg     140001c88 <_pei386_runtime_relocator+0x218>
   140001b0d:	8b 03                	mov    eax,DWORD PTR [rbx]
   140001b0f:	85 c0                	test   eax,eax
   140001b11:	0f 85 69 02 00 00    	jne    140001d80 <_pei386_runtime_relocator+0x310>
   140001b17:	8b 43 04             	mov    eax,DWORD PTR [rbx+0x4]
   140001b1a:	85 c0                	test   eax,eax
   140001b1c:	0f 85 5e 02 00 00    	jne    140001d80 <_pei386_runtime_relocator+0x310>
   140001b22:	8b 53 08             	mov    edx,DWORD PTR [rbx+0x8]
   140001b25:	83 fa 01             	cmp    edx,0x1
   140001b28:	0f 85 90 02 00 00    	jne    140001dbe <_pei386_runtime_relocator+0x34e>
   140001b2e:	48 83 c3 0c          	add    rbx,0xc
   140001b32:	4c 39 eb             	cmp    rbx,r13
   140001b35:	0f 83 56 ff ff ff    	jae    140001a91 <_pei386_runtime_relocator+0x21>
   140001b3b:	4c 8b 35 fe 7b 00 00 	mov    r14,QWORD PTR [rip+0x7bfe]        # 140009740 <.refptr.__image_base__>
   140001b42:	49 bf ff ff ff 7f ff 	movabs r15,0xffffffff7fffffff
   140001b49:	ff ff ff 
   140001b4c:	eb 54                	jmp    140001ba2 <_pei386_runtime_relocator+0x132>
   140001b4e:	66 90                	xchg   ax,ax
   140001b50:	0f b6 37             	movzx  esi,BYTE PTR [rdi]
   140001b53:	81 e1 c0 00 00 00    	and    ecx,0xc0
   140001b59:	40 84 f6             	test   sil,sil
   140001b5c:	0f 89 06 02 00 00    	jns    140001d68 <_pei386_runtime_relocator+0x2f8>
   140001b62:	48 81 ce 00 ff ff ff 	or     rsi,0xffffffffffffff00
   140001b69:	48 29 c6             	sub    rsi,rax
   140001b6c:	4c 01 ce             	add    rsi,r9
   140001b6f:	85 c9                	test   ecx,ecx
   140001b71:	75 17                	jne    140001b8a <_pei386_runtime_relocator+0x11a>
   140001b73:	48 81 fe ff 00 00 00 	cmp    rsi,0xff
   140001b7a:	0f 8f 4f 01 00 00    	jg     140001ccf <_pei386_runtime_relocator+0x25f>
   140001b80:	48 83 fe 80          	cmp    rsi,0xffffffffffffff80
   140001b84:	0f 8c 45 01 00 00    	jl     140001ccf <_pei386_runtime_relocator+0x25f>
   140001b8a:	48 89 f9             	mov    rcx,rdi
   140001b8d:	e8 6e fd ff ff       	call   140001900 <mark_section_writable>
   140001b92:	40 88 37             	mov    BYTE PTR [rdi],sil
   140001b95:	48 83 c3 0c          	add    rbx,0xc
   140001b99:	4c 39 eb             	cmp    rbx,r13
   140001b9c:	0f 83 8e 00 00 00    	jae    140001c30 <_pei386_runtime_relocator+0x1c0>
   140001ba2:	8b 03                	mov    eax,DWORD PTR [rbx]
   140001ba4:	8b 4b 08             	mov    ecx,DWORD PTR [rbx+0x8]
   140001ba7:	8b 7b 04             	mov    edi,DWORD PTR [rbx+0x4]
   140001baa:	4c 01 f0             	add    rax,r14
   140001bad:	0f b6 d1             	movzx  edx,cl
   140001bb0:	4c 8b 08             	mov    r9,QWORD PTR [rax]
   140001bb3:	4c 01 f7             	add    rdi,r14
   140001bb6:	83 fa 20             	cmp    edx,0x20
   140001bb9:	0f 84 29 01 00 00    	je     140001ce8 <_pei386_runtime_relocator+0x278>
   140001bbf:	0f 87 eb 00 00 00    	ja     140001cb0 <_pei386_runtime_relocator+0x240>
   140001bc5:	83 fa 08             	cmp    edx,0x8
   140001bc8:	74 86                	je     140001b50 <_pei386_runtime_relocator+0xe0>
   140001bca:	83 fa 10             	cmp    edx,0x10
   140001bcd:	0f 85 df 01 00 00    	jne    140001db2 <_pei386_runtime_relocator+0x342>
   140001bd3:	0f b7 37             	movzx  esi,WORD PTR [rdi]
   140001bd6:	81 e1 c0 00 00 00    	and    ecx,0xc0
   140001bdc:	66 85 f6             	test   si,si
   140001bdf:	0f 89 6b 01 00 00    	jns    140001d50 <_pei386_runtime_relocator+0x2e0>
   140001be5:	48 81 ce 00 00 ff ff 	or     rsi,0xffffffffffff0000
   140001bec:	48 29 c6             	sub    rsi,rax
   140001bef:	4c 01 ce             	add    rsi,r9
   140001bf2:	85 c9                	test   ecx,ecx
   140001bf4:	75 1a                	jne    140001c10 <_pei386_runtime_relocator+0x1a0>
   140001bf6:	48 81 fe 00 80 ff ff 	cmp    rsi,0xffffffffffff8000
   140001bfd:	0f 8c cc 00 00 00    	jl     140001ccf <_pei386_runtime_relocator+0x25f>
   140001c03:	48 81 fe ff ff 00 00 	cmp    rsi,0xffff
   140001c0a:	0f 8f bf 00 00 00    	jg     140001ccf <_pei386_runtime_relocator+0x25f>
   140001c10:	48 89 f9             	mov    rcx,rdi
   140001c13:	48 83 c3 0c          	add    rbx,0xc
   140001c17:	e8 e4 fc ff ff       	call   140001900 <mark_section_writable>
   140001c1c:	66 89 37             	mov    WORD PTR [rdi],si
   140001c1f:	4c 39 eb             	cmp    rbx,r13
   140001c22:	0f 82 7a ff ff ff    	jb     140001ba2 <_pei386_runtime_relocator+0x132>
   140001c28:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140001c2f:	00 
   140001c30:	8b 15 6e b4 00 00    	mov    edx,DWORD PTR [rip+0xb46e]        # 14000d0a4 <maxSections>
   140001c36:	85 d2                	test   edx,edx
   140001c38:	0f 8e 53 fe ff ff    	jle    140001a91 <_pei386_runtime_relocator+0x21>
   140001c3e:	48 8b 35 e7 c5 00 00 	mov    rsi,QWORD PTR [rip+0xc5e7]        # 14000e22c <__imp_VirtualProtect>
   140001c45:	31 db                	xor    ebx,ebx
   140001c47:	48 8d 7d fc          	lea    rdi,[rbp-0x4]
   140001c4b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140001c50:	48 8b 05 51 b4 00 00 	mov    rax,QWORD PTR [rip+0xb451]        # 14000d0a8 <the_secs>
   140001c57:	48 01 d8             	add    rax,rbx
   140001c5a:	44 8b 00             	mov    r8d,DWORD PTR [rax]
   140001c5d:	45 85 c0             	test   r8d,r8d
   140001c60:	74 0d                	je     140001c6f <_pei386_runtime_relocator+0x1ff>
   140001c62:	48 8b 50 10          	mov    rdx,QWORD PTR [rax+0x10]
   140001c66:	48 8b 48 08          	mov    rcx,QWORD PTR [rax+0x8]
   140001c6a:	49 89 f9             	mov    r9,rdi
   140001c6d:	ff d6                	call   rsi
   140001c6f:	41 83 c4 01          	add    r12d,0x1
   140001c73:	48 83 c3 28          	add    rbx,0x28
   140001c77:	44 3b 25 26 b4 00 00 	cmp    r12d,DWORD PTR [rip+0xb426]        # 14000d0a4 <maxSections>
   140001c7e:	7c d0                	jl     140001c50 <_pei386_runtime_relocator+0x1e0>
   140001c80:	e9 0c fe ff ff       	jmp    140001a91 <_pei386_runtime_relocator+0x21>
   140001c85:	0f 1f 00             	nop    DWORD PTR [rax]
   140001c88:	85 d2                	test   edx,edx
   140001c8a:	0f 85 f0 00 00 00    	jne    140001d80 <_pei386_runtime_relocator+0x310>
   140001c90:	8b 43 04             	mov    eax,DWORD PTR [rbx+0x4]
   140001c93:	89 c2                	mov    edx,eax
   140001c95:	0b 53 08             	or     edx,DWORD PTR [rbx+0x8]
   140001c98:	0f 85 7c fe ff ff    	jne    140001b1a <_pei386_runtime_relocator+0xaa>
   140001c9e:	48 83 c3 0c          	add    rbx,0xc
   140001ca2:	e9 66 fe ff ff       	jmp    140001b0d <_pei386_runtime_relocator+0x9d>
   140001ca7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140001cae:	00 00 
   140001cb0:	83 fa 40             	cmp    edx,0x40
   140001cb3:	0f 85 f9 00 00 00    	jne    140001db2 <_pei386_runtime_relocator+0x342>
   140001cb9:	48 8b 37             	mov    rsi,QWORD PTR [rdi]
   140001cbc:	48 29 c6             	sub    rsi,rax
   140001cbf:	4c 01 ce             	add    rsi,r9
   140001cc2:	81 e1 c0 00 00 00    	and    ecx,0xc0
   140001cc8:	75 66                	jne    140001d30 <_pei386_runtime_relocator+0x2c0>
   140001cca:	48 85 f6             	test   rsi,rsi
   140001ccd:	78 61                	js     140001d30 <_pei386_runtime_relocator+0x2c0>
   140001ccf:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
   140001cd4:	49 89 f8             	mov    r8,rdi
   140001cd7:	48 8d 0d ea 75 00 00 	lea    rcx,[rip+0x75ea]        # 1400092c8 <.rdata+0x108>
   140001cde:	e8 ad fb ff ff       	call   140001890 <__report_error>
   140001ce3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140001ce8:	8b 37                	mov    esi,DWORD PTR [rdi]
   140001cea:	81 e1 c0 00 00 00    	and    ecx,0xc0
   140001cf0:	85 f6                	test   esi,esi
   140001cf2:	79 4c                	jns    140001d40 <_pei386_runtime_relocator+0x2d0>
   140001cf4:	49 bb 00 00 00 00 ff 	movabs r11,0xffffffff00000000
   140001cfb:	ff ff ff 
   140001cfe:	4c 09 de             	or     rsi,r11
   140001d01:	48 29 c6             	sub    rsi,rax
   140001d04:	4c 01 ce             	add    rsi,r9
   140001d07:	85 c9                	test   ecx,ecx
   140001d09:	75 0f                	jne    140001d1a <_pei386_runtime_relocator+0x2aa>
   140001d0b:	4c 39 fe             	cmp    rsi,r15
   140001d0e:	7e bf                	jle    140001ccf <_pei386_runtime_relocator+0x25f>
   140001d10:	b8 ff ff ff ff       	mov    eax,0xffffffff
   140001d15:	48 39 c6             	cmp    rsi,rax
   140001d18:	7f b5                	jg     140001ccf <_pei386_runtime_relocator+0x25f>
   140001d1a:	48 89 f9             	mov    rcx,rdi
   140001d1d:	e8 de fb ff ff       	call   140001900 <mark_section_writable>
   140001d22:	89 37                	mov    DWORD PTR [rdi],esi
   140001d24:	e9 6c fe ff ff       	jmp    140001b95 <_pei386_runtime_relocator+0x125>
   140001d29:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140001d30:	48 89 f9             	mov    rcx,rdi
   140001d33:	e8 c8 fb ff ff       	call   140001900 <mark_section_writable>
   140001d38:	48 89 37             	mov    QWORD PTR [rdi],rsi
   140001d3b:	e9 55 fe ff ff       	jmp    140001b95 <_pei386_runtime_relocator+0x125>
   140001d40:	48 29 c6             	sub    rsi,rax
   140001d43:	4c 01 ce             	add    rsi,r9
   140001d46:	85 c9                	test   ecx,ecx
   140001d48:	74 c1                	je     140001d0b <_pei386_runtime_relocator+0x29b>
   140001d4a:	eb ce                	jmp    140001d1a <_pei386_runtime_relocator+0x2aa>
   140001d4c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001d50:	48 29 c6             	sub    rsi,rax
   140001d53:	4c 01 ce             	add    rsi,r9
   140001d56:	85 c9                	test   ecx,ecx
   140001d58:	0f 84 98 fe ff ff    	je     140001bf6 <_pei386_runtime_relocator+0x186>
   140001d5e:	e9 ad fe ff ff       	jmp    140001c10 <_pei386_runtime_relocator+0x1a0>
   140001d63:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140001d68:	48 29 c6             	sub    rsi,rax
   140001d6b:	4c 01 ce             	add    rsi,r9
   140001d6e:	85 c9                	test   ecx,ecx
   140001d70:	0f 84 fd fd ff ff    	je     140001b73 <_pei386_runtime_relocator+0x103>
   140001d76:	e9 0f fe ff ff       	jmp    140001b8a <_pei386_runtime_relocator+0x11a>
   140001d7b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140001d80:	4c 39 eb             	cmp    rbx,r13
   140001d83:	0f 83 08 fd ff ff    	jae    140001a91 <_pei386_runtime_relocator+0x21>
   140001d89:	4c 8b 35 b0 79 00 00 	mov    r14,QWORD PTR [rip+0x79b0]        # 140009740 <.refptr.__image_base__>
   140001d90:	8b 73 04             	mov    esi,DWORD PTR [rbx+0x4]
   140001d93:	8b 3b                	mov    edi,DWORD PTR [rbx]
   140001d95:	48 83 c3 08          	add    rbx,0x8
   140001d99:	4c 01 f6             	add    rsi,r14
   140001d9c:	03 3e                	add    edi,DWORD PTR [rsi]
   140001d9e:	48 89 f1             	mov    rcx,rsi
   140001da1:	e8 5a fb ff ff       	call   140001900 <mark_section_writable>
   140001da6:	89 3e                	mov    DWORD PTR [rsi],edi
   140001da8:	4c 39 eb             	cmp    rbx,r13
   140001dab:	72 e3                	jb     140001d90 <_pei386_runtime_relocator+0x320>
   140001dad:	e9 7e fe ff ff       	jmp    140001c30 <_pei386_runtime_relocator+0x1c0>
   140001db2:	48 8d 0d df 74 00 00 	lea    rcx,[rip+0x74df]        # 140009298 <.rdata+0xd8>
   140001db9:	e8 d2 fa ff ff       	call   140001890 <__report_error>
   140001dbe:	48 8d 0d 9b 74 00 00 	lea    rcx,[rip+0x749b]        # 140009260 <.rdata+0xa0>
   140001dc5:	e8 c6 fa ff ff       	call   140001890 <__report_error>
   140001dca:	90                   	nop
   140001dcb:	90                   	nop
   140001dcc:	90                   	nop
   140001dcd:	90                   	nop
   140001dce:	90                   	nop
   140001dcf:	90                   	nop

0000000140001dd0 <__mingw_raise_matherr>:
   140001dd0:	48 83 ec 58          	sub    rsp,0x58
   140001dd4:	48 8b 05 d5 b2 00 00 	mov    rax,QWORD PTR [rip+0xb2d5]        # 14000d0b0 <stUserMathErr>
   140001ddb:	66 0f 14 d3          	unpcklpd xmm2,xmm3
   140001ddf:	48 85 c0             	test   rax,rax
   140001de2:	74 25                	je     140001e09 <__mingw_raise_matherr+0x39>
   140001de4:	f2 0f 10 84 24 80 00 	movsd  xmm0,QWORD PTR [rsp+0x80]
   140001deb:	00 00 
   140001ded:	89 4c 24 20          	mov    DWORD PTR [rsp+0x20],ecx
   140001df1:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
   140001df6:	48 89 54 24 28       	mov    QWORD PTR [rsp+0x28],rdx
   140001dfb:	0f 11 54 24 30       	movups XMMWORD PTR [rsp+0x30],xmm2
   140001e00:	f2 0f 11 44 24 40    	movsd  QWORD PTR [rsp+0x40],xmm0
   140001e06:	ff d0                	call   rax
   140001e08:	90                   	nop
   140001e09:	48 83 c4 58          	add    rsp,0x58
   140001e0d:	c3                   	ret
   140001e0e:	66 90                	xchg   ax,ax

0000000140001e10 <__mingw_setusermatherr>:
   140001e10:	48 89 0d 99 b2 00 00 	mov    QWORD PTR [rip+0xb299],rcx        # 14000d0b0 <stUserMathErr>
   140001e17:	e9 54 5d 00 00       	jmp    140007b70 <__setusermatherr>
   140001e1c:	90                   	nop
   140001e1d:	90                   	nop
   140001e1e:	90                   	nop
   140001e1f:	90                   	nop

0000000140001e20 <_gnu_exception_handler>:
   140001e20:	53                   	push   rbx
   140001e21:	48 83 ec 20          	sub    rsp,0x20
   140001e25:	48 8b 11             	mov    rdx,QWORD PTR [rcx]
   140001e28:	8b 02                	mov    eax,DWORD PTR [rdx]
   140001e2a:	48 89 cb             	mov    rbx,rcx
   140001e2d:	89 c1                	mov    ecx,eax
   140001e2f:	81 e1 ff ff ff 20    	and    ecx,0x20ffffff
   140001e35:	81 f9 43 43 47 20    	cmp    ecx,0x20474343
   140001e3b:	0f 84 9f 00 00 00    	je     140001ee0 <_gnu_exception_handler+0xc0>
   140001e41:	3d 96 00 00 c0       	cmp    eax,0xc0000096
   140001e46:	77 77                	ja     140001ebf <_gnu_exception_handler+0x9f>
   140001e48:	3d 8b 00 00 c0       	cmp    eax,0xc000008b
   140001e4d:	76 21                	jbe    140001e70 <_gnu_exception_handler+0x50>
   140001e4f:	05 73 ff ff 3f       	add    eax,0x3fffff73
   140001e54:	83 f8 09             	cmp    eax,0x9
   140001e57:	77 54                	ja     140001ead <_gnu_exception_handler+0x8d>
   140001e59:	48 8d 15 c0 74 00 00 	lea    rdx,[rip+0x74c0]        # 140009320 <.rdata>
   140001e60:	48 63 04 82          	movsxd rax,DWORD PTR [rdx+rax*4]
   140001e64:	48 01 d0             	add    rax,rdx
   140001e67:	ff e0                	jmp    rax
   140001e69:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140001e70:	3d 05 00 00 c0       	cmp    eax,0xc0000005
   140001e75:	0f 84 d5 00 00 00    	je     140001f50 <_gnu_exception_handler+0x130>
   140001e7b:	76 3b                	jbe    140001eb8 <_gnu_exception_handler+0x98>
   140001e7d:	3d 08 00 00 c0       	cmp    eax,0xc0000008
   140001e82:	74 29                	je     140001ead <_gnu_exception_handler+0x8d>
   140001e84:	3d 1d 00 00 c0       	cmp    eax,0xc000001d
   140001e89:	75 34                	jne    140001ebf <_gnu_exception_handler+0x9f>
   140001e8b:	31 d2                	xor    edx,edx
   140001e8d:	b9 04 00 00 00       	mov    ecx,0x4
   140001e92:	e8 71 5d 00 00       	call   140007c08 <signal>
   140001e97:	48 83 f8 01          	cmp    rax,0x1
   140001e9b:	0f 84 d6 00 00 00    	je     140001f77 <_gnu_exception_handler+0x157>
   140001ea1:	48 85 c0             	test   rax,rax
   140001ea4:	74 19                	je     140001ebf <_gnu_exception_handler+0x9f>
   140001ea6:	b9 04 00 00 00       	mov    ecx,0x4
   140001eab:	ff d0                	call   rax
   140001ead:	b8 ff ff ff ff       	mov    eax,0xffffffff
   140001eb2:	48 83 c4 20          	add    rsp,0x20
   140001eb6:	5b                   	pop    rbx
   140001eb7:	c3                   	ret
   140001eb8:	3d 02 00 00 80       	cmp    eax,0x80000002
   140001ebd:	74 ee                	je     140001ead <_gnu_exception_handler+0x8d>
   140001ebf:	48 8b 05 0a b2 00 00 	mov    rax,QWORD PTR [rip+0xb20a]        # 14000d0d0 <__mingw_oldexcpt_handler>
   140001ec6:	48 85 c0             	test   rax,rax
   140001ec9:	74 25                	je     140001ef0 <_gnu_exception_handler+0xd0>
   140001ecb:	48 89 d9             	mov    rcx,rbx
   140001ece:	48 83 c4 20          	add    rsp,0x20
   140001ed2:	5b                   	pop    rbx
   140001ed3:	48 ff e0             	rex.W jmp rax
   140001ed6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   140001edd:	00 00 00 
   140001ee0:	f6 42 04 01          	test   BYTE PTR [rdx+0x4],0x1
   140001ee4:	0f 85 57 ff ff ff    	jne    140001e41 <_gnu_exception_handler+0x21>
   140001eea:	eb c1                	jmp    140001ead <_gnu_exception_handler+0x8d>
   140001eec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001ef0:	31 c0                	xor    eax,eax
   140001ef2:	48 83 c4 20          	add    rsp,0x20
   140001ef6:	5b                   	pop    rbx
   140001ef7:	c3                   	ret
   140001ef8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140001eff:	00 
   140001f00:	31 d2                	xor    edx,edx
   140001f02:	b9 08 00 00 00       	mov    ecx,0x8
   140001f07:	e8 fc 5c 00 00       	call   140007c08 <signal>
   140001f0c:	48 83 f8 01          	cmp    rax,0x1
   140001f10:	0f 84 89 00 00 00    	je     140001f9f <_gnu_exception_handler+0x17f>
   140001f16:	48 85 c0             	test   rax,rax
   140001f19:	74 a4                	je     140001ebf <_gnu_exception_handler+0x9f>
   140001f1b:	b9 08 00 00 00       	mov    ecx,0x8
   140001f20:	ff d0                	call   rax
   140001f22:	eb 89                	jmp    140001ead <_gnu_exception_handler+0x8d>
   140001f24:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001f28:	31 d2                	xor    edx,edx
   140001f2a:	b9 08 00 00 00       	mov    ecx,0x8
   140001f2f:	e8 d4 5c 00 00       	call   140007c08 <signal>
   140001f34:	48 83 f8 01          	cmp    rax,0x1
   140001f38:	75 dc                	jne    140001f16 <_gnu_exception_handler+0xf6>
   140001f3a:	ba 01 00 00 00       	mov    edx,0x1
   140001f3f:	b9 08 00 00 00       	mov    ecx,0x8
   140001f44:	e8 bf 5c 00 00       	call   140007c08 <signal>
   140001f49:	e9 5f ff ff ff       	jmp    140001ead <_gnu_exception_handler+0x8d>
   140001f4e:	66 90                	xchg   ax,ax
   140001f50:	31 d2                	xor    edx,edx
   140001f52:	b9 0b 00 00 00       	mov    ecx,0xb
   140001f57:	e8 ac 5c 00 00       	call   140007c08 <signal>
   140001f5c:	48 83 f8 01          	cmp    rax,0x1
   140001f60:	74 29                	je     140001f8b <_gnu_exception_handler+0x16b>
   140001f62:	48 85 c0             	test   rax,rax
   140001f65:	0f 84 54 ff ff ff    	je     140001ebf <_gnu_exception_handler+0x9f>
   140001f6b:	b9 0b 00 00 00       	mov    ecx,0xb
   140001f70:	ff d0                	call   rax
   140001f72:	e9 36 ff ff ff       	jmp    140001ead <_gnu_exception_handler+0x8d>
   140001f77:	ba 01 00 00 00       	mov    edx,0x1
   140001f7c:	b9 04 00 00 00       	mov    ecx,0x4
   140001f81:	e8 82 5c 00 00       	call   140007c08 <signal>
   140001f86:	e9 22 ff ff ff       	jmp    140001ead <_gnu_exception_handler+0x8d>
   140001f8b:	ba 01 00 00 00       	mov    edx,0x1
   140001f90:	b9 0b 00 00 00       	mov    ecx,0xb
   140001f95:	e8 6e 5c 00 00       	call   140007c08 <signal>
   140001f9a:	e9 0e ff ff ff       	jmp    140001ead <_gnu_exception_handler+0x8d>
   140001f9f:	ba 01 00 00 00       	mov    edx,0x1
   140001fa4:	b9 08 00 00 00       	mov    ecx,0x8
   140001fa9:	e8 5a 5c 00 00       	call   140007c08 <signal>
   140001fae:	e8 cd f8 ff ff       	call   140001880 <_fpreset>
   140001fb3:	e9 f5 fe ff ff       	jmp    140001ead <_gnu_exception_handler+0x8d>
   140001fb8:	90                   	nop
   140001fb9:	90                   	nop
   140001fba:	90                   	nop
   140001fbb:	90                   	nop
   140001fbc:	90                   	nop
   140001fbd:	90                   	nop
   140001fbe:	90                   	nop
   140001fbf:	90                   	nop

0000000140001fc0 <__mingwthr_run_key_dtors.part.0>:
   140001fc0:	41 54                	push   r12
   140001fc2:	55                   	push   rbp
   140001fc3:	57                   	push   rdi
   140001fc4:	56                   	push   rsi
   140001fc5:	53                   	push   rbx
   140001fc6:	48 83 ec 20          	sub    rsp,0x20
   140001fca:	4c 8d 25 2f b1 00 00 	lea    r12,[rip+0xb12f]        # 14000d100 <__mingwthr_cs>
   140001fd1:	4c 89 e1             	mov    rcx,r12
   140001fd4:	ff 15 02 c2 00 00    	call   QWORD PTR [rip+0xc202]        # 14000e1dc <__imp_EnterCriticalSection>
   140001fda:	48 8b 1d ff b0 00 00 	mov    rbx,QWORD PTR [rip+0xb0ff]        # 14000d0e0 <key_dtor_list>
   140001fe1:	48 85 db             	test   rbx,rbx
   140001fe4:	74 36                	je     14000201c <__mingwthr_run_key_dtors.part.0+0x5c>
   140001fe6:	48 8b 2d 37 c2 00 00 	mov    rbp,QWORD PTR [rip+0xc237]        # 14000e224 <__imp_TlsGetValue>
   140001fed:	48 8b 3d f0 c1 00 00 	mov    rdi,QWORD PTR [rip+0xc1f0]        # 14000e1e4 <__imp_GetLastError>
   140001ff4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140001ff8:	8b 0b                	mov    ecx,DWORD PTR [rbx]
   140001ffa:	ff d5                	call   rbp
   140001ffc:	48 89 c6             	mov    rsi,rax
   140001fff:	ff d7                	call   rdi
   140002001:	85 c0                	test   eax,eax
   140002003:	75 0e                	jne    140002013 <__mingwthr_run_key_dtors.part.0+0x53>
   140002005:	48 85 f6             	test   rsi,rsi
   140002008:	74 09                	je     140002013 <__mingwthr_run_key_dtors.part.0+0x53>
   14000200a:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
   14000200e:	48 89 f1             	mov    rcx,rsi
   140002011:	ff d0                	call   rax
   140002013:	48 8b 5b 10          	mov    rbx,QWORD PTR [rbx+0x10]
   140002017:	48 85 db             	test   rbx,rbx
   14000201a:	75 dc                	jne    140001ff8 <__mingwthr_run_key_dtors.part.0+0x38>
   14000201c:	4c 89 e1             	mov    rcx,r12
   14000201f:	48 83 c4 20          	add    rsp,0x20
   140002023:	5b                   	pop    rbx
   140002024:	5e                   	pop    rsi
   140002025:	5f                   	pop    rdi
   140002026:	5d                   	pop    rbp
   140002027:	41 5c                	pop    r12
   140002029:	48 ff 25 d4 c1 00 00 	rex.W jmp QWORD PTR [rip+0xc1d4]        # 14000e204 <__imp_LeaveCriticalSection>

0000000140002030 <___w64_mingwthr_add_key_dtor>:
   140002030:	57                   	push   rdi
   140002031:	56                   	push   rsi
   140002032:	53                   	push   rbx
   140002033:	48 83 ec 20          	sub    rsp,0x20
   140002037:	8b 05 ab b0 00 00    	mov    eax,DWORD PTR [rip+0xb0ab]        # 14000d0e8 <__mingwthr_cs_init>
   14000203d:	89 cf                	mov    edi,ecx
   14000203f:	48 89 d6             	mov    rsi,rdx
   140002042:	85 c0                	test   eax,eax
   140002044:	75 0a                	jne    140002050 <___w64_mingwthr_add_key_dtor+0x20>
   140002046:	31 c0                	xor    eax,eax
   140002048:	48 83 c4 20          	add    rsp,0x20
   14000204c:	5b                   	pop    rbx
   14000204d:	5e                   	pop    rsi
   14000204e:	5f                   	pop    rdi
   14000204f:	c3                   	ret
   140002050:	ba 18 00 00 00       	mov    edx,0x18
   140002055:	b9 01 00 00 00       	mov    ecx,0x1
   14000205a:	e8 59 5b 00 00       	call   140007bb8 <calloc>
   14000205f:	48 89 c3             	mov    rbx,rax
   140002062:	48 85 c0             	test   rax,rax
   140002065:	74 33                	je     14000209a <___w64_mingwthr_add_key_dtor+0x6a>
   140002067:	48 89 70 08          	mov    QWORD PTR [rax+0x8],rsi
   14000206b:	48 8d 35 8e b0 00 00 	lea    rsi,[rip+0xb08e]        # 14000d100 <__mingwthr_cs>
   140002072:	89 38                	mov    DWORD PTR [rax],edi
   140002074:	48 89 f1             	mov    rcx,rsi
   140002077:	ff 15 5f c1 00 00    	call   QWORD PTR [rip+0xc15f]        # 14000e1dc <__imp_EnterCriticalSection>
   14000207d:	48 8b 05 5c b0 00 00 	mov    rax,QWORD PTR [rip+0xb05c]        # 14000d0e0 <key_dtor_list>
   140002084:	48 89 f1             	mov    rcx,rsi
   140002087:	48 89 1d 52 b0 00 00 	mov    QWORD PTR [rip+0xb052],rbx        # 14000d0e0 <key_dtor_list>
   14000208e:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
   140002092:	ff 15 6c c1 00 00    	call   QWORD PTR [rip+0xc16c]        # 14000e204 <__imp_LeaveCriticalSection>
   140002098:	eb ac                	jmp    140002046 <___w64_mingwthr_add_key_dtor+0x16>
   14000209a:	83 c8 ff             	or     eax,0xffffffff
   14000209d:	eb a9                	jmp    140002048 <___w64_mingwthr_add_key_dtor+0x18>
   14000209f:	90                   	nop

00000001400020a0 <___w64_mingwthr_remove_key_dtor>:
   1400020a0:	56                   	push   rsi
   1400020a1:	53                   	push   rbx
   1400020a2:	48 83 ec 28          	sub    rsp,0x28
   1400020a6:	8b 05 3c b0 00 00    	mov    eax,DWORD PTR [rip+0xb03c]        # 14000d0e8 <__mingwthr_cs_init>
   1400020ac:	89 cb                	mov    ebx,ecx
   1400020ae:	85 c0                	test   eax,eax
   1400020b0:	75 0e                	jne    1400020c0 <___w64_mingwthr_remove_key_dtor+0x20>
   1400020b2:	31 c0                	xor    eax,eax
   1400020b4:	48 83 c4 28          	add    rsp,0x28
   1400020b8:	5b                   	pop    rbx
   1400020b9:	5e                   	pop    rsi
   1400020ba:	c3                   	ret
   1400020bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400020c0:	48 8d 35 39 b0 00 00 	lea    rsi,[rip+0xb039]        # 14000d100 <__mingwthr_cs>
   1400020c7:	48 89 f1             	mov    rcx,rsi
   1400020ca:	ff 15 0c c1 00 00    	call   QWORD PTR [rip+0xc10c]        # 14000e1dc <__imp_EnterCriticalSection>
   1400020d0:	48 8b 0d 09 b0 00 00 	mov    rcx,QWORD PTR [rip+0xb009]        # 14000d0e0 <key_dtor_list>
   1400020d7:	48 85 c9             	test   rcx,rcx
   1400020da:	74 27                	je     140002103 <___w64_mingwthr_remove_key_dtor+0x63>
   1400020dc:	31 d2                	xor    edx,edx
   1400020de:	eb 0b                	jmp    1400020eb <___w64_mingwthr_remove_key_dtor+0x4b>
   1400020e0:	48 89 ca             	mov    rdx,rcx
   1400020e3:	48 85 c0             	test   rax,rax
   1400020e6:	74 1b                	je     140002103 <___w64_mingwthr_remove_key_dtor+0x63>
   1400020e8:	48 89 c1             	mov    rcx,rax
   1400020eb:	8b 01                	mov    eax,DWORD PTR [rcx]
   1400020ed:	39 d8                	cmp    eax,ebx
   1400020ef:	48 8b 41 10          	mov    rax,QWORD PTR [rcx+0x10]
   1400020f3:	75 eb                	jne    1400020e0 <___w64_mingwthr_remove_key_dtor+0x40>
   1400020f5:	48 85 d2             	test   rdx,rdx
   1400020f8:	74 1e                	je     140002118 <___w64_mingwthr_remove_key_dtor+0x78>
   1400020fa:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
   1400020fe:	e8 d5 5a 00 00       	call   140007bd8 <free>
   140002103:	48 89 f1             	mov    rcx,rsi
   140002106:	ff 15 f8 c0 00 00    	call   QWORD PTR [rip+0xc0f8]        # 14000e204 <__imp_LeaveCriticalSection>
   14000210c:	31 c0                	xor    eax,eax
   14000210e:	48 83 c4 28          	add    rsp,0x28
   140002112:	5b                   	pop    rbx
   140002113:	5e                   	pop    rsi
   140002114:	c3                   	ret
   140002115:	0f 1f 00             	nop    DWORD PTR [rax]
   140002118:	48 89 05 c1 af 00 00 	mov    QWORD PTR [rip+0xafc1],rax        # 14000d0e0 <key_dtor_list>
   14000211f:	eb dd                	jmp    1400020fe <___w64_mingwthr_remove_key_dtor+0x5e>
   140002121:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140002128:	00 00 00 00 
   14000212c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000140002130 <__mingw_TLScallback>:
   140002130:	53                   	push   rbx
   140002131:	48 83 ec 20          	sub    rsp,0x20
   140002135:	83 fa 02             	cmp    edx,0x2
   140002138:	0f 84 b2 00 00 00    	je     1400021f0 <__mingw_TLScallback+0xc0>
   14000213e:	77 30                	ja     140002170 <__mingw_TLScallback+0x40>
   140002140:	85 d2                	test   edx,edx
   140002142:	74 4c                	je     140002190 <__mingw_TLScallback+0x60>
   140002144:	8b 05 9e af 00 00    	mov    eax,DWORD PTR [rip+0xaf9e]        # 14000d0e8 <__mingwthr_cs_init>
   14000214a:	85 c0                	test   eax,eax
   14000214c:	0f 84 be 00 00 00    	je     140002210 <__mingw_TLScallback+0xe0>
   140002152:	c7 05 8c af 00 00 01 	mov    DWORD PTR [rip+0xaf8c],0x1        # 14000d0e8 <__mingwthr_cs_init>
   140002159:	00 00 00 
   14000215c:	b8 01 00 00 00       	mov    eax,0x1
   140002161:	48 83 c4 20          	add    rsp,0x20
   140002165:	5b                   	pop    rbx
   140002166:	c3                   	ret
   140002167:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000216e:	00 00 
   140002170:	83 fa 03             	cmp    edx,0x3
   140002173:	75 e7                	jne    14000215c <__mingw_TLScallback+0x2c>
   140002175:	8b 05 6d af 00 00    	mov    eax,DWORD PTR [rip+0xaf6d]        # 14000d0e8 <__mingwthr_cs_init>
   14000217b:	85 c0                	test   eax,eax
   14000217d:	74 dd                	je     14000215c <__mingw_TLScallback+0x2c>
   14000217f:	e8 3c fe ff ff       	call   140001fc0 <__mingwthr_run_key_dtors.part.0>
   140002184:	eb d6                	jmp    14000215c <__mingw_TLScallback+0x2c>
   140002186:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000218d:	00 00 00 
   140002190:	8b 05 52 af 00 00    	mov    eax,DWORD PTR [rip+0xaf52]        # 14000d0e8 <__mingwthr_cs_init>
   140002196:	85 c0                	test   eax,eax
   140002198:	75 66                	jne    140002200 <__mingw_TLScallback+0xd0>
   14000219a:	8b 05 48 af 00 00    	mov    eax,DWORD PTR [rip+0xaf48]        # 14000d0e8 <__mingwthr_cs_init>
   1400021a0:	83 f8 01             	cmp    eax,0x1
   1400021a3:	75 b7                	jne    14000215c <__mingw_TLScallback+0x2c>
   1400021a5:	48 8b 1d 34 af 00 00 	mov    rbx,QWORD PTR [rip+0xaf34]        # 14000d0e0 <key_dtor_list>
   1400021ac:	48 85 db             	test   rbx,rbx
   1400021af:	74 18                	je     1400021c9 <__mingw_TLScallback+0x99>
   1400021b1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400021b8:	48 89 d9             	mov    rcx,rbx
   1400021bb:	48 8b 5b 10          	mov    rbx,QWORD PTR [rbx+0x10]
   1400021bf:	e8 14 5a 00 00       	call   140007bd8 <free>
   1400021c4:	48 85 db             	test   rbx,rbx
   1400021c7:	75 ef                	jne    1400021b8 <__mingw_TLScallback+0x88>
   1400021c9:	48 8d 0d 30 af 00 00 	lea    rcx,[rip+0xaf30]        # 14000d100 <__mingwthr_cs>
   1400021d0:	48 c7 05 05 af 00 00 	mov    QWORD PTR [rip+0xaf05],0x0        # 14000d0e0 <key_dtor_list>
   1400021d7:	00 00 00 00 
   1400021db:	c7 05 03 af 00 00 00 	mov    DWORD PTR [rip+0xaf03],0x0        # 14000d0e8 <__mingwthr_cs_init>
   1400021e2:	00 00 00 
   1400021e5:	ff 15 e9 bf 00 00    	call   QWORD PTR [rip+0xbfe9]        # 14000e1d4 <__IAT_start__>
   1400021eb:	e9 6c ff ff ff       	jmp    14000215c <__mingw_TLScallback+0x2c>
   1400021f0:	e8 8b f6 ff ff       	call   140001880 <_fpreset>
   1400021f5:	b8 01 00 00 00       	mov    eax,0x1
   1400021fa:	48 83 c4 20          	add    rsp,0x20
   1400021fe:	5b                   	pop    rbx
   1400021ff:	c3                   	ret
   140002200:	e8 bb fd ff ff       	call   140001fc0 <__mingwthr_run_key_dtors.part.0>
   140002205:	eb 93                	jmp    14000219a <__mingw_TLScallback+0x6a>
   140002207:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000220e:	00 00 
   140002210:	48 8d 0d e9 ae 00 00 	lea    rcx,[rip+0xaee9]        # 14000d100 <__mingwthr_cs>
   140002217:	ff 15 d7 bf 00 00    	call   QWORD PTR [rip+0xbfd7]        # 14000e1f4 <__imp_InitializeCriticalSection>
   14000221d:	e9 30 ff ff ff       	jmp    140002152 <__mingw_TLScallback+0x22>
   140002222:	90                   	nop
   140002223:	90                   	nop
   140002224:	90                   	nop
   140002225:	90                   	nop
   140002226:	90                   	nop
   140002227:	90                   	nop
   140002228:	90                   	nop
   140002229:	90                   	nop
   14000222a:	90                   	nop
   14000222b:	90                   	nop
   14000222c:	90                   	nop
   14000222d:	90                   	nop
   14000222e:	90                   	nop
   14000222f:	90                   	nop

0000000140002230 <_ValidateImageBase>:
   140002230:	31 c0                	xor    eax,eax
   140002232:	66 81 39 4d 5a       	cmp    WORD PTR [rcx],0x5a4d
   140002237:	75 0f                	jne    140002248 <_ValidateImageBase+0x18>
   140002239:	48 63 51 3c          	movsxd rdx,DWORD PTR [rcx+0x3c]
   14000223d:	48 01 d1             	add    rcx,rdx
   140002240:	81 39 50 45 00 00    	cmp    DWORD PTR [rcx],0x4550
   140002246:	74 08                	je     140002250 <_ValidateImageBase+0x20>
   140002248:	c3                   	ret
   140002249:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002250:	31 c0                	xor    eax,eax
   140002252:	66 81 79 18 0b 02    	cmp    WORD PTR [rcx+0x18],0x20b
   140002258:	0f 94 c0             	sete   al
   14000225b:	c3                   	ret
   14000225c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000140002260 <_FindPESection>:
   140002260:	48 63 41 3c          	movsxd rax,DWORD PTR [rcx+0x3c]
   140002264:	48 01 c1             	add    rcx,rax
   140002267:	0f b7 41 14          	movzx  eax,WORD PTR [rcx+0x14]
   14000226b:	44 0f b7 41 06       	movzx  r8d,WORD PTR [rcx+0x6]
   140002270:	48 8d 44 01 18       	lea    rax,[rcx+rax*1+0x18]
   140002275:	66 45 85 c0          	test   r8w,r8w
   140002279:	74 32                	je     1400022ad <_FindPESection+0x4d>
   14000227b:	41 8d 48 ff          	lea    ecx,[r8-0x1]
   14000227f:	48 8d 0c 89          	lea    rcx,[rcx+rcx*4]
   140002283:	4c 8d 4c c8 28       	lea    r9,[rax+rcx*8+0x28]
   140002288:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000228f:	00 
   140002290:	44 8b 40 0c          	mov    r8d,DWORD PTR [rax+0xc]
   140002294:	4c 89 c1             	mov    rcx,r8
   140002297:	4c 39 c2             	cmp    rdx,r8
   14000229a:	72 08                	jb     1400022a4 <_FindPESection+0x44>
   14000229c:	03 48 08             	add    ecx,DWORD PTR [rax+0x8]
   14000229f:	48 39 ca             	cmp    rdx,rcx
   1400022a2:	72 0b                	jb     1400022af <_FindPESection+0x4f>
   1400022a4:	48 83 c0 28          	add    rax,0x28
   1400022a8:	4c 39 c8             	cmp    rax,r9
   1400022ab:	75 e3                	jne    140002290 <_FindPESection+0x30>
   1400022ad:	31 c0                	xor    eax,eax
   1400022af:	c3                   	ret

00000001400022b0 <_FindPESectionByName>:
   1400022b0:	57                   	push   rdi
   1400022b1:	56                   	push   rsi
   1400022b2:	53                   	push   rbx
   1400022b3:	48 83 ec 20          	sub    rsp,0x20
   1400022b7:	48 89 ce             	mov    rsi,rcx
   1400022ba:	e8 59 59 00 00       	call   140007c18 <strlen>
   1400022bf:	48 83 f8 08          	cmp    rax,0x8
   1400022c3:	77 7b                	ja     140002340 <_FindPESectionByName+0x90>
   1400022c5:	48 8b 15 74 74 00 00 	mov    rdx,QWORD PTR [rip+0x7474]        # 140009740 <.refptr.__image_base__>
   1400022cc:	31 db                	xor    ebx,ebx
   1400022ce:	66 81 3a 4d 5a       	cmp    WORD PTR [rdx],0x5a4d
   1400022d3:	75 59                	jne    14000232e <_FindPESectionByName+0x7e>
   1400022d5:	48 63 42 3c          	movsxd rax,DWORD PTR [rdx+0x3c]
   1400022d9:	48 01 d0             	add    rax,rdx
   1400022dc:	81 38 50 45 00 00    	cmp    DWORD PTR [rax],0x4550
   1400022e2:	75 4a                	jne    14000232e <_FindPESectionByName+0x7e>
   1400022e4:	66 81 78 18 0b 02    	cmp    WORD PTR [rax+0x18],0x20b
   1400022ea:	75 42                	jne    14000232e <_FindPESectionByName+0x7e>
   1400022ec:	0f b7 50 14          	movzx  edx,WORD PTR [rax+0x14]
   1400022f0:	48 8d 5c 10 18       	lea    rbx,[rax+rdx*1+0x18]
   1400022f5:	0f b7 50 06          	movzx  edx,WORD PTR [rax+0x6]
   1400022f9:	66 85 d2             	test   dx,dx
   1400022fc:	74 42                	je     140002340 <_FindPESectionByName+0x90>
   1400022fe:	8d 42 ff             	lea    eax,[rdx-0x1]
   140002301:	48 8d 04 80          	lea    rax,[rax+rax*4]
   140002305:	48 8d 7c c3 28       	lea    rdi,[rbx+rax*8+0x28]
   14000230a:	eb 0d                	jmp    140002319 <_FindPESectionByName+0x69>
   14000230c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140002310:	48 83 c3 28          	add    rbx,0x28
   140002314:	48 39 fb             	cmp    rbx,rdi
   140002317:	74 27                	je     140002340 <_FindPESectionByName+0x90>
   140002319:	41 b8 08 00 00 00    	mov    r8d,0x8
   14000231f:	48 89 f2             	mov    rdx,rsi
   140002322:	48 89 d9             	mov    rcx,rbx
   140002325:	e8 f6 58 00 00       	call   140007c20 <strncmp>
   14000232a:	85 c0                	test   eax,eax
   14000232c:	75 e2                	jne    140002310 <_FindPESectionByName+0x60>
   14000232e:	48 89 d8             	mov    rax,rbx
   140002331:	48 83 c4 20          	add    rsp,0x20
   140002335:	5b                   	pop    rbx
   140002336:	5e                   	pop    rsi
   140002337:	5f                   	pop    rdi
   140002338:	c3                   	ret
   140002339:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002340:	31 db                	xor    ebx,ebx
   140002342:	48 89 d8             	mov    rax,rbx
   140002345:	48 83 c4 20          	add    rsp,0x20
   140002349:	5b                   	pop    rbx
   14000234a:	5e                   	pop    rsi
   14000234b:	5f                   	pop    rdi
   14000234c:	c3                   	ret
   14000234d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000140002350 <__mingw_GetSectionForAddress>:
   140002350:	48 8b 15 e9 73 00 00 	mov    rdx,QWORD PTR [rip+0x73e9]        # 140009740 <.refptr.__image_base__>
   140002357:	31 c0                	xor    eax,eax
   140002359:	66 81 3a 4d 5a       	cmp    WORD PTR [rdx],0x5a4d
   14000235e:	75 10                	jne    140002370 <__mingw_GetSectionForAddress+0x20>
   140002360:	4c 63 42 3c          	movsxd r8,DWORD PTR [rdx+0x3c]
   140002364:	49 01 d0             	add    r8,rdx
   140002367:	41 81 38 50 45 00 00 	cmp    DWORD PTR [r8],0x4550
   14000236e:	74 08                	je     140002378 <__mingw_GetSectionForAddress+0x28>
   140002370:	c3                   	ret
   140002371:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002378:	66 41 81 78 18 0b 02 	cmp    WORD PTR [r8+0x18],0x20b
   14000237f:	75 ef                	jne    140002370 <__mingw_GetSectionForAddress+0x20>
   140002381:	41 0f b7 40 14       	movzx  eax,WORD PTR [r8+0x14]
   140002386:	48 29 d1             	sub    rcx,rdx
   140002389:	49 8d 44 00 18       	lea    rax,[r8+rax*1+0x18]
   14000238e:	45 0f b7 40 06       	movzx  r8d,WORD PTR [r8+0x6]
   140002393:	66 45 85 c0          	test   r8w,r8w
   140002397:	74 34                	je     1400023cd <__mingw_GetSectionForAddress+0x7d>
   140002399:	41 8d 50 ff          	lea    edx,[r8-0x1]
   14000239d:	48 8d 14 92          	lea    rdx,[rdx+rdx*4]
   1400023a1:	4c 8d 4c d0 28       	lea    r9,[rax+rdx*8+0x28]
   1400023a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400023ad:	00 00 00 
   1400023b0:	44 8b 40 0c          	mov    r8d,DWORD PTR [rax+0xc]
   1400023b4:	4c 89 c2             	mov    rdx,r8
   1400023b7:	4c 39 c1             	cmp    rcx,r8
   1400023ba:	72 08                	jb     1400023c4 <__mingw_GetSectionForAddress+0x74>
   1400023bc:	03 50 08             	add    edx,DWORD PTR [rax+0x8]
   1400023bf:	48 39 d1             	cmp    rcx,rdx
   1400023c2:	72 ac                	jb     140002370 <__mingw_GetSectionForAddress+0x20>
   1400023c4:	48 83 c0 28          	add    rax,0x28
   1400023c8:	4c 39 c8             	cmp    rax,r9
   1400023cb:	75 e3                	jne    1400023b0 <__mingw_GetSectionForAddress+0x60>
   1400023cd:	31 c0                	xor    eax,eax
   1400023cf:	c3                   	ret

00000001400023d0 <__mingw_GetSectionCount>:
   1400023d0:	48 8b 05 69 73 00 00 	mov    rax,QWORD PTR [rip+0x7369]        # 140009740 <.refptr.__image_base__>
   1400023d7:	31 c9                	xor    ecx,ecx
   1400023d9:	66 81 38 4d 5a       	cmp    WORD PTR [rax],0x5a4d
   1400023de:	75 0f                	jne    1400023ef <__mingw_GetSectionCount+0x1f>
   1400023e0:	48 63 50 3c          	movsxd rdx,DWORD PTR [rax+0x3c]
   1400023e4:	48 01 d0             	add    rax,rdx
   1400023e7:	81 38 50 45 00 00    	cmp    DWORD PTR [rax],0x4550
   1400023ed:	74 09                	je     1400023f8 <__mingw_GetSectionCount+0x28>
   1400023ef:	89 c8                	mov    eax,ecx
   1400023f1:	c3                   	ret
   1400023f2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400023f8:	66 81 78 18 0b 02    	cmp    WORD PTR [rax+0x18],0x20b
   1400023fe:	75 ef                	jne    1400023ef <__mingw_GetSectionCount+0x1f>
   140002400:	0f b7 48 06          	movzx  ecx,WORD PTR [rax+0x6]
   140002404:	89 c8                	mov    eax,ecx
   140002406:	c3                   	ret
   140002407:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000240e:	00 00 

0000000140002410 <_FindPESectionExec>:
   140002410:	4c 8b 05 29 73 00 00 	mov    r8,QWORD PTR [rip+0x7329]        # 140009740 <.refptr.__image_base__>
   140002417:	31 c0                	xor    eax,eax
   140002419:	66 41 81 38 4d 5a    	cmp    WORD PTR [r8],0x5a4d
   14000241f:	75 0f                	jne    140002430 <_FindPESectionExec+0x20>
   140002421:	49 63 50 3c          	movsxd rdx,DWORD PTR [r8+0x3c]
   140002425:	4c 01 c2             	add    rdx,r8
   140002428:	81 3a 50 45 00 00    	cmp    DWORD PTR [rdx],0x4550
   14000242e:	74 08                	je     140002438 <_FindPESectionExec+0x28>
   140002430:	c3                   	ret
   140002431:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002438:	66 81 7a 18 0b 02    	cmp    WORD PTR [rdx+0x18],0x20b
   14000243e:	75 f0                	jne    140002430 <_FindPESectionExec+0x20>
   140002440:	0f b7 42 14          	movzx  eax,WORD PTR [rdx+0x14]
   140002444:	44 0f b7 42 06       	movzx  r8d,WORD PTR [rdx+0x6]
   140002449:	48 8d 44 02 18       	lea    rax,[rdx+rax*1+0x18]
   14000244e:	66 45 85 c0          	test   r8w,r8w
   140002452:	74 2c                	je     140002480 <_FindPESectionExec+0x70>
   140002454:	41 8d 50 ff          	lea    edx,[r8-0x1]
   140002458:	48 8d 14 92          	lea    rdx,[rdx+rdx*4]
   14000245c:	48 8d 54 d0 28       	lea    rdx,[rax+rdx*8+0x28]
   140002461:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002468:	f6 40 27 20          	test   BYTE PTR [rax+0x27],0x20
   14000246c:	74 09                	je     140002477 <_FindPESectionExec+0x67>
   14000246e:	48 85 c9             	test   rcx,rcx
   140002471:	74 bd                	je     140002430 <_FindPESectionExec+0x20>
   140002473:	48 83 e9 01          	sub    rcx,0x1
   140002477:	48 83 c0 28          	add    rax,0x28
   14000247b:	48 39 d0             	cmp    rax,rdx
   14000247e:	75 e8                	jne    140002468 <_FindPESectionExec+0x58>
   140002480:	31 c0                	xor    eax,eax
   140002482:	c3                   	ret
   140002483:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   14000248a:	00 00 00 00 
   14000248e:	66 90                	xchg   ax,ax

0000000140002490 <_GetPEImageBase>:
   140002490:	48 8b 05 a9 72 00 00 	mov    rax,QWORD PTR [rip+0x72a9]        # 140009740 <.refptr.__image_base__>
   140002497:	31 d2                	xor    edx,edx
   140002499:	66 81 38 4d 5a       	cmp    WORD PTR [rax],0x5a4d
   14000249e:	75 0f                	jne    1400024af <_GetPEImageBase+0x1f>
   1400024a0:	48 63 48 3c          	movsxd rcx,DWORD PTR [rax+0x3c]
   1400024a4:	48 01 c1             	add    rcx,rax
   1400024a7:	81 39 50 45 00 00    	cmp    DWORD PTR [rcx],0x4550
   1400024ad:	74 09                	je     1400024b8 <_GetPEImageBase+0x28>
   1400024af:	48 89 d0             	mov    rax,rdx
   1400024b2:	c3                   	ret
   1400024b3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400024b8:	66 81 79 18 0b 02    	cmp    WORD PTR [rcx+0x18],0x20b
   1400024be:	48 0f 44 d0          	cmove  rdx,rax
   1400024c2:	48 89 d0             	mov    rax,rdx
   1400024c5:	c3                   	ret
   1400024c6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400024cd:	00 00 00 

00000001400024d0 <_IsNonwritableInCurrentImage>:
   1400024d0:	48 8b 15 69 72 00 00 	mov    rdx,QWORD PTR [rip+0x7269]        # 140009740 <.refptr.__image_base__>
   1400024d7:	31 c0                	xor    eax,eax
   1400024d9:	66 81 3a 4d 5a       	cmp    WORD PTR [rdx],0x5a4d
   1400024de:	75 10                	jne    1400024f0 <_IsNonwritableInCurrentImage+0x20>
   1400024e0:	4c 63 42 3c          	movsxd r8,DWORD PTR [rdx+0x3c]
   1400024e4:	49 01 d0             	add    r8,rdx
   1400024e7:	41 81 38 50 45 00 00 	cmp    DWORD PTR [r8],0x4550
   1400024ee:	74 08                	je     1400024f8 <_IsNonwritableInCurrentImage+0x28>
   1400024f0:	c3                   	ret
   1400024f1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400024f8:	66 41 81 78 18 0b 02 	cmp    WORD PTR [r8+0x18],0x20b
   1400024ff:	75 ef                	jne    1400024f0 <_IsNonwritableInCurrentImage+0x20>
   140002501:	48 29 d1             	sub    rcx,rdx
   140002504:	45 0f b7 48 06       	movzx  r9d,WORD PTR [r8+0x6]
   140002509:	41 0f b7 50 14       	movzx  edx,WORD PTR [r8+0x14]
   14000250e:	49 8d 54 10 18       	lea    rdx,[r8+rdx*1+0x18]
   140002513:	66 45 85 c9          	test   r9w,r9w
   140002517:	74 d7                	je     1400024f0 <_IsNonwritableInCurrentImage+0x20>
   140002519:	41 8d 41 ff          	lea    eax,[r9-0x1]
   14000251d:	48 8d 04 80          	lea    rax,[rax+rax*4]
   140002521:	4c 8d 4c c2 28       	lea    r9,[rdx+rax*8+0x28]
   140002526:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000252d:	00 00 00 
   140002530:	44 8b 42 0c          	mov    r8d,DWORD PTR [rdx+0xc]
   140002534:	4c 89 c0             	mov    rax,r8
   140002537:	4c 39 c1             	cmp    rcx,r8
   14000253a:	72 08                	jb     140002544 <_IsNonwritableInCurrentImage+0x74>
   14000253c:	03 42 08             	add    eax,DWORD PTR [rdx+0x8]
   14000253f:	48 39 c1             	cmp    rcx,rax
   140002542:	72 0c                	jb     140002550 <_IsNonwritableInCurrentImage+0x80>
   140002544:	48 83 c2 28          	add    rdx,0x28
   140002548:	49 39 d1             	cmp    r9,rdx
   14000254b:	75 e3                	jne    140002530 <_IsNonwritableInCurrentImage+0x60>
   14000254d:	31 c0                	xor    eax,eax
   14000254f:	c3                   	ret
   140002550:	8b 42 24             	mov    eax,DWORD PTR [rdx+0x24]
   140002553:	f7 d0                	not    eax
   140002555:	c1 e8 1f             	shr    eax,0x1f
   140002558:	c3                   	ret
   140002559:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000140002560 <__mingw_enum_import_library_names>:
   140002560:	4c 8b 1d d9 71 00 00 	mov    r11,QWORD PTR [rip+0x71d9]        # 140009740 <.refptr.__image_base__>
   140002567:	45 31 c9             	xor    r9d,r9d
   14000256a:	66 41 81 3b 4d 5a    	cmp    WORD PTR [r11],0x5a4d
   140002570:	75 10                	jne    140002582 <__mingw_enum_import_library_names+0x22>
   140002572:	4d 63 43 3c          	movsxd r8,DWORD PTR [r11+0x3c]
   140002576:	4d 01 d8             	add    r8,r11
   140002579:	41 81 38 50 45 00 00 	cmp    DWORD PTR [r8],0x4550
   140002580:	74 0e                	je     140002590 <__mingw_enum_import_library_names+0x30>
   140002582:	4c 89 c8             	mov    rax,r9
   140002585:	c3                   	ret
   140002586:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000258d:	00 00 00 
   140002590:	66 41 81 78 18 0b 02 	cmp    WORD PTR [r8+0x18],0x20b
   140002597:	75 e9                	jne    140002582 <__mingw_enum_import_library_names+0x22>
   140002599:	41 8b 80 90 00 00 00 	mov    eax,DWORD PTR [r8+0x90]
   1400025a0:	85 c0                	test   eax,eax
   1400025a2:	74 de                	je     140002582 <__mingw_enum_import_library_names+0x22>
   1400025a4:	41 0f b7 50 14       	movzx  edx,WORD PTR [r8+0x14]
   1400025a9:	45 0f b7 50 06       	movzx  r10d,WORD PTR [r8+0x6]
   1400025ae:	49 8d 54 10 18       	lea    rdx,[r8+rdx*1+0x18]
   1400025b3:	66 45 85 d2          	test   r10w,r10w
   1400025b7:	74 c9                	je     140002582 <__mingw_enum_import_library_names+0x22>
   1400025b9:	45 8d 42 ff          	lea    r8d,[r10-0x1]
   1400025bd:	4f 8d 04 80          	lea    r8,[r8+r8*4]
   1400025c1:	4e 8d 54 c2 28       	lea    r10,[rdx+r8*8+0x28]
   1400025c6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400025cd:	00 00 00 
   1400025d0:	44 8b 4a 0c          	mov    r9d,DWORD PTR [rdx+0xc]
   1400025d4:	4d 89 c8             	mov    r8,r9
   1400025d7:	4c 39 c8             	cmp    rax,r9
   1400025da:	72 09                	jb     1400025e5 <__mingw_enum_import_library_names+0x85>
   1400025dc:	44 03 42 08          	add    r8d,DWORD PTR [rdx+0x8]
   1400025e0:	4c 39 c0             	cmp    rax,r8
   1400025e3:	72 13                	jb     1400025f8 <__mingw_enum_import_library_names+0x98>
   1400025e5:	48 83 c2 28          	add    rdx,0x28
   1400025e9:	4c 39 d2             	cmp    rdx,r10
   1400025ec:	75 e2                	jne    1400025d0 <__mingw_enum_import_library_names+0x70>
   1400025ee:	45 31 c9             	xor    r9d,r9d
   1400025f1:	4c 89 c8             	mov    rax,r9
   1400025f4:	c3                   	ret
   1400025f5:	0f 1f 00             	nop    DWORD PTR [rax]
   1400025f8:	4c 01 d8             	add    rax,r11
   1400025fb:	eb 0a                	jmp    140002607 <__mingw_enum_import_library_names+0xa7>
   1400025fd:	0f 1f 00             	nop    DWORD PTR [rax]
   140002600:	83 e9 01             	sub    ecx,0x1
   140002603:	48 83 c0 14          	add    rax,0x14
   140002607:	44 8b 40 04          	mov    r8d,DWORD PTR [rax+0x4]
   14000260b:	45 85 c0             	test   r8d,r8d
   14000260e:	75 07                	jne    140002617 <__mingw_enum_import_library_names+0xb7>
   140002610:	8b 50 0c             	mov    edx,DWORD PTR [rax+0xc]
   140002613:	85 d2                	test   edx,edx
   140002615:	74 d7                	je     1400025ee <__mingw_enum_import_library_names+0x8e>
   140002617:	85 c9                	test   ecx,ecx
   140002619:	7f e5                	jg     140002600 <__mingw_enum_import_library_names+0xa0>
   14000261b:	44 8b 48 0c          	mov    r9d,DWORD PTR [rax+0xc]
   14000261f:	4d 01 d9             	add    r9,r11
   140002622:	4c 89 c8             	mov    rax,r9
   140002625:	c3                   	ret
   140002626:	90                   	nop
   140002627:	90                   	nop
   140002628:	90                   	nop
   140002629:	90                   	nop
   14000262a:	90                   	nop
   14000262b:	90                   	nop
   14000262c:	90                   	nop
   14000262d:	90                   	nop
   14000262e:	90                   	nop
   14000262f:	90                   	nop

0000000140002630 <___chkstk_ms>:
   140002630:	51                   	push   rcx
   140002631:	50                   	push   rax
   140002632:	48 3d 00 10 00 00    	cmp    rax,0x1000
   140002638:	48 8d 4c 24 18       	lea    rcx,[rsp+0x18]
   14000263d:	72 19                	jb     140002658 <___chkstk_ms+0x28>
   14000263f:	48 81 e9 00 10 00 00 	sub    rcx,0x1000
   140002646:	48 83 09 00          	or     QWORD PTR [rcx],0x0
   14000264a:	48 2d 00 10 00 00    	sub    rax,0x1000
   140002650:	48 3d 00 10 00 00    	cmp    rax,0x1000
   140002656:	77 e7                	ja     14000263f <___chkstk_ms+0xf>
   140002658:	48 29 c1             	sub    rcx,rax
   14000265b:	48 83 09 00          	or     QWORD PTR [rcx],0x0
   14000265f:	58                   	pop    rax
   140002660:	59                   	pop    rcx
   140002661:	c3                   	ret
   140002662:	90                   	nop
   140002663:	90                   	nop
   140002664:	90                   	nop
   140002665:	90                   	nop
   140002666:	90                   	nop
   140002667:	90                   	nop
   140002668:	90                   	nop
   140002669:	90                   	nop
   14000266a:	90                   	nop
   14000266b:	90                   	nop
   14000266c:	90                   	nop
   14000266d:	90                   	nop
   14000266e:	90                   	nop
   14000266f:	90                   	nop

0000000140002670 <__mingw_vfprintf>:
   140002670:	57                   	push   rdi
   140002671:	56                   	push   rsi
   140002672:	53                   	push   rbx
   140002673:	48 83 ec 30          	sub    rsp,0x30
   140002677:	4c 89 c7             	mov    rdi,r8
   14000267a:	48 89 cb             	mov    rbx,rcx
   14000267d:	48 89 d6             	mov    rsi,rdx
   140002680:	e8 9b 4e 00 00       	call   140007520 <_lock_file>
   140002685:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
   14000268a:	49 89 f1             	mov    r9,rsi
   14000268d:	45 31 c0             	xor    r8d,r8d
   140002690:	48 89 da             	mov    rdx,rbx
   140002693:	b9 00 60 00 00       	mov    ecx,0x6000
   140002698:	e8 23 1b 00 00       	call   1400041c0 <__mingw_pformat>
   14000269d:	48 89 d9             	mov    rcx,rbx
   1400026a0:	89 c6                	mov    esi,eax
   1400026a2:	e8 e9 4e 00 00       	call   140007590 <_unlock_file>
   1400026a7:	89 f0                	mov    eax,esi
   1400026a9:	48 83 c4 30          	add    rsp,0x30
   1400026ad:	5b                   	pop    rbx
   1400026ae:	5e                   	pop    rsi
   1400026af:	5f                   	pop    rdi
   1400026b0:	c3                   	ret
   1400026b1:	90                   	nop
   1400026b2:	90                   	nop
   1400026b3:	90                   	nop
   1400026b4:	90                   	nop
   1400026b5:	90                   	nop
   1400026b6:	90                   	nop
   1400026b7:	90                   	nop
   1400026b8:	90                   	nop
   1400026b9:	90                   	nop
   1400026ba:	90                   	nop
   1400026bb:	90                   	nop
   1400026bc:	90                   	nop
   1400026bd:	90                   	nop
   1400026be:	90                   	nop
   1400026bf:	90                   	nop

00000001400026c0 <__pformat_cvt>:
   1400026c0:	48 83 ec 68          	sub    rsp,0x68
   1400026c4:	48 8b 02             	mov    rax,QWORD PTR [rdx]
   1400026c7:	8b 52 08             	mov    edx,DWORD PTR [rdx+0x8]
   1400026ca:	41 89 d2             	mov    r10d,edx
   1400026cd:	41 89 cb             	mov    r11d,ecx
   1400026d0:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
   1400026d5:	48 89 d1             	mov    rcx,rdx
   1400026d8:	89 54 24 58          	mov    DWORD PTR [rsp+0x58],edx
   1400026dc:	66 41 81 e2 ff 7f    	and    r10w,0x7fff
   1400026e2:	75 74                	jne    140002758 <__pformat_cvt+0x98>
   1400026e4:	48 89 c2             	mov    rdx,rax
   1400026e7:	48 c1 ea 20          	shr    rdx,0x20
   1400026eb:	09 d0                	or     eax,edx
   1400026ed:	0f 84 8d 00 00 00    	je     140002780 <__pformat_cvt+0xc0>
   1400026f3:	85 d2                	test   edx,edx
   1400026f5:	0f 89 95 00 00 00    	jns    140002790 <__pformat_cvt+0xd0>
   1400026fb:	41 8d 92 c2 bf ff ff 	lea    edx,[r10-0x403e]
   140002702:	b8 01 00 00 00       	mov    eax,0x1
   140002707:	0f bf d2             	movsx  edx,dx
   14000270a:	89 44 24 44          	mov    DWORD PTR [rsp+0x44],eax
   14000270e:	81 e1 00 80 00 00    	and    ecx,0x8000
   140002714:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
   14000271b:	00 
   14000271c:	89 08                	mov    DWORD PTR [rax],ecx
   14000271e:	48 8d 44 24 48       	lea    rax,[rsp+0x48]
   140002723:	48 8d 0d 36 59 00 00 	lea    rcx,[rip+0x5936]        # 140008060 <fpi.0>
   14000272a:	4c 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],r9
   14000272f:	4c 8d 4c 24 44       	lea    r9,[rsp+0x44]
   140002734:	44 89 44 24 28       	mov    DWORD PTR [rsp+0x28],r8d
   140002739:	4c 8d 44 24 50       	lea    r8,[rsp+0x50]
   14000273e:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
   140002743:	44 89 5c 24 20       	mov    DWORD PTR [rsp+0x20],r11d
   140002748:	e8 b3 27 00 00       	call   140004f00 <__gdtoa>
   14000274d:	48 83 c4 68          	add    rsp,0x68
   140002751:	c3                   	ret
   140002752:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002758:	66 41 81 fa ff 7f    	cmp    r10w,0x7fff
   14000275e:	75 9b                	jne    1400026fb <__pformat_cvt+0x3b>
   140002760:	48 89 c2             	mov    rdx,rax
   140002763:	48 c1 ea 20          	shr    rdx,0x20
   140002767:	81 e2 ff ff ff 7f    	and    edx,0x7fffffff
   14000276d:	09 c2                	or     edx,eax
   14000276f:	74 2f                	je     1400027a0 <__pformat_cvt+0xe0>
   140002771:	c7 44 24 44 04 00 00 	mov    DWORD PTR [rsp+0x44],0x4
   140002778:	00 
   140002779:	31 d2                	xor    edx,edx
   14000277b:	31 c9                	xor    ecx,ecx
   14000277d:	eb 95                	jmp    140002714 <__pformat_cvt+0x54>
   14000277f:	90                   	nop
   140002780:	31 c0                	xor    eax,eax
   140002782:	31 d2                	xor    edx,edx
   140002784:	eb 84                	jmp    14000270a <__pformat_cvt+0x4a>
   140002786:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000278d:	00 00 00 
   140002790:	b8 02 00 00 00       	mov    eax,0x2
   140002795:	ba c3 bf ff ff       	mov    edx,0xffffbfc3
   14000279a:	e9 6b ff ff ff       	jmp    14000270a <__pformat_cvt+0x4a>
   14000279f:	90                   	nop
   1400027a0:	b8 03 00 00 00       	mov    eax,0x3
   1400027a5:	31 d2                	xor    edx,edx
   1400027a7:	e9 5e ff ff ff       	jmp    14000270a <__pformat_cvt+0x4a>
   1400027ac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000001400027b0 <__pformat_putc>:
   1400027b0:	53                   	push   rbx
   1400027b1:	48 83 ec 20          	sub    rsp,0x20
   1400027b5:	48 89 d3             	mov    rbx,rdx
   1400027b8:	8b 52 08             	mov    edx,DWORD PTR [rdx+0x8]
   1400027bb:	f6 c6 40             	test   dh,0x40
   1400027be:	75 08                	jne    1400027c8 <__pformat_putc+0x18>
   1400027c0:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   1400027c3:	39 43 28             	cmp    DWORD PTR [rbx+0x28],eax
   1400027c6:	7e 12                	jle    1400027da <__pformat_putc+0x2a>
   1400027c8:	48 8b 03             	mov    rax,QWORD PTR [rbx]
   1400027cb:	80 e6 20             	and    dh,0x20
   1400027ce:	75 20                	jne    1400027f0 <__pformat_putc+0x40>
   1400027d0:	48 63 53 24          	movsxd rdx,DWORD PTR [rbx+0x24]
   1400027d4:	88 0c 10             	mov    BYTE PTR [rax+rdx*1],cl
   1400027d7:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   1400027da:	83 c0 01             	add    eax,0x1
   1400027dd:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   1400027e0:	48 83 c4 20          	add    rsp,0x20
   1400027e4:	5b                   	pop    rbx
   1400027e5:	c3                   	ret
   1400027e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400027ed:	00 00 00 
   1400027f0:	48 89 c2             	mov    rdx,rax
   1400027f3:	e8 d8 53 00 00       	call   140007bd0 <fputc>
   1400027f8:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   1400027fb:	83 c0 01             	add    eax,0x1
   1400027fe:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   140002801:	48 83 c4 20          	add    rsp,0x20
   140002805:	5b                   	pop    rbx
   140002806:	c3                   	ret
   140002807:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000280e:	00 00 

0000000140002810 <__pformat_wputchars>:
   140002810:	41 57                	push   r15
   140002812:	41 56                	push   r14
   140002814:	41 55                	push   r13
   140002816:	41 54                	push   r12
   140002818:	55                   	push   rbp
   140002819:	57                   	push   rdi
   14000281a:	56                   	push   rsi
   14000281b:	53                   	push   rbx
   14000281c:	48 83 ec 48          	sub    rsp,0x48
   140002820:	4c 8d 6c 24 28       	lea    r13,[rsp+0x28]
   140002825:	48 8d 7c 24 30       	lea    rdi,[rsp+0x30]
   14000282a:	89 d6                	mov    esi,edx
   14000282c:	4c 89 c3             	mov    rbx,r8
   14000282f:	31 d2                	xor    edx,edx
   140002831:	48 89 cd             	mov    rbp,rcx
   140002834:	4d 89 e8             	mov    r8,r13
   140002837:	48 89 f9             	mov    rcx,rdi
   14000283a:	e8 81 4e 00 00       	call   1400076c0 <wcrtomb>
   14000283f:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   140002842:	39 c6                	cmp    esi,eax
   140002844:	89 c2                	mov    edx,eax
   140002846:	0f 4e d6             	cmovle edx,esi
   140002849:	85 c0                	test   eax,eax
   14000284b:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   14000284e:	0f 49 f2             	cmovns esi,edx
   140002851:	39 f0                	cmp    eax,esi
   140002853:	0f 8f e2 00 00 00    	jg     14000293b <__pformat_wputchars+0x12b>
   140002859:	c7 43 0c ff ff ff ff 	mov    DWORD PTR [rbx+0xc],0xffffffff
   140002860:	44 8d 66 ff          	lea    r12d,[rsi-0x1]
   140002864:	85 f6                	test   esi,esi
   140002866:	0f 8e 29 01 00 00    	jle    140002995 <__pformat_wputchars+0x185>
   14000286c:	31 f6                	xor    esi,esi
   14000286e:	41 83 c4 01          	add    r12d,0x1
   140002872:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002878:	0f b7 54 75 00       	movzx  edx,WORD PTR [rbp+rsi*2+0x0]
   14000287d:	4d 89 e8             	mov    r8,r13
   140002880:	48 89 f9             	mov    rcx,rdi
   140002883:	e8 38 4e 00 00       	call   1400076c0 <wcrtomb>
   140002888:	85 c0                	test   eax,eax
   14000288a:	0f 8e 8d 00 00 00    	jle    14000291d <__pformat_wputchars+0x10d>
   140002890:	83 e8 01             	sub    eax,0x1
   140002893:	49 89 fe             	mov    r14,rdi
   140002896:	4c 8d 7c 07 01       	lea    r15,[rdi+rax*1+0x1]
   14000289b:	eb 18                	jmp    1400028b5 <__pformat_wputchars+0xa5>
   14000289d:	0f 1f 00             	nop    DWORD PTR [rax]
   1400028a0:	48 63 53 24          	movsxd rdx,DWORD PTR [rbx+0x24]
   1400028a4:	88 0c 10             	mov    BYTE PTR [rax+rdx*1],cl
   1400028a7:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   1400028aa:	83 c0 01             	add    eax,0x1
   1400028ad:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   1400028b0:	4d 39 fe             	cmp    r14,r15
   1400028b3:	74 37                	je     1400028ec <__pformat_wputchars+0xdc>
   1400028b5:	8b 53 08             	mov    edx,DWORD PTR [rbx+0x8]
   1400028b8:	49 83 c6 01          	add    r14,0x1
   1400028bc:	f6 c6 40             	test   dh,0x40
   1400028bf:	75 08                	jne    1400028c9 <__pformat_wputchars+0xb9>
   1400028c1:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   1400028c4:	39 43 28             	cmp    DWORD PTR [rbx+0x28],eax
   1400028c7:	7e e1                	jle    1400028aa <__pformat_wputchars+0x9a>
   1400028c9:	41 0f be 4e ff       	movsx  ecx,BYTE PTR [r14-0x1]
   1400028ce:	48 8b 03             	mov    rax,QWORD PTR [rbx]
   1400028d1:	80 e6 20             	and    dh,0x20
   1400028d4:	74 ca                	je     1400028a0 <__pformat_wputchars+0x90>
   1400028d6:	48 89 c2             	mov    rdx,rax
   1400028d9:	e8 f2 52 00 00       	call   140007bd0 <fputc>
   1400028de:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   1400028e1:	83 c0 01             	add    eax,0x1
   1400028e4:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   1400028e7:	4d 39 fe             	cmp    r14,r15
   1400028ea:	75 c9                	jne    1400028b5 <__pformat_wputchars+0xa5>
   1400028ec:	48 83 c6 01          	add    rsi,0x1
   1400028f0:	44 89 e0             	mov    eax,r12d
   1400028f3:	29 f0                	sub    eax,esi
   1400028f5:	85 c0                	test   eax,eax
   1400028f7:	0f 8f 7b ff ff ff    	jg     140002878 <__pformat_wputchars+0x68>
   1400028fd:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140002900:	8d 50 ff             	lea    edx,[rax-0x1]
   140002903:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140002906:	85 c0                	test   eax,eax
   140002908:	7e 20                	jle    14000292a <__pformat_wputchars+0x11a>
   14000290a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002910:	48 89 da             	mov    rdx,rbx
   140002913:	b9 20 00 00 00       	mov    ecx,0x20
   140002918:	e8 93 fe ff ff       	call   1400027b0 <__pformat_putc>
   14000291d:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140002920:	8d 50 ff             	lea    edx,[rax-0x1]
   140002923:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140002926:	85 c0                	test   eax,eax
   140002928:	7f e6                	jg     140002910 <__pformat_wputchars+0x100>
   14000292a:	48 83 c4 48          	add    rsp,0x48
   14000292e:	5b                   	pop    rbx
   14000292f:	5e                   	pop    rsi
   140002930:	5f                   	pop    rdi
   140002931:	5d                   	pop    rbp
   140002932:	41 5c                	pop    r12
   140002934:	41 5d                	pop    r13
   140002936:	41 5e                	pop    r14
   140002938:	41 5f                	pop    r15
   14000293a:	c3                   	ret
   14000293b:	29 f0                	sub    eax,esi
   14000293d:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   140002940:	f6 43 09 04          	test   BYTE PTR [rbx+0x9],0x4
   140002944:	75 3a                	jne    140002980 <__pformat_wputchars+0x170>
   140002946:	83 e8 01             	sub    eax,0x1
   140002949:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   14000294c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140002950:	48 89 da             	mov    rdx,rbx
   140002953:	b9 20 00 00 00       	mov    ecx,0x20
   140002958:	e8 53 fe ff ff       	call   1400027b0 <__pformat_putc>
   14000295d:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140002960:	8d 50 ff             	lea    edx,[rax-0x1]
   140002963:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140002966:	85 c0                	test   eax,eax
   140002968:	75 e6                	jne    140002950 <__pformat_wputchars+0x140>
   14000296a:	44 8d 66 ff          	lea    r12d,[rsi-0x1]
   14000296e:	85 f6                	test   esi,esi
   140002970:	0f 8f f6 fe ff ff    	jg     14000286c <__pformat_wputchars+0x5c>
   140002976:	eb a5                	jmp    14000291d <__pformat_wputchars+0x10d>
   140002978:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000297f:	00 
   140002980:	44 8d 66 ff          	lea    r12d,[rsi-0x1]
   140002984:	85 f6                	test   esi,esi
   140002986:	0f 8f e0 fe ff ff    	jg     14000286c <__pformat_wputchars+0x5c>
   14000298c:	83 6b 0c 01          	sub    DWORD PTR [rbx+0xc],0x1
   140002990:	e9 7b ff ff ff       	jmp    140002910 <__pformat_wputchars+0x100>
   140002995:	c7 43 0c fe ff ff ff 	mov    DWORD PTR [rbx+0xc],0xfffffffe
   14000299c:	eb 8c                	jmp    14000292a <__pformat_wputchars+0x11a>
   14000299e:	66 90                	xchg   ax,ax

00000001400029a0 <__pformat_putchars>:
   1400029a0:	57                   	push   rdi
   1400029a1:	56                   	push   rsi
   1400029a2:	53                   	push   rbx
   1400029a3:	48 83 ec 20          	sub    rsp,0x20
   1400029a7:	41 8b 40 10          	mov    eax,DWORD PTR [r8+0x10]
   1400029ab:	89 d7                	mov    edi,edx
   1400029ad:	39 c2                	cmp    edx,eax
   1400029af:	89 c2                	mov    edx,eax
   1400029b1:	48 89 ce             	mov    rsi,rcx
   1400029b4:	0f 4e d7             	cmovle edx,edi
   1400029b7:	85 c0                	test   eax,eax
   1400029b9:	41 8b 40 0c          	mov    eax,DWORD PTR [r8+0xc]
   1400029bd:	4c 89 c3             	mov    rbx,r8
   1400029c0:	0f 49 fa             	cmovns edi,edx
   1400029c3:	39 f8                	cmp    eax,edi
   1400029c5:	0f 8f bd 00 00 00    	jg     140002a88 <__pformat_putchars+0xe8>
   1400029cb:	41 c7 40 0c ff ff ff 	mov    DWORD PTR [r8+0xc],0xffffffff
   1400029d2:	ff 
   1400029d3:	8d 57 ff             	lea    edx,[rdi-0x1]
   1400029d6:	85 ff                	test   edi,edi
   1400029d8:	0f 84 97 00 00 00    	je     140002a75 <__pformat_putchars+0xd5>
   1400029de:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
   1400029e1:	8d 7a 01             	lea    edi,[rdx+0x1]
   1400029e4:	48 01 f7             	add    rdi,rsi
   1400029e7:	eb 1f                	jmp    140002a08 <__pformat_putchars+0x68>
   1400029e9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400029f0:	48 63 43 24          	movsxd rax,DWORD PTR [rbx+0x24]
   1400029f4:	88 0c 02             	mov    BYTE PTR [rdx+rax*1],cl
   1400029f7:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   1400029fa:	83 c2 01             	add    edx,0x1
   1400029fd:	89 53 24             	mov    DWORD PTR [rbx+0x24],edx
   140002a00:	48 39 fe             	cmp    rsi,rdi
   140002a03:	74 3c                	je     140002a41 <__pformat_putchars+0xa1>
   140002a05:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
   140002a08:	48 83 c6 01          	add    rsi,0x1
   140002a0c:	f6 c4 40             	test   ah,0x40
   140002a0f:	75 08                	jne    140002a19 <__pformat_putchars+0x79>
   140002a11:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140002a14:	39 53 28             	cmp    DWORD PTR [rbx+0x28],edx
   140002a17:	7e e1                	jle    1400029fa <__pformat_putchars+0x5a>
   140002a19:	0f be 4e ff          	movsx  ecx,BYTE PTR [rsi-0x1]
   140002a1d:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   140002a20:	f6 c4 20             	test   ah,0x20
   140002a23:	74 cb                	je     1400029f0 <__pformat_putchars+0x50>
   140002a25:	e8 a6 51 00 00       	call   140007bd0 <fputc>
   140002a2a:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140002a2d:	eb cb                	jmp    1400029fa <__pformat_putchars+0x5a>
   140002a2f:	90                   	nop
   140002a30:	48 63 43 24          	movsxd rax,DWORD PTR [rbx+0x24]
   140002a34:	c6 04 02 20          	mov    BYTE PTR [rdx+rax*1],0x20
   140002a38:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140002a3b:	83 c2 01             	add    edx,0x1
   140002a3e:	89 53 24             	mov    DWORD PTR [rbx+0x24],edx
   140002a41:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140002a44:	8d 50 ff             	lea    edx,[rax-0x1]
   140002a47:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140002a4a:	85 c0                	test   eax,eax
   140002a4c:	7e 2e                	jle    140002a7c <__pformat_putchars+0xdc>
   140002a4e:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
   140002a51:	f6 c4 40             	test   ah,0x40
   140002a54:	75 08                	jne    140002a5e <__pformat_putchars+0xbe>
   140002a56:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140002a59:	39 53 28             	cmp    DWORD PTR [rbx+0x28],edx
   140002a5c:	7e dd                	jle    140002a3b <__pformat_putchars+0x9b>
   140002a5e:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   140002a61:	f6 c4 20             	test   ah,0x20
   140002a64:	74 ca                	je     140002a30 <__pformat_putchars+0x90>
   140002a66:	b9 20 00 00 00       	mov    ecx,0x20
   140002a6b:	e8 60 51 00 00       	call   140007bd0 <fputc>
   140002a70:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140002a73:	eb c6                	jmp    140002a3b <__pformat_putchars+0x9b>
   140002a75:	c7 43 0c fe ff ff ff 	mov    DWORD PTR [rbx+0xc],0xfffffffe
   140002a7c:	48 83 c4 20          	add    rsp,0x20
   140002a80:	5b                   	pop    rbx
   140002a81:	5e                   	pop    rsi
   140002a82:	5f                   	pop    rdi
   140002a83:	c3                   	ret
   140002a84:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140002a88:	29 f8                	sub    eax,edi
   140002a8a:	41 89 40 0c          	mov    DWORD PTR [r8+0xc],eax
   140002a8e:	89 c2                	mov    edx,eax
   140002a90:	41 8b 40 08          	mov    eax,DWORD PTR [r8+0x8]
   140002a94:	f6 c4 04             	test   ah,0x4
   140002a97:	75 37                	jne    140002ad0 <__pformat_putchars+0x130>
   140002a99:	8d 42 ff             	lea    eax,[rdx-0x1]
   140002a9c:	41 89 40 0c          	mov    DWORD PTR [r8+0xc],eax
   140002aa0:	48 89 da             	mov    rdx,rbx
   140002aa3:	b9 20 00 00 00       	mov    ecx,0x20
   140002aa8:	e8 03 fd ff ff       	call   1400027b0 <__pformat_putc>
   140002aad:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140002ab0:	8d 50 ff             	lea    edx,[rax-0x1]
   140002ab3:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140002ab6:	85 c0                	test   eax,eax
   140002ab8:	75 e6                	jne    140002aa0 <__pformat_putchars+0x100>
   140002aba:	8d 57 ff             	lea    edx,[rdi-0x1]
   140002abd:	85 ff                	test   edi,edi
   140002abf:	0f 85 19 ff ff ff    	jne    1400029de <__pformat_putchars+0x3e>
   140002ac5:	e9 77 ff ff ff       	jmp    140002a41 <__pformat_putchars+0xa1>
   140002aca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002ad0:	8d 57 ff             	lea    edx,[rdi-0x1]
   140002ad3:	85 ff                	test   edi,edi
   140002ad5:	0f 85 06 ff ff ff    	jne    1400029e1 <__pformat_putchars+0x41>
   140002adb:	83 6b 0c 01          	sub    DWORD PTR [rbx+0xc],0x1
   140002adf:	e9 6d ff ff ff       	jmp    140002a51 <__pformat_putchars+0xb1>
   140002ae4:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140002aeb:	00 00 00 00 
   140002aef:	90                   	nop

0000000140002af0 <__pformat_puts>:
   140002af0:	56                   	push   rsi
   140002af1:	53                   	push   rbx
   140002af2:	48 83 ec 28          	sub    rsp,0x28
   140002af6:	48 8d 05 53 68 00 00 	lea    rax,[rip+0x6853]        # 140009350 <.rdata>
   140002afd:	48 89 cb             	mov    rbx,rcx
   140002b00:	48 85 c9             	test   rcx,rcx
   140002b03:	48 89 d6             	mov    rsi,rdx
   140002b06:	48 63 52 10          	movsxd rdx,DWORD PTR [rdx+0x10]
   140002b0a:	48 0f 44 d8          	cmove  rbx,rax
   140002b0e:	48 89 d9             	mov    rcx,rbx
   140002b11:	85 d2                	test   edx,edx
   140002b13:	78 1b                	js     140002b30 <__pformat_puts+0x40>
   140002b15:	e8 76 49 00 00       	call   140007490 <strnlen>
   140002b1a:	49 89 f0             	mov    r8,rsi
   140002b1d:	89 c2                	mov    edx,eax
   140002b1f:	48 89 d9             	mov    rcx,rbx
   140002b22:	48 83 c4 28          	add    rsp,0x28
   140002b26:	5b                   	pop    rbx
   140002b27:	5e                   	pop    rsi
   140002b28:	e9 73 fe ff ff       	jmp    1400029a0 <__pformat_putchars>
   140002b2d:	0f 1f 00             	nop    DWORD PTR [rax]
   140002b30:	e8 e3 50 00 00       	call   140007c18 <strlen>
   140002b35:	eb e3                	jmp    140002b1a <__pformat_puts+0x2a>
   140002b37:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140002b3e:	00 00 

0000000140002b40 <__pformat_emit_inf_or_nan>:
   140002b40:	48 83 ec 38          	sub    rsp,0x38
   140002b44:	45 8b 50 08          	mov    r10d,DWORD PTR [r8+0x8]
   140002b48:	41 c7 40 10 ff ff ff 	mov    DWORD PTR [r8+0x10],0xffffffff
   140002b4f:	ff 
   140002b50:	85 c9                	test   ecx,ecx
   140002b52:	75 5c                	jne    140002bb0 <__pformat_emit_inf_or_nan+0x70>
   140002b54:	b8 2b 00 00 00       	mov    eax,0x2b
   140002b59:	41 f7 c2 00 01 00 00 	test   r10d,0x100
   140002b60:	75 53                	jne    140002bb5 <__pformat_emit_inf_or_nan+0x75>
   140002b62:	41 f6 c2 40          	test   r10b,0x40
   140002b66:	74 60                	je     140002bc8 <__pformat_emit_inf_or_nan+0x88>
   140002b68:	b8 20 00 00 00       	mov    eax,0x20
   140002b6d:	4c 8d 4c 24 2d       	lea    r9,[rsp+0x2d]
   140002b72:	4c 8d 5c 24 2c       	lea    r11,[rsp+0x2c]
   140002b77:	88 44 24 2c          	mov    BYTE PTR [rsp+0x2c],al
   140002b7b:	41 83 e2 20          	and    r10d,0x20
   140002b7f:	31 c9                	xor    ecx,ecx
   140002b81:	0f b6 04 0a          	movzx  eax,BYTE PTR [rdx+rcx*1]
   140002b85:	83 e0 df             	and    eax,0xffffffdf
   140002b88:	44 09 d0             	or     eax,r10d
   140002b8b:	41 88 04 09          	mov    BYTE PTR [r9+rcx*1],al
   140002b8f:	48 83 c1 01          	add    rcx,0x1
   140002b93:	48 83 f9 03          	cmp    rcx,0x3
   140002b97:	75 e8                	jne    140002b81 <__pformat_emit_inf_or_nan+0x41>
   140002b99:	49 8d 51 03          	lea    rdx,[r9+0x3]
   140002b9d:	4c 89 d9             	mov    rcx,r11
   140002ba0:	44 29 da             	sub    edx,r11d
   140002ba3:	e8 f8 fd ff ff       	call   1400029a0 <__pformat_putchars>
   140002ba8:	90                   	nop
   140002ba9:	48 83 c4 38          	add    rsp,0x38
   140002bad:	c3                   	ret
   140002bae:	66 90                	xchg   ax,ax
   140002bb0:	b8 2d 00 00 00       	mov    eax,0x2d
   140002bb5:	88 44 24 2c          	mov    BYTE PTR [rsp+0x2c],al
   140002bb9:	4c 8d 4c 24 2d       	lea    r9,[rsp+0x2d]
   140002bbe:	4c 8d 5c 24 2c       	lea    r11,[rsp+0x2c]
   140002bc3:	eb b6                	jmp    140002b7b <__pformat_emit_inf_or_nan+0x3b>
   140002bc5:	0f 1f 00             	nop    DWORD PTR [rax]
   140002bc8:	4c 8d 5c 24 2c       	lea    r11,[rsp+0x2c]
   140002bcd:	4d 89 d9             	mov    r9,r11
   140002bd0:	eb a9                	jmp    140002b7b <__pformat_emit_inf_or_nan+0x3b>
   140002bd2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140002bd9:	00 00 00 00 
   140002bdd:	0f 1f 00             	nop    DWORD PTR [rax]

0000000140002be0 <__pformat_xint.isra.0>:
   140002be0:	55                   	push   rbp
   140002be1:	41 57                	push   r15
   140002be3:	41 56                	push   r14
   140002be5:	41 55                	push   r13
   140002be7:	41 54                	push   r12
   140002be9:	57                   	push   rdi
   140002bea:	56                   	push   rsi
   140002beb:	53                   	push   rbx
   140002bec:	48 83 ec 28          	sub    rsp,0x28
   140002bf0:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   140002bf5:	41 89 ce             	mov    r14d,ecx
   140002bf8:	4c 89 c3             	mov    rbx,r8
   140002bfb:	83 f9 6f             	cmp    ecx,0x6f
   140002bfe:	0f 84 fc 02 00 00    	je     140002f00 <__pformat_xint.isra.0+0x320>
   140002c04:	45 8b 78 10          	mov    r15d,DWORD PTR [r8+0x10]
   140002c08:	31 c0                	xor    eax,eax
   140002c0a:	41 8b 78 08          	mov    edi,DWORD PTR [r8+0x8]
   140002c0e:	45 85 ff             	test   r15d,r15d
   140002c11:	41 0f 49 c7          	cmovns eax,r15d
   140002c15:	83 c0 12             	add    eax,0x12
   140002c18:	f7 c7 00 10 00 00    	test   edi,0x1000
   140002c1e:	0f 84 9c 00 00 00    	je     140002cc0 <__pformat_xint.isra.0+0xe0>
   140002c24:	b9 04 00 00 00       	mov    ecx,0x4
   140002c29:	66 83 7b 20 00       	cmp    WORD PTR [rbx+0x20],0x0
   140002c2e:	74 14                	je     140002c44 <__pformat_xint.isra.0+0x64>
   140002c30:	41 89 c0             	mov    r8d,eax
   140002c33:	41 b9 ab aa aa aa    	mov    r9d,0xaaaaaaab
   140002c39:	4d 0f af c1          	imul   r8,r9
   140002c3d:	49 c1 e8 21          	shr    r8,0x21
   140002c41:	44 01 c0             	add    eax,r8d
   140002c44:	44 8b 63 0c          	mov    r12d,DWORD PTR [rbx+0xc]
   140002c48:	41 39 c4             	cmp    r12d,eax
   140002c4b:	41 0f 4d c4          	cmovge eax,r12d
   140002c4f:	48 98                	cdqe
   140002c51:	48 83 c0 0f          	add    rax,0xf
   140002c55:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   140002c59:	e8 d2 f9 ff ff       	call   140002630 <___chkstk_ms>
   140002c5e:	45 31 c0             	xor    r8d,r8d
   140002c61:	48 29 c4             	sub    rsp,rax
   140002c64:	41 83 fe 6f          	cmp    r14d,0x6f
   140002c68:	4c 8d 6c 24 20       	lea    r13,[rsp+0x20]
   140002c6d:	41 0f 95 c0          	setne  r8b
   140002c71:	46 8d 04 c5 07 00 00 	lea    r8d,[r8*8+0x7]
   140002c78:	00 
   140002c79:	4c 89 ee             	mov    rsi,r13
   140002c7c:	48 85 d2             	test   rdx,rdx
   140002c7f:	75 74                	jne    140002cf5 <__pformat_xint.isra.0+0x115>
   140002c81:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002c88:	81 e7 ff f7 ff ff    	and    edi,0xfffff7ff
   140002c8e:	89 7b 08             	mov    DWORD PTR [rbx+0x8],edi
   140002c91:	45 85 ff             	test   r15d,r15d
   140002c94:	0f 8f a1 00 00 00    	jg     140002d3b <__pformat_xint.isra.0+0x15b>
   140002c9a:	41 83 fe 6f          	cmp    r14d,0x6f
   140002c9e:	0f 85 c2 00 00 00    	jne    140002d66 <__pformat_xint.isra.0+0x186>
   140002ca4:	f6 43 09 08          	test   BYTE PTR [rbx+0x9],0x8
   140002ca8:	0f 84 b8 00 00 00    	je     140002d66 <__pformat_xint.isra.0+0x186>
   140002cae:	c6 06 30             	mov    BYTE PTR [rsi],0x30
   140002cb1:	48 83 c6 01          	add    rsi,0x1
   140002cb5:	e9 ac 00 00 00       	jmp    140002d66 <__pformat_xint.isra.0+0x186>
   140002cba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002cc0:	44 8b 63 0c          	mov    r12d,DWORD PTR [rbx+0xc]
   140002cc4:	41 39 c4             	cmp    r12d,eax
   140002cc7:	41 0f 4d c4          	cmovge eax,r12d
   140002ccb:	48 98                	cdqe
   140002ccd:	48 83 c0 0f          	add    rax,0xf
   140002cd1:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   140002cd5:	e8 56 f9 ff ff       	call   140002630 <___chkstk_ms>
   140002cda:	b9 04 00 00 00       	mov    ecx,0x4
   140002cdf:	41 b8 0f 00 00 00    	mov    r8d,0xf
   140002ce5:	48 29 c4             	sub    rsp,rax
   140002ce8:	4c 8d 6c 24 20       	lea    r13,[rsp+0x20]
   140002ced:	4c 89 ee             	mov    rsi,r13
   140002cf0:	48 85 d2             	test   rdx,rdx
   140002cf3:	74 93                	je     140002c88 <__pformat_xint.isra.0+0xa8>
   140002cf5:	45 89 f1             	mov    r9d,r14d
   140002cf8:	41 83 e1 20          	and    r9d,0x20
   140002cfc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140002d00:	44 89 c0             	mov    eax,r8d
   140002d03:	48 83 c6 01          	add    rsi,0x1
   140002d07:	21 d0                	and    eax,edx
   140002d09:	44 8d 50 30          	lea    r10d,[rax+0x30]
   140002d0d:	83 c0 37             	add    eax,0x37
   140002d10:	44 09 c8             	or     eax,r9d
   140002d13:	45 89 d3             	mov    r11d,r10d
   140002d16:	41 80 fa 39          	cmp    r10b,0x39
   140002d1a:	41 0f 46 c3          	cmovbe eax,r11d
   140002d1e:	48 d3 ea             	shr    rdx,cl
   140002d21:	88 46 ff             	mov    BYTE PTR [rsi-0x1],al
   140002d24:	48 85 d2             	test   rdx,rdx
   140002d27:	75 d7                	jne    140002d00 <__pformat_xint.isra.0+0x120>
   140002d29:	4c 39 ee             	cmp    rsi,r13
   140002d2c:	0f 84 56 ff ff ff    	je     140002c88 <__pformat_xint.isra.0+0xa8>
   140002d32:	45 85 ff             	test   r15d,r15d
   140002d35:	0f 8e 5f ff ff ff    	jle    140002c9a <__pformat_xint.isra.0+0xba>
   140002d3b:	48 89 f0             	mov    rax,rsi
   140002d3e:	45 89 f8             	mov    r8d,r15d
   140002d41:	4c 29 e8             	sub    rax,r13
   140002d44:	41 29 c0             	sub    r8d,eax
   140002d47:	45 85 c0             	test   r8d,r8d
   140002d4a:	0f 8e f0 01 00 00    	jle    140002f40 <__pformat_xint.isra.0+0x360>
   140002d50:	49 63 f8             	movsxd rdi,r8d
   140002d53:	48 89 f1             	mov    rcx,rsi
   140002d56:	ba 30 00 00 00       	mov    edx,0x30
   140002d5b:	49 89 f8             	mov    r8,rdi
   140002d5e:	48 01 fe             	add    rsi,rdi
   140002d61:	e8 9a 4e 00 00       	call   140007c00 <memset>
   140002d66:	4c 39 ee             	cmp    rsi,r13
   140002d69:	75 09                	jne    140002d74 <__pformat_xint.isra.0+0x194>
   140002d6b:	45 85 ff             	test   r15d,r15d
   140002d6e:	0f 85 94 02 00 00    	jne    140003008 <__pformat_xint.isra.0+0x428>
   140002d74:	48 89 f0             	mov    rax,rsi
   140002d77:	4c 29 e8             	sub    rax,r13
   140002d7a:	44 39 e0             	cmp    eax,r12d
   140002d7d:	7c 59                	jl     140002dd8 <__pformat_xint.isra.0+0x1f8>
   140002d7f:	c7 43 0c ff ff ff ff 	mov    DWORD PTR [rbx+0xc],0xffffffff
   140002d86:	41 83 fe 6f          	cmp    r14d,0x6f
   140002d8a:	0f 84 90 02 00 00    	je     140003020 <__pformat_xint.isra.0+0x440>
   140002d90:	f6 43 09 08          	test   BYTE PTR [rbx+0x9],0x8
   140002d94:	74 0b                	je     140002da1 <__pformat_xint.isra.0+0x1c1>
   140002d96:	44 88 36             	mov    BYTE PTR [rsi],r14b
   140002d99:	48 83 c6 02          	add    rsi,0x2
   140002d9d:	c6 46 ff 30          	mov    BYTE PTR [rsi-0x1],0x30
   140002da1:	41 bc ff ff ff ff    	mov    r12d,0xffffffff
   140002da7:	49 39 f5             	cmp    r13,rsi
   140002daa:	73 14                	jae    140002dc0 <__pformat_xint.isra.0+0x1e0>
   140002dac:	8b 7b 08             	mov    edi,DWORD PTR [rbx+0x8]
   140002daf:	45 8d 74 24 ff       	lea    r14d,[r12-0x1]
   140002db4:	e9 b7 00 00 00       	jmp    140002e70 <__pformat_xint.isra.0+0x290>
   140002db9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002dc0:	48 8d 65 08          	lea    rsp,[rbp+0x8]
   140002dc4:	5b                   	pop    rbx
   140002dc5:	5e                   	pop    rsi
   140002dc6:	5f                   	pop    rdi
   140002dc7:	41 5c                	pop    r12
   140002dc9:	41 5d                	pop    r13
   140002dcb:	41 5e                	pop    r14
   140002dcd:	41 5f                	pop    r15
   140002dcf:	5d                   	pop    rbp
   140002dd0:	c3                   	ret
   140002dd1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140002dd8:	41 29 c4             	sub    r12d,eax
   140002ddb:	8b 7b 08             	mov    edi,DWORD PTR [rbx+0x8]
   140002dde:	44 89 63 0c          	mov    DWORD PTR [rbx+0xc],r12d
   140002de2:	41 83 fe 6f          	cmp    r14d,0x6f
   140002de6:	74 28                	je     140002e10 <__pformat_xint.isra.0+0x230>
   140002de8:	f7 c7 00 08 00 00    	test   edi,0x800
   140002dee:	74 20                	je     140002e10 <__pformat_xint.isra.0+0x230>
   140002df0:	41 83 ec 02          	sub    r12d,0x2
   140002df4:	45 85 e4             	test   r12d,r12d
   140002df7:	0f 8f 4c 02 00 00    	jg     140003049 <__pformat_xint.isra.0+0x469>
   140002dfd:	44 88 36             	mov    BYTE PTR [rsi],r14b
   140002e00:	48 83 c6 02          	add    rsi,0x2
   140002e04:	c6 46 ff 30          	mov    BYTE PTR [rsi-0x1],0x30
   140002e08:	eb 9d                	jmp    140002da7 <__pformat_xint.isra.0+0x1c7>
   140002e0a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002e10:	45 85 ff             	test   r15d,r15d
   140002e13:	0f 88 9f 01 00 00    	js     140002fb8 <__pformat_xint.isra.0+0x3d8>
   140002e19:	45 8d 74 24 ff       	lea    r14d,[r12-0x1]
   140002e1e:	f7 c7 00 04 00 00    	test   edi,0x400
   140002e24:	0f 85 06 01 00 00    	jne    140002f30 <__pformat_xint.isra.0+0x350>
   140002e2a:	45 89 f4             	mov    r12d,r14d
   140002e2d:	0f 1f 00             	nop    DWORD PTR [rax]
   140002e30:	48 89 da             	mov    rdx,rbx
   140002e33:	b9 20 00 00 00       	mov    ecx,0x20
   140002e38:	e8 73 f9 ff ff       	call   1400027b0 <__pformat_putc>
   140002e3d:	41 83 ec 01          	sub    r12d,0x1
   140002e41:	73 ed                	jae    140002e30 <__pformat_xint.isra.0+0x250>
   140002e43:	41 be fe ff ff ff    	mov    r14d,0xfffffffe
   140002e49:	49 39 f5             	cmp    r13,rsi
   140002e4c:	72 1f                	jb     140002e6d <__pformat_xint.isra.0+0x28d>
   140002e4e:	e9 6d ff ff ff       	jmp    140002dc0 <__pformat_xint.isra.0+0x1e0>
   140002e53:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140002e58:	48 63 43 24          	movsxd rax,DWORD PTR [rbx+0x24]
   140002e5c:	88 0c 02             	mov    BYTE PTR [rdx+rax*1],cl
   140002e5f:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   140002e62:	83 c0 01             	add    eax,0x1
   140002e65:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   140002e68:	49 39 f5             	cmp    r13,rsi
   140002e6b:	73 38                	jae    140002ea5 <__pformat_xint.isra.0+0x2c5>
   140002e6d:	8b 7b 08             	mov    edi,DWORD PTR [rbx+0x8]
   140002e70:	48 83 ee 01          	sub    rsi,0x1
   140002e74:	f7 c7 00 40 00 00    	test   edi,0x4000
   140002e7a:	75 08                	jne    140002e84 <__pformat_xint.isra.0+0x2a4>
   140002e7c:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   140002e7f:	39 43 28             	cmp    DWORD PTR [rbx+0x28],eax
   140002e82:	7e de                	jle    140002e62 <__pformat_xint.isra.0+0x282>
   140002e84:	81 e7 00 20 00 00    	and    edi,0x2000
   140002e8a:	0f be 0e             	movsx  ecx,BYTE PTR [rsi]
   140002e8d:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   140002e90:	74 c6                	je     140002e58 <__pformat_xint.isra.0+0x278>
   140002e92:	e8 39 4d 00 00       	call   140007bd0 <fputc>
   140002e97:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   140002e9a:	83 c0 01             	add    eax,0x1
   140002e9d:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   140002ea0:	49 39 f5             	cmp    r13,rsi
   140002ea3:	72 c8                	jb     140002e6d <__pformat_xint.isra.0+0x28d>
   140002ea5:	45 85 e4             	test   r12d,r12d
   140002ea8:	7f 27                	jg     140002ed1 <__pformat_xint.isra.0+0x2f1>
   140002eaa:	e9 11 ff ff ff       	jmp    140002dc0 <__pformat_xint.isra.0+0x1e0>
   140002eaf:	90                   	nop
   140002eb0:	48 63 43 24          	movsxd rax,DWORD PTR [rbx+0x24]
   140002eb4:	c6 04 02 20          	mov    BYTE PTR [rdx+rax*1],0x20
   140002eb8:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   140002ebb:	83 c0 01             	add    eax,0x1
   140002ebe:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   140002ec1:	41 8d 46 ff          	lea    eax,[r14-0x1]
   140002ec5:	45 85 f6             	test   r14d,r14d
   140002ec8:	0f 8e f2 fe ff ff    	jle    140002dc0 <__pformat_xint.isra.0+0x1e0>
   140002ece:	41 89 c6             	mov    r14d,eax
   140002ed1:	8b 7b 08             	mov    edi,DWORD PTR [rbx+0x8]
   140002ed4:	f7 c7 00 40 00 00    	test   edi,0x4000
   140002eda:	75 08                	jne    140002ee4 <__pformat_xint.isra.0+0x304>
   140002edc:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   140002edf:	39 43 28             	cmp    DWORD PTR [rbx+0x28],eax
   140002ee2:	7e d7                	jle    140002ebb <__pformat_xint.isra.0+0x2db>
   140002ee4:	81 e7 00 20 00 00    	and    edi,0x2000
   140002eea:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   140002eed:	74 c1                	je     140002eb0 <__pformat_xint.isra.0+0x2d0>
   140002eef:	b9 20 00 00 00       	mov    ecx,0x20
   140002ef4:	e8 d7 4c 00 00       	call   140007bd0 <fputc>
   140002ef9:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   140002efc:	eb bd                	jmp    140002ebb <__pformat_xint.isra.0+0x2db>
   140002efe:	66 90                	xchg   ax,ax
   140002f00:	45 8b 78 10          	mov    r15d,DWORD PTR [r8+0x10]
   140002f04:	31 c0                	xor    eax,eax
   140002f06:	41 8b 78 08          	mov    edi,DWORD PTR [r8+0x8]
   140002f0a:	45 85 ff             	test   r15d,r15d
   140002f0d:	41 0f 49 c7          	cmovns eax,r15d
   140002f11:	83 c0 18             	add    eax,0x18
   140002f14:	f7 c7 00 10 00 00    	test   edi,0x1000
   140002f1a:	74 64                	je     140002f80 <__pformat_xint.isra.0+0x3a0>
   140002f1c:	b9 03 00 00 00       	mov    ecx,0x3
   140002f21:	e9 03 fd ff ff       	jmp    140002c29 <__pformat_xint.isra.0+0x49>
   140002f26:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   140002f2d:	00 00 00 
   140002f30:	49 39 f5             	cmp    r13,rsi
   140002f33:	0f 82 37 ff ff ff    	jb     140002e70 <__pformat_xint.isra.0+0x290>
   140002f39:	eb 99                	jmp    140002ed4 <__pformat_xint.isra.0+0x2f4>
   140002f3b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140002f40:	41 83 fe 6f          	cmp    r14d,0x6f
   140002f44:	0f 84 5a fd ff ff    	je     140002ca4 <__pformat_xint.isra.0+0xc4>
   140002f4a:	4c 39 ee             	cmp    rsi,r13
   140002f4d:	0f 84 b5 00 00 00    	je     140003008 <__pformat_xint.isra.0+0x428>
   140002f53:	44 39 e0             	cmp    eax,r12d
   140002f56:	0f 8d e1 00 00 00    	jge    14000303d <__pformat_xint.isra.0+0x45d>
   140002f5c:	8b 7b 08             	mov    edi,DWORD PTR [rbx+0x8]
   140002f5f:	41 29 c4             	sub    r12d,eax
   140002f62:	44 89 63 0c          	mov    DWORD PTR [rbx+0xc],r12d
   140002f66:	f7 c7 00 08 00 00    	test   edi,0x800
   140002f6c:	0f 85 7e fe ff ff    	jne    140002df0 <__pformat_xint.isra.0+0x210>
   140002f72:	e9 a2 fe ff ff       	jmp    140002e19 <__pformat_xint.isra.0+0x239>
   140002f77:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140002f7e:	00 00 
   140002f80:	44 8b 63 0c          	mov    r12d,DWORD PTR [rbx+0xc]
   140002f84:	41 39 c4             	cmp    r12d,eax
   140002f87:	41 0f 4d c4          	cmovge eax,r12d
   140002f8b:	48 98                	cdqe
   140002f8d:	48 83 c0 0f          	add    rax,0xf
   140002f91:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   140002f95:	e8 96 f6 ff ff       	call   140002630 <___chkstk_ms>
   140002f9a:	b9 03 00 00 00       	mov    ecx,0x3
   140002f9f:	41 b8 07 00 00 00    	mov    r8d,0x7
   140002fa5:	48 29 c4             	sub    rsp,rax
   140002fa8:	4c 8d 6c 24 20       	lea    r13,[rsp+0x20]
   140002fad:	e9 3b fd ff ff       	jmp    140002ced <__pformat_xint.isra.0+0x10d>
   140002fb2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140002fb8:	89 f8                	mov    eax,edi
   140002fba:	25 00 06 00 00       	and    eax,0x600
   140002fbf:	3d 00 02 00 00       	cmp    eax,0x200
   140002fc4:	0f 85 4f fe ff ff    	jne    140002e19 <__pformat_xint.isra.0+0x239>
   140002fca:	4d 63 e4             	movsxd r12,r12d
   140002fcd:	48 89 f1             	mov    rcx,rsi
   140002fd0:	ba 30 00 00 00       	mov    edx,0x30
   140002fd5:	4d 89 e0             	mov    r8,r12
   140002fd8:	4c 01 e6             	add    rsi,r12
   140002fdb:	e8 20 4c 00 00       	call   140007c00 <memset>
   140002fe0:	41 83 fe 6f          	cmp    r14d,0x6f
   140002fe4:	0f 84 b7 fd ff ff    	je     140002da1 <__pformat_xint.isra.0+0x1c1>
   140002fea:	81 e7 00 08 00 00    	and    edi,0x800
   140002ff0:	41 bc ff ff ff ff    	mov    r12d,0xffffffff
   140002ff6:	0f 84 ab fd ff ff    	je     140002da7 <__pformat_xint.isra.0+0x1c7>
   140002ffc:	e9 fc fd ff ff       	jmp    140002dfd <__pformat_xint.isra.0+0x21d>
   140003001:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140003008:	48 8d 56 01          	lea    rdx,[rsi+0x1]
   14000300c:	c6 06 30             	mov    BYTE PTR [rsi],0x30
   14000300f:	48 89 d0             	mov    rax,rdx
   140003012:	48 89 d6             	mov    rsi,rdx
   140003015:	4c 29 e8             	sub    rax,r13
   140003018:	e9 5d fd ff ff       	jmp    140002d7a <__pformat_xint.isra.0+0x19a>
   14000301d:	0f 1f 00             	nop    DWORD PTR [rax]
   140003020:	49 39 f5             	cmp    r13,rsi
   140003023:	0f 83 97 fd ff ff    	jae    140002dc0 <__pformat_xint.isra.0+0x1e0>
   140003029:	8b 7b 08             	mov    edi,DWORD PTR [rbx+0x8]
   14000302c:	41 be fe ff ff ff    	mov    r14d,0xfffffffe
   140003032:	41 bc ff ff ff ff    	mov    r12d,0xffffffff
   140003038:	e9 33 fe ff ff       	jmp    140002e70 <__pformat_xint.isra.0+0x290>
   14000303d:	c7 43 0c ff ff ff ff 	mov    DWORD PTR [rbx+0xc],0xffffffff
   140003044:	e9 47 fd ff ff       	jmp    140002d90 <__pformat_xint.isra.0+0x1b0>
   140003049:	45 85 ff             	test   r15d,r15d
   14000304c:	78 10                	js     14000305e <__pformat_xint.isra.0+0x47e>
   14000304e:	44 88 36             	mov    BYTE PTR [rsi],r14b
   140003051:	48 83 c6 02          	add    rsi,0x2
   140003055:	c6 46 ff 30          	mov    BYTE PTR [rsi-0x1],0x30
   140003059:	e9 bb fd ff ff       	jmp    140002e19 <__pformat_xint.isra.0+0x239>
   14000305e:	89 f8                	mov    eax,edi
   140003060:	25 00 06 00 00       	and    eax,0x600
   140003065:	3d 00 02 00 00       	cmp    eax,0x200
   14000306a:	75 e2                	jne    14000304e <__pformat_xint.isra.0+0x46e>
   14000306c:	4d 63 e4             	movsxd r12,r12d
   14000306f:	48 89 f1             	mov    rcx,rsi
   140003072:	ba 30 00 00 00       	mov    edx,0x30
   140003077:	4d 89 e0             	mov    r8,r12
   14000307a:	4c 01 e6             	add    rsi,r12
   14000307d:	e8 7e 4b 00 00       	call   140007c00 <memset>
   140003082:	e9 63 ff ff ff       	jmp    140002fea <__pformat_xint.isra.0+0x40a>
   140003087:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000308e:	00 00 

0000000140003090 <__pformat_int.isra.0>:
   140003090:	55                   	push   rbp
   140003091:	41 57                	push   r15
   140003093:	41 56                	push   r14
   140003095:	41 55                	push   r13
   140003097:	41 54                	push   r12
   140003099:	57                   	push   rdi
   14000309a:	56                   	push   rsi
   14000309b:	53                   	push   rbx
   14000309c:	48 83 ec 28          	sub    rsp,0x28
   1400030a0:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
   1400030a5:	31 c0                	xor    eax,eax
   1400030a7:	44 8b 72 10          	mov    r14d,DWORD PTR [rdx+0x10]
   1400030ab:	44 8b 62 08          	mov    r12d,DWORD PTR [rdx+0x8]
   1400030af:	45 85 f6             	test   r14d,r14d
   1400030b2:	41 0f 49 c6          	cmovns eax,r14d
   1400030b6:	48 89 d3             	mov    rbx,rdx
   1400030b9:	83 c0 17             	add    eax,0x17
   1400030bc:	41 f7 c4 00 10 00 00 	test   r12d,0x1000
   1400030c3:	74 0b                	je     1400030d0 <__pformat_int.isra.0+0x40>
   1400030c5:	66 83 7a 20 00       	cmp    WORD PTR [rdx+0x20],0x0
   1400030ca:	0f 85 48 02 00 00    	jne    140003318 <__pformat_int.isra.0+0x288>
   1400030d0:	8b 73 0c             	mov    esi,DWORD PTR [rbx+0xc]
   1400030d3:	39 c6                	cmp    esi,eax
   1400030d5:	0f 4d c6             	cmovge eax,esi
   1400030d8:	48 98                	cdqe
   1400030da:	48 83 c0 0f          	add    rax,0xf
   1400030de:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   1400030e2:	e8 49 f5 ff ff       	call   140002630 <___chkstk_ms>
   1400030e7:	48 29 c4             	sub    rsp,rax
   1400030ea:	4c 8d 6c 24 20       	lea    r13,[rsp+0x20]
   1400030ef:	41 f6 c4 80          	test   r12b,0x80
   1400030f3:	74 11                	je     140003106 <__pformat_int.isra.0+0x76>
   1400030f5:	48 85 c9             	test   rcx,rcx
   1400030f8:	0f 88 72 02 00 00    	js     140003370 <__pformat_int.isra.0+0x2e0>
   1400030fe:	41 80 e4 7f          	and    r12b,0x7f
   140003102:	44 89 63 08          	mov    DWORD PTR [rbx+0x8],r12d
   140003106:	4c 89 ef             	mov    rdi,r13
   140003109:	48 85 c9             	test   rcx,rcx
   14000310c:	0f 84 8e 00 00 00    	je     1400031a0 <__pformat_int.isra.0+0x110>
   140003112:	49 b9 cd cc cc cc cc 	movabs r9,0xcccccccccccccccd
   140003119:	cc cc cc 
   14000311c:	45 89 e2             	mov    r10d,r12d
   14000311f:	4d 89 e8             	mov    r8,r13
   140003122:	49 bb 03 00 00 00 00 	movabs r11,0x8000000000000003
   140003129:	00 00 80 
   14000312c:	41 81 e2 00 10 00 00 	and    r10d,0x1000
   140003133:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003138:	48 89 c8             	mov    rax,rcx
   14000313b:	49 8d 78 01          	lea    rdi,[r8+0x1]
   14000313f:	49 f7 e1             	mul    r9
   140003142:	48 89 c8             	mov    rax,rcx
   140003145:	48 c1 ea 03          	shr    rdx,0x3
   140003149:	4c 8d 3c 92          	lea    r15,[rdx+rdx*4]
   14000314d:	4d 01 ff             	add    r15,r15
   140003150:	4c 29 f8             	sub    rax,r15
   140003153:	83 c0 30             	add    eax,0x30
   140003156:	41 88 00             	mov    BYTE PTR [r8],al
   140003159:	48 83 f9 09          	cmp    rcx,0x9
   14000315d:	76 41                	jbe    1400031a0 <__pformat_int.isra.0+0x110>
   14000315f:	49 39 fd             	cmp    r13,rdi
   140003162:	74 2c                	je     140003190 <__pformat_int.isra.0+0x100>
   140003164:	45 85 d2             	test   r10d,r10d
   140003167:	74 27                	je     140003190 <__pformat_int.isra.0+0x100>
   140003169:	66 83 7b 20 00       	cmp    WORD PTR [rbx+0x20],0x0
   14000316e:	74 20                	je     140003190 <__pformat_int.isra.0+0x100>
   140003170:	48 89 f8             	mov    rax,rdi
   140003173:	4c 29 e8             	sub    rax,r13
   140003176:	4c 21 d8             	and    rax,r11
   140003179:	48 83 f8 03          	cmp    rax,0x3
   14000317d:	75 11                	jne    140003190 <__pformat_int.isra.0+0x100>
   14000317f:	c6 07 2c             	mov    BYTE PTR [rdi],0x2c
   140003182:	49 8d 78 02          	lea    rdi,[r8+0x2]
   140003186:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000318d:	00 00 00 
   140003190:	48 89 d1             	mov    rcx,rdx
   140003193:	49 89 f8             	mov    r8,rdi
   140003196:	eb a0                	jmp    140003138 <__pformat_int.isra.0+0xa8>
   140003198:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000319f:	00 
   1400031a0:	45 85 f6             	test   r14d,r14d
   1400031a3:	7e 2b                	jle    1400031d0 <__pformat_int.isra.0+0x140>
   1400031a5:	48 89 f8             	mov    rax,rdi
   1400031a8:	45 89 f0             	mov    r8d,r14d
   1400031ab:	4c 29 e8             	sub    rax,r13
   1400031ae:	41 29 c0             	sub    r8d,eax
   1400031b1:	45 85 c0             	test   r8d,r8d
   1400031b4:	0f 8e 96 01 00 00    	jle    140003350 <__pformat_int.isra.0+0x2c0>
   1400031ba:	4d 63 f8             	movsxd r15,r8d
   1400031bd:	48 89 f9             	mov    rcx,rdi
   1400031c0:	ba 30 00 00 00       	mov    edx,0x30
   1400031c5:	4d 89 f8             	mov    r8,r15
   1400031c8:	4c 01 ff             	add    rdi,r15
   1400031cb:	e8 30 4a 00 00       	call   140007c00 <memset>
   1400031d0:	49 39 fd             	cmp    r13,rdi
   1400031d3:	75 0c                	jne    1400031e1 <__pformat_int.isra.0+0x151>
   1400031d5:	48 89 f8             	mov    rax,rdi
   1400031d8:	45 85 f6             	test   r14d,r14d
   1400031db:	0f 85 7b 01 00 00    	jne    14000335c <__pformat_int.isra.0+0x2cc>
   1400031e1:	85 f6                	test   esi,esi
   1400031e3:	7e 3b                	jle    140003220 <__pformat_int.isra.0+0x190>
   1400031e5:	48 89 f8             	mov    rax,rdi
   1400031e8:	4c 29 e8             	sub    rax,r13
   1400031eb:	29 c6                	sub    esi,eax
   1400031ed:	89 73 0c             	mov    DWORD PTR [rbx+0xc],esi
   1400031f0:	85 f6                	test   esi,esi
   1400031f2:	7e 2c                	jle    140003220 <__pformat_int.isra.0+0x190>
   1400031f4:	41 f7 c4 c0 01 00 00 	test   r12d,0x1c0
   1400031fb:	0f 85 7f 01 00 00    	jne    140003380 <__pformat_int.isra.0+0x2f0>
   140003201:	45 85 f6             	test   r14d,r14d
   140003204:	0f 88 85 01 00 00    	js     14000338f <__pformat_int.isra.0+0x2ff>
   14000320a:	41 f7 c4 00 04 00 00 	test   r12d,0x400
   140003211:	0f 84 c1 01 00 00    	je     1400033d8 <__pformat_int.isra.0+0x348>
   140003217:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000321e:	00 00 
   140003220:	41 f6 c4 80          	test   r12b,0x80
   140003224:	0f 84 d6 00 00 00    	je     140003300 <__pformat_int.isra.0+0x270>
   14000322a:	c6 07 2d             	mov    BYTE PTR [rdi],0x2d
   14000322d:	48 8d 77 01          	lea    rsi,[rdi+0x1]
   140003231:	49 39 f5             	cmp    r13,rsi
   140003234:	72 23                	jb     140003259 <__pformat_int.isra.0+0x1c9>
   140003236:	eb 58                	jmp    140003290 <__pformat_int.isra.0+0x200>
   140003238:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000323f:	00 
   140003240:	48 63 43 24          	movsxd rax,DWORD PTR [rbx+0x24]
   140003244:	88 0c 02             	mov    BYTE PTR [rdx+rax*1],cl
   140003247:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   14000324a:	83 c0 01             	add    eax,0x1
   14000324d:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   140003250:	49 39 f5             	cmp    r13,rsi
   140003253:	74 3b                	je     140003290 <__pformat_int.isra.0+0x200>
   140003255:	44 8b 63 08          	mov    r12d,DWORD PTR [rbx+0x8]
   140003259:	48 83 ee 01          	sub    rsi,0x1
   14000325d:	41 f7 c4 00 40 00 00 	test   r12d,0x4000
   140003264:	75 08                	jne    14000326e <__pformat_int.isra.0+0x1de>
   140003266:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   140003269:	39 43 28             	cmp    DWORD PTR [rbx+0x28],eax
   14000326c:	7e dc                	jle    14000324a <__pformat_int.isra.0+0x1ba>
   14000326e:	41 81 e4 00 20 00 00 	and    r12d,0x2000
   140003275:	0f be 0e             	movsx  ecx,BYTE PTR [rsi]
   140003278:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   14000327b:	74 c3                	je     140003240 <__pformat_int.isra.0+0x1b0>
   14000327d:	e8 4e 49 00 00       	call   140007bd0 <fputc>
   140003282:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   140003285:	83 c0 01             	add    eax,0x1
   140003288:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   14000328b:	49 39 f5             	cmp    r13,rsi
   14000328e:	75 c5                	jne    140003255 <__pformat_int.isra.0+0x1c5>
   140003290:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003293:	eb 17                	jmp    1400032ac <__pformat_int.isra.0+0x21c>
   140003295:	0f 1f 00             	nop    DWORD PTR [rax]
   140003298:	48 63 43 24          	movsxd rax,DWORD PTR [rbx+0x24]
   14000329c:	c6 04 02 20          	mov    BYTE PTR [rdx+rax*1],0x20
   1400032a0:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   1400032a3:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   1400032a6:	83 c2 01             	add    edx,0x1
   1400032a9:	89 53 24             	mov    DWORD PTR [rbx+0x24],edx
   1400032ac:	89 c2                	mov    edx,eax
   1400032ae:	83 e8 01             	sub    eax,0x1
   1400032b1:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   1400032b4:	85 d2                	test   edx,edx
   1400032b6:	7e 30                	jle    1400032e8 <__pformat_int.isra.0+0x258>
   1400032b8:	8b 4b 08             	mov    ecx,DWORD PTR [rbx+0x8]
   1400032bb:	f6 c5 40             	test   ch,0x40
   1400032be:	75 08                	jne    1400032c8 <__pformat_int.isra.0+0x238>
   1400032c0:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   1400032c3:	39 53 28             	cmp    DWORD PTR [rbx+0x28],edx
   1400032c6:	7e de                	jle    1400032a6 <__pformat_int.isra.0+0x216>
   1400032c8:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   1400032cb:	80 e5 20             	and    ch,0x20
   1400032ce:	74 c8                	je     140003298 <__pformat_int.isra.0+0x208>
   1400032d0:	b9 20 00 00 00       	mov    ecx,0x20
   1400032d5:	e8 f6 48 00 00       	call   140007bd0 <fputc>
   1400032da:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   1400032dd:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   1400032e0:	eb c4                	jmp    1400032a6 <__pformat_int.isra.0+0x216>
   1400032e2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400032e8:	48 8d 65 08          	lea    rsp,[rbp+0x8]
   1400032ec:	5b                   	pop    rbx
   1400032ed:	5e                   	pop    rsi
   1400032ee:	5f                   	pop    rdi
   1400032ef:	41 5c                	pop    r12
   1400032f1:	41 5d                	pop    r13
   1400032f3:	41 5e                	pop    r14
   1400032f5:	41 5f                	pop    r15
   1400032f7:	5d                   	pop    rbp
   1400032f8:	c3                   	ret
   1400032f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140003300:	41 f7 c4 00 01 00 00 	test   r12d,0x100
   140003307:	74 27                	je     140003330 <__pformat_int.isra.0+0x2a0>
   140003309:	c6 07 2b             	mov    BYTE PTR [rdi],0x2b
   14000330c:	48 8d 77 01          	lea    rsi,[rdi+0x1]
   140003310:	e9 1c ff ff ff       	jmp    140003231 <__pformat_int.isra.0+0x1a1>
   140003315:	0f 1f 00             	nop    DWORD PTR [rax]
   140003318:	89 c2                	mov    edx,eax
   14000331a:	41 b8 ab aa aa aa    	mov    r8d,0xaaaaaaab
   140003320:	49 0f af d0          	imul   rdx,r8
   140003324:	48 c1 ea 21          	shr    rdx,0x21
   140003328:	01 d0                	add    eax,edx
   14000332a:	e9 a1 fd ff ff       	jmp    1400030d0 <__pformat_int.isra.0+0x40>
   14000332f:	90                   	nop
   140003330:	48 89 fe             	mov    rsi,rdi
   140003333:	41 f6 c4 40          	test   r12b,0x40
   140003337:	0f 84 f4 fe ff ff    	je     140003231 <__pformat_int.isra.0+0x1a1>
   14000333d:	c6 07 20             	mov    BYTE PTR [rdi],0x20
   140003340:	48 83 c6 01          	add    rsi,0x1
   140003344:	e9 e8 fe ff ff       	jmp    140003231 <__pformat_int.isra.0+0x1a1>
   140003349:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140003350:	49 39 fd             	cmp    r13,rdi
   140003353:	0f 85 88 fe ff ff    	jne    1400031e1 <__pformat_int.isra.0+0x151>
   140003359:	4c 89 e8             	mov    rax,r13
   14000335c:	c6 00 30             	mov    BYTE PTR [rax],0x30
   14000335f:	48 8d 78 01          	lea    rdi,[rax+0x1]
   140003363:	e9 79 fe ff ff       	jmp    1400031e1 <__pformat_int.isra.0+0x151>
   140003368:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000336f:	00 
   140003370:	48 f7 d9             	neg    rcx
   140003373:	e9 9a fd ff ff       	jmp    140003112 <__pformat_int.isra.0+0x82>
   140003378:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000337f:	00 
   140003380:	83 ee 01             	sub    esi,0x1
   140003383:	89 73 0c             	mov    DWORD PTR [rbx+0xc],esi
   140003386:	45 85 f6             	test   r14d,r14d
   140003389:	0f 89 7b fe ff ff    	jns    14000320a <__pformat_int.isra.0+0x17a>
   14000338f:	44 89 e0             	mov    eax,r12d
   140003392:	25 00 06 00 00       	and    eax,0x600
   140003397:	3d 00 02 00 00       	cmp    eax,0x200
   14000339c:	0f 85 68 fe ff ff    	jne    14000320a <__pformat_int.isra.0+0x17a>
   1400033a2:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   1400033a5:	8d 50 ff             	lea    edx,[rax-0x1]
   1400033a8:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   1400033ab:	85 c0                	test   eax,eax
   1400033ad:	0f 8e 6d fe ff ff    	jle    140003220 <__pformat_int.isra.0+0x190>
   1400033b3:	48 63 f0             	movsxd rsi,eax
   1400033b6:	48 89 f9             	mov    rcx,rdi
   1400033b9:	ba 30 00 00 00       	mov    edx,0x30
   1400033be:	49 89 f0             	mov    r8,rsi
   1400033c1:	48 01 f7             	add    rdi,rsi
   1400033c4:	e8 37 48 00 00       	call   140007c00 <memset>
   1400033c9:	c7 43 0c ff ff ff ff 	mov    DWORD PTR [rbx+0xc],0xffffffff
   1400033d0:	e9 4b fe ff ff       	jmp    140003220 <__pformat_int.isra.0+0x190>
   1400033d5:	0f 1f 00             	nop    DWORD PTR [rax]
   1400033d8:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   1400033db:	8d 50 ff             	lea    edx,[rax-0x1]
   1400033de:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   1400033e1:	85 c0                	test   eax,eax
   1400033e3:	0f 8e 37 fe ff ff    	jle    140003220 <__pformat_int.isra.0+0x190>
   1400033e9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400033f0:	48 89 da             	mov    rdx,rbx
   1400033f3:	b9 20 00 00 00       	mov    ecx,0x20
   1400033f8:	e8 b3 f3 ff ff       	call   1400027b0 <__pformat_putc>
   1400033fd:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003400:	8d 50 ff             	lea    edx,[rax-0x1]
   140003403:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140003406:	85 c0                	test   eax,eax
   140003408:	7f e6                	jg     1400033f0 <__pformat_int.isra.0+0x360>
   14000340a:	44 8b 63 08          	mov    r12d,DWORD PTR [rbx+0x8]
   14000340e:	e9 0d fe ff ff       	jmp    140003220 <__pformat_int.isra.0+0x190>
   140003413:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   14000341a:	00 00 00 00 
   14000341e:	66 90                	xchg   ax,ax

0000000140003420 <__pformat_emit_radix_point>:
   140003420:	55                   	push   rbp
   140003421:	41 54                	push   r12
   140003423:	57                   	push   rdi
   140003424:	56                   	push   rsi
   140003425:	53                   	push   rbx
   140003426:	48 83 ec 30          	sub    rsp,0x30
   14000342a:	48 8d 6c 24 30       	lea    rbp,[rsp+0x30]
   14000342f:	83 79 14 fd          	cmp    DWORD PTR [rcx+0x14],0xfffffffd
   140003433:	48 89 cb             	mov    rbx,rcx
   140003436:	0f 84 d4 00 00 00    	je     140003510 <__pformat_emit_radix_point+0xf0>
   14000343c:	0f b7 51 18          	movzx  edx,WORD PTR [rcx+0x18]
   140003440:	66 85 d2             	test   dx,dx
   140003443:	0f 84 a7 00 00 00    	je     1400034f0 <__pformat_emit_radix_point+0xd0>
   140003449:	48 63 43 14          	movsxd rax,DWORD PTR [rbx+0x14]
   14000344d:	48 89 e7             	mov    rdi,rsp
   140003450:	48 83 c0 0f          	add    rax,0xf
   140003454:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   140003458:	e8 d3 f1 ff ff       	call   140002630 <___chkstk_ms>
   14000345d:	48 29 c4             	sub    rsp,rax
   140003460:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
   140003467:	00 
   140003468:	4c 8d 45 f8          	lea    r8,[rbp-0x8]
   14000346c:	48 8d 74 24 20       	lea    rsi,[rsp+0x20]
   140003471:	48 89 f1             	mov    rcx,rsi
   140003474:	e8 47 42 00 00       	call   1400076c0 <wcrtomb>
   140003479:	85 c0                	test   eax,eax
   14000347b:	0f 8e cf 00 00 00    	jle    140003550 <__pformat_emit_radix_point+0x130>
   140003481:	83 e8 01             	sub    eax,0x1
   140003484:	4c 8d 64 06 01       	lea    r12,[rsi+rax*1+0x1]
   140003489:	eb 1a                	jmp    1400034a5 <__pformat_emit_radix_point+0x85>
   14000348b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003490:	48 63 53 24          	movsxd rdx,DWORD PTR [rbx+0x24]
   140003494:	88 0c 10             	mov    BYTE PTR [rax+rdx*1],cl
   140003497:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   14000349a:	83 c0 01             	add    eax,0x1
   14000349d:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   1400034a0:	49 39 f4             	cmp    r12,rsi
   1400034a3:	74 36                	je     1400034db <__pformat_emit_radix_point+0xbb>
   1400034a5:	8b 53 08             	mov    edx,DWORD PTR [rbx+0x8]
   1400034a8:	48 83 c6 01          	add    rsi,0x1
   1400034ac:	f6 c6 40             	test   dh,0x40
   1400034af:	75 08                	jne    1400034b9 <__pformat_emit_radix_point+0x99>
   1400034b1:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   1400034b4:	39 43 28             	cmp    DWORD PTR [rbx+0x28],eax
   1400034b7:	7e e1                	jle    14000349a <__pformat_emit_radix_point+0x7a>
   1400034b9:	0f be 4e ff          	movsx  ecx,BYTE PTR [rsi-0x1]
   1400034bd:	48 8b 03             	mov    rax,QWORD PTR [rbx]
   1400034c0:	80 e6 20             	and    dh,0x20
   1400034c3:	74 cb                	je     140003490 <__pformat_emit_radix_point+0x70>
   1400034c5:	48 89 c2             	mov    rdx,rax
   1400034c8:	e8 03 47 00 00       	call   140007bd0 <fputc>
   1400034cd:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
   1400034d0:	83 c0 01             	add    eax,0x1
   1400034d3:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
   1400034d6:	49 39 f4             	cmp    r12,rsi
   1400034d9:	75 ca                	jne    1400034a5 <__pformat_emit_radix_point+0x85>
   1400034db:	48 89 fc             	mov    rsp,rdi
   1400034de:	48 89 ec             	mov    rsp,rbp
   1400034e1:	5b                   	pop    rbx
   1400034e2:	5e                   	pop    rsi
   1400034e3:	5f                   	pop    rdi
   1400034e4:	41 5c                	pop    r12
   1400034e6:	5d                   	pop    rbp
   1400034e7:	c3                   	ret
   1400034e8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400034ef:	00 
   1400034f0:	48 89 da             	mov    rdx,rbx
   1400034f3:	b9 2e 00 00 00       	mov    ecx,0x2e
   1400034f8:	e8 b3 f2 ff ff       	call   1400027b0 <__pformat_putc>
   1400034fd:	90                   	nop
   1400034fe:	48 89 ec             	mov    rsp,rbp
   140003501:	5b                   	pop    rbx
   140003502:	5e                   	pop    rsi
   140003503:	5f                   	pop    rdi
   140003504:	41 5c                	pop    r12
   140003506:	5d                   	pop    rbp
   140003507:	c3                   	ret
   140003508:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000350f:	00 
   140003510:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
   140003517:	00 
   140003518:	48 8d 75 f8          	lea    rsi,[rbp-0x8]
   14000351c:	e8 c7 46 00 00       	call   140007be8 <localeconv>
   140003521:	48 8d 4d f6          	lea    rcx,[rbp-0xa]
   140003525:	49 89 f1             	mov    r9,rsi
   140003528:	41 b8 10 00 00 00    	mov    r8d,0x10
   14000352e:	48 8b 10             	mov    rdx,QWORD PTR [rax]
   140003531:	e8 2a 44 00 00       	call   140007960 <mbrtowc>
   140003536:	85 c0                	test   eax,eax
   140003538:	7e 2e                	jle    140003568 <__pformat_emit_radix_point+0x148>
   14000353a:	0f b7 55 f6          	movzx  edx,WORD PTR [rbp-0xa]
   14000353e:	66 89 53 18          	mov    WORD PTR [rbx+0x18],dx
   140003542:	89 43 14             	mov    DWORD PTR [rbx+0x14],eax
   140003545:	e9 f6 fe ff ff       	jmp    140003440 <__pformat_emit_radix_point+0x20>
   14000354a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003550:	48 89 da             	mov    rdx,rbx
   140003553:	b9 2e 00 00 00       	mov    ecx,0x2e
   140003558:	e8 53 f2 ff ff       	call   1400027b0 <__pformat_putc>
   14000355d:	48 89 fc             	mov    rsp,rdi
   140003560:	e9 79 ff ff ff       	jmp    1400034de <__pformat_emit_radix_point+0xbe>
   140003565:	0f 1f 00             	nop    DWORD PTR [rax]
   140003568:	0f b7 53 18          	movzx  edx,WORD PTR [rbx+0x18]
   14000356c:	eb d4                	jmp    140003542 <__pformat_emit_radix_point+0x122>
   14000356e:	66 90                	xchg   ax,ax

0000000140003570 <__pformat_emit_float>:
   140003570:	55                   	push   rbp
   140003571:	57                   	push   rdi
   140003572:	56                   	push   rsi
   140003573:	53                   	push   rbx
   140003574:	48 83 ec 28          	sub    rsp,0x28
   140003578:	89 cd                	mov    ebp,ecx
   14000357a:	48 89 d7             	mov    rdi,rdx
   14000357d:	41 8b 49 0c          	mov    ecx,DWORD PTR [r9+0xc]
   140003581:	44 89 c6             	mov    esi,r8d
   140003584:	4c 89 cb             	mov    rbx,r9
   140003587:	45 85 c0             	test   r8d,r8d
   14000358a:	0f 8e 30 01 00 00    	jle    1400036c0 <__pformat_emit_float+0x150>
   140003590:	41 39 c8             	cmp    r8d,ecx
   140003593:	7f 63                	jg     1400035f8 <__pformat_emit_float+0x88>
   140003595:	41 8b 41 10          	mov    eax,DWORD PTR [r9+0x10]
   140003599:	44 29 c1             	sub    ecx,r8d
   14000359c:	39 c1                	cmp    ecx,eax
   14000359e:	0f 8e 3c 03 00 00    	jle    1400038e0 <__pformat_emit_float+0x370>
   1400035a4:	29 c1                	sub    ecx,eax
   1400035a6:	89 4b 0c             	mov    DWORD PTR [rbx+0xc],ecx
   1400035a9:	85 c0                	test   eax,eax
   1400035ab:	0f 8e 47 02 00 00    	jle    1400037f8 <__pformat_emit_float+0x288>
   1400035b1:	83 e9 01             	sub    ecx,0x1
   1400035b4:	89 4b 0c             	mov    DWORD PTR [rbx+0xc],ecx
   1400035b7:	85 f6                	test   esi,esi
   1400035b9:	7e 0a                	jle    1400035c5 <__pformat_emit_float+0x55>
   1400035bb:	f6 43 09 10          	test   BYTE PTR [rbx+0x9],0x10
   1400035bf:	0f 85 50 02 00 00    	jne    140003815 <__pformat_emit_float+0x2a5>
   1400035c5:	85 c9                	test   ecx,ecx
   1400035c7:	7e 42                	jle    14000360b <__pformat_emit_float+0x9b>
   1400035c9:	85 ed                	test   ebp,ebp
   1400035cb:	0f 85 c7 01 00 00    	jne    140003798 <__pformat_emit_float+0x228>
   1400035d1:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
   1400035d4:	a9 c0 01 00 00       	test   eax,0x1c0
   1400035d9:	0f 84 e9 02 00 00    	je     1400038c8 <__pformat_emit_float+0x358>
   1400035df:	8d 51 ff             	lea    edx,[rcx-0x1]
   1400035e2:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   1400035e5:	85 d2                	test   edx,edx
   1400035e7:	74 2d                	je     140003616 <__pformat_emit_float+0xa6>
   1400035e9:	f6 c4 06             	test   ah,0x6
   1400035ec:	75 28                	jne    140003616 <__pformat_emit_float+0xa6>
   1400035ee:	e9 c0 01 00 00       	jmp    1400037b3 <__pformat_emit_float+0x243>
   1400035f3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400035f8:	41 c7 41 0c ff ff ff 	mov    DWORD PTR [r9+0xc],0xffffffff
   1400035ff:	ff 
   140003600:	41 f6 41 09 10       	test   BYTE PTR [r9+0x9],0x10
   140003605:	0f 85 65 02 00 00    	jne    140003870 <__pformat_emit_float+0x300>
   14000360b:	85 ed                	test   ebp,ebp
   14000360d:	0f 85 dd 00 00 00    	jne    1400036f0 <__pformat_emit_float+0x180>
   140003613:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
   140003616:	f6 c4 01             	test   ah,0x1
   140003619:	0f 85 09 02 00 00    	jne    140003828 <__pformat_emit_float+0x2b8>
   14000361f:	a8 40                	test   al,0x40
   140003621:	0f 85 f9 02 00 00    	jne    140003920 <__pformat_emit_float+0x3b0>
   140003627:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   14000362a:	85 c0                	test   eax,eax
   14000362c:	7e 15                	jle    140003643 <__pformat_emit_float+0xd3>
   14000362e:	8b 53 08             	mov    edx,DWORD PTR [rbx+0x8]
   140003631:	81 e2 00 06 00 00    	and    edx,0x600
   140003637:	81 fa 00 02 00 00    	cmp    edx,0x200
   14000363d:	0f 84 fd 01 00 00    	je     140003840 <__pformat_emit_float+0x2d0>
   140003643:	85 f6                	test   esi,esi
   140003645:	0f 8e 05 01 00 00    	jle    140003750 <__pformat_emit_float+0x1e0>
   14000364b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003650:	0f b6 07             	movzx  eax,BYTE PTR [rdi]
   140003653:	b9 30 00 00 00       	mov    ecx,0x30
   140003658:	84 c0                	test   al,al
   14000365a:	74 07                	je     140003663 <__pformat_emit_float+0xf3>
   14000365c:	48 83 c7 01          	add    rdi,0x1
   140003660:	0f be c8             	movsx  ecx,al
   140003663:	48 89 da             	mov    rdx,rbx
   140003666:	e8 45 f1 ff ff       	call   1400027b0 <__pformat_putc>
   14000366b:	83 ee 01             	sub    esi,0x1
   14000366e:	74 30                	je     1400036a0 <__pformat_emit_float+0x130>
   140003670:	f6 43 09 10          	test   BYTE PTR [rbx+0x9],0x10
   140003674:	74 da                	je     140003650 <__pformat_emit_float+0xe0>
   140003676:	66 83 7b 20 00       	cmp    WORD PTR [rbx+0x20],0x0
   14000367b:	74 d3                	je     140003650 <__pformat_emit_float+0xe0>
   14000367d:	69 c6 ab aa aa aa    	imul   eax,esi,0xaaaaaaab
   140003683:	3d 55 55 55 55       	cmp    eax,0x55555555
   140003688:	77 c6                	ja     140003650 <__pformat_emit_float+0xe0>
   14000368a:	48 8d 4b 20          	lea    rcx,[rbx+0x20]
   14000368e:	49 89 d8             	mov    r8,rbx
   140003691:	ba 01 00 00 00       	mov    edx,0x1
   140003696:	e8 75 f1 ff ff       	call   140002810 <__pformat_wputchars>
   14000369b:	eb b3                	jmp    140003650 <__pformat_emit_float+0xe0>
   14000369d:	0f 1f 00             	nop    DWORD PTR [rax]
   1400036a0:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   1400036a3:	85 c0                	test   eax,eax
   1400036a5:	7f 61                	jg     140003708 <__pformat_emit_float+0x198>
   1400036a7:	f6 43 09 08          	test   BYTE PTR [rbx+0x9],0x8
   1400036ab:	0f 85 b7 00 00 00    	jne    140003768 <__pformat_emit_float+0x1f8>
   1400036b1:	83 e8 01             	sub    eax,0x1
   1400036b4:	89 43 10             	mov    DWORD PTR [rbx+0x10],eax
   1400036b7:	48 83 c4 28          	add    rsp,0x28
   1400036bb:	5b                   	pop    rbx
   1400036bc:	5e                   	pop    rsi
   1400036bd:	5f                   	pop    rdi
   1400036be:	5d                   	pop    rbp
   1400036bf:	c3                   	ret
   1400036c0:	85 c9                	test   ecx,ecx
   1400036c2:	0f 8e 18 01 00 00    	jle    1400037e0 <__pformat_emit_float+0x270>
   1400036c8:	41 8b 41 10          	mov    eax,DWORD PTR [r9+0x10]
   1400036cc:	83 e9 01             	sub    ecx,0x1
   1400036cf:	39 c1                	cmp    ecx,eax
   1400036d1:	0f 8f cd fe ff ff    	jg     1400035a4 <__pformat_emit_float+0x34>
   1400036d7:	c7 43 0c ff ff ff ff 	mov    DWORD PTR [rbx+0xc],0xffffffff
   1400036de:	85 ed                	test   ebp,ebp
   1400036e0:	0f 84 2d ff ff ff    	je     140003613 <__pformat_emit_float+0xa3>
   1400036e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400036ed:	00 00 00 
   1400036f0:	48 89 da             	mov    rdx,rbx
   1400036f3:	b9 2d 00 00 00       	mov    ecx,0x2d
   1400036f8:	e8 b3 f0 ff ff       	call   1400027b0 <__pformat_putc>
   1400036fd:	e9 25 ff ff ff       	jmp    140003627 <__pformat_emit_float+0xb7>
   140003702:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003708:	48 89 d9             	mov    rcx,rbx
   14000370b:	e8 10 fd ff ff       	call   140003420 <__pformat_emit_radix_point>
   140003710:	eb 21                	jmp    140003733 <__pformat_emit_float+0x1c3>
   140003712:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003718:	0f b6 07             	movzx  eax,BYTE PTR [rdi]
   14000371b:	b9 30 00 00 00       	mov    ecx,0x30
   140003720:	84 c0                	test   al,al
   140003722:	74 07                	je     14000372b <__pformat_emit_float+0x1bb>
   140003724:	48 83 c7 01          	add    rdi,0x1
   140003728:	0f be c8             	movsx  ecx,al
   14000372b:	48 89 da             	mov    rdx,rbx
   14000372e:	e8 7d f0 ff ff       	call   1400027b0 <__pformat_putc>
   140003733:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   140003736:	8d 50 ff             	lea    edx,[rax-0x1]
   140003739:	89 53 10             	mov    DWORD PTR [rbx+0x10],edx
   14000373c:	85 c0                	test   eax,eax
   14000373e:	7f d8                	jg     140003718 <__pformat_emit_float+0x1a8>
   140003740:	48 83 c4 28          	add    rsp,0x28
   140003744:	5b                   	pop    rbx
   140003745:	5e                   	pop    rsi
   140003746:	5f                   	pop    rdi
   140003747:	5d                   	pop    rbp
   140003748:	c3                   	ret
   140003749:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140003750:	48 89 da             	mov    rdx,rbx
   140003753:	b9 30 00 00 00       	mov    ecx,0x30
   140003758:	e8 53 f0 ff ff       	call   1400027b0 <__pformat_putc>
   14000375d:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   140003760:	85 c0                	test   eax,eax
   140003762:	0f 8e ca 01 00 00    	jle    140003932 <__pformat_emit_float+0x3c2>
   140003768:	48 89 d9             	mov    rcx,rbx
   14000376b:	e8 b0 fc ff ff       	call   140003420 <__pformat_emit_radix_point>
   140003770:	85 f6                	test   esi,esi
   140003772:	74 bf                	je     140003733 <__pformat_emit_float+0x1c3>
   140003774:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   140003777:	01 f0                	add    eax,esi
   140003779:	89 43 10             	mov    DWORD PTR [rbx+0x10],eax
   14000377c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140003780:	48 89 da             	mov    rdx,rbx
   140003783:	b9 30 00 00 00       	mov    ecx,0x30
   140003788:	e8 23 f0 ff ff       	call   1400027b0 <__pformat_putc>
   14000378d:	83 c6 01             	add    esi,0x1
   140003790:	75 ee                	jne    140003780 <__pformat_emit_float+0x210>
   140003792:	eb 9f                	jmp    140003733 <__pformat_emit_float+0x1c3>
   140003794:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140003798:	8d 41 ff             	lea    eax,[rcx-0x1]
   14000379b:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   14000379e:	85 c0                	test   eax,eax
   1400037a0:	0f 84 4a ff ff ff    	je     1400036f0 <__pformat_emit_float+0x180>
   1400037a6:	f7 43 08 00 06 00 00 	test   DWORD PTR [rbx+0x8],0x600
   1400037ad:	0f 85 3d ff ff ff    	jne    1400036f0 <__pformat_emit_float+0x180>
   1400037b3:	83 e9 02             	sub    ecx,0x2
   1400037b6:	89 4b 0c             	mov    DWORD PTR [rbx+0xc],ecx
   1400037b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400037c0:	48 89 da             	mov    rdx,rbx
   1400037c3:	b9 20 00 00 00       	mov    ecx,0x20
   1400037c8:	e8 e3 ef ff ff       	call   1400027b0 <__pformat_putc>
   1400037cd:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   1400037d0:	8d 50 ff             	lea    edx,[rax-0x1]
   1400037d3:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   1400037d6:	85 c0                	test   eax,eax
   1400037d8:	7f e6                	jg     1400037c0 <__pformat_emit_float+0x250>
   1400037da:	e9 2c fe ff ff       	jmp    14000360b <__pformat_emit_float+0x9b>
   1400037df:	90                   	nop
   1400037e0:	0f 85 f1 fe ff ff    	jne    1400036d7 <__pformat_emit_float+0x167>
   1400037e6:	41 8b 49 10          	mov    ecx,DWORD PTR [r9+0x10]
   1400037ea:	85 c9                	test   ecx,ecx
   1400037ec:	0f 89 e5 fe ff ff    	jns    1400036d7 <__pformat_emit_float+0x167>
   1400037f2:	f7 d9                	neg    ecx
   1400037f4:	41 89 49 0c          	mov    DWORD PTR [r9+0xc],ecx
   1400037f8:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
   1400037fb:	f6 c4 08             	test   ah,0x8
   1400037fe:	0f 85 ad fd ff ff    	jne    1400035b1 <__pformat_emit_float+0x41>
   140003804:	85 f6                	test   esi,esi
   140003806:	0f 8e bd fd ff ff    	jle    1400035c9 <__pformat_emit_float+0x59>
   14000380c:	f6 c4 10             	test   ah,0x10
   14000380f:	0f 84 b4 fd ff ff    	je     1400035c9 <__pformat_emit_float+0x59>
   140003815:	66 83 7b 20 00       	cmp    WORD PTR [rbx+0x20],0x0
   14000381a:	0f 84 a5 fd ff ff    	je     1400035c5 <__pformat_emit_float+0x55>
   140003820:	e9 dd 00 00 00       	jmp    140003902 <__pformat_emit_float+0x392>
   140003825:	0f 1f 00             	nop    DWORD PTR [rax]
   140003828:	48 89 da             	mov    rdx,rbx
   14000382b:	b9 2b 00 00 00       	mov    ecx,0x2b
   140003830:	e8 7b ef ff ff       	call   1400027b0 <__pformat_putc>
   140003835:	e9 ed fd ff ff       	jmp    140003627 <__pformat_emit_float+0xb7>
   14000383a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003840:	83 e8 01             	sub    eax,0x1
   140003843:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   140003846:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000384d:	00 00 00 
   140003850:	48 89 da             	mov    rdx,rbx
   140003853:	b9 30 00 00 00       	mov    ecx,0x30
   140003858:	e8 53 ef ff ff       	call   1400027b0 <__pformat_putc>
   14000385d:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003860:	8d 50 ff             	lea    edx,[rax-0x1]
   140003863:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140003866:	85 c0                	test   eax,eax
   140003868:	7f e6                	jg     140003850 <__pformat_emit_float+0x2e0>
   14000386a:	e9 d4 fd ff ff       	jmp    140003643 <__pformat_emit_float+0xd3>
   14000386f:	90                   	nop
   140003870:	66 41 83 79 20 00    	cmp    WORD PTR [r9+0x20],0x0
   140003876:	0f 84 8f fd ff ff    	je     14000360b <__pformat_emit_float+0x9b>
   14000387c:	41 8d 40 02          	lea    eax,[r8+0x2]
   140003880:	ba ab aa aa aa       	mov    edx,0xaaaaaaab
   140003885:	b9 ff ff ff ff       	mov    ecx,0xffffffff
   14000388a:	48 0f af c2          	imul   rax,rdx
   14000388e:	48 c1 e8 21          	shr    rax,0x21
   140003892:	83 f8 01             	cmp    eax,0x1
   140003895:	0f 84 70 fd ff ff    	je     14000360b <__pformat_emit_float+0x9b>
   14000389b:	83 e8 01             	sub    eax,0x1
   14000389e:	29 c8                	sub    eax,ecx
   1400038a0:	eb 16                	jmp    1400038b8 <__pformat_emit_float+0x348>
   1400038a2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400038a8:	83 e9 01             	sub    ecx,0x1
   1400038ab:	89 c2                	mov    edx,eax
   1400038ad:	01 ca                	add    edx,ecx
   1400038af:	89 4b 0c             	mov    DWORD PTR [rbx+0xc],ecx
   1400038b2:	0f 84 0d fd ff ff    	je     1400035c5 <__pformat_emit_float+0x55>
   1400038b8:	85 c9                	test   ecx,ecx
   1400038ba:	7f ec                	jg     1400038a8 <__pformat_emit_float+0x338>
   1400038bc:	e9 4a fd ff ff       	jmp    14000360b <__pformat_emit_float+0x9b>
   1400038c1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400038c8:	83 e9 01             	sub    ecx,0x1
   1400038cb:	f6 c4 06             	test   ah,0x6
   1400038ce:	0f 84 e2 fe ff ff    	je     1400037b6 <__pformat_emit_float+0x246>
   1400038d4:	e9 3d fd ff ff       	jmp    140003616 <__pformat_emit_float+0xa6>
   1400038d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400038e0:	41 c7 41 0c ff ff ff 	mov    DWORD PTR [r9+0xc],0xffffffff
   1400038e7:	ff 
   1400038e8:	41 f6 41 09 10       	test   BYTE PTR [r9+0x9],0x10
   1400038ed:	0f 84 18 fd ff ff    	je     14000360b <__pformat_emit_float+0x9b>
   1400038f3:	66 41 83 79 20 00    	cmp    WORD PTR [r9+0x20],0x0
   1400038f9:	0f 84 0c fd ff ff    	je     14000360b <__pformat_emit_float+0x9b>
   1400038ff:	83 c9 ff             	or     ecx,0xffffffff
   140003902:	8d 46 02             	lea    eax,[rsi+0x2]
   140003905:	41 b8 03 00 00 00    	mov    r8d,0x3
   14000390b:	99                   	cdq
   14000390c:	41 f7 f8             	idiv   r8d
   14000390f:	83 f8 01             	cmp    eax,0x1
   140003912:	75 87                	jne    14000389b <__pformat_emit_float+0x32b>
   140003914:	e9 ac fc ff ff       	jmp    1400035c5 <__pformat_emit_float+0x55>
   140003919:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140003920:	48 89 da             	mov    rdx,rbx
   140003923:	b9 20 00 00 00       	mov    ecx,0x20
   140003928:	e8 83 ee ff ff       	call   1400027b0 <__pformat_putc>
   14000392d:	e9 f5 fc ff ff       	jmp    140003627 <__pformat_emit_float+0xb7>
   140003932:	f6 43 09 08          	test   BYTE PTR [rbx+0x9],0x8
   140003936:	0f 85 2c fe ff ff    	jne    140003768 <__pformat_emit_float+0x1f8>
   14000393c:	85 f6                	test   esi,esi
   14000393e:	0f 85 33 fe ff ff    	jne    140003777 <__pformat_emit_float+0x207>
   140003944:	e9 68 fd ff ff       	jmp    1400036b1 <__pformat_emit_float+0x141>
   140003949:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000140003950 <__pformat_emit_efloat>:
   140003950:	57                   	push   rdi
   140003951:	56                   	push   rsi
   140003952:	53                   	push   rbx
   140003953:	48 83 ec 20          	sub    rsp,0x20
   140003957:	41 ba 01 00 00 00    	mov    r10d,0x1
   14000395d:	41 83 e8 01          	sub    r8d,0x1
   140003961:	41 89 cb             	mov    r11d,ecx
   140003964:	4c 89 cb             	mov    rbx,r9
   140003967:	49 63 f0             	movsxd rsi,r8d
   14000396a:	41 c1 f8 1f          	sar    r8d,0x1f
   14000396e:	48 69 ce 67 66 66 66 	imul   rcx,rsi,0x66666667
   140003975:	48 c1 f9 22          	sar    rcx,0x22
   140003979:	44 29 c1             	sub    ecx,r8d
   14000397c:	74 1d                	je     14000399b <__pformat_emit_efloat+0x4b>
   14000397e:	66 90                	xchg   ax,ax
   140003980:	48 63 c1             	movsxd rax,ecx
   140003983:	c1 f9 1f             	sar    ecx,0x1f
   140003986:	41 83 c2 01          	add    r10d,0x1
   14000398a:	48 69 c0 67 66 66 66 	imul   rax,rax,0x66666667
   140003991:	48 c1 f8 22          	sar    rax,0x22
   140003995:	29 c8                	sub    eax,ecx
   140003997:	89 c1                	mov    ecx,eax
   140003999:	75 e5                	jne    140003980 <__pformat_emit_efloat+0x30>
   14000399b:	8b 43 2c             	mov    eax,DWORD PTR [rbx+0x2c]
   14000399e:	83 f8 ff             	cmp    eax,0xffffffff
   1400039a1:	75 0c                	jne    1400039af <__pformat_emit_efloat+0x5f>
   1400039a3:	c7 43 2c 02 00 00 00 	mov    DWORD PTR [rbx+0x2c],0x2
   1400039aa:	b8 02 00 00 00       	mov    eax,0x2
   1400039af:	44 39 d0             	cmp    eax,r10d
   1400039b2:	44 89 d7             	mov    edi,r10d
   1400039b5:	44 8b 43 0c          	mov    r8d,DWORD PTR [rbx+0xc]
   1400039b9:	49 89 d9             	mov    r9,rbx
   1400039bc:	0f 4d f8             	cmovge edi,eax
   1400039bf:	44 89 c0             	mov    eax,r8d
   1400039c2:	8d 4f 02             	lea    ecx,[rdi+0x2]
   1400039c5:	29 c8                	sub    eax,ecx
   1400039c7:	41 39 c8             	cmp    r8d,ecx
   1400039ca:	b9 ff ff ff ff       	mov    ecx,0xffffffff
   1400039cf:	41 b8 01 00 00 00    	mov    r8d,0x1
   1400039d5:	0f 4e c1             	cmovle eax,ecx
   1400039d8:	44 89 d9             	mov    ecx,r11d
   1400039db:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   1400039de:	e8 8d fb ff ff       	call   140003570 <__pformat_emit_float>
   1400039e3:	8b 4b 08             	mov    ecx,DWORD PTR [rbx+0x8]
   1400039e6:	8b 43 2c             	mov    eax,DWORD PTR [rbx+0x2c]
   1400039e9:	48 89 da             	mov    rdx,rbx
   1400039ec:	89 43 10             	mov    DWORD PTR [rbx+0x10],eax
   1400039ef:	89 c8                	mov    eax,ecx
   1400039f1:	83 e1 20             	and    ecx,0x20
   1400039f4:	0d c0 01 00 00       	or     eax,0x1c0
   1400039f9:	83 c9 45             	or     ecx,0x45
   1400039fc:	89 43 08             	mov    DWORD PTR [rbx+0x8],eax
   1400039ff:	e8 ac ed ff ff       	call   1400027b0 <__pformat_putc>
   140003a04:	8d 47 01             	lea    eax,[rdi+0x1]
   140003a07:	01 43 0c             	add    DWORD PTR [rbx+0xc],eax
   140003a0a:	48 89 da             	mov    rdx,rbx
   140003a0d:	48 89 f1             	mov    rcx,rsi
   140003a10:	48 83 c4 20          	add    rsp,0x20
   140003a14:	5b                   	pop    rbx
   140003a15:	5e                   	pop    rsi
   140003a16:	5f                   	pop    rdi
   140003a17:	e9 74 f6 ff ff       	jmp    140003090 <__pformat_int.isra.0>
   140003a1c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000140003a20 <__pformat_efloat>:
   140003a20:	56                   	push   rsi
   140003a21:	53                   	push   rbx
   140003a22:	48 83 ec 58          	sub    rsp,0x58
   140003a26:	44 8b 42 10          	mov    r8d,DWORD PTR [rdx+0x10]
   140003a2a:	db 29                	fld    TBYTE PTR [rcx]
   140003a2c:	48 89 d3             	mov    rbx,rdx
   140003a2f:	45 85 c0             	test   r8d,r8d
   140003a32:	78 5c                	js     140003a90 <__pformat_efloat+0x70>
   140003a34:	41 83 c0 01          	add    r8d,0x1
   140003a38:	48 8d 44 24 48       	lea    rax,[rsp+0x48]
   140003a3d:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
   140003a42:	b9 02 00 00 00       	mov    ecx,0x2
   140003a47:	db 7c 24 30          	fstp   TBYTE PTR [rsp+0x30]
   140003a4b:	4c 8d 4c 24 4c       	lea    r9,[rsp+0x4c]
   140003a50:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
   140003a55:	e8 66 ec ff ff       	call   1400026c0 <__pformat_cvt>
   140003a5a:	44 8b 44 24 4c       	mov    r8d,DWORD PTR [rsp+0x4c]
   140003a5f:	48 89 c6             	mov    rsi,rax
   140003a62:	41 81 f8 00 80 ff ff 	cmp    r8d,0xffff8000
   140003a69:	74 35                	je     140003aa0 <__pformat_efloat+0x80>
   140003a6b:	8b 4c 24 48          	mov    ecx,DWORD PTR [rsp+0x48]
   140003a6f:	49 89 d9             	mov    r9,rbx
   140003a72:	48 89 c2             	mov    rdx,rax
   140003a75:	e8 d6 fe ff ff       	call   140003950 <__pformat_emit_efloat>
   140003a7a:	48 89 f1             	mov    rcx,rsi
   140003a7d:	e8 ce 12 00 00       	call   140004d50 <__freedtoa>
   140003a82:	90                   	nop
   140003a83:	48 83 c4 58          	add    rsp,0x58
   140003a87:	5b                   	pop    rbx
   140003a88:	5e                   	pop    rsi
   140003a89:	c3                   	ret
   140003a8a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003a90:	c7 42 10 06 00 00 00 	mov    DWORD PTR [rdx+0x10],0x6
   140003a97:	41 b8 07 00 00 00    	mov    r8d,0x7
   140003a9d:	eb 99                	jmp    140003a38 <__pformat_efloat+0x18>
   140003a9f:	90                   	nop
   140003aa0:	8b 4c 24 48          	mov    ecx,DWORD PTR [rsp+0x48]
   140003aa4:	49 89 d8             	mov    r8,rbx
   140003aa7:	48 89 c2             	mov    rdx,rax
   140003aaa:	e8 91 f0 ff ff       	call   140002b40 <__pformat_emit_inf_or_nan>
   140003aaf:	48 89 f1             	mov    rcx,rsi
   140003ab2:	e8 99 12 00 00       	call   140004d50 <__freedtoa>
   140003ab7:	90                   	nop
   140003ab8:	48 83 c4 58          	add    rsp,0x58
   140003abc:	5b                   	pop    rbx
   140003abd:	5e                   	pop    rsi
   140003abe:	c3                   	ret
   140003abf:	90                   	nop

0000000140003ac0 <__pformat_float>:
   140003ac0:	56                   	push   rsi
   140003ac1:	53                   	push   rbx
   140003ac2:	48 83 ec 58          	sub    rsp,0x58
   140003ac6:	44 8b 42 10          	mov    r8d,DWORD PTR [rdx+0x10]
   140003aca:	db 29                	fld    TBYTE PTR [rcx]
   140003acc:	48 89 d3             	mov    rbx,rdx
   140003acf:	45 85 c0             	test   r8d,r8d
   140003ad2:	79 0d                	jns    140003ae1 <__pformat_float+0x21>
   140003ad4:	c7 42 10 06 00 00 00 	mov    DWORD PTR [rdx+0x10],0x6
   140003adb:	41 b8 06 00 00 00    	mov    r8d,0x6
   140003ae1:	48 8d 44 24 48       	lea    rax,[rsp+0x48]
   140003ae6:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
   140003aeb:	b9 03 00 00 00       	mov    ecx,0x3
   140003af0:	db 7c 24 30          	fstp   TBYTE PTR [rsp+0x30]
   140003af4:	4c 8d 4c 24 4c       	lea    r9,[rsp+0x4c]
   140003af9:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
   140003afe:	e8 bd eb ff ff       	call   1400026c0 <__pformat_cvt>
   140003b03:	44 8b 44 24 4c       	mov    r8d,DWORD PTR [rsp+0x4c]
   140003b08:	48 89 c6             	mov    rsi,rax
   140003b0b:	41 81 f8 00 80 ff ff 	cmp    r8d,0xffff8000
   140003b12:	74 6c                	je     140003b80 <__pformat_float+0xc0>
   140003b14:	8b 4c 24 48          	mov    ecx,DWORD PTR [rsp+0x48]
   140003b18:	48 89 c2             	mov    rdx,rax
   140003b1b:	49 89 d9             	mov    r9,rbx
   140003b1e:	e8 4d fa ff ff       	call   140003570 <__pformat_emit_float>
   140003b23:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003b26:	eb 1c                	jmp    140003b44 <__pformat_float+0x84>
   140003b28:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140003b2f:	00 
   140003b30:	48 63 43 24          	movsxd rax,DWORD PTR [rbx+0x24]
   140003b34:	c6 04 02 20          	mov    BYTE PTR [rdx+rax*1],0x20
   140003b38:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140003b3b:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003b3e:	83 c2 01             	add    edx,0x1
   140003b41:	89 53 24             	mov    DWORD PTR [rbx+0x24],edx
   140003b44:	89 c2                	mov    edx,eax
   140003b46:	83 e8 01             	sub    eax,0x1
   140003b49:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   140003b4c:	85 d2                	test   edx,edx
   140003b4e:	7e 3f                	jle    140003b8f <__pformat_float+0xcf>
   140003b50:	8b 4b 08             	mov    ecx,DWORD PTR [rbx+0x8]
   140003b53:	f6 c5 40             	test   ch,0x40
   140003b56:	75 08                	jne    140003b60 <__pformat_float+0xa0>
   140003b58:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140003b5b:	39 53 28             	cmp    DWORD PTR [rbx+0x28],edx
   140003b5e:	7e de                	jle    140003b3e <__pformat_float+0x7e>
   140003b60:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   140003b63:	80 e5 20             	and    ch,0x20
   140003b66:	74 c8                	je     140003b30 <__pformat_float+0x70>
   140003b68:	b9 20 00 00 00       	mov    ecx,0x20
   140003b6d:	e8 5e 40 00 00       	call   140007bd0 <fputc>
   140003b72:	8b 53 24             	mov    edx,DWORD PTR [rbx+0x24]
   140003b75:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003b78:	eb c4                	jmp    140003b3e <__pformat_float+0x7e>
   140003b7a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003b80:	8b 4c 24 48          	mov    ecx,DWORD PTR [rsp+0x48]
   140003b84:	49 89 d8             	mov    r8,rbx
   140003b87:	48 89 c2             	mov    rdx,rax
   140003b8a:	e8 b1 ef ff ff       	call   140002b40 <__pformat_emit_inf_or_nan>
   140003b8f:	48 89 f1             	mov    rcx,rsi
   140003b92:	e8 b9 11 00 00       	call   140004d50 <__freedtoa>
   140003b97:	90                   	nop
   140003b98:	48 83 c4 58          	add    rsp,0x58
   140003b9c:	5b                   	pop    rbx
   140003b9d:	5e                   	pop    rsi
   140003b9e:	c3                   	ret
   140003b9f:	90                   	nop

0000000140003ba0 <__pformat_gfloat>:
   140003ba0:	57                   	push   rdi
   140003ba1:	56                   	push   rsi
   140003ba2:	53                   	push   rbx
   140003ba3:	48 83 ec 50          	sub    rsp,0x50
   140003ba7:	44 8b 42 10          	mov    r8d,DWORD PTR [rdx+0x10]
   140003bab:	db 29                	fld    TBYTE PTR [rcx]
   140003bad:	48 89 d3             	mov    rbx,rdx
   140003bb0:	45 85 c0             	test   r8d,r8d
   140003bb3:	0f 88 ff 00 00 00    	js     140003cb8 <__pformat_gfloat+0x118>
   140003bb9:	0f 84 e1 00 00 00    	je     140003ca0 <__pformat_gfloat+0x100>
   140003bbf:	48 8d 44 24 48       	lea    rax,[rsp+0x48]
   140003bc4:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
   140003bc9:	b9 02 00 00 00       	mov    ecx,0x2
   140003bce:	db 7c 24 30          	fstp   TBYTE PTR [rsp+0x30]
   140003bd2:	4c 8d 4c 24 4c       	lea    r9,[rsp+0x4c]
   140003bd7:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
   140003bdc:	e8 df ea ff ff       	call   1400026c0 <__pformat_cvt>
   140003be1:	8b 7c 24 4c          	mov    edi,DWORD PTR [rsp+0x4c]
   140003be5:	48 89 c6             	mov    rsi,rax
   140003be8:	81 ff 00 80 ff ff    	cmp    edi,0xffff8000
   140003bee:	0f 84 dc 00 00 00    	je     140003cd0 <__pformat_gfloat+0x130>
   140003bf4:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
   140003bf7:	25 00 08 00 00       	and    eax,0x800
   140003bfc:	83 ff fd             	cmp    edi,0xfffffffd
   140003bff:	7c 5f                	jl     140003c60 <__pformat_gfloat+0xc0>
   140003c01:	8b 53 10             	mov    edx,DWORD PTR [rbx+0x10]
   140003c04:	39 d7                	cmp    edi,edx
   140003c06:	7f 58                	jg     140003c60 <__pformat_gfloat+0xc0>
   140003c08:	85 c0                	test   eax,eax
   140003c0a:	0f 84 e0 00 00 00    	je     140003cf0 <__pformat_gfloat+0x150>
   140003c10:	29 fa                	sub    edx,edi
   140003c12:	89 53 10             	mov    DWORD PTR [rbx+0x10],edx
   140003c15:	8b 4c 24 48          	mov    ecx,DWORD PTR [rsp+0x48]
   140003c19:	49 89 d9             	mov    r9,rbx
   140003c1c:	41 89 f8             	mov    r8d,edi
   140003c1f:	48 89 f2             	mov    rdx,rsi
   140003c22:	e8 49 f9 ff ff       	call   140003570 <__pformat_emit_float>
   140003c27:	eb 14                	jmp    140003c3d <__pformat_gfloat+0x9d>
   140003c29:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140003c30:	48 89 da             	mov    rdx,rbx
   140003c33:	b9 20 00 00 00       	mov    ecx,0x20
   140003c38:	e8 73 eb ff ff       	call   1400027b0 <__pformat_putc>
   140003c3d:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003c40:	8d 50 ff             	lea    edx,[rax-0x1]
   140003c43:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140003c46:	85 c0                	test   eax,eax
   140003c48:	7f e6                	jg     140003c30 <__pformat_gfloat+0x90>
   140003c4a:	48 89 f1             	mov    rcx,rsi
   140003c4d:	e8 fe 10 00 00       	call   140004d50 <__freedtoa>
   140003c52:	90                   	nop
   140003c53:	48 83 c4 50          	add    rsp,0x50
   140003c57:	5b                   	pop    rbx
   140003c58:	5e                   	pop    rsi
   140003c59:	5f                   	pop    rdi
   140003c5a:	c3                   	ret
   140003c5b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003c60:	85 c0                	test   eax,eax
   140003c62:	75 34                	jne    140003c98 <__pformat_gfloat+0xf8>
   140003c64:	48 89 f1             	mov    rcx,rsi
   140003c67:	e8 ac 3f 00 00       	call   140007c18 <strlen>
   140003c6c:	83 e8 01             	sub    eax,0x1
   140003c6f:	89 43 10             	mov    DWORD PTR [rbx+0x10],eax
   140003c72:	8b 4c 24 48          	mov    ecx,DWORD PTR [rsp+0x48]
   140003c76:	49 89 d9             	mov    r9,rbx
   140003c79:	41 89 f8             	mov    r8d,edi
   140003c7c:	48 89 f2             	mov    rdx,rsi
   140003c7f:	e8 cc fc ff ff       	call   140003950 <__pformat_emit_efloat>
   140003c84:	48 89 f1             	mov    rcx,rsi
   140003c87:	e8 c4 10 00 00       	call   140004d50 <__freedtoa>
   140003c8c:	90                   	nop
   140003c8d:	48 83 c4 50          	add    rsp,0x50
   140003c91:	5b                   	pop    rbx
   140003c92:	5e                   	pop    rsi
   140003c93:	5f                   	pop    rdi
   140003c94:	c3                   	ret
   140003c95:	0f 1f 00             	nop    DWORD PTR [rax]
   140003c98:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   140003c9b:	83 e8 01             	sub    eax,0x1
   140003c9e:	eb cf                	jmp    140003c6f <__pformat_gfloat+0xcf>
   140003ca0:	c7 42 10 01 00 00 00 	mov    DWORD PTR [rdx+0x10],0x1
   140003ca7:	41 b8 01 00 00 00    	mov    r8d,0x1
   140003cad:	e9 0d ff ff ff       	jmp    140003bbf <__pformat_gfloat+0x1f>
   140003cb2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003cb8:	c7 42 10 06 00 00 00 	mov    DWORD PTR [rdx+0x10],0x6
   140003cbf:	41 b8 06 00 00 00    	mov    r8d,0x6
   140003cc5:	e9 f5 fe ff ff       	jmp    140003bbf <__pformat_gfloat+0x1f>
   140003cca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003cd0:	8b 4c 24 48          	mov    ecx,DWORD PTR [rsp+0x48]
   140003cd4:	49 89 d8             	mov    r8,rbx
   140003cd7:	48 89 c2             	mov    rdx,rax
   140003cda:	e8 61 ee ff ff       	call   140002b40 <__pformat_emit_inf_or_nan>
   140003cdf:	48 89 f1             	mov    rcx,rsi
   140003ce2:	e8 69 10 00 00       	call   140004d50 <__freedtoa>
   140003ce7:	90                   	nop
   140003ce8:	48 83 c4 50          	add    rsp,0x50
   140003cec:	5b                   	pop    rbx
   140003ced:	5e                   	pop    rsi
   140003cee:	5f                   	pop    rdi
   140003cef:	c3                   	ret
   140003cf0:	48 89 f1             	mov    rcx,rsi
   140003cf3:	e8 20 3f 00 00       	call   140007c18 <strlen>
   140003cf8:	29 f8                	sub    eax,edi
   140003cfa:	89 43 10             	mov    DWORD PTR [rbx+0x10],eax
   140003cfd:	0f 89 12 ff ff ff    	jns    140003c15 <__pformat_gfloat+0x75>
   140003d03:	8b 53 0c             	mov    edx,DWORD PTR [rbx+0xc]
   140003d06:	85 d2                	test   edx,edx
   140003d08:	0f 8e 07 ff ff ff    	jle    140003c15 <__pformat_gfloat+0x75>
   140003d0e:	01 d0                	add    eax,edx
   140003d10:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   140003d13:	e9 fd fe ff ff       	jmp    140003c15 <__pformat_gfloat+0x75>
   140003d18:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140003d1f:	00 

0000000140003d20 <__pformat_emit_xfloat.isra.0>:
   140003d20:	41 55                	push   r13
   140003d22:	41 54                	push   r12
   140003d24:	55                   	push   rbp
   140003d25:	57                   	push   rdi
   140003d26:	56                   	push   rsi
   140003d27:	53                   	push   rbx
   140003d28:	48 83 ec 58          	sub    rsp,0x58
   140003d2c:	45 8b 50 10          	mov    r10d,DWORD PTR [r8+0x10]
   140003d30:	49 89 c9             	mov    r9,rcx
   140003d33:	4c 89 c3             	mov    rbx,r8
   140003d36:	66 85 d2             	test   dx,dx
   140003d39:	75 09                	jne    140003d44 <__pformat_emit_xfloat.isra.0+0x24>
   140003d3b:	48 85 c9             	test   rcx,rcx
   140003d3e:	0f 84 a4 00 00 00    	je     140003de8 <__pformat_emit_xfloat.isra.0+0xc8>
   140003d44:	44 8d 42 fd          	lea    r8d,[rdx-0x3]
   140003d48:	41 83 fa 0e          	cmp    r10d,0xe
   140003d4c:	0f 86 a3 00 00 00    	jbe    140003df5 <__pformat_emit_xfloat.isra.0+0xd5>
   140003d52:	49 0f bf e8          	movsx  rbp,r8w
   140003d56:	ba 10 00 00 00       	mov    edx,0x10
   140003d5b:	4d 85 c9             	test   r9,r9
   140003d5e:	0f 84 ec 03 00 00    	je     140004150 <__pformat_emit_xfloat.isra.0+0x430>
   140003d64:	8b 4b 08             	mov    ecx,DWORD PTR [rbx+0x8]
   140003d67:	48 8d 7c 24 30       	lea    rdi,[rsp+0x30]
   140003d6c:	48 89 fe             	mov    rsi,rdi
   140003d6f:	41 89 cb             	mov    r11d,ecx
   140003d72:	41 89 cc             	mov    r12d,ecx
   140003d75:	41 83 e3 20          	and    r11d,0x20
   140003d79:	41 81 e4 00 08 00 00 	and    r12d,0x800
   140003d80:	eb 2d                	jmp    140003daf <__pformat_emit_xfloat.isra.0+0x8f>
   140003d82:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140003d88:	4c 39 d7             	cmp    rdi,r10
   140003d8b:	72 0b                	jb     140003d98 <__pformat_emit_xfloat.isra.0+0x78>
   140003d8d:	8b 73 10             	mov    esi,DWORD PTR [rbx+0x10]
   140003d90:	85 f6                	test   esi,esi
   140003d92:	0f 88 68 03 00 00    	js     140004100 <__pformat_emit_xfloat.isra.0+0x3e0>
   140003d98:	83 c0 30             	add    eax,0x30
   140003d9b:	41 88 02             	mov    BYTE PTR [r10],al
   140003d9e:	49 8d 72 01          	lea    rsi,[r10+0x1]
   140003da2:	49 c1 e9 04          	shr    r9,0x4
   140003da6:	83 ea 01             	sub    edx,0x1
   140003da9:	0f 84 e1 01 00 00    	je     140003f90 <__pformat_emit_xfloat.isra.0+0x270>
   140003daf:	44 89 c8             	mov    eax,r9d
   140003db2:	83 e0 0f             	and    eax,0xf
   140003db5:	83 fa 01             	cmp    edx,0x1
   140003db8:	0f 84 92 01 00 00    	je     140003f50 <__pformat_emit_xfloat.isra.0+0x230>
   140003dbe:	44 8b 53 10          	mov    r10d,DWORD PTR [rbx+0x10]
   140003dc2:	45 85 d2             	test   r10d,r10d
   140003dc5:	7e 08                	jle    140003dcf <__pformat_emit_xfloat.isra.0+0xaf>
   140003dc7:	41 83 ea 01          	sub    r10d,0x1
   140003dcb:	44 89 53 10          	mov    DWORD PTR [rbx+0x10],r10d
   140003dcf:	49 89 f2             	mov    r10,rsi
   140003dd2:	85 c0                	test   eax,eax
   140003dd4:	74 b2                	je     140003d88 <__pformat_emit_xfloat.isra.0+0x68>
   140003dd6:	83 f8 09             	cmp    eax,0x9
   140003dd9:	76 bd                	jbe    140003d98 <__pformat_emit_xfloat.isra.0+0x78>
   140003ddb:	83 c0 37             	add    eax,0x37
   140003dde:	44 09 d8             	or     eax,r11d
   140003de1:	eb b8                	jmp    140003d9b <__pformat_emit_xfloat.isra.0+0x7b>
   140003de3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003de8:	41 83 fa 0e          	cmp    r10d,0xe
   140003dec:	0f 87 46 03 00 00    	ja     140004138 <__pformat_emit_xfloat.isra.0+0x418>
   140003df2:	45 31 c0             	xor    r8d,r8d
   140003df5:	b9 0e 00 00 00       	mov    ecx,0xe
   140003dfa:	b8 04 00 00 00       	mov    eax,0x4
   140003dff:	49 d1 e9             	shr    r9,1
   140003e02:	44 29 d1             	sub    ecx,r10d
   140003e05:	c1 e1 02             	shl    ecx,0x2
   140003e08:	48 d3 e0             	shl    rax,cl
   140003e0b:	b9 0f 00 00 00       	mov    ecx,0xf
   140003e10:	44 29 d1             	sub    ecx,r10d
   140003e13:	c1 e1 02             	shl    ecx,0x2
   140003e16:	4c 01 c8             	add    rax,r9
   140003e19:	0f 88 11 01 00 00    	js     140003f30 <__pformat_emit_xfloat.isra.0+0x210>
   140003e1f:	48 01 c0             	add    rax,rax
   140003e22:	48 d3 e8             	shr    rax,cl
   140003e25:	49 89 c1             	mov    r9,rax
   140003e28:	48 85 c0             	test   rax,rax
   140003e2b:	0f 85 0d 01 00 00    	jne    140003f3e <__pformat_emit_xfloat.isra.0+0x21e>
   140003e31:	45 85 d2             	test   r10d,r10d
   140003e34:	0f 85 04 01 00 00    	jne    140003f3e <__pformat_emit_xfloat.isra.0+0x21e>
   140003e3a:	8b 4b 08             	mov    ecx,DWORD PTR [rbx+0x8]
   140003e3d:	49 0f bf e8          	movsx  rbp,r8w
   140003e41:	48 8d 7c 24 30       	lea    rdi,[rsp+0x30]
   140003e46:	48 89 f8             	mov    rax,rdi
   140003e49:	f6 c5 08             	test   ch,0x8
   140003e4c:	74 0a                	je     140003e58 <__pformat_emit_xfloat.isra.0+0x138>
   140003e4e:	c6 44 24 30 2e       	mov    BYTE PTR [rsp+0x30],0x2e
   140003e53:	48 8d 44 24 31       	lea    rax,[rsp+0x31]
   140003e58:	44 8b 53 0c          	mov    r10d,DWORD PTR [rbx+0xc]
   140003e5c:	c6 00 30             	mov    BYTE PTR [rax],0x30
   140003e5f:	48 8d 70 01          	lea    rsi,[rax+0x1]
   140003e63:	41 bc 02 00 00 00    	mov    r12d,0x2
   140003e69:	45 85 d2             	test   r10d,r10d
   140003e6c:	0f 8f 3a 01 00 00    	jg     140003fac <__pformat_emit_xfloat.isra.0+0x28c>
   140003e72:	f6 c1 80             	test   cl,0x80
   140003e75:	0f 85 f5 01 00 00    	jne    140004070 <__pformat_emit_xfloat.isra.0+0x350>
   140003e7b:	f6 c5 01             	test   ch,0x1
   140003e7e:	0f 85 9c 02 00 00    	jne    140004120 <__pformat_emit_xfloat.isra.0+0x400>
   140003e84:	83 e1 40             	and    ecx,0x40
   140003e87:	0f 85 e3 02 00 00    	jne    140004170 <__pformat_emit_xfloat.isra.0+0x450>
   140003e8d:	48 89 da             	mov    rdx,rbx
   140003e90:	b9 30 00 00 00       	mov    ecx,0x30
   140003e95:	e8 16 e9 ff ff       	call   1400027b0 <__pformat_putc>
   140003e9a:	8b 4b 08             	mov    ecx,DWORD PTR [rbx+0x8]
   140003e9d:	48 89 da             	mov    rdx,rbx
   140003ea0:	83 e1 20             	and    ecx,0x20
   140003ea3:	83 c9 58             	or     ecx,0x58
   140003ea6:	e8 05 e9 ff ff       	call   1400027b0 <__pformat_putc>
   140003eab:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003eae:	85 c0                	test   eax,eax
   140003eb0:	7e 28                	jle    140003eda <__pformat_emit_xfloat.isra.0+0x1ba>
   140003eb2:	f6 43 09 02          	test   BYTE PTR [rbx+0x9],0x2
   140003eb6:	74 22                	je     140003eda <__pformat_emit_xfloat.isra.0+0x1ba>
   140003eb8:	83 e8 01             	sub    eax,0x1
   140003ebb:	89 43 0c             	mov    DWORD PTR [rbx+0xc],eax
   140003ebe:	66 90                	xchg   ax,ax
   140003ec0:	48 89 da             	mov    rdx,rbx
   140003ec3:	b9 30 00 00 00       	mov    ecx,0x30
   140003ec8:	e8 e3 e8 ff ff       	call   1400027b0 <__pformat_putc>
   140003ecd:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140003ed0:	8d 50 ff             	lea    edx,[rax-0x1]
   140003ed3:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140003ed6:	85 c0                	test   eax,eax
   140003ed8:	7f e6                	jg     140003ec0 <__pformat_emit_xfloat.isra.0+0x1a0>
   140003eda:	4c 8d 6c 24 2e       	lea    r13,[rsp+0x2e]
   140003edf:	48 39 f7             	cmp    rdi,rsi
   140003ee2:	72 27                	jb     140003f0b <__pformat_emit_xfloat.isra.0+0x1eb>
   140003ee4:	e9 ac 01 00 00       	jmp    140004095 <__pformat_emit_xfloat.isra.0+0x375>
   140003ee9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140003ef0:	0f b7 43 20          	movzx  eax,WORD PTR [rbx+0x20]
   140003ef4:	66 89 44 24 2e       	mov    WORD PTR [rsp+0x2e],ax
   140003ef9:	66 85 c0             	test   ax,ax
   140003efc:	0f 85 e6 01 00 00    	jne    1400040e8 <__pformat_emit_xfloat.isra.0+0x3c8>
   140003f02:	48 39 fe             	cmp    rsi,rdi
   140003f05:	0f 84 8a 01 00 00    	je     140004095 <__pformat_emit_xfloat.isra.0+0x375>
   140003f0b:	0f be 4e ff          	movsx  ecx,BYTE PTR [rsi-0x1]
   140003f0f:	48 83 ee 01          	sub    rsi,0x1
   140003f13:	83 f9 2e             	cmp    ecx,0x2e
   140003f16:	0f 84 bc 01 00 00    	je     1400040d8 <__pformat_emit_xfloat.isra.0+0x3b8>
   140003f1c:	83 f9 2c             	cmp    ecx,0x2c
   140003f1f:	74 cf                	je     140003ef0 <__pformat_emit_xfloat.isra.0+0x1d0>
   140003f21:	48 89 da             	mov    rdx,rbx
   140003f24:	e8 87 e8 ff ff       	call   1400027b0 <__pformat_putc>
   140003f29:	eb d7                	jmp    140003f02 <__pformat_emit_xfloat.isra.0+0x1e2>
   140003f2b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003f30:	48 c1 e8 03          	shr    rax,0x3
   140003f34:	41 83 c0 04          	add    r8d,0x4
   140003f38:	48 d3 e8             	shr    rax,cl
   140003f3b:	49 89 c1             	mov    r9,rax
   140003f3e:	41 8d 52 01          	lea    edx,[r10+0x1]
   140003f42:	49 0f bf e8          	movsx  rbp,r8w
   140003f46:	e9 19 fe ff ff       	jmp    140003d64 <__pformat_emit_xfloat.isra.0+0x44>
   140003f4b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003f50:	48 39 f7             	cmp    rdi,rsi
   140003f53:	72 13                	jb     140003f68 <__pformat_emit_xfloat.isra.0+0x248>
   140003f55:	45 85 e4             	test   r12d,r12d
   140003f58:	75 0e                	jne    140003f68 <__pformat_emit_xfloat.isra.0+0x248>
   140003f5a:	44 8b 53 10          	mov    r10d,DWORD PTR [rbx+0x10]
   140003f5e:	45 85 d2             	test   r10d,r10d
   140003f61:	7e 15                	jle    140003f78 <__pformat_emit_xfloat.isra.0+0x258>
   140003f63:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003f68:	c6 06 2e             	mov    BYTE PTR [rsi],0x2e
   140003f6b:	4c 8d 56 01          	lea    r10,[rsi+0x1]
   140003f6f:	e9 5e fe ff ff       	jmp    140003dd2 <__pformat_emit_xfloat.isra.0+0xb2>
   140003f74:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140003f78:	85 c0                	test   eax,eax
   140003f7a:	0f 85 20 02 00 00    	jne    1400041a0 <__pformat_emit_xfloat.isra.0+0x480>
   140003f80:	45 85 d2             	test   r10d,r10d
   140003f83:	75 0b                	jne    140003f90 <__pformat_emit_xfloat.isra.0+0x270>
   140003f85:	c6 06 30             	mov    BYTE PTR [rsi],0x30
   140003f88:	48 83 c6 01          	add    rsi,0x1
   140003f8c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140003f90:	48 39 fe             	cmp    rsi,rdi
   140003f93:	0f 84 ef 01 00 00    	je     140004188 <__pformat_emit_xfloat.isra.0+0x468>
   140003f99:	44 8b 53 0c          	mov    r10d,DWORD PTR [rbx+0xc]
   140003f9d:	41 bc 02 00 00 00    	mov    r12d,0x2
   140003fa3:	45 85 d2             	test   r10d,r10d
   140003fa6:	0f 8e c6 fe ff ff    	jle    140003e72 <__pformat_emit_xfloat.isra.0+0x152>
   140003fac:	8b 53 10             	mov    edx,DWORD PTR [rbx+0x10]
   140003faf:	49 89 f1             	mov    r9,rsi
   140003fb2:	41 0f bf c0          	movsx  eax,r8w
   140003fb6:	49 29 f9             	sub    r9,rdi
   140003fb9:	46 8d 1c 0a          	lea    r11d,[rdx+r9*1]
   140003fbd:	85 d2                	test   edx,edx
   140003fbf:	89 ca                	mov    edx,ecx
   140003fc1:	45 0f 4f cb          	cmovg  r9d,r11d
   140003fc5:	81 e2 c0 01 00 00    	and    edx,0x1c0
   140003fcb:	83 fa 01             	cmp    edx,0x1
   140003fce:	49 0f bf d0          	movsx  rdx,r8w
   140003fd2:	41 83 d9 fa          	sbb    r9d,0xfffffffa
   140003fd6:	48 69 d2 67 66 66 66 	imul   rdx,rdx,0x66666667
   140003fdd:	c1 f8 1f             	sar    eax,0x1f
   140003fe0:	45 89 cb             	mov    r11d,r9d
   140003fe3:	48 c1 fa 22          	sar    rdx,0x22
   140003fe7:	29 c2                	sub    edx,eax
   140003fe9:	74 2e                	je     140004019 <__pformat_emit_xfloat.isra.0+0x2f9>
   140003feb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140003ff0:	48 63 c2             	movsxd rax,edx
   140003ff3:	c1 fa 1f             	sar    edx,0x1f
   140003ff6:	41 83 c3 01          	add    r11d,0x1
   140003ffa:	48 69 c0 67 66 66 66 	imul   rax,rax,0x66666667
   140004001:	48 c1 f8 22          	sar    rax,0x22
   140004005:	29 d0                	sub    eax,edx
   140004007:	89 c2                	mov    edx,eax
   140004009:	75 e5                	jne    140003ff0 <__pformat_emit_xfloat.isra.0+0x2d0>
   14000400b:	45 89 dc             	mov    r12d,r11d
   14000400e:	45 29 cc             	sub    r12d,r9d
   140004011:	41 83 c4 02          	add    r12d,0x2
   140004015:	45 0f bf e4          	movsx  r12d,r12w
   140004019:	45 39 da             	cmp    r10d,r11d
   14000401c:	0f 8e ee 00 00 00    	jle    140004110 <__pformat_emit_xfloat.isra.0+0x3f0>
   140004022:	45 29 da             	sub    r10d,r11d
   140004025:	f6 c5 06             	test   ch,0x6
   140004028:	0f 85 e8 00 00 00    	jne    140004116 <__pformat_emit_xfloat.isra.0+0x3f6>
   14000402e:	41 83 ea 01          	sub    r10d,0x1
   140004032:	44 89 53 0c          	mov    DWORD PTR [rbx+0xc],r10d
   140004036:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000403d:	00 00 00 
   140004040:	48 89 da             	mov    rdx,rbx
   140004043:	b9 20 00 00 00       	mov    ecx,0x20
   140004048:	e8 63 e7 ff ff       	call   1400027b0 <__pformat_putc>
   14000404d:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
   140004050:	8d 50 ff             	lea    edx,[rax-0x1]
   140004053:	89 53 0c             	mov    DWORD PTR [rbx+0xc],edx
   140004056:	85 c0                	test   eax,eax
   140004058:	7f e6                	jg     140004040 <__pformat_emit_xfloat.isra.0+0x320>
   14000405a:	8b 4b 08             	mov    ecx,DWORD PTR [rbx+0x8]
   14000405d:	f6 c1 80             	test   cl,0x80
   140004060:	0f 84 15 fe ff ff    	je     140003e7b <__pformat_emit_xfloat.isra.0+0x15b>
   140004066:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000406d:	00 00 00 
   140004070:	48 89 da             	mov    rdx,rbx
   140004073:	b9 2d 00 00 00       	mov    ecx,0x2d
   140004078:	e8 33 e7 ff ff       	call   1400027b0 <__pformat_putc>
   14000407d:	e9 0b fe ff ff       	jmp    140003e8d <__pformat_emit_xfloat.isra.0+0x16d>
   140004082:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140004088:	48 89 da             	mov    rdx,rbx
   14000408b:	b9 30 00 00 00       	mov    ecx,0x30
   140004090:	e8 1b e7 ff ff       	call   1400027b0 <__pformat_putc>
   140004095:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   140004098:	8d 50 ff             	lea    edx,[rax-0x1]
   14000409b:	89 53 10             	mov    DWORD PTR [rbx+0x10],edx
   14000409e:	85 c0                	test   eax,eax
   1400040a0:	7f e6                	jg     140004088 <__pformat_emit_xfloat.isra.0+0x368>
   1400040a2:	8b 4b 08             	mov    ecx,DWORD PTR [rbx+0x8]
   1400040a5:	48 89 da             	mov    rdx,rbx
   1400040a8:	83 e1 20             	and    ecx,0x20
   1400040ab:	83 c9 50             	or     ecx,0x50
   1400040ae:	e8 fd e6 ff ff       	call   1400027b0 <__pformat_putc>
   1400040b3:	44 01 63 0c          	add    DWORD PTR [rbx+0xc],r12d
   1400040b7:	48 89 da             	mov    rdx,rbx
   1400040ba:	48 89 e9             	mov    rcx,rbp
   1400040bd:	81 4b 08 c0 01 00 00 	or     DWORD PTR [rbx+0x8],0x1c0
   1400040c4:	48 83 c4 58          	add    rsp,0x58
   1400040c8:	5b                   	pop    rbx
   1400040c9:	5e                   	pop    rsi
   1400040ca:	5f                   	pop    rdi
   1400040cb:	5d                   	pop    rbp
   1400040cc:	41 5c                	pop    r12
   1400040ce:	41 5d                	pop    r13
   1400040d0:	e9 bb ef ff ff       	jmp    140003090 <__pformat_int.isra.0>
   1400040d5:	0f 1f 00             	nop    DWORD PTR [rax]
   1400040d8:	48 89 d9             	mov    rcx,rbx
   1400040db:	e8 40 f3 ff ff       	call   140003420 <__pformat_emit_radix_point>
   1400040e0:	e9 1d fe ff ff       	jmp    140003f02 <__pformat_emit_xfloat.isra.0+0x1e2>
   1400040e5:	0f 1f 00             	nop    DWORD PTR [rax]
   1400040e8:	49 89 d8             	mov    r8,rbx
   1400040eb:	ba 01 00 00 00       	mov    edx,0x1
   1400040f0:	4c 89 e9             	mov    rcx,r13
   1400040f3:	e8 18 e7 ff ff       	call   140002810 <__pformat_wputchars>
   1400040f8:	e9 05 fe ff ff       	jmp    140003f02 <__pformat_emit_xfloat.isra.0+0x1e2>
   1400040fd:	0f 1f 00             	nop    DWORD PTR [rax]
   140004100:	4c 89 d6             	mov    rsi,r10
   140004103:	e9 9a fc ff ff       	jmp    140003da2 <__pformat_emit_xfloat.isra.0+0x82>
   140004108:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000410f:	00 
   140004110:	41 ba ff ff ff ff    	mov    r10d,0xffffffff
   140004116:	44 89 53 0c          	mov    DWORD PTR [rbx+0xc],r10d
   14000411a:	e9 53 fd ff ff       	jmp    140003e72 <__pformat_emit_xfloat.isra.0+0x152>
   14000411f:	90                   	nop
   140004120:	48 89 da             	mov    rdx,rbx
   140004123:	b9 2b 00 00 00       	mov    ecx,0x2b
   140004128:	e8 83 e6 ff ff       	call   1400027b0 <__pformat_putc>
   14000412d:	e9 5b fd ff ff       	jmp    140003e8d <__pformat_emit_xfloat.isra.0+0x16d>
   140004132:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140004138:	45 85 d2             	test   r10d,r10d
   14000413b:	7e 6b                	jle    1400041a8 <__pformat_emit_xfloat.isra.0+0x488>
   14000413d:	31 ed                	xor    ebp,ebp
   14000413f:	45 31 c0             	xor    r8d,r8d
   140004142:	ba 10 00 00 00       	mov    edx,0x10
   140004147:	45 31 c9             	xor    r9d,r9d
   14000414a:	e9 15 fc ff ff       	jmp    140003d64 <__pformat_emit_xfloat.isra.0+0x44>
   14000414f:	90                   	nop
   140004150:	45 85 d2             	test   r10d,r10d
   140004153:	0f 8f 0b fc ff ff    	jg     140003d64 <__pformat_emit_xfloat.isra.0+0x44>
   140004159:	8b 4b 08             	mov    ecx,DWORD PTR [rbx+0x8]
   14000415c:	48 8d 7c 24 30       	lea    rdi,[rsp+0x30]
   140004161:	e9 e0 fc ff ff       	jmp    140003e46 <__pformat_emit_xfloat.isra.0+0x126>
   140004166:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000416d:	00 00 00 
   140004170:	48 89 da             	mov    rdx,rbx
   140004173:	b9 20 00 00 00       	mov    ecx,0x20
   140004178:	e8 33 e6 ff ff       	call   1400027b0 <__pformat_putc>
   14000417d:	e9 0b fd ff ff       	jmp    140003e8d <__pformat_emit_xfloat.isra.0+0x16d>
   140004182:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140004188:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
   14000418b:	85 c0                	test   eax,eax
   14000418d:	0f 8f bb fc ff ff    	jg     140003e4e <__pformat_emit_xfloat.isra.0+0x12e>
   140004193:	e9 ae fc ff ff       	jmp    140003e46 <__pformat_emit_xfloat.isra.0+0x126>
   140004198:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000419f:	00 
   1400041a0:	49 89 f2             	mov    r10,rsi
   1400041a3:	e9 2e fc ff ff       	jmp    140003dd6 <__pformat_emit_xfloat.isra.0+0xb6>
   1400041a8:	41 8b 48 08          	mov    ecx,DWORD PTR [r8+0x8]
   1400041ac:	31 ed                	xor    ebp,ebp
   1400041ae:	45 31 c0             	xor    r8d,r8d
   1400041b1:	48 8d 7c 24 30       	lea    rdi,[rsp+0x30]
   1400041b6:	e9 8b fc ff ff       	jmp    140003e46 <__pformat_emit_xfloat.isra.0+0x126>
   1400041bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000001400041c0 <__mingw_pformat>:
   1400041c0:	41 57                	push   r15
   1400041c2:	41 56                	push   r14
   1400041c4:	41 55                	push   r13
   1400041c6:	41 54                	push   r12
   1400041c8:	55                   	push   rbp
   1400041c9:	57                   	push   rdi
   1400041ca:	56                   	push   rsi
   1400041cb:	53                   	push   rbx
   1400041cc:	48 81 ec a8 00 00 00 	sub    rsp,0xa8
   1400041d3:	4c 8b ac 24 10 01 00 	mov    r13,QWORD PTR [rsp+0x110]
   1400041da:	00 
   1400041db:	89 cf                	mov    edi,ecx
   1400041dd:	48 89 d5             	mov    rbp,rdx
   1400041e0:	44 89 c3             	mov    ebx,r8d
   1400041e3:	4c 89 ce             	mov    rsi,r9
   1400041e6:	e8 9d 39 00 00       	call   140007b88 <_errno>
   1400041eb:	0f be 0e             	movsx  ecx,BYTE PTR [rsi]
   1400041ee:	81 e7 00 60 00 00    	and    edi,0x6000
   1400041f4:	31 d2                	xor    edx,edx
   1400041f6:	8b 00                	mov    eax,DWORD PTR [rax]
   1400041f8:	89 9c 24 98 00 00 00 	mov    DWORD PTR [rsp+0x98],ebx
   1400041ff:	48 8d 5e 01          	lea    rbx,[rsi+0x1]
   140004203:	48 89 6c 24 70       	mov    QWORD PTR [rsp+0x70],rbp
   140004208:	89 44 24 30          	mov    DWORD PTR [rsp+0x30],eax
   14000420c:	48 b8 ff ff ff ff fd 	movabs rax,0xfffffffdffffffff
   140004213:	ff ff ff 
   140004216:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
   14000421d:	00 
   14000421e:	31 c0                	xor    eax,eax
   140004220:	66 89 84 24 88 00 00 	mov    WORD PTR [rsp+0x88],ax
   140004227:	00 
   140004228:	89 c8                	mov    eax,ecx
   14000422a:	89 7c 24 78          	mov    DWORD PTR [rsp+0x78],edi
   14000422e:	c7 44 24 7c ff ff ff 	mov    DWORD PTR [rsp+0x7c],0xffffffff
   140004235:	ff 
   140004236:	c7 84 24 8c 00 00 00 	mov    DWORD PTR [rsp+0x8c],0x0
   14000423d:	00 00 00 00 
   140004241:	66 89 94 24 90 00 00 	mov    WORD PTR [rsp+0x90],dx
   140004248:	00 
   140004249:	c7 84 24 94 00 00 00 	mov    DWORD PTR [rsp+0x94],0x0
   140004250:	00 00 00 00 
   140004254:	c7 84 24 9c 00 00 00 	mov    DWORD PTR [rsp+0x9c],0xffffffff
   14000425b:	ff ff ff ff 
   14000425f:	85 c9                	test   ecx,ecx
   140004261:	0f 84 10 01 00 00    	je     140004377 <__mingw_pformat+0x1b7>
   140004267:	4c 8d 7c 24 7c       	lea    r15,[rsp+0x7c]
   14000426c:	4c 8d 25 fd 50 00 00 	lea    r12,[rip+0x50fd]        # 140009370 <.rdata+0x20>
   140004273:	eb 49                	jmp    1400042be <__mingw_pformat+0xfe>
   140004275:	0f 1f 00             	nop    DWORD PTR [rax]
   140004278:	8b 54 24 78          	mov    edx,DWORD PTR [rsp+0x78]
   14000427c:	8b b4 24 94 00 00 00 	mov    esi,DWORD PTR [rsp+0x94]
   140004283:	f6 c6 40             	test   dh,0x40
   140004286:	75 09                	jne    140004291 <__mingw_pformat+0xd1>
   140004288:	39 b4 24 98 00 00 00 	cmp    DWORD PTR [rsp+0x98],esi
   14000428f:	7e 11                	jle    1400042a2 <__mingw_pformat+0xe2>
   140004291:	4c 8b 44 24 70       	mov    r8,QWORD PTR [rsp+0x70]
   140004296:	80 e6 20             	and    dh,0x20
   140004299:	75 6d                	jne    140004308 <__mingw_pformat+0x148>
   14000429b:	48 63 d6             	movsxd rdx,esi
   14000429e:	41 88 04 10          	mov    BYTE PTR [r8+rdx*1],al
   1400042a2:	83 c6 01             	add    esi,0x1
   1400042a5:	89 b4 24 94 00 00 00 	mov    DWORD PTR [rsp+0x94],esi
   1400042ac:	0f b6 03             	movzx  eax,BYTE PTR [rbx]
   1400042af:	48 83 c3 01          	add    rbx,0x1
   1400042b3:	0f be c8             	movsx  ecx,al
   1400042b6:	85 c9                	test   ecx,ecx
   1400042b8:	0f 84 b2 00 00 00    	je     140004370 <__mingw_pformat+0x1b0>
   1400042be:	83 f9 25             	cmp    ecx,0x25
   1400042c1:	75 b5                	jne    140004278 <__mingw_pformat+0xb8>
   1400042c3:	0f b6 03             	movzx  eax,BYTE PTR [rbx]
   1400042c6:	89 7c 24 78          	mov    DWORD PTR [rsp+0x78],edi
   1400042ca:	48 c7 44 24 7c ff ff 	mov    QWORD PTR [rsp+0x7c],0xffffffffffffffff
   1400042d1:	ff ff 
   1400042d3:	84 c0                	test   al,al
   1400042d5:	0f 84 95 00 00 00    	je     140004370 <__mingw_pformat+0x1b0>
   1400042db:	48 89 de             	mov    rsi,rbx
   1400042de:	4d 89 fb             	mov    r11,r15
   1400042e1:	45 31 d2             	xor    r10d,r10d
   1400042e4:	45 31 f6             	xor    r14d,r14d
   1400042e7:	8d 50 e0             	lea    edx,[rax-0x20]
   1400042ea:	48 8d 6e 01          	lea    rbp,[rsi+0x1]
   1400042ee:	0f be c8             	movsx  ecx,al
   1400042f1:	80 fa 5a             	cmp    dl,0x5a
   1400042f4:	77 22                	ja     140004318 <__mingw_pformat+0x158>
   1400042f6:	0f b6 d2             	movzx  edx,dl
   1400042f9:	49 63 14 94          	movsxd rdx,DWORD PTR [r12+rdx*4]
   1400042fd:	4c 01 e2             	add    rdx,r12
   140004300:	ff e2                	jmp    rdx
   140004302:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140004308:	4c 89 c2             	mov    rdx,r8
   14000430b:	e8 c0 38 00 00       	call   140007bd0 <fputc>
   140004310:	eb 90                	jmp    1400042a2 <__mingw_pformat+0xe2>
   140004312:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140004318:	83 e8 30             	sub    eax,0x30
   14000431b:	3c 09                	cmp    al,0x9
   14000431d:	0f 87 14 02 00 00    	ja     140004537 <__mingw_pformat+0x377>
   140004323:	41 83 fe 03          	cmp    r14d,0x3
   140004327:	0f 87 0a 02 00 00    	ja     140004537 <__mingw_pformat+0x377>
   14000432d:	45 85 f6             	test   r14d,r14d
   140004330:	0f 85 43 07 00 00    	jne    140004a79 <__mingw_pformat+0x8b9>
   140004336:	41 be 01 00 00 00    	mov    r14d,0x1
   14000433c:	4d 85 db             	test   r11,r11
   14000433f:	74 1f                	je     140004360 <__mingw_pformat+0x1a0>
   140004341:	41 8b 03             	mov    eax,DWORD PTR [r11]
   140004344:	85 c0                	test   eax,eax
   140004346:	0f 88 e6 07 00 00    	js     140004b32 <__mingw_pformat+0x972>
   14000434c:	8d 04 80             	lea    eax,[rax+rax*4]
   14000434f:	8d 44 41 d0          	lea    eax,[rcx+rax*2-0x30]
   140004353:	41 89 03             	mov    DWORD PTR [r11],eax
   140004356:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000435d:	00 00 00 
   140004360:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   140004364:	48 89 ee             	mov    rsi,rbp
   140004367:	84 c0                	test   al,al
   140004369:	0f 85 78 ff ff ff    	jne    1400042e7 <__mingw_pformat+0x127>
   14000436f:	90                   	nop
   140004370:	8b 8c 24 94 00 00 00 	mov    ecx,DWORD PTR [rsp+0x94]
   140004377:	89 c8                	mov    eax,ecx
   140004379:	48 81 c4 a8 00 00 00 	add    rsp,0xa8
   140004380:	5b                   	pop    rbx
   140004381:	5e                   	pop    rsi
   140004382:	5f                   	pop    rdi
   140004383:	5d                   	pop    rbp
   140004384:	41 5c                	pop    r12
   140004386:	41 5d                	pop    r13
   140004388:	41 5e                	pop    r14
   14000438a:	41 5f                	pop    r15
   14000438c:	c3                   	ret
   14000438d:	0f 1f 00             	nop    DWORD PTR [rax]
   140004390:	81 64 24 78 ff fe ff 	and    DWORD PTR [rsp+0x78],0xfffffeff
   140004397:	ff 
   140004398:	41 83 fa 03          	cmp    r10d,0x3
   14000439c:	0f 84 d0 07 00 00    	je     140004b72 <__mingw_pformat+0x9b2>
   1400043a2:	41 83 fa 02          	cmp    r10d,0x2
   1400043a6:	0f 84 59 08 00 00    	je     140004c05 <__mingw_pformat+0xa45>
   1400043ac:	41 8b 45 00          	mov    eax,DWORD PTR [r13+0x0]
   1400043b0:	41 83 fa 01          	cmp    r10d,0x1
   1400043b4:	0f 84 68 07 00 00    	je     140004b22 <__mingw_pformat+0x962>
   1400043ba:	89 c2                	mov    edx,eax
   1400043bc:	41 83 fa 05          	cmp    r10d,0x5
   1400043c0:	0f b6 c0             	movzx  eax,al
   1400043c3:	48 0f 45 c2          	cmovne rax,rdx
   1400043c7:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
   1400043cc:	83 f9 75             	cmp    ecx,0x75
   1400043cf:	0f 84 1e 08 00 00    	je     140004bf3 <__mingw_pformat+0xa33>
   1400043d5:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
   1400043da:	48 89 c2             	mov    rdx,rax
   1400043dd:	e8 fe e7 ff ff       	call   140002be0 <__pformat_xint.isra.0>
   1400043e2:	e9 a9 02 00 00       	jmp    140004690 <__mingw_pformat+0x4d0>
   1400043e7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   1400043ee:	00 00 
   1400043f0:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   1400043f4:	41 ba 03 00 00 00    	mov    r10d,0x3
   1400043fa:	48 89 ee             	mov    rsi,rbp
   1400043fd:	41 be 04 00 00 00    	mov    r14d,0x4
   140004403:	e9 5f ff ff ff       	jmp    140004367 <__mingw_pformat+0x1a7>
   140004408:	81 4c 24 78 80 00 00 	or     DWORD PTR [rsp+0x78],0x80
   14000440f:	00 
   140004410:	49 8d 5d 08          	lea    rbx,[r13+0x8]
   140004414:	41 83 fa 03          	cmp    r10d,0x3
   140004418:	0f 84 4b 07 00 00    	je     140004b69 <__mingw_pformat+0x9a9>
   14000441e:	49 63 4d 00          	movsxd rcx,DWORD PTR [r13+0x0]
   140004422:	41 83 fa 02          	cmp    r10d,0x2
   140004426:	74 16                	je     14000443e <__mingw_pformat+0x27e>
   140004428:	41 83 fa 01          	cmp    r10d,0x1
   14000442c:	0f 84 e7 06 00 00    	je     140004b19 <__mingw_pformat+0x959>
   140004432:	48 0f be c1          	movsx  rax,cl
   140004436:	41 83 fa 05          	cmp    r10d,0x5
   14000443a:	48 0f 44 c8          	cmove  rcx,rax
   14000443e:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   140004443:	49 89 dd             	mov    r13,rbx
   140004446:	48 89 eb             	mov    rbx,rbp
   140004449:	e8 42 ec ff ff       	call   140003090 <__pformat_int.isra.0>
   14000444e:	e9 59 fe ff ff       	jmp    1400042ac <__mingw_pformat+0xec>
   140004453:	45 85 f6             	test   r14d,r14d
   140004456:	75 0a                	jne    140004462 <__mingw_pformat+0x2a2>
   140004458:	39 7c 24 78          	cmp    DWORD PTR [rsp+0x78],edi
   14000445c:	0f 84 85 06 00 00    	je     140004ae7 <__mingw_pformat+0x927>
   140004462:	49 8b 55 00          	mov    rdx,QWORD PTR [r13+0x0]
   140004466:	49 8d 5d 08          	lea    rbx,[r13+0x8]
   14000446a:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
   14000446f:	b9 78 00 00 00       	mov    ecx,0x78
   140004474:	49 89 dd             	mov    r13,rbx
   140004477:	48 89 eb             	mov    rbx,rbp
   14000447a:	e8 61 e7 ff ff       	call   140002be0 <__pformat_xint.isra.0>
   14000447f:	e9 28 fe ff ff       	jmp    1400042ac <__mingw_pformat+0xec>
   140004484:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   140004488:	3c 68                	cmp    al,0x68
   14000448a:	0f 84 31 07 00 00    	je     140004bc1 <__mingw_pformat+0xa01>
   140004490:	48 89 ee             	mov    rsi,rbp
   140004493:	41 ba 01 00 00 00    	mov    r10d,0x1
   140004499:	41 be 04 00 00 00    	mov    r14d,0x4
   14000449f:	e9 c3 fe ff ff       	jmp    140004367 <__mingw_pformat+0x1a7>
   1400044a4:	8b 4c 24 30          	mov    ecx,DWORD PTR [rsp+0x30]
   1400044a8:	48 89 eb             	mov    rbx,rbp
   1400044ab:	e8 60 37 00 00       	call   140007c10 <strerror>
   1400044b0:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   1400044b5:	48 89 c1             	mov    rcx,rax
   1400044b8:	e8 33 e6 ff ff       	call   140002af0 <__pformat_puts>
   1400044bd:	e9 ea fd ff ff       	jmp    1400042ac <__mingw_pformat+0xec>
   1400044c2:	49 8b 55 00          	mov    rdx,QWORD PTR [r13+0x0]
   1400044c6:	48 63 84 24 94 00 00 	movsxd rax,DWORD PTR [rsp+0x94]
   1400044cd:	00 
   1400044ce:	41 83 fa 05          	cmp    r10d,0x5
   1400044d2:	0f 84 e2 06 00 00    	je     140004bba <__mingw_pformat+0x9fa>
   1400044d8:	41 83 fa 01          	cmp    r10d,0x1
   1400044dc:	0f 84 2c 07 00 00    	je     140004c0e <__mingw_pformat+0xa4e>
   1400044e2:	41 83 fa 02          	cmp    r10d,0x2
   1400044e6:	74 0a                	je     1400044f2 <__mingw_pformat+0x332>
   1400044e8:	41 83 fa 03          	cmp    r10d,0x3
   1400044ec:	0f 84 38 06 00 00    	je     140004b2a <__mingw_pformat+0x96a>
   1400044f2:	89 02                	mov    DWORD PTR [rdx],eax
   1400044f4:	e9 97 01 00 00       	jmp    140004690 <__mingw_pformat+0x4d0>
   1400044f9:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   1400044fd:	3c 6c                	cmp    al,0x6c
   1400044ff:	0f 84 d5 06 00 00    	je     140004bda <__mingw_pformat+0xa1a>
   140004505:	48 89 ee             	mov    rsi,rbp
   140004508:	41 ba 02 00 00 00    	mov    r10d,0x2
   14000450e:	41 be 04 00 00 00    	mov    r14d,0x4
   140004514:	e9 4e fe ff ff       	jmp    140004367 <__mingw_pformat+0x1a7>
   140004519:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   14000451d:	3c 36                	cmp    al,0x36
   14000451f:	0f 84 72 06 00 00    	je     140004b97 <__mingw_pformat+0x9d7>
   140004525:	3c 33                	cmp    al,0x33
   140004527:	0f 85 9b 05 00 00    	jne    140004ac8 <__mingw_pformat+0x908>
   14000452d:	80 7e 02 32          	cmp    BYTE PTR [rsi+0x2],0x32
   140004531:	0f 84 f5 06 00 00    	je     140004c2c <__mingw_pformat+0xa6c>
   140004537:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   14000453c:	b9 25 00 00 00       	mov    ecx,0x25
   140004541:	e8 6a e2 ff ff       	call   1400027b0 <__pformat_putc>
   140004546:	e9 61 fd ff ff       	jmp    1400042ac <__mingw_pformat+0xec>
   14000454b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140004550:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   140004554:	83 4c 24 78 04       	or     DWORD PTR [rsp+0x78],0x4
   140004559:	48 89 ee             	mov    rsi,rbp
   14000455c:	41 be 04 00 00 00    	mov    r14d,0x4
   140004562:	e9 00 fe ff ff       	jmp    140004367 <__mingw_pformat+0x1a7>
   140004567:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   14000456b:	49 8b 4d 00          	mov    rcx,QWORD PTR [r13+0x0]
   14000456f:	83 c8 20             	or     eax,0x20
   140004572:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
   140004576:	a8 04                	test   al,0x4
   140004578:	0f 84 fa 01 00 00    	je     140004778 <__mingw_pformat+0x5b8>
   14000457e:	8b 59 08             	mov    ebx,DWORD PTR [rcx+0x8]
   140004581:	48 8b 09             	mov    rcx,QWORD PTR [rcx]
   140004584:	49 89 c9             	mov    r9,rcx
   140004587:	44 0f bf d3          	movsx  r10d,bx
   14000458b:	48 89 da             	mov    rdx,rbx
   14000458e:	49 c1 e9 20          	shr    r9,0x20
   140004592:	47 8d 1c 12          	lea    r11d,[r10+r10*1]
   140004596:	41 81 e1 ff ff ff 7f 	and    r9d,0x7fffffff
   14000459d:	45 0f b7 db          	movzx  r11d,r11w
   1400045a1:	41 09 c9             	or     r9d,ecx
   1400045a4:	45 89 c8             	mov    r8d,r9d
   1400045a7:	41 f7 d8             	neg    r8d
   1400045aa:	45 09 c8             	or     r8d,r9d
   1400045ad:	41 c1 e8 1f          	shr    r8d,0x1f
   1400045b1:	45 09 d8             	or     r8d,r11d
   1400045b4:	41 bb fe ff 00 00    	mov    r11d,0xfffe
   1400045ba:	45 29 c3             	sub    r11d,r8d
   1400045bd:	41 c1 eb 10          	shr    r11d,0x10
   1400045c1:	0f 85 c4 04 00 00    	jne    140004a8b <__mingw_pformat+0x8cb>
   1400045c7:	66 85 db             	test   bx,bx
   1400045ca:	0f 88 0c 05 00 00    	js     140004adc <__mingw_pformat+0x91c>
   1400045d0:	66 81 e2 ff 7f       	and    dx,0x7fff
   1400045d5:	0f 84 dd 04 00 00    	je     140004ab8 <__mingw_pformat+0x8f8>
   1400045db:	66 81 fa ff 7f       	cmp    dx,0x7fff
   1400045e0:	75 09                	jne    1400045eb <__mingw_pformat+0x42b>
   1400045e2:	45 85 c9             	test   r9d,r9d
   1400045e5:	0f 84 7d 06 00 00    	je     140004c68 <__mingw_pformat+0xaa8>
   1400045eb:	66 81 ea ff 3f       	sub    dx,0x3fff
   1400045f0:	e9 22 04 00 00       	jmp    140004a17 <__mingw_pformat+0x857>
   1400045f5:	41 83 ea 02          	sub    r10d,0x2
   1400045f9:	41 8b 45 00          	mov    eax,DWORD PTR [r13+0x0]
   1400045fd:	49 8d 5d 08          	lea    rbx,[r13+0x8]
   140004601:	c7 84 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],0xffffffff
   140004608:	ff ff ff ff 
   14000460c:	41 83 fa 01          	cmp    r10d,0x1
   140004610:	0f 86 09 02 00 00    	jbe    14000481f <__mingw_pformat+0x65f>
   140004616:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
   14000461b:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
   140004620:	88 44 24 60          	mov    BYTE PTR [rsp+0x60],al
   140004624:	49 89 dd             	mov    r13,rbx
   140004627:	ba 01 00 00 00       	mov    edx,0x1
   14000462c:	48 89 eb             	mov    rbx,rbp
   14000462f:	e8 6c e3 ff ff       	call   1400029a0 <__pformat_putchars>
   140004634:	e9 73 fc ff ff       	jmp    1400042ac <__mingw_pformat+0xec>
   140004639:	41 83 ea 02          	sub    r10d,0x2
   14000463d:	49 8b 4d 00          	mov    rcx,QWORD PTR [r13+0x0]
   140004641:	49 8d 5d 08          	lea    rbx,[r13+0x8]
   140004645:	41 83 fa 01          	cmp    r10d,0x1
   140004649:	0f 86 db 03 00 00    	jbe    140004a2a <__mingw_pformat+0x86a>
   14000464f:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   140004654:	e8 97 e4 ff ff       	call   140002af0 <__pformat_puts>
   140004659:	49 89 dd             	mov    r13,rbx
   14000465c:	48 89 eb             	mov    rbx,rbp
   14000465f:	e9 48 fc ff ff       	jmp    1400042ac <__mingw_pformat+0xec>
   140004664:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   140004668:	49 8b 55 00          	mov    rdx,QWORD PTR [r13+0x0]
   14000466c:	83 c8 20             	or     eax,0x20
   14000466f:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
   140004673:	a8 04                	test   al,0x4
   140004675:	0f 84 3e 02 00 00    	je     1400048b9 <__mingw_pformat+0x6f9>
   14000467b:	db 2a                	fld    TBYTE PTR [rdx]
   14000467d:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
   140004682:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   140004687:	db 7c 24 40          	fstp   TBYTE PTR [rsp+0x40]
   14000468b:	e8 10 f5 ff ff       	call   140003ba0 <__pformat_gfloat>
   140004690:	49 83 c5 08          	add    r13,0x8
   140004694:	48 89 eb             	mov    rbx,rbp
   140004697:	e9 10 fc ff ff       	jmp    1400042ac <__mingw_pformat+0xec>
   14000469c:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   1400046a0:	49 8b 55 00          	mov    rdx,QWORD PTR [r13+0x0]
   1400046a4:	83 c8 20             	or     eax,0x20
   1400046a7:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
   1400046ab:	a8 04                	test   al,0x4
   1400046ad:	0f 84 d5 01 00 00    	je     140004888 <__mingw_pformat+0x6c8>
   1400046b3:	db 2a                	fld    TBYTE PTR [rdx]
   1400046b5:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
   1400046ba:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   1400046bf:	db 7c 24 40          	fstp   TBYTE PTR [rsp+0x40]
   1400046c3:	e8 f8 f3 ff ff       	call   140003ac0 <__pformat_float>
   1400046c8:	eb c6                	jmp    140004690 <__mingw_pformat+0x4d0>
   1400046ca:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   1400046ce:	49 8b 55 00          	mov    rdx,QWORD PTR [r13+0x0]
   1400046d2:	83 c8 20             	or     eax,0x20
   1400046d5:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
   1400046d9:	a8 04                	test   al,0x4
   1400046db:	0f 84 76 01 00 00    	je     140004857 <__mingw_pformat+0x697>
   1400046e1:	db 2a                	fld    TBYTE PTR [rdx]
   1400046e3:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
   1400046e8:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   1400046ed:	db 7c 24 40          	fstp   TBYTE PTR [rsp+0x40]
   1400046f1:	e8 2a f3 ff ff       	call   140003a20 <__pformat_efloat>
   1400046f6:	eb 98                	jmp    140004690 <__mingw_pformat+0x4d0>
   1400046f8:	45 85 f6             	test   r14d,r14d
   1400046fb:	0f 85 5f fc ff ff    	jne    140004360 <__mingw_pformat+0x1a0>
   140004701:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   140004705:	83 4c 24 78 40       	or     DWORD PTR [rsp+0x78],0x40
   14000470a:	48 89 ee             	mov    rsi,rbp
   14000470d:	e9 55 fc ff ff       	jmp    140004367 <__mingw_pformat+0x1a7>
   140004712:	45 85 f6             	test   r14d,r14d
   140004715:	0f 85 45 fc ff ff    	jne    140004360 <__mingw_pformat+0x1a0>
   14000471b:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   14000471f:	81 4c 24 78 00 04 00 	or     DWORD PTR [rsp+0x78],0x400
   140004726:	00 
   140004727:	48 89 ee             	mov    rsi,rbp
   14000472a:	e9 38 fc ff ff       	jmp    140004367 <__mingw_pformat+0x1a7>
   14000472f:	41 83 fe 01          	cmp    r14d,0x1
   140004733:	0f 86 0b 04 00 00    	jbe    140004b44 <__mingw_pformat+0x984>
   140004739:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   14000473d:	41 be 04 00 00 00    	mov    r14d,0x4
   140004743:	48 89 ee             	mov    rsi,rbp
   140004746:	e9 1c fc ff ff       	jmp    140004367 <__mingw_pformat+0x1a7>
   14000474b:	45 85 f6             	test   r14d,r14d
   14000474e:	0f 85 16 03 00 00    	jne    140004a6a <__mingw_pformat+0x8aa>
   140004754:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   140004758:	81 4c 24 78 00 02 00 	or     DWORD PTR [rsp+0x78],0x200
   14000475f:	00 
   140004760:	48 89 ee             	mov    rsi,rbp
   140004763:	e9 ff fb ff ff       	jmp    140004367 <__mingw_pformat+0x1a7>
   140004768:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   14000476c:	49 8b 4d 00          	mov    rcx,QWORD PTR [r13+0x0]
   140004770:	a8 04                	test   al,0x4
   140004772:	0f 85 06 fe ff ff    	jne    14000457e <__mingw_pformat+0x3be>
   140004778:	49 89 c8             	mov    r8,rcx
   14000477b:	89 ca                	mov    edx,ecx
   14000477d:	49 c1 e8 20          	shr    r8,0x20
   140004781:	f7 da                	neg    edx
   140004783:	09 ca                	or     edx,ecx
   140004785:	45 89 c1             	mov    r9d,r8d
   140004788:	c1 ea 1f             	shr    edx,0x1f
   14000478b:	41 81 e1 ff ff ff 7f 	and    r9d,0x7fffffff
   140004792:	44 09 ca             	or     edx,r9d
   140004795:	81 fa 00 00 f0 7f    	cmp    edx,0x7ff00000
   14000479b:	0f 8f ea 02 00 00    	jg     140004a8b <__mingw_pformat+0x8cb>
   1400047a1:	48 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],rcx
   1400047a6:	dd 44 24 20          	fld    QWORD PTR [rsp+0x20]
   1400047aa:	db 7c 24 20          	fstp   TBYTE PTR [rsp+0x20]
   1400047ae:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
   1400047b3:	66 85 d2             	test   dx,dx
   1400047b6:	79 06                	jns    1400047be <__mingw_pformat+0x5fe>
   1400047b8:	0c 80                	or     al,0x80
   1400047ba:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
   1400047be:	44 89 c0             	mov    eax,r8d
   1400047c1:	41 81 e0 00 00 f0 7f 	and    r8d,0x7ff00000
   1400047c8:	25 ff ff 0f 00       	and    eax,0xfffff
   1400047cd:	09 c8                	or     eax,ecx
   1400047cf:	0f 95 c1             	setne  cl
   1400047d2:	41 81 f8 00 00 f0 7f 	cmp    r8d,0x7ff00000
   1400047d9:	41 0f 95 c1          	setne  r9b
   1400047dd:	44 08 c9             	or     cl,r9b
   1400047e0:	0f 85 f9 01 00 00    	jne    1400049df <__mingw_pformat+0x81f>
   1400047e6:	44 09 c0             	or     eax,r8d
   1400047e9:	0f 84 f0 01 00 00    	je     1400049df <__mingw_pformat+0x81f>
   1400047ef:	89 d1                	mov    ecx,edx
   1400047f1:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
   1400047f6:	48 8d 15 6d 4b 00 00 	lea    rdx,[rip+0x4b6d]        # 14000936a <.rdata+0x1a>
   1400047fd:	81 e1 00 80 00 00    	and    ecx,0x8000
   140004803:	e8 38 e3 ff ff       	call   140002b40 <__pformat_emit_inf_or_nan>
   140004808:	e9 83 fe ff ff       	jmp    140004690 <__mingw_pformat+0x4d0>
   14000480d:	0f 1f 00             	nop    DWORD PTR [rax]
   140004810:	c7 84 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],0xffffffff
   140004817:	ff ff ff ff 
   14000481b:	49 8d 5d 08          	lea    rbx,[r13+0x8]
   14000481f:	41 8b 45 00          	mov    eax,DWORD PTR [r13+0x0]
   140004823:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
   140004828:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
   14000482d:	49 89 dd             	mov    r13,rbx
   140004830:	ba 01 00 00 00       	mov    edx,0x1
   140004835:	48 89 eb             	mov    rbx,rbp
   140004838:	66 89 44 24 60       	mov    WORD PTR [rsp+0x60],ax
   14000483d:	e8 ce df ff ff       	call   140002810 <__pformat_wputchars>
   140004842:	e9 65 fa ff ff       	jmp    1400042ac <__mingw_pformat+0xec>
   140004847:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   14000484b:	49 8b 55 00          	mov    rdx,QWORD PTR [r13+0x0]
   14000484f:	a8 04                	test   al,0x4
   140004851:	0f 85 8a fe ff ff    	jne    1400046e1 <__mingw_pformat+0x521>
   140004857:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
   14000485c:	dd 44 24 20          	fld    QWORD PTR [rsp+0x20]
   140004860:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   140004865:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
   14000486a:	db 7c 24 40          	fstp   TBYTE PTR [rsp+0x40]
   14000486e:	e8 ad f1 ff ff       	call   140003a20 <__pformat_efloat>
   140004873:	e9 18 fe ff ff       	jmp    140004690 <__mingw_pformat+0x4d0>
   140004878:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   14000487c:	49 8b 55 00          	mov    rdx,QWORD PTR [r13+0x0]
   140004880:	a8 04                	test   al,0x4
   140004882:	0f 85 2b fe ff ff    	jne    1400046b3 <__mingw_pformat+0x4f3>
   140004888:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
   14000488d:	dd 44 24 20          	fld    QWORD PTR [rsp+0x20]
   140004891:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   140004896:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
   14000489b:	db 7c 24 40          	fstp   TBYTE PTR [rsp+0x40]
   14000489f:	e8 1c f2 ff ff       	call   140003ac0 <__pformat_float>
   1400048a4:	e9 e7 fd ff ff       	jmp    140004690 <__mingw_pformat+0x4d0>
   1400048a9:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   1400048ad:	49 8b 55 00          	mov    rdx,QWORD PTR [r13+0x0]
   1400048b1:	a8 04                	test   al,0x4
   1400048b3:	0f 85 c2 fd ff ff    	jne    14000467b <__mingw_pformat+0x4bb>
   1400048b9:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
   1400048be:	dd 44 24 20          	fld    QWORD PTR [rsp+0x20]
   1400048c2:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   1400048c7:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
   1400048cc:	db 7c 24 40          	fstp   TBYTE PTR [rsp+0x40]
   1400048d0:	e8 cb f2 ff ff       	call   140003ba0 <__pformat_gfloat>
   1400048d5:	e9 b6 fd ff ff       	jmp    140004690 <__mingw_pformat+0x4d0>
   1400048da:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   1400048df:	b9 25 00 00 00       	mov    ecx,0x25
   1400048e4:	48 89 eb             	mov    rbx,rbp
   1400048e7:	e8 c4 de ff ff       	call   1400027b0 <__pformat_putc>
   1400048ec:	e9 bb f9 ff ff       	jmp    1400042ac <__mingw_pformat+0xec>
   1400048f1:	45 85 f6             	test   r14d,r14d
   1400048f4:	0f 85 66 fa ff ff    	jne    140004360 <__mingw_pformat+0x1a0>
   1400048fa:	4c 8d 4c 24 60       	lea    r9,[rsp+0x60]
   1400048ff:	4c 89 5c 24 38       	mov    QWORD PTR [rsp+0x38],r11
   140004904:	44 89 54 24 34       	mov    DWORD PTR [rsp+0x34],r10d
   140004909:	81 4c 24 78 00 10 00 	or     DWORD PTR [rsp+0x78],0x1000
   140004910:	00 
   140004911:	4c 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],r9
   140004916:	c7 44 24 60 00 00 00 	mov    DWORD PTR [rsp+0x60],0x0
   14000491d:	00 
   14000491e:	e8 c5 32 00 00       	call   140007be8 <localeconv>
   140004923:	4c 8b 4c 24 20       	mov    r9,QWORD PTR [rsp+0x20]
   140004928:	48 8d 4c 24 5e       	lea    rcx,[rsp+0x5e]
   14000492d:	41 b8 10 00 00 00    	mov    r8d,0x10
   140004933:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
   140004937:	e8 24 30 00 00       	call   140007960 <mbrtowc>
   14000493c:	44 8b 54 24 34       	mov    r10d,DWORD PTR [rsp+0x34]
   140004941:	4c 8b 5c 24 38       	mov    r11,QWORD PTR [rsp+0x38]
   140004946:	85 c0                	test   eax,eax
   140004948:	7e 0d                	jle    140004957 <__mingw_pformat+0x797>
   14000494a:	0f b7 54 24 5e       	movzx  edx,WORD PTR [rsp+0x5e]
   14000494f:	66 89 94 24 90 00 00 	mov    WORD PTR [rsp+0x90],dx
   140004956:	00 
   140004957:	89 84 24 8c 00 00 00 	mov    DWORD PTR [rsp+0x8c],eax
   14000495e:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   140004962:	48 89 ee             	mov    rsi,rbp
   140004965:	e9 fd f9 ff ff       	jmp    140004367 <__mingw_pformat+0x1a7>
   14000496a:	4d 85 db             	test   r11,r11
   14000496d:	0f 84 c6 fd ff ff    	je     140004739 <__mingw_pformat+0x579>
   140004973:	41 f7 c6 fd ff ff ff 	test   r14d,0xfffffffd
   14000497a:	0f 85 23 01 00 00    	jne    140004aa3 <__mingw_pformat+0x8e3>
   140004980:	41 8b 45 00          	mov    eax,DWORD PTR [r13+0x0]
   140004984:	49 8d 55 08          	lea    rdx,[r13+0x8]
   140004988:	41 89 03             	mov    DWORD PTR [r11],eax
   14000498b:	85 c0                	test   eax,eax
   14000498d:	0f 88 83 02 00 00    	js     140004c16 <__mingw_pformat+0xa56>
   140004993:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   140004997:	49 89 d5             	mov    r13,rdx
   14000499a:	48 89 ee             	mov    rsi,rbp
   14000499d:	45 31 db             	xor    r11d,r11d
   1400049a0:	e9 c2 f9 ff ff       	jmp    140004367 <__mingw_pformat+0x1a7>
   1400049a5:	45 85 f6             	test   r14d,r14d
   1400049a8:	0f 85 b2 f9 ff ff    	jne    140004360 <__mingw_pformat+0x1a0>
   1400049ae:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   1400049b2:	81 4c 24 78 00 01 00 	or     DWORD PTR [rsp+0x78],0x100
   1400049b9:	00 
   1400049ba:	48 89 ee             	mov    rsi,rbp
   1400049bd:	e9 a5 f9 ff ff       	jmp    140004367 <__mingw_pformat+0x1a7>
   1400049c2:	45 85 f6             	test   r14d,r14d
   1400049c5:	0f 85 95 f9 ff ff    	jne    140004360 <__mingw_pformat+0x1a0>
   1400049cb:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   1400049cf:	81 4c 24 78 00 08 00 	or     DWORD PTR [rsp+0x78],0x800
   1400049d6:	00 
   1400049d7:	48 89 ee             	mov    rsi,rbp
   1400049da:	e9 88 f9 ff ff       	jmp    140004367 <__mingw_pformat+0x1a7>
   1400049df:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
   1400049e4:	66 81 e2 ff 7f       	and    dx,0x7fff
   1400049e9:	0f 84 1a 01 00 00    	je     140004b09 <__mingw_pformat+0x949>
   1400049ef:	66 81 fa 00 3c       	cmp    dx,0x3c00
   1400049f4:	0f 8f 06 01 00 00    	jg     140004b00 <__mingw_pformat+0x940>
   1400049fa:	44 0f bf c2          	movsx  r8d,dx
   1400049fe:	b9 01 3c 00 00       	mov    ecx,0x3c01
   140004a03:	44 29 c1             	sub    ecx,r8d
   140004a06:	48 d3 e8             	shr    rax,cl
   140004a09:	01 ca                	add    edx,ecx
   140004a0b:	66 81 ea fc 3f       	sub    dx,0x3ffc
   140004a10:	48 c1 e8 03          	shr    rax,0x3
   140004a14:	48 89 c1             	mov    rcx,rax
   140004a17:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
   140004a1c:	e8 ff f2 ff ff       	call   140003d20 <__pformat_emit_xfloat.isra.0>
   140004a21:	e9 6a fc ff ff       	jmp    140004690 <__mingw_pformat+0x4d0>
   140004a26:	49 8d 5d 08          	lea    rbx,[r13+0x8]
   140004a2a:	49 8b 75 00          	mov    rsi,QWORD PTR [r13+0x0]
   140004a2e:	48 8d 05 23 49 00 00 	lea    rax,[rip+0x4923]        # 140009358 <.rdata+0x8>
   140004a35:	48 85 f6             	test   rsi,rsi
   140004a38:	48 0f 44 f0          	cmove  rsi,rax
   140004a3c:	8b 84 24 80 00 00 00 	mov    eax,DWORD PTR [rsp+0x80]
   140004a43:	85 c0                	test   eax,eax
   140004a45:	0f 88 30 01 00 00    	js     140004b7b <__mingw_pformat+0x9bb>
   140004a4b:	48 89 f1             	mov    rcx,rsi
   140004a4e:	48 63 d0             	movsxd rdx,eax
   140004a51:	e8 6a 2a 00 00       	call   1400074c0 <wcsnlen>
   140004a56:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
   140004a5b:	48 89 f1             	mov    rcx,rsi
   140004a5e:	89 c2                	mov    edx,eax
   140004a60:	e8 ab dd ff ff       	call   140002810 <__pformat_wputchars>
   140004a65:	e9 ef fb ff ff       	jmp    140004659 <__mingw_pformat+0x499>
   140004a6a:	41 83 fe 04          	cmp    r14d,0x4
   140004a6e:	0f 84 c3 fa ff ff    	je     140004537 <__mingw_pformat+0x377>
   140004a74:	b9 30 00 00 00       	mov    ecx,0x30
   140004a79:	41 83 fe 02          	cmp    r14d,0x2
   140004a7d:	b8 03 00 00 00       	mov    eax,0x3
   140004a82:	44 0f 44 f0          	cmove  r14d,eax
   140004a86:	e9 b1 f8 ff ff       	jmp    14000433c <__mingw_pformat+0x17c>
   140004a8b:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
   140004a90:	48 8d 15 cf 48 00 00 	lea    rdx,[rip+0x48cf]        # 140009366 <.rdata+0x16>
   140004a97:	31 c9                	xor    ecx,ecx
   140004a99:	e8 a2 e0 ff ff       	call   140002b40 <__pformat_emit_inf_or_nan>
   140004a9e:	e9 ed fb ff ff       	jmp    140004690 <__mingw_pformat+0x4d0>
   140004aa3:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   140004aa7:	45 31 db             	xor    r11d,r11d
   140004aaa:	48 89 ee             	mov    rsi,rbp
   140004aad:	41 be 04 00 00 00    	mov    r14d,0x4
   140004ab3:	e9 af f8 ff ff       	jmp    140004367 <__mingw_pformat+0x1a7>
   140004ab8:	48 85 c9             	test   rcx,rcx
   140004abb:	b8 02 c0 ff ff       	mov    eax,0xffffc002
   140004ac0:	0f 45 d0             	cmovne edx,eax
   140004ac3:	e9 4f ff ff ff       	jmp    140004a17 <__mingw_pformat+0x857>
   140004ac8:	48 89 ee             	mov    rsi,rbp
   140004acb:	41 ba 03 00 00 00    	mov    r10d,0x3
   140004ad1:	41 be 04 00 00 00    	mov    r14d,0x4
   140004ad7:	e9 8b f8 ff ff       	jmp    140004367 <__mingw_pformat+0x1a7>
   140004adc:	0c 80                	or     al,0x80
   140004ade:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
   140004ae2:	e9 e9 fa ff ff       	jmp    1400045d0 <__mingw_pformat+0x410>
   140004ae7:	c7 84 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],0x10
   140004aee:	10 00 00 00 
   140004af2:	89 f8                	mov    eax,edi
   140004af4:	80 cc 02             	or     ah,0x2
   140004af7:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
   140004afb:	e9 62 f9 ff ff       	jmp    140004462 <__mingw_pformat+0x2a2>
   140004b00:	66 85 d2             	test   dx,dx
   140004b03:	0f 85 02 ff ff ff    	jne    140004a0b <__mingw_pformat+0x84b>
   140004b09:	48 85 c0             	test   rax,rax
   140004b0c:	b9 05 fc ff ff       	mov    ecx,0xfffffc05
   140004b11:	0f 45 d1             	cmovne edx,ecx
   140004b14:	e9 f7 fe ff ff       	jmp    140004a10 <__mingw_pformat+0x850>
   140004b19:	48 0f bf c9          	movsx  rcx,cx
   140004b1d:	e9 1c f9 ff ff       	jmp    14000443e <__mingw_pformat+0x27e>
   140004b22:	0f b7 c0             	movzx  eax,ax
   140004b25:	e9 9d f8 ff ff       	jmp    1400043c7 <__mingw_pformat+0x207>
   140004b2a:	48 89 02             	mov    QWORD PTR [rdx],rax
   140004b2d:	e9 5e fb ff ff       	jmp    140004690 <__mingw_pformat+0x4d0>
   140004b32:	83 e9 30             	sub    ecx,0x30
   140004b35:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   140004b39:	48 89 ee             	mov    rsi,rbp
   140004b3c:	41 89 0b             	mov    DWORD PTR [r11],ecx
   140004b3f:	e9 23 f8 ff ff       	jmp    140004367 <__mingw_pformat+0x1a7>
   140004b44:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   140004b48:	41 be 02 00 00 00    	mov    r14d,0x2
   140004b4e:	48 89 ee             	mov    rsi,rbp
   140004b51:	c7 84 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],0x0
   140004b58:	00 00 00 00 
   140004b5c:	4c 8d 9c 24 80 00 00 	lea    r11,[rsp+0x80]
   140004b63:	00 
   140004b64:	e9 fe f7 ff ff       	jmp    140004367 <__mingw_pformat+0x1a7>
   140004b69:	49 8b 4d 00          	mov    rcx,QWORD PTR [r13+0x0]
   140004b6d:	e9 cc f8 ff ff       	jmp    14000443e <__mingw_pformat+0x27e>
   140004b72:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
   140004b76:	e9 4c f8 ff ff       	jmp    1400043c7 <__mingw_pformat+0x207>
   140004b7b:	48 89 f1             	mov    rcx,rsi
   140004b7e:	e8 ad 30 00 00       	call   140007c30 <wcslen>
   140004b83:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
   140004b88:	48 89 f1             	mov    rcx,rsi
   140004b8b:	89 c2                	mov    edx,eax
   140004b8d:	e8 7e dc ff ff       	call   140002810 <__pformat_wputchars>
   140004b92:	e9 c2 fa ff ff       	jmp    140004659 <__mingw_pformat+0x499>
   140004b97:	80 7e 02 34          	cmp    BYTE PTR [rsi+0x2],0x34
   140004b9b:	0f 85 96 f9 ff ff    	jne    140004537 <__mingw_pformat+0x377>
   140004ba1:	0f b6 46 03          	movzx  eax,BYTE PTR [rsi+0x3]
   140004ba5:	41 ba 03 00 00 00    	mov    r10d,0x3
   140004bab:	48 83 c6 03          	add    rsi,0x3
   140004baf:	41 be 04 00 00 00    	mov    r14d,0x4
   140004bb5:	e9 ad f7 ff ff       	jmp    140004367 <__mingw_pformat+0x1a7>
   140004bba:	88 02                	mov    BYTE PTR [rdx],al
   140004bbc:	e9 cf fa ff ff       	jmp    140004690 <__mingw_pformat+0x4d0>
   140004bc1:	0f b6 46 02          	movzx  eax,BYTE PTR [rsi+0x2]
   140004bc5:	41 ba 05 00 00 00    	mov    r10d,0x5
   140004bcb:	48 83 c6 02          	add    rsi,0x2
   140004bcf:	41 be 04 00 00 00    	mov    r14d,0x4
   140004bd5:	e9 8d f7 ff ff       	jmp    140004367 <__mingw_pformat+0x1a7>
   140004bda:	0f b6 46 02          	movzx  eax,BYTE PTR [rsi+0x2]
   140004bde:	41 ba 03 00 00 00    	mov    r10d,0x3
   140004be4:	48 83 c6 02          	add    rsi,0x2
   140004be8:	41 be 04 00 00 00    	mov    r14d,0x4
   140004bee:	e9 74 f7 ff ff       	jmp    140004367 <__mingw_pformat+0x1a7>
   140004bf3:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
   140004bf8:	48 89 c1             	mov    rcx,rax
   140004bfb:	e8 90 e4 ff ff       	call   140003090 <__pformat_int.isra.0>
   140004c00:	e9 8b fa ff ff       	jmp    140004690 <__mingw_pformat+0x4d0>
   140004c05:	41 8b 45 00          	mov    eax,DWORD PTR [r13+0x0]
   140004c09:	e9 b9 f7 ff ff       	jmp    1400043c7 <__mingw_pformat+0x207>
   140004c0e:	66 89 02             	mov    WORD PTR [rdx],ax
   140004c11:	e9 7a fa ff ff       	jmp    140004690 <__mingw_pformat+0x4d0>
   140004c16:	45 85 f6             	test   r14d,r14d
   140004c19:	75 2a                	jne    140004c45 <__mingw_pformat+0xa85>
   140004c1b:	81 4c 24 78 00 04 00 	or     DWORD PTR [rsp+0x78],0x400
   140004c22:	00 
   140004c23:	f7 5c 24 7c          	neg    DWORD PTR [rsp+0x7c]
   140004c27:	e9 67 fd ff ff       	jmp    140004993 <__mingw_pformat+0x7d3>
   140004c2c:	0f b6 46 03          	movzx  eax,BYTE PTR [rsi+0x3]
   140004c30:	41 ba 02 00 00 00    	mov    r10d,0x2
   140004c36:	48 83 c6 03          	add    rsi,0x3
   140004c3a:	41 be 04 00 00 00    	mov    r14d,0x4
   140004c40:	e9 22 f7 ff ff       	jmp    140004367 <__mingw_pformat+0x1a7>
   140004c45:	0f b6 46 01          	movzx  eax,BYTE PTR [rsi+0x1]
   140004c49:	49 89 d5             	mov    r13,rdx
   140004c4c:	48 89 ee             	mov    rsi,rbp
   140004c4f:	45 31 db             	xor    r11d,r11d
   140004c52:	c7 84 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],0xffffffff
   140004c59:	ff ff ff ff 
   140004c5d:	41 be 02 00 00 00    	mov    r14d,0x2
   140004c63:	e9 ff f6 ff ff       	jmp    140004367 <__mingw_pformat+0x1a7>
   140004c68:	44 89 d1             	mov    ecx,r10d
   140004c6b:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
   140004c70:	48 8d 15 f3 46 00 00 	lea    rdx,[rip+0x46f3]        # 14000936a <.rdata+0x1a>
   140004c77:	81 e1 00 80 00 00    	and    ecx,0x8000
   140004c7d:	e8 be de ff ff       	call   140002b40 <__pformat_emit_inf_or_nan>
   140004c82:	e9 09 fa ff ff       	jmp    140004690 <__mingw_pformat+0x4d0>
   140004c87:	90                   	nop
   140004c88:	90                   	nop
   140004c89:	90                   	nop
   140004c8a:	90                   	nop
   140004c8b:	90                   	nop
   140004c8c:	90                   	nop
   140004c8d:	90                   	nop
   140004c8e:	90                   	nop
   140004c8f:	90                   	nop

0000000140004c90 <__rv_alloc_D2A>:
   140004c90:	53                   	push   rbx
   140004c91:	48 83 ec 20          	sub    rsp,0x20
   140004c95:	31 db                	xor    ebx,ebx
   140004c97:	83 f9 1b             	cmp    ecx,0x1b
   140004c9a:	7e 18                	jle    140004cb4 <__rv_alloc_D2A+0x24>
   140004c9c:	b8 04 00 00 00       	mov    eax,0x4
   140004ca1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140004ca8:	01 c0                	add    eax,eax
   140004caa:	83 c3 01             	add    ebx,0x1
   140004cad:	8d 50 17             	lea    edx,[rax+0x17]
   140004cb0:	39 ca                	cmp    edx,ecx
   140004cb2:	7c f4                	jl     140004ca8 <__rv_alloc_D2A+0x18>
   140004cb4:	89 d9                	mov    ecx,ebx
   140004cb6:	e8 95 1c 00 00       	call   140006950 <__Balloc_D2A>
   140004cbb:	89 18                	mov    DWORD PTR [rax],ebx
   140004cbd:	48 83 c0 04          	add    rax,0x4
   140004cc1:	48 83 c4 20          	add    rsp,0x20
   140004cc5:	5b                   	pop    rbx
   140004cc6:	c3                   	ret
   140004cc7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140004cce:	00 00 

0000000140004cd0 <__nrv_alloc_D2A>:
   140004cd0:	57                   	push   rdi
   140004cd1:	56                   	push   rsi
   140004cd2:	53                   	push   rbx
   140004cd3:	48 83 ec 20          	sub    rsp,0x20
   140004cd7:	48 89 ce             	mov    rsi,rcx
   140004cda:	48 89 d7             	mov    rdi,rdx
   140004cdd:	41 83 f8 1b          	cmp    r8d,0x1b
   140004ce1:	7e 65                	jle    140004d48 <__nrv_alloc_D2A+0x78>
   140004ce3:	b8 04 00 00 00       	mov    eax,0x4
   140004ce8:	31 db                	xor    ebx,ebx
   140004cea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140004cf0:	01 c0                	add    eax,eax
   140004cf2:	83 c3 01             	add    ebx,0x1
   140004cf5:	8d 50 17             	lea    edx,[rax+0x17]
   140004cf8:	41 39 d0             	cmp    r8d,edx
   140004cfb:	7f f3                	jg     140004cf0 <__nrv_alloc_D2A+0x20>
   140004cfd:	89 d9                	mov    ecx,ebx
   140004cff:	e8 4c 1c 00 00       	call   140006950 <__Balloc_D2A>
   140004d04:	48 8d 56 01          	lea    rdx,[rsi+0x1]
   140004d08:	89 18                	mov    DWORD PTR [rax],ebx
   140004d0a:	0f b6 0e             	movzx  ecx,BYTE PTR [rsi]
   140004d0d:	4c 8d 40 04          	lea    r8,[rax+0x4]
   140004d11:	88 48 04             	mov    BYTE PTR [rax+0x4],cl
   140004d14:	4c 89 c0             	mov    rax,r8
   140004d17:	84 c9                	test   cl,cl
   140004d19:	74 16                	je     140004d31 <__nrv_alloc_D2A+0x61>
   140004d1b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140004d20:	0f b6 0a             	movzx  ecx,BYTE PTR [rdx]
   140004d23:	48 83 c0 01          	add    rax,0x1
   140004d27:	48 83 c2 01          	add    rdx,0x1
   140004d2b:	88 08                	mov    BYTE PTR [rax],cl
   140004d2d:	84 c9                	test   cl,cl
   140004d2f:	75 ef                	jne    140004d20 <__nrv_alloc_D2A+0x50>
   140004d31:	48 85 ff             	test   rdi,rdi
   140004d34:	74 03                	je     140004d39 <__nrv_alloc_D2A+0x69>
   140004d36:	48 89 07             	mov    QWORD PTR [rdi],rax
   140004d39:	4c 89 c0             	mov    rax,r8
   140004d3c:	48 83 c4 20          	add    rsp,0x20
   140004d40:	5b                   	pop    rbx
   140004d41:	5e                   	pop    rsi
   140004d42:	5f                   	pop    rdi
   140004d43:	c3                   	ret
   140004d44:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140004d48:	31 db                	xor    ebx,ebx
   140004d4a:	eb b1                	jmp    140004cfd <__nrv_alloc_D2A+0x2d>
   140004d4c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000140004d50 <__freedtoa>:
   140004d50:	ba 01 00 00 00       	mov    edx,0x1
   140004d55:	48 89 c8             	mov    rax,rcx
   140004d58:	8b 49 fc             	mov    ecx,DWORD PTR [rcx-0x4]
   140004d5b:	d3 e2                	shl    edx,cl
   140004d5d:	66 0f 6e c1          	movd   xmm0,ecx
   140004d61:	48 8d 48 fc          	lea    rcx,[rax-0x4]
   140004d65:	66 0f 6e ca          	movd   xmm1,edx
   140004d69:	66 0f 62 c1          	punpckldq xmm0,xmm1
   140004d6d:	66 0f d6 40 04       	movq   QWORD PTR [rax+0x4],xmm0
   140004d72:	e9 c9 1c 00 00       	jmp    140006a40 <__Bfree_D2A>
   140004d77:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140004d7e:	00 00 

0000000140004d80 <__quorem_D2A>:
   140004d80:	41 57                	push   r15
   140004d82:	41 56                	push   r14
   140004d84:	41 55                	push   r13
   140004d86:	41 54                	push   r12
   140004d88:	55                   	push   rbp
   140004d89:	57                   	push   rdi
   140004d8a:	56                   	push   rsi
   140004d8b:	53                   	push   rbx
   140004d8c:	48 83 ec 38          	sub    rsp,0x38
   140004d90:	31 c0                	xor    eax,eax
   140004d92:	8b 72 14             	mov    esi,DWORD PTR [rdx+0x14]
   140004d95:	49 89 cc             	mov    r12,rcx
   140004d98:	49 89 d3             	mov    r11,rdx
   140004d9b:	39 71 14             	cmp    DWORD PTR [rcx+0x14],esi
   140004d9e:	0f 8c f0 00 00 00    	jl     140004e94 <__quorem_D2A+0x114>
   140004da4:	83 ee 01             	sub    esi,0x1
   140004da7:	48 8d 5a 18          	lea    rbx,[rdx+0x18]
   140004dab:	48 8d 69 18          	lea    rbp,[rcx+0x18]
   140004daf:	31 d2                	xor    edx,edx
   140004db1:	4c 63 d6             	movsxd r10,esi
   140004db4:	49 c1 e2 02          	shl    r10,0x2
   140004db8:	4a 8d 3c 13          	lea    rdi,[rbx+r10*1]
   140004dbc:	49 01 ea             	add    r10,rbp
   140004dbf:	8b 07                	mov    eax,DWORD PTR [rdi]
   140004dc1:	45 8b 02             	mov    r8d,DWORD PTR [r10]
   140004dc4:	8d 48 01             	lea    ecx,[rax+0x1]
   140004dc7:	44 89 c0             	mov    eax,r8d
   140004dca:	f7 f1                	div    ecx
   140004dcc:	89 44 24 2c          	mov    DWORD PTR [rsp+0x2c],eax
   140004dd0:	41 89 c5             	mov    r13d,eax
   140004dd3:	41 39 c8             	cmp    r8d,ecx
   140004dd6:	72 5e                	jb     140004e36 <__quorem_D2A+0xb6>
   140004dd8:	41 89 c7             	mov    r15d,eax
   140004ddb:	49 89 d9             	mov    r9,rbx
   140004dde:	49 89 e8             	mov    r8,rbp
   140004de1:	45 31 f6             	xor    r14d,r14d
   140004de4:	31 c9                	xor    ecx,ecx
   140004de6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   140004ded:	00 00 00 
   140004df0:	41 8b 01             	mov    eax,DWORD PTR [r9]
   140004df3:	41 8b 10             	mov    edx,DWORD PTR [r8]
   140004df6:	49 83 c1 04          	add    r9,0x4
   140004dfa:	49 83 c0 04          	add    r8,0x4
   140004dfe:	49 0f af c7          	imul   rax,r15
   140004e02:	4c 01 f0             	add    rax,r14
   140004e05:	49 89 c6             	mov    r14,rax
   140004e08:	89 c0                	mov    eax,eax
   140004e0a:	48 29 c2             	sub    rdx,rax
   140004e0d:	49 c1 ee 20          	shr    r14,0x20
   140004e11:	48 89 d0             	mov    rax,rdx
   140004e14:	48 29 c8             	sub    rax,rcx
   140004e17:	48 89 c1             	mov    rcx,rax
   140004e1a:	41 89 40 fc          	mov    DWORD PTR [r8-0x4],eax
   140004e1e:	48 c1 e9 20          	shr    rcx,0x20
   140004e22:	83 e1 01             	and    ecx,0x1
   140004e25:	4c 39 cf             	cmp    rdi,r9
   140004e28:	73 c6                	jae    140004df0 <__quorem_D2A+0x70>
   140004e2a:	45 8b 0a             	mov    r9d,DWORD PTR [r10]
   140004e2d:	45 85 c9             	test   r9d,r9d
   140004e30:	0f 84 a5 00 00 00    	je     140004edb <__quorem_D2A+0x15b>
   140004e36:	4c 89 da             	mov    rdx,r11
   140004e39:	4c 89 e1             	mov    rcx,r12
   140004e3c:	e8 df 21 00 00       	call   140007020 <__cmp_D2A>
   140004e41:	85 c0                	test   eax,eax
   140004e43:	78 4b                	js     140004e90 <__quorem_D2A+0x110>
   140004e45:	48 89 e9             	mov    rcx,rbp
   140004e48:	31 d2                	xor    edx,edx
   140004e4a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140004e50:	8b 01                	mov    eax,DWORD PTR [rcx]
   140004e52:	44 8b 03             	mov    r8d,DWORD PTR [rbx]
   140004e55:	48 83 c3 04          	add    rbx,0x4
   140004e59:	48 83 c1 04          	add    rcx,0x4
   140004e5d:	4c 29 c0             	sub    rax,r8
   140004e60:	48 29 d0             	sub    rax,rdx
   140004e63:	48 89 c2             	mov    rdx,rax
   140004e66:	89 41 fc             	mov    DWORD PTR [rcx-0x4],eax
   140004e69:	48 c1 ea 20          	shr    rdx,0x20
   140004e6d:	83 e2 01             	and    edx,0x1
   140004e70:	48 39 df             	cmp    rdi,rbx
   140004e73:	73 db                	jae    140004e50 <__quorem_D2A+0xd0>
   140004e75:	48 63 c6             	movsxd rax,esi
   140004e78:	48 8d 44 85 00       	lea    rax,[rbp+rax*4+0x0]
   140004e7d:	8b 08                	mov    ecx,DWORD PTR [rax]
   140004e7f:	85 c9                	test   ecx,ecx
   140004e81:	74 2e                	je     140004eb1 <__quorem_D2A+0x131>
   140004e83:	41 8d 45 01          	lea    eax,[r13+0x1]
   140004e87:	89 44 24 2c          	mov    DWORD PTR [rsp+0x2c],eax
   140004e8b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140004e90:	8b 44 24 2c          	mov    eax,DWORD PTR [rsp+0x2c]
   140004e94:	48 83 c4 38          	add    rsp,0x38
   140004e98:	5b                   	pop    rbx
   140004e99:	5e                   	pop    rsi
   140004e9a:	5f                   	pop    rdi
   140004e9b:	5d                   	pop    rbp
   140004e9c:	41 5c                	pop    r12
   140004e9e:	41 5d                	pop    r13
   140004ea0:	41 5e                	pop    r14
   140004ea2:	41 5f                	pop    r15
   140004ea4:	c3                   	ret
   140004ea5:	0f 1f 00             	nop    DWORD PTR [rax]
   140004ea8:	8b 10                	mov    edx,DWORD PTR [rax]
   140004eaa:	85 d2                	test   edx,edx
   140004eac:	75 0c                	jne    140004eba <__quorem_D2A+0x13a>
   140004eae:	83 ee 01             	sub    esi,0x1
   140004eb1:	48 83 e8 04          	sub    rax,0x4
   140004eb5:	48 39 c5             	cmp    rbp,rax
   140004eb8:	72 ee                	jb     140004ea8 <__quorem_D2A+0x128>
   140004eba:	41 8d 45 01          	lea    eax,[r13+0x1]
   140004ebe:	41 89 74 24 14       	mov    DWORD PTR [r12+0x14],esi
   140004ec3:	89 44 24 2c          	mov    DWORD PTR [rsp+0x2c],eax
   140004ec7:	eb c7                	jmp    140004e90 <__quorem_D2A+0x110>
   140004ec9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140004ed0:	45 8b 02             	mov    r8d,DWORD PTR [r10]
   140004ed3:	45 85 c0             	test   r8d,r8d
   140004ed6:	75 0c                	jne    140004ee4 <__quorem_D2A+0x164>
   140004ed8:	83 ee 01             	sub    esi,0x1
   140004edb:	49 83 ea 04          	sub    r10,0x4
   140004edf:	4c 39 d5             	cmp    rbp,r10
   140004ee2:	72 ec                	jb     140004ed0 <__quorem_D2A+0x150>
   140004ee4:	41 89 74 24 14       	mov    DWORD PTR [r12+0x14],esi
   140004ee9:	4c 89 da             	mov    rdx,r11
   140004eec:	4c 89 e1             	mov    rcx,r12
   140004eef:	e8 2c 21 00 00       	call   140007020 <__cmp_D2A>
   140004ef4:	85 c0                	test   eax,eax
   140004ef6:	0f 89 49 ff ff ff    	jns    140004e45 <__quorem_D2A+0xc5>
   140004efc:	eb 92                	jmp    140004e90 <__quorem_D2A+0x110>
   140004efe:	90                   	nop
   140004eff:	90                   	nop

0000000140004f00 <__gdtoa>:
   140004f00:	41 57                	push   r15
   140004f02:	41 56                	push   r14
   140004f04:	41 55                	push   r13
   140004f06:	41 54                	push   r12
   140004f08:	55                   	push   rbp
   140004f09:	57                   	push   rdi
   140004f0a:	56                   	push   rsi
   140004f0b:	53                   	push   rbx
   140004f0c:	48 81 ec b8 00 00 00 	sub    rsp,0xb8
   140004f13:	8b 84 24 28 01 00 00 	mov    eax,DWORD PTR [rsp+0x128]
   140004f1a:	41 8b 29             	mov    ebp,DWORD PTR [r9]
   140004f1d:	8b bc 24 20 01 00 00 	mov    edi,DWORD PTR [rsp+0x120]
   140004f24:	89 44 24 38          	mov    DWORD PTR [rsp+0x38],eax
   140004f28:	48 8b 84 24 30 01 00 	mov    rax,QWORD PTR [rsp+0x130]
   140004f2f:	00 
   140004f30:	49 89 cd             	mov    r13,rcx
   140004f33:	4c 89 c6             	mov    rsi,r8
   140004f36:	89 54 24 30          	mov    DWORD PTR [rsp+0x30],edx
   140004f3a:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
   140004f3f:	48 8b 84 24 38 01 00 	mov    rax,QWORD PTR [rsp+0x138]
   140004f46:	00 
   140004f47:	4c 89 4c 24 40       	mov    QWORD PTR [rsp+0x40],r9
   140004f4c:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
   140004f51:	89 e8                	mov    eax,ebp
   140004f53:	83 e0 cf             	and    eax,0xffffffcf
   140004f56:	41 89 01             	mov    DWORD PTR [r9],eax
   140004f59:	89 e8                	mov    eax,ebp
   140004f5b:	83 e0 07             	and    eax,0x7
   140004f5e:	83 f8 03             	cmp    eax,0x3
   140004f61:	0f 84 e1 02 00 00    	je     140005248 <__gdtoa+0x348>
   140004f67:	89 eb                	mov    ebx,ebp
   140004f69:	83 e3 04             	and    ebx,0x4
   140004f6c:	89 5c 24 48          	mov    DWORD PTR [rsp+0x48],ebx
   140004f70:	0f 85 4a 02 00 00    	jne    1400051c0 <__gdtoa+0x2c0>
   140004f76:	85 c0                	test   eax,eax
   140004f78:	0f 84 8a 02 00 00    	je     140005208 <__gdtoa+0x308>
   140004f7e:	44 8b 21             	mov    r12d,DWORD PTR [rcx]
   140004f81:	b8 20 00 00 00       	mov    eax,0x20
   140004f86:	31 c9                	xor    ecx,ecx
   140004f88:	41 83 fc 20          	cmp    r12d,0x20
   140004f8c:	7e 0a                	jle    140004f98 <__gdtoa+0x98>
   140004f8e:	01 c0                	add    eax,eax
   140004f90:	83 c1 01             	add    ecx,0x1
   140004f93:	41 39 c4             	cmp    r12d,eax
   140004f96:	7f f6                	jg     140004f8e <__gdtoa+0x8e>
   140004f98:	e8 b3 19 00 00       	call   140006950 <__Balloc_D2A>
   140004f9d:	45 8d 44 24 ff       	lea    r8d,[r12-0x1]
   140004fa2:	41 c1 f8 05          	sar    r8d,0x5
   140004fa6:	48 89 c3             	mov    rbx,rax
   140004fa9:	48 8d 50 18          	lea    rdx,[rax+0x18]
   140004fad:	48 89 f0             	mov    rax,rsi
   140004fb0:	4d 63 c0             	movsxd r8,r8d
   140004fb3:	4a 8d 0c 86          	lea    rcx,[rsi+r8*4]
   140004fb7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140004fbe:	00 00 
   140004fc0:	44 8b 08             	mov    r9d,DWORD PTR [rax]
   140004fc3:	48 83 c0 04          	add    rax,0x4
   140004fc7:	48 83 c2 04          	add    rdx,0x4
   140004fcb:	44 89 4a fc          	mov    DWORD PTR [rdx-0x4],r9d
   140004fcf:	48 39 c1             	cmp    rcx,rax
   140004fd2:	73 ec                	jae    140004fc0 <__gdtoa+0xc0>
   140004fd4:	48 8d 56 01          	lea    rdx,[rsi+0x1]
   140004fd8:	48 83 c1 01          	add    rcx,0x1
   140004fdc:	4a 8d 04 85 04 00 00 	lea    rax,[r8*4+0x4]
   140004fe3:	00 
   140004fe4:	48 39 d1             	cmp    rcx,rdx
   140004fe7:	ba 04 00 00 00       	mov    edx,0x4
   140004fec:	48 0f 42 c2          	cmovb  rax,rdx
   140004ff0:	48 c1 f8 02          	sar    rax,0x2
   140004ff4:	41 89 c6             	mov    r14d,eax
   140004ff7:	48 8d 04 83          	lea    rax,[rbx+rax*4]
   140004ffb:	eb 10                	jmp    14000500d <__gdtoa+0x10d>
   140004ffd:	0f 1f 00             	nop    DWORD PTR [rax]
   140005000:	48 83 e8 04          	sub    rax,0x4
   140005004:	45 85 f6             	test   r14d,r14d
   140005007:	0f 84 63 02 00 00    	je     140005270 <__gdtoa+0x370>
   14000500d:	44 8b 78 14          	mov    r15d,DWORD PTR [rax+0x14]
   140005011:	44 89 f2             	mov    edx,r14d
   140005014:	41 83 ee 01          	sub    r14d,0x1
   140005018:	45 85 ff             	test   r15d,r15d
   14000501b:	74 e3                	je     140005000 <__gdtoa+0x100>
   14000501d:	4d 63 f6             	movsxd r14,r14d
   140005020:	89 53 14             	mov    DWORD PTR [rbx+0x14],edx
   140005023:	c1 e2 05             	shl    edx,0x5
   140005026:	42 0f bd 44 b3 18    	bsr    eax,DWORD PTR [rbx+r14*4+0x18]
   14000502c:	83 f0 1f             	xor    eax,0x1f
   14000502f:	29 c2                	sub    edx,eax
   140005031:	41 89 d6             	mov    r14d,edx
   140005034:	48 89 d9             	mov    rcx,rbx
   140005037:	e8 a4 17 00 00       	call   1400067e0 <__trailz_D2A>
   14000503c:	8b 4c 24 30          	mov    ecx,DWORD PTR [rsp+0x30]
   140005040:	89 84 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],eax
   140005047:	89 4c 24 60          	mov    DWORD PTR [rsp+0x60],ecx
   14000504b:	85 c0                	test   eax,eax
   14000504d:	0f 85 2d 02 00 00    	jne    140005280 <__gdtoa+0x380>
   140005053:	44 8b 5b 14          	mov    r11d,DWORD PTR [rbx+0x14]
   140005057:	45 85 db             	test   r11d,r11d
   14000505a:	0f 84 a0 01 00 00    	je     140005200 <__gdtoa+0x300>
   140005060:	48 8d 94 24 ac 00 00 	lea    rdx,[rsp+0xac]
   140005067:	00 
   140005068:	48 89 d9             	mov    rcx,rbx
   14000506b:	e8 e0 21 00 00       	call   140007250 <__b2d_D2A>
   140005070:	8b 44 24 60          	mov    eax,DWORD PTR [rsp+0x60]
   140005074:	66 0f ef c9          	pxor   xmm1,xmm1
   140005078:	66 49 0f 7e c1       	movq   r9,xmm0
   14000507d:	4c 89 ca             	mov    rdx,r9
   140005080:	46 8d 04 30          	lea    r8d,[rax+r14*1]
   140005084:	44 89 c8             	mov    eax,r9d
   140005087:	48 c1 ea 20          	shr    rdx,0x20
   14000508b:	41 8d 48 ff          	lea    ecx,[r8-0x1]
   14000508f:	81 e2 ff ff 0f 00    	and    edx,0xfffff
   140005095:	f2 0f 2a c9          	cvtsi2sd xmm1,ecx
   140005099:	f2 0f 59 0d 67 44 00 	mulsd  xmm1,QWORD PTR [rip+0x4467]        # 140009508 <.rdata+0x28>
   1400050a0:	00 
   1400050a1:	81 ca 00 00 f0 3f    	or     edx,0x3ff00000
   1400050a7:	49 89 d2             	mov    r10,rdx
   1400050aa:	49 c1 e2 20          	shl    r10,0x20
   1400050ae:	4c 09 d0             	or     rax,r10
   1400050b1:	41 ba 01 00 00 00    	mov    r10d,0x1
   1400050b7:	45 29 c2             	sub    r10d,r8d
   1400050ba:	66 48 0f 6e c0       	movq   xmm0,rax
   1400050bf:	85 c9                	test   ecx,ecx
   1400050c1:	f2 0f 5c 05 27 44 00 	subsd  xmm0,QWORD PTR [rip+0x4427]        # 1400094f0 <.rdata+0x10>
   1400050c8:	00 
   1400050c9:	f2 0f 59 05 27 44 00 	mulsd  xmm0,QWORD PTR [rip+0x4427]        # 1400094f8 <.rdata+0x18>
   1400050d0:	00 
   1400050d1:	44 0f 49 d1          	cmovns r10d,ecx
   1400050d5:	f2 0f 58 05 23 44 00 	addsd  xmm0,QWORD PTR [rip+0x4423]        # 140009500 <.rdata+0x20>
   1400050dc:	00 
   1400050dd:	41 81 ea 35 04 00 00 	sub    r10d,0x435
   1400050e4:	f2 0f 58 c1          	addsd  xmm0,xmm1
   1400050e8:	45 85 d2             	test   r10d,r10d
   1400050eb:	7e 15                	jle    140005102 <__gdtoa+0x202>
   1400050ed:	66 0f ef c9          	pxor   xmm1,xmm1
   1400050f1:	f2 41 0f 2a ca       	cvtsi2sd xmm1,r10d
   1400050f6:	f2 0f 59 0d 12 44 00 	mulsd  xmm1,QWORD PTR [rip+0x4412]        # 140009510 <.rdata+0x30>
   1400050fd:	00 
   1400050fe:	f2 0f 58 c1          	addsd  xmm0,xmm1
   140005102:	66 0f ef c9          	pxor   xmm1,xmm1
   140005106:	f2 44 0f 2c d8       	cvttsd2si r11d,xmm0
   14000510b:	66 0f 2f c8          	comisd xmm1,xmm0
   14000510f:	0f 87 eb 04 00 00    	ja     140005600 <__gdtoa+0x700>
   140005115:	41 89 ca             	mov    r10d,ecx
   140005118:	89 c0                	mov    eax,eax
   14000511a:	41 c1 e2 14          	shl    r10d,0x14
   14000511e:	44 01 d2             	add    edx,r10d
   140005121:	89 d2                	mov    edx,edx
   140005123:	48 c1 e2 20          	shl    rdx,0x20
   140005127:	48 09 d0             	or     rax,rdx
   14000512a:	48 89 84 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rax
   140005131:	00 
   140005132:	49 89 c7             	mov    r15,rax
   140005135:	49 89 c1             	mov    r9,rax
   140005138:	44 89 f0             	mov    eax,r14d
   14000513b:	29 c8                	sub    eax,ecx
   14000513d:	8d 50 ff             	lea    edx,[rax-0x1]
   140005140:	89 54 24 5c          	mov    DWORD PTR [rsp+0x5c],edx
   140005144:	41 83 fb 16          	cmp    r11d,0x16
   140005148:	0f 87 5a 01 00 00    	ja     1400052a8 <__gdtoa+0x3a8>
   14000514e:	48 8b 15 ab 46 00 00 	mov    rdx,QWORD PTR [rip+0x46ab]        # 140009800 <.refptr.__tens_D2A>
   140005155:	49 63 cb             	movsxd rcx,r11d
   140005158:	66 49 0f 6e ef       	movq   xmm5,r15
   14000515d:	f2 0f 10 04 ca       	movsd  xmm0,QWORD PTR [rdx+rcx*8]
   140005162:	66 0f 2f c5          	comisd xmm0,xmm5
   140005166:	0f 87 14 05 00 00    	ja     140005680 <__gdtoa+0x780>
   14000516c:	c7 84 24 84 00 00 00 	mov    DWORD PTR [rsp+0x84],0x0
   140005173:	00 00 00 00 
   140005177:	c7 44 24 70 00 00 00 	mov    DWORD PTR [rsp+0x70],0x0
   14000517e:	00 
   14000517f:	85 c0                	test   eax,eax
   140005181:	7f 1d                	jg     1400051a0 <__gdtoa+0x2a0>
   140005183:	ba 01 00 00 00       	mov    edx,0x1
   140005188:	c7 44 24 5c 00 00 00 	mov    DWORD PTR [rsp+0x5c],0x0
   14000518f:	00 
   140005190:	29 c2                	sub    edx,eax
   140005192:	89 54 24 70          	mov    DWORD PTR [rsp+0x70],edx
   140005196:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000519d:	00 00 00 
   1400051a0:	44 01 5c 24 5c       	add    DWORD PTR [rsp+0x5c],r11d
   1400051a5:	44 89 5c 24 78       	mov    DWORD PTR [rsp+0x78],r11d
   1400051aa:	c7 84 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],0x0
   1400051b1:	00 00 00 00 
   1400051b5:	e9 40 01 00 00       	jmp    1400052fa <__gdtoa+0x3fa>
   1400051ba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400051c0:	31 f6                	xor    esi,esi
   1400051c2:	83 f8 04             	cmp    eax,0x4
   1400051c5:	75 66                	jne    14000522d <__gdtoa+0x32d>
   1400051c7:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
   1400051cc:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
   1400051d1:	41 b8 03 00 00 00    	mov    r8d,0x3
   1400051d7:	48 8d 0d 0b 43 00 00 	lea    rcx,[rip+0x430b]        # 1400094e9 <.rdata+0x9>
   1400051de:	c7 00 00 80 ff ff    	mov    DWORD PTR [rax],0xffff8000
   1400051e4:	48 81 c4 b8 00 00 00 	add    rsp,0xb8
   1400051eb:	5b                   	pop    rbx
   1400051ec:	5e                   	pop    rsi
   1400051ed:	5f                   	pop    rdi
   1400051ee:	5d                   	pop    rbp
   1400051ef:	41 5c                	pop    r12
   1400051f1:	41 5d                	pop    r13
   1400051f3:	41 5e                	pop    r14
   1400051f5:	41 5f                	pop    r15
   1400051f7:	e9 d4 fa ff ff       	jmp    140004cd0 <__nrv_alloc_D2A>
   1400051fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140005200:	48 89 d9             	mov    rcx,rbx
   140005203:	e8 38 18 00 00       	call   140006a40 <__Bfree_D2A>
   140005208:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
   14000520d:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
   140005212:	41 b8 01 00 00 00    	mov    r8d,0x1
   140005218:	48 8d 0d ce 42 00 00 	lea    rcx,[rip+0x42ce]        # 1400094ed <.rdata+0xd>
   14000521f:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
   140005225:	e8 a6 fa ff ff       	call   140004cd0 <__nrv_alloc_D2A>
   14000522a:	48 89 c6             	mov    rsi,rax
   14000522d:	48 89 f0             	mov    rax,rsi
   140005230:	48 81 c4 b8 00 00 00 	add    rsp,0xb8
   140005237:	5b                   	pop    rbx
   140005238:	5e                   	pop    rsi
   140005239:	5f                   	pop    rdi
   14000523a:	5d                   	pop    rbp
   14000523b:	41 5c                	pop    r12
   14000523d:	41 5d                	pop    r13
   14000523f:	41 5e                	pop    r14
   140005241:	41 5f                	pop    r15
   140005243:	c3                   	ret
   140005244:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140005248:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
   14000524d:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
   140005252:	41 b8 08 00 00 00    	mov    r8d,0x8
   140005258:	48 8d 0d 81 42 00 00 	lea    rcx,[rip+0x4281]        # 1400094e0 <.rdata>
   14000525f:	c7 00 00 80 ff ff    	mov    DWORD PTR [rax],0xffff8000
   140005265:	e9 7a ff ff ff       	jmp    1400051e4 <__gdtoa+0x2e4>
   14000526a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140005270:	c7 43 14 00 00 00 00 	mov    DWORD PTR [rbx+0x14],0x0
   140005277:	e9 b8 fd ff ff       	jmp    140005034 <__gdtoa+0x134>
   14000527c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140005280:	89 c2                	mov    edx,eax
   140005282:	48 89 d9             	mov    rcx,rbx
   140005285:	e8 56 14 00 00       	call   1400066e0 <__rshift_D2A>
   14000528a:	8b 84 24 ac 00 00 00 	mov    eax,DWORD PTR [rsp+0xac]
   140005291:	8b 4c 24 30          	mov    ecx,DWORD PTR [rsp+0x30]
   140005295:	01 c1                	add    ecx,eax
   140005297:	41 29 c6             	sub    r14d,eax
   14000529a:	89 4c 24 60          	mov    DWORD PTR [rsp+0x60],ecx
   14000529e:	e9 b0 fd ff ff       	jmp    140005053 <__gdtoa+0x153>
   1400052a3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400052a8:	c7 84 24 84 00 00 00 	mov    DWORD PTR [rsp+0x84],0x1
   1400052af:	01 00 00 00 
   1400052b3:	44 8b 54 24 5c       	mov    r10d,DWORD PTR [rsp+0x5c]
   1400052b8:	c7 44 24 70 00 00 00 	mov    DWORD PTR [rsp+0x70],0x0
   1400052bf:	00 
   1400052c0:	45 85 d2             	test   r10d,r10d
   1400052c3:	79 13                	jns    1400052d8 <__gdtoa+0x3d8>
   1400052c5:	ba 01 00 00 00       	mov    edx,0x1
   1400052ca:	c7 44 24 5c 00 00 00 	mov    DWORD PTR [rsp+0x5c],0x0
   1400052d1:	00 
   1400052d2:	29 c2                	sub    edx,eax
   1400052d4:	89 54 24 70          	mov    DWORD PTR [rsp+0x70],edx
   1400052d8:	45 85 db             	test   r11d,r11d
   1400052db:	0f 89 bf fe ff ff    	jns    1400051a0 <__gdtoa+0x2a0>
   1400052e1:	44 89 d8             	mov    eax,r11d
   1400052e4:	44 29 5c 24 70       	sub    DWORD PTR [rsp+0x70],r11d
   1400052e9:	f7 d8                	neg    eax
   1400052eb:	44 89 5c 24 78       	mov    DWORD PTR [rsp+0x78],r11d
   1400052f0:	45 31 db             	xor    r11d,r11d
   1400052f3:	89 84 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],eax
   1400052fa:	83 ff 09             	cmp    edi,0x9
   1400052fd:	0f 87 6d 02 00 00    	ja     140005570 <__gdtoa+0x670>
   140005303:	83 ff 05             	cmp    edi,0x5
   140005306:	0f 8f 14 03 00 00    	jg     140005620 <__gdtoa+0x720>
   14000530c:	41 81 c0 fd 03 00 00 	add    r8d,0x3fd
   140005313:	31 c0                	xor    eax,eax
   140005315:	41 81 f8 f7 07 00 00 	cmp    r8d,0x7f7
   14000531c:	0f 96 c0             	setbe  al
   14000531f:	41 89 c7             	mov    r15d,eax
   140005322:	83 ff 04             	cmp    edi,0x4
   140005325:	0f 84 49 0d 00 00    	je     140006074 <__gdtoa+0x1174>
   14000532b:	83 ff 05             	cmp    edi,0x5
   14000532e:	0f 84 a4 0b 00 00    	je     140005ed8 <__gdtoa+0xfd8>
   140005334:	83 ff 02             	cmp    edi,0x2
   140005337:	0f 85 f3 06 00 00    	jne    140005a30 <__gdtoa+0xb30>
   14000533d:	c7 44 24 7c 00 00 00 	mov    DWORD PTR [rsp+0x7c],0x0
   140005344:	00 
   140005345:	8b 44 24 38          	mov    eax,DWORD PTR [rsp+0x38]
   140005349:	b9 01 00 00 00       	mov    ecx,0x1
   14000534e:	85 c0                	test   eax,eax
   140005350:	0f 4f c8             	cmovg  ecx,eax
   140005353:	89 8c 24 9c 00 00 00 	mov    DWORD PTR [rsp+0x9c],ecx
   14000535a:	89 c8                	mov    eax,ecx
   14000535c:	89 4c 24 50          	mov    DWORD PTR [rsp+0x50],ecx
   140005360:	89 4c 24 38          	mov    DWORD PTR [rsp+0x38],ecx
   140005364:	4c 89 8c 24 88 00 00 	mov    QWORD PTR [rsp+0x88],r9
   14000536b:	00 
   14000536c:	44 89 9c 24 98 00 00 	mov    DWORD PTR [rsp+0x98],r11d
   140005373:	00 
   140005374:	89 84 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],eax
   14000537b:	e8 10 f9 ff ff       	call   140004c90 <__rv_alloc_D2A>
   140005380:	44 8b 9c 24 98 00 00 	mov    r11d,DWORD PTR [rsp+0x98]
   140005387:	00 
   140005388:	4c 8b 8c 24 88 00 00 	mov    r9,QWORD PTR [rsp+0x88]
   14000538f:	00 
   140005390:	48 89 44 24 68       	mov    QWORD PTR [rsp+0x68],rax
   140005395:	41 8b 45 0c          	mov    eax,DWORD PTR [r13+0xc]
   140005399:	83 e8 01             	sub    eax,0x1
   14000539c:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
   1400053a0:	74 28                	je     1400053ca <__gdtoa+0x4ca>
   1400053a2:	8b 4c 24 58          	mov    ecx,DWORD PTR [rsp+0x58]
   1400053a6:	b8 02 00 00 00       	mov    eax,0x2
   1400053ab:	85 c9                	test   ecx,ecx
   1400053ad:	0f 49 c1             	cmovns eax,ecx
   1400053b0:	83 e5 08             	and    ebp,0x8
   1400053b3:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
   1400053b7:	89 c1                	mov    ecx,eax
   1400053b9:	0f 84 31 04 00 00    	je     1400057f0 <__gdtoa+0x8f0>
   1400053bf:	b8 03 00 00 00       	mov    eax,0x3
   1400053c4:	29 c8                	sub    eax,ecx
   1400053c6:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
   1400053ca:	8b 54 24 50          	mov    edx,DWORD PTR [rsp+0x50]
   1400053ce:	45 89 fa             	mov    r10d,r15d
   1400053d1:	83 fa 0e             	cmp    edx,0xe
   1400053d4:	0f 96 c0             	setbe  al
   1400053d7:	41 20 c2             	and    r10b,al
   1400053da:	0f 84 10 04 00 00    	je     1400057f0 <__gdtoa+0x8f0>
   1400053e0:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   1400053e4:	0b 44 24 58          	or     eax,DWORD PTR [rsp+0x58]
   1400053e8:	0f 85 02 04 00 00    	jne    1400057f0 <__gdtoa+0x8f0>
   1400053ee:	f2 0f 10 84 24 90 00 	movsd  xmm0,QWORD PTR [rsp+0x90]
   1400053f5:	00 00 
   1400053f7:	8b 8c 24 84 00 00 00 	mov    ecx,DWORD PTR [rsp+0x84]
   1400053fe:	c7 84 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],0x0
   140005405:	00 00 00 00 
   140005409:	85 c9                	test   ecx,ecx
   14000540b:	74 12                	je     14000541f <__gdtoa+0x51f>
   14000540d:	f2 0f 10 25 0b 41 00 	movsd  xmm4,QWORD PTR [rip+0x410b]        # 140009520 <.rdata+0x40>
   140005414:	00 
   140005415:	66 0f 2f e0          	comisd xmm4,xmm0
   140005419:	0f 87 cb 0e 00 00    	ja     1400062ea <__gdtoa+0x13ea>
   14000541f:	66 0f 28 c8          	movapd xmm1,xmm0
   140005423:	f2 0f 58 c8          	addsd  xmm1,xmm0
   140005427:	f2 0f 58 0d 09 41 00 	addsd  xmm1,QWORD PTR [rip+0x4109]        # 140009538 <.rdata+0x58>
   14000542e:	00 
   14000542f:	66 48 0f 7e c8       	movq   rax,xmm1
   140005434:	48 89 c2             	mov    rdx,rax
   140005437:	89 c0                	mov    eax,eax
   140005439:	48 c1 ea 20          	shr    rdx,0x20
   14000543d:	81 ea 00 00 40 03    	sub    edx,0x3400000
   140005443:	48 c1 e2 20          	shl    rdx,0x20
   140005447:	48 09 d0             	or     rax,rdx
   14000544a:	8b 54 24 50          	mov    edx,DWORD PTR [rsp+0x50]
   14000544e:	85 d2                	test   edx,edx
   140005450:	0f 84 5f 03 00 00    	je     1400057b5 <__gdtoa+0x8b5>
   140005456:	8b 6c 24 50          	mov    ebp,DWORD PTR [rsp+0x50]
   14000545a:	45 31 ff             	xor    r15d,r15d
   14000545d:	48 8b 15 9c 43 00 00 	mov    rdx,QWORD PTR [rip+0x439c]        # 140009800 <.refptr.__tens_D2A>
   140005464:	66 48 0f 6e d0       	movq   xmm2,rax
   140005469:	8d 45 ff             	lea    eax,[rbp-0x1]
   14000546c:	48 98                	cdqe
   14000546e:	f2 0f 10 1c c2       	movsd  xmm3,QWORD PTR [rdx+rax*8]
   140005473:	8b 44 24 7c          	mov    eax,DWORD PTR [rsp+0x7c]
   140005477:	85 c0                	test   eax,eax
   140005479:	0f 84 e6 05 00 00    	je     140005a65 <__gdtoa+0xb65>
   14000547f:	f2 0f 10 0d d9 40 00 	movsd  xmm1,QWORD PTR [rip+0x40d9]        # 140009560 <.rdata+0x80>
   140005486:	00 
   140005487:	f2 0f 2c c0          	cvttsd2si eax,xmm0
   14000548b:	48 8b 4c 24 68       	mov    rcx,QWORD PTR [rsp+0x68]
   140005490:	f2 0f 5e cb          	divsd  xmm1,xmm3
   140005494:	48 8d 51 01          	lea    rdx,[rcx+0x1]
   140005498:	f2 0f 5c ca          	subsd  xmm1,xmm2
   14000549c:	66 0f ef d2          	pxor   xmm2,xmm2
   1400054a0:	f2 0f 2a d0          	cvtsi2sd xmm2,eax
   1400054a4:	83 c0 30             	add    eax,0x30
   1400054a7:	88 01                	mov    BYTE PTR [rcx],al
   1400054a9:	f2 0f 5c c2          	subsd  xmm0,xmm2
   1400054ad:	66 0f 2f c8          	comisd xmm1,xmm0
   1400054b1:	0f 87 61 10 00 00    	ja     140006518 <__gdtoa+0x1618>
   1400054b7:	f2 0f 10 25 61 40 00 	movsd  xmm4,QWORD PTR [rip+0x4061]        # 140009520 <.rdata+0x40>
   1400054be:	00 
   1400054bf:	f2 0f 10 1d 61 40 00 	movsd  xmm3,QWORD PTR [rip+0x4061]        # 140009528 <.rdata+0x48>
   1400054c6:	00 
   1400054c7:	eb 4c                	jmp    140005515 <__gdtoa+0x615>
   1400054c9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   1400054d0:	8b 84 24 ac 00 00 00 	mov    eax,DWORD PTR [rsp+0xac]
   1400054d7:	83 c0 01             	add    eax,0x1
   1400054da:	89 84 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],eax
   1400054e1:	39 e8                	cmp    eax,ebp
   1400054e3:	0f 8d f5 02 00 00    	jge    1400057de <__gdtoa+0x8de>
   1400054e9:	f2 0f 59 c3          	mulsd  xmm0,xmm3
   1400054ed:	66 0f ef d2          	pxor   xmm2,xmm2
   1400054f1:	48 83 c2 01          	add    rdx,0x1
   1400054f5:	f2 0f 59 cb          	mulsd  xmm1,xmm3
   1400054f9:	f2 0f 2c c0          	cvttsd2si eax,xmm0
   1400054fd:	f2 0f 2a d0          	cvtsi2sd xmm2,eax
   140005501:	83 c0 30             	add    eax,0x30
   140005504:	88 42 ff             	mov    BYTE PTR [rdx-0x1],al
   140005507:	f2 0f 5c c2          	subsd  xmm0,xmm2
   14000550b:	66 0f 2f c8          	comisd xmm1,xmm0
   14000550f:	0f 87 03 10 00 00    	ja     140006518 <__gdtoa+0x1618>
   140005515:	66 0f 28 d4          	movapd xmm2,xmm4
   140005519:	f2 0f 5c d0          	subsd  xmm2,xmm0
   14000551d:	66 0f 2f ca          	comisd xmm1,xmm2
   140005521:	76 ad                	jbe    1400054d0 <__gdtoa+0x5d0>
   140005523:	44 0f b6 42 ff       	movzx  r8d,BYTE PTR [rdx-0x1]
   140005528:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   14000552d:	eb 12                	jmp    140005541 <__gdtoa+0x641>
   14000552f:	90                   	nop
   140005530:	48 39 c6             	cmp    rsi,rax
   140005533:	0f 84 b2 0e 00 00    	je     1400063eb <__gdtoa+0x14eb>
   140005539:	44 0f b6 40 ff       	movzx  r8d,BYTE PTR [rax-0x1]
   14000553e:	48 89 c2             	mov    rdx,rax
   140005541:	48 8d 42 ff          	lea    rax,[rdx-0x1]
   140005545:	41 80 f8 39          	cmp    r8b,0x39
   140005549:	74 e5                	je     140005530 <__gdtoa+0x630>
   14000554b:	48 89 54 24 68       	mov    QWORD PTR [rsp+0x68],rdx
   140005550:	41 83 c0 01          	add    r8d,0x1
   140005554:	44 88 00             	mov    BYTE PTR [rax],r8b
   140005557:	41 83 c7 01          	add    r15d,0x1
   14000555b:	c7 44 24 48 20 00 00 	mov    DWORD PTR [rsp+0x48],0x20
   140005562:	00 
   140005563:	e9 ed 01 00 00       	jmp    140005755 <__gdtoa+0x855>
   140005568:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000556f:	00 
   140005570:	41 81 c0 fd 03 00 00 	add    r8d,0x3fd
   140005577:	31 c0                	xor    eax,eax
   140005579:	41 81 f8 f7 07 00 00 	cmp    r8d,0x7f7
   140005580:	0f 96 c0             	setbe  al
   140005583:	31 ff                	xor    edi,edi
   140005585:	41 89 c7             	mov    r15d,eax
   140005588:	66 0f ef c0          	pxor   xmm0,xmm0
   14000558c:	4c 89 4c 24 50       	mov    QWORD PTR [rsp+0x50],r9
   140005591:	f2 41 0f 2a c4       	cvtsi2sd xmm0,r12d
   140005596:	f2 0f 59 05 7a 3f 00 	mulsd  xmm0,QWORD PTR [rip+0x3f7a]        # 140009518 <.rdata+0x38>
   14000559d:	00 
   14000559e:	44 89 5c 24 38       	mov    DWORD PTR [rsp+0x38],r11d
   1400055a3:	f2 0f 2c c8          	cvttsd2si ecx,xmm0
   1400055a7:	83 c1 03             	add    ecx,0x3
   1400055aa:	89 8c 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],ecx
   1400055b1:	e8 da f6 ff ff       	call   140004c90 <__rv_alloc_D2A>
   1400055b6:	44 8b 5c 24 38       	mov    r11d,DWORD PTR [rsp+0x38]
   1400055bb:	4c 8b 4c 24 50       	mov    r9,QWORD PTR [rsp+0x50]
   1400055c0:	48 89 44 24 68       	mov    QWORD PTR [rsp+0x68],rax
   1400055c5:	41 8b 45 0c          	mov    eax,DWORD PTR [r13+0xc]
   1400055c9:	83 e8 01             	sub    eax,0x1
   1400055cc:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
   1400055d0:	0f 84 be 00 00 00    	je     140005694 <__gdtoa+0x794>
   1400055d6:	c7 44 24 38 00 00 00 	mov    DWORD PTR [rsp+0x38],0x0
   1400055dd:	00 
   1400055de:	c7 44 24 7c 01 00 00 	mov    DWORD PTR [rsp+0x7c],0x1
   1400055e5:	00 
   1400055e6:	c7 84 24 9c 00 00 00 	mov    DWORD PTR [rsp+0x9c],0xffffffff
   1400055ed:	ff ff ff ff 
   1400055f1:	c7 44 24 50 ff ff ff 	mov    DWORD PTR [rsp+0x50],0xffffffff
   1400055f8:	ff 
   1400055f9:	e9 a4 fd ff ff       	jmp    1400053a2 <__gdtoa+0x4a2>
   1400055fe:	66 90                	xchg   ax,ax
   140005600:	66 0f ef c9          	pxor   xmm1,xmm1
   140005604:	f2 41 0f 2a cb       	cvtsi2sd xmm1,r11d
   140005609:	66 0f 2e c8          	ucomisd xmm1,xmm0
   14000560d:	7a 06                	jp     140005615 <__gdtoa+0x715>
   14000560f:	0f 84 00 fb ff ff    	je     140005115 <__gdtoa+0x215>
   140005615:	41 83 eb 01          	sub    r11d,0x1
   140005619:	e9 f7 fa ff ff       	jmp    140005115 <__gdtoa+0x215>
   14000561e:	66 90                	xchg   ax,ax
   140005620:	83 ef 04             	sub    edi,0x4
   140005623:	45 31 ff             	xor    r15d,r15d
   140005626:	83 ff 04             	cmp    edi,0x4
   140005629:	0f 84 45 0a 00 00    	je     140006074 <__gdtoa+0x1174>
   14000562f:	83 ff 05             	cmp    edi,0x5
   140005632:	0f 84 a0 08 00 00    	je     140005ed8 <__gdtoa+0xfd8>
   140005638:	c7 44 24 7c 00 00 00 	mov    DWORD PTR [rsp+0x7c],0x0
   14000563f:	00 
   140005640:	83 ff 02             	cmp    edi,0x2
   140005643:	0f 84 fc fc ff ff    	je     140005345 <__gdtoa+0x445>
   140005649:	bf 03 00 00 00       	mov    edi,0x3
   14000564e:	66 90                	xchg   ax,ax
   140005650:	8b 4c 24 38          	mov    ecx,DWORD PTR [rsp+0x38]
   140005654:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   140005658:	01 c8                	add    eax,ecx
   14000565a:	8d 50 01             	lea    edx,[rax+0x1]
   14000565d:	89 84 24 9c 00 00 00 	mov    DWORD PTR [rsp+0x9c],eax
   140005664:	b8 01 00 00 00       	mov    eax,0x1
   140005669:	85 d2                	test   edx,edx
   14000566b:	89 54 24 50          	mov    DWORD PTR [rsp+0x50],edx
   14000566f:	0f 4f c2             	cmovg  eax,edx
   140005672:	89 c1                	mov    ecx,eax
   140005674:	e9 eb fc ff ff       	jmp    140005364 <__gdtoa+0x464>
   140005679:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140005680:	c7 84 24 84 00 00 00 	mov    DWORD PTR [rsp+0x84],0x0
   140005687:	00 00 00 00 
   14000568b:	41 83 eb 01          	sub    r11d,0x1
   14000568f:	e9 1f fc ff ff       	jmp    1400052b3 <__gdtoa+0x3b3>
   140005694:	8b 44 24 60          	mov    eax,DWORD PTR [rsp+0x60]
   140005698:	c7 44 24 38 00 00 00 	mov    DWORD PTR [rsp+0x38],0x0
   14000569f:	00 
   1400056a0:	c7 44 24 50 ff ff ff 	mov    DWORD PTR [rsp+0x50],0xffffffff
   1400056a7:	ff 
   1400056a8:	85 c0                	test   eax,eax
   1400056aa:	0f 88 e4 0d 00 00    	js     140006494 <__gdtoa+0x1594>
   1400056b0:	c7 44 24 7c 01 00 00 	mov    DWORD PTR [rsp+0x7c],0x1
   1400056b7:	00 
   1400056b8:	c7 84 24 9c 00 00 00 	mov    DWORD PTR [rsp+0x9c],0xffffffff
   1400056bf:	ff ff ff ff 
   1400056c3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400056c8:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   1400056cc:	41 3b 45 14          	cmp    eax,DWORD PTR [r13+0x14]
   1400056d0:	0f 8f 28 01 00 00    	jg     1400057fe <__gdtoa+0x8fe>
   1400056d6:	48 8b 15 23 41 00 00 	mov    rdx,QWORD PTR [rip+0x4123]        # 140009800 <.refptr.__tens_D2A>
   1400056dd:	48 63 44 24 78       	movsxd rax,DWORD PTR [rsp+0x78]
   1400056e2:	8b 4c 24 38          	mov    ecx,DWORD PTR [rsp+0x38]
   1400056e6:	f2 0f 10 14 c2       	movsd  xmm2,QWORD PTR [rdx+rax*8]
   1400056eb:	48 89 c6             	mov    rsi,rax
   1400056ee:	85 c9                	test   ecx,ecx
   1400056f0:	0f 89 96 08 00 00    	jns    140005f8c <__gdtoa+0x108c>
   1400056f6:	8b 44 24 50          	mov    eax,DWORD PTR [rsp+0x50]
   1400056fa:	85 c0                	test   eax,eax
   1400056fc:	0f 8f 8a 08 00 00    	jg     140005f8c <__gdtoa+0x108c>
   140005702:	0f 85 3e 03 00 00    	jne    140005a46 <__gdtoa+0xb46>
   140005708:	f2 0f 59 15 30 3e 00 	mulsd  xmm2,QWORD PTR [rip+0x3e30]        # 140009540 <.rdata+0x60>
   14000570f:	00 
   140005710:	66 0f 2f 94 24 90 00 	comisd xmm2,QWORD PTR [rsp+0x90]
   140005717:	00 00 
   140005719:	0f 83 27 03 00 00    	jae    140005a46 <__gdtoa+0xb46>
   14000571f:	83 c6 02             	add    esi,0x2
   140005722:	45 31 d2             	xor    r10d,r10d
   140005725:	31 ed                	xor    ebp,ebp
   140005727:	41 89 f7             	mov    r15d,esi
   14000572a:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   14000572f:	48 83 44 24 68 01    	add    QWORD PTR [rsp+0x68],0x1
   140005735:	c6 06 31             	mov    BYTE PTR [rsi],0x31
   140005738:	c7 44 24 48 20 00 00 	mov    DWORD PTR [rsp+0x48],0x20
   14000573f:	00 
   140005740:	4c 89 d1             	mov    rcx,r10
   140005743:	e8 f8 12 00 00       	call   140006a40 <__Bfree_D2A>
   140005748:	48 85 ed             	test   rbp,rbp
   14000574b:	74 08                	je     140005755 <__gdtoa+0x855>
   14000574d:	48 89 e9             	mov    rcx,rbp
   140005750:	e8 eb 12 00 00       	call   140006a40 <__Bfree_D2A>
   140005755:	48 89 d9             	mov    rcx,rbx
   140005758:	e8 e3 12 00 00       	call   140006a40 <__Bfree_D2A>
   14000575d:	48 8b 7c 24 20       	mov    rdi,QWORD PTR [rsp+0x20]
   140005762:	48 8b 44 24 68       	mov    rax,QWORD PTR [rsp+0x68]
   140005767:	c6 00 00             	mov    BYTE PTR [rax],0x0
   14000576a:	44 89 3f             	mov    DWORD PTR [rdi],r15d
   14000576d:	48 8b 7c 24 28       	mov    rdi,QWORD PTR [rsp+0x28]
   140005772:	48 85 ff             	test   rdi,rdi
   140005775:	74 03                	je     14000577a <__gdtoa+0x87a>
   140005777:	48 89 07             	mov    QWORD PTR [rdi],rax
   14000577a:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
   14000577f:	8b 7c 24 48          	mov    edi,DWORD PTR [rsp+0x48]
   140005783:	09 38                	or     DWORD PTR [rax],edi
   140005785:	e9 a3 fa ff ff       	jmp    14000522d <__gdtoa+0x32d>
   14000578a:	66 0f 28 c8          	movapd xmm1,xmm0
   14000578e:	f2 0f 58 c8          	addsd  xmm1,xmm0
   140005792:	f2 0f 58 0d 9e 3d 00 	addsd  xmm1,QWORD PTR [rip+0x3d9e]        # 140009538 <.rdata+0x58>
   140005799:	00 
   14000579a:	66 48 0f 7e c8       	movq   rax,xmm1
   14000579f:	48 89 c2             	mov    rdx,rax
   1400057a2:	89 c0                	mov    eax,eax
   1400057a4:	48 c1 ea 20          	shr    rdx,0x20
   1400057a8:	81 ea 00 00 40 03    	sub    edx,0x3400000
   1400057ae:	48 c1 e2 20          	shl    rdx,0x20
   1400057b2:	48 09 d0             	or     rax,rdx
   1400057b5:	f2 0f 5c 05 83 3d 00 	subsd  xmm0,QWORD PTR [rip+0x3d83]        # 140009540 <.rdata+0x60>
   1400057bc:	00 
   1400057bd:	66 48 0f 6e c8       	movq   xmm1,rax
   1400057c2:	66 0f 2f c1          	comisd xmm0,xmm1
   1400057c6:	0f 87 bf 0b 00 00    	ja     14000638b <__gdtoa+0x148b>
   1400057cc:	66 0f 57 0d 7c 3d 00 	xorpd  xmm1,XMMWORD PTR [rip+0x3d7c]        # 140009550 <.rdata+0x70>
   1400057d3:	00 
   1400057d4:	66 0f 2f c8          	comisd xmm1,xmm0
   1400057d8:	0f 87 68 02 00 00    	ja     140005a46 <__gdtoa+0xb46>
   1400057de:	c7 44 24 58 00 00 00 	mov    DWORD PTR [rsp+0x58],0x0
   1400057e5:	00 
   1400057e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400057ed:	00 00 00 
   1400057f0:	44 8b 44 24 60       	mov    r8d,DWORD PTR [rsp+0x60]
   1400057f5:	45 85 c0             	test   r8d,r8d
   1400057f8:	0f 89 ca fe ff ff    	jns    1400056c8 <__gdtoa+0x7c8>
   1400057fe:	8b 54 24 7c          	mov    edx,DWORD PTR [rsp+0x7c]
   140005802:	85 d2                	test   edx,edx
   140005804:	0f 84 1e 03 00 00    	je     140005b28 <__gdtoa+0xc28>
   14000580a:	44 8b 7c 24 60       	mov    r15d,DWORD PTR [rsp+0x60]
   14000580f:	45 29 f4             	sub    r12d,r14d
   140005812:	41 8b 55 04          	mov    edx,DWORD PTR [r13+0x4]
   140005816:	41 8d 44 24 01       	lea    eax,[r12+0x1]
   14000581b:	44 89 f9             	mov    ecx,r15d
   14000581e:	89 84 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],eax
   140005825:	44 29 e1             	sub    ecx,r12d
   140005828:	39 d1                	cmp    ecx,edx
   14000582a:	0f 8d 38 07 00 00    	jge    140005f68 <__gdtoa+0x1068>
   140005830:	8d 47 fd             	lea    eax,[rdi-0x3]
   140005833:	83 e0 fd             	and    eax,0xfffffffd
   140005836:	0f 84 e4 06 00 00    	je     140005f20 <__gdtoa+0x1020>
   14000583c:	44 89 f8             	mov    eax,r15d
   14000583f:	44 8b 7c 24 50       	mov    r15d,DWORD PTR [rsp+0x50]
   140005844:	29 d0                	sub    eax,edx
   140005846:	83 c0 01             	add    eax,0x1
   140005849:	83 ff 01             	cmp    edi,0x1
   14000584c:	0f 9f c1             	setg   cl
   14000584f:	45 85 ff             	test   r15d,r15d
   140005852:	89 84 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],eax
   140005859:	0f 9f c2             	setg   dl
   14000585c:	84 d1                	test   cl,dl
   14000585e:	74 09                	je     140005869 <__gdtoa+0x969>
   140005860:	44 39 f8             	cmp    eax,r15d
   140005863:	0f 8f a1 0d 00 00    	jg     14000660a <__gdtoa+0x170a>
   140005869:	8b 54 24 70          	mov    edx,DWORD PTR [rsp+0x70]
   14000586d:	01 44 24 5c          	add    DWORD PTR [rsp+0x5c],eax
   140005871:	44 8b a4 24 80 00 00 	mov    r12d,DWORD PTR [rsp+0x80]
   140005878:	00 
   140005879:	01 d0                	add    eax,edx
   14000587b:	89 54 24 60          	mov    DWORD PTR [rsp+0x60],edx
   14000587f:	89 44 24 70          	mov    DWORD PTR [rsp+0x70],eax
   140005883:	b9 01 00 00 00       	mov    ecx,0x1
   140005888:	44 89 9c 24 98 00 00 	mov    DWORD PTR [rsp+0x98],r11d
   14000588f:	00 
   140005890:	e8 db 12 00 00       	call   140006b70 <__i2b_D2A>
   140005895:	c7 44 24 7c 01 00 00 	mov    DWORD PTR [rsp+0x7c],0x1
   14000589c:	00 
   14000589d:	44 8b 9c 24 98 00 00 	mov    r11d,DWORD PTR [rsp+0x98]
   1400058a4:	00 
   1400058a5:	48 89 c5             	mov    rbp,rax
   1400058a8:	8b 4c 24 60          	mov    ecx,DWORD PTR [rsp+0x60]
   1400058ac:	85 c9                	test   ecx,ecx
   1400058ae:	7e 26                	jle    1400058d6 <__gdtoa+0x9d6>
   1400058b0:	8b 54 24 5c          	mov    edx,DWORD PTR [rsp+0x5c]
   1400058b4:	85 d2                	test   edx,edx
   1400058b6:	7e 1e                	jle    1400058d6 <__gdtoa+0x9d6>
   1400058b8:	39 d1                	cmp    ecx,edx
   1400058ba:	89 d0                	mov    eax,edx
   1400058bc:	0f 4e c1             	cmovle eax,ecx
   1400058bf:	29 44 24 70          	sub    DWORD PTR [rsp+0x70],eax
   1400058c3:	29 c1                	sub    ecx,eax
   1400058c5:	29 c2                	sub    edx,eax
   1400058c7:	89 84 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],eax
   1400058ce:	89 4c 24 60          	mov    DWORD PTR [rsp+0x60],ecx
   1400058d2:	89 54 24 5c          	mov    DWORD PTR [rsp+0x5c],edx
   1400058d6:	8b 84 24 80 00 00 00 	mov    eax,DWORD PTR [rsp+0x80]
   1400058dd:	85 c0                	test   eax,eax
   1400058df:	74 33                	je     140005914 <__gdtoa+0xa14>
   1400058e1:	8b 44 24 7c          	mov    eax,DWORD PTR [rsp+0x7c]
   1400058e5:	85 c0                	test   eax,eax
   1400058e7:	74 09                	je     1400058f2 <__gdtoa+0x9f2>
   1400058e9:	45 85 e4             	test   r12d,r12d
   1400058ec:	0f 85 67 08 00 00    	jne    140006159 <__gdtoa+0x1259>
   1400058f2:	8b 94 24 80 00 00 00 	mov    edx,DWORD PTR [rsp+0x80]
   1400058f9:	48 89 d9             	mov    rcx,rbx
   1400058fc:	44 89 9c 24 98 00 00 	mov    DWORD PTR [rsp+0x98],r11d
   140005903:	00 
   140005904:	e8 87 14 00 00       	call   140006d90 <__pow5mult_D2A>
   140005909:	44 8b 9c 24 98 00 00 	mov    r11d,DWORD PTR [rsp+0x98]
   140005910:	00 
   140005911:	48 89 c3             	mov    rbx,rax
   140005914:	b9 01 00 00 00       	mov    ecx,0x1
   140005919:	44 89 9c 24 80 00 00 	mov    DWORD PTR [rsp+0x80],r11d
   140005920:	00 
   140005921:	e8 4a 12 00 00       	call   140006b70 <__i2b_D2A>
   140005926:	44 8b 9c 24 80 00 00 	mov    r11d,DWORD PTR [rsp+0x80]
   14000592d:	00 
   14000592e:	49 89 c2             	mov    r10,rax
   140005931:	45 85 db             	test   r11d,r11d
   140005934:	0f 85 66 05 00 00    	jne    140005ea0 <__gdtoa+0xfa0>
   14000593a:	83 ff 01             	cmp    edi,0x1
   14000593d:	0f 8e a5 05 00 00    	jle    140005ee8 <__gdtoa+0xfe8>
   140005943:	41 bc 1f 00 00 00    	mov    r12d,0x1f
   140005949:	8b 44 24 5c          	mov    eax,DWORD PTR [rsp+0x5c]
   14000594d:	41 29 c4             	sub    r12d,eax
   140005950:	8b 44 24 70          	mov    eax,DWORD PTR [rsp+0x70]
   140005954:	41 83 ec 04          	sub    r12d,0x4
   140005958:	41 83 e4 1f          	and    r12d,0x1f
   14000595c:	44 01 e0             	add    eax,r12d
   14000595f:	44 89 a4 24 ac 00 00 	mov    DWORD PTR [rsp+0xac],r12d
   140005966:	00 
   140005967:	44 89 e2             	mov    edx,r12d
   14000596a:	85 c0                	test   eax,eax
   14000596c:	7e 28                	jle    140005996 <__gdtoa+0xa96>
   14000596e:	89 c2                	mov    edx,eax
   140005970:	48 89 d9             	mov    rcx,rbx
   140005973:	4c 89 54 24 70       	mov    QWORD PTR [rsp+0x70],r10
   140005978:	44 89 5c 24 30       	mov    DWORD PTR [rsp+0x30],r11d
   14000597d:	e8 8e 15 00 00       	call   140006f10 <__lshift_D2A>
   140005982:	4c 8b 54 24 70       	mov    r10,QWORD PTR [rsp+0x70]
   140005987:	44 8b 5c 24 30       	mov    r11d,DWORD PTR [rsp+0x30]
   14000598c:	8b 94 24 ac 00 00 00 	mov    edx,DWORD PTR [rsp+0xac]
   140005993:	48 89 c3             	mov    rbx,rax
   140005996:	8b 44 24 5c          	mov    eax,DWORD PTR [rsp+0x5c]
   14000599a:	01 d0                	add    eax,edx
   14000599c:	89 c2                	mov    edx,eax
   14000599e:	85 c0                	test   eax,eax
   1400059a0:	7e 15                	jle    1400059b7 <__gdtoa+0xab7>
   1400059a2:	4c 89 d1             	mov    rcx,r10
   1400059a5:	44 89 5c 24 30       	mov    DWORD PTR [rsp+0x30],r11d
   1400059aa:	e8 61 15 00 00       	call   140006f10 <__lshift_D2A>
   1400059af:	44 8b 5c 24 30       	mov    r11d,DWORD PTR [rsp+0x30]
   1400059b4:	49 89 c2             	mov    r10,rax
   1400059b7:	8b 84 24 84 00 00 00 	mov    eax,DWORD PTR [rsp+0x84]
   1400059be:	83 ff 02             	cmp    edi,0x2
   1400059c1:	41 0f 9f c5          	setg   r13b
   1400059c5:	85 c0                	test   eax,eax
   1400059c7:	0f 85 93 03 00 00    	jne    140005d60 <__gdtoa+0xe60>
   1400059cd:	44 8b 7c 24 50       	mov    r15d,DWORD PTR [rsp+0x50]
   1400059d2:	45 85 ff             	test   r15d,r15d
   1400059d5:	0f 8f 65 01 00 00    	jg     140005b40 <__gdtoa+0xc40>
   1400059db:	45 84 ed             	test   r13b,r13b
   1400059de:	0f 84 5c 01 00 00    	je     140005b40 <__gdtoa+0xc40>
   1400059e4:	44 8b 74 24 50       	mov    r14d,DWORD PTR [rsp+0x50]
   1400059e9:	45 85 f6             	test   r14d,r14d
   1400059ec:	75 5d                	jne    140005a4b <__gdtoa+0xb4b>
   1400059ee:	4c 89 d1             	mov    rcx,r10
   1400059f1:	45 31 c0             	xor    r8d,r8d
   1400059f4:	ba 05 00 00 00       	mov    edx,0x5
   1400059f9:	e8 b2 10 00 00       	call   140006ab0 <__multadd_D2A>
   1400059fe:	48 89 d9             	mov    rcx,rbx
   140005a01:	48 89 c2             	mov    rdx,rax
   140005a04:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
   140005a09:	e8 12 16 00 00       	call   140007020 <__cmp_D2A>
   140005a0e:	4c 8b 54 24 30       	mov    r10,QWORD PTR [rsp+0x30]
   140005a13:	85 c0                	test   eax,eax
   140005a15:	7e 34                	jle    140005a4b <__gdtoa+0xb4b>
   140005a17:	44 8b 7c 24 78       	mov    r15d,DWORD PTR [rsp+0x78]
   140005a1c:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   140005a21:	41 83 c7 02          	add    r15d,0x2
   140005a25:	e9 05 fd ff ff       	jmp    14000572f <__gdtoa+0x82f>
   140005a2a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140005a30:	83 ff 03             	cmp    edi,0x3
   140005a33:	0f 85 4f fb ff ff    	jne    140005588 <__gdtoa+0x688>
   140005a39:	c7 44 24 7c 00 00 00 	mov    DWORD PTR [rsp+0x7c],0x0
   140005a40:	00 
   140005a41:	e9 0a fc ff ff       	jmp    140005650 <__gdtoa+0x750>
   140005a46:	45 31 d2             	xor    r10d,r10d
   140005a49:	31 ed                	xor    ebp,ebp
   140005a4b:	44 8b 7c 24 38       	mov    r15d,DWORD PTR [rsp+0x38]
   140005a50:	c7 44 24 48 10 00 00 	mov    DWORD PTR [rsp+0x48],0x10
   140005a57:	00 
   140005a58:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   140005a5d:	41 f7 df             	neg    r15d
   140005a60:	e9 db fc ff ff       	jmp    140005740 <__gdtoa+0x840>
   140005a65:	f2 0f 59 da          	mulsd  xmm3,xmm2
   140005a69:	66 49 0f 6e d1       	movq   xmm2,r9
   140005a6e:	c7 84 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],0x1
   140005a75:	01 00 00 00 
   140005a79:	48 8b 4c 24 68       	mov    rcx,QWORD PTR [rsp+0x68]
   140005a7e:	f2 0f 10 0d a2 3a 00 	movsd  xmm1,QWORD PTR [rip+0x3aa2]        # 140009528 <.rdata+0x48>
   140005a85:	00 
   140005a86:	66 0f 28 c2          	movapd xmm0,xmm2
   140005a8a:	45 31 c9             	xor    r9d,r9d
   140005a8d:	eb 12                	jmp    140005aa1 <__gdtoa+0xba1>
   140005a8f:	90                   	nop
   140005a90:	f2 0f 59 c1          	mulsd  xmm0,xmm1
   140005a94:	83 c0 01             	add    eax,0x1
   140005a97:	45 89 d1             	mov    r9d,r10d
   140005a9a:	89 84 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],eax
   140005aa1:	f2 0f 2c c0          	cvttsd2si eax,xmm0
   140005aa5:	85 c0                	test   eax,eax
   140005aa7:	74 0f                	je     140005ab8 <__gdtoa+0xbb8>
   140005aa9:	66 0f ef e4          	pxor   xmm4,xmm4
   140005aad:	45 89 d1             	mov    r9d,r10d
   140005ab0:	f2 0f 2a e0          	cvtsi2sd xmm4,eax
   140005ab4:	f2 0f 5c c4          	subsd  xmm0,xmm4
   140005ab8:	44 8d 40 30          	lea    r8d,[rax+0x30]
   140005abc:	48 83 c1 01          	add    rcx,0x1
   140005ac0:	44 88 41 ff          	mov    BYTE PTR [rcx-0x1],r8b
   140005ac4:	8b 84 24 ac 00 00 00 	mov    eax,DWORD PTR [rsp+0xac]
   140005acb:	39 e8                	cmp    eax,ebp
   140005acd:	75 c1                	jne    140005a90 <__gdtoa+0xb90>
   140005acf:	45 84 c9             	test   r9b,r9b
   140005ad2:	0f 84 6f 0a 00 00    	je     140006547 <__gdtoa+0x1647>
   140005ad8:	f2 0f 10 0d 80 3a 00 	movsd  xmm1,QWORD PTR [rip+0x3a80]        # 140009560 <.rdata+0x80>
   140005adf:	00 
   140005ae0:	66 0f 28 d3          	movapd xmm2,xmm3
   140005ae4:	f2 0f 58 d1          	addsd  xmm2,xmm1
   140005ae8:	66 0f 2f c2          	comisd xmm0,xmm2
   140005aec:	0f 87 19 0a 00 00    	ja     14000650b <__gdtoa+0x160b>
   140005af2:	f2 0f 5c cb          	subsd  xmm1,xmm3
   140005af6:	66 0f 2f c8          	comisd xmm1,xmm0
   140005afa:	0f 87 ab 0a 00 00    	ja     1400065ab <__gdtoa+0x16ab>
   140005b00:	44 8b 54 24 60       	mov    r10d,DWORD PTR [rsp+0x60]
   140005b05:	45 85 d2             	test   r10d,r10d
   140005b08:	0f 88 37 0b 00 00    	js     140006645 <__gdtoa+0x1745>
   140005b0e:	45 8b 4d 14          	mov    r9d,DWORD PTR [r13+0x14]
   140005b12:	c7 44 24 58 00 00 00 	mov    DWORD PTR [rsp+0x58],0x0
   140005b19:	00 
   140005b1a:	45 85 c9             	test   r9d,r9d
   140005b1d:	0f 89 ba fb ff ff    	jns    1400056dd <__gdtoa+0x7dd>
   140005b23:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140005b28:	8b 44 24 70          	mov    eax,DWORD PTR [rsp+0x70]
   140005b2c:	44 8b a4 24 80 00 00 	mov    r12d,DWORD PTR [rsp+0x80]
   140005b33:	00 
   140005b34:	31 ed                	xor    ebp,ebp
   140005b36:	89 44 24 60          	mov    DWORD PTR [rsp+0x60],eax
   140005b3a:	e9 69 fd ff ff       	jmp    1400058a8 <__gdtoa+0x9a8>
   140005b3f:	90                   	nop
   140005b40:	44 8b 7c 24 78       	mov    r15d,DWORD PTR [rsp+0x78]
   140005b45:	44 8b 6c 24 7c       	mov    r13d,DWORD PTR [rsp+0x7c]
   140005b4a:	41 83 c7 01          	add    r15d,0x1
   140005b4e:	45 85 ed             	test   r13d,r13d
   140005b51:	0f 84 91 02 00 00    	je     140005de8 <__gdtoa+0xee8>
   140005b57:	8b 54 24 60          	mov    edx,DWORD PTR [rsp+0x60]
   140005b5b:	44 01 e2             	add    edx,r12d
   140005b5e:	85 d2                	test   edx,edx
   140005b60:	7e 1f                	jle    140005b81 <__gdtoa+0xc81>
   140005b62:	48 89 e9             	mov    rcx,rbp
   140005b65:	4c 89 54 24 38       	mov    QWORD PTR [rsp+0x38],r10
   140005b6a:	44 89 5c 24 30       	mov    DWORD PTR [rsp+0x30],r11d
   140005b6f:	e8 9c 13 00 00       	call   140006f10 <__lshift_D2A>
   140005b74:	4c 8b 54 24 38       	mov    r10,QWORD PTR [rsp+0x38]
   140005b79:	44 8b 5c 24 30       	mov    r11d,DWORD PTR [rsp+0x30]
   140005b7e:	48 89 c5             	mov    rbp,rax
   140005b81:	49 89 ed             	mov    r13,rbp
   140005b84:	45 85 db             	test   r11d,r11d
   140005b87:	0f 85 bb 07 00 00    	jne    140006348 <__gdtoa+0x1448>
   140005b8d:	4c 8b 5c 24 68       	mov    r11,QWORD PTR [rsp+0x68]
   140005b92:	44 89 7c 24 70       	mov    DWORD PTR [rsp+0x70],r15d
   140005b97:	b8 01 00 00 00       	mov    eax,0x1
   140005b9c:	49 89 f7             	mov    r15,rsi
   140005b9f:	89 7c 24 38          	mov    DWORD PTR [rsp+0x38],edi
   140005ba3:	4c 89 54 24 30       	mov    QWORD PTR [rsp+0x30],r10
   140005ba8:	4c 89 df             	mov    rdi,r11
   140005bab:	e9 a2 00 00 00       	jmp    140005c52 <__gdtoa+0xd52>
   140005bb0:	48 89 c1             	mov    rcx,rax
   140005bb3:	e8 88 0e 00 00       	call   140006a40 <__Bfree_D2A>
   140005bb8:	ba 01 00 00 00       	mov    edx,0x1
   140005bbd:	45 85 e4             	test   r12d,r12d
   140005bc0:	0f 88 52 06 00 00    	js     140006218 <__gdtoa+0x1318>
   140005bc6:	44 0b 64 24 38       	or     r12d,DWORD PTR [rsp+0x38]
   140005bcb:	75 0a                	jne    140005bd7 <__gdtoa+0xcd7>
   140005bcd:	41 f6 07 01          	test   BYTE PTR [r15],0x1
   140005bd1:	0f 84 41 06 00 00    	je     140006218 <__gdtoa+0x1318>
   140005bd7:	4c 8d 67 01          	lea    r12,[rdi+0x1]
   140005bdb:	4d 89 e6             	mov    r14,r12
   140005bde:	85 d2                	test   edx,edx
   140005be0:	7e 0b                	jle    140005bed <__gdtoa+0xced>
   140005be2:	83 7c 24 58 02       	cmp    DWORD PTR [rsp+0x58],0x2
   140005be7:	0f 85 b3 07 00 00    	jne    1400063a0 <__gdtoa+0x14a0>
   140005bed:	41 88 74 24 ff       	mov    BYTE PTR [r12-0x1],sil
   140005bf2:	8b 44 24 50          	mov    eax,DWORD PTR [rsp+0x50]
   140005bf6:	39 84 24 ac 00 00 00 	cmp    DWORD PTR [rsp+0xac],eax
   140005bfd:	0f 84 d0 07 00 00    	je     1400063d3 <__gdtoa+0x14d3>
   140005c03:	48 89 d9             	mov    rcx,rbx
   140005c06:	45 31 c0             	xor    r8d,r8d
   140005c09:	ba 0a 00 00 00       	mov    edx,0xa
   140005c0e:	e8 9d 0e 00 00       	call   140006ab0 <__multadd_D2A>
   140005c13:	45 31 c0             	xor    r8d,r8d
   140005c16:	ba 0a 00 00 00       	mov    edx,0xa
   140005c1b:	48 89 e9             	mov    rcx,rbp
   140005c1e:	48 89 c3             	mov    rbx,rax
   140005c21:	4c 39 ed             	cmp    rbp,r13
   140005c24:	0f 84 1e 01 00 00    	je     140005d48 <__gdtoa+0xe48>
   140005c2a:	e8 81 0e 00 00       	call   140006ab0 <__multadd_D2A>
   140005c2f:	4c 89 e9             	mov    rcx,r13
   140005c32:	45 31 c0             	xor    r8d,r8d
   140005c35:	ba 0a 00 00 00       	mov    edx,0xa
   140005c3a:	48 89 c5             	mov    rbp,rax
   140005c3d:	e8 6e 0e 00 00       	call   140006ab0 <__multadd_D2A>
   140005c42:	49 89 c5             	mov    r13,rax
   140005c45:	8b 84 24 ac 00 00 00 	mov    eax,DWORD PTR [rsp+0xac]
   140005c4c:	4c 89 e7             	mov    rdi,r12
   140005c4f:	83 c0 01             	add    eax,0x1
   140005c52:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
   140005c57:	48 89 d9             	mov    rcx,rbx
   140005c5a:	89 84 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],eax
   140005c61:	e8 1a f1 ff ff       	call   140004d80 <__quorem_D2A>
   140005c66:	48 89 ea             	mov    rdx,rbp
   140005c69:	48 89 d9             	mov    rcx,rbx
   140005c6c:	41 89 c6             	mov    r14d,eax
   140005c6f:	8d 70 30             	lea    esi,[rax+0x30]
   140005c72:	e8 a9 13 00 00       	call   140007020 <__cmp_D2A>
   140005c77:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
   140005c7c:	4c 89 ea             	mov    rdx,r13
   140005c7f:	41 89 c4             	mov    r12d,eax
   140005c82:	e8 e9 13 00 00       	call   140007070 <__diff_D2A>
   140005c87:	44 8b 50 10          	mov    r10d,DWORD PTR [rax+0x10]
   140005c8b:	48 89 c2             	mov    rdx,rax
   140005c8e:	45 85 d2             	test   r10d,r10d
   140005c91:	0f 85 19 ff ff ff    	jne    140005bb0 <__gdtoa+0xcb0>
   140005c97:	48 89 d9             	mov    rcx,rbx
   140005c9a:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
   140005c9f:	e8 7c 13 00 00       	call   140007020 <__cmp_D2A>
   140005ca4:	48 8b 4c 24 60       	mov    rcx,QWORD PTR [rsp+0x60]
   140005ca9:	89 44 24 5c          	mov    DWORD PTR [rsp+0x5c],eax
   140005cad:	e8 8e 0d 00 00       	call   140006a40 <__Bfree_D2A>
   140005cb2:	8b 54 24 5c          	mov    edx,DWORD PTR [rsp+0x5c]
   140005cb6:	8b 44 24 38          	mov    eax,DWORD PTR [rsp+0x38]
   140005cba:	09 c2                	or     edx,eax
   140005cbc:	0f 85 a9 03 00 00    	jne    14000606b <__gdtoa+0x116b>
   140005cc2:	41 8b 07             	mov    eax,DWORD PTR [r15]
   140005cc5:	83 e0 01             	and    eax,0x1
   140005cc8:	0b 44 24 58          	or     eax,DWORD PTR [rsp+0x58]
   140005ccc:	0f 85 eb fe ff ff    	jne    140005bbd <__gdtoa+0xcbd>
   140005cd2:	4c 8b 54 24 30       	mov    r10,QWORD PTR [rsp+0x30]
   140005cd7:	44 8b 7c 24 70       	mov    r15d,DWORD PTR [rsp+0x70]
   140005cdc:	41 89 f0             	mov    r8d,esi
   140005cdf:	49 89 fb             	mov    r11,rdi
   140005ce2:	83 fe 39             	cmp    esi,0x39
   140005ce5:	0f 84 8e 07 00 00    	je     140006479 <__gdtoa+0x1579>
   140005ceb:	45 85 e4             	test   r12d,r12d
   140005cee:	0f 8e bd 09 00 00    	jle    1400066b1 <__gdtoa+0x17b1>
   140005cf4:	c7 44 24 48 20 00 00 	mov    DWORD PTR [rsp+0x48],0x20
   140005cfb:	00 
   140005cfc:	45 8d 46 31          	lea    r8d,[r14+0x31]
   140005d00:	45 88 03             	mov    BYTE PTR [r11],r8b
   140005d03:	48 89 ee             	mov    rsi,rbp
   140005d06:	4d 8d 63 01          	lea    r12,[r11+0x1]
   140005d0a:	4c 89 ed             	mov    rbp,r13
   140005d0d:	0f 1f 00             	nop    DWORD PTR [rax]
   140005d10:	4c 89 d1             	mov    rcx,r10
   140005d13:	e8 28 0d 00 00       	call   140006a40 <__Bfree_D2A>
   140005d18:	48 85 ed             	test   rbp,rbp
   140005d1b:	0f 84 9c 03 00 00    	je     1400060bd <__gdtoa+0x11bd>
   140005d21:	48 85 f6             	test   rsi,rsi
   140005d24:	74 0d                	je     140005d33 <__gdtoa+0xe33>
   140005d26:	48 39 ee             	cmp    rsi,rbp
   140005d29:	74 08                	je     140005d33 <__gdtoa+0xe33>
   140005d2b:	48 89 f1             	mov    rcx,rsi
   140005d2e:	e8 0d 0d 00 00       	call   140006a40 <__Bfree_D2A>
   140005d33:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   140005d38:	4c 89 64 24 68       	mov    QWORD PTR [rsp+0x68],r12
   140005d3d:	e9 0b fa ff ff       	jmp    14000574d <__gdtoa+0x84d>
   140005d42:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140005d48:	e8 63 0d 00 00       	call   140006ab0 <__multadd_D2A>
   140005d4d:	48 89 c5             	mov    rbp,rax
   140005d50:	49 89 c5             	mov    r13,rax
   140005d53:	e9 ed fe ff ff       	jmp    140005c45 <__gdtoa+0xd45>
   140005d58:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140005d5f:	00 
   140005d60:	4c 89 d2             	mov    rdx,r10
   140005d63:	48 89 d9             	mov    rcx,rbx
   140005d66:	44 89 5c 24 5c       	mov    DWORD PTR [rsp+0x5c],r11d
   140005d6b:	4c 89 54 24 30       	mov    QWORD PTR [rsp+0x30],r10
   140005d70:	e8 ab 12 00 00       	call   140007020 <__cmp_D2A>
   140005d75:	4c 8b 54 24 30       	mov    r10,QWORD PTR [rsp+0x30]
   140005d7a:	44 8b 5c 24 5c       	mov    r11d,DWORD PTR [rsp+0x5c]
   140005d7f:	85 c0                	test   eax,eax
   140005d81:	0f 89 46 fc ff ff    	jns    1400059cd <__gdtoa+0xacd>
   140005d87:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
   140005d8b:	45 31 c0             	xor    r8d,r8d
   140005d8e:	48 89 d9             	mov    rcx,rbx
   140005d91:	ba 0a 00 00 00       	mov    edx,0xa
   140005d96:	4c 89 54 24 50       	mov    QWORD PTR [rsp+0x50],r10
   140005d9b:	44 89 5c 24 30       	mov    DWORD PTR [rsp+0x30],r11d
   140005da0:	44 8d 70 ff          	lea    r14d,[rax-0x1]
   140005da4:	e8 07 0d 00 00       	call   140006ab0 <__multadd_D2A>
   140005da9:	4c 8b 54 24 50       	mov    r10,QWORD PTR [rsp+0x50]
   140005dae:	48 89 c3             	mov    rbx,rax
   140005db1:	8b 84 24 9c 00 00 00 	mov    eax,DWORD PTR [rsp+0x9c]
   140005db8:	85 c0                	test   eax,eax
   140005dba:	0f 9e c0             	setle  al
   140005dbd:	41 21 c5             	and    r13d,eax
   140005dc0:	8b 44 24 7c          	mov    eax,DWORD PTR [rsp+0x7c]
   140005dc4:	85 c0                	test   eax,eax
   140005dc6:	0f 85 a4 07 00 00    	jne    140006570 <__gdtoa+0x1670>
   140005dcc:	45 84 ed             	test   r13b,r13b
   140005dcf:	0f 85 cf 06 00 00    	jne    1400064a4 <__gdtoa+0x15a4>
   140005dd5:	8b 84 24 9c 00 00 00 	mov    eax,DWORD PTR [rsp+0x9c]
   140005ddc:	44 8b 7c 24 78       	mov    r15d,DWORD PTR [rsp+0x78]
   140005de1:	89 44 24 50          	mov    DWORD PTR [rsp+0x50],eax
   140005de5:	0f 1f 00             	nop    DWORD PTR [rax]
   140005de8:	4c 8b 74 24 68       	mov    r14,QWORD PTR [rsp+0x68]
   140005ded:	8b 7c 24 50          	mov    edi,DWORD PTR [rsp+0x50]
   140005df1:	b8 01 00 00 00       	mov    eax,0x1
   140005df6:	4c 89 d6             	mov    rsi,r10
   140005df9:	eb 22                	jmp    140005e1d <__gdtoa+0xf1d>
   140005dfb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140005e00:	48 89 d9             	mov    rcx,rbx
   140005e03:	45 31 c0             	xor    r8d,r8d
   140005e06:	ba 0a 00 00 00       	mov    edx,0xa
   140005e0b:	e8 a0 0c 00 00       	call   140006ab0 <__multadd_D2A>
   140005e10:	48 89 c3             	mov    rbx,rax
   140005e13:	8b 84 24 ac 00 00 00 	mov    eax,DWORD PTR [rsp+0xac]
   140005e1a:	83 c0 01             	add    eax,0x1
   140005e1d:	48 89 f2             	mov    rdx,rsi
   140005e20:	48 89 d9             	mov    rcx,rbx
   140005e23:	89 84 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],eax
   140005e2a:	49 83 c6 01          	add    r14,0x1
   140005e2e:	e8 4d ef ff ff       	call   140004d80 <__quorem_D2A>
   140005e33:	44 8d 40 30          	lea    r8d,[rax+0x30]
   140005e37:	45 88 46 ff          	mov    BYTE PTR [r14-0x1],r8b
   140005e3b:	39 bc 24 ac 00 00 00 	cmp    DWORD PTR [rsp+0xac],edi
   140005e42:	7c bc                	jl     140005e00 <__gdtoa+0xf00>
   140005e44:	49 89 f2             	mov    r10,rsi
   140005e47:	31 f6                	xor    esi,esi
   140005e49:	8b 7c 24 58          	mov    edi,DWORD PTR [rsp+0x58]
   140005e4d:	85 ff                	test   edi,edi
   140005e4f:	0f 84 5d 03 00 00    	je     1400061b2 <__gdtoa+0x12b2>
   140005e55:	8b 43 14             	mov    eax,DWORD PTR [rbx+0x14]
   140005e58:	83 ff 02             	cmp    edi,0x2
   140005e5b:	0f 84 96 03 00 00    	je     1400061f7 <__gdtoa+0x12f7>
   140005e61:	83 f8 01             	cmp    eax,0x1
   140005e64:	0f 8f 17 02 00 00    	jg     140006081 <__gdtoa+0x1181>
   140005e6a:	8b 43 18             	mov    eax,DWORD PTR [rbx+0x18]
   140005e6d:	85 c0                	test   eax,eax
   140005e6f:	0f 85 0c 02 00 00    	jne    140006081 <__gdtoa+0x1181>
   140005e75:	85 c0                	test   eax,eax
   140005e77:	0f 95 c0             	setne  al
   140005e7a:	0f b6 c0             	movzx  eax,al
   140005e7d:	c1 e0 04             	shl    eax,0x4
   140005e80:	89 44 24 48          	mov    DWORD PTR [rsp+0x48],eax
   140005e84:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140005e88:	4d 89 f4             	mov    r12,r14
   140005e8b:	49 83 ee 01          	sub    r14,0x1
   140005e8f:	41 80 3e 30          	cmp    BYTE PTR [r14],0x30
   140005e93:	74 f3                	je     140005e88 <__gdtoa+0xf88>
   140005e95:	e9 76 fe ff ff       	jmp    140005d10 <__gdtoa+0xe10>
   140005e9a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140005ea0:	44 89 da             	mov    edx,r11d
   140005ea3:	48 89 c1             	mov    rcx,rax
   140005ea6:	e8 e5 0e 00 00       	call   140006d90 <__pow5mult_D2A>
   140005eab:	49 89 c2             	mov    r10,rax
   140005eae:	83 ff 01             	cmp    edi,0x1
   140005eb1:	0f 8e 4f 02 00 00    	jle    140006106 <__gdtoa+0x1206>
   140005eb7:	45 31 db             	xor    r11d,r11d
   140005eba:	41 8b 42 14          	mov    eax,DWORD PTR [r10+0x14]
   140005ebe:	83 e8 01             	sub    eax,0x1
   140005ec1:	48 98                	cdqe
   140005ec3:	45 0f bd 64 82 18    	bsr    r12d,DWORD PTR [r10+rax*4+0x18]
   140005ec9:	41 83 f4 1f          	xor    r12d,0x1f
   140005ecd:	e9 77 fa ff ff       	jmp    140005949 <__gdtoa+0xa49>
   140005ed2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140005ed8:	c7 44 24 7c 01 00 00 	mov    DWORD PTR [rsp+0x7c],0x1
   140005edf:	00 
   140005ee0:	e9 6b f7 ff ff       	jmp    140005650 <__gdtoa+0x750>
   140005ee5:	0f 1f 00             	nop    DWORD PTR [rax]
   140005ee8:	41 83 fe 01          	cmp    r14d,0x1
   140005eec:	0f 85 51 fa ff ff    	jne    140005943 <__gdtoa+0xa43>
   140005ef2:	41 8b 45 04          	mov    eax,DWORD PTR [r13+0x4]
   140005ef6:	83 c0 01             	add    eax,0x1
   140005ef9:	39 44 24 30          	cmp    DWORD PTR [rsp+0x30],eax
   140005efd:	0f 8e 40 fa ff ff    	jle    140005943 <__gdtoa+0xa43>
   140005f03:	83 44 24 70 01       	add    DWORD PTR [rsp+0x70],0x1
   140005f08:	41 bb 01 00 00 00    	mov    r11d,0x1
   140005f0e:	83 44 24 5c 01       	add    DWORD PTR [rsp+0x5c],0x1
   140005f13:	e9 2b fa ff ff       	jmp    140005943 <__gdtoa+0xa43>
   140005f18:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140005f1f:	00 
   140005f20:	8b 4c 24 50          	mov    ecx,DWORD PTR [rsp+0x50]
   140005f24:	8b 94 24 80 00 00 00 	mov    edx,DWORD PTR [rsp+0x80]
   140005f2b:	8d 41 ff             	lea    eax,[rcx-0x1]
   140005f2e:	39 c2                	cmp    edx,eax
   140005f30:	0f 8c 96 01 00 00    	jl     1400060cc <__gdtoa+0x11cc>
   140005f36:	41 89 d4             	mov    r12d,edx
   140005f39:	41 29 c4             	sub    r12d,eax
   140005f3c:	85 c9                	test   ecx,ecx
   140005f3e:	0f 89 0c 06 00 00    	jns    140006550 <__gdtoa+0x1650>
   140005f44:	8b 44 24 70          	mov    eax,DWORD PTR [rsp+0x70]
   140005f48:	8b 54 24 50          	mov    edx,DWORD PTR [rsp+0x50]
   140005f4c:	c7 84 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],0x0
   140005f53:	00 00 00 00 
   140005f57:	29 d0                	sub    eax,edx
   140005f59:	89 44 24 60          	mov    DWORD PTR [rsp+0x60],eax
   140005f5d:	e9 21 f9 ff ff       	jmp    140005883 <__gdtoa+0x983>
   140005f62:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140005f68:	83 ff 01             	cmp    edi,0x1
   140005f6b:	7f b3                	jg     140005f20 <__gdtoa+0x1020>
   140005f6d:	8b 4c 24 70          	mov    ecx,DWORD PTR [rsp+0x70]
   140005f71:	01 44 24 5c          	add    DWORD PTR [rsp+0x5c],eax
   140005f75:	44 8b a4 24 80 00 00 	mov    r12d,DWORD PTR [rsp+0x80]
   140005f7c:	00 
   140005f7d:	01 c8                	add    eax,ecx
   140005f7f:	89 4c 24 60          	mov    DWORD PTR [rsp+0x60],ecx
   140005f83:	89 44 24 70          	mov    DWORD PTR [rsp+0x70],eax
   140005f87:	e9 f7 f8 ff ff       	jmp    140005883 <__gdtoa+0x983>
   140005f8c:	f2 0f 10 84 24 90 00 	movsd  xmm0,QWORD PTR [rsp+0x90]
   140005f93:	00 00 
   140005f95:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   140005f9a:	c7 84 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],0x1
   140005fa1:	01 00 00 00 
   140005fa5:	8b 7c 24 78          	mov    edi,DWORD PTR [rsp+0x78]
   140005fa9:	66 0f 28 c8          	movapd xmm1,xmm0
   140005fad:	48 8d 4e 01          	lea    rcx,[rsi+0x1]
   140005fb1:	f2 0f 5e ca          	divsd  xmm1,xmm2
   140005fb5:	44 8d 7f 01          	lea    r15d,[rdi+0x1]
   140005fb9:	f2 0f 2c c1          	cvttsd2si eax,xmm1
   140005fbd:	66 0f ef c9          	pxor   xmm1,xmm1
   140005fc1:	f2 0f 2a c8          	cvtsi2sd xmm1,eax
   140005fc5:	8d 50 30             	lea    edx,[rax+0x30]
   140005fc8:	88 16                	mov    BYTE PTR [rsi],dl
   140005fca:	f2 0f 59 ca          	mulsd  xmm1,xmm2
   140005fce:	f2 0f 5c c1          	subsd  xmm0,xmm1
   140005fd2:	66 0f ef c9          	pxor   xmm1,xmm1
   140005fd6:	66 0f 2e c1          	ucomisd xmm0,xmm1
   140005fda:	7a 06                	jp     140005fe2 <__gdtoa+0x10e2>
   140005fdc:	0f 84 c1 01 00 00    	je     1400061a3 <__gdtoa+0x12a3>
   140005fe2:	f2 0f 10 25 3e 35 00 	movsd  xmm4,QWORD PTR [rip+0x353e]        # 140009528 <.rdata+0x48>
   140005fe9:	00 
   140005fea:	66 0f ef db          	pxor   xmm3,xmm3
   140005fee:	eb 40                	jmp    140006030 <__gdtoa+0x1130>
   140005ff0:	f2 0f 59 c4          	mulsd  xmm0,xmm4
   140005ff4:	83 c2 01             	add    edx,0x1
   140005ff7:	48 83 c1 01          	add    rcx,0x1
   140005ffb:	89 94 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],edx
   140006002:	66 0f 28 c8          	movapd xmm1,xmm0
   140006006:	f2 0f 5e ca          	divsd  xmm1,xmm2
   14000600a:	f2 0f 2c c1          	cvttsd2si eax,xmm1
   14000600e:	66 0f ef c9          	pxor   xmm1,xmm1
   140006012:	f2 0f 2a c8          	cvtsi2sd xmm1,eax
   140006016:	8d 50 30             	lea    edx,[rax+0x30]
   140006019:	88 51 ff             	mov    BYTE PTR [rcx-0x1],dl
   14000601c:	f2 0f 59 ca          	mulsd  xmm1,xmm2
   140006020:	f2 0f 5c c1          	subsd  xmm0,xmm1
   140006024:	66 0f 2e c3          	ucomisd xmm0,xmm3
   140006028:	7a 06                	jp     140006030 <__gdtoa+0x1130>
   14000602a:	0f 84 73 01 00 00    	je     1400061a3 <__gdtoa+0x12a3>
   140006030:	8b 94 24 ac 00 00 00 	mov    edx,DWORD PTR [rsp+0xac]
   140006037:	8b 7c 24 50          	mov    edi,DWORD PTR [rsp+0x50]
   14000603b:	39 fa                	cmp    edx,edi
   14000603d:	75 b1                	jne    140005ff0 <__gdtoa+0x10f0>
   14000603f:	8b 7c 24 58          	mov    edi,DWORD PTR [rsp+0x58]
   140006043:	85 ff                	test   edi,edi
   140006045:	0f 84 6e 04 00 00    	je     1400064b9 <__gdtoa+0x15b9>
   14000604b:	83 ff 01             	cmp    edi,0x1
   14000604e:	0f 84 7d 05 00 00    	je     1400065d1 <__gdtoa+0x16d1>
   140006054:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   140006059:	c7 44 24 48 10 00 00 	mov    DWORD PTR [rsp+0x48],0x10
   140006060:	00 
   140006061:	48 89 4c 24 68       	mov    QWORD PTR [rsp+0x68],rcx
   140006066:	e9 ea f6 ff ff       	jmp    140005755 <__gdtoa+0x855>
   14000606b:	8b 54 24 5c          	mov    edx,DWORD PTR [rsp+0x5c]
   14000606f:	e9 49 fb ff ff       	jmp    140005bbd <__gdtoa+0xcbd>
   140006074:	c7 44 24 7c 01 00 00 	mov    DWORD PTR [rsp+0x7c],0x1
   14000607b:	00 
   14000607c:	e9 c4 f2 ff ff       	jmp    140005345 <__gdtoa+0x445>
   140006081:	48 8b 54 24 68       	mov    rdx,QWORD PTR [rsp+0x68]
   140006086:	eb 11                	jmp    140006099 <__gdtoa+0x1199>
   140006088:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000608f:	00 
   140006090:	4c 39 f2             	cmp    rdx,r14
   140006093:	0f 84 a7 00 00 00    	je     140006140 <__gdtoa+0x1240>
   140006099:	4d 89 f4             	mov    r12,r14
   14000609c:	4d 8d 76 ff          	lea    r14,[r14-0x1]
   1400060a0:	41 0f b6 44 24 ff    	movzx  eax,BYTE PTR [r12-0x1]
   1400060a6:	3c 39                	cmp    al,0x39
   1400060a8:	74 e6                	je     140006090 <__gdtoa+0x1190>
   1400060aa:	83 c0 01             	add    eax,0x1
   1400060ad:	c7 44 24 48 20 00 00 	mov    DWORD PTR [rsp+0x48],0x20
   1400060b4:	00 
   1400060b5:	41 88 06             	mov    BYTE PTR [r14],al
   1400060b8:	e9 53 fc ff ff       	jmp    140005d10 <__gdtoa+0xe10>
   1400060bd:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   1400060c2:	4c 89 64 24 68       	mov    QWORD PTR [rsp+0x68],r12
   1400060c7:	e9 89 f6 ff ff       	jmp    140005755 <__gdtoa+0x855>
   1400060cc:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [rsp+0x80]
   1400060d3:	89 c2                	mov    edx,eax
   1400060d5:	89 84 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],eax
   1400060dc:	45 31 e4             	xor    r12d,r12d
   1400060df:	29 ca                	sub    edx,ecx
   1400060e1:	8b 4c 24 70          	mov    ecx,DWORD PTR [rsp+0x70]
   1400060e5:	41 01 d3             	add    r11d,edx
   1400060e8:	8b 54 24 50          	mov    edx,DWORD PTR [rsp+0x50]
   1400060ec:	01 54 24 5c          	add    DWORD PTR [rsp+0x5c],edx
   1400060f0:	89 4c 24 60          	mov    DWORD PTR [rsp+0x60],ecx
   1400060f4:	89 94 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],edx
   1400060fb:	01 ca                	add    edx,ecx
   1400060fd:	89 54 24 70          	mov    DWORD PTR [rsp+0x70],edx
   140006101:	e9 7d f7 ff ff       	jmp    140005883 <__gdtoa+0x983>
   140006106:	41 83 fe 01          	cmp    r14d,0x1
   14000610a:	0f 85 a7 fd ff ff    	jne    140005eb7 <__gdtoa+0xfb7>
   140006110:	41 8b 45 04          	mov    eax,DWORD PTR [r13+0x4]
   140006114:	83 c0 01             	add    eax,0x1
   140006117:	39 44 24 30          	cmp    DWORD PTR [rsp+0x30],eax
   14000611b:	0f 8e 96 fd ff ff    	jle    140005eb7 <__gdtoa+0xfb7>
   140006121:	83 44 24 70 01       	add    DWORD PTR [rsp+0x70],0x1
   140006126:	41 bb 01 00 00 00    	mov    r11d,0x1
   14000612c:	83 44 24 5c 01       	add    DWORD PTR [rsp+0x5c],0x1
   140006131:	e9 84 fd ff ff       	jmp    140005eba <__gdtoa+0xfba>
   140006136:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000613d:	00 00 00 
   140006140:	48 8b 44 24 68       	mov    rax,QWORD PTR [rsp+0x68]
   140006145:	c7 44 24 48 20 00 00 	mov    DWORD PTR [rsp+0x48],0x20
   14000614c:	00 
   14000614d:	41 83 c7 01          	add    r15d,0x1
   140006151:	c6 00 31             	mov    BYTE PTR [rax],0x31
   140006154:	e9 b7 fb ff ff       	jmp    140005d10 <__gdtoa+0xe10>
   140006159:	48 89 e9             	mov    rcx,rbp
   14000615c:	44 89 e2             	mov    edx,r12d
   14000615f:	44 89 9c 24 98 00 00 	mov    DWORD PTR [rsp+0x98],r11d
   140006166:	00 
   140006167:	e8 24 0c 00 00       	call   140006d90 <__pow5mult_D2A>
   14000616c:	48 89 da             	mov    rdx,rbx
   14000616f:	48 89 c1             	mov    rcx,rax
   140006172:	48 89 c5             	mov    rbp,rax
   140006175:	e8 b6 0a 00 00       	call   140006c30 <__mult_D2A>
   14000617a:	48 89 d9             	mov    rcx,rbx
   14000617d:	49 89 c7             	mov    r15,rax
   140006180:	e8 bb 08 00 00       	call   140006a40 <__Bfree_D2A>
   140006185:	44 29 a4 24 80 00 00 	sub    DWORD PTR [rsp+0x80],r12d
   14000618c:	00 
   14000618d:	4c 89 fb             	mov    rbx,r15
   140006190:	44 8b 9c 24 98 00 00 	mov    r11d,DWORD PTR [rsp+0x98]
   140006197:	00 
   140006198:	0f 84 76 f7 ff ff    	je     140005914 <__gdtoa+0xa14>
   14000619e:	e9 4f f7 ff ff       	jmp    1400058f2 <__gdtoa+0x9f2>
   1400061a3:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   1400061a8:	48 89 4c 24 68       	mov    QWORD PTR [rsp+0x68],rcx
   1400061ad:	e9 a3 f5 ff ff       	jmp    140005755 <__gdtoa+0x855>
   1400061b2:	48 89 d9             	mov    rcx,rbx
   1400061b5:	ba 01 00 00 00       	mov    edx,0x1
   1400061ba:	4c 89 54 24 30       	mov    QWORD PTR [rsp+0x30],r10
   1400061bf:	44 89 44 24 38       	mov    DWORD PTR [rsp+0x38],r8d
   1400061c4:	e8 47 0d 00 00       	call   140006f10 <__lshift_D2A>
   1400061c9:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
   1400061ce:	48 89 c1             	mov    rcx,rax
   1400061d1:	48 89 c3             	mov    rbx,rax
   1400061d4:	e8 47 0e 00 00       	call   140007020 <__cmp_D2A>
   1400061d9:	4c 8b 54 24 30       	mov    r10,QWORD PTR [rsp+0x30]
   1400061de:	85 c0                	test   eax,eax
   1400061e0:	0f 8f 9b fe ff ff    	jg     140006081 <__gdtoa+0x1181>
   1400061e6:	75 0f                	jne    1400061f7 <__gdtoa+0x12f7>
   1400061e8:	44 8b 44 24 38       	mov    r8d,DWORD PTR [rsp+0x38]
   1400061ed:	41 83 e0 01          	and    r8d,0x1
   1400061f1:	0f 85 8a fe ff ff    	jne    140006081 <__gdtoa+0x1181>
   1400061f7:	83 7b 14 01          	cmp    DWORD PTR [rbx+0x14],0x1
   1400061fb:	c7 44 24 48 10 00 00 	mov    DWORD PTR [rsp+0x48],0x10
   140006202:	00 
   140006203:	0f 8f 7f fc ff ff    	jg     140005e88 <__gdtoa+0xf88>
   140006209:	8b 43 18             	mov    eax,DWORD PTR [rbx+0x18]
   14000620c:	e9 64 fc ff ff       	jmp    140005e75 <__gdtoa+0xf75>
   140006211:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140006218:	44 8b 4c 24 58       	mov    r9d,DWORD PTR [rsp+0x58]
   14000621d:	4c 8b 54 24 30       	mov    r10,QWORD PTR [rsp+0x30]
   140006222:	41 89 f0             	mov    r8d,esi
   140006225:	49 89 fb             	mov    r11,rdi
   140006228:	44 8b 7c 24 70       	mov    r15d,DWORD PTR [rsp+0x70]
   14000622d:	45 85 c9             	test   r9d,r9d
   140006230:	0f 84 c9 01 00 00    	je     1400063ff <__gdtoa+0x14ff>
   140006236:	83 7b 14 01          	cmp    DWORD PTR [rbx+0x14],0x1
   14000623a:	0f 8e a8 03 00 00    	jle    1400065e8 <__gdtoa+0x16e8>
   140006240:	83 7c 24 58 02       	cmp    DWORD PTR [rsp+0x58],0x2
   140006245:	0f 84 17 02 00 00    	je     140006462 <__gdtoa+0x1562>
   14000624b:	44 89 7c 24 30       	mov    DWORD PTR [rsp+0x30],r15d
   140006250:	44 89 c7             	mov    edi,r8d
   140006253:	4d 89 d6             	mov    r14,r10
   140006256:	4d 89 df             	mov    r15,r11
   140006259:	eb 4b                	jmp    1400062a6 <__gdtoa+0x13a6>
   14000625b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140006260:	41 88 7c 24 ff       	mov    BYTE PTR [r12-0x1],dil
   140006265:	45 31 c0             	xor    r8d,r8d
   140006268:	4c 89 e9             	mov    rcx,r13
   14000626b:	ba 0a 00 00 00       	mov    edx,0xa
   140006270:	4d 89 e7             	mov    r15,r12
   140006273:	e8 38 08 00 00       	call   140006ab0 <__multadd_D2A>
   140006278:	4c 39 ed             	cmp    rbp,r13
   14000627b:	48 89 d9             	mov    rcx,rbx
   14000627e:	ba 0a 00 00 00       	mov    edx,0xa
   140006283:	48 0f 44 e8          	cmove  rbp,rax
   140006287:	45 31 c0             	xor    r8d,r8d
   14000628a:	48 89 c6             	mov    rsi,rax
   14000628d:	e8 1e 08 00 00       	call   140006ab0 <__multadd_D2A>
   140006292:	4c 89 f2             	mov    rdx,r14
   140006295:	49 89 f5             	mov    r13,rsi
   140006298:	48 89 c1             	mov    rcx,rax
   14000629b:	48 89 c3             	mov    rbx,rax
   14000629e:	e8 dd ea ff ff       	call   140004d80 <__quorem_D2A>
   1400062a3:	8d 78 30             	lea    edi,[rax+0x30]
   1400062a6:	4c 89 ea             	mov    rdx,r13
   1400062a9:	4c 89 f1             	mov    rcx,r14
   1400062ac:	4d 8d 67 01          	lea    r12,[r15+0x1]
   1400062b0:	e8 6b 0d 00 00       	call   140007020 <__cmp_D2A>
   1400062b5:	85 c0                	test   eax,eax
   1400062b7:	7f a7                	jg     140006260 <__gdtoa+0x1360>
   1400062b9:	4d 89 fb             	mov    r11,r15
   1400062bc:	41 89 f8             	mov    r8d,edi
   1400062bf:	44 8b 7c 24 30       	mov    r15d,DWORD PTR [rsp+0x30]
   1400062c4:	4d 89 f2             	mov    r10,r14
   1400062c7:	83 ff 39             	cmp    edi,0x39
   1400062ca:	0f 84 ad 01 00 00    	je     14000647d <__gdtoa+0x157d>
   1400062d0:	c7 44 24 48 20 00 00 	mov    DWORD PTR [rsp+0x48],0x20
   1400062d7:	00 
   1400062d8:	48 89 ee             	mov    rsi,rbp
   1400062db:	41 83 c0 01          	add    r8d,0x1
   1400062df:	4c 89 ed             	mov    rbp,r13
   1400062e2:	45 88 03             	mov    BYTE PTR [r11],r8b
   1400062e5:	e9 26 fa ff ff       	jmp    140005d10 <__gdtoa+0xe10>
   1400062ea:	85 d2                	test   edx,edx
   1400062ec:	0f 84 98 f4 ff ff    	je     14000578a <__gdtoa+0x88a>
   1400062f2:	8b ac 24 9c 00 00 00 	mov    ebp,DWORD PTR [rsp+0x9c]
   1400062f9:	85 ed                	test   ebp,ebp
   1400062fb:	0f 8e dd f4 ff ff    	jle    1400057de <__gdtoa+0x8de>
   140006301:	f2 0f 59 05 1f 32 00 	mulsd  xmm0,QWORD PTR [rip+0x321f]        # 140009528 <.rdata+0x48>
   140006308:	00 
   140006309:	f2 0f 10 0d 1f 32 00 	movsd  xmm1,QWORD PTR [rip+0x321f]        # 140009530 <.rdata+0x50>
   140006310:	00 
   140006311:	41 bf ff ff ff ff    	mov    r15d,0xffffffff
   140006317:	f2 0f 59 c8          	mulsd  xmm1,xmm0
   14000631b:	66 49 0f 7e c1       	movq   r9,xmm0
   140006320:	f2 0f 58 0d 10 32 00 	addsd  xmm1,QWORD PTR [rip+0x3210]        # 140009538 <.rdata+0x58>
   140006327:	00 
   140006328:	66 48 0f 7e c8       	movq   rax,xmm1
   14000632d:	48 89 c2             	mov    rdx,rax
   140006330:	89 c0                	mov    eax,eax
   140006332:	48 c1 ea 20          	shr    rdx,0x20
   140006336:	81 ea 00 00 40 03    	sub    edx,0x3400000
   14000633c:	48 c1 e2 20          	shl    rdx,0x20
   140006340:	48 09 d0             	or     rax,rdx
   140006343:	e9 15 f1 ff ff       	jmp    14000545d <__gdtoa+0x55d>
   140006348:	8b 4d 08             	mov    ecx,DWORD PTR [rbp+0x8]
   14000634b:	4c 89 54 24 30       	mov    QWORD PTR [rsp+0x30],r10
   140006350:	e8 fb 05 00 00       	call   140006950 <__Balloc_D2A>
   140006355:	48 8d 55 10          	lea    rdx,[rbp+0x10]
   140006359:	48 8d 48 10          	lea    rcx,[rax+0x10]
   14000635d:	49 89 c4             	mov    r12,rax
   140006360:	48 63 45 14          	movsxd rax,DWORD PTR [rbp+0x14]
   140006364:	4c 8d 04 85 08 00 00 	lea    r8,[rax*4+0x8]
   14000636b:	00 
   14000636c:	e8 87 18 00 00       	call   140007bf8 <memcpy>
   140006371:	ba 01 00 00 00       	mov    edx,0x1
   140006376:	4c 89 e1             	mov    rcx,r12
   140006379:	e8 92 0b 00 00       	call   140006f10 <__lshift_D2A>
   14000637e:	4c 8b 54 24 30       	mov    r10,QWORD PTR [rsp+0x30]
   140006383:	49 89 c5             	mov    r13,rax
   140006386:	e9 02 f8 ff ff       	jmp    140005b8d <__gdtoa+0xc8d>
   14000638b:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   140006390:	41 bf 02 00 00 00    	mov    r15d,0x2
   140006396:	45 31 d2             	xor    r10d,r10d
   140006399:	31 ed                	xor    ebp,ebp
   14000639b:	e9 8f f3 ff ff       	jmp    14000572f <__gdtoa+0x82f>
   1400063a0:	4c 8b 54 24 30       	mov    r10,QWORD PTR [rsp+0x30]
   1400063a5:	44 8b 7c 24 70       	mov    r15d,DWORD PTR [rsp+0x70]
   1400063aa:	41 89 f0             	mov    r8d,esi
   1400063ad:	49 89 fb             	mov    r11,rdi
   1400063b0:	83 fe 39             	cmp    esi,0x39
   1400063b3:	0f 84 c4 00 00 00    	je     14000647d <__gdtoa+0x157d>
   1400063b9:	41 83 c0 01          	add    r8d,0x1
   1400063bd:	48 89 ee             	mov    rsi,rbp
   1400063c0:	c7 44 24 48 20 00 00 	mov    DWORD PTR [rsp+0x48],0x20
   1400063c7:	00 
   1400063c8:	4c 89 ed             	mov    rbp,r13
   1400063cb:	44 88 07             	mov    BYTE PTR [rdi],r8b
   1400063ce:	e9 3d f9 ff ff       	jmp    140005d10 <__gdtoa+0xe10>
   1400063d3:	41 89 f0             	mov    r8d,esi
   1400063d6:	4c 8b 54 24 30       	mov    r10,QWORD PTR [rsp+0x30]
   1400063db:	48 89 ee             	mov    rsi,rbp
   1400063de:	44 8b 7c 24 70       	mov    r15d,DWORD PTR [rsp+0x70]
   1400063e3:	4c 89 ed             	mov    rbp,r13
   1400063e6:	e9 5e fa ff ff       	jmp    140005e49 <__gdtoa+0xf49>
   1400063eb:	48 89 54 24 68       	mov    QWORD PTR [rsp+0x68],rdx
   1400063f0:	41 83 c7 01          	add    r15d,0x1
   1400063f4:	41 b8 31 00 00 00    	mov    r8d,0x31
   1400063fa:	e9 55 f1 ff ff       	jmp    140005554 <__gdtoa+0x654>
   1400063ff:	85 d2                	test   edx,edx
   140006401:	7e 55                	jle    140006458 <__gdtoa+0x1558>
   140006403:	48 89 d9             	mov    rcx,rbx
   140006406:	ba 01 00 00 00       	mov    edx,0x1
   14000640b:	4c 89 54 24 30       	mov    QWORD PTR [rsp+0x30],r10
   140006410:	4c 89 5c 24 48       	mov    QWORD PTR [rsp+0x48],r11
   140006415:	44 89 44 24 38       	mov    DWORD PTR [rsp+0x38],r8d
   14000641a:	e8 f1 0a 00 00       	call   140006f10 <__lshift_D2A>
   14000641f:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
   140006424:	48 89 c1             	mov    rcx,rax
   140006427:	48 89 c3             	mov    rbx,rax
   14000642a:	e8 f1 0b 00 00       	call   140007020 <__cmp_D2A>
   14000642f:	4c 8b 54 24 30       	mov    r10,QWORD PTR [rsp+0x30]
   140006434:	44 8b 44 24 38       	mov    r8d,DWORD PTR [rsp+0x38]
   140006439:	85 c0                	test   eax,eax
   14000643b:	4c 8b 5c 24 48       	mov    r11,QWORD PTR [rsp+0x48]
   140006440:	0f 8e 52 02 00 00    	jle    140006698 <__gdtoa+0x1798>
   140006446:	41 83 f8 39          	cmp    r8d,0x39
   14000644a:	74 2d                	je     140006479 <__gdtoa+0x1579>
   14000644c:	c7 44 24 58 20 00 00 	mov    DWORD PTR [rsp+0x58],0x20
   140006453:	00 
   140006454:	45 8d 46 31          	lea    r8d,[r14+0x31]
   140006458:	83 7b 14 01          	cmp    DWORD PTR [rbx+0x14],0x1
   14000645c:	0f 8e 14 02 00 00    	jle    140006676 <__gdtoa+0x1776>
   140006462:	48 89 ee             	mov    rsi,rbp
   140006465:	4c 89 ed             	mov    rbp,r13
   140006468:	c7 44 24 48 10 00 00 	mov    DWORD PTR [rsp+0x48],0x10
   14000646f:	00 
   140006470:	4d 8d 63 01          	lea    r12,[r11+0x1]
   140006474:	e9 69 fe ff ff       	jmp    1400062e2 <__gdtoa+0x13e2>
   140006479:	4d 8d 63 01          	lea    r12,[r11+0x1]
   14000647d:	48 89 ee             	mov    rsi,rbp
   140006480:	41 c6 03 39          	mov    BYTE PTR [r11],0x39
   140006484:	48 8b 54 24 68       	mov    rdx,QWORD PTR [rsp+0x68]
   140006489:	4d 89 e6             	mov    r14,r12
   14000648c:	4c 89 ed             	mov    rbp,r13
   14000648f:	e9 05 fc ff ff       	jmp    140006099 <__gdtoa+0x1199>
   140006494:	c7 84 24 9c 00 00 00 	mov    DWORD PTR [rsp+0x9c],0xffffffff
   14000649b:	ff ff ff ff 
   14000649f:	e9 66 f3 ff ff       	jmp    14000580a <__gdtoa+0x90a>
   1400064a4:	8b 84 24 9c 00 00 00 	mov    eax,DWORD PTR [rsp+0x9c]
   1400064ab:	44 89 74 24 78       	mov    DWORD PTR [rsp+0x78],r14d
   1400064b0:	89 44 24 50          	mov    DWORD PTR [rsp+0x50],eax
   1400064b4:	e9 2b f5 ff ff       	jmp    1400059e4 <__gdtoa+0xae4>
   1400064b9:	f2 0f 58 c0          	addsd  xmm0,xmm0
   1400064bd:	44 0f b6 41 ff       	movzx  r8d,BYTE PTR [rcx-0x1]
   1400064c2:	66 0f 2f c2          	comisd xmm0,xmm2
   1400064c6:	0f 87 98 01 00 00    	ja     140006664 <__gdtoa+0x1764>
   1400064cc:	66 0f 2e c2          	ucomisd xmm0,xmm2
   1400064d0:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   1400064d5:	44 8b 7c 24 78       	mov    r15d,DWORD PTR [rsp+0x78]
   1400064da:	7a 06                	jp     1400064e2 <__gdtoa+0x15e2>
   1400064dc:	75 04                	jne    1400064e2 <__gdtoa+0x15e2>
   1400064de:	a8 01                	test   al,0x1
   1400064e0:	75 2e                	jne    140006510 <__gdtoa+0x1610>
   1400064e2:	c7 44 24 48 10 00 00 	mov    DWORD PTR [rsp+0x48],0x10
   1400064e9:	00 
   1400064ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400064f0:	48 89 c8             	mov    rax,rcx
   1400064f3:	48 8d 49 ff          	lea    rcx,[rcx-0x1]
   1400064f7:	80 78 ff 30          	cmp    BYTE PTR [rax-0x1],0x30
   1400064fb:	74 f3                	je     1400064f0 <__gdtoa+0x15f0>
   1400064fd:	48 89 44 24 68       	mov    QWORD PTR [rsp+0x68],rax
   140006502:	41 83 c7 01          	add    r15d,0x1
   140006506:	e9 4a f2 ff ff       	jmp    140005755 <__gdtoa+0x855>
   14000650b:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   140006510:	48 89 ca             	mov    rdx,rcx
   140006513:	e9 29 f0 ff ff       	jmp    140005541 <__gdtoa+0x641>
   140006518:	66 0f ef c9          	pxor   xmm1,xmm1
   14000651c:	31 c0                	xor    eax,eax
   14000651e:	b9 01 00 00 00       	mov    ecx,0x1
   140006523:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   140006528:	66 0f 2e c1          	ucomisd xmm0,xmm1
   14000652c:	48 89 54 24 68       	mov    QWORD PTR [rsp+0x68],rdx
   140006531:	0f 9a c0             	setp   al
   140006534:	0f 45 c1             	cmovne eax,ecx
   140006537:	41 83 c7 01          	add    r15d,0x1
   14000653b:	c1 e0 04             	shl    eax,0x4
   14000653e:	89 44 24 48          	mov    DWORD PTR [rsp+0x48],eax
   140006542:	e9 0e f2 ff ff       	jmp    140005755 <__gdtoa+0x855>
   140006547:	66 0f 28 c2          	movapd xmm0,xmm2
   14000654b:	e9 88 f5 ff ff       	jmp    140005ad8 <__gdtoa+0xbd8>
   140006550:	8b 54 24 70          	mov    edx,DWORD PTR [rsp+0x70]
   140006554:	89 c8                	mov    eax,ecx
   140006556:	01 4c 24 5c          	add    DWORD PTR [rsp+0x5c],ecx
   14000655a:	89 8c 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],ecx
   140006561:	01 d0                	add    eax,edx
   140006563:	89 54 24 60          	mov    DWORD PTR [rsp+0x60],edx
   140006567:	89 44 24 70          	mov    DWORD PTR [rsp+0x70],eax
   14000656b:	e9 13 f3 ff ff       	jmp    140005883 <__gdtoa+0x983>
   140006570:	45 31 c0             	xor    r8d,r8d
   140006573:	48 89 e9             	mov    rcx,rbp
   140006576:	ba 0a 00 00 00       	mov    edx,0xa
   14000657b:	e8 30 05 00 00       	call   140006ab0 <__multadd_D2A>
   140006580:	45 84 ed             	test   r13b,r13b
   140006583:	4c 8b 54 24 50       	mov    r10,QWORD PTR [rsp+0x50]
   140006588:	48 89 c5             	mov    rbp,rax
   14000658b:	0f 85 13 ff ff ff    	jne    1400064a4 <__gdtoa+0x15a4>
   140006591:	8b 84 24 9c 00 00 00 	mov    eax,DWORD PTR [rsp+0x9c]
   140006598:	44 8b 7c 24 78       	mov    r15d,DWORD PTR [rsp+0x78]
   14000659d:	44 8b 5c 24 30       	mov    r11d,DWORD PTR [rsp+0x30]
   1400065a2:	89 44 24 50          	mov    DWORD PTR [rsp+0x50],eax
   1400065a6:	e9 ac f5 ff ff       	jmp    140005b57 <__gdtoa+0xc57>
   1400065ab:	66 0f ef c9          	pxor   xmm1,xmm1
   1400065af:	31 c0                	xor    eax,eax
   1400065b1:	ba 01 00 00 00       	mov    edx,0x1
   1400065b6:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   1400065bb:	66 0f 2e c1          	ucomisd xmm0,xmm1
   1400065bf:	0f 9a c0             	setp   al
   1400065c2:	0f 45 c2             	cmovne eax,edx
   1400065c5:	c1 e0 04             	shl    eax,0x4
   1400065c8:	89 44 24 48          	mov    DWORD PTR [rsp+0x48],eax
   1400065cc:	e9 1f ff ff ff       	jmp    1400064f0 <__gdtoa+0x15f0>
   1400065d1:	44 0f b6 41 ff       	movzx  r8d,BYTE PTR [rcx-0x1]
   1400065d6:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   1400065db:	48 89 ca             	mov    rdx,rcx
   1400065de:	44 8b 7c 24 78       	mov    r15d,DWORD PTR [rsp+0x78]
   1400065e3:	e9 59 ef ff ff       	jmp    140005541 <__gdtoa+0x641>
   1400065e8:	8b 4b 18             	mov    ecx,DWORD PTR [rbx+0x18]
   1400065eb:	85 c9                	test   ecx,ecx
   1400065ed:	0f 85 4d fc ff ff    	jne    140006240 <__gdtoa+0x1340>
   1400065f3:	85 d2                	test   edx,edx
   1400065f5:	0f 8f 08 fe ff ff    	jg     140006403 <__gdtoa+0x1503>
   1400065fb:	48 89 ee             	mov    rsi,rbp
   1400065fe:	4c 8d 67 01          	lea    r12,[rdi+0x1]
   140006602:	4c 89 ed             	mov    rbp,r13
   140006605:	e9 d8 fc ff ff       	jmp    1400062e2 <__gdtoa+0x13e2>
   14000660a:	8b 4c 24 50          	mov    ecx,DWORD PTR [rsp+0x50]
   14000660e:	8b 94 24 80 00 00 00 	mov    edx,DWORD PTR [rsp+0x80]
   140006615:	8d 41 ff             	lea    eax,[rcx-0x1]
   140006618:	39 c2                	cmp    edx,eax
   14000661a:	0f 8c ac fa ff ff    	jl     1400060cc <__gdtoa+0x11cc>
   140006620:	29 c2                	sub    edx,eax
   140006622:	01 4c 24 5c          	add    DWORD PTR [rsp+0x5c],ecx
   140006626:	89 c8                	mov    eax,ecx
   140006628:	89 8c 24 ac 00 00 00 	mov    DWORD PTR [rsp+0xac],ecx
   14000662f:	8b 4c 24 70          	mov    ecx,DWORD PTR [rsp+0x70]
   140006633:	41 89 d4             	mov    r12d,edx
   140006636:	01 c8                	add    eax,ecx
   140006638:	89 4c 24 60          	mov    DWORD PTR [rsp+0x60],ecx
   14000663c:	89 44 24 70          	mov    DWORD PTR [rsp+0x70],eax
   140006640:	e9 3e f2 ff ff       	jmp    140005883 <__gdtoa+0x983>
   140006645:	8b 44 24 70          	mov    eax,DWORD PTR [rsp+0x70]
   140006649:	c7 44 24 58 00 00 00 	mov    DWORD PTR [rsp+0x58],0x0
   140006650:	00 
   140006651:	31 ed                	xor    ebp,ebp
   140006653:	44 8b a4 24 80 00 00 	mov    r12d,DWORD PTR [rsp+0x80]
   14000665a:	00 
   14000665b:	89 44 24 60          	mov    DWORD PTR [rsp+0x60],eax
   14000665f:	e9 44 f2 ff ff       	jmp    1400058a8 <__gdtoa+0x9a8>
   140006664:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   140006669:	44 8b 7c 24 78       	mov    r15d,DWORD PTR [rsp+0x78]
   14000666e:	48 89 ca             	mov    rdx,rcx
   140006671:	e9 cb ee ff ff       	jmp    140005541 <__gdtoa+0x641>
   140006676:	8b 53 18             	mov    edx,DWORD PTR [rbx+0x18]
   140006679:	48 89 ee             	mov    rsi,rbp
   14000667c:	4c 89 ed             	mov    rbp,r13
   14000667f:	85 d2                	test   edx,edx
   140006681:	0f 85 e1 fd ff ff    	jne    140006468 <__gdtoa+0x1568>
   140006687:	8b 44 24 58          	mov    eax,DWORD PTR [rsp+0x58]
   14000668b:	4d 8d 63 01          	lea    r12,[r11+0x1]
   14000668f:	89 44 24 48          	mov    DWORD PTR [rsp+0x48],eax
   140006693:	e9 4a fc ff ff       	jmp    1400062e2 <__gdtoa+0x13e2>
   140006698:	75 0a                	jne    1400066a4 <__gdtoa+0x17a4>
   14000669a:	41 f6 c0 01          	test   r8b,0x1
   14000669e:	0f 85 a2 fd ff ff    	jne    140006446 <__gdtoa+0x1546>
   1400066a4:	c7 44 24 58 20 00 00 	mov    DWORD PTR [rsp+0x58],0x20
   1400066ab:	00 
   1400066ac:	e9 a7 fd ff ff       	jmp    140006458 <__gdtoa+0x1558>
   1400066b1:	83 7b 14 01          	cmp    DWORD PTR [rbx+0x14],0x1
   1400066b5:	c7 44 24 48 10 00 00 	mov    DWORD PTR [rsp+0x48],0x10
   1400066bc:	00 
   1400066bd:	0f 8f 3d f6 ff ff    	jg     140005d00 <__gdtoa+0xe00>
   1400066c3:	31 c0                	xor    eax,eax
   1400066c5:	83 7b 18 00          	cmp    DWORD PTR [rbx+0x18],0x0
   1400066c9:	0f 95 c0             	setne  al
   1400066cc:	c1 e0 04             	shl    eax,0x4
   1400066cf:	89 44 24 48          	mov    DWORD PTR [rsp+0x48],eax
   1400066d3:	e9 28 f6 ff ff       	jmp    140005d00 <__gdtoa+0xe00>
   1400066d8:	90                   	nop
   1400066d9:	90                   	nop
   1400066da:	90                   	nop
   1400066db:	90                   	nop
   1400066dc:	90                   	nop
   1400066dd:	90                   	nop
   1400066de:	90                   	nop
   1400066df:	90                   	nop

00000001400066e0 <__rshift_D2A>:
   1400066e0:	41 54                	push   r12
   1400066e2:	55                   	push   rbp
   1400066e3:	57                   	push   rdi
   1400066e4:	56                   	push   rsi
   1400066e5:	53                   	push   rbx
   1400066e6:	48 63 59 14          	movsxd rbx,DWORD PTR [rcx+0x14]
   1400066ea:	89 d5                	mov    ebp,edx
   1400066ec:	49 89 ca             	mov    r10,rcx
   1400066ef:	c1 fd 05             	sar    ebp,0x5
   1400066f2:	39 eb                	cmp    ebx,ebp
   1400066f4:	7f 1a                	jg     140006710 <__rshift_D2A+0x30>
   1400066f6:	41 c7 42 14 00 00 00 	mov    DWORD PTR [r10+0x14],0x0
   1400066fd:	00 
   1400066fe:	41 c7 42 18 00 00 00 	mov    DWORD PTR [r10+0x18],0x0
   140006705:	00 
   140006706:	5b                   	pop    rbx
   140006707:	5e                   	pop    rsi
   140006708:	5f                   	pop    rdi
   140006709:	5d                   	pop    rbp
   14000670a:	41 5c                	pop    r12
   14000670c:	c3                   	ret
   14000670d:	0f 1f 00             	nop    DWORD PTR [rax]
   140006710:	4c 8d 61 18          	lea    r12,[rcx+0x18]
   140006714:	48 63 ed             	movsxd rbp,ebp
   140006717:	4d 8d 1c 9c          	lea    r11,[r12+rbx*4]
   14000671b:	49 8d 34 ac          	lea    rsi,[r12+rbp*4]
   14000671f:	83 e2 1f             	and    edx,0x1f
   140006722:	74 64                	je     140006788 <__rshift_D2A+0xa8>
   140006724:	44 8b 0e             	mov    r9d,DWORD PTR [rsi]
   140006727:	bf 20 00 00 00       	mov    edi,0x20
   14000672c:	89 d1                	mov    ecx,edx
   14000672e:	4c 8d 46 04          	lea    r8,[rsi+0x4]
   140006732:	29 d7                	sub    edi,edx
   140006734:	41 d3 e9             	shr    r9d,cl
   140006737:	4d 39 d8             	cmp    r8,r11
   14000673a:	0f 83 80 00 00 00    	jae    1400067c0 <__rshift_D2A+0xe0>
   140006740:	4c 89 e6             	mov    rsi,r12
   140006743:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140006748:	41 8b 00             	mov    eax,DWORD PTR [r8]
   14000674b:	89 f9                	mov    ecx,edi
   14000674d:	48 83 c6 04          	add    rsi,0x4
   140006751:	49 83 c0 04          	add    r8,0x4
   140006755:	d3 e0                	shl    eax,cl
   140006757:	89 d1                	mov    ecx,edx
   140006759:	44 09 c8             	or     eax,r9d
   14000675c:	89 46 fc             	mov    DWORD PTR [rsi-0x4],eax
   14000675f:	45 8b 48 fc          	mov    r9d,DWORD PTR [r8-0x4]
   140006763:	41 d3 e9             	shr    r9d,cl
   140006766:	4d 39 d8             	cmp    r8,r11
   140006769:	72 dd                	jb     140006748 <__rshift_D2A+0x68>
   14000676b:	48 29 eb             	sub    rbx,rbp
   14000676e:	49 8d 44 9c fc       	lea    rax,[r12+rbx*4-0x4]
   140006773:	44 89 08             	mov    DWORD PTR [rax],r9d
   140006776:	45 85 c9             	test   r9d,r9d
   140006779:	74 2a                	je     1400067a5 <__rshift_D2A+0xc5>
   14000677b:	48 83 c0 04          	add    rax,0x4
   14000677f:	eb 24                	jmp    1400067a5 <__rshift_D2A+0xc5>
   140006781:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140006788:	4c 89 e7             	mov    rdi,r12
   14000678b:	4c 39 de             	cmp    rsi,r11
   14000678e:	0f 83 62 ff ff ff    	jae    1400066f6 <__rshift_D2A+0x16>
   140006794:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140006798:	a5                   	movs   DWORD PTR es:[rdi],DWORD PTR ds:[rsi]
   140006799:	4c 39 de             	cmp    rsi,r11
   14000679c:	72 fa                	jb     140006798 <__rshift_D2A+0xb8>
   14000679e:	48 29 eb             	sub    rbx,rbp
   1400067a1:	49 8d 04 9c          	lea    rax,[r12+rbx*4]
   1400067a5:	4c 29 e0             	sub    rax,r12
   1400067a8:	48 c1 f8 02          	sar    rax,0x2
   1400067ac:	41 89 42 14          	mov    DWORD PTR [r10+0x14],eax
   1400067b0:	85 c0                	test   eax,eax
   1400067b2:	0f 84 46 ff ff ff    	je     1400066fe <__rshift_D2A+0x1e>
   1400067b8:	5b                   	pop    rbx
   1400067b9:	5e                   	pop    rsi
   1400067ba:	5f                   	pop    rdi
   1400067bb:	5d                   	pop    rbp
   1400067bc:	41 5c                	pop    r12
   1400067be:	c3                   	ret
   1400067bf:	90                   	nop
   1400067c0:	45 89 4a 18          	mov    DWORD PTR [r10+0x18],r9d
   1400067c4:	45 85 c9             	test   r9d,r9d
   1400067c7:	0f 84 29 ff ff ff    	je     1400066f6 <__rshift_D2A+0x16>
   1400067cd:	4c 89 e0             	mov    rax,r12
   1400067d0:	eb a9                	jmp    14000677b <__rshift_D2A+0x9b>
   1400067d2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   1400067d9:	00 00 00 00 
   1400067dd:	0f 1f 00             	nop    DWORD PTR [rax]

00000001400067e0 <__trailz_D2A>:
   1400067e0:	48 63 51 14          	movsxd rdx,DWORD PTR [rcx+0x14]
   1400067e4:	48 8d 41 18          	lea    rax,[rcx+0x18]
   1400067e8:	48 8d 0c 90          	lea    rcx,[rax+rdx*4]
   1400067ec:	31 d2                	xor    edx,edx
   1400067ee:	48 39 c8             	cmp    rax,rcx
   1400067f1:	72 11                	jb     140006804 <__trailz_D2A+0x24>
   1400067f3:	eb 22                	jmp    140006817 <__trailz_D2A+0x37>
   1400067f5:	0f 1f 00             	nop    DWORD PTR [rax]
   1400067f8:	48 83 c0 04          	add    rax,0x4
   1400067fc:	83 c2 20             	add    edx,0x20
   1400067ff:	48 39 c8             	cmp    rax,rcx
   140006802:	73 13                	jae    140006817 <__trailz_D2A+0x37>
   140006804:	44 8b 00             	mov    r8d,DWORD PTR [rax]
   140006807:	45 85 c0             	test   r8d,r8d
   14000680a:	74 ec                	je     1400067f8 <__trailz_D2A+0x18>
   14000680c:	48 39 c8             	cmp    rax,rcx
   14000680f:	73 06                	jae    140006817 <__trailz_D2A+0x37>
   140006811:	f3 0f bc 00          	tzcnt  eax,DWORD PTR [rax]
   140006815:	01 c2                	add    edx,eax
   140006817:	89 d0                	mov    eax,edx
   140006819:	c3                   	ret
   14000681a:	90                   	nop
   14000681b:	90                   	nop
   14000681c:	90                   	nop
   14000681d:	90                   	nop
   14000681e:	90                   	nop
   14000681f:	90                   	nop

0000000140006820 <dtoa_lock>:
   140006820:	57                   	push   rdi
   140006821:	56                   	push   rsi
   140006822:	53                   	push   rbx
   140006823:	48 83 ec 20          	sub    rsp,0x20
   140006827:	8b 05 c3 72 00 00    	mov    eax,DWORD PTR [rip+0x72c3]        # 14000daf0 <dtoa_CS_init>
   14000682d:	89 ce                	mov    esi,ecx
   14000682f:	83 f8 02             	cmp    eax,0x2
   140006832:	0f 84 b8 00 00 00    	je     1400068f0 <dtoa_lock+0xd0>
   140006838:	85 c0                	test   eax,eax
   14000683a:	74 3c                	je     140006878 <dtoa_lock+0x58>
   14000683c:	83 f8 01             	cmp    eax,0x1
   14000683f:	75 2a                	jne    14000686b <dtoa_lock+0x4b>
   140006841:	48 8b 1d d4 79 00 00 	mov    rbx,QWORD PTR [rip+0x79d4]        # 14000e21c <__imp_Sleep>
   140006848:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000684f:	00 
   140006850:	b9 01 00 00 00       	mov    ecx,0x1
   140006855:	ff d3                	call   rbx
   140006857:	8b 05 93 72 00 00    	mov    eax,DWORD PTR [rip+0x7293]        # 14000daf0 <dtoa_CS_init>
   14000685d:	83 f8 01             	cmp    eax,0x1
   140006860:	74 ee                	je     140006850 <dtoa_lock+0x30>
   140006862:	83 f8 02             	cmp    eax,0x2
   140006865:	0f 84 85 00 00 00    	je     1400068f0 <dtoa_lock+0xd0>
   14000686b:	48 83 c4 20          	add    rsp,0x20
   14000686f:	5b                   	pop    rbx
   140006870:	5e                   	pop    rsi
   140006871:	5f                   	pop    rdi
   140006872:	c3                   	ret
   140006873:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140006878:	b8 01 00 00 00       	mov    eax,0x1
   14000687d:	87 05 6d 72 00 00    	xchg   DWORD PTR [rip+0x726d],eax        # 14000daf0 <dtoa_CS_init>
   140006883:	85 c0                	test   eax,eax
   140006885:	75 49                	jne    1400068d0 <dtoa_lock+0xb0>
   140006887:	48 8d 1d 72 72 00 00 	lea    rbx,[rip+0x7272]        # 14000db00 <dtoa_CritSec>
   14000688e:	48 8b 3d 5f 79 00 00 	mov    rdi,QWORD PTR [rip+0x795f]        # 14000e1f4 <__imp_InitializeCriticalSection>
   140006895:	48 89 d9             	mov    rcx,rbx
   140006898:	ff d7                	call   rdi
   14000689a:	48 8d 4b 28          	lea    rcx,[rbx+0x28]
   14000689e:	ff d7                	call   rdi
   1400068a0:	48 8d 0d 59 00 00 00 	lea    rcx,[rip+0x59]        # 140006900 <dtoa_lock_cleanup>
   1400068a7:	e8 44 ac ff ff       	call   1400014f0 <atexit>
   1400068ac:	c7 05 3a 72 00 00 02 	mov    DWORD PTR [rip+0x723a],0x2        # 14000daf0 <dtoa_CS_init>
   1400068b3:	00 00 00 
   1400068b6:	48 63 ce             	movsxd rcx,esi
   1400068b9:	48 8d 04 89          	lea    rax,[rcx+rcx*4]
   1400068bd:	48 8d 0c c3          	lea    rcx,[rbx+rax*8]
   1400068c1:	48 83 c4 20          	add    rsp,0x20
   1400068c5:	5b                   	pop    rbx
   1400068c6:	5e                   	pop    rsi
   1400068c7:	5f                   	pop    rdi
   1400068c8:	48 ff 25 0d 79 00 00 	rex.W jmp QWORD PTR [rip+0x790d]        # 14000e1dc <__imp_EnterCriticalSection>
   1400068cf:	90                   	nop
   1400068d0:	48 8d 1d 29 72 00 00 	lea    rbx,[rip+0x7229]        # 14000db00 <dtoa_CritSec>
   1400068d7:	83 f8 02             	cmp    eax,0x2
   1400068da:	74 d0                	je     1400068ac <dtoa_lock+0x8c>
   1400068dc:	8b 05 0e 72 00 00    	mov    eax,DWORD PTR [rip+0x720e]        # 14000daf0 <dtoa_CS_init>
   1400068e2:	83 f8 01             	cmp    eax,0x1
   1400068e5:	0f 84 56 ff ff ff    	je     140006841 <dtoa_lock+0x21>
   1400068eb:	e9 72 ff ff ff       	jmp    140006862 <dtoa_lock+0x42>
   1400068f0:	48 8d 1d 09 72 00 00 	lea    rbx,[rip+0x7209]        # 14000db00 <dtoa_CritSec>
   1400068f7:	eb bd                	jmp    1400068b6 <dtoa_lock+0x96>
   1400068f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000140006900 <dtoa_lock_cleanup>:
   140006900:	53                   	push   rbx
   140006901:	48 83 ec 20          	sub    rsp,0x20
   140006905:	b8 03 00 00 00       	mov    eax,0x3
   14000690a:	87 05 e0 71 00 00    	xchg   DWORD PTR [rip+0x71e0],eax        # 14000daf0 <dtoa_CS_init>
   140006910:	83 f8 02             	cmp    eax,0x2
   140006913:	74 0b                	je     140006920 <dtoa_lock_cleanup+0x20>
   140006915:	48 83 c4 20          	add    rsp,0x20
   140006919:	5b                   	pop    rbx
   14000691a:	c3                   	ret
   14000691b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140006920:	48 8b 1d ad 78 00 00 	mov    rbx,QWORD PTR [rip+0x78ad]        # 14000e1d4 <__IAT_start__>
   140006927:	48 8d 0d d2 71 00 00 	lea    rcx,[rip+0x71d2]        # 14000db00 <dtoa_CritSec>
   14000692e:	ff d3                	call   rbx
   140006930:	48 8d 0d f1 71 00 00 	lea    rcx,[rip+0x71f1]        # 14000db28 <dtoa_CritSec+0x28>
   140006937:	48 89 d8             	mov    rax,rbx
   14000693a:	48 83 c4 20          	add    rsp,0x20
   14000693e:	5b                   	pop    rbx
   14000693f:	48 ff e0             	rex.W jmp rax
   140006942:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140006949:	00 00 00 00 
   14000694d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000140006950 <__Balloc_D2A>:
   140006950:	56                   	push   rsi
   140006951:	53                   	push   rbx
   140006952:	48 83 ec 38          	sub    rsp,0x38
   140006956:	89 cb                	mov    ebx,ecx
   140006958:	31 c9                	xor    ecx,ecx
   14000695a:	e8 c1 fe ff ff       	call   140006820 <dtoa_lock>
   14000695f:	83 fb 09             	cmp    ebx,0x9
   140006962:	7f 3c                	jg     1400069a0 <__Balloc_D2A+0x50>
   140006964:	48 8d 15 35 71 00 00 	lea    rdx,[rip+0x7135]        # 14000daa0 <freelist>
   14000696b:	48 63 cb             	movsxd rcx,ebx
   14000696e:	48 8b 04 ca          	mov    rax,QWORD PTR [rdx+rcx*8]
   140006972:	48 85 c0             	test   rax,rax
   140006975:	74 79                	je     1400069f0 <__Balloc_D2A+0xa0>
   140006977:	4c 8b 00             	mov    r8,QWORD PTR [rax]
   14000697a:	83 3d 6f 71 00 00 02 	cmp    DWORD PTR [rip+0x716f],0x2        # 14000daf0 <dtoa_CS_init>
   140006981:	4c 89 04 ca          	mov    QWORD PTR [rdx+rcx*8],r8
   140006985:	75 50                	jne    1400069d7 <__Balloc_D2A+0x87>
   140006987:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
   14000698c:	48 8d 0d 6d 71 00 00 	lea    rcx,[rip+0x716d]        # 14000db00 <dtoa_CritSec>
   140006993:	ff 15 6b 78 00 00    	call   QWORD PTR [rip+0x786b]        # 14000e204 <__imp_LeaveCriticalSection>
   140006999:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
   14000699e:	eb 37                	jmp    1400069d7 <__Balloc_D2A+0x87>
   1400069a0:	89 d9                	mov    ecx,ebx
   1400069a2:	be 01 00 00 00       	mov    esi,0x1
   1400069a7:	d3 e6                	shl    esi,cl
   1400069a9:	48 63 c6             	movsxd rax,esi
   1400069ac:	48 8d 0c 85 23 00 00 	lea    rcx,[rax*4+0x23]
   1400069b3:	00 
   1400069b4:	48 c1 e9 03          	shr    rcx,0x3
   1400069b8:	89 c9                	mov    ecx,ecx
   1400069ba:	48 c1 e1 03          	shl    rcx,0x3
   1400069be:	e8 2d 12 00 00       	call   140007bf0 <malloc>
   1400069c3:	48 85 c0             	test   rax,rax
   1400069c6:	74 17                	je     1400069df <__Balloc_D2A+0x8f>
   1400069c8:	83 3d 21 71 00 00 02 	cmp    DWORD PTR [rip+0x7121],0x2        # 14000daf0 <dtoa_CS_init>
   1400069cf:	89 58 08             	mov    DWORD PTR [rax+0x8],ebx
   1400069d2:	89 70 0c             	mov    DWORD PTR [rax+0xc],esi
   1400069d5:	74 b0                	je     140006987 <__Balloc_D2A+0x37>
   1400069d7:	48 c7 40 10 00 00 00 	mov    QWORD PTR [rax+0x10],0x0
   1400069de:	00 
   1400069df:	48 83 c4 38          	add    rsp,0x38
   1400069e3:	5b                   	pop    rbx
   1400069e4:	5e                   	pop    rsi
   1400069e5:	c3                   	ret
   1400069e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400069ed:	00 00 00 
   1400069f0:	89 d9                	mov    ecx,ebx
   1400069f2:	be 01 00 00 00       	mov    esi,0x1
   1400069f7:	4c 8d 05 a2 67 00 00 	lea    r8,[rip+0x67a2]        # 14000d1a0 <private_mem>
   1400069fe:	d3 e6                	shl    esi,cl
   140006a00:	8d 46 09             	lea    eax,[rsi+0x9]
   140006a03:	48 98                	cdqe
   140006a05:	48 8d 0c 85 ff ff ff 	lea    rcx,[rax*4-0x1]
   140006a0c:	ff 
   140006a0d:	48 8b 05 6c 16 00 00 	mov    rax,QWORD PTR [rip+0x166c]        # 140008080 <pmem_next>
   140006a14:	48 c1 e9 03          	shr    rcx,0x3
   140006a18:	48 89 c2             	mov    rdx,rax
   140006a1b:	4c 29 c2             	sub    rdx,r8
   140006a1e:	48 c1 fa 03          	sar    rdx,0x3
   140006a22:	48 01 ca             	add    rdx,rcx
   140006a25:	48 81 fa 20 01 00 00 	cmp    rdx,0x120
   140006a2c:	77 8c                	ja     1400069ba <__Balloc_D2A+0x6a>
   140006a2e:	48 8d 14 c8          	lea    rdx,[rax+rcx*8]
   140006a32:	48 89 15 47 16 00 00 	mov    QWORD PTR [rip+0x1647],rdx        # 140008080 <pmem_next>
   140006a39:	eb 8d                	jmp    1400069c8 <__Balloc_D2A+0x78>
   140006a3b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000140006a40 <__Bfree_D2A>:
   140006a40:	53                   	push   rbx
   140006a41:	48 83 ec 20          	sub    rsp,0x20
   140006a45:	48 89 cb             	mov    rbx,rcx
   140006a48:	48 85 c9             	test   rcx,rcx
   140006a4b:	74 39                	je     140006a86 <__Bfree_D2A+0x46>
   140006a4d:	83 79 08 09          	cmp    DWORD PTR [rcx+0x8],0x9
   140006a51:	7e 0d                	jle    140006a60 <__Bfree_D2A+0x20>
   140006a53:	48 83 c4 20          	add    rsp,0x20
   140006a57:	5b                   	pop    rbx
   140006a58:	e9 7b 11 00 00       	jmp    140007bd8 <free>
   140006a5d:	0f 1f 00             	nop    DWORD PTR [rax]
   140006a60:	31 c9                	xor    ecx,ecx
   140006a62:	e8 b9 fd ff ff       	call   140006820 <dtoa_lock>
   140006a67:	48 63 53 08          	movsxd rdx,DWORD PTR [rbx+0x8]
   140006a6b:	48 8d 05 2e 70 00 00 	lea    rax,[rip+0x702e]        # 14000daa0 <freelist>
   140006a72:	83 3d 77 70 00 00 02 	cmp    DWORD PTR [rip+0x7077],0x2        # 14000daf0 <dtoa_CS_init>
   140006a79:	48 8b 0c d0          	mov    rcx,QWORD PTR [rax+rdx*8]
   140006a7d:	48 89 1c d0          	mov    QWORD PTR [rax+rdx*8],rbx
   140006a81:	48 89 0b             	mov    QWORD PTR [rbx],rcx
   140006a84:	74 0a                	je     140006a90 <__Bfree_D2A+0x50>
   140006a86:	48 83 c4 20          	add    rsp,0x20
   140006a8a:	5b                   	pop    rbx
   140006a8b:	c3                   	ret
   140006a8c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140006a90:	48 8d 0d 69 70 00 00 	lea    rcx,[rip+0x7069]        # 14000db00 <dtoa_CritSec>
   140006a97:	48 83 c4 20          	add    rsp,0x20
   140006a9b:	5b                   	pop    rbx
   140006a9c:	48 ff 25 61 77 00 00 	rex.W jmp QWORD PTR [rip+0x7761]        # 14000e204 <__imp_LeaveCriticalSection>
   140006aa3:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140006aaa:	00 00 00 00 
   140006aae:	66 90                	xchg   ax,ax

0000000140006ab0 <__multadd_D2A>:
   140006ab0:	55                   	push   rbp
   140006ab1:	57                   	push   rdi
   140006ab2:	56                   	push   rsi
   140006ab3:	53                   	push   rbx
   140006ab4:	48 83 ec 28          	sub    rsp,0x28
   140006ab8:	8b 79 14             	mov    edi,DWORD PTR [rcx+0x14]
   140006abb:	48 89 cb             	mov    rbx,rcx
   140006abe:	49 63 f0             	movsxd rsi,r8d
   140006ac1:	48 63 d2             	movsxd rdx,edx
   140006ac4:	31 c9                	xor    ecx,ecx
   140006ac6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   140006acd:	00 00 00 
   140006ad0:	8b 44 8b 18          	mov    eax,DWORD PTR [rbx+rcx*4+0x18]
   140006ad4:	48 0f af c2          	imul   rax,rdx
   140006ad8:	48 01 f0             	add    rax,rsi
   140006adb:	89 44 8b 18          	mov    DWORD PTR [rbx+rcx*4+0x18],eax
   140006adf:	48 89 c6             	mov    rsi,rax
   140006ae2:	48 83 c1 01          	add    rcx,0x1
   140006ae6:	48 c1 ee 20          	shr    rsi,0x20
   140006aea:	39 cf                	cmp    edi,ecx
   140006aec:	7f e2                	jg     140006ad0 <__multadd_D2A+0x20>
   140006aee:	48 89 dd             	mov    rbp,rbx
   140006af1:	48 85 f6             	test   rsi,rsi
   140006af4:	74 15                	je     140006b0b <__multadd_D2A+0x5b>
   140006af6:	39 7b 0c             	cmp    DWORD PTR [rbx+0xc],edi
   140006af9:	7e 25                	jle    140006b20 <__multadd_D2A+0x70>
   140006afb:	48 63 c7             	movsxd rax,edi
   140006afe:	83 c7 01             	add    edi,0x1
   140006b01:	48 89 dd             	mov    rbp,rbx
   140006b04:	89 74 83 18          	mov    DWORD PTR [rbx+rax*4+0x18],esi
   140006b08:	89 7b 14             	mov    DWORD PTR [rbx+0x14],edi
   140006b0b:	48 89 e8             	mov    rax,rbp
   140006b0e:	48 83 c4 28          	add    rsp,0x28
   140006b12:	5b                   	pop    rbx
   140006b13:	5e                   	pop    rsi
   140006b14:	5f                   	pop    rdi
   140006b15:	5d                   	pop    rbp
   140006b16:	c3                   	ret
   140006b17:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140006b1e:	00 00 
   140006b20:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
   140006b23:	8d 48 01             	lea    ecx,[rax+0x1]
   140006b26:	e8 25 fe ff ff       	call   140006950 <__Balloc_D2A>
   140006b2b:	48 89 c5             	mov    rbp,rax
   140006b2e:	48 85 c0             	test   rax,rax
   140006b31:	74 d8                	je     140006b0b <__multadd_D2A+0x5b>
   140006b33:	48 8d 48 10          	lea    rcx,[rax+0x10]
   140006b37:	48 63 43 14          	movsxd rax,DWORD PTR [rbx+0x14]
   140006b3b:	48 8d 53 10          	lea    rdx,[rbx+0x10]
   140006b3f:	4c 8d 04 85 08 00 00 	lea    r8,[rax*4+0x8]
   140006b46:	00 
   140006b47:	e8 ac 10 00 00       	call   140007bf8 <memcpy>
   140006b4c:	48 89 d9             	mov    rcx,rbx
   140006b4f:	48 89 eb             	mov    rbx,rbp
   140006b52:	e8 e9 fe ff ff       	call   140006a40 <__Bfree_D2A>
   140006b57:	48 63 c7             	movsxd rax,edi
   140006b5a:	83 c7 01             	add    edi,0x1
   140006b5d:	48 89 dd             	mov    rbp,rbx
   140006b60:	89 74 83 18          	mov    DWORD PTR [rbx+rax*4+0x18],esi
   140006b64:	89 7b 14             	mov    DWORD PTR [rbx+0x14],edi
   140006b67:	eb a2                	jmp    140006b0b <__multadd_D2A+0x5b>
   140006b69:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000140006b70 <__i2b_D2A>:
   140006b70:	53                   	push   rbx
   140006b71:	48 83 ec 30          	sub    rsp,0x30
   140006b75:	89 cb                	mov    ebx,ecx
   140006b77:	31 c9                	xor    ecx,ecx
   140006b79:	e8 a2 fc ff ff       	call   140006820 <dtoa_lock>
   140006b7e:	48 8b 05 23 6f 00 00 	mov    rax,QWORD PTR [rip+0x6f23]        # 14000daa8 <freelist+0x8>
   140006b85:	48 85 c0             	test   rax,rax
   140006b88:	74 2e                	je     140006bb8 <__i2b_D2A+0x48>
   140006b8a:	48 8b 10             	mov    rdx,QWORD PTR [rax]
   140006b8d:	83 3d 5c 6f 00 00 02 	cmp    DWORD PTR [rip+0x6f5c],0x2        # 14000daf0 <dtoa_CS_init>
   140006b94:	48 89 15 0d 6f 00 00 	mov    QWORD PTR [rip+0x6f0d],rdx        # 14000daa8 <freelist+0x8>
   140006b9b:	74 63                	je     140006c00 <__i2b_D2A+0x90>
   140006b9d:	48 8b 15 2c 2b 00 00 	mov    rdx,QWORD PTR [rip+0x2b2c]        # 1400096d0 <__bigtens_D2A+0x30>
   140006ba4:	89 58 18             	mov    DWORD PTR [rax+0x18],ebx
   140006ba7:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
   140006bab:	48 83 c4 30          	add    rsp,0x30
   140006baf:	5b                   	pop    rbx
   140006bb0:	c3                   	ret
   140006bb1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140006bb8:	48 8b 05 c1 14 00 00 	mov    rax,QWORD PTR [rip+0x14c1]        # 140008080 <pmem_next>
   140006bbf:	48 8d 0d da 65 00 00 	lea    rcx,[rip+0x65da]        # 14000d1a0 <private_mem>
   140006bc6:	48 89 c2             	mov    rdx,rax
   140006bc9:	48 29 ca             	sub    rdx,rcx
   140006bcc:	48 c1 fa 03          	sar    rdx,0x3
   140006bd0:	48 83 c2 05          	add    rdx,0x5
   140006bd4:	48 81 fa 20 01 00 00 	cmp    rdx,0x120
   140006bdb:	76 43                	jbe    140006c20 <__i2b_D2A+0xb0>
   140006bdd:	b9 28 00 00 00       	mov    ecx,0x28
   140006be2:	e8 09 10 00 00       	call   140007bf0 <malloc>
   140006be7:	48 85 c0             	test   rax,rax
   140006bea:	74 bf                	je     140006bab <__i2b_D2A+0x3b>
   140006bec:	48 8b 15 d5 2a 00 00 	mov    rdx,QWORD PTR [rip+0x2ad5]        # 1400096c8 <__bigtens_D2A+0x28>
   140006bf3:	83 3d f6 6e 00 00 02 	cmp    DWORD PTR [rip+0x6ef6],0x2        # 14000daf0 <dtoa_CS_init>
   140006bfa:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
   140006bfe:	75 9d                	jne    140006b9d <__i2b_D2A+0x2d>
   140006c00:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
   140006c05:	48 8d 0d f4 6e 00 00 	lea    rcx,[rip+0x6ef4]        # 14000db00 <dtoa_CritSec>
   140006c0c:	ff 15 f2 75 00 00    	call   QWORD PTR [rip+0x75f2]        # 14000e204 <__imp_LeaveCriticalSection>
   140006c12:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
   140006c17:	eb 84                	jmp    140006b9d <__i2b_D2A+0x2d>
   140006c19:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140006c20:	48 8d 50 28          	lea    rdx,[rax+0x28]
   140006c24:	48 89 15 55 14 00 00 	mov    QWORD PTR [rip+0x1455],rdx        # 140008080 <pmem_next>
   140006c2b:	eb bf                	jmp    140006bec <__i2b_D2A+0x7c>
   140006c2d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000140006c30 <__mult_D2A>:
   140006c30:	41 57                	push   r15
   140006c32:	41 56                	push   r14
   140006c34:	41 55                	push   r13
   140006c36:	41 54                	push   r12
   140006c38:	55                   	push   rbp
   140006c39:	57                   	push   rdi
   140006c3a:	56                   	push   rsi
   140006c3b:	53                   	push   rbx
   140006c3c:	48 83 ec 28          	sub    rsp,0x28
   140006c40:	4c 63 61 14          	movsxd r12,DWORD PTR [rcx+0x14]
   140006c44:	48 63 6a 14          	movsxd rbp,DWORD PTR [rdx+0x14]
   140006c48:	49 89 cd             	mov    r13,rcx
   140006c4b:	49 89 d7             	mov    r15,rdx
   140006c4e:	41 39 ec             	cmp    r12d,ebp
   140006c51:	7c 0e                	jl     140006c61 <__mult_D2A+0x31>
   140006c53:	89 e8                	mov    eax,ebp
   140006c55:	49 89 cf             	mov    r15,rcx
   140006c58:	49 63 ec             	movsxd rbp,r12d
   140006c5b:	49 89 d5             	mov    r13,rdx
   140006c5e:	4c 63 e0             	movsxd r12,eax
   140006c61:	41 8b 4f 08          	mov    ecx,DWORD PTR [r15+0x8]
   140006c65:	42 8d 5c 25 00       	lea    ebx,[rbp+r12*1+0x0]
   140006c6a:	41 39 5f 0c          	cmp    DWORD PTR [r15+0xc],ebx
   140006c6e:	7d 03                	jge    140006c73 <__mult_D2A+0x43>
   140006c70:	83 c1 01             	add    ecx,0x1
   140006c73:	e8 d8 fc ff ff       	call   140006950 <__Balloc_D2A>
   140006c78:	48 89 c7             	mov    rdi,rax
   140006c7b:	48 85 c0             	test   rax,rax
   140006c7e:	0f 84 ef 00 00 00    	je     140006d73 <__mult_D2A+0x143>
   140006c84:	4c 8d 58 18          	lea    r11,[rax+0x18]
   140006c88:	48 63 c3             	movsxd rax,ebx
   140006c8b:	49 8d 34 83          	lea    rsi,[r11+rax*4]
   140006c8f:	49 39 f3             	cmp    r11,rsi
   140006c92:	73 23                	jae    140006cb7 <__mult_D2A+0x87>
   140006c94:	48 89 f0             	mov    rax,rsi
   140006c97:	4c 89 d9             	mov    rcx,r11
   140006c9a:	31 d2                	xor    edx,edx
   140006c9c:	48 29 f8             	sub    rax,rdi
   140006c9f:	48 83 e8 19          	sub    rax,0x19
   140006ca3:	48 c1 e8 02          	shr    rax,0x2
   140006ca7:	4c 8d 04 85 04 00 00 	lea    r8,[rax*4+0x4]
   140006cae:	00 
   140006caf:	e8 4c 0f 00 00       	call   140007c00 <memset>
   140006cb4:	49 89 c3             	mov    r11,rax
   140006cb7:	4d 8d 4d 18          	lea    r9,[r13+0x18]
   140006cbb:	4d 8d 77 18          	lea    r14,[r15+0x18]
   140006cbf:	4f 8d 24 a1          	lea    r12,[r9+r12*4]
   140006cc3:	49 8d 2c ae          	lea    rbp,[r14+rbp*4]
   140006cc7:	4d 39 e1             	cmp    r9,r12
   140006cca:	0f 83 83 00 00 00    	jae    140006d53 <__mult_D2A+0x123>
   140006cd0:	48 89 e8             	mov    rax,rbp
   140006cd3:	4c 29 f8             	sub    rax,r15
   140006cd6:	49 83 c7 19          	add    r15,0x19
   140006cda:	48 83 e8 19          	sub    rax,0x19
   140006cde:	48 c1 e8 02          	shr    rax,0x2
   140006ce2:	4c 39 fd             	cmp    rbp,r15
   140006ce5:	4c 8d 2c 85 04 00 00 	lea    r13,[rax*4+0x4]
   140006cec:	00 
   140006ced:	b8 04 00 00 00       	mov    eax,0x4
   140006cf2:	4c 0f 42 e8          	cmovb  r13,rax
   140006cf6:	eb 11                	jmp    140006d09 <__mult_D2A+0xd9>
   140006cf8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140006cff:	00 
   140006d00:	49 83 c3 04          	add    r11,0x4
   140006d04:	4d 39 e1             	cmp    r9,r12
   140006d07:	73 4a                	jae    140006d53 <__mult_D2A+0x123>
   140006d09:	45 8b 11             	mov    r10d,DWORD PTR [r9]
   140006d0c:	49 83 c1 04          	add    r9,0x4
   140006d10:	45 85 d2             	test   r10d,r10d
   140006d13:	74 eb                	je     140006d00 <__mult_D2A+0xd0>
   140006d15:	4c 89 d9             	mov    rcx,r11
   140006d18:	4c 89 f2             	mov    rdx,r14
   140006d1b:	45 31 c0             	xor    r8d,r8d
   140006d1e:	66 90                	xchg   ax,ax
   140006d20:	8b 02                	mov    eax,DWORD PTR [rdx]
   140006d22:	44 8b 39             	mov    r15d,DWORD PTR [rcx]
   140006d25:	48 83 c2 04          	add    rdx,0x4
   140006d29:	48 83 c1 04          	add    rcx,0x4
   140006d2d:	49 0f af c2          	imul   rax,r10
   140006d31:	4c 01 f8             	add    rax,r15
   140006d34:	4c 01 c0             	add    rax,r8
   140006d37:	49 89 c0             	mov    r8,rax
   140006d3a:	89 41 fc             	mov    DWORD PTR [rcx-0x4],eax
   140006d3d:	49 c1 e8 20          	shr    r8,0x20
   140006d41:	48 39 ea             	cmp    rdx,rbp
   140006d44:	72 da                	jb     140006d20 <__mult_D2A+0xf0>
   140006d46:	47 89 04 2b          	mov    DWORD PTR [r11+r13*1],r8d
   140006d4a:	49 83 c3 04          	add    r11,0x4
   140006d4e:	4d 39 e1             	cmp    r9,r12
   140006d51:	72 b6                	jb     140006d09 <__mult_D2A+0xd9>
   140006d53:	85 db                	test   ebx,ebx
   140006d55:	7f 0e                	jg     140006d65 <__mult_D2A+0x135>
   140006d57:	eb 17                	jmp    140006d70 <__mult_D2A+0x140>
   140006d59:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140006d60:	83 eb 01             	sub    ebx,0x1
   140006d63:	74 0b                	je     140006d70 <__mult_D2A+0x140>
   140006d65:	8b 46 fc             	mov    eax,DWORD PTR [rsi-0x4]
   140006d68:	48 83 ee 04          	sub    rsi,0x4
   140006d6c:	85 c0                	test   eax,eax
   140006d6e:	74 f0                	je     140006d60 <__mult_D2A+0x130>
   140006d70:	89 5f 14             	mov    DWORD PTR [rdi+0x14],ebx
   140006d73:	48 89 f8             	mov    rax,rdi
   140006d76:	48 83 c4 28          	add    rsp,0x28
   140006d7a:	5b                   	pop    rbx
   140006d7b:	5e                   	pop    rsi
   140006d7c:	5f                   	pop    rdi
   140006d7d:	5d                   	pop    rbp
   140006d7e:	41 5c                	pop    r12
   140006d80:	41 5d                	pop    r13
   140006d82:	41 5e                	pop    r14
   140006d84:	41 5f                	pop    r15
   140006d86:	c3                   	ret
   140006d87:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140006d8e:	00 00 

0000000140006d90 <__pow5mult_D2A>:
   140006d90:	55                   	push   rbp
   140006d91:	57                   	push   rdi
   140006d92:	56                   	push   rsi
   140006d93:	53                   	push   rbx
   140006d94:	48 83 ec 28          	sub    rsp,0x28
   140006d98:	89 d0                	mov    eax,edx
   140006d9a:	48 89 ce             	mov    rsi,rcx
   140006d9d:	89 d3                	mov    ebx,edx
   140006d9f:	83 e0 03             	and    eax,0x3
   140006da2:	0f 85 b8 00 00 00    	jne    140006e60 <__pow5mult_D2A+0xd0>
   140006da8:	c1 fb 02             	sar    ebx,0x2
   140006dab:	48 89 f5             	mov    rbp,rsi
   140006dae:	74 52                	je     140006e02 <__pow5mult_D2A+0x72>
   140006db0:	48 8b 3d c9 63 00 00 	mov    rdi,QWORD PTR [rip+0x63c9]        # 14000d180 <p5s>
   140006db7:	48 85 ff             	test   rdi,rdi
   140006dba:	0f 84 d0 00 00 00    	je     140006e90 <__pow5mult_D2A+0x100>
   140006dc0:	48 89 f5             	mov    rbp,rsi
   140006dc3:	eb 12                	jmp    140006dd7 <__pow5mult_D2A+0x47>
   140006dc5:	0f 1f 00             	nop    DWORD PTR [rax]
   140006dc8:	d1 fb                	sar    ebx,1
   140006dca:	74 36                	je     140006e02 <__pow5mult_D2A+0x72>
   140006dcc:	48 8b 37             	mov    rsi,QWORD PTR [rdi]
   140006dcf:	48 85 f6             	test   rsi,rsi
   140006dd2:	74 3c                	je     140006e10 <__pow5mult_D2A+0x80>
   140006dd4:	48 89 f7             	mov    rdi,rsi
   140006dd7:	f6 c3 01             	test   bl,0x1
   140006dda:	74 ec                	je     140006dc8 <__pow5mult_D2A+0x38>
   140006ddc:	48 89 fa             	mov    rdx,rdi
   140006ddf:	48 89 e9             	mov    rcx,rbp
   140006de2:	e8 49 fe ff ff       	call   140006c30 <__mult_D2A>
   140006de7:	48 89 c6             	mov    rsi,rax
   140006dea:	48 85 c0             	test   rax,rax
   140006ded:	0f 84 90 00 00 00    	je     140006e83 <__pow5mult_D2A+0xf3>
   140006df3:	48 89 e9             	mov    rcx,rbp
   140006df6:	48 89 f5             	mov    rbp,rsi
   140006df9:	e8 42 fc ff ff       	call   140006a40 <__Bfree_D2A>
   140006dfe:	d1 fb                	sar    ebx,1
   140006e00:	75 ca                	jne    140006dcc <__pow5mult_D2A+0x3c>
   140006e02:	48 89 e8             	mov    rax,rbp
   140006e05:	48 83 c4 28          	add    rsp,0x28
   140006e09:	5b                   	pop    rbx
   140006e0a:	5e                   	pop    rsi
   140006e0b:	5f                   	pop    rdi
   140006e0c:	5d                   	pop    rbp
   140006e0d:	c3                   	ret
   140006e0e:	66 90                	xchg   ax,ax
   140006e10:	b9 01 00 00 00       	mov    ecx,0x1
   140006e15:	e8 06 fa ff ff       	call   140006820 <dtoa_lock>
   140006e1a:	48 8b 37             	mov    rsi,QWORD PTR [rdi]
   140006e1d:	48 85 f6             	test   rsi,rsi
   140006e20:	74 1e                	je     140006e40 <__pow5mult_D2A+0xb0>
   140006e22:	83 3d c7 6c 00 00 02 	cmp    DWORD PTR [rip+0x6cc7],0x2        # 14000daf0 <dtoa_CS_init>
   140006e29:	75 a9                	jne    140006dd4 <__pow5mult_D2A+0x44>
   140006e2b:	48 8d 0d f6 6c 00 00 	lea    rcx,[rip+0x6cf6]        # 14000db28 <dtoa_CritSec+0x28>
   140006e32:	ff 15 cc 73 00 00    	call   QWORD PTR [rip+0x73cc]        # 14000e204 <__imp_LeaveCriticalSection>
   140006e38:	eb 9a                	jmp    140006dd4 <__pow5mult_D2A+0x44>
   140006e3a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140006e40:	48 89 fa             	mov    rdx,rdi
   140006e43:	48 89 f9             	mov    rcx,rdi
   140006e46:	e8 e5 fd ff ff       	call   140006c30 <__mult_D2A>
   140006e4b:	48 89 07             	mov    QWORD PTR [rdi],rax
   140006e4e:	48 89 c6             	mov    rsi,rax
   140006e51:	48 85 c0             	test   rax,rax
   140006e54:	74 2d                	je     140006e83 <__pow5mult_D2A+0xf3>
   140006e56:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
   140006e5d:	eb c3                	jmp    140006e22 <__pow5mult_D2A+0x92>
   140006e5f:	90                   	nop
   140006e60:	83 e8 01             	sub    eax,0x1
   140006e63:	48 8d 15 16 27 00 00 	lea    rdx,[rip+0x2716]        # 140009580 <p05.0>
   140006e6a:	45 31 c0             	xor    r8d,r8d
   140006e6d:	48 98                	cdqe
   140006e6f:	8b 14 82             	mov    edx,DWORD PTR [rdx+rax*4]
   140006e72:	e8 39 fc ff ff       	call   140006ab0 <__multadd_D2A>
   140006e77:	48 89 c6             	mov    rsi,rax
   140006e7a:	48 85 c0             	test   rax,rax
   140006e7d:	0f 85 25 ff ff ff    	jne    140006da8 <__pow5mult_D2A+0x18>
   140006e83:	31 ed                	xor    ebp,ebp
   140006e85:	e9 78 ff ff ff       	jmp    140006e02 <__pow5mult_D2A+0x72>
   140006e8a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   140006e90:	b9 01 00 00 00       	mov    ecx,0x1
   140006e95:	e8 86 f9 ff ff       	call   140006820 <dtoa_lock>
   140006e9a:	48 8b 3d df 62 00 00 	mov    rdi,QWORD PTR [rip+0x62df]        # 14000d180 <p5s>
   140006ea1:	48 85 ff             	test   rdi,rdi
   140006ea4:	74 1f                	je     140006ec5 <__pow5mult_D2A+0x135>
   140006ea6:	83 3d 43 6c 00 00 02 	cmp    DWORD PTR [rip+0x6c43],0x2        # 14000daf0 <dtoa_CS_init>
   140006ead:	0f 85 0d ff ff ff    	jne    140006dc0 <__pow5mult_D2A+0x30>
   140006eb3:	48 8d 0d 6e 6c 00 00 	lea    rcx,[rip+0x6c6e]        # 14000db28 <dtoa_CritSec+0x28>
   140006eba:	ff 15 44 73 00 00    	call   QWORD PTR [rip+0x7344]        # 14000e204 <__imp_LeaveCriticalSection>
   140006ec0:	e9 fb fe ff ff       	jmp    140006dc0 <__pow5mult_D2A+0x30>
   140006ec5:	b9 01 00 00 00       	mov    ecx,0x1
   140006eca:	e8 81 fa ff ff       	call   140006950 <__Balloc_D2A>
   140006ecf:	48 89 c7             	mov    rdi,rax
   140006ed2:	48 85 c0             	test   rax,rax
   140006ed5:	74 1e                	je     140006ef5 <__pow5mult_D2A+0x165>
   140006ed7:	48 b8 01 00 00 00 71 	movabs rax,0x27100000001
   140006ede:	02 00 00 
   140006ee1:	48 89 3d 98 62 00 00 	mov    QWORD PTR [rip+0x6298],rdi        # 14000d180 <p5s>
   140006ee8:	48 89 47 14          	mov    QWORD PTR [rdi+0x14],rax
   140006eec:	48 c7 07 00 00 00 00 	mov    QWORD PTR [rdi],0x0
   140006ef3:	eb b1                	jmp    140006ea6 <__pow5mult_D2A+0x116>
   140006ef5:	48 c7 05 80 62 00 00 	mov    QWORD PTR [rip+0x6280],0x0        # 14000d180 <p5s>
   140006efc:	00 00 00 00 
   140006f00:	31 ed                	xor    ebp,ebp
   140006f02:	e9 fb fe ff ff       	jmp    140006e02 <__pow5mult_D2A+0x72>
   140006f07:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140006f0e:	00 00 

0000000140006f10 <__lshift_D2A>:
   140006f10:	41 56                	push   r14
   140006f12:	41 55                	push   r13
   140006f14:	41 54                	push   r12
   140006f16:	55                   	push   rbp
   140006f17:	57                   	push   rdi
   140006f18:	56                   	push   rsi
   140006f19:	53                   	push   rbx
   140006f1a:	48 83 ec 20          	sub    rsp,0x20
   140006f1e:	49 89 cc             	mov    r12,rcx
   140006f21:	89 d6                	mov    esi,edx
   140006f23:	8b 49 08             	mov    ecx,DWORD PTR [rcx+0x8]
   140006f26:	89 d5                	mov    ebp,edx
   140006f28:	41 8b 5c 24 14       	mov    ebx,DWORD PTR [r12+0x14]
   140006f2d:	c1 fe 05             	sar    esi,0x5
   140006f30:	41 8b 44 24 0c       	mov    eax,DWORD PTR [r12+0xc]
   140006f35:	01 f3                	add    ebx,esi
   140006f37:	44 8d 6b 01          	lea    r13d,[rbx+0x1]
   140006f3b:	41 39 c5             	cmp    r13d,eax
   140006f3e:	7e 0a                	jle    140006f4a <__lshift_D2A+0x3a>
   140006f40:	01 c0                	add    eax,eax
   140006f42:	83 c1 01             	add    ecx,0x1
   140006f45:	41 39 c5             	cmp    r13d,eax
   140006f48:	7f f6                	jg     140006f40 <__lshift_D2A+0x30>
   140006f4a:	e8 01 fa ff ff       	call   140006950 <__Balloc_D2A>
   140006f4f:	49 89 c6             	mov    r14,rax
   140006f52:	48 85 c0             	test   rax,rax
   140006f55:	0f 84 a3 00 00 00    	je     140006ffe <__lshift_D2A+0xee>
   140006f5b:	48 8d 78 18          	lea    rdi,[rax+0x18]
   140006f5f:	85 f6                	test   esi,esi
   140006f61:	7e 14                	jle    140006f77 <__lshift_D2A+0x67>
   140006f63:	48 c1 e6 02          	shl    rsi,0x2
   140006f67:	48 89 f9             	mov    rcx,rdi
   140006f6a:	31 d2                	xor    edx,edx
   140006f6c:	49 89 f0             	mov    r8,rsi
   140006f6f:	48 01 f7             	add    rdi,rsi
   140006f72:	e8 89 0c 00 00       	call   140007c00 <memset>
   140006f77:	49 63 44 24 14       	movsxd rax,DWORD PTR [r12+0x14]
   140006f7c:	49 8d 74 24 18       	lea    rsi,[r12+0x18]
   140006f81:	4c 8d 0c 86          	lea    r9,[rsi+rax*4]
   140006f85:	83 e5 1f             	and    ebp,0x1f
   140006f88:	0f 84 82 00 00 00    	je     140007010 <__lshift_D2A+0x100>
   140006f8e:	41 ba 20 00 00 00    	mov    r10d,0x20
   140006f94:	49 89 f8             	mov    r8,rdi
   140006f97:	31 d2                	xor    edx,edx
   140006f99:	41 29 ea             	sub    r10d,ebp
   140006f9c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140006fa0:	8b 06                	mov    eax,DWORD PTR [rsi]
   140006fa2:	89 e9                	mov    ecx,ebp
   140006fa4:	49 83 c0 04          	add    r8,0x4
   140006fa8:	48 83 c6 04          	add    rsi,0x4
   140006fac:	d3 e0                	shl    eax,cl
   140006fae:	44 89 d1             	mov    ecx,r10d
   140006fb1:	09 d0                	or     eax,edx
   140006fb3:	41 89 40 fc          	mov    DWORD PTR [r8-0x4],eax
   140006fb7:	8b 56 fc             	mov    edx,DWORD PTR [rsi-0x4]
   140006fba:	d3 ea                	shr    edx,cl
   140006fbc:	4c 39 ce             	cmp    rsi,r9
   140006fbf:	72 df                	jb     140006fa0 <__lshift_D2A+0x90>
   140006fc1:	4c 89 c8             	mov    rax,r9
   140006fc4:	49 8d 4c 24 19       	lea    rcx,[r12+0x19]
   140006fc9:	4c 29 e0             	sub    rax,r12
   140006fcc:	48 83 e8 19          	sub    rax,0x19
   140006fd0:	48 c1 e8 02          	shr    rax,0x2
   140006fd4:	49 39 c9             	cmp    r9,rcx
   140006fd7:	b9 04 00 00 00       	mov    ecx,0x4
   140006fdc:	48 8d 04 85 04 00 00 	lea    rax,[rax*4+0x4]
   140006fe3:	00 
   140006fe4:	48 0f 42 c1          	cmovb  rax,rcx
   140006fe8:	89 14 07             	mov    DWORD PTR [rdi+rax*1],edx
   140006feb:	85 d2                	test   edx,edx
   140006fed:	75 03                	jne    140006ff2 <__lshift_D2A+0xe2>
   140006fef:	41 89 dd             	mov    r13d,ebx
   140006ff2:	45 89 6e 14          	mov    DWORD PTR [r14+0x14],r13d
   140006ff6:	4c 89 e1             	mov    rcx,r12
   140006ff9:	e8 42 fa ff ff       	call   140006a40 <__Bfree_D2A>
   140006ffe:	4c 89 f0             	mov    rax,r14
   140007001:	48 83 c4 20          	add    rsp,0x20
   140007005:	5b                   	pop    rbx
   140007006:	5e                   	pop    rsi
   140007007:	5f                   	pop    rdi
   140007008:	5d                   	pop    rbp
   140007009:	41 5c                	pop    r12
   14000700b:	41 5d                	pop    r13
   14000700d:	41 5e                	pop    r14
   14000700f:	c3                   	ret
   140007010:	a5                   	movs   DWORD PTR es:[rdi],DWORD PTR ds:[rsi]
   140007011:	4c 39 ce             	cmp    rsi,r9
   140007014:	73 d9                	jae    140006fef <__lshift_D2A+0xdf>
   140007016:	a5                   	movs   DWORD PTR es:[rdi],DWORD PTR ds:[rsi]
   140007017:	4c 39 ce             	cmp    rsi,r9
   14000701a:	72 f4                	jb     140007010 <__lshift_D2A+0x100>
   14000701c:	eb d1                	jmp    140006fef <__lshift_D2A+0xdf>
   14000701e:	66 90                	xchg   ax,ax

0000000140007020 <__cmp_D2A>:
   140007020:	48 63 42 14          	movsxd rax,DWORD PTR [rdx+0x14]
   140007024:	44 8b 49 14          	mov    r9d,DWORD PTR [rcx+0x14]
   140007028:	41 29 c1             	sub    r9d,eax
   14000702b:	75 37                	jne    140007064 <__cmp_D2A+0x44>
   14000702d:	4c 8d 04 85 00 00 00 	lea    r8,[rax*4+0x0]
   140007034:	00 
   140007035:	48 83 c1 18          	add    rcx,0x18
   140007039:	4a 8d 04 01          	lea    rax,[rcx+r8*1]
   14000703d:	4a 8d 54 02 18       	lea    rdx,[rdx+r8*1+0x18]
   140007042:	eb 09                	jmp    14000704d <__cmp_D2A+0x2d>
   140007044:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140007048:	48 39 c1             	cmp    rcx,rax
   14000704b:	73 17                	jae    140007064 <__cmp_D2A+0x44>
   14000704d:	48 83 e8 04          	sub    rax,0x4
   140007051:	48 83 ea 04          	sub    rdx,0x4
   140007055:	44 8b 12             	mov    r10d,DWORD PTR [rdx]
   140007058:	44 39 10             	cmp    DWORD PTR [rax],r10d
   14000705b:	74 eb                	je     140007048 <__cmp_D2A+0x28>
   14000705d:	45 19 c9             	sbb    r9d,r9d
   140007060:	41 83 c9 01          	or     r9d,0x1
   140007064:	44 89 c8             	mov    eax,r9d
   140007067:	c3                   	ret
   140007068:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   14000706f:	00 

0000000140007070 <__diff_D2A>:
   140007070:	41 56                	push   r14
   140007072:	41 55                	push   r13
   140007074:	41 54                	push   r12
   140007076:	55                   	push   rbp
   140007077:	57                   	push   rdi
   140007078:	56                   	push   rsi
   140007079:	53                   	push   rbx
   14000707a:	48 83 ec 20          	sub    rsp,0x20
   14000707e:	48 63 42 14          	movsxd rax,DWORD PTR [rdx+0x14]
   140007082:	8b 79 14             	mov    edi,DWORD PTR [rcx+0x14]
   140007085:	48 89 ce             	mov    rsi,rcx
   140007088:	48 89 d3             	mov    rbx,rdx
   14000708b:	29 c7                	sub    edi,eax
   14000708d:	0f 85 55 01 00 00    	jne    1400071e8 <__diff_D2A+0x178>
   140007093:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
   14000709a:	00 
   14000709b:	48 8d 49 18          	lea    rcx,[rcx+0x18]
   14000709f:	48 8d 04 11          	lea    rax,[rcx+rdx*1]
   1400070a3:	48 8d 54 13 18       	lea    rdx,[rbx+rdx*1+0x18]
   1400070a8:	eb 0f                	jmp    1400070b9 <__diff_D2A+0x49>
   1400070aa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   1400070b0:	48 39 c1             	cmp    rcx,rax
   1400070b3:	0f 83 57 01 00 00    	jae    140007210 <__diff_D2A+0x1a0>
   1400070b9:	48 83 e8 04          	sub    rax,0x4
   1400070bd:	48 83 ea 04          	sub    rdx,0x4
   1400070c1:	44 8b 32             	mov    r14d,DWORD PTR [rdx]
   1400070c4:	44 39 30             	cmp    DWORD PTR [rax],r14d
   1400070c7:	74 e7                	je     1400070b0 <__diff_D2A+0x40>
   1400070c9:	0f 82 24 01 00 00    	jb     1400071f3 <__diff_D2A+0x183>
   1400070cf:	90                   	nop
   1400070d0:	8b 4e 08             	mov    ecx,DWORD PTR [rsi+0x8]
   1400070d3:	e8 78 f8 ff ff       	call   140006950 <__Balloc_D2A>
   1400070d8:	49 89 c1             	mov    r9,rax
   1400070db:	48 85 c0             	test   rax,rax
   1400070de:	0f 84 ef 00 00 00    	je     1400071d3 <__diff_D2A+0x163>
   1400070e4:	89 78 10             	mov    DWORD PTR [rax+0x10],edi
   1400070e7:	48 63 46 14          	movsxd rax,DWORD PTR [rsi+0x14]
   1400070eb:	4c 8d 6e 18          	lea    r13,[rsi+0x18]
   1400070ef:	4d 8d 61 18          	lea    r12,[r9+0x18]
   1400070f3:	b9 18 00 00 00       	mov    ecx,0x18
   1400070f8:	31 d2                	xor    edx,edx
   1400070fa:	49 89 c2             	mov    r10,rax
   1400070fd:	49 8d 7c 85 00       	lea    rdi,[r13+rax*4+0x0]
   140007102:	48 63 43 14          	movsxd rax,DWORD PTR [rbx+0x14]
   140007106:	48 8d 6c 83 18       	lea    rbp,[rbx+rax*4+0x18]
   14000710b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140007110:	8b 04 0e             	mov    eax,DWORD PTR [rsi+rcx*1]
   140007113:	44 8b 04 0b          	mov    r8d,DWORD PTR [rbx+rcx*1]
   140007117:	4c 29 c0             	sub    rax,r8
   14000711a:	48 29 d0             	sub    rax,rdx
   14000711d:	41 89 04 09          	mov    DWORD PTR [r9+rcx*1],eax
   140007121:	48 89 c2             	mov    rdx,rax
   140007124:	48 83 c1 04          	add    rcx,0x4
   140007128:	41 89 c3             	mov    r11d,eax
   14000712b:	48 c1 ea 20          	shr    rdx,0x20
   14000712f:	48 8d 04 19          	lea    rax,[rcx+rbx*1]
   140007133:	83 e2 01             	and    edx,0x1
   140007136:	48 39 e8             	cmp    rax,rbp
   140007139:	72 d5                	jb     140007110 <__diff_D2A+0xa0>
   14000713b:	48 89 e8             	mov    rax,rbp
   14000713e:	48 8d 73 19          	lea    rsi,[rbx+0x19]
   140007142:	b9 04 00 00 00       	mov    ecx,0x4
   140007147:	48 29 d8             	sub    rax,rbx
   14000714a:	4c 8d 70 e7          	lea    r14,[rax-0x19]
   14000714e:	49 c1 ee 02          	shr    r14,0x2
   140007152:	48 39 f5             	cmp    rbp,rsi
   140007155:	4a 8d 04 b5 04 00 00 	lea    rax,[r14*4+0x4]
   14000715c:	00 
   14000715d:	48 0f 42 c1          	cmovb  rax,rcx
   140007161:	49 01 c5             	add    r13,rax
   140007164:	4d 8d 04 04          	lea    r8,[r12+rax*1]
   140007168:	4c 89 c3             	mov    rbx,r8
   14000716b:	4c 89 e9             	mov    rcx,r13
   14000716e:	49 39 fd             	cmp    r13,rdi
   140007171:	0f 83 b9 00 00 00    	jae    140007230 <__diff_D2A+0x1c0>
   140007177:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000717e:	00 00 
   140007180:	8b 01                	mov    eax,DWORD PTR [rcx]
   140007182:	48 83 c1 04          	add    rcx,0x4
   140007186:	48 83 c3 04          	add    rbx,0x4
   14000718a:	48 29 d0             	sub    rax,rdx
   14000718d:	48 89 c2             	mov    rdx,rax
   140007190:	89 43 fc             	mov    DWORD PTR [rbx-0x4],eax
   140007193:	41 89 c3             	mov    r11d,eax
   140007196:	48 c1 ea 20          	shr    rdx,0x20
   14000719a:	83 e2 01             	and    edx,0x1
   14000719d:	48 39 f9             	cmp    rcx,rdi
   1400071a0:	72 de                	jb     140007180 <__diff_D2A+0x110>
   1400071a2:	48 83 ef 01          	sub    rdi,0x1
   1400071a6:	4c 29 ef             	sub    rdi,r13
   1400071a9:	48 83 e7 fc          	and    rdi,0xfffffffffffffffc
   1400071ad:	49 8d 04 38          	lea    rax,[r8+rdi*1]
   1400071b1:	45 85 db             	test   r11d,r11d
   1400071b4:	75 19                	jne    1400071cf <__diff_D2A+0x15f>
   1400071b6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400071bd:	00 00 00 
   1400071c0:	8b 50 fc             	mov    edx,DWORD PTR [rax-0x4]
   1400071c3:	48 83 e8 04          	sub    rax,0x4
   1400071c7:	41 83 ea 01          	sub    r10d,0x1
   1400071cb:	85 d2                	test   edx,edx
   1400071cd:	74 f1                	je     1400071c0 <__diff_D2A+0x150>
   1400071cf:	45 89 51 14          	mov    DWORD PTR [r9+0x14],r10d
   1400071d3:	4c 89 c8             	mov    rax,r9
   1400071d6:	48 83 c4 20          	add    rsp,0x20
   1400071da:	5b                   	pop    rbx
   1400071db:	5e                   	pop    rsi
   1400071dc:	5f                   	pop    rdi
   1400071dd:	5d                   	pop    rbp
   1400071de:	41 5c                	pop    r12
   1400071e0:	41 5d                	pop    r13
   1400071e2:	41 5e                	pop    r14
   1400071e4:	c3                   	ret
   1400071e5:	0f 1f 00             	nop    DWORD PTR [rax]
   1400071e8:	bf 00 00 00 00       	mov    edi,0x0
   1400071ed:	0f 89 dd fe ff ff    	jns    1400070d0 <__diff_D2A+0x60>
   1400071f3:	48 89 f0             	mov    rax,rsi
   1400071f6:	bf 01 00 00 00       	mov    edi,0x1
   1400071fb:	48 89 de             	mov    rsi,rbx
   1400071fe:	48 89 c3             	mov    rbx,rax
   140007201:	e9 ca fe ff ff       	jmp    1400070d0 <__diff_D2A+0x60>
   140007206:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000720d:	00 00 00 
   140007210:	31 c9                	xor    ecx,ecx
   140007212:	e8 39 f7 ff ff       	call   140006950 <__Balloc_D2A>
   140007217:	49 89 c1             	mov    r9,rax
   14000721a:	48 85 c0             	test   rax,rax
   14000721d:	74 b4                	je     1400071d3 <__diff_D2A+0x163>
   14000721f:	48 c7 40 14 01 00 00 	mov    QWORD PTR [rax+0x14],0x1
   140007226:	00 
   140007227:	eb aa                	jmp    1400071d3 <__diff_D2A+0x163>
   140007229:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   140007230:	31 c0                	xor    eax,eax
   140007232:	49 c1 e6 02          	shl    r14,0x2
   140007236:	48 39 f5             	cmp    rbp,rsi
   140007239:	4c 0f 42 f0          	cmovb  r14,rax
   14000723d:	4b 8d 04 34          	lea    rax,[r12+r14*1]
   140007241:	e9 6b ff ff ff       	jmp    1400071b1 <__diff_D2A+0x141>
   140007246:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   14000724d:	00 00 00 

0000000140007250 <__b2d_D2A>:
   140007250:	57                   	push   rdi
   140007251:	56                   	push   rsi
   140007252:	53                   	push   rbx
   140007253:	48 63 41 14          	movsxd rax,DWORD PTR [rcx+0x14]
   140007257:	4c 8d 51 18          	lea    r10,[rcx+0x18]
   14000725b:	49 8d 1c 82          	lea    rbx,[r10+rax*4]
   14000725f:	44 8b 5b fc          	mov    r11d,DWORD PTR [rbx-0x4]
   140007263:	48 8d 73 fc          	lea    rsi,[rbx-0x4]
   140007267:	41 0f bd cb          	bsr    ecx,r11d
   14000726b:	89 cf                	mov    edi,ecx
   14000726d:	b9 20 00 00 00       	mov    ecx,0x20
   140007272:	83 f7 1f             	xor    edi,0x1f
   140007275:	41 89 c8             	mov    r8d,ecx
   140007278:	41 29 f8             	sub    r8d,edi
   14000727b:	44 89 02             	mov    DWORD PTR [rdx],r8d
   14000727e:	83 ff 0a             	cmp    edi,0xa
   140007281:	7e 7d                	jle    140007300 <__b2d_D2A+0xb0>
   140007283:	44 8d 4f f5          	lea    r9d,[rdi-0xb]
   140007287:	49 39 f2             	cmp    r10,rsi
   14000728a:	73 54                	jae    1400072e0 <__b2d_D2A+0x90>
   14000728c:	8b 53 f8             	mov    edx,DWORD PTR [rbx-0x8]
   14000728f:	45 85 c9             	test   r9d,r9d
   140007292:	74 53                	je     1400072e7 <__b2d_D2A+0x97>
   140007294:	44 29 c9             	sub    ecx,r9d
   140007297:	44 89 d8             	mov    eax,r11d
   14000729a:	89 d6                	mov    esi,edx
   14000729c:	41 89 c8             	mov    r8d,ecx
   14000729f:	44 89 c9             	mov    ecx,r9d
   1400072a2:	d3 e0                	shl    eax,cl
   1400072a4:	44 89 c1             	mov    ecx,r8d
   1400072a7:	d3 ee                	shr    esi,cl
   1400072a9:	44 89 c9             	mov    ecx,r9d
   1400072ac:	09 f0                	or     eax,esi
   1400072ae:	d3 e2                	shl    edx,cl
   1400072b0:	48 8d 4b f8          	lea    rcx,[rbx-0x8]
   1400072b4:	0d 00 00 f0 3f       	or     eax,0x3ff00000
   1400072b9:	48 c1 e0 20          	shl    rax,0x20
   1400072bd:	49 39 ca             	cmp    r10,rcx
   1400072c0:	73 31                	jae    1400072f3 <__b2d_D2A+0xa3>
   1400072c2:	44 8b 4b f4          	mov    r9d,DWORD PTR [rbx-0xc]
   1400072c6:	44 89 c1             	mov    ecx,r8d
   1400072c9:	41 d3 e9             	shr    r9d,cl
   1400072cc:	44 09 ca             	or     edx,r9d
   1400072cf:	48 09 d0             	or     rax,rdx
   1400072d2:	66 48 0f 6e c0       	movq   xmm0,rax
   1400072d7:	5b                   	pop    rbx
   1400072d8:	5e                   	pop    rsi
   1400072d9:	5f                   	pop    rdi
   1400072da:	c3                   	ret
   1400072db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400072e0:	31 d2                	xor    edx,edx
   1400072e2:	83 ff 0b             	cmp    edi,0xb
   1400072e5:	75 59                	jne    140007340 <__b2d_D2A+0xf0>
   1400072e7:	44 89 d8             	mov    eax,r11d
   1400072ea:	0d 00 00 f0 3f       	or     eax,0x3ff00000
   1400072ef:	48 c1 e0 20          	shl    rax,0x20
   1400072f3:	48 09 d0             	or     rax,rdx
   1400072f6:	66 48 0f 6e c0       	movq   xmm0,rax
   1400072fb:	5b                   	pop    rbx
   1400072fc:	5e                   	pop    rsi
   1400072fd:	5f                   	pop    rdi
   1400072fe:	c3                   	ret
   1400072ff:	90                   	nop
   140007300:	b9 0b 00 00 00       	mov    ecx,0xb
   140007305:	44 89 d8             	mov    eax,r11d
   140007308:	45 31 c0             	xor    r8d,r8d
   14000730b:	29 f9                	sub    ecx,edi
   14000730d:	d3 e8                	shr    eax,cl
   14000730f:	0d 00 00 f0 3f       	or     eax,0x3ff00000
   140007314:	48 c1 e0 20          	shl    rax,0x20
   140007318:	49 39 f2             	cmp    r10,rsi
   14000731b:	73 07                	jae    140007324 <__b2d_D2A+0xd4>
   14000731d:	44 8b 43 f8          	mov    r8d,DWORD PTR [rbx-0x8]
   140007321:	41 d3 e8             	shr    r8d,cl
   140007324:	8d 4f 15             	lea    ecx,[rdi+0x15]
   140007327:	44 89 da             	mov    edx,r11d
   14000732a:	d3 e2                	shl    edx,cl
   14000732c:	44 09 c2             	or     edx,r8d
   14000732f:	48 09 d0             	or     rax,rdx
   140007332:	66 48 0f 6e c0       	movq   xmm0,rax
   140007337:	5b                   	pop    rbx
   140007338:	5e                   	pop    rsi
   140007339:	5f                   	pop    rdi
   14000733a:	c3                   	ret
   14000733b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140007340:	44 89 d8             	mov    eax,r11d
   140007343:	44 89 c9             	mov    ecx,r9d
   140007346:	31 d2                	xor    edx,edx
   140007348:	d3 e0                	shl    eax,cl
   14000734a:	0d 00 00 f0 3f       	or     eax,0x3ff00000
   14000734f:	48 c1 e0 20          	shl    rax,0x20
   140007353:	48 09 d0             	or     rax,rdx
   140007356:	66 48 0f 6e c0       	movq   xmm0,rax
   14000735b:	5b                   	pop    rbx
   14000735c:	5e                   	pop    rsi
   14000735d:	5f                   	pop    rdi
   14000735e:	c3                   	ret
   14000735f:	90                   	nop

0000000140007360 <__d2b_D2A>:
   140007360:	57                   	push   rdi
   140007361:	56                   	push   rsi
   140007362:	53                   	push   rbx
   140007363:	48 83 ec 20          	sub    rsp,0x20
   140007367:	b9 01 00 00 00       	mov    ecx,0x1
   14000736c:	48 89 d6             	mov    rsi,rdx
   14000736f:	66 48 0f 7e c3       	movq   rbx,xmm0
   140007374:	4c 89 c7             	mov    rdi,r8
   140007377:	e8 d4 f5 ff ff       	call   140006950 <__Balloc_D2A>
   14000737c:	48 89 c2             	mov    rdx,rax
   14000737f:	48 85 c0             	test   rax,rax
   140007382:	0f 84 90 00 00 00    	je     140007418 <__d2b_D2A+0xb8>
   140007388:	48 89 d9             	mov    rcx,rbx
   14000738b:	48 89 d8             	mov    rax,rbx
   14000738e:	48 c1 e9 20          	shr    rcx,0x20
   140007392:	41 89 c9             	mov    r9d,ecx
   140007395:	c1 e9 14             	shr    ecx,0x14
   140007398:	41 81 e1 ff ff 0f 00 	and    r9d,0xfffff
   14000739f:	45 89 c8             	mov    r8d,r9d
   1400073a2:	41 81 c8 00 00 10 00 	or     r8d,0x100000
   1400073a9:	81 e1 ff 07 00 00    	and    ecx,0x7ff
   1400073af:	45 0f 45 c8          	cmovne r9d,r8d
   1400073b3:	41 89 ca             	mov    r10d,ecx
   1400073b6:	85 db                	test   ebx,ebx
   1400073b8:	74 6e                	je     140007428 <__d2b_D2A+0xc8>
   1400073ba:	45 31 c0             	xor    r8d,r8d
   1400073bd:	f3 44 0f bc c3       	tzcnt  r8d,ebx
   1400073c2:	44 89 c1             	mov    ecx,r8d
   1400073c5:	d3 e8                	shr    eax,cl
   1400073c7:	45 85 c0             	test   r8d,r8d
   1400073ca:	74 15                	je     1400073e1 <__d2b_D2A+0x81>
   1400073cc:	b9 20 00 00 00       	mov    ecx,0x20
   1400073d1:	44 89 cb             	mov    ebx,r9d
   1400073d4:	44 29 c1             	sub    ecx,r8d
   1400073d7:	d3 e3                	shl    ebx,cl
   1400073d9:	44 89 c1             	mov    ecx,r8d
   1400073dc:	09 d8                	or     eax,ebx
   1400073de:	41 d3 e9             	shr    r9d,cl
   1400073e1:	89 42 18             	mov    DWORD PTR [rdx+0x18],eax
   1400073e4:	41 83 f9 01          	cmp    r9d,0x1
   1400073e8:	b8 01 00 00 00       	mov    eax,0x1
   1400073ed:	83 d8 ff             	sbb    eax,0xffffffff
   1400073f0:	44 89 4a 1c          	mov    DWORD PTR [rdx+0x1c],r9d
   1400073f4:	89 42 14             	mov    DWORD PTR [rdx+0x14],eax
   1400073f7:	45 85 d2             	test   r10d,r10d
   1400073fa:	75 4b                	jne    140007447 <__d2b_D2A+0xe7>
   1400073fc:	48 63 c8             	movsxd rcx,eax
   1400073ff:	41 81 e8 32 04 00 00 	sub    r8d,0x432
   140007406:	0f bd 4c 8a 14       	bsr    ecx,DWORD PTR [rdx+rcx*4+0x14]
   14000740b:	c1 e0 05             	shl    eax,0x5
   14000740e:	44 89 06             	mov    DWORD PTR [rsi],r8d
   140007411:	83 f1 1f             	xor    ecx,0x1f
   140007414:	29 c8                	sub    eax,ecx
   140007416:	89 07                	mov    DWORD PTR [rdi],eax
   140007418:	48 89 d0             	mov    rax,rdx
   14000741b:	48 83 c4 20          	add    rsp,0x20
   14000741f:	5b                   	pop    rbx
   140007420:	5e                   	pop    rsi
   140007421:	5f                   	pop    rdi
   140007422:	c3                   	ret
   140007423:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140007428:	31 c9                	xor    ecx,ecx
   14000742a:	b8 01 00 00 00       	mov    eax,0x1
   14000742f:	f3 41 0f bc c9       	tzcnt  ecx,r9d
   140007434:	89 42 14             	mov    DWORD PTR [rdx+0x14],eax
   140007437:	41 d3 e9             	shr    r9d,cl
   14000743a:	44 8d 41 20          	lea    r8d,[rcx+0x20]
   14000743e:	44 89 4a 18          	mov    DWORD PTR [rdx+0x18],r9d
   140007442:	45 85 d2             	test   r10d,r10d
   140007445:	74 b5                	je     1400073fc <__d2b_D2A+0x9c>
   140007447:	43 8d 84 02 cd fb ff 	lea    eax,[r10+r8*1-0x433]
   14000744e:	ff 
   14000744f:	89 06                	mov    DWORD PTR [rsi],eax
   140007451:	b8 35 00 00 00       	mov    eax,0x35
   140007456:	44 29 c0             	sub    eax,r8d
   140007459:	89 07                	mov    DWORD PTR [rdi],eax
   14000745b:	eb bb                	jmp    140007418 <__d2b_D2A+0xb8>
   14000745d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000140007460 <__strcp_D2A>:
   140007460:	48 89 c8             	mov    rax,rcx
   140007463:	48 8d 4a 01          	lea    rcx,[rdx+0x1]
   140007467:	0f b6 12             	movzx  edx,BYTE PTR [rdx]
   14000746a:	88 10                	mov    BYTE PTR [rax],dl
   14000746c:	84 d2                	test   dl,dl
   14000746e:	74 11                	je     140007481 <__strcp_D2A+0x21>
   140007470:	0f b6 11             	movzx  edx,BYTE PTR [rcx]
   140007473:	48 83 c0 01          	add    rax,0x1
   140007477:	48 83 c1 01          	add    rcx,0x1
   14000747b:	88 10                	mov    BYTE PTR [rax],dl
   14000747d:	84 d2                	test   dl,dl
   14000747f:	75 ef                	jne    140007470 <__strcp_D2A+0x10>
   140007481:	c3                   	ret
   140007482:	90                   	nop
   140007483:	90                   	nop
   140007484:	90                   	nop
   140007485:	90                   	nop
   140007486:	90                   	nop
   140007487:	90                   	nop
   140007488:	90                   	nop
   140007489:	90                   	nop
   14000748a:	90                   	nop
   14000748b:	90                   	nop
   14000748c:	90                   	nop
   14000748d:	90                   	nop
   14000748e:	90                   	nop
   14000748f:	90                   	nop

0000000140007490 <strnlen>:
   140007490:	45 31 c0             	xor    r8d,r8d
   140007493:	48 89 c8             	mov    rax,rcx
   140007496:	48 85 d2             	test   rdx,rdx
   140007499:	75 14                	jne    1400074af <strnlen+0x1f>
   14000749b:	eb 17                	jmp    1400074b4 <strnlen+0x24>
   14000749d:	0f 1f 00             	nop    DWORD PTR [rax]
   1400074a0:	48 83 c0 01          	add    rax,0x1
   1400074a4:	49 89 c0             	mov    r8,rax
   1400074a7:	49 29 c8             	sub    r8,rcx
   1400074aa:	49 39 d0             	cmp    r8,rdx
   1400074ad:	73 05                	jae    1400074b4 <strnlen+0x24>
   1400074af:	80 38 00             	cmp    BYTE PTR [rax],0x0
   1400074b2:	75 ec                	jne    1400074a0 <strnlen+0x10>
   1400074b4:	4c 89 c0             	mov    rax,r8
   1400074b7:	c3                   	ret
   1400074b8:	90                   	nop
   1400074b9:	90                   	nop
   1400074ba:	90                   	nop
   1400074bb:	90                   	nop
   1400074bc:	90                   	nop
   1400074bd:	90                   	nop
   1400074be:	90                   	nop
   1400074bf:	90                   	nop

00000001400074c0 <wcsnlen>:
   1400074c0:	45 31 c0             	xor    r8d,r8d
   1400074c3:	48 89 d0             	mov    rax,rdx
   1400074c6:	48 85 d2             	test   rdx,rdx
   1400074c9:	75 0e                	jne    1400074d9 <wcsnlen+0x19>
   1400074cb:	eb 17                	jmp    1400074e4 <wcsnlen+0x24>
   1400074cd:	0f 1f 00             	nop    DWORD PTR [rax]
   1400074d0:	49 83 c0 01          	add    r8,0x1
   1400074d4:	4c 39 c0             	cmp    rax,r8
   1400074d7:	74 0b                	je     1400074e4 <wcsnlen+0x24>
   1400074d9:	66 42 83 3c 41 00    	cmp    WORD PTR [rcx+r8*2],0x0
   1400074df:	75 ef                	jne    1400074d0 <wcsnlen+0x10>
   1400074e1:	4c 89 c0             	mov    rax,r8
   1400074e4:	c3                   	ret
   1400074e5:	90                   	nop
   1400074e6:	90                   	nop
   1400074e7:	90                   	nop
   1400074e8:	90                   	nop
   1400074e9:	90                   	nop
   1400074ea:	90                   	nop
   1400074eb:	90                   	nop
   1400074ec:	90                   	nop
   1400074ed:	90                   	nop
   1400074ee:	90                   	nop
   1400074ef:	90                   	nop

00000001400074f0 <__p__fmode>:
   1400074f0:	48 8b 05 89 22 00 00 	mov    rax,QWORD PTR [rip+0x2289]        # 140009780 <.refptr.__imp__fmode>
   1400074f7:	48 8b 00             	mov    rax,QWORD PTR [rax]
   1400074fa:	c3                   	ret
   1400074fb:	90                   	nop
   1400074fc:	90                   	nop
   1400074fd:	90                   	nop
   1400074fe:	90                   	nop
   1400074ff:	90                   	nop

0000000140007500 <__p__commode>:
   140007500:	48 8b 05 69 22 00 00 	mov    rax,QWORD PTR [rip+0x2269]        # 140009770 <.refptr.__imp__commode>
   140007507:	48 8b 00             	mov    rax,QWORD PTR [rax]
   14000750a:	c3                   	ret
   14000750b:	90                   	nop
   14000750c:	90                   	nop
   14000750d:	90                   	nop
   14000750e:	90                   	nop
   14000750f:	90                   	nop

0000000140007510 <__p__acmdln>:
   140007510:	48 8b 05 49 22 00 00 	mov    rax,QWORD PTR [rip+0x2249]        # 140009760 <.refptr.__imp__acmdln>
   140007517:	48 8b 00             	mov    rax,QWORD PTR [rax]
   14000751a:	c3                   	ret
   14000751b:	90                   	nop
   14000751c:	90                   	nop
   14000751d:	90                   	nop
   14000751e:	90                   	nop
   14000751f:	90                   	nop

0000000140007520 <_lock_file>:
   140007520:	53                   	push   rbx
   140007521:	48 83 ec 20          	sub    rsp,0x20
   140007525:	48 89 cb             	mov    rbx,rcx
   140007528:	31 c9                	xor    ecx,ecx
   14000752a:	e8 e1 00 00 00       	call   140007610 <__acrt_iob_func>
   14000752f:	48 39 c3             	cmp    rbx,rax
   140007532:	72 0f                	jb     140007543 <_lock_file+0x23>
   140007534:	b9 13 00 00 00       	mov    ecx,0x13
   140007539:	e8 d2 00 00 00       	call   140007610 <__acrt_iob_func>
   14000753e:	48 39 c3             	cmp    rbx,rax
   140007541:	76 15                	jbe    140007558 <_lock_file+0x38>
   140007543:	48 8d 4b 30          	lea    rcx,[rbx+0x30]
   140007547:	48 83 c4 20          	add    rsp,0x20
   14000754b:	5b                   	pop    rbx
   14000754c:	48 ff 25 89 6c 00 00 	rex.W jmp QWORD PTR [rip+0x6c89]        # 14000e1dc <__imp_EnterCriticalSection>
   140007553:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140007558:	31 c9                	xor    ecx,ecx
   14000755a:	e8 b1 00 00 00       	call   140007610 <__acrt_iob_func>
   14000755f:	48 89 c2             	mov    rdx,rax
   140007562:	48 89 d8             	mov    rax,rbx
   140007565:	48 29 d0             	sub    rax,rdx
   140007568:	48 c1 f8 04          	sar    rax,0x4
   14000756c:	69 c0 ab aa aa aa    	imul   eax,eax,0xaaaaaaab
   140007572:	8d 48 10             	lea    ecx,[rax+0x10]
   140007575:	e8 1e 06 00 00       	call   140007b98 <_lock>
   14000757a:	81 4b 18 00 80 00 00 	or     DWORD PTR [rbx+0x18],0x8000
   140007581:	48 83 c4 20          	add    rsp,0x20
   140007585:	5b                   	pop    rbx
   140007586:	c3                   	ret
   140007587:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000758e:	00 00 

0000000140007590 <_unlock_file>:
   140007590:	53                   	push   rbx
   140007591:	48 83 ec 20          	sub    rsp,0x20
   140007595:	48 89 cb             	mov    rbx,rcx
   140007598:	31 c9                	xor    ecx,ecx
   14000759a:	e8 71 00 00 00       	call   140007610 <__acrt_iob_func>
   14000759f:	48 39 c3             	cmp    rbx,rax
   1400075a2:	72 0f                	jb     1400075b3 <_unlock_file+0x23>
   1400075a4:	b9 13 00 00 00       	mov    ecx,0x13
   1400075a9:	e8 62 00 00 00       	call   140007610 <__acrt_iob_func>
   1400075ae:	48 39 c3             	cmp    rbx,rax
   1400075b1:	76 15                	jbe    1400075c8 <_unlock_file+0x38>
   1400075b3:	48 8d 4b 30          	lea    rcx,[rbx+0x30]
   1400075b7:	48 83 c4 20          	add    rsp,0x20
   1400075bb:	5b                   	pop    rbx
   1400075bc:	48 ff 25 41 6c 00 00 	rex.W jmp QWORD PTR [rip+0x6c41]        # 14000e204 <__imp_LeaveCriticalSection>
   1400075c3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   1400075c8:	81 63 18 ff 7f ff ff 	and    DWORD PTR [rbx+0x18],0xffff7fff
   1400075cf:	31 c9                	xor    ecx,ecx
   1400075d1:	e8 3a 00 00 00       	call   140007610 <__acrt_iob_func>
   1400075d6:	48 29 c3             	sub    rbx,rax
   1400075d9:	48 c1 fb 04          	sar    rbx,0x4
   1400075dd:	69 db ab aa aa aa    	imul   ebx,ebx,0xaaaaaaab
   1400075e3:	8d 4b 10             	lea    ecx,[rbx+0x10]
   1400075e6:	48 83 c4 20          	add    rsp,0x20
   1400075ea:	5b                   	pop    rbx
   1400075eb:	e9 b8 05 00 00       	jmp    140007ba8 <_unlock>

00000001400075f0 <_get_invalid_parameter_handler>:
   1400075f0:	48 8b 05 69 65 00 00 	mov    rax,QWORD PTR [rip+0x6569]        # 14000db60 <handler>
   1400075f7:	c3                   	ret
   1400075f8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400075ff:	00 

0000000140007600 <_set_invalid_parameter_handler>:
   140007600:	48 89 c8             	mov    rax,rcx
   140007603:	48 87 05 56 65 00 00 	xchg   QWORD PTR [rip+0x6556],rax        # 14000db60 <handler>
   14000760a:	c3                   	ret
   14000760b:	90                   	nop
   14000760c:	90                   	nop
   14000760d:	90                   	nop
   14000760e:	90                   	nop
   14000760f:	90                   	nop

0000000140007610 <__acrt_iob_func>:
   140007610:	53                   	push   rbx
   140007611:	48 83 ec 20          	sub    rsp,0x20
   140007615:	89 cb                	mov    ebx,ecx
   140007617:	e8 44 05 00 00       	call   140007b60 <__iob_func>
   14000761c:	89 d9                	mov    ecx,ebx
   14000761e:	48 8d 14 49          	lea    rdx,[rcx+rcx*2]
   140007622:	48 c1 e2 04          	shl    rdx,0x4
   140007626:	48 01 d0             	add    rax,rdx
   140007629:	48 83 c4 20          	add    rsp,0x20
   14000762d:	5b                   	pop    rbx
   14000762e:	c3                   	ret
   14000762f:	90                   	nop

0000000140007630 <__wcrtomb_cp>:
   140007630:	48 83 ec 58          	sub    rsp,0x58
   140007634:	48 89 c8             	mov    rax,rcx
   140007637:	66 89 54 24 68       	mov    WORD PTR [rsp+0x68],dx
   14000763c:	44 89 c1             	mov    ecx,r8d
   14000763f:	45 85 c0             	test   r8d,r8d
   140007642:	75 1c                	jne    140007660 <__wcrtomb_cp+0x30>
   140007644:	66 81 fa ff 00       	cmp    dx,0xff
   140007649:	77 59                	ja     1400076a4 <__wcrtomb_cp+0x74>
   14000764b:	88 10                	mov    BYTE PTR [rax],dl
   14000764d:	b8 01 00 00 00       	mov    eax,0x1
   140007652:	48 83 c4 58          	add    rsp,0x58
   140007656:	c3                   	ret
   140007657:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000765e:	00 00 
   140007660:	48 8d 54 24 4c       	lea    rdx,[rsp+0x4c]
   140007665:	44 89 4c 24 28       	mov    DWORD PTR [rsp+0x28],r9d
   14000766a:	4c 8d 44 24 68       	lea    r8,[rsp+0x68]
   14000766f:	41 b9 01 00 00 00    	mov    r9d,0x1
   140007675:	48 89 54 24 38       	mov    QWORD PTR [rsp+0x38],rdx
   14000767a:	31 d2                	xor    edx,edx
   14000767c:	c7 44 24 4c 00 00 00 	mov    DWORD PTR [rsp+0x4c],0x0
   140007683:	00 
   140007684:	48 c7 44 24 30 00 00 	mov    QWORD PTR [rsp+0x30],0x0
   14000768b:	00 00 
   14000768d:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
   140007692:	ff 15 a4 6b 00 00    	call   QWORD PTR [rip+0x6ba4]        # 14000e23c <__imp_WideCharToMultiByte>
   140007698:	85 c0                	test   eax,eax
   14000769a:	74 08                	je     1400076a4 <__wcrtomb_cp+0x74>
   14000769c:	8b 54 24 4c          	mov    edx,DWORD PTR [rsp+0x4c]
   1400076a0:	85 d2                	test   edx,edx
   1400076a2:	74 ae                	je     140007652 <__wcrtomb_cp+0x22>
   1400076a4:	e8 df 04 00 00       	call   140007b88 <_errno>
   1400076a9:	c7 00 2a 00 00 00    	mov    DWORD PTR [rax],0x2a
   1400076af:	b8 ff ff ff ff       	mov    eax,0xffffffff
   1400076b4:	48 83 c4 58          	add    rsp,0x58
   1400076b8:	c3                   	ret
   1400076b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000001400076c0 <wcrtomb>:
   1400076c0:	57                   	push   rdi
   1400076c1:	56                   	push   rsi
   1400076c2:	53                   	push   rbx
   1400076c3:	48 83 ec 30          	sub    rsp,0x30
   1400076c7:	48 85 c9             	test   rcx,rcx
   1400076ca:	48 89 cb             	mov    rbx,rcx
   1400076cd:	48 8d 44 24 2b       	lea    rax,[rsp+0x2b]
   1400076d2:	89 d6                	mov    esi,edx
   1400076d4:	48 0f 44 d8          	cmove  rbx,rax
   1400076d8:	e8 73 04 00 00       	call   140007b50 <___mb_cur_max_func>
   1400076dd:	89 c7                	mov    edi,eax
   1400076df:	e8 64 04 00 00       	call   140007b48 <___lc_codepage_func>
   1400076e4:	0f b7 d6             	movzx  edx,si
   1400076e7:	41 89 f9             	mov    r9d,edi
   1400076ea:	48 89 d9             	mov    rcx,rbx
   1400076ed:	41 89 c0             	mov    r8d,eax
   1400076f0:	e8 3b ff ff ff       	call   140007630 <__wcrtomb_cp>
   1400076f5:	48 98                	cdqe
   1400076f7:	48 83 c4 30          	add    rsp,0x30
   1400076fb:	5b                   	pop    rbx
   1400076fc:	5e                   	pop    rsi
   1400076fd:	5f                   	pop    rdi
   1400076fe:	c3                   	ret
   1400076ff:	90                   	nop

0000000140007700 <wcsrtombs>:
   140007700:	41 56                	push   r14
   140007702:	41 55                	push   r13
   140007704:	41 54                	push   r12
   140007706:	55                   	push   rbp
   140007707:	57                   	push   rdi
   140007708:	56                   	push   rsi
   140007709:	53                   	push   rbx
   14000770a:	48 83 ec 30          	sub    rsp,0x30
   14000770e:	45 31 f6             	xor    r14d,r14d
   140007711:	49 89 d4             	mov    r12,rdx
   140007714:	48 89 cb             	mov    rbx,rcx
   140007717:	4c 89 c5             	mov    rbp,r8
   14000771a:	e8 29 04 00 00       	call   140007b48 <___lc_codepage_func>
   14000771f:	89 c6                	mov    esi,eax
   140007721:	e8 2a 04 00 00       	call   140007b50 <___mb_cur_max_func>
   140007726:	4d 8b 2c 24          	mov    r13,QWORD PTR [r12]
   14000772a:	89 c7                	mov    edi,eax
   14000772c:	4d 85 ed             	test   r13,r13
   14000772f:	74 48                	je     140007779 <wcsrtombs+0x79>
   140007731:	48 85 db             	test   rbx,rbx
   140007734:	74 5a                	je     140007790 <wcsrtombs+0x90>
   140007736:	48 85 ed             	test   rbp,rbp
   140007739:	75 20                	jne    14000775b <wcsrtombs+0x5b>
   14000773b:	e9 90 00 00 00       	jmp    1400077d0 <wcsrtombs+0xd0>
   140007740:	48 98                	cdqe
   140007742:	48 01 c3             	add    rbx,rax
   140007745:	49 01 c6             	add    r14,rax
   140007748:	80 7b ff 00          	cmp    BYTE PTR [rbx-0x1],0x0
   14000774c:	0f 84 8e 00 00 00    	je     1400077e0 <wcsrtombs+0xe0>
   140007752:	49 83 c5 02          	add    r13,0x2
   140007756:	49 39 ee             	cmp    r14,rbp
   140007759:	73 75                	jae    1400077d0 <wcsrtombs+0xd0>
   14000775b:	41 0f b7 55 00       	movzx  edx,WORD PTR [r13+0x0]
   140007760:	41 89 f9             	mov    r9d,edi
   140007763:	41 89 f0             	mov    r8d,esi
   140007766:	48 89 d9             	mov    rcx,rbx
   140007769:	e8 c2 fe ff ff       	call   140007630 <__wcrtomb_cp>
   14000776e:	85 c0                	test   eax,eax
   140007770:	7f ce                	jg     140007740 <wcsrtombs+0x40>
   140007772:	49 c7 c6 ff ff ff ff 	mov    r14,0xffffffffffffffff
   140007779:	4c 89 f0             	mov    rax,r14
   14000777c:	48 83 c4 30          	add    rsp,0x30
   140007780:	5b                   	pop    rbx
   140007781:	5e                   	pop    rsi
   140007782:	5f                   	pop    rdi
   140007783:	5d                   	pop    rbp
   140007784:	41 5c                	pop    r12
   140007786:	41 5d                	pop    r13
   140007788:	41 5e                	pop    r14
   14000778a:	c3                   	ret
   14000778b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140007790:	48 8d 6c 24 2b       	lea    rbp,[rsp+0x2b]
   140007795:	eb 1f                	jmp    1400077b6 <wcsrtombs+0xb6>
   140007797:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   14000779e:	00 00 
   1400077a0:	48 63 d0             	movsxd rdx,eax
   1400077a3:	83 e8 01             	sub    eax,0x1
   1400077a6:	48 98                	cdqe
   1400077a8:	49 01 d6             	add    r14,rdx
   1400077ab:	80 7c 04 2b 00       	cmp    BYTE PTR [rsp+rax*1+0x2b],0x0
   1400077b0:	74 3e                	je     1400077f0 <wcsrtombs+0xf0>
   1400077b2:	49 83 c5 02          	add    r13,0x2
   1400077b6:	41 0f b7 55 00       	movzx  edx,WORD PTR [r13+0x0]
   1400077bb:	41 89 f9             	mov    r9d,edi
   1400077be:	41 89 f0             	mov    r8d,esi
   1400077c1:	48 89 e9             	mov    rcx,rbp
   1400077c4:	e8 67 fe ff ff       	call   140007630 <__wcrtomb_cp>
   1400077c9:	85 c0                	test   eax,eax
   1400077cb:	7f d3                	jg     1400077a0 <wcsrtombs+0xa0>
   1400077cd:	eb a3                	jmp    140007772 <wcsrtombs+0x72>
   1400077cf:	90                   	nop
   1400077d0:	4d 89 2c 24          	mov    QWORD PTR [r12],r13
   1400077d4:	eb a3                	jmp    140007779 <wcsrtombs+0x79>
   1400077d6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400077dd:	00 00 00 
   1400077e0:	49 c7 04 24 00 00 00 	mov    QWORD PTR [r12],0x0
   1400077e7:	00 
   1400077e8:	49 83 ee 01          	sub    r14,0x1
   1400077ec:	eb 8b                	jmp    140007779 <wcsrtombs+0x79>
   1400077ee:	66 90                	xchg   ax,ax
   1400077f0:	49 83 ee 01          	sub    r14,0x1
   1400077f4:	eb 83                	jmp    140007779 <wcsrtombs+0x79>
   1400077f6:	90                   	nop
   1400077f7:	90                   	nop
   1400077f8:	90                   	nop
   1400077f9:	90                   	nop
   1400077fa:	90                   	nop
   1400077fb:	90                   	nop
   1400077fc:	90                   	nop
   1400077fd:	90                   	nop
   1400077fe:	90                   	nop
   1400077ff:	90                   	nop

0000000140007800 <__mbrtowc_cp>:
   140007800:	57                   	push   rdi
   140007801:	53                   	push   rbx
   140007802:	48 83 ec 48          	sub    rsp,0x48
   140007806:	48 89 cf             	mov    rdi,rcx
   140007809:	48 89 d3             	mov    rbx,rdx
   14000780c:	48 85 d2             	test   rdx,rdx
   14000780f:	0f 84 c8 00 00 00    	je     1400078dd <__mbrtowc_cp+0xdd>
   140007815:	4d 85 c0             	test   r8,r8
   140007818:	0f 84 36 01 00 00    	je     140007954 <__mbrtowc_cp+0x154>
   14000781e:	41 8b 01             	mov    eax,DWORD PTR [r9]
   140007821:	0f b6 12             	movzx  edx,BYTE PTR [rdx]
   140007824:	41 c7 01 00 00 00 00 	mov    DWORD PTR [r9],0x0
   14000782b:	89 44 24 3c          	mov    DWORD PTR [rsp+0x3c],eax
   14000782f:	84 d2                	test   dl,dl
   140007831:	0f 84 a1 00 00 00    	je     1400078d8 <__mbrtowc_cp+0xd8>
   140007837:	83 bc 24 88 00 00 00 	cmp    DWORD PTR [rsp+0x88],0x1
   14000783e:	01 
   14000783f:	76 77                	jbe    1400078b8 <__mbrtowc_cp+0xb8>
   140007841:	84 c0                	test   al,al
   140007843:	0f 85 a7 00 00 00    	jne    1400078f0 <__mbrtowc_cp+0xf0>
   140007849:	4c 89 4c 24 78       	mov    QWORD PTR [rsp+0x78],r9
   14000784e:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [rsp+0x80]
   140007855:	4c 89 44 24 70       	mov    QWORD PTR [rsp+0x70],r8
   14000785a:	ff 15 9c 69 00 00    	call   QWORD PTR [rip+0x699c]        # 14000e1fc <__imp_IsDBCSLeadByteEx>
   140007860:	85 c0                	test   eax,eax
   140007862:	74 54                	je     1400078b8 <__mbrtowc_cp+0xb8>
   140007864:	4c 8b 44 24 70       	mov    r8,QWORD PTR [rsp+0x70]
   140007869:	4c 8b 4c 24 78       	mov    r9,QWORD PTR [rsp+0x78]
   14000786e:	49 83 f8 01          	cmp    r8,0x1
   140007872:	0f 84 d6 00 00 00    	je     14000794e <__mbrtowc_cp+0x14e>
   140007878:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
   14000787d:	41 b9 02 00 00 00    	mov    r9d,0x2
   140007883:	49 89 d8             	mov    r8,rbx
   140007886:	c7 44 24 28 01 00 00 	mov    DWORD PTR [rsp+0x28],0x1
   14000788d:	00 
   14000788e:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [rsp+0x80]
   140007895:	ba 08 00 00 00       	mov    edx,0x8
   14000789a:	ff 15 6c 69 00 00    	call   QWORD PTR [rip+0x696c]        # 14000e20c <__imp_MultiByteToWideChar>
   1400078a0:	85 c0                	test   eax,eax
   1400078a2:	0f 84 94 00 00 00    	je     14000793c <__mbrtowc_cp+0x13c>
   1400078a8:	b8 02 00 00 00       	mov    eax,0x2
   1400078ad:	48 83 c4 48          	add    rsp,0x48
   1400078b1:	5b                   	pop    rbx
   1400078b2:	5f                   	pop    rdi
   1400078b3:	c3                   	ret
   1400078b4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   1400078b8:	8b 84 24 80 00 00 00 	mov    eax,DWORD PTR [rsp+0x80]
   1400078bf:	85 c0                	test   eax,eax
   1400078c1:	75 4d                	jne    140007910 <__mbrtowc_cp+0x110>
   1400078c3:	0f b6 03             	movzx  eax,BYTE PTR [rbx]
   1400078c6:	66 89 07             	mov    WORD PTR [rdi],ax
   1400078c9:	b8 01 00 00 00       	mov    eax,0x1
   1400078ce:	48 83 c4 48          	add    rsp,0x48
   1400078d2:	5b                   	pop    rbx
   1400078d3:	5f                   	pop    rdi
   1400078d4:	c3                   	ret
   1400078d5:	0f 1f 00             	nop    DWORD PTR [rax]
   1400078d8:	31 d2                	xor    edx,edx
   1400078da:	66 89 11             	mov    WORD PTR [rcx],dx
   1400078dd:	31 c0                	xor    eax,eax
   1400078df:	48 83 c4 48          	add    rsp,0x48
   1400078e3:	5b                   	pop    rbx
   1400078e4:	5f                   	pop    rdi
   1400078e5:	c3                   	ret
   1400078e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   1400078ed:	00 00 00 
   1400078f0:	88 54 24 3d          	mov    BYTE PTR [rsp+0x3d],dl
   1400078f4:	41 b9 02 00 00 00    	mov    r9d,0x2
   1400078fa:	4c 8d 44 24 3c       	lea    r8,[rsp+0x3c]
   1400078ff:	c7 44 24 28 01 00 00 	mov    DWORD PTR [rsp+0x28],0x1
   140007906:	00 
   140007907:	48 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],rcx
   14000790c:	eb 80                	jmp    14000788e <__mbrtowc_cp+0x8e>
   14000790e:	66 90                	xchg   ax,ax
   140007910:	c7 44 24 28 01 00 00 	mov    DWORD PTR [rsp+0x28],0x1
   140007917:	00 
   140007918:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [rsp+0x80]
   14000791f:	49 89 d8             	mov    r8,rbx
   140007922:	41 b9 01 00 00 00    	mov    r9d,0x1
   140007928:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
   14000792d:	ba 08 00 00 00       	mov    edx,0x8
   140007932:	ff 15 d4 68 00 00    	call   QWORD PTR [rip+0x68d4]        # 14000e20c <__imp_MultiByteToWideChar>
   140007938:	85 c0                	test   eax,eax
   14000793a:	75 8d                	jne    1400078c9 <__mbrtowc_cp+0xc9>
   14000793c:	e8 47 02 00 00       	call   140007b88 <_errno>
   140007941:	c7 00 2a 00 00 00    	mov    DWORD PTR [rax],0x2a
   140007947:	b8 ff ff ff ff       	mov    eax,0xffffffff
   14000794c:	eb 91                	jmp    1400078df <__mbrtowc_cp+0xdf>
   14000794e:	0f b6 03             	movzx  eax,BYTE PTR [rbx]
   140007951:	41 88 01             	mov    BYTE PTR [r9],al
   140007954:	b8 fe ff ff ff       	mov    eax,0xfffffffe
   140007959:	eb 84                	jmp    1400078df <__mbrtowc_cp+0xdf>
   14000795b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000140007960 <mbrtowc>:
   140007960:	41 54                	push   r12
   140007962:	55                   	push   rbp
   140007963:	57                   	push   rdi
   140007964:	56                   	push   rsi
   140007965:	53                   	push   rbx
   140007966:	48 83 ec 40          	sub    rsp,0x40
   14000796a:	31 c0                	xor    eax,eax
   14000796c:	48 89 cb             	mov    rbx,rcx
   14000796f:	48 85 c9             	test   rcx,rcx
   140007972:	66 89 44 24 3e       	mov    WORD PTR [rsp+0x3e],ax
   140007977:	48 8d 44 24 3e       	lea    rax,[rsp+0x3e]
   14000797c:	4c 89 ce             	mov    rsi,r9
   14000797f:	48 0f 44 d8          	cmove  rbx,rax
   140007983:	48 89 d7             	mov    rdi,rdx
   140007986:	4c 89 c5             	mov    rbp,r8
   140007989:	e8 c2 01 00 00       	call   140007b50 <___mb_cur_max_func>
   14000798e:	41 89 c4             	mov    r12d,eax
   140007991:	e8 b2 01 00 00       	call   140007b48 <___lc_codepage_func>
   140007996:	48 85 f6             	test   rsi,rsi
   140007999:	44 89 64 24 28       	mov    DWORD PTR [rsp+0x28],r12d
   14000799e:	49 89 e8             	mov    r8,rbp
   1400079a1:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
   1400079a5:	4c 8d 0d cc 61 00 00 	lea    r9,[rip+0x61cc]        # 14000db78 <internal_mbstate.2>
   1400079ac:	48 89 fa             	mov    rdx,rdi
   1400079af:	48 89 d9             	mov    rcx,rbx
   1400079b2:	4c 0f 45 ce          	cmovne r9,rsi
   1400079b6:	e8 45 fe ff ff       	call   140007800 <__mbrtowc_cp>
   1400079bb:	48 98                	cdqe
   1400079bd:	48 83 c4 40          	add    rsp,0x40
   1400079c1:	5b                   	pop    rbx
   1400079c2:	5e                   	pop    rsi
   1400079c3:	5f                   	pop    rdi
   1400079c4:	5d                   	pop    rbp
   1400079c5:	41 5c                	pop    r12
   1400079c7:	c3                   	ret
   1400079c8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1400079cf:	00 

00000001400079d0 <mbsrtowcs>:
   1400079d0:	41 56                	push   r14
   1400079d2:	41 55                	push   r13
   1400079d4:	41 54                	push   r12
   1400079d6:	55                   	push   rbp
   1400079d7:	57                   	push   rdi
   1400079d8:	56                   	push   rsi
   1400079d9:	53                   	push   rbx
   1400079da:	48 83 ec 40          	sub    rsp,0x40
   1400079de:	48 8d 05 8f 61 00 00 	lea    rax,[rip+0x618f]        # 14000db74 <internal_mbstate.1>
   1400079e5:	4c 89 ce             	mov    rsi,r9
   1400079e8:	4d 85 c9             	test   r9,r9
   1400079eb:	49 89 ce             	mov    r14,rcx
   1400079ee:	48 89 d3             	mov    rbx,rdx
   1400079f1:	48 0f 44 f0          	cmove  rsi,rax
   1400079f5:	4c 89 c7             	mov    rdi,r8
   1400079f8:	e8 4b 01 00 00       	call   140007b48 <___lc_codepage_func>
   1400079fd:	41 89 c4             	mov    r12d,eax
   140007a00:	e8 4b 01 00 00       	call   140007b50 <___mb_cur_max_func>
   140007a05:	89 c5                	mov    ebp,eax
   140007a07:	48 85 db             	test   rbx,rbx
   140007a0a:	0f 84 c0 00 00 00    	je     140007ad0 <mbsrtowcs+0x100>
   140007a10:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   140007a13:	48 85 d2             	test   rdx,rdx
   140007a16:	0f 84 b4 00 00 00    	je     140007ad0 <mbsrtowcs+0x100>
   140007a1c:	4d 85 f6             	test   r14,r14
   140007a1f:	74 6f                	je     140007a90 <mbsrtowcs+0xc0>
   140007a21:	45 31 ed             	xor    r13d,r13d
   140007a24:	48 85 ff             	test   rdi,rdi
   140007a27:	75 1e                	jne    140007a47 <mbsrtowcs+0x77>
   140007a29:	eb 4a                	jmp    140007a75 <mbsrtowcs+0xa5>
   140007a2b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   140007a30:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   140007a33:	48 98                	cdqe
   140007a35:	49 83 c6 02          	add    r14,0x2
   140007a39:	49 01 c5             	add    r13,rax
   140007a3c:	48 01 c2             	add    rdx,rax
   140007a3f:	48 89 13             	mov    QWORD PTR [rbx],rdx
   140007a42:	49 39 fd             	cmp    r13,rdi
   140007a45:	73 2e                	jae    140007a75 <mbsrtowcs+0xa5>
   140007a47:	89 6c 24 28          	mov    DWORD PTR [rsp+0x28],ebp
   140007a4b:	49 89 f8             	mov    r8,rdi
   140007a4e:	49 89 f1             	mov    r9,rsi
   140007a51:	4c 89 f1             	mov    rcx,r14
   140007a54:	44 89 64 24 20       	mov    DWORD PTR [rsp+0x20],r12d
   140007a59:	4d 29 e8             	sub    r8,r13
   140007a5c:	e8 9f fd ff ff       	call   140007800 <__mbrtowc_cp>
   140007a61:	85 c0                	test   eax,eax
   140007a63:	7f cb                	jg     140007a30 <mbsrtowcs+0x60>
   140007a65:	49 39 fd             	cmp    r13,rdi
   140007a68:	73 0b                	jae    140007a75 <mbsrtowcs+0xa5>
   140007a6a:	85 c0                	test   eax,eax
   140007a6c:	75 07                	jne    140007a75 <mbsrtowcs+0xa5>
   140007a6e:	48 c7 03 00 00 00 00 	mov    QWORD PTR [rbx],0x0
   140007a75:	4c 89 e8             	mov    rax,r13
   140007a78:	48 83 c4 40          	add    rsp,0x40
   140007a7c:	5b                   	pop    rbx
   140007a7d:	5e                   	pop    rsi
   140007a7e:	5f                   	pop    rdi
   140007a7f:	5d                   	pop    rbp
   140007a80:	41 5c                	pop    r12
   140007a82:	41 5d                	pop    r13
   140007a84:	41 5e                	pop    r14
   140007a86:	c3                   	ret
   140007a87:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   140007a8e:	00 00 
   140007a90:	31 c0                	xor    eax,eax
   140007a92:	41 89 ee             	mov    r14d,ebp
   140007a95:	48 8d 7c 24 3e       	lea    rdi,[rsp+0x3e]
   140007a9a:	45 31 ed             	xor    r13d,r13d
   140007a9d:	66 89 44 24 3e       	mov    WORD PTR [rsp+0x3e],ax
   140007aa2:	eb 0c                	jmp    140007ab0 <mbsrtowcs+0xe0>
   140007aa4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   140007aa8:	48 98                	cdqe
   140007aaa:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
   140007aad:	49 01 c5             	add    r13,rax
   140007ab0:	89 6c 24 28          	mov    DWORD PTR [rsp+0x28],ebp
   140007ab4:	4c 01 ea             	add    rdx,r13
   140007ab7:	49 89 f1             	mov    r9,rsi
   140007aba:	4d 89 f0             	mov    r8,r14
   140007abd:	44 89 64 24 20       	mov    DWORD PTR [rsp+0x20],r12d
   140007ac2:	48 89 f9             	mov    rcx,rdi
   140007ac5:	e8 36 fd ff ff       	call   140007800 <__mbrtowc_cp>
   140007aca:	85 c0                	test   eax,eax
   140007acc:	7f da                	jg     140007aa8 <mbsrtowcs+0xd8>
   140007ace:	eb a5                	jmp    140007a75 <mbsrtowcs+0xa5>
   140007ad0:	45 31 ed             	xor    r13d,r13d
   140007ad3:	eb a0                	jmp    140007a75 <mbsrtowcs+0xa5>
   140007ad5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   140007adc:	00 00 00 00 

0000000140007ae0 <mbrlen>:
   140007ae0:	55                   	push   rbp
   140007ae1:	57                   	push   rdi
   140007ae2:	56                   	push   rsi
   140007ae3:	53                   	push   rbx
   140007ae4:	48 83 ec 48          	sub    rsp,0x48
   140007ae8:	31 c0                	xor    eax,eax
   140007aea:	48 89 ce             	mov    rsi,rcx
   140007aed:	48 89 d7             	mov    rdi,rdx
   140007af0:	4c 89 c3             	mov    rbx,r8
   140007af3:	66 89 44 24 3e       	mov    WORD PTR [rsp+0x3e],ax
   140007af8:	e8 53 00 00 00       	call   140007b50 <___mb_cur_max_func>
   140007afd:	89 c5                	mov    ebp,eax
   140007aff:	e8 44 00 00 00       	call   140007b48 <___lc_codepage_func>
   140007b04:	48 85 db             	test   rbx,rbx
   140007b07:	89 6c 24 28          	mov    DWORD PTR [rsp+0x28],ebp
   140007b0b:	49 89 f8             	mov    r8,rdi
   140007b0e:	48 8d 15 5b 60 00 00 	lea    rdx,[rip+0x605b]        # 14000db70 <s_mbstate.0>
   140007b15:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
   140007b19:	48 8d 4c 24 3e       	lea    rcx,[rsp+0x3e]
   140007b1e:	48 0f 44 da          	cmove  rbx,rdx
   140007b22:	48 89 f2             	mov    rdx,rsi
   140007b25:	49 89 d9             	mov    r9,rbx
   140007b28:	e8 d3 fc ff ff       	call   140007800 <__mbrtowc_cp>
   140007b2d:	48 98                	cdqe
   140007b2f:	48 83 c4 48          	add    rsp,0x48
   140007b33:	5b                   	pop    rbx
   140007b34:	5e                   	pop    rsi
   140007b35:	5f                   	pop    rdi
   140007b36:	5d                   	pop    rbp
   140007b37:	c3                   	ret
   140007b38:	90                   	nop
   140007b39:	90                   	nop
   140007b3a:	90                   	nop
   140007b3b:	90                   	nop
   140007b3c:	90                   	nop
   140007b3d:	90                   	nop
   140007b3e:	90                   	nop
   140007b3f:	90                   	nop

0000000140007b40 <__C_specific_handler>:
   140007b40:	ff 25 06 67 00 00    	jmp    QWORD PTR [rip+0x6706]        # 14000e24c <__imp___C_specific_handler>
   140007b46:	90                   	nop
   140007b47:	90                   	nop

0000000140007b48 <___lc_codepage_func>:
   140007b48:	ff 25 06 67 00 00    	jmp    QWORD PTR [rip+0x6706]        # 14000e254 <__imp____lc_codepage_func>
   140007b4e:	90                   	nop
   140007b4f:	90                   	nop

0000000140007b50 <___mb_cur_max_func>:
   140007b50:	ff 25 06 67 00 00    	jmp    QWORD PTR [rip+0x6706]        # 14000e25c <__imp____mb_cur_max_func>
   140007b56:	90                   	nop
   140007b57:	90                   	nop

0000000140007b58 <__getmainargs>:
   140007b58:	ff 25 06 67 00 00    	jmp    QWORD PTR [rip+0x6706]        # 14000e264 <__imp___getmainargs>
   140007b5e:	90                   	nop
   140007b5f:	90                   	nop

0000000140007b60 <__iob_func>:
   140007b60:	ff 25 0e 67 00 00    	jmp    QWORD PTR [rip+0x670e]        # 14000e274 <__imp___iob_func>
   140007b66:	90                   	nop
   140007b67:	90                   	nop

0000000140007b68 <__set_app_type>:
   140007b68:	ff 25 0e 67 00 00    	jmp    QWORD PTR [rip+0x670e]        # 14000e27c <__imp___set_app_type>
   140007b6e:	90                   	nop
   140007b6f:	90                   	nop

0000000140007b70 <__setusermatherr>:
   140007b70:	ff 25 0e 67 00 00    	jmp    QWORD PTR [rip+0x670e]        # 14000e284 <__imp___setusermatherr>
   140007b76:	90                   	nop
   140007b77:	90                   	nop

0000000140007b78 <_amsg_exit>:
   140007b78:	ff 25 16 67 00 00    	jmp    QWORD PTR [rip+0x6716]        # 14000e294 <__imp__amsg_exit>
   140007b7e:	90                   	nop
   140007b7f:	90                   	nop

0000000140007b80 <_cexit>:
   140007b80:	ff 25 16 67 00 00    	jmp    QWORD PTR [rip+0x6716]        # 14000e29c <__imp__cexit>
   140007b86:	90                   	nop
   140007b87:	90                   	nop

0000000140007b88 <_errno>:
   140007b88:	ff 25 1e 67 00 00    	jmp    QWORD PTR [rip+0x671e]        # 14000e2ac <__imp__errno>
   140007b8e:	90                   	nop
   140007b8f:	90                   	nop

0000000140007b90 <_initterm>:
   140007b90:	ff 25 26 67 00 00    	jmp    QWORD PTR [rip+0x6726]        # 14000e2bc <__imp__initterm>
   140007b96:	90                   	nop
   140007b97:	90                   	nop

0000000140007b98 <_lock>:
   140007b98:	ff 25 26 67 00 00    	jmp    QWORD PTR [rip+0x6726]        # 14000e2c4 <__imp__lock>
   140007b9e:	90                   	nop
   140007b9f:	90                   	nop

0000000140007ba0 <_onexit>:
   140007ba0:	ff 25 26 67 00 00    	jmp    QWORD PTR [rip+0x6726]        # 14000e2cc <__imp__onexit>
   140007ba6:	90                   	nop
   140007ba7:	90                   	nop

0000000140007ba8 <_unlock>:
   140007ba8:	ff 25 26 67 00 00    	jmp    QWORD PTR [rip+0x6726]        # 14000e2d4 <__imp__unlock>
   140007bae:	90                   	nop
   140007baf:	90                   	nop

0000000140007bb0 <abort>:
   140007bb0:	ff 25 26 67 00 00    	jmp    QWORD PTR [rip+0x6726]        # 14000e2dc <__imp_abort>
   140007bb6:	90                   	nop
   140007bb7:	90                   	nop

0000000140007bb8 <calloc>:
   140007bb8:	ff 25 26 67 00 00    	jmp    QWORD PTR [rip+0x6726]        # 14000e2e4 <__imp_calloc>
   140007bbe:	90                   	nop
   140007bbf:	90                   	nop

0000000140007bc0 <exit>:
   140007bc0:	ff 25 26 67 00 00    	jmp    QWORD PTR [rip+0x6726]        # 14000e2ec <__imp_exit>
   140007bc6:	90                   	nop
   140007bc7:	90                   	nop

0000000140007bc8 <fprintf>:
   140007bc8:	ff 25 26 67 00 00    	jmp    QWORD PTR [rip+0x6726]        # 14000e2f4 <__imp_fprintf>
   140007bce:	90                   	nop
   140007bcf:	90                   	nop

0000000140007bd0 <fputc>:
   140007bd0:	ff 25 26 67 00 00    	jmp    QWORD PTR [rip+0x6726]        # 14000e2fc <__imp_fputc>
   140007bd6:	90                   	nop
   140007bd7:	90                   	nop

0000000140007bd8 <free>:
   140007bd8:	ff 25 26 67 00 00    	jmp    QWORD PTR [rip+0x6726]        # 14000e304 <__imp_free>
   140007bde:	90                   	nop
   140007bdf:	90                   	nop

0000000140007be0 <fwrite>:
   140007be0:	ff 25 26 67 00 00    	jmp    QWORD PTR [rip+0x6726]        # 14000e30c <__imp_fwrite>
   140007be6:	90                   	nop
   140007be7:	90                   	nop

0000000140007be8 <localeconv>:
   140007be8:	ff 25 26 67 00 00    	jmp    QWORD PTR [rip+0x6726]        # 14000e314 <__imp_localeconv>
   140007bee:	90                   	nop
   140007bef:	90                   	nop

0000000140007bf0 <malloc>:
   140007bf0:	ff 25 26 67 00 00    	jmp    QWORD PTR [rip+0x6726]        # 14000e31c <__imp_malloc>
   140007bf6:	90                   	nop
   140007bf7:	90                   	nop

0000000140007bf8 <memcpy>:
   140007bf8:	ff 25 26 67 00 00    	jmp    QWORD PTR [rip+0x6726]        # 14000e324 <__imp_memcpy>
   140007bfe:	90                   	nop
   140007bff:	90                   	nop

0000000140007c00 <memset>:
   140007c00:	ff 25 26 67 00 00    	jmp    QWORD PTR [rip+0x6726]        # 14000e32c <__imp_memset>
   140007c06:	90                   	nop
   140007c07:	90                   	nop

0000000140007c08 <signal>:
   140007c08:	ff 25 26 67 00 00    	jmp    QWORD PTR [rip+0x6726]        # 14000e334 <__imp_signal>
   140007c0e:	90                   	nop
   140007c0f:	90                   	nop

0000000140007c10 <strerror>:
   140007c10:	ff 25 26 67 00 00    	jmp    QWORD PTR [rip+0x6726]        # 14000e33c <__imp_strerror>
   140007c16:	90                   	nop
   140007c17:	90                   	nop

0000000140007c18 <strlen>:
   140007c18:	ff 25 26 67 00 00    	jmp    QWORD PTR [rip+0x6726]        # 14000e344 <__imp_strlen>
   140007c1e:	90                   	nop
   140007c1f:	90                   	nop

0000000140007c20 <strncmp>:
   140007c20:	ff 25 26 67 00 00    	jmp    QWORD PTR [rip+0x6726]        # 14000e34c <__imp_strncmp>
   140007c26:	90                   	nop
   140007c27:	90                   	nop

0000000140007c28 <vfprintf>:
   140007c28:	ff 25 26 67 00 00    	jmp    QWORD PTR [rip+0x6726]        # 14000e354 <__imp_vfprintf>
   140007c2e:	90                   	nop
   140007c2f:	90                   	nop

0000000140007c30 <wcslen>:
   140007c30:	ff 25 26 67 00 00    	jmp    QWORD PTR [rip+0x6726]        # 14000e35c <__imp_wcslen>
   140007c36:	90                   	nop
   140007c37:	90                   	nop
   140007c38:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   140007c3f:	00 

0000000140007c40 <WideCharToMultiByte>:
   140007c40:	ff 25 f6 65 00 00    	jmp    QWORD PTR [rip+0x65f6]        # 14000e23c <__imp_WideCharToMultiByte>
   140007c46:	90                   	nop
   140007c47:	90                   	nop

0000000140007c48 <VirtualQuery>:
   140007c48:	ff 25 e6 65 00 00    	jmp    QWORD PTR [rip+0x65e6]        # 14000e234 <__imp_VirtualQuery>
   140007c4e:	90                   	nop
   140007c4f:	90                   	nop

0000000140007c50 <VirtualProtect>:
   140007c50:	ff 25 d6 65 00 00    	jmp    QWORD PTR [rip+0x65d6]        # 14000e22c <__imp_VirtualProtect>
   140007c56:	90                   	nop
   140007c57:	90                   	nop

0000000140007c58 <TlsGetValue>:
   140007c58:	ff 25 c6 65 00 00    	jmp    QWORD PTR [rip+0x65c6]        # 14000e224 <__imp_TlsGetValue>
   140007c5e:	90                   	nop
   140007c5f:	90                   	nop

0000000140007c60 <Sleep>:
   140007c60:	ff 25 b6 65 00 00    	jmp    QWORD PTR [rip+0x65b6]        # 14000e21c <__imp_Sleep>
   140007c66:	90                   	nop
   140007c67:	90                   	nop

0000000140007c68 <SetUnhandledExceptionFilter>:
   140007c68:	ff 25 a6 65 00 00    	jmp    QWORD PTR [rip+0x65a6]        # 14000e214 <__imp_SetUnhandledExceptionFilter>
   140007c6e:	90                   	nop
   140007c6f:	90                   	nop

0000000140007c70 <MultiByteToWideChar>:
   140007c70:	ff 25 96 65 00 00    	jmp    QWORD PTR [rip+0x6596]        # 14000e20c <__imp_MultiByteToWideChar>
   140007c76:	90                   	nop
   140007c77:	90                   	nop

0000000140007c78 <LeaveCriticalSection>:
   140007c78:	ff 25 86 65 00 00    	jmp    QWORD PTR [rip+0x6586]        # 14000e204 <__imp_LeaveCriticalSection>
   140007c7e:	90                   	nop
   140007c7f:	90                   	nop

0000000140007c80 <IsDBCSLeadByteEx>:
   140007c80:	ff 25 76 65 00 00    	jmp    QWORD PTR [rip+0x6576]        # 14000e1fc <__imp_IsDBCSLeadByteEx>
   140007c86:	90                   	nop
   140007c87:	90                   	nop

0000000140007c88 <InitializeCriticalSection>:
   140007c88:	ff 25 66 65 00 00    	jmp    QWORD PTR [rip+0x6566]        # 14000e1f4 <__imp_InitializeCriticalSection>
   140007c8e:	90                   	nop
   140007c8f:	90                   	nop

0000000140007c90 <GetStartupInfoA>:
   140007c90:	ff 25 56 65 00 00    	jmp    QWORD PTR [rip+0x6556]        # 14000e1ec <__imp_GetStartupInfoA>
   140007c96:	90                   	nop
   140007c97:	90                   	nop

0000000140007c98 <GetLastError>:
   140007c98:	ff 25 46 65 00 00    	jmp    QWORD PTR [rip+0x6546]        # 14000e1e4 <__imp_GetLastError>
   140007c9e:	90                   	nop
   140007c9f:	90                   	nop

0000000140007ca0 <EnterCriticalSection>:
   140007ca0:	ff 25 36 65 00 00    	jmp    QWORD PTR [rip+0x6536]        # 14000e1dc <__imp_EnterCriticalSection>
   140007ca6:	90                   	nop
   140007ca7:	90                   	nop

0000000140007ca8 <DeleteCriticalSection>:
   140007ca8:	ff 25 26 65 00 00    	jmp    QWORD PTR [rip+0x6526]        # 14000e1d4 <__IAT_start__>
   140007cae:	90                   	nop
   140007caf:	90                   	nop

0000000140007cb0 <register_frame_ctor>:
   140007cb0:	e9 5b 98 ff ff       	jmp    140001510 <__gcc_register_frame>
   140007cb5:	90                   	nop
   140007cb6:	90                   	nop
   140007cb7:	90                   	nop
   140007cb8:	90                   	nop
   140007cb9:	90                   	nop
   140007cba:	90                   	nop
   140007cbb:	90                   	nop
   140007cbc:	90                   	nop
   140007cbd:	90                   	nop
   140007cbe:	90                   	nop
   140007cbf:	90                   	nop

0000000140007cc0 <__CTOR_LIST__>:
   140007cc0:	ff                   	(bad)
   140007cc1:	ff                   	(bad)
   140007cc2:	ff                   	(bad)
   140007cc3:	ff                   	(bad)
   140007cc4:	ff                   	(bad)
   140007cc5:	ff                   	(bad)
   140007cc6:	ff                   	(bad)
   140007cc7:	ff                   	.byte 0xff

0000000140007cc8 <.ctors.65535>:
   140007cc8:	b0 7c                	mov    al,0x7c
   140007cca:	00 40 01             	add    BYTE PTR [rax+0x1],al
	...

0000000140007cd8 <__DTOR_LIST__>:
   140007cd8:	ff                   	(bad)
   140007cd9:	ff                   	(bad)
   140007cda:	ff                   	(bad)
   140007cdb:	ff                   	(bad)
   140007cdc:	ff                   	(bad)
   140007cdd:	ff                   	(bad)
   140007cde:	ff                   	(bad)
   140007cdf:	ff 00                	inc    DWORD PTR [rax]
   140007ce1:	00 00                	add    BYTE PTR [rax],al
   140007ce3:	00 00                	add    BYTE PTR [rax],al
   140007ce5:	00 00                	add    BYTE PTR [rax],al
	...
