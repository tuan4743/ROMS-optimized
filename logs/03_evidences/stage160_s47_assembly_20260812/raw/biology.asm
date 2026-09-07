
/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s47_quant/oceanM.s47_SELQUANT_best_20260810.bak:     file format elf64-x86-64


Disassembly of section text.unlikely:

00000000007cc010 <biology_mod_mp_biology_tile_>:
  7cc010:	53                   	push   rbx
  7cc011:	48 89 e3             	mov    rbx,rsp
  7cc014:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
  7cc018:	55                   	push   rbp
  7cc019:	55                   	push   rbp
  7cc01a:	48 8b 6b 08          	mov    rbp,QWORD PTR [rbx+0x8]
  7cc01e:	48 89 6c 24 08       	mov    QWORD PTR [rsp+0x8],rbp
  7cc023:	48 89 e5             	mov    rbp,rsp
  7cc026:	48 81 ec 10 29 00 00 	sub    rsp,0x2910
  7cc02d:	4c 89 a5 70 e2 ff ff 	mov    QWORD PTR [rbp-0x1d90],r12
  7cc034:	48 89 8d 78 e2 ff ff 	mov    QWORD PTR [rbp-0x1d88],rcx
  7cc03b:	4c 89 ad 68 e2 ff ff 	mov    QWORD PTR [rbp-0x1d98],r13
  7cc042:	48 63 0f             	movsxd rcx,DWORD PTR [rdi]
  7cc045:	4c 8b 25 74 e6 2e 00 	mov    r12,QWORD PTR [rip+0x2ee674]        # aba6c0 <mod_param_mp_n_>
  7cc04c:	4c 8b 2d cd e6 2e 00 	mov    r13,QWORD PTR [rip+0x2ee6cd]        # aba720 <mod_param_mp_nt_>
  7cc053:	4c 89 bd 28 e2 ff ff 	mov    QWORD PTR [rbp-0x1dd8],r15
  7cc05a:	4c 8b 7b 28          	mov    r15,QWORD PTR [rbx+0x28]
  7cc05e:	48 89 b5 98 e2 ff ff 	mov    QWORD PTR [rbp-0x1d68],rsi
  7cc065:	48 8b 73 20          	mov    rsi,QWORD PTR [rbx+0x20]
  7cc069:	4d 63 64 8c fc       	movsxd r12,DWORD PTR [r12+rcx*4-0x4]
  7cc06e:	49 63 44 8d fc       	movsxd rax,DWORD PTR [r13+rcx*4-0x4]
  7cc073:	45 33 ed             	xor    r13d,r13d
  7cc076:	4d 85 e4             	test   r12,r12
  7cc079:	4d 63 3f             	movsxd r15,DWORD PTR [r15]
  7cc07c:	4c 89 85 80 e2 ff ff 	mov    QWORD PTR [rbp-0x1d80],r8
  7cc083:	45 8b 18             	mov    r11d,DWORD PTR [r8]
  7cc086:	4d 89 e8             	mov    r8,r13
  7cc089:	48 63 36             	movsxd rsi,DWORD PTR [rsi]
  7cc08c:	4d 0f 4f c4          	cmovg  r8,r12
  7cc090:	44 89 bd bc e2 ff ff 	mov    DWORD PTR [rbp-0x1d44],r15d
  7cc097:	4c 2b fe             	sub    r15,rsi
  7cc09a:	48 89 8d a0 e2 ff ff 	mov    QWORD PTR [rbp-0x1d60],rcx
  7cc0a1:	4c 89 f9             	mov    rcx,r15
  7cc0a4:	48 ff c1             	inc    rcx
  7cc0a7:	48 89 85 48 d9 ff ff 	mov    QWORD PTR [rbp-0x26b8],rax
  7cc0ae:	89 85 c4 e2 ff ff    	mov    DWORD PTR [rbp-0x1d3c],eax
  7cc0b4:	49 0f 4e cd          	cmovle rcx,r13
  7cc0b8:	89 85 cc e2 ff ff    	mov    DWORD PTR [rbp-0x1d34],eax
  7cc0be:	4a 8d 04 c5 00 00 00 	lea    rax,[r8*8+0x0]
  7cc0c5:	00 
  7cc0c6:	48 89 85 f0 d6 ff ff 	mov    QWORD PTR [rbp-0x2910],rax
  7cc0cd:	48 0f af c1          	imul   rax,rcx
  7cc0d1:	44 8b 12             	mov    r10d,DWORD PTR [rdx]
  7cc0d4:	48 89 95 e8 da ff ff 	mov    QWORD PTR [rbp-0x2518],rdx
  7cc0db:	49 8d 54 24 01       	lea    rdx,[r12+0x1]
  7cc0e0:	4c 89 b5 60 e2 ff ff 	mov    QWORD PTR [rbp-0x1da0],r14
  7cc0e7:	48 89 bd e0 da ff ff 	mov    QWORD PTR [rbp-0x2520],rdi
  7cc0ee:	4c 89 8d 88 e2 ff ff 	mov    QWORD PTR [rbp-0x1d78],r9
  7cc0f5:	44 89 95 b0 e2 ff ff 	mov    DWORD PTR [rbp-0x1d50],r10d
  7cc0fc:	44 89 9d b4 e2 ff ff 	mov    DWORD PTR [rbp-0x1d4c],r11d
  7cc103:	89 b5 b8 e2 ff ff    	mov    DWORD PTR [rbp-0x1d48],esi
  7cc109:	44 89 a5 c0 e2 ff ff 	mov    DWORD PTR [rbp-0x1d40],r12d
  7cc110:	44 89 a5 c8 e2 ff ff 	mov    DWORD PTR [rbp-0x1d38],r12d
  7cc117:	44 89 a5 d0 e2 ff ff 	mov    DWORD PTR [rbp-0x1d30],r12d
  7cc11e:	44 89 a5 d4 e2 ff ff 	mov    DWORD PTR [rbp-0x1d2c],r12d
  7cc125:	44 89 a5 d8 e2 ff ff 	mov    DWORD PTR [rbp-0x1d28],r12d
  7cc12c:	44 89 a5 dc e2 ff ff 	mov    DWORD PTR [rbp-0x1d24],r12d
  7cc133:	48 89 95 d0 d8 ff ff 	mov    QWORD PTR [rbp-0x2730],rdx
  7cc13a:	89 95 e0 e2 ff ff    	mov    DWORD PTR [rbp-0x1d20],edx
  7cc140:	44 89 a5 e4 e2 ff ff 	mov    DWORD PTR [rbp-0x1d1c],r12d
  7cc147:	44 89 a5 e8 e2 ff ff 	mov    DWORD PTR [rbp-0x1d18],r12d
  7cc14e:	44 89 a5 ec e2 ff ff 	mov    DWORD PTR [rbp-0x1d14],r12d
  7cc155:	44 89 a5 f0 e2 ff ff 	mov    DWORD PTR [rbp-0x1d10],r12d
  7cc15c:	44 89 a5 f4 e2 ff ff 	mov    DWORD PTR [rbp-0x1d0c],r12d
  7cc163:	44 89 a5 f8 e2 ff ff 	mov    DWORD PTR [rbp-0x1d08],r12d
  7cc16a:	48 89 a5 90 e2 ff ff 	mov    QWORD PTR [rbp-0x1d70],rsp
  7cc171:	4c 89 85 d8 d8 ff ff 	mov    QWORD PTR [rbp-0x2728],r8
  7cc178:	48 89 85 e8 d8 ff ff 	mov    QWORD PTR [rbp-0x2718],rax
  7cc17f:	48 83 c0 1f          	add    rax,0x1f
  7cc183:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cc187:	48 2b e0             	sub    rsp,rax
  7cc18a:	48 89 e0             	mov    rax,rsp
  7cc18d:	4c 8d 9d c0 d9 ff ff 	lea    r11,[rbp-0x2640]
  7cc194:	49 89 03             	mov    QWORD PTR [r11],rax
  7cc197:	4c 8d 14 cd 00 00 00 	lea    r10,[rcx*8+0x0]
  7cc19e:	00 
  7cc19f:	4c 89 c0             	mov    rax,r8
  7cc1a2:	4d 89 e1             	mov    r9,r12
  7cc1a5:	49 0f af c2          	imul   rax,r10
  7cc1a9:	49 c1 f9 3f          	sar    r9,0x3f
  7cc1ad:	ba 08 00 00 00       	mov    edx,0x8
  7cc1b2:	c4 42 b0 f2 cc       	andn   r9,r9,r12
  7cc1b7:	41 be 02 00 00 00    	mov    r14d,0x2
  7cc1bd:	45 33 c0             	xor    r8d,r8d
  7cc1c0:	49 ff c0             	inc    r8
  7cc1c3:	4a 8d 3c fd 08 00 00 	lea    rdi,[r15*8+0x8]
  7cc1ca:	00 
  7cc1cb:	4d 89 6b 10          	mov    QWORD PTR [r11+0x10],r13
  7cc1cf:	49 89 73 40          	mov    QWORD PTR [r11+0x40],rsi
  7cc1d3:	49 89 4b 30          	mov    QWORD PTR [r11+0x30],rcx
  7cc1d7:	49 89 53 08          	mov    QWORD PTR [r11+0x8],rdx
  7cc1db:	49 89 53 38          	mov    QWORD PTR [r11+0x38],rdx
  7cc1df:	4d 89 73 20          	mov    QWORD PTR [r11+0x20],r14
  7cc1e3:	49 89 7b 50          	mov    QWORD PTR [r11+0x50],rdi
  7cc1e7:	4d 89 43 58          	mov    QWORD PTR [r11+0x58],r8
  7cc1eb:	4d 89 43 18          	mov    QWORD PTR [r11+0x18],r8
  7cc1ef:	4d 89 4b 48          	mov    QWORD PTR [r11+0x48],r9
  7cc1f3:	4c 89 95 50 db ff ff 	mov    QWORD PTR [rbp-0x24b0],r10
  7cc1fa:	48 89 85 f8 d6 ff ff 	mov    QWORD PTR [rbp-0x2908],rax
  7cc201:	48 83 c0 1f          	add    rax,0x1f
  7cc205:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cc209:	48 2b e0             	sub    rsp,rax
  7cc20c:	48 89 e0             	mov    rax,rsp
  7cc20f:	4c 8d 95 20 da ff ff 	lea    r10,[rbp-0x25e0]
  7cc216:	49 89 02             	mov    QWORD PTR [r10],rax
  7cc219:	48 8b 85 f8 d6 ff ff 	mov    rax,QWORD PTR [rbp-0x2908]
  7cc220:	49 89 52 08          	mov    QWORD PTR [r10+0x8],rdx
  7cc224:	4d 89 72 20          	mov    QWORD PTR [r10+0x20],r14
  7cc228:	4d 89 6a 10          	mov    QWORD PTR [r10+0x10],r13
  7cc22c:	49 89 52 38          	mov    QWORD PTR [r10+0x38],rdx
  7cc230:	49 89 72 40          	mov    QWORD PTR [r10+0x40],rsi
  7cc234:	49 89 4a 30          	mov    QWORD PTR [r10+0x30],rcx
  7cc238:	49 89 7a 50          	mov    QWORD PTR [r10+0x50],rdi
  7cc23c:	4d 89 42 58          	mov    QWORD PTR [r10+0x58],r8
  7cc240:	4d 89 4a 48          	mov    QWORD PTR [r10+0x48],r9
  7cc244:	4d 89 42 18          	mov    QWORD PTR [r10+0x18],r8
  7cc248:	48 83 c0 1f          	add    rax,0x1f
  7cc24c:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cc250:	48 2b e0             	sub    rsp,rax
  7cc253:	48 89 e0             	mov    rax,rsp
  7cc256:	4c 8d 95 80 da ff ff 	lea    r10,[rbp-0x2580]
  7cc25d:	49 89 02             	mov    QWORD PTR [r10],rax
  7cc260:	48 8b 85 f8 d6 ff ff 	mov    rax,QWORD PTR [rbp-0x2908]
  7cc267:	49 89 52 08          	mov    QWORD PTR [r10+0x8],rdx
  7cc26b:	4d 89 72 20          	mov    QWORD PTR [r10+0x20],r14
  7cc26f:	4d 89 6a 10          	mov    QWORD PTR [r10+0x10],r13
  7cc273:	49 89 52 38          	mov    QWORD PTR [r10+0x38],rdx
  7cc277:	49 89 72 40          	mov    QWORD PTR [r10+0x40],rsi
  7cc27b:	49 89 4a 30          	mov    QWORD PTR [r10+0x30],rcx
  7cc27f:	49 89 7a 50          	mov    QWORD PTR [r10+0x50],rdi
  7cc283:	4d 89 42 58          	mov    QWORD PTR [r10+0x58],r8
  7cc287:	4d 89 4a 48          	mov    QWORD PTR [r10+0x48],r9
  7cc28b:	4d 89 42 18          	mov    QWORD PTR [r10+0x18],r8
  7cc28f:	48 83 c0 1f          	add    rax,0x1f
  7cc293:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cc297:	48 2b e0             	sub    rsp,rax
  7cc29a:	48 89 e0             	mov    rax,rsp
  7cc29d:	4c 8d 95 f0 da ff ff 	lea    r10,[rbp-0x2510]
  7cc2a4:	49 89 02             	mov    QWORD PTR [r10],rax
  7cc2a7:	48 8b 85 f8 d6 ff ff 	mov    rax,QWORD PTR [rbp-0x2908]
  7cc2ae:	49 89 52 08          	mov    QWORD PTR [r10+0x8],rdx
  7cc2b2:	4d 89 72 20          	mov    QWORD PTR [r10+0x20],r14
  7cc2b6:	4d 89 6a 10          	mov    QWORD PTR [r10+0x10],r13
  7cc2ba:	49 89 52 38          	mov    QWORD PTR [r10+0x38],rdx
  7cc2be:	49 89 72 40          	mov    QWORD PTR [r10+0x40],rsi
  7cc2c2:	49 89 4a 30          	mov    QWORD PTR [r10+0x30],rcx
  7cc2c6:	49 89 7a 50          	mov    QWORD PTR [r10+0x50],rdi
  7cc2ca:	4d 89 42 58          	mov    QWORD PTR [r10+0x58],r8
  7cc2ce:	4d 89 4a 48          	mov    QWORD PTR [r10+0x48],r9
  7cc2d2:	4d 89 42 18          	mov    QWORD PTR [r10+0x18],r8
  7cc2d6:	48 83 c0 1f          	add    rax,0x1f
  7cc2da:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cc2de:	48 2b e0             	sub    rsp,rax
  7cc2e1:	48 89 e0             	mov    rax,rsp
  7cc2e4:	4c 8b 95 d0 d8 ff ff 	mov    r10,QWORD PTR [rbp-0x2730]
  7cc2eb:	4d 85 d2             	test   r10,r10
  7cc2ee:	4d 89 eb             	mov    r11,r13
  7cc2f1:	4d 0f 4f da          	cmovg  r11,r10
  7cc2f5:	4c 8d 95 68 db ff ff 	lea    r10,[rbp-0x2498]
  7cc2fc:	49 89 02             	mov    QWORD PTR [r10],rax
  7cc2ff:	48 8d 85 70 db ff ff 	lea    rax,[rbp-0x2490]
  7cc306:	48 89 10             	mov    QWORD PTR [rax],rdx
  7cc309:	4c 89 70 18          	mov    QWORD PTR [rax+0x18],r14
  7cc30d:	4c 89 68 08          	mov    QWORD PTR [rax+0x8],r13
  7cc311:	4a 8d 04 dd 00 00 00 	lea    rax,[r11*8+0x0]
  7cc318:	00 
  7cc319:	48 0f af c1          	imul   rax,rcx
  7cc31d:	49 89 52 38          	mov    QWORD PTR [r10+0x38],rdx
  7cc321:	49 89 72 40          	mov    QWORD PTR [r10+0x40],rsi
  7cc325:	49 89 4a 30          	mov    QWORD PTR [r10+0x30],rcx
  7cc329:	49 89 7a 50          	mov    QWORD PTR [r10+0x50],rdi
  7cc32d:	4d 89 42 58          	mov    QWORD PTR [r10+0x58],r8
  7cc331:	4d 89 4a 48          	mov    QWORD PTR [r10+0x48],r9
  7cc335:	4d 89 42 18          	mov    QWORD PTR [r10+0x18],r8
  7cc339:	4c 89 9d e0 d8 ff ff 	mov    QWORD PTR [rbp-0x2720],r11
  7cc340:	48 83 c0 1f          	add    rax,0x1f
  7cc344:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cc348:	48 2b e0             	sub    rsp,rax
  7cc34b:	48 89 e0             	mov    rax,rsp
  7cc34e:	4c 8d 9d c8 db ff ff 	lea    r11,[rbp-0x2438]
  7cc355:	49 89 03             	mov    QWORD PTR [r11],rax
  7cc358:	48 8d 04 8d 00 00 00 	lea    rax,[rcx*4+0x0]
  7cc35f:	00 
  7cc360:	48 0f af 85 d8 d8 ff 	imul   rax,QWORD PTR [rbp-0x2728]
  7cc367:	ff 
  7cc368:	4c 8b 95 e0 d8 ff ff 	mov    r10,QWORD PTR [rbp-0x2720]
  7cc36f:	49 89 53 08          	mov    QWORD PTR [r11+0x8],rdx
  7cc373:	4d 89 73 20          	mov    QWORD PTR [r11+0x20],r14
  7cc377:	4d 89 6b 10          	mov    QWORD PTR [r11+0x10],r13
  7cc37b:	49 89 53 38          	mov    QWORD PTR [r11+0x38],rdx
  7cc37f:	49 89 73 40          	mov    QWORD PTR [r11+0x40],rsi
  7cc383:	49 89 4b 30          	mov    QWORD PTR [r11+0x30],rcx
  7cc387:	49 89 7b 50          	mov    QWORD PTR [r11+0x50],rdi
  7cc38b:	4d 89 6b 58          	mov    QWORD PTR [r11+0x58],r13
  7cc38f:	4d 89 53 48          	mov    QWORD PTR [r11+0x48],r10
  7cc393:	4d 89 43 18          	mov    QWORD PTR [r11+0x18],r8
  7cc397:	48 83 c0 1f          	add    rax,0x1f
  7cc39b:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cc39f:	48 2b e0             	sub    rsp,rax
  7cc3a2:	48 89 e0             	mov    rax,rsp
  7cc3a5:	48 89 85 28 dc ff ff 	mov    QWORD PTR [rbp-0x23d8],rax
  7cc3ac:	4e 8d 14 bd 04 00 00 	lea    r10,[r15*4+0x4]
  7cc3b3:	00 
  7cc3b4:	48 8b 85 f0 d6 ff ff 	mov    rax,QWORD PTR [rbp-0x2910]
  7cc3bb:	41 bb 04 00 00 00    	mov    r11d,0x4
  7cc3c1:	4c 8d bd 48 dc ff ff 	lea    r15,[rbp-0x23b8]
  7cc3c8:	4d 89 37             	mov    QWORD PTR [r15],r14
  7cc3cb:	4d 89 6f f0          	mov    QWORD PTR [r15-0x10],r13
  7cc3cf:	49 89 77 20          	mov    QWORD PTR [r15+0x20],rsi
  7cc3d3:	49 89 4f 10          	mov    QWORD PTR [r15+0x10],rcx
  7cc3d7:	4d 89 57 30          	mov    QWORD PTR [r15+0x30],r10
  7cc3db:	4c 8d 95 80 dc ff ff 	lea    r10,[rbp-0x2380]
  7cc3e2:	4d 89 02             	mov    QWORD PTR [r10],r8
  7cc3e5:	4d 89 4a f0          	mov    QWORD PTR [r10-0x10],r9
  7cc3e9:	4d 89 42 c0          	mov    QWORD PTR [r10-0x40],r8
  7cc3ed:	4d 89 5a b0          	mov    QWORD PTR [r10-0x50],r11
  7cc3f1:	4d 89 5a e0          	mov    QWORD PTR [r10-0x20],r11
  7cc3f5:	48 83 c0 1f          	add    rax,0x1f
  7cc3f9:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cc3fd:	48 2b e0             	sub    rsp,rax
  7cc400:	48 89 e0             	mov    rax,rsp
  7cc403:	4c 8d 95 e8 df ff ff 	lea    r10,[rbp-0x2018]
  7cc40a:	49 89 02             	mov    QWORD PTR [r10],rax
  7cc40d:	48 8b 85 f8 d6 ff ff 	mov    rax,QWORD PTR [rbp-0x2908]
  7cc414:	49 89 52 08          	mov    QWORD PTR [r10+0x8],rdx
  7cc418:	4d 89 42 20          	mov    QWORD PTR [r10+0x20],r8
  7cc41c:	4d 89 6a 10          	mov    QWORD PTR [r10+0x10],r13
  7cc420:	49 89 52 38          	mov    QWORD PTR [r10+0x38],rdx
  7cc424:	4d 89 42 40          	mov    QWORD PTR [r10+0x40],r8
  7cc428:	4d 89 4a 30          	mov    QWORD PTR [r10+0x30],r9
  7cc42c:	4d 89 42 18          	mov    QWORD PTR [r10+0x18],r8
  7cc430:	48 83 c0 1f          	add    rax,0x1f
  7cc434:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cc438:	48 2b e0             	sub    rsp,rax
  7cc43b:	48 89 e0             	mov    rax,rsp
  7cc43e:	4c 8d 95 88 dc ff ff 	lea    r10,[rbp-0x2378]
  7cc445:	49 89 02             	mov    QWORD PTR [r10],rax
  7cc448:	48 89 c8             	mov    rax,rcx
  7cc44b:	48 c1 e0 08          	shl    rax,0x8
  7cc44f:	48 2b 85 50 db ff ff 	sub    rax,QWORD PTR [rbp-0x24b0]
  7cc456:	48 0f af 85 d8 d8 ff 	imul   rax,QWORD PTR [rbp-0x2728]
  7cc45d:	ff 
  7cc45e:	49 89 52 08          	mov    QWORD PTR [r10+0x8],rdx
  7cc462:	4d 89 72 20          	mov    QWORD PTR [r10+0x20],r14
  7cc466:	4d 89 6a 10          	mov    QWORD PTR [r10+0x10],r13
  7cc46a:	49 89 52 38          	mov    QWORD PTR [r10+0x38],rdx
  7cc46e:	49 89 72 40          	mov    QWORD PTR [r10+0x40],rsi
  7cc472:	49 89 4a 30          	mov    QWORD PTR [r10+0x30],rcx
  7cc476:	49 89 7a 50          	mov    QWORD PTR [r10+0x50],rdi
  7cc47a:	4d 89 42 58          	mov    QWORD PTR [r10+0x58],r8
  7cc47e:	4d 89 4a 48          	mov    QWORD PTR [r10+0x48],r9
  7cc482:	4d 89 42 18          	mov    QWORD PTR [r10+0x18],r8
  7cc486:	48 89 85 58 d8 ff ff 	mov    QWORD PTR [rbp-0x27a8],rax
  7cc48d:	48 83 c0 1f          	add    rax,0x1f
  7cc491:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cc495:	48 2b e0             	sub    rsp,rax
  7cc498:	48 89 e0             	mov    rax,rsp
  7cc49b:	4c 0f af e7          	imul   r12,rdi
  7cc49f:	4c 8d 95 f0 d6 ff ff 	lea    r10,[rbp-0x2910]
  7cc4a6:	49 89 02             	mov    QWORD PTR [r10],rax
  7cc4a9:	48 8b 85 58 d8 ff ff 	mov    rax,QWORD PTR [rbp-0x27a8]
  7cc4b0:	49 89 52 08          	mov    QWORD PTR [r10+0x8],rdx
  7cc4b4:	4d 89 6a 10          	mov    QWORD PTR [r10+0x10],r13
  7cc4b8:	49 89 52 38          	mov    QWORD PTR [r10+0x38],rdx
  7cc4bc:	49 89 72 40          	mov    QWORD PTR [r10+0x40],rsi
  7cc4c0:	49 89 4a 30          	mov    QWORD PTR [r10+0x30],rcx
  7cc4c4:	49 89 7a 50          	mov    QWORD PTR [r10+0x50],rdi
  7cc4c8:	4d 89 42 58          	mov    QWORD PTR [r10+0x58],r8
  7cc4cc:	4d 89 4a 48          	mov    QWORD PTR [r10+0x48],r9
  7cc4d0:	4d 89 62 68          	mov    QWORD PTR [r10+0x68],r12
  7cc4d4:	4d 89 42 70          	mov    QWORD PTR [r10+0x70],r8
  7cc4d8:	4d 89 42 18          	mov    QWORD PTR [r10+0x18],r8
  7cc4dc:	49 c7 42 20 03 00 00 	mov    QWORD PTR [r10+0x20],0x3
  7cc4e3:	00 
  7cc4e4:	49 c7 42 60 1f 00 00 	mov    QWORD PTR [r10+0x60],0x1f
  7cc4eb:	00 
  7cc4ec:	48 83 c0 1f          	add    rax,0x1f
  7cc4f0:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cc4f4:	48 2b e0             	sub    rsp,rax
  7cc4f7:	48 89 e0             	mov    rax,rsp
  7cc4fa:	4c 8d 95 68 d7 ff ff 	lea    r10,[rbp-0x2898]
  7cc501:	49 89 02             	mov    QWORD PTR [r10],rax
  7cc504:	48 8b 85 58 d8 ff ff 	mov    rax,QWORD PTR [rbp-0x27a8]
  7cc50b:	49 89 52 08          	mov    QWORD PTR [r10+0x8],rdx
  7cc50f:	49 c7 42 20 03 00 00 	mov    QWORD PTR [r10+0x20],0x3
  7cc516:	00 
  7cc517:	4d 89 6a 10          	mov    QWORD PTR [r10+0x10],r13
  7cc51b:	49 89 52 38          	mov    QWORD PTR [r10+0x38],rdx
  7cc51f:	49 89 72 40          	mov    QWORD PTR [r10+0x40],rsi
  7cc523:	49 89 4a 30          	mov    QWORD PTR [r10+0x30],rcx
  7cc527:	49 89 7a 50          	mov    QWORD PTR [r10+0x50],rdi
  7cc52b:	4d 89 42 58          	mov    QWORD PTR [r10+0x58],r8
  7cc52f:	4d 89 4a 48          	mov    QWORD PTR [r10+0x48],r9
  7cc533:	4d 89 62 68          	mov    QWORD PTR [r10+0x68],r12
  7cc537:	4d 89 42 70          	mov    QWORD PTR [r10+0x70],r8
  7cc53b:	49 c7 42 60 1f 00 00 	mov    QWORD PTR [r10+0x60],0x1f
  7cc542:	00 
  7cc543:	4d 89 42 18          	mov    QWORD PTR [r10+0x18],r8
  7cc547:	48 83 c0 1f          	add    rax,0x1f
  7cc54b:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cc54f:	48 2b e0             	sub    rsp,rax
  7cc552:	48 89 e0             	mov    rax,rsp
  7cc555:	4c 8d 95 e0 d7 ff ff 	lea    r10,[rbp-0x2820]
  7cc55c:	49 89 02             	mov    QWORD PTR [r10],rax
  7cc55f:	48 8b 85 58 d8 ff ff 	mov    rax,QWORD PTR [rbp-0x27a8]
  7cc566:	49 89 52 08          	mov    QWORD PTR [r10+0x8],rdx
  7cc56a:	49 c7 42 20 03 00 00 	mov    QWORD PTR [r10+0x20],0x3
  7cc571:	00 
  7cc572:	4d 89 6a 10          	mov    QWORD PTR [r10+0x10],r13
  7cc576:	49 89 52 38          	mov    QWORD PTR [r10+0x38],rdx
  7cc57a:	49 89 72 40          	mov    QWORD PTR [r10+0x40],rsi
  7cc57e:	49 89 4a 30          	mov    QWORD PTR [r10+0x30],rcx
  7cc582:	49 89 7a 50          	mov    QWORD PTR [r10+0x50],rdi
  7cc586:	4d 89 42 58          	mov    QWORD PTR [r10+0x58],r8
  7cc58a:	4d 89 4a 48          	mov    QWORD PTR [r10+0x48],r9
  7cc58e:	4d 89 62 68          	mov    QWORD PTR [r10+0x68],r12
  7cc592:	4d 89 42 70          	mov    QWORD PTR [r10+0x70],r8
  7cc596:	49 c7 42 60 1f 00 00 	mov    QWORD PTR [r10+0x60],0x1f
  7cc59d:	00 
  7cc59e:	4d 89 42 18          	mov    QWORD PTR [r10+0x18],r8
  7cc5a2:	48 83 c0 1f          	add    rax,0x1f
  7cc5a6:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cc5aa:	48 2b e0             	sub    rsp,rax
  7cc5ad:	48 89 e0             	mov    rax,rsp
  7cc5b0:	4c 8d 95 58 d8 ff ff 	lea    r10,[rbp-0x27a8]
  7cc5b7:	49 89 02             	mov    QWORD PTR [r10],rax
  7cc5ba:	48 8b 85 50 db ff ff 	mov    rax,QWORD PTR [rbp-0x24b0]
  7cc5c1:	49 c7 42 60 1f 00 00 	mov    QWORD PTR [r10+0x60],0x1f
  7cc5c8:	00 
  7cc5c9:	49 89 52 08          	mov    QWORD PTR [r10+0x8],rdx
  7cc5cd:	49 c7 42 20 03 00 00 	mov    QWORD PTR [r10+0x20],0x3
  7cc5d4:	00 
  7cc5d5:	4d 89 6a 10          	mov    QWORD PTR [r10+0x10],r13
  7cc5d9:	49 89 52 38          	mov    QWORD PTR [r10+0x38],rdx
  7cc5dd:	49 89 72 40          	mov    QWORD PTR [r10+0x40],rsi
  7cc5e1:	49 89 4a 30          	mov    QWORD PTR [r10+0x30],rcx
  7cc5e5:	49 89 7a 50          	mov    QWORD PTR [r10+0x50],rdi
  7cc5e9:	4d 89 42 58          	mov    QWORD PTR [r10+0x58],r8
  7cc5ed:	4d 89 4a 48          	mov    QWORD PTR [r10+0x48],r9
  7cc5f1:	4d 89 62 68          	mov    QWORD PTR [r10+0x68],r12
  7cc5f5:	4d 89 42 70          	mov    QWORD PTR [r10+0x70],r8
  7cc5f9:	4d 89 42 18          	mov    QWORD PTR [r10+0x18],r8
  7cc5fd:	48 83 c0 1f          	add    rax,0x1f
  7cc601:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cc605:	48 2b e0             	sub    rsp,rax
  7cc608:	48 89 e0             	mov    rax,rsp
  7cc60b:	4c 8d 95 30 e0 ff ff 	lea    r10,[rbp-0x1fd0]
  7cc612:	49 89 02             	mov    QWORD PTR [r10],rax
  7cc615:	48 8b 85 e8 d8 ff ff 	mov    rax,QWORD PTR [rbp-0x2718]
  7cc61c:	49 89 52 08          	mov    QWORD PTR [r10+0x8],rdx
  7cc620:	4d 89 42 20          	mov    QWORD PTR [r10+0x20],r8
  7cc624:	4d 89 6a 10          	mov    QWORD PTR [r10+0x10],r13
  7cc628:	49 89 52 38          	mov    QWORD PTR [r10+0x38],rdx
  7cc62c:	49 89 72 40          	mov    QWORD PTR [r10+0x40],rsi
  7cc630:	49 89 4a 30          	mov    QWORD PTR [r10+0x30],rcx
  7cc634:	4d 89 42 18          	mov    QWORD PTR [r10+0x18],r8
  7cc638:	48 83 c0 1f          	add    rax,0x1f
  7cc63c:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cc640:	48 2b e0             	sub    rsp,rax
  7cc643:	48 89 e0             	mov    rax,rsp
  7cc646:	4c 8d 95 e8 dc ff ff 	lea    r10,[rbp-0x2318]
  7cc64d:	49 89 02             	mov    QWORD PTR [r10],rax
  7cc650:	48 8b 85 e8 d8 ff ff 	mov    rax,QWORD PTR [rbp-0x2718]
  7cc657:	49 89 52 08          	mov    QWORD PTR [r10+0x8],rdx
  7cc65b:	4d 89 72 20          	mov    QWORD PTR [r10+0x20],r14
  7cc65f:	4d 89 6a 10          	mov    QWORD PTR [r10+0x10],r13
  7cc663:	49 89 52 38          	mov    QWORD PTR [r10+0x38],rdx
  7cc667:	49 89 72 40          	mov    QWORD PTR [r10+0x40],rsi
  7cc66b:	49 89 4a 30          	mov    QWORD PTR [r10+0x30],rcx
  7cc66f:	49 89 7a 50          	mov    QWORD PTR [r10+0x50],rdi
  7cc673:	4d 89 42 58          	mov    QWORD PTR [r10+0x58],r8
  7cc677:	4d 89 4a 48          	mov    QWORD PTR [r10+0x48],r9
  7cc67b:	4d 89 42 18          	mov    QWORD PTR [r10+0x18],r8
  7cc67f:	48 83 c0 1f          	add    rax,0x1f
  7cc683:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cc687:	48 2b e0             	sub    rsp,rax
  7cc68a:	48 89 e0             	mov    rax,rsp
  7cc68d:	4c 8d 95 48 dd ff ff 	lea    r10,[rbp-0x22b8]
  7cc694:	49 89 02             	mov    QWORD PTR [r10],rax
  7cc697:	48 8b 85 e8 d8 ff ff 	mov    rax,QWORD PTR [rbp-0x2718]
  7cc69e:	49 89 52 08          	mov    QWORD PTR [r10+0x8],rdx
  7cc6a2:	4d 89 72 20          	mov    QWORD PTR [r10+0x20],r14
  7cc6a6:	4d 89 6a 10          	mov    QWORD PTR [r10+0x10],r13
  7cc6aa:	49 89 52 38          	mov    QWORD PTR [r10+0x38],rdx
  7cc6ae:	49 89 72 40          	mov    QWORD PTR [r10+0x40],rsi
  7cc6b2:	49 89 4a 30          	mov    QWORD PTR [r10+0x30],rcx
  7cc6b6:	49 89 7a 50          	mov    QWORD PTR [r10+0x50],rdi
  7cc6ba:	4d 89 42 58          	mov    QWORD PTR [r10+0x58],r8
  7cc6be:	4d 89 4a 48          	mov    QWORD PTR [r10+0x48],r9
  7cc6c2:	4d 89 42 18          	mov    QWORD PTR [r10+0x18],r8
  7cc6c6:	48 83 c0 1f          	add    rax,0x1f
  7cc6ca:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cc6ce:	48 2b e0             	sub    rsp,rax
  7cc6d1:	48 89 e0             	mov    rax,rsp
  7cc6d4:	4c 8d 95 a8 dd ff ff 	lea    r10,[rbp-0x2258]
  7cc6db:	49 89 02             	mov    QWORD PTR [r10],rax
  7cc6de:	48 8b 85 e0 d8 ff ff 	mov    rax,QWORD PTR [rbp-0x2720]
  7cc6e5:	48 0f af 85 50 db ff 	imul   rax,QWORD PTR [rbp-0x24b0]
  7cc6ec:	ff 
  7cc6ed:	49 89 52 08          	mov    QWORD PTR [r10+0x8],rdx
  7cc6f1:	4d 89 72 20          	mov    QWORD PTR [r10+0x20],r14
  7cc6f5:	4d 89 6a 10          	mov    QWORD PTR [r10+0x10],r13
  7cc6f9:	49 89 52 38          	mov    QWORD PTR [r10+0x38],rdx
  7cc6fd:	49 89 72 40          	mov    QWORD PTR [r10+0x40],rsi
  7cc701:	49 89 4a 30          	mov    QWORD PTR [r10+0x30],rcx
  7cc705:	49 89 7a 50          	mov    QWORD PTR [r10+0x50],rdi
  7cc709:	4d 89 42 58          	mov    QWORD PTR [r10+0x58],r8
  7cc70d:	4d 89 4a 48          	mov    QWORD PTR [r10+0x48],r9
  7cc711:	4d 89 42 18          	mov    QWORD PTR [r10+0x18],r8
  7cc715:	48 83 c0 1f          	add    rax,0x1f
  7cc719:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cc71d:	48 2b e0             	sub    rsp,rax
  7cc720:	48 89 e0             	mov    rax,rsp
  7cc723:	4c 8b 9d d0 d8 ff ff 	mov    r11,QWORD PTR [rbp-0x2730]
  7cc72a:	4d 89 da             	mov    r10,r11
  7cc72d:	49 c1 fa 3f          	sar    r10,0x3f
  7cc731:	48 89 85 08 de ff ff 	mov    QWORD PTR [rbp-0x21f8],rax
  7cc738:	c4 42 a8 f2 fb       	andn   r15,r10,r11
  7cc73d:	48 8b 85 e8 d8 ff ff 	mov    rax,QWORD PTR [rbp-0x2718]
  7cc744:	4c 8d 95 10 de ff ff 	lea    r10,[rbp-0x21f0]
  7cc74b:	49 89 12             	mov    QWORD PTR [r10],rdx
  7cc74e:	4d 89 72 18          	mov    QWORD PTR [r10+0x18],r14
  7cc752:	4d 89 6a 08          	mov    QWORD PTR [r10+0x8],r13
  7cc756:	49 89 52 30          	mov    QWORD PTR [r10+0x30],rdx
  7cc75a:	49 89 72 38          	mov    QWORD PTR [r10+0x38],rsi
  7cc75e:	49 89 4a 28          	mov    QWORD PTR [r10+0x28],rcx
  7cc762:	49 89 7a 48          	mov    QWORD PTR [r10+0x48],rdi
  7cc766:	4d 89 42 50          	mov    QWORD PTR [r10+0x50],r8
  7cc76a:	4d 89 42 10          	mov    QWORD PTR [r10+0x10],r8
  7cc76e:	4d 89 7a 40          	mov    QWORD PTR [r10+0x40],r15
  7cc772:	48 83 c0 1f          	add    rax,0x1f
  7cc776:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cc77a:	48 2b e0             	sub    rsp,rax
  7cc77d:	48 89 e0             	mov    rax,rsp
  7cc780:	4c 8d 95 68 de ff ff 	lea    r10,[rbp-0x2198]
  7cc787:	49 89 02             	mov    QWORD PTR [r10],rax
  7cc78a:	48 8b 85 e8 d8 ff ff 	mov    rax,QWORD PTR [rbp-0x2718]
  7cc791:	49 89 52 08          	mov    QWORD PTR [r10+0x8],rdx
  7cc795:	4d 89 72 20          	mov    QWORD PTR [r10+0x20],r14
  7cc799:	4d 89 6a 10          	mov    QWORD PTR [r10+0x10],r13
  7cc79d:	49 89 52 38          	mov    QWORD PTR [r10+0x38],rdx
  7cc7a1:	49 89 72 40          	mov    QWORD PTR [r10+0x40],rsi
  7cc7a5:	49 89 4a 30          	mov    QWORD PTR [r10+0x30],rcx
  7cc7a9:	49 89 7a 50          	mov    QWORD PTR [r10+0x50],rdi
  7cc7ad:	4d 89 42 58          	mov    QWORD PTR [r10+0x58],r8
  7cc7b1:	4d 89 4a 48          	mov    QWORD PTR [r10+0x48],r9
  7cc7b5:	4d 89 42 18          	mov    QWORD PTR [r10+0x18],r8
  7cc7b9:	48 83 c0 1f          	add    rax,0x1f
  7cc7bd:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cc7c1:	48 2b e0             	sub    rsp,rax
  7cc7c4:	48 89 e0             	mov    rax,rsp
  7cc7c7:	4c 8d 95 c8 de ff ff 	lea    r10,[rbp-0x2138]
  7cc7ce:	49 89 02             	mov    QWORD PTR [r10],rax
  7cc7d1:	48 8b 85 e8 d8 ff ff 	mov    rax,QWORD PTR [rbp-0x2718]
  7cc7d8:	49 89 52 08          	mov    QWORD PTR [r10+0x8],rdx
  7cc7dc:	4d 89 72 20          	mov    QWORD PTR [r10+0x20],r14
  7cc7e0:	4d 89 6a 10          	mov    QWORD PTR [r10+0x10],r13
  7cc7e4:	49 89 52 38          	mov    QWORD PTR [r10+0x38],rdx
  7cc7e8:	49 89 72 40          	mov    QWORD PTR [r10+0x40],rsi
  7cc7ec:	49 89 4a 30          	mov    QWORD PTR [r10+0x30],rcx
  7cc7f0:	49 89 7a 50          	mov    QWORD PTR [r10+0x50],rdi
  7cc7f4:	4d 89 42 58          	mov    QWORD PTR [r10+0x58],r8
  7cc7f8:	4d 89 4a 48          	mov    QWORD PTR [r10+0x48],r9
  7cc7fc:	4d 89 42 18          	mov    QWORD PTR [r10+0x18],r8
  7cc800:	48 83 c0 1f          	add    rax,0x1f
  7cc804:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cc808:	48 2b e0             	sub    rsp,rax
  7cc80b:	48 89 e0             	mov    rax,rsp
  7cc80e:	4c 8d 95 28 df ff ff 	lea    r10,[rbp-0x20d8]
  7cc815:	49 89 02             	mov    QWORD PTR [r10],rax
  7cc818:	48 8b 85 e8 d8 ff ff 	mov    rax,QWORD PTR [rbp-0x2718]
  7cc81f:	49 89 52 08          	mov    QWORD PTR [r10+0x8],rdx
  7cc823:	4d 89 72 20          	mov    QWORD PTR [r10+0x20],r14
  7cc827:	4d 89 6a 10          	mov    QWORD PTR [r10+0x10],r13
  7cc82b:	49 89 52 38          	mov    QWORD PTR [r10+0x38],rdx
  7cc82f:	49 89 72 40          	mov    QWORD PTR [r10+0x40],rsi
  7cc833:	49 89 4a 30          	mov    QWORD PTR [r10+0x30],rcx
  7cc837:	49 89 7a 50          	mov    QWORD PTR [r10+0x50],rdi
  7cc83b:	4d 89 42 58          	mov    QWORD PTR [r10+0x58],r8
  7cc83f:	4d 89 4a 48          	mov    QWORD PTR [r10+0x48],r9
  7cc843:	4d 89 42 18          	mov    QWORD PTR [r10+0x18],r8
  7cc847:	48 83 c0 1f          	add    rax,0x1f
  7cc84b:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cc84f:	48 2b e0             	sub    rsp,rax
  7cc852:	48 89 e0             	mov    rax,rsp
  7cc855:	4c 8b 9d d8 d8 ff ff 	mov    r11,QWORD PTR [rbp-0x2728]
  7cc85c:	4d 89 ef             	mov    r15,r13
  7cc85f:	4c 0f af d9          	imul   r11,rcx
  7cc863:	4c 8b 95 48 d9 ff ff 	mov    r10,QWORD PTR [rbp-0x26b8]
  7cc86a:	4d 85 d2             	test   r10,r10
  7cc86d:	48 89 85 88 df ff ff 	mov    QWORD PTR [rbp-0x2078],rax
  7cc874:	4d 0f 4f fa          	cmovg  r15,r10
  7cc878:	49 c1 e7 03          	shl    r15,0x3
  7cc87c:	4d 0f af fb          	imul   r15,r11
  7cc880:	4c 89 f8             	mov    rax,r15
  7cc883:	4c 89 b5 a8 df ff ff 	mov    QWORD PTR [rbp-0x2058],r14
  7cc88a:	4c 8d b5 90 df ff ff 	lea    r14,[rbp-0x2070]
  7cc891:	49 89 16             	mov    QWORD PTR [r14],rdx
  7cc894:	4d 89 6e 08          	mov    QWORD PTR [r14+0x8],r13
  7cc898:	49 89 56 30          	mov    QWORD PTR [r14+0x30],rdx
  7cc89c:	49 89 76 38          	mov    QWORD PTR [r14+0x38],rsi
  7cc8a0:	49 89 4e 28          	mov    QWORD PTR [r14+0x28],rcx
  7cc8a4:	49 89 7e 48          	mov    QWORD PTR [r14+0x48],rdi
  7cc8a8:	4d 89 46 50          	mov    QWORD PTR [r14+0x50],r8
  7cc8ac:	4d 89 4e 40          	mov    QWORD PTR [r14+0x40],r9
  7cc8b0:	4d 89 46 10          	mov    QWORD PTR [r14+0x10],r8
  7cc8b4:	48 83 c0 1f          	add    rax,0x1f
  7cc8b8:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cc8bc:	48 2b e0             	sub    rsp,rax
  7cc8bf:	48 89 e0             	mov    rax,rsp
  7cc8c2:	4c 8b 9d 48 d9 ff ff 	mov    r11,QWORD PTR [rbp-0x26b8]
  7cc8c9:	4d 89 da             	mov    r10,r11
  7cc8cc:	49 c1 fa 3f          	sar    r10,0x3f
  7cc8d0:	48 89 85 d0 d8 ff ff 	mov    QWORD PTR [rbp-0x2730],rax
  7cc8d7:	4c 89 f8             	mov    rax,r15
  7cc8da:	c4 42 a8 f2 f3       	andn   r14,r10,r11
  7cc8df:	4c 8d 95 d8 d8 ff ff 	lea    r10,[rbp-0x2728]
  7cc8e6:	49 89 12             	mov    QWORD PTR [r10],rdx
  7cc8e9:	49 c7 42 18 03 00 00 	mov    QWORD PTR [r10+0x18],0x3
  7cc8f0:	00 
  7cc8f1:	4d 89 6a 08          	mov    QWORD PTR [r10+0x8],r13
  7cc8f5:	49 89 52 30          	mov    QWORD PTR [r10+0x30],rdx
  7cc8f9:	49 89 72 38          	mov    QWORD PTR [r10+0x38],rsi
  7cc8fd:	49 89 4a 28          	mov    QWORD PTR [r10+0x28],rcx
  7cc901:	49 89 7a 48          	mov    QWORD PTR [r10+0x48],rdi
  7cc905:	4d 89 42 50          	mov    QWORD PTR [r10+0x50],r8
  7cc909:	4d 89 4a 40          	mov    QWORD PTR [r10+0x40],r9
  7cc90d:	4d 89 62 60          	mov    QWORD PTR [r10+0x60],r12
  7cc911:	4d 89 42 68          	mov    QWORD PTR [r10+0x68],r8
  7cc915:	4d 89 42 10          	mov    QWORD PTR [r10+0x10],r8
  7cc919:	4d 89 72 58          	mov    QWORD PTR [r10+0x58],r14
  7cc91d:	48 83 c0 1f          	add    rax,0x1f
  7cc921:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cc925:	48 2b e0             	sub    rsp,rax
  7cc928:	48 89 e0             	mov    rax,rsp
  7cc92b:	4c 8d 95 48 d9 ff ff 	lea    r10,[rbp-0x26b8]
  7cc932:	49 89 02             	mov    QWORD PTR [r10],rax
  7cc935:	48 8b 85 50 db ff ff 	mov    rax,QWORD PTR [rbp-0x24b0]
  7cc93c:	49 c7 42 20 03 00 00 	mov    QWORD PTR [r10+0x20],0x3
  7cc943:	00 
  7cc944:	49 89 7a 50          	mov    QWORD PTR [r10+0x50],rdi
  7cc948:	4d 89 4a 48          	mov    QWORD PTR [r10+0x48],r9
  7cc94c:	4c 8d 8d 50 d9 ff ff 	lea    r9,[rbp-0x26b0]
  7cc953:	49 89 11             	mov    QWORD PTR [r9],rdx
  7cc956:	4d 89 69 08          	mov    QWORD PTR [r9+0x8],r13
  7cc95a:	49 89 51 30          	mov    QWORD PTR [r9+0x30],rdx
  7cc95e:	49 89 71 38          	mov    QWORD PTR [r9+0x38],rsi
  7cc962:	49 89 49 28          	mov    QWORD PTR [r9+0x28],rcx
  7cc966:	4d 89 41 50          	mov    QWORD PTR [r9+0x50],r8
  7cc96a:	4d 89 61 60          	mov    QWORD PTR [r9+0x60],r12
  7cc96e:	4c 8d a5 b8 d9 ff ff 	lea    r12,[rbp-0x2648]
  7cc975:	4d 89 04 24          	mov    QWORD PTR [r12],r8
  7cc979:	4d 89 74 24 f0       	mov    QWORD PTR [r12-0x10],r14
  7cc97e:	4d 89 44 24 a8       	mov    QWORD PTR [r12-0x58],r8
  7cc983:	48 83 c0 1f          	add    rax,0x1f
  7cc987:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cc98b:	48 2b e0             	sub    rsp,rax
  7cc98e:	48 89 e0             	mov    rax,rsp
  7cc991:	48 8d bd 78 e0 ff ff 	lea    rdi,[rbp-0x1f88]
  7cc998:	48 89 07             	mov    QWORD PTR [rdi],rax
  7cc99b:	48 8b 85 50 db ff ff 	mov    rax,QWORD PTR [rbp-0x24b0]
  7cc9a2:	48 89 57 08          	mov    QWORD PTR [rdi+0x8],rdx
  7cc9a6:	4c 89 47 20          	mov    QWORD PTR [rdi+0x20],r8
  7cc9aa:	4c 89 6f 10          	mov    QWORD PTR [rdi+0x10],r13
  7cc9ae:	48 89 57 38          	mov    QWORD PTR [rdi+0x38],rdx
  7cc9b2:	48 89 77 40          	mov    QWORD PTR [rdi+0x40],rsi
  7cc9b6:	48 89 4f 30          	mov    QWORD PTR [rdi+0x30],rcx
  7cc9ba:	4c 89 47 18          	mov    QWORD PTR [rdi+0x18],r8
  7cc9be:	48 83 c0 1f          	add    rax,0x1f
  7cc9c2:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cc9c6:	48 2b e0             	sub    rsp,rax
  7cc9c9:	48 89 e0             	mov    rax,rsp
  7cc9cc:	48 8d bd c0 e0 ff ff 	lea    rdi,[rbp-0x1f40]
  7cc9d3:	48 89 07             	mov    QWORD PTR [rdi],rax
  7cc9d6:	48 8b 85 50 db ff ff 	mov    rax,QWORD PTR [rbp-0x24b0]
  7cc9dd:	48 89 57 08          	mov    QWORD PTR [rdi+0x8],rdx
  7cc9e1:	4c 89 47 20          	mov    QWORD PTR [rdi+0x20],r8
  7cc9e5:	4c 89 6f 10          	mov    QWORD PTR [rdi+0x10],r13
  7cc9e9:	48 89 57 38          	mov    QWORD PTR [rdi+0x38],rdx
  7cc9ed:	48 89 77 40          	mov    QWORD PTR [rdi+0x40],rsi
  7cc9f1:	48 89 4f 30          	mov    QWORD PTR [rdi+0x30],rcx
  7cc9f5:	4c 89 47 18          	mov    QWORD PTR [rdi+0x18],r8
  7cc9f9:	48 83 c0 1f          	add    rax,0x1f
  7cc9fd:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cca01:	48 2b e0             	sub    rsp,rax
  7cca04:	48 89 e0             	mov    rax,rsp
  7cca07:	48 8d bd 08 e1 ff ff 	lea    rdi,[rbp-0x1ef8]
  7cca0e:	48 89 07             	mov    QWORD PTR [rdi],rax
  7cca11:	48 8b 85 50 db ff ff 	mov    rax,QWORD PTR [rbp-0x24b0]
  7cca18:	48 89 57 08          	mov    QWORD PTR [rdi+0x8],rdx
  7cca1c:	4c 89 47 20          	mov    QWORD PTR [rdi+0x20],r8
  7cca20:	4c 89 6f 10          	mov    QWORD PTR [rdi+0x10],r13
  7cca24:	48 89 57 38          	mov    QWORD PTR [rdi+0x38],rdx
  7cca28:	48 89 77 40          	mov    QWORD PTR [rdi+0x40],rsi
  7cca2c:	48 89 4f 30          	mov    QWORD PTR [rdi+0x30],rcx
  7cca30:	4c 89 47 18          	mov    QWORD PTR [rdi+0x18],r8
  7cca34:	48 83 c0 1f          	add    rax,0x1f
  7cca38:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cca3c:	48 2b e0             	sub    rsp,rax
  7cca3f:	48 89 e0             	mov    rax,rsp
  7cca42:	48 8d bd 50 e1 ff ff 	lea    rdi,[rbp-0x1eb0]
  7cca49:	48 89 07             	mov    QWORD PTR [rdi],rax
  7cca4c:	48 8b 85 50 db ff ff 	mov    rax,QWORD PTR [rbp-0x24b0]
  7cca53:	48 89 57 08          	mov    QWORD PTR [rdi+0x8],rdx
  7cca57:	4c 89 47 20          	mov    QWORD PTR [rdi+0x20],r8
  7cca5b:	4c 89 6f 10          	mov    QWORD PTR [rdi+0x10],r13
  7cca5f:	48 89 57 38          	mov    QWORD PTR [rdi+0x38],rdx
  7cca63:	48 89 77 40          	mov    QWORD PTR [rdi+0x40],rsi
  7cca67:	48 89 4f 30          	mov    QWORD PTR [rdi+0x30],rcx
  7cca6b:	4c 89 47 18          	mov    QWORD PTR [rdi+0x18],r8
  7cca6f:	48 83 c0 1f          	add    rax,0x1f
  7cca73:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cca77:	48 2b e0             	sub    rsp,rax
  7cca7a:	48 89 e0             	mov    rax,rsp
  7cca7d:	48 8d bd 98 e1 ff ff 	lea    rdi,[rbp-0x1e68]
  7cca84:	48 89 07             	mov    QWORD PTR [rdi],rax
  7cca87:	48 8b 85 50 db ff ff 	mov    rax,QWORD PTR [rbp-0x24b0]
  7cca8e:	48 89 57 08          	mov    QWORD PTR [rdi+0x8],rdx
  7cca92:	4c 89 47 20          	mov    QWORD PTR [rdi+0x20],r8
  7cca96:	4c 89 6f 10          	mov    QWORD PTR [rdi+0x10],r13
  7cca9a:	48 89 57 38          	mov    QWORD PTR [rdi+0x38],rdx
  7cca9e:	48 89 77 40          	mov    QWORD PTR [rdi+0x40],rsi
  7ccaa2:	48 89 4f 30          	mov    QWORD PTR [rdi+0x30],rcx
  7ccaa6:	4c 89 47 18          	mov    QWORD PTR [rdi+0x18],r8
  7ccaaa:	48 83 c0 1f          	add    rax,0x1f
  7ccaae:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7ccab2:	48 2b e0             	sub    rsp,rax
  7ccab5:	48 89 e0             	mov    rax,rsp
  7ccab8:	48 8d bd 20 e2 ff ff 	lea    rdi,[rbp-0x1de0]
  7ccabf:	48 89 37             	mov    QWORD PTR [rdi],rsi
  7ccac2:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  7ccac6:	48 8b b5 a0 e2 ff ff 	mov    rsi,QWORD PTR [rbp-0x1d60]
  7ccacd:	48 89 4f f0          	mov    QWORD PTR [rdi-0x10],rcx
  7ccad1:	48 69 ce 60 0f 00 00 	imul   rcx,rsi,0xf60
  7ccad8:	4c 89 47 e0          	mov    QWORD PTR [rdi-0x20],r8
  7ccadc:	4c 89 47 d8          	mov    QWORD PTR [rdi-0x28],r8
  7ccae0:	4c 8b 05 59 e6 2e 00 	mov    r8,QWORD PTR [rip+0x2ee659]        # abb140 <mod_param_mp_bounds_>
  7ccae7:	48 8b bd 98 e2 ff ff 	mov    rdi,QWORD PTR [rbp-0x1d68]
  7ccaee:	4c 8d a5 e8 e1 ff ff 	lea    r12,[rbp-0x1e18]
  7ccaf5:	49 89 14 24          	mov    QWORD PTR [r12],rdx
  7ccaf9:	4e 8b 94 01 90 f2 ff 	mov    r10,QWORD PTR [rcx+r8*1-0xd70]
  7ccb00:	ff 
  7ccb01:	49 f7 da             	neg    r10
  7ccb04:	49 89 54 24 30       	mov    QWORD PTR [r12+0x30],rdx
  7ccb09:	48 63 17             	movsxd rdx,DWORD PTR [rdi]
  7ccb0c:	4c 03 d2             	add    r10,rdx
  7ccb0f:	4a 8d bc 01 88 f2 ff 	lea    rdi,[rcx+r8*1-0xd78]
  7ccb16:	ff 
  7ccb17:	4c 0f af 17          	imul   r10,QWORD PTR [rdi]
  7ccb1b:	4c 8b 4f c8          	mov    r9,QWORD PTR [rdi-0x38]
  7ccb1f:	4c 8b 77 50          	mov    r14,QWORD PTR [rdi+0x50]
  7ccb23:	48 8b bf 98 00 00 00 	mov    rdi,QWORD PTR [rdi+0x98]
  7ccb2a:	49 f7 de             	neg    r14
  7ccb2d:	47 8b 1c 11          	mov    r11d,DWORD PTR [r9+r10*1]
  7ccb31:	48 f7 df             	neg    rdi
  7ccb34:	4e 8b 94 01 68 f3 ff 	mov    r10,QWORD PTR [rcx+r8*1-0xc98]
  7ccb3b:	ff 
  7ccb3c:	4c 03 f2             	add    r14,rdx
  7ccb3f:	49 f7 da             	neg    r10
  7ccb42:	48 03 fa             	add    rdi,rdx
  7ccb45:	44 89 9d fc e2 ff ff 	mov    DWORD PTR [rbp-0x1d04],r11d
  7ccb4c:	4c 03 d2             	add    r10,rdx
  7ccb4f:	4c 8b 1d 6a 07 2f 00 	mov    r11,QWORD PTR [rip+0x2f076a]        # abd2c0 <mod_biology_mp_bioiter_>
  7ccb56:	49 89 44 24 f8       	mov    QWORD PTR [r12-0x8],rax
  7ccb5b:	4a 8d 84 01 d0 f2 ff 	lea    rax,[rcx+r8*1-0xd30]
  7ccb62:	ff 
  7ccb63:	4c 0f af 30          	imul   r14,QWORD PTR [rax]
  7ccb67:	48 0f af 78 48       	imul   rdi,QWORD PTR [rax+0x48]
  7ccb6c:	4c 0f af 90 90 00 00 	imul   r10,QWORD PTR [rax+0x90]
  7ccb73:	00 
  7ccb74:	c4 c1 6b 2a 54 b3 fc 	vcvtsi2sd xmm2,xmm2,DWORD PTR [r11+rsi*4-0x4]
  7ccb7b:	4e 8d 9c 01 98 f2 ff 	lea    r11,[rcx+r8*1-0xd68]
  7ccb82:	ff 
  7ccb83:	4d 8b 23             	mov    r12,QWORD PTR [r11]
  7ccb86:	49 8b 43 48          	mov    rax,QWORD PTR [r11+0x48]
  7ccb8a:	49 8b 93 90 00 00 00 	mov    rdx,QWORD PTR [r11+0x90]
  7ccb91:	4c 8b 05 a8 cf 2e 00 	mov    r8,QWORD PTR [rip+0x2ecfa8]        # ab9b40 <mod_scalars_mp_dt_>
  7ccb98:	c5 fb 10 05 e8 f5 07 	vmovsd xmm0,QWORD PTR [rip+0x7f5e8]        # 84c188 <__STRLITPACK_0.112+0x78>
  7ccb9f:	00 
  7ccba0:	44 8b 0c 38          	mov    r9d,DWORD PTR [rax+rdi*1]
  7ccba4:	c4 c1 7b 59 4c f0 f8 	vmulsd xmm1,xmm0,QWORD PTR [r8+rsi*8-0x8]
  7ccbab:	c5 f3 5e da          	vdivsd xmm3,xmm1,xmm2
  7ccbaf:	42 8b 0c 12          	mov    ecx,DWORD PTR [rdx+r10*1]
  7ccbb3:	48 8b 3d 46 15 2f 00 	mov    rdi,QWORD PTR [rip+0x2f1546]        # abe100 <mod_biology_mp_wsp_>
  7ccbba:	4c 8b 05 7f 14 2f 00 	mov    r8,QWORD PTR [rip+0x2f147f]        # abe040 <mod_biology_mp_wsd_>
  7ccbc1:	4c 8b 15 d8 14 2f 00 	mov    r10,QWORD PTR [rip+0x2f14d8]        # abe0a0 <mod_biology_mp_wsdsi_>
  7ccbc8:	47 8b 3c 34          	mov    r15d,DWORD PTR [r12+r14*1]
  7ccbcc:	44 89 8d 04 e3 ff ff 	mov    DWORD PTR [rbp-0x1cfc],r9d
  7ccbd3:	44 89 bd 00 e3 ff ff 	mov    DWORD PTR [rbp-0x1d00],r15d
  7ccbda:	89 8d 08 e3 ff ff    	mov    DWORD PTR [rbp-0x1cf8],ecx
  7ccbe0:	4c 8b 5c f7 f8       	mov    r11,QWORD PTR [rdi+rsi*8-0x8]
  7ccbe5:	bf 5c 74 ab 00       	mov    edi,0xab745c
  7ccbea:	4d 8b 4c f0 f8       	mov    r9,QWORD PTR [r8+rsi*8-0x8]
  7ccbef:	44 8b 25 62 43 41 00 	mov    r12d,DWORD PTR [rip+0x414362]        # be0f58 <mod_biology_mp_ilphy_>
  7ccbf6:	44 8b 35 73 43 41 00 	mov    r14d,DWORD PTR [rip+0x414373]        # be0f70 <mod_biology_mp_isdet_>
  7ccbfd:	44 8b 3d 74 43 41 00 	mov    r15d,DWORD PTR [rip+0x414374]        # be0f78 <mod_biology_mp_iopal_>
  7ccc04:	8b 05 46 43 41 00    	mov    eax,DWORD PTR [rip+0x414346]        # be0f50 <mod_biology_mp_isphy_>
  7ccc0a:	8b 15 90 43 41 00    	mov    edx,DWORD PTR [rip+0x414390]        # be0fa0 <mod_biology_mp_ichl1_>
  7ccc10:	8b 0d 92 43 41 00    	mov    ecx,DWORD PTR [rip+0x414392]        # be0fa8 <mod_biology_mp_ichl2_>
  7ccc16:	49 8b 74 f2 f8       	mov    rsi,QWORD PTR [r10+rsi*8-0x8]
  7ccc1b:	c5 fb 11 9d a8 e2 ff 	vmovsd QWORD PTR [rbp-0x1d58],xmm3
  7ccc22:	ff 
  7ccc23:	4c 89 ad f0 e1 ff ff 	mov    QWORD PTR [rbp-0x1e10],r13
  7ccc2a:	4c 8d 95 50 db ff ff 	lea    r10,[rbp-0x24b0]
  7ccc31:	45 89 22             	mov    DWORD PTR [r10],r12d
  7ccc34:	45 89 72 04          	mov    DWORD PTR [r10+0x4],r14d
  7ccc38:	45 89 7a 08          	mov    DWORD PTR [r10+0x8],r15d
  7ccc3c:	4c 8d bd 5c db ff ff 	lea    r15,[rbp-0x24a4]
  7ccc43:	41 89 07             	mov    DWORD PTR [r15],eax
  7ccc46:	41 89 57 04          	mov    DWORD PTR [r15+0x4],edx
  7ccc4a:	41 89 4f 08          	mov    DWORD PTR [r15+0x8],ecx
  7ccc4e:	48 8d 8d 30 e2 ff ff 	lea    rcx,[rbp-0x1dd0]
  7ccc55:	4c 89 19             	mov    QWORD PTR [rcx],r11
  7ccc58:	4c 89 49 08          	mov    QWORD PTR [rcx+0x8],r9
  7ccc5c:	48 89 71 10          	mov    QWORD PTR [rcx+0x10],rsi
  7ccc60:	48 8d b5 48 e2 ff ff 	lea    rsi,[rbp-0x1db8]
  7ccc67:	4c 89 2e             	mov    QWORD PTR [rsi],r13
  7ccc6a:	4c 89 6e 08          	mov    QWORD PTR [rsi+0x8],r13
  7ccc6e:	4c 89 5e 10          	mov    QWORD PTR [rsi+0x10],r11
  7ccc72:	e8 79 0b c4 ff       	call   40d7f0 <__kmpc_global_thread_num@plt>
  7ccc77:	89 85 98 e2 ff ff    	mov    DWORD PTR [rbp-0x1d68],eax
  7ccc7d:	bf a4 74 ab 00       	mov    edi,0xab74a4
  7ccc82:	33 c0                	xor    eax,eax
  7ccc84:	e8 97 0c c4 ff       	call   40d920 <__kmpc_ok_to_fork@plt>
  7ccc89:	85 c0                	test   eax,eax
  7ccc8b:	0f 84 24 03 00 00    	je     7ccfb5 <biology_mod_mp_biology_tile_+0xfa5>
  7ccc91:	48 81 c4 d0 fd ff ff 	add    rsp,0xfffffffffffffdd0
  7ccc98:	48 8d 85 fc e2 ff ff 	lea    rax,[rbp-0x1d04]
  7ccc9f:	ba 0c d3 7c 00       	mov    edx,0x7cd30c
  7ccca4:	4c 8d 50 04          	lea    r10,[rax+0x4]
  7ccca8:	4c 8d 5b 58          	lea    r11,[rbx+0x58]
  7cccac:	4d 8d 63 40          	lea    r12,[r11+0x40]
  7cccb0:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  7cccb4:	4c 8d 6b 40          	lea    r13,[rbx+0x40]
  7cccb8:	4c 89 54 24 08       	mov    QWORD PTR [rsp+0x8],r10
  7cccbd:	4c 8d 73 78          	lea    r14,[rbx+0x78]
  7cccc1:	4c 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],r11
  7cccc6:	4c 8d 7b 68          	lea    r15,[rbx+0x68]
  7cccca:	4c 89 64 24 18       	mov    QWORD PTR [rsp+0x18],r12
  7ccccf:	48 8d 43 70          	lea    rax,[rbx+0x70]
  7cccd3:	4c 89 6c 24 20       	mov    QWORD PTR [rsp+0x20],r13
  7cccd8:	49 8d 72 a8          	lea    rsi,[r10-0x58]
  7cccdc:	4c 89 74 24 28       	mov    QWORD PTR [rsp+0x28],r14
  7ccce1:	48 8d 78 10          	lea    rdi,[rax+0x10]
  7ccce5:	4c 89 7c 24 30       	mov    QWORD PTR [rsp+0x30],r15
  7cccea:	4c 8d 50 18          	lea    r10,[rax+0x18]
  7cccee:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  7cccf3:	4c 8d 9d e8 da ff ff 	lea    r11,[rbp-0x2518]
  7cccfa:	48 89 74 24 40       	mov    QWORD PTR [rsp+0x40],rsi
  7cccff:	4c 8d 66 d0          	lea    r12,[rsi-0x30]
  7ccd03:	48 89 7c 24 48       	mov    QWORD PTR [rsp+0x48],rdi
  7ccd08:	4c 8d 6e d8          	lea    r13,[rsi-0x28]
  7ccd0c:	4c 89 54 24 50       	mov    QWORD PTR [rsp+0x50],r10
  7ccd11:	4c 8d 76 e0          	lea    r14,[rsi-0x20]
  7ccd15:	4c 89 5c 24 58       	mov    QWORD PTR [rsp+0x58],r11
  7ccd1a:	4c 8d 7b 20          	lea    r15,[rbx+0x20]
  7ccd1e:	4c 89 64 24 60       	mov    QWORD PTR [rsp+0x60],r12
  7ccd23:	48 8d 43 28          	lea    rax,[rbx+0x28]
  7ccd27:	4c 89 6c 24 68       	mov    QWORD PTR [rsp+0x68],r13
  7ccd2c:	48 8d 73 50          	lea    rsi,[rbx+0x50]
  7ccd30:	4c 89 74 24 70       	mov    QWORD PTR [rsp+0x70],r14
  7ccd35:	49 8d 7b 68          	lea    rdi,[r11+0x68]
  7ccd39:	4c 89 7c 24 78       	mov    QWORD PTR [rsp+0x78],r15
  7ccd3e:	4d 8d 54 24 b8       	lea    r10,[r12-0x48]
  7ccd43:	4c 8d bc 24 80 00 00 	lea    r15,[rsp+0x80]
  7ccd4a:	00 
  7ccd4b:	49 89 07             	mov    QWORD PTR [r15],rax
  7ccd4e:	4c 8d 5b 48          	lea    r11,[rbx+0x48]
  7ccd52:	49 89 77 08          	mov    QWORD PTR [r15+0x8],rsi
  7ccd56:	4d 8d 64 24 40       	lea    r12,[r12+0x40]
  7ccd5b:	49 89 7f 10          	mov    QWORD PTR [r15+0x10],rdi
  7ccd5f:	4d 8d 6c 24 04       	lea    r13,[r12+0x4]
  7ccd64:	48 8d bc 24 98 00 00 	lea    rdi,[rsp+0x98]
  7ccd6b:	00 
  7ccd6c:	4c 89 17             	mov    QWORD PTR [rdi],r10
  7ccd6f:	4d 8d 74 24 24       	lea    r14,[r12+0x24]
  7ccd74:	4c 89 5f 08          	mov    QWORD PTR [rdi+0x8],r11
  7ccd78:	4d 8d 7c 24 f8       	lea    r15,[r12-0x8]
  7ccd7d:	4c 89 67 10          	mov    QWORD PTR [rdi+0x10],r12
  7ccd81:	49 8d 44 24 fc       	lea    rax,[r12-0x4]
  7ccd86:	4c 8d a4 24 b0 00 00 	lea    r12,[rsp+0xb0]
  7ccd8d:	00 
  7ccd8e:	4d 89 2c 24          	mov    QWORD PTR [r12],r13
  7ccd92:	48 8d 70 1c          	lea    rsi,[rax+0x1c]
  7ccd96:	4d 89 74 24 08       	mov    QWORD PTR [r12+0x8],r14
  7ccd9b:	48 8d 78 20          	lea    rdi,[rax+0x20]
  7ccd9f:	4d 89 7c 24 10       	mov    QWORD PTR [r12+0x10],r15
  7ccda4:	4c 8d 50 24          	lea    r10,[rax+0x24]
  7ccda8:	4c 8d bc 24 c8 00 00 	lea    r15,[rsp+0xc8]
  7ccdaf:	00 
  7ccdb0:	49 89 07             	mov    QWORD PTR [r15],rax
  7ccdb3:	4c 8d 58 14          	lea    r11,[rax+0x14]
  7ccdb7:	49 89 77 08          	mov    QWORD PTR [r15+0x8],rsi
  7ccdbb:	4c 8d 60 18          	lea    r12,[rax+0x18]
  7ccdbf:	49 89 7f 10          	mov    QWORD PTR [r15+0x10],rdi
  7ccdc3:	4c 8d 68 0c          	lea    r13,[rax+0xc]
  7ccdc7:	48 8d bc 24 e0 00 00 	lea    rdi,[rsp+0xe0]
  7ccdce:	00 
  7ccdcf:	4c 89 17             	mov    QWORD PTR [rdi],r10
  7ccdd2:	4c 8d 70 10          	lea    r14,[rax+0x10]
  7ccdd6:	4c 89 5f 08          	mov    QWORD PTR [rdi+0x8],r11
  7ccdda:	4c 8d 78 2c          	lea    r15,[rax+0x2c]
  7ccdde:	4c 89 67 10          	mov    QWORD PTR [rdi+0x10],r12
  7ccde2:	48 8d 40 30          	lea    rax,[rax+0x30]
  7ccde6:	4c 8d a4 24 f8 00 00 	lea    r12,[rsp+0xf8]
  7ccded:	00 
  7ccdee:	4d 89 2c 24          	mov    QWORD PTR [r12],r13
  7ccdf2:	48 8d 70 04          	lea    rsi,[rax+0x4]
  7ccdf6:	4d 89 74 24 08       	mov    QWORD PTR [r12+0x8],r14
  7ccdfb:	48 8d 78 08          	lea    rdi,[rax+0x8]
  7ccdff:	4d 89 7c 24 10       	mov    QWORD PTR [r12+0x10],r15
  7cce04:	4c 8d 50 14          	lea    r10,[rax+0x14]
  7cce08:	4c 8d bc 24 10 01 00 	lea    r15,[rsp+0x110]
  7cce0f:	00 
  7cce10:	49 89 07             	mov    QWORD PTR [r15],rax
  7cce13:	4c 8d 58 10          	lea    r11,[rax+0x10]
  7cce17:	49 89 77 08          	mov    QWORD PTR [r15+0x8],rsi
  7cce1b:	4c 8d 60 0c          	lea    r12,[rax+0xc]
  7cce1f:	49 89 7f 10          	mov    QWORD PTR [r15+0x10],rdi
  7cce23:	4c 8d ad 98 e1 ff ff 	lea    r13,[rbp-0x1e68]
  7cce2a:	48 8d bc 24 28 01 00 	lea    rdi,[rsp+0x128]
  7cce31:	00 
  7cce32:	4c 89 17             	mov    QWORD PTR [rdi],r10
  7cce35:	4d 8d 75 b8          	lea    r14,[r13-0x48]
  7cce39:	4c 89 5f 08          	mov    QWORD PTR [rdi+0x8],r11
  7cce3d:	4d 8d 7e b8          	lea    r15,[r14-0x48]
  7cce41:	4c 89 67 10          	mov    QWORD PTR [rdi+0x10],r12
  7cce45:	49 8d 47 b8          	lea    rax,[r15-0x48]
  7cce49:	4c 8d a4 24 40 01 00 	lea    r12,[rsp+0x140]
  7cce50:	00 
  7cce51:	4d 89 2c 24          	mov    QWORD PTR [r12],r13
  7cce55:	48 8d 70 b8          	lea    rsi,[rax-0x48]
  7cce59:	4d 89 74 24 08       	mov    QWORD PTR [r12+0x8],r14
  7cce5e:	49 8d 7d 48          	lea    rdi,[r13+0x48]
  7cce62:	4d 89 7c 24 10       	mov    QWORD PTR [r12+0x10],r15
  7cce67:	4c 8d 95 48 d9 ff ff 	lea    r10,[rbp-0x26b8]
  7cce6e:	4c 8d bc 24 58 01 00 	lea    r15,[rsp+0x158]
  7cce75:	00 
  7cce76:	49 89 07             	mov    QWORD PTR [r15],rax
  7cce79:	4d 8d 5a 88          	lea    r11,[r10-0x78]
  7cce7d:	49 89 77 08          	mov    QWORD PTR [r15+0x8],rsi
  7cce81:	4c 8d a5 88 df ff ff 	lea    r12,[rbp-0x2078]
  7cce88:	49 89 7f 10          	mov    QWORD PTR [r15+0x10],rdi
  7cce8c:	4d 8d 6c 24 a0       	lea    r13,[r12-0x60]
  7cce91:	48 8d bc 24 70 01 00 	lea    rdi,[rsp+0x170]
  7cce98:	00 
  7cce99:	4c 89 17             	mov    QWORD PTR [rdi],r10
  7cce9c:	4d 8d 75 a0          	lea    r14,[r13-0x60]
  7ccea0:	4c 89 5f 08          	mov    QWORD PTR [rdi+0x8],r11
  7ccea4:	4d 8d 7e a0          	lea    r15,[r14-0x60]
  7ccea8:	4c 89 67 10          	mov    QWORD PTR [rdi+0x10],r12
  7cceac:	49 8d 47 a0          	lea    rax,[r15-0x60]
  7cceb0:	4c 8d a4 24 88 01 00 	lea    r12,[rsp+0x188]
  7cceb7:	00 
  7cceb8:	4d 89 2c 24          	mov    QWORD PTR [r12],r13
  7ccebc:	48 8d 70 a0          	lea    rsi,[rax-0x60]
  7ccec0:	4d 89 74 24 08       	mov    QWORD PTR [r12+0x8],r14
  7ccec5:	48 8d 7e a0          	lea    rdi,[rsi-0x60]
  7ccec9:	4d 89 7c 24 10       	mov    QWORD PTR [r12+0x10],r15
  7ccece:	4c 8d 57 a0          	lea    r10,[rdi-0x60]
  7cced2:	4c 8d bc 24 a0 01 00 	lea    r15,[rsp+0x1a0]
  7cced9:	00 
  7cceda:	49 89 07             	mov    QWORD PTR [r15],rax
  7ccedd:	4c 8d 9d 30 e0 ff ff 	lea    r11,[rbp-0x1fd0]
  7ccee4:	49 89 77 08          	mov    QWORD PTR [r15+0x8],rsi
  7ccee8:	4c 8d a5 58 d8 ff ff 	lea    r12,[rbp-0x27a8]
  7cceef:	49 89 7f 10          	mov    QWORD PTR [r15+0x10],rdi
  7ccef3:	4d 8d 6c 24 88       	lea    r13,[r12-0x78]
  7ccef8:	48 8d bc 24 b8 01 00 	lea    rdi,[rsp+0x1b8]
  7cceff:	00 
  7ccf00:	4c 89 17             	mov    QWORD PTR [rdi],r10
  7ccf03:	4d 8d 75 88          	lea    r14,[r13-0x78]
  7ccf07:	4c 89 5f 08          	mov    QWORD PTR [rdi+0x8],r11
  7ccf0b:	4d 8d 7e 88          	lea    r15,[r14-0x78]
  7ccf0f:	4c 89 67 10          	mov    QWORD PTR [rdi+0x10],r12
  7ccf13:	49 8d 42 a0          	lea    rax,[r10-0x60]
  7ccf17:	4c 8d 94 24 d0 01 00 	lea    r10,[rsp+0x1d0]
  7ccf1e:	00 
  7ccf1f:	4d 89 2a             	mov    QWORD PTR [r10],r13
  7ccf22:	49 8d 73 b8          	lea    rsi,[r11-0x48]
  7ccf26:	4d 89 72 08          	mov    QWORD PTR [r10+0x8],r14
  7ccf2a:	48 8d 78 a0          	lea    rdi,[rax-0x60]
  7ccf2e:	4d 89 7a 10          	mov    QWORD PTR [r10+0x10],r15
  7ccf32:	4c 8d 57 a0          	lea    r10,[rdi-0x60]
  7ccf36:	4c 8d bc 24 e8 01 00 	lea    r15,[rsp+0x1e8]
  7ccf3d:	00 
  7ccf3e:	49 89 07             	mov    QWORD PTR [r15],rax
  7ccf41:	48 8d 8d 04 e3 ff ff 	lea    rcx,[rbp-0x1cfc]
  7ccf48:	48 8d 84 24 f0 01 00 	lea    rax,[rsp+0x1f0]
  7ccf4f:	00 
  7ccf50:	48 89 30             	mov    QWORD PTR [rax],rsi
  7ccf53:	4c 8d 41 04          	lea    r8,[rcx+0x4]
  7ccf57:	48 89 78 08          	mov    QWORD PTR [rax+0x8],rdi
  7ccf5b:	4c 8d 8d e0 da ff ff 	lea    r9,[rbp-0x2520]
  7ccf62:	4c 89 50 10          	mov    QWORD PTR [rax+0x10],r10
  7ccf66:	4d 8d 5a a0          	lea    r11,[r10-0x60]
  7ccf6a:	bf a4 74 ab 00       	mov    edi,0xab74a4
  7ccf6f:	be 49 00 00 00       	mov    esi,0x49
  7ccf74:	33 c0                	xor    eax,eax
  7ccf76:	4d 8d 61 10          	lea    r12,[r9+0x10]
  7ccf7a:	4d 89 5f 20          	mov    QWORD PTR [r15+0x20],r11
  7ccf7e:	4d 8d 69 a0          	lea    r13,[r9-0x60]
  7ccf82:	4d 89 67 28          	mov    QWORD PTR [r15+0x28],r12
  7ccf86:	4d 8d 75 a0          	lea    r14,[r13-0x60]
  7ccf8a:	4c 8d a4 24 18 02 00 	lea    r12,[rsp+0x218]
  7ccf91:	00 
  7ccf92:	4d 89 2c 24          	mov    QWORD PTR [r12],r13
  7ccf96:	4d 8d 7e a0          	lea    r15,[r14-0x60]
  7ccf9a:	4d 89 74 24 08       	mov    QWORD PTR [r12+0x8],r14
  7ccf9f:	4d 89 7c 24 10       	mov    QWORD PTR [r12+0x10],r15
  7ccfa4:	e8 c7 07 c4 ff       	call   40d770 <__kmpc_fork_call@plt>
  7ccfa9:	48 81 c4 30 02 00 00 	add    rsp,0x230
  7ccfb0:	e9 2b 03 00 00       	jmp    7cd2e0 <biology_mod_mp_biology_tile_+0x12d0>
  7ccfb5:	bf a4 74 ab 00       	mov    edi,0xab74a4
  7ccfba:	33 c0                	xor    eax,eax
  7ccfbc:	8b b5 98 e2 ff ff    	mov    esi,DWORD PTR [rbp-0x1d68]
  7ccfc2:	e8 49 09 c4 ff       	call   40d910 <__kmpc_serialized_parallel@plt>
  7ccfc7:	48 81 c4 d0 fd ff ff 	add    rsp,0xfffffffffffffdd0
  7ccfce:	48 8d 85 00 e3 ff ff 	lea    rax,[rbp-0x1d00]
  7ccfd5:	be 8c 11 be 00       	mov    esi,0xbe118c
  7ccfda:	4c 8d 53 58          	lea    r10,[rbx+0x58]
  7ccfde:	4d 8d 5a 40          	lea    r11,[r10+0x40]
  7ccfe2:	4c 8d 63 40          	lea    r12,[rbx+0x40]
  7ccfe6:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  7ccfea:	4c 8d 6b 78          	lea    r13,[rbx+0x78]
  7ccfee:	4c 89 54 24 08       	mov    QWORD PTR [rsp+0x8],r10
  7ccff3:	4c 8d 73 68          	lea    r14,[rbx+0x68]
  7ccff7:	4c 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],r11
  7ccffc:	4c 8d 7b 70          	lea    r15,[rbx+0x70]
  7cd000:	4c 89 64 24 18       	mov    QWORD PTR [rsp+0x18],r12
  7cd005:	48 8d 40 a8          	lea    rax,[rax-0x58]
  7cd009:	4c 89 6c 24 20       	mov    QWORD PTR [rsp+0x20],r13
  7cd00e:	4d 8d 52 28          	lea    r10,[r10+0x28]
  7cd012:	4c 89 74 24 28       	mov    QWORD PTR [rsp+0x28],r14
  7cd017:	4d 8d 5a 08          	lea    r11,[r10+0x8]
  7cd01b:	4c 89 7c 24 30       	mov    QWORD PTR [rsp+0x30],r15
  7cd020:	4c 8d a5 e8 da ff ff 	lea    r12,[rbp-0x2518]
  7cd027:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  7cd02c:	4c 8d 68 d0          	lea    r13,[rax-0x30]
  7cd030:	4c 89 54 24 40       	mov    QWORD PTR [rsp+0x40],r10
  7cd035:	4c 8d 70 d8          	lea    r14,[rax-0x28]
  7cd039:	4c 89 5c 24 48       	mov    QWORD PTR [rsp+0x48],r11
  7cd03e:	4c 8d 78 e0          	lea    r15,[rax-0x20]
  7cd042:	4c 89 64 24 50       	mov    QWORD PTR [rsp+0x50],r12
  7cd047:	48 8d 43 20          	lea    rax,[rbx+0x20]
  7cd04b:	4c 89 6c 24 58       	mov    QWORD PTR [rsp+0x58],r13
  7cd050:	4c 8d 53 28          	lea    r10,[rbx+0x28]
  7cd054:	4c 89 74 24 60       	mov    QWORD PTR [rsp+0x60],r14
  7cd059:	4c 8d 5b 50          	lea    r11,[rbx+0x50]
  7cd05d:	4c 89 7c 24 68       	mov    QWORD PTR [rsp+0x68],r15
  7cd062:	4d 8d 64 24 68       	lea    r12,[r12+0x68]
  7cd067:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
  7cd06c:	4d 8d 6d b8          	lea    r13,[r13-0x48]
  7cd070:	48 8d 44 24 78       	lea    rax,[rsp+0x78]
  7cd075:	4c 89 10             	mov    QWORD PTR [rax],r10
  7cd078:	4c 8d 73 48          	lea    r14,[rbx+0x48]
  7cd07c:	4c 89 58 08          	mov    QWORD PTR [rax+0x8],r11
  7cd080:	4d 8d 7f 30          	lea    r15,[r15+0x30]
  7cd084:	4c 89 60 10          	mov    QWORD PTR [rax+0x10],r12
  7cd088:	49 8d 47 04          	lea    rax,[r15+0x4]
  7cd08c:	4c 8d a4 24 90 00 00 	lea    r12,[rsp+0x90]
  7cd093:	00 
  7cd094:	4d 89 2c 24          	mov    QWORD PTR [r12],r13
  7cd098:	4c 8d 50 20          	lea    r10,[rax+0x20]
  7cd09c:	4d 89 74 24 08       	mov    QWORD PTR [r12+0x8],r14
  7cd0a1:	4c 8d 58 f4          	lea    r11,[rax-0xc]
  7cd0a5:	4d 89 7c 24 10       	mov    QWORD PTR [r12+0x10],r15
  7cd0aa:	4c 8d 60 f8          	lea    r12,[rax-0x8]
  7cd0ae:	4c 8d bc 24 a8 00 00 	lea    r15,[rsp+0xa8]
  7cd0b5:	00 
  7cd0b6:	49 89 07             	mov    QWORD PTR [r15],rax
  7cd0b9:	4c 8d 68 14          	lea    r13,[rax+0x14]
  7cd0bd:	4d 89 57 08          	mov    QWORD PTR [r15+0x8],r10
  7cd0c1:	4c 8d 70 18          	lea    r14,[rax+0x18]
  7cd0c5:	4d 89 5f 10          	mov    QWORD PTR [r15+0x10],r11
  7cd0c9:	4c 8d 78 1c          	lea    r15,[rax+0x1c]
  7cd0cd:	4c 8d 9c 24 c0 00 00 	lea    r11,[rsp+0xc0]
  7cd0d4:	00 
  7cd0d5:	4d 89 23             	mov    QWORD PTR [r11],r12
  7cd0d8:	48 8d 40 0c          	lea    rax,[rax+0xc]
  7cd0dc:	4d 89 6b 08          	mov    QWORD PTR [r11+0x8],r13
  7cd0e0:	4c 8d 50 04          	lea    r10,[rax+0x4]
  7cd0e4:	4d 89 73 10          	mov    QWORD PTR [r11+0x10],r14
  7cd0e8:	4c 8d 58 f8          	lea    r11,[rax-0x8]
  7cd0ec:	4c 8d b4 24 d8 00 00 	lea    r14,[rsp+0xd8]
  7cd0f3:	00 
  7cd0f4:	4d 89 3e             	mov    QWORD PTR [r14],r15
  7cd0f7:	4c 8d 60 fc          	lea    r12,[rax-0x4]
  7cd0fb:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  7cd0ff:	4c 8d 68 18          	lea    r13,[rax+0x18]
  7cd103:	4d 89 56 10          	mov    QWORD PTR [r14+0x10],r10
  7cd107:	4c 8d 70 1c          	lea    r14,[rax+0x1c]
  7cd10b:	4c 8d 94 24 f0 00 00 	lea    r10,[rsp+0xf0]
  7cd112:	00 
  7cd113:	4d 89 1a             	mov    QWORD PTR [r10],r11
  7cd116:	4c 8d 78 20          	lea    r15,[rax+0x20]
  7cd11a:	4d 89 62 08          	mov    QWORD PTR [r10+0x8],r12
  7cd11e:	48 8d 40 24          	lea    rax,[rax+0x24]
  7cd122:	4d 89 6a 10          	mov    QWORD PTR [r10+0x10],r13
  7cd126:	4c 8d 50 0c          	lea    r10,[rax+0xc]
  7cd12a:	4c 8d ac 24 08 01 00 	lea    r13,[rsp+0x108]
  7cd131:	00 
  7cd132:	4d 89 75 00          	mov    QWORD PTR [r13+0x0],r14
  7cd136:	4c 8d 58 08          	lea    r11,[rax+0x8]
  7cd13a:	4d 89 7d 08          	mov    QWORD PTR [r13+0x8],r15
  7cd13e:	4c 8d 60 04          	lea    r12,[rax+0x4]
  7cd142:	49 89 45 10          	mov    QWORD PTR [r13+0x10],rax
  7cd146:	4c 8d ad 98 e1 ff ff 	lea    r13,[rbp-0x1e68]
  7cd14d:	48 8d 84 24 20 01 00 	lea    rax,[rsp+0x120]
  7cd154:	00 
  7cd155:	4c 89 10             	mov    QWORD PTR [rax],r10
  7cd158:	4d 8d 75 b8          	lea    r14,[r13-0x48]
  7cd15c:	4c 89 58 08          	mov    QWORD PTR [rax+0x8],r11
  7cd160:	4d 8d 7e b8          	lea    r15,[r14-0x48]
  7cd164:	4c 89 60 10          	mov    QWORD PTR [rax+0x10],r12
  7cd168:	49 8d 47 b8          	lea    rax,[r15-0x48]
  7cd16c:	4c 8d a4 24 38 01 00 	lea    r12,[rsp+0x138]
  7cd173:	00 
  7cd174:	4d 89 2c 24          	mov    QWORD PTR [r12],r13
  7cd178:	4c 8d 50 b8          	lea    r10,[rax-0x48]
  7cd17c:	4d 89 74 24 08       	mov    QWORD PTR [r12+0x8],r14
  7cd181:	4d 8d 5d 48          	lea    r11,[r13+0x48]
  7cd185:	4d 89 7c 24 10       	mov    QWORD PTR [r12+0x10],r15
  7cd18a:	4c 8d a5 48 d9 ff ff 	lea    r12,[rbp-0x26b8]
  7cd191:	4c 8d bc 24 50 01 00 	lea    r15,[rsp+0x150]
  7cd198:	00 
  7cd199:	49 89 07             	mov    QWORD PTR [r15],rax
  7cd19c:	4d 8d 6c 24 88       	lea    r13,[r12-0x78]
  7cd1a1:	4d 89 57 08          	mov    QWORD PTR [r15+0x8],r10
  7cd1a5:	4c 8d b5 88 df ff ff 	lea    r14,[rbp-0x2078]
  7cd1ac:	4d 89 5f 10          	mov    QWORD PTR [r15+0x10],r11
  7cd1b0:	4d 8d 7e a0          	lea    r15,[r14-0x60]
  7cd1b4:	4c 8d 9c 24 68 01 00 	lea    r11,[rsp+0x168]
  7cd1bb:	00 
  7cd1bc:	4d 89 23             	mov    QWORD PTR [r11],r12
  7cd1bf:	49 8d 47 a0          	lea    rax,[r15-0x60]
  7cd1c3:	4d 89 6b 08          	mov    QWORD PTR [r11+0x8],r13
  7cd1c7:	4c 8d 50 a0          	lea    r10,[rax-0x60]
  7cd1cb:	4d 89 73 10          	mov    QWORD PTR [r11+0x10],r14
  7cd1cf:	4d 8d 5a a0          	lea    r11,[r10-0x60]
  7cd1d3:	4c 8d b4 24 80 01 00 	lea    r14,[rsp+0x180]
  7cd1da:	00 
  7cd1db:	4d 89 3e             	mov    QWORD PTR [r14],r15
  7cd1de:	4d 8d 63 a0          	lea    r12,[r11-0x60]
  7cd1e2:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  7cd1e6:	4d 8d 6c 24 a0       	lea    r13,[r12-0x60]
  7cd1eb:	4d 89 56 10          	mov    QWORD PTR [r14+0x10],r10
  7cd1ef:	4d 8d 75 a0          	lea    r14,[r13-0x60]
  7cd1f3:	4c 8d 94 24 98 01 00 	lea    r10,[rsp+0x198]
  7cd1fa:	00 
  7cd1fb:	4d 89 1a             	mov    QWORD PTR [r10],r11
  7cd1fe:	4c 8d bd 30 e0 ff ff 	lea    r15,[rbp-0x1fd0]
  7cd205:	4d 89 62 08          	mov    QWORD PTR [r10+0x8],r12
  7cd209:	48 8d 85 58 d8 ff ff 	lea    rax,[rbp-0x27a8]
  7cd210:	4d 89 6a 10          	mov    QWORD PTR [r10+0x10],r13
  7cd214:	4c 8d 50 88          	lea    r10,[rax-0x78]
  7cd218:	4c 8d ac 24 b0 01 00 	lea    r13,[rsp+0x1b0]
  7cd21f:	00 
  7cd220:	4d 89 75 00          	mov    QWORD PTR [r13+0x0],r14
  7cd224:	4d 8d 5a 88          	lea    r11,[r10-0x78]
  7cd228:	4d 89 7d 08          	mov    QWORD PTR [r13+0x8],r15
  7cd22c:	4d 8d 63 88          	lea    r12,[r11-0x78]
  7cd230:	49 89 45 10          	mov    QWORD PTR [r13+0x10],rax
  7cd234:	4d 8d 6e a0          	lea    r13,[r14-0x60]
  7cd238:	48 8d 84 24 c8 01 00 	lea    rax,[rsp+0x1c8]
  7cd23f:	00 
  7cd240:	4c 89 10             	mov    QWORD PTR [rax],r10
  7cd243:	4d 8d 77 b8          	lea    r14,[r15-0x48]
  7cd247:	4c 89 58 08          	mov    QWORD PTR [rax+0x8],r11
  7cd24b:	4d 8d 7d a0          	lea    r15,[r13-0x60]
  7cd24f:	4c 89 60 10          	mov    QWORD PTR [rax+0x10],r12
  7cd253:	49 8d 47 a0          	lea    rax,[r15-0x60]
  7cd257:	4c 8d a4 24 e0 01 00 	lea    r12,[rsp+0x1e0]
  7cd25e:	00 
  7cd25f:	4d 89 2c 24          	mov    QWORD PTR [r12],r13
  7cd263:	48 8d bd 98 e2 ff ff 	lea    rdi,[rbp-0x1d68]
  7cd26a:	4d 89 74 24 08       	mov    QWORD PTR [r12+0x8],r14
  7cd26f:	48 8d 57 6c          	lea    rdx,[rdi+0x6c]
  7cd273:	4d 89 7c 24 10       	mov    QWORD PTR [r12+0x10],r15
  7cd278:	48 8d 4a 04          	lea    rcx,[rdx+0x4]
  7cd27c:	4c 8d bc 24 f8 01 00 	lea    r15,[rsp+0x1f8]
  7cd283:	00 
  7cd284:	49 89 07             	mov    QWORD PTR [r15],rax
  7cd287:	4c 8d 85 e0 da ff ff 	lea    r8,[rbp-0x2520]
  7cd28e:	4c 8d 4a f8          	lea    r9,[rdx-0x8]
  7cd292:	4c 8d 50 a0          	lea    r10,[rax-0x60]
  7cd296:	4d 89 57 08          	mov    QWORD PTR [r15+0x8],r10
  7cd29a:	4d 8d 58 10          	lea    r11,[r8+0x10]
  7cd29e:	4d 89 5f 10          	mov    QWORD PTR [r15+0x10],r11
  7cd2a2:	4d 8d 60 a0          	lea    r12,[r8-0x60]
  7cd2a6:	4c 8d 9c 24 10 02 00 	lea    r11,[rsp+0x210]
  7cd2ad:	00 
  7cd2ae:	4d 89 23             	mov    QWORD PTR [r11],r12
  7cd2b1:	4d 8d 6c 24 a0       	lea    r13,[r12-0x60]
  7cd2b6:	4d 89 6b 08          	mov    QWORD PTR [r11+0x8],r13
  7cd2ba:	4d 8d 75 a0          	lea    r14,[r13-0x60]
  7cd2be:	4d 89 73 10          	mov    QWORD PTR [r11+0x10],r14
  7cd2c2:	e8 45 00 00 00       	call   7cd30c <biology_mod_mp_biology_tile_+0x12fc>
  7cd2c7:	48 81 c4 30 02 00 00 	add    rsp,0x230
  7cd2ce:	bf a4 74 ab 00       	mov    edi,0xab74a4
  7cd2d3:	33 c0                	xor    eax,eax
  7cd2d5:	8b b5 98 e2 ff ff    	mov    esi,DWORD PTR [rbp-0x1d68]
  7cd2db:	e8 80 09 c4 ff       	call   40dc60 <__kmpc_end_serialized_parallel@plt>
  7cd2e0:	48 8b 85 90 e2 ff ff 	mov    rax,QWORD PTR [rbp-0x1d70]
  7cd2e7:	48 89 c4             	mov    rsp,rax
  7cd2ea:	4c 8b bd 28 e2 ff ff 	mov    r15,QWORD PTR [rbp-0x1dd8]
  7cd2f1:	4c 8b b5 60 e2 ff ff 	mov    r14,QWORD PTR [rbp-0x1da0]
  7cd2f8:	4c 8b ad 68 e2 ff ff 	mov    r13,QWORD PTR [rbp-0x1d98]
  7cd2ff:	4c 8b a5 70 e2 ff ff 	mov    r12,QWORD PTR [rbp-0x1d90]
  7cd306:	c9                   	leave  
  7cd307:	48 89 dc             	mov    rsp,rbx
  7cd30a:	5b                   	pop    rbx
  7cd30b:	c3                   	ret    
  7cd30c:	53                   	push   rbx
  7cd30d:	48 89 e3             	mov    rbx,rsp
  7cd310:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
  7cd314:	55                   	push   rbp
  7cd315:	55                   	push   rbp
  7cd316:	48 8b 6b 08          	mov    rbp,QWORD PTR [rbx+0x8]
  7cd31a:	48 89 6c 24 08       	mov    QWORD PTR [rsp+0x8],rbp
  7cd31f:	48 89 e5             	mov    rbp,rsp
  7cd322:	48 81 ec 10 29 00 00 	sub    rsp,0x2910
  7cd329:	4c 89 ad 68 e2 ff ff 	mov    QWORD PTR [rbp-0x1d98],r13
  7cd330:	4c 8b 6b 38          	mov    r13,QWORD PTR [rbx+0x38]
  7cd334:	4c 89 bd 28 e2 ff ff 	mov    QWORD PTR [rbp-0x1dd8],r15
  7cd33b:	4c 8b 7b 28          	mov    r15,QWORD PTR [rbx+0x28]
  7cd33f:	4c 89 85 80 ea ff ff 	mov    QWORD PTR [rbp-0x1580],r8
  7cd346:	49 89 c8             	mov    r8,rcx
  7cd349:	48 8b 4b 20          	mov    rcx,QWORD PTR [rbx+0x20]
  7cd34d:	4c 89 a5 70 e2 ff ff 	mov    QWORD PTR [rbp-0x1d90],r12
  7cd354:	4c 8b 63 30          	mov    r12,QWORD PTR [rbx+0x30]
  7cd358:	4d 8b 6d 00          	mov    r13,QWORD PTR [r13+0x0]
  7cd35c:	4c 8b 5b 48          	mov    r11,QWORD PTR [rbx+0x48]
  7cd360:	4c 89 ad e0 dc ff ff 	mov    QWORD PTR [rbp-0x2320],r13
  7cd367:	4d 8b 2f             	mov    r13,QWORD PTR [r15]
  7cd36a:	48 8b 43 50          	mov    rax,QWORD PTR [rbx+0x50]
  7cd36e:	4c 8b 39             	mov    r15,QWORD PTR [rcx]
  7cd371:	4c 89 b5 60 e2 ff ff 	mov    QWORD PTR [rbp-0x1da0],r14
  7cd378:	4d 8b 24 24          	mov    r12,QWORD PTR [r12]
  7cd37c:	4c 8b 73 18          	mov    r14,QWORD PTR [rbx+0x18]
  7cd380:	4c 89 bd 38 e2 ff ff 	mov    QWORD PTR [rbp-0x1dc8],r15
  7cd387:	44 8b 3a             	mov    r15d,DWORD PTR [rdx]
  7cd38a:	4c 89 a5 d0 dc ff ff 	mov    QWORD PTR [rbp-0x2330],r12
  7cd391:	48 8b 53 58          	mov    rdx,QWORD PTR [rbx+0x58]
  7cd395:	4c 89 8d 88 ea ff ff 	mov    QWORD PTR [rbp-0x1578],r9
  7cd39c:	c4 c1 7b 10 03       	vmovsd xmm0,QWORD PTR [r11]
  7cd3a1:	45 8b 20             	mov    r12d,DWORD PTR [r8]
  7cd3a4:	4c 8b 4b 40          	mov    r9,QWORD PTR [rbx+0x40]
  7cd3a8:	4c 8b 43 60          	mov    r8,QWORD PTR [rbx+0x60]
  7cd3ac:	44 8b 1f             	mov    r11d,DWORD PTR [rdi]
  7cd3af:	48 8b 7b 78          	mov    rdi,QWORD PTR [rbx+0x78]
  7cd3b3:	48 8b 30             	mov    rsi,QWORD PTR [rax]
  7cd3b6:	48 8b 43 68          	mov    rax,QWORD PTR [rbx+0x68]
  7cd3ba:	4c 8b 53 10          	mov    r10,QWORD PTR [rbx+0x10]
  7cd3be:	4d 8b 36             	mov    r14,QWORD PTR [r14]
  7cd3c1:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  7cd3c4:	4c 89 95 78 ea ff ff 	mov    QWORD PTR [rbp-0x1588],r10
  7cd3cb:	4c 89 b5 f8 dc ff ff 	mov    QWORD PTR [rbp-0x2308],r14
  7cd3d2:	4d 8b 11             	mov    r10,QWORD PTR [r9]
  7cd3d5:	4d 8b 30             	mov    r14,QWORD PTR [r8]
  7cd3d8:	4c 8b 07             	mov    r8,QWORD PTR [rdi]
  7cd3db:	4c 8b 8b 80 00 00 00 	mov    r9,QWORD PTR [rbx+0x80]
  7cd3e2:	48 89 8d e8 dc ff ff 	mov    QWORD PTR [rbp-0x2318],rcx
  7cd3e9:	48 8b 4b 70          	mov    rcx,QWORD PTR [rbx+0x70]
  7cd3ed:	44 89 9d 10 e7 ff ff 	mov    DWORD PTR [rbp-0x18f0],r11d
  7cd3f4:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  7cd3f7:	4c 89 85 58 ea ff ff 	mov    QWORD PTR [rbp-0x15a8],r8
  7cd3fe:	4c 8d 83 88 00 00 00 	lea    r8,[rbx+0x88]
  7cd405:	4d 8b 18             	mov    r11,QWORD PTR [r8]
  7cd408:	49 8b 40 08          	mov    rax,QWORD PTR [r8+0x8]
  7cd40c:	4d 8b 40 28          	mov    r8,QWORD PTR [r8+0x28]
  7cd410:	48 8b bb a8 00 00 00 	mov    rdi,QWORD PTR [rbx+0xa8]
  7cd417:	4c 89 95 d8 dc ff ff 	mov    QWORD PTR [rbp-0x2328],r10
  7cd41e:	4d 8b 11             	mov    r10,QWORD PTR [r9]
  7cd421:	48 89 b5 f0 dc ff ff 	mov    QWORD PTR [rbp-0x2310],rsi
  7cd428:	48 8b 31             	mov    rsi,QWORD PTR [rcx]
  7cd42b:	4c 89 b5 70 ea ff ff 	mov    QWORD PTR [rbp-0x1590],r14
  7cd432:	48 89 95 68 ea ff ff 	mov    QWORD PTR [rbp-0x1598],rdx
  7cd439:	48 8b 8b 98 00 00 00 	mov    rcx,QWORD PTR [rbx+0x98]
  7cd440:	4c 89 95 98 ea ff ff 	mov    QWORD PTR [rbp-0x1568],r10
  7cd447:	4d 8b 33             	mov    r14,QWORD PTR [r11]
  7cd44a:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  7cd44d:	4d 63 08             	movsxd r9,DWORD PTR [r8]
  7cd450:	4c 8d 83 b8 00 00 00 	lea    r8,[rbx+0xb8]
  7cd457:	4d 8b 10             	mov    r10,QWORD PTR [r8]
  7cd45a:	49 8b 40 10          	mov    rax,QWORD PTR [r8+0x10]
  7cd45e:	48 89 8d 18 e7 ff ff 	mov    QWORD PTR [rbp-0x18e8],rcx
  7cd465:	4c 89 b5 50 ea ff ff 	mov    QWORD PTR [rbp-0x15b0],r14
  7cd46c:	49 8b 48 18          	mov    rcx,QWORD PTR [r8+0x18]
  7cd470:	4c 8b 37             	mov    r14,QWORD PTR [rdi]
  7cd473:	4c 89 8d a8 ea ff ff 	mov    QWORD PTR [rbp-0x1558],r9
  7cd47a:	49 8b 78 38          	mov    rdi,QWORD PTR [r8+0x38]
  7cd47e:	4d 8b 48 48          	mov    r9,QWORD PTR [r8+0x48]
  7cd482:	48 89 b5 60 ea ff ff 	mov    QWORD PTR [rbp-0x15a0],rsi
  7cd489:	49 8b 70 e8          	mov    rsi,QWORD PTR [r8-0x18]
  7cd48d:	48 89 95 48 ea ff ff 	mov    QWORD PTR [rbp-0x15b8],rdx
  7cd494:	4d 63 1a             	movsxd r11,DWORD PTR [r10]
  7cd497:	48 63 10             	movsxd rdx,DWORD PTR [rax]
  7cd49a:	48 8b 83 50 01 00 00 	mov    rax,QWORD PTR [rbx+0x150]
  7cd4a1:	48 89 b5 20 e7 ff ff 	mov    QWORD PTR [rbp-0x18e0],rsi
  7cd4a8:	48 63 31             	movsxd rsi,DWORD PTR [rcx]
  7cd4ab:	4c 89 9d a0 ea ff ff 	mov    QWORD PTR [rbp-0x1560],r11
  7cd4b2:	4c 63 07             	movsxd r8,DWORD PTR [rdi]
  7cd4b5:	4d 63 11             	movsxd r10,DWORD PTR [r9]
  7cd4b8:	4c 8d 8b 48 01 00 00 	lea    r9,[rbx+0x148]
  7cd4bf:	4d 8b 19             	mov    r11,QWORD PTR [r9]
  7cd4c2:	48 89 85 f8 d6 ff ff 	mov    QWORD PTR [rbp-0x2908],rax
  7cd4c9:	49 8b 79 28          	mov    rdi,QWORD PTR [r9+0x28]
  7cd4cd:	49 8b 41 50          	mov    rax,QWORD PTR [r9+0x50]
  7cd4d1:	48 89 b5 40 e2 ff ff 	mov    QWORD PTR [rbp-0x1dc0],rsi
  7cd4d8:	49 8b 71 20          	mov    rsi,QWORD PTR [r9+0x20]
  7cd4dc:	48 89 95 48 e2 ff ff 	mov    QWORD PTR [rbp-0x1db8],rdx
  7cd4e3:	4c 89 85 a0 e9 ff ff 	mov    QWORD PTR [rbp-0x1660],r8
  7cd4ea:	4c 89 95 90 ea ff ff 	mov    QWORD PTR [rbp-0x1570],r10
  7cd4f1:	4c 89 9d f0 d6 ff ff 	mov    QWORD PTR [rbp-0x2910],r11
  7cd4f8:	4c 8d 9b 58 01 00 00 	lea    r11,[rbx+0x158]
  7cd4ff:	49 8b 13             	mov    rdx,QWORD PTR [r11]
  7cd502:	49 8b 4b 08          	mov    rcx,QWORD PTR [r11+0x8]
  7cd506:	4d 8b 43 20          	mov    r8,QWORD PTR [r11+0x20]
  7cd50a:	4d 8b 4b 28          	mov    r9,QWORD PTR [r11+0x28]
  7cd50e:	4d 8b 53 30          	mov    r10,QWORD PTR [r11+0x30]
  7cd512:	4d 8b 5b 38          	mov    r11,QWORD PTR [r11+0x38]
  7cd516:	48 89 bd 80 db ff ff 	mov    QWORD PTR [rbp-0x2480],rdi
  7cd51d:	48 89 85 a8 db ff ff 	mov    QWORD PTR [rbp-0x2458],rax
  7cd524:	48 8b bb b8 01 00 00 	mov    rdi,QWORD PTR [rbx+0x1b8]
  7cd52b:	48 8b 83 e0 01 00 00 	mov    rax,QWORD PTR [rbx+0x1e0]
  7cd532:	48 89 b5 78 db ff ff 	mov    QWORD PTR [rbp-0x2488],rsi
  7cd539:	48 8b b3 b0 01 00 00 	mov    rsi,QWORD PTR [rbx+0x1b0]
  7cd540:	48 89 95 68 db ff ff 	mov    QWORD PTR [rbp-0x2498],rdx
  7cd547:	48 89 8d 70 db ff ff 	mov    QWORD PTR [rbp-0x2490],rcx
  7cd54e:	4c 89 85 88 db ff ff 	mov    QWORD PTR [rbp-0x2478],r8
  7cd555:	4c 89 8d 90 db ff ff 	mov    QWORD PTR [rbp-0x2470],r9
  7cd55c:	4c 89 95 98 db ff ff 	mov    QWORD PTR [rbp-0x2468],r10
  7cd563:	4c 89 9d a0 db ff ff 	mov    QWORD PTR [rbp-0x2460],r11
  7cd56a:	4c 8d 9b a0 01 00 00 	lea    r11,[rbx+0x1a0]
  7cd571:	49 8b 13             	mov    rdx,QWORD PTR [r11]
  7cd574:	49 8b 4b 08          	mov    rcx,QWORD PTR [r11+0x8]
  7cd578:	4d 8b 43 20          	mov    r8,QWORD PTR [r11+0x20]
  7cd57c:	4d 8b 4b 28          	mov    r9,QWORD PTR [r11+0x28]
  7cd580:	4d 8b 53 30          	mov    r10,QWORD PTR [r11+0x30]
  7cd584:	4d 8b 5b 38          	mov    r11,QWORD PTR [r11+0x38]
  7cd588:	48 89 bd c8 db ff ff 	mov    QWORD PTR [rbp-0x2438],rdi
  7cd58f:	48 89 85 10 d7 ff ff 	mov    QWORD PTR [rbp-0x28f0],rax
  7cd596:	48 8b bb 00 02 00 00 	mov    rdi,QWORD PTR [rbx+0x200]
  7cd59d:	48 8b 83 28 02 00 00 	mov    rax,QWORD PTR [rbx+0x228]
  7cd5a4:	48 89 b5 c0 db ff ff 	mov    QWORD PTR [rbp-0x2440],rsi
  7cd5ab:	48 8b b3 f8 01 00 00 	mov    rsi,QWORD PTR [rbx+0x1f8]
  7cd5b2:	48 89 95 b0 db ff ff 	mov    QWORD PTR [rbp-0x2450],rdx
  7cd5b9:	48 89 8d b8 db ff ff 	mov    QWORD PTR [rbp-0x2448],rcx
  7cd5c0:	4c 89 85 d0 db ff ff 	mov    QWORD PTR [rbp-0x2430],r8
  7cd5c7:	4c 89 8d d8 db ff ff 	mov    QWORD PTR [rbp-0x2428],r9
  7cd5ce:	4c 89 95 00 d7 ff ff 	mov    QWORD PTR [rbp-0x2900],r10
  7cd5d5:	4c 89 9d 08 d7 ff ff 	mov    QWORD PTR [rbp-0x28f8],r11
  7cd5dc:	4c 8d 9b e8 01 00 00 	lea    r11,[rbx+0x1e8]
  7cd5e3:	49 8b 13             	mov    rdx,QWORD PTR [r11]
  7cd5e6:	49 8b 4b 08          	mov    rcx,QWORD PTR [r11+0x8]
  7cd5ea:	4d 8b 43 20          	mov    r8,QWORD PTR [r11+0x20]
  7cd5ee:	4d 8b 4b 28          	mov    r9,QWORD PTR [r11+0x28]
  7cd5f2:	4d 8b 53 30          	mov    r10,QWORD PTR [r11+0x30]
  7cd5f6:	4d 8b 5b 38          	mov    r11,QWORD PTR [r11+0x38]
  7cd5fa:	48 89 bd 30 d7 ff ff 	mov    QWORD PTR [rbp-0x28d0],rdi
  7cd601:	48 8d bd 20 e1 ff ff 	lea    rdi,[rbp-0x1ee0]
  7cd608:	48 89 85 a8 d7 ff ff 	mov    QWORD PTR [rbp-0x2858],rax
  7cd60f:	33 c0                	xor    eax,eax
  7cd611:	48 89 b5 28 d7 ff ff 	mov    QWORD PTR [rbp-0x28d8],rsi
  7cd618:	c5 fb 11 85 c8 fa ff 	vmovsd QWORD PTR [rbp-0x538],xmm0
  7cd61f:	ff 
  7cd620:	48 8b b3 30 02 00 00 	mov    rsi,QWORD PTR [rbx+0x230]
  7cd627:	44 89 bd 70 eb ff ff 	mov    DWORD PTR [rbp-0x1490],r15d
  7cd62e:	48 89 95 18 d7 ff ff 	mov    QWORD PTR [rbp-0x28e8],rdx
  7cd635:	48 89 8d 20 d7 ff ff 	mov    QWORD PTR [rbp-0x28e0],rcx
  7cd63c:	4c 89 85 38 d7 ff ff 	mov    QWORD PTR [rbp-0x28c8],r8
  7cd643:	4c 89 8d 40 d7 ff ff 	mov    QWORD PTR [rbp-0x28c0],r9
  7cd64a:	4c 89 95 68 d8 ff ff 	mov    QWORD PTR [rbp-0x2798],r10
  7cd651:	4c 89 9d 08 d8 ff ff 	mov    QWORD PTR [rbp-0x27f8],r11
  7cd658:	e8 a3 95 ca ff       	call   476c00 <_f90_dope_vector_init>
  7cd65d:	48 89 85 08 dd ff ff 	mov    QWORD PTR [rbp-0x22f8],rax
  7cd664:	48 83 c0 1f          	add    rax,0x1f
  7cd668:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cd66c:	48 2b e0             	sub    rsp,rax
  7cd66f:	48 89 e0             	mov    rax,rsp
  7cd672:	48 89 85 00 dd ff ff 	mov    QWORD PTR [rbp-0x2300],rax
  7cd679:	48 89 c2             	mov    rdx,rax
  7cd67c:	48 8d bd 48 d7 ff ff 	lea    rdi,[rbp-0x28b8]
  7cd683:	33 c0                	xor    eax,eax
  7cd685:	48 8b 77 60          	mov    rsi,QWORD PTR [rdi+0x60]
  7cd689:	48 89 95 20 e1 ff ff 	mov    QWORD PTR [rbp-0x1ee0],rdx
  7cd690:	e8 6b 95 ca ff       	call   476c00 <_f90_dope_vector_init>
  7cd695:	48 89 85 18 dd ff ff 	mov    QWORD PTR [rbp-0x22e8],rax
  7cd69c:	48 83 c0 1f          	add    rax,0x1f
  7cd6a0:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cd6a4:	48 2b e0             	sub    rsp,rax
  7cd6a7:	48 89 e0             	mov    rax,rsp
  7cd6aa:	48 89 85 10 dd ff ff 	mov    QWORD PTR [rbp-0x22f0],rax
  7cd6b1:	48 89 c2             	mov    rdx,rax
  7cd6b4:	48 8d bd a8 d7 ff ff 	lea    rdi,[rbp-0x2858]
  7cd6bb:	33 c0                	xor    eax,eax
  7cd6bd:	48 8b 77 60          	mov    rsi,QWORD PTR [rdi+0x60]
  7cd6c1:	48 89 57 a0          	mov    QWORD PTR [rdi-0x60],rdx
  7cd6c5:	e8 36 95 ca ff       	call   476c00 <_f90_dope_vector_init>
  7cd6ca:	48 89 85 28 dd ff ff 	mov    QWORD PTR [rbp-0x22d8],rax
  7cd6d1:	48 83 c0 1f          	add    rax,0x1f
  7cd6d5:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cd6d9:	48 2b e0             	sub    rsp,rax
  7cd6dc:	48 89 e0             	mov    rax,rsp
  7cd6df:	48 89 85 20 dd ff ff 	mov    QWORD PTR [rbp-0x22e0],rax
  7cd6e6:	48 89 c2             	mov    rdx,rax
  7cd6e9:	48 8d bd 08 d8 ff ff 	lea    rdi,[rbp-0x27f8]
  7cd6f0:	33 c0                	xor    eax,eax
  7cd6f2:	48 8b 77 60          	mov    rsi,QWORD PTR [rdi+0x60]
  7cd6f6:	48 89 57 a0          	mov    QWORD PTR [rdi-0x60],rdx
  7cd6fa:	e8 01 95 ca ff       	call   476c00 <_f90_dope_vector_init>
  7cd6ff:	48 89 85 38 dd ff ff 	mov    QWORD PTR [rbp-0x22c8],rax
  7cd706:	48 83 c0 1f          	add    rax,0x1f
  7cd70a:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cd70e:	48 2b e0             	sub    rsp,rax
  7cd711:	48 89 e0             	mov    rax,rsp
  7cd714:	48 89 85 30 dd ff ff 	mov    QWORD PTR [rbp-0x22d0],rax
  7cd71b:	48 89 c2             	mov    rdx,rax
  7cd71e:	48 8d bd 68 d8 ff ff 	lea    rdi,[rbp-0x2798]
  7cd725:	33 c0                	xor    eax,eax
  7cd727:	48 8b b5 40 d7 ff ff 	mov    rsi,QWORD PTR [rbp-0x28c0]
  7cd72e:	48 89 57 a0          	mov    QWORD PTR [rdi-0x60],rdx
  7cd732:	e8 c9 94 ca ff       	call   476c00 <_f90_dope_vector_init>
  7cd737:	48 89 85 48 dd ff ff 	mov    QWORD PTR [rbp-0x22b8],rax
  7cd73e:	48 83 c0 1f          	add    rax,0x1f
  7cd742:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cd746:	48 2b e0             	sub    rsp,rax
  7cd749:	48 89 e0             	mov    rax,rsp
  7cd74c:	48 89 85 40 dd ff ff 	mov    QWORD PTR [rbp-0x22c0],rax
  7cd753:	48 89 c2             	mov    rdx,rax
  7cd756:	48 8d bd 80 e1 ff ff 	lea    rdi,[rbp-0x1e80]
  7cd75d:	33 c0                	xor    eax,eax
  7cd75f:	48 8b b5 38 d7 ff ff 	mov    rsi,QWORD PTR [rbp-0x28c8]
  7cd766:	48 89 95 68 d8 ff ff 	mov    QWORD PTR [rbp-0x2798],rdx
  7cd76d:	e8 8e 94 ca ff       	call   476c00 <_f90_dope_vector_init>
  7cd772:	48 89 85 58 dd ff ff 	mov    QWORD PTR [rbp-0x22a8],rax
  7cd779:	48 83 c0 1f          	add    rax,0x1f
  7cd77d:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cd781:	48 2b e0             	sub    rsp,rax
  7cd784:	48 89 e0             	mov    rax,rsp
  7cd787:	48 89 85 50 dd ff ff 	mov    QWORD PTR [rbp-0x22b0],rax
  7cd78e:	48 89 c2             	mov    rdx,rax
  7cd791:	48 8d bd c8 d8 ff ff 	lea    rdi,[rbp-0x2738]
  7cd798:	33 c0                	xor    eax,eax
  7cd79a:	48 8b b5 30 d7 ff ff 	mov    rsi,QWORD PTR [rbp-0x28d0]
  7cd7a1:	48 89 95 80 e1 ff ff 	mov    QWORD PTR [rbp-0x1e80],rdx
  7cd7a8:	e8 53 94 ca ff       	call   476c00 <_f90_dope_vector_init>
  7cd7ad:	48 89 85 68 dd ff ff 	mov    QWORD PTR [rbp-0x2298],rax
  7cd7b4:	48 83 c0 1f          	add    rax,0x1f
  7cd7b8:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cd7bc:	48 2b e0             	sub    rsp,rax
  7cd7bf:	48 89 e0             	mov    rax,rsp
  7cd7c2:	48 89 85 60 dd ff ff 	mov    QWORD PTR [rbp-0x22a0],rax
  7cd7c9:	48 89 c2             	mov    rdx,rax
  7cd7cc:	48 8d bd d8 e2 ff ff 	lea    rdi,[rbp-0x1d28]
  7cd7d3:	33 c0                	xor    eax,eax
  7cd7d5:	48 8b b5 28 d7 ff ff 	mov    rsi,QWORD PTR [rbp-0x28d8]
  7cd7dc:	48 89 95 c8 d8 ff ff 	mov    QWORD PTR [rbp-0x2738],rdx
  7cd7e3:	e8 18 94 ca ff       	call   476c00 <_f90_dope_vector_init>
  7cd7e8:	48 89 85 78 dd ff ff 	mov    QWORD PTR [rbp-0x2288],rax
  7cd7ef:	48 83 c0 1f          	add    rax,0x1f
  7cd7f3:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cd7f7:	48 2b e0             	sub    rsp,rax
  7cd7fa:	48 89 e0             	mov    rax,rsp
  7cd7fd:	48 89 85 70 dd ff ff 	mov    QWORD PTR [rbp-0x2290],rax
  7cd804:	48 89 c2             	mov    rdx,rax
  7cd807:	48 8d bd 28 d9 ff ff 	lea    rdi,[rbp-0x26d8]
  7cd80e:	33 c0                	xor    eax,eax
  7cd810:	48 8b b5 20 d7 ff ff 	mov    rsi,QWORD PTR [rbp-0x28e0]
  7cd817:	48 89 95 d8 e2 ff ff 	mov    QWORD PTR [rbp-0x1d28],rdx
  7cd81e:	e8 dd 93 ca ff       	call   476c00 <_f90_dope_vector_init>
  7cd823:	48 89 85 88 dd ff ff 	mov    QWORD PTR [rbp-0x2278],rax
  7cd82a:	48 83 c0 1f          	add    rax,0x1f
  7cd82e:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cd832:	48 2b e0             	sub    rsp,rax
  7cd835:	48 89 e0             	mov    rax,rsp
  7cd838:	48 89 85 80 dd ff ff 	mov    QWORD PTR [rbp-0x2280],rax
  7cd83f:	48 89 c2             	mov    rdx,rax
  7cd842:	48 8d bd 88 d9 ff ff 	lea    rdi,[rbp-0x2678]
  7cd849:	33 c0                	xor    eax,eax
  7cd84b:	48 8b b5 18 d7 ff ff 	mov    rsi,QWORD PTR [rbp-0x28e8]
  7cd852:	48 89 57 a0          	mov    QWORD PTR [rdi-0x60],rdx
  7cd856:	e8 a5 93 ca ff       	call   476c00 <_f90_dope_vector_init>
  7cd85b:	48 89 85 98 dd ff ff 	mov    QWORD PTR [rbp-0x2268],rax
  7cd862:	48 83 c0 1f          	add    rax,0x1f
  7cd866:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cd86a:	48 2b e0             	sub    rsp,rax
  7cd86d:	48 89 e0             	mov    rax,rsp
  7cd870:	48 89 85 90 dd ff ff 	mov    QWORD PTR [rbp-0x2270],rax
  7cd877:	48 89 c2             	mov    rdx,rax
  7cd87a:	48 8d bd 00 da ff ff 	lea    rdi,[rbp-0x2600]
  7cd881:	33 c0                	xor    eax,eax
  7cd883:	48 8b b5 10 d7 ff ff 	mov    rsi,QWORD PTR [rbp-0x28f0]
  7cd88a:	48 89 57 88          	mov    QWORD PTR [rdi-0x78],rdx
  7cd88e:	e8 6d 93 ca ff       	call   476c00 <_f90_dope_vector_init>
  7cd893:	48 89 85 a8 dd ff ff 	mov    QWORD PTR [rbp-0x2258],rax
  7cd89a:	48 83 c0 1f          	add    rax,0x1f
  7cd89e:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cd8a2:	48 2b e0             	sub    rsp,rax
  7cd8a5:	48 89 e0             	mov    rax,rsp
  7cd8a8:	48 89 85 a0 dd ff ff 	mov    QWORD PTR [rbp-0x2260],rax
  7cd8af:	48 89 c2             	mov    rdx,rax
  7cd8b2:	48 8d bd 78 da ff ff 	lea    rdi,[rbp-0x2588]
  7cd8b9:	33 c0                	xor    eax,eax
  7cd8bb:	48 8b b5 08 d7 ff ff 	mov    rsi,QWORD PTR [rbp-0x28f8]
  7cd8c2:	48 89 57 88          	mov    QWORD PTR [rdi-0x78],rdx
  7cd8c6:	e8 35 93 ca ff       	call   476c00 <_f90_dope_vector_init>
  7cd8cb:	48 89 85 b8 dd ff ff 	mov    QWORD PTR [rbp-0x2248],rax
  7cd8d2:	48 83 c0 1f          	add    rax,0x1f
  7cd8d6:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cd8da:	48 2b e0             	sub    rsp,rax
  7cd8dd:	48 89 e0             	mov    rax,rsp
  7cd8e0:	48 89 85 b0 dd ff ff 	mov    QWORD PTR [rbp-0x2250],rax
  7cd8e7:	48 89 c2             	mov    rdx,rax
  7cd8ea:	48 8d bd f0 da ff ff 	lea    rdi,[rbp-0x2510]
  7cd8f1:	33 c0                	xor    eax,eax
  7cd8f3:	48 8b b5 00 d7 ff ff 	mov    rsi,QWORD PTR [rbp-0x2900]
  7cd8fa:	48 89 57 88          	mov    QWORD PTR [rdi-0x78],rdx
  7cd8fe:	e8 fd 92 ca ff       	call   476c00 <_f90_dope_vector_init>
  7cd903:	48 89 85 c8 dd ff ff 	mov    QWORD PTR [rbp-0x2238],rax
  7cd90a:	48 83 c0 1f          	add    rax,0x1f
  7cd90e:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cd912:	48 2b e0             	sub    rsp,rax
  7cd915:	48 89 e0             	mov    rax,rsp
  7cd918:	48 89 85 c0 dd ff ff 	mov    QWORD PTR [rbp-0x2240],rax
  7cd91f:	48 89 c2             	mov    rdx,rax
  7cd922:	48 8d bd 00 d7 ff ff 	lea    rdi,[rbp-0x2900]
  7cd929:	33 c0                	xor    eax,eax
  7cd92b:	48 8b b5 d8 db ff ff 	mov    rsi,QWORD PTR [rbp-0x2428]
  7cd932:	48 89 95 f0 da ff ff 	mov    QWORD PTR [rbp-0x2510],rdx
  7cd939:	e8 c2 92 ca ff       	call   476c00 <_f90_dope_vector_init>
  7cd93e:	48 89 85 d8 dd ff ff 	mov    QWORD PTR [rbp-0x2228],rax
  7cd945:	48 83 c0 1f          	add    rax,0x1f
  7cd949:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cd94d:	48 2b e0             	sub    rsp,rax
  7cd950:	48 89 e0             	mov    rax,rsp
  7cd953:	48 89 85 d0 dd ff ff 	mov    QWORD PTR [rbp-0x2230],rax
  7cd95a:	48 89 c2             	mov    rdx,rax
  7cd95d:	48 8d bd 00 e0 ff ff 	lea    rdi,[rbp-0x2000]
  7cd964:	33 c0                	xor    eax,eax
  7cd966:	48 8b b5 d0 db ff ff 	mov    rsi,QWORD PTR [rbp-0x2430]
  7cd96d:	48 89 95 00 d7 ff ff 	mov    QWORD PTR [rbp-0x2900],rdx
  7cd974:	e8 87 92 ca ff       	call   476c00 <_f90_dope_vector_init>
  7cd979:	48 89 85 e8 dd ff ff 	mov    QWORD PTR [rbp-0x2218],rax
  7cd980:	48 83 c0 1f          	add    rax,0x1f
  7cd984:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cd988:	48 2b e0             	sub    rsp,rax
  7cd98b:	48 89 e0             	mov    rax,rsp
  7cd98e:	48 89 85 e0 dd ff ff 	mov    QWORD PTR [rbp-0x2220],rax
  7cd995:	48 89 c2             	mov    rdx,rax
  7cd998:	48 8d bd 60 e0 ff ff 	lea    rdi,[rbp-0x1fa0]
  7cd99f:	33 c0                	xor    eax,eax
  7cd9a1:	48 8b b5 c8 db ff ff 	mov    rsi,QWORD PTR [rbp-0x2438]
  7cd9a8:	48 89 57 a0          	mov    QWORD PTR [rdi-0x60],rdx
  7cd9ac:	e8 4f 92 ca ff       	call   476c00 <_f90_dope_vector_init>
  7cd9b1:	48 89 85 f8 dd ff ff 	mov    QWORD PTR [rbp-0x2208],rax
  7cd9b8:	48 83 c0 1f          	add    rax,0x1f
  7cd9bc:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cd9c0:	48 2b e0             	sub    rsp,rax
  7cd9c3:	48 89 e0             	mov    rax,rsp
  7cd9c6:	48 89 85 f0 dd ff ff 	mov    QWORD PTR [rbp-0x2210],rax
  7cd9cd:	48 89 c2             	mov    rdx,rax
  7cd9d0:	48 8d bd c0 e0 ff ff 	lea    rdi,[rbp-0x1f40]
  7cd9d7:	33 c0                	xor    eax,eax
  7cd9d9:	48 8b b5 c0 db ff ff 	mov    rsi,QWORD PTR [rbp-0x2440]
  7cd9e0:	48 89 57 a0          	mov    QWORD PTR [rdi-0x60],rdx
  7cd9e4:	e8 17 92 ca ff       	call   476c00 <_f90_dope_vector_init>
  7cd9e9:	48 89 85 08 de ff ff 	mov    QWORD PTR [rbp-0x21f8],rax
  7cd9f0:	48 83 c0 1f          	add    rax,0x1f
  7cd9f4:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cd9f8:	48 2b e0             	sub    rsp,rax
  7cd9fb:	48 89 e0             	mov    rax,rsp
  7cd9fe:	48 89 85 00 de ff ff 	mov    QWORD PTR [rbp-0x2200],rax
  7cda05:	48 89 c2             	mov    rdx,rax
  7cda08:	48 8d bd 40 df ff ff 	lea    rdi,[rbp-0x20c0]
  7cda0f:	33 c0                	xor    eax,eax
  7cda11:	48 8b b5 b8 db ff ff 	mov    rsi,QWORD PTR [rbp-0x2448]
  7cda18:	48 89 95 c0 e0 ff ff 	mov    QWORD PTR [rbp-0x1f40],rdx
  7cda1f:	e8 dc 91 ca ff       	call   476c00 <_f90_dope_vector_init>
  7cda24:	48 89 85 18 de ff ff 	mov    QWORD PTR [rbp-0x21e8],rax
  7cda2b:	48 83 c0 1f          	add    rax,0x1f
  7cda2f:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cda33:	48 2b e0             	sub    rsp,rax
  7cda36:	48 89 e0             	mov    rax,rsp
  7cda39:	48 89 85 10 de ff ff 	mov    QWORD PTR [rbp-0x21f0],rax
  7cda40:	48 89 c2             	mov    rdx,rax
  7cda43:	48 8d bd 70 dc ff ff 	lea    rdi,[rbp-0x2390]
  7cda4a:	33 c0                	xor    eax,eax
  7cda4c:	48 8b b5 b0 db ff ff 	mov    rsi,QWORD PTR [rbp-0x2450]
  7cda53:	48 89 95 40 df ff ff 	mov    QWORD PTR [rbp-0x20c0],rdx
  7cda5a:	e8 a1 91 ca ff       	call   476c00 <_f90_dope_vector_init>
  7cda5f:	48 89 85 28 de ff ff 	mov    QWORD PTR [rbp-0x21d8],rax
  7cda66:	48 83 c0 1f          	add    rax,0x1f
  7cda6a:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cda6e:	48 2b e0             	sub    rsp,rax
  7cda71:	48 89 e0             	mov    rax,rsp
  7cda74:	48 89 85 20 de ff ff 	mov    QWORD PTR [rbp-0x21e0],rax
  7cda7b:	48 89 c2             	mov    rdx,rax
  7cda7e:	48 8d bd 10 dc ff ff 	lea    rdi,[rbp-0x23f0]
  7cda85:	33 c0                	xor    eax,eax
  7cda87:	48 8b 77 98          	mov    rsi,QWORD PTR [rdi-0x68]
  7cda8b:	48 89 57 60          	mov    QWORD PTR [rdi+0x60],rdx
  7cda8f:	e8 6c 91 ca ff       	call   476c00 <_f90_dope_vector_init>
  7cda94:	48 89 85 38 de ff ff 	mov    QWORD PTR [rbp-0x21c8],rax
  7cda9b:	48 83 c0 1f          	add    rax,0x1f
  7cda9f:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cdaa3:	48 2b e0             	sub    rsp,rax
  7cdaa6:	48 89 e0             	mov    rax,rsp
  7cdaa9:	48 89 85 30 de ff ff 	mov    QWORD PTR [rbp-0x21d0],rax
  7cdab0:	48 89 c2             	mov    rdx,rax
  7cdab3:	48 8d bd 78 e2 ff ff 	lea    rdi,[rbp-0x1d88]
  7cdaba:	33 c0                	xor    eax,eax
  7cdabc:	48 8b b5 a0 db ff ff 	mov    rsi,QWORD PTR [rbp-0x2460]
  7cdac3:	48 89 95 10 dc ff ff 	mov    QWORD PTR [rbp-0x23f0],rdx
  7cdaca:	e8 31 91 ca ff       	call   476c00 <_f90_dope_vector_init>
  7cdacf:	48 89 85 48 de ff ff 	mov    QWORD PTR [rbp-0x21b8],rax
  7cdad6:	48 83 c0 1f          	add    rax,0x1f
  7cdada:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cdade:	48 2b e0             	sub    rsp,rax
  7cdae1:	48 89 e0             	mov    rax,rsp
  7cdae4:	48 89 85 40 de ff ff 	mov    QWORD PTR [rbp-0x21c0],rax
  7cdaeb:	48 89 c2             	mov    rdx,rax
  7cdaee:	48 8d bd a0 df ff ff 	lea    rdi,[rbp-0x2060]
  7cdaf5:	33 c0                	xor    eax,eax
  7cdaf7:	48 8b b5 98 db ff ff 	mov    rsi,QWORD PTR [rbp-0x2468]
  7cdafe:	48 89 95 78 e2 ff ff 	mov    QWORD PTR [rbp-0x1d88],rdx
  7cdb05:	e8 f6 90 ca ff       	call   476c00 <_f90_dope_vector_init>
  7cdb0a:	48 89 85 58 de ff ff 	mov    QWORD PTR [rbp-0x21a8],rax
  7cdb11:	48 83 c0 1f          	add    rax,0x1f
  7cdb15:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cdb19:	48 2b e0             	sub    rsp,rax
  7cdb1c:	48 89 e0             	mov    rax,rsp
  7cdb1f:	48 89 85 50 de ff ff 	mov    QWORD PTR [rbp-0x21b0],rax
  7cdb26:	48 89 c2             	mov    rdx,rax
  7cdb29:	48 8d bd 98 db ff ff 	lea    rdi,[rbp-0x2468]
  7cdb30:	33 c0                	xor    eax,eax
  7cdb32:	48 8b 77 f8          	mov    rsi,QWORD PTR [rdi-0x8]
  7cdb36:	48 89 95 a0 df ff ff 	mov    QWORD PTR [rbp-0x2060],rdx
  7cdb3d:	e8 be 90 ca ff       	call   476c00 <_f90_dope_vector_init>
  7cdb42:	48 89 85 60 de ff ff 	mov    QWORD PTR [rbp-0x21a0],rax
  7cdb49:	48 83 c0 1f          	add    rax,0x1f
  7cdb4d:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cdb51:	48 2b e0             	sub    rsp,rax
  7cdb54:	48 89 e0             	mov    rax,rsp
  7cdb57:	48 89 85 90 db ff ff 	mov    QWORD PTR [rbp-0x2470],rax
  7cdb5e:	48 89 c2             	mov    rdx,rax
  7cdb61:	48 8d bd c8 de ff ff 	lea    rdi,[rbp-0x2138]
  7cdb68:	33 c0                	xor    eax,eax
  7cdb6a:	48 8b b5 88 db ff ff 	mov    rsi,QWORD PTR [rbp-0x2478]
  7cdb71:	48 89 95 98 db ff ff 	mov    QWORD PTR [rbp-0x2468],rdx
  7cdb78:	e8 83 90 ca ff       	call   476c00 <_f90_dope_vector_init>
  7cdb7d:	48 89 85 68 de ff ff 	mov    QWORD PTR [rbp-0x2198],rax
  7cdb84:	48 83 c0 1f          	add    rax,0x1f
  7cdb88:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cdb8c:	48 2b e0             	sub    rsp,rax
  7cdb8f:	48 89 e0             	mov    rax,rsp
  7cdb92:	48 89 85 88 db ff ff 	mov    QWORD PTR [rbp-0x2478],rax
  7cdb99:	48 89 c2             	mov    rdx,rax
  7cdb9c:	48 8d bd e0 e1 ff ff 	lea    rdi,[rbp-0x1e20]
  7cdba3:	33 c0                	xor    eax,eax
  7cdba5:	48 8b b5 80 db ff ff 	mov    rsi,QWORD PTR [rbp-0x2480]
  7cdbac:	48 89 95 c8 de ff ff 	mov    QWORD PTR [rbp-0x2138],rdx
  7cdbb3:	e8 48 90 ca ff       	call   476c00 <_f90_dope_vector_init>
  7cdbb8:	48 89 85 70 de ff ff 	mov    QWORD PTR [rbp-0x2190],rax
  7cdbbf:	48 83 c0 1f          	add    rax,0x1f
  7cdbc3:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cdbc7:	48 2b e0             	sub    rsp,rax
  7cdbca:	48 89 e0             	mov    rax,rsp
  7cdbcd:	48 89 85 80 db ff ff 	mov    QWORD PTR [rbp-0x2480],rax
  7cdbd4:	48 89 c2             	mov    rdx,rax
  7cdbd7:	48 8d bd 20 e3 ff ff 	lea    rdi,[rbp-0x1ce0]
  7cdbde:	33 c0                	xor    eax,eax
  7cdbe0:	48 8b b5 78 db ff ff 	mov    rsi,QWORD PTR [rbp-0x2488]
  7cdbe7:	48 89 95 e0 e1 ff ff 	mov    QWORD PTR [rbp-0x1e20],rdx
  7cdbee:	e8 0d 90 ca ff       	call   476c00 <_f90_dope_vector_init>
  7cdbf3:	48 89 85 78 de ff ff 	mov    QWORD PTR [rbp-0x2188],rax
  7cdbfa:	48 83 c0 1f          	add    rax,0x1f
  7cdbfe:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cdc02:	48 2b e0             	sub    rsp,rax
  7cdc05:	48 89 e0             	mov    rax,rsp
  7cdc08:	48 89 85 78 db ff ff 	mov    QWORD PTR [rbp-0x2488],rax
  7cdc0f:	48 89 c2             	mov    rdx,rax
  7cdc12:	48 8d bd 68 e3 ff ff 	lea    rdi,[rbp-0x1c98]
  7cdc19:	33 c0                	xor    eax,eax
  7cdc1b:	48 8b b5 70 db ff ff 	mov    rsi,QWORD PTR [rbp-0x2490]
  7cdc22:	48 89 57 b8          	mov    QWORD PTR [rdi-0x48],rdx
  7cdc26:	e8 d5 8f ca ff       	call   476c00 <_f90_dope_vector_init>
  7cdc2b:	48 89 85 80 de ff ff 	mov    QWORD PTR [rbp-0x2180],rax
  7cdc32:	48 83 c0 1f          	add    rax,0x1f
  7cdc36:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cdc3a:	48 2b e0             	sub    rsp,rax
  7cdc3d:	48 89 e0             	mov    rax,rsp
  7cdc40:	48 89 85 70 db ff ff 	mov    QWORD PTR [rbp-0x2490],rax
  7cdc47:	48 89 c2             	mov    rdx,rax
  7cdc4a:	48 8d bd b0 e3 ff ff 	lea    rdi,[rbp-0x1c50]
  7cdc51:	33 c0                	xor    eax,eax
  7cdc53:	48 8b b5 68 db ff ff 	mov    rsi,QWORD PTR [rbp-0x2498]
  7cdc5a:	48 89 57 b8          	mov    QWORD PTR [rdi-0x48],rdx
  7cdc5e:	e8 9d 8f ca ff       	call   476c00 <_f90_dope_vector_init>
  7cdc63:	48 89 85 88 de ff ff 	mov    QWORD PTR [rbp-0x2178],rax
  7cdc6a:	48 83 c0 1f          	add    rax,0x1f
  7cdc6e:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cdc72:	48 2b e0             	sub    rsp,rax
  7cdc75:	48 89 e0             	mov    rax,rsp
  7cdc78:	48 89 85 68 db ff ff 	mov    QWORD PTR [rbp-0x2498],rax
  7cdc7f:	48 89 c2             	mov    rdx,rax
  7cdc82:	48 8d bd f8 e3 ff ff 	lea    rdi,[rbp-0x1c08]
  7cdc89:	33 c0                	xor    eax,eax
  7cdc8b:	48 8b b5 f8 d6 ff ff 	mov    rsi,QWORD PTR [rbp-0x2908]
  7cdc92:	48 89 57 b8          	mov    QWORD PTR [rdi-0x48],rdx
  7cdc96:	e8 65 8f ca ff       	call   476c00 <_f90_dope_vector_init>
  7cdc9b:	48 89 85 98 de ff ff 	mov    QWORD PTR [rbp-0x2168],rax
  7cdca2:	48 83 c0 1f          	add    rax,0x1f
  7cdca6:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cdcaa:	48 2b e0             	sub    rsp,rax
  7cdcad:	48 89 e0             	mov    rax,rsp
  7cdcb0:	48 89 85 90 de ff ff 	mov    QWORD PTR [rbp-0x2170],rax
  7cdcb7:	48 89 c2             	mov    rdx,rax
  7cdcba:	48 8d bd 40 e4 ff ff 	lea    rdi,[rbp-0x1bc0]
  7cdcc1:	33 c0                	xor    eax,eax
  7cdcc3:	48 8b b5 f0 d6 ff ff 	mov    rsi,QWORD PTR [rbp-0x2910]
  7cdcca:	48 89 57 b8          	mov    QWORD PTR [rdi-0x48],rdx
  7cdcce:	e8 2d 8f ca ff       	call   476c00 <_f90_dope_vector_init>
  7cdcd3:	48 89 85 a0 de ff ff 	mov    QWORD PTR [rbp-0x2160],rax
  7cdcda:	48 83 c0 1f          	add    rax,0x1f
  7cdcde:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cdce2:	48 2b e0             	sub    rsp,rax
  7cdce5:	48 89 e0             	mov    rax,rsp
  7cdce8:	48 89 85 a8 de ff ff 	mov    QWORD PTR [rbp-0x2158],rax
  7cdcef:	48 8d b5 20 e7 ff ff 	lea    rsi,[rbp-0x18e0]
  7cdcf6:	48 8b 16             	mov    rdx,QWORD PTR [rsi]
  7cdcf9:	48 8d bd 18 e7 ff ff 	lea    rdi,[rbp-0x18e8]
  7cdd00:	48 8b 0f             	mov    rcx,QWORD PTR [rdi]
  7cdd03:	48 89 85 40 e4 ff ff 	mov    QWORD PTR [rbp-0x1bc0],rax
  7cdd0a:	48 89 16             	mov    QWORD PTR [rsi],rdx
  7cdd0d:	48 89 0f             	mov    QWORD PTR [rdi],rcx
  7cdd10:	45 3b e7             	cmp    r12d,r15d
  7cdd13:	0f 8c 86 00 00 00    	jl     7cdd9f <biology_mod_mp_biology_tile_+0x1d8f>
  7cdd19:	48 83 c4 e0          	add    rsp,0xffffffffffffffe0
  7cdd1d:	48 8d 85 4c e7 ff ff 	lea    rax,[rbp-0x18b4]
  7cdd24:	45 33 d2             	xor    r10d,r10d
  7cdd27:	41 ff c2             	inc    r10d
  7cdd2a:	bf a4 74 ab 00       	mov    edi,0xab74a4
  7cdd2f:	ba 22 00 00 00       	mov    edx,0x22
  7cdd34:	48 8d 48 fc          	lea    rcx,[rax-0x4]
  7cdd38:	44 89 78 f4          	mov    DWORD PTR [rax-0xc],r15d
  7cdd3c:	4c 8d 40 f4          	lea    r8,[rax-0xc]
  7cdd40:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  7cdd44:	4c 8d 48 f8          	lea    r9,[rax-0x8]
  7cdd48:	44 89 54 24 08       	mov    DWORD PTR [rsp+0x8],r10d
  7cdd4d:	44 89 54 24 10       	mov    DWORD PTR [rsp+0x10],r10d
  7cdd52:	8b 70 c4             	mov    esi,DWORD PTR [rax-0x3c]
  7cdd55:	44 89 60 f8          	mov    DWORD PTR [rax-0x8],r12d
  7cdd59:	c7 40 fc 00 00 00 00 	mov    DWORD PTR [rax-0x4],0x0
  7cdd60:	44 89 10             	mov    DWORD PTR [rax],r10d
  7cdd63:	e8 78 fc c3 ff       	call   40d9e0 <__kmpc_for_static_init_4@plt>
  7cdd68:	48 83 c4 20          	add    rsp,0x20
  7cdd6c:	4d 63 e4             	movsxd r12,r12d
  7cdd6f:	48 63 85 40 e7 ff ff 	movsxd rax,DWORD PTR [rbp-0x18c0]
  7cdd76:	8b 95 44 e7 ff ff    	mov    edx,DWORD PTR [rbp-0x18bc]
  7cdd7c:	48 89 85 b0 ea ff ff 	mov    QWORD PTR [rbp-0x1550],rax
  7cdd83:	49 3b c4             	cmp    rax,r12
  7cdd86:	0f 8e 23 03 00 00    	jle    7ce0af <biology_mod_mp_biology_tile_+0x209f>
  7cdd8c:	bf a4 74 ab 00       	mov    edi,0xab74a4
  7cdd91:	8b b5 10 e7 ff ff    	mov    esi,DWORD PTR [rbp-0x18f0]
  7cdd97:	c5 f8 77             	vzeroupper 
  7cdd9a:	e8 01 ff c3 ff       	call   40dca0 <__kmpc_for_static_fini@plt>
  7cdd9f:	48 8b 95 a8 de ff ff 	mov    rdx,QWORD PTR [rbp-0x2158]
  7cdda6:	48 8b 85 a0 de ff ff 	mov    rax,QWORD PTR [rbp-0x2160]
  7cddad:	48 83 c0 1f          	add    rax,0x1f
  7cddb1:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cddb5:	48 03 e0             	add    rsp,rax
  7cddb8:	48 8b 95 90 de ff ff 	mov    rdx,QWORD PTR [rbp-0x2170]
  7cddbf:	48 8b 85 98 de ff ff 	mov    rax,QWORD PTR [rbp-0x2168]
  7cddc6:	48 83 c0 1f          	add    rax,0x1f
  7cddca:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cddce:	48 03 e0             	add    rsp,rax
  7cddd1:	48 8b 95 68 db ff ff 	mov    rdx,QWORD PTR [rbp-0x2498]
  7cddd8:	48 8b 85 88 de ff ff 	mov    rax,QWORD PTR [rbp-0x2178]
  7cdddf:	48 83 c0 1f          	add    rax,0x1f
  7cdde3:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cdde7:	48 03 e0             	add    rsp,rax
  7cddea:	48 8b 95 70 db ff ff 	mov    rdx,QWORD PTR [rbp-0x2490]
  7cddf1:	48 8b 85 80 de ff ff 	mov    rax,QWORD PTR [rbp-0x2180]
  7cddf8:	48 83 c0 1f          	add    rax,0x1f
  7cddfc:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cde00:	48 03 e0             	add    rsp,rax
  7cde03:	48 8b 95 78 db ff ff 	mov    rdx,QWORD PTR [rbp-0x2488]
  7cde0a:	48 8b 85 78 de ff ff 	mov    rax,QWORD PTR [rbp-0x2188]
  7cde11:	48 83 c0 1f          	add    rax,0x1f
  7cde15:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cde19:	48 03 e0             	add    rsp,rax
  7cde1c:	48 8b 95 80 db ff ff 	mov    rdx,QWORD PTR [rbp-0x2480]
  7cde23:	48 8b 85 70 de ff ff 	mov    rax,QWORD PTR [rbp-0x2190]
  7cde2a:	48 83 c0 1f          	add    rax,0x1f
  7cde2e:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cde32:	48 03 e0             	add    rsp,rax
  7cde35:	48 8b 95 88 db ff ff 	mov    rdx,QWORD PTR [rbp-0x2478]
  7cde3c:	48 8b 85 68 de ff ff 	mov    rax,QWORD PTR [rbp-0x2198]
  7cde43:	48 83 c0 1f          	add    rax,0x1f
  7cde47:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cde4b:	48 03 e0             	add    rsp,rax
  7cde4e:	48 8b 95 90 db ff ff 	mov    rdx,QWORD PTR [rbp-0x2470]
  7cde55:	48 8b 85 60 de ff ff 	mov    rax,QWORD PTR [rbp-0x21a0]
  7cde5c:	48 83 c0 1f          	add    rax,0x1f
  7cde60:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cde64:	48 03 e0             	add    rsp,rax
  7cde67:	48 8b 95 50 de ff ff 	mov    rdx,QWORD PTR [rbp-0x21b0]
  7cde6e:	48 8b 85 58 de ff ff 	mov    rax,QWORD PTR [rbp-0x21a8]
  7cde75:	48 83 c0 1f          	add    rax,0x1f
  7cde79:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cde7d:	48 03 e0             	add    rsp,rax
  7cde80:	48 8b 95 40 de ff ff 	mov    rdx,QWORD PTR [rbp-0x21c0]
  7cde87:	48 8b 85 48 de ff ff 	mov    rax,QWORD PTR [rbp-0x21b8]
  7cde8e:	48 83 c0 1f          	add    rax,0x1f
  7cde92:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cde96:	48 03 e0             	add    rsp,rax
  7cde99:	48 8b 95 30 de ff ff 	mov    rdx,QWORD PTR [rbp-0x21d0]
  7cdea0:	48 8b 85 38 de ff ff 	mov    rax,QWORD PTR [rbp-0x21c8]
  7cdea7:	48 83 c0 1f          	add    rax,0x1f
  7cdeab:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cdeaf:	48 03 e0             	add    rsp,rax
  7cdeb2:	48 8b 95 20 de ff ff 	mov    rdx,QWORD PTR [rbp-0x21e0]
  7cdeb9:	48 8b 85 28 de ff ff 	mov    rax,QWORD PTR [rbp-0x21d8]
  7cdec0:	48 83 c0 1f          	add    rax,0x1f
  7cdec4:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cdec8:	48 03 e0             	add    rsp,rax
  7cdecb:	48 8b 95 10 de ff ff 	mov    rdx,QWORD PTR [rbp-0x21f0]
  7cded2:	48 8b 85 18 de ff ff 	mov    rax,QWORD PTR [rbp-0x21e8]
  7cded9:	48 83 c0 1f          	add    rax,0x1f
  7cdedd:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cdee1:	48 03 e0             	add    rsp,rax
  7cdee4:	48 8b 95 00 de ff ff 	mov    rdx,QWORD PTR [rbp-0x2200]
  7cdeeb:	48 8b 85 08 de ff ff 	mov    rax,QWORD PTR [rbp-0x21f8]
  7cdef2:	48 83 c0 1f          	add    rax,0x1f
  7cdef6:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cdefa:	48 03 e0             	add    rsp,rax
  7cdefd:	48 8b 95 f0 dd ff ff 	mov    rdx,QWORD PTR [rbp-0x2210]
  7cdf04:	48 8b 85 f8 dd ff ff 	mov    rax,QWORD PTR [rbp-0x2208]
  7cdf0b:	48 83 c0 1f          	add    rax,0x1f
  7cdf0f:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cdf13:	48 03 e0             	add    rsp,rax
  7cdf16:	48 8b 95 e0 dd ff ff 	mov    rdx,QWORD PTR [rbp-0x2220]
  7cdf1d:	48 8b 85 e8 dd ff ff 	mov    rax,QWORD PTR [rbp-0x2218]
  7cdf24:	48 83 c0 1f          	add    rax,0x1f
  7cdf28:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cdf2c:	48 03 e0             	add    rsp,rax
  7cdf2f:	48 8b 95 d0 dd ff ff 	mov    rdx,QWORD PTR [rbp-0x2230]
  7cdf36:	48 8b 85 d8 dd ff ff 	mov    rax,QWORD PTR [rbp-0x2228]
  7cdf3d:	48 83 c0 1f          	add    rax,0x1f
  7cdf41:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cdf45:	48 03 e0             	add    rsp,rax
  7cdf48:	48 8b 95 c0 dd ff ff 	mov    rdx,QWORD PTR [rbp-0x2240]
  7cdf4f:	48 8b 85 c8 dd ff ff 	mov    rax,QWORD PTR [rbp-0x2238]
  7cdf56:	48 83 c0 1f          	add    rax,0x1f
  7cdf5a:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cdf5e:	48 03 e0             	add    rsp,rax
  7cdf61:	48 8b 95 b0 dd ff ff 	mov    rdx,QWORD PTR [rbp-0x2250]
  7cdf68:	48 8b 85 b8 dd ff ff 	mov    rax,QWORD PTR [rbp-0x2248]
  7cdf6f:	48 83 c0 1f          	add    rax,0x1f
  7cdf73:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cdf77:	48 03 e0             	add    rsp,rax
  7cdf7a:	48 8b 95 a0 dd ff ff 	mov    rdx,QWORD PTR [rbp-0x2260]
  7cdf81:	48 8b 85 a8 dd ff ff 	mov    rax,QWORD PTR [rbp-0x2258]
  7cdf88:	48 83 c0 1f          	add    rax,0x1f
  7cdf8c:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cdf90:	48 03 e0             	add    rsp,rax
  7cdf93:	48 8b 95 90 dd ff ff 	mov    rdx,QWORD PTR [rbp-0x2270]
  7cdf9a:	48 8b 85 98 dd ff ff 	mov    rax,QWORD PTR [rbp-0x2268]
  7cdfa1:	48 83 c0 1f          	add    rax,0x1f
  7cdfa5:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cdfa9:	48 03 e0             	add    rsp,rax
  7cdfac:	48 8b 95 80 dd ff ff 	mov    rdx,QWORD PTR [rbp-0x2280]
  7cdfb3:	48 8b 85 88 dd ff ff 	mov    rax,QWORD PTR [rbp-0x2278]
  7cdfba:	48 83 c0 1f          	add    rax,0x1f
  7cdfbe:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cdfc2:	48 03 e0             	add    rsp,rax
  7cdfc5:	48 8b 95 70 dd ff ff 	mov    rdx,QWORD PTR [rbp-0x2290]
  7cdfcc:	48 8b 85 78 dd ff ff 	mov    rax,QWORD PTR [rbp-0x2288]
  7cdfd3:	48 83 c0 1f          	add    rax,0x1f
  7cdfd7:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cdfdb:	48 03 e0             	add    rsp,rax
  7cdfde:	48 8b 95 60 dd ff ff 	mov    rdx,QWORD PTR [rbp-0x22a0]
  7cdfe5:	48 8b 85 68 dd ff ff 	mov    rax,QWORD PTR [rbp-0x2298]
  7cdfec:	48 83 c0 1f          	add    rax,0x1f
  7cdff0:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7cdff4:	48 03 e0             	add    rsp,rax
  7cdff7:	48 8b 95 50 dd ff ff 	mov    rdx,QWORD PTR [rbp-0x22b0]
  7cdffe:	48 8b 85 58 dd ff ff 	mov    rax,QWORD PTR [rbp-0x22a8]
  7ce005:	48 83 c0 1f          	add    rax,0x1f
  7ce009:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7ce00d:	48 03 e0             	add    rsp,rax
  7ce010:	48 8b 95 40 dd ff ff 	mov    rdx,QWORD PTR [rbp-0x22c0]
  7ce017:	48 8b 85 48 dd ff ff 	mov    rax,QWORD PTR [rbp-0x22b8]
  7ce01e:	48 83 c0 1f          	add    rax,0x1f
  7ce022:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7ce026:	48 03 e0             	add    rsp,rax
  7ce029:	48 8b 95 30 dd ff ff 	mov    rdx,QWORD PTR [rbp-0x22d0]
  7ce030:	48 8b 85 38 dd ff ff 	mov    rax,QWORD PTR [rbp-0x22c8]
  7ce037:	48 83 c0 1f          	add    rax,0x1f
  7ce03b:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7ce03f:	48 03 e0             	add    rsp,rax
  7ce042:	48 8b 95 20 dd ff ff 	mov    rdx,QWORD PTR [rbp-0x22e0]
  7ce049:	48 8b 85 28 dd ff ff 	mov    rax,QWORD PTR [rbp-0x22d8]
  7ce050:	48 83 c0 1f          	add    rax,0x1f
  7ce054:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7ce058:	48 03 e0             	add    rsp,rax
  7ce05b:	48 8b 95 10 dd ff ff 	mov    rdx,QWORD PTR [rbp-0x22f0]
  7ce062:	48 8b 85 18 dd ff ff 	mov    rax,QWORD PTR [rbp-0x22e8]
  7ce069:	48 83 c0 1f          	add    rax,0x1f
  7ce06d:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7ce071:	48 03 e0             	add    rsp,rax
  7ce074:	48 8b 95 00 dd ff ff 	mov    rdx,QWORD PTR [rbp-0x2300]
  7ce07b:	48 8b 85 08 dd ff ff 	mov    rax,QWORD PTR [rbp-0x22f8]
  7ce082:	48 83 c0 1f          	add    rax,0x1f
  7ce086:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7ce08a:	48 03 e0             	add    rsp,rax
  7ce08d:	4c 8b bd 28 e2 ff ff 	mov    r15,QWORD PTR [rbp-0x1dd8]
  7ce094:	4c 8b b5 60 e2 ff ff 	mov    r14,QWORD PTR [rbp-0x1da0]
  7ce09b:	4c 8b ad 68 e2 ff ff 	mov    r13,QWORD PTR [rbp-0x1d98]
  7ce0a2:	4c 8b a5 70 e2 ff ff 	mov    r12,QWORD PTR [rbp-0x1d90]
  7ce0a9:	c9                   	leave  
  7ce0aa:	48 89 dc             	mov    rsp,rbx
  7ce0ad:	5b                   	pop    rbx
  7ce0ae:	c3                   	ret    
  7ce0af:	48 8b b5 80 ea ff ff 	mov    rsi,QWORD PTR [rbp-0x1580]
  7ce0b6:	41 3b d4             	cmp    edx,r12d
  7ce0b9:	4d 63 06             	movsxd r8,DWORD PTR [r14]
  7ce0bc:	4d 63 75 00          	movsxd r14,DWORD PTR [r13+0x0]
  7ce0c0:	44 0f 4c e2          	cmovl  r12d,edx
  7ce0c4:	48 8d 95 20 e7 ff ff 	lea    rdx,[rbp-0x18e0]
  7ce0cb:	4c 8b 0a             	mov    r9,QWORD PTR [rdx]
  7ce0ce:	c4 41 09 57 f6       	vxorpd xmm14,xmm14,xmm14
  7ce0d3:	4c 89 85 58 e2 ff ff 	mov    QWORD PTR [rbp-0x1da8],r8
  7ce0da:	4c 89 b5 50 e2 ff ff 	mov    QWORD PTR [rbp-0x1db0],r14
  7ce0e1:	48 89 c1             	mov    rcx,rax
  7ce0e4:	4c 8b 85 78 ea ff ff 	mov    r8,QWORD PTR [rbp-0x1588]
  7ce0eb:	4c 8b b5 88 ea ff ff 	mov    r14,QWORD PTR [rbp-0x1578]
  7ce0f2:	4c 8b 2e             	mov    r13,QWORD PTR [rsi]
  7ce0f5:	4c 89 0a             	mov    QWORD PTR [rdx],r9
  7ce0f8:	48 8b 95 f8 dc ff ff 	mov    rdx,QWORD PTR [rbp-0x2308]
  7ce0ff:	4c 8b 8d 98 ea ff ff 	mov    r9,QWORD PTR [rbp-0x1568]
  7ce106:	89 8d 30 e7 ff ff    	mov    DWORD PTR [rbp-0x18d0],ecx
  7ce10c:	48 8b 8d f0 dc ff ff 	mov    rcx,QWORD PTR [rbp-0x2310]
  7ce113:	48 8d b5 18 e7 ff ff 	lea    rsi,[rbp-0x18e8]
  7ce11a:	48 8b 3e             	mov    rdi,QWORD PTR [rsi]
  7ce11d:	4c 63 15 a4 29 41 00 	movsxd r10,DWORD PTR [rip+0x4129a4]        # be0ac8 <mod_param_mp_nbt_>
  7ce124:	4d 63 e4             	movsxd r12,r12d
  7ce127:	4c 89 a5 28 e7 ff ff 	mov    QWORD PTR [rbp-0x18d8],r12
  7ce12e:	4d 63 5d 00          	movsxd r11,DWORD PTR [r13+0x0]
  7ce132:	4c 89 95 00 eb ff ff 	mov    QWORD PTR [rbp-0x1500],r10
  7ce139:	41 8b 00             	mov    eax,DWORD PTR [r8]
  7ce13c:	4d 63 26             	movsxd r12,DWORD PTR [r14]
  7ce13f:	4c 8b 02             	mov    r8,QWORD PTR [rdx]
  7ce142:	4c 8b 52 38          	mov    r10,QWORD PTR [rdx+0x38]
  7ce146:	4c 8b 6a 68          	mov    r13,QWORD PTR [rdx+0x68]
  7ce14a:	4d 89 ef             	mov    r15,r13
  7ce14d:	4c 8b 72 50          	mov    r14,QWORD PTR [rdx+0x50]
  7ce151:	49 f7 df             	neg    r15
  7ce154:	48 89 3e             	mov    QWORD PTR [rsi],rdi
  7ce157:	49 63 11             	movsxd rdx,DWORD PTR [r9]
  7ce15a:	48 8b 39             	mov    rdi,QWORD PTR [rcx]
  7ce15d:	48 8b 71 38          	mov    rsi,QWORD PTR [rcx+0x38]
  7ce161:	4c 8b 49 50          	mov    r9,QWORD PTR [rcx+0x50]
  7ce165:	48 8b 8d e8 dc ff ff 	mov    rcx,QWORD PTR [rbp-0x2318]
  7ce16c:	4c 89 65 d0          	mov    QWORD PTR [rbp-0x30],r12
  7ce170:	4c 89 bd e0 fa ff ff 	mov    QWORD PTR [rbp-0x520],r15
  7ce177:	4c 8b 21             	mov    r12,QWORD PTR [rcx]
  7ce17a:	4c 89 a5 10 e9 ff ff 	mov    QWORD PTR [rbp-0x16f0],r12
  7ce181:	4c 8b a5 e0 dc ff ff 	mov    r12,QWORD PTR [rbp-0x2320]
  7ce188:	48 89 b5 f0 e8 ff ff 	mov    QWORD PTR [rbp-0x1710],rsi
  7ce18f:	4c 8b 79 50          	mov    r15,QWORD PTR [rcx+0x50]
  7ce193:	48 8b 71 38          	mov    rsi,QWORD PTR [rcx+0x38]
  7ce197:	49 8b 4c 24 68       	mov    rcx,QWORD PTR [r12+0x68]
  7ce19c:	4c 89 bd e8 e8 ff ff 	mov    QWORD PTR [rbp-0x1718],r15
  7ce1a3:	4d 8b 3c 24          	mov    r15,QWORD PTR [r12]
  7ce1a7:	48 89 8d b0 e8 ff ff 	mov    QWORD PTR [rbp-0x1750],rcx
  7ce1ae:	4c 2b f9             	sub    r15,rcx
  7ce1b1:	48 f7 d9             	neg    rcx
  7ce1b4:	48 89 8d d8 fa ff ff 	mov    QWORD PTR [rbp-0x528],rcx
  7ce1bb:	48 8b 8d d8 dc ff ff 	mov    rcx,QWORD PTR [rbp-0x2328]
  7ce1c2:	48 89 b5 c8 e8 ff ff 	mov    QWORD PTR [rbp-0x1738],rsi
  7ce1c9:	49 8b 74 24 50       	mov    rsi,QWORD PTR [r12+0x50]
  7ce1ce:	4d 8b 64 24 38       	mov    r12,QWORD PTR [r12+0x38]
  7ce1d3:	4c 89 bd 08 e9 ff ff 	mov    QWORD PTR [rbp-0x16f8],r15
  7ce1da:	4c 8b 39             	mov    r15,QWORD PTR [rcx]
  7ce1dd:	48 89 b5 c0 e8 ff ff 	mov    QWORD PTR [rbp-0x1740],rsi
  7ce1e4:	4c 89 a5 30 ef ff ff 	mov    QWORD PTR [rbp-0x10d0],r12
  7ce1eb:	4c 03 79 68          	add    r15,QWORD PTR [rcx+0x68]
  7ce1ef:	4c 8b 61 50          	mov    r12,QWORD PTR [rcx+0x50]
  7ce1f3:	48 8b 71 38          	mov    rsi,QWORD PTR [rcx+0x38]
  7ce1f7:	48 8b 8d d0 dc ff ff 	mov    rcx,QWORD PTR [rbp-0x2330]
  7ce1fe:	4c 89 a5 d0 e8 ff ff 	mov    QWORD PTR [rbp-0x1730],r12
  7ce205:	4c 89 9d b8 fa ff ff 	mov    QWORD PTR [rbp-0x548],r11
  7ce20c:	4c 8b 21             	mov    r12,QWORD PTR [rcx]
  7ce20f:	4c 89 a5 30 e2 ff ff 	mov    QWORD PTR [rbp-0x1dd0],r12
  7ce216:	4e 8d 24 9d 00 00 00 	lea    r12,[r11*4+0x0]
  7ce21d:	00 
  7ce21e:	4c 8b 1d 9b c4 2e 00 	mov    r11,QWORD PTR [rip+0x2ec49b]        # aba6c0 <mod_param_mp_n_>
  7ce225:	4c 89 bd 00 e9 ff ff 	mov    QWORD PTR [rbp-0x1700],r15
  7ce22c:	4c 8b 79 50          	mov    r15,QWORD PTR [rcx+0x50]
  7ce230:	47 8b 5c 23 fc       	mov    r11d,DWORD PTR [r11+r12*1-0x4]
  7ce235:	4c 89 bd c0 de ff ff 	mov    QWORD PTR [rbp-0x2140],r15
  7ce23c:	89 85 f8 ea ff ff    	mov    DWORD PTR [rbp-0x1508],eax
  7ce242:	48 98                	cdqe   
  7ce244:	45 8d 7b ff          	lea    r15d,[r11-0x1]
  7ce248:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
  7ce24c:	4d 63 ff             	movsxd r15,r15d
  7ce24f:	48 8b 85 a0 ea ff ff 	mov    rax,QWORD PTR [rbp-0x1560]
  7ce256:	48 89 b5 38 ef ff ff 	mov    QWORD PTR [rbp-0x10c8],rsi
  7ce25d:	4c 89 bd e8 ef ff ff 	mov    QWORD PTR [rbp-0x1018],r15
  7ce264:	49 89 c7             	mov    r15,rax
  7ce267:	48 8b 71 38          	mov    rsi,QWORD PTR [rcx+0x38]
  7ce26b:	48 2b c2             	sub    rax,rdx
  7ce26e:	48 8b 8d a8 ea ff ff 	mov    rcx,QWORD PTR [rbp-0x1558]
  7ce275:	4c 2b f9             	sub    r15,rcx
  7ce278:	4c 89 a5 b8 ef ff ff 	mov    QWORD PTR [rbp-0x1048],r12
  7ce27f:	48 89 95 e0 e8 ff ff 	mov    QWORD PTR [rbp-0x1720],rdx
  7ce286:	4c 89 bd 40 ff ff ff 	mov    QWORD PTR [rbp-0xc0],r15
  7ce28d:	4c 8d 24 cd 00 00 00 	lea    r12,[rcx*8+0x0]
  7ce294:	00 
  7ce295:	4c 89 a5 d0 ea ff ff 	mov    QWORD PTR [rbp-0x1530],r12
  7ce29c:	4d 89 fc             	mov    r12,r15
  7ce29f:	48 f7 d9             	neg    rcx
  7ce2a2:	49 c1 e4 04          	shl    r12,0x4
  7ce2a6:	48 03 ca             	add    rcx,rdx
  7ce2a9:	4c 89 a5 e0 ea ff ff 	mov    QWORD PTR [rbp-0x1520],r12
  7ce2b0:	4e 8d 24 fd 08 00 00 	lea    r12,[r15*8+0x8]
  7ce2b7:	00 
  7ce2b8:	48 89 b5 38 e7 ff ff 	mov    QWORD PTR [rbp-0x18c8],rsi
  7ce2bf:	49 8d 57 01          	lea    rdx,[r15+0x1]
  7ce2c3:	48 89 95 c8 ea ff ff 	mov    QWORD PTR [rbp-0x1538],rdx
  7ce2ca:	49 8d 54 24 f8       	lea    rdx,[r12-0x8]
  7ce2cf:	44 89 5d a0          	mov    DWORD PTR [rbp-0x60],r11d
  7ce2d3:	4b 8d 34 7f          	lea    rsi,[r15+r15*2]
  7ce2d7:	4c 8b bd a0 e9 ff ff 	mov    r15,QWORD PTR [rbp-0x1660]
  7ce2de:	4d 0f af fc          	imul   r15,r12
  7ce2e2:	c4 62 7d 19 8d c8 fa 	vbroadcastsd ymm9,QWORD PTR [rbp-0x538]
  7ce2e9:	ff ff 
  7ce2eb:	c5 7b 12 95 c8 fa ff 	vmovddup xmm10,QWORD PTR [rbp-0x538]
  7ce2f2:	ff 
  7ce2f3:	c5 7b 10 3d 85 de 07 	vmovsd xmm15,QWORD PTR [rip+0x7de85]        # 84c180 <__STRLITPACK_0.112+0x70>
  7ce2fa:	00 
  7ce2fb:	c5 f9 10 2d cd db 07 	vmovupd xmm5,XMMWORD PTR [rip+0x7dbcd]        # 84bed0 <__STRLITPACK_54.50+0xe0>
  7ce302:	00 
  7ce303:	4d 63 db             	movsxd r11,r11d
  7ce306:	4c 89 5d e0          	mov    QWORD PTR [rbp-0x20],r11
  7ce30a:	4d 89 e3             	mov    r11,r12
  7ce30d:	48 89 b5 c0 ea ff ff 	mov    QWORD PTR [rbp-0x1540],rsi
  7ce314:	49 f7 db             	neg    r11
  7ce317:	48 8b b5 90 ea ff ff 	mov    rsi,QWORD PTR [rbp-0x1570]
  7ce31e:	4c 89 bd a0 e9 ff ff 	mov    QWORD PTR [rbp-0x1660],r15
  7ce325:	49 89 f7             	mov    r15,rsi
  7ce328:	4c 89 9d d0 fa ff ff 	mov    QWORD PTR [rbp-0x530],r11
  7ce32f:	4c 8b 9d 40 e2 ff ff 	mov    r11,QWORD PTR [rbp-0x1dc0]
  7ce336:	4c 89 65 d8          	mov    QWORD PTR [rbp-0x28],r12
  7ce33a:	4d 0f af fc          	imul   r15,r12
  7ce33e:	c5 fd 10 3d 9a ce 07 	vmovupd ymm7,YMMWORD PTR [rip+0x7ce9a]        # 84b1e0 <var$630.126.450+0x1240>
  7ce345:	00 
  7ce346:	c5 fb 10 35 ba ea 07 	vmovsd xmm6,QWORD PTR [rip+0x7eaba]        # 84ce08 <__STRLITPACK_0.112+0xcf8>
  7ce34d:	00 
  7ce34e:	c5 f9 10 15 8a db 07 	vmovupd xmm2,XMMWORD PTR [rip+0x7db8a]        # 84bee0 <__STRLITPACK_54.50+0xf0>
  7ce355:	00 
  7ce356:	c5 f9 10 1d 92 db 07 	vmovupd xmm3,XMMWORD PTR [rip+0x7db92]        # 84bef0 <__STRLITPACK_54.50+0x100>
  7ce35d:	00 
  7ce35e:	c5 fb 10 25 aa ea 07 	vmovsd xmm4,QWORD PTR [rip+0x7eaaa]        # 84ce10 <__STRLITPACK_0.112+0xd00>
  7ce365:	00 
  7ce366:	4d 89 dc             	mov    r12,r11
  7ce369:	4d 0f af e6          	imul   r12,r14
  7ce36d:	c5 fd 10 0d 8b ce 07 	vmovupd ymm1,YMMWORD PTR [rip+0x7ce8b]        # 84b200 <var$630.126.450+0x1260>
  7ce374:	00 
  7ce375:	c5 fb 10 05 9b ea 07 	vmovsd xmm0,QWORD PTR [rip+0x7ea9b]        # 84ce18 <__STRLITPACK_0.112+0xd08>
  7ce37c:	00 
  7ce37d:	c5 7b 10 1d 9b ea 07 	vmovsd xmm11,QWORD PTR [rip+0x7ea9b]        # 84ce20 <__STRLITPACK_0.112+0xd10>
  7ce384:	00 
  7ce385:	c5 79 11 95 80 eb ff 	vmovupd XMMWORD PTR [rbp-0x1480],xmm10
  7ce38c:	ff 
  7ce38d:	c5 7d 10 2d 8b ce 07 	vmovupd ymm13,YMMWORD PTR [rip+0x7ce8b]        # 84b220 <var$630.126.450+0x1280>
  7ce394:	00 
  7ce395:	c5 7d 10 25 a3 ce 07 	vmovupd ymm12,YMMWORD PTR [rip+0x7cea3]        # 84b240 <var$630.126.450+0x12a0>
  7ce39c:	00 
  7ce39d:	c5 7d 11 8d f0 ef ff 	vmovupd YMMWORD PTR [rbp-0x1010],ymm9
  7ce3a4:	ff 
  7ce3a5:	4c 89 b5 f0 ea ff ff 	mov    QWORD PTR [rbp-0x1510],r14
  7ce3ac:	4c 8b b5 48 e2 ff ff 	mov    r14,QWORD PTR [rbp-0x1db8]
  7ce3b3:	4d 0f af f2          	imul   r14,r10
  7ce3b7:	4c 89 bd 90 ef ff ff 	mov    QWORD PTR [rbp-0x1070],r15
  7ce3be:	4d 89 c7             	mov    r15,r8
  7ce3c1:	4c 89 ad 48 ff ff ff 	mov    QWORD PTR [rbp-0xb8],r13
  7ce3c8:	4d 2b fd             	sub    r15,r13
  7ce3cb:	4d 2b ec             	sub    r13,r12
  7ce3ce:	4c 89 bd 40 e8 ff ff 	mov    QWORD PTR [rbp-0x17c0],r15
  7ce3d5:	4d 03 ef             	add    r13,r15
  7ce3d8:	4d 2b fc             	sub    r15,r12
  7ce3db:	4d 2b fe             	sub    r15,r14
  7ce3de:	4c 89 bd a8 e8 ff ff 	mov    QWORD PTR [rbp-0x1758],r15
  7ce3e5:	4d 89 ef             	mov    r15,r13
  7ce3e8:	4d 2b fe             	sub    r15,r14
  7ce3eb:	4c 89 bd 30 e8 ff ff 	mov    QWORD PTR [rbp-0x17d0],r15
  7ce3f2:	4f 8d 3c 34          	lea    r15,[r12+r14*1]
  7ce3f6:	48 89 55 80          	mov    QWORD PTR [rbp-0x80],rdx
  7ce3fa:	48 f7 da             	neg    rdx
  7ce3fd:	4d 2b c7             	sub    r8,r15
  7ce400:	4c 89 85 08 eb ff ff 	mov    QWORD PTR [rbp-0x14f8],r8
  7ce407:	4f 8d 04 12          	lea    r8,[r10+r10*1]
  7ce40b:	49 f7 d8             	neg    r8
  7ce40e:	4d 03 c6             	add    r8,r14
  7ce411:	4d 2b e8             	sub    r13,r8
  7ce414:	4c 89 ad 38 e8 ff ff 	mov    QWORD PTR [rbp-0x17c8],r13
  7ce41b:	4c 8d 6a f8          	lea    r13,[rdx-0x8]
  7ce41f:	4c 0f af ee          	imul   r13,rsi
  7ce423:	4c 03 ea             	add    r13,rdx
  7ce426:	48 89 8d a8 ea ff ff 	mov    QWORD PTR [rbp-0x1558],rcx
  7ce42d:	48 89 95 e8 ea ff ff 	mov    QWORD PTR [rbp-0x1518],rdx
  7ce434:	48 89 85 a0 ea ff ff 	mov    QWORD PTR [rbp-0x1560],rax
  7ce43b:	48 ff c0             	inc    rax
  7ce43e:	4c 89 55 98          	mov    QWORD PTR [rbp-0x68],r10
  7ce442:	49 8d 54 cd 00       	lea    rdx,[r13+rcx*8+0x0]
  7ce447:	4c 89 d9             	mov    rcx,r11
  7ce44a:	41 ba 00 00 00 00    	mov    r10d,0x0
  7ce450:	4c 89 8d b8 e8 ff ff 	mov    QWORD PTR [rbp-0x1748],r9
  7ce457:	4c 0f 4f d0          	cmovg  r10,rax
  7ce45b:	49 0f af c9          	imul   rcx,r9
  7ce45f:	4c 8b 8d 48 e2 ff ff 	mov    r9,QWORD PTR [rbp-0x1db8]
  7ce466:	48 2b f9             	sub    rdi,rcx
  7ce469:	4c 89 95 d8 ea ff ff 	mov    QWORD PTR [rbp-0x1528],r10
  7ce470:	4c 89 ce             	mov    rsi,r9
  7ce473:	4c 8b 95 f0 e8 ff ff 	mov    r10,QWORD PTR [rbp-0x1710]
  7ce47a:	4d 89 cd             	mov    r13,r9
  7ce47d:	49 0f af f2          	imul   rsi,r10
  7ce481:	4c 0f af ad 38 ef ff 	imul   r13,QWORD PTR [rbp-0x10c8]
  7ce488:	ff 
  7ce489:	48 89 85 d8 e8 ff ff 	mov    QWORD PTR [rbp-0x1728],rax
  7ce490:	48 83 e0 fc          	and    rax,0xfffffffffffffffc
  7ce494:	48 89 85 a0 e8 ff ff 	mov    QWORD PTR [rbp-0x1760],rax
  7ce49b:	4c 89 d8             	mov    rax,r11
  7ce49e:	48 8b 8d e8 e8 ff ff 	mov    rcx,QWORD PTR [rbp-0x1718]
  7ce4a5:	48 2b fe             	sub    rdi,rsi
  7ce4a8:	48 0f af c1          	imul   rax,rcx
  7ce4ac:	48 89 95 b8 ea ff ff 	mov    QWORD PTR [rbp-0x1548],rdx
  7ce4b3:	48 8b 95 10 e9 ff ff 	mov    rdx,QWORD PTR [rbp-0x16f0]
  7ce4ba:	48 2b d0             	sub    rdx,rax
  7ce4bd:	4c 89 d8             	mov    rax,r11
  7ce4c0:	48 89 bd f8 e8 ff ff 	mov    QWORD PTR [rbp-0x1708],rdi
  7ce4c7:	49 03 fa             	add    rdi,r10
  7ce4ca:	4d 89 ca             	mov    r10,r9
  7ce4cd:	4c 0f af 95 c8 e8 ff 	imul   r10,QWORD PTR [rbp-0x1738]
  7ce4d4:	ff 
  7ce4d5:	48 0f af 85 d0 e8 ff 	imul   rax,QWORD PTR [rbp-0x1730]
  7ce4dc:	ff 
  7ce4dd:	49 03 c5             	add    rax,r13
  7ce4e0:	48 8d 34 0a          	lea    rsi,[rdx+rcx*1]
  7ce4e4:	4c 89 d9             	mov    rcx,r11
  7ce4e7:	49 2b f2             	sub    rsi,r10
  7ce4ea:	48 0f af 8d c0 e8 ff 	imul   rcx,QWORD PTR [rbp-0x1740]
  7ce4f1:	ff 
  7ce4f2:	4c 0f af 9d c0 de ff 	imul   r11,QWORD PTR [rbp-0x2140]
  7ce4f9:	ff 
  7ce4fa:	48 89 b5 98 e8 ff ff 	mov    QWORD PTR [rbp-0x1768],rsi
  7ce501:	4c 89 ce             	mov    rsi,r9
  7ce504:	48 29 85 00 e9 ff ff 	sub    QWORD PTR [rbp-0x1700],rax
  7ce50b:	49 2b d2             	sub    rdx,r10
  7ce50e:	48 8b 85 08 e9 ff ff 	mov    rax,QWORD PTR [rbp-0x16f8]
  7ce515:	48 0f af b5 30 ef ff 	imul   rsi,QWORD PTR [rbp-0x10d0]
  7ce51c:	ff 
  7ce51d:	48 89 bd 88 e8 ff ff 	mov    QWORD PTR [rbp-0x1778],rdi
  7ce524:	48 2b c1             	sub    rax,rcx
  7ce527:	48 8b bd 38 e7 ff ff 	mov    rdi,QWORD PTR [rbp-0x18c8]
  7ce52e:	4c 89 c9             	mov    rcx,r9
  7ce531:	48 0f af cf          	imul   rcx,rdi
  7ce535:	48 2b c6             	sub    rax,rsi
  7ce538:	49 c1 e1 03          	shl    r9,0x3
  7ce53c:	48 8b b5 30 e2 ff ff 	mov    rsi,QWORD PTR [rbp-0x1dd0]
  7ce543:	49 2b f3             	sub    rsi,r11
  7ce546:	48 2b f1             	sub    rsi,rcx
  7ce549:	4c 8b 95 40 e8 ff ff 	mov    r10,QWORD PTR [rbp-0x17c0]
  7ce550:	4c 89 8d b0 de ff ff 	mov    QWORD PTR [rbp-0x2150],r9
  7ce557:	48 89 b5 30 e2 ff ff 	mov    QWORD PTR [rbp-0x1dd0],rsi
  7ce55e:	c4 41 3d 57 c0       	vxorpd ymm8,ymm8,ymm8
  7ce563:	48 8d 0c 7e          	lea    rcx,[rsi+rdi*2]
  7ce567:	48 8b bd 48 ff ff ff 	mov    rdi,QWORD PTR [rbp-0xb8]
  7ce56e:	48 89 8d b8 de ff ff 	mov    QWORD PTR [rbp-0x2148],rcx
  7ce575:	48 89 85 08 e9 ff ff 	mov    QWORD PTR [rbp-0x16f8],rax
  7ce57c:	48 89 95 10 e9 ff ff 	mov    QWORD PTR [rbp-0x16f0],rdx
  7ce583:	4c 8d 1c 3f          	lea    r11,[rdi+rdi*1]
  7ce587:	4d 2b dc             	sub    r11,r12
  7ce58a:	4c 8d 0c 7f          	lea    r9,[rdi+rdi*2]
  7ce58e:	4d 03 da             	add    r11,r10
  7ce591:	49 f7 dc             	neg    r12
  7ce594:	4c 89 d9             	mov    rcx,r11
  7ce597:	4d 03 e1             	add    r12,r9
  7ce59a:	49 2b ce             	sub    rcx,r14
  7ce59d:	49 8d 34 7a          	lea    rsi,[r10+rdi*2]
  7ce5a1:	4d 03 e2             	add    r12,r10
  7ce5a4:	4d 03 d1             	add    r10,r9
  7ce5a7:	49 f7 de             	neg    r14
  7ce5aa:	4d 2b d8             	sub    r11,r8
  7ce5ad:	4d 2b d7             	sub    r10,r15
  7ce5b0:	4d 03 f4             	add    r14,r12
  7ce5b3:	4d 2b e0             	sub    r12,r8
  7ce5b6:	49 2b f7             	sub    rsi,r15
  7ce5b9:	48 89 8d 28 e8 ff ff 	mov    QWORD PTR [rbp-0x17d8],rcx
  7ce5c0:	48 89 b5 90 e8 ff ff 	mov    QWORD PTR [rbp-0x1770],rsi
  7ce5c7:	4c 89 95 40 e8 ff ff 	mov    QWORD PTR [rbp-0x17c0],r10
  7ce5ce:	4c 89 a5 48 e8 ff ff 	mov    QWORD PTR [rbp-0x17b8],r12
  7ce5d5:	4c 89 b5 50 e8 ff ff 	mov    QWORD PTR [rbp-0x17b0],r14
  7ce5dc:	4c 89 9d 58 e8 ff ff 	mov    QWORD PTR [rbp-0x17a8],r11
  7ce5e3:	4c 8b 4d e0          	mov    r9,QWORD PTR [rbp-0x20]
  7ce5e7:	4c 8b 85 00 eb ff ff 	mov    r8,QWORD PTR [rbp-0x1500]
  7ce5ee:	45 33 db             	xor    r11d,r11d
  7ce5f1:	45 33 d2             	xor    r10d,r10d
  7ce5f4:	45 33 e4             	xor    r12d,r12d
  7ce5f7:	4d 85 c9             	test   r9,r9
  7ce5fa:	0f 8e 84 01 00 00    	jle    7ce784 <biology_mod_mp_biology_tile_+0x2774>
  7ce600:	48 8b bd 70 dc ff ff 	mov    rdi,QWORD PTR [rbp-0x2390]
  7ce607:	48 8b 85 a0 df ff ff 	mov    rax,QWORD PTR [rbp-0x2060]
  7ce60e:	48 2b bd d0 ea ff ff 	sub    rdi,QWORD PTR [rbp-0x1530]
  7ce615:	48 8b 55 98          	mov    rdx,QWORD PTR [rbp-0x68]
  7ce619:	48 8b 75 d0          	mov    rsi,QWORD PTR [rbp-0x30]
  7ce61d:	48 89 85 78 e9 ff ff 	mov    QWORD PTR [rbp-0x1688],rax
  7ce624:	4c 89 4d e0          	mov    QWORD PTR [rbp-0x20],r9
  7ce628:	4c 89 85 00 eb ff ff 	mov    QWORD PTR [rbp-0x1500],r8
  7ce62f:	c5 7d 10 05 29 ba 07 	vmovupd ymm8,YMMWORD PTR [rip+0x7ba29]        # 84a060 <var$630.126.450+0xc0>
  7ce636:	00 
  7ce637:	c5 7b 10 0d 41 db 07 	vmovsd xmm9,QWORD PTR [rip+0x7db41]        # 84c180 <__STRLITPACK_0.112+0x70>
  7ce63e:	00 
  7ce63f:	48 3b 75 c8          	cmp    rsi,QWORD PTR [rbp-0x38]
  7ce643:	0f 8f 14 01 00 00    	jg     7ce75d <biology_mod_mp_biology_tile_+0x274d>
  7ce649:	48 8b 4d c8          	mov    rcx,QWORD PTR [rbp-0x38]
  7ce64d:	48 2b ce             	sub    rcx,rsi
  7ce650:	48 ff c1             	inc    rcx
  7ce653:	48 83 f9 04          	cmp    rcx,0x4
  7ce657:	0f 8c aa 64 00 00    	jl     7d4b07 <biology_mod_mp_biology_tile_+0x8af7>
  7ce65d:	4c 8b bd b0 ea ff ff 	mov    r15,QWORD PTR [rbp-0x1550]
  7ce664:	49 89 f6             	mov    r14,rsi
  7ce667:	4c 0f af bd f0 ea ff 	imul   r15,QWORD PTR [rbp-0x1510]
  7ce66e:	ff 
  7ce66f:	4c 0f af f2          	imul   r14,rdx
  7ce673:	4c 8b 85 78 e9 ff ff 	mov    r8,QWORD PTR [rbp-0x1688]
  7ce67a:	89 c8                	mov    eax,ecx
  7ce67c:	4c 2b 85 d0 ea ff ff 	sub    r8,QWORD PTR [rbp-0x1530]
  7ce683:	4d 03 fe             	add    r15,r14
  7ce686:	4c 03 bd 08 eb ff ff 	add    r15,QWORD PTR [rbp-0x14f8]
  7ce68d:	83 e0 fc             	and    eax,0xfffffffc
  7ce690:	45 33 ed             	xor    r13d,r13d
  7ce693:	4c 8d 0c f7          	lea    r9,[rdi+rsi*8]
  7ce697:	48 98                	cdqe   
  7ce699:	4d 8d 04 f0          	lea    r8,[r8+rsi*8]
  7ce69d:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
  7ce6a1:	4d 03 ca             	add    r9,r10
  7ce6a4:	4d 03 c2             	add    r8,r10
  7ce6a7:	4d 03 fc             	add    r15,r12
  7ce6aa:	45 33 f6             	xor    r14d,r14d
  7ce6ad:	4b 8d 34 37          	lea    rsi,[r15+r14*1]
  7ce6b1:	c5 7b 10 16          	vmovsd xmm10,QWORD PTR [rsi]
  7ce6b5:	4d 8d 34 96          	lea    r14,[r14+rdx*4]
  7ce6b9:	c5 29 16 1c 16       	vmovhpd xmm11,xmm10,QWORD PTR [rsi+rdx*1]
  7ce6be:	48 8d 34 56          	lea    rsi,[rsi+rdx*2]
  7ce6c2:	c5 7b 10 26          	vmovsd xmm12,QWORD PTR [rsi]
  7ce6c6:	c5 19 16 2c 16       	vmovhpd xmm13,xmm12,QWORD PTR [rsi+rdx*1]
  7ce6cb:	c4 43 25 18 f5 01    	vinsertf128 ymm14,ymm11,xmm13,0x1
  7ce6d1:	c4 41 3d 5e fe       	vdivpd ymm15,ymm8,ymm14
  7ce6d6:	c4 01 7d 11 34 e9    	vmovupd YMMWORD PTR [r9+r13*8],ymm14
  7ce6dc:	c4 01 7d 11 3c e8    	vmovupd YMMWORD PTR [r8+r13*8],ymm15
  7ce6e2:	49 83 c5 04          	add    r13,0x4
  7ce6e6:	4c 3b e8             	cmp    r13,rax
  7ce6e9:	72 c2                	jb     7ce6ad <biology_mod_mp_biology_tile_+0x269d>
  7ce6eb:	48 8b 75 d0          	mov    rsi,QWORD PTR [rbp-0x30]
  7ce6ef:	49 89 d0             	mov    r8,rdx
  7ce6f2:	4c 0f af c0          	imul   r8,rax
  7ce6f6:	48 3b c1             	cmp    rax,rcx
  7ce6f9:	73 62                	jae    7ce75d <biology_mod_mp_biology_tile_+0x274d>
  7ce6fb:	4c 8b ad 78 e9 ff ff 	mov    r13,QWORD PTR [rbp-0x1688]
  7ce702:	49 89 f7             	mov    r15,rsi
  7ce705:	4c 2b ad d0 ea ff ff 	sub    r13,QWORD PTR [rbp-0x1530]
  7ce70c:	4c 8d 0c f7          	lea    r9,[rdi+rsi*8]
  7ce710:	4c 0f af fa          	imul   r15,rdx
  7ce714:	4d 03 ca             	add    r9,r10
  7ce717:	4d 8d 74 f5 00       	lea    r14,[r13+rsi*8+0x0]
  7ce71c:	4c 8b ad b0 ea ff ff 	mov    r13,QWORD PTR [rbp-0x1550]
  7ce723:	4d 03 f2             	add    r14,r10
  7ce726:	4c 0f af ad f0 ea ff 	imul   r13,QWORD PTR [rbp-0x1510]
  7ce72d:	ff 
  7ce72e:	4d 03 ef             	add    r13,r15
  7ce731:	4c 03 ad 08 eb ff ff 	add    r13,QWORD PTR [rbp-0x14f8]
  7ce738:	4d 03 ec             	add    r13,r12
  7ce73b:	c4 01 7b 10 14 28    	vmovsd xmm10,QWORD PTR [r8+r13*1]
  7ce741:	4c 03 c2             	add    r8,rdx
  7ce744:	c4 41 33 5e da       	vdivsd xmm11,xmm9,xmm10
  7ce749:	c4 41 7b 11 14 c1    	vmovsd QWORD PTR [r9+rax*8],xmm10
  7ce74f:	c4 41 7b 11 1c c6    	vmovsd QWORD PTR [r14+rax*8],xmm11
  7ce755:	48 ff c0             	inc    rax
  7ce758:	48 3b c1             	cmp    rax,rcx
  7ce75b:	72 de                	jb     7ce73b <biology_mod_mp_biology_tile_+0x272b>
  7ce75d:	49 ff c3             	inc    r11
  7ce760:	4c 03 55 d8          	add    r10,QWORD PTR [rbp-0x28]
  7ce764:	4c 03 a5 48 ff ff ff 	add    r12,QWORD PTR [rbp-0xb8]
  7ce76b:	4c 3b 5d e0          	cmp    r11,QWORD PTR [rbp-0x20]
  7ce76f:	0f 82 ca fe ff ff    	jb     7ce63f <biology_mod_mp_biology_tile_+0x262f>
  7ce775:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
  7ce779:	4c 8b 4d e0          	mov    r9,QWORD PTR [rbp-0x20]
  7ce77d:	4c 8b 85 00 eb ff ff 	mov    r8,QWORD PTR [rbp-0x1500]
  7ce784:	45 33 db             	xor    r11d,r11d
  7ce787:	4c 89 c8             	mov    rax,r9
  7ce78a:	45 33 ed             	xor    r13d,r13d
  7ce78d:	48 8b bd 20 e7 ff ff 	mov    rdi,QWORD PTR [rbp-0x18e0]
  7ce794:	45 33 e4             	xor    r12d,r12d
  7ce797:	48 8b b5 18 e7 ff ff 	mov    rsi,QWORD PTR [rbp-0x18e8]
  7ce79e:	48 ff c8             	dec    rax
  7ce7a1:	0f 8e b8 01 00 00    	jle    7ce95f <biology_mod_mp_biology_tile_+0x294f>
  7ce7a7:	4c 8b 95 78 e2 ff ff 	mov    r10,QWORD PTR [rbp-0x1d88]
  7ce7ae:	48 89 b5 10 eb ff ff 	mov    QWORD PTR [rbp-0x14f0],rsi
  7ce7b5:	4c 2b 95 d0 ea ff ff 	sub    r10,QWORD PTR [rbp-0x1530]
  7ce7bc:	48 8b 55 98          	mov    rdx,QWORD PTR [rbp-0x68]
  7ce7c0:	48 8b 75 d0          	mov    rsi,QWORD PTR [rbp-0x30]
  7ce7c4:	48 89 bd 18 eb ff ff 	mov    QWORD PTR [rbp-0x14e8],rdi
  7ce7cb:	48 89 85 48 eb ff ff 	mov    QWORD PTR [rbp-0x14b8],rax
  7ce7d2:	4c 89 4d e0          	mov    QWORD PTR [rbp-0x20],r9
  7ce7d6:	4c 89 85 00 eb ff ff 	mov    QWORD PTR [rbp-0x1500],r8
  7ce7dd:	c5 7d 10 0d 7b b8 07 	vmovupd ymm9,YMMWORD PTR [rip+0x7b87b]        # 84a060 <var$630.126.450+0xc0>
  7ce7e4:	00 
  7ce7e5:	c5 7b 10 15 93 d9 07 	vmovsd xmm10,QWORD PTR [rip+0x7d993]        # 84c180 <__STRLITPACK_0.112+0x70>
  7ce7ec:	00 
  7ce7ed:	48 3b 75 c8          	cmp    rsi,QWORD PTR [rbp-0x38]
  7ce7f1:	0f 8f 30 01 00 00    	jg     7ce927 <biology_mod_mp_biology_tile_+0x2917>
  7ce7f7:	48 8b 4d c8          	mov    rcx,QWORD PTR [rbp-0x38]
  7ce7fb:	48 2b ce             	sub    rcx,rsi
  7ce7fe:	48 ff c1             	inc    rcx
  7ce801:	48 83 f9 04          	cmp    rcx,0x4
  7ce805:	0f 8c f5 62 00 00    	jl     7d4b00 <biology_mod_mp_biology_tile_+0x8af0>
  7ce80b:	48 8b bd b0 ea ff ff 	mov    rdi,QWORD PTR [rbp-0x1550]
  7ce812:	49 89 f0             	mov    r8,rsi
  7ce815:	48 0f af bd f0 ea ff 	imul   rdi,QWORD PTR [rbp-0x1510]
  7ce81c:	ff 
  7ce81d:	4c 0f af c2          	imul   r8,rdx
  7ce821:	49 03 f8             	add    rdi,r8
  7ce824:	89 c8                	mov    eax,ecx
  7ce826:	4c 8b bd 90 e8 ff ff 	mov    r15,QWORD PTR [rbp-0x1770]
  7ce82d:	83 e0 fc             	and    eax,0xfffffffc
  7ce830:	45 33 f6             	xor    r14d,r14d
  7ce833:	4d 8d 0c f2          	lea    r9,[r10+rsi*8]
  7ce837:	48 98                	cdqe   
  7ce839:	4d 03 cd             	add    r9,r13
  7ce83c:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
  7ce840:	4d 8d 04 3f          	lea    r8,[r15+rdi*1]
  7ce844:	48 03 bd 08 eb ff ff 	add    rdi,QWORD PTR [rbp-0x14f8]
  7ce84b:	4d 03 c4             	add    r8,r12
  7ce84e:	49 03 fc             	add    rdi,r12
  7ce851:	45 33 ff             	xor    r15d,r15d
  7ce854:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  7ce859:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  7ce860:	4a 8d 34 3f          	lea    rsi,[rdi+r15*1]
  7ce864:	c5 7b 10 1e          	vmovsd xmm11,QWORD PTR [rsi]
  7ce868:	c5 21 16 24 16       	vmovhpd xmm12,xmm11,QWORD PTR [rsi+rdx*1]
  7ce86d:	48 8d 34 56          	lea    rsi,[rsi+rdx*2]
  7ce871:	c5 7b 10 2e          	vmovsd xmm13,QWORD PTR [rsi]
  7ce875:	c5 11 16 34 16       	vmovhpd xmm14,xmm13,QWORD PTR [rsi+rdx*1]
  7ce87a:	4b 8d 34 38          	lea    rsi,[r8+r15*1]
  7ce87e:	c5 7b 10 3e          	vmovsd xmm15,QWORD PTR [rsi]
  7ce882:	4d 8d 3c 97          	lea    r15,[r15+rdx*4]
  7ce886:	c5 01 16 1c 16       	vmovhpd xmm11,xmm15,QWORD PTR [rsi+rdx*1]
  7ce88b:	48 8d 34 56          	lea    rsi,[rsi+rdx*2]
  7ce88f:	c4 43 1d 18 c6 01    	vinsertf128 ymm8,ymm12,xmm14,0x1
  7ce895:	c5 7b 10 26          	vmovsd xmm12,QWORD PTR [rsi]
  7ce899:	c5 19 16 2c 16       	vmovhpd xmm13,xmm12,QWORD PTR [rsi+rdx*1]
  7ce89e:	c4 43 25 18 f5 01    	vinsertf128 ymm14,ymm11,xmm13,0x1
  7ce8a4:	c4 41 3d 58 c6       	vaddpd ymm8,ymm8,ymm14
  7ce8a9:	c4 41 35 5e f8       	vdivpd ymm15,ymm9,ymm8
  7ce8ae:	c4 01 7d 11 3c f1    	vmovupd YMMWORD PTR [r9+r14*8],ymm15
  7ce8b4:	49 83 c6 04          	add    r14,0x4
  7ce8b8:	4c 3b f0             	cmp    r14,rax
  7ce8bb:	72 a3                	jb     7ce860 <biology_mod_mp_biology_tile_+0x2850>
  7ce8bd:	48 8b 75 d0          	mov    rsi,QWORD PTR [rbp-0x30]
  7ce8c1:	49 89 d0             	mov    r8,rdx
  7ce8c4:	4c 0f af c0          	imul   r8,rax
  7ce8c8:	48 3b c1             	cmp    rax,rcx
  7ce8cb:	73 5a                	jae    7ce927 <biology_mod_mp_biology_tile_+0x2917>
  7ce8cd:	48 8b bd b0 ea ff ff 	mov    rdi,QWORD PTR [rbp-0x1550]
  7ce8d4:	49 89 f6             	mov    r14,rsi
  7ce8d7:	48 0f af bd f0 ea ff 	imul   rdi,QWORD PTR [rbp-0x1510]
  7ce8de:	ff 
  7ce8df:	4c 0f af f2          	imul   r14,rdx
  7ce8e3:	49 03 fe             	add    rdi,r14
  7ce8e6:	4d 8d 0c f2          	lea    r9,[r10+rsi*8]
  7ce8ea:	4c 8b bd 90 e8 ff ff 	mov    r15,QWORD PTR [rbp-0x1770]
  7ce8f1:	4d 03 cd             	add    r9,r13
  7ce8f4:	4d 8d 34 3f          	lea    r14,[r15+rdi*1]
  7ce8f8:	48 03 bd 08 eb ff ff 	add    rdi,QWORD PTR [rbp-0x14f8]
  7ce8ff:	4d 03 f4             	add    r14,r12
  7ce902:	49 03 fc             	add    rdi,r12
  7ce905:	c4 41 7b 10 04 38    	vmovsd xmm8,QWORD PTR [r8+rdi*1]
  7ce90b:	c4 01 3b 58 1c 30    	vaddsd xmm11,xmm8,QWORD PTR [r8+r14*1]
  7ce911:	4c 03 c2             	add    r8,rdx
  7ce914:	c4 41 2b 5e e3       	vdivsd xmm12,xmm10,xmm11
  7ce919:	c4 41 7b 11 24 c1    	vmovsd QWORD PTR [r9+rax*8],xmm12
  7ce91f:	48 ff c0             	inc    rax
  7ce922:	48 3b c1             	cmp    rax,rcx
  7ce925:	72 de                	jb     7ce905 <biology_mod_mp_biology_tile_+0x28f5>
  7ce927:	49 ff c3             	inc    r11
  7ce92a:	4c 03 6d d8          	add    r13,QWORD PTR [rbp-0x28]
  7ce92e:	4c 03 a5 48 ff ff ff 	add    r12,QWORD PTR [rbp-0xb8]
  7ce935:	4c 3b 9d 48 eb ff ff 	cmp    r11,QWORD PTR [rbp-0x14b8]
  7ce93c:	0f 82 ab fe ff ff    	jb     7ce7ed <biology_mod_mp_biology_tile_+0x27dd>
  7ce942:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
  7ce946:	48 8b b5 10 eb ff ff 	mov    rsi,QWORD PTR [rbp-0x14f0]
  7ce94d:	48 8b bd 18 eb ff ff 	mov    rdi,QWORD PTR [rbp-0x14e8]
  7ce954:	4c 8b 4d e0          	mov    r9,QWORD PTR [rbp-0x20]
  7ce958:	4c 8b 85 00 eb ff ff 	mov    r8,QWORD PTR [rbp-0x1500]
  7ce95f:	33 c0                	xor    eax,eax
  7ce961:	45 33 d2             	xor    r10d,r10d
  7ce964:	33 c9                	xor    ecx,ecx
  7ce966:	48 83 bd e8 ef ff ff 	cmp    QWORD PTR [rbp-0x1018],0x2
  7ce96d:	02 
  7ce96e:	0f 8c b0 03 00 00    	jl     7ced24 <biology_mod_mp_biology_tile_+0x2d14>
  7ce974:	4c 8b a5 10 dc ff ff 	mov    r12,QWORD PTR [rbp-0x23f0]
  7ce97b:	4c 8b 9d e8 ef ff ff 	mov    r11,QWORD PTR [rbp-0x1018]
  7ce982:	4c 2b a5 d0 ea ff ff 	sub    r12,QWORD PTR [rbp-0x1530]
  7ce989:	4c 2b 65 80          	sub    r12,QWORD PTR [rbp-0x80]
  7ce98d:	4c 03 a5 e0 ea ff ff 	add    r12,QWORD PTR [rbp-0x1520]
  7ce994:	4d 8d 5b ff          	lea    r11,[r11-0x1]
  7ce998:	48 8b 55 d0          	mov    rdx,QWORD PTR [rbp-0x30]
  7ce99c:	89 95 80 e8 ff ff    	mov    DWORD PTR [rbp-0x1780],edx
  7ce9a2:	48 89 b5 10 eb ff ff 	mov    QWORD PTR [rbp-0x14f0],rsi
  7ce9a9:	48 89 bd 18 eb ff ff 	mov    QWORD PTR [rbp-0x14e8],rdi
  7ce9b0:	4c 89 9d 90 e9 ff ff 	mov    QWORD PTR [rbp-0x1670],r11
  7ce9b7:	4c 89 a5 78 e8 ff ff 	mov    QWORD PTR [rbp-0x1788],r12
  7ce9be:	48 89 85 98 e9 ff ff 	mov    QWORD PTR [rbp-0x1668],rax
  7ce9c5:	4c 89 4d e0          	mov    QWORD PTR [rbp-0x20],r9
  7ce9c9:	4c 89 85 00 eb ff ff 	mov    QWORD PTR [rbp-0x1500],r8
  7ce9d0:	c5 79 10 05 c8 cd 07 	vmovupd xmm8,XMMWORD PTR [rip+0x7cdc8]        # 84b7a0 <__STRLITPACK_219.115+0xa0>
  7ce9d7:	00 
  7ce9d8:	c5 7b 10 0d a0 d7 07 	vmovsd xmm9,QWORD PTR [rip+0x7d7a0]        # 84c180 <__STRLITPACK_0.112+0x70>
  7ce9df:	00 
  7ce9e0:	48 8b 55 98          	mov    rdx,QWORD PTR [rbp-0x68]
  7ce9e4:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  7ce9e8:	48 3b 45 c8          	cmp    rax,QWORD PTR [rbp-0x38]
  7ce9ec:	0f 8f f0 02 00 00    	jg     7cece2 <biology_mod_mp_biology_tile_+0x2cd2>
  7ce9f2:	8b 85 f8 ea ff ff    	mov    eax,DWORD PTR [rbp-0x1508]
  7ce9f8:	2b 85 80 e8 ff ff    	sub    eax,DWORD PTR [rbp-0x1780]
  7ce9fe:	ff c0                	inc    eax
  7cea00:	83 f8 04             	cmp    eax,0x4
  7cea03:	0f 8c ef 60 00 00    	jl     7d4af8 <biology_mod_mp_biology_tile_+0x8ae8>
  7cea09:	48 8b b5 78 e8 ff ff 	mov    rsi,QWORD PTR [rbp-0x1788]
  7cea10:	41 89 c7             	mov    r15d,eax
  7cea13:	4c 8b 65 d0          	mov    r12,QWORD PTR [rbp-0x30]
  7cea17:	41 83 e7 fc          	and    r15d,0xfffffffc
  7cea1b:	4c 8b 9d 38 e8 ff ff 	mov    r11,QWORD PTR [rbp-0x17c8]
  7cea22:	45 33 f6             	xor    r14d,r14d
  7cea25:	4c 8b 8d 08 eb ff ff 	mov    r9,QWORD PTR [rbp-0x14f8]
  7cea2c:	4c 8b 85 58 e8 ff ff 	mov    r8,QWORD PTR [rbp-0x17a8]
  7cea33:	4e 8d 2c e6          	lea    r13,[rsi+r12*8]
  7cea37:	48 8b b5 b0 ea ff ff 	mov    rsi,QWORD PTR [rbp-0x1550]
  7cea3e:	4d 03 ea             	add    r13,r10
  7cea41:	48 0f af b5 f0 ea ff 	imul   rsi,QWORD PTR [rbp-0x1510]
  7cea48:	ff 
  7cea49:	4c 0f af e2          	imul   r12,rdx
  7cea4d:	49 03 f4             	add    rsi,r12
  7cea50:	48 8b bd 90 e8 ff ff 	mov    rdi,QWORD PTR [rbp-0x1770]
  7cea57:	4d 63 ff             	movsxd r15,r15d
  7cea5a:	4d 8d 24 33          	lea    r12,[r11+rsi*1]
  7cea5e:	89 85 60 e8 ff ff    	mov    DWORD PTR [rbp-0x17a0],eax
  7cea64:	4d 8d 1c 31          	lea    r11,[r9+rsi*1]
  7cea68:	48 89 8d 68 e8 ff ff 	mov    QWORD PTR [rbp-0x1798],rcx
  7cea6f:	4d 8d 0c 30          	lea    r9,[r8+rsi*1]
  7cea73:	4c 89 95 70 e8 ff ff 	mov    QWORD PTR [rbp-0x1790],r10
  7cea7a:	4c 8d 04 37          	lea    r8,[rdi+rsi*1]
  7cea7e:	48 8b bd 48 e8 ff ff 	mov    rdi,QWORD PTR [rbp-0x17b8]
  7cea85:	4c 03 e1             	add    r12,rcx
  7cea88:	4c 89 f0             	mov    rax,r14
  7cea8b:	4c 03 d9             	add    r11,rcx
  7cea8e:	4c 03 c9             	add    r9,rcx
  7cea91:	4c 03 c1             	add    r8,rcx
  7cea94:	48 03 fe             	add    rdi,rsi
  7cea97:	48 03 b5 40 e8 ff ff 	add    rsi,QWORD PTR [rbp-0x17c0]
  7cea9e:	48 03 f9             	add    rdi,rcx
  7ceaa1:	48 03 f1             	add    rsi,rcx
  7ceaa4:	4c 89 f9             	mov    rcx,r15
  7ceaa7:	4d 8d 14 03          	lea    r10,[r11+rax*1]
  7ceaab:	c4 41 7b 10 12       	vmovsd xmm10,QWORD PTR [r10]
  7ceab0:	c4 41 29 16 24 12    	vmovhpd xmm12,xmm10,QWORD PTR [r10+rdx*1]
  7ceab6:	4d 8d 14 00          	lea    r10,[r8+rax*1]
  7ceaba:	c4 41 7b 10 1a       	vmovsd xmm11,QWORD PTR [r10]
  7ceabf:	c4 41 21 16 2c 12    	vmovhpd xmm13,xmm11,QWORD PTR [r10+rdx*1]
  7ceac5:	4c 8d 14 06          	lea    r10,[rsi+rax*1]
  7ceac9:	c4 41 19 58 fd       	vaddpd xmm15,xmm12,xmm13
  7ceace:	c4 41 7b 10 32       	vmovsd xmm14,QWORD PTR [r10]
  7cead3:	c4 41 09 16 14 12    	vmovhpd xmm10,xmm14,QWORD PTR [r10+rdx*1]
  7cead9:	4d 8d 14 04          	lea    r10,[r12+rax*1]
  7ceadd:	c4 41 01 58 da       	vaddpd xmm11,xmm15,xmm10
  7ceae2:	c4 41 39 5e e3       	vdivpd xmm12,xmm8,xmm11
  7ceae7:	c4 41 7b 10 2a       	vmovsd xmm13,QWORD PTR [r10]
  7ceaec:	c4 41 11 16 3c 12    	vmovhpd xmm15,xmm13,QWORD PTR [r10+rdx*1]
  7ceaf2:	4d 8d 14 01          	lea    r10,[r9+rax*1]
  7ceaf6:	c4 41 7b 10 32       	vmovsd xmm14,QWORD PTR [r10]
  7ceafb:	c4 41 09 16 14 12    	vmovhpd xmm10,xmm14,QWORD PTR [r10+rdx*1]
  7ceb01:	4c 8d 14 07          	lea    r10,[rdi+rax*1]
  7ceb05:	c4 01 79 11 64 f5 08 	vmovupd XMMWORD PTR [r13+r14*8+0x8],xmm12
  7ceb0c:	c4 41 01 58 e2       	vaddpd xmm12,xmm15,xmm10
  7ceb11:	c4 41 7b 10 1a       	vmovsd xmm11,QWORD PTR [r10]
  7ceb16:	48 8d 04 90          	lea    rax,[rax+rdx*4]
  7ceb1a:	c4 41 21 16 2c 12    	vmovhpd xmm13,xmm11,QWORD PTR [r10+rdx*1]
  7ceb20:	c4 41 19 58 f5       	vaddpd xmm14,xmm12,xmm13
  7ceb25:	c4 41 39 5e fe       	vdivpd xmm15,xmm8,xmm14
  7ceb2a:	c4 01 79 11 7c f5 18 	vmovupd XMMWORD PTR [r13+r14*8+0x18],xmm15
  7ceb31:	49 83 c6 04          	add    r14,0x4
  7ceb35:	4c 3b f1             	cmp    r14,rcx
  7ceb38:	0f 82 69 ff ff ff    	jb     7ceaa7 <biology_mod_mp_biology_tile_+0x2a97>
  7ceb3e:	8b 85 60 e8 ff ff    	mov    eax,DWORD PTR [rbp-0x17a0]
  7ceb44:	48 8b 8d 68 e8 ff ff 	mov    rcx,QWORD PTR [rbp-0x1798]
  7ceb4b:	4c 8b 95 70 e8 ff ff 	mov    r10,QWORD PTR [rbp-0x1790]
  7ceb52:	41 8d 77 01          	lea    esi,[r15+0x1]
  7ceb56:	3b f0                	cmp    esi,eax
  7ceb58:	0f 87 84 01 00 00    	ja     7cece2 <biology_mod_mp_biology_tile_+0x2cd2>
  7ceb5e:	4d 63 ff             	movsxd r15,r15d
  7ceb61:	48 98                	cdqe   
  7ceb63:	49 2b c7             	sub    rax,r15
  7ceb66:	48 83 f8 02          	cmp    rax,0x2
  7ceb6a:	0f 8c 80 5f 00 00    	jl     7d4af0 <biology_mod_mp_biology_tile_+0x8ae0>
  7ceb70:	4c 8b b5 b0 ea ff ff 	mov    r14,QWORD PTR [rbp-0x1550]
  7ceb77:	49 89 d5             	mov    r13,rdx
  7ceb7a:	4c 8b 45 d0          	mov    r8,QWORD PTR [rbp-0x30]
  7ceb7e:	41 89 c4             	mov    r12d,eax
  7ceb81:	4c 0f af b5 f0 ea ff 	imul   r14,QWORD PTR [rbp-0x1510]
  7ceb88:	ff 
  7ceb89:	4d 0f af ef          	imul   r13,r15
  7ceb8d:	4d 89 c3             	mov    r11,r8
  7ceb90:	4d 03 c7             	add    r8,r15
  7ceb93:	4c 0f af da          	imul   r11,rdx
  7ceb97:	48 8b bd 78 e8 ff ff 	mov    rdi,QWORD PTR [rbp-0x1788]
  7ceb9e:	41 83 e4 fe          	and    r12d,0xfffffffe
  7ceba2:	45 33 c9             	xor    r9d,r9d
  7ceba5:	4d 63 e4             	movsxd r12,r12d
  7ceba8:	4a 8d 34 17          	lea    rsi,[rdi+r10*1]
  7cebac:	48 8b bd 50 e8 ff ff 	mov    rdi,QWORD PTR [rbp-0x17b0]
  7cebb3:	4e 8d 04 c6          	lea    r8,[rsi+r8*8]
  7cebb7:	48 8b b5 28 e8 ff ff 	mov    rsi,QWORD PTR [rbp-0x17d8]
  7cebbe:	49 03 fe             	add    rdi,r14
  7cebc1:	49 03 fb             	add    rdi,r11
  7cebc4:	49 03 f6             	add    rsi,r14
  7cebc7:	4c 03 b5 30 e8 ff ff 	add    r14,QWORD PTR [rbp-0x17d0]
  7cebce:	49 03 f3             	add    rsi,r11
  7cebd1:	4d 03 de             	add    r11,r14
  7cebd4:	48 03 f9             	add    rdi,rcx
  7cebd7:	48 03 f1             	add    rsi,rcx
  7cebda:	4c 03 d9             	add    r11,rcx
  7cebdd:	49 03 fd             	add    rdi,r13
  7cebe0:	49 03 f5             	add    rsi,r13
  7cebe3:	4d 03 dd             	add    r11,r13
  7cebe6:	45 33 ed             	xor    r13d,r13d
  7cebe9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  7cebf0:	4f 8d 34 2b          	lea    r14,[r11+r13*1]
  7cebf4:	c4 41 7b 10 16       	vmovsd xmm10,QWORD PTR [r14]
  7cebf9:	c4 41 29 16 24 16    	vmovhpd xmm12,xmm10,QWORD PTR [r14+rdx*1]
  7cebff:	4e 8d 34 2e          	lea    r14,[rsi+r13*1]
  7cec03:	c4 41 7b 10 1e       	vmovsd xmm11,QWORD PTR [r14]
  7cec08:	c4 41 21 16 2c 16    	vmovhpd xmm13,xmm11,QWORD PTR [r14+rdx*1]
  7cec0e:	4e 8d 34 2f          	lea    r14,[rdi+r13*1]
  7cec12:	c4 41 19 58 fd       	vaddpd xmm15,xmm12,xmm13
  7cec17:	c4 41 7b 10 36       	vmovsd xmm14,QWORD PTR [r14]
  7cec1c:	4d 8d 6c 55 00       	lea    r13,[r13+rdx*2+0x0]
  7cec21:	c4 41 09 16 14 16    	vmovhpd xmm10,xmm14,QWORD PTR [r14+rdx*1]
  7cec27:	c4 41 01 58 da       	vaddpd xmm11,xmm15,xmm10
  7cec2c:	c4 41 39 5e e3       	vdivpd xmm12,xmm8,xmm11
  7cec31:	c4 01 79 11 64 c8 08 	vmovupd XMMWORD PTR [r8+r9*8+0x8],xmm12
  7cec38:	49 83 c1 02          	add    r9,0x2
  7cec3c:	4d 3b cc             	cmp    r9,r12
  7cec3f:	72 af                	jb     7cebf0 <biology_mod_mp_biology_tile_+0x2be0>
  7cec41:	48 89 d7             	mov    rdi,rdx
  7cec44:	49 0f af fc          	imul   rdi,r12
  7cec48:	4c 3b e0             	cmp    r12,rax
  7cec4b:	0f 83 91 00 00 00    	jae    7cece2 <biology_mod_mp_biology_tile_+0x2cd2>
  7cec51:	4c 8b 8d b0 ea ff ff 	mov    r9,QWORD PTR [rbp-0x1550]
  7cec58:	48 8b 75 d0          	mov    rsi,QWORD PTR [rbp-0x30]
  7cec5c:	4c 0f af 8d f0 ea ff 	imul   r9,QWORD PTR [rbp-0x1510]
  7cec63:	ff 
  7cec64:	49 89 f0             	mov    r8,rsi
  7cec67:	4e 8d 34 3e          	lea    r14,[rsi+r15*1]
  7cec6b:	4c 0f af c2          	imul   r8,rdx
  7cec6f:	4c 0f af fa          	imul   r15,rdx
  7cec73:	4c 8b ad 78 e8 ff ff 	mov    r13,QWORD PTR [rbp-0x1788]
  7cec7a:	4f 8d 5c 15 00       	lea    r11,[r13+r10*1+0x0]
  7cec7f:	4c 8b ad 50 e8 ff ff 	mov    r13,QWORD PTR [rbp-0x17b0]
  7cec86:	4b 8d 34 f3          	lea    rsi,[r11+r14*8]
  7cec8a:	4c 8b 9d 28 e8 ff ff 	mov    r11,QWORD PTR [rbp-0x17d8]
  7cec91:	4d 03 e9             	add    r13,r9
  7cec94:	4d 03 e8             	add    r13,r8
  7cec97:	4d 03 d9             	add    r11,r9
  7cec9a:	4c 03 8d 30 e8 ff ff 	add    r9,QWORD PTR [rbp-0x17d0]
  7ceca1:	4d 03 d8             	add    r11,r8
  7ceca4:	4d 03 c1             	add    r8,r9
  7ceca7:	4c 03 e9             	add    r13,rcx
  7cecaa:	4c 03 d9             	add    r11,rcx
  7cecad:	4c 03 c1             	add    r8,rcx
  7cecb0:	4d 03 ef             	add    r13,r15
  7cecb3:	4d 03 df             	add    r11,r15
  7cecb6:	4d 03 c7             	add    r8,r15
  7cecb9:	c4 21 7b 10 14 07    	vmovsd xmm10,QWORD PTR [rdi+r8*1]
  7cecbf:	c4 21 2b 58 1c 1f    	vaddsd xmm11,xmm10,QWORD PTR [rdi+r11*1]
  7cecc5:	c4 21 23 58 24 2f    	vaddsd xmm12,xmm11,QWORD PTR [rdi+r13*1]
  7ceccb:	48 03 fa             	add    rdi,rdx
  7cecce:	c4 41 33 5e ec       	vdivsd xmm13,xmm9,xmm12
  7cecd3:	c4 21 7b 11 6c e6 08 	vmovsd QWORD PTR [rsi+r12*8+0x8],xmm13
  7cecda:	49 ff c4             	inc    r12
  7cecdd:	4c 3b e0             	cmp    r12,rax
  7cece0:	72 d7                	jb     7cecb9 <biology_mod_mp_biology_tile_+0x2ca9>
  7cece2:	48 8b 85 98 e9 ff ff 	mov    rax,QWORD PTR [rbp-0x1668]
  7cece9:	48 ff c0             	inc    rax
  7cecec:	4c 03 55 d8          	add    r10,QWORD PTR [rbp-0x28]
  7cecf0:	48 03 8d 48 ff ff ff 	add    rcx,QWORD PTR [rbp-0xb8]
  7cecf7:	48 89 85 98 e9 ff ff 	mov    QWORD PTR [rbp-0x1668],rax
  7cecfe:	48 3b 85 90 e9 ff ff 	cmp    rax,QWORD PTR [rbp-0x1670]
  7ced05:	0f 82 d9 fc ff ff    	jb     7ce9e4 <biology_mod_mp_biology_tile_+0x29d4>
  7ced0b:	48 8b b5 10 eb ff ff 	mov    rsi,QWORD PTR [rbp-0x14f0]
  7ced12:	48 8b bd 18 eb ff ff 	mov    rdi,QWORD PTR [rbp-0x14e8]
  7ced19:	4c 8b 4d e0          	mov    r9,QWORD PTR [rbp-0x20]
  7ced1d:	4c 8b 85 00 eb ff ff 	mov    r8,QWORD PTR [rbp-0x1500]
  7ced24:	45 33 db             	xor    r11d,r11d
  7ced27:	4d 85 c0             	test   r8,r8
  7ced2a:	0f 8e 98 02 00 00    	jle    7cefc8 <biology_mod_mp_biology_tile_+0x2fb8>
  7ced30:	4c 8b b5 38 e2 ff ff 	mov    r14,QWORD PTR [rbp-0x1dc8]
  7ced37:	48 8b 05 42 f8 2e 00 	mov    rax,QWORD PTR [rip+0x2ef842]        # abe580 <mod_biology_mp_idbio_>
  7ced3e:	48 89 85 f8 e9 ff ff 	mov    QWORD PTR [rbp-0x1608],rax
  7ced45:	48 8b 85 b0 ea ff ff 	mov    rax,QWORD PTR [rbp-0x1550]
  7ced4c:	48 8b 8d c8 de ff ff 	mov    rcx,QWORD PTR [rbp-0x2138]
  7ced53:	4d 8d 56 68          	lea    r10,[r14+0x68]
  7ced57:	49 8b 12             	mov    rdx,QWORD PTR [r10]
  7ced5a:	48 2b 85 40 e2 ff ff 	sub    rax,QWORD PTR [rbp-0x1dc0]
  7ced61:	48 89 8d c0 e9 ff ff 	mov    QWORD PTR [rbp-0x1640],rcx
  7ced68:	48 89 95 80 ef ff ff 	mov    QWORD PTR [rbp-0x1080],rdx
  7ced6f:	4d 8b 6a 98          	mov    r13,QWORD PTR [r10-0x68]
  7ced73:	49 8b 52 d0          	mov    rdx,QWORD PTR [r10-0x30]
  7ced77:	49 0f af 42 e8       	imul   rax,QWORD PTR [r10-0x18]
  7ced7c:	c5 7d 10 05 dc c5 07 	vmovupd ymm8,YMMWORD PTR [rip+0x7c5dc]        # 84b360 <var$630.126.450+0x13c0>
  7ced83:	00 
  7ced84:	c5 7b 10 0d bc e0 07 	vmovsd xmm9,QWORD PTR [rip+0x7e0bc]        # 84ce48 <__STRLITPACK_0.112+0xd38>
  7ced8b:	00 
  7ced8c:	49 8b 4a 30          	mov    rcx,QWORD PTR [r10+0x30]
  7ced90:	4c 2b e9             	sub    r13,rcx
  7ced93:	4d 8b 52 18          	mov    r10,QWORD PTR [r10+0x18]
  7ced97:	4c 8b b5 48 e2 ff ff 	mov    r14,QWORD PTR [rbp-0x1db8]
  7ced9e:	4c 8b bd 50 e2 ff ff 	mov    r15,QWORD PTR [rbp-0x1db0]
  7ceda5:	49 f7 de             	neg    r14
  7ceda8:	4d 0f af fa          	imul   r15,r10
  7cedac:	4c 03 75 d0          	add    r14,QWORD PTR [rbp-0x30]
  7cedb0:	4d 03 ef             	add    r13,r15
  7cedb3:	4c 0f af f2          	imul   r14,rdx
  7cedb7:	4d 2b ea             	sub    r13,r10
  7cedba:	4c 8b a5 98 db ff ff 	mov    r12,QWORD PTR [rbp-0x2468]
  7cedc1:	4d 03 f5             	add    r14,r13
  7cedc4:	4c 2b a5 d0 ea ff ff 	sub    r12,QWORD PTR [rbp-0x1530]
  7cedcb:	49 03 c6             	add    rax,r14
  7cedce:	48 89 8d e8 e9 ff ff 	mov    QWORD PTR [rbp-0x1618],rcx
  7cedd5:	4c 2b a5 a0 e9 ff ff 	sub    r12,QWORD PTR [rbp-0x1660]
  7ceddc:	48 8b 4d c8          	mov    rcx,QWORD PTR [rbp-0x38]
  7cede0:	4c 8b ad f8 e9 ff ff 	mov    r13,QWORD PTR [rbp-0x1608]
  7cede7:	4c 8b 75 d0          	mov    r14,QWORD PTR [rbp-0x30]
  7cedeb:	48 89 b5 10 eb ff ff 	mov    QWORD PTR [rbp-0x14f0],rsi
  7cedf2:	48 89 bd 18 eb ff ff 	mov    QWORD PTR [rbp-0x14e8],rdi
  7cedf9:	48 89 85 e0 e9 ff ff 	mov    QWORD PTR [rbp-0x1620],rax
  7cee00:	48 89 95 f0 e9 ff ff 	mov    QWORD PTR [rbp-0x1610],rdx
  7cee07:	4c 89 85 00 eb ff ff 	mov    QWORD PTR [rbp-0x1500],r8
  7cee0e:	33 d2                	xor    edx,edx
  7cee10:	4b 63 44 9d 00       	movsxd rax,DWORD PTR [r13+r11*4+0x0]
  7cee15:	45 33 c0             	xor    r8d,r8d
  7cee18:	4d 85 c9             	test   r9,r9
  7cee1b:	0f 8e 7a 01 00 00    	jle    7cef9b <biology_mod_mp_biology_tile_+0x2f8b>
  7cee21:	49 89 c7             	mov    r15,rax
  7cee24:	48 89 ce             	mov    rsi,rcx
  7cee27:	4c 8b 95 90 ef ff ff 	mov    r10,QWORD PTR [rbp-0x1070]
  7cee2e:	49 2b f6             	sub    rsi,r14
  7cee31:	4d 0f af fa          	imul   r15,r10
  7cee35:	48 8b bd c0 e9 ff ff 	mov    rdi,QWORD PTR [rbp-0x1640]
  7cee3c:	48 ff c6             	inc    rsi
  7cee3f:	48 2b bd d0 ea ff ff 	sub    rdi,QWORD PTR [rbp-0x1530]
  7cee46:	49 2b fa             	sub    rdi,r10
  7cee49:	4f 8d 14 f4          	lea    r10,[r12+r14*8]
  7cee4d:	4c 8b ad f0 e9 ff ff 	mov    r13,QWORD PTR [rbp-0x1610]
  7cee54:	4c 89 a5 38 ea ff ff 	mov    QWORD PTR [rbp-0x15c8],r12
  7cee5b:	4c 89 9d 40 ea ff ff 	mov    QWORD PTR [rbp-0x15c0],r11
  7cee62:	4c 89 4d e0          	mov    QWORD PTR [rbp-0x20],r9
  7cee66:	4a 8d 3c f7          	lea    rdi,[rdi+r14*8]
  7cee6a:	49 03 ff             	add    rdi,r15
  7cee6d:	49 89 c7             	mov    r15,rax
  7cee70:	4c 0f af bd a0 e9 ff 	imul   r15,QWORD PTR [rbp-0x1660]
  7cee77:	ff 
  7cee78:	48 0f af 85 e8 e9 ff 	imul   rax,QWORD PTR [rbp-0x1618]
  7cee7f:	ff 
  7cee80:	4d 03 d7             	add    r10,r15
  7cee83:	41 89 f7             	mov    r15d,esi
  7cee86:	41 83 e7 fc          	and    r15d,0xfffffffc
  7cee8a:	4d 63 ff             	movsxd r15,r15d
  7cee8d:	48 03 85 e0 e9 ff ff 	add    rax,QWORD PTR [rbp-0x1620]
  7cee94:	4c 89 bd e0 ee ff ff 	mov    QWORD PTR [rbp-0x1120],r15
  7cee9b:	4c 89 75 d0          	mov    QWORD PTR [rbp-0x30],r14
  7cee9f:	48 3b 4d d0          	cmp    rcx,QWORD PTR [rbp-0x30]
  7ceea3:	0f 8c bd 00 00 00    	jl     7cef66 <biology_mod_mp_biology_tile_+0x2f56>
  7ceea9:	48 83 fe 04          	cmp    rsi,0x4
  7ceead:	0f 8c 35 5c 00 00    	jl     7d4ae8 <biology_mod_mp_biology_tile_+0x8ad8>
  7ceeb3:	45 33 e4             	xor    r12d,r12d
  7ceeb6:	4e 8d 1c 07          	lea    r11,[rdi+r8*1]
  7ceeba:	4c 8b bd e0 ee ff ff 	mov    r15,QWORD PTR [rbp-0x1120]
  7ceec1:	4f 8d 34 02          	lea    r14,[r10+r8*1]
  7ceec5:	4c 89 85 20 ef ff ff 	mov    QWORD PTR [rbp-0x10e0],r8
  7ceecc:	45 33 c9             	xor    r9d,r9d
  7ceecf:	48 89 95 28 ef ff ff 	mov    QWORD PTR [rbp-0x10d8],rdx
  7ceed6:	4c 89 fa             	mov    rdx,r15
  7ceed9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  7ceee0:	4e 8d 04 08          	lea    r8,[rax+r9*1]
  7ceee4:	c4 41 7b 10 10       	vmovsd xmm10,QWORD PTR [r8]
  7ceee9:	4f 8d 0c a9          	lea    r9,[r9+r13*4]
  7ceeed:	c4 01 29 16 1c 28    	vmovhpd xmm11,xmm10,QWORD PTR [r8+r13*1]
  7ceef3:	4f 8d 04 68          	lea    r8,[r8+r13*2]
  7ceef7:	c4 41 7b 10 20       	vmovsd xmm12,QWORD PTR [r8]
  7ceefc:	c4 01 19 16 2c 28    	vmovhpd xmm13,xmm12,QWORD PTR [r8+r13*1]
  7cef02:	c4 43 25 18 f5 01    	vinsertf128 ymm14,ymm11,xmm13,0x1
  7cef08:	c4 41 0d 5f f8       	vmaxpd ymm15,ymm14,ymm8
  7cef0d:	c4 01 7d 11 3c e6    	vmovupd YMMWORD PTR [r14+r12*8],ymm15
  7cef13:	c4 01 7d 11 3c e3    	vmovupd YMMWORD PTR [r11+r12*8],ymm15
  7cef19:	49 83 c4 04          	add    r12,0x4
  7cef1d:	4c 3b e2             	cmp    r12,rdx
  7cef20:	72 be                	jb     7ceee0 <biology_mod_mp_biology_tile_+0x2ed0>
  7cef22:	4c 8b 85 20 ef ff ff 	mov    r8,QWORD PTR [rbp-0x10e0]
  7cef29:	48 8b 95 28 ef ff ff 	mov    rdx,QWORD PTR [rbp-0x10d8]
  7cef30:	4d 89 ec             	mov    r12,r13
  7cef33:	4d 0f af e7          	imul   r12,r15
  7cef37:	4c 3b fe             	cmp    r15,rsi
  7cef3a:	73 2a                	jae    7cef66 <biology_mod_mp_biology_tile_+0x2f56>
  7cef3c:	4e 8d 1c 07          	lea    r11,[rdi+r8*1]
  7cef40:	4f 8d 0c 02          	lea    r9,[r10+r8*1]
  7cef44:	c4 41 7b 10 14 04    	vmovsd xmm10,QWORD PTR [r12+rax*1]
  7cef4a:	4d 03 e5             	add    r12,r13
  7cef4d:	c4 41 2b 5f d1       	vmaxsd xmm10,xmm10,xmm9
  7cef52:	c4 01 7b 11 14 f9    	vmovsd QWORD PTR [r9+r15*8],xmm10
  7cef58:	c4 01 7b 11 14 fb    	vmovsd QWORD PTR [r11+r15*8],xmm10
  7cef5e:	49 ff c7             	inc    r15
  7cef61:	4c 3b fe             	cmp    r15,rsi
  7cef64:	72 de                	jb     7cef44 <biology_mod_mp_biology_tile_+0x2f34>
  7cef66:	48 ff c2             	inc    rdx
  7cef69:	4c 03 45 d8          	add    r8,QWORD PTR [rbp-0x28]
  7cef6d:	48 03 85 80 ef ff ff 	add    rax,QWORD PTR [rbp-0x1080]
  7cef74:	48 3b 55 e0          	cmp    rdx,QWORD PTR [rbp-0x20]
  7cef78:	0f 82 21 ff ff ff    	jb     7cee9f <biology_mod_mp_biology_tile_+0x2e8f>
  7cef7e:	4c 8b a5 38 ea ff ff 	mov    r12,QWORD PTR [rbp-0x15c8]
  7cef85:	4c 8b ad f8 e9 ff ff 	mov    r13,QWORD PTR [rbp-0x1608]
  7cef8c:	4c 8b 9d 40 ea ff ff 	mov    r11,QWORD PTR [rbp-0x15c0]
  7cef93:	4c 8b 4d e0          	mov    r9,QWORD PTR [rbp-0x20]
  7cef97:	4c 8b 75 d0          	mov    r14,QWORD PTR [rbp-0x30]
  7cef9b:	49 ff c3             	inc    r11
  7cef9e:	4c 3b 9d 00 eb ff ff 	cmp    r11,QWORD PTR [rbp-0x1500]
  7cefa5:	0f 82 63 fe ff ff    	jb     7cee0e <biology_mod_mp_biology_tile_+0x2dfe>
  7cefab:	48 89 4d c8          	mov    QWORD PTR [rbp-0x38],rcx
  7cefaf:	4c 89 75 d0          	mov    QWORD PTR [rbp-0x30],r14
  7cefb3:	48 8b b5 10 eb ff ff 	mov    rsi,QWORD PTR [rbp-0x14f0]
  7cefba:	48 8b bd 18 eb ff ff 	mov    rdi,QWORD PTR [rbp-0x14e8]
  7cefc1:	4c 8b 85 00 eb ff ff 	mov    r8,QWORD PTR [rbp-0x1500]
  7cefc8:	33 c0                	xor    eax,eax
  7cefca:	45 33 ed             	xor    r13d,r13d
  7cefcd:	4d 85 c9             	test   r9,r9
  7cefd0:	0f 8e a7 03 00 00    	jle    7cf37d <biology_mod_mp_biology_tile_+0x336d>
  7cefd6:	4c 8b 95 38 e2 ff ff 	mov    r10,QWORD PTR [rbp-0x1dc8]
  7cefdd:	48 89 b5 10 eb ff ff 	mov    QWORD PTR [rbp-0x14f0],rsi
  7cefe4:	c4 41 31 57 c9       	vxorpd xmm9,xmm9,xmm9
  7cefe9:	48 8b b5 b0 ea ff ff 	mov    rsi,QWORD PTR [rbp-0x1550]
  7ceff0:	49 8d 52 50          	lea    rdx,[r10+0x50]
  7ceff4:	4c 8b 22             	mov    r12,QWORD PTR [rdx]
  7ceff7:	49 0f af f4          	imul   rsi,r12
  7ceffb:	4c 0f af a5 40 e2 ff 	imul   r12,QWORD PTR [rbp-0x1dc0]
  7cf002:	ff 
  7cf003:	4c 8b bd 98 db ff ff 	mov    r15,QWORD PTR [rbp-0x2468]
  7cf00a:	4c 2b bd d0 ea ff ff 	sub    r15,QWORD PTR [rbp-0x1530]
  7cf011:	4c 89 ad f0 d6 ff ff 	mov    QWORD PTR [rbp-0x2910],r13
  7cf018:	4c 8b ad a0 e9 ff ff 	mov    r13,QWORD PTR [rbp-0x1660]
  7cf01f:	4d 2b fd             	sub    r15,r13
  7cf022:	4c 89 bd f8 d6 ff ff 	mov    QWORD PTR [rbp-0x2908],r15
  7cf029:	4c 8b 5a 30          	mov    r11,QWORD PTR [rdx+0x30]
  7cf02d:	4c 8b 7a 18          	mov    r15,QWORD PTR [rdx+0x18]
  7cf031:	49 03 f7             	add    rsi,r15
  7cf034:	4c 8b b5 c8 de ff ff 	mov    r14,QWORD PTR [rbp-0x2138]
  7cf03b:	48 89 bd 18 eb ff ff 	mov    QWORD PTR [rbp-0x14e8],rdi
  7cf042:	48 8b 7a b0          	mov    rdi,QWORD PTR [rdx-0x50]
  7cf046:	48 8b 4a e8          	mov    rcx,QWORD PTR [rdx-0x18]
  7cf04a:	48 8b 52 48          	mov    rdx,QWORD PTR [rdx+0x48]
  7cf04e:	4c 89 bd 20 eb ff ff 	mov    QWORD PTR [rbp-0x14e0],r15
  7cf055:	4c 89 b5 88 e7 ff ff 	mov    QWORD PTR [rbp-0x1878],r14
  7cf05c:	4f 8d 34 3b          	lea    r14,[r11+r15*1]
  7cf060:	4c 63 15 21 1f 41 00 	movsxd r10,DWORD PTR [rip+0x411f21]        # be0f88 <mod_biology_mp_ioxyg_>
  7cf067:	4c 8b bd 90 ef ff ff 	mov    r15,QWORD PTR [rbp-0x1070]
  7cf06e:	4d 0f af fa          	imul   r15,r10
  7cf072:	4d 0f af ea          	imul   r13,r10
  7cf076:	4c 0f af d2          	imul   r10,rdx
  7cf07a:	4c 0f af 9d 50 e2 ff 	imul   r11,QWORD PTR [rbp-0x1db0]
  7cf081:	ff 
  7cf082:	4d 2b e2             	sub    r12,r10
  7cf085:	49 89 d2             	mov    r10,rdx
  7cf088:	48 f7 da             	neg    rdx
  7cf08b:	4d 2b d3             	sub    r10,r11
  7cf08e:	48 03 d7             	add    rdx,rdi
  7cf091:	4d 03 d6             	add    r10,r14
  7cf094:	49 03 d3             	add    rdx,r11
  7cf097:	4c 2b f6             	sub    r14,rsi
  7cf09a:	49 2b d6             	sub    rdx,r14
  7cf09d:	49 2b f4             	sub    rsi,r12
  7cf0a0:	4c 8b b5 48 e2 ff ff 	mov    r14,QWORD PTR [rbp-0x1db8]
  7cf0a7:	49 2b d4             	sub    rdx,r12
  7cf0aa:	49 f7 de             	neg    r14
  7cf0ad:	45 33 db             	xor    r11d,r11d
  7cf0b0:	4c 03 75 d0          	add    r14,QWORD PTR [rbp-0x30]
  7cf0b4:	4c 0f af f1          	imul   r14,rcx
  7cf0b8:	48 2b bd b0 de ff ff 	sub    rdi,QWORD PTR [rbp-0x2150]
  7cf0bf:	4c 03 f2             	add    r14,rdx
  7cf0c2:	48 89 bd 80 e7 ff ff 	mov    QWORD PTR [rbp-0x1880],rdi
  7cf0c9:	48 89 b5 a0 e7 ff ff 	mov    QWORD PTR [rbp-0x1860],rsi
  7cf0d0:	4c 89 ad 90 e7 ff ff 	mov    QWORD PTR [rbp-0x1870],r13
  7cf0d7:	4c 8b a5 f8 d6 ff ff 	mov    r12,QWORD PTR [rbp-0x2908]
  7cf0de:	48 8b 95 20 eb ff ff 	mov    rdx,QWORD PTR [rbp-0x14e0]
  7cf0e5:	4c 8b ad f0 d6 ff ff 	mov    r13,QWORD PTR [rbp-0x2910]
  7cf0ec:	48 89 cf             	mov    rdi,rcx
  7cf0ef:	48 8b 75 d0          	mov    rsi,QWORD PTR [rbp-0x30]
  7cf0f3:	4c 89 bd 98 e7 ff ff 	mov    QWORD PTR [rbp-0x1868],r15
  7cf0fa:	4c 89 b5 d8 dc ff ff 	mov    QWORD PTR [rbp-0x2328],r14
  7cf101:	4c 89 95 e0 dc ff ff 	mov    QWORD PTR [rbp-0x2320],r10
  7cf108:	4c 89 4d e0          	mov    QWORD PTR [rbp-0x20],r9
  7cf10c:	4c 89 85 00 eb ff ff 	mov    QWORD PTR [rbp-0x1500],r8
  7cf113:	c4 41 3d 57 c0       	vxorpd ymm8,ymm8,ymm8
  7cf118:	48 83 ff 08          	cmp    rdi,0x8
  7cf11c:	0f 85 0f 01 00 00    	jne    7cf231 <biology_mod_mp_biology_tile_+0x3221>
  7cf122:	48 3b 75 c8          	cmp    rsi,QWORD PTR [rbp-0x38]
  7cf126:	0f 8f 1c 02 00 00    	jg     7cf348 <biology_mod_mp_biology_tile_+0x3338>
  7cf12c:	4c 8b 45 c8          	mov    r8,QWORD PTR [rbp-0x38]
  7cf130:	4c 2b c6             	sub    r8,rsi
  7cf133:	49 ff c0             	inc    r8
  7cf136:	49 83 f8 04          	cmp    r8,0x4
  7cf13a:	0f 8c f5 57 00 00    	jl     7d4935 <biology_mod_mp_biology_tile_+0x8925>
  7cf140:	4c 8b 95 88 e7 ff ff 	mov    r10,QWORD PTR [rbp-0x1878]
  7cf147:	44 89 c1             	mov    ecx,r8d
  7cf14a:	4c 2b 95 d0 ea ff ff 	sub    r10,QWORD PTR [rbp-0x1530]
  7cf151:	83 e1 fc             	and    ecx,0xfffffffc
  7cf154:	4c 8b 8d 80 e7 ff ff 	mov    r9,QWORD PTR [rbp-0x1880]
  7cf15b:	33 d2                	xor    edx,edx
  7cf15d:	4c 2b 95 90 ef ff ff 	sub    r10,QWORD PTR [rbp-0x1070]
  7cf164:	48 63 c9             	movsxd rcx,ecx
  7cf167:	4d 8d 0c f1          	lea    r9,[r9+rsi*8]
  7cf16b:	4c 2b 8d e0 dc ff ff 	sub    r9,QWORD PTR [rbp-0x2320]
  7cf172:	4d 8d 34 f2          	lea    r14,[r10+rsi*8]
  7cf176:	4c 03 b5 98 e7 ff ff 	add    r14,QWORD PTR [rbp-0x1868]
  7cf17d:	4d 8d 14 f4          	lea    r10,[r12+rsi*8]
  7cf181:	4c 03 95 90 e7 ff ff 	add    r10,QWORD PTR [rbp-0x1870]
  7cf188:	4d 03 f5             	add    r14,r13
  7cf18b:	4c 03 8d a0 e7 ff ff 	add    r9,QWORD PTR [rbp-0x1860]
  7cf192:	4d 03 d5             	add    r10,r13
  7cf195:	4d 03 cb             	add    r9,r11
  7cf198:	c4 41 7d 10 14 d1    	vmovupd ymm10,YMMWORD PTR [r9+rdx*8]
  7cf19e:	c4 41 2d 5f d8       	vmaxpd ymm11,ymm10,ymm8
  7cf1a3:	c4 41 7d 11 1c d2    	vmovupd YMMWORD PTR [r10+rdx*8],ymm11
  7cf1a9:	c4 41 7d 11 1c d6    	vmovupd YMMWORD PTR [r14+rdx*8],ymm11
  7cf1af:	48 83 c2 04          	add    rdx,0x4
  7cf1b3:	48 3b d1             	cmp    rdx,rcx
  7cf1b6:	72 e0                	jb     7cf198 <biology_mod_mp_biology_tile_+0x3188>
  7cf1b8:	49 3b c8             	cmp    rcx,r8
  7cf1bb:	0f 83 87 01 00 00    	jae    7cf348 <biology_mod_mp_biology_tile_+0x3338>
  7cf1c1:	4c 8b 8d 88 e7 ff ff 	mov    r9,QWORD PTR [rbp-0x1878]
  7cf1c8:	4c 2b 8d d0 ea ff ff 	sub    r9,QWORD PTR [rbp-0x1530]
  7cf1cf:	48 8b 95 80 e7 ff ff 	mov    rdx,QWORD PTR [rbp-0x1880]
  7cf1d6:	4c 2b 8d 90 ef ff ff 	sub    r9,QWORD PTR [rbp-0x1070]
  7cf1dd:	48 8d 14 f2          	lea    rdx,[rdx+rsi*8]
  7cf1e1:	48 2b 95 e0 dc ff ff 	sub    rdx,QWORD PTR [rbp-0x2320]
  7cf1e8:	4d 8d 14 f1          	lea    r10,[r9+rsi*8]
  7cf1ec:	4c 03 95 98 e7 ff ff 	add    r10,QWORD PTR [rbp-0x1868]
  7cf1f3:	4d 8d 0c f4          	lea    r9,[r12+rsi*8]
  7cf1f7:	4c 03 8d 90 e7 ff ff 	add    r9,QWORD PTR [rbp-0x1870]
  7cf1fe:	4d 03 d5             	add    r10,r13
  7cf201:	48 03 95 a0 e7 ff ff 	add    rdx,QWORD PTR [rbp-0x1860]
  7cf208:	4d 03 cd             	add    r9,r13
  7cf20b:	49 03 d3             	add    rdx,r11
  7cf20e:	c5 7b 10 14 ca       	vmovsd xmm10,QWORD PTR [rdx+rcx*8]
  7cf213:	c4 41 2b 5f d1       	vmaxsd xmm10,xmm10,xmm9
  7cf218:	c4 41 7b 11 14 c9    	vmovsd QWORD PTR [r9+rcx*8],xmm10
  7cf21e:	c4 41 7b 11 14 ca    	vmovsd QWORD PTR [r10+rcx*8],xmm10
  7cf224:	48 ff c1             	inc    rcx
  7cf227:	49 3b c8             	cmp    rcx,r8
  7cf22a:	72 e2                	jb     7cf20e <biology_mod_mp_biology_tile_+0x31fe>
  7cf22c:	e9 17 01 00 00       	jmp    7cf348 <biology_mod_mp_biology_tile_+0x3338>
  7cf231:	48 3b 75 c8          	cmp    rsi,QWORD PTR [rbp-0x38]
  7cf235:	0f 8f 0d 01 00 00    	jg     7cf348 <biology_mod_mp_biology_tile_+0x3338>
  7cf23b:	48 8b 4d c8          	mov    rcx,QWORD PTR [rbp-0x38]
  7cf23f:	48 2b ce             	sub    rcx,rsi
  7cf242:	48 ff c1             	inc    rcx
  7cf245:	48 83 f9 04          	cmp    rcx,0x4
  7cf249:	0f 8c 92 58 00 00    	jl     7d4ae1 <biology_mod_mp_biology_tile_+0x8ad1>
  7cf24f:	4c 8b 85 88 e7 ff ff 	mov    r8,QWORD PTR [rbp-0x1878]
  7cf256:	89 ca                	mov    edx,ecx
  7cf258:	4c 2b 85 d0 ea ff ff 	sub    r8,QWORD PTR [rbp-0x1530]
  7cf25f:	83 e2 fc             	and    edx,0xfffffffc
  7cf262:	4c 2b 85 90 ef ff ff 	sub    r8,QWORD PTR [rbp-0x1070]
  7cf269:	45 33 d2             	xor    r10d,r10d
  7cf26c:	4c 8b b5 d8 dc ff ff 	mov    r14,QWORD PTR [rbp-0x2328]
  7cf273:	48 63 d2             	movsxd rdx,edx
  7cf276:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
  7cf27a:	4d 8d 0c f0          	lea    r9,[r8+rsi*8]
  7cf27e:	4c 03 8d 98 e7 ff ff 	add    r9,QWORD PTR [rbp-0x1868]
  7cf285:	4d 8d 04 f4          	lea    r8,[r12+rsi*8]
  7cf289:	4c 03 85 90 e7 ff ff 	add    r8,QWORD PTR [rbp-0x1870]
  7cf290:	4d 03 cd             	add    r9,r13
  7cf293:	4d 03 c5             	add    r8,r13
  7cf296:	4f 8d 3c 1e          	lea    r15,[r14+r11*1]
  7cf29a:	45 33 f6             	xor    r14d,r14d
  7cf29d:	4b 8d 34 37          	lea    rsi,[r15+r14*1]
  7cf2a1:	c5 7b 10 16          	vmovsd xmm10,QWORD PTR [rsi]
  7cf2a5:	4d 8d 34 be          	lea    r14,[r14+rdi*4]
  7cf2a9:	c5 29 16 1c 3e       	vmovhpd xmm11,xmm10,QWORD PTR [rsi+rdi*1]
  7cf2ae:	48 8d 34 7e          	lea    rsi,[rsi+rdi*2]
  7cf2b2:	c5 7b 10 26          	vmovsd xmm12,QWORD PTR [rsi]
  7cf2b6:	c5 19 16 2c 3e       	vmovhpd xmm13,xmm12,QWORD PTR [rsi+rdi*1]
  7cf2bb:	c4 43 25 18 f5 01    	vinsertf128 ymm14,ymm11,xmm13,0x1
  7cf2c1:	c4 41 0d 5f f8       	vmaxpd ymm15,ymm14,ymm8
  7cf2c6:	c4 01 7d 11 3c d0    	vmovupd YMMWORD PTR [r8+r10*8],ymm15
  7cf2cc:	c4 01 7d 11 3c d1    	vmovupd YMMWORD PTR [r9+r10*8],ymm15
  7cf2d2:	49 83 c2 04          	add    r10,0x4
  7cf2d6:	4c 3b d2             	cmp    r10,rdx
  7cf2d9:	72 c2                	jb     7cf29d <biology_mod_mp_biology_tile_+0x328d>
  7cf2db:	48 8b 75 d0          	mov    rsi,QWORD PTR [rbp-0x30]
  7cf2df:	49 89 f8             	mov    r8,rdi
  7cf2e2:	4c 0f af c2          	imul   r8,rdx
  7cf2e6:	48 3b d1             	cmp    rdx,rcx
  7cf2e9:	73 5d                	jae    7cf348 <biology_mod_mp_biology_tile_+0x3338>
  7cf2eb:	4c 8b 95 88 e7 ff ff 	mov    r10,QWORD PTR [rbp-0x1878]
  7cf2f2:	4c 2b 95 d0 ea ff ff 	sub    r10,QWORD PTR [rbp-0x1530]
  7cf2f9:	4c 2b 95 90 ef ff ff 	sub    r10,QWORD PTR [rbp-0x1070]
  7cf300:	4c 8b 8d d8 dc ff ff 	mov    r9,QWORD PTR [rbp-0x2328]
  7cf307:	4d 8d 34 f2          	lea    r14,[r10+rsi*8]
  7cf30b:	4c 03 b5 98 e7 ff ff 	add    r14,QWORD PTR [rbp-0x1868]
  7cf312:	4d 8d 14 f4          	lea    r10,[r12+rsi*8]
  7cf316:	4c 03 95 90 e7 ff ff 	add    r10,QWORD PTR [rbp-0x1870]
  7cf31d:	4d 03 f5             	add    r14,r13
  7cf320:	4d 03 d5             	add    r10,r13
  7cf323:	4d 03 cb             	add    r9,r11
  7cf326:	c4 01 7b 10 14 08    	vmovsd xmm10,QWORD PTR [r8+r9*1]
  7cf32c:	4c 03 c7             	add    r8,rdi
  7cf32f:	c4 41 2b 5f d1       	vmaxsd xmm10,xmm10,xmm9
  7cf334:	c4 41 7b 11 14 d2    	vmovsd QWORD PTR [r10+rdx*8],xmm10
  7cf33a:	c4 41 7b 11 14 d6    	vmovsd QWORD PTR [r14+rdx*8],xmm10
  7cf340:	48 ff c2             	inc    rdx
  7cf343:	48 3b d1             	cmp    rdx,rcx
  7cf346:	72 de                	jb     7cf326 <biology_mod_mp_biology_tile_+0x3316>
  7cf348:	48 ff c0             	inc    rax
  7cf34b:	4c 03 6d d8          	add    r13,QWORD PTR [rbp-0x28]
  7cf34f:	4c 03 9d 20 eb ff ff 	add    r11,QWORD PTR [rbp-0x14e0]
  7cf356:	48 3b 45 e0          	cmp    rax,QWORD PTR [rbp-0x20]
  7cf35a:	0f 82 b8 fd ff ff    	jb     7cf118 <biology_mod_mp_biology_tile_+0x3108>
  7cf360:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
  7cf364:	48 8b b5 10 eb ff ff 	mov    rsi,QWORD PTR [rbp-0x14f0]
  7cf36b:	48 8b bd 18 eb ff ff 	mov    rdi,QWORD PTR [rbp-0x14e8]
  7cf372:	4c 8b 4d e0          	mov    r9,QWORD PTR [rbp-0x20]
  7cf376:	4c 8b 85 00 eb ff ff 	mov    r8,QWORD PTR [rbp-0x1500]
  7cf37d:	45 33 db             	xor    r11d,r11d
  7cf380:	45 33 d2             	xor    r10d,r10d
  7cf383:	4d 85 c9             	test   r9,r9
  7cf386:	0f 8e 51 01 00 00    	jle    7cf4dd <biology_mod_mp_biology_tile_+0x34cd>
  7cf38c:	48 8b 85 98 db ff ff 	mov    rax,QWORD PTR [rbp-0x2468]
  7cf393:	48 2b 85 d0 ea ff ff 	sub    rax,QWORD PTR [rbp-0x1530]
  7cf39a:	4c 8b ad c8 de ff ff 	mov    r13,QWORD PTR [rbp-0x2138]
  7cf3a1:	4c 8b a5 a0 e9 ff ff 	mov    r12,QWORD PTR [rbp-0x1660]
  7cf3a8:	49 2b c4             	sub    rax,r12
  7cf3ab:	4c 8d b5 90 ef ff ff 	lea    r14,[rbp-0x1070]
  7cf3b2:	49 8b 0e             	mov    rcx,QWORD PTR [r14]
  7cf3b5:	48 63 15 d4 1b 41 00 	movsxd rdx,DWORD PTR [rip+0x411bd4]        # be0f90 <mod_biology_mp_itic__>
  7cf3bc:	4c 89 4d e0          	mov    QWORD PTR [rbp-0x20],r9
  7cf3c0:	4c 89 85 00 eb ff ff 	mov    QWORD PTR [rbp-0x1500],r8
  7cf3c7:	48 0f af ca          	imul   rcx,rdx
  7cf3cb:	49 0f af d4          	imul   rdx,r12
  7cf3cf:	48 89 b5 10 eb ff ff 	mov    QWORD PTR [rbp-0x14f0],rsi
  7cf3d6:	48 89 bd 18 eb ff ff 	mov    QWORD PTR [rbp-0x14e8],rdi
  7cf3dd:	4c 89 ad 70 e9 ff ff 	mov    QWORD PTR [rbp-0x1690],r13
  7cf3e4:	4c 8b 45 c8          	mov    r8,QWORD PTR [rbp-0x38]
  7cf3e8:	4d 8b 0e             	mov    r9,QWORD PTR [r14]
  7cf3eb:	4c 8b 65 d0          	mov    r12,QWORD PTR [rbp-0x30]
  7cf3ef:	4d 3b c4             	cmp    r8,r12
  7cf3f2:	0f 8c b3 00 00 00    	jl     7cf4ab <biology_mod_mp_biology_tile_+0x349b>
  7cf3f8:	4c 89 c7             	mov    rdi,r8
  7cf3fb:	49 2b fc             	sub    rdi,r12
  7cf3fe:	48 ff c7             	inc    rdi
  7cf401:	48 83 ff 04          	cmp    rdi,0x4
  7cf405:	0f 8c ce 56 00 00    	jl     7d4ad9 <biology_mod_mp_biology_tile_+0x8ac9>
  7cf40b:	4c 8b b5 70 e9 ff ff 	mov    r14,QWORD PTR [rbp-0x1690]
  7cf412:	41 89 fd             	mov    r13d,edi
  7cf415:	4c 2b b5 d0 ea ff ff 	sub    r14,QWORD PTR [rbp-0x1530]
  7cf41c:	41 83 e5 fc          	and    r13d,0xfffffffc
  7cf420:	4d 2b f1             	sub    r14,r9
  7cf423:	33 f6                	xor    esi,esi
  7cf425:	4d 63 ed             	movsxd r13,r13d
  7cf428:	4f 8d 3c e6          	lea    r15,[r14+r12*8]
  7cf42c:	4c 03 f9             	add    r15,rcx
  7cf42f:	4e 8d 34 e0          	lea    r14,[rax+r12*8]
  7cf433:	4c 03 f2             	add    r14,rdx
  7cf436:	4d 03 fa             	add    r15,r10
  7cf439:	4d 03 f2             	add    r14,r10
  7cf43c:	c4 41 7d 10 04 f7    	vmovupd ymm8,YMMWORD PTR [r15+rsi*8]
  7cf442:	c5 3d 5d cf          	vminpd ymm9,ymm8,ymm7
  7cf446:	c5 35 5f d1          	vmaxpd ymm10,ymm9,ymm1
  7cf44a:	c4 41 7d 11 14 f6    	vmovupd YMMWORD PTR [r14+rsi*8],ymm10
  7cf450:	c4 41 7d 11 14 f7    	vmovupd YMMWORD PTR [r15+rsi*8],ymm10
  7cf456:	48 83 c6 04          	add    rsi,0x4
  7cf45a:	49 3b f5             	cmp    rsi,r13
  7cf45d:	72 dd                	jb     7cf43c <biology_mod_mp_biology_tile_+0x342c>
  7cf45f:	4c 3b ef             	cmp    r13,rdi
  7cf462:	73 47                	jae    7cf4ab <biology_mod_mp_biology_tile_+0x349b>
  7cf464:	48 8b b5 70 e9 ff ff 	mov    rsi,QWORD PTR [rbp-0x1690]
  7cf46b:	48 2b b5 d0 ea ff ff 	sub    rsi,QWORD PTR [rbp-0x1530]
  7cf472:	49 2b f1             	sub    rsi,r9
  7cf475:	4e 8d 34 e6          	lea    r14,[rsi+r12*8]
  7cf479:	4c 03 f1             	add    r14,rcx
  7cf47c:	4a 8d 34 e0          	lea    rsi,[rax+r12*8]
  7cf480:	48 03 f2             	add    rsi,rdx
  7cf483:	4d 03 f2             	add    r14,r10
  7cf486:	49 03 f2             	add    rsi,r10
  7cf489:	c4 01 7b 10 04 ee    	vmovsd xmm8,QWORD PTR [r14+r13*8]
  7cf48f:	c5 3b 5d c4          	vminsd xmm8,xmm8,xmm4
  7cf493:	c5 3b 5f c0          	vmaxsd xmm8,xmm8,xmm0
  7cf497:	c4 21 7b 11 04 ee    	vmovsd QWORD PTR [rsi+r13*8],xmm8
  7cf49d:	c4 01 7b 11 04 ee    	vmovsd QWORD PTR [r14+r13*8],xmm8
  7cf4a3:	49 ff c5             	inc    r13
  7cf4a6:	4c 3b ef             	cmp    r13,rdi
  7cf4a9:	72 de                	jb     7cf489 <biology_mod_mp_biology_tile_+0x3479>
  7cf4ab:	49 ff c3             	inc    r11
  7cf4ae:	4c 03 55 d8          	add    r10,QWORD PTR [rbp-0x28]
  7cf4b2:	4c 3b 5d e0          	cmp    r11,QWORD PTR [rbp-0x20]
  7cf4b6:	0f 82 33 ff ff ff    	jb     7cf3ef <biology_mod_mp_biology_tile_+0x33df>
  7cf4bc:	4c 89 45 c8          	mov    QWORD PTR [rbp-0x38],r8
  7cf4c0:	4c 89 65 d0          	mov    QWORD PTR [rbp-0x30],r12
  7cf4c4:	48 8b b5 10 eb ff ff 	mov    rsi,QWORD PTR [rbp-0x14f0]
  7cf4cb:	48 8b bd 18 eb ff ff 	mov    rdi,QWORD PTR [rbp-0x14e8]
  7cf4d2:	4c 8b 4d e0          	mov    r9,QWORD PTR [rbp-0x20]
  7cf4d6:	4c 8b 85 00 eb ff ff 	mov    r8,QWORD PTR [rbp-0x1500]
  7cf4dd:	45 33 db             	xor    r11d,r11d
  7cf4e0:	45 33 d2             	xor    r10d,r10d
  7cf4e3:	4d 85 c9             	test   r9,r9
  7cf4e6:	0f 8e 5b 01 00 00    	jle    7cf647 <biology_mod_mp_biology_tile_+0x3637>
  7cf4ec:	48 8b 85 98 db ff ff 	mov    rax,QWORD PTR [rbp-0x2468]
  7cf4f3:	48 2b 85 d0 ea ff ff 	sub    rax,QWORD PTR [rbp-0x1530]
  7cf4fa:	4c 8b ad c8 de ff ff 	mov    r13,QWORD PTR [rbp-0x2138]
  7cf501:	4c 8b a5 a0 e9 ff ff 	mov    r12,QWORD PTR [rbp-0x1660]
  7cf508:	49 2b c4             	sub    rax,r12
  7cf50b:	4c 8d b5 90 ef ff ff 	lea    r14,[rbp-0x1070]
  7cf512:	49 8b 0e             	mov    rcx,QWORD PTR [r14]
  7cf515:	48 63 15 6c 1a 41 00 	movsxd rdx,DWORD PTR [rip+0x411a6c]        # be0f88 <mod_biology_mp_ioxyg_>
  7cf51c:	4c 89 4d e0          	mov    QWORD PTR [rbp-0x20],r9
  7cf520:	4c 89 85 00 eb ff ff 	mov    QWORD PTR [rbp-0x1500],r8
  7cf527:	48 0f af ca          	imul   rcx,rdx
  7cf52b:	49 0f af d4          	imul   rdx,r12
  7cf52f:	c5 7d 10 0d 09 bf 07 	vmovupd ymm9,YMMWORD PTR [rip+0x7bf09]        # 84b440 <var$630.126.450+0x14a0>
  7cf536:	00 
  7cf537:	c5 7b 10 05 71 d9 07 	vmovsd xmm8,QWORD PTR [rip+0x7d971]        # 84ceb0 <__STRLITPACK_0.112+0xda0>
  7cf53e:	00 
  7cf53f:	48 89 b5 10 eb ff ff 	mov    QWORD PTR [rbp-0x14f0],rsi
  7cf546:	48 89 bd 18 eb ff ff 	mov    QWORD PTR [rbp-0x14e8],rdi
  7cf54d:	4c 89 ad 68 e9 ff ff 	mov    QWORD PTR [rbp-0x1698],r13
  7cf554:	4c 8b 45 c8          	mov    r8,QWORD PTR [rbp-0x38]
  7cf558:	4d 8b 0e             	mov    r9,QWORD PTR [r14]
  7cf55b:	4c 8b 65 d0          	mov    r12,QWORD PTR [rbp-0x30]
  7cf55f:	4d 3b c4             	cmp    r8,r12
  7cf562:	0f 8c ad 00 00 00    	jl     7cf615 <biology_mod_mp_biology_tile_+0x3605>
  7cf568:	4c 89 c7             	mov    rdi,r8
  7cf56b:	49 2b fc             	sub    rdi,r12
  7cf56e:	48 ff c7             	inc    rdi
  7cf571:	48 83 ff 04          	cmp    rdi,0x4
  7cf575:	0f 8c 56 55 00 00    	jl     7d4ad1 <biology_mod_mp_biology_tile_+0x8ac1>
  7cf57b:	4c 8b b5 68 e9 ff ff 	mov    r14,QWORD PTR [rbp-0x1698]
  7cf582:	41 89 fd             	mov    r13d,edi
  7cf585:	4c 2b b5 d0 ea ff ff 	sub    r14,QWORD PTR [rbp-0x1530]
  7cf58c:	41 83 e5 fc          	and    r13d,0xfffffffc
  7cf590:	4d 2b f1             	sub    r14,r9
  7cf593:	33 f6                	xor    esi,esi
  7cf595:	4d 63 ed             	movsxd r13,r13d
  7cf598:	4f 8d 3c e6          	lea    r15,[r14+r12*8]
  7cf59c:	4c 03 f9             	add    r15,rcx
  7cf59f:	4e 8d 34 e0          	lea    r14,[rax+r12*8]
  7cf5a3:	4c 03 f2             	add    r14,rdx
  7cf5a6:	4d 03 fa             	add    r15,r10
  7cf5a9:	4d 03 f2             	add    r14,r10
  7cf5ac:	c4 41 7d 10 14 f7    	vmovupd ymm10,YMMWORD PTR [r15+rsi*8]
  7cf5b2:	c4 41 2d 5d d9       	vminpd ymm11,ymm10,ymm9
  7cf5b7:	c4 41 7d 11 1c f6    	vmovupd YMMWORD PTR [r14+rsi*8],ymm11
  7cf5bd:	c4 41 7d 11 1c f7    	vmovupd YMMWORD PTR [r15+rsi*8],ymm11
  7cf5c3:	48 83 c6 04          	add    rsi,0x4
  7cf5c7:	49 3b f5             	cmp    rsi,r13
  7cf5ca:	72 e0                	jb     7cf5ac <biology_mod_mp_biology_tile_+0x359c>
  7cf5cc:	4c 3b ef             	cmp    r13,rdi
  7cf5cf:	73 44                	jae    7cf615 <biology_mod_mp_biology_tile_+0x3605>
  7cf5d1:	48 8b b5 68 e9 ff ff 	mov    rsi,QWORD PTR [rbp-0x1698]
  7cf5d8:	48 2b b5 d0 ea ff ff 	sub    rsi,QWORD PTR [rbp-0x1530]
  7cf5df:	49 2b f1             	sub    rsi,r9
  7cf5e2:	4e 8d 34 e6          	lea    r14,[rsi+r12*8]
  7cf5e6:	4c 03 f1             	add    r14,rcx
  7cf5e9:	4a 8d 34 e0          	lea    rsi,[rax+r12*8]
  7cf5ed:	48 03 f2             	add    rsi,rdx
  7cf5f0:	4d 03 f2             	add    r14,r10
  7cf5f3:	49 03 f2             	add    rsi,r10
  7cf5f6:	c4 01 7b 10 14 ee    	vmovsd xmm10,QWORD PTR [r14+r13*8]
  7cf5fc:	c4 41 2b 5d d0       	vminsd xmm10,xmm10,xmm8
  7cf601:	c4 21 7b 11 14 ee    	vmovsd QWORD PTR [rsi+r13*8],xmm10
  7cf607:	c4 01 7b 11 14 ee    	vmovsd QWORD PTR [r14+r13*8],xmm10
  7cf60d:	49 ff c5             	inc    r13
  7cf610:	4c 3b ef             	cmp    r13,rdi
  7cf613:	72 e1                	jb     7cf5f6 <biology_mod_mp_biology_tile_+0x35e6>
  7cf615:	49 ff c3             	inc    r11
  7cf618:	4c 03 55 d8          	add    r10,QWORD PTR [rbp-0x28]
  7cf61c:	4c 3b 5d e0          	cmp    r11,QWORD PTR [rbp-0x20]
  7cf620:	0f 82 39 ff ff ff    	jb     7cf55f <biology_mod_mp_biology_tile_+0x354f>
  7cf626:	4c 89 45 c8          	mov    QWORD PTR [rbp-0x38],r8
  7cf62a:	4c 89 65 d0          	mov    QWORD PTR [rbp-0x30],r12
  7cf62e:	48 8b b5 10 eb ff ff 	mov    rsi,QWORD PTR [rbp-0x14f0]
  7cf635:	48 8b bd 18 eb ff ff 	mov    rdi,QWORD PTR [rbp-0x14e8]
  7cf63c:	4c 8b 4d e0          	mov    r9,QWORD PTR [rbp-0x20]
  7cf640:	4c 8b 85 00 eb ff ff 	mov    r8,QWORD PTR [rbp-0x1500]
  7cf647:	33 c9                	xor    ecx,ecx
  7cf649:	33 d2                	xor    edx,edx
  7cf64b:	4d 85 c9             	test   r9,r9
  7cf64e:	0f 8e 6a 54 00 00    	jle    7d4abe <biology_mod_mp_biology_tile_+0x8aae>
  7cf654:	4c 8b a5 38 e2 ff ff 	mov    r12,QWORD PTR [rbp-0x1dc8]
  7cf65b:	48 89 bd 18 eb ff ff 	mov    QWORD PTR [rbp-0x14e8],rdi
  7cf662:	48 8b bd b0 ea ff ff 	mov    rdi,QWORD PTR [rbp-0x1550]
  7cf669:	4d 8d 54 24 50       	lea    r10,[r12+0x50]
  7cf66e:	49 8b 02             	mov    rax,QWORD PTR [r10]
  7cf671:	48 0f af f8          	imul   rdi,rax
  7cf675:	48 0f af 85 40 e2 ff 	imul   rax,QWORD PTR [rbp-0x1dc0]
  7cf67c:	ff 
  7cf67d:	c5 7d 10 05 9b bd 07 	vmovupd ymm8,YMMWORD PTR [rip+0x7bd9b]        # 84b420 <var$630.126.450+0x1480>
  7cf684:	00 
  7cf685:	c5 7b 10 15 1b d8 07 	vmovsd xmm10,QWORD PTR [rip+0x7d81b]        # 84cea8 <__STRLITPACK_0.112+0xd98>
  7cf68c:	00 
  7cf68d:	c5 79 10 0d bb c8 07 	vmovupd xmm9,XMMWORD PTR [rip+0x7c8bb]        # 84bf50 <__STRLITPACK_54.50+0x160>
  7cf694:	00 
  7cf695:	4c 8b ad c8 de ff ff 	mov    r13,QWORD PTR [rbp-0x2138]
  7cf69c:	4c 89 ad a8 e7 ff ff 	mov    QWORD PTR [rbp-0x1858],r13
  7cf6a3:	4d 8b 6a 30          	mov    r13,QWORD PTR [r10+0x30]
  7cf6a7:	4d 8b 5a 18          	mov    r11,QWORD PTR [r10+0x18]
  7cf6ab:	4d 8b 72 b0          	mov    r14,QWORD PTR [r10-0x50]
  7cf6af:	4c 89 4d e0          	mov    QWORD PTR [rbp-0x20],r9
  7cf6b3:	48 89 8d 18 e8 ff ff 	mov    QWORD PTR [rbp-0x17e8],rcx
  7cf6ba:	4f 8d 7c 1d 00       	lea    r15,[r13+r11*1+0x0]
  7cf6bf:	4d 8b 4a 48          	mov    r9,QWORD PTR [r10+0x48]
  7cf6c3:	4c 89 9d 28 eb ff ff 	mov    QWORD PTR [rbp-0x14d8],r11
  7cf6ca:	49 8b 4a e8          	mov    rcx,QWORD PTR [r10-0x18]
  7cf6ce:	4d 89 f4             	mov    r12,r14
  7cf6d1:	4c 2b b5 b0 de ff ff 	sub    r14,QWORD PTR [rbp-0x2150]
  7cf6d8:	4d 2b e1             	sub    r12,r9
  7cf6db:	48 89 95 10 e8 ff ff 	mov    QWORD PTR [rbp-0x17f0],rdx
  7cf6e2:	49 8d 14 3b          	lea    rdx,[r11+rdi*1]
  7cf6e6:	4c 8b 9d 90 ef ff ff 	mov    r11,QWORD PTR [rbp-0x1070]
  7cf6ed:	4d 89 da             	mov    r10,r11
  7cf6f0:	4c 89 b5 c0 e7 ff ff 	mov    QWORD PTR [rbp-0x1840],r14
  7cf6f7:	48 f7 df             	neg    rdi
  7cf6fa:	4c 63 35 bf 12 41 00 	movsxd r14,DWORD PTR [rip+0x4112bf]        # be09c0 <mod_scalars_mp_isalt_>
  7cf701:	48 03 f8             	add    rdi,rax
  7cf704:	4d 0f af d6          	imul   r10,r14
  7cf708:	4d 0f af f1          	imul   r14,r9
  7cf70c:	4c 89 95 b8 e7 ff ff 	mov    QWORD PTR [rbp-0x1848],r10
  7cf713:	4d 89 da             	mov    r10,r11
  7cf716:	4c 63 1d 93 12 41 00 	movsxd r11,DWORD PTR [rip+0x411293]        # be09b0 <mod_scalars_mp_itemp_>
  7cf71d:	4d 0f af d3          	imul   r10,r11
  7cf721:	4d 0f af d9          	imul   r11,r9
  7cf725:	4c 89 95 b0 e7 ff ff 	mov    QWORD PTR [rbp-0x1850],r10
  7cf72c:	4c 8b 95 50 e2 ff ff 	mov    r10,QWORD PTR [rbp-0x1db0]
  7cf733:	4d 0f af d5          	imul   r10,r13
  7cf737:	49 f7 dd             	neg    r13
  7cf73a:	4d 03 ea             	add    r13,r10
  7cf73d:	4d 03 ec             	add    r13,r12
  7cf740:	4d 03 e2             	add    r12,r10
  7cf743:	48 89 b5 10 eb ff ff 	mov    QWORD PTR [rbp-0x14f0],rsi
  7cf74a:	4c 2b ef             	sub    r13,rdi
  7cf74d:	48 8b b5 48 e2 ff ff 	mov    rsi,QWORD PTR [rbp-0x1db8]
  7cf754:	49 f7 da             	neg    r10
  7cf757:	48 8b 7d d0          	mov    rdi,QWORD PTR [rbp-0x30]
  7cf75b:	4d 03 d1             	add    r10,r9
  7cf75e:	48 0f af f1          	imul   rsi,rcx
  7cf762:	48 0f af f9          	imul   rdi,rcx
  7cf766:	4d 03 d7             	add    r10,r15
  7cf769:	4c 2b fa             	sub    r15,rdx
  7cf76c:	4c 89 8d e8 e7 ff ff 	mov    QWORD PTR [rbp-0x1818],r9
  7cf773:	4d 2b e7             	sub    r12,r15
  7cf776:	4d 89 ef             	mov    r15,r13
  7cf779:	4c 8d 0c 06          	lea    r9,[rsi+rax*1]
  7cf77d:	48 2b f7             	sub    rsi,rdi
  7cf780:	4c 2b fe             	sub    r15,rsi
  7cf783:	48 89 8d 20 e8 ff ff 	mov    QWORD PTR [rbp-0x17e0],rcx
  7cf78a:	48 89 95 f0 e7 ff ff 	mov    QWORD PTR [rbp-0x1810],rdx
  7cf791:	48 89 85 f8 e7 ff ff 	mov    QWORD PTR [rbp-0x1808],rax
  7cf798:	4c 89 95 58 e7 ff ff 	mov    QWORD PTR [rbp-0x18a8],r10
  7cf79f:	4d 8d 3c 4f          	lea    r15,[r15+rcx*2]
  7cf7a3:	4c 89 bd c8 e7 ff ff 	mov    QWORD PTR [rbp-0x1838],r15
  7cf7aa:	4d 89 e7             	mov    r15,r12
  7cf7ad:	4d 2b f9             	sub    r15,r9
  7cf7b0:	4c 03 ff             	add    r15,rdi
  7cf7b3:	4c 89 bd d0 e7 ff ff 	mov    QWORD PTR [rbp-0x1830],r15
  7cf7ba:	4d 8d 3c 4b          	lea    r15,[r11+rcx*2]
  7cf7be:	49 f7 df             	neg    r15
  7cf7c1:	49 8d 0c 4e          	lea    rcx,[r14+rcx*2]
  7cf7c5:	4c 03 fe             	add    r15,rsi
  7cf7c8:	48 2b f1             	sub    rsi,rcx
  7cf7cb:	49 f7 df             	neg    r15
  7cf7ce:	4d 03 fd             	add    r15,r13
  7cf7d1:	4c 2b ee             	sub    r13,rsi
  7cf7d4:	4c 89 bd d8 e7 ff ff 	mov    QWORD PTR [rbp-0x1828],r15
  7cf7db:	4e 8d 3c 1f          	lea    r15,[rdi+r11*1]
  7cf7df:	49 03 fe             	add    rdi,r14
  7cf7e2:	49 f7 de             	neg    r14
  7cf7e5:	49 f7 df             	neg    r15
  7cf7e8:	49 f7 db             	neg    r11
  7cf7eb:	4c 03 f0             	add    r14,rax
  7cf7ee:	4d 03 f9             	add    r15,r9
  7cf7f1:	4c 03 d8             	add    r11,rax
  7cf7f4:	49 f7 de             	neg    r14
  7cf7f7:	49 f7 df             	neg    r15
  7cf7fa:	49 f7 db             	neg    r11
  7cf7fd:	4c 2b cf             	sub    r9,rdi
  7cf800:	4c 03 f2             	add    r14,rdx
  7cf803:	4d 03 fc             	add    r15,r12
  7cf806:	4c 03 da             	add    r11,rdx
  7cf809:	4d 2b e1             	sub    r12,r9
  7cf80c:	33 c0                	xor    eax,eax
  7cf80e:	4c 89 b5 e8 dc ff ff 	mov    QWORD PTR [rbp-0x2318],r14
  7cf815:	4c 89 bd e0 e7 ff ff 	mov    QWORD PTR [rbp-0x1820],r15
  7cf81c:	48 8b b5 10 eb ff ff 	mov    rsi,QWORD PTR [rbp-0x14f0]
  7cf823:	48 8b bd 18 eb ff ff 	mov    rdi,QWORD PTR [rbp-0x14e8]
  7cf82a:	48 8b 95 10 e8 ff ff 	mov    rdx,QWORD PTR [rbp-0x17f0]
  7cf831:	48 8b 8d 18 e8 ff ff 	mov    rcx,QWORD PTR [rbp-0x17e8]
  7cf838:	4c 8b 4d e0          	mov    r9,QWORD PTR [rbp-0x20]
  7cf83c:	4c 8b 75 d0          	mov    r14,QWORD PTR [rbp-0x30]
  7cf840:	4c 89 a5 f0 dc ff ff 	mov    QWORD PTR [rbp-0x2310],r12
  7cf847:	4c 89 ad f8 dc ff ff 	mov    QWORD PTR [rbp-0x2308],r13
  7cf84e:	4c 89 9d 50 e7 ff ff 	mov    QWORD PTR [rbp-0x18b0],r11
  7cf855:	4c 89 85 00 eb ff ff 	mov    QWORD PTR [rbp-0x1500],r8
  7cf85c:	4c 3b 75 c8          	cmp    r14,QWORD PTR [rbp-0x38]
  7cf860:	0f 8f db 01 00 00    	jg     7cfa41 <biology_mod_mp_biology_tile_+0x3a31>
  7cf866:	48 63 35 23 17 41 00 	movsxd rsi,DWORD PTR [rip+0x411723]        # be0f90 <mod_biology_mp_itic__>
  7cf86d:	48 89 b5 d0 dc ff ff 	mov    QWORD PTR [rbp-0x2330],rsi
  7cf874:	48 83 bd 20 e8 ff ff 	cmp    QWORD PTR [rbp-0x17e0],0x8
  7cf87b:	08 
  7cf87c:	0f 85 bf 01 00 00    	jne    7cfa41 <biology_mod_mp_biology_tile_+0x3a31>
  7cf882:	4c 3b 75 c8          	cmp    r14,QWORD PTR [rbp-0x38]
  7cf886:	0f 8f 83 04 00 00    	jg     7cfd0f <biology_mod_mp_biology_tile_+0x3cff>
  7cf88c:	48 8b 75 c8          	mov    rsi,QWORD PTR [rbp-0x38]
  7cf890:	49 2b f6             	sub    rsi,r14
  7cf893:	48 ff c6             	inc    rsi
  7cf896:	48 83 fe 04          	cmp    rsi,0x4
  7cf89a:	0f 8c 9c 50 00 00    	jl     7d493c <biology_mod_mp_biology_tile_+0x892c>
  7cf8a0:	4c 8b 85 d0 dc ff ff 	mov    r8,QWORD PTR [rbp-0x2330]
  7cf8a7:	4d 89 c5             	mov    r13,r8
  7cf8aa:	4c 8b 95 90 ef ff ff 	mov    r10,QWORD PTR [rbp-0x1070]
  7cf8b1:	89 f7                	mov    edi,esi
  7cf8b3:	4d 0f af ea          	imul   r13,r10
  7cf8b7:	4c 8b 8d a8 e7 ff ff 	mov    r9,QWORD PTR [rbp-0x1858]
  7cf8be:	83 e7 fc             	and    edi,0xfffffffc
  7cf8c1:	4c 2b 8d d0 ea ff ff 	sub    r9,QWORD PTR [rbp-0x1530]
  7cf8c8:	45 33 e4             	xor    r12d,r12d
  7cf8cb:	4d 2b ca             	sub    r9,r10
  7cf8ce:	4c 8b bd b8 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1848]
  7cf8d5:	48 63 ff             	movsxd rdi,edi
  7cf8d8:	4f 8d 0c f1          	lea    r9,[r9+r14*8]
  7cf8dc:	4e 8d 1c 0a          	lea    r11,[rdx+r9*1]
  7cf8e0:	4d 03 dd             	add    r11,r13
  7cf8e3:	4f 8d 14 0f          	lea    r10,[r15+r9*1]
  7cf8e7:	4c 8b ad c0 e7 ff ff 	mov    r13,QWORD PTR [rbp-0x1840]
  7cf8ee:	4c 03 d2             	add    r10,rdx
  7cf8f1:	4c 03 8d b0 e7 ff ff 	add    r9,QWORD PTR [rbp-0x1850]
  7cf8f8:	4c 03 ca             	add    r9,rdx
  7cf8fb:	4f 8d 7c f5 00       	lea    r15,[r13+r14*8+0x0]
  7cf900:	4c 8b ad e8 e7 ff ff 	mov    r13,QWORD PTR [rbp-0x1818]
  7cf907:	4d 0f af e8          	imul   r13,r8
  7cf90b:	4c 2b bd 58 e7 ff ff 	sub    r15,QWORD PTR [rbp-0x18a8]
  7cf912:	4c 8b 85 f0 e7 ff ff 	mov    r8,QWORD PTR [rbp-0x1810]
  7cf919:	4d 03 c7             	add    r8,r15
  7cf91c:	4c 2b 85 f8 e7 ff ff 	sub    r8,QWORD PTR [rbp-0x1808]
  7cf923:	4c 03 c0             	add    r8,rax
  7cf926:	4d 03 e8             	add    r13,r8
  7cf929:	4c 8b 85 e8 dc ff ff 	mov    r8,QWORD PTR [rbp-0x2318]
  7cf930:	4d 03 c7             	add    r8,r15
  7cf933:	4c 03 bd 50 e7 ff ff 	add    r15,QWORD PTR [rbp-0x18b0]
  7cf93a:	4c 03 c0             	add    r8,rax
  7cf93d:	4c 03 f8             	add    r15,rax
  7cf940:	c4 01 7d 10 6c e5 00 	vmovupd ymm13,YMMWORD PTR [r13+r12*8+0x0]
  7cf947:	c4 01 7d 10 1c e7    	vmovupd ymm11,YMMWORD PTR [r15+r12*8]
  7cf94d:	c4 01 7d 10 24 e0    	vmovupd ymm12,YMMWORD PTR [r8+r12*8]
  7cf953:	c4 41 15 5f f0       	vmaxpd ymm14,ymm13,ymm8
  7cf958:	c4 01 7d 11 1c e1    	vmovupd YMMWORD PTR [r9+r12*8],ymm11
  7cf95e:	c4 01 7d 11 24 e2    	vmovupd YMMWORD PTR [r10+r12*8],ymm12
  7cf964:	c4 01 7d 11 34 e3    	vmovupd YMMWORD PTR [r11+r12*8],ymm14
  7cf96a:	49 83 c4 04          	add    r12,0x4
  7cf96e:	4c 3b e7             	cmp    r12,rdi
  7cf971:	72 cd                	jb     7cf940 <biology_mod_mp_biology_tile_+0x3930>
  7cf973:	48 3b fe             	cmp    rdi,rsi
  7cf976:	0f 83 93 03 00 00    	jae    7cfd0f <biology_mod_mp_biology_tile_+0x3cff>
  7cf97c:	4c 8b 85 d0 dc ff ff 	mov    r8,QWORD PTR [rbp-0x2330]
  7cf983:	4d 89 c1             	mov    r9,r8
  7cf986:	4c 8b 9d 90 ef ff ff 	mov    r11,QWORD PTR [rbp-0x1070]
  7cf98d:	4d 0f af cb          	imul   r9,r11
  7cf991:	4c 8b 95 a8 e7 ff ff 	mov    r10,QWORD PTR [rbp-0x1858]
  7cf998:	4c 2b 95 d0 ea ff ff 	sub    r10,QWORD PTR [rbp-0x1530]
  7cf99f:	4d 2b d3             	sub    r10,r11
  7cf9a2:	4c 8b ad b8 e7 ff ff 	mov    r13,QWORD PTR [rbp-0x1848]
  7cf9a9:	4c 8b bd c0 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1840]
  7cf9b0:	4f 8d 14 f2          	lea    r10,[r10+r14*8]
  7cf9b4:	4e 8d 24 12          	lea    r12,[rdx+r10*1]
  7cf9b8:	4d 03 e1             	add    r12,r9
  7cf9bb:	4f 8d 5c 15 00       	lea    r11,[r13+r10*1+0x0]
  7cf9c0:	4c 8b 8d e8 e7 ff ff 	mov    r9,QWORD PTR [rbp-0x1818]
  7cf9c7:	4f 8d 2c f7          	lea    r13,[r15+r14*8]
  7cf9cb:	4d 0f af c8          	imul   r9,r8
  7cf9cf:	4c 2b ad 58 e7 ff ff 	sub    r13,QWORD PTR [rbp-0x18a8]
  7cf9d6:	4c 03 da             	add    r11,rdx
  7cf9d9:	4c 8b 85 f0 e7 ff ff 	mov    r8,QWORD PTR [rbp-0x1810]
  7cf9e0:	4c 03 95 b0 e7 ff ff 	add    r10,QWORD PTR [rbp-0x1850]
  7cf9e7:	4c 03 d2             	add    r10,rdx
  7cf9ea:	4f 8d 3c 28          	lea    r15,[r8+r13*1]
  7cf9ee:	4c 8b 85 e8 dc ff ff 	mov    r8,QWORD PTR [rbp-0x2318]
  7cf9f5:	4c 2b bd f8 e7 ff ff 	sub    r15,QWORD PTR [rbp-0x1808]
  7cf9fc:	4c 03 f8             	add    r15,rax
  7cf9ff:	4d 03 cf             	add    r9,r15
  7cfa02:	4d 03 c5             	add    r8,r13
  7cfa05:	4c 03 ad 50 e7 ff ff 	add    r13,QWORD PTR [rbp-0x18b0]
  7cfa0c:	4c 03 c0             	add    r8,rax
  7cfa0f:	4c 03 e8             	add    r13,rax
  7cfa12:	c4 41 7b 10 1c f9    	vmovsd xmm11,QWORD PTR [r9+rdi*8]
  7cfa18:	4d 8b 7c fd 00       	mov    r15,QWORD PTR [r13+rdi*8+0x0]
  7cfa1d:	c4 41 23 5f da       	vmaxsd xmm11,xmm11,xmm10
  7cfa22:	4d 89 3c fa          	mov    QWORD PTR [r10+rdi*8],r15
  7cfa26:	4d 8b 3c f8          	mov    r15,QWORD PTR [r8+rdi*8]
  7cfa2a:	4d 89 3c fb          	mov    QWORD PTR [r11+rdi*8],r15
  7cfa2e:	c4 41 7b 11 1c fc    	vmovsd QWORD PTR [r12+rdi*8],xmm11
  7cfa34:	48 ff c7             	inc    rdi
  7cfa37:	48 3b fe             	cmp    rdi,rsi
  7cfa3a:	72 d6                	jb     7cfa12 <biology_mod_mp_biology_tile_+0x3a02>
  7cfa3c:	e9 ce 02 00 00       	jmp    7cfd0f <biology_mod_mp_biology_tile_+0x3cff>
  7cfa41:	4c 3b 75 c8          	cmp    r14,QWORD PTR [rbp-0x38]
  7cfa45:	0f 8f c4 02 00 00    	jg     7cfd0f <biology_mod_mp_biology_tile_+0x3cff>
  7cfa4b:	4c 8b 6d c8          	mov    r13,QWORD PTR [rbp-0x38]
  7cfa4f:	4d 2b ee             	sub    r13,r14
  7cfa52:	49 ff c5             	inc    r13
  7cfa55:	49 83 fd 04          	cmp    r13,0x4
  7cfa59:	0f 8c 4f 50 00 00    	jl     7d4aae <biology_mod_mp_biology_tile_+0x8a9e>
  7cfa5f:	48 8b bd a8 e7 ff ff 	mov    rdi,QWORD PTR [rbp-0x1858]
  7cfa66:	45 89 e8             	mov    r8d,r13d
  7cfa69:	48 2b bd d0 ea ff ff 	sub    rdi,QWORD PTR [rbp-0x1530]
  7cfa70:	41 83 e0 fc          	and    r8d,0xfffffffc
  7cfa74:	48 8b b5 90 ef ff ff 	mov    rsi,QWORD PTR [rbp-0x1070]
  7cfa7b:	48 2b fe             	sub    rdi,rsi
  7cfa7e:	4c 8b 95 b8 e7 ff ff 	mov    r10,QWORD PTR [rbp-0x1848]
  7cfa85:	4c 8b bd e0 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1820]
  7cfa8c:	4c 8b a5 d0 dc ff ff 	mov    r12,QWORD PTR [rbp-0x2330]
  7cfa93:	4d 89 e3             	mov    r11,r12
  7cfa96:	4c 0f af de          	imul   r11,rsi
  7cfa9a:	4d 63 c0             	movsxd r8,r8d
  7cfa9d:	4e 8d 0c f7          	lea    r9,[rdi+r14*8]
  7cfaa1:	4c 89 85 78 eb ff ff 	mov    QWORD PTR [rbp-0x1488],r8
  7cfaa8:	4b 8d 34 0a          	lea    rsi,[r10+r9*1]
  7cfaac:	45 33 c0             	xor    r8d,r8d
  7cfaaf:	4d 8d 14 07          	lea    r10,[r15+rax*1]
  7cfab3:	4c 8b bd f8 dc ff ff 	mov    r15,QWORD PTR [rbp-0x2308]
  7cfaba:	4a 8d 3c 0a          	lea    rdi,[rdx+r9*1]
  7cfabe:	4c 89 95 70 e7 ff ff 	mov    QWORD PTR [rbp-0x1890],r10
  7cfac5:	49 03 fb             	add    rdi,r11
  7cfac8:	4c 8b 9d d8 e7 ff ff 	mov    r11,QWORD PTR [rbp-0x1828]
  7cfacf:	48 03 f2             	add    rsi,rdx
  7cfad2:	4c 03 8d b0 e7 ff ff 	add    r9,QWORD PTR [rbp-0x1850]
  7cfad9:	4d 8d 14 07          	lea    r10,[r15+rax*1]
  7cfadd:	4c 8b bd f0 dc ff ff 	mov    r15,QWORD PTR [rbp-0x2310]
  7cfae4:	4c 03 ca             	add    r9,rdx
  7cfae7:	4c 89 95 68 e7 ff ff 	mov    QWORD PTR [rbp-0x1898],r10
  7cfaee:	4c 03 d8             	add    r11,rax
  7cfaf1:	4c 89 ad 00 e8 ff ff 	mov    QWORD PTR [rbp-0x1800],r13
  7cfaf8:	48 89 85 08 e8 ff ff 	mov    QWORD PTR [rbp-0x17f8],rax
  7cfaff:	4d 8d 14 07          	lea    r10,[r15+rax*1]
  7cfb03:	4c 8b bd e8 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1818]
  7cfb0a:	4d 0f af fc          	imul   r15,r12
  7cfb0e:	4c 89 95 60 e7 ff ff 	mov    QWORD PTR [rbp-0x18a0],r10
  7cfb15:	4c 8b a5 c8 e7 ff ff 	mov    r12,QWORD PTR [rbp-0x1838]
  7cfb1c:	4c 8b 95 d0 e7 ff ff 	mov    r10,QWORD PTR [rbp-0x1830]
  7cfb23:	48 89 95 10 e8 ff ff 	mov    QWORD PTR [rbp-0x17f0],rdx
  7cfb2a:	48 89 8d 18 e8 ff ff 	mov    QWORD PTR [rbp-0x17e8],rcx
  7cfb31:	4c 03 e0             	add    r12,rax
  7cfb34:	4c 89 75 d0          	mov    QWORD PTR [rbp-0x30],r14
  7cfb38:	4c 03 d0             	add    r10,rax
  7cfb3b:	48 8b 85 60 e7 ff ff 	mov    rax,QWORD PTR [rbp-0x18a0]
  7cfb42:	4d 03 e7             	add    r12,r15
  7cfb45:	48 8b 95 68 e7 ff ff 	mov    rdx,QWORD PTR [rbp-0x1898]
  7cfb4c:	4d 03 d7             	add    r10,r15
  7cfb4f:	48 8b 8d 70 e7 ff ff 	mov    rcx,QWORD PTR [rbp-0x1890]
  7cfb56:	45 33 ff             	xor    r15d,r15d
  7cfb59:	4c 8b ad 20 e8 ff ff 	mov    r13,QWORD PTR [rbp-0x17e0]
  7cfb60:	4e 8d 34 39          	lea    r14,[rcx+r15*1]
  7cfb64:	c4 41 7b 10 1e       	vmovsd xmm11,QWORD PTR [r14]
  7cfb69:	c4 01 21 16 24 2e    	vmovhpd xmm12,xmm11,QWORD PTR [r14+r13*1]
  7cfb6f:	4e 8d 34 38          	lea    r14,[rax+r15*1]
  7cfb73:	c4 41 7b 10 2e       	vmovsd xmm13,QWORD PTR [r14]
  7cfb78:	c4 01 11 16 34 2e    	vmovhpd xmm14,xmm13,QWORD PTR [r14+r13*1]
  7cfb7e:	4f 8d 34 3a          	lea    r14,[r10+r15*1]
  7cfb82:	c4 41 7b 10 3e       	vmovsd xmm15,QWORD PTR [r14]
  7cfb87:	c4 01 01 16 1c 2e    	vmovhpd xmm11,xmm15,QWORD PTR [r14+r13*1]
  7cfb8d:	4f 8d 34 3b          	lea    r14,[r11+r15*1]
  7cfb91:	c4 01 79 11 24 c1    	vmovupd XMMWORD PTR [r9+r8*8],xmm12
  7cfb97:	c4 21 79 11 34 c6    	vmovupd XMMWORD PTR [rsi+r8*8],xmm14
  7cfb9d:	c4 41 21 5f e1       	vmaxpd xmm12,xmm11,xmm9
  7cfba2:	c4 41 7b 10 2e       	vmovsd xmm13,QWORD PTR [r14]
  7cfba7:	c4 01 11 16 34 2e    	vmovhpd xmm14,xmm13,QWORD PTR [r14+r13*1]
  7cfbad:	4e 8d 34 3a          	lea    r14,[rdx+r15*1]
  7cfbb1:	c4 41 7b 10 3e       	vmovsd xmm15,QWORD PTR [r14]
  7cfbb6:	c4 01 01 16 1c 2e    	vmovhpd xmm11,xmm15,QWORD PTR [r14+r13*1]
  7cfbbc:	4f 8d 34 3c          	lea    r14,[r12+r15*1]
  7cfbc0:	c4 21 79 11 24 c7    	vmovupd XMMWORD PTR [rdi+r8*8],xmm12
  7cfbc6:	c4 01 79 11 74 c1 10 	vmovupd XMMWORD PTR [r9+r8*8+0x10],xmm14
  7cfbcd:	c4 21 79 11 5c c6 10 	vmovupd XMMWORD PTR [rsi+r8*8+0x10],xmm11
  7cfbd4:	c4 41 7b 10 26       	vmovsd xmm12,QWORD PTR [r14]
  7cfbd9:	4f 8d 3c af          	lea    r15,[r15+r13*4]
  7cfbdd:	c4 01 19 16 2c 2e    	vmovhpd xmm13,xmm12,QWORD PTR [r14+r13*1]
  7cfbe3:	c4 41 11 5f f1       	vmaxpd xmm14,xmm13,xmm9
  7cfbe8:	c4 21 79 11 74 c7 10 	vmovupd XMMWORD PTR [rdi+r8*8+0x10],xmm14
  7cfbef:	49 83 c0 04          	add    r8,0x4
  7cfbf3:	4c 3b 85 78 eb ff ff 	cmp    r8,QWORD PTR [rbp-0x1488]
  7cfbfa:	0f 82 60 ff ff ff    	jb     7cfb60 <biology_mod_mp_biology_tile_+0x3b50>
  7cfc00:	4c 8b ad 00 e8 ff ff 	mov    r13,QWORD PTR [rbp-0x1800]
  7cfc07:	48 8b 85 08 e8 ff ff 	mov    rax,QWORD PTR [rbp-0x17f8]
  7cfc0e:	48 8b 95 10 e8 ff ff 	mov    rdx,QWORD PTR [rbp-0x17f0]
  7cfc15:	48 8b 8d 18 e8 ff ff 	mov    rcx,QWORD PTR [rbp-0x17e8]
  7cfc1c:	4c 8b 75 d0          	mov    r14,QWORD PTR [rbp-0x30]
  7cfc20:	4c 8b 95 20 e8 ff ff 	mov    r10,QWORD PTR [rbp-0x17e0]
  7cfc27:	48 8b b5 78 eb ff ff 	mov    rsi,QWORD PTR [rbp-0x1488]
  7cfc2e:	4c 0f af d6          	imul   r10,rsi
  7cfc32:	49 3b f5             	cmp    rsi,r13
  7cfc35:	0f 83 d4 00 00 00    	jae    7cfd0f <biology_mod_mp_biology_tile_+0x3cff>
  7cfc3b:	4c 8b a5 d0 dc ff ff 	mov    r12,QWORD PTR [rbp-0x2330]
  7cfc42:	4c 89 e6             	mov    rsi,r12
  7cfc45:	4c 8b 85 90 ef ff ff 	mov    r8,QWORD PTR [rbp-0x1070]
  7cfc4c:	48 8b bd a8 e7 ff ff 	mov    rdi,QWORD PTR [rbp-0x1858]
  7cfc53:	49 0f af f0          	imul   rsi,r8
  7cfc57:	48 2b bd d0 ea ff ff 	sub    rdi,QWORD PTR [rbp-0x1530]
  7cfc5e:	49 2b f8             	sub    rdi,r8
  7cfc61:	4c 8b 9d b8 e7 ff ff 	mov    r11,QWORD PTR [rbp-0x1848]
  7cfc68:	4c 8b bd e0 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1820]
  7cfc6f:	48 89 8d 18 e8 ff ff 	mov    QWORD PTR [rbp-0x17e8],rcx
  7cfc76:	4c 89 75 d0          	mov    QWORD PTR [rbp-0x30],r14
  7cfc7a:	4a 8d 3c f7          	lea    rdi,[rdi+r14*8]
  7cfc7e:	4c 8b b5 20 e8 ff ff 	mov    r14,QWORD PTR [rbp-0x17e0]
  7cfc85:	4d 8d 04 3b          	lea    r8,[r11+rdi*1]
  7cfc89:	4c 8b 9d f0 dc ff ff 	mov    r11,QWORD PTR [rbp-0x2310]
  7cfc90:	4c 8d 0c 3a          	lea    r9,[rdx+rdi*1]
  7cfc94:	4c 03 ce             	add    r9,rsi
  7cfc97:	49 8d 34 07          	lea    rsi,[r15+rax*1]
  7cfc9b:	48 03 bd b0 e7 ff ff 	add    rdi,QWORD PTR [rbp-0x1850]
  7cfca2:	4c 03 c2             	add    r8,rdx
  7cfca5:	48 03 fa             	add    rdi,rdx
  7cfca8:	4d 8d 3c 03          	lea    r15,[r11+rax*1]
  7cfcac:	48 8d 8d 78 e7 ff ff 	lea    rcx,[rbp-0x1888]
  7cfcb3:	4c 89 39             	mov    QWORD PTR [rcx],r15
  7cfcb6:	4c 8b bd e8 e7 ff ff 	mov    r15,QWORD PTR [rbp-0x1818]
  7cfcbd:	4d 0f af fc          	imul   r15,r12
  7cfcc1:	4c 8b 9d d0 e7 ff ff 	mov    r11,QWORD PTR [rbp-0x1830]
  7cfcc8:	48 8b 09             	mov    rcx,QWORD PTR [rcx]
  7cfccb:	4c 8b a5 78 eb ff ff 	mov    r12,QWORD PTR [rbp-0x1488]
  7cfcd2:	4c 03 d8             	add    r11,rax
  7cfcd5:	4d 03 df             	add    r11,r15
  7cfcd8:	c4 01 7b 10 1c 1a    	vmovsd xmm11,QWORD PTR [r10+r11*1]
  7cfcde:	4d 8b 3c 32          	mov    r15,QWORD PTR [r10+rsi*1]
  7cfce2:	c4 41 23 5f da       	vmaxsd xmm11,xmm11,xmm10
  7cfce7:	4e 89 3c e7          	mov    QWORD PTR [rdi+r12*8],r15
  7cfceb:	4d 8b 3c 0a          	mov    r15,QWORD PTR [r10+rcx*1]
  7cfcef:	4d 03 d6             	add    r10,r14
  7cfcf2:	4f 89 3c e0          	mov    QWORD PTR [r8+r12*8],r15
  7cfcf6:	c4 01 7b 11 1c e1    	vmovsd QWORD PTR [r9+r12*8],xmm11
  7cfcfc:	49 ff c4             	inc    r12
  7cfcff:	4d 3b e5             	cmp    r12,r13
  7cfd02:	72 d4                	jb     7cfcd8 <biology_mod_mp_biology_tile_+0x3cc8>
  7cfd04:	48 8b 8d 18 e8 ff ff 	mov    rcx,QWORD PTR [rbp-0x17e8]
  7cfd0b:	4c 8b 75 d0          	mov    r14,QWORD PTR [rbp-0x30]
  7cfd0f:	48 ff c1             	inc    rcx
  7cfd12:	48 03 55 d8          	add    rdx,QWORD PTR [rbp-0x28]
  7cfd16:	48 03 85 28 eb ff ff 	add    rax,QWORD PTR [rbp-0x14d8]
  7cfd1d:	48 3b 4d e0          	cmp    rcx,QWORD PTR [rbp-0x20]
  7cfd21:	0f 82 35 fb ff ff    	jb     7cf85c <biology_mod_mp_biology_tile_+0x384c>
  7cfd27:	4c 89 75 d0          	mov    QWORD PTR [rbp-0x30],r14
  7cfd2b:	4c 89 f0             	mov    rax,r14
  7cfd2e:	48 8b b5 10 eb ff ff 	mov    rsi,QWORD PTR [rbp-0x14f0]
  7cfd35:	48 8b bd 18 eb ff ff 	mov    rdi,QWORD PTR [rbp-0x14e8]
  7cfd3c:	4c 8b 4d e0          	mov    r9,QWORD PTR [rbp-0x20]
  7cfd40:	4c 8b 85 00 eb ff ff 	mov    r8,QWORD PTR [rbp-0x1500]
  7cfd47:	48 3b 45 c8          	cmp    rax,QWORD PTR [rbp-0x38]
  7cfd4b:	0f 8f 6d 01 00 00    	jg     7cfebe <biology_mod_mp_biology_tile_+0x3eae>
  7cfd51:	4c 8b 75 c8          	mov    r14,QWORD PTR [rbp-0x38]
  7cfd55:	4c 2b 75 d0          	sub    r14,QWORD PTR [rbp-0x30]
  7cfd59:	49 ff c6             	inc    r14
  7cfd5c:	4c 8b ad e0 e1 ff ff 	mov    r13,QWORD PTR [rbp-0x1e20]
  7cfd63:	c5 7b 10 05 95 5b 2f 	vmovsd xmm8,QWORD PTR [rip+0x2f5b95]        # ac5900 <mod_scalars_mp_rho0_>
  7cfd6a:	00 
  7cfd6b:	48 8b 0d ae d8 2e 00 	mov    rcx,QWORD PTR [rip+0x2ed8ae]        # abd620 <mod_biology_mp_parfrac_>
  7cfd72:	c5 7b 10 15 9e 5b 2f 	vmovsd xmm10,QWORD PTR [rip+0x2f5b9e]        # ac5918 <mod_scalars_mp_cp_>
  7cfd79:	00 
  7cfd7a:	49 83 fe 04          	cmp    r14,0x4
  7cfd7e:	0f 8c 22 4d 00 00    	jl     7d4aa6 <biology_mod_mp_biology_tile_+0x8a96>
  7cfd84:	4d 89 eb             	mov    r11,r13
  7cfd87:	45 89 f2             	mov    r10d,r14d
  7cfd8a:	4c 2b 9d d0 ea ff ff 	sub    r11,QWORD PTR [rbp-0x1530]
  7cfd91:	41 83 e2 fc          	and    r10d,0xfffffffc
  7cfd95:	45 33 e4             	xor    r12d,r12d
  7cfd98:	48 8b 95 b8 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x548]
  7cfd9f:	4c 8b bd b0 ea ff ff 	mov    r15,QWORD PTR [rbp-0x1550]
  7cfda6:	4c 0f af bd c0 de ff 	imul   r15,QWORD PTR [rbp-0x2140]
  7cfdad:	ff 
  7cfdae:	c5 2b 59 4c d1 f8    	vmulsd xmm9,xmm10,QWORD PTR [rcx+rdx*8-0x8]
  7cfdb4:	c4 41 3b 59 d9       	vmulsd xmm11,xmm8,xmm9
  7cfdb9:	4d 8d 1c c3          	lea    r11,[r11+rax*8]
  7cfdbd:	48 0f af 85 38 e7 ff 	imul   rax,QWORD PTR [rbp-0x18c8]
  7cfdc4:	ff 
  7cfdc5:	48 8b 95 30 e2 ff ff 	mov    rdx,QWORD PTR [rbp-0x1dd0]
  7cfdcc:	4c 89 85 00 eb ff ff 	mov    QWORD PTR [rbp-0x1500],r8
  7cfdd3:	4d 63 d2             	movsxd r10,r10d
  7cfdd6:	c4 41 7b 12 cb       	vmovddup xmm9,xmm11
  7cfddb:	49 03 d7             	add    rdx,r15
  7cfdde:	4c 03 bd b8 de ff ff 	add    r15,QWORD PTR [rbp-0x2148]
  7cfde5:	48 03 d0             	add    rdx,rax
  7cfde8:	4c 8b 85 38 e7 ff ff 	mov    r8,QWORD PTR [rbp-0x18c8]
  7cfdef:	49 03 c7             	add    rax,r15
  7cfdf2:	4c 89 4d e0          	mov    QWORD PTR [rbp-0x20],r9
  7cfdf6:	45 33 ff             	xor    r15d,r15d
  7cfdf9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  7cfe00:	4e 8d 0c 3a          	lea    r9,[rdx+r15*1]
  7cfe04:	c4 41 7b 10 19       	vmovsd xmm11,QWORD PTR [r9]
  7cfe09:	c4 01 21 16 24 01    	vmovhpd xmm12,xmm11,QWORD PTR [r9+r8*1]
  7cfe0f:	4e 8d 0c 38          	lea    r9,[rax+r15*1]
  7cfe13:	c4 41 7b 10 31       	vmovsd xmm14,QWORD PTR [r9]
  7cfe18:	4f 8d 3c 87          	lea    r15,[r15+r8*4]
  7cfe1c:	c4 01 09 16 3c 01    	vmovhpd xmm15,xmm14,QWORD PTR [r9+r8*1]
  7cfe22:	c4 41 31 59 ec       	vmulpd xmm13,xmm9,xmm12
  7cfe27:	c4 41 31 59 df       	vmulpd xmm11,xmm9,xmm15
  7cfe2c:	c4 01 79 11 2c e3    	vmovupd XMMWORD PTR [r11+r12*8],xmm13
  7cfe32:	c4 01 79 11 5c e3 10 	vmovupd XMMWORD PTR [r11+r12*8+0x10],xmm11
  7cfe39:	49 83 c4 04          	add    r12,0x4
  7cfe3d:	4d 3b e2             	cmp    r12,r10
  7cfe40:	72 be                	jb     7cfe00 <biology_mod_mp_biology_tile_+0x3df0>
  7cfe42:	4c 8b 4d e0          	mov    r9,QWORD PTR [rbp-0x20]
  7cfe46:	4c 8b 85 00 eb ff ff 	mov    r8,QWORD PTR [rbp-0x1500]
  7cfe4d:	48 8b 85 38 e7 ff ff 	mov    rax,QWORD PTR [rbp-0x18c8]
  7cfe54:	49 0f af c2          	imul   rax,r10
  7cfe58:	4d 3b d6             	cmp    r10,r14
  7cfe5b:	73 61                	jae    7cfebe <biology_mod_mp_biology_tile_+0x3eae>
  7cfe5d:	48 8b 95 b8 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x548]
  7cfe64:	4c 2b ad d0 ea ff ff 	sub    r13,QWORD PTR [rbp-0x1530]
  7cfe6b:	4c 8b 5d d0          	mov    r11,QWORD PTR [rbp-0x30]
  7cfe6f:	c5 2b 59 4c d1 f8    	vmulsd xmm9,xmm10,QWORD PTR [rcx+rdx*8-0x8]
  7cfe75:	48 8b 95 b0 ea ff ff 	mov    rdx,QWORD PTR [rbp-0x1550]
  7cfe7c:	4b 8d 4c dd 00       	lea    rcx,[r13+r11*8+0x0]
  7cfe81:	48 0f af 95 c0 de ff 	imul   rdx,QWORD PTR [rbp-0x2140]
  7cfe88:	ff 
  7cfe89:	4c 8d a5 38 e7 ff ff 	lea    r12,[rbp-0x18c8]
  7cfe90:	4d 0f af 1c 24       	imul   r11,QWORD PTR [r12]
  7cfe95:	c4 41 3b 59 c1       	vmulsd xmm8,xmm8,xmm9
  7cfe9a:	48 03 95 30 e2 ff ff 	add    rdx,QWORD PTR [rbp-0x1dd0]
  7cfea1:	49 03 d3             	add    rdx,r11
  7cfea4:	4d 8b 1c 24          	mov    r11,QWORD PTR [r12]
  7cfea8:	c5 3b 59 0c 10       	vmulsd xmm9,xmm8,QWORD PTR [rax+rdx*1]
  7cfead:	49 03 c3             	add    rax,r11
  7cfeb0:	c4 21 7b 11 0c d1    	vmovsd QWORD PTR [rcx+r10*8],xmm9
  7cfeb6:	49 ff c2             	inc    r10
  7cfeb9:	4d 3b d6             	cmp    r10,r14
  7cfebc:	72 ea                	jb     7cfea8 <biology_mod_mp_biology_tile_+0x3e98>
  7cfebe:	48 8b 15 fb d3 2e 00 	mov    rdx,QWORD PTR [rip+0x2ed3fb]        # abd2c0 <mod_biology_mp_bioiter_>
  7cfec5:	48 8b 85 b8 ef ff ff 	mov    rax,QWORD PTR [rbp-0x1048]
  7cfecc:	8b 44 10 fc          	mov    eax,DWORD PTR [rax+rdx*1-0x4]
  7cfed0:	85 c0                	test   eax,eax
  7cfed2:	0f 8e 5e 43 00 00    	jle    7d4236 <biology_mod_mp_biology_tile_+0x8226>
  7cfed8:	45 33 f6             	xor    r14d,r14d
  7cfedb:	8b 95 30 e7 ff ff    	mov    edx,DWORD PTR [rbp-0x18d0]
  7cfee1:	4c 8b bd c8 de ff ff 	mov    r15,QWORD PTR [rbp-0x2138]
  7cfee8:	89 95 70 eb ff ff    	mov    DWORD PTR [rbp-0x1490],edx
  7cfeee:	89 85 20 ea ff ff    	mov    DWORD PTR [rbp-0x15e0],eax
  7cfef4:	4c 89 4d e0          	mov    QWORD PTR [rbp-0x20],r9
  7cfef8:	48 89 b5 10 eb ff ff 	mov    QWORD PTR [rbp-0x14f0],rsi
  7cfeff:	48 89 bd 18 eb ff ff 	mov    QWORD PTR [rbp-0x14e8],rdi
  7cff06:	44 89 b5 18 ea ff ff 	mov    DWORD PTR [rbp-0x15e8],r14d
  7cff0d:	4c 89 bd 30 eb ff ff 	mov    QWORD PTR [rbp-0x14d0],r15
  7cff14:	48 8b 95 b0 ea ff ff 	mov    rdx,QWORD PTR [rbp-0x1550]
  7cff1b:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  7cff1f:	44 8b 55 a0          	mov    r10d,DWORD PTR [rbp-0x60]
  7cff23:	4c 8b 4d d0          	mov    r9,QWORD PTR [rbp-0x30]
  7cff27:	48 8b 75 e0          	mov    rsi,QWORD PTR [rbp-0x20]
  7cff2b:	45 33 e4             	xor    r12d,r12d
  7cff2e:	48 0f af 75 d8       	imul   rsi,QWORD PTR [rbp-0x28]
  7cff33:	4c 89 a5 60 ef ff ff 	mov    QWORD PTR [rbp-0x10a0],r12
  7cff3a:	4c 89 c9             	mov    rcx,r9
  7cff3d:	48 89 b5 80 ec ff ff 	mov    QWORD PTR [rbp-0x1380],rsi
  7cff44:	49 3b c1             	cmp    rax,r9
  7cff47:	0f 8c bb 06 00 00    	jl     7d0608 <biology_mod_mp_biology_tile_+0x45f8>
  7cff4d:	4c 8b 85 00 e0 ff ff 	mov    r8,QWORD PTR [rbp-0x2000]
  7cff54:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  7cff58:	4c 8b 9d d0 ea ff ff 	mov    r11,QWORD PTR [rbp-0x1530]
  7cff5f:	4d 2b c3             	sub    r8,r11
  7cff62:	4c 8b 75 80          	mov    r14,QWORD PTR [rbp-0x80]
  7cff66:	4d 2b c6             	sub    r8,r14
  7cff69:	4c 8b bd 90 ef ff ff 	mov    r15,QWORD PTR [rbp-0x1070]
  7cff70:	4c 63 2d e1 0f 41 00 	movsxd r13,DWORD PTR [rip+0x410fe1]        # be0f58 <mod_biology_mp_ilphy_>
  7cff77:	48 63 35 d2 0f 41 00 	movsxd rsi,DWORD PTR [rip+0x410fd2]        # be0f50 <mod_biology_mp_isphy_>
  7cff7e:	4d 0f af ef          	imul   r13,r15
  7cff82:	49 0f af f7          	imul   rsi,r15
  7cff86:	c4 c1 72 2a ca       	vcvtsi2ss xmm1,xmm1,r10d
  7cff8b:	c5 fa 10 05 b5 cf 07 	vmovss xmm0,DWORD PTR [rip+0x7cfb5]        # 84cf48 <__STRLITPACK_0.112+0xe38>
  7cff92:	00 
  7cff93:	4b 8d 3c c8          	lea    rdi,[r8+r9*8]
  7cff97:	4c 8b 85 60 e0 ff ff 	mov    r8,QWORD PTR [rbp-0x1fa0]
  7cff9e:	4d 2b c3             	sub    r8,r11
  7cffa1:	4d 2b c6             	sub    r8,r14
  7cffa4:	48 89 bd f8 ed ff ff 	mov    QWORD PTR [rbp-0x1208],rdi
  7cffab:	c5 fa 5e c1          	vdivss xmm0,xmm0,xmm1
  7cffaf:	c5 fa 11 85 e8 fa ff 	vmovss DWORD PTR [rbp-0x518],xmm0
  7cffb6:	ff 
  7cffb7:	4b 8d 3c c8          	lea    rdi,[r8+r9*8]
  7cffbb:	4c 8b 85 c0 e0 ff ff 	mov    r8,QWORD PTR [rbp-0x1f40]
  7cffc2:	4d 2b c3             	sub    r8,r11
  7cffc5:	4d 2b c6             	sub    r8,r14
  7cffc8:	48 89 bd 18 ee ff ff 	mov    QWORD PTR [rbp-0x11e8],rdi
  7cffcf:	48 89 95 b0 ea ff ff 	mov    QWORD PTR [rbp-0x1550],rdx
  7cffd6:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
  7cffda:	48 89 8d 40 ef ff ff 	mov    QWORD PTR [rbp-0x10c0],rcx
  7cffe1:	4b 8d 3c c8          	lea    rdi,[r8+r9*8]
  7cffe5:	4c 8b 85 e0 e1 ff ff 	mov    r8,QWORD PTR [rbp-0x1e20]
  7cffec:	4d 2b c3             	sub    r8,r11
  7cffef:	4c 89 85 48 ef ff ff 	mov    QWORD PTR [rbp-0x10b8],r8
  7cfff6:	4c 8b 05 83 dc 2e 00 	mov    r8,QWORD PTR [rip+0x2edc83]        # abdc80 <mod_biology_mp_ak1_>
  7cfffd:	4c 89 85 50 ee ff ff 	mov    QWORD PTR [rbp-0x11b0],r8
  7d0004:	4c 8b 05 d5 dc 2e 00 	mov    r8,QWORD PTR [rip+0x2edcd5]        # abdce0 <mod_biology_mp_ak2_>
  7d000b:	4c 89 85 40 ee ff ff 	mov    QWORD PTR [rbp-0x11c0],r8
  7d0012:	49 89 c0             	mov    r8,rax
  7d0015:	48 89 bd 30 ee ff ff 	mov    QWORD PTR [rbp-0x11d0],rdi
  7d001c:	4d 2b c1             	sub    r8,r9
  7d001f:	48 8b bd 40 df ff ff 	mov    rdi,QWORD PTR [rbp-0x20c0]
  7d0026:	49 ff c0             	inc    r8
  7d0029:	49 2b fb             	sub    rdi,r11
  7d002c:	4c 89 85 50 ef ff ff 	mov    QWORD PTR [rbp-0x10b0],r8
  7d0033:	49 89 f8             	mov    r8,rdi
  7d0036:	4d 2b c6             	sub    r8,r14
  7d0039:	4c 89 4d d0          	mov    QWORD PTR [rbp-0x30],r9
  7d003d:	4f 8d 04 c8          	lea    r8,[r8+r9*8]
  7d0041:	4c 89 85 78 ee ff ff 	mov    QWORD PTR [rbp-0x1188],r8
  7d0048:	4c 8b 85 80 ec ff ff 	mov    r8,QWORD PTR [rbp-0x1380]
  7d004f:	4c 03 c7             	add    r8,rdi
  7d0052:	4c 89 85 58 ef ff ff 	mov    QWORD PTR [rbp-0x10a8],r8
  7d0059:	4e 8d 04 cd 00 00 00 	lea    r8,[r9*8+0x0]
  7d0060:	00 
  7d0061:	49 f7 d8             	neg    r8
  7d0064:	4a 8d 3c cf          	lea    rdi,[rdi+r9*8]
  7d0068:	4d 03 c7             	add    r8,r15
  7d006b:	4c 8b bd 30 eb ff ff 	mov    r15,QWORD PTR [rbp-0x14d0]
  7d0072:	4d 2b fb             	sub    r15,r11
  7d0075:	49 89 d3             	mov    r11,rdx
  7d0078:	4d 2b fe             	sub    r15,r14
  7d007b:	4d 89 ce             	mov    r14,r9
  7d007e:	4c 0f af 9d f0 ea ff 	imul   r11,QWORD PTR [rbp-0x1510]
  7d0085:	ff 
  7d0086:	4c 0f af b5 30 ef ff 	imul   r14,QWORD PTR [rbp-0x10d0]
  7d008d:	ff 
  7d008e:	4d 2b f8             	sub    r15,r8
  7d0091:	4d 89 c8             	mov    r8,r9
  7d0094:	4c 0f af 45 98       	imul   r8,QWORD PTR [rbp-0x68]
  7d0099:	4c 03 9d a8 e8 ff ff 	add    r11,QWORD PTR [rbp-0x1758]
  7d00a0:	49 03 f7             	add    rsi,r15
  7d00a3:	4d 03 c3             	add    r8,r11
  7d00a6:	49 89 d3             	mov    r11,rdx
  7d00a9:	4c 0f af 9d c0 e8 ff 	imul   r11,QWORD PTR [rbp-0x1740]
  7d00b0:	ff 
  7d00b1:	48 89 bd 90 ee ff ff 	mov    QWORD PTR [rbp-0x1170],rdi
  7d00b8:	4d 03 fd             	add    r15,r13
  7d00bb:	48 89 d7             	mov    rdi,rdx
  7d00be:	4d 89 cd             	mov    r13,r9
  7d00c1:	48 0f af bd d0 e8 ff 	imul   rdi,QWORD PTR [rbp-0x1730]
  7d00c8:	ff 
  7d00c9:	4c 0f af ad 38 ef ff 	imul   r13,QWORD PTR [rbp-0x10c8]
  7d00d0:	ff 
  7d00d1:	4c 03 9d 08 e9 ff ff 	add    r11,QWORD PTR [rbp-0x16f8]
  7d00d8:	49 03 fd             	add    rdi,r13
  7d00db:	4c 8b 6d e0          	mov    r13,QWORD PTR [rbp-0x20]
  7d00df:	4d 03 de             	add    r11,r14
  7d00e2:	4c 8b b5 b0 e8 ff ff 	mov    r14,QWORD PTR [rbp-0x1750]
  7d00e9:	4d 0f af f5          	imul   r14,r13
  7d00ed:	4d 03 f3             	add    r14,r11
  7d00f0:	4c 8b 9d 48 ff ff ff 	mov    r11,QWORD PTR [rbp-0xb8]
  7d00f7:	4d 0f af dd          	imul   r11,r13
  7d00fb:	48 03 bd 00 e9 ff ff 	add    rdi,QWORD PTR [rbp-0x1700]
  7d0102:	4d 03 d8             	add    r11,r8
  7d0105:	4c 89 bd 98 ee ff ff 	mov    QWORD PTR [rbp-0x1168],r15
  7d010c:	4c 89 9d f8 fa ff ff 	mov    QWORD PTR [rbp-0x508],r11
  7d0113:	4c 89 b5 f0 fa ff ff 	mov    QWORD PTR [rbp-0x510],r14
  7d011a:	48 89 bd 18 ef ff ff 	mov    QWORD PTR [rbp-0x10e8],rdi
  7d0121:	48 89 b5 78 ec ff ff 	mov    QWORD PTR [rbp-0x1388],rsi
  7d0128:	48 8b 85 48 ef ff ff 	mov    rax,QWORD PTR [rbp-0x10b8]
  7d012f:	48 8b 8d 40 ef ff ff 	mov    rcx,QWORD PTR [rbp-0x10c0]
  7d0136:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  7d013a:	48 8b 95 58 ef ff ff 	mov    rdx,QWORD PTR [rbp-0x10a8]
  7d0141:	48 83 7d e0 00       	cmp    QWORD PTR [rbp-0x20],0x0
  7d0146:	c5 fb 5f 04 c8       	vmaxsd xmm0,xmm0,QWORD PTR [rax+rcx*8]
  7d014b:	c5 fb 11 04 ca       	vmovsd QWORD PTR [rdx+rcx*8],xmm0
  7d0150:	0f 8e 50 04 00 00    	jle    7d05a6 <biology_mod_mp_biology_tile_+0x4596>
  7d0156:	48 8b 95 18 ef ff ff 	mov    rdx,QWORD PTR [rbp-0x10e8]
  7d015d:	48 8b 85 60 ef ff ff 	mov    rax,QWORD PTR [rbp-0x10a0]
  7d0164:	c5 fb 10 0d d4 cc 07 	vmovsd xmm1,QWORD PTR [rip+0x7ccd4]        # 84ce40 <__STRLITPACK_0.112+0xd30>
  7d016b:	00 
  7d016c:	c5 fb 10 04 10       	vmovsd xmm0,QWORD PTR [rax+rdx*1]
  7d0171:	c5 f9 54 05 67 b3 07 	vandpd xmm0,xmm0,XMMWORD PTR [rip+0x7b367]        # 84b4e0 <__STRLITPACK_13+0x20>
  7d0178:	00 
  7d0179:	c5 f9 2f c8          	vcomisd xmm1,xmm0
  7d017d:	0f 87 d3 01 00 00    	ja     7d0356 <biology_mod_mp_biology_tile_+0x4346>
  7d0183:	4c 8b 85 50 ee ff ff 	mov    r8,QWORD PTR [rbp-0x11b0]
  7d018a:	45 33 c9             	xor    r9d,r9d
  7d018d:	48 8b b5 b8 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x548]
  7d0194:	48 8b 8d 80 ec ff ff 	mov    rcx,QWORD PTR [rbp-0x1380]
  7d019b:	4c 8b 95 78 ee ff ff 	mov    r10,QWORD PTR [rbp-0x1188]
  7d01a2:	48 8b bd 40 ee ff ff 	mov    rdi,QWORD PTR [rbp-0x11c0]
  7d01a9:	48 8b 85 90 ee ff ff 	mov    rax,QWORD PTR [rbp-0x1170]
  7d01b0:	4c 8b ad 78 ec ff ff 	mov    r13,QWORD PTR [rbp-0x1388]
  7d01b7:	c4 c1 7b 10 4c f0 f8 	vmovsd xmm1,QWORD PTR [r8+rsi*8-0x8]
  7d01be:	4e 8d 04 e1          	lea    r8,[rcx+r12*8]
  7d01c2:	48 8b 95 30 ee ff ff 	mov    rdx,QWORD PTR [rbp-0x11d0]
  7d01c9:	4b 8d 0c 02          	lea    rcx,[r10+r8*1]
  7d01cd:	4c 8b 9d 98 ee ff ff 	mov    r11,QWORD PTR [rbp-0x1168]
  7d01d4:	4c 8b b5 f8 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1208]
  7d01db:	c5 fb 10 44 f7 f8    	vmovsd xmm0,QWORD PTR [rdi+rsi*8-0x8]
  7d01e1:	4a 8d 34 00          	lea    rsi,[rax+r8*1]
  7d01e5:	c5 fb 11 85 18 fb ff 	vmovsd QWORD PTR [rbp-0x4e8],xmm0
  7d01ec:	ff 
  7d01ed:	4b 8d 44 05 00       	lea    rax,[r13+r8*1+0x0]
  7d01f2:	45 33 ed             	xor    r13d,r13d
  7d01f5:	4a 8d 3c 02          	lea    rdi,[rdx+r8*1]
  7d01f9:	c5 fb 11 8d 08 fb ff 	vmovsd QWORD PTR [rbp-0x4f8],xmm1
  7d0200:	ff 
  7d0201:	4b 8d 14 03          	lea    rdx,[r11+r8*1]
  7d0205:	48 89 85 00 fb ff ff 	mov    QWORD PTR [rbp-0x500],rax
  7d020c:	4f 8d 1c 06          	lea    r11,[r14+r8*1]
  7d0210:	4c 03 85 18 ee ff ff 	add    r8,QWORD PTR [rbp-0x11e8]
  7d0217:	45 33 f6             	xor    r14d,r14d
  7d021a:	4c 89 85 10 fb ff ff 	mov    QWORD PTR [rbp-0x4f0],r8
  7d0221:	45 33 ff             	xor    r15d,r15d
  7d0224:	4c 89 9d 20 fb ff ff 	mov    QWORD PTR [rbp-0x4e0],r11
  7d022b:	48 89 95 28 fb ff ff 	mov    QWORD PTR [rbp-0x4d8],rdx
  7d0232:	48 89 8d 30 fb ff ff 	mov    QWORD PTR [rbp-0x4d0],rcx
  7d0239:	48 89 b5 40 fb ff ff 	mov    QWORD PTR [rbp-0x4c0],rsi
  7d0240:	48 89 bd 38 fb ff ff 	mov    QWORD PTR [rbp-0x4c8],rdi
  7d0247:	4c 89 a5 10 ef ff ff 	mov    QWORD PTR [rbp-0x10f0],r12
  7d024e:	4d 89 cc             	mov    r12,r9
  7d0251:	48 8b b5 00 fb ff ff 	mov    rsi,QWORD PTR [rbp-0x500]
  7d0258:	48 8b bd 28 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x4d8]
  7d025f:	48 8b 95 f0 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x510]
  7d0266:	c4 c1 7b 10 64 37 f8 	vmovsd xmm4,QWORD PTR [r15+rsi*1-0x8]
  7d026d:	c5 fb 10 05 23 cc 07 	vmovsd xmm0,QWORD PTR [rip+0x7cc23]        # 84ce98 <__STRLITPACK_0.112+0xd88>
  7d0274:	00 
  7d0275:	c4 c1 7b 59 14 14    	vmulsd xmm2,xmm0,QWORD PTR [r12+rdx*1]
  7d027b:	c4 c1 5b 58 6c 3f f8 	vaddsd xmm5,xmm4,QWORD PTR [r15+rdi*1-0x8]
  7d0282:	c5 d3 59 b5 18 fb ff 	vmulsd xmm6,xmm5,QWORD PTR [rbp-0x4e8]
  7d0289:	ff 
  7d028a:	4c 8b 85 f8 fa ff ff 	mov    r8,QWORD PTR [rbp-0x508]
  7d0291:	c5 fb 10 0d e7 be 07 	vmovsd xmm1,QWORD PTR [rip+0x7bee7]        # 84c180 <__STRLITPACK_0.112+0x70>
  7d0298:	00 
  7d0299:	48 8b 85 20 fb ff ff 	mov    rax,QWORD PTR [rbp-0x4e0]
  7d02a0:	c5 f3 5c da          	vsubsd xmm3,xmm1,xmm2
  7d02a4:	c5 cb 58 bd 08 fb ff 	vaddsd xmm7,xmm6,QWORD PTR [rbp-0x4f8]
  7d02ab:	ff 
  7d02ac:	c4 01 43 59 44 05 00 	vmulsd xmm8,xmm7,QWORD PTR [r13+r8*1+0x0]
  7d02b3:	48 8b 8d 10 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x4f0]
  7d02ba:	c5 b9 57 05 fe b5 07 	vxorpd xmm0,xmm8,XMMWORD PTR [rip+0x7b5fe]        # 84b8c0 <__STRLITPACK_44.95+0x10>
  7d02c1:	00 
  7d02c2:	c4 c1 7b 11 4c 07 f8 	vmovsd QWORD PTR [r15+rax*1-0x8],xmm1
  7d02c9:	c4 c1 7b 11 5c 0f f8 	vmovsd QWORD PTR [r15+rcx*1-0x8],xmm3
  7d02d0:	c5 7b 11 85 48 fb ff 	vmovsd QWORD PTR [rbp-0x4b8],xmm8
  7d02d7:	ff 
  7d02d8:	4c 89 8d e8 fe ff ff 	mov    QWORD PTR [rbp-0x118],r9
  7d02df:	c5 f8 77             	vzeroupper 
  7d02e2:	e8 c9 f5 ce ff       	call   4bf8b0 <exp>
  7d02e7:	48 8b 95 40 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x4c0]
  7d02ee:	48 8b 85 30 fb ff ff 	mov    rax,QWORD PTR [rbp-0x4d0]
  7d02f5:	48 8b 8d 38 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x4c8]
  7d02fc:	c4 c1 7b 59 14 16    	vmulsd xmm2,xmm0,QWORD PTR [r14+rdx*1]
  7d0302:	c4 c1 7b 11 54 07 f8 	vmovsd QWORD PTR [r15+rax*1-0x8],xmm2
  7d0309:	c4 c1 7b 10 0c 16    	vmovsd xmm1,QWORD PTR [r14+rdx*1]
  7d030f:	4c 8b 8d e8 fe ff ff 	mov    r9,QWORD PTR [rbp-0x118]
  7d0316:	c5 f3 5c da          	vsubsd xmm3,xmm1,xmm2
  7d031a:	c5 e3 5e a5 48 fb ff 	vdivsd xmm4,xmm3,QWORD PTR [rbp-0x4b8]
  7d0321:	ff 
  7d0322:	49 ff c1             	inc    r9
  7d0325:	48 8b b5 d0 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x530]
  7d032c:	4c 03 f6             	add    r14,rsi
  7d032f:	4c 03 a5 d8 fa ff ff 	add    r12,QWORD PTR [rbp-0x528]
  7d0336:	4c 03 ad e0 fa ff ff 	add    r13,QWORD PTR [rbp-0x520]
  7d033d:	c4 c1 7b 11 64 0f f8 	vmovsd QWORD PTR [r15+rcx*1-0x8],xmm4
  7d0344:	4c 03 fe             	add    r15,rsi
  7d0347:	4c 3b 4d e0          	cmp    r9,QWORD PTR [rbp-0x20]
  7d034b:	0f 82 00 ff ff ff    	jb     7d0251 <biology_mod_mp_biology_tile_+0x4241>
  7d0351:	e9 49 02 00 00       	jmp    7d059f <biology_mod_mp_biology_tile_+0x458f>
  7d0356:	4c 8b ad 50 ee ff ff 	mov    r13,QWORD PTR [rbp-0x11b0]
  7d035d:	4c 8b b5 b8 fa ff ff 	mov    r14,QWORD PTR [rbp-0x548]
  7d0364:	48 8b 85 80 ec ff ff 	mov    rax,QWORD PTR [rbp-0x1380]
  7d036b:	4c 8b bd 40 ee ff ff 	mov    r15,QWORD PTR [rbp-0x11c0]
  7d0372:	48 8b 95 30 ee ff ff 	mov    rdx,QWORD PTR [rbp-0x11d0]
  7d0379:	48 8b bd 78 ee ff ff 	mov    rdi,QWORD PTR [rbp-0x1188]
  7d0380:	4c 8b 8d 98 ee ff ff 	mov    r9,QWORD PTR [rbp-0x1168]
  7d0387:	c4 81 7b 10 4c f5 f8 	vmovsd xmm1,QWORD PTR [r13+r14*8-0x8]
  7d038e:	4e 8d 2c e0          	lea    r13,[rax+r12*8]
  7d0392:	48 8b 85 f8 ed ff ff 	mov    rax,QWORD PTR [rbp-0x1208]
  7d0399:	4a 8d 0c 2a          	lea    rcx,[rdx+r13*1]
  7d039d:	48 8b b5 90 ee ff ff 	mov    rsi,QWORD PTR [rbp-0x1170]
  7d03a4:	4e 8d 04 2f          	lea    r8,[rdi+r13*1]
  7d03a8:	4c 8b 9d 78 ec ff ff 	mov    r11,QWORD PTR [rbp-0x1388]
  7d03af:	4f 8d 14 29          	lea    r10,[r9+r13*1]
  7d03b3:	c4 81 7b 10 54 f7 f8 	vmovsd xmm2,QWORD PTR [r15+r14*8-0x8]
  7d03ba:	4a 8d 14 28          	lea    rdx,[rax+r13*1]
  7d03be:	c5 fb 11 8d 88 fb ff 	vmovsd QWORD PTR [rbp-0x478],xmm1
  7d03c5:	ff 
  7d03c6:	4e 8d 3c 2e          	lea    r15,[rsi+r13*1]
  7d03ca:	c5 fb 11 95 98 fb ff 	vmovsd QWORD PTR [rbp-0x468],xmm2
  7d03d1:	ff 
  7d03d2:	4f 8d 34 2b          	lea    r14,[r11+r13*1]
  7d03d6:	48 c7 85 80 fb ff ff 	mov    QWORD PTR [rbp-0x480],0x0
  7d03dd:	00 00 00 00 
  7d03e1:	48 89 8d 90 fb ff ff 	mov    QWORD PTR [rbp-0x470],rcx
  7d03e8:	4c 89 85 a8 fb ff ff 	mov    QWORD PTR [rbp-0x458],r8
  7d03ef:	4c 89 95 b0 fb ff ff 	mov    QWORD PTR [rbp-0x450],r10
  7d03f6:	48 89 95 a0 fb ff ff 	mov    QWORD PTR [rbp-0x460],rdx
  7d03fd:	4c 03 ad 18 ee ff ff 	add    r13,QWORD PTR [rbp-0x11e8]
  7d0404:	c5 fb 5c 05 34 ca 07 	vsubsd xmm0,xmm0,QWORD PTR [rip+0x7ca34]        # 84ce40 <__STRLITPACK_0.112+0xd30>
  7d040b:	00 
  7d040c:	c5 fb 59 05 5c c1 07 	vmulsd xmm0,xmm0,QWORD PTR [rip+0x7c15c]        # 84c570 <__STRLITPACK_0.112+0x460>
  7d0413:	00 
  7d0414:	c5 fb 5f 05 84 ca 07 	vmaxsd xmm0,xmm0,QWORD PTR [rip+0x7ca84]        # 84cea0 <__STRLITPACK_0.112+0xd90>
  7d041b:	00 
  7d041c:	c5 f8 77             	vzeroupper 
  7d041f:	e8 8c f4 ce ff       	call   4bf8b0 <exp>
  7d0424:	c5 f9 28 c8          	vmovapd xmm1,xmm0
  7d0428:	33 f6                	xor    esi,esi
  7d042a:	c5 fb 10 05 4e bd 07 	vmovsd xmm0,QWORD PTR [rip+0x7bd4e]        # 84c180 <__STRLITPACK_0.112+0x70>
  7d0431:	00 
  7d0432:	c5 fb 5d c1          	vminsd xmm0,xmm0,xmm1
  7d0436:	33 c0                	xor    eax,eax
  7d0438:	48 8b 7d e0          	mov    rdi,QWORD PTR [rbp-0x20]
  7d043c:	c5 fb 11 85 58 fb ff 	vmovsd QWORD PTR [rbp-0x4a8],xmm0
  7d0443:	ff 
  7d0444:	89 bd 50 fb ff ff    	mov    DWORD PTR [rbp-0x4b0],edi
  7d044a:	4c 89 ad 68 fb ff ff 	mov    QWORD PTR [rbp-0x498],r13
  7d0451:	49 89 c5             	mov    r13,rax
  7d0454:	4c 89 b5 60 fb ff ff 	mov    QWORD PTR [rbp-0x4a0],r14
  7d045b:	49 89 f6             	mov    r14,rsi
  7d045e:	4c 89 bd 70 fb ff ff 	mov    QWORD PTR [rbp-0x490],r15
  7d0465:	49 89 f7             	mov    r15,rsi
  7d0468:	4c 89 a5 10 ef ff ff 	mov    QWORD PTR [rbp-0x10f0],r12
  7d046f:	49 89 f4             	mov    r12,rsi
  7d0472:	48 8b 85 80 fb ff ff 	mov    rax,QWORD PTR [rbp-0x480]
  7d0479:	48 8b bd f0 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x510]
  7d0480:	41 89 c1             	mov    r9d,eax
  7d0483:	c5 fb 10 05 0d ca 07 	vmovsd xmm0,QWORD PTR [rip+0x7ca0d]        # 84ce98 <__STRLITPACK_0.112+0xd88>
  7d048a:	00 
  7d048b:	41 f7 d9             	neg    r9d
  7d048e:	4c 8b 9d 60 fb ff ff 	mov    r11,QWORD PTR [rbp-0x4a0]
  7d0495:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  7d0499:	c4 c1 7b 59 14 3f    	vmulsd xmm2,xmm0,QWORD PTR [r15+rdi*1]
  7d049f:	48 8b bd b0 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x450]
  7d04a6:	c4 81 7b 10 7c 1d f8 	vmovsd xmm7,QWORD PTR [r13+r11*1-0x8]
  7d04ad:	44 03 8d 50 fb ff ff 	add    r9d,DWORD PTR [rbp-0x4b0]
  7d04b4:	c4 c1 5a 2a e1       	vcvtsi2ss xmm4,xmm4,r9d
  7d04b9:	c4 41 43 58 44 3d f8 	vaddsd xmm8,xmm7,QWORD PTR [r13+rdi*1-0x8]
  7d04c0:	c5 da 59 ad e8 fa ff 	vmulss xmm5,xmm4,DWORD PTR [rbp-0x518]
  7d04c7:	ff 
  7d04c8:	c5 3b 59 8d 98 fb ff 	vmulsd xmm9,xmm8,QWORD PTR [rbp-0x468]
  7d04cf:	ff 
  7d04d0:	c5 d2 5a ed          	vcvtss2sd xmm5,xmm5,xmm5
  7d04d4:	c5 33 58 95 88 fb ff 	vaddsd xmm10,xmm9,QWORD PTR [rbp-0x478]
  7d04db:	ff 
  7d04dc:	c5 d3 59 b5 58 fb ff 	vmulsd xmm6,xmm5,QWORD PTR [rbp-0x4a8]
  7d04e3:	ff 
  7d04e4:	48 8b bd f8 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x508]
  7d04eb:	c5 fb 10 0d 8d bc 07 	vmovsd xmm1,QWORD PTR [rip+0x7bc8d]        # 84c180 <__STRLITPACK_0.112+0x70>
  7d04f2:	00 
  7d04f3:	4c 8b 85 68 fb ff ff 	mov    r8,QWORD PTR [rbp-0x498]
  7d04fa:	c5 f3 5c da          	vsubsd xmm3,xmm1,xmm2
  7d04fe:	c4 41 2b 59 1c 3c    	vmulsd xmm11,xmm10,QWORD PTR [r12+rdi*1]
  7d0504:	4c 8b 95 a0 fb ff ff 	mov    r10,QWORD PTR [rbp-0x460]
  7d050b:	c5 a1 57 05 ad b3 07 	vxorpd xmm0,xmm11,XMMWORD PTR [rip+0x7b3ad]        # 84b8c0 <__STRLITPACK_44.95+0x10>
  7d0512:	00 
  7d0513:	c4 81 7b 11 5c 05 f8 	vmovsd QWORD PTR [r13+r8*1-0x8],xmm3
  7d051a:	c4 81 7b 11 74 15 f8 	vmovsd QWORD PTR [r13+r10*1-0x8],xmm6
  7d0521:	c5 7b 11 9d 78 fb ff 	vmovsd QWORD PTR [rbp-0x488],xmm11
  7d0528:	ff 
  7d0529:	48 89 85 80 fb ff ff 	mov    QWORD PTR [rbp-0x480],rax
  7d0530:	e8 7b f3 ce ff       	call   4bf8b0 <exp>
  7d0535:	4c 8b 85 70 fb ff ff 	mov    r8,QWORD PTR [rbp-0x490]
  7d053c:	48 8b bd a8 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x458]
  7d0543:	4c 8b 8d 90 fb ff ff 	mov    r9,QWORD PTR [rbp-0x470]
  7d054a:	c4 81 7b 59 14 06    	vmulsd xmm2,xmm0,QWORD PTR [r14+r8*1]
  7d0550:	c4 c1 7b 11 54 3d f8 	vmovsd QWORD PTR [r13+rdi*1-0x8],xmm2
  7d0557:	c4 81 7b 10 0c 06    	vmovsd xmm1,QWORD PTR [r14+r8*1]
  7d055d:	48 8b 85 80 fb ff ff 	mov    rax,QWORD PTR [rbp-0x480]
  7d0564:	c5 f3 5c da          	vsubsd xmm3,xmm1,xmm2
  7d0568:	c5 e3 5e a5 78 fb ff 	vdivsd xmm4,xmm3,QWORD PTR [rbp-0x488]
  7d056f:	ff 
  7d0570:	48 ff c0             	inc    rax
  7d0573:	4c 8b 95 d0 fa ff ff 	mov    r10,QWORD PTR [rbp-0x530]
  7d057a:	4d 03 f2             	add    r14,r10
  7d057d:	4c 03 bd d8 fa ff ff 	add    r15,QWORD PTR [rbp-0x528]
  7d0584:	4c 03 a5 e0 fa ff ff 	add    r12,QWORD PTR [rbp-0x520]
  7d058b:	c4 81 7b 11 64 0d f8 	vmovsd QWORD PTR [r13+r9*1-0x8],xmm4
  7d0592:	4d 03 ea             	add    r13,r10
  7d0595:	48 3b 45 e0          	cmp    rax,QWORD PTR [rbp-0x20]
  7d0599:	0f 82 da fe ff ff    	jb     7d0479 <biology_mod_mp_biology_tile_+0x4469>
  7d059f:	4c 8b a5 10 ef ff ff 	mov    r12,QWORD PTR [rbp-0x10f0]
  7d05a6:	48 8b 85 f0 fa ff ff 	mov    rax,QWORD PTR [rbp-0x510]
  7d05ad:	49 ff c4             	inc    r12
  7d05b0:	48 8b 95 f8 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x508]
  7d05b7:	48 8b 8d 60 ef ff ff 	mov    rcx,QWORD PTR [rbp-0x10a0]
  7d05be:	48 03 85 30 ef ff ff 	add    rax,QWORD PTR [rbp-0x10d0]
  7d05c5:	48 03 55 98          	add    rdx,QWORD PTR [rbp-0x68]
  7d05c9:	48 03 8d 38 ef ff ff 	add    rcx,QWORD PTR [rbp-0x10c8]
  7d05d0:	48 ff 85 40 ef ff ff 	inc    QWORD PTR [rbp-0x10c0]
  7d05d7:	48 89 85 f0 fa ff ff 	mov    QWORD PTR [rbp-0x510],rax
  7d05de:	48 89 95 f8 fa ff ff 	mov    QWORD PTR [rbp-0x508],rdx
  7d05e5:	48 89 8d 60 ef ff ff 	mov    QWORD PTR [rbp-0x10a0],rcx
  7d05ec:	4c 3b a5 50 ef ff ff 	cmp    r12,QWORD PTR [rbp-0x10b0]
  7d05f3:	0f 82 2f fb ff ff    	jb     7d0128 <biology_mod_mp_biology_tile_+0x4118>
  7d05f9:	48 8b 95 b0 ea ff ff 	mov    rdx,QWORD PTR [rbp-0x1550]
  7d0600:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  7d0604:	4c 8b 4d d0          	mov    r9,QWORD PTR [rbp-0x30]
  7d0608:	4c 63 15 a1 03 41 00 	movsxd r10,DWORD PTR [rip+0x4103a1]        # be09b0 <mod_scalars_mp_itemp_>
  7d060f:	4c 63 1d 72 09 41 00 	movsxd r11,DWORD PTR [rip+0x410972]        # be0f88 <mod_biology_mp_ioxyg_>
  7d0616:	48 83 7d e0 00       	cmp    QWORD PTR [rbp-0x20],0x0
  7d061b:	0f 8e 71 44 00 00    	jle    7d4a92 <biology_mod_mp_biology_tile_+0x8a82>
  7d0621:	48 89 95 b0 ea ff ff 	mov    QWORD PTR [rbp-0x1550],rdx
  7d0628:	48 8b 95 90 ef ff ff 	mov    rdx,QWORD PTR [rbp-0x1070]
  7d062f:	48 63 3d 1a 09 41 00 	movsxd rdi,DWORD PTR [rip+0x41091a]        # be0f50 <mod_biology_mp_isphy_>
  7d0636:	48 0f af fa          	imul   rdi,rdx
  7d063a:	4c 0f af da          	imul   r11,rdx
  7d063e:	4c 0f af d2          	imul   r10,rdx
  7d0642:	4c 8b ad 00 e0 ff ff 	mov    r13,QWORD PTR [rbp-0x2000]
  7d0649:	4c 8b b5 d0 ea ff ff 	mov    r14,QWORD PTR [rbp-0x1530]
  7d0650:	4d 2b ee             	sub    r13,r14
  7d0653:	4c 8b 85 60 e0 ff ff 	mov    r8,QWORD PTR [rbp-0x1fa0]
  7d065a:	4d 2b c6             	sub    r8,r14
  7d065d:	48 89 bd c0 ee ff ff 	mov    QWORD PTR [rbp-0x1140],rdi
  7d0664:	4c 89 9d 28 ea ff ff 	mov    QWORD PTR [rbp-0x15d8],r11
  7d066b:	4b 8d 7c cd 00       	lea    rdi,[r13+r9*8+0x0]
  7d0670:	48 89 bd 00 ed ff ff 	mov    QWORD PTR [rbp-0x1300],rdi
  7d0677:	48 8b bd c0 e0 ff ff 	mov    rdi,QWORD PTR [rbp-0x1f40]
  7d067e:	4f 8d 3c c8          	lea    r15,[r8+r9*8]
  7d0682:	49 2b fe             	sub    rdi,r14
  7d0685:	4c 63 05 04 09 41 00 	movsxd r8,DWORD PTR [rip+0x410904]        # be0f90 <mod_biology_mp_itic__>
  7d068c:	4c 0f af c2          	imul   r8,rdx
  7d0690:	4c 89 bd 08 ed ff ff 	mov    QWORD PTR [rbp-0x12f8],r15
  7d0697:	4e 8d 2c cf          	lea    r13,[rdi+r9*8]
  7d069b:	4c 89 ad 10 ed ff ff 	mov    QWORD PTR [rbp-0x12f0],r13
  7d06a2:	4c 63 2d d7 08 41 00 	movsxd r13,DWORD PTR [rip+0x4108d7]        # be0f80 <mod_biology_mp_ipo4__>
  7d06a9:	4c 0f af ea          	imul   r13,rdx
  7d06ad:	4c 89 85 d0 ee ff ff 	mov    QWORD PTR [rbp-0x1130],r8
  7d06b4:	4c 63 3d 8d 08 41 00 	movsxd r15,DWORD PTR [rip+0x41088d]        # be0f48 <mod_biology_mp_isioh_>
  7d06bb:	4c 63 05 7e 08 41 00 	movsxd r8,DWORD PTR [rip+0x41087e]        # be0f40 <mod_biology_mp_inh4__>
  7d06c2:	4c 0f af fa          	imul   r15,rdx
  7d06c6:	4c 0f af c2          	imul   r8,rdx
  7d06ca:	4c 89 ad b0 ee ff ff 	mov    QWORD PTR [rbp-0x1150],r13
  7d06d1:	4c 63 2d 60 08 41 00 	movsxd r13,DWORD PTR [rip+0x410860]        # be0f38 <mod_biology_mp_ino3__>
  7d06d8:	4c 0f af ea          	imul   r13,rdx
  7d06dc:	4c 89 bd a8 ee ff ff 	mov    QWORD PTR [rbp-0x1158],r15
  7d06e3:	4c 89 85 b0 ec ff ff 	mov    QWORD PTR [rbp-0x1350],r8
  7d06ea:	4c 8b 3d 0f d1 2e 00 	mov    r15,QWORD PTR [rip+0x2ed10f]        # abd800 <mod_biology_mp_pis1_>
  7d06f1:	4c 8b 85 b8 fa ff ff 	mov    r8,QWORD PTR [rbp-0x548]
  7d06f8:	4c 89 ad a8 ec ff ff 	mov    QWORD PTR [rbp-0x1358],r13
  7d06ff:	4c 63 1d 9a 08 41 00 	movsxd r11,DWORD PTR [rip+0x41089a]        # be0fa0 <mod_biology_mp_ichl1_>
  7d0706:	4c 0f af da          	imul   r11,rdx
  7d070a:	4c 63 25 5f 08 41 00 	movsxd r12,DWORD PTR [rip+0x41085f]        # be0f70 <mod_biology_mp_isdet_>
  7d0711:	4f 8d 2c c7          	lea    r13,[r15+r8*8]
  7d0715:	4c 8b 3d 24 d1 2e 00 	mov    r15,QWORD PTR [rip+0x2ed124]        # abd840 <mod_biology_mp_pis1_+0x40>
  7d071c:	49 c1 e7 03          	shl    r15,0x3
  7d0720:	49 f7 df             	neg    r15
  7d0723:	4c 89 bd 38 ed ff ff 	mov    QWORD PTR [rbp-0x12c8],r15
  7d072a:	4c 8b 3d 8f d1 2e 00 	mov    r15,QWORD PTR [rip+0x2ed18f]        # abd8c0 <mod_biology_mp_akno3s1_>
  7d0731:	4c 89 bd 28 ed ff ff 	mov    QWORD PTR [rbp-0x12d8],r15
  7d0738:	4c 8b 3d 01 d0 2e 00 	mov    r15,QWORD PTR [rip+0x2ed001]        # abd740 <mod_biology_mp_parsats1_>
  7d073f:	4c 89 ad 18 ed ff ff 	mov    QWORD PTR [rbp-0x12e8],r13
  7d0746:	4c 8b 2d 33 d2 2e 00 	mov    r13,QWORD PTR [rip+0x2ed233]        # abd980 <mod_biology_mp_aknh4s1_>
  7d074d:	4c 89 ad 30 ed ff ff 	mov    QWORD PTR [rbp-0x12d0],r13
  7d0754:	4c 8b 2d e5 d2 2e 00 	mov    r13,QWORD PTR [rip+0x2ed2e5]        # abda40 <mod_biology_mp_akpo4s1_>
  7d075b:	4c 89 ad 20 ed ff ff 	mov    QWORD PTR [rbp-0x12e0],r13
  7d0762:	4f 8d 2c c7          	lea    r13,[r15+r8*8]
  7d0766:	4c 89 ad 40 ed ff ff 	mov    QWORD PTR [rbp-0x12c0],r13
  7d076d:	4c 8b 2d ec d0 2e 00 	mov    r13,QWORD PTR [rip+0x2ed0ec]        # abd860 <mod_biology_mp_pis2_>
  7d0774:	4c 8b 3d 05 d0 2e 00 	mov    r15,QWORD PTR [rip+0x2ed005]        # abd780 <mod_biology_mp_parsats1_+0x40>
  7d077b:	49 c1 e7 03          	shl    r15,0x3
  7d077f:	49 f7 df             	neg    r15
  7d0782:	4c 89 bd 48 ed ff ff 	mov    QWORD PTR [rbp-0x12b8],r15
  7d0789:	4f 8d 7c c5 00       	lea    r15,[r13+r8*8+0x0]
  7d078e:	4c 89 bd 50 ed ff ff 	mov    QWORD PTR [rbp-0x12b0],r15
  7d0795:	4c 8b 3d 44 d2 2e 00 	mov    r15,QWORD PTR [rip+0x2ed244]        # abd9e0 <mod_biology_mp_aknh4s2_>
  7d079c:	4c 89 bd 78 ed ff ff 	mov    QWORD PTR [rbp-0x1288],r15
  7d07a3:	4c 8b 3d 16 d4 2e 00 	mov    r15,QWORD PTR [rip+0x2ed416]        # abdbc0 <mod_biology_mp_aksio4s2_>
  7d07aa:	4c 89 bd 68 ed ff ff 	mov    QWORD PTR [rbp-0x1298],r15
  7d07b1:	4c 8b 3d a8 d3 2e 00 	mov    r15,QWORD PTR [rip+0x2ed3a8]        # abdb60 <mod_biology_mp_akco2s2_>
  7d07b8:	4c 89 bd 58 ed ff ff 	mov    QWORD PTR [rbp-0x12a8],r15
  7d07bf:	4c 8b 3d 7a cc 2e 00 	mov    r15,QWORD PTR [rip+0x2ecc7a]        # abd440 <mod_biology_mp_gmaxs2_>
  7d07c6:	4c 89 bd 60 ee ff ff 	mov    QWORD PTR [rbp-0x11a0],r15
  7d07cd:	4c 8b 3d 4c cb 2e 00 	mov    r15,QWORD PTR [rip+0x2ecb4c]        # abd320 <mod_biology_mp_reg1_>
  7d07d4:	4c 89 bd 38 ee ff ff 	mov    QWORD PTR [rbp-0x11c8],r15
  7d07db:	4c 8b 3d 5e d5 2e 00 	mov    r15,QWORD PTR [rip+0x2ed55e]        # abdd40 <mod_biology_mp_bgamma0_>
  7d07e2:	4c 89 bd 20 ee ff ff 	mov    QWORD PTR [rbp-0x11e0],r15
  7d07e9:	4c 8b 3d f0 d7 2e 00 	mov    r15,QWORD PTR [rip+0x2ed7f0]        # abdfe0 <mod_biology_mp_bgamma7_>
  7d07f0:	4c 89 bd 10 ee ff ff 	mov    QWORD PTR [rbp-0x11f0],r15
  7d07f7:	4c 8b 3d 22 d7 2e 00 	mov    r15,QWORD PTR [rip+0x2ed722]        # abdf20 <mod_biology_mp_bgamma5_>
  7d07fe:	4c 89 bd 08 ee ff ff 	mov    QWORD PTR [rbp-0x11f8],r15
  7d0805:	4c 8b 3d 94 cc 2e 00 	mov    r15,QWORD PTR [rip+0x2ecc94]        # abd4a0 <mod_biology_mp_beta1_>
  7d080c:	4c 89 bd 00 ee ff ff 	mov    QWORD PTR [rbp-0x1200],r15
  7d0813:	4c 8b 3d 46 cd 2e 00 	mov    r15,QWORD PTR [rip+0x2ecd46]        # abd560 <mod_biology_mp_akz1_>
  7d081a:	4c 89 bd f0 ed ff ff 	mov    QWORD PTR [rbp-0x1210],r15
  7d0821:	4c 8b 3d 78 db 2e 00 	mov    r15,QWORD PTR [rip+0x2edb78]        # abe3a0 <mod_biology_mp_ro5_>
  7d0828:	4c 89 bd e8 ed ff ff 	mov    QWORD PTR [rbp-0x1218],r15
  7d082f:	4c 8b 3d ca db 2e 00 	mov    r15,QWORD PTR [rip+0x2edbca]        # abe400 <mod_biology_mp_ro6_>
  7d0836:	4c 89 bd e0 ed ff ff 	mov    QWORD PTR [rbp-0x1220],r15
  7d083d:	4c 8b 3d 1c dc 2e 00 	mov    r15,QWORD PTR [rip+0x2edc1c]        # abe460 <mod_biology_mp_ro7_>
  7d0844:	4c 89 bd d8 ed ff ff 	mov    QWORD PTR [rbp-0x1228],r15
  7d084b:	4c 8b 3d ae cc 2e 00 	mov    r15,QWORD PTR [rip+0x2eccae]        # abd500 <mod_biology_mp_beta2_>
  7d0852:	4c 89 bd b0 fa ff ff 	mov    QWORD PTR [rbp-0x550],r15
  7d0859:	4c 8b 3d 60 cd 2e 00 	mov    r15,QWORD PTR [rip+0x2ecd60]        # abd5c0 <mod_biology_mp_akz2_>
  7d0860:	4c 89 bd a8 fa ff ff 	mov    QWORD PTR [rbp-0x558],r15
  7d0867:	4c 8b 3d 32 d5 2e 00 	mov    r15,QWORD PTR [rip+0x2ed532]        # abdda0 <mod_biology_mp_bgamma1_>
  7d086e:	4c 8b 2d 2b d0 2e 00 	mov    r13,QWORD PTR [rip+0x2ed02b]        # abd8a0 <mod_biology_mp_pis2_+0x40>
  7d0875:	4c 89 bd d0 ed ff ff 	mov    QWORD PTR [rbp-0x1230],r15
  7d087c:	49 c1 e5 03          	shl    r13,0x3
  7d0880:	4c 8b 3d 79 d5 2e 00 	mov    r15,QWORD PTR [rip+0x2ed579]        # abde00 <mod_biology_mp_bgamma2_>
  7d0887:	49 f7 dd             	neg    r13
  7d088a:	4c 89 bd c8 ed ff ff 	mov    QWORD PTR [rbp-0x1238],r15
  7d0891:	4c 89 ad 80 ed ff ff 	mov    QWORD PTR [rbp-0x1280],r13
  7d0898:	4c 8b 3d 21 d9 2e 00 	mov    r15,QWORD PTR [rip+0x2ed921]        # abe1c0 <mod_biology_mp_si2n_>
  7d089f:	4c 8b 2d 7a d0 2e 00 	mov    r13,QWORD PTR [rip+0x2ed07a]        # abd920 <mod_biology_mp_akno3s2_>
  7d08a6:	4c 89 bd c0 ed ff ff 	mov    QWORD PTR [rbp-0x1240],r15
  7d08ad:	4c 89 ad 70 ed ff ff 	mov    QWORD PTR [rbp-0x1290],r13
  7d08b4:	4c 8b 3d 65 d9 2e 00 	mov    r15,QWORD PTR [rip+0x2ed965]        # abe220 <mod_biology_mp_p2n_>
  7d08bb:	4c 8b 2d de d1 2e 00 	mov    r13,QWORD PTR [rip+0x2ed1de]        # abdaa0 <mod_biology_mp_akpo4s2_>
  7d08c2:	4c 89 bd b8 ed ff ff 	mov    QWORD PTR [rbp-0x1248],r15
  7d08c9:	4c 89 ad 60 ed ff ff 	mov    QWORD PTR [rbp-0x12a0],r13
  7d08d0:	4c 8b 3d a9 d9 2e 00 	mov    r15,QWORD PTR [rip+0x2ed9a9]        # abe280 <mod_biology_mp_o2no_>
  7d08d7:	4c 8b 2d c2 ce 2e 00 	mov    r13,QWORD PTR [rip+0x2ecec2]        # abd7a0 <mod_biology_mp_parsats2_>
  7d08de:	4c 89 bd b0 ed ff ff 	mov    QWORD PTR [rbp-0x1250],r15
  7d08e5:	4c 8b 3d f4 d9 2e 00 	mov    r15,QWORD PTR [rip+0x2ed9f4]        # abe2e0 <mod_biology_mp_o2nh_>
  7d08ec:	4c 89 bd a8 ed ff ff 	mov    QWORD PTR [rbp-0x1258],r15
  7d08f3:	4f 8d 44 c5 00       	lea    r8,[r13+r8*8+0x0]
  7d08f8:	4c 8b 3d 41 da 2e 00 	mov    r15,QWORD PTR [rip+0x2eda41]        # abe340 <mod_biology_mp_c2n_>
  7d08ff:	4c 89 85 88 ed ff ff 	mov    QWORD PTR [rbp-0x1278],r8
  7d0906:	4c 8b 05 d3 ca 2e 00 	mov    r8,QWORD PTR [rip+0x2ecad3]        # abd3e0 <mod_biology_mp_gmaxs1_>
  7d090d:	4c 8b 2d cc ce 2e 00 	mov    r13,QWORD PTR [rip+0x2ececc]        # abd7e0 <mod_biology_mp_parsats2_+0x40>
  7d0914:	4c 89 bd a0 ed ff ff 	mov    QWORD PTR [rbp-0x1260],r15
  7d091b:	49 c1 e5 03          	shl    r13,0x3
  7d091f:	4c 8b 3d 9a db 2e 00 	mov    r15,QWORD PTR [rip+0x2edb9a]        # abe4c0 <mod_biology_mp_chl2cs1_m_>
  7d0926:	49 f7 dd             	neg    r13
  7d0929:	4c 89 85 68 ee ff ff 	mov    QWORD PTR [rbp-0x1198],r8
  7d0930:	4c 8b 05 89 d5 2e 00 	mov    r8,QWORD PTR [rip+0x2ed589]        # abdec0 <mod_biology_mp_bgamma4_>
  7d0937:	4c 89 bd 98 ed ff ff 	mov    QWORD PTR [rbp-0x1268],r15
  7d093e:	4c 89 ad 70 ee ff ff 	mov    QWORD PTR [rbp-0x1190],r13
  7d0945:	4c 8b 3d d4 db 2e 00 	mov    r15,QWORD PTR [rip+0x2edbd4]        # abe520 <mod_biology_mp_chl2cs2_m_>
  7d094c:	4c 8b 2d 0d d5 2e 00 	mov    r13,QWORD PTR [rip+0x2ed50d]        # abde60 <mod_biology_mp_bgamma3_>
  7d0953:	4c 89 85 48 ee ff ff 	mov    QWORD PTR [rbp-0x11b8],r8
  7d095a:	4c 8b 05 1f ca 2e 00 	mov    r8,QWORD PTR [rip+0x2eca1f]        # abd380 <mod_biology_mp_reg2_>
  7d0961:	4c 89 bd 90 ed ff ff 	mov    QWORD PTR [rbp-0x1270],r15
  7d0968:	4c 89 ad 58 ee ff ff 	mov    QWORD PTR [rbp-0x11a8],r13
  7d096f:	4c 8b 3d aa d2 2e 00 	mov    r15,QWORD PTR [rip+0x2ed2aa]        # abdc20 <mod_biology_mp_akox_>
  7d0976:	4c 63 2d e3 05 41 00 	movsxd r13,DWORD PTR [rip+0x4105e3]        # be0f60 <mod_biology_mp_iszoo_>
  7d097d:	4c 89 95 30 ea ff ff 	mov    QWORD PTR [rbp-0x15d0],r10
  7d0984:	4c 0f af e2          	imul   r12,rdx
  7d0988:	4c 0f af ea          	imul   r13,rdx
  7d098c:	4c 63 15 15 06 41 00 	movsxd r10,DWORD PTR [rip+0x410615]        # be0fa8 <mod_biology_mp_ichl2_>
  7d0993:	4c 89 85 28 ee ff ff 	mov    QWORD PTR [rbp-0x11d8],r8
  7d099a:	48 63 0d b7 05 41 00 	movsxd rcx,DWORD PTR [rip+0x4105b7]        # be0f58 <mod_biology_mp_ilphy_>
  7d09a1:	48 63 35 d0 05 41 00 	movsxd rsi,DWORD PTR [rip+0x4105d0]        # be0f78 <mod_biology_mp_iopal_>
  7d09a8:	4c 0f af d2          	imul   r10,rdx
  7d09ac:	48 0f af ca          	imul   rcx,rdx
  7d09b0:	48 0f af f2          	imul   rsi,rdx
  7d09b4:	48 63 3d dd 05 41 00 	movsxd rdi,DWORD PTR [rip+0x4105dd]        # be0f98 <mod_biology_mp_italk_>
  7d09bb:	4c 63 05 a6 05 41 00 	movsxd r8,DWORD PTR [rip+0x4105a6]        # be0f68 <mod_biology_mp_ilzoo_>
  7d09c2:	48 0f af fa          	imul   rdi,rdx
  7d09c6:	4c 0f af c2          	imul   r8,rdx
  7d09ca:	4c 89 bd c0 fa ff ff 	mov    QWORD PTR [rbp-0x540],r15
  7d09d1:	4e 8d 3c cd 00 00 00 	lea    r15,[r9*8+0x0]
  7d09d8:	00 
  7d09d9:	49 f7 df             	neg    r15
  7d09dc:	4c 03 fa             	add    r15,rdx
  7d09df:	4c 89 4d d0          	mov    QWORD PTR [rbp-0x30],r9
  7d09e3:	49 f7 df             	neg    r15
  7d09e6:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
  7d09ea:	49 2b c1             	sub    rax,r9
  7d09ed:	4c 8b 8d 30 eb ff ff 	mov    r9,QWORD PTR [rbp-0x14d0]
  7d09f4:	48 ff c0             	inc    rax
  7d09f7:	4d 2b ce             	sub    r9,r14
  7d09fa:	48 8b 55 80          	mov    rdx,QWORD PTR [rbp-0x80]
  7d09fe:	4c 03 fa             	add    r15,rdx
  7d0a01:	4c 2b ca             	sub    r9,rdx
  7d0a04:	4d 03 cf             	add    r9,r15
  7d0a07:	4d 03 d9             	add    r11,r9
  7d0a0a:	4d 03 e1             	add    r12,r9
  7d0a0d:	4c 89 9d b8 ee ff ff 	mov    QWORD PTR [rbp-0x1148],r11
  7d0a14:	4d 03 e9             	add    r13,r9
  7d0a17:	4c 8b 9d 28 ea ff ff 	mov    r11,QWORD PTR [rbp-0x15d8]
  7d0a1e:	4d 03 d1             	add    r10,r9
  7d0a21:	48 89 85 e0 fe ff ff 	mov    QWORD PTR [rbp-0x120],rax
  7d0a28:	49 03 f9             	add    rdi,r9
  7d0a2b:	83 e0 fc             	and    eax,0xfffffffc
  7d0a2e:	49 03 f1             	add    rsi,r9
  7d0a31:	4c 89 a5 a0 ee ff ff 	mov    QWORD PTR [rbp-0x1160],r12
  7d0a38:	4d 03 c1             	add    r8,r9
  7d0a3b:	4c 89 ad d8 ee ff ff 	mov    QWORD PTR [rbp-0x1128],r13
  7d0a42:	49 03 c9             	add    rcx,r9
  7d0a45:	4c 8b ad a8 ec ff ff 	mov    r13,QWORD PTR [rbp-0x1358]
  7d0a4c:	4c 8b a5 b0 ec ff ff 	mov    r12,QWORD PTR [rbp-0x1350]
  7d0a53:	4d 03 e9             	add    r13,r9
  7d0a56:	4c 89 95 c8 ee ff ff 	mov    QWORD PTR [rbp-0x1138],r10
  7d0a5d:	4d 03 e1             	add    r12,r9
  7d0a60:	4c 63 f0             	movsxd r14,eax
  7d0a63:	4f 8d 14 19          	lea    r10,[r9+r11*1]
  7d0a67:	4c 89 95 88 ee ff ff 	mov    QWORD PTR [rbp-0x1178],r10
  7d0a6e:	4c 8b 95 30 ea ff ff 	mov    r10,QWORD PTR [rbp-0x15d0]
  7d0a75:	4c 01 8d c0 ee ff ff 	add    QWORD PTR [rbp-0x1140],r9
  7d0a7c:	4c 01 8d d0 ee ff ff 	add    QWORD PTR [rbp-0x1130],r9
  7d0a83:	4c 01 8d a8 ee ff ff 	add    QWORD PTR [rbp-0x1158],r9
  7d0a8a:	4c 01 8d b0 ee ff ff 	add    QWORD PTR [rbp-0x1150],r9
  7d0a91:	4d 03 ca             	add    r9,r10
  7d0a94:	4c 89 8d 80 ee ff ff 	mov    QWORD PTR [rbp-0x1180],r9
  7d0a9b:	48 c7 85 d8 fe ff ff 	mov    QWORD PTR [rbp-0x128],0x0
  7d0aa2:	00 00 00 00 
  7d0aa6:	48 8b 95 b0 ea ff ff 	mov    rdx,QWORD PTR [rbp-0x1550]
  7d0aad:	4c 8b 4d d0          	mov    r9,QWORD PTR [rbp-0x30]
  7d0ab1:	4c 89 b5 b8 fb ff ff 	mov    QWORD PTR [rbp-0x448],r14
  7d0ab8:	4c 89 a5 b0 ec ff ff 	mov    QWORD PTR [rbp-0x1350],r12
  7d0abf:	4c 89 ad a8 ec ff ff 	mov    QWORD PTR [rbp-0x1358],r13
  7d0ac6:	48 89 8d a0 ec ff ff 	mov    QWORD PTR [rbp-0x1360],rcx
  7d0acd:	4c 89 85 98 ec ff ff 	mov    QWORD PTR [rbp-0x1368],r8
  7d0ad4:	48 89 b5 90 ec ff ff 	mov    QWORD PTR [rbp-0x1370],rsi
  7d0adb:	48 89 bd 88 ec ff ff 	mov    QWORD PTR [rbp-0x1378],rdi
  7d0ae2:	c5 fb 10 05 96 b6 07 	vmovsd xmm0,QWORD PTR [rip+0x7b696]        # 84c180 <__STRLITPACK_0.112+0x70>
  7d0ae9:	00 
  7d0aea:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  7d0aee:	48 3b 45 d0          	cmp    rax,QWORD PTR [rbp-0x30]
  7d0af2:	0f 8c 5c 21 00 00    	jl     7d2c54 <biology_mod_mp_biology_tile_+0x6c44>
  7d0af8:	48 83 bd e0 fe ff ff 	cmp    QWORD PTR [rbp-0x120],0x4
  7d0aff:	04 
  7d0b00:	0f 8c 7c 3f 00 00    	jl     7d4a82 <biology_mod_mp_biology_tile_+0x8a72>
  7d0b06:	4c 8b ad b8 fb ff ff 	mov    r13,QWORD PTR [rbp-0x448]
  7d0b0d:	4c 89 ad 88 ef ff ff 	mov    QWORD PTR [rbp-0x1078],r13
  7d0b14:	4c 8b 6d d8          	mov    r13,QWORD PTR [rbp-0x28]
  7d0b18:	4c 0f af ad d8 fe ff 	imul   r13,QWORD PTR [rbp-0x128]
  7d0b1f:	ff 
  7d0b20:	4c 8b a5 c8 ee ff ff 	mov    r12,QWORD PTR [rbp-0x1138]
  7d0b27:	4c 8b 9d 00 ed ff ff 	mov    r11,QWORD PTR [rbp-0x1300]
  7d0b2e:	48 8b 95 b8 ee ff ff 	mov    rdx,QWORD PTR [rbp-0x1148]
  7d0b35:	4c 8b b5 88 ec ff ff 	mov    r14,QWORD PTR [rbp-0x1378]
  7d0b3c:	4b 8d 0c 2c          	lea    rcx,[r12+r13*1]
  7d0b40:	48 89 8d b8 fe ff ff 	mov    QWORD PTR [rbp-0x148],rcx
  7d0b47:	4f 8d 14 2b          	lea    r10,[r11+r13*1]
  7d0b4b:	48 8b 8d c0 ee ff ff 	mov    rcx,QWORD PTR [rbp-0x1140]
  7d0b52:	4e 8d 1c 2a          	lea    r11,[rdx+r13*1]
  7d0b56:	48 8b 85 d0 ee ff ff 	mov    rax,QWORD PTR [rbp-0x1130]
  7d0b5d:	4c 8b 8d 10 ed ff ff 	mov    r9,QWORD PTR [rbp-0x12f0]
  7d0b64:	4c 8b bd 90 ec ff ff 	mov    r15,QWORD PTR [rbp-0x1370]
  7d0b6b:	4a 8d 14 29          	lea    rdx,[rcx+r13*1]
  7d0b6f:	48 89 95 c8 ec ff ff 	mov    QWORD PTR [rbp-0x1338],rdx
  7d0b76:	48 8b 95 b0 ee ff ff 	mov    rdx,QWORD PTR [rbp-0x1150]
  7d0b7d:	4f 8d 04 29          	lea    r8,[r9+r13*1]
  7d0b81:	4c 89 95 40 fe ff ff 	mov    QWORD PTR [rbp-0x1c0],r10
  7d0b88:	4f 8d 14 2e          	lea    r10,[r14+r13*1]
  7d0b8c:	48 8b bd 08 ed ff ff 	mov    rdi,QWORD PTR [rbp-0x12f8]
  7d0b93:	4e 8d 34 28          	lea    r14,[rax+r13*1]
  7d0b97:	4c 89 b5 e0 ec ff ff 	mov    QWORD PTR [rbp-0x1320],r14
  7d0b9e:	4a 8d 04 2a          	lea    rax,[rdx+r13*1]
  7d0ba2:	48 89 85 68 fe ff ff 	mov    QWORD PTR [rbp-0x198],rax
  7d0ba9:	4f 8d 0c 2f          	lea    r9,[r15+r13*1]
  7d0bad:	4c 8b bd a8 ee ff ff 	mov    r15,QWORD PTR [rbp-0x1158]
  7d0bb4:	4a 8d 34 2f          	lea    rsi,[rdi+r13*1]
  7d0bb8:	4c 8b b5 a8 ec ff ff 	mov    r14,QWORD PTR [rbp-0x1358]
  7d0bbf:	48 8b 85 88 ee ff ff 	mov    rax,QWORD PTR [rbp-0x1178]
  7d0bc6:	4c 89 85 90 fe ff ff 	mov    QWORD PTR [rbp-0x170],r8
  7d0bcd:	4b 8d 0c 2f          	lea    rcx,[r15+r13*1]
  7d0bd1:	48 89 8d 58 fe ff ff 	mov    QWORD PTR [rbp-0x1a8],rcx
  7d0bd8:	4b 8d 0c 2e          	lea    rcx,[r14+r13*1]
  7d0bdc:	4c 8b bd b0 ec ff ff 	mov    r15,QWORD PTR [rbp-0x1350]
  7d0be3:	4e 8d 34 28          	lea    r14,[rax+r13*1]
  7d0be7:	4c 89 b5 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],r14
  7d0bee:	48 8b 85 b8 fa ff ff 	mov    rax,QWORD PTR [rbp-0x548]
  7d0bf5:	4c 8b b5 30 ed ff ff 	mov    r14,QWORD PTR [rbp-0x12d0]
  7d0bfc:	4b 8d 14 2f          	lea    rdx,[r15+r13*1]
  7d0c00:	4c 8b bd 28 ed ff ff 	mov    r15,QWORD PTR [rbp-0x12d8]
  7d0c07:	48 89 b5 c8 fe ff ff 	mov    QWORD PTR [rbp-0x138],rsi
  7d0c0e:	c4 41 7b 5e 4c c6 f8 	vdivsd xmm9,xmm0,QWORD PTR [r14+rax*8-0x8]
  7d0c15:	c4 42 7d 19 74 c7 f8 	vbroadcastsd ymm14,QWORD PTR [r15+rax*8-0x8]
  7d0c1c:	c4 42 7d 19 d1       	vbroadcastsd ymm10,xmm9
  7d0c21:	c4 42 7d 19 6c c6 f8 	vbroadcastsd ymm13,QWORD PTR [r14+rax*8-0x8]
  7d0c28:	c4 41 7b 5e 64 c7 f8 	vdivsd xmm12,xmm0,QWORD PTR [r15+rax*8-0x8]
  7d0c2f:	4c 8b bd 20 ed ff ff 	mov    r15,QWORD PTR [rbp-0x12e0]
  7d0c36:	4c 8b b5 70 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1290]
  7d0c3d:	4c 8b 85 a0 ee ff ff 	mov    r8,QWORD PTR [rbp-0x1160]
  7d0c44:	c4 42 7d 19 4c c7 f8 	vbroadcastsd ymm9,QWORD PTR [r15+rax*8-0x8]
  7d0c4b:	c4 42 7d 19 5c c6 f8 	vbroadcastsd ymm11,QWORD PTR [r14+rax*8-0x8]
  7d0c52:	c4 42 7d 19 e4       	vbroadcastsd ymm12,xmm12
  7d0c57:	c4 c1 7b 5e 7c c6 f8 	vdivsd xmm7,xmm0,QWORD PTR [r14+rax*8-0x8]
  7d0c5e:	4c 8b bd 78 ed ff ff 	mov    r15,QWORD PTR [rbp-0x1288]
  7d0c65:	4d 03 c5             	add    r8,r13
  7d0c68:	4c 8b b5 68 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1298]
  7d0c6f:	48 8b bd 98 ec ff ff 	mov    rdi,QWORD PTR [rbp-0x1368]
  7d0c76:	c4 c1 7b 5e 64 c7 f8 	vdivsd xmm4,xmm0,QWORD PTR [r15+rax*8-0x8]
  7d0c7d:	c4 42 7d 19 44 c7 f8 	vbroadcastsd ymm8,QWORD PTR [r15+rax*8-0x8]
  7d0c84:	49 03 fd             	add    rdi,r13
  7d0c87:	c4 e2 7d 19 ec       	vbroadcastsd ymm5,xmm4
  7d0c8c:	c4 c2 7d 19 64 c6 f8 	vbroadcastsd ymm4,QWORD PTR [r14+rax*8-0x8]
  7d0c93:	c4 e2 7d 19 ff       	vbroadcastsd ymm7,xmm7
  7d0c98:	c5 7d 11 85 70 f0 ff 	vmovupd YMMWORD PTR [rbp-0xf90],ymm8
  7d0c9f:	ff 
  7d0ca0:	c5 fd 11 ad d0 f0 ff 	vmovupd YMMWORD PTR [rbp-0xf30],ymm5
  7d0ca7:	ff 
  7d0ca8:	c5 fd 11 a5 b0 f0 ff 	vmovupd YMMWORD PTR [rbp-0xf50],ymm4
  7d0caf:	ff 
  7d0cb0:	c5 fd 11 bd f0 f0 ff 	vmovupd YMMWORD PTR [rbp-0xf10],ymm7
  7d0cb7:	ff 
  7d0cb8:	c5 7d 11 9d 50 f0 ff 	vmovupd YMMWORD PTR [rbp-0xfb0],ymm11
  7d0cbf:	ff 
  7d0cc0:	c5 7d 11 8d 10 f1 ff 	vmovupd YMMWORD PTR [rbp-0xef0],ymm9
  7d0cc7:	ff 
  7d0cc8:	c5 7d 11 95 30 f1 ff 	vmovupd YMMWORD PTR [rbp-0xed0],ymm10
  7d0ccf:	ff 
  7d0cd0:	c5 7d 11 ad 30 f0 ff 	vmovupd YMMWORD PTR [rbp-0xfd0],ymm13
  7d0cd7:	ff 
  7d0cd8:	c5 7d 11 a5 50 f1 ff 	vmovupd YMMWORD PTR [rbp-0xeb0],ymm12
  7d0cdf:	ff 
  7d0ce0:	c5 7d 11 b5 10 f0 ff 	vmovupd YMMWORD PTR [rbp-0xff0],ymm14
  7d0ce7:	ff 
  7d0ce8:	4c 8b bd 60 ed ff ff 	mov    r15,QWORD PTR [rbp-0x12a0]
  7d0cef:	4c 8b b5 58 ed ff ff 	mov    r14,QWORD PTR [rbp-0x12a8]
  7d0cf6:	48 8b b5 d8 ee ff ff 	mov    rsi,QWORD PTR [rbp-0x1128]
  7d0cfd:	c4 c2 7d 19 74 c7 f8 	vbroadcastsd ymm6,QWORD PTR [r15+rax*8-0x8]
  7d0d04:	c4 c2 7d 19 5c c6 f8 	vbroadcastsd ymm3,QWORD PTR [r14+rax*8-0x8]
  7d0d0b:	c5 fd 11 b5 90 f0 ff 	vmovupd YMMWORD PTR [rbp-0xf70],ymm6
  7d0d12:	ff 
  7d0d13:	c5 fd 11 9d f0 f5 ff 	vmovupd YMMWORD PTR [rbp-0xa10],ymm3
  7d0d1a:	ff 
  7d0d1b:	4c 8b bd 68 ee ff ff 	mov    r15,QWORD PTR [rbp-0x1198]
  7d0d22:	49 03 f5             	add    rsi,r13
  7d0d25:	4c 8b b5 60 ee ff ff 	mov    r14,QWORD PTR [rbp-0x11a0]
  7d0d2c:	4c 8b a5 a0 ec ff ff 	mov    r12,QWORD PTR [rbp-0x1360]
  7d0d33:	c4 c2 7d 19 54 c7 f8 	vbroadcastsd ymm2,QWORD PTR [r15+rax*8-0x8]
  7d0d3a:	c4 c2 7d 19 4c c6 f8 	vbroadcastsd ymm1,QWORD PTR [r14+rax*8-0x8]
  7d0d41:	c5 fd 11 95 b0 f5 ff 	vmovupd YMMWORD PTR [rbp-0xa50],ymm2
  7d0d48:	ff 
  7d0d49:	c5 fd 11 8d 90 f5 ff 	vmovupd YMMWORD PTR [rbp-0xa70],ymm1
  7d0d50:	ff 
  7d0d51:	4c 8b bd 58 ee ff ff 	mov    r15,QWORD PTR [rbp-0x11a8]
  7d0d58:	4d 03 e5             	add    r12,r13
  7d0d5b:	4c 8b b5 48 ee ff ff 	mov    r14,QWORD PTR [rbp-0x11b8]
  7d0d62:	4c 03 ad 80 ee ff ff 	add    r13,QWORD PTR [rbp-0x1180]
  7d0d69:	c4 42 7d 19 7c c7 f8 	vbroadcastsd ymm15,QWORD PTR [r15+rax*8-0x8]
  7d0d70:	c4 c2 7d 19 5c c6 f8 	vbroadcastsd ymm3,QWORD PTR [r14+rax*8-0x8]
  7d0d77:	c5 7d 11 bd 70 f5 ff 	vmovupd YMMWORD PTR [rbp-0xa90],ymm15
  7d0d7e:	ff 
  7d0d7f:	c5 fd 11 9d 50 f5 ff 	vmovupd YMMWORD PTR [rbp-0xab0],ymm3
  7d0d86:	ff 
  7d0d87:	4c 8b bd 38 ee ff ff 	mov    r15,QWORD PTR [rbp-0x11c8]
  7d0d8e:	4c 8b b5 28 ee ff ff 	mov    r14,QWORD PTR [rbp-0x11d8]
  7d0d95:	48 c7 85 d0 ec ff ff 	mov    QWORD PTR [rbp-0x1330],0x0
  7d0d9c:	00 00 00 00 
  7d0da0:	c4 c2 7d 19 54 c7 f8 	vbroadcastsd ymm2,QWORD PTR [r15+rax*8-0x8]
  7d0da7:	c4 c2 7d 19 4c c6 f8 	vbroadcastsd ymm1,QWORD PTR [r14+rax*8-0x8]
  7d0dae:	c5 fd 11 95 30 f5 ff 	vmovupd YMMWORD PTR [rbp-0xad0],ymm2
  7d0db5:	ff 
  7d0db6:	c5 fd 11 8d 10 f5 ff 	vmovupd YMMWORD PTR [rbp-0xaf0],ymm1
  7d0dbd:	ff 
  7d0dbe:	4c 8b bd 20 ee ff ff 	mov    r15,QWORD PTR [rbp-0x11e0]
  7d0dc5:	4c 8b b5 10 ee ff ff 	mov    r14,QWORD PTR [rbp-0x11f0]
  7d0dcc:	4c 89 ad c8 fb ff ff 	mov    QWORD PTR [rbp-0x438],r13
  7d0dd3:	c4 42 7d 19 7c c7 f8 	vbroadcastsd ymm15,QWORD PTR [r15+rax*8-0x8]
  7d0dda:	c4 c2 7d 19 5c c6 f8 	vbroadcastsd ymm3,QWORD PTR [r14+rax*8-0x8]
  7d0de1:	c5 7d 11 bd f0 f4 ff 	vmovupd YMMWORD PTR [rbp-0xb10],ymm15
  7d0de8:	ff 
  7d0de9:	c5 fd 11 9d d0 f4 ff 	vmovupd YMMWORD PTR [rbp-0xb30],ymm3
  7d0df0:	ff 
  7d0df1:	4c 8b bd 00 ee ff ff 	mov    r15,QWORD PTR [rbp-0x1200]
  7d0df8:	4c 8b b5 f0 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1210]
  7d0dff:	4c 8b ad c8 ec ff ff 	mov    r13,QWORD PTR [rbp-0x1338]
  7d0e06:	c4 c2 7d 19 54 c7 f8 	vbroadcastsd ymm2,QWORD PTR [r15+rax*8-0x8]
  7d0e0d:	c4 c2 7d 19 4c c6 f8 	vbroadcastsd ymm1,QWORD PTR [r14+rax*8-0x8]
  7d0e14:	c5 fd 11 95 b0 eb ff 	vmovupd YMMWORD PTR [rbp-0x1450],ymm2
  7d0e1b:	ff 
  7d0e1c:	c5 fd 11 8d 90 eb ff 	vmovupd YMMWORD PTR [rbp-0x1470],ymm1
  7d0e23:	ff 
  7d0e24:	4c 8b b5 e0 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1220]
  7d0e2b:	4c 8b bd e8 ed ff ff 	mov    r15,QWORD PTR [rbp-0x1218]
  7d0e32:	48 89 95 10 fc ff ff 	mov    QWORD PTR [rbp-0x3f0],rdx
  7d0e39:	c4 c1 7b 10 54 c6 f8 	vmovsd xmm2,QWORD PTR [r14+rax*8-0x8]
  7d0e40:	c4 e2 7d 19 ca       	vbroadcastsd ymm1,xmm2
  7d0e45:	c4 c1 7b 10 5c c7 f8 	vmovsd xmm3,QWORD PTR [r15+rax*8-0x8]
  7d0e4c:	c5 fb 11 95 98 fa ff 	vmovsd QWORD PTR [rbp-0x568],xmm2
  7d0e53:	ff 
  7d0e54:	c5 fb 11 9d a0 fa ff 	vmovsd QWORD PTR [rbp-0x560],xmm3
  7d0e5b:	ff 
  7d0e5c:	4c 8b bd d8 ed ff ff 	mov    r15,QWORD PTR [rbp-0x1228]
  7d0e63:	c4 62 7d 19 fb       	vbroadcastsd ymm15,xmm3
  7d0e68:	c5 fd 11 8d f0 eb ff 	vmovupd YMMWORD PTR [rbp-0x1410],ymm1
  7d0e6f:	ff 
  7d0e70:	c4 c1 7b 10 4c c7 f8 	vmovsd xmm1,QWORD PTR [r15+rax*8-0x8]
  7d0e77:	c5 fb 11 8d 90 fa ff 	vmovsd QWORD PTR [rbp-0x570],xmm1
  7d0e7e:	ff 
  7d0e7f:	c5 7d 11 bd d0 eb ff 	vmovupd YMMWORD PTR [rbp-0x1430],ymm15
  7d0e86:	ff 
  7d0e87:	c4 62 7d 19 f9       	vbroadcastsd ymm15,xmm1
  7d0e8c:	4c 8b b5 d0 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1230]
  7d0e93:	c5 7d 11 bd 10 ec ff 	vmovupd YMMWORD PTR [rbp-0x13f0],ymm15
  7d0e9a:	ff 
  7d0e9b:	c4 42 7d 19 7c c6 f8 	vbroadcastsd ymm15,QWORD PTR [r14+rax*8-0x8]
  7d0ea2:	c5 7d 11 bd d0 f5 ff 	vmovupd YMMWORD PTR [rbp-0xa30],ymm15
  7d0ea9:	ff 
  7d0eaa:	c4 41 7b 5c 7c c6 f8 	vsubsd xmm15,xmm0,QWORD PTR [r14+rax*8-0x8]
  7d0eb1:	4c 8b bd c8 ed ff ff 	mov    r15,QWORD PTR [rbp-0x1238]
  7d0eb8:	c4 42 7d 19 ff       	vbroadcastsd ymm15,xmm15
  7d0ebd:	c5 7d 11 bd 30 f6 ff 	vmovupd YMMWORD PTR [rbp-0x9d0],ymm15
  7d0ec4:	ff 
  7d0ec5:	c4 42 7d 19 7c c7 f8 	vbroadcastsd ymm15,QWORD PTR [r15+rax*8-0x8]
  7d0ecc:	c5 7d 11 bd 10 f6 ff 	vmovupd YMMWORD PTR [rbp-0x9f0],ymm15
  7d0ed3:	ff 
  7d0ed4:	c4 41 7b 5c 7c c7 f8 	vsubsd xmm15,xmm0,QWORD PTR [r15+rax*8-0x8]
  7d0edb:	4c 8b b5 c0 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1240]
  7d0ee2:	c4 42 7d 19 ff       	vbroadcastsd ymm15,xmm15
  7d0ee7:	c5 7d 11 bd 50 f7 ff 	vmovupd YMMWORD PTR [rbp-0x8b0],ymm15
  7d0eee:	ff 
  7d0eef:	c4 42 7d 19 7c c6 f8 	vbroadcastsd ymm15,QWORD PTR [r14+rax*8-0x8]
  7d0ef6:	4c 8b bd b8 ed ff ff 	mov    r15,QWORD PTR [rbp-0x1248]
  7d0efd:	c5 7d 11 bd 30 f7 ff 	vmovupd YMMWORD PTR [rbp-0x8d0],ymm15
  7d0f04:	ff 
  7d0f05:	c4 42 7d 19 7c c7 f8 	vbroadcastsd ymm15,QWORD PTR [r15+rax*8-0x8]
  7d0f0c:	4c 8b b5 a8 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1258]
  7d0f13:	c5 7d 11 bd 10 f7 ff 	vmovupd YMMWORD PTR [rbp-0x8f0],ymm15
  7d0f1a:	ff 
  7d0f1b:	c4 42 7d 19 7c c6 f8 	vbroadcastsd ymm15,QWORD PTR [r14+rax*8-0x8]
  7d0f22:	4c 8b bd b0 ed ff ff 	mov    r15,QWORD PTR [rbp-0x1250]
  7d0f29:	c5 7d 11 bd f0 f6 ff 	vmovupd YMMWORD PTR [rbp-0x910],ymm15
  7d0f30:	ff 
  7d0f31:	c4 42 7d 19 7c c7 f8 	vbroadcastsd ymm15,QWORD PTR [r15+rax*8-0x8]
  7d0f38:	4c 8b b5 a0 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1260]
  7d0f3f:	c5 7d 11 bd d0 f6 ff 	vmovupd YMMWORD PTR [rbp-0x930],ymm15
  7d0f46:	ff 
  7d0f47:	c4 42 7d 19 7c c6 f8 	vbroadcastsd ymm15,QWORD PTR [r14+rax*8-0x8]
  7d0f4e:	4c 8b bd 98 ed ff ff 	mov    r15,QWORD PTR [rbp-0x1268]
  7d0f55:	c5 7d 11 bd b0 f6 ff 	vmovupd YMMWORD PTR [rbp-0x950],ymm15
  7d0f5c:	ff 
  7d0f5d:	c4 42 7d 19 7c c7 f8 	vbroadcastsd ymm15,QWORD PTR [r15+rax*8-0x8]
  7d0f64:	4c 8b b5 90 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1270]
  7d0f6b:	c5 7d 11 bd 90 f6 ff 	vmovupd YMMWORD PTR [rbp-0x970],ymm15
  7d0f72:	ff 
  7d0f73:	c4 42 7d 19 7c c6 f8 	vbroadcastsd ymm15,QWORD PTR [r14+rax*8-0x8]
  7d0f7a:	4c 8b b5 18 ed ff ff 	mov    r14,QWORD PTR [rbp-0x12e8]
  7d0f81:	4c 8b bd 38 ed ff ff 	mov    r15,QWORD PTR [rbp-0x12c8]
  7d0f88:	c5 7d 11 bd 70 f6 ff 	vmovupd YMMWORD PTR [rbp-0x990],ymm15
  7d0f8f:	ff 
  7d0f90:	c4 02 7d 19 3c 37    	vbroadcastsd ymm15,QWORD PTR [r15+r14*1]
  7d0f96:	4c 8b b5 40 ed ff ff 	mov    r14,QWORD PTR [rbp-0x12c0]
  7d0f9d:	4c 8b bd 48 ed ff ff 	mov    r15,QWORD PTR [rbp-0x12b8]
  7d0fa4:	c5 7d 11 bd 50 f6 ff 	vmovupd YMMWORD PTR [rbp-0x9b0],ymm15
  7d0fab:	ff 
  7d0fac:	c4 01 7b 5e 3c 37    	vdivsd xmm15,xmm0,QWORD PTR [r15+r14*1]
  7d0fb2:	4c 8b b5 50 ed ff ff 	mov    r14,QWORD PTR [rbp-0x12b0]
  7d0fb9:	c4 42 7d 19 ff       	vbroadcastsd ymm15,xmm15
  7d0fbe:	4c 8b bd 80 ed ff ff 	mov    r15,QWORD PTR [rbp-0x1280]
  7d0fc5:	c5 7d 11 bd 90 f7 ff 	vmovupd YMMWORD PTR [rbp-0x870],ymm15
  7d0fcc:	ff 
  7d0fcd:	c4 02 7d 19 3c 37    	vbroadcastsd ymm15,QWORD PTR [r15+r14*1]
  7d0fd3:	4c 8b b5 88 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1278]
  7d0fda:	4c 8b bd 70 ee ff ff 	mov    r15,QWORD PTR [rbp-0x1190]
  7d0fe1:	c5 7d 11 bd 70 f7 ff 	vmovupd YMMWORD PTR [rbp-0x890],ymm15
  7d0fe8:	ff 
  7d0fe9:	c4 01 7b 5e 3c 37    	vdivsd xmm15,xmm0,QWORD PTR [r15+r14*1]
  7d0fef:	4c 8b bd 08 ee ff ff 	mov    r15,QWORD PTR [rbp-0x11f8]
  7d0ff6:	c4 42 7d 19 ff       	vbroadcastsd ymm15,xmm15
  7d0ffb:	c5 7d 11 bd b0 f7 ff 	vmovupd YMMWORD PTR [rbp-0x850],ymm15
  7d1002:	ff 
  7d1003:	c5 7b 10 3d 55 be 07 	vmovsd xmm15,QWORD PTR [rip+0x7be55]        # 84ce60 <__STRLITPACK_0.112+0xd50>
  7d100a:	00 
  7d100b:	c4 41 03 59 7c c7 f8 	vmulsd xmm15,xmm15,QWORD PTR [r15+rax*8-0x8]
  7d1012:	48 89 8d e8 fb ff ff 	mov    QWORD PTR [rbp-0x418],rcx
  7d1019:	c4 42 7d 19 ff       	vbroadcastsd ymm15,xmm15
  7d101e:	c5 7d 11 bd d0 f7 ff 	vmovupd YMMWORD PTR [rbp-0x830],ymm15
  7d1025:	ff 
  7d1026:	c5 7b 10 3d 4a b7 07 	vmovsd xmm15,QWORD PTR [rip+0x7b74a]        # 84c778 <__STRLITPACK_0.112+0x668>
  7d102d:	00 
  7d102e:	c4 41 03 59 7c c7 f8 	vmulsd xmm15,xmm15,QWORD PTR [r15+rax*8-0x8]
  7d1035:	48 89 b5 f0 fb ff ff 	mov    QWORD PTR [rbp-0x410],rsi
  7d103c:	c4 42 7d 19 ff       	vbroadcastsd ymm15,xmm15
  7d1041:	c5 7d 11 bd 50 eb ff 	vmovupd YMMWORD PTR [rbp-0x14b0],ymm15
  7d1048:	ff 
  7d1049:	48 89 bd 08 fc ff ff 	mov    QWORD PTR [rbp-0x3f8],rdi
  7d1050:	4c 89 85 28 fc ff ff 	mov    QWORD PTR [rbp-0x3d8],r8
  7d1057:	4c 89 8d d8 fb ff ff 	mov    QWORD PTR [rbp-0x428],r9
  7d105e:	4c 89 95 d0 fb ff ff 	mov    QWORD PTR [rbp-0x430],r10
  7d1065:	4c 89 9d c0 fb ff ff 	mov    QWORD PTR [rbp-0x440],r11
  7d106c:	4c 8b bd e0 ec ff ff 	mov    r15,QWORD PTR [rbp-0x1320]
  7d1073:	4c 8b b5 d0 ec ff ff 	mov    r14,QWORD PTR [rbp-0x1330]
  7d107a:	48 8b 85 c8 fb ff ff 	mov    rax,QWORD PTR [rbp-0x438]
  7d1081:	c4 a1 7d 10 0c f0    	vmovupd ymm1,YMMWORD PTR [rax+r14*8]
  7d1087:	c5 f5 5c 15 91 a2 07 	vsubpd ymm2,ymm1,YMMWORD PTR [rip+0x7a291]        # 84b320 <var$630.126.450+0x1380>
  7d108e:	00 
  7d108f:	c5 fd 11 8d 10 f2 ff 	vmovupd YMMWORD PTR [rbp-0xdf0],ymm1
  7d1096:	ff 
  7d1097:	c5 ed 59 05 61 a2 07 	vmulpd ymm0,ymm2,YMMWORD PTR [rip+0x7a261]        # 84b300 <var$630.126.450+0x1360>
  7d109e:	00 
  7d109f:	c4 e3 7d 19 85 00 fa 	vextractf128 XMMWORD PTR [rbp-0x600],ymm0,0x1
  7d10a6:	ff ff 01 
  7d10a9:	c5 f8 28 c8          	vmovaps xmm1,xmm0
  7d10ad:	c5 f9 28 c1          	vmovapd xmm0,xmm1
  7d10b1:	c5 f8 77             	vzeroupper 
  7d10b4:	c5 f8 11 8d 40 fa ff 	vmovups XMMWORD PTR [rbp-0x5c0],xmm1
  7d10bb:	ff 
  7d10bc:	e8 ef e7 ce ff       	call   4bf8b0 <exp>
  7d10c1:	c5 f8 10 8d 40 fa ff 	vmovups xmm1,XMMWORD PTR [rbp-0x5c0]
  7d10c8:	ff 
  7d10c9:	c5 f8 10 95 00 fa ff 	vmovups xmm2,XMMWORD PTR [rbp-0x600]
  7d10d0:	ff 
  7d10d1:	c5 f9 70 c9 0e       	vpshufd xmm1,xmm1,0xe
  7d10d6:	c5 f9 70 da 0e       	vpshufd xmm3,xmm2,0xe
  7d10db:	c5 f9 11 85 30 fa ff 	vmovupd XMMWORD PTR [rbp-0x5d0],xmm0
  7d10e2:	ff 
  7d10e3:	c5 fb 11 95 20 fc ff 	vmovsd QWORD PTR [rbp-0x3e0],xmm2
  7d10ea:	ff 
  7d10eb:	c5 fa 7f 9d c0 f9 ff 	vmovdqu XMMWORD PTR [rbp-0x640],xmm3
  7d10f2:	ff 
  7d10f3:	c5 f9 28 c1          	vmovapd xmm0,xmm1
  7d10f7:	e8 b4 e7 ce ff       	call   4bf8b0 <exp>
  7d10fc:	c5 f9 10 8d 30 fa ff 	vmovupd xmm1,XMMWORD PTR [rbp-0x5d0]
  7d1103:	ff 
  7d1104:	c5 f1 14 d0          	vunpcklpd xmm2,xmm1,xmm0
  7d1108:	c5 f9 11 95 20 fa ff 	vmovupd XMMWORD PTR [rbp-0x5e0],xmm2
  7d110f:	ff 
  7d1110:	c5 fb 10 85 20 fc ff 	vmovsd xmm0,QWORD PTR [rbp-0x3e0]
  7d1117:	ff 
  7d1118:	e8 93 e7 ce ff       	call   4bf8b0 <exp>
  7d111d:	c5 f9 11 85 10 fa ff 	vmovupd XMMWORD PTR [rbp-0x5f0],xmm0
  7d1124:	ff 
  7d1125:	c5 fb 10 85 c0 f9 ff 	vmovsd xmm0,QWORD PTR [rbp-0x640]
  7d112c:	ff 
  7d112d:	e8 7e e7 ce ff       	call   4bf8b0 <exp>
  7d1132:	c5 f9 10 8d 10 fa ff 	vmovupd xmm1,XMMWORD PTR [rbp-0x5f0]
  7d1139:	ff 
  7d113a:	48 8b 85 a8 fe ff ff 	mov    rax,QWORD PTR [rbp-0x158]
  7d1141:	c5 f9 10 95 20 fa ff 	vmovupd xmm2,XMMWORD PTR [rbp-0x5e0]
  7d1148:	ff 
  7d1149:	c5 f1 14 d8          	vunpcklpd xmm3,xmm1,xmm0
  7d114d:	48 83 bd d8 fe ff ff 	cmp    QWORD PTR [rbp-0x128],0x0
  7d1154:	00 
  7d1155:	c4 e3 6d 18 e3 01    	vinsertf128 ymm4,ymm2,xmm3,0x1
  7d115b:	c5 fc 11 a5 b0 f4 ff 	vmovups YMMWORD PTR [rbp-0xb50],ymm4
  7d1162:	ff 
  7d1163:	c4 a1 7d 10 14 f0    	vmovupd ymm2,YMMWORD PTR [rax+r14*8]
  7d1169:	0f 8e fa 38 00 00    	jle    7d4a69 <biology_mod_mp_biology_tile_+0x8a59>
  7d116f:	48 8b 85 c0 fa ff ff 	mov    rax,QWORD PTR [rbp-0x540]
  7d1176:	48 8b 95 b8 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x548]
  7d117d:	c4 e2 7d 19 44 d0 f8 	vbroadcastsd ymm0,QWORD PTR [rax+rdx*8-0x8]
  7d1184:	c5 fd 58 ca          	vaddpd ymm1,ymm0,ymm2
  7d1188:	c5 ed 5e d1          	vdivpd ymm2,ymm2,ymm1
  7d118c:	c5 fd 11 95 70 f3 ff 	vmovupd YMMWORD PTR [rbp-0xc90],ymm2
  7d1193:	ff 
  7d1194:	48 8b 85 10 fc ff ff 	mov    rax,QWORD PTR [rbp-0x3f0]
  7d119b:	c4 a1 7d 10 0c f0    	vmovupd ymm1,YMMWORD PTR [rax+r14*8]
  7d11a1:	c5 f5 59 95 50 f6 ff 	vmulpd ymm2,ymm1,YMMWORD PTR [rbp-0x9b0]
  7d11a8:	ff 
  7d11a9:	c5 fd 11 8d 90 f4 ff 	vmovupd YMMWORD PTR [rbp-0xb70],ymm1
  7d11b0:	ff 
  7d11b1:	c5 ed 57 05 67 8f 07 	vxorpd ymm0,ymm2,YMMWORD PTR [rip+0x78f67]        # 84a120 <var$630.126.450+0x180>
  7d11b8:	00 
  7d11b9:	c4 e3 7d 19 85 70 f9 	vextractf128 XMMWORD PTR [rbp-0x690],ymm0,0x1
  7d11c0:	ff ff 01 
  7d11c3:	c5 f8 28 c8          	vmovaps xmm1,xmm0
  7d11c7:	c5 f9 28 c1          	vmovapd xmm0,xmm1
  7d11cb:	c5 f8 77             	vzeroupper 
  7d11ce:	c5 f8 11 8d 50 fa ff 	vmovups XMMWORD PTR [rbp-0x5b0],xmm1
  7d11d5:	ff 
  7d11d6:	e8 d5 e6 ce ff       	call   4bf8b0 <exp>
  7d11db:	c5 f8 10 8d 50 fa ff 	vmovups xmm1,XMMWORD PTR [rbp-0x5b0]
  7d11e2:	ff 
  7d11e3:	c5 f8 10 95 70 f9 ff 	vmovups xmm2,XMMWORD PTR [rbp-0x690]
  7d11ea:	ff 
  7d11eb:	c5 f9 70 c9 0e       	vpshufd xmm1,xmm1,0xe
  7d11f0:	c5 f9 70 da 0e       	vpshufd xmm3,xmm2,0xe
  7d11f5:	c5 f9 11 85 f0 f9 ff 	vmovupd XMMWORD PTR [rbp-0x610],xmm0
  7d11fc:	ff 
  7d11fd:	c5 fb 11 95 18 fc ff 	vmovsd QWORD PTR [rbp-0x3e8],xmm2
  7d1204:	ff 
  7d1205:	c5 fa 7f 9d 20 f9 ff 	vmovdqu XMMWORD PTR [rbp-0x6e0],xmm3
  7d120c:	ff 
  7d120d:	c5 f9 28 c1          	vmovapd xmm0,xmm1
  7d1211:	e8 9a e6 ce ff       	call   4bf8b0 <exp>
  7d1216:	c5 f9 10 8d f0 f9 ff 	vmovupd xmm1,XMMWORD PTR [rbp-0x610]
  7d121d:	ff 
  7d121e:	c5 f1 14 d0          	vunpcklpd xmm2,xmm1,xmm0
  7d1222:	c5 f9 11 95 90 f9 ff 	vmovupd XMMWORD PTR [rbp-0x670],xmm2
  7d1229:	ff 
  7d122a:	c5 fb 10 85 18 fc ff 	vmovsd xmm0,QWORD PTR [rbp-0x3e8]
  7d1231:	ff 
  7d1232:	e8 79 e6 ce ff       	call   4bf8b0 <exp>
  7d1237:	c5 f9 11 85 e0 f9 ff 	vmovupd XMMWORD PTR [rbp-0x620],xmm0
  7d123e:	ff 
  7d123f:	c5 fb 10 85 20 f9 ff 	vmovsd xmm0,QWORD PTR [rbp-0x6e0]
  7d1246:	ff 
  7d1247:	e8 64 e6 ce ff       	call   4bf8b0 <exp>
  7d124c:	48 8b 85 e8 fb ff ff 	mov    rax,QWORD PTR [rbp-0x418]
  7d1253:	c5 7d 10 b5 90 f4 ff 	vmovupd ymm14,YMMWORD PTR [rbp-0xb70]
  7d125a:	ff 
  7d125b:	c5 f9 10 8d e0 f9 ff 	vmovupd xmm1,XMMWORD PTR [rbp-0x620]
  7d1262:	ff 
  7d1263:	c5 f9 10 95 90 f9 ff 	vmovupd xmm2,XMMWORD PTR [rbp-0x670]
  7d126a:	ff 
  7d126b:	c5 f1 14 d8          	vunpcklpd xmm3,xmm1,xmm0
  7d126f:	c4 21 7d 10 0c f0    	vmovupd ymm9,YMMWORD PTR [rax+r14*8]
  7d1275:	c5 8d 59 a5 30 f1 ff 	vmulpd ymm4,ymm14,YMMWORD PTR [rbp-0xed0]
  7d127c:	ff 
  7d127d:	c5 b5 59 ad 50 f1 ff 	vmulpd ymm5,ymm9,YMMWORD PTR [rbp-0xeb0]
  7d1284:	ff 
  7d1285:	c5 7d 11 8d 70 f1 ff 	vmovupd YMMWORD PTR [rbp-0xe90],ymm9
  7d128c:	ff 
  7d128d:	c5 dd 58 35 cb 8d 07 	vaddpd ymm6,ymm4,YMMWORD PTR [rip+0x78dcb]        # 84a060 <var$630.126.450+0xc0>
  7d1294:	00 
  7d1295:	48 8b 95 68 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x198]
  7d129c:	48 8b 8d 90 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x170]
  7d12a3:	48 8b b5 c8 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x138]
  7d12aa:	c4 a1 7d 10 0c f2    	vmovupd ymm1,YMMWORD PTR [rdx+r14*8]
  7d12b0:	c4 a1 7d 10 24 f1    	vmovupd ymm4,YMMWORD PTR [rcx+r14*8]
  7d12b6:	c5 fd 11 8d 50 f3 ff 	vmovupd YMMWORD PTR [rbp-0xcb0],ymm1
  7d12bd:	ff 
  7d12be:	c5 fd 11 a5 f0 f2 ff 	vmovupd YMMWORD PTR [rbp-0xd10],ymm4
  7d12c5:	ff 
  7d12c6:	c4 63 6d 18 c3 01    	vinsertf128 ymm8,ymm2,xmm3,0x1
  7d12cc:	c5 bd 59 fd          	vmulpd ymm7,ymm8,ymm5
  7d12d0:	c4 41 3d 59 d1       	vmulpd ymm10,ymm8,ymm9
  7d12d5:	c5 dd 59 ad 90 f7 ff 	vmulpd ymm5,ymm4,YMMWORD PTR [rbp-0x870]
  7d12dc:	ff 
  7d12dd:	c5 4d 58 ef          	vaddpd ymm13,ymm6,ymm7
  7d12e1:	c5 f5 58 95 10 f1 ff 	vaddpd ymm2,ymm1,YMMWORD PTR [rbp-0xef0]
  7d12e8:	ff 
  7d12e9:	c4 a1 7d 10 34 f6    	vmovupd ymm6,YMMWORD PTR [rsi+r14*8]
  7d12ef:	c5 15 59 bd 30 f0 ff 	vmulpd ymm15,ymm13,YMMWORD PTR [rbp-0xfd0]
  7d12f6:	ff 
  7d12f7:	c5 15 59 9d 10 f0 ff 	vmulpd ymm11,ymm13,YMMWORD PTR [rbp-0xff0]
  7d12fe:	ff 
  7d12ff:	c5 f5 5e da          	vdivpd ymm3,ymm1,ymm2
  7d1303:	c4 c1 0d 5e c7       	vdivpd ymm0,ymm14,ymm15
  7d1308:	c4 41 2d 5e e3       	vdivpd ymm12,ymm10,ymm11
  7d130d:	c5 d5 59 fe          	vmulpd ymm7,ymm5,ymm6
  7d1311:	c5 fd 11 9d 90 f3 ff 	vmovupd YMMWORD PTR [rbp-0xc70],ymm3
  7d1318:	ff 
  7d1319:	c5 fd 11 b5 10 f3 ff 	vmovupd YMMWORD PTR [rbp-0xcf0],ymm6
  7d1320:	ff 
  7d1321:	c5 fd 11 85 f0 f3 ff 	vmovupd YMMWORD PTR [rbp-0xc10],ymm0
  7d1328:	ff 
  7d1329:	c5 7d 11 a5 50 f4 ff 	vmovupd YMMWORD PTR [rbp-0xbb0],ymm12
  7d1330:	ff 
  7d1331:	c5 c5 57 05 e7 8d 07 	vxorpd ymm0,ymm7,YMMWORD PTR [rip+0x78de7]        # 84a120 <var$630.126.450+0x180>
  7d1338:	00 
  7d1339:	c4 e3 7d 19 85 30 f9 	vextractf128 XMMWORD PTR [rbp-0x6d0],ymm0,0x1
  7d1340:	ff ff 01 
  7d1343:	c5 f8 28 c8          	vmovaps xmm1,xmm0
  7d1347:	c5 f9 28 c1          	vmovapd xmm0,xmm1
  7d134b:	c5 f8 77             	vzeroupper 
  7d134e:	c5 f8 11 8d 60 fa ff 	vmovups XMMWORD PTR [rbp-0x5a0],xmm1
  7d1355:	ff 
  7d1356:	e8 55 e5 ce ff       	call   4bf8b0 <exp>
  7d135b:	c5 f8 10 8d 60 fa ff 	vmovups xmm1,XMMWORD PTR [rbp-0x5a0]
  7d1362:	ff 
  7d1363:	c5 f8 10 95 30 f9 ff 	vmovups xmm2,XMMWORD PTR [rbp-0x6d0]
  7d136a:	ff 
  7d136b:	c5 f9 70 c9 0e       	vpshufd xmm1,xmm1,0xe
  7d1370:	c5 f9 70 da 0e       	vpshufd xmm3,xmm2,0xe
  7d1375:	c5 f9 11 85 a0 f9 ff 	vmovupd XMMWORD PTR [rbp-0x660],xmm0
  7d137c:	ff 
  7d137d:	c5 fb 11 95 00 fc ff 	vmovsd QWORD PTR [rbp-0x400],xmm2
  7d1384:	ff 
  7d1385:	c5 fa 7f 9d d0 f8 ff 	vmovdqu XMMWORD PTR [rbp-0x730],xmm3
  7d138c:	ff 
  7d138d:	c5 f9 28 c1          	vmovapd xmm0,xmm1
  7d1391:	e8 1a e5 ce ff       	call   4bf8b0 <exp>
  7d1396:	c5 f9 10 8d a0 f9 ff 	vmovupd xmm1,XMMWORD PTR [rbp-0x660]
  7d139d:	ff 
  7d139e:	c5 f1 14 d0          	vunpcklpd xmm2,xmm1,xmm0
  7d13a2:	c5 f9 11 95 50 f9 ff 	vmovupd XMMWORD PTR [rbp-0x6b0],xmm2
  7d13a9:	ff 
  7d13aa:	c5 fb 10 85 00 fc ff 	vmovsd xmm0,QWORD PTR [rbp-0x400]
  7d13b1:	ff 
  7d13b2:	e8 f9 e4 ce ff       	call   4bf8b0 <exp>
  7d13b7:	c5 f9 11 85 b0 f9 ff 	vmovupd XMMWORD PTR [rbp-0x650],xmm0
  7d13be:	ff 
  7d13bf:	c5 fb 10 85 d0 f8 ff 	vmovsd xmm0,QWORD PTR [rbp-0x730]
  7d13c6:	ff 
  7d13c7:	e8 e4 e4 ce ff       	call   4bf8b0 <exp>
  7d13cc:	c5 fd 10 25 8c 8c 07 	vmovupd ymm4,YMMWORD PTR [rip+0x78c8c]        # 84a060 <var$630.126.450+0xc0>
  7d13d3:	00 
  7d13d4:	c5 f9 10 8d b0 f9 ff 	vmovupd xmm1,XMMWORD PTR [rbp-0x650]
  7d13db:	ff 
  7d13dc:	c5 f9 10 95 50 f9 ff 	vmovupd xmm2,XMMWORD PTR [rbp-0x6b0]
  7d13e3:	ff 
  7d13e4:	c5 f1 14 d8          	vunpcklpd xmm3,xmm1,xmm0
  7d13e8:	c5 7d 10 9d 50 f4 ff 	vmovupd ymm11,YMMWORD PTR [rbp-0xbb0]
  7d13ef:	ff 
  7d13f0:	c5 7d 10 a5 f0 f3 ff 	vmovupd ymm12,YMMWORD PTR [rbp-0xc10]
  7d13f7:	ff 
  7d13f8:	c5 fd 10 8d 90 f4 ff 	vmovupd ymm1,YMMWORD PTR [rbp-0xb70]
  7d13ff:	ff 
  7d1400:	c5 25 58 05 58 9f 07 	vaddpd ymm8,ymm11,YMMWORD PTR [rip+0x79f58]        # 84b360 <var$630.126.450+0x13c0>
  7d1407:	00 
  7d1408:	c4 41 25 58 ec       	vaddpd ymm13,ymm11,ymm12
  7d140d:	c4 41 1d 58 d0       	vaddpd ymm10,ymm12,ymm8
  7d1412:	c5 15 5d bd 90 f3 ff 	vminpd ymm15,ymm13,YMMWORD PTR [rbp-0xc70]
  7d1419:	ff 
  7d141a:	48 8b 85 40 fe ff ff 	mov    rax,QWORD PTR [rbp-0x1c0]
  7d1421:	c4 a1 7d 10 34 f0    	vmovupd ymm6,YMMWORD PTR [rax+r14*8]
  7d1427:	c4 e3 6d 18 eb 01    	vinsertf128 ymm5,ymm2,xmm3,0x1
  7d142d:	c5 dd 5c fd          	vsubpd ymm7,ymm4,ymm5
  7d1431:	c5 f5 59 95 70 f7 ff 	vmulpd ymm2,ymm1,YMMWORD PTR [rbp-0x890]
  7d1438:	ff 
  7d1439:	c5 fd 11 b5 b0 f2 ff 	vmovupd YMMWORD PTR [rbp-0xd50],ymm6
  7d1440:	ff 
  7d1441:	c5 4d 59 cf          	vmulpd ymm9,ymm6,ymm7
  7d1445:	c4 41 35 5e f2       	vdivpd ymm14,ymm9,ymm10
  7d144a:	c4 c1 0d 59 c7       	vmulpd ymm0,ymm14,ymm15
  7d144f:	c5 fd 11 85 10 f4 ff 	vmovupd YMMWORD PTR [rbp-0xbf0],ymm0
  7d1456:	ff 
  7d1457:	c5 ed 57 05 c1 8c 07 	vxorpd ymm0,ymm2,YMMWORD PTR [rip+0x78cc1]        # 84a120 <var$630.126.450+0x180>
  7d145e:	00 
  7d145f:	c4 e3 7d 19 85 40 f9 	vextractf128 XMMWORD PTR [rbp-0x6c0],ymm0,0x1
  7d1466:	ff ff 01 
  7d1469:	c5 f8 28 c8          	vmovaps xmm1,xmm0
  7d146d:	c5 f9 28 c1          	vmovapd xmm0,xmm1
  7d1471:	c5 f8 77             	vzeroupper 
  7d1474:	c5 f8 11 8d 70 fa ff 	vmovups XMMWORD PTR [rbp-0x590],xmm1
  7d147b:	ff 
  7d147c:	e8 2f e4 ce ff       	call   4bf8b0 <exp>
  7d1481:	c5 f8 10 8d 70 fa ff 	vmovups xmm1,XMMWORD PTR [rbp-0x590]
  7d1488:	ff 
  7d1489:	c5 f8 10 95 40 f9 ff 	vmovups xmm2,XMMWORD PTR [rbp-0x6c0]
  7d1490:	ff 
  7d1491:	c5 f9 70 c9 0e       	vpshufd xmm1,xmm1,0xe
  7d1496:	c5 f9 70 da 0e       	vpshufd xmm3,xmm2,0xe
  7d149b:	c5 f9 11 85 80 f9 ff 	vmovupd XMMWORD PTR [rbp-0x680],xmm0
  7d14a2:	ff 
  7d14a3:	c5 fb 11 95 f8 fb ff 	vmovsd QWORD PTR [rbp-0x408],xmm2
  7d14aa:	ff 
  7d14ab:	c5 fa 7f 9d f0 f8 ff 	vmovdqu XMMWORD PTR [rbp-0x710],xmm3
  7d14b2:	ff 
  7d14b3:	c5 f9 28 c1          	vmovapd xmm0,xmm1
  7d14b7:	e8 f4 e3 ce ff       	call   4bf8b0 <exp>
  7d14bc:	c5 f9 10 8d 80 f9 ff 	vmovupd xmm1,XMMWORD PTR [rbp-0x680]
  7d14c3:	ff 
  7d14c4:	c5 f1 14 d0          	vunpcklpd xmm2,xmm1,xmm0
  7d14c8:	c5 f9 11 95 60 f9 ff 	vmovupd XMMWORD PTR [rbp-0x6a0],xmm2
  7d14cf:	ff 
  7d14d0:	c5 fb 10 85 f8 fb ff 	vmovsd xmm0,QWORD PTR [rbp-0x408]
  7d14d7:	ff 
  7d14d8:	e8 d3 e3 ce ff       	call   4bf8b0 <exp>
  7d14dd:	c5 f9 11 85 d0 f9 ff 	vmovupd XMMWORD PTR [rbp-0x630],xmm0
  7d14e4:	ff 
  7d14e5:	c5 fb 10 85 f0 f8 ff 	vmovsd xmm0,QWORD PTR [rbp-0x710]
  7d14ec:	ff 
  7d14ed:	e8 be e3 ce ff       	call   4bf8b0 <exp>
  7d14f2:	c5 7d 10 a5 70 f1 ff 	vmovupd ymm12,YMMWORD PTR [rbp-0xe90]
  7d14f9:	ff 
  7d14fa:	c5 f9 10 8d d0 f9 ff 	vmovupd xmm1,XMMWORD PTR [rbp-0x630]
  7d1501:	ff 
  7d1502:	c5 f1 14 d8          	vunpcklpd xmm3,xmm1,xmm0
  7d1506:	c5 f9 10 95 60 f9 ff 	vmovupd xmm2,XMMWORD PTR [rbp-0x6a0]
  7d150d:	ff 
  7d150e:	c5 fd 10 8d 90 f4 ff 	vmovupd ymm1,YMMWORD PTR [rbp-0xb70]
  7d1515:	ff 
  7d1516:	c5 1d 59 85 f0 f0 ff 	vmulpd ymm8,ymm12,YMMWORD PTR [rbp-0xf10]
  7d151d:	ff 
  7d151e:	c5 fd 10 a5 f0 f2 ff 	vmovupd ymm4,YMMWORD PTR [rbp-0xd10]
  7d1525:	ff 
  7d1526:	c5 f5 59 bd d0 f0 ff 	vmulpd ymm7,ymm1,YMMWORD PTR [rbp-0xf30]
  7d152d:	ff 
  7d152e:	c5 dd 59 ad b0 f7 ff 	vmulpd ymm5,ymm4,YMMWORD PTR [rbp-0x850]
  7d1535:	ff 
  7d1536:	c5 45 58 0d 22 8b 07 	vaddpd ymm9,ymm7,YMMWORD PTR [rip+0x78b22]        # 84a060 <var$630.126.450+0xc0>
  7d153d:	00 
  7d153e:	c5 d5 59 b5 10 f3 ff 	vmulpd ymm6,ymm5,YMMWORD PTR [rbp-0xcf0]
  7d1545:	ff 
  7d1546:	48 8b 85 58 fe ff ff 	mov    rax,QWORD PTR [rbp-0x1a8]
  7d154d:	c5 cd 57 05 cb 8b 07 	vxorpd ymm0,ymm6,YMMWORD PTR [rip+0x78bcb]        # 84a120 <var$630.126.450+0x180>
  7d1554:	00 
  7d1555:	c4 e3 7d 19 85 c0 f8 	vextractf128 XMMWORD PTR [rbp-0x740],ymm0,0x1
  7d155c:	ff ff 01 
  7d155f:	c4 a1 7d 10 24 f0    	vmovupd ymm4,YMMWORD PTR [rax+r14*8]
  7d1565:	c5 dd 58 ad b0 f0 ff 	vaddpd ymm5,ymm4,YMMWORD PTR [rbp-0xf50]
  7d156c:	ff 
  7d156d:	c5 dd 5e f5          	vdivpd ymm6,ymm4,ymm5
  7d1571:	c5 fd 11 b5 d0 f3 ff 	vmovupd YMMWORD PTR [rbp-0xc30],ymm6
  7d1578:	ff 
  7d1579:	c4 63 6d 18 db 01    	vinsertf128 ymm11,ymm2,xmm3,0x1
  7d157f:	c4 41 25 59 d0       	vmulpd ymm10,ymm11,ymm8
  7d1584:	c4 41 25 59 ec       	vmulpd ymm13,ymm11,ymm12
  7d1589:	c5 7d 10 85 50 f3 ff 	vmovupd ymm8,YMMWORD PTR [rbp-0xcb0]
  7d1590:	ff 
  7d1591:	c4 01 7d 10 1c f7    	vmovupd ymm11,YMMWORD PTR [r15+r14*8]
  7d1597:	c4 c1 35 58 fa       	vaddpd ymm7,ymm9,ymm10
  7d159c:	c5 3d 58 8d 90 f0 ff 	vaddpd ymm9,ymm8,YMMWORD PTR [rbp-0xf70]
  7d15a3:	ff 
  7d15a4:	c5 25 58 a5 f0 f5 ff 	vaddpd ymm12,ymm11,YMMWORD PTR [rbp-0xa10]
  7d15ab:	ff 
  7d15ac:	c5 45 59 b5 50 f0 ff 	vmulpd ymm14,ymm7,YMMWORD PTR [rbp-0xfb0]
  7d15b3:	ff 
  7d15b4:	c5 c5 59 95 70 f0 ff 	vmulpd ymm2,ymm7,YMMWORD PTR [rbp-0xf90]
  7d15bb:	ff 
  7d15bc:	c4 41 3d 5e d1       	vdivpd ymm10,ymm8,ymm9
  7d15c1:	c4 41 15 5e fe       	vdivpd ymm15,ymm13,ymm14
  7d15c6:	c5 f5 5e da          	vdivpd ymm3,ymm1,ymm2
  7d15ca:	c4 41 25 5e ec       	vdivpd ymm13,ymm11,ymm12
  7d15cf:	c5 7d 11 95 b0 f3 ff 	vmovupd YMMWORD PTR [rbp-0xc50],ymm10
  7d15d6:	ff 
  7d15d7:	c5 7d 11 bd 70 f4 ff 	vmovupd YMMWORD PTR [rbp-0xb90],ymm15
  7d15de:	ff 
  7d15df:	c5 fd 11 9d 30 f4 ff 	vmovupd YMMWORD PTR [rbp-0xbd0],ymm3
  7d15e6:	ff 
  7d15e7:	c5 7d 11 ad 30 f3 ff 	vmovupd YMMWORD PTR [rbp-0xcd0],ymm13
  7d15ee:	ff 
  7d15ef:	c5 f8 28 c8          	vmovaps xmm1,xmm0
  7d15f3:	c5 f9 28 c1          	vmovapd xmm0,xmm1
  7d15f7:	c5 f8 77             	vzeroupper 
  7d15fa:	c5 f8 11 8d 80 fa ff 	vmovups XMMWORD PTR [rbp-0x580],xmm1
  7d1601:	ff 
  7d1602:	e8 a9 e2 ce ff       	call   4bf8b0 <exp>
  7d1607:	c5 f8 10 8d 80 fa ff 	vmovups xmm1,XMMWORD PTR [rbp-0x580]
  7d160e:	ff 
  7d160f:	c5 f8 10 95 c0 f8 ff 	vmovups xmm2,XMMWORD PTR [rbp-0x740]
  7d1616:	ff 
  7d1617:	c5 f9 70 c9 0e       	vpshufd xmm1,xmm1,0xe
  7d161c:	c5 f9 70 da 0e       	vpshufd xmm3,xmm2,0xe
  7d1621:	c5 f9 11 85 10 f9 ff 	vmovupd XMMWORD PTR [rbp-0x6f0],xmm0
  7d1628:	ff 
  7d1629:	c5 fb 11 95 e0 fb ff 	vmovsd QWORD PTR [rbp-0x420],xmm2
  7d1630:	ff 
  7d1631:	c5 fa 7f 9d b0 f8 ff 	vmovdqu XMMWORD PTR [rbp-0x750],xmm3
  7d1638:	ff 
  7d1639:	c5 f9 28 c1          	vmovapd xmm0,xmm1
  7d163d:	e8 6e e2 ce ff       	call   4bf8b0 <exp>
  7d1642:	c5 f9 10 8d 10 f9 ff 	vmovupd xmm1,XMMWORD PTR [rbp-0x6f0]
  7d1649:	ff 
  7d164a:	c5 f1 14 d0          	vunpcklpd xmm2,xmm1,xmm0
  7d164e:	c5 f9 11 95 e0 f8 ff 	vmovupd XMMWORD PTR [rbp-0x720],xmm2
  7d1655:	ff 
  7d1656:	c5 fb 10 85 e0 fb ff 	vmovsd xmm0,QWORD PTR [rbp-0x420]
  7d165d:	ff 
  7d165e:	e8 4d e2 ce ff       	call   4bf8b0 <exp>
  7d1663:	c5 f9 11 85 00 f9 ff 	vmovupd XMMWORD PTR [rbp-0x700],xmm0
  7d166a:	ff 
  7d166b:	c5 fb 10 85 b0 f8 ff 	vmovsd xmm0,QWORD PTR [rbp-0x750]
  7d1672:	ff 
  7d1673:	e8 38 e2 ce ff       	call   4bf8b0 <exp>
  7d1678:	c5 fd 10 15 e0 89 07 	vmovupd ymm2,YMMWORD PTR [rip+0x789e0]        # 84a060 <var$630.126.450+0xc0>
  7d167f:	00 
  7d1680:	c5 79 10 9d 00 f9 ff 	vmovupd xmm11,XMMWORD PTR [rbp-0x700]
  7d1687:	ff 
  7d1688:	c5 79 10 95 e0 f8 ff 	vmovupd xmm10,XMMWORD PTR [rbp-0x720]
  7d168f:	ff 
  7d1690:	c5 a1 14 c8          	vunpcklpd xmm1,xmm11,xmm0
  7d1694:	c5 7d 10 b5 b0 f3 ff 	vmovupd ymm14,YMMWORD PTR [rbp-0xc50]
  7d169b:	ff 
  7d169c:	c5 fd 10 ad d0 f3 ff 	vmovupd ymm5,YMMWORD PTR [rbp-0xc30]
  7d16a3:	ff 
  7d16a4:	c5 7d 10 ad b0 f5 ff 	vmovupd ymm13,YMMWORD PTR [rbp-0xa50]
  7d16ab:	ff 
  7d16ac:	c5 7d 10 bd 10 f4 ff 	vmovupd ymm15,YMMWORD PTR [rbp-0xbf0]
  7d16b3:	ff 
  7d16b4:	c5 0d 5d 85 30 f3 ff 	vminpd ymm8,ymm14,YMMWORD PTR [rbp-0xcd0]
  7d16bb:	ff 
  7d16bc:	c5 15 59 8d 50 f4 ff 	vmulpd ymm9,ymm13,YMMWORD PTR [rbp-0xbb0]
  7d16c3:	ff 
  7d16c4:	c5 95 59 bd f0 f3 ff 	vmulpd ymm7,ymm13,YMMWORD PTR [rbp-0xc10]
  7d16cb:	ff 
  7d16cc:	c5 7d 10 b5 90 f4 ff 	vmovupd ymm14,YMMWORD PTR [rbp-0xb70]
  7d16d3:	ff 
  7d16d4:	c4 41 55 5d e0       	vminpd ymm12,ymm5,ymm8
  7d16d9:	c4 c1 05 59 f1       	vmulpd ymm6,ymm15,ymm9
  7d16de:	c5 7d 10 8d 90 f5 ff 	vmovupd ymm9,YMMWORD PTR [rbp-0xa70]
  7d16e5:	ff 
  7d16e6:	c5 85 59 ff          	vmulpd ymm7,ymm15,ymm7
  7d16ea:	c5 8d 59 ad d0 f4 ff 	vmulpd ymm5,ymm14,YMMWORD PTR [rbp-0xb30]
  7d16f1:	ff 
  7d16f2:	c4 01 7d 10 74 f5 00 	vmovupd ymm14,YMMWORD PTR [r13+r14*8+0x0]
  7d16f9:	c5 fd 11 ad b0 f1 ff 	vmovupd YMMWORD PTR [rbp-0xe50],ymm5
  7d1700:	ff 
  7d1701:	c4 c1 4d 59 f6       	vmulpd ymm6,ymm6,ymm14
  7d1706:	c4 c1 45 59 fe       	vmulpd ymm7,ymm7,ymm14
  7d170b:	48 8b 95 08 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x3f8]
  7d1712:	48 8b 85 f0 fb ff ff 	mov    rax,QWORD PTR [rbp-0x410]
  7d1719:	48 8b 8d 28 fc ff ff 	mov    rcx,QWORD PTR [rbp-0x3d8]
  7d1720:	48 83 bd d8 fe ff ff 	cmp    QWORD PTR [rbp-0x128],0x0
  7d1727:	00 
  7d1728:	c4 e3 2d 18 d9 01    	vinsertf128 ymm3,ymm10,xmm1,0x1
  7d172e:	c5 ed 5c e3          	vsubpd ymm4,ymm2,ymm3
  7d1732:	c5 fd 10 95 70 f4 ff 	vmovupd ymm2,YMMWORD PTR [rbp-0xb90]
  7d1739:	ff 
  7d173a:	c5 5d 59 9d b0 f2 ff 	vmulpd ymm11,ymm4,YMMWORD PTR [rbp-0xd50]
  7d1741:	ff 
  7d1742:	c5 fd 10 a5 30 f4 ff 	vmovupd ymm4,YMMWORD PTR [rbp-0xbd0]
  7d1749:	ff 
  7d174a:	c4 c1 6d 59 d9       	vmulpd ymm3,ymm2,ymm9
  7d174f:	c5 6d 58 05 09 9c 07 	vaddpd ymm8,ymm2,YMMWORD PTR [rip+0x79c09]        # 84b360 <var$630.126.450+0x13c0>
  7d1756:	00 
  7d1757:	c5 ed 58 c4          	vaddpd ymm0,ymm2,ymm4
  7d175b:	c4 41 5d 59 f9       	vmulpd ymm15,ymm4,ymm9
  7d1760:	c5 7d 10 8d 10 f2 ff 	vmovupd ymm9,YMMWORD PTR [rbp-0xdf0]
  7d1767:	ff 
  7d1768:	c4 41 5d 58 d0       	vaddpd ymm10,ymm4,ymm8
  7d176d:	c4 41 7d 5d e4       	vminpd ymm12,ymm0,ymm12
  7d1772:	c5 8d 59 85 70 f5 ff 	vmulpd ymm0,ymm14,YMMWORD PTR [rbp-0xa90]
  7d1779:	ff 
  7d177a:	c4 c1 25 5e ca       	vdivpd ymm1,ymm11,ymm10
  7d177f:	c5 fd 11 85 70 f2 ff 	vmovupd YMMWORD PTR [rbp-0xd90],ymm0
  7d1786:	ff 
  7d1787:	c4 41 75 59 ec       	vmulpd ymm13,ymm1,ymm12
  7d178c:	c4 01 7d 10 24 f4    	vmovupd ymm12,YMMWORD PTR [r12+r14*8]
  7d1792:	c4 41 15 59 df       	vmulpd ymm11,ymm13,ymm15
  7d1797:	c5 95 59 eb          	vmulpd ymm5,ymm13,ymm3
  7d179b:	c5 35 59 ad d0 f7 ff 	vmulpd ymm13,ymm9,YMMWORD PTR [rbp-0x830]
  7d17a2:	ff 
  7d17a3:	c5 9d 59 8d 50 f5 ff 	vmulpd ymm1,ymm12,YMMWORD PTR [rbp-0xab0]
  7d17aa:	ff 
  7d17ab:	c4 41 25 59 d4       	vmulpd ymm10,ymm11,ymm12
  7d17b0:	c4 41 55 59 c4       	vmulpd ymm8,ymm5,ymm12
  7d17b5:	c4 a1 7d 10 2c f2    	vmovupd ymm5,YMMWORD PTR [rdx+r14*8]
  7d17bb:	c4 21 7d 10 1c f0    	vmovupd ymm11,YMMWORD PTR [rax+r14*8]
  7d17c1:	c5 fd 11 8d f0 f1 ff 	vmovupd YMMWORD PTR [rbp-0xe10],ymm1
  7d17c8:	ff 
  7d17c9:	c5 7d 11 95 30 f2 ff 	vmovupd YMMWORD PTR [rbp-0xdd0],ymm10
  7d17d0:	ff 
  7d17d1:	c5 7d 10 15 a7 9b 07 	vmovupd ymm10,YMMWORD PTR [rip+0x79ba7]        # 84b380 <var$630.126.450+0x13e0>
  7d17d8:	00 
  7d17d9:	c5 d5 59 9d f0 f4 ff 	vmulpd ymm3,ymm5,YMMWORD PTR [rbp-0xb10]
  7d17e0:	ff 
  7d17e1:	c5 d5 59 95 10 f5 ff 	vmulpd ymm2,ymm5,YMMWORD PTR [rbp-0xaf0]
  7d17e8:	ff 
  7d17e9:	c5 7d 11 85 50 f2 ff 	vmovupd YMMWORD PTR [rbp-0xdb0],ymm8
  7d17f0:	ff 
  7d17f1:	c5 25 59 85 30 f5 ff 	vmulpd ymm8,ymm11,YMMWORD PTR [rbp-0xad0]
  7d17f8:	ff 
  7d17f9:	c5 e5 59 e5          	vmulpd ymm4,ymm3,ymm5
  7d17fd:	c5 fd 11 95 d0 f2 ff 	vmovupd YMMWORD PTR [rbp-0xd30],ymm2
  7d1804:	ff 
  7d1805:	c4 41 2d 58 fd       	vaddpd ymm15,ymm10,ymm13
  7d180a:	c5 fd 11 a5 90 f2 ff 	vmovupd YMMWORD PTR [rbp-0xd70],ymm4
  7d1811:	ff 
  7d1812:	c4 c1 05 5f c2       	vmaxpd ymm0,ymm15,ymm10
  7d1817:	c4 21 7d 10 14 f1    	vmovupd ymm10,YMMWORD PTR [rcx+r14*8]
  7d181d:	c4 c1 7d 59 d2       	vmulpd ymm2,ymm0,ymm10
  7d1822:	0f 8e 34 32 00 00    	jle    7d4a5c <biology_mod_mp_biology_tile_+0x8a4c>
  7d1828:	c4 c1 7d 28 c1       	vmovapd ymm0,ymm9
  7d182d:	c5 fd 59 0d ab 9b 07 	vmulpd ymm1,ymm0,YMMWORD PTR [rip+0x79bab]        # 84b3e0 <var$630.126.450+0x1440>
  7d1834:	00 
  7d1835:	c5 f5 58 1d 83 9b 07 	vaddpd ymm3,ymm1,YMMWORD PTR [rip+0x79b83]        # 84b3c0 <var$630.126.450+0x1420>
  7d183c:	00 
  7d183d:	c5 e5 5f 05 bb 9b 07 	vmaxpd ymm0,ymm3,YMMWORD PTR [rip+0x79bbb]        # 84b400 <var$630.126.450+0x1460>
  7d1844:	00 
  7d1845:	c5 a5 59 a5 b0 eb ff 	vmulpd ymm4,ymm11,YMMWORD PTR [rbp-0x1450]
  7d184c:	ff 
  7d184d:	c5 1d 59 bd d0 eb ff 	vmulpd ymm15,ymm12,YMMWORD PTR [rbp-0x1430]
  7d1854:	ff 
  7d1855:	c4 41 5d 59 ce       	vmulpd ymm9,ymm4,ymm14
  7d185a:	c4 c1 05 59 e4       	vmulpd ymm4,ymm15,ymm12
  7d185f:	48 8b 85 d8 fb ff ff 	mov    rax,QWORD PTR [rbp-0x428]
  7d1866:	c4 a1 7d 59 1c f0    	vmulpd ymm3,ymm0,YMMWORD PTR [rax+r14*8]
  7d186c:	c5 8d 58 85 90 eb ff 	vaddpd ymm0,ymm14,YMMWORD PTR [rbp-0x1470]
  7d1873:	ff 
  7d1874:	c5 fd 11 9d 90 f1 ff 	vmovupd YMMWORD PTR [rbp-0xe70],ymm3
  7d187b:	ff 
  7d187c:	c5 a5 59 9d f0 eb ff 	vmulpd ymm3,ymm11,YMMWORD PTR [rbp-0x1410]
  7d1883:	ff 
  7d1884:	c5 b5 5e c8          	vdivpd ymm1,ymm9,ymm0
  7d1888:	c5 ad 59 85 10 ec ff 	vmulpd ymm0,ymm10,YMMWORD PTR [rbp-0x13f0]
  7d188f:	ff 
  7d1890:	c4 41 65 59 eb       	vmulpd ymm13,ymm3,ymm11
  7d1895:	c5 05 58 cb          	vaddpd ymm9,ymm15,ymm3
  7d1899:	c4 41 7d 59 fa       	vmulpd ymm15,ymm0,ymm10
  7d189e:	c5 fd 11 8d d0 f1 ff 	vmovupd YMMWORD PTR [rbp-0xe30],ymm1
  7d18a5:	ff 
  7d18a6:	c4 c1 5d 58 cd       	vaddpd ymm1,ymm4,ymm13
  7d18ab:	c5 b5 58 d8          	vaddpd ymm3,ymm9,ymm0
  7d18af:	c4 c1 75 58 e7       	vaddpd ymm4,ymm1,ymm15
  7d18b4:	c4 41 15 57 ed       	vxorpd ymm13,ymm13,ymm13
  7d18b9:	c4 41 65 c2 cd 02    	vcmplepd ymm9,ymm3,ymm13
  7d18bf:	c4 c1 5d c2 c5 02    	vcmplepd ymm0,ymm4,ymm13
  7d18c5:	c5 b5 54 c8          	vandpd ymm1,ymm9,ymm0
  7d18c9:	c4 41 05 76 ff       	vpcmpeqd ymm15,ymm15,ymm15
  7d18ce:	c4 41 75 57 cf       	vxorpd ymm9,ymm1,ymm15
  7d18d3:	c4 c1 7d 28 c5       	vmovapd ymm0,ymm13
  7d18d8:	c5 fd 28 c8          	vmovapd ymm1,ymm0
  7d18dc:	c4 42 7d 17 cf       	vptest ymm9,ymm15
  7d18e1:	0f 84 b6 00 00 00    	je     7d199d <biology_mod_mp_biology_tile_+0x598d>
  7d18e7:	48 8b 95 b0 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x550]
  7d18ee:	48 8b 8d b8 fa ff ff 	mov    rcx,QWORD PTR [rbp-0x548]
  7d18f5:	c5 fb 10 8d a0 fa ff 	vmovsd xmm1,QWORD PTR [rbp-0x560]
  7d18fc:	ff 
  7d18fd:	48 8b 85 a8 fa ff ff 	mov    rax,QWORD PTR [rbp-0x558]
  7d1904:	c5 f3 59 44 ca f8    	vmulsd xmm0,xmm1,QWORD PTR [rdx+rcx*8-0x8]
  7d190a:	c4 62 7d 19 f8       	vbroadcastsd ymm15,xmm0
  7d190f:	c4 e2 7d 19 44 c8 f8 	vbroadcastsd ymm0,QWORD PTR [rax+rcx*8-0x8]
  7d1916:	c4 41 05 59 ec       	vmulpd ymm13,ymm15,ymm12
  7d191b:	c5 e5 59 d8          	vmulpd ymm3,ymm3,ymm0
  7d191f:	c4 c1 15 59 cc       	vmulpd ymm1,ymm13,ymm12
  7d1924:	c5 5d 58 fb          	vaddpd ymm15,ymm4,ymm3
  7d1928:	c5 fd 10 25 30 87 07 	vmovupd ymm4,YMMWORD PTR [rip+0x78730]        # 84a060 <var$630.126.450+0xc0>
  7d192f:	00 
  7d1930:	c5 75 59 ed          	vmulpd ymm13,ymm1,ymm5
  7d1934:	c5 fb 10 8d 98 fa ff 	vmovsd xmm1,QWORD PTR [rbp-0x568]
  7d193b:	ff 
  7d193c:	c5 f3 59 44 ca f8    	vmulsd xmm0,xmm1,QWORD PTR [rdx+rcx*8-0x8]
  7d1942:	c4 c1 5d 5e df       	vdivpd ymm3,ymm4,ymm15
  7d1947:	c4 62 7d 19 f8       	vbroadcastsd ymm15,xmm0
  7d194c:	c5 15 59 eb          	vmulpd ymm13,ymm13,ymm3
  7d1950:	c4 c1 05 59 cb       	vmulpd ymm1,ymm15,ymm11
  7d1955:	c4 41 75 59 db       	vmulpd ymm11,ymm1,ymm11
  7d195a:	c5 a5 59 cd          	vmulpd ymm1,ymm11,ymm5
  7d195e:	c5 7b 10 9d 90 fa ff 	vmovsd xmm11,QWORD PTR [rbp-0x570]
  7d1965:	ff 
  7d1966:	c5 23 59 7c ca f8    	vmulsd xmm15,xmm11,QWORD PTR [rdx+rcx*8-0x8]
  7d196c:	c5 f5 59 c3          	vmulpd ymm0,ymm1,ymm3
  7d1970:	c5 dd 57 e4          	vxorpd ymm4,ymm4,ymm4
  7d1974:	c4 e3 5d 4b c8 90    	vblendvpd ymm1,ymm4,ymm0,ymm9
  7d197a:	c4 43 5d 4b ed 90    	vblendvpd ymm13,ymm4,ymm13,ymm9
  7d1980:	c4 c2 7d 19 c7       	vbroadcastsd ymm0,xmm15
  7d1985:	c4 41 7d 59 da       	vmulpd ymm11,ymm0,ymm10
  7d198a:	c4 41 25 59 d2       	vmulpd ymm10,ymm11,ymm10
  7d198f:	c5 ad 59 ed          	vmulpd ymm5,ymm10,ymm5
  7d1993:	c5 d5 59 c3          	vmulpd ymm0,ymm5,ymm3
  7d1997:	c4 e3 5d 4b c0 90    	vblendvpd ymm0,ymm4,ymm0,ymm9
  7d199d:	c5 fd 10 1d fb 99 07 	vmovupd ymm3,YMMWORD PTR [rip+0x799fb]        # 84b3a0 <var$630.126.450+0x1400>
  7d19a4:	00 
  7d19a5:	c5 fd 11 95 f0 f7 ff 	vmovupd YMMWORD PTR [rbp-0x810],ymm2
  7d19ac:	ff 
  7d19ad:	c5 4d 58 df          	vaddpd ymm11,ymm6,ymm7
  7d19b1:	c5 0d c2 d3 02       	vcmplepd ymm10,ymm14,ymm3
  7d19b6:	c5 ad 55 a5 d0 f1 ff 	vandnpd ymm4,ymm10,YMMWORD PTR [rbp-0xe30]
  7d19bd:	ff 
  7d19be:	c5 1d c2 d3 02       	vcmplepd ymm10,ymm12,ymm3
  7d19c3:	c5 7d 10 a5 30 f2 ff 	vmovupd ymm12,YMMWORD PTR [rbp-0xdd0]
  7d19ca:	ff 
  7d19cb:	c4 c1 2d 55 ed       	vandnpd ymm5,ymm10,ymm13
  7d19d0:	c5 ad 55 d8          	vandnpd ymm3,ymm10,ymm0
  7d19d4:	c5 2d 55 c9          	vandnpd ymm9,ymm10,ymm1
  7d19d8:	c5 d5 58 cb          	vaddpd ymm1,ymm5,ymm3
  7d19dc:	c4 41 45 58 fc       	vaddpd ymm15,ymm7,ymm12
  7d19e1:	c5 7d 10 95 70 f3 ff 	vmovupd ymm10,YMMWORD PTR [rbp-0xc90]
  7d19e8:	ff 
  7d19e9:	c5 b5 58 c1          	vaddpd ymm0,ymm9,ymm1
  7d19ed:	c5 fd 10 8d 50 f2 ff 	vmovupd ymm1,YMMWORD PTR [rbp-0xdb0]
  7d19f4:	ff 
  7d19f5:	c5 2d 59 ad b0 f1 ff 	vmulpd ymm13,ymm10,YMMWORD PTR [rbp-0xe50]
  7d19fc:	ff 
  7d19fd:	c5 4d 58 f1          	vaddpd ymm14,ymm6,ymm1
  7d1a01:	c5 8d 57 3d 17 87 07 	vxorpd ymm7,ymm14,YMMWORD PTR [rip+0x78717]        # 84a120 <var$630.126.450+0x180>
  7d1a08:	00 
  7d1a09:	c4 c1 45 58 fd       	vaddpd ymm7,ymm7,ymm13
  7d1a0e:	c5 8d 59 b5 d0 f6 ff 	vmulpd ymm6,ymm14,YMMWORD PTR [rbp-0x930]
  7d1a15:	ff 
  7d1a16:	c4 41 2d 59 f0       	vmulpd ymm14,ymm10,ymm8
  7d1a1b:	c5 fd 11 bd 10 f8 ff 	vmovupd YMMWORD PTR [rbp-0x7f0],ymm7
  7d1a22:	ff 
  7d1a23:	c5 85 57 3d f5 86 07 	vxorpd ymm7,ymm15,YMMWORD PTR [rip+0x786f5]        # 84a120 <var$630.126.450+0x180>
  7d1a2a:	00 
  7d1a2b:	c5 05 59 bd f0 f6 ff 	vmulpd ymm15,ymm15,YMMWORD PTR [rbp-0x910]
  7d1a32:	ff 
  7d1a33:	c4 c1 4d 58 f7       	vaddpd ymm6,ymm6,ymm15
  7d1a38:	c5 7d 10 bd d0 f2 ff 	vmovupd ymm15,YMMWORD PTR [rbp-0xd30]
  7d1a3f:	ff 
  7d1a40:	c5 fd 11 b5 30 f8 ff 	vmovupd YMMWORD PTR [rbp-0x7d0],ymm6
  7d1a47:	ff 
  7d1a48:	c4 c1 45 58 f6       	vaddpd ymm6,ymm7,ymm14
  7d1a4d:	c4 c1 3d 58 ff       	vaddpd ymm7,ymm8,ymm15
  7d1a52:	c4 41 2d 59 c7       	vmulpd ymm8,ymm10,ymm15
  7d1a57:	c5 2d 59 fa          	vmulpd ymm15,ymm10,ymm2
  7d1a5b:	c4 c1 4d 58 f0       	vaddpd ymm6,ymm6,ymm8
  7d1a60:	c4 41 4d 5c ed       	vsubpd ymm13,ymm6,ymm13
  7d1a65:	c5 dd 59 b5 d0 f5 ff 	vmulpd ymm6,ymm4,YMMWORD PTR [rbp-0xa30]
  7d1a6c:	ff 
  7d1a6d:	c4 c1 15 58 d7       	vaddpd ymm2,ymm13,ymm15
  7d1a72:	c5 fd 11 95 50 f8 ff 	vmovupd YMMWORD PTR [rbp-0x7b0],ymm2
  7d1a79:	ff 
  7d1a7a:	c4 c1 4d 5c d6       	vsubpd ymm2,ymm6,ymm14
  7d1a7f:	c5 fc 10 b5 b0 f4 ff 	vmovups ymm6,YMMWORD PTR [rbp-0xb50]
  7d1a86:	ff 
  7d1a87:	c4 41 6d 5c c9       	vsubpd ymm9,ymm2,ymm9
  7d1a8c:	c5 fd 10 95 f0 ef ff 	vmovupd ymm2,YMMWORD PTR [rbp-0x1010]
  7d1a93:	ff 
  7d1a94:	c4 41 4d 59 f1       	vmulpd ymm14,ymm6,ymm9
  7d1a99:	c5 7d 59 8d 10 f6 ff 	vmulpd ymm9,ymm0,YMMWORD PTR [rbp-0x9f0]
  7d1aa0:	ff 
  7d1aa1:	c4 41 6d 59 ee       	vmulpd ymm13,ymm2,ymm14
  7d1aa6:	c5 7d 10 b5 90 f2 ff 	vmovupd ymm14,YMMWORD PTR [rbp-0xd70]
  7d1aad:	ff 
  7d1aae:	c4 41 35 5c c0       	vsubpd ymm8,ymm9,ymm8
  7d1ab3:	c5 7d 59 8d 50 f7 ff 	vmulpd ymm9,ymm0,YMMWORD PTR [rbp-0x8b0]
  7d1aba:	ff 
  7d1abb:	c5 7d 11 ad 70 f8 ff 	vmovupd YMMWORD PTR [rbp-0x790],ymm13
  7d1ac2:	ff 
  7d1ac3:	c4 41 3d 5c c6       	vsubpd ymm8,ymm8,ymm14
  7d1ac8:	c4 c1 4d 59 c0       	vmulpd ymm0,ymm6,ymm8
  7d1acd:	c5 6d 59 c0          	vmulpd ymm8,ymm2,ymm0
  7d1ad1:	c5 fd 10 85 f0 f1 ff 	vmovupd ymm0,YMMWORD PTR [rbp-0xe10]
  7d1ad8:	ff 
  7d1ad9:	c5 7d 11 85 90 f8 ff 	vmovupd YMMWORD PTR [rbp-0x770],ymm8
  7d1ae0:	ff 
  7d1ae1:	c5 7d 10 85 70 f2 ff 	vmovupd ymm8,YMMWORD PTR [rbp-0xd90]
  7d1ae8:	ff 
  7d1ae9:	c5 3d 58 e8          	vaddpd ymm13,ymm8,ymm0
  7d1aed:	c4 41 0d 58 f5       	vaddpd ymm14,ymm14,ymm13
  7d1af2:	c5 5d 59 ad 30 f6 ff 	vmulpd ymm13,ymm4,YMMWORD PTR [rbp-0x9d0]
  7d1af9:	ff 
  7d1afa:	c5 a5 5c e4          	vsubpd ymm4,ymm11,ymm4
  7d1afe:	c4 41 75 58 db       	vaddpd ymm11,ymm1,ymm11
  7d1b03:	c4 41 0d 58 f5       	vaddpd ymm14,ymm14,ymm13
  7d1b08:	c4 41 0d 58 c9       	vaddpd ymm9,ymm14,ymm9
  7d1b0d:	c5 b5 5c db          	vsubpd ymm3,ymm9,ymm3
  7d1b11:	c4 41 65 5c cf       	vsubpd ymm9,ymm3,ymm15
  7d1b16:	c4 41 5d 5c f8       	vsubpd ymm15,ymm4,ymm8
  7d1b1b:	c4 c1 75 58 e4       	vaddpd ymm4,ymm1,ymm12
  7d1b20:	c4 41 1d 58 e3       	vaddpd ymm12,ymm12,ymm11
  7d1b25:	c4 c1 4d 59 cf       	vmulpd ymm1,ymm6,ymm15
  7d1b2a:	c5 7d 10 bd 30 f7 ff 	vmovupd ymm15,YMMWORD PTR [rbp-0x8d0]
  7d1b31:	ff 
  7d1b32:	c4 41 4d 59 d9       	vmulpd ymm11,ymm6,ymm9
  7d1b37:	c5 6d 59 c1          	vmulpd ymm8,ymm2,ymm1
  7d1b3b:	c5 85 59 dc          	vmulpd ymm3,ymm15,ymm4
  7d1b3f:	c4 41 6d 59 cb       	vmulpd ymm9,ymm2,ymm11
  7d1b44:	c5 7d 10 9d 90 f1 ff 	vmovupd ymm11,YMMWORD PTR [rbp-0xe70]
  7d1b4b:	ff 
  7d1b4c:	c5 dd 5c e5          	vsubpd ymm4,ymm4,ymm5
  7d1b50:	c5 fd 58 ed          	vaddpd ymm5,ymm0,ymm5
  7d1b54:	c5 25 5c f3          	vsubpd ymm14,ymm11,ymm3
  7d1b58:	c5 dd 5c e0          	vsubpd ymm4,ymm4,ymm0
  7d1b5c:	c5 05 59 fd          	vmulpd ymm15,ymm15,ymm5
  7d1b60:	c4 c1 4d 59 ce       	vmulpd ymm1,ymm6,ymm14
  7d1b65:	c5 fd 10 ad 10 f7 ff 	vmovupd ymm5,YMMWORD PTR [rbp-0x8f0]
  7d1b6c:	ff 
  7d1b6d:	c4 41 05 5c f3       	vsubpd ymm14,ymm15,ymm11
  7d1b72:	c5 ed 59 d9          	vmulpd ymm3,ymm2,ymm1
  7d1b76:	c5 4d 59 dc          	vmulpd ymm11,ymm6,ymm4
  7d1b7a:	c4 c1 4d 59 ce       	vmulpd ymm1,ymm6,ymm14
  7d1b7f:	c5 2d 59 ed          	vmulpd ymm13,ymm10,ymm5
  7d1b83:	c4 c1 6d 59 e3       	vmulpd ymm4,ymm2,ymm11
  7d1b88:	c5 6d 59 f9          	vmulpd ymm15,ymm2,ymm1
  7d1b8c:	c5 fd 10 8d f0 f7 ff 	vmovupd ymm1,YMMWORD PTR [rbp-0x810]
  7d1b93:	ff 
  7d1b94:	c5 95 59 c7          	vmulpd ymm0,ymm13,ymm7
  7d1b98:	c4 41 55 59 dc       	vmulpd ymm11,ymm5,ymm12
  7d1b9d:	c4 41 75 59 ed       	vmulpd ymm13,ymm1,ymm13
  7d1ba2:	c4 41 7d 5c f3       	vsubpd ymm14,ymm0,ymm11
  7d1ba7:	c4 c1 0d 58 c5       	vaddpd ymm0,ymm14,ymm13
  7d1bac:	c4 41 2d 58 f2       	vaddpd ymm14,ymm10,ymm10
  7d1bb1:	c5 7d 10 ad b0 f6 ff 	vmovupd ymm13,YMMWORD PTR [rbp-0x950]
  7d1bb8:	ff 
  7d1bb9:	c4 c1 15 59 ec       	vmulpd ymm5,ymm13,ymm12
  7d1bbe:	c5 4d 59 e0          	vmulpd ymm12,ymm6,ymm0
  7d1bc2:	c5 8d 59 85 b0 f1 ff 	vmulpd ymm0,ymm14,YMMWORD PTR [rbp-0xe50]
  7d1bc9:	ff 
  7d1bca:	c5 2d 59 b5 f0 f6 ff 	vmulpd ymm14,ymm10,YMMWORD PTR [rbp-0x910]
  7d1bd1:	ff 
  7d1bd2:	c4 41 2d 59 ed       	vmulpd ymm13,ymm10,ymm13
  7d1bd7:	c4 41 6d 59 dc       	vmulpd ymm11,ymm2,ymm12
  7d1bdc:	c5 7d 10 a5 30 f8 ff 	vmovupd ymm12,YMMWORD PTR [rbp-0x7d0]
  7d1be3:	ff 
  7d1be4:	c5 0d 59 d7          	vmulpd ymm10,ymm14,ymm7
  7d1be8:	c4 41 75 59 f6       	vmulpd ymm14,ymm1,ymm14
  7d1bed:	c5 95 59 ff          	vmulpd ymm7,ymm13,ymm7
  7d1bf1:	c5 1d 5c e0          	vsubpd ymm12,ymm12,ymm0
  7d1bf5:	c5 c5 5c fd          	vsubpd ymm7,ymm7,ymm5
  7d1bf9:	c4 41 1d 5c d2       	vsubpd ymm10,ymm12,ymm10
  7d1bfe:	c4 41 2d 5c f6       	vsubpd ymm14,ymm10,ymm14
  7d1c03:	c4 41 75 59 d5       	vmulpd ymm10,ymm1,ymm13
  7d1c08:	c4 41 4d 59 f6       	vmulpd ymm14,ymm6,ymm14
  7d1c0d:	c4 c1 45 58 c2       	vaddpd ymm0,ymm7,ymm10
  7d1c12:	c4 41 6d 59 d6       	vmulpd ymm10,ymm2,ymm14
  7d1c17:	c5 cd 59 c8          	vmulpd ymm1,ymm6,ymm0
  7d1c1b:	c5 fd 10 85 10 f8 ff 	vmovupd ymm0,YMMWORD PTR [rbp-0x7f0]
  7d1c22:	ff 
  7d1c23:	c5 ed 59 f9          	vmulpd ymm7,ymm2,ymm1
  7d1c27:	c5 cd 59 e8          	vmulpd ymm5,ymm6,ymm0
  7d1c2b:	c5 fd 10 8d 50 f8 ff 	vmovupd ymm1,YMMWORD PTR [rbp-0x7b0]
  7d1c32:	ff 
  7d1c33:	c5 6d 59 ed          	vmulpd ymm13,ymm2,ymm5
  7d1c37:	c5 95 58 ad 70 f1 ff 	vaddpd ymm5,ymm13,YMMWORD PTR [rbp-0xe90]
  7d1c3e:	ff 
  7d1c3f:	48 8b 85 e8 fb ff ff 	mov    rax,QWORD PTR [rbp-0x418]
  7d1c46:	48 8b 95 58 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x1a8]
  7d1c4d:	48 8b 8d 10 fc ff ff 	mov    rcx,QWORD PTR [rbp-0x3f0]
  7d1c54:	c4 a1 7d 11 2c f0    	vmovupd YMMWORD PTR [rax+r14*8],ymm5
  7d1c5a:	c5 cd 59 e9          	vmulpd ymm5,ymm6,ymm1
  7d1c5e:	c4 a1 65 58 1c f2    	vaddpd ymm3,ymm3,YMMWORD PTR [rdx+r14*8]
  7d1c64:	c5 6d 59 e5          	vmulpd ymm12,ymm2,ymm5
  7d1c68:	c4 a1 7d 11 1c f2    	vmovupd YMMWORD PTR [rdx+r14*8],ymm3
  7d1c6e:	c5 f5 5c d8          	vsubpd ymm3,ymm1,ymm0
  7d1c72:	c5 fd 10 8d 70 f8 ff 	vmovupd ymm1,YMMWORD PTR [rbp-0x790]
  7d1c79:	ff 
  7d1c7a:	c5 cd 59 f3          	vmulpd ymm6,ymm6,ymm3
  7d1c7e:	c4 21 1d 58 2c f1    	vaddpd ymm13,ymm12,YMMWORD PTR [rcx+r14*8]
  7d1c84:	c5 ed 59 d6          	vmulpd ymm2,ymm2,ymm6
  7d1c88:	c4 21 7d 11 2c f1    	vmovupd YMMWORD PTR [rcx+r14*8],ymm13
  7d1c8e:	c4 01 3d 58 44 f5 00 	vaddpd ymm8,ymm8,YMMWORD PTR [r13+r14*8+0x0]
  7d1c95:	c4 01 7d 11 44 f5 00 	vmovupd YMMWORD PTR [r13+r14*8+0x0],ymm8
  7d1c9c:	c4 81 5d 58 04 f4    	vaddpd ymm0,ymm4,YMMWORD PTR [r12+r14*8]
  7d1ca2:	c5 fd 10 a5 90 f8 ff 	vmovupd ymm4,YMMWORD PTR [rbp-0x770]
  7d1ca9:	ff 
  7d1caa:	c4 81 7d 11 04 f4    	vmovupd YMMWORD PTR [r12+r14*8],ymm0
  7d1cb0:	48 8b b5 f0 fb ff ff 	mov    rsi,QWORD PTR [rbp-0x410]
  7d1cb7:	48 8b bd 08 fc ff ff 	mov    rdi,QWORD PTR [rbp-0x3f8]
  7d1cbe:	4c 8b 85 28 fc ff ff 	mov    r8,QWORD PTR [rbp-0x3d8]
  7d1cc5:	c4 a1 75 58 1c f6    	vaddpd ymm3,ymm1,YMMWORD PTR [rsi+r14*8]
  7d1ccb:	c4 a1 7d 11 1c f6    	vmovupd YMMWORD PTR [rsi+r14*8],ymm3
  7d1cd1:	c4 a1 5d 58 2c f7    	vaddpd ymm5,ymm4,YMMWORD PTR [rdi+r14*8]
  7d1cd7:	c4 a1 7d 11 2c f7    	vmovupd YMMWORD PTR [rdi+r14*8],ymm5
  7d1cdd:	c4 01 35 58 0c f0    	vaddpd ymm9,ymm9,YMMWORD PTR [r8+r14*8]
  7d1ce3:	c4 01 7d 11 0c f0    	vmovupd YMMWORD PTR [r8+r14*8],ymm9
  7d1ce9:	4c 8b 8d d8 fb ff ff 	mov    r9,QWORD PTR [rbp-0x428]
  7d1cf0:	4c 8b 95 68 fe ff ff 	mov    r10,QWORD PTR [rbp-0x198]
  7d1cf7:	4c 8b 9d a8 fe ff ff 	mov    r11,QWORD PTR [rbp-0x158]
  7d1cfe:	c4 81 05 58 04 f1    	vaddpd ymm0,ymm15,YMMWORD PTR [r9+r14*8]
  7d1d04:	c4 81 7d 11 04 f1    	vmovupd YMMWORD PTR [r9+r14*8],ymm0
  7d1d0a:	c5 fd 10 85 70 f6 ff 	vmovupd ymm0,YMMWORD PTR [rbp-0x990]
  7d1d11:	ff 
  7d1d12:	c4 81 25 58 0c f2    	vaddpd ymm1,ymm11,YMMWORD PTR [r10+r14*8]
  7d1d18:	c5 7d 10 9d 90 f6 ff 	vmovupd ymm11,YMMWORD PTR [rbp-0x970]
  7d1d1f:	ff 
  7d1d20:	c4 81 7d 11 0c f2    	vmovupd YMMWORD PTR [r10+r14*8],ymm1
  7d1d26:	c4 81 2d 58 1c f3    	vaddpd ymm3,ymm10,YMMWORD PTR [r11+r14*8]
  7d1d2c:	c4 81 7d 11 1c f3    	vmovupd YMMWORD PTR [r11+r14*8],ymm3
  7d1d32:	c4 81 45 58 24 f7    	vaddpd ymm4,ymm7,YMMWORD PTR [r15+r14*8]
  7d1d38:	c4 81 7d 11 24 f7    	vmovupd YMMWORD PTR [r15+r14*8],ymm4
  7d1d3e:	48 8b 85 d0 fb ff ff 	mov    rax,QWORD PTR [rbp-0x430]
  7d1d45:	48 8b 95 c0 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x440]
  7d1d4c:	48 8b 8d b8 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x148]
  7d1d53:	c4 a1 6d 58 34 f0    	vaddpd ymm6,ymm2,YMMWORD PTR [rax+r14*8]
  7d1d59:	c4 a1 7d 11 34 f0    	vmovupd YMMWORD PTR [rax+r14*8],ymm6
  7d1d5f:	c4 01 25 59 7c f5 00 	vmulpd ymm15,ymm11,YMMWORD PTR [r13+r14*8+0x0]
  7d1d66:	c4 21 7d 11 3c f2    	vmovupd YMMWORD PTR [rdx+r14*8],ymm15
  7d1d6c:	c4 81 7d 59 0c f4    	vmulpd ymm1,ymm0,YMMWORD PTR [r12+r14*8]
  7d1d72:	c4 a1 7d 11 0c f1    	vmovupd YMMWORD PTR [rcx+r14*8],ymm1
  7d1d78:	49 83 c6 04          	add    r14,0x4
  7d1d7c:	4c 3b b5 b8 fb ff ff 	cmp    r14,QWORD PTR [rbp-0x448]
  7d1d83:	0f 82 f1 f2 ff ff    	jb     7d107a <biology_mod_mp_biology_tile_+0x506a>
  7d1d89:	c5 fb 10 05 ef a3 07 	vmovsd xmm0,QWORD PTR [rip+0x7a3ef]        # 84c180 <__STRLITPACK_0.112+0x70>
  7d1d90:	00 
  7d1d91:	48 8b 85 88 ef ff ff 	mov    rax,QWORD PTR [rbp-0x1078]
  7d1d98:	48 3b 85 e0 fe ff ff 	cmp    rax,QWORD PTR [rbp-0x120]
  7d1d9f:	0f 83 af 0e 00 00    	jae    7d2c54 <biology_mod_mp_biology_tile_+0x6c44>
  7d1da5:	4c 8b 6d d8          	mov    r13,QWORD PTR [rbp-0x28]
  7d1da9:	4c 0f af ad d8 fe ff 	imul   r13,QWORD PTR [rbp-0x128]
  7d1db0:	ff 
  7d1db1:	4c 8b a5 b8 ee ff ff 	mov    r12,QWORD PTR [rbp-0x1148]
  7d1db8:	48 8b 8d 88 ec ff ff 	mov    rcx,QWORD PTR [rbp-0x1378]
  7d1dbf:	4c 8b 85 c8 ee ff ff 	mov    r8,QWORD PTR [rbp-0x1138]
  7d1dc6:	4c 8b b5 90 ec ff ff 	mov    r14,QWORD PTR [rbp-0x1370]
  7d1dcd:	4b 8d 34 2c          	lea    rsi,[r12+r13*1]
  7d1dd1:	4c 8b a5 98 ec ff ff 	mov    r12,QWORD PTR [rbp-0x1368]
  7d1dd8:	4a 8d 04 29          	lea    rax,[rcx+r13*1]
  7d1ddc:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  7d1de3:	4b 8d 3c 28          	lea    rdi,[r8+r13*1]
  7d1de7:	48 8b 85 a0 ec ff ff 	mov    rax,QWORD PTR [rbp-0x1360]
  7d1dee:	4f 8d 04 2e          	lea    r8,[r14+r13*1]
  7d1df2:	48 89 b5 50 fe ff ff 	mov    QWORD PTR [rbp-0x1b0],rsi
  7d1df9:	4b 8d 34 2c          	lea    rsi,[r12+r13*1]
  7d1dfd:	48 89 b5 b0 fe ff ff 	mov    QWORD PTR [rbp-0x150],rsi
  7d1e04:	4c 8b bd a0 ee ff ff 	mov    r15,QWORD PTR [rbp-0x1160]
  7d1e0b:	4a 8d 14 28          	lea    rdx,[rax+r13*1]
  7d1e0f:	48 8b 8d d8 ee ff ff 	mov    rcx,QWORD PTR [rbp-0x1128]
  7d1e16:	4c 8b b5 c0 ee ff ff 	mov    r14,QWORD PTR [rbp-0x1140]
  7d1e1d:	48 8b b5 d0 ee ff ff 	mov    rsi,QWORD PTR [rbp-0x1130]
  7d1e24:	48 8b 85 a8 ee ff ff 	mov    rax,QWORD PTR [rbp-0x1158]
  7d1e2b:	4e 8d 24 29          	lea    r12,[rcx+r13*1]
  7d1e2f:	48 89 95 d8 ec ff ff 	mov    QWORD PTR [rbp-0x1328],rdx
  7d1e36:	48 89 bd 98 fe ff ff 	mov    QWORD PTR [rbp-0x168],rdi
  7d1e3d:	4b 8d 3c 2f          	lea    rdi,[r15+r13*1]
  7d1e41:	48 8b 95 b0 ee ff ff 	mov    rdx,QWORD PTR [rbp-0x1150]
  7d1e48:	4f 8d 3c 2e          	lea    r15,[r14+r13*1]
  7d1e4c:	4c 8b b5 a8 ec ff ff 	mov    r14,QWORD PTR [rbp-0x1358]
  7d1e53:	4a 8d 0c 2e          	lea    rcx,[rsi+r13*1]
  7d1e57:	4c 89 bd c0 ec ff ff 	mov    QWORD PTR [rbp-0x1340],r15
  7d1e5e:	4a 8d 34 28          	lea    rsi,[rax+r13*1]
  7d1e62:	48 8b 85 b0 ec ff ff 	mov    rax,QWORD PTR [rbp-0x1350]
  7d1e69:	48 89 8d 70 fe ff ff 	mov    QWORD PTR [rbp-0x190],rcx
  7d1e70:	4a 8d 0c 2a          	lea    rcx,[rdx+r13*1]
  7d1e74:	4c 8b 9d 00 ed ff ff 	mov    r11,QWORD PTR [rbp-0x1300]
  7d1e7b:	4f 8d 3c 2e          	lea    r15,[r14+r13*1]
  7d1e7f:	4c 89 bd c0 fe ff ff 	mov    QWORD PTR [rbp-0x140],r15
  7d1e86:	4a 8d 14 28          	lea    rdx,[rax+r13*1]
  7d1e8a:	48 89 95 88 fe ff ff 	mov    QWORD PTR [rbp-0x178],rdx
  7d1e91:	4c 8b bd 28 ed ff ff 	mov    r15,QWORD PTR [rbp-0x12d8]
  7d1e98:	4d 03 dd             	add    r11,r13
  7d1e9b:	48 8b 95 b8 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x548]
  7d1ea2:	4c 8b b5 88 ee ff ff 	mov    r14,QWORD PTR [rbp-0x1178]
  7d1ea9:	4c 8b 95 10 ed ff ff 	mov    r10,QWORD PTR [rbp-0x12f0]
  7d1eb0:	c4 41 7b 10 74 d7 f8 	vmovsd xmm14,QWORD PTR [r15+rdx*8-0x8]
  7d1eb7:	c4 41 7b 5e d6       	vdivsd xmm10,xmm0,xmm14
  7d1ebc:	c5 7b 11 95 90 fd ff 	vmovsd QWORD PTR [rbp-0x270],xmm10
  7d1ec3:	ff 
  7d1ec4:	4b 8d 04 2e          	lea    rax,[r14+r13*1]
  7d1ec8:	4c 8b b5 30 ed ff ff 	mov    r14,QWORD PTR [rbp-0x12d0]
  7d1ecf:	4d 03 d5             	add    r10,r13
  7d1ed2:	4c 8b bd 20 ed ff ff 	mov    r15,QWORD PTR [rbp-0x12e0]
  7d1ed9:	4c 8b 8d 08 ed ff ff 	mov    r9,QWORD PTR [rbp-0x12f8]
  7d1ee0:	c4 41 7b 10 6c d6 f8 	vmovsd xmm13,QWORD PTR [r14+rdx*8-0x8]
  7d1ee7:	4c 8b b5 70 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1290]
  7d1eee:	c4 41 7b 10 5c d7 f8 	vmovsd xmm11,QWORD PTR [r15+rdx*8-0x8]
  7d1ef5:	4d 03 cd             	add    r9,r13
  7d1ef8:	4c 8b bd 78 ed ff ff 	mov    r15,QWORD PTR [rbp-0x1288]
  7d1eff:	c4 41 7b 10 54 d6 f8 	vmovsd xmm10,QWORD PTR [r14+rdx*8-0x8]
  7d1f06:	c4 41 7b 5e ca       	vdivsd xmm9,xmm0,xmm10
  7d1f0b:	c5 7b 11 8d 98 fd ff 	vmovsd QWORD PTR [rbp-0x268],xmm9
  7d1f12:	ff 
  7d1f13:	c4 41 7b 10 4c d7 f8 	vmovsd xmm9,QWORD PTR [r15+rdx*8-0x8]
  7d1f1a:	c4 41 7b 5e c1       	vdivsd xmm8,xmm0,xmm9
  7d1f1f:	4c 8b b5 68 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1298]
  7d1f26:	4c 8b bd 60 ed ff ff 	mov    r15,QWORD PTR [rbp-0x12a0]
  7d1f2d:	c5 7b 11 85 a0 fd ff 	vmovsd QWORD PTR [rbp-0x260],xmm8
  7d1f34:	ff 
  7d1f35:	c4 c1 7b 10 7c d6 f8 	vmovsd xmm7,QWORD PTR [r14+rdx*8-0x8]
  7d1f3c:	4c 8b b5 58 ed ff ff 	mov    r14,QWORD PTR [rbp-0x12a8]
  7d1f43:	c4 41 7b 10 44 d7 f8 	vmovsd xmm8,QWORD PTR [r15+rdx*8-0x8]
  7d1f4a:	4c 8b bd 68 ee ff ff 	mov    r15,QWORD PTR [rbp-0x1198]
  7d1f51:	c4 c1 7b 10 5c d6 f8 	vmovsd xmm3,QWORD PTR [r14+rdx*8-0x8]
  7d1f58:	4c 8b b5 60 ee ff ff 	mov    r14,QWORD PTR [rbp-0x11a0]
  7d1f5f:	c5 fb 11 bd a8 fd ff 	vmovsd QWORD PTR [rbp-0x258],xmm7
  7d1f66:	ff 
  7d1f67:	c4 c1 7b 10 7c d7 f8 	vmovsd xmm7,QWORD PTR [r15+rdx*8-0x8]
  7d1f6e:	c4 c1 7b 10 64 d6 f8 	vmovsd xmm4,QWORD PTR [r14+rdx*8-0x8]
  7d1f75:	4c 8b bd 58 ee ff ff 	mov    r15,QWORD PTR [rbp-0x11a8]
  7d1f7c:	4c 8b b5 48 ee ff ff 	mov    r14,QWORD PTR [rbp-0x11b8]
  7d1f83:	c5 fb 11 9d b0 fd ff 	vmovsd QWORD PTR [rbp-0x250],xmm3
  7d1f8a:	ff 
  7d1f8b:	c4 c1 7b 10 6c d7 f8 	vmovsd xmm5,QWORD PTR [r15+rdx*8-0x8]
  7d1f92:	c4 c1 7b 10 74 d6 f8 	vmovsd xmm6,QWORD PTR [r14+rdx*8-0x8]
  7d1f99:	4c 8b bd 38 ee ff ff 	mov    r15,QWORD PTR [rbp-0x11c8]
  7d1fa0:	4c 8b b5 28 ee ff ff 	mov    r14,QWORD PTR [rbp-0x11d8]
  7d1fa7:	c5 fb 11 a5 f0 fd ff 	vmovsd QWORD PTR [rbp-0x210],xmm4
  7d1fae:	ff 
  7d1faf:	c4 c1 7b 10 54 d7 f8 	vmovsd xmm2,QWORD PTR [r15+rdx*8-0x8]
  7d1fb6:	c4 c1 7b 10 4c d6 f8 	vmovsd xmm1,QWORD PTR [r14+rdx*8-0x8]
  7d1fbd:	4c 8b bd 20 ee ff ff 	mov    r15,QWORD PTR [rbp-0x11e0]
  7d1fc4:	4c 8b b5 10 ee ff ff 	mov    r14,QWORD PTR [rbp-0x11f0]
  7d1fcb:	c5 fb 11 ad e8 fd ff 	vmovsd QWORD PTR [rbp-0x218],xmm5
  7d1fd2:	ff 
  7d1fd3:	c4 41 7b 10 7c d7 f8 	vmovsd xmm15,QWORD PTR [r15+rdx*8-0x8]
  7d1fda:	c4 c1 7b 10 5c d6 f8 	vmovsd xmm3,QWORD PTR [r14+rdx*8-0x8]
  7d1fe1:	4c 8b bd 00 ee ff ff 	mov    r15,QWORD PTR [rbp-0x1200]
  7d1fe8:	4c 8b b5 f0 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1210]
  7d1fef:	c5 fb 11 b5 b8 fd ff 	vmovsd QWORD PTR [rbp-0x248],xmm6
  7d1ff6:	ff 
  7d1ff7:	c4 c1 7b 10 64 d7 f8 	vmovsd xmm4,QWORD PTR [r15+rdx*8-0x8]
  7d1ffe:	c4 c1 7b 10 6c d6 f8 	vmovsd xmm5,QWORD PTR [r14+rdx*8-0x8]
  7d2005:	4c 8b bd e8 ed ff ff 	mov    r15,QWORD PTR [rbp-0x1218]
  7d200c:	4c 8b b5 e0 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1220]
  7d2013:	c5 fb 11 95 c0 fd ff 	vmovsd QWORD PTR [rbp-0x240],xmm2
  7d201a:	ff 
  7d201b:	c4 c1 7b 10 74 d7 f8 	vmovsd xmm6,QWORD PTR [r15+rdx*8-0x8]
  7d2022:	c4 c1 7b 10 54 d6 f8 	vmovsd xmm2,QWORD PTR [r14+rdx*8-0x8]
  7d2029:	4c 8b bd d8 ed ff ff 	mov    r15,QWORD PTR [rbp-0x1228]
  7d2030:	4c 8b b5 d0 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1230]
  7d2037:	c5 fb 11 8d c8 fd ff 	vmovsd QWORD PTR [rbp-0x238],xmm1
  7d203e:	ff 
  7d203f:	c5 fb 11 b5 78 fe ff 	vmovsd QWORD PTR [rbp-0x188],xmm6
  7d2046:	ff 
  7d2047:	c4 c1 7b 10 4c d7 f8 	vmovsd xmm1,QWORD PTR [r15+rdx*8-0x8]
  7d204e:	c4 c1 7b 10 74 d6 f8 	vmovsd xmm6,QWORD PTR [r14+rdx*8-0x8]
  7d2055:	4c 8b bd c8 ed ff ff 	mov    r15,QWORD PTR [rbp-0x1238]
  7d205c:	4c 8b b5 c0 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1240]
  7d2063:	c5 7b 11 bd 48 fe ff 	vmovsd QWORD PTR [rbp-0x1b8],xmm15
  7d206a:	ff 
  7d206b:	c5 fb 11 a5 60 fe ff 	vmovsd QWORD PTR [rbp-0x1a0],xmm4
  7d2072:	ff 
  7d2073:	c4 c1 7b 10 64 d7 f8 	vmovsd xmm4,QWORD PTR [r15+rdx*8-0x8]
  7d207a:	c4 41 7b 10 7c d6 f8 	vmovsd xmm15,QWORD PTR [r14+rdx*8-0x8]
  7d2081:	4c 8b bd b8 ed ff ff 	mov    r15,QWORD PTR [rbp-0x1248]
  7d2088:	4c 8b b5 a8 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1258]
  7d208f:	c5 fb 11 95 e0 fd ff 	vmovsd QWORD PTR [rbp-0x220],xmm2
  7d2096:	ff 
  7d2097:	c5 fb 11 8d 80 fe ff 	vmovsd QWORD PTR [rbp-0x180],xmm1
  7d209e:	ff 
  7d209f:	c4 c1 7b 10 54 d7 f8 	vmovsd xmm2,QWORD PTR [r15+rdx*8-0x8]
  7d20a6:	c4 c1 7b 10 4c d6 f8 	vmovsd xmm1,QWORD PTR [r14+rdx*8-0x8]
  7d20ad:	4c 8b bd b0 ed ff ff 	mov    r15,QWORD PTR [rbp-0x1250]
  7d20b4:	4c 8b b5 a0 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1260]
  7d20bb:	c5 7b 11 bd f8 fd ff 	vmovsd QWORD PTR [rbp-0x208],xmm15
  7d20c2:	ff 
  7d20c3:	c5 fb 11 8d 00 fe ff 	vmovsd QWORD PTR [rbp-0x200],xmm1
  7d20ca:	ff 
  7d20cb:	c4 41 7b 10 7c d7 f8 	vmovsd xmm15,QWORD PTR [r15+rdx*8-0x8]
  7d20d2:	c4 c1 7b 10 4c d6 f8 	vmovsd xmm1,QWORD PTR [r14+rdx*8-0x8]
  7d20d9:	4c 8b bd 98 ed ff ff 	mov    r15,QWORD PTR [rbp-0x1268]
  7d20e0:	4c 8b b5 90 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1270]
  7d20e7:	c5 7b 11 bd d0 fe ff 	vmovsd QWORD PTR [rbp-0x130],xmm15
  7d20ee:	ff 
  7d20ef:	c5 fb 11 8d 08 fe ff 	vmovsd QWORD PTR [rbp-0x1f8],xmm1
  7d20f6:	ff 
  7d20f7:	c4 c1 7b 10 4c d7 f8 	vmovsd xmm1,QWORD PTR [r15+rdx*8-0x8]
  7d20fe:	c4 41 7b 10 7c d6 f8 	vmovsd xmm15,QWORD PTR [r14+rdx*8-0x8]
  7d2105:	4c 8b b5 18 ed ff ff 	mov    r14,QWORD PTR [rbp-0x12e8]
  7d210c:	4c 8b bd 38 ed ff ff 	mov    r15,QWORD PTR [rbp-0x12c8]
  7d2113:	c5 7b 11 bd 38 fe ff 	vmovsd QWORD PTR [rbp-0x1c8],xmm15
  7d211a:	ff 
  7d211b:	c4 41 7b 5e e5       	vdivsd xmm12,xmm0,xmm13
  7d2120:	c4 01 7b 10 3c 37    	vmovsd xmm15,QWORD PTR [r15+r14*1]
  7d2126:	4c 8b b5 40 ed ff ff 	mov    r14,QWORD PTR [rbp-0x12c0]
  7d212d:	4c 8b bd 48 ed ff ff 	mov    r15,QWORD PTR [rbp-0x12b8]
  7d2134:	c5 7b 11 bd 30 fe ff 	vmovsd QWORD PTR [rbp-0x1d0],xmm15
  7d213b:	ff 
  7d213c:	c5 fb 11 9d d0 fd ff 	vmovsd QWORD PTR [rbp-0x230],xmm3
  7d2143:	ff 
  7d2144:	c5 fb 5c dc          	vsubsd xmm3,xmm0,xmm4
  7d2148:	c4 01 7b 5e 3c 37    	vdivsd xmm15,xmm0,QWORD PTR [r15+r14*1]
  7d214e:	4c 8b b5 50 ed ff ff 	mov    r14,QWORD PTR [rbp-0x12b0]
  7d2155:	4c 8b bd 80 ed ff ff 	mov    r15,QWORD PTR [rbp-0x1280]
  7d215c:	c5 7b 11 bd 10 fe ff 	vmovsd QWORD PTR [rbp-0x1f0],xmm15
  7d2163:	ff 
  7d2164:	c5 fb 11 ad d8 fd ff 	vmovsd QWORD PTR [rbp-0x228],xmm5
  7d216b:	ff 
  7d216c:	c5 fb 5c ee          	vsubsd xmm5,xmm0,xmm6
  7d2170:	c4 01 7b 10 3c 37    	vmovsd xmm15,QWORD PTR [r15+r14*1]
  7d2176:	4c 8b b5 88 ed ff ff 	mov    r14,QWORD PTR [rbp-0x1278]
  7d217d:	4c 8b bd 70 ee ff ff 	mov    r15,QWORD PTR [rbp-0x1190]
  7d2184:	c5 7b 11 bd 28 fe ff 	vmovsd QWORD PTR [rbp-0x1d8],xmm15
  7d218b:	ff 
  7d218c:	4c 03 ad 80 ee ff ff 	add    r13,QWORD PTR [rbp-0x1180]
  7d2193:	c4 01 7b 5e 3c 37    	vdivsd xmm15,xmm0,QWORD PTR [r15+r14*1]
  7d2199:	4c 8b bd 08 ee ff ff 	mov    r15,QWORD PTR [rbp-0x11f8]
  7d21a0:	c5 7b 11 bd 18 fe ff 	vmovsd QWORD PTR [rbp-0x1e8],xmm15
  7d21a7:	ff 
  7d21a8:	c5 7b 10 3d b0 ac 07 	vmovsd xmm15,QWORD PTR [rip+0x7acb0]        # 84ce60 <__STRLITPACK_0.112+0xd50>
  7d21af:	00 
  7d21b0:	c4 41 03 59 7c d7 f8 	vmulsd xmm15,xmm15,QWORD PTR [r15+rdx*8-0x8]
  7d21b7:	c5 7b 11 bd 20 fe ff 	vmovsd QWORD PTR [rbp-0x1e0],xmm15
  7d21be:	ff 
  7d21bf:	c5 7b 10 3d b1 a5 07 	vmovsd xmm15,QWORD PTR [rip+0x7a5b1]        # 84c778 <__STRLITPACK_0.112+0x668>
  7d21c6:	00 
  7d21c7:	c4 41 03 59 7c d7 f8 	vmulsd xmm15,xmm15,QWORD PTR [r15+rdx*8-0x8]
  7d21ce:	4c 89 ad c8 fc ff ff 	mov    QWORD PTR [rbp-0x338],r13
  7d21d5:	c5 7b 11 bd b8 ec ff 	vmovsd QWORD PTR [rbp-0x1348],xmm15
  7d21dc:	ff 
  7d21dd:	c5 fb 11 8d 60 fc ff 	vmovsd QWORD PTR [rbp-0x3a0],xmm1
  7d21e4:	ff 
  7d21e5:	c5 fb 11 95 98 fc ff 	vmovsd QWORD PTR [rbp-0x368],xmm2
  7d21ec:	ff 
  7d21ed:	c5 fb 11 9d 50 fc ff 	vmovsd QWORD PTR [rbp-0x3b0],xmm3
  7d21f4:	ff 
  7d21f5:	c5 fb 11 a5 88 fc ff 	vmovsd QWORD PTR [rbp-0x378],xmm4
  7d21fc:	ff 
  7d21fd:	c5 fb 11 ad 40 fc ff 	vmovsd QWORD PTR [rbp-0x3c0],xmm5
  7d2204:	ff 
  7d2205:	c5 fb 11 b5 80 fc ff 	vmovsd QWORD PTR [rbp-0x380],xmm6
  7d220c:	ff 
  7d220d:	c5 fb 11 bd 68 fc ff 	vmovsd QWORD PTR [rbp-0x398],xmm7
  7d2214:	ff 
  7d2215:	c5 7b 11 85 38 fc ff 	vmovsd QWORD PTR [rbp-0x3c8],xmm8
  7d221c:	ff 
  7d221d:	c5 7b 11 8d 30 fc ff 	vmovsd QWORD PTR [rbp-0x3d0],xmm9
  7d2224:	ff 
  7d2225:	c5 7b 11 95 70 fc ff 	vmovsd QWORD PTR [rbp-0x390],xmm10
  7d222c:	ff 
  7d222d:	c5 7b 11 9d 78 fc ff 	vmovsd QWORD PTR [rbp-0x388],xmm11
  7d2234:	ff 
  7d2235:	c5 7b 11 a5 48 fc ff 	vmovsd QWORD PTR [rbp-0x3b8],xmm12
  7d223c:	ff 
  7d223d:	c5 7b 11 ad 58 fc ff 	vmovsd QWORD PTR [rbp-0x3a8],xmm13
  7d2244:	ff 
  7d2245:	c5 7b 11 b5 90 fc ff 	vmovsd QWORD PTR [rbp-0x370],xmm14
  7d224c:	ff 
  7d224d:	48 89 85 58 fd ff ff 	mov    QWORD PTR [rbp-0x2a8],rax
  7d2254:	48 89 8d 38 fd ff ff 	mov    QWORD PTR [rbp-0x2c8],rcx
  7d225b:	48 89 b5 50 fd ff ff 	mov    QWORD PTR [rbp-0x2b0],rsi
  7d2262:	48 89 bd 10 fd ff ff 	mov    QWORD PTR [rbp-0x2f0],rdi
  7d2269:	4c 89 85 20 fd ff ff 	mov    QWORD PTR [rbp-0x2e0],r8
  7d2270:	4c 89 8d b0 fc ff ff 	mov    QWORD PTR [rbp-0x350],r9
  7d2277:	4c 89 95 b8 fc ff ff 	mov    QWORD PTR [rbp-0x348],r10
  7d227e:	4c 89 9d c0 fc ff ff 	mov    QWORD PTR [rbp-0x340],r11
  7d2285:	4c 8b bd c0 ec ff ff 	mov    r15,QWORD PTR [rbp-0x1340]
  7d228c:	4c 8b ad d8 ec ff ff 	mov    r13,QWORD PTR [rbp-0x1328]
  7d2293:	4c 8b b5 88 ef ff ff 	mov    r14,QWORD PTR [rbp-0x1078]
  7d229a:	48 8b 85 c8 fc ff ff 	mov    rax,QWORD PTR [rbp-0x338]
  7d22a1:	c4 a1 7b 10 04 f0    	vmovsd xmm0,QWORD PTR [rax+r14*8]
  7d22a7:	c5 fb 11 85 00 fd ff 	vmovsd QWORD PTR [rbp-0x300],xmm0
  7d22ae:	ff 
  7d22af:	c5 fb 5c 0d b9 ab 07 	vsubsd xmm1,xmm0,QWORD PTR [rip+0x7abb9]        # 84ce70 <__STRLITPACK_0.112+0xd60>
  7d22b6:	00 
  7d22b7:	c5 f3 59 05 a9 ab 07 	vmulsd xmm0,xmm1,QWORD PTR [rip+0x7aba9]        # 84ce68 <__STRLITPACK_0.112+0xd58>
  7d22be:	00 
  7d22bf:	c5 f8 77             	vzeroupper 
  7d22c2:	e8 e9 d5 ce ff       	call   4bf8b0 <exp>
  7d22c7:	48 8b 85 58 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2a8]
  7d22ce:	c5 f9 28 c8          	vmovapd xmm1,xmm0
  7d22d2:	48 83 bd d8 fe ff ff 	cmp    QWORD PTR [rbp-0x128],0x0
  7d22d9:	00 
  7d22da:	c4 a1 7b 10 14 f0    	vmovsd xmm2,QWORD PTR [rax+r14*8]
  7d22e0:	0f 8e 5d 27 00 00    	jle    7d4a43 <biology_mod_mp_biology_tile_+0x8a33>
  7d22e6:	48 8b 85 c0 fa ff ff 	mov    rax,QWORD PTR [rbp-0x540]
  7d22ed:	48 8b 95 b8 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x548]
  7d22f4:	c5 eb 58 44 d0 f8    	vaddsd xmm0,xmm2,QWORD PTR [rax+rdx*8-0x8]
  7d22fa:	c5 eb 5e d0          	vdivsd xmm2,xmm2,xmm0
  7d22fe:	c5 fb 11 95 88 fd ff 	vmovsd QWORD PTR [rbp-0x278],xmm2
  7d2305:	ff 
  7d2306:	48 8b 85 88 fe ff ff 	mov    rax,QWORD PTR [rbp-0x178]
  7d230d:	c4 a1 7b 10 14 f0    	vmovsd xmm2,QWORD PTR [rax+r14*8]
  7d2313:	c5 eb 59 9d 30 fe ff 	vmulsd xmm3,xmm2,QWORD PTR [rbp-0x1d0]
  7d231a:	ff 
  7d231b:	c5 e1 57 05 9d 95 07 	vxorpd xmm0,xmm3,XMMWORD PTR [rip+0x7959d]        # 84b8c0 <__STRLITPACK_44.95+0x10>
  7d2322:	00 
  7d2323:	c5 fb 11 95 80 fd ff 	vmovsd QWORD PTR [rbp-0x280],xmm2
  7d232a:	ff 
  7d232b:	c5 fb 11 8d f0 fe ff 	vmovsd QWORD PTR [rbp-0x110],xmm1
  7d2332:	ff 
  7d2333:	e8 78 d5 ce ff       	call   4bf8b0 <exp>
  7d2338:	48 8b 85 c0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x140]
  7d233f:	c5 7b 10 9d 80 fd ff 	vmovsd xmm11,QWORD PTR [rbp-0x280]
  7d2346:	ff 
  7d2347:	c5 a3 59 95 48 fc ff 	vmulsd xmm2,xmm11,QWORD PTR [rbp-0x3b8]
  7d234e:	ff 
  7d234f:	c4 a1 7b 10 34 f0    	vmovsd xmm6,QWORD PTR [rax+r14*8]
  7d2355:	c5 cb 59 9d 90 fd ff 	vmulsd xmm3,xmm6,QWORD PTR [rbp-0x270]
  7d235c:	ff 
  7d235d:	c5 eb 58 25 1b 9e 07 	vaddsd xmm4,xmm2,QWORD PTR [rip+0x79e1b]        # 84c180 <__STRLITPACK_0.112+0x70>
  7d2364:	00 
  7d2365:	c5 cb 59 f8          	vmulsd xmm7,xmm6,xmm0
  7d2369:	c5 e3 59 e8          	vmulsd xmm5,xmm3,xmm0
  7d236d:	48 8b bd 38 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2c8]
  7d2374:	c5 5b 58 d5          	vaddsd xmm10,xmm4,xmm5
  7d2378:	c5 2b 59 85 90 fc ff 	vmulsd xmm8,xmm10,QWORD PTR [rbp-0x370]
  7d237f:	ff 
  7d2380:	c5 2b 59 a5 58 fc ff 	vmulsd xmm12,xmm10,QWORD PTR [rbp-0x3a8]
  7d2387:	ff 
  7d2388:	c4 41 43 5e c8       	vdivsd xmm9,xmm7,xmm8
  7d238d:	c4 41 23 5e ec       	vdivsd xmm13,xmm11,xmm12
  7d2392:	48 8b 8d b8 fc ff ff 	mov    rcx,QWORD PTR [rbp-0x348]
  7d2399:	c4 21 7b 10 3c f7    	vmovsd xmm15,QWORD PTR [rdi+r14*8]
  7d239f:	c5 7b 11 bd 70 fd ff 	vmovsd QWORD PTR [rbp-0x290],xmm15
  7d23a6:	ff 
  7d23a7:	c4 a1 7b 10 04 f1    	vmovsd xmm0,QWORD PTR [rcx+r14*8]
  7d23ad:	c5 7b 59 bd 10 fe ff 	vmulsd xmm15,xmm0,QWORD PTR [rbp-0x1f0]
  7d23b4:	ff 
  7d23b5:	48 8b b5 b0 fc ff ff 	mov    rsi,QWORD PTR [rbp-0x350]
  7d23bc:	48 8b 95 c0 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x340]
  7d23c3:	c5 fb 11 85 48 fd ff 	vmovsd QWORD PTR [rbp-0x2b8],xmm0
  7d23ca:	ff 
  7d23cb:	c4 a1 7b 10 14 f6    	vmovsd xmm2,QWORD PTR [rsi+r14*8]
  7d23d1:	c5 83 59 da          	vmulsd xmm3,xmm15,xmm2
  7d23d5:	c4 21 7b 10 34 f2    	vmovsd xmm14,QWORD PTR [rdx+r14*8]
  7d23db:	c5 fb 10 8d f0 fe ff 	vmovsd xmm1,QWORD PTR [rbp-0x110]
  7d23e2:	ff 
  7d23e3:	c5 e1 57 05 d5 94 07 	vxorpd xmm0,xmm3,XMMWORD PTR [rip+0x794d5]        # 84b8c0 <__STRLITPACK_44.95+0x10>
  7d23ea:	00 
  7d23eb:	c5 fb 11 b5 f0 fc ff 	vmovsd QWORD PTR [rbp-0x310],xmm6
  7d23f2:	ff 
  7d23f3:	c5 7b 11 8d 78 fd ff 	vmovsd QWORD PTR [rbp-0x288],xmm9
  7d23fa:	ff 
  7d23fb:	c5 7b 11 ad 60 fd ff 	vmovsd QWORD PTR [rbp-0x2a0],xmm13
  7d2402:	ff 
  7d2403:	c5 7b 11 b5 68 fd ff 	vmovsd QWORD PTR [rbp-0x298],xmm14
  7d240a:	ff 
  7d240b:	c5 fb 11 95 08 fd ff 	vmovsd QWORD PTR [rbp-0x2f8],xmm2
  7d2412:	ff 
  7d2413:	c5 fb 11 8d f0 fe ff 	vmovsd QWORD PTR [rbp-0x110],xmm1
  7d241a:	ff 
  7d241b:	e8 90 d4 ce ff       	call   4bf8b0 <exp>
  7d2420:	c5 fb 10 15 58 9d 07 	vmovsd xmm2,QWORD PTR [rip+0x79d58]        # 84c180 <__STRLITPACK_0.112+0x70>
  7d2427:	00 
  7d2428:	c5 fb 10 bd 78 fd ff 	vmovsd xmm7,QWORD PTR [rbp-0x288]
  7d242f:	ff 
  7d2430:	c5 eb 5c d8          	vsubsd xmm3,xmm2,xmm0
  7d2434:	c5 c3 58 25 0c aa 07 	vaddsd xmm4,xmm7,QWORD PTR [rip+0x7aa0c]        # 84ce48 <__STRLITPACK_0.112+0xd38>
  7d243b:	00 
  7d243c:	c5 e3 59 ad 68 fd ff 	vmulsd xmm5,xmm3,QWORD PTR [rbp-0x298]
  7d2443:	ff 
  7d2444:	c5 7b 10 8d 70 fd ff 	vmovsd xmm9,QWORD PTR [rbp-0x290]
  7d244b:	ff 
  7d244c:	c5 7b 10 85 60 fd ff 	vmovsd xmm8,QWORD PTR [rbp-0x2a0]
  7d2453:	ff 
  7d2454:	c5 7b 10 bd 80 fd ff 	vmovsd xmm15,QWORD PTR [rbp-0x280]
  7d245b:	ff 
  7d245c:	c4 c1 5b 58 f0       	vaddsd xmm6,xmm4,xmm8
  7d2461:	c5 83 59 85 28 fe ff 	vmulsd xmm0,xmm15,QWORD PTR [rbp-0x1d8]
  7d2468:	ff 
  7d2469:	c4 41 43 58 d8       	vaddsd xmm11,xmm7,xmm8
  7d246e:	c5 33 58 95 78 fc ff 	vaddsd xmm10,xmm9,QWORD PTR [rbp-0x388]
  7d2475:	ff 
  7d2476:	c5 53 5e ee          	vdivsd xmm13,xmm5,xmm6
  7d247a:	c4 41 33 5e e2       	vdivsd xmm12,xmm9,xmm10
  7d247f:	c5 fb 10 8d f0 fe ff 	vmovsd xmm1,QWORD PTR [rbp-0x110]
  7d2486:	ff 
  7d2487:	c4 41 23 5d dc       	vminsd xmm11,xmm11,xmm12
  7d248c:	c4 41 13 59 f3       	vmulsd xmm14,xmm13,xmm11
  7d2491:	c5 f9 57 05 27 94 07 	vxorpd xmm0,xmm0,XMMWORD PTR [rip+0x79427]        # 84b8c0 <__STRLITPACK_44.95+0x10>
  7d2498:	00 
  7d2499:	c5 7b 11 b5 18 fd ff 	vmovsd QWORD PTR [rbp-0x2e8],xmm14
  7d24a0:	ff 
  7d24a1:	c5 fb 11 8d f0 fe ff 	vmovsd QWORD PTR [rbp-0x110],xmm1
  7d24a8:	ff 
  7d24a9:	e8 02 d4 ce ff       	call   4bf8b0 <exp>
  7d24ae:	c5 7b 10 b5 80 fd ff 	vmovsd xmm14,QWORD PTR [rbp-0x280]
  7d24b5:	ff 
  7d24b6:	c5 79 28 d0          	vmovapd xmm10,xmm0
  7d24ba:	c5 7b 10 8d f0 fc ff 	vmovsd xmm9,QWORD PTR [rbp-0x310]
  7d24c1:	ff 
  7d24c2:	c5 8b 59 ad a0 fd ff 	vmulsd xmm5,xmm14,QWORD PTR [rbp-0x260]
  7d24c9:	ff 
  7d24ca:	c5 b3 59 b5 98 fd ff 	vmulsd xmm6,xmm9,QWORD PTR [rbp-0x268]
  7d24d1:	ff 
  7d24d2:	c4 41 33 59 da       	vmulsd xmm11,xmm9,xmm10
  7d24d7:	c5 d3 58 3d a1 9c 07 	vaddsd xmm7,xmm5,QWORD PTR [rip+0x79ca1]        # 84c180 <__STRLITPACK_0.112+0x70>
  7d24de:	00 
  7d24df:	c4 41 4b 59 c2       	vmulsd xmm8,xmm6,xmm10
  7d24e4:	c5 fb 10 9d 48 fd ff 	vmovsd xmm3,QWORD PTR [rbp-0x2b8]
  7d24eb:	ff 
  7d24ec:	c4 41 43 58 e8       	vaddsd xmm13,xmm7,xmm8
  7d24f1:	c5 e3 59 a5 18 fe ff 	vmulsd xmm4,xmm3,QWORD PTR [rbp-0x1e8]
  7d24f8:	ff 
  7d24f9:	c5 13 59 a5 70 fc ff 	vmulsd xmm12,xmm13,QWORD PTR [rbp-0x390]
  7d2500:	ff 
  7d2501:	c5 db 59 95 08 fd ff 	vmulsd xmm2,xmm4,QWORD PTR [rbp-0x2f8]
  7d2508:	ff 
  7d2509:	c5 13 59 bd 30 fc ff 	vmulsd xmm15,xmm13,QWORD PTR [rbp-0x3d0]
  7d2510:	ff 
  7d2511:	c4 c1 23 5e dc       	vdivsd xmm3,xmm11,xmm12
  7d2516:	48 8b 85 50 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b0]
  7d251d:	48 8b 95 70 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x190]
  7d2524:	c5 e9 57 05 94 93 07 	vxorpd xmm0,xmm2,XMMWORD PTR [rip+0x79394]        # 84b8c0 <__STRLITPACK_44.95+0x10>
  7d252b:	00 
  7d252c:	c4 a1 7b 10 14 f0    	vmovsd xmm2,QWORD PTR [rax+r14*8]
  7d2532:	c4 a1 7b 10 2c f2    	vmovsd xmm5,QWORD PTR [rdx+r14*8]
  7d2538:	c5 fb 10 8d f0 fe ff 	vmovsd xmm1,QWORD PTR [rbp-0x110]
  7d253f:	ff 
  7d2540:	c4 c1 0b 5e e7       	vdivsd xmm4,xmm14,xmm15
  7d2545:	c5 fb 11 95 30 fd ff 	vmovsd QWORD PTR [rbp-0x2d0],xmm2
  7d254c:	ff 
  7d254d:	c5 fb 11 ad 40 fd ff 	vmovsd QWORD PTR [rbp-0x2c0],xmm5
  7d2554:	ff 
  7d2555:	c5 fb 11 a5 f8 fe ff 	vmovsd QWORD PTR [rbp-0x108],xmm4
  7d255c:	ff 
  7d255d:	c5 fb 11 9d 00 ff ff 	vmovsd QWORD PTR [rbp-0x100],xmm3
  7d2564:	ff 
  7d2565:	c5 fb 11 8d f0 fe ff 	vmovsd QWORD PTR [rbp-0x110],xmm1
  7d256c:	ff 
  7d256d:	e8 3e d3 ce ff       	call   4bf8b0 <exp>
  7d2572:	c5 fb 10 b5 68 fc ff 	vmovsd xmm6,QWORD PTR [rbp-0x398]
  7d2579:	ff 
  7d257a:	c5 4b 59 85 78 fd ff 	vmulsd xmm8,xmm6,QWORD PTR [rbp-0x288]
  7d2581:	ff 
  7d2582:	c5 4b 59 8d 60 fd ff 	vmulsd xmm9,xmm6,QWORD PTR [rbp-0x2a0]
  7d2589:	ff 
  7d258a:	c5 7b 10 1d ee 9b 07 	vmovsd xmm11,QWORD PTR [rip+0x79bee]        # 84c180 <__STRLITPACK_0.112+0x70>
  7d2591:	00 
  7d2592:	c5 7b 10 a5 18 fd ff 	vmovsd xmm12,QWORD PTR [rbp-0x2e8]
  7d2599:	ff 
  7d259a:	c5 23 5c d0          	vsubsd xmm10,xmm11,xmm0
  7d259e:	c4 c1 3b 59 ec       	vmulsd xmm5,xmm8,xmm12
  7d25a3:	c4 c1 33 59 fc       	vmulsd xmm7,xmm9,xmm12
  7d25a8:	c5 ab 59 85 68 fd ff 	vmulsd xmm0,xmm10,QWORD PTR [rbp-0x298]
  7d25af:	ff 
  7d25b0:	c5 7b 10 ad 80 fd ff 	vmovsd xmm13,QWORD PTR [rbp-0x280]
  7d25b7:	ff 
  7d25b8:	c5 fb 10 9d 00 ff ff 	vmovsd xmm3,QWORD PTR [rbp-0x100]
  7d25bf:	ff 
  7d25c0:	c5 fb 10 b5 70 fd ff 	vmovsd xmm6,QWORD PTR [rbp-0x290]
  7d25c7:	ff 
  7d25c8:	c5 7b 10 a5 40 fd ff 	vmovsd xmm12,QWORD PTR [rbp-0x2c0]
  7d25cf:	ff 
  7d25d0:	c5 13 59 b5 d0 fd ff 	vmulsd xmm14,xmm13,QWORD PTR [rbp-0x230]
  7d25d7:	ff 
  7d25d8:	c5 4b 58 8d 38 fc ff 	vaddsd xmm9,xmm6,QWORD PTR [rbp-0x3c8]
  7d25df:	ff 
  7d25e0:	c5 1b 58 ad b0 fd ff 	vaddsd xmm13,xmm12,QWORD PTR [rbp-0x250]
  7d25e7:	ff 
  7d25e8:	c5 63 58 3d 58 a8 07 	vaddsd xmm15,xmm3,QWORD PTR [rip+0x7a858]        # 84ce48 <__STRLITPACK_0.112+0xd38>
  7d25ef:	00 
  7d25f0:	c5 fb 10 a5 f8 fe ff 	vmovsd xmm4,QWORD PTR [rbp-0x108]
  7d25f7:	ff 
  7d25f8:	c5 7b 10 95 30 fd ff 	vmovsd xmm10,QWORD PTR [rbp-0x2d0]
  7d25ff:	ff 
  7d2600:	c5 83 58 d4          	vaddsd xmm2,xmm15,xmm4
  7d2604:	c5 2b 58 85 a8 fd ff 	vaddsd xmm8,xmm10,QWORD PTR [rbp-0x258]
  7d260b:	ff 
  7d260c:	c4 41 1b 5e fd       	vdivsd xmm15,xmm12,xmm13
  7d2611:	c5 7b 11 b5 d8 fc ff 	vmovsd QWORD PTR [rbp-0x328],xmm14
  7d2618:	ff 
  7d2619:	c4 41 4b 5e f1       	vdivsd xmm14,xmm6,xmm9
  7d261e:	c5 7b 10 9d f0 fd ff 	vmovsd xmm11,QWORD PTR [rbp-0x210]
  7d2625:	ff 
  7d2626:	c4 41 0b 5d f7       	vminsd xmm14,xmm14,xmm15
  7d262b:	c5 fb 5e d2          	vdivsd xmm2,xmm0,xmm2
  7d262f:	c5 7b 10 8d 00 fd ff 	vmovsd xmm9,QWORD PTR [rbp-0x300]
  7d2636:	ff 
  7d2637:	c5 e3 58 c4          	vaddsd xmm0,xmm3,xmm4
  7d263b:	c4 c1 63 59 db       	vmulsd xmm3,xmm3,xmm11
  7d2640:	c4 c1 5b 59 e3       	vmulsd xmm4,xmm4,xmm11
  7d2645:	c4 41 2b 5e d8       	vdivsd xmm11,xmm10,xmm8
  7d264a:	c5 33 59 a5 20 fe ff 	vmulsd xmm12,xmm9,QWORD PTR [rbp-0x1e0]
  7d2651:	ff 
  7d2652:	c4 41 23 5d de       	vminsd xmm11,xmm11,xmm14
  7d2657:	48 8b 85 b0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x150]
  7d265e:	c4 c1 7b 5d c3       	vminsd xmm0,xmm0,xmm11
  7d2663:	c5 eb 59 d0          	vmulsd xmm2,xmm2,xmm0
  7d2667:	c4 81 7b 10 44 f5 00 	vmovsd xmm0,QWORD PTR [r13+r14*8+0x0]
  7d266e:	c5 7b 59 9d b8 fd ff 	vmulsd xmm11,xmm0,QWORD PTR [rbp-0x248]
  7d2675:	ff 
  7d2676:	c5 63 59 d2          	vmulsd xmm10,xmm3,xmm2
  7d267a:	c5 5b 59 c2          	vmulsd xmm8,xmm4,xmm2
  7d267e:	c5 ab 59 d0          	vmulsd xmm2,xmm10,xmm0
  7d2682:	c5 7b 11 9d d0 fc ff 	vmovsd QWORD PTR [rbp-0x330],xmm11
  7d2689:	ff 
  7d268a:	c4 01 7b 10 1c f4    	vmovsd xmm11,QWORD PTR [r12+r14*8]
  7d2690:	c4 81 7b 10 24 f7    	vmovsd xmm4,QWORD PTR [r15+r14*8]
  7d2696:	c5 23 59 95 c0 fd ff 	vmulsd xmm10,xmm11,QWORD PTR [rbp-0x240]
  7d269d:	ff 
  7d269e:	c5 d3 59 dc          	vmulsd xmm3,xmm5,xmm4
  7d26a2:	c5 db 59 ad e8 fd ff 	vmulsd xmm5,xmm4,QWORD PTR [rbp-0x218]
  7d26a9:	ff 
  7d26aa:	c5 c3 59 fc          	vmulsd xmm7,xmm7,xmm4
  7d26ae:	c5 7b 10 35 c2 a7 07 	vmovsd xmm14,QWORD PTR [rip+0x7a7c2]        # 84ce78 <__STRLITPACK_0.112+0xd68>
  7d26b5:	00 
  7d26b6:	c5 7b 11 95 f8 fc ff 	vmovsd QWORD PTR [rbp-0x308],xmm10
  7d26bd:	ff 
  7d26be:	c4 41 0b 58 ec       	vaddsd xmm13,xmm14,xmm12
  7d26c3:	c4 21 7b 10 14 f0    	vmovsd xmm10,QWORD PTR [rax+r14*8]
  7d26c9:	c4 41 13 5f ee       	vmaxsd xmm13,xmm13,xmm14
  7d26ce:	c5 fb 11 ad e0 fc ff 	vmovsd QWORD PTR [rbp-0x320],xmm5
  7d26d5:	ff 
  7d26d6:	c5 ab 59 ad 48 fe ff 	vmulsd xmm5,xmm10,QWORD PTR [rbp-0x1b8]
  7d26dd:	ff 
  7d26de:	c5 fb 11 bd 28 fd ff 	vmovsd QWORD PTR [rbp-0x2d8],xmm7
  7d26e5:	ff 
  7d26e6:	c5 bb 59 f8          	vmulsd xmm7,xmm8,xmm0
  7d26ea:	c5 2b 59 85 c8 fd ff 	vmulsd xmm8,xmm10,QWORD PTR [rbp-0x238]
  7d26f1:	ff 
  7d26f2:	c4 c1 53 59 f2       	vmulsd xmm6,xmm5,xmm10
  7d26f7:	48 8b 95 10 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x2f0]
  7d26fe:	c5 7b 11 85 e8 fc ff 	vmovsd QWORD PTR [rbp-0x318],xmm8
  7d2705:	ff 
  7d2706:	c5 fb 10 8d f0 fe ff 	vmovsd xmm1,QWORD PTR [rbp-0x110]
  7d270d:	ff 
  7d270e:	c4 21 7b 10 04 f2    	vmovsd xmm8,QWORD PTR [rdx+r14*8]
  7d2714:	c5 fb 11 b5 a0 fc ff 	vmovsd QWORD PTR [rbp-0x360],xmm6
  7d271b:	ff 
  7d271c:	c4 41 13 59 f8       	vmulsd xmm15,xmm13,xmm8
  7d2721:	48 83 bd d8 fe ff ff 	cmp    QWORD PTR [rbp-0x128],0x0
  7d2728:	00 
  7d2729:	0f 8e 07 23 00 00    	jle    7d4a36 <biology_mod_mp_biology_tile_+0x8a26>
  7d272f:	c4 c1 79 28 e9       	vmovapd xmm5,xmm9
  7d2734:	c5 d3 59 35 4c a7 07 	vmulsd xmm6,xmm5,QWORD PTR [rip+0x7a74c]        # 84ce88 <__STRLITPACK_0.112+0xd78>
  7d273b:	00 
  7d273c:	c5 cb 58 2d bc 9a 07 	vaddsd xmm5,xmm6,QWORD PTR [rip+0x79abc]        # 84c200 <__STRLITPACK_0.112+0xf0>
  7d2743:	00 
  7d2744:	c5 d3 5f 2d 44 a7 07 	vmaxsd xmm5,xmm5,QWORD PTR [rip+0x7a744]        # 84ce90 <__STRLITPACK_0.112+0xd80>
  7d274b:	00 
  7d274c:	c5 23 59 ad e0 fd ff 	vmulsd xmm13,xmm11,QWORD PTR [rbp-0x220]
  7d2753:	ff 
  7d2754:	c5 7b 59 a5 78 fe ff 	vmulsd xmm12,xmm0,QWORD PTR [rbp-0x188]
  7d275b:	ff 
  7d275c:	c5 bb 59 b5 80 fe ff 	vmulsd xmm6,xmm8,QWORD PTR [rbp-0x180]
  7d2763:	ff 
  7d2764:	c4 41 7b 59 f4       	vmulsd xmm14,xmm0,xmm12
  7d2769:	c4 41 13 58 cc       	vaddsd xmm9,xmm13,xmm12
  7d276e:	48 8b 85 20 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2e0]
  7d2775:	c4 a1 53 59 2c f0    	vmulsd xmm5,xmm5,QWORD PTR [rax+r14*8]
  7d277b:	c5 fb 11 ad a8 fc ff 	vmovsd QWORD PTR [rbp-0x358],xmm5
  7d2782:	ff 
  7d2783:	c5 b3 58 ee          	vaddsd xmm5,xmm9,xmm6
  7d2787:	c4 41 23 59 cd       	vmulsd xmm9,xmm11,xmm13
  7d278c:	c5 bb 59 f6          	vmulsd xmm6,xmm8,xmm6
  7d2790:	c4 41 0b 58 e1       	vaddsd xmm12,xmm14,xmm9
  7d2795:	c4 41 11 57 ed       	vxorpd xmm13,xmm13,xmm13
  7d279a:	c5 1b 58 e6          	vaddsd xmm12,xmm12,xmm6
  7d279e:	c5 79 2f ed          	vcomisd xmm13,xmm5
  7d27a2:	72 1e                	jb     7d27c2 <biology_mod_mp_biology_tile_+0x67b2>
  7d27a4:	c5 c9 57 f6          	vxorpd xmm6,xmm6,xmm6
  7d27a8:	c4 c1 79 2f f4       	vcomisd xmm6,xmm12
  7d27ad:	72 13                	jb     7d27c2 <biology_mod_mp_biology_tile_+0x67b2>
  7d27af:	c4 41 31 57 c9       	vxorpd xmm9,xmm9,xmm9
  7d27b4:	c4 c1 79 28 e9       	vmovapd xmm5,xmm9
  7d27b9:	c5 f9 28 f5          	vmovapd xmm6,xmm5
  7d27bd:	e9 8e 00 00 00       	jmp    7d2850 <biology_mod_mp_biology_tile_+0x6840>
  7d27c2:	48 8b 85 a8 fa ff ff 	mov    rax,QWORD PTR [rbp-0x558]
  7d27c9:	48 8b 8d b8 fa ff ff 	mov    rcx,QWORD PTR [rbp-0x548]
  7d27d0:	c5 fb 10 35 a8 99 07 	vmovsd xmm6,QWORD PTR [rip+0x799a8]        # 84c180 <__STRLITPACK_0.112+0x70>
  7d27d7:	00 
  7d27d8:	c5 7b 10 ad 78 fe ff 	vmovsd xmm13,QWORD PTR [rbp-0x188]
  7d27df:	ff 
  7d27e0:	c5 53 59 4c c8 f8    	vmulsd xmm9,xmm5,QWORD PTR [rax+rcx*8-0x8]
  7d27e6:	48 8b 95 b0 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x550]
  7d27ed:	c4 41 33 58 e4       	vaddsd xmm12,xmm9,xmm12
  7d27f2:	c5 13 59 74 ca f8    	vmulsd xmm14,xmm13,QWORD PTR [rdx+rcx*8-0x8]
  7d27f8:	c4 c1 4b 5e ec       	vdivsd xmm5,xmm6,xmm12
  7d27fd:	c5 0b 59 c8          	vmulsd xmm9,xmm14,xmm0
  7d2801:	c5 7b 10 ad e0 fd ff 	vmovsd xmm13,QWORD PTR [rbp-0x220]
  7d2808:	ff 
  7d2809:	c5 b3 59 f0          	vmulsd xmm6,xmm9,xmm0
  7d280d:	c5 13 59 74 ca f8    	vmulsd xmm14,xmm13,QWORD PTR [rdx+rcx*8-0x8]
  7d2813:	c4 41 4b 59 e2       	vmulsd xmm12,xmm6,xmm10
  7d2818:	c4 c1 0b 59 f3       	vmulsd xmm6,xmm14,xmm11
  7d281d:	c5 1b 59 cd          	vmulsd xmm9,xmm12,xmm5
  7d2821:	c4 41 4b 59 e3       	vmulsd xmm12,xmm6,xmm11
  7d2826:	c5 7b 10 b5 80 fe ff 	vmovsd xmm14,QWORD PTR [rbp-0x180]
  7d282d:	ff 
  7d282e:	c4 41 1b 59 ea       	vmulsd xmm13,xmm12,xmm10
  7d2833:	c5 0b 59 64 ca f8    	vmulsd xmm12,xmm14,QWORD PTR [rdx+rcx*8-0x8]
  7d2839:	c5 93 59 f5          	vmulsd xmm6,xmm13,xmm5
  7d283d:	c4 41 1b 59 e8       	vmulsd xmm13,xmm12,xmm8
  7d2842:	c4 41 13 59 c0       	vmulsd xmm8,xmm13,xmm8
  7d2847:	c4 41 3b 59 d2       	vmulsd xmm10,xmm8,xmm10
  7d284c:	c5 ab 59 ed          	vmulsd xmm5,xmm10,xmm5
  7d2850:	c5 23 59 b5 60 fe ff 	vmulsd xmm14,xmm11,QWORD PTR [rbp-0x1a0]
  7d2857:	ff 
  7d2858:	c5 7b 10 1d 20 a6 07 	vmovsd xmm11,QWORD PTR [rip+0x7a620]        # 84ce80 <__STRLITPACK_0.112+0xd70>
  7d285f:	00 
  7d2860:	c4 41 29 57 d2       	vxorpd xmm10,xmm10,xmm10
  7d2865:	c5 0b 59 ec          	vmulsd xmm13,xmm14,xmm4
  7d2869:	c5 79 2f dc          	vcomisd xmm11,xmm4
  7d286d:	c5 db 58 a5 d8 fd ff 	vaddsd xmm4,xmm4,QWORD PTR [rbp-0x228]
  7d2874:	ff 
  7d2875:	c5 13 5e ec          	vdivsd xmm13,xmm13,xmm4
  7d2879:	72 05                	jb     7d2880 <biology_mod_mp_biology_tile_+0x6870>
  7d287b:	c4 41 78 28 ea       	vmovaps xmm13,xmm10
  7d2880:	c5 79 2f d8          	vcomisd xmm11,xmm0
  7d2884:	c5 63 58 da          	vaddsd xmm11,xmm3,xmm2
  7d2888:	72 05                	jb     7d288f <biology_mod_mp_biology_tile_+0x687f>
  7d288a:	c4 41 78 28 ca       	vmovaps xmm9,xmm10
  7d288f:	72 05                	jb     7d2896 <biology_mod_mp_biology_tile_+0x6886>
  7d2891:	c4 c1 78 28 ea       	vmovaps xmm5,xmm10
  7d2896:	72 05                	jb     7d289d <biology_mod_mp_biology_tile_+0x688d>
  7d2898:	c4 c1 78 28 f2       	vmovaps xmm6,xmm10
  7d289d:	c5 fb 11 b5 18 ff ff 	vmovsd QWORD PTR [rbp-0xe8],xmm6
  7d28a4:	ff 
  7d28a5:	c5 b3 58 c5          	vaddsd xmm0,xmm9,xmm5
  7d28a9:	c5 fb 10 a5 28 fd ff 	vmovsd xmm4,QWORD PTR [rbp-0x2d8]
  7d28b0:	ff 
  7d28b1:	c5 fb 58 f6          	vaddsd xmm6,xmm0,xmm6
  7d28b5:	c5 63 58 c4          	vaddsd xmm8,xmm3,xmm4
  7d28b9:	c5 db 58 df          	vaddsd xmm3,xmm4,xmm7
  7d28bd:	c5 fb 11 b5 20 ff ff 	vmovsd QWORD PTR [rbp-0xe0],xmm6
  7d28c4:	ff 
  7d28c5:	c5 fb 10 a5 d8 fc ff 	vmovsd xmm4,QWORD PTR [rbp-0x328]
  7d28cc:	ff 
  7d28cd:	c5 fb 10 b5 88 fd ff 	vmovsd xmm6,QWORD PTR [rbp-0x278]
  7d28d4:	ff 
  7d28d5:	c5 4b 59 e4          	vmulsd xmm12,xmm6,xmm4
  7d28d9:	c5 21 57 15 df 8f 07 	vxorpd xmm10,xmm11,XMMWORD PTR [rip+0x78fdf]        # 84b8c0 <__STRLITPACK_44.95+0x10>
  7d28e0:	00 
  7d28e1:	c5 7b 10 b5 f8 fc ff 	vmovsd xmm14,QWORD PTR [rbp-0x308]
  7d28e8:	ff 
  7d28e9:	c4 41 2b 58 e4       	vaddsd xmm12,xmm10,xmm12
  7d28ee:	c5 7b 10 95 e8 fc ff 	vmovsd xmm10,QWORD PTR [rbp-0x318]
  7d28f5:	ff 
  7d28f6:	c5 fb 11 ad 10 ff ff 	vmovsd QWORD PTR [rbp-0xf0],xmm5
  7d28fd:	ff 
  7d28fe:	c4 c1 0b 58 c2       	vaddsd xmm0,xmm14,xmm10
  7d2903:	c5 a3 59 ad d0 fe ff 	vmulsd xmm5,xmm11,QWORD PTR [rbp-0x130]
  7d290a:	ff 
  7d290b:	c4 41 4b 59 de       	vmulsd xmm11,xmm6,xmm14
  7d2910:	c4 41 4b 59 f2       	vmulsd xmm14,xmm6,xmm10
  7d2915:	c5 7b 11 9d 28 ff ff 	vmovsd QWORD PTR [rbp-0xd8],xmm11
  7d291c:	ff 
  7d291d:	c5 7b 5c dc          	vsubsd xmm11,xmm0,xmm4
  7d2921:	c5 7b 11 b5 30 ff ff 	vmovsd QWORD PTR [rbp-0xd0],xmm14
  7d2928:	ff 
  7d2929:	c4 41 23 58 d7       	vaddsd xmm10,xmm11,xmm15
  7d292e:	c5 2b 59 f6          	vmulsd xmm14,xmm10,xmm6
  7d2932:	c5 61 57 1d 86 8f 07 	vxorpd xmm11,xmm3,XMMWORD PTR [rip+0x78f86]        # 84b8c0 <__STRLITPACK_44.95+0x10>
  7d2939:	00 
  7d293a:	c5 7b 11 ad 08 ff ff 	vmovsd QWORD PTR [rbp-0xf8],xmm13
  7d2941:	ff 
  7d2942:	c4 41 0b 58 d3       	vaddsd xmm10,xmm14,xmm11
  7d2947:	c5 6b 58 f7          	vaddsd xmm14,xmm2,xmm7
  7d294b:	c4 c1 6b 58 d0       	vaddsd xmm2,xmm2,xmm8
  7d2950:	c5 7b 10 9d e0 fc ff 	vmovsd xmm11,QWORD PTR [rbp-0x320]
  7d2957:	ff 
  7d2958:	c5 c3 58 fa          	vaddsd xmm7,xmm7,xmm2
  7d295c:	c4 c1 3b 5c d3       	vsubsd xmm2,xmm8,xmm11
  7d2961:	c5 fb 11 bd 38 ff ff 	vmovsd QWORD PTR [rbp-0xc8],xmm7
  7d2968:	ff 
  7d2969:	c4 41 6b 5c ed       	vsubsd xmm13,xmm2,xmm13
  7d296e:	c4 c1 73 59 fd       	vmulsd xmm7,xmm1,xmm13
  7d2973:	c5 7b 10 ad c8 fa ff 	vmovsd xmm13,QWORD PTR [rbp-0x538]
  7d297a:	ff 
  7d297b:	c5 13 59 c7          	vmulsd xmm8,xmm13,xmm7
  7d297f:	c5 fb 10 bd d0 fc ff 	vmovsd xmm7,QWORD PTR [rbp-0x330]
  7d2986:	ff 
  7d2987:	48 8b 85 c0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x140]
  7d298e:	c5 23 58 df          	vaddsd xmm11,xmm11,xmm7
  7d2992:	48 8b 95 50 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x2b0]
  7d2999:	48 8b 8d 88 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x178]
  7d29a0:	48 8b b5 b0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x150]
  7d29a7:	48 8b bd 10 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2f0]
  7d29ae:	4c 8b 85 20 fd ff ff 	mov    r8,QWORD PTR [rbp-0x2e0]
  7d29b5:	4c 8b 8d 38 fd ff ff 	mov    r9,QWORD PTR [rbp-0x2c8]
  7d29bc:	4c 8b 95 58 fd ff ff 	mov    r10,QWORD PTR [rbp-0x2a8]
  7d29c3:	4c 8b 9d 70 fe ff ff 	mov    r11,QWORD PTR [rbp-0x190]
  7d29ca:	c5 a3 58 95 a0 fc ff 	vaddsd xmm2,xmm11,QWORD PTR [rbp-0x360]
  7d29d1:	ff 
  7d29d2:	c5 03 58 d8          	vaddsd xmm11,xmm15,xmm0
  7d29d6:	c5 f9 57 05 e2 8e 07 	vxorpd xmm0,xmm0,XMMWORD PTR [rip+0x78ee2]        # 84b8c0 <__STRLITPACK_44.95+0x10>
  7d29dd:	00 
  7d29de:	c4 41 4b 59 db       	vmulsd xmm11,xmm6,xmm11
  7d29e3:	c4 c1 7b 5c c7       	vsubsd xmm0,xmm0,xmm15
  7d29e8:	c4 41 4b 59 ff       	vmulsd xmm15,xmm6,xmm15
  7d29ed:	c4 c1 6b 5c d7       	vsubsd xmm2,xmm2,xmm15
  7d29f2:	c5 7b 59 fe          	vmulsd xmm15,xmm0,xmm6
  7d29f6:	c5 cb 58 c6          	vaddsd xmm0,xmm6,xmm6
  7d29fa:	c4 c1 73 59 f4       	vmulsd xmm6,xmm1,xmm12
  7d29ff:	c4 41 2b 5c e4       	vsubsd xmm12,xmm10,xmm12
  7d2a04:	c4 41 73 59 d2       	vmulsd xmm10,xmm1,xmm10
  7d2a09:	c5 83 58 db          	vaddsd xmm3,xmm15,xmm3
  7d2a0d:	c5 fb 59 e4          	vmulsd xmm4,xmm0,xmm4
  7d2a11:	c5 63 59 bd 00 fe ff 	vmulsd xmm15,xmm3,QWORD PTR [rbp-0x200]
  7d2a18:	ff 
  7d2a19:	c5 d3 5c ec          	vsubsd xmm5,xmm5,xmm4
  7d2a1d:	c5 93 59 e6          	vmulsd xmm4,xmm13,xmm6
  7d2a21:	c5 03 58 fd          	vaddsd xmm15,xmm15,xmm5
  7d2a25:	c5 db 58 ad f0 fc ff 	vaddsd xmm5,xmm4,QWORD PTR [rbp-0x310]
  7d2a2c:	ff 
  7d2a2d:	c4 c1 73 59 e4       	vmulsd xmm4,xmm1,xmm12
  7d2a32:	c4 c1 73 59 df       	vmulsd xmm3,xmm1,xmm15
  7d2a37:	c5 93 59 e4          	vmulsd xmm4,xmm13,xmm4
  7d2a3b:	c5 13 59 fb          	vmulsd xmm15,xmm13,xmm3
  7d2a3f:	c5 7b 10 a5 f8 fd ff 	vmovsd xmm12,QWORD PTR [rbp-0x208]
  7d2a46:	ff 
  7d2a47:	c4 a1 7b 11 2c f0    	vmovsd QWORD PTR [rax+r14*8],xmm5
  7d2a4d:	c4 c1 13 59 ea       	vmulsd xmm5,xmm13,xmm10
  7d2a52:	c4 41 1b 59 d6       	vmulsd xmm10,xmm12,xmm14
  7d2a57:	c5 0b 5c f7          	vsubsd xmm14,xmm14,xmm7
  7d2a5b:	c5 a9 57 05 5d 8e 07 	vxorpd xmm0,xmm10,XMMWORD PTR [rip+0x78e5d]        # 84b8c0 <__STRLITPACK_44.95+0x10>
  7d2a62:	00 
  7d2a63:	c5 7b 10 95 a8 fc ff 	vmovsd xmm10,QWORD PTR [rbp-0x358]
  7d2a6a:	ff 
  7d2a6b:	48 8b 85 a0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x160]
  7d2a72:	c4 c1 7b 58 da       	vaddsd xmm3,xmm0,xmm10
  7d2a77:	c5 f3 59 f3          	vmulsd xmm6,xmm1,xmm3
  7d2a7b:	c5 93 59 c6          	vmulsd xmm0,xmm13,xmm6
  7d2a7f:	c4 a1 7b 58 1c f2    	vaddsd xmm3,xmm0,QWORD PTR [rdx+r14*8]
  7d2a85:	c4 c1 0b 5c c1       	vsubsd xmm0,xmm14,xmm9
  7d2a8a:	c4 a1 7b 11 1c f2    	vmovsd QWORD PTR [rdx+r14*8],xmm3
  7d2a90:	c5 b3 58 df          	vaddsd xmm3,xmm9,xmm7
  7d2a94:	c5 73 59 c8          	vmulsd xmm9,xmm1,xmm0
  7d2a98:	c4 a1 53 58 2c f1    	vaddsd xmm5,xmm5,QWORD PTR [rcx+r14*8]
  7d2a9e:	c5 9b 59 c3          	vmulsd xmm0,xmm12,xmm3
  7d2aa2:	c4 c1 13 59 f9       	vmulsd xmm7,xmm13,xmm9
  7d2aa7:	c4 a1 7b 11 2c f1    	vmovsd QWORD PTR [rcx+r14*8],xmm5
  7d2aad:	c4 c1 7b 5c ea       	vsubsd xmm5,xmm0,xmm10
  7d2ab2:	c4 01 3b 58 04 f7    	vaddsd xmm8,xmm8,QWORD PTR [r15+r14*8]
  7d2ab8:	c5 f3 59 f5          	vmulsd xmm6,xmm1,xmm5
  7d2abc:	c4 01 7b 11 04 f7    	vmovsd QWORD PTR [r15+r14*8],xmm8
  7d2ac2:	c5 fb 10 85 08 ff ff 	vmovsd xmm0,QWORD PTR [rbp-0xf8]
  7d2ac9:	ff 
  7d2aca:	c5 fb 59 9d 40 fc ff 	vmulsd xmm3,xmm0,QWORD PTR [rbp-0x3c0]
  7d2ad1:	ff 
  7d2ad2:	c4 01 43 58 4c f5 00 	vaddsd xmm9,xmm7,QWORD PTR [r13+r14*8+0x0]
  7d2ad9:	c5 fb 59 bd 80 fc ff 	vmulsd xmm7,xmm0,QWORD PTR [rbp-0x380]
  7d2ae0:	ff 
  7d2ae1:	c5 eb 58 d3          	vaddsd xmm2,xmm2,xmm3
  7d2ae5:	c5 43 5c 85 28 ff ff 	vsubsd xmm8,xmm7,QWORD PTR [rbp-0xd8]
  7d2aec:	ff 
  7d2aed:	c4 01 7b 11 4c f5 00 	vmovsd QWORD PTR [r13+r14*8+0x0],xmm9
  7d2af4:	c5 13 59 ce          	vmulsd xmm9,xmm13,xmm6
  7d2af8:	c5 3b 5c 95 18 ff ff 	vsubsd xmm10,xmm8,QWORD PTR [rbp-0xe8]
  7d2aff:	ff 
  7d2b00:	c5 7b 10 85 20 ff ff 	vmovsd xmm8,QWORD PTR [rbp-0xe0]
  7d2b07:	ff 
  7d2b08:	c4 41 73 59 e2       	vmulsd xmm12,xmm1,xmm10
  7d2b0d:	c5 6b 5c 95 10 ff ff 	vsubsd xmm10,xmm2,QWORD PTR [rbp-0xf0]
  7d2b14:	ff 
  7d2b15:	c5 bb 59 95 88 fc ff 	vmulsd xmm2,xmm8,QWORD PTR [rbp-0x378]
  7d2b1c:	ff 
  7d2b1d:	c4 41 13 59 f4       	vmulsd xmm14,xmm13,xmm12
  7d2b22:	c5 3b 59 a5 50 fc ff 	vmulsd xmm12,xmm8,QWORD PTR [rbp-0x3b0]
  7d2b29:	ff 
  7d2b2a:	c5 eb 5c 85 30 ff ff 	vsubsd xmm0,xmm2,QWORD PTR [rbp-0xd0]
  7d2b31:	ff 
  7d2b32:	c4 81 0b 58 3c f4    	vaddsd xmm7,xmm14,QWORD PTR [r12+r14*8]
  7d2b38:	c4 41 2b 58 f4       	vaddsd xmm14,xmm10,xmm12
  7d2b3d:	c5 fb 5c 9d a0 fc ff 	vsubsd xmm3,xmm0,QWORD PTR [rbp-0x360]
  7d2b44:	ff 
  7d2b45:	c4 c1 73 59 d6       	vmulsd xmm2,xmm1,xmm14
  7d2b4a:	c5 f3 59 eb          	vmulsd xmm5,xmm1,xmm3
  7d2b4e:	c5 93 59 c2          	vmulsd xmm0,xmm13,xmm2
  7d2b52:	c5 93 59 f5          	vmulsd xmm6,xmm13,xmm5
  7d2b56:	c4 81 7b 11 3c f4    	vmovsd QWORD PTR [r12+r14*8],xmm7
  7d2b5c:	c5 fb 10 ad 98 fc ff 	vmovsd xmm5,QWORD PTR [rbp-0x368]
  7d2b63:	ff 
  7d2b64:	c5 fb 10 95 08 fe ff 	vmovsd xmm2,QWORD PTR [rbp-0x1f8]
  7d2b6b:	ff 
  7d2b6c:	c5 7b 10 85 38 ff ff 	vmovsd xmm8,QWORD PTR [rbp-0xc8]
  7d2b73:	ff 
  7d2b74:	48 8b 95 50 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x1b0]
  7d2b7b:	48 8b 8d 98 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x168]
  7d2b82:	c4 a1 4b 58 3c f6    	vaddsd xmm7,xmm6,QWORD PTR [rsi+r14*8]
  7d2b88:	c5 a3 59 f5          	vmulsd xmm6,xmm11,xmm5
  7d2b8c:	c4 a1 7b 11 3c f6    	vmovsd QWORD PTR [rsi+r14*8],xmm7
  7d2b92:	c4 a1 7b 58 1c f7    	vaddsd xmm3,xmm0,QWORD PTR [rdi+r14*8]
  7d2b98:	c4 a1 7b 11 1c f7    	vmovsd QWORD PTR [rdi+r14*8],xmm3
  7d2b9e:	c4 01 33 58 0c f0    	vaddsd xmm9,xmm9,QWORD PTR [r8+r14*8]
  7d2ba4:	c4 01 7b 11 0c f0    	vmovsd QWORD PTR [r8+r14*8],xmm9
  7d2baa:	c5 23 59 ca          	vmulsd xmm9,xmm11,xmm2
  7d2bae:	c4 41 53 59 d8       	vmulsd xmm11,xmm5,xmm8
  7d2bb3:	c4 c1 6b 59 d0       	vmulsd xmm2,xmm2,xmm8
  7d2bb8:	c5 a1 57 2d 00 8d 07 	vxorpd xmm5,xmm11,XMMWORD PTR [rip+0x78d00]        # 84b8c0 <__STRLITPACK_44.95+0x10>
  7d2bbf:	00 
  7d2bc0:	c5 69 57 15 f8 8c 07 	vxorpd xmm10,xmm2,XMMWORD PTR [rip+0x78cf8]        # 84b8c0 <__STRLITPACK_44.95+0x10>
  7d2bc7:	00 
  7d2bc8:	c5 4b 58 dd          	vaddsd xmm11,xmm6,xmm5
  7d2bcc:	c4 41 33 58 ca       	vaddsd xmm9,xmm9,xmm10
  7d2bd1:	c4 c1 73 59 c3       	vmulsd xmm0,xmm1,xmm11
  7d2bd6:	c4 c1 73 59 c9       	vmulsd xmm1,xmm1,xmm9
  7d2bdb:	c5 93 59 d8          	vmulsd xmm3,xmm13,xmm0
  7d2bdf:	c5 93 59 c1          	vmulsd xmm0,xmm13,xmm1
  7d2be3:	c4 81 63 58 3c f1    	vaddsd xmm7,xmm3,QWORD PTR [r9+r14*8]
  7d2be9:	c4 81 7b 11 3c f1    	vmovsd QWORD PTR [r9+r14*8],xmm7
  7d2bef:	c5 fb 10 9d 60 fc ff 	vmovsd xmm3,QWORD PTR [rbp-0x3a0]
  7d2bf6:	ff 
  7d2bf7:	c5 fb 10 ad 38 fe ff 	vmovsd xmm5,QWORD PTR [rbp-0x1c8]
  7d2bfe:	ff 
  7d2bff:	c4 01 03 58 3c f2    	vaddsd xmm15,xmm15,QWORD PTR [r10+r14*8]
  7d2c05:	c4 01 7b 11 3c f2    	vmovsd QWORD PTR [r10+r14*8],xmm15
  7d2c0b:	c4 81 7b 58 0c f3    	vaddsd xmm1,xmm0,QWORD PTR [r11+r14*8]
  7d2c11:	c4 81 7b 11 0c f3    	vmovsd QWORD PTR [r11+r14*8],xmm1
  7d2c17:	c4 a1 5b 58 14 f0    	vaddsd xmm2,xmm4,QWORD PTR [rax+r14*8]
  7d2c1d:	c4 a1 7b 11 14 f0    	vmovsd QWORD PTR [rax+r14*8],xmm2
  7d2c23:	c4 81 63 59 24 f7    	vmulsd xmm4,xmm3,QWORD PTR [r15+r14*8]
  7d2c29:	c4 a1 7b 11 24 f2    	vmovsd QWORD PTR [rdx+r14*8],xmm4
  7d2c2f:	c4 81 53 59 74 f5 00 	vmulsd xmm6,xmm5,QWORD PTR [r13+r14*8+0x0]
  7d2c36:	c4 a1 7b 11 34 f1    	vmovsd QWORD PTR [rcx+r14*8],xmm6
  7d2c3c:	49 ff c6             	inc    r14
  7d2c3f:	4c 3b b5 e0 fe ff ff 	cmp    r14,QWORD PTR [rbp-0x120]
  7d2c46:	0f 82 4e f6 ff ff    	jb     7d229a <biology_mod_mp_biology_tile_+0x628a>
  7d2c4c:	c5 fb 10 05 2c 95 07 	vmovsd xmm0,QWORD PTR [rip+0x7952c]        # 84c180 <__STRLITPACK_0.112+0x70>
  7d2c53:	00 
  7d2c54:	48 8b 85 d8 fe ff ff 	mov    rax,QWORD PTR [rbp-0x128]
  7d2c5b:	48 ff c0             	inc    rax
  7d2c5e:	48 89 85 d8 fe ff ff 	mov    QWORD PTR [rbp-0x128],rax
  7d2c65:	48 3b 45 e0          	cmp    rax,QWORD PTR [rbp-0x20]
  7d2c69:	0f 82 7b de ff ff    	jb     7d0aea <biology_mod_mp_biology_tile_+0x4ada>
  7d2c6f:	4c 8b 95 30 ea ff ff 	mov    r10,QWORD PTR [rbp-0x15d0]
  7d2c76:	4c 8b 9d 28 ea ff ff 	mov    r11,QWORD PTR [rbp-0x15d8]
  7d2c7d:	48 8b 95 b0 ea ff ff 	mov    rdx,QWORD PTR [rbp-0x1550]
  7d2c84:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  7d2c88:	4c 8b 4d d0          	mov    r9,QWORD PTR [rbp-0x30]
  7d2c8c:	48 8b b5 40 e4 ff ff 	mov    rsi,QWORD PTR [rbp-0x1bc0]
  7d2c93:	49 3b c1             	cmp    rax,r9
  7d2c96:	0f 8c 88 02 00 00    	jl     7d2f24 <biology_mod_mp_biology_tile_+0x6f14>
  7d2c9c:	49 2b c1             	sub    rax,r9
  7d2c9f:	48 ff c0             	inc    rax
  7d2ca2:	c5 fb 10 0d 56 2c 2f 	vmovsd xmm1,QWORD PTR [rip+0x2f2c56]        # ac5900 <mod_scalars_mp_rho0_>
  7d2ca9:	00 
  7d2caa:	48 83 f8 02          	cmp    rax,0x2
  7d2cae:	0f 8c 7b 1d 00 00    	jl     7d4a2f <biology_mod_mp_biology_tile_+0x8a1f>
  7d2cb4:	49 89 f4             	mov    r12,rsi
  7d2cb7:	49 89 d6             	mov    r14,rdx
  7d2cba:	4c 2b a5 d0 ea ff ff 	sub    r12,QWORD PTR [rbp-0x1530]
  7d2cc1:	89 c1                	mov    ecx,eax
  7d2cc3:	48 8b bd 88 e8 ff ff 	mov    rdi,QWORD PTR [rbp-0x1778]
  7d2cca:	45 33 ed             	xor    r13d,r13d
  7d2ccd:	4c 0f af b5 e8 e8 ff 	imul   r14,QWORD PTR [rbp-0x1718]
  7d2cd4:	ff 
  7d2cd5:	c5 f3 59 05 7b a1 07 	vmulsd xmm0,xmm1,QWORD PTR [rip+0x7a17b]        # 84ce58 <__STRLITPACK_0.112+0xd48>
  7d2cdc:	00 
  7d2cdd:	83 e1 fe             	and    ecx,0xfffffffe
  7d2ce0:	4f 8d 04 cc          	lea    r8,[r12+r9*8]
  7d2ce4:	49 89 d4             	mov    r12,rdx
  7d2ce7:	4c 89 85 38 e9 ff ff 	mov    QWORD PTR [rbp-0x16c8],r8
  7d2cee:	4d 89 c8             	mov    r8,r9
  7d2cf1:	4c 0f af a5 b8 e8 ff 	imul   r12,QWORD PTR [rbp-0x1748]
  7d2cf8:	ff 
  7d2cf9:	4c 0f af 85 f0 e8 ff 	imul   r8,QWORD PTR [rbp-0x1710]
  7d2d00:	ff 
  7d2d01:	48 89 95 b0 ea ff ff 	mov    QWORD PTR [rbp-0x1550],rdx
  7d2d08:	4e 8d 3c 27          	lea    r15,[rdi+r12*1]
  7d2d0c:	4d 03 f8             	add    r15,r8
  7d2d0f:	48 8d 95 48 e9 ff ff 	lea    rdx,[rbp-0x16b8]
  7d2d16:	4c 89 3a             	mov    QWORD PTR [rdx],r15
  7d2d19:	4d 89 cf             	mov    r15,r9
  7d2d1c:	4c 0f af bd c8 e8 ff 	imul   r15,QWORD PTR [rbp-0x1738]
  7d2d23:	ff 
  7d2d24:	48 8b bd 98 e8 ff ff 	mov    rdi,QWORD PTR [rbp-0x1768]
  7d2d2b:	4c 03 a5 f8 e8 ff ff 	add    r12,QWORD PTR [rbp-0x1708]
  7d2d32:	4d 03 e0             	add    r12,r8
  7d2d35:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
  7d2d39:	4e 8d 04 37          	lea    r8,[rdi+r14*1]
  7d2d3d:	4c 03 b5 10 e9 ff ff 	add    r14,QWORD PTR [rbp-0x16f0]
  7d2d44:	4d 03 c7             	add    r8,r15
  7d2d47:	4d 03 f7             	add    r14,r15
  7d2d4a:	45 33 ff             	xor    r15d,r15d
  7d2d4d:	48 89 b5 80 e9 ff ff 	mov    QWORD PTR [rbp-0x1680],rsi
  7d2d54:	33 ff                	xor    edi,edi
  7d2d56:	4c 89 4d d0          	mov    QWORD PTR [rbp-0x30],r9
  7d2d5a:	48 63 c9             	movsxd rcx,ecx
  7d2d5d:	c5 fb 12 c0          	vmovddup xmm0,xmm0
  7d2d61:	4c 89 9d 28 ea ff ff 	mov    QWORD PTR [rbp-0x15d8],r11
  7d2d68:	c5 f9 10 15 80 8c 07 	vmovupd xmm2,XMMWORD PTR [rip+0x78c80]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  7d2d6f:	00 
  7d2d70:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  7d2d73:	48 8b 95 38 e9 ff ff 	mov    rdx,QWORD PTR [rbp-0x16c8]
  7d2d7a:	48 8b b5 c8 e8 ff ff 	mov    rsi,QWORD PTR [rbp-0x1738]
  7d2d81:	4c 8b 8d f0 e8 ff ff 	mov    r9,QWORD PTR [rbp-0x1710]
  7d2d88:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  7d2d8f:	00 
  7d2d90:	4f 8d 1c 3c          	lea    r11,[r12+r15*1]
  7d2d94:	c4 c1 7b 10 1b       	vmovsd xmm3,QWORD PTR [r11]
  7d2d99:	c4 81 61 16 2c 0b    	vmovhpd xmm5,xmm3,QWORD PTR [r11+r9*1]
  7d2d9f:	4e 8d 1c 38          	lea    r11,[rax+r15*1]
  7d2da3:	c4 c1 7b 10 23       	vmovsd xmm4,QWORD PTR [r11]
  7d2da8:	4f 8d 3c 4f          	lea    r15,[r15+r9*2]
  7d2dac:	c4 81 59 16 34 0b    	vmovhpd xmm6,xmm4,QWORD PTR [r11+r9*1]
  7d2db2:	4d 8d 1c 3e          	lea    r11,[r14+rdi*1]
  7d2db6:	c4 41 7b 10 0b       	vmovsd xmm9,QWORD PTR [r11]
  7d2dbb:	c4 41 31 16 1c 33    	vmovhpd xmm11,xmm9,QWORD PTR [r11+rsi*1]
  7d2dc1:	4d 8d 1c 38          	lea    r11,[r8+rdi*1]
  7d2dc5:	c4 41 7b 10 13       	vmovsd xmm10,QWORD PTR [r11]
  7d2dca:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
  7d2dce:	c4 41 29 16 24 33    	vmovhpd xmm12,xmm10,QWORD PTR [r11+rsi*1]
  7d2dd4:	c5 d1 58 fe          	vaddpd xmm7,xmm5,xmm6
  7d2dd8:	c4 41 21 58 ec       	vaddpd xmm13,xmm11,xmm12
  7d2ddd:	c5 69 59 c7          	vmulpd xmm8,xmm2,xmm7
  7d2de1:	c4 41 69 59 f5       	vmulpd xmm14,xmm2,xmm13
  7d2de6:	c4 41 39 59 f8       	vmulpd xmm15,xmm8,xmm8
  7d2deb:	c4 c1 09 59 de       	vmulpd xmm3,xmm14,xmm14
  7d2df0:	c5 81 58 e3          	vaddpd xmm4,xmm15,xmm3
  7d2df4:	c5 f9 51 ec          	vsqrtpd xmm5,xmm4
  7d2df8:	c5 f9 59 f5          	vmulpd xmm6,xmm0,xmm5
  7d2dfc:	c4 a1 79 11 34 ea    	vmovupd XMMWORD PTR [rdx+r13*8],xmm6
  7d2e02:	49 83 c5 02          	add    r13,0x2
  7d2e06:	4c 3b e9             	cmp    r13,rcx
  7d2e09:	72 85                	jb     7d2d90 <biology_mod_mp_biology_tile_+0x6d80>
  7d2e0b:	4c 8b 9d 28 ea ff ff 	mov    r11,QWORD PTR [rbp-0x15d8]
  7d2e12:	48 8b 95 b0 ea ff ff 	mov    rdx,QWORD PTR [rbp-0x1550]
  7d2e19:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  7d2e1d:	48 8b b5 80 e9 ff ff 	mov    rsi,QWORD PTR [rbp-0x1680]
  7d2e24:	4c 8b 4d d0          	mov    r9,QWORD PTR [rbp-0x30]
  7d2e28:	4c 8b b5 c8 e8 ff ff 	mov    r14,QWORD PTR [rbp-0x1738]
  7d2e2f:	4c 8b ad f0 e8 ff ff 	mov    r13,QWORD PTR [rbp-0x1710]
  7d2e36:	4c 0f af f1          	imul   r14,rcx
  7d2e3a:	4c 0f af e9          	imul   r13,rcx
  7d2e3e:	48 3b c8             	cmp    rcx,rax
  7d2e41:	0f 83 dd 00 00 00    	jae    7d2f24 <biology_mod_mp_biology_tile_+0x6f14>
  7d2e47:	48 89 f7             	mov    rdi,rsi
  7d2e4a:	4d 89 cf             	mov    r15,r9
  7d2e4d:	48 2b bd d0 ea ff ff 	sub    rdi,QWORD PTR [rbp-0x1530]
  7d2e54:	4c 0f af bd f0 e8 ff 	imul   r15,QWORD PTR [rbp-0x1710]
  7d2e5b:	ff 
  7d2e5c:	c5 f3 59 05 f4 9f 07 	vmulsd xmm0,xmm1,QWORD PTR [rip+0x79ff4]        # 84ce58 <__STRLITPACK_0.112+0xd48>
  7d2e63:	00 
  7d2e64:	4c 8b 85 88 e8 ff ff 	mov    r8,QWORD PTR [rbp-0x1778]
  7d2e6b:	4e 8d 24 cf          	lea    r12,[rdi+r9*8]
  7d2e6f:	48 89 d7             	mov    rdi,rdx
  7d2e72:	48 0f af bd b8 e8 ff 	imul   rdi,QWORD PTR [rbp-0x1748]
  7d2e79:	ff 
  7d2e7a:	48 0f af 95 e8 e8 ff 	imul   rdx,QWORD PTR [rbp-0x1718]
  7d2e81:	ff 
  7d2e82:	4c 0f af 8d c8 e8 ff 	imul   r9,QWORD PTR [rbp-0x1738]
  7d2e89:	ff 
  7d2e8a:	48 89 b5 80 e9 ff ff 	mov    QWORD PTR [rbp-0x1680],rsi
  7d2e91:	4c 03 c7             	add    r8,rdi
  7d2e94:	48 03 bd f8 e8 ff ff 	add    rdi,QWORD PTR [rbp-0x1708]
  7d2e9b:	4d 03 c7             	add    r8,r15
  7d2e9e:	49 03 ff             	add    rdi,r15
  7d2ea1:	4c 8b bd 98 e8 ff ff 	mov    r15,QWORD PTR [rbp-0x1768]
  7d2ea8:	48 8b b5 c8 e8 ff ff 	mov    rsi,QWORD PTR [rbp-0x1738]
  7d2eaf:	c5 7b 10 1d e1 92 07 	vmovsd xmm11,QWORD PTR [rip+0x792e1]        # 84c198 <__STRLITPACK_0.112+0x88>
  7d2eb6:	00 
  7d2eb7:	4c 03 fa             	add    r15,rdx
  7d2eba:	48 03 95 10 e9 ff ff 	add    rdx,QWORD PTR [rbp-0x16f0]
  7d2ec1:	4d 03 f9             	add    r15,r9
  7d2ec4:	49 03 d1             	add    rdx,r9
  7d2ec7:	4c 8b 8d f0 e8 ff ff 	mov    r9,QWORD PTR [rbp-0x1710]
  7d2ece:	66 90                	xchg   ax,ax
  7d2ed0:	c4 c1 7b 10 4c 3d 00 	vmovsd xmm1,QWORD PTR [r13+rdi*1+0x0]
  7d2ed7:	c4 c1 7b 10 24 16    	vmovsd xmm4,QWORD PTR [r14+rdx*1]
  7d2edd:	c4 81 73 58 54 05 00 	vaddsd xmm2,xmm1,QWORD PTR [r13+r8*1+0x0]
  7d2ee4:	4d 03 e9             	add    r13,r9
  7d2ee7:	c4 81 5b 58 2c 3e    	vaddsd xmm5,xmm4,QWORD PTR [r14+r15*1]
  7d2eed:	c5 a3 59 da          	vmulsd xmm3,xmm11,xmm2
  7d2ef1:	c5 a3 59 f5          	vmulsd xmm6,xmm11,xmm5
  7d2ef5:	c5 e3 59 fb          	vmulsd xmm7,xmm3,xmm3
  7d2ef9:	c5 4b 59 c6          	vmulsd xmm8,xmm6,xmm6
  7d2efd:	4c 03 f6             	add    r14,rsi
  7d2f00:	c4 41 43 58 c8       	vaddsd xmm9,xmm7,xmm8
  7d2f05:	c4 41 33 51 c9       	vsqrtsd xmm9,xmm9,xmm9
  7d2f0a:	c4 41 7b 59 d1       	vmulsd xmm10,xmm0,xmm9
  7d2f0f:	c4 41 7b 11 14 cc    	vmovsd QWORD PTR [r12+rcx*8],xmm10
  7d2f15:	48 ff c1             	inc    rcx
  7d2f18:	48 3b c8             	cmp    rcx,rax
  7d2f1b:	72 b3                	jb     7d2ed0 <biology_mod_mp_biology_tile_+0x6ec0>
  7d2f1d:	48 8b b5 80 e9 ff ff 	mov    rsi,QWORD PTR [rbp-0x1680]
  7d2f24:	48 83 c4 a0          	add    rsp,0xffffffffffffffa0
  7d2f28:	4c 8d a5 70 eb ff ff 	lea    r12,[rbp-0x1490]
  7d2f2f:	4c 8b 85 98 ea ff ff 	mov    r8,QWORD PTR [rbp-0x1568]
  7d2f36:	4c 8d b5 88 e4 ff ff 	lea    r14,[rbp-0x1b78]
  7d2f3d:	48 8b 8d d8 ea ff ff 	mov    rcx,QWORD PTR [rbp-0x1528]
  7d2f44:	33 c0                	xor    eax,eax
  7d2f46:	49 89 46 10          	mov    QWORD PTR [r14+0x10],rax
  7d2f4a:	4c 8d bd d0 e4 ff ff 	lea    r15,[rbp-0x1b30]
  7d2f51:	4c 89 04 24          	mov    QWORD PTR [rsp],r8
  7d2f55:	ba 08 00 00 00       	mov    edx,0x8
  7d2f5a:	4c 8b 8d 50 ea ff ff 	mov    r9,QWORD PTR [rbp-0x15b0]
  7d2f61:	bf 01 00 00 00       	mov    edi,0x1
  7d2f66:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
  7d2f6b:	4c 89 64 24 10       	mov    QWORD PTR [rsp+0x10],r12
  7d2f70:	4c 8b ad 48 ea ff ff 	mov    r13,QWORD PTR [rbp-0x15b8]
  7d2f77:	4c 89 6c 24 18       	mov    QWORD PTR [rsp+0x18],r13
  7d2f7c:	4c 89 74 24 20       	mov    QWORD PTR [rsp+0x20],r14
  7d2f81:	49 89 46 58          	mov    QWORD PTR [r14+0x58],rax
  7d2f85:	49 89 47 58          	mov    QWORD PTR [r15+0x58],rax
  7d2f89:	48 8d 85 18 e5 ff ff 	lea    rax,[rbp-0x1ae8]
  7d2f90:	4c 89 7c 24 28       	mov    QWORD PTR [rsp+0x28],r15
  7d2f95:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  7d2f9a:	48 89 74 24 38       	mov    QWORD PTR [rsp+0x38],rsi
  7d2f9f:	48 c7 44 24 40 68 8c 	mov    QWORD PTR [rsp+0x40],0x848c68
  7d2fa6:	84 00 
  7d2fa8:	48 8b b5 b8 ea ff ff 	mov    rsi,QWORD PTR [rbp-0x1548]
  7d2faf:	49 8b 44 24 c0       	mov    rax,QWORD PTR [r12-0x40]
  7d2fb4:	49 89 4e 30          	mov    QWORD PTR [r14+0x30],rcx
  7d2fb8:	49 89 4e 78          	mov    QWORD PTR [r14+0x78],rcx
  7d2fbc:	49 89 4f 78          	mov    QWORD PTR [r15+0x78],rcx
  7d2fc0:	48 03 f0             	add    rsi,rax
  7d2fc3:	4c 03 d6             	add    r10,rsi
  7d2fc6:	4c 03 de             	add    r11,rsi
  7d2fc9:	48 8b 8d 80 ec ff ff 	mov    rcx,QWORD PTR [rbp-0x1380]
  7d2fd0:	49 89 56 08          	mov    QWORD PTR [r14+0x8],rdx
  7d2fd4:	49 89 56 38          	mov    QWORD PTR [r14+0x38],rdx
  7d2fd8:	49 89 56 50          	mov    QWORD PTR [r14+0x50],rdx
  7d2fdc:	4d 8d 54 0a f8       	lea    r10,[r10+rcx*1-0x8]
  7d2fe1:	4d 89 16             	mov    QWORD PTR [r14],r10
  7d2fe4:	4d 8d 5c 0b f8       	lea    r11,[r11+rcx*1-0x8]
  7d2fe9:	4c 63 15 d0 d9 40 00 	movsxd r10,DWORD PTR [rip+0x40d9d0]        # be09c0 <mod_scalars_mp_isalt_>
  7d2ff0:	4d 89 5f 48          	mov    QWORD PTR [r15+0x48],r11
  7d2ff4:	4c 8b 9d a8 ea ff ff 	mov    r11,QWORD PTR [rbp-0x1558]
  7d2ffb:	49 89 57 38          	mov    QWORD PTR [r15+0x38],rdx
  7d2fff:	4a 8d 34 d5 f8 ff ff 	lea    rsi,[r10*8-0x8]
  7d3006:	ff 
  7d3007:	48 0f af b5 c8 ea ff 	imul   rsi,QWORD PTR [rbp-0x1538]
  7d300e:	ff 
  7d300f:	48 0f af b5 90 ea ff 	imul   rsi,QWORD PTR [rbp-0x1570]
  7d3016:	ff 
  7d3017:	48 03 b5 e8 ea ff ff 	add    rsi,QWORD PTR [rbp-0x1518]
  7d301e:	49 89 57 50          	mov    QWORD PTR [r15+0x50],rdx
  7d3022:	48 89 95 50 e5 ff ff 	mov    QWORD PTR [rbp-0x1ab0],rdx
  7d3029:	4c 8b 85 f8 e3 ff ff 	mov    r8,QWORD PTR [rbp-0x1c08]
  7d3030:	4a 8d 14 de          	lea    rdx,[rsi+r11*8]
  7d3034:	48 03 d0             	add    rdx,rax
  7d3037:	4c 8b 8d b0 e3 ff ff 	mov    r9,QWORD PTR [rbp-0x1c50]
  7d303e:	4c 89 44 24 48       	mov    QWORD PTR [rsp+0x48],r8
  7d3043:	4c 89 4c 24 50       	mov    QWORD PTR [rsp+0x50],r9
  7d3048:	49 89 7e 20          	mov    QWORD PTR [r14+0x20],rdi
  7d304c:	49 89 7e 40          	mov    QWORD PTR [r14+0x40],rdi
  7d3050:	49 89 7e 18          	mov    QWORD PTR [r14+0x18],rdi
  7d3054:	49 89 7e 68          	mov    QWORD PTR [r14+0x68],rdi
  7d3058:	49 89 7f 40          	mov    QWORD PTR [r15+0x40],rdi
  7d305c:	49 89 7e 60          	mov    QWORD PTR [r14+0x60],rdi
  7d3060:	49 89 7f 68          	mov    QWORD PTR [r15+0x68],rdi
  7d3064:	48 89 bd 58 e5 ff ff 	mov    QWORD PTR [rbp-0x1aa8],rdi
  7d306b:	49 89 7f 60          	mov    QWORD PTR [r15+0x60],rdi
  7d306f:	48 8d 7c 0a f8       	lea    rdi,[rdx+rcx*1-0x8]
  7d3074:	49 89 7e 48          	mov    QWORD PTR [r14+0x48],rdi
  7d3078:	48 8b bd 88 ea ff ff 	mov    rdi,QWORD PTR [rbp-0x1578]
  7d307f:	48 8b b5 78 ea ff ff 	mov    rsi,QWORD PTR [rbp-0x1588]
  7d3086:	48 8b 95 70 ea ff ff 	mov    rdx,QWORD PTR [rbp-0x1590]
  7d308d:	48 8b 8d 68 ea ff ff 	mov    rcx,QWORD PTR [rbp-0x1598]
  7d3094:	4c 8b 85 60 ea ff ff 	mov    r8,QWORD PTR [rbp-0x15a0]
  7d309b:	4c 8b 8d 58 ea ff ff 	mov    r9,QWORD PTR [rbp-0x15a8]
  7d30a2:	c5 f8 77             	vzeroupper 
  7d30a5:	e8 a6 8b ff ff       	call   7cbc50 <biology_mod_mp_o2_flux_>
  7d30aa:	48 83 c4 60          	add    rsp,0x60
  7d30ae:	48 8b bd 78 ea ff ff 	mov    rdi,QWORD PTR [rbp-0x1588]
  7d30b5:	48 8b 85 88 ea ff ff 	mov    rax,QWORD PTR [rbp-0x1578]
  7d30bc:	48 63 3f             	movsxd rdi,DWORD PTR [rdi]
  7d30bf:	48 63 30             	movsxd rsi,DWORD PTR [rax]
  7d30c2:	48 8b 85 c8 de ff ff 	mov    rax,QWORD PTR [rbp-0x2138]
  7d30c9:	48 3b fe             	cmp    rdi,rsi
  7d30cc:	0f 8c 2b 01 00 00    	jl     7d31fd <biology_mod_mp_biology_tile_+0x71ed>
  7d30d2:	48 2b fe             	sub    rdi,rsi
  7d30d5:	48 ff c7             	inc    rdi
  7d30d8:	4c 8b 85 a0 df ff ff 	mov    r8,QWORD PTR [rbp-0x2060]
  7d30df:	48 8b 8d b0 e3 ff ff 	mov    rcx,QWORD PTR [rbp-0x1c50]
  7d30e6:	4c 63 35 9b de 40 00 	movsxd r14,DWORD PTR [rip+0x40de9b]        # be0f88 <mod_biology_mp_ioxyg_>
  7d30ed:	48 83 ff 04          	cmp    rdi,0x4
  7d30f1:	0f 8c 31 19 00 00    	jl     7d4a28 <biology_mod_mp_biology_tile_+0x8a18>
  7d30f7:	49 89 c4             	mov    r12,rax
  7d30fa:	89 fa                	mov    edx,edi
  7d30fc:	4c 8b 95 d0 ea ff ff 	mov    r10,QWORD PTR [rbp-0x1530]
  7d3103:	4d 2b e2             	sub    r12,r10
  7d3106:	4c 8b 5d 80          	mov    r11,QWORD PTR [rbp-0x80]
  7d310a:	4d 2b e3             	sub    r12,r11
  7d310d:	4c 8b bd 90 ef ff ff 	mov    r15,QWORD PTR [rbp-0x1070]
  7d3114:	4d 2b e7             	sub    r12,r15
  7d3117:	4d 0f af fe          	imul   r15,r14
  7d311b:	c5 fd 10 9d f0 ef ff 	vmovupd ymm3,YMMWORD PTR [rbp-0x1010]
  7d3122:	ff 
  7d3123:	4c 8b 8d 80 ec ff ff 	mov    r9,QWORD PTR [rbp-0x1380]
  7d312a:	4d 8d 3c f7          	lea    r15,[r15+rsi*8]
  7d312e:	4d 03 f9             	add    r15,r9
  7d3131:	83 e2 fc             	and    edx,0xfffffffc
  7d3134:	4d 03 e7             	add    r12,r15
  7d3137:	49 89 cf             	mov    r15,rcx
  7d313a:	4d 2b fa             	sub    r15,r10
  7d313d:	45 33 ed             	xor    r13d,r13d
  7d3140:	48 63 d2             	movsxd rdx,edx
  7d3143:	4d 8d 3c f7          	lea    r15,[r15+rsi*8]
  7d3147:	4c 89 bd 58 e9 ff ff 	mov    QWORD PTR [rbp-0x16a8],r15
  7d314e:	4d 89 c7             	mov    r15,r8
  7d3151:	4d 2b fa             	sub    r15,r10
  7d3154:	4d 2b fb             	sub    r15,r11
  7d3157:	4d 03 f9             	add    r15,r9
  7d315a:	4c 8b 95 58 e9 ff ff 	mov    r10,QWORD PTR [rbp-0x16a8]
  7d3161:	4d 8d 0c f7          	lea    r9,[r15+rsi*8]
  7d3165:	c4 81 65 59 04 ea    	vmulpd ymm0,ymm3,YMMWORD PTR [r10+r13*8]
  7d316b:	c4 81 7d 59 4c e9 f8 	vmulpd ymm1,ymm0,YMMWORD PTR [r9+r13*8-0x8]
  7d3172:	c4 81 75 58 54 ec f8 	vaddpd ymm2,ymm1,YMMWORD PTR [r12+r13*8-0x8]
  7d3179:	c4 81 7d 11 54 ec f8 	vmovupd YMMWORD PTR [r12+r13*8-0x8],ymm2
  7d3180:	49 83 c5 04          	add    r13,0x4
  7d3184:	4c 3b ea             	cmp    r13,rdx
  7d3187:	72 dc                	jb     7d3165 <biology_mod_mp_biology_tile_+0x7155>
  7d3189:	48 3b d7             	cmp    rdx,rdi
  7d318c:	73 6f                	jae    7d31fd <biology_mod_mp_biology_tile_+0x71ed>
  7d318e:	4c 8b 9d 90 ef ff ff 	mov    r11,QWORD PTR [rbp-0x1070]
  7d3195:	4d 0f af f3          	imul   r14,r11
  7d3199:	4c 8b 95 d0 ea ff ff 	mov    r10,QWORD PTR [rbp-0x1530]
  7d31a0:	4d 2b c2             	sub    r8,r10
  7d31a3:	4c 8b ad 80 ec ff ff 	mov    r13,QWORD PTR [rbp-0x1380]
  7d31aa:	4d 8d 0c f6          	lea    r9,[r14+rsi*8]
  7d31ae:	4c 8b 75 80          	mov    r14,QWORD PTR [rbp-0x80]
  7d31b2:	4d 2b c6             	sub    r8,r14
  7d31b5:	49 2b ca             	sub    rcx,r10
  7d31b8:	4d 03 cd             	add    r9,r13
  7d31bb:	4d 03 c5             	add    r8,r13
  7d31be:	c5 fb 10 9d c8 fa ff 	vmovsd xmm3,QWORD PTR [rbp-0x538]
  7d31c5:	ff 
  7d31c6:	4c 8d 24 f1          	lea    r12,[rcx+rsi*8]
  7d31ca:	49 8d 0c f0          	lea    rcx,[r8+rsi*8]
  7d31ce:	48 89 c6             	mov    rsi,rax
  7d31d1:	49 2b f2             	sub    rsi,r10
  7d31d4:	49 2b f6             	sub    rsi,r14
  7d31d7:	49 2b f3             	sub    rsi,r11
  7d31da:	49 03 f1             	add    rsi,r9
  7d31dd:	c4 c1 63 59 04 d4    	vmulsd xmm0,xmm3,QWORD PTR [r12+rdx*8]
  7d31e3:	c5 fb 59 4c d1 f8    	vmulsd xmm1,xmm0,QWORD PTR [rcx+rdx*8-0x8]
  7d31e9:	c5 f3 58 54 d6 f8    	vaddsd xmm2,xmm1,QWORD PTR [rsi+rdx*8-0x8]
  7d31ef:	c5 fb 11 54 d6 f8    	vmovsd QWORD PTR [rsi+rdx*8-0x8],xmm2
  7d31f5:	48 ff c2             	inc    rdx
  7d31f8:	48 3b d7             	cmp    rdx,rdi
  7d31fb:	72 e0                	jb     7d31dd <biology_mod_mp_biology_tile_+0x71cd>
  7d31fd:	48 8b 95 80 ea ff ff 	mov    rdx,QWORD PTR [rbp-0x1580]
  7d3204:	48 8b 35 b5 74 2e 00 	mov    rsi,QWORD PTR [rip+0x2e74b5]        # aba6c0 <mod_param_mp_n_>
  7d320b:	4c 63 1d ae d7 40 00 	movsxd r11,DWORD PTR [rip+0x40d7ae]        # be09c0 <mod_scalars_mp_isalt_>
  7d3212:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  7d3215:	4c 63 15 94 d7 40 00 	movsxd r10,DWORD PTR [rip+0x40d794]        # be09b0 <mod_scalars_mp_itemp_>
  7d321c:	4c 63 35 5d dd 40 00 	movsxd r14,DWORD PTR [rip+0x40dd5d]        # be0f80 <mod_biology_mp_ipo4__>
  7d3223:	48 63 39             	movsxd rdi,DWORD PTR [rcx]
  7d3226:	48 89 bd 38 eb ff ff 	mov    QWORD PTR [rbp-0x14c8],rdi
  7d322d:	48 83 bd a0 ea ff ff 	cmp    QWORD PTR [rbp-0x1560],0x0
  7d3234:	00 
  7d3235:	4c 63 64 be fc       	movsxd r12,DWORD PTR [rsi+rdi*4-0x4]
  7d323a:	48 63 3d 07 dd 40 00 	movsxd rdi,DWORD PTR [rip+0x40dd07]        # be0f48 <mod_biology_mp_isioh_>
  7d3241:	0f 8c c0 17 00 00    	jl     7d4a07 <biology_mod_mp_biology_tile_+0x89f7>
  7d3247:	48 83 bd d8 e8 ff ff 	cmp    QWORD PTR [rbp-0x1728],0x4
  7d324e:	04 
  7d324f:	0f 8c 8e 17 00 00    	jl     7d49e3 <biology_mod_mp_biology_tile_+0x89d3>
  7d3255:	4c 0f af 65 d8       	imul   r12,QWORD PTR [rbp-0x28]
  7d325a:	c5 7d 10 15 7e 80 07 	vmovupd ymm10,YMMWORD PTR [rip+0x7807e]        # 84b2e0 <var$630.126.450+0x1340>
  7d3261:	00 
  7d3262:	c5 7d 10 1d b6 6f 07 	vmovupd ymm11,YMMWORD PTR [rip+0x76fb6]        # 84a220 <var$630.126.450+0x280>
  7d3269:	00 
  7d326a:	c5 7d 10 25 0e 80 07 	vmovupd ymm12,YMMWORD PTR [rip+0x7800e]        # 84b280 <var$630.126.450+0x12e0>
  7d3271:	00 
  7d3272:	c5 7d 10 2d c6 7f 07 	vmovupd ymm13,YMMWORD PTR [rip+0x77fc6]        # 84b240 <var$630.126.450+0x12a0>
  7d3279:	00 
  7d327a:	c5 7d 10 35 9e 7f 07 	vmovupd ymm14,YMMWORD PTR [rip+0x77f9e]        # 84b220 <var$630.126.450+0x1280>
  7d3281:	00 
  7d3282:	48 89 c6             	mov    rsi,rax
  7d3285:	33 d2                	xor    edx,edx
  7d3287:	48 2b b5 d0 ea ff ff 	sub    rsi,QWORD PTR [rbp-0x1530]
  7d328e:	48 8b 8d 90 ef ff ff 	mov    rcx,QWORD PTR [rbp-0x1070]
  7d3295:	48 0f af f9          	imul   rdi,rcx
  7d3299:	4c 0f af f1          	imul   r14,rcx
  7d329d:	4c 0f af d1          	imul   r10,rcx
  7d32a1:	4c 0f af d9          	imul   r11,rcx
  7d32a5:	48 2b 75 80          	sub    rsi,QWORD PTR [rbp-0x80]
  7d32a9:	48 2b f1             	sub    rsi,rcx
  7d32ac:	4c 8b 8d e0 e8 ff ff 	mov    r9,QWORD PTR [rbp-0x1720]
  7d32b3:	4c 8b 85 a0 e8 ff ff 	mov    r8,QWORD PTR [rbp-0x1760]
  7d32ba:	4d 89 c7             	mov    r15,r8
  7d32bd:	4a 8d 0c ce          	lea    rcx,[rsi+r9*8]
  7d32c1:	49 03 cc             	add    rcx,r12
  7d32c4:	4e 8d 2c 19          	lea    r13,[rcx+r11*1]
  7d32c8:	4e 8d 0c 11          	lea    r9,[rcx+r10*1]
  7d32cc:	4a 8d 34 31          	lea    rsi,[rcx+r14*1]
  7d32d0:	48 03 cf             	add    rcx,rdi
  7d32d3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  7d32d8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  7d32df:	00 
  7d32e0:	c4 c1 7d 10 44 d5 f8 	vmovupd ymm0,YMMWORD PTR [r13+rdx*8-0x8]
  7d32e7:	c4 c1 7d 5f cc       	vmaxpd ymm1,ymm0,ymm12
  7d32ec:	c4 c1 75 5d d6       	vminpd ymm2,ymm1,ymm14
  7d32f1:	c4 c1 7d 11 54 d5 f8 	vmovupd YMMWORD PTR [r13+rdx*8-0x8],ymm2
  7d32f8:	c4 c1 7d 10 5c d1 f8 	vmovupd ymm3,YMMWORD PTR [r9+rdx*8-0x8]
  7d32ff:	c4 c1 65 5f e3       	vmaxpd ymm4,ymm3,ymm11
  7d3304:	c4 c1 5d 5d ed       	vminpd ymm5,ymm4,ymm13
  7d3309:	c4 c1 7d 11 6c d1 f8 	vmovupd YMMWORD PTR [r9+rdx*8-0x8],ymm5
  7d3310:	c5 fd 10 74 d6 f8    	vmovupd ymm6,YMMWORD PTR [rsi+rdx*8-0x8]
  7d3316:	c4 c1 4d 5f fa       	vmaxpd ymm7,ymm6,ymm10
  7d331b:	c5 fd 11 7c d6 f8    	vmovupd YMMWORD PTR [rsi+rdx*8-0x8],ymm7
  7d3321:	c5 7d 10 44 d1 f8    	vmovupd ymm8,YMMWORD PTR [rcx+rdx*8-0x8]
  7d3327:	c4 41 3d 5f ca       	vmaxpd ymm9,ymm8,ymm10
  7d332c:	c5 7d 11 4c d1 f8    	vmovupd YMMWORD PTR [rcx+rdx*8-0x8],ymm9
  7d3332:	48 83 c2 04          	add    rdx,0x4
  7d3336:	49 3b d7             	cmp    rdx,r15
  7d3339:	72 a5                	jb     7d32e0 <biology_mod_mp_biology_tile_+0x72d0>
  7d333b:	49 8d 50 01          	lea    rdx,[r8+0x1]
  7d333f:	48 3b 95 d8 e8 ff ff 	cmp    rdx,QWORD PTR [rbp-0x1728]
  7d3346:	0f 87 dd 01 00 00    	ja     7d3529 <biology_mod_mp_biology_tile_+0x7519>
  7d334c:	4c 8b ad d8 e8 ff ff 	mov    r13,QWORD PTR [rbp-0x1728]
  7d3353:	4d 2b e8             	sub    r13,r8
  7d3356:	49 83 fd 02          	cmp    r13,0x2
  7d335a:	0f 8c 7b 16 00 00    	jl     7d49db <biology_mod_mp_biology_tile_+0x89cb>
  7d3360:	48 8b b5 e0 e8 ff ff 	mov    rsi,QWORD PTR [rbp-0x1720]
  7d3367:	49 89 c7             	mov    r15,rax
  7d336a:	4c 2b bd d0 ea ff ff 	sub    r15,QWORD PTR [rbp-0x1530]
  7d3371:	4d 89 e9             	mov    r9,r13
  7d3374:	4c 2b 7d 80          	sub    r15,QWORD PTR [rbp-0x80]
  7d3378:	49 83 e1 fe          	and    r9,0xfffffffffffffffe
  7d337c:	48 c7 85 40 e9 ff ff 	mov    QWORD PTR [rbp-0x16c0],0x0
  7d3383:	00 00 00 00 
  7d3387:	49 8d 0c f4          	lea    rcx,[r12+rsi*8]
  7d338b:	48 f7 d9             	neg    rcx
  7d338e:	48 03 8d 90 ef ff ff 	add    rcx,QWORD PTR [rbp-0x1070]
  7d3395:	4c 2b f9             	sub    r15,rcx
  7d3398:	48 89 85 88 e9 ff ff 	mov    QWORD PTR [rbp-0x1678],rax
  7d339f:	c5 79 10 15 99 8b 07 	vmovupd xmm10,XMMWORD PTR [rip+0x78b99]        # 84bf40 <__STRLITPACK_54.50+0x150>
  7d33a6:	00 
  7d33a7:	c5 79 10 1d 81 8b 07 	vmovupd xmm11,XMMWORD PTR [rip+0x78b81]        # 84bf30 <__STRLITPACK_54.50+0x140>
  7d33ae:	00 
  7d33af:	c5 79 10 25 49 87 07 	vmovupd xmm12,XMMWORD PTR [rip+0x78749]        # 84bb00 <__STRLITPACK_0.63+0x60>
  7d33b6:	00 
  7d33b7:	4b 8d 14 3b          	lea    rdx,[r11+r15*1]
  7d33bb:	c5 79 10 2d 5d 8b 07 	vmovupd xmm13,XMMWORD PTR [rip+0x78b5d]        # 84bf20 <__STRLITPACK_54.50+0x130>
  7d33c2:	00 
  7d33c3:	4a 8d 34 c2          	lea    rsi,[rdx+r8*8]
  7d33c7:	c5 79 10 35 41 8b 07 	vmovupd xmm14,XMMWORD PTR [rip+0x78b41]        # 84bf10 <__STRLITPACK_54.50+0x120>
  7d33ce:	00 
  7d33cf:	4b 8d 0c 3a          	lea    rcx,[r10+r15*1]
  7d33d3:	48 8b 85 40 e9 ff ff 	mov    rax,QWORD PTR [rbp-0x16c0]
  7d33da:	4b 8d 14 3e          	lea    rdx,[r14+r15*1]
  7d33de:	4c 03 ff             	add    r15,rdi
  7d33e1:	4a 8d 0c c1          	lea    rcx,[rcx+r8*8]
  7d33e5:	4a 8d 14 c2          	lea    rdx,[rdx+r8*8]
  7d33e9:	4f 8d 3c c7          	lea    r15,[r15+r8*8]
  7d33ed:	0f 1f 00             	nop    DWORD PTR [rax]
  7d33f0:	c5 f9 10 44 c6 f8    	vmovupd xmm0,XMMWORD PTR [rsi+rax*8-0x8]
  7d33f6:	c4 c1 79 5f ce       	vmaxpd xmm1,xmm0,xmm14
  7d33fb:	c4 c1 71 5d d5       	vminpd xmm2,xmm1,xmm13
  7d3400:	c5 f9 11 54 c6 f8    	vmovupd XMMWORD PTR [rsi+rax*8-0x8],xmm2
  7d3406:	c5 f9 10 5c c1 f8    	vmovupd xmm3,XMMWORD PTR [rcx+rax*8-0x8]
  7d340c:	c4 c1 61 5f e4       	vmaxpd xmm4,xmm3,xmm12
  7d3411:	c4 c1 59 5d eb       	vminpd xmm5,xmm4,xmm11
  7d3416:	c5 f9 11 6c c1 f8    	vmovupd XMMWORD PTR [rcx+rax*8-0x8],xmm5
  7d341c:	c5 f9 10 74 c2 f8    	vmovupd xmm6,XMMWORD PTR [rdx+rax*8-0x8]
  7d3422:	c4 c1 49 5f fa       	vmaxpd xmm7,xmm6,xmm10
  7d3427:	c5 f9 11 7c c2 f8    	vmovupd XMMWORD PTR [rdx+rax*8-0x8],xmm7
  7d342d:	c4 41 79 10 44 c7 f8 	vmovupd xmm8,XMMWORD PTR [r15+rax*8-0x8]
  7d3434:	c4 41 39 5f ca       	vmaxpd xmm9,xmm8,xmm10
  7d3439:	c4 41 79 11 4c c7 f8 	vmovupd XMMWORD PTR [r15+rax*8-0x8],xmm9
  7d3440:	48 83 c0 02          	add    rax,0x2
  7d3444:	49 3b c1             	cmp    rax,r9
  7d3447:	72 a7                	jb     7d33f0 <biology_mod_mp_biology_tile_+0x73e0>
  7d3449:	48 8b 85 88 e9 ff ff 	mov    rax,QWORD PTR [rbp-0x1678]
  7d3450:	4d 3b cd             	cmp    r9,r13
  7d3453:	0f 83 d0 00 00 00    	jae    7d3529 <biology_mod_mp_biology_tile_+0x7519>
  7d3459:	4c 8b bd e0 e8 ff ff 	mov    r15,QWORD PTR [rbp-0x1720]
  7d3460:	48 89 c2             	mov    rdx,rax
  7d3463:	48 2b 95 d0 ea ff ff 	sub    rdx,QWORD PTR [rbp-0x1530]
  7d346a:	48 2b 55 80          	sub    rdx,QWORD PTR [rbp-0x80]
  7d346e:	c5 fb 10 25 da 99 07 	vmovsd xmm4,QWORD PTR [rip+0x799da]        # 84ce50 <__STRLITPACK_0.112+0xd40>
  7d3475:	00 
  7d3476:	4b 8d 34 fc          	lea    rsi,[r12+r15*8]
  7d347a:	48 f7 de             	neg    rsi
  7d347d:	48 03 b5 90 ef ff ff 	add    rsi,QWORD PTR [rbp-0x1070]
  7d3484:	48 2b d6             	sub    rdx,rsi
  7d3487:	c5 fb 10 2d d1 8f 07 	vmovsd xmm5,QWORD PTR [rip+0x78fd1]        # 84c460 <__STRLITPACK_0.112+0x350>
  7d348e:	00 
  7d348f:	c5 fb 10 35 a1 99 07 	vmovsd xmm6,QWORD PTR [rip+0x799a1]        # 84ce38 <__STRLITPACK_0.112+0xd28>
  7d3496:	00 
  7d3497:	c5 fb 10 3d 89 99 07 	vmovsd xmm7,QWORD PTR [rip+0x79989]        # 84ce28 <__STRLITPACK_0.112+0xd18>
  7d349e:	00 
  7d349f:	c5 7b 10 05 79 99 07 	vmovsd xmm8,QWORD PTR [rip+0x79979]        # 84ce20 <__STRLITPACK_0.112+0xd10>
  7d34a6:	00 
  7d34a7:	49 8d 0c 13          	lea    rcx,[r11+rdx*1]
  7d34ab:	4e 8d 3c c1          	lea    r15,[rcx+r8*8]
  7d34af:	49 8d 34 12          	lea    rsi,[r10+rdx*1]
  7d34b3:	49 8d 0c 16          	lea    rcx,[r14+rdx*1]
  7d34b7:	48 03 d7             	add    rdx,rdi
  7d34ba:	4a 8d 34 c6          	lea    rsi,[rsi+r8*8]
  7d34be:	4a 8d 0c c1          	lea    rcx,[rcx+r8*8]
  7d34c2:	4a 8d 14 c2          	lea    rdx,[rdx+r8*8]
  7d34c6:	0f 1f 00             	nop    DWORD PTR [rax]
  7d34c9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  7d34d0:	c4 81 7b 10 44 cf f8 	vmovsd xmm0,QWORD PTR [r15+r9*8-0x8]
  7d34d7:	c5 fb 5f c6          	vmaxsd xmm0,xmm0,xmm6
  7d34db:	c4 c1 7b 5d c0       	vminsd xmm0,xmm0,xmm8
  7d34e0:	c4 81 7b 11 44 cf f8 	vmovsd QWORD PTR [r15+r9*8-0x8],xmm0
  7d34e7:	c4 a1 7b 10 4c ce f8 	vmovsd xmm1,QWORD PTR [rsi+r9*8-0x8]
  7d34ee:	c5 f3 5f cd          	vmaxsd xmm1,xmm1,xmm5
  7d34f2:	c5 f3 5d cf          	vminsd xmm1,xmm1,xmm7
  7d34f6:	c4 a1 7b 11 4c ce f8 	vmovsd QWORD PTR [rsi+r9*8-0x8],xmm1
  7d34fd:	c4 a1 7b 10 54 c9 f8 	vmovsd xmm2,QWORD PTR [rcx+r9*8-0x8]
  7d3504:	c5 eb 5f d4          	vmaxsd xmm2,xmm2,xmm4
  7d3508:	c4 a1 7b 11 54 c9 f8 	vmovsd QWORD PTR [rcx+r9*8-0x8],xmm2
  7d350f:	c4 a1 7b 10 5c ca f8 	vmovsd xmm3,QWORD PTR [rdx+r9*8-0x8]
  7d3516:	c5 e3 5f dc          	vmaxsd xmm3,xmm3,xmm4
  7d351a:	c4 a1 7b 11 5c ca f8 	vmovsd QWORD PTR [rdx+r9*8-0x8],xmm3
  7d3521:	49 ff c1             	inc    r9
  7d3524:	4d 3b cd             	cmp    r9,r13
  7d3527:	72 a7                	jb     7d34d0 <biology_mod_mp_biology_tile_+0x74c0>
  7d3529:	48 83 c4 80          	add    rsp,0xffffffffffffff80
  7d352d:	4c 8d 8d 70 eb ff ff 	lea    r9,[rbp-0x1490]
  7d3534:	48 8b b5 98 ea ff ff 	mov    rsi,QWORD PTR [rbp-0x1568]
  7d353b:	45 33 ed             	xor    r13d,r13d
  7d353e:	48 8b 95 d8 ea ff ff 	mov    rdx,QWORD PTR [rbp-0x1528]
  7d3545:	41 bf 08 00 00 00    	mov    r15d,0x8
  7d354b:	4c 89 ad 70 e5 ff ff 	mov    QWORD PTR [rbp-0x1a90],r13
  7d3552:	b9 01 00 00 00       	mov    ecx,0x1
  7d3557:	48 89 34 24          	mov    QWORD PTR [rsp],rsi
  7d355b:	48 8d b5 38 e6 ff ff 	lea    rsi,[rbp-0x19c8]
  7d3562:	4c 8b 85 50 ea ff ff 	mov    r8,QWORD PTR [rbp-0x15b0]
  7d3569:	4c 89 44 24 08       	mov    QWORD PTR [rsp+0x8],r8
  7d356e:	4c 8d 85 80 e6 ff ff 	lea    r8,[rbp-0x1980]
  7d3575:	4c 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],r9
  7d357a:	4c 8d 8d c8 e6 ff ff 	lea    r9,[rbp-0x1938]
  7d3581:	4c 89 6e 80          	mov    QWORD PTR [rsi-0x80],r13
  7d3585:	4c 89 6e c8          	mov    QWORD PTR [rsi-0x38],r13
  7d3589:	4c 89 6e 10          	mov    QWORD PTR [rsi+0x10],r13
  7d358d:	4c 89 6e 58          	mov    QWORD PTR [rsi+0x58],r13
  7d3591:	4d 89 68 58          	mov    QWORD PTR [r8+0x58],r13
  7d3595:	4c 8b ad 48 ea ff ff 	mov    r13,QWORD PTR [rbp-0x15b8]
  7d359c:	4c 89 bd 68 e5 ff ff 	mov    QWORD PTR [rbp-0x1a98],r15
  7d35a3:	4c 89 bd 98 e5 ff ff 	mov    QWORD PTR [rbp-0x1a68],r15
  7d35aa:	4c 89 bd b0 e5 ff ff 	mov    QWORD PTR [rbp-0x1a50],r15
  7d35b1:	4c 89 7e a8          	mov    QWORD PTR [rsi-0x58],r15
  7d35b5:	4c 89 7e c0          	mov    QWORD PTR [rsi-0x40],r15
  7d35b9:	4c 89 7e f0          	mov    QWORD PTR [rsi-0x10],r15
  7d35bd:	4c 89 7e 08          	mov    QWORD PTR [rsi+0x8],r15
  7d35c1:	4c 89 7e 38          	mov    QWORD PTR [rsi+0x38],r15
  7d35c5:	4c 89 7e 50          	mov    QWORD PTR [rsi+0x50],r15
  7d35c9:	4d 89 78 38          	mov    QWORD PTR [r8+0x38],r15
  7d35cd:	4d 89 78 50          	mov    QWORD PTR [r8+0x50],r15
  7d35d1:	4d 89 79 38          	mov    QWORD PTR [r9+0x38],r15
  7d35d5:	4c 8d bd 60 e5 ff ff 	lea    r15,[rbp-0x1aa0]
  7d35dc:	4c 89 6c 24 18       	mov    QWORD PTR [rsp+0x18],r13
  7d35e1:	49 89 57 30          	mov    QWORD PTR [r15+0x30],rdx
  7d35e5:	48 89 56 a0          	mov    QWORD PTR [rsi-0x60],rdx
  7d35e9:	48 89 56 e8          	mov    QWORD PTR [rsi-0x18],rdx
  7d35ed:	48 89 56 30          	mov    QWORD PTR [rsi+0x30],rdx
  7d35f1:	48 89 56 78          	mov    QWORD PTR [rsi+0x78],rdx
  7d35f5:	49 89 50 78          	mov    QWORD PTR [r8+0x78],rdx
  7d35f9:	48 8d 95 a8 e5 ff ff 	lea    rdx,[rbp-0x1a58]
  7d3600:	4c 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],r15
  7d3605:	48 89 4a d8          	mov    QWORD PTR [rdx-0x28],rcx
  7d3609:	48 89 4a f8          	mov    QWORD PTR [rdx-0x8],rcx
  7d360d:	48 89 4a d0          	mov    QWORD PTR [rdx-0x30],rcx
  7d3611:	48 89 4a 20          	mov    QWORD PTR [rdx+0x20],rcx
  7d3615:	48 89 4a 40          	mov    QWORD PTR [rdx+0x40],rcx
  7d3619:	48 89 4a 18          	mov    QWORD PTR [rdx+0x18],rcx
  7d361d:	48 89 4a 68          	mov    QWORD PTR [rdx+0x68],rcx
  7d3621:	48 89 4e f8          	mov    QWORD PTR [rsi-0x8],rcx
  7d3625:	48 89 4a 60          	mov    QWORD PTR [rdx+0x60],rcx
  7d3629:	48 89 4e 20          	mov    QWORD PTR [rsi+0x20],rcx
  7d362d:	48 89 4e 40          	mov    QWORD PTR [rsi+0x40],rcx
  7d3631:	48 89 4e 18          	mov    QWORD PTR [rsi+0x18],rcx
  7d3635:	48 89 4e 68          	mov    QWORD PTR [rsi+0x68],rcx
  7d3639:	49 89 48 40          	mov    QWORD PTR [r8+0x40],rcx
  7d363d:	48 89 4e 60          	mov    QWORD PTR [rsi+0x60],rcx
  7d3641:	49 89 48 68          	mov    QWORD PTR [r8+0x68],rcx
  7d3645:	49 89 49 40          	mov    QWORD PTR [r9+0x40],rcx
  7d3649:	49 89 48 60          	mov    QWORD PTR [r8+0x60],rcx
  7d364d:	48 8d 8d f0 e5 ff ff 	lea    rcx,[rbp-0x1a10]
  7d3654:	48 89 54 24 28       	mov    QWORD PTR [rsp+0x28],rdx
  7d3659:	4a 8d 14 20          	lea    rdx,[rax+r12*1]
  7d365d:	48 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],rcx
  7d3662:	48 89 74 24 38       	mov    QWORD PTR [rsp+0x38],rsi
  7d3667:	4c 89 44 24 40       	mov    QWORD PTR [rsp+0x40],r8
  7d366c:	4c 89 4c 24 48       	mov    QWORD PTR [rsp+0x48],r9
  7d3671:	48 03 95 b8 ea ff ff 	add    rdx,QWORD PTR [rbp-0x1548]
  7d3678:	48 63 35 11 d9 40 00 	movsxd rsi,DWORD PTR [rip+0x40d911]        # be0f90 <mod_biology_mp_itic__>
  7d367f:	4c 8b ad 90 ea ff ff 	mov    r13,QWORD PTR [rbp-0x1570]
  7d3686:	4e 8d 54 12 f8       	lea    r10,[rdx+r10*1-0x8]
  7d368b:	4d 89 17             	mov    QWORD PTR [r15],r10
  7d368e:	4c 63 15 03 d9 40 00 	movsxd r10,DWORD PTR [rip+0x40d903]        # be0f98 <mod_biology_mp_italk_>
  7d3695:	4e 8d 5c 1a f8       	lea    r11,[rdx+r11*1-0x8]
  7d369a:	4c 89 59 b8          	mov    QWORD PTR [rcx-0x48],r11
  7d369e:	48 8d 4c 3a f8       	lea    rcx,[rdx+rdi*1-0x8]
  7d36a3:	4c 8b 9d c8 ea ff ff 	mov    r11,QWORD PTR [rbp-0x1538]
  7d36aa:	48 8d 3c f5 f8 ff ff 	lea    rdi,[rsi*8-0x8]
  7d36b1:	ff 
  7d36b2:	49 0f af fb          	imul   rdi,r11
  7d36b6:	49 0f af fd          	imul   rdi,r13
  7d36ba:	49 89 48 48          	mov    QWORD PTR [r8+0x48],rcx
  7d36be:	4e 8d 3c d5 f8 ff ff 	lea    r15,[r10*8-0x8]
  7d36c5:	ff 
  7d36c6:	4d 0f af fb          	imul   r15,r11
  7d36ca:	4d 0f af fd          	imul   r15,r13
  7d36ce:	4e 8d 74 32 f8       	lea    r14,[rdx+r14*1-0x8]
  7d36d3:	4d 89 30             	mov    QWORD PTR [r8],r14
  7d36d6:	4c 8b b5 e8 ea ff ff 	mov    r14,QWORD PTR [rbp-0x1518]
  7d36dd:	4d 03 fe             	add    r15,r14
  7d36e0:	48 8b 95 a8 ea ff ff 	mov    rdx,QWORD PTR [rbp-0x1558]
  7d36e7:	49 03 fe             	add    rdi,r14
  7d36ea:	c5 f8 77             	vzeroupper 
  7d36ed:	49 8d 0c d7          	lea    rcx,[r15+rdx*8]
  7d36f1:	48 03 c8             	add    rcx,rax
  7d36f4:	4c 8d 04 d7          	lea    r8,[rdi+rdx*8]
  7d36f8:	4c 03 c0             	add    r8,rax
  7d36fb:	48 8b 15 5e aa 2e 00 	mov    rdx,QWORD PTR [rip+0x2eaa5e]        # abe160 <mod_biology_mp_pco2a_>
  7d3702:	48 8b bd 68 e3 ff ff 	mov    rdi,QWORD PTR [rbp-0x1c98]
  7d3709:	4a 8d 44 21 f8       	lea    rax,[rcx+r12*1-0x8]
  7d370e:	48 89 85 38 e6 ff ff 	mov    QWORD PTR [rbp-0x19c8],rax
  7d3715:	48 8b 85 40 e4 ff ff 	mov    rax,QWORD PTR [rbp-0x1bc0]
  7d371c:	4f 8d 4c 20 f8       	lea    r9,[r8+r12*1-0x8]
  7d3721:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  7d3726:	48 8b 0d 73 aa 2e 00 	mov    rcx,QWORD PTR [rip+0x2eaa73]        # abe1a0 <mod_biology_mp_pco2a_+0x40>
  7d372d:	48 c7 44 24 58 68 8c 	mov    QWORD PTR [rsp+0x58],0x848c68
  7d3734:	84 00 
  7d3736:	48 f7 d9             	neg    rcx
  7d3739:	48 03 8d 38 eb ff ff 	add    rcx,QWORD PTR [rbp-0x14c8]
  7d3740:	4c 8b 85 20 e3 ff ff 	mov    r8,QWORD PTR [rbp-0x1ce0]
  7d3747:	4c 89 8d f0 e5 ff ff 	mov    QWORD PTR [rbp-0x1a10],r9
  7d374e:	48 8d 34 ca          	lea    rsi,[rdx+rcx*8]
  7d3752:	48 89 74 24 60       	mov    QWORD PTR [rsp+0x60],rsi
  7d3757:	48 89 7c 24 68       	mov    QWORD PTR [rsp+0x68],rdi
  7d375c:	4c 89 44 24 70       	mov    QWORD PTR [rsp+0x70],r8
  7d3761:	48 8b bd 88 ea ff ff 	mov    rdi,QWORD PTR [rbp-0x1578]
  7d3768:	48 8b b5 78 ea ff ff 	mov    rsi,QWORD PTR [rbp-0x1588]
  7d376f:	48 8b 95 70 ea ff ff 	mov    rdx,QWORD PTR [rbp-0x1590]
  7d3776:	48 8b 8d 68 ea ff ff 	mov    rcx,QWORD PTR [rbp-0x1598]
  7d377d:	4c 8b 85 60 ea ff ff 	mov    r8,QWORD PTR [rbp-0x15a0]
  7d3784:	4c 8b 8d 58 ea ff ff 	mov    r9,QWORD PTR [rbp-0x15a8]
  7d378b:	e8 b0 80 ff ff       	call   7cb840 <biology_mod_mp_co2_flux_>
  7d3790:	48 81 c4 80 00 00 00 	add    rsp,0x80
  7d3797:	4c 8b 8d 78 ea ff ff 	mov    r9,QWORD PTR [rbp-0x1588]
  7d379e:	48 8b 95 88 ea ff ff 	mov    rdx,QWORD PTR [rbp-0x1578]
  7d37a5:	48 8b 8d c8 de ff ff 	mov    rcx,QWORD PTR [rbp-0x2138]
  7d37ac:	41 8b 01             	mov    eax,DWORD PTR [r9]
  7d37af:	89 85 f8 ea ff ff    	mov    DWORD PTR [rbp-0x1508],eax
  7d37b5:	48 63 c0             	movsxd rax,eax
  7d37b8:	4c 63 0a             	movsxd r9,DWORD PTR [rdx]
  7d37bb:	48 89 8d 30 eb ff ff 	mov    QWORD PTR [rbp-0x14d0],rcx
  7d37c2:	44 89 c9             	mov    ecx,r9d
  7d37c5:	49 3b c1             	cmp    rax,r9
  7d37c8:	0f 8c 3a 01 00 00    	jl     7d3908 <biology_mod_mp_biology_tile_+0x78f8>
  7d37ce:	49 89 c2             	mov    r10,rax
  7d37d1:	4d 2b d1             	sub    r10,r9
  7d37d4:	49 ff c2             	inc    r10
  7d37d7:	4c 8b 85 a0 df ff ff 	mov    r8,QWORD PTR [rbp-0x2060]
  7d37de:	48 8b b5 68 e3 ff ff 	mov    rsi,QWORD PTR [rbp-0x1c98]
  7d37e5:	4c 63 35 a4 d7 40 00 	movsxd r14,DWORD PTR [rip+0x40d7a4]        # be0f90 <mod_biology_mp_itic__>
  7d37ec:	49 83 fa 04          	cmp    r10,0x4
  7d37f0:	0f 8c 4d 11 00 00    	jl     7d4943 <biology_mod_mp_biology_tile_+0x8933>
  7d37f6:	4c 8b ad 30 eb ff ff 	mov    r13,QWORD PTR [rbp-0x14d0]
  7d37fd:	44 89 d7             	mov    edi,r10d
  7d3800:	48 8b 95 d0 ea ff ff 	mov    rdx,QWORD PTR [rbp-0x1530]
  7d3807:	4c 2b ea             	sub    r13,rdx
  7d380a:	4c 8b 5d 80          	mov    r11,QWORD PTR [rbp-0x80]
  7d380e:	4d 2b eb             	sub    r13,r11
  7d3811:	4c 8b bd 90 ef ff ff 	mov    r15,QWORD PTR [rbp-0x1070]
  7d3818:	4d 2b ef             	sub    r13,r15
  7d381b:	4d 0f af fe          	imul   r15,r14
  7d381f:	c5 fd 10 9d f0 ef ff 	vmovupd ymm3,YMMWORD PTR [rbp-0x1010]
  7d3826:	ff 
  7d3827:	48 c7 85 50 e9 ff ff 	mov    QWORD PTR [rbp-0x16b0],0x0
  7d382e:	00 00 00 00 
  7d3832:	4f 8d 3c cf          	lea    r15,[r15+r9*8]
  7d3836:	4d 03 fc             	add    r15,r12
  7d3839:	83 e7 fc             	and    edi,0xfffffffc
  7d383c:	4d 03 ef             	add    r13,r15
  7d383f:	49 89 f7             	mov    r15,rsi
  7d3842:	4c 2b fa             	sub    r15,rdx
  7d3845:	48 63 ff             	movsxd rdi,edi
  7d3848:	4f 8d 3c cf          	lea    r15,[r15+r9*8]
  7d384c:	4c 89 bd 60 e9 ff ff 	mov    QWORD PTR [rbp-0x16a0],r15
  7d3853:	4d 89 c7             	mov    r15,r8
  7d3856:	4c 2b fa             	sub    r15,rdx
  7d3859:	4d 2b fb             	sub    r15,r11
  7d385c:	4d 03 fc             	add    r15,r12
  7d385f:	4c 8b 9d 60 e9 ff ff 	mov    r11,QWORD PTR [rbp-0x16a0]
  7d3866:	4b 8d 14 cf          	lea    rdx,[r15+r9*8]
  7d386a:	4c 8b bd 50 e9 ff ff 	mov    r15,QWORD PTR [rbp-0x16b0]
  7d3871:	c4 81 65 59 04 fb    	vmulpd ymm0,ymm3,YMMWORD PTR [r11+r15*8]
  7d3877:	c4 a1 7d 59 4c fa f8 	vmulpd ymm1,ymm0,YMMWORD PTR [rdx+r15*8-0x8]
  7d387e:	c4 81 75 58 54 fd f8 	vaddpd ymm2,ymm1,YMMWORD PTR [r13+r15*8-0x8]
  7d3885:	c4 81 7d 11 54 fd f8 	vmovupd YMMWORD PTR [r13+r15*8-0x8],ymm2
  7d388c:	49 83 c7 04          	add    r15,0x4
  7d3890:	4c 3b ff             	cmp    r15,rdi
  7d3893:	72 dc                	jb     7d3871 <biology_mod_mp_biology_tile_+0x7861>
  7d3895:	49 3b fa             	cmp    rdi,r10
  7d3898:	73 6e                	jae    7d3908 <biology_mod_mp_biology_tile_+0x78f8>
  7d389a:	48 8b 95 90 ef ff ff 	mov    rdx,QWORD PTR [rbp-0x1070]
  7d38a1:	4c 0f af f2          	imul   r14,rdx
  7d38a5:	4c 8b 5d 80          	mov    r11,QWORD PTR [rbp-0x80]
  7d38a9:	4f 8d 2c ce          	lea    r13,[r14+r9*8]
  7d38ad:	4c 8b b5 d0 ea ff ff 	mov    r14,QWORD PTR [rbp-0x1530]
  7d38b4:	4d 2b c6             	sub    r8,r14
  7d38b7:	4d 2b c3             	sub    r8,r11
  7d38ba:	49 2b f6             	sub    rsi,r14
  7d38bd:	4d 03 c4             	add    r8,r12
  7d38c0:	4d 03 ec             	add    r13,r12
  7d38c3:	4c 8b a5 30 eb ff ff 	mov    r12,QWORD PTR [rbp-0x14d0]
  7d38ca:	4d 2b e6             	sub    r12,r14
  7d38cd:	4d 2b e3             	sub    r12,r11
  7d38d0:	4a 8d 34 ce          	lea    rsi,[rsi+r9*8]
  7d38d4:	4c 2b e2             	sub    r12,rdx
  7d38d7:	4f 8d 04 c8          	lea    r8,[r8+r9*8]
  7d38db:	c5 fb 10 9d c8 fa ff 	vmovsd xmm3,QWORD PTR [rbp-0x538]
  7d38e2:	ff 
  7d38e3:	4d 03 e5             	add    r12,r13
  7d38e6:	c5 e3 59 04 fe       	vmulsd xmm0,xmm3,QWORD PTR [rsi+rdi*8]
  7d38eb:	c4 c1 7b 59 4c f8 f8 	vmulsd xmm1,xmm0,QWORD PTR [r8+rdi*8-0x8]
  7d38f2:	c4 c1 73 58 54 fc f8 	vaddsd xmm2,xmm1,QWORD PTR [r12+rdi*8-0x8]
  7d38f9:	c4 c1 7b 11 54 fc f8 	vmovsd QWORD PTR [r12+rdi*8-0x8],xmm2
  7d3900:	48 ff c7             	inc    rdi
  7d3903:	49 3b fa             	cmp    rdi,r10
  7d3906:	72 de                	jb     7d38e6 <biology_mod_mp_biology_tile_+0x78d6>
  7d3908:	4c 8b b5 d0 ea ff ff 	mov    r14,QWORD PTR [rbp-0x1530]
  7d390f:	f7 d9                	neg    ecx
  7d3911:	4c 8b 85 80 e1 ff ff 	mov    r8,QWORD PTR [rbp-0x1e80]
  7d3918:	4d 2b c6             	sub    r8,r14
  7d391b:	4c 8b 9d d8 e2 ff ff 	mov    r11,QWORD PTR [rbp-0x1d28]
  7d3922:	4c 8b a5 80 ea ff ff 	mov    r12,QWORD PTR [rbp-0x1580]
  7d3929:	4c 89 9d 50 ff ff ff 	mov    QWORD PTR [rbp-0xb0],r11
  7d3930:	4c 8b 5d 80          	mov    r11,QWORD PTR [rbp-0x80]
  7d3934:	4f 8d 14 c8          	lea    r10,[r8+r9*8]
  7d3938:	4c 8b 85 78 e2 ff ff 	mov    r8,QWORD PTR [rbp-0x1d88]
  7d393f:	4d 2b c6             	sub    r8,r14
  7d3942:	4d 2b c3             	sub    r8,r11
  7d3945:	4d 8b 2c 24          	mov    r13,QWORD PTR [r12]
  7d3949:	4c 89 95 b0 ef ff ff 	mov    QWORD PTR [rbp-0x1050],r10
  7d3950:	48 8b 35 69 6d 2e 00 	mov    rsi,QWORD PTR [rip+0x2e6d69]        # aba6c0 <mod_param_mp_n_>
  7d3957:	48 8b bd 18 eb ff ff 	mov    rdi,QWORD PTR [rbp-0x14e8]
  7d395e:	4f 8d 14 c8          	lea    r10,[r8+r9*8]
  7d3962:	4c 89 95 a0 ef ff ff 	mov    QWORD PTR [rbp-0x1060],r10
  7d3969:	4d 63 55 00          	movsxd r10,DWORD PTR [r13+0x0]
  7d396d:	4c 8b bd 20 e1 ff ff 	mov    r15,QWORD PTR [rbp-0x1ee0]
  7d3974:	4d 2b fe             	sub    r15,r14
  7d3977:	4e 8d 24 95 00 00 00 	lea    r12,[r10*4+0x0]
  7d397e:	00 
  7d397f:	4c 89 95 b8 fa ff ff 	mov    QWORD PTR [rbp-0x548],r10
  7d3986:	48 89 bd d8 ef ff ff 	mov    QWORD PTR [rbp-0x1028],rdi
  7d398d:	48 89 c7             	mov    rdi,rax
  7d3990:	4c 89 a5 b8 ef ff ff 	mov    QWORD PTR [rbp-0x1048],r12
  7d3997:	49 2b f9             	sub    rdi,r9
  7d399a:	46 8b 54 26 fc       	mov    r10d,DWORD PTR [rsi+r12*1-0x4]
  7d399f:	4d 89 fc             	mov    r12,r15
  7d39a2:	4d 2b e3             	sub    r12,r11
  7d39a5:	4f 8d 3c cf          	lea    r15,[r15+r9*8]
  7d39a9:	4c 89 7d b8          	mov    QWORD PTR [rbp-0x48],r15
  7d39ad:	4c 8b bd 30 eb ff ff 	mov    r15,QWORD PTR [rbp-0x14d0]
  7d39b4:	4c 8d 2c fd 08 00 00 	lea    r13,[rdi*8+0x8]
  7d39bb:	00 
  7d39bc:	4d 2b fe             	sub    r15,r14
  7d39bf:	48 ff c7             	inc    rdi
  7d39c2:	4c 89 6d c0          	mov    QWORD PTR [rbp-0x40],r13
  7d39c6:	4f 8d 2c cc          	lea    r13,[r12+r9*8]
  7d39ca:	4c 8b a5 90 ef ff ff 	mov    r12,QWORD PTR [rbp-0x1070]
  7d39d1:	4c 89 ad a8 ef ff ff 	mov    QWORD PTR [rbp-0x1058],r13
  7d39d8:	4d 89 fd             	mov    r13,r15
  7d39db:	4d 2b fc             	sub    r15,r12
  7d39de:	4d 2b eb             	sub    r13,r11
  7d39e1:	48 63 95 70 eb ff ff 	movsxd rdx,DWORD PTR [rbp-0x1490]
  7d39e8:	03 8d f8 ea ff ff    	add    ecx,DWORD PTR [rbp-0x1508]
  7d39ee:	48 89 7d 88          	mov    QWORD PTR [rbp-0x78],rdi
  7d39f2:	ff c1                	inc    ecx
  7d39f4:	4d 63 d2             	movsxd r10,r10d
  7d39f7:	4f 8d 1c cf          	lea    r11,[r15+r9*8]
  7d39fb:	4c 8b bd c0 ea ff ff 	mov    r15,QWORD PTR [rbp-0x1540]
  7d3a02:	83 e7 fc             	and    edi,0xfffffffc
  7d3a05:	4c 89 55 e0          	mov    QWORD PTR [rbp-0x20],r10
  7d3a09:	4c 8b 85 10 eb ff ff 	mov    r8,QWORD PTR [rbp-0x14f0]
  7d3a10:	4f 8d 7c fd 00       	lea    r15,[r13+r15*8+0x0]
  7d3a15:	4d 2b fc             	sub    r15,r12
  7d3a18:	4c 03 ad e0 ea ff ff 	add    r13,QWORD PTR [rbp-0x1520]
  7d3a1f:	4d 2b ec             	sub    r13,r12
  7d3a22:	48 63 ff             	movsxd rdi,edi
  7d3a25:	48 89 b5 c0 ef ff ff 	mov    QWORD PTR [rbp-0x1040],rsi
  7d3a2c:	4f 8d 3c cf          	lea    r15,[r15+r9*8]
  7d3a30:	4c 89 bd 68 ef ff ff 	mov    QWORD PTR [rbp-0x1098],r15
  7d3a37:	4d 89 cf             	mov    r15,r9
  7d3a3a:	4c 0f af 7d 98       	imul   r15,QWORD PTR [rbp-0x68]
  7d3a3f:	4c 03 bd 08 eb ff ff 	add    r15,QWORD PTR [rbp-0x14f8]
  7d3a46:	4f 8d 64 cd 00       	lea    r12,[r13+r9*8+0x0]
  7d3a4b:	4c 8b ad f0 ea ff ff 	mov    r13,QWORD PTR [rbp-0x1510]
  7d3a52:	4c 0f af ea          	imul   r13,rdx
  7d3a56:	4d 03 ef             	add    r13,r15
  7d3a59:	4c 89 d6             	mov    rsi,r10
  7d3a5c:	4c 89 85 d0 ef ff ff 	mov    QWORD PTR [rbp-0x1030],r8
  7d3a63:	45 33 c0             	xor    r8d,r8d
  7d3a66:	48 89 7d b0          	mov    QWORD PTR [rbp-0x50],rdi
  7d3a6a:	4c 89 9d 98 ef ff ff 	mov    QWORD PTR [rbp-0x1068],r11
  7d3a71:	4c 89 ad e0 ef ff ff 	mov    QWORD PTR [rbp-0x1020],r13
  7d3a78:	4c 89 a5 70 ef ff ff 	mov    QWORD PTR [rbp-0x1090],r12
  7d3a7f:	89 8d 40 eb ff ff    	mov    DWORD PTR [rbp-0x14c0],ecx
  7d3a85:	48 89 95 b0 ea ff ff 	mov    QWORD PTR [rbp-0x1550],rdx
  7d3a8c:	4c 89 4d d0          	mov    QWORD PTR [rbp-0x30],r9
  7d3a90:	48 8b bd d0 ef ff ff 	mov    rdi,QWORD PTR [rbp-0x1030]
  7d3a97:	45 33 ed             	xor    r13d,r13d
  7d3a9a:	45 33 f6             	xor    r14d,r14d
  7d3a9d:	4a 63 3c 87          	movsxd rdi,DWORD PTR [rdi+r8*4]
  7d3aa1:	48 85 f6             	test   rsi,rsi
  7d3aa4:	0f 8e 90 00 00 00    	jle    7d3b3a <biology_mod_mp_biology_tile_+0x7b2a>
  7d3aaa:	4c 8b a5 90 ef ff ff 	mov    r12,QWORD PTR [rbp-0x1070]
  7d3ab1:	4c 0f af e7          	imul   r12,rdi
  7d3ab5:	4c 03 a5 98 ef ff ff 	add    r12,QWORD PTR [rbp-0x1068]
  7d3abc:	4c 8b 7d 88          	mov    r15,QWORD PTR [rbp-0x78]
  7d3ac0:	48 89 bd c8 ef ff ff 	mov    QWORD PTR [rbp-0x1038],rdi
  7d3ac7:	4c 89 85 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],r8
  7d3ace:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
  7d3ad2:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  7d3ad6:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  7d3ada:	48 3b 45 d0          	cmp    rax,QWORD PTR [rbp-0x30]
  7d3ade:	7c 25                	jl     7d3b05 <biology_mod_mp_biology_tile_+0x7af5>
  7d3ae0:	83 bd 40 eb ff ff 0c 	cmp    DWORD PTR [rbp-0x14c0],0xc
  7d3ae7:	0f 8e 92 0e 00 00    	jle    7d497f <biology_mod_mp_biology_tile_+0x896f>
  7d3aed:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  7d3af1:	4b 8d 34 34          	lea    rsi,[r12+r14*1]
  7d3af5:	48 8b 55 c0          	mov    rdx,QWORD PTR [rbp-0x40]
  7d3af9:	c5 f8 77             	vzeroupper 
  7d3afc:	4a 8d 3c 30          	lea    rdi,[rax+r14*1]
  7d3b00:	e8 8b d7 cf ff       	call   4d1290 <_intel_fast_memcpy>
  7d3b05:	49 ff c5             	inc    r13
  7d3b08:	4c 03 75 d8          	add    r14,QWORD PTR [rbp-0x28]
  7d3b0c:	4c 3b 6d e0          	cmp    r13,QWORD PTR [rbp-0x20]
  7d3b10:	72 c4                	jb     7d3ad6 <biology_mod_mp_biology_tile_+0x7ac6>
  7d3b12:	48 8b 8d b8 ef ff ff 	mov    rcx,QWORD PTR [rbp-0x1048]
  7d3b19:	48 8b 95 c0 ef ff ff 	mov    rdx,QWORD PTR [rbp-0x1040]
  7d3b20:	48 8b bd c8 ef ff ff 	mov    rdi,QWORD PTR [rbp-0x1038]
  7d3b27:	4c 8b 85 78 ff ff ff 	mov    r8,QWORD PTR [rbp-0x88]
  7d3b2e:	44 8b 54 0a fc       	mov    r10d,DWORD PTR [rdx+rcx*1-0x4]
  7d3b33:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  7d3b37:	49 63 f2             	movsxd rsi,r10d
  7d3b3a:	45 33 ed             	xor    r13d,r13d
  7d3b3d:	41 8d 4a ff          	lea    ecx,[r10-0x1]
  7d3b41:	48 8b 95 d8 ef ff ff 	mov    rdx,QWORD PTR [rbp-0x1028]
  7d3b48:	45 33 e4             	xor    r12d,r12d
  7d3b4b:	85 c9                	test   ecx,ecx
  7d3b4d:	48 63 c9             	movsxd rcx,ecx
  7d3b50:	0f 8e 39 01 00 00    	jle    7d3c8f <biology_mod_mp_biology_tile_+0x7c7f>
  7d3b56:	4c 8b 4d d8          	mov    r9,QWORD PTR [rbp-0x28]
  7d3b5a:	4c 0f af c9          	imul   r9,rcx
  7d3b5e:	4c 8b bd a8 ef ff ff 	mov    r15,QWORD PTR [rbp-0x1058]
  7d3b65:	4c 8b 9d b0 ef ff ff 	mov    r11,QWORD PTR [rbp-0x1050]
  7d3b6c:	44 89 55 a0          	mov    DWORD PTR [rbp-0x60],r10d
  7d3b70:	48 89 95 58 ff ff ff 	mov    QWORD PTR [rbp-0xa8],rdx
  7d3b77:	4f 8d 34 0f          	lea    r14,[r15+r9*1]
  7d3b7b:	4c 8b bd a0 ef ff ff 	mov    r15,QWORD PTR [rbp-0x1060]
  7d3b82:	4d 03 d9             	add    r11,r9
  7d3b85:	4c 8b 55 88          	mov    r10,QWORD PTR [rbp-0x78]
  7d3b89:	48 89 bd c8 ef ff ff 	mov    QWORD PTR [rbp-0x1038],rdi
  7d3b90:	4c 89 85 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],r8
  7d3b97:	4d 03 f9             	add    r15,r9
  7d3b9a:	4c 03 4d b8          	add    r9,QWORD PTR [rbp-0x48]
  7d3b9e:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
  7d3ba2:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  7d3ba6:	48 89 8d e8 ef ff ff 	mov    QWORD PTR [rbp-0x1018],rcx
  7d3bad:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  7d3bb1:	48 3b 45 d0          	cmp    rax,QWORD PTR [rbp-0x30]
  7d3bb5:	0f 8c 99 00 00 00    	jl     7d3c54 <biology_mod_mp_biology_tile_+0x7c44>
  7d3bbb:	49 83 fa 04          	cmp    r10,0x4
  7d3bbf:	0f 8c b2 0d 00 00    	jl     7d4977 <biology_mod_mp_biology_tile_+0x8967>
  7d3bc5:	4c 8b 45 b0          	mov    r8,QWORD PTR [rbp-0x50]
  7d3bc9:	33 f6                	xor    esi,esi
  7d3bcb:	4d 89 c2             	mov    r10,r8
  7d3bce:	4b 8d 0c 23          	lea    rcx,[r11+r12*1]
  7d3bd2:	4b 8d 14 26          	lea    rdx,[r14+r12*1]
  7d3bd6:	4b 8d 04 27          	lea    rax,[r15+r12*1]
  7d3bda:	4b 8d 3c 21          	lea    rdi,[r9+r12*1]
  7d3bde:	c5 fd 10 04 f7       	vmovupd ymm0,YMMWORD PTR [rdi+rsi*8]
  7d3be3:	c5 fd 5c 4c f2 f8    	vsubpd ymm1,ymm0,YMMWORD PTR [rdx+rsi*8-0x8]
  7d3be9:	c5 f5 59 54 f0 f8    	vmulpd ymm2,ymm1,YMMWORD PTR [rax+rsi*8-0x8]
  7d3bef:	c5 fd 11 14 f1       	vmovupd YMMWORD PTR [rcx+rsi*8],ymm2
  7d3bf4:	48 83 c6 04          	add    rsi,0x4
  7d3bf8:	49 3b f2             	cmp    rsi,r10
  7d3bfb:	72 e1                	jb     7d3bde <biology_mod_mp_biology_tile_+0x7bce>
  7d3bfd:	4c 8b 55 88          	mov    r10,QWORD PTR [rbp-0x78]
  7d3c01:	4d 3b c2             	cmp    r8,r10
  7d3c04:	73 32                	jae    7d3c38 <biology_mod_mp_biology_tile_+0x7c28>
  7d3c06:	4b 8d 34 23          	lea    rsi,[r11+r12*1]
  7d3c0a:	4b 8d 0c 26          	lea    rcx,[r14+r12*1]
  7d3c0e:	4b 8d 14 27          	lea    rdx,[r15+r12*1]
  7d3c12:	4b 8d 04 21          	lea    rax,[r9+r12*1]
  7d3c16:	c4 a1 7b 10 04 c0    	vmovsd xmm0,QWORD PTR [rax+r8*8]
  7d3c1c:	c4 a1 7b 5c 4c c1 f8 	vsubsd xmm1,xmm0,QWORD PTR [rcx+r8*8-0x8]
  7d3c23:	c4 a1 73 59 54 c2 f8 	vmulsd xmm2,xmm1,QWORD PTR [rdx+r8*8-0x8]
  7d3c2a:	c4 a1 7b 11 14 c6    	vmovsd QWORD PTR [rsi+r8*8],xmm2
  7d3c30:	49 ff c0             	inc    r8
  7d3c33:	4d 3b c2             	cmp    r8,r10
  7d3c36:	72 de                	jb     7d3c16 <biology_mod_mp_biology_tile_+0x7c06>
  7d3c38:	49 ff c5             	inc    r13
  7d3c3b:	4c 03 a5 d0 fa ff ff 	add    r12,QWORD PTR [rbp-0x530]
  7d3c42:	4c 3b ad e8 ef ff ff 	cmp    r13,QWORD PTR [rbp-0x1018]
  7d3c49:	0f 82 5e ff ff ff    	jb     7d3bad <biology_mod_mp_biology_tile_+0x7b9d>
  7d3c4f:	e9 f6 0c 00 00       	jmp    7d494a <biology_mod_mp_biology_tile_+0x893a>
  7d3c54:	49 ff c5             	inc    r13
  7d3c57:	4c 03 a5 d0 fa ff ff 	add    r12,QWORD PTR [rbp-0x530]
  7d3c5e:	4c 3b ad e8 ef ff ff 	cmp    r13,QWORD PTR [rbp-0x1018]
  7d3c65:	0f 82 42 ff ff ff    	jb     7d3bad <biology_mod_mp_biology_tile_+0x7b9d>
  7d3c6b:	48 8b 95 58 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xa8]
  7d3c72:	48 8b bd c8 ef ff ff 	mov    rdi,QWORD PTR [rbp-0x1038]
  7d3c79:	4c 8b 85 78 ff ff ff 	mov    r8,QWORD PTR [rbp-0x88]
  7d3c80:	48 8b 75 e0          	mov    rsi,QWORD PTR [rbp-0x20]
  7d3c84:	48 8b 8d e8 ef ff ff 	mov    rcx,QWORD PTR [rbp-0x1018]
  7d3c8b:	44 8b 55 a0          	mov    r10d,DWORD PTR [rbp-0x60]
  7d3c8f:	45 33 db             	xor    r11d,r11d
  7d3c92:	4c 8b 8d e0 ef ff ff 	mov    r9,QWORD PTR [rbp-0x1020]
  7d3c99:	48 3b 45 d0          	cmp    rax,QWORD PTR [rbp-0x30]
  7d3c9d:	0f 8c 72 02 00 00    	jl     7d3f15 <biology_mod_mp_biology_tile_+0x7f05>
  7d3ca3:	48 0f af bd 90 ef ff 	imul   rdi,QWORD PTR [rbp-0x1070]
  7d3caa:	ff 
  7d3cab:	4c 8b ad 68 ef ff ff 	mov    r13,QWORD PTR [rbp-0x1098]
  7d3cb2:	49 89 c6             	mov    r14,rax
  7d3cb5:	4c 8b a5 70 ef ff ff 	mov    r12,QWORD PTR [rbp-0x1090]
  7d3cbc:	41 89 f7             	mov    r15d,esi
  7d3cbf:	4c 2b 75 d0          	sub    r14,QWORD PTR [rbp-0x30]
  7d3cc3:	41 83 e7 fc          	and    r15d,0xfffffffc
  7d3cc7:	49 ff c6             	inc    r14
  7d3cca:	4d 63 ff             	movsxd r15,r15d
  7d3ccd:	4c 03 ef             	add    r13,rdi
  7d3cd0:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
  7d3cd4:	4c 03 e7             	add    r12,rdi
  7d3cd7:	48 03 bd 98 ef ff ff 	add    rdi,QWORD PTR [rbp-0x1068]
  7d3cde:	c5 f9 10 9d 80 eb ff 	vmovupd xmm3,XMMWORD PTR [rbp-0x1480]
  7d3ce5:	ff 
  7d3ce6:	c5 fb 10 8d c8 fa ff 	vmovsd xmm1,QWORD PTR [rbp-0x538]
  7d3ced:	ff 
  7d3cee:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  7d3cf2:	48 89 95 58 ff ff ff 	mov    QWORD PTR [rbp-0xa8],rdx
  7d3cf9:	4c 89 bd 60 ff ff ff 	mov    QWORD PTR [rbp-0xa0],r15
  7d3d00:	4c 89 a5 68 ff ff ff 	mov    QWORD PTR [rbp-0x98],r12
  7d3d07:	4c 89 ad 70 ff ff ff 	mov    QWORD PTR [rbp-0x90],r13
  7d3d0e:	4c 89 75 a8          	mov    QWORD PTR [rbp-0x58],r14
  7d3d12:	4c 89 85 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],r8
  7d3d19:	48 89 8d e8 ef ff ff 	mov    QWORD PTR [rbp-0x1018],rcx
  7d3d20:	44 89 55 a0          	mov    DWORD PTR [rbp-0x60],r10d
  7d3d24:	c5 fb 10 05 1c 91 07 	vmovsd xmm0,QWORD PTR [rip+0x7911c]        # 84ce48 <__STRLITPACK_0.112+0xd38>
  7d3d2b:	00 
  7d3d2c:	c5 f9 10 15 cc 81 07 	vmovupd xmm2,XMMWORD PTR [rip+0x781cc]        # 84bf00 <__STRLITPACK_54.50+0x110>
  7d3d33:	00 
  7d3d34:	45 33 d2             	xor    r10d,r10d
  7d3d37:	45 33 ed             	xor    r13d,r13d
  7d3d3a:	45 33 e4             	xor    r12d,r12d
  7d3d3d:	33 d2                	xor    edx,edx
  7d3d3f:	83 7d a0 00          	cmp    DWORD PTR [rbp-0x60],0x0
  7d3d43:	0f 8e a9 00 00 00    	jle    7d3df2 <biology_mod_mp_biology_tile_+0x7de2>
  7d3d49:	4c 8b b5 58 ff ff ff 	mov    r14,QWORD PTR [rbp-0xa8]
  7d3d50:	4e 8d 04 df          	lea    r8,[rdi+r11*8]
  7d3d54:	4c 8b bd 78 ff ff ff 	mov    r15,QWORD PTR [rbp-0x88]
  7d3d5b:	48 8b 8d 68 ff ff ff 	mov    rcx,QWORD PTR [rbp-0x98]
  7d3d62:	4c 89 5d 90          	mov    QWORD PTR [rbp-0x70],r11
  7d3d66:	c4 81 7b 10 24 fe    	vmovsd xmm4,QWORD PTR [r14+r15*8]
  7d3d6c:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  7d3d70:	4a 8d 0c d9          	lea    rcx,[rcx+r11*8]
  7d3d74:	4c 8b 9d 50 ff ff ff 	mov    r11,QWORD PTR [rbp-0xb0]
  7d3d7b:	44 8b 75 a0          	mov    r14d,DWORD PTR [rbp-0x60]
  7d3d7f:	4c 8b bd 48 ff ff ff 	mov    r15,QWORD PTR [rbp-0xb8]
  7d3d86:	c4 21 7b 10 04 0a    	vmovsd xmm8,QWORD PTR [rdx+r9*1]
  7d3d8c:	41 8d 75 01          	lea    esi,[r13+0x1]
  7d3d90:	41 3b f6             	cmp    esi,r14d
  7d3d93:	75 13                	jne    7d3da8 <biology_mod_mp_biology_tile_+0x7d98>
  7d3d95:	c4 c1 5b 5e e8       	vdivsd xmm5,xmm4,xmm8
  7d3d9a:	c4 81 53 59 34 04    	vmulsd xmm6,xmm5,QWORD PTR [r12+r8*1]
  7d3da0:	c4 81 7b 11 34 d3    	vmovsd QWORD PTR [r11+r10*8],xmm6
  7d3da6:	eb 31                	jmp    7d3dd9 <biology_mod_mp_biology_tile_+0x7dc9>
  7d3da8:	45 85 ed             	test   r13d,r13d
  7d3dab:	7e 23                	jle    7d3dd0 <biology_mod_mp_biology_tile_+0x7dc0>
  7d3dad:	41 3b f6             	cmp    esi,r14d
  7d3db0:	7d 1e                	jge    7d3dd0 <biology_mod_mp_biology_tile_+0x7dc0>
  7d3db2:	c4 c1 5b 5e f0       	vdivsd xmm6,xmm4,xmm8
  7d3db7:	c4 81 7b 10 2c 04    	vmovsd xmm5,QWORD PTR [r12+r8*1]
  7d3dbd:	c4 c1 53 5c 7c 0c 08 	vsubsd xmm7,xmm5,QWORD PTR [r12+rcx*1+0x8]
  7d3dc4:	c5 4b 59 c7          	vmulsd xmm8,xmm6,xmm7
  7d3dc8:	c4 01 7b 11 04 d3    	vmovsd QWORD PTR [r11+r10*8],xmm8
  7d3dce:	eb 09                	jmp    7d3dd9 <biology_mod_mp_biology_tile_+0x7dc9>
  7d3dd0:	45 85 ed             	test   r13d,r13d
  7d3dd3:	0f 84 3c 0b 00 00    	je     7d4915 <biology_mod_mp_biology_tile_+0x8905>
  7d3dd9:	4c 03 e0             	add    r12,rax
  7d3ddc:	49 03 d7             	add    rdx,r15
  7d3ddf:	49 ff c2             	inc    r10
  7d3de2:	41 89 f5             	mov    r13d,esi
  7d3de5:	41 3b f6             	cmp    esi,r14d
  7d3de8:	72 9c                	jb     7d3d86 <biology_mod_mp_biology_tile_+0x7d76>
  7d3dea:	4c 8b 5d 90          	mov    r11,QWORD PTR [rbp-0x70]
  7d3dee:	48 8b 75 e0          	mov    rsi,QWORD PTR [rbp-0x20]
  7d3df2:	48 85 f6             	test   rsi,rsi
  7d3df5:	0f 8e f3 00 00 00    	jle    7d3eee <biology_mod_mp_biology_tile_+0x7ede>
  7d3dfb:	48 83 7d 80 f8       	cmp    QWORD PTR [rbp-0x80],0xfffffffffffffff8
  7d3e00:	0f 84 07 0b 00 00    	je     7d490d <biology_mod_mp_biology_tile_+0x88fd>
  7d3e06:	48 83 fe 04          	cmp    rsi,0x4
  7d3e0a:	0f 8c fd 0a 00 00    	jl     7d490d <biology_mod_mp_biology_tile_+0x88fd>
  7d3e10:	48 8b 95 70 ff ff ff 	mov    rdx,QWORD PTR [rbp-0x90]
  7d3e17:	45 33 d2             	xor    r10d,r10d
  7d3e1a:	4c 8b a5 60 ff ff ff 	mov    r12,QWORD PTR [rbp-0xa0]
  7d3e21:	4e 8d 04 df          	lea    r8,[rdi+r11*8]
  7d3e25:	4c 8b b5 50 ff ff ff 	mov    r14,QWORD PTR [rbp-0xb0]
  7d3e2c:	33 c9                	xor    ecx,ecx
  7d3e2e:	4c 8b bd 40 ff ff ff 	mov    r15,QWORD PTR [rbp-0xc0]
  7d3e35:	4a 8d 54 da 10       	lea    rdx,[rdx+r11*8+0x10]
  7d3e3a:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  7d3e3e:	4d 89 e5             	mov    r13,r12
  7d3e41:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  7d3e48:	00 
  7d3e49:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  7d3e50:	c4 81 61 59 34 d6    	vmulpd xmm6,xmm3,XMMWORD PTR [r14+r10*8]
  7d3e56:	c4 01 61 59 5c d6 10 	vmulpd xmm11,xmm3,XMMWORD PTR [r14+r10*8+0x10]
  7d3e5d:	49 83 c2 04          	add    r10,0x4
  7d3e61:	49 8d 34 08          	lea    rsi,[r8+rcx*1]
  7d3e65:	c5 fb 10 26          	vmovsd xmm4,QWORD PTR [rsi]
  7d3e69:	48 8d 0c 81          	lea    rcx,[rcx+rax*4]
  7d3e6d:	c4 a1 59 16 6c fe 08 	vmovhpd xmm5,xmm4,QWORD PTR [rsi+r15*8+0x8]
  7d3e74:	c5 d1 5c fe          	vsubpd xmm7,xmm5,xmm6
  7d3e78:	c5 41 5f c2          	vmaxpd xmm8,xmm7,xmm2
  7d3e7c:	c5 7b 11 06          	vmovsd QWORD PTR [rsi],xmm8
  7d3e80:	c4 21 79 17 44 fe 08 	vmovhpd QWORD PTR [rsi+r15*8+0x8],xmm8
  7d3e87:	c5 7b 10 0a          	vmovsd xmm9,QWORD PTR [rdx]
  7d3e8b:	c4 21 31 16 54 fa 08 	vmovhpd xmm10,xmm9,QWORD PTR [rdx+r15*8+0x8]
  7d3e92:	c4 41 29 5c e3       	vsubpd xmm12,xmm10,xmm11
  7d3e97:	c5 19 5f ea          	vmaxpd xmm13,xmm12,xmm2
  7d3e9b:	c5 7b 11 2a          	vmovsd QWORD PTR [rdx],xmm13
  7d3e9f:	c4 21 79 17 6c fa 08 	vmovhpd QWORD PTR [rdx+r15*8+0x8],xmm13
  7d3ea6:	48 8d 14 82          	lea    rdx,[rdx+rax*4]
  7d3eaa:	4d 3b d5             	cmp    r10,r13
  7d3ead:	72 a1                	jb     7d3e50 <biology_mod_mp_biology_tile_+0x7e40>
  7d3eaf:	48 8b 75 e0          	mov    rsi,QWORD PTR [rbp-0x20]
  7d3eb3:	48 89 c2             	mov    rdx,rax
  7d3eb6:	49 0f af d4          	imul   rdx,r12
  7d3eba:	4c 3b e6             	cmp    r12,rsi
  7d3ebd:	73 2f                	jae    7d3eee <biology_mod_mp_biology_tile_+0x7ede>
  7d3ebf:	4a 8d 0c df          	lea    rcx,[rdi+r11*8]
  7d3ec3:	48 03 d1             	add    rdx,rcx
  7d3ec6:	48 8b 8d 50 ff ff ff 	mov    rcx,QWORD PTR [rbp-0xb0]
  7d3ecd:	c4 a1 73 59 2c e1    	vmulsd xmm5,xmm1,QWORD PTR [rcx+r12*8]
  7d3ed3:	49 ff c4             	inc    r12
  7d3ed6:	c5 fb 10 22          	vmovsd xmm4,QWORD PTR [rdx]
  7d3eda:	c5 db 5c f5          	vsubsd xmm6,xmm4,xmm5
  7d3ede:	c5 cb 5f f0          	vmaxsd xmm6,xmm6,xmm0
  7d3ee2:	c5 fb 11 32          	vmovsd QWORD PTR [rdx],xmm6
  7d3ee6:	48 03 d0             	add    rdx,rax
  7d3ee9:	4c 3b e6             	cmp    r12,rsi
  7d3eec:	72 df                	jb     7d3ecd <biology_mod_mp_biology_tile_+0x7ebd>
  7d3eee:	49 ff c3             	inc    r11
  7d3ef1:	4c 03 4d 98          	add    r9,QWORD PTR [rbp-0x68]
  7d3ef5:	4c 3b 5d a8          	cmp    r11,QWORD PTR [rbp-0x58]
  7d3ef9:	0f 82 35 fe ff ff    	jb     7d3d34 <biology_mod_mp_biology_tile_+0x7d24>
  7d3eff:	4c 8b 85 78 ff ff ff 	mov    r8,QWORD PTR [rbp-0x88]
  7d3f06:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  7d3f0a:	48 8b 8d e8 ef ff ff 	mov    rcx,QWORD PTR [rbp-0x1018]
  7d3f11:	44 8b 55 a0          	mov    r10d,DWORD PTR [rbp-0x60]
  7d3f15:	49 ff c0             	inc    r8
  7d3f18:	49 83 f8 06          	cmp    r8,0x6
  7d3f1c:	0f 82 6e fb ff ff    	jb     7d3a90 <biology_mod_mp_biology_tile_+0x7a80>
  7d3f22:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  7d3f26:	45 33 c0             	xor    r8d,r8d
  7d3f29:	48 89 8d e8 ef ff ff 	mov    QWORD PTR [rbp-0x1018],rcx
  7d3f30:	33 ff                	xor    edi,edi
  7d3f32:	4c 8b 9d 98 ef ff ff 	mov    r11,QWORD PTR [rbp-0x1068]
  7d3f39:	48 8b 95 b0 ea ff ff 	mov    rdx,QWORD PTR [rbp-0x1550]
  7d3f40:	4c 8b 4d d0          	mov    r9,QWORD PTR [rbp-0x30]
  7d3f44:	48 83 7d e0 00       	cmp    QWORD PTR [rbp-0x20],0x0
  7d3f49:	0f 8e 4a 09 00 00    	jle    7d4899 <biology_mod_mp_biology_tile_+0x8889>
  7d3f4f:	4c 8b a5 90 ef ff ff 	mov    r12,QWORD PTR [rbp-0x1070]
  7d3f56:	48 63 35 1b d0 40 00 	movsxd rsi,DWORD PTR [rip+0x40d01b]        # be0f78 <mod_biology_mp_iopal_>
  7d3f5d:	49 0f af f4          	imul   rsi,r12
  7d3f61:	c5 fd 10 3d 57 73 07 	vmovupd ymm7,YMMWORD PTR [rip+0x77357]        # 84b2c0 <var$630.126.450+0x1320>
  7d3f68:	00 
  7d3f69:	c5 fb 10 15 37 82 07 	vmovsd xmm2,QWORD PTR [rip+0x78237]        # 84c1a8 <__STRLITPACK_0.112+0x98>
  7d3f70:	00 
  7d3f71:	c5 fb 10 0d c7 8e 07 	vmovsd xmm1,QWORD PTR [rip+0x78ec7]        # 84ce40 <__STRLITPACK_0.112+0xd30>
  7d3f78:	00 
  7d3f79:	c5 fb 10 05 b7 8e 07 	vmovsd xmm0,QWORD PTR [rip+0x78eb7]        # 84ce38 <__STRLITPACK_0.112+0xd28>
  7d3f80:	00 
  7d3f81:	c5 fb 10 35 a7 8e 07 	vmovsd xmm6,QWORD PTR [rip+0x78ea7]        # 84ce30 <__STRLITPACK_0.112+0xd20>
  7d3f88:	00 
  7d3f89:	49 03 f3             	add    rsi,r11
  7d3f8c:	48 63 0d dd cf 40 00 	movsxd rcx,DWORD PTR [rip+0x40cfdd]        # be0f70 <mod_biology_mp_isdet_>
  7d3f93:	48 89 b5 d8 e9 ff ff 	mov    QWORD PTR [rbp-0x1628],rsi
  7d3f9a:	49 0f af cc          	imul   rcx,r12
  7d3f9e:	c5 fd 10 1d fa 72 07 	vmovupd ymm3,YMMWORD PTR [rip+0x772fa]        # 84b2a0 <var$630.126.450+0x1300>
  7d3fa5:	00 
  7d3fa6:	c5 fd 10 25 d2 72 07 	vmovupd ymm4,YMMWORD PTR [rip+0x772d2]        # 84b280 <var$630.126.450+0x12e0>
  7d3fad:	00 
  7d3fae:	c5 fd 10 2d aa 72 07 	vmovupd ymm5,YMMWORD PTR [rip+0x772aa]        # 84b260 <var$630.126.450+0x12c0>
  7d3fb5:	00 
  7d3fb6:	48 63 35 c3 cf 40 00 	movsxd rsi,DWORD PTR [rip+0x40cfc3]        # be0f80 <mod_biology_mp_ipo4__>
  7d3fbd:	49 03 cb             	add    rcx,r11
  7d3fc0:	4c 63 35 81 cf 40 00 	movsxd r14,DWORD PTR [rip+0x40cf81]        # be0f48 <mod_biology_mp_isioh_>
  7d3fc7:	4c 63 3d 6a cf 40 00 	movsxd r15,DWORD PTR [rip+0x40cf6a]        # be0f38 <mod_biology_mp_ino3__>
  7d3fce:	4c 63 2d 6b cf 40 00 	movsxd r13,DWORD PTR [rip+0x40cf6b]        # be0f40 <mod_biology_mp_inh4__>
  7d3fd5:	49 0f af f4          	imul   rsi,r12
  7d3fd9:	4d 0f af f4          	imul   r14,r12
  7d3fdd:	4d 0f af fc          	imul   r15,r12
  7d3fe1:	4d 0f af ec          	imul   r13,r12
  7d3fe5:	49 03 f3             	add    rsi,r11
  7d3fe8:	4d 03 f3             	add    r14,r11
  7d3feb:	4d 03 fb             	add    r15,r11
  7d3fee:	4d 03 dd             	add    r11,r13
  7d3ff1:	48 89 8d f8 ec ff ff 	mov    QWORD PTR [rbp-0x1308],rcx
  7d3ff8:	48 89 95 b0 ea ff ff 	mov    QWORD PTR [rbp-0x1550],rdx
  7d3fff:	4c 89 bd e8 ec ff ff 	mov    QWORD PTR [rbp-0x1318],r15
  7d4006:	4c 89 b5 f0 ec ff ff 	mov    QWORD PTR [rbp-0x1310],r14
  7d400d:	4c 89 9d 98 ef ff ff 	mov    QWORD PTR [rbp-0x1068],r11
  7d4014:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
  7d4018:	44 89 55 a0          	mov    DWORD PTR [rbp-0x60],r10d
  7d401c:	4c 89 4d d0          	mov    QWORD PTR [rbp-0x30],r9
  7d4020:	48 8b 95 d8 e9 ff ff 	mov    rdx,QWORD PTR [rbp-0x1628]
  7d4027:	48 8b 4d 88          	mov    rcx,QWORD PTR [rbp-0x78]
  7d402b:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  7d402f:	48 3b 45 d0          	cmp    rax,QWORD PTR [rbp-0x30]
  7d4033:	0f 8c 61 01 00 00    	jl     7d419a <biology_mod_mp_biology_tile_+0x818a>
  7d4039:	48 83 f9 04          	cmp    rcx,0x4
  7d403d:	0f 8c 4f 08 00 00    	jl     7d4892 <biology_mod_mp_biology_tile_+0x8882>
  7d4043:	4c 8b 9d f8 ec ff ff 	mov    r11,QWORD PTR [rbp-0x1308]
  7d404a:	45 33 f6             	xor    r14d,r14d
  7d404d:	4c 8b 95 98 ef ff ff 	mov    r10,QWORD PTR [rbp-0x1068]
  7d4054:	4c 8d 24 3a          	lea    r12,[rdx+rdi*1]
  7d4058:	4c 8b 8d f0 ec ff ff 	mov    r9,QWORD PTR [rbp-0x1310]
  7d405f:	4c 8b bd e8 ec ff ff 	mov    r15,QWORD PTR [rbp-0x1318]
  7d4066:	4d 8d 2c 3b          	lea    r13,[r11+rdi*1]
  7d406a:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
  7d406e:	4c 8d 1c 3e          	lea    r11,[rsi+rdi*1]
  7d4072:	48 89 c1             	mov    rcx,rax
  7d4075:	4c 03 d7             	add    r10,rdi
  7d4078:	4c 03 cf             	add    r9,rdi
  7d407b:	4c 03 ff             	add    r15,rdi
  7d407e:	66 90                	xchg   ax,ax
  7d4080:	c4 01 7d 10 04 f7    	vmovupd ymm8,YMMWORD PTR [r15+r14*8]
  7d4086:	c5 3d 5d cd          	vminpd ymm9,ymm8,ymm5
  7d408a:	c4 01 7d 11 0c f7    	vmovupd YMMWORD PTR [r15+r14*8],ymm9
  7d4090:	c4 01 7d 10 14 f1    	vmovupd ymm10,YMMWORD PTR [r9+r14*8]
  7d4096:	c5 2d 5d dd          	vminpd ymm11,ymm10,ymm5
  7d409a:	c4 01 7d 11 1c f1    	vmovupd YMMWORD PTR [r9+r14*8],ymm11
  7d40a0:	c4 01 7d 10 24 f2    	vmovupd ymm12,YMMWORD PTR [r10+r14*8]
  7d40a6:	c5 1d 5d ec          	vminpd ymm13,ymm12,ymm4
  7d40aa:	c4 01 7d 11 2c f2    	vmovupd YMMWORD PTR [r10+r14*8],ymm13
  7d40b0:	c4 01 7d 10 34 f3    	vmovupd ymm14,YMMWORD PTR [r11+r14*8]
  7d40b6:	c5 0d 5d fb          	vminpd ymm15,ymm14,ymm3
  7d40ba:	c4 01 7d 11 3c f3    	vmovupd YMMWORD PTR [r11+r14*8],ymm15
  7d40c0:	c4 01 7d 10 04 f4    	vmovupd ymm8,YMMWORD PTR [r12+r14*8]
  7d40c6:	c5 3d 5d cf          	vminpd ymm9,ymm8,ymm7
  7d40ca:	c4 01 7d 11 0c f4    	vmovupd YMMWORD PTR [r12+r14*8],ymm9
  7d40d0:	c4 01 7d 10 54 f5 00 	vmovupd ymm10,YMMWORD PTR [r13+r14*8+0x0]
  7d40d7:	c5 2d 5d df          	vminpd ymm11,ymm10,ymm7
  7d40db:	c4 01 7d 11 5c f5 00 	vmovupd YMMWORD PTR [r13+r14*8+0x0],ymm11
  7d40e2:	49 83 c6 04          	add    r14,0x4
  7d40e6:	4c 3b f1             	cmp    r14,rcx
  7d40e9:	72 95                	jb     7d4080 <biology_mod_mp_biology_tile_+0x8070>
  7d40eb:	48 8b 4d 88          	mov    rcx,QWORD PTR [rbp-0x78]
  7d40ef:	48 3b c1             	cmp    rax,rcx
  7d40f2:	0f 83 a2 00 00 00    	jae    7d419a <biology_mod_mp_biology_tile_+0x818a>
  7d40f8:	4c 8b 95 f8 ec ff ff 	mov    r10,QWORD PTR [rbp-0x1308]
  7d40ff:	4c 8d 1c 3a          	lea    r11,[rdx+rdi*1]
  7d4103:	4c 8b 8d 98 ef ff ff 	mov    r9,QWORD PTR [rbp-0x1068]
  7d410a:	4c 8d 24 3e          	lea    r12,[rsi+rdi*1]
  7d410e:	4c 8b b5 f0 ec ff ff 	mov    r14,QWORD PTR [rbp-0x1310]
  7d4115:	4c 8b ad e8 ec ff ff 	mov    r13,QWORD PTR [rbp-0x1318]
  7d411c:	4c 03 d7             	add    r10,rdi
  7d411f:	4c 03 cf             	add    r9,rdi
  7d4122:	4c 03 f7             	add    r14,rdi
  7d4125:	4c 03 ef             	add    r13,rdi
  7d4128:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  7d412f:	00 
  7d4130:	c4 41 7b 10 44 c5 00 	vmovsd xmm8,QWORD PTR [r13+rax*8+0x0]
  7d4137:	c5 3b 5d c6          	vminsd xmm8,xmm8,xmm6
  7d413b:	c4 41 7b 11 44 c5 00 	vmovsd QWORD PTR [r13+rax*8+0x0],xmm8
  7d4142:	c4 41 7b 10 0c c6    	vmovsd xmm9,QWORD PTR [r14+rax*8]
  7d4148:	c5 33 5d ce          	vminsd xmm9,xmm9,xmm6
  7d414c:	c4 41 7b 11 0c c6    	vmovsd QWORD PTR [r14+rax*8],xmm9
  7d4152:	c4 41 7b 10 14 c1    	vmovsd xmm10,QWORD PTR [r9+rax*8]
  7d4158:	c5 2b 5d d0          	vminsd xmm10,xmm10,xmm0
  7d415c:	c4 41 7b 11 14 c1    	vmovsd QWORD PTR [r9+rax*8],xmm10
  7d4162:	c4 41 7b 10 1c c4    	vmovsd xmm11,QWORD PTR [r12+rax*8]
  7d4168:	c5 23 5d d9          	vminsd xmm11,xmm11,xmm1
  7d416c:	c4 41 7b 11 1c c4    	vmovsd QWORD PTR [r12+rax*8],xmm11
  7d4172:	c4 41 7b 10 24 c3    	vmovsd xmm12,QWORD PTR [r11+rax*8]
  7d4178:	c5 1b 5d e2          	vminsd xmm12,xmm12,xmm2
  7d417c:	c4 41 7b 11 24 c3    	vmovsd QWORD PTR [r11+rax*8],xmm12
  7d4182:	c4 41 7b 10 2c c2    	vmovsd xmm13,QWORD PTR [r10+rax*8]
  7d4188:	c5 13 5d ea          	vminsd xmm13,xmm13,xmm2
  7d418c:	c4 41 7b 11 2c c2    	vmovsd QWORD PTR [r10+rax*8],xmm13
  7d4192:	48 ff c0             	inc    rax
  7d4195:	48 3b c1             	cmp    rax,rcx
  7d4198:	72 96                	jb     7d4130 <biology_mod_mp_biology_tile_+0x8120>
  7d419a:	49 ff c0             	inc    r8
  7d419d:	48 03 7d d8          	add    rdi,QWORD PTR [rbp-0x28]
  7d41a1:	4c 3b 45 e0          	cmp    r8,QWORD PTR [rbp-0x20]
  7d41a5:	0f 82 80 fe ff ff    	jb     7d402b <biology_mod_mp_biology_tile_+0x801b>
  7d41ab:	8b 8d 18 ea ff ff    	mov    ecx,DWORD PTR [rbp-0x15e8]
  7d41b1:	ff c1                	inc    ecx
  7d41b3:	48 8b 95 b0 ea ff ff 	mov    rdx,QWORD PTR [rbp-0x1550]
  7d41ba:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  7d41be:	44 8b 55 a0          	mov    r10d,DWORD PTR [rbp-0x60]
  7d41c2:	4c 8b 4d d0          	mov    r9,QWORD PTR [rbp-0x30]
  7d41c6:	89 8d 18 ea ff ff    	mov    DWORD PTR [rbp-0x15e8],ecx
  7d41cc:	3b 8d 20 ea ff ff    	cmp    ecx,DWORD PTR [rbp-0x15e0]
  7d41d2:	0f 82 4f bd ff ff    	jb     7cff27 <biology_mod_mp_biology_tile_+0x3f17>
  7d41d8:	4c 89 4d d0          	mov    QWORD PTR [rbp-0x30],r9
  7d41dc:	48 89 95 b0 ea ff ff 	mov    QWORD PTR [rbp-0x1550],rdx
  7d41e3:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
  7d41e7:	44 89 55 a0          	mov    DWORD PTR [rbp-0x60],r10d
  7d41eb:	c5 fb 10 05 25 8c 07 	vmovsd xmm0,QWORD PTR [rip+0x78c25]        # 84ce18 <__STRLITPACK_0.112+0xd08>
  7d41f2:	00 
  7d41f3:	c5 fb 10 25 15 8c 07 	vmovsd xmm4,QWORD PTR [rip+0x78c15]        # 84ce10 <__STRLITPACK_0.112+0xd00>
  7d41fa:	00 
  7d41fb:	c5 f9 10 1d ed 7c 07 	vmovupd xmm3,XMMWORD PTR [rip+0x77ced]        # 84bef0 <__STRLITPACK_54.50+0x100>
  7d4202:	00 
  7d4203:	c5 f9 10 15 d5 7c 07 	vmovupd xmm2,XMMWORD PTR [rip+0x77cd5]        # 84bee0 <__STRLITPACK_54.50+0xf0>
  7d420a:	00 
  7d420b:	c5 fd 10 0d ed 6f 07 	vmovupd ymm1,YMMWORD PTR [rip+0x76fed]        # 84b200 <var$630.126.450+0x1260>
  7d4212:	00 
  7d4213:	c5 fb 10 35 ed 8b 07 	vmovsd xmm6,QWORD PTR [rip+0x78bed]        # 84ce08 <__STRLITPACK_0.112+0xcf8>
  7d421a:	00 
  7d421b:	c5 f9 10 2d ad 7c 07 	vmovupd xmm5,XMMWORD PTR [rip+0x77cad]        # 84bed0 <__STRLITPACK_54.50+0xe0>
  7d4222:	00 
  7d4223:	c5 fd 10 3d b5 6f 07 	vmovupd ymm7,YMMWORD PTR [rip+0x76fb5]        # 84b1e0 <var$630.126.450+0x1240>
  7d422a:	00 
  7d422b:	4c 8b 4d e0          	mov    r9,QWORD PTR [rbp-0x20]
  7d422f:	4c 63 05 92 c8 40 00 	movsxd r8,DWORD PTR [rip+0x40c892]        # be0ac8 <mod_param_mp_nbt_>
  7d4236:	33 c9                	xor    ecx,ecx
  7d4238:	33 f6                	xor    esi,esi
  7d423a:	4d 85 c9             	test   r9,r9
  7d423d:	0f 8e dc 01 00 00    	jle    7d441f <biology_mod_mp_biology_tile_+0x840f>
  7d4243:	4c 63 1d 46 cd 40 00 	movsxd r11,DWORD PTR [rip+0x40cd46]        # be0f90 <mod_biology_mp_itic__>
  7d424a:	4c 8b a5 90 ef ff ff 	mov    r12,QWORD PTR [rbp-0x1070]
  7d4251:	48 63 05 40 cd 40 00 	movsxd rax,DWORD PTR [rip+0x40cd40]        # be0f98 <mod_biology_mp_italk_>
  7d4258:	4d 0f af dc          	imul   r11,r12
  7d425c:	49 0f af c4          	imul   rax,r12
  7d4260:	4c 8b 75 d0          	mov    r14,QWORD PTR [rbp-0x30]
  7d4264:	4c 8b ad c8 de ff ff 	mov    r13,QWORD PTR [rbp-0x2138]
  7d426b:	44 89 f7             	mov    edi,r14d
  7d426e:	4c 2b ad d0 ea ff ff 	sub    r13,QWORD PTR [rbp-0x1530]
  7d4275:	f7 df                	neg    edi
  7d4277:	03 bd f8 ea ff ff    	add    edi,DWORD PTR [rbp-0x1508]
  7d427d:	4f 8d 14 f3          	lea    r10,[r11+r14*8]
  7d4281:	49 f7 da             	neg    r10
  7d4284:	4a 8d 14 f0          	lea    rdx,[rax+r14*8]
  7d4288:	48 f7 da             	neg    rdx
  7d428b:	4d 03 d4             	add    r10,r12
  7d428e:	49 03 d4             	add    rdx,r12
  7d4291:	49 f7 da             	neg    r10
  7d4294:	48 f7 da             	neg    rdx
  7d4297:	4d 03 d5             	add    r10,r13
  7d429a:	49 03 d5             	add    rdx,r13
  7d429d:	4d 2b ec             	sub    r13,r12
  7d42a0:	ff c7                	inc    edi
  7d42a2:	4c 63 e7             	movsxd r12,edi
  7d42a5:	4c 89 a5 18 e9 ff ff 	mov    QWORD PTR [rbp-0x16e8],r12
  7d42ac:	4c 89 4d e0          	mov    QWORD PTR [rbp-0x20],r9
  7d42b0:	4f 8d 7c f5 00       	lea    r15,[r13+r14*8+0x0]
  7d42b5:	41 89 fe             	mov    r14d,edi
  7d42b8:	4d 03 df             	add    r11,r15
  7d42bb:	41 83 e6 fc          	and    r14d,0xfffffffc
  7d42bf:	49 03 c7             	add    rax,r15
  7d42c2:	4d 63 ee             	movsxd r13,r14d
  7d42c5:	44 89 b5 28 e9 ff ff 	mov    DWORD PTR [rbp-0x16d8],r14d
  7d42cc:	4c 89 ad 20 e9 ff ff 	mov    QWORD PTR [rbp-0x16e0],r13
  7d42d3:	4c 89 9d 30 e9 ff ff 	mov    QWORD PTR [rbp-0x16d0],r11
  7d42da:	4c 89 85 00 eb ff ff 	mov    QWORD PTR [rbp-0x1500],r8
  7d42e1:	4c 8b 75 c8          	mov    r14,QWORD PTR [rbp-0x38]
  7d42e5:	4c 3b 75 d0          	cmp    r14,QWORD PTR [rbp-0x30]
  7d42e9:	0f 8c 10 01 00 00    	jl     7d43ff <biology_mod_mp_biology_tile_+0x83ef>
  7d42ef:	83 ff 04             	cmp    edi,0x4
  7d42f2:	0f 8c 92 05 00 00    	jl     7d488a <biology_mod_mp_biology_tile_+0x887a>
  7d42f8:	4c 8b 85 30 e9 ff ff 	mov    r8,QWORD PTR [rbp-0x16d0]
  7d42ff:	45 33 e4             	xor    r12d,r12d
  7d4302:	44 8b 9d 28 e9 ff ff 	mov    r11d,DWORD PTR [rbp-0x16d8]
  7d4309:	4c 8d 0c 30          	lea    r9,[rax+rsi*1]
  7d430d:	4c 8b ad 20 e9 ff ff 	mov    r13,QWORD PTR [rbp-0x16e0]
  7d4314:	4c 03 c6             	add    r8,rsi
  7d4317:	c4 01 7d 10 04 e0    	vmovupd ymm8,YMMWORD PTR [r8+r12*8]
  7d431d:	c5 3d 5d cf          	vminpd ymm9,ymm8,ymm7
  7d4321:	c5 35 5f d1          	vmaxpd ymm10,ymm9,ymm1
  7d4325:	c4 01 7d 11 14 e0    	vmovupd YMMWORD PTR [r8+r12*8],ymm10
  7d432b:	c4 01 7d 10 1c e1    	vmovupd ymm11,YMMWORD PTR [r9+r12*8]
  7d4331:	c5 25 5d e7          	vminpd ymm12,ymm11,ymm7
  7d4335:	c5 1d 5f e9          	vmaxpd ymm13,ymm12,ymm1
  7d4339:	c4 01 7d 11 2c e1    	vmovupd YMMWORD PTR [r9+r12*8],ymm13
  7d433f:	49 83 c4 04          	add    r12,0x4
  7d4343:	4d 3b e5             	cmp    r12,r13
  7d4346:	72 cf                	jb     7d4317 <biology_mod_mp_biology_tile_+0x8307>
  7d4348:	45 8d 43 01          	lea    r8d,[r11+0x1]
  7d434c:	44 3b c7             	cmp    r8d,edi
  7d434f:	0f 87 aa 00 00 00    	ja     7d43ff <biology_mod_mp_biology_tile_+0x83ef>
  7d4355:	4d 63 db             	movsxd r11,r11d
  7d4358:	4c 8b ad 18 e9 ff ff 	mov    r13,QWORD PTR [rbp-0x16e8]
  7d435f:	4d 2b eb             	sub    r13,r11
  7d4362:	49 83 fd 02          	cmp    r13,0x2
  7d4366:	0f 8c 16 05 00 00    	jl     7d4882 <biology_mod_mp_biology_tile_+0x8872>
  7d436c:	45 89 ec             	mov    r12d,r13d
  7d436f:	4c 8d 04 32          	lea    r8,[rdx+rsi*1]
  7d4373:	41 83 e4 fe          	and    r12d,0xfffffffe
  7d4377:	4d 8d 3c 32          	lea    r15,[r10+rsi*1]
  7d437b:	4d 63 e4             	movsxd r12,r12d
  7d437e:	45 33 c9             	xor    r9d,r9d
  7d4381:	4f 8d 04 d8          	lea    r8,[r8+r11*8]
  7d4385:	4f 8d 3c df          	lea    r15,[r15+r11*8]
  7d4389:	c4 01 79 10 04 cf    	vmovupd xmm8,XMMWORD PTR [r15+r9*8]
  7d438f:	c5 39 5d ca          	vminpd xmm9,xmm8,xmm2
  7d4393:	c5 31 5f d3          	vmaxpd xmm10,xmm9,xmm3
  7d4397:	c4 01 79 11 14 cf    	vmovupd XMMWORD PTR [r15+r9*8],xmm10
  7d439d:	c4 01 79 10 1c c8    	vmovupd xmm11,XMMWORD PTR [r8+r9*8]
  7d43a3:	c5 21 5d e2          	vminpd xmm12,xmm11,xmm2
  7d43a7:	c5 19 5f eb          	vmaxpd xmm13,xmm12,xmm3
  7d43ab:	c4 01 79 11 2c c8    	vmovupd XMMWORD PTR [r8+r9*8],xmm13
  7d43b1:	49 83 c1 02          	add    r9,0x2
  7d43b5:	4d 3b cc             	cmp    r9,r12
  7d43b8:	72 cf                	jb     7d4389 <biology_mod_mp_biology_tile_+0x8379>
  7d43ba:	4d 3b e5             	cmp    r12,r13
  7d43bd:	73 40                	jae    7d43ff <biology_mod_mp_biology_tile_+0x83ef>
  7d43bf:	4c 8d 0c 32          	lea    r9,[rdx+rsi*1]
  7d43c3:	4d 8d 04 32          	lea    r8,[r10+rsi*1]
  7d43c7:	4f 8d 0c d9          	lea    r9,[r9+r11*8]
  7d43cb:	4f 8d 04 d8          	lea    r8,[r8+r11*8]
  7d43cf:	c4 01 7b 10 04 e0    	vmovsd xmm8,QWORD PTR [r8+r12*8]
  7d43d5:	c5 3b 5d c4          	vminsd xmm8,xmm8,xmm4
  7d43d9:	c5 3b 5f c0          	vmaxsd xmm8,xmm8,xmm0
  7d43dd:	c4 01 7b 11 04 e0    	vmovsd QWORD PTR [r8+r12*8],xmm8
  7d43e3:	c4 01 7b 10 0c e1    	vmovsd xmm9,QWORD PTR [r9+r12*8]
  7d43e9:	c5 33 5d cc          	vminsd xmm9,xmm9,xmm4
  7d43ed:	c5 33 5f c8          	vmaxsd xmm9,xmm9,xmm0
  7d43f1:	c4 01 7b 11 0c e1    	vmovsd QWORD PTR [r9+r12*8],xmm9
  7d43f7:	49 ff c4             	inc    r12
  7d43fa:	4d 3b e5             	cmp    r12,r13
  7d43fd:	72 d0                	jb     7d43cf <biology_mod_mp_biology_tile_+0x83bf>
  7d43ff:	48 ff c1             	inc    rcx
  7d4402:	48 03 75 d8          	add    rsi,QWORD PTR [rbp-0x28]
  7d4406:	48 3b 4d e0          	cmp    rcx,QWORD PTR [rbp-0x20]
  7d440a:	0f 82 d5 fe ff ff    	jb     7d42e5 <biology_mod_mp_biology_tile_+0x82d5>
  7d4410:	4c 89 75 c8          	mov    QWORD PTR [rbp-0x38],r14
  7d4414:	4c 8b 4d e0          	mov    r9,QWORD PTR [rbp-0x20]
  7d4418:	4c 8b 85 00 eb ff ff 	mov    r8,QWORD PTR [rbp-0x1500]
  7d441f:	45 33 e4             	xor    r12d,r12d
  7d4422:	4d 85 c0             	test   r8,r8
  7d4425:	0f 8e 21 04 00 00    	jle    7d484c <biology_mod_mp_biology_tile_+0x883c>
  7d442b:	48 8b bd 98 db ff ff 	mov    rdi,QWORD PTR [rbp-0x2468]
  7d4432:	48 8b 85 d0 ea ff ff 	mov    rax,QWORD PTR [rbp-0x1530]
  7d4439:	48 2b f8             	sub    rdi,rax
  7d443c:	48 8b 95 38 e2 ff ff 	mov    rdx,QWORD PTR [rbp-0x1dc8]
  7d4443:	48 2b bd a0 e9 ff ff 	sub    rdi,QWORD PTR [rbp-0x1660]
  7d444a:	4c 8b 75 d0          	mov    r14,QWORD PTR [rbp-0x30]
  7d444e:	4c 89 a5 10 ea ff ff 	mov    QWORD PTR [rbp-0x15f0],r12
  7d4455:	4c 89 4d e0          	mov    QWORD PTR [rbp-0x20],r9
  7d4459:	4c 8b 25 20 a1 2e 00 	mov    r12,QWORD PTR [rip+0x2ea120]        # abe580 <mod_biology_mp_idbio_>
  7d4460:	4e 8d 3c f7          	lea    r15,[rdi+r14*8]
  7d4464:	4c 8b 8a 98 00 00 00 	mov    r9,QWORD PTR [rdx+0x98]
  7d446b:	48 8b bd c8 de ff ff 	mov    rdi,QWORD PTR [rbp-0x2138]
  7d4472:	4c 8b 9d b0 ea ff ff 	mov    r11,QWORD PTR [rbp-0x1550]
  7d4479:	48 2b f8             	sub    rdi,rax
  7d447c:	4c 89 d8             	mov    rax,r11
  7d447f:	4c 89 a5 00 ea ff ff 	mov    QWORD PTR [rbp-0x1600],r12
  7d4486:	4c 89 bd b0 e9 ff ff 	mov    QWORD PTR [rbp-0x1650],r15
  7d448d:	4c 8b 22             	mov    r12,QWORD PTR [rdx]
  7d4490:	4c 89 8d b8 e9 ff ff 	mov    QWORD PTR [rbp-0x1648],r9
  7d4497:	4d 2b e1             	sub    r12,r9
  7d449a:	4c 8b 8a 80 00 00 00 	mov    r9,QWORD PTR [rdx+0x80]
  7d44a1:	4c 8b 52 50          	mov    r10,QWORD PTR [rdx+0x50]
  7d44a5:	4c 8b bd 58 e2 ff ff 	mov    r15,QWORD PTR [rbp-0x1da8]
  7d44ac:	4d 0f af f9          	imul   r15,r9
  7d44b0:	49 0f af c2          	imul   rax,r10
  7d44b4:	4c 0f af 95 40 e2 ff 	imul   r10,QWORD PTR [rbp-0x1dc0]
  7d44bb:	ff 
  7d44bc:	4c 0f af 9d f0 ea ff 	imul   r11,QWORD PTR [rbp-0x1510]
  7d44c3:	ff 
  7d44c4:	4c 89 85 00 eb ff ff 	mov    QWORD PTR [rbp-0x1500],r8
  7d44cb:	4c 8b 42 68          	mov    r8,QWORD PTR [rdx+0x68]
  7d44cf:	48 8b 4a 38          	mov    rcx,QWORD PTR [rdx+0x38]
  7d44d3:	4c 89 f2             	mov    rdx,r14
  7d44d6:	48 8b b5 48 e2 ff ff 	mov    rsi,QWORD PTR [rbp-0x1db8]
  7d44dd:	48 0f af f1          	imul   rsi,rcx
  7d44e1:	48 0f af d1          	imul   rdx,rcx
  7d44e5:	48 2b bd 90 ef ff ff 	sub    rdi,QWORD PTR [rbp-0x1070]
  7d44ec:	4c 89 85 78 ef ff ff 	mov    QWORD PTR [rbp-0x1088],r8
  7d44f3:	48 89 8d c8 e9 ff ff 	mov    QWORD PTR [rbp-0x1638],rcx
  7d44fa:	4e 8d 2c f7          	lea    r13,[rdi+r14*8]
  7d44fe:	4c 89 ad a8 e9 ff ff 	mov    QWORD PTR [rbp-0x1658],r13
  7d4505:	4c 8b 6d c8          	mov    r13,QWORD PTR [rbp-0x38]
  7d4509:	4b 8d 3c 3c          	lea    rdi,[r12+r15*1]
  7d450d:	4d 2b ee             	sub    r13,r14
  7d4510:	4d 2b f9             	sub    r15,r9
  7d4513:	4c 0f af 75 98       	imul   r14,QWORD PTR [rbp-0x68]
  7d4518:	4d 03 c8             	add    r9,r8
  7d451b:	4c 03 c0             	add    r8,rax
  7d451e:	48 f7 d8             	neg    rax
  7d4521:	4d 03 e7             	add    r12,r15
  7d4524:	49 03 c2             	add    rax,r10
  7d4527:	4c 03 d6             	add    r10,rsi
  7d452a:	4c 2b e0             	sub    r12,rax
  7d452d:	48 2b f2             	sub    rsi,rdx
  7d4530:	4c 2b e6             	sub    r12,rsi
  7d4533:	4d 03 de             	add    r11,r14
  7d4536:	4d 2b c8             	sub    r9,r8
  7d4539:	49 ff c5             	inc    r13
  7d453c:	49 2b f9             	sub    rdi,r9
  7d453f:	4c 89 ad e8 ee ff ff 	mov    QWORD PTR [rbp-0x1118],r13
  7d4546:	49 2b fa             	sub    rdi,r10
  7d4549:	41 83 e5 fc          	and    r13d,0xfffffffc
  7d454d:	49 8d 04 4c          	lea    rax,[r12+rcx*2]
  7d4551:	48 8b 8d 08 eb ff ff 	mov    rcx,QWORD PTR [rbp-0x14f8]
  7d4558:	48 03 fa             	add    rdi,rdx
  7d455b:	4d 63 ed             	movsxd r13,r13d
  7d455e:	4c 8b a5 10 ea ff ff 	mov    r12,QWORD PTR [rbp-0x15f0]
  7d4565:	4c 8b 4d e0          	mov    r9,QWORD PTR [rbp-0x20]
  7d4569:	4a 8d 14 19          	lea    rdx,[rcx+r11*1]
  7d456d:	4c 03 9d 38 e8 ff ff 	add    r11,QWORD PTR [rbp-0x17c8]
  7d4574:	4c 8b 85 00 eb ff ff 	mov    r8,QWORD PTR [rbp-0x1500]
  7d457b:	4c 8b 95 00 ea ff ff 	mov    r10,QWORD PTR [rbp-0x1600]
  7d4582:	4c 89 ad 60 ec ff ff 	mov    QWORD PTR [rbp-0x13a0],r13
  7d4589:	4c 89 9d 50 ec ff ff 	mov    QWORD PTR [rbp-0x13b0],r11
  7d4590:	48 89 85 d0 e9 ff ff 	mov    QWORD PTR [rbp-0x1630],rax
  7d4597:	48 89 95 58 ec ff ff 	mov    QWORD PTR [rbp-0x13a8],rdx
  7d459e:	33 d2                	xor    edx,edx
  7d45a0:	33 c9                	xor    ecx,ecx
  7d45a2:	33 f6                	xor    esi,esi
  7d45a4:	4f 63 1c a2          	movsxd r11,DWORD PTR [r10+r12*4]
  7d45a8:	33 c0                	xor    eax,eax
  7d45aa:	4d 85 c9             	test   r9,r9
  7d45ad:	0f 8e 8d 02 00 00    	jle    7d4840 <biology_mod_mp_biology_tile_+0x8830>
  7d45b3:	4d 89 de             	mov    r14,r11
  7d45b6:	4c 8b ad b8 e9 ff ff 	mov    r13,QWORD PTR [rbp-0x1648]
  7d45bd:	4d 0f af eb          	imul   r13,r11
  7d45c1:	4c 0f af 9d a0 e9 ff 	imul   r11,QWORD PTR [rbp-0x1660]
  7d45c8:	ff 
  7d45c9:	4c 0f af b5 90 ef ff 	imul   r14,QWORD PTR [rbp-0x1070]
  7d45d0:	ff 
  7d45d1:	4c 03 9d b0 e9 ff ff 	add    r11,QWORD PTR [rbp-0x1650]
  7d45d8:	4e 8d 3c 2f          	lea    r15,[rdi+r13*1]
  7d45dc:	4c 03 ad d0 e9 ff ff 	add    r13,QWORD PTR [rbp-0x1630]
  7d45e3:	4c 03 b5 a8 e9 ff ff 	add    r14,QWORD PTR [rbp-0x1658]
  7d45ea:	4c 89 ad 30 ec ff ff 	mov    QWORD PTR [rbp-0x13d0],r13
  7d45f1:	4c 89 9d 38 ec ff ff 	mov    QWORD PTR [rbp-0x13c8],r11
  7d45f8:	4c 89 a5 10 ea ff ff 	mov    QWORD PTR [rbp-0x15f0],r12
  7d45ff:	4c 89 b5 40 ec ff ff 	mov    QWORD PTR [rbp-0x13c0],r14
  7d4606:	4c 89 bd 48 ec ff ff 	mov    QWORD PTR [rbp-0x13b8],r15
  7d460d:	48 89 bd 08 ea ff ff 	mov    QWORD PTR [rbp-0x15f8],rdi
  7d4614:	4c 89 4d e0          	mov    QWORD PTR [rbp-0x20],r9
  7d4618:	4c 89 85 00 eb ff ff 	mov    QWORD PTR [rbp-0x1500],r8
  7d461f:	4c 8b a5 e8 ee ff ff 	mov    r12,QWORD PTR [rbp-0x1118]
  7d4626:	4c 8b 9d c8 e9 ff ff 	mov    r11,QWORD PTR [rbp-0x1638]
  7d462d:	4c 8b 6d 98          	mov    r13,QWORD PTR [rbp-0x68]
  7d4631:	48 8b 7d c8          	mov    rdi,QWORD PTR [rbp-0x38]
  7d4635:	48 3b 7d d0          	cmp    rdi,QWORD PTR [rbp-0x30]
  7d4639:	0f 8c c2 01 00 00    	jl     7d4801 <biology_mod_mp_biology_tile_+0x87f1>
  7d463f:	4d 85 db             	test   r11,r11
  7d4642:	0f 84 32 02 00 00    	je     7d487a <biology_mod_mp_biology_tile_+0x886a>
  7d4648:	49 83 fc 04          	cmp    r12,0x4
  7d464c:	0f 8c 28 02 00 00    	jl     7d487a <biology_mod_mp_biology_tile_+0x886a>
  7d4652:	4c 8b bd 58 ec ff ff 	mov    r15,QWORD PTR [rbp-0x13a8]
  7d4659:	45 33 d2             	xor    r10d,r10d
  7d465c:	4c 8b 8d 48 ec ff ff 	mov    r9,QWORD PTR [rbp-0x13b8]
  7d4663:	4c 8b 85 40 ec ff ff 	mov    r8,QWORD PTR [rbp-0x13c0]
  7d466a:	48 8b bd 38 ec ff ff 	mov    rdi,QWORD PTR [rbp-0x13c8]
  7d4671:	4c 03 f8             	add    r15,rax
  7d4674:	4c 89 bd 70 ec ff ff 	mov    QWORD PTR [rbp-0x1390],r15
  7d467b:	4c 03 c9             	add    r9,rcx
  7d467e:	4c 8b bd 30 ec ff ff 	mov    r15,QWORD PTR [rbp-0x13d0]
  7d4685:	4c 03 c6             	add    r8,rsi
  7d4688:	48 03 fe             	add    rdi,rsi
  7d468b:	4c 8b b5 60 ec ff ff 	mov    r14,QWORD PTR [rbp-0x13a0]
  7d4692:	48 89 85 f0 ee ff ff 	mov    QWORD PTR [rbp-0x1110],rax
  7d4699:	4c 03 f9             	add    r15,rcx
  7d469c:	4c 89 bd 68 ec ff ff 	mov    QWORD PTR [rbp-0x1398],r15
  7d46a3:	4c 8b bd 50 ec ff ff 	mov    r15,QWORD PTR [rbp-0x13b0]
  7d46aa:	48 89 b5 f8 ee ff ff 	mov    QWORD PTR [rbp-0x1108],rsi
  7d46b1:	48 89 95 08 ef ff ff 	mov    QWORD PTR [rbp-0x10f8],rdx
  7d46b8:	48 89 8d 00 ef ff ff 	mov    QWORD PTR [rbp-0x1100],rcx
  7d46bf:	4c 03 f8             	add    r15,rax
  7d46c2:	4c 89 f1             	mov    rcx,r14
  7d46c5:	4d 89 d4             	mov    r12,r10
  7d46c8:	4c 89 f8             	mov    rax,r15
  7d46cb:	48 8b b5 68 ec ff ff 	mov    rsi,QWORD PTR [rbp-0x1398]
  7d46d2:	48 8b 95 70 ec ff ff 	mov    rdx,QWORD PTR [rbp-0x1390]
  7d46d9:	c4 01 79 10 0c d0    	vmovupd xmm9,XMMWORD PTR [r8+r10*8]
  7d46df:	c4 21 31 5c 1c d7    	vsubpd xmm11,xmm9,XMMWORD PTR [rdi+r10*8]
  7d46e5:	c4 41 7b 10 01       	vmovsd xmm8,QWORD PTR [r9]
  7d46ea:	4e 8d 3c 22          	lea    r15,[rdx+r12*1]
  7d46ee:	c4 41 7b 10 17       	vmovsd xmm10,QWORD PTR [r15]
  7d46f3:	c4 01 29 16 24 2f    	vmovhpd xmm12,xmm10,QWORD PTR [r15+r13*1]
  7d46f9:	4e 8d 3c 20          	lea    r15,[rax+r12*1]
  7d46fd:	c4 41 21 59 f4       	vmulpd xmm14,xmm11,xmm12
  7d4702:	c4 01 79 10 54 d0 10 	vmovupd xmm10,XMMWORD PTR [r8+r10*8+0x10]
  7d4709:	c4 01 39 16 2c 19    	vmovhpd xmm13,xmm8,QWORD PTR [r9+r11*1]
  7d470f:	4f 8d 24 ac          	lea    r12,[r12+r13*4]
  7d4713:	c4 41 11 58 fe       	vaddpd xmm15,xmm13,xmm14
  7d4718:	c4 21 29 5c 64 d7 10 	vsubpd xmm12,xmm10,XMMWORD PTR [rdi+r10*8+0x10]
  7d471f:	c5 01 5f c5          	vmaxpd xmm8,xmm15,xmm5
  7d4723:	c4 41 7b 10 1f       	vmovsd xmm11,QWORD PTR [r15]
  7d4728:	49 83 c2 04          	add    r10,0x4
  7d472c:	c4 01 21 16 2c 2f    	vmovhpd xmm13,xmm11,QWORD PTR [r15+r13*1]
  7d4732:	c4 41 19 59 fd       	vmulpd xmm15,xmm12,xmm13
  7d4737:	c4 41 7b 11 01       	vmovsd QWORD PTR [r9],xmm8
  7d473c:	c4 01 79 17 04 0b    	vmovhpd QWORD PTR [r11+r9*1],xmm8
  7d4742:	4f 8d 0c 99          	lea    r9,[r9+r11*4]
  7d4746:	c5 7b 10 0e          	vmovsd xmm9,QWORD PTR [rsi]
  7d474a:	c4 21 31 16 34 1e    	vmovhpd xmm14,xmm9,QWORD PTR [rsi+r11*1]
  7d4750:	c4 41 09 58 c7       	vaddpd xmm8,xmm14,xmm15
  7d4755:	c5 39 5f cd          	vmaxpd xmm9,xmm8,xmm5
  7d4759:	c5 7b 11 0e          	vmovsd QWORD PTR [rsi],xmm9
  7d475d:	c4 41 79 17 0c 33    	vmovhpd QWORD PTR [r11+rsi*1],xmm9
  7d4763:	4a 8d 34 9e          	lea    rsi,[rsi+r11*4]
  7d4767:	4c 3b d1             	cmp    r10,rcx
  7d476a:	0f 82 69 ff ff ff    	jb     7d46d9 <biology_mod_mp_biology_tile_+0x86c9>
  7d4770:	48 8b 85 f0 ee ff ff 	mov    rax,QWORD PTR [rbp-0x1110]
  7d4777:	48 8b b5 f8 ee ff ff 	mov    rsi,QWORD PTR [rbp-0x1108]
  7d477e:	48 8b 8d 00 ef ff ff 	mov    rcx,QWORD PTR [rbp-0x1100]
  7d4785:	48 8b 95 08 ef ff ff 	mov    rdx,QWORD PTR [rbp-0x10f8]
  7d478c:	4c 8b a5 e8 ee ff ff 	mov    r12,QWORD PTR [rbp-0x1118]
  7d4793:	4d 89 d9             	mov    r9,r11
  7d4796:	4d 89 ea             	mov    r10,r13
  7d4799:	4d 0f af ce          	imul   r9,r14
  7d479d:	4d 0f af d6          	imul   r10,r14
  7d47a1:	4d 3b f4             	cmp    r14,r12
  7d47a4:	73 5b                	jae    7d4801 <biology_mod_mp_biology_tile_+0x87f1>
  7d47a6:	4c 8b 85 48 ec ff ff 	mov    r8,QWORD PTR [rbp-0x13b8]
  7d47ad:	4c 8b bd 40 ec ff ff 	mov    r15,QWORD PTR [rbp-0x13c0]
  7d47b4:	49 8d 3c 08          	lea    rdi,[r8+rcx*1]
  7d47b8:	4c 03 cf             	add    r9,rdi
  7d47bb:	4d 8d 04 37          	lea    r8,[r15+rsi*1]
  7d47bf:	48 8b bd 38 ec ff ff 	mov    rdi,QWORD PTR [rbp-0x13c8]
  7d47c6:	4c 8b bd 58 ec ff ff 	mov    r15,QWORD PTR [rbp-0x13a8]
  7d47cd:	48 03 fe             	add    rdi,rsi
  7d47d0:	4c 03 f8             	add    r15,rax
  7d47d3:	c4 01 7b 10 04 f0    	vmovsd xmm8,QWORD PTR [r8+r14*8]
  7d47d9:	c4 21 3b 5c 0c f7    	vsubsd xmm9,xmm8,QWORD PTR [rdi+r14*8]
  7d47df:	49 ff c6             	inc    r14
  7d47e2:	c4 01 33 59 14 3a    	vmulsd xmm10,xmm9,QWORD PTR [r10+r15*1]
  7d47e8:	4d 03 d5             	add    r10,r13
  7d47eb:	c4 41 2b 58 19       	vaddsd xmm11,xmm10,QWORD PTR [r9]
  7d47f0:	c5 23 5f de          	vmaxsd xmm11,xmm11,xmm6
  7d47f4:	c4 41 7b 11 19       	vmovsd QWORD PTR [r9],xmm11
  7d47f9:	4d 03 cb             	add    r9,r11
  7d47fc:	4d 3b f4             	cmp    r14,r12
  7d47ff:	72 d2                	jb     7d47d3 <biology_mod_mp_biology_tile_+0x87c3>
  7d4801:	48 ff c2             	inc    rdx
  7d4804:	48 03 8d 78 ef ff ff 	add    rcx,QWORD PTR [rbp-0x1088]
  7d480b:	48 03 75 d8          	add    rsi,QWORD PTR [rbp-0x28]
  7d480f:	48 03 85 48 ff ff ff 	add    rax,QWORD PTR [rbp-0xb8]
  7d4816:	48 3b 55 e0          	cmp    rdx,QWORD PTR [rbp-0x20]
  7d481a:	0f 82 11 fe ff ff    	jb     7d4631 <biology_mod_mp_biology_tile_+0x8621>
  7d4820:	48 8b bd 08 ea ff ff 	mov    rdi,QWORD PTR [rbp-0x15f8]
  7d4827:	4c 8b 95 00 ea ff ff 	mov    r10,QWORD PTR [rbp-0x1600]
  7d482e:	4c 8b a5 10 ea ff ff 	mov    r12,QWORD PTR [rbp-0x15f0]
  7d4835:	4c 8b 4d e0          	mov    r9,QWORD PTR [rbp-0x20]
  7d4839:	4c 8b 85 00 eb ff ff 	mov    r8,QWORD PTR [rbp-0x1500]
  7d4840:	49 ff c4             	inc    r12
  7d4843:	4d 3b e0             	cmp    r12,r8
  7d4846:	0f 82 52 fd ff ff    	jb     7d459e <biology_mod_mp_biology_tile_+0x858e>
  7d484c:	48 8d 95 b0 ea ff ff 	lea    rdx,[rbp-0x1550]
  7d4853:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  7d4856:	48 ff c0             	inc    rax
  7d4859:	48 89 02             	mov    QWORD PTR [rdx],rax
  7d485c:	48 3b 85 28 e7 ff ff 	cmp    rax,QWORD PTR [rbp-0x18d8]
  7d4863:	89 85 30 e7 ff ff    	mov    DWORD PTR [rbp-0x18d0],eax
  7d4869:	0f 8e 7f 9d ff ff    	jle    7ce5ee <biology_mod_mp_biology_tile_+0x25de>
  7d486f:	89 85 70 eb ff ff    	mov    DWORD PTR [rbp-0x1490],eax
  7d4875:	e9 12 95 ff ff       	jmp    7cdd8c <biology_mod_mp_biology_tile_+0x1d7c>
  7d487a:	45 33 f6             	xor    r14d,r14d
  7d487d:	e9 11 ff ff ff       	jmp    7d4793 <biology_mod_mp_biology_tile_+0x8783>
  7d4882:	45 33 e4             	xor    r12d,r12d
  7d4885:	e9 30 fb ff ff       	jmp    7d43ba <biology_mod_mp_biology_tile_+0x83aa>
  7d488a:	45 33 db             	xor    r11d,r11d
  7d488d:	e9 b6 fa ff ff       	jmp    7d4348 <biology_mod_mp_biology_tile_+0x8338>
  7d4892:	33 c0                	xor    eax,eax
  7d4894:	e9 56 f8 ff ff       	jmp    7d40ef <biology_mod_mp_biology_tile_+0x80df>
  7d4899:	48 8d bd 18 ea ff ff 	lea    rdi,[rbp-0x15e8]
  7d48a0:	8b 0f                	mov    ecx,DWORD PTR [rdi]
  7d48a2:	ff c1                	inc    ecx
  7d48a4:	89 0f                	mov    DWORD PTR [rdi],ecx
  7d48a6:	3b 8d 20 ea ff ff    	cmp    ecx,DWORD PTR [rbp-0x15e0]
  7d48ac:	0f 82 75 b6 ff ff    	jb     7cff27 <biology_mod_mp_biology_tile_+0x3f17>
  7d48b2:	4c 89 4d d0          	mov    QWORD PTR [rbp-0x30],r9
  7d48b6:	48 89 95 b0 ea ff ff 	mov    QWORD PTR [rbp-0x1550],rdx
  7d48bd:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
  7d48c1:	44 89 55 a0          	mov    DWORD PTR [rbp-0x60],r10d
  7d48c5:	c5 fb 10 05 4b 85 07 	vmovsd xmm0,QWORD PTR [rip+0x7854b]        # 84ce18 <__STRLITPACK_0.112+0xd08>
  7d48cc:	00 
  7d48cd:	c5 fb 10 25 3b 85 07 	vmovsd xmm4,QWORD PTR [rip+0x7853b]        # 84ce10 <__STRLITPACK_0.112+0xd00>
  7d48d4:	00 
  7d48d5:	c5 f9 10 1d 13 76 07 	vmovupd xmm3,XMMWORD PTR [rip+0x77613]        # 84bef0 <__STRLITPACK_54.50+0x100>
  7d48dc:	00 
  7d48dd:	c5 f9 10 15 fb 75 07 	vmovupd xmm2,XMMWORD PTR [rip+0x775fb]        # 84bee0 <__STRLITPACK_54.50+0xf0>
  7d48e4:	00 
  7d48e5:	c5 fd 10 0d 13 69 07 	vmovupd ymm1,YMMWORD PTR [rip+0x76913]        # 84b200 <var$630.126.450+0x1260>
  7d48ec:	00 
  7d48ed:	c5 fb 10 35 13 85 07 	vmovsd xmm6,QWORD PTR [rip+0x78513]        # 84ce08 <__STRLITPACK_0.112+0xcf8>
  7d48f4:	00 
  7d48f5:	c5 f9 10 2d d3 75 07 	vmovupd xmm5,XMMWORD PTR [rip+0x775d3]        # 84bed0 <__STRLITPACK_54.50+0xe0>
  7d48fc:	00 
  7d48fd:	c5 fd 10 3d db 68 07 	vmovupd ymm7,YMMWORD PTR [rip+0x768db]        # 84b1e0 <var$630.126.450+0x1240>
  7d4904:	00 
  7d4905:	49 89 f1             	mov    r9,rsi
  7d4908:	e9 22 f9 ff ff       	jmp    7d422f <biology_mod_mp_biology_tile_+0x821f>
  7d490d:	45 33 e4             	xor    r12d,r12d
  7d4910:	e9 9e f5 ff ff       	jmp    7d3eb3 <biology_mod_mp_biology_tile_+0x7ea3>
  7d4915:	c5 fb 10 69 08       	vmovsd xmm5,QWORD PTR [rcx+0x8]
  7d491a:	c5 d1 57 35 9e 6f 07 	vxorpd xmm6,xmm5,XMMWORD PTR [rip+0x76f9e]        # 84b8c0 <__STRLITPACK_44.95+0x10>
  7d4921:	00 
  7d4922:	c5 cb 59 fc          	vmulsd xmm7,xmm6,xmm4
  7d4926:	c4 41 43 5e c0       	vdivsd xmm8,xmm7,xmm8
  7d492b:	c4 41 7b 11 03       	vmovsd QWORD PTR [r11],xmm8
  7d4930:	e9 a4 f4 ff ff       	jmp    7d3dd9 <biology_mod_mp_biology_tile_+0x7dc9>
  7d4935:	33 c9                	xor    ecx,ecx
  7d4937:	e9 7c a8 ff ff       	jmp    7cf1b8 <biology_mod_mp_biology_tile_+0x31a8>
  7d493c:	33 ff                	xor    edi,edi
  7d493e:	e9 30 b0 ff ff       	jmp    7cf973 <biology_mod_mp_biology_tile_+0x3963>
  7d4943:	33 ff                	xor    edi,edi
  7d4945:	e9 4b ef ff ff       	jmp    7d3895 <biology_mod_mp_biology_tile_+0x7885>
  7d494a:	48 8b 95 58 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xa8]
  7d4951:	48 8b bd c8 ef ff ff 	mov    rdi,QWORD PTR [rbp-0x1038]
  7d4958:	4c 8b 85 78 ff ff ff 	mov    r8,QWORD PTR [rbp-0x88]
  7d495f:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  7d4963:	48 8b 75 e0          	mov    rsi,QWORD PTR [rbp-0x20]
  7d4967:	48 8b 8d e8 ef ff ff 	mov    rcx,QWORD PTR [rbp-0x1018]
  7d496e:	44 8b 55 a0          	mov    r10d,DWORD PTR [rbp-0x60]
  7d4972:	e9 18 f3 ff ff       	jmp    7d3c8f <biology_mod_mp_biology_tile_+0x7c7f>
  7d4977:	45 33 c0             	xor    r8d,r8d
  7d497a:	e9 82 f2 ff ff       	jmp    7d3c01 <biology_mod_mp_biology_tile_+0x7bf1>
  7d497f:	49 83 ff 04          	cmp    r15,0x4
  7d4983:	7c 52                	jl     7d49d7 <biology_mod_mp_biology_tile_+0x89c7>
  7d4985:	48 8b 55 b8          	mov    rdx,QWORD PTR [rbp-0x48]
  7d4989:	33 f6                	xor    esi,esi
  7d498b:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
  7d498f:	48 89 c7             	mov    rdi,rax
  7d4992:	4a 8d 0c 32          	lea    rcx,[rdx+r14*1]
  7d4996:	4b 8d 14 34          	lea    rdx,[r12+r14*1]
  7d499a:	c5 fd 10 04 f2       	vmovupd ymm0,YMMWORD PTR [rdx+rsi*8]
  7d499f:	c5 fd 11 04 f1       	vmovupd YMMWORD PTR [rcx+rsi*8],ymm0
  7d49a4:	48 83 c6 04          	add    rsi,0x4
  7d49a8:	48 3b f7             	cmp    rsi,rdi
  7d49ab:	72 ed                	jb     7d499a <biology_mod_mp_biology_tile_+0x898a>
  7d49ad:	49 3b c7             	cmp    rax,r15
  7d49b0:	0f 83 4f f1 ff ff    	jae    7d3b05 <biology_mod_mp_biology_tile_+0x7af5>
  7d49b6:	48 8b 55 b8          	mov    rdx,QWORD PTR [rbp-0x48]
  7d49ba:	4a 8d 0c 32          	lea    rcx,[rdx+r14*1]
  7d49be:	4b 8d 14 34          	lea    rdx,[r12+r14*1]
  7d49c2:	48 8b 34 c2          	mov    rsi,QWORD PTR [rdx+rax*8]
  7d49c6:	48 89 34 c1          	mov    QWORD PTR [rcx+rax*8],rsi
  7d49ca:	48 ff c0             	inc    rax
  7d49cd:	49 3b c7             	cmp    rax,r15
  7d49d0:	72 f0                	jb     7d49c2 <biology_mod_mp_biology_tile_+0x89b2>
  7d49d2:	e9 2e f1 ff ff       	jmp    7d3b05 <biology_mod_mp_biology_tile_+0x7af5>
  7d49d7:	33 c0                	xor    eax,eax
  7d49d9:	eb d2                	jmp    7d49ad <biology_mod_mp_biology_tile_+0x899d>
  7d49db:	45 33 c9             	xor    r9d,r9d
  7d49de:	e9 6d ea ff ff       	jmp    7d3450 <biology_mod_mp_biology_tile_+0x7440>
  7d49e3:	48 8b 95 90 ef ff ff 	mov    rdx,QWORD PTR [rbp-0x1070]
  7d49ea:	45 33 c0             	xor    r8d,r8d
  7d49ed:	4c 0f af 65 d8       	imul   r12,QWORD PTR [rbp-0x28]
  7d49f2:	48 0f af fa          	imul   rdi,rdx
  7d49f6:	4c 0f af f2          	imul   r14,rdx
  7d49fa:	4c 0f af d2          	imul   r10,rdx
  7d49fe:	4c 0f af da          	imul   r11,rdx
  7d4a02:	e9 34 e9 ff ff       	jmp    7d333b <biology_mod_mp_biology_tile_+0x732b>
  7d4a07:	48 8b 95 90 ef ff ff 	mov    rdx,QWORD PTR [rbp-0x1070]
  7d4a0e:	4c 0f af 65 d8       	imul   r12,QWORD PTR [rbp-0x28]
  7d4a13:	4c 0f af d2          	imul   r10,rdx
  7d4a17:	4c 0f af da          	imul   r11,rdx
  7d4a1b:	48 0f af fa          	imul   rdi,rdx
  7d4a1f:	4c 0f af f2          	imul   r14,rdx
  7d4a23:	e9 01 eb ff ff       	jmp    7d3529 <biology_mod_mp_biology_tile_+0x7519>
  7d4a28:	33 d2                	xor    edx,edx
  7d4a2a:	e9 5a e7 ff ff       	jmp    7d3189 <biology_mod_mp_biology_tile_+0x7179>
  7d4a2f:	33 c9                	xor    ecx,ecx
  7d4a31:	e9 f2 e3 ff ff       	jmp    7d2e28 <biology_mod_mp_biology_tile_+0x6e18>
  7d4a36:	c5 fb 10 ad b8 ec ff 	vmovsd xmm5,QWORD PTR [rbp-0x1348]
  7d4a3d:	ff 
  7d4a3e:	e9 09 dd ff ff       	jmp    7d274c <biology_mod_mp_biology_tile_+0x673c>
  7d4a43:	c5 eb 58 05 c5 77 07 	vaddsd xmm0,xmm2,QWORD PTR [rip+0x777c5]        # 84c210 <__STRLITPACK_0.112+0x100>
  7d4a4a:	00 
  7d4a4b:	c5 eb 5e d0          	vdivsd xmm2,xmm2,xmm0
  7d4a4f:	c5 fb 11 95 88 fd ff 	vmovsd QWORD PTR [rbp-0x278],xmm2
  7d4a56:	ff 
  7d4a57:	e9 aa d8 ff ff       	jmp    7d2306 <biology_mod_mp_biology_tile_+0x62f6>
  7d4a5c:	c5 fd 10 85 50 eb ff 	vmovupd ymm0,YMMWORD PTR [rbp-0x14b0]
  7d4a63:	ff 
  7d4a64:	e9 dc cd ff ff       	jmp    7d1845 <biology_mod_mp_biology_tile_+0x5835>
  7d4a69:	c5 ed 58 05 cf 68 07 	vaddpd ymm0,ymm2,YMMWORD PTR [rip+0x768cf]        # 84b340 <var$630.126.450+0x13a0>
  7d4a70:	00 
  7d4a71:	c5 ed 5e c8          	vdivpd ymm1,ymm2,ymm0
  7d4a75:	c5 fd 11 8d 70 f3 ff 	vmovupd YMMWORD PTR [rbp-0xc90],ymm1
  7d4a7c:	ff 
  7d4a7d:	e9 12 c7 ff ff       	jmp    7d1194 <biology_mod_mp_biology_tile_+0x5184>
  7d4a82:	48 c7 85 88 ef ff ff 	mov    QWORD PTR [rbp-0x1078],0x0
  7d4a89:	00 00 00 00 
  7d4a8d:	e9 ff d2 ff ff       	jmp    7d1d91 <biology_mod_mp_biology_tile_+0x5d81>
  7d4a92:	48 8b 8d 90 ef ff ff 	mov    rcx,QWORD PTR [rbp-0x1070]
  7d4a99:	4c 0f af d9          	imul   r11,rcx
  7d4a9d:	4c 0f af d1          	imul   r10,rcx
  7d4aa1:	e9 e6 e1 ff ff       	jmp    7d2c8c <biology_mod_mp_biology_tile_+0x6c7c>
  7d4aa6:	45 33 d2             	xor    r10d,r10d
  7d4aa9:	e9 9f b3 ff ff       	jmp    7cfe4d <biology_mod_mp_biology_tile_+0x3e3d>
  7d4aae:	48 c7 85 78 eb ff ff 	mov    QWORD PTR [rbp-0x1488],0x0
  7d4ab5:	00 00 00 00 
  7d4ab9:	e9 62 b1 ff ff       	jmp    7cfc20 <biology_mod_mp_biology_tile_+0x3c10>
  7d4abe:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  7d4ac2:	48 3b 45 c8          	cmp    rax,QWORD PTR [rbp-0x38]
  7d4ac6:	0f 8e 85 b2 ff ff    	jle    7cfd51 <biology_mod_mp_biology_tile_+0x3d41>
  7d4acc:	e9 ed b3 ff ff       	jmp    7cfebe <biology_mod_mp_biology_tile_+0x3eae>
  7d4ad1:	45 33 ed             	xor    r13d,r13d
  7d4ad4:	e9 f3 aa ff ff       	jmp    7cf5cc <biology_mod_mp_biology_tile_+0x35bc>
  7d4ad9:	45 33 ed             	xor    r13d,r13d
  7d4adc:	e9 7e a9 ff ff       	jmp    7cf45f <biology_mod_mp_biology_tile_+0x344f>
  7d4ae1:	33 d2                	xor    edx,edx
  7d4ae3:	e9 f7 a7 ff ff       	jmp    7cf2df <biology_mod_mp_biology_tile_+0x32cf>
  7d4ae8:	45 33 ff             	xor    r15d,r15d
  7d4aeb:	e9 40 a4 ff ff       	jmp    7cef30 <biology_mod_mp_biology_tile_+0x2f20>
  7d4af0:	45 33 e4             	xor    r12d,r12d
  7d4af3:	e9 49 a1 ff ff       	jmp    7cec41 <biology_mod_mp_biology_tile_+0x2c31>
  7d4af8:	45 33 ff             	xor    r15d,r15d
  7d4afb:	e9 52 a0 ff ff       	jmp    7ceb52 <biology_mod_mp_biology_tile_+0x2b42>
  7d4b00:	33 c0                	xor    eax,eax
  7d4b02:	e9 ba 9d ff ff       	jmp    7ce8c1 <biology_mod_mp_biology_tile_+0x28b1>
  7d4b07:	33 c0                	xor    eax,eax
  7d4b09:	e9 e1 9b ff ff       	jmp    7ce6ef <biology_mod_mp_biology_tile_+0x26df>
  7d4b0e:	66 90                	xchg   ax,ax
