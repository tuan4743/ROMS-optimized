
/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s47_quant/oceanM.s47_SELQUANT_best_20260810.bak:     file format elf64-x86-64


Disassembly of section text.unlikely:

00000000006541c0 <step3d_t_mod_mp_step3d_t_tile_>:
  6541c0:	53                   	push   rbx
  6541c1:	48 89 e3             	mov    rbx,rsp
  6541c4:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
  6541c8:	55                   	push   rbp
  6541c9:	55                   	push   rbp
  6541ca:	48 8b 6b 08          	mov    rbp,QWORD PTR [rbx+0x8]
  6541ce:	48 89 6c 24 08       	mov    QWORD PTR [rsp+0x8],rbp
  6541d3:	48 89 e5             	mov    rbp,rsp
  6541d6:	48 81 ec 70 0b 00 00 	sub    rsp,0xb70
  6541dd:	48 89 b5 c0 f9 ff ff 	mov    QWORD PTR [rbp-0x640],rsi
  6541e4:	4c 89 ad 40 f9 ff ff 	mov    QWORD PTR [rbp-0x6c0],r13
  6541eb:	48 8b 73 10          	mov    rsi,QWORD PTR [rbx+0x10]
  6541ef:	4c 8b 6b 18          	mov    r13,QWORD PTR [rbx+0x18]
  6541f3:	4c 89 a5 48 f9 ff ff 	mov    QWORD PTR [rbp-0x6b8],r12
  6541fa:	45 8b 20             	mov    r12d,DWORD PTR [r8]
  6541fd:	44 89 a5 e8 f9 ff ff 	mov    DWORD PTR [rbp-0x618],r12d
  654204:	4c 63 26             	movsxd r12,DWORD PTR [rsi]
  654207:	48 89 95 c8 f9 ff ff 	mov    QWORD PTR [rbp-0x638],rdx
  65420e:	44 8b 1a             	mov    r11d,DWORD PTR [rdx]
  654211:	49 63 75 00          	movsxd rsi,DWORD PTR [r13+0x0]
  654215:	48 8b 53 28          	mov    rdx,QWORD PTR [rbx+0x28]
  654219:	48 89 8d d0 f9 ff ff 	mov    QWORD PTR [rbp-0x630],rcx
  654220:	89 b5 58 f9 ff ff    	mov    DWORD PTR [rbp-0x6a8],esi
  654226:	49 2b f4             	sub    rsi,r12
  654229:	48 8b 4b 20          	mov    rcx,QWORD PTR [rbx+0x20]
  65422d:	4c 89 85 d8 f9 ff ff 	mov    QWORD PTR [rbp-0x628],r8
  654234:	49 89 f0             	mov    r8,rsi
  654237:	48 89 bd b8 f9 ff ff 	mov    QWORD PTR [rbp-0x648],rdi
  65423e:	49 ff c0             	inc    r8
  654241:	4c 63 2f             	movsxd r13,DWORD PTR [rdi]
  654244:	48 63 3a             	movsxd rdi,DWORD PTR [rdx]
  654247:	48 63 09             	movsxd rcx,DWORD PTR [rcx]
  65424a:	4c 89 b5 38 f9 ff ff 	mov    QWORD PTR [rbp-0x6c8],r14
  654251:	41 be 00 00 00 00    	mov    r14d,0x0
  654257:	89 bd 60 f9 ff ff    	mov    DWORD PTR [rbp-0x6a0],edi
  65425d:	4d 0f 4e c6          	cmovle r8,r14
  654261:	48 2b f9             	sub    rdi,rcx
  654264:	33 d2                	xor    edx,edx
  654266:	48 ff c7             	inc    rdi
  654269:	4c 8b 53 38          	mov    r10,QWORD PTR [rbx+0x38]
  65426d:	48 0f 4f d7          	cmovg  rdx,rdi
  654271:	33 c0                	xor    eax,eax
  654273:	4c 89 95 18 f5 ff ff 	mov    QWORD PTR [rbp-0xae8],r10
  65427a:	49 89 d2             	mov    r10,rdx
  65427d:	4d 0f af d0          	imul   r10,r8
  654281:	4c 89 8d e0 f9 ff ff 	mov    QWORD PTR [rbp-0x620],r9
  654288:	4c 8b 0d 31 64 46 00 	mov    r9,QWORD PTR [rip+0x466431]        # aba6c0 <mod_param_mp_n_>
  65428f:	4c 89 bd 30 f9 ff ff 	mov    QWORD PTR [rbp-0x6d0],r15
  654296:	44 89 9d b4 f9 ff ff 	mov    DWORD PTR [rbp-0x64c],r11d
  65429d:	4f 63 4c a9 fc       	movsxd r9,DWORD PTR [r9+r13*4-0x4]
  6542a2:	4d 85 c9             	test   r9,r9
  6542a5:	44 89 a5 2c f9 ff ff 	mov    DWORD PTR [rbp-0x6d4],r12d
  6542ac:	49 0f 4f c1          	cmovg  rax,r9
  6542b0:	48 c1 e0 03          	shl    rax,0x3
  6542b4:	49 0f af c2          	imul   rax,r10
  6542b8:	89 8d 5c f9 ff ff    	mov    DWORD PTR [rbp-0x6a4],ecx
  6542be:	44 89 8d 64 f9 ff ff 	mov    DWORD PTR [rbp-0x69c],r9d
  6542c5:	44 89 8d 68 f9 ff ff 	mov    DWORD PTR [rbp-0x698],r9d
  6542cc:	44 89 8d 6c f9 ff ff 	mov    DWORD PTR [rbp-0x694],r9d
  6542d3:	44 89 8d 70 f9 ff ff 	mov    DWORD PTR [rbp-0x690],r9d
  6542da:	44 89 8d 74 f9 ff ff 	mov    DWORD PTR [rbp-0x68c],r9d
  6542e1:	48 89 a5 50 f9 ff ff 	mov    QWORD PTR [rbp-0x6b0],rsp
  6542e8:	48 83 c0 1f          	add    rax,0x1f
  6542ec:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  6542f0:	48 2b e0             	sub    rsp,rax
  6542f3:	48 89 e0             	mov    rax,rsp
  6542f6:	4d 89 cb             	mov    r11,r9
  6542f9:	48 8d 34 f5 08 00 00 	lea    rsi,[rsi*8+0x8]
  654300:	00 
  654301:	49 c1 fb 3f          	sar    r11,0x3f
  654305:	41 ba 01 00 00 00    	mov    r10d,0x1
  65430b:	c4 42 a0 f2 f9       	andn   r15,r11,r9
  654310:	4c 89 bd f0 f4 ff ff 	mov    QWORD PTR [rbp-0xb10],r15
  654317:	4e 8d 3c c5 00 00 00 	lea    r15,[r8*8+0x0]
  65431e:	00 
  65431f:	4c 0f af fa          	imul   r15,rdx
  654323:	48 0f af fe          	imul   rdi,rsi
  654327:	48 89 85 90 f4 ff ff 	mov    QWORD PTR [rbp-0xb70],rax
  65432e:	4c 89 f8             	mov    rax,r15
  654331:	48 89 bd f8 f4 ff ff 	mov    QWORD PTR [rbp-0xb08],rdi
  654338:	bf 08 00 00 00       	mov    edi,0x8
  65433d:	48 c7 85 b0 f4 ff ff 	mov    QWORD PTR [rbp-0xb50],0x3
  654344:	03 00 00 00 
  654348:	4c 89 b5 a0 f4 ff ff 	mov    QWORD PTR [rbp-0xb60],r14
  65434f:	4c 89 a5 d0 f4 ff ff 	mov    QWORD PTR [rbp-0xb30],r12
  654356:	4c 89 85 c0 f4 ff ff 	mov    QWORD PTR [rbp-0xb40],r8
  65435d:	48 89 b5 e0 f4 ff ff 	mov    QWORD PTR [rbp-0xb20],rsi
  654364:	48 89 8d e8 f4 ff ff 	mov    QWORD PTR [rbp-0xb18],rcx
  65436b:	48 89 95 d8 f4 ff ff 	mov    QWORD PTR [rbp-0xb28],rdx
  654372:	48 89 bd 98 f4 ff ff 	mov    QWORD PTR [rbp-0xb68],rdi
  654379:	48 89 bd c8 f4 ff ff 	mov    QWORD PTR [rbp-0xb38],rdi
  654380:	4c 89 95 00 f5 ff ff 	mov    QWORD PTR [rbp-0xb00],r10
  654387:	4c 89 95 a8 f4 ff ff 	mov    QWORD PTR [rbp-0xb58],r10
  65438e:	48 83 c0 1f          	add    rax,0x1f
  654392:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  654396:	48 2b e0             	sub    rsp,rax
  654399:	48 89 e0             	mov    rax,rsp
  65439c:	48 89 85 28 f6 ff ff 	mov    QWORD PTR [rbp-0x9d8],rax
  6543a3:	4c 89 f8             	mov    rax,r15
  6543a6:	48 89 bd 30 f6 ff ff 	mov    QWORD PTR [rbp-0x9d0],rdi
  6543ad:	4c 89 b5 38 f6 ff ff 	mov    QWORD PTR [rbp-0x9c8],r14
  6543b4:	48 89 bd 60 f6 ff ff 	mov    QWORD PTR [rbp-0x9a0],rdi
  6543bb:	4c 89 a5 68 f6 ff ff 	mov    QWORD PTR [rbp-0x998],r12
  6543c2:	4c 89 85 58 f6 ff ff 	mov    QWORD PTR [rbp-0x9a8],r8
  6543c9:	48 89 b5 78 f6 ff ff 	mov    QWORD PTR [rbp-0x988],rsi
  6543d0:	48 89 8d 80 f6 ff ff 	mov    QWORD PTR [rbp-0x980],rcx
  6543d7:	48 89 95 70 f6 ff ff 	mov    QWORD PTR [rbp-0x990],rdx
  6543de:	48 c7 85 40 f6 ff ff 	mov    QWORD PTR [rbp-0x9c0],0x1
  6543e5:	01 00 00 00 
  6543e9:	48 c7 85 48 f6 ff ff 	mov    QWORD PTR [rbp-0x9b8],0x2
  6543f0:	02 00 00 00 
  6543f4:	48 83 c0 1f          	add    rax,0x1f
  6543f8:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  6543fc:	48 2b e0             	sub    rsp,rax
  6543ff:	48 89 e0             	mov    rax,rsp
  654402:	48 89 85 88 f6 ff ff 	mov    QWORD PTR [rbp-0x978],rax
  654409:	4c 89 f8             	mov    rax,r15
  65440c:	48 89 bd 90 f6 ff ff 	mov    QWORD PTR [rbp-0x970],rdi
  654413:	48 c7 85 a8 f6 ff ff 	mov    QWORD PTR [rbp-0x958],0x2
  65441a:	02 00 00 00 
  65441e:	4c 89 b5 98 f6 ff ff 	mov    QWORD PTR [rbp-0x968],r14
  654425:	48 89 bd c0 f6 ff ff 	mov    QWORD PTR [rbp-0x940],rdi
  65442c:	4c 89 a5 c8 f6 ff ff 	mov    QWORD PTR [rbp-0x938],r12
  654433:	4c 89 85 b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],r8
  65443a:	48 89 b5 d8 f6 ff ff 	mov    QWORD PTR [rbp-0x928],rsi
  654441:	48 89 8d e0 f6 ff ff 	mov    QWORD PTR [rbp-0x920],rcx
  654448:	48 89 95 d0 f6 ff ff 	mov    QWORD PTR [rbp-0x930],rdx
  65444f:	48 c7 85 a0 f6 ff ff 	mov    QWORD PTR [rbp-0x960],0x1
  654456:	01 00 00 00 
  65445a:	48 83 c0 1f          	add    rax,0x1f
  65445e:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  654462:	48 2b e0             	sub    rsp,rax
  654465:	48 89 e0             	mov    rax,rsp
  654468:	48 89 85 e8 f6 ff ff 	mov    QWORD PTR [rbp-0x918],rax
  65446f:	4c 89 f8             	mov    rax,r15
  654472:	48 89 bd f0 f6 ff ff 	mov    QWORD PTR [rbp-0x910],rdi
  654479:	48 c7 85 08 f7 ff ff 	mov    QWORD PTR [rbp-0x8f8],0x2
  654480:	02 00 00 00 
  654484:	4c 89 b5 f8 f6 ff ff 	mov    QWORD PTR [rbp-0x908],r14
  65448b:	48 89 bd 20 f7 ff ff 	mov    QWORD PTR [rbp-0x8e0],rdi
  654492:	4c 89 a5 28 f7 ff ff 	mov    QWORD PTR [rbp-0x8d8],r12
  654499:	4c 89 85 18 f7 ff ff 	mov    QWORD PTR [rbp-0x8e8],r8
  6544a0:	48 89 b5 38 f7 ff ff 	mov    QWORD PTR [rbp-0x8c8],rsi
  6544a7:	48 89 8d 40 f7 ff ff 	mov    QWORD PTR [rbp-0x8c0],rcx
  6544ae:	48 89 95 30 f7 ff ff 	mov    QWORD PTR [rbp-0x8d0],rdx
  6544b5:	48 c7 85 00 f7 ff ff 	mov    QWORD PTR [rbp-0x900],0x1
  6544bc:	01 00 00 00 
  6544c0:	48 83 c0 1f          	add    rax,0x1f
  6544c4:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  6544c8:	48 2b e0             	sub    rsp,rax
  6544cb:	48 89 e0             	mov    rax,rsp
  6544ce:	49 ff c1             	inc    r9
  6544d1:	48 89 95 90 f7 ff ff 	mov    QWORD PTR [rbp-0x870],rdx
  6544d8:	4d 0f 4e ce          	cmovle r9,r14
  6544dc:	48 89 85 48 f7 ff ff 	mov    QWORD PTR [rbp-0x8b8],rax
  6544e3:	48 89 8d a0 f7 ff ff 	mov    QWORD PTR [rbp-0x860],rcx
  6544ea:	48 89 bd 50 f7 ff ff 	mov    QWORD PTR [rbp-0x8b0],rdi
  6544f1:	48 c7 85 68 f7 ff ff 	mov    QWORD PTR [rbp-0x898],0x2
  6544f8:	02 00 00 00 
  6544fc:	4a 8d 14 cd 00 00 00 	lea    rdx,[r9*8+0x0]
  654503:	00 
  654504:	49 0f af d0          	imul   rdx,r8
  654508:	48 89 d0             	mov    rax,rdx
  65450b:	4c 89 b5 58 f7 ff ff 	mov    QWORD PTR [rbp-0x8a8],r14
  654512:	48 89 bd 80 f7 ff ff 	mov    QWORD PTR [rbp-0x880],rdi
  654519:	4c 89 a5 88 f7 ff ff 	mov    QWORD PTR [rbp-0x878],r12
  654520:	4c 89 85 78 f7 ff ff 	mov    QWORD PTR [rbp-0x888],r8
  654527:	48 89 b5 98 f7 ff ff 	mov    QWORD PTR [rbp-0x868],rsi
  65452e:	48 c7 85 60 f7 ff ff 	mov    QWORD PTR [rbp-0x8a0],0x1
  654535:	01 00 00 00 
  654539:	48 83 c0 1f          	add    rax,0x1f
  65453d:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  654541:	48 2b e0             	sub    rsp,rax
  654544:	48 89 e0             	mov    rax,rsp
  654547:	48 89 85 a8 f7 ff ff 	mov    QWORD PTR [rbp-0x858],rax
  65454e:	48 89 d0             	mov    rax,rdx
  654551:	48 89 bd b0 f7 ff ff 	mov    QWORD PTR [rbp-0x850],rdi
  654558:	48 c7 85 c8 f7 ff ff 	mov    QWORD PTR [rbp-0x838],0x2
  65455f:	02 00 00 00 
  654563:	4c 89 b5 b8 f7 ff ff 	mov    QWORD PTR [rbp-0x848],r14
  65456a:	48 89 bd e0 f7 ff ff 	mov    QWORD PTR [rbp-0x820],rdi
  654571:	4c 89 a5 e8 f7 ff ff 	mov    QWORD PTR [rbp-0x818],r12
  654578:	4c 89 85 d8 f7 ff ff 	mov    QWORD PTR [rbp-0x828],r8
  65457f:	48 89 b5 f8 f7 ff ff 	mov    QWORD PTR [rbp-0x808],rsi
  654586:	4c 89 b5 00 f8 ff ff 	mov    QWORD PTR [rbp-0x800],r14
  65458d:	4c 89 8d f0 f7 ff ff 	mov    QWORD PTR [rbp-0x810],r9
  654594:	48 c7 85 c0 f7 ff ff 	mov    QWORD PTR [rbp-0x840],0x1
  65459b:	01 00 00 00 
  65459f:	48 83 c0 1f          	add    rax,0x1f
  6545a3:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  6545a7:	48 2b e0             	sub    rsp,rax
  6545aa:	48 89 e0             	mov    rax,rsp
  6545ad:	48 89 85 08 f8 ff ff 	mov    QWORD PTR [rbp-0x7f8],rax
  6545b4:	48 89 d0             	mov    rax,rdx
  6545b7:	48 89 bd 10 f8 ff ff 	mov    QWORD PTR [rbp-0x7f0],rdi
  6545be:	48 c7 85 28 f8 ff ff 	mov    QWORD PTR [rbp-0x7d8],0x2
  6545c5:	02 00 00 00 
  6545c9:	4c 89 b5 18 f8 ff ff 	mov    QWORD PTR [rbp-0x7e8],r14
  6545d0:	48 89 bd 40 f8 ff ff 	mov    QWORD PTR [rbp-0x7c0],rdi
  6545d7:	4c 89 a5 48 f8 ff ff 	mov    QWORD PTR [rbp-0x7b8],r12
  6545de:	4c 89 85 38 f8 ff ff 	mov    QWORD PTR [rbp-0x7c8],r8
  6545e5:	48 89 b5 58 f8 ff ff 	mov    QWORD PTR [rbp-0x7a8],rsi
  6545ec:	4c 89 b5 60 f8 ff ff 	mov    QWORD PTR [rbp-0x7a0],r14
  6545f3:	4c 89 8d 50 f8 ff ff 	mov    QWORD PTR [rbp-0x7b0],r9
  6545fa:	48 c7 85 20 f8 ff ff 	mov    QWORD PTR [rbp-0x7e0],0x1
  654601:	01 00 00 00 
  654605:	48 83 c0 1f          	add    rax,0x1f
  654609:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  65460d:	48 2b e0             	sub    rsp,rax
  654610:	48 89 e0             	mov    rax,rsp
  654613:	48 89 85 68 f8 ff ff 	mov    QWORD PTR [rbp-0x798],rax
  65461a:	48 89 d0             	mov    rax,rdx
  65461d:	48 89 bd 70 f8 ff ff 	mov    QWORD PTR [rbp-0x790],rdi
  654624:	48 c7 85 88 f8 ff ff 	mov    QWORD PTR [rbp-0x778],0x2
  65462b:	02 00 00 00 
  65462f:	4c 89 b5 78 f8 ff ff 	mov    QWORD PTR [rbp-0x788],r14
  654636:	48 89 bd a0 f8 ff ff 	mov    QWORD PTR [rbp-0x760],rdi
  65463d:	4c 89 a5 a8 f8 ff ff 	mov    QWORD PTR [rbp-0x758],r12
  654644:	4c 89 85 98 f8 ff ff 	mov    QWORD PTR [rbp-0x768],r8
  65464b:	48 89 b5 b8 f8 ff ff 	mov    QWORD PTR [rbp-0x748],rsi
  654652:	4c 89 b5 c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],r14
  654659:	4c 89 8d b0 f8 ff ff 	mov    QWORD PTR [rbp-0x750],r9
  654660:	48 c7 85 80 f8 ff ff 	mov    QWORD PTR [rbp-0x780],0x1
  654667:	01 00 00 00 
  65466b:	48 83 c0 1f          	add    rax,0x1f
  65466f:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  654673:	48 2b e0             	sub    rsp,rax
  654676:	48 89 e0             	mov    rax,rsp
  654679:	48 89 b5 18 f9 ff ff 	mov    QWORD PTR [rbp-0x6e8],rsi
  654680:	49 69 f5 60 0f 00 00 	imul   rsi,r13,0xf60
  654687:	4c 89 8d 10 f9 ff ff 	mov    QWORD PTR [rbp-0x6f0],r9
  65468e:	4c 8b 0d ab 6a 46 00 	mov    r9,QWORD PTR [rip+0x466aab]        # abb140 <mod_param_mp_bounds_>
  654695:	4c 89 a5 08 f9 ff ff 	mov    QWORD PTR [rbp-0x6f8],r12
  65469c:	4c 8b a5 c0 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x640]
  6546a3:	4a 8b 94 0e 90 f2 ff 	mov    rdx,QWORD PTR [rsi+r9*1-0xd70]
  6546aa:	ff 
  6546ab:	48 f7 da             	neg    rdx
  6546ae:	4c 89 85 f8 f8 ff ff 	mov    QWORD PTR [rbp-0x708],r8
  6546b5:	4d 63 04 24          	movsxd r8,DWORD PTR [r12]
  6546b9:	49 03 d0             	add    rdx,r8
  6546bc:	4a 0f af 94 0e 88 f2 	imul   rdx,QWORD PTR [rsi+r9*1-0xd78]
  6546c3:	ff ff 
  6546c5:	4e 8b ac 0e 50 f2 ff 	mov    r13,QWORD PTR [rsi+r9*1-0xdb0]
  6546cc:	ff 
  6546cd:	4e 8b 9c 0e b0 f3 ff 	mov    r11,QWORD PTR [rsi+r9*1-0xc50]
  6546d4:	ff 
  6546d5:	49 f7 db             	neg    r11
  6546d8:	41 8b 4c 15 00       	mov    ecx,DWORD PTR [r13+rdx*1+0x0]
  6546dd:	4d 03 d8             	add    r11,r8
  6546e0:	89 8d 78 f9 ff ff    	mov    DWORD PTR [rbp-0x688],ecx
  6546e6:	4a 8b 8c 0e f8 f3 ff 	mov    rcx,QWORD PTR [rsi+r9*1-0xc08]
  6546ed:	ff 
  6546ee:	48 f7 d9             	neg    rcx
  6546f1:	49 03 c8             	add    rcx,r8
  6546f4:	4a 0f af 8c 0e f0 f3 	imul   rcx,QWORD PTR [rsi+r9*1-0xc10]
  6546fb:	ff ff 
  6546fd:	4e 0f af 9c 0e a8 f3 	imul   r11,QWORD PTR [rsi+r9*1-0xc58]
  654704:	ff ff 
  654706:	4e 8b ac 0e d8 f2 ff 	mov    r13,QWORD PTR [rsi+r9*1-0xd28]
  65470d:	ff 
  65470e:	49 f7 dd             	neg    r13
  654711:	4a 8b 94 0e b8 f3 ff 	mov    rdx,QWORD PTR [rsi+r9*1-0xc48]
  654718:	ff 
  654719:	4d 03 e8             	add    r13,r8
  65471c:	4e 0f af ac 0e d0 f2 	imul   r13,QWORD PTR [rsi+r9*1-0xd30]
  654723:	ff ff 
  654725:	48 89 bd d0 f8 ff ff 	mov    QWORD PTR [rbp-0x730],rdi
  65472c:	48 89 bd 00 f9 ff ff 	mov    QWORD PTR [rbp-0x700],rdi
  654733:	8b 3c 0a             	mov    edi,DWORD PTR [rdx+rcx*1]
  654736:	4a 8b 94 0e 68 f3 ff 	mov    rdx,QWORD PTR [rsi+r9*1-0xc98]
  65473d:	ff 
  65473e:	48 f7 da             	neg    rdx
  654741:	49 03 d0             	add    rdx,r8
  654744:	4a 0f af 94 0e 60 f3 	imul   rdx,QWORD PTR [rsi+r9*1-0xca0]
  65474b:	ff ff 
  65474d:	4e 8b a4 0e 98 f2 ff 	mov    r12,QWORD PTR [rsi+r9*1-0xd68]
  654754:	ff 
  654755:	4e 8b 94 0e 70 f3 ff 	mov    r10,QWORD PTR [rsi+r9*1-0xc90]
  65475c:	ff 
  65475d:	48 89 85 c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],rax
  654764:	43 8b 04 2c          	mov    eax,DWORD PTR [r12+r13*1]
  654768:	47 8b 3c 1a          	mov    r15d,DWORD PTR [r10+r11*1]
  65476c:	89 85 80 f9 ff ff    	mov    DWORD PTR [rbp-0x680],eax
  654772:	4e 8b 9c 0e 20 f3 ff 	mov    r11,QWORD PTR [rsi+r9*1-0xce0]
  654779:	ff 
  65477a:	4a 8b 84 0e 28 f3 ff 	mov    rax,QWORD PTR [rsi+r9*1-0xcd8]
  654781:	ff 
  654782:	49 f7 db             	neg    r11
  654785:	4d 03 d8             	add    r11,r8
  654788:	4e 0f af 9c 0e 18 f3 	imul   r11,QWORD PTR [rsi+r9*1-0xce8]
  65478f:	ff ff 
  654791:	8b 0c 10             	mov    ecx,DWORD PTR [rax+rdx*1]
  654794:	4a 8b 84 0e e0 f9 ff 	mov    rax,QWORD PTR [rsi+r9*1-0x620]
  65479b:	ff 
  65479c:	48 f7 d8             	neg    rax
  65479f:	49 03 c0             	add    rax,r8
  6547a2:	4a 0f af 84 0e d8 f9 	imul   rax,QWORD PTR [rsi+r9*1-0x628]
  6547a9:	ff ff 
  6547ab:	4a 8b 94 0e 00 fb ff 	mov    rdx,QWORD PTR [rsi+r9*1-0x500]
  6547b2:	ff 
  6547b3:	48 f7 da             	neg    rdx
  6547b6:	49 03 d0             	add    rdx,r8
  6547b9:	4a 0f af 94 0e f8 fa 	imul   rdx,QWORD PTR [rsi+r9*1-0x508]
  6547c0:	ff ff 
  6547c2:	4e 8b 94 0e e0 f2 ff 	mov    r10,QWORD PTR [rsi+r9*1-0xd20]
  6547c9:	ff 
  6547ca:	44 89 bd 7c f9 ff ff 	mov    DWORD PTR [rbp-0x684],r15d
  6547d1:	4e 8b ac 0e 88 f4 ff 	mov    r13,QWORD PTR [rsi+r9*1-0xb78]
  6547d8:	ff 
  6547d9:	47 8b 3c 1a          	mov    r15d,DWORD PTR [r10+r11*1]
  6547dd:	49 f7 dd             	neg    r13
  6547e0:	4e 8b 9c 0e a0 f9 ff 	mov    r11,QWORD PTR [rsi+r9*1-0x660]
  6547e7:	ff 
  6547e8:	4d 03 e8             	add    r13,r8
  6547eb:	44 89 bd 88 f9 ff ff 	mov    DWORD PTR [rbp-0x678],r15d
  6547f2:	4e 8b 94 0e d0 f4 ff 	mov    r10,QWORD PTR [rsi+r9*1-0xb30]
  6547f9:	ff 
  6547fa:	45 8b 3c 03          	mov    r15d,DWORD PTR [r11+rax*1]
  6547fe:	49 f7 da             	neg    r10
  654801:	4a 8b 84 0e c0 fa ff 	mov    rax,QWORD PTR [rsi+r9*1-0x540]
  654808:	ff 
  654809:	4d 03 d0             	add    r10,r8
  65480c:	4e 0f af ac 0e 80 f4 	imul   r13,QWORD PTR [rsi+r9*1-0xb80]
  654813:	ff ff 
  654815:	4e 0f af 94 0e c8 f4 	imul   r10,QWORD PTR [rsi+r9*1-0xb38]
  65481c:	ff ff 
  65481e:	89 8d 8c f9 ff ff    	mov    DWORD PTR [rbp-0x674],ecx
  654824:	8b 0c 10             	mov    ecx,DWORD PTR [rax+rdx*1]
  654827:	4a 8b 84 0e 68 fc ff 	mov    rax,QWORD PTR [rsi+r9*1-0x398]
  65482e:	ff 
  65482f:	48 f7 d8             	neg    rax
  654832:	49 03 c0             	add    rax,r8
  654835:	4a 0f af 84 0e 60 fc 	imul   rax,QWORD PTR [rsi+r9*1-0x3a0]
  65483c:	ff ff 
  65483e:	89 bd 84 f9 ff ff    	mov    DWORD PTR [rbp-0x67c],edi
  654844:	4e 8b a4 0e 48 f4 ff 	mov    r12,QWORD PTR [rsi+r9*1-0xbb8]
  65484b:	ff 
  65484c:	4a 8b bc 0e 90 f4 ff 	mov    rdi,QWORD PTR [rsi+r9*1-0xb70]
  654853:	ff 
  654854:	4a 8b 94 0e 88 fd ff 	mov    rdx,QWORD PTR [rsi+r9*1-0x278]
  65485b:	ff 
  65485c:	4f 63 24 2c          	movsxd r12,DWORD PTR [r12+r13*1]
  654860:	48 f7 da             	neg    rdx
  654863:	4e 63 2c 17          	movsxd r13,DWORD PTR [rdi+r10*1]
  654867:	49 03 d0             	add    rdx,r8
  65486a:	4a 8b bc 0e 28 fc ff 	mov    rdi,QWORD PTR [rsi+r9*1-0x3d8]
  654871:	ff 
  654872:	4a 0f af 94 0e 80 fd 	imul   rdx,QWORD PTR [rsi+r9*1-0x280]
  654879:	ff ff 
  65487b:	44 8b 14 07          	mov    r10d,DWORD PTR [rdi+rax*1]
  65487f:	4a 8b bc 0e 28 f1 ff 	mov    rdi,QWORD PTR [rsi+r9*1-0xed8]
  654886:	ff 
  654887:	48 f7 df             	neg    rdi
  65488a:	48 ff cf             	dec    rdi
  65488d:	4a 0f af bc 0e 20 f1 	imul   rdi,QWORD PTR [rsi+r9*1-0xee0]
  654894:	ff ff 
  654896:	89 8d 94 f9 ff ff    	mov    DWORD PTR [rbp-0x66c],ecx
  65489c:	4e 8b 84 0e 48 fd ff 	mov    r8,QWORD PTR [rsi+r9*1-0x2b8]
  6548a3:	ff 
  6548a4:	4a 8b 8c 0e e8 f0 ff 	mov    rcx,QWORD PTR [rsi+r9*1-0xf18]
  6548ab:	ff 
  6548ac:	4e 8b 9c 0e 70 f1 ff 	mov    r11,QWORD PTR [rsi+r9*1-0xe90]
  6548b3:	ff 
  6548b4:	41 8b 04 10          	mov    eax,DWORD PTR [r8+rdx*1]
  6548b8:	49 f7 db             	neg    r11
  6548bb:	44 8b 04 39          	mov    r8d,DWORD PTR [rcx+rdi*1]
  6548bf:	49 ff cb             	dec    r11
  6548c2:	4a 8b 94 0e b8 f1 ff 	mov    rdx,QWORD PTR [rsi+r9*1-0xe48]
  6548c9:	ff 
  6548ca:	4a 8b bc 0e 00 f2 ff 	mov    rdi,QWORD PTR [rsi+r9*1-0xe00]
  6548d1:	ff 
  6548d2:	48 f7 da             	neg    rdx
  6548d5:	48 f7 df             	neg    rdi
  6548d8:	48 ff ca             	dec    rdx
  6548db:	48 ff cf             	dec    rdi
  6548de:	4a 0f af bc 0e f8 f1 	imul   rdi,QWORD PTR [rsi+r9*1-0xe08]
  6548e5:	ff ff 
  6548e7:	4e 0f af 9c 0e 68 f1 	imul   r11,QWORD PTR [rsi+r9*1-0xe98]
  6548ee:	ff ff 
  6548f0:	4a 0f af 94 0e b0 f1 	imul   rdx,QWORD PTR [rsi+r9*1-0xe50]
  6548f7:	ff ff 
  6548f9:	44 89 95 98 f9 ff ff 	mov    DWORD PTR [rbp-0x668],r10d
  654900:	89 85 9c f9 ff ff    	mov    DWORD PTR [rbp-0x664],eax
  654906:	4e 8b 94 0e 30 f1 ff 	mov    r10,QWORD PTR [rsi+r9*1-0xed0]
  65490d:	ff 
  65490e:	4a 8b 84 0e 78 f1 ff 	mov    rax,QWORD PTR [rsi+r9*1-0xe88]
  654915:	ff 
  654916:	4a 8b b4 0e c0 f1 ff 	mov    rsi,QWORD PTR [rsi+r9*1-0xe40]
  65491d:	ff 
  65491e:	44 89 bd 90 f9 ff ff 	mov    DWORD PTR [rbp-0x670],r15d
  654925:	47 8b 3c 1a          	mov    r15d,DWORD PTR [r10+r11*1]
  654929:	8b 0c 10             	mov    ecx,DWORD PTR [rax+rdx*1]
  65492c:	44 8b 0c 3e          	mov    r9d,DWORD PTR [rsi+rdi*1]
  654930:	bf d8 54 ab 00       	mov    edi,0xab54d8
  654935:	48 c7 85 e8 f8 ff ff 	mov    QWORD PTR [rbp-0x718],0x2
  65493c:	02 00 00 00 
  654940:	4c 89 b5 d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],r14
  654947:	4c 89 b5 20 f9 ff ff 	mov    QWORD PTR [rbp-0x6e0],r14
  65494e:	48 c7 85 e0 f8 ff ff 	mov    QWORD PTR [rbp-0x720],0x1
  654955:	01 00 00 00 
  654959:	44 89 85 a0 f9 ff ff 	mov    DWORD PTR [rbp-0x660],r8d
  654960:	44 89 bd a4 f9 ff ff 	mov    DWORD PTR [rbp-0x65c],r15d
  654967:	89 8d a8 f9 ff ff    	mov    DWORD PTR [rbp-0x658],ecx
  65496d:	44 89 8d ac f9 ff ff 	mov    DWORD PTR [rbp-0x654],r9d
  654974:	e8 77 8e db ff       	call   40d7f0 <__kmpc_global_thread_num@plt>
  654979:	89 85 b0 f9 ff ff    	mov    DWORD PTR [rbp-0x650],eax
  65497f:	bf 24 55 ab 00       	mov    edi,0xab5524
  654984:	33 c0                	xor    eax,eax
  654986:	e8 95 8f db ff       	call   40d920 <__kmpc_ok_to_fork@plt>
  65498b:	85 c0                	test   eax,eax
  65498d:	0f 84 97 00 00 00    	je     654a2a <step3d_t_mod_mp_step3d_t_tile_+0x86a>
  654993:	48 83 c4 a0          	add    rsp,0xffffffffffffffa0
  654997:	4c 8d 95 78 f9 ff ff 	lea    r10,[rbp-0x688]
  65499e:	4c 8b bd 90 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb70]
  6549a5:	4d 8d 5a 08          	lea    r11,[r10+0x8]
  6549a9:	ba a8 b7 65 00       	mov    edx,0x65b7a8
  6549ae:	48 8d 43 70          	lea    rax,[rbx+0x70]
  6549b2:	49 8d 72 b4          	lea    rsi,[r10-0x4c]
  6549b6:	4c 89 14 24          	mov    QWORD PTR [rsp],r10
  6549ba:	48 8d 7e 2c          	lea    rdi,[rsi+0x2c]
  6549be:	4c 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],r11
  6549c3:	4c 8d 56 30          	lea    r10,[rsi+0x30]
  6549c7:	4c 89 7c 24 10       	mov    QWORD PTR [rsp+0x10],r15
  6549cc:	4c 8d 5e 34          	lea    r11,[rsi+0x34]
  6549d0:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  6549d5:	4c 8d 7e 48          	lea    r15,[rsi+0x48]
  6549d9:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  6549de:	48 8d 47 5c          	lea    rax,[rdi+0x5c]
  6549e2:	48 89 7c 24 28       	mov    QWORD PTR [rsp+0x28],rdi
  6549e7:	48 8d 48 04          	lea    rcx,[rax+0x4]
  6549eb:	4c 89 54 24 30       	mov    QWORD PTR [rsp+0x30],r10
  6549f0:	4c 8d 40 d4          	lea    r8,[rax-0x2c]
  6549f4:	4c 89 5c 24 38       	mov    QWORD PTR [rsp+0x38],r11
  6549f9:	4c 8d 48 d8          	lea    r9,[rax-0x28]
  6549fd:	4c 89 7c 24 40       	mov    QWORD PTR [rsp+0x40],r15
  654a02:	bf 24 55 ab 00       	mov    edi,0xab5524
  654a07:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
  654a0c:	be 0e 00 00 00       	mov    esi,0xe
  654a11:	33 c0                	xor    eax,eax
  654a13:	4c 8d 79 30          	lea    r15,[rcx+0x30]
  654a17:	4c 89 7c 24 50       	mov    QWORD PTR [rsp+0x50],r15
  654a1c:	e8 4f 8d db ff       	call   40d770 <__kmpc_fork_call@plt>
  654a21:	48 83 c4 60          	add    rsp,0x60
  654a25:	e9 81 00 00 00       	jmp    654aab <step3d_t_mod_mp_step3d_t_tile_+0x8eb>
  654a2a:	bf 24 55 ab 00       	mov    edi,0xab5524
  654a2f:	33 c0                	xor    eax,eax
  654a31:	8b b5 b0 f9 ff ff    	mov    esi,DWORD PTR [rbp-0x650]
  654a37:	e8 d4 8e db ff       	call   40d910 <__kmpc_serialized_parallel@plt>
  654a3c:	4c 8d bd e8 f9 ff ff 	lea    r15,[rbp-0x618]
  654a43:	41 57                	push   r15
  654a45:	49 8d 47 cc          	lea    rax,[r15-0x34]
  654a49:	50                   	push   rax
  654a4a:	4c 8d 50 c0          	lea    r10,[rax-0x40]
  654a4e:	41 52                	push   r10
  654a50:	4c 8d 58 ac          	lea    r11,[rax-0x54]
  654a54:	41 53                	push   r11
  654a56:	4c 8d 40 a8          	lea    r8,[rax-0x58]
  654a5a:	41 50                	push   r8
  654a5c:	4c 8d 48 a4          	lea    r9,[rax-0x5c]
  654a60:	41 51                	push   r9
  654a62:	49 8d 78 d0          	lea    rdi,[r8-0x30]
  654a66:	57                   	push   rdi
  654a67:	48 8d 73 70          	lea    rsi,[rbx+0x70]
  654a6b:	56                   	push   rsi
  654a6c:	ff b5 90 f4 ff ff    	push   QWORD PTR [rbp-0xb70]
  654a72:	be 64 11 be 00       	mov    esi,0xbe1164
  654a77:	48 8d 50 cc          	lea    rdx,[rax-0x34]
  654a7b:	52                   	push   rdx
  654a7c:	48 8d 78 fc          	lea    rdi,[rax-0x4]
  654a80:	48 8d 50 04          	lea    rdx,[rax+0x4]
  654a84:	48 8d 48 d4          	lea    rcx,[rax-0x2c]
  654a88:	4c 8d 40 d8          	lea    r8,[rax-0x28]
  654a8c:	4c 8d 48 c4          	lea    r9,[rax-0x3c]
  654a90:	e8 13 6d 00 00       	call   65b7a8 <step3d_t_mod_mp_step3d_t_tile_+0x75e8>
  654a95:	48 83 c4 50          	add    rsp,0x50
  654a99:	bf 24 55 ab 00       	mov    edi,0xab5524
  654a9e:	33 c0                	xor    eax,eax
  654aa0:	8b b5 b0 f9 ff ff    	mov    esi,DWORD PTR [rbp-0x650]
  654aa6:	e8 b5 91 db ff       	call   40dc60 <__kmpc_end_serialized_parallel@plt>
  654aab:	bf 70 55 ab 00       	mov    edi,0xab5570
  654ab0:	33 c0                	xor    eax,eax
  654ab2:	e8 69 8e db ff       	call   40d920 <__kmpc_ok_to_fork@plt>
  654ab7:	85 c0                	test   eax,eax
  654ab9:	0f 84 86 01 00 00    	je     654c45 <step3d_t_mod_mp_step3d_t_tile_+0xa85>
  654abf:	48 81 c4 f0 fe ff ff 	add    rsp,0xfffffffffffffef0
  654ac6:	4c 8d 95 90 f9 ff ff 	lea    r10,[rbp-0x670]
  654acd:	ba a2 79 65 00       	mov    edx,0x6579a2
  654ad2:	4d 8d 5a 04          	lea    r11,[r10+0x4]
  654ad6:	48 8d b3 a0 00 00 00 	lea    rsi,[rbx+0xa0]
  654add:	48 8d 7b 50          	lea    rdi,[rbx+0x50]
  654ae1:	4c 89 14 24          	mov    QWORD PTR [rsp],r10
  654ae5:	49 8d 4a 30          	lea    rcx,[r10+0x30]
  654ae9:	4c 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],r11
  654aee:	4c 8d 41 b8          	lea    r8,[rcx-0x48]
  654af2:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  654af7:	48 8d 41 c0          	lea    rax,[rcx-0x40]
  654afb:	48 89 7c 24 18       	mov    QWORD PTR [rsp+0x18],rdi
  654b00:	4c 8d 4b 78          	lea    r9,[rbx+0x78]
  654b04:	48 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],rcx
  654b09:	4c 8d 50 18          	lea    r10,[rax+0x18]
  654b0d:	4c 89 44 24 28       	mov    QWORD PTR [rsp+0x28],r8
  654b12:	4c 8d 58 1c          	lea    r11,[rax+0x1c]
  654b16:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  654b1b:	48 8d 73 58          	lea    rsi,[rbx+0x58]
  654b1f:	4c 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],r9
  654b24:	48 8d 7e 28          	lea    rdi,[rsi+0x28]
  654b28:	4c 89 54 24 40       	mov    QWORD PTR [rsp+0x40],r10
  654b2d:	48 8d 4b 48          	lea    rcx,[rbx+0x48]
  654b31:	4c 89 5c 24 48       	mov    QWORD PTR [rsp+0x48],r11
  654b36:	4c 8d 43 10          	lea    r8,[rbx+0x10]
  654b3a:	48 89 74 24 50       	mov    QWORD PTR [rsp+0x50],rsi
  654b3f:	48 8d 43 18          	lea    rax,[rbx+0x18]
  654b43:	48 89 7c 24 58       	mov    QWORD PTR [rsp+0x58],rdi
  654b48:	4c 8d 4b 20          	lea    r9,[rbx+0x20]
  654b4c:	48 89 4c 24 60       	mov    QWORD PTR [rsp+0x60],rcx
  654b51:	4c 8d 53 28          	lea    r10,[rbx+0x28]
  654b55:	4c 89 44 24 68       	mov    QWORD PTR [rsp+0x68],r8
  654b5a:	4d 8d 5b 04          	lea    r11,[r11+0x4]
  654b5e:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
  654b63:	49 8d 73 04          	lea    rsi,[r11+0x4]
  654b67:	4c 89 4c 24 78       	mov    QWORD PTR [rsp+0x78],r9
  654b6c:	48 8d 7e 04          	lea    rdi,[rsi+0x4]
  654b70:	4c 89 94 24 80 00 00 	mov    QWORD PTR [rsp+0x80],r10
  654b77:	00 
  654b78:	48 8d 4e 08          	lea    rcx,[rsi+0x8]
  654b7c:	4c 8d 94 24 88 00 00 	lea    r10,[rsp+0x88]
  654b83:	00 
  654b84:	4d 89 1a             	mov    QWORD PTR [r10],r11
  654b87:	4c 8d 43 60          	lea    r8,[rbx+0x60]
  654b8b:	49 89 72 08          	mov    QWORD PTR [r10+0x8],rsi
  654b8f:	48 8d 43 68          	lea    rax,[rbx+0x68]
  654b93:	49 89 7a 10          	mov    QWORD PTR [r10+0x10],rdi
  654b97:	4c 8d 4b 40          	lea    r9,[rbx+0x40]
  654b9b:	48 8d bc 24 a0 00 00 	lea    rdi,[rsp+0xa0]
  654ba2:	00 
  654ba3:	48 89 0f             	mov    QWORD PTR [rdi],rcx
  654ba6:	4c 8d 51 80          	lea    r10,[rcx-0x80]
  654baa:	4c 89 47 08          	mov    QWORD PTR [rdi+0x8],r8
  654bae:	4c 8d 59 ac          	lea    r11,[rcx-0x54]
  654bb2:	48 89 47 10          	mov    QWORD PTR [rdi+0x10],rax
  654bb6:	48 8d 71 b0          	lea    rsi,[rcx-0x50]
  654bba:	48 8d 84 24 b8 00 00 	lea    rax,[rsp+0xb8]
  654bc1:	00 
  654bc2:	4c 89 08             	mov    QWORD PTR [rax],r9
  654bc5:	48 8d 79 b4          	lea    rdi,[rcx-0x4c]
  654bc9:	4c 89 50 08          	mov    QWORD PTR [rax+0x8],r10
  654bcd:	48 8d 49 08          	lea    rcx,[rcx+0x8]
  654bd1:	4c 89 58 10          	mov    QWORD PTR [rax+0x10],r11
  654bd5:	4c 8d 85 e8 f6 ff ff 	lea    r8,[rbp-0x918]
  654bdc:	4c 8d 9c 24 d0 00 00 	lea    r11,[rsp+0xd0]
  654be3:	00 
  654be4:	49 89 33             	mov    QWORD PTR [r11],rsi
  654be7:	49 8d 40 60          	lea    rax,[r8+0x60]
  654beb:	48 8d b4 24 d8 00 00 	lea    rsi,[rsp+0xd8]
  654bf2:	00 
  654bf3:	48 89 3e             	mov    QWORD PTR [rsi],rdi
  654bf6:	4c 8d 8d 28 f6 ff ff 	lea    r9,[rbp-0x9d8]
  654bfd:	48 89 4e 08          	mov    QWORD PTR [rsi+0x8],rcx
  654c01:	bf 70 55 ab 00       	mov    edi,0xab5570
  654c06:	4c 89 7e 10          	mov    QWORD PTR [rsi+0x10],r15
  654c0a:	be 25 00 00 00       	mov    esi,0x25
  654c0f:	4d 89 43 20          	mov    QWORD PTR [r11+0x20],r8
  654c13:	48 8d 49 04          	lea    rcx,[rcx+0x4]
  654c17:	49 89 43 28          	mov    QWORD PTR [r11+0x28],rax
  654c1b:	4c 8d 41 d0          	lea    r8,[rcx-0x30]
  654c1f:	4d 89 4b 30          	mov    QWORD PTR [r11+0x30],r9
  654c23:	4c 8d 49 d4          	lea    r9,[rcx-0x2c]
  654c27:	33 c0                	xor    eax,eax
  654c29:	4c 8d 95 88 f6 ff ff 	lea    r10,[rbp-0x978]
  654c30:	4d 89 53 38          	mov    QWORD PTR [r11+0x38],r10
  654c34:	e8 37 8b db ff       	call   40d770 <__kmpc_fork_call@plt>
  654c39:	48 81 c4 10 01 00 00 	add    rsp,0x110
  654c40:	e9 79 01 00 00       	jmp    654dbe <step3d_t_mod_mp_step3d_t_tile_+0xbfe>
  654c45:	bf 70 55 ab 00       	mov    edi,0xab5570
  654c4a:	33 c0                	xor    eax,eax
  654c4c:	8b b5 b0 f9 ff ff    	mov    esi,DWORD PTR [rbp-0x650]
  654c52:	e8 b9 8c db ff       	call   40d910 <__kmpc_serialized_parallel@plt>
  654c57:	48 81 c4 f0 fe ff ff 	add    rsp,0xfffffffffffffef0
  654c5e:	48 8d 85 94 f9 ff ff 	lea    rax,[rbp-0x66c]
  654c65:	be 68 11 be 00       	mov    esi,0xbe1168
  654c6a:	4c 8d 93 a0 00 00 00 	lea    r10,[rbx+0xa0]
  654c71:	4c 8d 5b 50          	lea    r11,[rbx+0x50]
  654c75:	48 8d 50 2c          	lea    rdx,[rax+0x2c]
  654c79:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  654c7d:	48 8d 48 e4          	lea    rcx,[rax-0x1c]
  654c81:	4c 89 54 24 08       	mov    QWORD PTR [rsp+0x8],r10
  654c86:	48 8d 40 ec          	lea    rax,[rax-0x14]
  654c8a:	48 8d 7c 24 10       	lea    rdi,[rsp+0x10]
  654c8f:	4c 89 1f             	mov    QWORD PTR [rdi],r11
  654c92:	4c 8d 43 78          	lea    r8,[rbx+0x78]
  654c96:	48 89 57 08          	mov    QWORD PTR [rdi+0x8],rdx
  654c9a:	4c 8d 50 18          	lea    r10,[rax+0x18]
  654c9e:	48 89 4f 10          	mov    QWORD PTR [rdi+0x10],rcx
  654ca2:	4c 8d 58 1c          	lea    r11,[rax+0x1c]
  654ca6:	48 89 47 18          	mov    QWORD PTR [rdi+0x18],rax
  654caa:	48 8d 53 58          	lea    rdx,[rbx+0x58]
  654cae:	4c 89 47 20          	mov    QWORD PTR [rdi+0x20],r8
  654cb2:	48 8d 4a 28          	lea    rcx,[rdx+0x28]
  654cb6:	4c 89 57 28          	mov    QWORD PTR [rdi+0x28],r10
  654cba:	48 8d 43 48          	lea    rax,[rbx+0x48]
  654cbe:	4c 89 5f 30          	mov    QWORD PTR [rdi+0x30],r11
  654cc2:	4c 8d 43 10          	lea    r8,[rbx+0x10]
  654cc6:	48 89 57 38          	mov    QWORD PTR [rdi+0x38],rdx
  654cca:	4c 8d 53 18          	lea    r10,[rbx+0x18]
  654cce:	48 89 4f 40          	mov    QWORD PTR [rdi+0x40],rcx
  654cd2:	4c 8d 5b 20          	lea    r11,[rbx+0x20]
  654cd6:	48 89 47 48          	mov    QWORD PTR [rdi+0x48],rax
  654cda:	48 8d 53 28          	lea    rdx,[rbx+0x28]
  654cde:	4c 89 47 50          	mov    QWORD PTR [rdi+0x50],r8
  654ce2:	48 8d 8d a0 f9 ff ff 	lea    rcx,[rbp-0x660]
  654ce9:	4c 89 57 58          	mov    QWORD PTR [rdi+0x58],r10
  654ced:	48 8d 41 04          	lea    rax,[rcx+0x4]
  654cf1:	4c 89 5f 60          	mov    QWORD PTR [rdi+0x60],r11
  654cf5:	4c 8d 40 04          	lea    r8,[rax+0x4]
  654cf9:	48 89 57 68          	mov    QWORD PTR [rdi+0x68],rdx
  654cfd:	4c 8d 50 08          	lea    r10,[rax+0x8]
  654d01:	48 89 4f 70          	mov    QWORD PTR [rdi+0x70],rcx
  654d05:	4c 8d 5b 60          	lea    r11,[rbx+0x60]
  654d09:	48 89 47 78          	mov    QWORD PTR [rdi+0x78],rax
  654d0d:	48 8d 53 68          	lea    rdx,[rbx+0x68]
  654d11:	4c 8d 8c 24 90 00 00 	lea    r9,[rsp+0x90]
  654d18:	00 
  654d19:	4d 89 01             	mov    QWORD PTR [r9],r8
  654d1c:	48 8d 4b 40          	lea    rcx,[rbx+0x40]
  654d20:	4d 89 51 08          	mov    QWORD PTR [r9+0x8],r10
  654d24:	48 8d 40 88          	lea    rax,[rax-0x78]
  654d28:	4d 89 59 10          	mov    QWORD PTR [r9+0x10],r11
  654d2c:	4c 8d 40 2c          	lea    r8,[rax+0x2c]
  654d30:	49 89 51 18          	mov    QWORD PTR [r9+0x18],rdx
  654d34:	4c 8d 50 30          	lea    r10,[rax+0x30]
  654d38:	49 89 49 20          	mov    QWORD PTR [r9+0x20],rcx
  654d3c:	4c 8d 58 34          	lea    r11,[rax+0x34]
  654d40:	49 89 41 28          	mov    QWORD PTR [r9+0x28],rax
  654d44:	49 8d 50 5c          	lea    rdx,[r8+0x5c]
  654d48:	4d 89 41 30          	mov    QWORD PTR [r9+0x30],r8
  654d4c:	48 8d 8d e8 f6 ff ff 	lea    rcx,[rbp-0x918]
  654d53:	4d 89 51 38          	mov    QWORD PTR [r9+0x38],r10
  654d57:	48 8d 41 60          	lea    rax,[rcx+0x60]
  654d5b:	4d 89 59 40          	mov    QWORD PTR [r9+0x40],r11
  654d5f:	4c 8d 85 28 f6 ff ff 	lea    r8,[rbp-0x9d8]
  654d66:	4c 8d 9c 24 d8 00 00 	lea    r11,[rsp+0xd8]
  654d6d:	00 
  654d6e:	49 89 13             	mov    QWORD PTR [r11],rdx
  654d71:	48 8d 7a fc          	lea    rdi,[rdx-0x4]
  654d75:	4d 89 7b 08          	mov    QWORD PTR [r11+0x8],r15
  654d79:	4c 8d 4a dc          	lea    r9,[rdx-0x24]
  654d7d:	49 89 4b 10          	mov    QWORD PTR [r11+0x10],rcx
  654d81:	48 8d 52 04          	lea    rdx,[rdx+0x4]
  654d85:	49 89 43 18          	mov    QWORD PTR [r11+0x18],rax
  654d89:	48 8d 4a d0          	lea    rcx,[rdx-0x30]
  654d8d:	4d 89 43 20          	mov    QWORD PTR [r11+0x20],r8
  654d91:	4c 8d 42 d4          	lea    r8,[rdx-0x2c]
  654d95:	4c 8d 95 88 f6 ff ff 	lea    r10,[rbp-0x978]
  654d9c:	4d 89 53 28          	mov    QWORD PTR [r11+0x28],r10
  654da0:	e8 fd 2b 00 00       	call   6579a2 <step3d_t_mod_mp_step3d_t_tile_+0x37e2>
  654da5:	48 81 c4 10 01 00 00 	add    rsp,0x110
  654dac:	bf 70 55 ab 00       	mov    edi,0xab5570
  654db1:	33 c0                	xor    eax,eax
  654db3:	8b b5 b0 f9 ff ff    	mov    esi,DWORD PTR [rbp-0x650]
  654db9:	e8 a2 8e db ff       	call   40dc60 <__kmpc_end_serialized_parallel@plt>
  654dbe:	be c8 58 ac 00       	mov    esi,0xac58c8
  654dc3:	48 8b bd b8 f9 ff ff 	mov    rdi,QWORD PTR [rbp-0x648]
  654dca:	e8 51 dd fd ff       	call   632b20 <nesting_mod_mp_collect_bry_fluxes_>
  654dcf:	8b 05 c3 ba 58 00    	mov    eax,DWORD PTR [rip+0x58bac3]        # be0898 <mod_scalars_mp_exit_flag_>
  654dd5:	3b 05 cd ba 58 00    	cmp    eax,DWORD PTR [rip+0x58bacd]        # be08a8 <mod_scalars_mp_noerror_>
  654ddb:	0f 85 e0 14 00 00    	jne    6562c1 <step3d_t_mod_mp_step3d_t_tile_+0x2101>
  654de1:	bf bc 55 ab 00       	mov    edi,0xab55bc
  654de6:	33 c0                	xor    eax,eax
  654de8:	e8 33 8b db ff       	call   40d920 <__kmpc_ok_to_fork@plt>
  654ded:	85 c0                	test   eax,eax
  654def:	0f 84 0b 01 00 00    	je     654f00 <step3d_t_mod_mp_step3d_t_tile_+0xd40>
  654df5:	48 81 c4 40 ff ff ff 	add    rsp,0xffffffffffffff40
  654dfc:	4c 8d 95 78 f9 ff ff 	lea    r10,[rbp-0x688]
  654e03:	ba f0 62 65 00       	mov    edx,0x6562f0
  654e08:	4d 8d 5a 08          	lea    r11,[r10+0x8]
  654e0c:	48 8d b3 98 00 00 00 	lea    rsi,[rbx+0x98]
  654e13:	48 8d 7e 08          	lea    rdi,[rsi+0x8]
  654e17:	4c 89 14 24          	mov    QWORD PTR [rsp],r10
  654e1b:	48 8d 4b 60          	lea    rcx,[rbx+0x60]
  654e1f:	4c 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],r11
  654e24:	4c 8d 43 68          	lea    r8,[rbx+0x68]
  654e28:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  654e2d:	49 8d 42 04          	lea    rax,[r10+0x4]
  654e31:	48 89 7c 24 18       	mov    QWORD PTR [rsp+0x18],rdi
  654e36:	4c 8d 48 08          	lea    r9,[rax+0x8]
  654e3a:	48 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],rcx
  654e3f:	4c 8d 53 40          	lea    r10,[rbx+0x40]
  654e43:	4c 89 44 24 28       	mov    QWORD PTR [rsp+0x28],r8
  654e48:	4c 8d 59 28          	lea    r11,[rcx+0x28]
  654e4c:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  654e51:	48 8d 71 30          	lea    rsi,[rcx+0x30]
  654e55:	4c 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],r9
  654e5a:	48 8d 7b 70          	lea    rdi,[rbx+0x70]
  654e5e:	4c 89 54 24 40       	mov    QWORD PTR [rsp+0x40],r10
  654e63:	48 8d 48 b0          	lea    rcx,[rax-0x50]
  654e67:	4c 89 5c 24 48       	mov    QWORD PTR [rsp+0x48],r11
  654e6c:	4c 8d 40 dc          	lea    r8,[rax-0x24]
  654e70:	4c 8d 5c 24 50       	lea    r11,[rsp+0x50]
  654e75:	49 89 33             	mov    QWORD PTR [r11],rsi
  654e78:	48 8d 40 f4          	lea    rax,[rax-0xc]
  654e7c:	49 89 7b 08          	mov    QWORD PTR [r11+0x8],rdi
  654e80:	4c 8d 48 44          	lea    r9,[rax+0x44]
  654e84:	49 89 4b 10          	mov    QWORD PTR [r11+0x10],rcx
  654e88:	48 8d 70 f8          	lea    rsi,[rax-0x8]
  654e8c:	4d 89 43 18          	mov    QWORD PTR [r11+0x18],r8
  654e90:	48 8d 78 fc          	lea    rdi,[rax-0x4]
  654e94:	49 89 43 20          	mov    QWORD PTR [r11+0x20],rax
  654e98:	48 8d 49 9c          	lea    rcx,[rcx-0x64]
  654e9c:	4d 89 4b 28          	mov    QWORD PTR [r11+0x28],r9
  654ea0:	4c 8d 41 a0          	lea    r8,[rcx-0x60]
  654ea4:	4c 8d 8c 24 80 00 00 	lea    r9,[rsp+0x80]
  654eab:	00 
  654eac:	4d 89 39             	mov    QWORD PTR [r9],r15
  654eaf:	4c 8d 78 f4          	lea    r15,[rax-0xc]
  654eb3:	4d 89 79 08          	mov    QWORD PTR [r9+0x8],r15
  654eb7:	49 8d 40 a0          	lea    rax,[r8-0x60]
  654ebb:	49 89 71 10          	mov    QWORD PTR [r9+0x10],rsi
  654ebf:	4c 8d 48 a0          	lea    r9,[rax-0x60]
  654ec3:	49 89 7b 48          	mov    QWORD PTR [r11+0x48],rdi
  654ec7:	bf bc 55 ab 00       	mov    edi,0xab55bc
  654ecc:	49 89 4b 50          	mov    QWORD PTR [r11+0x50],rcx
  654ed0:	be 1b 00 00 00       	mov    esi,0x1b
  654ed5:	4d 89 43 58          	mov    QWORD PTR [r11+0x58],r8
  654ed9:	49 8d 4f 24          	lea    rcx,[r15+0x24]
  654edd:	49 89 43 60          	mov    QWORD PTR [r11+0x60],rax
  654ee1:	4c 8d 41 04          	lea    r8,[rcx+0x4]
  654ee5:	4d 89 4b 68          	mov    QWORD PTR [r11+0x68],r9
  654ee9:	4c 8d 49 30          	lea    r9,[rcx+0x30]
  654eed:	33 c0                	xor    eax,eax
  654eef:	e8 7c 88 db ff       	call   40d770 <__kmpc_fork_call@plt>
  654ef4:	48 81 c4 c0 00 00 00 	add    rsp,0xc0
  654efb:	e9 2a 01 00 00       	jmp    65502a <step3d_t_mod_mp_step3d_t_tile_+0xe6a>
  654f00:	bf bc 55 ab 00       	mov    edi,0xab55bc
  654f05:	33 c0                	xor    eax,eax
  654f07:	8b b5 b0 f9 ff ff    	mov    esi,DWORD PTR [rbp-0x650]
  654f0d:	e8 fe 89 db ff       	call   40d910 <__kmpc_serialized_parallel@plt>
  654f12:	48 81 c4 40 ff ff ff 	add    rsp,0xffffffffffffff40
  654f19:	48 8d 85 80 f9 ff ff 	lea    rax,[rbp-0x680]
  654f20:	be 6c 11 be 00       	mov    esi,0xbe116c
  654f25:	4c 8d 93 98 00 00 00 	lea    r10,[rbx+0x98]
  654f2c:	4d 8d 5a 08          	lea    r11,[r10+0x8]
  654f30:	48 8d 53 60          	lea    rdx,[rbx+0x60]
  654f34:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  654f38:	48 8d 4b 68          	lea    rcx,[rbx+0x68]
  654f3c:	4c 89 54 24 08       	mov    QWORD PTR [rsp+0x8],r10
  654f41:	4c 8d 40 fc          	lea    r8,[rax-0x4]
  654f45:	4c 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],r11
  654f4a:	48 8d 40 04          	lea    rax,[rax+0x4]
  654f4e:	48 89 54 24 18       	mov    QWORD PTR [rsp+0x18],rdx
  654f53:	4c 8d 4b 40          	lea    r9,[rbx+0x40]
  654f57:	48 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],rcx
  654f5c:	4c 8d 52 28          	lea    r10,[rdx+0x28]
  654f60:	4c 89 44 24 28       	mov    QWORD PTR [rsp+0x28],r8
  654f65:	4c 8d 5a 30          	lea    r11,[rdx+0x30]
  654f69:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  654f6e:	48 8d 53 70          	lea    rdx,[rbx+0x70]
  654f72:	4c 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],r9
  654f77:	48 8d 48 a8          	lea    rcx,[rax-0x58]
  654f7b:	4c 89 54 24 40       	mov    QWORD PTR [rsp+0x40],r10
  654f80:	4c 8d 40 d4          	lea    r8,[rax-0x2c]
  654f84:	4c 89 5c 24 48       	mov    QWORD PTR [rsp+0x48],r11
  654f89:	48 8d 40 ec          	lea    rax,[rax-0x14]
  654f8d:	48 89 54 24 50       	mov    QWORD PTR [rsp+0x50],rdx
  654f92:	4c 8d 48 44          	lea    r9,[rax+0x44]
  654f96:	48 89 4c 24 58       	mov    QWORD PTR [rsp+0x58],rcx
  654f9b:	48 8d 50 f8          	lea    rdx,[rax-0x8]
  654f9f:	4c 89 44 24 60       	mov    QWORD PTR [rsp+0x60],r8
  654fa4:	48 8d 48 fc          	lea    rcx,[rax-0x4]
  654fa8:	48 89 44 24 68       	mov    QWORD PTR [rsp+0x68],rax
  654fad:	4c 8d 85 c8 f8 ff ff 	lea    r8,[rbp-0x738]
  654fb4:	4c 89 4c 24 70       	mov    QWORD PTR [rsp+0x70],r9
  654fb9:	49 8d 40 a0          	lea    rax,[r8-0x60]
  654fbd:	4c 89 7c 24 78       	mov    QWORD PTR [rsp+0x78],r15
  654fc2:	4c 8d 7a fc          	lea    r15,[rdx-0x4]
  654fc6:	4c 89 bc 24 80 00 00 	mov    QWORD PTR [rsp+0x80],r15
  654fcd:	00 
  654fce:	4c 8d 48 a0          	lea    r9,[rax-0x60]
  654fd2:	4c 8d bc 24 88 00 00 	lea    r15,[rsp+0x88]
  654fd9:	00 
  654fda:	49 89 17             	mov    QWORD PTR [r15],rdx
  654fdd:	48 8d 7a 48          	lea    rdi,[rdx+0x48]
  654fe1:	49 89 4f 08          	mov    QWORD PTR [r15+0x8],rcx
  654fe5:	48 8d 52 20          	lea    rdx,[rdx+0x20]
  654fe9:	4d 89 47 10          	mov    QWORD PTR [r15+0x10],r8
  654fed:	48 8d 4a 04          	lea    rcx,[rdx+0x4]
  654ff1:	49 89 47 18          	mov    QWORD PTR [r15+0x18],rax
  654ff5:	4c 8d 42 30          	lea    r8,[rdx+0x30]
  654ff9:	4d 89 4f 20          	mov    QWORD PTR [r15+0x20],r9
  654ffd:	4c 8d 4a f0          	lea    r9,[rdx-0x10]
  655001:	4c 8d 95 a8 f7 ff ff 	lea    r10,[rbp-0x858]
  655008:	4d 89 57 28          	mov    QWORD PTR [r15+0x28],r10
  65500c:	e8 df 12 00 00       	call   6562f0 <step3d_t_mod_mp_step3d_t_tile_+0x2130>
  655011:	48 81 c4 c0 00 00 00 	add    rsp,0xc0
  655018:	bf bc 55 ab 00       	mov    edi,0xab55bc
  65501d:	33 c0                	xor    eax,eax
  65501f:	8b b5 b0 f9 ff ff    	mov    esi,DWORD PTR [rbp-0x650]
  655025:	e8 36 8c db ff       	call   40dc60 <__kmpc_end_serialized_parallel@plt>
  65502a:	48 8b bd b8 f9 ff ff 	mov    rdi,QWORD PTR [rbp-0x648]
  655031:	41 b8 01 00 00 00    	mov    r8d,0x1
  655037:	48 8b 05 e2 56 46 00 	mov    rax,QWORD PTR [rip+0x4656e2]        # aba720 <mod_param_mp_nt_>
  65503e:	c7 85 ec f9 ff ff 00 	mov    DWORD PTR [rbp-0x614],0x0
  655045:	00 00 00 
  655048:	4c 63 1f             	movsxd r11,DWORD PTR [rdi]
  65504b:	c7 85 f0 f9 ff ff 01 	mov    DWORD PTR [rbp-0x610],0x1
  655052:	00 00 00 
  655055:	4c 8b 8b a0 00 00 00 	mov    r9,QWORD PTR [rbx+0xa0]
  65505c:	42 8b 4c 98 fc       	mov    ecx,DWORD PTR [rax+r11*4-0x4]
  655061:	4c 8b 53 40          	mov    r10,QWORD PTR [rbx+0x40]
  655065:	48 8b 15 54 56 46 00 	mov    rdx,QWORD PTR [rip+0x465654]        # aba6c0 <mod_param_mp_n_>
  65506c:	85 c9                	test   ecx,ecx
  65506e:	0f 8e 1c 0f 00 00    	jle    655f90 <step3d_t_mod_mp_step3d_t_tile_+0x1dd0>
  655074:	89 8d 10 f5 ff ff    	mov    DWORD PTR [rbp-0xaf0],ecx
  65507a:	4c 89 a5 88 fa ff ff 	mov    QWORD PTR [rbp-0x578],r12
  655081:	48 8b 0d f8 73 46 00 	mov    rcx,QWORD PTR [rip+0x4673f8]        # abc480 <mod_scalars_mp_ltracerclm_>
  655088:	48 8b 35 41 74 46 00 	mov    rsi,QWORD PTR [rip+0x467441]        # abc4d0 <mod_scalars_mp_ltracerclm_+0x50>
  65508f:	48 2b ce             	sub    rcx,rsi
  655092:	49 0f af f3          	imul   rsi,r11
  655096:	4d 63 c0             	movsxd r8,r8d
  655099:	4e 8d 24 81          	lea    r12,[rcx+r8*4]
  65509d:	42 f6 44 26 fc 01    	test   BYTE PTR [rsi+r12*1-0x4],0x1
  6550a3:	74 27                	je     6550cc <step3d_t_mod_mp_step3d_t_tile_+0xf0c>
  6550a5:	48 8b 35 84 7b 46 00 	mov    rsi,QWORD PTR [rip+0x467b84]        # abcc30 <mod_scalars_mp_lnudgetclm_+0x50>
  6550ac:	48 8b 0d 2d 7b 46 00 	mov    rcx,QWORD PTR [rip+0x467b2d]        # abcbe0 <mod_scalars_mp_lnudgetclm_>
  6550b3:	48 2b ce             	sub    rcx,rsi
  6550b6:	49 0f af f3          	imul   rsi,r11
  6550ba:	4e 8d 04 81          	lea    r8,[rcx+r8*4]
  6550be:	42 f6 44 06 fc 01    	test   BYTE PTR [rsi+r8*1-0x4],0x1
  6550c4:	74 06                	je     6550cc <step3d_t_mod_mp_step3d_t_tile_+0xf0c>
  6550c6:	ff 85 ec f9 ff ff    	inc    DWORD PTR [rbp-0x614]
  6550cc:	48 83 c4 a0          	add    rsp,0xffffffffffffffa0
  6550d0:	48 8b 0d 29 56 46 00 	mov    rcx,QWORD PTR [rip+0x465629]        # aba700 <mod_param_mp_n_+0x40>
  6550d7:	48 c1 e1 02          	shl    rcx,0x2
  6550db:	48 8b 35 7e 56 46 00 	mov    rsi,QWORD PTR [rip+0x46567e]        # aba760 <mod_param_mp_nt_+0x40>
  6550e2:	48 2b d1             	sub    rdx,rcx
  6550e5:	48 c1 e6 02          	shl    rsi,0x2
  6550e9:	48 2b c6             	sub    rax,rsi
  6550ec:	4c 8b a5 d8 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x628]
  6550f3:	4c 89 24 24          	mov    QWORD PTR [rsp],r12
  6550f7:	4a 8d 14 9a          	lea    rdx,[rdx+r11*4]
  6550fb:	4c 8b bd e0 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x620]
  655102:	4c 89 7c 24 08       	mov    QWORD PTR [rsp+0x8],r15
  655107:	4a 8d 04 98          	lea    rax,[rax+r11*4]
  65510b:	48 89 54 24 10       	mov    QWORD PTR [rsp+0x10],rdx
  655110:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  655115:	4c 8b 5b 10          	mov    r11,QWORD PTR [rbx+0x10]
  655119:	48 8b 43 18          	mov    rax,QWORD PTR [rbx+0x18]
  65511d:	48 8b 53 20          	mov    rdx,QWORD PTR [rbx+0x20]
  655121:	48 8b 4b 28          	mov    rcx,QWORD PTR [rbx+0x28]
  655125:	4c 89 5c 24 20       	mov    QWORD PTR [rsp+0x20],r11
  65512a:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  65512f:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
  655134:	48 8d 95 f0 f9 ff ff 	lea    rdx,[rbp-0x610]
  65513b:	48 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],rcx
  655140:	48 8d 8d ec f9 ff ff 	lea    rcx,[rbp-0x614]
  655147:	48 8b b5 18 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xae8]
  65514e:	48 89 74 24 40       	mov    QWORD PTR [rsp+0x40],rsi
  655153:	4c 89 54 24 48       	mov    QWORD PTR [rsp+0x48],r10
  655158:	4c 89 4c 24 50       	mov    QWORD PTR [rsp+0x50],r9
  65515d:	48 8b 72 d0          	mov    rsi,QWORD PTR [rdx-0x30]
  655161:	4c 8b 42 d8          	mov    r8,QWORD PTR [rdx-0x28]
  655165:	4c 8b 4a e0          	mov    r9,QWORD PTR [rdx-0x20]
  655169:	c5 f8 77             	vzeroupper 
  65516c:	e8 9f 5f ff ff       	call   64b110 <t3dbc_mod_mp_t3dbc_tile_>
  655171:	48 83 c4 60          	add    rsp,0x60
  655175:	48 8b bd b8 f9 ff ff 	mov    rdi,QWORD PTR [rbp-0x648]
  65517c:	48 8b 0d fd 72 46 00 	mov    rcx,QWORD PTR [rip+0x4672fd]        # abc480 <mod_scalars_mp_ltracerclm_>
  655183:	48 8b 05 46 73 46 00 	mov    rax,QWORD PTR [rip+0x467346]        # abc4d0 <mod_scalars_mp_ltracerclm_+0x50>
  65518a:	48 2b c8             	sub    rcx,rax
  65518d:	4c 63 1f             	movsxd r11,DWORD PTR [rdi]
  655190:	49 0f af c3          	imul   rax,r11
  655194:	48 03 c8             	add    rcx,rax
  655197:	4c 63 85 f0 f9 ff ff 	movsxd r8,DWORD PTR [rbp-0x610]
  65519e:	48 8b 15 1b 55 46 00 	mov    rdx,QWORD PTR [rip+0x46551b]        # aba6c0 <mod_param_mp_n_>
  6551a5:	42 f6 44 81 fc 01    	test   BYTE PTR [rcx+r8*4-0x4],0x1
  6551ab:	0f 84 ad 06 00 00    	je     65585e <step3d_t_mod_mp_step3d_t_tile_+0x169e>
  6551b1:	48 8b 05 28 7a 46 00 	mov    rax,QWORD PTR [rip+0x467a28]        # abcbe0 <mod_scalars_mp_lnudgetclm_>
  6551b8:	48 8b 35 71 7a 46 00 	mov    rsi,QWORD PTR [rip+0x467a71]        # abcc30 <mod_scalars_mp_lnudgetclm_+0x50>
  6551bf:	48 2b c6             	sub    rax,rsi
  6551c2:	49 0f af f3          	imul   rsi,r11
  6551c6:	48 03 c6             	add    rax,rsi
  6551c9:	4a 8d 34 9d 00 00 00 	lea    rsi,[r11*4+0x0]
  6551d0:	00 
  6551d1:	4c 8b 8b a0 00 00 00 	mov    r9,QWORD PTR [rbx+0xa0]
  6551d8:	4c 8b 53 40          	mov    r10,QWORD PTR [rbx+0x40]
  6551dc:	42 f6 44 80 fc 01    	test   BYTE PTR [rax+r8*4-0x4],0x1
  6551e2:	48 63 44 32 fc       	movsxd rax,DWORD PTR [rdx+rsi*1-0x4]
  6551e7:	0f 84 89 06 00 00    	je     655876 <step3d_t_mod_mp_step3d_t_tile_+0x16b6>
  6551ed:	48 85 c0             	test   rax,rax
  6551f0:	0f 8e 21 0c 00 00    	jle    655e17 <step3d_t_mod_mp_step3d_t_tile_+0x1c57>
  6551f6:	4c 89 b5 88 f5 ff ff 	mov    QWORD PTR [rbp-0xa78],r14
  6551fd:	4c 89 b5 30 f5 ff ff 	mov    QWORD PTR [rbp-0xad0],r14
  655204:	4c 8b b5 88 fa ff ff 	mov    r14,QWORD PTR [rbp-0x578]
  65520b:	4c 89 ad 58 fa ff ff 	mov    QWORD PTR [rbp-0x5a8],r13
  655212:	4d 2b ee             	sub    r13,r14
  655215:	49 8b 89 98 00 00 00 	mov    rcx,QWORD PTR [r9+0x98]
  65521c:	49 ff c5             	inc    r13
  65521f:	4c 89 85 e8 f4 ff ff 	mov    QWORD PTR [rbp-0xb18],r8
  655226:	4c 89 ad 08 fa ff ff 	mov    QWORD PTR [rbp-0x5f8],r13
  65522d:	4d 89 f5             	mov    r13,r14
  655230:	4c 0f af c1          	imul   r8,rcx
  655234:	4d 8b 61 50          	mov    r12,QWORD PTR [r9+0x50]
  655238:	4d 0f af ec          	imul   r13,r12
  65523c:	4c 63 bd 84 f9 ff ff 	movsxd r15,DWORD PTR [rbp-0x67c]
  655243:	4c 89 bd 00 fa ff ff 	mov    QWORD PTR [rbp-0x600],r15
  65524a:	4c 63 bd ec f9 ff ff 	movsxd r15,DWORD PTR [rbp-0x614]
  655251:	4c 89 bd 80 f5 ff ff 	mov    QWORD PTR [rbp-0xa80],r15
  655258:	4c 8b 3d e1 48 46 00 	mov    r15,QWORD PTR [rip+0x4648e1]        # ab9b40 <mod_scalars_mp_dt_>
  65525f:	4c 89 bd 78 f5 ff ff 	mov    QWORD PTR [rbp-0xa88],r15
  655266:	4c 8b 3d b3 ff 46 00 	mov    r15,QWORD PTR [rip+0x46ffb3]        # ac5220 <mod_clima_mp_clima_>
  65526d:	48 89 95 f8 f4 ff ff 	mov    QWORD PTR [rbp-0xb08],rdx
  655274:	48 63 95 7c f9 ff ff 	movsxd rdx,DWORD PTR [rbp-0x684]
  65527b:	48 89 bd f0 f4 ff ff 	mov    QWORD PTR [rbp-0xb10],rdi
  655282:	49 89 d6             	mov    r14,rdx
  655285:	49 8b 39             	mov    rdi,QWORD PTR [r9]
  655288:	4c 89 bd 38 f5 ff ff 	mov    QWORD PTR [rbp-0xac8],r15
  65528f:	4c 63 bd e8 f9 ff ff 	movsxd r15,DWORD PTR [rbp-0x618]
  655296:	4c 89 a5 10 fa ff ff 	mov    QWORD PTR [rbp-0x5f0],r12
  65529d:	4d 0f af e7          	imul   r12,r15
  6552a1:	4c 63 bd b4 f9 ff ff 	movsxd r15,DWORD PTR [rbp-0x64c]
  6552a8:	48 89 b5 e0 f4 ff ff 	mov    QWORD PTR [rbp-0xb20],rsi
  6552af:	4d 2b f7             	sub    r14,r15
  6552b2:	48 89 85 50 fa ff ff 	mov    QWORD PTR [rbp-0x5b0],rax
  6552b9:	4c 89 8d 08 f5 ff ff 	mov    QWORD PTR [rbp-0xaf8],r9
  6552c0:	49 8b b1 80 00 00 00 	mov    rsi,QWORD PTR [r9+0x80]
  6552c7:	49 8b 41 68          	mov    rax,QWORD PTR [r9+0x68]
  6552cb:	4d 8b 49 38          	mov    r9,QWORD PTR [r9+0x38]
  6552cf:	4c 89 8d 90 f5 ff ff 	mov    QWORD PTR [rbp-0xa70],r9
  6552d6:	4d 0f af f1          	imul   r14,r9
  6552da:	4c 89 95 00 f5 ff ff 	mov    QWORD PTR [rbp-0xb00],r10
  6552e1:	4e 8d 0c 07          	lea    r9,[rdi+r8*1]
  6552e5:	4c 2b c1             	sub    r8,rcx
  6552e8:	48 03 ce             	add    rcx,rsi
  6552eb:	4d 63 12             	movsxd r10,DWORD PTR [r10]
  6552ee:	48 8d 3c d7          	lea    rdi,[rdi+rdx*8]
  6552f2:	4c 0f af d6          	imul   r10,rsi
  6552f6:	4c 2b c9             	sub    r9,rcx
  6552f9:	48 03 f0             	add    rsi,rax
  6552fc:	4c 89 e9             	mov    rcx,r13
  6552ff:	4c 03 e8             	add    r13,rax
  655302:	49 03 f8             	add    rdi,r8
  655305:	49 2b f5             	sub    rsi,r13
  655308:	48 2b fe             	sub    rdi,rsi
  65530b:	48 f7 d9             	neg    rcx
  65530e:	49 69 f3 38 07 00 00 	imul   rsi,r11,0x738
  655315:	4c 2b c9             	sub    r9,rcx
  655318:	4d 2b cc             	sub    r9,r12
  65531b:	48 89 85 d8 f4 ff ff 	mov    QWORD PTR [rbp-0xb28],rax
  655322:	4b 8d 04 fc          	lea    rax,[r12+r15*8]
  655326:	48 63 8d 84 f9 ff ff 	movsxd rcx,DWORD PTR [rbp-0x67c]
  65532d:	4d 03 ca             	add    r9,r10
  655330:	48 2b ca             	sub    rcx,rdx
  655333:	48 2b f8             	sub    rdi,rax
  655336:	4c 63 a5 e8 f9 ff ff 	movsxd r12,DWORD PTR [rbp-0x618]
  65533d:	4d 03 f1             	add    r14,r9
  655340:	48 ff c1             	inc    rcx
  655343:	4c 03 d7             	add    r10,rdi
  655346:	48 8d bd d0 f4 ff ff 	lea    rdi,[rbp-0xb30]
  65534d:	4c 89 37             	mov    QWORD PTR [rdi],r14
  655350:	4c 8d b5 90 f4 ff ff 	lea    r14,[rbp-0xb70]
  655357:	49 89 36             	mov    QWORD PTR [r14],rsi
  65535a:	48 89 95 18 fa ff ff 	mov    QWORD PTR [rbp-0x5e8],rdx
  655361:	48 c1 e2 03          	shl    rdx,0x3
  655365:	4c 89 95 c0 f4 ff ff 	mov    QWORD PTR [rbp-0xb40],r10
  65536c:	48 89 95 70 f5 ff ff 	mov    QWORD PTR [rbp-0xa90],rdx
  655373:	48 89 8d 20 f5 ff ff 	mov    QWORD PTR [rbp-0xae0],rcx
  65537a:	4c 89 a5 b0 f4 ff ff 	mov    QWORD PTR [rbp-0xb50],r12
  655381:	4c 89 9d 28 f5 ff ff 	mov    QWORD PTR [rbp-0xad8],r11
  655388:	48 8b 85 50 fa ff ff 	mov    rax,QWORD PTR [rbp-0x5b0]
  65538f:	48 8b 95 f8 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xb08]
  655396:	4c 8b ad 58 fa ff ff 	mov    r13,QWORD PTR [rbp-0x5a8]
  65539d:	4c 8b 85 88 f5 ff ff 	mov    r8,QWORD PTR [rbp-0xa78]
  6553a4:	4c 8b 95 30 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xad0]
  6553ab:	49 8b 0e             	mov    rcx,QWORD PTR [r14]
  6553ae:	4c 8b 1f             	mov    r11,QWORD PTR [rdi]
  6553b1:	48 8b b5 38 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xac8]
  6553b8:	4c 8b a5 d8 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb28]
  6553bf:	4c 8b b5 88 fa ff ff 	mov    r14,QWORD PTR [rbp-0x578]
  6553c6:	4c 89 bd b8 f4 ff ff 	mov    QWORD PTR [rbp-0xb48],r15
  6553cd:	48 83 bd 90 f5 ff ff 	cmp    QWORD PTR [rbp-0xa70],0x8
  6553d4:	08 
  6553d5:	0f 85 ca 01 00 00    	jne    6555a5 <step3d_t_mod_mp_step3d_t_tile_+0x13e5>
  6553db:	48 83 7c 0e a8 08    	cmp    QWORD PTR [rsi+rcx*1-0x58],0x8
  6553e1:	0f 85 be 01 00 00    	jne    6555a5 <step3d_t_mod_mp_step3d_t_tile_+0x13e5>
  6553e7:	48 83 bc 0e 98 fd ff 	cmp    QWORD PTR [rsi+rcx*1-0x268],0x8
  6553ee:	ff 08 
  6553f0:	0f 85 af 01 00 00    	jne    6555a5 <step3d_t_mod_mp_step3d_t_tile_+0x13e5>
  6553f6:	49 ff c2             	inc    r10
  6553f9:	33 ff                	xor    edi,edi
  6553fb:	4d 3b ee             	cmp    r13,r14
  6553fe:	0f 8c 8c 68 00 00    	jl     65bc90 <step3d_t_mod_mp_step3d_t_tile_+0x7ad0>
  655404:	48 89 85 50 fa ff ff 	mov    QWORD PTR [rbp-0x5b0],rax
  65540b:	4f 8d 0c 04          	lea    r9,[r12+r8*1]
  65540f:	4c 03 85 c0 f4 ff ff 	add    r8,QWORD PTR [rbp-0xb40]
  655416:	4c 89 8d c8 f4 ff ff 	mov    QWORD PTR [rbp-0xb38],r9
  65541d:	4c 89 95 30 f5 ff ff 	mov    QWORD PTR [rbp-0xad0],r10
  655424:	4c 89 ad 58 fa ff ff 	mov    QWORD PTR [rbp-0x5a8],r13
  65542b:	4c 89 b5 88 fa ff ff 	mov    QWORD PTR [rbp-0x578],r14
  655432:	48 8b 85 00 fa ff ff 	mov    rax,QWORD PTR [rbp-0x600]
  655439:	48 c7 85 a8 f5 ff ff 	mov    QWORD PTR [rbp-0xa58],0x0
  655440:	00 00 00 00 
  655444:	48 3b 85 18 fa ff ff 	cmp    rax,QWORD PTR [rbp-0x5e8]
  65544b:	0f 8c 38 01 00 00    	jl     655589 <step3d_t_mod_mp_step3d_t_tile_+0x13c9>
  655451:	48 8b 85 28 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xad8]
  655458:	48 8b 95 78 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xa88]
  65545f:	4c 8b 74 0e f8       	mov    r14,QWORD PTR [rsi+rcx*1-0x8]
  655464:	4c 8b 9c 0e e8 fd ff 	mov    r11,QWORD PTR [rsi+rcx*1-0x218]
  65546b:	ff 
  65546c:	49 f7 de             	neg    r14
  65546f:	49 f7 db             	neg    r11
  655472:	c5 fb 10 44 c2 f8    	vmovsd xmm0,QWORD PTR [rdx+rax*8-0x8]
  655478:	48 8b 85 80 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xa80]
  65547f:	4c 03 f0             	add    r14,rax
  655482:	48 8b 54 0e e0       	mov    rdx,QWORD PTR [rsi+rcx*1-0x20]
  655487:	4c 03 d8             	add    r11,rax
  65548a:	48 8b 84 0e d0 fd ff 	mov    rax,QWORD PTR [rsi+rcx*1-0x230]
  655491:	ff 
  655492:	48 f7 da             	neg    rdx
  655495:	48 f7 d8             	neg    rax
  655498:	4c 8b 8d 30 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xad0]
  65549f:	49 03 d1             	add    rdx,r9
  6554a2:	4c 8b 54 0e b0       	mov    r10,QWORD PTR [rsi+rcx*1-0x50]
  6554a7:	49 03 c1             	add    rax,r9
  6554aa:	4c 8b 8c 0e a0 fd ff 	mov    r9,QWORD PTR [rsi+rcx*1-0x260]
  6554b1:	ff 
  6554b2:	49 c1 e2 03          	shl    r10,0x3
  6554b6:	49 c1 e1 03          	shl    r9,0x3
  6554ba:	4c 8b ad 70 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xa90]
  6554c1:	4d 2b d5             	sub    r10,r13
  6554c4:	4d 2b cd             	sub    r9,r13
  6554c7:	4c 8b ad 88 fa ff ff 	mov    r13,QWORD PTR [rbp-0x578]
  6554ce:	4c 89 85 88 f5 ff ff 	mov    QWORD PTR [rbp-0xa78],r8
  6554d5:	4c 8b bc 0e 70 ff ff 	mov    r15,QWORD PTR [rsi+rcx*1-0x90]
  6554dc:	ff 
  6554dd:	4c 8b 64 0e c8       	mov    r12,QWORD PTR [rsi+rcx*1-0x38]
  6554e2:	4d 2b fa             	sub    r15,r10
  6554e5:	4c 8b 94 0e 60 fd ff 	mov    r10,QWORD PTR [rsi+rcx*1-0x2a0]
  6554ec:	ff 
  6554ed:	49 f7 dc             	neg    r12
  6554f0:	4c 8b 84 0e b8 fd ff 	mov    r8,QWORD PTR [rsi+rcx*1-0x248]
  6554f7:	ff 
  6554f8:	4d 2b d1             	sub    r10,r9
  6554fb:	49 f7 d8             	neg    r8
  6554fe:	4d 8d 4c 3d 00       	lea    r9,[r13+rdi*1+0x0]
  655503:	4d 03 e1             	add    r12,r9
  655506:	4d 03 c1             	add    r8,r9
  655509:	4c 0f af 84 0e b0 fd 	imul   r8,QWORD PTR [rsi+rcx*1-0x250]
  655510:	ff ff 
  655512:	4c 0f af 64 0e c0    	imul   r12,QWORD PTR [rsi+rcx*1-0x40]
  655518:	4c 0f af 74 0e f0    	imul   r14,QWORD PTR [rsi+rcx*1-0x10]
  65551e:	4c 0f af 9c 0e e0 fd 	imul   r11,QWORD PTR [rsi+rcx*1-0x220]
  655525:	ff ff 
  655527:	48 0f af 84 0e c8 fd 	imul   rax,QWORD PTR [rsi+rcx*1-0x238]
  65552e:	ff ff 
  655530:	48 0f af 54 0e d8    	imul   rdx,QWORD PTR [rsi+rcx*1-0x28]
  655536:	4d 03 e7             	add    r12,r15
  655539:	4d 03 c2             	add    r8,r10
  65553c:	4d 03 f4             	add    r14,r12
  65553f:	4d 03 d8             	add    r11,r8
  655542:	4c 8b 85 88 f5 ff ff 	mov    r8,QWORD PTR [rbp-0xa78]
  655549:	49 03 d6             	add    rdx,r14
  65554c:	4c 8b 8d a8 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xa58]
  655553:	49 03 c3             	add    rax,r11
  655556:	4c 8b 95 20 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xae0]
  65555d:	c4 81 7b 10 24 c8    	vmovsd xmm4,QWORD PTR [r8+r9*8]
  655563:	c4 a1 7b 10 0c c8    	vmovsd xmm1,QWORD PTR [rax+r9*8]
  655569:	c4 a1 7b 59 14 ca    	vmulsd xmm2,xmm0,QWORD PTR [rdx+r9*8]
  65556f:	c5 f3 5c dc          	vsubsd xmm3,xmm1,xmm4
  655573:	c5 eb 59 eb          	vmulsd xmm5,xmm2,xmm3
  655577:	c5 db 58 f5          	vaddsd xmm6,xmm4,xmm5
  65557b:	c4 81 7b 11 34 c8    	vmovsd QWORD PTR [r8+r9*8],xmm6
  655581:	49 ff c1             	inc    r9
  655584:	4d 3b ca             	cmp    r9,r10
  655587:	72 d4                	jb     65555d <step3d_t_mod_mp_step3d_t_tile_+0x139d>
  655589:	48 ff c7             	inc    rdi
  65558c:	4c 03 85 10 fa ff ff 	add    r8,QWORD PTR [rbp-0x5f0]
  655593:	48 3b bd 08 fa ff ff 	cmp    rdi,QWORD PTR [rbp-0x5f8]
  65559a:	0f 82 92 fe ff ff    	jb     655432 <step3d_t_mod_mp_step3d_t_tile_+0x1272>
  6555a0:	e9 31 02 00 00       	jmp    6557d6 <step3d_t_mod_mp_step3d_t_tile_+0x1616>
  6555a5:	33 d2                	xor    edx,edx
  6555a7:	49 ff c2             	inc    r10
  6555aa:	33 ff                	xor    edi,edi
  6555ac:	4d 3b ee             	cmp    r13,r14
  6555af:	0f 8c db 66 00 00    	jl     65bc90 <step3d_t_mod_mp_step3d_t_tile_+0x7ad0>
  6555b5:	48 89 85 50 fa ff ff 	mov    QWORD PTR [rbp-0x5b0],rax
  6555bc:	4f 8d 3c 03          	lea    r15,[r11+r8*1]
  6555c0:	4c 89 bd 40 f5 ff ff 	mov    QWORD PTR [rbp-0xac0],r15
  6555c7:	4f 8d 0c 04          	lea    r9,[r12+r8*1]
  6555cb:	4c 89 8d c8 f4 ff ff 	mov    QWORD PTR [rbp-0xb38],r9
  6555d2:	4c 89 95 30 f5 ff ff 	mov    QWORD PTR [rbp-0xad0],r10
  6555d9:	4c 89 ad 58 fa ff ff 	mov    QWORD PTR [rbp-0x5a8],r13
  6555e0:	4c 89 b5 88 fa ff ff 	mov    QWORD PTR [rbp-0x578],r14
  6555e7:	48 8b 85 18 fa ff ff 	mov    rax,QWORD PTR [rbp-0x5e8]
  6555ee:	48 c7 85 f8 f9 ff ff 	mov    QWORD PTR [rbp-0x608],0x0
  6555f5:	00 00 00 00 
  6555f9:	48 3b 85 00 fa ff ff 	cmp    rax,QWORD PTR [rbp-0x600]
  655600:	0f 8f b9 01 00 00    	jg     6557bf <step3d_t_mod_mp_step3d_t_tile_+0x15ff>
  655606:	4c 8b 85 40 f5 ff ff 	mov    r8,QWORD PTR [rbp-0xac0]
  65560d:	49 89 c2             	mov    r10,rax
  655610:	4d 89 d6             	mov    r14,r10
  655613:	48 89 bd 98 f5 ff ff 	mov    QWORD PTR [rbp-0xa68],rdi
  65561a:	4c 8b 5c 0e b0       	mov    r11,QWORD PTR [rsi+rcx*1-0x50]
  65561f:	4d 8d 0c 38          	lea    r9,[r8+rdi*1]
  655623:	48 8b 7c 0e a8       	mov    rdi,QWORD PTR [rsi+rcx*1-0x58]
  655628:	4c 0f af f7          	imul   r14,rdi
  65562c:	4c 0f af df          	imul   r11,rdi
  655630:	48 89 bd 60 f5 ff ff 	mov    QWORD PTR [rbp-0xaa0],rdi
  655637:	48 8b bc 0e e8 fd ff 	mov    rdi,QWORD PTR [rsi+rcx*1-0x218]
  65563e:	ff 
  65563f:	48 f7 df             	neg    rdi
  655642:	4c 89 b5 50 f5 ff ff 	mov    QWORD PTR [rbp-0xab0],r14
  655649:	4c 8b b4 0e 98 fd ff 	mov    r14,QWORD PTR [rsi+rcx*1-0x268]
  655650:	ff 
  655651:	4d 0f af d6          	imul   r10,r14
  655655:	4c 8b bd 80 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xa80]
  65565c:	49 03 ff             	add    rdi,r15
  65565f:	48 0f af bc 0e e0 fd 	imul   rdi,QWORD PTR [rsi+rcx*1-0x220]
  655666:	ff ff 
  655668:	48 8b 85 28 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xad8]
  65566f:	4c 8b a5 78 f5 ff ff 	mov    r12,QWORD PTR [rbp-0xa88]
  655676:	4c 89 95 58 f5 ff ff 	mov    QWORD PTR [rbp-0xaa8],r10
  65567d:	4c 8b 95 88 fa ff ff 	mov    r10,QWORD PTR [rbp-0x578]
  655684:	c4 c1 7b 10 44 c4 f8 	vmovsd xmm0,QWORD PTR [r12+rax*8-0x8]
  65568b:	4c 8b 64 0e f8       	mov    r12,QWORD PTR [rsi+rcx*1-0x8]
  655690:	48 89 bd a0 f5 ff ff 	mov    QWORD PTR [rbp-0xa60],rdi
  655697:	49 f7 dc             	neg    r12
  65569a:	48 8b 44 0e e0       	mov    rax,QWORD PTR [rsi+rcx*1-0x20]
  65569f:	4d 03 e7             	add    r12,r15
  6556a2:	48 8b bc 0e d0 fd ff 	mov    rdi,QWORD PTR [rsi+rcx*1-0x230]
  6556a9:	ff 
  6556aa:	48 f7 d8             	neg    rax
  6556ad:	48 f7 df             	neg    rdi
  6556b0:	4c 8b bc 0e a0 fd ff 	mov    r15,QWORD PTR [rsi+rcx*1-0x260]
  6556b7:	ff 
  6556b8:	4c 8b ad 30 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xad0]
  6556bf:	49 03 c5             	add    rax,r13
  6556c2:	4c 8b 44 0e c8       	mov    r8,QWORD PTR [rsi+rcx*1-0x38]
  6556c7:	49 03 fd             	add    rdi,r13
  6556ca:	4c 8b ac 0e b8 fd ff 	mov    r13,QWORD PTR [rsi+rcx*1-0x248]
  6556d1:	ff 
  6556d2:	49 f7 d8             	neg    r8
  6556d5:	4c 89 b5 68 f5 ff ff 	mov    QWORD PTR [rbp-0xa98],r14
  6556dc:	49 f7 dd             	neg    r13
  6556df:	4d 0f af fe          	imul   r15,r14
  6556e3:	48 0f af 44 0e d8    	imul   rax,QWORD PTR [rsi+rcx*1-0x28]
  6556e9:	48 0f af bc 0e c8 fd 	imul   rdi,QWORD PTR [rsi+rcx*1-0x238]
  6556f0:	ff ff 
  6556f2:	4c 0f af 64 0e f0    	imul   r12,QWORD PTR [rsi+rcx*1-0x10]
  6556f8:	4c 89 8d 48 f5 ff ff 	mov    QWORD PTR [rbp-0xab8],r9
  6556ff:	4d 8d 34 12          	lea    r14,[r10+rdx*1]
  655703:	4d 03 c6             	add    r8,r14
  655706:	4d 03 ee             	add    r13,r14
  655709:	4c 0f af 44 0e c0    	imul   r8,QWORD PTR [rsi+rcx*1-0x40]
  65570f:	4c 0f af ac 0e b0 fd 	imul   r13,QWORD PTR [rsi+rcx*1-0x250]
  655716:	ff ff 
  655718:	4c 8b 8c 0e 70 ff ff 	mov    r9,QWORD PTR [rsi+rcx*1-0x90]
  65571f:	ff 
  655720:	4d 2b cb             	sub    r9,r11
  655723:	4c 8b 9c 0e 60 fd ff 	mov    r11,QWORD PTR [rsi+rcx*1-0x2a0]
  65572a:	ff 
  65572b:	4d 03 c1             	add    r8,r9
  65572e:	4d 2b df             	sub    r11,r15
  655731:	49 03 c0             	add    rax,r8
  655734:	4d 03 eb             	add    r13,r11
  655737:	4c 03 e0             	add    r12,rax
  65573a:	49 03 fd             	add    rdi,r13
  65573d:	48 8b 85 a0 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xa60]
  655744:	48 8b b5 58 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xaa8]
  65574b:	48 03 c7             	add    rax,rdi
  65574e:	48 8b bd 98 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xa68]
  655755:	4c 8b 85 68 f5 ff ff 	mov    r8,QWORD PTR [rbp-0xa98]
  65575c:	4c 8b 8d 50 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xab0]
  655763:	4c 8b 95 60 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xaa0]
  65576a:	4c 8b 9d 48 f5 ff ff 	mov    r11,QWORD PTR [rbp-0xab8]
  655771:	4c 8b ad f8 f9 ff ff 	mov    r13,QWORD PTR [rbp-0x608]
  655778:	4c 8b b5 20 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xae0]
  65577f:	4c 8b bd 90 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xa70]
  655786:	c4 c1 7b 10 23       	vmovsd xmm4,QWORD PTR [r11]
  65578b:	49 ff c5             	inc    r13
  65578e:	c5 fb 10 0c 06       	vmovsd xmm1,QWORD PTR [rsi+rax*1]
  655793:	49 03 f0             	add    rsi,r8
  655796:	c4 81 7b 59 14 21    	vmulsd xmm2,xmm0,QWORD PTR [r9+r12*1]
  65579c:	c5 f3 5c dc          	vsubsd xmm3,xmm1,xmm4
  6557a0:	c5 eb 59 eb          	vmulsd xmm5,xmm2,xmm3
  6557a4:	4d 03 ca             	add    r9,r10
  6557a7:	c5 db 58 f5          	vaddsd xmm6,xmm4,xmm5
  6557ab:	c4 c1 7b 11 33       	vmovsd QWORD PTR [r11],xmm6
  6557b0:	4d 03 df             	add    r11,r15
  6557b3:	4d 3b ee             	cmp    r13,r14
  6557b6:	72 ce                	jb     655786 <step3d_t_mod_mp_step3d_t_tile_+0x15c6>
  6557b8:	48 8b b5 38 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xac8]
  6557bf:	48 ff c2             	inc    rdx
  6557c2:	48 03 bd 10 fa ff ff 	add    rdi,QWORD PTR [rbp-0x5f0]
  6557c9:	48 3b 95 08 fa ff ff 	cmp    rdx,QWORD PTR [rbp-0x5f8]
  6557d0:	0f 82 11 fe ff ff    	jb     6555e7 <step3d_t_mod_mp_step3d_t_tile_+0x1427>
  6557d6:	48 8b 85 50 fa ff ff 	mov    rax,QWORD PTR [rbp-0x5b0]
  6557dd:	4c 8b 8d c8 f4 ff ff 	mov    r9,QWORD PTR [rbp-0xb38]
  6557e4:	4c 8b 95 30 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xad0]
  6557eb:	4c 8b 9d d0 f4 ff ff 	mov    r11,QWORD PTR [rbp-0xb30]
  6557f2:	4c 8b a5 d8 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb28]
  6557f9:	4c 8b ad 58 fa ff ff 	mov    r13,QWORD PTR [rbp-0x5a8]
  655800:	4c 8b b5 88 fa ff ff 	mov    r14,QWORD PTR [rbp-0x578]
  655807:	4d 89 c8             	mov    r8,r9
  65580a:	4c 3b d0             	cmp    r10,rax
  65580d:	0f 82 ba fb ff ff    	jb     6553cd <step3d_t_mod_mp_step3d_t_tile_+0x120d>
  655813:	4c 89 b5 88 fa ff ff 	mov    QWORD PTR [rbp-0x578],r14
  65581a:	45 33 f6             	xor    r14d,r14d
  65581d:	48 8b b5 e0 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb20]
  655824:	4c 8b a5 b0 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb50]
  65582b:	4c 8b bd b8 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb48]
  655832:	4c 8b 85 e8 f4 ff ff 	mov    r8,QWORD PTR [rbp-0xb18]
  655839:	48 8b bd f0 f4 ff ff 	mov    rdi,QWORD PTR [rbp-0xb10]
  655840:	48 8b 95 f8 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xb08]
  655847:	4c 8b 95 00 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xb00]
  65584e:	4c 8b 8d 08 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xaf8]
  655855:	4c 8b 9d 28 f5 ff ff 	mov    r11,QWORD PTR [rbp-0xad8]
  65585c:	eb 2f                	jmp    65588d <step3d_t_mod_mp_step3d_t_tile_+0x16cd>
  65585e:	4c 8b 8b a0 00 00 00 	mov    r9,QWORD PTR [rbx+0xa0]
  655865:	4a 8d 34 9d 00 00 00 	lea    rsi,[r11*4+0x0]
  65586c:	00 
  65586d:	4c 8b 53 40          	mov    r10,QWORD PTR [rbx+0x40]
  655871:	48 63 44 32 fc       	movsxd rax,DWORD PTR [rdx+rsi*1-0x4]
  655876:	48 85 c0             	test   rax,rax
  655879:	0f 8e 98 05 00 00    	jle    655e17 <step3d_t_mod_mp_step3d_t_tile_+0x1c57>
  65587f:	4c 63 bd b4 f9 ff ff 	movsxd r15,DWORD PTR [rbp-0x64c]
  655886:	4c 63 a5 e8 f9 ff ff 	movsxd r12,DWORD PTR [rbp-0x618]
  65588d:	4c 89 95 00 f5 ff ff 	mov    QWORD PTR [rbp-0xb00],r10
  655894:	48 89 bd f0 f4 ff ff 	mov    QWORD PTR [rbp-0xb10],rdi
  65589b:	49 8b b9 80 00 00 00 	mov    rdi,QWORD PTR [r9+0x80]
  6558a2:	4d 63 12             	movsxd r10,DWORD PTR [r10]
  6558a5:	4c 0f af d7          	imul   r10,rdi
  6558a9:	4c 89 9d 28 f5 ff ff 	mov    QWORD PTR [rbp-0xad8],r11
  6558b0:	48 89 95 f8 f4 ff ff 	mov    QWORD PTR [rbp-0xb08],rdx
  6558b7:	48 89 b5 e0 f4 ff ff 	mov    QWORD PTR [rbp-0xb20],rsi
  6558be:	4c 89 8d 08 f5 ff ff 	mov    QWORD PTR [rbp-0xaf8],r9
  6558c5:	49 8b 11             	mov    rdx,QWORD PTR [r9]
  6558c8:	4d 8b 99 98 00 00 00 	mov    r11,QWORD PTR [r9+0x98]
  6558cf:	49 8b 71 68          	mov    rsi,QWORD PTR [r9+0x68]
  6558d3:	49 8b 49 50          	mov    rcx,QWORD PTR [r9+0x50]
  6558d7:	4d 8b 49 38          	mov    r9,QWORD PTR [r9+0x38]
  6558db:	4c 89 8d 68 fa ff ff 	mov    QWORD PTR [rbp-0x598],r9
  6558e2:	4c 8b 4b 48          	mov    r9,QWORD PTR [rbx+0x48]
  6558e6:	48 89 85 50 fa ff ff 	mov    QWORD PTR [rbp-0x5b0],rax
  6558ed:	8b 85 7c f9 ff ff    	mov    eax,DWORD PTR [rbp-0x684]
  6558f3:	4c 89 95 a0 f4 ff ff 	mov    QWORD PTR [rbp-0xb60],r10
  6558fa:	89 85 f8 fa ff ff    	mov    DWORD PTR [rbp-0x508],eax
  655900:	4d 8b 51 38          	mov    r10,QWORD PTR [r9+0x38]
  655904:	48 98                	cdqe   
  655906:	4c 89 95 60 fa ff ff 	mov    QWORD PTR [rbp-0x5a0],r10
  65590d:	4c 0f af d0          	imul   r10,rax
  655911:	4c 89 bd b8 f4 ff ff 	mov    QWORD PTR [rbp-0xb48],r15
  655918:	4c 89 a5 b0 f4 ff ff 	mov    QWORD PTR [rbp-0xb50],r12
  65591f:	44 8b a5 84 f9 ff ff 	mov    r12d,DWORD PTR [rbp-0x67c]
  655926:	4d 8b 79 50          	mov    r15,QWORD PTR [r9+0x50]
  65592a:	44 89 a5 b8 fa ff ff 	mov    DWORD PTR [rbp-0x548],r12d
  655931:	4c 89 bd d0 fa ff ff 	mov    QWORD PTR [rbp-0x530],r15
  655938:	4d 63 fc             	movsxd r15,r12d
  65593b:	44 2b e0             	sub    r12d,eax
  65593e:	4c 2b f8             	sub    r15,rax
  655941:	41 ff c4             	inc    r12d
  655944:	49 ff c7             	inc    r15
  655947:	4c 89 95 a8 f4 ff ff 	mov    QWORD PTR [rbp-0xb58],r10
  65594e:	4c 8b 95 88 fa ff ff 	mov    r10,QWORD PTR [rbp-0x578]
  655955:	44 89 a5 f0 fa ff ff 	mov    DWORD PTR [rbp-0x510],r12d
  65595c:	4c 89 ad 58 fa ff ff 	mov    QWORD PTR [rbp-0x5a8],r13
  655963:	4d 2b ea             	sub    r13,r10
  655966:	41 d1 ec             	shr    r12d,1
  655969:	49 ff c5             	inc    r13
  65596c:	4c 89 bd 28 fa ff ff 	mov    QWORD PTR [rbp-0x5d8],r15
  655973:	49 89 d7             	mov    r15,rdx
  655976:	44 89 a5 e8 fa ff ff 	mov    DWORD PTR [rbp-0x518],r12d
  65597d:	4c 2b ff             	sub    r15,rdi
  655980:	4c 89 ad e0 fa ff ff 	mov    QWORD PTR [rbp-0x520],r13
  655987:	4c 8d 2c c2          	lea    r13,[rdx+rax*8]
  65598b:	4c 89 a5 a8 fa ff ff 	mov    QWORD PTR [rbp-0x558],r12
  655992:	48 03 fe             	add    rdi,rsi
  655995:	4d 89 d4             	mov    r12,r10
  655998:	4c 2b ef             	sub    r13,rdi
  65599b:	4c 89 b5 80 fa ff ff 	mov    QWORD PTR [rbp-0x580],r14
  6559a2:	4c 89 fa             	mov    rdx,r15
  6559a5:	4c 89 b5 70 fa ff ff 	mov    QWORD PTR [rbp-0x590],r14
  6559ac:	48 2b d6             	sub    rdx,rsi
  6559af:	4d 8b 31             	mov    r14,QWORD PTR [r9]
  6559b2:	4c 8b 8d 68 fa ff ff 	mov    r9,QWORD PTR [rbp-0x598]
  6559b9:	48 8b bd b8 f4 ff ff 	mov    rdi,QWORD PTR [rbp-0xb48]
  6559c0:	4c 89 85 e8 f4 ff ff 	mov    QWORD PTR [rbp-0xb18],r8
  6559c7:	4c 0f af c8          	imul   r9,rax
  6559cb:	4c 0f af e1          	imul   r12,rcx
  6559cf:	4d 0f af c3          	imul   r8,r11
  6559d3:	48 0f af bd 68 fa ff 	imul   rdi,QWORD PTR [rbp-0x598]
  6559da:	ff 
  6559db:	48 89 b5 78 fa ff ff 	mov    QWORD PTR [rbp-0x588],rsi
  6559e2:	49 03 f4             	add    rsi,r12
  6559e5:	4d 03 e1             	add    r12,r9
  6559e8:	4d 2b d8             	sub    r11,r8
  6559eb:	4d 2b e3             	sub    r12,r11
  6559ee:	48 f7 df             	neg    rdi
  6559f1:	48 03 bd a0 f4 ff ff 	add    rdi,QWORD PTR [rbp-0xb60]
  6559f8:	4d 03 fc             	add    r15,r12
  6559fb:	4c 03 ff             	add    r15,rdi
  6559fe:	48 f7 df             	neg    rdi
  655a01:	49 03 fb             	add    rdi,r11
  655a04:	49 f7 db             	neg    r11
  655a07:	4c 03 de             	add    r11,rsi
  655a0a:	49 8d 04 c6          	lea    rax,[r14+rax*8]
  655a0e:	4d 03 eb             	add    r13,r11
  655a11:	4c 8b 9d b0 f4 ff ff 	mov    r11,QWORD PTR [rbp-0xb50]
  655a18:	4d 89 d8             	mov    r8,r11
  655a1b:	4c 0f af c1          	imul   r8,rcx
  655a1f:	48 89 8d d8 fa ff ff 	mov    QWORD PTR [rbp-0x528],rcx
  655a26:	4d 2b f8             	sub    r15,r8
  655a29:	48 8b 8d d0 fa ff ff 	mov    rcx,QWORD PTR [rbp-0x530]
  655a30:	4c 0f af d9          	imul   r11,rcx
  655a34:	4c 0f af d1          	imul   r10,rcx
  655a38:	4c 89 bd 40 fa ff ff 	mov    QWORD PTR [rbp-0x5c0],r15
  655a3f:	49 03 c2             	add    rax,r10
  655a42:	4c 8b bd 68 fa ff ff 	mov    r15,QWORD PTR [rbp-0x598]
  655a49:	4d 03 f2             	add    r14,r10
  655a4c:	49 f7 df             	neg    r15
  655a4f:	4d 03 f9             	add    r15,r9
  655a52:	4c 8d 95 68 fa ff ff 	lea    r10,[rbp-0x598]
  655a59:	4d 03 0a             	add    r9,QWORD PTR [r10]
  655a5c:	4c 03 fe             	add    r15,rsi
  655a5f:	49 03 f1             	add    rsi,r9
  655a62:	4c 03 fa             	add    r15,rdx
  655a65:	48 03 d6             	add    rdx,rsi
  655a68:	4c 2b ff             	sub    r15,rdi
  655a6b:	48 2b d7             	sub    rdx,rdi
  655a6e:	4d 2b f8             	sub    r15,r8
  655a71:	48 8b 8d b8 f4 ff ff 	mov    rcx,QWORD PTR [rbp-0xb48]
  655a78:	49 2b d0             	sub    rdx,r8
  655a7b:	4c 8d 8d 60 fa ff ff 	lea    r9,[rbp-0x5a0]
  655a82:	49 8b 39             	mov    rdi,QWORD PTR [r9]
  655a85:	48 89 95 38 fa ff ff 	mov    QWORD PTR [rbp-0x5c8],rdx
  655a8c:	48 89 ca             	mov    rdx,rcx
  655a8f:	48 0f af d7          	imul   rdx,rdi
  655a93:	4c 8b a5 28 fa ff ff 	mov    r12,QWORD PTR [rbp-0x5d8]
  655a9a:	49 8d 34 cb          	lea    rsi,[r11+rcx*8]
  655a9e:	48 c1 e1 03          	shl    rcx,0x3
  655aa2:	48 2b c6             	sub    rax,rsi
  655aa5:	48 89 85 98 f4 ff ff 	mov    QWORD PTR [rbp-0xb68],rax
  655aac:	49 03 d3             	add    rdx,r11
  655aaf:	48 8b 85 a0 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb60]
  655ab6:	41 83 e4 fc          	and    r12d,0xfffffffc
  655aba:	48 2b c1             	sub    rax,rcx
  655abd:	4c 03 e8             	add    r13,rax
  655ac0:	4d 2b e8             	sub    r13,r8
  655ac3:	4c 8b 85 a8 f4 ff ff 	mov    r8,QWORD PTR [rbp-0xb58]
  655aca:	4d 63 e4             	movsxd r12,r12d
  655acd:	4a 8d 0c 07          	lea    rcx,[rdi+r8*1]
  655ad1:	48 f7 df             	neg    rdi
  655ad4:	4b 8d 34 06          	lea    rsi,[r14+r8*1]
  655ad8:	4c 03 c7             	add    r8,rdi
  655adb:	49 03 ce             	add    rcx,r14
  655ade:	4d 03 f0             	add    r14,r8
  655ae1:	48 2b ca             	sub    rcx,rdx
  655ae4:	48 2b f2             	sub    rsi,rdx
  655ae7:	4c 2b f2             	sub    r14,rdx
  655aea:	4c 89 ad 30 fa ff ff 	mov    QWORD PTR [rbp-0x5d0],r13
  655af1:	48 89 b5 b0 fa ff ff 	mov    QWORD PTR [rbp-0x550],rsi
  655af8:	4c 89 bd 48 fa ff ff 	mov    QWORD PTR [rbp-0x5b8],r15
  655aff:	4c 89 b5 c8 fa ff ff 	mov    QWORD PTR [rbp-0x538],r14
  655b06:	45 33 f6             	xor    r14d,r14d
  655b09:	48 8b 85 50 fa ff ff 	mov    rax,QWORD PTR [rbp-0x5b0]
  655b10:	48 8b 95 f8 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xb08]
  655b17:	4c 8b ad 58 fa ff ff 	mov    r13,QWORD PTR [rbp-0x5a8]
  655b1e:	49 8b 39             	mov    rdi,QWORD PTR [r9]
  655b21:	4d 8b 02             	mov    r8,QWORD PTR [r10]
  655b24:	4c 8b 8d 70 fa ff ff 	mov    r9,QWORD PTR [rbp-0x590]
  655b2b:	4c 8b 95 78 fa ff ff 	mov    r10,QWORD PTR [rbp-0x588]
  655b32:	4c 8b 9d 80 fa ff ff 	mov    r11,QWORD PTR [rbp-0x580]
  655b39:	4c 89 a5 20 fa ff ff 	mov    QWORD PTR [rbp-0x5e0],r12
  655b40:	48 89 8d 90 fa ff ff 	mov    QWORD PTR [rbp-0x570],rcx
  655b47:	49 83 f8 08          	cmp    r8,0x8
  655b4b:	0f 85 0f 01 00 00    	jne    655c60 <step3d_t_mod_mp_step3d_t_tile_+0x1aa0>
  655b51:	48 83 ff 08          	cmp    rdi,0x8
  655b55:	0f 85 05 01 00 00    	jne    655c60 <step3d_t_mod_mp_step3d_t_tile_+0x1aa0>
  655b5b:	48 8b 8d 98 f4 ff ff 	mov    rcx,QWORD PTR [rbp-0xb68]
  655b62:	33 f6                	xor    esi,esi
  655b64:	4c 3b ad 88 fa ff ff 	cmp    r13,QWORD PTR [rbp-0x578]
  655b6b:	0f 8c 63 02 00 00    	jl     655dd4 <step3d_t_mod_mp_step3d_t_tile_+0x1c14>
  655b71:	48 8b 95 30 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x5d0]
  655b78:	4c 89 8d 70 fa ff ff 	mov    QWORD PTR [rbp-0x590],r9
  655b7f:	4c 89 9d 80 fa ff ff 	mov    QWORD PTR [rbp-0x580],r11
  655b86:	48 89 85 50 fa ff ff 	mov    QWORD PTR [rbp-0x5b0],rax
  655b8d:	49 03 d1             	add    rdx,r9
  655b90:	4c 89 ad 58 fa ff ff 	mov    QWORD PTR [rbp-0x5a8],r13
  655b97:	48 8b 85 20 fa ff ff 	mov    rax,QWORD PTR [rbp-0x5e0]
  655b9e:	48 8b bd e0 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x520]
  655ba5:	4c 8b 85 28 fa ff ff 	mov    r8,QWORD PTR [rbp-0x5d8]
  655bac:	4c 8b 8d d0 fa ff ff 	mov    r9,QWORD PTR [rbp-0x530]
  655bb3:	4c 8b 95 d8 fa ff ff 	mov    r10,QWORD PTR [rbp-0x528]
  655bba:	44 8b 9d b8 fa ff ff 	mov    r11d,DWORD PTR [rbp-0x548]
  655bc1:	44 8b a5 f8 fa ff ff 	mov    r12d,DWORD PTR [rbp-0x508]
  655bc8:	45 3b dc             	cmp    r11d,r12d
  655bcb:	7c 4f                	jl     655c1c <step3d_t_mod_mp_step3d_t_tile_+0x1a5c>
  655bcd:	49 83 f8 04          	cmp    r8,0x4
  655bd1:	0f 8c c2 60 00 00    	jl     65bc99 <step3d_t_mod_mp_step3d_t_tile_+0x7ad9>
  655bd7:	49 89 c5             	mov    r13,rax
  655bda:	45 33 ff             	xor    r15d,r15d
  655bdd:	49 89 d6             	mov    r14,rdx
  655be0:	c4 c1 7d 10 06       	vmovupd ymm0,YMMWORD PTR [r14]
  655be5:	c4 a1 7d 59 0c f9    	vmulpd ymm1,ymm0,YMMWORD PTR [rcx+r15*8]
  655beb:	49 83 c7 04          	add    r15,0x4
  655bef:	c4 c1 7d 11 0e       	vmovupd YMMWORD PTR [r14],ymm1
  655bf4:	49 83 c6 20          	add    r14,0x20
  655bf8:	4c 3b f8             	cmp    r15,rax
  655bfb:	72 e3                	jb     655be0 <step3d_t_mod_mp_step3d_t_tile_+0x1a20>
  655bfd:	4d 3b e8             	cmp    r13,r8
  655c00:	73 1a                	jae    655c1c <step3d_t_mod_mp_step3d_t_tile_+0x1a5c>
  655c02:	c4 a1 7b 10 04 ea    	vmovsd xmm0,QWORD PTR [rdx+r13*8]
  655c08:	c4 a1 7b 59 0c e9    	vmulsd xmm1,xmm0,QWORD PTR [rcx+r13*8]
  655c0e:	c4 a1 7b 11 0c ea    	vmovsd QWORD PTR [rdx+r13*8],xmm1
  655c14:	49 ff c5             	inc    r13
  655c17:	4d 3b e8             	cmp    r13,r8
  655c1a:	72 e6                	jb     655c02 <step3d_t_mod_mp_step3d_t_tile_+0x1a42>
  655c1c:	48 ff c6             	inc    rsi
  655c1f:	49 03 d2             	add    rdx,r10
  655c22:	49 03 c9             	add    rcx,r9
  655c25:	48 3b f7             	cmp    rsi,rdi
  655c28:	72 9e                	jb     655bc8 <step3d_t_mod_mp_step3d_t_tile_+0x1a08>
  655c2a:	48 8b bd 60 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x5a0]
  655c31:	4c 8b 85 68 fa ff ff 	mov    r8,QWORD PTR [rbp-0x598]
  655c38:	4c 8b 8d 70 fa ff ff 	mov    r9,QWORD PTR [rbp-0x590]
  655c3f:	4c 8b 95 78 fa ff ff 	mov    r10,QWORD PTR [rbp-0x588]
  655c46:	4c 8b 9d 80 fa ff ff 	mov    r11,QWORD PTR [rbp-0x580]
  655c4d:	48 8b 85 50 fa ff ff 	mov    rax,QWORD PTR [rbp-0x5b0]
  655c54:	4c 8b ad 58 fa ff ff 	mov    r13,QWORD PTR [rbp-0x5a8]
  655c5b:	e9 74 01 00 00       	jmp    655dd4 <step3d_t_mod_mp_step3d_t_tile_+0x1c14>
  655c60:	33 f6                	xor    esi,esi
  655c62:	33 c9                	xor    ecx,ecx
  655c64:	33 d2                	xor    edx,edx
  655c66:	4c 3b ad 88 fa ff ff 	cmp    r13,QWORD PTR [rbp-0x578]
  655c6d:	0f 8c 61 01 00 00    	jl     655dd4 <step3d_t_mod_mp_step3d_t_tile_+0x1c14>
  655c73:	4c 8b bd 40 fa ff ff 	mov    r15,QWORD PTR [rbp-0x5c0]
  655c7a:	4c 8b b5 48 fa ff ff 	mov    r14,QWORD PTR [rbp-0x5b8]
  655c81:	4c 8b a5 38 fa ff ff 	mov    r12,QWORD PTR [rbp-0x5c8]
  655c88:	4c 89 8d 70 fa ff ff 	mov    QWORD PTR [rbp-0x590],r9
  655c8f:	4d 03 f9             	add    r15,r9
  655c92:	4c 89 bd a0 fa ff ff 	mov    QWORD PTR [rbp-0x560],r15
  655c99:	4d 03 f1             	add    r14,r9
  655c9c:	4c 89 b5 c0 fa ff ff 	mov    QWORD PTR [rbp-0x540],r14
  655ca3:	4d 03 e1             	add    r12,r9
  655ca6:	4c 89 a5 98 fa ff ff 	mov    QWORD PTR [rbp-0x568],r12
  655cad:	4c 89 9d 80 fa ff ff 	mov    QWORD PTR [rbp-0x580],r11
  655cb4:	48 89 85 50 fa ff ff 	mov    QWORD PTR [rbp-0x5b0],rax
  655cbb:	4c 89 ad 58 fa ff ff 	mov    QWORD PTR [rbp-0x5a8],r13
  655cc2:	44 8b bd b8 fa ff ff 	mov    r15d,DWORD PTR [rbp-0x548]
  655cc9:	44 3b bd f8 fa ff ff 	cmp    r15d,DWORD PTR [rbp-0x508]
  655cd0:	0f 8c bd 00 00 00    	jl     655d93 <step3d_t_mod_mp_step3d_t_tile_+0x1bd3>
  655cd6:	45 33 ed             	xor    r13d,r13d
  655cd9:	41 b9 01 00 00 00    	mov    r9d,0x1
  655cdf:	45 33 f6             	xor    r14d,r14d
  655ce2:	45 33 e4             	xor    r12d,r12d
  655ce5:	83 bd e8 fa ff ff 00 	cmp    DWORD PTR [rbp-0x518],0x0
  655cec:	74 6d                	je     655d5b <step3d_t_mod_mp_step3d_t_tile_+0x1b9b>
  655cee:	4c 8b 9d 98 fa ff ff 	mov    r11,QWORD PTR [rbp-0x568]
  655cf5:	4c 8b 95 b0 fa ff ff 	mov    r10,QWORD PTR [rbp-0x550]
  655cfc:	4c 8b 8d 90 fa ff ff 	mov    r9,QWORD PTR [rbp-0x570]
  655d03:	48 8b 85 a0 fa ff ff 	mov    rax,QWORD PTR [rbp-0x560]
  655d0a:	4c 03 da             	add    r11,rdx
  655d0d:	4c 8b bd a8 fa ff ff 	mov    r15,QWORD PTR [rbp-0x558]
  655d14:	4c 03 d1             	add    r10,rcx
  655d17:	4c 03 c9             	add    r9,rcx
  655d1a:	48 03 c2             	add    rax,rdx
  655d1d:	c4 a1 7b 10 04 70    	vmovsd xmm0,QWORD PTR [rax+r14*2]
  655d23:	49 ff c5             	inc    r13
  655d26:	c4 81 7b 10 14 73    	vmovsd xmm2,QWORD PTR [r11+r14*2]
  655d2c:	c4 81 7b 59 0c 62    	vmulsd xmm1,xmm0,QWORD PTR [r10+r12*2]
  655d32:	c4 81 6b 59 1c 61    	vmulsd xmm3,xmm2,QWORD PTR [r9+r12*2]
  655d38:	c4 a1 7b 11 0c 70    	vmovsd QWORD PTR [rax+r14*2],xmm1
  655d3e:	4c 03 e7             	add    r12,rdi
  655d41:	c4 81 7b 11 1c 73    	vmovsd QWORD PTR [r11+r14*2],xmm3
  655d47:	4d 03 f0             	add    r14,r8
  655d4a:	4d 3b ef             	cmp    r13,r15
  655d4d:	72 ce                	jb     655d1d <step3d_t_mod_mp_step3d_t_tile_+0x1b5d>
  655d4f:	44 8b bd b8 fa ff ff 	mov    r15d,DWORD PTR [rbp-0x548]
  655d56:	47 8d 4c 2d 01       	lea    r9d,[r13+r13*1+0x1]
  655d5b:	41 8d 41 ff          	lea    eax,[r9-0x1]
  655d5f:	3b 85 f0 fa ff ff    	cmp    eax,DWORD PTR [rbp-0x510]
  655d65:	73 2c                	jae    655d93 <step3d_t_mod_mp_step3d_t_tile_+0x1bd3>
  655d67:	4d 63 c9             	movsxd r9,r9d
  655d6a:	4c 89 c0             	mov    rax,r8
  655d6d:	49 0f af c1          	imul   rax,r9
  655d71:	4c 0f af cf          	imul   r9,rdi
  655d75:	48 03 85 c0 fa ff ff 	add    rax,QWORD PTR [rbp-0x540]
  655d7c:	4c 03 8d c8 fa ff ff 	add    r9,QWORD PTR [rbp-0x538]
  655d83:	c5 fb 10 04 10       	vmovsd xmm0,QWORD PTR [rax+rdx*1]
  655d88:	c4 c1 7b 59 0c 09    	vmulsd xmm1,xmm0,QWORD PTR [r9+rcx*1]
  655d8e:	c5 fb 11 0c 10       	vmovsd QWORD PTR [rax+rdx*1],xmm1
  655d93:	48 ff c6             	inc    rsi
  655d96:	48 03 8d d0 fa ff ff 	add    rcx,QWORD PTR [rbp-0x530]
  655d9d:	48 03 95 d8 fa ff ff 	add    rdx,QWORD PTR [rbp-0x528]
  655da4:	48 3b b5 e0 fa ff ff 	cmp    rsi,QWORD PTR [rbp-0x520]
  655dab:	0f 82 18 ff ff ff    	jb     655cc9 <step3d_t_mod_mp_step3d_t_tile_+0x1b09>
  655db1:	4c 8b 8d 70 fa ff ff 	mov    r9,QWORD PTR [rbp-0x590]
  655db8:	4c 8b 95 78 fa ff ff 	mov    r10,QWORD PTR [rbp-0x588]
  655dbf:	4c 8b 9d 80 fa ff ff 	mov    r11,QWORD PTR [rbp-0x580]
  655dc6:	48 8b 85 50 fa ff ff 	mov    rax,QWORD PTR [rbp-0x5b0]
  655dcd:	4c 8b ad 58 fa ff ff 	mov    r13,QWORD PTR [rbp-0x5a8]
  655dd4:	49 ff c3             	inc    r11
  655dd7:	4d 03 ca             	add    r9,r10
  655dda:	4c 3b d8             	cmp    r11,rax
  655ddd:	0f 82 64 fd ff ff    	jb     655b47 <step3d_t_mod_mp_step3d_t_tile_+0x1987>
  655de3:	48 8b b5 e0 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb20]
  655dea:	45 33 f6             	xor    r14d,r14d
  655ded:	4c 8b 85 e8 f4 ff ff 	mov    r8,QWORD PTR [rbp-0xb18]
  655df4:	48 8b bd f0 f4 ff ff 	mov    rdi,QWORD PTR [rbp-0xb10]
  655dfb:	48 8b 95 f8 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xb08]
  655e02:	4c 8b 95 00 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xb00]
  655e09:	4c 8b 8d 08 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xaf8]
  655e10:	4c 8b 9d 28 f5 ff ff 	mov    r11,QWORD PTR [rbp-0xad8]
  655e17:	48 8b 05 02 5b 46 00 	mov    rax,QWORD PTR [rip+0x465b02]        # abb920 <mod_scalars_mp_ewperiodic_>
  655e1e:	48 8b 0d 5b 5e 46 00 	mov    rcx,QWORD PTR [rip+0x465e5b]        # abbc80 <mod_scalars_mp_nsperiodic_>
  655e25:	44 8b 64 06 fc       	mov    r12d,DWORD PTR [rsi+rax*1-0x4]
  655e2a:	44 0b 64 0e fc       	or     r12d,DWORD PTR [rsi+rcx*1-0x4]
  655e2f:	41 f7 c4 01 00 00 00 	test   r12d,0x1
  655e36:	0f 84 35 01 00 00    	je     655f71 <step3d_t_mod_mp_step3d_t_tile_+0x1db1>
  655e3c:	4d 63 12             	movsxd r10,DWORD PTR [r10]
  655e3f:	49 ff c8             	dec    r8
  655e42:	49 ff ca             	dec    r10
  655e45:	48 83 c4 e0          	add    rsp,0xffffffffffffffe0
  655e49:	4d 0f af 91 80 00 00 	imul   r10,QWORD PTR [r9+0x80]
  655e50:	00 
  655e51:	4d 0f af 81 98 00 00 	imul   r8,QWORD PTR [r9+0x98]
  655e58:	00 
  655e59:	4d 8b 59 30          	mov    r11,QWORD PTR [r9+0x30]
  655e5d:	b8 01 00 00 00       	mov    eax,0x1
  655e62:	4d 85 db             	test   r11,r11
  655e65:	48 89 85 f0 f5 ff ff 	mov    QWORD PTR [rbp-0xa10],rax
  655e6c:	4d 0f 4e de          	cmovle r11,r14
  655e70:	4d 03 11             	add    r10,QWORD PTR [r9]
  655e73:	48 89 85 08 f6 ff ff 	mov    QWORD PTR [rbp-0x9f8],rax
  655e7a:	4d 03 d0             	add    r10,r8
  655e7d:	48 89 85 20 f6 ff ff 	mov    QWORD PTR [rbp-0x9e0],rax
  655e84:	48 89 85 c8 f5 ff ff 	mov    QWORD PTR [rbp-0xa38],rax
  655e8b:	4d 8b 61 48          	mov    r12,QWORD PTR [r9+0x48]
  655e8f:	4d 85 e4             	test   r12,r12
  655e92:	4d 8b 79 60          	mov    r15,QWORD PTR [r9+0x60]
  655e96:	49 8b 41 38          	mov    rax,QWORD PTR [r9+0x38]
  655e9a:	4d 0f 4e e6          	cmovle r12,r14
  655e9e:	49 8b 49 50          	mov    rcx,QWORD PTR [r9+0x50]
  655ea2:	4d 85 ff             	test   r15,r15
  655ea5:	4d 8b 41 68          	mov    r8,QWORD PTR [r9+0x68]
  655ea9:	4c 8b 0d 50 48 46 00 	mov    r9,QWORD PTR [rip+0x464850]        # aba700 <mod_param_mp_n_+0x40>
  655eb0:	4d 0f 4e fe          	cmovle r15,r14
  655eb4:	49 c1 e1 02          	shl    r9,0x2
  655eb8:	49 2b d1             	sub    rdx,r9
  655ebb:	48 c7 04 24 b8 72 84 	mov    QWORD PTR [rsp],0x8472b8
  655ec2:	00 
  655ec3:	48 03 d6             	add    rdx,rsi
  655ec6:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
  655ecb:	48 8d 95 b0 f5 ff ff 	lea    rdx,[rbp-0xa50]
  655ed2:	48 89 54 24 10       	mov    QWORD PTR [rsp+0x10],rdx
  655ed7:	48 89 4a 50          	mov    QWORD PTR [rdx+0x50],rcx
  655edb:	4c 89 42 68          	mov    QWORD PTR [rdx+0x68],r8
  655edf:	48 8b b5 c0 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x640]
  655ee6:	48 8b 95 c8 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x638]
  655eed:	48 8b 8d d0 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x630]
  655ef4:	4c 8b 85 d8 f9 ff ff 	mov    r8,QWORD PTR [rbp-0x628]
  655efb:	4c 8b 8d e0 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x620]
  655f02:	48 c7 85 b8 f5 ff ff 	mov    QWORD PTR [rbp-0xa48],0x8
  655f09:	08 00 00 00 
  655f0d:	48 c7 85 d0 f5 ff ff 	mov    QWORD PTR [rbp-0xa30],0x3
  655f14:	03 00 00 00 
  655f18:	4c 89 b5 c0 f5 ff ff 	mov    QWORD PTR [rbp-0xa40],r14
  655f1f:	4c 89 95 b0 f5 ff ff 	mov    QWORD PTR [rbp-0xa50],r10
  655f26:	4c 89 9d e0 f5 ff ff 	mov    QWORD PTR [rbp-0xa20],r11
  655f2d:	4c 89 a5 f8 f5 ff ff 	mov    QWORD PTR [rbp-0xa08],r12
  655f34:	4c 89 bd 10 f6 ff ff 	mov    QWORD PTR [rbp-0x9f0],r15
  655f3b:	48 89 85 e8 f5 ff ff 	mov    QWORD PTR [rbp-0xa18],rax
  655f42:	c5 f8 77             	vzeroupper 
  655f45:	e8 c6 09 f9 ff       	call   5e6910 <exchange_3d_mod_mp_exchange_r3d_tile_>
  655f4a:	48 83 c4 20          	add    rsp,0x20
  655f4e:	48 8b bd b8 f9 ff ff 	mov    rdi,QWORD PTR [rbp-0x648]
  655f55:	4c 63 85 f0 f9 ff ff 	movsxd r8,DWORD PTR [rbp-0x610]
  655f5c:	4c 8b 8b a0 00 00 00 	mov    r9,QWORD PTR [rbx+0xa0]
  655f63:	4c 63 1f             	movsxd r11,DWORD PTR [rdi]
  655f66:	4c 8b 53 40          	mov    r10,QWORD PTR [rbx+0x40]
  655f6a:	48 8b 15 4f 47 46 00 	mov    rdx,QWORD PTR [rip+0x46474f]        # aba6c0 <mod_param_mp_n_>
  655f71:	41 ff c0             	inc    r8d
  655f74:	44 89 85 f0 f9 ff ff 	mov    DWORD PTR [rbp-0x610],r8d
  655f7b:	44 3b 85 10 f5 ff ff 	cmp    r8d,DWORD PTR [rbp-0xaf0]
  655f82:	7f 0c                	jg     655f90 <step3d_t_mod_mp_step3d_t_tile_+0x1dd0>
  655f84:	48 8b 05 95 47 46 00 	mov    rax,QWORD PTR [rip+0x464795]        # aba720 <mod_param_mp_nt_>
  655f8b:	e9 f1 f0 ff ff       	jmp    655081 <step3d_t_mod_mp_step3d_t_tile_+0xec1>
  655f90:	4d 63 12             	movsxd r10,DWORD PTR [r10]
  655f93:	48 8d 85 90 f4 ff ff 	lea    rax,[rbp-0xb70]
  655f9a:	49 ff ca             	dec    r10
  655f9d:	41 bc 01 00 00 00    	mov    r12d,0x1
  655fa3:	4d 0f af 91 80 00 00 	imul   r10,QWORD PTR [r9+0x80]
  655faa:	00 
  655fab:	41 56                	push   r14
  655fad:	41 56                	push   r14
  655faf:	4c 8b 2d 0a 5d 46 00 	mov    r13,QWORD PTR [rip+0x465d0a]        # abbcc0 <mod_scalars_mp_nsperiodic_+0x40>
  655fb6:	49 c1 e5 02          	shl    r13,0x2
  655fba:	4c 8b 3d bf 5c 46 00 	mov    r15,QWORD PTR [rip+0x465cbf]        # abbc80 <mod_scalars_mp_nsperiodic_>
  655fc1:	50                   	push   rax
  655fc2:	48 8b 05 97 59 46 00 	mov    rax,QWORD PTR [rip+0x465997]        # abb960 <mod_scalars_mp_ewperiodic_+0x40>
  655fc9:	4d 2b fd             	sub    r15,r13
  655fcc:	48 c1 e0 02          	shl    rax,0x2
  655fd0:	48 8b 35 49 59 46 00 	mov    rsi,QWORD PTR [rip+0x465949]        # abb920 <mod_scalars_mp_ewperiodic_>
  655fd7:	48 2b f0             	sub    rsi,rax
  655fda:	4d 03 11             	add    r10,QWORD PTR [r9]
  655fdd:	4b 8d 0c 9f          	lea    rcx,[r15+r11*4]
  655fe1:	4c 89 95 90 f4 ff ff 	mov    QWORD PTR [rbp-0xb70],r10
  655fe8:	4c 8b 15 11 47 46 00 	mov    r10,QWORD PTR [rip+0x464711]        # aba700 <mod_param_mp_n_+0x40>
  655fef:	49 c1 e2 02          	shl    r10,0x2
  655ff3:	4e 8d 04 9e          	lea    r8,[rsi+r11*4]
  655ff7:	51                   	push   rcx
  655ff8:	49 2b d2             	sub    rdx,r10
  655ffb:	b9 b8 72 84 00       	mov    ecx,0x8472b8
  656000:	41 50                	push   r8
  656002:	68 08 0a be 00       	push   0xbe0a08
  656007:	68 e0 0a be 00       	push   0xbe0ae0
  65600c:	49 8b 41 30          	mov    rax,QWORD PTR [r9+0x30]
  656010:	48 85 c0             	test   rax,rax
  656013:	51                   	push   rcx
  656014:	49 0f 4e c6          	cmovle rax,r14
  656018:	4e 8d 1c 9a          	lea    r11,[rdx+r11*4]
  65601c:	49 8b 51 48          	mov    rdx,QWORD PTR [r9+0x48]
  656020:	48 85 d2             	test   rdx,rdx
  656023:	41 53                	push   r11
  656025:	48 c7 85 98 f4 ff ff 	mov    QWORD PTR [rbp-0xb68],0x8
  65602c:	08 00 00 00 
  656030:	49 0f 4e d6          	cmovle rdx,r14
  656034:	48 c7 85 b0 f4 ff ff 	mov    QWORD PTR [rbp-0xb50],0x4
  65603b:	04 00 00 00 
  65603f:	4c 89 b5 a0 f4 ff ff 	mov    QWORD PTR [rbp-0xb60],r14
  656046:	4c 89 a5 d0 f4 ff ff 	mov    QWORD PTR [rbp-0xb30],r12
  65604d:	4c 89 a5 e8 f4 ff ff 	mov    QWORD PTR [rbp-0xb18],r12
  656054:	4c 89 a5 00 f5 ff ff 	mov    QWORD PTR [rbp-0xb00],r12
  65605b:	4c 89 a5 18 f5 ff ff 	mov    QWORD PTR [rbp-0xae8],r12
  656062:	4c 89 a5 a8 f4 ff ff 	mov    QWORD PTR [rbp-0xb58],r12
  656069:	51                   	push   rcx
  65606a:	49 8b 71 60          	mov    rsi,QWORD PTR [r9+0x60]
  65606e:	48 85 f6             	test   rsi,rsi
  656071:	4c 63 15 68 aa 58 00 	movsxd r10,DWORD PTR [rip+0x58aa68]        # be0ae0 <mod_param_mp_nat_>
  656078:	4d 89 d0             	mov    r8,r10
  65607b:	ff b5 e0 f9 ff ff    	push   QWORD PTR [rbp-0x620]
  656081:	ff b5 d8 f9 ff ff    	push   QWORD PTR [rbp-0x628]
  656087:	48 89 95 d8 f4 ff ff 	mov    QWORD PTR [rbp-0xb28],rdx
  65608e:	ba c8 58 ac 00       	mov    edx,0xac58c8
  656093:	4d 8b 59 38          	mov    r11,QWORD PTR [r9+0x38]
  656097:	49 0f 4e f6          	cmovle rsi,r14
  65609b:	4d 8b 61 50          	mov    r12,QWORD PTR [r9+0x50]
  65609f:	4d 8b 69 68          	mov    r13,QWORD PTR [r9+0x68]
  6560a3:	4d 8b 89 98 00 00 00 	mov    r9,QWORD PTR [r9+0x98]
  6560aa:	49 c1 f8 3f          	sar    r8,0x3f
  6560ae:	48 89 b5 f0 f4 ff ff 	mov    QWORD PTR [rbp-0xb10],rsi
  6560b5:	4c 89 8d 10 f5 ff ff 	mov    QWORD PTR [rbp-0xaf0],r9
  6560bc:	c4 42 b8 f2 fa       	andn   r15,r8,r10
  6560c1:	48 8b b5 c0 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x640]
  6560c8:	4c 8b 85 c8 f9 ff ff 	mov    r8,QWORD PTR [rbp-0x638]
  6560cf:	4c 8b 8d d0 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x630]
  6560d6:	48 89 85 c0 f4 ff ff 	mov    QWORD PTR [rbp-0xb40],rax
  6560dd:	4c 89 9d c8 f4 ff ff 	mov    QWORD PTR [rbp-0xb38],r11
  6560e4:	4c 89 a5 e0 f4 ff ff 	mov    QWORD PTR [rbp-0xb20],r12
  6560eb:	4c 89 ad f8 f4 ff ff 	mov    QWORD PTR [rbp-0xb08],r13
  6560f2:	4c 89 bd 08 f5 ff ff 	mov    QWORD PTR [rbp-0xaf8],r15
  6560f9:	c5 f8 77             	vzeroupper 
  6560fc:	e8 4f 9a fc ff       	call   61fb50 <mp_exchange_mod_mp_mp_exchange4d_>
  656101:	48 83 c4 60          	add    rsp,0x60
  656105:	48 8b 3d 54 58 46 00 	mov    rdi,QWORD PTR [rip+0x465854]        # abb960 <mod_scalars_mp_ewperiodic_+0x40>
  65610c:	4c 8d ad 20 f5 ff ff 	lea    r13,[rbp-0xae0]
  656113:	48 c1 e7 02          	shl    rdi,0x2
  656117:	b9 01 00 00 00       	mov    ecx,0x1
  65611c:	4c 8b 0d fd 57 46 00 	mov    r9,QWORD PTR [rip+0x4657fd]        # abb920 <mod_scalars_mp_ewperiodic_>
  656123:	4c 2b cf             	sub    r9,rdi
  656126:	48 8b bd b8 f9 ff ff 	mov    rdi,QWORD PTR [rbp-0x648]
  65612d:	4c 8b 3d 8c 5b 46 00 	mov    r15,QWORD PTR [rip+0x465b8c]        # abbcc0 <mod_scalars_mp_nsperiodic_+0x40>
  656134:	49 c1 e7 02          	shl    r15,0x2
  656138:	48 8b 05 41 5b 46 00 	mov    rax,QWORD PTR [rip+0x465b41]        # abbc80 <mod_scalars_mp_nsperiodic_>
  65613f:	49 2b c7             	sub    rax,r15
  656142:	4c 63 1f             	movsxd r11,DWORD PTR [rdi]
  656145:	41 56                	push   r14
  656147:	48 8b 15 12 46 46 00 	mov    rdx,QWORD PTR [rip+0x464612]        # aba760 <mod_param_mp_nt_+0x40>
  65614e:	48 c1 e2 02          	shl    rdx,0x2
  656152:	4e 8d 14 98          	lea    r10,[rax+r11*4]
  656156:	41 56                	push   r14
  656158:	4c 8b 25 c1 45 46 00 	mov    r12,QWORD PTR [rip+0x4645c1]        # aba720 <mod_param_mp_nt_>
  65615f:	48 f7 da             	neg    rdx
  656162:	41 55                	push   r13
  656164:	49 03 d4             	add    rdx,r12
  656167:	4f 8d 04 99          	lea    r8,[r9+r11*4]
  65616b:	41 52                	push   r10
  65616d:	4c 8b 93 a0 00 00 00 	mov    r10,QWORD PTR [rbx+0xa0]
  656174:	4c 8d ad 28 f9 ff ff 	lea    r13,[rbp-0x6d8]
  65617b:	48 89 8d 60 f5 ff ff 	mov    QWORD PTR [rbp-0xaa0],rcx
  656182:	48 89 8d 78 f5 ff ff 	mov    QWORD PTR [rbp-0xa88],rcx
  656189:	4a 8d 34 9a          	lea    rsi,[rdx+r11*4]
  65618d:	48 89 8d 90 f5 ff ff 	mov    QWORD PTR [rbp-0xa70],rcx
  656194:	48 89 8d a8 f5 ff ff 	mov    QWORD PTR [rbp-0xa58],rcx
  65619b:	48 89 8d 38 f5 ff ff 	mov    QWORD PTR [rbp-0xac8],rcx
  6561a2:	48 8b 0d 57 45 46 00 	mov    rcx,QWORD PTR [rip+0x464557]        # aba700 <mod_param_mp_n_+0x40>
  6561a9:	48 c1 e1 02          	shl    rcx,0x2
  6561ad:	48 8b 05 0c 45 46 00 	mov    rax,QWORD PTR [rip+0x46450c]        # aba6c0 <mod_param_mp_n_>
  6561b4:	49 8b 52 30          	mov    rdx,QWORD PTR [r10+0x30]
  6561b8:	48 2b c1             	sub    rax,rcx
  6561bb:	48 85 d2             	test   rdx,rdx
  6561be:	b9 b8 72 84 00       	mov    ecx,0x8472b8
  6561c3:	41 50                	push   r8
  6561c5:	68 08 0a be 00       	push   0xbe0a08
  6561ca:	4d 8b 42 48          	mov    r8,QWORD PTR [r10+0x48]
  6561ce:	49 0f 4e d6          	cmovle rdx,r14
  6561d2:	4d 85 c0             	test   r8,r8
  6561d5:	4e 8d 3c 98          	lea    r15,[rax+r11*4]
  6561d9:	56                   	push   rsi
  6561da:	41 55                	push   r13
  6561dc:	4d 8b 4a 60          	mov    r9,QWORD PTR [r10+0x60]
  6561e0:	4d 0f 4e c6          	cmovle r8,r14
  6561e4:	4d 85 c9             	test   r9,r9
  6561e7:	41 57                	push   r15
  6561e9:	48 c7 85 28 f5 ff ff 	mov    QWORD PTR [rbp-0xad8],0x8
  6561f0:	08 00 00 00 
  6561f4:	4d 0f 4e ce          	cmovle r9,r14
  6561f8:	48 c7 85 40 f5 ff ff 	mov    QWORD PTR [rbp-0xac0],0x4
  6561ff:	04 00 00 00 
  656203:	4c 89 b5 30 f5 ff ff 	mov    QWORD PTR [rbp-0xad0],r14
  65620a:	51                   	push   rcx
  65620b:	4f 63 5c 9c fc       	movsxd r11,DWORD PTR [r12+r11*4-0x4]
  656210:	48 63 05 c9 a8 58 00 	movsxd rax,DWORD PTR [rip+0x58a8c9]        # be0ae0 <mod_param_mp_nat_>
  656217:	4c 2b d8             	sub    r11,rax
  65621a:	ff b5 e0 f9 ff ff    	push   QWORD PTR [rbp-0x620]
  656220:	ff b5 d8 f9 ff ff    	push   QWORD PTR [rbp-0x628]
  656226:	4d 0f 4f f3          	cmovg  r14,r11
  65622a:	4c 89 b5 98 f5 ff ff 	mov    QWORD PTR [rbp-0xa68],r14
  656231:	4c 8b 73 40          	mov    r14,QWORD PTR [rbx+0x40]
  656235:	48 89 95 50 f5 ff ff 	mov    QWORD PTR [rbp-0xab0],rdx
  65623c:	49 8b 92 98 00 00 00 	mov    rdx,QWORD PTR [r10+0x98]
  656243:	49 63 36             	movsxd rsi,DWORD PTR [r14]
  656246:	48 ff ce             	dec    rsi
  656249:	49 0f af b2 80 00 00 	imul   rsi,QWORD PTR [r10+0x80]
  656250:	00 
  656251:	48 89 95 a0 f5 ff ff 	mov    QWORD PTR [rbp-0xa60],rdx
  656258:	48 0f af d0          	imul   rdx,rax
  65625c:	4d 8b 5a 38          	mov    r11,QWORD PTR [r10+0x38]
  656260:	ff c0                	inc    eax
  656262:	49 03 32             	add    rsi,QWORD PTR [r10]
  656265:	4c 89 85 68 f5 ff ff 	mov    QWORD PTR [rbp-0xa98],r8
  65626c:	48 03 f2             	add    rsi,rdx
  65626f:	4d 8b 42 68          	mov    r8,QWORD PTR [r10+0x68]
  656273:	ba c8 58 ac 00       	mov    edx,0xac58c8
  656278:	4c 89 9d 58 f5 ff ff 	mov    QWORD PTR [rbp-0xaa8],r11
  65627f:	4d 8b 5a 50          	mov    r11,QWORD PTR [r10+0x50]
  656283:	4c 89 85 88 f5 ff ff 	mov    QWORD PTR [rbp-0xa78],r8
  65628a:	4c 89 8d 80 f5 ff ff 	mov    QWORD PTR [rbp-0xa80],r9
  656291:	48 89 b5 20 f5 ff ff 	mov    QWORD PTR [rbp-0xae0],rsi
  656298:	48 8b b5 c0 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x640]
  65629f:	4c 8b 85 c8 f9 ff ff 	mov    r8,QWORD PTR [rbp-0x638]
  6562a6:	4c 8b 8d d0 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x630]
  6562ad:	4c 89 9d 70 f5 ff ff 	mov    QWORD PTR [rbp-0xa90],r11
  6562b4:	41 89 45 00          	mov    DWORD PTR [r13+0x0],eax
  6562b8:	e8 73 13 ff ff       	call   647630 <mp_exchange_mod_mp_mp_exchange4d_q_>
  6562bd:	48 83 c4 60          	add    rsp,0x60
  6562c1:	48 8b 85 50 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x6b0]
  6562c8:	48 89 c4             	mov    rsp,rax
  6562cb:	4c 8b bd 30 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6d0]
  6562d2:	4c 8b b5 38 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x6c8]
  6562d9:	4c 8b ad 40 f9 ff ff 	mov    r13,QWORD PTR [rbp-0x6c0]
  6562e0:	4c 8b a5 48 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6b8]
  6562e7:	48 89 ec             	mov    rsp,rbp
  6562ea:	5d                   	pop    rbp
  6562eb:	48 89 dc             	mov    rsp,rbx
  6562ee:	5b                   	pop    rbx
  6562ef:	c3                   	ret    
  6562f0:	53                   	push   rbx
  6562f1:	48 89 e3             	mov    rbx,rsp
  6562f4:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
  6562f8:	55                   	push   rbp
  6562f9:	55                   	push   rbp
  6562fa:	48 8b 6b 08          	mov    rbp,QWORD PTR [rbx+0x8]
  6562fe:	48 89 6c 24 08       	mov    QWORD PTR [rsp+0x8],rbp
  656303:	48 89 e5             	mov    rbp,rsp
  656306:	48 81 ec 70 0b 00 00 	sub    rsp,0xb70
  65630d:	4c 89 bd 30 f9 ff ff 	mov    QWORD PTR [rbp-0x6d0],r15
  656314:	4c 89 ad 40 f9 ff ff 	mov    QWORD PTR [rbp-0x6c0],r13
  65631b:	4c 8b 7b 20          	mov    r15,QWORD PTR [rbx+0x20]
  65631f:	4c 8b 6b 18          	mov    r13,QWORD PTR [rbx+0x18]
  656323:	48 8b 43 38          	mov    rax,QWORD PTR [rbx+0x38]
  656327:	48 8b 73 40          	mov    rsi,QWORD PTR [rbx+0x40]
  65632b:	4c 89 a5 48 f9 ff ff 	mov    QWORD PTR [rbp-0x6b8],r12
  656332:	4c 8b 63 10          	mov    r12,QWORD PTR [rbx+0x10]
  656336:	4d 8b 3f             	mov    r15,QWORD PTR [r15]
  656339:	4d 8b 6d 00          	mov    r13,QWORD PTR [r13+0x0]
  65633d:	4c 89 bd d8 f4 ff ff 	mov    QWORD PTR [rbp-0xb28],r15
  656344:	4c 89 ad a8 f4 ff ff 	mov    QWORD PTR [rbp-0xb58],r13
  65634b:	44 8b 3a             	mov    r15d,DWORD PTR [rdx]
  65634e:	4d 8b 28             	mov    r13,QWORD PTR [r8]
  656351:	48 8b 53 50          	mov    rdx,QWORD PTR [rbx+0x50]
  656355:	4c 8b 53 28          	mov    r10,QWORD PTR [rbx+0x28]
  656359:	4c 8b 43 58          	mov    r8,QWORD PTR [rbx+0x58]
  65635d:	8b 00                	mov    eax,DWORD PTR [rax]
  65635f:	8b 36                	mov    esi,DWORD PTR [rsi]
  656361:	45 8b 24 24          	mov    r12d,DWORD PTR [r12]
  656365:	89 85 e8 f9 ff ff    	mov    DWORD PTR [rbp-0x618],eax
  65636b:	89 b5 a0 f8 ff ff    	mov    DWORD PTR [rbp-0x760],esi
  656371:	41 8b 01             	mov    eax,DWORD PTR [r9]
  656374:	48 8b 73 68          	mov    rsi,QWORD PTR [rbx+0x68]
  656378:	44 89 a5 90 fd ff ff 	mov    DWORD PTR [rbp-0x270],r12d
  65637f:	44 8b 21             	mov    r12d,DWORD PTR [rcx]
  656382:	89 85 88 fd ff ff    	mov    DWORD PTR [rbp-0x278],eax
  656388:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  65638b:	4c 8b 5b 30          	mov    r11,QWORD PTR [rbx+0x30]
  65638f:	48 8b 53 60          	mov    rdx,QWORD PTR [rbx+0x60]
  656393:	4d 8b 12             	mov    r10,QWORD PTR [r10]
  656396:	49 8b 00             	mov    rax,QWORD PTR [r8]
  656399:	8b 3f                	mov    edi,DWORD PTR [rdi]
  65639b:	4c 89 95 b8 f4 ff ff 	mov    QWORD PTR [rbp-0xb48],r10
  6563a2:	48 89 85 c0 f4 ff ff 	mov    QWORD PTR [rbp-0xb40],rax
  6563a9:	48 8d 43 70          	lea    rax,[rbx+0x70]
  6563ad:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  6563b0:	4c 8b 50 10          	mov    r10,QWORD PTR [rax+0x10]
  6563b4:	48 8b 40 18          	mov    rax,QWORD PTR [rax+0x18]
  6563b8:	89 bd 98 f9 ff ff    	mov    DWORD PTR [rbp-0x668],edi
  6563be:	48 63 3e             	movsxd rdi,DWORD PTR [rsi]
  6563c1:	4c 89 b5 38 f9 ff ff 	mov    QWORD PTR [rbp-0x6c8],r14
  6563c8:	48 8d 73 48          	lea    rsi,[rbx+0x48]
  6563cc:	4c 8b 36             	mov    r14,QWORD PTR [rsi]
  6563cf:	48 89 8d c8 f4 ff ff 	mov    QWORD PTR [rbp-0xb38],rcx
  6563d6:	4d 8b 1b             	mov    r11,QWORD PTR [r11]
  6563d9:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  6563dc:	48 89 bd 38 f7 ff ff 	mov    QWORD PTR [rbp-0x8c8],rdi
  6563e3:	48 8b 7e 70          	mov    rdi,QWORD PTR [rsi+0x70]
  6563e7:	48 8b 76 68          	mov    rsi,QWORD PTR [rsi+0x68]
  6563eb:	4c 89 9d b0 f4 ff ff 	mov    QWORD PTR [rbp-0xb50],r11
  6563f2:	48 89 8d d0 f4 ff ff 	mov    QWORD PTR [rbp-0xb30],rcx
  6563f9:	4d 63 08             	movsxd r9,DWORD PTR [r8]
  6563fc:	4d 63 1a             	movsxd r11,DWORD PTR [r10]
  6563ff:	48 63 10             	movsxd rdx,DWORD PTR [rax]
  656402:	33 c0                	xor    eax,eax
  656404:	48 8b 8b a8 00 00 00 	mov    rcx,QWORD PTR [rbx+0xa8]
  65640b:	48 89 bd a0 f4 ff ff 	mov    QWORD PTR [rbp-0xb60],rdi
  656412:	48 8d bd f0 f4 ff ff 	lea    rdi,[rbp-0xb10]
  656419:	48 89 77 a8          	mov    QWORD PTR [rdi-0x58],rsi
  65641d:	48 8b b3 c0 00 00 00 	mov    rsi,QWORD PTR [rbx+0xc0]
  656424:	4d 8b 36             	mov    r14,QWORD PTR [r14]
  656427:	4c 89 8d 40 f7 ff ff 	mov    QWORD PTR [rbp-0x8c0],r9
  65642e:	4c 89 9d 30 f7 ff ff 	mov    QWORD PTR [rbp-0x8d0],r11
  656435:	48 89 95 28 f7 ff ff 	mov    QWORD PTR [rbp-0x8d8],rdx
  65643c:	48 89 4f a0          	mov    QWORD PTR [rdi-0x60],rcx
  656440:	e8 bb 07 e2 ff       	call   476c00 <_f90_dope_vector_init>
  656445:	48 89 85 38 f8 ff ff 	mov    QWORD PTR [rbp-0x7c8],rax
  65644c:	48 83 c0 1f          	add    rax,0x1f
  656450:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  656454:	48 2b e0             	sub    rsp,rax
  656457:	48 89 e0             	mov    rax,rsp
  65645a:	48 89 85 30 f8 ff ff 	mov    QWORD PTR [rbp-0x7d0],rax
  656461:	48 89 c2             	mov    rdx,rax
  656464:	48 8d bd 50 f5 ff ff 	lea    rdi,[rbp-0xab0]
  65646b:	33 c0                	xor    eax,eax
  65646d:	48 8b b5 a0 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb60]
  656474:	48 89 57 a0          	mov    QWORD PTR [rdi-0x60],rdx
  656478:	e8 83 07 e2 ff       	call   476c00 <_f90_dope_vector_init>
  65647d:	48 89 85 48 f8 ff ff 	mov    QWORD PTR [rbp-0x7b8],rax
  656484:	48 83 c0 1f          	add    rax,0x1f
  656488:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  65648c:	48 2b e0             	sub    rsp,rax
  65648f:	48 89 e0             	mov    rax,rsp
  656492:	48 89 85 40 f8 ff ff 	mov    QWORD PTR [rbp-0x7c0],rax
  656499:	48 89 c2             	mov    rdx,rax
  65649c:	48 8d bd b0 f5 ff ff 	lea    rdi,[rbp-0xa50]
  6564a3:	33 c0                	xor    eax,eax
  6564a5:	48 8b b5 98 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb68]
  6564ac:	48 89 57 a0          	mov    QWORD PTR [rdi-0x60],rdx
  6564b0:	e8 4b 07 e2 ff       	call   476c00 <_f90_dope_vector_init>
  6564b5:	48 89 85 58 f8 ff ff 	mov    QWORD PTR [rbp-0x7a8],rax
  6564bc:	48 83 c0 1f          	add    rax,0x1f
  6564c0:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  6564c4:	48 2b e0             	sub    rsp,rax
  6564c7:	48 89 e0             	mov    rax,rsp
  6564ca:	48 89 85 50 f8 ff ff 	mov    QWORD PTR [rbp-0x7b0],rax
  6564d1:	48 89 c2             	mov    rdx,rax
  6564d4:	48 8d bd 10 f6 ff ff 	lea    rdi,[rbp-0x9f0]
  6564db:	33 c0                	xor    eax,eax
  6564dd:	48 8b b5 90 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb70]
  6564e4:	48 89 57 a0          	mov    QWORD PTR [rdi-0x60],rdx
  6564e8:	e8 13 07 e2 ff       	call   476c00 <_f90_dope_vector_init>
  6564ed:	48 89 85 60 f8 ff ff 	mov    QWORD PTR [rbp-0x7a0],rax
  6564f4:	48 83 c0 1f          	add    rax,0x1f
  6564f8:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  6564fc:	48 2b e0             	sub    rsp,rax
  6564ff:	48 89 e0             	mov    rax,rsp
  656502:	48 89 85 68 f8 ff ff 	mov    QWORD PTR [rbp-0x798],rax
  656509:	48 89 85 10 f6 ff ff 	mov    QWORD PTR [rbp-0x9f0],rax
  656510:	45 3b e7             	cmp    r12d,r15d
  656513:	0f 8c 8a 00 00 00    	jl     6565a3 <step3d_t_mod_mp_step3d_t_tile_+0x23e3>
  656519:	48 83 c4 e0          	add    rsp,0xffffffffffffffe0
  65651d:	48 8d 85 fc f9 ff ff 	lea    rax,[rbp-0x604]
  656524:	41 ba 01 00 00 00    	mov    r10d,0x1
  65652a:	bf bc 55 ab 00       	mov    edi,0xab55bc
  65652f:	ba 22 00 00 00       	mov    edx,0x22
  656534:	48 8d 8d f8 f9 ff ff 	lea    rcx,[rbp-0x608]
  65653b:	44 89 78 f4          	mov    DWORD PTR [rax-0xc],r15d
  65653f:	4c 8d 85 f0 f9 ff ff 	lea    r8,[rbp-0x610]
  656546:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  65654a:	4c 8d 8d f4 f9 ff ff 	lea    r9,[rbp-0x60c]
  656551:	44 89 54 24 08       	mov    DWORD PTR [rsp+0x8],r10d
  656556:	44 89 54 24 10       	mov    DWORD PTR [rsp+0x10],r10d
  65655b:	8b 70 9c             	mov    esi,DWORD PTR [rax-0x64]
  65655e:	44 89 60 f8          	mov    DWORD PTR [rax-0x8],r12d
  656562:	c7 40 fc 00 00 00 00 	mov    DWORD PTR [rax-0x4],0x0
  656569:	44 89 10             	mov    DWORD PTR [rax],r10d
  65656c:	e8 6f 74 db ff       	call   40d9e0 <__kmpc_for_static_init_4@plt>
  656571:	48 83 c4 20          	add    rsp,0x20
  656575:	8b 85 f0 f9 ff ff    	mov    eax,DWORD PTR [rbp-0x610]
  65657b:	8b 95 f4 f9 ff ff    	mov    edx,DWORD PTR [rbp-0x60c]
  656581:	89 85 48 f7 ff ff    	mov    DWORD PTR [rbp-0x8b8],eax
  656587:	41 3b c4             	cmp    eax,r12d
  65658a:	0f 8e 99 00 00 00    	jle    656629 <step3d_t_mod_mp_step3d_t_tile_+0x2469>
  656590:	bf bc 55 ab 00       	mov    edi,0xab55bc
  656595:	8b b5 98 f9 ff ff    	mov    esi,DWORD PTR [rbp-0x668]
  65659b:	c5 f8 77             	vzeroupper 
  65659e:	e8 fd 76 db ff       	call   40dca0 <__kmpc_for_static_fini@plt>
  6565a3:	48 8b 95 68 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x798]
  6565aa:	48 8b 85 60 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x7a0]
  6565b1:	48 83 c0 1f          	add    rax,0x1f
  6565b5:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  6565b9:	48 03 e0             	add    rsp,rax
  6565bc:	48 8b 95 50 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x7b0]
  6565c3:	48 8b 85 58 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x7a8]
  6565ca:	48 83 c0 1f          	add    rax,0x1f
  6565ce:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  6565d2:	48 03 e0             	add    rsp,rax
  6565d5:	48 8b 95 40 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x7c0]
  6565dc:	48 8b 85 48 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x7b8]
  6565e3:	48 83 c0 1f          	add    rax,0x1f
  6565e7:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  6565eb:	48 03 e0             	add    rsp,rax
  6565ee:	48 8b 95 30 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x7d0]
  6565f5:	48 8b 85 38 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x7c8]
  6565fc:	48 83 c0 1f          	add    rax,0x1f
  656600:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  656604:	48 03 e0             	add    rsp,rax
  656607:	4c 8b bd 30 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6d0]
  65660e:	4c 8b b5 38 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x6c8]
  656615:	4c 8b ad 40 f9 ff ff 	mov    r13,QWORD PTR [rbp-0x6c0]
  65661c:	4c 8b a5 48 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6b8]
  656623:	c9                   	leave  
  656624:	48 89 dc             	mov    rsp,rbx
  656627:	5b                   	pop    rbx
  656628:	c3                   	ret    
  656629:	41 3b d4             	cmp    edx,r12d
  65662c:	48 8b 35 0d 35 46 00 	mov    rsi,QWORD PTR [rip+0x46350d]        # ab9b40 <mod_scalars_mp_dt_>
  656633:	49 63 7d 00          	movsxd rdi,DWORD PTR [r13+0x0]
  656637:	44 0f 4c e2          	cmovl  r12d,edx
  65663b:	48 8b 15 de 40 46 00 	mov    rdx,QWORD PTR [rip+0x4640de]        # aba720 <mod_param_mp_nt_>
  656642:	48 89 b5 d0 fa ff ff 	mov    QWORD PTR [rbp-0x530],rsi
  656649:	48 8b b5 d8 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb28]
  656650:	49 63 06             	movsxd rax,DWORD PTR [r14]
  656653:	4c 8b 35 66 40 46 00 	mov    r14,QWORD PTR [rip+0x464066]        # aba6c0 <mod_param_mp_n_>
  65665a:	4c 89 b5 b0 f8 ff ff 	mov    QWORD PTR [rbp-0x750],r14
  656661:	44 8b 74 ba fc       	mov    r14d,DWORD PTR [rdx+rdi*4-0x4]
  656666:	48 8b 96 80 00 00 00 	mov    rdx,QWORD PTR [rsi+0x80]
  65666d:	48 0f af c2          	imul   rax,rdx
  656671:	c5 7d 10 0d e7 39 1f 	vmovupd ymm9,YMMWORD PTR [rip+0x1f39e7]        # 84a060 <var$630.126.450+0xc0>
  656678:	00 
  656679:	c5 7b 10 25 2f f3 46 	vmovsd xmm12,QWORD PTR [rip+0x46f32f]        # ac59b0 <mod_scalars_mp_lambda_>
  656680:	00 
  656681:	c5 7b 10 1d f7 5a 1f 	vmovsd xmm11,QWORD PTR [rip+0x1f5af7]        # 84c180 <__STRLITPACK_0.112+0x70>
  656688:	00 
  656689:	48 89 85 80 f9 ff ff 	mov    QWORD PTR [rbp-0x680],rax
  656690:	48 8b 46 68          	mov    rax,QWORD PTR [rsi+0x68]
  656694:	48 89 bd d8 fa ff ff 	mov    QWORD PTR [rbp-0x528],rdi
  65669b:	48 89 c7             	mov    rdi,rax
  65669e:	44 8b 0d 3b a4 58 00 	mov    r9d,DWORD PTR [rip+0x58a43b]        # be0ae0 <mod_param_mp_nat_>
  6566a5:	48 f7 df             	neg    rdi
  6566a8:	4c 8b 1d f1 4a 46 00 	mov    r11,QWORD PTR [rip+0x464af1]        # abb1a0 <mod_scalars_mp_ltracersrc_>
  6566af:	48 8b 0d 3a 4b 46 00 	mov    rcx,QWORD PTR [rip+0x464b3a]        # abb1f0 <mod_scalars_mp_ltracersrc_+0x50>
  6566b6:	44 89 8d 90 fb ff ff 	mov    DWORD PTR [rbp-0x470],r9d
  6566bd:	4c 89 9d 50 f7 ff ff 	mov    QWORD PTR [rbp-0x8b0],r11
  6566c4:	48 89 8d 58 f7 ff ff 	mov    QWORD PTR [rbp-0x8a8],rcx
  6566cb:	48 89 bd e8 fd ff ff 	mov    QWORD PTR [rbp-0x218],rdi
  6566d2:	48 8b 0e             	mov    rcx,QWORD PTR [rsi]
  6566d5:	4c 8b 5e 38          	mov    r11,QWORD PTR [rsi+0x38]
  6566d9:	48 8b 7e 50          	mov    rdi,QWORD PTR [rsi+0x50]
  6566dd:	4c 8b 8e 98 00 00 00 	mov    r9,QWORD PTR [rsi+0x98]
  6566e4:	44 2b a5 48 f7 ff ff 	sub    r12d,DWORD PTR [rbp-0x8b8]
  6566eb:	48 8b b5 d0 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb30]
  6566f2:	41 ff c4             	inc    r12d
  6566f5:	44 89 a5 a0 f9 ff ff 	mov    DWORD PTR [rbp-0x660],r12d
  6566fc:	4c 8b 25 cd 4a 46 00 	mov    r12,QWORD PTR [rip+0x464acd]        # abb1d0 <mod_scalars_mp_ltracersrc_+0x30>
  656703:	4c 89 a5 b0 fb ff ff 	mov    QWORD PTR [rbp-0x450],r12
  65670a:	4c 8b 3d cf eb 46 00 	mov    r15,QWORD PTR [rip+0x46ebcf]        # ac52e0 <mod_sources_mp_sources_>
  656711:	4c 8b 66 68          	mov    r12,QWORD PTR [rsi+0x68]
  656715:	4c 89 bd 78 f8 ff ff 	mov    QWORD PTR [rbp-0x788],r15
  65671c:	4c 8b 3e             	mov    r15,QWORD PTR [rsi]
  65671f:	4c 89 a5 e0 fb ff ff 	mov    QWORD PTR [rbp-0x420],r12
  656726:	4d 2b fc             	sub    r15,r12
  656729:	4c 8b 66 50          	mov    r12,QWORD PTR [rsi+0x50]
  65672d:	48 8b 76 38          	mov    rsi,QWORD PTR [rsi+0x38]
  656731:	48 89 b5 a8 f9 ff ff 	mov    QWORD PTR [rbp-0x658],rsi
  656738:	48 8b b5 c8 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb38]
  65673f:	4c 89 bd 90 f4 ff ff 	mov    QWORD PTR [rbp-0xb70],r15
  656746:	4c 89 a5 10 f9 ff ff 	mov    QWORD PTR [rbp-0x6f0],r12
  65674d:	4c 8b 7e 68          	mov    r15,QWORD PTR [rsi+0x68]
  656751:	4c 8b 26             	mov    r12,QWORD PTR [rsi]
  656754:	4c 89 bd b8 fa ff ff 	mov    QWORD PTR [rbp-0x548],r15
  65675b:	4d 2b e7             	sub    r12,r15
  65675e:	4c 8b 7e 50          	mov    r15,QWORD PTR [rsi+0x50]
  656762:	4c 89 bd 18 f9 ff ff 	mov    QWORD PTR [rbp-0x6e8],r15
  656769:	4c 8b bd c0 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb40]
  656770:	4c 89 a5 70 f9 ff ff 	mov    QWORD PTR [rbp-0x690],r12
  656777:	44 89 b5 d0 fb ff ff 	mov    DWORD PTR [rbp-0x430],r14d
  65677e:	4d 8b 27             	mov    r12,QWORD PTR [r15]
  656781:	4c 89 a5 58 f9 ff ff 	mov    QWORD PTR [rbp-0x6a8],r12
  656788:	4d 8b a7 80 00 00 00 	mov    r12,QWORD PTR [r15+0x80]
  65678f:	4c 89 a5 c0 f9 ff ff 	mov    QWORD PTR [rbp-0x640],r12
  656796:	4d 8b 67 68          	mov    r12,QWORD PTR [r15+0x68]
  65679a:	4c 89 a5 b0 fa ff ff 	mov    QWORD PTR [rbp-0x550],r12
  6567a1:	4d 8b 67 50          	mov    r12,QWORD PTR [r15+0x50]
  6567a5:	4c 89 a5 00 f9 ff ff 	mov    QWORD PTR [rbp-0x700],r12
  6567ac:	4c 8b 25 ad 4a 46 00 	mov    r12,QWORD PTR [rip+0x464aad]        # abb260 <mod_scalars_mp_lwsrc_>
  6567b3:	4c 89 a5 60 f7 ff ff 	mov    QWORD PTR [rbp-0x8a0],r12
  6567ba:	4c 8b a5 b8 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb48]
  6567c1:	4d 8b 7f 38          	mov    r15,QWORD PTR [r15+0x38]
  6567c5:	4c 89 bd b0 f9 ff ff 	mov    QWORD PTR [rbp-0x650],r15
  6567cc:	4d 8b 3c 24          	mov    r15,QWORD PTR [r12]
  6567d0:	4c 89 bd 78 f7 ff ff 	mov    QWORD PTR [rbp-0x888],r15
  6567d7:	4d 8b 7c 24 50       	mov    r15,QWORD PTR [r12+0x50]
  6567dc:	4c 89 bd 98 f7 ff ff 	mov    QWORD PTR [rbp-0x868],r15
  6567e3:	4c 8b bd b0 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb50]
  6567ea:	4d 8b 64 24 38       	mov    r12,QWORD PTR [r12+0x38]
  6567ef:	4c 89 a5 c0 fb ff ff 	mov    QWORD PTR [rbp-0x440],r12
  6567f6:	4d 8b 27             	mov    r12,QWORD PTR [r15]
  6567f9:	4c 89 a5 88 f7 ff ff 	mov    QWORD PTR [rbp-0x878],r12
  656800:	4d 8b 67 50          	mov    r12,QWORD PTR [r15+0x50]
  656804:	4c 89 a5 80 f7 ff ff 	mov    QWORD PTR [rbp-0x880],r12
  65680b:	4c 8b a5 a8 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb58]
  656812:	4d 8b 7f 38          	mov    r15,QWORD PTR [r15+0x38]
  656816:	4c 89 bd c8 fb ff ff 	mov    QWORD PTR [rbp-0x438],r15
  65681d:	4d 8b 3c 24          	mov    r15,QWORD PTR [r12]
  656821:	4c 89 bd 70 f7 ff ff 	mov    QWORD PTR [rbp-0x890],r15
  656828:	4d 8b 7c 24 68       	mov    r15,QWORD PTR [r12+0x68]
  65682d:	4c 89 bd 18 fc ff ff 	mov    QWORD PTR [rbp-0x3e8],r15
  656834:	4d 8b 7c 24 50       	mov    r15,QWORD PTR [r12+0x50]
  656839:	4d 63 f6             	movsxd r14,r14d
  65683c:	4c 89 bd 68 f7 ff ff 	mov    QWORD PTR [rbp-0x898],r15
  656843:	4c 89 b5 b8 fb ff ff 	mov    QWORD PTR [rbp-0x448],r14
  65684a:	44 8b bd 90 fd ff ff 	mov    r15d,DWORD PTR [rbp-0x270]
  656851:	44 8b b5 88 fd ff ff 	mov    r14d,DWORD PTR [rbp-0x278]
  656858:	45 2b fe             	sub    r15d,r14d
  65685b:	4d 8b 64 24 38       	mov    r12,QWORD PTR [r12+0x38]
  656860:	41 ff c7             	inc    r15d
  656863:	4d 63 f6             	movsxd r14,r14d
  656866:	4c 89 a5 a0 fd ff ff 	mov    QWORD PTR [rbp-0x260],r12
  65686d:	4d 89 f4             	mov    r12,r14
  656870:	48 8b 76 38          	mov    rsi,QWORD PTR [rsi+0x38]
  656874:	4c 0f af e6          	imul   r12,rsi
  656878:	48 89 b5 b8 f9 ff ff 	mov    QWORD PTR [rbp-0x648],rsi
  65687f:	4c 89 f6             	mov    rsi,r14
  656882:	49 0f af f3          	imul   rsi,r11
  656886:	4c 8b 85 38 f7 ff ff 	mov    r8,QWORD PTR [rbp-0x8c8]
  65688d:	4c 8b 95 40 f7 ff ff 	mov    r10,QWORD PTR [rbp-0x8c0]
  656894:	4c 89 9d b0 fd ff ff 	mov    QWORD PTR [rbp-0x250],r11
  65689b:	4d 2b d0             	sub    r10,r8
  65689e:	49 c1 e0 03          	shl    r8,0x3
  6568a2:	4e 8d 1c f5 00 00 00 	lea    r11,[r14*8+0x0]
  6568a9:	00 
  6568aa:	44 89 bd 40 fd ff ff 	mov    DWORD PTR [rbp-0x2c0],r15d
  6568b1:	41 d1 ef             	shr    r15d,1
  6568b4:	4c 89 9d 28 f8 ff ff 	mov    QWORD PTR [rbp-0x7d8],r11
  6568bb:	4d 2b d8             	sub    r11,r8
  6568be:	44 89 bd 00 fd ff ff 	mov    DWORD PTR [rbp-0x300],r15d
  6568c5:	4c 89 bd d0 fc ff ff 	mov    QWORD PTR [rbp-0x330],r15
  6568cc:	4c 89 a5 68 f9 ff ff 	mov    QWORD PTR [rbp-0x698],r12
  6568d3:	4c 8b bd b0 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xa50]
  6568da:	4c 8b a5 10 f6 ff ff 	mov    r12,QWORD PTR [rbp-0x9f0]
  6568e1:	4c 89 85 38 f7 ff ff 	mov    QWORD PTR [rbp-0x8c8],r8
  6568e8:	4c 8b 2d 51 ea 46 00 	mov    r13,QWORD PTR [rip+0x46ea51]        # ac5340 <mod_sources_mp_nsrc_>
  6568ef:	4f 8d 04 3b          	lea    r8,[r11+r15*1]
  6568f3:	4c 89 85 c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r8
  6568fa:	4f 8d 04 23          	lea    r8,[r11+r12*1]
  6568fe:	4c 89 85 c8 fc ff ff 	mov    QWORD PTR [rbp-0x338],r8
  656905:	4d 89 d0             	mov    r8,r10
  656908:	49 c1 e0 04          	shl    r8,0x4
  65690c:	4c 89 ad 98 f8 ff ff 	mov    QWORD PTR [rbp-0x768],r13
  656913:	4d 03 c3             	add    r8,r11
  656916:	4c 8b ad f0 f4 ff ff 	mov    r13,QWORD PTR [rbp-0xb10]
  65691d:	48 89 b5 28 f9 ff ff 	mov    QWORD PTR [rbp-0x6d8],rsi
  656924:	48 8b b5 50 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xab0]
  65692b:	4c 89 b5 f0 f7 ff ff 	mov    QWORD PTR [rbp-0x810],r14
  656932:	4f 8d 34 2b          	lea    r14,[r11+r13*1]
  656936:	4c 89 b5 98 fd ff ff 	mov    QWORD PTR [rbp-0x268],r14
  65693d:	4c 89 ad 18 f8 ff ff 	mov    QWORD PTR [rbp-0x7e8],r13
  656944:	4d 8d 34 33          	lea    r14,[r11+rsi*1]
  656948:	4c 89 b5 c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],r14
  65694f:	4f 8d 34 d3          	lea    r14,[r11+r10*8]
  656953:	4c 89 8d 98 fb ff ff 	mov    QWORD PTR [rbp-0x468],r9
  65695a:	4f 8d 1c 07          	lea    r11,[r15+r8*1]
  65695e:	4d 03 fe             	add    r15,r14
  656961:	4c 89 bd e0 fa ff ff 	mov    QWORD PTR [rbp-0x520],r15
  656968:	4f 8d 3c 04          	lea    r15,[r12+r8*1]
  65696c:	4d 03 e6             	add    r12,r14
  65696f:	4c 89 a5 80 fd ff ff 	mov    QWORD PTR [rbp-0x280],r12
  656976:	4e 8d 24 06          	lea    r12,[rsi+r8*1]
  65697a:	4c 89 a5 60 fd ff ff 	mov    QWORD PTR [rbp-0x2a0],r12
  656981:	4d 03 c5             	add    r8,r13
  656984:	4c 63 a5 48 f7 ff ff 	movsxd r12,DWORD PTR [rbp-0x8b8]
  65698b:	49 03 f6             	add    rsi,r14
  65698e:	4d 03 f5             	add    r14,r13
  656991:	4d 89 e5             	mov    r13,r12
  656994:	4c 0f af ad 18 f9 ff 	imul   r13,QWORD PTR [rbp-0x6e8]
  65699b:	ff 
  65699c:	4c 89 b5 a8 fd ff ff 	mov    QWORD PTR [rbp-0x258],r14
  6569a3:	49 89 ce             	mov    r14,rcx
  6569a6:	4d 2b f1             	sub    r14,r9
  6569a9:	4c 2b ca             	sub    r9,rdx
  6569ac:	4c 89 85 c8 fa ff ff 	mov    QWORD PTR [rbp-0x538],r8
  6569b3:	4d 89 e0             	mov    r8,r12
  6569b6:	4c 89 a5 e0 f7 ff ff 	mov    QWORD PTR [rbp-0x820],r12
  6569bd:	4c 0f af e7          	imul   r12,rdi
  6569c1:	4c 0f af 85 10 f9 ff 	imul   r8,QWORD PTR [rbp-0x6f0]
  6569c8:	ff 
  6569c9:	4c 89 9d 68 fd ff ff 	mov    QWORD PTR [rbp-0x298],r11
  6569d0:	4c 89 8d 90 f7 ff ff 	mov    QWORD PTR [rbp-0x870],r9
  6569d7:	4c 8b 9d 28 f7 ff ff 	mov    r11,QWORD PTR [rbp-0x8d8]
  6569de:	4c 89 b5 a8 f7 ff ff 	mov    QWORD PTR [rbp-0x858],r14
  6569e5:	4d 03 f1             	add    r14,r9
  6569e8:	4c 0f af df          	imul   r11,rdi
  6569ec:	4c 8b 8d b0 fd ff ff 	mov    r9,QWORD PTR [rbp-0x250]
  6569f3:	4c 89 ad a0 f4 ff ff 	mov    QWORD PTR [rbp-0xb60],r13
  6569fa:	4c 8b ad 30 f7 ff ff 	mov    r13,QWORD PTR [rbp-0x8d0]
  656a01:	4d 0f af e9          	imul   r13,r9
  656a05:	48 89 bd 20 f9 ff ff 	mov    QWORD PTR [rbp-0x6e0],rdi
  656a0c:	4c 89 e7             	mov    rdi,r12
  656a0f:	49 2b fb             	sub    rdi,r11
  656a12:	4c 89 bd 58 fd ff ff 	mov    QWORD PTR [rbp-0x2a8],r15
  656a19:	4e 8d 3c 18          	lea    r15,[rax+r11*1]
  656a1d:	4c 89 85 98 f4 ff ff 	mov    QWORD PTR [rbp-0xb68],r8
  656a24:	49 89 f8             	mov    r8,rdi
  656a27:	4c 89 a5 f8 f7 ff ff 	mov    QWORD PTR [rbp-0x808],r12
  656a2e:	4d 2b e5             	sub    r12,r13
  656a31:	4c 89 bd b0 f7 ff ff 	mov    QWORD PTR [rbp-0x850],r15
  656a38:	49 f7 d8             	neg    r8
  656a3b:	4d 2b fc             	sub    r15,r12
  656a3e:	49 f7 d8             	neg    r8
  656a41:	49 f7 df             	neg    r15
  656a44:	4d 03 c6             	add    r8,r14
  656a47:	4c 89 b5 c0 f7 ff ff 	mov    QWORD PTR [rbp-0x840],r14
  656a4e:	4d 03 fe             	add    r15,r14
  656a51:	4c 8b b5 80 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x680]
  656a58:	4c 89 95 40 f7 ff ff 	mov    QWORD PTR [rbp-0x8c0],r10
  656a5f:	4e 8d 14 d5 08 00 00 	lea    r10,[r10*8+0x8]
  656a66:	00 
  656a67:	48 89 b5 78 fd ff ff 	mov    QWORD PTR [rbp-0x288],rsi
  656a6e:	48 89 c6             	mov    rsi,rax
  656a71:	4c 89 95 70 fd ff ff 	mov    QWORD PTR [rbp-0x290],r10
  656a78:	49 f7 da             	neg    r10
  656a7b:	4c 89 95 f0 fd ff ff 	mov    QWORD PTR [rbp-0x210],r10
  656a82:	49 2b f3             	sub    rsi,r11
  656a85:	4c 89 9d b8 f7 ff ff 	mov    QWORD PTR [rbp-0x848],r11
  656a8c:	4d 89 eb             	mov    r11,r13
  656a8f:	4c 8b 95 28 f9 ff ff 	mov    r10,QWORD PTR [rbp-0x6d8]
  656a96:	4d 03 e9             	add    r13,r9
  656a99:	4d 2b da             	sub    r11,r10
  656a9c:	4d 03 ce             	add    r9,r14
  656a9f:	49 f7 d9             	neg    r9
  656aa2:	4d 03 cb             	add    r9,r11
  656aa5:	49 f7 d9             	neg    r9
  656aa8:	4d 03 c8             	add    r9,r8
  656aab:	4c 89 8d d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],r9
  656ab2:	4f 8d 0c 32          	lea    r9,[r10+r14*1]
  656ab6:	4d 2b e9             	sub    r13,r9
  656ab9:	4d 03 cc             	add    r9,r12
  656abc:	4d 2b c5             	sub    r8,r13
  656abf:	4c 89 85 e0 f8 ff ff 	mov    QWORD PTR [rbp-0x720],r8
  656ac6:	4c 8d 04 02          	lea    r8,[rdx+rax*1]
  656aca:	48 89 85 48 fd ff ff 	mov    QWORD PTR [rbp-0x2b8],rax
  656ad1:	4c 89 c0             	mov    rax,r8
  656ad4:	48 2b c7             	sub    rax,rdi
  656ad7:	48 89 95 08 f8 ff ff 	mov    QWORD PTR [rbp-0x7f8],rdx
  656ade:	4c 89 c2             	mov    rdx,r8
  656ae1:	48 f7 d8             	neg    rax
  656ae4:	48 2b d6             	sub    rdx,rsi
  656ae7:	48 03 c1             	add    rax,rcx
  656aea:	48 f7 da             	neg    rdx
  656aed:	49 2b c3             	sub    rax,r11
  656af0:	48 03 d1             	add    rdx,rcx
  656af3:	49 03 c6             	add    rax,r14
  656af6:	49 03 d1             	add    rdx,r9
  656af9:	4c 89 bd d0 f8 ff ff 	mov    QWORD PTR [rbp-0x730],r15
  656b00:	48 89 85 c8 f7 ff ff 	mov    QWORD PTR [rbp-0x838],rax
  656b07:	48 63 85 90 fd ff ff 	movsxd rax,DWORD PTR [rbp-0x270]
  656b0e:	4c 8b bd f0 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x810]
  656b15:	49 2b c7             	sub    rax,r15
  656b18:	48 89 95 e8 f8 ff ff 	mov    QWORD PTR [rbp-0x718],rdx
  656b1f:	48 ff c0             	inc    rax
  656b22:	48 8b 95 30 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x8d0]
  656b29:	48 89 85 30 fd ff ff 	mov    QWORD PTR [rbp-0x2d0],rax
  656b30:	89 85 a0 f7 ff ff    	mov    DWORD PTR [rbp-0x860],eax
  656b36:	83 e0 fc             	and    eax,0xfffffffc
  656b39:	4c 8d 14 d5 00 00 00 	lea    r10,[rdx*8+0x0]
  656b40:	00 
  656b41:	48 63 c0             	movsxd rax,eax
  656b44:	48 89 85 00 fe ff ff 	mov    QWORD PTR [rbp-0x200],rax
  656b4b:	48 8b 85 28 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x7d8]
  656b52:	49 2b c2             	sub    rax,r10
  656b55:	48 89 8d 20 f8 ff ff 	mov    QWORD PTR [rbp-0x7e0],rcx
  656b5c:	48 89 bd 10 f8 ff ff 	mov    QWORD PTR [rbp-0x7f0],rdi
  656b63:	4c 89 a5 d8 f7 ff ff 	mov    QWORD PTR [rbp-0x828],r12
  656b6a:	4c 8b ad b8 fa ff ff 	mov    r13,QWORD PTR [rbp-0x548]
  656b71:	4c 8d 0c 08          	lea    r9,[rax+rcx*1]
  656b75:	4d 2b c8             	sub    r9,r8
  656b78:	48 8b 8d f8 f7 ff ff 	mov    rcx,QWORD PTR [rbp-0x808]
  656b7f:	48 89 b5 00 f8 ff ff 	mov    QWORD PTR [rbp-0x800],rsi
  656b86:	4c 8b 95 a0 f4 ff ff 	mov    r10,QWORD PTR [rbp-0xb60]
  656b8d:	4c 89 9d e8 f7 ff ff 	mov    QWORD PTR [rbp-0x818],r11
  656b94:	49 03 f9             	add    rdi,r9
  656b97:	49 03 fe             	add    rdi,r14
  656b9a:	4f 8d 5c 2d 00       	lea    r11,[r13+r13*1+0x0]
  656b9f:	48 89 bd d0 f7 ff ff 	mov    QWORD PTR [rbp-0x830],rdi
  656ba6:	4a 8d 3c 31          	lea    rdi,[rcx+r14*1]
  656baa:	48 8b 8d 28 f7 ff ff 	mov    rcx,QWORD PTR [rbp-0x8d8]
  656bb1:	49 89 cc             	mov    r12,rcx
  656bb4:	4c 0f af a5 18 f9 ff 	imul   r12,QWORD PTR [rbp-0x6e8]
  656bbb:	ff 
  656bbc:	48 03 fe             	add    rdi,rsi
  656bbf:	4d 2b dc             	sub    r11,r12
  656bc2:	4c 03 cf             	add    r9,rdi
  656bc5:	4c 89 ef             	mov    rdi,r13
  656bc8:	4c 89 8d f0 f8 ff ff 	mov    QWORD PTR [rbp-0x710],r9
  656bcf:	49 2b fc             	sub    rdi,r12
  656bd2:	4c 8b 8d 70 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x690]
  656bd9:	4c 8b ad c0 f9 ff ff 	mov    r13,QWORD PTR [rbp-0x640]
  656be0:	4c 8b a5 b0 fa ff ff 	mov    r12,QWORD PTR [rbp-0x550]
  656be7:	c7 85 b8 f8 ff ff 00 	mov    DWORD PTR [rbp-0x748],0x0
  656bee:	00 00 00 
  656bf1:	4e 8d 04 08          	lea    r8,[rax+r9*1]
  656bf5:	48 89 85 28 f8 ff ff 	mov    QWORD PTR [rbp-0x7d8],rax
  656bfc:	4a 8d 34 07          	lea    rsi,[rdi+r8*1]
  656c00:	49 03 f2             	add    rsi,r10
  656c03:	4d 03 c3             	add    r8,r11
  656c06:	48 89 b5 f8 f8 ff ff 	mov    QWORD PTR [rbp-0x708],rsi
  656c0d:	48 89 d6             	mov    rsi,rdx
  656c10:	48 0f af b5 b8 f9 ff 	imul   rsi,QWORD PTR [rbp-0x648]
  656c17:	ff 
  656c18:	4d 03 c2             	add    r8,r10
  656c1b:	4c 2b d6             	sub    r10,rsi
  656c1e:	48 89 ce             	mov    rsi,rcx
  656c21:	48 f7 da             	neg    rdx
  656c24:	48 2b b5 e0 f7 ff ff 	sub    rsi,QWORD PTR [rbp-0x820]
  656c2b:	49 03 d7             	add    rdx,r15
  656c2e:	48 0f af b5 00 f9 ff 	imul   rsi,QWORD PTR [rbp-0x700]
  656c35:	ff 
  656c36:	48 0f af 8d 10 f9 ff 	imul   rcx,QWORD PTR [rbp-0x6f0]
  656c3d:	ff 
  656c3e:	49 03 f9             	add    rdi,r9
  656c41:	4d 03 cb             	add    r9,r11
  656c44:	49 89 d3             	mov    r11,rdx
  656c47:	4d 03 ca             	add    r9,r10
  656c4a:	4c 0f af 9d b0 f9 ff 	imul   r11,QWORD PTR [rbp-0x650]
  656c51:	ff 
  656c52:	48 0f af 95 a8 f9 ff 	imul   rdx,QWORD PTR [rbp-0x658]
  656c59:	ff 
  656c5a:	49 03 fa             	add    rdi,r10
  656c5d:	48 f7 d9             	neg    rcx
  656c60:	4c 8b 95 68 f9 ff ff 	mov    r10,QWORD PTR [rbp-0x698]
  656c67:	4d 03 ca             	add    r9,r10
  656c6a:	4c 03 d7             	add    r10,rdi
  656c6d:	48 8b bd 58 f9 ff ff 	mov    rdi,QWORD PTR [rbp-0x6a8]
  656c74:	49 89 ff             	mov    r15,rdi
  656c77:	4d 2b fd             	sub    r15,r13
  656c7a:	4d 2b ec             	sub    r13,r12
  656c7d:	4d 03 fc             	add    r15,r12
  656c80:	48 03 f8             	add    rdi,rax
  656c83:	4c 2b fe             	sub    r15,rsi
  656c86:	49 03 f5             	add    rsi,r13
  656c89:	4d 03 df             	add    r11,r15
  656c8c:	48 2b fe             	sub    rdi,rsi
  656c8f:	4c 8b bd 90 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb70]
  656c96:	48 03 8d e0 fb ff ff 	add    rcx,QWORD PTR [rbp-0x420]
  656c9d:	4c 89 9d 08 f9 ff ff 	mov    QWORD PTR [rbp-0x6f8],r11
  656ca4:	4e 8d 1c 38          	lea    r11,[rax+r15*1]
  656ca8:	4c 03 f9             	add    r15,rcx
  656cab:	4c 03 d9             	add    r11,rcx
  656cae:	48 8b 8d 98 f4 ff ff 	mov    rcx,QWORD PTR [rbp-0xb68]
  656cb5:	4c 03 f9             	add    r15,rcx
  656cb8:	49 03 d7             	add    rdx,r15
  656cbb:	4c 03 d9             	add    r11,rcx
  656cbe:	4c 89 9d 50 f9 ff ff 	mov    QWORD PTR [rbp-0x6b0],r11
  656cc5:	33 c9                	xor    ecx,ecx
  656cc7:	c4 41 2d 57 d2       	vxorpd ymm10,ymm10,ymm10
  656ccc:	44 8b a5 a0 f9 ff ff 	mov    r12d,DWORD PTR [rbp-0x660]
  656cd3:	4c 8b ad 78 fd ff ff 	mov    r13,QWORD PTR [rbp-0x288]
  656cda:	4c 8b bd 80 fd ff ff 	mov    r15,QWORD PTR [rbp-0x280]
  656ce1:	4c 8b 9d e0 fa ff ff 	mov    r11,QWORD PTR [rbp-0x520]
  656ce8:	8b b5 b8 f8 ff ff    	mov    esi,DWORD PTR [rbp-0x748]
  656cee:	48 8b 85 b0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x250]
  656cf5:	48 89 bd 58 f9 ff ff 	mov    QWORD PTR [rbp-0x6a8],rdi
  656cfc:	48 89 95 60 f9 ff ff 	mov    QWORD PTR [rbp-0x6a0],rdx
  656d03:	4c 89 95 68 f9 ff ff 	mov    QWORD PTR [rbp-0x698],r10
  656d0a:	4c 89 8d 70 f9 ff ff 	mov    QWORD PTR [rbp-0x690],r9
  656d11:	4c 89 85 78 f9 ff ff 	mov    QWORD PTR [rbp-0x688],r8
  656d18:	33 d2                	xor    edx,edx
  656d1a:	48 83 bd b8 fb ff ff 	cmp    QWORD PTR [rbp-0x448],0x0
  656d21:	00 
  656d22:	0f 8e e5 5b 00 00    	jle    65c90d <step3d_t_mod_mp_step3d_t_tile_+0x874d>
  656d28:	4c 8b a5 f0 f7 ff ff 	mov    r12,QWORD PTR [rbp-0x810]
  656d2f:	89 b5 b8 f8 ff ff    	mov    DWORD PTR [rbp-0x748],esi
  656d35:	4c 89 e6             	mov    rsi,r12
  656d38:	48 0f af b5 c8 fb ff 	imul   rsi,QWORD PTR [rbp-0x438]
  656d3f:	ff 
  656d40:	c5 fd 10 35 78 35 1f 	vmovupd ymm6,YMMWORD PTR [rip+0x1f3578]        # 84a2c0 <var$630.126.450+0x320>
  656d47:	00 
  656d48:	c5 f9 10 2d a0 4c 1f 	vmovupd xmm5,XMMWORD PTR [rip+0x1f4ca0]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  656d4f:	00 
  656d50:	c4 41 39 57 c0       	vxorpd xmm8,xmm8,xmm8
  656d55:	c5 fb 10 25 3b 54 1f 	vmovsd xmm4,QWORD PTR [rip+0x1f543b]        # 84c198 <__STRLITPACK_0.112+0x88>
  656d5c:	00 
  656d5d:	c5 f9 10 3d ab 4c 1f 	vmovupd xmm7,XMMWORD PTR [rip+0x1f4cab]        # 84ba10 <__STRLITPACK_19.34+0x30>
  656d64:	00 
  656d65:	c5 f9 10 1d b3 4c 1f 	vmovupd xmm3,XMMWORD PTR [rip+0x1f4cb3]        # 84ba20 <__STRLITPACK_19.34+0x40>
  656d6c:	00 
  656d6d:	4c 8b ad d8 fa ff ff 	mov    r13,QWORD PTR [rbp-0x528]
  656d74:	48 8b bd b0 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x750]
  656d7b:	4c 8b b5 18 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x7e8]
  656d82:	4c 2b b5 38 f7 ff ff 	sub    r14,QWORD PTR [rbp-0x8c8]
  656d89:	46 8b 44 af fc       	mov    r8d,DWORD PTR [rdi+r13*4-0x4]
  656d8e:	4c 8b bd 40 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x8c0]
  656d95:	4c 8b 95 60 f7 ff ff 	mov    r10,QWORD PTR [rbp-0x8a0]
  656d9c:	48 89 85 b0 fd ff ff 	mov    QWORD PTR [rbp-0x250],rax
  656da3:	45 8d 58 fe          	lea    r11d,[r8-0x2]
  656da7:	4d 63 c0             	movsxd r8,r8d
  656daa:	48 8b 85 b0 fb ff ff 	mov    rax,QWORD PTR [rbp-0x450]
  656db1:	48 d1 e8             	shr    rax,1
  656db4:	48 89 85 80 fb ff ff 	mov    QWORD PTR [rbp-0x480],rax
  656dbb:	4b 8d 04 fe          	lea    rax,[r14+r15*8]
  656dbf:	4c 8b b5 e0 f7 ff ff 	mov    r14,QWORD PTR [rbp-0x820]
  656dc6:	48 89 b5 b0 f4 ff ff 	mov    QWORD PTR [rbp-0xb50],rsi
  656dcd:	4c 89 f6             	mov    rsi,r14
  656dd0:	47 8b 4c aa fc       	mov    r9d,DWORD PTR [r10+r13*4-0x4]
  656dd5:	4d 8d 50 ff          	lea    r10,[r8-0x1]
  656dd9:	4c 89 85 50 fd ff ff 	mov    QWORD PTR [rbp-0x2b0],r8
  656de0:	41 83 e1 01          	and    r9d,0x1
  656de4:	48 8b bd 70 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x290]
  656deb:	44 89 8d d8 fb ff ff 	mov    DWORD PTR [rbp-0x428],r9d
  656df2:	49 89 f9             	mov    r9,rdi
  656df5:	49 0f af f8          	imul   rdi,r8
  656df9:	4d 0f af ca          	imul   r9,r10
  656dfd:	c5 fd 10 05 db 34 1f 	vmovupd ymm0,YMMWORD PTR [rip+0x1f34db]        # 84a2e0 <var$630.126.450+0x340>
  656e04:	00 
  656e05:	c5 fb 10 15 bb 56 1f 	vmovsd xmm2,QWORD PTR [rip+0x1f56bb]        # 84c4c8 <__STRLITPACK_0.112+0x3b8>
  656e0c:	00 
  656e0d:	c5 fb 10 0d bb 56 1f 	vmovsd xmm1,QWORD PTR [rip+0x1f56bb]        # 84c4d0 <__STRLITPACK_0.112+0x3c0>
  656e14:	00 
  656e15:	c5 7b 11 a5 a8 f8 ff 	vmovsd QWORD PTR [rbp-0x758],xmm12
  656e1c:	ff 
  656e1d:	4c 8b 85 80 f7 ff ff 	mov    r8,QWORD PTR [rbp-0x880]
  656e24:	49 0f af f0          	imul   rsi,r8
  656e28:	4c 0f af c1          	imul   r8,rcx
  656e2c:	4c 89 85 20 fb ff ff 	mov    QWORD PTR [rbp-0x4e0],r8
  656e33:	48 89 85 08 f7 ff ff 	mov    QWORD PTR [rbp-0x8f8],rax
  656e3a:	4c 89 f0             	mov    rax,r14
  656e3d:	4c 8b 85 20 f9 ff ff 	mov    r8,QWORD PTR [rbp-0x6e0]
  656e44:	4c 0f af c1          	imul   r8,rcx
  656e48:	4c 8b bd 98 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x868]
  656e4f:	49 0f af c7          	imul   rax,r15
  656e53:	4c 0f af f9          	imul   r15,rcx
  656e57:	48 89 b5 c0 f4 ff ff 	mov    QWORD PTR [rbp-0xb40],rsi
  656e5e:	4c 8b ad 98 fd ff ff 	mov    r13,QWORD PTR [rbp-0x268]
  656e65:	4d 03 cd             	add    r9,r13
  656e68:	48 8b b5 68 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x898]
  656e6f:	49 03 fd             	add    rdi,r13
  656e72:	49 89 f5             	mov    r13,rsi
  656e75:	48 89 8d 88 f9 ff ff 	mov    QWORD PTR [rbp-0x678],rcx
  656e7c:	4c 0f af e9          	imul   r13,rcx
  656e80:	4c 0f af f6          	imul   r14,rsi
  656e84:	48 8b 8d e8 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x718]
  656e8b:	48 89 85 c8 f4 ff ff 	mov    QWORD PTR [rbp-0xb38],rax
  656e92:	4c 89 bd 28 fb ff ff 	mov    QWORD PTR [rbp-0x4d8],r15
  656e99:	48 89 95 88 fb ff ff 	mov    QWORD PTR [rbp-0x478],rdx
  656ea0:	4a 8d 04 01          	lea    rax,[rcx+r8*1]
  656ea4:	48 8b 8d f0 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x710]
  656eab:	4c 89 e2             	mov    rdx,r12
  656eae:	48 0f af 95 c0 fb ff 	imul   rdx,QWORD PTR [rbp-0x440]
  656eb5:	ff 
  656eb6:	4c 89 8d d8 fd ff ff 	mov    QWORD PTR [rbp-0x228],r9
  656ebd:	4e 8d 3c 01          	lea    r15,[rcx+r8*1]
  656ec1:	4c 89 bd 88 fa ff ff 	mov    QWORD PTR [rbp-0x578],r15
  656ec8:	4c 8b bd 28 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x8d8]
  656ecf:	4c 0f af fe          	imul   r15,rsi
  656ed3:	44 8b 8d a0 f7 ff ff 	mov    r9d,DWORD PTR [rbp-0x860]
  656eda:	41 83 e1 fe          	and    r9d,0xfffffffe
  656ede:	4d 63 c9             	movsxd r9,r9d
  656ee1:	4c 89 8d c8 fd ff ff 	mov    QWORD PTR [rbp-0x238],r9
  656ee8:	4c 8b 8d 18 fc ff ff 	mov    r9,QWORD PTR [rbp-0x3e8]
  656eef:	48 89 85 90 fa ff ff 	mov    QWORD PTR [rbp-0x570],rax
  656ef6:	48 8b 85 70 f7 ff ff 	mov    rax,QWORD PTR [rbp-0x890]
  656efd:	48 8b b5 28 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x7d8]
  656f04:	4b 8d 0c 09          	lea    rcx,[r9+r9*1]
  656f08:	49 2b cf             	sub    rcx,r15
  656f0b:	48 89 95 a8 f4 ff ff 	mov    QWORD PTR [rbp-0xb58],rdx
  656f12:	48 8b 95 a0 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x260]
  656f19:	48 03 f0             	add    rsi,rax
  656f1c:	48 03 f1             	add    rsi,rcx
  656f1f:	4c 89 f1             	mov    rcx,r14
  656f22:	49 03 f6             	add    rsi,r14
  656f25:	49 f7 de             	neg    r14
  656f28:	49 03 f5             	add    rsi,r13
  656f2b:	4d 03 f7             	add    r14,r15
  656f2e:	48 89 b5 90 f4 ff ff 	mov    QWORD PTR [rbp-0xb70],rsi
  656f35:	49 f7 de             	neg    r14
  656f38:	48 8b b5 30 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x8d0]
  656f3f:	4c 0f af e2          	imul   r12,rdx
  656f43:	48 0f af f2          	imul   rsi,rdx
  656f47:	4d 63 db             	movsxd r11,r11d
  656f4a:	48 2b ce             	sub    rcx,rsi
  656f4d:	4c 89 9d a8 fa ff ff 	mov    QWORD PTR [rbp-0x558],r11
  656f54:	49 2b f4             	sub    rsi,r12
  656f57:	48 89 bd d0 fd ff ff 	mov    QWORD PTR [rbp-0x230],rdi
  656f5e:	4c 89 a5 b8 f4 ff ff 	mov    QWORD PTR [rbp-0xb48],r12
  656f65:	48 8b bd e8 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x818]
  656f6c:	4d 8d 5b ff          	lea    r11,[r11-0x1]
  656f70:	4c 89 9d 20 fc ff ff 	mov    QWORD PTR [rbp-0x3e0],r11
  656f77:	4e 8d 1c 48          	lea    r11,[rax+r9*2]
  656f7b:	4d 0f af ca          	imul   r9,r10
  656f7f:	4d 03 f3             	add    r14,r11
  656f82:	4d 2b df             	sub    r11,r15
  656f85:	4c 2b f6             	sub    r14,rsi
  656f88:	4c 03 d9             	add    r11,rcx
  656f8b:	4d 03 dc             	add    r11,r12
  656f8e:	49 2b c7             	sub    rax,r15
  656f91:	4d 03 dd             	add    r11,r13
  656f94:	48 03 c1             	add    rax,rcx
  656f97:	4d 03 cc             	add    r9,r12
  656f9a:	4c 89 9d c0 fc ff ff 	mov    QWORD PTR [rbp-0x340],r11
  656fa1:	49 8d 14 56          	lea    rdx,[r14+rdx*2]
  656fa5:	49 03 d5             	add    rdx,r13
  656fa8:	49 03 c1             	add    rax,r9
  656fab:	48 89 95 b8 fc ff ff 	mov    QWORD PTR [rbp-0x348],rdx
  656fb2:	49 03 c5             	add    rax,r13
  656fb5:	48 8b 95 08 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x7f8]
  656fbc:	4c 8b 8d 20 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x7e0]
  656fc3:	4d 89 cc             	mov    r12,r9
  656fc6:	48 2b bd 10 f8 ff ff 	sub    rdi,QWORD PTR [rbp-0x7f0]
  656fcd:	48 89 85 e0 fd ff ff 	mov    QWORD PTR [rbp-0x220],rax
  656fd4:	4c 8d 1c 52          	lea    r11,[rdx+rdx*2]
  656fd8:	49 2b d3             	sub    rdx,r11
  656fdb:	4c 2b e2             	sub    r12,rdx
  656fde:	4c 2b e7             	sub    r12,rdi
  656fe1:	48 8b 85 b0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x250]
  656fe8:	4c 89 ad b8 fd ff ff 	mov    QWORD PTR [rbp-0x248],r13
  656fef:	4c 8b b5 48 fd ff ff 	mov    r14,QWORD PTR [rbp-0x2b8]
  656ff6:	4c 89 bd d8 f4 ff ff 	mov    QWORD PTR [rbp-0xb28],r15
  656ffd:	4f 8d 2c 04          	lea    r13,[r12+r8*1]
  657001:	4c 89 ad 18 fb ff ff 	mov    QWORD PTR [rbp-0x4e8],r13
  657008:	4d 8d 2c 44          	lea    r13,[r12+rax*2]
  65700c:	4d 03 e8             	add    r13,r8
  65700f:	4d 89 f7             	mov    r15,r14
  657012:	4c 89 ad 38 fa ff ff 	mov    QWORD PTR [rbp-0x5c8],r13
  657019:	4d 2b de             	sub    r11,r14
  65701c:	4c 8b ad 50 fd ff ff 	mov    r13,QWORD PTR [rbp-0x2b0]
  657023:	4d 0f af fd          	imul   r15,r13
  657027:	48 8b b5 b0 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x850]
  65702e:	48 89 8d e0 f4 ff ff 	mov    QWORD PTR [rbp-0xb20],rcx
  657035:	48 8b 8d 28 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x6d8]
  65703c:	4c 03 f9             	add    r15,rcx
  65703f:	4c 89 95 20 f7 ff ff 	mov    QWORD PTR [rbp-0x8e0],r10
  657046:	4c 8d 24 16          	lea    r12,[rsi+rdx*1]
  65704a:	49 f7 dc             	neg    r12
  65704d:	48 8b b5 d8 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x828]
  657054:	4d 03 e1             	add    r12,r9
  657057:	4c 03 fe             	add    r15,rsi
  65705a:	4d 03 fc             	add    r15,r12
  65705d:	4d 03 f8             	add    r15,r8
  657060:	4c 89 bd 50 fb ff ff 	mov    QWORD PTR [rbp-0x4b0],r15
  657067:	4d 89 f7             	mov    r15,r14
  65706a:	4d 0f af fa          	imul   r15,r10
  65706e:	4c 03 f9             	add    r15,rcx
  657071:	4d 8d 55 fe          	lea    r10,[r13-0x2]
  657075:	4d 0f af d6          	imul   r10,r14
  657079:	4c 03 d1             	add    r10,rcx
  65707c:	4c 03 fe             	add    r15,rsi
  65707f:	4c 03 d6             	add    r10,rsi
  657082:	4d 03 fc             	add    r15,r12
  657085:	4d 03 e2             	add    r12,r10
  657088:	4d 03 f8             	add    r15,r8
  65708b:	4d 03 e0             	add    r12,r8
  65708e:	4c 89 a5 e8 fa ff ff 	mov    QWORD PTR [rbp-0x518],r12
  657095:	4c 8b 95 a8 f7 ff ff 	mov    r10,QWORD PTR [rbp-0x858]
  65709c:	4c 8b ad 28 f8 ff ff 	mov    r13,QWORD PTR [rbp-0x7d8]
  6570a3:	4c 8b a5 90 f7 ff ff 	mov    r12,QWORD PTR [rbp-0x870]
  6570aa:	4c 89 bd 48 fb ff ff 	mov    QWORD PTR [rbp-0x4b8],r15
  6570b1:	48 89 95 e8 f4 ff ff 	mov    QWORD PTR [rbp-0xb18],rdx
  6570b8:	4d 03 d5             	add    r10,r13
  6570bb:	48 89 bd d0 f4 ff ff 	mov    QWORD PTR [rbp-0xb30],rdi
  6570c2:	4f 8d 2c 1c          	lea    r13,[r12+r11*1]
  6570c6:	4d 03 d5             	add    r10,r13
  6570c9:	4c 8b ad 00 f8 ff ff 	mov    r13,QWORD PTR [rbp-0x800]
  6570d0:	4c 8b a5 f8 f7 ff ff 	mov    r12,QWORD PTR [rbp-0x808]
  6570d7:	4f 8d 7c 15 00       	lea    r15,[r13+r10*1+0x0]
  6570dc:	4d 03 fc             	add    r15,r12
  6570df:	4d 03 f8             	add    r15,r8
  6570e2:	4c 89 bd 50 fa ff ff 	mov    QWORD PTR [rbp-0x5b0],r15
  6570e9:	4f 8d 7c 1d 00       	lea    r15,[r13+r11*1+0x0]
  6570ee:	4c 8b ad c0 f7 ff ff 	mov    r13,QWORD PTR [rbp-0x840]
  6570f5:	4d 03 fd             	add    r15,r13
  6570f8:	4c 03 fe             	add    r15,rsi
  6570fb:	4c 03 f9             	add    r15,rcx
  6570fe:	4d 03 f8             	add    r15,r8
  657101:	4c 89 bd 58 fa ff ff 	mov    QWORD PTR [rbp-0x5a8],r15
  657108:	4f 8d 3c 36          	lea    r15,[r14+r14*1]
  65710c:	4d 2b f7             	sub    r14,r15
  65710f:	4c 03 f2             	add    r14,rdx
  657112:	49 f7 de             	neg    r14
  657115:	4d 03 f1             	add    r14,r9
  657118:	4c 2b f7             	sub    r14,rdi
  65711b:	4c 2b bd b8 f7 ff ff 	sub    r15,QWORD PTR [rbp-0x848]
  657122:	4f 8d 0c 06          	lea    r9,[r14+r8*1]
  657126:	4c 89 8d 10 fb ff ff 	mov    QWORD PTR [rbp-0x4f0],r9
  65712d:	4f 8d 0c 3a          	lea    r9,[r10+r15*1]
  657131:	4d 03 fb             	add    r15,r11
  657134:	4d 03 fd             	add    r15,r13
  657137:	4d 8d 34 46          	lea    r14,[r14+rax*2]
  65713b:	4c 03 fe             	add    r15,rsi
  65713e:	4d 03 cc             	add    r9,r12
  657141:	4c 03 f9             	add    r15,rcx
  657144:	4d 03 f0             	add    r14,r8
  657147:	4d 03 f8             	add    r15,r8
  65714a:	4d 03 c8             	add    r9,r8
  65714d:	4c 89 bd 20 fa ff ff 	mov    QWORD PTR [rbp-0x5e0],r15
  657154:	4c 8b bd 48 fd ff ff 	mov    r15,QWORD PTR [rbp-0x2b8]
  65715b:	4c 89 b5 28 fa ff ff 	mov    QWORD PTR [rbp-0x5d8],r14
  657162:	4d 89 fe             	mov    r14,r15
  657165:	4c 89 8d 48 fa ff ff 	mov    QWORD PTR [rbp-0x5b8],r9
  65716c:	4f 8d 0c 7f          	lea    r9,[r15+r15*2]
  657170:	4d 2b f1             	sub    r14,r9
  657173:	4c 03 f2             	add    r14,rdx
  657176:	49 f7 de             	neg    r14
  657179:	4c 03 b5 20 f8 ff ff 	add    r14,QWORD PTR [rbp-0x7e0]
  657180:	48 8b 95 b8 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x848]
  657187:	4c 2b f7             	sub    r14,rdi
  65718a:	4c 2b ca             	sub    r9,rdx
  65718d:	4b 8d 3c 06          	lea    rdi,[r14+r8*1]
  657191:	48 89 bd 08 fb ff ff 	mov    QWORD PTR [rbp-0x4f8],rdi
  657198:	4b 8d 3c 0a          	lea    rdi,[r10+r9*1]
  65719c:	4d 03 cb             	add    r9,r11
  65719f:	49 03 fc             	add    rdi,r12
  6571a2:	4d 8d 34 46          	lea    r14,[r14+rax*2]
  6571a6:	49 03 f8             	add    rdi,r8
  6571a9:	4d 03 f0             	add    r14,r8
  6571ac:	48 89 bd 40 fa ff ff 	mov    QWORD PTR [rbp-0x5c0],rdi
  6571b3:	4a 8d 3c bd 00 00 00 	lea    rdi,[r15*4+0x0]
  6571ba:	00 
  6571bb:	4c 89 b5 30 fa ff ff 	mov    QWORD PTR [rbp-0x5d0],r14
  6571c2:	49 89 fe             	mov    r14,rdi
  6571c5:	48 f7 df             	neg    rdi
  6571c8:	4c 2b f2             	sub    r14,rdx
  6571cb:	49 03 ff             	add    rdi,r15
  6571ce:	4d 03 de             	add    r11,r14
  6571d1:	48 8b 95 e8 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xb18]
  6571d8:	4d 03 cd             	add    r9,r13
  6571db:	48 03 d7             	add    rdx,rdi
  6571de:	4d 03 dd             	add    r11,r13
  6571e1:	48 f7 da             	neg    rdx
  6571e4:	4c 03 ce             	add    r9,rsi
  6571e7:	48 03 95 20 f8 ff ff 	add    rdx,QWORD PTR [rbp-0x7e0]
  6571ee:	4c 03 de             	add    r11,rsi
  6571f1:	48 2b 95 d0 f4 ff ff 	sub    rdx,QWORD PTR [rbp-0xb30]
  6571f8:	4c 03 c9             	add    r9,rcx
  6571fb:	48 8b b5 50 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x8b0]
  657202:	4c 03 d9             	add    r11,rcx
  657205:	4c 8b ad 58 f7 ff ff 	mov    r13,QWORD PTR [rbp-0x8a8]
  65720c:	49 2b f5             	sub    rsi,r13
  65720f:	4d 03 d6             	add    r10,r14
  657212:	48 8d 0c 42          	lea    rcx,[rdx+rax*2]
  657216:	48 8b 95 d8 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x528]
  65721d:	48 89 d7             	mov    rdi,rdx
  657220:	4c 0f af ea          	imul   r13,rdx
  657224:	48 c1 e7 05          	shl    rdi,0x5
  657228:	4d 03 d4             	add    r10,r12
  65722b:	48 03 fa             	add    rdi,rdx
  65722e:	49 03 f5             	add    rsi,r13
  657231:	48 c1 e7 05          	shl    rdi,0x5
  657235:	4d 03 c8             	add    r9,r8
  657238:	48 89 bd 90 f8 ff ff 	mov    QWORD PTR [rbp-0x770],rdi
  65723f:	4d 03 d0             	add    r10,r8
  657242:	48 8b bd 70 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x890]
  657249:	4d 03 d8             	add    r11,r8
  65724c:	4c 8b a5 18 fc ff ff 	mov    r12,QWORD PTR [rbp-0x3e8]
  657253:	4c 03 c1             	add    r8,rcx
  657256:	48 8b 95 e0 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xb20]
  65725d:	48 8d 85 78 fb ff ff 	lea    rax,[rbp-0x488]
  657264:	48 89 30             	mov    QWORD PTR [rax],rsi
  657267:	48 8b b5 b8 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb48]
  65726e:	4d 8d 2c 3c          	lea    r13,[r12+rdi*1]
  657272:	4c 2b ad d8 f4 ff ff 	sub    r13,QWORD PTR [rbp-0xb28]
  657279:	49 03 d5             	add    rdx,r13
  65727c:	48 03 f2             	add    rsi,rdx
  65727f:	48 8b bd b8 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x248]
  657286:	4c 8b ad 28 f7 ff ff 	mov    r13,QWORD PTR [rbp-0x8d8]
  65728d:	48 03 fe             	add    rdi,rsi
  657290:	4c 89 ee             	mov    rsi,r13
  657293:	44 8b b5 48 f7 ff ff 	mov    r14d,DWORD PTR [rbp-0x8b8]
  65729a:	8b 8d b8 f8 ff ff    	mov    ecx,DWORD PTR [rbp-0x748]
  6572a0:	48 0f af b5 98 f7 ff 	imul   rsi,QWORD PTR [rbp-0x868]
  6572a7:	ff 
  6572a8:	4c 0f af ad 80 f7 ff 	imul   r13,QWORD PTR [rbp-0x880]
  6572af:	ff 
  6572b0:	48 f7 de             	neg    rsi
  6572b3:	45 8d 3c 0e          	lea    r15d,[r14+rcx*1]
  6572b7:	4c 8b b5 30 f7 ff ff 	mov    r14,QWORD PTR [rbp-0x8d0]
  6572be:	4c 89 f2             	mov    rdx,r14
  6572c1:	48 8b 8d c0 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x440]
  6572c8:	49 f7 dd             	neg    r13
  6572cb:	48 0f af d1          	imul   rdx,rcx
  6572cf:	48 03 b5 78 f7 ff ff 	add    rsi,QWORD PTR [rbp-0x888]
  6572d6:	4c 8b a5 c8 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb38]
  6572dd:	44 89 bd 70 f8 ff ff 	mov    DWORD PTR [rbp-0x790],r15d
  6572e4:	4c 03 ad 88 f7 ff ff 	add    r13,QWORD PTR [rbp-0x878]
  6572eb:	4c 89 9d 08 fa ff ff 	mov    QWORD PTR [rbp-0x5f8],r11
  6572f2:	4e 8d 3c 26          	lea    r15,[rsi+r12*1]
  6572f6:	4c 2b e2             	sub    r12,rdx
  6572f9:	49 03 f4             	add    rsi,r12
  6572fc:	4c 8b a5 a8 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb58]
  657303:	49 2b d4             	sub    rdx,r12
  657306:	4c 2b fa             	sub    r15,rdx
  657309:	4c 8d 9d 28 fb ff ff 	lea    r11,[rbp-0x4d8]
  657310:	49 8b 13             	mov    rdx,QWORD PTR [r11]
  657313:	49 8d 0c 4c          	lea    rcx,[r12+rcx*2]
  657317:	48 03 f1             	add    rsi,rcx
  65731a:	4c 03 fa             	add    r15,rdx
  65731d:	48 8b 8d c8 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x438]
  657324:	48 03 d6             	add    rdx,rsi
  657327:	4c 0f af f1          	imul   r14,rcx
  65732b:	4c 89 bd 38 fb ff ff 	mov    QWORD PTR [rbp-0x4c8],r15
  657332:	4c 8b bd c0 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb40]
  657339:	49 89 13             	mov    QWORD PTR [r11],rdx
  65733c:	4c 8b a5 20 fb ff ff 	mov    r12,QWORD PTR [rbp-0x4e0]
  657343:	4c 8b 9d 30 fd ff ff 	mov    r11,QWORD PTR [rbp-0x2d0]
  65734a:	4b 8d 54 3d 00       	lea    rdx,[r13+r15*1+0x0]
  65734f:	4d 2b fe             	sub    r15,r14
  657352:	4d 03 ef             	add    r13,r15
  657355:	4c 8b bd b0 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb50]
  65735c:	4d 2b f7             	sub    r14,r15
  65735f:	49 2b d6             	sub    rdx,r14
  657362:	49 03 d4             	add    rdx,r12
  657365:	49 8d 34 4f          	lea    rsi,[r15+rcx*2]
  657369:	4c 03 ee             	add    r13,rsi
  65736c:	4d 03 e5             	add    r12,r13
  65736f:	4c 89 a5 20 fb ff ff 	mov    QWORD PTR [rbp-0x4e0],r12
  657376:	48 89 95 30 fb ff ff 	mov    QWORD PTR [rbp-0x4d0],rdx
  65737d:	48 8b 95 88 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x478]
  657384:	4c 8b b5 50 fd ff ff 	mov    r14,QWORD PTR [rbp-0x2b0]
  65738b:	4c 8b 20             	mov    r12,QWORD PTR [rax]
  65738e:	4c 8b ad 80 fb ff ff 	mov    r13,QWORD PTR [rbp-0x480]
  657395:	48 89 bd b8 fd ff ff 	mov    QWORD PTR [rbp-0x248],rdi
  65739c:	4c 89 85 00 fa ff ff 	mov    QWORD PTR [rbp-0x600],r8
  6573a3:	4c 89 95 10 fa ff ff 	mov    QWORD PTR [rbp-0x5f0],r10
  6573aa:	4c 89 8d 18 fa ff ff 	mov    QWORD PTR [rbp-0x5e8],r9
  6573b1:	48 83 bd a0 fd ff ff 	cmp    QWORD PTR [rbp-0x260],0x8
  6573b8:	08 
  6573b9:	0f 85 e8 01 00 00    	jne    6575a7 <step3d_t_mod_mp_step3d_t_tile_+0x33e7>
  6573bf:	48 83 bd b0 fd ff ff 	cmp    QWORD PTR [rbp-0x250],0x8
  6573c6:	08 
  6573c7:	0f 85 da 01 00 00    	jne    6575a7 <step3d_t_mod_mp_step3d_t_tile_+0x33e7>
  6573cd:	45 33 c9             	xor    r9d,r9d
  6573d0:	4c 8b 85 c8 fa ff ff 	mov    r8,QWORD PTR [rbp-0x538]
  6573d7:	33 f6                	xor    esi,esi
  6573d9:	48 8b bd 90 f4 ff ff 	mov    rdi,QWORD PTR [rbp-0xb70]
  6573e0:	48 83 bd a8 fa ff ff 	cmp    QWORD PTR [rbp-0x558],0x2
  6573e7:	02 
  6573e8:	0f 8c 32 6b 00 00    	jl     65df20 <step3d_t_mod_mp_step3d_t_tile_+0x9d60>
  6573ee:	48 8b 85 98 fb ff ff 	mov    rax,QWORD PTR [rbp-0x468]
  6573f5:	48 0f af c2          	imul   rax,rdx
  6573f9:	48 8b 8d 50 fa ff ff 	mov    rcx,QWORD PTR [rbp-0x5b0]
  657400:	4c 8b 95 48 fa ff ff 	mov    r10,QWORD PTR [rbp-0x5b8]
  657407:	4c 8b b5 40 fa ff ff 	mov    r14,QWORD PTR [rbp-0x5c0]
  65740e:	48 89 95 88 fb ff ff 	mov    QWORD PTR [rbp-0x478],rdx
  657415:	48 03 c8             	add    rcx,rax
  657418:	4d 8d 3c 02          	lea    r15,[r10+rax*1]
  65741c:	4c 89 bd b0 fc ff ff 	mov    QWORD PTR [rbp-0x350],r15
  657423:	4d 8d 14 06          	lea    r10,[r14+rax*1]
  657427:	48 03 85 10 fa ff ff 	add    rax,QWORD PTR [rbp-0x5f0]
  65742e:	48 89 85 a0 fc ff ff 	mov    QWORD PTR [rbp-0x360],rax
  657435:	4c 89 95 a8 fc ff ff 	mov    QWORD PTR [rbp-0x358],r10
  65743c:	8b 85 90 fd ff ff    	mov    eax,DWORD PTR [rbp-0x270]
  657442:	3b 85 88 fd ff ff    	cmp    eax,DWORD PTR [rbp-0x278]
  657448:	0f 8c 2f 01 00 00    	jl     65757d <step3d_t_mod_mp_step3d_t_tile_+0x33bd>
  65744e:	49 83 fb 04          	cmp    r11,0x4
  657452:	0f 8c a7 6a 00 00    	jl     65deff <step3d_t_mod_mp_step3d_t_tile_+0x9d3f>
  657458:	4c 8b ad a0 fc ff ff 	mov    r13,QWORD PTR [rbp-0x360]
  65745f:	45 33 ff             	xor    r15d,r15d
  657462:	4c 8b a5 a8 fc ff ff 	mov    r12,QWORD PTR [rbp-0x358]
  657469:	48 8b 95 b0 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x350]
  657470:	48 8b 85 00 fe ff ff 	mov    rax,QWORD PTR [rbp-0x200]
  657477:	4d 8d 74 35 00       	lea    r14,[r13+rsi*1+0x0]
  65747c:	49 89 c3             	mov    r11,rax
  65747f:	4c 8d 2c 31          	lea    r13,[rcx+rsi*1]
  657483:	4c 03 e6             	add    r12,rsi
  657486:	4c 8d 14 32          	lea    r10,[rdx+rsi*1]
  65748a:	4c 89 c2             	mov    rdx,r8
  65748d:	c4 01 7d 10 24 fa    	vmovupd ymm12,YMMWORD PTR [r10+r15*8]
  657493:	c4 01 7d 10 74 fd 00 	vmovupd ymm14,YMMWORD PTR [r13+r15*8+0x0]
  65749a:	c4 01 1d 58 2c fc    	vaddpd ymm13,ymm12,YMMWORD PTR [r12+r15*8]
  6574a0:	c4 01 0d 58 3c fe    	vaddpd ymm15,ymm14,YMMWORD PTR [r14+r15*8]
  6574a6:	c4 41 4d 59 e5       	vmulpd ymm12,ymm6,ymm13
  6574ab:	c4 41 7d 59 ef       	vmulpd ymm13,ymm0,ymm15
  6574b0:	c4 41 1d 5c f5       	vsubpd ymm14,ymm12,ymm13
  6574b5:	c4 21 0d 59 3c ff    	vmulpd ymm15,ymm14,YMMWORD PTR [rdi+r15*8]
  6574bb:	49 83 c7 04          	add    r15,0x4
  6574bf:	c5 7d 11 7a 10       	vmovupd YMMWORD PTR [rdx+0x10],ymm15
  6574c4:	48 83 c2 20          	add    rdx,0x20
  6574c8:	4d 3b fb             	cmp    r15,r11
  6574cb:	72 c0                	jb     65748d <step3d_t_mod_mp_step3d_t_tile_+0x32cd>
  6574cd:	4c 8b 9d 30 fd ff ff 	mov    r11,QWORD PTR [rbp-0x2d0]
  6574d4:	4c 8d 34 c5 00 00 00 	lea    r14,[rax*8+0x0]
  6574db:	00 
  6574dc:	49 3b c3             	cmp    rax,r11
  6574df:	73 72                	jae    657553 <step3d_t_mod_mp_step3d_t_tile_+0x3393>
  6574e1:	4c 8b 95 a0 fc ff ff 	mov    r10,QWORD PTR [rbp-0x360]
  6574e8:	4d 8d 2c c0          	lea    r13,[r8+rax*8]
  6574ec:	48 8b 95 a8 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x358]
  6574f3:	4c 8b bd b0 fc ff ff 	mov    r15,QWORD PTR [rbp-0x350]
  6574fa:	4d 8d 24 32          	lea    r12,[r10+rsi*1]
  6574fe:	4c 8d 14 31          	lea    r10,[rcx+rsi*1]
  657502:	48 03 d6             	add    rdx,rsi
  657505:	4c 03 fe             	add    r15,rsi
  657508:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  65750f:	00 
  657510:	c4 01 7b 10 24 3e    	vmovsd xmm12,QWORD PTR [r14+r15*1]
  657516:	48 ff c0             	inc    rax
  657519:	c4 01 7b 10 34 16    	vmovsd xmm14,QWORD PTR [r14+r10*1]
  65751f:	c4 41 1b 58 2c 16    	vaddsd xmm13,xmm12,QWORD PTR [r14+rdx*1]
  657525:	c4 01 0b 58 3c 26    	vaddsd xmm15,xmm14,QWORD PTR [r14+r12*1]
  65752b:	c4 41 6b 59 e5       	vmulsd xmm12,xmm2,xmm13
  657530:	c4 41 73 59 ef       	vmulsd xmm13,xmm1,xmm15
  657535:	c4 41 1b 5c f5       	vsubsd xmm14,xmm12,xmm13
  65753a:	c4 41 0b 59 3c 3e    	vmulsd xmm15,xmm14,QWORD PTR [r14+rdi*1]
  657540:	49 83 c6 08          	add    r14,0x8
  657544:	c4 41 7b 11 7d 10    	vmovsd QWORD PTR [r13+0x10],xmm15
  65754a:	49 83 c5 08          	add    r13,0x8
  65754e:	49 3b c3             	cmp    rax,r11
  657551:	72 bd                	jb     657510 <step3d_t_mod_mp_step3d_t_tile_+0x3350>
  657553:	49 ff c1             	inc    r9
  657556:	4c 03 85 70 fd ff ff 	add    r8,QWORD PTR [rbp-0x290]
  65755d:	48 03 bd 18 fc ff ff 	add    rdi,QWORD PTR [rbp-0x3e8]
  657564:	48 03 b5 48 fd ff ff 	add    rsi,QWORD PTR [rbp-0x2b8]
  65756b:	4c 3b 8d 20 fc ff ff 	cmp    r9,QWORD PTR [rbp-0x3e0]
  657572:	0f 82 c4 fe ff ff    	jb     65743c <step3d_t_mod_mp_step3d_t_tile_+0x327c>
  657578:	e9 24 47 00 00       	jmp    65bca1 <step3d_t_mod_mp_step3d_t_tile_+0x7ae1>
  65757d:	49 ff c1             	inc    r9
  657580:	4c 03 85 70 fd ff ff 	add    r8,QWORD PTR [rbp-0x290]
  657587:	48 03 bd 18 fc ff ff 	add    rdi,QWORD PTR [rbp-0x3e8]
  65758e:	48 03 b5 48 fd ff ff 	add    rsi,QWORD PTR [rbp-0x2b8]
  657595:	4c 3b 8d 20 fc ff ff 	cmp    r9,QWORD PTR [rbp-0x3e0]
  65759c:	0f 82 9a fe ff ff    	jb     65743c <step3d_t_mod_mp_step3d_t_tile_+0x327c>
  6575a2:	e9 5f 69 00 00       	jmp    65df06 <step3d_t_mod_mp_step3d_t_tile_+0x9d46>
  6575a7:	33 f6                	xor    esi,esi
  6575a9:	33 ff                	xor    edi,edi
  6575ab:	48 8b 8d c8 fa ff ff 	mov    rcx,QWORD PTR [rbp-0x538]
  6575b2:	33 c0                	xor    eax,eax
  6575b4:	48 83 bd a8 fa ff ff 	cmp    QWORD PTR [rbp-0x558],0x2
  6575bb:	02 
  6575bc:	0f 8c 5e 69 00 00    	jl     65df20 <step3d_t_mod_mp_step3d_t_tile_+0x9d60>
  6575c2:	4c 8b b5 98 fb ff ff 	mov    r14,QWORD PTR [rbp-0x468]
  6575c9:	4c 0f af f2          	imul   r14,rdx
  6575cd:	4c 8b 8d 20 fa ff ff 	mov    r9,QWORD PTR [rbp-0x5e0]
  6575d4:	4c 8b bd 18 fa ff ff 	mov    r15,QWORD PTR [rbp-0x5e8]
  6575db:	4c 8b 95 58 fa ff ff 	mov    r10,QWORD PTR [rbp-0x5a8]
  6575e2:	48 89 95 88 fb ff ff 	mov    QWORD PTR [rbp-0x478],rdx
  6575e9:	4f 8d 04 31          	lea    r8,[r9+r14*1]
  6575ed:	4c 89 85 48 fc ff ff 	mov    QWORD PTR [rbp-0x3b8],r8
  6575f4:	4f 8d 0c 37          	lea    r9,[r15+r14*1]
  6575f8:	4c 8b bd 00 fa ff ff 	mov    r15,QWORD PTR [rbp-0x600]
  6575ff:	4d 03 d6             	add    r10,r14
  657602:	4c 8b 85 08 fa ff ff 	mov    r8,QWORD PTR [rbp-0x5f8]
  657609:	4c 89 8d 80 fc ff ff 	mov    QWORD PTR [rbp-0x380],r9
  657610:	4c 89 95 78 fc ff ff 	mov    QWORD PTR [rbp-0x388],r10
  657617:	4d 03 fe             	add    r15,r14
  65761a:	4c 89 bd 40 fc ff ff 	mov    QWORD PTR [rbp-0x3c0],r15
  657621:	4d 03 c6             	add    r8,r14
  657624:	4c 8b bd 38 fa ff ff 	mov    r15,QWORD PTR [rbp-0x5c8]
  65762b:	4c 89 85 70 fc ff ff 	mov    QWORD PTR [rbp-0x390],r8
  657632:	4d 03 fe             	add    r15,r14
  657635:	4c 89 bd 38 fc ff ff 	mov    QWORD PTR [rbp-0x3c8],r15
  65763c:	4c 8b bd 30 fa ff ff 	mov    r15,QWORD PTR [rbp-0x5d0]
  657643:	4d 03 fe             	add    r15,r14
  657646:	4c 03 b5 28 fa ff ff 	add    r14,QWORD PTR [rbp-0x5d8]
  65764d:	4c 89 bd 30 fc ff ff 	mov    QWORD PTR [rbp-0x3d0],r15
  657654:	4c 89 b5 68 fc ff ff 	mov    QWORD PTR [rbp-0x398],r14
  65765b:	8b 95 90 fd ff ff    	mov    edx,DWORD PTR [rbp-0x270]
  657661:	3b 95 88 fd ff ff    	cmp    edx,DWORD PTR [rbp-0x278]
  657667:	0f 8c 0b 03 00 00    	jl     657978 <step3d_t_mod_mp_step3d_t_tile_+0x37b8>
  65766d:	48 83 bd 30 fd ff ff 	cmp    QWORD PTR [rbp-0x2d0],0x4
  657674:	04 
  657675:	0f 8c dd 68 00 00    	jl     65df58 <step3d_t_mod_mp_step3d_t_tile_+0x9d98>
  65767b:	4c 8b 85 40 fc ff ff 	mov    r8,QWORD PTR [rbp-0x3c0]
  657682:	45 33 ff             	xor    r15d,r15d
  657685:	4c 8b b5 c0 fc ff ff 	mov    r14,QWORD PTR [rbp-0x340]
  65768c:	4c 8b ad 78 fc ff ff 	mov    r13,QWORD PTR [rbp-0x388]
  657693:	4c 8b a5 48 fc ff ff 	mov    r12,QWORD PTR [rbp-0x3b8]
  65769a:	4c 03 c0             	add    r8,rax
  65769d:	4c 89 85 20 fe ff ff 	mov    QWORD PTR [rbp-0x1e0],r8
  6576a4:	4c 03 f7             	add    r14,rdi
  6576a7:	4c 8b 85 38 fc ff ff 	mov    r8,QWORD PTR [rbp-0x3c8]
  6576ae:	4c 03 e8             	add    r13,rax
  6576b1:	4c 8b 9d 80 fc ff ff 	mov    r11,QWORD PTR [rbp-0x380]
  6576b8:	4c 03 e0             	add    r12,rax
  6576bb:	4c 8b 95 70 fc ff ff 	mov    r10,QWORD PTR [rbp-0x390]
  6576c2:	4c 8b 8d b8 fc ff ff 	mov    r9,QWORD PTR [rbp-0x348]
  6576c9:	4c 03 c0             	add    r8,rax
  6576cc:	4c 89 85 18 fe ff ff 	mov    QWORD PTR [rbp-0x1e8],r8
  6576d3:	4c 03 d8             	add    r11,rax
  6576d6:	4c 8b 85 30 fc ff ff 	mov    r8,QWORD PTR [rbp-0x3d0]
  6576dd:	4c 03 d0             	add    r10,rax
  6576e0:	48 8b 95 00 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x200]
  6576e7:	4c 03 cf             	add    r9,rdi
  6576ea:	48 89 8d 88 fc ff ff 	mov    QWORD PTR [rbp-0x378],rcx
  6576f1:	48 89 95 90 fc ff ff 	mov    QWORD PTR [rbp-0x370],rdx
  6576f8:	4c 03 c0             	add    r8,rax
  6576fb:	4c 89 85 10 fe ff ff 	mov    QWORD PTR [rbp-0x1f0],r8
  657702:	4c 8b 85 68 fc ff ff 	mov    r8,QWORD PTR [rbp-0x398]
  657709:	48 89 85 98 fc ff ff 	mov    QWORD PTR [rbp-0x368],rax
  657710:	48 89 8d 58 fc ff ff 	mov    QWORD PTR [rbp-0x3a8],rcx
  657717:	48 89 b5 50 fc ff ff 	mov    QWORD PTR [rbp-0x3b0],rsi
  65771e:	4c 03 c0             	add    r8,rax
  657721:	4c 89 85 08 fe ff ff 	mov    QWORD PTR [rbp-0x1f8],r8
  657728:	45 33 c0             	xor    r8d,r8d
  65772b:	48 89 bd 60 fc ff ff 	mov    QWORD PTR [rbp-0x3a0],rdi
  657732:	48 8b 85 88 fc ff ff 	mov    rax,QWORD PTR [rbp-0x378]
  657739:	4c 89 c2             	mov    rdx,r8
  65773c:	48 8b 8d a0 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x260]
  657743:	48 8b b5 b0 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x250]
  65774a:	49 83 c7 04          	add    r15,0x4
  65774e:	4b 8d 3c 06          	lea    rdi,[r14+r8*1]
  657752:	c5 7b 10 27          	vmovsd xmm12,QWORD PTR [rdi]
  657756:	c5 19 16 2c 0f       	vmovhpd xmm13,xmm12,QWORD PTR [rdi+rcx*1]
  65775b:	49 8d 3c 14          	lea    rdi,[r12+rdx*1]
  65775f:	c5 7b 10 3f          	vmovsd xmm15,QWORD PTR [rdi]
  657763:	c5 01 16 24 37       	vmovhpd xmm12,xmm15,QWORD PTR [rdi+rsi*1]
  657768:	49 8d 3c 13          	lea    rdi,[r11+rdx*1]
  65776c:	c5 7b 10 37          	vmovsd xmm14,QWORD PTR [rdi]
  657770:	c5 09 16 3c 37       	vmovhpd xmm15,xmm14,QWORD PTR [rdi+rsi*1]
  657775:	49 8d 7c 15 00       	lea    rdi,[r13+rdx*1+0x0]
  65777a:	c4 41 19 58 f7       	vaddpd xmm14,xmm12,xmm15
  65777f:	c5 7b 10 27          	vmovsd xmm12,QWORD PTR [rdi]
  657783:	c5 19 16 3c 37       	vmovhpd xmm15,xmm12,QWORD PTR [rdi+rsi*1]
  657788:	49 8d 3c 12          	lea    rdi,[r10+rdx*1]
  65778c:	c5 7b 10 27          	vmovsd xmm12,QWORD PTR [rdi]
  657790:	c5 19 16 24 37       	vmovhpd xmm12,xmm12,QWORD PTR [rdi+rsi*1]
  657795:	4b 8d 3c 01          	lea    rdi,[r9+r8*1]
  657799:	c4 41 01 58 fc       	vaddpd xmm15,xmm15,xmm12
  65779e:	c4 41 41 59 f6       	vmulpd xmm14,xmm7,xmm14
  6577a3:	c4 41 61 59 e7       	vmulpd xmm12,xmm3,xmm15
  6577a8:	c4 41 09 5c f4       	vsubpd xmm14,xmm14,xmm12
  6577ad:	c4 41 11 59 ee       	vmulpd xmm13,xmm13,xmm14
  6577b2:	c5 7b 10 37          	vmovsd xmm14,QWORD PTR [rdi]
  6577b6:	4d 8d 04 88          	lea    r8,[r8+rcx*4]
  6577ba:	c5 09 16 34 0f       	vmovhpd xmm14,xmm14,QWORD PTR [rdi+rcx*1]
  6577bf:	48 8b bd 08 fe ff ff 	mov    rdi,QWORD PTR [rbp-0x1f8]
  6577c6:	c5 79 11 68 10       	vmovupd XMMWORD PTR [rax+0x10],xmm13
  6577cb:	48 03 fa             	add    rdi,rdx
  6577ce:	c5 7b 10 2f          	vmovsd xmm13,QWORD PTR [rdi]
  6577d2:	c5 11 16 3c 37       	vmovhpd xmm15,xmm13,QWORD PTR [rdi+rsi*1]
  6577d7:	48 8b bd 10 fe ff ff 	mov    rdi,QWORD PTR [rbp-0x1f0]
  6577de:	48 03 fa             	add    rdi,rdx
  6577e1:	c5 7b 10 27          	vmovsd xmm12,QWORD PTR [rdi]
  6577e5:	c5 19 16 2c 37       	vmovhpd xmm13,xmm12,QWORD PTR [rdi+rsi*1]
  6577ea:	c4 41 01 58 e5       	vaddpd xmm12,xmm15,xmm13
  6577ef:	48 8b bd 18 fe ff ff 	mov    rdi,QWORD PTR [rbp-0x1e8]
  6577f6:	c4 41 41 59 ec       	vmulpd xmm13,xmm7,xmm12
  6577fb:	48 03 fa             	add    rdi,rdx
  6577fe:	c5 7b 10 3f          	vmovsd xmm15,QWORD PTR [rdi]
  657802:	c5 01 16 24 37       	vmovhpd xmm12,xmm15,QWORD PTR [rdi+rsi*1]
  657807:	48 8b bd 20 fe ff ff 	mov    rdi,QWORD PTR [rbp-0x1e0]
  65780e:	48 03 fa             	add    rdi,rdx
  657811:	c5 7b 10 3f          	vmovsd xmm15,QWORD PTR [rdi]
  657815:	48 8d 14 b2          	lea    rdx,[rdx+rsi*4]
  657819:	c5 01 16 3c 37       	vmovhpd xmm15,xmm15,QWORD PTR [rdi+rsi*1]
  65781e:	c4 41 19 58 e7       	vaddpd xmm12,xmm12,xmm15
  657823:	c4 41 61 59 e4       	vmulpd xmm12,xmm3,xmm12
  657828:	c4 41 11 5c ec       	vsubpd xmm13,xmm13,xmm12
  65782d:	c4 41 09 59 f5       	vmulpd xmm14,xmm14,xmm13
  657832:	c5 79 11 70 20       	vmovupd XMMWORD PTR [rax+0x20],xmm14
  657837:	48 83 c0 20          	add    rax,0x20
  65783b:	4c 3b bd 00 fe ff ff 	cmp    r15,QWORD PTR [rbp-0x200]
  657842:	0f 82 02 ff ff ff    	jb     65774a <step3d_t_mod_mp_step3d_t_tile_+0x358a>
  657848:	48 8b 95 90 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x370]
  65784f:	48 8b 85 98 fc ff ff 	mov    rax,QWORD PTR [rbp-0x368]
  657856:	48 8b bd 60 fc ff ff 	mov    rdi,QWORD PTR [rbp-0x3a0]
  65785d:	48 8b 8d 58 fc ff ff 	mov    rcx,QWORD PTR [rbp-0x3a8]
  657864:	48 8b b5 50 fc ff ff 	mov    rsi,QWORD PTR [rbp-0x3b0]
  65786b:	4c 8b ad b0 fd ff ff 	mov    r13,QWORD PTR [rbp-0x250]
  657872:	4c 8b bd a0 fd ff ff 	mov    r15,QWORD PTR [rbp-0x260]
  657879:	4c 0f af ea          	imul   r13,rdx
  65787d:	4c 0f af fa          	imul   r15,rdx
  657881:	48 3b 95 30 fd ff ff 	cmp    rdx,QWORD PTR [rbp-0x2d0]
  657888:	0f 83 c0 00 00 00    	jae    65794e <step3d_t_mod_mp_step3d_t_tile_+0x378e>
  65788e:	4c 8b a5 c0 fc ff ff 	mov    r12,QWORD PTR [rbp-0x340]
  657895:	4c 8d 34 d1          	lea    r14,[rcx+rdx*8]
  657899:	4c 8b 9d 78 fc ff ff 	mov    r11,QWORD PTR [rbp-0x388]
  6578a0:	4c 8b 95 48 fc ff ff 	mov    r10,QWORD PTR [rbp-0x3b8]
  6578a7:	4c 8b 8d 80 fc ff ff 	mov    r9,QWORD PTR [rbp-0x380]
  6578ae:	4c 03 e7             	add    r12,rdi
  6578b1:	4c 8b 85 70 fc ff ff 	mov    r8,QWORD PTR [rbp-0x390]
  6578b8:	4c 03 d8             	add    r11,rax
  6578bb:	48 89 bd 60 fc ff ff 	mov    QWORD PTR [rbp-0x3a0],rdi
  6578c2:	4c 03 d0             	add    r10,rax
  6578c5:	48 89 8d 58 fc ff ff 	mov    QWORD PTR [rbp-0x3a8],rcx
  6578cc:	4c 03 c8             	add    r9,rax
  6578cf:	48 89 b5 50 fc ff ff 	mov    QWORD PTR [rbp-0x3b0],rsi
  6578d6:	4c 03 c0             	add    r8,rax
  6578d9:	48 8b 8d 30 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x2d0]
  6578e0:	48 8b b5 a0 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x260]
  6578e7:	48 8b bd b0 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x250]
  6578ee:	66 90                	xchg   ax,ax
  6578f0:	c4 01 7b 10 64 15 00 	vmovsd xmm12,QWORD PTR [r13+r10*1+0x0]
  6578f7:	48 ff c2             	inc    rdx
  6578fa:	c4 01 7b 10 74 1d 00 	vmovsd xmm14,QWORD PTR [r13+r11*1+0x0]
  657901:	c4 01 1b 58 6c 0d 00 	vaddsd xmm13,xmm12,QWORD PTR [r13+r9*1+0x0]
  657908:	c4 01 0b 58 7c 05 00 	vaddsd xmm15,xmm14,QWORD PTR [r13+r8*1+0x0]
  65790f:	c4 41 6b 59 e5       	vmulsd xmm12,xmm2,xmm13
  657914:	c4 41 73 59 ef       	vmulsd xmm13,xmm1,xmm15
  657919:	4c 03 ef             	add    r13,rdi
  65791c:	c4 41 1b 5c f5       	vsubsd xmm14,xmm12,xmm13
  657921:	c4 01 0b 59 3c 27    	vmulsd xmm15,xmm14,QWORD PTR [r15+r12*1]
  657927:	4c 03 fe             	add    r15,rsi
  65792a:	c4 41 7b 11 7e 10    	vmovsd QWORD PTR [r14+0x10],xmm15
  657930:	49 83 c6 08          	add    r14,0x8
  657934:	48 3b d1             	cmp    rdx,rcx
  657937:	72 b7                	jb     6578f0 <step3d_t_mod_mp_step3d_t_tile_+0x3730>
  657939:	48 8b bd 60 fc ff ff 	mov    rdi,QWORD PTR [rbp-0x3a0]
  657940:	48 8b 8d 58 fc ff ff 	mov    rcx,QWORD PTR [rbp-0x3a8]
  657947:	48 8b b5 50 fc ff ff 	mov    rsi,QWORD PTR [rbp-0x3b0]
  65794e:	48 ff c6             	inc    rsi
  657951:	48 03 8d 70 fd ff ff 	add    rcx,QWORD PTR [rbp-0x290]
  657958:	48 03 bd 18 fc ff ff 	add    rdi,QWORD PTR [rbp-0x3e8]
  65795f:	48 03 85 48 fd ff ff 	add    rax,QWORD PTR [rbp-0x2b8]
  657966:	48 3b b5 20 fc ff ff 	cmp    rsi,QWORD PTR [rbp-0x3e0]
  65796d:	0f 82 e8 fc ff ff    	jb     65765b <step3d_t_mod_mp_step3d_t_tile_+0x349b>
  657973:	e9 bf 65 00 00       	jmp    65df37 <step3d_t_mod_mp_step3d_t_tile_+0x9d77>
  657978:	48 ff c6             	inc    rsi
  65797b:	48 03 8d 70 fd ff ff 	add    rcx,QWORD PTR [rbp-0x290]
  657982:	48 03 bd 18 fc ff ff 	add    rdi,QWORD PTR [rbp-0x3e8]
  657989:	48 03 85 48 fd ff ff 	add    rax,QWORD PTR [rbp-0x2b8]
  657990:	48 3b b5 20 fc ff ff 	cmp    rsi,QWORD PTR [rbp-0x3e0]
  657997:	0f 82 be fc ff ff    	jb     65765b <step3d_t_mod_mp_step3d_t_tile_+0x349b>
  65799d:	e9 bd 65 00 00       	jmp    65df5f <step3d_t_mod_mp_step3d_t_tile_+0x9d9f>
  6579a2:	53                   	push   rbx
  6579a3:	48 89 e3             	mov    rbx,rsp
  6579a6:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
  6579aa:	55                   	push   rbp
  6579ab:	55                   	push   rbp
  6579ac:	48 8b 6b 08          	mov    rbp,QWORD PTR [rbx+0x8]
  6579b0:	48 89 6c 24 08       	mov    QWORD PTR [rsp+0x8],rbp
  6579b5:	48 89 e5             	mov    rbp,rsp
  6579b8:	48 81 ec 70 0b 00 00 	sub    rsp,0xb70
  6579bf:	4c 89 ad 40 f9 ff ff 	mov    QWORD PTR [rbp-0x6c0],r13
  6579c6:	4c 8b 6b 38          	mov    r13,QWORD PTR [rbx+0x38]
  6579ca:	48 89 95 18 f9 ff ff 	mov    QWORD PTR [rbp-0x6e8],rdx
  6579d1:	48 8b 53 10          	mov    rdx,QWORD PTR [rbx+0x10]
  6579d5:	4c 89 bd 30 f9 ff ff 	mov    QWORD PTR [rbp-0x6d0],r15
  6579dc:	4c 8b 7b 30          	mov    r15,QWORD PTR [rbx+0x30]
  6579e0:	45 8b 6d 00          	mov    r13d,DWORD PTR [r13+0x0]
  6579e4:	44 89 ad 28 fe ff ff 	mov    DWORD PTR [rbp-0x1d8],r13d
  6579eb:	4c 89 a5 48 f9 ff ff 	mov    QWORD PTR [rbp-0x6b8],r12
  6579f2:	4c 63 2a             	movsxd r13,DWORD PTR [rdx]
  6579f5:	4c 8b 5b 20          	mov    r11,QWORD PTR [rbx+0x20]
  6579f9:	4c 8b 63 40          	mov    r12,QWORD PTR [rbx+0x40]
  6579fd:	48 8b 73 48          	mov    rsi,QWORD PTR [rbx+0x48]
  657a01:	8b 11                	mov    edx,DWORD PTR [rcx]
  657a03:	48 8b 4b 50          	mov    rcx,QWORD PTR [rbx+0x50]
  657a07:	45 8b 3f             	mov    r15d,DWORD PTR [r15]
  657a0a:	4c 89 b5 38 f9 ff ff 	mov    QWORD PTR [rbp-0x6c8],r14
  657a11:	4c 8b 73 18          	mov    r14,QWORD PTR [rbx+0x18]
  657a15:	8b 07                	mov    eax,DWORD PTR [rdi]
  657a17:	44 89 bd 58 ff ff ff 	mov    DWORD PTR [rbp-0xa8],r15d
  657a1e:	4d 63 39             	movsxd r15,DWORD PTR [r9]
  657a21:	89 85 f8 f8 ff ff    	mov    DWORD PTR [rbp-0x708],eax
  657a27:	4c 8b 53 28          	mov    r10,QWORD PTR [rbx+0x28]
  657a2b:	48 63 06             	movsxd rax,DWORD PTR [rsi]
  657a2e:	4d 8b 24 24          	mov    r12,QWORD PTR [r12]
  657a32:	4d 8b 1b             	mov    r11,QWORD PTR [r11]
  657a35:	4c 89 bd 30 fe ff ff 	mov    QWORD PTR [rbp-0x1d0],r15
  657a3c:	48 63 31             	movsxd rsi,DWORD PTR [rcx]
  657a3f:	48 8d 4b 78          	lea    rcx,[rbx+0x78]
  657a43:	4c 8b 39             	mov    r15,QWORD PTR [rcx]
  657a46:	89 95 18 fb ff ff    	mov    DWORD PTR [rbp-0x4e8],edx
  657a4c:	4c 89 a5 18 f5 ff ff 	mov    QWORD PTR [rbp-0xae8],r12
  657a53:	4c 89 9d 08 f5 ff ff 	mov    QWORD PTR [rbp-0xaf8],r11
  657a5a:	48 8b 51 08          	mov    rdx,QWORD PTR [rcx+0x8]
  657a5e:	48 8b 79 e0          	mov    rdi,QWORD PTR [rcx-0x20]
  657a62:	4c 8b 49 e8          	mov    r9,QWORD PTR [rcx-0x18]
  657a66:	4c 8b 59 f0          	mov    r11,QWORD PTR [rcx-0x10]
  657a6a:	4d 8b 26             	mov    r12,QWORD PTR [r14]
  657a6d:	48 89 b5 00 fb ff ff 	mov    QWORD PTR [rbp-0x500],rsi
  657a74:	48 89 85 08 fb ff ff 	mov    QWORD PTR [rbp-0x4f8],rax
  657a7b:	48 8b 71 10          	mov    rsi,QWORD PTR [rcx+0x10]
  657a7f:	41 8b 00             	mov    eax,DWORD PTR [r8]
  657a82:	4c 89 a5 b8 f8 ff ff 	mov    QWORD PTR [rbp-0x748],r12
  657a89:	4c 8b 61 f8          	mov    r12,QWORD PTR [rcx-0x8]
  657a8d:	4d 8b 12             	mov    r10,QWORD PTR [r10]
  657a90:	89 85 10 fb ff ff    	mov    DWORD PTR [rbp-0x4f0],eax
  657a96:	49 8b 07             	mov    rax,QWORD PTR [r15]
  657a99:	4c 89 95 78 fb ff ff 	mov    QWORD PTR [rbp-0x488],r10
  657aa0:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  657aa3:	4c 8b 07             	mov    r8,QWORD PTR [rdi]
  657aa6:	4d 8b 11             	mov    r10,QWORD PTR [r9]
  657aa9:	4d 8b 33             	mov    r14,QWORD PTR [r11]
  657aac:	48 89 85 40 fb ff ff 	mov    QWORD PTR [rbp-0x4c0],rax
  657ab3:	48 8b 3e             	mov    rdi,QWORD PTR [rsi]
  657ab6:	48 8d b3 98 00 00 00 	lea    rsi,[rbx+0x98]
  657abd:	4c 8b 0e             	mov    r9,QWORD PTR [rsi]
  657ac0:	4c 8b 5e 10          	mov    r11,QWORD PTR [rsi+0x10]
  657ac4:	48 8b 46 30          	mov    rax,QWORD PTR [rsi+0x30]
  657ac8:	48 89 8d 48 fb ff ff 	mov    QWORD PTR [rbp-0x4b8],rcx
  657acf:	4c 89 ad 20 fe ff ff 	mov    QWORD PTR [rbp-0x1e0],r13
  657ad6:	4c 89 b5 58 f5 ff ff 	mov    QWORD PTR [rbp-0xaa8],r14
  657add:	48 8b 4e 38          	mov    rcx,QWORD PTR [rsi+0x38]
  657ae1:	4c 8b 76 18          	mov    r14,QWORD PTR [rsi+0x18]
  657ae5:	4d 8b 2c 24          	mov    r13,QWORD PTR [r12]
  657ae9:	48 89 bd 50 fb ff ff 	mov    QWORD PTR [rbp-0x4b0],rdi
  657af0:	4c 89 8d 68 fb ff ff 	mov    QWORD PTR [rbp-0x498],r9
  657af7:	4c 89 9d 58 fb ff ff 	mov    QWORD PTR [rbp-0x4a8],r11
  657afe:	4c 8d 9b d8 00 00 00 	lea    r11,[rbx+0xd8]
  657b05:	49 8b 3b             	mov    rdi,QWORD PTR [r11]
  657b08:	4d 8b 4b 10          	mov    r9,QWORD PTR [r11+0x10]
  657b0c:	4d 8b 5b 18          	mov    r11,QWORD PTR [r11+0x18]
  657b10:	4c 89 ad 38 fb ff ff 	mov    QWORD PTR [rbp-0x4c8],r13
  657b17:	4c 8d a3 b8 00 00 00 	lea    r12,[rbx+0xb8]
  657b1e:	4d 8b 2c 24          	mov    r13,QWORD PTR [r12]
  657b22:	4d 8b 7c 24 08       	mov    r15,QWORD PTR [r12+0x8]
  657b27:	4c 89 85 10 f5 ff ff 	mov    QWORD PTR [rbp-0xaf0],r8
  657b2e:	4c 89 95 20 f5 ff ff 	mov    QWORD PTR [rbp-0xae0],r10
  657b35:	4d 8b 44 24 d8       	mov    r8,QWORD PTR [r12-0x28]
  657b3a:	4d 8b 54 24 e8       	mov    r10,QWORD PTR [r12-0x18]
  657b3f:	48 63 10             	movsxd rdx,DWORD PTR [rax]
  657b42:	49 8b 44 24 40       	mov    rax,QWORD PTR [r12+0x40]
  657b47:	48 63 31             	movsxd rsi,DWORD PTR [rcx]
  657b4a:	4c 89 85 70 fb ff ff 	mov    QWORD PTR [rbp-0x490],r8
  657b51:	4c 89 95 60 fb ff ff 	mov    QWORD PTR [rbp-0x4a0],r10
  657b58:	4d 8b 26             	mov    r12,QWORD PTR [r14]
  657b5b:	48 89 95 88 fb ff ff 	mov    QWORD PTR [rbp-0x478],rdx
  657b62:	4c 63 07             	movsxd r8,DWORD PTR [rdi]
  657b65:	48 8d bd 90 f4 ff ff 	lea    rdi,[rbp-0xb70]
  657b6c:	4d 63 11             	movsxd r10,DWORD PTR [r9]
  657b6f:	4d 63 33             	movsxd r14,DWORD PTR [r11]
  657b72:	48 89 47 60          	mov    QWORD PTR [rdi+0x60],rax
  657b76:	33 c0                	xor    eax,eax
  657b78:	4c 8d 9b 00 01 00 00 	lea    r11,[rbx+0x100]
  657b7f:	49 8b 13             	mov    rdx,QWORD PTR [r11]
  657b82:	49 8b 4b 08          	mov    rcx,QWORD PTR [r11+0x8]
  657b86:	48 89 b5 60 f5 ff ff 	mov    QWORD PTR [rbp-0xaa0],rsi
  657b8d:	49 8b 73 10          	mov    rsi,QWORD PTR [r11+0x10]
  657b91:	4d 8b 6d 00          	mov    r13,QWORD PTR [r13+0x0]
  657b95:	4d 8b 3f             	mov    r15,QWORD PTR [r15]
  657b98:	4c 89 85 90 fb ff ff 	mov    QWORD PTR [rbp-0x470],r8
  657b9f:	4c 89 95 28 f9 ff ff 	mov    QWORD PTR [rbp-0x6d8],r10
  657ba6:	4c 89 b5 20 f9 ff ff 	mov    QWORD PTR [rbp-0x6e0],r14
  657bad:	48 89 57 68          	mov    QWORD PTR [rdi+0x68],rdx
  657bb1:	48 89 4f 70          	mov    QWORD PTR [rdi+0x70],rcx
  657bb5:	e8 46 f0 e1 ff       	call   476c00 <_f90_dope_vector_init>
  657bba:	48 89 85 a0 f5 ff ff 	mov    QWORD PTR [rbp-0xa60],rax
  657bc1:	48 83 c0 1f          	add    rax,0x1f
  657bc5:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  657bc9:	48 2b e0             	sub    rsp,rax
  657bcc:	48 89 e0             	mov    rax,rsp
  657bcf:	48 89 85 98 f5 ff ff 	mov    QWORD PTR [rbp-0xa68],rax
  657bd6:	48 89 c2             	mov    rdx,rax
  657bd9:	48 8d bd 10 f6 ff ff 	lea    rdi,[rbp-0x9f0]
  657be0:	33 c0                	xor    eax,eax
  657be2:	48 8b b5 00 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xb00]
  657be9:	48 89 95 90 f4 ff ff 	mov    QWORD PTR [rbp-0xb70],rdx
  657bf0:	e8 0b f0 e1 ff       	call   476c00 <_f90_dope_vector_init>
  657bf5:	48 89 85 b0 f5 ff ff 	mov    QWORD PTR [rbp-0xa50],rax
  657bfc:	48 83 c0 1f          	add    rax,0x1f
  657c00:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  657c04:	48 2b e0             	sub    rsp,rax
  657c07:	48 89 e0             	mov    rax,rsp
  657c0a:	48 89 85 a8 f5 ff ff 	mov    QWORD PTR [rbp-0xa58],rax
  657c11:	48 89 c2             	mov    rdx,rax
  657c14:	48 8d bd 70 f6 ff ff 	lea    rdi,[rbp-0x990]
  657c1b:	33 c0                	xor    eax,eax
  657c1d:	48 8b b5 f8 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb08]
  657c24:	48 89 57 a0          	mov    QWORD PTR [rdi-0x60],rdx
  657c28:	e8 d3 ef e1 ff       	call   476c00 <_f90_dope_vector_init>
  657c2d:	48 89 85 c0 f5 ff ff 	mov    QWORD PTR [rbp-0xa40],rax
  657c34:	48 83 c0 1f          	add    rax,0x1f
  657c38:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  657c3c:	48 2b e0             	sub    rsp,rax
  657c3f:	48 89 e0             	mov    rax,rsp
  657c42:	48 89 85 b8 f5 ff ff 	mov    QWORD PTR [rbp-0xa48],rax
  657c49:	48 89 c2             	mov    rdx,rax
  657c4c:	48 8d bd d0 f6 ff ff 	lea    rdi,[rbp-0x930]
  657c53:	33 c0                	xor    eax,eax
  657c55:	48 8b b5 f0 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb10]
  657c5c:	48 89 57 a0          	mov    QWORD PTR [rdi-0x60],rdx
  657c60:	e8 9b ef e1 ff       	call   476c00 <_f90_dope_vector_init>
  657c65:	48 89 85 c8 f5 ff ff 	mov    QWORD PTR [rbp-0xa38],rax
  657c6c:	48 83 c0 1f          	add    rax,0x1f
  657c70:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  657c74:	48 2b e0             	sub    rsp,rax
  657c77:	48 89 e0             	mov    rax,rsp
  657c7a:	48 89 85 d0 f5 ff ff 	mov    QWORD PTR [rbp-0xa30],rax
  657c81:	48 8b 95 18 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x6e8]
  657c88:	48 8b 35 31 2a 46 00 	mov    rsi,QWORD PTR [rip+0x462a31]        # aba6c0 <mod_param_mp_n_>
  657c8f:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  657c92:	48 89 85 d0 f6 ff ff 	mov    QWORD PTR [rbp-0x930],rax
  657c99:	48 63 39             	movsxd rdi,DWORD PTR [rcx]
  657c9c:	44 8b 74 be fc       	mov    r14d,DWORD PTR [rsi+rdi*4-0x4]
  657ca1:	45 85 f6             	test   r14d,r14d
  657ca4:	0f 8e 78 3a 00 00    	jle    65b722 <step3d_t_mod_mp_step3d_t_tile_+0x7562>
  657caa:	48 83 c4 e0          	add    rsp,0xffffffffffffffe0
  657cae:	48 8d 85 14 f9 ff ff 	lea    rax,[rbp-0x6ec]
  657cb5:	41 ba 01 00 00 00    	mov    r10d,0x1
  657cbb:	bf 70 55 ab 00       	mov    edi,0xab5570
  657cc0:	ba 22 00 00 00       	mov    edx,0x22
  657cc5:	48 8d 8d 10 f9 ff ff 	lea    rcx,[rbp-0x6f0]
  657ccc:	44 89 70 f8          	mov    DWORD PTR [rax-0x8],r14d
  657cd0:	4c 8d 85 08 f9 ff ff 	lea    r8,[rbp-0x6f8]
  657cd7:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  657cdb:	4c 8d 8d 0c f9 ff ff 	lea    r9,[rbp-0x6f4]
  657ce2:	44 89 54 24 08       	mov    DWORD PTR [rsp+0x8],r10d
  657ce7:	44 89 54 24 10       	mov    DWORD PTR [rsp+0x10],r10d
  657cec:	8b 70 e4             	mov    esi,DWORD PTR [rax-0x1c]
  657cef:	c7 40 fc 00 00 00 00 	mov    DWORD PTR [rax-0x4],0x0
  657cf6:	44 89 50 f4          	mov    DWORD PTR [rax-0xc],r10d
  657cfa:	44 89 10             	mov    DWORD PTR [rax],r10d
  657cfd:	e8 de 5c db ff       	call   40d9e0 <__kmpc_for_static_init_4@plt>
  657d02:	48 83 c4 20          	add    rsp,0x20
  657d06:	4d 63 f6             	movsxd r14,r14d
  657d09:	48 63 85 08 f9 ff ff 	movsxd rax,DWORD PTR [rbp-0x6f8]
  657d10:	8b 95 0c f9 ff ff    	mov    edx,DWORD PTR [rbp-0x6f4]
  657d16:	48 89 85 50 f9 ff ff 	mov    QWORD PTR [rbp-0x6b0],rax
  657d1d:	49 3b c6             	cmp    rax,r14
  657d20:	0f 8f e9 39 00 00    	jg     65b70f <step3d_t_mod_mp_step3d_t_tile_+0x754f>
  657d26:	4c 8b 85 58 f5 ff ff 	mov    r8,QWORD PTR [rbp-0xaa8]
  657d2d:	41 3b d6             	cmp    edx,r14d
  657d30:	48 8b b5 20 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xae0]
  657d37:	49 63 3f             	movsxd rdi,DWORD PTR [r15]
  657d3a:	44 0f 4c f2          	cmovl  r14d,edx
  657d3e:	49 8b 50 50          	mov    rdx,QWORD PTR [r8+0x50]
  657d42:	48 89 bd 58 f9 ff ff 	mov    QWORD PTR [rbp-0x6a8],rdi
  657d49:	4d 63 f6             	movsxd r14,r14d
  657d4c:	49 8b 0c 24          	mov    rcx,QWORD PTR [r12]
  657d50:	49 8b 7c 24 38       	mov    rdi,QWORD PTR [r12+0x38]
  657d55:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
  657d59:	48 89 95 40 f5 ff ff 	mov    QWORD PTR [rbp-0xac0],rdx
  657d60:	4c 8b 95 88 fb ff ff 	mov    r10,QWORD PTR [rbp-0x478]
  657d67:	48 8b 95 18 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xae8]
  657d6e:	4c 8b bd 50 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6b0]
  657d75:	4d 2b f7             	sub    r14,r15
  657d78:	48 89 8d d8 f9 ff ff 	mov    QWORD PTR [rbp-0x628],rcx
  657d7f:	49 ff c6             	inc    r14
  657d82:	48 89 7d 88          	mov    QWORD PTR [rbp-0x78],rdi
  657d86:	48 89 85 e0 f9 ff ff 	mov    QWORD PTR [rbp-0x620],rax
  657d8d:	4c 29 95 60 f5 ff ff 	sub    QWORD PTR [rbp-0xaa0],r10
  657d94:	48 8b 0e             	mov    rcx,QWORD PTR [rsi]
  657d97:	48 8b 46 38          	mov    rax,QWORD PTR [rsi+0x38]
  657d9b:	4c 8b 5e 68          	mov    r11,QWORD PTR [rsi+0x68]
  657d9f:	49 2b cb             	sub    rcx,r11
  657da2:	48 8b 7e 50          	mov    rdi,QWORD PTR [rsi+0x50]
  657da6:	4d 8b 54 24 50       	mov    r10,QWORD PTR [r12+0x50]
  657dab:	48 8b b5 78 fb ff ff 	mov    rsi,QWORD PTR [rbp-0x488]
  657db2:	4d 8b 65 38          	mov    r12,QWORD PTR [r13+0x38]
  657db6:	4c 89 b5 d8 f5 ff ff 	mov    QWORD PTR [rbp-0xa28],r14
  657dbd:	4d 8b 75 50          	mov    r14,QWORD PTR [r13+0x50]
  657dc1:	4c 89 65 90          	mov    QWORD PTR [rbp-0x70],r12
  657dc5:	4d 8b 28             	mov    r13,QWORD PTR [r8]
  657dc8:	4d 8b 48 38          	mov    r9,QWORD PTR [r8+0x38]
  657dcc:	4c 8b 62 68          	mov    r12,QWORD PTR [rdx+0x68]
  657dd0:	4c 89 ad 50 f5 ff ff 	mov    QWORD PTR [rbp-0xab0],r13
  657dd7:	4c 89 8d 48 f5 ff ff 	mov    QWORD PTR [rbp-0xab8],r9
  657dde:	4c 8b 2a             	mov    r13,QWORD PTR [rdx]
  657de1:	4c 89 a5 88 f9 ff ff 	mov    QWORD PTR [rbp-0x678],r12
  657de8:	4d 2b ec             	sub    r13,r12
  657deb:	4c 8b 4a 38          	mov    r9,QWORD PTR [rdx+0x38]
  657def:	4c 63 26             	movsxd r12,DWORD PTR [rsi]
  657df2:	4c 89 8d 88 fe ff ff 	mov    QWORD PTR [rbp-0x178],r9
  657df9:	4c 89 a5 00 f9 ff ff 	mov    QWORD PTR [rbp-0x700],r12
  657e00:	4c 8b 8d 10 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xaf0]
  657e07:	4c 8b a5 08 f5 ff ff 	mov    r12,QWORD PTR [rbp-0xaf8]
  657e0e:	4c 89 ad d0 f8 ff ff 	mov    QWORD PTR [rbp-0x730],r13
  657e15:	4d 8b 29             	mov    r13,QWORD PTR [r9]
  657e18:	49 8b 34 24          	mov    rsi,QWORD PTR [r12]
  657e1c:	4c 89 ad c8 f9 ff ff 	mov    QWORD PTR [rbp-0x638],r13
  657e23:	48 89 b5 c0 f9 ff ff 	mov    QWORD PTR [rbp-0x640],rsi
  657e2a:	49 8b 74 24 50       	mov    rsi,QWORD PTR [r12+0x50]
  657e2f:	4d 8b 6c 24 38       	mov    r13,QWORD PTR [r12+0x38]
  657e34:	44 8b a5 10 fb ff ff 	mov    r12d,DWORD PTR [rbp-0x4f0]
  657e3b:	4c 8b 42 50          	mov    r8,QWORD PTR [rdx+0x50]
  657e3f:	49 8b 51 50          	mov    rdx,QWORD PTR [r9+0x50]
  657e43:	4c 89 ad b8 f9 ff ff 	mov    QWORD PTR [rbp-0x648],r13
  657e4a:	4c 63 ad 18 fb ff ff 	movsxd r13,DWORD PTR [rbp-0x4e8]
  657e51:	48 89 95 78 fe ff ff 	mov    QWORD PTR [rbp-0x188],rdx
  657e58:	41 8d 54 24 01       	lea    edx,[r12+0x1]
  657e5d:	89 95 28 fb ff ff    	mov    DWORD PTR [rbp-0x4d8],edx
  657e63:	4c 89 ea             	mov    rdx,r13
  657e66:	4c 89 95 58 fe ff ff 	mov    QWORD PTR [rbp-0x1a8],r10
  657e6d:	49 0f af d2          	imul   rdx,r10
  657e71:	4d 0f af fb          	imul   r15,r11
  657e75:	c5 fd 10 0d 03 24 1f 	vmovupd ymm1,YMMWORD PTR [rip+0x1f2403]        # 84a280 <var$630.126.450+0x2e0>
  657e7c:	00 
  657e7d:	c5 f9 10 2d 6b 3b 1f 	vmovupd xmm5,XMMWORD PTR [rip+0x1f3b6b]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  657e84:	00 
  657e85:	c5 f9 10 25 73 3b 1f 	vmovupd xmm4,XMMWORD PTR [rip+0x1f3b73]        # 84ba00 <__STRLITPACK_19.34+0x20>
  657e8c:	00 
  657e8d:	c5 fb 10 1d 03 43 1f 	vmovsd xmm3,QWORD PTR [rip+0x1f4303]        # 84c198 <__STRLITPACK_0.112+0x88>
  657e94:	00 
  657e95:	c5 fb 10 15 23 46 1f 	vmovsd xmm2,QWORD PTR [rip+0x1f4623]        # 84c4c0 <__STRLITPACK_0.112+0x3b0>
  657e9c:	00 
  657e9d:	4d 89 ea             	mov    r10,r13
  657ea0:	4d 0f af d6          	imul   r10,r14
  657ea4:	c5 fd 10 05 f4 23 1f 	vmovupd ymm0,YMMWORD PTR [rip+0x1f23f4]        # 84a2a0 <var$630.126.450+0x300>
  657eab:	00 
  657eac:	4d 63 e4             	movsxd r12,r12d
  657eaf:	4c 89 a5 f8 f4 ff ff 	mov    QWORD PTR [rbp-0xb08],r12
  657eb6:	4d 2b e5             	sub    r12,r13
  657eb9:	4c 89 95 68 f5 ff ff 	mov    QWORD PTR [rbp-0xa98],r10
  657ec0:	4d 8b 49 38          	mov    r9,QWORD PTR [r9+0x38]
  657ec4:	48 89 b5 80 fe ff ff 	mov    QWORD PTR [rbp-0x180],rsi
  657ecb:	4c 89 8d b0 f9 ff ff 	mov    QWORD PTR [rbp-0x650],r9
  657ed2:	4d 8d 54 24 03       	lea    r10,[r12+0x3]
  657ed7:	4c 89 95 60 ff ff ff 	mov    QWORD PTR [rbp-0xa0],r10
  657ede:	4d 89 ea             	mov    r10,r13
  657ee1:	4c 0f af d6          	imul   r10,rsi
  657ee5:	4c 89 95 78 f5 ff ff 	mov    QWORD PTR [rbp-0xa88],r10
  657eec:	4c 63 95 58 ff ff ff 	movsxd r10,DWORD PTR [rbp-0xa8]
  657ef3:	4c 89 d6             	mov    rsi,r10
  657ef6:	49 0f af f1          	imul   rsi,r9
  657efa:	4d 89 d1             	mov    r9,r10
  657efd:	4c 0f af 8d 88 fe ff 	imul   r9,QWORD PTR [rbp-0x178]
  657f04:	ff 
  657f05:	4c 89 b5 60 fe ff ff 	mov    QWORD PTR [rbp-0x1a0],r14
  657f0c:	4d 89 ee             	mov    r14,r13
  657f0f:	4c 89 85 70 fe ff ff 	mov    QWORD PTR [rbp-0x190],r8
  657f16:	4d 0f af f0          	imul   r14,r8
  657f1a:	4c 89 8d 88 f5 ff ff 	mov    QWORD PTR [rbp-0xa78],r9
  657f21:	4d 8d 44 24 01       	lea    r8,[r12+0x1]
  657f26:	49 83 c4 02          	add    r12,0x2
  657f2a:	4c 89 a5 38 fe ff ff 	mov    QWORD PTR [rbp-0x1c8],r12
  657f31:	4c 63 a5 28 fe ff ff 	movsxd r12,DWORD PTR [rbp-0x1d8]
  657f38:	4d 89 e1             	mov    r9,r12
  657f3b:	4d 2b ca             	sub    r9,r10
  657f3e:	48 89 b5 80 f5 ff ff 	mov    QWORD PTR [rbp-0xa80],rsi
  657f45:	48 89 95 00 f5 ff ff 	mov    QWORD PTR [rbp-0xb00],rdx
  657f4c:	4c 89 ea             	mov    rdx,r13
  657f4f:	4c 89 85 68 ff ff ff 	mov    QWORD PTR [rbp-0x98],r8
  657f56:	4d 89 d0             	mov    r8,r10
  657f59:	48 0f af d7          	imul   rdx,rdi
  657f5d:	4c 0f af c0          	imul   r8,rax
  657f61:	4c 89 9d 80 f9 ff ff 	mov    QWORD PTR [rbp-0x680],r11
  657f68:	49 8d 71 03          	lea    rsi,[r9+0x3]
  657f6c:	48 89 b5 50 ff ff ff 	mov    QWORD PTR [rbp-0xb0],rsi
  657f73:	49 8d 71 02          	lea    rsi,[r9+0x2]
  657f77:	48 89 b5 78 fd ff ff 	mov    QWORD PTR [rbp-0x288],rsi
  657f7e:	4a 8d 34 cd 08 00 00 	lea    rsi,[r9*8+0x8]
  657f85:	00 
  657f86:	49 ff c1             	inc    r9
  657f89:	4d 89 fb             	mov    r11,r15
  657f8c:	4c 89 8d 70 fd ff ff 	mov    QWORD PTR [rbp-0x290],r9
  657f93:	4c 03 f9             	add    r15,rcx
  657f96:	48 89 b5 58 f8 ff ff 	mov    QWORD PTR [rbp-0x7a8],rsi
  657f9d:	44 89 ce             	mov    esi,r9d
  657fa0:	83 e6 fe             	and    esi,0xfffffffe
  657fa3:	48 63 f6             	movsxd rsi,esi
  657fa6:	48 89 75 80          	mov    QWORD PTR [rbp-0x80],rsi
  657faa:	48 8b b5 20 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x6e0]
  657fb1:	48 0f af f7          	imul   rsi,rdi
  657fb5:	44 89 8d 48 fe ff ff 	mov    DWORD PTR [rbp-0x1b8],r9d
  657fbc:	4c 2b de             	sub    r11,rsi
  657fbf:	41 83 e1 fc          	and    r9d,0xfffffffc
  657fc3:	48 2b f2             	sub    rsi,rdx
  657fc6:	4d 63 c9             	movsxd r9,r9d
  657fc9:	4c 89 8d 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],r9
  657fd0:	4c 8b 8d 28 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x6d8]
  657fd7:	4c 0f af c8          	imul   r9,rax
  657fdb:	48 89 bd 68 fe ff ff 	mov    QWORD PTR [rbp-0x198],rdi
  657fe2:	4a 8d 3c 19          	lea    rdi,[rcx+r11*1]
  657fe6:	48 89 8d f0 f4 ff ff 	mov    QWORD PTR [rbp-0xb10],rcx
  657fed:	48 89 f9             	mov    rcx,rdi
  657ff0:	48 89 95 70 f5 ff ff 	mov    QWORD PTR [rbp-0xa90],rdx
  657ff7:	49 2b c9             	sub    rcx,r9
  657ffa:	49 2b d1             	sub    rdx,r9
  657ffd:	4d 2b c8             	sub    r9,r8
  658000:	49 03 f1             	add    rsi,r9
  658003:	48 03 fa             	add    rdi,rdx
  658006:	4c 8b 8d 60 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xaa0]
  65800d:	49 03 f8             	add    rdi,r8
  658010:	4c 89 b5 e8 f9 ff ff 	mov    QWORD PTR [rbp-0x618],r14
  658017:	4e 8d 34 ed 00 00 00 	lea    r14,[r13*8+0x0]
  65801e:	00 
  65801f:	4c 2b fe             	sub    r15,rsi
  658022:	4a 8d 34 ed f8 ff ff 	lea    rsi,[r13*8-0x8]
  658029:	ff 
  65802a:	48 89 8d c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],rcx
  658031:	4d 8d 41 01          	lea    r8,[r9+0x1]
  658035:	4d 0f af f0          	imul   r14,r8
  658039:	49 0f af f0          	imul   rsi,r8
  65803d:	48 8b 8d 88 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x478]
  658044:	4d 8d 3c 47          	lea    r15,[r15+rax*2]
  658048:	48 89 85 90 fe ff ff 	mov    QWORD PTR [rbp-0x170],rax
  65804f:	4c 89 c8             	mov    rax,r9
  658052:	4c 89 9d d0 f9 ff ff 	mov    QWORD PTR [rbp-0x630],r11
  658059:	4e 8d 1c cd 08 00 00 	lea    r11,[r9*8+0x8]
  658060:	00 
  658061:	48 c1 e0 04          	shl    rax,0x4
  658065:	48 89 bd 68 f9 ff ff 	mov    QWORD PTR [rbp-0x698],rdi
  65806c:	48 8d 3c cd 00 00 00 	lea    rdi,[rcx*8+0x0]
  658073:	00 
  658074:	48 89 85 e0 f5 ff ff 	mov    QWORD PTR [rbp-0xa20],rax
  65807b:	4a 8d 0c cd 00 00 00 	lea    rcx,[r9*8+0x0]
  658082:	00 
  658083:	4c 89 ad a0 f9 ff ff 	mov    QWORD PTR [rbp-0x660],r13
  65808a:	4b 8d 04 ce          	lea    rax,[r14+r9*8]
  65808e:	4c 8b 8d 90 fb ff ff 	mov    r9,QWORD PTR [rbp-0x470]
  658095:	4d 0f af cb          	imul   r9,r11
  658099:	4c 89 95 98 fb ff ff 	mov    QWORD PTR [rbp-0x468],r10
  6580a0:	49 c1 e2 03          	shl    r10,0x3
  6580a4:	49 c1 e4 03          	shl    r12,0x3
  6580a8:	4c 8b ad f8 f4 ff ff 	mov    r13,QWORD PTR [rbp-0xb08]
  6580af:	4c 2b e7             	sub    r12,rdi
  6580b2:	4c 89 95 00 fa ff ff 	mov    QWORD PTR [rbp-0x600],r10
  6580b9:	4c 2b d7             	sub    r10,rdi
  6580bc:	48 89 bd c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],rdi
  6580c3:	48 89 cf             	mov    rdi,rcx
  6580c6:	48 f7 df             	neg    rdi
  6580c9:	4a 8d 14 ed 08 00 00 	lea    rdx,[r13*8+0x8]
  6580d0:	00 
  6580d1:	49 0f af d0          	imul   rdx,r8
  6580d5:	4c 89 bd 70 f9 ff ff 	mov    QWORD PTR [rbp-0x690],r15
  6580dc:	4e 8d 3c ed 10 00 00 	lea    r15,[r13*8+0x10]
  6580e3:	00 
  6580e4:	4c 89 85 90 f5 ff ff 	mov    QWORD PTR [rbp-0xa70],r8
  6580eb:	4e 8d 2c 37          	lea    r13,[rdi+r14*1]
  6580ef:	4d 0f af f8          	imul   r15,r8
  6580f3:	49 2b f9             	sub    rdi,r9
  6580f6:	4f 8d 04 32          	lea    r8,[r10+r14*1]
  6580fa:	49 2b c9             	sub    rcx,r9
  6580fd:	49 03 f8             	add    rdi,r8
  658100:	48 89 bd c8 fa ff ff 	mov    QWORD PTR [rbp-0x538],rdi
  658107:	4b 8d 3c 2a          	lea    rdi,[r10+r13*1]
  65810b:	4d 03 ec             	add    r13,r12
  65810e:	49 03 c8             	add    rcx,r8
  658111:	4d 2b c1             	sub    r8,r9
  658114:	4d 2b e9             	sub    r13,r9
  658117:	4c 89 85 e0 fa ff ff 	mov    QWORD PTR [rbp-0x520],r8
  65811e:	49 2b f9             	sub    rdi,r9
  658121:	4c 8b 85 20 f9 ff ff 	mov    r8,QWORD PTR [rbp-0x6e0]
  658128:	4c 89 ad 08 f6 ff ff 	mov    QWORD PTR [rbp-0x9f8],r13
  65812f:	4d 89 c5             	mov    r13,r8
  658132:	4c 0f af ad 58 fe ff 	imul   r13,QWORD PTR [rbp-0x1a8]
  658139:	ff 
  65813a:	4c 89 b5 a0 fb ff ff 	mov    QWORD PTR [rbp-0x460],r14
  658141:	48 89 8d f0 f9 ff ff 	mov    QWORD PTR [rbp-0x610],rcx
  658148:	49 8d 0c 02          	lea    rcx,[r10+rax*1]
  65814c:	49 03 c4             	add    rax,r12
  65814f:	4d 03 e6             	add    r12,r14
  658152:	4d 2b f1             	sub    r14,r9
  658155:	4d 2b e1             	sub    r12,r9
  658158:	48 89 b5 80 f8 ff ff 	mov    QWORD PTR [rbp-0x780],rsi
  65815f:	49 2b c9             	sub    rcx,r9
  658162:	4c 89 a5 50 f8 ff ff 	mov    QWORD PTR [rbp-0x7b0],r12
  658169:	4d 8d 24 32          	lea    r12,[r10+rsi*1]
  65816d:	49 2b f1             	sub    rsi,r9
  658170:	49 2b c1             	sub    rax,r9
  658173:	48 89 8d f0 f5 ff ff 	mov    QWORD PTR [rbp-0xa10],rcx
  65817a:	49 03 f2             	add    rsi,r10
  65817d:	48 89 b5 b0 f8 ff ff 	mov    QWORD PTR [rbp-0x750],rsi
  658184:	49 8d 0c 12          	lea    rcx,[r10+rdx*1]
  658188:	48 8b b5 28 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x6d8]
  65818f:	49 2b c9             	sub    rcx,r9
  658192:	48 89 8d 68 f8 ff ff 	mov    QWORD PTR [rbp-0x798],rcx
  658199:	4b 8d 0c 32          	lea    rcx,[r10+r14*1]
  65819d:	48 89 8d d0 fa ff ff 	mov    QWORD PTR [rbp-0x530],rcx
  6581a4:	48 89 f1             	mov    rcx,rsi
  6581a7:	48 89 95 88 f8 ff ff 	mov    QWORD PTR [rbp-0x778],rdx
  6581ae:	49 2b d1             	sub    rdx,r9
  6581b1:	48 f7 d9             	neg    rcx
  6581b4:	49 03 d2             	add    rdx,r10
  6581b7:	48 89 bd e8 f5 ff ff 	mov    QWORD PTR [rbp-0xa18],rdi
  6581be:	4b 8d 3c 3a          	lea    rdi,[r10+r15*1]
  6581c2:	48 03 8d 98 fb ff ff 	add    rcx,QWORD PTR [rbp-0x468]
  6581c9:	49 2b f9             	sub    rdi,r9
  6581cc:	48 89 95 a0 f8 ff ff 	mov    QWORD PTR [rbp-0x760],rdx
  6581d3:	4d 2b e1             	sub    r12,r9
  6581d6:	48 8b 95 d8 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x628]
  6581dd:	48 89 bd 60 f8 ff ff 	mov    QWORD PTR [rbp-0x7a0],rdi
  6581e4:	48 89 d7             	mov    rdi,rdx
  6581e7:	48 89 85 00 f6 ff ff 	mov    QWORD PTR [rbp-0xa00],rax
  6581ee:	48 89 c8             	mov    rax,rcx
  6581f1:	49 2b fd             	sub    rdi,r13
  6581f4:	48 0f af 45 88       	imul   rax,QWORD PTR [rbp-0x78]
  6581f9:	48 0f af 4d 90       	imul   rcx,QWORD PTR [rbp-0x70]
  6581fe:	4c 89 a5 70 f8 ff ff 	mov    QWORD PTR [rbp-0x790],r12
  658205:	4c 8b a5 00 f5 ff ff 	mov    r12,QWORD PTR [rbp-0xb00]
  65820c:	49 03 fc             	add    rdi,r12
  65820f:	4d 2b ec             	sub    r13,r12
  658212:	4d 89 c4             	mov    r12,r8
  658215:	4c 0f af a5 60 fe ff 	imul   r12,QWORD PTR [rbp-0x1a0]
  65821c:	ff 
  65821d:	4c 89 bd 78 f8 ff ff 	mov    QWORD PTR [rbp-0x788],r15
  658224:	4d 2b f9             	sub    r15,r9
  658227:	48 03 c7             	add    rax,rdi
  65822a:	4d 03 fa             	add    r15,r10
  65822d:	48 89 85 78 f9 ff ff 	mov    QWORD PTR [rbp-0x688],rax
  658234:	48 8d 3c f5 00 00 00 	lea    rdi,[rsi*8+0x0]
  65823b:	00 
  65823c:	48 8b 85 e0 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x620]
  658243:	4c 89 bd a8 f8 ff ff 	mov    QWORD PTR [rbp-0x758],r15
  65824a:	49 89 c7             	mov    r15,rax
  65824d:	4d 2b fc             	sub    r15,r12
  658250:	4c 89 b5 18 fa ff ff 	mov    QWORD PTR [rbp-0x5e8],r14
  658257:	4c 8b b5 68 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xa98]
  65825e:	4d 03 fe             	add    r15,r14
  658261:	49 03 cf             	add    rcx,r15
  658264:	4d 2b e6             	sub    r12,r14
  658267:	48 89 8d f8 f9 ff ff 	mov    QWORD PTR [rbp-0x608],rcx
  65826e:	48 8b 8d 00 fa ff ff 	mov    rcx,QWORD PTR [rbp-0x600]
  658275:	48 2b cf             	sub    rcx,rdi
  658278:	48 f7 df             	neg    rdi
  65827b:	48 03 d1             	add    rdx,rcx
  65827e:	48 03 c1             	add    rax,rcx
  658281:	49 2b d5             	sub    rdx,r13
  658284:	4d 89 c5             	mov    r13,r8
  658287:	49 2b c4             	sub    rax,r12
  65828a:	48 89 85 e0 f9 ff ff 	mov    QWORD PTR [rbp-0x620],rax
  658291:	48 8b 85 40 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xac0]
  658298:	4c 0f af e8          	imul   r13,rax
  65829c:	4c 89 9d 70 ff ff ff 	mov    QWORD PTR [rbp-0x90],r11
  6582a3:	48 f7 d8             	neg    rax
  6582a6:	4c 8b 9d f0 f4 ff ff 	mov    r11,QWORD PTR [rbp-0xb10]
  6582ad:	4c 03 d9             	add    r11,rcx
  6582b0:	4c 8b b5 d0 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x630]
  6582b7:	4d 03 f3             	add    r14,r11
  6582ba:	4d 89 c3             	mov    r11,r8
  6582bd:	4c 03 b5 70 f5 ff ff 	add    r14,QWORD PTR [rbp-0xa90]
  6582c4:	4c 89 b5 d0 f9 ff ff 	mov    QWORD PTR [rbp-0x630],r14
  6582cb:	4c 8b b5 50 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xab0]
  6582d2:	4d 2b f5             	sub    r14,r13
  6582d5:	49 89 f5             	mov    r13,rsi
  6582d8:	4c 8b a5 48 f5 ff ff 	mov    r12,QWORD PTR [rbp-0xab8]
  6582df:	4d 0f af ec          	imul   r13,r12
  6582e3:	4c 0f af 9d 70 fe ff 	imul   r11,QWORD PTR [rbp-0x190]
  6582ea:	ff 
  6582eb:	48 89 95 d8 f9 ff ff 	mov    QWORD PTR [rbp-0x628],rdx
  6582f2:	4c 89 f2             	mov    rdx,r14
  6582f5:	49 2b d5             	sub    rdx,r13
  6582f8:	49 2b c5             	sub    rax,r13
  6582fb:	4d 03 ec             	add    r13,r12
  6582fe:	49 03 c6             	add    rax,r14
  658301:	4d 2b f5             	sub    r14,r13
  658304:	4c 89 b5 50 f5 ff ff 	mov    QWORD PTR [rbp-0xab0],r14
  65830b:	4c 8b b5 50 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x6b0]
  658312:	4c 0f af b5 88 f9 ff 	imul   r14,QWORD PTR [rbp-0x678]
  658319:	ff 
  65831a:	48 89 85 30 f5 ff ff 	mov    QWORD PTR [rbp-0xad0],rax
  658321:	4d 89 f4             	mov    r12,r14
  658324:	8b 85 28 fe ff ff    	mov    eax,DWORD PTR [rbp-0x1d8]
  65832a:	4d 2b e3             	sub    r12,r11
  65832d:	4c 8b ad d0 f8 ff ff 	mov    r13,QWORD PTR [rbp-0x730]
  658334:	48 89 95 28 f5 ff ff 	mov    QWORD PTR [rbp-0xad8],rdx
  65833b:	4d 03 f5             	add    r14,r13
  65833e:	4c 8b bd e8 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x618]
  658345:	8d 50 01             	lea    edx,[rax+0x1]
  658348:	89 95 40 fe ff ff    	mov    DWORD PTR [rbp-0x1c0],edx
  65834e:	4a 8d 14 29          	lea    rdx,[rcx+r13*1]
  658352:	49 03 d4             	add    rdx,r12
  658355:	4d 03 ec             	add    r13,r12
  658358:	49 03 d7             	add    rdx,r15
  65835b:	4d 2b df             	sub    r11,r15
  65835e:	48 89 95 08 fa ff ff 	mov    QWORD PTR [rbp-0x5f8],rdx
  658365:	48 89 f2             	mov    rdx,rsi
  658368:	4c 8b a5 88 fe ff ff 	mov    r12,QWORD PTR [rbp-0x178]
  65836f:	49 0f af d4          	imul   rdx,r12
  658373:	4c 2b fa             	sub    r15,rdx
  658376:	4d 03 fd             	add    r15,r13
  658379:	4c 2b ea             	sub    r13,rdx
  65837c:	4c 89 ad d0 f8 ff ff 	mov    QWORD PTR [rbp-0x730],r13
  658383:	4c 8b ad 88 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xa78]
  65838a:	49 2b d5             	sub    rdx,r13
  65838d:	4c 03 da             	add    r11,rdx
  658390:	4d 03 fd             	add    r15,r13
  658393:	4d 2b f3             	sub    r14,r11
  658396:	8b 95 18 fb ff ff    	mov    edx,DWORD PTR [rbp-0x4e8]
  65839c:	4c 89 bd e8 f9 ff ff 	mov    QWORD PTR [rbp-0x618],r15
  6583a3:	4c 89 8d 90 fb ff ff 	mov    QWORD PTR [rbp-0x470],r9
  6583aa:	48 c7 85 60 f9 ff ff 	mov    QWORD PTR [rbp-0x6a0],0x0
  6583b1:	00 00 00 00 
  6583b5:	4f 8d 3c 66          	lea    r15,[r14+r12*2]
  6583b9:	4c 89 bd 90 f9 ff ff 	mov    QWORD PTR [rbp-0x670],r15
  6583c0:	44 8d 5a ff          	lea    r11d,[rdx-0x1]
  6583c4:	4c 8b bd 08 fb ff ff 	mov    r15,QWORD PTR [rbp-0x4f8]
  6583cb:	44 89 9d 30 fb ff ff 	mov    DWORD PTR [rbp-0x4d0],r11d
  6583d2:	44 8b 9d 58 ff ff ff 	mov    r11d,DWORD PTR [rbp-0xa8]
  6583d9:	41 2b c3             	sub    eax,r11d
  6583dc:	4e 8d 34 fd 00 00 00 	lea    r14,[r15*8+0x0]
  6583e3:	00 
  6583e4:	ff c0                	inc    eax
  6583e6:	89 85 38 f5 ff ff    	mov    DWORD PTR [rbp-0xac8],eax
  6583ec:	45 8d 5b ff          	lea    r11d,[r11-0x1]
  6583f0:	48 8b 85 90 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xa70]
  6583f7:	49 0f af c6          	imul   rax,r14
  6583fb:	4c 8b a5 00 fb ff ff 	mov    r12,QWORD PTR [rbp-0x500]
  658402:	49 89 c5             	mov    r13,rax
  658405:	4d 2b e7             	sub    r12,r15
  658408:	4d 2b e9             	sub    r13,r9
  65840b:	49 ff c4             	inc    r12
  65840e:	4d 03 ea             	add    r13,r10
  658411:	4c 89 a5 50 fe ff ff 	mov    QWORD PTR [rbp-0x1b0],r12
  658418:	4d 89 c4             	mov    r12,r8
  65841b:	4c 8b b5 78 fe ff ff 	mov    r14,QWORD PTR [rbp-0x188]
  658422:	4c 03 d0             	add    r10,rax
  658425:	4d 0f af e6          	imul   r12,r14
  658429:	4d 0f af fe          	imul   r15,r14
  65842d:	4c 0f af 85 80 fe ff 	imul   r8,QWORD PTR [rbp-0x180]
  658434:	ff 
  658435:	4c 89 ad 98 f9 ff ff 	mov    QWORD PTR [rbp-0x668],r13
  65843c:	4d 2b d1             	sub    r10,r9
  65843f:	4c 8b ad c8 f9 ff ff 	mov    r13,QWORD PTR [rbp-0x638]
  658446:	4c 89 e8             	mov    rax,r13
  658449:	49 2b c4             	sub    rax,r12
  65844c:	4c 03 e9             	add    r13,rcx
  65844f:	4d 2b e7             	sub    r12,r15
  658452:	4d 2b ec             	sub    r13,r12
  658455:	4c 8b a5 b0 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x650]
  65845c:	4c 89 ad c8 f9 ff ff 	mov    QWORD PTR [rbp-0x638],r13
  658463:	49 89 f5             	mov    r13,rsi
  658466:	4d 0f af ec          	imul   r13,r12
  65846a:	44 89 9d d8 fa ff ff 	mov    DWORD PTR [rbp-0x528],r11d
  658471:	4e 8d 34 38          	lea    r14,[rax+r15*1]
  658475:	4d 2b fd             	sub    r15,r13
  658478:	49 03 c7             	add    rax,r15
  65847b:	4c 8b bd 80 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xa80]
  658482:	4d 2b ef             	sub    r13,r15
  658485:	4d 2b f5             	sub    r14,r13
  658488:	4c 8b 9d 30 fe ff ff 	mov    r11,QWORD PTR [rbp-0x1d0]
  65848f:	4f 8d 24 67          	lea    r12,[r15+r12*2]
  658493:	4c 89 b5 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],r14
  65849a:	49 03 c4             	add    rax,r12
  65849d:	44 8b b5 10 fb ff ff 	mov    r14d,DWORD PTR [rbp-0x4f0]
  6584a4:	4c 8b a5 78 fd ff ff 	mov    r12,QWORD PTR [rbp-0x288]
  6584ab:	44 2b f2             	sub    r14d,edx
  6584ae:	4c 8b ad 50 ff ff ff 	mov    r13,QWORD PTR [rbp-0xb0]
  6584b5:	4a 8d 14 dd 00 00 00 	lea    rdx,[r11*8+0x0]
  6584bc:	00 
  6584bd:	48 03 fa             	add    rdi,rdx
  6584c0:	41 ff c6             	inc    r14d
  6584c3:	41 83 e4 fc          	and    r12d,0xfffffffc
  6584c7:	41 83 e5 fc          	and    r13d,0xfffffffc
  6584cb:	48 2b 95 c8 f8 ff ff 	sub    rdx,QWORD PTR [rbp-0x738]
  6584d2:	4d 63 e4             	movsxd r12,r12d
  6584d5:	4d 63 ed             	movsxd r13,r13d
  6584d8:	4c 89 65 98          	mov    QWORD PTR [rbp-0x68],r12
  6584dc:	4c 89 ad 48 ff ff ff 	mov    QWORD PTR [rbp-0xb8],r13
  6584e3:	4c 8b a5 18 fa ff ff 	mov    r12,QWORD PTR [rbp-0x5e8]
  6584ea:	4c 8b ad a0 fb ff ff 	mov    r13,QWORD PTR [rbp-0x460]
  6584f1:	4c 03 e2             	add    r12,rdx
  6584f4:	49 03 d5             	add    rdx,r13
  6584f7:	4c 8b bd c0 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x640]
  6584fe:	49 2b d1             	sub    rdx,r9
  658501:	4c 8b 8d 78 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xa88]
  658508:	48 89 95 a8 f9 ff ff 	mov    QWORD PTR [rbp-0x658],rdx
  65850f:	4c 89 fa             	mov    rdx,r15
  658512:	49 2b d0             	sub    rdx,r8
  658515:	4c 03 ff             	add    r15,rdi
  658518:	4d 2b c1             	sub    r8,r9
  65851b:	44 89 b5 98 f8 ff ff 	mov    DWORD PTR [rbp-0x768],r14d
  658522:	4d 2b f8             	sub    r15,r8
  658525:	41 d1 ee             	shr    r14d,1
  658528:	4c 89 bd c0 f9 ff ff 	mov    QWORD PTR [rbp-0x640],r15
  65852f:	4e 8d 04 0a          	lea    r8,[rdx+r9*1]
  658533:	4c 8b bd b8 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x648]
  65853a:	44 89 b5 90 f8 ff ff 	mov    DWORD PTR [rbp-0x770],r14d
  658541:	4c 89 b5 f8 f5 ff ff 	mov    QWORD PTR [rbp-0xa08],r14
  658548:	4c 8b b5 20 fe ff ff 	mov    r14,QWORD PTR [rbp-0x1e0]
  65854f:	49 0f af f7          	imul   rsi,r15
  658553:	45 2b f3             	sub    r14d,r11d
  658556:	4c 2b ce             	sub    r9,rsi
  658559:	4d 0f af df          	imul   r11,r15
  65855d:	4d 63 f6             	movsxd r14,r14d
  658560:	49 2b f3             	sub    rsi,r11
  658563:	49 ff c6             	inc    r14
  658566:	49 03 d1             	add    rdx,r9
  658569:	4c 89 b5 80 fd ff ff 	mov    QWORD PTR [rbp-0x280],r14
  658570:	4c 2b c6             	sub    r8,rsi
  658573:	44 89 b5 98 fe ff ff 	mov    DWORD PTR [rbp-0x168],r14d
  65857a:	4b 8d 34 7b          	lea    rsi,[r11+r15*2]
  65857e:	41 83 e6 fc          	and    r14d,0xfffffffc
  658582:	48 03 d6             	add    rdx,rsi
  658585:	4d 63 f6             	movsxd r14,r14d
  658588:	4c 89 b5 b8 fb ff ff 	mov    QWORD PTR [rbp-0x448],r14
  65858f:	4c 89 a5 18 fa ff ff 	mov    QWORD PTR [rbp-0x5e8],r12
  658596:	4c 89 95 10 fa ff ff 	mov    QWORD PTR [rbp-0x5f0],r10
  65859d:	48 8b b5 08 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x5f8]
  6585a4:	4c 8b 95 d8 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xa28]
  6585ab:	4c 8b 9d 60 f9 ff ff 	mov    r11,QWORD PTR [rbp-0x6a0]
  6585b2:	44 8b a5 18 fb ff ff 	mov    r12d,DWORD PTR [rbp-0x4e8]
  6585b9:	44 8b ad 10 fb ff ff 	mov    r13d,DWORD PTR [rbp-0x4f0]
  6585c0:	4c 8b b5 18 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x6e8]
  6585c7:	48 89 95 b0 fb ff ff 	mov    QWORD PTR [rbp-0x450],rdx
  6585ce:	4c 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],r8
  6585d5:	48 89 bd 20 fa ff ff 	mov    QWORD PTR [rbp-0x5e0],rdi
  6585dc:	48 89 85 a8 fb ff ff 	mov    QWORD PTR [rbp-0x458],rax
  6585e3:	48 89 8d 00 fa ff ff 	mov    QWORD PTR [rbp-0x600],rcx
  6585ea:	4d 8b 3e             	mov    r15,QWORD PTR [r14]
  6585ed:	45 33 c0             	xor    r8d,r8d
  6585f0:	4c 8b 0d 29 21 46 00 	mov    r9,QWORD PTR [rip+0x462129]        # aba720 <mod_param_mp_nt_>
  6585f7:	49 63 07             	movsxd rax,DWORD PTR [r15]
  6585fa:	4d 63 4c 81 fc       	movsxd r9,DWORD PTR [r9+rax*4-0x4]
  6585ff:	4d 85 c9             	test   r9,r9
  658602:	0f 8e fb 30 00 00    	jle    65b703 <step3d_t_mod_mp_step3d_t_tile_+0x7543>
  658608:	45 3b ec             	cmp    r13d,r12d
  65860b:	0f 8c e5 5e 00 00    	jl     65e4f6 <step3d_t_mod_mp_step3d_t_tile_+0xa336>
  658611:	48 8b bd b8 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x748]
  658618:	48 8b 85 d0 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x930]
  65861f:	48 89 85 40 fd ff ff 	mov    QWORD PTR [rbp-0x2c0],rax
  658626:	48 8b 17             	mov    rdx,QWORD PTR [rdi]
  658629:	48 89 95 b0 fe ff ff 	mov    QWORD PTR [rbp-0x150],rdx
  658630:	48 8b 87 98 00 00 00 	mov    rax,QWORD PTR [rdi+0x98]
  658637:	48 8b b7 80 00 00 00 	mov    rsi,QWORD PTR [rdi+0x80]
  65863e:	48 8b 4f 68          	mov    rcx,QWORD PTR [rdi+0x68]
  658642:	48 8b 57 50          	mov    rdx,QWORD PTR [rdi+0x50]
  658646:	48 8b 7f 38          	mov    rdi,QWORD PTR [rdi+0x38]
  65864a:	4c 89 bd 20 fb ff ff 	mov    QWORD PTR [rbp-0x4e0],r15
  658651:	48 89 85 b8 fe ff ff 	mov    QWORD PTR [rbp-0x148],rax
  658658:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  65865c:	48 89 95 00 ff ff ff 	mov    QWORD PTR [rbp-0x100],rdx
  658663:	48 89 8d 88 fa ff ff 	mov    QWORD PTR [rbp-0x578],rcx
  65866a:	48 89 b5 90 fa ff ff 	mov    QWORD PTR [rbp-0x570],rsi
  658671:	4c 89 8d 98 fa ff ff 	mov    QWORD PTR [rbp-0x568],r9
  658678:	4c 89 9d 60 f9 ff ff 	mov    QWORD PTR [rbp-0x6a0],r11
  65867f:	48 83 7d f8 08       	cmp    QWORD PTR [rbp-0x8],0x8
  658684:	74 2c                	je     6586b2 <step3d_t_mod_mp_step3d_t_tile_+0x44f2>
  658686:	4c 89 85 80 fa ff ff 	mov    QWORD PTR [rbp-0x580],r8
  65868d:	48 8b 85 40 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2c0]
  658694:	48 8b 95 b0 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x150]
  65869b:	48 8b 8d b8 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x148]
  6586a2:	4c 8b 95 88 fa ff ff 	mov    r10,QWORD PTR [rbp-0x578]
  6586a9:	4c 8b 9d 90 fa ff ff 	mov    r11,QWORD PTR [rbp-0x570]
  6586b0:	eb 38                	jmp    6586ea <step3d_t_mod_mp_step3d_t_tile_+0x452a>
  6586b2:	4c 89 85 80 fa ff ff 	mov    QWORD PTR [rbp-0x580],r8
  6586b9:	48 8b 85 40 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2c0]
  6586c0:	48 8b 95 b0 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x150]
  6586c7:	48 8b 8d b8 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x148]
  6586ce:	4c 8b 95 88 fa ff ff 	mov    r10,QWORD PTR [rbp-0x578]
  6586d5:	4c 8b 9d 90 fa ff ff 	mov    r11,QWORD PTR [rbp-0x570]
  6586dc:	48 83 bd b8 f9 ff ff 	cmp    QWORD PTR [rbp-0x648],0x8
  6586e3:	08 
  6586e4:	0f 84 12 04 00 00    	je     658afc <step3d_t_mod_mp_step3d_t_tile_+0x493c>
  6586ea:	4c 8b 8d 80 fa ff ff 	mov    r9,QWORD PTR [rbp-0x580]
  6586f1:	48 2b d1             	sub    rdx,rcx
  6586f4:	4c 8b bd 50 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6b0]
  6586fb:	45 33 e4             	xor    r12d,r12d
  6586fe:	48 8b bd 00 ff ff ff 	mov    rdi,QWORD PTR [rbp-0x100]
  658705:	48 89 fe             	mov    rsi,rdi
  658708:	48 0f af b5 a0 f9 ff 	imul   rsi,QWORD PTR [rbp-0x660]
  65870f:	ff 
  658710:	45 33 ed             	xor    r13d,r13d
  658713:	4d 8d 41 01          	lea    r8,[r9+0x1]
  658717:	4c 8b 8d 60 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x6a0]
  65871e:	4c 89 85 a0 fa ff ff 	mov    QWORD PTR [rbp-0x560],r8
  658725:	49 0f af c8          	imul   rcx,r8
  658729:	4c 8b 45 f8          	mov    r8,QWORD PTR [rbp-0x8]
  65872d:	4f 8d 34 0f          	lea    r14,[r15+r9*1]
  658731:	4c 8b bd 20 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6e0]
  658738:	4c 0f af ff          	imul   r15,rdi
  65873c:	4d 0f af f2          	imul   r14,r10
  658740:	48 89 f7             	mov    rdi,rsi
  658743:	48 f7 de             	neg    rsi
  658746:	49 03 f7             	add    rsi,r15
  658749:	4d 03 fa             	add    r15,r10
  65874c:	49 f7 da             	neg    r10
  65874f:	4d 03 d6             	add    r10,r14
  658752:	4c 2b d6             	sub    r10,rsi
  658755:	4b 8d 34 5b          	lea    rsi,[r11+r11*2]
  658759:	4c 03 f6             	add    r14,rsi
  65875c:	48 f7 de             	neg    rsi
  65875f:	49 03 f3             	add    rsi,r11
  658762:	49 f7 db             	neg    r11
  658765:	4d 2b f7             	sub    r14,r15
  658768:	4c 03 da             	add    r11,rdx
  65876b:	4d 03 de             	add    r11,r14
  65876e:	4d 89 c6             	mov    r14,r8
  658771:	4c 8b 8d 28 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x6d8]
  658778:	48 2b d6             	sub    rdx,rsi
  65877b:	4c 0f af b5 30 fe ff 	imul   r14,QWORD PTR [rbp-0x1d0]
  658782:	ff 
  658783:	4d 0f af c8          	imul   r9,r8
  658787:	49 03 d2             	add    rdx,r10
  65878a:	49 2b f9             	sub    rdi,r9
  65878d:	4c 8b 95 18 fa ff ff 	mov    r10,QWORD PTR [rbp-0x5e8]
  658794:	4d 2b ce             	sub    r9,r14
  658797:	49 2b d1             	sub    rdx,r9
  65879a:	4f 8d 0c 30          	lea    r9,[r8+r14*1]
  65879e:	4c 03 cf             	add    r9,rdi
  6587a1:	48 03 d1             	add    rdx,rcx
  6587a4:	4d 03 cb             	add    r9,r11
  6587a7:	4a 8d 34 10          	lea    rsi,[rax+r10*1]
  6587ab:	48 03 85 a8 f9 ff ff 	add    rax,QWORD PTR [rbp-0x658]
  6587b2:	4f 8d 14 46          	lea    r10,[r14+r8*2]
  6587b6:	49 f7 d8             	neg    r8
  6587b9:	4c 03 d7             	add    r10,rdi
  6587bc:	4d 03 c6             	add    r8,r14
  6587bf:	4d 03 d3             	add    r10,r11
  6587c2:	49 03 f8             	add    rdi,r8
  6587c5:	4c 03 c9             	add    r9,rcx
  6587c8:	4c 03 df             	add    r11,rdi
  6587cb:	4c 03 d1             	add    r10,rcx
  6587ce:	49 03 cb             	add    rcx,r11
  6587d1:	45 33 c0             	xor    r8d,r8d
  6587d4:	4c 8b b5 80 fd ff ff 	mov    r14,QWORD PTR [rbp-0x280]
  6587db:	33 ff                	xor    edi,edi
  6587dd:	4c 8b 9d b8 f9 ff ff 	mov    r11,QWORD PTR [rbp-0x648]
  6587e4:	48 89 85 40 fd ff ff 	mov    QWORD PTR [rbp-0x2c0],rax
  6587eb:	48 89 95 b0 fe ff ff 	mov    QWORD PTR [rbp-0x150],rdx
  6587f2:	48 89 8d b8 fe ff ff 	mov    QWORD PTR [rbp-0x148],rcx
  6587f9:	4c 89 95 c0 fb ff ff 	mov    QWORD PTR [rbp-0x440],r10
  658800:	4c 89 8d c8 fb ff ff 	mov    QWORD PTR [rbp-0x438],r9
  658807:	48 89 b5 d0 fb ff ff 	mov    QWORD PTR [rbp-0x430],rsi
  65880e:	48 8b 85 20 fe ff ff 	mov    rax,QWORD PTR [rbp-0x1e0]
  658815:	48 3b 85 30 fe ff ff 	cmp    rax,QWORD PTR [rbp-0x1d0]
  65881c:	0f 8c b0 02 00 00    	jl     658ad2 <step3d_t_mod_mp_step3d_t_tile_+0x4912>
  658822:	49 83 fe 04          	cmp    r14,0x4
  658826:	0f 8c 54 57 00 00    	jl     65df80 <step3d_t_mod_mp_step3d_t_tile_+0x9dc0>
  65882c:	48 8b 85 40 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2c0]
  658833:	48 03 c7             	add    rax,rdi
  658836:	48 89 85 48 fd ff ff 	mov    QWORD PTR [rbp-0x2b8],rax
  65883d:	48 83 e0 0f          	and    rax,0xf
  658841:	85 c0                	test   eax,eax
  658843:	74 0d                	je     658852 <step3d_t_mod_mp_step3d_t_tile_+0x4692>
  658845:	a8 07                	test   al,0x7
  658847:	0f 85 33 57 00 00    	jne    65df80 <step3d_t_mod_mp_step3d_t_tile_+0x9dc0>
  65884d:	b8 01 00 00 00       	mov    eax,0x1
  658852:	41 89 c1             	mov    r9d,eax
  658855:	49 8d 51 04          	lea    rdx,[r9+0x4]
  658859:	4c 3b f2             	cmp    r14,rdx
  65885c:	0f 8c 1e 57 00 00    	jl     65df80 <step3d_t_mod_mp_step3d_t_tile_+0x9dc0>
  658862:	4c 8b bd b8 fe ff ff 	mov    r15,QWORD PTR [rbp-0x148]
  658869:	33 c9                	xor    ecx,ecx
  65886b:	8b 95 98 fe ff ff    	mov    edx,DWORD PTR [rbp-0x168]
  658871:	41 89 d2             	mov    r10d,edx
  658874:	44 2b d0             	sub    r10d,eax
  658877:	33 f6                	xor    esi,esi
  658879:	41 83 e2 03          	and    r10d,0x3
  65887d:	4d 03 fc             	add    r15,r12
  658880:	4c 89 7d a8          	mov    QWORD PTR [rbp-0x58],r15
  658884:	41 f7 da             	neg    r10d
  658887:	4c 8b bd b0 fe ff ff 	mov    r15,QWORD PTR [rbp-0x150]
  65888e:	44 03 d2             	add    r10d,edx
  658891:	4d 63 d2             	movsxd r10,r10d
  658894:	33 d2                	xor    edx,edx
  658896:	4d 03 fc             	add    r15,r12
  658899:	4c 89 bd c8 fe ff ff 	mov    QWORD PTR [rbp-0x138],r15
  6588a0:	4c 8b bd a8 fe ff ff 	mov    r15,QWORD PTR [rbp-0x158]
  6588a7:	4d 03 f8             	add    r15,r8
  6588aa:	4c 89 bd c0 fe ff ff 	mov    QWORD PTR [rbp-0x140],r15
  6588b1:	85 c0                	test   eax,eax
  6588b3:	76 61                	jbe    658916 <step3d_t_mod_mp_step3d_t_tile_+0x4756>
  6588b5:	4c 89 ad 88 fd ff ff 	mov    QWORD PTR [rbp-0x278],r13
  6588bc:	4c 89 a5 90 fd ff ff 	mov    QWORD PTR [rbp-0x270],r12
  6588c3:	4c 89 f8             	mov    rax,r15
  6588c6:	4c 8b a5 c8 fe ff ff 	mov    r12,QWORD PTR [rbp-0x138]
  6588cd:	4c 8b 6d a8          	mov    r13,QWORD PTR [rbp-0x58]
  6588d1:	4c 8b b5 48 fd ff ff 	mov    r14,QWORD PTR [rbp-0x2b8]
  6588d8:	4c 8b 7d f8          	mov    r15,QWORD PTR [rbp-0x8]
  6588dc:	c4 a1 7b 10 04 22    	vmovsd xmm0,QWORD PTR [rdx+r12*1]
  6588e2:	c4 a1 7b 5c 0c 2a    	vsubsd xmm1,xmm0,QWORD PTR [rdx+r13*1]
  6588e8:	49 03 d7             	add    rdx,r15
  6588eb:	c5 f3 59 14 06       	vmulsd xmm2,xmm1,QWORD PTR [rsi+rax*1]
  6588f0:	49 03 f3             	add    rsi,r11
  6588f3:	c4 c1 7b 11 14 ce    	vmovsd QWORD PTR [r14+rcx*8],xmm2
  6588f9:	48 ff c1             	inc    rcx
  6588fc:	49 3b c9             	cmp    rcx,r9
  6588ff:	72 db                	jb     6588dc <step3d_t_mod_mp_step3d_t_tile_+0x471c>
  658901:	4c 8b ad 88 fd ff ff 	mov    r13,QWORD PTR [rbp-0x278]
  658908:	4c 8b a5 90 fd ff ff 	mov    r12,QWORD PTR [rbp-0x270]
  65890f:	4c 8b b5 80 fd ff ff 	mov    r14,QWORD PTR [rbp-0x280]
  658916:	4c 8b bd c0 fb ff ff 	mov    r15,QWORD PTR [rbp-0x440]
  65891d:	4c 89 de             	mov    rsi,r11
  658920:	48 8b 95 d0 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x430]
  658927:	48 8b 85 c8 fb ff ff 	mov    rax,QWORD PTR [rbp-0x438]
  65892e:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
  658932:	4d 03 fc             	add    r15,r12
  658935:	4c 89 bd d8 fb ff ff 	mov    QWORD PTR [rbp-0x428],r15
  65893c:	48 03 d7             	add    rdx,rdi
  65893f:	4c 8b bd b0 fb ff ff 	mov    r15,QWORD PTR [rbp-0x450]
  658946:	49 03 c4             	add    rax,r12
  658949:	4c 89 55 a0          	mov    QWORD PTR [rbp-0x60],r10
  65894d:	48 89 bd 98 fd ff ff 	mov    QWORD PTR [rbp-0x268],rdi
  658954:	4c 89 85 a0 fd ff ff 	mov    QWORD PTR [rbp-0x260],r8
  65895b:	4d 03 f8             	add    r15,r8
  65895e:	4c 89 ad 88 fd ff ff 	mov    QWORD PTR [rbp-0x278],r13
  658965:	4c 89 a5 90 fd ff ff 	mov    QWORD PTR [rbp-0x270],r12
  65896c:	49 0f af f1          	imul   rsi,r9
  658970:	49 0f af c9          	imul   rcx,r9
  658974:	4d 89 fe             	mov    r14,r15
  658977:	48 8b bd d8 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x428]
  65897e:	4c 8b 85 c0 fe ff ff 	mov    r8,QWORD PTR [rbp-0x140]
  658985:	4c 8b 95 c8 fe ff ff 	mov    r10,QWORD PTR [rbp-0x138]
  65898c:	4c 8b a5 48 fd ff ff 	mov    r12,QWORD PTR [rbp-0x2b8]
  658993:	4c 8b 6d f8          	mov    r13,QWORD PTR [rbp-0x8]
  658997:	4d 8d 3c 0a          	lea    r15,[r10+rcx*1]
  65899b:	c4 c1 7b 10 07       	vmovsd xmm0,QWORD PTR [r15]
  6589a0:	c4 81 79 16 14 2f    	vmovhpd xmm2,xmm0,QWORD PTR [r15+r13*1]
  6589a6:	4c 8b 7d a8          	mov    r15,QWORD PTR [rbp-0x58]
  6589aa:	4c 03 f9             	add    r15,rcx
  6589ad:	c4 c1 7b 10 0f       	vmovsd xmm1,QWORD PTR [r15]
  6589b2:	c4 81 71 16 1c 2f    	vmovhpd xmm3,xmm1,QWORD PTR [r15+r13*1]
  6589b8:	4d 8d 3c 30          	lea    r15,[r8+rsi*1]
  6589bc:	c4 c1 7b 10 27       	vmovsd xmm4,QWORD PTR [r15]
  6589c1:	c4 81 59 16 34 1f    	vmovhpd xmm6,xmm4,QWORD PTR [r15+r11*1]
  6589c7:	4c 8d 3c 0f          	lea    r15,[rdi+rcx*1]
  6589cb:	c4 41 7b 10 07       	vmovsd xmm8,QWORD PTR [r15]
  6589d0:	c4 01 39 16 14 2f    	vmovhpd xmm10,xmm8,QWORD PTR [r15+r13*1]
  6589d6:	4c 8d 3c 08          	lea    r15,[rax+rcx*1]
  6589da:	c4 41 7b 10 0f       	vmovsd xmm9,QWORD PTR [r15]
  6589df:	4a 8d 0c a9          	lea    rcx,[rcx+r13*4]
  6589e3:	c4 01 31 16 1c 2f    	vmovhpd xmm11,xmm9,QWORD PTR [r15+r13*1]
  6589e9:	4d 8d 3c 36          	lea    r15,[r14+rsi*1]
  6589ed:	c5 e9 5c eb          	vsubpd xmm5,xmm2,xmm3
  6589f1:	c4 41 29 5c eb       	vsubpd xmm13,xmm10,xmm11
  6589f6:	c5 d1 59 fe          	vmulpd xmm7,xmm5,xmm6
  6589fa:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  6589ff:	4a 8d 34 9e          	lea    rsi,[rsi+r11*4]
  658a03:	c4 01 19 16 34 1f    	vmovhpd xmm14,xmm12,QWORD PTR [r15+r11*1]
  658a09:	c4 41 11 59 fe       	vmulpd xmm15,xmm13,xmm14
  658a0e:	c4 81 79 11 3c cc    	vmovupd XMMWORD PTR [r12+r9*8],xmm7
  658a14:	c4 21 79 11 7c ca 10 	vmovupd XMMWORD PTR [rdx+r9*8+0x10],xmm15
  658a1b:	49 83 c1 04          	add    r9,0x4
  658a1f:	4c 3b 4d a0          	cmp    r9,QWORD PTR [rbp-0x60]
  658a23:	0f 82 6e ff ff ff    	jb     658997 <step3d_t_mod_mp_step3d_t_tile_+0x47d7>
  658a29:	4c 8b 55 a0          	mov    r10,QWORD PTR [rbp-0x60]
  658a2d:	48 8b bd 98 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x268]
  658a34:	4c 8b 85 a0 fd ff ff 	mov    r8,QWORD PTR [rbp-0x260]
  658a3b:	4c 8b ad 88 fd ff ff 	mov    r13,QWORD PTR [rbp-0x278]
  658a42:	4c 8b a5 90 fd ff ff 	mov    r12,QWORD PTR [rbp-0x270]
  658a49:	4c 8b b5 80 fd ff ff 	mov    r14,QWORD PTR [rbp-0x280]
  658a50:	4c 89 d9             	mov    rcx,r11
  658a53:	4c 8b 4d f8          	mov    r9,QWORD PTR [rbp-0x8]
  658a57:	4d 0f af ca          	imul   r9,r10
  658a5b:	49 0f af ca          	imul   rcx,r10
  658a5f:	4d 3b d6             	cmp    r10,r14
  658a62:	73 6e                	jae    658ad2 <step3d_t_mod_mp_step3d_t_tile_+0x4912>
  658a64:	4c 8b bd a8 fe ff ff 	mov    r15,QWORD PTR [rbp-0x158]
  658a6b:	48 8b 95 40 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x2c0]
  658a72:	48 8b 85 b8 fe ff ff 	mov    rax,QWORD PTR [rbp-0x148]
  658a79:	48 8b b5 b0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x150]
  658a80:	4d 03 f8             	add    r15,r8
  658a83:	4c 89 bd e0 fb ff ff 	mov    QWORD PTR [rbp-0x420],r15
  658a8a:	48 03 d7             	add    rdx,rdi
  658a8d:	4c 89 a5 90 fd ff ff 	mov    QWORD PTR [rbp-0x270],r12
  658a94:	49 03 c4             	add    rax,r12
  658a97:	4c 8b 7d f8          	mov    r15,QWORD PTR [rbp-0x8]
  658a9b:	49 03 f4             	add    rsi,r12
  658a9e:	4c 8b a5 e0 fb ff ff 	mov    r12,QWORD PTR [rbp-0x420]
  658aa5:	c4 c1 7b 10 04 31    	vmovsd xmm0,QWORD PTR [r9+rsi*1]
  658aab:	c4 c1 7b 5c 0c 01    	vsubsd xmm1,xmm0,QWORD PTR [r9+rax*1]
  658ab1:	4d 03 cf             	add    r9,r15
  658ab4:	c4 a1 73 59 14 21    	vmulsd xmm2,xmm1,QWORD PTR [rcx+r12*1]
  658aba:	49 03 cb             	add    rcx,r11
  658abd:	c4 a1 7b 11 14 d2    	vmovsd QWORD PTR [rdx+r10*8],xmm2
  658ac3:	49 ff c2             	inc    r10
  658ac6:	4d 3b d6             	cmp    r10,r14
  658ac9:	72 da                	jb     658aa5 <step3d_t_mod_mp_step3d_t_tile_+0x48e5>
  658acb:	4c 8b a5 90 fd ff ff 	mov    r12,QWORD PTR [rbp-0x270]
  658ad2:	49 ff c5             	inc    r13
  658ad5:	4c 03 a5 00 ff ff ff 	add    r12,QWORD PTR [rbp-0x100]
  658adc:	4c 03 85 80 fe ff ff 	add    r8,QWORD PTR [rbp-0x180]
  658ae3:	48 03 bd 70 ff ff ff 	add    rdi,QWORD PTR [rbp-0x90]
  658aea:	4c 3b ad 68 ff ff ff 	cmp    r13,QWORD PTR [rbp-0x98]
  658af1:	0f 82 17 fd ff ff    	jb     65880e <step3d_t_mod_mp_step3d_t_tile_+0x464e>
  658af7:	e9 2b 01 00 00       	jmp    658c27 <step3d_t_mod_mp_step3d_t_tile_+0x4a67>
  658afc:	4c 8b a5 50 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6b0]
  658b03:	48 2b d1             	sub    rdx,rcx
  658b06:	4c 8b ad 60 f9 ff ff 	mov    r13,QWORD PTR [rbp-0x6a0]
  658b0d:	4f 8d 0c 5b          	lea    r9,[r11+r11*2]
  658b11:	48 8b b5 80 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x580]
  658b18:	49 f7 d9             	neg    r9
  658b1b:	4d 03 d9             	add    r11,r9
  658b1e:	33 ff                	xor    edi,edi
  658b20:	48 03 95 20 fa ff ff 	add    rdx,QWORD PTR [rbp-0x5e0]
  658b27:	4f 8d 34 2c          	lea    r14,[r12+r13*1]
  658b2b:	4d 0f af f2          	imul   r14,r10
  658b2f:	4d 2b f2             	sub    r14,r10
  658b32:	4c 8d 46 01          	lea    r8,[rsi+0x1]
  658b36:	48 8b b5 20 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x6e0]
  658b3d:	4d 2b de             	sub    r11,r14
  658b40:	48 f7 de             	neg    rsi
  658b43:	49 2b d3             	sub    rdx,r11
  658b46:	48 03 b5 a0 f9 ff ff 	add    rsi,QWORD PTR [rbp-0x660]
  658b4d:	49 0f af c8          	imul   rcx,r8
  658b51:	48 0f af b5 00 ff ff 	imul   rsi,QWORD PTR [rbp-0x100]
  658b58:	ff 
  658b59:	48 03 d1             	add    rdx,rcx
  658b5c:	4c 89 85 a0 fa ff ff 	mov    QWORD PTR [rbp-0x560],r8
  658b63:	48 03 f2             	add    rsi,rdx
  658b66:	48 03 85 a8 f9 ff ff 	add    rax,QWORD PTR [rbp-0x658]
  658b6d:	4c 8b 85 c0 f9 ff ff 	mov    r8,QWORD PTR [rbp-0x640]
  658b74:	4c 8b 95 00 ff ff ff 	mov    r10,QWORD PTR [rbp-0x100]
  658b7b:	4c 8b 9d 80 fd ff ff 	mov    r11,QWORD PTR [rbp-0x280]
  658b82:	4c 8b a5 70 ff ff ff 	mov    r12,QWORD PTR [rbp-0x90]
  658b89:	4c 8b ad 68 ff ff ff 	mov    r13,QWORD PTR [rbp-0x98]
  658b90:	4c 8b b5 30 fe ff ff 	mov    r14,QWORD PTR [rbp-0x1d0]
  658b97:	4c 8b bd 20 fe ff ff 	mov    r15,QWORD PTR [rbp-0x1e0]
  658b9e:	4d 3b fe             	cmp    r15,r14
  658ba1:	7c 6b                	jl     658c0e <step3d_t_mod_mp_step3d_t_tile_+0x4a4e>
  658ba3:	49 83 fb 04          	cmp    r11,0x4
  658ba7:	0f 8c 41 59 00 00    	jl     65e4ee <step3d_t_mod_mp_step3d_t_tile_+0xa32e>
  658bad:	4c 8b 8d b8 fb ff ff 	mov    r9,QWORD PTR [rbp-0x448]
  658bb4:	33 c9                	xor    ecx,ecx
  658bb6:	48 89 f2             	mov    rdx,rsi
  658bb9:	4d 89 cf             	mov    r15,r9
  658bbc:	c5 fd 10 02          	vmovupd ymm0,YMMWORD PTR [rdx]
  658bc0:	c5 fd 5c 4a f8       	vsubpd ymm1,ymm0,YMMWORD PTR [rdx-0x8]
  658bc5:	48 83 c2 20          	add    rdx,0x20
  658bc9:	c4 c1 75 59 14 c8    	vmulpd ymm2,ymm1,YMMWORD PTR [r8+rcx*8]
  658bcf:	c5 fd 11 14 c8       	vmovupd YMMWORD PTR [rax+rcx*8],ymm2
  658bd4:	48 83 c1 04          	add    rcx,0x4
  658bd8:	49 3b cf             	cmp    rcx,r15
  658bdb:	72 df                	jb     658bbc <step3d_t_mod_mp_step3d_t_tile_+0x49fc>
  658bdd:	4c 8b bd 20 fe ff ff 	mov    r15,QWORD PTR [rbp-0x1e0]
  658be4:	4d 3b cb             	cmp    r9,r11
  658be7:	73 25                	jae    658c0e <step3d_t_mod_mp_step3d_t_tile_+0x4a4e>
  658be9:	4a 8d 14 ce          	lea    rdx,[rsi+r9*8]
  658bed:	c5 fb 10 02          	vmovsd xmm0,QWORD PTR [rdx]
  658bf1:	c5 fb 5c 4a f8       	vsubsd xmm1,xmm0,QWORD PTR [rdx-0x8]
  658bf6:	48 83 c2 08          	add    rdx,0x8
  658bfa:	c4 81 73 59 14 c8    	vmulsd xmm2,xmm1,QWORD PTR [r8+r9*8]
  658c00:	c4 a1 7b 11 14 c8    	vmovsd QWORD PTR [rax+r9*8],xmm2
  658c06:	49 ff c1             	inc    r9
  658c09:	4d 3b cb             	cmp    r9,r11
  658c0c:	72 df                	jb     658bed <step3d_t_mod_mp_step3d_t_tile_+0x4a2d>
  658c0e:	48 ff c7             	inc    rdi
  658c11:	49 03 c4             	add    rax,r12
  658c14:	4c 03 85 80 fe ff ff 	add    r8,QWORD PTR [rbp-0x180]
  658c1b:	49 03 f2             	add    rsi,r10
  658c1e:	49 3b fd             	cmp    rdi,r13
  658c21:	0f 82 77 ff ff ff    	jb     658b9e <step3d_t_mod_mp_step3d_t_tile_+0x49de>
  658c27:	4c 8b bd 20 fb ff ff 	mov    r15,QWORD PTR [rbp-0x4e0]
  658c2e:	4c 8b 25 6b 1f 46 00 	mov    r12,QWORD PTR [rip+0x461f6b]        # ababa0 <mod_scalars_mp_compositegrid_>
  658c35:	4d 63 37             	movsxd r14,DWORD PTR [r15]
  658c38:	4d 89 f5             	mov    r13,r14
  658c3b:	49 c1 e5 04          	shl    r13,0x4
  658c3f:	43 f6 44 2c f0 01    	test   BYTE PTR [r12+r13*1-0x10],0x1
  658c45:	0f 85 41 01 00 00    	jne    658d8c <step3d_t_mod_mp_step3d_t_tile_+0x4bcc>
  658c4b:	4c 8b 3d ce 2c 46 00 	mov    r15,QWORD PTR [rip+0x462cce]        # abb920 <mod_scalars_mp_ewperiodic_>
  658c52:	43 f6 44 b7 fc 01    	test   BYTE PTR [r15+r14*4-0x4],0x1
  658c58:	0f 85 2e 01 00 00    	jne    658d8c <step3d_t_mod_mp_step3d_t_tile_+0x4bcc>
  658c5e:	4d 89 f3             	mov    r11,r14
  658c61:	4c 89 f0             	mov    rax,r14
  658c64:	49 c1 e3 05          	shl    r11,0x5
  658c68:	48 c1 e0 0b          	shl    rax,0xb
  658c6c:	49 2b c3             	sub    rax,r11
  658c6f:	4c 8b 1d ca 27 46 00 	mov    r11,QWORD PTR [rip+0x4627ca]        # abb440 <mod_param_mp_domain_>
  658c76:	49 8b 8c 03 a8 f8 ff 	mov    rcx,QWORD PTR [r11+rax*1-0x758]
  658c7d:	ff 
  658c7e:	48 f7 d9             	neg    rcx
  658c81:	48 03 8d 00 f9 ff ff 	add    rcx,QWORD PTR [rbp-0x700]
  658c88:	49 0f af 8c 03 a0 f8 	imul   rcx,QWORD PTR [r11+rax*1-0x760]
  658c8f:	ff ff 
  658c91:	49 8b 94 03 68 f8 ff 	mov    rdx,QWORD PTR [r11+rax*1-0x798]
  658c98:	ff 
  658c99:	f6 04 0a 01          	test   BYTE PTR [rdx+rcx*1],0x1
  658c9d:	0f 84 e9 00 00 00    	je     658d8c <step3d_t_mod_mp_step3d_t_tile_+0x4bcc>
  658ca3:	8b 85 10 fb ff ff    	mov    eax,DWORD PTR [rbp-0x4f0]
  658ca9:	3b 85 18 fb ff ff    	cmp    eax,DWORD PTR [rbp-0x4e8]
  658caf:	0f 8c be 00 00 00    	jl     658d73 <step3d_t_mod_mp_step3d_t_tile_+0x4bb3>
  658cb5:	ba 01 00 00 00       	mov    edx,0x1
  658cba:	45 33 d2             	xor    r10d,r10d
  658cbd:	48 8b 85 d0 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x930]
  658cc4:	45 33 c9             	xor    r9d,r9d
  658cc7:	83 bd 90 f8 ff ff 00 	cmp    DWORD PTR [rbp-0x770],0x0
  658cce:	74 5f                	je     658d2f <step3d_t_mod_mp_step3d_t_tile_+0x4b6f>
  658cd0:	4c 8b 85 f0 f5 ff ff 	mov    r8,QWORD PTR [rbp-0xa10]
  658cd7:	48 8b bd d0 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x530]
  658cde:	48 8b 95 e0 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x520]
  658ce5:	48 8b 8d e0 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xa20]
  658cec:	4c 03 c0             	add    r8,rax
  658cef:	4c 89 b5 e8 fa ff ff 	mov    QWORD PTR [rbp-0x518],r14
  658cf6:	48 03 f8             	add    rdi,rax
  658cf9:	48 8d 34 10          	lea    rsi,[rax+rdx*1]
  658cfd:	48 8b 95 f8 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xa08]
  658d04:	4d 8b 34 39          	mov    r14,QWORD PTR [r9+rdi*1]
  658d08:	49 ff c2             	inc    r10
  658d0b:	4d 89 74 31 f8       	mov    QWORD PTR [r9+rsi*1-0x8],r14
  658d10:	4f 8b 74 01 08       	mov    r14,QWORD PTR [r9+r8*1+0x8]
  658d15:	4f 89 34 01          	mov    QWORD PTR [r9+r8*1],r14
  658d19:	4d 8d 4c 09 10       	lea    r9,[r9+rcx*1+0x10]
  658d1e:	4c 3b d2             	cmp    r10,rdx
  658d21:	72 e1                	jb     658d04 <step3d_t_mod_mp_step3d_t_tile_+0x4b44>
  658d23:	4c 8b b5 e8 fa ff ff 	mov    r14,QWORD PTR [rbp-0x518]
  658d2a:	43 8d 54 12 01       	lea    edx,[r10+r10*1+0x1]
  658d2f:	8d 4a ff             	lea    ecx,[rdx-0x1]
  658d32:	3b 8d 98 f8 ff ff    	cmp    ecx,DWORD PTR [rbp-0x768]
  658d38:	73 20                	jae    658d5a <step3d_t_mod_mp_step3d_t_tile_+0x4b9a>
  658d3a:	48 63 d2             	movsxd rdx,edx
  658d3d:	48 0f af 95 70 ff ff 	imul   rdx,QWORD PTR [rbp-0x90]
  658d44:	ff 
  658d45:	48 8b 8d e8 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xa18]
  658d4c:	48 8d 3c 08          	lea    rdi,[rax+rcx*1]
  658d50:	48 8b 74 3a f8       	mov    rsi,QWORD PTR [rdx+rdi*1-0x8]
  658d55:	48 89 74 3a f0       	mov    QWORD PTR [rdx+rdi*1-0x10],rsi
  658d5a:	43 f6 44 2c f8 01    	test   BYTE PTR [r12+r13*1-0x8],0x1
  658d60:	0f 85 42 01 00 00    	jne    658ea8 <step3d_t_mod_mp_step3d_t_tile_+0x4ce8>
  658d66:	43 f6 44 b7 fc 01    	test   BYTE PTR [r15+r14*4-0x4],0x1
  658d6c:	74 44                	je     658db2 <step3d_t_mod_mp_step3d_t_tile_+0x4bf2>
  658d6e:	e9 35 01 00 00       	jmp    658ea8 <step3d_t_mod_mp_step3d_t_tile_+0x4ce8>
  658d73:	43 f6 44 2c f8 01    	test   BYTE PTR [r12+r13*1-0x8],0x1
  658d79:	0f 85 91 09 00 00    	jne    659710 <step3d_t_mod_mp_step3d_t_tile_+0x5550>
  658d7f:	43 f6 44 b7 fc 01    	test   BYTE PTR [r15+r14*4-0x4],0x1
  658d85:	74 2b                	je     658db2 <step3d_t_mod_mp_step3d_t_tile_+0x4bf2>
  658d87:	e9 84 09 00 00       	jmp    659710 <step3d_t_mod_mp_step3d_t_tile_+0x5550>
  658d8c:	43 f6 44 2c f8 01    	test   BYTE PTR [r12+r13*1-0x8],0x1
  658d92:	0f 85 f7 00 00 00    	jne    658e8f <step3d_t_mod_mp_step3d_t_tile_+0x4ccf>
  658d98:	48 8b 05 81 2b 46 00 	mov    rax,QWORD PTR [rip+0x462b81]        # abb920 <mod_scalars_mp_ewperiodic_>
  658d9f:	42 f6 44 b0 fc 01    	test   BYTE PTR [rax+r14*4-0x4],0x1
  658da5:	0f 85 e4 00 00 00    	jne    658e8f <step3d_t_mod_mp_step3d_t_tile_+0x4ccf>
  658dab:	4c 8b 1d 8e 26 46 00 	mov    r11,QWORD PTR [rip+0x46268e]        # abb440 <mod_param_mp_domain_>
  658db2:	4c 89 f0             	mov    rax,r14
  658db5:	4c 89 f2             	mov    rdx,r14
  658db8:	48 c1 e0 05          	shl    rax,0x5
  658dbc:	48 c1 e2 0b          	shl    rdx,0xb
  658dc0:	48 2b d0             	sub    rdx,rax
  658dc3:	49 8b 8c 13 60 f8 ff 	mov    rcx,QWORD PTR [r11+rdx*1-0x7a0]
  658dca:	ff 
  658dcb:	48 f7 d9             	neg    rcx
  658dce:	48 03 8d 00 f9 ff ff 	add    rcx,QWORD PTR [rbp-0x700]
  658dd5:	49 0f af 8c 13 58 f8 	imul   rcx,QWORD PTR [r11+rdx*1-0x7a8]
  658ddc:	ff ff 
  658dde:	4d 8b 9c 13 20 f8 ff 	mov    r11,QWORD PTR [r11+rdx*1-0x7e0]
  658de5:	ff 
  658de6:	41 f6 04 0b 01       	test   BYTE PTR [r11+rcx*1],0x1
  658deb:	0f 84 9e 00 00 00    	je     658e8f <step3d_t_mod_mp_step3d_t_tile_+0x4ccf>
  658df1:	8b 85 10 fb ff ff    	mov    eax,DWORD PTR [rbp-0x4f0]
  658df7:	3b 85 18 fb ff ff    	cmp    eax,DWORD PTR [rbp-0x4e8]
  658dfd:	0f 8c 0d 09 00 00    	jl     659710 <step3d_t_mod_mp_step3d_t_tile_+0x5550>
  658e03:	be 01 00 00 00       	mov    esi,0x1
  658e08:	33 c9                	xor    ecx,ecx
  658e0a:	48 8b 85 d0 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x930]
  658e11:	33 d2                	xor    edx,edx
  658e13:	83 bd 90 f8 ff ff 00 	cmp    DWORD PTR [rbp-0x770],0x0
  658e1a:	74 47                	je     658e63 <step3d_t_mod_mp_step3d_t_tile_+0x4ca3>
  658e1c:	48 8b bd 00 f6 ff ff 	mov    rdi,QWORD PTR [rbp-0xa00]
  658e23:	48 8b b5 50 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x7b0]
  658e2a:	4c 8b 95 f8 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xa08]
  658e31:	4c 8b 9d e0 f5 ff ff 	mov    r11,QWORD PTR [rbp-0xa20]
  658e38:	48 03 f8             	add    rdi,rax
  658e3b:	48 03 f0             	add    rsi,rax
  658e3e:	48 ff c1             	inc    rcx
  658e41:	4c 8b 44 32 08       	mov    r8,QWORD PTR [rdx+rsi*1+0x8]
  658e46:	4c 8b 4c 3a 10       	mov    r9,QWORD PTR [rdx+rdi*1+0x10]
  658e4b:	4c 89 44 32 10       	mov    QWORD PTR [rdx+rsi*1+0x10],r8
  658e50:	4c 89 4c 3a 18       	mov    QWORD PTR [rdx+rdi*1+0x18],r9
  658e55:	4a 8d 54 1a 10       	lea    rdx,[rdx+r11*1+0x10]
  658e5a:	49 3b ca             	cmp    rcx,r10
  658e5d:	72 df                	jb     658e3e <step3d_t_mod_mp_step3d_t_tile_+0x4c7e>
  658e5f:	8d 74 09 01          	lea    esi,[rcx+rcx*1+0x1]
  658e63:	8d 56 ff             	lea    edx,[rsi-0x1]
  658e66:	3b 95 98 f8 ff ff    	cmp    edx,DWORD PTR [rbp-0x768]
  658e6c:	73 3a                	jae    658ea8 <step3d_t_mod_mp_step3d_t_tile_+0x4ce8>
  658e6e:	48 63 f6             	movsxd rsi,esi
  658e71:	48 0f af b5 70 ff ff 	imul   rsi,QWORD PTR [rbp-0x90]
  658e78:	ff 
  658e79:	48 8b 95 08 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x9f8]
  658e80:	48 8d 3c 10          	lea    rdi,[rax+rdx*1]
  658e84:	48 8b 0c 3e          	mov    rcx,QWORD PTR [rsi+rdi*1]
  658e88:	48 89 4c 3e 08       	mov    QWORD PTR [rsi+rdi*1+0x8],rcx
  658e8d:	eb 19                	jmp    658ea8 <step3d_t_mod_mp_step3d_t_tile_+0x4ce8>
  658e8f:	8b 85 10 fb ff ff    	mov    eax,DWORD PTR [rbp-0x4f0]
  658e95:	3b 85 18 fb ff ff    	cmp    eax,DWORD PTR [rbp-0x4e8]
  658e9b:	0f 8c 6f 08 00 00    	jl     659710 <step3d_t_mod_mp_step3d_t_tile_+0x5550>
  658ea1:	48 8b 85 d0 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x930]
  658ea8:	4c 8b 85 10 f6 ff ff 	mov    r8,QWORD PTR [rbp-0x9f0]
  658eaf:	33 c9                	xor    ecx,ecx
  658eb1:	48 8b 95 d0 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x530]
  658eb8:	4c 89 ad f0 fa ff ff 	mov    QWORD PTR [rbp-0x510],r13
  658ebf:	4c 89 b5 e8 fa ff ff 	mov    QWORD PTR [rbp-0x518],r14
  658ec6:	4c 89 85 e8 fb ff ff 	mov    QWORD PTR [rbp-0x418],r8
  658ecd:	4a 8d 3c 02          	lea    rdi,[rdx+r8*1]
  658ed1:	4c 89 a5 f8 fa ff ff 	mov    QWORD PTR [rbp-0x508],r12
  658ed8:	48 8d 34 10          	lea    rsi,[rax+rdx*1]
  658edc:	48 03 85 e0 fa ff ff 	add    rax,QWORD PTR [rbp-0x520]
  658ee3:	33 d2                	xor    edx,edx
  658ee5:	44 8b ad d8 fa ff ff 	mov    r13d,DWORD PTR [rbp-0x528]
  658eec:	44 8b b5 40 fe ff ff 	mov    r14d,DWORD PTR [rbp-0x1c0]
  658ef3:	4c 8b bd 50 ff ff ff 	mov    r15,QWORD PTR [rbp-0xb0]
  658efa:	c5 fd 10 05 7e 13 1f 	vmovupd ymm0,YMMWORD PTR [rip+0x1f137e]        # 84a280 <var$630.126.450+0x2e0>
  658f01:	00 
  658f02:	c5 fb 10 0d 8e 32 1f 	vmovsd xmm1,QWORD PTR [rip+0x1f328e]        # 84c198 <__STRLITPACK_0.112+0x88>
  658f09:	00 
  658f0a:	45 3b f5             	cmp    r14d,r13d
  658f0d:	7c 7c                	jl     658f8b <step3d_t_mod_mp_step3d_t_tile_+0x4dcb>
  658f0f:	49 83 ff 04          	cmp    r15,0x4
  658f13:	0f 8c cd 55 00 00    	jl     65e4e6 <step3d_t_mod_mp_step3d_t_tile_+0xa326>
  658f19:	4c 8b a5 48 ff ff ff 	mov    r12,QWORD PTR [rbp-0xb8]
  658f20:	45 33 db             	xor    r11d,r11d
  658f23:	4d 89 e7             	mov    r15,r12
  658f26:	4c 8d 14 17          	lea    r10,[rdi+rdx*1]
  658f2a:	4c 8d 0c 16          	lea    r9,[rsi+rdx*1]
  658f2e:	4c 8d 04 10          	lea    r8,[rax+rdx*1]
  658f32:	c4 81 7d 10 14 d8    	vmovupd ymm2,YMMWORD PTR [r8+r11*8]
  658f38:	c4 81 6d 58 5c d9 f8 	vaddpd ymm3,ymm2,YMMWORD PTR [r9+r11*8-0x8]
  658f3f:	c5 fd 59 e3          	vmulpd ymm4,ymm0,ymm3
  658f43:	c4 81 7d 11 64 da f8 	vmovupd YMMWORD PTR [r10+r11*8-0x8],ymm4
  658f4a:	49 83 c3 04          	add    r11,0x4
  658f4e:	4d 3b df             	cmp    r11,r15
  658f51:	72 df                	jb     658f32 <step3d_t_mod_mp_step3d_t_tile_+0x4d72>
  658f53:	4c 8b bd 50 ff ff ff 	mov    r15,QWORD PTR [rbp-0xb0]
  658f5a:	4d 3b e7             	cmp    r12,r15
  658f5d:	73 2c                	jae    658f8b <step3d_t_mod_mp_step3d_t_tile_+0x4dcb>
  658f5f:	4c 8d 14 17          	lea    r10,[rdi+rdx*1]
  658f63:	4c 8d 0c 16          	lea    r9,[rsi+rdx*1]
  658f67:	4c 8d 04 10          	lea    r8,[rax+rdx*1]
  658f6b:	c4 81 7b 10 14 e0    	vmovsd xmm2,QWORD PTR [r8+r12*8]
  658f71:	c4 81 6b 58 5c e1 f8 	vaddsd xmm3,xmm2,QWORD PTR [r9+r12*8-0x8]
  658f78:	c5 f3 59 e3          	vmulsd xmm4,xmm1,xmm3
  658f7c:	c4 81 7b 11 64 e2 f8 	vmovsd QWORD PTR [r10+r12*8-0x8],xmm4
  658f83:	49 ff c4             	inc    r12
  658f86:	4d 3b e7             	cmp    r12,r15
  658f89:	72 e0                	jb     658f6b <step3d_t_mod_mp_step3d_t_tile_+0x4dab>
  658f8b:	48 ff c1             	inc    rcx
  658f8e:	48 03 95 70 ff ff ff 	add    rdx,QWORD PTR [rbp-0x90]
  658f95:	48 3b 8d 68 ff ff ff 	cmp    rcx,QWORD PTR [rbp-0x98]
  658f9c:	0f 82 68 ff ff ff    	jb     658f0a <step3d_t_mod_mp_step3d_t_tile_+0x4d4a>
  658fa2:	4c 8b bd b8 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x748]
  658fa9:	4c 8b 85 e8 fb ff ff 	mov    r8,QWORD PTR [rbp-0x418]
  658fb0:	4c 8b ad f0 fa ff ff 	mov    r13,QWORD PTR [rbp-0x510]
  658fb7:	49 8b 97 80 00 00 00 	mov    rdx,QWORD PTR [r15+0x80]
  658fbe:	48 89 95 48 fa ff ff 	mov    QWORD PTR [rbp-0x5b8],rdx
  658fc5:	4d 8b 57 68          	mov    r10,QWORD PTR [r15+0x68]
  658fc9:	4d 8b 5f 50          	mov    r11,QWORD PTR [r15+0x50]
  658fcd:	49 8b 57 38          	mov    rdx,QWORD PTR [r15+0x38]
  658fd1:	49 8b 0f             	mov    rcx,QWORD PTR [r15]
  658fd4:	4c 8b a5 f8 fa ff ff 	mov    r12,QWORD PTR [rbp-0x508]
  658fdb:	4c 8b b5 e8 fa ff ff 	mov    r14,QWORD PTR [rbp-0x518]
  658fe2:	4d 8b 8f 98 00 00 00 	mov    r9,QWORD PTR [r15+0x98]
  658fe9:	4c 89 95 38 fa ff ff 	mov    QWORD PTR [rbp-0x5c8],r10
  658ff0:	4c 89 9d 08 ff ff ff 	mov    QWORD PTR [rbp-0xf8],r11
  658ff7:	48 89 95 18 ff ff ff 	mov    QWORD PTR [rbp-0xe8],rdx
  658ffe:	48 83 bd 88 fe ff ff 	cmp    QWORD PTR [rbp-0x178],0x8
  659005:	08 
  659006:	0f 85 01 02 00 00    	jne    65920d <step3d_t_mod_mp_step3d_t_tile_+0x504d>
  65900c:	48 83 bd 18 ff ff ff 	cmp    QWORD PTR [rbp-0xe8],0x8
  659013:	08 
  659014:	0f 85 f3 01 00 00    	jne    65920d <step3d_t_mod_mp_step3d_t_tile_+0x504d>
  65901a:	4d 89 cf             	mov    r15,r9
  65901d:	33 d2                	xor    edx,edx
  65901f:	4c 0f af bd a0 fa ff 	imul   r15,QWORD PTR [rbp-0x560]
  659026:	ff 
  659027:	c5 fd 10 1d 71 12 1f 	vmovupd ymm3,YMMWORD PTR [rip+0x1f1271]        # 84a2a0 <var$630.126.450+0x300>
  65902e:	00 
  65902f:	c5 fb 10 15 89 34 1f 	vmovsd xmm2,QWORD PTR [rip+0x1f3489]        # 84c4c0 <__STRLITPACK_0.112+0x3b0>
  659036:	00 
  659037:	c5 fb 10 0d 59 31 1f 	vmovsd xmm1,QWORD PTR [rip+0x1f3159]        # 84c198 <__STRLITPACK_0.112+0x88>
  65903e:	00 
  65903f:	c5 fd 10 05 39 12 1f 	vmovupd ymm0,YMMWORD PTR [rip+0x1f1239]        # 84a280 <var$630.126.450+0x2e0>
  659046:	00 
  659047:	4c 8b 9d 60 f9 ff ff 	mov    r11,QWORD PTR [rbp-0x6a0]
  65904e:	49 03 cf             	add    rcx,r15
  659051:	4c 8b bd 50 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6b0]
  659058:	48 89 95 78 fa ff ff 	mov    QWORD PTR [rbp-0x588],rdx
  65905f:	48 89 95 58 fa ff ff 	mov    QWORD PTR [rbp-0x5a8],rdx
  659066:	48 8b 95 88 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x678]
  65906d:	49 0f af d3          	imul   rdx,r11
  659071:	48 8b b5 20 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x6e0]
  659078:	4d 03 df             	add    r11,r15
  65907b:	4d 89 d7             	mov    r15,r10
  65907e:	48 f7 de             	neg    rsi
  659081:	4d 0f af df          	imul   r11,r15
  659085:	48 03 b5 a0 f9 ff ff 	add    rsi,QWORD PTR [rbp-0x660]
  65908c:	48 0f af b5 08 ff ff 	imul   rsi,QWORD PTR [rbp-0xf8]
  659093:	ff 
  659094:	4c 8b 95 48 fa ff ff 	mov    r10,QWORD PTR [rbp-0x5b8]
  65909b:	4d 03 ca             	add    r9,r10
  65909e:	48 03 8d 00 fa ff ff 	add    rcx,QWORD PTR [rbp-0x600]
  6590a5:	4c 03 85 e0 fa ff ff 	add    r8,QWORD PTR [rbp-0x520]
  6590ac:	4f 8d 14 52          	lea    r10,[r10+r10*2]
  6590b0:	4d 03 d3             	add    r10,r11
  6590b3:	4d 2b ca             	sub    r9,r10
  6590b6:	49 2b c9             	sub    rcx,r9
  6590b9:	49 2b cf             	sub    rcx,r15
  6590bc:	4c 89 85 e8 fb ff ff 	mov    QWORD PTR [rbp-0x418],r8
  6590c3:	48 03 f1             	add    rsi,rcx
  6590c6:	48 03 95 08 fa ff ff 	add    rdx,QWORD PTR [rbp-0x5f8]
  6590cd:	4c 8b 85 58 fa ff ff 	mov    r8,QWORD PTR [rbp-0x5a8]
  6590d4:	4c 8b 8d 78 fa ff ff 	mov    r9,QWORD PTR [rbp-0x588]
  6590db:	4c 8b 95 78 fd ff ff 	mov    r10,QWORD PTR [rbp-0x288]
  6590e2:	4c 89 ad f0 fa ff ff 	mov    QWORD PTR [rbp-0x510],r13
  6590e9:	4c 89 a5 f8 fa ff ff 	mov    QWORD PTR [rbp-0x508],r12
  6590f0:	4c 89 b5 e8 fa ff ff 	mov    QWORD PTR [rbp-0x518],r14
  6590f7:	8b 8d 40 fe ff ff    	mov    ecx,DWORD PTR [rbp-0x1c0]
  6590fd:	3b 8d 58 ff ff ff    	cmp    ecx,DWORD PTR [rbp-0xa8]
  659103:	0f 8c da 00 00 00    	jl     6591e3 <step3d_t_mod_mp_step3d_t_tile_+0x5023>
  659109:	49 83 fa 04          	cmp    r10,0x4
  65910d:	0f 8c 75 4e 00 00    	jl     65df88 <step3d_t_mod_mp_step3d_t_tile_+0x9dc8>
  659113:	4c 8b 9d e8 fb ff ff 	mov    r11,QWORD PTR [rbp-0x418]
  65911a:	45 33 ed             	xor    r13d,r13d
  65911d:	48 8b 4d 98          	mov    rcx,QWORD PTR [rbp-0x68]
  659121:	4e 8d 24 07          	lea    r12,[rdi+r8*1]
  659125:	49 89 f6             	mov    r14,rsi
  659128:	4e 8d 3c 00          	lea    r15,[rax+r8*1]
  65912c:	49 89 ca             	mov    r10,rcx
  65912f:	4d 03 d8             	add    r11,r8
  659132:	c4 81 7d 10 2c eb    	vmovupd ymm5,YMMWORD PTR [r11+r13*8]
  659138:	c4 c1 7d 10 66 f8    	vmovupd ymm4,YMMWORD PTR [r14-0x8]
  65913e:	c4 21 7d 59 0c ea    	vmulpd ymm9,ymm0,YMMWORD PTR [rdx+r13*8]
  659144:	c4 81 55 5c 74 ec f8 	vsubpd ymm6,ymm5,YMMWORD PTR [r12+r13*8-0x8]
  65914b:	c4 c1 5d 58 3e       	vaddpd ymm7,ymm4,YMMWORD PTR [r14]
  659150:	c5 65 59 c6          	vmulpd ymm8,ymm3,ymm6
  659154:	c4 41 45 5c d0       	vsubpd ymm10,ymm7,ymm8
  659159:	49 83 c6 20          	add    r14,0x20
  65915d:	c4 41 35 59 da       	vmulpd ymm11,ymm9,ymm10
  659162:	c4 01 7d 11 1c ef    	vmovupd YMMWORD PTR [r15+r13*8],ymm11
  659168:	49 83 c5 04          	add    r13,0x4
  65916c:	4d 3b ea             	cmp    r13,r10
  65916f:	72 c1                	jb     659132 <step3d_t_mod_mp_step3d_t_tile_+0x4f72>
  659171:	4c 8b 95 78 fd ff ff 	mov    r10,QWORD PTR [rbp-0x288]
  659178:	4c 8d 24 cd 00 00 00 	lea    r12,[rcx*8+0x0]
  65917f:	00 
  659180:	49 3b ca             	cmp    rcx,r10
  659183:	73 5e                	jae    6591e3 <step3d_t_mod_mp_step3d_t_tile_+0x5023>
  659185:	4c 8b ad e8 fb ff ff 	mov    r13,QWORD PTR [rbp-0x418]
  65918c:	4e 8d 1c 07          	lea    r11,[rdi+r8*1]
  659190:	4e 8d 34 00          	lea    r14,[rax+r8*1]
  659194:	4f 8d 7c 05 00       	lea    r15,[r13+r8*1+0x0]
  659199:	4c 8d 2c ce          	lea    r13,[rsi+rcx*8]
  65919d:	0f 1f 00             	nop    DWORD PTR [rax]
  6591a0:	c4 81 7b 10 2c 3c    	vmovsd xmm5,QWORD PTR [r12+r15*1]
  6591a6:	48 ff c1             	inc    rcx
  6591a9:	c4 c1 7b 10 65 f8    	vmovsd xmm4,QWORD PTR [r13-0x8]
  6591af:	c4 41 73 59 0c 14    	vmulsd xmm9,xmm1,QWORD PTR [r12+rdx*1]
  6591b5:	c4 81 53 5c 74 1c f8 	vsubsd xmm6,xmm5,QWORD PTR [r12+r11*1-0x8]
  6591bc:	c4 c1 5b 58 7d 00    	vaddsd xmm7,xmm4,QWORD PTR [r13+0x0]
  6591c2:	c5 6b 59 c6          	vmulsd xmm8,xmm2,xmm6
  6591c6:	49 83 c5 08          	add    r13,0x8
  6591ca:	c4 41 43 5c d0       	vsubsd xmm10,xmm7,xmm8
  6591cf:	c4 41 33 59 da       	vmulsd xmm11,xmm9,xmm10
  6591d4:	c4 01 7b 11 1c 34    	vmovsd QWORD PTR [r12+r14*1],xmm11
  6591da:	49 83 c4 08          	add    r12,0x8
  6591de:	49 3b ca             	cmp    rcx,r10
  6591e1:	72 bd                	jb     6591a0 <step3d_t_mod_mp_step3d_t_tile_+0x4fe0>
  6591e3:	49 ff c1             	inc    r9
  6591e6:	4c 03 85 70 ff ff ff 	add    r8,QWORD PTR [rbp-0x90]
  6591ed:	48 03 95 70 fe ff ff 	add    rdx,QWORD PTR [rbp-0x190]
  6591f4:	48 03 b5 08 ff ff ff 	add    rsi,QWORD PTR [rbp-0xf8]
  6591fb:	4c 3b 8d 68 ff ff ff 	cmp    r9,QWORD PTR [rbp-0x98]
  659202:	0f 82 ef fe ff ff    	jb     6590f7 <step3d_t_mod_mp_step3d_t_tile_+0x4f37>
  659208:	e9 ee 04 00 00       	jmp    6596fb <step3d_t_mod_mp_step3d_t_tile_+0x553b>
  65920d:	8b 95 10 fb ff ff    	mov    edx,DWORD PTR [rbp-0x4f0]
  659213:	45 33 d2             	xor    r10d,r10d
  659216:	4c 89 95 c0 fd ff ff 	mov    QWORD PTR [rbp-0x240],r10
  65921d:	4c 89 95 b8 fd ff ff 	mov    QWORD PTR [rbp-0x248],r10
  659224:	4c 89 95 b0 fd ff ff 	mov    QWORD PTR [rbp-0x250],r10
  65922b:	4c 89 95 a8 fd ff ff 	mov    QWORD PTR [rbp-0x258],r10
  659232:	3b 95 18 fb ff ff    	cmp    edx,DWORD PTR [rbp-0x4e8]
  659238:	0f 8c d2 04 00 00    	jl     659710 <step3d_t_mod_mp_step3d_t_tile_+0x5550>
  65923e:	4c 89 da             	mov    rdx,r11
  659241:	4c 89 ad f0 fa ff ff 	mov    QWORD PTR [rbp-0x510],r13
  659248:	4d 89 cd             	mov    r13,r9
  65924b:	4c 89 b5 e8 fa ff ff 	mov    QWORD PTR [rbp-0x518],r14
  659252:	4c 0f af ad a0 fa ff 	imul   r13,QWORD PTR [rbp-0x560]
  659259:	ff 
  65925a:	4c 8b b5 50 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x6b0]
  659261:	49 03 cd             	add    rcx,r13
  659264:	4c 8b 95 60 f9 ff ff 	mov    r10,QWORD PTR [rbp-0x6a0]
  65926b:	48 89 b5 28 fc ff ff 	mov    QWORD PTR [rbp-0x3d8],rsi
  659272:	48 8b b5 38 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x5c8]
  659279:	4c 8b 9d e0 fa ff ff 	mov    r11,QWORD PTR [rbp-0x520]
  659280:	4f 8d 3c 16          	lea    r15,[r14+r10*1]
  659284:	4c 0f af fe          	imul   r15,rsi
  659288:	48 89 85 20 fc ff ff 	mov    QWORD PTR [rbp-0x3e0],rax
  65928f:	48 8b 85 18 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe8]
  659296:	4c 89 a5 f8 fa ff ff 	mov    QWORD PTR [rbp-0x508],r12
  65929d:	49 89 d4             	mov    r12,rdx
  6592a0:	48 89 bd 30 fc ff ff 	mov    QWORD PTR [rbp-0x3d0],rdi
  6592a7:	48 89 c7             	mov    rdi,rax
  6592aa:	4c 89 85 e8 fb ff ff 	mov    QWORD PTR [rbp-0x418],r8
  6592b1:	4d 03 c3             	add    r8,r11
  6592b4:	4c 89 85 f8 fc ff ff 	mov    QWORD PTR [rbp-0x308],r8
  6592bb:	4c 8b 9d 20 f9 ff ff 	mov    r11,QWORD PTR [rbp-0x6e0]
  6592c2:	4c 8b 85 28 f9 ff ff 	mov    r8,QWORD PTR [rbp-0x6d8]
  6592c9:	4c 0f af a5 a0 f9 ff 	imul   r12,QWORD PTR [rbp-0x660]
  6592d0:	ff 
  6592d1:	48 0f af bd 98 fb ff 	imul   rdi,QWORD PTR [rbp-0x468]
  6592d8:	ff 
  6592d9:	4c 0f af da          	imul   r11,rdx
  6592dd:	4c 0f af c0          	imul   r8,rax
  6592e1:	4c 8b ad 48 fa ff ff 	mov    r13,QWORD PTR [rbp-0x5b8]
  6592e8:	c5 fb 10 05 d0 31 1f 	vmovsd xmm0,QWORD PTR [rip+0x1f31d0]        # 84c4c0 <__STRLITPACK_0.112+0x3b0>
  6592ef:	00 
  6592f0:	c5 fb 10 1d a0 2e 1f 	vmovsd xmm3,QWORD PTR [rip+0x1f2ea0]        # 84c198 <__STRLITPACK_0.112+0x88>
  6592f7:	00 
  6592f8:	c5 f9 10 0d 00 27 1f 	vmovupd xmm1,XMMWORD PTR [rip+0x1f2700]        # 84ba00 <__STRLITPACK_19.34+0x20>
  6592ff:	00 
  659300:	4f 8d 74 6d 00       	lea    r14,[r13+r13*2+0x0]
  659305:	c5 f9 10 15 e3 26 1f 	vmovupd xmm2,XMMWORD PTR [rip+0x1f26e3]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  65930c:	00 
  65930d:	4b 8d 14 29          	lea    rdx,[r9+r13*1]
  659311:	4d 2b ee             	sub    r13,r14
  659314:	4d 03 f7             	add    r14,r15
  659317:	4c 2b fe             	sub    r15,rsi
  65931a:	48 f7 da             	neg    rdx
  65931d:	4d 2b ef             	sub    r13,r15
  659320:	48 03 d1             	add    rdx,rcx
  659323:	4c 8b bd 88 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x678]
  65932a:	49 2b c9             	sub    rcx,r9
  65932d:	4d 0f af fa          	imul   r15,r10
  659331:	49 03 f3             	add    rsi,r11
  659334:	4d 2b dc             	sub    r11,r12
  659337:	4d 2b e0             	sub    r12,r8
  65933a:	4c 2b c7             	sub    r8,rdi
  65933d:	49 2b cd             	sub    rcx,r13
  659340:	4d 03 d8             	add    r11,r8
  659343:	49 2b cb             	sub    rcx,r11
  659346:	4c 2b f6             	sub    r14,rsi
  659349:	4c 8b 8d e8 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x618]
  659350:	49 89 c2             	mov    r10,rax
  659353:	49 03 d6             	add    rdx,r14
  659356:	49 f7 da             	neg    r10
  659359:	49 03 d4             	add    rdx,r12
  65935c:	4c 03 d1             	add    r10,rcx
  65935f:	48 03 d7             	add    rdx,rdi
  659362:	4c 8d 1c 08          	lea    r11,[rax+rcx*1]
  659366:	4d 03 cf             	add    r9,r15
  659369:	4c 03 bd 90 f9 ff ff 	add    r15,QWORD PTR [rbp-0x670]
  659370:	48 8d 0c 41          	lea    rcx,[rcx+rax*2]
  659374:	4c 89 95 00 fc ff ff 	mov    QWORD PTR [rbp-0x400],r10
  65937b:	4c 89 8d 08 fc ff ff 	mov    QWORD PTR [rbp-0x3f8],r9
  659382:	4c 89 9d 10 fc ff ff 	mov    QWORD PTR [rbp-0x3f0],r11
  659389:	48 8b b5 28 fc ff ff 	mov    rsi,QWORD PTR [rbp-0x3d8]
  659390:	48 8b bd 30 fc ff ff 	mov    rdi,QWORD PTR [rbp-0x3d0]
  659397:	4c 8b 85 e8 fb ff ff 	mov    r8,QWORD PTR [rbp-0x418]
  65939e:	4c 8b b5 e8 fa ff ff 	mov    r14,QWORD PTR [rbp-0x518]
  6593a5:	4c 8b 8d a8 fd ff ff 	mov    r9,QWORD PTR [rbp-0x258]
  6593ac:	4c 8b 9d b0 fd ff ff 	mov    r11,QWORD PTR [rbp-0x250]
  6593b3:	4c 8b a5 b8 fd ff ff 	mov    r12,QWORD PTR [rbp-0x248]
  6593ba:	4c 8b ad c0 fd ff ff 	mov    r13,QWORD PTR [rbp-0x240]
  6593c1:	4c 8b 95 78 fd ff ff 	mov    r10,QWORD PTR [rbp-0x288]
  6593c8:	4c 89 bd f0 fb ff ff 	mov    QWORD PTR [rbp-0x410],r15
  6593cf:	48 89 8d f8 fb ff ff 	mov    QWORD PTR [rbp-0x408],rcx
  6593d6:	48 89 95 18 fc ff ff 	mov    QWORD PTR [rbp-0x3e8],rdx
  6593dd:	8b 85 40 fe ff ff    	mov    eax,DWORD PTR [rbp-0x1c0]
  6593e3:	3b 85 58 ff ff ff    	cmp    eax,DWORD PTR [rbp-0xa8]
  6593e9:	0f 8c e7 02 00 00    	jl     6596d6 <step3d_t_mod_mp_step3d_t_tile_+0x5516>
  6593ef:	49 83 fa 04          	cmp    r10,0x4
  6593f3:	0f 8c dd 50 00 00    	jl     65e4d6 <step3d_t_mod_mp_step3d_t_tile_+0xa316>
  6593f9:	4c 8b 85 10 fc ff ff 	mov    r8,QWORD PTR [rbp-0x3f0]
  659400:	4c 8b bd 18 fc ff ff 	mov    r15,QWORD PTR [rbp-0x3e8]
  659407:	4c 8b b5 08 fc ff ff 	mov    r14,QWORD PTR [rbp-0x3f8]
  65940e:	48 8b 75 98          	mov    rsi,QWORD PTR [rbp-0x68]
  659412:	4b 8d 04 08          	lea    rax,[r8+r9*1]
  659416:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
  65941a:	4f 8d 04 0f          	lea    r8,[r15+r9*1]
  65941e:	48 8b 85 00 fc ff ff 	mov    rax,QWORD PTR [rbp-0x400]
  659425:	4d 03 f3             	add    r14,r11
  659428:	4c 89 85 48 fc ff ff 	mov    QWORD PTR [rbp-0x3b8],r8
  65942f:	4c 8b 85 f0 fb ff ff 	mov    r8,QWORD PTR [rbp-0x410]
  659436:	48 8b 8d 28 fc ff ff 	mov    rcx,QWORD PTR [rbp-0x3d8]
  65943d:	4e 8d 3c 08          	lea    r15,[rax+r9*1]
  659441:	4c 89 bd 40 fc ff ff 	mov    QWORD PTR [rbp-0x3c0],r15
  659448:	4c 8b bd 88 fb ff ff 	mov    r15,QWORD PTR [rbp-0x478]
  65944f:	4b 8d 04 18          	lea    rax,[r8+r11*1]
  659453:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
  659457:	49 03 cc             	add    rcx,r12
  65945a:	48 8b 95 20 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x3e0]
  659461:	48 8b bd f8 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x408]
  659468:	4a 8d 04 fd 00 00 00 	lea    rax,[r15*8+0x0]
  65946f:	00 
  659470:	48 f7 d8             	neg    rax
  659473:	4c 8b bd 98 fb ff ff 	mov    r15,QWORD PTR [rbp-0x468]
  65947a:	49 03 d4             	add    rdx,r12
  65947d:	48 89 b5 d0 fe ff ff 	mov    QWORD PTR [rbp-0x130],rsi
  659484:	33 f6                	xor    esi,esi
  659486:	45 33 c0             	xor    r8d,r8d
  659489:	49 03 f9             	add    rdi,r9
  65948c:	4a 8d 04 f8          	lea    rax,[rax+r15*8]
  659490:	4c 8b bd 90 fb ff ff 	mov    r15,QWORD PTR [rbp-0x470]
  659497:	48 03 85 a0 fb ff ff 	add    rax,QWORD PTR [rbp-0x460]
  65949e:	49 f7 df             	neg    r15
  6594a1:	4c 89 a5 38 fc ff ff 	mov    QWORD PTR [rbp-0x3c8],r12
  6594a8:	49 03 c7             	add    rax,r15
  6594ab:	4c 89 75 b0          	mov    QWORD PTR [rbp-0x50],r14
  6594af:	4c 89 8d a8 fd ff ff 	mov    QWORD PTR [rbp-0x258],r9
  6594b6:	4c 89 9d b0 fd ff ff 	mov    QWORD PTR [rbp-0x250],r11
  6594bd:	4c 89 a5 b8 fd ff ff 	mov    QWORD PTR [rbp-0x248],r12
  6594c4:	4c 89 ad c0 fd ff ff 	mov    QWORD PTR [rbp-0x240],r13
  6594cb:	48 03 85 e8 fb ff ff 	add    rax,QWORD PTR [rbp-0x418]
  6594d2:	4c 8b b5 38 fc ff ff 	mov    r14,QWORD PTR [rbp-0x3c8]
  6594d9:	4d 89 c1             	mov    r9,r8
  6594dc:	4c 8b 95 40 fc ff ff 	mov    r10,QWORD PTR [rbp-0x3c0]
  6594e3:	4c 8b 9d 48 fc ff ff 	mov    r11,QWORD PTR [rbp-0x3b8]
  6594ea:	4c 8b a5 18 ff ff ff 	mov    r12,QWORD PTR [rbp-0xe8]
  6594f1:	4c 8b ad 88 fe ff ff 	mov    r13,QWORD PTR [rbp-0x178]
  6594f8:	c4 c1 79 10 24 06    	vmovupd xmm4,XMMWORD PTR [r14+rax*1]
  6594fe:	4c 8b 7d b0          	mov    r15,QWORD PTR [rbp-0x50]
  659502:	c4 c1 59 5c 6c 06 f8 	vsubpd xmm5,xmm4,XMMWORD PTR [r14+rax*1-0x8]
  659509:	c5 71 59 ed          	vmulpd xmm13,xmm1,xmm5
  65950d:	4d 03 f8             	add    r15,r8
  659510:	c4 c1 7b 10 37       	vmovsd xmm6,QWORD PTR [r15]
  659515:	c4 81 49 16 3c 2f    	vmovhpd xmm7,xmm6,QWORD PTR [r15+r13*1]
  65951b:	4f 8d 3c 0a          	lea    r15,[r10+r9*1]
  65951f:	c4 41 7b 10 07       	vmovsd xmm8,QWORD PTR [r15]
  659524:	c4 01 39 16 14 27    	vmovhpd xmm10,xmm8,QWORD PTR [r15+r12*1]
  65952a:	4f 8d 3c 0b          	lea    r15,[r11+r9*1]
  65952e:	c4 41 7b 10 0f       	vmovsd xmm9,QWORD PTR [r15]
  659533:	c4 01 31 16 1c 27    	vmovhpd xmm11,xmm9,QWORD PTR [r15+r12*1]
  659539:	c4 41 29 58 e3       	vaddpd xmm12,xmm10,xmm11
  65953e:	c5 41 59 f2          	vmulpd xmm14,xmm7,xmm2
  659542:	c4 41 19 5c fd       	vsubpd xmm15,xmm12,xmm13
  659547:	c4 c1 09 59 e7       	vmulpd xmm4,xmm14,xmm15
  65954c:	4c 8b 7d b8          	mov    r15,QWORD PTR [rbp-0x48]
  659550:	c5 f9 11 24 f2       	vmovupd XMMWORD PTR [rdx+rsi*8],xmm4
  659555:	c4 c1 79 10 6c 06 10 	vmovupd xmm5,XMMWORD PTR [r14+rax*1+0x10]
  65955c:	c4 c1 51 5c 74 06 08 	vsubpd xmm6,xmm5,XMMWORD PTR [r14+rax*1+0x8]
  659563:	c5 71 59 f6          	vmulpd xmm14,xmm1,xmm6
  659567:	49 83 c6 20          	add    r14,0x20
  65956b:	4d 03 f8             	add    r15,r8
  65956e:	c4 c1 7b 10 3f       	vmovsd xmm7,QWORD PTR [r15]
  659573:	4f 8d 04 a8          	lea    r8,[r8+r13*4]
  659577:	c4 01 41 16 04 2f    	vmovhpd xmm8,xmm7,QWORD PTR [r15+r13*1]
  65957d:	4c 8b 7d c0          	mov    r15,QWORD PTR [rbp-0x40]
  659581:	c5 39 59 fa          	vmulpd xmm15,xmm8,xmm2
  659585:	4d 03 f9             	add    r15,r9
  659588:	c4 41 7b 10 0f       	vmovsd xmm9,QWORD PTR [r15]
  65958d:	c4 01 31 16 1c 27    	vmovhpd xmm11,xmm9,QWORD PTR [r15+r12*1]
  659593:	4e 8d 3c 0f          	lea    r15,[rdi+r9*1]
  659597:	c4 41 7b 10 17       	vmovsd xmm10,QWORD PTR [r15]
  65959c:	4f 8d 0c a1          	lea    r9,[r9+r12*4]
  6595a0:	c4 01 29 16 24 27    	vmovhpd xmm12,xmm10,QWORD PTR [r15+r12*1]
  6595a6:	c4 41 21 58 ec       	vaddpd xmm13,xmm11,xmm12
  6595ab:	c4 c1 11 5c e6       	vsubpd xmm4,xmm13,xmm14
  6595b0:	c5 81 59 ec          	vmulpd xmm5,xmm15,xmm4
  6595b4:	c5 f9 11 6c f1 10    	vmovupd XMMWORD PTR [rcx+rsi*8+0x10],xmm5
  6595ba:	48 83 c6 04          	add    rsi,0x4
  6595be:	48 3b 75 98          	cmp    rsi,QWORD PTR [rbp-0x68]
  6595c2:	0f 82 30 ff ff ff    	jb     6594f8 <step3d_t_mod_mp_step3d_t_tile_+0x5338>
  6595c8:	4c 8b 8d a8 fd ff ff 	mov    r9,QWORD PTR [rbp-0x258]
  6595cf:	4c 8b 9d b0 fd ff ff 	mov    r11,QWORD PTR [rbp-0x250]
  6595d6:	4c 8b a5 b8 fd ff ff 	mov    r12,QWORD PTR [rbp-0x248]
  6595dd:	4c 8b ad c0 fd ff ff 	mov    r13,QWORD PTR [rbp-0x240]
  6595e4:	4c 8b 95 78 fd ff ff 	mov    r10,QWORD PTR [rbp-0x288]
  6595eb:	4c 8b b5 18 ff ff ff 	mov    r14,QWORD PTR [rbp-0xe8]
  6595f2:	48 8b 85 d0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x130]
  6595f9:	4c 8b 85 88 fe ff ff 	mov    r8,QWORD PTR [rbp-0x178]
  659600:	4c 0f af f0          	imul   r14,rax
  659604:	4c 0f af c0          	imul   r8,rax
  659608:	49 3b c2             	cmp    rax,r10
  65960b:	0f 83 c5 00 00 00    	jae    6596d6 <step3d_t_mod_mp_step3d_t_tile_+0x5516>
  659611:	48 8b bd 30 fc ff ff 	mov    rdi,QWORD PTR [rbp-0x3d0]
  659618:	48 8b b5 f8 fc ff ff 	mov    rsi,QWORD PTR [rbp-0x308]
  65961f:	48 8b 8d 20 fc ff ff 	mov    rcx,QWORD PTR [rbp-0x3e0]
  659626:	48 8b 95 08 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x3f8]
  65962d:	49 03 fc             	add    rdi,r12
  659630:	4c 8b bd 18 fc ff ff 	mov    r15,QWORD PTR [rbp-0x3e8]
  659637:	49 03 f4             	add    rsi,r12
  65963a:	48 8b 85 00 fc ff ff 	mov    rax,QWORD PTR [rbp-0x400]
  659641:	49 03 cc             	add    rcx,r12
  659644:	4c 89 9d b0 fd ff ff 	mov    QWORD PTR [rbp-0x250],r11
  65964b:	49 03 d3             	add    rdx,r11
  65964e:	4c 89 a5 b8 fd ff ff 	mov    QWORD PTR [rbp-0x248],r12
  659655:	4d 03 f9             	add    r15,r9
  659658:	4c 89 ad c0 fd ff ff 	mov    QWORD PTR [rbp-0x240],r13
  65965f:	49 03 c1             	add    rax,r9
  659662:	4c 8b 9d d0 fe ff ff 	mov    r11,QWORD PTR [rbp-0x130]
  659669:	4c 8b a5 18 ff ff ff 	mov    r12,QWORD PTR [rbp-0xe8]
  659670:	4c 8b ad 88 fe ff ff 	mov    r13,QWORD PTR [rbp-0x178]
  659677:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  65967e:	00 00 
  659680:	c4 a1 7b 10 2c de    	vmovsd xmm5,QWORD PTR [rsi+r11*8]
  659686:	c4 c1 7b 10 24 06    	vmovsd xmm4,QWORD PTR [r14+rax*1]
  65968c:	c4 41 63 59 0c 10    	vmulsd xmm9,xmm3,QWORD PTR [r8+rdx*1]
  659692:	4d 03 c5             	add    r8,r13
  659695:	c4 a1 53 5c 74 df f8 	vsubsd xmm6,xmm5,QWORD PTR [rdi+r11*8-0x8]
  65969c:	c4 81 5b 58 3c 3e    	vaddsd xmm7,xmm4,QWORD PTR [r14+r15*1]
  6596a2:	c5 7b 59 c6          	vmulsd xmm8,xmm0,xmm6
  6596a6:	4d 03 f4             	add    r14,r12
  6596a9:	c4 41 43 5c d0       	vsubsd xmm10,xmm7,xmm8
  6596ae:	c4 41 33 59 da       	vmulsd xmm11,xmm9,xmm10
  6596b3:	c4 21 7b 11 1c d9    	vmovsd QWORD PTR [rcx+r11*8],xmm11
  6596b9:	49 ff c3             	inc    r11
  6596bc:	4d 3b da             	cmp    r11,r10
  6596bf:	72 bf                	jb     659680 <step3d_t_mod_mp_step3d_t_tile_+0x54c0>
  6596c1:	4c 8b 9d b0 fd ff ff 	mov    r11,QWORD PTR [rbp-0x250]
  6596c8:	4c 8b a5 b8 fd ff ff 	mov    r12,QWORD PTR [rbp-0x248]
  6596cf:	4c 8b ad c0 fd ff ff 	mov    r13,QWORD PTR [rbp-0x240]
  6596d6:	49 ff c5             	inc    r13
  6596d9:	4c 03 a5 70 ff ff ff 	add    r12,QWORD PTR [rbp-0x90]
  6596e0:	4c 03 9d 70 fe ff ff 	add    r11,QWORD PTR [rbp-0x190]
  6596e7:	4c 03 8d 08 ff ff ff 	add    r9,QWORD PTR [rbp-0xf8]
  6596ee:	4c 3b ad 68 ff ff ff 	cmp    r13,QWORD PTR [rbp-0x98]
  6596f5:	0f 82 e2 fc ff ff    	jb     6593dd <step3d_t_mod_mp_step3d_t_tile_+0x521d>
  6596fb:	4c 8b ad f0 fa ff ff 	mov    r13,QWORD PTR [rbp-0x510]
  659702:	4c 8b a5 f8 fa ff ff 	mov    r12,QWORD PTR [rbp-0x508]
  659709:	4c 8b b5 e8 fa ff ff 	mov    r14,QWORD PTR [rbp-0x518]
  659710:	48 8b 85 00 fb ff ff 	mov    rax,QWORD PTR [rbp-0x500]
  659717:	48 3b 85 08 fb ff ff 	cmp    rax,QWORD PTR [rbp-0x4f8]
  65971e:	0f 8c 35 06 00 00    	jl     659d59 <step3d_t_mod_mp_step3d_t_tile_+0x5b99>
  659724:	4c 8b 85 b8 f8 ff ff 	mov    r8,QWORD PTR [rbp-0x748]
  65972b:	48 8b 85 70 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x990]
  659732:	49 8b 88 80 00 00 00 	mov    rcx,QWORD PTR [r8+0x80]
  659739:	49 8b 70 68          	mov    rsi,QWORD PTR [r8+0x68]
  65973d:	49 8b 78 50          	mov    rdi,QWORD PTR [r8+0x50]
  659741:	4d 8b 50 38          	mov    r10,QWORD PTR [r8+0x38]
  659745:	4d 8b 08             	mov    r9,QWORD PTR [r8]
  659748:	49 8b 90 98 00 00 00 	mov    rdx,QWORD PTR [r8+0x98]
  65974f:	48 89 8d 40 fa ff ff 	mov    QWORD PTR [rbp-0x5c0],rcx
  659756:	48 89 b5 60 fa ff ff 	mov    QWORD PTR [rbp-0x5a0],rsi
  65975d:	48 89 bd 30 ff ff ff 	mov    QWORD PTR [rbp-0xd0],rdi
  659764:	4c 89 95 20 ff ff ff 	mov    QWORD PTR [rbp-0xe0],r10
  65976b:	49 83 fa 08          	cmp    r10,0x8
  65976f:	0f 85 93 01 00 00    	jne    659908 <step3d_t_mod_mp_step3d_t_tile_+0x5748>
  659775:	48 83 bd b0 f9 ff ff 	cmp    QWORD PTR [rbp-0x650],0x8
  65977c:	08 
  65977d:	0f 85 85 01 00 00    	jne    659908 <step3d_t_mod_mp_step3d_t_tile_+0x5748>
  659783:	49 89 ca             	mov    r10,rcx
  659786:	48 8b bd 50 f9 ff ff 	mov    rdi,QWORD PTR [rbp-0x6b0]
  65978d:	33 c9                	xor    ecx,ecx
  65978f:	48 8b b5 60 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x6a0]
  659796:	48 03 85 10 fa ff ff 	add    rax,QWORD PTR [rbp-0x5f0]
  65979d:	48 89 85 50 fd ff ff 	mov    QWORD PTR [rbp-0x2b0],rax
  6597a4:	48 89 d0             	mov    rax,rdx
  6597a7:	4c 89 a5 f8 fa ff ff 	mov    QWORD PTR [rbp-0x508],r12
  6597ae:	4c 8d 3c 37          	lea    r15,[rdi+rsi*1]
  6597b2:	4c 8b a5 60 fa ff ff 	mov    r12,QWORD PTR [rbp-0x5a0]
  6597b9:	48 0f af 85 a0 fa ff 	imul   rax,QWORD PTR [rbp-0x560]
  6597c0:	ff 
  6597c1:	4d 0f af fc          	imul   r15,r12
  6597c5:	48 8b b5 30 ff ff ff 	mov    rsi,QWORD PTR [rbp-0xd0]
  6597cc:	49 8d 3c 01          	lea    rdi,[r9+rax*1]
  6597d0:	4c 89 ad f0 fa ff ff 	mov    QWORD PTR [rbp-0x510],r13
  6597d7:	49 89 f5             	mov    r13,rsi
  6597da:	4c 89 b5 e8 fa ff ff 	mov    QWORD PTR [rbp-0x518],r14
  6597e1:	48 2b c2             	sub    rax,rdx
  6597e4:	4c 8b b5 20 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x6e0]
  6597eb:	4c 0f af ad 08 fb ff 	imul   r13,QWORD PTR [rbp-0x4f8]
  6597f2:	ff 
  6597f3:	4c 0f af f6          	imul   r14,rsi
  6597f7:	49 03 d2             	add    rdx,r10
  6597fa:	4c 8b 85 00 fa ff ff 	mov    r8,QWORD PTR [rbp-0x600]
  659801:	49 03 f8             	add    rdi,r8
  659804:	4d 03 c8             	add    r9,r8
  659807:	48 f7 de             	neg    rsi
  65980a:	4f 8d 1c 52          	lea    r11,[r10+r10*2]
  65980e:	4d 2b d3             	sub    r10,r11
  659811:	4d 03 df             	add    r11,r15
  659814:	49 2b d3             	sub    rdx,r11
  659817:	49 2b c2             	sub    rax,r10
  65981a:	4d 2b fc             	sub    r15,r12
  65981d:	4d 03 e6             	add    r12,r14
  659820:	4d 2b f5             	sub    r14,r13
  659823:	48 2b fa             	sub    rdi,rdx
  659826:	4c 03 c8             	add    r9,rax
  659829:	4d 2b fe             	sub    r15,r14
  65982c:	49 2b fc             	sub    rdi,r12
  65982f:	4d 03 cf             	add    r9,r15
  659832:	49 03 fd             	add    rdi,r13
  659835:	49 03 f1             	add    rsi,r9
  659838:	48 8b 95 c8 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x638]
  65983f:	48 8b 85 50 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b0]
  659846:	4c 8b b5 e8 fa ff ff 	mov    r14,QWORD PTR [rbp-0x518]
  65984d:	49 89 cb             	mov    r11,rcx
  659850:	4c 8b a5 70 ff ff ff 	mov    r12,QWORD PTR [rbp-0x90]
  659857:	4c 8b ad 70 fd ff ff 	mov    r13,QWORD PTR [rbp-0x290]
  65985e:	44 8b bd 28 fe ff ff 	mov    r15d,DWORD PTR [rbp-0x1d8]
  659865:	44 3b bd 58 ff ff ff 	cmp    r15d,DWORD PTR [rbp-0xa8]
  65986c:	7c 74                	jl     6598e2 <step3d_t_mod_mp_step3d_t_tile_+0x5722>
  65986e:	49 83 fd 04          	cmp    r13,0x4
  659872:	0f 8c 17 47 00 00    	jl     65df8f <step3d_t_mod_mp_step3d_t_tile_+0x9dcf>
  659878:	4c 8b b5 78 ff ff ff 	mov    r14,QWORD PTR [rbp-0x88]
  65987f:	45 33 d2             	xor    r10d,r10d
  659882:	4d 89 f7             	mov    r15,r14
  659885:	4c 8d 0c 0e          	lea    r9,[rsi+rcx*1]
  659889:	4c 8d 04 0f          	lea    r8,[rdi+rcx*1]
  65988d:	c4 81 7d 10 04 d0    	vmovupd ymm0,YMMWORD PTR [r8+r10*8]
  659893:	c4 81 7d 5c 0c d1    	vsubpd ymm1,ymm0,YMMWORD PTR [r9+r10*8]
  659899:	c4 a1 75 59 14 d2    	vmulpd ymm2,ymm1,YMMWORD PTR [rdx+r10*8]
  65989f:	c4 a1 7d 11 14 d0    	vmovupd YMMWORD PTR [rax+r10*8],ymm2
  6598a5:	49 83 c2 04          	add    r10,0x4
  6598a9:	4d 3b d7             	cmp    r10,r15
  6598ac:	72 df                	jb     65988d <step3d_t_mod_mp_step3d_t_tile_+0x56cd>
  6598ae:	44 8b bd 28 fe ff ff 	mov    r15d,DWORD PTR [rbp-0x1d8]
  6598b5:	4d 3b f5             	cmp    r14,r13
  6598b8:	73 28                	jae    6598e2 <step3d_t_mod_mp_step3d_t_tile_+0x5722>
  6598ba:	4c 8d 0c 0e          	lea    r9,[rsi+rcx*1]
  6598be:	4c 8d 04 0f          	lea    r8,[rdi+rcx*1]
  6598c2:	c4 81 7b 10 04 f0    	vmovsd xmm0,QWORD PTR [r8+r14*8]
  6598c8:	c4 81 7b 5c 0c f1    	vsubsd xmm1,xmm0,QWORD PTR [r9+r14*8]
  6598ce:	c4 a1 73 59 14 f2    	vmulsd xmm2,xmm1,QWORD PTR [rdx+r14*8]
  6598d4:	c4 a1 7b 11 14 f0    	vmovsd QWORD PTR [rax+r14*8],xmm2
  6598da:	49 ff c6             	inc    r14
  6598dd:	4d 3b f5             	cmp    r14,r13
  6598e0:	72 e0                	jb     6598c2 <step3d_t_mod_mp_step3d_t_tile_+0x5702>
  6598e2:	49 ff c3             	inc    r11
  6598e5:	49 03 c4             	add    rax,r12
  6598e8:	48 03 8d 30 ff ff ff 	add    rcx,QWORD PTR [rbp-0xd0]
  6598ef:	48 03 95 78 fe ff ff 	add    rdx,QWORD PTR [rbp-0x188]
  6598f6:	4c 3b 9d 50 fe ff ff 	cmp    r11,QWORD PTR [rbp-0x1b0]
  6598fd:	0f 82 62 ff ff ff    	jb     659865 <step3d_t_mod_mp_step3d_t_tile_+0x56a5>
  659903:	e9 3c 04 00 00       	jmp    659d44 <step3d_t_mod_mp_step3d_t_tile_+0x5b84>
  659908:	4c 89 b5 e8 fa ff ff 	mov    QWORD PTR [rbp-0x518],r14
  65990f:	49 89 d6             	mov    r14,rdx
  659912:	4c 0f af b5 a0 fa ff 	imul   r14,QWORD PTR [rbp-0x560]
  659919:	ff 
  65991a:	4c 8b bd 50 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6b0]
  659921:	4d 03 ce             	add    r9,r14
  659924:	48 8b 8d 60 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x6a0]
  65992b:	48 89 f7             	mov    rdi,rsi
  65992e:	4c 8b b5 40 fa ff ff 	mov    r14,QWORD PTR [rbp-0x5c0]
  659935:	4c 89 a5 f8 fa ff ff 	mov    QWORD PTR [rbp-0x508],r12
  65993c:	4d 8d 1c 0f          	lea    r11,[r15+rcx*1]
  659940:	4c 0f af df          	imul   r11,rdi
  659944:	4c 8b a5 20 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6e0]
  65994b:	4f 8d 3c 76          	lea    r15,[r14+r14*2]
  65994f:	48 8b b5 30 ff ff ff 	mov    rsi,QWORD PTR [rbp-0xd0]
  659956:	4a 8d 0c 32          	lea    rcx,[rdx+r14*1]
  65995a:	4c 0f af e6          	imul   r12,rsi
  65995e:	4c 89 ad f0 fa ff ff 	mov    QWORD PTR [rbp-0x510],r13
  659965:	4d 2b f7             	sub    r14,r15
  659968:	4d 03 fb             	add    r15,r11
  65996b:	4c 8b ad 28 f9 ff ff 	mov    r13,QWORD PTR [rbp-0x6d8]
  659972:	4c 2b df             	sub    r11,rdi
  659975:	4d 0f af ea          	imul   r13,r10
  659979:	4d 89 d0             	mov    r8,r10
  65997c:	4d 2b f3             	sub    r14,r11
  65997f:	49 89 f3             	mov    r11,rsi
  659982:	48 f7 d9             	neg    rcx
  659985:	48 0f af b5 08 fb ff 	imul   rsi,QWORD PTR [rbp-0x4f8]
  65998c:	ff 
  65998d:	4c 0f af 85 98 fb ff 	imul   r8,QWORD PTR [rbp-0x468]
  659994:	ff 
  659995:	49 03 c9             	add    rcx,r9
  659998:	4c 2b ca             	sub    r9,rdx
  65999b:	48 8b 95 98 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x668]
  6599a2:	49 03 fc             	add    rdi,r12
  6599a5:	49 f7 db             	neg    r11
  6599a8:	4c 2b ff             	sub    r15,rdi
  6599ab:	4d 89 ea             	mov    r10,r13
  6599ae:	4c 2b e6             	sub    r12,rsi
  6599b1:	4d 2b d0             	sub    r10,r8
  6599b4:	48 8d 3c 10          	lea    rdi,[rax+rdx*1]
  6599b8:	48 89 bd 10 fd ff ff 	mov    QWORD PTR [rbp-0x2f0],rdi
  6599bf:	4c 89 df             	mov    rdi,r11
  6599c2:	49 2b fd             	sub    rdi,r13
  6599c5:	49 f7 dd             	neg    r13
  6599c8:	48 f7 df             	neg    rdi
  6599cb:	4c 03 ee             	add    r13,rsi
  6599ce:	49 03 f3             	add    rsi,r11
  6599d1:	49 03 fc             	add    rdi,r12
  6599d4:	49 03 cf             	add    rcx,r15
  6599d7:	49 2b f2             	sub    rsi,r10
  6599da:	4d 2b ce             	sub    r9,r14
  6599dd:	48 f7 df             	neg    rdi
  6599e0:	4d 03 e2             	add    r12,r10
  6599e3:	4c 03 e9             	add    r13,rcx
  6599e6:	48 03 ce             	add    rcx,rsi
  6599e9:	49 03 f9             	add    rdi,r9
  6599ec:	4d 2b cc             	sub    r9,r12
  6599ef:	49 03 f8             	add    rdi,r8
  6599f2:	48 8b 95 20 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xe0]
  6599f9:	4d 03 c5             	add    r8,r13
  6599fc:	48 c7 85 d0 fd ff ff 	mov    QWORD PTR [rbp-0x230],0x0
  659a03:	00 00 00 00 
  659a07:	48 03 85 10 fa ff ff 	add    rax,QWORD PTR [rbp-0x5f0]
  659a0e:	4c 8d 14 51          	lea    r10,[rcx+rdx*2]
  659a12:	48 8b 8d d0 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x230]
  659a19:	4d 8d 0c 51          	lea    r9,[r9+rdx*2]
  659a1d:	48 89 ce             	mov    rsi,rcx
  659a20:	48 89 f2             	mov    rdx,rsi
  659a23:	4c 8b ad 70 fd ff ff 	mov    r13,QWORD PTR [rbp-0x290]
  659a2a:	49 89 ce             	mov    r14,rcx
  659a2d:	4c 8b a5 b0 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x650]
  659a34:	4c 89 8d 50 fc ff ff 	mov    QWORD PTR [rbp-0x3b0],r9
  659a3b:	4c 89 95 58 fc ff ff 	mov    QWORD PTR [rbp-0x3a8],r10
  659a42:	4c 89 85 d8 fe ff ff 	mov    QWORD PTR [rbp-0x128],r8
  659a49:	48 89 bd e0 fe ff ff 	mov    QWORD PTR [rbp-0x120],rdi
  659a50:	48 89 85 50 fd ff ff 	mov    QWORD PTR [rbp-0x2b0],rax
  659a57:	8b 85 28 fe ff ff    	mov    eax,DWORD PTR [rbp-0x1d8]
  659a5d:	3b 85 58 ff ff ff    	cmp    eax,DWORD PTR [rbp-0xa8]
  659a63:	0f 8c b6 02 00 00    	jl     659d1f <step3d_t_mod_mp_step3d_t_tile_+0x5b5f>
  659a69:	49 83 fd 04          	cmp    r13,0x4
  659a6d:	0f 8c 5b 4a 00 00    	jl     65e4ce <step3d_t_mod_mp_step3d_t_tile_+0xa30e>
  659a73:	48 8b 85 50 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b0]
  659a7a:	48 03 c2             	add    rax,rdx
  659a7d:	48 89 85 58 fd ff ff 	mov    QWORD PTR [rbp-0x2a8],rax
  659a84:	48 83 e0 0f          	and    rax,0xf
  659a88:	85 c0                	test   eax,eax
  659a8a:	74 0d                	je     659a99 <step3d_t_mod_mp_step3d_t_tile_+0x58d9>
  659a8c:	a8 07                	test   al,0x7
  659a8e:	0f 85 3a 4a 00 00    	jne    65e4ce <step3d_t_mod_mp_step3d_t_tile_+0xa30e>
  659a94:	b8 01 00 00 00       	mov    eax,0x1
  659a99:	41 89 c2             	mov    r10d,eax
  659a9c:	49 8d 7a 04          	lea    rdi,[r10+0x4]
  659aa0:	4c 3b ef             	cmp    r13,rdi
  659aa3:	0f 8c 25 4a 00 00    	jl     65e4ce <step3d_t_mod_mp_step3d_t_tile_+0xa30e>
  659aa9:	4c 8b bd e0 fe ff ff 	mov    r15,QWORD PTR [rbp-0x120]
  659ab0:	45 33 c0             	xor    r8d,r8d
  659ab3:	8b bd 48 fe ff ff    	mov    edi,DWORD PTR [rbp-0x1b8]
  659ab9:	41 89 fb             	mov    r11d,edi
  659abc:	44 2b d8             	sub    r11d,eax
  659abf:	45 33 c9             	xor    r9d,r9d
  659ac2:	41 83 e3 03          	and    r11d,0x3
  659ac6:	4c 03 f9             	add    r15,rcx
  659ac9:	4c 89 7d d0          	mov    QWORD PTR [rbp-0x30],r15
  659acd:	41 f7 db             	neg    r11d
  659ad0:	4c 8b bd d8 fe ff ff 	mov    r15,QWORD PTR [rbp-0x128]
  659ad7:	44 03 df             	add    r11d,edi
  659ada:	4d 63 db             	movsxd r11,r11d
  659add:	33 ff                	xor    edi,edi
  659adf:	4c 03 f9             	add    r15,rcx
  659ae2:	4c 89 bd f0 fe ff ff 	mov    QWORD PTR [rbp-0x110],r15
  659ae9:	4c 8b bd a0 fe ff ff 	mov    r15,QWORD PTR [rbp-0x160]
  659af0:	4c 03 fe             	add    r15,rsi
  659af3:	4c 89 bd e8 fe ff ff 	mov    QWORD PTR [rbp-0x118],r15
  659afa:	85 c0                	test   eax,eax
  659afc:	76 64                	jbe    659b62 <step3d_t_mod_mp_step3d_t_tile_+0x59a2>
  659afe:	48 89 8d c8 fd ff ff 	mov    QWORD PTR [rbp-0x238],rcx
  659b05:	4c 89 b5 d0 fd ff ff 	mov    QWORD PTR [rbp-0x230],r14
  659b0c:	4c 89 f8             	mov    rax,r15
  659b0f:	48 8b 8d f0 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x110]
  659b16:	4c 8b 6d d0          	mov    r13,QWORD PTR [rbp-0x30]
  659b1a:	4c 8b b5 58 fd ff ff 	mov    r14,QWORD PTR [rbp-0x2a8]
  659b21:	4c 8b bd 20 ff ff ff 	mov    r15,QWORD PTR [rbp-0xe0]
  659b28:	c5 fb 10 04 0f       	vmovsd xmm0,QWORD PTR [rdi+rcx*1]
  659b2d:	c4 a1 7b 5c 0c 2f    	vsubsd xmm1,xmm0,QWORD PTR [rdi+r13*1]
  659b33:	49 03 ff             	add    rdi,r15
  659b36:	c4 c1 73 59 14 01    	vmulsd xmm2,xmm1,QWORD PTR [r9+rax*1]
  659b3c:	4d 03 cc             	add    r9,r12
  659b3f:	c4 81 7b 11 14 c6    	vmovsd QWORD PTR [r14+r8*8],xmm2
  659b45:	49 ff c0             	inc    r8
  659b48:	4d 3b c2             	cmp    r8,r10
  659b4b:	72 db                	jb     659b28 <step3d_t_mod_mp_step3d_t_tile_+0x5968>
  659b4d:	48 8b 8d c8 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x238]
  659b54:	4c 8b b5 d0 fd ff ff 	mov    r14,QWORD PTR [rbp-0x230]
  659b5b:	4c 8b ad 70 fd ff ff 	mov    r13,QWORD PTR [rbp-0x290]
  659b62:	4c 8b bd 50 fc ff ff 	mov    r15,QWORD PTR [rbp-0x3b0]
  659b69:	4d 89 e1             	mov    r9,r12
  659b6c:	48 8b bd 10 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2f0]
  659b73:	48 8b 85 58 fc ff ff 	mov    rax,QWORD PTR [rbp-0x3a8]
  659b7a:	4c 8b 85 20 ff ff ff 	mov    r8,QWORD PTR [rbp-0xe0]
  659b81:	4c 03 f9             	add    r15,rcx
  659b84:	4c 89 bd 60 fc ff ff 	mov    QWORD PTR [rbp-0x3a0],r15
  659b8b:	48 03 fa             	add    rdi,rdx
  659b8e:	4c 8b bd a8 fb ff ff 	mov    r15,QWORD PTR [rbp-0x458]
  659b95:	48 03 c1             	add    rax,rcx
  659b98:	4c 89 5d c8          	mov    QWORD PTR [rbp-0x38],r11
  659b9c:	48 89 95 d8 fd ff ff 	mov    QWORD PTR [rbp-0x228],rdx
  659ba3:	48 89 b5 e0 fd ff ff 	mov    QWORD PTR [rbp-0x220],rsi
  659baa:	4c 03 fe             	add    r15,rsi
  659bad:	48 89 8d c8 fd ff ff 	mov    QWORD PTR [rbp-0x238],rcx
  659bb4:	4c 89 b5 d0 fd ff ff 	mov    QWORD PTR [rbp-0x230],r14
  659bbb:	4d 0f af ca          	imul   r9,r10
  659bbf:	4d 0f af c2          	imul   r8,r10
  659bc3:	4d 89 fe             	mov    r14,r15
  659bc6:	48 8b 95 60 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x3a0]
  659bcd:	48 8b 8d e8 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x118]
  659bd4:	48 8b b5 f0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x110]
  659bdb:	4c 8b 9d 58 fd ff ff 	mov    r11,QWORD PTR [rbp-0x2a8]
  659be2:	4c 8b ad 20 ff ff ff 	mov    r13,QWORD PTR [rbp-0xe0]
  659be9:	4e 8d 3c 06          	lea    r15,[rsi+r8*1]
  659bed:	c4 c1 7b 10 07       	vmovsd xmm0,QWORD PTR [r15]
  659bf2:	c4 81 79 16 14 2f    	vmovhpd xmm2,xmm0,QWORD PTR [r15+r13*1]
  659bf8:	4c 8b 7d d0          	mov    r15,QWORD PTR [rbp-0x30]
  659bfc:	4d 03 f8             	add    r15,r8
  659bff:	c4 c1 7b 10 0f       	vmovsd xmm1,QWORD PTR [r15]
  659c04:	c4 81 71 16 1c 2f    	vmovhpd xmm3,xmm1,QWORD PTR [r15+r13*1]
  659c0a:	4e 8d 3c 09          	lea    r15,[rcx+r9*1]
  659c0e:	c4 c1 7b 10 27       	vmovsd xmm4,QWORD PTR [r15]
  659c13:	c4 81 59 16 34 27    	vmovhpd xmm6,xmm4,QWORD PTR [r15+r12*1]
  659c19:	4e 8d 3c 02          	lea    r15,[rdx+r8*1]
  659c1d:	c4 41 7b 10 07       	vmovsd xmm8,QWORD PTR [r15]
  659c22:	c4 01 39 16 14 2f    	vmovhpd xmm10,xmm8,QWORD PTR [r15+r13*1]
  659c28:	4e 8d 3c 00          	lea    r15,[rax+r8*1]
  659c2c:	c4 41 7b 10 0f       	vmovsd xmm9,QWORD PTR [r15]
  659c31:	4f 8d 04 a8          	lea    r8,[r8+r13*4]
  659c35:	c4 01 31 16 1c 2f    	vmovhpd xmm11,xmm9,QWORD PTR [r15+r13*1]
  659c3b:	4f 8d 3c 0e          	lea    r15,[r14+r9*1]
  659c3f:	c5 e9 5c eb          	vsubpd xmm5,xmm2,xmm3
  659c43:	c4 41 29 5c eb       	vsubpd xmm13,xmm10,xmm11
  659c48:	c5 d1 59 fe          	vmulpd xmm7,xmm5,xmm6
  659c4c:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  659c51:	4f 8d 0c a1          	lea    r9,[r9+r12*4]
  659c55:	c4 01 19 16 34 27    	vmovhpd xmm14,xmm12,QWORD PTR [r15+r12*1]
  659c5b:	c4 41 11 59 fe       	vmulpd xmm15,xmm13,xmm14
  659c60:	c4 81 79 11 3c d3    	vmovupd XMMWORD PTR [r11+r10*8],xmm7
  659c66:	c4 21 79 11 7c d7 10 	vmovupd XMMWORD PTR [rdi+r10*8+0x10],xmm15
  659c6d:	49 83 c2 04          	add    r10,0x4
  659c71:	4c 3b 55 c8          	cmp    r10,QWORD PTR [rbp-0x38]
  659c75:	0f 82 6e ff ff ff    	jb     659be9 <step3d_t_mod_mp_step3d_t_tile_+0x5a29>
  659c7b:	4c 8b 5d c8          	mov    r11,QWORD PTR [rbp-0x38]
  659c7f:	48 8b 95 d8 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x228]
  659c86:	48 8b b5 e0 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x220]
  659c8d:	48 8b 8d c8 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x238]
  659c94:	4c 8b b5 d0 fd ff ff 	mov    r14,QWORD PTR [rbp-0x230]
  659c9b:	4c 8b ad 70 fd ff ff 	mov    r13,QWORD PTR [rbp-0x290]
  659ca2:	4d 89 e0             	mov    r8,r12
  659ca5:	4c 8b 95 20 ff ff ff 	mov    r10,QWORD PTR [rbp-0xe0]
  659cac:	4d 0f af d3          	imul   r10,r11
  659cb0:	4d 0f af c3          	imul   r8,r11
  659cb4:	4d 3b dd             	cmp    r11,r13
  659cb7:	73 66                	jae    659d1f <step3d_t_mod_mp_step3d_t_tile_+0x5b5f>
  659cb9:	4c 8b bd a0 fe ff ff 	mov    r15,QWORD PTR [rbp-0x160]
  659cc0:	48 8b bd 50 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2b0]
  659cc7:	48 8b 85 e0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x120]
  659cce:	4c 8b 8d d8 fe ff ff 	mov    r9,QWORD PTR [rbp-0x128]
  659cd5:	4c 03 fe             	add    r15,rsi
  659cd8:	48 03 fa             	add    rdi,rdx
  659cdb:	4c 89 b5 d0 fd ff ff 	mov    QWORD PTR [rbp-0x230],r14
  659ce2:	48 03 c1             	add    rax,rcx
  659ce5:	4d 89 fe             	mov    r14,r15
  659ce8:	4c 03 c9             	add    r9,rcx
  659ceb:	4c 8b bd 20 ff ff ff 	mov    r15,QWORD PTR [rbp-0xe0]
  659cf2:	c4 81 7b 10 04 0a    	vmovsd xmm0,QWORD PTR [r10+r9*1]
  659cf8:	c4 c1 7b 5c 0c 02    	vsubsd xmm1,xmm0,QWORD PTR [r10+rax*1]
  659cfe:	4d 03 d7             	add    r10,r15
  659d01:	c4 81 73 59 14 30    	vmulsd xmm2,xmm1,QWORD PTR [r8+r14*1]
  659d07:	4d 03 c4             	add    r8,r12
  659d0a:	c4 a1 7b 11 14 df    	vmovsd QWORD PTR [rdi+r11*8],xmm2
  659d10:	49 ff c3             	inc    r11
  659d13:	4d 3b dd             	cmp    r11,r13
  659d16:	72 da                	jb     659cf2 <step3d_t_mod_mp_step3d_t_tile_+0x5b32>
  659d18:	4c 8b b5 d0 fd ff ff 	mov    r14,QWORD PTR [rbp-0x230]
  659d1f:	49 ff c6             	inc    r14
  659d22:	48 03 8d 30 ff ff ff 	add    rcx,QWORD PTR [rbp-0xd0]
  659d29:	48 03 b5 78 fe ff ff 	add    rsi,QWORD PTR [rbp-0x188]
  659d30:	48 03 95 70 ff ff ff 	add    rdx,QWORD PTR [rbp-0x90]
  659d37:	4c 3b b5 50 fe ff ff 	cmp    r14,QWORD PTR [rbp-0x1b0]
  659d3e:	0f 82 13 fd ff ff    	jb     659a57 <step3d_t_mod_mp_step3d_t_tile_+0x5897>
  659d44:	4c 8b ad f0 fa ff ff 	mov    r13,QWORD PTR [rbp-0x510]
  659d4b:	4c 8b a5 f8 fa ff ff 	mov    r12,QWORD PTR [rbp-0x508]
  659d52:	4c 8b b5 e8 fa ff ff 	mov    r14,QWORD PTR [rbp-0x518]
  659d59:	43 f6 44 2c f4 01    	test   BYTE PTR [r12+r13*1-0xc],0x1
  659d5f:	0f 85 dd 00 00 00    	jne    659e42 <step3d_t_mod_mp_step3d_t_tile_+0x5c82>
  659d65:	48 8b 05 14 1f 46 00 	mov    rax,QWORD PTR [rip+0x461f14]        # abbc80 <mod_scalars_mp_nsperiodic_>
  659d6c:	42 f6 44 b0 fc 01    	test   BYTE PTR [rax+r14*4-0x4],0x1
  659d72:	0f 85 ca 00 00 00    	jne    659e42 <step3d_t_mod_mp_step3d_t_tile_+0x5c82>
  659d78:	4c 89 f0             	mov    rax,r14
  659d7b:	4c 89 f1             	mov    rcx,r14
  659d7e:	48 c1 e0 05          	shl    rax,0x5
  659d82:	48 c1 e1 0b          	shl    rcx,0xb
  659d86:	48 2b c8             	sub    rcx,rax
  659d89:	48 8b 15 b0 16 46 00 	mov    rdx,QWORD PTR [rip+0x4616b0]        # abb440 <mod_param_mp_domain_>
  659d90:	48 8b bc 0a 38 f9 ff 	mov    rdi,QWORD PTR [rdx+rcx*1-0x6c8]
  659d97:	ff 
  659d98:	48 f7 df             	neg    rdi
  659d9b:	48 03 bd 00 f9 ff ff 	add    rdi,QWORD PTR [rbp-0x700]
  659da2:	48 0f af bc 0a 30 f9 	imul   rdi,QWORD PTR [rdx+rcx*1-0x6d0]
  659da9:	ff ff 
  659dab:	48 8b b4 0a f8 f8 ff 	mov    rsi,QWORD PTR [rdx+rcx*1-0x708]
  659db2:	ff 
  659db3:	f6 04 3e 01          	test   BYTE PTR [rsi+rdi*1],0x1
  659db7:	0f 84 85 00 00 00    	je     659e42 <step3d_t_mod_mp_step3d_t_tile_+0x5c82>
  659dbd:	8b 85 28 fe ff ff    	mov    eax,DWORD PTR [rbp-0x1d8]
  659dc3:	3b 85 58 ff ff ff    	cmp    eax,DWORD PTR [rbp-0xa8]
  659dc9:	7c 77                	jl     659e42 <step3d_t_mod_mp_step3d_t_tile_+0x5c82>
  659dcb:	48 8b b5 70 f6 ff ff 	mov    rsi,QWORD PTR [rbp-0x990]
  659dd2:	83 bd 38 f5 ff ff 0c 	cmp    DWORD PTR [rbp-0xac8],0xc
  659dd9:	0f 8e 74 46 00 00    	jle    65e453 <step3d_t_mod_mp_step3d_t_tile_+0xa293>
  659ddf:	48 8b 8d 80 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x780]
  659de6:	45 33 d2             	xor    r10d,r10d
  659de9:	48 8b 95 a0 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x460]
  659df0:	45 33 c9             	xor    r9d,r9d
  659df3:	4c 8b 85 58 f8 ff ff 	mov    r8,QWORD PTR [rbp-0x7a8]
  659dfa:	48 8d 04 31          	lea    rax,[rcx+rsi*1]
  659dfe:	48 2b c2             	sub    rax,rdx
  659e01:	48 8d 3c 16          	lea    rdi,[rsi+rdx*1]
  659e05:	48 2b c6             	sub    rax,rsi
  659e08:	48 2b f9             	sub    rdi,rcx
  659e0b:	49 3b c0             	cmp    rax,r8
  659e0e:	41 0f 9f c2          	setg   r10b
  659e12:	48 2b fe             	sub    rdi,rsi
  659e15:	49 3b f8             	cmp    rdi,r8
  659e18:	41 0f 9f c1          	setg   r9b
  659e1c:	45 0b d1             	or     r10d,r9d
  659e1f:	0f 84 2e 46 00 00    	je     65e453 <step3d_t_mod_mp_step3d_t_tile_+0xa293>
  659e25:	48 8b 85 70 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x790]
  659e2c:	4c 89 c2             	mov    rdx,r8
  659e2f:	c5 f8 77             	vzeroupper 
  659e32:	48 8d 3c 30          	lea    rdi,[rax+rsi*1]
  659e36:	48 03 b5 e0 fa ff ff 	add    rsi,QWORD PTR [rbp-0x520]
  659e3d:	e8 4e 74 e7 ff       	call   4d1290 <_intel_fast_memcpy>
  659e42:	43 f6 44 25 fc 01    	test   BYTE PTR [r13+r12*1-0x4],0x1
  659e48:	0f 85 e1 00 00 00    	jne    659f2f <step3d_t_mod_mp_step3d_t_tile_+0x5d6f>
  659e4e:	48 8b 05 2b 1e 46 00 	mov    rax,QWORD PTR [rip+0x461e2b]        # abbc80 <mod_scalars_mp_nsperiodic_>
  659e55:	42 f6 44 b0 fc 01    	test   BYTE PTR [rax+r14*4-0x4],0x1
  659e5b:	0f 85 ce 00 00 00    	jne    659f2f <step3d_t_mod_mp_step3d_t_tile_+0x5d6f>
  659e61:	4c 89 f0             	mov    rax,r14
  659e64:	4c 89 f1             	mov    rcx,r14
  659e67:	48 c1 e0 05          	shl    rax,0x5
  659e6b:	48 c1 e1 0b          	shl    rcx,0xb
  659e6f:	48 2b c8             	sub    rcx,rax
  659e72:	48 8b 15 c7 15 46 00 	mov    rdx,QWORD PTR [rip+0x4615c7]        # abb440 <mod_param_mp_domain_>
  659e79:	48 8b bc 0a f0 f8 ff 	mov    rdi,QWORD PTR [rdx+rcx*1-0x710]
  659e80:	ff 
  659e81:	48 f7 df             	neg    rdi
  659e84:	48 03 bd 00 f9 ff ff 	add    rdi,QWORD PTR [rbp-0x700]
  659e8b:	48 0f af bc 0a e8 f8 	imul   rdi,QWORD PTR [rdx+rcx*1-0x718]
  659e92:	ff ff 
  659e94:	48 8b b4 0a b0 f8 ff 	mov    rsi,QWORD PTR [rdx+rcx*1-0x750]
  659e9b:	ff 
  659e9c:	f6 04 3e 01          	test   BYTE PTR [rsi+rdi*1],0x1
  659ea0:	0f 84 89 00 00 00    	je     659f2f <step3d_t_mod_mp_step3d_t_tile_+0x5d6f>
  659ea6:	8b 85 28 fe ff ff    	mov    eax,DWORD PTR [rbp-0x1d8]
  659eac:	3b 85 58 ff ff ff    	cmp    eax,DWORD PTR [rbp-0xa8]
  659eb2:	0f 8c d2 00 00 00    	jl     659f8a <step3d_t_mod_mp_step3d_t_tile_+0x5dca>
  659eb8:	48 8b b5 70 f6 ff ff 	mov    rsi,QWORD PTR [rbp-0x990]
  659ebf:	83 bd 38 f5 ff ff 0c 	cmp    DWORD PTR [rbp-0xac8],0xc
  659ec6:	0f 8e cb 40 00 00    	jle    65df97 <step3d_t_mod_mp_step3d_t_tile_+0x9dd7>
  659ecc:	48 8b 8d 78 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x788]
  659ed3:	45 33 d2             	xor    r10d,r10d
  659ed6:	48 8b 95 88 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x778]
  659edd:	45 33 c9             	xor    r9d,r9d
  659ee0:	4c 8b 85 58 f8 ff ff 	mov    r8,QWORD PTR [rbp-0x7a8]
  659ee7:	48 8d 04 0e          	lea    rax,[rsi+rcx*1]
  659eeb:	48 2b c2             	sub    rax,rdx
  659eee:	48 8d 3c 16          	lea    rdi,[rsi+rdx*1]
  659ef2:	48 2b c6             	sub    rax,rsi
  659ef5:	48 2b f9             	sub    rdi,rcx
  659ef8:	49 3b c0             	cmp    rax,r8
  659efb:	41 0f 9f c2          	setg   r10b
  659eff:	48 2b fe             	sub    rdi,rsi
  659f02:	49 3b f8             	cmp    rdi,r8
  659f05:	41 0f 9f c1          	setg   r9b
  659f09:	45 0b d1             	or     r10d,r9d
  659f0c:	0f 84 85 40 00 00    	je     65df97 <step3d_t_mod_mp_step3d_t_tile_+0x9dd7>
  659f12:	48 8b 85 60 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x7a0]
  659f19:	4c 89 c2             	mov    rdx,r8
  659f1c:	c5 f8 77             	vzeroupper 
  659f1f:	48 8d 3c 06          	lea    rdi,[rsi+rax*1]
  659f23:	48 03 b5 68 f8 ff ff 	add    rsi,QWORD PTR [rbp-0x798]
  659f2a:	e8 61 73 e7 ff       	call   4d1290 <_intel_fast_memcpy>
  659f2f:	8b 85 28 fb ff ff    	mov    eax,DWORD PTR [rbp-0x4d8]
  659f35:	45 33 ff             	xor    r15d,r15d
  659f38:	3b 85 30 fb ff ff    	cmp    eax,DWORD PTR [rbp-0x4d0]
  659f3e:	0f 8c 90 01 00 00    	jl     65a0d4 <step3d_t_mod_mp_step3d_t_tile_+0x5f14>
  659f44:	4c 8b ad 10 f6 ff ff 	mov    r13,QWORD PTR [rbp-0x9f0]
  659f4b:	4c 8b a5 70 f6 ff ff 	mov    r12,QWORD PTR [rbp-0x990]
  659f52:	48 8b bd e0 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x520]
  659f59:	4c 8b 85 c8 fa ff ff 	mov    r8,QWORD PTR [rbp-0x538]
  659f60:	4c 8b 8d 70 fd ff ff 	mov    r9,QWORD PTR [rbp-0x290]
  659f67:	44 8b 95 28 fe ff ff 	mov    r10d,DWORD PTR [rbp-0x1d8]
  659f6e:	4c 89 b5 e8 fa ff ff 	mov    QWORD PTR [rbp-0x518],r14
  659f75:	c5 fd 10 05 03 03 1f 	vmovupd ymm0,YMMWORD PTR [rip+0x1f0303]        # 84a280 <var$630.126.450+0x2e0>
  659f7c:	00 
  659f7d:	c5 fb 10 0d 13 22 1f 	vmovsd xmm1,QWORD PTR [rip+0x1f2213]        # 84c198 <__STRLITPACK_0.112+0x88>
  659f84:	00 
  659f85:	e9 93 00 00 00       	jmp    65a01d <step3d_t_mod_mp_step3d_t_tile_+0x5e5d>
  659f8a:	8b 85 28 fb ff ff    	mov    eax,DWORD PTR [rbp-0x4d8]
  659f90:	3b 85 30 fb ff ff    	cmp    eax,DWORD PTR [rbp-0x4d0]
  659f96:	0f 8c 38 01 00 00    	jl     65a0d4 <step3d_t_mod_mp_step3d_t_tile_+0x5f14>
  659f9c:	4c 8b ad 10 f6 ff ff 	mov    r13,QWORD PTR [rbp-0x9f0]
  659fa3:	4c 8b a5 70 f6 ff ff 	mov    r12,QWORD PTR [rbp-0x990]
  659faa:	48 83 bd 60 ff ff ff 	cmp    QWORD PTR [rbp-0xa0],0x1
  659fb1:	01 
  659fb2:	0f 86 1c 01 00 00    	jbe    65a0d4 <step3d_t_mod_mp_step3d_t_tile_+0x5f14>
  659fb8:	48 83 bd 60 ff ff ff 	cmp    QWORD PTR [rbp-0xa0],0x2
  659fbf:	02 
  659fc0:	0f 86 0e 01 00 00    	jbe    65a0d4 <step3d_t_mod_mp_step3d_t_tile_+0x5f14>
  659fc6:	41 bf 03 00 00 00    	mov    r15d,0x3
  659fcc:	48 83 bd 60 ff ff ff 	cmp    QWORD PTR [rbp-0xa0],0x3
  659fd3:	03 
  659fd4:	0f 86 fa 00 00 00    	jbe    65a0d4 <step3d_t_mod_mp_step3d_t_tile_+0x5f14>
  659fda:	4c 89 b5 e8 fa ff ff 	mov    QWORD PTR [rbp-0x518],r14
  659fe1:	c5 fd 10 05 97 02 1f 	vmovupd ymm0,YMMWORD PTR [rip+0x1f0297]        # 84a280 <var$630.126.450+0x2e0>
  659fe8:	00 
  659fe9:	c5 fb 10 0d a7 21 1f 	vmovsd xmm1,QWORD PTR [rip+0x1f21a7]        # 84c198 <__STRLITPACK_0.112+0x88>
  659ff0:	00 
  659ff1:	48 8b bd e0 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x520]
  659ff8:	4c 8b 85 c8 fa ff ff 	mov    r8,QWORD PTR [rbp-0x538]
  659fff:	4c 8b 8d 70 fd ff ff 	mov    r9,QWORD PTR [rbp-0x290]
  65a006:	44 8b 95 28 fe ff ff 	mov    r10d,DWORD PTR [rbp-0x1d8]
  65a00d:	49 ff c7             	inc    r15
  65a010:	4c 3b bd 60 ff ff ff 	cmp    r15,QWORD PTR [rbp-0xa0]
  65a017:	0f 83 a9 00 00 00    	jae    65a0c6 <step3d_t_mod_mp_step3d_t_tile_+0x5f06>
  65a01d:	44 3b 95 58 ff ff ff 	cmp    r10d,DWORD PTR [rbp-0xa8]
  65a024:	7c e7                	jl     65a00d <step3d_t_mod_mp_step3d_t_tile_+0x5e4d>
  65a026:	49 83 f9 04          	cmp    r9,0x4
  65a02a:	0f 8c e2 3f 00 00    	jl     65e012 <step3d_t_mod_mp_step3d_t_tile_+0x9e52>
  65a030:	4c 89 f9             	mov    rcx,r15
  65a033:	4d 8d 34 3c          	lea    r14,[r12+rdi*1]
  65a037:	48 0f af 8d 70 ff ff 	imul   rcx,QWORD PTR [rbp-0x90]
  65a03e:	ff 
  65a03f:	4c 8b 9d 78 ff ff ff 	mov    r11,QWORD PTR [rbp-0x88]
  65a046:	49 8d 44 0d 00       	lea    rax,[r13+rcx*1+0x0]
  65a04b:	33 d2                	xor    edx,edx
  65a04d:	49 8d 34 0c          	lea    rsi,[r12+rcx*1]
  65a051:	49 03 c0             	add    rax,r8
  65a054:	49 03 f0             	add    rsi,r8
  65a057:	49 03 ce             	add    rcx,r14
  65a05a:	4d 89 de             	mov    r14,r11
  65a05d:	c5 fd 10 14 d1       	vmovupd ymm2,YMMWORD PTR [rcx+rdx*8]
  65a062:	c5 ed 58 5c d6 f8    	vaddpd ymm3,ymm2,YMMWORD PTR [rsi+rdx*8-0x8]
  65a068:	c5 fd 59 e3          	vmulpd ymm4,ymm0,ymm3
  65a06c:	c5 fd 11 64 d0 f8    	vmovupd YMMWORD PTR [rax+rdx*8-0x8],ymm4
  65a072:	48 83 c2 04          	add    rdx,0x4
  65a076:	49 3b d6             	cmp    rdx,r14
  65a079:	72 e2                	jb     65a05d <step3d_t_mod_mp_step3d_t_tile_+0x5e9d>
  65a07b:	4d 3b d9             	cmp    r11,r9
  65a07e:	73 8d                	jae    65a00d <step3d_t_mod_mp_step3d_t_tile_+0x5e4d>
  65a080:	4c 89 f8             	mov    rax,r15
  65a083:	49 8d 34 3c          	lea    rsi,[r12+rdi*1]
  65a087:	48 0f af 85 70 ff ff 	imul   rax,QWORD PTR [rbp-0x90]
  65a08e:	ff 
  65a08f:	49 8d 4c 05 00       	lea    rcx,[r13+rax*1+0x0]
  65a094:	49 03 c8             	add    rcx,r8
  65a097:	49 8d 14 04          	lea    rdx,[r12+rax*1]
  65a09b:	49 03 d0             	add    rdx,r8
  65a09e:	48 03 c6             	add    rax,rsi
  65a0a1:	c4 a1 7b 10 14 d8    	vmovsd xmm2,QWORD PTR [rax+r11*8]
  65a0a7:	c4 a1 6b 58 5c da f8 	vaddsd xmm3,xmm2,QWORD PTR [rdx+r11*8-0x8]
  65a0ae:	c5 f3 59 e3          	vmulsd xmm4,xmm1,xmm3
  65a0b2:	c4 a1 7b 11 64 d9 f8 	vmovsd QWORD PTR [rcx+r11*8-0x8],xmm4
  65a0b9:	49 ff c3             	inc    r11
  65a0bc:	4d 3b d9             	cmp    r11,r9
  65a0bf:	72 e0                	jb     65a0a1 <step3d_t_mod_mp_step3d_t_tile_+0x5ee1>
  65a0c1:	e9 47 ff ff ff       	jmp    65a00d <step3d_t_mod_mp_step3d_t_tile_+0x5e4d>
  65a0c6:	4c 89 85 c8 fa ff ff 	mov    QWORD PTR [rbp-0x538],r8
  65a0cd:	4c 8b b5 e8 fa ff ff 	mov    r14,QWORD PTR [rbp-0x518]
  65a0d4:	8b 85 28 fb ff ff    	mov    eax,DWORD PTR [rbp-0x4d8]
  65a0da:	3b 85 18 fb ff ff    	cmp    eax,DWORD PTR [rbp-0x4e8]
  65a0e0:	0f 8c 6c 07 00 00    	jl     65a852 <step3d_t_mod_mp_step3d_t_tile_+0x6692>
  65a0e6:	48 8b bd b8 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x748]
  65a0ed:	48 8b 8d 10 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x9f0]
  65a0f4:	48 8b 95 70 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x990]
  65a0fb:	4c 8d 4f 68          	lea    r9,[rdi+0x68]
  65a0ff:	49 8b 01             	mov    rax,QWORD PTR [r9]
  65a102:	49 8b 71 e8          	mov    rsi,QWORD PTR [r9-0x18]
  65a106:	4d 8b 41 d0          	mov    r8,QWORD PTR [r9-0x30]
  65a10a:	4d 8b 69 98          	mov    r13,QWORD PTR [r9-0x68]
  65a10e:	4d 8b 61 30          	mov    r12,QWORD PTR [r9+0x30]
  65a112:	4d 8b 59 18          	mov    r11,QWORD PTR [r9+0x18]
  65a116:	48 89 85 70 fa ff ff 	mov    QWORD PTR [rbp-0x590],rax
  65a11d:	48 89 b5 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rsi
  65a124:	4c 89 85 10 ff ff ff 	mov    QWORD PTR [rbp-0xf0],r8
  65a12b:	48 83 bd 90 fe ff ff 	cmp    QWORD PTR [rbp-0x170],0x8
  65a132:	08 
  65a133:	0f 85 6a 02 00 00    	jne    65a3a3 <step3d_t_mod_mp_step3d_t_tile_+0x61e3>
  65a139:	48 83 bd 10 ff ff ff 	cmp    QWORD PTR [rbp-0xf0],0x8
  65a140:	08 
  65a141:	0f 85 5c 02 00 00    	jne    65a3a3 <step3d_t_mod_mp_step3d_t_tile_+0x61e3>
  65a147:	4d 89 e1             	mov    r9,r12
  65a14a:	4f 8d 14 5b          	lea    r10,[r11+r11*2]
  65a14e:	4c 0f af 8d a0 fa ff 	imul   r9,QWORD PTR [rbp-0x560]
  65a155:	ff 
  65a156:	c5 fd 10 1d 42 01 1f 	vmovupd ymm3,YMMWORD PTR [rip+0x1f0142]        # 84a2a0 <var$630.126.450+0x300>
  65a15d:	00 
  65a15e:	c5 fb 10 15 5a 23 1f 	vmovsd xmm2,QWORD PTR [rip+0x1f235a]        # 84c4c0 <__STRLITPACK_0.112+0x3b0>
  65a165:	00 
  65a166:	c5 fb 10 0d 2a 20 1f 	vmovsd xmm1,QWORD PTR [rip+0x1f202a]        # 84c198 <__STRLITPACK_0.112+0x88>
  65a16d:	00 
  65a16e:	c5 fd 10 05 0a 01 1f 	vmovupd ymm0,YMMWORD PTR [rip+0x1f010a]        # 84a280 <var$630.126.450+0x2e0>
  65a175:	00 
  65a176:	48 8b 85 e0 fa ff ff 	mov    rax,QWORD PTR [rbp-0x520]
  65a17d:	48 03 d0             	add    rdx,rax
  65a180:	4c 89 b5 e8 fa ff ff 	mov    QWORD PTR [rbp-0x518],r14
  65a187:	48 89 95 70 fc ff ff 	mov    QWORD PTR [rbp-0x390],rdx
  65a18e:	4c 8b b5 50 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x6b0]
  65a195:	48 8b 95 60 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x6a0]
  65a19c:	49 89 f7             	mov    r15,rsi
  65a19f:	4d 89 f8             	mov    r8,r15
  65a1a2:	48 8b b5 70 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x590]
  65a1a9:	48 8b bd 20 f9 ff ff 	mov    rdi,QWORD PTR [rbp-0x6e0]
  65a1b0:	49 03 d6             	add    rdx,r14
  65a1b3:	4c 8b b5 c8 fa ff ff 	mov    r14,QWORD PTR [rbp-0x538]
  65a1ba:	48 0f af d6          	imul   rdx,rsi
  65a1be:	4c 0f af 85 a0 f9 ff 	imul   r8,QWORD PTR [rbp-0x660]
  65a1c5:	ff 
  65a1c6:	49 0f af ff          	imul   rdi,r15
  65a1ca:	49 f7 df             	neg    r15
  65a1cd:	4c 03 f1             	add    r14,rcx
  65a1d0:	48 03 c8             	add    rcx,rax
  65a1d3:	4b 8d 44 0d 00       	lea    rax,[r13+r9*1+0x0]
  65a1d8:	4d 2b cc             	sub    r9,r12
  65a1db:	4d 03 e3             	add    r12,r11
  65a1de:	4d 2b da             	sub    r11,r10
  65a1e1:	4c 03 d2             	add    r10,rdx
  65a1e4:	4c 89 b5 50 fa ff ff 	mov    QWORD PTR [rbp-0x5b0],r14
  65a1eb:	4d 2b cb             	sub    r9,r11
  65a1ee:	4c 8b b5 00 fa ff ff 	mov    r14,QWORD PTR [rbp-0x600]
  65a1f5:	4d 03 ee             	add    r13,r14
  65a1f8:	4d 03 e9             	add    r13,r9
  65a1fb:	49 03 c6             	add    rax,r14
  65a1fe:	4c 8b 8d 80 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x680]
  65a205:	4d 2b e2             	sub    r12,r10
  65a208:	4c 0f af 8d 60 f9 ff 	imul   r9,QWORD PTR [rbp-0x6a0]
  65a20f:	ff 
  65a210:	48 2b d6             	sub    rdx,rsi
  65a213:	48 03 f7             	add    rsi,rdi
  65a216:	49 2b f8             	sub    rdi,r8
  65a219:	49 2b c4             	sub    rax,r12
  65a21c:	48 2b d7             	sub    rdx,rdi
  65a21f:	48 2b c6             	sub    rax,rsi
  65a222:	4c 03 ea             	add    r13,rdx
  65a225:	49 03 c0             	add    rax,r8
  65a228:	48 c7 85 68 fa ff ff 	mov    QWORD PTR [rbp-0x598],0x0
  65a22f:	00 00 00 00 
  65a233:	4d 03 fd             	add    r15,r13
  65a236:	4c 8b 85 68 fa ff ff 	mov    r8,QWORD PTR [rbp-0x598]
  65a23d:	4c 89 c7             	mov    rdi,r8
  65a240:	4c 03 8d d0 f9 ff ff 	add    r9,QWORD PTR [rbp-0x630]
  65a247:	4c 8b b5 e8 fa ff ff 	mov    r14,QWORD PTR [rbp-0x518]
  65a24e:	48 8b 95 50 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x5b0]
  65a255:	48 8b b5 70 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x290]
  65a25c:	48 89 8d 68 fc ff ff 	mov    QWORD PTR [rbp-0x398],rcx
  65a263:	4c 89 c1             	mov    rcx,r8
  65a266:	4c 89 bd 78 fc ff ff 	mov    QWORD PTR [rbp-0x388],r15
  65a26d:	48 89 85 80 fc ff ff 	mov    QWORD PTR [rbp-0x380],rax
  65a274:	8b 85 28 fe ff ff    	mov    eax,DWORD PTR [rbp-0x1d8]
  65a27a:	3b 85 58 ff ff ff    	cmp    eax,DWORD PTR [rbp-0xa8]
  65a280:	0f 8c f3 00 00 00    	jl     65a379 <step3d_t_mod_mp_step3d_t_tile_+0x61b9>
  65a286:	48 83 fe 04          	cmp    rsi,0x4
  65a28a:	0f 8c 8a 3d 00 00    	jl     65e01a <step3d_t_mod_mp_step3d_t_tile_+0x9e5a>
  65a290:	4c 8b a5 70 fc ff ff 	mov    r12,QWORD PTR [rbp-0x390]
  65a297:	45 33 f6             	xor    r14d,r14d
  65a29a:	4c 8b 9d 68 fc ff ff 	mov    r11,QWORD PTR [rbp-0x398]
  65a2a1:	4e 8d 2c 02          	lea    r13,[rdx+r8*1]
  65a2a5:	4c 8b 95 80 fc ff ff 	mov    r10,QWORD PTR [rbp-0x380]
  65a2ac:	4c 8b bd 78 fc ff ff 	mov    r15,QWORD PTR [rbp-0x388]
  65a2b3:	4d 03 e0             	add    r12,r8
  65a2b6:	48 8b 85 78 ff ff ff 	mov    rax,QWORD PTR [rbp-0x88]
  65a2bd:	4d 03 d8             	add    r11,r8
  65a2c0:	48 89 c6             	mov    rsi,rax
  65a2c3:	4c 03 d7             	add    r10,rdi
  65a2c6:	4c 03 ff             	add    r15,rdi
  65a2c9:	c4 81 7d 10 2c f3    	vmovupd ymm5,YMMWORD PTR [r11+r14*8]
  65a2cf:	c4 81 7d 10 24 f7    	vmovupd ymm4,YMMWORD PTR [r15+r14*8]
  65a2d5:	c4 01 7d 59 0c f1    	vmulpd ymm9,ymm0,YMMWORD PTR [r9+r14*8]
  65a2db:	c4 81 55 5c 74 f5 f8 	vsubpd ymm6,ymm5,YMMWORD PTR [r13+r14*8-0x8]
  65a2e2:	c4 81 5d 58 3c f2    	vaddpd ymm7,ymm4,YMMWORD PTR [r10+r14*8]
  65a2e8:	c5 65 59 c6          	vmulpd ymm8,ymm3,ymm6
  65a2ec:	c4 41 45 5c d0       	vsubpd ymm10,ymm7,ymm8
  65a2f1:	c4 41 35 59 da       	vmulpd ymm11,ymm9,ymm10
  65a2f6:	c4 01 7d 11 1c f4    	vmovupd YMMWORD PTR [r12+r14*8],ymm11
  65a2fc:	49 83 c6 04          	add    r14,0x4
  65a300:	4c 3b f6             	cmp    r14,rsi
  65a303:	72 c4                	jb     65a2c9 <step3d_t_mod_mp_step3d_t_tile_+0x6109>
  65a305:	48 8b b5 70 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x290]
  65a30c:	48 3b c6             	cmp    rax,rsi
  65a30f:	73 68                	jae    65a379 <step3d_t_mod_mp_step3d_t_tile_+0x61b9>
  65a311:	4c 8b 9d 70 fc ff ff 	mov    r11,QWORD PTR [rbp-0x390]
  65a318:	4e 8d 24 02          	lea    r12,[rdx+r8*1]
  65a31c:	4c 8b 95 68 fc ff ff 	mov    r10,QWORD PTR [rbp-0x398]
  65a323:	4c 8b b5 80 fc ff ff 	mov    r14,QWORD PTR [rbp-0x380]
  65a32a:	4c 8b ad 78 fc ff ff 	mov    r13,QWORD PTR [rbp-0x388]
  65a331:	4d 03 d8             	add    r11,r8
  65a334:	4d 03 d0             	add    r10,r8
  65a337:	4c 03 f7             	add    r14,rdi
  65a33a:	4c 03 ef             	add    r13,rdi
  65a33d:	c4 c1 7b 10 2c c2    	vmovsd xmm5,QWORD PTR [r10+rax*8]
  65a343:	c4 c1 7b 10 64 c5 00 	vmovsd xmm4,QWORD PTR [r13+rax*8+0x0]
  65a34a:	c4 41 73 59 0c c1    	vmulsd xmm9,xmm1,QWORD PTR [r9+rax*8]
  65a350:	c4 c1 53 5c 74 c4 f8 	vsubsd xmm6,xmm5,QWORD PTR [r12+rax*8-0x8]
  65a357:	c4 c1 5b 58 3c c6    	vaddsd xmm7,xmm4,QWORD PTR [r14+rax*8]
  65a35d:	c5 6b 59 c6          	vmulsd xmm8,xmm2,xmm6
  65a361:	c4 41 43 5c d0       	vsubsd xmm10,xmm7,xmm8
  65a366:	c4 41 33 59 da       	vmulsd xmm11,xmm9,xmm10
  65a36b:	c4 41 7b 11 1c c3    	vmovsd QWORD PTR [r11+rax*8],xmm11
  65a371:	48 ff c0             	inc    rax
  65a374:	48 3b c6             	cmp    rax,rsi
  65a377:	72 c4                	jb     65a33d <step3d_t_mod_mp_step3d_t_tile_+0x617d>
  65a379:	48 ff c1             	inc    rcx
  65a37c:	4c 03 85 70 ff ff ff 	add    r8,QWORD PTR [rbp-0x90]
  65a383:	4c 03 8d 68 fe ff ff 	add    r9,QWORD PTR [rbp-0x198]
  65a38a:	48 03 bd 28 ff ff ff 	add    rdi,QWORD PTR [rbp-0xd8]
  65a391:	48 3b 8d 38 fe ff ff 	cmp    rcx,QWORD PTR [rbp-0x1c8]
  65a398:	0f 82 d6 fe ff ff    	jb     65a274 <step3d_t_mod_mp_step3d_t_tile_+0x60b4>
  65a39e:	e9 a8 04 00 00       	jmp    65a84b <step3d_t_mod_mp_step3d_t_tile_+0x668b>
  65a3a3:	4c 8b bd 60 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6a0]
  65a3aa:	4c 89 b5 e8 fa ff ff 	mov    QWORD PTR [rbp-0x518],r14
  65a3b1:	4c 8b b5 80 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x680]
  65a3b8:	4d 0f af f7          	imul   r14,r15
  65a3bc:	4c 8b 8d 68 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x698]
  65a3c3:	48 89 f7             	mov    rdi,rsi
  65a3c6:	4d 89 c2             	mov    r10,r8
  65a3c9:	4c 89 d0             	mov    rax,r10
  65a3cc:	4f 8d 04 31          	lea    r8,[r9+r14*1]
  65a3d0:	4c 03 b5 70 f9 ff ff 	add    r14,QWORD PTR [rbp-0x690]
  65a3d7:	4d 89 e1             	mov    r9,r12
  65a3da:	4c 89 b5 00 fd ff ff 	mov    QWORD PTR [rbp-0x300],r14
  65a3e1:	4c 8b b5 50 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x6b0]
  65a3e8:	4c 0f af 8d a0 fa ff 	imul   r9,QWORD PTR [rbp-0x560]
  65a3ef:	ff 
  65a3f0:	48 0f af bd a0 f9 ff 	imul   rdi,QWORD PTR [rbp-0x660]
  65a3f7:	ff 
  65a3f8:	48 0f af 85 98 fb ff 	imul   rax,QWORD PTR [rbp-0x468]
  65a3ff:	ff 
  65a400:	4d 03 e9             	add    r13,r9
  65a403:	4d 03 fe             	add    r15,r14
  65a406:	4c 8b b5 70 fa ff ff 	mov    r14,QWORD PTR [rbp-0x590]
  65a40d:	4d 89 e9             	mov    r9,r13
  65a410:	4d 0f af fe          	imul   r15,r14
  65a414:	4c 89 85 f0 fc ff ff 	mov    QWORD PTR [rbp-0x310],r8
  65a41b:	4f 8d 04 5b          	lea    r8,[r11+r11*2]
  65a41f:	4d 2b cc             	sub    r9,r12
  65a422:	4d 03 e3             	add    r12,r11
  65a425:	4d 2b d8             	sub    r11,r8
  65a428:	4d 03 c7             	add    r8,r15
  65a42b:	4d 2b fe             	sub    r15,r14
  65a42e:	4d 2b ec             	sub    r13,r12
  65a431:	4d 2b df             	sub    r11,r15
  65a434:	4d 2b cb             	sub    r9,r11
  65a437:	4c 8b 9d 20 f9 ff ff 	mov    r11,QWORD PTR [rbp-0x6e0]
  65a43e:	4c 0f af de          	imul   r11,rsi
  65a442:	4d 03 f3             	add    r14,r11
  65a445:	48 f7 de             	neg    rsi
  65a448:	4d 2b c6             	sub    r8,r14
  65a44b:	49 89 f4             	mov    r12,rsi
  65a44e:	4d 03 e8             	add    r13,r8
  65a451:	4c 2b df             	sub    r11,rdi
  65a454:	4c 8b 85 28 f9 ff ff 	mov    r8,QWORD PTR [rbp-0x6d8]
  65a45b:	4d 0f af c2          	imul   r8,r10
  65a45f:	4d 89 c6             	mov    r14,r8
  65a462:	4d 2b e0             	sub    r12,r8
  65a465:	49 f7 d8             	neg    r8
  65a468:	4c 2b f0             	sub    r14,rax
  65a46b:	4c 03 c7             	add    r8,rdi
  65a46e:	48 03 fe             	add    rdi,rsi
  65a471:	49 2b fe             	sub    rdi,r14
  65a474:	49 f7 dc             	neg    r12
  65a477:	4d 03 c5             	add    r8,r13
  65a47a:	4c 03 ef             	add    r13,rdi
  65a47d:	4d 03 e3             	add    r12,r11
  65a480:	4d 03 de             	add    r11,r14
  65a483:	49 f7 dc             	neg    r12
  65a486:	4d 03 e1             	add    r12,r9
  65a489:	4d 2b cb             	sub    r9,r11
  65a48c:	4c 03 e0             	add    r12,rax
  65a48f:	49 03 c0             	add    rax,r8
  65a492:	4c 89 a5 08 fd ff ff 	mov    QWORD PTR [rbp-0x2f8],r12
  65a499:	4f 8d 64 55 00       	lea    r12,[r13+r10*2+0x0]
  65a49e:	4c 8b ad d0 fa ff ff 	mov    r13,QWORD PTR [rbp-0x530]
  65a4a5:	48 c7 85 00 fe ff ff 	mov    QWORD PTR [rbp-0x200],0x0
  65a4ac:	00 00 00 00 
  65a4b0:	4f 8d 1c 51          	lea    r11,[r9+r10*2]
  65a4b4:	48 8b b5 e0 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x520]
  65a4bb:	4c 8b 85 00 fe ff ff 	mov    r8,QWORD PTR [rbp-0x200]
  65a4c2:	4d 8d 54 15 00       	lea    r10,[r13+rdx*1+0x0]
  65a4c7:	48 03 d6             	add    rdx,rsi
  65a4ca:	4d 8d 4c 0d 00       	lea    r9,[r13+rcx*1+0x0]
  65a4cf:	4c 8b ad c8 fa ff ff 	mov    r13,QWORD PTR [rbp-0x538]
  65a4d6:	4c 89 c7             	mov    rdi,r8
  65a4d9:	4c 89 a5 90 fc ff ff 	mov    QWORD PTR [rbp-0x370],r12
  65a4e0:	4c 8b b5 e8 fa ff ff 	mov    r14,QWORD PTR [rbp-0x518]
  65a4e7:	4c 8b a5 70 fd ff ff 	mov    r12,QWORD PTR [rbp-0x290]
  65a4ee:	4c 03 e9             	add    r13,rcx
  65a4f1:	48 03 ce             	add    rcx,rsi
  65a4f4:	48 89 fe             	mov    rsi,rdi
  65a4f7:	4c 89 9d 88 fc ff ff 	mov    QWORD PTR [rbp-0x378],r11
  65a4fe:	48 89 8d 68 fc ff ff 	mov    QWORD PTR [rbp-0x398],rcx
  65a505:	48 89 95 70 fc ff ff 	mov    QWORD PTR [rbp-0x390],rdx
  65a50c:	4c 89 ad 98 fc ff ff 	mov    QWORD PTR [rbp-0x368],r13
  65a513:	4d 89 c5             	mov    r13,r8
  65a516:	4c 89 8d a0 fc ff ff 	mov    QWORD PTR [rbp-0x360],r9
  65a51d:	4c 89 95 a8 fc ff ff 	mov    QWORD PTR [rbp-0x358],r10
  65a524:	48 89 85 b0 fc ff ff 	mov    QWORD PTR [rbp-0x350],rax
  65a52b:	c5 fb 10 0d 8d 1f 1f 	vmovsd xmm1,QWORD PTR [rip+0x1f1f8d]        # 84c4c0 <__STRLITPACK_0.112+0x3b0>
  65a532:	00 
  65a533:	c5 fb 10 25 5d 1c 1f 	vmovsd xmm4,QWORD PTR [rip+0x1f1c5d]        # 84c198 <__STRLITPACK_0.112+0x88>
  65a53a:	00 
  65a53b:	c5 f9 10 15 bd 14 1f 	vmovupd xmm2,XMMWORD PTR [rip+0x1f14bd]        # 84ba00 <__STRLITPACK_19.34+0x20>
  65a542:	00 
  65a543:	c5 f9 10 1d a5 14 1f 	vmovupd xmm3,XMMWORD PTR [rip+0x1f14a5]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  65a54a:	00 
  65a54b:	8b 85 28 fe ff ff    	mov    eax,DWORD PTR [rbp-0x1d8]
  65a551:	3b 85 58 ff ff ff    	cmp    eax,DWORD PTR [rbp-0xa8]
  65a557:	0f 8c c9 02 00 00    	jl     65a826 <step3d_t_mod_mp_step3d_t_tile_+0x6666>
  65a55d:	49 83 fc 04          	cmp    r12,0x4
  65a561:	0f 8c dc 3e 00 00    	jl     65e443 <step3d_t_mod_mp_step3d_t_tile_+0xa283>
  65a567:	48 8b 85 70 fc ff ff 	mov    rax,QWORD PTR [rbp-0x390]
  65a56e:	4c 8b b5 b0 fc ff ff 	mov    r14,QWORD PTR [rbp-0x350]
  65a575:	4c 8b bd 08 fd ff ff 	mov    r15,QWORD PTR [rbp-0x2f8]
  65a57c:	4c 8b 9d 78 ff ff ff 	mov    r11,QWORD PTR [rbp-0x88]
  65a583:	48 03 c6             	add    rax,rsi
  65a586:	48 89 85 c8 fc ff ff 	mov    QWORD PTR [rbp-0x338],rax
  65a58d:	4c 03 f7             	add    r14,rdi
  65a590:	48 8b 85 68 fc ff ff 	mov    rax,QWORD PTR [rbp-0x398]
  65a597:	4c 03 ff             	add    r15,rdi
  65a59a:	4c 8b 95 f0 fc ff ff 	mov    r10,QWORD PTR [rbp-0x310]
  65a5a1:	4c 8b 8d a8 fc ff ff 	mov    r9,QWORD PTR [rbp-0x358]
  65a5a8:	48 8b 8d a0 fc ff ff 	mov    rcx,QWORD PTR [rbp-0x360]
  65a5af:	48 03 c6             	add    rax,rsi
  65a5b2:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  65a5b6:	4d 03 d0             	add    r10,r8
  65a5b9:	48 8b 85 00 fd ff ff 	mov    rax,QWORD PTR [rbp-0x300]
  65a5c0:	4c 03 ce             	add    r9,rsi
  65a5c3:	48 8b 95 98 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x368]
  65a5ca:	48 03 ce             	add    rcx,rsi
  65a5cd:	4c 89 9d f8 fe ff ff 	mov    QWORD PTR [rbp-0x108],r11
  65a5d4:	45 33 db             	xor    r11d,r11d
  65a5d7:	4c 89 75 d8          	mov    QWORD PTR [rbp-0x28],r14
  65a5db:	49 03 c0             	add    rax,r8
  65a5de:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  65a5e2:	48 03 d6             	add    rdx,rsi
  65a5e5:	48 8b 85 90 fc ff ff 	mov    rax,QWORD PTR [rbp-0x370]
  65a5ec:	48 89 b5 e8 fd ff ff 	mov    QWORD PTR [rbp-0x218],rsi
  65a5f3:	48 89 bd f0 fd ff ff 	mov    QWORD PTR [rbp-0x210],rdi
  65a5fa:	4c 89 85 f8 fd ff ff 	mov    QWORD PTR [rbp-0x208],r8
  65a601:	48 03 c7             	add    rax,rdi
  65a604:	48 89 85 c0 fc ff ff 	mov    QWORD PTR [rbp-0x340],rax
  65a60b:	48 8b 85 88 fc ff ff 	mov    rax,QWORD PTR [rbp-0x378]
  65a612:	4c 89 ad 00 fe ff ff 	mov    QWORD PTR [rbp-0x200],r13
  65a619:	4c 89 7d e0          	mov    QWORD PTR [rbp-0x20],r15
  65a61d:	4c 8b 85 c0 fc ff ff 	mov    r8,QWORD PTR [rbp-0x340]
  65a624:	48 03 c7             	add    rax,rdi
  65a627:	48 89 85 b8 fc ff ff 	mov    QWORD PTR [rbp-0x348],rax
  65a62e:	33 c0                	xor    eax,eax
  65a630:	48 89 c6             	mov    rsi,rax
  65a633:	48 8b bd b8 fc ff ff 	mov    rdi,QWORD PTR [rbp-0x348]
  65a63a:	4c 8b a5 c8 fc ff ff 	mov    r12,QWORD PTR [rbp-0x338]
  65a641:	4c 8b ad 10 ff ff ff 	mov    r13,QWORD PTR [rbp-0xf0]
  65a648:	4c 8b b5 90 fe ff ff 	mov    r14,QWORD PTR [rbp-0x170]
  65a64f:	4c 8b 7d f0          	mov    r15,QWORD PTR [rbp-0x10]
  65a653:	c4 a1 79 10 7c d9 10 	vmovupd xmm7,XMMWORD PTR [rcx+r11*8+0x10]
  65a65a:	c4 81 79 10 2c df    	vmovupd xmm5,XMMWORD PTR [r15+r11*8]
  65a660:	c4 21 41 5c 44 da 08 	vsubpd xmm8,xmm7,XMMWORD PTR [rdx+r11*8+0x8]
  65a667:	c4 a1 51 5c 74 da f8 	vsubpd xmm6,xmm5,XMMWORD PTR [rdx+r11*8-0x8]
  65a66e:	c4 c1 69 59 c0       	vmulpd xmm0,xmm2,xmm8
  65a673:	c5 e9 59 ee          	vmulpd xmm5,xmm2,xmm6
  65a677:	4d 8d 3c 02          	lea    r15,[r10+rax*1]
  65a67b:	c4 41 7b 10 0f       	vmovsd xmm9,QWORD PTR [r15]
  65a680:	c4 01 31 16 14 37    	vmovhpd xmm10,xmm9,QWORD PTR [r15+r14*1]
  65a686:	4c 8b 7d e0          	mov    r15,QWORD PTR [rbp-0x20]
  65a68a:	c5 a9 59 f3          	vmulpd xmm6,xmm10,xmm3
  65a68e:	4c 03 fe             	add    r15,rsi
  65a691:	c4 41 7b 10 1f       	vmovsd xmm11,QWORD PTR [r15]
  65a696:	c4 01 21 16 2c 2f    	vmovhpd xmm13,xmm11,QWORD PTR [r15+r13*1]
  65a69c:	4c 8b 7d d8          	mov    r15,QWORD PTR [rbp-0x28]
  65a6a0:	4c 03 fe             	add    r15,rsi
  65a6a3:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  65a6a8:	c4 01 19 16 34 2f    	vmovhpd xmm14,xmm12,QWORD PTR [r15+r13*1]
  65a6ae:	4c 8b 7d e8          	mov    r15,QWORD PTR [rbp-0x18]
  65a6b2:	c4 41 11 58 fe       	vaddpd xmm15,xmm13,xmm14
  65a6b7:	c5 81 5c fd          	vsubpd xmm7,xmm15,xmm5
  65a6bb:	c5 49 59 c7          	vmulpd xmm8,xmm6,xmm7
  65a6bf:	c4 01 79 11 04 dc    	vmovupd XMMWORD PTR [r12+r11*8],xmm8
  65a6c5:	4c 03 f8             	add    r15,rax
  65a6c8:	c4 41 7b 10 0f       	vmovsd xmm9,QWORD PTR [r15]
  65a6cd:	4a 8d 04 b0          	lea    rax,[rax+r14*4]
  65a6d1:	c4 01 31 16 14 37    	vmovhpd xmm10,xmm9,QWORD PTR [r15+r14*1]
  65a6d7:	4d 8d 3c 30          	lea    r15,[r8+rsi*1]
  65a6db:	c4 41 7b 10 1f       	vmovsd xmm11,QWORD PTR [r15]
  65a6e0:	c4 01 21 16 2c 2f    	vmovhpd xmm13,xmm11,QWORD PTR [r15+r13*1]
  65a6e6:	4c 8d 3c 37          	lea    r15,[rdi+rsi*1]
  65a6ea:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  65a6ef:	4a 8d 34 ae          	lea    rsi,[rsi+r13*4]
  65a6f3:	c4 01 19 16 34 2f    	vmovhpd xmm14,xmm12,QWORD PTR [r15+r13*1]
  65a6f9:	c4 41 11 58 fe       	vaddpd xmm15,xmm13,xmm14
  65a6fe:	c5 a9 59 eb          	vmulpd xmm5,xmm10,xmm3
  65a702:	c5 81 5c c0          	vsubpd xmm0,xmm15,xmm0
  65a706:	c5 d1 59 c0          	vmulpd xmm0,xmm5,xmm0
  65a70a:	c4 81 79 11 44 d9 10 	vmovupd XMMWORD PTR [r9+r11*8+0x10],xmm0
  65a711:	49 83 c3 04          	add    r11,0x4
  65a715:	4c 3b 9d 78 ff ff ff 	cmp    r11,QWORD PTR [rbp-0x88]
  65a71c:	0f 82 2d ff ff ff    	jb     65a64f <step3d_t_mod_mp_step3d_t_tile_+0x648f>
  65a722:	48 8b b5 e8 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x218]
  65a729:	48 8b bd f0 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x210]
  65a730:	4c 8b 85 f8 fd ff ff 	mov    r8,QWORD PTR [rbp-0x208]
  65a737:	4c 8b ad 00 fe ff ff 	mov    r13,QWORD PTR [rbp-0x200]
  65a73e:	4c 8b a5 70 fd ff ff 	mov    r12,QWORD PTR [rbp-0x290]
  65a745:	4c 8b 9d 10 ff ff ff 	mov    r11,QWORD PTR [rbp-0xf0]
  65a74c:	48 8b 85 f8 fe ff ff 	mov    rax,QWORD PTR [rbp-0x108]
  65a753:	4c 8b 95 90 fe ff ff 	mov    r10,QWORD PTR [rbp-0x170]
  65a75a:	4c 0f af d8          	imul   r11,rax
  65a75e:	4c 0f af d0          	imul   r10,rax
  65a762:	49 3b c4             	cmp    rax,r12
  65a765:	0f 83 bb 00 00 00    	jae    65a826 <step3d_t_mod_mp_step3d_t_tile_+0x6666>
  65a76b:	4c 8b 8d f0 fc ff ff 	mov    r9,QWORD PTR [rbp-0x310]
  65a772:	48 8b 8d 08 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x2f8]
  65a779:	48 8b 95 b0 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x350]
  65a780:	48 8b 85 98 fc ff ff 	mov    rax,QWORD PTR [rbp-0x368]
  65a787:	4d 03 c8             	add    r9,r8
  65a78a:	4c 8b bd 70 fc ff ff 	mov    r15,QWORD PTR [rbp-0x390]
  65a791:	48 03 cf             	add    rcx,rdi
  65a794:	4c 8b b5 68 fc ff ff 	mov    r14,QWORD PTR [rbp-0x398]
  65a79b:	48 03 d7             	add    rdx,rdi
  65a79e:	48 89 bd f0 fd ff ff 	mov    QWORD PTR [rbp-0x210],rdi
  65a7a5:	48 03 c6             	add    rax,rsi
  65a7a8:	4c 89 85 f8 fd ff ff 	mov    QWORD PTR [rbp-0x208],r8
  65a7af:	4c 03 fe             	add    r15,rsi
  65a7b2:	4c 89 ad 00 fe ff ff 	mov    QWORD PTR [rbp-0x200],r13
  65a7b9:	4c 03 f6             	add    r14,rsi
  65a7bc:	48 8b bd f8 fe ff ff 	mov    rdi,QWORD PTR [rbp-0x108]
  65a7c3:	4c 8b 85 10 ff ff ff 	mov    r8,QWORD PTR [rbp-0xf0]
  65a7ca:	4c 8b ad 90 fe ff ff 	mov    r13,QWORD PTR [rbp-0x170]
  65a7d1:	c4 c1 7b 10 2c fe    	vmovsd xmm5,QWORD PTR [r14+rdi*8]
  65a7d7:	c4 c1 7b 10 04 0b    	vmovsd xmm0,QWORD PTR [r11+rcx*1]
  65a7dd:	c4 01 5b 59 0c 0a    	vmulsd xmm9,xmm4,QWORD PTR [r10+r9*1]
  65a7e3:	4d 03 d5             	add    r10,r13
  65a7e6:	c5 d3 5c 74 f8 f8    	vsubsd xmm6,xmm5,QWORD PTR [rax+rdi*8-0x8]
  65a7ec:	c4 c1 7b 58 3c 13    	vaddsd xmm7,xmm0,QWORD PTR [r11+rdx*1]
  65a7f2:	c5 73 59 c6          	vmulsd xmm8,xmm1,xmm6
  65a7f6:	4d 03 d8             	add    r11,r8
  65a7f9:	c4 41 43 5c d0       	vsubsd xmm10,xmm7,xmm8
  65a7fe:	c4 41 33 59 da       	vmulsd xmm11,xmm9,xmm10
  65a803:	c4 41 7b 11 1c ff    	vmovsd QWORD PTR [r15+rdi*8],xmm11
  65a809:	48 ff c7             	inc    rdi
  65a80c:	49 3b fc             	cmp    rdi,r12
  65a80f:	72 c0                	jb     65a7d1 <step3d_t_mod_mp_step3d_t_tile_+0x6611>
  65a811:	48 8b bd f0 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x210]
  65a818:	4c 8b 85 f8 fd ff ff 	mov    r8,QWORD PTR [rbp-0x208]
  65a81f:	4c 8b ad 00 fe ff ff 	mov    r13,QWORD PTR [rbp-0x200]
  65a826:	49 ff c5             	inc    r13
  65a829:	4c 03 85 68 fe ff ff 	add    r8,QWORD PTR [rbp-0x198]
  65a830:	48 03 bd 28 ff ff ff 	add    rdi,QWORD PTR [rbp-0xd8]
  65a837:	48 03 b5 70 ff ff ff 	add    rsi,QWORD PTR [rbp-0x90]
  65a83e:	4c 3b ad 38 fe ff ff 	cmp    r13,QWORD PTR [rbp-0x1c8]
  65a845:	0f 82 00 fd ff ff    	jb     65a54b <step3d_t_mod_mp_step3d_t_tile_+0x638b>
  65a84b:	4c 8b b5 e8 fa ff ff 	mov    r14,QWORD PTR [rbp-0x518]
  65a852:	4c 8b 05 77 09 46 00 	mov    r8,QWORD PTR [rip+0x460977]        # abb1d0 <mod_scalars_mp_ltracersrc_+0x30>
  65a859:	45 33 c9             	xor    r9d,r9d
  65a85c:	4d 85 c0             	test   r8,r8
  65a85f:	7e 5a                	jle    65a8bb <step3d_t_mod_mp_step3d_t_tile_+0x66fb>
  65a861:	4c 89 c2             	mov    rdx,r8
  65a864:	41 ba 01 00 00 00    	mov    r10d,0x1
  65a86a:	48 8b 3d 2f 09 46 00 	mov    rdi,QWORD PTR [rip+0x46092f]        # abb1a0 <mod_scalars_mp_ltracersrc_>
  65a871:	33 c9                	xor    ecx,ecx
  65a873:	48 8b 35 76 09 46 00 	mov    rsi,QWORD PTR [rip+0x460976]        # abb1f0 <mod_scalars_mp_ltracersrc_+0x50>
  65a87a:	48 d1 ea             	shr    rdx,1
  65a87d:	74 23                	je     65a8a2 <step3d_t_mod_mp_step3d_t_tile_+0x66e2>
  65a87f:	4c 89 f0             	mov    rax,r14
  65a882:	48 0f af c6          	imul   rax,rsi
  65a886:	48 03 c7             	add    rax,rdi
  65a889:	48 2b c6             	sub    rax,rsi
  65a88c:	44 0b 0c c8          	or     r9d,DWORD PTR [rax+rcx*8]
  65a890:	44 0b 4c c8 04       	or     r9d,DWORD PTR [rax+rcx*8+0x4]
  65a895:	48 ff c1             	inc    rcx
  65a898:	48 3b ca             	cmp    rcx,rdx
  65a89b:	72 ef                	jb     65a88c <step3d_t_mod_mp_step3d_t_tile_+0x66cc>
  65a89d:	4c 8d 54 09 01       	lea    r10,[rcx+rcx*1+0x1]
  65a8a2:	49 ff ca             	dec    r10
  65a8a5:	4d 3b d0             	cmp    r10,r8
  65a8a8:	73 11                	jae    65a8bb <step3d_t_mod_mp_step3d_t_tile_+0x66fb>
  65a8aa:	4c 89 f0             	mov    rax,r14
  65a8ad:	48 0f af c6          	imul   rax,rsi
  65a8b1:	48 03 f8             	add    rdi,rax
  65a8b4:	48 2b fe             	sub    rdi,rsi
  65a8b7:	46 0b 0c 97          	or     r9d,DWORD PTR [rdi+r10*4]
  65a8bb:	48 8b 05 3e 09 46 00 	mov    rax,QWORD PTR [rip+0x46093e]        # abb200 <mod_scalars_mp_luvsrc_>
  65a8c2:	42 f6 44 b0 fc 01    	test   BYTE PTR [rax+r14*4-0x4],0x1
  65a8c8:	0f 84 fa 03 00 00    	je     65acc8 <step3d_t_mod_mp_step3d_t_tile_+0x6b08>
  65a8ce:	41 f7 c1 01 00 00 00 	test   r9d,0x1
  65a8d5:	0f 84 ed 03 00 00    	je     65acc8 <step3d_t_mod_mp_step3d_t_tile_+0x6b08>
  65a8db:	48 8b 05 5e aa 46 00 	mov    rax,QWORD PTR [rip+0x46aa5e]        # ac5340 <mod_sources_mp_nsrc_>
  65a8e2:	48 c7 85 f0 f8 ff ff 	mov    QWORD PTR [rbp-0x710],0x0
  65a8e9:	00 00 00 00 
  65a8ed:	4a 63 54 b0 fc       	movsxd rdx,DWORD PTR [rax+r14*4-0x4]
  65a8f2:	48 89 95 a8 fa ff ff 	mov    QWORD PTR [rbp-0x558],rdx
  65a8f9:	48 85 d2             	test   rdx,rdx
  65a8fc:	0f 8e c6 03 00 00    	jle    65acc8 <step3d_t_mod_mp_step3d_t_tile_+0x6b08>
  65a902:	48 8b b5 60 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x6a0]
  65a909:	4c 8b 8d 80 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x680]
  65a910:	4c 0f af ce          	imul   r9,rsi
  65a914:	4c 8b 85 70 f6 ff ff 	mov    r8,QWORD PTR [rbp-0x990]
  65a91b:	48 8b 85 c8 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x738]
  65a922:	4c 2b c0             	sub    r8,rax
  65a925:	4c 8b a5 b8 f8 ff ff 	mov    r12,QWORD PTR [rbp-0x748]
  65a92c:	48 8b 8d 90 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x470]
  65a933:	4c 2b c1             	sub    r8,rcx
  65a936:	4c 89 85 58 f5 ff ff 	mov    QWORD PTR [rbp-0xaa8],r8
  65a93d:	4c 8b 05 5c 08 46 00 	mov    r8,QWORD PTR [rip+0x46085c]        # abb1a0 <mod_scalars_mp_ltracersrc_>
  65a944:	48 8b 95 80 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x580]
  65a94b:	4d 8b 9c 24 98 00 00 	mov    r11,QWORD PTR [r12+0x98]
  65a952:	00 
  65a953:	4c 8b ad 50 f9 ff ff 	mov    r13,QWORD PTR [rbp-0x6b0]
  65a95a:	48 8b bd d0 f6 ff ff 	mov    rdi,QWORD PTR [rbp-0x930]
  65a961:	4d 8d 04 90          	lea    r8,[r8+rdx*4]
  65a965:	48 8b 95 a0 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x560]
  65a96c:	48 2b f8             	sub    rdi,rax
  65a96f:	49 0f af d3          	imul   rdx,r11
  65a973:	48 2b f9             	sub    rdi,rcx
  65a976:	4c 03 8d c0 f8 ff ff 	add    r9,QWORD PTR [rbp-0x740]
  65a97d:	48 89 bd 60 f5 ff ff 	mov    QWORD PTR [rbp-0xaa0],rdi
  65a984:	49 8b 7c 24 38       	mov    rdi,QWORD PTR [r12+0x38]
  65a989:	4c 89 8d 78 f5 ff ff 	mov    QWORD PTR [rbp-0xa88],r9
  65a990:	4d 8d 4c 35 00       	lea    r9,[r13+rsi*1+0x0]
  65a995:	4c 8b ad 28 f9 ff ff 	mov    r13,QWORD PTR [rbp-0x6d8]
  65a99c:	48 89 bd 90 f5 ff ff 	mov    QWORD PTR [rbp-0xa70],rdi
  65a9a3:	4c 0f af ef          	imul   r13,rdi
  65a9a7:	4c 89 f7             	mov    rdi,r14
  65a9aa:	48 c1 e7 05          	shl    rdi,0x5
  65a9ae:	49 03 fe             	add    rdi,r14
  65a9b1:	49 8b 4c 24 50       	mov    rcx,QWORD PTR [r12+0x50]
  65a9b6:	48 c1 e7 05          	shl    rdi,0x5
  65a9ba:	49 8b 84 24 80 00 00 	mov    rax,QWORD PTR [r12+0x80]
  65a9c1:	00 
  65a9c2:	4d 8b 54 24 68       	mov    r10,QWORD PTR [r12+0x68]
  65a9c7:	49 03 14 24          	add    rdx,QWORD PTR [r12]
  65a9cb:	48 89 8d e8 f8 ff ff 	mov    QWORD PTR [rbp-0x718],rcx
  65a9d2:	4c 8b a5 20 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6e0]
  65a9d9:	4c 0f af e1          	imul   r12,rcx
  65a9dd:	48 8b 0d fc a8 46 00 	mov    rcx,QWORD PTR [rip+0x46a8fc]        # ac52e0 <mod_sources_mp_sources_>
  65a9e4:	4c 89 8d 68 f5 ff ff 	mov    QWORD PTR [rbp-0xa98],r9
  65a9eb:	4c 89 b5 e8 fa ff ff 	mov    QWORD PTR [rbp-0x518],r14
  65a9f2:	4c 8b bc 39 a8 fc ff 	mov    r15,QWORD PTR [rcx+rdi*1-0x358]
  65a9f9:	ff 
  65a9fa:	48 8b b4 39 b0 fc ff 	mov    rsi,QWORD PTR [rcx+rdi*1-0x350]
  65aa01:	ff 
  65aa02:	49 0f af f7          	imul   rsi,r15
  65aa06:	4d 0f af ca          	imul   r9,r10
  65aa0a:	4c 89 bd b0 fa ff ff 	mov    QWORD PTR [rbp-0x550],r15
  65aa11:	4c 8b bc 39 70 fc ff 	mov    r15,QWORD PTR [rcx+rdi*1-0x390]
  65aa18:	ff 
  65aa19:	4c 2b fe             	sub    r15,rsi
  65aa1c:	4c 89 bd 70 f5 ff ff 	mov    QWORD PTR [rbp-0xa90],r15
  65aa23:	48 8b b4 39 60 fc ff 	mov    rsi,QWORD PTR [rcx+rdi*1-0x3a0]
  65aa2a:	ff 
  65aa2b:	4c 8b bc 39 68 fc ff 	mov    r15,QWORD PTR [rcx+rdi*1-0x398]
  65aa32:	ff 
  65aa33:	4c 0f af fe          	imul   r15,rsi
  65aa37:	48 89 b5 b8 fa ff ff 	mov    QWORD PTR [rbp-0x548],rsi
  65aa3e:	48 8b b4 39 28 fc ff 	mov    rsi,QWORD PTR [rcx+rdi*1-0x3d8]
  65aa45:	ff 
  65aa46:	49 2b f7             	sub    rsi,r15
  65aa49:	48 89 b5 80 f5 ff ff 	mov    QWORD PTR [rbp-0xa80],rsi
  65aa50:	4c 8b bc 39 18 fc ff 	mov    r15,QWORD PTR [rcx+rdi*1-0x3e8]
  65aa57:	ff 
  65aa58:	48 8b b4 39 20 fc ff 	mov    rsi,QWORD PTR [rcx+rdi*1-0x3e0]
  65aa5f:	ff 
  65aa60:	49 0f af f7          	imul   rsi,r15
  65aa64:	4c 89 bd c0 fa ff ff 	mov    QWORD PTR [rbp-0x540],r15
  65aa6b:	4c 8b bc 39 e0 fb ff 	mov    r15,QWORD PTR [rcx+rdi*1-0x420]
  65aa72:	ff 
  65aa73:	4c 2b fe             	sub    r15,rsi
  65aa76:	4c 89 f6             	mov    rsi,r14
  65aa79:	4c 89 bd 88 f5 ff ff 	mov    QWORD PTR [rbp-0xa78],r15
  65aa80:	4c 8b 3d 69 07 46 00 	mov    r15,QWORD PTR [rip+0x460769]        # abb1f0 <mod_scalars_mp_ltracersrc_+0x50>
  65aa87:	49 0f af f7          	imul   rsi,r15
  65aa8b:	4c 03 c6             	add    r8,rsi
  65aa8e:	49 8d 34 03          	lea    rsi,[r11+rax*1]
  65aa92:	4d 2b c7             	sub    r8,r15
  65aa95:	4c 8d 3c 40          	lea    r15,[rax+rax*2]
  65aa99:	48 f7 de             	neg    rsi
  65aa9c:	49 2b c7             	sub    rax,r15
  65aa9f:	4d 03 f9             	add    r15,r9
  65aaa2:	4d 2b ca             	sub    r9,r10
  65aaa5:	48 03 f2             	add    rsi,rdx
  65aaa8:	49 2b d3             	sub    rdx,r11
  65aaab:	49 2b c1             	sub    rax,r9
  65aaae:	4d 03 d4             	add    r10,r12
  65aab1:	48 2b d0             	sub    rdx,rax
  65aab4:	4d 2b fa             	sub    r15,r10
  65aab7:	48 8b 85 e8 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x718]
  65aabe:	49 03 f7             	add    rsi,r15
  65aac1:	4c 8b 8d 90 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xa70]
  65aac8:	49 2b f5             	sub    rsi,r13
  65aacb:	49 f7 d9             	neg    r9
  65aace:	4c 8b 9d f0 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x710]
  65aad5:	4e 8d 14 20          	lea    r10,[rax+r12*1]
  65aad9:	49 f7 da             	neg    r10
  65aadc:	4d 03 e5             	add    r12,r13
  65aadf:	4c 03 d2             	add    r10,rdx
  65aae2:	49 2b d4             	sub    rdx,r12
  65aae5:	4c 8b a5 88 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x678]
  65aaec:	4d 2b d5             	sub    r10,r13
  65aaef:	4c 0f af a5 60 f9 ff 	imul   r12,QWORD PTR [rbp-0x6a0]
  65aaf6:	ff 
  65aaf7:	4c 03 ca             	add    r9,rdx
  65aafa:	4c 89 8d e0 f8 ff ff 	mov    QWORD PTR [rbp-0x720],r9
  65ab01:	4c 89 95 d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],r10
  65ab08:	4c 03 a5 d0 f8 ff ff 	add    r12,QWORD PTR [rbp-0x730]
  65ab0f:	48 8b 95 88 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xa78]
  65ab16:	4c 8b 8d 80 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xa80]
  65ab1d:	4c 8b 95 70 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xa90]
  65ab24:	49 ff c3             	inc    r11
  65ab27:	4c 8b bd b0 fa ff ff 	mov    r15,QWORD PTR [rbp-0x550]
  65ab2e:	4d 0f af fb          	imul   r15,r11
  65ab32:	4c 8b b5 c0 fa ff ff 	mov    r14,QWORD PTR [rbp-0x540]
  65ab39:	4c 8b ad b8 fa ff ff 	mov    r13,QWORD PTR [rbp-0x548]
  65ab40:	4d 0f af f3          	imul   r14,r11
  65ab44:	4d 0f af eb          	imul   r13,r11
  65ab48:	c4 01 7b 2c 3c 3a    	vcvttsd2si r15d,QWORD PTR [r10+r15*1]
  65ab4e:	46 8b 34 32          	mov    r14d,DWORD PTR [rdx+r14*1]
  65ab52:	47 8b 2c 29          	mov    r13d,DWORD PTR [r9+r13*1]
  65ab56:	45 85 ff             	test   r15d,r15d
  65ab59:	0f 85 4b 01 00 00    	jne    65acaa <step3d_t_mod_mp_step3d_t_tile_+0x6aea>
  65ab5f:	44 3b b5 58 ff ff ff 	cmp    r14d,DWORD PTR [rbp-0xa8]
  65ab66:	0f 8c 48 01 00 00    	jl     65acb4 <step3d_t_mod_mp_step3d_t_tile_+0x6af4>
  65ab6c:	44 3b b5 40 fe ff ff 	cmp    r14d,DWORD PTR [rbp-0x1c0]
  65ab73:	0f 8f 3b 01 00 00    	jg     65acb4 <step3d_t_mod_mp_step3d_t_tile_+0x6af4>
  65ab79:	44 3b ad 18 fb ff ff 	cmp    r13d,DWORD PTR [rbp-0x4e8]
  65ab80:	0f 8c 2e 01 00 00    	jl     65acb4 <step3d_t_mod_mp_step3d_t_tile_+0x6af4>
  65ab86:	44 3b ad 10 fb ff ff 	cmp    r13d,DWORD PTR [rbp-0x4f0]
  65ab8d:	0f 8f 21 01 00 00    	jg     65acb4 <step3d_t_mod_mp_step3d_t_tile_+0x6af4>
  65ab93:	4d 63 f6             	movsxd r14,r14d
  65ab96:	4d 63 ed             	movsxd r13,r13d
  65ab99:	4c 89 b5 18 f5 ff ff 	mov    QWORD PTR [rbp-0xae8],r14
  65aba0:	4c 89 ad 20 f5 ff ff 	mov    QWORD PTR [rbp-0xae0],r13
  65aba7:	41 f6 00 01          	test   BYTE PTR [r8],0x1
  65abab:	0f 84 a9 00 00 00    	je     65ac5a <step3d_t_mod_mp_step3d_t_tile_+0x6a9a>
  65abb1:	4d 89 ef             	mov    r15,r13
  65abb4:	48 89 b5 10 f5 ff ff 	mov    QWORD PTR [rbp-0xaf0],rsi
  65abbb:	4c 89 f6             	mov    rsi,r14
  65abbe:	4c 8b b5 88 fe ff ff 	mov    r14,QWORD PTR [rbp-0x178]
  65abc5:	4c 8b ad 70 fe ff ff 	mov    r13,QWORD PTR [rbp-0x190]
  65abcc:	4c 0f af f6          	imul   r14,rsi
  65abd0:	4d 0f af ef          	imul   r13,r15
  65abd4:	4c 0f af bd 70 ff ff 	imul   r15,QWORD PTR [rbp-0x90]
  65abdb:	ff 
  65abdc:	4d 03 f5             	add    r14,r13
  65abdf:	49 8d 34 f7          	lea    rsi,[r15+rsi*8]
  65abe3:	4c 8b ac 39 60 fe ff 	mov    r13,QWORD PTR [rcx+rdi*1-0x1a0]
  65abea:	ff 
  65abeb:	49 f7 dd             	neg    r13
  65abee:	4c 03 ad 68 f5 ff ff 	add    r13,QWORD PTR [rbp-0xa98]
  65abf5:	c4 81 7b 10 04 26    	vmovsd xmm0,QWORD PTR [r14+r12*1]
  65abfb:	4c 8b b5 a0 fa ff ff 	mov    r14,QWORD PTR [rbp-0x560]
  65ac02:	4c 2b b4 39 78 fe ff 	sub    r14,QWORD PTR [rcx+rdi*1-0x188]
  65ac09:	ff 
  65ac0a:	4c 0f af ac 39 58 fe 	imul   r13,QWORD PTR [rcx+rdi*1-0x1a8]
  65ac11:	ff ff 
  65ac13:	4c 0f af b4 39 70 fe 	imul   r14,QWORD PTR [rcx+rdi*1-0x190]
  65ac1a:	ff ff 
  65ac1c:	4c 8b bc 39 48 fe ff 	mov    r15,QWORD PTR [rcx+rdi*1-0x1b8]
  65ac23:	ff 
  65ac24:	49 f7 df             	neg    r15
  65ac27:	4d 03 fb             	add    r15,r11
  65ac2a:	4c 0f af bc 39 40 fe 	imul   r15,QWORD PTR [rcx+rdi*1-0x1c0]
  65ac31:	ff ff 
  65ac33:	4c 03 ac 39 08 fe ff 	add    r13,QWORD PTR [rcx+rdi*1-0x1f8]
  65ac3a:	ff 
  65ac3b:	4d 03 f5             	add    r14,r13
  65ac3e:	4c 8b ad 60 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xaa0]
  65ac45:	c4 81 7b 59 0c 3e    	vmulsd xmm1,xmm0,QWORD PTR [r14+r15*1]
  65ac4b:	c4 a1 7b 11 0c 2e    	vmovsd QWORD PTR [rsi+r13*1],xmm1
  65ac51:	48 8b b5 10 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xaf0]
  65ac58:	eb 5a                	jmp    65acb4 <step3d_t_mod_mp_step3d_t_tile_+0x6af4>
  65ac5a:	4d 89 f5             	mov    r13,r14
  65ac5d:	4c 8b b5 20 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xae0]
  65ac64:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  65ac68:	4c 0f af ad 48 f5 ff 	imul   r13,QWORD PTR [rbp-0xab8]
  65ac6f:	ff 
  65ac70:	4c 0f af b5 40 f5 ff 	imul   r14,QWORD PTR [rbp-0xac0]
  65ac77:	ff 
  65ac78:	4d 03 ee             	add    r13,r14
  65ac7b:	4c 8b bd 28 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xad8]
  65ac82:	c4 81 7b 10 4c 3d 00 	vmovsd xmm1,QWORD PTR [r13+r15*1+0x0]
  65ac89:	c5 f9 2e c8          	vucomisd xmm1,xmm0
  65ac8d:	7a 06                	jp     65ac95 <step3d_t_mod_mp_step3d_t_tile_+0x6ad5>
  65ac8f:	0f 84 22 34 00 00    	je     65e0b7 <step3d_t_mod_mp_step3d_t_tile_+0x9ef7>
  65ac95:	c5 fb 10 05 e3 14 1f 	vmovsd xmm0,QWORD PTR [rip+0x1f14e3]        # 84c180 <__STRLITPACK_0.112+0x70>
  65ac9c:	00 
  65ac9d:	c5 f9 2e c8          	vucomisd xmm1,xmm0
  65aca1:	75 11                	jne    65acb4 <step3d_t_mod_mp_step3d_t_tile_+0x6af4>
  65aca3:	7a 0f                	jp     65acb4 <step3d_t_mod_mp_step3d_t_tile_+0x6af4>
  65aca5:	e9 77 33 00 00       	jmp    65e021 <step3d_t_mod_mp_step3d_t_tile_+0x9e61>
  65acaa:	41 83 ff 01          	cmp    r15d,0x1
  65acae:	0f 84 f7 34 00 00    	je     65e1ab <step3d_t_mod_mp_step3d_t_tile_+0x9feb>
  65acb4:	4c 3b 9d a8 fa ff ff 	cmp    r11,QWORD PTR [rbp-0x558]
  65acbb:	0f 82 63 fe ff ff    	jb     65ab24 <step3d_t_mod_mp_step3d_t_tile_+0x6964>
  65acc1:	4c 8b b5 e8 fa ff ff 	mov    r14,QWORD PTR [rbp-0x518]
  65acc8:	48 8b 05 31 ff 45 00 	mov    rax,QWORD PTR [rip+0x45ff31]        # abac00 <mod_scalars_mp_refinedgrid_>
  65accf:	42 f6 44 b0 fc 01    	test   BYTE PTR [rax+r14*4-0x4],0x1
  65acd5:	0f 84 1c 03 00 00    	je     65aff7 <step3d_t_mod_mp_step3d_t_tile_+0x6e37>
  65acdb:	ba 01 00 00 00       	mov    edx,0x1
  65ace0:	b8 01 00 00 00       	mov    eax,0x1
  65ace5:	4c 63 2d e4 5d 58 00 	movsxd r13,DWORD PTR [rip+0x585de4]        # be0ad0 <mod_nesting_mp_ncontact_>
  65acec:	48 89 d7             	mov    rdi,rdx
  65acef:	4d 85 ed             	test   r13,r13
  65acf2:	0f 8e a4 34 00 00    	jle    65e19c <step3d_t_mod_mp_step3d_t_tile_+0x9fdc>
  65acf8:	48 8b 8d 50 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x6b0]
  65acff:	48 8b b5 60 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x6a0]
  65ad06:	4c 8b b5 80 fa ff ff 	mov    r14,QWORD PTR [rbp-0x580]
  65ad0d:	4c 8b bd 18 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6e8]
  65ad14:	4c 8d 24 31          	lea    r12,[rcx+rsi*1]
  65ad18:	48 8b 0d 21 46 46 00 	mov    rcx,QWORD PTR [rip+0x464621]        # abf340 <mod_nesting_mp_rcontact_+0x40>
  65ad1f:	48 f7 d9             	neg    rcx
  65ad22:	48 03 ca             	add    rcx,rdx
  65ad25:	4c 69 c1 d0 02 00 00 	imul   r8,rcx,0x2d0
  65ad2c:	48 8b 3d cd 45 46 00 	mov    rdi,QWORD PTR [rip+0x4645cd]        # abf300 <mod_nesting_mp_rcontact_>
  65ad33:	4d 8b 0f             	mov    r9,QWORD PTR [r15]
  65ad36:	42 8b 74 07 08       	mov    esi,DWORD PTR [rdi+r8*1+0x8]
  65ad3b:	46 8b 54 07 0c       	mov    r10d,DWORD PTR [rdi+r8*1+0xc]
  65ad40:	45 8b 19             	mov    r11d,DWORD PTR [r9]
  65ad43:	89 b5 84 fb ff ff    	mov    DWORD PTR [rbp-0x47c],esi
  65ad49:	44 89 95 40 ff ff ff 	mov    DWORD PTR [rbp-0xc0],r10d
  65ad50:	45 3b da             	cmp    r11d,r10d
  65ad53:	0f 85 8a 02 00 00    	jne    65afe3 <step3d_t_mod_mp_step3d_t_tile_+0x6e23>
  65ad59:	4d 63 db             	movsxd r11,r11d
  65ad5c:	48 8d 8d 08 f8 ff ff 	lea    rcx,[rbp-0x7f8]
  65ad63:	51                   	push   rcx
  65ad64:	48 8b 0d 15 ee 45 00 	mov    rcx,QWORD PTR [rip+0x45ee15]        # ab9b80 <mod_scalars_mp_dt_+0x40>
  65ad6b:	48 8d b5 c0 f7 ff ff 	lea    rsi,[rbp-0x840]
  65ad72:	48 f7 d9             	neg    rcx
  65ad75:	48 8d bd 78 f7 ff ff 	lea    rdi,[rbp-0x888]
  65ad7c:	4c 69 d2 c0 06 00 00 	imul   r10,rdx,0x6c0
  65ad83:	56                   	push   rsi
  65ad84:	49 03 cb             	add    rcx,r11
  65ad87:	ba 01 00 00 00       	mov    edx,0x1
  65ad8c:	57                   	push   rdi
  65ad8d:	48 89 56 90          	mov    QWORD PTR [rsi-0x70],rdx
  65ad91:	4c 8d 85 30 f7 ff ff 	lea    r8,[rbp-0x8d0]
  65ad98:	48 89 56 b0          	mov    QWORD PTR [rsi-0x50],rdx
  65ad9c:	4c 8d 8d 70 f6 ff ff 	lea    r9,[rbp-0x990]
  65ada3:	48 89 56 88          	mov    QWORD PTR [rsi-0x78],rdx
  65ada7:	48 89 56 d8          	mov    QWORD PTR [rsi-0x28],rdx
  65adab:	48 89 56 f8          	mov    QWORD PTR [rsi-0x8],rdx
  65adaf:	48 89 56 d0          	mov    QWORD PTR [rsi-0x30],rdx
  65adb3:	48 89 56 20          	mov    QWORD PTR [rsi+0x20],rdx
  65adb7:	48 89 56 40          	mov    QWORD PTR [rsi+0x40],rdx
  65adbb:	48 89 56 18          	mov    QWORD PTR [rsi+0x18],rdx
  65adbf:	48 89 56 68          	mov    QWORD PTR [rsi+0x68],rdx
  65adc3:	48 89 95 48 f8 ff ff 	mov    QWORD PTR [rbp-0x7b8],rdx
  65adca:	48 89 56 60          	mov    QWORD PTR [rsi+0x60],rdx
  65adce:	48 8b 15 6b ed 45 00 	mov    rdx,QWORD PTR [rip+0x45ed6b]        # ab9b40 <mod_scalars_mp_dt_>
  65add5:	41 50                	push   r8
  65add7:	89 85 80 fb ff ff    	mov    DWORD PTR [rbp-0x480],eax
  65addd:	33 c0                	xor    eax,eax
  65addf:	48 89 46 80          	mov    QWORD PTR [rsi-0x80],rax
  65ade3:	4c 8d 1c ca          	lea    r11,[rdx+rcx*8]
  65ade7:	48 89 46 c8          	mov    QWORD PTR [rsi-0x38],rax
  65adeb:	b9 08 00 00 00       	mov    ecx,0x8
  65adf0:	48 89 46 10          	mov    QWORD PTR [rsi+0x10],rax
  65adf4:	48 89 46 58          	mov    QWORD PTR [rsi+0x58],rax
  65adf8:	48 8d 85 d0 f6 ff ff 	lea    rax,[rbp-0x930]
  65adff:	41 51                	push   r9
  65ae01:	50                   	push   rax
  65ae02:	41 53                	push   r11
  65ae04:	ff b5 58 fb ff ff    	push   QWORD PTR [rbp-0x4a8]
  65ae0a:	ff b5 60 fb ff ff    	push   QWORD PTR [rbp-0x4a0]
  65ae10:	ff b5 68 fb ff ff    	push   QWORD PTR [rbp-0x498]
  65ae16:	ff b5 70 fb ff ff    	push   QWORD PTR [rbp-0x490]
  65ae1c:	ff b5 50 fb ff ff    	push   QWORD PTR [rbp-0x4b0]
  65ae22:	ff b5 48 fb ff ff    	push   QWORD PTR [rbp-0x4b8]
  65ae28:	ff b5 40 fb ff ff    	push   QWORD PTR [rbp-0x4c0]
  65ae2e:	48 89 48 68          	mov    QWORD PTR [rax+0x68],rcx
  65ae32:	48 8b 05 07 a8 46 00 	mov    rax,QWORD PTR [rip+0x46a807]        # ac5640 <mod_nesting_mp_bry_contact_>
  65ae39:	48 89 4e c0          	mov    QWORD PTR [rsi-0x40],rcx
  65ae3d:	48 89 4e 08          	mov    QWORD PTR [rsi+0x8],rcx
  65ae41:	4a 8b 94 10 a8 fa ff 	mov    rdx,QWORD PTR [rax+r10*1-0x558]
  65ae48:	ff 
  65ae49:	48 89 56 a0          	mov    QWORD PTR [rsi-0x60],rdx
  65ae4d:	48 89 4e 50          	mov    QWORD PTR [rsi+0x50],rcx
  65ae51:	4a 8b 8c 10 30 fe ff 	mov    rcx,QWORD PTR [rax+r10*1-0x1d0]
  65ae58:	ff 
  65ae59:	4a 8b 94 10 48 fe ff 	mov    rdx,QWORD PTR [rax+r10*1-0x1b8]
  65ae60:	ff 
  65ae61:	48 f7 d9             	neg    rcx
  65ae64:	48 f7 da             	neg    rdx
  65ae67:	49 03 cc             	add    rcx,r12
  65ae6a:	49 03 d6             	add    rdx,r14
  65ae6d:	4a 0f af 8c 10 28 fe 	imul   rcx,QWORD PTR [rax+r10*1-0x1d8]
  65ae74:	ff ff 
  65ae76:	48 ff c2             	inc    rdx
  65ae79:	4a 0f af 94 10 40 fe 	imul   rdx,QWORD PTR [rax+r10*1-0x1c0]
  65ae80:	ff ff 
  65ae82:	4a 8b b4 10 b0 fa ff 	mov    rsi,QWORD PTR [rax+r10*1-0x550]
  65ae89:	ff 
  65ae8a:	4a 03 8c 10 d8 fd ff 	add    rcx,QWORD PTR [rax+r10*1-0x228]
  65ae91:	ff 
  65ae92:	48 89 77 f0          	mov    QWORD PTR [rdi-0x10],rsi
  65ae96:	48 03 ca             	add    rcx,rdx
  65ae99:	4e 8b 9c 10 10 fe ff 	mov    r11,QWORD PTR [rax+r10*1-0x1f0]
  65aea0:	ff 
  65aea1:	4a 8b b4 10 58 fc ff 	mov    rsi,QWORD PTR [rax+r10*1-0x3a8]
  65aea8:	ff 
  65aea9:	4e 8b 84 10 d0 fa ff 	mov    r8,QWORD PTR [rax+r10*1-0x530]
  65aeb0:	ff 
  65aeb1:	4a 8b bc 10 e8 fa ff 	mov    rdi,QWORD PTR [rax+r10*1-0x518]
  65aeb8:	ff 
  65aeb9:	49 f7 d8             	neg    r8
  65aebc:	48 f7 df             	neg    rdi
  65aebf:	4d 03 c4             	add    r8,r12
  65aec2:	48 89 8d 78 f7 ff ff 	mov    QWORD PTR [rbp-0x888],rcx
  65aec9:	49 03 fe             	add    rdi,r14
  65aecc:	4c 89 9d b0 f7 ff ff 	mov    QWORD PTR [rbp-0x850],r11
  65aed3:	48 ff c7             	inc    rdi
  65aed6:	48 89 b5 f0 f7 ff ff 	mov    QWORD PTR [rbp-0x810],rsi
  65aedd:	4a 8b 8c 10 80 fc ff 	mov    rcx,QWORD PTR [rax+r10*1-0x380]
  65aee4:	ff 
  65aee5:	4a 8b 94 10 98 fc ff 	mov    rdx,QWORD PTR [rax+r10*1-0x368]
  65aeec:	ff 
  65aeed:	48 f7 d9             	neg    rcx
  65aef0:	4e 8b 5c 10 e0       	mov    r11,QWORD PTR [rax+r10*1-0x20]
  65aef5:	48 f7 da             	neg    rdx
  65aef8:	4a 8b 74 10 f8       	mov    rsi,QWORD PTR [rax+r10*1-0x8]
  65aefd:	49 f7 db             	neg    r11
  65af00:	48 f7 de             	neg    rsi
  65af03:	49 03 cc             	add    rcx,r12
  65af06:	49 03 d6             	add    rdx,r14
  65af09:	4d 03 dc             	add    r11,r12
  65af0c:	4e 0f af 84 10 c8 fa 	imul   r8,QWORD PTR [rax+r10*1-0x538]
  65af13:	ff ff 
  65af15:	4a 0f af 8c 10 78 fc 	imul   rcx,QWORD PTR [rax+r10*1-0x388]
  65af1c:	ff ff 
  65af1e:	4a 0f af bc 10 e0 fa 	imul   rdi,QWORD PTR [rax+r10*1-0x520]
  65af25:	ff ff 
  65af27:	4e 0f af 5c 10 d8    	imul   r11,QWORD PTR [rax+r10*1-0x28]
  65af2d:	49 03 f6             	add    rsi,r14
  65af30:	48 ff c2             	inc    rdx
  65af33:	48 ff c6             	inc    rsi
  65af36:	4a 0f af 94 10 90 fc 	imul   rdx,QWORD PTR [rax+r10*1-0x370]
  65af3d:	ff ff 
  65af3f:	4a 0f af 74 10 f0    	imul   rsi,QWORD PTR [rax+r10*1-0x10]
  65af45:	4e 03 84 10 78 fa ff 	add    r8,QWORD PTR [rax+r10*1-0x588]
  65af4c:	ff 
  65af4d:	4e 8b 8c 10 08 fe ff 	mov    r9,QWORD PTR [rax+r10*1-0x1f8]
  65af54:	ff 
  65af55:	4c 03 c7             	add    r8,rdi
  65af58:	4a 03 8c 10 28 fc ff 	add    rcx,QWORD PTR [rax+r10*1-0x3d8]
  65af5f:	ff 
  65af60:	4a 8b bc 10 60 fc ff 	mov    rdi,QWORD PTR [rax+r10*1-0x3a0]
  65af67:	ff 
  65af68:	48 03 ca             	add    rcx,rdx
  65af6b:	4e 03 5c 10 88       	add    r11,QWORD PTR [rax+r10*1-0x78]
  65af70:	48 8d 95 80 fb ff ff 	lea    rdx,[rbp-0x480]
  65af77:	4c 89 85 30 f7 ff ff 	mov    QWORD PTR [rbp-0x8d0],r8
  65af7e:	4c 03 de             	add    r11,rsi
  65af81:	4c 89 8d a8 f7 ff ff 	mov    QWORD PTR [rbp-0x858],r9
  65af88:	48 8d b5 40 ff ff ff 	lea    rsi,[rbp-0xc0]
  65af8f:	4e 8b 44 10 b8       	mov    r8,QWORD PTR [rax+r10*1-0x48]
  65af94:	4e 8b 4c 10 c0       	mov    r9,QWORD PTR [rax+r10*1-0x40]
  65af99:	48 89 bd f8 f7 ff ff 	mov    QWORD PTR [rbp-0x808],rdi
  65afa0:	48 8d bd 84 fb ff ff 	lea    rdi,[rbp-0x47c]
  65afa7:	48 89 8d c0 f7 ff ff 	mov    QWORD PTR [rbp-0x840],rcx
  65afae:	b9 c8 58 ac 00       	mov    ecx,0xac58c8
  65afb3:	4c 89 85 38 f8 ff ff 	mov    QWORD PTR [rbp-0x7c8],r8
  65afba:	4c 89 8d 40 f8 ff ff 	mov    QWORD PTR [rbp-0x7c0],r9
  65afc1:	4c 8b 42 f8          	mov    r8,QWORD PTR [rdx-0x8]
  65afc5:	4c 8b 4a b8          	mov    r9,QWORD PTR [rdx-0x48]
  65afc9:	4c 89 9d 08 f8 ff ff 	mov    QWORD PTR [rbp-0x7f8],r11
  65afd0:	c5 f8 77             	vzeroupper 
  65afd3:	e8 b8 91 fd ff       	call   634190 <nesting_mod_mp_bry_fluxes_>
  65afd8:	48 83 c4 70          	add    rsp,0x70
  65afdc:	48 63 95 80 fb ff ff 	movsxd rdx,DWORD PTR [rbp-0x480]
  65afe3:	48 ff c2             	inc    rdx
  65afe6:	89 d0                	mov    eax,edx
  65afe8:	49 3b d5             	cmp    rdx,r13
  65afeb:	0f 8e 27 fd ff ff    	jle    65ad18 <step3d_t_mod_mp_step3d_t_tile_+0x6b58>
  65aff1:	89 85 80 fb ff ff    	mov    DWORD PTR [rbp-0x480],eax
  65aff7:	8b 85 10 fb ff ff    	mov    eax,DWORD PTR [rbp-0x4f0]
  65affd:	3b 85 18 fb ff ff    	cmp    eax,DWORD PTR [rbp-0x4e8]
  65b003:	0f 8c 57 31 00 00    	jl     65e160 <step3d_t_mod_mp_step3d_t_tile_+0x9fa0>
  65b009:	48 8b 95 18 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x6e8]
  65b010:	4c 8b 85 b8 f8 ff ff 	mov    r8,QWORD PTR [rbp-0x748]
  65b017:	48 8b 05 22 eb 45 00 	mov    rax,QWORD PTR [rip+0x45eb22]        # ab9b40 <mod_scalars_mp_dt_>
  65b01e:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  65b021:	4d 8d 58 50          	lea    r11,[r8+0x50]
  65b025:	49 8b 3b             	mov    rdi,QWORD PTR [r11]
  65b028:	4d 8b 4b e8          	mov    r9,QWORD PTR [r11-0x18]
  65b02c:	4c 63 11             	movsxd r10,DWORD PTR [rcx]
  65b02f:	48 89 85 68 fd ff ff 	mov    QWORD PTR [rbp-0x298],rax
  65b036:	48 89 8d 20 fb ff ff 	mov    QWORD PTR [rbp-0x4e0],rcx
  65b03d:	4c 89 95 60 fd ff ff 	mov    QWORD PTR [rbp-0x2a0],r10
  65b044:	48 8b b5 70 f6 ff ff 	mov    rsi,QWORD PTR [rbp-0x990]
  65b04b:	48 8b 85 d0 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x930]
  65b052:	49 8b 53 b0          	mov    rdx,QWORD PTR [r11-0x50]
  65b056:	49 8b 4b 48          	mov    rcx,QWORD PTR [r11+0x48]
  65b05a:	4d 8b 5b 30          	mov    r11,QWORD PTR [r11+0x30]
  65b05e:	4d 8b 50 68          	mov    r10,QWORD PTR [r8+0x68]
  65b062:	48 89 bd 00 ff ff ff 	mov    QWORD PTR [rbp-0x100],rdi
  65b069:	4c 89 4d f8          	mov    QWORD PTR [rbp-0x8],r9
  65b06d:	48 83 7d 88 08       	cmp    QWORD PTR [rbp-0x78],0x8
  65b072:	0f 85 d6 02 00 00    	jne    65b34e <step3d_t_mod_mp_step3d_t_tile_+0x718e>
  65b078:	48 83 7d 90 08       	cmp    QWORD PTR [rbp-0x70],0x8
  65b07d:	0f 85 cb 02 00 00    	jne    65b34e <step3d_t_mod_mp_step3d_t_tile_+0x718e>
  65b083:	48 83 7d f8 08       	cmp    QWORD PTR [rbp-0x8],0x8
  65b088:	0f 85 c0 02 00 00    	jne    65b34e <step3d_t_mod_mp_step3d_t_tile_+0x718e>
  65b08e:	4c 8b 8d f0 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x610]
  65b095:	45 33 c0             	xor    r8d,r8d
  65b098:	4c 8b bd e0 fa ff ff 	mov    r15,QWORD PTR [rbp-0x520]
  65b09f:	4c 8b ad 80 fa ff ff 	mov    r13,QWORD PTR [rbp-0x580]
  65b0a6:	4c 0f af e9          	imul   r13,rcx
  65b0aa:	48 8b bd d0 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x530]
  65b0b1:	4e 8d 24 0e          	lea    r12,[rsi+r9*1]
  65b0b5:	4c 89 a5 e8 fc ff ff 	mov    QWORD PTR [rbp-0x318],r12
  65b0bc:	49 03 f7             	add    rsi,r15
  65b0bf:	4c 03 ea             	add    r13,rdx
  65b0c2:	4e 8d 24 38          	lea    r12,[rax+r15*1]
  65b0c6:	4c 8b bd 58 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6a8]
  65b0cd:	4c 8d 34 38          	lea    r14,[rax+rdi*1]
  65b0d1:	4d 0f af fb          	imul   r15,r11
  65b0d5:	4c 89 b5 e0 fc ff ff 	mov    QWORD PTR [rbp-0x320],r14
  65b0dc:	4d 2b fb             	sub    r15,r11
  65b0df:	4c 8b b5 e0 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x620]
  65b0e6:	45 33 c9             	xor    r9d,r9d
  65b0e9:	4c 03 ad 00 fa ff ff 	add    r13,QWORD PTR [rbp-0x600]
  65b0f0:	4c 89 b5 28 fa ff ff 	mov    QWORD PTR [rbp-0x5d8],r14
  65b0f7:	4d 03 ef             	add    r13,r15
  65b0fa:	4c 8b b5 50 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x6b0]
  65b101:	4c 8b bd 60 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6a0]
  65b108:	48 8b bd d8 f9 ff ff 	mov    rdi,QWORD PTR [rbp-0x628]
  65b10f:	48 89 bd 30 fa ff ff 	mov    QWORD PTR [rbp-0x5d0],rdi
  65b116:	48 8b bd 20 f9 ff ff 	mov    rdi,QWORD PTR [rbp-0x6e0]
  65b11d:	4d 03 f7             	add    r14,r15
  65b120:	4d 0f af f2          	imul   r14,r10
  65b124:	48 f7 df             	neg    rdi
  65b127:	4d 2b f2             	sub    r14,r10
  65b12a:	48 03 bd a0 f9 ff ff 	add    rdi,QWORD PTR [rbp-0x660]
  65b131:	4d 03 ee             	add    r13,r14
  65b134:	48 0f af bd 00 ff ff 	imul   rdi,QWORD PTR [rbp-0x100]
  65b13b:	ff 
  65b13c:	48 89 b5 d0 fc ff ff 	mov    QWORD PTR [rbp-0x330],rsi
  65b143:	49 03 fd             	add    rdi,r13
  65b146:	48 89 95 b0 fe ff ff 	mov    QWORD PTR [rbp-0x150],rdx
  65b14d:	48 89 8d b8 fe ff ff 	mov    QWORD PTR [rbp-0x148],rcx
  65b154:	4c 89 a5 d8 fc ff ff 	mov    QWORD PTR [rbp-0x328],r12
  65b15b:	48 89 85 40 fd ff ff 	mov    QWORD PTR [rbp-0x2c0],rax
  65b162:	4c 89 95 88 fa ff ff 	mov    QWORD PTR [rbp-0x578],r10
  65b169:	4c 89 9d 90 fa ff ff 	mov    QWORD PTR [rbp-0x570],r11
  65b170:	48 8b 8d 28 fa ff ff 	mov    rcx,QWORD PTR [rbp-0x5d8]
  65b177:	48 8b 95 30 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x5d0]
  65b17e:	48 8b b5 70 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x290]
  65b185:	8b 85 28 fe ff ff    	mov    eax,DWORD PTR [rbp-0x1d8]
  65b18b:	3b 85 58 ff ff ff    	cmp    eax,DWORD PTR [rbp-0xa8]
  65b191:	0f 8c 48 01 00 00    	jl     65b2df <step3d_t_mod_mp_step3d_t_tile_+0x711f>
  65b197:	48 8b 85 68 fd ff ff 	mov    rax,QWORD PTR [rbp-0x298]
  65b19e:	4c 8b 95 60 fd ff ff 	mov    r10,QWORD PTR [rbp-0x2a0]
  65b1a5:	c4 a1 7b 10 44 d0 f8 	vmovsd xmm0,QWORD PTR [rax+r10*8-0x8]
  65b1ac:	48 83 fe 04          	cmp    rsi,0x4
  65b1b0:	0f 8c 9b 2f 00 00    	jl     65e151 <step3d_t_mod_mp_step3d_t_tile_+0x9f91>
  65b1b6:	4c 8b a5 e8 fc ff ff 	mov    r12,QWORD PTR [rbp-0x318]
  65b1bd:	45 33 ed             	xor    r13d,r13d
  65b1c0:	4c 8b 9d e0 fc ff ff 	mov    r11,QWORD PTR [rbp-0x320]
  65b1c7:	4c 8b 95 d0 fc ff ff 	mov    r10,QWORD PTR [rbp-0x330]
  65b1ce:	4c 8b b5 d8 fc ff ff 	mov    r14,QWORD PTR [rbp-0x328]
  65b1d5:	4d 03 e1             	add    r12,r9
  65b1d8:	48 8b 85 78 ff ff ff 	mov    rax,QWORD PTR [rbp-0x88]
  65b1df:	4d 03 d9             	add    r11,r9
  65b1e2:	c4 e2 7d 19 c8       	vbroadcastsd ymm1,xmm0
  65b1e7:	4d 03 d1             	add    r10,r9
  65b1ea:	48 89 c6             	mov    rsi,rax
  65b1ed:	4f 8d 3c 0e          	lea    r15,[r14+r9*1]
  65b1f1:	49 89 fe             	mov    r14,rdi
  65b1f4:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  65b1f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  65b200:	c4 a1 75 59 14 ea    	vmulpd ymm2,ymm1,YMMWORD PTR [rdx+r13*8]
  65b206:	c4 81 7d 10 5c eb 08 	vmovupd ymm3,YMMWORD PTR [r11+r13*8+0x8]
  65b20d:	c4 81 7d 10 6c ec 08 	vmovupd ymm5,YMMWORD PTR [r12+r13*8+0x8]
  65b214:	c4 41 7d 10 16       	vmovupd ymm10,YMMWORD PTR [r14]
  65b219:	c4 a1 6d 59 34 e9    	vmulpd ymm6,ymm2,YMMWORD PTR [rcx+r13*8]
  65b21f:	c4 81 65 5c 24 ef    	vsubpd ymm4,ymm3,YMMWORD PTR [r15+r13*8]
  65b225:	c4 81 55 5c 3c ea    	vsubpd ymm7,ymm5,YMMWORD PTR [r10+r13*8]
  65b22b:	c5 4d 59 c4          	vmulpd ymm8,ymm6,ymm4
  65b22f:	c5 4d 59 cf          	vmulpd ymm9,ymm6,ymm7
  65b233:	c4 41 3d 58 d9       	vaddpd ymm11,ymm8,ymm9
  65b238:	49 83 c5 04          	add    r13,0x4
  65b23c:	c4 41 2d 5c e3       	vsubpd ymm12,ymm10,ymm11
  65b241:	c4 41 7d 11 26       	vmovupd YMMWORD PTR [r14],ymm12
  65b246:	49 83 c6 20          	add    r14,0x20
  65b24a:	4c 3b ee             	cmp    r13,rsi
  65b24d:	72 b1                	jb     65b200 <step3d_t_mod_mp_step3d_t_tile_+0x7040>
  65b24f:	48 8b b5 70 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x290]
  65b256:	48 3b c6             	cmp    rax,rsi
  65b259:	0f 83 80 00 00 00    	jae    65b2df <step3d_t_mod_mp_step3d_t_tile_+0x711f>
  65b25f:	4c 8b 9d e8 fc ff ff 	mov    r11,QWORD PTR [rbp-0x318]
  65b266:	4c 8b 95 e0 fc ff ff 	mov    r10,QWORD PTR [rbp-0x320]
  65b26d:	4c 8b b5 d0 fc ff ff 	mov    r14,QWORD PTR [rbp-0x330]
  65b274:	4c 8b a5 d8 fc ff ff 	mov    r12,QWORD PTR [rbp-0x328]
  65b27b:	4d 03 d9             	add    r11,r9
  65b27e:	4d 03 d1             	add    r10,r9
  65b281:	4d 03 f1             	add    r14,r9
  65b284:	4f 8d 2c 0c          	lea    r13,[r12+r9*1]
  65b288:	4c 8d 24 c7          	lea    r12,[rdi+rax*8]
  65b28c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  65b290:	c5 fb 59 0c c2       	vmulsd xmm1,xmm0,QWORD PTR [rdx+rax*8]
  65b295:	c4 c1 7b 10 54 c2 08 	vmovsd xmm2,QWORD PTR [r10+rax*8+0x8]
  65b29c:	c4 c1 7b 10 64 c3 08 	vmovsd xmm4,QWORD PTR [r11+rax*8+0x8]
  65b2a3:	c5 f3 59 2c c1       	vmulsd xmm5,xmm1,QWORD PTR [rcx+rax*8]
  65b2a8:	c4 c1 6b 5c 5c c5 00 	vsubsd xmm3,xmm2,QWORD PTR [r13+rax*8+0x0]
  65b2af:	c4 c1 5b 5c 34 c6    	vsubsd xmm6,xmm4,QWORD PTR [r14+rax*8]
  65b2b5:	c5 d3 59 fb          	vmulsd xmm7,xmm5,xmm3
  65b2b9:	c5 53 59 c6          	vmulsd xmm8,xmm5,xmm6
  65b2bd:	c4 41 7b 10 0c 24    	vmovsd xmm9,QWORD PTR [r12]
  65b2c3:	48 ff c0             	inc    rax
  65b2c6:	c4 41 43 58 d0       	vaddsd xmm10,xmm7,xmm8
  65b2cb:	c4 41 33 5c da       	vsubsd xmm11,xmm9,xmm10
  65b2d0:	c4 41 7b 11 1c 24    	vmovsd QWORD PTR [r12],xmm11
  65b2d6:	49 83 c4 08          	add    r12,0x8
  65b2da:	48 3b c6             	cmp    rax,rsi
  65b2dd:	72 b1                	jb     65b290 <step3d_t_mod_mp_step3d_t_tile_+0x70d0>
  65b2df:	49 ff c0             	inc    r8
  65b2e2:	4c 03 8d 70 ff ff ff 	add    r9,QWORD PTR [rbp-0x90]
  65b2e9:	48 03 95 58 fe ff ff 	add    rdx,QWORD PTR [rbp-0x1a8]
  65b2f0:	48 03 8d 60 fe ff ff 	add    rcx,QWORD PTR [rbp-0x1a0]
  65b2f7:	48 03 bd 00 ff ff ff 	add    rdi,QWORD PTR [rbp-0x100]
  65b2fe:	4c 3b 85 68 ff ff ff 	cmp    r8,QWORD PTR [rbp-0x98]
  65b305:	0f 82 7a fe ff ff    	jb     65b185 <step3d_t_mod_mp_step3d_t_tile_+0x6fc5>
  65b30b:	48 8b b5 a0 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x560]
  65b312:	48 8b 85 40 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2c0]
  65b319:	48 8b 95 b0 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x150]
  65b320:	48 8b 8d b8 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x148]
  65b327:	4c 8b 95 88 fa ff ff 	mov    r10,QWORD PTR [rbp-0x578]
  65b32e:	4c 8b 9d 90 fa ff ff 	mov    r11,QWORD PTR [rbp-0x570]
  65b335:	48 89 b5 80 fa ff ff 	mov    QWORD PTR [rbp-0x580],rsi
  65b33c:	48 3b b5 98 fa ff ff 	cmp    rsi,QWORD PTR [rbp-0x568]
  65b343:	0f 82 93 d3 ff ff    	jb     6586dc <step3d_t_mod_mp_step3d_t_tile_+0x451c>
  65b349:	e9 92 03 00 00       	jmp    65b6e0 <step3d_t_mod_mp_step3d_t_tile_+0x7520>
  65b34e:	48 89 85 40 fd ff ff 	mov    QWORD PTR [rbp-0x2c0],rax
  65b355:	48 89 95 b0 fe ff ff 	mov    QWORD PTR [rbp-0x150],rdx
  65b35c:	48 89 8d b8 fe ff ff 	mov    QWORD PTR [rbp-0x148],rcx
  65b363:	4c 89 95 88 fa ff ff 	mov    QWORD PTR [rbp-0x578],r10
  65b36a:	4c 89 9d 90 fa ff ff 	mov    QWORD PTR [rbp-0x570],r11
  65b371:	4c 8b 85 80 fa ff ff 	mov    r8,QWORD PTR [rbp-0x580]
  65b378:	4c 8b 95 58 f9 ff ff 	mov    r10,QWORD PTR [rbp-0x6a8]
  65b37f:	45 33 ed             	xor    r13d,r13d
  65b382:	4d 89 de             	mov    r14,r11
  65b385:	4d 0f af d6          	imul   r10,r14
  65b389:	4c 0f af 85 b8 fe ff 	imul   r8,QWORD PTR [rbp-0x148]
  65b390:	ff 
  65b391:	4c 8b bd 50 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6b0]
  65b398:	4d 2b d6             	sub    r10,r14
  65b39b:	4c 8b b5 60 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x6a0]
  65b3a2:	4c 8b a5 f0 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x610]
  65b3a9:	48 8b bd e0 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x520]
  65b3b0:	48 89 c1             	mov    rcx,rax
  65b3b3:	4d 03 f7             	add    r14,r15
  65b3b6:	4c 8b bd 88 fa ff ff 	mov    r15,QWORD PTR [rbp-0x578]
  65b3bd:	4c 03 e6             	add    r12,rsi
  65b3c0:	4d 0f af f7          	imul   r14,r15
  65b3c4:	4c 8b 8d 28 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x6d8]
  65b3cb:	48 03 f7             	add    rsi,rdi
  65b3ce:	49 f7 d9             	neg    r9
  65b3d1:	4c 8d 1c 39          	lea    r11,[rcx+rdi*1]
  65b3d5:	48 8b bd 20 f9 ff ff 	mov    rdi,QWORD PTR [rbp-0x6e0]
  65b3dc:	4d 2b f7             	sub    r14,r15
  65b3df:	4c 03 8d 98 fb ff ff 	add    r9,QWORD PTR [rbp-0x468]
  65b3e6:	48 f7 df             	neg    rdi
  65b3e9:	48 03 bd a0 f9 ff ff 	add    rdi,QWORD PTR [rbp-0x660]
  65b3f0:	4d 03 d6             	add    r10,r14
  65b3f3:	4c 0f af 4d f8       	imul   r9,QWORD PTR [rbp-0x8]
  65b3f8:	48 0f af bd 00 ff ff 	imul   rdi,QWORD PTR [rbp-0x100]
  65b3ff:	ff 
  65b400:	4c 03 85 b0 fe ff ff 	add    r8,QWORD PTR [rbp-0x150]
  65b407:	48 8b 85 d0 fa ff ff 	mov    rax,QWORD PTR [rbp-0x530]
  65b40e:	4d 03 c2             	add    r8,r10
  65b411:	4d 03 c8             	add    r9,r8
  65b414:	4c 89 ad 38 ff ff ff 	mov    QWORD PTR [rbp-0xc8],r13
  65b41b:	49 03 f9             	add    rdi,r9
  65b41e:	4c 89 9d 18 fd ff ff 	mov    QWORD PTR [rbp-0x2e8],r11
  65b425:	48 8d 14 01          	lea    rdx,[rcx+rax*1]
  65b429:	48 89 95 38 fd ff ff 	mov    QWORD PTR [rbp-0x2c8],rdx
  65b430:	33 c9                	xor    ecx,ecx
  65b432:	48 8b 95 78 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x688]
  65b439:	48 8b 85 f8 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x608]
  65b440:	4c 8b ad 70 fd ff ff 	mov    r13,QWORD PTR [rbp-0x290]
  65b447:	48 89 b5 d0 fc ff ff 	mov    QWORD PTR [rbp-0x330],rsi
  65b44e:	4c 89 a5 20 fd ff ff 	mov    QWORD PTR [rbp-0x2e0],r12
  65b455:	8b b5 28 fe ff ff    	mov    esi,DWORD PTR [rbp-0x1d8]
  65b45b:	3b b5 58 ff ff ff    	cmp    esi,DWORD PTR [rbp-0xa8]
  65b461:	0f 8c 2b 02 00 00    	jl     65b692 <step3d_t_mod_mp_step3d_t_tile_+0x74d2>
  65b467:	4c 8b 85 60 fd ff ff 	mov    r8,QWORD PTR [rbp-0x2a0]
  65b46e:	48 8b b5 68 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x298]
  65b475:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  65b47a:	c4 a1 7b 10 44 c6 f8 	vmovsd xmm0,QWORD PTR [rsi+r8*8-0x8]
  65b481:	0f 84 d1 2c 00 00    	je     65e158 <step3d_t_mod_mp_step3d_t_tile_+0x9f98>
  65b487:	49 83 fd 02          	cmp    r13,0x2
  65b48b:	0f 8c c7 2c 00 00    	jl     65e158 <step3d_t_mod_mp_step3d_t_tile_+0x9f98>
  65b491:	4c 8b a5 88 fb ff ff 	mov    r12,QWORD PTR [rbp-0x478]
  65b498:	45 33 db             	xor    r11d,r11d
  65b49b:	4c 8b 95 20 fd ff ff 	mov    r10,QWORD PTR [rbp-0x2e0]
  65b4a2:	45 33 c0             	xor    r8d,r8d
  65b4a5:	48 8b b5 d0 fc ff ff 	mov    rsi,QWORD PTR [rbp-0x330]
  65b4ac:	4c 8b 75 80          	mov    r14,QWORD PTR [rbp-0x80]
  65b4b0:	4e 8d 3c e5 00 00 00 	lea    r15,[r12*8+0x0]
  65b4b7:	00 
  65b4b8:	49 f7 df             	neg    r15
  65b4bb:	4c 03 d1             	add    r10,rcx
  65b4be:	4c 8b a5 98 fb ff ff 	mov    r12,QWORD PTR [rbp-0x468]
  65b4c5:	4c 8d 0c 0e          	lea    r9,[rsi+rcx*1]
  65b4c9:	48 89 bd 30 fd ff ff 	mov    QWORD PTR [rbp-0x2d0],rdi
  65b4d0:	33 f6                	xor    esi,esi
  65b4d2:	48 89 8d 28 fd ff ff 	mov    QWORD PTR [rbp-0x2d8],rcx
  65b4d9:	48 89 bd 10 fe ff ff 	mov    QWORD PTR [rbp-0x1f0],rdi
  65b4e0:	4f 8d 24 e7          	lea    r12,[r15+r12*8]
  65b4e4:	4c 8b bd 90 fb ff ff 	mov    r15,QWORD PTR [rbp-0x470]
  65b4eb:	4c 03 a5 a0 fb ff ff 	add    r12,QWORD PTR [rbp-0x460]
  65b4f2:	49 f7 df             	neg    r15
  65b4f5:	4d 03 e7             	add    r12,r15
  65b4f8:	48 89 8d 18 fe ff ff 	mov    QWORD PTR [rbp-0x1e8],rcx
  65b4ff:	c5 fb 12 c8          	vmovddup xmm1,xmm0
  65b503:	4c 03 a5 40 fd ff ff 	add    r12,QWORD PTR [rbp-0x2c0]
  65b50a:	48 8b 8d 28 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x2d8]
  65b511:	48 8b bd 30 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2d0]
  65b518:	4c 8b 6d f8          	mov    r13,QWORD PTR [rbp-0x8]
  65b51c:	4c 89 b5 08 fe ff ff 	mov    QWORD PTR [rbp-0x1f8],r14
  65b523:	4c 8b 7d 88          	mov    r15,QWORD PTR [rbp-0x78]
  65b527:	4e 8d 34 02          	lea    r14,[rdx+r8*1]
  65b52b:	c4 c1 7b 10 2e       	vmovsd xmm5,QWORD PTR [r14]
  65b530:	c4 a1 79 10 54 21 08 	vmovupd xmm2,XMMWORD PTR [rcx+r12*1+0x8]
  65b537:	c4 81 79 10 5c da 08 	vmovupd xmm3,XMMWORD PTR [r10+r11*8+0x8]
  65b53e:	c4 21 69 5c 14 21    	vsubpd xmm10,xmm2,XMMWORD PTR [rcx+r12*1]
  65b544:	c4 01 61 5c 24 d9    	vsubpd xmm12,xmm3,XMMWORD PTR [r9+r11*8]
  65b54a:	c4 81 51 16 34 3e    	vmovhpd xmm6,xmm5,QWORD PTR [r14+r15*1]
  65b550:	4f 8d 04 78          	lea    r8,[r8+r15*2]
  65b554:	c5 71 59 c6          	vmulpd xmm8,xmm1,xmm6
  65b558:	4c 8b 7d 90          	mov    r15,QWORD PTR [rbp-0x70]
  65b55c:	4c 8d 34 30          	lea    r14,[rax+rsi*1]
  65b560:	c4 c1 7b 10 3e       	vmovsd xmm7,QWORD PTR [r14]
  65b565:	49 83 c3 02          	add    r11,0x2
  65b569:	c5 fb 10 27          	vmovsd xmm4,QWORD PTR [rdi]
  65b56d:	48 83 c1 10          	add    rcx,0x10
  65b571:	c4 01 41 16 0c 3e    	vmovhpd xmm9,xmm7,QWORD PTR [r14+r15*1]
  65b577:	4a 8d 34 7e          	lea    rsi,[rsi+r15*2]
  65b57b:	c4 41 39 59 d9       	vmulpd xmm11,xmm8,xmm9
  65b580:	c4 41 21 59 ea       	vmulpd xmm13,xmm11,xmm10
  65b585:	c4 41 21 59 f4       	vmulpd xmm14,xmm11,xmm12
  65b58a:	c4 c1 11 58 d6       	vaddpd xmm2,xmm13,xmm14
  65b58f:	c4 21 59 16 3c 2f    	vmovhpd xmm15,xmm4,QWORD PTR [rdi+r13*1]
  65b595:	c5 81 5c da          	vsubpd xmm3,xmm15,xmm2
  65b599:	c5 fb 11 1f          	vmovsd QWORD PTR [rdi],xmm3
  65b59d:	c4 c1 79 17 5c 3d 00 	vmovhpd QWORD PTR [r13+rdi*1+0x0],xmm3
  65b5a4:	4a 8d 3c 6f          	lea    rdi,[rdi+r13*2]
  65b5a8:	4c 3b 5d 80          	cmp    r11,QWORD PTR [rbp-0x80]
  65b5ac:	0f 82 71 ff ff ff    	jb     65b523 <step3d_t_mod_mp_step3d_t_tile_+0x7363>
  65b5b2:	4c 8b b5 08 fe ff ff 	mov    r14,QWORD PTR [rbp-0x1f8]
  65b5b9:	48 8b bd 10 fe ff ff 	mov    rdi,QWORD PTR [rbp-0x1f0]
  65b5c0:	48 8b 8d 18 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x1e8]
  65b5c7:	4c 8b ad 70 fd ff ff 	mov    r13,QWORD PTR [rbp-0x290]
  65b5ce:	4c 8b 4d f8          	mov    r9,QWORD PTR [rbp-0x8]
  65b5d2:	4c 8b 65 90          	mov    r12,QWORD PTR [rbp-0x70]
  65b5d6:	4c 8b 45 88          	mov    r8,QWORD PTR [rbp-0x78]
  65b5da:	4d 0f af ce          	imul   r9,r14
  65b5de:	4d 0f af e6          	imul   r12,r14
  65b5e2:	4d 0f af c6          	imul   r8,r14
  65b5e6:	4d 3b f5             	cmp    r14,r13
  65b5e9:	0f 83 a3 00 00 00    	jae    65b692 <step3d_t_mod_mp_step3d_t_tile_+0x74d2>
  65b5ef:	48 8b b5 20 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x2e0]
  65b5f6:	4c 03 cf             	add    r9,rdi
  65b5f9:	4c 8b 95 38 fd ff ff 	mov    r10,QWORD PTR [rbp-0x2c8]
  65b600:	4c 8b 9d d0 fc ff ff 	mov    r11,QWORD PTR [rbp-0x330]
  65b607:	4c 8b bd 18 fd ff ff 	mov    r15,QWORD PTR [rbp-0x2e8]
  65b60e:	48 03 f1             	add    rsi,rcx
  65b611:	48 89 bd 10 fe ff ff 	mov    QWORD PTR [rbp-0x1f0],rdi
  65b618:	4c 03 d1             	add    r10,rcx
  65b61b:	48 89 8d 18 fe ff ff 	mov    QWORD PTR [rbp-0x1e8],rcx
  65b622:	4c 03 d9             	add    r11,rcx
  65b625:	48 8b 7d 88          	mov    rdi,QWORD PTR [rbp-0x78]
  65b629:	4c 03 f9             	add    r15,rcx
  65b62c:	48 8b 4d 90          	mov    rcx,QWORD PTR [rbp-0x70]
  65b630:	c4 c1 7b 59 0c 10    	vmulsd xmm1,xmm0,QWORD PTR [r8+rdx*1]
  65b636:	4c 03 c7             	add    r8,rdi
  65b639:	c4 81 7b 10 54 f2 08 	vmovsd xmm2,QWORD PTR [r10+r14*8+0x8]
  65b640:	c4 a1 7b 10 64 f6 08 	vmovsd xmm4,QWORD PTR [rsi+r14*8+0x8]
  65b647:	c4 c1 73 59 2c 04    	vmulsd xmm5,xmm1,QWORD PTR [r12+rax*1]
  65b64d:	4c 03 e1             	add    r12,rcx
  65b650:	c4 81 6b 5c 1c f7    	vsubsd xmm3,xmm2,QWORD PTR [r15+r14*8]
  65b656:	c4 81 5b 5c 34 f3    	vsubsd xmm6,xmm4,QWORD PTR [r11+r14*8]
  65b65c:	c5 d3 59 fb          	vmulsd xmm7,xmm5,xmm3
  65b660:	c5 53 59 c6          	vmulsd xmm8,xmm5,xmm6
  65b664:	c4 41 7b 10 09       	vmovsd xmm9,QWORD PTR [r9]
  65b669:	49 ff c6             	inc    r14
  65b66c:	c4 41 43 58 d0       	vaddsd xmm10,xmm7,xmm8
  65b671:	c4 41 33 5c da       	vsubsd xmm11,xmm9,xmm10
  65b676:	c4 41 7b 11 19       	vmovsd QWORD PTR [r9],xmm11
  65b67b:	4c 03 4d f8          	add    r9,QWORD PTR [rbp-0x8]
  65b67f:	4d 3b f5             	cmp    r14,r13
  65b682:	72 ac                	jb     65b630 <step3d_t_mod_mp_step3d_t_tile_+0x7470>
  65b684:	48 8b bd 10 fe ff ff 	mov    rdi,QWORD PTR [rbp-0x1f0]
  65b68b:	48 8b 8d 18 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x1e8]
  65b692:	48 8b b5 38 ff ff ff 	mov    rsi,QWORD PTR [rbp-0xc8]
  65b699:	48 ff c6             	inc    rsi
  65b69c:	48 03 8d 70 ff ff ff 	add    rcx,QWORD PTR [rbp-0x90]
  65b6a3:	48 03 95 58 fe ff ff 	add    rdx,QWORD PTR [rbp-0x1a8]
  65b6aa:	48 03 85 60 fe ff ff 	add    rax,QWORD PTR [rbp-0x1a0]
  65b6b1:	48 03 bd 00 ff ff ff 	add    rdi,QWORD PTR [rbp-0x100]
  65b6b8:	48 89 b5 38 ff ff ff 	mov    QWORD PTR [rbp-0xc8],rsi
  65b6bf:	48 3b b5 68 ff ff ff 	cmp    rsi,QWORD PTR [rbp-0x98]
  65b6c6:	0f 82 89 fd ff ff    	jb     65b455 <step3d_t_mod_mp_step3d_t_tile_+0x7295>
  65b6cc:	4c 8b 85 a0 fa ff ff 	mov    r8,QWORD PTR [rbp-0x560]
  65b6d3:	4c 3b 85 98 fa ff ff 	cmp    r8,QWORD PTR [rbp-0x568]
  65b6da:	0f 82 9f cf ff ff    	jb     65867f <step3d_t_mod_mp_step3d_t_tile_+0x44bf>
  65b6e0:	4c 8b 95 d8 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xa28]
  65b6e7:	4c 8b 9d 60 f9 ff ff 	mov    r11,QWORD PTR [rbp-0x6a0]
  65b6ee:	44 8b a5 18 fb ff ff 	mov    r12d,DWORD PTR [rbp-0x4e8]
  65b6f5:	44 8b ad 10 fb ff ff 	mov    r13d,DWORD PTR [rbp-0x4f0]
  65b6fc:	4c 8b b5 18 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x6e8]
  65b703:	49 ff c3             	inc    r11
  65b706:	4d 3b da             	cmp    r11,r10
  65b709:	0f 82 db ce ff ff    	jb     6585ea <step3d_t_mod_mp_step3d_t_tile_+0x442a>
  65b70f:	bf 70 55 ab 00       	mov    edi,0xab5570
  65b714:	8b b5 f8 f8 ff ff    	mov    esi,DWORD PTR [rbp-0x708]
  65b71a:	c5 f8 77             	vzeroupper 
  65b71d:	e8 7e 25 db ff       	call   40dca0 <__kmpc_for_static_fini@plt>
  65b722:	48 8b 95 d0 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xa30]
  65b729:	48 8b 85 c8 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xa38]
  65b730:	48 83 c0 1f          	add    rax,0x1f
  65b734:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  65b738:	48 03 e0             	add    rsp,rax
  65b73b:	48 8b 95 b8 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xa48]
  65b742:	48 8b 85 c0 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xa40]
  65b749:	48 83 c0 1f          	add    rax,0x1f
  65b74d:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  65b751:	48 03 e0             	add    rsp,rax
  65b754:	48 8b 95 a8 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xa58]
  65b75b:	48 8b 85 b0 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xa50]
  65b762:	48 83 c0 1f          	add    rax,0x1f
  65b766:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  65b76a:	48 03 e0             	add    rsp,rax
  65b76d:	48 8b 95 98 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xa68]
  65b774:	48 8b 85 a0 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xa60]
  65b77b:	48 83 c0 1f          	add    rax,0x1f
  65b77f:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  65b783:	48 03 e0             	add    rsp,rax
  65b786:	4c 8b bd 30 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6d0]
  65b78d:	4c 8b b5 38 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x6c8]
  65b794:	4c 8b ad 40 f9 ff ff 	mov    r13,QWORD PTR [rbp-0x6c0]
  65b79b:	4c 8b a5 48 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6b8]
  65b7a2:	c9                   	leave  
  65b7a3:	48 89 dc             	mov    rsp,rbx
  65b7a6:	5b                   	pop    rbx
  65b7a7:	c3                   	ret    
  65b7a8:	53                   	push   rbx
  65b7a9:	48 89 e3             	mov    rbx,rsp
  65b7ac:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
  65b7b0:	55                   	push   rbp
  65b7b1:	55                   	push   rbp
  65b7b2:	48 8b 6b 08          	mov    rbp,QWORD PTR [rbx+0x8]
  65b7b6:	48 89 6c 24 08       	mov    QWORD PTR [rsp+0x8],rbp
  65b7bb:	48 89 e5             	mov    rbp,rsp
  65b7be:	48 81 ec 70 0b 00 00 	sub    rsp,0xb70
  65b7c5:	4c 89 a5 48 f9 ff ff 	mov    QWORD PTR [rbp-0x6b8],r12
  65b7cc:	48 8b 73 18          	mov    rsi,QWORD PTR [rbx+0x18]
  65b7d0:	4c 8b 63 30          	mov    r12,QWORD PTR [rbx+0x30]
  65b7d4:	48 89 b5 a8 f4 ff ff 	mov    QWORD PTR [rbp-0xb58],rsi
  65b7db:	48 8b 73 20          	mov    rsi,QWORD PTR [rbx+0x20]
  65b7df:	48 8b 43 28          	mov    rax,QWORD PTR [rbx+0x28]
  65b7e3:	4d 63 24 24          	movsxd r12,DWORD PTR [r12]
  65b7e7:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
  65b7ea:	4c 89 a5 b0 f4 ff ff 	mov    QWORD PTR [rbp-0xb50],r12
  65b7f1:	4c 8b 26             	mov    r12,QWORD PTR [rsi]
  65b7f4:	48 63 00             	movsxd rax,DWORD PTR [rax]
  65b7f7:	4c 89 a5 b8 f4 ff ff 	mov    QWORD PTR [rbp-0xb48],r12
  65b7fe:	4c 89 bd 30 f9 ff ff 	mov    QWORD PTR [rbp-0x6d0],r15
  65b805:	4d 63 21             	movsxd r12,DWORD PTR [r9]
  65b808:	4c 8b 5b 10          	mov    r11,QWORD PTR [rbx+0x10]
  65b80c:	4c 8b 53 38          	mov    r10,QWORD PTR [rbx+0x38]
  65b810:	4c 8b 7b 50          	mov    r15,QWORD PTR [rbx+0x50]
  65b814:	48 89 85 c0 f4 ff ff 	mov    QWORD PTR [rbp-0xb40],rax
  65b81b:	48 63 12             	movsxd rdx,DWORD PTR [rdx]
  65b81e:	48 8b 05 9b ee 45 00 	mov    rax,QWORD PTR [rip+0x45ee9b]        # aba6c0 <mod_param_mp_n_>
  65b825:	4c 89 ad 40 f9 ff ff 	mov    QWORD PTR [rbp-0x6c0],r13
  65b82c:	4c 89 a5 a0 f4 ff ff 	mov    QWORD PTR [rbp-0xb60],r12
  65b833:	4c 8b 6b 40          	mov    r13,QWORD PTR [rbx+0x40]
  65b837:	4c 8b 63 58          	mov    r12,QWORD PTR [rbx+0x58]
  65b83b:	4c 89 b5 38 f9 ff ff 	mov    QWORD PTR [rbp-0x6c8],r14
  65b842:	44 8b 37             	mov    r14d,DWORD PTR [rdi]
  65b845:	49 63 3f             	movsxd rdi,DWORD PTR [r15]
  65b848:	4d 63 12             	movsxd r10,DWORD PTR [r10]
  65b84b:	4d 63 1b             	movsxd r11,DWORD PTR [r11]
  65b84e:	4d 63 00             	movsxd r8,DWORD PTR [r8]
  65b851:	48 63 09             	movsxd rcx,DWORD PTR [rcx]
  65b854:	44 89 b5 00 f5 ff ff 	mov    DWORD PTR [rbp-0xb00],r14d
  65b85b:	4c 63 74 90 fc       	movsxd r14,DWORD PTR [rax+rdx*4-0x4]
  65b860:	48 89 bd d0 f4 ff ff 	mov    QWORD PTR [rbp-0xb30],rdi
  65b867:	4d 63 6d 00          	movsxd r13,DWORD PTR [r13+0x0]
  65b86b:	4c 89 95 c8 f4 ff ff 	mov    QWORD PTR [rbp-0xb38],r10
  65b872:	4c 89 9d 98 f4 ff ff 	mov    QWORD PTR [rbp-0xb68],r11
  65b879:	4c 89 85 08 f5 ff ff 	mov    QWORD PTR [rbp-0xaf8],r8
  65b880:	48 89 8d 10 f5 ff ff 	mov    QWORD PTR [rbp-0xaf0],rcx
  65b887:	4d 63 24 24          	movsxd r12,DWORD PTR [r12]
  65b88b:	4d 85 f6             	test   r14,r14
  65b88e:	0f 8e da 03 00 00    	jle    65bc6e <step3d_t_mod_mp_step3d_t_tile_+0x7aae>
  65b894:	4d 89 c7             	mov    r15,r8
  65b897:	48 83 c4 e0          	add    rsp,0xffffffffffffffe0
  65b89b:	4c 2b bd 10 f5 ff ff 	sub    r15,QWORD PTR [rbp-0xaf0]
  65b8a2:	48 8d 85 e8 f4 ff ff 	lea    rax,[rbp-0xb18]
  65b8a9:	49 ff c7             	inc    r15
  65b8ac:	41 ba 01 00 00 00    	mov    r10d,0x1
  65b8b2:	4d 0f af f7          	imul   r14,r15
  65b8b6:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  65b8ba:	bf 24 55 ab 00       	mov    edi,0xab5524
  65b8bf:	4c 89 54 24 08       	mov    QWORD PTR [rsp+0x8],r10
  65b8c4:	ba 22 00 00 00       	mov    edx,0x22
  65b8c9:	4c 89 54 24 10       	mov    QWORD PTR [rsp+0x10],r10
  65b8ce:	48 8d 8d 28 f5 ff ff 	lea    rcx,[rbp-0xad8]
  65b8d5:	8b 70 18             	mov    esi,DWORD PTR [rax+0x18]
  65b8d8:	4c 8d 85 d8 f4 ff ff 	lea    r8,[rbp-0xb28]
  65b8df:	49 ff ce             	dec    r14
  65b8e2:	4c 8d 8d e0 f4 ff ff 	lea    r9,[rbp-0xb20]
  65b8e9:	48 c7 40 f0 00 00 00 	mov    QWORD PTR [rax-0x10],0x0
  65b8f0:	00 
  65b8f1:	c7 40 40 00 00 00 00 	mov    DWORD PTR [rax+0x40],0x0
  65b8f8:	4c 89 70 f8          	mov    QWORD PTR [rax-0x8],r14
  65b8fc:	4c 89 10             	mov    QWORD PTR [rax],r10
  65b8ff:	e8 1c 25 db ff       	call   40de20 <__kmpc_for_static_init_8@plt>
  65b904:	48 83 c4 20          	add    rsp,0x20
  65b908:	48 8b 85 d8 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb28]
  65b90f:	48 89 85 f0 f4 ff ff 	mov    QWORD PTR [rbp-0xb10],rax
  65b916:	49 3b c6             	cmp    rax,r14
  65b919:	48 8b 85 e0 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb20]
  65b920:	0f 8f 35 03 00 00    	jg     65bc5b <step3d_t_mod_mp_step3d_t_tile_+0x7a9b>
  65b926:	48 8b bd c0 f4 ff ff 	mov    rdi,QWORD PTR [rbp-0xb40]
  65b92d:	49 3b c6             	cmp    rax,r14
  65b930:	4c 8b 85 b0 f4 ff ff 	mov    r8,QWORD PTR [rbp-0xb50]
  65b937:	4c 8b 8d c8 f4 ff ff 	mov    r9,QWORD PTR [rbp-0xb38]
  65b93e:	4c 0f 4c f0          	cmovl  r14,rax
  65b942:	4c 2b c7             	sub    r8,rdi
  65b945:	4d 2b e9             	sub    r13,r9
  65b948:	48 8b 95 d0 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xb30]
  65b94f:	49 ff c5             	inc    r13
  65b952:	4c 8b 9d a0 f4 ff ff 	mov    r11,QWORD PTR [rbp-0xb60]
  65b959:	48 8b b5 a8 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb58]
  65b960:	4c 2b b5 f0 f4 ff ff 	sub    r14,QWORD PTR [rbp-0xb10]
  65b967:	4e 8d 04 c5 08 00 00 	lea    r8,[r8*8+0x8]
  65b96e:	00 
  65b96f:	4d 0f af c8          	imul   r9,r8
  65b973:	4d 0f af e8          	imul   r13,r8
  65b977:	c5 fd 10 0d e1 e6 1e 	vmovupd ymm1,YMMWORD PTR [rip+0x1ee6e1]        # 84a060 <var$630.126.450+0xc0>
  65b97e:	00 
  65b97f:	c5 fb 10 05 f9 07 1f 	vmovsd xmm0,QWORD PTR [rip+0x1f07f9]        # 84c180 <__STRLITPACK_0.112+0x70>
  65b986:	00 
  65b987:	49 ff c6             	inc    r14
  65b98a:	4d 8d 0c f9          	lea    r9,[r9+rdi*8]
  65b98e:	48 8b bd b8 f4 ff ff 	mov    rdi,QWORD PTR [rbp-0xb48]
  65b995:	4a 8d 34 de          	lea    rsi,[rsi+r11*8]
  65b999:	49 2b f1             	sub    rsi,r9
  65b99c:	48 c7 85 f8 f4 ff ff 	mov    QWORD PTR [rbp-0xb08],0x0
  65b9a3:	00 00 00 00 
  65b9a7:	49 2b f5             	sub    rsi,r13
  65b9aa:	4c 8b 57 50          	mov    r10,QWORD PTR [rdi+0x50]
  65b9ae:	4c 89 95 38 f5 ff ff 	mov    QWORD PTR [rbp-0xac8],r10
  65b9b5:	4d 0f af e2          	imul   r12,r10
  65b9b9:	49 89 d2             	mov    r10,rdx
  65b9bc:	49 f7 da             	neg    r10
  65b9bf:	4d 03 d3             	add    r10,r11
  65b9c2:	48 8b 4f 38          	mov    rcx,QWORD PTR [rdi+0x38]
  65b9c6:	4c 0f af d1          	imul   r10,rcx
  65b9ca:	48 8b 07             	mov    rax,QWORD PTR [rdi]
  65b9cd:	4c 8b 4f 68          	mov    r9,QWORD PTR [rdi+0x68]
  65b9d1:	49 2b c1             	sub    rax,r9
  65b9d4:	48 89 8d 90 f4 ff ff 	mov    QWORD PTR [rbp-0xb70],rcx
  65b9db:	48 89 c1             	mov    rcx,rax
  65b9de:	49 2b cc             	sub    rcx,r12
  65b9e1:	4c 03 d1             	add    r10,rcx
  65b9e4:	48 c1 e2 03          	shl    rdx,0x3
  65b9e8:	4c 89 95 30 f5 ff ff 	mov    QWORD PTR [rbp-0xad0],r10
  65b9ef:	4e 8d 14 dd 00 00 00 	lea    r10,[r11*8+0x0]
  65b9f6:	00 
  65b9f7:	48 8b bd 98 f4 ff ff 	mov    rdi,QWORD PTR [rbp-0xb68]
  65b9fe:	4c 2b d2             	sub    r10,rdx
  65ba01:	49 2b fb             	sub    rdi,r11
  65ba04:	4c 03 d0             	add    r10,rax
  65ba07:	48 ff c7             	inc    rdi
  65ba0a:	4d 2b d4             	sub    r10,r12
  65ba0d:	41 89 fc             	mov    r12d,edi
  65ba10:	41 83 e4 fc          	and    r12d,0xfffffffc
  65ba14:	4d 63 e4             	movsxd r12,r12d
  65ba17:	48 8b 8d 90 f4 ff ff 	mov    rcx,QWORD PTR [rbp-0xb70]
  65ba1e:	4c 89 95 40 f5 ff ff 	mov    QWORD PTR [rbp-0xac0],r10
  65ba25:	4c 89 a5 48 f5 ff ff 	mov    QWORD PTR [rbp-0xab8],r12
  65ba2c:	4c 89 b5 18 f5 ff ff 	mov    QWORD PTR [rbp-0xae8],r14
  65ba33:	4c 89 bd 20 f5 ff ff 	mov    QWORD PTR [rbp-0xae0],r15
  65ba3a:	4c 8b b5 f0 f4 ff ff 	mov    r14,QWORD PTR [rbp-0xb10]
  65ba41:	4c 8b bd f8 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb08]
  65ba48:	4c 8b 95 10 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xaf0]
  65ba4f:	4b 8d 04 3e          	lea    rax,[r14+r15*1]
  65ba53:	48 99                	cqo    
  65ba55:	48 f7 bd 20 f5 ff ff 	idiv   QWORD PTR [rbp-0xae0]
  65ba5c:	48 ff c0             	inc    rax
  65ba5f:	49 03 d2             	add    rdx,r10
  65ba62:	4c 63 f0             	movsxd r14,eax
  65ba65:	4c 63 fa             	movsxd r15,edx
  65ba68:	4c 3b 95 08 f5 ff ff 	cmp    r10,QWORD PTR [rbp-0xaf8]
  65ba6f:	0f 8f c8 01 00 00    	jg     65bc3d <step3d_t_mod_mp_step3d_t_tile_+0x7a7d>
  65ba75:	48 83 f9 08          	cmp    rcx,0x8
  65ba79:	0f 85 bc 00 00 00    	jne    65bb3b <step3d_t_mod_mp_step3d_t_tile_+0x797b>
  65ba7f:	48 8b 85 a0 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb60]
  65ba86:	48 3b 85 98 f4 ff ff 	cmp    rax,QWORD PTR [rbp-0xb68]
  65ba8d:	0f 8f aa 01 00 00    	jg     65bc3d <step3d_t_mod_mp_step3d_t_tile_+0x7a7d>
  65ba93:	48 83 ff 04          	cmp    rdi,0x4
  65ba97:	0f 8c 73 2a 00 00    	jl     65e510 <step3d_t_mod_mp_step3d_t_tile_+0xa350>
  65ba9d:	4c 89 f2             	mov    rdx,r14
  65baa0:	4c 89 f8             	mov    rax,r15
  65baa3:	49 0f af d5          	imul   rdx,r13
  65baa7:	49 0f af c0          	imul   rax,r8
  65baab:	4d 89 cc             	mov    r12,r9
  65baae:	48 03 d6             	add    rdx,rsi
  65bab1:	4d 0f af e6          	imul   r12,r14
  65bab5:	48 03 d0             	add    rdx,rax
  65bab8:	45 33 d2             	xor    r10d,r10d
  65babb:	48 8b 85 38 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xac8]
  65bac2:	49 0f af c7          	imul   rax,r15
  65bac6:	4c 03 a5 40 f5 ff ff 	add    r12,QWORD PTR [rbp-0xac0]
  65bacd:	4c 8b 9d 48 f5 ff ff 	mov    r11,QWORD PTR [rbp-0xab8]
  65bad4:	49 03 c4             	add    rax,r12
  65bad7:	4d 89 dc             	mov    r12,r11
  65bada:	c4 a1 75 5e 14 d0    	vdivpd ymm2,ymm1,YMMWORD PTR [rax+r10*8]
  65bae0:	c4 a1 7d 11 14 d2    	vmovupd YMMWORD PTR [rdx+r10*8],ymm2
  65bae6:	49 83 c2 04          	add    r10,0x4
  65baea:	4d 3b d4             	cmp    r10,r12
  65baed:	72 eb                	jb     65bada <step3d_t_mod_mp_step3d_t_tile_+0x791a>
  65baef:	4c 3b df             	cmp    r11,rdi
  65baf2:	0f 83 45 01 00 00    	jae    65bc3d <step3d_t_mod_mp_step3d_t_tile_+0x7a7d>
  65baf8:	4c 89 f0             	mov    rax,r14
  65bafb:	4c 89 fa             	mov    rdx,r15
  65bafe:	49 0f af c5          	imul   rax,r13
  65bb02:	4d 0f af f1          	imul   r14,r9
  65bb06:	49 0f af d0          	imul   rdx,r8
  65bb0a:	4c 0f af bd 38 f5 ff 	imul   r15,QWORD PTR [rbp-0xac8]
  65bb11:	ff 
  65bb12:	4c 03 b5 40 f5 ff ff 	add    r14,QWORD PTR [rbp-0xac0]
  65bb19:	48 03 c6             	add    rax,rsi
  65bb1c:	48 03 c2             	add    rax,rdx
  65bb1f:	4d 03 fe             	add    r15,r14
  65bb22:	c4 81 7b 5e 14 df    	vdivsd xmm2,xmm0,QWORD PTR [r15+r11*8]
  65bb28:	c4 a1 7b 11 14 d8    	vmovsd QWORD PTR [rax+r11*8],xmm2
  65bb2e:	49 ff c3             	inc    r11
  65bb31:	4c 3b df             	cmp    r11,rdi
  65bb34:	72 ec                	jb     65bb22 <step3d_t_mod_mp_step3d_t_tile_+0x7962>
  65bb36:	e9 02 01 00 00       	jmp    65bc3d <step3d_t_mod_mp_step3d_t_tile_+0x7a7d>
  65bb3b:	48 8b 85 a0 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb60]
  65bb42:	48 3b 85 98 f4 ff ff 	cmp    rax,QWORD PTR [rbp-0xb68]
  65bb49:	0f 8f ee 00 00 00    	jg     65bc3d <step3d_t_mod_mp_step3d_t_tile_+0x7a7d>
  65bb4f:	48 83 ff 04          	cmp    rdi,0x4
  65bb53:	0f 8c bf 29 00 00    	jl     65e518 <step3d_t_mod_mp_step3d_t_tile_+0xa358>
  65bb59:	4c 89 ca             	mov    rdx,r9
  65bb5c:	4d 89 fb             	mov    r11,r15
  65bb5f:	49 0f af d6          	imul   rdx,r14
  65bb63:	4d 0f af d8          	imul   r11,r8
  65bb67:	4c 8b a5 38 f5 ff ff 	mov    r12,QWORD PTR [rbp-0xac8]
  65bb6e:	45 33 d2             	xor    r10d,r10d
  65bb71:	4d 0f af e7          	imul   r12,r15
  65bb75:	48 03 95 30 f5 ff ff 	add    rdx,QWORD PTR [rbp-0xad0]
  65bb7c:	49 03 d4             	add    rdx,r12
  65bb7f:	4d 89 f4             	mov    r12,r14
  65bb82:	4d 0f af e5          	imul   r12,r13
  65bb86:	4c 03 e6             	add    r12,rsi
  65bb89:	48 8b 85 48 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xab8]
  65bb90:	4d 03 e3             	add    r12,r11
  65bb93:	48 89 bd 90 f4 ff ff 	mov    QWORD PTR [rbp-0xb70],rdi
  65bb9a:	45 33 db             	xor    r11d,r11d
  65bb9d:	4c 89 8d a8 f4 ff ff 	mov    QWORD PTR [rbp-0xb58],r9
  65bba4:	48 89 c7             	mov    rdi,rax
  65bba7:	4e 8d 0c 1a          	lea    r9,[rdx+r11*1]
  65bbab:	c4 c1 7b 10 11       	vmovsd xmm2,QWORD PTR [r9]
  65bbb0:	4d 8d 1c 8b          	lea    r11,[r11+rcx*4]
  65bbb4:	c4 c1 69 16 24 09    	vmovhpd xmm4,xmm2,QWORD PTR [r9+rcx*1]
  65bbba:	4d 8d 0c 49          	lea    r9,[r9+rcx*2]
  65bbbe:	c4 c1 7b 10 19       	vmovsd xmm3,QWORD PTR [r9]
  65bbc3:	c4 c1 61 16 2c 09    	vmovhpd xmm5,xmm3,QWORD PTR [r9+rcx*1]
  65bbc9:	c4 e3 5d 18 f5 01    	vinsertf128 ymm6,ymm4,xmm5,0x1
  65bbcf:	c5 f5 5e fe          	vdivpd ymm7,ymm1,ymm6
  65bbd3:	c4 81 7d 11 3c d4    	vmovupd YMMWORD PTR [r12+r10*8],ymm7
  65bbd9:	49 83 c2 04          	add    r10,0x4
  65bbdd:	4c 3b d7             	cmp    r10,rdi
  65bbe0:	72 c5                	jb     65bba7 <step3d_t_mod_mp_step3d_t_tile_+0x79e7>
  65bbe2:	48 8b bd 90 f4 ff ff 	mov    rdi,QWORD PTR [rbp-0xb70]
  65bbe9:	4c 8b 8d a8 f4 ff ff 	mov    r9,QWORD PTR [rbp-0xb58]
  65bbf0:	49 89 ca             	mov    r10,rcx
  65bbf3:	4c 0f af d0          	imul   r10,rax
  65bbf7:	48 3b c7             	cmp    rax,rdi
  65bbfa:	73 41                	jae    65bc3d <step3d_t_mod_mp_step3d_t_tile_+0x7a7d>
  65bbfc:	4c 89 ca             	mov    rdx,r9
  65bbff:	49 0f af d6          	imul   rdx,r14
  65bc03:	4d 0f af f5          	imul   r14,r13
  65bc07:	4c 8b 9d 38 f5 ff ff 	mov    r11,QWORD PTR [rbp-0xac8]
  65bc0e:	4c 03 f6             	add    r14,rsi
  65bc11:	4d 0f af df          	imul   r11,r15
  65bc15:	4d 0f af f8          	imul   r15,r8
  65bc19:	48 03 95 30 f5 ff ff 	add    rdx,QWORD PTR [rbp-0xad0]
  65bc20:	4d 03 f7             	add    r14,r15
  65bc23:	49 03 d3             	add    rdx,r11
  65bc26:	c4 c1 7b 5e 14 12    	vdivsd xmm2,xmm0,QWORD PTR [r10+rdx*1]
  65bc2c:	c4 c1 7b 11 14 c6    	vmovsd QWORD PTR [r14+rax*8],xmm2
  65bc32:	48 ff c0             	inc    rax
  65bc35:	4c 03 d1             	add    r10,rcx
  65bc38:	48 3b c7             	cmp    rax,rdi
  65bc3b:	72 e9                	jb     65bc26 <step3d_t_mod_mp_step3d_t_tile_+0x7a66>
  65bc3d:	48 8b 85 f8 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb08]
  65bc44:	48 ff c0             	inc    rax
  65bc47:	48 89 85 f8 f4 ff ff 	mov    QWORD PTR [rbp-0xb08],rax
  65bc4e:	48 3b 85 18 f5 ff ff 	cmp    rax,QWORD PTR [rbp-0xae8]
  65bc55:	0f 82 df fd ff ff    	jb     65ba3a <step3d_t_mod_mp_step3d_t_tile_+0x787a>
  65bc5b:	bf 24 55 ab 00       	mov    edi,0xab5524
  65bc60:	8b b5 00 f5 ff ff    	mov    esi,DWORD PTR [rbp-0xb00]
  65bc66:	c5 f8 77             	vzeroupper 
  65bc69:	e8 32 20 db ff       	call   40dca0 <__kmpc_for_static_fini@plt>
  65bc6e:	4c 8b bd 30 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6d0]
  65bc75:	4c 8b b5 38 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x6c8]
  65bc7c:	4c 8b ad 40 f9 ff ff 	mov    r13,QWORD PTR [rbp-0x6c0]
  65bc83:	4c 8b a5 48 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6b8]
  65bc8a:	c9                   	leave  
  65bc8b:	48 89 dc             	mov    rsp,rbx
  65bc8e:	5b                   	pop    rbx
  65bc8f:	c3                   	ret    
  65bc90:	4f 8d 0c 04          	lea    r9,[r12+r8*1]
  65bc94:	e9 6e 9b ff ff       	jmp    655807 <step3d_t_mod_mp_step3d_t_tile_+0x1647>
  65bc99:	45 33 ed             	xor    r13d,r13d
  65bc9c:	e9 5c 9f ff ff       	jmp    655bfd <step3d_t_mod_mp_step3d_t_tile_+0x1a3d>
  65bca1:	48 8b 95 88 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x478]
  65bca8:	4c 8b a5 78 fb ff ff 	mov    r12,QWORD PTR [rbp-0x488]
  65bcaf:	4c 8b ad 80 fb ff ff 	mov    r13,QWORD PTR [rbp-0x480]
  65bcb6:	49 83 fb 02          	cmp    r11,0x2
  65bcba:	0f 8c 31 22 00 00    	jl     65def1 <step3d_t_mod_mp_step3d_t_tile_+0x9d31>
  65bcc0:	4c 8b 95 98 fb ff ff 	mov    r10,QWORD PTR [rbp-0x468]
  65bcc7:	45 33 c0             	xor    r8d,r8d
  65bcca:	4c 0f af d2          	imul   r10,rdx
  65bcce:	48 8b bd e8 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x518]
  65bcd5:	45 33 f6             	xor    r14d,r14d
  65bcd8:	48 8b b5 48 fb ff ff 	mov    rsi,QWORD PTR [rbp-0x4b8]
  65bcdf:	48 8b 8d 50 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x4b0]
  65bce6:	4c 8b bd 10 fb ff ff 	mov    r15,QWORD PTR [rbp-0x4f0]
  65bced:	49 03 fa             	add    rdi,r10
  65bcf0:	48 8b 85 18 fb ff ff 	mov    rax,QWORD PTR [rbp-0x4e8]
  65bcf7:	49 03 f2             	add    rsi,r10
  65bcfa:	48 89 95 88 fb ff ff 	mov    QWORD PTR [rbp-0x478],rdx
  65bd01:	49 03 ca             	add    rcx,r10
  65bd04:	48 8b 95 e0 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x220]
  65bd0b:	4d 03 fa             	add    r15,r10
  65bd0e:	4c 8b 9d a0 fd ff ff 	mov    r11,QWORD PTR [rbp-0x260]
  65bd15:	4e 8d 0c 10          	lea    r9,[rax+r10*1]
  65bd19:	4c 03 95 08 fb ff ff 	add    r10,QWORD PTR [rbp-0x4f8]
  65bd20:	33 c0                	xor    eax,eax
  65bd22:	4c 8b a5 b0 fd ff ff 	mov    r12,QWORD PTR [rbp-0x250]
  65bd29:	4c 8b ad b8 fd ff ff 	mov    r13,QWORD PTR [rbp-0x248]
  65bd30:	4d 03 ee             	add    r13,r14
  65bd33:	c4 41 7b 10 6d 00    	vmovsd xmm13,QWORD PTR [r13+0x0]
  65bd39:	c4 01 11 16 64 1d 00 	vmovhpd xmm12,xmm13,QWORD PTR [r13+r11*1+0x0]
  65bd40:	4d 8d 2c 01          	lea    r13,[r9+rax*1]
  65bd44:	c4 41 7b 10 7d 00    	vmovsd xmm15,QWORD PTR [r13+0x0]
  65bd4a:	c4 01 01 16 74 25 00 	vmovhpd xmm14,xmm15,QWORD PTR [r13+r12*1+0x0]
  65bd51:	4d 8d 2c 07          	lea    r13,[r15+rax*1]
  65bd55:	c4 41 7b 10 6d 00    	vmovsd xmm13,QWORD PTR [r13+0x0]
  65bd5b:	c4 01 11 16 7c 25 00 	vmovhpd xmm15,xmm13,QWORD PTR [r13+r12*1+0x0]
  65bd62:	4d 8d 2c 02          	lea    r13,[r10+rax*1]
  65bd66:	c4 41 51 59 f6       	vmulpd xmm14,xmm5,xmm14
  65bd6b:	c4 41 41 59 ef       	vmulpd xmm13,xmm7,xmm15
  65bd70:	c4 41 09 58 fd       	vaddpd xmm15,xmm14,xmm13
  65bd75:	c4 41 7b 10 75 00    	vmovsd xmm14,QWORD PTR [r13+0x0]
  65bd7b:	c4 01 09 16 74 25 00 	vmovhpd xmm14,xmm14,QWORD PTR [r13+r12*1+0x0]
  65bd82:	c4 41 61 59 ee       	vmulpd xmm13,xmm3,xmm14
  65bd87:	c4 41 01 5c fd       	vsubpd xmm15,xmm15,xmm13
  65bd8c:	c4 41 19 59 e7       	vmulpd xmm12,xmm12,xmm15
  65bd91:	4c 8b ad a8 fd ff ff 	mov    r13,QWORD PTR [rbp-0x258]
  65bd98:	c4 01 79 11 64 c5 08 	vmovupd XMMWORD PTR [r13+r8*8+0x8],xmm12
  65bd9f:	4c 8b ad 98 fd ff ff 	mov    r13,QWORD PTR [rbp-0x268]
  65bda6:	c4 01 79 11 44 c5 00 	vmovupd XMMWORD PTR [r13+r8*8+0x0],xmm8
  65bdad:	4e 8d 2c 32          	lea    r13,[rdx+r14*1]
  65bdb1:	c4 41 7b 10 75 00    	vmovsd xmm14,QWORD PTR [r13+0x0]
  65bdb7:	4f 8d 34 5e          	lea    r14,[r14+r11*2]
  65bdbb:	c4 01 09 16 74 1d 00 	vmovhpd xmm14,xmm14,QWORD PTR [r13+r11*1+0x0]
  65bdc2:	4c 8d 2c 01          	lea    r13,[rcx+rax*1]
  65bdc6:	c4 41 7b 10 65 00    	vmovsd xmm12,QWORD PTR [r13+0x0]
  65bdcc:	c4 01 19 16 6c 25 00 	vmovhpd xmm13,xmm12,QWORD PTR [r13+r12*1+0x0]
  65bdd3:	4c 8d 2c 06          	lea    r13,[rsi+rax*1]
  65bdd7:	c4 41 7b 10 7d 00    	vmovsd xmm15,QWORD PTR [r13+0x0]
  65bddd:	c4 01 01 16 64 25 00 	vmovhpd xmm12,xmm15,QWORD PTR [r13+r12*1+0x0]
  65bde4:	4c 8d 2c 07          	lea    r13,[rdi+rax*1]
  65bde8:	c4 41 51 59 ed       	vmulpd xmm13,xmm5,xmm13
  65bded:	c4 41 41 59 fc       	vmulpd xmm15,xmm7,xmm12
  65bdf2:	c4 41 11 58 e7       	vaddpd xmm12,xmm13,xmm15
  65bdf7:	c4 41 7b 10 6d 00    	vmovsd xmm13,QWORD PTR [r13+0x0]
  65bdfd:	4a 8d 04 60          	lea    rax,[rax+r12*2]
  65be01:	c4 01 11 16 6c 25 00 	vmovhpd xmm13,xmm13,QWORD PTR [r13+r12*1+0x0]
  65be08:	c4 41 61 59 fd       	vmulpd xmm15,xmm3,xmm13
  65be0d:	c4 41 19 5c e7       	vsubpd xmm12,xmm12,xmm15
  65be12:	c4 41 09 59 f4       	vmulpd xmm14,xmm14,xmm12
  65be17:	4c 8b ad d8 fd ff ff 	mov    r13,QWORD PTR [rbp-0x228]
  65be1e:	c4 01 79 11 74 c5 00 	vmovupd XMMWORD PTR [r13+r8*8+0x0],xmm14
  65be25:	4c 8b ad d0 fd ff ff 	mov    r13,QWORD PTR [rbp-0x230]
  65be2c:	c4 01 79 11 44 c5 00 	vmovupd XMMWORD PTR [r13+r8*8+0x0],xmm8
  65be33:	49 83 c0 02          	add    r8,0x2
  65be37:	4c 3b 85 c8 fd ff ff 	cmp    r8,QWORD PTR [rbp-0x238]
  65be3e:	0f 82 e5 fe ff ff    	jb     65bd29 <step3d_t_mod_mp_step3d_t_tile_+0x7b69>
  65be44:	4c 8b 9d 30 fd ff ff 	mov    r11,QWORD PTR [rbp-0x2d0]
  65be4b:	4c 8b 85 c8 fd ff ff 	mov    r8,QWORD PTR [rbp-0x238]
  65be52:	48 8b 95 88 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x478]
  65be59:	4c 8b a5 78 fb ff ff 	mov    r12,QWORD PTR [rbp-0x488]
  65be60:	4c 8b ad 80 fb ff ff 	mov    r13,QWORD PTR [rbp-0x480]
  65be67:	4d 3b c3             	cmp    r8,r11
  65be6a:	0f 83 23 01 00 00    	jae    65bf93 <step3d_t_mod_mp_step3d_t_tile_+0x7dd3>
  65be70:	4c 8b bd 98 fb ff ff 	mov    r15,QWORD PTR [rbp-0x468]
  65be77:	4c 0f af fa          	imul   r15,rdx
  65be7b:	48 8b b5 e8 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x518]
  65be82:	48 8b 8d 48 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x4b8]
  65be89:	48 8b 85 50 fb ff ff 	mov    rax,QWORD PTR [rbp-0x4b0]
  65be90:	4c 8b 95 10 fb ff ff 	mov    r10,QWORD PTR [rbp-0x4f0]
  65be97:	49 03 f7             	add    rsi,r15
  65be9a:	4c 8b 8d 18 fb ff ff 	mov    r9,QWORD PTR [rbp-0x4e8]
  65bea1:	49 03 cf             	add    rcx,r15
  65bea4:	4c 8b b5 b0 fd ff ff 	mov    r14,QWORD PTR [rbp-0x250]
  65beab:	49 03 c7             	add    rax,r15
  65beae:	48 8b bd a0 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x260]
  65beb5:	4d 03 d7             	add    r10,r15
  65beb8:	4c 8b a5 a8 fd ff ff 	mov    r12,QWORD PTR [rbp-0x258]
  65bebf:	4d 03 cf             	add    r9,r15
  65bec2:	4c 03 bd 08 fb ff ff 	add    r15,QWORD PTR [rbp-0x4f8]
  65bec9:	4c 8b ad 98 fd ff ff 	mov    r13,QWORD PTR [rbp-0x268]
  65bed0:	4d 0f af f0          	imul   r14,r8
  65bed4:	49 0f af f8          	imul   rdi,r8
  65bed8:	48 89 95 88 fb ff ff 	mov    QWORD PTR [rbp-0x478],rdx
  65bedf:	4c 89 bd c0 fd ff ff 	mov    QWORD PTR [rbp-0x240],r15
  65bee6:	c4 01 5b 59 24 0e    	vmulsd xmm12,xmm4,QWORD PTR [r14+r9*1]
  65beec:	c4 01 6b 59 2c 16    	vmulsd xmm13,xmm2,QWORD PTR [r14+r10*1]
  65bef2:	4c 8b bd c0 fd ff ff 	mov    r15,QWORD PTR [rbp-0x240]
  65bef9:	c4 41 1b 58 f5       	vaddsd xmm14,xmm12,xmm13
  65befe:	c4 01 73 59 3c 3e    	vmulsd xmm15,xmm1,QWORD PTR [r14+r15*1]
  65bf04:	48 8b 95 b8 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x248]
  65bf0b:	c4 41 0b 5c e7       	vsubsd xmm12,xmm14,xmm15
  65bf10:	c4 41 5b 59 34 06    	vmulsd xmm14,xmm4,QWORD PTR [r14+rax*1]
  65bf16:	c4 41 6b 59 3c 0e    	vmulsd xmm15,xmm2,QWORD PTR [r14+rcx*1]
  65bf1c:	c5 1b 59 2c 17       	vmulsd xmm13,xmm12,QWORD PTR [rdi+rdx*1]
  65bf21:	c4 41 0b 58 e7       	vaddsd xmm12,xmm14,xmm15
  65bf26:	c4 01 7b 11 6c c4 08 	vmovsd QWORD PTR [r12+r8*8+0x8],xmm13
  65bf2d:	33 d2                	xor    edx,edx
  65bf2f:	c4 41 73 59 2c 36    	vmulsd xmm13,xmm1,QWORD PTR [r14+rsi*1]
  65bf35:	4c 8b bd e0 fd ff ff 	mov    r15,QWORD PTR [rbp-0x220]
  65bf3c:	c4 41 1b 5c f5       	vsubsd xmm14,xmm12,xmm13
  65bf41:	c4 21 0b 59 3c 3f    	vmulsd xmm15,xmm14,QWORD PTR [rdi+r15*1]
  65bf47:	4c 8b bd d8 fd ff ff 	mov    r15,QWORD PTR [rbp-0x228]
  65bf4e:	4b 89 54 c5 00       	mov    QWORD PTR [r13+r8*8+0x0],rdx
  65bf53:	48 03 bd a0 fd ff ff 	add    rdi,QWORD PTR [rbp-0x260]
  65bf5a:	c4 01 7b 11 3c c7    	vmovsd QWORD PTR [r15+r8*8],xmm15
  65bf60:	4c 8b bd d0 fd ff ff 	mov    r15,QWORD PTR [rbp-0x230]
  65bf67:	4c 03 b5 b0 fd ff ff 	add    r14,QWORD PTR [rbp-0x250]
  65bf6e:	4b 89 14 c7          	mov    QWORD PTR [r15+r8*8],rdx
  65bf72:	49 ff c0             	inc    r8
  65bf75:	4d 3b c3             	cmp    r8,r11
  65bf78:	0f 82 68 ff ff ff    	jb     65bee6 <step3d_t_mod_mp_step3d_t_tile_+0x7d26>
  65bf7e:	48 8b 95 88 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x478]
  65bf85:	4c 8b a5 78 fb ff ff 	mov    r12,QWORD PTR [rbp-0x488]
  65bf8c:	4c 8b ad 80 fb ff ff 	mov    r13,QWORD PTR [rbp-0x480]
  65bf93:	49 83 fb 04          	cmp    r11,0x4
  65bf97:	0f 8c 4d 1f 00 00    	jl     65deea <step3d_t_mod_mp_step3d_t_tile_+0x9d2a>
  65bf9d:	48 8b bd d0 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x530]
  65bfa4:	48 8b 85 d8 fa ff ff 	mov    rax,QWORD PTR [rbp-0x528]
  65bfab:	4c 8b 85 28 fb ff ff 	mov    r8,QWORD PTR [rbp-0x4d8]
  65bfb2:	4c 8b 8d 30 fb ff ff 	mov    r9,QWORD PTR [rbp-0x4d0]
  65bfb9:	c5 7b 12 64 c7 f8    	vmovddup xmm12,QWORD PTR [rdi+rax*8-0x8]
  65bfbf:	33 c0                	xor    eax,eax
  65bfc1:	48 8b bd 00 fe ff ff 	mov    rdi,QWORD PTR [rbp-0x200]
  65bfc8:	33 c9                	xor    ecx,ecx
  65bfca:	48 89 bd 68 fb ff ff 	mov    QWORD PTR [rbp-0x498],rdi
  65bfd1:	33 f6                	xor    esi,esi
  65bfd3:	48 8b bd 20 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x4e0]
  65bfda:	4c 8b 95 38 fb ff ff 	mov    r10,QWORD PTR [rbp-0x4c8]
  65bfe1:	4c 8b 9d 00 fe ff ff 	mov    r11,QWORD PTR [rbp-0x200]
  65bfe8:	4c 8b a5 c8 fc ff ff 	mov    r12,QWORD PTR [rbp-0x338]
  65bfef:	4c 8b ad c8 fb ff ff 	mov    r13,QWORD PTR [rbp-0x438]
  65bff6:	4c 8b b5 c0 fb ff ff 	mov    r14,QWORD PTR [rbp-0x440]
  65bffd:	0f 1f 00             	nop    DWORD PTR [rax]
  65c000:	4d 8d 3c 0a          	lea    r15,[r10+rcx*1]
  65c004:	c4 41 7b 10 2f       	vmovsd xmm13,QWORD PTR [r15]
  65c009:	c4 01 11 16 34 37    	vmovhpd xmm14,xmm13,QWORD PTR [r15+r14*1]
  65c00f:	4d 8d 3c 31          	lea    r15,[r9+rsi*1]
  65c013:	c4 41 19 59 ee       	vmulpd xmm13,xmm12,xmm14
  65c018:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  65c01d:	c4 01 01 16 34 2f    	vmovhpd xmm14,xmm15,QWORD PTR [r15+r13*1]
  65c023:	4d 8d 3c 08          	lea    r15,[r8+rcx*1]
  65c027:	c4 41 11 59 fe       	vmulpd xmm15,xmm13,xmm14
  65c02c:	c4 41 7b 10 2f       	vmovsd xmm13,QWORD PTR [r15]
  65c031:	4a 8d 0c b1          	lea    rcx,[rcx+r14*4]
  65c035:	c4 01 11 16 34 37    	vmovhpd xmm14,xmm13,QWORD PTR [r15+r14*1]
  65c03b:	4c 8d 3c 37          	lea    r15,[rdi+rsi*1]
  65c03f:	c4 41 19 59 ee       	vmulpd xmm13,xmm12,xmm14
  65c044:	c4 41 79 11 3c c4    	vmovupd XMMWORD PTR [r12+rax*8],xmm15
  65c04a:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  65c04f:	4a 8d 34 ae          	lea    rsi,[rsi+r13*4]
  65c053:	c4 01 01 16 34 2f    	vmovhpd xmm14,xmm15,QWORD PTR [r15+r13*1]
  65c059:	c4 41 11 59 fe       	vmulpd xmm15,xmm13,xmm14
  65c05e:	c4 41 79 11 7c c4 10 	vmovupd XMMWORD PTR [r12+rax*8+0x10],xmm15
  65c065:	48 83 c0 04          	add    rax,0x4
  65c069:	49 3b c3             	cmp    rax,r11
  65c06c:	72 92                	jb     65c000 <step3d_t_mod_mp_step3d_t_tile_+0x7e40>
  65c06e:	48 8b bd 68 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x498]
  65c075:	4c 8b a5 78 fb ff ff 	mov    r12,QWORD PTR [rbp-0x488]
  65c07c:	4c 8b ad 80 fb ff ff 	mov    r13,QWORD PTR [rbp-0x480]
  65c083:	4c 8b 9d 30 fd ff ff 	mov    r11,QWORD PTR [rbp-0x2d0]
  65c08a:	48 8b 85 c8 fb ff ff 	mov    rax,QWORD PTR [rbp-0x438]
  65c091:	48 8b 8d c0 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x440]
  65c098:	48 0f af c7          	imul   rax,rdi
  65c09c:	48 0f af cf          	imul   rcx,rdi
  65c0a0:	49 3b fb             	cmp    rdi,r11
  65c0a3:	73 57                	jae    65c0fc <step3d_t_mod_mp_step3d_t_tile_+0x7f3c>
  65c0a5:	48 8b b5 d0 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x530]
  65c0ac:	4c 8b 85 d8 fa ff ff 	mov    r8,QWORD PTR [rbp-0x528]
  65c0b3:	4c 8b 8d c8 fc ff ff 	mov    r9,QWORD PTR [rbp-0x338]
  65c0ba:	4c 8b 95 c8 fb ff ff 	mov    r10,QWORD PTR [rbp-0x438]
  65c0c1:	c4 21 7b 10 64 c6 f8 	vmovsd xmm12,QWORD PTR [rsi+r8*8-0x8]
  65c0c8:	48 8b b5 30 fb ff ff 	mov    rsi,QWORD PTR [rbp-0x4d0]
  65c0cf:	4c 8b 85 38 fb ff ff 	mov    r8,QWORD PTR [rbp-0x4c8]
  65c0d6:	4c 8b b5 c0 fb ff ff 	mov    r14,QWORD PTR [rbp-0x440]
  65c0dd:	c4 21 1b 59 2c 01    	vmulsd xmm13,xmm12,QWORD PTR [rcx+r8*1]
  65c0e3:	49 03 ce             	add    rcx,r14
  65c0e6:	c5 13 59 34 30       	vmulsd xmm14,xmm13,QWORD PTR [rax+rsi*1]
  65c0eb:	49 03 c2             	add    rax,r10
  65c0ee:	c4 41 7b 11 34 f9    	vmovsd QWORD PTR [r9+rdi*8],xmm14
  65c0f4:	48 ff c7             	inc    rdi
  65c0f7:	49 3b fb             	cmp    rdi,r11
  65c0fa:	72 e1                	jb     65c0dd <step3d_t_mod_mp_step3d_t_tile_+0x7f1d>
  65c0fc:	33 c9                	xor    ecx,ecx
  65c0fe:	48 83 bd b0 fb ff ff 	cmp    QWORD PTR [rbp-0x450],0x0
  65c105:	00 
  65c106:	7e 32                	jle    65c13a <step3d_t_mod_mp_step3d_t_tile_+0x7f7a>
  65c108:	be 01 00 00 00       	mov    esi,0x1
  65c10d:	33 c0                	xor    eax,eax
  65c10f:	4d 85 ed             	test   r13,r13
  65c112:	74 16                	je     65c12a <step3d_t_mod_mp_step3d_t_tile_+0x7f6a>
  65c114:	41 0b 0c c4          	or     ecx,DWORD PTR [r12+rax*8]
  65c118:	41 0b 4c c4 04       	or     ecx,DWORD PTR [r12+rax*8+0x4]
  65c11d:	48 ff c0             	inc    rax
  65c120:	49 3b c5             	cmp    rax,r13
  65c123:	72 ef                	jb     65c114 <step3d_t_mod_mp_step3d_t_tile_+0x7f54>
  65c125:	48 8d 74 00 01       	lea    rsi,[rax+rax*1+0x1]
  65c12a:	48 ff ce             	dec    rsi
  65c12d:	48 3b b5 b0 fb ff ff 	cmp    rsi,QWORD PTR [rbp-0x450]
  65c134:	73 04                	jae    65c13a <step3d_t_mod_mp_step3d_t_tile_+0x7f7a>
  65c136:	41 0b 0c b4          	or     ecx,DWORD PTR [r12+rsi*4]
  65c13a:	83 bd d8 fb ff ff 00 	cmp    DWORD PTR [rbp-0x428],0x0
  65c141:	0f 84 ec 04 00 00    	je     65c633 <step3d_t_mod_mp_step3d_t_tile_+0x8473>
  65c147:	f6 c1 01             	test   cl,0x1
  65c14a:	0f 84 e3 04 00 00    	je     65c633 <step3d_t_mod_mp_step3d_t_tile_+0x8473>
  65c150:	48 8b bd 98 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x768]
  65c157:	45 33 c0             	xor    r8d,r8d
  65c15a:	48 8b 85 d8 fa ff ff 	mov    rax,QWORD PTR [rbp-0x528]
  65c161:	4c 8d 72 01          	lea    r14,[rdx+0x1]
  65c165:	48 63 7c 87 fc       	movsxd rdi,DWORD PTR [rdi+rax*4-0x4]
  65c16a:	48 85 ff             	test   rdi,rdi
  65c16d:	0f 8e c4 04 00 00    	jle    65c637 <step3d_t_mod_mp_step3d_t_tile_+0x8477>
  65c173:	48 8b 8d 78 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x788]
  65c17a:	45 33 c9             	xor    r9d,r9d
  65c17d:	4c 8b bd 90 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x770]
  65c184:	48 89 95 88 fb ff ff 	mov    QWORD PTR [rbp-0x478],rdx
  65c18b:	4c 89 b5 a0 fa ff ff 	mov    QWORD PTR [rbp-0x560],r14
  65c192:	49 8b 84 0f 60 fc ff 	mov    rax,QWORD PTR [r15+rcx*1-0x3a0]
  65c199:	ff 
  65c19a:	4d 8b 94 0f 68 fc ff 	mov    r10,QWORD PTR [r15+rcx*1-0x398]
  65c1a1:	ff 
  65c1a2:	4c 0f af d0          	imul   r10,rax
  65c1a6:	48 89 85 88 f8 ff ff 	mov    QWORD PTR [rbp-0x778],rax
  65c1ad:	49 8b 84 0f 28 fc ff 	mov    rax,QWORD PTR [r15+rcx*1-0x3d8]
  65c1b4:	ff 
  65c1b5:	49 8b b4 0f 20 fc ff 	mov    rsi,QWORD PTR [r15+rcx*1-0x3e0]
  65c1bc:	ff 
  65c1bd:	49 2b c2             	sub    rax,r10
  65c1c0:	4d 8b 94 0f 18 fc ff 	mov    r10,QWORD PTR [r15+rcx*1-0x3e8]
  65c1c7:	ff 
  65c1c8:	49 0f af f2          	imul   rsi,r10
  65c1cc:	48 89 85 80 f8 ff ff 	mov    QWORD PTR [rbp-0x780],rax
  65c1d3:	33 c0                	xor    eax,eax
  65c1d5:	49 8b 8c 0f e0 fb ff 	mov    rcx,QWORD PTR [r15+rcx*1-0x420]
  65c1dc:	ff 
  65c1dd:	48 2b ce             	sub    rcx,rsi
  65c1e0:	41 8b 34 94          	mov    esi,DWORD PTR [r12+rdx*4]
  65c1e4:	4c 8b 9d 80 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x780]
  65c1eb:	83 e6 01             	and    esi,0x1
  65c1ee:	4c 8b a5 88 f8 ff ff 	mov    r12,QWORD PTR [rbp-0x778]
  65c1f5:	49 03 c2             	add    rax,r10
  65c1f8:	4d 03 cc             	add    r9,r12
  65c1fb:	4d 8d 68 01          	lea    r13,[r8+0x1]
  65c1ff:	44 8b 34 08          	mov    r14d,DWORD PTR [rax+rcx*1]
  65c203:	43 8b 14 19          	mov    edx,DWORD PTR [r9+r11*1]
  65c207:	85 f6                	test   esi,esi
  65c209:	0f 84 f3 03 00 00    	je     65c602 <step3d_t_mod_mp_step3d_t_tile_+0x8442>
  65c20f:	44 3b b5 e8 f9 ff ff 	cmp    r14d,DWORD PTR [rbp-0x618]
  65c216:	0f 8c e6 03 00 00    	jl     65c602 <step3d_t_mod_mp_step3d_t_tile_+0x8442>
  65c21c:	44 3b b5 a0 f8 ff ff 	cmp    r14d,DWORD PTR [rbp-0x760]
  65c223:	0f 8f d9 03 00 00    	jg     65c602 <step3d_t_mod_mp_step3d_t_tile_+0x8442>
  65c229:	3b 95 70 f8 ff ff    	cmp    edx,DWORD PTR [rbp-0x790]
  65c22f:	0f 85 cd 03 00 00    	jne    65c602 <step3d_t_mod_mp_step3d_t_tile_+0x8442>
  65c235:	4c 8b bd 78 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x788]
  65c23c:	48 8b 95 90 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x770]
  65c243:	4a 8b 94 3a e0 fd ff 	mov    rdx,QWORD PTR [rdx+r15*1-0x220]
  65c24a:	ff 
  65c24b:	48 89 95 a8 f6 ff ff 	mov    QWORD PTR [rbp-0x958],rdx
  65c252:	48 83 fa 08          	cmp    rdx,0x8
  65c256:	0f 85 bb 01 00 00    	jne    65c417 <step3d_t_mod_mp_step3d_t_tile_+0x8257>
  65c25c:	48 8b 95 90 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x770]
  65c263:	4a 83 bc 3a 40 fe ff 	cmp    QWORD PTR [rdx+r15*1-0x1c0],0x8
  65c26a:	ff 08 
  65c26c:	0f 85 a5 01 00 00    	jne    65c417 <step3d_t_mod_mp_step3d_t_tile_+0x8257>
  65c272:	48 c7 85 a0 f6 ff ff 	mov    QWORD PTR [rbp-0x960],0x0
  65c279:	00 00 00 00 
  65c27d:	48 83 bd 20 f7 ff ff 	cmp    QWORD PTR [rbp-0x8e0],0x0
  65c284:	00 
  65c285:	0f 8e 77 03 00 00    	jle    65c602 <step3d_t_mod_mp_step3d_t_tile_+0x8442>
  65c28b:	4d 63 f6             	movsxd r14,r14d
  65c28e:	48 89 85 80 f6 ff ff 	mov    QWORD PTR [rbp-0x980],rax
  65c295:	48 8b 85 08 f7 ff ff 	mov    rax,QWORD PTR [rbp-0x8f8]
  65c29c:	4c 89 ad 10 f7 ff ff 	mov    QWORD PTR [rbp-0x8f0],r13
  65c2a3:	48 89 8d 78 f6 ff ff 	mov    QWORD PTR [rbp-0x988],rcx
  65c2aa:	48 8b 95 88 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x478]
  65c2b1:	4e 8d 6c f0 08       	lea    r13,[rax+r14*8+0x8]
  65c2b6:	4c 89 ad b0 f6 ff ff 	mov    QWORD PTR [rbp-0x950],r13
  65c2bd:	4d 89 fe             	mov    r14,r15
  65c2c0:	4c 8b ad 90 f8 ff ff 	mov    r13,QWORD PTR [rbp-0x770]
  65c2c7:	89 b5 70 f6 ff ff    	mov    DWORD PTR [rbp-0x990],esi
  65c2cd:	33 f6                	xor    esi,esi
  65c2cf:	48 89 b5 d0 f6 ff ff 	mov    QWORD PTR [rbp-0x930],rsi
  65c2d6:	4b 8b 84 35 58 fe ff 	mov    rax,QWORD PTR [r13+r14*1-0x1a8]
  65c2dd:	ff 
  65c2de:	4f 8b bc 35 60 fe ff 	mov    r15,QWORD PTR [r13+r14*1-0x1a0]
  65c2e5:	ff 
  65c2e6:	4c 0f af f8          	imul   r15,rax
  65c2ea:	4b 8b 8c 35 48 fe ff 	mov    rcx,QWORD PTR [r13+r14*1-0x1b8]
  65c2f1:	ff 
  65c2f2:	48 89 b5 d8 f6 ff ff 	mov    QWORD PTR [rbp-0x928],rsi
  65c2f9:	4b 8b b4 35 00 fe ff 	mov    rsi,QWORD PTR [r13+r14*1-0x200]
  65c300:	ff 
  65c301:	48 89 85 e8 f6 ff ff 	mov    QWORD PTR [rbp-0x918],rax
  65c308:	4d 8d 3c cf          	lea    r15,[r15+rcx*8]
  65c30c:	4b 8b 8c 35 78 fe ff 	mov    rcx,QWORD PTR [r13+r14*1-0x188]
  65c313:	ff 
  65c314:	48 f7 d9             	neg    rcx
  65c317:	4c 89 95 88 f6 ff ff 	mov    QWORD PTR [rbp-0x978],r10
  65c31e:	4c 89 8d 90 f6 ff ff 	mov    QWORD PTR [rbp-0x970],r9
  65c325:	48 89 bd 98 f6 ff ff 	mov    QWORD PTR [rbp-0x968],rdi
  65c32c:	4c 8b 8d d0 f6 ff ff 	mov    r9,QWORD PTR [rbp-0x930]
  65c333:	48 8d 4c 11 01       	lea    rcx,[rcx+rdx*1+0x1]
  65c338:	4b 8b 94 35 08 fe ff 	mov    rdx,QWORD PTR [r13+r14*1-0x1f8]
  65c33f:	ff 
  65c340:	49 2b d7             	sub    rdx,r15
  65c343:	4f 8b bc 35 f8 fd ff 	mov    r15,QWORD PTR [r13+r14*1-0x208]
  65c34a:	ff 
  65c34b:	4b 0f af 8c 35 70 fe 	imul   rcx,QWORD PTR [r13+r14*1-0x190]
  65c352:	ff ff 
  65c354:	49 0f af f7          	imul   rsi,r15
  65c358:	4a 8d 14 c2          	lea    rdx,[rdx+r8*8]
  65c35c:	48 03 ca             	add    rcx,rdx
  65c35f:	4b 8b 94 35 e8 fd ff 	mov    rdx,QWORD PTR [r13+r14*1-0x218]
  65c366:	ff 
  65c367:	4f 8b b4 35 a8 fd ff 	mov    r14,QWORD PTR [r13+r14*1-0x258]
  65c36e:	ff 
  65c36f:	48 c1 e2 03          	shl    rdx,0x3
  65c373:	4c 2b f6             	sub    r14,rsi
  65c376:	4c 2b f2             	sub    r14,rdx
  65c379:	48 89 8d 00 f7 ff ff 	mov    QWORD PTR [rbp-0x900],rcx
  65c380:	4c 8b ad 10 f7 ff ff 	mov    r13,QWORD PTR [rbp-0x8f0]
  65c387:	48 8b b5 d8 f6 ff ff 	mov    rsi,QWORD PTR [rbp-0x928]
  65c38e:	4b 8d 14 c6          	lea    rdx,[r14+r8*8]
  65c392:	4c 89 ff             	mov    rdi,r15
  65c395:	4c 8d 34 41          	lea    r14,[rcx+rax*2]
  65c399:	4e 8d 04 7a          	lea    r8,[rdx+r15*2]
  65c39d:	48 8b 85 00 f7 ff ff 	mov    rax,QWORD PTR [rbp-0x900]
  65c3a4:	48 8b 8d b0 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x950]
  65c3ab:	4c 8b 95 e8 f6 ff ff 	mov    r10,QWORD PTR [rbp-0x918]
  65c3b2:	4c 8b 9d a0 f6 ff ff 	mov    r11,QWORD PTR [rbp-0x960]
  65c3b9:	4c 8b a5 20 f7 ff ff 	mov    r12,QWORD PTR [rbp-0x8e0]
  65c3c0:	4c 8b bd 70 fd ff ff 	mov    r15,QWORD PTR [rbp-0x290]
  65c3c7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  65c3ce:	00 00 
  65c3d0:	48 03 f7             	add    rsi,rdi
  65c3d3:	4d 03 ca             	add    r9,r10
  65c3d6:	c4 41 7b 10 68 08    	vmovsd xmm13,QWORD PTR [r8+0x8]
  65c3dc:	49 ff c3             	inc    r11
  65c3df:	c4 41 13 59 7e 08    	vmulsd xmm15,xmm13,QWORD PTR [r14+0x8]
  65c3e5:	4c 03 c7             	add    r8,rdi
  65c3e8:	c5 7b 10 64 16 08    	vmovsd xmm12,QWORD PTR [rsi+rdx*1+0x8]
  65c3ee:	4d 03 f2             	add    r14,r10
  65c3f1:	c4 41 1b 59 74 01 08 	vmulsd xmm14,xmm12,QWORD PTR [r9+rax*1+0x8]
  65c3f8:	c4 41 0b 58 e7       	vaddsd xmm12,xmm14,xmm15
  65c3fd:	c4 41 5b 59 ec       	vmulsd xmm13,xmm4,xmm12
  65c402:	c5 13 58 31          	vaddsd xmm14,xmm13,QWORD PTR [rcx]
  65c406:	c5 7b 11 31          	vmovsd QWORD PTR [rcx],xmm14
  65c40a:	49 03 cf             	add    rcx,r15
  65c40d:	4d 3b dc             	cmp    r11,r12
  65c410:	72 be                	jb     65c3d0 <step3d_t_mod_mp_step3d_t_tile_+0x8210>
  65c412:	e9 b4 01 00 00       	jmp    65c5cb <step3d_t_mod_mp_step3d_t_tile_+0x840b>
  65c417:	48 c7 85 18 f7 ff ff 	mov    QWORD PTR [rbp-0x8e8],0x0
  65c41e:	00 00 00 00 
  65c422:	48 83 bd 20 f7 ff ff 	cmp    QWORD PTR [rbp-0x8e0],0x0
  65c429:	00 
  65c42a:	0f 8e d2 01 00 00    	jle    65c602 <step3d_t_mod_mp_step3d_t_tile_+0x8442>
  65c430:	4d 63 f6             	movsxd r14,r14d
  65c433:	48 8b 95 08 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x8f8]
  65c43a:	4c 89 ad 10 f7 ff ff 	mov    QWORD PTR [rbp-0x8f0],r13
  65c441:	48 89 85 80 f6 ff ff 	mov    QWORD PTR [rbp-0x980],rax
  65c448:	48 89 8d 78 f6 ff ff 	mov    QWORD PTR [rbp-0x988],rcx
  65c44f:	4e 8d 6c f2 08       	lea    r13,[rdx+r14*8+0x8]
  65c454:	4c 89 ad b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],r13
  65c45b:	4d 89 fe             	mov    r14,r15
  65c45e:	4c 8b ad 90 f8 ff ff 	mov    r13,QWORD PTR [rbp-0x770]
  65c465:	89 b5 70 f6 ff ff    	mov    DWORD PTR [rbp-0x990],esi
  65c46b:	4b 8b 84 35 48 fe ff 	mov    rax,QWORD PTR [r13+r14*1-0x1b8]
  65c472:	ff 
  65c473:	48 f7 d8             	neg    rax
  65c476:	4b 8b 8c 35 58 fe ff 	mov    rcx,QWORD PTR [r13+r14*1-0x1a8]
  65c47d:	ff 
  65c47e:	4b 8b 94 35 60 fe ff 	mov    rdx,QWORD PTR [r13+r14*1-0x1a0]
  65c485:	ff 
  65c486:	48 0f af d1          	imul   rdx,rcx
  65c48a:	48 89 8d c8 f6 ff ff 	mov    QWORD PTR [rbp-0x938],rcx
  65c491:	4c 8d 3c 09          	lea    r15,[rcx+rcx*1]
  65c495:	4c 89 bd c0 f6 ff ff 	mov    QWORD PTR [rbp-0x940],r15
  65c49c:	4a 8d 74 00 01       	lea    rsi,[rax+r8*1+0x1]
  65c4a1:	4f 8b bc 35 78 fe ff 	mov    r15,QWORD PTR [r13+r14*1-0x188]
  65c4a8:	ff 
  65c4a9:	33 c0                	xor    eax,eax
  65c4ab:	49 f7 df             	neg    r15
  65c4ae:	4b 0f af b4 35 40 fe 	imul   rsi,QWORD PTR [r13+r14*1-0x1c0]
  65c4b5:	ff ff 
  65c4b7:	4c 03 bd a0 fa ff ff 	add    r15,QWORD PTR [rbp-0x560]
  65c4be:	4f 0f af bc 35 70 fe 	imul   r15,QWORD PTR [r13+r14*1-0x190]
  65c4c5:	ff ff 
  65c4c7:	4b 8b 8c 35 08 fe ff 	mov    rcx,QWORD PTR [r13+r14*1-0x1f8]
  65c4ce:	ff 
  65c4cf:	48 2b ca             	sub    rcx,rdx
  65c4d2:	48 03 f1             	add    rsi,rcx
  65c4d5:	4c 03 fe             	add    r15,rsi
  65c4d8:	4b 8b b4 35 e8 fd ff 	mov    rsi,QWORD PTR [r13+r14*1-0x218]
  65c4df:	ff 
  65c4e0:	48 f7 de             	neg    rsi
  65c4e3:	48 89 85 e0 f6 ff ff 	mov    QWORD PTR [rbp-0x920],rax
  65c4ea:	48 89 85 f0 f6 ff ff 	mov    QWORD PTR [rbp-0x910],rax
  65c4f1:	4b 8b 8c 35 f8 fd ff 	mov    rcx,QWORD PTR [r13+r14*1-0x208]
  65c4f8:	ff 
  65c4f9:	4b 8b 84 35 00 fe ff 	mov    rax,QWORD PTR [r13+r14*1-0x200]
  65c500:	ff 
  65c501:	4a 8d 54 06 01       	lea    rdx,[rsi+r8*1+0x1]
  65c506:	48 0f af c1          	imul   rax,rcx
  65c50a:	48 0f af 95 a8 f6 ff 	imul   rdx,QWORD PTR [rbp-0x958]
  65c511:	ff 
  65c512:	4b 8b b4 35 a8 fd ff 	mov    rsi,QWORD PTR [r13+r14*1-0x258]
  65c519:	ff 
  65c51a:	4c 8d 04 09          	lea    r8,[rcx+rcx*1]
  65c51e:	48 2b f0             	sub    rsi,rax
  65c521:	48 03 d6             	add    rdx,rsi
  65c524:	48 89 8d f8 f6 ff ff 	mov    QWORD PTR [rbp-0x908],rcx
  65c52b:	4c 89 95 88 f6 ff ff 	mov    QWORD PTR [rbp-0x978],r10
  65c532:	4c 89 8d 90 f6 ff ff 	mov    QWORD PTR [rbp-0x970],r9
  65c539:	48 89 bd 98 f6 ff ff 	mov    QWORD PTR [rbp-0x968],rdi
  65c540:	4c 8b ad 10 f7 ff ff 	mov    r13,QWORD PTR [rbp-0x8f0]
  65c547:	48 8b 85 b8 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x948]
  65c54e:	4c 89 f9             	mov    rcx,r15
  65c551:	48 8b b5 f0 f6 ff ff 	mov    rsi,QWORD PTR [rbp-0x910]
  65c558:	4c 89 c7             	mov    rdi,r8
  65c55b:	4c 8b 85 f8 f6 ff ff 	mov    r8,QWORD PTR [rbp-0x908]
  65c562:	4c 8b 8d e0 f6 ff ff 	mov    r9,QWORD PTR [rbp-0x920]
  65c569:	4c 8b 95 c0 f6 ff ff 	mov    r10,QWORD PTR [rbp-0x940]
  65c570:	4c 8b 9d c8 f6 ff ff 	mov    r11,QWORD PTR [rbp-0x938]
  65c577:	4c 8b a5 18 f7 ff ff 	mov    r12,QWORD PTR [rbp-0x8e8]
  65c57e:	4c 8b b5 20 f7 ff ff 	mov    r14,QWORD PTR [rbp-0x8e0]
  65c585:	4c 8b bd 70 fd ff ff 	mov    r15,QWORD PTR [rbp-0x290]
  65c58c:	49 03 f0             	add    rsi,r8
  65c58f:	4d 03 cb             	add    r9,r11
  65c592:	c5 7b 10 2c 17       	vmovsd xmm13,QWORD PTR [rdi+rdx*1]
  65c597:	49 ff c4             	inc    r12
  65c59a:	c4 41 13 59 3c 0a    	vmulsd xmm15,xmm13,QWORD PTR [r10+rcx*1]
  65c5a0:	49 03 f8             	add    rdi,r8
  65c5a3:	c5 7b 10 24 16       	vmovsd xmm12,QWORD PTR [rsi+rdx*1]
  65c5a8:	4d 03 d3             	add    r10,r11
  65c5ab:	c4 41 1b 59 34 09    	vmulsd xmm14,xmm12,QWORD PTR [r9+rcx*1]
  65c5b1:	c4 41 0b 58 e7       	vaddsd xmm12,xmm14,xmm15
  65c5b6:	c4 41 5b 59 ec       	vmulsd xmm13,xmm4,xmm12
  65c5bb:	c5 13 58 30          	vaddsd xmm14,xmm13,QWORD PTR [rax]
  65c5bf:	c5 7b 11 30          	vmovsd QWORD PTR [rax],xmm14
  65c5c3:	49 03 c7             	add    rax,r15
  65c5c6:	4d 3b e6             	cmp    r12,r14
  65c5c9:	72 c1                	jb     65c58c <step3d_t_mod_mp_step3d_t_tile_+0x83cc>
  65c5cb:	8b b5 70 f6 ff ff    	mov    esi,DWORD PTR [rbp-0x990]
  65c5d1:	48 8b 8d 78 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x988]
  65c5d8:	48 8b 85 80 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x980]
  65c5df:	4c 8b 95 88 f6 ff ff 	mov    r10,QWORD PTR [rbp-0x978]
  65c5e6:	4c 8b 9d 80 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x780]
  65c5ed:	4c 8b 8d 90 f6 ff ff 	mov    r9,QWORD PTR [rbp-0x970]
  65c5f4:	4c 8b a5 88 f8 ff ff 	mov    r12,QWORD PTR [rbp-0x778]
  65c5fb:	48 8b bd 98 f6 ff ff 	mov    rdi,QWORD PTR [rbp-0x968]
  65c602:	4d 89 e8             	mov    r8,r13
  65c605:	4c 3b ef             	cmp    r13,rdi
  65c608:	0f 82 e7 fb ff ff    	jb     65c1f5 <step3d_t_mod_mp_step3d_t_tile_+0x8035>
  65c60e:	48 8b 95 88 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x478]
  65c615:	4c 8b b5 a0 fa ff ff 	mov    r14,QWORD PTR [rbp-0x560]
  65c61c:	4c 8b a5 78 fb ff ff 	mov    r12,QWORD PTR [rbp-0x488]
  65c623:	4c 8b ad 80 fb ff ff 	mov    r13,QWORD PTR [rbp-0x480]
  65c62a:	4c 8b 9d 30 fd ff ff 	mov    r11,QWORD PTR [rbp-0x2d0]
  65c631:	eb 04                	jmp    65c637 <step3d_t_mod_mp_step3d_t_tile_+0x8477>
  65c633:	4c 8d 72 01          	lea    r14,[rdx+0x1]
  65c637:	48 83 bd b0 fd ff ff 	cmp    QWORD PTR [rbp-0x250],0x8
  65c63e:	08 
  65c63f:	0f 85 18 01 00 00    	jne    65c75d <step3d_t_mod_mp_step3d_t_tile_+0x859d>
  65c645:	33 c0                	xor    eax,eax
  65c647:	33 c9                	xor    ecx,ecx
  65c649:	48 83 bd 50 fd ff ff 	cmp    QWORD PTR [rbp-0x2b0],0x0
  65c650:	00 
  65c651:	0f 8e 8a 02 00 00    	jle    65c8e1 <step3d_t_mod_mp_step3d_t_tile_+0x8721>
  65c657:	48 0f af 95 98 fb ff 	imul   rdx,QWORD PTR [rbp-0x468]
  65c65e:	ff 
  65c65f:	4c 89 b5 a0 fa ff ff 	mov    QWORD PTR [rbp-0x560],r14
  65c666:	48 03 95 88 fa ff ff 	add    rdx,QWORD PTR [rbp-0x578]
  65c66d:	4c 8b 95 a8 fd ff ff 	mov    r10,QWORD PTR [rbp-0x258]
  65c674:	4c 8b a5 98 fd ff ff 	mov    r12,QWORD PTR [rbp-0x268]
  65c67b:	4c 8b b5 48 fd ff ff 	mov    r14,QWORD PTR [rbp-0x2b8]
  65c682:	44 8b bd 90 fd ff ff 	mov    r15d,DWORD PTR [rbp-0x270]
  65c689:	44 3b bd 88 fd ff ff 	cmp    r15d,DWORD PTR [rbp-0x278]
  65c690:	0f 8c a8 00 00 00    	jl     65c73e <step3d_t_mod_mp_step3d_t_tile_+0x857e>
  65c696:	49 83 fb 04          	cmp    r11,0x4
  65c69a:	0f 8c 25 16 00 00    	jl     65dcc5 <step3d_t_mod_mp_step3d_t_tile_+0x9b05>
  65c6a0:	4c 8b ad 00 fe ff ff 	mov    r13,QWORD PTR [rbp-0x200]
  65c6a7:	45 33 c0             	xor    r8d,r8d
  65c6aa:	4c 8b bd c8 fc ff ff 	mov    r15,QWORD PTR [rbp-0x338]
  65c6b1:	49 8d 3c 0c          	lea    rdi,[r12+rcx*1]
  65c6b5:	48 89 d6             	mov    rsi,rdx
  65c6b8:	4d 8d 0c 0a          	lea    r9,[r10+rcx*1]
  65c6bc:	4d 89 ee             	mov    r14,r13
  65c6bf:	c4 01 7d 10 64 c1 08 	vmovupd ymm12,YMMWORD PTR [r9+r8*8+0x8]
  65c6c6:	c5 7d 10 36          	vmovupd ymm14,YMMWORD PTR [rsi]
  65c6ca:	c4 21 1d 5c 2c c7    	vsubpd ymm13,ymm12,YMMWORD PTR [rdi+r8*8]
  65c6d0:	c4 01 15 59 3c c7    	vmulpd ymm15,ymm13,YMMWORD PTR [r15+r8*8]
  65c6d6:	49 83 c0 04          	add    r8,0x4
  65c6da:	c4 41 0d 5c e7       	vsubpd ymm12,ymm14,ymm15
  65c6df:	c5 7d 11 26          	vmovupd YMMWORD PTR [rsi],ymm12
  65c6e3:	48 83 c6 20          	add    rsi,0x20
  65c6e7:	4d 3b c6             	cmp    r8,r14
  65c6ea:	72 d3                	jb     65c6bf <step3d_t_mod_mp_step3d_t_tile_+0x84ff>
  65c6ec:	4c 8b b5 48 fd ff ff 	mov    r14,QWORD PTR [rbp-0x2b8]
  65c6f3:	44 8b bd 90 fd ff ff 	mov    r15d,DWORD PTR [rbp-0x270]
  65c6fa:	4d 3b eb             	cmp    r13,r11
  65c6fd:	73 3f                	jae    65c73e <step3d_t_mod_mp_step3d_t_tile_+0x857e>
  65c6ff:	4c 8b 8d c8 fc ff ff 	mov    r9,QWORD PTR [rbp-0x338]
  65c706:	4d 8d 04 0c          	lea    r8,[r12+rcx*1]
  65c70a:	49 8d 3c 0a          	lea    rdi,[r10+rcx*1]
  65c70e:	4a 8d 34 ea          	lea    rsi,[rdx+r13*8]
  65c712:	c4 21 7b 10 64 ef 08 	vmovsd xmm12,QWORD PTR [rdi+r13*8+0x8]
  65c719:	c5 7b 10 36          	vmovsd xmm14,QWORD PTR [rsi]
  65c71d:	c4 01 1b 5c 2c e8    	vsubsd xmm13,xmm12,QWORD PTR [r8+r13*8]
  65c723:	c4 01 13 59 3c e9    	vmulsd xmm15,xmm13,QWORD PTR [r9+r13*8]
  65c729:	49 ff c5             	inc    r13
  65c72c:	c4 41 0b 5c e7       	vsubsd xmm12,xmm14,xmm15
  65c731:	c5 7b 11 26          	vmovsd QWORD PTR [rsi],xmm12
  65c735:	48 83 c6 08          	add    rsi,0x8
  65c739:	4d 3b eb             	cmp    r13,r11
  65c73c:	72 d4                	jb     65c712 <step3d_t_mod_mp_step3d_t_tile_+0x8552>
  65c73e:	48 ff c0             	inc    rax
  65c741:	49 03 d6             	add    rdx,r14
  65c744:	48 03 8d 70 fd ff ff 	add    rcx,QWORD PTR [rbp-0x290]
  65c74b:	48 3b 85 50 fd ff ff 	cmp    rax,QWORD PTR [rbp-0x2b0]
  65c752:	0f 82 31 ff ff ff    	jb     65c689 <step3d_t_mod_mp_step3d_t_tile_+0x84c9>
  65c758:	e9 6f 01 00 00       	jmp    65c8cc <step3d_t_mod_mp_step3d_t_tile_+0x870c>
  65c75d:	33 c0                	xor    eax,eax
  65c75f:	33 c9                	xor    ecx,ecx
  65c761:	48 83 bd 50 fd ff ff 	cmp    QWORD PTR [rbp-0x2b0],0x0
  65c768:	00 
  65c769:	0f 8e 72 01 00 00    	jle    65c8e1 <step3d_t_mod_mp_step3d_t_tile_+0x8721>
  65c76f:	48 0f af 95 98 fb ff 	imul   rdx,QWORD PTR [rbp-0x468]
  65c776:	ff 
  65c777:	4c 89 b5 a0 fa ff ff 	mov    QWORD PTR [rbp-0x560],r14
  65c77e:	48 03 95 90 fa ff ff 	add    rdx,QWORD PTR [rbp-0x570]
  65c785:	4c 8b b5 a8 fd ff ff 	mov    r14,QWORD PTR [rbp-0x258]
  65c78c:	4c 8b bd 98 fd ff ff 	mov    r15,QWORD PTR [rbp-0x268]
  65c793:	4c 8b ad b0 fd ff ff 	mov    r13,QWORD PTR [rbp-0x250]
  65c79a:	8b b5 90 fd ff ff    	mov    esi,DWORD PTR [rbp-0x270]
  65c7a0:	3b b5 88 fd ff ff    	cmp    esi,DWORD PTR [rbp-0x278]
  65c7a6:	0f 8c 02 01 00 00    	jl     65c8ae <step3d_t_mod_mp_step3d_t_tile_+0x86ee>
  65c7ac:	4d 85 ed             	test   r13,r13
  65c7af:	0f 84 2d 17 00 00    	je     65dee2 <step3d_t_mod_mp_step3d_t_tile_+0x9d22>
  65c7b5:	49 83 fb 04          	cmp    r11,0x4
  65c7b9:	0f 8c 23 17 00 00    	jl     65dee2 <step3d_t_mod_mp_step3d_t_tile_+0x9d22>
  65c7bf:	4c 8b a5 00 fe ff ff 	mov    r12,QWORD PTR [rbp-0x200]
  65c7c6:	45 33 c9             	xor    r9d,r9d
  65c7c9:	48 89 d7             	mov    rdi,rdx
  65c7cc:	4d 8d 04 0f          	lea    r8,[r15+rcx*1]
  65c7d0:	4c 8b bd c8 fc ff ff 	mov    r15,QWORD PTR [rbp-0x338]
  65c7d7:	49 8d 34 0e          	lea    rsi,[r14+rcx*1]
  65c7db:	4d 89 e6             	mov    r14,r12
  65c7de:	4f 8d 54 6d 00       	lea    r10,[r13+r13*2+0x0]
  65c7e3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  65c7e8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  65c7ef:	00 
  65c7f0:	c4 21 7d 10 6c ce 08 	vmovupd ymm13,YMMWORD PTR [rsi+r9*8+0x8]
  65c7f7:	4e 8d 1c 6f          	lea    r11,[rdi+r13*2]
  65c7fb:	c5 7b 10 3f          	vmovsd xmm15,QWORD PTR [rdi]
  65c7ff:	c4 01 15 5c 34 c8    	vsubpd ymm14,ymm13,YMMWORD PTR [r8+r9*8]
  65c805:	c4 21 01 16 2c 2f    	vmovhpd xmm13,xmm15,QWORD PTR [rdi+r13*1]
  65c80b:	c4 01 0d 59 24 cf    	vmulpd ymm12,ymm14,YMMWORD PTR [r15+r9*8]
  65c811:	49 83 c1 04          	add    r9,0x4
  65c815:	c4 41 7b 10 33       	vmovsd xmm14,QWORD PTR [r11]
  65c81a:	c4 01 09 16 3c 2b    	vmovhpd xmm15,xmm14,QWORD PTR [r11+r13*1]
  65c820:	c4 43 15 18 ef 01    	vinsertf128 ymm13,ymm13,xmm15,0x1
  65c826:	c4 41 15 5c e4       	vsubpd ymm12,ymm13,ymm12
  65c82b:	c4 43 7d 19 e5 01    	vextractf128 xmm13,ymm12,0x1
  65c831:	c5 7b 11 27          	vmovsd QWORD PTR [rdi],xmm12
  65c835:	c4 41 79 17 64 3d 00 	vmovhpd QWORD PTR [r13+rdi*1+0x0],xmm12
  65c83c:	c4 41 7b 11 2b       	vmovsd QWORD PTR [r11],xmm13
  65c841:	c4 41 79 17 2c 3a    	vmovhpd QWORD PTR [r10+rdi*1],xmm13
  65c847:	4a 8d 3c af          	lea    rdi,[rdi+r13*4]
  65c84b:	4d 3b ce             	cmp    r9,r14
  65c84e:	72 a0                	jb     65c7f0 <step3d_t_mod_mp_step3d_t_tile_+0x8630>
  65c850:	4c 8b 9d 30 fd ff ff 	mov    r11,QWORD PTR [rbp-0x2d0]
  65c857:	4c 8b b5 a8 fd ff ff 	mov    r14,QWORD PTR [rbp-0x258]
  65c85e:	4c 8b bd 98 fd ff ff 	mov    r15,QWORD PTR [rbp-0x268]
  65c865:	4c 89 ee             	mov    rsi,r13
  65c868:	49 0f af f4          	imul   rsi,r12
  65c86c:	4d 3b e3             	cmp    r12,r11
  65c86f:	73 3d                	jae    65c8ae <step3d_t_mod_mp_step3d_t_tile_+0x86ee>
  65c871:	4c 8b 8d c8 fc ff ff 	mov    r9,QWORD PTR [rbp-0x338]
  65c878:	48 03 f2             	add    rsi,rdx
  65c87b:	4d 8d 04 0f          	lea    r8,[r15+rcx*1]
  65c87f:	49 8d 3c 0e          	lea    rdi,[r14+rcx*1]
  65c883:	c4 21 7b 10 64 e7 08 	vmovsd xmm12,QWORD PTR [rdi+r12*8+0x8]
  65c88a:	c5 7b 10 36          	vmovsd xmm14,QWORD PTR [rsi]
  65c88e:	c4 01 1b 5c 2c e0    	vsubsd xmm13,xmm12,QWORD PTR [r8+r12*8]
  65c894:	c4 01 13 59 3c e1    	vmulsd xmm15,xmm13,QWORD PTR [r9+r12*8]
  65c89a:	49 ff c4             	inc    r12
  65c89d:	c4 41 0b 5c e7       	vsubsd xmm12,xmm14,xmm15
  65c8a2:	c5 7b 11 26          	vmovsd QWORD PTR [rsi],xmm12
  65c8a6:	49 03 f5             	add    rsi,r13
  65c8a9:	4d 3b e3             	cmp    r12,r11
  65c8ac:	72 d5                	jb     65c883 <step3d_t_mod_mp_step3d_t_tile_+0x86c3>
  65c8ae:	48 ff c0             	inc    rax
  65c8b1:	48 03 8d 70 fd ff ff 	add    rcx,QWORD PTR [rbp-0x290]
  65c8b8:	48 03 95 48 fd ff ff 	add    rdx,QWORD PTR [rbp-0x2b8]
  65c8bf:	48 3b 85 50 fd ff ff 	cmp    rax,QWORD PTR [rbp-0x2b0]
  65c8c6:	0f 82 ce fe ff ff    	jb     65c79a <step3d_t_mod_mp_step3d_t_tile_+0x85da>
  65c8cc:	4c 8b b5 a0 fa ff ff 	mov    r14,QWORD PTR [rbp-0x560]
  65c8d3:	4c 8b a5 78 fb ff ff 	mov    r12,QWORD PTR [rbp-0x488]
  65c8da:	4c 8b ad 80 fb ff ff 	mov    r13,QWORD PTR [rbp-0x480]
  65c8e1:	4c 89 f2             	mov    rdx,r14
  65c8e4:	4c 3b b5 b8 fb ff ff 	cmp    r14,QWORD PTR [rbp-0x448]
  65c8eb:	0f 82 c0 aa ff ff    	jb     6573b1 <step3d_t_mod_mp_step3d_t_tile_+0x31f1>
  65c8f1:	c5 7b 10 a5 a8 f8 ff 	vmovsd xmm12,QWORD PTR [rbp-0x758]
  65c8f8:	ff 
  65c8f9:	48 8b 8d 88 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x678]
  65c900:	8b b5 b8 f8 ff ff    	mov    esi,DWORD PTR [rbp-0x748]
  65c906:	48 8b 85 b0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x250]
  65c90d:	45 33 d2             	xor    r10d,r10d
  65c910:	83 bd d0 fb ff ff 00 	cmp    DWORD PTR [rbp-0x430],0x0
  65c917:	0f 8e 4b 13 00 00    	jle    65dc68 <step3d_t_mod_mp_step3d_t_tile_+0x9aa8>
  65c91d:	4c 8b 8d b0 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x750]
  65c924:	48 8b 95 d8 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x528]
  65c92b:	4c 8b 9d 70 fd ff ff 	mov    r11,QWORD PTR [rbp-0x290]
  65c932:	4d 89 d8             	mov    r8,r11
  65c935:	4c 8b b5 c8 fc ff ff 	mov    r14,QWORD PTR [rbp-0x338]
  65c93c:	41 8b 7c 91 fc       	mov    edi,DWORD PTR [r9+rdx*4-0x4]
  65c941:	4c 8b a5 c0 f8 ff ff 	mov    r12,QWORD PTR [rbp-0x740]
  65c948:	48 89 8d 88 f9 ff ff 	mov    QWORD PTR [rbp-0x678],rcx
  65c94f:	89 b5 b8 f8 ff ff    	mov    DWORD PTR [rbp-0x748],esi
  65c955:	44 8d 4f ff          	lea    r9d,[rdi-0x1]
  65c959:	48 63 ff             	movsxd rdi,edi
  65c95c:	4c 0f af df          	imul   r11,rdi
  65c960:	49 63 d1             	movsxd rdx,r9d
  65c963:	4c 8d 6f ff          	lea    r13,[rdi-0x1]
  65c967:	4d 0f af c5          	imul   r8,r13
  65c96b:	4c 89 ad c0 fa ff ff 	mov    QWORD PTR [rbp-0x540],r13
  65c972:	4f 8d 3c 06          	lea    r15,[r14+r8*1]
  65c976:	4c 8b b5 98 fd ff ff 	mov    r14,QWORD PTR [rbp-0x268]
  65c97d:	4f 8d 2c 04          	lea    r13,[r12+r8*1]
  65c981:	4c 89 bd 00 fb ff ff 	mov    QWORD PTR [rbp-0x500],r15
  65c988:	4d 03 c6             	add    r8,r14
  65c98b:	4c 89 ad f8 fa ff ff 	mov    QWORD PTR [rbp-0x508],r13
  65c992:	4c 8b ad c8 f8 ff ff 	mov    r13,QWORD PTR [rbp-0x738]
  65c999:	4f 8d 3c 1e          	lea    r15,[r14+r11*1]
  65c99d:	4c 89 bd 60 fa ff ff 	mov    QWORD PTR [rbp-0x5a0],r15
  65c9a4:	4c 8b bd 48 fd ff ff 	mov    r15,QWORD PTR [rbp-0x2b8]
  65c9ab:	4c 0f af ff          	imul   r15,rdi
  65c9af:	4c 03 bd 28 f9 ff ff 	add    r15,QWORD PTR [rbp-0x6d8]
  65c9b6:	4f 8d 74 1d 00       	lea    r14,[r13+r11*1+0x0]
  65c9bb:	4d 03 dc             	add    r11,r12
  65c9be:	4c 8b a5 20 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6e0]
  65c9c5:	4c 0f af e1          	imul   r12,rcx
  65c9c9:	4c 03 bd d0 f8 ff ff 	add    r15,QWORD PTR [rbp-0x730]
  65c9d0:	4c 03 bd 80 f9 ff ff 	add    r15,QWORD PTR [rbp-0x680]
  65c9d7:	4d 03 fc             	add    r15,r12
  65c9da:	4c 89 bd 58 fb ff ff 	mov    QWORD PTR [rbp-0x4a8],r15
  65c9e1:	4c 8b bd d8 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x728]
  65c9e8:	4c 89 b5 f0 fa ff ff 	mov    QWORD PTR [rbp-0x510],r14
  65c9ef:	4c 8b b5 18 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x6e8]
  65c9f6:	4c 0f af f1          	imul   r14,rcx
  65c9fa:	4c 89 9d 40 fb ff ff 	mov    QWORD PTR [rbp-0x4c0],r11
  65ca01:	4d 03 fc             	add    r15,r12
  65ca04:	4c 89 bd 80 fa ff ff 	mov    QWORD PTR [rbp-0x580],r15
  65ca0b:	4c 8b bd e0 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x720]
  65ca12:	4c 8b 9d 00 f9 ff ff 	mov    r11,QWORD PTR [rbp-0x700]
  65ca19:	4c 0f af d9          	imul   r11,rcx
  65ca1d:	4c 8b ad 10 f9 ff ff 	mov    r13,QWORD PTR [rbp-0x6f0]
  65ca24:	4d 03 fc             	add    r15,r12
  65ca27:	4c 89 bd 68 fa ff ff 	mov    QWORD PTR [rbp-0x598],r15
  65ca2e:	4c 8b bd e8 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x718]
  65ca35:	4c 0f af e9          	imul   r13,rcx
  65ca39:	4c 89 85 60 fb ff ff 	mov    QWORD PTR [rbp-0x4a0],r8
  65ca40:	4d 03 fc             	add    r15,r12
  65ca43:	4c 89 bd 70 fa ff ff 	mov    QWORD PTR [rbp-0x590],r15
  65ca4a:	4c 8b bd f0 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x710]
  65ca51:	48 89 bd 28 fc ff ff 	mov    QWORD PTR [rbp-0x3d8],rdi
  65ca58:	48 89 95 f8 fd ff ff 	mov    QWORD PTR [rbp-0x208],rdx
  65ca5f:	4c 89 a5 90 f9 ff ff 	mov    QWORD PTR [rbp-0x670],r12
  65ca66:	4d 03 fc             	add    r15,r12
  65ca69:	4c 89 bd 78 fa ff ff 	mov    QWORD PTR [rbp-0x588],r15
  65ca70:	4c 8d 7a ff          	lea    r15,[rdx-0x1]
  65ca74:	4c 89 bd 38 fd ff ff 	mov    QWORD PTR [rbp-0x2c8],r15
  65ca7b:	4c 8b bd f8 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x708]
  65ca82:	48 8b 95 00 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x200]
  65ca89:	48 8b bd 30 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2d0]
  65ca90:	48 8b 8d 98 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x468]
  65ca97:	4d 03 fe             	add    r15,r14
  65ca9a:	4c 89 bd c8 f9 ff ff 	mov    QWORD PTR [rbp-0x638],r15
  65caa1:	4c 8b bd 78 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x688]
  65caa8:	44 8b 85 90 fb ff ff 	mov    r8d,DWORD PTR [rbp-0x470]
  65caaf:	4d 03 fe             	add    r15,r14
  65cab2:	4c 89 bd d0 f9 ff ff 	mov    QWORD PTR [rbp-0x630],r15
  65cab9:	4c 8b bd 70 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x690]
  65cac0:	4d 03 fe             	add    r15,r14
  65cac3:	4c 89 bd e8 fb ff ff 	mov    QWORD PTR [rbp-0x418],r15
  65caca:	4c 8b bd 08 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6f8]
  65cad1:	4c 03 b5 68 f9 ff ff 	add    r14,QWORD PTR [rbp-0x698]
  65cad8:	4c 89 b5 00 fc ff ff 	mov    QWORD PTR [rbp-0x400],r14
  65cadf:	4d 03 fb             	add    r15,r11
  65cae2:	4c 89 bd d8 f9 ff ff 	mov    QWORD PTR [rbp-0x628],r15
  65cae9:	4c 8b bd 50 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6b0]
  65caf0:	4c 03 9d 58 f9 ff ff 	add    r11,QWORD PTR [rbp-0x6a8]
  65caf7:	4c 89 9d e0 f9 ff ff 	mov    QWORD PTR [rbp-0x620],r11
  65cafe:	4d 03 fd             	add    r15,r13
  65cb01:	4c 03 ad 60 f9 ff ff 	add    r13,QWORD PTR [rbp-0x6a0]
  65cb08:	4c 89 bd f0 fb ff ff 	mov    QWORD PTR [rbp-0x410],r15
  65cb0f:	4c 89 ad f8 fb ff ff 	mov    QWORD PTR [rbp-0x408],r13
  65cb16:	45 89 c4             	mov    r12d,r8d
  65cb19:	41 8d 72 01          	lea    esi,[r10+0x1]
  65cb1d:	44 3b c6             	cmp    r8d,esi
  65cb20:	44 0f 4d e6          	cmovge r12d,esi
  65cb24:	4d 63 e4             	movsxd r12,r12d
  65cb27:	83 fe 02             	cmp    esi,0x2
  65cb2a:	0f 8e 61 02 00 00    	jle    65cd91 <step3d_t_mod_mp_step3d_t_tile_+0x8bd1>
  65cb30:	48 83 f8 08          	cmp    rax,0x8
  65cb34:	0f 85 ee 00 00 00    	jne    65cc28 <step3d_t_mod_mp_step3d_t_tile_+0x8a68>
  65cb3a:	4c 8b ad 78 fd ff ff 	mov    r13,QWORD PTR [rbp-0x288]
  65cb41:	45 33 e4             	xor    r12d,r12d
  65cb44:	48 83 bd 28 fc ff ff 	cmp    QWORD PTR [rbp-0x3d8],0x0
  65cb4b:	00 
  65cb4c:	0f 8e 1c 09 00 00    	jle    65d46e <step3d_t_mod_mp_step3d_t_tile_+0x92ae>
  65cb52:	4d 63 da             	movsxd r11,r10d
  65cb55:	4c 0f af d9          	imul   r11,rcx
  65cb59:	89 b5 a0 fb ff ff    	mov    DWORD PTR [rbp-0x460],esi
  65cb5f:	44 89 8d a8 fb ff ff 	mov    DWORD PTR [rbp-0x458],r9d
  65cb66:	44 89 95 70 fb ff ff 	mov    DWORD PTR [rbp-0x490],r10d
  65cb6d:	4c 03 9d 78 fa ff ff 	add    r11,QWORD PTR [rbp-0x588]
  65cb74:	48 8b b5 28 fc ff ff 	mov    rsi,QWORD PTR [rbp-0x3d8]
  65cb7b:	4c 8b 8d 70 fd ff ff 	mov    r9,QWORD PTR [rbp-0x290]
  65cb82:	4c 8b 95 48 fd ff ff 	mov    r10,QWORD PTR [rbp-0x2b8]
  65cb89:	44 8b b5 88 fd ff ff 	mov    r14d,DWORD PTR [rbp-0x278]
  65cb90:	44 8b bd 90 fd ff ff 	mov    r15d,DWORD PTR [rbp-0x270]
  65cb97:	48 89 85 b0 fd ff ff 	mov    QWORD PTR [rbp-0x250],rax
  65cb9e:	45 3b fe             	cmp    r15d,r14d
  65cba1:	7c 6e                	jl     65cc11 <step3d_t_mod_mp_step3d_t_tile_+0x8a51>
  65cba3:	48 83 ff 04          	cmp    rdi,0x4
  65cba7:	0f 8c 4e 11 00 00    	jl     65dcfb <step3d_t_mod_mp_step3d_t_tile_+0x9b3b>
  65cbad:	49 89 d0             	mov    r8,rdx
  65cbb0:	33 c9                	xor    ecx,ecx
  65cbb2:	4c 89 e8             	mov    rax,r13
  65cbb5:	c4 c1 7d 10 04 cb    	vmovupd ymm0,YMMWORD PTR [r11+rcx*8]
  65cbbb:	48 83 c1 04          	add    rcx,0x4
  65cbbf:	c5 fd 11 40 08       	vmovupd YMMWORD PTR [rax+0x8],ymm0
  65cbc4:	48 83 c0 20          	add    rax,0x20
  65cbc8:	48 3b ca             	cmp    rcx,rdx
  65cbcb:	72 e8                	jb     65cbb5 <step3d_t_mod_mp_step3d_t_tile_+0x89f5>
  65cbcd:	4a 8d 0c c5 00 00 00 	lea    rcx,[r8*8+0x0]
  65cbd4:	00 
  65cbd5:	4c 3b c7             	cmp    r8,rdi
  65cbd8:	73 24                	jae    65cbfe <step3d_t_mod_mp_step3d_t_tile_+0x8a3e>
  65cbda:	4b 8d 44 c5 00       	lea    rax,[r13+r8*8+0x0]
  65cbdf:	4e 8b 3c 19          	mov    r15,QWORD PTR [rcx+r11*1]
  65cbe3:	49 ff c0             	inc    r8
  65cbe6:	4c 89 78 08          	mov    QWORD PTR [rax+0x8],r15
  65cbea:	48 83 c0 08          	add    rax,0x8
  65cbee:	48 83 c1 08          	add    rcx,0x8
  65cbf2:	4c 3b c7             	cmp    r8,rdi
  65cbf5:	72 e8                	jb     65cbdf <step3d_t_mod_mp_step3d_t_tile_+0x8a1f>
  65cbf7:	44 8b bd 90 fd ff ff 	mov    r15d,DWORD PTR [rbp-0x270]
  65cbfe:	49 ff c4             	inc    r12
  65cc01:	4d 03 e9             	add    r13,r9
  65cc04:	4d 03 da             	add    r11,r10
  65cc07:	4c 3b e6             	cmp    r12,rsi
  65cc0a:	72 92                	jb     65cb9e <step3d_t_mod_mp_step3d_t_tile_+0x89de>
  65cc0c:	e9 bc 10 00 00       	jmp    65dccd <step3d_t_mod_mp_step3d_t_tile_+0x9b0d>
  65cc11:	49 ff c4             	inc    r12
  65cc14:	4d 03 e9             	add    r13,r9
  65cc17:	4d 03 da             	add    r11,r10
  65cc1a:	4c 3b e6             	cmp    r12,rsi
  65cc1d:	0f 82 7b ff ff ff    	jb     65cb9e <step3d_t_mod_mp_step3d_t_tile_+0x89de>
  65cc23:	e9 db 10 00 00       	jmp    65dd03 <step3d_t_mod_mp_step3d_t_tile_+0x9b43>
  65cc28:	45 33 db             	xor    r11d,r11d
  65cc2b:	4c 8b ad 78 fd ff ff 	mov    r13,QWORD PTR [rbp-0x288]
  65cc32:	45 33 e4             	xor    r12d,r12d
  65cc35:	4c 89 ad 98 fa ff ff 	mov    QWORD PTR [rbp-0x568],r13
  65cc3c:	48 83 bd 28 fc ff ff 	cmp    QWORD PTR [rbp-0x3d8],0x0
  65cc43:	00 
  65cc44:	0f 8e 24 08 00 00    	jle    65d46e <step3d_t_mod_mp_step3d_t_tile_+0x92ae>
  65cc4a:	4d 63 f2             	movsxd r14,r10d
  65cc4d:	4c 0f af f1          	imul   r14,rcx
  65cc51:	4c 8b ad 80 fa ff ff 	mov    r13,QWORD PTR [rbp-0x580]
  65cc58:	4c 8b bd 68 fa ff ff 	mov    r15,QWORD PTR [rbp-0x598]
  65cc5f:	44 89 95 70 fb ff ff 	mov    DWORD PTR [rbp-0x490],r10d
  65cc66:	89 b5 a0 fb ff ff    	mov    DWORD PTR [rbp-0x460],esi
  65cc6c:	4d 03 ee             	add    r13,r14
  65cc6f:	4c 89 ad f8 fc ff ff 	mov    QWORD PTR [rbp-0x308],r13
  65cc76:	4d 03 fe             	add    r15,r14
  65cc79:	4c 03 b5 70 fa ff ff 	add    r14,QWORD PTR [rbp-0x590]
  65cc80:	4c 89 b5 f0 fc ff ff 	mov    QWORD PTR [rbp-0x310],r14
  65cc87:	4c 89 bd 08 fd ff ff 	mov    QWORD PTR [rbp-0x2f8],r15
  65cc8e:	44 89 8d a8 fb ff ff 	mov    DWORD PTR [rbp-0x458],r9d
  65cc95:	4d 89 e0             	mov    r8,r12
  65cc98:	4c 8b 95 98 fa ff ff 	mov    r10,QWORD PTR [rbp-0x568]
  65cc9f:	4c 8b ad 70 fd ff ff 	mov    r13,QWORD PTR [rbp-0x290]
  65cca6:	44 8b b5 00 fd ff ff 	mov    r14d,DWORD PTR [rbp-0x300]
  65ccad:	44 8b bd 90 fd ff ff 	mov    r15d,DWORD PTR [rbp-0x270]
  65ccb4:	44 3b bd 88 fd ff ff 	cmp    r15d,DWORD PTR [rbp-0x278]
  65ccbb:	0f 8c ae 00 00 00    	jl     65cd6f <step3d_t_mod_mp_step3d_t_tile_+0x8baf>
  65ccc1:	be 01 00 00 00       	mov    esi,0x1
  65ccc6:	33 d2                	xor    edx,edx
  65ccc8:	33 c9                	xor    ecx,ecx
  65ccca:	45 85 f6             	test   r14d,r14d
  65cccd:	74 4f                	je     65cd1e <step3d_t_mod_mp_step3d_t_tile_+0x8b5e>
  65cccf:	48 8b b5 f8 fc ff ff 	mov    rsi,QWORD PTR [rbp-0x308]
  65ccd6:	4d 89 d1             	mov    r9,r10
  65ccd9:	48 8b bd f0 fc ff ff 	mov    rdi,QWORD PTR [rbp-0x310]
  65cce0:	4c 8b b5 d0 fc ff ff 	mov    r14,QWORD PTR [rbp-0x330]
  65cce7:	49 03 f0             	add    rsi,r8
  65ccea:	49 03 f8             	add    rdi,r8
  65cced:	4c 8b 3c 4f          	mov    r15,QWORD PTR [rdi+rcx*2]
  65ccf1:	48 ff c2             	inc    rdx
  65ccf4:	4d 89 79 08          	mov    QWORD PTR [r9+0x8],r15
  65ccf8:	4c 8b 3c 4e          	mov    r15,QWORD PTR [rsi+rcx*2]
  65ccfc:	48 03 c8             	add    rcx,rax
  65ccff:	4d 89 79 10          	mov    QWORD PTR [r9+0x10],r15
  65cd03:	49 83 c1 10          	add    r9,0x10
  65cd07:	49 3b d6             	cmp    rdx,r14
  65cd0a:	72 e1                	jb     65cced <step3d_t_mod_mp_step3d_t_tile_+0x8b2d>
  65cd0c:	44 8b b5 00 fd ff ff 	mov    r14d,DWORD PTR [rbp-0x300]
  65cd13:	8d 74 12 01          	lea    esi,[rdx+rdx*1+0x1]
  65cd17:	44 8b bd 90 fd ff ff 	mov    r15d,DWORD PTR [rbp-0x270]
  65cd1e:	8d 56 ff             	lea    edx,[rsi-0x1]
  65cd21:	3b 95 40 fd ff ff    	cmp    edx,DWORD PTR [rbp-0x2c0]
  65cd27:	73 24                	jae    65cd4d <step3d_t_mod_mp_step3d_t_tile_+0x8b8d>
  65cd29:	48 63 f6             	movsxd rsi,esi
  65cd2c:	48 89 c1             	mov    rcx,rax
  65cd2f:	48 0f af ce          	imul   rcx,rsi
  65cd33:	48 03 8d 08 fd ff ff 	add    rcx,QWORD PTR [rbp-0x2f8]
  65cd3a:	48 8b 95 78 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x288]
  65cd41:	4a 8b 3c 01          	mov    rdi,QWORD PTR [rcx+r8*1]
  65cd45:	4c 8d 0c f2          	lea    r9,[rdx+rsi*8]
  65cd49:	4b 89 3c 21          	mov    QWORD PTR [r9+r12*1],rdi
  65cd4d:	49 ff c3             	inc    r11
  65cd50:	4d 03 d5             	add    r10,r13
  65cd53:	4c 03 85 48 fd ff ff 	add    r8,QWORD PTR [rbp-0x2b8]
  65cd5a:	4d 03 e5             	add    r12,r13
  65cd5d:	4c 3b 9d 28 fc ff ff 	cmp    r11,QWORD PTR [rbp-0x3d8]
  65cd64:	0f 82 4a ff ff ff    	jb     65ccb4 <step3d_t_mod_mp_step3d_t_tile_+0x8af4>
  65cd6a:	e9 fc 0f 00 00       	jmp    65dd6b <step3d_t_mod_mp_step3d_t_tile_+0x9bab>
  65cd6f:	49 ff c3             	inc    r11
  65cd72:	4d 03 d5             	add    r10,r13
  65cd75:	4c 03 85 48 fd ff ff 	add    r8,QWORD PTR [rbp-0x2b8]
  65cd7c:	4d 03 e5             	add    r12,r13
  65cd7f:	4c 3b 9d 28 fc ff ff 	cmp    r11,QWORD PTR [rbp-0x3d8]
  65cd86:	0f 82 28 ff ff ff    	jb     65ccb4 <step3d_t_mod_mp_step3d_t_tile_+0x8af4>
  65cd8c:	e9 0f 10 00 00       	jmp    65dda0 <step3d_t_mod_mp_step3d_t_tile_+0x9be0>
  65cd91:	4c 8b ad d8 fa ff ff 	mov    r13,QWORD PTR [rbp-0x528]
  65cd98:	4c 8b 9d d0 fa ff ff 	mov    r11,QWORD PTR [rbp-0x530]
  65cd9f:	48 83 bd b8 f9 ff ff 	cmp    QWORD PTR [rbp-0x648],0x8
  65cda6:	08 
  65cda7:	c4 81 1b 59 44 eb f8 	vmulsd xmm0,xmm12,QWORD PTR [r11+r13*8-0x8]
  65cdae:	c5 f9 57 0d 0a eb 1e 	vxorpd xmm1,xmm0,XMMWORD PTR [rip+0x1eeb0a]        # 84b8c0 <__STRLITPACK_44.95+0x10>
  65cdb5:	00 
  65cdb6:	0f 85 68 01 00 00    	jne    65cf24 <step3d_t_mod_mp_step3d_t_tile_+0x8d64>
  65cdbc:	48 83 bd b0 f9 ff ff 	cmp    QWORD PTR [rbp-0x650],0x8
  65cdc3:	08 
  65cdc4:	0f 85 5a 01 00 00    	jne    65cf24 <step3d_t_mod_mp_step3d_t_tile_+0x8d64>
  65cdca:	45 33 ed             	xor    r13d,r13d
  65cdcd:	4c 8b b5 a8 fd ff ff 	mov    r14,QWORD PTR [rbp-0x258]
  65cdd4:	45 33 db             	xor    r11d,r11d
  65cdd7:	48 83 bd c0 fa ff ff 	cmp    QWORD PTR [rbp-0x540],0x0
  65cdde:	00 
  65cddf:	0f 8e 8d 10 00 00    	jle    65de72 <step3d_t_mod_mp_step3d_t_tile_+0x9cb2>
  65cde5:	4c 0f af a5 c0 f9 ff 	imul   r12,QWORD PTR [rbp-0x640]
  65cdec:	ff 
  65cded:	c4 e2 7d 19 c1       	vbroadcastsd ymm0,xmm1
  65cdf2:	44 89 8d a8 fb ff ff 	mov    DWORD PTR [rbp-0x458],r9d
  65cdf9:	4c 03 a5 e0 f9 ff ff 	add    r12,QWORD PTR [rbp-0x620]
  65ce00:	4c 8b 85 d0 f9 ff ff 	mov    r8,QWORD PTR [rbp-0x630]
  65ce07:	4c 8b 8d c8 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x638]
  65ce0e:	44 8b bd 90 fd ff ff 	mov    r15d,DWORD PTR [rbp-0x270]
  65ce15:	89 b5 a0 fb ff ff    	mov    DWORD PTR [rbp-0x460],esi
  65ce1b:	44 89 95 70 fb ff ff 	mov    DWORD PTR [rbp-0x490],r10d
  65ce22:	48 89 85 b0 fd ff ff 	mov    QWORD PTR [rbp-0x250],rax
  65ce29:	44 3b bd 88 fd ff ff 	cmp    r15d,DWORD PTR [rbp-0x278]
  65ce30:	0f 8c c4 00 00 00    	jl     65cefa <step3d_t_mod_mp_step3d_t_tile_+0x8d3a>
  65ce36:	48 83 ff 04          	cmp    rdi,0x4
  65ce3a:	0f 8c 2a 10 00 00    	jl     65de6a <step3d_t_mod_mp_step3d_t_tile_+0x9caa>
  65ce40:	4c 8b 95 00 fe ff ff 	mov    r10,QWORD PTR [rbp-0x200]
  65ce47:	33 d2                	xor    edx,edx
  65ce49:	4c 89 f1             	mov    rcx,r14
  65ce4c:	4b 8d 04 19          	lea    rax,[r9+r11*1]
  65ce50:	4d 89 d7             	mov    r15,r10
  65ce53:	4b 8d 34 18          	lea    rsi,[r8+r11*1]
  65ce57:	c5 fd 10 14 d6       	vmovupd ymm2,YMMWORD PTR [rsi+rdx*8]
  65ce5c:	c5 ed 5c 1c d0       	vsubpd ymm3,ymm2,YMMWORD PTR [rax+rdx*8]
  65ce61:	c5 b5 5e e3          	vdivpd ymm4,ymm9,ymm3
  65ce65:	c5 dd 59 e8          	vmulpd ymm5,ymm4,ymm0
  65ce69:	c4 c1 55 59 34 d4    	vmulpd ymm6,ymm5,YMMWORD PTR [r12+rdx*8]
  65ce6f:	48 83 c2 04          	add    rdx,0x4
  65ce73:	c5 fd 11 71 08       	vmovupd YMMWORD PTR [rcx+0x8],ymm6
  65ce78:	48 83 c1 20          	add    rcx,0x20
  65ce7c:	49 3b d7             	cmp    rdx,r15
  65ce7f:	72 d6                	jb     65ce57 <step3d_t_mod_mp_step3d_t_tile_+0x8c97>
  65ce81:	44 8b bd 90 fd ff ff 	mov    r15d,DWORD PTR [rbp-0x270]
  65ce88:	4a 8d 34 d5 00 00 00 	lea    rsi,[r10*8+0x0]
  65ce8f:	00 
  65ce90:	4c 3b d7             	cmp    r10,rdi
  65ce93:	73 3b                	jae    65ced0 <step3d_t_mod_mp_step3d_t_tile_+0x8d10>
  65ce95:	4b 8d 0c d6          	lea    rcx,[r14+r10*8]
  65ce99:	4b 8d 14 19          	lea    rdx,[r9+r11*1]
  65ce9d:	4b 8d 04 18          	lea    rax,[r8+r11*1]
  65cea1:	c4 a1 7b 10 14 d0    	vmovsd xmm2,QWORD PTR [rax+r10*8]
  65cea7:	c4 a1 6b 5c 1c d2    	vsubsd xmm3,xmm2,QWORD PTR [rdx+r10*8]
  65cead:	49 ff c2             	inc    r10
  65ceb0:	c5 a3 5e e3          	vdivsd xmm4,xmm11,xmm3
  65ceb4:	c5 f3 59 ec          	vmulsd xmm5,xmm1,xmm4
  65ceb8:	c4 a1 53 59 34 26    	vmulsd xmm6,xmm5,QWORD PTR [rsi+r12*1]
  65cebe:	48 83 c6 08          	add    rsi,0x8
  65cec2:	c5 fb 11 71 08       	vmovsd QWORD PTR [rcx+0x8],xmm6
  65cec7:	48 83 c1 08          	add    rcx,0x8
  65cecb:	4c 3b d7             	cmp    r10,rdi
  65cece:	72 d1                	jb     65cea1 <step3d_t_mod_mp_step3d_t_tile_+0x8ce1>
  65ced0:	49 ff c5             	inc    r13
  65ced3:	4c 03 b5 70 fd ff ff 	add    r14,QWORD PTR [rbp-0x290]
  65ceda:	4c 03 9d b8 fa ff ff 	add    r11,QWORD PTR [rbp-0x548]
  65cee1:	4c 03 a5 b0 fa ff ff 	add    r12,QWORD PTR [rbp-0x550]
  65cee8:	4c 3b ad c0 fa ff ff 	cmp    r13,QWORD PTR [rbp-0x540]
  65ceef:	0f 82 34 ff ff ff    	jb     65ce29 <step3d_t_mod_mp_step3d_t_tile_+0x8c69>
  65cef5:	e9 db 0e 00 00       	jmp    65ddd5 <step3d_t_mod_mp_step3d_t_tile_+0x9c15>
  65cefa:	49 ff c5             	inc    r13
  65cefd:	4c 03 b5 70 fd ff ff 	add    r14,QWORD PTR [rbp-0x290]
  65cf04:	4c 03 9d b8 fa ff ff 	add    r11,QWORD PTR [rbp-0x548]
  65cf0b:	4c 03 a5 b0 fa ff ff 	add    r12,QWORD PTR [rbp-0x550]
  65cf12:	4c 3b ad c0 fa ff ff 	cmp    r13,QWORD PTR [rbp-0x540]
  65cf19:	0f 82 0a ff ff ff    	jb     65ce29 <step3d_t_mod_mp_step3d_t_tile_+0x8c69>
  65cf1f:	e9 16 02 00 00       	jmp    65d13a <step3d_t_mod_mp_step3d_t_tile_+0x8f7a>
  65cf24:	45 33 db             	xor    r11d,r11d
  65cf27:	4c 8b ad a8 fd ff ff 	mov    r13,QWORD PTR [rbp-0x258]
  65cf2e:	45 33 f6             	xor    r14d,r14d
  65cf31:	48 83 bd c0 fa ff ff 	cmp    QWORD PTR [rbp-0x540],0x0
  65cf38:	00 
  65cf39:	0f 8e 33 0f 00 00    	jle    65de72 <step3d_t_mod_mp_step3d_t_tile_+0x9cb2>
  65cf3f:	4c 0f af a5 c0 f9 ff 	imul   r12,QWORD PTR [rbp-0x640]
  65cf46:	ff 
  65cf47:	c4 e2 7d 19 c1       	vbroadcastsd ymm0,xmm1
  65cf4c:	44 89 8d a8 fb ff ff 	mov    DWORD PTR [rbp-0x458],r9d
  65cf53:	44 89 95 70 fb ff ff 	mov    DWORD PTR [rbp-0x490],r10d
  65cf5a:	4c 03 a5 d8 f9 ff ff 	add    r12,QWORD PTR [rbp-0x628]
  65cf61:	4c 8b 8d b0 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x650]
  65cf68:	4c 8b 95 b8 f9 ff ff 	mov    r10,QWORD PTR [rbp-0x648]
  65cf6f:	89 b5 a0 fb ff ff    	mov    DWORD PTR [rbp-0x460],esi
  65cf75:	48 89 85 b0 fd ff ff 	mov    QWORD PTR [rbp-0x250],rax
  65cf7c:	8b 85 90 fd ff ff    	mov    eax,DWORD PTR [rbp-0x270]
  65cf82:	3b 85 88 fd ff ff    	cmp    eax,DWORD PTR [rbp-0x278]
  65cf88:	0f 8c 87 01 00 00    	jl     65d115 <step3d_t_mod_mp_step3d_t_tile_+0x8f55>
  65cf8e:	48 83 ff 04          	cmp    rdi,0x4
  65cf92:	0f 8c 42 0f 00 00    	jl     65deda <step3d_t_mod_mp_step3d_t_tile_+0x9d1a>
  65cf98:	48 8b 85 e8 fb ff ff 	mov    rax,QWORD PTR [rbp-0x418]
  65cf9f:	33 f6                	xor    esi,esi
  65cfa1:	48 8b 8d 00 fc ff ff 	mov    rcx,QWORD PTR [rbp-0x400]
  65cfa8:	4c 8b bd 00 fe ff ff 	mov    r15,QWORD PTR [rbp-0x200]
  65cfaf:	4a 8d 14 30          	lea    rdx,[rax+r14*1]
  65cfb3:	33 c0                	xor    eax,eax
  65cfb5:	49 03 ce             	add    rcx,r14
  65cfb8:	4c 89 ef             	mov    rdi,r13
  65cfbb:	45 33 c0             	xor    r8d,r8d
  65cfbe:	4c 89 ad 08 fc ff ff 	mov    QWORD PTR [rbp-0x3f8],r13
  65cfc5:	4c 89 9d 10 fc ff ff 	mov    QWORD PTR [rbp-0x3f0],r11
  65cfcc:	4d 89 fb             	mov    r11,r15
  65cfcf:	48 83 c6 04          	add    rsi,0x4
  65cfd3:	4e 8d 2c 02          	lea    r13,[rdx+r8*1]
  65cfd7:	c4 c1 7b 10 55 00    	vmovsd xmm2,QWORD PTR [r13+0x0]
  65cfdd:	c4 81 69 16 64 15 00 	vmovhpd xmm4,xmm2,QWORD PTR [r13+r10*1+0x0]
  65cfe4:	4f 8d 6c 55 00       	lea    r13,[r13+r10*2+0x0]
  65cfe9:	c4 c1 7b 10 5d 00    	vmovsd xmm3,QWORD PTR [r13+0x0]
  65cfef:	c4 81 61 16 6c 15 00 	vmovhpd xmm5,xmm3,QWORD PTR [r13+r10*1+0x0]
  65cff6:	4e 8d 2c 01          	lea    r13,[rcx+r8*1]
  65cffa:	c4 c1 7b 10 75 00    	vmovsd xmm6,QWORD PTR [r13+0x0]
  65d000:	4f 8d 04 90          	lea    r8,[r8+r10*4]
  65d004:	c4 01 49 16 44 15 00 	vmovhpd xmm8,xmm6,QWORD PTR [r13+r10*1+0x0]
  65d00b:	4f 8d 6c 55 00       	lea    r13,[r13+r10*2+0x0]
  65d010:	c4 c1 7b 10 7d 00    	vmovsd xmm7,QWORD PTR [r13+0x0]
  65d016:	c4 01 41 16 6c 15 00 	vmovhpd xmm13,xmm7,QWORD PTR [r13+r10*1+0x0]
  65d01d:	4d 8d 2c 04          	lea    r13,[r12+rax*1]
  65d021:	4a 8d 04 88          	lea    rax,[rax+r9*4]
  65d025:	c4 63 5d 18 f5 01    	vinsertf128 ymm14,ymm4,xmm5,0x1
  65d02b:	c4 43 3d 18 fd 01    	vinsertf128 ymm15,ymm8,xmm13,0x1
  65d031:	c4 c1 0d 5c d7       	vsubpd ymm2,ymm14,ymm15
  65d036:	c4 c1 7b 10 65 00    	vmovsd xmm4,QWORD PTR [r13+0x0]
  65d03c:	c4 81 59 16 74 0d 00 	vmovhpd xmm6,xmm4,QWORD PTR [r13+r9*1+0x0]
  65d043:	c5 b5 5e da          	vdivpd ymm3,ymm9,ymm2
  65d047:	4f 8d 6c 4d 00       	lea    r13,[r13+r9*2+0x0]
  65d04c:	c4 c1 7b 10 6d 00    	vmovsd xmm5,QWORD PTR [r13+0x0]
  65d052:	c4 81 51 16 7c 0d 00 	vmovhpd xmm7,xmm5,QWORD PTR [r13+r9*1+0x0]
  65d059:	c5 65 59 c0          	vmulpd ymm8,ymm3,ymm0
  65d05d:	c4 63 4d 18 ef 01    	vinsertf128 ymm13,ymm6,xmm7,0x1
  65d063:	c4 41 3d 59 f5       	vmulpd ymm14,ymm8,ymm13
  65d068:	c5 7d 11 77 08       	vmovupd YMMWORD PTR [rdi+0x8],ymm14
  65d06d:	48 83 c7 20          	add    rdi,0x20
  65d071:	49 3b f3             	cmp    rsi,r11
  65d074:	0f 82 55 ff ff ff    	jb     65cfcf <step3d_t_mod_mp_step3d_t_tile_+0x8e0f>
  65d07a:	4c 8b ad 08 fc ff ff 	mov    r13,QWORD PTR [rbp-0x3f8]
  65d081:	4c 8b 9d 10 fc ff ff 	mov    r11,QWORD PTR [rbp-0x3f0]
  65d088:	48 8b bd 30 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2d0]
  65d08f:	4c 89 d1             	mov    rcx,r10
  65d092:	4c 89 ce             	mov    rsi,r9
  65d095:	49 0f af cf          	imul   rcx,r15
  65d099:	49 0f af f7          	imul   rsi,r15
  65d09d:	4c 3b ff             	cmp    r15,rdi
  65d0a0:	73 49                	jae    65d0eb <step3d_t_mod_mp_step3d_t_tile_+0x8f2b>
  65d0a2:	48 8b 85 00 fc ff ff 	mov    rax,QWORD PTR [rbp-0x400]
  65d0a9:	4b 8d 54 fd 00       	lea    rdx,[r13+r15*8+0x0]
  65d0ae:	4c 8b 85 e8 fb ff ff 	mov    r8,QWORD PTR [rbp-0x418]
  65d0b5:	49 03 c6             	add    rax,r14
  65d0b8:	4d 03 c6             	add    r8,r14
  65d0bb:	c4 a1 7b 10 14 01    	vmovsd xmm2,QWORD PTR [rcx+r8*1]
  65d0c1:	49 ff c7             	inc    r15
  65d0c4:	c5 eb 5c 1c 01       	vsubsd xmm3,xmm2,QWORD PTR [rcx+rax*1]
  65d0c9:	49 03 ca             	add    rcx,r10
  65d0cc:	c5 a3 5e e3          	vdivsd xmm4,xmm11,xmm3
  65d0d0:	c5 f3 59 ec          	vmulsd xmm5,xmm1,xmm4
  65d0d4:	c4 a1 53 59 34 26    	vmulsd xmm6,xmm5,QWORD PTR [rsi+r12*1]
  65d0da:	49 03 f1             	add    rsi,r9
  65d0dd:	c5 fb 11 72 08       	vmovsd QWORD PTR [rdx+0x8],xmm6
  65d0e2:	48 83 c2 08          	add    rdx,0x8
  65d0e6:	4c 3b ff             	cmp    r15,rdi
  65d0e9:	72 d0                	jb     65d0bb <step3d_t_mod_mp_step3d_t_tile_+0x8efb>
  65d0eb:	49 ff c3             	inc    r11
  65d0ee:	4c 03 ad 70 fd ff ff 	add    r13,QWORD PTR [rbp-0x290]
  65d0f5:	4c 03 b5 b8 fa ff ff 	add    r14,QWORD PTR [rbp-0x548]
  65d0fc:	4c 03 a5 b0 fa ff ff 	add    r12,QWORD PTR [rbp-0x550]
  65d103:	4c 3b 9d c0 fa ff ff 	cmp    r11,QWORD PTR [rbp-0x540]
  65d10a:	0f 82 6c fe ff ff    	jb     65cf7c <step3d_t_mod_mp_step3d_t_tile_+0x8dbc>
  65d110:	e9 c0 0c 00 00       	jmp    65ddd5 <step3d_t_mod_mp_step3d_t_tile_+0x9c15>
  65d115:	49 ff c3             	inc    r11
  65d118:	4c 03 ad 70 fd ff ff 	add    r13,QWORD PTR [rbp-0x290]
  65d11f:	4c 03 b5 b8 fa ff ff 	add    r14,QWORD PTR [rbp-0x548]
  65d126:	4c 03 a5 b0 fa ff ff 	add    r12,QWORD PTR [rbp-0x550]
  65d12d:	4c 3b 9d c0 fa ff ff 	cmp    r11,QWORD PTR [rbp-0x540]
  65d134:	0f 82 42 fe ff ff    	jb     65cf7c <step3d_t_mod_mp_step3d_t_tile_+0x8dbc>
  65d13a:	8b b5 a0 fb ff ff    	mov    esi,DWORD PTR [rbp-0x460]
  65d140:	44 8b 8d a8 fb ff ff 	mov    r9d,DWORD PTR [rbp-0x458]
  65d147:	44 8b 95 70 fb ff ff 	mov    r10d,DWORD PTR [rbp-0x490]
  65d14e:	48 8b 95 00 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x200]
  65d155:	48 8b 85 b0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x250]
  65d15c:	48 8b 8d 98 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x468]
  65d163:	44 8b 85 90 fb ff ff 	mov    r8d,DWORD PTR [rbp-0x470]
  65d16a:	48 83 bd a8 f9 ff ff 	cmp    QWORD PTR [rbp-0x658],0x8
  65d171:	08 
  65d172:	0f 85 51 01 00 00    	jne    65d2c9 <step3d_t_mod_mp_step3d_t_tile_+0x9109>
  65d178:	45 33 db             	xor    r11d,r11d
  65d17b:	48 83 bd 28 fc ff ff 	cmp    QWORD PTR [rbp-0x3d8],0x0
  65d182:	00 
  65d183:	0f 8e e5 02 00 00    	jle    65d46e <step3d_t_mod_mp_step3d_t_tile_+0x92ae>
  65d189:	44 89 8d a8 fb ff ff 	mov    DWORD PTR [rbp-0x458],r9d
  65d190:	44 89 95 70 fb ff ff 	mov    DWORD PTR [rbp-0x490],r10d
  65d197:	89 b5 a0 fb ff ff    	mov    DWORD PTR [rbp-0x460],esi
  65d19d:	48 89 85 b0 fd ff ff 	mov    QWORD PTR [rbp-0x250],rax
  65d1a4:	4c 8b 8d a8 fd ff ff 	mov    r9,QWORD PTR [rbp-0x258]
  65d1ab:	4c 8b 95 e0 fa ff ff 	mov    r10,QWORD PTR [rbp-0x520]
  65d1b2:	4c 8b a5 98 fd ff ff 	mov    r12,QWORD PTR [rbp-0x268]
  65d1b9:	4c 8b ad e0 fb ff ff 	mov    r13,QWORD PTR [rbp-0x420]
  65d1c0:	44 8b bd 90 fd ff ff 	mov    r15d,DWORD PTR [rbp-0x270]
  65d1c7:	44 3b bd 88 fd ff ff 	cmp    r15d,DWORD PTR [rbp-0x278]
  65d1ce:	0f 8c b0 00 00 00    	jl     65d284 <step3d_t_mod_mp_step3d_t_tile_+0x90c4>
  65d1d4:	48 83 ff 04          	cmp    rdi,0x4
  65d1d8:	0f 8c 88 02 00 00    	jl     65d466 <step3d_t_mod_mp_step3d_t_tile_+0x92a6>
  65d1de:	4c 89 da             	mov    rdx,r11
  65d1e1:	4c 89 e8             	mov    rax,r13
  65d1e4:	48 0f af 95 70 fd ff 	imul   rdx,QWORD PTR [rbp-0x290]
  65d1eb:	ff 
  65d1ec:	49 0f af c3          	imul   rax,r11
  65d1f0:	4c 8b b5 00 fe ff ff 	mov    r14,QWORD PTR [rbp-0x200]
  65d1f7:	45 33 c0             	xor    r8d,r8d
  65d1fa:	48 03 85 f0 fb ff ff 	add    rax,QWORD PTR [rbp-0x410]
  65d201:	49 8d 34 14          	lea    rsi,[r12+rdx*1]
  65d205:	4d 89 f7             	mov    r15,r14
  65d208:	49 8d 0c 12          	lea    rcx,[r10+rdx*1]
  65d20c:	49 03 d1             	add    rdx,r9
  65d20f:	c4 a1 7d 10 04 c0    	vmovupd ymm0,YMMWORD PTR [rax+r8*8]
  65d215:	c4 a1 7d 5c 4c c2 08 	vsubpd ymm1,ymm0,YMMWORD PTR [rdx+r8*8+0x8]
  65d21c:	c4 a1 75 5c 14 c6    	vsubpd ymm2,ymm1,YMMWORD PTR [rsi+r8*8]
  65d222:	c4 a1 7d 11 54 c1 08 	vmovupd YMMWORD PTR [rcx+r8*8+0x8],ymm2
  65d229:	49 83 c0 04          	add    r8,0x4
  65d22d:	4d 3b c7             	cmp    r8,r15
  65d230:	72 dd                	jb     65d20f <step3d_t_mod_mp_step3d_t_tile_+0x904f>
  65d232:	44 8b bd 90 fd ff ff 	mov    r15d,DWORD PTR [rbp-0x270]
  65d239:	4c 3b f7             	cmp    r14,rdi
  65d23c:	73 46                	jae    65d284 <step3d_t_mod_mp_step3d_t_tile_+0x90c4>
  65d23e:	4c 89 da             	mov    rdx,r11
  65d241:	4c 89 e8             	mov    rax,r13
  65d244:	48 0f af 95 70 fd ff 	imul   rdx,QWORD PTR [rbp-0x290]
  65d24b:	ff 
  65d24c:	49 0f af c3          	imul   rax,r11
  65d250:	48 03 85 f0 fb ff ff 	add    rax,QWORD PTR [rbp-0x410]
  65d257:	49 8d 34 14          	lea    rsi,[r12+rdx*1]
  65d25b:	49 8d 0c 12          	lea    rcx,[r10+rdx*1]
  65d25f:	49 03 d1             	add    rdx,r9
  65d262:	c4 a1 7b 10 04 f0    	vmovsd xmm0,QWORD PTR [rax+r14*8]
  65d268:	c4 a1 7b 5c 4c f2 08 	vsubsd xmm1,xmm0,QWORD PTR [rdx+r14*8+0x8]
  65d26f:	c4 a1 73 5c 14 f6    	vsubsd xmm2,xmm1,QWORD PTR [rsi+r14*8]
  65d275:	c4 a1 7b 11 54 f1 08 	vmovsd QWORD PTR [rcx+r14*8+0x8],xmm2
  65d27c:	49 ff c6             	inc    r14
  65d27f:	4c 3b f7             	cmp    r14,rdi
  65d282:	72 de                	jb     65d262 <step3d_t_mod_mp_step3d_t_tile_+0x90a2>
  65d284:	49 ff c3             	inc    r11
  65d287:	4c 3b 9d 28 fc ff ff 	cmp    r11,QWORD PTR [rbp-0x3d8]
  65d28e:	0f 82 33 ff ff ff    	jb     65d1c7 <step3d_t_mod_mp_step3d_t_tile_+0x9007>
  65d294:	8b b5 a0 fb ff ff    	mov    esi,DWORD PTR [rbp-0x460]
  65d29a:	44 8b 8d a8 fb ff ff 	mov    r9d,DWORD PTR [rbp-0x458]
  65d2a1:	44 8b 95 70 fb ff ff 	mov    r10d,DWORD PTR [rbp-0x490]
  65d2a8:	48 8b 95 00 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x200]
  65d2af:	48 8b 85 b0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x250]
  65d2b6:	48 8b 8d 98 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x468]
  65d2bd:	44 8b 85 90 fb ff ff 	mov    r8d,DWORD PTR [rbp-0x470]
  65d2c4:	e9 67 f8 ff ff       	jmp    65cb30 <step3d_t_mod_mp_step3d_t_tile_+0x8970>
  65d2c9:	45 33 db             	xor    r11d,r11d
  65d2cc:	48 83 bd 28 fc ff ff 	cmp    QWORD PTR [rbp-0x3d8],0x0
  65d2d3:	00 
  65d2d4:	0f 8e 94 01 00 00    	jle    65d46e <step3d_t_mod_mp_step3d_t_tile_+0x92ae>
  65d2da:	44 89 95 70 fb ff ff 	mov    DWORD PTR [rbp-0x490],r10d
  65d2e1:	89 b5 a0 fb ff ff    	mov    DWORD PTR [rbp-0x460],esi
  65d2e7:	44 89 8d a8 fb ff ff 	mov    DWORD PTR [rbp-0x458],r9d
  65d2ee:	48 89 85 b0 fd ff ff 	mov    QWORD PTR [rbp-0x250],rax
  65d2f5:	4c 8b a5 e0 fa ff ff 	mov    r12,QWORD PTR [rbp-0x520]
  65d2fc:	4c 8b b5 98 fd ff ff 	mov    r14,QWORD PTR [rbp-0x268]
  65d303:	4c 8b 95 a8 f9 ff ff 	mov    r10,QWORD PTR [rbp-0x658]
  65d30a:	44 8b bd 90 fd ff ff 	mov    r15d,DWORD PTR [rbp-0x270]
  65d311:	44 3b bd 88 fd ff ff 	cmp    r15d,DWORD PTR [rbp-0x278]
  65d318:	0f 8c 03 01 00 00    	jl     65d421 <step3d_t_mod_mp_step3d_t_tile_+0x9261>
  65d31e:	48 83 ff 04          	cmp    rdi,0x4
  65d322:	0f 8c 95 09 00 00    	jl     65dcbd <step3d_t_mod_mp_step3d_t_tile_+0x9afd>
  65d328:	4c 89 da             	mov    rdx,r11
  65d32b:	4c 89 d8             	mov    rax,r11
  65d32e:	48 0f af 95 70 fd ff 	imul   rdx,QWORD PTR [rbp-0x290]
  65d335:	ff 
  65d336:	48 0f af 85 e0 fb ff 	imul   rax,QWORD PTR [rbp-0x420]
  65d33d:	ff 
  65d33e:	45 33 c0             	xor    r8d,r8d
  65d341:	49 8d 34 16          	lea    rsi,[r14+rdx*1]
  65d345:	4c 8b 8d 00 fe ff ff 	mov    r9,QWORD PTR [rbp-0x200]
  65d34c:	49 8d 0c 14          	lea    rcx,[r12+rdx*1]
  65d350:	48 03 95 a8 fd ff ff 	add    rdx,QWORD PTR [rbp-0x258]
  65d357:	45 33 ed             	xor    r13d,r13d
  65d35a:	48 03 85 f8 fb ff ff 	add    rax,QWORD PTR [rbp-0x408]
  65d361:	4d 89 ce             	mov    r14,r9
  65d364:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  65d369:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  65d370:	4e 8d 3c 28          	lea    r15,[rax+r13*1]
  65d374:	c4 c1 7b 10 07       	vmovsd xmm0,QWORD PTR [r15]
  65d379:	4f 8d 6c 95 00       	lea    r13,[r13+r10*4+0x0]
  65d37e:	c4 81 79 16 14 17    	vmovhpd xmm2,xmm0,QWORD PTR [r15+r10*1]
  65d384:	4f 8d 3c 57          	lea    r15,[r15+r10*2]
  65d388:	c4 c1 7b 10 0f       	vmovsd xmm1,QWORD PTR [r15]
  65d38d:	c4 81 71 16 1c 17    	vmovhpd xmm3,xmm1,QWORD PTR [r15+r10*1]
  65d393:	c4 e3 6d 18 e3 01    	vinsertf128 ymm4,ymm2,xmm3,0x1
  65d399:	c4 a1 5d 5c 6c c2 08 	vsubpd ymm5,ymm4,YMMWORD PTR [rdx+r8*8+0x8]
  65d3a0:	c4 a1 55 5c 34 c6    	vsubpd ymm6,ymm5,YMMWORD PTR [rsi+r8*8]
  65d3a6:	c4 a1 7d 11 74 c1 08 	vmovupd YMMWORD PTR [rcx+r8*8+0x8],ymm6
  65d3ad:	49 83 c0 04          	add    r8,0x4
  65d3b1:	4d 3b c6             	cmp    r8,r14
  65d3b4:	72 ba                	jb     65d370 <step3d_t_mod_mp_step3d_t_tile_+0x91b0>
  65d3b6:	4c 8b b5 98 fd ff ff 	mov    r14,QWORD PTR [rbp-0x268]
  65d3bd:	44 8b bd 90 fd ff ff 	mov    r15d,DWORD PTR [rbp-0x270]
  65d3c4:	4d 89 d0             	mov    r8,r10
  65d3c7:	4d 0f af c1          	imul   r8,r9
  65d3cb:	4c 3b cf             	cmp    r9,rdi
  65d3ce:	73 51                	jae    65d421 <step3d_t_mod_mp_step3d_t_tile_+0x9261>
  65d3d0:	4c 89 da             	mov    rdx,r11
  65d3d3:	4c 89 d8             	mov    rax,r11
  65d3d6:	48 0f af 95 70 fd ff 	imul   rdx,QWORD PTR [rbp-0x290]
  65d3dd:	ff 
  65d3de:	48 0f af 85 e0 fb ff 	imul   rax,QWORD PTR [rbp-0x420]
  65d3e5:	ff 
  65d3e6:	48 03 85 f8 fb ff ff 	add    rax,QWORD PTR [rbp-0x408]
  65d3ed:	49 8d 34 16          	lea    rsi,[r14+rdx*1]
  65d3f1:	49 8d 0c 14          	lea    rcx,[r12+rdx*1]
  65d3f5:	48 03 95 a8 fd ff ff 	add    rdx,QWORD PTR [rbp-0x258]
  65d3fc:	c4 c1 7b 10 04 00    	vmovsd xmm0,QWORD PTR [r8+rax*1]
  65d402:	4d 03 c2             	add    r8,r10
  65d405:	c4 a1 7b 5c 4c ca 08 	vsubsd xmm1,xmm0,QWORD PTR [rdx+r9*8+0x8]
  65d40c:	c4 a1 73 5c 14 ce    	vsubsd xmm2,xmm1,QWORD PTR [rsi+r9*8]
  65d412:	c4 a1 7b 11 54 c9 08 	vmovsd QWORD PTR [rcx+r9*8+0x8],xmm2
  65d419:	49 ff c1             	inc    r9
  65d41c:	4c 3b cf             	cmp    r9,rdi
  65d41f:	72 db                	jb     65d3fc <step3d_t_mod_mp_step3d_t_tile_+0x923c>
  65d421:	49 ff c3             	inc    r11
  65d424:	4c 3b 9d 28 fc ff ff 	cmp    r11,QWORD PTR [rbp-0x3d8]
  65d42b:	0f 82 e0 fe ff ff    	jb     65d311 <step3d_t_mod_mp_step3d_t_tile_+0x9151>
  65d431:	8b b5 a0 fb ff ff    	mov    esi,DWORD PTR [rbp-0x460]
  65d437:	44 8b 8d a8 fb ff ff 	mov    r9d,DWORD PTR [rbp-0x458]
  65d43e:	44 8b 95 70 fb ff ff 	mov    r10d,DWORD PTR [rbp-0x490]
  65d445:	48 8b 95 00 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x200]
  65d44c:	48 8b 85 b0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x250]
  65d453:	48 8b 8d 98 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x468]
  65d45a:	44 8b 85 90 fb ff ff 	mov    r8d,DWORD PTR [rbp-0x470]
  65d461:	e9 ca f6 ff ff       	jmp    65cb30 <step3d_t_mod_mp_step3d_t_tile_+0x8970>
  65d466:	45 33 f6             	xor    r14d,r14d
  65d469:	e9 cb fd ff ff       	jmp    65d239 <step3d_t_mod_mp_step3d_t_tile_+0x9079>
  65d46e:	44 8b 9d 90 fd ff ff 	mov    r11d,DWORD PTR [rbp-0x270]
  65d475:	44 3b 9d 88 fd ff ff 	cmp    r11d,DWORD PTR [rbp-0x278]
  65d47c:	0f 8c b4 00 00 00    	jl     65d536 <step3d_t_mod_mp_step3d_t_tile_+0x9376>
  65d482:	48 83 ff 04          	cmp    rdi,0x4
  65d486:	0f 8c 29 08 00 00    	jl     65dcb5 <step3d_t_mod_mp_step3d_t_tile_+0x9af5>
  65d48c:	4c 8b 85 a8 fd ff ff 	mov    r8,QWORD PTR [rbp-0x258]
  65d493:	49 89 d4             	mov    r12,rdx
  65d496:	4c 8b ad e0 fa ff ff 	mov    r13,QWORD PTR [rbp-0x520]
  65d49d:	45 33 db             	xor    r11d,r11d
  65d4a0:	4c 8b b5 78 fd ff ff 	mov    r14,QWORD PTR [rbp-0x288]
  65d4a7:	4c 8b bd 80 fd ff ff 	mov    r15,QWORD PTR [rbp-0x280]
  65d4ae:	c4 81 35 5e 4c dd 08 	vdivpd ymm1,ymm9,YMMWORD PTR [r13+r11*8+0x8]
  65d4b5:	c4 81 75 59 44 d8 08 	vmulpd ymm0,ymm1,YMMWORD PTR [r8+r11*8+0x8]
  65d4bc:	c4 81 75 59 54 de 08 	vmulpd ymm2,ymm1,YMMWORD PTR [r14+r11*8+0x8]
  65d4c3:	c4 81 7d 11 44 df 08 	vmovupd YMMWORD PTR [r15+r11*8+0x8],ymm0
  65d4ca:	c4 81 7d 11 54 de 08 	vmovupd YMMWORD PTR [r14+r11*8+0x8],ymm2
  65d4d1:	49 83 c3 04          	add    r11,0x4
  65d4d5:	4c 3b da             	cmp    r11,rdx
  65d4d8:	72 d4                	jb     65d4ae <step3d_t_mod_mp_step3d_t_tile_+0x92ee>
  65d4da:	44 8b 85 90 fb ff ff 	mov    r8d,DWORD PTR [rbp-0x470]
  65d4e1:	4c 3b e7             	cmp    r12,rdi
  65d4e4:	0f 83 42 08 00 00    	jae    65dd2c <step3d_t_mod_mp_step3d_t_tile_+0x9b6c>
  65d4ea:	4c 8b 9d a8 fd ff ff 	mov    r11,QWORD PTR [rbp-0x258]
  65d4f1:	4c 8b ad e0 fa ff ff 	mov    r13,QWORD PTR [rbp-0x520]
  65d4f8:	4c 8b b5 78 fd ff ff 	mov    r14,QWORD PTR [rbp-0x288]
  65d4ff:	4c 8b bd 80 fd ff ff 	mov    r15,QWORD PTR [rbp-0x280]
  65d506:	c4 81 23 5e 4c e5 08 	vdivsd xmm1,xmm11,QWORD PTR [r13+r12*8+0x8]
  65d50d:	c4 81 73 59 44 e3 08 	vmulsd xmm0,xmm1,QWORD PTR [r11+r12*8+0x8]
  65d514:	c4 81 73 59 54 e6 08 	vmulsd xmm2,xmm1,QWORD PTR [r14+r12*8+0x8]
  65d51b:	c4 81 7b 11 44 e7 08 	vmovsd QWORD PTR [r15+r12*8+0x8],xmm0
  65d522:	c4 81 7b 11 54 e6 08 	vmovsd QWORD PTR [r14+r12*8+0x8],xmm2
  65d529:	49 ff c4             	inc    r12
  65d52c:	4c 3b e7             	cmp    r12,rdi
  65d52f:	72 d5                	jb     65d506 <step3d_t_mod_mp_step3d_t_tile_+0x9346>
  65d531:	e9 f6 07 00 00       	jmp    65dd2c <step3d_t_mod_mp_step3d_t_tile_+0x9b6c>
  65d536:	48 83 bd f8 fd ff ff 	cmp    QWORD PTR [rbp-0x208],0x2
  65d53d:	02 
  65d53e:	0f 8c cb 03 00 00    	jl     65d90f <step3d_t_mod_mp_step3d_t_tile_+0x974f>
  65d544:	41 bb 01 00 00 00    	mov    r11d,0x1
  65d54a:	48 83 bd 38 fd ff ff 	cmp    QWORD PTR [rbp-0x2c8],0x1
  65d551:	01 
  65d552:	0f 86 b7 03 00 00    	jbe    65d90f <step3d_t_mod_mp_step3d_t_tile_+0x974f>
  65d558:	48 89 85 b0 fd ff ff 	mov    QWORD PTR [rbp-0x250],rax
  65d55f:	89 b5 a0 fb ff ff    	mov    DWORD PTR [rbp-0x460],esi
  65d565:	44 89 8d a8 fb ff ff 	mov    DWORD PTR [rbp-0x458],r9d
  65d56c:	44 89 95 70 fb ff ff 	mov    DWORD PTR [rbp-0x490],r10d
  65d573:	48 8b 85 c8 fa ff ff 	mov    rax,QWORD PTR [rbp-0x538]
  65d57a:	48 8b 8d 58 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x2a8]
  65d581:	49 ff c3             	inc    r11
  65d584:	4c 3b 9d 38 fd ff ff 	cmp    r11,QWORD PTR [rbp-0x2c8]
  65d58b:	0f 83 47 03 00 00    	jae    65d8d8 <step3d_t_mod_mp_step3d_t_tile_+0x9718>
  65d591:	8b 95 90 fd ff ff    	mov    edx,DWORD PTR [rbp-0x270]
  65d597:	3b 95 88 fd ff ff    	cmp    edx,DWORD PTR [rbp-0x278]
  65d59d:	7c e2                	jl     65d581 <step3d_t_mod_mp_step3d_t_tile_+0x93c1>
  65d59f:	48 83 ff 04          	cmp    rdi,0x4
  65d5a3:	0f 8c f6 06 00 00    	jl     65dc9f <step3d_t_mod_mp_step3d_t_tile_+0x9adf>
  65d5a9:	4d 89 de             	mov    r14,r11
  65d5ac:	45 33 ff             	xor    r15d,r15d
  65d5af:	4c 0f af b5 70 fd ff 	imul   r14,QWORD PTR [rbp-0x290]
  65d5b6:	ff 
  65d5b7:	4c 8b 95 60 fd ff ff 	mov    r10,QWORD PTR [rbp-0x2a0]
  65d5be:	4e 8d 2c 30          	lea    r13,[rax+r14*1]
  65d5c2:	4c 8b 8d 68 fd ff ff 	mov    r9,QWORD PTR [rbp-0x298]
  65d5c9:	4c 8b 85 80 fd ff ff 	mov    r8,QWORD PTR [rbp-0x280]
  65d5d0:	48 8b b5 78 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x288]
  65d5d7:	4f 8d 24 32          	lea    r12,[r10+r14*1]
  65d5db:	48 8b 95 00 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x200]
  65d5e2:	4e 8d 14 31          	lea    r10,[rcx+r14*1]
  65d5e6:	48 89 d1             	mov    rcx,rdx
  65d5e9:	4d 03 ce             	add    r9,r14
  65d5ec:	4d 03 c6             	add    r8,r14
  65d5ef:	49 03 f6             	add    rsi,r14
  65d5f2:	4c 03 b5 a8 fd ff ff 	add    r14,QWORD PTR [rbp-0x258]
  65d5f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  65d600:	c4 81 7d 10 64 fe 08 	vmovupd ymm4,YMMWORD PTR [r14+r15*8+0x8]
  65d607:	c4 81 7d 10 44 f9 10 	vmovupd ymm0,YMMWORD PTR [r9+r15*8+0x10]
  65d60e:	c4 81 7d 10 6c fc 10 	vmovupd ymm5,YMMWORD PTR [r12+r15*8+0x10]
  65d615:	c4 81 5d 59 4c f8 08 	vmulpd ymm1,ymm4,YMMWORD PTR [r8+r15*8+0x8]
  65d61c:	c4 a1 5d 59 74 fe 08 	vmulpd ymm6,ymm4,YMMWORD PTR [rsi+r15*8+0x8]
  65d623:	c5 fd 5c d1          	vsubpd ymm2,ymm0,ymm1
  65d627:	c5 55 5c c6          	vsubpd ymm8,ymm5,ymm6
  65d62b:	c5 b5 5e fa          	vdivpd ymm7,ymm9,ymm2
  65d62f:	c4 81 45 59 5c fd 10 	vmulpd ymm3,ymm7,YMMWORD PTR [r13+r15*8+0x10]
  65d636:	c4 41 45 59 e8       	vmulpd ymm13,ymm7,ymm8
  65d63b:	c4 81 7d 11 5c fa 10 	vmovupd YMMWORD PTR [r10+r15*8+0x10],ymm3
  65d642:	c4 01 7d 11 6c fc 10 	vmovupd YMMWORD PTR [r12+r15*8+0x10],ymm13
  65d649:	49 83 c7 04          	add    r15,0x4
  65d64d:	4c 3b f9             	cmp    r15,rcx
  65d650:	72 ae                	jb     65d600 <step3d_t_mod_mp_step3d_t_tile_+0x9440>
  65d652:	48 8b 8d 58 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x2a8]
  65d659:	48 3b d7             	cmp    rdx,rdi
  65d65c:	0f 83 9e 00 00 00    	jae    65d700 <step3d_t_mod_mp_step3d_t_tile_+0x9540>
  65d662:	4d 89 dc             	mov    r12,r11
  65d665:	4c 0f af a5 70 fd ff 	imul   r12,QWORD PTR [rbp-0x290]
  65d66c:	ff 
  65d66d:	4c 8b 85 60 fd ff ff 	mov    r8,QWORD PTR [rbp-0x2a0]
  65d674:	4e 8d 14 20          	lea    r10,[rax+r12*1]
  65d678:	48 8b b5 68 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x298]
  65d67f:	4c 8b b5 80 fd ff ff 	mov    r14,QWORD PTR [rbp-0x280]
  65d686:	4c 8b ad 78 fd ff ff 	mov    r13,QWORD PTR [rbp-0x288]
  65d68d:	4f 8d 0c 20          	lea    r9,[r8+r12*1]
  65d691:	4e 8d 04 21          	lea    r8,[rcx+r12*1]
  65d695:	49 03 f4             	add    rsi,r12
  65d698:	4d 03 f4             	add    r14,r12
  65d69b:	4d 03 ec             	add    r13,r12
  65d69e:	4c 03 a5 a8 fd ff ff 	add    r12,QWORD PTR [rbp-0x258]
  65d6a5:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  65d6a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  65d6b0:	c4 c1 7b 10 64 d4 08 	vmovsd xmm4,QWORD PTR [r12+rdx*8+0x8]
  65d6b7:	c4 c1 5b 59 4c d6 08 	vmulsd xmm1,xmm4,QWORD PTR [r14+rdx*8+0x8]
  65d6be:	c4 c1 5b 59 74 d5 08 	vmulsd xmm6,xmm4,QWORD PTR [r13+rdx*8+0x8]
  65d6c5:	c5 fb 10 44 d6 10    	vmovsd xmm0,QWORD PTR [rsi+rdx*8+0x10]
  65d6cb:	c4 c1 7b 10 6c d1 10 	vmovsd xmm5,QWORD PTR [r9+rdx*8+0x10]
  65d6d2:	c5 fb 5c d1          	vsubsd xmm2,xmm0,xmm1
  65d6d6:	c5 53 5c c6          	vsubsd xmm8,xmm5,xmm6
  65d6da:	c5 a3 5e fa          	vdivsd xmm7,xmm11,xmm2
  65d6de:	c4 c1 43 59 5c d2 10 	vmulsd xmm3,xmm7,QWORD PTR [r10+rdx*8+0x10]
  65d6e5:	c4 41 43 59 e8       	vmulsd xmm13,xmm7,xmm8
  65d6ea:	c4 c1 7b 11 5c d0 10 	vmovsd QWORD PTR [r8+rdx*8+0x10],xmm3
  65d6f1:	c4 41 7b 11 6c d1 10 	vmovsd QWORD PTR [r9+rdx*8+0x10],xmm13
  65d6f8:	48 ff c2             	inc    rdx
  65d6fb:	48 3b d7             	cmp    rdx,rdi
  65d6fe:	72 b0                	jb     65d6b0 <step3d_t_mod_mp_step3d_t_tile_+0x94f0>
  65d700:	49 ff c3             	inc    r11
  65d703:	4c 3b 9d 38 fd ff ff 	cmp    r11,QWORD PTR [rbp-0x2c8]
  65d70a:	0f 82 81 fe ff ff    	jb     65d591 <step3d_t_mod_mp_step3d_t_tile_+0x93d1>
  65d710:	48 89 85 c8 fa ff ff 	mov    QWORD PTR [rbp-0x538],rax
  65d717:	8b b5 a0 fb ff ff    	mov    esi,DWORD PTR [rbp-0x460]
  65d71d:	44 8b 8d a8 fb ff ff 	mov    r9d,DWORD PTR [rbp-0x458]
  65d724:	44 8b 95 70 fb ff ff 	mov    r10d,DWORD PTR [rbp-0x490]
  65d72b:	48 8b 95 00 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x200]
  65d732:	48 8b 85 b0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x250]
  65d739:	48 8b 8d 98 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x468]
  65d740:	44 8b 85 90 fb ff ff 	mov    r8d,DWORD PTR [rbp-0x470]
  65d747:	48 83 ff 04          	cmp    rdi,0x4
  65d74b:	0f 8c 46 05 00 00    	jl     65dc97 <step3d_t_mod_mp_step3d_t_tile_+0x9ad7>
  65d751:	4d 63 fa             	movsxd r15,r10d
  65d754:	45 33 ed             	xor    r13d,r13d
  65d757:	4c 0f af f9          	imul   r15,rcx
  65d75b:	89 b5 a0 fb ff ff    	mov    DWORD PTR [rbp-0x460],esi
  65d761:	49 89 d3             	mov    r11,rdx
  65d764:	44 89 8d a8 fb ff ff 	mov    DWORD PTR [rbp-0x458],r9d
  65d76b:	45 33 e4             	xor    r12d,r12d
  65d76e:	44 89 95 70 fb ff ff 	mov    DWORD PTR [rbp-0x490],r10d
  65d775:	4c 8d 34 40          	lea    r14,[rax+rax*2]
  65d779:	4c 03 bd 58 fb ff ff 	add    r15,QWORD PTR [rbp-0x4a8]
  65d780:	48 8b b5 40 fb ff ff 	mov    rsi,QWORD PTR [rbp-0x4c0]
  65d787:	48 8b bd f0 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x510]
  65d78e:	4c 8b 85 60 fb ff ff 	mov    r8,QWORD PTR [rbp-0x4a0]
  65d795:	4c 8b 8d f8 fa ff ff 	mov    r9,QWORD PTR [rbp-0x508]
  65d79c:	4c 8b 95 00 fb ff ff 	mov    r10,QWORD PTR [rbp-0x500]
  65d7a3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  65d7a8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  65d7af:	00 
  65d7b0:	c4 81 7d 10 14 e8    	vmovupd ymm2,YMMWORD PTR [r8+r13*8]
  65d7b6:	4b 8d 0c 3c          	lea    rcx,[r12+r15*1]
  65d7ba:	c4 a1 7d 10 04 ee    	vmovupd ymm0,YMMWORD PTR [rsi+r13*8]
  65d7c0:	c4 a1 7d 10 1c ef    	vmovupd ymm3,YMMWORD PTR [rdi+r13*8]
  65d7c6:	c4 81 6d 59 0c e9    	vmulpd ymm1,ymm2,YMMWORD PTR [r9+r13*8]
  65d7cc:	c4 81 6d 59 24 ea    	vmulpd ymm4,ymm2,YMMWORD PTR [r10+r13*8]
  65d7d2:	c5 fd 5c e9          	vsubpd ymm5,ymm0,ymm1
  65d7d6:	c5 e5 5c f4          	vsubpd ymm6,ymm3,ymm4
  65d7da:	c5 d5 5e fe          	vdivpd ymm7,ymm5,ymm6
  65d7de:	4d 8d 24 84          	lea    r12,[r12+rax*4]
  65d7e2:	c4 a1 7d 11 3c ee    	vmovupd YMMWORD PTR [rsi+r13*8],ymm7
  65d7e8:	49 83 c5 04          	add    r13,0x4
  65d7ec:	4c 3b ea             	cmp    r13,rdx
  65d7ef:	c4 c3 7d 19 f8 01    	vextractf128 xmm8,ymm7,0x1
  65d7f5:	c5 fb 11 39          	vmovsd QWORD PTR [rcx],xmm7
  65d7f9:	c5 f9 17 3c 08       	vmovhpd QWORD PTR [rax+rcx*1],xmm7
  65d7fe:	c5 7b 11 04 41       	vmovsd QWORD PTR [rcx+rax*2],xmm8
  65d803:	c4 41 79 17 04 0e    	vmovhpd QWORD PTR [r14+rcx*1],xmm8
  65d809:	72 a5                	jb     65d7b0 <step3d_t_mod_mp_step3d_t_tile_+0x95f0>
  65d80b:	8b b5 a0 fb ff ff    	mov    esi,DWORD PTR [rbp-0x460]
  65d811:	44 8b 8d a8 fb ff ff 	mov    r9d,DWORD PTR [rbp-0x458]
  65d818:	44 8b 95 70 fb ff ff 	mov    r10d,DWORD PTR [rbp-0x490]
  65d81f:	48 8b bd 30 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2d0]
  65d826:	48 8b 8d 98 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x468]
  65d82d:	44 8b 85 90 fb ff ff 	mov    r8d,DWORD PTR [rbp-0x470]
  65d834:	49 89 c4             	mov    r12,rax
  65d837:	4d 0f af e3          	imul   r12,r11
  65d83b:	4c 3b df             	cmp    r11,rdi
  65d83e:	0f 83 cb 00 00 00    	jae    65d90f <step3d_t_mod_mp_step3d_t_tile_+0x974f>
  65d844:	4d 63 ea             	movsxd r13,r10d
  65d847:	4c 0f af e9          	imul   r13,rcx
  65d84b:	4c 03 ad 58 fb ff ff 	add    r13,QWORD PTR [rbp-0x4a8]
  65d852:	48 8b 95 40 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x4c0]
  65d859:	48 8b 8d f0 fa ff ff 	mov    rcx,QWORD PTR [rbp-0x510]
  65d860:	4c 8b 85 60 fb ff ff 	mov    r8,QWORD PTR [rbp-0x4a0]
  65d867:	4c 8b b5 f8 fa ff ff 	mov    r14,QWORD PTR [rbp-0x508]
  65d86e:	4c 8b bd 00 fb ff ff 	mov    r15,QWORD PTR [rbp-0x500]
  65d875:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  65d879:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  65d880:	c4 81 7b 10 14 d8    	vmovsd xmm2,QWORD PTR [r8+r11*8]
  65d886:	c4 81 6b 59 0c de    	vmulsd xmm1,xmm2,QWORD PTR [r14+r11*8]
  65d88c:	c4 81 6b 59 24 df    	vmulsd xmm4,xmm2,QWORD PTR [r15+r11*8]
  65d892:	c4 a1 7b 10 04 da    	vmovsd xmm0,QWORD PTR [rdx+r11*8]
  65d898:	c4 a1 7b 10 1c d9    	vmovsd xmm3,QWORD PTR [rcx+r11*8]
  65d89e:	c5 fb 5c e9          	vsubsd xmm5,xmm0,xmm1
  65d8a2:	c5 e3 5c f4          	vsubsd xmm6,xmm3,xmm4
  65d8a6:	c5 d3 5e fe          	vdivsd xmm7,xmm5,xmm6
  65d8aa:	c4 a1 7b 11 3c da    	vmovsd QWORD PTR [rdx+r11*8],xmm7
  65d8b0:	49 ff c3             	inc    r11
  65d8b3:	c4 81 7b 11 3c 2c    	vmovsd QWORD PTR [r12+r13*1],xmm7
  65d8b9:	4c 03 e0             	add    r12,rax
  65d8bc:	4c 3b df             	cmp    r11,rdi
  65d8bf:	72 bf                	jb     65d880 <step3d_t_mod_mp_step3d_t_tile_+0x96c0>
  65d8c1:	48 8b 95 00 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x200]
  65d8c8:	48 8b 8d 98 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x468]
  65d8cf:	44 8b 85 90 fb ff ff 	mov    r8d,DWORD PTR [rbp-0x470]
  65d8d6:	eb 37                	jmp    65d90f <step3d_t_mod_mp_step3d_t_tile_+0x974f>
  65d8d8:	48 89 85 c8 fa ff ff 	mov    QWORD PTR [rbp-0x538],rax
  65d8df:	8b b5 a0 fb ff ff    	mov    esi,DWORD PTR [rbp-0x460]
  65d8e5:	44 8b 8d a8 fb ff ff 	mov    r9d,DWORD PTR [rbp-0x458]
  65d8ec:	44 8b 95 70 fb ff ff 	mov    r10d,DWORD PTR [rbp-0x490]
  65d8f3:	48 8b 95 00 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x200]
  65d8fa:	48 8b 85 b0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x250]
  65d901:	48 8b 8d 98 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x468]
  65d908:	44 8b 85 90 fb ff ff 	mov    r8d,DWORD PTR [rbp-0x470]
  65d90f:	45 33 e4             	xor    r12d,r12d
  65d912:	45 33 ed             	xor    r13d,r13d
  65d915:	45 33 db             	xor    r11d,r11d
  65d918:	45 85 c9             	test   r9d,r9d
  65d91b:	0f 8e 2b 03 00 00    	jle    65dc4c <step3d_t_mod_mp_step3d_t_tile_+0x9a8c>
  65d921:	4c 8b b5 70 fd ff ff 	mov    r14,QWORD PTR [rbp-0x290]
  65d928:	4c 8b bd f8 fd ff ff 	mov    r15,QWORD PTR [rbp-0x208]
  65d92f:	4d 0f af f7          	imul   r14,r15
  65d933:	4c 8d 85 18 fd ff ff 	lea    r8,[rbp-0x2e8]
  65d93a:	4d 89 18             	mov    QWORD PTR [r8],r11
  65d93d:	4c 8b 9d c8 fc ff ff 	mov    r11,QWORD PTR [rbp-0x338]
  65d944:	4d 63 d2             	movsxd r10,r10d
  65d947:	4c 0f af d1          	imul   r10,rcx
  65d94b:	89 b5 a0 fb ff ff    	mov    DWORD PTR [rbp-0x460],esi
  65d951:	4d 03 de             	add    r11,r14
  65d954:	48 8d b5 10 fd ff ff 	lea    rsi,[rbp-0x2f0]
  65d95b:	4c 89 1e             	mov    QWORD PTR [rsi],r11
  65d95e:	4c 8b 9d c0 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x740]
  65d965:	48 8b 36             	mov    rsi,QWORD PTR [rsi]
  65d968:	44 89 8d a8 fb ff ff 	mov    DWORD PTR [rbp-0x458],r9d
  65d96f:	48 89 85 b0 fd ff ff 	mov    QWORD PTR [rbp-0x250],rax
  65d976:	4d 03 de             	add    r11,r14
  65d979:	4c 03 b5 78 fd ff ff 	add    r14,QWORD PTR [rbp-0x288]
  65d980:	48 8d 85 a0 f4 ff ff 	lea    rax,[rbp-0xb60]
  65d987:	4c 89 30             	mov    QWORD PTR [rax],r14
  65d98a:	4c 8b b5 48 fd ff ff 	mov    r14,QWORD PTR [rbp-0x2b8]
  65d991:	4d 0f af f7          	imul   r14,r15
  65d995:	4c 8d 8d 98 f4 ff ff 	lea    r9,[rbp-0xb68]
  65d99c:	4d 89 19             	mov    QWORD PTR [r9],r11
  65d99f:	4c 8b bd c8 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x838]
  65d9a6:	4c 8b 9d 90 f9 ff ff 	mov    r11,QWORD PTR [rbp-0x670]
  65d9ad:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  65d9b0:	49 8b 11             	mov    rdx,QWORD PTR [r9]
  65d9b3:	4d 03 fb             	add    r15,r11
  65d9b6:	4d 03 fa             	add    r15,r10
  65d9b9:	4d 03 fe             	add    r15,r14
  65d9bc:	4c 89 bd e8 fc ff ff 	mov    QWORD PTR [rbp-0x318],r15
  65d9c3:	4c 8b bd d0 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x830]
  65d9ca:	4d 03 df             	add    r11,r15
  65d9cd:	4d 03 d3             	add    r10,r11
  65d9d0:	4d 03 f2             	add    r14,r10
  65d9d3:	4d 8b 18             	mov    r11,QWORD PTR [r8]
  65d9d6:	4c 89 b5 d8 fc ff ff 	mov    QWORD PTR [rbp-0x328],r14
  65d9dd:	48 83 bd b0 fd ff ff 	cmp    QWORD PTR [rbp-0x250],0x8
  65d9e4:	08 
  65d9e5:	0f 85 c1 00 00 00    	jne    65daac <step3d_t_mod_mp_step3d_t_tile_+0x98ec>
  65d9eb:	8b 85 88 fd ff ff    	mov    eax,DWORD PTR [rbp-0x278]
  65d9f1:	3b 85 90 fd ff ff    	cmp    eax,DWORD PTR [rbp-0x270]
  65d9f7:	0f 8f 08 02 00 00    	jg     65dc05 <step3d_t_mod_mp_step3d_t_tile_+0x9a45>
  65d9fd:	48 83 ff 04          	cmp    rdi,0x4
  65da01:	0f 8c 9f 02 00 00    	jl     65dca6 <step3d_t_mod_mp_step3d_t_tile_+0x9ae6>
  65da07:	4c 8b b5 d8 fc ff ff 	mov    r14,QWORD PTR [rbp-0x328]
  65da0e:	45 33 d2             	xor    r10d,r10d
  65da11:	4c 8b bd 00 fe ff ff 	mov    r15,QWORD PTR [rbp-0x200]
  65da18:	4e 8d 0c 2e          	lea    r9,[rsi+r13*1]
  65da1c:	4c 89 ff             	mov    rdi,r15
  65da1f:	4e 8d 04 2a          	lea    r8,[rdx+r13*1]
  65da23:	4a 8d 04 29          	lea    rax,[rcx+r13*1]
  65da27:	4d 03 f3             	add    r14,r11
  65da2a:	c4 81 7d 10 04 d1    	vmovupd ymm0,YMMWORD PTR [r9+r10*8]
  65da30:	c4 81 7d 10 0c d0    	vmovupd ymm1,YMMWORD PTR [r8+r10*8]
  65da36:	c4 a1 7d 59 54 d0 08 	vmulpd ymm2,ymm0,YMMWORD PTR [rax+r10*8+0x8]
  65da3d:	c5 f5 5c da          	vsubpd ymm3,ymm1,ymm2
  65da41:	c4 81 7d 11 1c d0    	vmovupd YMMWORD PTR [r8+r10*8],ymm3
  65da47:	c4 81 7d 11 1c d6    	vmovupd YMMWORD PTR [r14+r10*8],ymm3
  65da4d:	49 83 c2 04          	add    r10,0x4
  65da51:	4c 3b d7             	cmp    r10,rdi
  65da54:	72 d4                	jb     65da2a <step3d_t_mod_mp_step3d_t_tile_+0x986a>
  65da56:	48 8b bd 30 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2d0]
  65da5d:	4c 3b ff             	cmp    r15,rdi
  65da60:	0f 83 9f 01 00 00    	jae    65dc05 <step3d_t_mod_mp_step3d_t_tile_+0x9a45>
  65da66:	48 8b 85 d8 fc ff ff 	mov    rax,QWORD PTR [rbp-0x328]
  65da6d:	4e 8d 14 2e          	lea    r10,[rsi+r13*1]
  65da71:	4e 8d 0c 2a          	lea    r9,[rdx+r13*1]
  65da75:	4e 8d 04 29          	lea    r8,[rcx+r13*1]
  65da79:	49 03 c3             	add    rax,r11
  65da7c:	c4 81 7b 10 04 fa    	vmovsd xmm0,QWORD PTR [r10+r15*8]
  65da82:	c4 81 7b 59 54 f8 08 	vmulsd xmm2,xmm0,QWORD PTR [r8+r15*8+0x8]
  65da89:	c4 81 7b 10 0c f9    	vmovsd xmm1,QWORD PTR [r9+r15*8]
  65da8f:	c5 f3 5c da          	vsubsd xmm3,xmm1,xmm2
  65da93:	c4 81 7b 11 1c f9    	vmovsd QWORD PTR [r9+r15*8],xmm3
  65da99:	c4 a1 7b 11 1c f8    	vmovsd QWORD PTR [rax+r15*8],xmm3
  65da9f:	49 ff c7             	inc    r15
  65daa2:	4c 3b ff             	cmp    r15,rdi
  65daa5:	72 d5                	jb     65da7c <step3d_t_mod_mp_step3d_t_tile_+0x98bc>
  65daa7:	e9 59 01 00 00       	jmp    65dc05 <step3d_t_mod_mp_step3d_t_tile_+0x9a45>
  65daac:	8b 85 88 fd ff ff    	mov    eax,DWORD PTR [rbp-0x278]
  65dab2:	3b 85 90 fd ff ff    	cmp    eax,DWORD PTR [rbp-0x270]
  65dab8:	0f 8f 47 01 00 00    	jg     65dc05 <step3d_t_mod_mp_step3d_t_tile_+0x9a45>
  65dabe:	48 83 ff 04          	cmp    rdi,0x4
  65dac2:	0f 8c e6 01 00 00    	jl     65dcae <step3d_t_mod_mp_step3d_t_tile_+0x9aee>
  65dac8:	4c 8b bd e8 fc ff ff 	mov    r15,QWORD PTR [rbp-0x318]
  65dacf:	45 33 f6             	xor    r14d,r14d
  65dad2:	4e 8d 14 2e          	lea    r10,[rsi+r13*1]
  65dad6:	48 8b 85 00 fe ff ff 	mov    rax,QWORD PTR [rbp-0x200]
  65dadd:	4e 8d 0c 2a          	lea    r9,[rdx+r13*1]
  65dae1:	4c 89 9d 18 fd ff ff 	mov    QWORD PTR [rbp-0x2e8],r11
  65dae8:	4d 03 fb             	add    r15,r11
  65daeb:	4c 89 bd e0 fc ff ff 	mov    QWORD PTR [rbp-0x320],r15
  65daf2:	4e 8d 04 29          	lea    r8,[rcx+r13*1]
  65daf6:	4c 8b bd b0 fd ff ff 	mov    r15,QWORD PTR [rbp-0x250]
  65dafd:	4c 89 a5 28 fd ff ff 	mov    QWORD PTR [rbp-0x2d8],r12
  65db04:	4c 89 ad 20 fd ff ff 	mov    QWORD PTR [rbp-0x2e0],r13
  65db0b:	49 89 c5             	mov    r13,rax
  65db0e:	4d 89 f3             	mov    r11,r14
  65db11:	4f 8d 3c 7f          	lea    r15,[r15+r15*2]
  65db15:	4c 89 ff             	mov    rdi,r15
  65db18:	4c 8b a5 e0 fc ff ff 	mov    r12,QWORD PTR [rbp-0x320]
  65db1f:	4c 8b bd b0 fd ff ff 	mov    r15,QWORD PTR [rbp-0x250]
  65db26:	0f 1f 00             	nop    DWORD PTR [rax]
  65db29:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  65db30:	c4 81 7d 10 04 f2    	vmovupd ymm0,YMMWORD PTR [r10+r14*8]
  65db36:	4b 8d 34 23          	lea    rsi,[r11+r12*1]
  65db3a:	c4 81 7d 10 0c f1    	vmovupd ymm1,YMMWORD PTR [r9+r14*8]
  65db40:	c4 81 7d 59 54 f0 08 	vmulpd ymm2,ymm0,YMMWORD PTR [r8+r14*8+0x8]
  65db47:	c5 f5 5c da          	vsubpd ymm3,ymm1,ymm2
  65db4b:	4f 8d 1c bb          	lea    r11,[r11+r15*4]
  65db4f:	c4 81 7d 11 1c f1    	vmovupd YMMWORD PTR [r9+r14*8],ymm3
  65db55:	49 83 c6 04          	add    r14,0x4
  65db59:	4d 3b f5             	cmp    r14,r13
  65db5c:	c4 e3 7d 19 dc 01    	vextractf128 xmm4,ymm3,0x1
  65db62:	c5 fb 11 1e          	vmovsd QWORD PTR [rsi],xmm3
  65db66:	c4 c1 79 17 1c 37    	vmovhpd QWORD PTR [r15+rsi*1],xmm3
  65db6c:	c4 a1 7b 11 24 7e    	vmovsd QWORD PTR [rsi+r15*2],xmm4
  65db72:	c5 f9 17 24 37       	vmovhpd QWORD PTR [rdi+rsi*1],xmm4
  65db77:	72 b7                	jb     65db30 <step3d_t_mod_mp_step3d_t_tile_+0x9970>
  65db79:	48 8b b5 10 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x2f0]
  65db80:	4c 8b 9d 18 fd ff ff 	mov    r11,QWORD PTR [rbp-0x2e8]
  65db87:	4c 8b ad 20 fd ff ff 	mov    r13,QWORD PTR [rbp-0x2e0]
  65db8e:	4c 8b a5 28 fd ff ff 	mov    r12,QWORD PTR [rbp-0x2d8]
  65db95:	48 8b bd 30 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2d0]
  65db9c:	4c 8b 95 b0 fd ff ff 	mov    r10,QWORD PTR [rbp-0x250]
  65dba3:	4c 0f af d0          	imul   r10,rax
  65dba7:	48 3b c7             	cmp    rax,rdi
  65dbaa:	73 59                	jae    65dc05 <step3d_t_mod_mp_step3d_t_tile_+0x9a45>
  65dbac:	4c 8b bd e8 fc ff ff 	mov    r15,QWORD PTR [rbp-0x318]
  65dbb3:	4e 8d 0c 2e          	lea    r9,[rsi+r13*1]
  65dbb7:	4c 89 a5 28 fd ff ff 	mov    QWORD PTR [rbp-0x2d8],r12
  65dbbe:	4e 8d 04 2a          	lea    r8,[rdx+r13*1]
  65dbc2:	4c 8b a5 b0 fd ff ff 	mov    r12,QWORD PTR [rbp-0x250]
  65dbc9:	4e 8d 34 29          	lea    r14,[rcx+r13*1]
  65dbcd:	4d 03 fb             	add    r15,r11
  65dbd0:	c4 c1 7b 10 04 c1    	vmovsd xmm0,QWORD PTR [r9+rax*8]
  65dbd6:	c4 c1 7b 59 54 c6 08 	vmulsd xmm2,xmm0,QWORD PTR [r14+rax*8+0x8]
  65dbdd:	c4 c1 7b 10 0c c0    	vmovsd xmm1,QWORD PTR [r8+rax*8]
  65dbe3:	c5 f3 5c da          	vsubsd xmm3,xmm1,xmm2
  65dbe7:	c4 c1 7b 11 1c c0    	vmovsd QWORD PTR [r8+rax*8],xmm3
  65dbed:	48 ff c0             	inc    rax
  65dbf0:	c4 81 7b 11 1c 3a    	vmovsd QWORD PTR [r10+r15*1],xmm3
  65dbf6:	4d 03 d4             	add    r10,r12
  65dbf9:	48 3b c7             	cmp    rax,rdi
  65dbfc:	72 d2                	jb     65dbd0 <step3d_t_mod_mp_step3d_t_tile_+0x9a10>
  65dbfe:	4c 8b a5 28 fd ff ff 	mov    r12,QWORD PTR [rbp-0x2d8]
  65dc05:	49 ff c4             	inc    r12
  65dc08:	4c 03 ad f0 fd ff ff 	add    r13,QWORD PTR [rbp-0x210]
  65dc0f:	4c 03 9d e8 fd ff ff 	add    r11,QWORD PTR [rbp-0x218]
  65dc16:	4c 3b a5 f8 fd ff ff 	cmp    r12,QWORD PTR [rbp-0x208]
  65dc1d:	0f 82 ba fd ff ff    	jb     65d9dd <step3d_t_mod_mp_step3d_t_tile_+0x981d>
  65dc23:	8b b5 a0 fb ff ff    	mov    esi,DWORD PTR [rbp-0x460]
  65dc29:	44 8b 8d a8 fb ff ff 	mov    r9d,DWORD PTR [rbp-0x458]
  65dc30:	48 8b 95 00 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x200]
  65dc37:	48 8b 85 b0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x250]
  65dc3e:	48 8b 8d 98 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x468]
  65dc45:	44 8b 85 90 fb ff ff 	mov    r8d,DWORD PTR [rbp-0x470]
  65dc4c:	41 89 f2             	mov    r10d,esi
  65dc4f:	3b b5 d0 fb ff ff    	cmp    esi,DWORD PTR [rbp-0x430]
  65dc55:	0f 82 bb ee ff ff    	jb     65cb16 <step3d_t_mod_mp_step3d_t_tile_+0x8956>
  65dc5b:	48 8b 8d 88 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x678]
  65dc62:	8b b5 b8 f8 ff ff    	mov    esi,DWORD PTR [rbp-0x748]
  65dc68:	ff c6                	inc    esi
  65dc6a:	48 ff c1             	inc    rcx
  65dc6d:	3b b5 a0 f9 ff ff    	cmp    esi,DWORD PTR [rbp-0x660]
  65dc73:	0f 82 9f 90 ff ff    	jb     656d18 <step3d_t_mod_mp_step3d_t_tile_+0x2b58>
  65dc79:	e9 12 89 ff ff       	jmp    656590 <step3d_t_mod_mp_step3d_t_tile_+0x23d0>
  65dc7e:	44 8b 9d 90 fd ff ff 	mov    r11d,DWORD PTR [rbp-0x270]
  65dc85:	44 3b 9d 88 fd ff ff 	cmp    r11d,DWORD PTR [rbp-0x278]
  65dc8c:	0f 8d b5 fa ff ff    	jge    65d747 <step3d_t_mod_mp_step3d_t_tile_+0x9587>
  65dc92:	e9 78 fc ff ff       	jmp    65d90f <step3d_t_mod_mp_step3d_t_tile_+0x974f>
  65dc97:	45 33 db             	xor    r11d,r11d
  65dc9a:	e9 95 fb ff ff       	jmp    65d834 <step3d_t_mod_mp_step3d_t_tile_+0x9674>
  65dc9f:	33 d2                	xor    edx,edx
  65dca1:	e9 b3 f9 ff ff       	jmp    65d659 <step3d_t_mod_mp_step3d_t_tile_+0x9499>
  65dca6:	45 33 ff             	xor    r15d,r15d
  65dca9:	e9 af fd ff ff       	jmp    65da5d <step3d_t_mod_mp_step3d_t_tile_+0x989d>
  65dcae:	33 c0                	xor    eax,eax
  65dcb0:	e9 e7 fe ff ff       	jmp    65db9c <step3d_t_mod_mp_step3d_t_tile_+0x99dc>
  65dcb5:	45 33 e4             	xor    r12d,r12d
  65dcb8:	e9 24 f8 ff ff       	jmp    65d4e1 <step3d_t_mod_mp_step3d_t_tile_+0x9321>
  65dcbd:	45 33 c9             	xor    r9d,r9d
  65dcc0:	e9 ff f6 ff ff       	jmp    65d3c4 <step3d_t_mod_mp_step3d_t_tile_+0x9204>
  65dcc5:	45 33 ed             	xor    r13d,r13d
  65dcc8:	e9 2d ea ff ff       	jmp    65c6fa <step3d_t_mod_mp_step3d_t_tile_+0x853a>
  65dccd:	8b b5 a0 fb ff ff    	mov    esi,DWORD PTR [rbp-0x460]
  65dcd3:	44 8b 8d a8 fb ff ff 	mov    r9d,DWORD PTR [rbp-0x458]
  65dcda:	44 8b 95 70 fb ff ff 	mov    r10d,DWORD PTR [rbp-0x490]
  65dce1:	48 8b 85 b0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x250]
  65dce8:	48 8b 8d 98 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x468]
  65dcef:	44 8b 85 90 fb ff ff 	mov    r8d,DWORD PTR [rbp-0x470]
  65dcf6:	e9 87 f7 ff ff       	jmp    65d482 <step3d_t_mod_mp_step3d_t_tile_+0x92c2>
  65dcfb:	45 33 c0             	xor    r8d,r8d
  65dcfe:	e9 ca ee ff ff       	jmp    65cbcd <step3d_t_mod_mp_step3d_t_tile_+0x8a0d>
  65dd03:	8b b5 a0 fb ff ff    	mov    esi,DWORD PTR [rbp-0x460]
  65dd09:	44 8b 8d a8 fb ff ff 	mov    r9d,DWORD PTR [rbp-0x458]
  65dd10:	44 8b 95 70 fb ff ff 	mov    r10d,DWORD PTR [rbp-0x490]
  65dd17:	48 8b 85 b0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x250]
  65dd1e:	48 8b 8d 98 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x468]
  65dd25:	44 8b 85 90 fb ff ff 	mov    r8d,DWORD PTR [rbp-0x470]
  65dd2c:	45 33 db             	xor    r11d,r11d
  65dd2f:	48 83 bd f8 fd ff ff 	cmp    QWORD PTR [rbp-0x208],0x2
  65dd36:	02 
  65dd37:	0f 8c 41 ff ff ff    	jl     65dc7e <step3d_t_mod_mp_step3d_t_tile_+0x9abe>
  65dd3d:	48 89 85 b0 fd ff ff 	mov    QWORD PTR [rbp-0x250],rax
  65dd44:	89 b5 a0 fb ff ff    	mov    DWORD PTR [rbp-0x460],esi
  65dd4a:	44 89 8d a8 fb ff ff 	mov    DWORD PTR [rbp-0x458],r9d
  65dd51:	44 89 95 70 fb ff ff 	mov    DWORD PTR [rbp-0x490],r10d
  65dd58:	48 8b 85 c8 fa ff ff 	mov    rax,QWORD PTR [rbp-0x538]
  65dd5f:	48 8b 8d 58 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x2a8]
  65dd66:	e9 26 f8 ff ff       	jmp    65d591 <step3d_t_mod_mp_step3d_t_tile_+0x93d1>
  65dd6b:	8b b5 a0 fb ff ff    	mov    esi,DWORD PTR [rbp-0x460]
  65dd71:	44 8b 8d a8 fb ff ff 	mov    r9d,DWORD PTR [rbp-0x458]
  65dd78:	44 8b 95 70 fb ff ff 	mov    r10d,DWORD PTR [rbp-0x490]
  65dd7f:	48 8b 95 00 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x200]
  65dd86:	48 8b bd 30 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2d0]
  65dd8d:	48 8b 8d 98 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x468]
  65dd94:	44 8b 85 90 fb ff ff 	mov    r8d,DWORD PTR [rbp-0x470]
  65dd9b:	e9 e2 f6 ff ff       	jmp    65d482 <step3d_t_mod_mp_step3d_t_tile_+0x92c2>
  65dda0:	8b b5 a0 fb ff ff    	mov    esi,DWORD PTR [rbp-0x460]
  65dda6:	44 8b 8d a8 fb ff ff 	mov    r9d,DWORD PTR [rbp-0x458]
  65ddad:	44 8b 95 70 fb ff ff 	mov    r10d,DWORD PTR [rbp-0x490]
  65ddb4:	48 8b 95 00 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x200]
  65ddbb:	48 8b bd 30 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x2d0]
  65ddc2:	48 8b 8d 98 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x468]
  65ddc9:	44 8b 85 90 fb ff ff 	mov    r8d,DWORD PTR [rbp-0x470]
  65ddd0:	e9 57 ff ff ff       	jmp    65dd2c <step3d_t_mod_mp_step3d_t_tile_+0x9b6c>
  65ddd5:	8b b5 a0 fb ff ff    	mov    esi,DWORD PTR [rbp-0x460]
  65dddb:	44 8b 8d a8 fb ff ff 	mov    r9d,DWORD PTR [rbp-0x458]
  65dde2:	44 8b 95 70 fb ff ff 	mov    r10d,DWORD PTR [rbp-0x490]
  65dde9:	48 8b 95 00 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x200]
  65ddf0:	48 8b 85 b0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x250]
  65ddf7:	48 8b 8d 98 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x468]
  65ddfe:	44 8b 85 90 fb ff ff 	mov    r8d,DWORD PTR [rbp-0x470]
  65de05:	48 83 ff 04          	cmp    rdi,0x4
  65de09:	7c 5a                	jl     65de65 <step3d_t_mod_mp_step3d_t_tile_+0x9ca5>
  65de0b:	4c 8b ad 60 fa ff ff 	mov    r13,QWORD PTR [rbp-0x5a0]
  65de12:	49 89 d3             	mov    r11,rdx
  65de15:	4c 8b b5 98 fd ff ff 	mov    r14,QWORD PTR [rbp-0x268]
  65de1c:	45 33 e4             	xor    r12d,r12d
  65de1f:	c4 01 7d 11 14 e6    	vmovupd YMMWORD PTR [r14+r12*8],ymm10
  65de25:	c4 01 7d 11 54 e5 00 	vmovupd YMMWORD PTR [r13+r12*8+0x0],ymm10
  65de2c:	49 83 c4 04          	add    r12,0x4
  65de30:	4c 3b e2             	cmp    r12,rdx
  65de33:	72 ea                	jb     65de1f <step3d_t_mod_mp_step3d_t_tile_+0x9c5f>
  65de35:	4c 3b df             	cmp    r11,rdi
  65de38:	0f 83 2c f3 ff ff    	jae    65d16a <step3d_t_mod_mp_step3d_t_tile_+0x8faa>
  65de3e:	4c 8b a5 60 fa ff ff 	mov    r12,QWORD PTR [rbp-0x5a0]
  65de45:	45 33 f6             	xor    r14d,r14d
  65de48:	4c 8b ad 98 fd ff ff 	mov    r13,QWORD PTR [rbp-0x268]
  65de4f:	4f 89 74 dd 00       	mov    QWORD PTR [r13+r11*8+0x0],r14
  65de54:	4f 89 34 dc          	mov    QWORD PTR [r12+r11*8],r14
  65de58:	49 ff c3             	inc    r11
  65de5b:	4c 3b df             	cmp    r11,rdi
  65de5e:	72 ef                	jb     65de4f <step3d_t_mod_mp_step3d_t_tile_+0x9c8f>
  65de60:	e9 05 f3 ff ff       	jmp    65d16a <step3d_t_mod_mp_step3d_t_tile_+0x8faa>
  65de65:	45 33 db             	xor    r11d,r11d
  65de68:	eb cb                	jmp    65de35 <step3d_t_mod_mp_step3d_t_tile_+0x9c75>
  65de6a:	45 33 d2             	xor    r10d,r10d
  65de6d:	e9 16 f0 ff ff       	jmp    65ce88 <step3d_t_mod_mp_step3d_t_tile_+0x8cc8>
  65de72:	44 8b 9d 90 fd ff ff 	mov    r11d,DWORD PTR [rbp-0x270]
  65de79:	44 3b 9d 88 fd ff ff 	cmp    r11d,DWORD PTR [rbp-0x278]
  65de80:	7d 83                	jge    65de05 <step3d_t_mod_mp_step3d_t_tile_+0x9c45>
  65de82:	48 83 bd a8 f9 ff ff 	cmp    QWORD PTR [rbp-0x658],0x8
  65de89:	08 
  65de8a:	75 27                	jne    65deb3 <step3d_t_mod_mp_step3d_t_tile_+0x9cf3>
  65de8c:	48 83 bd 28 fc ff ff 	cmp    QWORD PTR [rbp-0x3d8],0x0
  65de93:	00 
  65de94:	0f 8e d4 f5 ff ff    	jle    65d46e <step3d_t_mod_mp_step3d_t_tile_+0x92ae>
  65de9a:	41 bb 01 00 00 00    	mov    r11d,0x1
  65dea0:	48 83 bd 28 fc ff ff 	cmp    QWORD PTR [rbp-0x3d8],0x1
  65dea7:	01 
  65dea8:	0f 87 db f2 ff ff    	ja     65d189 <step3d_t_mod_mp_step3d_t_tile_+0x8fc9>
  65deae:	e9 7d ec ff ff       	jmp    65cb30 <step3d_t_mod_mp_step3d_t_tile_+0x8970>
  65deb3:	48 83 bd 28 fc ff ff 	cmp    QWORD PTR [rbp-0x3d8],0x0
  65deba:	00 
  65debb:	0f 8e ad f5 ff ff    	jle    65d46e <step3d_t_mod_mp_step3d_t_tile_+0x92ae>
  65dec1:	41 bb 01 00 00 00    	mov    r11d,0x1
  65dec7:	48 83 bd 28 fc ff ff 	cmp    QWORD PTR [rbp-0x3d8],0x1
  65dece:	01 
  65decf:	0f 87 05 f4 ff ff    	ja     65d2da <step3d_t_mod_mp_step3d_t_tile_+0x911a>
  65ded5:	e9 56 ec ff ff       	jmp    65cb30 <step3d_t_mod_mp_step3d_t_tile_+0x8970>
  65deda:	45 33 ff             	xor    r15d,r15d
  65dedd:	e9 ad f1 ff ff       	jmp    65d08f <step3d_t_mod_mp_step3d_t_tile_+0x8ecf>
  65dee2:	45 33 e4             	xor    r12d,r12d
  65dee5:	e9 7b e9 ff ff       	jmp    65c865 <step3d_t_mod_mp_step3d_t_tile_+0x86a5>
  65deea:	33 ff                	xor    edi,edi
  65deec:	e9 99 e1 ff ff       	jmp    65c08a <step3d_t_mod_mp_step3d_t_tile_+0x7eca>
  65def1:	45 33 c0             	xor    r8d,r8d
  65def4:	4d 85 db             	test   r11,r11
  65def7:	0f 85 73 df ff ff    	jne    65be70 <step3d_t_mod_mp_step3d_t_tile_+0x7cb0>
  65defd:	eb eb                	jmp    65deea <step3d_t_mod_mp_step3d_t_tile_+0x9d2a>
  65deff:	33 c0                	xor    eax,eax
  65df01:	e9 ce 95 ff ff       	jmp    6574d4 <step3d_t_mod_mp_step3d_t_tile_+0x3314>
  65df06:	48 8b 95 88 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x478]
  65df0d:	4c 8b a5 78 fb ff ff 	mov    r12,QWORD PTR [rbp-0x488]
  65df14:	4c 8b ad 80 fb ff ff 	mov    r13,QWORD PTR [rbp-0x480]
  65df1b:	e9 dc e1 ff ff       	jmp    65c0fc <step3d_t_mod_mp_step3d_t_tile_+0x7f3c>
  65df20:	8b 85 90 fd ff ff    	mov    eax,DWORD PTR [rbp-0x270]
  65df26:	3b 85 88 fd ff ff    	cmp    eax,DWORD PTR [rbp-0x278]
  65df2c:	0f 8d 84 dd ff ff    	jge    65bcb6 <step3d_t_mod_mp_step3d_t_tile_+0x7af6>
  65df32:	e9 c5 e1 ff ff       	jmp    65c0fc <step3d_t_mod_mp_step3d_t_tile_+0x7f3c>
  65df37:	48 8b 95 88 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x478]
  65df3e:	4c 8b a5 78 fb ff ff 	mov    r12,QWORD PTR [rbp-0x488]
  65df45:	4c 8b ad 80 fb ff ff 	mov    r13,QWORD PTR [rbp-0x480]
  65df4c:	4c 8b 9d 30 fd ff ff 	mov    r11,QWORD PTR [rbp-0x2d0]
  65df53:	e9 5e dd ff ff       	jmp    65bcb6 <step3d_t_mod_mp_step3d_t_tile_+0x7af6>
  65df58:	33 d2                	xor    edx,edx
  65df5a:	e9 0c 99 ff ff       	jmp    65786b <step3d_t_mod_mp_step3d_t_tile_+0x36ab>
  65df5f:	48 8b 95 88 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x478]
  65df66:	4c 8b a5 78 fb ff ff 	mov    r12,QWORD PTR [rbp-0x488]
  65df6d:	4c 8b ad 80 fb ff ff 	mov    r13,QWORD PTR [rbp-0x480]
  65df74:	4c 8b 9d 30 fd ff ff 	mov    r11,QWORD PTR [rbp-0x2d0]
  65df7b:	e9 7c e1 ff ff       	jmp    65c0fc <step3d_t_mod_mp_step3d_t_tile_+0x7f3c>
  65df80:	45 33 d2             	xor    r10d,r10d
  65df83:	e9 c8 aa ff ff       	jmp    658a50 <step3d_t_mod_mp_step3d_t_tile_+0x4890>
  65df88:	33 c9                	xor    ecx,ecx
  65df8a:	e9 e9 b1 ff ff       	jmp    659178 <step3d_t_mod_mp_step3d_t_tile_+0x4fb8>
  65df8f:	45 33 f6             	xor    r14d,r14d
  65df92:	e9 1e b9 ff ff       	jmp    6598b5 <step3d_t_mod_mp_step3d_t_tile_+0x56f5>
  65df97:	48 83 bd 70 fd ff ff 	cmp    QWORD PTR [rbp-0x290],0x4
  65df9e:	04 
  65df9f:	7c 6d                	jl     65e00e <step3d_t_mod_mp_step3d_t_tile_+0x9e4e>
  65dfa1:	48 8b 8d a8 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x758]
  65dfa8:	33 ff                	xor    edi,edi
  65dfaa:	48 8b 95 a0 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x760]
  65dfb1:	48 8b 85 78 ff ff ff 	mov    rax,QWORD PTR [rbp-0x88]
  65dfb8:	49 89 c0             	mov    r8,rax
  65dfbb:	48 03 ce             	add    rcx,rsi
  65dfbe:	48 03 d6             	add    rdx,rsi
  65dfc1:	c5 fd 10 04 fa       	vmovupd ymm0,YMMWORD PTR [rdx+rdi*8]
  65dfc6:	c5 fd 11 04 f9       	vmovupd YMMWORD PTR [rcx+rdi*8],ymm0
  65dfcb:	48 83 c7 04          	add    rdi,0x4
  65dfcf:	49 3b f8             	cmp    rdi,r8
  65dfd2:	72 ed                	jb     65dfc1 <step3d_t_mod_mp_step3d_t_tile_+0x9e01>
  65dfd4:	48 3b 85 70 fd ff ff 	cmp    rax,QWORD PTR [rbp-0x290]
  65dfdb:	0f 83 4e bf ff ff    	jae    659f2f <step3d_t_mod_mp_step3d_t_tile_+0x5d6f>
  65dfe1:	48 8b 95 a8 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x758]
  65dfe8:	48 8b bd 70 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x290]
  65dfef:	48 03 d6             	add    rdx,rsi
  65dff2:	48 03 b5 a0 f8 ff ff 	add    rsi,QWORD PTR [rbp-0x760]
  65dff9:	48 8b 0c c6          	mov    rcx,QWORD PTR [rsi+rax*8]
  65dffd:	48 89 0c c2          	mov    QWORD PTR [rdx+rax*8],rcx
  65e001:	48 ff c0             	inc    rax
  65e004:	48 3b c7             	cmp    rax,rdi
  65e007:	72 f0                	jb     65dff9 <step3d_t_mod_mp_step3d_t_tile_+0x9e39>
  65e009:	e9 21 bf ff ff       	jmp    659f2f <step3d_t_mod_mp_step3d_t_tile_+0x5d6f>
  65e00e:	33 c0                	xor    eax,eax
  65e010:	eb c2                	jmp    65dfd4 <step3d_t_mod_mp_step3d_t_tile_+0x9e14>
  65e012:	45 33 db             	xor    r11d,r11d
  65e015:	e9 61 c0 ff ff       	jmp    65a07b <step3d_t_mod_mp_step3d_t_tile_+0x5ebb>
  65e01a:	33 c0                	xor    eax,eax
  65e01c:	e9 eb c2 ff ff       	jmp    65a30c <step3d_t_mod_mp_step3d_t_tile_+0x614c>
  65e021:	4c 8b b5 50 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xab0]
  65e028:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
  65e02c:	c4 81 7b 10 04 2e    	vmovsd xmm0,QWORD PTR [r14+r13*1]
  65e032:	c5 f9 2e c1          	vucomisd xmm0,xmm1
  65e036:	0f 85 78 cc ff ff    	jne    65acb4 <step3d_t_mod_mp_step3d_t_tile_+0x6af4>
  65e03c:	0f 8a 72 cc ff ff    	jp     65acb4 <step3d_t_mod_mp_step3d_t_tile_+0x6af4>
  65e042:	4c 89 85 f0 f4 ff ff 	mov    QWORD PTR [rbp-0xb10],r8
  65e049:	4c 8b 85 18 f5 ff ff 	mov    r8,QWORD PTR [rbp-0xae8]
  65e050:	4c 8b bd 88 fe ff ff 	mov    r15,QWORD PTR [rbp-0x178]
  65e057:	4c 8b b5 70 fe ff ff 	mov    r14,QWORD PTR [rbp-0x190]
  65e05e:	4c 8b ad 20 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xae0]
  65e065:	4d 0f af f8          	imul   r15,r8
  65e069:	4d 0f af f5          	imul   r14,r13
  65e06d:	4d 03 fe             	add    r15,r14
  65e070:	4d 89 ee             	mov    r14,r13
  65e073:	4c 0f af f0          	imul   r14,rax
  65e077:	4c 0f af ad 70 ff ff 	imul   r13,QWORD PTR [rbp-0x90]
  65e07e:	ff 
  65e07f:	c4 81 7b 10 04 27    	vmovsd xmm0,QWORD PTR [r15+r12*1]
  65e085:	4d 89 c7             	mov    r15,r8
  65e088:	4c 0f af bd 90 f5 ff 	imul   r15,QWORD PTR [rbp-0xa70]
  65e08f:	ff 
  65e090:	4c 03 fe             	add    r15,rsi
  65e093:	4f 8d 44 c5 00       	lea    r8,[r13+r8*8+0x0]
  65e098:	4c 8b ad 60 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xaa0]
  65e09f:	c4 81 7b 59 0c 3e    	vmulsd xmm1,xmm0,QWORD PTR [r14+r15*1]
  65e0a5:	c4 81 7b 11 0c 28    	vmovsd QWORD PTR [r8+r13*1],xmm1
  65e0ab:	4c 8b 85 f0 f4 ff ff 	mov    r8,QWORD PTR [rbp-0xb10]
  65e0b2:	e9 fd cb ff ff       	jmp    65acb4 <step3d_t_mod_mp_step3d_t_tile_+0x6af4>
  65e0b7:	4c 8b b5 50 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xab0]
  65e0be:	c4 81 7b 10 04 2e    	vmovsd xmm0,QWORD PTR [r14+r13*1]
  65e0c4:	c5 f9 2e 05 b4 e0 1e 	vucomisd xmm0,QWORD PTR [rip+0x1ee0b4]        # 84c180 <__STRLITPACK_0.112+0x70>
  65e0cb:	00 
  65e0cc:	0f 85 c3 cb ff ff    	jne    65ac95 <step3d_t_mod_mp_step3d_t_tile_+0x6ad5>
  65e0d2:	0f 8a bd cb ff ff    	jp     65ac95 <step3d_t_mod_mp_step3d_t_tile_+0x6ad5>
  65e0d8:	48 89 b5 10 f5 ff ff 	mov    QWORD PTR [rbp-0xaf0],rsi
  65e0df:	48 8b b5 18 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xae8]
  65e0e6:	4c 8b bd 88 fe ff ff 	mov    r15,QWORD PTR [rbp-0x178]
  65e0ed:	4c 8b b5 70 fe ff ff 	mov    r14,QWORD PTR [rbp-0x190]
  65e0f4:	4c 8b ad 20 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xae0]
  65e0fb:	4c 0f af fe          	imul   r15,rsi
  65e0ff:	4d 0f af f5          	imul   r14,r13
  65e103:	4d 03 fe             	add    r15,r14
  65e106:	4d 89 ee             	mov    r14,r13
  65e109:	4c 0f af f0          	imul   r14,rax
  65e10d:	4c 0f af ad 70 ff ff 	imul   r13,QWORD PTR [rbp-0x90]
  65e114:	ff 
  65e115:	c4 81 7b 10 04 27    	vmovsd xmm0,QWORD PTR [r15+r12*1]
  65e11b:	49 89 f7             	mov    r15,rsi
  65e11e:	4c 0f af bd 90 f5 ff 	imul   r15,QWORD PTR [rbp-0xa70]
  65e125:	ff 
  65e126:	4c 03 bd e0 f8 ff ff 	add    r15,QWORD PTR [rbp-0x720]
  65e12d:	49 8d 74 f5 00       	lea    rsi,[r13+rsi*8+0x0]
  65e132:	4c 8b ad 60 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xaa0]
  65e139:	c4 81 7b 59 0c 3e    	vmulsd xmm1,xmm0,QWORD PTR [r14+r15*1]
  65e13f:	c4 a1 7b 11 0c 2e    	vmovsd QWORD PTR [rsi+r13*1],xmm1
  65e145:	48 8b b5 10 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xaf0]
  65e14c:	e9 63 cb ff ff       	jmp    65acb4 <step3d_t_mod_mp_step3d_t_tile_+0x6af4>
  65e151:	33 c0                	xor    eax,eax
  65e153:	e9 fe d0 ff ff       	jmp    65b256 <step3d_t_mod_mp_step3d_t_tile_+0x7096>
  65e158:	45 33 f6             	xor    r14d,r14d
  65e15b:	e9 6e d4 ff ff       	jmp    65b5ce <step3d_t_mod_mp_step3d_t_tile_+0x740e>
  65e160:	48 8b 85 a0 fa ff ff 	mov    rax,QWORD PTR [rbp-0x560]
  65e167:	48 89 85 80 fa ff ff 	mov    QWORD PTR [rbp-0x580],rax
  65e16e:	48 3b 85 98 fa ff ff 	cmp    rax,QWORD PTR [rbp-0x568]
  65e175:	0f 83 65 d5 ff ff    	jae    65b6e0 <step3d_t_mod_mp_step3d_t_tile_+0x7520>
  65e17b:	48 8b 85 18 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x6e8]
  65e182:	4c 8b 38             	mov    r15,QWORD PTR [rax]
  65e185:	48 8b 85 80 fa ff ff 	mov    rax,QWORD PTR [rbp-0x580]
  65e18c:	48 8d 50 01          	lea    rdx,[rax+0x1]
  65e190:	48 89 95 a0 fa ff ff 	mov    QWORD PTR [rbp-0x560],rdx
  65e197:	e9 92 aa ff ff       	jmp    658c2e <step3d_t_mod_mp_step3d_t_tile_+0x4a6e>
  65e19c:	c7 85 80 fb ff ff 01 	mov    DWORD PTR [rbp-0x480],0x1
  65e1a3:	00 00 00 
  65e1a6:	e9 4c ce ff ff       	jmp    65aff7 <step3d_t_mod_mp_step3d_t_tile_+0x6e37>
  65e1ab:	44 3b b5 58 ff ff ff 	cmp    r14d,DWORD PTR [rbp-0xa8]
  65e1b2:	0f 8c fc ca ff ff    	jl     65acb4 <step3d_t_mod_mp_step3d_t_tile_+0x6af4>
  65e1b8:	44 3b b5 28 fe ff ff 	cmp    r14d,DWORD PTR [rbp-0x1d8]
  65e1bf:	0f 8f ef ca ff ff    	jg     65acb4 <step3d_t_mod_mp_step3d_t_tile_+0x6af4>
  65e1c5:	44 3b ad 18 fb ff ff 	cmp    r13d,DWORD PTR [rbp-0x4e8]
  65e1cc:	0f 8c e2 ca ff ff    	jl     65acb4 <step3d_t_mod_mp_step3d_t_tile_+0x6af4>
  65e1d2:	44 3b ad 28 fb ff ff 	cmp    r13d,DWORD PTR [rbp-0x4d8]
  65e1d9:	0f 8f d5 ca ff ff    	jg     65acb4 <step3d_t_mod_mp_step3d_t_tile_+0x6af4>
  65e1df:	4d 63 f6             	movsxd r14,r14d
  65e1e2:	4d 63 ed             	movsxd r13,r13d
  65e1e5:	4c 89 b5 00 f5 ff ff 	mov    QWORD PTR [rbp-0xb00],r14
  65e1ec:	4c 89 ad 08 f5 ff ff 	mov    QWORD PTR [rbp-0xaf8],r13
  65e1f3:	41 f6 00 01          	test   BYTE PTR [r8],0x1
  65e1f7:	0f 84 b7 00 00 00    	je     65e2b4 <step3d_t_mod_mp_step3d_t_tile_+0xa0f4>
  65e1fd:	4d 89 f5             	mov    r13,r14
  65e200:	4c 89 a5 f8 f4 ff ff 	mov    QWORD PTR [rbp-0xb08],r12
  65e207:	4c 8b bd 90 fe ff ff 	mov    r15,QWORD PTR [rbp-0x170]
  65e20e:	4c 8b a5 68 fe ff ff 	mov    r12,QWORD PTR [rbp-0x198]
  65e215:	4c 8b b5 08 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xaf8]
  65e21c:	4d 0f af fd          	imul   r15,r13
  65e220:	4d 0f af e6          	imul   r12,r14
  65e224:	4c 0f af b5 70 ff ff 	imul   r14,QWORD PTR [rbp-0x90]
  65e22b:	ff 
  65e22c:	4d 03 fc             	add    r15,r12
  65e22f:	4c 8b a5 78 f5 ff ff 	mov    r12,QWORD PTR [rbp-0xa88]
  65e236:	c4 81 7b 10 04 27    	vmovsd xmm0,QWORD PTR [r15+r12*1]
  65e23c:	4f 8d 24 ee          	lea    r12,[r14+r13*8]
  65e240:	4c 8b ac 39 60 fe ff 	mov    r13,QWORD PTR [rcx+rdi*1-0x1a0]
  65e247:	ff 
  65e248:	49 f7 dd             	neg    r13
  65e24b:	4c 8b b5 a0 fa ff ff 	mov    r14,QWORD PTR [rbp-0x560]
  65e252:	4c 03 ad 68 f5 ff ff 	add    r13,QWORD PTR [rbp-0xa98]
  65e259:	4c 2b b4 39 78 fe ff 	sub    r14,QWORD PTR [rcx+rdi*1-0x188]
  65e260:	ff 
  65e261:	4c 0f af ac 39 58 fe 	imul   r13,QWORD PTR [rcx+rdi*1-0x1a8]
  65e268:	ff ff 
  65e26a:	4c 0f af b4 39 70 fe 	imul   r14,QWORD PTR [rcx+rdi*1-0x190]
  65e271:	ff ff 
  65e273:	4c 8b bc 39 48 fe ff 	mov    r15,QWORD PTR [rcx+rdi*1-0x1b8]
  65e27a:	ff 
  65e27b:	49 f7 df             	neg    r15
  65e27e:	4d 03 fb             	add    r15,r11
  65e281:	4c 0f af bc 39 40 fe 	imul   r15,QWORD PTR [rcx+rdi*1-0x1c0]
  65e288:	ff ff 
  65e28a:	4c 03 ac 39 08 fe ff 	add    r13,QWORD PTR [rcx+rdi*1-0x1f8]
  65e291:	ff 
  65e292:	4d 03 f5             	add    r14,r13
  65e295:	4c 8b ad 58 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xaa8]
  65e29c:	c4 81 7b 59 0c 3e    	vmulsd xmm1,xmm0,QWORD PTR [r14+r15*1]
  65e2a2:	c4 81 7b 11 0c 2c    	vmovsd QWORD PTR [r12+r13*1],xmm1
  65e2a8:	4c 8b a5 f8 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb08]
  65e2af:	e9 00 ca ff ff       	jmp    65acb4 <step3d_t_mod_mp_step3d_t_tile_+0x6af4>
  65e2b4:	4d 89 f5             	mov    r13,r14
  65e2b7:	4c 8b b5 08 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xaf8]
  65e2be:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  65e2c2:	4c 0f af ad 48 f5 ff 	imul   r13,QWORD PTR [rbp-0xab8]
  65e2c9:	ff 
  65e2ca:	4c 0f af b5 40 f5 ff 	imul   r14,QWORD PTR [rbp-0xac0]
  65e2d1:	ff 
  65e2d2:	4d 03 ee             	add    r13,r14
  65e2d5:	4c 8b bd 28 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xad8]
  65e2dc:	c4 81 7b 10 4c 3d 00 	vmovsd xmm1,QWORD PTR [r13+r15*1+0x0]
  65e2e3:	c5 f9 2e c8          	vucomisd xmm1,xmm0
  65e2e7:	7a 06                	jp     65e2ef <step3d_t_mod_mp_step3d_t_tile_+0xa12f>
  65e2e9:	0f 84 b4 00 00 00    	je     65e3a3 <step3d_t_mod_mp_step3d_t_tile_+0xa1e3>
  65e2ef:	c5 fb 10 05 89 de 1e 	vmovsd xmm0,QWORD PTR [rip+0x1ede89]        # 84c180 <__STRLITPACK_0.112+0x70>
  65e2f6:	00 
  65e2f7:	c5 f9 2e c8          	vucomisd xmm1,xmm0
  65e2fb:	0f 85 b3 c9 ff ff    	jne    65acb4 <step3d_t_mod_mp_step3d_t_tile_+0x6af4>
  65e301:	0f 8a ad c9 ff ff    	jp     65acb4 <step3d_t_mod_mp_step3d_t_tile_+0x6af4>
  65e307:	4c 8b b5 30 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xad0]
  65e30e:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
  65e312:	c4 81 7b 10 04 2e    	vmovsd xmm0,QWORD PTR [r14+r13*1]
  65e318:	c5 f9 2e c1          	vucomisd xmm0,xmm1
  65e31c:	0f 85 92 c9 ff ff    	jne    65acb4 <step3d_t_mod_mp_step3d_t_tile_+0x6af4>
  65e322:	0f 8a 8c c9 ff ff    	jp     65acb4 <step3d_t_mod_mp_step3d_t_tile_+0x6af4>
  65e328:	4c 8b ad 00 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xb00]
  65e32f:	4c 89 a5 f8 f4 ff ff 	mov    QWORD PTR [rbp-0xb08],r12
  65e336:	4c 8b b5 90 fe ff ff 	mov    r14,QWORD PTR [rbp-0x170]
  65e33d:	4c 8b bd 68 fe ff ff 	mov    r15,QWORD PTR [rbp-0x198]
  65e344:	4c 8b a5 08 f5 ff ff 	mov    r12,QWORD PTR [rbp-0xaf8]
  65e34b:	4d 0f af f5          	imul   r14,r13
  65e34f:	4d 0f af fc          	imul   r15,r12
  65e353:	4d 03 f7             	add    r14,r15
  65e356:	4c 8b bd 78 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xa88]
  65e35d:	c4 81 7b 10 04 3e    	vmovsd xmm0,QWORD PTR [r14+r15*1]
  65e363:	4d 89 ef             	mov    r15,r13
  65e366:	4c 0f af bd 90 f5 ff 	imul   r15,QWORD PTR [rbp-0xa70]
  65e36d:	ff 
  65e36e:	4d 89 e6             	mov    r14,r12
  65e371:	4c 03 fe             	add    r15,rsi
  65e374:	4c 0f af f0          	imul   r14,rax
  65e378:	4c 0f af a5 70 ff ff 	imul   r12,QWORD PTR [rbp-0x90]
  65e37f:	ff 
  65e380:	c4 81 7b 59 0c 3e    	vmulsd xmm1,xmm0,QWORD PTR [r14+r15*1]
  65e386:	4f 8d 24 ec          	lea    r12,[r12+r13*8]
  65e38a:	4c 8b ad 58 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xaa8]
  65e391:	c4 81 7b 11 0c 2c    	vmovsd QWORD PTR [r12+r13*1],xmm1
  65e397:	4c 8b a5 f8 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb08]
  65e39e:	e9 11 c9 ff ff       	jmp    65acb4 <step3d_t_mod_mp_step3d_t_tile_+0x6af4>
  65e3a3:	4c 8b b5 30 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xad0]
  65e3aa:	c4 81 7b 10 04 2e    	vmovsd xmm0,QWORD PTR [r14+r13*1]
  65e3b0:	c5 f9 2e 05 c8 dd 1e 	vucomisd xmm0,QWORD PTR [rip+0x1eddc8]        # 84c180 <__STRLITPACK_0.112+0x70>
  65e3b7:	00 
  65e3b8:	0f 85 31 ff ff ff    	jne    65e2ef <step3d_t_mod_mp_step3d_t_tile_+0xa12f>
  65e3be:	0f 8a 2b ff ff ff    	jp     65e2ef <step3d_t_mod_mp_step3d_t_tile_+0xa12f>
  65e3c4:	4c 8b ad 00 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xb00]
  65e3cb:	4c 89 a5 f8 f4 ff ff 	mov    QWORD PTR [rbp-0xb08],r12
  65e3d2:	4c 8b b5 90 fe ff ff 	mov    r14,QWORD PTR [rbp-0x170]
  65e3d9:	4c 8b bd 68 fe ff ff 	mov    r15,QWORD PTR [rbp-0x198]
  65e3e0:	4c 8b a5 08 f5 ff ff 	mov    r12,QWORD PTR [rbp-0xaf8]
  65e3e7:	4d 0f af f5          	imul   r14,r13
  65e3eb:	4d 0f af fc          	imul   r15,r12
  65e3ef:	4d 03 f7             	add    r14,r15
  65e3f2:	4c 8b bd 78 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xa88]
  65e3f9:	c4 81 7b 10 04 3e    	vmovsd xmm0,QWORD PTR [r14+r15*1]
  65e3ff:	4d 89 ef             	mov    r15,r13
  65e402:	4c 0f af bd 90 f5 ff 	imul   r15,QWORD PTR [rbp-0xa70]
  65e409:	ff 
  65e40a:	4d 89 e6             	mov    r14,r12
  65e40d:	4c 0f af f0          	imul   r14,rax
  65e411:	4c 0f af a5 70 ff ff 	imul   r12,QWORD PTR [rbp-0x90]
  65e418:	ff 
  65e419:	4c 03 bd d8 f8 ff ff 	add    r15,QWORD PTR [rbp-0x728]
  65e420:	4f 8d 24 ec          	lea    r12,[r12+r13*8]
  65e424:	4c 8b ad 58 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xaa8]
  65e42b:	c4 81 7b 59 0c 3e    	vmulsd xmm1,xmm0,QWORD PTR [r14+r15*1]
  65e431:	c4 81 7b 11 0c 2c    	vmovsd QWORD PTR [r12+r13*1],xmm1
  65e437:	4c 8b a5 f8 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb08]
  65e43e:	e9 71 c8 ff ff       	jmp    65acb4 <step3d_t_mod_mp_step3d_t_tile_+0x6af4>
  65e443:	48 c7 85 f8 fe ff ff 	mov    QWORD PTR [rbp-0x108],0x0
  65e44a:	00 00 00 00 
  65e44e:	e9 f2 c2 ff ff       	jmp    65a745 <step3d_t_mod_mp_step3d_t_tile_+0x6585>
  65e453:	48 83 bd 70 fd ff ff 	cmp    QWORD PTR [rbp-0x290],0x4
  65e45a:	04 
  65e45b:	7c 6d                	jl     65e4ca <step3d_t_mod_mp_step3d_t_tile_+0xa30a>
  65e45d:	48 8b 8d b0 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x750]
  65e464:	33 ff                	xor    edi,edi
  65e466:	48 8b 95 d0 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x530]
  65e46d:	48 8b 85 78 ff ff ff 	mov    rax,QWORD PTR [rbp-0x88]
  65e474:	49 89 c0             	mov    r8,rax
  65e477:	48 03 ce             	add    rcx,rsi
  65e47a:	48 03 d6             	add    rdx,rsi
  65e47d:	c5 fd 10 04 fa       	vmovupd ymm0,YMMWORD PTR [rdx+rdi*8]
  65e482:	c5 fd 11 04 f9       	vmovupd YMMWORD PTR [rcx+rdi*8],ymm0
  65e487:	48 83 c7 04          	add    rdi,0x4
  65e48b:	49 3b f8             	cmp    rdi,r8
  65e48e:	72 ed                	jb     65e47d <step3d_t_mod_mp_step3d_t_tile_+0xa2bd>
  65e490:	48 3b 85 70 fd ff ff 	cmp    rax,QWORD PTR [rbp-0x290]
  65e497:	0f 83 a5 b9 ff ff    	jae    659e42 <step3d_t_mod_mp_step3d_t_tile_+0x5c82>
  65e49d:	48 8b 95 b0 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x750]
  65e4a4:	48 8b bd 70 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x290]
  65e4ab:	48 03 d6             	add    rdx,rsi
  65e4ae:	48 03 b5 d0 fa ff ff 	add    rsi,QWORD PTR [rbp-0x530]
  65e4b5:	48 8b 0c c6          	mov    rcx,QWORD PTR [rsi+rax*8]
  65e4b9:	48 89 0c c2          	mov    QWORD PTR [rdx+rax*8],rcx
  65e4bd:	48 ff c0             	inc    rax
  65e4c0:	48 3b c7             	cmp    rax,rdi
  65e4c3:	72 f0                	jb     65e4b5 <step3d_t_mod_mp_step3d_t_tile_+0xa2f5>
  65e4c5:	e9 78 b9 ff ff       	jmp    659e42 <step3d_t_mod_mp_step3d_t_tile_+0x5c82>
  65e4ca:	33 c0                	xor    eax,eax
  65e4cc:	eb c2                	jmp    65e490 <step3d_t_mod_mp_step3d_t_tile_+0xa2d0>
  65e4ce:	45 33 db             	xor    r11d,r11d
  65e4d1:	e9 cc b7 ff ff       	jmp    659ca2 <step3d_t_mod_mp_step3d_t_tile_+0x5ae2>
  65e4d6:	48 c7 85 d0 fe ff ff 	mov    QWORD PTR [rbp-0x130],0x0
  65e4dd:	00 00 00 00 
  65e4e1:	e9 05 b1 ff ff       	jmp    6595eb <step3d_t_mod_mp_step3d_t_tile_+0x542b>
  65e4e6:	45 33 e4             	xor    r12d,r12d
  65e4e9:	e9 6c aa ff ff       	jmp    658f5a <step3d_t_mod_mp_step3d_t_tile_+0x4d9a>
  65e4ee:	45 33 c9             	xor    r9d,r9d
  65e4f1:	e9 ee a6 ff ff       	jmp    658be4 <step3d_t_mod_mp_step3d_t_tile_+0x4a24>
  65e4f6:	4c 89 85 80 fa ff ff 	mov    QWORD PTR [rbp-0x580],r8
  65e4fd:	4c 89 8d 98 fa ff ff 	mov    QWORD PTR [rbp-0x568],r9
  65e504:	4c 89 9d 60 f9 ff ff 	mov    QWORD PTR [rbp-0x6a0],r11
  65e50b:	e9 75 fc ff ff       	jmp    65e185 <step3d_t_mod_mp_step3d_t_tile_+0x9fc5>
  65e510:	45 33 db             	xor    r11d,r11d
  65e513:	e9 d7 d5 ff ff       	jmp    65baef <step3d_t_mod_mp_step3d_t_tile_+0x792f>
  65e518:	33 c0                	xor    eax,eax
  65e51a:	e9 d1 d6 ff ff       	jmp    65bbf0 <step3d_t_mod_mp_step3d_t_tile_+0x7a30>
  65e51f:	90                   	nop
