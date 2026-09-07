
/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s47_quant/oceanM.s47_SELQUANT_best_20260810.bak:     file format elf64-x86-64


Disassembly of section text.unlikely:

00000000007ad100 <t3dmix_mod_mp_t3dmix4_tile_>:
  7ad100:	53                   	push   rbx
  7ad101:	48 89 e3             	mov    rbx,rsp
  7ad104:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
  7ad108:	55                   	push   rbp
  7ad109:	55                   	push   rbp
  7ad10a:	48 8b 6b 08          	mov    rbp,QWORD PTR [rbx+0x8]
  7ad10e:	48 89 6c 24 08       	mov    QWORD PTR [rsp+0x8],rbp
  7ad113:	48 89 e5             	mov    rbp,rsp
  7ad116:	48 81 ec d0 0c 00 00 	sub    rsp,0xcd0
  7ad11d:	4c 89 b5 58 f7 ff ff 	mov    QWORD PTR [rbp-0x8a8],r14
  7ad124:	4c 8b 73 18          	mov    r14,QWORD PTR [rbx+0x18]
  7ad128:	48 8b 4b 10          	mov    rcx,QWORD PTR [rbx+0x10]
  7ad12c:	48 89 b5 58 f4 ff ff 	mov    QWORD PTR [rbp-0xba8],rsi
  7ad133:	4d 63 36             	movsxd r14,DWORD PTR [r14]
  7ad136:	48 63 09             	movsxd rcx,DWORD PTR [rcx]
  7ad139:	44 89 b5 7c f4 ff ff 	mov    DWORD PTR [rbp-0xb84],r14d
  7ad140:	4c 2b f1             	sub    r14,rcx
  7ad143:	48 8b 73 28          	mov    rsi,QWORD PTR [rbx+0x28]
  7ad147:	48 89 bd 50 f4 ff ff 	mov    QWORD PTR [rbp-0xbb0],rdi
  7ad14e:	4c 89 f7             	mov    rdi,r14
  7ad151:	48 8b 43 20          	mov    rax,QWORD PTR [rbx+0x20]
  7ad155:	48 ff c7             	inc    rdi
  7ad158:	45 8b 18             	mov    r11d,DWORD PTR [r8]
  7ad15b:	4c 63 06             	movsxd r8,DWORD PTR [rsi]
  7ad15e:	be 00 00 00 00       	mov    esi,0x0
  7ad163:	48 0f 4e fe          	cmovle rdi,rsi
  7ad167:	44 8b 12             	mov    r10d,DWORD PTR [rdx]
  7ad16a:	48 63 10             	movsxd rdx,DWORD PTR [rax]
  7ad16d:	44 89 85 84 f4 ff ff 	mov    DWORD PTR [rbp-0xb7c],r8d
  7ad174:	4c 2b c2             	sub    r8,rdx
  7ad177:	49 ff c0             	inc    r8
  7ad17a:	4c 8d 0c fd 00 00 00 	lea    r9,[rdi*8+0x0]
  7ad181:	00 
  7ad182:	4c 89 bd 50 f7 ff ff 	mov    QWORD PTR [rbp-0x8b0],r15
  7ad189:	4c 0f 4e c6          	cmovle r8,rsi
  7ad18d:	4d 0f af c8          	imul   r9,r8
  7ad191:	4c 89 c8             	mov    rax,r9
  7ad194:	4c 89 ad 60 f7 ff ff 	mov    QWORD PTR [rbp-0x8a0],r13
  7ad19b:	4c 89 a5 68 f7 ff ff 	mov    QWORD PTR [rbp-0x898],r12
  7ad1a2:	49 89 e4             	mov    r12,rsp
  7ad1a5:	44 89 95 70 f4 ff ff 	mov    DWORD PTR [rbp-0xb90],r10d
  7ad1ac:	44 89 9d 74 f4 ff ff 	mov    DWORD PTR [rbp-0xb8c],r11d
  7ad1b3:	89 8d 78 f4 ff ff    	mov    DWORD PTR [rbp-0xb88],ecx
  7ad1b9:	89 95 80 f4 ff ff    	mov    DWORD PTR [rbp-0xb80],edx
  7ad1bf:	48 83 c0 1f          	add    rax,0x1f
  7ad1c3:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7ad1c7:	48 2b e0             	sub    rsp,rax
  7ad1ca:	48 89 e0             	mov    rax,rsp
  7ad1cd:	48 89 85 30 f3 ff ff 	mov    QWORD PTR [rbp-0xcd0],rax
  7ad1d4:	4c 89 c8             	mov    rax,r9
  7ad1d7:	41 bd 08 00 00 00    	mov    r13d,0x8
  7ad1dd:	4e 8d 3c f5 08 00 00 	lea    r15,[r14*8+0x8]
  7ad1e4:	00 
  7ad1e5:	41 be 01 00 00 00    	mov    r14d,0x1
  7ad1eb:	4c 89 ad 38 f3 ff ff 	mov    QWORD PTR [rbp-0xcc8],r13
  7ad1f2:	48 c7 85 50 f3 ff ff 	mov    QWORD PTR [rbp-0xcb0],0x2
  7ad1f9:	02 00 00 00 
  7ad1fd:	48 89 b5 40 f3 ff ff 	mov    QWORD PTR [rbp-0xcc0],rsi
  7ad204:	4c 89 ad 68 f3 ff ff 	mov    QWORD PTR [rbp-0xc98],r13
  7ad20b:	48 89 8d 70 f3 ff ff 	mov    QWORD PTR [rbp-0xc90],rcx
  7ad212:	48 89 bd 60 f3 ff ff 	mov    QWORD PTR [rbp-0xca0],rdi
  7ad219:	4c 89 bd 80 f3 ff ff 	mov    QWORD PTR [rbp-0xc80],r15
  7ad220:	48 89 95 88 f3 ff ff 	mov    QWORD PTR [rbp-0xc78],rdx
  7ad227:	4c 89 85 78 f3 ff ff 	mov    QWORD PTR [rbp-0xc88],r8
  7ad22e:	4c 89 b5 48 f3 ff ff 	mov    QWORD PTR [rbp-0xcb8],r14
  7ad235:	48 83 c0 1f          	add    rax,0x1f
  7ad239:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7ad23d:	48 2b e0             	sub    rsp,rax
  7ad240:	48 89 e0             	mov    rax,rsp
  7ad243:	48 89 85 90 f3 ff ff 	mov    QWORD PTR [rbp-0xc70],rax
  7ad24a:	4c 89 c8             	mov    rax,r9
  7ad24d:	4c 89 ad 98 f3 ff ff 	mov    QWORD PTR [rbp-0xc68],r13
  7ad254:	48 c7 85 b0 f3 ff ff 	mov    QWORD PTR [rbp-0xc50],0x2
  7ad25b:	02 00 00 00 
  7ad25f:	48 89 b5 a0 f3 ff ff 	mov    QWORD PTR [rbp-0xc60],rsi
  7ad266:	4c 89 ad c8 f3 ff ff 	mov    QWORD PTR [rbp-0xc38],r13
  7ad26d:	48 89 8d d0 f3 ff ff 	mov    QWORD PTR [rbp-0xc30],rcx
  7ad274:	48 89 bd c0 f3 ff ff 	mov    QWORD PTR [rbp-0xc40],rdi
  7ad27b:	4c 89 bd e0 f3 ff ff 	mov    QWORD PTR [rbp-0xc20],r15
  7ad282:	48 89 95 e8 f3 ff ff 	mov    QWORD PTR [rbp-0xc18],rdx
  7ad289:	4c 89 85 d8 f3 ff ff 	mov    QWORD PTR [rbp-0xc28],r8
  7ad290:	4c 89 b5 a8 f3 ff ff 	mov    QWORD PTR [rbp-0xc58],r14
  7ad297:	48 83 c0 1f          	add    rax,0x1f
  7ad29b:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7ad29f:	48 2b e0             	sub    rsp,rax
  7ad2a2:	48 89 e0             	mov    rax,rsp
  7ad2a5:	4c 8b 8d 50 f4 ff ff 	mov    r9,QWORD PTR [rbp-0xbb0]
  7ad2ac:	48 89 95 48 f4 ff ff 	mov    QWORD PTR [rbp-0xbb8],rdx
  7ad2b3:	4c 89 ad f8 f3 ff ff 	mov    QWORD PTR [rbp-0xc08],r13
  7ad2ba:	4d 63 09             	movsxd r9,DWORD PTR [r9]
  7ad2bd:	49 69 d1 60 0f 00 00 	imul   rdx,r9,0xf60
  7ad2c4:	4c 89 ad 28 f4 ff ff 	mov    QWORD PTR [rbp-0xbd8],r13
  7ad2cb:	4c 8b 2d 6e de 30 00 	mov    r13,QWORD PTR [rip+0x30de6e]        # abb140 <mod_param_mp_bounds_>
  7ad2d2:	48 89 bd 20 f4 ff ff 	mov    QWORD PTR [rbp-0xbe0],rdi
  7ad2d9:	48 8b bd 58 f4 ff ff 	mov    rdi,QWORD PTR [rbp-0xba8]
  7ad2e0:	48 89 8d 30 f4 ff ff 	mov    QWORD PTR [rbp-0xbd0],rcx
  7ad2e7:	4a 8b 8c 2a 90 f2 ff 	mov    rcx,QWORD PTR [rdx+r13*1-0xd70]
  7ad2ee:	ff 
  7ad2ef:	4e 8b 9c 2a d8 f2 ff 	mov    r11,QWORD PTR [rdx+r13*1-0xd28]
  7ad2f6:	ff 
  7ad2f7:	48 f7 d9             	neg    rcx
  7ad2fa:	49 f7 db             	neg    r11
  7ad2fd:	4c 89 85 38 f4 ff ff 	mov    QWORD PTR [rbp-0xbc8],r8
  7ad304:	4c 63 07             	movsxd r8,DWORD PTR [rdi]
  7ad307:	49 03 c8             	add    rcx,r8
  7ad30a:	4d 03 d8             	add    r11,r8
  7ad30d:	4a 0f af 8c 2a 88 f2 	imul   rcx,QWORD PTR [rdx+r13*1-0xd78]
  7ad314:	ff ff 
  7ad316:	4e 0f af 9c 2a d0 f2 	imul   r11,QWORD PTR [rdx+r13*1-0xd30]
  7ad31d:	ff ff 
  7ad31f:	48 89 b5 00 f4 ff ff 	mov    QWORD PTR [rbp-0xc00],rsi
  7ad326:	4a 8b b4 2a 50 f2 ff 	mov    rsi,QWORD PTR [rdx+r13*1-0xdb0]
  7ad32d:	ff 
  7ad32e:	4e 8b 94 2a 98 f2 ff 	mov    r10,QWORD PTR [rdx+r13*1-0xd68]
  7ad335:	ff 
  7ad336:	4c 89 bd 40 f4 ff ff 	mov    QWORD PTR [rbp-0xbc0],r15
  7ad33d:	8b 3c 0e             	mov    edi,DWORD PTR [rsi+rcx*1]
  7ad340:	43 8b 34 1a          	mov    esi,DWORD PTR [r10+r11*1]
  7ad344:	4e 8b bc 2a 20 f3 ff 	mov    r15,QWORD PTR [rdx+r13*1-0xce0]
  7ad34b:	ff 
  7ad34c:	4e 8b 94 2a 68 f3 ff 	mov    r10,QWORD PTR [rdx+r13*1-0xc98]
  7ad353:	ff 
  7ad354:	49 f7 df             	neg    r15
  7ad357:	49 f7 da             	neg    r10
  7ad35a:	4d 03 f8             	add    r15,r8
  7ad35d:	4d 03 d0             	add    r10,r8
  7ad360:	4e 0f af 94 2a 60 f3 	imul   r10,QWORD PTR [rdx+r13*1-0xca0]
  7ad367:	ff ff 
  7ad369:	4e 0f af bc 2a 18 f3 	imul   r15,QWORD PTR [rdx+r13*1-0xce8]
  7ad370:	ff ff 
  7ad372:	4c 89 b5 08 f4 ff ff 	mov    QWORD PTR [rbp-0xbf8],r14
  7ad379:	4e 8b b4 2a e0 f2 ff 	mov    r14,QWORD PTR [rdx+r13*1-0xd20]
  7ad380:	ff 
  7ad381:	4a 8b 94 2a 28 f3 ff 	mov    rdx,QWORD PTR [rdx+r13*1-0xcd8]
  7ad388:	ff 
  7ad389:	4c 8b 05 90 e5 30 00 	mov    r8,QWORD PTR [rip+0x30e590]        # abb920 <mod_scalars_mp_ewperiodic_>
  7ad390:	43 8b 0c 3e          	mov    ecx,DWORD PTR [r14+r15*1]
  7ad394:	42 8b 14 12          	mov    edx,DWORD PTR [rdx+r10*1]
  7ad398:	89 bd 88 f4 ff ff    	mov    DWORD PTR [rbp-0xb78],edi
  7ad39e:	ff cf                	dec    edi
  7ad3a0:	48 c7 85 10 f4 ff ff 	mov    QWORD PTR [rbp-0xbf0],0x2
  7ad3a7:	02 00 00 00 
  7ad3ab:	48 89 85 f0 f3 ff ff 	mov    QWORD PTR [rbp-0xc10],rax
  7ad3b2:	89 b5 8c f4 ff ff    	mov    DWORD PTR [rbp-0xb74],esi
  7ad3b8:	89 8d 90 f4 ff ff    	mov    DWORD PTR [rbp-0xb70],ecx
  7ad3be:	89 95 94 f4 ff ff    	mov    DWORD PTR [rbp-0xb6c],edx
  7ad3c4:	43 f6 44 88 fc 01    	test   BYTE PTR [r8+r9*4-0x4],0x1
  7ad3ca:	74 10                	je     7ad3dc <t3dmix_mod_mp_t3dmix4_tile_+0x2dc>
  7ad3cc:	ff c6                	inc    esi
  7ad3ce:	89 bd 60 f4 ff ff    	mov    DWORD PTR [rbp-0xba0],edi
  7ad3d4:	89 b5 64 f4 ff ff    	mov    DWORD PTR [rbp-0xb9c],esi
  7ad3da:	eb 2f                	jmp    7ad40b <t3dmix_mod_mp_t3dmix4_tile_+0x30b>
  7ad3dc:	41 b8 01 00 00 00    	mov    r8d,0x1
  7ad3e2:	83 ff 01             	cmp    edi,0x1
  7ad3e5:	44 0f 4f c7          	cmovg  r8d,edi
  7ad3e9:	ff c6                	inc    esi
  7ad3eb:	48 8b 3d ce de 30 00 	mov    rdi,QWORD PTR [rip+0x30dece]        # abb2c0 <mod_param_mp_lm_>
  7ad3f2:	44 89 85 60 f4 ff ff 	mov    DWORD PTR [rbp-0xba0],r8d
  7ad3f9:	46 8b 54 8f fc       	mov    r10d,DWORD PTR [rdi+r9*4-0x4]
  7ad3fe:	44 3b d6             	cmp    r10d,esi
  7ad401:	41 0f 4c f2          	cmovl  esi,r10d
  7ad405:	89 b5 64 f4 ff ff    	mov    DWORD PTR [rbp-0xb9c],esi
  7ad40b:	48 8b 35 6e e8 30 00 	mov    rsi,QWORD PTR [rip+0x30e86e]        # abbc80 <mod_scalars_mp_nsperiodic_>
  7ad412:	ff c9                	dec    ecx
  7ad414:	42 f6 44 8e fc 01    	test   BYTE PTR [rsi+r9*4-0x4],0x1
  7ad41a:	74 10                	je     7ad42c <t3dmix_mod_mp_t3dmix4_tile_+0x32c>
  7ad41c:	ff c2                	inc    edx
  7ad41e:	89 8d 68 f4 ff ff    	mov    DWORD PTR [rbp-0xb98],ecx
  7ad424:	89 95 6c f4 ff ff    	mov    DWORD PTR [rbp-0xb94],edx
  7ad42a:	eb 2a                	jmp    7ad456 <t3dmix_mod_mp_t3dmix4_tile_+0x356>
  7ad42c:	be 01 00 00 00       	mov    esi,0x1
  7ad431:	83 f9 01             	cmp    ecx,0x1
  7ad434:	0f 4f f1             	cmovg  esi,ecx
  7ad437:	ff c2                	inc    edx
  7ad439:	48 8b 0d e0 de 30 00 	mov    rcx,QWORD PTR [rip+0x30dee0]        # abb320 <mod_param_mp_mm_>
  7ad440:	89 b5 68 f4 ff ff    	mov    DWORD PTR [rbp-0xb98],esi
  7ad446:	42 8b 7c 89 fc       	mov    edi,DWORD PTR [rcx+r9*4-0x4]
  7ad44b:	3b fa                	cmp    edi,edx
  7ad44d:	0f 4c d7             	cmovl  edx,edi
  7ad450:	89 95 6c f4 ff ff    	mov    DWORD PTR [rbp-0xb94],edx
  7ad456:	bf 3c 72 ab 00       	mov    edi,0xab723c
  7ad45b:	e8 90 03 c6 ff       	call   40d7f0 <__kmpc_global_thread_num@plt>
  7ad460:	89 85 98 f4 ff ff    	mov    DWORD PTR [rbp-0xb68],eax
  7ad466:	bf 84 72 ab 00       	mov    edi,0xab7284
  7ad46b:	33 c0                	xor    eax,eax
  7ad46d:	e8 ae 04 c6 ff       	call   40d920 <__kmpc_ok_to_fork@plt>
  7ad472:	85 c0                	test   eax,eax
  7ad474:	0f 84 4b 01 00 00    	je     7ad5c5 <t3dmix_mod_mp_t3dmix4_tile_+0x4c5>
  7ad47a:	48 81 c4 10 ff ff ff 	add    rsp,0xffffffffffffff10
  7ad481:	4c 8d 95 60 f4 ff ff 	lea    r10,[rbp-0xba0]
  7ad488:	ba 46 d7 7a 00       	mov    edx,0x7ad746
  7ad48d:	4d 8d 5a 04          	lea    r11,[r10+0x4]
  7ad491:	33 c0                	xor    eax,eax
  7ad493:	4c 8d ab 90 00 00 00 	lea    r13,[rbx+0x90]
  7ad49a:	4c 8d 73 70          	lea    r14,[rbx+0x70]
  7ad49e:	4c 89 14 24          	mov    QWORD PTR [rsp],r10
  7ad4a2:	4c 8d 7b 48          	lea    r15,[rbx+0x48]
  7ad4a6:	4c 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],r11
  7ad4ab:	48 8d 73 58          	lea    rsi,[rbx+0x58]
  7ad4af:	4c 89 6c 24 10       	mov    QWORD PTR [rsp+0x10],r13
  7ad4b4:	48 8d 7b 68          	lea    rdi,[rbx+0x68]
  7ad4b8:	4c 89 74 24 18       	mov    QWORD PTR [rsp+0x18],r14
  7ad4bd:	4c 8d 56 48          	lea    r10,[rsi+0x48]
  7ad4c1:	4c 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],r15
  7ad4c6:	4c 8d 5b 30          	lea    r11,[rbx+0x30]
  7ad4ca:	48 89 74 24 28       	mov    QWORD PTR [rsp+0x28],rsi
  7ad4cf:	4c 8d 6e 40          	lea    r13,[rsi+0x40]
  7ad4d3:	48 89 7c 24 30       	mov    QWORD PTR [rsp+0x30],rdi
  7ad4d8:	4c 8d 73 78          	lea    r14,[rbx+0x78]
  7ad4dc:	4c 89 54 24 38       	mov    QWORD PTR [rsp+0x38],r10
  7ad4e1:	4c 8d 7b 50          	lea    r15,[rbx+0x50]
  7ad4e5:	4c 89 5c 24 40       	mov    QWORD PTR [rsp+0x40],r11
  7ad4ea:	48 8d 73 60          	lea    rsi,[rbx+0x60]
  7ad4ee:	4c 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],r13
  7ad4f3:	48 8d 8d 50 f4 ff ff 	lea    rcx,[rbp-0xbb0]
  7ad4fa:	4c 89 74 24 50       	mov    QWORD PTR [rsp+0x50],r14
  7ad4ff:	4c 8d 41 18          	lea    r8,[rcx+0x18]
  7ad503:	4c 89 7c 24 58       	mov    QWORD PTR [rsp+0x58],r15
  7ad508:	4c 8d 49 1c          	lea    r9,[rcx+0x1c]
  7ad50c:	4c 8d 7c 24 60       	lea    r15,[rsp+0x60]
  7ad511:	49 89 37             	mov    QWORD PTR [r15],rsi
  7ad514:	48 8d 76 20          	lea    rsi,[rsi+0x20]
  7ad518:	49 89 77 08          	mov    QWORD PTR [r15+0x8],rsi
  7ad51c:	48 8d 76 08          	lea    rsi,[rsi+0x8]
  7ad520:	49 89 77 10          	mov    QWORD PTR [r15+0x10],rsi
  7ad524:	48 8d 71 08          	lea    rsi,[rcx+0x8]
  7ad528:	49 89 77 18          	mov    QWORD PTR [r15+0x18],rsi
  7ad52c:	48 8d 71 38          	lea    rsi,[rcx+0x38]
  7ad530:	49 89 77 20          	mov    QWORD PTR [r15+0x20],rsi
  7ad534:	48 8d 71 3c          	lea    rsi,[rcx+0x3c]
  7ad538:	49 89 77 28          	mov    QWORD PTR [r15+0x28],rsi
  7ad53c:	48 8d 71 40          	lea    rsi,[rcx+0x40]
  7ad540:	49 89 77 30          	mov    QWORD PTR [r15+0x30],rsi
  7ad544:	48 8d 71 44          	lea    rsi,[rcx+0x44]
  7ad548:	49 89 77 38          	mov    QWORD PTR [r15+0x38],rsi
  7ad54c:	48 8d 73 40          	lea    rsi,[rbx+0x40]
  7ad550:	49 89 77 40          	mov    QWORD PTR [r15+0x40],rsi
  7ad554:	48 8d 71 20          	lea    rsi,[rcx+0x20]
  7ad558:	49 89 77 48          	mov    QWORD PTR [r15+0x48],rsi
  7ad55c:	48 8d 71 24          	lea    rsi,[rcx+0x24]
  7ad560:	49 89 77 50          	mov    QWORD PTR [r15+0x50],rsi
  7ad564:	48 8d 71 28          	lea    rsi,[rcx+0x28]
  7ad568:	49 89 77 58          	mov    QWORD PTR [r15+0x58],rsi
  7ad56c:	48 8d 71 2c          	lea    rsi,[rcx+0x2c]
  7ad570:	49 89 77 60          	mov    QWORD PTR [r15+0x60],rsi
  7ad574:	48 8d 71 30          	lea    rsi,[rcx+0x30]
  7ad578:	49 89 77 68          	mov    QWORD PTR [r15+0x68],rsi
  7ad57c:	48 8d 71 34          	lea    rsi,[rcx+0x34]
  7ad580:	49 89 77 70          	mov    QWORD PTR [r15+0x70],rsi
  7ad584:	48 8d b5 90 f3 ff ff 	lea    rsi,[rbp-0xc70]
  7ad58b:	49 89 77 78          	mov    QWORD PTR [r15+0x78],rsi
  7ad58f:	48 8d 71 a0          	lea    rsi,[rcx-0x60]
  7ad593:	48 89 b4 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],rsi
  7ad59a:	00 
  7ad59b:	48 8d b5 30 f3 ff ff 	lea    rsi,[rbp-0xcd0]
  7ad5a2:	48 89 b4 24 e8 00 00 	mov    QWORD PTR [rsp+0xe8],rsi
  7ad5a9:	00 
  7ad5aa:	bf 84 72 ab 00       	mov    edi,0xab7284
  7ad5af:	be 21 00 00 00       	mov    esi,0x21
  7ad5b4:	e8 b7 01 c6 ff       	call   40d770 <__kmpc_fork_call@plt>
  7ad5b9:	48 81 c4 f0 00 00 00 	add    rsp,0xf0
  7ad5c0:	e9 56 01 00 00       	jmp    7ad71b <t3dmix_mod_mp_t3dmix4_tile_+0x61b>
  7ad5c5:	bf 84 72 ab 00       	mov    edi,0xab7284
  7ad5ca:	33 c0                	xor    eax,eax
  7ad5cc:	8b b5 98 f4 ff ff    	mov    esi,DWORD PTR [rbp-0xb68]
  7ad5d2:	e8 39 03 c6 ff       	call   40d910 <__kmpc_serialized_parallel@plt>
  7ad5d7:	48 81 c4 10 ff ff ff 	add    rsp,0xffffffffffffff10
  7ad5de:	4c 8d 95 64 f4 ff ff 	lea    r10,[rbp-0xb9c]
  7ad5e5:	be 78 11 be 00       	mov    esi,0xbe1178
  7ad5ea:	4c 8d 9b 90 00 00 00 	lea    r11,[rbx+0x90]
  7ad5f1:	4c 8d 6b 70          	lea    r13,[rbx+0x70]
  7ad5f5:	4c 8d 73 48          	lea    r14,[rbx+0x48]
  7ad5f9:	4c 89 14 24          	mov    QWORD PTR [rsp],r10
  7ad5fd:	4c 8d 7b 58          	lea    r15,[rbx+0x58]
  7ad601:	4c 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],r11
  7ad606:	4c 8d 53 68          	lea    r10,[rbx+0x68]
  7ad60a:	4c 89 6c 24 10       	mov    QWORD PTR [rsp+0x10],r13
  7ad60f:	48 8d bd 98 f4 ff ff 	lea    rdi,[rbp-0xb68]
  7ad616:	4c 89 74 24 18       	mov    QWORD PTR [rsp+0x18],r14
  7ad61b:	48 8d 57 b8          	lea    rdx,[rdi-0x48]
  7ad61f:	4c 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],r15
  7ad624:	48 8d 4a 18          	lea    rcx,[rdx+0x18]
  7ad628:	4c 8d 7c 24 28       	lea    r15,[rsp+0x28]
  7ad62d:	4d 89 17             	mov    QWORD PTR [r15],r10
  7ad630:	4d 8d 52 38          	lea    r10,[r10+0x38]
  7ad634:	4d 89 57 08          	mov    QWORD PTR [r15+0x8],r10
  7ad638:	4c 8d 53 30          	lea    r10,[rbx+0x30]
  7ad63c:	4d 89 57 10          	mov    QWORD PTR [r15+0x10],r10
  7ad640:	4d 8d 52 68          	lea    r10,[r10+0x68]
  7ad644:	4d 89 57 18          	mov    QWORD PTR [r15+0x18],r10
  7ad648:	4c 8d 53 78          	lea    r10,[rbx+0x78]
  7ad64c:	4d 89 57 20          	mov    QWORD PTR [r15+0x20],r10
  7ad650:	4c 8d 53 50          	lea    r10,[rbx+0x50]
  7ad654:	4d 89 57 28          	mov    QWORD PTR [r15+0x28],r10
  7ad658:	4c 8d 53 60          	lea    r10,[rbx+0x60]
  7ad65c:	4d 89 57 30          	mov    QWORD PTR [r15+0x30],r10
  7ad660:	4d 8d 52 20          	lea    r10,[r10+0x20]
  7ad664:	4d 89 57 38          	mov    QWORD PTR [r15+0x38],r10
  7ad668:	4d 8d 52 08          	lea    r10,[r10+0x8]
  7ad66c:	4d 89 57 40          	mov    QWORD PTR [r15+0x40],r10
  7ad670:	4c 8d 52 08          	lea    r10,[rdx+0x8]
  7ad674:	4d 89 57 48          	mov    QWORD PTR [r15+0x48],r10
  7ad678:	4c 8d 52 38          	lea    r10,[rdx+0x38]
  7ad67c:	4d 89 57 50          	mov    QWORD PTR [r15+0x50],r10
  7ad680:	4c 8d 52 3c          	lea    r10,[rdx+0x3c]
  7ad684:	4d 89 57 58          	mov    QWORD PTR [r15+0x58],r10
  7ad688:	4c 8d 52 40          	lea    r10,[rdx+0x40]
  7ad68c:	4d 89 57 60          	mov    QWORD PTR [r15+0x60],r10
  7ad690:	4c 8d 52 44          	lea    r10,[rdx+0x44]
  7ad694:	4d 89 57 68          	mov    QWORD PTR [r15+0x68],r10
  7ad698:	4c 8d 53 40          	lea    r10,[rbx+0x40]
  7ad69c:	4d 89 57 70          	mov    QWORD PTR [r15+0x70],r10
  7ad6a0:	4c 8d 52 20          	lea    r10,[rdx+0x20]
  7ad6a4:	4d 89 57 78          	mov    QWORD PTR [r15+0x78],r10
  7ad6a8:	4c 8d 52 24          	lea    r10,[rdx+0x24]
  7ad6ac:	4c 8d b4 24 a8 00 00 	lea    r14,[rsp+0xa8]
  7ad6b3:	00 
  7ad6b4:	4d 89 16             	mov    QWORD PTR [r14],r10
  7ad6b7:	4c 8d 52 28          	lea    r10,[rdx+0x28]
  7ad6bb:	4d 89 56 08          	mov    QWORD PTR [r14+0x8],r10
  7ad6bf:	4c 8d 52 2c          	lea    r10,[rdx+0x2c]
  7ad6c3:	4d 89 56 10          	mov    QWORD PTR [r14+0x10],r10
  7ad6c7:	4c 8d 42 1c          	lea    r8,[rdx+0x1c]
  7ad6cb:	4c 8d 4a 10          	lea    r9,[rdx+0x10]
  7ad6cf:	4c 8d 52 30          	lea    r10,[rdx+0x30]
  7ad6d3:	4d 89 56 18          	mov    QWORD PTR [r14+0x18],r10
  7ad6d7:	4c 8d 52 34          	lea    r10,[rdx+0x34]
  7ad6db:	4d 89 56 20          	mov    QWORD PTR [r14+0x20],r10
  7ad6df:	4c 8d 95 90 f3 ff ff 	lea    r10,[rbp-0xc70]
  7ad6e6:	4d 89 56 28          	mov    QWORD PTR [r14+0x28],r10
  7ad6ea:	4c 8d 52 a0          	lea    r10,[rdx-0x60]
  7ad6ee:	4d 89 56 30          	mov    QWORD PTR [r14+0x30],r10
  7ad6f2:	4c 8d 95 30 f3 ff ff 	lea    r10,[rbp-0xcd0]
  7ad6f9:	4d 89 56 38          	mov    QWORD PTR [r14+0x38],r10
  7ad6fd:	e8 44 00 00 00       	call   7ad746 <t3dmix_mod_mp_t3dmix4_tile_+0x646>
  7ad702:	48 81 c4 f0 00 00 00 	add    rsp,0xf0
  7ad709:	bf 84 72 ab 00       	mov    edi,0xab7284
  7ad70e:	33 c0                	xor    eax,eax
  7ad710:	8b b5 98 f4 ff ff    	mov    esi,DWORD PTR [rbp-0xb68]
  7ad716:	e8 45 05 c6 ff       	call   40dc60 <__kmpc_end_serialized_parallel@plt>
  7ad71b:	4c 89 e0             	mov    rax,r12
  7ad71e:	48 89 c4             	mov    rsp,rax
  7ad721:	4c 8b bd 50 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x8b0]
  7ad728:	4c 8b b5 58 f7 ff ff 	mov    r14,QWORD PTR [rbp-0x8a8]
  7ad72f:	4c 8b ad 60 f7 ff ff 	mov    r13,QWORD PTR [rbp-0x8a0]
  7ad736:	4c 8b a5 68 f7 ff ff 	mov    r12,QWORD PTR [rbp-0x898]
  7ad73d:	48 89 ec             	mov    rsp,rbp
  7ad740:	5d                   	pop    rbp
  7ad741:	48 89 dc             	mov    rsp,rbx
  7ad744:	5b                   	pop    rbx
  7ad745:	c3                   	ret    
  7ad746:	53                   	push   rbx
  7ad747:	48 89 e3             	mov    rbx,rsp
  7ad74a:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
  7ad74e:	55                   	push   rbp
  7ad74f:	55                   	push   rbp
  7ad750:	48 8b 6b 08          	mov    rbp,QWORD PTR [rbx+0x8]
  7ad754:	48 89 6c 24 08       	mov    QWORD PTR [rsp+0x8],rbp
  7ad759:	48 89 e5             	mov    rbp,rsp
  7ad75c:	48 81 ec d0 0c 00 00 	sub    rsp,0xcd0
  7ad763:	4c 89 a5 68 f7 ff ff 	mov    QWORD PTR [rbp-0x898],r12
  7ad76a:	4c 8b 63 48          	mov    r12,QWORD PTR [rbx+0x48]
  7ad76e:	4c 89 ad 60 f7 ff ff 	mov    QWORD PTR [rbp-0x8a0],r13
  7ad775:	4c 8b 6b 40          	mov    r13,QWORD PTR [rbx+0x40]
  7ad779:	48 8b 73 38          	mov    rsi,QWORD PTR [rbx+0x38]
  7ad77d:	4d 8b 24 24          	mov    r12,QWORD PTR [r12]
  7ad781:	4c 89 a5 88 f3 ff ff 	mov    QWORD PTR [rbp-0xc78],r12
  7ad788:	4d 8b 65 00          	mov    r12,QWORD PTR [r13+0x0]
  7ad78c:	4c 8b 2e             	mov    r13,QWORD PTR [rsi]
  7ad78f:	4c 89 ad c8 f3 ff ff 	mov    QWORD PTR [rbp-0xc38],r13
  7ad796:	45 8b 29             	mov    r13d,DWORD PTR [r9]
  7ad799:	48 8b 43 30          	mov    rax,QWORD PTR [rbx+0x30]
  7ad79d:	44 89 ad b0 fd ff ff 	mov    DWORD PTR [rbp-0x250],r13d
  7ad7a4:	4c 89 bd 50 f7 ff ff 	mov    QWORD PTR [rbp-0x8b0],r15
  7ad7ab:	4c 8b 2a             	mov    r13,QWORD PTR [rdx]
  7ad7ae:	4c 8b 53 10          	mov    r10,QWORD PTR [rbx+0x10]
  7ad7b2:	4c 8b 7b 28          	mov    r15,QWORD PTR [rbx+0x28]
  7ad7b6:	48 8b 53 50          	mov    rdx,QWORD PTR [rbx+0x50]
  7ad7ba:	4c 89 b5 58 f7 ff ff 	mov    QWORD PTR [rbp-0x8a8],r14
  7ad7c1:	48 8b 00             	mov    rax,QWORD PTR [rax]
  7ad7c4:	4c 8b 73 20          	mov    r14,QWORD PTR [rbx+0x20]
  7ad7c8:	48 89 85 b8 f3 ff ff 	mov    QWORD PTR [rbp-0xc48],rax
  7ad7cf:	4c 8b 5b 18          	mov    r11,QWORD PTR [rbx+0x18]
  7ad7d3:	49 8b 37             	mov    rsi,QWORD PTR [r15]
  7ad7d6:	45 8b 12             	mov    r10d,DWORD PTR [r10]
  7ad7d9:	45 8b 00             	mov    r8d,DWORD PTR [r8]
  7ad7dc:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  7ad7df:	48 8b 53 58          	mov    rdx,QWORD PTR [rbx+0x58]
  7ad7e3:	48 89 b5 b0 f3 ff ff 	mov    QWORD PTR [rbp-0xc50],rsi
  7ad7ea:	44 89 95 b8 fd ff ff 	mov    DWORD PTR [rbp-0x248],r10d
  7ad7f1:	44 89 85 38 fa ff ff 	mov    DWORD PTR [rbp-0x5c8],r8d
  7ad7f8:	48 8b 73 60          	mov    rsi,QWORD PTR [rbx+0x60]
  7ad7fc:	4c 8b 43 68          	mov    r8,QWORD PTR [rbx+0x68]
  7ad800:	4c 8b 53 70          	mov    r10,QWORD PTR [rbx+0x70]
  7ad804:	4d 8b 36             	mov    r14,QWORD PTR [r14]
  7ad807:	8b 09                	mov    ecx,DWORD PTR [rcx]
  7ad809:	8b 3f                	mov    edi,DWORD PTR [rdi]
  7ad80b:	4c 89 b5 a8 f3 ff ff 	mov    QWORD PTR [rbp-0xc58],r14
  7ad812:	4d 8b 1b             	mov    r11,QWORD PTR [r11]
  7ad815:	89 8d 30 fa ff ff    	mov    DWORD PTR [rbp-0x5d0],ecx
  7ad81b:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  7ad81e:	48 8d 53 78          	lea    rdx,[rbx+0x78]
  7ad822:	4c 8b 32             	mov    r14,QWORD PTR [rdx]
  7ad825:	89 bd 58 f8 ff ff    	mov    DWORD PTR [rbp-0x7a8],edi
  7ad82b:	4c 89 9d d0 f3 ff ff 	mov    QWORD PTR [rbp-0xc30],r11
  7ad832:	48 89 8d 90 f3 ff ff 	mov    QWORD PTR [rbp-0xc70],rcx
  7ad839:	48 8b 3e             	mov    rdi,QWORD PTR [rsi]
  7ad83c:	4d 8b 08             	mov    r9,QWORD PTR [r8]
  7ad83f:	4d 8b 1a             	mov    r11,QWORD PTR [r10]
  7ad842:	48 8b 4a 10          	mov    rcx,QWORD PTR [rdx+0x10]
  7ad846:	48 89 85 c0 f3 ff ff 	mov    QWORD PTR [rbp-0xc40],rax
  7ad84d:	48 89 bd 98 f3 ff ff 	mov    QWORD PTR [rbp-0xc68],rdi
  7ad854:	4c 89 8d a0 f3 ff ff 	mov    QWORD PTR [rbp-0xc60],r9
  7ad85b:	4c 89 9d 68 f3 ff ff 	mov    QWORD PTR [rbp-0xc98],r11
  7ad862:	4c 8d 9b 80 00 00 00 	lea    r11,[rbx+0x80]
  7ad869:	49 8b 03             	mov    rax,QWORD PTR [r11]
  7ad86c:	49 8b 7b 10          	mov    rdi,QWORD PTR [r11+0x10]
  7ad870:	4d 8b 4b 18          	mov    r9,QWORD PTR [r11+0x18]
  7ad874:	4d 8b 5b 20          	mov    r11,QWORD PTR [r11+0x20]
  7ad878:	4d 8b 3e             	mov    r15,QWORD PTR [r14]
  7ad87b:	4c 89 bd 70 f3 ff ff 	mov    QWORD PTR [rbp-0xc90],r15
  7ad882:	48 63 31             	movsxd rsi,DWORD PTR [rcx]
  7ad885:	4c 8b 7a 30          	mov    r15,QWORD PTR [rdx+0x30]
  7ad889:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  7ad88c:	48 89 b5 10 fd ff ff 	mov    QWORD PTR [rbp-0x2f0],rsi
  7ad893:	4c 63 07             	movsxd r8,DWORD PTR [rdi]
  7ad896:	4d 63 11             	movsxd r10,DWORD PTR [r9]
  7ad899:	45 8b 33             	mov    r14d,DWORD PTR [r11]
  7ad89c:	48 8b b3 b8 00 00 00 	mov    rsi,QWORD PTR [rbx+0xb8]
  7ad8a3:	48 89 95 78 f3 ff ff 	mov    QWORD PTR [rbp-0xc88],rdx
  7ad8aa:	4c 89 85 08 fd ff ff 	mov    QWORD PTR [rbp-0x2f8],r8
  7ad8b1:	4c 89 95 d8 f9 ff ff 	mov    QWORD PTR [rbp-0x628],r10
  7ad8b8:	44 89 b5 50 f3 ff ff 	mov    DWORD PTR [rbp-0xcb0],r14d
  7ad8bf:	4c 8d b3 b0 00 00 00 	lea    r14,[rbx+0xb0]
  7ad8c6:	49 8b 16             	mov    rdx,QWORD PTR [r14]
  7ad8c9:	4d 8b 46 10          	mov    r8,QWORD PTR [r14+0x10]
  7ad8cd:	4d 8b 56 18          	mov    r10,QWORD PTR [r14+0x18]
  7ad8d1:	4d 8b 76 20          	mov    r14,QWORD PTR [r14+0x20]
  7ad8d5:	49 8b 07             	mov    rax,QWORD PTR [r15]
  7ad8d8:	48 89 85 80 f3 ff ff 	mov    QWORD PTR [rbp-0xc80],rax
  7ad8df:	48 63 3e             	movsxd rdi,DWORD PTR [rsi]
  7ad8e2:	48 8d b3 e0 00 00 00 	lea    rsi,[rbx+0xe0]
  7ad8e9:	48 8b 06             	mov    rax,QWORD PTR [rsi]
  7ad8ec:	48 63 0a             	movsxd rcx,DWORD PTR [rdx]
  7ad8ef:	48 89 bd 40 f3 ff ff 	mov    QWORD PTR [rbp-0xcc0],rdi
  7ad8f6:	48 8d bd 58 f5 ff ff 	lea    rdi,[rbp-0xaa8]
  7ad8fd:	4d 63 08             	movsxd r9,DWORD PTR [r8]
  7ad900:	4d 63 1a             	movsxd r11,DWORD PTR [r10]
  7ad903:	4d 63 3e             	movsxd r15,DWORD PTR [r14]
  7ad906:	48 89 85 58 f3 ff ff 	mov    QWORD PTR [rbp-0xca8],rax
  7ad90d:	33 c0                	xor    eax,eax
  7ad90f:	48 8b 56 08          	mov    rdx,QWORD PTR [rsi+0x8]
  7ad913:	48 8b 76 10          	mov    rsi,QWORD PTR [rsi+0x10]
  7ad917:	48 89 8d 48 f3 ff ff 	mov    QWORD PTR [rbp-0xcb8],rcx
  7ad91e:	4c 89 8d 88 fa ff ff 	mov    QWORD PTR [rbp-0x578],r9
  7ad925:	4c 89 9d 38 f3 ff ff 	mov    QWORD PTR [rbp-0xcc8],r11
  7ad92c:	4c 89 bd 30 f3 ff ff 	mov    QWORD PTR [rbp-0xcd0],r15
  7ad933:	48 89 95 60 f3 ff ff 	mov    QWORD PTR [rbp-0xca0],rdx
  7ad93a:	e8 c1 92 cc ff       	call   476c00 <_f90_dope_vector_init>
  7ad93f:	48 89 85 28 f7 ff ff 	mov    QWORD PTR [rbp-0x8d8],rax
  7ad946:	48 83 c0 1f          	add    rax,0x1f
  7ad94a:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7ad94e:	48 2b e0             	sub    rsp,rax
  7ad951:	48 89 e0             	mov    rax,rsp
  7ad954:	48 89 85 20 f7 ff ff 	mov    QWORD PTR [rbp-0x8e0],rax
  7ad95b:	48 89 c2             	mov    rdx,rax
  7ad95e:	48 8d bd b8 f5 ff ff 	lea    rdi,[rbp-0xa48]
  7ad965:	33 c0                	xor    eax,eax
  7ad967:	48 8b b5 60 f3 ff ff 	mov    rsi,QWORD PTR [rbp-0xca0]
  7ad96e:	48 89 57 a0          	mov    QWORD PTR [rdi-0x60],rdx
  7ad972:	e8 89 92 cc ff       	call   476c00 <_f90_dope_vector_init>
  7ad977:	48 89 85 38 f7 ff ff 	mov    QWORD PTR [rbp-0x8c8],rax
  7ad97e:	48 83 c0 1f          	add    rax,0x1f
  7ad982:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7ad986:	48 2b e0             	sub    rsp,rax
  7ad989:	48 89 e0             	mov    rax,rsp
  7ad98c:	48 89 85 30 f7 ff ff 	mov    QWORD PTR [rbp-0x8d0],rax
  7ad993:	48 89 c2             	mov    rdx,rax
  7ad996:	48 8d bd 18 f6 ff ff 	lea    rdi,[rbp-0x9e8]
  7ad99d:	33 c0                	xor    eax,eax
  7ad99f:	48 8b b5 58 f3 ff ff 	mov    rsi,QWORD PTR [rbp-0xca8]
  7ad9a6:	48 89 57 a0          	mov    QWORD PTR [rdi-0x60],rdx
  7ad9aa:	e8 51 92 cc ff       	call   476c00 <_f90_dope_vector_init>
  7ad9af:	48 89 85 40 f7 ff ff 	mov    QWORD PTR [rbp-0x8c0],rax
  7ad9b6:	48 83 c0 1f          	add    rax,0x1f
  7ad9ba:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7ad9be:	48 2b e0             	sub    rsp,rax
  7ad9c1:	48 89 e0             	mov    rax,rsp
  7ad9c4:	48 89 85 48 f7 ff ff 	mov    QWORD PTR [rbp-0x8b8],rax
  7ad9cb:	4d 63 6d 00          	movsxd r13,DWORD PTR [r13+0x0]
  7ad9cf:	48 8b 15 4a cd 30 00 	mov    rdx,QWORD PTR [rip+0x30cd4a]        # aba720 <mod_param_mp_nt_>
  7ad9d6:	48 89 85 18 f6 ff ff 	mov    QWORD PTR [rbp-0x9e8],rax
  7ad9dd:	46 8b 7c aa fc       	mov    r15d,DWORD PTR [rdx+r13*4-0x4]
  7ad9e2:	45 85 ff             	test   r15d,r15d
  7ad9e5:	0f 8e f1 44 00 00    	jle    7b1edc <t3dmix_mod_mp_t3dmix4_tile_+0x4ddc>
  7ad9eb:	48 83 c4 e0          	add    rsp,0xffffffffffffffe0
  7ad9ef:	48 8d 85 8c f8 ff ff 	lea    rax,[rbp-0x774]
  7ad9f6:	41 be 01 00 00 00    	mov    r14d,0x1
  7ad9fc:	bf 84 72 ab 00       	mov    edi,0xab7284
  7ada01:	ba 22 00 00 00       	mov    edx,0x22
  7ada06:	48 8d 8d 88 f8 ff ff 	lea    rcx,[rbp-0x778]
  7ada0d:	44 89 78 f8          	mov    DWORD PTR [rax-0x8],r15d
  7ada11:	4c 8d 85 80 f8 ff ff 	lea    r8,[rbp-0x780]
  7ada18:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  7ada1c:	4c 8d 8d 84 f8 ff ff 	lea    r9,[rbp-0x77c]
  7ada23:	44 89 74 24 08       	mov    DWORD PTR [rsp+0x8],r14d
  7ada28:	44 89 74 24 10       	mov    DWORD PTR [rsp+0x10],r14d
  7ada2d:	8b 70 cc             	mov    esi,DWORD PTR [rax-0x34]
  7ada30:	c7 40 fc 00 00 00 00 	mov    DWORD PTR [rax-0x4],0x0
  7ada37:	44 89 70 f4          	mov    DWORD PTR [rax-0xc],r14d
  7ada3b:	44 89 30             	mov    DWORD PTR [rax],r14d
  7ada3e:	e8 9d ff c5 ff       	call   40d9e0 <__kmpc_for_static_init_4@plt>
  7ada43:	48 83 c4 20          	add    rsp,0x20
  7ada47:	4d 63 ff             	movsxd r15,r15d
  7ada4a:	48 63 85 80 f8 ff ff 	movsxd rax,DWORD PTR [rbp-0x780]
  7ada51:	8b 95 84 f8 ff ff    	mov    edx,DWORD PTR [rbp-0x77c]
  7ada57:	48 89 85 78 f6 ff ff 	mov    QWORD PTR [rbp-0x988],rax
  7ada5e:	49 3b c7             	cmp    rax,r15
  7ada61:	0f 8f 62 44 00 00    	jg     7b1ec9 <t3dmix_mod_mp_t3dmix4_tile_+0x4dc9>
  7ada67:	4c 8b 8d 88 f3 ff ff 	mov    r9,QWORD PTR [rbp-0xc78]
  7ada6e:	41 3b d7             	cmp    edx,r15d
  7ada71:	48 8b b5 78 f3 ff ff 	mov    rsi,QWORD PTR [rbp-0xc88]
  7ada78:	48 8b bd 58 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xaa8]
  7ada7f:	44 0f 4c fa          	cmovl  r15d,edx
  7ada83:	4d 63 11             	movsxd r10,DWORD PTR [r9]
  7ada86:	4c 89 95 80 f6 ff ff 	mov    QWORD PTR [rbp-0x980],r10
  7ada8d:	48 89 bd c8 f6 ff ff 	mov    QWORD PTR [rbp-0x938],rdi
  7ada94:	4c 8b 15 a5 c0 30 00 	mov    r10,QWORD PTR [rip+0x30c0a5]        # ab9b40 <mod_scalars_mp_dt_>
  7ada9b:	48 8b bd 68 f3 ff ff 	mov    rdi,QWORD PTR [rbp-0xc98]
  7adaa2:	4c 89 95 b0 fb ff ff 	mov    QWORD PTR [rbp-0x450],r10
  7adaa9:	4c 8b 95 70 f3 ff ff 	mov    r10,QWORD PTR [rbp-0xc90]
  7adab0:	4c 63 06             	movsxd r8,DWORD PTR [rsi]
  7adab3:	48 8b 15 c6 e1 30 00 	mov    rdx,QWORD PTR [rip+0x30e1c6]        # abbc80 <mod_scalars_mp_nsperiodic_>
  7adaba:	4c 89 85 68 f8 ff ff 	mov    QWORD PTR [rbp-0x798],r8
  7adac1:	4c 8b 1d 58 de 30 00 	mov    r11,QWORD PTR [rip+0x30de58]        # abb920 <mod_scalars_mp_ewperiodic_>
  7adac8:	48 89 95 78 fa ff ff 	mov    QWORD PTR [rbp-0x588],rdx
  7adacf:	4c 8b 85 18 f6 ff ff 	mov    r8,QWORD PTR [rbp-0x9e8]
  7adad6:	4c 8b 0d c3 d0 30 00 	mov    r9,QWORD PTR [rip+0x30d0c3]        # ababa0 <mod_scalars_mp_compositegrid_>
  7adadd:	48 8b 57 50          	mov    rdx,QWORD PTR [rdi+0x50]
  7adae1:	4c 89 9d 70 fa ff ff 	mov    QWORD PTR [rbp-0x590],r11
  7adae8:	4c 89 85 90 fa ff ff 	mov    QWORD PTR [rbp-0x570],r8
  7adaef:	4c 89 8d f0 f8 ff ff 	mov    QWORD PTR [rbp-0x710],r9
  7adaf6:	4c 8b 1f             	mov    r11,QWORD PTR [rdi]
  7adaf9:	48 89 95 f0 fd ff ff 	mov    QWORD PTR [rbp-0x210],rdx
  7adb00:	4d 8b 02             	mov    r8,QWORD PTR [r10]
  7adb03:	4d 8b 4a 50          	mov    r9,QWORD PTR [r10+0x50]
  7adb07:	49 8b 54 24 68       	mov    rdx,QWORD PTR [r12+0x68]
  7adb0c:	4c 89 9d d8 f6 ff ff 	mov    QWORD PTR [rbp-0x928],r11
  7adb13:	48 8b 4f 38          	mov    rcx,QWORD PTR [rdi+0x38]
  7adb17:	4c 89 85 e0 f6 ff ff 	mov    QWORD PTR [rbp-0x920],r8
  7adb1e:	4c 89 8d 00 fe ff ff 	mov    QWORD PTR [rbp-0x200],r9
  7adb25:	4d 8b 5a 38          	mov    r11,QWORD PTR [r10+0x38]
  7adb29:	48 89 95 18 f9 ff ff 	mov    QWORD PTR [rbp-0x6e8],rdx
  7adb30:	4d 8b 14 24          	mov    r10,QWORD PTR [r12]
  7adb34:	49 8b 54 24 38       	mov    rdx,QWORD PTR [r12+0x38]
  7adb39:	49 8b 7c 24 50       	mov    rdi,QWORD PTR [r12+0x50]
  7adb3e:	4d 8b 84 24 80 00 00 	mov    r8,QWORD PTR [r12+0x80]
  7adb45:	00 
  7adb46:	4d 8b 8c 24 98 00 00 	mov    r9,QWORD PTR [r12+0x98]
  7adb4d:	00 
  7adb4e:	4c 8b a5 c0 f3 ff ff 	mov    r12,QWORD PTR [rbp-0xc40]
  7adb55:	48 89 8d 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rcx
  7adb5c:	48 8b 85 80 f3 ff ff 	mov    rax,QWORD PTR [rbp-0xc80]
  7adb63:	49 8b 0c 24          	mov    rcx,QWORD PTR [r12]
  7adb67:	48 89 8d f8 f6 ff ff 	mov    QWORD PTR [rbp-0x908],rcx
  7adb6e:	49 8b 4c 24 68       	mov    rcx,QWORD PTR [r12+0x68]
  7adb73:	48 89 8d 10 f9 ff ff 	mov    QWORD PTR [rbp-0x6f0],rcx
  7adb7a:	49 8b 4c 24 50       	mov    rcx,QWORD PTR [r12+0x50]
  7adb7f:	48 89 8d 10 fe ff ff 	mov    QWORD PTR [rbp-0x1f0],rcx
  7adb86:	48 8b 8d 90 f3 ff ff 	mov    rcx,QWORD PTR [rbp-0xc70]
  7adb8d:	4d 8b 64 24 38       	mov    r12,QWORD PTR [r12+0x38]
  7adb92:	4c 89 a5 38 ff ff ff 	mov    QWORD PTR [rbp-0xc8],r12
  7adb99:	4c 8b 21             	mov    r12,QWORD PTR [rcx]
  7adb9c:	4c 89 a5 f0 f6 ff ff 	mov    QWORD PTR [rbp-0x910],r12
  7adba3:	4c 8b 61 50          	mov    r12,QWORD PTR [rcx+0x50]
  7adba7:	4c 89 a5 08 fe ff ff 	mov    QWORD PTR [rbp-0x1f8],r12
  7adbae:	4c 8b a5 c8 f3 ff ff 	mov    r12,QWORD PTR [rbp-0xc38]
  7adbb5:	48 8b 49 38          	mov    rcx,QWORD PTR [rcx+0x38]
  7adbb9:	48 89 8d 30 ff ff ff 	mov    QWORD PTR [rbp-0xd0],rcx
  7adbc0:	49 8b 0c 24          	mov    rcx,QWORD PTR [r12]
  7adbc4:	48 89 8d e8 f6 ff ff 	mov    QWORD PTR [rbp-0x918],rcx
  7adbcb:	49 8b 4c 24 68       	mov    rcx,QWORD PTR [r12+0x68]
  7adbd0:	48 89 8d 08 f9 ff ff 	mov    QWORD PTR [rbp-0x6f8],rcx
  7adbd7:	49 8b 4c 24 50       	mov    rcx,QWORD PTR [r12+0x50]
  7adbdc:	48 89 8d f8 fd ff ff 	mov    QWORD PTR [rbp-0x208],rcx
  7adbe3:	48 8b 8d 98 f3 ff ff 	mov    rcx,QWORD PTR [rbp-0xc68]
  7adbea:	4d 8b 64 24 38       	mov    r12,QWORD PTR [r12+0x38]
  7adbef:	4c 89 a5 20 ff ff ff 	mov    QWORD PTR [rbp-0xe0],r12
  7adbf6:	4c 8b 21             	mov    r12,QWORD PTR [rcx]
  7adbf9:	4c 89 a5 c0 f6 ff ff 	mov    QWORD PTR [rbp-0x940],r12
  7adc00:	4c 8b 61 50          	mov    r12,QWORD PTR [rcx+0x50]
  7adc04:	4c 89 a5 e8 fd ff ff 	mov    QWORD PTR [rbp-0x218],r12
  7adc0b:	4c 8b a5 a0 f3 ff ff 	mov    r12,QWORD PTR [rbp-0xc60]
  7adc12:	48 8b 49 38          	mov    rcx,QWORD PTR [rcx+0x38]
  7adc16:	48 89 8d 18 ff ff ff 	mov    QWORD PTR [rbp-0xe8],rcx
  7adc1d:	49 8b 0c 24          	mov    rcx,QWORD PTR [r12]
  7adc21:	48 89 8d b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],rcx
  7adc28:	49 8b 4c 24 50       	mov    rcx,QWORD PTR [r12+0x50]
  7adc2d:	48 89 8d e0 fd ff ff 	mov    QWORD PTR [rbp-0x220],rcx
  7adc34:	48 8b 8d d0 f3 ff ff 	mov    rcx,QWORD PTR [rbp-0xc30]
  7adc3b:	4d 8b 64 24 38       	mov    r12,QWORD PTR [r12+0x38]
  7adc40:	4c 89 a5 10 ff ff ff 	mov    QWORD PTR [rbp-0xf0],r12
  7adc47:	4c 8b 21             	mov    r12,QWORD PTR [rcx]
  7adc4a:	4c 89 a5 b0 f6 ff ff 	mov    QWORD PTR [rbp-0x950],r12
  7adc51:	4c 8b 61 68          	mov    r12,QWORD PTR [rcx+0x68]
  7adc55:	4c 89 a5 00 f9 ff ff 	mov    QWORD PTR [rbp-0x700],r12
  7adc5c:	4c 8b 61 50          	mov    r12,QWORD PTR [rcx+0x50]
  7adc60:	4c 89 a5 d8 fd ff ff 	mov    QWORD PTR [rbp-0x228],r12
  7adc67:	4c 8b a5 a8 f3 ff ff 	mov    r12,QWORD PTR [rbp-0xc58]
  7adc6e:	48 8b 49 38          	mov    rcx,QWORD PTR [rcx+0x38]
  7adc72:	48 89 8d 08 ff ff ff 	mov    QWORD PTR [rbp-0xf8],rcx
  7adc79:	49 8b 0c 24          	mov    rcx,QWORD PTR [r12]
  7adc7d:	48 89 8d a8 f6 ff ff 	mov    QWORD PTR [rbp-0x958],rcx
  7adc84:	49 8b 4c 24 50       	mov    rcx,QWORD PTR [r12+0x50]
  7adc89:	48 89 8d d0 fd ff ff 	mov    QWORD PTR [rbp-0x230],rcx
  7adc90:	48 8b 8d b0 f3 ff ff 	mov    rcx,QWORD PTR [rbp-0xc50]
  7adc97:	4d 8b 64 24 38       	mov    r12,QWORD PTR [r12+0x38]
  7adc9c:	4c 89 a5 00 ff ff ff 	mov    QWORD PTR [rbp-0x100],r12
  7adca3:	4c 8b 21             	mov    r12,QWORD PTR [rcx]
  7adca6:	4c 89 a5 a0 f6 ff ff 	mov    QWORD PTR [rbp-0x960],r12
  7adcad:	4c 8b 61 50          	mov    r12,QWORD PTR [rcx+0x50]
  7adcb1:	4c 89 a5 c8 fd ff ff 	mov    QWORD PTR [rbp-0x238],r12
  7adcb8:	4c 8b a5 b8 f3 ff ff 	mov    r12,QWORD PTR [rbp-0xc48]
  7adcbf:	48 8b 49 38          	mov    rcx,QWORD PTR [rcx+0x38]
  7adcc3:	48 89 8d f8 fe ff ff 	mov    QWORD PTR [rbp-0x108],rcx
  7adcca:	49 8b 0c 24          	mov    rcx,QWORD PTR [r12]
  7adcce:	48 89 8d 98 f6 ff ff 	mov    QWORD PTR [rbp-0x968],rcx
  7adcd5:	49 8b 4c 24 50       	mov    rcx,QWORD PTR [r12+0x50]
  7adcda:	4d 8b 64 24 38       	mov    r12,QWORD PTR [r12+0x38]
  7adcdf:	4d 63 ff             	movsxd r15,r15d
  7adce2:	48 89 8d c0 fd ff ff 	mov    QWORD PTR [rbp-0x240],rcx
  7adce9:	4c 89 a5 f0 fe ff ff 	mov    QWORD PTR [rbp-0x110],r12
  7adcf0:	48 8b 0d 49 d7 30 00 	mov    rcx,QWORD PTR [rip+0x30d749]        # abb440 <mod_param_mp_domain_>
  7adcf7:	4c 8b 25 42 e3 30 00 	mov    r12,QWORD PTR [rip+0x30e342]        # abc040 <mod_param_mp_lbc_>
  7adcfe:	4c 2b bd 78 f6 ff ff 	sub    r15,QWORD PTR [rbp-0x988]
  7add05:	48 8b b5 b8 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xa48]
  7add0c:	49 ff c7             	inc    r15
  7add0f:	48 89 8d 70 f8 ff ff 	mov    QWORD PTR [rbp-0x790],rcx
  7add16:	4c 89 a5 90 f6 ff ff 	mov    QWORD PTR [rbp-0x970],r12
  7add1d:	48 63 00             	movsxd rax,DWORD PTR [rax]
  7add20:	48 8b 0d 81 e3 30 00 	mov    rcx,QWORD PTR [rip+0x30e381]        # abc0a8 <mod_param_mp_lbc_+0x68>
  7add27:	4c 8b 25 b2 ea 30 00 	mov    r12,QWORD PTR [rip+0x30eab2]        # abc7e0 <mod_ncparam_mp_istvar_>
  7add2e:	48 89 b5 d0 f6 ff ff 	mov    QWORD PTR [rbp-0x930],rsi
  7add35:	48 8b 35 84 c9 30 00 	mov    rsi,QWORD PTR [rip+0x30c984]        # aba6c0 <mod_param_mp_n_>
  7add3c:	48 89 8d 88 f6 ff ff 	mov    QWORD PTR [rbp-0x978],rcx
  7add43:	33 c9                	xor    ecx,ecx
  7add45:	4c 89 a5 30 f8 ff ff 	mov    QWORD PTR [rbp-0x7d0],r12
  7add4c:	4c 89 bd 60 f8 ff ff 	mov    QWORD PTR [rbp-0x7a0],r15
  7add53:	48 89 95 40 ff ff ff 	mov    QWORD PTR [rbp-0xc0],rdx
  7add5a:	48 89 bd 18 fe ff ff 	mov    QWORD PTR [rbp-0x1e8],rdi
  7add61:	4c 89 85 00 f7 ff ff 	mov    QWORD PTR [rbp-0x900],r8
  7add68:	48 89 85 08 f7 ff ff 	mov    QWORD PTR [rbp-0x8f8],rax
  7add6f:	4c 89 8d 10 f7 ff ff 	mov    QWORD PTR [rbp-0x8f0],r9
  7add76:	4c 89 95 18 f7 ff ff 	mov    QWORD PTR [rbp-0x8e8],r10
  7add7d:	4c 89 9d 48 ff ff ff 	mov    QWORD PTR [rbp-0xb8],r11
  7add84:	4e 63 44 ae fc       	movsxd r8,DWORD PTR [rsi+r13*4-0x4]
  7add89:	45 33 e4             	xor    r12d,r12d
  7add8c:	4d 85 c0             	test   r8,r8
  7add8f:	0f 8e 24 41 00 00    	jle    7b1eb9 <t3dmix_mod_mp_t3dmix4_tile_+0x4db9>
  7add95:	48 89 8d 48 f8 ff ff 	mov    QWORD PTR [rbp-0x7b8],rcx
  7add9c:	4c 89 a5 28 f9 ff ff 	mov    QWORD PTR [rbp-0x6d8],r12
  7adda3:	48 63 8d 30 fa ff ff 	movsxd rcx,DWORD PTR [rbp-0x5d0]
  7addaa:	4c 8b b5 f0 fd ff ff 	mov    r14,QWORD PTR [rbp-0x210]
  7addb1:	4c 8b a5 e8 fd ff ff 	mov    r12,QWORD PTR [rbp-0x218]
  7addb8:	4c 89 ad b8 fb ff ff 	mov    QWORD PTR [rbp-0x448],r13
  7addbf:	4c 0f af f1          	imul   r14,rcx
  7addc3:	4c 0f af e1          	imul   r12,rcx
  7addc7:	c5 fd 10 1d 91 c2 09 	vmovupd ymm3,YMMWORD PTR [rip+0x9c291]        # 84a060 <var$630.126.450+0xc0>
  7addce:	00 
  7addcf:	c5 f9 10 2d 19 dc 09 	vmovupd xmm5,XMMWORD PTR [rip+0x9dc19]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  7addd6:	00 
  7addd7:	c5 fb 10 25 b9 e3 09 	vmovsd xmm4,QWORD PTR [rip+0x9e3b9]        # 84c198 <__STRLITPACK_0.112+0x88>
  7addde:	00 
  7adddf:	c5 fb 10 15 99 e3 09 	vmovsd xmm2,QWORD PTR [rip+0x9e399]        # 84c180 <__STRLITPACK_0.112+0x70>
  7adde6:	00 
  7adde7:	4c 8b ad 00 fe ff ff 	mov    r13,QWORD PTR [rbp-0x200]
  7addee:	48 8b 85 08 fe ff ff 	mov    rax,QWORD PTR [rbp-0x1f8]
  7addf5:	4c 0f af e9          	imul   r13,rcx
  7addf9:	48 0f af c1          	imul   rax,rcx
  7addfd:	4c 8b bd e0 fd ff ff 	mov    r15,QWORD PTR [rbp-0x220]
  7ade04:	48 8b bd 10 fe ff ff 	mov    rdi,QWORD PTR [rbp-0x1f0]
  7ade0b:	4c 0f af f9          	imul   r15,rcx
  7ade0f:	48 0f af f9          	imul   rdi,rcx
  7ade13:	4c 63 8d 38 fa ff ff 	movsxd r9,DWORD PTR [rbp-0x5c8]
  7ade1a:	4c 2b c9             	sub    r9,rcx
  7ade1d:	44 8b 9d b8 fd ff ff 	mov    r11d,DWORD PTR [rbp-0x248]
  7ade24:	4c 89 85 80 fa ff ff 	mov    QWORD PTR [rbp-0x580],r8
  7ade2b:	4c 89 b5 98 f3 ff ff 	mov    QWORD PTR [rbp-0xc68],r14
  7ade32:	4c 89 a5 80 f3 ff ff 	mov    QWORD PTR [rbp-0xc80],r12
  7ade39:	41 8d 53 01          	lea    edx,[r11+0x1]
  7ade3d:	89 95 48 fe ff ff    	mov    DWORD PTR [rbp-0x1b8],edx
  7ade43:	4d 8d 41 02          	lea    r8,[r9+0x2]
  7ade47:	4c 89 85 50 fe ff ff 	mov    QWORD PTR [rbp-0x1b0],r8
  7ade4e:	49 ff c1             	inc    r9
  7ade51:	48 8b 95 d8 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x228]
  7ade58:	4c 8b a5 d0 fd ff ff 	mov    r12,QWORD PTR [rbp-0x230]
  7ade5f:	4c 8b b5 c8 fd ff ff 	mov    r14,QWORD PTR [rbp-0x238]
  7ade66:	4c 8b 85 c0 fd ff ff 	mov    r8,QWORD PTR [rbp-0x240]
  7ade6d:	48 89 b5 50 f8 ff ff 	mov    QWORD PTR [rbp-0x7b0],rsi
  7ade74:	48 89 d6             	mov    rsi,rdx
  7ade77:	4c 89 ad 90 f3 ff ff 	mov    QWORD PTR [rbp-0xc70],r13
  7ade7e:	4d 89 e5             	mov    r13,r12
  7ade81:	48 89 85 88 f3 ff ff 	mov    QWORD PTR [rbp-0xc78],rax
  7ade88:	4c 89 f0             	mov    rax,r14
  7ade8b:	4c 89 8d 60 fe ff ff 	mov    QWORD PTR [rbp-0x1a0],r9
  7ade92:	4d 89 c1             	mov    r9,r8
  7ade95:	4c 89 bd 78 f3 ff ff 	mov    QWORD PTR [rbp-0xc88],r15
  7ade9c:	48 89 bd b0 f3 ff ff 	mov    QWORD PTR [rbp-0xc50],rdi
  7adea3:	4c 63 bd b0 fd ff ff 	movsxd r15,DWORD PTR [rbp-0x250]
  7adeaa:	48 8b bd f8 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x208]
  7adeb1:	4c 8b 95 18 fe ff ff 	mov    r10,QWORD PTR [rbp-0x1e8]
  7adeb8:	48 0f af f1          	imul   rsi,rcx
  7adebc:	4c 0f af e9          	imul   r13,rcx
  7adec0:	48 0f af c1          	imul   rax,rcx
  7adec4:	4c 0f af c9          	imul   r9,rcx
  7adec8:	48 0f af f9          	imul   rdi,rcx
  7adecc:	4c 0f af d1          	imul   r10,rcx
  7aded0:	48 c1 e1 03          	shl    rcx,0x3
  7aded4:	48 89 8d c0 f7 ff ff 	mov    QWORD PTR [rbp-0x840],rcx
  7adedb:	48 8b 8d 40 ff ff ff 	mov    rcx,QWORD PTR [rbp-0xc0]
  7adee2:	49 0f af cf          	imul   rcx,r15
  7adee6:	4d 63 db             	movsxd r11,r11d
  7adee9:	4d 2b df             	sub    r11,r15
  7adeec:	4c 89 95 c0 f4 ff ff 	mov    QWORD PTR [rbp-0xb40],r10
  7adef3:	48 89 8d d0 f9 ff ff 	mov    QWORD PTR [rbp-0x630],rcx
  7adefa:	48 89 bd 98 f4 ff ff 	mov    QWORD PTR [rbp-0xb68],rdi
  7adf01:	48 8b bd 20 ff ff ff 	mov    rdi,QWORD PTR [rbp-0xe0]
  7adf08:	4a 8d 0c dd 08 00 00 	lea    rcx,[r11*8+0x8]
  7adf0f:	00 
  7adf10:	48 89 8d 18 f8 ff ff 	mov    QWORD PTR [rbp-0x7e8],rcx
  7adf17:	4d 8d 53 01          	lea    r10,[r11+0x1]
  7adf1b:	49 83 c3 02          	add    r11,0x2
  7adf1f:	4a 8d 0c fd 00 00 00 	lea    rcx,[r15*8+0x0]
  7adf26:	00 
  7adf27:	4c 89 5d e8          	mov    QWORD PTR [rbp-0x18],r11
  7adf2b:	48 89 8d 48 f9 ff ff 	mov    QWORD PTR [rbp-0x6b8],rcx
  7adf32:	44 89 d9             	mov    ecx,r11d
  7adf35:	83 e1 fe             	and    ecx,0xfffffffe
  7adf38:	41 83 e3 fc          	and    r11d,0xfffffffc
  7adf3c:	48 63 c9             	movsxd rcx,ecx
  7adf3f:	48 89 4d d0          	mov    QWORD PTR [rbp-0x30],rcx
  7adf43:	4d 63 db             	movsxd r11,r11d
  7adf46:	48 8b 8d 40 f3 ff ff 	mov    rcx,QWORD PTR [rbp-0xcc0]
  7adf4d:	4c 89 9d c8 fc ff ff 	mov    QWORD PTR [rbp-0x338],r11
  7adf54:	49 89 cb             	mov    r11,rcx
  7adf57:	4c 0f af da          	imul   r11,rdx
  7adf5b:	49 0f af ff          	imul   rdi,r15
  7adf5f:	49 f7 db             	neg    r11
  7adf62:	48 89 bd b0 f9 ff ff 	mov    QWORD PTR [rbp-0x650],rdi
  7adf69:	4c 89 95 58 ff ff ff 	mov    QWORD PTR [rbp-0xa8],r10
  7adf70:	4c 8b 95 b0 f6 ff ff 	mov    r10,QWORD PTR [rbp-0x950]
  7adf77:	48 8b bd 00 f9 ff ff 	mov    rdi,QWORD PTR [rbp-0x700]
  7adf7e:	4c 2b d7             	sub    r10,rdi
  7adf81:	4c 03 df             	add    r11,rdi
  7adf84:	48 8b 95 48 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xcb8]
  7adf8b:	4c 89 95 a0 f4 ff ff 	mov    QWORD PTR [rbp-0xb60],r10
  7adf92:	4c 89 9d a8 f9 ff ff 	mov    QWORD PTR [rbp-0x658],r11
  7adf99:	48 89 b5 a0 f3 ff ff 	mov    QWORD PTR [rbp-0xc60],rsi
  7adfa0:	4b 8d 3c 1a          	lea    rdi,[r10+r11*1]
  7adfa4:	49 89 d2             	mov    r10,rdx
  7adfa7:	4c 8b 9d 08 ff ff ff 	mov    r11,QWORD PTR [rbp-0xf8]
  7adfae:	4d 0f af d3          	imul   r10,r11
  7adfb2:	4d 0f af df          	imul   r11,r15
  7adfb6:	49 2b f2             	sub    rsi,r10
  7adfb9:	48 03 f7             	add    rsi,rdi
  7adfbc:	49 03 f3             	add    rsi,r11
  7adfbf:	48 89 b5 98 f9 ff ff 	mov    QWORD PTR [rbp-0x668],rsi
  7adfc6:	48 89 ce             	mov    rsi,rcx
  7adfc9:	49 0f af f4          	imul   rsi,r12
  7adfcd:	4c 8b 9d a8 f6 ff ff 	mov    r11,QWORD PTR [rbp-0x958]
  7adfd4:	4c 2b de             	sub    r11,rsi
  7adfd7:	48 89 bd d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],rdi
  7adfde:	48 89 d7             	mov    rdi,rdx
  7adfe1:	4c 8b a5 00 ff ff ff 	mov    r12,QWORD PTR [rbp-0x100]
  7adfe8:	4c 89 ad 70 f3 ff ff 	mov    QWORD PTR [rbp-0xc90],r13
  7adfef:	4c 89 9d f0 f9 ff ff 	mov    QWORD PTR [rbp-0x610],r11
  7adff6:	4d 03 eb             	add    r13,r11
  7adff9:	49 0f af fc          	imul   rdi,r12
  7adffd:	4d 0f af e7          	imul   r12,r15
  7ae001:	49 89 cb             	mov    r11,rcx
  7ae004:	49 f7 dc             	neg    r12
  7ae007:	4d 0f af de          	imul   r11,r14
  7ae00b:	4c 8b b5 a0 f6 ff ff 	mov    r14,QWORD PTR [rbp-0x960]
  7ae012:	4c 03 e7             	add    r12,rdi
  7ae015:	4d 2b f3             	sub    r14,r11
  7ae018:	4d 2b ec             	sub    r13,r12
  7ae01b:	4c 89 9d 58 f4 ff ff 	mov    QWORD PTR [rbp-0xba8],r11
  7ae022:	49 89 d3             	mov    r11,rdx
  7ae025:	4c 89 ad 68 fa ff ff 	mov    QWORD PTR [rbp-0x598],r13
  7ae02c:	4c 8b ad f8 fe ff ff 	mov    r13,QWORD PTR [rbp-0x108]
  7ae033:	4d 0f af dd          	imul   r11,r13
  7ae037:	4d 0f af ef          	imul   r13,r15
  7ae03b:	48 89 85 68 f3 ff ff 	mov    QWORD PTR [rbp-0xc98],rax
  7ae042:	49 03 c6             	add    rax,r14
  7ae045:	4c 89 b5 18 fa ff ff 	mov    QWORD PTR [rbp-0x5e8],r14
  7ae04c:	49 89 ce             	mov    r14,rcx
  7ae04f:	4d 0f af f0          	imul   r14,r8
  7ae053:	49 f7 dd             	neg    r13
  7ae056:	4d 03 eb             	add    r13,r11
  7ae059:	49 2b c5             	sub    rax,r13
  7ae05c:	49 89 d5             	mov    r13,rdx
  7ae05f:	4c 89 b5 50 f4 ff ff 	mov    QWORD PTR [rbp-0xbb0],r14
  7ae066:	4c 8b 85 98 f6 ff ff 	mov    r8,QWORD PTR [rbp-0x968]
  7ae06d:	4d 2b c6             	sub    r8,r14
  7ae070:	4c 8b b5 f0 fe ff ff 	mov    r14,QWORD PTR [rbp-0x110]
  7ae077:	4d 0f af ee          	imul   r13,r14
  7ae07b:	4d 0f af f7          	imul   r14,r15
  7ae07f:	49 f7 de             	neg    r14
  7ae082:	4c 89 9d f0 f4 ff ff 	mov    QWORD PTR [rbp-0xb10],r11
  7ae089:	4f 8d 1c 08          	lea    r11,[r8+r9*1]
  7ae08d:	4d 03 f5             	add    r14,r13
  7ae090:	4d 2b de             	sub    r11,r14
  7ae093:	49 89 ce             	mov    r14,rcx
  7ae096:	4c 0f af b5 f8 fd ff 	imul   r14,QWORD PTR [rbp-0x208]
  7ae09d:	ff 
  7ae09e:	4c 89 85 e8 f9 ff ff 	mov    QWORD PTR [rbp-0x618],r8
  7ae0a5:	4c 8b 85 e8 f6 ff ff 	mov    r8,QWORD PTR [rbp-0x918]
  7ae0ac:	4c 89 ad f8 f4 ff ff 	mov    QWORD PTR [rbp-0xb08],r13
  7ae0b3:	4d 89 c5             	mov    r13,r8
  7ae0b6:	4c 8b bd 08 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6f8]
  7ae0bd:	4d 2b ef             	sub    r13,r15
  7ae0c0:	4d 2b fe             	sub    r15,r14
  7ae0c3:	4c 89 9d 50 fa ff ff 	mov    QWORD PTR [rbp-0x5b0],r11
  7ae0ca:	49 89 d3             	mov    r11,rdx
  7ae0cd:	4c 89 ad b8 f4 ff ff 	mov    QWORD PTR [rbp-0xb48],r13
  7ae0d4:	4c 89 95 e0 f4 ff ff 	mov    QWORD PTR [rbp-0xb20],r10
  7ae0db:	4d 89 f2             	mov    r10,r14
  7ae0de:	4c 89 b5 d0 f4 ff ff 	mov    QWORD PTR [rbp-0xb30],r14
  7ae0e5:	4f 8d 74 3d 00       	lea    r14,[r13+r15*1+0x0]
  7ae0ea:	4c 8b ad 20 ff ff ff 	mov    r13,QWORD PTR [rbp-0xe0]
  7ae0f1:	4d 0f af dd          	imul   r11,r13
  7ae0f5:	4c 89 8d 60 f3 ff ff 	mov    QWORD PTR [rbp-0xca0],r9
  7ae0fc:	49 f7 dd             	neg    r13
  7ae0ff:	4c 8b 8d 98 f4 ff ff 	mov    r9,QWORD PTR [rbp-0xb68]
  7ae106:	4d 2b d1             	sub    r10,r9
  7ae109:	4d 2b cb             	sub    r9,r11
  7ae10c:	48 89 bd e8 f4 ff ff 	mov    QWORD PTR [rbp-0xb18],rdi
  7ae113:	4d 03 ce             	add    r9,r14
  7ae116:	4c 89 b5 c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r14
  7ae11d:	48 89 85 58 fa ff ff 	mov    QWORD PTR [rbp-0x5a8],rax
  7ae124:	48 89 c8             	mov    rax,rcx
  7ae127:	48 8b bd 10 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x8f0]
  7ae12e:	4c 8b b5 78 f6 ff ff 	mov    r14,QWORD PTR [rbp-0x988]
  7ae135:	4c 0f af f7          	imul   r14,rdi
  7ae139:	48 0f af 85 18 fe ff 	imul   rax,QWORD PTR [rbp-0x1e8]
  7ae140:	ff 
  7ae141:	48 89 b5 60 f4 ff ff 	mov    QWORD PTR [rbp-0xba0],rsi
  7ae148:	48 8b b5 b0 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x650]
  7ae14f:	4c 03 ce             	add    r9,rsi
  7ae152:	4c 89 9d 00 f5 ff ff 	mov    QWORD PTR [rbp-0xb00],r11
  7ae159:	4c 2b de             	sub    r11,rsi
  7ae15c:	4d 03 da             	add    r11,r10
  7ae15f:	49 f7 db             	neg    r11
  7ae162:	4c 89 8d 60 f9 ff ff 	mov    QWORD PTR [rbp-0x6a0],r9
  7ae169:	4d 03 d8             	add    r11,r8
  7ae16c:	4c 8b 8d 00 f7 ff ff 	mov    r9,QWORD PTR [rbp-0x900]
  7ae173:	4d 03 dd             	add    r11,r13
  7ae176:	4c 8b 85 18 f9 ff ff 	mov    r8,QWORD PTR [rbp-0x6e8]
  7ae17d:	4c 89 95 c8 f4 ff ff 	mov    QWORD PTR [rbp-0xb38],r10
  7ae184:	49 89 fa             	mov    r10,rdi
  7ae187:	4c 89 ad d0 f8 ff ff 	mov    QWORD PTR [rbp-0x730],r13
  7ae18e:	4d 89 f5             	mov    r13,r14
  7ae191:	4c 89 9d 80 f9 ff ff 	mov    QWORD PTR [rbp-0x680],r11
  7ae198:	4f 8d 1c 01          	lea    r11,[r9+r8*1]
  7ae19c:	4d 2b d6             	sub    r10,r14
  7ae19f:	4c 2b c0             	sub    r8,rax
  7ae1a2:	4d 2b e9             	sub    r13,r9
  7ae1a5:	4d 03 d3             	add    r10,r11
  7ae1a8:	4c 0f af 8d 80 f6 ff 	imul   r9,QWORD PTR [rbp-0x980]
  7ae1af:	ff 
  7ae1b0:	4c 89 85 38 f4 ff ff 	mov    QWORD PTR [rbp-0xbc8],r8
  7ae1b7:	4d 2b d8             	sub    r11,r8
  7ae1ba:	4c 8b 85 40 ff ff ff 	mov    r8,QWORD PTR [rbp-0xc0]
  7ae1c1:	49 0f af d0          	imul   rdx,r8
  7ae1c5:	4c 8b a5 18 f7 ff ff 	mov    r12,QWORD PTR [rbp-0x8e8]
  7ae1cc:	49 f7 d8             	neg    r8
  7ae1cf:	4c 2b e7             	sub    r12,rdi
  7ae1d2:	4d 03 c1             	add    r8,r9
  7ae1d5:	48 0f af bd 48 f8 ff 	imul   rdi,QWORD PTR [rbp-0x7b8]
  7ae1dc:	ff 
  7ae1dd:	4d 03 f4             	add    r14,r12
  7ae1e0:	4c 89 95 30 f4 ff ff 	mov    QWORD PTR [rbp-0xbd0],r10
  7ae1e7:	4d 2b f3             	sub    r14,r11
  7ae1ea:	4c 8b 95 d0 f9 ff ff 	mov    r10,QWORD PTR [rbp-0x630]
  7ae1f1:	4f 8d 1c 2c          	lea    r11,[r12+r13*1]
  7ae1f5:	4c 89 a5 c8 f9 ff ff 	mov    QWORD PTR [rbp-0x638],r12
  7ae1fc:	4c 8b a5 88 fa ff ff 	mov    r12,QWORD PTR [rbp-0x578]
  7ae203:	4c 89 bd 58 f9 ff ff 	mov    QWORD PTR [rbp-0x6a8],r15
  7ae20a:	4b 8d 34 11          	lea    rsi,[r9+r10*1]
  7ae20e:	4c 8b bd c0 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb40]
  7ae215:	49 2b c7             	sub    rax,r15
  7ae218:	49 f7 da             	neg    r10
  7ae21b:	4c 2b d8             	sub    r11,rax
  7ae21e:	48 89 85 20 f9 ff ff 	mov    QWORD PTR [rbp-0x6e0],rax
  7ae225:	4a 8d 04 e5 00 00 00 	lea    rax,[r12*8+0x0]
  7ae22c:	00 
  7ae22d:	4c 03 d2             	add    r10,rdx
  7ae230:	4c 2b fa             	sub    r15,rdx
  7ae233:	4c 89 8d d8 f4 ff ff 	mov    QWORD PTR [rbp-0xb28],r9
  7ae23a:	4d 2b d0             	sub    r10,r8
  7ae23d:	48 89 85 40 f4 ff ff 	mov    QWORD PTR [rbp-0xbc0],rax
  7ae244:	49 f7 da             	neg    r10
  7ae247:	4c 8b 8d 48 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x6b8]
  7ae24e:	4c 03 fe             	add    r15,rsi
  7ae251:	4c 2b c8             	sub    r9,rax
  7ae254:	4d 03 d3             	add    r10,r11
  7ae257:	48 8b 85 38 f3 ff ff 	mov    rax,QWORD PTR [rbp-0xcc8]
  7ae25e:	4d 03 fe             	add    r15,r14
  7ae261:	49 2b c4             	sub    rax,r12
  7ae264:	4c 03 d7             	add    r10,rdi
  7ae267:	4c 89 b5 90 f8 ff ff 	mov    QWORD PTR [rbp-0x770],r14
  7ae26e:	49 89 c6             	mov    r14,rax
  7ae271:	4c 89 95 d0 f9 ff ff 	mov    QWORD PTR [rbp-0x630],r10
  7ae278:	4c 03 ff             	add    r15,rdi
  7ae27b:	49 c1 e6 04          	shl    r14,0x4
  7ae27f:	4c 89 b5 88 f7 ff ff 	mov    QWORD PTR [rbp-0x878],r14
  7ae286:	4c 8d 50 01          	lea    r10,[rax+0x1]
  7ae28a:	4c 8b b5 c0 f7 ff ff 	mov    r14,QWORD PTR [rbp-0x840]
  7ae291:	4d 0f af f2          	imul   r14,r10
  7ae295:	4c 89 bd 70 f9 ff ff 	mov    QWORD PTR [rbp-0x690],r15
  7ae29c:	4c 8d 3c c5 00 00 00 	lea    r15,[rax*8+0x0]
  7ae2a3:	00 
  7ae2a4:	4d 89 fc             	mov    r12,r15
  7ae2a7:	4d 8d 04 c6          	lea    r8,[r14+rax*8]
  7ae2ab:	4c 89 85 a0 f7 ff ff 	mov    QWORD PTR [rbp-0x860],r8
  7ae2b2:	49 8d 47 08          	lea    rax,[r15+0x8]
  7ae2b6:	4c 8b 85 30 f3 ff ff 	mov    r8,QWORD PTR [rbp-0xcd0]
  7ae2bd:	49 f7 dc             	neg    r12
  7ae2c0:	4c 0f af c0          	imul   r8,rax
  7ae2c4:	4d 2b f8             	sub    r15,r8
  7ae2c7:	4c 89 ad a8 f3 ff ff 	mov    QWORD PTR [rbp-0xc58],r13
  7ae2ce:	4f 8d 2c 34          	lea    r13,[r12+r14*1]
  7ae2d2:	4c 89 b5 c0 f7 ff ff 	mov    QWORD PTR [rbp-0x840],r14
  7ae2d9:	4d 2b e0             	sub    r12,r8
  7ae2dc:	4c 89 ad b8 f7 ff ff 	mov    QWORD PTR [rbp-0x848],r13
  7ae2e3:	4f 8d 2c 31          	lea    r13,[r9+r14*1]
  7ae2e7:	4d 2b f0             	sub    r14,r8
  7ae2ea:	4c 89 bd 40 fb ff ff 	mov    QWORD PTR [rbp-0x4c0],r15
  7ae2f1:	4d 03 fd             	add    r15,r13
  7ae2f4:	4d 2b e8             	sub    r13,r8
  7ae2f7:	4c 89 b5 b0 f7 ff ff 	mov    QWORD PTR [rbp-0x850],r14
  7ae2fe:	4c 89 85 50 fb ff ff 	mov    QWORD PTR [rbp-0x4b0],r8
  7ae305:	4f 8d 04 31          	lea    r8,[r9+r14*1]
  7ae309:	4c 8b b5 c8 f6 ff ff 	mov    r14,QWORD PTR [rbp-0x938]
  7ae310:	4c 89 a5 a0 fd ff ff 	mov    QWORD PTR [rbp-0x260],r12
  7ae317:	4c 8b a5 d0 f6 ff ff 	mov    r12,QWORD PTR [rbp-0x930]
  7ae31e:	4d 03 fc             	add    r15,r12
  7ae321:	4c 89 bd f0 fc ff ff 	mov    QWORD PTR [rbp-0x310],r15
  7ae328:	4f 8d 3c 2e          	lea    r15,[r14+r13*1]
  7ae32c:	4c 89 bd d8 fc ff ff 	mov    QWORD PTR [rbp-0x328],r15
  7ae333:	49 89 cf             	mov    r15,rcx
  7ae336:	4c 0f af bd 10 fe ff 	imul   r15,QWORD PTR [rbp-0x1f0]
  7ae33d:	ff 
  7ae33e:	48 89 85 58 fe ff ff 	mov    QWORD PTR [rbp-0x1a8],rax
  7ae345:	49 f7 df             	neg    r15
  7ae348:	48 8b 85 90 fa ff ff 	mov    rax,QWORD PTR [rbp-0x570]
  7ae34f:	4c 03 c0             	add    r8,rax
  7ae352:	4c 89 85 e8 fc ff ff 	mov    QWORD PTR [rbp-0x318],r8
  7ae359:	4d 03 e5             	add    r12,r13
  7ae35c:	44 8b 85 38 fa ff ff 	mov    r8d,DWORD PTR [rbp-0x5c8]
  7ae363:	4c 03 e8             	add    r13,rax
  7ae366:	4c 89 ad f8 fc ff ff 	mov    QWORD PTR [rbp-0x308],r13
  7ae36d:	4c 89 a5 e0 fc ff ff 	mov    QWORD PTR [rbp-0x320],r12
  7ae374:	4c 8b ad 58 ff ff ff 	mov    r13,QWORD PTR [rbp-0xa8]
  7ae37b:	45 8d 70 01          	lea    r14d,[r8+0x1]
  7ae37f:	44 89 b5 40 fa ff ff 	mov    DWORD PTR [rbp-0x5c0],r14d
  7ae386:	44 89 e8             	mov    eax,r13d
  7ae389:	4c 8b b5 f8 f6 ff ff 	mov    r14,QWORD PTR [rbp-0x908]
  7ae390:	45 89 e8             	mov    r8d,r13d
  7ae393:	4c 8b a5 10 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6f0]
  7ae39a:	4d 2b f4             	sub    r14,r12
  7ae39d:	4d 03 fc             	add    r15,r12
  7ae3a0:	83 e0 fe             	and    eax,0xfffffffe
  7ae3a3:	41 83 e0 f8          	and    r8d,0xfffffff8
  7ae3a7:	41 83 e5 fc          	and    r13d,0xfffffffc
  7ae3ab:	48 98                	cdqe   
  7ae3ad:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  7ae3b1:	4d 63 c0             	movsxd r8,r8d
  7ae3b4:	48 8b 85 48 f3 ff ff 	mov    rax,QWORD PTR [rbp-0xcb8]
  7ae3bb:	4c 89 85 70 f7 ff ff 	mov    QWORD PTR [rbp-0x890],r8
  7ae3c2:	49 89 c0             	mov    r8,rax
  7ae3c5:	4c 89 bd a0 f9 ff ff 	mov    QWORD PTR [rbp-0x660],r15
  7ae3cc:	4c 89 b5 a8 f4 ff ff 	mov    QWORD PTR [rbp-0xb58],r14
  7ae3d3:	4d 03 f7             	add    r14,r15
  7ae3d6:	4c 8b bd 38 ff ff ff 	mov    r15,QWORD PTR [rbp-0xc8]
  7ae3dd:	4d 0f af c7          	imul   r8,r15
  7ae3e1:	4c 63 a5 b0 fd ff ff 	movsxd r12,DWORD PTR [rbp-0x250]
  7ae3e8:	4d 0f af fc          	imul   r15,r12
  7ae3ec:	4d 63 ed             	movsxd r13,r13d
  7ae3ef:	4c 89 6d e0          	mov    QWORD PTR [rbp-0x20],r13
  7ae3f3:	4c 8b ad b0 f3 ff ff 	mov    r13,QWORD PTR [rbp-0xc50]
  7ae3fa:	4d 2b e8             	sub    r13,r8
  7ae3fd:	4d 03 ee             	add    r13,r14
  7ae400:	4c 89 85 10 f5 ff ff 	mov    QWORD PTR [rbp-0xaf0],r8
  7ae407:	49 89 c0             	mov    r8,rax
  7ae40a:	4d 03 ef             	add    r13,r15
  7ae40d:	4c 8b bd 30 ff ff ff 	mov    r15,QWORD PTR [rbp-0xd0]
  7ae414:	4d 0f af c7          	imul   r8,r15
  7ae418:	4d 0f af fc          	imul   r15,r12
  7ae41c:	4c 89 ad 78 f9 ff ff 	mov    QWORD PTR [rbp-0x688],r13
  7ae423:	49 89 cd             	mov    r13,rcx
  7ae426:	4c 0f af ad 08 fe ff 	imul   r13,QWORD PTR [rbp-0x1f8]
  7ae42d:	ff 
  7ae42e:	49 f7 df             	neg    r15
  7ae431:	4c 89 85 18 f5 ff ff 	mov    QWORD PTR [rbp-0xae8],r8
  7ae438:	4d 03 f8             	add    r15,r8
  7ae43b:	49 89 c8             	mov    r8,rcx
  7ae43e:	4c 0f af 85 e8 fd ff 	imul   r8,QWORD PTR [rbp-0x218]
  7ae445:	ff 
  7ae446:	4c 89 b5 e0 f8 ff ff 	mov    QWORD PTR [rbp-0x720],r14
  7ae44d:	4c 8b b5 f0 f6 ff ff 	mov    r14,QWORD PTR [rbp-0x910]
  7ae454:	4d 2b f5             	sub    r14,r13
  7ae457:	4c 89 ad 78 f4 ff ff 	mov    QWORD PTR [rbp-0xb88],r13
  7ae45e:	4c 8b ad 88 f3 ff ff 	mov    r13,QWORD PTR [rbp-0xc78]
  7ae465:	4c 89 b5 f8 f9 ff ff 	mov    QWORD PTR [rbp-0x608],r14
  7ae46c:	4c 89 85 70 f4 ff ff 	mov    QWORD PTR [rbp-0xb90],r8
  7ae473:	48 89 95 08 f5 ff ff 	mov    QWORD PTR [rbp-0xaf8],rdx
  7ae47a:	4d 03 f5             	add    r14,r13
  7ae47d:	4d 2b f7             	sub    r14,r15
  7ae480:	4c 89 b5 88 f9 ff ff 	mov    QWORD PTR [rbp-0x678],r14
  7ae487:	4c 8b b5 c0 f6 ff ff 	mov    r14,QWORD PTR [rbp-0x940]
  7ae48e:	4d 2b f0             	sub    r14,r8
  7ae491:	49 89 c0             	mov    r8,rax
  7ae494:	4c 8b ad 18 ff ff ff 	mov    r13,QWORD PTR [rbp-0xe8]
  7ae49b:	4d 0f af c5          	imul   r8,r13
  7ae49f:	4d 0f af ec          	imul   r13,r12
  7ae4a3:	49 f7 dd             	neg    r13
  7ae4a6:	4c 89 85 20 f5 ff ff 	mov    QWORD PTR [rbp-0xae0],r8
  7ae4ad:	4d 03 e8             	add    r13,r8
  7ae4b0:	49 89 c8             	mov    r8,rcx
  7ae4b3:	4c 0f af 85 e0 fd ff 	imul   r8,QWORD PTR [rbp-0x220]
  7ae4ba:	ff 
  7ae4bb:	4c 8b bd 80 f3 ff ff 	mov    r15,QWORD PTR [rbp-0xc80]
  7ae4c2:	4c 89 b5 00 fa ff ff 	mov    QWORD PTR [rbp-0x600],r14
  7ae4c9:	4c 89 85 68 f4 ff ff 	mov    QWORD PTR [rbp-0xb98],r8
  7ae4d0:	48 89 bd c0 f9 ff ff 	mov    QWORD PTR [rbp-0x640],rdi
  7ae4d7:	4d 03 f7             	add    r14,r15
  7ae4da:	4d 2b f5             	sub    r14,r13
  7ae4dd:	4c 89 b5 b8 f9 ff ff 	mov    QWORD PTR [rbp-0x648],r14
  7ae4e4:	4c 8b b5 b8 f6 ff ff 	mov    r14,QWORD PTR [rbp-0x948]
  7ae4eb:	4d 2b f0             	sub    r14,r8
  7ae4ee:	49 89 c0             	mov    r8,rax
  7ae4f1:	4c 8b bd 10 ff ff ff 	mov    r15,QWORD PTR [rbp-0xf0]
  7ae4f8:	4d 0f af c7          	imul   r8,r15
  7ae4fc:	4d 0f af fc          	imul   r15,r12
  7ae500:	49 f7 df             	neg    r15
  7ae503:	4c 8b ad 78 f3 ff ff 	mov    r13,QWORD PTR [rbp-0xc88]
  7ae50a:	4d 03 f8             	add    r15,r8
  7ae50d:	4c 89 85 28 f5 ff ff 	mov    QWORD PTR [rbp-0xad8],r8
  7ae514:	4c 8b 85 f8 fd ff ff 	mov    r8,QWORD PTR [rbp-0x208]
  7ae51b:	49 f7 d8             	neg    r8
  7ae51e:	4c 89 85 68 f9 ff ff 	mov    QWORD PTR [rbp-0x698],r8
  7ae525:	4c 2b 85 00 f5 ff ff 	sub    r8,QWORD PTR [rbp-0xb00]
  7ae52c:	4c 89 b5 08 fa ff ff 	mov    QWORD PTR [rbp-0x5f8],r14
  7ae533:	4d 03 f5             	add    r14,r13
  7ae536:	4c 89 85 e8 f8 ff ff 	mov    QWORD PTR [rbp-0x718],r8
  7ae53d:	4d 2b f7             	sub    r14,r15
  7ae540:	4c 8b ad c8 f4 ff ff 	mov    r13,QWORD PTR [rbp-0xb38]
  7ae547:	4d 2b e8             	sub    r13,r8
  7ae54a:	4c 8b 85 18 fe ff ff 	mov    r8,QWORD PTR [rbp-0x1e8]
  7ae551:	49 f7 dd             	neg    r13
  7ae554:	49 f7 d8             	neg    r8
  7ae557:	4c 89 85 b0 f4 ff ff 	mov    QWORD PTR [rbp-0xb50],r8
  7ae55e:	4c 2b c2             	sub    r8,rdx
  7ae561:	48 89 ca             	mov    rdx,rcx
  7ae564:	49 03 f0             	add    rsi,r8
  7ae567:	48 0f af 95 f0 fd ff 	imul   rdx,QWORD PTR [rbp-0x210]
  7ae56e:	ff 
  7ae56f:	48 0f af 8d 00 fe ff 	imul   rcx,QWORD PTR [rbp-0x200]
  7ae576:	ff 
  7ae577:	4c 03 ad e8 f6 ff ff 	add    r13,QWORD PTR [rbp-0x918]
  7ae57e:	4c 03 de             	add    r11,rsi
  7ae581:	4c 01 ad b0 f9 ff ff 	add    QWORD PTR [rbp-0x650],r13
  7ae588:	49 89 c5             	mov    r13,rax
  7ae58b:	4c 89 b5 90 f9 ff ff 	mov    QWORD PTR [rbp-0x670],r14
  7ae592:	4c 03 df             	add    r11,rdi
  7ae595:	4c 8b b5 28 ff ff ff 	mov    r14,QWORD PTR [rbp-0xd8]
  7ae59c:	4d 0f af ee          	imul   r13,r14
  7ae5a0:	4d 0f af f4          	imul   r14,r12
  7ae5a4:	4c 8b 85 d8 f6 ff ff 	mov    r8,QWORD PTR [rbp-0x928]
  7ae5ab:	49 f7 de             	neg    r14
  7ae5ae:	4c 2b c2             	sub    r8,rdx
  7ae5b1:	4d 03 f5             	add    r14,r13
  7ae5b4:	48 89 95 90 f4 ff ff 	mov    QWORD PTR [rbp-0xb70],rdx
  7ae5bb:	48 8b 95 98 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xc68]
  7ae5c2:	48 8b bd e0 f6 ff ff 	mov    rdi,QWORD PTR [rbp-0x920]
  7ae5c9:	48 89 8d 80 f4 ff ff 	mov    QWORD PTR [rbp-0xb80],rcx
  7ae5d0:	48 2b f9             	sub    rdi,rcx
  7ae5d3:	48 63 8d 50 f3 ff ff 	movsxd rcx,DWORD PTR [rbp-0xcb0]
  7ae5da:	4c 89 85 10 fa ff ff 	mov    QWORD PTR [rbp-0x5f0],r8
  7ae5e1:	4c 89 9d 50 f9 ff ff 	mov    QWORD PTR [rbp-0x6b0],r11
  7ae5e8:	4d 8d 1c 10          	lea    r11,[r8+rdx*1]
  7ae5ec:	4c 89 ad 30 f5 ff ff 	mov    QWORD PTR [rbp-0xad0],r13
  7ae5f3:	49 89 cd             	mov    r13,rcx
  7ae5f6:	4c 8b 85 d8 f9 ff ff 	mov    r8,QWORD PTR [rbp-0x628]
  7ae5fd:	4d 2b de             	sub    r11,r14
  7ae600:	4d 2b e8             	sub    r13,r8
  7ae603:	48 8b b5 48 ff ff ff 	mov    rsi,QWORD PTR [rbp-0xb8]
  7ae60a:	4c 0f af e6          	imul   r12,rsi
  7ae60e:	48 0f af c6          	imul   rax,rsi
  7ae612:	4c 89 9d 60 fa ff ff 	mov    QWORD PTR [rbp-0x5a0],r11
  7ae619:	4d 8d 75 02          	lea    r14,[r13+0x2]
  7ae61d:	49 ff c5             	inc    r13
  7ae620:	4c 8d 1c cd 00 00 00 	lea    r11,[rcx*8+0x0]
  7ae627:	00 
  7ae628:	4c 89 ad 98 fd ff ff 	mov    QWORD PTR [rbp-0x268],r13
  7ae62f:	4d 8d 6b 08          	lea    r13,[r11+0x8]
  7ae633:	4d 0f af ea          	imul   r13,r10
  7ae637:	4d 0f af da          	imul   r11,r10
  7ae63b:	48 8b 95 90 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xc70]
  7ae642:	49 f7 dc             	neg    r12
  7ae645:	4c 03 e0             	add    r12,rax
  7ae648:	4c 89 ee             	mov    rsi,r13
  7ae64b:	48 89 85 38 f5 ff ff 	mov    QWORD PTR [rbp-0xac8],rax
  7ae652:	48 8b 85 c8 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x938]
  7ae659:	4c 8d 3c 17          	lea    r15,[rdi+rdx*1]
  7ae65d:	4d 2b fc             	sub    r15,r12
  7ae660:	4b 8d 14 29          	lea    rdx,[r9+r13*1]
  7ae664:	4c 8b a5 b8 fb ff ff 	mov    r12,QWORD PTR [rbp-0x448]
  7ae66b:	49 c1 e4 04          	shl    r12,0x4
  7ae66f:	4c 89 a5 f8 f8 ff ff 	mov    QWORD PTR [rbp-0x708],r12
  7ae676:	4c 8b a5 50 fb ff ff 	mov    r12,QWORD PTR [rbp-0x4b0]
  7ae67d:	49 2b d4             	sub    rdx,r12
  7ae680:	48 03 d0             	add    rdx,rax
  7ae683:	49 2b f4             	sub    rsi,r12
  7ae686:	48 89 95 d8 f7 ff ff 	mov    QWORD PTR [rbp-0x828],rdx
  7ae68d:	4a 8d 14 28          	lea    rdx,[rax+r13*1]
  7ae691:	49 2b d3             	sub    rdx,r11
  7ae694:	49 03 f1             	add    rsi,r9
  7ae697:	4c 89 b5 80 fd ff ff 	mov    QWORD PTR [rbp-0x280],r14
  7ae69e:	48 2b d0             	sub    rdx,rax
  7ae6a1:	48 89 8d 28 fa ff ff 	mov    QWORD PTR [rbp-0x5d8],rcx
  7ae6a8:	4e 8d 34 18          	lea    r14,[rax+r11*1]
  7ae6ac:	48 8b 8d 18 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x7e8]
  7ae6b3:	48 3b d1             	cmp    rdx,rcx
  7ae6b6:	ba 00 00 00 00       	mov    edx,0x0
  7ae6bb:	4c 89 bd 48 fa ff ff 	mov    QWORD PTR [rbp-0x5b8],r15
  7ae6c2:	41 89 d7             	mov    r15d,edx
  7ae6c5:	41 0f 9f c7          	setg   r15b
  7ae6c9:	4d 2b f5             	sub    r14,r13
  7ae6cc:	4c 2b f0             	sub    r14,rax
  7ae6cf:	45 33 ed             	xor    r13d,r13d
  7ae6d2:	4c 3b f1             	cmp    r14,rcx
  7ae6d5:	4c 8b b5 08 fd ff ff 	mov    r14,QWORD PTR [rbp-0x2f8]
  7ae6dc:	48 89 bd 20 fa ff ff 	mov    QWORD PTR [rbp-0x5e0],rdi
  7ae6e3:	4c 89 df             	mov    rdi,r11
  7ae6e6:	41 0f 9f c5          	setg   r13b
  7ae6ea:	4d 03 d9             	add    r11,r9
  7ae6ed:	4d 2b dc             	sub    r11,r12
  7ae6f0:	45 0b fd             	or     r15d,r13d
  7ae6f3:	4c 03 d8             	add    r11,rax
  7ae6f6:	48 03 f0             	add    rsi,rax
  7ae6f9:	4c 89 9d 20 f8 ff ff 	mov    QWORD PTR [rbp-0x7e0],r11
  7ae700:	4d 8d 5e 01          	lea    r11,[r14+0x1]
  7ae704:	4c 89 9d 78 fd ff ff 	mov    QWORD PTR [rbp-0x288],r11
  7ae70b:	49 2b fc             	sub    rdi,r12
  7ae70e:	4c 8b 9d 10 fd ff ff 	mov    r11,QWORD PTR [rbp-0x2f0]
  7ae715:	49 03 f9             	add    rdi,r9
  7ae718:	4d 2b f3             	sub    r14,r11
  7ae71b:	48 03 f8             	add    rdi,rax
  7ae71e:	48 89 b5 f8 f7 ff ff 	mov    QWORD PTR [rbp-0x808],rsi
  7ae725:	48 8b b5 a0 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x860]
  7ae72c:	48 89 bd 00 f8 ff ff 	mov    QWORD PTR [rbp-0x800],rdi
  7ae733:	44 89 bd c8 f7 ff ff 	mov    DWORD PTR [rbp-0x838],r15d
  7ae73a:	4d 8d 6e 01          	lea    r13,[r14+0x1]
  7ae73e:	49 83 c6 02          	add    r14,0x2
  7ae742:	4c 89 b5 68 fe ff ff 	mov    QWORD PTR [rbp-0x198],r14
  7ae749:	4e 8d 34 dd 00 00 00 	lea    r14,[r11*8+0x0]
  7ae750:	00 
  7ae751:	4c 89 b5 b8 f8 ff ff 	mov    QWORD PTR [rbp-0x748],r14
  7ae758:	4c 2b b5 40 f4 ff ff 	sub    r14,QWORD PTR [rbp-0xbc0]
  7ae75f:	4c 8b bd b0 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x850]
  7ae766:	4c 89 ad a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],r13
  7ae76d:	4c 8b 9d c0 f7 ff ff 	mov    r11,QWORD PTR [rbp-0x840]
  7ae774:	49 8d 3c 36          	lea    rdi,[r14+rsi*1]
  7ae778:	49 2b fc             	sub    rdi,r12
  7ae77b:	4f 8d 2c 37          	lea    r13,[r15+r14*1]
  7ae77f:	48 03 f8             	add    rdi,rax
  7ae782:	4c 03 e8             	add    r13,rax
  7ae785:	48 89 bd 90 f7 ff ff 	mov    QWORD PTR [rbp-0x870],rdi
  7ae78c:	4b 8d 34 1e          	lea    rsi,[r14+r11*1]
  7ae790:	48 8b bd b8 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x848]
  7ae797:	49 2b f4             	sub    rsi,r12
  7ae79a:	4c 89 ad 80 f7 ff ff 	mov    QWORD PTR [rbp-0x880],r13
  7ae7a1:	48 03 f0             	add    rsi,rax
  7ae7a4:	48 89 b5 98 f7 ff ff 	mov    QWORD PTR [rbp-0x868],rsi
  7ae7ab:	4d 8d 2c 3e          	lea    r13,[r14+rdi*1]
  7ae7af:	4d 2b ec             	sub    r13,r12
  7ae7b2:	4a 8d 3c c5 00 00 00 	lea    rdi,[r8*8+0x0]
  7ae7b9:	00 
  7ae7ba:	49 0f af fa          	imul   rdi,r10
  7ae7be:	49 89 ff             	mov    r15,rdi
  7ae7c1:	4d 8d 1c 39          	lea    r11,[r9+rdi*1]
  7ae7c5:	4d 2b fc             	sub    r15,r12
  7ae7c8:	4d 2b dc             	sub    r11,r12
  7ae7cb:	4c 03 e8             	add    r13,rax
  7ae7ce:	4c 03 d8             	add    r11,rax
  7ae7d1:	4c 89 ad a8 f7 ff ff 	mov    QWORD PTR [rbp-0x858],r13
  7ae7d8:	4c 89 9d e8 f7 ff ff 	mov    QWORD PTR [rbp-0x818],r11
  7ae7df:	4c 8b ad 40 fb ff ff 	mov    r13,QWORD PTR [rbp-0x4c0]
  7ae7e6:	4b 8d 34 3e          	lea    rsi,[r14+r15*1]
  7ae7ea:	4c 03 f7             	add    r14,rdi
  7ae7ed:	4d 03 f9             	add    r15,r9
  7ae7f0:	4c 8b 9d d0 f6 ff ff 	mov    r11,QWORD PTR [rbp-0x930]
  7ae7f7:	4d 03 ee             	add    r13,r14
  7ae7fa:	4c 03 f8             	add    r15,rax
  7ae7fd:	4d 03 eb             	add    r13,r11
  7ae800:	4c 89 bd 10 f8 ff ff 	mov    QWORD PTR [rbp-0x7f0],r15
  7ae807:	4c 8b bd a0 fd ff ff 	mov    r15,QWORD PTR [rbp-0x260]
  7ae80e:	4d 03 fe             	add    r15,r14
  7ae811:	4d 2b f4             	sub    r14,r12
  7ae814:	4c 89 ad 40 fb ff ff 	mov    QWORD PTR [rbp-0x4c0],r13
  7ae81b:	4c 03 f8             	add    r15,rax
  7ae81e:	4c 8b ad 90 fa ff ff 	mov    r13,QWORD PTR [rbp-0x570]
  7ae825:	4c 89 bd a0 fd ff ff 	mov    QWORD PTR [rbp-0x260],r15
  7ae82c:	48 89 bd 48 fb ff ff 	mov    QWORD PTR [rbp-0x4b8],rdi
  7ae833:	4d 03 de             	add    r11,r14
  7ae836:	4c 89 9d d0 fc ff ff 	mov    QWORD PTR [rbp-0x330],r11
  7ae83d:	4d 8d 7c 35 00       	lea    r15,[r13+rsi*1+0x0]
  7ae842:	48 03 f0             	add    rsi,rax
  7ae845:	4c 8d 1c 38          	lea    r11,[rax+rdi*1]
  7ae849:	48 89 b5 a8 fd ff ff 	mov    QWORD PTR [rbp-0x258],rsi
  7ae850:	4a 8d 34 30          	lea    rsi,[rax+r14*1]
  7ae854:	4d 03 f5             	add    r14,r13
  7ae857:	4c 89 b5 00 fd ff ff 	mov    QWORD PTR [rbp-0x300],r14
  7ae85e:	4e 8d 34 c5 f8 ff ff 	lea    r14,[r8*8-0x8]
  7ae865:	ff 
  7ae866:	4d 0f af d6          	imul   r10,r14
  7ae86a:	4d 2b da             	sub    r11,r10
  7ae86d:	4e 8d 2c 10          	lea    r13,[rax+r10*1]
  7ae871:	4c 2b ef             	sub    r13,rdi
  7ae874:	4c 2b d8             	sub    r11,rax
  7ae877:	4c 2b e8             	sub    r13,rax
  7ae87a:	4c 3b e9             	cmp    r13,rcx
  7ae87d:	48 89 b5 70 fd ff ff 	mov    QWORD PTR [rbp-0x290],rsi
  7ae884:	89 d6                	mov    esi,edx
  7ae886:	40 0f 9f c6          	setg   sil
  7ae88a:	4c 3b d9             	cmp    r11,rcx
  7ae88d:	4c 89 d1             	mov    rcx,r10
  7ae890:	0f 9f c2             	setg   dl
  7ae893:	49 2b cc             	sub    rcx,r12
  7ae896:	49 03 c9             	add    rcx,r9
  7ae899:	4d 03 ca             	add    r9,r10
  7ae89c:	4c 8b 95 d8 fd ff ff 	mov    r10,QWORD PTR [rbp-0x228]
  7ae8a3:	4d 2b cc             	sub    r9,r12
  7ae8a6:	4d 0f af d0          	imul   r10,r8
  7ae8aa:	4c 03 c8             	add    r9,rax
  7ae8ad:	48 03 c8             	add    rcx,rax
  7ae8b0:	4c 89 8d 28 f8 ff ff 	mov    QWORD PTR [rbp-0x7d8],r9
  7ae8b7:	0b f2                	or     esi,edx
  7ae8b9:	4c 8b 8d e0 f4 ff ff 	mov    r9,QWORD PTR [rbp-0xb20]
  7ae8c0:	49 f7 d9             	neg    r9
  7ae8c3:	4d 03 ca             	add    r9,r10
  7ae8c6:	4c 8b a5 d8 f8 ff ff 	mov    r12,QWORD PTR [rbp-0x728]
  7ae8cd:	48 8b 85 08 ff ff ff 	mov    rax,QWORD PTR [rbp-0xf8]
  7ae8d4:	4d 03 e1             	add    r12,r9
  7ae8d7:	4c 8b 8d 10 fd ff ff 	mov    r9,QWORD PTR [rbp-0x2f0]
  7ae8de:	49 0f af c1          	imul   rax,r9
  7ae8e2:	48 8b 95 00 ff ff ff 	mov    rdx,QWORD PTR [rbp-0x100]
  7ae8e9:	4c 03 e0             	add    r12,rax
  7ae8ec:	48 8b 85 d0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x230]
  7ae8f3:	49 0f af c0          	imul   rax,r8
  7ae8f7:	49 0f af d1          	imul   rdx,r9
  7ae8fb:	4c 8b 9d f8 fd ff ff 	mov    r11,QWORD PTR [rbp-0x208]
  7ae902:	4d 0f af d8          	imul   r11,r8
  7ae906:	48 89 8d f0 f7 ff ff 	mov    QWORD PTR [rbp-0x810],rcx
  7ae90d:	48 8d bd f0 f9 ff ff 	lea    rdi,[rbp-0x610]
  7ae914:	48 8b 0f             	mov    rcx,QWORD PTR [rdi]
  7ae917:	4c 8b b5 e8 f4 ff ff 	mov    r14,QWORD PTR [rbp-0xb18]
  7ae91e:	48 03 c8             	add    rcx,rax
  7ae921:	4c 2b f2             	sub    r14,rdx
  7ae924:	48 f7 d8             	neg    rax
  7ae927:	49 2b ce             	sub    rcx,r14
  7ae92a:	4c 8b b5 20 ff ff ff 	mov    r14,QWORD PTR [rbp-0xe0]
  7ae931:	4d 0f af f1          	imul   r14,r9
  7ae935:	48 8b 95 00 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xb00]
  7ae93c:	4c 89 bd 38 fb ff ff 	mov    QWORD PTR [rbp-0x4c8],r15
  7ae943:	49 89 d7             	mov    r15,rdx
  7ae946:	48 f7 da             	neg    rdx
  7ae949:	4d 2b fe             	sub    r15,r14
  7ae94c:	49 03 d3             	add    rdx,r11
  7ae94f:	48 89 0f             	mov    QWORD PTR [rdi],rcx
  7ae952:	48 8b 8d c8 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x738]
  7ae959:	48 03 ca             	add    rcx,rdx
  7ae95c:	48 8b 95 f0 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x110]
  7ae963:	49 03 ce             	add    rcx,r14
  7ae966:	49 0f af d1          	imul   rdx,r9
  7ae96a:	89 b5 d0 f7 ff ff    	mov    DWORD PTR [rbp-0x830],esi
  7ae970:	48 8b b5 d0 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb30]
  7ae977:	49 2b f3             	sub    rsi,r11
  7ae97a:	4c 03 fe             	add    r15,rsi
  7ae97d:	4c 8b ad e8 f8 ff ff 	mov    r13,QWORD PTR [rbp-0x718]
  7ae984:	49 f7 df             	neg    r15
  7ae987:	49 f7 dd             	neg    r13
  7ae98a:	48 8b bd e8 f6 ff ff 	mov    rdi,QWORD PTR [rbp-0x918]
  7ae991:	4c 03 ff             	add    r15,rdi
  7ae994:	4c 03 ee             	add    r13,rsi
  7ae997:	4c 01 bd d0 f8 ff ff 	add    QWORD PTR [rbp-0x730],r15
  7ae99e:	49 f7 dd             	neg    r13
  7ae9a1:	4c 8b bd c0 fd ff ff 	mov    r15,QWORD PTR [rbp-0x240]
  7ae9a8:	4c 03 ef             	add    r13,rdi
  7ae9ab:	4d 0f af f8          	imul   r15,r8
  7ae9af:	4d 03 ee             	add    r13,r14
  7ae9b2:	4c 8b b5 f8 f4 ff ff 	mov    r14,QWORD PTR [rbp-0xb08]
  7ae9b9:	4c 2b f2             	sub    r14,rdx
  7ae9bc:	48 8b 95 10 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x1f0]
  7ae9c3:	49 0f af d0          	imul   rdx,r8
  7ae9c7:	4c 89 ad e8 f8 ff ff 	mov    QWORD PTR [rbp-0x718],r13
  7ae9ce:	4c 8b ad f8 fe ff ff 	mov    r13,QWORD PTR [rbp-0x108]
  7ae9d5:	4d 0f af e9          	imul   r13,r9
  7ae9d9:	4c 89 a5 d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],r12
  7ae9e0:	48 89 8d c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],rcx
  7ae9e7:	4c 8b a5 c8 fd ff ff 	mov    r12,QWORD PTR [rbp-0x238]
  7ae9ee:	48 8b 8d e8 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x618]
  7ae9f5:	4d 0f af e0          	imul   r12,r8
  7ae9f9:	49 03 cf             	add    rcx,r15
  7ae9fc:	49 f7 df             	neg    r15
  7ae9ff:	49 2b ce             	sub    rcx,r14
  7aea02:	4c 8b b5 10 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xaf0]
  7aea09:	49 f7 de             	neg    r14
  7aea0c:	48 89 95 40 f5 ff ff 	mov    QWORD PTR [rbp-0xac0],rdx
  7aea13:	4c 03 f2             	add    r14,rdx
  7aea16:	48 8b 95 30 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xd0]
  7aea1d:	49 0f af d1          	imul   rdx,r9
  7aea21:	48 89 b5 d0 f4 ff ff 	mov    QWORD PTR [rbp-0xb30],rsi
  7aea28:	48 8b b5 f0 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb10]
  7aea2f:	49 2b f5             	sub    rsi,r13
  7aea32:	44 8b ad 50 f3 ff ff 	mov    r13d,DWORD PTR [rbp-0xcb0]
  7aea39:	48 8b bd 18 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x5e8]
  7aea40:	49 03 fc             	add    rdi,r12
  7aea43:	49 f7 dc             	neg    r12
  7aea46:	48 89 8d e8 f9 ff ff 	mov    QWORD PTR [rbp-0x618],rcx
  7aea4d:	48 2b fe             	sub    rdi,rsi
  7aea50:	48 8b 8d 38 ff ff ff 	mov    rcx,QWORD PTR [rbp-0xc8]
  7aea57:	41 8d 75 01          	lea    esi,[r13+0x1]
  7aea5b:	4c 8b ad 08 fe ff ff 	mov    r13,QWORD PTR [rbp-0x1f8]
  7aea62:	49 0f af c9          	imul   rcx,r9
  7aea66:	4d 0f af e8          	imul   r13,r8
  7aea6a:	48 89 bd 18 fa ff ff 	mov    QWORD PTR [rbp-0x5e8],rdi
  7aea71:	48 63 f6             	movsxd rsi,esi
  7aea74:	48 8b bd e0 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x720]
  7aea7b:	48 89 b5 e0 f9 ff ff 	mov    QWORD PTR [rbp-0x620],rsi
  7aea82:	49 03 fe             	add    rdi,r14
  7aea85:	4c 8b b5 18 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xae8]
  7aea8c:	48 03 f9             	add    rdi,rcx
  7aea8f:	48 8b b5 e8 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x218]
  7aea96:	4c 2b f2             	sub    r14,rdx
  7aea99:	48 8b 95 18 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xe8]
  7aeaa0:	49 0f af f0          	imul   rsi,r8
  7aeaa4:	49 0f af d1          	imul   rdx,r9
  7aeaa8:	48 8b 8d f8 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x608]
  7aeaaf:	49 03 cd             	add    rcx,r13
  7aeab2:	49 f7 dd             	neg    r13
  7aeab5:	48 89 bd e0 f8 ff ff 	mov    QWORD PTR [rbp-0x720],rdi
  7aeabc:	49 2b ce             	sub    rcx,r14
  7aeabf:	48 8b bd 00 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x600]
  7aeac6:	4c 8b b5 20 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xae0]
  7aeacd:	48 03 fe             	add    rdi,rsi
  7aead0:	4c 2b f2             	sub    r14,rdx
  7aead3:	48 f7 de             	neg    rsi
  7aead6:	49 2b fe             	sub    rdi,r14
  7aead9:	48 89 8d f8 f9 ff ff 	mov    QWORD PTR [rbp-0x608],rcx
  7aeae0:	48 89 bd 00 fa ff ff 	mov    QWORD PTR [rbp-0x600],rdi
  7aeae7:	48 8b bd e0 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x220]
  7aeaee:	48 8b 8d 10 ff ff ff 	mov    rcx,QWORD PTR [rbp-0xf0]
  7aeaf5:	49 0f af f8          	imul   rdi,r8
  7aeaf9:	49 0f af c9          	imul   rcx,r9
  7aeafd:	4c 8b b5 08 fa ff ff 	mov    r14,QWORD PTR [rbp-0x5f8]
  7aeb04:	48 8b 95 28 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xad8]
  7aeb0b:	4c 03 f7             	add    r14,rdi
  7aeb0e:	48 2b d1             	sub    rdx,rcx
  7aeb11:	48 f7 df             	neg    rdi
  7aeb14:	48 8b 8d f0 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x210]
  7aeb1b:	4c 2b f2             	sub    r14,rdx
  7aeb1e:	48 8b 95 28 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xd8]
  7aeb25:	49 0f af c8          	imul   rcx,r8
  7aeb29:	49 0f af d1          	imul   rdx,r9
  7aeb2d:	4c 89 b5 08 fa ff ff 	mov    QWORD PTR [rbp-0x5f8],r14
  7aeb34:	48 89 8d 48 f4 ff ff 	mov    QWORD PTR [rbp-0xbb8],rcx
  7aeb3b:	4c 8b b5 10 fa ff ff 	mov    r14,QWORD PTR [rbp-0x5f0]
  7aeb42:	4c 03 f1             	add    r14,rcx
  7aeb45:	48 8b 8d 30 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xad0]
  7aeb4c:	48 2b ca             	sub    rcx,rdx
  7aeb4f:	4c 2b f1             	sub    r14,rcx
  7aeb52:	4c 89 b5 10 fa ff ff 	mov    QWORD PTR [rbp-0x5f0],r14
  7aeb59:	4c 8b b5 00 fe ff ff 	mov    r14,QWORD PTR [rbp-0x200]
  7aeb60:	4d 0f af f0          	imul   r14,r8
  7aeb64:	48 8b 8d 48 ff ff ff 	mov    rcx,QWORD PTR [rbp-0xb8]
  7aeb6b:	49 0f af c9          	imul   rcx,r9
  7aeb6f:	48 8b 95 20 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x5e0]
  7aeb76:	49 03 d6             	add    rdx,r14
  7aeb79:	49 f7 de             	neg    r14
  7aeb7c:	4c 03 b5 80 f4 ff ff 	add    r14,QWORD PTR [rbp-0xb80]
  7aeb83:	4c 89 b5 88 f4 ff ff 	mov    QWORD PTR [rbp-0xb78],r14
  7aeb8a:	4c 8b b5 38 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xac8]
  7aeb91:	4c 2b f1             	sub    r14,rcx
  7aeb94:	48 8b 8d 00 f7 ff ff 	mov    rcx,QWORD PTR [rbp-0x900]
  7aeb9b:	49 2b d6             	sub    rdx,r14
  7aeb9e:	48 89 95 20 fa ff ff 	mov    QWORD PTR [rbp-0x5e0],rdx
  7aeba5:	4c 8b b5 18 fe ff ff 	mov    r14,QWORD PTR [rbp-0x1e8]
  7aebac:	48 8b 95 40 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xc0]
  7aebb3:	48 0f af 8d 08 f7 ff 	imul   rcx,QWORD PTR [rbp-0x8f8]
  7aebba:	ff 
  7aebbb:	4d 0f af f0          	imul   r14,r8
  7aebbf:	49 0f af d1          	imul   rdx,r9
  7aebc3:	4c 8b 85 08 f5 ff ff 	mov    r8,QWORD PTR [rbp-0xaf8]
  7aebca:	49 f7 d8             	neg    r8
  7aebcd:	4d 03 c6             	add    r8,r14
  7aebd0:	4c 03 f1             	add    r14,rcx
  7aebd3:	48 03 ca             	add    rcx,rdx
  7aebd6:	4c 03 c1             	add    r8,rcx
  7aebd9:	48 8b 95 90 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x770]
  7aebe0:	49 03 d0             	add    rdx,r8
  7aebe3:	4c 8b 85 48 f3 ff ff 	mov    r8,QWORD PTR [rbp-0xcb8]
  7aebea:	4c 03 bd 50 f4 ff ff 	add    r15,QWORD PTR [rbp-0xbb0]
  7aebf1:	4c 03 a5 58 f4 ff ff 	add    r12,QWORD PTR [rbp-0xba8]
  7aebf8:	48 03 85 60 f4 ff ff 	add    rax,QWORD PTR [rbp-0xba0]
  7aebff:	4e 8d 0c c5 00 00 00 	lea    r9,[r8*8+0x0]
  7aec06:	00 
  7aec07:	4c 8b 85 b8 f8 ff ff 	mov    r8,QWORD PTR [rbp-0x748]
  7aec0e:	4d 2b c1             	sub    r8,r9
  7aec11:	4c 89 8d 48 f5 ff ff 	mov    QWORD PTR [rbp-0xab8],r9
  7aec18:	4c 8b 8d 98 f6 ff ff 	mov    r9,QWORD PTR [rbp-0x968]
  7aec1f:	48 03 bd 68 f4 ff ff 	add    rdi,QWORD PTR [rbp-0xb98]
  7aec26:	48 03 b5 70 f4 ff ff 	add    rsi,QWORD PTR [rbp-0xb90]
  7aec2d:	4c 03 ad 78 f4 ff ff 	add    r13,QWORD PTR [rbp-0xb88]
  7aec34:	4d 03 c8             	add    r9,r8
  7aec37:	4d 2b cf             	sub    r9,r15
  7aec3a:	4c 8b bd a0 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x960]
  7aec41:	4c 89 8d 28 f4 ff ff 	mov    QWORD PTR [rbp-0xbd8],r9
  7aec48:	4c 03 b5 38 f4 ff ff 	add    r14,QWORD PTR [rbp-0xbc8]
  7aec4f:	48 8b 8d c0 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x640]
  7aec56:	4f 8d 0c 07          	lea    r9,[r15+r8*1]
  7aec5a:	4d 2b cc             	sub    r9,r12
  7aec5d:	48 03 d1             	add    rdx,rcx
  7aec60:	4c 8b a5 a8 f6 ff ff 	mov    r12,QWORD PTR [rbp-0x958]
  7aec67:	4c 89 8d 20 f4 ff ff 	mov    QWORD PTR [rbp-0xbe0],r9
  7aec6e:	4c 89 85 b8 f8 ff ff 	mov    QWORD PTR [rbp-0x748],r8
  7aec75:	4f 8d 0c 04          	lea    r9,[r12+r8*1]
  7aec79:	4c 2b c8             	sub    r9,rax
  7aec7c:	48 8b 85 a0 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb60]
  7aec83:	4c 89 8d 18 f4 ff ff 	mov    QWORD PTR [rbp-0xbe8],r9
  7aec8a:	4e 8d 0c 00          	lea    r9,[rax+r8*1]
  7aec8e:	4c 03 8d a8 f9 ff ff 	add    r9,QWORD PTR [rbp-0x658]
  7aec95:	4d 03 ca             	add    r9,r10
  7aec98:	4c 8b 95 b8 f6 ff ff 	mov    r10,QWORD PTR [rbp-0x948]
  7aec9f:	4c 89 8d a0 f8 ff ff 	mov    QWORD PTR [rbp-0x760],r9
  7aeca6:	4b 8d 04 02          	lea    rax,[r10+r8*1]
  7aecaa:	4c 8b 95 f0 f6 ff ff 	mov    r10,QWORD PTR [rbp-0x910]
  7aecb1:	48 2b c7             	sub    rax,rdi
  7aecb4:	48 8b bd c0 f6 ff ff 	mov    rdi,QWORD PTR [rbp-0x940]
  7aecbb:	48 89 85 10 f4 ff ff 	mov    QWORD PTR [rbp-0xbf0],rax
  7aecc2:	48 8b 85 18 f7 ff ff 	mov    rax,QWORD PTR [rbp-0x8e8]
  7aecc9:	4e 8d 0c 07          	lea    r9,[rdi+r8*1]
  7aeccd:	48 8b bd 48 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xab8]
  7aecd4:	4c 2b ce             	sub    r9,rsi
  7aecd7:	48 8b b5 b8 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb48]
  7aecde:	4c 89 8d 08 f4 ff ff 	mov    QWORD PTR [rbp-0xbf8],r9
  7aece5:	4e 8d 24 06          	lea    r12,[rsi+r8*1]
  7aece9:	4c 03 a5 58 f9 ff ff 	add    r12,QWORD PTR [rbp-0x6a8]
  7aecf0:	4a 8d 34 00          	lea    rsi,[rax+r8*1]
  7aecf4:	4d 03 e3             	add    r12,r11
  7aecf7:	4f 8d 1c 02          	lea    r11,[r10+r8*1]
  7aecfb:	4d 2b dd             	sub    r11,r13
  7aecfe:	4c 8b ad a8 f4 ff ff 	mov    r13,QWORD PTR [rbp-0xb58]
  7aed05:	48 2b b5 30 f4 ff ff 	sub    rsi,QWORD PTR [rbp-0xbd0]
  7aed0c:	49 03 f6             	add    rsi,r14
  7aed0f:	48 03 f1             	add    rsi,rcx
  7aed12:	4f 8d 7c 05 00       	lea    r15,[r13+r8*1+0x0]
  7aed17:	48 8b 8d e0 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x920]
  7aed1e:	4c 03 bd a0 f9 ff ff 	add    r15,QWORD PTR [rbp-0x660]
  7aed25:	4c 03 bd 40 f5 ff ff 	add    r15,QWORD PTR [rbp-0xac0]
  7aed2c:	4c 89 a5 a8 f8 ff ff 	mov    QWORD PTR [rbp-0x758],r12
  7aed33:	4c 03 c1             	add    r8,rcx
  7aed36:	48 89 b5 c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],rsi
  7aed3d:	4c 89 85 58 f3 ff ff 	mov    QWORD PTR [rbp-0xca8],r8
  7aed44:	4c 89 9d 00 f4 ff ff 	mov    QWORD PTR [rbp-0xc00],r11
  7aed4b:	4c 89 bd b0 f8 ff ff 	mov    QWORD PTR [rbp-0x750],r15
  7aed52:	4c 8b a5 28 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6d8]
  7aed59:	4c 8b 85 80 fa ff ff 	mov    r8,QWORD PTR [rbp-0x580]
  7aed60:	48 8b b5 50 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x7b0]
  7aed67:	48 8b 8d 48 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x7b8]
  7aed6e:	48 8b 85 20 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x6e0]
  7aed75:	4c 8b ad b8 fb ff ff 	mov    r13,QWORD PTR [rbp-0x448]
  7aed7c:	48 89 8d 48 f8 ff ff 	mov    QWORD PTR [rbp-0x7b8],rcx
  7aed83:	4c 89 a5 28 f9 ff ff 	mov    QWORD PTR [rbp-0x6d8],r12
  7aed8a:	4c 8b a5 48 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6b8]
  7aed91:	48 8b 8d 48 f4 ff ff 	mov    rcx,QWORD PTR [rbp-0xbb8]
  7aed98:	4c 2b e7             	sub    r12,rdi
  7aed9b:	4c 8d 8d 90 f4 ff ff 	lea    r9,[rbp-0xb70]
  7aeda2:	49 8b 39             	mov    rdi,QWORD PTR [r9]
  7aeda5:	48 f7 d9             	neg    rcx
  7aeda8:	48 03 cf             	add    rcx,rdi
  7aedab:	48 2b bd 98 f3 ff ff 	sub    rdi,QWORD PTR [rbp-0xc68]
  7aedb2:	4c 8b bd a0 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb60]
  7aedb9:	4d 03 fc             	add    r15,r12
  7aedbc:	49 89 39             	mov    QWORD PTR [r9],rdi
  7aedbf:	4c 8d 95 a8 f9 ff ff 	lea    r10,[rbp-0x658]
  7aedc6:	49 8b 3a             	mov    rdi,QWORD PTR [r10]
  7aedc9:	49 03 ff             	add    rdi,r15
  7aedcc:	48 03 bd a0 f3 ff ff 	add    rdi,QWORD PTR [rbp-0xc60]
  7aedd3:	48 89 95 90 f8 ff ff 	mov    QWORD PTR [rbp-0x770],rdx
  7aedda:	4c 8b bd b0 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb50]
  7aede1:	48 8b 95 d8 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xb28]
  7aede8:	4c 03 fa             	add    r15,rdx
  7aedeb:	49 89 3a             	mov    QWORD PTR [r10],rdi
  7aedee:	49 f7 df             	neg    r15
  7aedf1:	4c 8d 9d c8 f9 ff ff 	lea    r11,[rbp-0x638]
  7aedf8:	49 8b 3b             	mov    rdi,QWORD PTR [r11]
  7aedfb:	4c 03 f8             	add    r15,rax
  7aedfe:	49 03 fc             	add    rdi,r12
  7aee01:	48 f7 d8             	neg    rax
  7aee04:	48 03 bd a8 f3 ff ff 	add    rdi,QWORD PTR [rbp-0xc58]
  7aee0b:	48 03 c7             	add    rax,rdi
  7aee0e:	49 2b ff             	sub    rdi,r15
  7aee11:	4c 8b bd c0 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb40]
  7aee18:	48 03 c2             	add    rax,rdx
  7aee1b:	4c 03 fa             	add    r15,rdx
  7aee1e:	48 8b 95 38 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xbc8]
  7aee25:	49 03 d7             	add    rdx,r15
  7aee28:	4c 8b bd c0 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x640]
  7aee2f:	49 03 c7             	add    rax,r15
  7aee32:	48 89 85 20 f9 ff ff 	mov    QWORD PTR [rbp-0x6e0],rax
  7aee39:	49 03 ff             	add    rdi,r15
  7aee3c:	48 8b 85 a8 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb58]
  7aee43:	49 03 c4             	add    rax,r12
  7aee46:	49 89 3b             	mov    QWORD PTR [r11],rdi
  7aee49:	4c 8d b5 a0 f9 ff ff 	lea    r14,[rbp-0x660]
  7aee50:	49 8b 3e             	mov    rdi,QWORD PTR [r14]
  7aee53:	48 03 f8             	add    rdi,rax
  7aee56:	48 03 bd b0 f3 ff ff 	add    rdi,QWORD PTR [rbp-0xc50]
  7aee5d:	48 8b 85 b8 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb48]
  7aee64:	49 03 c4             	add    rax,r12
  7aee67:	49 89 3e             	mov    QWORD PTR [r14],rdi
  7aee6a:	48 8b bd 58 f9 ff ff 	mov    rdi,QWORD PTR [rbp-0x6a8]
  7aee71:	48 03 f8             	add    rdi,rax
  7aee74:	48 03 bd 98 f4 ff ff 	add    rdi,QWORD PTR [rbp-0xb68]
  7aee7b:	48 89 bd 58 f9 ff ff 	mov    QWORD PTR [rbp-0x6a8],rdi
  7aee82:	48 8b 85 d8 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x928]
  7aee89:	48 8b bd b8 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x748]
  7aee90:	48 89 b5 50 f8 ff ff 	mov    QWORD PTR [rbp-0x7b0],rsi
  7aee97:	48 8b b5 50 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xbb0]
  7aee9e:	48 2b b5 60 f3 ff ff 	sub    rsi,QWORD PTR [rbp-0xca0]
  7aeea5:	48 03 c7             	add    rax,rdi
  7aeea8:	48 2b c1             	sub    rax,rcx
  7aeeab:	48 8b 8d 98 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x968]
  7aeeb2:	4c 8b b5 58 f4 ff ff 	mov    r14,QWORD PTR [rbp-0xba8]
  7aeeb9:	4c 2b b5 68 f3 ff ff 	sub    r14,QWORD PTR [rbp-0xc98]
  7aeec0:	4c 89 ad b8 fb ff ff 	mov    QWORD PTR [rbp-0x448],r13
  7aeec7:	49 03 cc             	add    rcx,r12
  7aeeca:	48 2b ce             	sub    rcx,rsi
  7aeecd:	48 8b b5 a0 f6 ff ff 	mov    rsi,QWORD PTR [rbp-0x960]
  7aeed4:	48 89 8d f0 f3 ff ff 	mov    QWORD PTR [rbp-0xc10],rcx
  7aeedb:	4c 8b ad 88 f4 ff ff 	mov    r13,QWORD PTR [rbp-0xb78]
  7aeee2:	4c 29 ad 58 f3 ff ff 	sub    QWORD PTR [rbp-0xca8],r13
  7aeee9:	4a 8d 0c 26          	lea    rcx,[rsi+r12*1]
  7aeeed:	49 2b ce             	sub    rcx,r14
  7aeef0:	4c 8b b5 a8 f6 ff ff 	mov    r14,QWORD PTR [rbp-0x958]
  7aeef7:	4c 8b ad 60 f4 ff ff 	mov    r13,QWORD PTR [rbp-0xba0]
  7aeefe:	4c 2b ad 70 f3 ff ff 	sub    r13,QWORD PTR [rbp-0xc90]
  7aef05:	48 89 8d e8 f3 ff ff 	mov    QWORD PTR [rbp-0xc18],rcx
  7aef0c:	4b 8d 0c 26          	lea    rcx,[r14+r12*1]
  7aef10:	49 2b cd             	sub    rcx,r13
  7aef13:	4c 8b ad 18 f7 ff ff 	mov    r13,QWORD PTR [rbp-0x8e8]
  7aef1a:	4c 89 85 80 fa ff ff 	mov    QWORD PTR [rbp-0x580],r8
  7aef21:	4c 8b 85 68 f4 ff ff 	mov    r8,QWORD PTR [rbp-0xb98]
  7aef28:	4c 2b 85 78 f3 ff ff 	sub    r8,QWORD PTR [rbp-0xc88]
  7aef2f:	4b 8d 74 25 00       	lea    rsi,[r13+r12*1+0x0]
  7aef34:	48 2b b5 30 f4 ff ff 	sub    rsi,QWORD PTR [rbp-0xbd0]
  7aef3b:	48 03 f2             	add    rsi,rdx
  7aef3e:	48 8b 95 b8 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x948]
  7aef45:	4c 03 fe             	add    r15,rsi
  7aef48:	4c 89 bd c0 f9 ff ff 	mov    QWORD PTR [rbp-0x640],r15
  7aef4f:	4c 8b 8d 70 f4 ff ff 	mov    r9,QWORD PTR [rbp-0xb90]
  7aef56:	4c 2b 8d 80 f3 ff ff 	sub    r9,QWORD PTR [rbp-0xc80]
  7aef5d:	4e 8d 3c 22          	lea    r15,[rdx+r12*1]
  7aef61:	4d 2b f8             	sub    r15,r8
  7aef64:	4c 8b 85 c0 f6 ff ff 	mov    r8,QWORD PTR [rbp-0x940]
  7aef6b:	4c 8b 95 78 f4 ff ff 	mov    r10,QWORD PTR [rbp-0xb88]
  7aef72:	4c 2b 95 88 f3 ff ff 	sub    r10,QWORD PTR [rbp-0xc78]
  7aef79:	4c 8b 9d 80 f4 ff ff 	mov    r11,QWORD PTR [rbp-0xb80]
  7aef80:	4f 8d 2c 20          	lea    r13,[r8+r12*1]
  7aef84:	4d 2b e9             	sub    r13,r9
  7aef87:	4c 8b 8d f0 f6 ff ff 	mov    r9,QWORD PTR [rbp-0x910]
  7aef8e:	4c 89 ad d0 f3 ff ff 	mov    QWORD PTR [rbp-0xc30],r13
  7aef95:	4c 2b 9d 90 f3 ff ff 	sub    r11,QWORD PTR [rbp-0xc70]
  7aef9c:	48 89 85 f8 f3 ff ff 	mov    QWORD PTR [rbp-0xc08],rax
  7aefa3:	4f 8d 2c 21          	lea    r13,[r9+r12*1]
  7aefa7:	4d 2b ea             	sub    r13,r10
  7aefaa:	4c 8b 95 e0 f6 ff ff 	mov    r10,QWORD PTR [rbp-0x920]
  7aefb1:	4c 89 ad c8 f3 ff ff 	mov    QWORD PTR [rbp-0xc38],r13
  7aefb8:	48 8b 85 e8 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x918]
  7aefbf:	48 03 f8             	add    rdi,rax
  7aefc2:	48 2b bd d0 f4 ff ff 	sub    rdi,QWORD PTR [rbp-0xb30]
  7aefc9:	4f 8d 2c 22          	lea    r13,[r10+r12*1]
  7aefcd:	4d 2b eb             	sub    r13,r11
  7aefd0:	4c 8b 9d d8 f6 ff ff 	mov    r11,QWORD PTR [rbp-0x928]
  7aefd7:	4c 8d 8d 68 f9 ff ff 	lea    r9,[rbp-0x698]
  7aefde:	49 8b 11             	mov    rdx,QWORD PTR [r9]
  7aefe1:	4c 89 ad c0 f3 ff ff 	mov    QWORD PTR [rbp-0xc40],r13
  7aefe8:	48 89 8d e0 f3 ff ff 	mov    QWORD PTR [rbp-0xc20],rcx
  7aefef:	4f 8d 2c 23          	lea    r13,[r11+r12*1]
  7aeff3:	48 8b 8d a8 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x158]
  7aeffa:	4c 03 e0             	add    r12,rax
  7aeffd:	4c 2b ad 90 f4 ff ff 	sub    r13,QWORD PTR [rbp-0xb70]
  7af004:	89 c8                	mov    eax,ecx
  7af006:	89 8d 90 fd ff ff    	mov    DWORD PTR [rbp-0x270],ecx
  7af00c:	83 e0 fc             	and    eax,0xfffffffc
  7af00f:	83 e1 fe             	and    ecx,0xfffffffe
  7af012:	4c 89 ad b8 f3 ff ff 	mov    QWORD PTR [rbp-0xc48],r13
  7af019:	48 89 bd b8 f8 ff ff 	mov    QWORD PTR [rbp-0x748],rdi
  7af020:	48 03 fa             	add    rdi,rdx
  7af023:	48 63 c9             	movsxd rcx,ecx
  7af026:	4c 8b ad b8 fb ff ff 	mov    r13,QWORD PTR [rbp-0x448]
  7af02d:	48 89 8d e8 fe ff ff 	mov    QWORD PTR [rbp-0x118],rcx
  7af034:	4c 89 e9             	mov    rcx,r13
  7af037:	48 89 bd 98 f8 ff ff 	mov    QWORD PTR [rbp-0x768],rdi
  7af03e:	4c 89 ef             	mov    rdi,r13
  7af041:	48 c1 e7 05          	shl    rdi,0x5
  7af045:	48 c1 e1 0b          	shl    rcx,0xb
  7af049:	48 2b cf             	sub    rcx,rdi
  7af04c:	4c 89 ef             	mov    rdi,r13
  7af04f:	48 98                	cdqe   
  7af051:	48 89 85 30 fb ff ff 	mov    QWORD PTR [rbp-0x4d0],rax
  7af058:	48 8b 85 88 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x978]
  7af05f:	48 0f af f8          	imul   rdi,rax
  7af063:	c5 fd 10 0d 95 b3 09 	vmovupd ymm1,YMMWORD PTR [rip+0x9b395]        # 84a400 <var$630.126.450+0x460>
  7af06a:	00 
  7af06b:	4c 8b 95 08 fd ff ff 	mov    r10,QWORD PTR [rbp-0x2f8]
  7af072:	4c 2b a5 c8 f4 ff ff 	sub    r12,QWORD PTR [rbp-0xb38]
  7af079:	4c 89 bd d8 f3 ff ff 	mov    QWORD PTR [rbp-0xc28],r15
  7af080:	49 03 d4             	add    rdx,r12
  7af083:	49 89 11             	mov    QWORD PTR [r9],rdx
  7af086:	4e 8d 3c d5 00 00 00 	lea    r15,[r10*8+0x0]
  7af08d:	00 
  7af08e:	48 89 8d 78 f8 ff ff 	mov    QWORD PTR [rbp-0x788],rcx
  7af095:	4c 2b bd 40 f4 ff ff 	sub    r15,QWORD PTR [rbp-0xbc0]
  7af09c:	48 8b 95 78 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x988]
  7af0a3:	48 8b 8d 48 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x7b8]
  7af0aa:	48 03 bd 90 f6 ff ff 	add    rdi,QWORD PTR [rbp-0x970]
  7af0b1:	4c 8d 95 a0 f7 ff ff 	lea    r10,[rbp-0x860]
  7af0b8:	4d 8b 1a             	mov    r11,QWORD PTR [r10]
  7af0bb:	48 2b f8             	sub    rdi,rax
  7af0be:	4d 03 df             	add    r11,r15
  7af0c1:	48 8d 34 0a          	lea    rsi,[rdx+rcx*1]
  7af0c5:	44 8b 8d 38 fa ff ff 	mov    r9d,DWORD PTR [rbp-0x5c8]
  7af0cc:	48 8b 85 50 fb ff ff 	mov    rax,QWORD PTR [rbp-0x4b0]
  7af0d3:	4c 2b d8             	sub    r11,rax
  7af0d6:	44 2b 8d 30 fa ff ff 	sub    r9d,DWORD PTR [rbp-0x5d0]
  7af0dd:	48 8b 95 c8 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x938]
  7af0e4:	4c 03 da             	add    r11,rdx
  7af0e7:	48 89 b5 40 f8 ff ff 	mov    QWORD PTR [rbp-0x7c0],rsi
  7af0ee:	41 ff c1             	inc    r9d
  7af0f1:	4d 89 1a             	mov    QWORD PTR [r10],r11
  7af0f4:	48 8d 8d b8 f7 ff ff 	lea    rcx,[rbp-0x848]
  7af0fb:	48 8b 31             	mov    rsi,QWORD PTR [rcx]
  7af0fe:	44 8b 85 b8 fd ff ff 	mov    r8d,DWORD PTR [rbp-0x248]
  7af105:	49 03 f7             	add    rsi,r15
  7af108:	4c 8b 9d c0 f7 ff ff 	mov    r11,QWORD PTR [rbp-0x840]
  7af10f:	48 2b f0             	sub    rsi,rax
  7af112:	4c 89 a5 48 f9 ff ff 	mov    QWORD PTR [rbp-0x6b8],r12
  7af119:	4d 03 df             	add    r11,r15
  7af11c:	4c 8b a5 68 fe ff ff 	mov    r12,QWORD PTR [rbp-0x198]
  7af123:	4c 2b d8             	sub    r11,rax
  7af126:	48 8d 85 b0 f7 ff ff 	lea    rax,[rbp-0x850]
  7af12d:	4c 8b 30             	mov    r14,QWORD PTR [rax]
  7af130:	48 03 f2             	add    rsi,rdx
  7af133:	44 89 a5 88 fd ff ff 	mov    DWORD PTR [rbp-0x278],r12d
  7af13a:	4d 03 f7             	add    r14,r15
  7af13d:	44 2b 85 b0 fd ff ff 	sub    r8d,DWORD PTR [rbp-0x250]
  7af144:	41 83 e4 fc          	and    r12d,0xfffffffc
  7af148:	44 89 8d 08 f8 ff ff 	mov    DWORD PTR [rbp-0x7f8],r9d
  7af14f:	41 ff c0             	inc    r8d
  7af152:	41 d1 e9             	shr    r9d,1
  7af155:	4c 03 f2             	add    r14,rdx
  7af158:	4d 63 e4             	movsxd r12,r12d
  7af15b:	4c 03 da             	add    r11,rdx
  7af15e:	4c 89 a5 28 fb ff ff 	mov    QWORD PTR [rbp-0x4d8],r12
  7af165:	44 89 85 50 f5 ff ff 	mov    DWORD PTR [rbp-0xab0],r8d
  7af16c:	44 89 8d e0 f7 ff ff 	mov    DWORD PTR [rbp-0x820],r9d
  7af173:	4c 89 30             	mov    QWORD PTR [rax],r14
  7af176:	48 89 31             	mov    QWORD PTR [rcx],rsi
  7af179:	c5 fd 57 c0          	vxorpd ymm0,ymm0,ymm0
  7af17d:	4c 89 8d 78 f7 ff ff 	mov    QWORD PTR [rbp-0x888],r9
  7af184:	4c 89 9d c0 f7 ff ff 	mov    QWORD PTR [rbp-0x840],r11
  7af18b:	48 8b 95 90 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x770]
  7af192:	4c 8b a5 28 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6d8]
  7af199:	4c 8b b5 f8 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x708]
  7af1a0:	4c 8b ad f0 f8 ff ff 	mov    r13,QWORD PTR [rbp-0x710]
  7af1a7:	48 89 bd 38 f8 ff ff 	mov    QWORD PTR [rbp-0x7c8],rdi
  7af1ae:	48 83 bd 08 ff ff ff 	cmp    QWORD PTR [rbp-0xf8],0x8
  7af1b5:	08 
  7af1b6:	0f 85 c9 02 00 00    	jne    7af485 <t3dmix_mod_mp_t3dmix4_tile_+0x2385>
  7af1bc:	48 83 bd 00 ff ff ff 	cmp    QWORD PTR [rbp-0x100],0x8
  7af1c3:	08 
  7af1c4:	0f 85 bb 02 00 00    	jne    7af485 <t3dmix_mod_mp_t3dmix4_tile_+0x2385>
  7af1ca:	48 83 bd f8 fe ff ff 	cmp    QWORD PTR [rbp-0x108],0x8
  7af1d1:	08 
  7af1d2:	0f 85 ad 02 00 00    	jne    7af485 <t3dmix_mod_mp_t3dmix4_tile_+0x2385>
  7af1d8:	48 83 bd f0 fe ff ff 	cmp    QWORD PTR [rbp-0x110],0x8
  7af1df:	08 
  7af1e0:	0f 85 9f 02 00 00    	jne    7af485 <t3dmix_mod_mp_t3dmix4_tile_+0x2385>
  7af1e6:	48 83 bd 20 ff ff ff 	cmp    QWORD PTR [rbp-0xe0],0x8
  7af1ed:	08 
  7af1ee:	0f 85 91 02 00 00    	jne    7af485 <t3dmix_mod_mp_t3dmix4_tile_+0x2385>
  7af1f4:	48 83 bd 40 ff ff ff 	cmp    QWORD PTR [rbp-0xc0],0x8
  7af1fb:	08 
  7af1fc:	0f 85 83 02 00 00    	jne    7af485 <t3dmix_mod_mp_t3dmix4_tile_+0x2385>
  7af202:	44 8b 85 38 fa ff ff 	mov    r8d,DWORD PTR [rbp-0x5c8]
  7af209:	45 33 db             	xor    r11d,r11d
  7af20c:	48 8b 85 f0 f3 ff ff 	mov    rax,QWORD PTR [rbp-0xc10]
  7af213:	33 ff                	xor    edi,edi
  7af215:	4c 8b 95 f8 fc ff ff 	mov    r10,QWORD PTR [rbp-0x308]
  7af21c:	4c 8b 8d e0 f3 ff ff 	mov    r9,QWORD PTR [rbp-0xc20]
  7af223:	48 89 85 30 f9 ff ff 	mov    QWORD PTR [rbp-0x6d0],rax
  7af22a:	44 3b 85 30 fa ff ff 	cmp    r8d,DWORD PTR [rbp-0x5d0]
  7af231:	4c 8b 85 e8 f3 ff ff 	mov    r8,QWORD PTR [rbp-0xc18]
  7af238:	0f 8c 4a 06 00 00    	jl     7af888 <t3dmix_mod_mp_t3dmix4_tile_+0x2788>
  7af23e:	48 8b 95 18 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x6e8]
  7af245:	48 8b 8d 08 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x6f8]
  7af24c:	49 0f af d4          	imul   rdx,r12
  7af250:	49 0f af cc          	imul   rcx,r12
  7af254:	c5 fd 10 0d a4 b1 09 	vmovupd ymm1,YMMWORD PTR [rip+0x9b1a4]        # 84a400 <var$630.126.450+0x460>
  7af25b:	00 
  7af25c:	c5 fb 10 05 34 cf 09 	vmovsd xmm0,QWORD PTR [rip+0x9cf34]        # 84c198 <__STRLITPACK_0.112+0x88>
  7af263:	00 
  7af264:	48 8b b5 00 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x700]
  7af26b:	49 0f af f4          	imul   rsi,r12
  7af26f:	48 8b 85 20 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x6e0]
  7af276:	4c 8b bd 58 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6a8]
  7af27d:	48 03 b5 a8 f9 ff ff 	add    rsi,QWORD PTR [rbp-0x658]
  7af284:	4c 89 a5 28 f9 ff ff 	mov    QWORD PTR [rbp-0x6d8],r12
  7af28b:	48 03 c2             	add    rax,rdx
  7af28e:	48 03 95 c0 f9 ff ff 	add    rdx,QWORD PTR [rbp-0x640]
  7af295:	4c 03 f9             	add    r15,rcx
  7af298:	48 03 8d 48 f9 ff ff 	add    rcx,QWORD PTR [rbp-0x6b8]
  7af29f:	48 89 95 a8 fc ff ff 	mov    QWORD PTR [rbp-0x358],rdx
  7af2a6:	48 89 85 b0 fc ff ff 	mov    QWORD PTR [rbp-0x350],rax
  7af2ad:	48 89 8d 98 fc ff ff 	mov    QWORD PTR [rbp-0x368],rcx
  7af2b4:	4c 89 bd a0 fc ff ff 	mov    QWORD PTR [rbp-0x360],r15
  7af2bb:	48 89 f8             	mov    rax,rdi
  7af2be:	48 8b 95 30 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x6d0]
  7af2c5:	8b 8d 48 fe ff ff    	mov    ecx,DWORD PTR [rbp-0x1b8]
  7af2cb:	3b 8d b0 fd ff ff    	cmp    ecx,DWORD PTR [rbp-0x250]
  7af2d1:	0f 8c 68 01 00 00    	jl     7af43f <t3dmix_mod_mp_t3dmix4_tile_+0x233f>
  7af2d7:	48 83 7d e8 04       	cmp    QWORD PTR [rbp-0x18],0x4
  7af2dc:	0f 8c 67 2c 00 00    	jl     7b1f49 <t3dmix_mod_mp_t3dmix4_tile_+0x4e49>
  7af2e2:	4c 8b bd a8 fc ff ff 	mov    r15,QWORD PTR [rbp-0x358]
  7af2e9:	45 33 f6             	xor    r14d,r14d
  7af2ec:	4c 8b ad 98 fc ff ff 	mov    r13,QWORD PTR [rbp-0x368]
  7af2f3:	4c 8b a5 a0 fc ff ff 	mov    r12,QWORD PTR [rbp-0x360]
  7af2fa:	48 8b 8d c8 fc ff ff 	mov    rcx,QWORD PTR [rbp-0x338]
  7af301:	4c 03 f8             	add    r15,rax
  7af304:	4c 89 bd c0 fc ff ff 	mov    QWORD PTR [rbp-0x340],r15
  7af30b:	4c 03 ef             	add    r13,rdi
  7af30e:	4c 8b bd b0 fc ff ff 	mov    r15,QWORD PTR [rbp-0x350]
  7af315:	4c 03 e7             	add    r12,rdi
  7af318:	48 89 bd 88 fc ff ff 	mov    QWORD PTR [rbp-0x378],rdi
  7af31f:	4c 89 9d 90 fc ff ff 	mov    QWORD PTR [rbp-0x370],r11
  7af326:	4c 8b 9d c0 fc ff ff 	mov    r11,QWORD PTR [rbp-0x340]
  7af32d:	4c 03 f8             	add    r15,rax
  7af330:	4c 89 bd b8 fc ff ff 	mov    QWORD PTR [rbp-0x348],r15
  7af337:	49 89 cf             	mov    r15,rcx
  7af33a:	48 8b bd b8 fc ff ff 	mov    rdi,QWORD PTR [rbp-0x348]
  7af341:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  7af348:	00 
  7af349:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  7af350:	c4 a1 75 59 14 f6    	vmulpd ymm2,ymm1,YMMWORD PTR [rsi+r14*8]
  7af356:	c4 81 7d 10 2c f4    	vmovupd ymm5,YMMWORD PTR [r12+r14*8]
  7af35c:	c4 01 7d 10 04 f3    	vmovupd ymm8,YMMWORD PTR [r11+r14*8]
  7af362:	c4 81 6d 59 1c f1    	vmulpd ymm3,ymm2,YMMWORD PTR [r9+r14*8]
  7af368:	c4 81 55 58 7c f5 f8 	vaddpd ymm7,ymm5,YMMWORD PTR [r13+r14*8-0x8]
  7af36f:	c4 21 3d 5c 54 f7 f8 	vsubpd ymm10,ymm8,YMMWORD PTR [rdi+r14*8-0x8]
  7af376:	c4 81 65 59 24 f0    	vmulpd ymm4,ymm3,YMMWORD PTR [r8+r14*8]
  7af37c:	c4 a1 5d 59 34 f2    	vmulpd ymm6,ymm4,YMMWORD PTR [rdx+r14*8]
  7af382:	c5 4d 59 cf          	vmulpd ymm9,ymm6,ymm7
  7af386:	c4 41 35 59 da       	vmulpd ymm11,ymm9,ymm10
  7af38b:	c4 01 7d 11 1c f2    	vmovupd YMMWORD PTR [r10+r14*8],ymm11
  7af391:	49 83 c6 04          	add    r14,0x4
  7af395:	4d 3b f7             	cmp    r14,r15
  7af398:	72 b6                	jb     7af350 <t3dmix_mod_mp_t3dmix4_tile_+0x2250>
  7af39a:	48 8b bd 88 fc ff ff 	mov    rdi,QWORD PTR [rbp-0x378]
  7af3a1:	4c 8b 9d 90 fc ff ff 	mov    r11,QWORD PTR [rbp-0x370]
  7af3a8:	48 3b 4d e8          	cmp    rcx,QWORD PTR [rbp-0x18]
  7af3ac:	0f 83 8d 00 00 00    	jae    7af43f <t3dmix_mod_mp_t3dmix4_tile_+0x233f>
  7af3b2:	4c 8b bd 98 fc ff ff 	mov    r15,QWORD PTR [rbp-0x368]
  7af3b9:	4c 8b b5 a0 fc ff ff 	mov    r14,QWORD PTR [rbp-0x360]
  7af3c0:	4c 8b ad a8 fc ff ff 	mov    r13,QWORD PTR [rbp-0x358]
  7af3c7:	4c 8b a5 b0 fc ff ff 	mov    r12,QWORD PTR [rbp-0x350]
  7af3ce:	4c 03 ff             	add    r15,rdi
  7af3d1:	4c 89 9d 90 fc ff ff 	mov    QWORD PTR [rbp-0x370],r11
  7af3d8:	4c 03 f7             	add    r14,rdi
  7af3db:	4c 8b 5d e8          	mov    r11,QWORD PTR [rbp-0x18]
  7af3df:	4c 03 e8             	add    r13,rax
  7af3e2:	4c 03 e0             	add    r12,rax
  7af3e5:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  7af3e9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  7af3f0:	c5 fb 59 14 ce       	vmulsd xmm2,xmm0,QWORD PTR [rsi+rcx*8]
  7af3f5:	c4 c1 6b 59 1c c9    	vmulsd xmm3,xmm2,QWORD PTR [r9+rcx*8]
  7af3fb:	c4 c1 63 59 24 c8    	vmulsd xmm4,xmm3,QWORD PTR [r8+rcx*8]
  7af401:	c4 c1 7b 10 2c ce    	vmovsd xmm5,QWORD PTR [r14+rcx*8]
  7af407:	c5 db 59 34 ca       	vmulsd xmm6,xmm4,QWORD PTR [rdx+rcx*8]
  7af40c:	c4 c1 53 58 7c cf f8 	vaddsd xmm7,xmm5,QWORD PTR [r15+rcx*8-0x8]
  7af413:	c4 41 7b 10 44 cd 00 	vmovsd xmm8,QWORD PTR [r13+rcx*8+0x0]
  7af41a:	c5 4b 59 cf          	vmulsd xmm9,xmm6,xmm7
  7af41e:	c4 41 3b 5c 54 cc f8 	vsubsd xmm10,xmm8,QWORD PTR [r12+rcx*8-0x8]
  7af425:	c4 41 33 59 da       	vmulsd xmm11,xmm9,xmm10
  7af42a:	c4 41 7b 11 1c ca    	vmovsd QWORD PTR [r10+rcx*8],xmm11
  7af430:	48 ff c1             	inc    rcx
  7af433:	49 3b cb             	cmp    rcx,r11
  7af436:	72 b8                	jb     7af3f0 <t3dmix_mod_mp_t3dmix4_tile_+0x22f0>
  7af438:	4c 8b 9d 90 fc ff ff 	mov    r11,QWORD PTR [rbp-0x370]
  7af43f:	49 ff c3             	inc    r11
  7af442:	4c 03 95 58 fe ff ff 	add    r10,QWORD PTR [rbp-0x1a8]
  7af449:	48 03 b5 d8 fd ff ff 	add    rsi,QWORD PTR [rbp-0x228]
  7af450:	4c 03 8d d0 fd ff ff 	add    r9,QWORD PTR [rbp-0x230]
  7af457:	4c 03 85 c8 fd ff ff 	add    r8,QWORD PTR [rbp-0x238]
  7af45e:	48 03 95 c0 fd ff ff 	add    rdx,QWORD PTR [rbp-0x240]
  7af465:	48 03 bd f8 fd ff ff 	add    rdi,QWORD PTR [rbp-0x208]
  7af46c:	48 03 85 18 fe ff ff 	add    rax,QWORD PTR [rbp-0x1e8]
  7af473:	4c 3b 9d 60 fe ff ff 	cmp    r11,QWORD PTR [rbp-0x1a0]
  7af47a:	0f 82 45 fe ff ff    	jb     7af2c5 <t3dmix_mod_mp_t3dmix4_tile_+0x21c5>
  7af480:	e9 ee 03 00 00       	jmp    7af873 <t3dmix_mod_mp_t3dmix4_tile_+0x2773>
  7af485:	45 33 db             	xor    r11d,r11d
  7af488:	8b 85 38 fa ff ff    	mov    eax,DWORD PTR [rbp-0x5c8]
  7af48e:	45 33 c0             	xor    r8d,r8d
  7af491:	48 8b bd 68 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x598]
  7af498:	33 f6                	xor    esi,esi
  7af49a:	4c 8b 95 58 fa ff ff 	mov    r10,QWORD PTR [rbp-0x5a8]
  7af4a1:	4c 8b 8d 50 fa ff ff 	mov    r9,QWORD PTR [rbp-0x5b0]
  7af4a8:	48 8b 8d f8 fc ff ff 	mov    rcx,QWORD PTR [rbp-0x308]
  7af4af:	3b 85 30 fa ff ff    	cmp    eax,DWORD PTR [rbp-0x5d0]
  7af4b5:	0f 8c cd 03 00 00    	jl     7af888 <t3dmix_mod_mp_t3dmix4_tile_+0x2788>
  7af4bb:	48 8b 95 00 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x700]
  7af4c2:	49 0f af d4          	imul   rdx,r12
  7af4c6:	48 03 95 98 f9 ff ff 	add    rdx,QWORD PTR [rbp-0x668]
  7af4cd:	48 89 95 40 f9 ff ff 	mov    QWORD PTR [rbp-0x6c0],rdx
  7af4d4:	48 8b 95 08 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x6f8]
  7af4db:	49 0f af d4          	imul   rdx,r12
  7af4df:	48 8b 85 60 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x6a0]
  7af4e6:	4c 89 85 40 fe ff ff 	mov    QWORD PTR [rbp-0x1c0],r8
  7af4ed:	4c 89 4d b0          	mov    QWORD PTR [rbp-0x50],r9
  7af4f1:	4c 89 55 a8          	mov    QWORD PTR [rbp-0x58],r10
  7af4f5:	4c 8d 3c 10          	lea    r15,[rax+rdx*1]
  7af4f9:	48 8b 85 18 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x6e8]
  7af500:	49 0f af c4          	imul   rax,r12
  7af504:	4c 89 bd c8 fb ff ff 	mov    QWORD PTR [rbp-0x438],r15
  7af50b:	4c 8b bd 70 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x690]
  7af512:	48 03 95 80 f9 ff ff 	add    rdx,QWORD PTR [rbp-0x680]
  7af519:	48 89 95 68 fc ff ff 	mov    QWORD PTR [rbp-0x398],rdx
  7af520:	4c 89 9d 38 fe ff ff 	mov    QWORD PTR [rbp-0x1c8],r11
  7af527:	4c 03 f8             	add    r15,rax
  7af52a:	48 03 85 d0 f9 ff ff 	add    rax,QWORD PTR [rbp-0x630]
  7af531:	48 8b 95 40 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x6c0]
  7af538:	4c 89 bd c0 fb ff ff 	mov    QWORD PTR [rbp-0x440],r15
  7af53f:	48 89 85 60 fc ff ff 	mov    QWORD PTR [rbp-0x3a0],rax
  7af546:	4c 89 a5 28 f9 ff ff 	mov    QWORD PTR [rbp-0x6d8],r12
  7af54d:	c5 fb 10 0d 43 cc 09 	vmovsd xmm1,QWORD PTR [rip+0x9cc43]        # 84c198 <__STRLITPACK_0.112+0x88>
  7af554:	00 
  7af555:	c5 f9 10 05 93 c4 09 	vmovupd xmm0,XMMWORD PTR [rip+0x9c493]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  7af55c:	00 
  7af55d:	8b 85 48 fe ff ff    	mov    eax,DWORD PTR [rbp-0x1b8]
  7af563:	3b 85 b0 fd ff ff    	cmp    eax,DWORD PTR [rbp-0x250]
  7af569:	0f 8c 97 02 00 00    	jl     7af806 <t3dmix_mod_mp_t3dmix4_tile_+0x2706>
  7af56f:	48 83 7d e8 02       	cmp    QWORD PTR [rbp-0x18],0x2
  7af574:	0f 8c d7 2b 00 00    	jl     7b2151 <t3dmix_mod_mp_t3dmix4_tile_+0x5051>
  7af57a:	4c 8b 8d c0 fb ff ff 	mov    r9,QWORD PTR [rbp-0x440]
  7af581:	45 33 e4             	xor    r12d,r12d
  7af584:	4c 8b 9d c8 fb ff ff 	mov    r11,QWORD PTR [rbp-0x438]
  7af58b:	4c 8b 85 40 fe ff ff 	mov    r8,QWORD PTR [rbp-0x1c0]
  7af592:	4c 8b bd 68 fc ff ff 	mov    r15,QWORD PTR [rbp-0x398]
  7af599:	4d 8d 14 31          	lea    r10,[r9+rsi*1]
  7af59d:	4c 89 55 c0          	mov    QWORD PTR [rbp-0x40],r10
  7af5a1:	45 33 d2             	xor    r10d,r10d
  7af5a4:	4c 8b ad 60 fc ff ff 	mov    r13,QWORD PTR [rbp-0x3a0]
  7af5ab:	45 33 c9             	xor    r9d,r9d
  7af5ae:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  7af5b2:	4d 03 d8             	add    r11,r8
  7af5b5:	48 89 85 80 fc ff ff 	mov    QWORD PTR [rbp-0x380],rax
  7af5bc:	4d 03 f8             	add    r15,r8
  7af5bf:	45 33 c0             	xor    r8d,r8d
  7af5c2:	4d 8d 74 35 00       	lea    r14,[r13+rsi*1+0x0]
  7af5c7:	4c 89 75 b8          	mov    QWORD PTR [rbp-0x48],r14
  7af5cb:	45 33 f6             	xor    r14d,r14d
  7af5ce:	45 33 ed             	xor    r13d,r13d
  7af5d1:	4c 89 7d c8          	mov    QWORD PTR [rbp-0x38],r15
  7af5d5:	48 89 b5 78 fc ff ff 	mov    QWORD PTR [rbp-0x388],rsi
  7af5dc:	4d 89 ef             	mov    r15,r13
  7af5df:	48 8b b5 08 ff ff ff 	mov    rsi,QWORD PTR [rbp-0xf8]
  7af5e6:	4a 8d 04 12          	lea    rax,[rdx+r10*1]
  7af5ea:	c5 fb 10 10          	vmovsd xmm2,QWORD PTR [rax]
  7af5ee:	c5 e9 16 1c 30       	vmovhpd xmm3,xmm2,QWORD PTR [rax+rsi*1]
  7af5f3:	4d 8d 14 72          	lea    r10,[r10+rsi*2]
  7af5f7:	c5 f9 59 eb          	vmulpd xmm5,xmm0,xmm3
  7af5fb:	48 8b b5 00 ff ff ff 	mov    rsi,QWORD PTR [rbp-0x100]
  7af602:	4a 8d 04 0f          	lea    rax,[rdi+r9*1]
  7af606:	c5 fb 10 20          	vmovsd xmm4,QWORD PTR [rax]
  7af60a:	c5 d9 16 34 30       	vmovhpd xmm6,xmm4,QWORD PTR [rax+rsi*1]
  7af60f:	4d 8d 0c 71          	lea    r9,[r9+rsi*2]
  7af613:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
  7af617:	c5 51 59 c6          	vmulpd xmm8,xmm5,xmm6
  7af61b:	4a 8d 34 00          	lea    rsi,[rax+r8*1]
  7af61f:	48 8b 85 f8 fe ff ff 	mov    rax,QWORD PTR [rbp-0x108]
  7af626:	c5 fb 10 3e          	vmovsd xmm7,QWORD PTR [rsi]
  7af62a:	c5 41 16 0c 06       	vmovhpd xmm9,xmm7,QWORD PTR [rsi+rax*1]
  7af62f:	4d 8d 04 40          	lea    r8,[r8+rax*2]
  7af633:	48 8b 75 b0          	mov    rsi,QWORD PTR [rbp-0x50]
  7af637:	c4 41 39 59 d9       	vmulpd xmm11,xmm8,xmm9
  7af63c:	4a 8d 04 36          	lea    rax,[rsi+r14*1]
  7af640:	48 8b b5 f0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x110]
  7af647:	c5 7b 10 10          	vmovsd xmm10,QWORD PTR [rax]
  7af64b:	c5 29 16 24 30       	vmovhpd xmm12,xmm10,QWORD PTR [rax+rsi*1]
  7af650:	4d 8d 34 76          	lea    r14,[r14+rsi*2]
  7af654:	48 8b b5 20 ff ff ff 	mov    rsi,QWORD PTR [rbp-0xe0]
  7af65b:	4b 8d 04 2b          	lea    rax,[r11+r13*1]
  7af65f:	c5 7b 10 28          	vmovsd xmm13,QWORD PTR [rax]
  7af663:	c4 c1 21 59 d4       	vmulpd xmm2,xmm11,xmm12
  7af668:	c5 11 16 3c 30       	vmovhpd xmm15,xmm13,QWORD PTR [rax+rsi*1]
  7af66d:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  7af671:	49 03 c5             	add    rax,r13
  7af674:	c5 7b 10 30          	vmovsd xmm14,QWORD PTR [rax]
  7af678:	4d 8d 6c 75 00       	lea    r13,[r13+rsi*2+0x0]
  7af67d:	c5 09 16 2c 30       	vmovhpd xmm13,xmm14,QWORD PTR [rax+rsi*1]
  7af682:	48 8b 75 c0          	mov    rsi,QWORD PTR [rbp-0x40]
  7af686:	48 8b 85 40 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc0]
  7af68d:	c4 c1 01 58 dd       	vaddpd xmm3,xmm15,xmm13
  7af692:	c5 69 59 c3          	vmulpd xmm8,xmm2,xmm3
  7af696:	49 03 f7             	add    rsi,r15
  7af699:	c5 fb 10 26          	vmovsd xmm4,QWORD PTR [rsi]
  7af69d:	c5 d9 16 34 06       	vmovhpd xmm6,xmm4,QWORD PTR [rsi+rax*1]
  7af6a2:	48 8b 75 b8          	mov    rsi,QWORD PTR [rbp-0x48]
  7af6a6:	49 03 f7             	add    rsi,r15
  7af6a9:	c5 fb 10 2e          	vmovsd xmm5,QWORD PTR [rsi]
  7af6ad:	4d 8d 3c 47          	lea    r15,[r15+rax*2]
  7af6b1:	c5 d1 16 3c 06       	vmovhpd xmm7,xmm5,QWORD PTR [rsi+rax*1]
  7af6b6:	c5 49 5c cf          	vsubpd xmm9,xmm6,xmm7
  7af6ba:	c4 41 39 59 d1       	vmulpd xmm10,xmm8,xmm9
  7af6bf:	c4 21 79 11 14 e1    	vmovupd XMMWORD PTR [rcx+r12*8],xmm10
  7af6c5:	49 83 c4 02          	add    r12,0x2
  7af6c9:	4c 3b 65 d0          	cmp    r12,QWORD PTR [rbp-0x30]
  7af6cd:	0f 82 0c ff ff ff    	jb     7af5df <t3dmix_mod_mp_t3dmix4_tile_+0x24df>
  7af6d3:	48 8b 85 80 fc ff ff 	mov    rax,QWORD PTR [rbp-0x380]
  7af6da:	48 8b b5 78 fc ff ff 	mov    rsi,QWORD PTR [rbp-0x388]
  7af6e1:	4c 8b 9d 40 ff ff ff 	mov    r11,QWORD PTR [rbp-0xc0]
  7af6e8:	4c 8b 95 20 ff ff ff 	mov    r10,QWORD PTR [rbp-0xe0]
  7af6ef:	4c 8b 8d 00 ff ff ff 	mov    r9,QWORD PTR [rbp-0x100]
  7af6f6:	4c 8b 85 f0 fe ff ff 	mov    r8,QWORD PTR [rbp-0x110]
  7af6fd:	4c 8b ad f8 fe ff ff 	mov    r13,QWORD PTR [rbp-0x108]
  7af704:	4c 8b a5 08 ff ff ff 	mov    r12,QWORD PTR [rbp-0xf8]
  7af70b:	4c 0f af d8          	imul   r11,rax
  7af70f:	4c 0f af d0          	imul   r10,rax
  7af713:	4c 0f af c8          	imul   r9,rax
  7af717:	4c 0f af c0          	imul   r8,rax
  7af71b:	4c 0f af e8          	imul   r13,rax
  7af71f:	4c 0f af e0          	imul   r12,rax
  7af723:	48 3b 45 e8          	cmp    rax,QWORD PTR [rbp-0x18]
  7af727:	0f 83 d9 00 00 00    	jae    7af806 <t3dmix_mod_mp_t3dmix4_tile_+0x2706>
  7af72d:	4c 8b bd c8 fb ff ff 	mov    r15,QWORD PTR [rbp-0x438]
  7af734:	4c 8b b5 40 fe ff ff 	mov    r14,QWORD PTR [rbp-0x1c0]
  7af73b:	48 89 b5 78 fc ff ff 	mov    QWORD PTR [rbp-0x388],rsi
  7af742:	4d 03 fe             	add    r15,r14
  7af745:	4c 89 7d a0          	mov    QWORD PTR [rbp-0x60],r15
  7af749:	4c 8b bd 68 fc ff ff 	mov    r15,QWORD PTR [rbp-0x398]
  7af750:	4d 03 f7             	add    r14,r15
  7af753:	4c 8b bd 60 fc ff ff 	mov    r15,QWORD PTR [rbp-0x3a0]
  7af75a:	4c 89 b5 70 fc ff ff 	mov    QWORD PTR [rbp-0x390],r14
  7af761:	4c 8b b5 c0 fb ff ff 	mov    r14,QWORD PTR [rbp-0x440]
  7af768:	4c 03 fe             	add    r15,rsi
  7af76b:	4c 89 7d 98          	mov    QWORD PTR [rbp-0x68],r15
  7af76f:	4c 03 f6             	add    r14,rsi
  7af772:	48 8b b5 70 fc ff ff 	mov    rsi,QWORD PTR [rbp-0x390]
  7af779:	c4 c1 73 59 14 14    	vmulsd xmm2,xmm1,QWORD PTR [r12+rdx*1]
  7af77f:	c4 c1 6b 59 1c 39    	vmulsd xmm3,xmm2,QWORD PTR [r9+rdi*1]
  7af785:	4c 8b 7d a8          	mov    r15,QWORD PTR [rbp-0x58]
  7af789:	c4 01 7b 10 04 33    	vmovsd xmm8,QWORD PTR [r11+r14*1]
  7af78f:	4c 03 a5 08 ff ff ff 	add    r12,QWORD PTR [rbp-0xf8]
  7af796:	c4 81 63 59 64 3d 00 	vmulsd xmm4,xmm3,QWORD PTR [r13+r15*1+0x0]
  7af79d:	4c 8b 7d b0          	mov    r15,QWORD PTR [rbp-0x50]
  7af7a1:	4c 03 ad f8 fe ff ff 	add    r13,QWORD PTR [rbp-0x108]
  7af7a8:	4c 03 8d 00 ff ff ff 	add    r9,QWORD PTR [rbp-0x100]
  7af7af:	c4 81 5b 59 34 38    	vmulsd xmm6,xmm4,QWORD PTR [r8+r15*1]
  7af7b5:	4c 8b 7d a0          	mov    r15,QWORD PTR [rbp-0x60]
  7af7b9:	4c 03 85 f0 fe ff ff 	add    r8,QWORD PTR [rbp-0x110]
  7af7c0:	c4 81 7b 10 2c 3a    	vmovsd xmm5,QWORD PTR [r10+r15*1]
  7af7c6:	4c 8b 7d 98          	mov    r15,QWORD PTR [rbp-0x68]
  7af7ca:	c4 c1 53 58 3c 32    	vaddsd xmm7,xmm5,QWORD PTR [r10+rsi*1]
  7af7d0:	c4 01 3b 5c 14 3b    	vsubsd xmm10,xmm8,QWORD PTR [r11+r15*1]
  7af7d6:	c5 4b 59 cf          	vmulsd xmm9,xmm6,xmm7
  7af7da:	c4 41 33 59 da       	vmulsd xmm11,xmm9,xmm10
  7af7df:	c5 7b 11 1c c1       	vmovsd QWORD PTR [rcx+rax*8],xmm11
  7af7e4:	48 ff c0             	inc    rax
  7af7e7:	4c 03 95 20 ff ff ff 	add    r10,QWORD PTR [rbp-0xe0]
  7af7ee:	4c 03 9d 40 ff ff ff 	add    r11,QWORD PTR [rbp-0xc0]
  7af7f5:	48 3b 45 e8          	cmp    rax,QWORD PTR [rbp-0x18]
  7af7f9:	0f 82 7a ff ff ff    	jb     7af779 <t3dmix_mod_mp_t3dmix4_tile_+0x2679>
  7af7ff:	48 8b b5 78 fc ff ff 	mov    rsi,QWORD PTR [rbp-0x388]
  7af806:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
  7af80a:	4c 8b 45 b0          	mov    r8,QWORD PTR [rbp-0x50]
  7af80e:	4c 8b 8d 40 fe ff ff 	mov    r9,QWORD PTR [rbp-0x1c0]
  7af815:	4c 8b 95 38 fe ff ff 	mov    r10,QWORD PTR [rbp-0x1c8]
  7af81c:	49 ff c2             	inc    r10
  7af81f:	48 03 85 c8 fd ff ff 	add    rax,QWORD PTR [rbp-0x238]
  7af826:	4c 03 85 c0 fd ff ff 	add    r8,QWORD PTR [rbp-0x240]
  7af82d:	4c 03 8d f8 fd ff ff 	add    r9,QWORD PTR [rbp-0x208]
  7af834:	48 03 95 d8 fd ff ff 	add    rdx,QWORD PTR [rbp-0x228]
  7af83b:	48 03 bd d0 fd ff ff 	add    rdi,QWORD PTR [rbp-0x230]
  7af842:	48 03 b5 18 fe ff ff 	add    rsi,QWORD PTR [rbp-0x1e8]
  7af849:	48 03 8d 58 fe ff ff 	add    rcx,QWORD PTR [rbp-0x1a8]
  7af850:	48 89 45 a8          	mov    QWORD PTR [rbp-0x58],rax
  7af854:	4c 89 45 b0          	mov    QWORD PTR [rbp-0x50],r8
  7af858:	4c 89 8d 40 fe ff ff 	mov    QWORD PTR [rbp-0x1c0],r9
  7af85f:	4c 89 95 38 fe ff ff 	mov    QWORD PTR [rbp-0x1c8],r10
  7af866:	4c 3b 95 60 fe ff ff 	cmp    r10,QWORD PTR [rbp-0x1a0]
  7af86d:	0f 82 ea fc ff ff    	jb     7af55d <t3dmix_mod_mp_t3dmix4_tile_+0x245d>
  7af873:	4c 8b b5 f8 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x708]
  7af87a:	4c 8b a5 28 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6d8]
  7af881:	4c 8b ad f0 f8 ff ff 	mov    r13,QWORD PTR [rbp-0x710]
  7af888:	48 83 bd 38 ff ff ff 	cmp    QWORD PTR [rbp-0xc8],0x8
  7af88f:	08 
  7af890:	0f 85 f8 02 00 00    	jne    7afb8e <t3dmix_mod_mp_t3dmix4_tile_+0x2a8e>
  7af896:	48 83 bd 30 ff ff ff 	cmp    QWORD PTR [rbp-0xd0],0x8
  7af89d:	08 
  7af89e:	0f 85 ea 02 00 00    	jne    7afb8e <t3dmix_mod_mp_t3dmix4_tile_+0x2a8e>
  7af8a4:	48 83 bd 18 ff ff ff 	cmp    QWORD PTR [rbp-0xe8],0x8
  7af8ab:	08 
  7af8ac:	0f 85 dc 02 00 00    	jne    7afb8e <t3dmix_mod_mp_t3dmix4_tile_+0x2a8e>
  7af8b2:	48 83 bd 10 ff ff ff 	cmp    QWORD PTR [rbp-0xf0],0x8
  7af8b9:	08 
  7af8ba:	0f 85 ce 02 00 00    	jne    7afb8e <t3dmix_mod_mp_t3dmix4_tile_+0x2a8e>
  7af8c0:	48 83 bd 20 ff ff ff 	cmp    QWORD PTR [rbp-0xe0],0x8
  7af8c7:	08 
  7af8c8:	0f 85 ad 02 00 00    	jne    7afb7b <t3dmix_mod_mp_t3dmix4_tile_+0x2a7b>
  7af8ce:	48 83 bd 40 ff ff ff 	cmp    QWORD PTR [rbp-0xc0],0x8
  7af8d5:	08 
  7af8d6:	0f 85 8c 02 00 00    	jne    7afb68 <t3dmix_mod_mp_t3dmix4_tile_+0x2a68>
  7af8dc:	44 8b 85 30 fa ff ff 	mov    r8d,DWORD PTR [rbp-0x5d0]
  7af8e3:	45 33 db             	xor    r11d,r11d
  7af8e6:	48 8b 85 d8 f3 ff ff 	mov    rax,QWORD PTR [rbp-0xc28]
  7af8ed:	33 ff                	xor    edi,edi
  7af8ef:	4c 8b 95 e0 fc ff ff 	mov    r10,QWORD PTR [rbp-0x320]
  7af8f6:	4c 8b 8d c8 f3 ff ff 	mov    r9,QWORD PTR [rbp-0xc38]
  7af8fd:	48 89 85 38 f9 ff ff 	mov    QWORD PTR [rbp-0x6c8],rax
  7af904:	44 3b 85 40 fa ff ff 	cmp    r8d,DWORD PTR [rbp-0x5c0]
  7af90b:	4c 8b 85 d0 f3 ff ff 	mov    r8,QWORD PTR [rbp-0xc30]
  7af912:	0f 8f b8 06 00 00    	jg     7affd0 <t3dmix_mod_mp_t3dmix4_tile_+0x2ed0>
  7af918:	48 8b 95 18 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x6e8]
  7af91f:	48 8b 8d 08 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x6f8]
  7af926:	49 0f af d4          	imul   rdx,r12
  7af92a:	49 0f af cc          	imul   rcx,r12
  7af92e:	c5 fd 10 0d ca aa 09 	vmovupd ymm1,YMMWORD PTR [rip+0x9aaca]        # 84a400 <var$630.126.450+0x460>
  7af935:	00 
  7af936:	c5 fb 10 05 5a c8 09 	vmovsd xmm0,QWORD PTR [rip+0x9c85a]        # 84c198 <__STRLITPACK_0.112+0x88>
  7af93d:	00 
  7af93e:	48 8b b5 10 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x6f0]
  7af945:	49 0f af f4          	imul   rsi,r12
  7af949:	48 8b 85 c8 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x638]
  7af950:	4c 8b bd 58 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6a8]
  7af957:	48 03 b5 a0 f9 ff ff 	add    rsi,QWORD PTR [rbp-0x660]
  7af95e:	4c 89 a5 28 f9 ff ff 	mov    QWORD PTR [rbp-0x6d8],r12
  7af965:	48 03 c2             	add    rax,rdx
  7af968:	48 03 95 c0 f9 ff ff 	add    rdx,QWORD PTR [rbp-0x640]
  7af96f:	4c 03 f9             	add    r15,rcx
  7af972:	48 03 8d 68 f9 ff ff 	add    rcx,QWORD PTR [rbp-0x698]
  7af979:	48 89 95 40 fc ff ff 	mov    QWORD PTR [rbp-0x3c0],rdx
  7af980:	48 89 85 48 fc ff ff 	mov    QWORD PTR [rbp-0x3b8],rax
  7af987:	48 89 8d 30 fc ff ff 	mov    QWORD PTR [rbp-0x3d0],rcx
  7af98e:	4c 89 bd 38 fc ff ff 	mov    QWORD PTR [rbp-0x3c8],r15
  7af995:	48 89 f8             	mov    rax,rdi
  7af998:	48 8b 95 38 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x6c8]
  7af99f:	8b 8d b8 fd ff ff    	mov    ecx,DWORD PTR [rbp-0x248]
  7af9a5:	3b 8d b0 fd ff ff    	cmp    ecx,DWORD PTR [rbp-0x250]
  7af9ab:	0f 8c 5c 01 00 00    	jl     7afb0d <t3dmix_mod_mp_t3dmix4_tile_+0x2a0d>
  7af9b1:	48 83 bd 58 ff ff ff 	cmp    QWORD PTR [rbp-0xa8],0x4
  7af9b8:	04 
  7af9b9:	0f 8c 91 25 00 00    	jl     7b1f50 <t3dmix_mod_mp_t3dmix4_tile_+0x4e50>
  7af9bf:	4c 8b bd 40 fc ff ff 	mov    r15,QWORD PTR [rbp-0x3c0]
  7af9c6:	45 33 f6             	xor    r14d,r14d
  7af9c9:	4c 8b ad 30 fc ff ff 	mov    r13,QWORD PTR [rbp-0x3d0]
  7af9d0:	4c 8b a5 38 fc ff ff 	mov    r12,QWORD PTR [rbp-0x3c8]
  7af9d7:	48 8b 4d e0          	mov    rcx,QWORD PTR [rbp-0x20]
  7af9db:	4c 03 f8             	add    r15,rax
  7af9de:	4c 89 bd 58 fc ff ff 	mov    QWORD PTR [rbp-0x3a8],r15
  7af9e5:	4c 03 ef             	add    r13,rdi
  7af9e8:	4c 8b bd 48 fc ff ff 	mov    r15,QWORD PTR [rbp-0x3b8]
  7af9ef:	4c 03 e7             	add    r12,rdi
  7af9f2:	48 89 bd 20 fc ff ff 	mov    QWORD PTR [rbp-0x3e0],rdi
  7af9f9:	4c 89 9d 28 fc ff ff 	mov    QWORD PTR [rbp-0x3d8],r11
  7afa00:	4c 8b 9d 58 fc ff ff 	mov    r11,QWORD PTR [rbp-0x3a8]
  7afa07:	4c 03 f8             	add    r15,rax
  7afa0a:	4c 89 bd 50 fc ff ff 	mov    QWORD PTR [rbp-0x3b0],r15
  7afa11:	49 89 cf             	mov    r15,rcx
  7afa14:	48 8b bd 50 fc ff ff 	mov    rdi,QWORD PTR [rbp-0x3b0]
  7afa1b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  7afa20:	c4 a1 75 59 14 f6    	vmulpd ymm2,ymm1,YMMWORD PTR [rsi+r14*8]
  7afa26:	c4 81 7d 10 2c f4    	vmovupd ymm5,YMMWORD PTR [r12+r14*8]
  7afa2c:	c4 01 7d 10 04 f3    	vmovupd ymm8,YMMWORD PTR [r11+r14*8]
  7afa32:	c4 81 6d 59 1c f1    	vmulpd ymm3,ymm2,YMMWORD PTR [r9+r14*8]
  7afa38:	c4 81 55 58 7c f5 00 	vaddpd ymm7,ymm5,YMMWORD PTR [r13+r14*8+0x0]
  7afa3f:	c4 21 3d 5c 14 f7    	vsubpd ymm10,ymm8,YMMWORD PTR [rdi+r14*8]
  7afa45:	c4 81 65 59 24 f0    	vmulpd ymm4,ymm3,YMMWORD PTR [r8+r14*8]
  7afa4b:	c4 a1 5d 59 34 f2    	vmulpd ymm6,ymm4,YMMWORD PTR [rdx+r14*8]
  7afa51:	c5 4d 59 cf          	vmulpd ymm9,ymm6,ymm7
  7afa55:	c4 41 35 59 da       	vmulpd ymm11,ymm9,ymm10
  7afa5a:	c4 01 7d 11 1c f2    	vmovupd YMMWORD PTR [r10+r14*8],ymm11
  7afa60:	49 83 c6 04          	add    r14,0x4
  7afa64:	4d 3b f7             	cmp    r14,r15
  7afa67:	72 b7                	jb     7afa20 <t3dmix_mod_mp_t3dmix4_tile_+0x2920>
  7afa69:	48 8b bd 20 fc ff ff 	mov    rdi,QWORD PTR [rbp-0x3e0]
  7afa70:	4c 8b 9d 28 fc ff ff 	mov    r11,QWORD PTR [rbp-0x3d8]
  7afa77:	48 3b 8d 58 ff ff ff 	cmp    rcx,QWORD PTR [rbp-0xa8]
  7afa7e:	0f 83 89 00 00 00    	jae    7afb0d <t3dmix_mod_mp_t3dmix4_tile_+0x2a0d>
  7afa84:	4c 8b bd 30 fc ff ff 	mov    r15,QWORD PTR [rbp-0x3d0]
  7afa8b:	4c 8b b5 38 fc ff ff 	mov    r14,QWORD PTR [rbp-0x3c8]
  7afa92:	4c 8b ad 40 fc ff ff 	mov    r13,QWORD PTR [rbp-0x3c0]
  7afa99:	4c 8b a5 48 fc ff ff 	mov    r12,QWORD PTR [rbp-0x3b8]
  7afaa0:	4c 03 ff             	add    r15,rdi
  7afaa3:	4c 89 9d 28 fc ff ff 	mov    QWORD PTR [rbp-0x3d8],r11
  7afaaa:	4c 03 f7             	add    r14,rdi
  7afaad:	4c 8b 9d 58 ff ff ff 	mov    r11,QWORD PTR [rbp-0xa8]
  7afab4:	4c 03 e8             	add    r13,rax
  7afab7:	4c 03 e0             	add    r12,rax
  7afaba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  7afac0:	c5 fb 59 14 ce       	vmulsd xmm2,xmm0,QWORD PTR [rsi+rcx*8]
  7afac5:	c4 c1 6b 59 1c c9    	vmulsd xmm3,xmm2,QWORD PTR [r9+rcx*8]
  7afacb:	c4 c1 63 59 24 c8    	vmulsd xmm4,xmm3,QWORD PTR [r8+rcx*8]
  7afad1:	c4 c1 7b 10 2c ce    	vmovsd xmm5,QWORD PTR [r14+rcx*8]
  7afad7:	c5 db 59 34 ca       	vmulsd xmm6,xmm4,QWORD PTR [rdx+rcx*8]
  7afadc:	c4 c1 53 58 3c cf    	vaddsd xmm7,xmm5,QWORD PTR [r15+rcx*8]
  7afae2:	c4 41 7b 10 44 cd 00 	vmovsd xmm8,QWORD PTR [r13+rcx*8+0x0]
  7afae9:	c5 4b 59 cf          	vmulsd xmm9,xmm6,xmm7
  7afaed:	c4 41 3b 5c 14 cc    	vsubsd xmm10,xmm8,QWORD PTR [r12+rcx*8]
  7afaf3:	c4 41 33 59 da       	vmulsd xmm11,xmm9,xmm10
  7afaf8:	c4 41 7b 11 1c ca    	vmovsd QWORD PTR [r10+rcx*8],xmm11
  7afafe:	48 ff c1             	inc    rcx
  7afb01:	49 3b cb             	cmp    rcx,r11
  7afb04:	72 ba                	jb     7afac0 <t3dmix_mod_mp_t3dmix4_tile_+0x29c0>
  7afb06:	4c 8b 9d 28 fc ff ff 	mov    r11,QWORD PTR [rbp-0x3d8]
  7afb0d:	49 ff c3             	inc    r11
  7afb10:	4c 03 95 58 fe ff ff 	add    r10,QWORD PTR [rbp-0x1a8]
  7afb17:	48 03 b5 10 fe ff ff 	add    rsi,QWORD PTR [rbp-0x1f0]
  7afb1e:	4c 03 8d 08 fe ff ff 	add    r9,QWORD PTR [rbp-0x1f8]
  7afb25:	4c 03 85 e8 fd ff ff 	add    r8,QWORD PTR [rbp-0x218]
  7afb2c:	48 03 95 e0 fd ff ff 	add    rdx,QWORD PTR [rbp-0x220]
  7afb33:	48 03 bd f8 fd ff ff 	add    rdi,QWORD PTR [rbp-0x208]
  7afb3a:	48 03 85 18 fe ff ff 	add    rax,QWORD PTR [rbp-0x1e8]
  7afb41:	4c 3b 9d 50 fe ff ff 	cmp    r11,QWORD PTR [rbp-0x1b0]
  7afb48:	0f 82 51 fe ff ff    	jb     7af99f <t3dmix_mod_mp_t3dmix4_tile_+0x289f>
  7afb4e:	4c 8b b5 f8 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x708]
  7afb55:	4c 8b a5 28 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6d8]
  7afb5c:	4c 8b ad f0 f8 ff ff 	mov    r13,QWORD PTR [rbp-0x710]
  7afb63:	e9 68 04 00 00       	jmp    7affd0 <t3dmix_mod_mp_t3dmix4_tile_+0x2ed0>
  7afb68:	8b 85 30 fa ff ff    	mov    eax,DWORD PTR [rbp-0x5d0]
  7afb6e:	3b 85 40 fa ff ff    	cmp    eax,DWORD PTR [rbp-0x5c0]
  7afb74:	7e 2a                	jle    7afba0 <t3dmix_mod_mp_t3dmix4_tile_+0x2aa0>
  7afb76:	e9 55 04 00 00       	jmp    7affd0 <t3dmix_mod_mp_t3dmix4_tile_+0x2ed0>
  7afb7b:	8b 85 30 fa ff ff    	mov    eax,DWORD PTR [rbp-0x5d0]
  7afb81:	3b 85 40 fa ff ff    	cmp    eax,DWORD PTR [rbp-0x5c0]
  7afb87:	7e 17                	jle    7afba0 <t3dmix_mod_mp_t3dmix4_tile_+0x2aa0>
  7afb89:	e9 16 06 00 00       	jmp    7b01a4 <t3dmix_mod_mp_t3dmix4_tile_+0x30a4>
  7afb8e:	8b 85 30 fa ff ff    	mov    eax,DWORD PTR [rbp-0x5d0]
  7afb94:	3b 85 40 fa ff ff    	cmp    eax,DWORD PTR [rbp-0x5c0]
  7afb9a:	0f 8f 22 04 00 00    	jg     7affc2 <t3dmix_mod_mp_t3dmix4_tile_+0x2ec2>
  7afba0:	4c 8b 85 08 f9 ff ff 	mov    r8,QWORD PTR [rbp-0x6f8]
  7afba7:	45 33 c9             	xor    r9d,r9d
  7afbaa:	4d 0f af c4          	imul   r8,r12
  7afbae:	48 8b 85 60 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x6a0]
  7afbb5:	4c 8b 9d 10 f9 ff ff 	mov    r11,QWORD PTR [rbp-0x6f0]
  7afbbc:	4d 0f af dc          	imul   r11,r12
  7afbc0:	48 8b 8d 70 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x690]
  7afbc7:	4a 8d 14 00          	lea    rdx,[rax+r8*1]
  7afbcb:	48 8b 85 18 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x6e8]
  7afbd2:	49 0f af c4          	imul   rax,r12
  7afbd6:	4c 03 85 b0 f9 ff ff 	add    r8,QWORD PTR [rbp-0x650]
  7afbdd:	4c 8d 3c 01          	lea    r15,[rcx+rax*1]
  7afbe1:	48 03 85 50 f9 ff ff 	add    rax,QWORD PTR [rbp-0x6b0]
  7afbe8:	4c 03 9d 78 f9 ff ff 	add    r11,QWORD PTR [rbp-0x688]
  7afbef:	4c 8b 95 88 f9 ff ff 	mov    r10,QWORD PTR [rbp-0x678]
  7afbf6:	48 89 95 d0 fb ff ff 	mov    QWORD PTR [rbp-0x430],rdx
  7afbfd:	33 d2                	xor    edx,edx
  7afbff:	48 8b b5 e0 fc ff ff 	mov    rsi,QWORD PTR [rbp-0x320]
  7afc06:	48 8b bd b8 f9 ff ff 	mov    rdi,QWORD PTR [rbp-0x648]
  7afc0d:	48 8b 8d 90 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x670]
  7afc14:	48 89 95 20 fe ff ff 	mov    QWORD PTR [rbp-0x1e0],rdx
  7afc1b:	4c 89 95 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],r10
  7afc22:	4c 89 9d 70 ff ff ff 	mov    QWORD PTR [rbp-0x90],r11
  7afc29:	48 89 85 e8 fb ff ff 	mov    QWORD PTR [rbp-0x418],rax
  7afc30:	4c 89 85 f0 fb ff ff 	mov    QWORD PTR [rbp-0x410],r8
  7afc37:	4c 89 bd f8 fb ff ff 	mov    QWORD PTR [rbp-0x408],r15
  7afc3e:	4c 89 8d 30 fe ff ff 	mov    QWORD PTR [rbp-0x1d0],r9
  7afc45:	4c 89 a5 28 f9 ff ff 	mov    QWORD PTR [rbp-0x6d8],r12
  7afc4c:	c5 fb 10 0d 44 c5 09 	vmovsd xmm1,QWORD PTR [rip+0x9c544]        # 84c198 <__STRLITPACK_0.112+0x88>
  7afc53:	00 
  7afc54:	c5 f9 10 05 94 bd 09 	vmovupd xmm0,XMMWORD PTR [rip+0x9bd94]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  7afc5b:	00 
  7afc5c:	8b 85 b8 fd ff ff    	mov    eax,DWORD PTR [rbp-0x248]
  7afc62:	3b 85 b0 fd ff ff    	cmp    eax,DWORD PTR [rbp-0x250]
  7afc68:	0f 8c c6 02 00 00    	jl     7aff34 <t3dmix_mod_mp_t3dmix4_tile_+0x2e34>
  7afc6e:	48 83 bd 58 ff ff ff 	cmp    QWORD PTR [rbp-0xa8],0x2
  7afc75:	02 
  7afc76:	0f 8c ce 24 00 00    	jl     7b214a <t3dmix_mod_mp_t3dmix4_tile_+0x504a>
  7afc7c:	4c 8b ad 20 fe ff ff 	mov    r13,QWORD PTR [rbp-0x1e0]
  7afc83:	45 33 e4             	xor    r12d,r12d
  7afc86:	4c 8b 95 e8 fb ff ff 	mov    r10,QWORD PTR [rbp-0x418]
  7afc8d:	4c 8b 85 f8 fb ff ff 	mov    r8,QWORD PTR [rbp-0x408]
  7afc94:	4c 8b bd f0 fb ff ff 	mov    r15,QWORD PTR [rbp-0x410]
  7afc9b:	4c 8b 9d d0 fb ff ff 	mov    r11,QWORD PTR [rbp-0x430]
  7afca2:	4f 8d 34 2a          	lea    r14,[r10+r13*1]
  7afca6:	45 33 d2             	xor    r10d,r10d
  7afca9:	4f 8d 0c 28          	lea    r9,[r8+r13*1]
  7afcad:	4c 89 4d 88          	mov    QWORD PTR [rbp-0x78],r9
  7afcb1:	45 33 c9             	xor    r9d,r9d
  7afcb4:	45 33 c0             	xor    r8d,r8d
  7afcb7:	4c 03 fa             	add    r15,rdx
  7afcba:	4c 89 75 80          	mov    QWORD PTR [rbp-0x80],r14
  7afcbe:	45 33 f6             	xor    r14d,r14d
  7afcc1:	45 33 ed             	xor    r13d,r13d
  7afcc4:	4c 03 da             	add    r11,rdx
  7afcc7:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  7afccb:	4c 89 7d 90          	mov    QWORD PTR [rbp-0x70],r15
  7afccf:	48 89 85 18 fc ff ff 	mov    QWORD PTR [rbp-0x3e8],rax
  7afcd6:	48 89 95 10 fc ff ff 	mov    QWORD PTR [rbp-0x3f0],rdx
  7afcdd:	4d 89 ef             	mov    r15,r13
  7afce0:	48 8b 85 70 ff ff ff 	mov    rax,QWORD PTR [rbp-0x90]
  7afce7:	48 8b 95 38 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xc8]
  7afcee:	49 03 c2             	add    rax,r10
  7afcf1:	c5 fb 10 10          	vmovsd xmm2,QWORD PTR [rax]
  7afcf5:	4d 8d 14 52          	lea    r10,[r10+rdx*2]
  7afcf9:	c5 e9 16 1c 10       	vmovhpd xmm3,xmm2,QWORD PTR [rax+rdx*1]
  7afcfe:	c5 f9 59 eb          	vmulpd xmm5,xmm0,xmm3
  7afd02:	48 8b 85 78 ff ff ff 	mov    rax,QWORD PTR [rbp-0x88]
  7afd09:	4a 8d 14 08          	lea    rdx,[rax+r9*1]
  7afd0d:	48 8b 85 30 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd0]
  7afd14:	c5 fb 10 22          	vmovsd xmm4,QWORD PTR [rdx]
  7afd18:	c5 d9 16 34 02       	vmovhpd xmm6,xmm4,QWORD PTR [rdx+rax*1]
  7afd1d:	4d 8d 0c 41          	lea    r9,[r9+rax*2]
  7afd21:	c5 51 59 c6          	vmulpd xmm8,xmm5,xmm6
  7afd25:	48 8b 85 18 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe8]
  7afd2c:	4a 8d 14 07          	lea    rdx,[rdi+r8*1]
  7afd30:	c5 fb 10 3a          	vmovsd xmm7,QWORD PTR [rdx]
  7afd34:	c5 41 16 0c 02       	vmovhpd xmm9,xmm7,QWORD PTR [rdx+rax*1]
  7afd39:	4d 8d 04 40          	lea    r8,[r8+rax*2]
  7afd3d:	48 8b 85 10 ff ff ff 	mov    rax,QWORD PTR [rbp-0xf0]
  7afd44:	4a 8d 14 31          	lea    rdx,[rcx+r14*1]
  7afd48:	c5 7b 10 12          	vmovsd xmm10,QWORD PTR [rdx]
  7afd4c:	c4 41 39 59 d9       	vmulpd xmm11,xmm8,xmm9
  7afd51:	c5 29 16 24 02       	vmovhpd xmm12,xmm10,QWORD PTR [rdx+rax*1]
  7afd56:	4d 8d 34 46          	lea    r14,[r14+rax*2]
  7afd5a:	48 8b 95 20 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xe0]
  7afd61:	4b 8d 04 2b          	lea    rax,[r11+r13*1]
  7afd65:	c5 7b 10 28          	vmovsd xmm13,QWORD PTR [rax]
  7afd69:	c4 c1 21 59 d4       	vmulpd xmm2,xmm11,xmm12
  7afd6e:	c5 11 16 3c 10       	vmovhpd xmm15,xmm13,QWORD PTR [rax+rdx*1]
  7afd73:	48 8b 45 90          	mov    rax,QWORD PTR [rbp-0x70]
  7afd77:	49 03 c5             	add    rax,r13
  7afd7a:	c5 7b 10 30          	vmovsd xmm14,QWORD PTR [rax]
  7afd7e:	4d 8d 6c 55 00       	lea    r13,[r13+rdx*2+0x0]
  7afd83:	c5 09 16 2c 10       	vmovhpd xmm13,xmm14,QWORD PTR [rax+rdx*1]
  7afd88:	48 8b 55 88          	mov    rdx,QWORD PTR [rbp-0x78]
  7afd8c:	48 8b 85 40 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc0]
  7afd93:	c4 c1 01 58 dd       	vaddpd xmm3,xmm15,xmm13
  7afd98:	c5 69 59 c3          	vmulpd xmm8,xmm2,xmm3
  7afd9c:	49 03 d7             	add    rdx,r15
  7afd9f:	c5 fb 10 22          	vmovsd xmm4,QWORD PTR [rdx]
  7afda3:	c5 d9 16 34 02       	vmovhpd xmm6,xmm4,QWORD PTR [rdx+rax*1]
  7afda8:	48 8b 55 80          	mov    rdx,QWORD PTR [rbp-0x80]
  7afdac:	49 03 d7             	add    rdx,r15
  7afdaf:	c5 fb 10 2a          	vmovsd xmm5,QWORD PTR [rdx]
  7afdb3:	4d 8d 3c 47          	lea    r15,[r15+rax*2]
  7afdb7:	c5 d1 16 3c 02       	vmovhpd xmm7,xmm5,QWORD PTR [rdx+rax*1]
  7afdbc:	c5 49 5c cf          	vsubpd xmm9,xmm6,xmm7
  7afdc0:	c4 41 39 59 d1       	vmulpd xmm10,xmm8,xmm9
  7afdc5:	c4 21 79 11 14 e6    	vmovupd XMMWORD PTR [rsi+r12*8],xmm10
  7afdcb:	49 83 c4 02          	add    r12,0x2
  7afdcf:	4c 3b 65 d8          	cmp    r12,QWORD PTR [rbp-0x28]
  7afdd3:	0f 82 07 ff ff ff    	jb     7afce0 <t3dmix_mod_mp_t3dmix4_tile_+0x2be0>
  7afdd9:	48 8b 85 18 fc ff ff 	mov    rax,QWORD PTR [rbp-0x3e8]
  7afde0:	48 8b 95 10 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x3f0]
  7afde7:	4c 8b 9d 40 ff ff ff 	mov    r11,QWORD PTR [rbp-0xc0]
  7afdee:	4c 8b 95 20 ff ff ff 	mov    r10,QWORD PTR [rbp-0xe0]
  7afdf5:	4c 8b 8d 30 ff ff ff 	mov    r9,QWORD PTR [rbp-0xd0]
  7afdfc:	4c 8b 85 10 ff ff ff 	mov    r8,QWORD PTR [rbp-0xf0]
  7afe03:	4c 8b ad 18 ff ff ff 	mov    r13,QWORD PTR [rbp-0xe8]
  7afe0a:	4c 8b a5 38 ff ff ff 	mov    r12,QWORD PTR [rbp-0xc8]
  7afe11:	4c 0f af d8          	imul   r11,rax
  7afe15:	4c 0f af d0          	imul   r10,rax
  7afe19:	4c 0f af c8          	imul   r9,rax
  7afe1d:	4c 0f af c0          	imul   r8,rax
  7afe21:	4c 0f af e8          	imul   r13,rax
  7afe25:	4c 0f af e0          	imul   r12,rax
  7afe29:	48 3b 85 58 ff ff ff 	cmp    rax,QWORD PTR [rbp-0xa8]
  7afe30:	0f 83 fe 00 00 00    	jae    7aff34 <t3dmix_mod_mp_t3dmix4_tile_+0x2e34>
  7afe36:	4c 8b bd d0 fb ff ff 	mov    r15,QWORD PTR [rbp-0x430]
  7afe3d:	48 89 95 10 fc ff ff 	mov    QWORD PTR [rbp-0x3f0],rdx
  7afe44:	4d 8d 34 17          	lea    r14,[r15+rdx*1]
  7afe48:	4c 8b bd f0 fb ff ff 	mov    r15,QWORD PTR [rbp-0x410]
  7afe4f:	4c 89 b5 68 ff ff ff 	mov    QWORD PTR [rbp-0x98],r14
  7afe56:	4d 8d 34 17          	lea    r14,[r15+rdx*1]
  7afe5a:	4c 89 b5 00 fc ff ff 	mov    QWORD PTR [rbp-0x400],r14
  7afe61:	4c 8b bd f8 fb ff ff 	mov    r15,QWORD PTR [rbp-0x408]
  7afe68:	4c 8b b5 20 fe ff ff 	mov    r14,QWORD PTR [rbp-0x1e0]
  7afe6f:	4d 03 fe             	add    r15,r14
  7afe72:	4c 89 bd 08 fc ff ff 	mov    QWORD PTR [rbp-0x3f8],r15
  7afe79:	4c 8b bd e8 fb ff ff 	mov    r15,QWORD PTR [rbp-0x418]
  7afe80:	48 8b 95 08 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x3f8]
  7afe87:	4d 03 f7             	add    r14,r15
  7afe8a:	4c 89 b5 60 ff ff ff 	mov    QWORD PTR [rbp-0xa0],r14
  7afe91:	4c 8b b5 00 fc ff ff 	mov    r14,QWORD PTR [rbp-0x400]
  7afe98:	4c 8b bd 70 ff ff ff 	mov    r15,QWORD PTR [rbp-0x90]
  7afe9f:	c4 41 7b 10 04 13    	vmovsd xmm8,QWORD PTR [r11+rdx*1]
  7afea5:	c4 81 73 59 14 3c    	vmulsd xmm2,xmm1,QWORD PTR [r12+r15*1]
  7afeab:	4c 8b bd 78 ff ff ff 	mov    r15,QWORD PTR [rbp-0x88]
  7afeb2:	4c 03 a5 38 ff ff ff 	add    r12,QWORD PTR [rbp-0xc8]
  7afeb9:	c4 81 6b 59 1c 39    	vmulsd xmm3,xmm2,QWORD PTR [r9+r15*1]
  7afebf:	c4 c1 63 59 64 3d 00 	vmulsd xmm4,xmm3,QWORD PTR [r13+rdi*1+0x0]
  7afec6:	4c 8b bd 68 ff ff ff 	mov    r15,QWORD PTR [rbp-0x98]
  7afecd:	c4 c1 5b 59 34 08    	vmulsd xmm6,xmm4,QWORD PTR [r8+rcx*1]
  7afed3:	c4 81 7b 10 2c 3a    	vmovsd xmm5,QWORD PTR [r10+r15*1]
  7afed9:	4c 8b bd 60 ff ff ff 	mov    r15,QWORD PTR [rbp-0xa0]
  7afee0:	4c 03 ad 18 ff ff ff 	add    r13,QWORD PTR [rbp-0xe8]
  7afee7:	4c 03 85 10 ff ff ff 	add    r8,QWORD PTR [rbp-0xf0]
  7afeee:	4c 03 8d 30 ff ff ff 	add    r9,QWORD PTR [rbp-0xd0]
  7afef5:	c4 81 53 58 3c 32    	vaddsd xmm7,xmm5,QWORD PTR [r10+r14*1]
  7afefb:	c4 01 3b 5c 14 3b    	vsubsd xmm10,xmm8,QWORD PTR [r11+r15*1]
  7aff01:	c5 4b 59 cf          	vmulsd xmm9,xmm6,xmm7
  7aff05:	c4 41 33 59 da       	vmulsd xmm11,xmm9,xmm10
  7aff0a:	c5 7b 11 1c c6       	vmovsd QWORD PTR [rsi+rax*8],xmm11
  7aff0f:	48 ff c0             	inc    rax
  7aff12:	4c 03 95 20 ff ff ff 	add    r10,QWORD PTR [rbp-0xe0]
  7aff19:	4c 03 9d 40 ff ff ff 	add    r11,QWORD PTR [rbp-0xc0]
  7aff20:	48 3b 85 58 ff ff ff 	cmp    rax,QWORD PTR [rbp-0xa8]
  7aff27:	0f 82 6b ff ff ff    	jb     7afe98 <t3dmix_mod_mp_t3dmix4_tile_+0x2d98>
  7aff2d:	48 8b 95 10 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x3f0]
  7aff34:	48 8b 85 70 ff ff ff 	mov    rax,QWORD PTR [rbp-0x90]
  7aff3b:	4c 8b 85 78 ff ff ff 	mov    r8,QWORD PTR [rbp-0x88]
  7aff42:	4c 8b 8d 20 fe ff ff 	mov    r9,QWORD PTR [rbp-0x1e0]
  7aff49:	4c 8b 95 30 fe ff ff 	mov    r10,QWORD PTR [rbp-0x1d0]
  7aff50:	49 ff c2             	inc    r10
  7aff53:	48 03 85 10 fe ff ff 	add    rax,QWORD PTR [rbp-0x1f0]
  7aff5a:	4c 03 85 08 fe ff ff 	add    r8,QWORD PTR [rbp-0x1f8]
  7aff61:	4c 03 8d 18 fe ff ff 	add    r9,QWORD PTR [rbp-0x1e8]
  7aff68:	48 03 b5 58 fe ff ff 	add    rsi,QWORD PTR [rbp-0x1a8]
  7aff6f:	48 03 bd e8 fd ff ff 	add    rdi,QWORD PTR [rbp-0x218]
  7aff76:	48 03 8d e0 fd ff ff 	add    rcx,QWORD PTR [rbp-0x220]
  7aff7d:	48 03 95 f8 fd ff ff 	add    rdx,QWORD PTR [rbp-0x208]
  7aff84:	48 89 85 70 ff ff ff 	mov    QWORD PTR [rbp-0x90],rax
  7aff8b:	4c 89 85 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],r8
  7aff92:	4c 89 8d 20 fe ff ff 	mov    QWORD PTR [rbp-0x1e0],r9
  7aff99:	4c 89 95 30 fe ff ff 	mov    QWORD PTR [rbp-0x1d0],r10
  7affa0:	4c 3b 95 50 fe ff ff 	cmp    r10,QWORD PTR [rbp-0x1b0]
  7affa7:	0f 82 af fc ff ff    	jb     7afc5c <t3dmix_mod_mp_t3dmix4_tile_+0x2b5c>
  7affad:	4c 8b b5 f8 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x708]
  7affb4:	4c 8b a5 28 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6d8]
  7affbb:	4c 8b ad f0 f8 ff ff 	mov    r13,QWORD PTR [rbp-0x710]
  7affc2:	48 83 bd 20 ff ff ff 	cmp    QWORD PTR [rbp-0xe0],0x8
  7affc9:	08 
  7affca:	0f 85 d4 01 00 00    	jne    7b01a4 <t3dmix_mod_mp_t3dmix4_tile_+0x30a4>
  7affd0:	48 83 bd 28 ff ff ff 	cmp    QWORD PTR [rbp-0xd8],0x8
  7affd7:	08 
  7affd8:	0f 85 c6 01 00 00    	jne    7b01a4 <t3dmix_mod_mp_t3dmix4_tile_+0x30a4>
  7affde:	48 83 bd 48 ff ff ff 	cmp    QWORD PTR [rbp-0xb8],0x8
  7affe5:	08 
  7affe6:	0f 85 b8 01 00 00    	jne    7b01a4 <t3dmix_mod_mp_t3dmix4_tile_+0x30a4>
  7affec:	8b 85 38 fa ff ff    	mov    eax,DWORD PTR [rbp-0x5c8]
  7afff2:	33 ff                	xor    edi,edi
  7afff4:	4c 8b 8d b8 f3 ff ff 	mov    r9,QWORD PTR [rbp-0xc48]
  7afffb:	33 f6                	xor    esi,esi
  7afffd:	4c 8b 85 c0 f3 ff ff 	mov    r8,QWORD PTR [rbp-0xc40]
  7b0004:	3b 85 30 fa ff ff    	cmp    eax,DWORD PTR [rbp-0x5d0]
  7b000a:	0f 8c 5f 04 00 00    	jl     7b046f <t3dmix_mod_mp_t3dmix4_tile_+0x336f>
  7b0010:	48 8b 8d 08 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x6f8]
  7b0017:	49 0f af cc          	imul   rcx,r12
  7b001b:	c5 fd 10 0d 3d a0 09 	vmovupd ymm1,YMMWORD PTR [rip+0x9a03d]        # 84a060 <var$630.126.450+0xc0>
  7b0022:	00 
  7b0023:	c5 fb 10 05 55 c1 09 	vmovsd xmm0,QWORD PTR [rip+0x9c155]        # 84c180 <__STRLITPACK_0.112+0x70>
  7b002a:	00 
  7b002b:	48 03 8d 58 f9 ff ff 	add    rcx,QWORD PTR [rbp-0x6a8]
  7b0032:	48 8b 95 58 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xa8]
  7b0039:	4c 89 a5 28 f9 ff ff 	mov    QWORD PTR [rbp-0x6d8],r12
  7b0040:	8b 85 b8 fd ff ff    	mov    eax,DWORD PTR [rbp-0x248]
  7b0046:	3b 85 b0 fd ff ff    	cmp    eax,DWORD PTR [rbp-0x250]
  7b004c:	0f 8c 21 01 00 00    	jl     7b0173 <t3dmix_mod_mp_t3dmix4_tile_+0x3073>
  7b0052:	48 83 fa 04          	cmp    rdx,0x4
  7b0056:	0f 8c fb 1e 00 00    	jl     7b1f57 <t3dmix_mod_mp_t3dmix4_tile_+0x4e57>
  7b005c:	4c 8b b5 f0 fc ff ff 	mov    r14,QWORD PTR [rbp-0x310]
  7b0063:	45 33 ff             	xor    r15d,r15d
  7b0066:	4c 8b ad e8 fc ff ff 	mov    r13,QWORD PTR [rbp-0x318]
  7b006d:	4c 8b a5 d8 fc ff ff 	mov    r12,QWORD PTR [rbp-0x328]
  7b0074:	4c 8b 9d e0 fc ff ff 	mov    r11,QWORD PTR [rbp-0x320]
  7b007b:	4c 03 f6             	add    r14,rsi
  7b007e:	4c 8b 95 f8 fc ff ff 	mov    r10,QWORD PTR [rbp-0x308]
  7b0085:	4c 03 ee             	add    r13,rsi
  7b0088:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  7b008c:	4c 03 e6             	add    r12,rsi
  7b008f:	48 89 c2             	mov    rdx,rax
  7b0092:	4c 03 de             	add    r11,rsi
  7b0095:	4c 03 d6             	add    r10,rsi
  7b0098:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  7b009f:	00 
  7b00a0:	c4 a1 75 5e 1c f9    	vdivpd ymm3,ymm1,YMMWORD PTR [rcx+r15*8]
  7b00a6:	c4 81 7d 10 14 f9    	vmovupd ymm2,YMMWORD PTR [r9+r15*8]
  7b00ac:	c4 81 7d 10 6c fd 08 	vmovupd ymm5,YMMWORD PTR [r13+r15*8+0x8]
  7b00b3:	c4 81 6d 59 24 f8    	vmulpd ymm4,ymm2,YMMWORD PTR [r8+r15*8]
  7b00b9:	c4 81 55 5c 34 fa    	vsubpd ymm6,ymm5,YMMWORD PTR [r10+r15*8]
  7b00bf:	c5 65 59 c4          	vmulpd ymm8,ymm3,ymm4
  7b00c3:	c4 81 4d 58 7c fe 08 	vaddpd ymm7,ymm6,YMMWORD PTR [r14+r15*8+0x8]
  7b00ca:	c4 01 45 5c 0c fb    	vsubpd ymm9,ymm7,YMMWORD PTR [r11+r15*8]
  7b00d0:	c4 41 3d 59 d1       	vmulpd ymm10,ymm8,ymm9
  7b00d5:	c4 01 7d 11 14 fc    	vmovupd YMMWORD PTR [r12+r15*8],ymm10
  7b00db:	49 83 c7 04          	add    r15,0x4
  7b00df:	4c 3b fa             	cmp    r15,rdx
  7b00e2:	72 bc                	jb     7b00a0 <t3dmix_mod_mp_t3dmix4_tile_+0x2fa0>
  7b00e4:	48 8b 95 58 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xa8]
  7b00eb:	48 3b c2             	cmp    rax,rdx
  7b00ee:	0f 83 7f 00 00 00    	jae    7b0173 <t3dmix_mod_mp_t3dmix4_tile_+0x3073>
  7b00f4:	4c 8b a5 f0 fc ff ff 	mov    r12,QWORD PTR [rbp-0x310]
  7b00fb:	4c 8b 9d e8 fc ff ff 	mov    r11,QWORD PTR [rbp-0x318]
  7b0102:	4c 8b 95 d8 fc ff ff 	mov    r10,QWORD PTR [rbp-0x328]
  7b0109:	4c 8b b5 e0 fc ff ff 	mov    r14,QWORD PTR [rbp-0x320]
  7b0110:	4c 03 e6             	add    r12,rsi
  7b0113:	4c 8b ad f8 fc ff ff 	mov    r13,QWORD PTR [rbp-0x308]
  7b011a:	4c 03 de             	add    r11,rsi
  7b011d:	4c 03 d6             	add    r10,rsi
  7b0120:	4c 03 f6             	add    r14,rsi
  7b0123:	4c 03 ee             	add    r13,rsi
  7b0126:	0f 1f 00             	nop    DWORD PTR [rax]
  7b0129:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  7b0130:	c5 fb 5e 24 c1       	vdivsd xmm4,xmm0,QWORD PTR [rcx+rax*8]
  7b0135:	c4 c1 7b 10 6c c3 08 	vmovsd xmm5,QWORD PTR [r11+rax*8+0x8]
  7b013c:	c4 c1 7b 10 14 c1    	vmovsd xmm2,QWORD PTR [r9+rax*8]
  7b0142:	c4 c1 6b 59 1c c0    	vmulsd xmm3,xmm2,QWORD PTR [r8+rax*8]
  7b0148:	c4 c1 53 5c 74 c5 00 	vsubsd xmm6,xmm5,QWORD PTR [r13+rax*8+0x0]
  7b014f:	c5 63 59 c4          	vmulsd xmm8,xmm3,xmm4
  7b0153:	c4 c1 4b 58 7c c4 08 	vaddsd xmm7,xmm6,QWORD PTR [r12+rax*8+0x8]
  7b015a:	c4 41 43 5c 0c c6    	vsubsd xmm9,xmm7,QWORD PTR [r14+rax*8]
  7b0160:	c4 41 3b 59 d1       	vmulsd xmm10,xmm8,xmm9
  7b0165:	c4 41 7b 11 14 c2    	vmovsd QWORD PTR [r10+rax*8],xmm10
  7b016b:	48 ff c0             	inc    rax
  7b016e:	48 3b c2             	cmp    rax,rdx
  7b0171:	72 bd                	jb     7b0130 <t3dmix_mod_mp_t3dmix4_tile_+0x3030>
  7b0173:	48 ff c7             	inc    rdi
  7b0176:	48 03 b5 58 fe ff ff 	add    rsi,QWORD PTR [rbp-0x1a8]
  7b017d:	48 03 8d f8 fd ff ff 	add    rcx,QWORD PTR [rbp-0x208]
  7b0184:	4c 03 8d f0 fd ff ff 	add    r9,QWORD PTR [rbp-0x210]
  7b018b:	4c 03 85 00 fe ff ff 	add    r8,QWORD PTR [rbp-0x200]
  7b0192:	48 3b bd 60 fe ff ff 	cmp    rdi,QWORD PTR [rbp-0x1a0]
  7b0199:	0f 82 a1 fe ff ff    	jb     7b0040 <t3dmix_mod_mp_t3dmix4_tile_+0x2f40>
  7b019f:	e9 b6 02 00 00       	jmp    7b045a <t3dmix_mod_mp_t3dmix4_tile_+0x335a>
  7b01a4:	8b 85 38 fa ff ff    	mov    eax,DWORD PTR [rbp-0x5c8]
  7b01aa:	33 ff                	xor    edi,edi
  7b01ac:	48 8b 8d 60 fa ff ff 	mov    rcx,QWORD PTR [rbp-0x5a0]
  7b01b3:	48 8b b5 48 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x5b8]
  7b01ba:	3b 85 30 fa ff ff    	cmp    eax,DWORD PTR [rbp-0x5d0]
  7b01c0:	48 89 f8             	mov    rax,rdi
  7b01c3:	0f 8c a6 02 00 00    	jl     7b046f <t3dmix_mod_mp_t3dmix4_tile_+0x336f>
  7b01c9:	48 8b 95 08 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x6f8]
  7b01d0:	49 0f af d4          	imul   rdx,r12
  7b01d4:	c5 fd 10 1d 84 9e 09 	vmovupd ymm3,YMMWORD PTR [rip+0x99e84]        # 84a060 <var$630.126.450+0xc0>
  7b01db:	00 
  7b01dc:	c5 fb 10 15 9c bf 09 	vmovsd xmm2,QWORD PTR [rip+0x9bf9c]        # 84c180 <__STRLITPACK_0.112+0x70>
  7b01e3:	00 
  7b01e4:	48 03 95 60 f9 ff ff 	add    rdx,QWORD PTR [rbp-0x6a0]
  7b01eb:	48 89 bd 28 fe ff ff 	mov    QWORD PTR [rbp-0x1d8],rdi
  7b01f2:	4c 89 a5 28 f9 ff ff 	mov    QWORD PTR [rbp-0x6d8],r12
  7b01f9:	8b bd b8 fd ff ff    	mov    edi,DWORD PTR [rbp-0x248]
  7b01ff:	3b bd b0 fd ff ff    	cmp    edi,DWORD PTR [rbp-0x250]
  7b0205:	0f 8c 15 02 00 00    	jl     7b0420 <t3dmix_mod_mp_t3dmix4_tile_+0x3320>
  7b020b:	48 83 bd 58 ff ff ff 	cmp    QWORD PTR [rbp-0xa8],0x4
  7b0212:	04 
  7b0213:	0f 8c 2a 1f 00 00    	jl     7b2143 <t3dmix_mod_mp_t3dmix4_tile_+0x5043>
  7b0219:	4c 8b 85 f8 fc ff ff 	mov    r8,QWORD PTR [rbp-0x308]
  7b0220:	45 33 ed             	xor    r13d,r13d
  7b0223:	4c 8b a5 f0 fc ff ff 	mov    r12,QWORD PTR [rbp-0x310]
  7b022a:	4c 8b 9d e8 fc ff ff 	mov    r11,QWORD PTR [rbp-0x318]
  7b0231:	4c 8b 95 d8 fc ff ff 	mov    r10,QWORD PTR [rbp-0x328]
  7b0238:	4d 8d 3c 00          	lea    r15,[r8+rax*1]
  7b023c:	4c 8b 8d e0 fc ff ff 	mov    r9,QWORD PTR [rbp-0x320]
  7b0243:	45 33 c0             	xor    r8d,r8d
  7b0246:	45 33 f6             	xor    r14d,r14d
  7b0249:	4c 03 e0             	add    r12,rax
  7b024c:	48 8b 7d e0          	mov    rdi,QWORD PTR [rbp-0x20]
  7b0250:	4c 03 d8             	add    r11,rax
  7b0253:	4c 03 d0             	add    r10,rax
  7b0256:	48 89 85 d8 fb ff ff 	mov    QWORD PTR [rbp-0x428],rax
  7b025d:	4c 03 c8             	add    r9,rax
  7b0260:	48 89 bd e0 fb ff ff 	mov    QWORD PTR [rbp-0x420],rdi
  7b0267:	4c 89 bd 50 ff ff ff 	mov    QWORD PTR [rbp-0xb0],r15
  7b026e:	4c 89 f0             	mov    rax,r14
  7b0271:	c4 81 7d 10 64 eb 08 	vmovupd ymm4,YMMWORD PTR [r11+r13*8+0x8]
  7b0278:	4c 8b bd 50 ff ff ff 	mov    r15,QWORD PTR [rbp-0xb0]
  7b027f:	48 8b bd 20 ff ff ff 	mov    rdi,QWORD PTR [rbp-0xe0]
  7b0286:	c4 81 5d 5c 2c ef    	vsubpd ymm5,ymm4,YMMWORD PTR [r15+r13*8]
  7b028c:	4e 8d 3c 02          	lea    r15,[rdx+r8*1]
  7b0290:	c4 c1 7b 10 3f       	vmovsd xmm7,QWORD PTR [r15]
  7b0295:	c4 41 41 16 0c 3f    	vmovhpd xmm9,xmm7,QWORD PTR [r15+rdi*1]
  7b029b:	c4 81 55 58 74 ec 08 	vaddpd ymm6,ymm5,YMMWORD PTR [r12+r13*8+0x8]
  7b02a2:	4d 8d 3c 7f          	lea    r15,[r15+rdi*2]
  7b02a6:	c4 41 7b 10 07       	vmovsd xmm8,QWORD PTR [r15]
  7b02ab:	c4 41 39 16 14 3f    	vmovhpd xmm10,xmm8,QWORD PTR [r15+rdi*1]
  7b02b1:	4c 8b bd 28 ff ff ff 	mov    r15,QWORD PTR [rbp-0xd8]
  7b02b8:	4d 8d 04 b8          	lea    r8,[r8+rdi*4]
  7b02bc:	c4 81 4d 5c 0c e9    	vsubpd ymm1,ymm6,YMMWORD PTR [r9+r13*8]
  7b02c2:	4a 8d 3c 31          	lea    rdi,[rcx+r14*1]
  7b02c6:	c5 7b 10 27          	vmovsd xmm12,QWORD PTR [rdi]
  7b02ca:	c4 21 19 16 34 3f    	vmovhpd xmm14,xmm12,QWORD PTR [rdi+r15*1]
  7b02d0:	4a 8d 3c 7f          	lea    rdi,[rdi+r15*2]
  7b02d4:	c5 7b 10 2f          	vmovsd xmm13,QWORD PTR [rdi]
  7b02d8:	4f 8d 34 be          	lea    r14,[r14+r15*4]
  7b02dc:	c4 21 11 16 3c 3f    	vmovhpd xmm15,xmm13,QWORD PTR [rdi+r15*1]
  7b02e2:	4c 8d 3c 06          	lea    r15,[rsi+rax*1]
  7b02e6:	48 8b bd 48 ff ff ff 	mov    rdi,QWORD PTR [rbp-0xb8]
  7b02ed:	c4 c1 7b 10 27       	vmovsd xmm4,QWORD PTR [r15]
  7b02f2:	48 8d 04 b8          	lea    rax,[rax+rdi*4]
  7b02f6:	c4 43 35 18 da 01    	vinsertf128 ymm11,ymm9,xmm10,0x1
  7b02fc:	c4 c1 65 5e c3       	vdivpd ymm0,ymm3,ymm11
  7b0301:	c4 c1 59 16 34 3f    	vmovhpd xmm6,xmm4,QWORD PTR [r15+rdi*1]
  7b0307:	4d 8d 3c 7f          	lea    r15,[r15+rdi*2]
  7b030b:	c4 c1 7b 10 2f       	vmovsd xmm5,QWORD PTR [r15]
  7b0310:	c4 c1 51 16 3c 3f    	vmovhpd xmm7,xmm5,QWORD PTR [r15+rdi*1]
  7b0316:	c4 43 0d 18 c7 01    	vinsertf128 ymm8,ymm14,xmm15,0x1
  7b031c:	c4 63 4d 18 cf 01    	vinsertf128 ymm9,ymm6,xmm7,0x1
  7b0322:	c4 41 3d 59 d1       	vmulpd ymm10,ymm8,ymm9
  7b0327:	c4 c1 7d 59 c2       	vmulpd ymm0,ymm0,ymm10
  7b032c:	c5 fd 59 c9          	vmulpd ymm1,ymm0,ymm1
  7b0330:	c4 81 7d 11 0c ea    	vmovupd YMMWORD PTR [r10+r13*8],ymm1
  7b0336:	49 83 c5 04          	add    r13,0x4
  7b033a:	4c 3b 6d e0          	cmp    r13,QWORD PTR [rbp-0x20]
  7b033e:	0f 82 2d ff ff ff    	jb     7b0271 <t3dmix_mod_mp_t3dmix4_tile_+0x3171>
  7b0344:	48 8b bd e0 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x420]
  7b034b:	48 8b 85 d8 fb ff ff 	mov    rax,QWORD PTR [rbp-0x428]
  7b0352:	4c 8b b5 48 ff ff ff 	mov    r14,QWORD PTR [rbp-0xb8]
  7b0359:	4c 8b bd 28 ff ff ff 	mov    r15,QWORD PTR [rbp-0xd8]
  7b0360:	4c 8b ad 20 ff ff ff 	mov    r13,QWORD PTR [rbp-0xe0]
  7b0367:	4c 0f af f7          	imul   r14,rdi
  7b036b:	4c 0f af ff          	imul   r15,rdi
  7b036f:	4c 0f af ef          	imul   r13,rdi
  7b0373:	48 3b bd 58 ff ff ff 	cmp    rdi,QWORD PTR [rbp-0xa8]
  7b037a:	0f 83 a0 00 00 00    	jae    7b0420 <t3dmix_mod_mp_t3dmix4_tile_+0x3320>
  7b0380:	4c 8b a5 f0 fc ff ff 	mov    r12,QWORD PTR [rbp-0x310]
  7b0387:	4c 8b 9d e8 fc ff ff 	mov    r11,QWORD PTR [rbp-0x318]
  7b038e:	4c 8b 95 d8 fc ff ff 	mov    r10,QWORD PTR [rbp-0x328]
  7b0395:	4c 8b 8d e0 fc ff ff 	mov    r9,QWORD PTR [rbp-0x320]
  7b039c:	4c 03 e0             	add    r12,rax
  7b039f:	4c 8b 85 f8 fc ff ff 	mov    r8,QWORD PTR [rbp-0x308]
  7b03a6:	4c 03 d8             	add    r11,rax
  7b03a9:	48 89 85 d8 fb ff ff 	mov    QWORD PTR [rbp-0x428],rax
  7b03b0:	4c 03 d0             	add    r10,rax
  7b03b3:	4c 03 c8             	add    r9,rax
  7b03b6:	4c 03 c0             	add    r8,rax
  7b03b9:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  7b03c0:	c4 c1 6b 5e 64 15 00 	vdivsd xmm4,xmm2,QWORD PTR [r13+rdx*1+0x0]
  7b03c7:	c4 c1 7b 10 6c fb 08 	vmovsd xmm5,QWORD PTR [r11+rdi*8+0x8]
  7b03ce:	c4 c1 7b 10 04 0f    	vmovsd xmm0,QWORD PTR [r15+rcx*1]
  7b03d4:	4c 03 f8             	add    r15,rax
  7b03d7:	c4 c1 7b 59 0c 36    	vmulsd xmm1,xmm0,QWORD PTR [r14+rsi*1]
  7b03dd:	c4 c1 53 5c 34 f8    	vsubsd xmm6,xmm5,QWORD PTR [r8+rdi*8]
  7b03e3:	c5 73 59 c4          	vmulsd xmm8,xmm1,xmm4
  7b03e7:	c4 c1 4b 58 7c fc 08 	vaddsd xmm7,xmm6,QWORD PTR [r12+rdi*8+0x8]
  7b03ee:	4c 03 ad 20 ff ff ff 	add    r13,QWORD PTR [rbp-0xe0]
  7b03f5:	4c 03 b5 48 ff ff ff 	add    r14,QWORD PTR [rbp-0xb8]
  7b03fc:	c4 41 43 5c 0c f9    	vsubsd xmm9,xmm7,QWORD PTR [r9+rdi*8]
  7b0402:	c4 41 3b 59 d1       	vmulsd xmm10,xmm8,xmm9
  7b0407:	c4 41 7b 11 14 fa    	vmovsd QWORD PTR [r10+rdi*8],xmm10
  7b040d:	48 ff c7             	inc    rdi
  7b0410:	48 3b bd 58 ff ff ff 	cmp    rdi,QWORD PTR [rbp-0xa8]
  7b0417:	72 a7                	jb     7b03c0 <t3dmix_mod_mp_t3dmix4_tile_+0x32c0>
  7b0419:	48 8b 85 d8 fb ff ff 	mov    rax,QWORD PTR [rbp-0x428]
  7b0420:	48 8b bd 28 fe ff ff 	mov    rdi,QWORD PTR [rbp-0x1d8]
  7b0427:	48 ff c7             	inc    rdi
  7b042a:	48 03 85 58 fe ff ff 	add    rax,QWORD PTR [rbp-0x1a8]
  7b0431:	48 03 95 f8 fd ff ff 	add    rdx,QWORD PTR [rbp-0x208]
  7b0438:	48 03 8d f0 fd ff ff 	add    rcx,QWORD PTR [rbp-0x210]
  7b043f:	48 03 b5 00 fe ff ff 	add    rsi,QWORD PTR [rbp-0x200]
  7b0446:	48 89 bd 28 fe ff ff 	mov    QWORD PTR [rbp-0x1d8],rdi
  7b044d:	48 3b bd 60 fe ff ff 	cmp    rdi,QWORD PTR [rbp-0x1a0]
  7b0454:	0f 82 9f fd ff ff    	jb     7b01f9 <t3dmix_mod_mp_t3dmix4_tile_+0x30f9>
  7b045a:	4c 8b b5 f8 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x708]
  7b0461:	4c 8b a5 28 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6d8]
  7b0468:	4c 8b ad f0 f8 ff ff 	mov    r13,QWORD PTR [rbp-0x710]
  7b046f:	43 f6 44 35 f0 01    	test   BYTE PTR [r13+r14*1-0x10],0x1
  7b0475:	0f 85 9c 01 00 00    	jne    7b0617 <t3dmix_mod_mp_t3dmix4_tile_+0x3517>
  7b047b:	48 8b 85 70 fa ff ff 	mov    rax,QWORD PTR [rbp-0x590]
  7b0482:	48 8b 95 b8 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x448]
  7b0489:	f6 44 90 fc 01       	test   BYTE PTR [rax+rdx*4-0x4],0x1
  7b048e:	0f 85 83 01 00 00    	jne    7b0617 <t3dmix_mod_mp_t3dmix4_tile_+0x3517>
  7b0494:	48 8b 85 70 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x790]
  7b049b:	48 8b 95 78 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x788]
  7b04a2:	48 8b b4 10 a8 f8 ff 	mov    rsi,QWORD PTR [rax+rdx*1-0x758]
  7b04a9:	ff 
  7b04aa:	48 f7 de             	neg    rsi
  7b04ad:	48 03 b5 68 f8 ff ff 	add    rsi,QWORD PTR [rbp-0x798]
  7b04b4:	48 0f af b4 10 a0 f8 	imul   rsi,QWORD PTR [rax+rdx*1-0x760]
  7b04bb:	ff ff 
  7b04bd:	48 8b 8c 10 68 f8 ff 	mov    rcx,QWORD PTR [rax+rdx*1-0x798]
  7b04c4:	ff 
  7b04c5:	f6 04 31 01          	test   BYTE PTR [rcx+rsi*1],0x1
  7b04c9:	0f 84 48 01 00 00    	je     7b0617 <t3dmix_mod_mp_t3dmix4_tile_+0x3517>
  7b04cf:	48 8b 85 30 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x7d0]
  7b04d6:	48 8b 95 40 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x7c0]
  7b04dd:	48 8b bd 38 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x7c8]
  7b04e4:	48 63 4c 90 fc       	movsxd rcx,DWORD PTR [rax+rdx*4-0x4]
  7b04e9:	48 69 f1 d0 00 00 00 	imul   rsi,rcx,0xd0
  7b04f0:	f6 84 3e 40 ff ff ff 	test   BYTE PTR [rsi+rdi*1-0xc0],0x1
  7b04f7:	01 
  7b04f8:	0f 84 8c 00 00 00    	je     7b058a <t3dmix_mod_mp_t3dmix4_tile_+0x348a>
  7b04fe:	8b 85 38 fa ff ff    	mov    eax,DWORD PTR [rbp-0x5c8]
  7b0504:	3b 85 30 fa ff ff    	cmp    eax,DWORD PTR [rbp-0x5d0]
  7b050a:	0f 8c 07 01 00 00    	jl     7b0617 <t3dmix_mod_mp_t3dmix4_tile_+0x3517>
  7b0510:	b9 01 00 00 00       	mov    ecx,0x1
  7b0515:	33 d2                	xor    edx,edx
  7b0517:	33 c0                	xor    eax,eax
  7b0519:	83 bd e0 f7 ff ff 00 	cmp    DWORD PTR [rbp-0x820],0x0
  7b0520:	74 39                	je     7b055b <t3dmix_mod_mp_t3dmix4_tile_+0x345b>
  7b0522:	48 8b 8d 78 f7 ff ff 	mov    rcx,QWORD PTR [rbp-0x888]
  7b0529:	45 33 c9             	xor    r9d,r9d
  7b052c:	48 8b b5 98 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x868]
  7b0533:	48 8b bd 90 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x870]
  7b053a:	4c 8b 85 88 f7 ff ff 	mov    r8,QWORD PTR [rbp-0x878]
  7b0541:	48 ff c2             	inc    rdx
  7b0544:	4c 89 4c 30 f8       	mov    QWORD PTR [rax+rsi*1-0x8],r9
  7b0549:	4c 89 0c 38          	mov    QWORD PTR [rax+rdi*1],r9
  7b054d:	4a 8d 44 00 10       	lea    rax,[rax+r8*1+0x10]
  7b0552:	48 3b d1             	cmp    rdx,rcx
  7b0555:	72 ea                	jb     7b0541 <t3dmix_mod_mp_t3dmix4_tile_+0x3441>
  7b0557:	8d 4c 12 01          	lea    ecx,[rdx+rdx*1+0x1]
  7b055b:	8d 41 ff             	lea    eax,[rcx-0x1]
  7b055e:	3b 85 08 f8 ff ff    	cmp    eax,DWORD PTR [rbp-0x7f8]
  7b0564:	0f 83 ad 00 00 00    	jae    7b0617 <t3dmix_mod_mp_t3dmix4_tile_+0x3517>
  7b056a:	48 63 c9             	movsxd rcx,ecx
  7b056d:	48 0f af 8d 58 fe ff 	imul   rcx,QWORD PTR [rbp-0x1a8]
  7b0574:	ff 
  7b0575:	48 8b 85 a8 f7 ff ff 	mov    rax,QWORD PTR [rbp-0x858]
  7b057c:	48 c7 44 01 f0 00 00 	mov    QWORD PTR [rcx+rax*1-0x10],0x0
  7b0583:	00 00 
  7b0585:	e9 8d 00 00 00       	jmp    7b0617 <t3dmix_mod_mp_t3dmix4_tile_+0x3517>
  7b058a:	8b 85 38 fa ff ff    	mov    eax,DWORD PTR [rbp-0x5c8]
  7b0590:	3b 85 30 fa ff ff    	cmp    eax,DWORD PTR [rbp-0x5d0]
  7b0596:	7c 7f                	jl     7b0617 <t3dmix_mod_mp_t3dmix4_tile_+0x3517>
  7b0598:	b9 01 00 00 00       	mov    ecx,0x1
  7b059d:	33 d2                	xor    edx,edx
  7b059f:	33 c0                	xor    eax,eax
  7b05a1:	83 bd e0 f7 ff ff 00 	cmp    DWORD PTR [rbp-0x820],0x0
  7b05a8:	74 46                	je     7b05f0 <t3dmix_mod_mp_t3dmix4_tile_+0x34f0>
  7b05aa:	48 8b bd 78 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x888]
  7b05b1:	4c 8b 85 98 f7 ff ff 	mov    r8,QWORD PTR [rbp-0x868]
  7b05b8:	4c 8b 8d 80 f7 ff ff 	mov    r9,QWORD PTR [rbp-0x880]
  7b05bf:	4c 8b 95 90 f7 ff ff 	mov    r10,QWORD PTR [rbp-0x870]
  7b05c6:	4c 8b 9d 88 f7 ff ff 	mov    r11,QWORD PTR [rbp-0x878]
  7b05cd:	48 ff c2             	inc    rdx
  7b05d0:	4a 8b 0c 08          	mov    rcx,QWORD PTR [rax+r9*1]
  7b05d4:	4a 8b 74 10 08       	mov    rsi,QWORD PTR [rax+r10*1+0x8]
  7b05d9:	4a 89 4c 00 f8       	mov    QWORD PTR [rax+r8*1-0x8],rcx
  7b05de:	4a 89 34 10          	mov    QWORD PTR [rax+r10*1],rsi
  7b05e2:	4a 8d 44 18 10       	lea    rax,[rax+r11*1+0x10]
  7b05e7:	48 3b d7             	cmp    rdx,rdi
  7b05ea:	72 e1                	jb     7b05cd <t3dmix_mod_mp_t3dmix4_tile_+0x34cd>
  7b05ec:	8d 4c 12 01          	lea    ecx,[rdx+rdx*1+0x1]
  7b05f0:	8d 41 ff             	lea    eax,[rcx-0x1]
  7b05f3:	3b 85 08 f8 ff ff    	cmp    eax,DWORD PTR [rbp-0x7f8]
  7b05f9:	73 1c                	jae    7b0617 <t3dmix_mod_mp_t3dmix4_tile_+0x3517>
  7b05fb:	48 63 c9             	movsxd rcx,ecx
  7b05fe:	48 0f af 8d 58 fe ff 	imul   rcx,QWORD PTR [rbp-0x1a8]
  7b0605:	ff 
  7b0606:	48 8b 95 a8 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x858]
  7b060d:	48 8b 44 11 f8       	mov    rax,QWORD PTR [rcx+rdx*1-0x8]
  7b0612:	48 89 44 11 f0       	mov    QWORD PTR [rcx+rdx*1-0x10],rax
  7b0617:	43 f6 44 35 f8 01    	test   BYTE PTR [r13+r14*1-0x8],0x1
  7b061d:	0f 85 99 01 00 00    	jne    7b07bc <t3dmix_mod_mp_t3dmix4_tile_+0x36bc>
  7b0623:	48 8b 85 70 fa ff ff 	mov    rax,QWORD PTR [rbp-0x590]
  7b062a:	48 8b 95 b8 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x448]
  7b0631:	f6 44 90 fc 01       	test   BYTE PTR [rax+rdx*4-0x4],0x1
  7b0636:	0f 85 80 01 00 00    	jne    7b07bc <t3dmix_mod_mp_t3dmix4_tile_+0x36bc>
  7b063c:	48 8b 85 70 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x790]
  7b0643:	48 8b 95 78 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x788]
  7b064a:	48 8b b4 10 60 f8 ff 	mov    rsi,QWORD PTR [rax+rdx*1-0x7a0]
  7b0651:	ff 
  7b0652:	48 f7 de             	neg    rsi
  7b0655:	48 03 b5 68 f8 ff ff 	add    rsi,QWORD PTR [rbp-0x798]
  7b065c:	48 0f af b4 10 58 f8 	imul   rsi,QWORD PTR [rax+rdx*1-0x7a8]
  7b0663:	ff ff 
  7b0665:	48 8b 8c 10 20 f8 ff 	mov    rcx,QWORD PTR [rax+rdx*1-0x7e0]
  7b066c:	ff 
  7b066d:	f6 04 31 01          	test   BYTE PTR [rcx+rsi*1],0x1
  7b0671:	0f 84 45 01 00 00    	je     7b07bc <t3dmix_mod_mp_t3dmix4_tile_+0x36bc>
  7b0677:	48 8b 85 30 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x7d0]
  7b067e:	48 8b 95 40 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x7c0]
  7b0685:	48 8b bd 38 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x7c8]
  7b068c:	48 63 4c 90 fc       	movsxd rcx,DWORD PTR [rax+rdx*4-0x4]
  7b0691:	48 69 f1 d0 00 00 00 	imul   rsi,rcx,0xd0
  7b0698:	f6 44 3e a8 01       	test   BYTE PTR [rsi+rdi*1-0x58],0x1
  7b069d:	0f 84 8c 00 00 00    	je     7b072f <t3dmix_mod_mp_t3dmix4_tile_+0x362f>
  7b06a3:	8b 85 38 fa ff ff    	mov    eax,DWORD PTR [rbp-0x5c8]
  7b06a9:	3b 85 30 fa ff ff    	cmp    eax,DWORD PTR [rbp-0x5d0]
  7b06af:	0f 8c 07 01 00 00    	jl     7b07bc <t3dmix_mod_mp_t3dmix4_tile_+0x36bc>
  7b06b5:	b9 01 00 00 00       	mov    ecx,0x1
  7b06ba:	33 d2                	xor    edx,edx
  7b06bc:	33 c0                	xor    eax,eax
  7b06be:	83 bd e0 f7 ff ff 00 	cmp    DWORD PTR [rbp-0x820],0x0
  7b06c5:	74 3a                	je     7b0701 <t3dmix_mod_mp_t3dmix4_tile_+0x3601>
  7b06c7:	48 8b 8d c0 f7 ff ff 	mov    rcx,QWORD PTR [rbp-0x840]
  7b06ce:	45 33 c9             	xor    r9d,r9d
  7b06d1:	48 8b b5 a0 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x860]
  7b06d8:	48 8b bd 78 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x888]
  7b06df:	4c 8b 85 88 f7 ff ff 	mov    r8,QWORD PTR [rbp-0x878]
  7b06e6:	48 ff c2             	inc    rdx
  7b06e9:	4c 89 4c 08 08       	mov    QWORD PTR [rax+rcx*1+0x8],r9
  7b06ee:	4c 89 4c 30 10       	mov    QWORD PTR [rax+rsi*1+0x10],r9
  7b06f3:	4a 8d 44 00 10       	lea    rax,[rax+r8*1+0x10]
  7b06f8:	48 3b d7             	cmp    rdx,rdi
  7b06fb:	72 e9                	jb     7b06e6 <t3dmix_mod_mp_t3dmix4_tile_+0x35e6>
  7b06fd:	8d 4c 12 01          	lea    ecx,[rdx+rdx*1+0x1]
  7b0701:	8d 41 ff             	lea    eax,[rcx-0x1]
  7b0704:	3b 85 08 f8 ff ff    	cmp    eax,DWORD PTR [rbp-0x7f8]
  7b070a:	0f 83 ac 00 00 00    	jae    7b07bc <t3dmix_mod_mp_t3dmix4_tile_+0x36bc>
  7b0710:	48 63 c9             	movsxd rcx,ecx
  7b0713:	48 0f af 8d 58 fe ff 	imul   rcx,QWORD PTR [rbp-0x1a8]
  7b071a:	ff 
  7b071b:	48 8b 85 b8 f7 ff ff 	mov    rax,QWORD PTR [rbp-0x848]
  7b0722:	48 c7 04 01 00 00 00 	mov    QWORD PTR [rcx+rax*1],0x0
  7b0729:	00 
  7b072a:	e9 8d 00 00 00       	jmp    7b07bc <t3dmix_mod_mp_t3dmix4_tile_+0x36bc>
  7b072f:	8b 85 38 fa ff ff    	mov    eax,DWORD PTR [rbp-0x5c8]
  7b0735:	3b 85 30 fa ff ff    	cmp    eax,DWORD PTR [rbp-0x5d0]
  7b073b:	7c 7f                	jl     7b07bc <t3dmix_mod_mp_t3dmix4_tile_+0x36bc>
  7b073d:	b9 01 00 00 00       	mov    ecx,0x1
  7b0742:	33 d2                	xor    edx,edx
  7b0744:	33 c0                	xor    eax,eax
  7b0746:	83 bd e0 f7 ff ff 00 	cmp    DWORD PTR [rbp-0x820],0x0
  7b074d:	74 47                	je     7b0796 <t3dmix_mod_mp_t3dmix4_tile_+0x3696>
  7b074f:	48 8b bd c0 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x840]
  7b0756:	4c 8b 85 b0 f7 ff ff 	mov    r8,QWORD PTR [rbp-0x850]
  7b075d:	4c 8b 8d a0 f7 ff ff 	mov    r9,QWORD PTR [rbp-0x860]
  7b0764:	4c 8b 95 78 f7 ff ff 	mov    r10,QWORD PTR [rbp-0x888]
  7b076b:	4c 8b 9d 88 f7 ff ff 	mov    r11,QWORD PTR [rbp-0x878]
  7b0772:	48 ff c2             	inc    rdx
  7b0775:	4a 8b 0c 00          	mov    rcx,QWORD PTR [rax+r8*1]
  7b0779:	4a 8b 74 08 08       	mov    rsi,QWORD PTR [rax+r9*1+0x8]
  7b077e:	48 89 4c 38 08       	mov    QWORD PTR [rax+rdi*1+0x8],rcx
  7b0783:	4a 89 74 08 10       	mov    QWORD PTR [rax+r9*1+0x10],rsi
  7b0788:	4a 8d 44 18 10       	lea    rax,[rax+r11*1+0x10]
  7b078d:	49 3b d2             	cmp    rdx,r10
  7b0790:	72 e0                	jb     7b0772 <t3dmix_mod_mp_t3dmix4_tile_+0x3672>
  7b0792:	8d 4c 12 01          	lea    ecx,[rdx+rdx*1+0x1]
  7b0796:	8d 41 ff             	lea    eax,[rcx-0x1]
  7b0799:	3b 85 08 f8 ff ff    	cmp    eax,DWORD PTR [rbp-0x7f8]
  7b079f:	73 1b                	jae    7b07bc <t3dmix_mod_mp_t3dmix4_tile_+0x36bc>
  7b07a1:	48 63 c9             	movsxd rcx,ecx
  7b07a4:	48 0f af 8d 58 fe ff 	imul   rcx,QWORD PTR [rbp-0x1a8]
  7b07ab:	ff 
  7b07ac:	48 8b 95 b8 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x848]
  7b07b3:	48 8b 44 11 f8       	mov    rax,QWORD PTR [rcx+rdx*1-0x8]
  7b07b8:	48 89 04 11          	mov    QWORD PTR [rcx+rdx*1],rax
  7b07bc:	43 f6 44 35 f4 01    	test   BYTE PTR [r13+r14*1-0xc],0x1
  7b07c2:	0f 85 f9 00 00 00    	jne    7b08c1 <t3dmix_mod_mp_t3dmix4_tile_+0x37c1>
  7b07c8:	48 8b 85 78 fa ff ff 	mov    rax,QWORD PTR [rbp-0x588]
  7b07cf:	48 8b 95 b8 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x448]
  7b07d6:	f6 44 90 fc 01       	test   BYTE PTR [rax+rdx*4-0x4],0x1
  7b07db:	0f 85 e0 00 00 00    	jne    7b08c1 <t3dmix_mod_mp_t3dmix4_tile_+0x37c1>
  7b07e1:	48 8b 85 70 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x790]
  7b07e8:	48 8b 95 78 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x788]
  7b07ef:	48 8b b4 10 38 f9 ff 	mov    rsi,QWORD PTR [rax+rdx*1-0x6c8]
  7b07f6:	ff 
  7b07f7:	48 f7 de             	neg    rsi
  7b07fa:	48 03 b5 68 f8 ff ff 	add    rsi,QWORD PTR [rbp-0x798]
  7b0801:	48 0f af b4 10 30 f9 	imul   rsi,QWORD PTR [rax+rdx*1-0x6d0]
  7b0808:	ff ff 
  7b080a:	48 8b 8c 10 f8 f8 ff 	mov    rcx,QWORD PTR [rax+rdx*1-0x708]
  7b0811:	ff 
  7b0812:	f6 04 31 01          	test   BYTE PTR [rcx+rsi*1],0x1
  7b0816:	0f 84 a5 00 00 00    	je     7b08c1 <t3dmix_mod_mp_t3dmix4_tile_+0x37c1>
  7b081c:	48 8b 85 30 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x7d0]
  7b0823:	48 8b 95 40 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x7c0]
  7b082a:	48 8b bd 38 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x7c8]
  7b0831:	48 63 4c 90 fc       	movsxd rcx,DWORD PTR [rax+rdx*4-0x4]
  7b0836:	48 69 f1 d0 00 00 00 	imul   rsi,rcx,0xd0
  7b083d:	f6 84 3e 74 ff ff ff 	test   BYTE PTR [rsi+rdi*1-0x8c],0x1
  7b0844:	01 
  7b0845:	74 35                	je     7b087c <t3dmix_mod_mp_t3dmix4_tile_+0x377c>
  7b0847:	8b 85 b8 fd ff ff    	mov    eax,DWORD PTR [rbp-0x248]
  7b084d:	3b 85 b0 fd ff ff    	cmp    eax,DWORD PTR [rbp-0x250]
  7b0853:	7c 6c                	jl     7b08c1 <t3dmix_mod_mp_t3dmix4_tile_+0x37c1>
  7b0855:	83 bd 50 f5 ff ff 0c 	cmp    DWORD PTR [rbp-0xab0],0xc
  7b085c:	0f 8e fc 16 00 00    	jle    7b1f5e <t3dmix_mod_mp_t3dmix4_tile_+0x4e5e>
  7b0862:	33 f6                	xor    esi,esi
  7b0864:	48 8b bd 28 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x7d8]
  7b086b:	48 8b 95 18 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x7e8]
  7b0872:	c5 f8 77             	vzeroupper 
  7b0875:	e8 16 0c d2 ff       	call   4d1490 <_intel_fast_memset>
  7b087a:	eb 45                	jmp    7b08c1 <t3dmix_mod_mp_t3dmix4_tile_+0x37c1>
  7b087c:	8b 85 b8 fd ff ff    	mov    eax,DWORD PTR [rbp-0x248]
  7b0882:	3b 85 b0 fd ff ff    	cmp    eax,DWORD PTR [rbp-0x250]
  7b0888:	7c 37                	jl     7b08c1 <t3dmix_mod_mp_t3dmix4_tile_+0x37c1>
  7b088a:	83 bd 50 f5 ff ff 0c 	cmp    DWORD PTR [rbp-0xab0],0xc
  7b0891:	0f 8e 3d 18 00 00    	jle    7b20d4 <t3dmix_mod_mp_t3dmix4_tile_+0x4fd4>
  7b0897:	83 bd d0 f7 ff ff 00 	cmp    DWORD PTR [rbp-0x830],0x0
  7b089e:	0f 84 30 18 00 00    	je     7b20d4 <t3dmix_mod_mp_t3dmix4_tile_+0x4fd4>
  7b08a4:	c5 f8 77             	vzeroupper 
  7b08a7:	48 8b bd 28 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x7d8]
  7b08ae:	48 8b b5 e8 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x818]
  7b08b5:	48 8b 95 18 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x7e8]
  7b08bc:	e8 cf 09 d2 ff       	call   4d1290 <_intel_fast_memcpy>
  7b08c1:	43 f6 44 35 fc 01    	test   BYTE PTR [r13+r14*1-0x4],0x1
  7b08c7:	0f 85 f6 00 00 00    	jne    7b09c3 <t3dmix_mod_mp_t3dmix4_tile_+0x38c3>
  7b08cd:	48 8b 85 78 fa ff ff 	mov    rax,QWORD PTR [rbp-0x588]
  7b08d4:	48 8b 95 b8 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x448]
  7b08db:	f6 44 90 fc 01       	test   BYTE PTR [rax+rdx*4-0x4],0x1
  7b08e0:	0f 85 dd 00 00 00    	jne    7b09c3 <t3dmix_mod_mp_t3dmix4_tile_+0x38c3>
  7b08e6:	48 8b 85 70 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x790]
  7b08ed:	48 8b 95 78 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x788]
  7b08f4:	48 8b b4 10 f0 f8 ff 	mov    rsi,QWORD PTR [rax+rdx*1-0x710]
  7b08fb:	ff 
  7b08fc:	48 f7 de             	neg    rsi
  7b08ff:	48 03 b5 68 f8 ff ff 	add    rsi,QWORD PTR [rbp-0x798]
  7b0906:	48 0f af b4 10 e8 f8 	imul   rsi,QWORD PTR [rax+rdx*1-0x718]
  7b090d:	ff ff 
  7b090f:	48 8b 8c 10 b0 f8 ff 	mov    rcx,QWORD PTR [rax+rdx*1-0x750]
  7b0916:	ff 
  7b0917:	f6 04 31 01          	test   BYTE PTR [rcx+rsi*1],0x1
  7b091b:	0f 84 a2 00 00 00    	je     7b09c3 <t3dmix_mod_mp_t3dmix4_tile_+0x38c3>
  7b0921:	48 8b 85 30 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x7d0]
  7b0928:	48 8b 95 40 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x7c0]
  7b092f:	48 8b bd 38 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x7c8]
  7b0936:	48 63 4c 90 fc       	movsxd rcx,DWORD PTR [rax+rdx*4-0x4]
  7b093b:	48 69 f1 d0 00 00 00 	imul   rsi,rcx,0xd0
  7b0942:	f6 44 3e dc 01       	test   BYTE PTR [rsi+rdi*1-0x24],0x1
  7b0947:	74 35                	je     7b097e <t3dmix_mod_mp_t3dmix4_tile_+0x387e>
  7b0949:	8b 85 b8 fd ff ff    	mov    eax,DWORD PTR [rbp-0x248]
  7b094f:	3b 85 b0 fd ff ff    	cmp    eax,DWORD PTR [rbp-0x250]
  7b0955:	7c 6c                	jl     7b09c3 <t3dmix_mod_mp_t3dmix4_tile_+0x38c3>
  7b0957:	83 bd 50 f5 ff ff 0c 	cmp    DWORD PTR [rbp-0xab0],0xc
  7b095e:	0f 8e 68 16 00 00    	jle    7b1fcc <t3dmix_mod_mp_t3dmix4_tile_+0x4ecc>
  7b0964:	33 f6                	xor    esi,esi
  7b0966:	48 8b bd d8 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x828]
  7b096d:	48 8b 95 18 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x7e8]
  7b0974:	c5 f8 77             	vzeroupper 
  7b0977:	e8 14 0b d2 ff       	call   4d1490 <_intel_fast_memset>
  7b097c:	eb 45                	jmp    7b09c3 <t3dmix_mod_mp_t3dmix4_tile_+0x38c3>
  7b097e:	8b 85 b8 fd ff ff    	mov    eax,DWORD PTR [rbp-0x248]
  7b0984:	3b 85 b0 fd ff ff    	cmp    eax,DWORD PTR [rbp-0x250]
  7b098a:	7c 37                	jl     7b09c3 <t3dmix_mod_mp_t3dmix4_tile_+0x38c3>
  7b098c:	83 bd 50 f5 ff ff 0c 	cmp    DWORD PTR [rbp-0xab0],0xc
  7b0993:	0f 8e cc 16 00 00    	jle    7b2065 <t3dmix_mod_mp_t3dmix4_tile_+0x4f65>
  7b0999:	83 bd c8 f7 ff ff 00 	cmp    DWORD PTR [rbp-0x838],0x0
  7b09a0:	0f 84 bf 16 00 00    	je     7b2065 <t3dmix_mod_mp_t3dmix4_tile_+0x4f65>
  7b09a6:	c5 f8 77             	vzeroupper 
  7b09a9:	48 8b bd d8 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x828]
  7b09b0:	48 8b b5 20 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x7e0]
  7b09b7:	48 8b 95 18 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x7e8]
  7b09be:	e8 cd 08 d2 ff       	call   4d1290 <_intel_fast_memcpy>
  7b09c3:	48 83 bd 08 ff ff ff 	cmp    QWORD PTR [rbp-0xf8],0x8
  7b09ca:	08 
  7b09cb:	0f 85 ad 02 00 00    	jne    7b0c7e <t3dmix_mod_mp_t3dmix4_tile_+0x3b7e>
  7b09d1:	48 83 bd 00 ff ff ff 	cmp    QWORD PTR [rbp-0x100],0x8
  7b09d8:	08 
  7b09d9:	0f 85 9f 02 00 00    	jne    7b0c7e <t3dmix_mod_mp_t3dmix4_tile_+0x3b7e>
  7b09df:	48 83 bd 20 ff ff ff 	cmp    QWORD PTR [rbp-0xe0],0x8
  7b09e6:	08 
  7b09e7:	0f 85 91 02 00 00    	jne    7b0c7e <t3dmix_mod_mp_t3dmix4_tile_+0x3b7e>
  7b09ed:	48 83 bd f8 fe ff ff 	cmp    QWORD PTR [rbp-0x108],0x8
  7b09f4:	08 
  7b09f5:	0f 85 83 02 00 00    	jne    7b0c7e <t3dmix_mod_mp_t3dmix4_tile_+0x3b7e>
  7b09fb:	48 83 bd f0 fe ff ff 	cmp    QWORD PTR [rbp-0x110],0x8
  7b0a02:	08 
  7b0a03:	0f 85 75 02 00 00    	jne    7b0c7e <t3dmix_mod_mp_t3dmix4_tile_+0x3b7e>
  7b0a09:	45 33 c9             	xor    r9d,r9d
  7b0a0c:	48 8b 85 28 fa ff ff 	mov    rax,QWORD PTR [rbp-0x5d8]
  7b0a13:	33 ff                	xor    edi,edi
  7b0a15:	48 8b b5 18 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xbe8]
  7b0a1c:	45 33 d2             	xor    r10d,r10d
  7b0a1f:	4c 8b 85 20 f4 ff ff 	mov    r8,QWORD PTR [rbp-0xbe0]
  7b0a26:	4c 8b 9d 28 f4 ff ff 	mov    r11,QWORD PTR [rbp-0xbd8]
  7b0a2d:	48 3b 85 d8 f9 ff ff 	cmp    rax,QWORD PTR [rbp-0x628]
  7b0a34:	0f 8c 78 07 00 00    	jl     7b11b2 <t3dmix_mod_mp_t3dmix4_tile_+0x40b2>
  7b0a3a:	48 8b 95 08 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x6f8]
  7b0a41:	49 0f af d4          	imul   rdx,r12
  7b0a45:	c5 fd 10 05 b3 99 09 	vmovupd ymm0,YMMWORD PTR [rip+0x999b3]        # 84a400 <var$630.126.450+0x460>
  7b0a4c:	00 
  7b0a4d:	c5 fb 10 0d 43 b7 09 	vmovsd xmm1,QWORD PTR [rip+0x9b743]        # 84c198 <__STRLITPACK_0.112+0x88>
  7b0a54:	00 
  7b0a55:	48 8b 8d 00 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x700]
  7b0a5c:	49 0f af cc          	imul   rcx,r12
  7b0a60:	48 8b 85 a8 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x758]
  7b0a67:	48 03 8d a0 f8 ff ff 	add    rcx,QWORD PTR [rbp-0x760]
  7b0a6e:	4c 89 a5 28 f9 ff ff 	mov    QWORD PTR [rbp-0x6d8],r12
  7b0a75:	48 03 c2             	add    rax,rdx
  7b0a78:	48 03 95 b8 f8 ff ff 	add    rdx,QWORD PTR [rbp-0x748]
  7b0a7f:	48 89 95 98 fa ff ff 	mov    QWORD PTR [rbp-0x568],rdx
  7b0a86:	48 89 85 a0 fa ff ff 	mov    QWORD PTR [rbp-0x560],rax
  7b0a8d:	48 8b 95 68 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x198]
  7b0a94:	48 8b 85 78 fd ff ff 	mov    rax,QWORD PTR [rbp-0x288]
  7b0a9b:	48 3b 85 10 fd ff ff 	cmp    rax,QWORD PTR [rbp-0x2f0]
  7b0aa2:	0f 8c 97 01 00 00    	jl     7b0c3f <t3dmix_mod_mp_t3dmix4_tile_+0x3b3f>
  7b0aa8:	48 83 fa 04          	cmp    rdx,0x4
  7b0aac:	0f 8c 88 15 00 00    	jl     7b203a <t3dmix_mod_mp_t3dmix4_tile_+0x4f3a>
  7b0ab2:	4c 8b bd 00 fd ff ff 	mov    r15,QWORD PTR [rbp-0x300]
  7b0ab9:	45 33 f6             	xor    r14d,r14d
  7b0abc:	4c 8b ad a8 fd ff ff 	mov    r13,QWORD PTR [rbp-0x258]
  7b0ac3:	4c 8b a5 70 fd ff ff 	mov    r12,QWORD PTR [rbp-0x290]
  7b0aca:	48 8b 85 28 fb ff ff 	mov    rax,QWORD PTR [rbp-0x4d8]
  7b0ad1:	4c 03 ff             	add    r15,rdi
  7b0ad4:	4c 89 bd c0 fa ff ff 	mov    QWORD PTR [rbp-0x540],r15
  7b0adb:	4c 03 ef             	add    r13,rdi
  7b0ade:	4c 8b bd 98 fa ff ff 	mov    r15,QWORD PTR [rbp-0x568]
  7b0ae5:	4c 03 e7             	add    r12,rdi
  7b0ae8:	48 89 bd 58 fb ff ff 	mov    QWORD PTR [rbp-0x4a8],rdi
  7b0aef:	4c 89 8d 60 fb ff ff 	mov    QWORD PTR [rbp-0x4a0],r9
  7b0af6:	4c 8b 8d c0 fa ff ff 	mov    r9,QWORD PTR [rbp-0x540]
  7b0afd:	4d 03 fa             	add    r15,r10
  7b0b00:	4c 89 bd b0 fa ff ff 	mov    QWORD PTR [rbp-0x550],r15
  7b0b07:	4c 8b bd a0 fa ff ff 	mov    r15,QWORD PTR [rbp-0x560]
  7b0b0e:	48 8b bd b0 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x550]
  7b0b15:	4d 03 fa             	add    r15,r10
  7b0b18:	4c 89 bd a8 fa ff ff 	mov    QWORD PTR [rbp-0x558],r15
  7b0b1f:	49 89 c7             	mov    r15,rax
  7b0b22:	48 8b 95 a8 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x558]
  7b0b29:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  7b0b30:	c4 a1 7d 59 14 f1    	vmulpd ymm2,ymm0,YMMWORD PTR [rcx+r14*8]
  7b0b36:	c4 a1 7d 10 1c f2    	vmovupd ymm3,YMMWORD PTR [rdx+r14*8]
  7b0b3c:	c4 81 7d 10 34 f4    	vmovupd ymm6,YMMWORD PTR [r12+r14*8]
  7b0b42:	c4 a1 6d 59 24 f6    	vmulpd ymm4,ymm2,YMMWORD PTR [rsi+r14*8]
  7b0b48:	c4 a1 65 58 6c f7 f8 	vaddpd ymm5,ymm3,YMMWORD PTR [rdi+r14*8-0x8]
  7b0b4f:	c4 01 4d 5c 44 f5 f8 	vsubpd ymm8,ymm6,YMMWORD PTR [r13+r14*8-0x8]
  7b0b56:	c5 dd 59 fd          	vmulpd ymm7,ymm4,ymm5
  7b0b5a:	c4 41 45 59 c8       	vmulpd ymm9,ymm7,ymm8
  7b0b5f:	c4 01 35 59 14 f0    	vmulpd ymm10,ymm9,YMMWORD PTR [r8+r14*8]
  7b0b65:	c4 01 2d 59 1c f3    	vmulpd ymm11,ymm10,YMMWORD PTR [r11+r14*8]
  7b0b6b:	c4 01 7d 11 1c f1    	vmovupd YMMWORD PTR [r9+r14*8],ymm11
  7b0b71:	49 83 c6 04          	add    r14,0x4
  7b0b75:	4d 3b f7             	cmp    r14,r15
  7b0b78:	72 b6                	jb     7b0b30 <t3dmix_mod_mp_t3dmix4_tile_+0x3a30>
  7b0b7a:	48 8b bd 58 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x4a8]
  7b0b81:	4c 8b 8d 60 fb ff ff 	mov    r9,QWORD PTR [rbp-0x4a0]
  7b0b88:	48 8b 95 68 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x198]
  7b0b8f:	48 3b c2             	cmp    rax,rdx
  7b0b92:	0f 83 a7 00 00 00    	jae    7b0c3f <t3dmix_mod_mp_t3dmix4_tile_+0x3b3f>
  7b0b98:	4c 8b ad a8 fd ff ff 	mov    r13,QWORD PTR [rbp-0x258]
  7b0b9f:	4c 8b bd 00 fd ff ff 	mov    r15,QWORD PTR [rbp-0x300]
  7b0ba6:	4c 8b b5 70 fd ff ff 	mov    r14,QWORD PTR [rbp-0x290]
  7b0bad:	4c 89 8d 60 fb ff ff 	mov    QWORD PTR [rbp-0x4a0],r9
  7b0bb4:	4d 8d 64 3d 00       	lea    r12,[r13+rdi*1+0x0]
  7b0bb9:	4c 89 a5 b8 fa ff ff 	mov    QWORD PTR [rbp-0x548],r12
  7b0bc0:	4d 8d 24 3f          	lea    r12,[r15+rdi*1]
  7b0bc4:	4c 8b bd a0 fa ff ff 	mov    r15,QWORD PTR [rbp-0x560]
  7b0bcb:	4d 8d 2c 3e          	lea    r13,[r14+rdi*1]
  7b0bcf:	4c 8b b5 98 fa ff ff 	mov    r14,QWORD PTR [rbp-0x568]
  7b0bd6:	4d 03 fa             	add    r15,r10
  7b0bd9:	4d 89 f9             	mov    r9,r15
  7b0bdc:	4d 03 f2             	add    r14,r10
  7b0bdf:	4c 8b bd b8 fa ff ff 	mov    r15,QWORD PTR [rbp-0x548]
  7b0be6:	0f 1f 00             	nop    DWORD PTR [rax]
  7b0be9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  7b0bf0:	c5 f3 59 14 c1       	vmulsd xmm2,xmm1,QWORD PTR [rcx+rax*8]
  7b0bf5:	c4 c1 7b 10 1c c1    	vmovsd xmm3,QWORD PTR [r9+rax*8]
  7b0bfb:	c5 eb 59 24 c6       	vmulsd xmm4,xmm2,QWORD PTR [rsi+rax*8]
  7b0c00:	c4 c1 63 58 6c c6 f8 	vaddsd xmm5,xmm3,QWORD PTR [r14+rax*8-0x8]
  7b0c07:	c4 c1 7b 10 74 c5 00 	vmovsd xmm6,QWORD PTR [r13+rax*8+0x0]
  7b0c0e:	c5 db 59 fd          	vmulsd xmm7,xmm4,xmm5
  7b0c12:	c4 41 4b 5c 44 c7 f8 	vsubsd xmm8,xmm6,QWORD PTR [r15+rax*8-0x8]
  7b0c19:	c4 41 43 59 c8       	vmulsd xmm9,xmm7,xmm8
  7b0c1e:	c4 41 33 59 14 c0    	vmulsd xmm10,xmm9,QWORD PTR [r8+rax*8]
  7b0c24:	c4 41 2b 59 1c c3    	vmulsd xmm11,xmm10,QWORD PTR [r11+rax*8]
  7b0c2a:	c4 41 7b 11 1c c4    	vmovsd QWORD PTR [r12+rax*8],xmm11
  7b0c30:	48 ff c0             	inc    rax
  7b0c33:	48 3b c2             	cmp    rax,rdx
  7b0c36:	72 b8                	jb     7b0bf0 <t3dmix_mod_mp_t3dmix4_tile_+0x3af0>
  7b0c38:	4c 8b 8d 60 fb ff ff 	mov    r9,QWORD PTR [rbp-0x4a0]
  7b0c3f:	49 ff c1             	inc    r9
  7b0c42:	48 03 bd 58 fe ff ff 	add    rdi,QWORD PTR [rbp-0x1a8]
  7b0c49:	48 03 8d d8 fd ff ff 	add    rcx,QWORD PTR [rbp-0x228]
  7b0c50:	48 03 b5 d0 fd ff ff 	add    rsi,QWORD PTR [rbp-0x230]
  7b0c57:	4c 03 95 f8 fd ff ff 	add    r10,QWORD PTR [rbp-0x208]
  7b0c5e:	4c 03 85 c8 fd ff ff 	add    r8,QWORD PTR [rbp-0x238]
  7b0c65:	4c 03 9d c0 fd ff ff 	add    r11,QWORD PTR [rbp-0x240]
  7b0c6c:	4c 3b 8d 98 fd ff ff 	cmp    r9,QWORD PTR [rbp-0x268]
  7b0c73:	0f 82 1b fe ff ff    	jb     7b0a94 <t3dmix_mod_mp_t3dmix4_tile_+0x3994>
  7b0c79:	e9 1f 05 00 00       	jmp    7b119d <t3dmix_mod_mp_t3dmix4_tile_+0x409d>
  7b0c7e:	33 d2                	xor    edx,edx
  7b0c80:	48 8b 85 28 fa ff ff 	mov    rax,QWORD PTR [rbp-0x5d8]
  7b0c87:	45 33 c0             	xor    r8d,r8d
  7b0c8a:	4c 8b 8d f0 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x610]
  7b0c91:	33 c9                	xor    ecx,ecx
  7b0c93:	48 8b b5 18 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x5e8]
  7b0c9a:	48 8b bd e8 f9 ff ff 	mov    rdi,QWORD PTR [rbp-0x618]
  7b0ca1:	48 3b 85 d8 f9 ff ff 	cmp    rax,QWORD PTR [rbp-0x628]
  7b0ca8:	0f 8c 04 05 00 00    	jl     7b11b2 <t3dmix_mod_mp_t3dmix4_tile_+0x40b2>
  7b0cae:	4c 8b 95 08 f9 ff ff 	mov    r10,QWORD PTR [rbp-0x6f8]
  7b0cb5:	4c 8b 9d 00 f9 ff ff 	mov    r11,QWORD PTR [rbp-0x700]
  7b0cbc:	4d 0f af d4          	imul   r10,r12
  7b0cc0:	4d 0f af dc          	imul   r11,r12
  7b0cc4:	48 8b 85 d0 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x730]
  7b0ccb:	4c 03 9d d8 f8 ff ff 	add    r11,QWORD PTR [rbp-0x728]
  7b0cd2:	4c 89 9d 88 fe ff ff 	mov    QWORD PTR [rbp-0x178],r11
  7b0cd9:	48 89 95 28 fd ff ff 	mov    QWORD PTR [rbp-0x2d8],rdx
  7b0ce0:	49 03 c2             	add    rax,r10
  7b0ce3:	4c 03 95 c8 f8 ff ff 	add    r10,QWORD PTR [rbp-0x738]
  7b0cea:	4c 89 95 18 fd ff ff 	mov    QWORD PTR [rbp-0x2e8],r10
  7b0cf1:	48 89 85 20 fd ff ff 	mov    QWORD PTR [rbp-0x2e0],rax
  7b0cf8:	4c 89 a5 28 f9 ff ff 	mov    QWORD PTR [rbp-0x6d8],r12
  7b0cff:	c5 fb 10 0d 91 b4 09 	vmovsd xmm1,QWORD PTR [rip+0x9b491]        # 84c198 <__STRLITPACK_0.112+0x88>
  7b0d06:	00 
  7b0d07:	c5 f9 10 05 e1 ac 09 	vmovupd xmm0,XMMWORD PTR [rip+0x9ace1]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  7b0d0e:	00 
  7b0d0f:	48 8b 85 78 fd ff ff 	mov    rax,QWORD PTR [rbp-0x288]
  7b0d16:	48 3b 85 10 fd ff ff 	cmp    rax,QWORD PTR [rbp-0x2f0]
  7b0d1d:	0f 8c 24 04 00 00    	jl     7b1147 <t3dmix_mod_mp_t3dmix4_tile_+0x4047>
  7b0d23:	48 83 bd 68 fe ff ff 	cmp    QWORD PTR [rbp-0x198],0x2
  7b0d2a:	02 
  7b0d2b:	0f 8c 2d 13 00 00    	jl     7b205e <t3dmix_mod_mp_t3dmix4_tile_+0x4f5e>
  7b0d31:	48 8b 85 00 fd ff ff 	mov    rax,QWORD PTR [rbp-0x300]
  7b0d38:	4c 8d 34 08          	lea    r14,[rax+rcx*1]
  7b0d3c:	4c 89 b5 80 fe ff ff 	mov    QWORD PTR [rbp-0x180],r14
  7b0d43:	49 83 e6 0f          	and    r14,0xf
  7b0d47:	45 85 f6             	test   r14d,r14d
  7b0d4a:	74 13                	je     7b0d5f <t3dmix_mod_mp_t3dmix4_tile_+0x3c5f>
  7b0d4c:	41 f7 c6 07 00 00 00 	test   r14d,0x7
  7b0d53:	0f 85 05 13 00 00    	jne    7b205e <t3dmix_mod_mp_t3dmix4_tile_+0x4f5e>
  7b0d59:	41 be 01 00 00 00    	mov    r14d,0x1
  7b0d5f:	44 89 f2             	mov    edx,r14d
  7b0d62:	48 8d 42 02          	lea    rax,[rdx+0x2]
  7b0d66:	48 3b 85 68 fe ff ff 	cmp    rax,QWORD PTR [rbp-0x198]
  7b0d6d:	0f 8f eb 12 00 00    	jg     7b205e <t3dmix_mod_mp_t3dmix4_tile_+0x4f5e>
  7b0d73:	4c 8b bd a8 fd ff ff 	mov    r15,QWORD PTR [rbp-0x258]
  7b0d7a:	44 8b a5 88 fd ff ff 	mov    r12d,DWORD PTR [rbp-0x278]
  7b0d81:	44 89 e0             	mov    eax,r12d
  7b0d84:	41 2b c6             	sub    eax,r14d
  7b0d87:	83 e0 01             	and    eax,0x1
  7b0d8a:	4c 03 f9             	add    r15,rcx
  7b0d8d:	4c 89 bd 78 fe ff ff 	mov    QWORD PTR [rbp-0x188],r15
  7b0d94:	f7 d8                	neg    eax
  7b0d96:	4c 8b bd 70 fd ff ff 	mov    r15,QWORD PTR [rbp-0x290]
  7b0d9d:	41 03 c4             	add    eax,r12d
  7b0da0:	45 33 e4             	xor    r12d,r12d
  7b0da3:	45 33 d2             	xor    r10d,r10d
  7b0da6:	45 33 ed             	xor    r13d,r13d
  7b0da9:	4c 03 f9             	add    r15,rcx
  7b0dac:	4c 89 bd 38 fd ff ff 	mov    QWORD PTR [rbp-0x2c8],r15
  7b0db3:	45 33 db             	xor    r11d,r11d
  7b0db6:	4c 8b bd 20 fd ff ff 	mov    r15,QWORD PTR [rbp-0x2e0]
  7b0dbd:	48 63 c0             	movsxd rax,eax
  7b0dc0:	4d 03 f8             	add    r15,r8
  7b0dc3:	4c 89 bd 30 fd ff ff 	mov    QWORD PTR [rbp-0x2d0],r15
  7b0dca:	4c 8b bd 18 fd ff ff 	mov    r15,QWORD PTR [rbp-0x2e8]
  7b0dd1:	4d 03 f8             	add    r15,r8
  7b0dd4:	4c 89 bd 90 fe ff ff 	mov    QWORD PTR [rbp-0x170],r15
  7b0ddb:	45 85 f6             	test   r14d,r14d
  7b0dde:	0f 86 c9 00 00 00    	jbe    7b0ead <t3dmix_mod_mp_t3dmix4_tile_+0x3dad>
  7b0de4:	48 89 85 70 fe ff ff 	mov    QWORD PTR [rbp-0x190],rax
  7b0deb:	48 89 8d 68 fb ff ff 	mov    QWORD PTR [rbp-0x498],rcx
  7b0df2:	4c 89 85 70 fb ff ff 	mov    QWORD PTR [rbp-0x490],r8
  7b0df9:	4c 89 d8             	mov    rax,r11
  7b0dfc:	4d 89 d6             	mov    r14,r10
  7b0dff:	48 8b 8d 30 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x2d0]
  7b0e06:	4c 8b 85 38 fd ff ff 	mov    r8,QWORD PTR [rbp-0x2c8]
  7b0e0d:	4c 8b bd 88 fe ff ff 	mov    r15,QWORD PTR [rbp-0x178]
  7b0e14:	c4 81 7b 10 34 e0    	vmovsd xmm6,QWORD PTR [r8+r12*8]
  7b0e1a:	c4 81 73 59 14 3a    	vmulsd xmm2,xmm1,QWORD PTR [r10+r15*1]
  7b0e20:	4c 8b bd 90 fe ff ff 	mov    r15,QWORD PTR [rbp-0x170]
  7b0e27:	c4 81 6b 59 24 0b    	vmulsd xmm4,xmm2,QWORD PTR [r11+r9*1]
  7b0e2d:	c4 a1 7b 10 1c 38    	vmovsd xmm3,QWORD PTR [rax+r15*1]
  7b0e33:	4c 8b bd 78 fe ff ff 	mov    r15,QWORD PTR [rbp-0x188]
  7b0e3a:	4c 03 95 08 ff ff ff 	add    r10,QWORD PTR [rbp-0xf8]
  7b0e41:	4c 03 9d 00 ff ff ff 	add    r11,QWORD PTR [rbp-0x100]
  7b0e48:	c5 e3 58 2c 08       	vaddsd xmm5,xmm3,QWORD PTR [rax+rcx*1]
  7b0e4d:	c4 01 4b 5c 44 e7 f8 	vsubsd xmm8,xmm6,QWORD PTR [r15+r12*8-0x8]
  7b0e54:	c5 db 59 fd          	vmulsd xmm7,xmm4,xmm5
  7b0e58:	c4 41 43 59 c8       	vmulsd xmm9,xmm7,xmm8
  7b0e5d:	c4 41 33 59 14 36    	vmulsd xmm10,xmm9,QWORD PTR [r14+rsi*1]
  7b0e63:	c4 41 2b 59 5c 3d 00 	vmulsd xmm11,xmm10,QWORD PTR [r13+rdi*1+0x0]
  7b0e6a:	4c 8b bd 80 fe ff ff 	mov    r15,QWORD PTR [rbp-0x180]
  7b0e71:	4c 03 b5 f8 fe ff ff 	add    r14,QWORD PTR [rbp-0x108]
  7b0e78:	4c 03 ad f0 fe ff ff 	add    r13,QWORD PTR [rbp-0x110]
  7b0e7f:	c4 01 7b 11 1c e7    	vmovsd QWORD PTR [r15+r12*8],xmm11
  7b0e85:	49 ff c4             	inc    r12
  7b0e88:	48 03 85 20 ff ff ff 	add    rax,QWORD PTR [rbp-0xe0]
  7b0e8f:	4c 3b e2             	cmp    r12,rdx
  7b0e92:	0f 82 75 ff ff ff    	jb     7b0e0d <t3dmix_mod_mp_t3dmix4_tile_+0x3d0d>
  7b0e98:	48 8b 85 70 fe ff ff 	mov    rax,QWORD PTR [rbp-0x190]
  7b0e9f:	48 8b 8d 68 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x498]
  7b0ea6:	4c 8b 85 70 fb ff ff 	mov    r8,QWORD PTR [rbp-0x490]
  7b0ead:	4c 8b 9d 20 ff ff ff 	mov    r11,QWORD PTR [rbp-0xe0]
  7b0eb4:	4c 8b a5 f0 fe ff ff 	mov    r12,QWORD PTR [rbp-0x110]
  7b0ebb:	4c 8b 95 f8 fe ff ff 	mov    r10,QWORD PTR [rbp-0x108]
  7b0ec2:	4c 8b ad 00 ff ff ff 	mov    r13,QWORD PTR [rbp-0x100]
  7b0ec9:	4c 8b b5 08 ff ff ff 	mov    r14,QWORD PTR [rbp-0xf8]
  7b0ed0:	4c 89 85 70 fb ff ff 	mov    QWORD PTR [rbp-0x490],r8
  7b0ed7:	4c 0f af da          	imul   r11,rdx
  7b0edb:	4c 0f af e2          	imul   r12,rdx
  7b0edf:	4c 0f af d2          	imul   r10,rdx
  7b0ee3:	4c 0f af ea          	imul   r13,rdx
  7b0ee7:	4c 0f af f2          	imul   r14,rdx
  7b0eeb:	48 89 85 70 fe ff ff 	mov    QWORD PTR [rbp-0x190],rax
  7b0ef2:	48 89 8d 68 fb ff ff 	mov    QWORD PTR [rbp-0x498],rcx
  7b0ef9:	4c 8b 85 30 fd ff ff 	mov    r8,QWORD PTR [rbp-0x2d0]
  7b0f00:	4c 8b bd 38 fd ff ff 	mov    r15,QWORD PTR [rbp-0x2c8]
  7b0f07:	c4 c1 79 10 14 d7    	vmovupd xmm2,XMMWORD PTR [r15+rdx*8]
  7b0f0d:	48 8b 85 78 fe ff ff 	mov    rax,QWORD PTR [rbp-0x188]
  7b0f14:	48 8b 8d 88 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x178]
  7b0f1b:	c5 69 5c 7c d0 f8    	vsubpd xmm15,xmm2,XMMWORD PTR [rax+rdx*8-0x8]
  7b0f21:	4a 8d 04 31          	lea    rax,[rcx+r14*1]
  7b0f25:	48 8b 8d 08 ff ff ff 	mov    rcx,QWORD PTR [rbp-0xf8]
  7b0f2c:	c5 fb 10 18          	vmovsd xmm3,QWORD PTR [rax]
  7b0f30:	c5 e1 16 24 08       	vmovhpd xmm4,xmm3,QWORD PTR [rax+rcx*1]
  7b0f35:	4d 8d 34 4e          	lea    r14,[r14+rcx*2]
  7b0f39:	48 8b 8d 00 ff ff ff 	mov    rcx,QWORD PTR [rbp-0x100]
  7b0f40:	4b 8d 04 29          	lea    rax,[r9+r13*1]
  7b0f44:	c5 f9 59 f4          	vmulpd xmm6,xmm0,xmm4
  7b0f48:	c5 fb 10 28          	vmovsd xmm5,QWORD PTR [rax]
  7b0f4c:	4d 8d 6c 4d 00       	lea    r13,[r13+rcx*2+0x0]
  7b0f51:	c5 d1 16 3c 08       	vmovhpd xmm7,xmm5,QWORD PTR [rax+rcx*1]
  7b0f56:	48 8b 85 90 fe ff ff 	mov    rax,QWORD PTR [rbp-0x170]
  7b0f5d:	48 8b 8d 20 ff ff ff 	mov    rcx,QWORD PTR [rbp-0xe0]
  7b0f64:	c5 49 59 e7          	vmulpd xmm12,xmm6,xmm7
  7b0f68:	49 03 c3             	add    rax,r11
  7b0f6b:	c5 7b 10 00          	vmovsd xmm8,QWORD PTR [rax]
  7b0f6f:	c5 39 16 14 08       	vmovhpd xmm10,xmm8,QWORD PTR [rax+rcx*1]
  7b0f74:	4b 8d 04 18          	lea    rax,[r8+r11*1]
  7b0f78:	c5 7b 10 08          	vmovsd xmm9,QWORD PTR [rax]
  7b0f7c:	4d 8d 1c 4b          	lea    r11,[r11+rcx*2]
  7b0f80:	c5 31 16 1c 08       	vmovhpd xmm11,xmm9,QWORD PTR [rax+rcx*1]
  7b0f85:	4a 8d 0c 16          	lea    rcx,[rsi+r10*1]
  7b0f89:	c4 41 29 58 eb       	vaddpd xmm13,xmm10,xmm11
  7b0f8e:	c4 41 19 59 f5       	vmulpd xmm14,xmm12,xmm13
  7b0f93:	c4 c1 09 59 df       	vmulpd xmm3,xmm14,xmm15
  7b0f98:	48 8b 85 f8 fe ff ff 	mov    rax,QWORD PTR [rbp-0x108]
  7b0f9f:	c5 fb 10 11          	vmovsd xmm2,QWORD PTR [rcx]
  7b0fa3:	c5 e9 16 24 01       	vmovhpd xmm4,xmm2,QWORD PTR [rcx+rax*1]
  7b0fa8:	4d 8d 14 42          	lea    r10,[r10+rax*2]
  7b0fac:	c5 e1 59 f4          	vmulpd xmm6,xmm3,xmm4
  7b0fb0:	48 8b 85 f0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x110]
  7b0fb7:	4a 8d 0c 27          	lea    rcx,[rdi+r12*1]
  7b0fbb:	c5 fb 10 29          	vmovsd xmm5,QWORD PTR [rcx]
  7b0fbf:	c5 d1 16 3c 01       	vmovhpd xmm7,xmm5,QWORD PTR [rcx+rax*1]
  7b0fc4:	4d 8d 24 44          	lea    r12,[r12+rax*2]
  7b0fc8:	c5 49 59 c7          	vmulpd xmm8,xmm6,xmm7
  7b0fcc:	48 8b 8d 80 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x180]
  7b0fd3:	c5 79 11 04 d1       	vmovupd XMMWORD PTR [rcx+rdx*8],xmm8
  7b0fd8:	48 83 c2 02          	add    rdx,0x2
  7b0fdc:	48 3b 95 70 fe ff ff 	cmp    rdx,QWORD PTR [rbp-0x190]
  7b0fe3:	0f 82 1e ff ff ff    	jb     7b0f07 <t3dmix_mod_mp_t3dmix4_tile_+0x3e07>
  7b0fe9:	48 8b 85 70 fe ff ff 	mov    rax,QWORD PTR [rbp-0x190]
  7b0ff0:	48 8b 8d 68 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x498]
  7b0ff7:	4c 8b 85 70 fb ff ff 	mov    r8,QWORD PTR [rbp-0x490]
  7b0ffe:	4c 8b ad 20 ff ff ff 	mov    r13,QWORD PTR [rbp-0xe0]
  7b1005:	4c 8b a5 00 ff ff ff 	mov    r12,QWORD PTR [rbp-0x100]
  7b100c:	4c 8b 9d f0 fe ff ff 	mov    r11,QWORD PTR [rbp-0x110]
  7b1013:	4c 8b 95 f8 fe ff ff 	mov    r10,QWORD PTR [rbp-0x108]
  7b101a:	48 8b 95 08 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xf8]
  7b1021:	4c 0f af e8          	imul   r13,rax
  7b1025:	4c 0f af e0          	imul   r12,rax
  7b1029:	4c 0f af d8          	imul   r11,rax
  7b102d:	4c 0f af d0          	imul   r10,rax
  7b1031:	48 0f af d0          	imul   rdx,rax
  7b1035:	48 3b 85 68 fe ff ff 	cmp    rax,QWORD PTR [rbp-0x198]
  7b103c:	0f 83 05 01 00 00    	jae    7b1147 <t3dmix_mod_mp_t3dmix4_tile_+0x4047>
  7b1042:	4c 8b b5 a8 fd ff ff 	mov    r14,QWORD PTR [rbp-0x258]
  7b1049:	48 89 8d 68 fb ff ff 	mov    QWORD PTR [rbp-0x498],rcx
  7b1050:	4c 89 85 70 fb ff ff 	mov    QWORD PTR [rbp-0x490],r8
  7b1057:	4d 8d 3c 0e          	lea    r15,[r14+rcx*1]
  7b105b:	4c 89 bd d0 fa ff ff 	mov    QWORD PTR [rbp-0x530],r15
  7b1062:	4c 8b bd 00 fd ff ff 	mov    r15,QWORD PTR [rbp-0x300]
  7b1069:	4c 8b b5 70 fd ff ff 	mov    r14,QWORD PTR [rbp-0x290]
  7b1070:	4c 03 f9             	add    r15,rcx
  7b1073:	4c 89 bd c8 fa ff ff 	mov    QWORD PTR [rbp-0x538],r15
  7b107a:	4c 8b bd 20 fd ff ff 	mov    r15,QWORD PTR [rbp-0x2e0]
  7b1081:	4c 03 f1             	add    r14,rcx
  7b1084:	4c 89 b5 98 fe ff ff 	mov    QWORD PTR [rbp-0x168],r14
  7b108b:	4c 8b b5 c8 fa ff ff 	mov    r14,QWORD PTR [rbp-0x538]
  7b1092:	48 8b 8d d0 fa ff ff 	mov    rcx,QWORD PTR [rbp-0x530]
  7b1099:	4d 03 f8             	add    r15,r8
  7b109c:	4c 89 bd a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],r15
  7b10a3:	4c 8b bd 18 fd ff ff 	mov    r15,QWORD PTR [rbp-0x2e8]
  7b10aa:	4d 03 f8             	add    r15,r8
  7b10ad:	4d 89 f8             	mov    r8,r15
  7b10b0:	4c 8b bd 88 fe ff ff 	mov    r15,QWORD PTR [rbp-0x178]
  7b10b7:	c4 81 7b 10 5c 05 00 	vmovsd xmm3,QWORD PTR [r13+r8*1+0x0]
  7b10be:	c4 a1 73 59 14 3a    	vmulsd xmm2,xmm1,QWORD PTR [rdx+r15*1]
  7b10c4:	4c 8b bd a0 fe ff ff 	mov    r15,QWORD PTR [rbp-0x160]
  7b10cb:	c4 81 6b 59 24 0c    	vmulsd xmm4,xmm2,QWORD PTR [r12+r9*1]
  7b10d1:	c4 81 63 58 6c 3d 00 	vaddsd xmm5,xmm3,QWORD PTR [r13+r15*1+0x0]
  7b10d8:	4c 8b bd 98 fe ff ff 	mov    r15,QWORD PTR [rbp-0x168]
  7b10df:	c5 db 59 fd          	vmulsd xmm7,xmm4,xmm5
  7b10e3:	c4 c1 7b 10 34 c7    	vmovsd xmm6,QWORD PTR [r15+rax*8]
  7b10e9:	48 03 95 08 ff ff ff 	add    rdx,QWORD PTR [rbp-0xf8]
  7b10f0:	4c 03 a5 00 ff ff ff 	add    r12,QWORD PTR [rbp-0x100]
  7b10f7:	4c 03 ad 20 ff ff ff 	add    r13,QWORD PTR [rbp-0xe0]
  7b10fe:	c5 4b 5c 44 c1 f8    	vsubsd xmm8,xmm6,QWORD PTR [rcx+rax*8-0x8]
  7b1104:	c4 41 43 59 c8       	vmulsd xmm9,xmm7,xmm8
  7b1109:	c4 41 33 59 14 32    	vmulsd xmm10,xmm9,QWORD PTR [r10+rsi*1]
  7b110f:	c4 41 2b 59 1c 3b    	vmulsd xmm11,xmm10,QWORD PTR [r11+rdi*1]
  7b1115:	c4 41 7b 11 1c c6    	vmovsd QWORD PTR [r14+rax*8],xmm11
  7b111b:	48 ff c0             	inc    rax
  7b111e:	4c 03 95 f8 fe ff ff 	add    r10,QWORD PTR [rbp-0x108]
  7b1125:	4c 03 9d f0 fe ff ff 	add    r11,QWORD PTR [rbp-0x110]
  7b112c:	48 3b 85 68 fe ff ff 	cmp    rax,QWORD PTR [rbp-0x198]
  7b1133:	0f 82 77 ff ff ff    	jb     7b10b0 <t3dmix_mod_mp_t3dmix4_tile_+0x3fb0>
  7b1139:	48 8b 8d 68 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x498]
  7b1140:	4c 8b 85 70 fb ff ff 	mov    r8,QWORD PTR [rbp-0x490]
  7b1147:	48 8b 85 88 fe ff ff 	mov    rax,QWORD PTR [rbp-0x178]
  7b114e:	48 8b 95 28 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x2d8]
  7b1155:	48 ff c2             	inc    rdx
  7b1158:	48 03 85 d8 fd ff ff 	add    rax,QWORD PTR [rbp-0x228]
  7b115f:	4c 03 8d d0 fd ff ff 	add    r9,QWORD PTR [rbp-0x230]
  7b1166:	4c 03 85 f8 fd ff ff 	add    r8,QWORD PTR [rbp-0x208]
  7b116d:	48 03 b5 c8 fd ff ff 	add    rsi,QWORD PTR [rbp-0x238]
  7b1174:	48 03 bd c0 fd ff ff 	add    rdi,QWORD PTR [rbp-0x240]
  7b117b:	48 03 8d 58 fe ff ff 	add    rcx,QWORD PTR [rbp-0x1a8]
  7b1182:	48 89 85 88 fe ff ff 	mov    QWORD PTR [rbp-0x178],rax
  7b1189:	48 89 95 28 fd ff ff 	mov    QWORD PTR [rbp-0x2d8],rdx
  7b1190:	48 3b 95 98 fd ff ff 	cmp    rdx,QWORD PTR [rbp-0x268]
  7b1197:	0f 82 72 fb ff ff    	jb     7b0d0f <t3dmix_mod_mp_t3dmix4_tile_+0x3c0f>
  7b119d:	4c 8b b5 f8 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x708]
  7b11a4:	4c 8b a5 28 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6d8]
  7b11ab:	4c 8b ad f0 f8 ff ff 	mov    r13,QWORD PTR [rbp-0x710]
  7b11b2:	48 83 bd 38 ff ff ff 	cmp    QWORD PTR [rbp-0xc8],0x8
  7b11b9:	08 
  7b11ba:	0f 85 ad 02 00 00    	jne    7b146d <t3dmix_mod_mp_t3dmix4_tile_+0x436d>
  7b11c0:	48 83 bd 30 ff ff ff 	cmp    QWORD PTR [rbp-0xd0],0x8
  7b11c7:	08 
  7b11c8:	0f 85 9f 02 00 00    	jne    7b146d <t3dmix_mod_mp_t3dmix4_tile_+0x436d>
  7b11ce:	48 83 bd 20 ff ff ff 	cmp    QWORD PTR [rbp-0xe0],0x8
  7b11d5:	08 
  7b11d6:	0f 85 91 02 00 00    	jne    7b146d <t3dmix_mod_mp_t3dmix4_tile_+0x436d>
  7b11dc:	48 83 bd 18 ff ff ff 	cmp    QWORD PTR [rbp-0xe8],0x8
  7b11e3:	08 
  7b11e4:	0f 85 83 02 00 00    	jne    7b146d <t3dmix_mod_mp_t3dmix4_tile_+0x436d>
  7b11ea:	48 83 bd 10 ff ff ff 	cmp    QWORD PTR [rbp-0xf0],0x8
  7b11f1:	08 
  7b11f2:	0f 85 75 02 00 00    	jne    7b146d <t3dmix_mod_mp_t3dmix4_tile_+0x436d>
  7b11f8:	45 33 c9             	xor    r9d,r9d
  7b11fb:	48 8b 85 d8 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x628]
  7b1202:	33 ff                	xor    edi,edi
  7b1204:	48 8b b5 00 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xc00]
  7b120b:	45 33 d2             	xor    r10d,r10d
  7b120e:	4c 8b 85 08 f4 ff ff 	mov    r8,QWORD PTR [rbp-0xbf8]
  7b1215:	4c 8b 9d 10 f4 ff ff 	mov    r11,QWORD PTR [rbp-0xbf0]
  7b121c:	48 3b 85 e0 f9 ff ff 	cmp    rax,QWORD PTR [rbp-0x620]
  7b1223:	0f 8f 79 07 00 00    	jg     7b19a2 <t3dmix_mod_mp_t3dmix4_tile_+0x48a2>
  7b1229:	48 8b 95 08 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x6f8]
  7b1230:	49 0f af d4          	imul   rdx,r12
  7b1234:	c5 fd 10 05 c4 91 09 	vmovupd ymm0,YMMWORD PTR [rip+0x991c4]        # 84a400 <var$630.126.450+0x460>
  7b123b:	00 
  7b123c:	c5 fb 10 0d 54 af 09 	vmovsd xmm1,QWORD PTR [rip+0x9af54]        # 84c198 <__STRLITPACK_0.112+0x88>
  7b1243:	00 
  7b1244:	48 8b 8d 10 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x6f0]
  7b124b:	49 0f af cc          	imul   rcx,r12
  7b124f:	48 8b 85 a8 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x758]
  7b1256:	48 03 8d b0 f8 ff ff 	add    rcx,QWORD PTR [rbp-0x750]
  7b125d:	4c 89 a5 28 f9 ff ff 	mov    QWORD PTR [rbp-0x6d8],r12
  7b1264:	48 03 c2             	add    rax,rdx
  7b1267:	48 03 95 98 f8 ff ff 	add    rdx,QWORD PTR [rbp-0x768]
  7b126e:	48 89 95 d8 fa ff ff 	mov    QWORD PTR [rbp-0x528],rdx
  7b1275:	48 89 85 e0 fa ff ff 	mov    QWORD PTR [rbp-0x520],rax
  7b127c:	48 8b 95 a8 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x158]
  7b1283:	48 8b 85 08 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2f8]
  7b128a:	48 3b 85 10 fd ff ff 	cmp    rax,QWORD PTR [rbp-0x2f0]
  7b1291:	0f 8c 97 01 00 00    	jl     7b142e <t3dmix_mod_mp_t3dmix4_tile_+0x432e>
  7b1297:	48 83 fa 04          	cmp    rdx,0x4
  7b129b:	0f 8c a0 0d 00 00    	jl     7b2041 <t3dmix_mod_mp_t3dmix4_tile_+0x4f41>
  7b12a1:	4c 8b bd 70 fd ff ff 	mov    r15,QWORD PTR [rbp-0x290]
  7b12a8:	45 33 f6             	xor    r14d,r14d
  7b12ab:	4c 8b ad a0 fd ff ff 	mov    r13,QWORD PTR [rbp-0x260]
  7b12b2:	4c 8b a5 d0 fc ff ff 	mov    r12,QWORD PTR [rbp-0x330]
  7b12b9:	48 8b 85 30 fb ff ff 	mov    rax,QWORD PTR [rbp-0x4d0]
  7b12c0:	4c 03 ff             	add    r15,rdi
  7b12c3:	4c 89 bd 00 fb ff ff 	mov    QWORD PTR [rbp-0x500],r15
  7b12ca:	4c 03 ef             	add    r13,rdi
  7b12cd:	4c 8b bd e0 fa ff ff 	mov    r15,QWORD PTR [rbp-0x520]
  7b12d4:	4c 03 e7             	add    r12,rdi
  7b12d7:	48 89 bd 78 fb ff ff 	mov    QWORD PTR [rbp-0x488],rdi
  7b12de:	4c 89 8d 80 fb ff ff 	mov    QWORD PTR [rbp-0x480],r9
  7b12e5:	4c 8b 8d 00 fb ff ff 	mov    r9,QWORD PTR [rbp-0x500]
  7b12ec:	4d 03 fa             	add    r15,r10
  7b12ef:	4c 89 bd f0 fa ff ff 	mov    QWORD PTR [rbp-0x510],r15
  7b12f6:	4c 8b bd d8 fa ff ff 	mov    r15,QWORD PTR [rbp-0x528]
  7b12fd:	48 8b bd f0 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x510]
  7b1304:	4d 03 fa             	add    r15,r10
  7b1307:	4c 89 bd e8 fa ff ff 	mov    QWORD PTR [rbp-0x518],r15
  7b130e:	49 89 c7             	mov    r15,rax
  7b1311:	48 8b 95 e8 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x518]
  7b1318:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  7b131f:	00 
  7b1320:	c4 a1 7d 59 14 f1    	vmulpd ymm2,ymm0,YMMWORD PTR [rcx+r14*8]
  7b1326:	c4 a1 7d 10 1c f7    	vmovupd ymm3,YMMWORD PTR [rdi+r14*8]
  7b132c:	c4 81 7d 10 34 f1    	vmovupd ymm6,YMMWORD PTR [r9+r14*8]
  7b1332:	c4 a1 6d 59 24 f6    	vmulpd ymm4,ymm2,YMMWORD PTR [rsi+r14*8]
  7b1338:	c4 a1 65 58 2c f2    	vaddpd ymm5,ymm3,YMMWORD PTR [rdx+r14*8]
  7b133e:	c4 01 4d 5c 44 f5 f8 	vsubpd ymm8,ymm6,YMMWORD PTR [r13+r14*8-0x8]
  7b1345:	c5 dd 59 fd          	vmulpd ymm7,ymm4,ymm5
  7b1349:	c4 41 45 59 c8       	vmulpd ymm9,ymm7,ymm8
  7b134e:	c4 01 35 59 14 f0    	vmulpd ymm10,ymm9,YMMWORD PTR [r8+r14*8]
  7b1354:	c4 01 2d 59 1c f3    	vmulpd ymm11,ymm10,YMMWORD PTR [r11+r14*8]
  7b135a:	c4 01 7d 11 1c f4    	vmovupd YMMWORD PTR [r12+r14*8],ymm11
  7b1360:	49 83 c6 04          	add    r14,0x4
  7b1364:	4d 3b f7             	cmp    r14,r15
  7b1367:	72 b7                	jb     7b1320 <t3dmix_mod_mp_t3dmix4_tile_+0x4220>
  7b1369:	48 8b bd 78 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x488]
  7b1370:	4c 8b 8d 80 fb ff ff 	mov    r9,QWORD PTR [rbp-0x480]
  7b1377:	48 8b 95 a8 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x158]
  7b137e:	48 3b c2             	cmp    rax,rdx
  7b1381:	0f 83 a7 00 00 00    	jae    7b142e <t3dmix_mod_mp_t3dmix4_tile_+0x432e>
  7b1387:	4c 8b ad a0 fd ff ff 	mov    r13,QWORD PTR [rbp-0x260]
  7b138e:	4c 8b bd 70 fd ff ff 	mov    r15,QWORD PTR [rbp-0x290]
  7b1395:	4c 8b b5 d0 fc ff ff 	mov    r14,QWORD PTR [rbp-0x330]
  7b139c:	4c 89 8d 80 fb ff ff 	mov    QWORD PTR [rbp-0x480],r9
  7b13a3:	4d 8d 64 3d 00       	lea    r12,[r13+rdi*1+0x0]
  7b13a8:	4c 89 a5 f8 fa ff ff 	mov    QWORD PTR [rbp-0x508],r12
  7b13af:	4d 8d 24 3f          	lea    r12,[r15+rdi*1]
  7b13b3:	4c 8b bd d8 fa ff ff 	mov    r15,QWORD PTR [rbp-0x528]
  7b13ba:	4d 8d 2c 3e          	lea    r13,[r14+rdi*1]
  7b13be:	4c 8b b5 e0 fa ff ff 	mov    r14,QWORD PTR [rbp-0x520]
  7b13c5:	4d 03 fa             	add    r15,r10
  7b13c8:	4d 89 f9             	mov    r9,r15
  7b13cb:	4d 03 f2             	add    r14,r10
  7b13ce:	4c 8b bd f8 fa ff ff 	mov    r15,QWORD PTR [rbp-0x508]
  7b13d5:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  7b13d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  7b13e0:	c5 f3 59 14 c1       	vmulsd xmm2,xmm1,QWORD PTR [rcx+rax*8]
  7b13e5:	c4 c1 7b 10 1c c6    	vmovsd xmm3,QWORD PTR [r14+rax*8]
  7b13eb:	c5 eb 59 24 c6       	vmulsd xmm4,xmm2,QWORD PTR [rsi+rax*8]
  7b13f0:	c4 c1 63 58 2c c1    	vaddsd xmm5,xmm3,QWORD PTR [r9+rax*8]
  7b13f6:	c4 c1 7b 10 34 c4    	vmovsd xmm6,QWORD PTR [r12+rax*8]
  7b13fc:	c5 db 59 fd          	vmulsd xmm7,xmm4,xmm5
  7b1400:	c4 41 4b 5c 44 c7 f8 	vsubsd xmm8,xmm6,QWORD PTR [r15+rax*8-0x8]
  7b1407:	c4 41 43 59 c8       	vmulsd xmm9,xmm7,xmm8
  7b140c:	c4 41 33 59 14 c0    	vmulsd xmm10,xmm9,QWORD PTR [r8+rax*8]
  7b1412:	c4 41 2b 59 1c c3    	vmulsd xmm11,xmm10,QWORD PTR [r11+rax*8]
  7b1418:	c4 41 7b 11 5c c5 00 	vmovsd QWORD PTR [r13+rax*8+0x0],xmm11
  7b141f:	48 ff c0             	inc    rax
  7b1422:	48 3b c2             	cmp    rax,rdx
  7b1425:	72 b9                	jb     7b13e0 <t3dmix_mod_mp_t3dmix4_tile_+0x42e0>
  7b1427:	4c 8b 8d 80 fb ff ff 	mov    r9,QWORD PTR [rbp-0x480]
  7b142e:	49 ff c1             	inc    r9
  7b1431:	48 03 bd 58 fe ff ff 	add    rdi,QWORD PTR [rbp-0x1a8]
  7b1438:	48 03 8d 10 fe ff ff 	add    rcx,QWORD PTR [rbp-0x1f0]
  7b143f:	48 03 b5 08 fe ff ff 	add    rsi,QWORD PTR [rbp-0x1f8]
  7b1446:	4c 03 95 f8 fd ff ff 	add    r10,QWORD PTR [rbp-0x208]
  7b144d:	4c 03 85 e8 fd ff ff 	add    r8,QWORD PTR [rbp-0x218]
  7b1454:	4c 03 9d e0 fd ff ff 	add    r11,QWORD PTR [rbp-0x220]
  7b145b:	4c 3b 8d 80 fd ff ff 	cmp    r9,QWORD PTR [rbp-0x280]
  7b1462:	0f 82 1b fe ff ff    	jb     7b1283 <t3dmix_mod_mp_t3dmix4_tile_+0x4183>
  7b1468:	e9 20 05 00 00       	jmp    7b198d <t3dmix_mod_mp_t3dmix4_tile_+0x488d>
  7b146d:	33 d2                	xor    edx,edx
  7b146f:	48 8b 85 d8 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x628]
  7b1476:	45 33 c0             	xor    r8d,r8d
  7b1479:	4c 8b 8d f8 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x608]
  7b1480:	33 c9                	xor    ecx,ecx
  7b1482:	48 8b b5 00 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x600]
  7b1489:	48 8b bd 08 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x5f8]
  7b1490:	48 3b 85 e0 f9 ff ff 	cmp    rax,QWORD PTR [rbp-0x620]
  7b1497:	0f 8f 05 05 00 00    	jg     7b19a2 <t3dmix_mod_mp_t3dmix4_tile_+0x48a2>
  7b149d:	4c 8b 95 08 f9 ff ff 	mov    r10,QWORD PTR [rbp-0x6f8]
  7b14a4:	4d 0f af d4          	imul   r10,r12
  7b14a8:	48 8b 85 e8 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x718]
  7b14af:	48 89 95 50 fd ff ff 	mov    QWORD PTR [rbp-0x2b0],rdx
  7b14b6:	4c 89 a5 28 f9 ff ff 	mov    QWORD PTR [rbp-0x6d8],r12
  7b14bd:	c5 fb 10 0d d3 ac 09 	vmovsd xmm1,QWORD PTR [rip+0x9acd3]        # 84c198 <__STRLITPACK_0.112+0x88>
  7b14c4:	00 
  7b14c5:	4e 8d 1c 10          	lea    r11,[rax+r10*1]
  7b14c9:	48 8b 85 10 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x6f0]
  7b14d0:	49 0f af c4          	imul   rax,r12
  7b14d4:	4c 03 95 c8 f8 ff ff 	add    r10,QWORD PTR [rbp-0x738]
  7b14db:	48 03 85 e0 f8 ff ff 	add    rax,QWORD PTR [rbp-0x720]
  7b14e2:	48 89 85 c8 fe ff ff 	mov    QWORD PTR [rbp-0x138],rax
  7b14e9:	4c 89 95 40 fd ff ff 	mov    QWORD PTR [rbp-0x2c0],r10
  7b14f0:	4c 89 9d 48 fd ff ff 	mov    QWORD PTR [rbp-0x2b8],r11
  7b14f7:	c5 f9 10 05 f1 a4 09 	vmovupd xmm0,XMMWORD PTR [rip+0x9a4f1]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  7b14fe:	00 
  7b14ff:	48 8b 85 08 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2f8]
  7b1506:	48 3b 85 10 fd ff ff 	cmp    rax,QWORD PTR [rbp-0x2f0]
  7b150d:	0f 8c 24 04 00 00    	jl     7b1937 <t3dmix_mod_mp_t3dmix4_tile_+0x4837>
  7b1513:	48 83 bd a8 fe ff ff 	cmp    QWORD PTR [rbp-0x158],0x2
  7b151a:	02 
  7b151b:	0f 8c 36 0b 00 00    	jl     7b2057 <t3dmix_mod_mp_t3dmix4_tile_+0x4f57>
  7b1521:	48 8b 85 d0 fc ff ff 	mov    rax,QWORD PTR [rbp-0x330]
  7b1528:	4c 8d 34 08          	lea    r14,[rax+rcx*1]
  7b152c:	4c 89 b5 c0 fe ff ff 	mov    QWORD PTR [rbp-0x140],r14
  7b1533:	49 83 e6 0f          	and    r14,0xf
  7b1537:	45 85 f6             	test   r14d,r14d
  7b153a:	74 13                	je     7b154f <t3dmix_mod_mp_t3dmix4_tile_+0x444f>
  7b153c:	41 f7 c6 07 00 00 00 	test   r14d,0x7
  7b1543:	0f 85 0e 0b 00 00    	jne    7b2057 <t3dmix_mod_mp_t3dmix4_tile_+0x4f57>
  7b1549:	41 be 01 00 00 00    	mov    r14d,0x1
  7b154f:	44 89 f2             	mov    edx,r14d
  7b1552:	48 8d 42 02          	lea    rax,[rdx+0x2]
  7b1556:	48 3b 85 a8 fe ff ff 	cmp    rax,QWORD PTR [rbp-0x158]
  7b155d:	0f 8f f4 0a 00 00    	jg     7b2057 <t3dmix_mod_mp_t3dmix4_tile_+0x4f57>
  7b1563:	4c 8b bd a0 fd ff ff 	mov    r15,QWORD PTR [rbp-0x260]
  7b156a:	44 8b a5 90 fd ff ff 	mov    r12d,DWORD PTR [rbp-0x270]
  7b1571:	44 89 e0             	mov    eax,r12d
  7b1574:	41 2b c6             	sub    eax,r14d
  7b1577:	83 e0 01             	and    eax,0x1
  7b157a:	4c 03 f9             	add    r15,rcx
  7b157d:	4c 89 bd b8 fe ff ff 	mov    QWORD PTR [rbp-0x148],r15
  7b1584:	f7 d8                	neg    eax
  7b1586:	4c 8b bd 70 fd ff ff 	mov    r15,QWORD PTR [rbp-0x290]
  7b158d:	41 03 c4             	add    eax,r12d
  7b1590:	45 33 e4             	xor    r12d,r12d
  7b1593:	45 33 d2             	xor    r10d,r10d
  7b1596:	45 33 ed             	xor    r13d,r13d
  7b1599:	4c 03 f9             	add    r15,rcx
  7b159c:	4c 89 bd 60 fd ff ff 	mov    QWORD PTR [rbp-0x2a0],r15
  7b15a3:	45 33 db             	xor    r11d,r11d
  7b15a6:	4c 8b bd 48 fd ff ff 	mov    r15,QWORD PTR [rbp-0x2b8]
  7b15ad:	48 63 c0             	movsxd rax,eax
  7b15b0:	4d 03 f8             	add    r15,r8
  7b15b3:	4c 89 bd 58 fd ff ff 	mov    QWORD PTR [rbp-0x2a8],r15
  7b15ba:	4c 8b bd 40 fd ff ff 	mov    r15,QWORD PTR [rbp-0x2c0]
  7b15c1:	4d 03 f8             	add    r15,r8
  7b15c4:	4c 89 bd d0 fe ff ff 	mov    QWORD PTR [rbp-0x130],r15
  7b15cb:	45 85 f6             	test   r14d,r14d
  7b15ce:	0f 86 c9 00 00 00    	jbe    7b169d <t3dmix_mod_mp_t3dmix4_tile_+0x459d>
  7b15d4:	48 89 85 b0 fe ff ff 	mov    QWORD PTR [rbp-0x150],rax
  7b15db:	48 89 8d 88 fb ff ff 	mov    QWORD PTR [rbp-0x478],rcx
  7b15e2:	4c 89 85 90 fb ff ff 	mov    QWORD PTR [rbp-0x470],r8
  7b15e9:	4c 89 d8             	mov    rax,r11
  7b15ec:	4d 89 d6             	mov    r14,r10
  7b15ef:	48 8b 8d 58 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x2a8]
  7b15f6:	4c 8b 85 60 fd ff ff 	mov    r8,QWORD PTR [rbp-0x2a0]
  7b15fd:	4c 8b bd c8 fe ff ff 	mov    r15,QWORD PTR [rbp-0x138]
  7b1604:	c4 81 7b 10 34 e0    	vmovsd xmm6,QWORD PTR [r8+r12*8]
  7b160a:	c4 81 73 59 14 3a    	vmulsd xmm2,xmm1,QWORD PTR [r10+r15*1]
  7b1610:	4c 8b bd d0 fe ff ff 	mov    r15,QWORD PTR [rbp-0x130]
  7b1617:	c4 81 6b 59 24 0b    	vmulsd xmm4,xmm2,QWORD PTR [r11+r9*1]
  7b161d:	c4 a1 7b 10 1c 38    	vmovsd xmm3,QWORD PTR [rax+r15*1]
  7b1623:	4c 8b bd b8 fe ff ff 	mov    r15,QWORD PTR [rbp-0x148]
  7b162a:	4c 03 95 38 ff ff ff 	add    r10,QWORD PTR [rbp-0xc8]
  7b1631:	4c 03 9d 30 ff ff ff 	add    r11,QWORD PTR [rbp-0xd0]
  7b1638:	c5 e3 58 2c 08       	vaddsd xmm5,xmm3,QWORD PTR [rax+rcx*1]
  7b163d:	c4 01 4b 5c 44 e7 f8 	vsubsd xmm8,xmm6,QWORD PTR [r15+r12*8-0x8]
  7b1644:	c5 db 59 fd          	vmulsd xmm7,xmm4,xmm5
  7b1648:	c4 41 43 59 c8       	vmulsd xmm9,xmm7,xmm8
  7b164d:	c4 41 33 59 14 36    	vmulsd xmm10,xmm9,QWORD PTR [r14+rsi*1]
  7b1653:	c4 41 2b 59 5c 3d 00 	vmulsd xmm11,xmm10,QWORD PTR [r13+rdi*1+0x0]
  7b165a:	4c 8b bd c0 fe ff ff 	mov    r15,QWORD PTR [rbp-0x140]
  7b1661:	4c 03 b5 18 ff ff ff 	add    r14,QWORD PTR [rbp-0xe8]
  7b1668:	4c 03 ad 10 ff ff ff 	add    r13,QWORD PTR [rbp-0xf0]
  7b166f:	c4 01 7b 11 1c e7    	vmovsd QWORD PTR [r15+r12*8],xmm11
  7b1675:	49 ff c4             	inc    r12
  7b1678:	48 03 85 20 ff ff ff 	add    rax,QWORD PTR [rbp-0xe0]
  7b167f:	4c 3b e2             	cmp    r12,rdx
  7b1682:	0f 82 75 ff ff ff    	jb     7b15fd <t3dmix_mod_mp_t3dmix4_tile_+0x44fd>
  7b1688:	48 8b 85 b0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x150]
  7b168f:	48 8b 8d 88 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x478]
  7b1696:	4c 8b 85 90 fb ff ff 	mov    r8,QWORD PTR [rbp-0x470]
  7b169d:	4c 8b 9d 20 ff ff ff 	mov    r11,QWORD PTR [rbp-0xe0]
  7b16a4:	4c 8b a5 10 ff ff ff 	mov    r12,QWORD PTR [rbp-0xf0]
  7b16ab:	4c 8b 95 18 ff ff ff 	mov    r10,QWORD PTR [rbp-0xe8]
  7b16b2:	4c 8b ad 30 ff ff ff 	mov    r13,QWORD PTR [rbp-0xd0]
  7b16b9:	4c 8b b5 38 ff ff ff 	mov    r14,QWORD PTR [rbp-0xc8]
  7b16c0:	4c 89 85 90 fb ff ff 	mov    QWORD PTR [rbp-0x470],r8
  7b16c7:	4c 0f af da          	imul   r11,rdx
  7b16cb:	4c 0f af e2          	imul   r12,rdx
  7b16cf:	4c 0f af d2          	imul   r10,rdx
  7b16d3:	4c 0f af ea          	imul   r13,rdx
  7b16d7:	4c 0f af f2          	imul   r14,rdx
  7b16db:	48 89 85 b0 fe ff ff 	mov    QWORD PTR [rbp-0x150],rax
  7b16e2:	48 89 8d 88 fb ff ff 	mov    QWORD PTR [rbp-0x478],rcx
  7b16e9:	4c 8b 85 58 fd ff ff 	mov    r8,QWORD PTR [rbp-0x2a8]
  7b16f0:	4c 8b bd 60 fd ff ff 	mov    r15,QWORD PTR [rbp-0x2a0]
  7b16f7:	c4 c1 79 10 14 d7    	vmovupd xmm2,XMMWORD PTR [r15+rdx*8]
  7b16fd:	48 8b 85 b8 fe ff ff 	mov    rax,QWORD PTR [rbp-0x148]
  7b1704:	48 8b 8d c8 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x138]
  7b170b:	c5 69 5c 7c d0 f8    	vsubpd xmm15,xmm2,XMMWORD PTR [rax+rdx*8-0x8]
  7b1711:	4a 8d 04 31          	lea    rax,[rcx+r14*1]
  7b1715:	48 8b 8d 38 ff ff ff 	mov    rcx,QWORD PTR [rbp-0xc8]
  7b171c:	c5 fb 10 18          	vmovsd xmm3,QWORD PTR [rax]
  7b1720:	c5 e1 16 24 08       	vmovhpd xmm4,xmm3,QWORD PTR [rax+rcx*1]
  7b1725:	4d 8d 34 4e          	lea    r14,[r14+rcx*2]
  7b1729:	48 8b 8d 30 ff ff ff 	mov    rcx,QWORD PTR [rbp-0xd0]
  7b1730:	4b 8d 04 29          	lea    rax,[r9+r13*1]
  7b1734:	c5 f9 59 f4          	vmulpd xmm6,xmm0,xmm4
  7b1738:	c5 fb 10 28          	vmovsd xmm5,QWORD PTR [rax]
  7b173c:	4d 8d 6c 4d 00       	lea    r13,[r13+rcx*2+0x0]
  7b1741:	c5 d1 16 3c 08       	vmovhpd xmm7,xmm5,QWORD PTR [rax+rcx*1]
  7b1746:	48 8b 85 d0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x130]
  7b174d:	48 8b 8d 20 ff ff ff 	mov    rcx,QWORD PTR [rbp-0xe0]
  7b1754:	c5 49 59 e7          	vmulpd xmm12,xmm6,xmm7
  7b1758:	49 03 c3             	add    rax,r11
  7b175b:	c5 7b 10 00          	vmovsd xmm8,QWORD PTR [rax]
  7b175f:	c5 39 16 14 08       	vmovhpd xmm10,xmm8,QWORD PTR [rax+rcx*1]
  7b1764:	4b 8d 04 18          	lea    rax,[r8+r11*1]
  7b1768:	c5 7b 10 08          	vmovsd xmm9,QWORD PTR [rax]
  7b176c:	4d 8d 1c 4b          	lea    r11,[r11+rcx*2]
  7b1770:	c5 31 16 1c 08       	vmovhpd xmm11,xmm9,QWORD PTR [rax+rcx*1]
  7b1775:	4a 8d 0c 16          	lea    rcx,[rsi+r10*1]
  7b1779:	c4 41 29 58 eb       	vaddpd xmm13,xmm10,xmm11
  7b177e:	c4 41 19 59 f5       	vmulpd xmm14,xmm12,xmm13
  7b1783:	c4 c1 09 59 df       	vmulpd xmm3,xmm14,xmm15
  7b1788:	48 8b 85 18 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe8]
  7b178f:	c5 fb 10 11          	vmovsd xmm2,QWORD PTR [rcx]
  7b1793:	c5 e9 16 24 01       	vmovhpd xmm4,xmm2,QWORD PTR [rcx+rax*1]
  7b1798:	4d 8d 14 42          	lea    r10,[r10+rax*2]
  7b179c:	c5 e1 59 f4          	vmulpd xmm6,xmm3,xmm4
  7b17a0:	48 8b 85 10 ff ff ff 	mov    rax,QWORD PTR [rbp-0xf0]
  7b17a7:	4a 8d 0c 27          	lea    rcx,[rdi+r12*1]
  7b17ab:	c5 fb 10 29          	vmovsd xmm5,QWORD PTR [rcx]
  7b17af:	c5 d1 16 3c 01       	vmovhpd xmm7,xmm5,QWORD PTR [rcx+rax*1]
  7b17b4:	4d 8d 24 44          	lea    r12,[r12+rax*2]
  7b17b8:	c5 49 59 c7          	vmulpd xmm8,xmm6,xmm7
  7b17bc:	48 8b 8d c0 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x140]
  7b17c3:	c5 79 11 04 d1       	vmovupd XMMWORD PTR [rcx+rdx*8],xmm8
  7b17c8:	48 83 c2 02          	add    rdx,0x2
  7b17cc:	48 3b 95 b0 fe ff ff 	cmp    rdx,QWORD PTR [rbp-0x150]
  7b17d3:	0f 82 1e ff ff ff    	jb     7b16f7 <t3dmix_mod_mp_t3dmix4_tile_+0x45f7>
  7b17d9:	48 8b 85 b0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x150]
  7b17e0:	48 8b 8d 88 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x478]
  7b17e7:	4c 8b 85 90 fb ff ff 	mov    r8,QWORD PTR [rbp-0x470]
  7b17ee:	4c 8b ad 20 ff ff ff 	mov    r13,QWORD PTR [rbp-0xe0]
  7b17f5:	4c 8b a5 30 ff ff ff 	mov    r12,QWORD PTR [rbp-0xd0]
  7b17fc:	4c 8b 9d 10 ff ff ff 	mov    r11,QWORD PTR [rbp-0xf0]
  7b1803:	4c 8b 95 18 ff ff ff 	mov    r10,QWORD PTR [rbp-0xe8]
  7b180a:	48 8b 95 38 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xc8]
  7b1811:	4c 0f af e8          	imul   r13,rax
  7b1815:	4c 0f af e0          	imul   r12,rax
  7b1819:	4c 0f af d8          	imul   r11,rax
  7b181d:	4c 0f af d0          	imul   r10,rax
  7b1821:	48 0f af d0          	imul   rdx,rax
  7b1825:	48 3b 85 a8 fe ff ff 	cmp    rax,QWORD PTR [rbp-0x158]
  7b182c:	0f 83 05 01 00 00    	jae    7b1937 <t3dmix_mod_mp_t3dmix4_tile_+0x4837>
  7b1832:	4c 8b b5 a0 fd ff ff 	mov    r14,QWORD PTR [rbp-0x260]
  7b1839:	48 89 8d 88 fb ff ff 	mov    QWORD PTR [rbp-0x478],rcx
  7b1840:	4c 89 85 90 fb ff ff 	mov    QWORD PTR [rbp-0x470],r8
  7b1847:	4d 8d 3c 0e          	lea    r15,[r14+rcx*1]
  7b184b:	4c 89 bd 10 fb ff ff 	mov    QWORD PTR [rbp-0x4f0],r15
  7b1852:	4c 8b bd 70 fd ff ff 	mov    r15,QWORD PTR [rbp-0x290]
  7b1859:	4c 8b b5 d0 fc ff ff 	mov    r14,QWORD PTR [rbp-0x330]
  7b1860:	4c 03 f9             	add    r15,rcx
  7b1863:	4c 89 bd 08 fb ff ff 	mov    QWORD PTR [rbp-0x4f8],r15
  7b186a:	4c 8b bd 48 fd ff ff 	mov    r15,QWORD PTR [rbp-0x2b8]
  7b1871:	4c 03 f1             	add    r14,rcx
  7b1874:	4c 89 b5 d8 fe ff ff 	mov    QWORD PTR [rbp-0x128],r14
  7b187b:	4c 8b b5 08 fb ff ff 	mov    r14,QWORD PTR [rbp-0x4f8]
  7b1882:	48 8b 8d 10 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x4f0]
  7b1889:	4d 03 f8             	add    r15,r8
  7b188c:	4c 89 bd e0 fe ff ff 	mov    QWORD PTR [rbp-0x120],r15
  7b1893:	4c 8b bd 40 fd ff ff 	mov    r15,QWORD PTR [rbp-0x2c0]
  7b189a:	4d 03 f8             	add    r15,r8
  7b189d:	4d 89 f8             	mov    r8,r15
  7b18a0:	4c 8b bd c8 fe ff ff 	mov    r15,QWORD PTR [rbp-0x138]
  7b18a7:	c4 81 7b 10 5c 05 00 	vmovsd xmm3,QWORD PTR [r13+r8*1+0x0]
  7b18ae:	c4 c1 7b 10 34 c6    	vmovsd xmm6,QWORD PTR [r14+rax*8]
  7b18b4:	c4 a1 73 59 14 3a    	vmulsd xmm2,xmm1,QWORD PTR [rdx+r15*1]
  7b18ba:	c5 4b 5c 44 c1 f8    	vsubsd xmm8,xmm6,QWORD PTR [rcx+rax*8-0x8]
  7b18c0:	c4 81 6b 59 24 0c    	vmulsd xmm4,xmm2,QWORD PTR [r12+r9*1]
  7b18c6:	4c 8b bd e0 fe ff ff 	mov    r15,QWORD PTR [rbp-0x120]
  7b18cd:	48 03 95 38 ff ff ff 	add    rdx,QWORD PTR [rbp-0xc8]
  7b18d4:	4c 03 a5 30 ff ff ff 	add    r12,QWORD PTR [rbp-0xd0]
  7b18db:	c4 81 63 58 6c 3d 00 	vaddsd xmm5,xmm3,QWORD PTR [r13+r15*1+0x0]
  7b18e2:	c5 db 59 fd          	vmulsd xmm7,xmm4,xmm5
  7b18e6:	c4 41 43 59 c8       	vmulsd xmm9,xmm7,xmm8
  7b18eb:	c4 41 33 59 14 32    	vmulsd xmm10,xmm9,QWORD PTR [r10+rsi*1]
  7b18f1:	c4 41 2b 59 1c 3b    	vmulsd xmm11,xmm10,QWORD PTR [r11+rdi*1]
  7b18f7:	4c 8b bd d8 fe ff ff 	mov    r15,QWORD PTR [rbp-0x128]
  7b18fe:	4c 03 95 18 ff ff ff 	add    r10,QWORD PTR [rbp-0xe8]
  7b1905:	4c 03 9d 10 ff ff ff 	add    r11,QWORD PTR [rbp-0xf0]
  7b190c:	c4 41 7b 11 1c c7    	vmovsd QWORD PTR [r15+rax*8],xmm11
  7b1912:	48 ff c0             	inc    rax
  7b1915:	4c 03 ad 20 ff ff ff 	add    r13,QWORD PTR [rbp-0xe0]
  7b191c:	48 3b 85 a8 fe ff ff 	cmp    rax,QWORD PTR [rbp-0x158]
  7b1923:	0f 82 77 ff ff ff    	jb     7b18a0 <t3dmix_mod_mp_t3dmix4_tile_+0x47a0>
  7b1929:	48 8b 8d 88 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x478]
  7b1930:	4c 8b 85 90 fb ff ff 	mov    r8,QWORD PTR [rbp-0x470]
  7b1937:	48 8b 85 c8 fe ff ff 	mov    rax,QWORD PTR [rbp-0x138]
  7b193e:	48 8b 95 50 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x2b0]
  7b1945:	48 ff c2             	inc    rdx
  7b1948:	48 03 85 10 fe ff ff 	add    rax,QWORD PTR [rbp-0x1f0]
  7b194f:	4c 03 8d 08 fe ff ff 	add    r9,QWORD PTR [rbp-0x1f8]
  7b1956:	4c 03 85 f8 fd ff ff 	add    r8,QWORD PTR [rbp-0x208]
  7b195d:	48 03 b5 e8 fd ff ff 	add    rsi,QWORD PTR [rbp-0x218]
  7b1964:	48 03 bd e0 fd ff ff 	add    rdi,QWORD PTR [rbp-0x220]
  7b196b:	48 03 8d 58 fe ff ff 	add    rcx,QWORD PTR [rbp-0x1a8]
  7b1972:	48 89 85 c8 fe ff ff 	mov    QWORD PTR [rbp-0x138],rax
  7b1979:	48 89 95 50 fd ff ff 	mov    QWORD PTR [rbp-0x2b0],rdx
  7b1980:	48 3b 95 80 fd ff ff 	cmp    rdx,QWORD PTR [rbp-0x280]
  7b1987:	0f 82 72 fb ff ff    	jb     7b14ff <t3dmix_mod_mp_t3dmix4_tile_+0x43ff>
  7b198d:	4c 8b b5 f8 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x708]
  7b1994:	4c 8b a5 28 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6d8]
  7b199b:	4c 8b ad f0 f8 ff ff 	mov    r13,QWORD PTR [rbp-0x710]
  7b19a2:	48 83 bd 28 ff ff ff 	cmp    QWORD PTR [rbp-0xd8],0x8
  7b19a9:	08 
  7b19aa:	0f 85 f2 01 00 00    	jne    7b1ba2 <t3dmix_mod_mp_t3dmix4_tile_+0x4aa2>
  7b19b0:	48 83 bd 48 ff ff ff 	cmp    QWORD PTR [rbp-0xb8],0x8
  7b19b7:	08 
  7b19b8:	0f 85 e4 01 00 00    	jne    7b1ba2 <t3dmix_mod_mp_t3dmix4_tile_+0x4aa2>
  7b19be:	48 83 bd 40 ff ff ff 	cmp    QWORD PTR [rbp-0xc0],0x8
  7b19c5:	08 
  7b19c6:	0f 85 d6 01 00 00    	jne    7b1ba2 <t3dmix_mod_mp_t3dmix4_tile_+0x4aa2>
  7b19cc:	48 8b 85 28 fa ff ff 	mov    rax,QWORD PTR [rbp-0x5d8]
  7b19d3:	33 ff                	xor    edi,edi
  7b19d5:	4c 8b 85 f8 f3 ff ff 	mov    r8,QWORD PTR [rbp-0xc08]
  7b19dc:	33 f6                	xor    esi,esi
  7b19de:	4c 8b 8d 58 f3 ff ff 	mov    r9,QWORD PTR [rbp-0xca8]
  7b19e5:	48 3b 85 d8 f9 ff ff 	cmp    rax,QWORD PTR [rbp-0x628]
  7b19ec:	0f 8c a2 04 00 00    	jl     7b1e94 <t3dmix_mod_mp_t3dmix4_tile_+0x4d94>
  7b19f2:	48 8b 8d 18 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x6e8]
  7b19f9:	49 0f af cc          	imul   rcx,r12
  7b19fd:	48 03 8d c0 f8 ff ff 	add    rcx,QWORD PTR [rbp-0x740]
  7b1a04:	48 8b 95 a8 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x158]
  7b1a0b:	4c 89 a5 28 f9 ff ff 	mov    QWORD PTR [rbp-0x6d8],r12
  7b1a12:	48 8b 85 08 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2f8]
  7b1a19:	48 3b 85 10 fd ff ff 	cmp    rax,QWORD PTR [rbp-0x2f0]
  7b1a20:	0f 8c 4b 01 00 00    	jl     7b1b71 <t3dmix_mod_mp_t3dmix4_tile_+0x4a71>
  7b1a26:	48 8b 85 b0 fb ff ff 	mov    rax,QWORD PTR [rbp-0x450]
  7b1a2d:	4c 8b 95 b8 fb ff ff 	mov    r10,QWORD PTR [rbp-0x448]
  7b1a34:	c4 a1 7b 10 44 d0 f8 	vmovsd xmm0,QWORD PTR [rax+r10*8-0x8]
  7b1a3b:	48 83 fa 04          	cmp    rdx,0x4
  7b1a3f:	0f 8c 03 06 00 00    	jl     7b2048 <t3dmix_mod_mp_t3dmix4_tile_+0x4f48>
  7b1a45:	4c 8b a5 38 fb ff ff 	mov    r12,QWORD PTR [rbp-0x4c8]
  7b1a4c:	45 33 ed             	xor    r13d,r13d
  7b1a4f:	4c 8b 9d 40 fb ff ff 	mov    r11,QWORD PTR [rbp-0x4c0]
  7b1a56:	4c 8b 95 d0 fc ff ff 	mov    r10,QWORD PTR [rbp-0x330]
  7b1a5d:	4c 8b b5 00 fd ff ff 	mov    r14,QWORD PTR [rbp-0x300]
  7b1a64:	4c 03 e6             	add    r12,rsi
  7b1a67:	48 8b 85 30 fb ff ff 	mov    rax,QWORD PTR [rbp-0x4d0]
  7b1a6e:	4c 03 de             	add    r11,rsi
  7b1a71:	c4 e2 7d 19 c8       	vbroadcastsd ymm1,xmm0
  7b1a76:	4c 03 d6             	add    r10,rsi
  7b1a79:	48 89 c2             	mov    rdx,rax
  7b1a7c:	4d 8d 3c 36          	lea    r15,[r14+rsi*1]
  7b1a80:	49 89 ce             	mov    r14,rcx
  7b1a83:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  7b1a88:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  7b1a8f:	00 
  7b1a90:	c4 81 75 59 14 e8    	vmulpd ymm2,ymm1,YMMWORD PTR [r8+r13*8]
  7b1a96:	c4 81 7d 10 5c ec 08 	vmovupd ymm3,YMMWORD PTR [r12+r13*8+0x8]
  7b1a9d:	c4 81 7d 10 6c eb 08 	vmovupd ymm5,YMMWORD PTR [r11+r13*8+0x8]
  7b1aa4:	c4 41 7d 10 16       	vmovupd ymm10,YMMWORD PTR [r14]
  7b1aa9:	c4 81 6d 59 34 e9    	vmulpd ymm6,ymm2,YMMWORD PTR [r9+r13*8]
  7b1aaf:	c4 81 65 5c 24 ef    	vsubpd ymm4,ymm3,YMMWORD PTR [r15+r13*8]
  7b1ab5:	c4 81 55 5c 3c ea    	vsubpd ymm7,ymm5,YMMWORD PTR [r10+r13*8]
  7b1abb:	c5 4d 59 c4          	vmulpd ymm8,ymm6,ymm4
  7b1abf:	c5 4d 59 cf          	vmulpd ymm9,ymm6,ymm7
  7b1ac3:	c4 41 3d 58 d9       	vaddpd ymm11,ymm8,ymm9
  7b1ac8:	49 83 c5 04          	add    r13,0x4
  7b1acc:	c4 41 2d 5c e3       	vsubpd ymm12,ymm10,ymm11
  7b1ad1:	c4 41 7d 11 26       	vmovupd YMMWORD PTR [r14],ymm12
  7b1ad6:	49 83 c6 20          	add    r14,0x20
  7b1ada:	4c 3b ea             	cmp    r13,rdx
  7b1add:	72 b1                	jb     7b1a90 <t3dmix_mod_mp_t3dmix4_tile_+0x4990>
  7b1adf:	48 8b 95 a8 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x158]
  7b1ae6:	48 3b c2             	cmp    rax,rdx
  7b1ae9:	0f 83 82 00 00 00    	jae    7b1b71 <t3dmix_mod_mp_t3dmix4_tile_+0x4a71>
  7b1aef:	4c 8b 9d 38 fb ff ff 	mov    r11,QWORD PTR [rbp-0x4c8]
  7b1af6:	4c 8b 95 40 fb ff ff 	mov    r10,QWORD PTR [rbp-0x4c0]
  7b1afd:	4c 8b b5 d0 fc ff ff 	mov    r14,QWORD PTR [rbp-0x330]
  7b1b04:	4c 8b a5 00 fd ff ff 	mov    r12,QWORD PTR [rbp-0x300]
  7b1b0b:	4c 03 de             	add    r11,rsi
  7b1b0e:	4c 03 d6             	add    r10,rsi
  7b1b11:	4c 03 f6             	add    r14,rsi
  7b1b14:	4d 8d 2c 34          	lea    r13,[r12+rsi*1]
  7b1b18:	4c 8d 24 c1          	lea    r12,[rcx+rax*8]
  7b1b1c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  7b1b20:	c4 c1 7b 59 0c c0    	vmulsd xmm1,xmm0,QWORD PTR [r8+rax*8]
  7b1b26:	c4 c1 7b 10 54 c3 08 	vmovsd xmm2,QWORD PTR [r11+rax*8+0x8]
  7b1b2d:	c4 c1 7b 10 64 c2 08 	vmovsd xmm4,QWORD PTR [r10+rax*8+0x8]
  7b1b34:	c4 c1 73 59 2c c1    	vmulsd xmm5,xmm1,QWORD PTR [r9+rax*8]
  7b1b3a:	c4 c1 6b 5c 5c c5 00 	vsubsd xmm3,xmm2,QWORD PTR [r13+rax*8+0x0]
  7b1b41:	c4 c1 5b 5c 34 c6    	vsubsd xmm6,xmm4,QWORD PTR [r14+rax*8]
  7b1b47:	c5 d3 59 fb          	vmulsd xmm7,xmm5,xmm3
  7b1b4b:	c5 53 59 c6          	vmulsd xmm8,xmm5,xmm6
  7b1b4f:	c4 41 7b 10 0c 24    	vmovsd xmm9,QWORD PTR [r12]
  7b1b55:	48 ff c0             	inc    rax
  7b1b58:	c4 41 43 58 d0       	vaddsd xmm10,xmm7,xmm8
  7b1b5d:	c4 41 33 5c da       	vsubsd xmm11,xmm9,xmm10
  7b1b62:	c4 41 7b 11 1c 24    	vmovsd QWORD PTR [r12],xmm11
  7b1b68:	49 83 c4 08          	add    r12,0x8
  7b1b6c:	48 3b c2             	cmp    rax,rdx
  7b1b6f:	72 af                	jb     7b1b20 <t3dmix_mod_mp_t3dmix4_tile_+0x4a20>
  7b1b71:	48 ff c7             	inc    rdi
  7b1b74:	48 03 b5 58 fe ff ff 	add    rsi,QWORD PTR [rbp-0x1a8]
  7b1b7b:	4c 03 85 f0 fd ff ff 	add    r8,QWORD PTR [rbp-0x210]
  7b1b82:	4c 03 8d 00 fe ff ff 	add    r9,QWORD PTR [rbp-0x200]
  7b1b89:	48 03 8d 18 fe ff ff 	add    rcx,QWORD PTR [rbp-0x1e8]
  7b1b90:	48 3b bd 98 fd ff ff 	cmp    rdi,QWORD PTR [rbp-0x268]
  7b1b97:	0f 82 75 fe ff ff    	jb     7b1a12 <t3dmix_mod_mp_t3dmix4_tile_+0x4912>
  7b1b9d:	e9 dd 02 00 00       	jmp    7b1e7f <t3dmix_mod_mp_t3dmix4_tile_+0x4d7f>
  7b1ba2:	48 8b 85 28 fa ff ff 	mov    rax,QWORD PTR [rbp-0x5d8]
  7b1ba9:	33 ff                	xor    edi,edi
  7b1bab:	48 8b 95 10 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x5f0]
  7b1bb2:	33 f6                	xor    esi,esi
  7b1bb4:	48 8b 8d 20 fa ff ff 	mov    rcx,QWORD PTR [rbp-0x5e0]
  7b1bbb:	48 3b 85 d8 f9 ff ff 	cmp    rax,QWORD PTR [rbp-0x628]
  7b1bc2:	0f 8c cc 02 00 00    	jl     7b1e94 <t3dmix_mod_mp_t3dmix4_tile_+0x4d94>
  7b1bc8:	48 8b 85 18 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x6e8]
  7b1bcf:	49 0f af c4          	imul   rax,r12
  7b1bd3:	48 03 85 90 f8 ff ff 	add    rax,QWORD PTR [rbp-0x770]
  7b1bda:	4c 8b b5 40 ff ff ff 	mov    r14,QWORD PTR [rbp-0xc0]
  7b1be1:	48 89 bd 68 fd ff ff 	mov    QWORD PTR [rbp-0x298],rdi
  7b1be8:	4c 89 a5 28 f9 ff ff 	mov    QWORD PTR [rbp-0x6d8],r12
  7b1bef:	48 8b bd 10 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2f0]
  7b1bf6:	48 3b bd 08 fd ff ff 	cmp    rdi,QWORD PTR [rbp-0x2f8]
  7b1bfd:	0f 8f 42 02 00 00    	jg     7b1e45 <t3dmix_mod_mp_t3dmix4_tile_+0x4d45>
  7b1c03:	4c 8b 85 b8 fb ff ff 	mov    r8,QWORD PTR [rbp-0x448]
  7b1c0a:	48 8b bd b0 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x450]
  7b1c11:	c4 a1 7b 10 44 c7 f8 	vmovsd xmm0,QWORD PTR [rdi+r8*8-0x8]
  7b1c18:	4d 85 f6             	test   r14,r14
  7b1c1b:	0f 84 2e 04 00 00    	je     7b204f <t3dmix_mod_mp_t3dmix4_tile_+0x4f4f>
  7b1c21:	48 83 bd a8 fe ff ff 	cmp    QWORD PTR [rbp-0x158],0x2
  7b1c28:	02 
  7b1c29:	0f 8c 20 04 00 00    	jl     7b204f <t3dmix_mod_mp_t3dmix4_tile_+0x4f4f>
  7b1c2f:	4c 8b bd 88 fa ff ff 	mov    r15,QWORD PTR [rbp-0x578]
  7b1c36:	45 33 c0             	xor    r8d,r8d
  7b1c39:	4c 8b 8d 40 fb ff ff 	mov    r9,QWORD PTR [rbp-0x4c0]
  7b1c40:	45 33 e4             	xor    r12d,r12d
  7b1c43:	4c 8b 95 d0 fc ff ff 	mov    r10,QWORD PTR [rbp-0x330]
  7b1c4a:	4c 8b ad e8 fe ff ff 	mov    r13,QWORD PTR [rbp-0x118]
  7b1c51:	4a 8d 3c fd 00 00 00 	lea    rdi,[r15*8+0x0]
  7b1c58:	00 
  7b1c59:	48 f7 df             	neg    rdi
  7b1c5c:	4c 03 ce             	add    r9,rsi
  7b1c5f:	4c 8b bd 50 fb ff ff 	mov    r15,QWORD PTR [rbp-0x4b0]
  7b1c66:	4d 8d 1c 32          	lea    r11,[r10+rsi*1]
  7b1c6a:	48 03 bd 90 fa ff ff 	add    rdi,QWORD PTR [rbp-0x570]
  7b1c71:	49 f7 df             	neg    r15
  7b1c74:	49 03 ff             	add    rdi,r15
  7b1c77:	45 33 d2             	xor    r10d,r10d
  7b1c7a:	4c 8b bd 10 fd ff ff 	mov    r15,QWORD PTR [rbp-0x2f0]
  7b1c81:	48 89 85 20 fb ff ff 	mov    QWORD PTR [rbp-0x4e0],rax
  7b1c88:	48 89 b5 18 fb ff ff 	mov    QWORD PTR [rbp-0x4e8],rsi
  7b1c8f:	48 89 85 a0 fb ff ff 	mov    QWORD PTR [rbp-0x460],rax
  7b1c96:	4a 8d 3c ff          	lea    rdi,[rdi+r15*8]
  7b1c9a:	48 89 b5 a8 fb ff ff 	mov    QWORD PTR [rbp-0x458],rsi
  7b1ca1:	c5 fb 12 c8          	vmovddup xmm1,xmm0
  7b1ca5:	48 03 bd 48 fb ff ff 	add    rdi,QWORD PTR [rbp-0x4b8]
  7b1cac:	48 8b 85 18 fb ff ff 	mov    rax,QWORD PTR [rbp-0x4e8]
  7b1cb3:	48 8b b5 20 fb ff ff 	mov    rsi,QWORD PTR [rbp-0x4e0]
  7b1cba:	4c 89 ad 98 fb ff ff 	mov    QWORD PTR [rbp-0x468],r13
  7b1cc1:	4c 8b bd 28 ff ff ff 	mov    r15,QWORD PTR [rbp-0xd8]
  7b1cc8:	4e 8d 2c 22          	lea    r13,[rdx+r12*1]
  7b1ccc:	c4 c1 7b 10 6d 00    	vmovsd xmm5,QWORD PTR [r13+0x0]
  7b1cd2:	c5 f9 10 54 38 08    	vmovupd xmm2,XMMWORD PTR [rax+rdi*1+0x8]
  7b1cd8:	c4 81 79 10 5c c1 08 	vmovupd xmm3,XMMWORD PTR [r9+r8*8+0x8]
  7b1cdf:	c5 69 5c 14 38       	vsubpd xmm10,xmm2,XMMWORD PTR [rax+rdi*1]
  7b1ce4:	c4 01 61 5c 24 c3    	vsubpd xmm12,xmm3,XMMWORD PTR [r11+r8*8]
  7b1cea:	c4 81 51 16 74 3d 00 	vmovhpd xmm6,xmm5,QWORD PTR [r13+r15*1+0x0]
  7b1cf1:	4f 8d 24 7c          	lea    r12,[r12+r15*2]
  7b1cf5:	c5 71 59 c6          	vmulpd xmm8,xmm1,xmm6
  7b1cf9:	4c 8b bd 48 ff ff ff 	mov    r15,QWORD PTR [rbp-0xb8]
  7b1d00:	4e 8d 2c 11          	lea    r13,[rcx+r10*1]
  7b1d04:	c4 c1 7b 10 7d 00    	vmovsd xmm7,QWORD PTR [r13+0x0]
  7b1d0a:	49 83 c0 02          	add    r8,0x2
  7b1d0e:	c5 fb 10 26          	vmovsd xmm4,QWORD PTR [rsi]
  7b1d12:	48 83 c0 10          	add    rax,0x10
  7b1d16:	c4 01 41 16 4c 3d 00 	vmovhpd xmm9,xmm7,QWORD PTR [r13+r15*1+0x0]
  7b1d1d:	4f 8d 14 7a          	lea    r10,[r10+r15*2]
  7b1d21:	c4 41 39 59 d9       	vmulpd xmm11,xmm8,xmm9
  7b1d26:	c4 41 21 59 ea       	vmulpd xmm13,xmm11,xmm10
  7b1d2b:	c4 41 21 59 f4       	vmulpd xmm14,xmm11,xmm12
  7b1d30:	c4 c1 11 58 d6       	vaddpd xmm2,xmm13,xmm14
  7b1d35:	c4 21 59 16 3c 36    	vmovhpd xmm15,xmm4,QWORD PTR [rsi+r14*1]
  7b1d3b:	c5 81 5c da          	vsubpd xmm3,xmm15,xmm2
  7b1d3f:	c5 fb 11 1e          	vmovsd QWORD PTR [rsi],xmm3
  7b1d43:	c4 c1 79 17 1c 36    	vmovhpd QWORD PTR [r14+rsi*1],xmm3
  7b1d49:	4a 8d 34 76          	lea    rsi,[rsi+r14*2]
  7b1d4d:	4c 3b 85 e8 fe ff ff 	cmp    r8,QWORD PTR [rbp-0x118]
  7b1d54:	0f 82 67 ff ff ff    	jb     7b1cc1 <t3dmix_mod_mp_t3dmix4_tile_+0x4bc1>
  7b1d5a:	4c 8b ad 98 fb ff ff 	mov    r13,QWORD PTR [rbp-0x468]
  7b1d61:	48 8b 85 a0 fb ff ff 	mov    rax,QWORD PTR [rbp-0x460]
  7b1d68:	48 8b b5 a8 fb ff ff 	mov    rsi,QWORD PTR [rbp-0x458]
  7b1d6f:	4d 89 f1             	mov    r9,r14
  7b1d72:	4c 8b a5 48 ff ff ff 	mov    r12,QWORD PTR [rbp-0xb8]
  7b1d79:	4c 8b 85 28 ff ff ff 	mov    r8,QWORD PTR [rbp-0xd8]
  7b1d80:	4d 0f af cd          	imul   r9,r13
  7b1d84:	4d 0f af e5          	imul   r12,r13
  7b1d88:	4d 0f af c5          	imul   r8,r13
  7b1d8c:	4c 3b ad a8 fe ff ff 	cmp    r13,QWORD PTR [rbp-0x158]
  7b1d93:	0f 83 ac 00 00 00    	jae    7b1e45 <t3dmix_mod_mp_t3dmix4_tile_+0x4d45>
  7b1d99:	48 8b bd 38 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x4c8]
  7b1da0:	4c 03 c8             	add    r9,rax
  7b1da3:	4c 8b 95 40 fb ff ff 	mov    r10,QWORD PTR [rbp-0x4c0]
  7b1daa:	4c 8b 9d d0 fc ff ff 	mov    r11,QWORD PTR [rbp-0x330]
  7b1db1:	4c 8b bd 00 fd ff ff 	mov    r15,QWORD PTR [rbp-0x300]
  7b1db8:	48 03 fe             	add    rdi,rsi
  7b1dbb:	48 89 85 a0 fb ff ff 	mov    QWORD PTR [rbp-0x460],rax
  7b1dc2:	4c 03 d6             	add    r10,rsi
  7b1dc5:	48 89 b5 a8 fb ff ff 	mov    QWORD PTR [rbp-0x458],rsi
  7b1dcc:	4c 03 de             	add    r11,rsi
  7b1dcf:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  7b1dd6:	4c 03 fe             	add    r15,rsi
  7b1dd9:	48 8b b5 28 ff ff ff 	mov    rsi,QWORD PTR [rbp-0xd8]
  7b1de0:	c4 c1 7b 59 0c 10    	vmulsd xmm1,xmm0,QWORD PTR [r8+rdx*1]
  7b1de6:	4c 03 c6             	add    r8,rsi
  7b1de9:	c4 a1 7b 10 54 ef 08 	vmovsd xmm2,QWORD PTR [rdi+r13*8+0x8]
  7b1df0:	c4 81 7b 10 64 ea 08 	vmovsd xmm4,QWORD PTR [r10+r13*8+0x8]
  7b1df7:	c4 c1 73 59 2c 0c    	vmulsd xmm5,xmm1,QWORD PTR [r12+rcx*1]
  7b1dfd:	4c 03 e0             	add    r12,rax
  7b1e00:	c4 81 6b 5c 1c ef    	vsubsd xmm3,xmm2,QWORD PTR [r15+r13*8]
  7b1e06:	c4 81 5b 5c 34 eb    	vsubsd xmm6,xmm4,QWORD PTR [r11+r13*8]
  7b1e0c:	c5 d3 59 fb          	vmulsd xmm7,xmm5,xmm3
  7b1e10:	c5 53 59 c6          	vmulsd xmm8,xmm5,xmm6
  7b1e14:	c4 41 7b 10 09       	vmovsd xmm9,QWORD PTR [r9]
  7b1e19:	49 ff c5             	inc    r13
  7b1e1c:	c4 41 43 58 d0       	vaddsd xmm10,xmm7,xmm8
  7b1e21:	c4 41 33 5c da       	vsubsd xmm11,xmm9,xmm10
  7b1e26:	c4 41 7b 11 19       	vmovsd QWORD PTR [r9],xmm11
  7b1e2b:	4d 03 ce             	add    r9,r14
  7b1e2e:	4c 3b ad a8 fe ff ff 	cmp    r13,QWORD PTR [rbp-0x158]
  7b1e35:	72 a9                	jb     7b1de0 <t3dmix_mod_mp_t3dmix4_tile_+0x4ce0>
  7b1e37:	48 8b 85 a0 fb ff ff 	mov    rax,QWORD PTR [rbp-0x460]
  7b1e3e:	48 8b b5 a8 fb ff ff 	mov    rsi,QWORD PTR [rbp-0x458]
  7b1e45:	48 8b bd 68 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x298]
  7b1e4c:	48 ff c7             	inc    rdi
  7b1e4f:	48 03 b5 58 fe ff ff 	add    rsi,QWORD PTR [rbp-0x1a8]
  7b1e56:	48 03 95 f0 fd ff ff 	add    rdx,QWORD PTR [rbp-0x210]
  7b1e5d:	48 03 8d 00 fe ff ff 	add    rcx,QWORD PTR [rbp-0x200]
  7b1e64:	48 03 85 18 fe ff ff 	add    rax,QWORD PTR [rbp-0x1e8]
  7b1e6b:	48 89 bd 68 fd ff ff 	mov    QWORD PTR [rbp-0x298],rdi
  7b1e72:	48 3b bd 98 fd ff ff 	cmp    rdi,QWORD PTR [rbp-0x268]
  7b1e79:	0f 82 70 fd ff ff    	jb     7b1bef <t3dmix_mod_mp_t3dmix4_tile_+0x4aef>
  7b1e7f:	4c 8b b5 f8 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x708]
  7b1e86:	4c 8b a5 28 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6d8]
  7b1e8d:	4c 8b ad f0 f8 ff ff 	mov    r13,QWORD PTR [rbp-0x710]
  7b1e94:	49 ff c4             	inc    r12
  7b1e97:	4c 3b a5 80 fa ff ff 	cmp    r12,QWORD PTR [rbp-0x580]
  7b1e9e:	0f 82 0a d3 ff ff    	jb     7af1ae <t3dmix_mod_mp_t3dmix4_tile_+0x20ae>
  7b1ea4:	48 8b 8d 48 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x7b8]
  7b1eab:	48 8b b5 50 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x7b0]
  7b1eb2:	4c 8b ad b8 fb ff ff 	mov    r13,QWORD PTR [rbp-0x448]
  7b1eb9:	48 ff c1             	inc    rcx
  7b1ebc:	48 3b 8d 60 f8 ff ff 	cmp    rcx,QWORD PTR [rbp-0x7a0]
  7b1ec3:	0f 82 bb be ff ff    	jb     7add84 <t3dmix_mod_mp_t3dmix4_tile_+0xc84>
  7b1ec9:	bf 84 72 ab 00       	mov    edi,0xab7284
  7b1ece:	8b b5 58 f8 ff ff    	mov    esi,DWORD PTR [rbp-0x7a8]
  7b1ed4:	c5 f8 77             	vzeroupper 
  7b1ed7:	e8 c4 bd c5 ff       	call   40dca0 <__kmpc_for_static_fini@plt>
  7b1edc:	48 8b 95 48 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x8b8]
  7b1ee3:	48 8b 85 40 f7 ff ff 	mov    rax,QWORD PTR [rbp-0x8c0]
  7b1eea:	48 83 c0 1f          	add    rax,0x1f
  7b1eee:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7b1ef2:	48 03 e0             	add    rsp,rax
  7b1ef5:	48 8b 95 30 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x8d0]
  7b1efc:	48 8b 85 38 f7 ff ff 	mov    rax,QWORD PTR [rbp-0x8c8]
  7b1f03:	48 83 c0 1f          	add    rax,0x1f
  7b1f07:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7b1f0b:	48 03 e0             	add    rsp,rax
  7b1f0e:	48 8b 95 20 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x8e0]
  7b1f15:	48 8b 85 28 f7 ff ff 	mov    rax,QWORD PTR [rbp-0x8d8]
  7b1f1c:	48 83 c0 1f          	add    rax,0x1f
  7b1f20:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7b1f24:	48 03 e0             	add    rsp,rax
  7b1f27:	4c 8b bd 50 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x8b0]
  7b1f2e:	4c 8b b5 58 f7 ff ff 	mov    r14,QWORD PTR [rbp-0x8a8]
  7b1f35:	4c 8b ad 60 f7 ff ff 	mov    r13,QWORD PTR [rbp-0x8a0]
  7b1f3c:	4c 8b a5 68 f7 ff ff 	mov    r12,QWORD PTR [rbp-0x898]
  7b1f43:	c9                   	leave  
  7b1f44:	48 89 dc             	mov    rsp,rbx
  7b1f47:	5b                   	pop    rbx
  7b1f48:	c3                   	ret    
  7b1f49:	33 c9                	xor    ecx,ecx
  7b1f4b:	e9 58 d4 ff ff       	jmp    7af3a8 <t3dmix_mod_mp_t3dmix4_tile_+0x22a8>
  7b1f50:	33 c9                	xor    ecx,ecx
  7b1f52:	e9 20 db ff ff       	jmp    7afa77 <t3dmix_mod_mp_t3dmix4_tile_+0x2977>
  7b1f57:	33 c0                	xor    eax,eax
  7b1f59:	e9 8d e1 ff ff       	jmp    7b00eb <t3dmix_mod_mp_t3dmix4_tile_+0x2feb>
  7b1f5e:	48 83 bd 58 ff ff ff 	cmp    QWORD PTR [rbp-0xa8],0x8
  7b1f65:	08 
  7b1f66:	7c 60                	jl     7b1fc8 <t3dmix_mod_mp_t3dmix4_tile_+0x4ec8>
  7b1f68:	48 8b 95 70 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x890]
  7b1f6f:	33 c0                	xor    eax,eax
  7b1f71:	48 8b 8d 28 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x7d8]
  7b1f78:	48 89 d7             	mov    rdi,rdx
  7b1f7b:	48 8b b5 f0 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x810]
  7b1f82:	c5 fd 57 c0          	vxorpd ymm0,ymm0,ymm0
  7b1f86:	c5 fd 11 04 c6       	vmovupd YMMWORD PTR [rsi+rax*8],ymm0
  7b1f8b:	c5 fd 11 44 c1 20    	vmovupd YMMWORD PTR [rcx+rax*8+0x20],ymm0
  7b1f91:	48 83 c0 08          	add    rax,0x8
  7b1f95:	48 3b c7             	cmp    rax,rdi
  7b1f98:	72 ec                	jb     7b1f86 <t3dmix_mod_mp_t3dmix4_tile_+0x4e86>
  7b1f9a:	48 3b 95 58 ff ff ff 	cmp    rdx,QWORD PTR [rbp-0xa8]
  7b1fa1:	0f 83 1a e9 ff ff    	jae    7b08c1 <t3dmix_mod_mp_t3dmix4_tile_+0x37c1>
  7b1fa7:	48 8b 85 f0 f7 ff ff 	mov    rax,QWORD PTR [rbp-0x810]
  7b1fae:	33 f6                	xor    esi,esi
  7b1fb0:	48 8b 8d 58 ff ff ff 	mov    rcx,QWORD PTR [rbp-0xa8]
  7b1fb7:	48 89 34 d0          	mov    QWORD PTR [rax+rdx*8],rsi
  7b1fbb:	48 ff c2             	inc    rdx
  7b1fbe:	48 3b d1             	cmp    rdx,rcx
  7b1fc1:	72 f4                	jb     7b1fb7 <t3dmix_mod_mp_t3dmix4_tile_+0x4eb7>
  7b1fc3:	e9 f9 e8 ff ff       	jmp    7b08c1 <t3dmix_mod_mp_t3dmix4_tile_+0x37c1>
  7b1fc8:	33 d2                	xor    edx,edx
  7b1fca:	eb ce                	jmp    7b1f9a <t3dmix_mod_mp_t3dmix4_tile_+0x4e9a>
  7b1fcc:	48 83 bd 58 ff ff ff 	cmp    QWORD PTR [rbp-0xa8],0x8
  7b1fd3:	08 
  7b1fd4:	7c 60                	jl     7b2036 <t3dmix_mod_mp_t3dmix4_tile_+0x4f36>
  7b1fd6:	48 8b 95 70 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x890]
  7b1fdd:	33 c0                	xor    eax,eax
  7b1fdf:	48 8b 8d f8 f7 ff ff 	mov    rcx,QWORD PTR [rbp-0x808]
  7b1fe6:	48 89 d7             	mov    rdi,rdx
  7b1fe9:	48 8b b5 d8 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x828]
  7b1ff0:	c5 fd 57 c0          	vxorpd ymm0,ymm0,ymm0
  7b1ff4:	c5 fd 11 04 c1       	vmovupd YMMWORD PTR [rcx+rax*8],ymm0
  7b1ff9:	c5 fd 11 44 c6 20    	vmovupd YMMWORD PTR [rsi+rax*8+0x20],ymm0
  7b1fff:	48 83 c0 08          	add    rax,0x8
  7b2003:	48 3b c7             	cmp    rax,rdi
  7b2006:	72 ec                	jb     7b1ff4 <t3dmix_mod_mp_t3dmix4_tile_+0x4ef4>
  7b2008:	48 3b 95 58 ff ff ff 	cmp    rdx,QWORD PTR [rbp-0xa8]
  7b200f:	0f 83 ae e9 ff ff    	jae    7b09c3 <t3dmix_mod_mp_t3dmix4_tile_+0x38c3>
  7b2015:	48 8b 85 f8 f7 ff ff 	mov    rax,QWORD PTR [rbp-0x808]
  7b201c:	33 f6                	xor    esi,esi
  7b201e:	48 8b 8d 58 ff ff ff 	mov    rcx,QWORD PTR [rbp-0xa8]
  7b2025:	48 89 34 d0          	mov    QWORD PTR [rax+rdx*8],rsi
  7b2029:	48 ff c2             	inc    rdx
  7b202c:	48 3b d1             	cmp    rdx,rcx
  7b202f:	72 f4                	jb     7b2025 <t3dmix_mod_mp_t3dmix4_tile_+0x4f25>
  7b2031:	e9 8d e9 ff ff       	jmp    7b09c3 <t3dmix_mod_mp_t3dmix4_tile_+0x38c3>
  7b2036:	33 d2                	xor    edx,edx
  7b2038:	eb ce                	jmp    7b2008 <t3dmix_mod_mp_t3dmix4_tile_+0x4f08>
  7b203a:	33 c0                	xor    eax,eax
  7b203c:	e9 4e eb ff ff       	jmp    7b0b8f <t3dmix_mod_mp_t3dmix4_tile_+0x3a8f>
  7b2041:	33 c0                	xor    eax,eax
  7b2043:	e9 36 f3 ff ff       	jmp    7b137e <t3dmix_mod_mp_t3dmix4_tile_+0x427e>
  7b2048:	33 c0                	xor    eax,eax
  7b204a:	e9 97 fa ff ff       	jmp    7b1ae6 <t3dmix_mod_mp_t3dmix4_tile_+0x49e6>
  7b204f:	45 33 ed             	xor    r13d,r13d
  7b2052:	e9 18 fd ff ff       	jmp    7b1d6f <t3dmix_mod_mp_t3dmix4_tile_+0x4c6f>
  7b2057:	33 c0                	xor    eax,eax
  7b2059:	e9 90 f7 ff ff       	jmp    7b17ee <t3dmix_mod_mp_t3dmix4_tile_+0x46ee>
  7b205e:	33 c0                	xor    eax,eax
  7b2060:	e9 99 ef ff ff       	jmp    7b0ffe <t3dmix_mod_mp_t3dmix4_tile_+0x3efe>
  7b2065:	48 83 bd 58 ff ff ff 	cmp    QWORD PTR [rbp-0xa8],0x4
  7b206c:	04 
  7b206d:	7c 61                	jl     7b20d0 <t3dmix_mod_mp_t3dmix4_tile_+0x4fd0>
  7b206f:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  7b2073:	33 d2                	xor    edx,edx
  7b2075:	48 8b 8d 00 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x800]
  7b207c:	48 89 c7             	mov    rdi,rax
  7b207f:	48 8b b5 f8 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x808]
  7b2086:	c5 fd 10 04 d1       	vmovupd ymm0,YMMWORD PTR [rcx+rdx*8]
  7b208b:	c5 fd 11 04 d6       	vmovupd YMMWORD PTR [rsi+rdx*8],ymm0
  7b2090:	48 83 c2 04          	add    rdx,0x4
  7b2094:	48 3b d7             	cmp    rdx,rdi
  7b2097:	72 ed                	jb     7b2086 <t3dmix_mod_mp_t3dmix4_tile_+0x4f86>
  7b2099:	48 3b 85 58 ff ff ff 	cmp    rax,QWORD PTR [rbp-0xa8]
  7b20a0:	0f 83 1d e9 ff ff    	jae    7b09c3 <t3dmix_mod_mp_t3dmix4_tile_+0x38c3>
  7b20a6:	48 8b 8d 00 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x800]
  7b20ad:	48 8b b5 f8 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x808]
  7b20b4:	48 8b bd 58 ff ff ff 	mov    rdi,QWORD PTR [rbp-0xa8]
  7b20bb:	48 8b 14 c1          	mov    rdx,QWORD PTR [rcx+rax*8]
  7b20bf:	48 89 14 c6          	mov    QWORD PTR [rsi+rax*8],rdx
  7b20c3:	48 ff c0             	inc    rax
  7b20c6:	48 3b c7             	cmp    rax,rdi
  7b20c9:	72 f0                	jb     7b20bb <t3dmix_mod_mp_t3dmix4_tile_+0x4fbb>
  7b20cb:	e9 f3 e8 ff ff       	jmp    7b09c3 <t3dmix_mod_mp_t3dmix4_tile_+0x38c3>
  7b20d0:	33 c0                	xor    eax,eax
  7b20d2:	eb c5                	jmp    7b2099 <t3dmix_mod_mp_t3dmix4_tile_+0x4f99>
  7b20d4:	48 83 bd 58 ff ff ff 	cmp    QWORD PTR [rbp-0xa8],0x4
  7b20db:	04 
  7b20dc:	7c 61                	jl     7b213f <t3dmix_mod_mp_t3dmix4_tile_+0x503f>
  7b20de:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  7b20e2:	33 d2                	xor    edx,edx
  7b20e4:	48 8b 8d f0 f7 ff ff 	mov    rcx,QWORD PTR [rbp-0x810]
  7b20eb:	48 89 c7             	mov    rdi,rax
  7b20ee:	48 8b b5 10 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x7f0]
  7b20f5:	c5 fd 10 04 d6       	vmovupd ymm0,YMMWORD PTR [rsi+rdx*8]
  7b20fa:	c5 fd 11 04 d1       	vmovupd YMMWORD PTR [rcx+rdx*8],ymm0
  7b20ff:	48 83 c2 04          	add    rdx,0x4
  7b2103:	48 3b d7             	cmp    rdx,rdi
  7b2106:	72 ed                	jb     7b20f5 <t3dmix_mod_mp_t3dmix4_tile_+0x4ff5>
  7b2108:	48 3b 85 58 ff ff ff 	cmp    rax,QWORD PTR [rbp-0xa8]
  7b210f:	0f 83 ac e7 ff ff    	jae    7b08c1 <t3dmix_mod_mp_t3dmix4_tile_+0x37c1>
  7b2115:	48 8b 8d f0 f7 ff ff 	mov    rcx,QWORD PTR [rbp-0x810]
  7b211c:	48 8b b5 10 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x7f0]
  7b2123:	48 8b bd 58 ff ff ff 	mov    rdi,QWORD PTR [rbp-0xa8]
  7b212a:	48 8b 14 c6          	mov    rdx,QWORD PTR [rsi+rax*8]
  7b212e:	48 89 14 c1          	mov    QWORD PTR [rcx+rax*8],rdx
  7b2132:	48 ff c0             	inc    rax
  7b2135:	48 3b c7             	cmp    rax,rdi
  7b2138:	72 f0                	jb     7b212a <t3dmix_mod_mp_t3dmix4_tile_+0x502a>
  7b213a:	e9 82 e7 ff ff       	jmp    7b08c1 <t3dmix_mod_mp_t3dmix4_tile_+0x37c1>
  7b213f:	33 c0                	xor    eax,eax
  7b2141:	eb c5                	jmp    7b2108 <t3dmix_mod_mp_t3dmix4_tile_+0x5008>
  7b2143:	33 ff                	xor    edi,edi
  7b2145:	e9 08 e2 ff ff       	jmp    7b0352 <t3dmix_mod_mp_t3dmix4_tile_+0x3252>
  7b214a:	33 c0                	xor    eax,eax
  7b214c:	e9 96 dc ff ff       	jmp    7afde7 <t3dmix_mod_mp_t3dmix4_tile_+0x2ce7>
  7b2151:	33 c0                	xor    eax,eax
  7b2153:	e9 89 d5 ff ff       	jmp    7af6e1 <t3dmix_mod_mp_t3dmix4_tile_+0x25e1>
  7b2158:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  7b215f:	00 
