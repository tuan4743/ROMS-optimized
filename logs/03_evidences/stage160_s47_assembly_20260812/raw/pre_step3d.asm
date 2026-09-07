
/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s47_quant/oceanM.s47_SELQUANT_best_20260810.bak:     file format elf64-x86-64


Disassembly of section text.unlikely:

00000000007b9600 <pre_step3d_mod_mp_pre_step3d_tile_>:
  7b9600:	53                   	push   rbx
  7b9601:	48 89 e3             	mov    rbx,rsp
  7b9604:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
  7b9608:	55                   	push   rbp
  7b9609:	55                   	push   rbp
  7b960a:	48 8b 6b 08          	mov    rbp,QWORD PTR [rbx+0x8]
  7b960e:	48 89 6c 24 08       	mov    QWORD PTR [rsp+0x8],rbp
  7b9613:	48 89 e5             	mov    rbp,rsp
  7b9616:	48 81 ec 70 0e 00 00 	sub    rsp,0xe70
  7b961d:	4c 89 a5 40 f6 ff ff 	mov    QWORD PTR [rbp-0x9c0],r12
  7b9624:	48 89 b5 70 f5 ff ff 	mov    QWORD PTR [rbp-0xa90],rsi
  7b962b:	4c 8b 63 10          	mov    r12,QWORD PTR [rbx+0x10]
  7b962f:	48 8b 73 18          	mov    rsi,QWORD PTR [rbx+0x18]
  7b9633:	4c 89 8d 88 f5 ff ff 	mov    QWORD PTR [rbp-0xa78],r9
  7b963a:	44 8b 0a             	mov    r9d,DWORD PTR [rdx]
  7b963d:	44 89 8d 40 f5 ff ff 	mov    DWORD PTR [rbp-0xac0],r9d
  7b9644:	4c 89 a5 a0 f5 ff ff 	mov    QWORD PTR [rbp-0xa60],r12
  7b964b:	4d 63 0c 24          	movsxd r9,DWORD PTR [r12]
  7b964f:	4c 63 26             	movsxd r12,DWORD PTR [rsi]
  7b9652:	48 89 8d 80 f5 ff ff 	mov    QWORD PTR [rbp-0xa80],rcx
  7b9659:	44 89 a5 bc f5 ff ff 	mov    DWORD PTR [rbp-0xa44],r12d
  7b9660:	4d 2b e1             	sub    r12,r9
  7b9663:	48 8b 4b 20          	mov    rcx,QWORD PTR [rbx+0x20]
  7b9667:	4c 8b 53 28          	mov    r10,QWORD PTR [rbx+0x28]
  7b966b:	48 89 bd 78 f5 ff ff 	mov    QWORD PTR [rbp-0xa88],rdi
  7b9672:	48 63 07             	movsxd rax,DWORD PTR [rdi]
  7b9675:	4c 89 e7             	mov    rdi,r12
  7b9678:	4c 89 85 b0 f5 ff ff 	mov    QWORD PTR [rbp-0xa50],r8
  7b967f:	48 ff c7             	inc    rdi
  7b9682:	45 8b 00             	mov    r8d,DWORD PTR [r8]
  7b9685:	44 89 85 44 f5 ff ff 	mov    DWORD PTR [rbp-0xabc],r8d
  7b968c:	48 89 8d 50 f4 ff ff 	mov    QWORD PTR [rbp-0xbb0],rcx
  7b9693:	4c 63 01             	movsxd r8,DWORD PTR [rcx]
  7b9696:	b9 00 00 00 00       	mov    ecx,0x0
  7b969b:	48 89 b5 98 f5 ff ff 	mov    QWORD PTR [rbp-0xa68],rsi
  7b96a2:	48 0f 4e f9          	cmovle rdi,rcx
  7b96a6:	49 63 32             	movsxd rsi,DWORD PTR [r10]
  7b96a9:	89 b5 c4 f5 ff ff    	mov    DWORD PTR [rbp-0xa3c],esi
  7b96af:	49 2b f0             	sub    rsi,r8
  7b96b2:	48 ff c6             	inc    rsi
  7b96b5:	4c 89 b5 30 f6 ff ff 	mov    QWORD PTR [rbp-0x9d0],r14
  7b96bc:	4c 8d 34 fd 00 00 00 	lea    r14,[rdi*8+0x0]
  7b96c3:	00 
  7b96c4:	48 0f 4f ce          	cmovg  rcx,rsi
  7b96c8:	4c 89 b5 10 f2 ff ff 	mov    QWORD PTR [rbp-0xdf0],r14
  7b96cf:	4c 0f af f1          	imul   r14,rcx
  7b96d3:	4c 89 95 90 f5 ff ff 	mov    QWORD PTR [rbp-0xa70],r10
  7b96da:	4c 8b 15 df 0f 30 00 	mov    r10,QWORD PTR [rip+0x300fdf]        # aba6c0 <mod_param_mp_n_>
  7b96e1:	48 89 95 a8 f5 ff ff 	mov    QWORD PTR [rbp-0xa58],rdx
  7b96e8:	4c 8b 9b 98 00 00 00 	mov    r11,QWORD PTR [rbx+0x98]
  7b96ef:	48 89 85 08 f2 ff ff 	mov    QWORD PTR [rbp-0xdf8],rax
  7b96f6:	49 63 54 82 fc       	movsxd rdx,DWORD PTR [r10+rax*4-0x4]
  7b96fb:	4c 89 f0             	mov    rax,r14
  7b96fe:	4c 89 bd 28 f6 ff ff 	mov    QWORD PTR [rbp-0x9d8],r15
  7b9705:	4c 89 ad 38 f6 ff ff 	mov    QWORD PTR [rbp-0x9c8],r13
  7b970c:	4c 89 9d 18 f2 ff ff 	mov    QWORD PTR [rbp-0xde8],r11
  7b9713:	44 89 8d b8 f5 ff ff 	mov    DWORD PTR [rbp-0xa48],r9d
  7b971a:	44 89 85 c0 f5 ff ff 	mov    DWORD PTR [rbp-0xa40],r8d
  7b9721:	89 95 48 f5 ff ff    	mov    DWORD PTR [rbp-0xab8],edx
  7b9727:	89 95 4c f5 ff ff    	mov    DWORD PTR [rbp-0xab4],edx
  7b972d:	89 95 50 f5 ff ff    	mov    DWORD PTR [rbp-0xab0],edx
  7b9733:	48 89 a5 38 f5 ff ff 	mov    QWORD PTR [rbp-0xac8],rsp
  7b973a:	48 83 c0 1f          	add    rax,0x1f
  7b973e:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7b9742:	48 2b e0             	sub    rsp,rax
  7b9745:	48 89 e0             	mov    rax,rsp
  7b9748:	48 89 85 20 f2 ff ff 	mov    QWORD PTR [rbp-0xde0],rax
  7b974f:	4c 89 f0             	mov    rax,r14
  7b9752:	41 ba 08 00 00 00    	mov    r10d,0x8
  7b9758:	4e 8d 2c e5 08 00 00 	lea    r13,[r12*8+0x8]
  7b975f:	00 
  7b9760:	41 bc 01 00 00 00    	mov    r12d,0x1
  7b9766:	48 c7 85 30 f2 ff ff 	mov    QWORD PTR [rbp-0xdd0],0x0
  7b976d:	00 00 00 00 
  7b9771:	4c 89 8d 60 f2 ff ff 	mov    QWORD PTR [rbp-0xda0],r9
  7b9778:	48 89 bd 50 f2 ff ff 	mov    QWORD PTR [rbp-0xdb0],rdi
  7b977f:	4c 89 ad 70 f2 ff ff 	mov    QWORD PTR [rbp-0xd90],r13
  7b9786:	4c 89 85 78 f2 ff ff 	mov    QWORD PTR [rbp-0xd88],r8
  7b978d:	48 89 8d 68 f2 ff ff 	mov    QWORD PTR [rbp-0xd98],rcx
  7b9794:	4c 89 95 28 f2 ff ff 	mov    QWORD PTR [rbp-0xdd8],r10
  7b979b:	4c 89 95 58 f2 ff ff 	mov    QWORD PTR [rbp-0xda8],r10
  7b97a2:	48 c7 85 40 f2 ff ff 	mov    QWORD PTR [rbp-0xdc0],0x2
  7b97a9:	02 00 00 00 
  7b97ad:	4c 89 a5 38 f2 ff ff 	mov    QWORD PTR [rbp-0xdc8],r12
  7b97b4:	48 83 c0 1f          	add    rax,0x1f
  7b97b8:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7b97bc:	48 2b e0             	sub    rsp,rax
  7b97bf:	48 89 e0             	mov    rax,rsp
  7b97c2:	48 89 85 80 f2 ff ff 	mov    QWORD PTR [rbp-0xd80],rax
  7b97c9:	4c 89 f0             	mov    rax,r14
  7b97cc:	41 ba 08 00 00 00    	mov    r10d,0x8
  7b97d2:	4c 89 95 88 f2 ff ff 	mov    QWORD PTR [rbp-0xd78],r10
  7b97d9:	48 c7 85 a0 f2 ff ff 	mov    QWORD PTR [rbp-0xd60],0x2
  7b97e0:	02 00 00 00 
  7b97e4:	48 c7 85 90 f2 ff ff 	mov    QWORD PTR [rbp-0xd70],0x0
  7b97eb:	00 00 00 00 
  7b97ef:	4c 89 95 b8 f2 ff ff 	mov    QWORD PTR [rbp-0xd48],r10
  7b97f6:	4c 89 8d c0 f2 ff ff 	mov    QWORD PTR [rbp-0xd40],r9
  7b97fd:	48 89 bd b0 f2 ff ff 	mov    QWORD PTR [rbp-0xd50],rdi
  7b9804:	4c 89 ad d0 f2 ff ff 	mov    QWORD PTR [rbp-0xd30],r13
  7b980b:	4c 89 85 d8 f2 ff ff 	mov    QWORD PTR [rbp-0xd28],r8
  7b9812:	48 89 8d c8 f2 ff ff 	mov    QWORD PTR [rbp-0xd38],rcx
  7b9819:	4c 89 a5 98 f2 ff ff 	mov    QWORD PTR [rbp-0xd68],r12
  7b9820:	48 83 c0 1f          	add    rax,0x1f
  7b9824:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7b9828:	48 2b e0             	sub    rsp,rax
  7b982b:	48 89 e0             	mov    rax,rsp
  7b982e:	48 89 85 78 f4 ff ff 	mov    QWORD PTR [rbp-0xb88],rax
  7b9835:	4c 89 f0             	mov    rax,r14
  7b9838:	41 ba 08 00 00 00    	mov    r10d,0x8
  7b983e:	4c 89 95 80 f4 ff ff 	mov    QWORD PTR [rbp-0xb80],r10
  7b9845:	48 c7 85 98 f4 ff ff 	mov    QWORD PTR [rbp-0xb68],0x2
  7b984c:	02 00 00 00 
  7b9850:	48 c7 85 88 f4 ff ff 	mov    QWORD PTR [rbp-0xb78],0x0
  7b9857:	00 00 00 00 
  7b985b:	4c 89 95 b0 f4 ff ff 	mov    QWORD PTR [rbp-0xb50],r10
  7b9862:	4c 89 8d b8 f4 ff ff 	mov    QWORD PTR [rbp-0xb48],r9
  7b9869:	48 89 bd a8 f4 ff ff 	mov    QWORD PTR [rbp-0xb58],rdi
  7b9870:	4c 89 ad c8 f4 ff ff 	mov    QWORD PTR [rbp-0xb38],r13
  7b9877:	4c 89 85 d0 f4 ff ff 	mov    QWORD PTR [rbp-0xb30],r8
  7b987e:	48 89 8d c0 f4 ff ff 	mov    QWORD PTR [rbp-0xb40],rcx
  7b9885:	4c 89 a5 90 f4 ff ff 	mov    QWORD PTR [rbp-0xb70],r12
  7b988c:	48 83 c0 1f          	add    rax,0x1f
  7b9890:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7b9894:	48 2b e0             	sub    rsp,rax
  7b9897:	48 89 e0             	mov    rax,rsp
  7b989a:	48 89 85 d8 f4 ff ff 	mov    QWORD PTR [rbp-0xb28],rax
  7b98a1:	48 89 f8             	mov    rax,rdi
  7b98a4:	48 0f af c1          	imul   rax,rcx
  7b98a8:	41 bf 08 00 00 00    	mov    r15d,0x8
  7b98ae:	45 33 f6             	xor    r14d,r14d
  7b98b1:	4c 89 bd e0 f4 ff ff 	mov    QWORD PTR [rbp-0xb20],r15
  7b98b8:	4c 89 bd 10 f5 ff ff 	mov    QWORD PTR [rbp-0xaf0],r15
  7b98bf:	49 89 d7             	mov    r15,rdx
  7b98c2:	49 ff c7             	inc    r15
  7b98c5:	4c 89 b5 e8 f4 ff ff 	mov    QWORD PTR [rbp-0xb18],r14
  7b98cc:	4d 0f 4e fe          	cmovle r15,r14
  7b98d0:	48 c7 85 f8 f4 ff ff 	mov    QWORD PTR [rbp-0xb08],0x2
  7b98d7:	02 00 00 00 
  7b98db:	4c 89 8d 18 f5 ff ff 	mov    QWORD PTR [rbp-0xae8],r9
  7b98e2:	48 89 bd 08 f5 ff ff 	mov    QWORD PTR [rbp-0xaf8],rdi
  7b98e9:	4c 89 ad 28 f5 ff ff 	mov    QWORD PTR [rbp-0xad8],r13
  7b98f0:	4e 8d 34 fd 00 00 00 	lea    r14,[r15*8+0x0]
  7b98f7:	00 
  7b98f8:	49 0f af c6          	imul   rax,r14
  7b98fc:	4c 89 85 30 f5 ff ff 	mov    QWORD PTR [rbp-0xad0],r8
  7b9903:	48 89 8d 20 f5 ff ff 	mov    QWORD PTR [rbp-0xae0],rcx
  7b990a:	4c 89 a5 f0 f4 ff ff 	mov    QWORD PTR [rbp-0xb10],r12
  7b9911:	48 83 c0 1f          	add    rax,0x1f
  7b9915:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7b9919:	48 2b e0             	sub    rsp,rax
  7b991c:	48 89 e0             	mov    rax,rsp
  7b991f:	4c 0f af f7          	imul   r14,rdi
  7b9923:	49 0f af f5          	imul   rsi,r13
  7b9927:	48 89 85 90 f1 ff ff 	mov    QWORD PTR [rbp-0xe70],rax
  7b992e:	4c 89 f0             	mov    rax,r14
  7b9931:	4c 89 85 e8 f1 ff ff 	mov    QWORD PTR [rbp-0xe18],r8
  7b9938:	45 33 c0             	xor    r8d,r8d
  7b993b:	48 89 8d d8 f1 ff ff 	mov    QWORD PTR [rbp-0xe28],rcx
  7b9942:	b9 08 00 00 00       	mov    ecx,0x8
  7b9947:	48 89 8d 98 f1 ff ff 	mov    QWORD PTR [rbp-0xe68],rcx
  7b994e:	48 c7 85 b0 f1 ff ff 	mov    QWORD PTR [rbp-0xe50],0x3
  7b9955:	03 00 00 00 
  7b9959:	4c 89 85 a0 f1 ff ff 	mov    QWORD PTR [rbp-0xe60],r8
  7b9960:	48 89 8d c8 f1 ff ff 	mov    QWORD PTR [rbp-0xe38],rcx
  7b9967:	4c 89 8d d0 f1 ff ff 	mov    QWORD PTR [rbp-0xe30],r9
  7b996e:	48 89 bd c0 f1 ff ff 	mov    QWORD PTR [rbp-0xe40],rdi
  7b9975:	4c 89 ad e0 f1 ff ff 	mov    QWORD PTR [rbp-0xe20],r13
  7b997c:	48 89 b5 f8 f1 ff ff 	mov    QWORD PTR [rbp-0xe08],rsi
  7b9983:	4c 89 85 00 f2 ff ff 	mov    QWORD PTR [rbp-0xe00],r8
  7b998a:	4c 89 bd f0 f1 ff ff 	mov    QWORD PTR [rbp-0xe10],r15
  7b9991:	4c 89 a5 a8 f1 ff ff 	mov    QWORD PTR [rbp-0xe58],r12
  7b9998:	48 83 c0 1f          	add    rax,0x1f
  7b999c:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7b99a0:	48 2b e0             	sub    rsp,rax
  7b99a3:	48 89 e0             	mov    rax,rsp
  7b99a6:	48 89 85 e0 f2 ff ff 	mov    QWORD PTR [rbp-0xd20],rax
  7b99ad:	4c 89 f0             	mov    rax,r14
  7b99b0:	48 89 8d e8 f2 ff ff 	mov    QWORD PTR [rbp-0xd18],rcx
  7b99b7:	48 c7 85 00 f3 ff ff 	mov    QWORD PTR [rbp-0xd00],0x2
  7b99be:	02 00 00 00 
  7b99c2:	4c 89 85 f0 f2 ff ff 	mov    QWORD PTR [rbp-0xd10],r8
  7b99c9:	48 89 8d 18 f3 ff ff 	mov    QWORD PTR [rbp-0xce8],rcx
  7b99d0:	4c 89 8d 20 f3 ff ff 	mov    QWORD PTR [rbp-0xce0],r9
  7b99d7:	48 89 bd 10 f3 ff ff 	mov    QWORD PTR [rbp-0xcf0],rdi
  7b99de:	4c 89 ad 30 f3 ff ff 	mov    QWORD PTR [rbp-0xcd0],r13
  7b99e5:	4c 89 85 38 f3 ff ff 	mov    QWORD PTR [rbp-0xcc8],r8
  7b99ec:	4c 89 bd 28 f3 ff ff 	mov    QWORD PTR [rbp-0xcd8],r15
  7b99f3:	4c 89 a5 f8 f2 ff ff 	mov    QWORD PTR [rbp-0xd08],r12
  7b99fa:	48 83 c0 1f          	add    rax,0x1f
  7b99fe:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7b9a02:	48 2b e0             	sub    rsp,rax
  7b9a05:	48 89 e0             	mov    rax,rsp
  7b9a08:	48 89 85 40 f3 ff ff 	mov    QWORD PTR [rbp-0xcc0],rax
  7b9a0f:	48 8b 85 10 f2 ff ff 	mov    rax,QWORD PTR [rbp-0xdf0]
  7b9a16:	49 0f af c7          	imul   rax,r15
  7b9a1a:	48 89 8d 48 f3 ff ff 	mov    QWORD PTR [rbp-0xcb8],rcx
  7b9a21:	48 c7 85 60 f3 ff ff 	mov    QWORD PTR [rbp-0xca0],0x2
  7b9a28:	02 00 00 00 
  7b9a2c:	4c 89 85 50 f3 ff ff 	mov    QWORD PTR [rbp-0xcb0],r8
  7b9a33:	48 89 8d 78 f3 ff ff 	mov    QWORD PTR [rbp-0xc88],rcx
  7b9a3a:	4c 89 8d 80 f3 ff ff 	mov    QWORD PTR [rbp-0xc80],r9
  7b9a41:	48 89 bd 70 f3 ff ff 	mov    QWORD PTR [rbp-0xc90],rdi
  7b9a48:	4c 89 ad 90 f3 ff ff 	mov    QWORD PTR [rbp-0xc70],r13
  7b9a4f:	4c 89 85 98 f3 ff ff 	mov    QWORD PTR [rbp-0xc68],r8
  7b9a56:	4c 89 bd 88 f3 ff ff 	mov    QWORD PTR [rbp-0xc78],r15
  7b9a5d:	4c 89 a5 58 f3 ff ff 	mov    QWORD PTR [rbp-0xca8],r12
  7b9a64:	48 83 c0 1f          	add    rax,0x1f
  7b9a68:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7b9a6c:	48 2b e0             	sub    rsp,rax
  7b9a6f:	48 89 e0             	mov    rax,rsp
  7b9a72:	4c 89 8d e0 f3 ff ff 	mov    QWORD PTR [rbp-0xc20],r9
  7b9a79:	be 08 00 00 00       	mov    esi,0x8
  7b9a7e:	4c 69 8d 08 f2 ff ff 	imul   r9,QWORD PTR [rbp-0xdf8],0xf60
  7b9a85:	60 0f 00 00 
  7b9a89:	4c 89 ad f0 f3 ff ff 	mov    QWORD PTR [rbp-0xc10],r13
  7b9a90:	45 33 f6             	xor    r14d,r14d
  7b9a93:	4c 8b 2d a6 16 30 00 	mov    r13,QWORD PTR [rip+0x3016a6]        # abb140 <mod_param_mp_bounds_>
  7b9a9a:	48 89 b5 a8 f3 ff ff 	mov    QWORD PTR [rbp-0xc58],rsi
  7b9aa1:	48 89 b5 d8 f3 ff ff 	mov    QWORD PTR [rbp-0xc28],rsi
  7b9aa8:	48 8b b5 70 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xa90]
  7b9aaf:	4f 8b 84 29 90 f2 ff 	mov    r8,QWORD PTR [r9+r13*1-0xd70]
  7b9ab6:	ff 
  7b9ab7:	49 f7 d8             	neg    r8
  7b9aba:	48 89 bd d0 f3 ff ff 	mov    QWORD PTR [rbp-0xc30],rdi
  7b9ac1:	48 63 3e             	movsxd rdi,DWORD PTR [rsi]
  7b9ac4:	4c 03 c7             	add    r8,rdi
  7b9ac7:	4f 0f af 84 29 88 f2 	imul   r8,QWORD PTR [r9+r13*1-0xd78]
  7b9ace:	ff ff 
  7b9ad0:	4b 8b 8c 29 50 f2 ff 	mov    rcx,QWORD PTR [r9+r13*1-0xdb0]
  7b9ad7:	ff 
  7b9ad8:	4c 89 bd e8 f3 ff ff 	mov    QWORD PTR [rbp-0xc18],r15
  7b9adf:	4f 8b bc 29 40 f4 ff 	mov    r15,QWORD PTR [r9+r13*1-0xbc0]
  7b9ae6:	ff 
  7b9ae7:	46 8b 14 01          	mov    r10d,DWORD PTR [rcx+r8*1]
  7b9aeb:	49 f7 df             	neg    r15
  7b9aee:	4f 8b 84 29 d8 f2 ff 	mov    r8,QWORD PTR [r9+r13*1-0xd28]
  7b9af5:	ff 
  7b9af6:	4c 03 ff             	add    r15,rdi
  7b9af9:	49 f7 d8             	neg    r8
  7b9afc:	4c 03 c7             	add    r8,rdi
  7b9aff:	4f 0f af 84 29 d0 f2 	imul   r8,QWORD PTR [r9+r13*1-0xd30]
  7b9b06:	ff ff 
  7b9b08:	4f 0f af bc 29 38 f4 	imul   r15,QWORD PTR [r9+r13*1-0xbc8]
  7b9b0f:	ff ff 
  7b9b11:	4b 8b 8c 29 98 f2 ff 	mov    rcx,QWORD PTR [r9+r13*1-0xd68]
  7b9b18:	ff 
  7b9b19:	44 89 95 c8 f5 ff ff 	mov    DWORD PTR [rbp-0xa38],r10d
  7b9b20:	4f 8b 9c 29 00 f4 ff 	mov    r11,QWORD PTR [r9+r13*1-0xc00]
  7b9b27:	ff 
  7b9b28:	46 8b 14 01          	mov    r10d,DWORD PTR [rcx+r8*1]
  7b9b2c:	4b 8b 8c 29 18 f5 ff 	mov    rcx,QWORD PTR [r9+r13*1-0xae8]
  7b9b33:	ff 
  7b9b34:	48 f7 d9             	neg    rcx
  7b9b37:	48 03 cf             	add    rcx,rdi
  7b9b3a:	4b 0f af 8c 29 10 f5 	imul   rcx,QWORD PTR [r9+r13*1-0xaf0]
  7b9b41:	ff ff 
  7b9b43:	48 89 85 a0 f3 ff ff 	mov    QWORD PTR [rbp-0xc60],rax
  7b9b4a:	43 8b 04 3b          	mov    eax,DWORD PTR [r11+r15*1]
  7b9b4e:	4f 8b bc 29 d8 f4 ff 	mov    r15,QWORD PTR [r9+r13*1-0xb28]
  7b9b55:	ff 
  7b9b56:	89 85 54 f5 ff ff    	mov    DWORD PTR [rbp-0xaac],eax
  7b9b5c:	4b 8b 84 29 20 f3 ff 	mov    rax,QWORD PTR [r9+r13*1-0xce0]
  7b9b63:	ff 
  7b9b64:	45 8b 04 0f          	mov    r8d,DWORD PTR [r15+rcx*1]
  7b9b68:	48 f7 d8             	neg    rax
  7b9b6b:	4b 8b 8c 29 68 f3 ff 	mov    rcx,QWORD PTR [r9+r13*1-0xc98]
  7b9b72:	ff 
  7b9b73:	48 03 c7             	add    rax,rdi
  7b9b76:	48 f7 d9             	neg    rcx
  7b9b79:	48 03 cf             	add    rcx,rdi
  7b9b7c:	4b 0f af 8c 29 60 f3 	imul   rcx,QWORD PTR [r9+r13*1-0xca0]
  7b9b83:	ff ff 
  7b9b85:	4b 0f af 84 29 18 f3 	imul   rax,QWORD PTR [r9+r13*1-0xce8]
  7b9b8c:	ff ff 
  7b9b8e:	44 89 95 cc f5 ff ff 	mov    DWORD PTR [rbp-0xa34],r10d
  7b9b95:	44 89 85 58 f5 ff ff 	mov    DWORD PTR [rbp-0xaa8],r8d
  7b9b9c:	4f 8b 94 29 28 f3 ff 	mov    r10,QWORD PTR [r9+r13*1-0xcd8]
  7b9ba3:	ff 
  7b9ba4:	4f 8b 84 29 e0 f9 ff 	mov    r8,QWORD PTR [r9+r13*1-0x620]
  7b9bab:	ff 
  7b9bac:	49 f7 d8             	neg    r8
  7b9baf:	4c 03 c7             	add    r8,rdi
  7b9bb2:	4f 0f af 84 29 d8 f9 	imul   r8,QWORD PTR [r9+r13*1-0x628]
  7b9bb9:	ff ff 
  7b9bbb:	49 63 0c 0a          	movsxd rcx,DWORD PTR [r10+rcx*1]
  7b9bbf:	4f 8b 94 29 00 fb ff 	mov    r10,QWORD PTR [r9+r13*1-0x500]
  7b9bc6:	ff 
  7b9bc7:	49 f7 da             	neg    r10
  7b9bca:	4c 03 d7             	add    r10,rdi
  7b9bcd:	4f 0f af 94 29 f8 fa 	imul   r10,QWORD PTR [r9+r13*1-0x508]
  7b9bd4:	ff ff 
  7b9bd6:	4f 8b 9c 29 e0 f2 ff 	mov    r11,QWORD PTR [r9+r13*1-0xd20]
  7b9bdd:	ff 
  7b9bde:	48 c7 85 c0 f3 ff ff 	mov    QWORD PTR [rbp-0xc40],0x2
  7b9be5:	02 00 00 00 
  7b9be9:	4c 89 b5 b0 f3 ff ff 	mov    QWORD PTR [rbp-0xc50],r14
  7b9bf0:	49 63 04 03          	movsxd rax,DWORD PTR [r11+rax*1]
  7b9bf4:	4f 8b 9c 29 a0 f9 ff 	mov    r11,QWORD PTR [r9+r13*1-0x660]
  7b9bfb:	ff 
  7b9bfc:	4c 89 b5 f8 f3 ff ff 	mov    QWORD PTR [rbp-0xc08],r14
  7b9c03:	4c 89 a5 b8 f3 ff ff 	mov    QWORD PTR [rbp-0xc48],r12
  7b9c0a:	47 8b 3c 03          	mov    r15d,DWORD PTR [r11+r8*1]
  7b9c0e:	4f 8b 84 29 c0 fa ff 	mov    r8,QWORD PTR [r9+r13*1-0x540]
  7b9c15:	ff 
  7b9c16:	44 89 bd 5c f5 ff ff 	mov    DWORD PTR [rbp-0xaa4],r15d
  7b9c1d:	4f 8b bc 29 28 fc ff 	mov    r15,QWORD PTR [r9+r13*1-0x3d8]
  7b9c24:	ff 
  7b9c25:	47 8b 1c 10          	mov    r11d,DWORD PTR [r8+r10*1]
  7b9c29:	4f 8b 84 29 68 fc ff 	mov    r8,QWORD PTR [r9+r13*1-0x398]
  7b9c30:	ff 
  7b9c31:	49 f7 d8             	neg    r8
  7b9c34:	4c 03 c7             	add    r8,rdi
  7b9c37:	4f 0f af 84 29 60 fc 	imul   r8,QWORD PTR [r9+r13*1-0x3a0]
  7b9c3e:	ff ff 
  7b9c40:	47 8b 14 07          	mov    r10d,DWORD PTR [r15+r8*1]
  7b9c44:	4f 8b 84 29 88 fd ff 	mov    r8,QWORD PTR [r9+r13*1-0x278]
  7b9c4b:	ff 
  7b9c4c:	49 f7 d8             	neg    r8
  7b9c4f:	4c 03 c7             	add    r8,rdi
  7b9c52:	4f 0f af 84 29 80 fd 	imul   r8,QWORD PTR [r9+r13*1-0x280]
  7b9c59:	ff ff 
  7b9c5b:	4b 8b bc 29 48 fd ff 	mov    rdi,QWORD PTR [r9+r13*1-0x2b8]
  7b9c62:	ff 
  7b9c63:	89 85 d8 f5 ff ff    	mov    DWORD PTR [rbp-0xa28],eax
  7b9c69:	89 8d dc f5 ff ff    	mov    DWORD PTR [rbp-0xa24],ecx
  7b9c6f:	46 8b 0c 07          	mov    r9d,DWORD PTR [rdi+r8*1]
  7b9c73:	44 89 9d 60 f5 ff ff 	mov    DWORD PTR [rbp-0xaa0],r11d
  7b9c7a:	44 89 95 64 f5 ff ff 	mov    DWORD PTR [rbp-0xa9c],r10d
  7b9c81:	44 89 8d 68 f5 ff ff 	mov    DWORD PTR [rbp-0xa98],r9d
  7b9c88:	48 ff ca             	dec    rdx
  7b9c8b:	0f 8e dc 07 00 00    	jle    7ba46d <pre_step3d_mod_mp_pre_step3d_tile_+0xe6d>
  7b9c91:	4c 8b 8d 18 f2 ff ff 	mov    r9,QWORD PTR [rbp-0xde8]
  7b9c98:	48 89 8d 78 f6 ff ff 	mov    QWORD PTR [rbp-0x988],rcx
  7b9c9f:	4c 89 b5 60 f4 ff ff 	mov    QWORD PTR [rbp-0xba0],r14
  7b9ca6:	4d 8b 29             	mov    r13,QWORD PTR [r9]
  7b9ca9:	4d 8b 59 68          	mov    r11,QWORD PTR [r9+0x68]
  7b9cad:	4d 8b 41 50          	mov    r8,QWORD PTR [r9+0x50]
  7b9cb1:	4d 8b 49 38          	mov    r9,QWORD PTR [r9+0x38]
  7b9cb5:	4c 89 85 70 f6 ff ff 	mov    QWORD PTR [rbp-0x990],r8
  7b9cbc:	4d 89 c8             	mov    r8,r9
  7b9cbf:	49 f7 d8             	neg    r8
  7b9cc2:	4c 89 8d 20 f4 ff ff 	mov    QWORD PTR [rbp-0xbe0],r9
  7b9cc9:	4c 89 9d 70 f4 ff ff 	mov    QWORD PTR [rbp-0xb90],r11
  7b9cd0:	4c 89 ad 10 f2 ff ff 	mov    QWORD PTR [rbp-0xdf0],r13
  7b9cd7:	4c 89 b5 68 f4 ff ff 	mov    QWORD PTR [rbp-0xb98],r14
  7b9cde:	4b 8d 7c 05 00       	lea    rdi,[r13+r8*1+0x0]
  7b9ce3:	48 89 bd 10 f4 ff ff 	mov    QWORD PTR [rbp-0xbf0],rdi
  7b9cea:	4b 8d 7c 1d 00       	lea    rdi,[r13+r11*1+0x0]
  7b9cef:	4c 03 c7             	add    r8,rdi
  7b9cf2:	4d 8d 3c 39          	lea    r15,[r9+rdi*1]
  7b9cf6:	4c 89 bd 08 f4 ff ff 	mov    QWORD PTR [rbp-0xbf8],r15
  7b9cfd:	4f 8d 3c 29          	lea    r15,[r9+r13*1]
  7b9d01:	4c 89 bd 00 f4 ff ff 	mov    QWORD PTR [rbp-0xc00],r15
  7b9d08:	4c 89 85 18 f4 ff ff 	mov    QWORD PTR [rbp-0xbe8],r8
  7b9d0f:	48 89 bd 08 f2 ff ff 	mov    QWORD PTR [rbp-0xdf8],rdi
  7b9d16:	48 89 95 58 f4 ff ff 	mov    QWORD PTR [rbp-0xba8],rdx
  7b9d1d:	48 8b bd 78 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xa88]
  7b9d24:	4c 8b ad 78 f4 ff ff 	mov    r13,QWORD PTR [rbp-0xb88]
  7b9d2b:	48 3b 85 78 f6 ff ff 	cmp    rax,QWORD PTR [rbp-0x988]
  7b9d32:	0f 8f d6 04 00 00    	jg     7ba20e <pre_step3d_mod_mp_pre_step3d_tile_+0xc0e>
  7b9d38:	4c 63 95 44 f5 ff ff 	movsxd r10,DWORD PTR [rbp-0xabc]
  7b9d3f:	48 8b 95 70 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x990]
  7b9d46:	4c 0f af d2          	imul   r10,rdx
  7b9d4a:	4c 89 95 e8 f5 ff ff 	mov    QWORD PTR [rbp-0xa18],r10
  7b9d51:	4c 63 95 b8 f5 ff ff 	movsxd r10,DWORD PTR [rbp-0xa48]
  7b9d58:	4c 63 b5 bc f5 ff ff 	movsxd r14,DWORD PTR [rbp-0xa44]
  7b9d5f:	4d 2b f2             	sub    r14,r10
  7b9d62:	48 63 8d c0 f5 ff ff 	movsxd rcx,DWORD PTR [rbp-0xa40]
  7b9d69:	4c 8b a5 78 f6 ff ff 	mov    r12,QWORD PTR [rbp-0x988]
  7b9d70:	4c 2b e0             	sub    r12,rax
  7b9d73:	4c 8b 0d 46 09 30 00 	mov    r9,QWORD PTR [rip+0x300946]        # aba6c0 <mod_param_mp_n_>
  7b9d7a:	4d 8d 7e 01          	lea    r15,[r14+0x1]
  7b9d7e:	4c 89 8d d0 f5 ff ff 	mov    QWORD PTR [rbp-0xa30],r9
  7b9d85:	4e 8d 34 f5 08 00 00 	lea    r14,[r14*8+0x8]
  7b9d8c:	00 
  7b9d8d:	4c 89 b5 80 f6 ff ff 	mov    QWORD PTR [rbp-0x980],r14
  7b9d94:	49 ff c4             	inc    r12
  7b9d97:	49 0f af ce          	imul   rcx,r14
  7b9d9b:	44 8b 8d c8 f5 ff ff 	mov    r9d,DWORD PTR [rbp-0xa38]
  7b9da2:	4c 8d 34 c5 00 00 00 	lea    r14,[rax*8+0x0]
  7b9da9:	00 
  7b9daa:	4d 0f af f7          	imul   r14,r15
  7b9dae:	48 0f af c2          	imul   rax,rdx
  7b9db2:	44 89 8d 88 f6 ff ff 	mov    DWORD PTR [rbp-0x978],r9d
  7b9db9:	4c 89 f2             	mov    rdx,r14
  7b9dbc:	4d 63 c9             	movsxd r9,r9d
  7b9dbf:	48 2b d1             	sub    rdx,rcx
  7b9dc2:	4c 63 07             	movsxd r8,DWORD PTR [rdi]
  7b9dc5:	4c 89 85 68 f6 ff ff 	mov    QWORD PTR [rbp-0x998],r8
  7b9dcc:	48 89 8d 18 f2 ff ff 	mov    QWORD PTR [rbp-0xde8],rcx
  7b9dd3:	48 8b 8d 10 f2 ff ff 	mov    rcx,QWORD PTR [rbp-0xdf0]
  7b9dda:	4f 8d 44 cd 00       	lea    r8,[r13+r9*8+0x0]
  7b9ddf:	49 c1 e2 03          	shl    r10,0x3
  7b9de3:	4d 89 c7             	mov    r15,r8
  7b9de6:	4d 2b fa             	sub    r15,r10
  7b9de9:	4c 03 fa             	add    r15,rdx
  7b9dec:	48 8d 14 01          	lea    rdx,[rcx+rax*1]
  7b9df0:	48 8b 8d 60 f4 ff ff 	mov    rcx,QWORD PTR [rbp-0xba0]
  7b9df7:	4c 89 bd e0 f5 ff ff 	mov    QWORD PTR [rbp-0xa20],r15
  7b9dfe:	4c 8b bd 08 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xdf8]
  7b9e05:	44 8b 9d cc f5 ff ff 	mov    r11d,DWORD PTR [rbp-0xa34]
  7b9e0c:	48 03 c8             	add    rcx,rax
  7b9e0f:	4c 89 a5 78 f6 ff ff 	mov    QWORD PTR [rbp-0x988],r12
  7b9e16:	4c 63 a5 40 f5 ff ff 	movsxd r12,DWORD PTR [rbp-0xac0]
  7b9e1d:	44 89 9d 90 f6 ff ff 	mov    DWORD PTR [rbp-0x970],r11d
  7b9e24:	4e 8d 1c cd 00 00 00 	lea    r11,[r9*8+0x0]
  7b9e2b:	00 
  7b9e2c:	48 89 8d 28 f4 ff ff 	mov    QWORD PTR [rbp-0xbd8],rcx
  7b9e33:	49 03 cf             	add    rcx,r15
  7b9e36:	48 83 bd 20 f4 ff ff 	cmp    QWORD PTR [rbp-0xbe0],0x8
  7b9e3d:	08 
  7b9e3e:	0f 84 6a 02 00 00    	je     7ba0ae <pre_step3d_mod_mp_pre_step3d_tile_+0xaae>
  7b9e44:	4c 8b 9d 20 f4 ff ff 	mov    r11,QWORD PTR [rbp-0xbe0]
  7b9e4b:	4d 2b d6             	sub    r10,r14
  7b9e4e:	4d 0f af cb          	imul   r9,r11
  7b9e52:	4d 0f af e3          	imul   r12,r11
  7b9e56:	4c 8b bd 10 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xbf0]
  7b9e5d:	4d 2b c2             	sub    r8,r10
  7b9e60:	44 8b b5 90 f6 ff ff 	mov    r14d,DWORD PTR [rbp-0x970]
  7b9e67:	45 33 db             	xor    r11d,r11d
  7b9e6a:	44 2b b5 88 f6 ff ff 	sub    r14d,DWORD PTR [rbp-0x978]
  7b9e71:	41 ff c6             	inc    r14d
  7b9e74:	4c 03 f8             	add    r15,rax
  7b9e77:	4c 89 bd f0 f5 ff ff 	mov    QWORD PTR [rbp-0xa10],r15
  7b9e7e:	4d 89 cf             	mov    r15,r9
  7b9e81:	4d 2b fc             	sub    r15,r12
  7b9e84:	45 89 f2             	mov    r10d,r14d
  7b9e87:	4c 03 a5 e8 f5 ff ff 	add    r12,QWORD PTR [rbp-0xa18]
  7b9e8e:	49 03 d7             	add    rdx,r15
  7b9e91:	4c 89 bd 00 f6 ff ff 	mov    QWORD PTR [rbp-0xa00],r15
  7b9e98:	4d 2b cc             	sub    r9,r12
  7b9e9b:	4c 8b bd 18 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xbe8]
  7b9ea2:	49 03 c9             	add    rcx,r9
  7b9ea5:	4c 8b a5 28 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xbd8]
  7b9eac:	41 d1 ea             	shr    r10d,1
  7b9eaf:	44 89 95 98 f6 ff ff 	mov    DWORD PTR [rbp-0x968],r10d
  7b9eb6:	4c 89 95 f8 f5 ff ff 	mov    QWORD PTR [rbp-0xa08],r10
  7b9ebd:	4d 03 fc             	add    r15,r12
  7b9ec0:	4c 03 a5 08 f4 ff ff 	add    r12,QWORD PTR [rbp-0xbf8]
  7b9ec7:	45 33 d2             	xor    r10d,r10d
  7b9eca:	48 03 85 00 f4 ff ff 	add    rax,QWORD PTR [rbp-0xc00]
  7b9ed1:	4d 03 f9             	add    r15,r9
  7b9ed4:	4c 2b 85 18 f2 ff ff 	sub    r8,QWORD PTR [rbp-0xde8]
  7b9edb:	4d 03 cc             	add    r9,r12
  7b9ede:	48 89 95 10 f6 ff ff 	mov    QWORD PTR [rbp-0x9f0],rdx
  7b9ee5:	48 89 85 08 f6 ff ff 	mov    QWORD PTR [rbp-0x9f8],rax
  7b9eec:	48 89 8d 50 f6 ff ff 	mov    QWORD PTR [rbp-0x9b0],rcx
  7b9ef3:	4c 89 8d 58 f6 ff ff 	mov    QWORD PTR [rbp-0x9a8],r9
  7b9efa:	4c 89 bd 48 f6 ff ff 	mov    QWORD PTR [rbp-0x9b8],r15
  7b9f01:	4c 89 85 60 f6 ff ff 	mov    QWORD PTR [rbp-0x9a0],r8
  7b9f08:	44 89 b5 a0 f6 ff ff 	mov    DWORD PTR [rbp-0x960],r14d
  7b9f0f:	4c 89 ad 30 f4 ff ff 	mov    QWORD PTR [rbp-0xbd0],r13
  7b9f16:	48 89 bd 38 f4 ff ff 	mov    QWORD PTR [rbp-0xbc8],rdi
  7b9f1d:	48 89 b5 40 f4 ff ff 	mov    QWORD PTR [rbp-0xbc0],rsi
  7b9f24:	4c 89 d0             	mov    rax,r10
  7b9f27:	48 8b 95 20 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xbe0]
  7b9f2e:	8b 8d 90 f6 ff ff    	mov    ecx,DWORD PTR [rbp-0x970]
  7b9f34:	3b 8d 88 f6 ff ff    	cmp    ecx,DWORD PTR [rbp-0x978]
  7b9f3a:	0f 8c 4b 01 00 00    	jl     7ba08b <pre_step3d_mod_mp_pre_step3d_tile_+0xa8b>
  7b9f40:	45 33 ff             	xor    r15d,r15d
  7b9f43:	be 01 00 00 00       	mov    esi,0x1
  7b9f48:	45 33 f6             	xor    r14d,r14d
  7b9f4b:	45 33 e4             	xor    r12d,r12d
  7b9f4e:	83 bd 98 f6 ff ff 00 	cmp    DWORD PTR [rbp-0x968],0x0
  7b9f55:	0f 84 bd 00 00 00    	je     7ba018 <pre_step3d_mod_mp_pre_step3d_tile_+0xa18>
  7b9f5b:	4c 8b ad 68 f6 ff ff 	mov    r13,QWORD PTR [rbp-0x998]
  7b9f62:	48 8b bd d0 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xa30]
  7b9f69:	4c 8b 8d e0 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xa20]
  7b9f70:	4c 8b 85 60 f6 ff ff 	mov    r8,QWORD PTR [rbp-0x9a0]
  7b9f77:	4e 63 6c af fc       	movsxd r13,DWORD PTR [rdi+r13*4-0x4]
  7b9f7c:	4c 0f af ad 70 f4 ff 	imul   r13,QWORD PTR [rbp-0xb90]
  7b9f83:	ff 
  7b9f84:	49 f7 dd             	neg    r13
  7b9f87:	4d 03 ca             	add    r9,r10
  7b9f8a:	4c 03 ad e8 f5 ff ff 	add    r13,QWORD PTR [rbp-0xa18]
  7b9f91:	4d 03 c2             	add    r8,r10
  7b9f94:	48 8b bd 10 f6 ff ff 	mov    rdi,QWORD PTR [rbp-0x9f0]
  7b9f9b:	49 2b fd             	sub    rdi,r13
  7b9f9e:	49 f7 dd             	neg    r13
  7b9fa1:	48 8b b5 58 f6 ff ff 	mov    rsi,QWORD PTR [rbp-0x9a8]
  7b9fa8:	48 03 f8             	add    rdi,rax
  7b9fab:	48 8b 8d 50 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x9b0]
  7b9fb2:	4c 03 ad 00 f6 ff ff 	add    r13,QWORD PTR [rbp-0xa00]
  7b9fb9:	4c 03 ad 08 f6 ff ff 	add    r13,QWORD PTR [rbp-0x9f8]
  7b9fc0:	48 03 f0             	add    rsi,rax
  7b9fc3:	4c 89 9d 20 f6 ff ff 	mov    QWORD PTR [rbp-0x9e0],r11
  7b9fca:	4c 03 e8             	add    r13,rax
  7b9fcd:	4c 8b 9d f8 f5 ff ff 	mov    r11,QWORD PTR [rbp-0xa08]
  7b9fd4:	48 03 c8             	add    rcx,rax
  7b9fd7:	c4 a1 7b 10 04 67    	vmovsd xmm0,QWORD PTR [rdi+r12*2]
  7b9fdd:	49 ff c7             	inc    r15
  7b9fe0:	c4 81 7b 10 54 65 00 	vmovsd xmm2,QWORD PTR [r13+r12*2+0x0]
  7b9fe7:	c4 a1 7b 5c 0c 61    	vsubsd xmm1,xmm0,QWORD PTR [rcx+r12*2]
  7b9fed:	c4 a1 6b 5c 1c 66    	vsubsd xmm3,xmm2,QWORD PTR [rsi+r12*2]
  7b9ff3:	c4 81 7b 11 0c 0e    	vmovsd QWORD PTR [r14+r9*1],xmm1
  7b9ff9:	4c 03 e2             	add    r12,rdx
  7b9ffc:	c4 81 7b 11 5c 06 08 	vmovsd QWORD PTR [r14+r8*1+0x8],xmm3
  7ba003:	49 83 c6 10          	add    r14,0x10
  7ba007:	4d 3b fb             	cmp    r15,r11
  7ba00a:	72 cb                	jb     7b9fd7 <pre_step3d_mod_mp_pre_step3d_tile_+0x9d7>
  7ba00c:	4c 8b 9d 20 f6 ff ff 	mov    r11,QWORD PTR [rbp-0x9e0]
  7ba013:	43 8d 74 3f 01       	lea    esi,[r15+r15*1+0x1]
  7ba018:	8d 4e ff             	lea    ecx,[rsi-0x1]
  7ba01b:	3b 8d a0 f6 ff ff    	cmp    ecx,DWORD PTR [rbp-0x960]
  7ba021:	73 68                	jae    7ba08b <pre_step3d_mod_mp_pre_step3d_tile_+0xa8b>
  7ba023:	4c 8b ad 68 f6 ff ff 	mov    r13,QWORD PTR [rbp-0x998]
  7ba02a:	48 89 d1             	mov    rcx,rdx
  7ba02d:	4c 8b a5 d0 f5 ff ff 	mov    r12,QWORD PTR [rbp-0xa30]
  7ba034:	48 63 f6             	movsxd rsi,esi
  7ba037:	48 0f af ce          	imul   rcx,rsi
  7ba03b:	4f 63 74 ac fc       	movsxd r14,DWORD PTR [r12+r13*4-0x4]
  7ba040:	4c 0f af b5 70 f4 ff 	imul   r14,QWORD PTR [rbp-0xb90]
  7ba047:	ff 
  7ba048:	4c 8b 85 f0 f5 ff ff 	mov    r8,QWORD PTR [rbp-0xa10]
  7ba04f:	4c 8b 8d 00 f6 ff ff 	mov    r9,QWORD PTR [rbp-0xa00]
  7ba056:	48 8b bd 60 f6 ff ff 	mov    rdi,QWORD PTR [rbp-0x9a0]
  7ba05d:	4f 8d 3c 08          	lea    r15,[r8+r9*1]
  7ba061:	4c 2b bd e8 f5 ff ff 	sub    r15,QWORD PTR [rbp-0xa18]
  7ba068:	48 8d 34 f7          	lea    rsi,[rdi+rsi*8]
  7ba06c:	4d 03 fe             	add    r15,r14
  7ba06f:	4c 03 f9             	add    r15,rcx
  7ba072:	48 03 8d 48 f6 ff ff 	add    rcx,QWORD PTR [rbp-0x9b8]
  7ba079:	c4 c1 7b 10 04 07    	vmovsd xmm0,QWORD PTR [r15+rax*1]
  7ba07f:	c5 fb 5c 0c 01       	vsubsd xmm1,xmm0,QWORD PTR [rcx+rax*1]
  7ba084:	c4 a1 7b 11 4c 16 f8 	vmovsd QWORD PTR [rsi+r10*1-0x8],xmm1
  7ba08b:	49 ff c3             	inc    r11
  7ba08e:	4c 03 95 80 f6 ff ff 	add    r10,QWORD PTR [rbp-0x980]
  7ba095:	48 03 85 70 f6 ff ff 	add    rax,QWORD PTR [rbp-0x990]
  7ba09c:	4c 3b 9d 78 f6 ff ff 	cmp    r11,QWORD PTR [rbp-0x988]
  7ba0a3:	0f 82 85 fe ff ff    	jb     7b9f2e <pre_step3d_mod_mp_pre_step3d_tile_+0x92e>
  7ba0a9:	e9 4b 01 00 00       	jmp    7ba1f9 <pre_step3d_mod_mp_pre_step3d_tile_+0xbf9>
  7ba0ae:	4c 63 85 90 f6 ff ff 	movsxd r8,DWORD PTR [rbp-0x970]
  7ba0b5:	4a 8d 04 e5 00 00 00 	lea    rax,[r12*8+0x0]
  7ba0bc:	00 
  7ba0bd:	4d 2b c1             	sub    r8,r9
  7ba0c0:	48 f7 d8             	neg    rax
  7ba0c3:	4c 8b b5 e8 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xa18]
  7ba0ca:	49 ff c0             	inc    r8
  7ba0cd:	45 89 c1             	mov    r9d,r8d
  7ba0d0:	49 03 c3             	add    rax,r11
  7ba0d3:	41 83 e1 fc          	and    r9d,0xfffffffc
  7ba0d7:	48 03 d0             	add    rdx,rax
  7ba0da:	4d 63 c9             	movsxd r9,r9d
  7ba0dd:	4f 8d 24 e6          	lea    r12,[r14+r12*8]
  7ba0e1:	45 33 d2             	xor    r10d,r10d
  7ba0e4:	4d 2b dc             	sub    r11,r12
  7ba0e7:	48 89 95 10 f6 ff ff 	mov    QWORD PTR [rbp-0x9f0],rdx
  7ba0ee:	49 03 cb             	add    rcx,r11
  7ba0f1:	4c 89 ad 30 f4 ff ff 	mov    QWORD PTR [rbp-0xbd0],r13
  7ba0f8:	33 c0                	xor    eax,eax
  7ba0fa:	48 89 b5 40 f4 ff ff 	mov    QWORD PTR [rbp-0xbc0],rsi
  7ba101:	4c 89 8d 18 f6 ff ff 	mov    QWORD PTR [rbp-0x9e8],r9
  7ba108:	48 89 bd 38 f4 ff ff 	mov    QWORD PTR [rbp-0xbc8],rdi
  7ba10f:	4c 89 f7             	mov    rdi,r14
  7ba112:	48 8b b5 e0 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xa20]
  7ba119:	44 8b b5 90 f6 ff ff 	mov    r14d,DWORD PTR [rbp-0x970]
  7ba120:	4c 8b ad d0 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xa30]
  7ba127:	48 8b 95 68 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x998]
  7ba12e:	44 3b b5 88 f6 ff ff 	cmp    r14d,DWORD PTR [rbp-0x978]
  7ba135:	0f 8c a0 00 00 00    	jl     7ba1db <pre_step3d_mod_mp_pre_step3d_tile_+0xbdb>
  7ba13b:	49 83 f8 04          	cmp    r8,0x4
  7ba13f:	0f 8c 35 f5 00 00    	jl     7c967a <pre_step3d_mod_mp_pre_step3d_tile_+0x1007a>
  7ba145:	4d 63 4c 95 fc       	movsxd r9,DWORD PTR [r13+rdx*4-0x4]
  7ba14a:	45 33 e4             	xor    r12d,r12d
  7ba14d:	4c 0f af 8d 70 f4 ff 	imul   r9,QWORD PTR [rbp-0xb90]
  7ba154:	ff 
  7ba155:	49 f7 d9             	neg    r9
  7ba158:	4c 8d 1c 01          	lea    r11,[rcx+rax*1]
  7ba15c:	4c 03 cf             	add    r9,rdi
  7ba15f:	49 f7 d9             	neg    r9
  7ba162:	4c 03 8d 10 f6 ff ff 	add    r9,QWORD PTR [rbp-0x9f0]
  7ba169:	4c 8b bd 18 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x9e8]
  7ba170:	4c 03 c8             	add    r9,rax
  7ba173:	4c 89 fa             	mov    rdx,r15
  7ba176:	c4 81 7d 10 04 e1    	vmovupd ymm0,YMMWORD PTR [r9+r12*8]
  7ba17c:	c4 81 7d 5c 0c e3    	vsubpd ymm1,ymm0,YMMWORD PTR [r11+r12*8]
  7ba182:	c4 a1 7d 11 0c e6    	vmovupd YMMWORD PTR [rsi+r12*8],ymm1
  7ba188:	49 83 c4 04          	add    r12,0x4
  7ba18c:	4c 3b e2             	cmp    r12,rdx
  7ba18f:	72 e5                	jb     7ba176 <pre_step3d_mod_mp_pre_step3d_tile_+0xb76>
  7ba191:	48 8b 95 68 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x998]
  7ba198:	4d 3b f8             	cmp    r15,r8
  7ba19b:	73 3e                	jae    7ba1db <pre_step3d_mod_mp_pre_step3d_tile_+0xbdb>
  7ba19d:	4d 63 4c 95 fc       	movsxd r9,DWORD PTR [r13+rdx*4-0x4]
  7ba1a2:	4c 8d 1c 01          	lea    r11,[rcx+rax*1]
  7ba1a6:	4c 0f af 8d 70 f4 ff 	imul   r9,QWORD PTR [rbp-0xb90]
  7ba1ad:	ff 
  7ba1ae:	49 f7 d9             	neg    r9
  7ba1b1:	4c 03 cf             	add    r9,rdi
  7ba1b4:	49 f7 d9             	neg    r9
  7ba1b7:	4c 03 8d 10 f6 ff ff 	add    r9,QWORD PTR [rbp-0x9f0]
  7ba1be:	4c 03 c8             	add    r9,rax
  7ba1c1:	c4 81 7b 10 04 f9    	vmovsd xmm0,QWORD PTR [r9+r15*8]
  7ba1c7:	c4 81 7b 5c 0c fb    	vsubsd xmm1,xmm0,QWORD PTR [r11+r15*8]
  7ba1cd:	c4 a1 7b 11 0c fe    	vmovsd QWORD PTR [rsi+r15*8],xmm1
  7ba1d3:	49 ff c7             	inc    r15
  7ba1d6:	4d 3b f8             	cmp    r15,r8
  7ba1d9:	72 e6                	jb     7ba1c1 <pre_step3d_mod_mp_pre_step3d_tile_+0xbc1>
  7ba1db:	49 ff c2             	inc    r10
  7ba1de:	48 03 b5 80 f6 ff ff 	add    rsi,QWORD PTR [rbp-0x980]
  7ba1e5:	48 03 85 70 f6 ff ff 	add    rax,QWORD PTR [rbp-0x990]
  7ba1ec:	4c 3b 95 78 f6 ff ff 	cmp    r10,QWORD PTR [rbp-0x988]
  7ba1f3:	0f 82 35 ff ff ff    	jb     7ba12e <pre_step3d_mod_mp_pre_step3d_tile_+0xb2e>
  7ba1f9:	4c 8b ad 30 f4 ff ff 	mov    r13,QWORD PTR [rbp-0xbd0]
  7ba200:	48 8b bd 38 f4 ff ff 	mov    rdi,QWORD PTR [rbp-0xbc8]
  7ba207:	48 8b b5 40 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xbc0]
  7ba20e:	48 83 c4 c0          	add    rsp,0xffffffffffffffc0
  7ba212:	48 8b 85 a0 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xa60]
  7ba219:	4c 8b 8d d8 f4 ff ff 	mov    r9,QWORD PTR [rbp-0xb28]
  7ba220:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  7ba224:	48 8b 95 98 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xa68]
  7ba22b:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
  7ba230:	48 8b 8d 50 f4 ff ff 	mov    rcx,QWORD PTR [rbp-0xbb0]
  7ba237:	48 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],rcx
  7ba23c:	4c 8b 85 90 f5 ff ff 	mov    r8,QWORD PTR [rbp-0xa70]
  7ba243:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
  7ba248:	48 c7 44 24 20 58 8c 	mov    QWORD PTR [rsp+0x20],0x848c58
  7ba24f:	84 00 
  7ba251:	4c 89 6c 24 28       	mov    QWORD PTR [rsp+0x28],r13
  7ba256:	4c 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],r9
  7ba25b:	48 8b 95 a8 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xa58]
  7ba262:	48 8b 8d 80 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xa80]
  7ba269:	4c 8b 85 b0 f5 ff ff 	mov    r8,QWORD PTR [rbp-0xa50]
  7ba270:	4c 8b 8d 88 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xa78]
  7ba277:	c5 f8 77             	vzeroupper 
  7ba27a:	e8 31 eb ff ff       	call   7b8db0 <lmd_swfrac_tile_>
  7ba27f:	48 83 c4 40          	add    rsp,0x40
  7ba283:	48 63 95 dc f5 ff ff 	movsxd rdx,DWORD PTR [rbp-0xa24]
  7ba28a:	45 33 ed             	xor    r13d,r13d
  7ba28d:	48 63 85 d8 f5 ff ff 	movsxd rax,DWORD PTR [rbp-0xa28]
  7ba294:	48 89 95 78 f6 ff ff 	mov    QWORD PTR [rbp-0x988],rdx
  7ba29b:	48 3b d0             	cmp    rdx,rax
  7ba29e:	0f 8c 88 01 00 00    	jl     7ba42c <pre_step3d_mod_mp_pre_step3d_tile_+0xe2c>
  7ba2a4:	44 8b b5 cc f5 ff ff 	mov    r14d,DWORD PTR [rbp-0xa34]
  7ba2ab:	45 89 f7             	mov    r15d,r14d
  7ba2ae:	44 8b 9d c8 f5 ff ff 	mov    r11d,DWORD PTR [rbp-0xa38]
  7ba2b5:	45 2b fb             	sub    r15d,r11d
  7ba2b8:	44 89 9d b8 f6 ff ff 	mov    DWORD PTR [rbp-0x948],r11d
  7ba2bf:	41 ff c7             	inc    r15d
  7ba2c2:	44 89 b5 c0 f6 ff ff 	mov    DWORD PTR [rbp-0x940],r14d
  7ba2c9:	4d 63 db             	movsxd r11,r11d
  7ba2cc:	4d 63 f6             	movsxd r14,r14d
  7ba2cf:	4d 2b f3             	sub    r14,r11
  7ba2d2:	48 63 b5 b8 f5 ff ff 	movsxd rsi,DWORD PTR [rbp-0xa48]
  7ba2d9:	4c 63 a5 bc f5 ff ff 	movsxd r12,DWORD PTR [rbp-0xa44]
  7ba2e0:	4c 2b e6             	sub    r12,rsi
  7ba2e3:	44 89 bd 48 f4 ff ff 	mov    DWORD PTR [rbp-0xbb8],r15d
  7ba2ea:	4e 8d 3c f5 08 00 00 	lea    r15,[r14*8+0x8]
  7ba2f1:	00 
  7ba2f2:	49 ff c6             	inc    r14
  7ba2f5:	4c 8b 95 90 f1 ff ff 	mov    r10,QWORD PTR [rbp-0xe70]
  7ba2fc:	45 89 f1             	mov    r9d,r14d
  7ba2ff:	49 89 d0             	mov    r8,rdx
  7ba302:	41 83 e1 fc          	and    r9d,0xfffffffc
  7ba306:	4c 2b c0             	sub    r8,rax
  7ba309:	4d 63 c9             	movsxd r9,r9d
  7ba30c:	49 ff c0             	inc    r8
  7ba30f:	4c 89 85 b0 f6 ff ff 	mov    QWORD PTR [rbp-0x950],r8
  7ba316:	4f 8d 04 da          	lea    r8,[r10+r11*8]
  7ba31a:	4c 89 8d e0 f6 ff ff 	mov    QWORD PTR [rbp-0x920],r9
  7ba321:	4d 8d 54 24 01       	lea    r10,[r12+0x1]
  7ba326:	48 8b 95 d8 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xb28]
  7ba32d:	4c 8d 0c c5 00 00 00 	lea    r9,[rax*8+0x0]
  7ba334:	00 
  7ba335:	4d 0f af ca          	imul   r9,r10
  7ba339:	48 c1 e6 03          	shl    rsi,0x3
  7ba33d:	4e 8d 24 e5 08 00 00 	lea    r12,[r12*8+0x8]
  7ba344:	00 
  7ba345:	48 63 bd c0 f5 ff ff 	movsxd rdi,DWORD PTR [rbp-0xa40]
  7ba34c:	4a 8d 14 da          	lea    rdx,[rdx+r11*8]
  7ba350:	48 63 8d c4 f5 ff ff 	movsxd rcx,DWORD PTR [rbp-0xa3c]
  7ba357:	49 89 d3             	mov    r11,rdx
  7ba35a:	4c 89 a5 a8 f6 ff ff 	mov    QWORD PTR [rbp-0x958],r12
  7ba361:	48 2b cf             	sub    rcx,rdi
  7ba364:	49 0f af fc          	imul   rdi,r12
  7ba368:	49 89 f4             	mov    r12,rsi
  7ba36b:	48 2b d6             	sub    rdx,rsi
  7ba36e:	4d 2b e1             	sub    r12,r9
  7ba371:	48 ff c1             	inc    rcx
  7ba374:	4d 2b dc             	sub    r11,r12
  7ba377:	49 f7 dc             	neg    r12
  7ba37a:	4d 03 e0             	add    r12,r8
  7ba37d:	4c 2b c6             	sub    r8,rsi
  7ba380:	48 8b b5 68 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb98]
  7ba387:	4c 2b cf             	sub    r9,rdi
  7ba38a:	4d 03 c1             	add    r8,r9
  7ba38d:	4c 2b df             	sub    r11,rdi
  7ba390:	49 03 d1             	add    rdx,r9
  7ba393:	4c 89 bd c8 f6 ff ff 	mov    QWORD PTR [rbp-0x938],r15
  7ba39a:	48 8d 34 f5 08 00 00 	lea    rsi,[rsi*8+0x8]
  7ba3a1:	00 
  7ba3a2:	4c 0f af d6          	imul   r10,rsi
  7ba3a6:	4c 0f af d1          	imul   r10,rcx
  7ba3aa:	49 2b fa             	sub    rdi,r10
  7ba3ad:	4d 03 c2             	add    r8,r10
  7ba3b0:	4c 89 9d d0 f6 ff ff 	mov    QWORD PTR [rbp-0x930],r11
  7ba3b7:	45 33 ff             	xor    r15d,r15d
  7ba3ba:	4c 89 85 d8 f6 ff ff 	mov    QWORD PTR [rbp-0x928],r8
  7ba3c1:	4c 2b e7             	sub    r12,rdi
  7ba3c4:	48 89 95 e8 f6 ff ff 	mov    QWORD PTR [rbp-0x918],rdx
  7ba3cb:	48 89 85 08 f6 ff ff 	mov    QWORD PTR [rbp-0x9f8],rax
  7ba3d2:	8b 85 c0 f6 ff ff    	mov    eax,DWORD PTR [rbp-0x940]
  7ba3d8:	3b 85 b8 f6 ff ff    	cmp    eax,DWORD PTR [rbp-0x948]
  7ba3de:	7c 32                	jl     7ba412 <pre_step3d_mod_mp_pre_step3d_tile_+0xe12>
  7ba3e0:	83 bd 48 f4 ff ff 0c 	cmp    DWORD PTR [rbp-0xbb8],0xc
  7ba3e7:	0f 8e 28 f2 00 00    	jle    7c9615 <pre_step3d_mod_mp_pre_step3d_tile_+0x10015>
  7ba3ed:	48 8b 85 d8 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x928]
  7ba3f4:	48 8b 8d d0 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x930]
  7ba3fb:	48 8b 95 c8 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x938]
  7ba402:	4a 8d 3c 38          	lea    rdi,[rax+r15*1]
  7ba406:	4a 8d 34 39          	lea    rsi,[rcx+r15*1]
  7ba40a:	c5 f8 77             	vzeroupper 
  7ba40d:	e8 7e 6e d1 ff       	call   4d1290 <_intel_fast_memcpy>
  7ba412:	49 ff c5             	inc    r13
  7ba415:	4c 03 bd a8 f6 ff ff 	add    r15,QWORD PTR [rbp-0x958]
  7ba41c:	4c 3b ad b0 f6 ff ff 	cmp    r13,QWORD PTR [rbp-0x950]
  7ba423:	72 ad                	jb     7ba3d2 <pre_step3d_mod_mp_pre_step3d_tile_+0xdd2>
  7ba425:	48 8b 85 08 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x9f8]
  7ba42c:	48 8b 95 60 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xba0]
  7ba433:	48 8b 8d 68 f4 ff ff 	mov    rcx,QWORD PTR [rbp-0xb98]
  7ba43a:	48 ff c1             	inc    rcx
  7ba43d:	48 03 95 70 f4 ff ff 	add    rdx,QWORD PTR [rbp-0xb90]
  7ba444:	48 89 95 60 f4 ff ff 	mov    QWORD PTR [rbp-0xba0],rdx
  7ba44b:	48 89 8d 68 f4 ff ff 	mov    QWORD PTR [rbp-0xb98],rcx
  7ba452:	48 3b 8d 58 f4 ff ff 	cmp    rcx,QWORD PTR [rbp-0xba8]
  7ba459:	73 0c                	jae    7ba467 <pre_step3d_mod_mp_pre_step3d_tile_+0xe67>
  7ba45b:	48 8b b5 70 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xa90]
  7ba462:	e9 b6 f8 ff ff       	jmp    7b9d1d <pre_step3d_mod_mp_pre_step3d_tile_+0x71d>
  7ba467:	41 bc 01 00 00 00    	mov    r12d,0x1
  7ba46d:	bf cc 72 ab 00       	mov    edi,0xab72cc
  7ba472:	c5 f8 77             	vzeroupper 
  7ba475:	e8 76 33 c5 ff       	call   40d7f0 <__kmpc_global_thread_num@plt>
  7ba47a:	89 85 6c f5 ff ff    	mov    DWORD PTR [rbp-0xa94],eax
  7ba480:	bf 1c 73 ab 00       	mov    edi,0xab731c
  7ba485:	33 c0                	xor    eax,eax
  7ba487:	e8 94 34 c5 ff       	call   40d920 <__kmpc_ok_to_fork@plt>
  7ba48c:	85 c0                	test   eax,eax
  7ba48e:	0f 84 3c 01 00 00    	je     7ba5d0 <pre_step3d_mod_mp_pre_step3d_tile_+0xfd0>
  7ba494:	48 81 c4 20 ff ff ff 	add    rsp,0xffffffffffffff20
  7ba49b:	4c 8d 95 5c f5 ff ff 	lea    r10,[rbp-0xaa4]
  7ba4a2:	ba 40 56 7c 00       	mov    edx,0x7c5640
  7ba4a7:	4d 8d 5a 04          	lea    r11,[r10+0x4]
  7ba4ab:	4c 8d ab 00 01 00 00 	lea    r13,[rbx+0x100]
  7ba4b2:	4c 8d 73 38          	lea    r14,[rbx+0x38]
  7ba4b6:	4c 89 14 24          	mov    QWORD PTR [rsp],r10
  7ba4ba:	4c 8d 7b 50          	lea    r15,[rbx+0x50]
  7ba4be:	4c 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],r11
  7ba4c3:	49 8d 42 14          	lea    rax,[r10+0x14]
  7ba4c7:	4c 89 6c 24 10       	mov    QWORD PTR [rsp+0x10],r13
  7ba4cc:	48 8d 70 58          	lea    rsi,[rax+0x58]
  7ba4d0:	4c 89 74 24 18       	mov    QWORD PTR [rsp+0x18],r14
  7ba4d5:	48 8d 78 5c          	lea    rdi,[rax+0x5c]
  7ba4d9:	4c 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],r15
  7ba4de:	4d 8d 55 80          	lea    r10,[r13-0x80]
  7ba4e2:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  7ba4e7:	4c 8d 58 f4          	lea    r11,[rax-0xc]
  7ba4eb:	48 89 74 24 30       	mov    QWORD PTR [rsp+0x30],rsi
  7ba4f0:	4c 8d 68 f8          	lea    r13,[rax-0x8]
  7ba4f4:	48 89 7c 24 38       	mov    QWORD PTR [rsp+0x38],rdi
  7ba4f9:	4c 8d 73 58          	lea    r14,[rbx+0x58]
  7ba4fd:	4c 89 54 24 40       	mov    QWORD PTR [rsp+0x40],r10
  7ba502:	4d 8d 7a 08          	lea    r15,[r10+0x8]
  7ba506:	4c 89 5c 24 48       	mov    QWORD PTR [rsp+0x48],r11
  7ba50b:	48 8d 43 78          	lea    rax,[rbx+0x78]
  7ba50f:	4c 89 6c 24 50       	mov    QWORD PTR [rsp+0x50],r13
  7ba514:	48 8d 73 40          	lea    rsi,[rbx+0x40]
  7ba518:	4c 89 74 24 58       	mov    QWORD PTR [rsp+0x58],r14
  7ba51d:	48 8d 7b 68          	lea    rdi,[rbx+0x68]
  7ba521:	4c 89 7c 24 60       	mov    QWORD PTR [rsp+0x60],r15
  7ba526:	4c 8d 53 70          	lea    r10,[rbx+0x70]
  7ba52a:	48 89 44 24 68       	mov    QWORD PTR [rsp+0x68],rax
  7ba52f:	4d 8d 5b 54          	lea    r11,[r11+0x54]
  7ba533:	48 89 74 24 70       	mov    QWORD PTR [rsp+0x70],rsi
  7ba538:	4d 8d 6b 04          	lea    r13,[r11+0x4]
  7ba53c:	48 8d 74 24 78       	lea    rsi,[rsp+0x78]
  7ba541:	48 89 3e             	mov    QWORD PTR [rsi],rdi
  7ba544:	4d 8d 73 08          	lea    r14,[r11+0x8]
  7ba548:	4c 89 56 08          	mov    QWORD PTR [rsi+0x8],r10
  7ba54c:	4d 8d 7b 0c          	lea    r15,[r11+0xc]
  7ba550:	4c 89 5e 10          	mov    QWORD PTR [rsi+0x10],r11
  7ba554:	49 8d 43 88          	lea    rax,[r11-0x78]
  7ba558:	4c 8d 9c 24 90 00 00 	lea    r11,[rsp+0x90]
  7ba55f:	00 
  7ba560:	4d 89 2b             	mov    QWORD PTR [r11],r13
  7ba563:	48 8d 70 04          	lea    rsi,[rax+0x4]
  7ba567:	4d 89 73 08          	mov    QWORD PTR [r11+0x8],r14
  7ba56b:	48 8d bd 78 f4 ff ff 	lea    rdi,[rbp-0xb88]
  7ba572:	4d 89 7b 10          	mov    QWORD PTR [r11+0x10],r15
  7ba576:	48 8d 48 38          	lea    rcx,[rax+0x38]
  7ba57a:	4c 8d bc 24 a8 00 00 	lea    r15,[rsp+0xa8]
  7ba581:	00 
  7ba582:	49 89 07             	mov    QWORD PTR [r15],rax
  7ba585:	4c 8d 41 60          	lea    r8,[rcx+0x60]
  7ba589:	49 89 77 08          	mov    QWORD PTR [r15+0x8],rsi
  7ba58d:	4c 8d 49 64          	lea    r9,[rcx+0x64]
  7ba591:	49 89 7f 10          	mov    QWORD PTR [r15+0x10],rdi
  7ba595:	bf 1c 73 ab 00       	mov    edi,0xab731c
  7ba59a:	be 1e 00 00 00       	mov    esi,0x1e
  7ba59f:	33 c0                	xor    eax,eax
  7ba5a1:	4c 8d 95 d8 f4 ff ff 	lea    r10,[rbp-0xb28]
  7ba5a8:	4d 89 57 18          	mov    QWORD PTR [r15+0x18],r10
  7ba5ac:	4c 8d 9d 20 f2 ff ff 	lea    r11,[rbp-0xde0]
  7ba5b3:	4d 89 5f 20          	mov    QWORD PTR [r15+0x20],r11
  7ba5b7:	4d 8d 6b 60          	lea    r13,[r11+0x60]
  7ba5bb:	4d 89 6f 28          	mov    QWORD PTR [r15+0x28],r13
  7ba5bf:	e8 ac 31 c5 ff       	call   40d770 <__kmpc_fork_call@plt>
  7ba5c4:	48 81 c4 e0 00 00 00 	add    rsp,0xe0
  7ba5cb:	e9 57 01 00 00       	jmp    7ba727 <pre_step3d_mod_mp_pre_step3d_tile_+0x1127>
  7ba5d0:	bf 1c 73 ab 00       	mov    edi,0xab731c
  7ba5d5:	33 c0                	xor    eax,eax
  7ba5d7:	8b b5 6c f5 ff ff    	mov    esi,DWORD PTR [rbp-0xa94]
  7ba5dd:	e8 2e 33 c5 ff       	call   40d910 <__kmpc_serialized_parallel@plt>
  7ba5e2:	48 81 c4 30 ff ff ff 	add    rsp,0xffffffffffffff30
  7ba5e9:	48 8d 85 60 f5 ff ff 	lea    rax,[rbp-0xaa0]
  7ba5f0:	be 7c 11 be 00       	mov    esi,0xbe117c
  7ba5f5:	4c 8d 93 00 01 00 00 	lea    r10,[rbx+0x100]
  7ba5fc:	4c 8d 5b 38          	lea    r11,[rbx+0x38]
  7ba600:	4c 8d 6b 50          	lea    r13,[rbx+0x50]
  7ba604:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  7ba608:	4c 8d 70 10          	lea    r14,[rax+0x10]
  7ba60c:	4c 89 54 24 08       	mov    QWORD PTR [rsp+0x8],r10
  7ba611:	4c 8d 78 68          	lea    r15,[rax+0x68]
  7ba615:	4c 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],r11
  7ba61a:	48 8d 40 6c          	lea    rax,[rax+0x6c]
  7ba61e:	4c 89 6c 24 18       	mov    QWORD PTR [rsp+0x18],r13
  7ba623:	4d 8d 52 80          	lea    r10,[r10-0x80]
  7ba627:	4c 89 74 24 20       	mov    QWORD PTR [rsp+0x20],r14
  7ba62c:	4c 8d 58 98          	lea    r11,[rax-0x68]
  7ba630:	4c 89 7c 24 28       	mov    QWORD PTR [rsp+0x28],r15
  7ba635:	4c 8d 68 9c          	lea    r13,[rax-0x64]
  7ba639:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  7ba63e:	4c 8d 73 58          	lea    r14,[rbx+0x58]
  7ba642:	4c 89 54 24 38       	mov    QWORD PTR [rsp+0x38],r10
  7ba647:	4d 8d 7a 08          	lea    r15,[r10+0x8]
  7ba64b:	4c 89 5c 24 40       	mov    QWORD PTR [rsp+0x40],r11
  7ba650:	48 8d 43 78          	lea    rax,[rbx+0x78]
  7ba654:	4c 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],r13
  7ba659:	4c 8d 53 40          	lea    r10,[rbx+0x40]
  7ba65d:	4c 89 74 24 50       	mov    QWORD PTR [rsp+0x50],r14
  7ba662:	4c 8d 5b 68          	lea    r11,[rbx+0x68]
  7ba666:	4c 89 7c 24 58       	mov    QWORD PTR [rsp+0x58],r15
  7ba66b:	4c 8d 6b 70          	lea    r13,[rbx+0x70]
  7ba66f:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
  7ba674:	4c 8d b5 b8 f5 ff ff 	lea    r14,[rbp-0xa48]
  7ba67b:	4c 89 54 24 68       	mov    QWORD PTR [rsp+0x68],r10
  7ba680:	4d 8d 7e 04          	lea    r15,[r14+0x4]
  7ba684:	4c 89 5c 24 70       	mov    QWORD PTR [rsp+0x70],r11
  7ba689:	49 8d 46 08          	lea    rax,[r14+0x8]
  7ba68d:	4c 89 6c 24 78       	mov    QWORD PTR [rsp+0x78],r13
  7ba692:	4c 8d 50 04          	lea    r10,[rax+0x4]
  7ba696:	4c 89 b4 24 80 00 00 	mov    QWORD PTR [rsp+0x80],r14
  7ba69d:	00 
  7ba69e:	4c 8d 58 80          	lea    r11,[rax-0x80]
  7ba6a2:	4c 8d b4 24 88 00 00 	lea    r14,[rsp+0x88]
  7ba6a9:	00 
  7ba6aa:	4d 89 3e             	mov    QWORD PTR [r14],r15
  7ba6ad:	48 8d 78 ac          	lea    rdi,[rax-0x54]
  7ba6b1:	49 89 46 08          	mov    QWORD PTR [r14+0x8],rax
  7ba6b5:	48 8d 50 b8          	lea    rdx,[rax-0x48]
  7ba6b9:	4d 89 56 10          	mov    QWORD PTR [r14+0x10],r10
  7ba6bd:	48 8d 48 18          	lea    rcx,[rax+0x18]
  7ba6c1:	4c 8d 94 24 a0 00 00 	lea    r10,[rsp+0xa0]
  7ba6c8:	00 
  7ba6c9:	4d 89 1a             	mov    QWORD PTR [r10],r11
  7ba6cc:	4c 8d 40 1c          	lea    r8,[rax+0x1c]
  7ba6d0:	4c 8d 48 9c          	lea    r9,[rax-0x64]
  7ba6d4:	4c 8d 68 84          	lea    r13,[rax-0x7c]
  7ba6d8:	4d 89 6a 08          	mov    QWORD PTR [r10+0x8],r13
  7ba6dc:	4c 8d b5 78 f4 ff ff 	lea    r14,[rbp-0xb88]
  7ba6e3:	4d 89 72 10          	mov    QWORD PTR [r10+0x10],r14
  7ba6e7:	4d 8d 7b 98          	lea    r15,[r11-0x68]
  7ba6eb:	4c 8d 9c 24 b8 00 00 	lea    r11,[rsp+0xb8]
  7ba6f2:	00 
  7ba6f3:	4d 89 3b             	mov    QWORD PTR [r11],r15
  7ba6f6:	48 8d 85 20 f2 ff ff 	lea    rax,[rbp-0xde0]
  7ba6fd:	49 89 43 08          	mov    QWORD PTR [r11+0x8],rax
  7ba701:	4c 8d 50 60          	lea    r10,[rax+0x60]
  7ba705:	4d 89 53 10          	mov    QWORD PTR [r11+0x10],r10
  7ba709:	e8 32 af 00 00       	call   7c5640 <pre_step3d_mod_mp_pre_step3d_tile_+0xc040>
  7ba70e:	48 81 c4 d0 00 00 00 	add    rsp,0xd0
  7ba715:	bf 1c 73 ab 00       	mov    edi,0xab731c
  7ba71a:	33 c0                	xor    eax,eax
  7ba71c:	8b b5 6c f5 ff ff    	mov    esi,DWORD PTR [rbp-0xa94]
  7ba722:	e8 39 35 c5 ff       	call   40dc60 <__kmpc_end_serialized_parallel@plt>
  7ba727:	bf 6c 73 ab 00       	mov    edi,0xab736c
  7ba72c:	33 c0                	xor    eax,eax
  7ba72e:	e8 ed 31 c5 ff       	call   40d920 <__kmpc_ok_to_fork@plt>
  7ba733:	85 c0                	test   eax,eax
  7ba735:	0f 84 e9 00 00 00    	je     7ba824 <pre_step3d_mod_mp_pre_step3d_tile_+0x1224>
  7ba73b:	48 81 c4 60 ff ff ff 	add    rsp,0xffffffffffffff60
  7ba742:	4c 8d 95 c8 f5 ff ff 	lea    r10,[rbp-0xa38]
  7ba749:	4d 8d 5a 04          	lea    r11,[r10+0x4]
  7ba74d:	4c 8d 6b 78          	lea    r13,[rbx+0x78]
  7ba751:	4c 8d 73 68          	lea    r14,[rbx+0x68]
  7ba755:	4c 89 14 24          	mov    QWORD PTR [rsp],r10
  7ba759:	4c 8d 7b 70          	lea    r15,[rbx+0x70]
  7ba75d:	4c 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],r11
  7ba762:	49 8d 55 08          	lea    rdx,[r13+0x8]
  7ba766:	4c 89 6c 24 10       	mov    QWORD PTR [rsp+0x10],r13
  7ba76b:	48 8d 72 08          	lea    rsi,[rdx+0x8]
  7ba76f:	4c 89 74 24 18       	mov    QWORD PTR [rsp+0x18],r14
  7ba774:	48 8d 7a 68          	lea    rdi,[rdx+0x68]
  7ba778:	4c 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],r15
  7ba77d:	48 8d 4e 78          	lea    rcx,[rsi+0x78]
  7ba781:	48 89 54 24 28       	mov    QWORD PTR [rsp+0x28],rdx
  7ba786:	4c 8d 43 38          	lea    r8,[rbx+0x38]
  7ba78a:	48 89 74 24 30       	mov    QWORD PTR [rsp+0x30],rsi
  7ba78f:	49 8d 42 f0          	lea    rax,[r10-0x10]
  7ba793:	48 89 7c 24 38       	mov    QWORD PTR [rsp+0x38],rdi
  7ba798:	4c 8d 48 04          	lea    r9,[rax+0x4]
  7ba79c:	48 89 4c 24 40       	mov    QWORD PTR [rsp+0x40],rcx
  7ba7a1:	4c 8d 50 90          	lea    r10,[rax-0x70]
  7ba7a5:	4c 89 44 24 48       	mov    QWORD PTR [rsp+0x48],r8
  7ba7aa:	4c 8d 58 88          	lea    r11,[rax-0x78]
  7ba7ae:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  7ba7b3:	4c 8d 68 8c          	lea    r13,[rax-0x74]
  7ba7b7:	4c 89 4c 24 58       	mov    QWORD PTR [rsp+0x58],r9
  7ba7bc:	4c 8d 70 94          	lea    r14,[rax-0x6c]
  7ba7c0:	4c 89 54 24 60       	mov    QWORD PTR [rsp+0x60],r10
  7ba7c5:	4c 8d bd a0 f3 ff ff 	lea    r15,[rbp-0xc60]
  7ba7cc:	4c 89 5c 24 68       	mov    QWORD PTR [rsp+0x68],r11
  7ba7d1:	49 8d 77 a0          	lea    rsi,[r15-0x60]
  7ba7d5:	4c 89 6c 24 70       	mov    QWORD PTR [rsp+0x70],r13
  7ba7da:	48 8d 7e a0          	lea    rdi,[rsi-0x60]
  7ba7de:	4c 89 74 24 78       	mov    QWORD PTR [rsp+0x78],r14
  7ba7e3:	ba e5 35 7c 00       	mov    edx,0x7c35e5
  7ba7e8:	4c 8d b4 24 80 00 00 	lea    r14,[rsp+0x80]
  7ba7ef:	00 
  7ba7f0:	4d 89 3e             	mov    QWORD PTR [r14],r15
  7ba7f3:	48 8d 48 20          	lea    rcx,[rax+0x20]
  7ba7f7:	49 89 76 08          	mov    QWORD PTR [r14+0x8],rsi
  7ba7fb:	be 16 00 00 00       	mov    esi,0x16
  7ba800:	49 89 7e 10          	mov    QWORD PTR [r14+0x10],rdi
  7ba804:	bf 6c 73 ab 00       	mov    edi,0xab736c
  7ba809:	33 c0                	xor    eax,eax
  7ba80b:	4c 8d 41 04          	lea    r8,[rcx+0x4]
  7ba80f:	4c 8d 49 a0          	lea    r9,[rcx-0x60]
  7ba813:	e8 58 2f c5 ff       	call   40d770 <__kmpc_fork_call@plt>
  7ba818:	48 81 c4 a0 00 00 00 	add    rsp,0xa0
  7ba81f:	e9 b8 00 00 00       	jmp    7ba8dc <pre_step3d_mod_mp_pre_step3d_tile_+0x12dc>
  7ba824:	bf 6c 73 ab 00       	mov    edi,0xab736c
  7ba829:	33 c0                	xor    eax,eax
  7ba82b:	8b b5 6c f5 ff ff    	mov    esi,DWORD PTR [rbp-0xa94]
  7ba831:	e8 da 30 c5 ff       	call   40d910 <__kmpc_serialized_parallel@plt>
  7ba836:	48 8d 85 e0 f2 ff ff 	lea    rax,[rbp-0xd20]
  7ba83d:	50                   	push   rax
  7ba83e:	4c 8d 50 60          	lea    r10,[rax+0x60]
  7ba842:	41 52                	push   r10
  7ba844:	4d 8d 5a 60          	lea    r11,[r10+0x60]
  7ba848:	41 53                	push   r11
  7ba84a:	4c 8d ad 4c f5 ff ff 	lea    r13,[rbp-0xab4]
  7ba851:	41 55                	push   r13
  7ba853:	4d 8d 75 f8          	lea    r14,[r13-0x8]
  7ba857:	41 56                	push   r14
  7ba859:	4d 8d 7d f4          	lea    r15,[r13-0xc]
  7ba85d:	41 57                	push   r15
  7ba85f:	49 8d 7d fc          	lea    rdi,[r13-0x4]
  7ba863:	57                   	push   rdi
  7ba864:	48 8d 77 74          	lea    rsi,[rdi+0x74]
  7ba868:	56                   	push   rsi
  7ba869:	be 80 11 be 00       	mov    esi,0xbe1180
  7ba86e:	48 8d 57 70          	lea    rdx,[rdi+0x70]
  7ba872:	52                   	push   rdx
  7ba873:	48 8d 4b 38          	lea    rcx,[rbx+0x38]
  7ba877:	51                   	push   rcx
  7ba878:	4c 8d 83 00 01 00 00 	lea    r8,[rbx+0x100]
  7ba87f:	41 50                	push   r8
  7ba881:	49 8d 40 e8          	lea    rax,[r8-0x18]
  7ba885:	50                   	push   rax
  7ba886:	4c 8d 48 a0          	lea    r9,[rax-0x60]
  7ba88a:	41 51                	push   r9
  7ba88c:	4c 8d 50 98          	lea    r10,[rax-0x68]
  7ba890:	41 52                	push   r10
  7ba892:	4c 8d 5b 70          	lea    r11,[rbx+0x70]
  7ba896:	41 53                	push   r11
  7ba898:	4c 8d 6b 68          	lea    r13,[rbx+0x68]
  7ba89c:	41 55                	push   r13
  7ba89e:	4c 8d 73 78          	lea    r14,[rbx+0x78]
  7ba8a2:	41 56                	push   r14
  7ba8a4:	4c 8d 7a 14          	lea    r15,[rdx+0x14]
  7ba8a8:	41 57                	push   r15
  7ba8aa:	48 8d 7a b4          	lea    rdi,[rdx-0x4c]
  7ba8ae:	48 8d 52 20          	lea    rdx,[rdx+0x20]
  7ba8b2:	48 8d 4a 04          	lea    rcx,[rdx+0x4]
  7ba8b6:	4c 8d 42 a0          	lea    r8,[rdx-0x60]
  7ba8ba:	4c 8d 4a f0          	lea    r9,[rdx-0x10]
  7ba8be:	e8 22 8d 00 00       	call   7c35e5 <pre_step3d_mod_mp_pre_step3d_tile_+0x9fe5>
  7ba8c3:	48 81 c4 90 00 00 00 	add    rsp,0x90
  7ba8ca:	bf 6c 73 ab 00       	mov    edi,0xab736c
  7ba8cf:	33 c0                	xor    eax,eax
  7ba8d1:	8b b5 6c f5 ff ff    	mov    esi,DWORD PTR [rbp-0xa94]
  7ba8d7:	e8 84 33 c5 ff       	call   40dc60 <__kmpc_end_serialized_parallel@plt>
  7ba8dc:	bf bc 73 ab 00       	mov    edi,0xab73bc
  7ba8e1:	33 c0                	xor    eax,eax
  7ba8e3:	e8 38 30 c5 ff       	call   40d920 <__kmpc_ok_to_fork@plt>
  7ba8e8:	85 c0                	test   eax,eax
  7ba8ea:	0f 84 0a 01 00 00    	je     7ba9fa <pre_step3d_mod_mp_pre_step3d_tile_+0x13fa>
  7ba8f0:	48 81 c4 50 ff ff ff 	add    rsp,0xffffffffffffff50
  7ba8f7:	4c 8d 95 c8 f5 ff ff 	lea    r10,[rbp-0xa38]
  7ba8fe:	4c 8b 85 90 f1 ff ff 	mov    r8,QWORD PTR [rbp-0xe70]
  7ba905:	4d 8d 5a 04          	lea    r11,[r10+0x4]
  7ba909:	ba 87 13 7c 00       	mov    edx,0x7c1387
  7ba90e:	4c 8d ab 90 00 00 00 	lea    r13,[rbx+0x90]
  7ba915:	4d 8d 75 48          	lea    r14,[r13+0x48]
  7ba919:	4c 89 14 24          	mov    QWORD PTR [rsp],r10
  7ba91d:	4d 8d 7d 70          	lea    r15,[r13+0x70]
  7ba921:	4c 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],r11
  7ba926:	48 8d 73 38          	lea    rsi,[rbx+0x38]
  7ba92a:	4c 89 6c 24 10       	mov    QWORD PTR [rsp+0x10],r13
  7ba92f:	49 8d 7d 40          	lea    rdi,[r13+0x40]
  7ba933:	4c 89 74 24 18       	mov    QWORD PTR [rsp+0x18],r14
  7ba938:	48 8d 4b 60          	lea    rcx,[rbx+0x60]
  7ba93c:	4c 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],r15
  7ba941:	48 8d 41 40          	lea    rax,[rcx+0x40]
  7ba945:	48 89 74 24 28       	mov    QWORD PTR [rsp+0x28],rsi
  7ba94a:	4c 8d 48 18          	lea    r9,[rax+0x18]
  7ba94e:	48 89 7c 24 30       	mov    QWORD PTR [rsp+0x30],rdi
  7ba953:	4c 8d 53 78          	lea    r10,[rbx+0x78]
  7ba957:	48 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],rcx
  7ba95c:	4c 8d 5b 40          	lea    r11,[rbx+0x40]
  7ba960:	4c 89 44 24 40       	mov    QWORD PTR [rsp+0x40],r8
  7ba965:	4c 8d ad 40 f5 ff ff 	lea    r13,[rbp-0xac0]
  7ba96c:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
  7ba971:	4d 8d 75 04          	lea    r14,[r13+0x4]
  7ba975:	4c 89 4c 24 50       	mov    QWORD PTR [rsp+0x50],r9
  7ba97a:	4d 8d 7d 78          	lea    r15,[r13+0x78]
  7ba97e:	4c 89 54 24 58       	mov    QWORD PTR [rsp+0x58],r10
  7ba983:	49 8d 75 7c          	lea    rsi,[r13+0x7c]
  7ba987:	4c 89 5c 24 60       	mov    QWORD PTR [rsp+0x60],r11
  7ba98c:	48 8d 7e 90          	lea    rdi,[rsi-0x70]
  7ba990:	4c 89 6c 24 68       	mov    QWORD PTR [rsp+0x68],r13
  7ba995:	48 8d 4e 04          	lea    rcx,[rsi+0x4]
  7ba999:	4c 89 74 24 70       	mov    QWORD PTR [rsp+0x70],r14
  7ba99e:	4c 8d 41 04          	lea    r8,[rcx+0x4]
  7ba9a2:	4c 89 7c 24 78       	mov    QWORD PTR [rsp+0x78],r15
  7ba9a7:	48 8d 41 90          	lea    rax,[rcx-0x70]
  7ba9ab:	4c 8d bc 24 80 00 00 	lea    r15,[rsp+0x80]
  7ba9b2:	00 
  7ba9b3:	49 89 37             	mov    QWORD PTR [r15],rsi
  7ba9b6:	4c 8d 8d e0 f2 ff ff 	lea    r9,[rbp-0xd20]
  7ba9bd:	49 89 7f 08          	mov    QWORD PTR [r15+0x8],rdi
  7ba9c1:	bf bc 73 ab 00       	mov    edi,0xab73bc
  7ba9c6:	49 89 4f 10          	mov    QWORD PTR [r15+0x10],rcx
  7ba9ca:	be 19 00 00 00       	mov    esi,0x19
  7ba9cf:	4d 89 47 18          	mov    QWORD PTR [r15+0x18],r8
  7ba9d3:	48 8d 49 18          	lea    rcx,[rcx+0x18]
  7ba9d7:	49 89 47 20          	mov    QWORD PTR [r15+0x20],rax
  7ba9db:	4c 8d 41 04          	lea    r8,[rcx+0x4]
  7ba9df:	4d 89 4f 28          	mov    QWORD PTR [r15+0x28],r9
  7ba9e3:	4c 8d 48 28          	lea    r9,[rax+0x28]
  7ba9e7:	33 c0                	xor    eax,eax
  7ba9e9:	e8 82 2d c5 ff       	call   40d770 <__kmpc_fork_call@plt>
  7ba9ee:	48 81 c4 b0 00 00 00 	add    rsp,0xb0
  7ba9f5:	e9 1d 01 00 00       	jmp    7bab17 <pre_step3d_mod_mp_pre_step3d_tile_+0x1517>
  7ba9fa:	bf bc 73 ab 00       	mov    edi,0xab73bc
  7ba9ff:	33 c0                	xor    eax,eax
  7baa01:	8b b5 6c f5 ff ff    	mov    esi,DWORD PTR [rbp-0xa94]
  7baa07:	e8 04 2f c5 ff       	call   40d910 <__kmpc_serialized_parallel@plt>
  7baa0c:	48 81 c4 50 ff ff ff 	add    rsp,0xffffffffffffff50
  7baa13:	48 8d 85 cc f5 ff ff 	lea    rax,[rbp-0xa34]
  7baa1a:	48 8b 8d 90 f1 ff ff 	mov    rcx,QWORD PTR [rbp-0xe70]
  7baa21:	4c 8d 93 90 00 00 00 	lea    r10,[rbx+0x90]
  7baa28:	be 84 11 be 00       	mov    esi,0xbe1184
  7baa2d:	4d 8d 5a 48          	lea    r11,[r10+0x48]
  7baa31:	4d 8d 6a 70          	lea    r13,[r10+0x70]
  7baa35:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  7baa39:	4c 8d 73 38          	lea    r14,[rbx+0x38]
  7baa3d:	4c 89 54 24 08       	mov    QWORD PTR [rsp+0x8],r10
  7baa42:	4d 8d 7a 40          	lea    r15,[r10+0x40]
  7baa46:	4c 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],r11
  7baa4b:	48 8d 53 60          	lea    rdx,[rbx+0x60]
  7baa4f:	4c 89 6c 24 18       	mov    QWORD PTR [rsp+0x18],r13
  7baa54:	4c 8d 42 40          	lea    r8,[rdx+0x40]
  7baa58:	4c 89 74 24 20       	mov    QWORD PTR [rsp+0x20],r14
  7baa5d:	48 8d 42 58          	lea    rax,[rdx+0x58]
  7baa61:	4c 89 7c 24 28       	mov    QWORD PTR [rsp+0x28],r15
  7baa66:	4c 8d 4b 78          	lea    r9,[rbx+0x78]
  7baa6a:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
  7baa6f:	4c 8d 53 40          	lea    r10,[rbx+0x40]
  7baa73:	48 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],rcx
  7baa78:	4c 8d 9d 40 f5 ff ff 	lea    r11,[rbp-0xac0]
  7baa7f:	4c 89 44 24 40       	mov    QWORD PTR [rsp+0x40],r8
  7baa84:	4d 8d 6b 04          	lea    r13,[r11+0x4]
  7baa88:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
  7baa8d:	4d 8d 73 78          	lea    r14,[r11+0x78]
  7baa91:	4c 89 4c 24 50       	mov    QWORD PTR [rsp+0x50],r9
  7baa96:	4d 8d 7b 7c          	lea    r15,[r11+0x7c]
  7baa9a:	4c 89 54 24 58       	mov    QWORD PTR [rsp+0x58],r10
  7baa9f:	49 8d 53 0c          	lea    rdx,[r11+0xc]
  7baaa3:	4c 89 5c 24 60       	mov    QWORD PTR [rsp+0x60],r11
  7baaa8:	48 8d 4a 74          	lea    rcx,[rdx+0x74]
  7baaac:	4c 89 6c 24 68       	mov    QWORD PTR [rsp+0x68],r13
  7baab1:	4c 8d 42 78          	lea    r8,[rdx+0x78]
  7baab5:	4c 89 74 24 70       	mov    QWORD PTR [rsp+0x70],r14
  7baaba:	48 8d 42 04          	lea    rax,[rdx+0x4]
  7baabe:	4c 89 7c 24 78       	mov    QWORD PTR [rsp+0x78],r15
  7baac3:	4c 8d 8d e0 f2 ff ff 	lea    r9,[rbp-0xd20]
  7baaca:	4c 8d bc 24 80 00 00 	lea    r15,[rsp+0x80]
  7baad1:	00 
  7baad2:	49 89 17             	mov    QWORD PTR [r15],rdx
  7baad5:	48 8d 78 1c          	lea    rdi,[rax+0x1c]
  7baad9:	49 89 4f 08          	mov    QWORD PTR [r15+0x8],rcx
  7baadd:	48 8d 51 18          	lea    rdx,[rcx+0x18]
  7baae1:	4d 89 47 10          	mov    QWORD PTR [r15+0x10],r8
  7baae5:	48 8d 4a 04          	lea    rcx,[rdx+0x4]
  7baae9:	49 89 47 18          	mov    QWORD PTR [r15+0x18],rax
  7baaed:	4c 8d 40 28          	lea    r8,[rax+0x28]
  7baaf1:	4d 89 4f 20          	mov    QWORD PTR [r15+0x20],r9
  7baaf5:	4c 8d 48 78          	lea    r9,[rax+0x78]
  7baaf9:	e8 89 68 00 00       	call   7c1387 <pre_step3d_mod_mp_pre_step3d_tile_+0x7d87>
  7baafe:	48 81 c4 b0 00 00 00 	add    rsp,0xb0
  7bab05:	bf bc 73 ab 00       	mov    edi,0xab73bc
  7bab0a:	33 c0                	xor    eax,eax
  7bab0c:	8b b5 6c f5 ff ff    	mov    esi,DWORD PTR [rbp-0xa94]
  7bab12:	e8 49 31 c5 ff       	call   40dc60 <__kmpc_end_serialized_parallel@plt>
  7bab17:	bf 0c 74 ab 00       	mov    edi,0xab740c
  7bab1c:	33 c0                	xor    eax,eax
  7bab1e:	e8 fd 2d c5 ff       	call   40d920 <__kmpc_ok_to_fork@plt>
  7bab23:	85 c0                	test   eax,eax
  7bab25:	0f 84 4d 01 00 00    	je     7bac78 <pre_step3d_mod_mp_pre_step3d_tile_+0x1678>
  7bab2b:	48 81 c4 20 ff ff ff 	add    rsp,0xffffffffffffff20
  7bab32:	4c 8d 95 54 f5 ff ff 	lea    r10,[rbp-0xaac]
  7bab39:	ba 49 b2 7b 00       	mov    edx,0x7bb249
  7bab3e:	4d 8d 5a 78          	lea    r11,[r10+0x78]
  7bab42:	4c 8d ab 90 00 00 00 	lea    r13,[rbx+0x90]
  7bab49:	4d 8d 75 78          	lea    r14,[r13+0x78]
  7bab4d:	4c 89 14 24          	mov    QWORD PTR [rsp],r10
  7bab51:	4c 8d 7b 38          	lea    r15,[rbx+0x38]
  7bab55:	4c 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],r11
  7bab5a:	49 8d 75 50          	lea    rsi,[r13+0x50]
  7bab5e:	4c 89 6c 24 10       	mov    QWORD PTR [rsp+0x10],r13
  7bab63:	48 8d 7e c8          	lea    rdi,[rsi-0x38]
  7bab67:	4c 89 74 24 18       	mov    QWORD PTR [rsp+0x18],r14
  7bab6c:	48 8d 4e e0          	lea    rcx,[rsi-0x20]
  7bab70:	4c 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],r15
  7bab75:	4c 8d 43 68          	lea    r8,[rbx+0x68]
  7bab79:	48 89 74 24 28       	mov    QWORD PTR [rsp+0x28],rsi
  7bab7e:	48 8d 43 70          	lea    rax,[rbx+0x70]
  7bab82:	48 89 7c 24 30       	mov    QWORD PTR [rsp+0x30],rdi
  7bab87:	4c 8d 4b 30          	lea    r9,[rbx+0x30]
  7bab8b:	48 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],rcx
  7bab90:	4c 8d 53 78          	lea    r10,[rbx+0x78]
  7bab94:	4c 89 44 24 40       	mov    QWORD PTR [rsp+0x40],r8
  7bab99:	4c 8d 5b 40          	lea    r11,[rbx+0x40]
  7bab9d:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
  7baba2:	4c 8d 69 30          	lea    r13,[rcx+0x30]
  7baba6:	4c 89 4c 24 50       	mov    QWORD PTR [rsp+0x50],r9
  7babab:	4c 8d b5 58 f5 ff ff 	lea    r14,[rbp-0xaa8]
  7babb2:	4c 89 54 24 58       	mov    QWORD PTR [rsp+0x58],r10
  7babb7:	4d 8d 7e 70          	lea    r15,[r14+0x70]
  7babbb:	4c 89 5c 24 60       	mov    QWORD PTR [rsp+0x60],r11
  7babc0:	48 8d 71 50          	lea    rsi,[rcx+0x50]
  7babc4:	4c 89 6c 24 68       	mov    QWORD PTR [rsp+0x68],r13
  7babc9:	48 8d 78 40          	lea    rdi,[rax+0x40]
  7babcd:	4c 89 74 24 70       	mov    QWORD PTR [rsp+0x70],r14
  7babd2:	48 8d 48 58          	lea    rcx,[rax+0x58]
  7babd6:	4c 89 7c 24 78       	mov    QWORD PTR [rsp+0x78],r15
  7babdb:	4c 8d 41 30          	lea    r8,[rcx+0x30]
  7babdf:	4c 8d bc 24 80 00 00 	lea    r15,[rsp+0x80]
  7babe6:	00 
  7babe7:	49 89 37             	mov    QWORD PTR [r15],rsi
  7babea:	49 8d 46 e8          	lea    rax,[r14-0x18]
  7babee:	49 89 7f 08          	mov    QWORD PTR [r15+0x8],rdi
  7babf2:	4c 8d 48 04          	lea    r9,[rax+0x4]
  7babf6:	49 89 4f 10          	mov    QWORD PTR [r15+0x10],rcx
  7babfa:	4c 8d 50 78          	lea    r10,[rax+0x78]
  7babfe:	48 8d 8c 24 98 00 00 	lea    rcx,[rsp+0x98]
  7bac05:	00 
  7bac06:	4c 89 01             	mov    QWORD PTR [rcx],r8
  7bac09:	4c 8d 58 7c          	lea    r11,[rax+0x7c]
  7bac0d:	48 89 41 08          	mov    QWORD PTR [rcx+0x8],rax
  7bac11:	4c 8d 68 0c          	lea    r13,[rax+0xc]
  7bac15:	4c 89 49 10          	mov    QWORD PTR [rcx+0x10],r9
  7bac19:	4c 8d 70 08          	lea    r14,[rax+0x8]
  7bac1d:	48 8d 84 24 b0 00 00 	lea    rax,[rsp+0xb0]
  7bac24:	00 
  7bac25:	4c 89 10             	mov    QWORD PTR [rax],r10
  7bac28:	4c 8d bd 40 f3 ff ff 	lea    r15,[rbp-0xcc0]
  7bac2f:	4c 89 58 08          	mov    QWORD PTR [rax+0x8],r11
  7bac33:	49 8d 77 a0          	lea    rsi,[r15-0x60]
  7bac37:	4c 89 68 10          	mov    QWORD PTR [rax+0x10],r13
  7bac3b:	bf 0c 74 ab 00       	mov    edi,0xab740c
  7bac40:	4c 8d ac 24 c8 00 00 	lea    r13,[rsp+0xc8]
  7bac47:	00 
  7bac48:	4d 89 75 00          	mov    QWORD PTR [r13+0x0],r14
  7bac4c:	49 8d 4a 20          	lea    rcx,[r10+0x20]
  7bac50:	4d 89 7d 08          	mov    QWORD PTR [r13+0x8],r15
  7bac54:	4c 8d 41 04          	lea    r8,[rcx+0x4]
  7bac58:	49 89 75 10          	mov    QWORD PTR [r13+0x10],rsi
  7bac5c:	be 1f 00 00 00       	mov    esi,0x1f
  7bac61:	33 c0                	xor    eax,eax
  7bac63:	4c 8d 49 a0          	lea    r9,[rcx-0x60]
  7bac67:	e8 04 2b c5 ff       	call   40d770 <__kmpc_fork_call@plt>
  7bac6c:	48 81 c4 e0 00 00 00 	add    rsp,0xe0
  7bac73:	e9 5e 01 00 00       	jmp    7badd6 <pre_step3d_mod_mp_pre_step3d_tile_+0x17d6>
  7bac78:	bf 0c 74 ab 00       	mov    edi,0xab740c
  7bac7d:	33 c0                	xor    eax,eax
  7bac7f:	8b b5 6c f5 ff ff    	mov    esi,DWORD PTR [rbp-0xa94]
  7bac85:	e8 86 2c c5 ff       	call   40d910 <__kmpc_serialized_parallel@plt>
  7bac8a:	48 81 c4 20 ff ff ff 	add    rsp,0xffffffffffffff20
  7bac91:	48 8d 85 cc f5 ff ff 	lea    rax,[rbp-0xa34]
  7bac98:	be 88 11 be 00       	mov    esi,0xbe1188
  7bac9d:	4c 8d 93 90 00 00 00 	lea    r10,[rbx+0x90]
  7baca4:	4d 8d 5a 78          	lea    r11,[r10+0x78]
  7baca8:	4c 8d 6b 38          	lea    r13,[rbx+0x38]
  7bacac:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  7bacb0:	4d 8d 72 50          	lea    r14,[r10+0x50]
  7bacb4:	4c 89 54 24 08       	mov    QWORD PTR [rsp+0x8],r10
  7bacb9:	4d 8d 7a 18          	lea    r15,[r10+0x18]
  7bacbd:	4c 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],r11
  7bacc2:	49 8d 52 30          	lea    rdx,[r10+0x30]
  7bacc6:	4c 89 6c 24 18       	mov    QWORD PTR [rsp+0x18],r13
  7baccb:	48 8d 4b 68          	lea    rcx,[rbx+0x68]
  7baccf:	4c 89 74 24 20       	mov    QWORD PTR [rsp+0x20],r14
  7bacd4:	48 8d 43 70          	lea    rax,[rbx+0x70]
  7bacd8:	4c 89 7c 24 28       	mov    QWORD PTR [rsp+0x28],r15
  7bacdd:	4c 8d 43 30          	lea    r8,[rbx+0x30]
  7bace1:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
  7bace6:	4c 8d 53 78          	lea    r10,[rbx+0x78]
  7bacea:	48 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],rcx
  7bacef:	4c 8d 5b 40          	lea    r11,[rbx+0x40]
  7bacf3:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
  7bacf8:	4c 8d 6a 30          	lea    r13,[rdx+0x30]
  7bacfc:	4c 89 44 24 48       	mov    QWORD PTR [rsp+0x48],r8
  7bad01:	4c 8d b5 58 f5 ff ff 	lea    r14,[rbp-0xaa8]
  7bad08:	4c 89 54 24 50       	mov    QWORD PTR [rsp+0x50],r10
  7bad0d:	4d 8d 7e 70          	lea    r15,[r14+0x70]
  7bad11:	4c 89 5c 24 58       	mov    QWORD PTR [rsp+0x58],r11
  7bad16:	48 8d 52 50          	lea    rdx,[rdx+0x50]
  7bad1a:	4c 89 6c 24 60       	mov    QWORD PTR [rsp+0x60],r13
  7bad1f:	48 8d 48 40          	lea    rcx,[rax+0x40]
  7bad23:	4c 89 74 24 68       	mov    QWORD PTR [rsp+0x68],r14
  7bad28:	48 8d 40 58          	lea    rax,[rax+0x58]
  7bad2c:	4c 89 7c 24 70       	mov    QWORD PTR [rsp+0x70],r15
  7bad31:	4c 8d 40 30          	lea    r8,[rax+0x30]
  7bad35:	4c 8d 7c 24 78       	lea    r15,[rsp+0x78]
  7bad3a:	49 89 17             	mov    QWORD PTR [r15],rdx
  7bad3d:	4d 8d 56 e8          	lea    r10,[r14-0x18]
  7bad41:	49 89 4f 08          	mov    QWORD PTR [r15+0x8],rcx
  7bad45:	4d 8d 5a 04          	lea    r11,[r10+0x4]
  7bad49:	49 89 47 10          	mov    QWORD PTR [r15+0x10],rax
  7bad4d:	4d 8d 6a 78          	lea    r13,[r10+0x78]
  7bad51:	48 8d 84 24 90 00 00 	lea    rax,[rsp+0x90]
  7bad58:	00 
  7bad59:	4c 89 00             	mov    QWORD PTR [rax],r8
  7bad5c:	4d 8d 72 7c          	lea    r14,[r10+0x7c]
  7bad60:	4c 89 50 08          	mov    QWORD PTR [rax+0x8],r10
  7bad64:	4d 8d 7a 0c          	lea    r15,[r10+0xc]
  7bad68:	4c 89 58 10          	mov    QWORD PTR [rax+0x10],r11
  7bad6c:	49 8d 52 08          	lea    rdx,[r10+0x8]
  7bad70:	4c 8d 94 24 a8 00 00 	lea    r10,[rsp+0xa8]
  7bad77:	00 
  7bad78:	4d 89 2a             	mov    QWORD PTR [r10],r13
  7bad7b:	48 8d 8d 40 f3 ff ff 	lea    rcx,[rbp-0xcc0]
  7bad82:	4d 89 72 08          	mov    QWORD PTR [r10+0x8],r14
  7bad86:	48 8d 7a 24          	lea    rdi,[rdx+0x24]
  7bad8a:	4d 89 7a 10          	mov    QWORD PTR [r10+0x10],r15
  7bad8e:	4c 8d 4a 0c          	lea    r9,[rdx+0xc]
  7bad92:	4c 8d bc 24 c0 00 00 	lea    r15,[rsp+0xc0]
  7bad99:	00 
  7bad9a:	49 89 17             	mov    QWORD PTR [r15],rdx
  7bad9d:	48 8d 57 6c          	lea    rdx,[rdi+0x6c]
  7bada1:	49 89 4f 08          	mov    QWORD PTR [r15+0x8],rcx
  7bada5:	48 8d 4a 04          	lea    rcx,[rdx+0x4]
  7bada9:	4c 8d 42 a0          	lea    r8,[rdx-0x60]
  7badad:	48 8d 85 e0 f2 ff ff 	lea    rax,[rbp-0xd20]
  7badb4:	49 89 47 10          	mov    QWORD PTR [r15+0x10],rax
  7badb8:	e8 8c 04 00 00       	call   7bb249 <pre_step3d_mod_mp_pre_step3d_tile_+0x1c49>
  7badbd:	48 81 c4 e0 00 00 00 	add    rsp,0xe0
  7badc4:	bf 0c 74 ab 00       	mov    edi,0xab740c
  7badc9:	33 c0                	xor    eax,eax
  7badcb:	8b b5 6c f5 ff ff    	mov    esi,DWORD PTR [rbp-0xa94]
  7badd1:	e8 8a 2e c5 ff       	call   40dc60 <__kmpc_end_serialized_parallel@plt>
  7badd6:	48 8b bd 78 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xa88]
  7baddd:	b9 01 00 00 00       	mov    ecx,0x1
  7bade2:	48 8b 05 37 f9 2f 00 	mov    rax,QWORD PTR [rip+0x2ff937]        # aba720 <mod_param_mp_nt_>
  7bade9:	c7 85 d0 f5 ff ff 00 	mov    DWORD PTR [rbp-0xa30],0x0
  7badf0:	00 00 00 
  7badf3:	48 63 17             	movsxd rdx,DWORD PTR [rdi]
  7badf6:	c7 85 d4 f5 ff ff 01 	mov    DWORD PTR [rbp-0xa2c],0x1
  7badfd:	00 00 00 
  7bae00:	44 8b 6c 90 fc       	mov    r13d,DWORD PTR [rax+rdx*4-0x4]
  7bae05:	45 85 ed             	test   r13d,r13d
  7bae08:	0f 8e 89 02 00 00    	jle    7bb097 <pre_step3d_mod_mp_pre_step3d_tile_+0x1a97>
  7bae0e:	4c 8b a5 50 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xbb0]
  7bae15:	4c 8b bd b0 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xa50]
  7bae1c:	4c 8b b5 88 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xa78]
  7bae23:	48 8b 35 56 16 30 00 	mov    rsi,QWORD PTR [rip+0x301656]        # abc480 <mod_scalars_mp_ltracerclm_>
  7bae2a:	4c 8b 15 9f 16 30 00 	mov    r10,QWORD PTR [rip+0x30169f]        # abc4d0 <mod_scalars_mp_ltracerclm_+0x50>
  7bae31:	49 2b f2             	sub    rsi,r10
  7bae34:	4c 0f af d2          	imul   r10,rdx
  7bae38:	48 63 c9             	movsxd rcx,ecx
  7bae3b:	4c 8d 1c 8e          	lea    r11,[rsi+rcx*4]
  7bae3f:	43 f6 44 1a fc 01    	test   BYTE PTR [r10+r11*1-0x4],0x1
  7bae45:	74 27                	je     7bae6e <pre_step3d_mod_mp_pre_step3d_tile_+0x186e>
  7bae47:	4c 8b 15 e2 1d 30 00 	mov    r10,QWORD PTR [rip+0x301de2]        # abcc30 <mod_scalars_mp_lnudgetclm_+0x50>
  7bae4e:	48 8b 35 8b 1d 30 00 	mov    rsi,QWORD PTR [rip+0x301d8b]        # abcbe0 <mod_scalars_mp_lnudgetclm_>
  7bae55:	49 2b f2             	sub    rsi,r10
  7bae58:	4c 0f af d2          	imul   r10,rdx
  7bae5c:	48 8d 0c 8e          	lea    rcx,[rsi+rcx*4]
  7bae60:	41 f6 44 0a fc 01    	test   BYTE PTR [r10+rcx*1-0x4],0x1
  7bae66:	74 06                	je     7bae6e <pre_step3d_mod_mp_pre_step3d_tile_+0x186e>
  7bae68:	ff 85 d0 f5 ff ff    	inc    DWORD PTR [rbp-0xa30]
  7bae6e:	4c 8b 15 8b f8 2f 00 	mov    r10,QWORD PTR [rip+0x2ff88b]        # aba700 <mod_param_mp_n_+0x40>
  7bae75:	48 83 c4 a0          	add    rsp,0xffffffffffffffa0
  7bae79:	49 c1 e2 02          	shl    r10,0x2
  7bae7d:	48 8b 35 dc f8 2f 00 	mov    rsi,QWORD PTR [rip+0x2ff8dc]        # aba760 <mod_param_mp_nt_+0x40>
  7bae84:	48 c1 e6 02          	shl    rsi,0x2
  7bae88:	4c 8b 1d 31 f8 2f 00 	mov    r11,QWORD PTR [rip+0x2ff831]        # aba6c0 <mod_param_mp_n_>
  7bae8f:	48 2b c6             	sub    rax,rsi
  7bae92:	4d 2b da             	sub    r11,r10
  7bae95:	4c 89 3c 24          	mov    QWORD PTR [rsp],r15
  7bae99:	4c 89 74 24 08       	mov    QWORD PTR [rsp+0x8],r14
  7bae9e:	48 8b 73 38          	mov    rsi,QWORD PTR [rbx+0x38]
  7baea2:	48 8d 04 90          	lea    rax,[rax+rdx*4]
  7baea6:	4c 8b 93 00 01 00 00 	mov    r10,QWORD PTR [rbx+0x100]
  7baead:	49 8d 0c 93          	lea    rcx,[r11+rdx*4]
  7baeb1:	48 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],rcx
  7baeb6:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  7baebb:	48 8b 85 a0 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xa60]
  7baec2:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  7baec7:	48 8b 95 98 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xa68]
  7baece:	48 89 54 24 28       	mov    QWORD PTR [rsp+0x28],rdx
  7baed3:	48 8d 95 d4 f5 ff ff 	lea    rdx,[rbp-0xa2c]
  7baeda:	4c 89 64 24 30       	mov    QWORD PTR [rsp+0x30],r12
  7baedf:	48 8b 4a bc          	mov    rcx,QWORD PTR [rdx-0x44]
  7baee3:	48 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],rcx
  7baee8:	48 8d 8d d0 f5 ff ff 	lea    rcx,[rbp-0xa30]
  7baeef:	48 89 74 24 40       	mov    QWORD PTR [rsp+0x40],rsi
  7baef4:	48 c7 44 24 48 60 8c 	mov    QWORD PTR [rsp+0x48],0x848c60
  7baefb:	84 00 
  7baefd:	4c 89 54 24 50       	mov    QWORD PTR [rsp+0x50],r10
  7baf02:	48 8b 72 9c          	mov    rsi,QWORD PTR [rdx-0x64]
  7baf06:	4c 8b 42 d4          	mov    r8,QWORD PTR [rdx-0x2c]
  7baf0a:	4c 8b 4a ac          	mov    r9,QWORD PTR [rdx-0x54]
  7baf0e:	e8 fd 01 e9 ff       	call   64b110 <t3dbc_mod_mp_t3dbc_tile_>
  7baf13:	48 83 c4 60          	add    rsp,0x60
  7baf17:	48 8b bd 78 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xa88]
  7baf1e:	48 8b 05 fb 09 30 00 	mov    rax,QWORD PTR [rip+0x3009fb]        # abb920 <mod_scalars_mp_ewperiodic_>
  7baf25:	48 8b 0d 54 0d 30 00 	mov    rcx,QWORD PTR [rip+0x300d54]        # abbc80 <mod_scalars_mp_nsperiodic_>
  7baf2c:	48 63 17             	movsxd rdx,DWORD PTR [rdi]
  7baf2f:	48 8d 34 95 00 00 00 	lea    rsi,[rdx*4+0x0]
  7baf36:	00 
  7baf37:	44 8b 54 30 fc       	mov    r10d,DWORD PTR [rax+rsi*1-0x4]
  7baf3c:	44 0b 54 31 fc       	or     r10d,DWORD PTR [rcx+rsi*1-0x4]
  7baf41:	41 f7 c2 01 00 00 00 	test   r10d,0x1
  7baf48:	0f 84 1d 01 00 00    	je     7bb06b <pre_step3d_mod_mp_pre_step3d_tile_+0x1a6b>
  7baf4e:	48 8b 83 00 01 00 00 	mov    rax,QWORD PTR [rbx+0x100]
  7baf55:	33 c9                	xor    ecx,ecx
  7baf57:	41 ba 01 00 00 00    	mov    r10d,0x1
  7baf5d:	48 83 c4 e0          	add    rsp,0xffffffffffffffe0
  7baf61:	4c 89 95 40 f4 ff ff 	mov    QWORD PTR [rbp-0xbc0],r10
  7baf68:	4d 89 f8             	mov    r8,r15
  7baf6b:	4c 8b 58 30          	mov    r11,QWORD PTR [rax+0x30]
  7baf6f:	4d 85 db             	test   r11,r11
  7baf72:	4c 89 95 58 f4 ff ff 	mov    QWORD PTR [rbp-0xba8],r10
  7baf79:	4d 89 f1             	mov    r9,r14
  7baf7c:	4c 89 95 70 f4 ff ff 	mov    QWORD PTR [rbp-0xb90],r10
  7baf83:	4c 0f 4e d9          	cmovle r11,rcx
  7baf87:	4c 89 95 18 f4 ff ff 	mov    QWORD PTR [rbp-0xbe8],r10
  7baf8e:	4c 8b 50 48          	mov    r10,QWORD PTR [rax+0x48]
  7baf92:	4d 85 d2             	test   r10,r10
  7baf95:	48 8b 70 60          	mov    rsi,QWORD PTR [rax+0x60]
  7baf99:	4c 0f 4e d1          	cmovle r10,rcx
  7baf9d:	48 85 f6             	test   rsi,rsi
  7bafa0:	48 89 8d 10 f4 ff ff 	mov    QWORD PTR [rbp-0xbf0],rcx
  7bafa7:	48 0f 4e f1          	cmovle rsi,rcx
  7bafab:	48 8b 48 50          	mov    rcx,QWORD PTR [rax+0x50]
  7bafaf:	48 89 8d 50 f4 ff ff 	mov    QWORD PTR [rbp-0xbb0],rcx
  7bafb6:	48 8b 48 68          	mov    rcx,QWORD PTR [rax+0x68]
  7bafba:	48 89 b5 60 f4 ff ff 	mov    QWORD PTR [rbp-0xba0],rsi
  7bafc1:	48 89 8d 68 f4 ff ff 	mov    QWORD PTR [rbp-0xb98],rcx
  7bafc8:	48 8b b0 80 00 00 00 	mov    rsi,QWORD PTR [rax+0x80]
  7bafcf:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  7bafd2:	4c 89 9d 30 f4 ff ff 	mov    QWORD PTR [rbp-0xbd0],r11
  7bafd9:	4c 8b 58 38          	mov    r11,QWORD PTR [rax+0x38]
  7bafdd:	48 c7 04 24 64 8c 84 	mov    QWORD PTR [rsp],0x848c64
  7bafe4:	00 
  7bafe5:	48 8d 34 71          	lea    rsi,[rcx+rsi*2]
  7bafe9:	48 63 8d d4 f5 ff ff 	movsxd rcx,DWORD PTR [rbp-0xa2c]
  7baff0:	48 ff c9             	dec    rcx
  7baff3:	48 0f af 88 98 00 00 	imul   rcx,QWORD PTR [rax+0x98]
  7baffa:	00 
  7baffb:	48 8b 05 fe f6 2f 00 	mov    rax,QWORD PTR [rip+0x2ff6fe]        # aba700 <mod_param_mp_n_+0x40>
  7bb002:	48 03 f1             	add    rsi,rcx
  7bb005:	48 c1 e0 02          	shl    rax,0x2
  7bb009:	48 8b 0d b0 f6 2f 00 	mov    rcx,QWORD PTR [rip+0x2ff6b0]        # aba6c0 <mod_param_mp_n_>
  7bb010:	48 2b c8             	sub    rcx,rax
  7bb013:	48 8d 85 00 f4 ff ff 	lea    rax,[rbp-0xc00]
  7bb01a:	48 89 30             	mov    QWORD PTR [rax],rsi
  7bb01d:	48 8b b5 70 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xa90]
  7bb024:	48 c7 40 08 08 00 00 	mov    QWORD PTR [rax+0x8],0x8
  7bb02b:	00 
  7bb02c:	48 c7 40 20 03 00 00 	mov    QWORD PTR [rax+0x20],0x3
  7bb033:	00 
  7bb034:	48 8d 14 91          	lea    rdx,[rcx+rdx*4]
  7bb038:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
  7bb03d:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  7bb042:	48 8b 95 a8 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xa58]
  7bb049:	48 8b 8d 80 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xa80]
  7bb050:	4c 89 50 48          	mov    QWORD PTR [rax+0x48],r10
  7bb054:	4c 89 58 38          	mov    QWORD PTR [rax+0x38],r11
  7bb058:	e8 b3 b8 e2 ff       	call   5e6910 <exchange_3d_mod_mp_exchange_r3d_tile_>
  7bb05d:	48 83 c4 20          	add    rsp,0x20
  7bb061:	48 8b bd 78 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xa88]
  7bb068:	48 63 17             	movsxd rdx,DWORD PTR [rdi]
  7bb06b:	8b 8d d4 f5 ff ff    	mov    ecx,DWORD PTR [rbp-0xa2c]
  7bb071:	ff c1                	inc    ecx
  7bb073:	89 8d d4 f5 ff ff    	mov    DWORD PTR [rbp-0xa2c],ecx
  7bb079:	41 3b cd             	cmp    ecx,r13d
  7bb07c:	7f 0c                	jg     7bb08a <pre_step3d_mod_mp_pre_step3d_tile_+0x1a8a>
  7bb07e:	48 8b 05 9b f6 2f 00 	mov    rax,QWORD PTR [rip+0x2ff69b]        # aba720 <mod_param_mp_nt_>
  7bb085:	e9 99 fd ff ff       	jmp    7bae23 <pre_step3d_mod_mp_pre_step3d_tile_+0x1823>
  7bb08a:	48 8b 05 8f f6 2f 00 	mov    rax,QWORD PTR [rip+0x2ff68f]        # aba720 <mod_param_mp_nt_>
  7bb091:	41 bc 01 00 00 00    	mov    r12d,0x1
  7bb097:	4c 8b 15 22 0c 30 00 	mov    r10,QWORD PTR [rip+0x300c22]        # abbcc0 <mod_scalars_mp_nsperiodic_+0x40>
  7bb09e:	45 33 c0             	xor    r8d,r8d
  7bb0a1:	49 c1 e2 02          	shl    r10,0x2
  7bb0a5:	4c 8d 8d 90 f1 ff ff 	lea    r9,[rbp-0xe70]
  7bb0ac:	4c 8b 1d cd 0b 30 00 	mov    r11,QWORD PTR [rip+0x300bcd]        # abbc80 <mod_scalars_mp_nsperiodic_>
  7bb0b3:	4c 8b 35 a6 08 30 00 	mov    r14,QWORD PTR [rip+0x3008a6]        # abb960 <mod_scalars_mp_ewperiodic_+0x40>
  7bb0ba:	4d 2b da             	sub    r11,r10
  7bb0bd:	49 c1 e6 02          	shl    r14,0x2
  7bb0c1:	4c 8b 3d 58 08 30 00 	mov    r15,QWORD PTR [rip+0x300858]        # abb920 <mod_scalars_mp_ewperiodic_>
  7bb0c8:	4d 2b fe             	sub    r15,r14
  7bb0cb:	41 50                	push   r8
  7bb0cd:	48 8b 35 8c f6 2f 00 	mov    rsi,QWORD PTR [rip+0x2ff68c]        # aba760 <mod_param_mp_nt_+0x40>
  7bb0d4:	4d 8d 2c 93          	lea    r13,[r11+rdx*4]
  7bb0d8:	48 c1 e6 02          	shl    rsi,0x2
  7bb0dc:	41 50                	push   r8
  7bb0de:	48 2b c6             	sub    rax,rsi
  7bb0e1:	49 8d 0c 97          	lea    rcx,[r15+rdx*4]
  7bb0e5:	41 51                	push   r9
  7bb0e7:	41 55                	push   r13
  7bb0e9:	51                   	push   rcx
  7bb0ea:	68 08 0a be 00       	push   0xbe0a08
  7bb0ef:	4c 8b 0d 0a f6 2f 00 	mov    r9,QWORD PTR [rip+0x2ff60a]        # aba700 <mod_param_mp_n_+0x40>
  7bb0f6:	48 8d 04 90          	lea    rax,[rax+rdx*4]
  7bb0fa:	50                   	push   rax
  7bb0fb:	48 8b 83 00 01 00 00 	mov    rax,QWORD PTR [rbx+0x100]
  7bb102:	b9 64 8c 84 00       	mov    ecx,0x848c64
  7bb107:	49 c1 e1 02          	shl    r9,0x2
  7bb10b:	4c 8b 15 ae f5 2f 00 	mov    r10,QWORD PTR [rip+0x2ff5ae]        # aba6c0 <mod_param_mp_n_>
  7bb112:	4d 2b d1             	sub    r10,r9
  7bb115:	4c 8b 58 30          	mov    r11,QWORD PTR [rax+0x30]
  7bb119:	4d 85 db             	test   r11,r11
  7bb11c:	4c 8b 70 48          	mov    r14,QWORD PTR [rax+0x48]
  7bb120:	4d 0f 4e d8          	cmovle r11,r8
  7bb124:	4d 85 f6             	test   r14,r14
  7bb127:	51                   	push   rcx
  7bb128:	4d 0f 4e f0          	cmovle r14,r8
  7bb12c:	49 8d 14 92          	lea    rdx,[r10+rdx*4]
  7bb130:	52                   	push   rdx
  7bb131:	48 8b 50 60          	mov    rdx,QWORD PTR [rax+0x60]
  7bb135:	48 85 d2             	test   rdx,rdx
  7bb138:	51                   	push   rcx
  7bb139:	48 8b b0 90 00 00 00 	mov    rsi,QWORD PTR [rax+0x90]
  7bb140:	49 0f 4e d0          	cmovle rdx,r8
  7bb144:	48 85 f6             	test   rsi,rsi
  7bb147:	ff b5 88 f5 ff ff    	push   QWORD PTR [rbp-0xa78]
  7bb14d:	ff b5 b0 f5 ff ff    	push   QWORD PTR [rbp-0xa50]
  7bb153:	4c 89 85 a0 f1 ff ff 	mov    QWORD PTR [rbp-0xe60],r8
  7bb15a:	49 0f 4e f0          	cmovle rsi,r8
  7bb15e:	4c 8b 40 38          	mov    r8,QWORD PTR [rax+0x38]
  7bb162:	4c 89 85 c8 f1 ff ff 	mov    QWORD PTR [rbp-0xe38],r8
  7bb169:	4c 8b 68 50          	mov    r13,QWORD PTR [rax+0x50]
  7bb16d:	4c 8b 78 68          	mov    r15,QWORD PTR [rax+0x68]
  7bb171:	4c 8b 80 98 00 00 00 	mov    r8,QWORD PTR [rax+0x98]
  7bb178:	4c 8b 88 80 00 00 00 	mov    r9,QWORD PTR [rax+0x80]
  7bb17f:	48 8b 00             	mov    rax,QWORD PTR [rax]
  7bb182:	48 89 95 f0 f1 ff ff 	mov    QWORD PTR [rbp-0xe10],rdx
  7bb189:	ba c8 58 ac 00       	mov    edx,0xac58c8
  7bb18e:	4c 89 85 10 f2 ff ff 	mov    QWORD PTR [rbp-0xdf0],r8
  7bb195:	48 89 b5 08 f2 ff ff 	mov    QWORD PTR [rbp-0xdf8],rsi
  7bb19c:	4e 8d 14 48          	lea    r10,[rax+r9*2]
  7bb1a0:	48 8b b5 70 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xa90]
  7bb1a7:	4c 8b 85 a8 f5 ff ff 	mov    r8,QWORD PTR [rbp-0xa58]
  7bb1ae:	4c 8b 8d 80 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xa80]
  7bb1b5:	48 c7 85 98 f1 ff ff 	mov    QWORD PTR [rbp-0xe68],0x8
  7bb1bc:	08 00 00 00 
  7bb1c0:	48 c7 85 b0 f1 ff ff 	mov    QWORD PTR [rbp-0xe50],0x4
  7bb1c7:	04 00 00 00 
  7bb1cb:	4c 89 a5 d0 f1 ff ff 	mov    QWORD PTR [rbp-0xe30],r12
  7bb1d2:	4c 89 9d c0 f1 ff ff 	mov    QWORD PTR [rbp-0xe40],r11
  7bb1d9:	4c 89 ad e0 f1 ff ff 	mov    QWORD PTR [rbp-0xe20],r13
  7bb1e0:	4c 89 a5 e8 f1 ff ff 	mov    QWORD PTR [rbp-0xe18],r12
  7bb1e7:	4c 89 b5 d8 f1 ff ff 	mov    QWORD PTR [rbp-0xe28],r14
  7bb1ee:	4c 89 bd f8 f1 ff ff 	mov    QWORD PTR [rbp-0xe08],r15
  7bb1f5:	4c 89 a5 00 f2 ff ff 	mov    QWORD PTR [rbp-0xe00],r12
  7bb1fc:	4c 89 a5 18 f2 ff ff 	mov    QWORD PTR [rbp-0xde8],r12
  7bb203:	4c 89 95 90 f1 ff ff 	mov    QWORD PTR [rbp-0xe70],r10
  7bb20a:	4c 89 a5 a8 f1 ff ff 	mov    QWORD PTR [rbp-0xe58],r12
  7bb211:	e8 3a 49 e6 ff       	call   61fb50 <mp_exchange_mod_mp_mp_exchange4d_>
  7bb216:	48 83 c4 60          	add    rsp,0x60
  7bb21a:	48 8b 85 38 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xac8]
  7bb221:	48 89 c4             	mov    rsp,rax
  7bb224:	4c 8b bd 28 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x9d8]
  7bb22b:	4c 8b b5 30 f6 ff ff 	mov    r14,QWORD PTR [rbp-0x9d0]
  7bb232:	4c 8b ad 38 f6 ff ff 	mov    r13,QWORD PTR [rbp-0x9c8]
  7bb239:	4c 8b a5 40 f6 ff ff 	mov    r12,QWORD PTR [rbp-0x9c0]
  7bb240:	48 89 ec             	mov    rsp,rbp
  7bb243:	5d                   	pop    rbp
  7bb244:	48 89 dc             	mov    rsp,rbx
  7bb247:	5b                   	pop    rbx
  7bb248:	c3                   	ret    
  7bb249:	53                   	push   rbx
  7bb24a:	48 89 e3             	mov    rbx,rsp
  7bb24d:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
  7bb251:	55                   	push   rbp
  7bb252:	55                   	push   rbp
  7bb253:	48 8b 6b 08          	mov    rbp,QWORD PTR [rbx+0x8]
  7bb257:	48 89 6c 24 08       	mov    QWORD PTR [rsp+0x8],rbp
  7bb25c:	48 89 e5             	mov    rbp,rsp
  7bb25f:	48 81 ec 70 0e 00 00 	sub    rsp,0xe70
  7bb266:	4c 89 a5 40 f6 ff ff 	mov    QWORD PTR [rbp-0x9c0],r12
  7bb26d:	4c 8b 63 10          	mov    r12,QWORD PTR [rbx+0x10]
  7bb271:	48 8b 43 38          	mov    rax,QWORD PTR [rbx+0x38]
  7bb275:	4c 89 ad 38 f6 ff ff 	mov    QWORD PTR [rbp-0x9c8],r13
  7bb27c:	4d 63 24 24          	movsxd r12,DWORD PTR [r12]
  7bb280:	4c 89 a5 00 ff ff ff 	mov    QWORD PTR [rbp-0x100],r12
  7bb287:	44 8b 21             	mov    r12d,DWORD PTR [rcx]
  7bb28a:	8b 0a                	mov    ecx,DWORD PTR [rdx]
  7bb28c:	48 8b 53 50          	mov    rdx,QWORD PTR [rbx+0x50]
  7bb290:	48 8b 00             	mov    rax,QWORD PTR [rax]
  7bb293:	48 89 85 18 f3 ff ff 	mov    QWORD PTR [rbp-0xce8],rax
  7bb29a:	49 63 01             	movsxd rax,DWORD PTR [r9]
  7bb29d:	48 89 85 08 ff ff ff 	mov    QWORD PTR [rbp-0xf8],rax
  7bb2a4:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  7bb2a7:	48 89 85 00 f3 ff ff 	mov    QWORD PTR [rbp-0xd00],rax
  7bb2ae:	48 8d 53 78          	lea    rdx,[rbx+0x78]
  7bb2b2:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  7bb2b5:	4c 8b 52 a0          	mov    r10,QWORD PTR [rdx-0x60]
  7bb2b9:	4c 8b 6a b0          	mov    r13,QWORD PTR [rdx-0x50]
  7bb2bd:	8b 00                	mov    eax,DWORD PTR [rax]
  7bb2bf:	89 85 c8 fb ff ff    	mov    DWORD PTR [rbp-0x438],eax
  7bb2c5:	48 8b 42 08          	mov    rax,QWORD PTR [rdx+0x8]
  7bb2c9:	4c 89 bd 28 f6 ff ff 	mov    QWORD PTR [rbp-0x9d8],r15
  7bb2d0:	49 89 ff             	mov    r15,rdi
  7bb2d3:	48 8b 7a c8          	mov    rdi,QWORD PTR [rdx-0x38]
  7bb2d7:	48 63 00             	movsxd rax,DWORD PTR [rax]
  7bb2da:	48 89 85 f8 fb ff ff 	mov    QWORD PTR [rbp-0x408],rax
  7bb2e1:	48 8b 42 10          	mov    rax,QWORD PTR [rdx+0x10]
  7bb2e5:	4c 89 b5 30 f6 ff ff 	mov    QWORD PTR [rbp-0x9d0],r14
  7bb2ec:	4c 8b 5a a8          	mov    r11,QWORD PTR [rdx-0x58]
  7bb2f0:	48 8b 00             	mov    rax,QWORD PTR [rax]
  7bb2f3:	48 89 85 58 f3 ff ff 	mov    QWORD PTR [rbp-0xca8],rax
  7bb2fa:	48 8b 42 18          	mov    rax,QWORD PTR [rdx+0x18]
  7bb2fe:	4c 8b 72 b8          	mov    r14,QWORD PTR [rdx-0x48]
  7bb302:	4d 8b 6d 00          	mov    r13,QWORD PTR [r13+0x0]
  7bb306:	48 8b 00             	mov    rax,QWORD PTR [rax]
  7bb309:	48 89 85 08 f3 ff ff 	mov    QWORD PTR [rbp-0xcf8],rax
  7bb310:	48 8b 42 20          	mov    rax,QWORD PTR [rdx+0x20]
  7bb314:	4d 8b 12             	mov    r10,QWORD PTR [r10]
  7bb317:	4d 8b 00             	mov    r8,QWORD PTR [r8]
  7bb31a:	48 8b 00             	mov    rax,QWORD PTR [rax]
  7bb31d:	48 89 85 10 f3 ff ff 	mov    QWORD PTR [rbp-0xcf0],rax
  7bb324:	48 8b 42 28          	mov    rax,QWORD PTR [rdx+0x28]
  7bb328:	48 8b 52 e0          	mov    rdx,QWORD PTR [rdx-0x20]
  7bb32c:	4c 8d 4b 48          	lea    r9,[rbx+0x48]
  7bb330:	49 8b 31             	mov    rsi,QWORD PTR [r9]
  7bb333:	48 8b 00             	mov    rax,QWORD PTR [rax]
  7bb336:	48 89 85 48 f3 ff ff 	mov    QWORD PTR [rbp-0xcb8],rax
  7bb33d:	49 8b 41 60          	mov    rax,QWORD PTR [r9+0x60]
  7bb341:	4c 89 ad e8 f2 ff ff 	mov    QWORD PTR [rbp-0xd18],r13
  7bb348:	4c 89 95 30 f3 ff ff 	mov    QWORD PTR [rbp-0xcd0],r10
  7bb34f:	48 63 00             	movsxd rax,DWORD PTR [rax]
  7bb352:	48 89 85 f0 f1 ff ff 	mov    QWORD PTR [rbp-0xe10],rax
  7bb359:	49 8b 41 68          	mov    rax,QWORD PTR [r9+0x68]
  7bb35d:	4c 89 85 d8 f2 ff ff 	mov    QWORD PTR [rbp-0xd28],r8
  7bb364:	4d 8b 41 18          	mov    r8,QWORD PTR [r9+0x18]
  7bb368:	48 63 00             	movsxd rax,DWORD PTR [rax]
  7bb36b:	48 89 85 f8 f1 ff ff 	mov    QWORD PTR [rbp-0xe08],rax
  7bb372:	49 8b 41 70          	mov    rax,QWORD PTR [r9+0x70]
  7bb376:	4d 8b 51 20          	mov    r10,QWORD PTR [r9+0x20]
  7bb37a:	4d 8b 69 28          	mov    r13,QWORD PTR [r9+0x28]
  7bb37e:	48 63 00             	movsxd rax,DWORD PTR [rax]
  7bb381:	48 89 85 68 f7 ff ff 	mov    QWORD PTR [rbp-0x898],rax
  7bb388:	49 8b 41 78          	mov    rax,QWORD PTR [r9+0x78]
  7bb38c:	48 8b 3f             	mov    rdi,QWORD PTR [rdi]
  7bb38f:	48 89 bd 20 f3 ff ff 	mov    QWORD PTR [rbp-0xce0],rdi
  7bb396:	48 63 00             	movsxd rax,DWORD PTR [rax]
  7bb399:	4d 8b 36             	mov    r14,QWORD PTR [r14]
  7bb39c:	4d 8b 1b             	mov    r11,QWORD PTR [r11]
  7bb39f:	48 89 85 60 f3 ff ff 	mov    QWORD PTR [rbp-0xca0],rax
  7bb3a6:	48 8b 3a             	mov    rdi,QWORD PTR [rdx]
  7bb3a9:	48 8b 83 d8 00 00 00 	mov    rax,QWORD PTR [rbx+0xd8]
  7bb3b0:	48 8b 36             	mov    rsi,QWORD PTR [rsi]
  7bb3b3:	4c 89 b5 38 f3 ff ff 	mov    QWORD PTR [rbp-0xcc8],r14
  7bb3ba:	4c 89 9d 50 f3 ff ff 	mov    QWORD PTR [rbp-0xcb0],r11
  7bb3c1:	48 89 bd e0 f2 ff ff 	mov    QWORD PTR [rbp-0xd20],rdi
  7bb3c8:	48 8d bd 90 f1 ff ff 	lea    rdi,[rbp-0xe70]
  7bb3cf:	4d 8b 08             	mov    r9,QWORD PTR [r8]
  7bb3d2:	4d 8b 1a             	mov    r11,QWORD PTR [r10]
  7bb3d5:	4d 8b 75 00          	mov    r14,QWORD PTR [r13+0x0]
  7bb3d9:	48 89 47 70          	mov    QWORD PTR [rdi+0x70],rax
  7bb3dd:	33 c0                	xor    eax,eax
  7bb3df:	48 89 b5 f8 f2 ff ff 	mov    QWORD PTR [rbp-0xd08],rsi
  7bb3e6:	48 8b b3 e0 00 00 00 	mov    rsi,QWORD PTR [rbx+0xe0]
  7bb3ed:	45 8b 3f             	mov    r15d,DWORD PTR [r15]
  7bb3f0:	4c 89 8d 28 f3 ff ff 	mov    QWORD PTR [rbp-0xcd8],r9
  7bb3f7:	4c 89 9d f0 f2 ff ff 	mov    QWORD PTR [rbp-0xd10],r11
  7bb3fe:	4c 89 b5 40 f3 ff ff 	mov    QWORD PTR [rbp-0xcc0],r14
  7bb405:	89 4f 78             	mov    DWORD PTR [rdi+0x78],ecx
  7bb408:	e8 f3 b7 cb ff       	call   476c00 <_f90_dope_vector_init>
  7bb40d:	8b 8d 08 f2 ff ff    	mov    ecx,DWORD PTR [rbp-0xdf8]
  7bb413:	48 89 85 20 f6 ff ff 	mov    QWORD PTR [rbp-0x9e0],rax
  7bb41a:	48 83 c0 1f          	add    rax,0x1f
  7bb41e:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7bb422:	48 2b e0             	sub    rsp,rax
  7bb425:	48 89 e0             	mov    rax,rsp
  7bb428:	48 89 85 18 f6 ff ff 	mov    QWORD PTR [rbp-0x9e8],rax
  7bb42f:	48 89 c2             	mov    rdx,rax
  7bb432:	48 8d bd 00 f4 ff ff 	lea    rdi,[rbp-0xc00]
  7bb439:	33 c0                	xor    eax,eax
  7bb43b:	48 8b b5 00 f2 ff ff 	mov    rsi,QWORD PTR [rbp-0xe00]
  7bb442:	48 89 95 90 f1 ff ff 	mov    QWORD PTR [rbp-0xe70],rdx
  7bb449:	89 8d 08 f2 ff ff    	mov    DWORD PTR [rbp-0xdf8],ecx
  7bb44f:	e8 ac b7 cb ff       	call   476c00 <_f90_dope_vector_init>
  7bb454:	8b 8d 08 f2 ff ff    	mov    ecx,DWORD PTR [rbp-0xdf8]
  7bb45a:	49 89 c6             	mov    r14,rax
  7bb45d:	4c 89 f0             	mov    rax,r14
  7bb460:	48 83 c0 1f          	add    rax,0x1f
  7bb464:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7bb468:	48 2b e0             	sub    rsp,rax
  7bb46b:	48 89 e0             	mov    rax,rsp
  7bb46e:	49 89 c5             	mov    r13,rax
  7bb471:	4c 89 ad 00 f4 ff ff 	mov    QWORD PTR [rbp-0xc00],r13
  7bb478:	44 3b e1             	cmp    r12d,ecx
  7bb47b:	0f 8c ba 5e 00 00    	jl     7c133b <pre_step3d_mod_mp_pre_step3d_tile_+0x7d3b>
  7bb481:	48 83 c4 e0          	add    rsp,0xffffffffffffffe0
  7bb485:	bf 0c 74 ab 00       	mov    edi,0xab740c
  7bb48a:	89 8d 18 fd ff ff    	mov    DWORD PTR [rbp-0x2e8],ecx
  7bb490:	44 89 fe             	mov    esi,r15d
  7bb493:	ba 22 00 00 00       	mov    edx,0x22
  7bb498:	48 8d 8d 20 fd ff ff 	lea    rcx,[rbp-0x2e0]
  7bb49f:	41 bb 01 00 00 00    	mov    r11d,0x1
  7bb4a5:	4c 8d 85 18 fd ff ff 	lea    r8,[rbp-0x2e8]
  7bb4ac:	44 89 61 fc          	mov    DWORD PTR [rcx-0x4],r12d
  7bb4b0:	4c 8d 8d 1c fd ff ff 	lea    r9,[rbp-0x2e4]
  7bb4b7:	c7 01 00 00 00 00    	mov    DWORD PTR [rcx],0x0
  7bb4bd:	4c 8d 95 24 fd ff ff 	lea    r10,[rbp-0x2dc]
  7bb4c4:	4c 89 14 24          	mov    QWORD PTR [rsp],r10
  7bb4c8:	44 89 5c 24 08       	mov    DWORD PTR [rsp+0x8],r11d
  7bb4cd:	44 89 59 04          	mov    DWORD PTR [rcx+0x4],r11d
  7bb4d1:	44 89 5c 24 10       	mov    DWORD PTR [rsp+0x10],r11d
  7bb4d6:	e8 05 25 c5 ff       	call   40d9e0 <__kmpc_for_static_init_4@plt>
  7bb4db:	48 83 c4 20          	add    rsp,0x20
  7bb4df:	8b 8d 18 fd ff ff    	mov    ecx,DWORD PTR [rbp-0x2e8]
  7bb4e5:	8b bd 1c fd ff ff    	mov    edi,DWORD PTR [rbp-0x2e4]
  7bb4eb:	89 8d d0 f8 ff ff    	mov    DWORD PTR [rbp-0x730],ecx
  7bb4f1:	41 3b cc             	cmp    ecx,r12d
  7bb4f4:	0f 8f 31 5e 00 00    	jg     7c132b <pre_step3d_mod_mp_pre_step3d_tile_+0x7d2b>
  7bb4fa:	4c 8b 85 e8 f2 ff ff 	mov    r8,QWORD PTR [rbp-0xd18]
  7bb501:	41 3b fc             	cmp    edi,r12d
  7bb504:	44 89 bd 78 f5 ff ff 	mov    DWORD PTR [rbp-0xa88],r15d
  7bb50b:	4c 8b bd d8 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xd28]
  7bb512:	44 0f 4c e7          	cmovl  r12d,edi
  7bb516:	4d 63 18             	movsxd r11,DWORD PTR [r8]
  7bb519:	4c 89 9d 90 f4 ff ff 	mov    QWORD PTR [rbp-0xb70],r11
  7bb520:	49 63 0f             	movsxd rcx,DWORD PTR [r15]
  7bb523:	48 8b 3d 96 f1 2f 00 	mov    rdi,QWORD PTR [rip+0x2ff196]        # aba6c0 <mod_param_mp_n_>
  7bb52a:	4c 8b 1d 4f ef 2f 00 	mov    r11,QWORD PTR [rip+0x2fef4f]        # aba480 <mod_scalars_mp_iic_>
  7bb531:	4c 89 ad 68 f5 ff ff 	mov    QWORD PTR [rbp-0xa98],r13
  7bb538:	4c 63 6c 8f fc       	movsxd r13,DWORD PTR [rdi+rcx*4-0x4]
  7bb53d:	48 8b b5 e0 f2 ff ff 	mov    rsi,QWORD PTR [rbp-0xd20]
  7bb544:	41 8b 7c 8b fc       	mov    edi,DWORD PTR [r11+rcx*4-0x4]
  7bb549:	89 bd e0 fb ff ff    	mov    DWORD PTR [rbp-0x420],edi
  7bb54f:	48 8b bd 28 f3 ff ff 	mov    rdi,QWORD PTR [rbp-0xcd8]
  7bb556:	44 8b 85 d0 f8 ff ff 	mov    r8d,DWORD PTR [rbp-0x730]
  7bb55d:	45 2b e0             	sub    r12d,r8d
  7bb560:	4c 63 16             	movsxd r10,DWORD PTR [rsi]
  7bb563:	41 ff c4             	inc    r12d
  7bb566:	4c 8b bd f0 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xd10]
  7bb56d:	4c 89 95 68 f4 ff ff 	mov    QWORD PTR [rbp-0xb98],r10
  7bb574:	44 89 a5 d0 fb ff ff 	mov    DWORD PTR [rbp-0x430],r12d
  7bb57b:	4c 8b a5 50 f3 ff ff 	mov    r12,QWORD PTR [rbp-0xcb0]
  7bb582:	4c 8b 17             	mov    r10,QWORD PTR [rdi]
  7bb585:	4c 89 95 b0 f4 ff ff 	mov    QWORD PTR [rbp-0xb50],r10
  7bb58c:	4c 8b 95 40 f3 ff ff 	mov    r10,QWORD PTR [rbp-0xcc0]
  7bb593:	4d 63 0f             	movsxd r9,DWORD PTR [r15]
  7bb596:	49 8d 44 24 68       	lea    rax,[r12+0x68]
  7bb59b:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  7bb59e:	4c 89 8d 80 f4 ff ff 	mov    QWORD PTR [rbp-0xb80],r9
  7bb5a5:	4c 8b 3d 14 fa 2f 00 	mov    r15,QWORD PTR [rip+0x2ffa14]        # abafc0 <mod_scalars_mp_ntfirst_>
  7bb5ac:	4c 8b 0d 8d e5 2f 00 	mov    r9,QWORD PTR [rip+0x2fe58d]        # ab9b40 <mod_scalars_mp_dt_>
  7bb5b3:	48 89 95 20 ff ff ff 	mov    QWORD PTR [rbp-0xe0],rdx
  7bb5ba:	49 8b 92 80 00 00 00 	mov    rdx,QWORD PTR [r10+0x80]
  7bb5c1:	48 89 95 78 f3 ff ff 	mov    QWORD PTR [rbp-0xc88],rdx
  7bb5c8:	48 8b 95 58 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xca8]
  7bb5cf:	4c 89 b5 70 f5 ff ff 	mov    QWORD PTR [rbp-0xa90],r14
  7bb5d6:	48 8d b5 68 f7 ff ff 	lea    rsi,[rbp-0x898]
  7bb5dd:	4c 8b 36             	mov    r14,QWORD PTR [rsi]
  7bb5e0:	45 8b 5c 8f fc       	mov    r11d,DWORD PTR [r15+rcx*4-0x4]
  7bb5e5:	c4 c1 7b 10 54 c9 f8 	vmovsd xmm2,QWORD PTR [r9+rcx*8-0x8]
  7bb5ec:	48 8b 48 18          	mov    rcx,QWORD PTR [rax+0x18]
  7bb5f0:	c5 79 28 da          	vmovapd xmm11,xmm2
  7bb5f4:	4c 8b 4f 38          	mov    r9,QWORD PTR [rdi+0x38]
  7bb5f8:	4c 29 b5 60 f3 ff ff 	sub    QWORD PTR [rbp-0xca0],r14
  7bb5ff:	49 c1 e6 03          	shl    r14,0x3
  7bb603:	4c 89 36             	mov    QWORD PTR [rsi],r14
  7bb606:	4c 8b 70 98          	mov    r14,QWORD PTR [rax-0x68]
  7bb60a:	48 89 8d 78 f6 ff ff 	mov    QWORD PTR [rbp-0x988],rcx
  7bb611:	4c 2b f1             	sub    r14,rcx
  7bb614:	48 8b 4f 68          	mov    rcx,QWORD PTR [rdi+0x68]
  7bb618:	4c 8b 7f 50          	mov    r15,QWORD PTR [rdi+0x50]
  7bb61c:	4c 89 8d 58 ff ff ff 	mov    QWORD PTR [rbp-0xa8],r9
  7bb623:	4c 8b 0a             	mov    r9,QWORD PTR [rdx]
  7bb626:	48 8b ba 80 00 00 00 	mov    rdi,QWORD PTR [rdx+0x80]
  7bb62d:	4c 2b cf             	sub    r9,rdi
  7bb630:	4c 89 8d 80 f2 ff ff 	mov    QWORD PTR [rbp-0xd80],r9
  7bb637:	4c 8b 8d 48 f3 ff ff 	mov    r9,QWORD PTR [rbp-0xcb8]
  7bb63e:	4c 89 b5 90 f2 ff ff 	mov    QWORD PTR [rbp-0xd70],r14
  7bb645:	48 8b 70 d0          	mov    rsi,QWORD PTR [rax-0x30]
  7bb649:	4d 8b 32             	mov    r14,QWORD PTR [r10]
  7bb64c:	48 8b 40 e8          	mov    rax,QWORD PTR [rax-0x18]
  7bb650:	48 89 75 c8          	mov    QWORD PTR [rbp-0x38],rsi
  7bb654:	48 89 8d 10 fd ff ff 	mov    QWORD PTR [rbp-0x2f0],rcx
  7bb65b:	4c 89 b5 70 f3 ff ff 	mov    QWORD PTR [rbp-0xc90],r14
  7bb662:	4d 8b 62 68          	mov    r12,QWORD PTR [r10+0x68]
  7bb666:	49 8b 72 50          	mov    rsi,QWORD PTR [r10+0x50]
  7bb66a:	49 8b 4a 38          	mov    rcx,QWORD PTR [r10+0x38]
  7bb66e:	4c 8b 72 68          	mov    r14,QWORD PTR [rdx+0x68]
  7bb672:	4d 8b 91 80 00 00 00 	mov    r10,QWORD PTR [r9+0x80]
  7bb679:	4c 89 a5 70 fa ff ff 	mov    QWORD PTR [rbp-0x590],r12
  7bb680:	4c 89 b5 00 fc ff ff 	mov    QWORD PTR [rbp-0x400],r14
  7bb687:	4c 8b 72 50          	mov    r14,QWORD PTR [rdx+0x50]
  7bb68b:	4c 8b 62 38          	mov    r12,QWORD PTR [rdx+0x38]
  7bb68f:	4c 89 95 50 f2 ff ff 	mov    QWORD PTR [rbp-0xdb0],r10
  7bb696:	49 8b 51 38          	mov    rdx,QWORD PTR [r9+0x38]
  7bb69a:	4c 8b 95 f8 f2 ff ff 	mov    r10,QWORD PTR [rbp-0xd08]
  7bb6a1:	48 89 95 e8 fc ff ff 	mov    QWORD PTR [rbp-0x318],rdx
  7bb6a8:	48 89 b5 c0 f4 ff ff 	mov    QWORD PTR [rbp-0xb40],rsi
  7bb6af:	48 89 8d 50 ff ff ff 	mov    QWORD PTR [rbp-0xb0],rcx
  7bb6b6:	48 8b 95 00 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xd00]
  7bb6bd:	49 8b 31             	mov    rsi,QWORD PTR [r9]
  7bb6c0:	49 8b 49 68          	mov    rcx,QWORD PTR [r9+0x68]
  7bb6c4:	48 89 bd 00 f2 ff ff 	mov    QWORD PTR [rbp-0xe00],rdi
  7bb6cb:	4c 89 65 80          	mov    QWORD PTR [rbp-0x80],r12
  7bb6cf:	48 89 b5 38 f2 ff ff 	mov    QWORD PTR [rbp-0xdc8],rsi
  7bb6d6:	48 89 8d 98 f6 ff ff 	mov    QWORD PTR [rbp-0x968],rcx
  7bb6dd:	49 8b 79 50          	mov    rdi,QWORD PTR [r9+0x50]
  7bb6e1:	4d 8b 22             	mov    r12,QWORD PTR [r10]
  7bb6e4:	49 8b 4a 38          	mov    rcx,QWORD PTR [r10+0x38]
  7bb6e8:	49 8b 72 50          	mov    rsi,QWORD PTR [r10+0x50]
  7bb6ec:	4c 8b 95 08 f3 ff ff 	mov    r10,QWORD PTR [rbp-0xcf8]
  7bb6f3:	48 89 bd 60 f4 ff ff 	mov    QWORD PTR [rbp-0xba0],rdi
  7bb6fa:	4c 89 a5 f8 f4 ff ff 	mov    QWORD PTR [rbp-0xb08],r12
  7bb701:	48 8b 3a             	mov    rdi,QWORD PTR [rdx]
  7bb704:	4c 8b 62 38          	mov    r12,QWORD PTR [rdx+0x38]
  7bb708:	4c 8b 4a 50          	mov    r9,QWORD PTR [rdx+0x50]
  7bb70c:	48 8b 95 10 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xcf0]
  7bb713:	48 89 8d 78 fe ff ff 	mov    QWORD PTR [rbp-0x188],rcx
  7bb71a:	49 8b 4a 38          	mov    rcx,QWORD PTR [r10+0x38]
  7bb71e:	4c 89 8d c8 f6 ff ff 	mov    QWORD PTR [rbp-0x938],r9
  7bb725:	4c 89 a5 80 fe ff ff 	mov    QWORD PTR [rbp-0x180],r12
  7bb72c:	48 89 8d 10 f6 ff ff 	mov    QWORD PTR [rbp-0x9f0],rcx
  7bb733:	4c 8b 0a             	mov    r9,QWORD PTR [rdx]
  7bb736:	4c 8b 62 38          	mov    r12,QWORD PTR [rdx+0x38]
  7bb73a:	48 8b 4a 50          	mov    rcx,QWORD PTR [rdx+0x50]
  7bb73e:	48 8b 95 30 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xcd0]
  7bb745:	48 89 b5 d0 f6 ff ff 	mov    QWORD PTR [rbp-0x930],rsi
  7bb74c:	49 8b 32             	mov    rsi,QWORD PTR [r10]
  7bb74f:	48 89 bd 00 f5 ff ff 	mov    QWORD PTR [rbp-0xb00],rdi
  7bb756:	48 89 b5 30 f5 ff ff 	mov    QWORD PTR [rbp-0xad0],rsi
  7bb75d:	49 8b 7a 50          	mov    rdi,QWORD PTR [r10+0x50]
  7bb761:	4c 89 8d 10 f5 ff ff 	mov    QWORD PTR [rbp-0xaf0],r9
  7bb768:	4c 89 a5 08 f6 ff ff 	mov    QWORD PTR [rbp-0x9f8],r12
  7bb76f:	4c 8b 12             	mov    r10,QWORD PTR [rdx]
  7bb772:	4c 8b 62 38          	mov    r12,QWORD PTR [rdx+0x38]
  7bb776:	48 8b 72 68          	mov    rsi,QWORD PTR [rdx+0x68]
  7bb77a:	4c 8b 4a 50          	mov    r9,QWORD PTR [rdx+0x50]
  7bb77e:	48 8b 95 38 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xcc8]
  7bb785:	4c 89 65 d0          	mov    QWORD PTR [rbp-0x30],r12
  7bb789:	48 89 85 f0 fb ff ff 	mov    QWORD PTR [rbp-0x410],rax
  7bb790:	33 c0                	xor    eax,eax
  7bb792:	4c 8b 22             	mov    r12,QWORD PTR [rdx]
  7bb795:	4c 89 a5 80 f3 ff ff 	mov    QWORD PTR [rbp-0xc80],r12
  7bb79c:	4c 8b 62 68          	mov    r12,QWORD PTR [rdx+0x68]
  7bb7a0:	4c 89 a5 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],r12
  7bb7a7:	4c 8b 62 50          	mov    r12,QWORD PTR [rdx+0x50]
  7bb7ab:	48 8b 52 38          	mov    rdx,QWORD PTR [rdx+0x38]
  7bb7af:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  7bb7b3:	48 8b 95 18 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xce8]
  7bb7ba:	4c 89 a5 e8 fb ff ff 	mov    QWORD PTR [rbp-0x418],r12
  7bb7c1:	48 89 85 c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],rax
  7bb7c8:	4c 8b 62 38          	mov    r12,QWORD PTR [rdx+0x38]
  7bb7cc:	4c 89 a5 70 fe ff ff 	mov    QWORD PTR [rbp-0x190],r12
  7bb7d3:	4c 8b a5 20 f3 ff ff 	mov    r12,QWORD PTR [rbp-0xce0]
  7bb7da:	48 89 85 c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],rax
  7bb7e1:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  7bb7e4:	48 89 85 d8 f6 ff ff 	mov    QWORD PTR [rbp-0x928],rax
  7bb7eb:	48 8b 42 50          	mov    rax,QWORD PTR [rdx+0x50]
  7bb7ef:	49 8b 14 24          	mov    rdx,QWORD PTR [r12]
  7bb7f3:	4c 89 95 20 f2 ff ff 	mov    QWORD PTR [rbp-0xde0],r10
  7bb7fa:	4c 2b d6             	sub    r10,rsi
  7bb7fd:	48 89 95 00 f7 ff ff 	mov    QWORD PTR [rbp-0x900],rdx
  7bb804:	49 8b 54 24 50       	mov    rdx,QWORD PTR [r12+0x50]
  7bb809:	4d 8b 64 24 38       	mov    r12,QWORD PTR [r12+0x38]
  7bb80e:	4c 89 a5 68 fe ff ff 	mov    QWORD PTR [rbp-0x198],r12
  7bb815:	4c 8b a5 08 ff ff ff 	mov    r12,QWORD PTR [rbp-0xf8]
  7bb81c:	44 89 9d d8 fb ff ff 	mov    DWORD PTR [rbp-0x428],r11d
  7bb823:	45 8d 5b 01          	lea    r11d,[r11+0x1]
  7bb827:	41 f7 dc             	neg    r12d
  7bb82a:	44 89 9d e0 f8 ff ff 	mov    DWORD PTR [rbp-0x720],r11d
  7bb831:	4c 8b 9d 00 ff ff ff 	mov    r11,QWORD PTR [rbp-0x100]
  7bb838:	4c 89 95 90 f3 ff ff 	mov    QWORD PTR [rbp-0xc70],r10
  7bb83f:	45 03 e3             	add    r12d,r11d
  7bb842:	44 89 9d 88 f3 ff ff 	mov    DWORD PTR [rbp-0xc78],r11d
  7bb849:	4d 8d 1c 72          	lea    r11,[r10+rsi*2]
  7bb84d:	4c 8b 95 f8 f1 ff ff 	mov    r10,QWORD PTR [rbp-0xe08]
  7bb854:	4c 89 9d 98 f3 ff ff 	mov    QWORD PTR [rbp-0xc68],r11
  7bb85b:	4d 89 d3             	mov    r11,r10
  7bb85e:	4d 0f af d9          	imul   r11,r9
  7bb862:	c5 fd 10 3d 96 eb 08 	vmovupd ymm7,YMMWORD PTR [rip+0x8eb96]        # 84a400 <var$630.126.450+0x460>
  7bb869:	00 
  7bb86a:	c5 7b 10 2d 0e 09 09 	vmovsd xmm13,QWORD PTR [rip+0x9090e]        # 84c180 <__STRLITPACK_0.112+0x70>
  7bb871:	00 
  7bb872:	c5 f9 10 35 76 01 09 	vmovupd xmm6,XMMWORD PTR [rip+0x90176]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  7bb879:	00 
  7bb87a:	c5 7b 10 05 16 09 09 	vmovsd xmm8,QWORD PTR [rip+0x90916]        # 84c198 <__STRLITPACK_0.112+0x88>
  7bb881:	00 
  7bb882:	c5 79 10 0d f6 05 09 	vmovupd xmm9,XMMWORD PTR [rip+0x905f6]        # 84be80 <__STRLITPACK_54.50+0x90>
  7bb889:	00 
  7bb88a:	4d 63 e4             	movsxd r12,r12d
  7bb88d:	c5 93 5c 05 1b a1 30 	vsubsd xmm0,xmm13,QWORD PTR [rip+0x30a11b]        # ac59b0 <mod_scalars_mp_lambda_>
  7bb894:	00 
  7bb895:	c5 fd 10 0d c3 e7 08 	vmovupd ymm1,YMMWORD PTR [rip+0x8e7c3]        # 84a060 <var$630.126.450+0xc0>
  7bb89c:	00 
  7bb89d:	c5 eb 59 25 03 0c 09 	vmulsd xmm4,xmm2,QWORD PTR [rip+0x90c03]        # 84c4a8 <__STRLITPACK_0.112+0x398>
  7bb8a4:	00 
  7bb8a5:	c5 fb 59 da          	vmulsd xmm3,xmm0,xmm2
  7bb8a9:	49 ff c4             	inc    r12
  7bb8ac:	c5 f9 28 c3          	vmovapd xmm0,xmm3
  7bb8b0:	4c 89 ad 08 fd ff ff 	mov    QWORD PTR [rbp-0x2f8],r13
  7bb8b7:	4d 8d 6d ff          	lea    r13,[r13-0x1]
  7bb8bb:	4c 89 65 c0          	mov    QWORD PTR [rbp-0x40],r12
  7bb8bf:	49 89 f4             	mov    r12,rsi
  7bb8c2:	4c 89 ad 10 ff ff ff 	mov    QWORD PTR [rbp-0xf0],r13
  7bb8c9:	4c 8d 2c 36          	lea    r13,[rsi+rsi*1]
  7bb8cd:	4d 2b e3             	sub    r12,r11
  7bb8d0:	4c 89 a5 a0 f3 ff ff 	mov    QWORD PTR [rbp-0xc60],r12
  7bb8d7:	4d 89 ec             	mov    r12,r13
  7bb8da:	4d 63 c0             	movsxd r8,r8d
  7bb8dd:	49 f7 dd             	neg    r13
  7bb8e0:	48 89 b5 30 ff ff ff 	mov    QWORD PTR [rbp-0xd0],rsi
  7bb8e7:	4c 03 ee             	add    r13,rsi
  7bb8ea:	4c 89 c6             	mov    rsi,r8
  7bb8ed:	4d 2b e3             	sub    r12,r11
  7bb8f0:	48 0f af f1          	imul   rsi,rcx
  7bb8f4:	48 89 8d e0 f4 ff ff 	mov    QWORD PTR [rbp-0xb20],rcx
  7bb8fb:	4c 89 c1             	mov    rcx,r8
  7bb8fe:	48 0f af cf          	imul   rcx,rdi
  7bb902:	48 89 bd e8 f4 ff ff 	mov    QWORD PTR [rbp-0xb18],rdi
  7bb909:	4c 89 c7             	mov    rdi,r8
  7bb90c:	4c 89 b5 98 f5 ff ff 	mov    QWORD PTR [rbp-0xa68],r14
  7bb913:	49 0f af fe          	imul   rdi,r14
  7bb917:	4d 89 c6             	mov    r14,r8
  7bb91a:	48 89 b5 30 f2 ff ff 	mov    QWORD PTR [rbp-0xdd0],rsi
  7bb921:	4c 89 c6             	mov    rsi,r8
  7bb924:	4c 89 bd 58 f6 ff ff 	mov    QWORD PTR [rbp-0x9a8],r15
  7bb92b:	4d 0f af f7          	imul   r14,r15
  7bb92f:	49 0f af f1          	imul   rsi,r9
  7bb933:	4d 89 c7             	mov    r15,r8
  7bb936:	4c 2b de             	sub    r11,rsi
  7bb939:	4c 0f af fa          	imul   r15,rdx
  7bb93d:	48 89 8d 68 f3 ff ff 	mov    QWORD PTR [rbp-0xc98],rcx
  7bb944:	4c 89 c1             	mov    rcx,r8
  7bb947:	48 0f af 8d c8 f6 ff 	imul   rcx,QWORD PTR [rbp-0x938]
  7bb94e:	ff 
  7bb94f:	4c 89 b5 98 f2 ff ff 	mov    QWORD PTR [rbp-0xd68],r14
  7bb956:	4d 89 c6             	mov    r14,r8
  7bb959:	4c 89 bd a8 f3 ff ff 	mov    QWORD PTR [rbp-0xc58],r15
  7bb960:	4d 03 eb             	add    r13,r11
  7bb963:	4c 8b bd f0 f1 ff ff 	mov    r15,QWORD PTR [rbp-0xe10]
  7bb96a:	4c 0f af f0          	imul   r14,rax
  7bb96e:	4c 89 ad 80 f5 ff ff 	mov    QWORD PTR [rbp-0xa80],r13
  7bb975:	4d 89 fd             	mov    r13,r15
  7bb978:	4c 89 8d a8 f8 ff ff 	mov    QWORD PTR [rbp-0x758],r9
  7bb97f:	4c 8b 4d d0          	mov    r9,QWORD PTR [rbp-0x30]
  7bb983:	4d 0f af e9          	imul   r13,r9
  7bb987:	48 89 85 c0 f6 ff ff 	mov    QWORD PTR [rbp-0x940],rax
  7bb98e:	4c 89 c0             	mov    rax,r8
  7bb991:	48 89 bd 08 f2 ff ff 	mov    QWORD PTR [rbp-0xdf8],rdi
  7bb998:	4c 89 c7             	mov    rdi,r8
  7bb99b:	48 89 8d 78 f2 ff ff 	mov    QWORD PTR [rbp-0xd88],rcx
  7bb9a2:	4c 89 c1             	mov    rcx,r8
  7bb9a5:	4d 2b c2             	sub    r8,r10
  7bb9a8:	4c 89 85 c8 f2 ff ff 	mov    QWORD PTR [rbp-0xd38],r8
  7bb9af:	4c 8b 85 90 f3 ff ff 	mov    r8,QWORD PTR [rbp-0xc70]
  7bb9b6:	4c 89 a5 00 f6 ff ff 	mov    QWORD PTR [rbp-0xa00],r12
  7bb9bd:	4c 89 b5 b0 f3 ff ff 	mov    QWORD PTR [rbp-0xc50],r14
  7bb9c4:	48 89 b5 d0 f5 ff ff 	mov    QWORD PTR [rbp-0xa30],rsi
  7bb9cb:	4f 8d 34 20          	lea    r14,[r8+r12*1]
  7bb9cf:	4c 8b a5 a0 f3 ff ff 	mov    r12,QWORD PTR [rbp-0xc60]
  7bb9d6:	49 2b f5             	sub    rsi,r13
  7bb9d9:	4c 03 f6             	add    r14,rsi
  7bb9dc:	48 89 95 b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],rdx
  7bb9e3:	48 8b 95 f0 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x410]
  7bb9ea:	4d 03 e0             	add    r12,r8
  7bb9ed:	4c 03 e6             	add    r12,rsi
  7bb9f0:	48 8b b5 08 ff ff ff 	mov    rsi,QWORD PTR [rbp-0xf8]
  7bb9f7:	49 89 f0             	mov    r8,rsi
  7bb9fa:	4d 0f af c1          	imul   r8,r9
  7bb9fe:	48 0f af c2          	imul   rax,rdx
  7bba02:	48 0f af bd d0 f6 ff 	imul   rdi,QWORD PTR [rbp-0x930]
  7bba09:	ff 
  7bba0a:	4c 89 a5 c0 f5 ff ff 	mov    QWORD PTR [rbp-0xa40],r12
  7bba11:	4d 03 e0             	add    r12,r8
  7bba14:	4c 89 a5 38 f8 ff ff 	mov    QWORD PTR [rbp-0x7c8],r12
  7bba1b:	4d 89 d4             	mov    r12,r10
  7bba1e:	4c 89 ad c8 f5 ff ff 	mov    QWORD PTR [rbp-0xa38],r13
  7bba25:	4d 2b e8             	sub    r13,r8
  7bba28:	4c 89 b5 a0 f5 ff ff 	mov    QWORD PTR [rbp-0xa60],r14
  7bba2f:	4d 03 c6             	add    r8,r14
  7bba32:	4c 0f af e2          	imul   r12,rdx
  7bba36:	4d 89 fe             	mov    r14,r15
  7bba39:	48 89 f2             	mov    rdx,rsi
  7bba3c:	4c 89 9d d0 f2 ff ff 	mov    QWORD PTR [rbp-0xd30],r11
  7bba43:	4d 03 eb             	add    r13,r11
  7bba46:	4c 8b 5d c8          	mov    r11,QWORD PTR [rbp-0x38]
  7bba4a:	49 f7 d9             	neg    r9
  7bba4d:	4d 0f af f3          	imul   r14,r11
  7bba51:	49 0f af d3          	imul   rdx,r11
  7bba55:	4c 89 85 80 f8 ff ff 	mov    QWORD PTR [rbp-0x780],r8
  7bba5c:	4c 8b 85 20 f2 ff ff 	mov    r8,QWORD PTR [rbp-0xde0]
  7bba63:	4d 2b c5             	sub    r8,r13
  7bba66:	49 f7 dd             	neg    r13
  7bba69:	4c 03 ad 98 f3 ff ff 	add    r13,QWORD PTR [rbp-0xc68]
  7bba70:	4d 03 c1             	add    r8,r9
  7bba73:	4c 89 85 68 f8 ff ff 	mov    QWORD PTR [rbp-0x798],r8
  7bba7a:	4d 03 e9             	add    r13,r9
  7bba7d:	4c 8b 85 20 ff ff ff 	mov    r8,QWORD PTR [rbp-0xe0]
  7bba84:	4c 8b 8d 78 f6 ff ff 	mov    r9,QWORD PTR [rbp-0x988]
  7bba8b:	4c 89 b5 48 f2 ff ff 	mov    QWORD PTR [rbp-0xdb8],r14
  7bba92:	4c 2b f2             	sub    r14,rdx
  7bba95:	48 89 95 28 f2 ff ff 	mov    QWORD PTR [rbp-0xdd8],rdx
  7bba9c:	4c 89 ca             	mov    rdx,r9
  7bba9f:	48 89 85 10 f2 ff ff 	mov    QWORD PTR [rbp-0xdf0],rax
  7bbaa6:	4c 89 a5 60 f2 ff ff 	mov    QWORD PTR [rbp-0xda0],r12
  7bbaad:	4c 2b e0             	sub    r12,rax
  7bbab0:	48 8b 85 90 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb70]
  7bbab7:	4d 03 f4             	add    r14,r12
  7bbaba:	48 0f af d0          	imul   rdx,rax
  7bbabe:	4c 0f af 8d 80 f4 ff 	imul   r9,QWORD PTR [rbp-0xb80]
  7bbac5:	ff 
  7bbac6:	48 0f af 85 00 f2 ff 	imul   rax,QWORD PTR [rbp-0xe00]
  7bbacd:	ff 
  7bbace:	4c 89 ad 98 f8 ff ff 	mov    QWORD PTR [rbp-0x768],r13
  7bbad5:	4f 8d 2c 00          	lea    r13,[r8+r8*1]
  7bbad9:	49 f7 dd             	neg    r13
  7bbadc:	4c 8b 9d 90 f2 ff ff 	mov    r11,QWORD PTR [rbp-0xd70]
  7bbae3:	4d 03 e8             	add    r13,r8
  7bbae6:	4d 89 d8             	mov    r8,r11
  7bbae9:	4d 2b c5             	sub    r8,r13
  7bbaec:	4d 03 ec             	add    r13,r12
  7bbaef:	4d 2b c6             	sub    r8,r14
  7bbaf2:	49 f7 de             	neg    r14
  7bbaf5:	4d 03 f3             	add    r14,r11
  7bbaf8:	4c 03 c2             	add    r8,rdx
  7bbafb:	4c 89 8d 78 f6 ff ff 	mov    QWORD PTR [rbp-0x988],r9
  7bbb02:	4c 89 85 70 f8 ff ff 	mov    QWORD PTR [rbp-0x790],r8
  7bbb09:	4c 89 ad a0 f8 ff ff 	mov    QWORD PTR [rbp-0x760],r13
  7bbb10:	4c 8b 85 80 f3 ff ff 	mov    r8,QWORD PTR [rbp-0xc80]
  7bbb17:	4d 8d 2c 16          	lea    r13,[r14+rdx*1]
  7bbb1b:	4d 03 f1             	add    r14,r9
  7bbb1e:	4c 8b 8d 28 ff ff ff 	mov    r9,QWORD PTR [rbp-0xd8]
  7bbb25:	4c 89 b5 80 f6 ff ff 	mov    QWORD PTR [rbp-0x980],r14
  7bbb2c:	48 89 bd 70 f2 ff ff 	mov    QWORD PTR [rbp-0xd90],rdi
  7bbb33:	48 8b bd e8 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x418]
  7bbb3a:	4f 8d 34 08          	lea    r14,[r8+r9*1]
  7bbb3e:	4d 89 d0             	mov    r8,r10
  7bbb41:	4d 89 f3             	mov    r11,r14
  7bbb44:	4c 0f af c7          	imul   r8,rdi
  7bbb48:	48 0f af cf          	imul   rcx,rdi
  7bbb4c:	4c 89 a5 b8 f3 ff ff 	mov    QWORD PTR [rbp-0xc48],r12
  7bbb53:	4d 89 fc             	mov    r12,r15
  7bbb56:	48 89 95 88 f6 ff ff 	mov    QWORD PTR [rbp-0x978],rdx
  7bbb5d:	4c 89 c7             	mov    rdi,r8
  7bbb60:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
  7bbb64:	48 2b f9             	sub    rdi,rcx
  7bbb67:	4c 0f af e2          	imul   r12,rdx
  7bbb6b:	48 89 bd c0 f3 ff ff 	mov    QWORD PTR [rbp-0xc40],rdi
  7bbb72:	4c 2b df             	sub    r11,rdi
  7bbb75:	48 89 f7             	mov    rdi,rsi
  7bbb78:	4d 2b c8             	sub    r9,r8
  7bbb7b:	48 0f af fa          	imul   rdi,rdx
  7bbb7f:	49 f7 d8             	neg    r8
  7bbb82:	48 f7 da             	neg    rdx
  7bbb85:	48 89 8d d8 f5 ff ff 	mov    QWORD PTR [rbp-0xa28],rcx
  7bbb8c:	4d 03 c6             	add    r8,r14
  7bbb8f:	49 2b cc             	sub    rcx,r12
  7bbb92:	4c 03 c1             	add    r8,rcx
  7bbb95:	4c 89 9d c8 f3 ff ff 	mov    QWORD PTR [rbp-0xc38],r11
  7bbb9c:	48 89 85 90 f4 ff ff 	mov    QWORD PTR [rbp-0xb70],rax
  7bbba3:	4c 89 85 f0 f5 ff ff 	mov    QWORD PTR [rbp-0xa10],r8
  7bbbaa:	4c 89 8d d0 f3 ff ff 	mov    QWORD PTR [rbp-0xc30],r9
  7bbbb1:	49 8d 0c 38          	lea    rcx,[r8+rdi*1]
  7bbbb5:	48 f7 df             	neg    rdi
  7bbbb8:	49 03 fc             	add    rdi,r12
  7bbbbb:	48 f7 df             	neg    rdi
  7bbbbe:	49 03 fb             	add    rdi,r11
  7bbbc1:	4c 8d 1c f5 00 00 00 	lea    r11,[rsi*8+0x0]
  7bbbc8:	00 
  7bbbc9:	4c 89 d8             	mov    rax,r11
  7bbbcc:	48 03 fa             	add    rdi,rdx
  7bbbcf:	48 2b 85 68 f7 ff ff 	sub    rax,QWORD PTR [rbp-0x898]
  7bbbd6:	4c 8b 85 00 f4 ff ff 	mov    r8,QWORD PTR [rbp-0xc00]
  7bbbdd:	4c 89 b5 e0 f5 ff ff 	mov    QWORD PTR [rbp-0xa20],r14
  7bbbe4:	48 8b 95 08 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x2f8]
  7bbbeb:	48 89 bd 90 f8 ff ff 	mov    QWORD PTR [rbp-0x770],rdi
  7bbbf2:	4e 8d 0c 00          	lea    r9,[rax+r8*1]
  7bbbf6:	4c 8b 85 60 f3 ff ff 	mov    r8,QWORD PTR [rbp-0xca0]
  7bbbfd:	48 8b bd 90 f1 ff ff 	mov    rdi,QWORD PTR [rbp-0xe70]
  7bbc04:	4c 89 ad 30 f8 ff ff 	mov    QWORD PTR [rbp-0x7d0],r13
  7bbc0b:	48 89 8d 28 f8 ff ff 	mov    QWORD PTR [rbp-0x7d8],rcx
  7bbc12:	4e 8d 34 c5 08 00 00 	lea    r14,[r8*8+0x8]
  7bbc19:	00 
  7bbc1a:	49 0f af d6          	imul   rdx,r14
  7bbc1e:	4c 89 8d 48 ff ff ff 	mov    QWORD PTR [rbp-0xb8],r9
  7bbc25:	4c 8d 2c 17          	lea    r13,[rdi+rdx*1]
  7bbc29:	4c 89 ad 08 f5 ff ff 	mov    QWORD PTR [rbp-0xaf8],r13
  7bbc30:	4c 8d 0c 38          	lea    r9,[rax+rdi*1]
  7bbc34:	4c 89 a5 d8 f3 ff ff 	mov    QWORD PTR [rbp-0xc28],r12
  7bbc3b:	4a 8d 0c 28          	lea    rcx,[rax+r13*1]
  7bbc3f:	4c 8b ad 70 fe ff ff 	mov    r13,QWORD PTR [rbp-0x190]
  7bbc46:	4a 8d 04 c0          	lea    rax,[rax+r8*8]
  7bbc4a:	48 03 c7             	add    rax,rdi
  7bbc4d:	4d 89 fc             	mov    r12,r15
  7bbc50:	48 89 85 20 fc ff ff 	mov    QWORD PTR [rbp-0x3e0],rax
  7bbc57:	4c 89 d0             	mov    rax,r10
  7bbc5a:	48 0f af 85 c0 f6 ff 	imul   rax,QWORD PTR [rbp-0x940]
  7bbc61:	ff 
  7bbc62:	4d 0f af e5          	imul   r12,r13
  7bbc66:	49 89 f0             	mov    r8,rsi
  7bbc69:	4d 0f af c5          	imul   r8,r13
  7bbc6d:	4c 89 8d 60 fe ff ff 	mov    QWORD PTR [rbp-0x1a0],r9
  7bbc74:	48 89 8d 58 fe ff ff 	mov    QWORD PTR [rbp-0x1a8],rcx
  7bbc7b:	49 8d 0c 11          	lea    rcx,[r9+rdx*1]
  7bbc7f:	4d 89 d1             	mov    r9,r10
  7bbc82:	4c 0f af 8d d0 f6 ff 	imul   r9,QWORD PTR [rbp-0x930]
  7bbc89:	ff 
  7bbc8a:	48 8b bd d8 f6 ff ff 	mov    rdi,QWORD PTR [rbp-0x928]
  7bbc91:	48 2b f8             	sub    rdi,rax
  7bbc94:	4c 89 b5 18 ff ff ff 	mov    QWORD PTR [rbp-0xe8],r14
  7bbc9b:	4c 8b b5 b0 f3 ff ff 	mov    r14,QWORD PTR [rbp-0xc50]
  7bbca2:	48 89 8d 50 fe ff ff 	mov    QWORD PTR [rbp-0x1b0],rcx
  7bbca9:	49 2b c6             	sub    rax,r14
  7bbcac:	48 89 95 18 f5 ff ff 	mov    QWORD PTR [rbp-0xae8],rdx
  7bbcb3:	c5 fb 12 e8          	vmovddup xmm5,xmm0
  7bbcb7:	4a 8d 0c 37          	lea    rcx,[rdi+r14*1]
  7bbcbb:	4d 2b f4             	sub    r14,r12
  7bbcbe:	4d 2b e0             	sub    r12,r8
  7bbcc1:	49 2b cc             	sub    rcx,r12
  7bbcc4:	49 03 fe             	add    rdi,r14
  7bbcc7:	48 89 8d b0 f6 ff ff 	mov    QWORD PTR [rbp-0x950],rcx
  7bbcce:	4b 8d 0c 68          	lea    rcx,[r8+r13*2]
  7bbcd2:	48 03 f9             	add    rdi,rcx
  7bbcd5:	4d 89 fc             	mov    r12,r15
  7bbcd8:	48 89 bd 50 f7 ff ff 	mov    QWORD PTR [rbp-0x8b0],rdi
  7bbcdf:	48 8b bd 70 f2 ff ff 	mov    rdi,QWORD PTR [rbp-0xd90]
  7bbce6:	4c 8b b5 f8 f4 ff ff 	mov    r14,QWORD PTR [rbp-0xb08]
  7bbced:	4d 2b f1             	sub    r14,r9
  7bbcf0:	4c 2b cf             	sub    r9,rdi
  7bbcf3:	4c 89 8d e0 f3 ff ff 	mov    QWORD PTR [rbp-0xc20],r9
  7bbcfa:	4c 8b 8d 78 fe ff ff 	mov    r9,QWORD PTR [rbp-0x188]
  7bbd01:	4d 0f af e1          	imul   r12,r9
  7bbd05:	4c 89 b5 40 f5 ff ff 	mov    QWORD PTR [rbp-0xac0],r14
  7bbd0c:	4d 8d 04 3e          	lea    r8,[r14+rdi*1]
  7bbd10:	49 2b fc             	sub    rdi,r12
  7bbd13:	4c 89 c9             	mov    rcx,r9
  7bbd16:	49 03 fe             	add    rdi,r14
  7bbd19:	49 89 f6             	mov    r14,rsi
  7bbd1c:	4d 0f af f1          	imul   r14,r9
  7bbd20:	4c 89 a5 a8 f2 ff ff 	mov    QWORD PTR [rbp-0xd58],r12
  7bbd27:	4d 2b e6             	sub    r12,r14
  7bbd2a:	49 f7 dc             	neg    r12
  7bbd2d:	48 f7 d9             	neg    rcx
  7bbd30:	4c 89 85 50 f5 ff ff 	mov    QWORD PTR [rbp-0xab0],r8
  7bbd37:	4b 8d 14 31          	lea    rdx,[r9+r14*1]
  7bbd3b:	4d 03 e0             	add    r12,r8
  7bbd3e:	49 03 ce             	add    rcx,r14
  7bbd41:	48 89 bd 60 f5 ff ff 	mov    QWORD PTR [rbp-0xaa0],rdi
  7bbd48:	4f 8d 04 4e          	lea    r8,[r14+r9*2]
  7bbd4c:	48 03 d7             	add    rdx,rdi
  7bbd4f:	48 03 cf             	add    rcx,rdi
  7bbd52:	4c 03 c7             	add    r8,rdi
  7bbd55:	4c 89 d7             	mov    rdi,r10
  7bbd58:	48 0f af bd c8 f6 ff 	imul   rdi,QWORD PTR [rbp-0x938]
  7bbd5f:	ff 
  7bbd60:	48 89 8d 38 f7 ff ff 	mov    QWORD PTR [rbp-0x8c8],rcx
  7bbd67:	4c 89 85 10 f7 ff ff 	mov    QWORD PTR [rbp-0x8f0],r8
  7bbd6e:	4d 89 f8             	mov    r8,r15
  7bbd71:	48 8b 8d 80 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x180]
  7bbd78:	4c 0f af c1          	imul   r8,rcx
  7bbd7c:	4c 8b 8d 00 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xb00]
  7bbd83:	4c 2b cf             	sub    r9,rdi
  7bbd86:	48 89 95 20 f7 ff ff 	mov    QWORD PTR [rbp-0x8e0],rdx
  7bbd8d:	48 8b 95 78 f2 ff ff 	mov    rdx,QWORD PTR [rbp-0xd88]
  7bbd94:	48 2b fa             	sub    rdi,rdx
  7bbd97:	48 89 bd e8 f3 ff ff 	mov    QWORD PTR [rbp-0xc18],rdi
  7bbd9e:	4c 89 8d 38 f5 ff ff 	mov    QWORD PTR [rbp-0xac8],r9
  7bbda5:	49 8d 3c 11          	lea    rdi,[r9+rdx*1]
  7bbda9:	49 2b d0             	sub    rdx,r8
  7bbdac:	49 03 d1             	add    rdx,r9
  7bbdaf:	49 89 f1             	mov    r9,rsi
  7bbdb2:	4c 0f af c9          	imul   r9,rcx
  7bbdb6:	4c 89 85 b0 f2 ff ff 	mov    QWORD PTR [rbp-0xd50],r8
  7bbdbd:	4d 2b c1             	sub    r8,r9
  7bbdc0:	49 f7 d8             	neg    r8
  7bbdc3:	4e 8d 2c 09          	lea    r13,[rcx+r9*1]
  7bbdc7:	48 89 bd 48 f5 ff ff 	mov    QWORD PTR [rbp-0xab8],rdi
  7bbdce:	4c 03 c7             	add    r8,rdi
  7bbdd1:	48 89 cf             	mov    rdi,rcx
  7bbdd4:	4c 03 ea             	add    r13,rdx
  7bbdd7:	48 f7 df             	neg    rdi
  7bbdda:	49 8d 0c 49          	lea    rcx,[r9+rcx*2]
  7bbdde:	49 03 f9             	add    rdi,r9
  7bbde1:	49 89 f1             	mov    r9,rsi
  7bbde4:	48 03 fa             	add    rdi,rdx
  7bbde7:	48 03 ca             	add    rcx,rdx
  7bbdea:	48 89 bd 28 f7 ff ff 	mov    QWORD PTR [rbp-0x8d8],rdi
  7bbdf1:	4c 89 d7             	mov    rdi,r10
  7bbdf4:	48 0f af bd b8 f6 ff 	imul   rdi,QWORD PTR [rbp-0x948]
  7bbdfb:	ff 
  7bbdfc:	4c 0f af 95 58 f6 ff 	imul   r10,QWORD PTR [rbp-0x9a8]
  7bbe03:	ff 
  7bbe04:	4c 89 ad 18 f7 ff ff 	mov    QWORD PTR [rbp-0x8e8],r13
  7bbe0b:	4c 89 a5 40 f7 ff ff 	mov    QWORD PTR [rbp-0x8c0],r12
  7bbe12:	4d 89 fc             	mov    r12,r15
  7bbe15:	4c 8b ad 68 fe ff ff 	mov    r13,QWORD PTR [rbp-0x198]
  7bbe1c:	4d 0f af e5          	imul   r12,r13
  7bbe20:	4d 0f af cd          	imul   r9,r13
  7bbe24:	48 89 95 58 f5 ff ff 	mov    QWORD PTR [rbp-0xaa8],rdx
  7bbe2b:	48 8b 95 00 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x900]
  7bbe32:	48 89 8d 08 f7 ff ff 	mov    QWORD PTR [rbp-0x8f8],rcx
  7bbe39:	48 89 d1             	mov    rcx,rdx
  7bbe3c:	48 2b cf             	sub    rcx,rdi
  7bbe3f:	4c 8b b5 a8 f3 ff ff 	mov    r14,QWORD PTR [rbp-0xc58]
  7bbe46:	4c 89 85 30 f7 ff ff 	mov    QWORD PTR [rbp-0x8d0],r8
  7bbe4d:	49 2b fe             	sub    rdi,r14
  7bbe50:	c5 79 10 25 38 00 09 	vmovupd xmm12,XMMWORD PTR [rip+0x90038]        # 84be90 <__STRLITPACK_54.50+0xa0>
  7bbe57:	00 
  7bbe58:	c5 7b 10 35 30 0b 09 	vmovsd xmm14,QWORD PTR [rip+0x90b30]        # 84c990 <__STRLITPACK_0.112+0x880>
  7bbe5f:	00 
  7bbe60:	4e 8d 04 31          	lea    r8,[rcx+r14*1]
  7bbe64:	4d 2b f4             	sub    r14,r12
  7bbe67:	4d 2b e1             	sub    r12,r9
  7bbe6a:	4d 2b c4             	sub    r8,r12
  7bbe6d:	49 03 ce             	add    rcx,r14
  7bbe70:	4c 89 85 a8 f6 ff ff 	mov    QWORD PTR [rbp-0x958],r8
  7bbe77:	4f 8d 04 69          	lea    r8,[r9+r13*2]
  7bbe7b:	49 03 c8             	add    rcx,r8
  7bbe7e:	4d 89 d1             	mov    r9,r10
  7bbe81:	48 89 8d 48 f7 ff ff 	mov    QWORD PTR [rbp-0x8b8],rcx
  7bbe88:	49 f7 da             	neg    r10
  7bbe8b:	48 8b 8d b0 f4 ff ff 	mov    rcx,QWORD PTR [rbp-0xb50]
  7bbe92:	49 89 cc             	mov    r12,rcx
  7bbe95:	4c 8b b5 10 fd ff ff 	mov    r14,QWORD PTR [rbp-0x2f0]
  7bbe9c:	4d 2b e6             	sub    r12,r14
  7bbe9f:	4d 03 d6             	add    r10,r14
  7bbea2:	4d 89 fe             	mov    r14,r15
  7bbea5:	4c 89 a5 f0 f3 ff ff 	mov    QWORD PTR [rbp-0xc10],r12
  7bbeac:	49 89 f5             	mov    r13,rsi
  7bbeaf:	4c 89 95 98 f4 ff ff 	mov    QWORD PTR [rbp-0xb68],r10
  7bbeb6:	4c 8b 85 98 f2 ff ff 	mov    r8,QWORD PTR [rbp-0xd68]
  7bbebd:	4d 2b c8             	sub    r9,r8
  7bbec0:	4c 89 8d c0 f2 ff ff 	mov    QWORD PTR [rbp-0xd40],r9
  7bbec7:	4d 03 d4             	add    r10,r12
  7bbeca:	4c 8b a5 58 ff ff ff 	mov    r12,QWORD PTR [rbp-0xa8]
  7bbed1:	4d 0f af f4          	imul   r14,r12
  7bbed5:	4d 0f af ec          	imul   r13,r12
  7bbed9:	4d 2b c6             	sub    r8,r14
  7bbedc:	4d 03 c2             	add    r8,r10
  7bbedf:	4c 89 b5 b8 f2 ff ff 	mov    QWORD PTR [rbp-0xd48],r14
  7bbee6:	4d 2b f5             	sub    r14,r13
  7bbee9:	4c 89 85 a8 f4 ff ff 	mov    QWORD PTR [rbp-0xb58],r8
  7bbef0:	4d 03 e8             	add    r13,r8
  7bbef3:	4d 89 f8             	mov    r8,r15
  7bbef6:	4d 03 f1             	add    r14,r9
  7bbef9:	49 f7 d8             	neg    r8
  7bbefc:	49 f7 de             	neg    r14
  7bbeff:	4c 89 ad 70 f6 ff ff 	mov    QWORD PTR [rbp-0x990],r13
  7bbf06:	4c 03 f1             	add    r14,rcx
  7bbf09:	4c 8b ad c8 f2 ff ff 	mov    r13,QWORD PTR [rbp-0xd38]
  7bbf10:	4c 0f af ad c0 f4 ff 	imul   r13,QWORD PTR [rbp-0xb40]
  7bbf17:	ff 
  7bbf18:	4c 89 95 68 f2 ff ff 	mov    QWORD PTR [rbp-0xd98],r10
  7bbf1f:	4e 8d 14 06          	lea    r10,[rsi+r8*1]
  7bbf23:	4c 0f af 95 50 ff ff 	imul   r10,QWORD PTR [rbp-0xb0]
  7bbf2a:	ff 
  7bbf2b:	4c 89 85 70 f4 ff ff 	mov    QWORD PTR [rbp-0xb90],r8
  7bbf32:	4b 8d 0c 26          	lea    rcx,[r14+r12*1]
  7bbf36:	4c 8b 85 70 f3 ff ff 	mov    r8,QWORD PTR [rbp-0xc90]
  7bbf3d:	49 f7 dc             	neg    r12
  7bbf40:	48 89 8d 50 f6 ff ff 	mov    QWORD PTR [rbp-0x9b0],rcx
  7bbf47:	4c 89 c1             	mov    rcx,r8
  7bbf4a:	4c 8b 8d 78 f3 ff ff 	mov    r9,QWORD PTR [rbp-0xc88]
  7bbf51:	49 2b c9             	sub    rcx,r9
  7bbf54:	4c 89 ee             	mov    rsi,r13
  7bbf57:	4d 03 e6             	add    r12,r14
  7bbf5a:	4c 89 a5 68 f6 ff ff 	mov    QWORD PTR [rbp-0x998],r12
  7bbf61:	48 f7 de             	neg    rsi
  7bbf64:	4c 8b a5 70 fa ff ff 	mov    r12,QWORD PTR [rbp-0x590]
  7bbf6b:	49 03 cc             	add    rcx,r12
  7bbf6e:	48 2b ce             	sub    rcx,rsi
  7bbf71:	4c 03 d1             	add    r10,rcx
  7bbf74:	4c 89 c9             	mov    rcx,r9
  7bbf77:	48 8b b5 68 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb98]
  7bbf7e:	48 0f af ce          	imul   rcx,rsi
  7bbf82:	48 f7 de             	neg    rsi
  7bbf85:	48 83 c6 03          	add    rsi,0x3
  7bbf89:	4c 89 b5 88 f2 ff ff 	mov    QWORD PTR [rbp-0xd78],r14
  7bbf90:	4d 8d 34 0a          	lea    r14,[r10+rcx*1]
  7bbf94:	4c 89 b5 b8 f4 ff ff 	mov    QWORD PTR [rbp-0xb48],r14
  7bbf9b:	49 89 f6             	mov    r14,rsi
  7bbf9e:	4d 0f af f1          	imul   r14,r9
  7bbfa2:	48 0f af b5 50 f2 ff 	imul   rsi,QWORD PTR [rbp-0xdb0]
  7bbfa9:	ff 
  7bbfaa:	4d 03 d6             	add    r10,r14
  7bbfad:	4d 2b cc             	sub    r9,r12
  7bbfb0:	4c 89 95 d8 f4 ff ff 	mov    QWORD PTR [rbp-0xb28],r10
  7bbfb7:	4e 8d 14 fd 00 00 00 	lea    r10,[r15*8+0x0]
  7bbfbe:	00 
  7bbfbf:	4d 2b da             	sub    r11,r10
  7bbfc2:	4d 2b cd             	sub    r9,r13
  7bbfc5:	49 03 d3             	add    rdx,r11
  7bbfc8:	4d 03 c3             	add    r8,r11
  7bbfcb:	48 2b d7             	sub    rdx,rdi
  7bbfce:	4d 2b c1             	sub    r8,r9
  7bbfd1:	48 89 95 00 f7 ff ff 	mov    QWORD PTR [rbp-0x900],rdx
  7bbfd8:	4d 03 f0             	add    r14,r8
  7bbfdb:	48 8b 95 e0 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xa20]
  7bbfe2:	49 03 c8             	add    rcx,r8
  7bbfe5:	4c 8b a5 80 f3 ff ff 	mov    r12,QWORD PTR [rbp-0xc80]
  7bbfec:	4c 89 b5 d0 f4 ff ff 	mov    QWORD PTR [rbp-0xb30],r14
  7bbff3:	4c 8b b5 c0 f3 ff ff 	mov    r14,QWORD PTR [rbp-0xc40]
  7bbffa:	4d 8d 04 13          	lea    r8,[r11+rdx*1]
  7bbffe:	4d 2b c6             	sub    r8,r14
  7bc001:	4f 8d 0c 23          	lea    r9,[r11+r12*1]
  7bc005:	4c 89 85 58 f8 ff ff 	mov    QWORD PTR [rbp-0x7a8],r8
  7bc00c:	4c 8b 85 20 f2 ff ff 	mov    r8,QWORD PTR [rbp-0xde0]
  7bc013:	48 8b bd d8 f6 ff ff 	mov    rdi,QWORD PTR [rbp-0x928]
  7bc01a:	49 03 fb             	add    rdi,r11
  7bc01d:	48 2b f8             	sub    rdi,rax
  7bc020:	4f 8d 2c 03          	lea    r13,[r11+r8*1]
  7bc024:	48 8b 85 d0 f3 ff ff 	mov    rax,QWORD PTR [rbp-0xc30]
  7bc02b:	4c 03 c8             	add    r9,rax
  7bc02e:	48 89 8d c8 f4 ff ff 	mov    QWORD PTR [rbp-0xb38],rcx
  7bc035:	48 8b 8d 90 f3 ff ff 	mov    rcx,QWORD PTR [rbp-0xc70]
  7bc03c:	48 89 bd d8 f6 ff ff 	mov    QWORD PTR [rbp-0x928],rdi
  7bc043:	48 8b bd d8 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xa28]
  7bc04a:	4c 03 cf             	add    r9,rdi
  7bc04d:	4c 89 8d 60 f8 ff ff 	mov    QWORD PTR [rbp-0x7a0],r9
  7bc054:	4c 8b 8d 00 f6 ff ff 	mov    r9,QWORD PTR [rbp-0xa00]
  7bc05b:	4c 89 ad 40 f8 ff ff 	mov    QWORD PTR [rbp-0x7c0],r13
  7bc062:	4c 2b ad 80 f5 ff ff 	sub    r13,QWORD PTR [rbp-0xa80]
  7bc069:	4c 89 ad 50 f8 ff ff 	mov    QWORD PTR [rbp-0x7b0],r13
  7bc070:	4e 8d 2c 19          	lea    r13,[rcx+r11*1]
  7bc074:	48 89 b5 78 f4 ff ff 	mov    QWORD PTR [rbp-0xb88],rsi
  7bc07b:	4b 8d 34 29          	lea    rsi,[r9+r13*1]
  7bc07f:	4c 8b 8d 38 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xac8]
  7bc086:	4c 03 ad a0 f3 ff ff 	add    r13,QWORD PTR [rbp-0xc60]
  7bc08d:	48 8b 8d d0 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xa30]
  7bc094:	48 03 f1             	add    rsi,rcx
  7bc097:	4c 03 e9             	add    r13,rcx
  7bc09a:	4b 8d 0c 19          	lea    rcx,[r9+r11*1]
  7bc09e:	48 03 8d 78 f2 ff ff 	add    rcx,QWORD PTR [rbp-0xd88]
  7bc0a5:	48 89 8d f8 f6 ff ff 	mov    QWORD PTR [rbp-0x908],rcx
  7bc0ac:	48 8b 8d 40 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xac0]
  7bc0b3:	48 89 b5 48 f8 ff ff 	mov    QWORD PTR [rbp-0x7b8],rsi
  7bc0ba:	48 8b b5 00 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xb00]
  7bc0c1:	4c 89 ad 78 f8 ff ff 	mov    QWORD PTR [rbp-0x788],r13
  7bc0c8:	4e 8d 0c 19          	lea    r9,[rcx+r11*1]
  7bc0cc:	4c 03 8d 70 f2 ff ff 	add    r9,QWORD PTR [rbp-0xd90]
  7bc0d3:	4c 89 8d e8 f6 ff ff 	mov    QWORD PTR [rbp-0x918],r9
  7bc0da:	4d 8d 2c 33          	lea    r13,[r11+rsi*1]
  7bc0de:	48 8b b5 f8 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb08]
  7bc0e5:	4c 8b 8d f0 f3 ff ff 	mov    r9,QWORD PTR [rbp-0xc10]
  7bc0ec:	4c 2b ad e8 f3 ff ff 	sub    r13,QWORD PTR [rbp-0xc18]
  7bc0f3:	4c 89 ad f0 f6 ff ff 	mov    QWORD PTR [rbp-0x910],r13
  7bc0fa:	49 8d 0c 33          	lea    rcx,[r11+rsi*1]
  7bc0fe:	48 8b b5 90 f2 ff ff 	mov    rsi,QWORD PTR [rbp-0xd70]
  7bc105:	4f 8d 2c 19          	lea    r13,[r9+r11*1]
  7bc109:	4c 03 ad 98 f4 ff ff 	add    r13,QWORD PTR [rbp-0xb68]
  7bc110:	4c 03 ad 98 f2 ff ff 	add    r13,QWORD PTR [rbp-0xd68]
  7bc117:	4c 89 ad 60 f6 ff ff 	mov    QWORD PTR [rbp-0x9a0],r13
  7bc11e:	4d 8d 0c 33          	lea    r9,[r11+rsi*1]
  7bc122:	4c 03 9d b0 f4 ff ff 	add    r11,QWORD PTR [rbp-0xb50]
  7bc129:	48 8d b5 a0 f8 ff ff 	lea    rsi,[rbp-0x760]
  7bc130:	4c 8b 2e             	mov    r13,QWORD PTR [rsi]
  7bc133:	4c 2b 9d c0 f2 ff ff 	sub    r11,QWORD PTR [rbp-0xd40]
  7bc13a:	49 f7 dd             	neg    r13
  7bc13d:	4c 89 9d 90 f6 ff ff 	mov    QWORD PTR [rbp-0x970],r11
  7bc144:	4d 03 e9             	add    r13,r9
  7bc147:	4c 2b 8d b8 f3 ff ff 	sub    r9,QWORD PTR [rbp-0xc48]
  7bc14e:	4c 8b 9d 78 f6 ff ff 	mov    r11,QWORD PTR [rbp-0x988]
  7bc155:	48 2b 8d e0 f3 ff ff 	sub    rcx,QWORD PTR [rbp-0xc20]
  7bc15c:	48 89 8d e0 f6 ff ff 	mov    QWORD PTR [rbp-0x920],rcx
  7bc163:	48 8b 8d 88 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x978]
  7bc16a:	4d 03 d9             	add    r11,r9
  7bc16d:	4c 03 c9             	add    r9,rcx
  7bc170:	4c 03 e9             	add    r13,rcx
  7bc173:	48 8b 8d f8 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x408]
  7bc17a:	4c 89 8d 88 f8 ff ff 	mov    QWORD PTR [rbp-0x778],r9
  7bc181:	44 8b 8d 88 f3 ff ff 	mov    r9d,DWORD PTR [rbp-0xc78]
  7bc188:	44 2b c9             	sub    r9d,ecx
  7bc18b:	4d 63 c9             	movsxd r9,r9d
  7bc18e:	49 ff c1             	inc    r9
  7bc191:	4c 89 8d 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],r9
  7bc198:	49 89 c9             	mov    r9,rcx
  7bc19b:	4c 0f af 4d d0       	imul   r9,QWORD PTR [rbp-0x30]
  7bc1a0:	4c 89 2e             	mov    QWORD PTR [rsi],r13
  7bc1a3:	48 8b b5 a8 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x758]
  7bc1aa:	4c 8b ad c8 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xa38]
  7bc1b1:	48 f7 de             	neg    rsi
  7bc1b4:	49 f7 dd             	neg    r13
  7bc1b7:	4c 03 ee             	add    r13,rsi
  7bc1ba:	49 f7 dd             	neg    r13
  7bc1bd:	4c 03 ad d0 f2 ff ff 	add    r13,QWORD PTR [rbp-0xd30]
  7bc1c4:	4c 89 9d 48 f6 ff ff 	mov    QWORD PTR [rbp-0x9b8],r11
  7bc1cb:	4c 8b 9d 98 f3 ff ff 	mov    r11,QWORD PTR [rbp-0xc68]
  7bc1d2:	4d 2b dd             	sub    r11,r13
  7bc1d5:	49 f7 dd             	neg    r13
  7bc1d8:	4d 03 e8             	add    r13,r8
  7bc1db:	4c 8b 85 00 fc ff ff 	mov    r8,QWORD PTR [rbp-0x400]
  7bc1e2:	4d 03 e9             	add    r13,r9
  7bc1e5:	4c 01 8d c0 f5 ff ff 	add    QWORD PTR [rbp-0xa40],r9
  7bc1ec:	4c 01 8d a0 f5 ff ff 	add    QWORD PTR [rbp-0xa60],r9
  7bc1f3:	4d 03 cb             	add    r9,r11
  7bc1f6:	4c 89 8d e8 f5 ff ff 	mov    QWORD PTR [rbp-0xa18],r9
  7bc1fd:	4f 8d 1c 00          	lea    r11,[r8+r8*1]
  7bc201:	49 f7 db             	neg    r11
  7bc204:	49 89 c9             	mov    r9,rcx
  7bc207:	4c 89 ad c8 f5 ff ff 	mov    QWORD PTR [rbp-0xa38],r13
  7bc20e:	4d 03 d8             	add    r11,r8
  7bc211:	4c 8b 45 80          	mov    r8,QWORD PTR [rbp-0x80]
  7bc215:	4c 8b ad f8 f1 ff ff 	mov    r13,QWORD PTR [rbp-0xe08]
  7bc21c:	4d 0f af f8          	imul   r15,r8
  7bc220:	4d 0f af c8          	imul   r9,r8
  7bc224:	4c 0f af ad 98 f5 ff 	imul   r13,QWORD PTR [rbp-0xa68]
  7bc22b:	ff 
  7bc22c:	4c 89 8d 18 f2 ff ff 	mov    QWORD PTR [rbp-0xde8],r9
  7bc233:	4c 89 bd 40 f2 ff ff 	mov    QWORD PTR [rbp-0xdc0],r15
  7bc23a:	4d 2b f9             	sub    r15,r9
  7bc23d:	4c 8b 8d 80 f2 ff ff 	mov    r9,QWORD PTR [rbp-0xd80]
  7bc244:	4c 89 ad 58 f2 ff ff 	mov    QWORD PTR [rbp-0xda8],r13
  7bc24b:	48 89 b5 b0 f5 ff ff 	mov    QWORD PTR [rbp-0xa50],rsi
  7bc252:	4c 89 ce             	mov    rsi,r9
  7bc255:	4c 2b ad 08 f2 ff ff 	sub    r13,QWORD PTR [rbp-0xdf8]
  7bc25c:	49 2b f3             	sub    rsi,r11
  7bc25f:	4d 03 fd             	add    r15,r13
  7bc262:	4d 03 dd             	add    r11,r13
  7bc265:	49 2b f7             	sub    rsi,r15
  7bc268:	49 f7 df             	neg    r15
  7bc26b:	4d 03 f9             	add    r15,r9
  7bc26e:	49 f7 db             	neg    r11
  7bc271:	4c 8b 85 90 f4 ff ff 	mov    r8,QWORD PTR [rbp-0xb70]
  7bc278:	4c 89 bd a0 f4 ff ff 	mov    QWORD PTR [rbp-0xb60],r15
  7bc27f:	49 03 f0             	add    rsi,r8
  7bc282:	4c 89 ad f8 f3 ff ff 	mov    QWORD PTR [rbp-0xc08],r13
  7bc289:	48 89 b5 b8 f5 ff ff 	mov    QWORD PTR [rbp-0xa48],rsi
  7bc290:	4d 03 f8             	add    r15,r8
  7bc293:	4c 89 bd 90 f5 ff ff 	mov    QWORD PTR [rbp-0xa70],r15
  7bc29a:	49 89 cf             	mov    r15,rcx
  7bc29d:	4c 0f af 7d d8       	imul   r15,QWORD PTR [rbp-0x28]
  7bc2a2:	48 8b b5 e8 fb ff ff 	mov    rsi,QWORD PTR [rbp-0x418]
  7bc2a9:	4c 8b ad d8 f3 ff ff 	mov    r13,QWORD PTR [rbp-0xc28]
  7bc2b0:	48 f7 de             	neg    rsi
  7bc2b3:	49 f7 dd             	neg    r13
  7bc2b6:	4c 03 ee             	add    r13,rsi
  7bc2b9:	4c 8b 85 c8 f3 ff ff 	mov    r8,QWORD PTR [rbp-0xc38]
  7bc2c0:	4d 03 c5             	add    r8,r13
  7bc2c3:	4c 01 bd f0 f5 ff ff 	add    QWORD PTR [rbp-0xa10],r15
  7bc2ca:	4d 03 f8             	add    r15,r8
  7bc2cd:	4c 8b 85 68 f7 ff ff 	mov    r8,QWORD PTR [rbp-0x898]
  7bc2d4:	4c 89 bd a8 f5 ff ff 	mov    QWORD PTR [rbp-0xa58],r15
  7bc2db:	4c 8d 3c cd 00 00 00 	lea    r15,[rcx*8+0x0]
  7bc2e2:	00 
  7bc2e3:	49 f7 d8             	neg    r8
  7bc2e6:	4d 03 c7             	add    r8,r15
  7bc2e9:	4d 2b fa             	sub    r15,r10
  7bc2ec:	4c 8b 95 00 f4 ff ff 	mov    r10,QWORD PTR [rbp-0xc00]
  7bc2f3:	49 03 d7             	add    rdx,r15
  7bc2f6:	4d 03 d0             	add    r10,r8
  7bc2f9:	49 2b d6             	sub    rdx,r14
  7bc2fc:	4c 89 95 e0 fc ff ff 	mov    QWORD PTR [rbp-0x320],r10
  7bc303:	4d 03 e7             	add    r12,r15
  7bc306:	4c 8b 95 60 f3 ff ff 	mov    r10,QWORD PTR [rbp-0xca0]
  7bc30d:	48 03 d6             	add    rdx,rsi
  7bc310:	4c 01 85 08 f5 ff ff 	add    QWORD PTR [rbp-0xaf8],r8
  7bc317:	49 03 c4             	add    rax,r12
  7bc31a:	48 89 95 e0 f5 ff ff 	mov    QWORD PTR [rbp-0xa20],rdx
  7bc321:	48 03 f8             	add    rdi,rax
  7bc324:	48 8b 95 90 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xc70]
  7bc32b:	4f 8d 2c d0          	lea    r13,[r8+r10*8]
  7bc32f:	4c 8b 95 90 f1 ff ff 	mov    r10,QWORD PTR [rbp-0xe70]
  7bc336:	4d 03 c2             	add    r8,r10
  7bc339:	49 03 d7             	add    rdx,r15
  7bc33c:	4d 03 cf             	add    r9,r15
  7bc33f:	4c 01 85 18 f5 ff ff 	add    QWORD PTR [rbp-0xae8],r8
  7bc346:	4d 03 d9             	add    r11,r9
  7bc349:	4c 89 85 68 f7 ff ff 	mov    QWORD PTR [rbp-0x898],r8
  7bc350:	4d 03 d5             	add    r10,r13
  7bc353:	48 8d b5 20 f2 ff ff 	lea    rsi,[rbp-0xde0]
  7bc35a:	48 8b 06             	mov    rax,QWORD PTR [rsi]
  7bc35d:	4c 8b 85 80 f5 ff ff 	mov    r8,QWORD PTR [rbp-0xa80]
  7bc364:	49 03 c7             	add    rax,r15
  7bc367:	4c 8d b5 00 f6 ff ff 	lea    r14,[rbp-0xa00]
  7bc36e:	4d 8b 26             	mov    r12,QWORD PTR [r14]
  7bc371:	49 f7 d8             	neg    r8
  7bc374:	4c 03 e2             	add    r12,rdx
  7bc377:	4c 03 c0             	add    r8,rax
  7bc37a:	48 89 06             	mov    QWORD PTR [rsi],rax
  7bc37d:	48 8b 85 d0 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xa30]
  7bc384:	4c 03 e0             	add    r12,rax
  7bc387:	4d 89 26             	mov    QWORD PTR [r14],r12
  7bc38a:	4c 8b a5 90 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb70]
  7bc391:	48 89 bd d8 f5 ff ff 	mov    QWORD PTR [rbp-0xa28],rdi
  7bc398:	4d 03 dc             	add    r11,r12
  7bc39b:	48 8b bd a0 f3 ff ff 	mov    rdi,QWORD PTR [rbp-0xc60]
  7bc3a2:	48 03 fa             	add    rdi,rdx
  7bc3a5:	4c 89 9d f8 f5 ff ff 	mov    QWORD PTR [rbp-0xa08],r11
  7bc3ac:	48 03 c7             	add    rax,rdi
  7bc3af:	4c 8b 9d f8 f1 ff ff 	mov    r11,QWORD PTR [rbp-0xe08]
  7bc3b6:	4c 89 df             	mov    rdi,r11
  7bc3b9:	48 0f af bd e8 f4 ff 	imul   rdi,QWORD PTR [rbp-0xb18]
  7bc3c0:	ff 
  7bc3c1:	4c 0f af 9d e0 f4 ff 	imul   r11,QWORD PTR [rbp-0xb20]
  7bc3c8:	ff 
  7bc3c9:	48 8b b5 f8 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb08]
  7bc3d0:	48 8b 95 00 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xb00]
  7bc3d7:	49 03 f7             	add    rsi,r15
  7bc3da:	49 03 d7             	add    rdx,r15
  7bc3dd:	48 2b b5 e0 f3 ff ff 	sub    rsi,QWORD PTR [rbp-0xc20]
  7bc3e4:	48 2b 95 e8 f3 ff ff 	sub    rdx,QWORD PTR [rbp-0xc18]
  7bc3eb:	48 89 85 d0 f5 ff ff 	mov    QWORD PTR [rbp-0xa30],rax
  7bc3f2:	48 89 b5 f8 f4 ff ff 	mov    QWORD PTR [rbp-0xb08],rsi
  7bc3f9:	48 8b 85 30 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xad0]
  7bc400:	48 8b b5 68 f3 ff ff 	mov    rsi,QWORD PTR [rbp-0xc98]
  7bc407:	48 89 95 00 f5 ff ff 	mov    QWORD PTR [rbp-0xb00],rdx
  7bc40e:	48 89 c2             	mov    rdx,rax
  7bc411:	48 2b d7             	sub    rdx,rdi
  7bc414:	49 03 c7             	add    rax,r15
  7bc417:	48 2b fe             	sub    rdi,rsi
  7bc41a:	4c 89 95 90 fa ff ff 	mov    QWORD PTR [rbp-0x570],r10
  7bc421:	48 2b c7             	sub    rax,rdi
  7bc424:	4c 89 bd a0 f2 ff ff 	mov    QWORD PTR [rbp-0xd60],r15
  7bc42b:	4c 8b 95 f0 f3 ff ff 	mov    r10,QWORD PTR [rbp-0xc10]
  7bc432:	48 8b bd f0 f1 ff ff 	mov    rdi,QWORD PTR [rbp-0xe10]
  7bc439:	4d 03 d7             	add    r10,r15
  7bc43c:	4c 8b bd 10 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x9f0]
  7bc443:	49 0f af ff          	imul   rdi,r15
  7bc447:	49 0f af cf          	imul   rcx,r15
  7bc44b:	4c 2b 8d f8 f3 ff ff 	sub    r9,QWORD PTR [rbp-0xc08]
  7bc452:	4c 8d bd 98 f4 ff ff 	lea    r15,[rbp-0xb68]
  7bc459:	4d 8b 2f             	mov    r13,QWORD PTR [r15]
  7bc45c:	4c 89 8d 88 f4 ff ff 	mov    QWORD PTR [rbp-0xb78],r9
  7bc463:	4d 03 ea             	add    r13,r10
  7bc466:	4c 03 ad 98 f2 ff ff 	add    r13,QWORD PTR [rbp-0xd68]
  7bc46d:	4f 8d 34 21          	lea    r14,[r9+r12*1]
  7bc471:	49 89 f9             	mov    r9,rdi
  7bc474:	4c 8d 14 32          	lea    r10,[rdx+rsi*1]
  7bc478:	4c 2b c9             	sub    r9,rcx
  7bc47b:	4c 8b a5 10 f5 ff ff 	mov    r12,QWORD PTR [rbp-0xaf0]
  7bc482:	4d 2b d1             	sub    r10,r9
  7bc485:	4d 2b e3             	sub    r12,r11
  7bc488:	4d 89 2f             	mov    QWORD PTR [r15],r13
  7bc48b:	4c 89 b5 88 f5 ff ff 	mov    QWORD PTR [rbp-0xa78],r14
  7bc492:	4c 89 a5 20 f5 ff ff 	mov    QWORD PTR [rbp-0xae0],r12
  7bc499:	c5 7b 10 3d f7 04 09 	vmovsd xmm15,QWORD PTR [rip+0x904f7]        # 84c998 <__STRLITPACK_0.112+0x888>
  7bc4a0:	00 
  7bc4a1:	c7 85 b8 f8 ff ff 00 	mov    DWORD PTR [rbp-0x748],0x0
  7bc4a8:	00 00 00 
  7bc4ab:	c4 41 7b 12 d3       	vmovddup xmm10,xmm11
  7bc4b0:	4c 03 85 b0 f5 ff ff 	add    r8,QWORD PTR [rbp-0xa50]
  7bc4b7:	44 8b a5 d0 fb ff ff 	mov    r12d,DWORD PTR [rbp-0x430]
  7bc4be:	4c 8b ad 68 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xa98]
  7bc4c5:	4c 8b b5 70 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xa90]
  7bc4cc:	44 8b bd 78 f5 ff ff 	mov    r15d,DWORD PTR [rbp-0xa88]
  7bc4d3:	4c 89 9d f8 f1 ff ff 	mov    QWORD PTR [rbp-0xe08],r11
  7bc4da:	48 89 95 f0 f4 ff ff 	mov    QWORD PTR [rbp-0xb10],rdx
  7bc4e1:	48 89 85 30 f5 ff ff 	mov    QWORD PTR [rbp-0xad0],rax
  7bc4e8:	4c 89 95 28 f5 ff ff 	mov    QWORD PTR [rbp-0xad8],r10
  7bc4ef:	44 89 bd 78 f5 ff ff 	mov    DWORD PTR [rbp-0xa88],r15d
  7bc4f6:	4c 8b bd 10 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x9f0]
  7bc4fd:	48 89 f0             	mov    rax,rsi
  7bc500:	48 2b c7             	sub    rax,rdi
  7bc503:	49 89 d2             	mov    r10,rdx
  7bc506:	4a 8d 0c 79          	lea    rcx,[rcx+r15*2]
  7bc50a:	4c 03 d0             	add    r10,rax
  7bc50d:	4c 03 d1             	add    r10,rcx
  7bc510:	4c 89 95 f0 f4 ff ff 	mov    QWORD PTR [rbp-0xb10],r10
  7bc517:	48 8d 85 70 f4 ff ff 	lea    rax,[rbp-0xb90]
  7bc51e:	4c 8b 10             	mov    r10,QWORD PTR [rax]
  7bc521:	48 8b 8d f8 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x408]
  7bc528:	4c 03 d1             	add    r10,rcx
  7bc52b:	4c 0f af 95 e8 fc ff 	imul   r10,QWORD PTR [rbp-0x318]
  7bc532:	ff 
  7bc533:	c4 42 7d 19 db       	vbroadcastsd ymm11,xmm11
  7bc538:	c4 e2 7d 19 c0       	vbroadcastsd ymm0,xmm0
  7bc53d:	c5 79 28 cd          	vmovapd xmm9,xmm5
  7bc541:	c4 e2 7d 19 ec       	vbroadcastsd ymm5,xmm4
  7bc546:	4c 8d bd 10 f3 ff ff 	lea    r15,[rbp-0xcf0]
  7bc54d:	c4 41 7d 11 1f       	vmovupd YMMWORD PTR [r15],ymm11
  7bc552:	48 8d 95 f0 f2 ff ff 	lea    rdx,[rbp-0xd10]
  7bc559:	c5 fd 11 02          	vmovupd YMMWORD PTR [rdx],ymm0
  7bc55d:	c5 7b 12 dc          	vmovddup xmm11,xmm4
  7bc561:	c5 f9 10 05 37 f2 08 	vmovupd xmm0,XMMWORD PTR [rip+0x8f237]        # 84b7a0 <__STRLITPACK_219.115+0xa0>
  7bc568:	00 
  7bc569:	c4 c1 7d 10 37       	vmovupd ymm6,YMMWORD PTR [r15]
  7bc56e:	c5 fd 10 3a          	vmovupd ymm7,YMMWORD PTR [rdx]
  7bc572:	4c 89 85 80 f5 ff ff 	mov    QWORD PTR [rbp-0xa80],r8
  7bc579:	4c 89 10             	mov    QWORD PTR [rax],r10
  7bc57c:	4c 8b 95 50 f2 ff ff 	mov    r10,QWORD PTR [rbp-0xdb0]
  7bc583:	48 8d b5 68 f4 ff ff 	lea    rsi,[rbp-0xb98]
  7bc58a:	4c 8b 06             	mov    r8,QWORD PTR [rsi]
  7bc58d:	4d 0f af c2          	imul   r8,r10
  7bc591:	44 89 a5 d0 fb ff ff 	mov    DWORD PTR [rbp-0x430],r12d
  7bc598:	4c 8b a5 80 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb80]
  7bc59f:	4c 0f af a5 00 f2 ff 	imul   r12,QWORD PTR [rbp-0xe00]
  7bc5a6:	ff 
  7bc5a7:	4c 8b 9d a0 f2 ff ff 	mov    r11,QWORD PTR [rbp-0xd60]
  7bc5ae:	48 8b bd 30 f2 ff ff 	mov    rdi,QWORD PTR [rbp-0xdd0]
  7bc5b5:	4c 89 b5 70 f5 ff ff 	mov    QWORD PTR [rbp-0xa90],r14
  7bc5bc:	4c 8b b5 10 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xaf0]
  7bc5c3:	4c 8b 8d f8 f1 ff ff 	mov    r9,QWORD PTR [rbp-0xe08]
  7bc5ca:	4d 03 f3             	add    r14,r11
  7bc5cd:	4c 2b cf             	sub    r9,rdi
  7bc5d0:	4c 8b bd 58 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xda8]
  7bc5d7:	4d 2b f1             	sub    r14,r9
  7bc5da:	4c 89 ad 68 f5 ff ff 	mov    QWORD PTR [rbp-0xa98],r13
  7bc5e1:	49 f7 df             	neg    r15
  7bc5e4:	4c 8b ad 08 f2 ff ff 	mov    r13,QWORD PTR [rbp-0xdf8]
  7bc5eb:	4c 89 b5 10 f5 ff ff 	mov    QWORD PTR [rbp-0xaf0],r14
  7bc5f2:	4c 8b b5 00 fc ff ff 	mov    r14,QWORD PTR [rbp-0x400]
  7bc5f9:	4d 03 fe             	add    r15,r14
  7bc5fc:	4c 2b ad 40 f2 ff ff 	sub    r13,QWORD PTR [rbp-0xdc0]
  7bc603:	4c 89 06             	mov    QWORD PTR [rsi],r8
  7bc606:	4d 03 fd             	add    r15,r13
  7bc609:	4c 8b 85 80 f2 ff ff 	mov    r8,QWORD PTR [rbp-0xd80]
  7bc610:	4c 8b ad 18 f2 ff ff 	mov    r13,QWORD PTR [rbp-0xde8]
  7bc617:	4d 2b c6             	sub    r8,r14
  7bc61a:	4c 8b 75 80          	mov    r14,QWORD PTR [rbp-0x80]
  7bc61e:	4d 03 c7             	add    r8,r15
  7bc621:	4c 01 a5 88 f4 ff ff 	add    QWORD PTR [rbp-0xb78],r12
  7bc628:	4c 01 a5 a0 f4 ff ff 	add    QWORD PTR [rbp-0xb60],r12
  7bc62f:	48 8b b5 10 f2 ff ff 	mov    rsi,QWORD PTR [rbp-0xdf0]
  7bc636:	4f 8d 6c 75 00       	lea    r13,[r13+r14*2+0x0]
  7bc63b:	4d 03 c5             	add    r8,r13
  7bc63e:	4d 03 e0             	add    r12,r8
  7bc641:	4c 01 85 90 f4 ff ff 	add    QWORD PTR [rbp-0xb70],r8
  7bc648:	4c 89 a5 80 f4 ff ff 	mov    QWORD PTR [rbp-0xb80],r12
  7bc64f:	4c 8b a5 88 f2 ff ff 	mov    r12,QWORD PTR [rbp-0xd78]
  7bc656:	4c 8b 85 58 ff ff ff 	mov    r8,QWORD PTR [rbp-0xa8]
  7bc65d:	4c 8b ad d0 f2 ff ff 	mov    r13,QWORD PTR [rbp-0xd30]
  7bc664:	4c 29 ad 40 f8 ff ff 	sub    QWORD PTR [rbp-0x7c0],r13
  7bc66b:	4c 8b b5 20 f2 ff ff 	mov    r14,QWORD PTR [rbp-0xde0]
  7bc672:	4f 8d 24 44          	lea    r12,[r12+r8*2]
  7bc676:	4d 2b f5             	sub    r14,r13
  7bc679:	4c 8b ad 60 f2 ff ff 	mov    r13,QWORD PTR [rbp-0xda0]
  7bc680:	49 f7 dd             	neg    r13
  7bc683:	4c 89 a5 e8 f3 ff ff 	mov    QWORD PTR [rbp-0xc18],r12
  7bc68a:	4c 8b a5 20 ff ff ff 	mov    r12,QWORD PTR [rbp-0xe0]
  7bc691:	4d 03 ec             	add    r13,r12
  7bc694:	48 2b b5 48 f2 ff ff 	sub    rsi,QWORD PTR [rbp-0xdb8]
  7bc69b:	4c 8b bd 90 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xd70]
  7bc6a2:	4c 03 ee             	add    r13,rsi
  7bc6a5:	48 8b b5 28 f2 ff ff 	mov    rsi,QWORD PTR [rbp-0xdd8]
  7bc6ac:	4d 2b fc             	sub    r15,r12
  7bc6af:	4c 8b 65 c8          	mov    r12,QWORD PTR [rbp-0x38]
  7bc6b3:	4d 03 fd             	add    r15,r13
  7bc6b6:	48 8b 85 08 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x9f8]
  7bc6bd:	48 8b 95 f0 f1 ff ff 	mov    rdx,QWORD PTR [rbp-0xe10]
  7bc6c4:	48 0f af d0          	imul   rdx,rax
  7bc6c8:	4c 01 b5 b0 f5 ff ff 	add    QWORD PTR [rbp-0xa50],r14
  7bc6cf:	4e 8d 2c 66          	lea    r13,[rsi+r12*2]
  7bc6d3:	4d 03 fd             	add    r15,r13
  7bc6d6:	4c 01 bd 78 f6 ff ff 	add    QWORD PTR [rbp-0x988],r15
  7bc6dd:	4c 01 bd 88 f6 ff ff 	add    QWORD PTR [rbp-0x978],r15
  7bc6e4:	49 89 cf             	mov    r15,rcx
  7bc6e7:	4c 0f af f8          	imul   r15,rax
  7bc6eb:	4c 8d 8d 20 f5 ff ff 	lea    r9,[rbp-0xae0]
  7bc6f2:	4d 8b 21             	mov    r12,QWORD PTR [r9]
  7bc6f5:	48 8b b5 d0 f6 ff ff 	mov    rsi,QWORD PTR [rbp-0x930]
  7bc6fc:	48 f7 de             	neg    rsi
  7bc6ff:	4c 8b ad 50 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xab0]
  7bc706:	4d 8d 34 3c          	lea    r14,[r12+rdi*1]
  7bc70a:	48 2b fa             	sub    rdi,rdx
  7bc70d:	49 2b d7             	sub    rdx,r15
  7bc710:	4c 2b f2             	sub    r14,rdx
  7bc713:	4c 03 e7             	add    r12,rdi
  7bc716:	48 8b 95 78 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x188]
  7bc71d:	49 8d 3c 47          	lea    rdi,[r15+rax*2]
  7bc721:	4c 89 b5 38 f3 ff ff 	mov    QWORD PTR [rbp-0xcc8],r14
  7bc728:	49 89 d6             	mov    r14,rdx
  7bc72b:	4c 0f af f1          	imul   r14,rcx
  7bc72f:	4c 03 e7             	add    r12,rdi
  7bc732:	4c 89 ef             	mov    rdi,r13
  7bc735:	4d 89 21             	mov    QWORD PTR [r9],r12
  7bc738:	4d 8d 24 56          	lea    r12,[r14+rdx*2]
  7bc73c:	49 f7 de             	neg    r14
  7bc73f:	48 8b 85 a8 f2 ff ff 	mov    rax,QWORD PTR [rbp-0xd58]
  7bc746:	4c 03 f0             	add    r14,rax
  7bc749:	48 f7 d8             	neg    rax
  7bc74c:	49 2b fe             	sub    rdi,r14
  7bc74f:	48 03 c6             	add    rax,rsi
  7bc752:	4c 01 a5 60 f5 ff ff 	add    QWORD PTR [rbp-0xaa0],r12
  7bc759:	4c 03 e0             	add    r12,rax
  7bc75c:	48 8b 95 80 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x180]
  7bc763:	4d 03 ec             	add    r13,r12
  7bc766:	4c 89 ad 50 f5 ff ff 	mov    QWORD PTR [rbp-0xab0],r13
  7bc76d:	49 89 d5             	mov    r13,rdx
  7bc770:	4c 0f af e9          	imul   r13,rcx
  7bc774:	4c 8d a5 40 f5 ff ff 	lea    r12,[rbp-0xac0]
  7bc77b:	49 8b 04 24          	mov    rax,QWORD PTR [r12]
  7bc77f:	48 89 bd 58 f3 ff ff 	mov    QWORD PTR [rbp-0xca8],rdi
  7bc786:	48 8b bd 70 f2 ff ff 	mov    rdi,QWORD PTR [rbp-0xd90]
  7bc78d:	48 03 fe             	add    rdi,rsi
  7bc790:	4e 8d 3c 18          	lea    r15,[rax+r11*1]
  7bc794:	48 03 c7             	add    rax,rdi
  7bc797:	4c 03 ff             	add    r15,rdi
  7bc79a:	49 2b c6             	sub    rax,r14
  7bc79d:	49 89 04 24          	mov    QWORD PTR [r12],rax
  7bc7a1:	49 8d 44 55 00       	lea    rax,[r13+rdx*2+0x0]
  7bc7a6:	49 f7 dd             	neg    r13
  7bc7a9:	48 8b bd b0 f2 ff ff 	mov    rdi,QWORD PTR [rbp-0xd50]
  7bc7b0:	4c 03 ef             	add    r13,rdi
  7bc7b3:	48 8b 95 c8 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x938]
  7bc7ba:	48 f7 df             	neg    rdi
  7bc7bd:	48 f7 da             	neg    rdx
  7bc7c0:	48 03 fa             	add    rdi,rdx
  7bc7c3:	48 01 85 58 f5 ff ff 	add    QWORD PTR [rbp-0xaa8],rax
  7bc7ca:	48 03 c7             	add    rax,rdi
  7bc7cd:	4c 8d b5 38 f5 ff ff 	lea    r14,[rbp-0xac8]
  7bc7d4:	49 8b 3e             	mov    rdi,QWORD PTR [r14]
  7bc7d7:	4c 89 bd 50 f3 ff ff 	mov    QWORD PTR [rbp-0xcb0],r15
  7bc7de:	4c 8b bd 78 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xd88]
  7bc7e5:	4c 03 fa             	add    r15,rdx
  7bc7e8:	4a 8d 34 1f          	lea    rsi,[rdi+r11*1]
  7bc7ec:	49 03 ff             	add    rdi,r15
  7bc7ef:	49 03 f7             	add    rsi,r15
  7bc7f2:	49 2b fd             	sub    rdi,r13
  7bc7f5:	49 89 3e             	mov    QWORD PTR [r14],rdi
  7bc7f8:	4c 89 c7             	mov    rdi,r8
  7bc7fb:	48 0f af f9          	imul   rdi,rcx
  7bc7ff:	4c 8b 8d c8 f2 ff ff 	mov    r9,QWORD PTR [rbp-0xd38]
  7bc806:	4c 0f af 8d 60 f4 ff 	imul   r9,QWORD PTR [rbp-0xba0]
  7bc80d:	ff 
  7bc80e:	4c 8d bd 48 f5 ff ff 	lea    r15,[rbp-0xab8]
  7bc815:	4d 8b 27             	mov    r12,QWORD PTR [r15]
  7bc818:	4d 89 e6             	mov    r14,r12
  7bc81b:	48 8b 8d b8 f2 ff ff 	mov    rcx,QWORD PTR [rbp-0xd48]
  7bc822:	4d 2b f5             	sub    r14,r13
  7bc825:	4c 8b ad 58 f6 ff ff 	mov    r13,QWORD PTR [rbp-0x9a8]
  7bc82c:	4c 03 e0             	add    r12,rax
  7bc82f:	4d 89 27             	mov    QWORD PTR [r15],r12
  7bc832:	49 89 cc             	mov    r12,rcx
  7bc835:	49 f7 dd             	neg    r13
  7bc838:	48 f7 d9             	neg    rcx
  7bc83b:	49 03 cd             	add    rcx,r13
  7bc83e:	4c 2b e7             	sub    r12,rdi
  7bc841:	48 8b 85 98 f2 ff ff 	mov    rax,QWORD PTR [rbp-0xd68]
  7bc848:	48 f7 d9             	neg    rcx
  7bc84b:	49 03 c5             	add    rax,r13
  7bc84e:	48 89 b5 40 f3 ff ff 	mov    QWORD PTR [rbp-0xcc0],rsi
  7bc855:	49 2b c4             	sub    rax,r12
  7bc858:	48 8b b5 c0 f2 ff ff 	mov    rsi,QWORD PTR [rbp-0xd40]
  7bc85f:	48 03 ce             	add    rcx,rsi
  7bc862:	4c 03 e6             	add    r12,rsi
  7bc865:	48 f7 d9             	neg    rcx
  7bc868:	49 f7 dc             	neg    r12
  7bc86b:	48 8b 95 68 f2 ff ff 	mov    rdx,QWORD PTR [rbp-0xd98]
  7bc872:	4c 89 b5 48 f3 ff ff 	mov    QWORD PTR [rbp-0xcb8],r14
  7bc879:	48 03 d0             	add    rdx,rax
  7bc87c:	4c 8b b5 b0 f4 ff ff 	mov    r14,QWORD PTR [rbp-0xb50]
  7bc883:	49 03 ce             	add    rcx,r14
  7bc886:	48 8b 85 38 f2 ff ff 	mov    rax,QWORD PTR [rbp-0xdc8]
  7bc88d:	4d 03 e6             	add    r12,r14
  7bc890:	4c 8b bd 98 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x968]
  7bc897:	4d 03 f3             	add    r14,r11
  7bc89a:	4c 03 d8             	add    r11,rax
  7bc89d:	49 2b c2             	sub    rax,r10
  7bc8a0:	4d 2b d7             	sub    r10,r15
  7bc8a3:	49 03 c7             	add    rax,r15
  7bc8a6:	4d 2b d1             	sub    r10,r9
  7bc8a9:	49 f7 d9             	neg    r9
  7bc8ac:	49 2b c1             	sub    rax,r9
  7bc8af:	4d 2b da             	sub    r11,r10
  7bc8b2:	4c 8d bd 70 f4 ff ff 	lea    r15,[rbp-0xb90]
  7bc8b9:	4d 8b 0f             	mov    r9,QWORD PTR [r15]
  7bc8bc:	4f 8d 14 44          	lea    r10,[r12+r8*2]
  7bc8c0:	4c 03 c8             	add    r9,rax
  7bc8c3:	4c 2b f6             	sub    r14,rsi
  7bc8c6:	48 01 bd a8 f4 ff ff 	add    QWORD PTR [rbp-0xb58],rdi
  7bc8cd:	48 03 f9             	add    rdi,rcx
  7bc8d0:	48 8d b5 d8 f8 ff ff 	lea    rsi,[rbp-0x728]
  7bc8d7:	48 c7 06 00 00 00 00 	mov    QWORD PTR [rsi],0x0
  7bc8de:	4a 8d 0c 42          	lea    rcx,[rdx+r8*2]
  7bc8e2:	4c 8d a5 78 f4 ff ff 	lea    r12,[rbp-0xb88]
  7bc8e9:	4d 8b 04 24          	mov    r8,QWORD PTR [r12]
  7bc8ed:	4d 03 f5             	add    r14,r13
  7bc8f0:	48 89 8d 30 f3 ff ff 	mov    QWORD PTR [rbp-0xcd0],rcx
  7bc8f7:	48 8d 95 68 f4 ff ff 	lea    rdx,[rbp-0xb98]
  7bc8fe:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  7bc901:	4c 89 b5 b0 f4 ff ff 	mov    QWORD PTR [rbp-0xb50],r14
  7bc908:	4b 8d 04 08          	lea    rax,[r8+r9*1]
  7bc90c:	4c 03 c9             	add    r9,rcx
  7bc90f:	49 03 cb             	add    rcx,r11
  7bc912:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  7bc915:	4d 03 c3             	add    r8,r11
  7bc918:	48 8b 8d 78 ff ff ff 	mov    rcx,QWORD PTR [rbp-0x88]
  7bc91f:	4c 8b 5d c0          	mov    r11,QWORD PTR [rbp-0x40]
  7bc923:	4d 89 0f             	mov    QWORD PTR [r15],r9
  7bc926:	41 89 c9             	mov    r9d,ecx
  7bc929:	44 89 da             	mov    edx,r11d
  7bc92c:	41 83 e1 fc          	and    r9d,0xfffffffc
  7bc930:	41 83 e3 fe          	and    r11d,0xfffffffe
  7bc934:	83 e1 fe             	and    ecx,0xfffffffe
  7bc937:	83 e2 fc             	and    edx,0xfffffffc
  7bc93a:	4d 63 c9             	movsxd r9,r9d
  7bc93d:	4d 63 db             	movsxd r11,r11d
  7bc940:	48 63 c9             	movsxd rcx,ecx
  7bc943:	48 63 d2             	movsxd rdx,edx
  7bc946:	4d 89 04 24          	mov    QWORD PTR [r12],r8
  7bc94a:	4c 89 5d e0          	mov    QWORD PTR [rbp-0x20],r11
  7bc94e:	4c 89 8d e0 fe ff ff 	mov    QWORD PTR [rbp-0x120],r9
  7bc955:	4c 89 95 e0 f2 ff ff 	mov    QWORD PTR [rbp-0xd20],r10
  7bc95c:	48 89 bd e8 f2 ff ff 	mov    QWORD PTR [rbp-0xd18],rdi
  7bc963:	44 8b a5 d0 fb ff ff 	mov    r12d,DWORD PTR [rbp-0x430]
  7bc96a:	4c 8b ad 68 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xa98]
  7bc971:	4c 8b b5 70 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xa90]
  7bc978:	44 8b bd 78 f5 ff ff 	mov    r15d,DWORD PTR [rbp-0xa88]
  7bc97f:	48 8b 3e             	mov    rdi,QWORD PTR [rsi]
  7bc982:	44 8b 85 b8 f8 ff ff 	mov    r8d,DWORD PTR [rbp-0x748]
  7bc989:	4c 8b 8d c0 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x740]
  7bc990:	4c 8b 9d c8 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x738]
  7bc997:	44 8b 95 d0 f8 ff ff 	mov    r10d,DWORD PTR [rbp-0x730]
  7bc99e:	48 89 55 a0          	mov    QWORD PTR [rbp-0x60],rdx
  7bc9a2:	48 89 4d 88          	mov    QWORD PTR [rbp-0x78],rcx
  7bc9a6:	48 89 85 d8 f2 ff ff 	mov    QWORD PTR [rbp-0xd28],rax
  7bc9ad:	48 83 7d d0 08       	cmp    QWORD PTR [rbp-0x30],0x8
  7bc9b2:	0f 85 c9 03 00 00    	jne    7bcd81 <pre_step3d_mod_mp_pre_step3d_tile_+0x3781>
  7bc9b8:	48 83 7d c8 08       	cmp    QWORD PTR [rbp-0x38],0x8
  7bc9bd:	0f 85 be 03 00 00    	jne    7bcd81 <pre_step3d_mod_mp_pre_step3d_tile_+0x3781>
  7bc9c3:	48 83 7d d8 08       	cmp    QWORD PTR [rbp-0x28],0x8
  7bc9c8:	0f 85 b3 03 00 00    	jne    7bcd81 <pre_step3d_mod_mp_pre_step3d_tile_+0x3781>
  7bc9ce:	48 8b 95 20 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x3e0]
  7bc9d5:	33 c0                	xor    eax,eax
  7bc9d7:	48 89 85 40 ff ff ff 	mov    QWORD PTR [rbp-0xc0],rax
  7bc9de:	48 89 95 20 fe ff ff 	mov    QWORD PTR [rbp-0x1e0],rdx
  7bc9e5:	48 89 85 18 fe ff ff 	mov    QWORD PTR [rbp-0x1e8],rax
  7bc9ec:	48 89 85 10 fe ff ff 	mov    QWORD PTR [rbp-0x1f0],rax
  7bc9f3:	48 89 85 b0 f8 ff ff 	mov    QWORD PTR [rbp-0x750],rax
  7bc9fa:	48 83 bd 10 ff ff ff 	cmp    QWORD PTR [rbp-0xf0],0x0
  7bca01:	00 
  7bca02:	0f 8e d5 07 00 00    	jle    7bd1dd <pre_step3d_mod_mp_pre_step3d_tile_+0x3bdd>
  7bca08:	4c 8b b5 a8 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x758]
  7bca0f:	4c 8b ad f0 fb ff ff 	mov    r13,QWORD PTR [rbp-0x410]
  7bca16:	4c 0f af f7          	imul   r14,rdi
  7bca1a:	4c 0f af ef          	imul   r13,rdi
  7bca1e:	48 8b b5 60 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x7a0]
  7bca25:	48 8b 8d 50 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x7b0]
  7bca2c:	48 8b 95 48 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x7b8]
  7bca33:	4c 8b a5 58 f8 ff ff 	mov    r12,QWORD PTR [rbp-0x7a8]
  7bca3a:	49 03 f1             	add    rsi,r9
  7bca3d:	48 8b 85 78 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x788]
  7bca44:	49 03 ce             	add    rcx,r14
  7bca47:	4c 8b bd a0 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x760]
  7bca4e:	49 03 d6             	add    rdx,r14
  7bca51:	48 89 95 48 fd ff ff 	mov    QWORD PTR [rbp-0x2b8],rdx
  7bca58:	4d 03 e1             	add    r12,r9
  7bca5b:	48 89 8d 50 fd ff ff 	mov    QWORD PTR [rbp-0x2b0],rcx
  7bca62:	49 03 c6             	add    rax,r14
  7bca65:	4c 03 b5 40 f8 ff ff 	add    r14,QWORD PTR [rbp-0x7c0]
  7bca6c:	4d 03 fd             	add    r15,r13
  7bca6f:	4c 03 ad 88 f8 ff ff 	add    r13,QWORD PTR [rbp-0x778]
  7bca76:	48 89 b5 58 fd ff ff 	mov    QWORD PTR [rbp-0x2a8],rsi
  7bca7d:	48 89 bd d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],rdi
  7bca84:	44 89 85 b8 f8 ff ff 	mov    DWORD PTR [rbp-0x748],r8d
  7bca8b:	4c 89 b5 28 fd ff ff 	mov    QWORD PTR [rbp-0x2d8],r14
  7bca92:	4c 89 ad 30 fd ff ff 	mov    QWORD PTR [rbp-0x2d0],r13
  7bca99:	4c 89 bd 38 fd ff ff 	mov    QWORD PTR [rbp-0x2c8],r15
  7bcaa0:	48 89 85 40 fd ff ff 	mov    QWORD PTR [rbp-0x2c0],rax
  7bcaa7:	4c 89 a5 60 fd ff ff 	mov    QWORD PTR [rbp-0x2a0],r12
  7bcaae:	4c 89 8d c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],r9
  7bcab5:	4c 89 9d c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r11
  7bcabc:	44 89 95 d0 f8 ff ff 	mov    DWORD PTR [rbp-0x730],r10d
  7bcac3:	4c 8b 85 b0 f8 ff ff 	mov    r8,QWORD PTR [rbp-0x750]
  7bcaca:	48 8b 8d 10 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x1f0]
  7bcad1:	48 8b b5 18 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x1e8]
  7bcad8:	48 8b bd 20 fe ff ff 	mov    rdi,QWORD PTR [rbp-0x1e0]
  7bcadf:	48 8b 55 c0          	mov    rdx,QWORD PTR [rbp-0x40]
  7bcae3:	48 8b 85 00 ff ff ff 	mov    rax,QWORD PTR [rbp-0x100]
  7bcaea:	48 3b 85 08 ff ff ff 	cmp    rax,QWORD PTR [rbp-0xf8]
  7bcaf1:	0f 8c 4b 02 00 00    	jl     7bcd42 <pre_step3d_mod_mp_pre_step3d_tile_+0x3742>
  7bcaf7:	48 83 fa 04          	cmp    rdx,0x4
  7bcafb:	0f 8c 81 cb 00 00    	jl     7c9682 <pre_step3d_mod_mp_pre_step3d_tile_+0x10082>
  7bcb01:	4c 8b 8d 30 fd ff ff 	mov    r9,QWORD PTR [rbp-0x2d0]
  7bcb08:	45 33 f6             	xor    r14d,r14d
  7bcb0b:	4c 8b ad 28 fd ff ff 	mov    r13,QWORD PTR [rbp-0x2d8]
  7bcb12:	4c 8b a5 40 fd ff ff 	mov    r12,QWORD PTR [rbp-0x2c0]
  7bcb19:	4c 8b 9d 50 fd ff ff 	mov    r11,QWORD PTR [rbp-0x2b0]
  7bcb20:	4d 8d 3c 09          	lea    r15,[r9+rcx*1]
  7bcb24:	4c 89 bd 98 fd ff ff 	mov    QWORD PTR [rbp-0x268],r15
  7bcb2b:	4c 03 ee             	add    r13,rsi
  7bcb2e:	4c 8b bd 60 fd ff ff 	mov    r15,QWORD PTR [rbp-0x2a0]
  7bcb35:	4c 03 e6             	add    r12,rsi
  7bcb38:	4c 8b 95 48 fd ff ff 	mov    r10,QWORD PTR [rbp-0x2b8]
  7bcb3f:	4c 03 de             	add    r11,rsi
  7bcb42:	4c 8b 8d 38 fd ff ff 	mov    r9,QWORD PTR [rbp-0x2c8]
  7bcb49:	48 89 bd 68 fd ff ff 	mov    QWORD PTR [rbp-0x298],rdi
  7bcb50:	4d 03 f8             	add    r15,r8
  7bcb53:	4c 89 bd 80 fd ff ff 	mov    QWORD PTR [rbp-0x280],r15
  7bcb5a:	4c 03 d6             	add    r10,rsi
  7bcb5d:	4c 8b bd 58 fd ff ff 	mov    r15,QWORD PTR [rbp-0x2a8]
  7bcb64:	4c 03 c9             	add    r9,rcx
  7bcb67:	48 8b 45 a0          	mov    rax,QWORD PTR [rbp-0x60]
  7bcb6b:	48 89 8d 10 fe ff ff 	mov    QWORD PTR [rbp-0x1f0],rcx
  7bcb72:	48 89 b5 18 fe ff ff 	mov    QWORD PTR [rbp-0x1e8],rsi
  7bcb79:	4d 03 f8             	add    r15,r8
  7bcb7c:	4c 89 bd 70 fd ff ff 	mov    QWORD PTR [rbp-0x290],r15
  7bcb83:	49 89 c7             	mov    r15,rax
  7bcb86:	48 89 bd 20 fe ff ff 	mov    QWORD PTR [rbp-0x1e0],rdi
  7bcb8d:	48 8b 95 68 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x298]
  7bcb94:	48 8b 8d 70 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x290]
  7bcb9b:	48 8b b5 80 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x280]
  7bcba2:	48 8b bd 98 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x268]
  7bcba9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  7bcbb0:	c4 01 7d 10 24 f2    	vmovupd ymm12,YMMWORD PTR [r10+r14*8]
  7bcbb6:	c4 01 1d 58 74 f3 f8 	vaddpd ymm14,ymm12,YMMWORD PTR [r11+r14*8-0x8]
  7bcbbd:	c4 01 0d 5c 3c f4    	vsubpd ymm15,ymm14,YMMWORD PTR [r12+r14*8]
  7bcbc3:	c4 01 05 5c 64 f5 f8 	vsubpd ymm12,ymm15,YMMWORD PTR [r13+r14*8-0x8]
  7bcbca:	c4 01 7d 10 3c f1    	vmovupd ymm15,YMMWORD PTR [r9+r14*8]
  7bcbd0:	c4 41 75 5e f4       	vdivpd ymm14,ymm1,ymm12
  7bcbd5:	c5 0d 59 e7          	vmulpd ymm12,ymm14,ymm7
  7bcbd9:	c4 21 05 5c 34 f7    	vsubpd ymm14,ymm15,YMMWORD PTR [rdi+r14*8]
  7bcbdf:	c4 21 7d 10 3c f1    	vmovupd ymm15,YMMWORD PTR [rcx+r14*8]
  7bcbe5:	c4 41 1d 59 e6       	vmulpd ymm12,ymm12,ymm14
  7bcbea:	c4 21 05 58 74 f6 f8 	vaddpd ymm14,ymm15,YMMWORD PTR [rsi+r14*8-0x8]
  7bcbf1:	c4 41 1d 59 fe       	vmulpd ymm15,ymm12,ymm14
  7bcbf6:	49 83 c6 04          	add    r14,0x4
  7bcbfa:	c5 7d 11 7a 08       	vmovupd YMMWORD PTR [rdx+0x8],ymm15
  7bcbff:	48 83 c2 20          	add    rdx,0x20
  7bcc03:	4d 3b f7             	cmp    r14,r15
  7bcc06:	72 a8                	jb     7bcbb0 <pre_step3d_mod_mp_pre_step3d_tile_+0x35b0>
  7bcc08:	48 8b 8d 10 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x1f0]
  7bcc0f:	48 8b b5 18 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x1e8]
  7bcc16:	48 8b bd 20 fe ff ff 	mov    rdi,QWORD PTR [rbp-0x1e0]
  7bcc1d:	48 8b 55 c0          	mov    rdx,QWORD PTR [rbp-0x40]
  7bcc21:	4c 8d 34 c5 00 00 00 	lea    r14,[rax*8+0x0]
  7bcc28:	00 
  7bcc29:	48 3b c2             	cmp    rax,rdx
  7bcc2c:	0f 83 10 01 00 00    	jae    7bcd42 <pre_step3d_mod_mp_pre_step3d_tile_+0x3742>
  7bcc32:	4c 8b bd 30 fd ff ff 	mov    r15,QWORD PTR [rbp-0x2d0]
  7bcc39:	4c 8d 2c c7          	lea    r13,[rdi+rax*8]
  7bcc3d:	4c 8b a5 28 fd ff ff 	mov    r12,QWORD PTR [rbp-0x2d8]
  7bcc44:	4c 8b 9d 40 fd ff ff 	mov    r11,QWORD PTR [rbp-0x2c0]
  7bcc4b:	4c 8b 95 50 fd ff ff 	mov    r10,QWORD PTR [rbp-0x2b0]
  7bcc52:	4c 03 f9             	add    r15,rcx
  7bcc55:	4c 89 bd 88 fd ff ff 	mov    QWORD PTR [rbp-0x278],r15
  7bcc5c:	4c 03 e6             	add    r12,rsi
  7bcc5f:	4c 8b bd 38 fd ff ff 	mov    r15,QWORD PTR [rbp-0x2c8]
  7bcc66:	4c 03 de             	add    r11,rsi
  7bcc69:	4c 8b 8d 48 fd ff ff 	mov    r9,QWORD PTR [rbp-0x2b8]
  7bcc70:	4c 03 d6             	add    r10,rsi
  7bcc73:	48 89 8d 10 fe ff ff 	mov    QWORD PTR [rbp-0x1f0],rcx
  7bcc7a:	48 89 b5 18 fe ff ff 	mov    QWORD PTR [rbp-0x1e8],rsi
  7bcc81:	4c 03 f9             	add    r15,rcx
  7bcc84:	4c 89 bd 90 fd ff ff 	mov    QWORD PTR [rbp-0x270],r15
  7bcc8b:	4c 03 ce             	add    r9,rsi
  7bcc8e:	4c 8b bd 60 fd ff ff 	mov    r15,QWORD PTR [rbp-0x2a0]
  7bcc95:	48 89 bd 20 fe ff ff 	mov    QWORD PTR [rbp-0x1e0],rdi
  7bcc9c:	48 8b bd 90 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x270]
  7bcca3:	4d 03 f8             	add    r15,r8
  7bcca6:	4c 89 bd 78 fd ff ff 	mov    QWORD PTR [rbp-0x288],r15
  7bccad:	4c 8b bd 58 fd ff ff 	mov    r15,QWORD PTR [rbp-0x2a8]
  7bccb4:	48 8b b5 78 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x288]
  7bccbb:	4d 03 f8             	add    r15,r8
  7bccbe:	4c 89 f9             	mov    rcx,r15
  7bccc1:	4c 8b bd 88 fd ff ff 	mov    r15,QWORD PTR [rbp-0x278]
  7bccc8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  7bcccf:	00 
  7bccd0:	c4 41 7b 10 24 c1    	vmovsd xmm12,QWORD PTR [r9+rax*8]
  7bccd6:	c4 41 1b 58 74 c2 f8 	vaddsd xmm14,xmm12,QWORD PTR [r10+rax*8-0x8]
  7bccdd:	c4 41 0b 5c 3c c3    	vsubsd xmm15,xmm14,QWORD PTR [r11+rax*8]
  7bcce3:	c4 41 03 5c 64 c4 f8 	vsubsd xmm12,xmm15,QWORD PTR [r12+rax*8-0x8]
  7bccea:	48 ff c0             	inc    rax
  7bcced:	c4 41 13 5e f4       	vdivsd xmm14,xmm13,xmm12
  7bccf2:	c4 41 7b 10 3c 3e    	vmovsd xmm15,QWORD PTR [r14+rdi*1]
  7bccf8:	c4 41 63 59 e6       	vmulsd xmm12,xmm3,xmm14
  7bccfd:	c4 01 03 5c 34 3e    	vsubsd xmm14,xmm15,QWORD PTR [r14+r15*1]
  7bcd03:	c4 41 7b 10 3c 0e    	vmovsd xmm15,QWORD PTR [r14+rcx*1]
  7bcd09:	c4 41 1b 59 e6       	vmulsd xmm12,xmm12,xmm14
  7bcd0e:	c4 41 03 58 74 36 f8 	vaddsd xmm14,xmm15,QWORD PTR [r14+rsi*1-0x8]
  7bcd15:	c4 41 1b 59 fe       	vmulsd xmm15,xmm12,xmm14
  7bcd1a:	49 83 c6 08          	add    r14,0x8
  7bcd1e:	c4 41 7b 11 7d 08    	vmovsd QWORD PTR [r13+0x8],xmm15
  7bcd24:	49 83 c5 08          	add    r13,0x8
  7bcd28:	48 3b c2             	cmp    rax,rdx
  7bcd2b:	72 a3                	jb     7bccd0 <pre_step3d_mod_mp_pre_step3d_tile_+0x36d0>
  7bcd2d:	48 8b 8d 10 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x1f0]
  7bcd34:	48 8b b5 18 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x1e8]
  7bcd3b:	48 8b bd 20 fe ff ff 	mov    rdi,QWORD PTR [rbp-0x1e0]
  7bcd42:	48 8b 85 40 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc0]
  7bcd49:	48 ff c0             	inc    rax
  7bcd4c:	48 03 bd 18 ff ff ff 	add    rdi,QWORD PTR [rbp-0xe8]
  7bcd53:	48 03 b5 30 ff ff ff 	add    rsi,QWORD PTR [rbp-0xd0]
  7bcd5a:	48 03 8d 20 ff ff ff 	add    rcx,QWORD PTR [rbp-0xe0]
  7bcd61:	4c 03 85 28 ff ff ff 	add    r8,QWORD PTR [rbp-0xd8]
  7bcd68:	48 89 85 40 ff ff ff 	mov    QWORD PTR [rbp-0xc0],rax
  7bcd6f:	48 3b 85 10 ff ff ff 	cmp    rax,QWORD PTR [rbp-0xf0]
  7bcd76:	0f 82 67 fd ff ff    	jb     7bcae3 <pre_step3d_mod_mp_pre_step3d_tile_+0x34e3>
  7bcd7c:	e9 39 04 00 00       	jmp    7bd1ba <pre_step3d_mod_mp_pre_step3d_tile_+0x3bba>
  7bcd81:	45 33 ed             	xor    r13d,r13d
  7bcd84:	33 c9                	xor    ecx,ecx
  7bcd86:	33 d2                	xor    edx,edx
  7bcd88:	48 8b 85 20 fc ff ff 	mov    rax,QWORD PTR [rbp-0x3e0]
  7bcd8f:	33 f6                	xor    esi,esi
  7bcd91:	48 83 bd 10 ff ff ff 	cmp    QWORD PTR [rbp-0xf0],0x0
  7bcd98:	00 
  7bcd99:	0f 8e 3e 04 00 00    	jle    7bd1dd <pre_step3d_mod_mp_pre_step3d_tile_+0x3bdd>
  7bcd9f:	4c 8b b5 a8 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x758]
  7bcda6:	4c 0f af f7          	imul   r14,rdi
  7bcdaa:	4c 8b bd 38 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x7c8]
  7bcdb1:	4c 8b a5 f0 fb ff ff 	mov    r12,QWORD PTR [rbp-0x410]
  7bcdb8:	4c 0f af e7          	imul   r12,rdi
  7bcdbc:	4c 89 ad 38 ff ff ff 	mov    QWORD PTR [rbp-0xc8],r13
  7bcdc3:	4d 03 fe             	add    r15,r14
  7bcdc6:	4c 89 bd 08 fe ff ff 	mov    QWORD PTR [rbp-0x1f8],r15
  7bcdcd:	4c 8b bd 80 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x780]
  7bcdd4:	48 89 bd d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],rdi
  7bcddb:	44 89 85 b8 f8 ff ff 	mov    DWORD PTR [rbp-0x748],r8d
  7bcde2:	4c 89 8d c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],r9
  7bcde9:	4d 03 fe             	add    r15,r14
  7bcdec:	4c 89 bd 00 fe ff ff 	mov    QWORD PTR [rbp-0x200],r15
  7bcdf3:	4c 8b bd 68 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x798]
  7bcdfa:	4c 89 9d c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r11
  7bce01:	44 89 95 d0 f8 ff ff 	mov    DWORD PTR [rbp-0x730],r10d
  7bce08:	4d 03 fe             	add    r15,r14
  7bce0b:	4c 89 bd f8 fd ff ff 	mov    QWORD PTR [rbp-0x208],r15
  7bce12:	4c 8b bd 70 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x790]
  7bce19:	4c 03 b5 98 f8 ff ff 	add    r14,QWORD PTR [rbp-0x768]
  7bce20:	4c 89 b5 a8 fd ff ff 	mov    QWORD PTR [rbp-0x258],r14
  7bce27:	4d 03 fc             	add    r15,r12
  7bce2a:	4c 89 bd f0 fd ff ff 	mov    QWORD PTR [rbp-0x210],r15
  7bce31:	4c 8b bd 28 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x7d8]
  7bce38:	4c 03 a5 30 f8 ff ff 	add    r12,QWORD PTR [rbp-0x7d0]
  7bce3f:	4c 89 a5 a0 fd ff ff 	mov    QWORD PTR [rbp-0x260],r12
  7bce46:	4d 03 f9             	add    r15,r9
  7bce49:	4c 89 bd e8 fd ff ff 	mov    QWORD PTR [rbp-0x218],r15
  7bce50:	4c 8b bd 90 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x770]
  7bce57:	4d 03 f9             	add    r15,r9
  7bce5a:	4c 89 bd e0 fd ff ff 	mov    QWORD PTR [rbp-0x220],r15
  7bce61:	48 8b bd 00 ff ff ff 	mov    rdi,QWORD PTR [rbp-0x100]
  7bce68:	48 3b bd 08 ff ff ff 	cmp    rdi,QWORD PTR [rbp-0xf8]
  7bce6f:	0f 8c 0b 03 00 00    	jl     7bd180 <pre_step3d_mod_mp_pre_step3d_tile_+0x3b80>
  7bce75:	48 83 7d c0 02       	cmp    QWORD PTR [rbp-0x40],0x2
  7bce7a:	0f 8c c0 c8 00 00    	jl     7c9740 <pre_step3d_mod_mp_pre_step3d_tile_+0x10140>
  7bce80:	48 8b bd a0 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x260]
  7bce87:	45 33 db             	xor    r11d,r11d
  7bce8a:	4c 8b bd 00 fe ff ff 	mov    r15,QWORD PTR [rbp-0x200]
  7bce91:	4c 8b 95 08 fe ff ff 	mov    r10,QWORD PTR [rbp-0x1f8]
  7bce98:	4c 8b 8d f8 fd ff ff 	mov    r9,QWORD PTR [rbp-0x208]
  7bce9f:	4c 8d 2c 17          	lea    r13,[rdi+rdx*1]
  7bcea3:	48 8b bd e8 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x218]
  7bceaa:	4c 03 f9             	add    r15,rcx
  7bcead:	4c 89 6d f0          	mov    QWORD PTR [rbp-0x10],r13
  7bceb1:	4c 03 d1             	add    r10,rcx
  7bceb4:	4c 8b 85 a8 fd ff ff 	mov    r8,QWORD PTR [rbp-0x258]
  7bcebb:	4c 03 c9             	add    r9,rcx
  7bcebe:	4c 8b a5 f0 fd ff ff 	mov    r12,QWORD PTR [rbp-0x210]
  7bcec5:	4c 8d 2c 37          	lea    r13,[rdi+rsi*1]
  7bcec9:	48 8b bd e0 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x220]
  7bced0:	4c 89 ad c0 fd ff ff 	mov    QWORD PTR [rbp-0x240],r13
  7bced7:	4c 03 c1             	add    r8,rcx
  7bceda:	4c 8b 75 e0          	mov    r14,QWORD PTR [rbp-0x20]
  7bcede:	4c 03 e2             	add    r12,rdx
  7bcee1:	48 89 85 b0 fd ff ff 	mov    QWORD PTR [rbp-0x250],rax
  7bcee8:	4c 8d 2c 37          	lea    r13,[rdi+rsi*1]
  7bceec:	4c 89 ad b8 fd ff ff 	mov    QWORD PTR [rbp-0x248],r13
  7bcef3:	45 33 ed             	xor    r13d,r13d
  7bcef6:	33 ff                	xor    edi,edi
  7bcef8:	48 89 85 30 fe ff ff 	mov    QWORD PTR [rbp-0x1d0],rax
  7bceff:	48 89 b5 38 fe ff ff 	mov    QWORD PTR [rbp-0x1c8],rsi
  7bcf06:	48 89 95 40 fe ff ff 	mov    QWORD PTR [rbp-0x1c0],rdx
  7bcf0d:	48 89 8d 48 fe ff ff 	mov    QWORD PTR [rbp-0x1b8],rcx
  7bcf14:	4c 89 b5 28 fe ff ff 	mov    QWORD PTR [rbp-0x1d8],r14
  7bcf1b:	4c 89 7d e8          	mov    QWORD PTR [rbp-0x18],r15
  7bcf1f:	48 8b b5 b0 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x250]
  7bcf26:	48 89 f8             	mov    rax,rdi
  7bcf29:	48 8b 95 b8 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x248]
  7bcf30:	48 8b 8d c0 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x240]
  7bcf37:	4c 8b 7d e8          	mov    r15,QWORD PTR [rbp-0x18]
  7bcf3b:	49 83 c3 02          	add    r11,0x2
  7bcf3f:	4c 8b 75 d0          	mov    r14,QWORD PTR [rbp-0x30]
  7bcf43:	4d 03 fd             	add    r15,r13
  7bcf46:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  7bcf4b:	c4 01 19 16 34 37    	vmovhpd xmm14,xmm12,QWORD PTR [r15+r14*1]
  7bcf51:	4f 8d 3c 28          	lea    r15,[r8+r13*1]
  7bcf55:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  7bcf5a:	c4 01 01 16 24 37    	vmovhpd xmm12,xmm15,QWORD PTR [r15+r14*1]
  7bcf60:	4f 8d 3c 2a          	lea    r15,[r10+r13*1]
  7bcf64:	c4 41 09 58 f4       	vaddpd xmm14,xmm14,xmm12
  7bcf69:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  7bcf6e:	c4 01 01 16 24 37    	vmovhpd xmm12,xmm15,QWORD PTR [r15+r14*1]
  7bcf74:	4f 8d 3c 29          	lea    r15,[r9+r13*1]
  7bcf78:	c4 41 09 5c f4       	vsubpd xmm14,xmm14,xmm12
  7bcf7d:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  7bcf82:	4f 8d 6c 75 00       	lea    r13,[r13+r14*2+0x0]
  7bcf87:	c4 01 01 16 24 37    	vmovhpd xmm12,xmm15,QWORD PTR [r15+r14*1]
  7bcf8d:	4d 8d 34 3c          	lea    r14,[r12+rdi*1]
  7bcf91:	c4 41 09 5c fc       	vsubpd xmm15,xmm14,xmm12
  7bcf96:	c4 41 79 5e f7       	vdivpd xmm14,xmm0,xmm15
  7bcf9b:	4c 8b 7d c8          	mov    r15,QWORD PTR [rbp-0x38]
  7bcf9f:	c4 41 7b 10 26       	vmovsd xmm12,QWORD PTR [r14]
  7bcfa4:	c4 41 09 59 f1       	vmulpd xmm14,xmm14,xmm9
  7bcfa9:	c4 01 19 16 3c 3e    	vmovhpd xmm15,xmm12,QWORD PTR [r14+r15*1]
  7bcfaf:	4c 8b 75 f0          	mov    r14,QWORD PTR [rbp-0x10]
  7bcfb3:	4c 03 f7             	add    r14,rdi
  7bcfb6:	c4 41 7b 10 26       	vmovsd xmm12,QWORD PTR [r14]
  7bcfbb:	4a 8d 3c 7f          	lea    rdi,[rdi+r15*2]
  7bcfbf:	c4 01 19 16 24 3e    	vmovhpd xmm12,xmm12,QWORD PTR [r14+r15*1]
  7bcfc5:	4c 8d 3c 01          	lea    r15,[rcx+rax*1]
  7bcfc9:	c4 41 01 5c fc       	vsubpd xmm15,xmm15,xmm12
  7bcfce:	4c 8b 75 d8          	mov    r14,QWORD PTR [rbp-0x28]
  7bcfd2:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  7bcfd7:	c4 41 09 59 f7       	vmulpd xmm14,xmm14,xmm15
  7bcfdc:	c4 01 19 16 24 37    	vmovhpd xmm12,xmm12,QWORD PTR [r15+r14*1]
  7bcfe2:	4c 8d 3c 02          	lea    r15,[rdx+rax*1]
  7bcfe6:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  7bcfeb:	4a 8d 04 70          	lea    rax,[rax+r14*2]
  7bcfef:	c4 01 01 16 3c 37    	vmovhpd xmm15,xmm15,QWORD PTR [r15+r14*1]
  7bcff5:	c4 41 19 58 e7       	vaddpd xmm12,xmm12,xmm15
  7bcffa:	c4 41 09 59 f4       	vmulpd xmm14,xmm14,xmm12
  7bcfff:	c5 79 11 76 08       	vmovupd XMMWORD PTR [rsi+0x8],xmm14
  7bd004:	48 83 c6 10          	add    rsi,0x10
  7bd008:	4c 3b 5d e0          	cmp    r11,QWORD PTR [rbp-0x20]
  7bd00c:	0f 82 25 ff ff ff    	jb     7bcf37 <pre_step3d_mod_mp_pre_step3d_tile_+0x3937>
  7bd012:	4c 8b b5 28 fe ff ff 	mov    r14,QWORD PTR [rbp-0x1d8]
  7bd019:	48 8b 85 30 fe ff ff 	mov    rax,QWORD PTR [rbp-0x1d0]
  7bd020:	48 8b b5 38 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x1c8]
  7bd027:	48 8b 95 40 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x1c0]
  7bd02e:	48 8b 8d 48 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x1b8]
  7bd035:	4c 8b 6d d8          	mov    r13,QWORD PTR [rbp-0x28]
  7bd039:	4c 8b 65 c8          	mov    r12,QWORD PTR [rbp-0x38]
  7bd03d:	4c 8b 5d d0          	mov    r11,QWORD PTR [rbp-0x30]
  7bd041:	4d 0f af ee          	imul   r13,r14
  7bd045:	4d 0f af e6          	imul   r12,r14
  7bd049:	4d 0f af de          	imul   r11,r14
  7bd04d:	4c 3b 75 c0          	cmp    r14,QWORD PTR [rbp-0x40]
  7bd051:	0f 83 29 01 00 00    	jae    7bd180 <pre_step3d_mod_mp_pre_step3d_tile_+0x3b80>
  7bd057:	4c 8b 8d 00 fe ff ff 	mov    r9,QWORD PTR [rbp-0x200]
  7bd05e:	48 8b bd f8 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x208]
  7bd065:	4c 8b bd a8 fd ff ff 	mov    r15,QWORD PTR [rbp-0x258]
  7bd06c:	4c 8b 95 08 fe ff ff 	mov    r10,QWORD PTR [rbp-0x1f8]
  7bd073:	4d 8d 04 09          	lea    r8,[r9+rcx*1]
  7bd077:	4c 89 85 d0 fd ff ff 	mov    QWORD PTR [rbp-0x230],r8
  7bd07e:	4c 8d 0c 0f          	lea    r9,[rdi+rcx*1]
  7bd082:	48 8b bd f0 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x210]
  7bd089:	4d 8d 04 0f          	lea    r8,[r15+rcx*1]
  7bd08d:	48 89 85 30 fe ff ff 	mov    QWORD PTR [rbp-0x1d0],rax
  7bd094:	4c 03 d1             	add    r10,rcx
  7bd097:	48 89 b5 38 fe ff ff 	mov    QWORD PTR [rbp-0x1c8],rsi
  7bd09e:	48 89 95 40 fe ff ff 	mov    QWORD PTR [rbp-0x1c0],rdx
  7bd0a5:	4c 8d 3c 17          	lea    r15,[rdi+rdx*1]
  7bd0a9:	4c 89 bd d8 fd ff ff 	mov    QWORD PTR [rbp-0x228],r15
  7bd0b0:	4c 8b bd e8 fd ff ff 	mov    r15,QWORD PTR [rbp-0x218]
  7bd0b7:	48 8b bd a0 fd ff ff 	mov    rdi,QWORD PTR [rbp-0x260]
  7bd0be:	48 89 8d 48 fe ff ff 	mov    QWORD PTR [rbp-0x1b8],rcx
  7bd0c5:	4c 03 fe             	add    r15,rsi
  7bd0c8:	4c 89 bd c8 fd ff ff 	mov    QWORD PTR [rbp-0x238],r15
  7bd0cf:	4c 8b bd e0 fd ff ff 	mov    r15,QWORD PTR [rbp-0x220]
  7bd0d6:	48 03 fa             	add    rdi,rdx
  7bd0d9:	48 8b 8d c8 fd ff ff 	mov    rcx,QWORD PTR [rbp-0x238]
  7bd0e0:	4c 03 fe             	add    r15,rsi
  7bd0e3:	4c 89 fa             	mov    rdx,r15
  7bd0e6:	4e 8d 3c f0          	lea    r15,[rax+r14*8]
  7bd0ea:	4c 89 f8             	mov    rax,r15
  7bd0ed:	48 8b b5 d8 fd ff ff 	mov    rsi,QWORD PTR [rbp-0x228]
  7bd0f4:	4c 8b bd d0 fd ff ff 	mov    r15,QWORD PTR [rbp-0x230]
  7bd0fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  7bd100:	c4 01 7b 10 24 3b    	vmovsd xmm12,QWORD PTR [r11+r15*1]
  7bd106:	49 ff c6             	inc    r14
  7bd109:	c4 01 1b 58 34 03    	vaddsd xmm14,xmm12,QWORD PTR [r11+r8*1]
  7bd10f:	c4 01 0b 5c 3c 13    	vsubsd xmm15,xmm14,QWORD PTR [r11+r10*1]
  7bd115:	c4 01 03 5c 24 0b    	vsubsd xmm12,xmm15,QWORD PTR [r11+r9*1]
  7bd11b:	c4 41 13 5e f4       	vdivsd xmm14,xmm13,xmm12
  7bd120:	c4 41 7b 10 3c 34    	vmovsd xmm15,QWORD PTR [r12+rsi*1]
  7bd126:	c4 41 63 59 e6       	vmulsd xmm12,xmm3,xmm14
  7bd12b:	c4 41 03 5c 34 3c    	vsubsd xmm14,xmm15,QWORD PTR [r12+rdi*1]
  7bd131:	c4 41 7b 10 7c 0d 00 	vmovsd xmm15,QWORD PTR [r13+rcx*1+0x0]
  7bd138:	c4 41 1b 59 e6       	vmulsd xmm12,xmm12,xmm14
  7bd13d:	c4 41 03 58 74 15 00 	vaddsd xmm14,xmm15,QWORD PTR [r13+rdx*1+0x0]
  7bd144:	c4 41 1b 59 fe       	vmulsd xmm15,xmm12,xmm14
  7bd149:	4c 03 5d d0          	add    r11,QWORD PTR [rbp-0x30]
  7bd14d:	4c 03 65 c8          	add    r12,QWORD PTR [rbp-0x38]
  7bd151:	4c 03 6d d8          	add    r13,QWORD PTR [rbp-0x28]
  7bd155:	c5 7b 11 78 08       	vmovsd QWORD PTR [rax+0x8],xmm15
  7bd15a:	48 83 c0 08          	add    rax,0x8
  7bd15e:	4c 3b 75 c0          	cmp    r14,QWORD PTR [rbp-0x40]
  7bd162:	72 9c                	jb     7bd100 <pre_step3d_mod_mp_pre_step3d_tile_+0x3b00>
  7bd164:	48 8b 85 30 fe ff ff 	mov    rax,QWORD PTR [rbp-0x1d0]
  7bd16b:	48 8b b5 38 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x1c8]
  7bd172:	48 8b 95 40 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x1c0]
  7bd179:	48 8b 8d 48 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x1b8]
  7bd180:	48 8b bd 38 ff ff ff 	mov    rdi,QWORD PTR [rbp-0xc8]
  7bd187:	48 ff c7             	inc    rdi
  7bd18a:	48 03 8d 30 ff ff ff 	add    rcx,QWORD PTR [rbp-0xd0]
  7bd191:	48 03 95 20 ff ff ff 	add    rdx,QWORD PTR [rbp-0xe0]
  7bd198:	48 03 b5 28 ff ff ff 	add    rsi,QWORD PTR [rbp-0xd8]
  7bd19f:	48 03 85 18 ff ff ff 	add    rax,QWORD PTR [rbp-0xe8]
  7bd1a6:	48 89 bd 38 ff ff ff 	mov    QWORD PTR [rbp-0xc8],rdi
  7bd1ad:	48 3b bd 10 ff ff ff 	cmp    rdi,QWORD PTR [rbp-0xf0]
  7bd1b4:	0f 82 a7 fc ff ff    	jb     7bce61 <pre_step3d_mod_mp_pre_step3d_tile_+0x3861>
  7bd1ba:	48 8b bd d8 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x728]
  7bd1c1:	44 8b 85 b8 f8 ff ff 	mov    r8d,DWORD PTR [rbp-0x748]
  7bd1c8:	4c 8b 8d c0 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x740]
  7bd1cf:	4c 8b 9d c8 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x738]
  7bd1d6:	44 8b 95 d0 f8 ff ff 	mov    r10d,DWORD PTR [rbp-0x730]
  7bd1dd:	48 83 bd 70 fe ff ff 	cmp    QWORD PTR [rbp-0x190],0x8
  7bd1e4:	08 
  7bd1e5:	0f 85 47 02 00 00    	jne    7bd432 <pre_step3d_mod_mp_pre_step3d_tile_+0x3e32>
  7bd1eb:	48 83 bd 68 fe ff ff 	cmp    QWORD PTR [rbp-0x198],0x8
  7bd1f2:	08 
  7bd1f3:	0f 85 39 02 00 00    	jne    7bd432 <pre_step3d_mod_mp_pre_step3d_tile_+0x3e32>
  7bd1f9:	48 83 bd 78 fe ff ff 	cmp    QWORD PTR [rbp-0x188],0x8
  7bd200:	08 
  7bd201:	0f 85 2b 02 00 00    	jne    7bd432 <pre_step3d_mod_mp_pre_step3d_tile_+0x3e32>
  7bd207:	48 83 bd 80 fe ff ff 	cmp    QWORD PTR [rbp-0x180],0x8
  7bd20e:	08 
  7bd20f:	0f 85 1d 02 00 00    	jne    7bd432 <pre_step3d_mod_mp_pre_step3d_tile_+0x3e32>
  7bd215:	48 8b 85 00 ff ff ff 	mov    rax,QWORD PTR [rbp-0x100]
  7bd21c:	48 3b 85 08 ff ff ff 	cmp    rax,QWORD PTR [rbp-0xf8]
  7bd223:	0f 8c ae 06 00 00    	jl     7bd8d7 <pre_step3d_mod_mp_pre_step3d_tile_+0x42d7>
  7bd229:	48 83 7d c0 04       	cmp    QWORD PTR [rbp-0x40],0x4
  7bd22e:	0f 8c 55 c4 00 00    	jl     7c9689 <pre_step3d_mod_mp_pre_step3d_tile_+0x10089>
  7bd234:	48 8b 95 d0 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x930]
  7bd23b:	45 33 f6             	xor    r14d,r14d
  7bd23e:	48 8b b5 c8 f6 ff ff 	mov    rsi,QWORD PTR [rbp-0x938]
  7bd245:	4c 8b ad b8 f6 ff ff 	mov    r13,QWORD PTR [rbp-0x948]
  7bd24c:	4c 8b bd c0 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x940]
  7bd253:	48 0f af d7          	imul   rdx,rdi
  7bd257:	48 0f af f7          	imul   rsi,rdi
  7bd25b:	4c 0f af ef          	imul   r13,rdi
  7bd25f:	4c 0f af ff          	imul   r15,rdi
  7bd263:	4c 8b a5 f8 f6 ff ff 	mov    r12,QWORD PTR [rbp-0x908]
  7bd26a:	48 8b 8d e8 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x918]
  7bd271:	48 8b 45 a0          	mov    rax,QWORD PTR [rbp-0x60]
  7bd275:	4c 89 8d c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],r9
  7bd27c:	4c 03 e6             	add    r12,rsi
  7bd27f:	4c 89 9d c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r11
  7bd286:	48 03 ca             	add    rcx,rdx
  7bd289:	44 89 95 d0 f8 ff ff 	mov    DWORD PTR [rbp-0x730],r10d
  7bd290:	4c 03 ad 00 f7 ff ff 	add    r13,QWORD PTR [rbp-0x900]
  7bd297:	48 03 b5 f0 f6 ff ff 	add    rsi,QWORD PTR [rbp-0x910]
  7bd29e:	48 03 95 e0 f6 ff ff 	add    rdx,QWORD PTR [rbp-0x920]
  7bd2a5:	4c 03 bd d8 f6 ff ff 	add    r15,QWORD PTR [rbp-0x928]
  7bd2ac:	4c 8b 8d 50 fe ff ff 	mov    r9,QWORD PTR [rbp-0x1b0]
  7bd2b3:	4c 8b 95 60 fe ff ff 	mov    r10,QWORD PTR [rbp-0x1a0]
  7bd2ba:	4c 8b 9d 48 ff ff ff 	mov    r11,QWORD PTR [rbp-0xb8]
  7bd2c1:	44 89 85 b8 f8 ff ff 	mov    DWORD PTR [rbp-0x748],r8d
  7bd2c8:	49 89 c0             	mov    r8,rax
  7bd2cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  7bd2d0:	c4 01 4d 59 24 f7    	vmulpd ymm12,ymm6,YMMWORD PTR [r15+r14*8]
  7bd2d6:	c4 21 7d 10 34 f2    	vmovupd ymm14,YMMWORD PTR [rdx+r14*8]
  7bd2dc:	c4 01 7d 11 24 f2    	vmovupd YMMWORD PTR [r10+r14*8],ymm12
  7bd2e2:	c4 21 7d 10 24 f6    	vmovupd ymm12,YMMWORD PTR [rsi+r14*8]
  7bd2e8:	c4 21 0d 58 7c f1 f8 	vaddpd ymm15,ymm14,YMMWORD PTR [rcx+r14*8-0x8]
  7bd2ef:	c4 41 55 59 f7       	vmulpd ymm14,ymm5,ymm15
  7bd2f4:	c4 01 1d 58 7c f4 f8 	vaddpd ymm15,ymm12,YMMWORD PTR [r12+r14*8-0x8]
  7bd2fb:	c4 41 0d 59 e7       	vmulpd ymm12,ymm14,ymm15
  7bd300:	c4 01 4d 59 74 f5 00 	vmulpd ymm14,ymm6,YMMWORD PTR [r13+r14*8+0x0]
  7bd307:	c4 01 7d 11 24 f3    	vmovupd YMMWORD PTR [r11+r14*8],ymm12
  7bd30d:	c4 01 7d 11 34 f1    	vmovupd YMMWORD PTR [r9+r14*8],ymm14
  7bd313:	49 83 c6 04          	add    r14,0x4
  7bd317:	4d 3b f0             	cmp    r14,r8
  7bd31a:	72 b4                	jb     7bd2d0 <pre_step3d_mod_mp_pre_step3d_tile_+0x3cd0>
  7bd31c:	44 8b 85 b8 f8 ff ff 	mov    r8d,DWORD PTR [rbp-0x748]
  7bd323:	4c 8b 8d c0 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x740]
  7bd32a:	4c 8b 9d c8 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x738]
  7bd331:	44 8b 95 d0 f8 ff ff 	mov    r10d,DWORD PTR [rbp-0x730]
  7bd338:	48 3b 45 c0          	cmp    rax,QWORD PTR [rbp-0x40]
  7bd33c:	0f 83 95 05 00 00    	jae    7bd8d7 <pre_step3d_mod_mp_pre_step3d_tile_+0x42d7>
  7bd342:	4c 8b ad d0 f6 ff ff 	mov    r13,QWORD PTR [rbp-0x930]
  7bd349:	48 8b 8d c8 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x938]
  7bd350:	4c 8b a5 b8 f6 ff ff 	mov    r12,QWORD PTR [rbp-0x948]
  7bd357:	4c 8b b5 c0 f6 ff ff 	mov    r14,QWORD PTR [rbp-0x940]
  7bd35e:	4c 0f af ef          	imul   r13,rdi
  7bd362:	48 0f af cf          	imul   rcx,rdi
  7bd366:	4c 0f af e7          	imul   r12,rdi
  7bd36a:	4c 0f af f7          	imul   r14,rdi
  7bd36e:	48 8b b5 f8 f6 ff ff 	mov    rsi,QWORD PTR [rbp-0x908]
  7bd375:	48 8b 95 e8 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x918]
  7bd37c:	4c 89 8d c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],r9
  7bd383:	4c 89 9d c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r11
  7bd38a:	48 03 f1             	add    rsi,rcx
  7bd38d:	44 89 95 d0 f8 ff ff 	mov    DWORD PTR [rbp-0x730],r10d
  7bd394:	49 03 d5             	add    rdx,r13
  7bd397:	4c 03 a5 00 f7 ff ff 	add    r12,QWORD PTR [rbp-0x900]
  7bd39e:	48 03 8d f0 f6 ff ff 	add    rcx,QWORD PTR [rbp-0x910]
  7bd3a5:	4c 03 ad e0 f6 ff ff 	add    r13,QWORD PTR [rbp-0x920]
  7bd3ac:	4c 03 b5 d8 f6 ff ff 	add    r14,QWORD PTR [rbp-0x928]
  7bd3b3:	4c 8b 8d 50 fe ff ff 	mov    r9,QWORD PTR [rbp-0x1b0]
  7bd3ba:	4c 8b 95 60 fe ff ff 	mov    r10,QWORD PTR [rbp-0x1a0]
  7bd3c1:	4c 8b 9d 48 ff ff ff 	mov    r11,QWORD PTR [rbp-0xb8]
  7bd3c8:	4c 8b 7d c0          	mov    r15,QWORD PTR [rbp-0x40]
  7bd3cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  7bd3d0:	c4 41 7b 10 74 c5 00 	vmovsd xmm14,QWORD PTR [r13+rax*8+0x0]
  7bd3d7:	c4 41 6b 59 24 c6    	vmulsd xmm12,xmm2,QWORD PTR [r14+rax*8]
  7bd3dd:	c5 0b 58 7c c2 f8    	vaddsd xmm15,xmm14,QWORD PTR [rdx+rax*8-0x8]
  7bd3e3:	c4 41 7b 11 24 c2    	vmovsd QWORD PTR [r10+rax*8],xmm12
  7bd3e9:	c5 7b 10 24 c1       	vmovsd xmm12,QWORD PTR [rcx+rax*8]
  7bd3ee:	c4 41 5b 59 f7       	vmulsd xmm14,xmm4,xmm15
  7bd3f3:	c5 1b 58 7c c6 f8    	vaddsd xmm15,xmm12,QWORD PTR [rsi+rax*8-0x8]
  7bd3f9:	c4 41 0b 59 e7       	vmulsd xmm12,xmm14,xmm15
  7bd3fe:	c4 41 6b 59 34 c4    	vmulsd xmm14,xmm2,QWORD PTR [r12+rax*8]
  7bd404:	c4 41 7b 11 24 c3    	vmovsd QWORD PTR [r11+rax*8],xmm12
  7bd40a:	c4 41 7b 11 34 c1    	vmovsd QWORD PTR [r9+rax*8],xmm14
  7bd410:	48 ff c0             	inc    rax
  7bd413:	49 3b c7             	cmp    rax,r15
  7bd416:	72 b8                	jb     7bd3d0 <pre_step3d_mod_mp_pre_step3d_tile_+0x3dd0>
  7bd418:	4c 8b 8d c0 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x740]
  7bd41f:	4c 8b 9d c8 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x738]
  7bd426:	44 8b 95 d0 f8 ff ff 	mov    r10d,DWORD PTR [rbp-0x730]
  7bd42d:	e9 a5 04 00 00       	jmp    7bd8d7 <pre_step3d_mod_mp_pre_step3d_tile_+0x42d7>
  7bd432:	48 8b 85 00 ff ff ff 	mov    rax,QWORD PTR [rbp-0x100]
  7bd439:	48 3b 85 08 ff ff ff 	cmp    rax,QWORD PTR [rbp-0xf8]
  7bd440:	0f 8c 91 04 00 00    	jl     7bd8d7 <pre_step3d_mod_mp_pre_step3d_tile_+0x42d7>
  7bd446:	48 83 7d c0 04       	cmp    QWORD PTR [rbp-0x40],0x4
  7bd44b:	0f 8c df c2 00 00    	jl     7c9730 <pre_step3d_mod_mp_pre_step3d_tile_+0x10130>
  7bd451:	48 8b 55 a0          	mov    rdx,QWORD PTR [rbp-0x60]
  7bd455:	45 33 e4             	xor    r12d,r12d
  7bd458:	48 89 95 e8 f8 ff ff 	mov    QWORD PTR [rbp-0x718],rdx
  7bd45f:	48 8b 95 c0 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x940]
  7bd466:	48 0f af d7          	imul   rdx,rdi
  7bd46a:	4c 8b b5 d0 f6 ff ff 	mov    r14,QWORD PTR [rbp-0x930]
  7bd471:	4c 0f af f7          	imul   r14,rdi
  7bd475:	4c 8b ad c8 f6 ff ff 	mov    r13,QWORD PTR [rbp-0x938]
  7bd47c:	4c 0f af ef          	imul   r13,rdi
  7bd480:	48 8b 85 b0 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x950]
  7bd487:	48 8b b5 20 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x8e0]
  7bd48e:	4c 8b bd b8 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x948]
  7bd495:	4c 0f af ff          	imul   r15,rdi
  7bd499:	48 89 bd d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],rdi
  7bd4a0:	48 8d 0c 10          	lea    rcx,[rax+rdx*1]
  7bd4a4:	48 89 8d b8 fe ff ff 	mov    QWORD PTR [rbp-0x148],rcx
  7bd4ab:	4a 8d 04 36          	lea    rax,[rsi+r14*1]
  7bd4af:	48 8b 8d 40 f7 ff ff 	mov    rcx,QWORD PTR [rbp-0x8c0]
  7bd4b6:	48 89 85 c0 fe ff ff 	mov    QWORD PTR [rbp-0x140],rax
  7bd4bd:	48 8b 85 38 f7 ff ff 	mov    rax,QWORD PTR [rbp-0x8c8]
  7bd4c4:	44 89 85 b8 f8 ff ff 	mov    DWORD PTR [rbp-0x748],r8d
  7bd4cb:	4a 8d 34 31          	lea    rsi,[rcx+r14*1]
  7bd4cf:	48 89 b5 d0 fe ff ff 	mov    QWORD PTR [rbp-0x130],rsi
  7bd4d6:	48 8b b5 18 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x8e8]
  7bd4dd:	4a 8d 0c 30          	lea    rcx,[rax+r14*1]
  7bd4e1:	48 89 8d d8 fe ff ff 	mov    QWORD PTR [rbp-0x128],rcx
  7bd4e8:	48 8b 8d 30 f7 ff ff 	mov    rcx,QWORD PTR [rbp-0x8d0]
  7bd4ef:	4c 03 b5 10 f7 ff ff 	add    r14,QWORD PTR [rbp-0x8f0]
  7bd4f6:	4a 8d 04 2e          	lea    rax,[rsi+r13*1]
  7bd4fa:	48 89 85 c8 fe ff ff 	mov    QWORD PTR [rbp-0x138],rax
  7bd501:	48 8b 85 28 f7 ff ff 	mov    rax,QWORD PTR [rbp-0x8d8]
  7bd508:	4a 8d 34 29          	lea    rsi,[rcx+r13*1]
  7bd50c:	48 89 b5 b0 fe ff ff 	mov    QWORD PTR [rbp-0x150],rsi
  7bd513:	48 8b b5 a8 f6 ff ff 	mov    rsi,QWORD PTR [rbp-0x958]
  7bd51a:	4c 89 b5 98 fe ff ff 	mov    QWORD PTR [rbp-0x168],r14
  7bd521:	4a 8d 0c 28          	lea    rcx,[rax+r13*1]
  7bd525:	48 89 8d a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rcx
  7bd52c:	33 c9                	xor    ecx,ecx
  7bd52e:	4c 03 ad 08 f7 ff ff 	add    r13,QWORD PTR [rbp-0x8f8]
  7bd535:	4a 8d 04 3e          	lea    rax,[rsi+r15*1]
  7bd539:	33 f6                	xor    esi,esi
  7bd53b:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  7bd542:	33 c0                	xor    eax,eax
  7bd544:	4c 03 bd 48 f7 ff ff 	add    r15,QWORD PTR [rbp-0x8b8]
  7bd54b:	4c 89 ad 88 fe ff ff 	mov    QWORD PTR [rbp-0x178],r13
  7bd552:	4c 89 8d c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],r9
  7bd559:	4c 89 9d c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r11
  7bd560:	44 89 95 d0 f8 ff ff 	mov    DWORD PTR [rbp-0x730],r10d
  7bd567:	48 03 95 50 f7 ff ff 	add    rdx,QWORD PTR [rbp-0x8b0]
  7bd56e:	49 89 c6             	mov    r14,rax
  7bd571:	48 8b bd 60 fe ff ff 	mov    rdi,QWORD PTR [rbp-0x1a0]
  7bd578:	4c 8b 85 48 ff ff ff 	mov    r8,QWORD PTR [rbp-0xb8]
  7bd57f:	4c 8b 8d 68 fe ff ff 	mov    r9,QWORD PTR [rbp-0x198]
  7bd586:	4c 8b 95 70 fe ff ff 	mov    r10,QWORD PTR [rbp-0x190]
  7bd58d:	4c 8b 9d 80 fe ff ff 	mov    r11,QWORD PTR [rbp-0x180]
  7bd594:	4c 8b ad 78 fe ff ff 	mov    r13,QWORD PTR [rbp-0x188]
  7bd59b:	4c 89 bd 90 fe ff ff 	mov    QWORD PTR [rbp-0x170],r15
  7bd5a2:	4c 8b bd b8 fe ff ff 	mov    r15,QWORD PTR [rbp-0x148]
  7bd5a9:	4c 03 f9             	add    r15,rcx
  7bd5ac:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  7bd5b1:	c4 01 19 16 3c 17    	vmovhpd xmm15,xmm12,QWORD PTR [r15+r10*1]
  7bd5b7:	c4 41 29 59 f7       	vmulpd xmm14,xmm10,xmm15
  7bd5bc:	4c 8b bd d0 fe ff ff 	mov    r15,QWORD PTR [rbp-0x130]
  7bd5c3:	c4 21 79 11 34 e7    	vmovupd XMMWORD PTR [rdi+r12*8],xmm14
  7bd5c9:	4c 03 fe             	add    r15,rsi
  7bd5cc:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  7bd5d1:	c4 01 19 16 34 2f    	vmovhpd xmm14,xmm12,QWORD PTR [r15+r13*1]
  7bd5d7:	4c 8b bd d8 fe ff ff 	mov    r15,QWORD PTR [rbp-0x128]
  7bd5de:	4c 03 fe             	add    r15,rsi
  7bd5e1:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  7bd5e6:	c4 01 01 16 24 2f    	vmovhpd xmm12,xmm15,QWORD PTR [r15+r13*1]
  7bd5ec:	c4 41 09 58 fc       	vaddpd xmm15,xmm14,xmm12
  7bd5f1:	4c 8b bd b0 fe ff ff 	mov    r15,QWORD PTR [rbp-0x150]
  7bd5f8:	c4 41 21 59 f7       	vmulpd xmm14,xmm11,xmm15
  7bd5fd:	4c 03 f8             	add    r15,rax
  7bd600:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  7bd605:	c4 01 19 16 3c 1f    	vmovhpd xmm15,xmm12,QWORD PTR [r15+r11*1]
  7bd60b:	4c 8b bd a8 fe ff ff 	mov    r15,QWORD PTR [rbp-0x158]
  7bd612:	4c 03 f8             	add    r15,rax
  7bd615:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  7bd61a:	c4 01 19 16 24 1f    	vmovhpd xmm12,xmm12,QWORD PTR [r15+r11*1]
  7bd620:	c4 41 01 58 fc       	vaddpd xmm15,xmm15,xmm12
  7bd625:	c4 41 09 59 f7       	vmulpd xmm14,xmm14,xmm15
  7bd62a:	4c 8b bd a0 fe ff ff 	mov    r15,QWORD PTR [rbp-0x160]
  7bd631:	c4 01 79 11 34 e0    	vmovupd XMMWORD PTR [r8+r12*8],xmm14
  7bd637:	4d 03 fe             	add    r15,r14
  7bd63a:	c4 41 7b 10 37       	vmovsd xmm14,QWORD PTR [r15]
  7bd63f:	c4 01 09 16 24 0f    	vmovhpd xmm12,xmm14,QWORD PTR [r15+r9*1]
  7bd645:	c4 41 29 59 fc       	vmulpd xmm15,xmm10,xmm12
  7bd64a:	4c 8b bd 50 fe ff ff 	mov    r15,QWORD PTR [rbp-0x1b0]
  7bd651:	c4 01 79 11 3c e7    	vmovupd XMMWORD PTR [r15+r12*8],xmm15
  7bd657:	4c 8d 3c 0a          	lea    r15,[rdx+rcx*1]
  7bd65b:	c4 41 7b 10 37       	vmovsd xmm14,QWORD PTR [r15]
  7bd660:	4a 8d 0c 91          	lea    rcx,[rcx+r10*4]
  7bd664:	c4 01 09 16 24 17    	vmovhpd xmm12,xmm14,QWORD PTR [r15+r10*1]
  7bd66a:	c4 41 29 59 fc       	vmulpd xmm15,xmm10,xmm12
  7bd66f:	4c 8b bd 98 fe ff ff 	mov    r15,QWORD PTR [rbp-0x168]
  7bd676:	c4 21 79 11 7c e7 10 	vmovupd XMMWORD PTR [rdi+r12*8+0x10],xmm15
  7bd67d:	4c 03 fe             	add    r15,rsi
  7bd680:	c4 41 7b 10 37       	vmovsd xmm14,QWORD PTR [r15]
  7bd685:	c4 01 09 16 3c 2f    	vmovhpd xmm15,xmm14,QWORD PTR [r15+r13*1]
  7bd68b:	4c 8b bd c0 fe ff ff 	mov    r15,QWORD PTR [rbp-0x140]
  7bd692:	4c 03 fe             	add    r15,rsi
  7bd695:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  7bd69a:	4a 8d 34 ae          	lea    rsi,[rsi+r13*4]
  7bd69e:	c4 01 19 16 34 2f    	vmovhpd xmm14,xmm12,QWORD PTR [r15+r13*1]
  7bd6a4:	c4 41 01 58 e6       	vaddpd xmm12,xmm15,xmm14
  7bd6a9:	4c 8b bd 88 fe ff ff 	mov    r15,QWORD PTR [rbp-0x178]
  7bd6b0:	c4 41 21 59 f4       	vmulpd xmm14,xmm11,xmm12
  7bd6b5:	4c 03 f8             	add    r15,rax
  7bd6b8:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  7bd6bd:	c4 01 01 16 24 1f    	vmovhpd xmm12,xmm15,QWORD PTR [r15+r11*1]
  7bd6c3:	4c 8b bd c8 fe ff ff 	mov    r15,QWORD PTR [rbp-0x138]
  7bd6ca:	4c 03 f8             	add    r15,rax
  7bd6cd:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  7bd6d2:	4a 8d 04 98          	lea    rax,[rax+r11*4]
  7bd6d6:	c4 01 01 16 3c 1f    	vmovhpd xmm15,xmm15,QWORD PTR [r15+r11*1]
  7bd6dc:	c4 41 19 58 e7       	vaddpd xmm12,xmm12,xmm15
  7bd6e1:	c4 41 09 59 f4       	vmulpd xmm14,xmm14,xmm12
  7bd6e6:	90                   	nop
  7bd6e7:	4c 8b bd 90 fe ff ff 	mov    r15,QWORD PTR [rbp-0x170]
  7bd6ee:	c4 01 79 11 74 e0 10 	vmovupd XMMWORD PTR [r8+r12*8+0x10],xmm14
  7bd6f5:	4d 03 fe             	add    r15,r14
  7bd6f8:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  7bd6fd:	4f 8d 34 8e          	lea    r14,[r14+r9*4]
  7bd701:	c4 01 19 16 34 0f    	vmovhpd xmm14,xmm12,QWORD PTR [r15+r9*1]
  7bd707:	c4 41 29 59 fe       	vmulpd xmm15,xmm10,xmm14
  7bd70c:	4c 8b bd 58 fe ff ff 	mov    r15,QWORD PTR [rbp-0x1a8]
  7bd713:	c4 01 79 11 7c e7 10 	vmovupd XMMWORD PTR [r15+r12*8+0x10],xmm15
  7bd71a:	49 83 c4 04          	add    r12,0x4
  7bd71e:	4c 3b 65 a0          	cmp    r12,QWORD PTR [rbp-0x60]
  7bd722:	0f 82 7a fe ff ff    	jb     7bd5a2 <pre_step3d_mod_mp_pre_step3d_tile_+0x3fa2>
  7bd728:	48 8b bd d8 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x728]
  7bd72f:	44 8b 85 b8 f8 ff ff 	mov    r8d,DWORD PTR [rbp-0x748]
  7bd736:	4c 8b 8d c0 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x740]
  7bd73d:	4c 8b 9d c8 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x738]
  7bd744:	44 8b 95 d0 f8 ff ff 	mov    r10d,DWORD PTR [rbp-0x730]
  7bd74b:	48 8b 85 e8 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x718]
  7bd752:	4c 8b ad 80 fe ff ff 	mov    r13,QWORD PTR [rbp-0x180]
  7bd759:	4c 8b bd 78 fe ff ff 	mov    r15,QWORD PTR [rbp-0x188]
  7bd760:	4c 8b a5 68 fe ff ff 	mov    r12,QWORD PTR [rbp-0x198]
  7bd767:	48 8b b5 70 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x190]
  7bd76e:	4c 0f af e8          	imul   r13,rax
  7bd772:	4c 0f af f8          	imul   r15,rax
  7bd776:	4c 0f af e0          	imul   r12,rax
  7bd77a:	48 0f af f0          	imul   rsi,rax
  7bd77e:	48 3b 45 c0          	cmp    rax,QWORD PTR [rbp-0x40]
  7bd782:	0f 83 4f 01 00 00    	jae    7bd8d7 <pre_step3d_mod_mp_pre_step3d_tile_+0x42d7>
  7bd788:	48 8b 95 d0 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x930]
  7bd78f:	48 0f af d7          	imul   rdx,rdi
  7bd793:	4c 8b b5 c8 f6 ff ff 	mov    r14,QWORD PTR [rbp-0x938]
  7bd79a:	4c 0f af f7          	imul   r14,rdi
  7bd79e:	48 8b 85 40 f7 ff ff 	mov    rax,QWORD PTR [rbp-0x8c0]
  7bd7a5:	48 8b 8d c0 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x940]
  7bd7ac:	48 0f af cf          	imul   rcx,rdi
  7bd7b0:	48 89 bd d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],rdi
  7bd7b7:	48 03 c2             	add    rax,rdx
  7bd7ba:	48 89 85 58 f7 ff ff 	mov    QWORD PTR [rbp-0x8a8],rax
  7bd7c1:	48 8b 85 30 f7 ff ff 	mov    rax,QWORD PTR [rbp-0x8d0]
  7bd7c8:	44 89 85 b8 f8 ff ff 	mov    DWORD PTR [rbp-0x748],r8d
  7bd7cf:	4c 89 8d c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],r9
  7bd7d6:	44 89 95 d0 f8 ff ff 	mov    DWORD PTR [rbp-0x730],r10d
  7bd7dd:	49 03 c6             	add    rax,r14
  7bd7e0:	48 89 85 60 f7 ff ff 	mov    QWORD PTR [rbp-0x8a0],rax
  7bd7e7:	48 8b 85 b8 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x948]
  7bd7ee:	48 0f af c7          	imul   rax,rdi
  7bd7f2:	48 03 8d b0 f6 ff ff 	add    rcx,QWORD PTR [rbp-0x950]
  7bd7f9:	48 03 95 38 f7 ff ff 	add    rdx,QWORD PTR [rbp-0x8c8]
  7bd800:	4c 03 b5 28 f7 ff ff 	add    r14,QWORD PTR [rbp-0x8d8]
  7bd807:	48 03 85 a8 f6 ff ff 	add    rax,QWORD PTR [rbp-0x958]
  7bd80e:	48 8b bd 60 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x8a0]
  7bd815:	4c 8b 85 58 f7 ff ff 	mov    r8,QWORD PTR [rbp-0x8a8]
  7bd81c:	4c 8b 8d e8 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x718]
  7bd823:	4c 8b 95 50 fe ff ff 	mov    r10,QWORD PTR [rbp-0x1b0]
  7bd82a:	4c 89 9d c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r11
  7bd831:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  7bd838:	00 
  7bd839:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  7bd840:	c4 01 7b 10 34 07    	vmovsd xmm14,QWORD PTR [r15+r8*1]
  7bd846:	c5 6b 59 24 0e       	vmulsd xmm12,xmm2,QWORD PTR [rsi+rcx*1]
  7bd84b:	c4 41 0b 58 3c 17    	vaddsd xmm15,xmm14,QWORD PTR [r15+rdx*1]
  7bd851:	4c 8b 9d 60 fe ff ff 	mov    r11,QWORD PTR [rbp-0x1a0]
  7bd858:	c4 41 5b 59 f7       	vmulsd xmm14,xmm4,xmm15
  7bd85d:	c4 01 7b 11 24 cb    	vmovsd QWORD PTR [r11+r9*8],xmm12
  7bd863:	c4 41 7b 10 64 3d 00 	vmovsd xmm12,QWORD PTR [r13+rdi*1+0x0]
  7bd86a:	4c 8b 9d 48 ff ff ff 	mov    r11,QWORD PTR [rbp-0xb8]
  7bd871:	48 03 b5 70 fe ff ff 	add    rsi,QWORD PTR [rbp-0x190]
  7bd878:	4c 03 bd 78 fe ff ff 	add    r15,QWORD PTR [rbp-0x188]
  7bd87f:	c4 01 1b 58 7c 35 00 	vaddsd xmm15,xmm12,QWORD PTR [r13+r14*1+0x0]
  7bd886:	c4 41 0b 59 e7       	vmulsd xmm12,xmm14,xmm15
  7bd88b:	c4 41 6b 59 34 04    	vmulsd xmm14,xmm2,QWORD PTR [r12+rax*1]
  7bd891:	c4 01 7b 11 24 cb    	vmovsd QWORD PTR [r11+r9*8],xmm12
  7bd897:	c4 01 7b 11 34 ca    	vmovsd QWORD PTR [r10+r9*8],xmm14
  7bd89d:	49 ff c1             	inc    r9
  7bd8a0:	4c 03 ad 80 fe ff ff 	add    r13,QWORD PTR [rbp-0x180]
  7bd8a7:	4c 03 a5 68 fe ff ff 	add    r12,QWORD PTR [rbp-0x198]
  7bd8ae:	4c 3b 4d c0          	cmp    r9,QWORD PTR [rbp-0x40]
  7bd8b2:	72 8c                	jb     7bd840 <pre_step3d_mod_mp_pre_step3d_tile_+0x4240>
  7bd8b4:	48 8b bd d8 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x728]
  7bd8bb:	44 8b 85 b8 f8 ff ff 	mov    r8d,DWORD PTR [rbp-0x748]
  7bd8c2:	4c 8b 8d c0 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x740]
  7bd8c9:	4c 8b 9d c8 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x738]
  7bd8d0:	44 8b 95 d0 f8 ff ff 	mov    r10d,DWORD PTR [rbp-0x730]
  7bd8d7:	8b 85 e0 fb ff ff    	mov    eax,DWORD PTR [rbp-0x420]
  7bd8dd:	3b 85 d8 fb ff ff    	cmp    eax,DWORD PTR [rbp-0x428]
  7bd8e3:	0f 85 3e 06 00 00    	jne    7bdf27 <pre_step3d_mod_mp_pre_step3d_tile_+0x4927>
  7bd8e9:	48 83 7d c8 08       	cmp    QWORD PTR [rbp-0x38],0x8
  7bd8ee:	0f 85 0f 02 00 00    	jne    7bdb03 <pre_step3d_mod_mp_pre_step3d_tile_+0x4503>
  7bd8f4:	48 83 bd 58 ff ff ff 	cmp    QWORD PTR [rbp-0xa8],0x8
  7bd8fb:	08 
  7bd8fc:	0f 85 01 02 00 00    	jne    7bdb03 <pre_step3d_mod_mp_pre_step3d_tile_+0x4503>
  7bd902:	45 33 e4             	xor    r12d,r12d
  7bd905:	33 f6                	xor    esi,esi
  7bd907:	33 c9                	xor    ecx,ecx
  7bd909:	45 33 ed             	xor    r13d,r13d
  7bd90c:	48 83 bd 08 fd ff ff 	cmp    QWORD PTR [rbp-0x2f8],0x0
  7bd913:	00 
  7bd914:	0f 8e d7 14 00 00    	jle    7bedf1 <pre_step3d_mod_mp_pre_step3d_tile_+0x57f1>
  7bd91a:	48 8b 95 f0 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x410]
  7bd921:	4c 8b b5 58 f6 ff ff 	mov    r14,QWORD PTR [rbp-0x9a8]
  7bd928:	48 0f af d7          	imul   rdx,rdi
  7bd92c:	4c 0f af f7          	imul   r14,rdi
  7bd930:	c5 7d 10 25 c8 ca 08 	vmovupd ymm12,YMMWORD PTR [rip+0x8cac8]        # 84a400 <var$630.126.450+0x460>
  7bd937:	00 
  7bd938:	4c 8b bd 48 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x9b8]
  7bd93f:	48 8b 85 60 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x9a0]
  7bd946:	48 89 bd d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],rdi
  7bd94d:	44 89 85 b8 f8 ff ff 	mov    DWORD PTR [rbp-0x748],r8d
  7bd954:	4c 03 fa             	add    r15,rdx
  7bd957:	48 03 95 88 f8 ff ff 	add    rdx,QWORD PTR [rbp-0x778]
  7bd95e:	49 03 c6             	add    rax,r14
  7bd961:	4c 03 b5 90 f6 ff ff 	add    r14,QWORD PTR [rbp-0x970]
  7bd968:	48 89 95 30 fc ff ff 	mov    QWORD PTR [rbp-0x3d0],rdx
  7bd96f:	4c 89 b5 28 fc ff ff 	mov    QWORD PTR [rbp-0x3d8],r14
  7bd976:	4c 89 bd 38 fc ff ff 	mov    QWORD PTR [rbp-0x3c8],r15
  7bd97d:	48 89 85 40 fc ff ff 	mov    QWORD PTR [rbp-0x3c0],rax
  7bd984:	4c 89 8d c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],r9
  7bd98b:	4c 89 9d c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r11
  7bd992:	44 89 95 d0 f8 ff ff 	mov    DWORD PTR [rbp-0x730],r10d
  7bd999:	48 8b 55 c0          	mov    rdx,QWORD PTR [rbp-0x40]
  7bd99d:	48 8b 85 00 ff ff ff 	mov    rax,QWORD PTR [rbp-0x100]
  7bd9a4:	48 3b 85 08 ff ff ff 	cmp    rax,QWORD PTR [rbp-0xf8]
  7bd9ab:	0f 8c 05 01 00 00    	jl     7bdab6 <pre_step3d_mod_mp_pre_step3d_tile_+0x44b6>
  7bd9b1:	48 83 fa 04          	cmp    rdx,0x4
  7bd9b5:	0f 8c d5 bc 00 00    	jl     7c9690 <pre_step3d_mod_mp_pre_step3d_tile_+0x10090>
  7bd9bb:	4c 8b 9d 60 fe ff ff 	mov    r11,QWORD PTR [rbp-0x1a0]
  7bd9c2:	45 33 f6             	xor    r14d,r14d
  7bd9c5:	4c 8b 95 20 fc ff ff 	mov    r10,QWORD PTR [rbp-0x3e0]
  7bd9cc:	4c 8b 8d 38 fc ff ff 	mov    r9,QWORD PTR [rbp-0x3c8]
  7bd9d3:	4c 8b 85 30 fc ff ff 	mov    r8,QWORD PTR [rbp-0x3d0]
  7bd9da:	4c 03 de             	add    r11,rsi
  7bd9dd:	48 8b bd 28 fc ff ff 	mov    rdi,QWORD PTR [rbp-0x3d8]
  7bd9e4:	4c 03 d6             	add    r10,rsi
  7bd9e7:	4c 8b bd 40 fc ff ff 	mov    r15,QWORD PTR [rbp-0x3c0]
  7bd9ee:	4c 03 c9             	add    r9,rcx
  7bd9f1:	48 8b 45 a0          	mov    rax,QWORD PTR [rbp-0x60]
  7bd9f5:	4c 03 c1             	add    r8,rcx
  7bd9f8:	48 89 c2             	mov    rdx,rax
  7bd9fb:	49 03 fd             	add    rdi,r13
  7bd9fe:	4d 03 fd             	add    r15,r13
  7bda01:	c4 01 7d 10 34 f7    	vmovupd ymm14,YMMWORD PTR [r15+r14*8]
  7bda07:	c4 01 1d 59 3c f0    	vmulpd ymm15,ymm12,YMMWORD PTR [r8+r14*8]
  7bda0d:	c4 21 0d 58 74 f7 f8 	vaddpd ymm14,ymm14,YMMWORD PTR [rdi+r14*8-0x8]
  7bda14:	c4 41 05 59 f6       	vmulpd ymm14,ymm15,ymm14
  7bda19:	c4 01 7d 10 7c f2 08 	vmovupd ymm15,YMMWORD PTR [r10+r14*8+0x8]
  7bda20:	c4 01 05 5c 3c f3    	vsubpd ymm15,ymm15,YMMWORD PTR [r11+r14*8]
  7bda26:	c4 41 0d 58 f7       	vaddpd ymm14,ymm14,ymm15
  7bda2b:	c4 01 7d 11 34 f1    	vmovupd YMMWORD PTR [r9+r14*8],ymm14
  7bda31:	49 83 c6 04          	add    r14,0x4
  7bda35:	4c 3b f2             	cmp    r14,rdx
  7bda38:	72 c7                	jb     7bda01 <pre_step3d_mod_mp_pre_step3d_tile_+0x4401>
  7bda3a:	48 8b 55 c0          	mov    rdx,QWORD PTR [rbp-0x40]
  7bda3e:	48 3b c2             	cmp    rax,rdx
  7bda41:	73 73                	jae    7bdab6 <pre_step3d_mod_mp_pre_step3d_tile_+0x44b6>
  7bda43:	4c 8b 95 60 fe ff ff 	mov    r10,QWORD PTR [rbp-0x1a0]
  7bda4a:	4c 8b 8d 20 fc ff ff 	mov    r9,QWORD PTR [rbp-0x3e0]
  7bda51:	4c 8b 85 38 fc ff ff 	mov    r8,QWORD PTR [rbp-0x3c8]
  7bda58:	48 8b bd 30 fc ff ff 	mov    rdi,QWORD PTR [rbp-0x3d0]
  7bda5f:	4c 03 d6             	add    r10,rsi
  7bda62:	4c 8b b5 28 fc ff ff 	mov    r14,QWORD PTR [rbp-0x3d8]
  7bda69:	4c 03 ce             	add    r9,rsi
  7bda6c:	4c 8b 9d 40 fc ff ff 	mov    r11,QWORD PTR [rbp-0x3c0]
  7bda73:	4c 03 c1             	add    r8,rcx
  7bda76:	48 03 f9             	add    rdi,rcx
  7bda79:	4d 03 f5             	add    r14,r13
  7bda7c:	4d 03 dd             	add    r11,r13
  7bda7f:	c4 41 7b 10 34 c3    	vmovsd xmm14,QWORD PTR [r11+rax*8]
  7bda85:	c5 3b 59 3c c7       	vmulsd xmm15,xmm8,QWORD PTR [rdi+rax*8]
  7bda8a:	c4 41 0b 58 74 c6 f8 	vaddsd xmm14,xmm14,QWORD PTR [r14+rax*8-0x8]
  7bda91:	c4 41 03 59 f6       	vmulsd xmm14,xmm15,xmm14
  7bda96:	c4 41 7b 10 7c c1 08 	vmovsd xmm15,QWORD PTR [r9+rax*8+0x8]
  7bda9d:	c4 41 03 5c 3c c2    	vsubsd xmm15,xmm15,QWORD PTR [r10+rax*8]
  7bdaa3:	c4 41 0b 58 f7       	vaddsd xmm14,xmm14,xmm15
  7bdaa8:	c4 41 7b 11 34 c0    	vmovsd QWORD PTR [r8+rax*8],xmm14
  7bdaae:	48 ff c0             	inc    rax
  7bdab1:	48 3b c2             	cmp    rax,rdx
  7bdab4:	72 c9                	jb     7bda7f <pre_step3d_mod_mp_pre_step3d_tile_+0x447f>
  7bdab6:	49 ff c4             	inc    r12
  7bdab9:	48 03 b5 18 ff ff ff 	add    rsi,QWORD PTR [rbp-0xe8]
  7bdac0:	48 03 8d 20 ff ff ff 	add    rcx,QWORD PTR [rbp-0xe0]
  7bdac7:	4c 03 ad 10 fd ff ff 	add    r13,QWORD PTR [rbp-0x2f0]
  7bdace:	4c 3b a5 08 fd ff ff 	cmp    r12,QWORD PTR [rbp-0x2f8]
  7bdad5:	0f 82 c2 fe ff ff    	jb     7bd99d <pre_step3d_mod_mp_pre_step3d_tile_+0x439d>
  7bdadb:	48 8b bd d8 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x728]
  7bdae2:	44 8b 85 b8 f8 ff ff 	mov    r8d,DWORD PTR [rbp-0x748]
  7bdae9:	4c 8b 8d c0 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x740]
  7bdaf0:	4c 8b 9d c8 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x738]
  7bdaf7:	44 8b 95 d0 f8 ff ff 	mov    r10d,DWORD PTR [rbp-0x730]
  7bdafe:	e9 ee 12 00 00       	jmp    7bedf1 <pre_step3d_mod_mp_pre_step3d_tile_+0x57f1>
  7bdb03:	33 c9                	xor    ecx,ecx
  7bdb05:	33 d2                	xor    edx,edx
  7bdb07:	33 f6                	xor    esi,esi
  7bdb09:	33 c0                	xor    eax,eax
  7bdb0b:	48 83 bd 08 fd ff ff 	cmp    QWORD PTR [rbp-0x2f8],0x0
  7bdb12:	00 
  7bdb13:	0f 8e d8 12 00 00    	jle    7bedf1 <pre_step3d_mod_mp_pre_step3d_tile_+0x57f1>
  7bdb19:	4c 8b b5 f0 fb ff ff 	mov    r14,QWORD PTR [rbp-0x410]
  7bdb20:	4c 0f af f7          	imul   r14,rdi
  7bdb24:	4c 8b ad 58 f6 ff ff 	mov    r13,QWORD PTR [rbp-0x9a8]
  7bdb2b:	4c 0f af ef          	imul   r13,rdi
  7bdb2f:	4c 8b a5 30 f8 ff ff 	mov    r12,QWORD PTR [rbp-0x7d0]
  7bdb36:	48 89 bd d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],rdi
  7bdb3d:	44 89 85 b8 f8 ff ff 	mov    DWORD PTR [rbp-0x748],r8d
  7bdb44:	4c 89 8d c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],r9
  7bdb4b:	4f 8d 3c 34          	lea    r15,[r12+r14*1]
  7bdb4f:	4c 89 bd 98 fc ff ff 	mov    QWORD PTR [rbp-0x368],r15
  7bdb56:	4c 8b bd 70 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x990]
  7bdb5d:	4c 8b a5 50 f6 ff ff 	mov    r12,QWORD PTR [rbp-0x9b0]
  7bdb64:	4c 89 9d c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r11
  7bdb6b:	44 89 95 d0 f8 ff ff 	mov    DWORD PTR [rbp-0x730],r10d
  7bdb72:	4d 03 fd             	add    r15,r13
  7bdb75:	4c 89 bd a0 fc ff ff 	mov    QWORD PTR [rbp-0x360],r15
  7bdb7c:	4d 03 e5             	add    r12,r13
  7bdb7f:	4c 8b bd 68 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x998]
  7bdb86:	4c 89 a5 60 fc ff ff 	mov    QWORD PTR [rbp-0x3a0],r12
  7bdb8d:	c5 79 10 25 5b de 08 	vmovupd xmm12,XMMWORD PTR [rip+0x8de5b]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  7bdb94:	00 
  7bdb95:	4c 8b 65 c8          	mov    r12,QWORD PTR [rbp-0x38]
  7bdb99:	4d 03 fd             	add    r15,r13
  7bdb9c:	4c 89 bd b0 fc ff ff 	mov    QWORD PTR [rbp-0x350],r15
  7bdba3:	4c 8b bd 80 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x980]
  7bdbaa:	4c 03 ad e8 f3 ff ff 	add    r13,QWORD PTR [rbp-0xc18]
  7bdbb1:	4c 89 ad 58 fc ff ff 	mov    QWORD PTR [rbp-0x3a8],r13
  7bdbb8:	4d 03 fe             	add    r15,r14
  7bdbbb:	4c 89 bd a8 fc ff ff 	mov    QWORD PTR [rbp-0x358],r15
  7bdbc2:	4c 8b bd 78 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x988]
  7bdbc9:	4d 03 fe             	add    r15,r14
  7bdbcc:	4c 03 b5 88 f6 ff ff 	add    r14,QWORD PTR [rbp-0x978]
  7bdbd3:	4c 89 b5 48 fc ff ff 	mov    QWORD PTR [rbp-0x3b8],r14
  7bdbda:	4c 89 bd 50 fc ff ff 	mov    QWORD PTR [rbp-0x3b0],r15
  7bdbe1:	4c 8b 75 c0          	mov    r14,QWORD PTR [rbp-0x40]
  7bdbe5:	48 8b bd 00 ff ff ff 	mov    rdi,QWORD PTR [rbp-0x100]
  7bdbec:	48 3b bd 08 ff ff ff 	cmp    rdi,QWORD PTR [rbp-0xf8]
  7bdbf3:	0f 8c d9 02 00 00    	jl     7bded2 <pre_step3d_mod_mp_pre_step3d_tile_+0x48d2>
  7bdbf9:	4d 85 e4             	test   r12,r12
  7bdbfc:	0f 84 95 ba 00 00    	je     7c9697 <pre_step3d_mod_mp_pre_step3d_tile_+0x10097>
  7bdc02:	49 83 fe 04          	cmp    r14,0x4
  7bdc06:	0f 8c 8b ba 00 00    	jl     7c9697 <pre_step3d_mod_mp_pre_step3d_tile_+0x10097>
  7bdc0c:	48 8b bd 60 fc ff ff 	mov    rdi,QWORD PTR [rbp-0x3a0]
  7bdc13:	45 33 d2             	xor    r10d,r10d
  7bdc16:	4c 8b bd 98 fc ff ff 	mov    r15,QWORD PTR [rbp-0x368]
  7bdc1d:	4c 8b 8d 60 fe ff ff 	mov    r9,QWORD PTR [rbp-0x1a0]
  7bdc24:	4c 8b 85 20 fc ff ff 	mov    r8,QWORD PTR [rbp-0x3e0]
  7bdc2b:	48 03 f8             	add    rdi,rax
  7bdc2e:	48 89 bd 80 fc ff ff 	mov    QWORD PTR [rbp-0x380],rdi
  7bdc35:	4c 03 fe             	add    r15,rsi
  7bdc38:	48 8b bd 58 fc ff ff 	mov    rdi,QWORD PTR [rbp-0x3a8]
  7bdc3f:	4c 03 ca             	add    r9,rdx
  7bdc42:	4c 8b 9d a8 fc ff ff 	mov    r11,QWORD PTR [rbp-0x358]
  7bdc49:	4c 03 c2             	add    r8,rdx
  7bdc4c:	4c 8b 6d a0          	mov    r13,QWORD PTR [rbp-0x60]
  7bdc50:	4c 89 ad b8 fc ff ff 	mov    QWORD PTR [rbp-0x348],r13
  7bdc57:	48 03 f8             	add    rdi,rax
  7bdc5a:	48 89 bd 78 fc ff ff 	mov    QWORD PTR [rbp-0x388],rdi
  7bdc61:	4c 03 de             	add    r11,rsi
  7bdc64:	48 8b bd b0 fc ff ff 	mov    rdi,QWORD PTR [rbp-0x350]
  7bdc6b:	48 89 85 c0 fc ff ff 	mov    QWORD PTR [rbp-0x340],rax
  7bdc72:	48 89 b5 c8 fc ff ff 	mov    QWORD PTR [rbp-0x338],rsi
  7bdc79:	48 89 95 d0 fc ff ff 	mov    QWORD PTR [rbp-0x330],rdx
  7bdc80:	48 03 f8             	add    rdi,rax
  7bdc83:	48 89 bd 70 fc ff ff 	mov    QWORD PTR [rbp-0x390],rdi
  7bdc8a:	48 8b bd a0 fc ff ff 	mov    rdi,QWORD PTR [rbp-0x360]
  7bdc91:	48 89 8d d8 fc ff ff 	mov    QWORD PTR [rbp-0x328],rcx
  7bdc98:	4c 89 7d a8          	mov    QWORD PTR [rbp-0x58],r15
  7bdc9c:	48 8b 95 70 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x390]
  7bdca3:	48 03 f8             	add    rdi,rax
  7bdca6:	48 89 7d b8          	mov    QWORD PTR [rbp-0x48],rdi
  7bdcaa:	48 8b bd 50 fc ff ff 	mov    rdi,QWORD PTR [rbp-0x3b0]
  7bdcb1:	48 8b 8d 78 fc ff ff 	mov    rcx,QWORD PTR [rbp-0x388]
  7bdcb8:	4c 8b ad 58 ff ff ff 	mov    r13,QWORD PTR [rbp-0xa8]
  7bdcbf:	48 03 fe             	add    rdi,rsi
  7bdcc2:	48 89 bd 68 fc ff ff 	mov    QWORD PTR [rbp-0x398],rdi
  7bdcc9:	48 8b bd 48 fc ff ff 	mov    rdi,QWORD PTR [rbp-0x3b8]
  7bdcd0:	48 8b 85 68 fc ff ff 	mov    rax,QWORD PTR [rbp-0x398]
  7bdcd7:	48 03 fe             	add    rdi,rsi
  7bdcda:	48 89 7d b0          	mov    QWORD PTR [rbp-0x50],rdi
  7bdcde:	33 ff                	xor    edi,edi
  7bdce0:	49 89 fe             	mov    r14,rdi
  7bdce3:	48 8b b5 80 fc ff ff 	mov    rsi,QWORD PTR [rbp-0x380]
  7bdcea:	4c 8b 7d a8          	mov    r15,QWORD PTR [rbp-0x58]
  7bdcee:	4c 03 ff             	add    r15,rdi
  7bdcf1:	c4 41 7b 10 2f       	vmovsd xmm13,QWORD PTR [r15]
  7bdcf6:	c4 01 11 16 3c 27    	vmovhpd xmm15,xmm13,QWORD PTR [r15+r12*1]
  7bdcfc:	4c 8b 7d b8          	mov    r15,QWORD PTR [rbp-0x48]
  7bdd00:	c4 41 01 59 f4       	vmulpd xmm14,xmm15,xmm12
  7bdd05:	4d 03 fe             	add    r15,r14
  7bdd08:	c4 41 7b 10 2f       	vmovsd xmm13,QWORD PTR [r15]
  7bdd0d:	c4 01 11 16 3c 2f    	vmovhpd xmm15,xmm13,QWORD PTR [r15+r13*1]
  7bdd13:	4e 8d 3c 32          	lea    r15,[rdx+r14*1]
  7bdd17:	c4 41 7b 10 2f       	vmovsd xmm13,QWORD PTR [r15]
  7bdd1c:	c4 01 11 16 2c 2f    	vmovhpd xmm13,xmm13,QWORD PTR [r15+r13*1]
  7bdd22:	4e 8d 3c 1f          	lea    r15,[rdi+r11*1]
  7bdd26:	c4 41 01 58 fd       	vaddpd xmm15,xmm15,xmm13
  7bdd2b:	c4 41 09 59 ef       	vmulpd xmm13,xmm14,xmm15
  7bdd30:	c4 01 79 10 74 d0 08 	vmovupd xmm14,XMMWORD PTR [r8+r10*8+0x8]
  7bdd37:	c4 01 09 5c 34 d1    	vsubpd xmm14,xmm14,XMMWORD PTR [r9+r10*8]
  7bdd3d:	c4 41 11 58 fe       	vaddpd xmm15,xmm13,xmm14
  7bdd42:	c4 41 7b 11 3f       	vmovsd QWORD PTR [r15],xmm15
  7bdd47:	c4 01 79 17 3c 3c    	vmovhpd QWORD PTR [r12+r15*1],xmm15
  7bdd4d:	4c 8b 7d b0          	mov    r15,QWORD PTR [rbp-0x50]
  7bdd51:	4c 03 ff             	add    r15,rdi
  7bdd54:	c4 41 7b 10 37       	vmovsd xmm14,QWORD PTR [r15]
  7bdd59:	c4 01 09 16 2c 27    	vmovhpd xmm13,xmm14,QWORD PTR [r15+r12*1]
  7bdd5f:	4e 8d 3c 31          	lea    r15,[rcx+r14*1]
  7bdd63:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  7bdd68:	c4 41 11 59 f4       	vmulpd xmm14,xmm13,xmm12
  7bdd6d:	c4 01 01 16 2c 2f    	vmovhpd xmm13,xmm15,QWORD PTR [r15+r13*1]
  7bdd73:	4e 8d 3c 36          	lea    r15,[rsi+r14*1]
  7bdd77:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  7bdd7c:	4f 8d 34 ae          	lea    r14,[r14+r13*4]
  7bdd80:	c4 01 01 16 3c 2f    	vmovhpd xmm15,xmm15,QWORD PTR [r15+r13*1]
  7bdd86:	4c 8d 3c 07          	lea    r15,[rdi+rax*1]
  7bdd8a:	c4 41 11 58 ef       	vaddpd xmm13,xmm13,xmm15
  7bdd8f:	c4 41 09 59 ed       	vmulpd xmm13,xmm14,xmm13
  7bdd94:	c4 01 79 10 74 d0 18 	vmovupd xmm14,XMMWORD PTR [r8+r10*8+0x18]
  7bdd9b:	c4 01 09 5c 74 d1 10 	vsubpd xmm14,xmm14,XMMWORD PTR [r9+r10*8+0x10]
  7bdda2:	c4 41 11 58 fe       	vaddpd xmm15,xmm13,xmm14
  7bdda7:	49 83 c2 04          	add    r10,0x4
  7bddab:	4a 8d 3c a7          	lea    rdi,[rdi+r12*4]
  7bddaf:	c4 41 7b 11 3f       	vmovsd QWORD PTR [r15],xmm15
  7bddb4:	c4 01 79 17 3c 3c    	vmovhpd QWORD PTR [r12+r15*1],xmm15
  7bddba:	4c 3b 55 a0          	cmp    r10,QWORD PTR [rbp-0x60]
  7bddbe:	0f 82 26 ff ff ff    	jb     7bdcea <pre_step3d_mod_mp_pre_step3d_tile_+0x46ea>
  7bddc4:	4c 8b ad b8 fc ff ff 	mov    r13,QWORD PTR [rbp-0x348]
  7bddcb:	48 8b 85 c0 fc ff ff 	mov    rax,QWORD PTR [rbp-0x340]
  7bddd2:	48 8b b5 c8 fc ff ff 	mov    rsi,QWORD PTR [rbp-0x338]
  7bddd9:	48 8b 95 d0 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x330]
  7bdde0:	48 8b 8d d8 fc ff ff 	mov    rcx,QWORD PTR [rbp-0x328]
  7bdde7:	4c 8b 75 c0          	mov    r14,QWORD PTR [rbp-0x40]
  7bddeb:	4d 89 e1             	mov    r9,r12
  7bddee:	4c 8b 9d 58 ff ff ff 	mov    r11,QWORD PTR [rbp-0xa8]
  7bddf5:	4d 0f af dd          	imul   r11,r13
  7bddf9:	4d 0f af cd          	imul   r9,r13
  7bddfd:	4d 3b ee             	cmp    r13,r14
  7bde00:	0f 83 cc 00 00 00    	jae    7bded2 <pre_step3d_mod_mp_pre_step3d_tile_+0x48d2>
  7bde06:	4c 8b 85 60 fe ff ff 	mov    r8,QWORD PTR [rbp-0x1a0]
  7bde0d:	4c 8b bd a8 fc ff ff 	mov    r15,QWORD PTR [rbp-0x358]
  7bde14:	4c 8b 95 20 fc ff ff 	mov    r10,QWORD PTR [rbp-0x3e0]
  7bde1b:	48 89 b5 c8 fc ff ff 	mov    QWORD PTR [rbp-0x338],rsi
  7bde22:	49 8d 3c 10          	lea    rdi,[r8+rdx*1]
  7bde26:	48 89 bd 90 fc ff ff 	mov    QWORD PTR [rbp-0x370],rdi
  7bde2d:	49 8d 3c 37          	lea    rdi,[r15+rsi*1]
  7bde31:	4c 8b bd b0 fc ff ff 	mov    r15,QWORD PTR [rbp-0x350]
  7bde38:	4d 8d 04 12          	lea    r8,[r10+rdx*1]
  7bde3c:	4c 8b 95 98 fc ff ff 	mov    r10,QWORD PTR [rbp-0x368]
  7bde43:	48 89 95 d0 fc ff ff 	mov    QWORD PTR [rbp-0x330],rdx
  7bde4a:	48 89 8d d8 fc ff ff 	mov    QWORD PTR [rbp-0x328],rcx
  7bde51:	4c 03 f8             	add    r15,rax
  7bde54:	4c 89 bd 88 fc ff ff 	mov    QWORD PTR [rbp-0x378],r15
  7bde5b:	4c 03 d6             	add    r10,rsi
  7bde5e:	4c 8b bd a0 fc ff ff 	mov    r15,QWORD PTR [rbp-0x360]
  7bde65:	48 8b 8d 88 fc ff ff 	mov    rcx,QWORD PTR [rbp-0x378]
  7bde6c:	48 8b b5 90 fc ff ff 	mov    rsi,QWORD PTR [rbp-0x370]
  7bde73:	4c 03 f8             	add    r15,rax
  7bde76:	4c 89 fa             	mov    rdx,r15
  7bde79:	4c 8b bd 58 ff ff ff 	mov    r15,QWORD PTR [rbp-0xa8]
  7bde80:	c4 41 7b 10 2c 13    	vmovsd xmm13,QWORD PTR [r11+rdx*1]
  7bde86:	c4 01 3b 59 34 11    	vmulsd xmm14,xmm8,QWORD PTR [r9+r10*1]
  7bde8c:	c4 41 13 58 3c 0b    	vaddsd xmm15,xmm13,QWORD PTR [r11+rcx*1]
  7bde92:	c4 01 7b 10 6c e8 08 	vmovsd xmm13,QWORD PTR [r8+r13*8+0x8]
  7bde99:	4d 03 df             	add    r11,r15
  7bde9c:	c4 41 0b 59 f7       	vmulsd xmm14,xmm14,xmm15
  7bdea1:	c4 21 13 5c 3c ee    	vsubsd xmm15,xmm13,QWORD PTR [rsi+r13*8]
  7bdea7:	49 ff c5             	inc    r13
  7bdeaa:	c4 41 0b 58 ef       	vaddsd xmm13,xmm14,xmm15
  7bdeaf:	c4 41 7b 11 2c 39    	vmovsd QWORD PTR [r9+rdi*1],xmm13
  7bdeb5:	4d 03 cc             	add    r9,r12
  7bdeb8:	4d 3b ee             	cmp    r13,r14
  7bdebb:	72 c3                	jb     7bde80 <pre_step3d_mod_mp_pre_step3d_tile_+0x4880>
  7bdebd:	48 8b b5 c8 fc ff ff 	mov    rsi,QWORD PTR [rbp-0x338]
  7bdec4:	48 8b 95 d0 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x330]
  7bdecb:	48 8b 8d d8 fc ff ff 	mov    rcx,QWORD PTR [rbp-0x328]
  7bded2:	48 ff c1             	inc    rcx
  7bded5:	48 03 95 18 ff ff ff 	add    rdx,QWORD PTR [rbp-0xe8]
  7bdedc:	48 03 b5 20 ff ff ff 	add    rsi,QWORD PTR [rbp-0xe0]
  7bdee3:	48 03 85 10 fd ff ff 	add    rax,QWORD PTR [rbp-0x2f0]
  7bdeea:	48 3b 8d 08 fd ff ff 	cmp    rcx,QWORD PTR [rbp-0x2f8]
  7bdef1:	0f 82 ee fc ff ff    	jb     7bdbe5 <pre_step3d_mod_mp_pre_step3d_tile_+0x45e5>
  7bdef7:	c5 7b 10 2d 81 e2 08 	vmovsd xmm13,QWORD PTR [rip+0x8e281]        # 84c180 <__STRLITPACK_0.112+0x70>
  7bdefe:	00 
  7bdeff:	48 8b bd d8 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x728]
  7bdf06:	44 8b 85 b8 f8 ff ff 	mov    r8d,DWORD PTR [rbp-0x748]
  7bdf0d:	4c 8b 8d c0 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x740]
  7bdf14:	4c 8b 9d c8 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x738]
  7bdf1b:	44 8b 95 d0 f8 ff ff 	mov    r10d,DWORD PTR [rbp-0x730]
  7bdf22:	e9 ca 0e 00 00       	jmp    7bedf1 <pre_step3d_mod_mp_pre_step3d_tile_+0x57f1>
  7bdf27:	3b 85 e0 f8 ff ff    	cmp    eax,DWORD PTR [rbp-0x720]
  7bdf2d:	0f 85 6e 06 00 00    	jne    7be5a1 <pre_step3d_mod_mp_pre_step3d_tile_+0x4fa1>
  7bdf33:	48 83 7d c8 08       	cmp    QWORD PTR [rbp-0x38],0x8
  7bdf38:	0f 85 ac 02 00 00    	jne    7be1ea <pre_step3d_mod_mp_pre_step3d_tile_+0x4bea>
  7bdf3e:	48 83 bd 58 ff ff ff 	cmp    QWORD PTR [rbp-0xa8],0x8
  7bdf45:	08 
  7bdf46:	0f 85 9e 02 00 00    	jne    7be1ea <pre_step3d_mod_mp_pre_step3d_tile_+0x4bea>
  7bdf4c:	48 83 bd 50 ff ff ff 	cmp    QWORD PTR [rbp-0xb0],0x8
  7bdf53:	08 
  7bdf54:	0f 85 90 02 00 00    	jne    7be1ea <pre_step3d_mod_mp_pre_step3d_tile_+0x4bea>
  7bdf5a:	45 33 e4             	xor    r12d,r12d
  7bdf5d:	45 33 ed             	xor    r13d,r13d
  7bdf60:	45 33 f6             	xor    r14d,r14d
  7bdf63:	48 83 bd 08 fd ff ff 	cmp    QWORD PTR [rbp-0x2f8],0x0
  7bdf6a:	00 
  7bdf6b:	0f 8e 80 0e 00 00    	jle    7bedf1 <pre_step3d_mod_mp_pre_step3d_tile_+0x57f1>
  7bdf71:	48 8b b5 88 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x778]
  7bdf78:	48 8b 8d 58 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x9a8]
  7bdf7f:	48 0f af cf          	imul   rcx,rdi
  7bdf83:	c5 7d 10 25 75 c4 08 	vmovupd ymm12,YMMWORD PTR [rip+0x8c475]        # 84a400 <var$630.126.450+0x460>
  7bdf8a:	00 
  7bdf8b:	48 8b 95 60 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x9a0]
  7bdf92:	4e 8d 3c 1e          	lea    r15,[rsi+r11*1]
  7bdf96:	48 8b b5 c0 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb40]
  7bdf9d:	48 0f af f7          	imul   rsi,rdi
  7bdfa1:	48 8b 85 48 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x9b8]
  7bdfa8:	48 03 d1             	add    rdx,rcx
  7bdfab:	48 03 8d 90 f6 ff ff 	add    rcx,QWORD PTR [rbp-0x970]
  7bdfb2:	48 89 8d f0 f8 ff ff 	mov    QWORD PTR [rbp-0x710],rcx
  7bdfb9:	48 89 95 08 f9 ff ff 	mov    QWORD PTR [rbp-0x6f8],rdx
  7bdfc0:	49 03 c3             	add    rax,r11
  7bdfc3:	48 03 b5 d0 f4 ff ff 	add    rsi,QWORD PTR [rbp-0xb30]
  7bdfca:	4c 89 f2             	mov    rdx,r14
  7bdfcd:	48 8b 4d c0          	mov    rcx,QWORD PTR [rbp-0x40]
  7bdfd1:	4c 89 bd f8 f8 ff ff 	mov    QWORD PTR [rbp-0x708],r15
  7bdfd8:	48 89 85 00 f9 ff ff 	mov    QWORD PTR [rbp-0x700],rax
  7bdfdf:	48 89 bd d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],rdi
  7bdfe6:	44 89 85 b8 f8 ff ff 	mov    DWORD PTR [rbp-0x748],r8d
  7bdfed:	4c 89 8d c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],r9
  7bdff4:	4c 89 9d c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r11
  7bdffb:	44 89 95 d0 f8 ff ff 	mov    DWORD PTR [rbp-0x730],r10d
  7be002:	48 8b 85 00 ff ff ff 	mov    rax,QWORD PTR [rbp-0x100]
  7be009:	48 3b 85 08 ff ff ff 	cmp    rax,QWORD PTR [rbp-0xf8]
  7be010:	0f 8c 78 01 00 00    	jl     7be18e <pre_step3d_mod_mp_pre_step3d_tile_+0x4b8e>
  7be016:	48 83 f9 04          	cmp    rcx,0x4
  7be01a:	0f 8c 7f b6 00 00    	jl     7c969f <pre_step3d_mod_mp_pre_step3d_tile_+0x1009f>
  7be020:	4c 8b bd 08 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6f8]
  7be027:	4c 8b 95 60 fe ff ff 	mov    r10,QWORD PTR [rbp-0x1a0]
  7be02e:	4c 8b 8d 20 fc ff ff 	mov    r9,QWORD PTR [rbp-0x3e0]
  7be035:	4c 8b 85 00 f9 ff ff 	mov    r8,QWORD PTR [rbp-0x700]
  7be03c:	4c 03 fa             	add    r15,rdx
  7be03f:	48 8b bd f8 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x708]
  7be046:	4d 03 d5             	add    r10,r13
  7be049:	4c 8b 9d f0 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x710]
  7be050:	4d 03 cd             	add    r9,r13
  7be053:	48 c7 85 10 f9 ff ff 	mov    QWORD PTR [rbp-0x6f0],0x0
  7be05a:	00 00 00 00 
  7be05e:	4d 03 c6             	add    r8,r14
  7be061:	49 03 fe             	add    rdi,r14
  7be064:	48 8b 45 a0          	mov    rax,QWORD PTR [rbp-0x60]
  7be068:	4c 03 da             	add    r11,rdx
  7be06b:	4c 89 a5 08 fa ff ff 	mov    QWORD PTR [rbp-0x5f8],r12
  7be072:	4c 89 ad 00 fa ff ff 	mov    QWORD PTR [rbp-0x600],r13
  7be079:	49 89 c5             	mov    r13,rax
  7be07c:	4c 89 f9             	mov    rcx,r15
  7be07f:	4c 8b a5 10 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6f0]
  7be086:	4c 8b bd 48 ff ff ff 	mov    r15,QWORD PTR [rbp-0xb8]
  7be08d:	0f 1f 00             	nop    DWORD PTR [rax]
  7be090:	c4 21 7d 10 3c e1    	vmovupd ymm15,YMMWORD PTR [rcx+r12*8]
  7be096:	c4 21 1d 59 2c e7    	vmulpd ymm13,ymm12,YMMWORD PTR [rdi+r12*8]
  7be09c:	c4 01 05 58 74 e3 f8 	vaddpd ymm14,ymm15,YMMWORD PTR [r11+r12*8-0x8]
  7be0a3:	c4 01 7d 10 7c e1 08 	vmovupd ymm15,YMMWORD PTR [r9+r12*8+0x8]
  7be0aa:	c4 41 15 59 f6       	vmulpd ymm14,ymm13,ymm14
  7be0af:	c4 01 05 5c 2c e2    	vsubpd ymm13,ymm15,YMMWORD PTR [r10+r12*8]
  7be0b5:	c4 01 1d 59 3c e7    	vmulpd ymm15,ymm12,YMMWORD PTR [r15+r12*8]
  7be0bb:	c4 21 05 59 3c e6    	vmulpd ymm15,ymm15,YMMWORD PTR [rsi+r12*8]
  7be0c1:	c4 41 0d 5c f7       	vsubpd ymm14,ymm14,ymm15
  7be0c6:	c4 41 15 58 ee       	vaddpd ymm13,ymm13,ymm14
  7be0cb:	c4 01 7d 11 2c e0    	vmovupd YMMWORD PTR [r8+r12*8],ymm13
  7be0d1:	49 83 c4 04          	add    r12,0x4
  7be0d5:	4d 3b e5             	cmp    r12,r13
  7be0d8:	72 b6                	jb     7be090 <pre_step3d_mod_mp_pre_step3d_tile_+0x4a90>
  7be0da:	4c 8b ad 00 fa ff ff 	mov    r13,QWORD PTR [rbp-0x600]
  7be0e1:	4c 8b a5 08 fa ff ff 	mov    r12,QWORD PTR [rbp-0x5f8]
  7be0e8:	48 8b 4d c0          	mov    rcx,QWORD PTR [rbp-0x40]
  7be0ec:	48 3b c1             	cmp    rax,rcx
  7be0ef:	0f 83 99 00 00 00    	jae    7be18e <pre_step3d_mod_mp_pre_step3d_tile_+0x4b8e>
  7be0f5:	4c 8b 95 60 fe ff ff 	mov    r10,QWORD PTR [rbp-0x1a0]
  7be0fc:	4c 8b 8d 20 fc ff ff 	mov    r9,QWORD PTR [rbp-0x3e0]
  7be103:	4c 8b 85 00 f9 ff ff 	mov    r8,QWORD PTR [rbp-0x700]
  7be10a:	48 8b bd f8 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x708]
  7be111:	4d 03 d5             	add    r10,r13
  7be114:	4c 8b 9d f0 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x710]
  7be11b:	4d 03 cd             	add    r9,r13
  7be11e:	4c 8b bd 08 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6f8]
  7be125:	4d 03 c6             	add    r8,r14
  7be128:	4c 89 a5 08 fa ff ff 	mov    QWORD PTR [rbp-0x5f8],r12
  7be12f:	49 03 fe             	add    rdi,r14
  7be132:	4c 8b a5 48 ff ff ff 	mov    r12,QWORD PTR [rbp-0xb8]
  7be139:	4c 03 da             	add    r11,rdx
  7be13c:	4c 03 fa             	add    r15,rdx
  7be13f:	90                   	nop
  7be140:	c4 41 7b 10 3c c7    	vmovsd xmm15,QWORD PTR [r15+rax*8]
  7be146:	c5 3b 59 2c c7       	vmulsd xmm13,xmm8,QWORD PTR [rdi+rax*8]
  7be14b:	c4 41 03 58 74 c3 f8 	vaddsd xmm14,xmm15,QWORD PTR [r11+rax*8-0x8]
  7be152:	c4 41 7b 10 7c c1 08 	vmovsd xmm15,QWORD PTR [r9+rax*8+0x8]
  7be159:	c4 41 13 59 f6       	vmulsd xmm14,xmm13,xmm14
  7be15e:	c4 41 03 5c 2c c2    	vsubsd xmm13,xmm15,QWORD PTR [r10+rax*8]
  7be164:	c4 41 3b 59 3c c4    	vmulsd xmm15,xmm8,QWORD PTR [r12+rax*8]
  7be16a:	c5 03 59 3c c6       	vmulsd xmm15,xmm15,QWORD PTR [rsi+rax*8]
  7be16f:	c4 41 0b 5c f7       	vsubsd xmm14,xmm14,xmm15
  7be174:	c4 41 0b 58 ed       	vaddsd xmm13,xmm14,xmm13
  7be179:	c4 41 7b 11 2c c0    	vmovsd QWORD PTR [r8+rax*8],xmm13
  7be17f:	48 ff c0             	inc    rax
  7be182:	48 3b c1             	cmp    rax,rcx
  7be185:	72 b9                	jb     7be140 <pre_step3d_mod_mp_pre_step3d_tile_+0x4b40>
  7be187:	4c 8b a5 08 fa ff ff 	mov    r12,QWORD PTR [rbp-0x5f8]
  7be18e:	49 ff c4             	inc    r12
  7be191:	4c 03 ad 18 ff ff ff 	add    r13,QWORD PTR [rbp-0xe8]
  7be198:	4c 03 b5 20 ff ff ff 	add    r14,QWORD PTR [rbp-0xe0]
  7be19f:	48 03 95 10 fd ff ff 	add    rdx,QWORD PTR [rbp-0x2f0]
  7be1a6:	48 03 b5 70 fa ff ff 	add    rsi,QWORD PTR [rbp-0x590]
  7be1ad:	4c 3b a5 08 fd ff ff 	cmp    r12,QWORD PTR [rbp-0x2f8]
  7be1b4:	0f 82 48 fe ff ff    	jb     7be002 <pre_step3d_mod_mp_pre_step3d_tile_+0x4a02>
  7be1ba:	c5 7b 10 2d be df 08 	vmovsd xmm13,QWORD PTR [rip+0x8dfbe]        # 84c180 <__STRLITPACK_0.112+0x70>
  7be1c1:	00 
  7be1c2:	48 8b bd d8 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x728]
  7be1c9:	44 8b 85 b8 f8 ff ff 	mov    r8d,DWORD PTR [rbp-0x748]
  7be1d0:	4c 8b 8d c0 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x740]
  7be1d7:	4c 8b 9d c8 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x738]
  7be1de:	44 8b 95 d0 f8 ff ff 	mov    r10d,DWORD PTR [rbp-0x730]
  7be1e5:	e9 07 0c 00 00       	jmp    7bedf1 <pre_step3d_mod_mp_pre_step3d_tile_+0x57f1>
  7be1ea:	45 33 ed             	xor    r13d,r13d
  7be1ed:	33 c9                	xor    ecx,ecx
  7be1ef:	33 d2                	xor    edx,edx
  7be1f1:	33 f6                	xor    esi,esi
  7be1f3:	48 83 bd 08 fd ff ff 	cmp    QWORD PTR [rbp-0x2f8],0x0
  7be1fa:	00 
  7be1fb:	0f 8e f0 0b 00 00    	jle    7bedf1 <pre_step3d_mod_mp_pre_step3d_tile_+0x57f1>
  7be201:	4c 8b b5 58 f6 ff ff 	mov    r14,QWORD PTR [rbp-0x9a8]
  7be208:	4c 0f af f7          	imul   r14,rdi
  7be20c:	48 8b 85 70 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x990]
  7be213:	4c 8b a5 30 f8 ff ff 	mov    r12,QWORD PTR [rbp-0x7d0]
  7be21a:	4c 89 ad 78 fa ff ff 	mov    QWORD PTR [rbp-0x588],r13
  7be221:	48 89 bd d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],rdi
  7be228:	4e 8d 3c 30          	lea    r15,[rax+r14*1]
  7be22c:	48 8b 85 c0 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb40]
  7be233:	4d 03 e3             	add    r12,r11
  7be236:	48 0f af c7          	imul   rax,rdi
  7be23a:	4c 89 bd f0 f9 ff ff 	mov    QWORD PTR [rbp-0x610],r15
  7be241:	4c 8b bd 80 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x980]
  7be248:	4c 03 b5 68 f6 ff ff 	add    r14,QWORD PTR [rbp-0x998]
  7be24f:	4c 89 b5 20 f9 ff ff 	mov    QWORD PTR [rbp-0x6e0],r14
  7be256:	48 03 85 d8 f4 ff ff 	add    rax,QWORD PTR [rbp-0xb28]
  7be25d:	4d 03 fb             	add    r15,r11
  7be260:	4c 8b 75 c8          	mov    r14,QWORD PTR [rbp-0x38]
  7be264:	4c 89 bd 18 f9 ff ff 	mov    QWORD PTR [rbp-0x6e8],r15
  7be26b:	4c 89 a5 28 f9 ff ff 	mov    QWORD PTR [rbp-0x6d8],r12
  7be272:	44 89 85 b8 f8 ff ff 	mov    DWORD PTR [rbp-0x748],r8d
  7be279:	4c 89 8d c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],r9
  7be280:	4c 89 9d c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r11
  7be287:	44 89 95 d0 f8 ff ff 	mov    DWORD PTR [rbp-0x730],r10d
  7be28e:	c5 f9 10 05 5a d7 08 	vmovupd xmm0,XMMWORD PTR [rip+0x8d75a]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  7be295:	00 
  7be296:	48 8b bd 00 ff ff ff 	mov    rdi,QWORD PTR [rbp-0x100]
  7be29d:	48 3b bd 08 ff ff ff 	cmp    rdi,QWORD PTR [rbp-0xf8]
  7be2a4:	0f 8c 85 02 00 00    	jl     7be52f <pre_step3d_mod_mp_pre_step3d_tile_+0x4f2f>
  7be2aa:	4d 85 f6             	test   r14,r14
  7be2ad:	0f 84 f3 b3 00 00    	je     7c96a6 <pre_step3d_mod_mp_pre_step3d_tile_+0x100a6>
  7be2b3:	48 83 7d c0 02       	cmp    QWORD PTR [rbp-0x40],0x2
  7be2b8:	0f 8c e8 b3 00 00    	jl     7c96a6 <pre_step3d_mod_mp_pre_step3d_tile_+0x100a6>
  7be2be:	4c 8b 9d 20 f9 ff ff 	mov    r11,QWORD PTR [rbp-0x6e0]
  7be2c5:	45 33 d2             	xor    r10d,r10d
  7be2c8:	4c 8b bd 20 fc ff ff 	mov    r15,QWORD PTR [rbp-0x3e0]
  7be2cf:	4c 8b 8d 60 fe ff ff 	mov    r9,QWORD PTR [rbp-0x1a0]
  7be2d6:	4c 8b 85 18 f9 ff ff 	mov    r8,QWORD PTR [rbp-0x6e8]
  7be2dd:	4d 8d 24 33          	lea    r12,[r11+rsi*1]
  7be2e1:	4c 8b 9d f0 f9 ff ff 	mov    r11,QWORD PTR [rbp-0x610]
  7be2e8:	4c 03 f9             	add    r15,rcx
  7be2eb:	48 8b bd 28 f9 ff ff 	mov    rdi,QWORD PTR [rbp-0x6d8]
  7be2f2:	4c 03 c9             	add    r9,rcx
  7be2f5:	4c 89 a5 38 f9 ff ff 	mov    QWORD PTR [rbp-0x6c8],r12
  7be2fc:	4c 03 c2             	add    r8,rdx
  7be2ff:	4c 8b 6d e0          	mov    r13,QWORD PTR [rbp-0x20]
  7be303:	4d 8d 24 33          	lea    r12,[r11+rsi*1]
  7be307:	45 33 db             	xor    r11d,r11d
  7be30a:	48 03 fa             	add    rdi,rdx
  7be30d:	4c 89 a5 30 f9 ff ff 	mov    QWORD PTR [rbp-0x6d0],r12
  7be314:	45 33 e4             	xor    r12d,r12d
  7be317:	4c 89 ad 10 fa ff ff 	mov    QWORD PTR [rbp-0x5f0],r13
  7be31e:	48 89 b5 18 fa ff ff 	mov    QWORD PTR [rbp-0x5e8],rsi
  7be325:	48 89 8d 28 fa ff ff 	mov    QWORD PTR [rbp-0x5d8],rcx
  7be32c:	4c 89 bd 60 ff ff ff 	mov    QWORD PTR [rbp-0xa0],r15
  7be333:	48 89 95 20 fa ff ff 	mov    QWORD PTR [rbp-0x5e0],rdx
  7be33a:	4d 89 e5             	mov    r13,r12
  7be33d:	48 8b 8d 30 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x6d0]
  7be344:	48 8b b5 38 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x6c8]
  7be34b:	48 8b 95 58 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xa8]
  7be352:	4e 8d 3c 27          	lea    r15,[rdi+r12*1]
  7be356:	c4 41 7b 10 2f       	vmovsd xmm13,QWORD PTR [r15]
  7be35b:	c4 01 11 16 34 37    	vmovhpd xmm14,xmm13,QWORD PTR [r15+r14*1]
  7be361:	4e 8d 3c 29          	lea    r15,[rcx+r13*1]
  7be365:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  7be36a:	c5 09 59 f8          	vmulpd xmm15,xmm14,xmm0
  7be36e:	c4 41 19 16 34 17    	vmovhpd xmm14,xmm12,QWORD PTR [r15+rdx*1]
  7be374:	4e 8d 3c 2e          	lea    r15,[rsi+r13*1]
  7be378:	c4 41 7b 10 2f       	vmovsd xmm13,QWORD PTR [r15]
  7be37d:	4d 8d 6c 55 00       	lea    r13,[r13+rdx*2+0x0]
  7be382:	c4 41 11 16 24 17    	vmovhpd xmm12,xmm13,QWORD PTR [r15+rdx*1]
  7be388:	4e 8d 3c 18          	lea    r15,[rax+r11*1]
  7be38c:	c4 41 09 58 ec       	vaddpd xmm13,xmm14,xmm12
  7be391:	48 8b 95 60 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xa0]
  7be398:	c4 41 01 59 f5       	vmulpd xmm14,xmm15,xmm13
  7be39d:	c4 21 79 10 7c d2 08 	vmovupd xmm15,XMMWORD PTR [rdx+r10*8+0x8]
  7be3a4:	48 8b 95 48 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xb8]
  7be3ab:	c4 01 01 5c 2c d1    	vsubpd xmm13,xmm15,XMMWORD PTR [r9+r10*8]
  7be3b1:	c4 21 79 59 24 d2    	vmulpd xmm12,xmm0,XMMWORD PTR [rdx+r10*8]
  7be3b7:	48 8b 95 50 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xb0]
  7be3be:	49 83 c2 02          	add    r10,0x2
  7be3c2:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  7be3c7:	c4 41 01 16 3c 17    	vmovhpd xmm15,xmm15,QWORD PTR [r15+rdx*1]
  7be3cd:	4f 8d 3c 04          	lea    r15,[r12+r8*1]
  7be3d1:	c4 41 19 59 e7       	vmulpd xmm12,xmm12,xmm15
  7be3d6:	c4 41 09 5c f4       	vsubpd xmm14,xmm14,xmm12
  7be3db:	c4 41 11 58 ee       	vaddpd xmm13,xmm13,xmm14
  7be3e0:	c4 41 7b 11 2f       	vmovsd QWORD PTR [r15],xmm13
  7be3e5:	4d 8d 1c 53          	lea    r11,[r11+rdx*2]
  7be3e9:	c4 01 79 17 2c 3e    	vmovhpd QWORD PTR [r14+r15*1],xmm13
  7be3ef:	4f 8d 24 74          	lea    r12,[r12+r14*2]
  7be3f3:	4c 3b 55 e0          	cmp    r10,QWORD PTR [rbp-0x20]
  7be3f7:	0f 82 4e ff ff ff    	jb     7be34b <pre_step3d_mod_mp_pre_step3d_tile_+0x4d4b>
  7be3fd:	4c 8b ad 10 fa ff ff 	mov    r13,QWORD PTR [rbp-0x5f0]
  7be404:	48 8b b5 18 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x5e8]
  7be40b:	48 8b 95 20 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x5e0]
  7be412:	48 8b 8d 28 fa ff ff 	mov    rcx,QWORD PTR [rbp-0x5d8]
  7be419:	4d 89 f2             	mov    r10,r14
  7be41c:	4c 8b 9d 58 ff ff ff 	mov    r11,QWORD PTR [rbp-0xa8]
  7be423:	4c 8b 85 50 ff ff ff 	mov    r8,QWORD PTR [rbp-0xb0]
  7be42a:	4d 0f af dd          	imul   r11,r13
  7be42e:	4d 0f af d5          	imul   r10,r13
  7be432:	4d 0f af c5          	imul   r8,r13
  7be436:	4c 3b 6d c0          	cmp    r13,QWORD PTR [rbp-0x40]
  7be43a:	0f 83 ef 00 00 00    	jae    7be52f <pre_step3d_mod_mp_pre_step3d_tile_+0x4f2f>
  7be440:	4c 8b 8d 60 fe ff ff 	mov    r9,QWORD PTR [rbp-0x1a0]
  7be447:	4c 8b a5 20 fc ff ff 	mov    r12,QWORD PTR [rbp-0x3e0]
  7be44e:	4c 8b bd 18 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6e8]
  7be455:	48 89 b5 18 fa ff ff 	mov    QWORD PTR [rbp-0x5e8],rsi
  7be45c:	49 8d 3c 09          	lea    rdi,[r9+rcx*1]
  7be460:	48 89 bd 48 f9 ff ff 	mov    QWORD PTR [rbp-0x6b8],rdi
  7be467:	4d 8d 0c 0c          	lea    r9,[r12+rcx*1]
  7be46b:	4c 8b a5 28 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6d8]
  7be472:	49 8d 3c 17          	lea    rdi,[r15+rdx*1]
  7be476:	4c 8b bd 20 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6e0]
  7be47d:	48 89 bd 40 f9 ff ff 	mov    QWORD PTR [rbp-0x6c0],rdi
  7be484:	48 89 95 20 fa ff ff 	mov    QWORD PTR [rbp-0x5e0],rdx
  7be48b:	49 8d 3c 14          	lea    rdi,[r12+rdx*1]
  7be48f:	48 89 8d 28 fa ff ff 	mov    QWORD PTR [rbp-0x5d8],rcx
  7be496:	4d 8d 24 37          	lea    r12,[r15+rsi*1]
  7be49a:	4c 8b bd f0 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x610]
  7be4a1:	48 8b 8d 40 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x6c0]
  7be4a8:	4c 03 fe             	add    r15,rsi
  7be4ab:	4c 89 fa             	mov    rdx,r15
  7be4ae:	48 8b b5 48 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x6b8]
  7be4b5:	4c 8b bd 48 ff ff ff 	mov    r15,QWORD PTR [rbp-0xb8]
  7be4bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  7be4c0:	c4 41 7b 10 34 13    	vmovsd xmm14,QWORD PTR [r11+rdx*1]
  7be4c6:	c4 41 3b 59 3c 3a    	vmulsd xmm15,xmm8,QWORD PTR [r10+rdi*1]
  7be4cc:	c4 01 0b 58 24 23    	vaddsd xmm12,xmm14,QWORD PTR [r11+r12*1]
  7be4d2:	c4 41 03 59 ec       	vmulsd xmm13,xmm15,xmm12
  7be4d7:	c4 01 3b 59 3c ef    	vmulsd xmm15,xmm8,QWORD PTR [r15+r13*8]
  7be4dd:	c4 01 7b 10 74 e9 08 	vmovsd xmm14,QWORD PTR [r9+r13*8+0x8]
  7be4e4:	4c 03 9d 58 ff ff ff 	add    r11,QWORD PTR [rbp-0xa8]
  7be4eb:	c4 21 0b 5c 24 ee    	vsubsd xmm12,xmm14,QWORD PTR [rsi+r13*8]
  7be4f1:	49 ff c5             	inc    r13
  7be4f4:	c4 41 03 59 34 00    	vmulsd xmm14,xmm15,QWORD PTR [r8+rax*1]
  7be4fa:	4c 03 85 50 ff ff ff 	add    r8,QWORD PTR [rbp-0xb0]
  7be501:	c4 41 13 5c ee       	vsubsd xmm13,xmm13,xmm14
  7be506:	c4 41 13 58 e4       	vaddsd xmm12,xmm13,xmm12
  7be50b:	c4 41 7b 11 24 0a    	vmovsd QWORD PTR [r10+rcx*1],xmm12
  7be511:	4d 03 d6             	add    r10,r14
  7be514:	4c 3b 6d c0          	cmp    r13,QWORD PTR [rbp-0x40]
  7be518:	72 a6                	jb     7be4c0 <pre_step3d_mod_mp_pre_step3d_tile_+0x4ec0>
  7be51a:	48 8b b5 18 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x5e8]
  7be521:	48 8b 95 20 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x5e0]
  7be528:	48 8b 8d 28 fa ff ff 	mov    rcx,QWORD PTR [rbp-0x5d8]
  7be52f:	48 8b bd 78 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x588]
  7be536:	48 ff c7             	inc    rdi
  7be539:	48 03 8d 18 ff ff ff 	add    rcx,QWORD PTR [rbp-0xe8]
  7be540:	48 03 95 20 ff ff ff 	add    rdx,QWORD PTR [rbp-0xe0]
  7be547:	48 03 b5 10 fd ff ff 	add    rsi,QWORD PTR [rbp-0x2f0]
  7be54e:	48 03 85 70 fa ff ff 	add    rax,QWORD PTR [rbp-0x590]
  7be555:	48 89 bd 78 fa ff ff 	mov    QWORD PTR [rbp-0x588],rdi
  7be55c:	48 3b bd 08 fd ff ff 	cmp    rdi,QWORD PTR [rbp-0x2f8]
  7be563:	0f 82 2d fd ff ff    	jb     7be296 <pre_step3d_mod_mp_pre_step3d_tile_+0x4c96>
  7be569:	c5 f9 10 05 2f d2 08 	vmovupd xmm0,XMMWORD PTR [rip+0x8d22f]        # 84b7a0 <__STRLITPACK_219.115+0xa0>
  7be570:	00 
  7be571:	c5 7b 10 2d 07 dc 08 	vmovsd xmm13,QWORD PTR [rip+0x8dc07]        # 84c180 <__STRLITPACK_0.112+0x70>
  7be578:	00 
  7be579:	48 8b bd d8 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x728]
  7be580:	44 8b 85 b8 f8 ff ff 	mov    r8d,DWORD PTR [rbp-0x748]
  7be587:	4c 8b 8d c0 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x740]
  7be58e:	4c 8b 9d c8 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x738]
  7be595:	44 8b 95 d0 f8 ff ff 	mov    r10d,DWORD PTR [rbp-0x730]
  7be59c:	e9 50 08 00 00       	jmp    7bedf1 <pre_step3d_mod_mp_pre_step3d_tile_+0x57f1>
  7be5a1:	48 83 7d c8 08       	cmp    QWORD PTR [rbp-0x38],0x8
  7be5a6:	0f 85 ac 03 00 00    	jne    7be958 <pre_step3d_mod_mp_pre_step3d_tile_+0x5358>
  7be5ac:	48 83 bd 58 ff ff ff 	cmp    QWORD PTR [rbp-0xa8],0x8
  7be5b3:	08 
  7be5b4:	0f 85 9e 03 00 00    	jne    7be958 <pre_step3d_mod_mp_pre_step3d_tile_+0x5358>
  7be5ba:	48 83 bd 50 ff ff ff 	cmp    QWORD PTR [rbp-0xb0],0x8
  7be5c1:	08 
  7be5c2:	0f 85 90 03 00 00    	jne    7be958 <pre_step3d_mod_mp_pre_step3d_tile_+0x5358>
  7be5c8:	45 33 ed             	xor    r13d,r13d
  7be5cb:	45 33 e4             	xor    r12d,r12d
  7be5ce:	4c 89 a5 38 fa ff ff 	mov    QWORD PTR [rbp-0x5c8],r12
  7be5d5:	4c 89 a5 30 fa ff ff 	mov    QWORD PTR [rbp-0x5d0],r12
  7be5dc:	48 83 bd 08 fd ff ff 	cmp    QWORD PTR [rbp-0x2f8],0x0
  7be5e3:	00 
  7be5e4:	0f 8e 07 08 00 00    	jle    7bedf1 <pre_step3d_mod_mp_pre_step3d_tile_+0x57f1>
  7be5ea:	48 8b b5 58 f6 ff ff 	mov    rsi,QWORD PTR [rbp-0x9a8]
  7be5f1:	4c 8b b5 c0 f4 ff ff 	mov    r14,QWORD PTR [rbp-0xb40]
  7be5f8:	48 0f af f7          	imul   rsi,rdi
  7be5fc:	4c 0f af f7          	imul   r14,rdi
  7be600:	c5 7d 10 2d f8 bd 08 	vmovupd ymm13,YMMWORD PTR [rip+0x8bdf8]        # 84a400 <var$630.126.450+0x460>
  7be607:	00 
  7be608:	c5 fb 11 a5 00 f2 ff 	vmovsd QWORD PTR [rbp-0xe00],xmm4
  7be60f:	ff 
  7be610:	c5 fb 11 9d f8 f1 ff 	vmovsd QWORD PTR [rbp-0xe08],xmm3
  7be617:	ff 
  7be618:	c5 fb 11 95 f0 f1 ff 	vmovsd QWORD PTR [rbp-0xe10],xmm2
  7be61f:	ff 
  7be620:	c5 7b 10 25 70 e3 08 	vmovsd xmm12,QWORD PTR [rip+0x8e370]        # 84c998 <__STRLITPACK_0.112+0x888>
  7be627:	00 
  7be628:	4c 8b bd 88 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x778]
  7be62f:	48 8b 8d 60 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x9a0]
  7be636:	48 8b 95 48 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x9b8]
  7be63d:	48 89 bd d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],rdi
  7be644:	4b 8d 04 1f          	lea    rax,[r15+r11*1]
  7be648:	4c 8b bd d0 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb30]
  7be64f:	48 03 ce             	add    rcx,rsi
  7be652:	48 03 b5 90 f6 ff ff 	add    rsi,QWORD PTR [rbp-0x970]
  7be659:	49 03 d3             	add    rdx,r11
  7be65c:	48 89 b5 60 f9 ff ff 	mov    QWORD PTR [rbp-0x6a0],rsi
  7be663:	48 89 95 70 f9 ff ff 	mov    QWORD PTR [rbp-0x690],rdx
  7be66a:	4d 03 fe             	add    r15,r14
  7be66d:	4c 03 b5 c8 f4 ff ff 	add    r14,QWORD PTR [rbp-0xb38]
  7be674:	48 89 8d 78 f9 ff ff 	mov    QWORD PTR [rbp-0x688],rcx
  7be67b:	4c 89 b5 50 f9 ff ff 	mov    QWORD PTR [rbp-0x6b0],r14
  7be682:	4c 89 bd 58 f9 ff ff 	mov    QWORD PTR [rbp-0x6a8],r15
  7be689:	48 89 85 68 f9 ff ff 	mov    QWORD PTR [rbp-0x698],rax
  7be690:	44 89 85 b8 f8 ff ff 	mov    DWORD PTR [rbp-0x748],r8d
  7be697:	4c 89 8d c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],r9
  7be69e:	4c 89 9d c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r11
  7be6a5:	44 89 95 d0 f8 ff ff 	mov    DWORD PTR [rbp-0x730],r10d
  7be6ac:	c5 fd 10 15 ac ca 08 	vmovupd ymm2,YMMWORD PTR [rip+0x8caac]        # 84b160 <var$630.126.450+0x11c0>
  7be6b3:	00 
  7be6b4:	c5 fb 10 1d d4 e2 08 	vmovsd xmm3,QWORD PTR [rip+0x8e2d4]        # 84c990 <__STRLITPACK_0.112+0x880>
  7be6bb:	00 
  7be6bc:	c5 fd 10 25 7c ca 08 	vmovupd ymm4,YMMWORD PTR [rip+0x8ca7c]        # 84b140 <var$630.126.450+0x11a0>
  7be6c3:	00 
  7be6c4:	4c 89 e7             	mov    rdi,r12
  7be6c7:	48 8b 95 30 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x5d0]
  7be6ce:	48 8b b5 38 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x5c8]
  7be6d5:	48 8b 4d c0          	mov    rcx,QWORD PTR [rbp-0x40]
  7be6d9:	48 8b 85 00 ff ff ff 	mov    rax,QWORD PTR [rbp-0x100]
  7be6e0:	48 3b 85 08 ff ff ff 	cmp    rax,QWORD PTR [rbp-0xf8]
  7be6e7:	0f 8c 3a 02 00 00    	jl     7be927 <pre_step3d_mod_mp_pre_step3d_tile_+0x5327>
  7be6ed:	48 83 f9 04          	cmp    rcx,0x4
  7be6f1:	0f 8c b7 af 00 00    	jl     7c96ae <pre_step3d_mod_mp_pre_step3d_tile_+0x100ae>
  7be6f7:	4c 8b 85 68 f9 ff ff 	mov    r8,QWORD PTR [rbp-0x698]
  7be6fe:	45 33 f6             	xor    r14d,r14d
  7be701:	4c 8b 9d 60 fe ff ff 	mov    r11,QWORD PTR [rbp-0x1a0]
  7be708:	4c 8b 95 20 fc ff ff 	mov    r10,QWORD PTR [rbp-0x3e0]
  7be70f:	4c 8b 8d 70 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x690]
  7be716:	4d 8d 3c 30          	lea    r15,[r8+rsi*1]
  7be71a:	4c 89 bd a0 f9 ff ff 	mov    QWORD PTR [rbp-0x660],r15
  7be721:	4d 03 dc             	add    r11,r12
  7be724:	4c 8b bd 60 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6a0]
  7be72b:	4d 03 d4             	add    r10,r12
  7be72e:	4c 8b 85 78 f9 ff ff 	mov    r8,QWORD PTR [rbp-0x688]
  7be735:	4c 03 ce             	add    r9,rsi
  7be738:	48 8b 45 a0          	mov    rax,QWORD PTR [rbp-0x60]
  7be73c:	48 89 95 30 fa ff ff 	mov    QWORD PTR [rbp-0x5d0],rdx
  7be743:	4c 03 fa             	add    r15,rdx
  7be746:	4c 89 bd 88 f9 ff ff 	mov    QWORD PTR [rbp-0x678],r15
  7be74d:	4c 03 c2             	add    r8,rdx
  7be750:	4c 8b bd 58 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6a8]
  7be757:	48 89 b5 38 fa ff ff 	mov    QWORD PTR [rbp-0x5c8],rsi
  7be75e:	4c 89 a5 40 fa ff ff 	mov    QWORD PTR [rbp-0x5c0],r12
  7be765:	4c 89 ad 48 fa ff ff 	mov    QWORD PTR [rbp-0x5b8],r13
  7be76c:	4c 03 ff             	add    r15,rdi
  7be76f:	4c 89 bd 80 f9 ff ff 	mov    QWORD PTR [rbp-0x680],r15
  7be776:	49 89 c5             	mov    r13,rax
  7be779:	4c 8b bd 50 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6b0]
  7be780:	48 8b 8d 80 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x680]
  7be787:	48 8b b5 88 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x678]
  7be78e:	4c 8b a5 a0 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x660]
  7be795:	4c 03 ff             	add    r15,rdi
  7be798:	4c 89 fa             	mov    rdx,r15
  7be79b:	4c 8b bd 48 ff ff ff 	mov    r15,QWORD PTR [rbp-0xb8]
  7be7a2:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  7be7a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  7be7b0:	c4 01 7d 10 34 f0    	vmovupd ymm14,YMMWORD PTR [r8+r14*8]
  7be7b6:	c4 01 15 59 3c f4    	vmulpd ymm15,ymm13,YMMWORD PTR [r12+r14*8]
  7be7bc:	c4 a1 0d 58 44 f6 f8 	vaddpd ymm0,ymm14,YMMWORD PTR [rsi+r14*8-0x8]
  7be7c3:	c4 01 7d 10 74 f2 08 	vmovupd ymm14,YMMWORD PTR [r10+r14*8+0x8]
  7be7ca:	c5 85 59 c8          	vmulpd ymm1,ymm15,ymm0
  7be7ce:	c4 21 5d 59 3c f2    	vmulpd ymm15,ymm4,YMMWORD PTR [rdx+r14*8]
  7be7d4:	c4 81 0d 5c 04 f3    	vsubpd ymm0,ymm14,YMMWORD PTR [r11+r14*8]
  7be7da:	c4 21 6d 59 34 f1    	vmulpd ymm14,ymm2,YMMWORD PTR [rcx+r14*8]
  7be7e0:	c4 41 05 5c fe       	vsubpd ymm15,ymm15,ymm14
  7be7e5:	c4 01 05 59 34 f7    	vmulpd ymm14,ymm15,YMMWORD PTR [r15+r14*8]
  7be7eb:	c4 c1 75 58 ce       	vaddpd ymm1,ymm1,ymm14
  7be7f0:	c5 fd 58 c1          	vaddpd ymm0,ymm0,ymm1
  7be7f4:	c4 81 7d 11 04 f1    	vmovupd YMMWORD PTR [r9+r14*8],ymm0
  7be7fa:	49 83 c6 04          	add    r14,0x4
  7be7fe:	4d 3b f5             	cmp    r14,r13
  7be801:	72 ad                	jb     7be7b0 <pre_step3d_mod_mp_pre_step3d_tile_+0x51b0>
  7be803:	48 8b 95 30 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x5d0]
  7be80a:	48 8b b5 38 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x5c8]
  7be811:	4c 8b a5 40 fa ff ff 	mov    r12,QWORD PTR [rbp-0x5c0]
  7be818:	4c 8b ad 48 fa ff ff 	mov    r13,QWORD PTR [rbp-0x5b8]
  7be81f:	48 8b 4d c0          	mov    rcx,QWORD PTR [rbp-0x40]
  7be823:	48 3b c1             	cmp    rax,rcx
  7be826:	0f 83 fb 00 00 00    	jae    7be927 <pre_step3d_mod_mp_pre_step3d_tile_+0x5327>
  7be82c:	4c 8b 8d 68 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x698]
  7be833:	4c 8b bd 78 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x688]
  7be83a:	4c 8b b5 60 fe ff ff 	mov    r14,QWORD PTR [rbp-0x1a0]
  7be841:	4c 8b 9d 20 fc ff ff 	mov    r11,QWORD PTR [rbp-0x3e0]
  7be848:	4d 8d 04 31          	lea    r8,[r9+rsi*1]
  7be84c:	4c 89 85 90 f9 ff ff 	mov    QWORD PTR [rbp-0x670],r8
  7be853:	4d 8d 0c 17          	lea    r9,[r15+rdx*1]
  7be857:	4c 8b 85 60 f9 ff ff 	mov    r8,QWORD PTR [rbp-0x6a0]
  7be85e:	4d 03 f4             	add    r14,r12
  7be861:	4c 8b 95 70 f9 ff ff 	mov    r10,QWORD PTR [rbp-0x690]
  7be868:	4d 03 dc             	add    r11,r12
  7be86b:	48 89 b5 38 fa ff ff 	mov    QWORD PTR [rbp-0x5c8],rsi
  7be872:	4c 89 a5 40 fa ff ff 	mov    QWORD PTR [rbp-0x5c0],r12
  7be879:	4d 8d 3c 10          	lea    r15,[r8+rdx*1]
  7be87d:	4c 89 bd 98 f9 ff ff 	mov    QWORD PTR [rbp-0x668],r15
  7be884:	4c 03 d6             	add    r10,rsi
  7be887:	4c 8b bd 50 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6b0]
  7be88e:	4c 8b 85 58 f9 ff ff 	mov    r8,QWORD PTR [rbp-0x6a8]
  7be895:	4c 89 ad 48 fa ff ff 	mov    QWORD PTR [rbp-0x5b8],r13
  7be89c:	4c 8b a5 98 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x668]
  7be8a3:	4c 03 ff             	add    r15,rdi
  7be8a6:	4c 03 c7             	add    r8,rdi
  7be8a9:	4c 89 fe             	mov    rsi,r15
  7be8ac:	4c 8b ad 90 f9 ff ff 	mov    r13,QWORD PTR [rbp-0x670]
  7be8b3:	4c 8b bd 48 ff ff ff 	mov    r15,QWORD PTR [rbp-0xb8]
  7be8ba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  7be8c0:	c4 41 7b 10 34 c1    	vmovsd xmm14,QWORD PTR [r9+rax*8]
  7be8c6:	c4 41 3b 59 7c c5 00 	vmulsd xmm15,xmm8,QWORD PTR [r13+rax*8+0x0]
  7be8cd:	c4 c1 0b 58 44 c4 f8 	vaddsd xmm0,xmm14,QWORD PTR [r12+rax*8-0x8]
  7be8d4:	c4 41 7b 10 74 c3 08 	vmovsd xmm14,QWORD PTR [r11+rax*8+0x8]
  7be8db:	c5 83 59 c8          	vmulsd xmm1,xmm15,xmm0
  7be8df:	c4 c1 0b 5c 04 c6    	vsubsd xmm0,xmm14,QWORD PTR [r14+rax*8]
  7be8e5:	c5 63 59 3c c6       	vmulsd xmm15,xmm3,QWORD PTR [rsi+rax*8]
  7be8ea:	c4 41 1b 59 34 c0    	vmulsd xmm14,xmm12,QWORD PTR [r8+rax*8]
  7be8f0:	c4 41 03 5c fe       	vsubsd xmm15,xmm15,xmm14
  7be8f5:	c4 41 03 59 34 c7    	vmulsd xmm14,xmm15,QWORD PTR [r15+rax*8]
  7be8fb:	c4 c1 73 58 ce       	vaddsd xmm1,xmm1,xmm14
  7be900:	c5 f3 58 c0          	vaddsd xmm0,xmm1,xmm0
  7be904:	c4 c1 7b 11 04 c2    	vmovsd QWORD PTR [r10+rax*8],xmm0
  7be90a:	48 ff c0             	inc    rax
  7be90d:	48 3b c1             	cmp    rax,rcx
  7be910:	72 ae                	jb     7be8c0 <pre_step3d_mod_mp_pre_step3d_tile_+0x52c0>
  7be912:	48 8b b5 38 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x5c8]
  7be919:	4c 8b a5 40 fa ff ff 	mov    r12,QWORD PTR [rbp-0x5c0]
  7be920:	4c 8b ad 48 fa ff ff 	mov    r13,QWORD PTR [rbp-0x5b8]
  7be927:	49 ff c5             	inc    r13
  7be92a:	4c 03 a5 18 ff ff ff 	add    r12,QWORD PTR [rbp-0xe8]
  7be931:	48 03 b5 20 ff ff ff 	add    rsi,QWORD PTR [rbp-0xe0]
  7be938:	48 03 95 10 fd ff ff 	add    rdx,QWORD PTR [rbp-0x2f0]
  7be93f:	48 03 bd 70 fa ff ff 	add    rdi,QWORD PTR [rbp-0x590]
  7be946:	4c 3b ad 08 fd ff ff 	cmp    r13,QWORD PTR [rbp-0x2f8]
  7be94d:	0f 82 86 fd ff ff    	jb     7be6d9 <pre_step3d_mod_mp_pre_step3d_tile_+0x50d9>
  7be953:	e9 46 04 00 00       	jmp    7bed9e <pre_step3d_mod_mp_pre_step3d_tile_+0x579e>
  7be958:	45 33 e4             	xor    r12d,r12d
  7be95b:	33 f6                	xor    esi,esi
  7be95d:	33 c9                	xor    ecx,ecx
  7be95f:	33 d2                	xor    edx,edx
  7be961:	33 c0                	xor    eax,eax
  7be963:	48 83 bd 08 fd ff ff 	cmp    QWORD PTR [rbp-0x2f8],0x0
  7be96a:	00 
  7be96b:	0f 8e 80 04 00 00    	jle    7bedf1 <pre_step3d_mod_mp_pre_step3d_tile_+0x57f1>
  7be971:	4c 8b b5 58 f6 ff ff 	mov    r14,QWORD PTR [rbp-0x9a8]
  7be978:	4c 0f af f7          	imul   r14,rdi
  7be97c:	4c 8b ad c0 f4 ff ff 	mov    r13,QWORD PTR [rbp-0xb40]
  7be983:	4c 0f af ef          	imul   r13,rdi
  7be987:	4c 8b bd 30 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x7d0]
  7be98e:	c5 fb 11 a5 00 f2 ff 	vmovsd QWORD PTR [rbp-0xe00],xmm4
  7be995:	ff 
  7be996:	c5 fb 11 9d f8 f1 ff 	vmovsd QWORD PTR [rbp-0xe08],xmm3
  7be99d:	ff 
  7be99e:	c5 fb 11 95 f0 f1 ff 	vmovsd QWORD PTR [rbp-0xe10],xmm2
  7be9a5:	ff 
  7be9a6:	4d 03 fb             	add    r15,r11
  7be9a9:	4c 89 bd f8 f9 ff ff 	mov    QWORD PTR [rbp-0x608],r15
  7be9b0:	4c 8b bd 70 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x990]
  7be9b7:	4c 89 a5 88 fa ff ff 	mov    QWORD PTR [rbp-0x578],r12
  7be9be:	48 89 bd d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],rdi
  7be9c5:	44 89 85 b8 f8 ff ff 	mov    DWORD PTR [rbp-0x748],r8d
  7be9cc:	4d 03 fe             	add    r15,r14
  7be9cf:	4c 89 bd e8 f9 ff ff 	mov    QWORD PTR [rbp-0x618],r15
  7be9d6:	4c 8b bd b8 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb48]
  7be9dd:	4c 03 b5 68 f6 ff ff 	add    r14,QWORD PTR [rbp-0x998]
  7be9e4:	4c 89 b5 b0 f9 ff ff 	mov    QWORD PTR [rbp-0x650],r14
  7be9eb:	4c 89 8d c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],r9
  7be9f2:	4d 03 fd             	add    r15,r13
  7be9f5:	4c 89 bd e0 f9 ff ff 	mov    QWORD PTR [rbp-0x620],r15
  7be9fc:	4c 8b bd 80 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x980]
  7bea03:	4c 03 ad d8 f4 ff ff 	add    r13,QWORD PTR [rbp-0xb28]
  7bea0a:	4c 89 ad a8 f9 ff ff 	mov    QWORD PTR [rbp-0x658],r13
  7bea11:	4c 89 9d c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r11
  7bea18:	4d 03 fb             	add    r15,r11
  7bea1b:	4c 89 bd d8 f9 ff ff 	mov    QWORD PTR [rbp-0x628],r15
  7bea22:	44 89 95 d0 f8 ff ff 	mov    DWORD PTR [rbp-0x730],r10d
  7bea29:	c5 fb 10 05 67 df 08 	vmovsd xmm0,QWORD PTR [rip+0x8df67]        # 84c998 <__STRLITPACK_0.112+0x888>
  7bea30:	00 
  7bea31:	c5 fb 10 0d 57 df 08 	vmovsd xmm1,QWORD PTR [rip+0x8df57]        # 84c990 <__STRLITPACK_0.112+0x880>
  7bea38:	00 
  7bea39:	c5 f9 10 25 4f d4 08 	vmovupd xmm4,XMMWORD PTR [rip+0x8d44f]        # 84be90 <__STRLITPACK_54.50+0xa0>
  7bea40:	00 
  7bea41:	c5 f9 10 15 37 d4 08 	vmovupd xmm2,XMMWORD PTR [rip+0x8d437]        # 84be80 <__STRLITPACK_54.50+0x90>
  7bea48:	00 
  7bea49:	c5 f9 10 1d 9f cf 08 	vmovupd xmm3,XMMWORD PTR [rip+0x8cf9f]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  7bea50:	00 
  7bea51:	48 8b bd 00 ff ff ff 	mov    rdi,QWORD PTR [rbp-0x100]
  7bea58:	48 3b bd 08 ff ff ff 	cmp    rdi,QWORD PTR [rbp-0xf8]
  7bea5f:	0f 8c ff 02 00 00    	jl     7bed64 <pre_step3d_mod_mp_pre_step3d_tile_+0x5764>
  7bea65:	48 83 7d c8 00       	cmp    QWORD PTR [rbp-0x38],0x0
  7bea6a:	0f 84 b0 ac 00 00    	je     7c9720 <pre_step3d_mod_mp_pre_step3d_tile_+0x10120>
  7bea70:	48 83 7d c0 02       	cmp    QWORD PTR [rbp-0x40],0x2
  7bea75:	0f 8c a5 ac 00 00    	jl     7c9720 <pre_step3d_mod_mp_pre_step3d_tile_+0x10120>
  7bea7b:	48 8b bd a8 f9 ff ff 	mov    rdi,QWORD PTR [rbp-0x658]
  7bea82:	4c 8b 65 e0          	mov    r12,QWORD PTR [rbp-0x20]
  7bea86:	4c 8b bd f8 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x608]
  7bea8d:	4c 8b b5 b0 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x650]
  7bea94:	4c 8d 04 07          	lea    r8,[rdi+rax*1]
  7bea98:	48 8b bd d8 f9 ff ff 	mov    rdi,QWORD PTR [rbp-0x628]
  7bea9f:	4c 89 a5 80 fa ff ff 	mov    QWORD PTR [rbp-0x580],r12
  7beaa6:	45 33 e4             	xor    r12d,r12d
  7beaa9:	4c 8b 9d 60 fe ff ff 	mov    r11,QWORD PTR [rbp-0x1a0]
  7beab0:	4c 03 f9             	add    r15,rcx
  7beab3:	4c 8b 95 20 fc ff ff 	mov    r10,QWORD PTR [rbp-0x3e0]
  7beaba:	4c 03 f2             	add    r14,rdx
  7beabd:	4c 8b 8d e8 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x618]
  7beac4:	4c 8b ad e0 f9 ff ff 	mov    r13,QWORD PTR [rbp-0x620]
  7beacb:	4c 03 de             	add    r11,rsi
  7beace:	4c 89 85 c0 f9 ff ff 	mov    QWORD PTR [rbp-0x640],r8
  7bead5:	4c 8d 04 0f          	lea    r8,[rdi+rcx*1]
  7bead9:	4c 89 85 b8 f9 ff ff 	mov    QWORD PTR [rbp-0x648],r8
  7beae0:	45 33 c0             	xor    r8d,r8d
  7beae3:	33 ff                	xor    edi,edi
  7beae5:	4c 03 d6             	add    r10,rsi
  7beae8:	4c 03 ca             	add    r9,rdx
  7beaeb:	4c 89 b5 68 ff ff ff 	mov    QWORD PTR [rbp-0x98],r14
  7beaf2:	4c 03 e8             	add    r13,rax
  7beaf5:	4c 89 bd 70 ff ff ff 	mov    QWORD PTR [rbp-0x90],r15
  7beafc:	48 89 8d 60 fa ff ff 	mov    QWORD PTR [rbp-0x5a0],rcx
  7beb03:	48 89 b5 68 fa ff ff 	mov    QWORD PTR [rbp-0x598],rsi
  7beb0a:	48 89 85 50 fa ff ff 	mov    QWORD PTR [rbp-0x5b0],rax
  7beb11:	48 89 95 58 fa ff ff 	mov    QWORD PTR [rbp-0x5a8],rdx
  7beb18:	49 89 ff             	mov    r15,rdi
  7beb1b:	48 8b 8d b8 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x648]
  7beb22:	48 8b b5 c0 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x640]
  7beb29:	4c 8b 75 c8          	mov    r14,QWORD PTR [rbp-0x38]
  7beb2d:	48 8b 85 70 ff ff ff 	mov    rax,QWORD PTR [rbp-0x90]
  7beb34:	48 8b 95 58 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xa8]
  7beb3b:	49 03 c0             	add    rax,r8
  7beb3e:	c5 7b 10 28          	vmovsd xmm13,QWORD PTR [rax]
  7beb42:	c4 21 11 16 34 30    	vmovhpd xmm14,xmm13,QWORD PTR [rax+r14*1]
  7beb48:	49 8d 04 39          	lea    rax,[r9+rdi*1]
  7beb4c:	c5 7b 10 20          	vmovsd xmm12,QWORD PTR [rax]
  7beb50:	c5 09 59 fb          	vmulpd xmm15,xmm14,xmm3
  7beb54:	c5 19 16 34 10       	vmovhpd xmm14,xmm12,QWORD PTR [rax+rdx*1]
  7beb59:	48 8b 85 68 ff ff ff 	mov    rax,QWORD PTR [rbp-0x98]
  7beb60:	48 03 c7             	add    rax,rdi
  7beb63:	c5 7b 10 28          	vmovsd xmm13,QWORD PTR [rax]
  7beb67:	48 8d 3c 57          	lea    rdi,[rdi+rdx*2]
  7beb6b:	c5 11 16 24 10       	vmovhpd xmm12,xmm13,QWORD PTR [rax+rdx*1]
  7beb70:	4b 8d 54 3d 00       	lea    rdx,[r13+r15*1+0x0]
  7beb75:	c4 41 09 58 ec       	vaddpd xmm13,xmm14,xmm12
  7beb7a:	c4 41 01 59 f5       	vmulpd xmm14,xmm15,xmm13
  7beb7f:	c4 01 79 10 7c e2 08 	vmovupd xmm15,XMMWORD PTR [r10+r12*8+0x8]
  7beb86:	48 8b 85 50 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb0]
  7beb8d:	c5 7b 10 22          	vmovsd xmm12,QWORD PTR [rdx]
  7beb91:	c4 01 01 5c 2c e3    	vsubpd xmm13,xmm15,XMMWORD PTR [r11+r12*8]
  7beb97:	c5 19 16 3c 02       	vmovhpd xmm15,xmm12,QWORD PTR [rdx+rax*1]
  7beb9c:	4a 8d 14 3e          	lea    rdx,[rsi+r15*1]
  7beba0:	c4 41 69 59 e7       	vmulpd xmm12,xmm2,xmm15
  7beba5:	c5 7b 10 3a          	vmovsd xmm15,QWORD PTR [rdx]
  7beba9:	4d 8d 3c 47          	lea    r15,[r15+rax*2]
  7bebad:	c5 01 16 3c 02       	vmovhpd xmm15,xmm15,QWORD PTR [rdx+rax*1]
  7bebb2:	c4 41 59 59 ff       	vmulpd xmm15,xmm4,xmm15
  7bebb7:	c4 41 19 5c e7       	vsubpd xmm12,xmm12,xmm15
  7bebbc:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
  7bebc3:	c4 21 19 59 24 e0    	vmulpd xmm12,xmm12,XMMWORD PTR [rax+r12*8]
  7bebc9:	c4 41 09 58 f4       	vaddpd xmm14,xmm14,xmm12
  7bebce:	c4 41 11 58 ee       	vaddpd xmm13,xmm13,xmm14
  7bebd3:	49 83 c4 02          	add    r12,0x2
  7bebd7:	49 8d 04 08          	lea    rax,[r8+rcx*1]
  7bebdb:	c5 7b 11 28          	vmovsd QWORD PTR [rax],xmm13
  7bebdf:	4f 8d 04 70          	lea    r8,[r8+r14*2]
  7bebe3:	c4 41 79 17 2c 06    	vmovhpd QWORD PTR [r14+rax*1],xmm13
  7bebe9:	4c 3b 65 e0          	cmp    r12,QWORD PTR [rbp-0x20]
  7bebed:	0f 82 3a ff ff ff    	jb     7beb2d <pre_step3d_mod_mp_pre_step3d_tile_+0x552d>
  7bebf3:	48 8b 85 50 fa ff ff 	mov    rax,QWORD PTR [rbp-0x5b0]
  7bebfa:	48 8b 95 58 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x5a8]
  7bec01:	48 8b 8d 60 fa ff ff 	mov    rcx,QWORD PTR [rbp-0x5a0]
  7bec08:	48 8b b5 68 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x598]
  7bec0f:	48 8b bd 80 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x580]
  7bec16:	4c 8b ad 50 ff ff ff 	mov    r13,QWORD PTR [rbp-0xb0]
  7bec1d:	4c 8b b5 58 ff ff ff 	mov    r14,QWORD PTR [rbp-0xa8]
  7bec24:	4c 8b 65 c8          	mov    r12,QWORD PTR [rbp-0x38]
  7bec28:	4c 0f af ef          	imul   r13,rdi
  7bec2c:	4c 0f af f7          	imul   r14,rdi
  7bec30:	4c 0f af e7          	imul   r12,rdi
  7bec34:	48 3b 7d c0          	cmp    rdi,QWORD PTR [rbp-0x40]
  7bec38:	0f 83 26 01 00 00    	jae    7bed64 <pre_step3d_mod_mp_pre_step3d_tile_+0x5764>
  7bec3e:	4c 8b bd e0 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x620]
  7bec45:	4c 8b 9d 60 fe ff ff 	mov    r11,QWORD PTR [rbp-0x1a0]
  7bec4c:	4c 8b 95 20 fc ff ff 	mov    r10,QWORD PTR [rbp-0x3e0]
  7bec53:	4c 8b 8d f8 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x608]
  7bec5a:	4c 03 f8             	add    r15,rax
  7bec5d:	4c 89 bd d0 f9 ff ff 	mov    QWORD PTR [rbp-0x630],r15
  7bec64:	4c 03 de             	add    r11,rsi
  7bec67:	4c 8b bd a8 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x658]
  7bec6e:	4c 03 d6             	add    r10,rsi
  7bec71:	4c 8b 85 e8 f9 ff ff 	mov    r8,QWORD PTR [rbp-0x618]
  7bec78:	4c 03 c9             	add    r9,rcx
  7bec7b:	48 8b bd b0 f9 ff ff 	mov    rdi,QWORD PTR [rbp-0x650]
  7bec82:	48 89 85 50 fa ff ff 	mov    QWORD PTR [rbp-0x5b0],rax
  7bec89:	4c 03 f8             	add    r15,rax
  7bec8c:	4c 89 bd c8 f9 ff ff 	mov    QWORD PTR [rbp-0x638],r15
  7bec93:	4c 03 c2             	add    r8,rdx
  7bec96:	4c 8b bd d8 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x628]
  7bec9d:	48 03 fa             	add    rdi,rdx
  7beca0:	48 89 95 58 fa ff ff 	mov    QWORD PTR [rbp-0x5a8],rdx
  7beca7:	48 89 8d 60 fa ff ff 	mov    QWORD PTR [rbp-0x5a0],rcx
  7becae:	48 89 b5 68 fa ff ff 	mov    QWORD PTR [rbp-0x598],rsi
  7becb5:	4c 03 f9             	add    r15,rcx
  7becb8:	4c 89 f8             	mov    rax,r15
  7becbb:	48 8b 95 c8 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x638]
  7becc2:	48 8b 8d d0 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x630]
  7becc9:	48 8b b5 80 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x580]
  7becd0:	4c 8b bd 48 ff ff ff 	mov    r15,QWORD PTR [rbp-0xb8]
  7becd7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  7becde:	00 00 
  7bece0:	c4 01 7b 10 34 06    	vmovsd xmm14,QWORD PTR [r14+r8*1]
  7bece6:	c4 01 3b 59 3c 0c    	vmulsd xmm15,xmm8,QWORD PTR [r12+r9*1]
  7becec:	c4 41 0b 58 24 3e    	vaddsd xmm12,xmm14,QWORD PTR [r14+rdi*1]
  7becf2:	c4 41 7b 10 74 f2 08 	vmovsd xmm14,QWORD PTR [r10+rsi*8+0x8]
  7becf9:	c4 41 03 59 ec       	vmulsd xmm13,xmm15,xmm12
  7becfe:	c4 41 0b 5c 24 f3    	vsubsd xmm12,xmm14,QWORD PTR [r11+rsi*8]
  7bed04:	c4 41 73 59 7c 0d 00 	vmulsd xmm15,xmm1,QWORD PTR [r13+rcx*1+0x0]
  7bed0b:	c4 41 7b 59 74 15 00 	vmulsd xmm14,xmm0,QWORD PTR [r13+rdx*1+0x0]
  7bed12:	4c 03 b5 58 ff ff ff 	add    r14,QWORD PTR [rbp-0xa8]
  7bed19:	c4 41 03 5c fe       	vsubsd xmm15,xmm15,xmm14
  7bed1e:	c4 41 03 59 34 f7    	vmulsd xmm14,xmm15,QWORD PTR [r15+rsi*8]
  7bed24:	48 ff c6             	inc    rsi
  7bed27:	4c 03 ad 50 ff ff ff 	add    r13,QWORD PTR [rbp-0xb0]
  7bed2e:	c4 41 13 58 ee       	vaddsd xmm13,xmm13,xmm14
  7bed33:	c4 41 13 58 e4       	vaddsd xmm12,xmm13,xmm12
  7bed38:	c4 41 7b 11 24 04    	vmovsd QWORD PTR [r12+rax*1],xmm12
  7bed3e:	4c 03 65 c8          	add    r12,QWORD PTR [rbp-0x38]
  7bed42:	48 3b 75 c0          	cmp    rsi,QWORD PTR [rbp-0x40]
  7bed46:	72 98                	jb     7bece0 <pre_step3d_mod_mp_pre_step3d_tile_+0x56e0>
  7bed48:	48 8b 85 50 fa ff ff 	mov    rax,QWORD PTR [rbp-0x5b0]
  7bed4f:	48 8b 95 58 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x5a8]
  7bed56:	48 8b 8d 60 fa ff ff 	mov    rcx,QWORD PTR [rbp-0x5a0]
  7bed5d:	48 8b b5 68 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x598]
  7bed64:	48 8b bd 88 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x578]
  7bed6b:	48 ff c7             	inc    rdi
  7bed6e:	48 03 b5 18 ff ff ff 	add    rsi,QWORD PTR [rbp-0xe8]
  7bed75:	48 03 8d 20 ff ff ff 	add    rcx,QWORD PTR [rbp-0xe0]
  7bed7c:	48 03 95 10 fd ff ff 	add    rdx,QWORD PTR [rbp-0x2f0]
  7bed83:	48 03 85 70 fa ff ff 	add    rax,QWORD PTR [rbp-0x590]
  7bed8a:	48 89 bd 88 fa ff ff 	mov    QWORD PTR [rbp-0x578],rdi
  7bed91:	48 3b bd 08 fd ff ff 	cmp    rdi,QWORD PTR [rbp-0x2f8]
  7bed98:	0f 82 b3 fc ff ff    	jb     7bea51 <pre_step3d_mod_mp_pre_step3d_tile_+0x5451>
  7bed9e:	c5 fb 10 a5 00 f2 ff 	vmovsd xmm4,QWORD PTR [rbp-0xe00]
  7beda5:	ff 
  7beda6:	c5 fb 10 9d f8 f1 ff 	vmovsd xmm3,QWORD PTR [rbp-0xe08]
  7bedad:	ff 
  7bedae:	c5 fb 10 95 f0 f1 ff 	vmovsd xmm2,QWORD PTR [rbp-0xe10]
  7bedb5:	ff 
  7bedb6:	48 8b bd d8 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x728]
  7bedbd:	44 8b 85 b8 f8 ff ff 	mov    r8d,DWORD PTR [rbp-0x748]
  7bedc4:	4c 8b 8d c0 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x740]
  7bedcb:	4c 8b 9d c8 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x738]
  7bedd2:	44 8b 95 d0 f8 ff ff 	mov    r10d,DWORD PTR [rbp-0x730]
  7bedd9:	c5 fd 10 0d 7f b2 08 	vmovupd ymm1,YMMWORD PTR [rip+0x8b27f]        # 84a060 <var$630.126.450+0xc0>
  7bede0:	00 
  7bede1:	c5 f9 10 05 b7 c9 08 	vmovupd xmm0,XMMWORD PTR [rip+0x8c9b7]        # 84b7a0 <__STRLITPACK_219.115+0xa0>
  7bede8:	00 
  7bede9:	c5 7b 10 2d 8f d3 08 	vmovsd xmm13,QWORD PTR [rip+0x8d38f]        # 84c180 <__STRLITPACK_0.112+0x70>
  7bedf0:	00 
  7bedf1:	44 3b 95 c8 fb ff ff 	cmp    r10d,DWORD PTR [rbp-0x438]
  7bedf8:	0f 8c f4 24 00 00    	jl     7c12f2 <pre_step3d_mod_mp_pre_step3d_tile_+0x7cf2>
  7bedfe:	48 83 7d d0 08       	cmp    QWORD PTR [rbp-0x30],0x8
  7bee03:	0f 85 c5 03 00 00    	jne    7bf1ce <pre_step3d_mod_mp_pre_step3d_tile_+0x5bce>
  7bee09:	48 83 7d 80 08       	cmp    QWORD PTR [rbp-0x80],0x8
  7bee0e:	0f 85 ba 03 00 00    	jne    7bf1ce <pre_step3d_mod_mp_pre_step3d_tile_+0x5bce>
  7bee14:	48 83 7d d8 08       	cmp    QWORD PTR [rbp-0x28],0x8
  7bee19:	0f 85 af 03 00 00    	jne    7bf1ce <pre_step3d_mod_mp_pre_step3d_tile_+0x5bce>
  7bee1f:	48 8b 95 90 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x570]
  7bee26:	33 c0                	xor    eax,eax
  7bee28:	48 89 85 18 fc ff ff 	mov    QWORD PTR [rbp-0x3e8],rax
  7bee2f:	48 89 95 90 fb ff ff 	mov    QWORD PTR [rbp-0x470],rdx
  7bee36:	48 89 85 88 fb ff ff 	mov    QWORD PTR [rbp-0x478],rax
  7bee3d:	48 89 85 80 fb ff ff 	mov    QWORD PTR [rbp-0x480],rax
  7bee44:	48 89 85 28 f2 ff ff 	mov    QWORD PTR [rbp-0xdd8],rax
  7bee4b:	48 83 bd 10 ff ff ff 	cmp    QWORD PTR [rbp-0xf0],0x0
  7bee52:	00 
  7bee53:	0f 8e e5 07 00 00    	jle    7bf63e <pre_step3d_mod_mp_pre_step3d_tile_+0x603e>
  7bee59:	4c 8b b5 a8 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x758]
  7bee60:	4c 8b ad 98 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xa68]
  7bee67:	4c 0f af f7          	imul   r14,rdi
  7bee6b:	4c 0f af ef          	imul   r13,rdi
  7bee6f:	48 8b b5 d8 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xa28]
  7bee76:	48 8b 8d 80 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xa80]
  7bee7d:	48 8b 95 00 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0xa00]
  7bee84:	4c 8b a5 e0 f5 ff ff 	mov    r12,QWORD PTR [rbp-0xa20]
  7bee8b:	49 03 f1             	add    rsi,r9
  7bee8e:	48 8b 85 d0 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xa30]
  7bee95:	49 03 ce             	add    rcx,r14
  7bee98:	4c 8b bd f8 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xa08]
  7bee9f:	49 03 d6             	add    rdx,r14
  7beea2:	48 89 95 b8 fa ff ff 	mov    QWORD PTR [rbp-0x548],rdx
  7beea9:	4d 03 e1             	add    r12,r9
  7beeac:	48 89 8d c0 fa ff ff 	mov    QWORD PTR [rbp-0x540],rcx
  7beeb3:	49 03 c6             	add    rax,r14
  7beeb6:	4c 03 b5 b0 f5 ff ff 	add    r14,QWORD PTR [rbp-0xa50]
  7beebd:	4d 03 fd             	add    r15,r13
  7beec0:	4c 03 ad 88 f5 ff ff 	add    r13,QWORD PTR [rbp-0xa78]
  7beec7:	48 89 b5 c8 fa ff ff 	mov    QWORD PTR [rbp-0x538],rsi
  7beece:	48 89 bd d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],rdi
  7beed5:	44 89 85 b8 f8 ff ff 	mov    DWORD PTR [rbp-0x748],r8d
  7beedc:	4c 89 b5 98 fa ff ff 	mov    QWORD PTR [rbp-0x568],r14
  7beee3:	4c 89 ad a0 fa ff ff 	mov    QWORD PTR [rbp-0x560],r13
  7beeea:	4c 89 bd a8 fa ff ff 	mov    QWORD PTR [rbp-0x558],r15
  7beef1:	48 89 85 b0 fa ff ff 	mov    QWORD PTR [rbp-0x550],rax
  7beef8:	4c 89 a5 d0 fa ff ff 	mov    QWORD PTR [rbp-0x530],r12
  7beeff:	4c 89 8d c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],r9
  7bef06:	4c 89 9d c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r11
  7bef0d:	44 89 95 d0 f8 ff ff 	mov    DWORD PTR [rbp-0x730],r10d
  7bef14:	4c 8b 85 28 f2 ff ff 	mov    r8,QWORD PTR [rbp-0xdd8]
  7bef1b:	48 8b 8d 80 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x480]
  7bef22:	48 8b b5 88 fb ff ff 	mov    rsi,QWORD PTR [rbp-0x478]
  7bef29:	48 8b bd 90 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x470]
  7bef30:	48 8b 95 78 ff ff ff 	mov    rdx,QWORD PTR [rbp-0x88]
  7bef37:	48 8b 85 00 ff ff ff 	mov    rax,QWORD PTR [rbp-0x100]
  7bef3e:	48 3b 85 f8 fb ff ff 	cmp    rax,QWORD PTR [rbp-0x408]
  7bef45:	0f 8c 44 02 00 00    	jl     7bf18f <pre_step3d_mod_mp_pre_step3d_tile_+0x5b8f>
  7bef4b:	48 83 fa 04          	cmp    rdx,0x4
  7bef4f:	0f 8c 60 a7 00 00    	jl     7c96b5 <pre_step3d_mod_mp_pre_step3d_tile_+0x100b5>
  7bef55:	4c 8b 8d a0 fa ff ff 	mov    r9,QWORD PTR [rbp-0x560]
  7bef5c:	45 33 f6             	xor    r14d,r14d
  7bef5f:	4c 8b ad b0 fa ff ff 	mov    r13,QWORD PTR [rbp-0x550]
  7bef66:	4c 8b a5 c0 fa ff ff 	mov    r12,QWORD PTR [rbp-0x540]
  7bef6d:	4c 8b 9d b8 fa ff ff 	mov    r11,QWORD PTR [rbp-0x548]
  7bef74:	4d 8d 3c 09          	lea    r15,[r9+rcx*1]
  7bef78:	4c 89 bd 08 fb ff ff 	mov    QWORD PTR [rbp-0x4f8],r15
  7bef7f:	4c 03 ee             	add    r13,rsi
  7bef82:	4c 8b bd d0 fa ff ff 	mov    r15,QWORD PTR [rbp-0x530]
  7bef89:	4c 03 e6             	add    r12,rsi
  7bef8c:	4c 8b 95 98 fa ff ff 	mov    r10,QWORD PTR [rbp-0x568]
  7bef93:	4c 03 de             	add    r11,rsi
  7bef96:	4c 8b 8d a8 fa ff ff 	mov    r9,QWORD PTR [rbp-0x558]
  7bef9d:	48 89 bd d8 fa ff ff 	mov    QWORD PTR [rbp-0x528],rdi
  7befa4:	4d 03 f8             	add    r15,r8
  7befa7:	4c 89 bd f0 fa ff ff 	mov    QWORD PTR [rbp-0x510],r15
  7befae:	4c 03 d6             	add    r10,rsi
  7befb1:	4c 8b bd c8 fa ff ff 	mov    r15,QWORD PTR [rbp-0x538]
  7befb8:	4c 03 c9             	add    r9,rcx
  7befbb:	48 8b 85 e0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x120]
  7befc2:	48 89 8d 80 fb ff ff 	mov    QWORD PTR [rbp-0x480],rcx
  7befc9:	48 89 b5 88 fb ff ff 	mov    QWORD PTR [rbp-0x478],rsi
  7befd0:	4d 03 f8             	add    r15,r8
  7befd3:	4c 89 bd e0 fa ff ff 	mov    QWORD PTR [rbp-0x520],r15
  7befda:	49 89 c7             	mov    r15,rax
  7befdd:	48 89 bd 90 fb ff ff 	mov    QWORD PTR [rbp-0x470],rdi
  7befe4:	48 8b 95 d8 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x528]
  7befeb:	48 8b 8d e0 fa ff ff 	mov    rcx,QWORD PTR [rbp-0x520]
  7beff2:	48 8b b5 f0 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x510]
  7beff9:	48 8b bd 08 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x4f8]
  7bf000:	c4 01 7d 10 24 f3    	vmovupd ymm12,YMMWORD PTR [r11+r14*8]
  7bf006:	c4 01 1d 58 34 f4    	vaddpd ymm14,ymm12,YMMWORD PTR [r12+r14*8]
  7bf00c:	c4 01 0d 5c 7c f5 00 	vsubpd ymm15,ymm14,YMMWORD PTR [r13+r14*8+0x0]
  7bf013:	c4 01 05 5c 24 f2    	vsubpd ymm12,ymm15,YMMWORD PTR [r10+r14*8]
  7bf019:	c4 01 7d 10 3c f1    	vmovupd ymm15,YMMWORD PTR [r9+r14*8]
  7bf01f:	c4 41 75 5e f4       	vdivpd ymm14,ymm1,ymm12
  7bf024:	c5 0d 59 e7          	vmulpd ymm12,ymm14,ymm7
  7bf028:	c4 21 05 5c 34 f7    	vsubpd ymm14,ymm15,YMMWORD PTR [rdi+r14*8]
  7bf02e:	c4 21 7d 10 3c f1    	vmovupd ymm15,YMMWORD PTR [rcx+r14*8]
  7bf034:	c4 41 1d 59 e6       	vmulpd ymm12,ymm12,ymm14
  7bf039:	c4 21 05 58 34 f6    	vaddpd ymm14,ymm15,YMMWORD PTR [rsi+r14*8]
  7bf03f:	c4 41 1d 59 fe       	vmulpd ymm15,ymm12,ymm14
  7bf044:	49 83 c6 04          	add    r14,0x4
  7bf048:	c5 7d 11 7a 08       	vmovupd YMMWORD PTR [rdx+0x8],ymm15
  7bf04d:	48 83 c2 20          	add    rdx,0x20
  7bf051:	4d 3b f7             	cmp    r14,r15
  7bf054:	72 aa                	jb     7bf000 <pre_step3d_mod_mp_pre_step3d_tile_+0x5a00>
  7bf056:	48 8b 8d 80 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x480]
  7bf05d:	48 8b b5 88 fb ff ff 	mov    rsi,QWORD PTR [rbp-0x478]
  7bf064:	48 8b bd 90 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x470]
  7bf06b:	48 8b 95 78 ff ff ff 	mov    rdx,QWORD PTR [rbp-0x88]
  7bf072:	4c 8d 34 c5 00 00 00 	lea    r14,[rax*8+0x0]
  7bf079:	00 
  7bf07a:	48 3b c2             	cmp    rax,rdx
  7bf07d:	0f 83 0c 01 00 00    	jae    7bf18f <pre_step3d_mod_mp_pre_step3d_tile_+0x5b8f>
  7bf083:	4c 8b bd a0 fa ff ff 	mov    r15,QWORD PTR [rbp-0x560]
  7bf08a:	4c 8d 2c c7          	lea    r13,[rdi+rax*8]
  7bf08e:	4c 8b a5 b0 fa ff ff 	mov    r12,QWORD PTR [rbp-0x550]
  7bf095:	4c 8b 9d c0 fa ff ff 	mov    r11,QWORD PTR [rbp-0x540]
  7bf09c:	4c 8b 95 b8 fa ff ff 	mov    r10,QWORD PTR [rbp-0x548]
  7bf0a3:	4c 03 f9             	add    r15,rcx
  7bf0a6:	4c 89 bd f8 fa ff ff 	mov    QWORD PTR [rbp-0x508],r15
  7bf0ad:	4c 03 e6             	add    r12,rsi
  7bf0b0:	4c 8b bd a8 fa ff ff 	mov    r15,QWORD PTR [rbp-0x558]
  7bf0b7:	4c 03 de             	add    r11,rsi
  7bf0ba:	4c 8b 8d 98 fa ff ff 	mov    r9,QWORD PTR [rbp-0x568]
  7bf0c1:	4c 03 d6             	add    r10,rsi
  7bf0c4:	48 89 8d 80 fb ff ff 	mov    QWORD PTR [rbp-0x480],rcx
  7bf0cb:	48 89 b5 88 fb ff ff 	mov    QWORD PTR [rbp-0x478],rsi
  7bf0d2:	4c 03 f9             	add    r15,rcx
  7bf0d5:	4c 89 bd 00 fb ff ff 	mov    QWORD PTR [rbp-0x500],r15
  7bf0dc:	4c 03 ce             	add    r9,rsi
  7bf0df:	4c 8b bd d0 fa ff ff 	mov    r15,QWORD PTR [rbp-0x530]
  7bf0e6:	48 89 bd 90 fb ff ff 	mov    QWORD PTR [rbp-0x470],rdi
  7bf0ed:	48 8b bd 00 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x500]
  7bf0f4:	4d 03 f8             	add    r15,r8
  7bf0f7:	4c 89 bd e8 fa ff ff 	mov    QWORD PTR [rbp-0x518],r15
  7bf0fe:	4c 8b bd c8 fa ff ff 	mov    r15,QWORD PTR [rbp-0x538]
  7bf105:	48 8b b5 e8 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x518]
  7bf10c:	4d 03 f8             	add    r15,r8
  7bf10f:	4c 89 f9             	mov    rcx,r15
  7bf112:	4c 8b bd f8 fa ff ff 	mov    r15,QWORD PTR [rbp-0x508]
  7bf119:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  7bf120:	c4 41 7b 10 24 c2    	vmovsd xmm12,QWORD PTR [r10+rax*8]
  7bf126:	c4 41 1b 58 34 c3    	vaddsd xmm14,xmm12,QWORD PTR [r11+rax*8]
  7bf12c:	c4 41 0b 5c 3c c4    	vsubsd xmm15,xmm14,QWORD PTR [r12+rax*8]
  7bf132:	c4 41 03 5c 24 c1    	vsubsd xmm12,xmm15,QWORD PTR [r9+rax*8]
  7bf138:	48 ff c0             	inc    rax
  7bf13b:	c4 41 13 5e f4       	vdivsd xmm14,xmm13,xmm12
  7bf140:	c4 41 7b 10 3c 3e    	vmovsd xmm15,QWORD PTR [r14+rdi*1]
  7bf146:	c4 41 63 59 e6       	vmulsd xmm12,xmm3,xmm14
  7bf14b:	c4 01 03 5c 34 3e    	vsubsd xmm14,xmm15,QWORD PTR [r14+r15*1]
  7bf151:	c4 41 7b 10 3c 0e    	vmovsd xmm15,QWORD PTR [r14+rcx*1]
  7bf157:	c4 41 1b 59 e6       	vmulsd xmm12,xmm12,xmm14
  7bf15c:	c4 41 03 58 34 36    	vaddsd xmm14,xmm15,QWORD PTR [r14+rsi*1]
  7bf162:	c4 41 1b 59 fe       	vmulsd xmm15,xmm12,xmm14
  7bf167:	49 83 c6 08          	add    r14,0x8
  7bf16b:	c4 41 7b 11 7d 08    	vmovsd QWORD PTR [r13+0x8],xmm15
  7bf171:	49 83 c5 08          	add    r13,0x8
  7bf175:	48 3b c2             	cmp    rax,rdx
  7bf178:	72 a6                	jb     7bf120 <pre_step3d_mod_mp_pre_step3d_tile_+0x5b20>
  7bf17a:	48 8b 8d 80 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x480]
  7bf181:	48 8b b5 88 fb ff ff 	mov    rsi,QWORD PTR [rbp-0x478]
  7bf188:	48 8b bd 90 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x470]
  7bf18f:	48 8b 85 18 fc ff ff 	mov    rax,QWORD PTR [rbp-0x3e8]
  7bf196:	48 ff c0             	inc    rax
  7bf199:	48 03 bd 18 ff ff ff 	add    rdi,QWORD PTR [rbp-0xe8]
  7bf1a0:	48 03 b5 30 ff ff ff 	add    rsi,QWORD PTR [rbp-0xd0]
  7bf1a7:	48 03 8d 00 fc ff ff 	add    rcx,QWORD PTR [rbp-0x400]
  7bf1ae:	4c 03 85 28 ff ff ff 	add    r8,QWORD PTR [rbp-0xd8]
  7bf1b5:	48 89 85 18 fc ff ff 	mov    QWORD PTR [rbp-0x3e8],rax
  7bf1bc:	48 3b 85 10 ff ff ff 	cmp    rax,QWORD PTR [rbp-0xf0]
  7bf1c3:	0f 82 6e fd ff ff    	jb     7bef37 <pre_step3d_mod_mp_pre_step3d_tile_+0x5937>
  7bf1c9:	e9 4d 04 00 00       	jmp    7bf61b <pre_step3d_mod_mp_pre_step3d_tile_+0x601b>
  7bf1ce:	45 33 e4             	xor    r12d,r12d
  7bf1d1:	33 c9                	xor    ecx,ecx
  7bf1d3:	33 d2                	xor    edx,edx
  7bf1d5:	33 f6                	xor    esi,esi
  7bf1d7:	33 c0                	xor    eax,eax
  7bf1d9:	48 83 bd 10 ff ff ff 	cmp    QWORD PTR [rbp-0xf0],0x0
  7bf1e0:	00 
  7bf1e1:	0f 8e 57 04 00 00    	jle    7bf63e <pre_step3d_mod_mp_pre_step3d_tile_+0x603e>
  7bf1e7:	4c 8b b5 a8 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x758]
  7bf1ee:	4c 0f af f7          	imul   r14,rdi
  7bf1f2:	4c 8b bd c0 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xa40]
  7bf1f9:	4c 8b ad 98 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xa68]
  7bf200:	4c 0f af ef          	imul   r13,rdi
  7bf204:	4c 89 a5 10 fc ff ff 	mov    QWORD PTR [rbp-0x3f0],r12
  7bf20b:	4d 03 fe             	add    r15,r14
  7bf20e:	4c 89 bd 50 fb ff ff 	mov    QWORD PTR [rbp-0x4b0],r15
  7bf215:	4c 8b bd a0 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xa60]
  7bf21c:	48 89 bd d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],rdi
  7bf223:	44 89 85 b8 f8 ff ff 	mov    DWORD PTR [rbp-0x748],r8d
  7bf22a:	4c 89 8d c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],r9
  7bf231:	4d 03 fe             	add    r15,r14
  7bf234:	4c 89 bd 78 fb ff ff 	mov    QWORD PTR [rbp-0x488],r15
  7bf23b:	4c 8b bd c8 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xa38]
  7bf242:	4c 89 9d c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r11
  7bf249:	44 89 95 d0 f8 ff ff 	mov    DWORD PTR [rbp-0x730],r10d
  7bf250:	4d 03 fe             	add    r15,r14
  7bf253:	4c 89 bd 58 fb ff ff 	mov    QWORD PTR [rbp-0x4a8],r15
  7bf25a:	4c 8b bd b8 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xa48]
  7bf261:	4c 03 b5 e8 f5 ff ff 	add    r14,QWORD PTR [rbp-0xa18]
  7bf268:	4c 89 b5 18 fb ff ff 	mov    QWORD PTR [rbp-0x4e8],r14
  7bf26f:	4d 03 fd             	add    r15,r13
  7bf272:	4c 89 bd 60 fb ff ff 	mov    QWORD PTR [rbp-0x4a0],r15
  7bf279:	4c 8b bd f0 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xa10]
  7bf280:	4c 03 ad 90 f5 ff ff 	add    r13,QWORD PTR [rbp-0xa70]
  7bf287:	4c 89 ad 10 fb ff ff 	mov    QWORD PTR [rbp-0x4f0],r13
  7bf28e:	4d 03 f9             	add    r15,r9
  7bf291:	4c 89 bd 68 fb ff ff 	mov    QWORD PTR [rbp-0x498],r15
  7bf298:	4c 8b bd a8 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xa58]
  7bf29f:	4d 03 f9             	add    r15,r9
  7bf2a2:	4c 89 bd 70 fb ff ff 	mov    QWORD PTR [rbp-0x490],r15
  7bf2a9:	48 8b bd 00 ff ff ff 	mov    rdi,QWORD PTR [rbp-0x100]
  7bf2b0:	48 3b bd f8 fb ff ff 	cmp    rdi,QWORD PTR [rbp-0x408]
  7bf2b7:	0f 8c 24 03 00 00    	jl     7bf5e1 <pre_step3d_mod_mp_pre_step3d_tile_+0x5fe1>
  7bf2bd:	48 83 bd 78 ff ff ff 	cmp    QWORD PTR [rbp-0x88],0x2
  7bf2c4:	02 
  7bf2c5:	0f 8c 45 a4 00 00    	jl     7c9710 <pre_step3d_mod_mp_pre_step3d_tile_+0x10110>
  7bf2cb:	48 8b bd 68 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x498]
  7bf2d2:	4c 8b 5d 88          	mov    r11,QWORD PTR [rbp-0x78]
  7bf2d6:	4c 8b bd 78 fb ff ff 	mov    r15,QWORD PTR [rbp-0x488]
  7bf2dd:	4c 8b b5 10 fb ff ff 	mov    r14,QWORD PTR [rbp-0x4f0]
  7bf2e4:	4c 8d 2c 07          	lea    r13,[rdi+rax*1]
  7bf2e8:	48 8b bd 70 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x490]
  7bf2ef:	4c 89 ad 38 fb ff ff 	mov    QWORD PTR [rbp-0x4c8],r13
  7bf2f6:	4c 03 fa             	add    r15,rdx
  7bf2f9:	4c 89 9d 08 fc ff ff 	mov    QWORD PTR [rbp-0x3f8],r11
  7bf300:	45 33 db             	xor    r11d,r11d
  7bf303:	4c 8b 95 50 fb ff ff 	mov    r10,QWORD PTR [rbp-0x4b0]
  7bf30a:	4c 8d 2c 07          	lea    r13,[rdi+rax*1]
  7bf30e:	48 8b bd 90 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x570]
  7bf315:	4c 03 f6             	add    r14,rsi
  7bf318:	4c 8b 8d 58 fb ff ff 	mov    r9,QWORD PTR [rbp-0x4a8]
  7bf31f:	4c 8b 85 18 fb ff ff 	mov    r8,QWORD PTR [rbp-0x4e8]
  7bf326:	4c 03 d2             	add    r10,rdx
  7bf329:	4c 8b a5 60 fb ff ff 	mov    r12,QWORD PTR [rbp-0x4a0]
  7bf330:	4c 89 ad 28 fb ff ff 	mov    QWORD PTR [rbp-0x4d8],r13
  7bf337:	4c 8d 2c 0f          	lea    r13,[rdi+rcx*1]
  7bf33b:	4c 89 ad 20 fb ff ff 	mov    QWORD PTR [rbp-0x4e0],r13
  7bf342:	45 33 ed             	xor    r13d,r13d
  7bf345:	33 ff                	xor    edi,edi
  7bf347:	4c 03 ca             	add    r9,rdx
  7bf34a:	4c 03 c2             	add    r8,rdx
  7bf34d:	48 89 85 98 fb ff ff 	mov    QWORD PTR [rbp-0x468],rax
  7bf354:	4c 03 e6             	add    r12,rsi
  7bf357:	48 89 b5 a0 fb ff ff 	mov    QWORD PTR [rbp-0x460],rsi
  7bf35e:	48 89 95 a8 fb ff ff 	mov    QWORD PTR [rbp-0x458],rdx
  7bf365:	48 89 8d b0 fb ff ff 	mov    QWORD PTR [rbp-0x450],rcx
  7bf36c:	4c 89 75 90          	mov    QWORD PTR [rbp-0x70],r14
  7bf370:	4c 89 7d 98          	mov    QWORD PTR [rbp-0x68],r15
  7bf374:	48 89 f8             	mov    rax,rdi
  7bf377:	48 8b 95 20 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x4e0]
  7bf37e:	48 8b 8d 28 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x4d8]
  7bf385:	48 8b b5 38 fb ff ff 	mov    rsi,QWORD PTR [rbp-0x4c8]
  7bf38c:	4c 8b 7d 98          	mov    r15,QWORD PTR [rbp-0x68]
  7bf390:	4c 8b 75 d0          	mov    r14,QWORD PTR [rbp-0x30]
  7bf394:	4d 03 fd             	add    r15,r13
  7bf397:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  7bf39c:	c4 01 19 16 34 37    	vmovhpd xmm14,xmm12,QWORD PTR [r15+r14*1]
  7bf3a2:	4f 8d 3c 28          	lea    r15,[r8+r13*1]
  7bf3a6:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  7bf3ab:	c4 01 01 16 24 37    	vmovhpd xmm12,xmm15,QWORD PTR [r15+r14*1]
  7bf3b1:	4f 8d 3c 2a          	lea    r15,[r10+r13*1]
  7bf3b5:	c4 41 09 58 f4       	vaddpd xmm14,xmm14,xmm12
  7bf3ba:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  7bf3bf:	c4 01 01 16 24 37    	vmovhpd xmm12,xmm15,QWORD PTR [r15+r14*1]
  7bf3c5:	4f 8d 3c 29          	lea    r15,[r9+r13*1]
  7bf3c9:	c4 41 09 5c f4       	vsubpd xmm14,xmm14,xmm12
  7bf3ce:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  7bf3d3:	4f 8d 6c 75 00       	lea    r13,[r13+r14*2+0x0]
  7bf3d8:	c4 01 01 16 24 37    	vmovhpd xmm12,xmm15,QWORD PTR [r15+r14*1]
  7bf3de:	4d 8d 34 3c          	lea    r14,[r12+rdi*1]
  7bf3e2:	c4 41 09 5c fc       	vsubpd xmm15,xmm14,xmm12
  7bf3e7:	c4 41 79 5e f7       	vdivpd xmm14,xmm0,xmm15
  7bf3ec:	4c 8b 7d 80          	mov    r15,QWORD PTR [rbp-0x80]
  7bf3f0:	c4 41 7b 10 26       	vmovsd xmm12,QWORD PTR [r14]
  7bf3f5:	c4 41 09 59 f1       	vmulpd xmm14,xmm14,xmm9
  7bf3fa:	c4 01 19 16 3c 3e    	vmovhpd xmm15,xmm12,QWORD PTR [r14+r15*1]
  7bf400:	4c 8b 75 90          	mov    r14,QWORD PTR [rbp-0x70]
  7bf404:	4c 03 f7             	add    r14,rdi
  7bf407:	c4 41 7b 10 26       	vmovsd xmm12,QWORD PTR [r14]
  7bf40c:	4a 8d 3c 7f          	lea    rdi,[rdi+r15*2]
  7bf410:	c4 01 19 16 24 3e    	vmovhpd xmm12,xmm12,QWORD PTR [r14+r15*1]
  7bf416:	4c 8d 3c 06          	lea    r15,[rsi+rax*1]
  7bf41a:	c4 41 01 5c fc       	vsubpd xmm15,xmm15,xmm12
  7bf41f:	4c 8b 75 d8          	mov    r14,QWORD PTR [rbp-0x28]
  7bf423:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  7bf428:	c4 41 09 59 f7       	vmulpd xmm14,xmm14,xmm15
  7bf42d:	c4 01 19 16 24 37    	vmovhpd xmm12,xmm12,QWORD PTR [r15+r14*1]
  7bf433:	4c 8d 3c 01          	lea    r15,[rcx+rax*1]
  7bf437:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  7bf43c:	4a 8d 04 70          	lea    rax,[rax+r14*2]
  7bf440:	c4 01 01 16 3c 37    	vmovhpd xmm15,xmm15,QWORD PTR [r15+r14*1]
  7bf446:	c4 41 19 58 e7       	vaddpd xmm12,xmm12,xmm15
  7bf44b:	c4 41 09 59 f4       	vmulpd xmm14,xmm14,xmm12
  7bf450:	c4 21 79 11 74 da 08 	vmovupd XMMWORD PTR [rdx+r11*8+0x8],xmm14
  7bf457:	49 83 c3 02          	add    r11,0x2
  7bf45b:	4c 3b 5d 88          	cmp    r11,QWORD PTR [rbp-0x78]
  7bf45f:	0f 82 27 ff ff ff    	jb     7bf38c <pre_step3d_mod_mp_pre_step3d_tile_+0x5d8c>
  7bf465:	48 8b 85 98 fb ff ff 	mov    rax,QWORD PTR [rbp-0x468]
  7bf46c:	48 8b b5 a0 fb ff ff 	mov    rsi,QWORD PTR [rbp-0x460]
  7bf473:	48 8b 95 a8 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x458]
  7bf47a:	48 8b 8d b0 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x450]
  7bf481:	48 8b bd 08 fc ff ff 	mov    rdi,QWORD PTR [rbp-0x3f8]
  7bf488:	4c 8b 75 d8          	mov    r14,QWORD PTR [rbp-0x28]
  7bf48c:	4c 8b 6d 80          	mov    r13,QWORD PTR [rbp-0x80]
  7bf490:	4c 8b 65 d0          	mov    r12,QWORD PTR [rbp-0x30]
  7bf494:	4c 0f af f7          	imul   r14,rdi
  7bf498:	4c 0f af ef          	imul   r13,rdi
  7bf49c:	4c 0f af e7          	imul   r12,rdi
  7bf4a0:	48 3b bd 78 ff ff ff 	cmp    rdi,QWORD PTR [rbp-0x88]
  7bf4a7:	0f 83 34 01 00 00    	jae    7bf5e1 <pre_step3d_mod_mp_pre_step3d_tile_+0x5fe1>
  7bf4ad:	48 8b bd 18 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x4e8]
  7bf4b4:	4c 8b 9d 50 fb ff ff 	mov    r11,QWORD PTR [rbp-0x4b0]
  7bf4bb:	4c 8b 8d 78 fb ff ff 	mov    r9,QWORD PTR [rbp-0x488]
  7bf4c2:	4c 8b 85 58 fb ff ff 	mov    r8,QWORD PTR [rbp-0x4a8]
  7bf4c9:	4c 8d 3c 17          	lea    r15,[rdi+rdx*1]
  7bf4cd:	4c 89 bd 48 fb ff ff 	mov    QWORD PTR [rbp-0x4b8],r15
  7bf4d4:	4d 8d 14 13          	lea    r10,[r11+rdx*1]
  7bf4d8:	4c 8b bd 70 fb ff ff 	mov    r15,QWORD PTR [rbp-0x490]
  7bf4df:	4d 8d 1c 11          	lea    r11,[r9+rdx*1]
  7bf4e3:	4c 8b 8d 60 fb ff ff 	mov    r9,QWORD PTR [rbp-0x4a0]
  7bf4ea:	48 8b bd 68 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x498]
  7bf4f1:	4c 89 95 40 fb ff ff 	mov    QWORD PTR [rbp-0x4c0],r10
  7bf4f8:	4c 03 f8             	add    r15,rax
  7bf4fb:	4c 89 bd 30 fb ff ff 	mov    QWORD PTR [rbp-0x4d0],r15
  7bf502:	4d 8d 14 10          	lea    r10,[r8+rdx*1]
  7bf506:	4c 8b bd 90 fa ff ff 	mov    r15,QWORD PTR [rbp-0x570]
  7bf50d:	4c 03 ce             	add    r9,rsi
  7bf510:	4c 8b 85 10 fb ff ff 	mov    r8,QWORD PTR [rbp-0x4f0]
  7bf517:	48 03 f8             	add    rdi,rax
  7bf51a:	48 89 85 98 fb ff ff 	mov    QWORD PTR [rbp-0x468],rax
  7bf521:	48 89 b5 a0 fb ff ff 	mov    QWORD PTR [rbp-0x460],rsi
  7bf528:	4c 03 f9             	add    r15,rcx
  7bf52b:	4c 03 c6             	add    r8,rsi
  7bf52e:	48 89 95 a8 fb ff ff 	mov    QWORD PTR [rbp-0x458],rdx
  7bf535:	48 89 8d b0 fb ff ff 	mov    QWORD PTR [rbp-0x450],rcx
  7bf53c:	4c 89 f8             	mov    rax,r15
  7bf53f:	48 8b 95 30 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x4d0]
  7bf546:	48 8b 8d 48 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x4b8]
  7bf54d:	48 8b b5 40 fb ff ff 	mov    rsi,QWORD PTR [rbp-0x4c0]
  7bf554:	4c 8b bd 08 fc ff ff 	mov    r15,QWORD PTR [rbp-0x3f8]
  7bf55b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  7bf560:	c4 01 7b 10 24 1c    	vmovsd xmm12,QWORD PTR [r12+r11*1]
  7bf566:	c4 41 1b 58 34 0c    	vaddsd xmm14,xmm12,QWORD PTR [r12+rcx*1]
  7bf56c:	c4 41 0b 5c 3c 34    	vsubsd xmm15,xmm14,QWORD PTR [r12+rsi*1]
  7bf572:	c4 01 03 5c 24 14    	vsubsd xmm12,xmm15,QWORD PTR [r12+r10*1]
  7bf578:	c4 41 13 5e f4       	vdivsd xmm14,xmm13,xmm12
  7bf57d:	c4 01 7b 10 7c 0d 00 	vmovsd xmm15,QWORD PTR [r13+r9*1+0x0]
  7bf584:	c4 41 63 59 e6       	vmulsd xmm12,xmm3,xmm14
  7bf589:	c4 01 03 5c 74 05 00 	vsubsd xmm14,xmm15,QWORD PTR [r13+r8*1+0x0]
  7bf590:	c4 41 7b 10 3c 3e    	vmovsd xmm15,QWORD PTR [r14+rdi*1]
  7bf596:	c4 41 1b 59 e6       	vmulsd xmm12,xmm12,xmm14
  7bf59b:	c4 41 03 58 34 16    	vaddsd xmm14,xmm15,QWORD PTR [r14+rdx*1]
  7bf5a1:	c4 41 1b 59 fe       	vmulsd xmm15,xmm12,xmm14
  7bf5a6:	c4 21 7b 11 7c f8 08 	vmovsd QWORD PTR [rax+r15*8+0x8],xmm15
  7bf5ad:	49 ff c7             	inc    r15
  7bf5b0:	4c 03 65 d0          	add    r12,QWORD PTR [rbp-0x30]
  7bf5b4:	4c 03 6d 80          	add    r13,QWORD PTR [rbp-0x80]
  7bf5b8:	4c 03 75 d8          	add    r14,QWORD PTR [rbp-0x28]
  7bf5bc:	4c 3b bd 78 ff ff ff 	cmp    r15,QWORD PTR [rbp-0x88]
  7bf5c3:	72 9b                	jb     7bf560 <pre_step3d_mod_mp_pre_step3d_tile_+0x5f60>
  7bf5c5:	48 8b 85 98 fb ff ff 	mov    rax,QWORD PTR [rbp-0x468]
  7bf5cc:	48 8b b5 a0 fb ff ff 	mov    rsi,QWORD PTR [rbp-0x460]
  7bf5d3:	48 8b 95 a8 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x458]
  7bf5da:	48 8b 8d b0 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x450]
  7bf5e1:	48 8b bd 10 fc ff ff 	mov    rdi,QWORD PTR [rbp-0x3f0]
  7bf5e8:	48 ff c7             	inc    rdi
  7bf5eb:	48 03 8d 18 ff ff ff 	add    rcx,QWORD PTR [rbp-0xe8]
  7bf5f2:	48 03 95 30 ff ff ff 	add    rdx,QWORD PTR [rbp-0xd0]
  7bf5f9:	48 03 b5 00 fc ff ff 	add    rsi,QWORD PTR [rbp-0x400]
  7bf600:	48 03 85 28 ff ff ff 	add    rax,QWORD PTR [rbp-0xd8]
  7bf607:	48 89 bd 10 fc ff ff 	mov    QWORD PTR [rbp-0x3f0],rdi
  7bf60e:	48 3b bd 10 ff ff ff 	cmp    rdi,QWORD PTR [rbp-0xf0]
  7bf615:	0f 82 8e fc ff ff    	jb     7bf2a9 <pre_step3d_mod_mp_pre_step3d_tile_+0x5ca9>
  7bf61b:	48 8b bd d8 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x728]
  7bf622:	44 8b 85 b8 f8 ff ff 	mov    r8d,DWORD PTR [rbp-0x748]
  7bf629:	4c 8b 8d c0 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x740]
  7bf630:	4c 8b 9d c8 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x738]
  7bf637:	44 8b 95 d0 f8 ff ff 	mov    r10d,DWORD PTR [rbp-0x730]
  7bf63e:	48 83 bd 10 f6 ff ff 	cmp    QWORD PTR [rbp-0x9f0],0x8
  7bf645:	08 
  7bf646:	0f 85 f6 00 00 00    	jne    7bf742 <pre_step3d_mod_mp_pre_step3d_tile_+0x6142>
  7bf64c:	48 83 bd 08 f6 ff ff 	cmp    QWORD PTR [rbp-0x9f8],0x8
  7bf653:	08 
  7bf654:	0f 85 e8 00 00 00    	jne    7bf742 <pre_step3d_mod_mp_pre_step3d_tile_+0x6142>
  7bf65a:	48 8b 85 00 ff ff ff 	mov    rax,QWORD PTR [rbp-0x100]
  7bf661:	48 3b 85 f8 fb ff ff 	cmp    rax,QWORD PTR [rbp-0x408]
  7bf668:	0f 8c fa 06 00 00    	jl     7bfd68 <pre_step3d_mod_mp_pre_step3d_tile_+0x6768>
  7bf66e:	48 83 bd 78 ff ff ff 	cmp    QWORD PTR [rbp-0x88],0x4
  7bf675:	04 
  7bf676:	0f 8c 40 a0 00 00    	jl     7c96bc <pre_step3d_mod_mp_pre_step3d_tile_+0x100bc>
  7bf67c:	48 8b 8d e8 f4 ff ff 	mov    rcx,QWORD PTR [rbp-0xb18]
  7bf683:	33 f6                	xor    esi,esi
  7bf685:	48 8b 95 e0 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xb20]
  7bf68c:	48 0f af cf          	imul   rcx,rdi
  7bf690:	48 0f af d7          	imul   rdx,rdi
  7bf694:	48 8b 85 e0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x120]
  7bf69b:	49 89 c4             	mov    r12,rax
  7bf69e:	48 03 8d 30 f5 ff ff 	add    rcx,QWORD PTR [rbp-0xad0]
  7bf6a5:	48 03 95 10 f5 ff ff 	add    rdx,QWORD PTR [rbp-0xaf0]
  7bf6ac:	4c 8b ad 18 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xae8]
  7bf6b3:	4c 8b b5 68 f7 ff ff 	mov    r14,QWORD PTR [rbp-0x898]
  7bf6ba:	c5 4d 59 24 f1       	vmulpd ymm12,ymm6,YMMWORD PTR [rcx+rsi*8]
  7bf6bf:	c5 4d 59 34 f2       	vmulpd ymm14,ymm6,YMMWORD PTR [rdx+rsi*8]
  7bf6c4:	c4 41 7d 11 24 f6    	vmovupd YMMWORD PTR [r14+rsi*8],ymm12
  7bf6ca:	c4 41 7d 11 74 f5 00 	vmovupd YMMWORD PTR [r13+rsi*8+0x0],ymm14
  7bf6d1:	48 83 c6 04          	add    rsi,0x4
  7bf6d5:	49 3b f4             	cmp    rsi,r12
  7bf6d8:	72 e0                	jb     7bf6ba <pre_step3d_mod_mp_pre_step3d_tile_+0x60ba>
  7bf6da:	48 3b 85 78 ff ff ff 	cmp    rax,QWORD PTR [rbp-0x88]
  7bf6e1:	0f 83 6c 02 00 00    	jae    7bf953 <pre_step3d_mod_mp_pre_step3d_tile_+0x6353>
  7bf6e7:	48 8b 8d e8 f4 ff ff 	mov    rcx,QWORD PTR [rbp-0xb18]
  7bf6ee:	48 8b 95 e0 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xb20]
  7bf6f5:	48 0f af cf          	imul   rcx,rdi
  7bf6f9:	48 0f af d7          	imul   rdx,rdi
  7bf6fd:	48 03 8d 30 f5 ff ff 	add    rcx,QWORD PTR [rbp-0xad0]
  7bf704:	48 03 95 10 f5 ff ff 	add    rdx,QWORD PTR [rbp-0xaf0]
  7bf70b:	48 8b b5 18 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xae8]
  7bf712:	4c 8b a5 68 f7 ff ff 	mov    r12,QWORD PTR [rbp-0x898]
  7bf719:	4c 8b ad 78 ff ff ff 	mov    r13,QWORD PTR [rbp-0x88]
  7bf720:	c5 6b 59 24 c1       	vmulsd xmm12,xmm2,QWORD PTR [rcx+rax*8]
  7bf725:	c5 6b 59 34 c2       	vmulsd xmm14,xmm2,QWORD PTR [rdx+rax*8]
  7bf72a:	c4 41 7b 11 24 c4    	vmovsd QWORD PTR [r12+rax*8],xmm12
  7bf730:	c5 7b 11 34 c6       	vmovsd QWORD PTR [rsi+rax*8],xmm14
  7bf735:	48 ff c0             	inc    rax
  7bf738:	49 3b c5             	cmp    rax,r13
  7bf73b:	72 e3                	jb     7bf720 <pre_step3d_mod_mp_pre_step3d_tile_+0x6120>
  7bf73d:	e9 11 02 00 00       	jmp    7bf953 <pre_step3d_mod_mp_pre_step3d_tile_+0x6353>
  7bf742:	48 8b 85 00 ff ff ff 	mov    rax,QWORD PTR [rbp-0x100]
  7bf749:	48 3b 85 f8 fb ff ff 	cmp    rax,QWORD PTR [rbp-0x408]
  7bf750:	0f 8c 12 06 00 00    	jl     7bfd68 <pre_step3d_mod_mp_pre_step3d_tile_+0x6768>
  7bf756:	48 83 bd 78 ff ff ff 	cmp    QWORD PTR [rbp-0x88],0x4
  7bf75d:	04 
  7bf75e:	0f 8c a4 9f 00 00    	jl     7c9708 <pre_step3d_mod_mp_pre_step3d_tile_+0x10108>
  7bf764:	48 8b b5 e8 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb18]
  7bf76b:	33 c9                	xor    ecx,ecx
  7bf76d:	4c 8b a5 e0 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb20]
  7bf774:	45 33 ed             	xor    r13d,r13d
  7bf777:	48 0f af f7          	imul   rsi,rdi
  7bf77b:	4c 0f af e7          	imul   r12,rdi
  7bf77f:	48 8b 95 28 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xad8]
  7bf786:	48 8b 85 38 f3 ff ff 	mov    rax,QWORD PTR [rbp-0xcc8]
  7bf78d:	4c 8b bd e0 fe ff ff 	mov    r15,QWORD PTR [rbp-0x120]
  7bf794:	48 89 bd d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],rdi
  7bf79b:	48 03 d6             	add    rdx,rsi
  7bf79e:	44 89 85 b8 f8 ff ff 	mov    DWORD PTR [rbp-0x748],r8d
  7bf7a5:	4e 8d 34 20          	lea    r14,[rax+r12*1]
  7bf7a9:	4c 89 8d c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],r9
  7bf7b0:	33 c0                	xor    eax,eax
  7bf7b2:	4c 89 9d c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r11
  7bf7b9:	44 89 95 d0 f8 ff ff 	mov    DWORD PTR [rbp-0x730],r10d
  7bf7c0:	48 03 b5 f0 f4 ff ff 	add    rsi,QWORD PTR [rbp-0xb10]
  7bf7c7:	4c 03 a5 20 f5 ff ff 	add    r12,QWORD PTR [rbp-0xae0]
  7bf7ce:	48 8b bd 18 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xae8]
  7bf7d5:	4c 8b 85 68 f7 ff ff 	mov    r8,QWORD PTR [rbp-0x898]
  7bf7dc:	4c 8b 8d 08 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xaf8]
  7bf7e3:	4c 8b 95 08 f6 ff ff 	mov    r10,QWORD PTR [rbp-0x9f8]
  7bf7ea:	4c 8b 9d 10 f6 ff ff 	mov    r11,QWORD PTR [rbp-0x9f0]
  7bf7f1:	4c 89 bd 18 f2 ff ff 	mov    QWORD PTR [rbp-0xde8],r15
  7bf7f8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  7bf7ff:	00 
  7bf800:	4e 8d 3c 2a          	lea    r15,[rdx+r13*1]
  7bf804:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  7bf809:	c4 01 19 16 34 1f    	vmovhpd xmm14,xmm12,QWORD PTR [r15+r11*1]
  7bf80f:	4d 8d 3c 06          	lea    r15,[r14+rax*1]
  7bf813:	c4 41 29 59 fe       	vmulpd xmm15,xmm10,xmm14
  7bf818:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  7bf81d:	c4 01 19 16 34 17    	vmovhpd xmm14,xmm12,QWORD PTR [r15+r10*1]
  7bf823:	4e 8d 3c 2e          	lea    r15,[rsi+r13*1]
  7bf827:	c4 41 79 11 3c c8    	vmovupd XMMWORD PTR [r8+rcx*8],xmm15
  7bf82d:	c4 41 29 59 fe       	vmulpd xmm15,xmm10,xmm14
  7bf832:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  7bf837:	4f 8d 6c 9d 00       	lea    r13,[r13+r11*4+0x0]
  7bf83c:	c4 01 19 16 34 1f    	vmovhpd xmm14,xmm12,QWORD PTR [r15+r11*1]
  7bf842:	4d 8d 3c 04          	lea    r15,[r12+rax*1]
  7bf846:	c5 79 11 3c cf       	vmovupd XMMWORD PTR [rdi+rcx*8],xmm15
  7bf84b:	c4 41 29 59 fe       	vmulpd xmm15,xmm10,xmm14
  7bf850:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  7bf855:	4a 8d 04 90          	lea    rax,[rax+r10*4]
  7bf859:	c4 01 19 16 34 17    	vmovhpd xmm14,xmm12,QWORD PTR [r15+r10*1]
  7bf85f:	c4 41 79 11 7c c8 10 	vmovupd XMMWORD PTR [r8+rcx*8+0x10],xmm15
  7bf866:	c4 41 29 59 fe       	vmulpd xmm15,xmm10,xmm14
  7bf86b:	c4 41 79 11 7c c9 10 	vmovupd XMMWORD PTR [r9+rcx*8+0x10],xmm15
  7bf872:	48 83 c1 04          	add    rcx,0x4
  7bf876:	48 3b 8d e0 fe ff ff 	cmp    rcx,QWORD PTR [rbp-0x120]
  7bf87d:	72 81                	jb     7bf800 <pre_step3d_mod_mp_pre_step3d_tile_+0x6200>
  7bf87f:	4c 8b bd 18 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xde8]
  7bf886:	48 8b bd d8 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x728]
  7bf88d:	44 8b 85 b8 f8 ff ff 	mov    r8d,DWORD PTR [rbp-0x748]
  7bf894:	4c 8b 8d c0 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x740]
  7bf89b:	4c 8b 9d c8 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x738]
  7bf8a2:	44 8b 95 d0 f8 ff ff 	mov    r10d,DWORD PTR [rbp-0x730]
  7bf8a9:	48 8b b5 08 f6 ff ff 	mov    rsi,QWORD PTR [rbp-0x9f8]
  7bf8b0:	48 8b 85 10 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x9f0]
  7bf8b7:	49 0f af f7          	imul   rsi,r15
  7bf8bb:	49 0f af c7          	imul   rax,r15
  7bf8bf:	4c 3b bd 78 ff ff ff 	cmp    r15,QWORD PTR [rbp-0x88]
  7bf8c6:	0f 83 87 00 00 00    	jae    7bf953 <pre_step3d_mod_mp_pre_step3d_tile_+0x6353>
  7bf8cc:	48 8b 95 e8 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xb18]
  7bf8d3:	48 8b 8d e0 f4 ff ff 	mov    rcx,QWORD PTR [rbp-0xb20]
  7bf8da:	48 0f af d7          	imul   rdx,rdi
  7bf8de:	48 0f af cf          	imul   rcx,rdi
  7bf8e2:	4c 89 9d c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r11
  7bf8e9:	44 89 95 d0 f8 ff ff 	mov    DWORD PTR [rbp-0x730],r10d
  7bf8f0:	48 03 95 28 f5 ff ff 	add    rdx,QWORD PTR [rbp-0xad8]
  7bf8f7:	48 03 8d 38 f3 ff ff 	add    rcx,QWORD PTR [rbp-0xcc8]
  7bf8fe:	4c 8b 95 18 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xae8]
  7bf905:	4c 8b 9d 68 f7 ff ff 	mov    r11,QWORD PTR [rbp-0x898]
  7bf90c:	4c 8b a5 78 ff ff ff 	mov    r12,QWORD PTR [rbp-0x88]
  7bf913:	4c 8b ad 08 f6 ff ff 	mov    r13,QWORD PTR [rbp-0x9f8]
  7bf91a:	4c 8b b5 10 f6 ff ff 	mov    r14,QWORD PTR [rbp-0x9f0]
  7bf921:	c5 6b 59 24 10       	vmulsd xmm12,xmm2,QWORD PTR [rax+rdx*1]
  7bf926:	49 03 c6             	add    rax,r14
  7bf929:	c5 6b 59 34 0e       	vmulsd xmm14,xmm2,QWORD PTR [rsi+rcx*1]
  7bf92e:	c4 01 7b 11 24 fb    	vmovsd QWORD PTR [r11+r15*8],xmm12
  7bf934:	49 03 f5             	add    rsi,r13
  7bf937:	c4 01 7b 11 34 fa    	vmovsd QWORD PTR [r10+r15*8],xmm14
  7bf93d:	49 ff c7             	inc    r15
  7bf940:	4d 3b fc             	cmp    r15,r12
  7bf943:	72 dc                	jb     7bf921 <pre_step3d_mod_mp_pre_step3d_tile_+0x6321>
  7bf945:	4c 8b 9d c8 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x738]
  7bf94c:	44 8b 95 d0 f8 ff ff 	mov    r10d,DWORD PTR [rbp-0x730]
  7bf953:	48 83 bd 78 fe ff ff 	cmp    QWORD PTR [rbp-0x188],0x8
  7bf95a:	08 
  7bf95b:	0f 85 33 01 00 00    	jne    7bfa94 <pre_step3d_mod_mp_pre_step3d_tile_+0x6494>
  7bf961:	48 83 bd 80 fe ff ff 	cmp    QWORD PTR [rbp-0x180],0x8
  7bf968:	08 
  7bf969:	0f 85 25 01 00 00    	jne    7bfa94 <pre_step3d_mod_mp_pre_step3d_tile_+0x6494>
  7bf96f:	48 8b 85 00 ff ff ff 	mov    rax,QWORD PTR [rbp-0x100]
  7bf976:	48 3b 85 f8 fb ff ff 	cmp    rax,QWORD PTR [rbp-0x408]
  7bf97d:	0f 8c e5 03 00 00    	jl     7bfd68 <pre_step3d_mod_mp_pre_step3d_tile_+0x6768>
  7bf983:	48 83 bd 78 ff ff ff 	cmp    QWORD PTR [rbp-0x88],0x4
  7bf98a:	04 
  7bf98b:	0f 8c 32 9d 00 00    	jl     7c96c3 <pre_step3d_mod_mp_pre_step3d_tile_+0x100c3>
  7bf991:	48 8b 95 d0 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x930]
  7bf998:	33 c9                	xor    ecx,ecx
  7bf99a:	48 8b b5 c8 f6 ff ff 	mov    rsi,QWORD PTR [rbp-0x938]
  7bf9a1:	48 0f af d7          	imul   rdx,rdi
  7bf9a5:	48 0f af f7          	imul   rsi,rdi
  7bf9a9:	48 8b 85 00 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xb00]
  7bf9b0:	4c 8b ad f8 f4 ff ff 	mov    r13,QWORD PTR [rbp-0xb08]
  7bf9b7:	4c 8b a5 e0 fe ff ff 	mov    r12,QWORD PTR [rbp-0x120]
  7bf9be:	4d 89 e6             	mov    r14,r12
  7bf9c1:	4c 8b bd e0 fc ff ff 	mov    r15,QWORD PTR [rbp-0x320]
  7bf9c8:	48 03 c6             	add    rax,rsi
  7bf9cb:	48 03 b5 40 f3 ff ff 	add    rsi,QWORD PTR [rbp-0xcc0]
  7bf9d2:	4c 03 ea             	add    r13,rdx
  7bf9d5:	48 03 95 50 f3 ff ff 	add    rdx,QWORD PTR [rbp-0xcb0]
  7bf9dc:	c4 41 7d 10 64 cd 00 	vmovupd ymm12,YMMWORD PTR [r13+rcx*8+0x0]
  7bf9e3:	c5 7d 10 3c c8       	vmovupd ymm15,YMMWORD PTR [rax+rcx*8]
  7bf9e8:	c5 1d 58 34 ca       	vaddpd ymm14,ymm12,YMMWORD PTR [rdx+rcx*8]
  7bf9ed:	c4 41 55 59 e6       	vmulpd ymm12,ymm5,ymm14
  7bf9f2:	c5 05 58 34 ce       	vaddpd ymm14,ymm15,YMMWORD PTR [rsi+rcx*8]
  7bf9f7:	c4 41 1d 59 fe       	vmulpd ymm15,ymm12,ymm14
  7bf9fc:	c4 41 7d 11 3c cf    	vmovupd YMMWORD PTR [r15+rcx*8],ymm15
  7bfa02:	48 83 c1 04          	add    rcx,0x4
  7bfa06:	49 3b ce             	cmp    rcx,r14
  7bfa09:	72 d1                	jb     7bf9dc <pre_step3d_mod_mp_pre_step3d_tile_+0x63dc>
  7bfa0b:	4c 3b a5 78 ff ff ff 	cmp    r12,QWORD PTR [rbp-0x88]
  7bfa12:	0f 83 50 03 00 00    	jae    7bfd68 <pre_step3d_mod_mp_pre_step3d_tile_+0x6768>
  7bfa18:	48 8b 95 d0 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x930]
  7bfa1f:	48 8b 85 c8 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x938]
  7bfa26:	48 0f af d7          	imul   rdx,rdi
  7bfa2a:	48 0f af c7          	imul   rax,rdi
  7bfa2e:	48 8b b5 00 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xb00]
  7bfa35:	48 8b 8d f8 f4 ff ff 	mov    rcx,QWORD PTR [rbp-0xb08]
  7bfa3c:	4c 8b ad e0 fc ff ff 	mov    r13,QWORD PTR [rbp-0x320]
  7bfa43:	4c 8b b5 78 ff ff ff 	mov    r14,QWORD PTR [rbp-0x88]
  7bfa4a:	48 03 f0             	add    rsi,rax
  7bfa4d:	48 03 85 40 f3 ff ff 	add    rax,QWORD PTR [rbp-0xcc0]
  7bfa54:	48 03 ca             	add    rcx,rdx
  7bfa57:	48 03 95 50 f3 ff ff 	add    rdx,QWORD PTR [rbp-0xcb0]
  7bfa5e:	c4 21 7b 10 24 e1    	vmovsd xmm12,QWORD PTR [rcx+r12*8]
  7bfa64:	c4 21 7b 10 3c e6    	vmovsd xmm15,QWORD PTR [rsi+r12*8]
  7bfa6a:	c4 21 1b 58 34 e2    	vaddsd xmm14,xmm12,QWORD PTR [rdx+r12*8]
  7bfa70:	c4 41 5b 59 e6       	vmulsd xmm12,xmm4,xmm14
  7bfa75:	c4 21 03 58 34 e0    	vaddsd xmm14,xmm15,QWORD PTR [rax+r12*8]
  7bfa7b:	c4 41 1b 59 fe       	vmulsd xmm15,xmm12,xmm14
  7bfa80:	c4 01 7b 11 7c e5 00 	vmovsd QWORD PTR [r13+r12*8+0x0],xmm15
  7bfa87:	49 ff c4             	inc    r12
  7bfa8a:	4d 3b e6             	cmp    r12,r14
  7bfa8d:	72 cf                	jb     7bfa5e <pre_step3d_mod_mp_pre_step3d_tile_+0x645e>
  7bfa8f:	e9 d4 02 00 00       	jmp    7bfd68 <pre_step3d_mod_mp_pre_step3d_tile_+0x6768>
  7bfa94:	48 8b 85 00 ff ff ff 	mov    rax,QWORD PTR [rbp-0x100]
  7bfa9b:	48 3b 85 f8 fb ff ff 	cmp    rax,QWORD PTR [rbp-0x408]
  7bfaa2:	0f 8c c0 02 00 00    	jl     7bfd68 <pre_step3d_mod_mp_pre_step3d_tile_+0x6768>
  7bfaa8:	48 83 bd 78 ff ff ff 	cmp    QWORD PTR [rbp-0x88],0x4
  7bfaaf:	04 
  7bfab0:	0f 8c 4a 9c 00 00    	jl     7c9700 <pre_step3d_mod_mp_pre_step3d_tile_+0x10100>
  7bfab6:	4c 8b b5 d0 f6 ff ff 	mov    r14,QWORD PTR [rbp-0x930]
  7bfabd:	33 f6                	xor    esi,esi
  7bfabf:	4c 0f af f7          	imul   r14,rdi
  7bfac3:	4c 8b a5 c8 f6 ff ff 	mov    r12,QWORD PTR [rbp-0x938]
  7bfaca:	4c 0f af e7          	imul   r12,rdi
  7bface:	48 8b 85 58 f3 ff ff 	mov    rax,QWORD PTR [rbp-0xca8]
  7bfad5:	4c 8b ad 50 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xab0]
  7bfadc:	48 8b 8d 60 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xaa0]
  7bfae3:	4c 8b bd e0 fe ff ff 	mov    r15,QWORD PTR [rbp-0x120]
  7bfaea:	4a 8d 14 30          	lea    rdx,[rax+r14*1]
  7bfaee:	48 89 95 10 f2 ff ff 	mov    QWORD PTR [rbp-0xdf0],rdx
  7bfaf5:	4b 8d 44 35 00       	lea    rax,[r13+r14*1+0x0]
  7bfafa:	48 8b 95 58 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xaa8]
  7bfb01:	49 03 ce             	add    rcx,r14
  7bfb04:	48 89 85 b8 fb ff ff 	mov    QWORD PTR [rbp-0x448],rax
  7bfb0b:	48 8b 85 48 f3 ff ff 	mov    rax,QWORD PTR [rbp-0xcb8]
  7bfb12:	48 89 bd d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],rdi
  7bfb19:	4e 8d 2c 22          	lea    r13,[rdx+r12*1]
  7bfb1d:	4c 89 ad c0 fb ff ff 	mov    QWORD PTR [rbp-0x440],r13
  7bfb24:	4c 8b ad 48 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xab8]
  7bfb2b:	4a 8d 14 20          	lea    rdx,[rax+r12*1]
  7bfb2f:	48 89 95 08 f2 ff ff 	mov    QWORD PTR [rbp-0xdf8],rdx
  7bfb36:	44 89 85 b8 f8 ff ff 	mov    DWORD PTR [rbp-0x748],r8d
  7bfb3d:	4c 89 8d c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],r9
  7bfb44:	4b 8d 54 25 00       	lea    rdx,[r13+r12*1+0x0]
  7bfb49:	45 33 ed             	xor    r13d,r13d
  7bfb4c:	4c 89 9d c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r11
  7bfb53:	33 c0                	xor    eax,eax
  7bfb55:	44 89 95 d0 f8 ff ff 	mov    DWORD PTR [rbp-0x730],r10d
  7bfb5c:	4c 03 b5 40 f5 ff ff 	add    r14,QWORD PTR [rbp-0xac0]
  7bfb63:	4c 03 a5 38 f5 ff ff 	add    r12,QWORD PTR [rbp-0xac8]
  7bfb6a:	48 8b bd 08 f2 ff ff 	mov    rdi,QWORD PTR [rbp-0xdf8]
  7bfb71:	4c 8b 85 10 f2 ff ff 	mov    r8,QWORD PTR [rbp-0xdf0]
  7bfb78:	4c 8b 8d e0 fc ff ff 	mov    r9,QWORD PTR [rbp-0x320]
  7bfb7f:	4c 8b 95 80 fe ff ff 	mov    r10,QWORD PTR [rbp-0x180]
  7bfb86:	4c 8b 9d 78 fe ff ff 	mov    r11,QWORD PTR [rbp-0x188]
  7bfb8d:	4c 89 bd 20 f2 ff ff 	mov    QWORD PTR [rbp-0xde0],r15
  7bfb94:	4f 8d 3c 28          	lea    r15,[r8+r13*1]
  7bfb98:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  7bfb9d:	c4 01 19 16 34 1f    	vmovhpd xmm14,xmm12,QWORD PTR [r15+r11*1]
  7bfba3:	4f 8d 3c 2e          	lea    r15,[r14+r13*1]
  7bfba7:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  7bfbac:	c4 01 01 16 24 1f    	vmovhpd xmm12,xmm15,QWORD PTR [r15+r11*1]
  7bfbb2:	4c 8d 3c 07          	lea    r15,[rdi+rax*1]
  7bfbb6:	c4 41 09 58 fc       	vaddpd xmm15,xmm14,xmm12
  7bfbbb:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  7bfbc0:	c4 41 21 59 f7       	vmulpd xmm14,xmm11,xmm15
  7bfbc5:	c4 01 19 16 3c 17    	vmovhpd xmm15,xmm12,QWORD PTR [r15+r10*1]
  7bfbcb:	4d 8d 3c 04          	lea    r15,[r12+rax*1]
  7bfbcf:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  7bfbd4:	c4 01 19 16 24 17    	vmovhpd xmm12,xmm12,QWORD PTR [r15+r10*1]
  7bfbda:	4e 8d 3c 29          	lea    r15,[rcx+r13*1]
  7bfbde:	c4 41 01 58 fc       	vaddpd xmm15,xmm15,xmm12
  7bfbe3:	c4 41 09 59 f7       	vmulpd xmm14,xmm14,xmm15
  7bfbe8:	c4 41 79 11 34 f1    	vmovupd XMMWORD PTR [r9+rsi*8],xmm14
  7bfbee:	c4 41 7b 10 37       	vmovsd xmm14,QWORD PTR [r15]
  7bfbf3:	c4 01 09 16 3c 1f    	vmovhpd xmm15,xmm14,QWORD PTR [r15+r11*1]
  7bfbf9:	4c 8b bd b8 fb ff ff 	mov    r15,QWORD PTR [rbp-0x448]
  7bfc00:	4d 03 fd             	add    r15,r13
  7bfc03:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  7bfc08:	4f 8d 6c 9d 00       	lea    r13,[r13+r11*4+0x0]
  7bfc0d:	c4 01 19 16 34 1f    	vmovhpd xmm14,xmm12,QWORD PTR [r15+r11*1]
  7bfc13:	c4 41 01 58 e6       	vaddpd xmm12,xmm15,xmm14
  7bfc18:	4c 8b bd c0 fb ff ff 	mov    r15,QWORD PTR [rbp-0x440]
  7bfc1f:	c4 41 21 59 f4       	vmulpd xmm14,xmm11,xmm12
  7bfc24:	4c 03 f8             	add    r15,rax
  7bfc27:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  7bfc2c:	c4 01 01 16 24 17    	vmovhpd xmm12,xmm15,QWORD PTR [r15+r10*1]
  7bfc32:	4c 8d 3c 02          	lea    r15,[rdx+rax*1]
  7bfc36:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  7bfc3b:	4a 8d 04 90          	lea    rax,[rax+r10*4]
  7bfc3f:	c4 01 01 16 3c 17    	vmovhpd xmm15,xmm15,QWORD PTR [r15+r10*1]
  7bfc45:	c4 41 19 58 e7       	vaddpd xmm12,xmm12,xmm15
  7bfc4a:	c4 41 09 59 f4       	vmulpd xmm14,xmm14,xmm12
  7bfc4f:	c4 41 79 11 74 f1 10 	vmovupd XMMWORD PTR [r9+rsi*8+0x10],xmm14
  7bfc56:	48 83 c6 04          	add    rsi,0x4
  7bfc5a:	48 3b b5 e0 fe ff ff 	cmp    rsi,QWORD PTR [rbp-0x120]
  7bfc61:	0f 82 2d ff ff ff    	jb     7bfb94 <pre_step3d_mod_mp_pre_step3d_tile_+0x6594>
  7bfc67:	4c 8b bd 20 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xde0]
  7bfc6e:	48 8b bd d8 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x728]
  7bfc75:	44 8b 85 b8 f8 ff ff 	mov    r8d,DWORD PTR [rbp-0x748]
  7bfc7c:	4c 8b 8d c0 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x740]
  7bfc83:	4c 8b 9d c8 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x738]
  7bfc8a:	44 8b 95 d0 f8 ff ff 	mov    r10d,DWORD PTR [rbp-0x730]
  7bfc91:	4c 8b ad 80 fe ff ff 	mov    r13,QWORD PTR [rbp-0x180]
  7bfc98:	48 8b 8d 78 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x188]
  7bfc9f:	4d 0f af ef          	imul   r13,r15
  7bfca3:	49 0f af cf          	imul   rcx,r15
  7bfca7:	4c 3b bd 78 ff ff ff 	cmp    r15,QWORD PTR [rbp-0x88]
  7bfcae:	0f 83 b4 00 00 00    	jae    7bfd68 <pre_step3d_mod_mp_pre_step3d_tile_+0x6768>
  7bfcb4:	48 8b 85 d0 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x930]
  7bfcbb:	4c 8b a5 c8 f6 ff ff 	mov    r12,QWORD PTR [rbp-0x938]
  7bfcc2:	48 0f af c7          	imul   rax,rdi
  7bfcc6:	4c 0f af e7          	imul   r12,rdi
  7bfcca:	48 8b 95 58 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xca8]
  7bfcd1:	48 8b b5 48 f3 ff ff 	mov    rsi,QWORD PTR [rbp-0xcb8]
  7bfcd8:	4c 89 8d c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],r9
  7bfcdf:	4c 89 9d c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r11
  7bfce6:	48 03 d0             	add    rdx,rax
  7bfce9:	44 89 95 d0 f8 ff ff 	mov    DWORD PTR [rbp-0x730],r10d
  7bfcf0:	49 03 f4             	add    rsi,r12
  7bfcf3:	48 03 85 40 f5 ff ff 	add    rax,QWORD PTR [rbp-0xac0]
  7bfcfa:	4c 03 a5 38 f5 ff ff 	add    r12,QWORD PTR [rbp-0xac8]
  7bfd01:	4c 8b 8d e0 fc ff ff 	mov    r9,QWORD PTR [rbp-0x320]
  7bfd08:	4c 8b 95 78 ff ff ff 	mov    r10,QWORD PTR [rbp-0x88]
  7bfd0f:	4c 8b 9d 80 fe ff ff 	mov    r11,QWORD PTR [rbp-0x180]
  7bfd16:	4c 8b b5 78 fe ff ff 	mov    r14,QWORD PTR [rbp-0x188]
  7bfd1d:	c5 7b 10 24 11       	vmovsd xmm12,QWORD PTR [rcx+rdx*1]
  7bfd22:	c4 41 7b 10 7c 35 00 	vmovsd xmm15,QWORD PTR [r13+rsi*1+0x0]
  7bfd29:	c5 1b 58 34 01       	vaddsd xmm14,xmm12,QWORD PTR [rcx+rax*1]
  7bfd2e:	49 03 ce             	add    rcx,r14
  7bfd31:	c4 41 5b 59 e6       	vmulsd xmm12,xmm4,xmm14
  7bfd36:	c4 01 03 58 74 25 00 	vaddsd xmm14,xmm15,QWORD PTR [r13+r12*1+0x0]
  7bfd3d:	c4 41 1b 59 fe       	vmulsd xmm15,xmm12,xmm14
  7bfd42:	4d 03 eb             	add    r13,r11
  7bfd45:	c4 01 7b 11 3c f9    	vmovsd QWORD PTR [r9+r15*8],xmm15
  7bfd4b:	49 ff c7             	inc    r15
  7bfd4e:	4d 3b fa             	cmp    r15,r10
  7bfd51:	72 ca                	jb     7bfd1d <pre_step3d_mod_mp_pre_step3d_tile_+0x671d>
  7bfd53:	4c 8b 8d c0 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x740]
  7bfd5a:	4c 8b 9d c8 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x738]
  7bfd61:	44 8b 95 d0 f8 ff ff 	mov    r10d,DWORD PTR [rbp-0x730]
  7bfd68:	8b 85 e0 fb ff ff    	mov    eax,DWORD PTR [rbp-0x420]
  7bfd6e:	3b 85 d8 fb ff ff    	cmp    eax,DWORD PTR [rbp-0x428]
  7bfd74:	0f 85 64 06 00 00    	jne    7c03de <pre_step3d_mod_mp_pre_step3d_tile_+0x6dde>
  7bfd7a:	48 83 7d 80 08       	cmp    QWORD PTR [rbp-0x80],0x8
  7bfd7f:	0f 85 16 02 00 00    	jne    7bff9b <pre_step3d_mod_mp_pre_step3d_tile_+0x699b>
  7bfd85:	48 83 bd 58 ff ff ff 	cmp    QWORD PTR [rbp-0xa8],0x8
  7bfd8c:	08 
  7bfd8d:	0f 85 08 02 00 00    	jne    7bff9b <pre_step3d_mod_mp_pre_step3d_tile_+0x699b>
  7bfd93:	45 33 ed             	xor    r13d,r13d
  7bfd96:	45 33 e4             	xor    r12d,r12d
  7bfd99:	33 f6                	xor    esi,esi
  7bfd9b:	33 c9                	xor    ecx,ecx
  7bfd9d:	48 83 bd 08 fd ff ff 	cmp    QWORD PTR [rbp-0x2f8],0x0
  7bfda4:	00 
  7bfda5:	0f 8e 47 15 00 00    	jle    7c12f2 <pre_step3d_mod_mp_pre_step3d_tile_+0x7cf2>
  7bfdab:	48 8b 95 98 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xa68]
  7bfdb2:	4c 8b b5 58 f6 ff ff 	mov    r14,QWORD PTR [rbp-0x9a8]
  7bfdb9:	48 0f af d7          	imul   rdx,rdi
  7bfdbd:	4c 0f af f7          	imul   r14,rdi
  7bfdc1:	c5 7d 10 25 37 a6 08 	vmovupd ymm12,YMMWORD PTR [rip+0x8a637]        # 84a400 <var$630.126.450+0x460>
  7bfdc8:	00 
  7bfdc9:	4c 8b bd 88 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xa78]
  7bfdd0:	48 8b 85 98 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb68]
  7bfdd7:	48 89 bd d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],rdi
  7bfdde:	44 89 85 b8 f8 ff ff 	mov    DWORD PTR [rbp-0x748],r8d
  7bfde5:	4c 03 fa             	add    r15,rdx
  7bfde8:	48 03 95 88 f4 ff ff 	add    rdx,QWORD PTR [rbp-0xb78]
  7bfdef:	49 03 c6             	add    rax,r14
  7bfdf2:	4c 03 b5 b0 f4 ff ff 	add    r14,QWORD PTR [rbp-0xb50]
  7bfdf9:	48 89 95 70 f7 ff ff 	mov    QWORD PTR [rbp-0x890],rdx
  7bfe00:	4c 89 b5 78 f7 ff ff 	mov    QWORD PTR [rbp-0x888],r14
  7bfe07:	4c 89 bd 80 f7 ff ff 	mov    QWORD PTR [rbp-0x880],r15
  7bfe0e:	48 89 85 88 f7 ff ff 	mov    QWORD PTR [rbp-0x878],rax
  7bfe15:	4c 89 8d c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],r9
  7bfe1c:	4c 89 9d c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r11
  7bfe23:	44 89 95 d0 f8 ff ff 	mov    DWORD PTR [rbp-0x730],r10d
  7bfe2a:	48 8b 95 78 ff ff ff 	mov    rdx,QWORD PTR [rbp-0x88]
  7bfe31:	48 8b 85 00 ff ff ff 	mov    rax,QWORD PTR [rbp-0x100]
  7bfe38:	48 3b 85 f8 fb ff ff 	cmp    rax,QWORD PTR [rbp-0x408]
  7bfe3f:	0f 8c 09 01 00 00    	jl     7bff4e <pre_step3d_mod_mp_pre_step3d_tile_+0x694e>
  7bfe45:	48 83 fa 04          	cmp    rdx,0x4
  7bfe49:	0f 8c 7c 98 00 00    	jl     7c96cb <pre_step3d_mod_mp_pre_step3d_tile_+0x100cb>
  7bfe4f:	4c 8b 9d 68 f7 ff ff 	mov    r11,QWORD PTR [rbp-0x898]
  7bfe56:	45 33 f6             	xor    r14d,r14d
  7bfe59:	4c 8b 95 90 fa ff ff 	mov    r10,QWORD PTR [rbp-0x570]
  7bfe60:	4c 8b 8d 70 f7 ff ff 	mov    r9,QWORD PTR [rbp-0x890]
  7bfe67:	4c 8b 85 80 f7 ff ff 	mov    r8,QWORD PTR [rbp-0x880]
  7bfe6e:	4d 03 dc             	add    r11,r12
  7bfe71:	48 8b bd 78 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x888]
  7bfe78:	4d 03 d4             	add    r10,r12
  7bfe7b:	4c 8b bd 88 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x878]
  7bfe82:	4c 03 ce             	add    r9,rsi
  7bfe85:	48 8b 85 e0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x120]
  7bfe8c:	4c 03 c6             	add    r8,rsi
  7bfe8f:	48 89 c2             	mov    rdx,rax
  7bfe92:	48 03 f9             	add    rdi,rcx
  7bfe95:	4c 03 f9             	add    r15,rcx
  7bfe98:	c4 01 7d 10 34 f7    	vmovupd ymm14,YMMWORD PTR [r15+r14*8]
  7bfe9e:	c4 01 1d 59 3c f0    	vmulpd ymm15,ymm12,YMMWORD PTR [r8+r14*8]
  7bfea4:	c4 21 0d 58 34 f7    	vaddpd ymm14,ymm14,YMMWORD PTR [rdi+r14*8]
  7bfeaa:	c4 41 05 59 f6       	vmulpd ymm14,ymm15,ymm14
  7bfeaf:	c4 01 7d 10 7c f2 08 	vmovupd ymm15,YMMWORD PTR [r10+r14*8+0x8]
  7bfeb6:	c4 01 05 5c 3c f3    	vsubpd ymm15,ymm15,YMMWORD PTR [r11+r14*8]
  7bfebc:	c4 41 0d 58 f7       	vaddpd ymm14,ymm14,ymm15
  7bfec1:	c4 01 7d 11 34 f1    	vmovupd YMMWORD PTR [r9+r14*8],ymm14
  7bfec7:	49 83 c6 04          	add    r14,0x4
  7bfecb:	4c 3b f2             	cmp    r14,rdx
  7bfece:	72 c8                	jb     7bfe98 <pre_step3d_mod_mp_pre_step3d_tile_+0x6898>
  7bfed0:	48 8b 95 78 ff ff ff 	mov    rdx,QWORD PTR [rbp-0x88]
  7bfed7:	48 3b c2             	cmp    rax,rdx
  7bfeda:	73 72                	jae    7bff4e <pre_step3d_mod_mp_pre_step3d_tile_+0x694e>
  7bfedc:	4c 8b 95 68 f7 ff ff 	mov    r10,QWORD PTR [rbp-0x898]
  7bfee3:	4c 8b 8d 90 fa ff ff 	mov    r9,QWORD PTR [rbp-0x570]
  7bfeea:	4c 8b 85 70 f7 ff ff 	mov    r8,QWORD PTR [rbp-0x890]
  7bfef1:	48 8b bd 80 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x880]
  7bfef8:	4d 03 d4             	add    r10,r12
  7bfefb:	4c 8b b5 78 f7 ff ff 	mov    r14,QWORD PTR [rbp-0x888]
  7bff02:	4d 03 cc             	add    r9,r12
  7bff05:	4c 8b 9d 88 f7 ff ff 	mov    r11,QWORD PTR [rbp-0x878]
  7bff0c:	4c 03 c6             	add    r8,rsi
  7bff0f:	48 03 fe             	add    rdi,rsi
  7bff12:	4c 03 f1             	add    r14,rcx
  7bff15:	4c 03 d9             	add    r11,rcx
  7bff18:	c4 41 7b 10 34 c3    	vmovsd xmm14,QWORD PTR [r11+rax*8]
  7bff1e:	c5 3b 59 3c c7       	vmulsd xmm15,xmm8,QWORD PTR [rdi+rax*8]
  7bff23:	c4 41 0b 58 34 c6    	vaddsd xmm14,xmm14,QWORD PTR [r14+rax*8]
  7bff29:	c4 41 03 59 f6       	vmulsd xmm14,xmm15,xmm14
  7bff2e:	c4 41 7b 10 7c c1 08 	vmovsd xmm15,QWORD PTR [r9+rax*8+0x8]
  7bff35:	c4 41 03 5c 3c c2    	vsubsd xmm15,xmm15,QWORD PTR [r10+rax*8]
  7bff3b:	c4 41 0b 58 f7       	vaddsd xmm14,xmm14,xmm15
  7bff40:	c4 41 7b 11 34 c0    	vmovsd QWORD PTR [r8+rax*8],xmm14
  7bff46:	48 ff c0             	inc    rax
  7bff49:	48 3b c2             	cmp    rax,rdx
  7bff4c:	72 ca                	jb     7bff18 <pre_step3d_mod_mp_pre_step3d_tile_+0x6918>
  7bff4e:	49 ff c5             	inc    r13
  7bff51:	4c 03 a5 18 ff ff ff 	add    r12,QWORD PTR [rbp-0xe8]
  7bff58:	48 03 b5 00 fc ff ff 	add    rsi,QWORD PTR [rbp-0x400]
  7bff5f:	48 03 8d 10 fd ff ff 	add    rcx,QWORD PTR [rbp-0x2f0]
  7bff66:	4c 3b ad 08 fd ff ff 	cmp    r13,QWORD PTR [rbp-0x2f8]
  7bff6d:	0f 82 be fe ff ff    	jb     7bfe31 <pre_step3d_mod_mp_pre_step3d_tile_+0x6831>
  7bff73:	48 8b bd d8 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x728]
  7bff7a:	44 8b 85 b8 f8 ff ff 	mov    r8d,DWORD PTR [rbp-0x748]
  7bff81:	4c 8b 8d c0 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x740]
  7bff88:	4c 8b 9d c8 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x738]
  7bff8f:	44 8b 95 d0 f8 ff ff 	mov    r10d,DWORD PTR [rbp-0x730]
  7bff96:	e9 57 13 00 00       	jmp    7c12f2 <pre_step3d_mod_mp_pre_step3d_tile_+0x7cf2>
  7bff9b:	33 c9                	xor    ecx,ecx
  7bff9d:	33 d2                	xor    edx,edx
  7bff9f:	33 f6                	xor    esi,esi
  7bffa1:	33 c0                	xor    eax,eax
  7bffa3:	48 83 bd 08 fd ff ff 	cmp    QWORD PTR [rbp-0x2f8],0x0
  7bffaa:	00 
  7bffab:	0f 8e 41 13 00 00    	jle    7c12f2 <pre_step3d_mod_mp_pre_step3d_tile_+0x7cf2>
  7bffb1:	4c 8b ad 98 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xa68]
  7bffb8:	4c 0f af ef          	imul   r13,rdi
  7bffbc:	4c 8b b5 58 f6 ff ff 	mov    r14,QWORD PTR [rbp-0x9a8]
  7bffc3:	4c 0f af f7          	imul   r14,rdi
  7bffc7:	4c 8b a5 90 f5 ff ff 	mov    r12,QWORD PTR [rbp-0xa70]
  7bffce:	48 89 bd d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],rdi
  7bffd5:	44 89 85 b8 f8 ff ff 	mov    DWORD PTR [rbp-0x748],r8d
  7bffdc:	4c 89 8d c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],r9
  7bffe3:	4f 8d 3c 2c          	lea    r15,[r12+r13*1]
  7bffe7:	4c 89 bd e8 f7 ff ff 	mov    QWORD PTR [rbp-0x818],r15
  7bffee:	4c 8b bd e8 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xd18]
  7bfff5:	4c 8b a5 a8 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb58]
  7bfffc:	4c 89 9d c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r11
  7c0003:	44 89 95 d0 f8 ff ff 	mov    DWORD PTR [rbp-0x730],r10d
  7c000a:	4d 03 fe             	add    r15,r14
  7c000d:	4c 89 bd e0 f7 ff ff 	mov    QWORD PTR [rbp-0x820],r15
  7c0014:	4d 03 e6             	add    r12,r14
  7c0017:	4c 8b bd a0 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb60]
  7c001e:	4c 89 a5 a8 f7 ff ff 	mov    QWORD PTR [rbp-0x858],r12
  7c0025:	c5 79 10 25 c3 b9 08 	vmovupd xmm12,XMMWORD PTR [rip+0x8b9c3]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  7c002c:	00 
  7c002d:	4c 8b 65 80          	mov    r12,QWORD PTR [rbp-0x80]
  7c0031:	4d 03 fd             	add    r15,r13
  7c0034:	4c 89 bd f8 f7 ff ff 	mov    QWORD PTR [rbp-0x808],r15
  7c003b:	4c 8b bd 80 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb80]
  7c0042:	4d 03 fd             	add    r15,r13
  7c0045:	4c 89 bd f0 f7 ff ff 	mov    QWORD PTR [rbp-0x810],r15
  7c004c:	4c 8b bd 30 f3 ff ff 	mov    r15,QWORD PTR [rbp-0xcd0]
  7c0053:	4c 03 ad 90 f4 ff ff 	add    r13,QWORD PTR [rbp-0xb70]
  7c005a:	4c 89 ad a0 f7 ff ff 	mov    QWORD PTR [rbp-0x860],r13
  7c0061:	4d 03 fe             	add    r15,r14
  7c0064:	4c 03 b5 e0 f2 ff ff 	add    r14,QWORD PTR [rbp-0xd20]
  7c006b:	4c 89 b5 90 f7 ff ff 	mov    QWORD PTR [rbp-0x870],r14
  7c0072:	4c 89 bd 98 f7 ff ff 	mov    QWORD PTR [rbp-0x868],r15
  7c0079:	4c 8b b5 78 ff ff ff 	mov    r14,QWORD PTR [rbp-0x88]
  7c0080:	48 8b bd 00 ff ff ff 	mov    rdi,QWORD PTR [rbp-0x100]
  7c0087:	48 3b bd f8 fb ff ff 	cmp    rdi,QWORD PTR [rbp-0x408]
  7c008e:	0f 8c f5 02 00 00    	jl     7c0389 <pre_step3d_mod_mp_pre_step3d_tile_+0x6d89>
  7c0094:	4d 85 e4             	test   r12,r12
  7c0097:	0f 84 35 96 00 00    	je     7c96d2 <pre_step3d_mod_mp_pre_step3d_tile_+0x100d2>
  7c009d:	49 83 fe 04          	cmp    r14,0x4
  7c00a1:	0f 8c 2b 96 00 00    	jl     7c96d2 <pre_step3d_mod_mp_pre_step3d_tile_+0x100d2>
  7c00a7:	48 8b bd e0 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x820]
  7c00ae:	45 33 d2             	xor    r10d,r10d
  7c00b1:	4c 8b bd e8 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x818]
  7c00b8:	4c 8b 8d 68 f7 ff ff 	mov    r9,QWORD PTR [rbp-0x898]
  7c00bf:	4c 8b 85 90 fa ff ff 	mov    r8,QWORD PTR [rbp-0x570]
  7c00c6:	48 03 f8             	add    rdi,rax
  7c00c9:	48 89 bd c8 f7 ff ff 	mov    QWORD PTR [rbp-0x838],rdi
  7c00d0:	4c 03 fe             	add    r15,rsi
  7c00d3:	48 8b bd a8 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x858]
  7c00da:	4c 03 ca             	add    r9,rdx
  7c00dd:	4c 8b 9d f8 f7 ff ff 	mov    r11,QWORD PTR [rbp-0x808]
  7c00e4:	4c 03 c2             	add    r8,rdx
  7c00e7:	4c 8b ad e0 fe ff ff 	mov    r13,QWORD PTR [rbp-0x120]
  7c00ee:	4c 89 ad 00 f8 ff ff 	mov    QWORD PTR [rbp-0x800],r13
  7c00f5:	48 03 f8             	add    rdi,rax
  7c00f8:	48 89 bd c0 f7 ff ff 	mov    QWORD PTR [rbp-0x840],rdi
  7c00ff:	4c 03 de             	add    r11,rsi
  7c0102:	48 8b bd f0 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x810]
  7c0109:	48 89 85 08 f8 ff ff 	mov    QWORD PTR [rbp-0x7f8],rax
  7c0110:	48 89 b5 10 f8 ff ff 	mov    QWORD PTR [rbp-0x7f0],rsi
  7c0117:	48 89 95 18 f8 ff ff 	mov    QWORD PTR [rbp-0x7e8],rdx
  7c011e:	48 03 fe             	add    rdi,rsi
  7c0121:	48 89 bd b8 f7 ff ff 	mov    QWORD PTR [rbp-0x848],rdi
  7c0128:	48 8b bd a0 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x860]
  7c012f:	48 89 8d 20 f8 ff ff 	mov    QWORD PTR [rbp-0x7e0],rcx
  7c0136:	4c 89 bd e8 fe ff ff 	mov    QWORD PTR [rbp-0x118],r15
  7c013d:	48 8b 95 b8 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x848]
  7c0144:	48 03 fe             	add    rdi,rsi
  7c0147:	48 89 bd f8 fe ff ff 	mov    QWORD PTR [rbp-0x108],rdi
  7c014e:	48 8b bd 98 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x868]
  7c0155:	48 8b 8d c0 f7 ff ff 	mov    rcx,QWORD PTR [rbp-0x840]
  7c015c:	48 8b b5 c8 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x838]
  7c0163:	4c 8b b5 58 ff ff ff 	mov    r14,QWORD PTR [rbp-0xa8]
  7c016a:	48 03 f8             	add    rdi,rax
  7c016d:	48 89 bd b0 f7 ff ff 	mov    QWORD PTR [rbp-0x850],rdi
  7c0174:	48 8b bd 90 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x870]
  7c017b:	48 03 f8             	add    rdi,rax
  7c017e:	48 89 bd f0 fe ff ff 	mov    QWORD PTR [rbp-0x110],rdi
  7c0185:	33 ff                	xor    edi,edi
  7c0187:	49 89 fd             	mov    r13,rdi
  7c018a:	48 8b 85 b0 f7 ff ff 	mov    rax,QWORD PTR [rbp-0x850]
  7c0191:	4c 8b bd e8 fe ff ff 	mov    r15,QWORD PTR [rbp-0x118]
  7c0198:	4c 03 ff             	add    r15,rdi
  7c019b:	c4 41 7b 10 2f       	vmovsd xmm13,QWORD PTR [r15]
  7c01a0:	c4 01 11 16 3c 27    	vmovhpd xmm15,xmm13,QWORD PTR [r15+r12*1]
  7c01a6:	4e 8d 3c 29          	lea    r15,[rcx+r13*1]
  7c01aa:	c4 41 7b 10 2f       	vmovsd xmm13,QWORD PTR [r15]
  7c01af:	c4 41 01 59 f4       	vmulpd xmm14,xmm15,xmm12
  7c01b4:	c4 01 11 16 3c 37    	vmovhpd xmm15,xmm13,QWORD PTR [r15+r14*1]
  7c01ba:	4e 8d 3c 2e          	lea    r15,[rsi+r13*1]
  7c01be:	c4 41 7b 10 2f       	vmovsd xmm13,QWORD PTR [r15]
  7c01c3:	c4 01 11 16 2c 37    	vmovhpd xmm13,xmm13,QWORD PTR [r15+r14*1]
  7c01c9:	4e 8d 3c 1f          	lea    r15,[rdi+r11*1]
  7c01cd:	c4 41 01 58 fd       	vaddpd xmm15,xmm15,xmm13
  7c01d2:	c4 41 09 59 ef       	vmulpd xmm13,xmm14,xmm15
  7c01d7:	c4 01 79 10 74 d0 08 	vmovupd xmm14,XMMWORD PTR [r8+r10*8+0x8]
  7c01de:	c4 01 09 5c 34 d1    	vsubpd xmm14,xmm14,XMMWORD PTR [r9+r10*8]
  7c01e4:	c4 41 11 58 fe       	vaddpd xmm15,xmm13,xmm14
  7c01e9:	c4 41 7b 11 3f       	vmovsd QWORD PTR [r15],xmm15
  7c01ee:	c4 01 79 17 3c 3c    	vmovhpd QWORD PTR [r12+r15*1],xmm15
  7c01f4:	4c 8b bd f8 fe ff ff 	mov    r15,QWORD PTR [rbp-0x108]
  7c01fb:	4c 03 ff             	add    r15,rdi
  7c01fe:	c4 41 7b 10 37       	vmovsd xmm14,QWORD PTR [r15]
  7c0203:	c4 01 09 16 2c 27    	vmovhpd xmm13,xmm14,QWORD PTR [r15+r12*1]
  7c0209:	4c 8b bd f0 fe ff ff 	mov    r15,QWORD PTR [rbp-0x110]
  7c0210:	c4 41 11 59 f4       	vmulpd xmm14,xmm13,xmm12
  7c0215:	4d 03 fd             	add    r15,r13
  7c0218:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  7c021d:	c4 01 01 16 2c 37    	vmovhpd xmm13,xmm15,QWORD PTR [r15+r14*1]
  7c0223:	4e 8d 3c 28          	lea    r15,[rax+r13*1]
  7c0227:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  7c022c:	4f 8d 6c b5 00       	lea    r13,[r13+r14*4+0x0]
  7c0231:	c4 01 01 16 3c 37    	vmovhpd xmm15,xmm15,QWORD PTR [r15+r14*1]
  7c0237:	4c 8d 3c 17          	lea    r15,[rdi+rdx*1]
  7c023b:	c4 41 11 58 ef       	vaddpd xmm13,xmm13,xmm15
  7c0240:	c4 41 09 59 ed       	vmulpd xmm13,xmm14,xmm13
  7c0245:	c4 01 79 10 74 d0 18 	vmovupd xmm14,XMMWORD PTR [r8+r10*8+0x18]
  7c024c:	c4 01 09 5c 74 d1 10 	vsubpd xmm14,xmm14,XMMWORD PTR [r9+r10*8+0x10]
  7c0253:	c4 41 11 58 fe       	vaddpd xmm15,xmm13,xmm14
  7c0258:	49 83 c2 04          	add    r10,0x4
  7c025c:	4a 8d 3c a7          	lea    rdi,[rdi+r12*4]
  7c0260:	c4 41 7b 11 3f       	vmovsd QWORD PTR [r15],xmm15
  7c0265:	c4 01 79 17 3c 3c    	vmovhpd QWORD PTR [r12+r15*1],xmm15
  7c026b:	4c 3b 95 e0 fe ff ff 	cmp    r10,QWORD PTR [rbp-0x120]
  7c0272:	0f 82 19 ff ff ff    	jb     7c0191 <pre_step3d_mod_mp_pre_step3d_tile_+0x6b91>
  7c0278:	4c 8b ad 00 f8 ff ff 	mov    r13,QWORD PTR [rbp-0x800]
  7c027f:	48 8b 85 08 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x7f8]
  7c0286:	48 8b b5 10 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x7f0]
  7c028d:	48 8b 95 18 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x7e8]
  7c0294:	48 8b 8d 20 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x7e0]
  7c029b:	4c 8b b5 78 ff ff ff 	mov    r14,QWORD PTR [rbp-0x88]
  7c02a2:	4d 89 e1             	mov    r9,r12
  7c02a5:	4c 8b 9d 58 ff ff ff 	mov    r11,QWORD PTR [rbp-0xa8]
  7c02ac:	4d 0f af dd          	imul   r11,r13
  7c02b0:	4d 0f af cd          	imul   r9,r13
  7c02b4:	4d 3b ee             	cmp    r13,r14
  7c02b7:	0f 83 cc 00 00 00    	jae    7c0389 <pre_step3d_mod_mp_pre_step3d_tile_+0x6d89>
  7c02bd:	4c 8b 85 68 f7 ff ff 	mov    r8,QWORD PTR [rbp-0x898]
  7c02c4:	4c 8b bd f8 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x808]
  7c02cb:	4c 8b 95 90 fa ff ff 	mov    r10,QWORD PTR [rbp-0x570]
  7c02d2:	48 89 b5 10 f8 ff ff 	mov    QWORD PTR [rbp-0x7f0],rsi
  7c02d9:	49 8d 3c 10          	lea    rdi,[r8+rdx*1]
  7c02dd:	48 89 bd d8 f7 ff ff 	mov    QWORD PTR [rbp-0x828],rdi
  7c02e4:	49 8d 3c 37          	lea    rdi,[r15+rsi*1]
  7c02e8:	4c 8b bd e0 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x820]
  7c02ef:	4d 8d 04 12          	lea    r8,[r10+rdx*1]
  7c02f3:	4c 8b 95 e8 f7 ff ff 	mov    r10,QWORD PTR [rbp-0x818]
  7c02fa:	48 89 95 18 f8 ff ff 	mov    QWORD PTR [rbp-0x7e8],rdx
  7c0301:	48 89 8d 20 f8 ff ff 	mov    QWORD PTR [rbp-0x7e0],rcx
  7c0308:	4c 03 f8             	add    r15,rax
  7c030b:	4c 89 bd d0 f7 ff ff 	mov    QWORD PTR [rbp-0x830],r15
  7c0312:	4c 03 d6             	add    r10,rsi
  7c0315:	4c 8b bd a8 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x858]
  7c031c:	48 8b 8d d0 f7 ff ff 	mov    rcx,QWORD PTR [rbp-0x830]
  7c0323:	48 8b b5 d8 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x828]
  7c032a:	4c 03 f8             	add    r15,rax
  7c032d:	4c 89 fa             	mov    rdx,r15
  7c0330:	4c 8b bd 58 ff ff ff 	mov    r15,QWORD PTR [rbp-0xa8]
  7c0337:	c4 41 7b 10 2c 13    	vmovsd xmm13,QWORD PTR [r11+rdx*1]
  7c033d:	c4 01 3b 59 34 11    	vmulsd xmm14,xmm8,QWORD PTR [r9+r10*1]
  7c0343:	c4 41 13 58 3c 0b    	vaddsd xmm15,xmm13,QWORD PTR [r11+rcx*1]
  7c0349:	c4 01 7b 10 6c e8 08 	vmovsd xmm13,QWORD PTR [r8+r13*8+0x8]
  7c0350:	4d 03 df             	add    r11,r15
  7c0353:	c4 41 0b 59 f7       	vmulsd xmm14,xmm14,xmm15
  7c0358:	c4 21 13 5c 3c ee    	vsubsd xmm15,xmm13,QWORD PTR [rsi+r13*8]
  7c035e:	49 ff c5             	inc    r13
  7c0361:	c4 41 0b 58 ef       	vaddsd xmm13,xmm14,xmm15
  7c0366:	c4 41 7b 11 2c 39    	vmovsd QWORD PTR [r9+rdi*1],xmm13
  7c036c:	4d 03 cc             	add    r9,r12
  7c036f:	4d 3b ee             	cmp    r13,r14
  7c0372:	72 c3                	jb     7c0337 <pre_step3d_mod_mp_pre_step3d_tile_+0x6d37>
  7c0374:	48 8b b5 10 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x7f0]
  7c037b:	48 8b 95 18 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x7e8]
  7c0382:	48 8b 8d 20 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x7e0]
  7c0389:	48 ff c1             	inc    rcx
  7c038c:	48 03 95 18 ff ff ff 	add    rdx,QWORD PTR [rbp-0xe8]
  7c0393:	48 03 b5 00 fc ff ff 	add    rsi,QWORD PTR [rbp-0x400]
  7c039a:	48 03 85 10 fd ff ff 	add    rax,QWORD PTR [rbp-0x2f0]
  7c03a1:	48 3b 8d 08 fd ff ff 	cmp    rcx,QWORD PTR [rbp-0x2f8]
  7c03a8:	0f 82 d2 fc ff ff    	jb     7c0080 <pre_step3d_mod_mp_pre_step3d_tile_+0x6a80>
  7c03ae:	c5 7b 10 2d ca bd 08 	vmovsd xmm13,QWORD PTR [rip+0x8bdca]        # 84c180 <__STRLITPACK_0.112+0x70>
  7c03b5:	00 
  7c03b6:	48 8b bd d8 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x728]
  7c03bd:	44 8b 85 b8 f8 ff ff 	mov    r8d,DWORD PTR [rbp-0x748]
  7c03c4:	4c 8b 8d c0 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x740]
  7c03cb:	4c 8b 9d c8 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x738]
  7c03d2:	44 8b 95 d0 f8 ff ff 	mov    r10d,DWORD PTR [rbp-0x730]
  7c03d9:	e9 14 0f 00 00       	jmp    7c12f2 <pre_step3d_mod_mp_pre_step3d_tile_+0x7cf2>
  7c03de:	3b 85 e0 f8 ff ff    	cmp    eax,DWORD PTR [rbp-0x720]
  7c03e4:	0f 85 99 06 00 00    	jne    7c0a83 <pre_step3d_mod_mp_pre_step3d_tile_+0x7483>
  7c03ea:	48 83 7d 80 08       	cmp    QWORD PTR [rbp-0x80],0x8
  7c03ef:	0f 85 d5 02 00 00    	jne    7c06ca <pre_step3d_mod_mp_pre_step3d_tile_+0x70ca>
  7c03f5:	48 83 bd 58 ff ff ff 	cmp    QWORD PTR [rbp-0xa8],0x8
  7c03fc:	08 
  7c03fd:	0f 85 c7 02 00 00    	jne    7c06ca <pre_step3d_mod_mp_pre_step3d_tile_+0x70ca>
  7c0403:	48 83 bd e8 fc ff ff 	cmp    QWORD PTR [rbp-0x318],0x8
  7c040a:	08 
  7c040b:	0f 85 b9 02 00 00    	jne    7c06ca <pre_step3d_mod_mp_pre_step3d_tile_+0x70ca>
  7c0411:	45 33 ed             	xor    r13d,r13d
  7c0414:	45 33 e4             	xor    r12d,r12d
  7c0417:	45 33 f6             	xor    r14d,r14d
  7c041a:	48 83 bd 08 fd ff ff 	cmp    QWORD PTR [rbp-0x2f8],0x0
  7c0421:	00 
  7c0422:	0f 8e ca 0e 00 00    	jle    7c12f2 <pre_step3d_mod_mp_pre_step3d_tile_+0x7cf2>
  7c0428:	48 8b 95 98 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xa68]
  7c042f:	48 0f af d7          	imul   rdx,rdi
  7c0433:	c5 7d 10 25 c5 9f 08 	vmovupd ymm12,YMMWORD PTR [rip+0x89fc5]        # 84a400 <var$630.126.450+0x460>
  7c043a:	00 
  7c043b:	48 8b b5 88 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xa78]
  7c0442:	48 8b 8d 58 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x9a8]
  7c0449:	48 0f af cf          	imul   rcx,rdi
  7c044d:	48 8b 85 98 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb68]
  7c0454:	4c 8d 3c 16          	lea    r15,[rsi+rdx*1]
  7c0458:	48 8b b5 60 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xba0]
  7c045f:	48 0f af f7          	imul   rsi,rdi
  7c0463:	48 03 95 88 f4 ff ff 	add    rdx,QWORD PTR [rbp-0xb78]
  7c046a:	48 03 c1             	add    rax,rcx
  7c046d:	48 03 8d b0 f4 ff ff 	add    rcx,QWORD PTR [rbp-0xb50]
  7c0474:	48 89 95 30 f2 ff ff 	mov    QWORD PTR [rbp-0xdd0],rdx
  7c047b:	48 89 8d 38 f2 ff ff 	mov    QWORD PTR [rbp-0xdc8],rcx
  7c0482:	48 03 b5 78 f4 ff ff 	add    rsi,QWORD PTR [rbp-0xb88]
  7c0489:	4c 89 f2             	mov    rdx,r14
  7c048c:	48 8b 8d 78 ff ff ff 	mov    rcx,QWORD PTR [rbp-0x88]
  7c0493:	4c 89 bd 40 f2 ff ff 	mov    QWORD PTR [rbp-0xdc0],r15
  7c049a:	48 89 85 48 f2 ff ff 	mov    QWORD PTR [rbp-0xdb8],rax
  7c04a1:	48 89 bd d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],rdi
  7c04a8:	44 89 85 b8 f8 ff ff 	mov    DWORD PTR [rbp-0x748],r8d
  7c04af:	4c 89 8d c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],r9
  7c04b6:	4c 89 9d c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r11
  7c04bd:	44 89 95 d0 f8 ff ff 	mov    DWORD PTR [rbp-0x730],r10d
  7c04c4:	48 8b 85 00 ff ff ff 	mov    rax,QWORD PTR [rbp-0x100]
  7c04cb:	48 3b 85 f8 fb ff ff 	cmp    rax,QWORD PTR [rbp-0x408]
  7c04d2:	0f 8c 96 01 00 00    	jl     7c066e <pre_step3d_mod_mp_pre_step3d_tile_+0x706e>
  7c04d8:	48 83 f9 04          	cmp    rcx,0x4
  7c04dc:	0f 8c f8 91 00 00    	jl     7c96da <pre_step3d_mod_mp_pre_step3d_tile_+0x100da>
  7c04e2:	4c 8b bd 48 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xdb8]
  7c04e9:	4c 8b 95 68 f7 ff ff 	mov    r10,QWORD PTR [rbp-0x898]
  7c04f0:	4c 8b 8d 90 fa ff ff 	mov    r9,QWORD PTR [rbp-0x570]
  7c04f7:	4c 8b 85 30 f2 ff ff 	mov    r8,QWORD PTR [rbp-0xdd0]
  7c04fe:	4c 03 fa             	add    r15,rdx
  7c0501:	48 8b bd 40 f2 ff ff 	mov    rdi,QWORD PTR [rbp-0xdc0]
  7c0508:	4d 03 d4             	add    r10,r12
  7c050b:	4c 8b 9d 38 f2 ff ff 	mov    r11,QWORD PTR [rbp-0xdc8]
  7c0512:	4d 03 cc             	add    r9,r12
  7c0515:	48 c7 85 50 f2 ff ff 	mov    QWORD PTR [rbp-0xdb0],0x0
  7c051c:	00 00 00 00 
  7c0520:	4d 03 c6             	add    r8,r14
  7c0523:	49 03 fe             	add    rdi,r14
  7c0526:	48 8b 85 e0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x120]
  7c052d:	4c 03 da             	add    r11,rdx
  7c0530:	4c 89 a5 78 f3 ff ff 	mov    QWORD PTR [rbp-0xc88],r12
  7c0537:	4c 89 ad 80 f3 ff ff 	mov    QWORD PTR [rbp-0xc80],r13
  7c053e:	49 89 c5             	mov    r13,rax
  7c0541:	4c 89 f9             	mov    rcx,r15
  7c0544:	4c 8b a5 50 f2 ff ff 	mov    r12,QWORD PTR [rbp-0xdb0]
  7c054b:	4c 8b bd e0 fc ff ff 	mov    r15,QWORD PTR [rbp-0x320]
  7c0552:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  7c0559:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  7c0560:	c4 21 7d 10 3c e1    	vmovupd ymm15,YMMWORD PTR [rcx+r12*8]
  7c0566:	c4 21 1d 59 2c e7    	vmulpd ymm13,ymm12,YMMWORD PTR [rdi+r12*8]
  7c056c:	c4 01 05 58 34 e3    	vaddpd ymm14,ymm15,YMMWORD PTR [r11+r12*8]
  7c0572:	c4 01 7d 10 7c e1 08 	vmovupd ymm15,YMMWORD PTR [r9+r12*8+0x8]
  7c0579:	c4 41 15 59 f6       	vmulpd ymm14,ymm13,ymm14
  7c057e:	c4 01 05 5c 2c e2    	vsubpd ymm13,ymm15,YMMWORD PTR [r10+r12*8]
  7c0584:	c4 01 1d 59 3c e7    	vmulpd ymm15,ymm12,YMMWORD PTR [r15+r12*8]
  7c058a:	c4 21 05 59 3c e6    	vmulpd ymm15,ymm15,YMMWORD PTR [rsi+r12*8]
  7c0590:	c4 41 0d 5c f7       	vsubpd ymm14,ymm14,ymm15
  7c0595:	c4 41 15 58 ee       	vaddpd ymm13,ymm13,ymm14
  7c059a:	c4 01 7d 11 2c e0    	vmovupd YMMWORD PTR [r8+r12*8],ymm13
  7c05a0:	49 83 c4 04          	add    r12,0x4
  7c05a4:	4d 3b e5             	cmp    r12,r13
  7c05a7:	72 b7                	jb     7c0560 <pre_step3d_mod_mp_pre_step3d_tile_+0x6f60>
  7c05a9:	4c 8b a5 78 f3 ff ff 	mov    r12,QWORD PTR [rbp-0xc88]
  7c05b0:	4c 8b ad 80 f3 ff ff 	mov    r13,QWORD PTR [rbp-0xc80]
  7c05b7:	48 8b 8d 78 ff ff ff 	mov    rcx,QWORD PTR [rbp-0x88]
  7c05be:	48 3b c1             	cmp    rax,rcx
  7c05c1:	0f 83 a7 00 00 00    	jae    7c066e <pre_step3d_mod_mp_pre_step3d_tile_+0x706e>
  7c05c7:	4c 8b 95 68 f7 ff ff 	mov    r10,QWORD PTR [rbp-0x898]
  7c05ce:	4c 8b 8d 90 fa ff ff 	mov    r9,QWORD PTR [rbp-0x570]
  7c05d5:	4c 8b 85 30 f2 ff ff 	mov    r8,QWORD PTR [rbp-0xdd0]
  7c05dc:	48 8b bd 40 f2 ff ff 	mov    rdi,QWORD PTR [rbp-0xdc0]
  7c05e3:	4d 03 d4             	add    r10,r12
  7c05e6:	4c 8b 9d 38 f2 ff ff 	mov    r11,QWORD PTR [rbp-0xdc8]
  7c05ed:	4d 03 cc             	add    r9,r12
  7c05f0:	4c 8b bd 48 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xdb8]
  7c05f7:	4d 03 c6             	add    r8,r14
  7c05fa:	4c 89 ad 80 f3 ff ff 	mov    QWORD PTR [rbp-0xc80],r13
  7c0601:	49 03 fe             	add    rdi,r14
  7c0604:	4c 8b ad e0 fc ff ff 	mov    r13,QWORD PTR [rbp-0x320]
  7c060b:	4c 03 da             	add    r11,rdx
  7c060e:	4c 03 fa             	add    r15,rdx
  7c0611:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  7c0618:	00 
  7c0619:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  7c0620:	c4 41 7b 10 3c c7    	vmovsd xmm15,QWORD PTR [r15+rax*8]
  7c0626:	c5 3b 59 2c c7       	vmulsd xmm13,xmm8,QWORD PTR [rdi+rax*8]
  7c062b:	c4 41 03 58 34 c3    	vaddsd xmm14,xmm15,QWORD PTR [r11+rax*8]
  7c0631:	c4 41 7b 10 7c c1 08 	vmovsd xmm15,QWORD PTR [r9+rax*8+0x8]
  7c0638:	c4 41 13 59 f6       	vmulsd xmm14,xmm13,xmm14
  7c063d:	c4 41 03 5c 2c c2    	vsubsd xmm13,xmm15,QWORD PTR [r10+rax*8]
  7c0643:	c4 41 3b 59 7c c5 00 	vmulsd xmm15,xmm8,QWORD PTR [r13+rax*8+0x0]
  7c064a:	c5 03 59 3c c6       	vmulsd xmm15,xmm15,QWORD PTR [rsi+rax*8]
  7c064f:	c4 41 0b 5c f7       	vsubsd xmm14,xmm14,xmm15
  7c0654:	c4 41 0b 58 ed       	vaddsd xmm13,xmm14,xmm13
  7c0659:	c4 41 7b 11 2c c0    	vmovsd QWORD PTR [r8+rax*8],xmm13
  7c065f:	48 ff c0             	inc    rax
  7c0662:	48 3b c1             	cmp    rax,rcx
  7c0665:	72 b9                	jb     7c0620 <pre_step3d_mod_mp_pre_step3d_tile_+0x7020>
  7c0667:	4c 8b ad 80 f3 ff ff 	mov    r13,QWORD PTR [rbp-0xc80]
  7c066e:	49 ff c5             	inc    r13
  7c0671:	4c 03 a5 18 ff ff ff 	add    r12,QWORD PTR [rbp-0xe8]
  7c0678:	4c 03 b5 00 fc ff ff 	add    r14,QWORD PTR [rbp-0x400]
  7c067f:	48 03 95 10 fd ff ff 	add    rdx,QWORD PTR [rbp-0x2f0]
  7c0686:	48 03 b5 98 f6 ff ff 	add    rsi,QWORD PTR [rbp-0x968]
  7c068d:	4c 3b ad 08 fd ff ff 	cmp    r13,QWORD PTR [rbp-0x2f8]
  7c0694:	0f 82 2a fe ff ff    	jb     7c04c4 <pre_step3d_mod_mp_pre_step3d_tile_+0x6ec4>
  7c069a:	c5 7b 10 2d de ba 08 	vmovsd xmm13,QWORD PTR [rip+0x8bade]        # 84c180 <__STRLITPACK_0.112+0x70>
  7c06a1:	00 
  7c06a2:	48 8b bd d8 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x728]
  7c06a9:	44 8b 85 b8 f8 ff ff 	mov    r8d,DWORD PTR [rbp-0x748]
  7c06b0:	4c 8b 8d c0 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x740]
  7c06b7:	4c 8b 9d c8 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x738]
  7c06be:	44 8b 95 d0 f8 ff ff 	mov    r10d,DWORD PTR [rbp-0x730]
  7c06c5:	e9 28 0c 00 00       	jmp    7c12f2 <pre_step3d_mod_mp_pre_step3d_tile_+0x7cf2>
  7c06ca:	45 33 ed             	xor    r13d,r13d
  7c06cd:	33 c9                	xor    ecx,ecx
  7c06cf:	33 d2                	xor    edx,edx
  7c06d1:	33 f6                	xor    esi,esi
  7c06d3:	48 83 bd 08 fd ff ff 	cmp    QWORD PTR [rbp-0x2f8],0x0
  7c06da:	00 
  7c06db:	0f 8e 11 0c 00 00    	jle    7c12f2 <pre_step3d_mod_mp_pre_step3d_tile_+0x7cf2>
  7c06e1:	4c 8b bd 58 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x9a8]
  7c06e8:	4c 0f af ff          	imul   r15,rdi
  7c06ec:	48 8b 85 a8 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb58]
  7c06f3:	4c 8b b5 98 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xa68]
  7c06fa:	4c 0f af f7          	imul   r14,rdi
  7c06fe:	4c 8b a5 90 f5 ff ff 	mov    r12,QWORD PTR [rbp-0xa70]
  7c0705:	49 03 c7             	add    rax,r15
  7c0708:	48 89 85 68 f3 ff ff 	mov    QWORD PTR [rbp-0xc98],rax
  7c070f:	48 8b 85 60 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xba0]
  7c0716:	48 0f af c7          	imul   rax,rdi
  7c071a:	4c 03 bd e8 f2 ff ff 	add    r15,QWORD PTR [rbp-0xd18]
  7c0721:	4d 03 e6             	add    r12,r14
  7c0724:	4c 03 b5 a0 f4 ff ff 	add    r14,QWORD PTR [rbp-0xb60]
  7c072b:	48 03 85 d8 f2 ff ff 	add    rax,QWORD PTR [rbp-0xd28]
  7c0732:	4c 89 b5 58 f2 ff ff 	mov    QWORD PTR [rbp-0xda8],r14
  7c0739:	4c 89 bd 60 f2 ff ff 	mov    QWORD PTR [rbp-0xda0],r15
  7c0740:	4c 89 a5 68 f2 ff ff 	mov    QWORD PTR [rbp-0xd98],r12
  7c0747:	4c 89 ad f0 f3 ff ff 	mov    QWORD PTR [rbp-0xc10],r13
  7c074e:	48 89 bd d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],rdi
  7c0755:	44 89 85 b8 f8 ff ff 	mov    DWORD PTR [rbp-0x748],r8d
  7c075c:	4c 89 8d c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],r9
  7c0763:	4c 89 9d c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r11
  7c076a:	44 89 95 d0 f8 ff ff 	mov    DWORD PTR [rbp-0x730],r10d
  7c0771:	c5 f9 10 05 77 b2 08 	vmovupd xmm0,XMMWORD PTR [rip+0x8b277]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  7c0778:	00 
  7c0779:	48 8b bd 00 ff ff ff 	mov    rdi,QWORD PTR [rbp-0x100]
  7c0780:	48 3b bd f8 fb ff ff 	cmp    rdi,QWORD PTR [rbp-0x408]
  7c0787:	0f 8c 84 02 00 00    	jl     7c0a11 <pre_step3d_mod_mp_pre_step3d_tile_+0x7411>
  7c078d:	48 83 7d 80 00       	cmp    QWORD PTR [rbp-0x80],0x0
  7c0792:	0f 84 49 8f 00 00    	je     7c96e1 <pre_step3d_mod_mp_pre_step3d_tile_+0x100e1>
  7c0798:	48 83 bd 78 ff ff ff 	cmp    QWORD PTR [rbp-0x88],0x2
  7c079f:	02 
  7c07a0:	0f 8c 3b 8f 00 00    	jl     7c96e1 <pre_step3d_mod_mp_pre_step3d_tile_+0x100e1>
  7c07a6:	4c 8b a5 68 f3 ff ff 	mov    r12,QWORD PTR [rbp-0xc98]
  7c07ad:	45 33 db             	xor    r11d,r11d
  7c07b0:	4c 8b bd 90 fa ff ff 	mov    r15,QWORD PTR [rbp-0x570]
  7c07b7:	4c 8b 95 68 f7 ff ff 	mov    r10,QWORD PTR [rbp-0x898]
  7c07be:	4c 8b 8d 58 f2 ff ff 	mov    r9,QWORD PTR [rbp-0xda8]
  7c07c5:	4d 8d 2c 34          	lea    r13,[r12+rsi*1]
  7c07c9:	4c 8b 85 68 f2 ff ff 	mov    r8,QWORD PTR [rbp-0xd98]
  7c07d0:	45 33 e4             	xor    r12d,r12d
  7c07d3:	48 8b bd 60 f2 ff ff 	mov    rdi,QWORD PTR [rbp-0xda0]
  7c07da:	4c 03 f9             	add    r15,rcx
  7c07dd:	4c 8b 75 88          	mov    r14,QWORD PTR [rbp-0x78]
  7c07e1:	4c 03 d1             	add    r10,rcx
  7c07e4:	4c 89 ad 70 f2 ff ff 	mov    QWORD PTR [rbp-0xd90],r13
  7c07eb:	45 33 ed             	xor    r13d,r13d
  7c07ee:	4c 03 ca             	add    r9,rdx
  7c07f1:	4c 89 b5 88 f3 ff ff 	mov    QWORD PTR [rbp-0xc78],r14
  7c07f8:	4c 03 c2             	add    r8,rdx
  7c07fb:	48 89 b5 90 f3 ff ff 	mov    QWORD PTR [rbp-0xc70],rsi
  7c0802:	48 03 fe             	add    rdi,rsi
  7c0805:	48 89 8d a0 f3 ff ff 	mov    QWORD PTR [rbp-0xc60],rcx
  7c080c:	4c 89 bd f0 fc ff ff 	mov    QWORD PTR [rbp-0x310],r15
  7c0813:	48 89 95 98 f3 ff ff 	mov    QWORD PTR [rbp-0xc68],rdx
  7c081a:	4c 89 ee             	mov    rsi,r13
  7c081d:	48 8b 8d 70 f2 ff ff 	mov    rcx,QWORD PTR [rbp-0xd90]
  7c0824:	4c 8b 75 80          	mov    r14,QWORD PTR [rbp-0x80]
  7c0828:	48 8b 95 58 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xa8]
  7c082f:	4f 8d 3c 28          	lea    r15,[r8+r13*1]
  7c0833:	c4 41 7b 10 2f       	vmovsd xmm13,QWORD PTR [r15]
  7c0838:	c4 01 11 16 34 37    	vmovhpd xmm14,xmm13,QWORD PTR [r15+r14*1]
  7c083e:	4c 8d 3c 31          	lea    r15,[rcx+rsi*1]
  7c0842:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  7c0847:	c5 09 59 f8          	vmulpd xmm15,xmm14,xmm0
  7c084b:	c4 41 19 16 34 17    	vmovhpd xmm14,xmm12,QWORD PTR [r15+rdx*1]
  7c0851:	4c 8d 3c 37          	lea    r15,[rdi+rsi*1]
  7c0855:	c4 41 7b 10 2f       	vmovsd xmm13,QWORD PTR [r15]
  7c085a:	48 8d 34 56          	lea    rsi,[rsi+rdx*2]
  7c085e:	c4 41 11 16 24 17    	vmovhpd xmm12,xmm13,QWORD PTR [r15+rdx*1]
  7c0864:	4e 8d 3c 20          	lea    r15,[rax+r12*1]
  7c0868:	c4 41 09 58 ec       	vaddpd xmm13,xmm14,xmm12
  7c086d:	48 8b 95 f0 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x310]
  7c0874:	c4 41 01 59 f5       	vmulpd xmm14,xmm15,xmm13
  7c0879:	c4 21 79 10 7c da 08 	vmovupd xmm15,XMMWORD PTR [rdx+r11*8+0x8]
  7c0880:	48 8b 95 e0 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x320]
  7c0887:	c4 01 01 5c 2c da    	vsubpd xmm13,xmm15,XMMWORD PTR [r10+r11*8]
  7c088d:	c4 21 79 59 24 da    	vmulpd xmm12,xmm0,XMMWORD PTR [rdx+r11*8]
  7c0893:	48 8b 95 e8 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x318]
  7c089a:	49 83 c3 02          	add    r11,0x2
  7c089e:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  7c08a3:	c4 41 01 16 3c 17    	vmovhpd xmm15,xmm15,QWORD PTR [r15+rdx*1]
  7c08a9:	4f 8d 7c 0d 00       	lea    r15,[r13+r9*1+0x0]
  7c08ae:	c4 41 19 59 e7       	vmulpd xmm12,xmm12,xmm15
  7c08b3:	c4 41 09 5c f4       	vsubpd xmm14,xmm14,xmm12
  7c08b8:	c4 41 11 58 ee       	vaddpd xmm13,xmm13,xmm14
  7c08bd:	c4 41 7b 11 2f       	vmovsd QWORD PTR [r15],xmm13
  7c08c2:	4d 8d 24 54          	lea    r12,[r12+rdx*2]
  7c08c6:	c4 01 79 17 2c 3e    	vmovhpd QWORD PTR [r14+r15*1],xmm13
  7c08cc:	4f 8d 6c 75 00       	lea    r13,[r13+r14*2+0x0]
  7c08d1:	4c 3b 5d 88          	cmp    r11,QWORD PTR [rbp-0x78]
  7c08d5:	0f 82 4d ff ff ff    	jb     7c0828 <pre_step3d_mod_mp_pre_step3d_tile_+0x7228>
  7c08db:	4c 8b b5 88 f3 ff ff 	mov    r14,QWORD PTR [rbp-0xc78]
  7c08e2:	48 8b b5 90 f3 ff ff 	mov    rsi,QWORD PTR [rbp-0xc70]
  7c08e9:	48 8b 95 98 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xc68]
  7c08f0:	48 8b 8d a0 f3 ff ff 	mov    rcx,QWORD PTR [rbp-0xc60]
  7c08f7:	4c 8b ad 58 ff ff ff 	mov    r13,QWORD PTR [rbp-0xa8]
  7c08fe:	4c 8b 65 80          	mov    r12,QWORD PTR [rbp-0x80]
  7c0902:	4c 8b 95 e8 fc ff ff 	mov    r10,QWORD PTR [rbp-0x318]
  7c0909:	4d 0f af ee          	imul   r13,r14
  7c090d:	4d 0f af e6          	imul   r12,r14
  7c0911:	4d 0f af d6          	imul   r10,r14
  7c0915:	4c 3b b5 78 ff ff ff 	cmp    r14,QWORD PTR [rbp-0x88]
  7c091c:	0f 83 ef 00 00 00    	jae    7c0a11 <pre_step3d_mod_mp_pre_step3d_tile_+0x7411>
  7c0922:	4c 8b 85 58 f2 ff ff 	mov    r8,QWORD PTR [rbp-0xda8]
  7c0929:	4c 8b bd 68 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xd98]
  7c0930:	4c 8b 8d 68 f7 ff ff 	mov    r9,QWORD PTR [rbp-0x898]
  7c0937:	4c 8b 9d 90 fa ff ff 	mov    r11,QWORD PTR [rbp-0x570]
  7c093e:	49 8d 3c 10          	lea    rdi,[r8+rdx*1]
  7c0942:	48 89 bd 78 f2 ff ff 	mov    QWORD PTR [rbp-0xd88],rdi
  7c0949:	4d 8d 04 17          	lea    r8,[r15+rdx*1]
  7c094d:	48 8b bd 60 f2 ff ff 	mov    rdi,QWORD PTR [rbp-0xda0]
  7c0954:	4c 03 c9             	add    r9,rcx
  7c0957:	4c 8b bd 68 f3 ff ff 	mov    r15,QWORD PTR [rbp-0xc98]
  7c095e:	4c 03 d9             	add    r11,rcx
  7c0961:	48 89 b5 90 f3 ff ff 	mov    QWORD PTR [rbp-0xc70],rsi
  7c0968:	48 89 95 98 f3 ff ff 	mov    QWORD PTR [rbp-0xc68],rdx
  7c096f:	48 03 fe             	add    rdi,rsi
  7c0972:	48 89 8d a0 f3 ff ff 	mov    QWORD PTR [rbp-0xc60],rcx
  7c0979:	4c 03 fe             	add    r15,rsi
  7c097c:	48 8b 95 78 f2 ff ff 	mov    rdx,QWORD PTR [rbp-0xd88]
  7c0983:	48 8b 8d e0 fc ff ff 	mov    rcx,QWORD PTR [rbp-0x320]
  7c098a:	48 8b b5 58 ff ff ff 	mov    rsi,QWORD PTR [rbp-0xa8]
  7c0991:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  7c0998:	00 
  7c0999:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  7c09a0:	c4 01 7b 10 74 3d 00 	vmovsd xmm14,QWORD PTR [r13+r15*1+0x0]
  7c09a7:	c4 01 3b 59 3c 04    	vmulsd xmm15,xmm8,QWORD PTR [r12+r8*1]
  7c09ad:	c4 41 0b 58 64 3d 00 	vaddsd xmm12,xmm14,QWORD PTR [r13+rdi*1+0x0]
  7c09b4:	c4 41 03 59 ec       	vmulsd xmm13,xmm15,xmm12
  7c09b9:	4c 03 ee             	add    r13,rsi
  7c09bc:	c4 21 3b 59 3c f1    	vmulsd xmm15,xmm8,QWORD PTR [rcx+r14*8]
  7c09c2:	c4 01 7b 10 74 f3 08 	vmovsd xmm14,QWORD PTR [r11+r14*8+0x8]
  7c09c9:	c4 01 0b 5c 24 f1    	vsubsd xmm12,xmm14,QWORD PTR [r9+r14*8]
  7c09cf:	49 ff c6             	inc    r14
  7c09d2:	c4 41 03 59 34 02    	vmulsd xmm14,xmm15,QWORD PTR [r10+rax*1]
  7c09d8:	4c 03 95 e8 fc ff ff 	add    r10,QWORD PTR [rbp-0x318]
  7c09df:	c4 41 13 5c ee       	vsubsd xmm13,xmm13,xmm14
  7c09e4:	c4 41 13 58 e4       	vaddsd xmm12,xmm13,xmm12
  7c09e9:	c4 41 7b 11 24 14    	vmovsd QWORD PTR [r12+rdx*1],xmm12
  7c09ef:	4c 03 65 80          	add    r12,QWORD PTR [rbp-0x80]
  7c09f3:	4c 3b b5 78 ff ff ff 	cmp    r14,QWORD PTR [rbp-0x88]
  7c09fa:	72 a4                	jb     7c09a0 <pre_step3d_mod_mp_pre_step3d_tile_+0x73a0>
  7c09fc:	48 8b b5 90 f3 ff ff 	mov    rsi,QWORD PTR [rbp-0xc70]
  7c0a03:	48 8b 95 98 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xc68]
  7c0a0a:	48 8b 8d a0 f3 ff ff 	mov    rcx,QWORD PTR [rbp-0xc60]
  7c0a11:	48 8b bd f0 f3 ff ff 	mov    rdi,QWORD PTR [rbp-0xc10]
  7c0a18:	48 ff c7             	inc    rdi
  7c0a1b:	48 03 8d 18 ff ff ff 	add    rcx,QWORD PTR [rbp-0xe8]
  7c0a22:	48 03 95 00 fc ff ff 	add    rdx,QWORD PTR [rbp-0x400]
  7c0a29:	48 03 b5 10 fd ff ff 	add    rsi,QWORD PTR [rbp-0x2f0]
  7c0a30:	48 03 85 98 f6 ff ff 	add    rax,QWORD PTR [rbp-0x968]
  7c0a37:	48 89 bd f0 f3 ff ff 	mov    QWORD PTR [rbp-0xc10],rdi
  7c0a3e:	48 3b bd 08 fd ff ff 	cmp    rdi,QWORD PTR [rbp-0x2f8]
  7c0a45:	0f 82 2e fd ff ff    	jb     7c0779 <pre_step3d_mod_mp_pre_step3d_tile_+0x7179>
  7c0a4b:	c5 f9 10 05 4d ad 08 	vmovupd xmm0,XMMWORD PTR [rip+0x8ad4d]        # 84b7a0 <__STRLITPACK_219.115+0xa0>
  7c0a52:	00 
  7c0a53:	c5 7b 10 2d 25 b7 08 	vmovsd xmm13,QWORD PTR [rip+0x8b725]        # 84c180 <__STRLITPACK_0.112+0x70>
  7c0a5a:	00 
  7c0a5b:	48 8b bd d8 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x728]
  7c0a62:	44 8b 85 b8 f8 ff ff 	mov    r8d,DWORD PTR [rbp-0x748]
  7c0a69:	4c 8b 8d c0 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x740]
  7c0a70:	4c 8b 9d c8 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x738]
  7c0a77:	44 8b 95 d0 f8 ff ff 	mov    r10d,DWORD PTR [rbp-0x730]
  7c0a7e:	e9 6f 08 00 00       	jmp    7c12f2 <pre_step3d_mod_mp_pre_step3d_tile_+0x7cf2>
  7c0a83:	48 83 7d 80 08       	cmp    QWORD PTR [rbp-0x80],0x8
  7c0a88:	0f 85 b9 03 00 00    	jne    7c0e47 <pre_step3d_mod_mp_pre_step3d_tile_+0x7847>
  7c0a8e:	48 83 bd 58 ff ff ff 	cmp    QWORD PTR [rbp-0xa8],0x8
  7c0a95:	08 
  7c0a96:	0f 85 ab 03 00 00    	jne    7c0e47 <pre_step3d_mod_mp_pre_step3d_tile_+0x7847>
  7c0a9c:	48 83 bd e8 fc ff ff 	cmp    QWORD PTR [rbp-0x318],0x8
  7c0aa3:	08 
  7c0aa4:	0f 85 9d 03 00 00    	jne    7c0e47 <pre_step3d_mod_mp_pre_step3d_tile_+0x7847>
  7c0aaa:	45 33 ed             	xor    r13d,r13d
  7c0aad:	45 33 e4             	xor    r12d,r12d
  7c0ab0:	4c 89 a5 b0 f3 ff ff 	mov    QWORD PTR [rbp-0xc50],r12
  7c0ab7:	4c 89 a5 a8 f3 ff ff 	mov    QWORD PTR [rbp-0xc58],r12
  7c0abe:	48 83 bd 08 fd ff ff 	cmp    QWORD PTR [rbp-0x2f8],0x0
  7c0ac5:	00 
  7c0ac6:	0f 8e 26 08 00 00    	jle    7c12f2 <pre_step3d_mod_mp_pre_step3d_tile_+0x7cf2>
  7c0acc:	48 8b 8d 98 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xa68]
  7c0ad3:	48 0f af cf          	imul   rcx,rdi
  7c0ad7:	c5 7d 10 2d 21 99 08 	vmovupd ymm13,YMMWORD PTR [rip+0x89921]        # 84a400 <var$630.126.450+0x460>
  7c0ade:	00 
  7c0adf:	c5 fb 11 a5 00 f2 ff 	vmovsd QWORD PTR [rbp-0xe00],xmm4
  7c0ae6:	ff 
  7c0ae7:	c5 fb 11 9d f8 f1 ff 	vmovsd QWORD PTR [rbp-0xe08],xmm3
  7c0aee:	ff 
  7c0aef:	c5 fb 11 95 f0 f1 ff 	vmovsd QWORD PTR [rbp-0xe10],xmm2
  7c0af6:	ff 
  7c0af7:	c5 7b 10 25 99 be 08 	vmovsd xmm12,QWORD PTR [rip+0x8be99]        # 84c998 <__STRLITPACK_0.112+0x888>
  7c0afe:	00 
  7c0aff:	48 8b b5 58 f6 ff ff 	mov    rsi,QWORD PTR [rbp-0x9a8]
  7c0b06:	4c 8b b5 60 f4 ff ff 	mov    r14,QWORD PTR [rbp-0xba0]
  7c0b0d:	48 0f af f7          	imul   rsi,rdi
  7c0b11:	4c 0f af f7          	imul   r14,rdi
  7c0b15:	c5 fd 10 15 43 a6 08 	vmovupd ymm2,YMMWORD PTR [rip+0x8a643]        # 84b160 <var$630.126.450+0x11c0>
  7c0b1c:	00 
  7c0b1d:	c5 fb 10 1d 6b be 08 	vmovsd xmm3,QWORD PTR [rip+0x8be6b]        # 84c990 <__STRLITPACK_0.112+0x880>
  7c0b24:	00 
  7c0b25:	c5 fd 10 25 13 a6 08 	vmovupd ymm4,YMMWORD PTR [rip+0x8a613]        # 84b140 <var$630.126.450+0x11a0>
  7c0b2c:	00 
  7c0b2d:	4c 8b bd 88 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xa78]
  7c0b34:	48 8b 95 98 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xb68]
  7c0b3b:	48 89 bd d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],rdi
  7c0b42:	44 89 85 b8 f8 ff ff 	mov    DWORD PTR [rbp-0x748],r8d
  7c0b49:	49 8d 04 0f          	lea    rax,[r15+rcx*1]
  7c0b4d:	4c 8b bd 78 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb88]
  7c0b54:	48 03 d6             	add    rdx,rsi
  7c0b57:	48 03 b5 b0 f4 ff ff 	add    rsi,QWORD PTR [rbp-0xb50]
  7c0b5e:	48 03 8d 88 f4 ff ff 	add    rcx,QWORD PTR [rbp-0xb78]
  7c0b65:	48 89 8d 90 f2 ff ff 	mov    QWORD PTR [rbp-0xd70],rcx
  7c0b6c:	4d 03 fe             	add    r15,r14
  7c0b6f:	4c 03 b5 68 f4 ff ff 	add    r14,QWORD PTR [rbp-0xb98]
  7c0b76:	48 89 b5 98 f2 ff ff 	mov    QWORD PTR [rbp-0xd68],rsi
  7c0b7d:	48 89 95 a8 f2 ff ff 	mov    QWORD PTR [rbp-0xd58],rdx
  7c0b84:	4c 89 b5 80 f2 ff ff 	mov    QWORD PTR [rbp-0xd80],r14
  7c0b8b:	4c 89 bd 88 f2 ff ff 	mov    QWORD PTR [rbp-0xd78],r15
  7c0b92:	48 89 85 a0 f2 ff ff 	mov    QWORD PTR [rbp-0xd60],rax
  7c0b99:	4c 89 8d c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],r9
  7c0ba0:	4c 89 9d c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r11
  7c0ba7:	44 89 95 d0 f8 ff ff 	mov    DWORD PTR [rbp-0x730],r10d
  7c0bae:	4c 89 e7             	mov    rdi,r12
  7c0bb1:	48 8b 95 a8 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xc58]
  7c0bb8:	48 8b b5 b0 f3 ff ff 	mov    rsi,QWORD PTR [rbp-0xc50]
  7c0bbf:	48 8b 8d 78 ff ff ff 	mov    rcx,QWORD PTR [rbp-0x88]
  7c0bc6:	48 8b 85 00 ff ff ff 	mov    rax,QWORD PTR [rbp-0x100]
  7c0bcd:	48 3b 85 f8 fb ff ff 	cmp    rax,QWORD PTR [rbp-0x408]
  7c0bd4:	0f 8c 3c 02 00 00    	jl     7c0e16 <pre_step3d_mod_mp_pre_step3d_tile_+0x7816>
  7c0bda:	48 83 f9 04          	cmp    rcx,0x4
  7c0bde:	0f 8c 05 8b 00 00    	jl     7c96e9 <pre_step3d_mod_mp_pre_step3d_tile_+0x100e9>
  7c0be4:	4c 8b 8d 90 f2 ff ff 	mov    r9,QWORD PTR [rbp-0xd70]
  7c0beb:	45 33 f6             	xor    r14d,r14d
  7c0bee:	4c 8b bd a0 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xd60]
  7c0bf5:	4c 8b 9d 68 f7 ff ff 	mov    r11,QWORD PTR [rbp-0x898]
  7c0bfc:	4c 8b 95 90 fa ff ff 	mov    r10,QWORD PTR [rbp-0x570]
  7c0c03:	4d 8d 04 31          	lea    r8,[r9+rsi*1]
  7c0c07:	4c 89 85 d0 f2 ff ff 	mov    QWORD PTR [rbp-0xd30],r8
  7c0c0e:	4d 8d 0c 37          	lea    r9,[r15+rsi*1]
  7c0c12:	4c 8b bd a8 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xd58]
  7c0c19:	4d 03 dc             	add    r11,r12
  7c0c1c:	4c 8b 85 98 f2 ff ff 	mov    r8,QWORD PTR [rbp-0xd68]
  7c0c23:	4d 03 d4             	add    r10,r12
  7c0c26:	48 8b 85 e0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x120]
  7c0c2d:	48 89 95 a8 f3 ff ff 	mov    QWORD PTR [rbp-0xc58],rdx
  7c0c34:	4c 03 fa             	add    r15,rdx
  7c0c37:	4c 89 bd b8 f2 ff ff 	mov    QWORD PTR [rbp-0xd48],r15
  7c0c3e:	4c 03 c2             	add    r8,rdx
  7c0c41:	4c 8b bd 88 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xd78]
  7c0c48:	48 89 b5 b0 f3 ff ff 	mov    QWORD PTR [rbp-0xc50],rsi
  7c0c4f:	4c 89 a5 b8 f3 ff ff 	mov    QWORD PTR [rbp-0xc48],r12
  7c0c56:	4c 89 ad c0 f3 ff ff 	mov    QWORD PTR [rbp-0xc40],r13
  7c0c5d:	4c 03 ff             	add    r15,rdi
  7c0c60:	4c 89 bd b0 f2 ff ff 	mov    QWORD PTR [rbp-0xd50],r15
  7c0c67:	49 89 c5             	mov    r13,rax
  7c0c6a:	4c 8b bd 80 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xd80]
  7c0c71:	48 8b 8d b0 f2 ff ff 	mov    rcx,QWORD PTR [rbp-0xd50]
  7c0c78:	48 8b b5 b8 f2 ff ff 	mov    rsi,QWORD PTR [rbp-0xd48]
  7c0c7f:	4c 8b a5 d0 f2 ff ff 	mov    r12,QWORD PTR [rbp-0xd30]
  7c0c86:	4c 03 ff             	add    r15,rdi
  7c0c89:	4c 89 fa             	mov    rdx,r15
  7c0c8c:	4c 8b bd e0 fc ff ff 	mov    r15,QWORD PTR [rbp-0x320]
  7c0c93:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  7c0c98:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  7c0c9f:	00 
  7c0ca0:	c4 21 7d 10 34 f6    	vmovupd ymm14,YMMWORD PTR [rsi+r14*8]
  7c0ca6:	c4 01 15 59 3c f1    	vmulpd ymm15,ymm13,YMMWORD PTR [r9+r14*8]
  7c0cac:	c4 81 0d 58 04 f0    	vaddpd ymm0,ymm14,YMMWORD PTR [r8+r14*8]
  7c0cb2:	c4 01 7d 10 74 f2 08 	vmovupd ymm14,YMMWORD PTR [r10+r14*8+0x8]
  7c0cb9:	c5 85 59 c8          	vmulpd ymm1,ymm15,ymm0
  7c0cbd:	c4 21 5d 59 3c f2    	vmulpd ymm15,ymm4,YMMWORD PTR [rdx+r14*8]
  7c0cc3:	c4 81 0d 5c 04 f3    	vsubpd ymm0,ymm14,YMMWORD PTR [r11+r14*8]
  7c0cc9:	c4 21 6d 59 34 f1    	vmulpd ymm14,ymm2,YMMWORD PTR [rcx+r14*8]
  7c0ccf:	c4 41 05 5c fe       	vsubpd ymm15,ymm15,ymm14
  7c0cd4:	c4 01 05 59 34 f7    	vmulpd ymm14,ymm15,YMMWORD PTR [r15+r14*8]
  7c0cda:	c4 c1 75 58 ce       	vaddpd ymm1,ymm1,ymm14
  7c0cdf:	c5 fd 58 c1          	vaddpd ymm0,ymm0,ymm1
  7c0ce3:	c4 81 7d 11 04 f4    	vmovupd YMMWORD PTR [r12+r14*8],ymm0
  7c0ce9:	49 83 c6 04          	add    r14,0x4
  7c0ced:	4d 3b f5             	cmp    r14,r13
  7c0cf0:	72 ae                	jb     7c0ca0 <pre_step3d_mod_mp_pre_step3d_tile_+0x76a0>
  7c0cf2:	48 8b 95 a8 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xc58]
  7c0cf9:	48 8b b5 b0 f3 ff ff 	mov    rsi,QWORD PTR [rbp-0xc50]
  7c0d00:	4c 8b a5 b8 f3 ff ff 	mov    r12,QWORD PTR [rbp-0xc48]
  7c0d07:	4c 8b ad c0 f3 ff ff 	mov    r13,QWORD PTR [rbp-0xc40]
  7c0d0e:	48 8b 8d 78 ff ff ff 	mov    rcx,QWORD PTR [rbp-0x88]
  7c0d15:	48 3b c1             	cmp    rax,rcx
  7c0d18:	0f 83 f8 00 00 00    	jae    7c0e16 <pre_step3d_mod_mp_pre_step3d_tile_+0x7816>
  7c0d1e:	4c 8b 8d a0 f2 ff ff 	mov    r9,QWORD PTR [rbp-0xd60]
  7c0d25:	4c 8b bd 98 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xd68]
  7c0d2c:	4c 8b b5 68 f7 ff ff 	mov    r14,QWORD PTR [rbp-0x898]
  7c0d33:	4c 8b 9d 90 fa ff ff 	mov    r11,QWORD PTR [rbp-0x570]
  7c0d3a:	4d 8d 04 31          	lea    r8,[r9+rsi*1]
  7c0d3e:	4c 89 85 c0 f2 ff ff 	mov    QWORD PTR [rbp-0xd40],r8
  7c0d45:	4d 8d 0c 17          	lea    r9,[r15+rdx*1]
  7c0d49:	4c 8b 85 a8 f2 ff ff 	mov    r8,QWORD PTR [rbp-0xd58]
  7c0d50:	4d 03 f4             	add    r14,r12
  7c0d53:	4c 8b 95 90 f2 ff ff 	mov    r10,QWORD PTR [rbp-0xd70]
  7c0d5a:	4d 03 dc             	add    r11,r12
  7c0d5d:	48 89 b5 b0 f3 ff ff 	mov    QWORD PTR [rbp-0xc50],rsi
  7c0d64:	4c 89 a5 b8 f3 ff ff 	mov    QWORD PTR [rbp-0xc48],r12
  7c0d6b:	4d 8d 3c 10          	lea    r15,[r8+rdx*1]
  7c0d6f:	4c 89 bd c8 f2 ff ff 	mov    QWORD PTR [rbp-0xd38],r15
  7c0d76:	4c 03 d6             	add    r10,rsi
  7c0d79:	4c 8b bd 80 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xd80]
  7c0d80:	4c 8b 85 88 f2 ff ff 	mov    r8,QWORD PTR [rbp-0xd78]
  7c0d87:	4c 89 ad c0 f3 ff ff 	mov    QWORD PTR [rbp-0xc40],r13
  7c0d8e:	4c 8b a5 c8 f2 ff ff 	mov    r12,QWORD PTR [rbp-0xd38]
  7c0d95:	4c 03 ff             	add    r15,rdi
  7c0d98:	4c 03 c7             	add    r8,rdi
  7c0d9b:	4c 89 fe             	mov    rsi,r15
  7c0d9e:	4c 8b ad c0 f2 ff ff 	mov    r13,QWORD PTR [rbp-0xd40]
  7c0da5:	4c 8b bd e0 fc ff ff 	mov    r15,QWORD PTR [rbp-0x320]
  7c0dac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  7c0db0:	c4 41 7b 10 34 c4    	vmovsd xmm14,QWORD PTR [r12+rax*8]
  7c0db6:	c4 41 3b 59 7c c5 00 	vmulsd xmm15,xmm8,QWORD PTR [r13+rax*8+0x0]
  7c0dbd:	c4 c1 0b 58 04 c1    	vaddsd xmm0,xmm14,QWORD PTR [r9+rax*8]
  7c0dc3:	c4 41 7b 10 74 c3 08 	vmovsd xmm14,QWORD PTR [r11+rax*8+0x8]
  7c0dca:	c5 83 59 c8          	vmulsd xmm1,xmm15,xmm0
  7c0dce:	c4 c1 0b 5c 04 c6    	vsubsd xmm0,xmm14,QWORD PTR [r14+rax*8]
  7c0dd4:	c5 63 59 3c c6       	vmulsd xmm15,xmm3,QWORD PTR [rsi+rax*8]
  7c0dd9:	c4 41 1b 59 34 c0    	vmulsd xmm14,xmm12,QWORD PTR [r8+rax*8]
  7c0ddf:	c4 41 03 5c fe       	vsubsd xmm15,xmm15,xmm14
  7c0de4:	c4 41 03 59 34 c7    	vmulsd xmm14,xmm15,QWORD PTR [r15+rax*8]
  7c0dea:	c4 c1 73 58 ce       	vaddsd xmm1,xmm1,xmm14
  7c0def:	c5 f3 58 c0          	vaddsd xmm0,xmm1,xmm0
  7c0df3:	c4 c1 7b 11 04 c2    	vmovsd QWORD PTR [r10+rax*8],xmm0
  7c0df9:	48 ff c0             	inc    rax
  7c0dfc:	48 3b c1             	cmp    rax,rcx
  7c0dff:	72 af                	jb     7c0db0 <pre_step3d_mod_mp_pre_step3d_tile_+0x77b0>
  7c0e01:	48 8b b5 b0 f3 ff ff 	mov    rsi,QWORD PTR [rbp-0xc50]
  7c0e08:	4c 8b a5 b8 f3 ff ff 	mov    r12,QWORD PTR [rbp-0xc48]
  7c0e0f:	4c 8b ad c0 f3 ff ff 	mov    r13,QWORD PTR [rbp-0xc40]
  7c0e16:	49 ff c5             	inc    r13
  7c0e19:	4c 03 a5 18 ff ff ff 	add    r12,QWORD PTR [rbp-0xe8]
  7c0e20:	48 03 b5 00 fc ff ff 	add    rsi,QWORD PTR [rbp-0x400]
  7c0e27:	48 03 95 10 fd ff ff 	add    rdx,QWORD PTR [rbp-0x2f0]
  7c0e2e:	48 03 bd 98 f6 ff ff 	add    rdi,QWORD PTR [rbp-0x968]
  7c0e35:	4c 3b ad 08 fd ff ff 	cmp    r13,QWORD PTR [rbp-0x2f8]
  7c0e3c:	0f 82 84 fd ff ff    	jb     7c0bc6 <pre_step3d_mod_mp_pre_step3d_tile_+0x75c6>
  7c0e42:	e9 58 04 00 00       	jmp    7c129f <pre_step3d_mod_mp_pre_step3d_tile_+0x7c9f>
  7c0e47:	45 33 e4             	xor    r12d,r12d
  7c0e4a:	33 c9                	xor    ecx,ecx
  7c0e4c:	33 d2                	xor    edx,edx
  7c0e4e:	33 c0                	xor    eax,eax
  7c0e50:	48 89 85 c8 f3 ff ff 	mov    QWORD PTR [rbp-0xc38],rax
  7c0e57:	48 83 bd 08 fd ff ff 	cmp    QWORD PTR [rbp-0x2f8],0x0
  7c0e5e:	00 
  7c0e5f:	0f 8e 8d 04 00 00    	jle    7c12f2 <pre_step3d_mod_mp_pre_step3d_tile_+0x7cf2>
  7c0e65:	4c 8b b5 98 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xa68]
  7c0e6c:	4c 0f af f7          	imul   r14,rdi
  7c0e70:	4c 8b ad 58 f6 ff ff 	mov    r13,QWORD PTR [rbp-0x9a8]
  7c0e77:	4c 0f af ef          	imul   r13,rdi
  7c0e7b:	48 8b b5 60 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xba0]
  7c0e82:	48 0f af f7          	imul   rsi,rdi
  7c0e86:	4c 8b bd 90 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xa70]
  7c0e8d:	c5 fb 11 a5 00 f2 ff 	vmovsd QWORD PTR [rbp-0xe00],xmm4
  7c0e94:	ff 
  7c0e95:	c5 fb 11 9d f8 f1 ff 	vmovsd QWORD PTR [rbp-0xe08],xmm3
  7c0e9c:	ff 
  7c0e9d:	c5 fb 11 95 f0 f1 ff 	vmovsd QWORD PTR [rbp-0xe10],xmm2
  7c0ea4:	ff 
  7c0ea5:	4d 03 fe             	add    r15,r14
  7c0ea8:	4c 89 bd 28 f3 ff ff 	mov    QWORD PTR [rbp-0xcd8],r15
  7c0eaf:	4c 8b bd a8 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb58]
  7c0eb6:	4c 03 b5 a0 f4 ff ff 	add    r14,QWORD PTR [rbp-0xb60]
  7c0ebd:	4c 89 b5 f0 f2 ff ff 	mov    QWORD PTR [rbp-0xd10],r14
  7c0ec4:	4c 89 a5 a0 f6 ff ff 	mov    QWORD PTR [rbp-0x960],r12
  7c0ecb:	4d 03 fd             	add    r15,r13
  7c0ece:	4c 89 bd 60 f3 ff ff 	mov    QWORD PTR [rbp-0xca0],r15
  7c0ed5:	4c 8b bd d8 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xd28]
  7c0edc:	4c 03 ad e8 f2 ff ff 	add    r13,QWORD PTR [rbp-0xd18]
  7c0ee3:	4c 89 ad 00 f3 ff ff 	mov    QWORD PTR [rbp-0xd00],r13
  7c0eea:	48 89 bd d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],rdi
  7c0ef1:	4c 03 fe             	add    r15,rsi
  7c0ef4:	48 03 b5 70 f4 ff ff 	add    rsi,QWORD PTR [rbp-0xb90]
  7c0efb:	49 89 c5             	mov    r13,rax
  7c0efe:	4c 89 bd 70 f3 ff ff 	mov    QWORD PTR [rbp-0xc90],r15
  7c0f05:	48 89 b5 f8 f2 ff ff 	mov    QWORD PTR [rbp-0xd08],rsi
  7c0f0c:	44 89 85 b8 f8 ff ff 	mov    DWORD PTR [rbp-0x748],r8d
  7c0f13:	4c 89 8d c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],r9
  7c0f1a:	4c 89 9d c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r11
  7c0f21:	44 89 95 d0 f8 ff ff 	mov    DWORD PTR [rbp-0x730],r10d
  7c0f28:	c5 fb 10 05 68 ba 08 	vmovsd xmm0,QWORD PTR [rip+0x8ba68]        # 84c998 <__STRLITPACK_0.112+0x888>
  7c0f2f:	00 
  7c0f30:	c5 fb 10 0d 58 ba 08 	vmovsd xmm1,QWORD PTR [rip+0x8ba58]        # 84c990 <__STRLITPACK_0.112+0x880>
  7c0f37:	00 
  7c0f38:	c5 f9 10 25 50 af 08 	vmovupd xmm4,XMMWORD PTR [rip+0x8af50]        # 84be90 <__STRLITPACK_54.50+0xa0>
  7c0f3f:	00 
  7c0f40:	c5 f9 10 15 38 af 08 	vmovupd xmm2,XMMWORD PTR [rip+0x8af38]        # 84be80 <__STRLITPACK_54.50+0x90>
  7c0f47:	00 
  7c0f48:	c5 f9 10 1d a0 aa 08 	vmovupd xmm3,XMMWORD PTR [rip+0x8aaa0]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  7c0f4f:	00 
  7c0f50:	48 8b b5 00 ff ff ff 	mov    rsi,QWORD PTR [rbp-0x100]
  7c0f57:	48 3b b5 f8 fb ff ff 	cmp    rsi,QWORD PTR [rbp-0x408]
  7c0f5e:	0f 8c 01 03 00 00    	jl     7c1265 <pre_step3d_mod_mp_pre_step3d_tile_+0x7c65>
  7c0f64:	48 83 7d 80 00       	cmp    QWORD PTR [rbp-0x80],0x0
  7c0f69:	0f 84 81 87 00 00    	je     7c96f0 <pre_step3d_mod_mp_pre_step3d_tile_+0x100f0>
  7c0f6f:	48 83 bd 78 ff ff ff 	cmp    QWORD PTR [rbp-0x88],0x2
  7c0f76:	02 
  7c0f77:	0f 8c 73 87 00 00    	jl     7c96f0 <pre_step3d_mod_mp_pre_step3d_tile_+0x100f0>
  7c0f7d:	48 8b b5 f8 f2 ff ff 	mov    rsi,QWORD PTR [rbp-0xd08]
  7c0f84:	4c 8b 5d 88          	mov    r11,QWORD PTR [rbp-0x78]
  7c0f88:	4c 8b bd 28 f3 ff ff 	mov    r15,QWORD PTR [rbp-0xcd8]
  7c0f8f:	4c 8b b5 00 f3 ff ff 	mov    r14,QWORD PTR [rbp-0xd00]
  7c0f96:	4a 8d 3c 2e          	lea    rdi,[rsi+r13*1]
  7c0f9a:	48 8b b5 f0 f2 ff ff 	mov    rsi,QWORD PTR [rbp-0xd10]
  7c0fa1:	4c 89 9d f8 f3 ff ff 	mov    QWORD PTR [rbp-0xc08],r11
  7c0fa8:	45 33 db             	xor    r11d,r11d
  7c0fab:	4c 8b 95 68 f7 ff ff 	mov    r10,QWORD PTR [rbp-0x898]
  7c0fb2:	4c 03 fa             	add    r15,rdx
  7c0fb5:	4c 8b 8d 90 fa ff ff 	mov    r9,QWORD PTR [rbp-0x570]
  7c0fbc:	4c 03 f0             	add    r14,rax
  7c0fbf:	4c 8b 85 60 f3 ff ff 	mov    r8,QWORD PTR [rbp-0xca0]
  7c0fc6:	4c 8b a5 70 f3 ff ff 	mov    r12,QWORD PTR [rbp-0xc90]
  7c0fcd:	4c 03 d1             	add    r10,rcx
  7c0fd0:	48 89 bd 10 f3 ff ff 	mov    QWORD PTR [rbp-0xcf0],rdi
  7c0fd7:	48 8d 3c 16          	lea    rdi,[rsi+rdx*1]
  7c0fdb:	48 89 bd 08 f3 ff ff 	mov    QWORD PTR [rbp-0xcf8],rdi
  7c0fe2:	33 ff                	xor    edi,edi
  7c0fe4:	33 f6                	xor    esi,esi
  7c0fe6:	4c 03 c9             	add    r9,rcx
  7c0fe9:	4c 03 c0             	add    r8,rax
  7c0fec:	4c 89 b5 f8 fc ff ff 	mov    QWORD PTR [rbp-0x308],r14
  7c0ff3:	4d 03 e5             	add    r12,r13
  7c0ff6:	4c 89 bd 00 fd ff ff 	mov    QWORD PTR [rbp-0x300],r15
  7c0ffd:	4c 89 ad c8 f3 ff ff 	mov    QWORD PTR [rbp-0xc38],r13
  7c1004:	48 89 8d e0 f3 ff ff 	mov    QWORD PTR [rbp-0xc20],rcx
  7c100b:	48 89 85 d0 f3 ff ff 	mov    QWORD PTR [rbp-0xc30],rax
  7c1012:	48 89 95 d8 f3 ff ff 	mov    QWORD PTR [rbp-0xc28],rdx
  7c1019:	49 89 f7             	mov    r15,rsi
  7c101c:	48 8b 8d 08 f3 ff ff 	mov    rcx,QWORD PTR [rbp-0xcf8]
  7c1023:	4c 8b ad 10 f3 ff ff 	mov    r13,QWORD PTR [rbp-0xcf0]
  7c102a:	4c 8b 75 80          	mov    r14,QWORD PTR [rbp-0x80]
  7c102e:	48 8b 85 00 fd ff ff 	mov    rax,QWORD PTR [rbp-0x300]
  7c1035:	48 8b 95 58 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xa8]
  7c103c:	48 03 c7             	add    rax,rdi
  7c103f:	c5 7b 10 28          	vmovsd xmm13,QWORD PTR [rax]
  7c1043:	c4 21 11 16 34 30    	vmovhpd xmm14,xmm13,QWORD PTR [rax+r14*1]
  7c1049:	49 8d 04 30          	lea    rax,[r8+rsi*1]
  7c104d:	c5 7b 10 20          	vmovsd xmm12,QWORD PTR [rax]
  7c1051:	c5 09 59 fb          	vmulpd xmm15,xmm14,xmm3
  7c1055:	c5 19 16 34 10       	vmovhpd xmm14,xmm12,QWORD PTR [rax+rdx*1]
  7c105a:	48 8b 85 f8 fc ff ff 	mov    rax,QWORD PTR [rbp-0x308]
  7c1061:	48 03 c6             	add    rax,rsi
  7c1064:	c5 7b 10 28          	vmovsd xmm13,QWORD PTR [rax]
  7c1068:	48 8d 34 56          	lea    rsi,[rsi+rdx*2]
  7c106c:	c5 11 16 24 10       	vmovhpd xmm12,xmm13,QWORD PTR [rax+rdx*1]
  7c1071:	4b 8d 54 3d 00       	lea    rdx,[r13+r15*1+0x0]
  7c1076:	c4 41 09 58 ec       	vaddpd xmm13,xmm14,xmm12
  7c107b:	c4 41 01 59 f5       	vmulpd xmm14,xmm15,xmm13
  7c1080:	c4 01 79 10 7c d9 08 	vmovupd xmm15,XMMWORD PTR [r9+r11*8+0x8]
  7c1087:	48 8b 85 e8 fc ff ff 	mov    rax,QWORD PTR [rbp-0x318]
  7c108e:	c5 7b 10 22          	vmovsd xmm12,QWORD PTR [rdx]
  7c1092:	c4 01 01 5c 2c da    	vsubpd xmm13,xmm15,XMMWORD PTR [r10+r11*8]
  7c1098:	c5 19 16 3c 02       	vmovhpd xmm15,xmm12,QWORD PTR [rdx+rax*1]
  7c109d:	4b 8d 14 3c          	lea    rdx,[r12+r15*1]
  7c10a1:	c4 41 69 59 e7       	vmulpd xmm12,xmm2,xmm15
  7c10a6:	c5 7b 10 3a          	vmovsd xmm15,QWORD PTR [rdx]
  7c10aa:	4d 8d 3c 47          	lea    r15,[r15+rax*2]
  7c10ae:	c5 01 16 3c 02       	vmovhpd xmm15,xmm15,QWORD PTR [rdx+rax*1]
  7c10b3:	c4 41 59 59 ff       	vmulpd xmm15,xmm4,xmm15
  7c10b8:	c4 41 19 5c e7       	vsubpd xmm12,xmm12,xmm15
  7c10bd:	48 8b 85 e0 fc ff ff 	mov    rax,QWORD PTR [rbp-0x320]
  7c10c4:	c4 21 19 59 24 d8    	vmulpd xmm12,xmm12,XMMWORD PTR [rax+r11*8]
  7c10ca:	c4 41 09 58 f4       	vaddpd xmm14,xmm14,xmm12
  7c10cf:	c4 41 11 58 ee       	vaddpd xmm13,xmm13,xmm14
  7c10d4:	49 83 c3 02          	add    r11,0x2
  7c10d8:	48 8d 04 0f          	lea    rax,[rdi+rcx*1]
  7c10dc:	c5 7b 11 28          	vmovsd QWORD PTR [rax],xmm13
  7c10e0:	4a 8d 3c 77          	lea    rdi,[rdi+r14*2]
  7c10e4:	c4 41 79 17 2c 06    	vmovhpd QWORD PTR [r14+rax*1],xmm13
  7c10ea:	4c 3b 5d 88          	cmp    r11,QWORD PTR [rbp-0x78]
  7c10ee:	0f 82 3a ff ff ff    	jb     7c102e <pre_step3d_mod_mp_pre_step3d_tile_+0x7a2e>
  7c10f4:	4c 8b ad c8 f3 ff ff 	mov    r13,QWORD PTR [rbp-0xc38]
  7c10fb:	48 8b 85 d0 f3 ff ff 	mov    rax,QWORD PTR [rbp-0xc30]
  7c1102:	48 8b 95 d8 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xc28]
  7c1109:	48 8b 8d e0 f3 ff ff 	mov    rcx,QWORD PTR [rbp-0xc20]
  7c1110:	48 8b b5 f8 f3 ff ff 	mov    rsi,QWORD PTR [rbp-0xc08]
  7c1117:	4c 8b a5 e8 fc ff ff 	mov    r12,QWORD PTR [rbp-0x318]
  7c111e:	4c 8b b5 58 ff ff ff 	mov    r14,QWORD PTR [rbp-0xa8]
  7c1125:	4c 8b 5d 80          	mov    r11,QWORD PTR [rbp-0x80]
  7c1129:	4c 0f af e6          	imul   r12,rsi
  7c112d:	4c 0f af f6          	imul   r14,rsi
  7c1131:	4c 0f af de          	imul   r11,rsi
  7c1135:	48 3b b5 78 ff ff ff 	cmp    rsi,QWORD PTR [rbp-0x88]
  7c113c:	0f 83 23 01 00 00    	jae    7c1265 <pre_step3d_mod_mp_pre_step3d_tile_+0x7c65>
  7c1142:	4c 8b bd 70 f3 ff ff 	mov    r15,QWORD PTR [rbp-0xc90]
  7c1149:	4c 8b 95 68 f7 ff ff 	mov    r10,QWORD PTR [rbp-0x898]
  7c1150:	4c 8b 8d 90 fa ff ff 	mov    r9,QWORD PTR [rbp-0x570]
  7c1157:	4c 8b 85 28 f3 ff ff 	mov    r8,QWORD PTR [rbp-0xcd8]
  7c115e:	4d 03 fd             	add    r15,r13
  7c1161:	4c 89 bd 20 f3 ff ff 	mov    QWORD PTR [rbp-0xce0],r15
  7c1168:	4c 03 d1             	add    r10,rcx
  7c116b:	4c 8b bd f8 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xd08]
  7c1172:	4c 03 c9             	add    r9,rcx
  7c1175:	48 8b bd 60 f3 ff ff 	mov    rdi,QWORD PTR [rbp-0xca0]
  7c117c:	4c 03 c2             	add    r8,rdx
  7c117f:	48 8b b5 00 f3 ff ff 	mov    rsi,QWORD PTR [rbp-0xd00]
  7c1186:	4c 89 ad c8 f3 ff ff 	mov    QWORD PTR [rbp-0xc38],r13
  7c118d:	4d 03 fd             	add    r15,r13
  7c1190:	4c 89 bd 18 f3 ff ff 	mov    QWORD PTR [rbp-0xce8],r15
  7c1197:	48 03 f8             	add    rdi,rax
  7c119a:	4c 8b bd f0 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xd10]
  7c11a1:	48 03 f0             	add    rsi,rax
  7c11a4:	48 89 85 d0 f3 ff ff 	mov    QWORD PTR [rbp-0xc30],rax
  7c11ab:	48 89 95 d8 f3 ff ff 	mov    QWORD PTR [rbp-0xc28],rdx
  7c11b2:	48 89 8d e0 f3 ff ff 	mov    QWORD PTR [rbp-0xc20],rcx
  7c11b9:	4c 03 fa             	add    r15,rdx
  7c11bc:	4c 89 f8             	mov    rax,r15
  7c11bf:	48 8b 95 18 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xce8]
  7c11c6:	48 8b 8d 20 f3 ff ff 	mov    rcx,QWORD PTR [rbp-0xce0]
  7c11cd:	4c 8b ad f8 f3 ff ff 	mov    r13,QWORD PTR [rbp-0xc08]
  7c11d4:	4c 8b bd e0 fc ff ff 	mov    r15,QWORD PTR [rbp-0x320]
  7c11db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  7c11e0:	c4 41 7b 10 34 3e    	vmovsd xmm14,QWORD PTR [r14+rdi*1]
  7c11e6:	c4 01 3b 59 3c 03    	vmulsd xmm15,xmm8,QWORD PTR [r11+r8*1]
  7c11ec:	c4 41 0b 58 24 36    	vaddsd xmm12,xmm14,QWORD PTR [r14+rsi*1]
  7c11f2:	c4 01 7b 10 74 e9 08 	vmovsd xmm14,QWORD PTR [r9+r13*8+0x8]
  7c11f9:	c4 41 03 59 ec       	vmulsd xmm13,xmm15,xmm12
  7c11fe:	c4 01 0b 5c 24 ea    	vsubsd xmm12,xmm14,QWORD PTR [r10+r13*8]
  7c1204:	c4 41 73 59 3c 14    	vmulsd xmm15,xmm1,QWORD PTR [r12+rdx*1]
  7c120a:	c4 41 7b 59 34 0c    	vmulsd xmm14,xmm0,QWORD PTR [r12+rcx*1]
  7c1210:	4c 03 b5 58 ff ff ff 	add    r14,QWORD PTR [rbp-0xa8]
  7c1217:	c4 41 03 5c fe       	vsubsd xmm15,xmm15,xmm14
  7c121c:	c4 01 03 59 34 ef    	vmulsd xmm14,xmm15,QWORD PTR [r15+r13*8]
  7c1222:	49 ff c5             	inc    r13
  7c1225:	4c 03 a5 e8 fc ff ff 	add    r12,QWORD PTR [rbp-0x318]
  7c122c:	c4 41 13 58 ee       	vaddsd xmm13,xmm13,xmm14
  7c1231:	c4 41 13 58 e4       	vaddsd xmm12,xmm13,xmm12
  7c1236:	c4 41 7b 11 24 03    	vmovsd QWORD PTR [r11+rax*1],xmm12
  7c123c:	4c 03 5d 80          	add    r11,QWORD PTR [rbp-0x80]
  7c1240:	4c 3b ad 78 ff ff ff 	cmp    r13,QWORD PTR [rbp-0x88]
  7c1247:	72 97                	jb     7c11e0 <pre_step3d_mod_mp_pre_step3d_tile_+0x7be0>
  7c1249:	4c 8b ad c8 f3 ff ff 	mov    r13,QWORD PTR [rbp-0xc38]
  7c1250:	48 8b 85 d0 f3 ff ff 	mov    rax,QWORD PTR [rbp-0xc30]
  7c1257:	48 8b 95 d8 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xc28]
  7c125e:	48 8b 8d e0 f3 ff ff 	mov    rcx,QWORD PTR [rbp-0xc20]
  7c1265:	48 8b b5 a0 f6 ff ff 	mov    rsi,QWORD PTR [rbp-0x960]
  7c126c:	48 ff c6             	inc    rsi
  7c126f:	48 03 8d 18 ff ff ff 	add    rcx,QWORD PTR [rbp-0xe8]
  7c1276:	48 03 95 00 fc ff ff 	add    rdx,QWORD PTR [rbp-0x400]
  7c127d:	48 03 85 10 fd ff ff 	add    rax,QWORD PTR [rbp-0x2f0]
  7c1284:	4c 03 ad 98 f6 ff ff 	add    r13,QWORD PTR [rbp-0x968]
  7c128b:	48 89 b5 a0 f6 ff ff 	mov    QWORD PTR [rbp-0x960],rsi
  7c1292:	48 3b b5 08 fd ff ff 	cmp    rsi,QWORD PTR [rbp-0x2f8]
  7c1299:	0f 82 b1 fc ff ff    	jb     7c0f50 <pre_step3d_mod_mp_pre_step3d_tile_+0x7950>
  7c129f:	c5 fb 10 a5 00 f2 ff 	vmovsd xmm4,QWORD PTR [rbp-0xe00]
  7c12a6:	ff 
  7c12a7:	c5 fb 10 9d f8 f1 ff 	vmovsd xmm3,QWORD PTR [rbp-0xe08]
  7c12ae:	ff 
  7c12af:	c5 fb 10 95 f0 f1 ff 	vmovsd xmm2,QWORD PTR [rbp-0xe10]
  7c12b6:	ff 
  7c12b7:	48 8b bd d8 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x728]
  7c12be:	44 8b 85 b8 f8 ff ff 	mov    r8d,DWORD PTR [rbp-0x748]
  7c12c5:	4c 8b 8d c0 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x740]
  7c12cc:	4c 8b 9d c8 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x738]
  7c12d3:	44 8b 95 d0 f8 ff ff 	mov    r10d,DWORD PTR [rbp-0x730]
  7c12da:	c5 fd 10 0d 7e 8d 08 	vmovupd ymm1,YMMWORD PTR [rip+0x88d7e]        # 84a060 <var$630.126.450+0xc0>
  7c12e1:	00 
  7c12e2:	c5 f9 10 05 b6 a4 08 	vmovupd xmm0,XMMWORD PTR [rip+0x8a4b6]        # 84b7a0 <__STRLITPACK_219.115+0xa0>
  7c12e9:	00 
  7c12ea:	c5 7b 10 2d 8e ae 08 	vmovsd xmm13,QWORD PTR [rip+0x8ae8e]        # 84c180 <__STRLITPACK_0.112+0x70>
  7c12f1:	00 
  7c12f2:	41 ff c0             	inc    r8d
  7c12f5:	48 ff c7             	inc    rdi
  7c12f8:	4c 03 8d e8 fb ff ff 	add    r9,QWORD PTR [rbp-0x418]
  7c12ff:	41 ff c2             	inc    r10d
  7c1302:	4c 03 9d f0 fb ff ff 	add    r11,QWORD PTR [rbp-0x410]
  7c1309:	44 3b 85 d0 fb ff ff 	cmp    r8d,DWORD PTR [rbp-0x430]
  7c1310:	0f 82 97 b6 ff ff    	jb     7bc9ad <pre_step3d_mod_mp_pre_step3d_tile_+0x33ad>
  7c1316:	4c 8b ad 68 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xa98]
  7c131d:	4c 8b b5 70 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xa90]
  7c1324:	44 8b bd 78 f5 ff ff 	mov    r15d,DWORD PTR [rbp-0xa88]
  7c132b:	bf 0c 74 ab 00       	mov    edi,0xab740c
  7c1330:	44 89 fe             	mov    esi,r15d
  7c1333:	c5 f8 77             	vzeroupper 
  7c1336:	e8 65 c9 c4 ff       	call   40dca0 <__kmpc_for_static_fini@plt>
  7c133b:	4c 89 ea             	mov    rdx,r13
  7c133e:	4c 89 f0             	mov    rax,r14
  7c1341:	48 83 c0 1f          	add    rax,0x1f
  7c1345:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7c1349:	48 03 e0             	add    rsp,rax
  7c134c:	48 8b 95 18 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x9e8]
  7c1353:	48 8b 85 20 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x9e0]
  7c135a:	48 83 c0 1f          	add    rax,0x1f
  7c135e:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7c1362:	48 03 e0             	add    rsp,rax
  7c1365:	4c 8b bd 28 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x9d8]
  7c136c:	4c 8b b5 30 f6 ff ff 	mov    r14,QWORD PTR [rbp-0x9d0]
  7c1373:	4c 8b ad 38 f6 ff ff 	mov    r13,QWORD PTR [rbp-0x9c8]
  7c137a:	4c 8b a5 40 f6 ff ff 	mov    r12,QWORD PTR [rbp-0x9c0]
  7c1381:	c9                   	leave  
  7c1382:	48 89 dc             	mov    rsp,rbx
  7c1385:	5b                   	pop    rbx
  7c1386:	c3                   	ret    
  7c1387:	53                   	push   rbx
  7c1388:	48 89 e3             	mov    rbx,rsp
  7c138b:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
  7c138f:	55                   	push   rbp
  7c1390:	55                   	push   rbp
  7c1391:	48 8b 6b 08          	mov    rbp,QWORD PTR [rbx+0x8]
  7c1395:	48 89 6c 24 08       	mov    QWORD PTR [rsp+0x8],rbp
  7c139a:	48 89 e5             	mov    rbp,rsp
  7c139d:	48 81 ec 70 0e 00 00 	sub    rsp,0xe70
  7c13a4:	48 89 fe             	mov    rsi,rdi
  7c13a7:	4c 89 ad 38 f6 ff ff 	mov    QWORD PTR [rbp-0x9c8],r13
  7c13ae:	4c 8b 6b 38          	mov    r13,QWORD PTR [rbx+0x38]
  7c13b2:	4c 89 bd 28 f6 ff ff 	mov    QWORD PTR [rbp-0x9d8],r15
  7c13b9:	4c 89 a5 40 f6 ff ff 	mov    QWORD PTR [rbp-0x9c0],r12
  7c13c0:	4c 8b 63 10          	mov    r12,QWORD PTR [rbx+0x10]
  7c13c4:	4c 8b 7b 40          	mov    r15,QWORD PTR [rbx+0x40]
  7c13c8:	4c 89 b5 30 f6 ff ff 	mov    QWORD PTR [rbp-0x9d0],r14
  7c13cf:	4c 8b 73 30          	mov    r14,QWORD PTR [rbx+0x30]
  7c13d3:	48 8b 43 28          	mov    rax,QWORD PTR [rbx+0x28]
  7c13d7:	4d 8b 6d 00          	mov    r13,QWORD PTR [r13+0x0]
  7c13db:	4c 89 ad e8 f1 ff ff 	mov    QWORD PTR [rbp-0xe18],r13
  7c13e2:	4d 8b 3f             	mov    r15,QWORD PTR [r15]
  7c13e5:	4d 63 2c 24          	movsxd r13,DWORD PTR [r12]
  7c13e9:	4c 89 bd e0 f1 ff ff 	mov    QWORD PTR [rbp-0xe20],r15
  7c13f0:	4c 89 ad b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],r13
  7c13f7:	4d 8b 3e             	mov    r15,QWORD PTR [r14]
  7c13fa:	44 8b 29             	mov    r13d,DWORD PTR [rcx]
  7c13fd:	4c 8b 30             	mov    r14,QWORD PTR [rax]
  7c1400:	48 8b 4b 50          	mov    rcx,QWORD PTR [rbx+0x50]
  7c1404:	4c 8b 53 18          	mov    r10,QWORD PTR [rbx+0x18]
  7c1408:	4c 89 b5 00 f2 ff ff 	mov    QWORD PTR [rbp-0xe00],r14
  7c140f:	4d 63 31             	movsxd r14,DWORD PTR [r9]
  7c1412:	4c 89 b5 b0 f6 ff ff 	mov    QWORD PTR [rbp-0x950],r14
  7c1419:	4d 8b 30             	mov    r14,QWORD PTR [r8]
  7c141c:	4c 8b 01             	mov    r8,QWORD PTR [rcx]
  7c141f:	48 8b 4b 60          	mov    rcx,QWORD PTR [rbx+0x60]
  7c1423:	4c 8b 5b 20          	mov    r11,QWORD PTR [rbx+0x20]
  7c1427:	4d 8b 12             	mov    r10,QWORD PTR [r10]
  7c142a:	4c 8b 63 58          	mov    r12,QWORD PTR [rbx+0x58]
  7c142e:	48 8b 7b 48          	mov    rdi,QWORD PTR [rbx+0x48]
  7c1432:	4c 89 95 d8 f1 ff ff 	mov    QWORD PTR [rbp-0xe28],r10
  7c1439:	4c 89 85 f8 f1 ff ff 	mov    QWORD PTR [rbp-0xe08],r8
  7c1440:	4c 8b 43 70          	mov    r8,QWORD PTR [rbx+0x70]
  7c1444:	4c 8b 53 78          	mov    r10,QWORD PTR [rbx+0x78]
  7c1448:	48 89 bd 90 f1 ff ff 	mov    QWORD PTR [rbp-0xe70],rdi
  7c144f:	8b 3e                	mov    edi,DWORD PTR [rsi]
  7c1451:	48 8b 31             	mov    rsi,QWORD PTR [rcx]
  7c1454:	89 bd a8 f3 ff ff    	mov    DWORD PTR [rbp-0xc58],edi
  7c145a:	4d 8b 1b             	mov    r11,QWORD PTR [r11]
  7c145d:	49 8b 04 24          	mov    rax,QWORD PTR [r12]
  7c1461:	48 89 b5 08 f2 ff ff 	mov    QWORD PTR [rbp-0xdf8],rsi
  7c1468:	48 8b 7b 68          	mov    rdi,QWORD PTR [rbx+0x68]
  7c146c:	48 8b b3 88 00 00 00 	mov    rsi,QWORD PTR [rbx+0x88]
  7c1473:	4c 89 9d d0 f1 ff ff 	mov    QWORD PTR [rbp-0xe30],r11
  7c147a:	48 89 85 f0 f1 ff ff 	mov    QWORD PTR [rbp-0xe10],rax
  7c1481:	4d 63 08             	movsxd r9,DWORD PTR [r8]
  7c1484:	4d 63 1a             	movsxd r11,DWORD PTR [r10]
  7c1487:	4c 8d 93 80 00 00 00 	lea    r10,[rbx+0x80]
  7c148e:	49 8b 02             	mov    rax,QWORD PTR [r10]
  7c1491:	4d 8b 42 18          	mov    r8,QWORD PTR [r10+0x18]
  7c1495:	4d 8b 52 20          	mov    r10,QWORD PTR [r10+0x20]
  7c1499:	4c 8b 27             	mov    r12,QWORD PTR [rdi]
  7c149c:	48 63 3e             	movsxd rdi,DWORD PTR [rsi]
  7c149f:	4c 89 8d b0 f1 ff ff 	mov    QWORD PTR [rbp-0xe50],r9
  7c14a6:	4c 89 9d c0 f1 ff ff 	mov    QWORD PTR [rbp-0xe40],r11
  7c14ad:	8b 12                	mov    edx,DWORD PTR [rdx]
  7c14af:	48 63 08             	movsxd rcx,DWORD PTR [rax]
  7c14b2:	33 c0                	xor    eax,eax
  7c14b4:	48 89 bd a0 f1 ff ff 	mov    QWORD PTR [rbp-0xe60],rdi
  7c14bb:	48 8d bd 70 f2 ff ff 	lea    rdi,[rbp-0xd90]
  7c14c2:	4d 63 08             	movsxd r9,DWORD PTR [r8]
  7c14c5:	4d 63 1a             	movsxd r11,DWORD PTR [r10]
  7c14c8:	48 8b b3 b0 00 00 00 	mov    rsi,QWORD PTR [rbx+0xb0]
  7c14cf:	48 89 8d a8 f1 ff ff 	mov    QWORD PTR [rbp-0xe58],rcx
  7c14d6:	4c 89 8d b8 f1 ff ff 	mov    QWORD PTR [rbp-0xe48],r9
  7c14dd:	4c 89 9d 98 f1 ff ff 	mov    QWORD PTR [rbp-0xe68],r11
  7c14e4:	89 95 c8 f1 ff ff    	mov    DWORD PTR [rbp-0xe38],edx
  7c14ea:	e8 11 57 cb ff       	call   476c00 <_f90_dope_vector_init>
  7c14ef:	8b 95 c8 f1 ff ff    	mov    edx,DWORD PTR [rbp-0xe38]
  7c14f5:	48 89 85 90 f3 ff ff 	mov    QWORD PTR [rbp-0xc70],rax
  7c14fc:	48 83 c0 1f          	add    rax,0x1f
  7c1500:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7c1504:	48 2b e0             	sub    rsp,rax
  7c1507:	48 89 e0             	mov    rax,rsp
  7c150a:	48 89 85 98 f3 ff ff 	mov    QWORD PTR [rbp-0xc68],rax
  7c1511:	48 89 85 70 f2 ff ff 	mov    QWORD PTR [rbp-0xd90],rax
  7c1518:	44 3b ea             	cmp    r13d,edx
  7c151b:	0f 8c 89 20 00 00    	jl     7c35aa <pre_step3d_mod_mp_pre_step3d_tile_+0x9faa>
  7c1521:	48 83 c4 e0          	add    rsp,0xffffffffffffffe0
  7c1525:	48 8d 85 d4 f3 ff ff 	lea    rax,[rbp-0xc2c]
  7c152c:	41 ba 01 00 00 00    	mov    r10d,0x1
  7c1532:	bf bc 73 ab 00       	mov    edi,0xab73bc
  7c1537:	89 50 f4             	mov    DWORD PTR [rax-0xc],edx
  7c153a:	ba 22 00 00 00       	mov    edx,0x22
  7c153f:	44 89 68 f8          	mov    DWORD PTR [rax-0x8],r13d
  7c1543:	48 8d 8d d0 f3 ff ff 	lea    rcx,[rbp-0xc30]
  7c154a:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  7c154e:	4c 8d 85 c8 f3 ff ff 	lea    r8,[rbp-0xc38]
  7c1555:	44 89 54 24 08       	mov    DWORD PTR [rsp+0x8],r10d
  7c155a:	4c 8d 8d cc f3 ff ff 	lea    r9,[rbp-0xc34]
  7c1561:	44 89 54 24 10       	mov    DWORD PTR [rsp+0x10],r10d
  7c1566:	8b 70 d4             	mov    esi,DWORD PTR [rax-0x2c]
  7c1569:	c7 40 fc 00 00 00 00 	mov    DWORD PTR [rax-0x4],0x0
  7c1570:	44 89 10             	mov    DWORD PTR [rax],r10d
  7c1573:	e8 68 c4 c4 ff       	call   40d9e0 <__kmpc_for_static_init_4@plt>
  7c1578:	48 83 c4 20          	add    rsp,0x20
  7c157c:	4d 63 ed             	movsxd r13,r13d
  7c157f:	48 63 85 c8 f3 ff ff 	movsxd rax,DWORD PTR [rbp-0xc38]
  7c1586:	8b 8d cc f3 ff ff    	mov    ecx,DWORD PTR [rbp-0xc34]
  7c158c:	48 89 85 d0 f2 ff ff 	mov    QWORD PTR [rbp-0xd30],rax
  7c1593:	49 3b c5             	cmp    rax,r13
  7c1596:	0f 8f fb 1f 00 00    	jg     7c3597 <pre_step3d_mod_mp_pre_step3d_tile_+0x9f97>
  7c159c:	49 63 16             	movsxd rdx,DWORD PTR [r14]
  7c159f:	41 3b cd             	cmp    ecx,r13d
  7c15a2:	4c 8b 1d 77 91 2f 00 	mov    r11,QWORD PTR [rip+0x2f9177]        # aba720 <mod_param_mp_nt_>
  7c15a9:	49 63 07             	movsxd rax,DWORD PTR [r15]
  7c15ac:	44 0f 4c e9          	cmovl  r13d,ecx
  7c15b0:	4c 8b 0d 89 85 2f 00 	mov    r9,QWORD PTR [rip+0x2f8589]        # ab9b40 <mod_scalars_mp_dt_>
  7c15b7:	45 8b 54 93 fc       	mov    r10d,DWORD PTR [r11+rdx*4-0x4]
  7c15bc:	44 89 95 d8 f4 ff ff 	mov    DWORD PTR [rbp-0xb28],r10d
  7c15c3:	4c 8b 95 08 f2 ff ff 	mov    r10,QWORD PTR [rbp-0xdf8]
  7c15ca:	4c 8b 85 70 f2 ff ff 	mov    r8,QWORD PTR [rbp-0xd90]
  7c15d1:	c4 c1 7b 10 7c d1 f8 	vmovsd xmm7,QWORD PTR [r9+rdx*8-0x8]
  7c15d8:	4d 8b 7a 68          	mov    r15,QWORD PTR [r10+0x68]
  7c15dc:	4c 89 bd d8 f6 ff ff 	mov    QWORD PTR [rbp-0x928],r15
  7c15e3:	4c 8b bd 00 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xe00]
  7c15ea:	49 8b 3a             	mov    rdi,QWORD PTR [r10]
  7c15ed:	4c 89 85 30 f3 ff ff 	mov    QWORD PTR [rbp-0xcd0],r8
  7c15f4:	49 8b 77 68          	mov    rsi,QWORD PTR [r15+0x68]
  7c15f8:	48 89 b5 d0 f6 ff ff 	mov    QWORD PTR [rbp-0x930],rsi
  7c15ff:	48 8b b5 f8 f1 ff ff 	mov    rsi,QWORD PTR [rbp-0xe08]
  7c1606:	49 8b 4f 50          	mov    rcx,QWORD PTR [r15+0x50]
  7c160a:	48 89 8d 50 f3 ff ff 	mov    QWORD PTR [rbp-0xcb0],rcx
  7c1611:	48 8b 4e 38          	mov    rcx,QWORD PTR [rsi+0x38]
  7c1615:	48 89 8d c8 f4 ff ff 	mov    QWORD PTR [rbp-0xb38],rcx
  7c161c:	48 8b 8d f0 f1 ff ff 	mov    rcx,QWORD PTR [rbp-0xe10]
  7c1623:	48 89 bd 00 f3 ff ff 	mov    QWORD PTR [rbp-0xd00],rdi
  7c162a:	4d 8b 4a 38          	mov    r9,QWORD PTR [r10+0x38]
  7c162e:	4d 8b 07             	mov    r8,QWORD PTR [r15]
  7c1631:	49 8b bf 98 00 00 00 	mov    rdi,QWORD PTR [r15+0x98]
  7c1638:	4d 8b 5a 50          	mov    r11,QWORD PTR [r10+0x50]
  7c163c:	4c 89 8d 40 f7 ff ff 	mov    QWORD PTR [rbp-0x8c0],r9
  7c1643:	4c 89 85 58 f3 ff ff 	mov    QWORD PTR [rbp-0xca8],r8
  7c164a:	48 89 bd 30 f4 ff ff 	mov    QWORD PTR [rbp-0xbd0],rdi
  7c1651:	4d 8b 97 80 00 00 00 	mov    r10,QWORD PTR [r15+0x80]
  7c1658:	4d 8b 4f 38          	mov    r9,QWORD PTR [r15+0x38]
  7c165c:	4c 8b 06             	mov    r8,QWORD PTR [rsi]
  7c165f:	48 8b 7e 50          	mov    rdi,QWORD PTR [rsi+0x50]
  7c1663:	4c 8b 39             	mov    r15,QWORD PTR [rcx]
  7c1666:	4c 89 85 20 f3 ff ff 	mov    QWORD PTR [rbp-0xce0],r8
  7c166d:	4c 8b 46 68          	mov    r8,QWORD PTR [rsi+0x68]
  7c1671:	48 89 bd 08 f3 ff ff 	mov    QWORD PTR [rbp-0xcf8],rdi
  7c1678:	4c 89 bd e8 f2 ff ff 	mov    QWORD PTR [rbp-0xd18],r15
  7c167f:	48 8b 79 68          	mov    rdi,QWORD PTR [rcx+0x68]
  7c1683:	48 8b 71 50          	mov    rsi,QWORD PTR [rcx+0x50]
  7c1687:	4c 8b 79 38          	mov    r15,QWORD PTR [rcx+0x38]
  7c168b:	48 8b 8d e8 f1 ff ff 	mov    rcx,QWORD PTR [rbp-0xe18]
  7c1692:	4c 89 bd c0 f4 ff ff 	mov    QWORD PTR [rbp-0xb40],r15
  7c1699:	48 89 b5 d8 f2 ff ff 	mov    QWORD PTR [rbp-0xd28],rsi
  7c16a0:	4c 8b 79 38          	mov    r15,QWORD PTR [rcx+0x38]
  7c16a4:	4c 89 bd b8 f3 ff ff 	mov    QWORD PTR [rbp-0xc48],r15
  7c16ab:	4c 8b bd e0 f1 ff ff 	mov    r15,QWORD PTR [rbp-0xe20]
  7c16b2:	48 8b 71 50          	mov    rsi,QWORD PTR [rcx+0x50]
  7c16b6:	48 89 b5 38 f3 ff ff 	mov    QWORD PTR [rbp-0xcc8],rsi
  7c16bd:	49 8b 37             	mov    rsi,QWORD PTR [r15]
  7c16c0:	48 89 b5 e0 f2 ff ff 	mov    QWORD PTR [rbp-0xd20],rsi
  7c16c7:	49 8b 77 38          	mov    rsi,QWORD PTR [r15+0x38]
  7c16cb:	48 89 b5 c0 f3 ff ff 	mov    QWORD PTR [rbp-0xc40],rsi
  7c16d2:	48 8b b5 d8 f1 ff ff 	mov    rsi,QWORD PTR [rbp-0xe28]
  7c16d9:	48 89 bd d8 f3 ff ff 	mov    QWORD PTR [rbp-0xc28],rdi
  7c16e0:	48 8b 39             	mov    rdi,QWORD PTR [rcx]
  7c16e3:	49 8b 4f 50          	mov    rcx,QWORD PTR [r15+0x50]
  7c16e7:	48 89 8d 18 f3 ff ff 	mov    QWORD PTR [rbp-0xce8],rcx
  7c16ee:	48 8b 0e             	mov    rcx,QWORD PTR [rsi]
  7c16f1:	48 89 8d 48 f3 ff ff 	mov    QWORD PTR [rbp-0xcb8],rcx
  7c16f8:	48 8b 4e 50          	mov    rcx,QWORD PTR [rsi+0x50]
  7c16fc:	48 89 8d f8 f2 ff ff 	mov    QWORD PTR [rbp-0xd08],rcx
  7c1703:	48 8b 8d d0 f1 ff ff 	mov    rcx,QWORD PTR [rbp-0xe30]
  7c170a:	4c 8b 7e 68          	mov    r15,QWORD PTR [rsi+0x68]
  7c170e:	c5 7b 10 05 6a aa 08 	vmovsd xmm8,QWORD PTR [rip+0x8aa6a]        # 84c180 <__STRLITPACK_0.112+0x70>
  7c1715:	00 
  7c1716:	4c 89 bd c8 f6 ff ff 	mov    QWORD PTR [rbp-0x938],r15
  7c171d:	4c 8b 39             	mov    r15,QWORD PTR [rcx]
  7c1720:	4c 89 bd f0 f2 ff ff 	mov    QWORD PTR [rbp-0xd10],r15
  7c1727:	4c 8b b9 80 00 00 00 	mov    r15,QWORD PTR [rcx+0x80]
  7c172e:	4d 63 ed             	movsxd r13,r13d
  7c1731:	c5 bb 5c 05 77 42 30 	vsubsd xmm0,xmm8,QWORD PTR [rip+0x304277]        # ac59b0 <mod_scalars_mp_lambda_>
  7c1738:	00 
  7c1739:	4c 89 bd 38 f4 ff ff 	mov    QWORD PTR [rbp-0xbc8],r15
  7c1740:	4c 8b 79 68          	mov    r15,QWORD PTR [rcx+0x68]
  7c1744:	4d 63 24 24          	movsxd r12,DWORD PTR [r12]
  7c1748:	4c 2b ad d0 f2 ff ff 	sub    r13,QWORD PTR [rbp-0xd30]
  7c174f:	4c 8b 35 6a 8f 2f 00 	mov    r14,QWORD PTR [rip+0x2f8f6a]        # aba6c0 <mod_param_mp_n_>
  7c1756:	49 ff c5             	inc    r13
  7c1759:	4c 89 bd c0 f6 ff ff 	mov    QWORD PTR [rbp-0x940],r15
  7c1760:	4c 89 a5 28 f3 ff ff 	mov    QWORD PTR [rbp-0xcd8],r12
  7c1767:	4c 89 b5 10 f3 ff ff 	mov    QWORD PTR [rbp-0xcf0],r14
  7c176e:	4c 8b 79 50          	mov    r15,QWORD PTR [rcx+0x50]
  7c1772:	48 8b 49 38          	mov    rcx,QWORD PTR [rcx+0x38]
  7c1776:	44 8b 35 63 f3 41 00 	mov    r14d,DWORD PTR [rip+0x41f363]        # be0ae0 <mod_param_mp_nat_>
  7c177d:	44 8b 25 2c f2 41 00 	mov    r12d,DWORD PTR [rip+0x41f22c]        # be09b0 <mod_scalars_mp_itemp_>
  7c1784:	48 8b 76 38          	mov    rsi,QWORD PTR [rsi+0x38]
  7c1788:	48 c7 85 a0 f3 ff ff 	mov    QWORD PTR [rbp-0xc60],0x0
  7c178f:	00 00 00 00 
  7c1793:	4c 89 ad b0 f3 ff ff 	mov    QWORD PTR [rbp-0xc50],r13
  7c179a:	48 89 bd 60 f3 ff ff 	mov    QWORD PTR [rbp-0xca0],rdi
  7c17a1:	4c 89 8d 50 f7 ff ff 	mov    QWORD PTR [rbp-0x8b0],r9
  7c17a8:	c5 c3 59 c8          	vmulsd xmm1,xmm7,xmm0
  7c17ac:	4c 89 bd 40 f3 ff ff 	mov    QWORD PTR [rbp-0xcc0],r15
  7c17b3:	48 89 8d 38 f7 ff ff 	mov    QWORD PTR [rbp-0x8c8],rcx
  7c17ba:	48 89 b5 48 f7 ff ff 	mov    QWORD PTR [rbp-0x8b8],rsi
  7c17c1:	4c 89 85 e0 f3 ff ff 	mov    QWORD PTR [rbp-0xc20],r8
  7c17c8:	4c 89 95 68 f3 ff ff 	mov    QWORD PTR [rbp-0xc98],r10
  7c17cf:	48 89 85 70 f3 ff ff 	mov    QWORD PTR [rbp-0xc90],rax
  7c17d6:	4c 89 9d 78 f3 ff ff 	mov    QWORD PTR [rbp-0xc88],r11
  7c17dd:	44 89 a5 d0 f4 ff ff 	mov    DWORD PTR [rbp-0xb30],r12d
  7c17e4:	44 89 b5 80 f3 ff ff 	mov    DWORD PTR [rbp-0xc80],r14d
  7c17eb:	48 89 95 88 f3 ff ff 	mov    QWORD PTR [rbp-0xc78],rdx
  7c17f2:	44 8b ad d8 f4 ff ff 	mov    r13d,DWORD PTR [rbp-0xb28]
  7c17f9:	48 8b bd a0 f3 ff ff 	mov    rdi,QWORD PTR [rbp-0xc60]
  7c1800:	4c 8b 8d b8 f6 ff ff 	mov    r9,QWORD PTR [rbp-0x948]
  7c1807:	45 33 c0             	xor    r8d,r8d
  7c180a:	45 85 ed             	test   r13d,r13d
  7c180d:	0f 8e 74 1d 00 00    	jle    7c3587 <pre_step3d_mod_mp_pre_step3d_tile_+0x9f87>
  7c1813:	44 89 ad d8 f4 ff ff 	mov    DWORD PTR [rbp-0xb28],r13d
  7c181a:	48 8b 8d 10 f3 ff ff 	mov    rcx,QWORD PTR [rbp-0xcf0]
  7c1821:	4c 8b ad 88 f3 ff ff 	mov    r13,QWORD PTR [rbp-0xc78]
  7c1828:	44 89 85 b8 f4 ff ff 	mov    DWORD PTR [rbp-0xb48],r8d
  7c182f:	4c 8b 95 f8 f2 ff ff 	mov    r10,QWORD PTR [rbp-0xd08]
  7c1836:	4d 89 d6             	mov    r14,r10
  7c1839:	4e 63 64 a9 fc       	movsxd r12,DWORD PTR [rcx+r13*4-0x4]
  7c183e:	48 8b 8d c0 f1 ff ff 	mov    rcx,QWORD PTR [rbp-0xe40]
  7c1845:	49 89 c8             	mov    r8,rcx
  7c1848:	4d 0f af c2          	imul   r8,r10
  7c184c:	4c 0f af b5 d0 f2 ff 	imul   r14,QWORD PTR [rbp-0xd30]
  7c1853:	ff 
  7c1854:	4c 0f af d7          	imul   r10,rdi
  7c1858:	c5 fd 10 1d 00 88 08 	vmovupd ymm3,YMMWORD PTR [rip+0x88800]        # 84a060 <var$630.126.450+0xc0>
  7c185f:	00 
  7c1860:	c5 f9 10 15 38 9f 08 	vmovupd xmm2,XMMWORD PTR [rip+0x89f38]        # 84b7a0 <__STRLITPACK_219.115+0xa0>
  7c1867:	00 
  7c1868:	c5 fb 12 e9          	vmovddup xmm5,xmm1
  7c186c:	c5 fb 12 e7          	vmovddup xmm4,xmm7
  7c1870:	c4 e2 7d 19 f7       	vbroadcastsd ymm6,xmm7
  7c1875:	c4 e2 7d 19 c1       	vbroadcastsd ymm0,xmm1
  7c187a:	48 8b 85 b0 f1 ff ff 	mov    rax,QWORD PTR [rbp-0xe50]
  7c1881:	4d 8d 7c 24 ff       	lea    r15,[r12-0x1]
  7c1886:	48 8d 95 48 f7 ff ff 	lea    rdx,[rbp-0x8b8]
  7c188d:	48 0f af 02          	imul   rax,QWORD PTR [rdx]
  7c1891:	48 8b b5 b0 f6 ff ff 	mov    rsi,QWORD PTR [rbp-0x950]
  7c1898:	4c 89 8d b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],r9
  7c189f:	44 2b ce             	sub    r9d,esi
  7c18a2:	4c 89 bd 08 f7 ff ff 	mov    QWORD PTR [rbp-0x8f8],r15
  7c18a9:	41 ff c1             	inc    r9d
  7c18ac:	4c 8b 3a             	mov    r15,QWORD PTR [rdx]
  7c18af:	4c 0f af fe          	imul   r15,rsi
  7c18b3:	44 89 8d 20 f7 ff ff 	mov    DWORD PTR [rbp-0x8e0],r9d
  7c18ba:	41 83 e1 fc          	and    r9d,0xfffffffc
  7c18be:	44 89 8d e8 f5 ff ff 	mov    DWORD PTR [rbp-0xa18],r9d
  7c18c5:	4c 8b 8d c8 f6 ff ff 	mov    r9,QWORD PTR [rbp-0x938]
  7c18cc:	48 8b 95 48 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xcb8]
  7c18d3:	49 89 d3             	mov    r11,rdx
  7c18d6:	4d 89 cd             	mov    r13,r9
  7c18d9:	4d 2b d9             	sub    r11,r9
  7c18dc:	4d 2b e8             	sub    r13,r8
  7c18df:	4c 89 a5 18 f7 ff ff 	mov    QWORD PTR [rbp-0x8e8],r12
  7c18e6:	4f 8d 24 09          	lea    r12,[r9+r9*1]
  7c18ea:	4d 2b e0             	sub    r12,r8
  7c18ed:	4d 2b c6             	sub    r8,r14
  7c18f0:	4c 89 ad d8 f1 ff ff 	mov    QWORD PTR [rbp-0xe28],r13
  7c18f7:	4b 8d 34 4b          	lea    rsi,[r11+r9*2]
  7c18fb:	4c 89 b5 e0 f1 ff ff 	mov    QWORD PTR [rbp-0xe20],r14
  7c1902:	4c 2b f0             	sub    r14,rax
  7c1905:	4c 89 9d d0 f1 ff ff 	mov    QWORD PTR [rbp-0xe30],r11
  7c190c:	4d 03 eb             	add    r13,r11
  7c190f:	4d 03 ee             	add    r13,r14
  7c1912:	4d 03 dc             	add    r11,r12
  7c1915:	4d 03 ef             	add    r13,r15
  7c1918:	4d 03 f3             	add    r14,r11
  7c191b:	4d 03 ea             	add    r13,r10
  7c191e:	49 2b c7             	sub    rax,r15
  7c1921:	4c 89 ad 08 f6 ff ff 	mov    QWORD PTR [rbp-0x9f8],r13
  7c1928:	49 89 cd             	mov    r13,rcx
  7c192b:	4d 03 f7             	add    r14,r15
  7c192e:	4c 03 c0             	add    r8,rax
  7c1931:	4c 8b bd 40 f3 ff ff 	mov    r15,QWORD PTR [rbp-0xcc0]
  7c1938:	49 2b d0             	sub    rdx,r8
  7c193b:	4d 0f af ef          	imul   r13,r15
  7c193f:	48 8b 85 48 f7 ff ff 	mov    rax,QWORD PTR [rbp-0x8b8]
  7c1946:	49 2b f0             	sub    rsi,r8
  7c1949:	49 89 c1             	mov    r9,rax
  7c194c:	4e 8d 04 12          	lea    r8,[rdx+r10*1]
  7c1950:	4c 89 85 e0 f5 ff ff 	mov    QWORD PTR [rbp-0xa20],r8
  7c1957:	4d 03 f2             	add    r14,r10
  7c195a:	4c 89 b5 20 f6 ff ff 	mov    QWORD PTR [rbp-0x9e0],r14
  7c1961:	48 8d 14 42          	lea    rdx,[rdx+rax*2]
  7c1965:	49 03 d2             	add    rdx,r10
  7c1968:	4e 8d 04 16          	lea    r8,[rsi+r10*1]
  7c196c:	48 89 95 f8 f5 ff ff 	mov    QWORD PTR [rbp-0xa08],rdx
  7c1973:	4a 8d 34 4e          	lea    rsi,[rsi+r9*2]
  7c1977:	4c 89 85 d8 f5 ff ff 	mov    QWORD PTR [rbp-0xa28],r8
  7c197e:	49 03 f2             	add    rsi,r10
  7c1981:	48 8b 95 c0 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x940]
  7c1988:	48 89 d0             	mov    rax,rdx
  7c198b:	4c 8b 85 f0 f2 ff ff 	mov    r8,QWORD PTR [rbp-0xd10]
  7c1992:	49 2b c5             	sub    rax,r13
  7c1995:	4c 2b 85 38 f4 ff ff 	sub    r8,QWORD PTR [rbp-0xbc8]
  7c199c:	4c 8b b5 38 f7 ff ff 	mov    r14,QWORD PTR [rbp-0x8c8]
  7c19a3:	49 03 c0             	add    rax,r8
  7c19a6:	4c 89 a5 10 f6 ff ff 	mov    QWORD PTR [rbp-0x9f0],r12
  7c19ad:	4c 03 c2             	add    r8,rdx
  7c19b0:	48 8b 95 d0 f2 ff ff 	mov    rdx,QWORD PTR [rbp-0xd30]
  7c19b7:	4c 8b a5 b0 f1 ff ff 	mov    r12,QWORD PTR [rbp-0xe50]
  7c19be:	49 0f af d7          	imul   rdx,r15
  7c19c2:	4d 0f af e6          	imul   r12,r14
  7c19c6:	4c 0f af ff          	imul   r15,rdi
  7c19ca:	48 89 b5 f0 f5 ff ff 	mov    QWORD PTR [rbp-0xa10],rsi
  7c19d1:	4c 2b ea             	sub    r13,rdx
  7c19d4:	48 8b b5 b0 f6 ff ff 	mov    rsi,QWORD PTR [rbp-0x950]
  7c19db:	49 2b d4             	sub    rdx,r12
  7c19de:	4c 89 95 48 f6 ff ff 	mov    QWORD PTR [rbp-0x9b8],r10
  7c19e5:	49 89 f2             	mov    r10,rsi
  7c19e8:	4d 0f af d6          	imul   r10,r14
  7c19ec:	4d 2b e2             	sub    r12,r10
  7c19ef:	4f 8d 1c 72          	lea    r11,[r10+r14*2]
  7c19f3:	4d 03 e5             	add    r12,r13
  7c19f6:	4c 8d 0c 10          	lea    r9,[rax+rdx*1]
  7c19fa:	49 03 d3             	add    rdx,r11
  7c19fd:	4d 2b c4             	sub    r8,r12
  7c1a00:	48 03 c2             	add    rax,rdx
  7c1a03:	4d 03 ca             	add    r9,r10
  7c1a06:	48 8b 95 50 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xcb0]
  7c1a0d:	4d 03 c7             	add    r8,r15
  7c1a10:	48 0f af ca          	imul   rcx,rdx
  7c1a14:	4d 03 cf             	add    r9,r15
  7c1a17:	49 03 c7             	add    rax,r15
  7c1a1a:	4c 89 85 58 f4 ff ff 	mov    QWORD PTR [rbp-0xba8],r8
  7c1a21:	49 89 f2             	mov    r10,rsi
  7c1a24:	4c 89 8d 70 f4 ff ff 	mov    QWORD PTR [rbp-0xb90],r9
  7c1a2b:	4c 8b 8d d0 f6 ff ff 	mov    r9,QWORD PTR [rbp-0x930]
  7c1a32:	4c 8b 85 68 f3 ff ff 	mov    r8,QWORD PTR [rbp-0xc98]
  7c1a39:	4c 8b a5 58 f3 ff ff 	mov    r12,QWORD PTR [rbp-0xca8]
  7c1a40:	48 89 85 78 f4 ff ff 	mov    QWORD PTR [rbp-0xb88],rax
  7c1a47:	4c 89 e0             	mov    rax,r12
  7c1a4a:	48 2b 85 30 f4 ff ff 	sub    rax,QWORD PTR [rbp-0xbd0]
  7c1a51:	4c 89 bd 98 f4 ff ff 	mov    QWORD PTR [rbp-0xb68],r15
  7c1a58:	4f 8d 3c 08          	lea    r15,[r8+r9*1]
  7c1a5c:	48 89 85 48 f4 ff ff 	mov    QWORD PTR [rbp-0xbb8],rax
  7c1a63:	4c 89 c8             	mov    rax,r9
  7c1a66:	48 2b c1             	sub    rax,rcx
  7c1a69:	4d 89 fb             	mov    r11,r15
  7c1a6c:	48 89 85 88 f4 ff ff 	mov    QWORD PTR [rbp-0xb78],rax
  7c1a73:	4c 2b d8             	sub    r11,rax
  7c1a76:	48 8b 85 d0 f2 ff ff 	mov    rax,QWORD PTR [rbp-0xd30]
  7c1a7d:	49 f7 db             	neg    r11
  7c1a80:	48 0f af c2          	imul   rax,rdx
  7c1a84:	48 0f af d7          	imul   rdx,rdi
  7c1a88:	4c 89 ad e8 f1 ff ff 	mov    QWORD PTR [rbp-0xe18],r13
  7c1a8f:	4f 8d 2c 09          	lea    r13,[r9+r9*1]
  7c1a93:	4d 89 ee             	mov    r14,r13
  7c1a96:	49 f7 dd             	neg    r13
  7c1a99:	4c 2b f1             	sub    r14,rcx
  7c1a9c:	4d 03 e9             	add    r13,r9
  7c1a9f:	48 2b c8             	sub    rcx,rax
  7c1aa2:	49 89 c1             	mov    r9,rax
  7c1aa5:	4c 03 e9             	add    r13,rcx
  7c1aa8:	4d 03 dc             	add    r11,r12
  7c1aab:	48 89 8d 00 f2 ff ff 	mov    QWORD PTR [rbp-0xe00],rcx
  7c1ab2:	4c 89 ad 50 f4 ff ff 	mov    QWORD PTR [rbp-0xbb0],r13
  7c1ab9:	4c 8b ad b0 f1 ff ff 	mov    r13,QWORD PTR [rbp-0xe50]
  7c1ac0:	48 8b 8d 50 f7 ff ff 	mov    rcx,QWORD PTR [rbp-0x8b0]
  7c1ac7:	4c 0f af e9          	imul   r13,rcx
  7c1acb:	4c 0f af d1          	imul   r10,rcx
  7c1acf:	4d 2b cd             	sub    r9,r13
  7c1ad2:	4d 2b ea             	sub    r13,r10
  7c1ad5:	4c 89 ad 18 f2 ff ff 	mov    QWORD PTR [rbp-0xde8],r13
  7c1adc:	4d 89 c5             	mov    r13,r8
  7c1adf:	4c 0f af ad 70 f3 ff 	imul   r13,QWORD PTR [rbp-0xc90]
  7c1ae6:	ff 
  7c1ae7:	4c 89 9d 40 f4 ff ff 	mov    QWORD PTR [rbp-0xbc0],r11
  7c1aee:	4b 8d 4c 15 00       	lea    rcx,[r13+r10*1+0x0]
  7c1af3:	49 03 c9             	add    rcx,r9
  7c1af6:	4c 89 95 10 f2 ff ff 	mov    QWORD PTR [rbp-0xdf0],r10
  7c1afd:	4c 89 bd f0 f1 ff ff 	mov    QWORD PTR [rbp-0xe10],r15
  7c1b04:	4d 2b fe             	sub    r15,r14
  7c1b07:	48 89 85 f8 f1 ff ff 	mov    QWORD PTR [rbp-0xe08],rax
  7c1b0e:	49 f7 df             	neg    r15
  7c1b11:	4c 89 8d 08 f2 ff ff 	mov    QWORD PTR [rbp-0xdf8],r9
  7c1b18:	4e 8d 14 19          	lea    r10,[rcx+r11*1]
  7c1b1c:	4c 8b 9d a8 f1 ff ff 	mov    r11,QWORD PTR [rbp-0xe58]
  7c1b23:	4e 8d 0c 28          	lea    r9,[rax+r13*1]
  7c1b27:	48 8b 85 90 f1 ff ff 	mov    rax,QWORD PTR [rbp-0xe70]
  7c1b2e:	4d 03 f1             	add    r14,r9
  7c1b31:	4c 03 8d 88 f4 ff ff 	add    r9,QWORD PTR [rbp-0xb78]
  7c1b38:	4d 03 fc             	add    r15,r12
  7c1b3b:	4c 89 b5 20 f2 ff ff 	mov    QWORD PTR [rbp-0xde0],r14
  7c1b42:	4c 8d 24 f5 00 00 00 	lea    r12,[rsi*8+0x0]
  7c1b49:	00 
  7c1b4a:	4c 89 8d 60 f4 ff ff 	mov    QWORD PTR [rbp-0xba0],r9
  7c1b51:	4e 8d 34 dd 00 00 00 	lea    r14,[r11*8+0x0]
  7c1b58:	00 
  7c1b59:	4c 89 a5 28 f2 ff ff 	mov    QWORD PTR [rbp-0xdd8],r12
  7c1b60:	4c 8d 0c f0          	lea    r9,[rax+rsi*8]
  7c1b64:	4d 2b e6             	sub    r12,r14
  7c1b67:	49 f7 de             	neg    r14
  7c1b6a:	4d 03 f1             	add    r14,r9
  7c1b6d:	4c 03 d2             	add    r10,rdx
  7c1b70:	4c 89 b5 30 f2 ff ff 	mov    QWORD PTR [rbp-0xdd0],r14
  7c1b77:	4c 03 f9             	add    r15,rcx
  7c1b7a:	4c 8b b5 a0 f1 ff ff 	mov    r14,QWORD PTR [rbp-0xe60]
  7c1b81:	4c 03 fa             	add    r15,rdx
  7c1b84:	4d 2b f3             	sub    r14,r11
  7c1b87:	4c 89 95 68 f4 ff ff 	mov    QWORD PTR [rbp-0xb98],r10
  7c1b8e:	4c 8b 95 18 f7 ff ff 	mov    r10,QWORD PTR [rbp-0x8e8]
  7c1b95:	48 8b 8d 30 f3 ff ff 	mov    rcx,QWORD PTR [rbp-0xcd0]
  7c1b9c:	4c 89 bd 90 f4 ff ff 	mov    QWORD PTR [rbp-0xb70],r15
  7c1ba3:	4a 8d 04 f5 08 00 00 	lea    rax,[r14*8+0x8]
  7c1baa:	00 
  7c1bab:	4c 0f af d0          	imul   r10,rax
  7c1baf:	4c 89 8d 08 f5 ff ff 	mov    QWORD PTR [rbp-0xaf8],r9
  7c1bb6:	4e 8d 3c 11          	lea    r15,[rcx+r10*1]
  7c1bba:	4d 03 fc             	add    r15,r12
  7c1bbd:	4e 8d 0c 21          	lea    r9,[rcx+r12*1]
  7c1bc1:	4c 89 bd e8 f3 ff ff 	mov    QWORD PTR [rbp-0xc18],r15
  7c1bc8:	4f 8d 24 f4          	lea    r12,[r12+r14*8]
  7c1bcc:	4c 03 e1             	add    r12,rcx
  7c1bcf:	49 89 ff             	mov    r15,rdi
  7c1bd2:	48 8b 8d b8 f1 ff ff 	mov    rcx,QWORD PTR [rbp-0xe48]
  7c1bd9:	4d 03 d1             	add    r10,r9
  7c1bdc:	48 0f af c8          	imul   rcx,rax
  7c1be0:	4c 0f af f8          	imul   r15,rax
  7c1be4:	4c 89 a5 00 f6 ff ff 	mov    QWORD PTR [rbp-0xa00],r12
  7c1beb:	4c 8d 9d d0 f2 ff ff 	lea    r11,[rbp-0xd30]
  7c1bf2:	4d 8b 23             	mov    r12,QWORD PTR [r11]
  7c1bf5:	4c 0f af e0          	imul   r12,rax
  7c1bf9:	48 89 8d 38 f2 ff ff 	mov    QWORD PTR [rbp-0xdc8],rcx
  7c1c00:	48 89 85 28 f7 ff ff 	mov    QWORD PTR [rbp-0x8d8],rax
  7c1c07:	48 8b 8d 50 f7 ff ff 	mov    rcx,QWORD PTR [rbp-0x8b0]
  7c1c0e:	48 8b 85 30 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xbd0]
  7c1c15:	49 2b c0             	sub    rax,r8
  7c1c18:	4c 89 8d 50 f6 ff ff 	mov    QWORD PTR [rbp-0x9b0],r9
  7c1c1f:	4c 8b 8d 48 f4 ff ff 	mov    r9,QWORD PTR [rbp-0xbb8]
  7c1c26:	4c 03 c8             	add    r9,rax
  7c1c29:	48 8b 85 50 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xbb0]
  7c1c30:	48 f7 d8             	neg    rax
  7c1c33:	4c 89 bd 40 f5 ff ff 	mov    QWORD PTR [rbp-0xac0],r15
  7c1c3a:	49 03 c1             	add    rax,r9
  7c1c3d:	49 89 c0             	mov    r8,rax
  7c1c40:	4d 8d 7c 4d 00       	lea    r15,[r13+rcx*2+0x0]
  7c1c45:	49 f7 df             	neg    r15
  7c1c48:	4c 89 a5 40 f2 ff ff 	mov    QWORD PTR [rbp-0xdc0],r12
  7c1c4f:	4c 8b a5 18 f2 ff ff 	mov    r12,QWORD PTR [rbp-0xde8]
  7c1c56:	4d 2b c4             	sub    r8,r12
  7c1c59:	4c 2b 8d 00 f2 ff ff 	sub    r9,QWORD PTR [rbp-0xe00]
  7c1c60:	4d 03 fc             	add    r15,r12
  7c1c63:	49 f7 dc             	neg    r12
  7c1c66:	4d 03 c5             	add    r8,r13
  7c1c69:	4d 03 e1             	add    r12,r9
  7c1c6c:	49 2b c7             	sub    rax,r15
  7c1c6f:	4d 03 ec             	add    r13,r12
  7c1c72:	4d 2b cf             	sub    r9,r15
  7c1c75:	48 89 95 a0 f4 ff ff 	mov    QWORD PTR [rbp-0xb60],rdx
  7c1c7c:	4c 03 c2             	add    r8,rdx
  7c1c7f:	48 03 c2             	add    rax,rdx
  7c1c82:	4c 03 ea             	add    r13,rdx
  7c1c85:	4c 03 ca             	add    r9,rdx
  7c1c88:	48 63 95 e8 f5 ff ff 	movsxd rdx,DWORD PTR [rbp-0xa18]
  7c1c8f:	48 89 95 98 f7 ff ff 	mov    QWORD PTR [rbp-0x868],rdx
  7c1c96:	48 63 95 20 f7 ff ff 	movsxd rdx,DWORD PTR [rbp-0x8e0]
  7c1c9d:	48 8b 8d b8 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x948]
  7c1ca4:	48 89 95 60 f6 ff ff 	mov    QWORD PTR [rbp-0x9a0],rdx
  7c1cab:	48 2b ce             	sub    rcx,rsi
  7c1cae:	48 8b 95 b0 f1 ff ff 	mov    rdx,QWORD PTR [rbp-0xe50]
  7c1cb5:	48 ff c1             	inc    rcx
  7c1cb8:	48 89 85 50 f4 ff ff 	mov    QWORD PTR [rbp-0xbb0],rax
  7c1cbf:	4c 89 b5 58 f6 ff ff 	mov    QWORD PTR [rbp-0x9a8],r14
  7c1cc6:	48 8b 85 c0 f1 ff ff 	mov    rax,QWORD PTR [rbp-0xe40]
  7c1ccd:	49 89 c4             	mov    r12,rax
  7c1cd0:	4c 8b b5 c8 f4 ff ff 	mov    r14,QWORD PTR [rbp-0xb38]
  7c1cd7:	48 89 8d 58 f7 ff ff 	mov    QWORD PTR [rbp-0x8a8],rcx
  7c1cde:	48 89 d1             	mov    rcx,rdx
  7c1ce1:	4c 89 85 80 f4 ff ff 	mov    QWORD PTR [rbp-0xb80],r8
  7c1ce8:	4c 8b bd 08 f3 ff ff 	mov    r15,QWORD PTR [rbp-0xcf8]
  7c1cef:	4d 8b 03             	mov    r8,QWORD PTR [r11]
  7c1cf2:	4d 0f af e7          	imul   r12,r15
  7c1cf6:	4d 0f af c7          	imul   r8,r15
  7c1cfa:	49 0f af ce          	imul   rcx,r14
  7c1cfe:	49 0f af f6          	imul   rsi,r14
  7c1d02:	4c 0f af ff          	imul   r15,rdi
  7c1d06:	4c 89 95 10 f4 ff ff 	mov    QWORD PTR [rbp-0xbf0],r10
  7c1d0d:	4c 8b 95 20 f3 ff ff 	mov    r10,QWORD PTR [rbp-0xce0]
  7c1d14:	4c 89 8d 48 f4 ff ff 	mov    QWORD PTR [rbp-0xbb8],r9
  7c1d1b:	4d 89 d1             	mov    r9,r10
  7c1d1e:	4c 89 ad a8 f4 ff ff 	mov    QWORD PTR [rbp-0xb58],r13
  7c1d25:	4c 8b ad e0 f3 ff ff 	mov    r13,QWORD PTR [rbp-0xc20]
  7c1d2c:	4d 2b cd             	sub    r9,r13
  7c1d2f:	4c 89 85 58 f2 ff ff 	mov    QWORD PTR [rbp-0xda8],r8
  7c1d36:	4d 2b ec             	sub    r13,r12
  7c1d39:	4d 2b e0             	sub    r12,r8
  7c1d3c:	4c 2b c1             	sub    r8,rcx
  7c1d3f:	48 2b ce             	sub    rcx,rsi
  7c1d42:	4c 03 e1             	add    r12,rcx
  7c1d45:	49 f7 dc             	neg    r12
  7c1d48:	4d 03 e2             	add    r12,r10
  7c1d4b:	4c 89 8d 48 f2 ff ff 	mov    QWORD PTR [rbp-0xdb8],r9
  7c1d52:	4d 03 cd             	add    r9,r13
  7c1d55:	4d 03 c8             	add    r9,r8
  7c1d58:	4c 03 ce             	add    r9,rsi
  7c1d5b:	4c 89 bd f0 f3 ff ff 	mov    QWORD PTR [rbp-0xc10],r15
  7c1d62:	4b 8d 34 74          	lea    rsi,[r12+r14*2]
  7c1d66:	4d 03 cf             	add    r9,r15
  7c1d69:	49 03 f7             	add    rsi,r15
  7c1d6c:	4c 89 ad 50 f2 ff ff 	mov    QWORD PTR [rbp-0xdb0],r13
  7c1d73:	49 89 d5             	mov    r13,rdx
  7c1d76:	4c 89 8d 20 f4 ff ff 	mov    QWORD PTR [rbp-0xbe0],r9
  7c1d7d:	49 89 c1             	mov    r9,rax
  7c1d80:	4c 8b bd c0 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb40]
  7c1d87:	4c 8b 95 d8 f2 ff ff 	mov    r10,QWORD PTR [rbp-0xd28]
  7c1d8e:	4d 8b 23             	mov    r12,QWORD PTR [r11]
  7c1d91:	48 8b 8d b0 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x950]
  7c1d98:	4d 0f af ca          	imul   r9,r10
  7c1d9c:	4d 0f af e2          	imul   r12,r10
  7c1da0:	4d 0f af ef          	imul   r13,r15
  7c1da4:	49 0f af cf          	imul   rcx,r15
  7c1da8:	4c 0f af d7          	imul   r10,rdi
  7c1dac:	4c 8b 85 e8 f2 ff ff 	mov    r8,QWORD PTR [rbp-0xd18]
  7c1db3:	48 89 b5 f8 f3 ff ff 	mov    QWORD PTR [rbp-0xc08],rsi
  7c1dba:	4c 89 c6             	mov    rsi,r8
  7c1dbd:	4c 8b 9d d8 f3 ff ff 	mov    r11,QWORD PTR [rbp-0xc28]
  7c1dc4:	49 2b f3             	sub    rsi,r11
  7c1dc7:	4c 89 a5 68 f2 ff ff 	mov    QWORD PTR [rbp-0xd98],r12
  7c1dce:	4d 2b d9             	sub    r11,r9
  7c1dd1:	4d 2b cc             	sub    r9,r12
  7c1dd4:	4d 2b e5             	sub    r12,r13
  7c1dd7:	4c 2b e9             	sub    r13,rcx
  7c1dda:	4d 03 cd             	add    r9,r13
  7c1ddd:	49 f7 d9             	neg    r9
  7c1de0:	4e 8d 34 1e          	lea    r14,[rsi+r11*1]
  7c1de4:	4d 03 c8             	add    r9,r8
  7c1de7:	4d 03 f4             	add    r14,r12
  7c1dea:	4c 03 f1             	add    r14,rcx
  7c1ded:	4c 8b ad 18 f7 ff ff 	mov    r13,QWORD PTR [rbp-0x8e8]
  7c1df4:	4d 03 f2             	add    r14,r10
  7c1df7:	4c 89 9d 60 f2 ff ff 	mov    QWORD PTR [rbp-0xda0],r11
  7c1dfe:	41 83 e5 fe          	and    r13d,0xfffffffe
  7c1e02:	4b 8d 0c 79          	lea    rcx,[r9+r15*2]
  7c1e06:	49 03 ca             	add    rcx,r10
  7c1e09:	48 89 8d 00 f4 ff ff 	mov    QWORD PTR [rbp-0xc00],rcx
  7c1e10:	48 89 c1             	mov    rcx,rax
  7c1e13:	4c 8b 8d 78 f3 ff ff 	mov    r9,QWORD PTR [rbp-0xc88]
  7c1e1a:	49 0f af c9          	imul   rcx,r9
  7c1e1e:	4d 63 ed             	movsxd r13,r13d
  7c1e21:	48 f7 d9             	neg    rcx
  7c1e24:	4c 89 ad 10 f7 ff ff 	mov    QWORD PTR [rbp-0x8f0],r13
  7c1e2b:	49 89 d5             	mov    r13,rdx
  7c1e2e:	4c 8b 9d 68 f3 ff ff 	mov    r11,QWORD PTR [rbp-0xc98]
  7c1e35:	49 f7 dd             	neg    r13
  7c1e38:	4c 8b 85 d0 f2 ff ff 	mov    r8,QWORD PTR [rbp-0xd30]
  7c1e3f:	4d 0f af c1          	imul   r8,r9
  7c1e43:	4c 0f af 9d 28 f3 ff 	imul   r11,QWORD PTR [rbp-0xcd8]
  7c1e4a:	ff 
  7c1e4b:	4c 0f af cf          	imul   r9,rdi
  7c1e4f:	4c 03 ad b0 f6 ff ff 	add    r13,QWORD PTR [rbp-0x950]
  7c1e56:	4c 0f af ad 40 f7 ff 	imul   r13,QWORD PTR [rbp-0x8c0]
  7c1e5d:	ff 
  7c1e5e:	4c 89 b5 18 f4 ff ff 	mov    QWORD PTR [rbp-0xbe8],r14
  7c1e65:	4c 8b b5 00 f3 ff ff 	mov    r14,QWORD PTR [rbp-0xd00]
  7c1e6c:	4c 8b bd d8 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x928]
  7c1e73:	4d 2b f7             	sub    r14,r15
  7c1e76:	49 03 cf             	add    rcx,r15
  7c1e79:	48 89 bd a0 f3 ff ff 	mov    QWORD PTR [rbp-0xc60],rdi
  7c1e80:	4c 8b a5 10 f2 ff ff 	mov    r12,QWORD PTR [rbp-0xdf0]
  7c1e87:	4d 03 e3             	add    r12,r11
  7c1e8a:	4c 8b bd 08 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xdf8]
  7c1e91:	49 8d 3c 0e          	lea    rdi,[r14+rcx*1]
  7c1e95:	49 03 f8             	add    rdi,r8
  7c1e98:	4d 03 fc             	add    r15,r12
  7c1e9b:	49 03 f9             	add    rdi,r9
  7c1e9e:	4c 03 ef             	add    r13,rdi
  7c1ea1:	48 8b bd f8 f1 ff ff 	mov    rdi,QWORD PTR [rbp-0xe08]
  7c1ea8:	4c 89 ad 18 f6 ff ff 	mov    QWORD PTR [rbp-0x9e8],r13
  7c1eaf:	49 03 fb             	add    rdi,r11
  7c1eb2:	4c 8d 9d 40 f4 ff ff 	lea    r11,[rbp-0xbc0]
  7c1eb9:	4d 8b 2b             	mov    r13,QWORD PTR [r11]
  7c1ebc:	4d 03 ef             	add    r13,r15
  7c1ebf:	4c 8b a5 88 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb78]
  7c1ec6:	4c 03 e7             	add    r12,rdi
  7c1ec9:	48 8b bd a0 f4 ff ff 	mov    rdi,QWORD PTR [rbp-0xb60]
  7c1ed0:	4c 03 ef             	add    r13,rdi
  7c1ed3:	4d 89 2b             	mov    QWORD PTR [r11],r13
  7c1ed6:	4c 8d 2c d5 00 00 00 	lea    r13,[rdx*8+0x0]
  7c1edd:	00 
  7c1ede:	48 8b 95 28 f2 ff ff 	mov    rdx,QWORD PTR [rbp-0xdd8]
  7c1ee5:	49 2b d5             	sub    rdx,r13
  7c1ee8:	4c 03 f2             	add    r14,rdx
  7c1eeb:	48 03 f2             	add    rsi,rdx
  7c1eee:	4c 8b bd d0 f1 ff ff 	mov    r15,QWORD PTR [rbp-0xe30]
  7c1ef5:	49 03 ce             	add    rcx,r14
  7c1ef8:	4c 03 fa             	add    r15,rdx
  7c1efb:	49 03 c8             	add    rcx,r8
  7c1efe:	4c 8b ad 10 f6 ff ff 	mov    r13,QWORD PTR [rbp-0x9f0]
  7c1f05:	4c 03 c9             	add    r9,rcx
  7c1f08:	4c 8b 85 58 f3 ff ff 	mov    r8,QWORD PTR [rbp-0xca8]
  7c1f0f:	4d 03 ef             	add    r13,r15
  7c1f12:	4c 8b 9d d8 f1 ff ff 	mov    r11,QWORD PTR [rbp-0xe28]
  7c1f19:	49 89 c6             	mov    r14,rax
  7c1f1c:	4d 03 df             	add    r11,r15
  7c1f1f:	4c 8b bd e0 f1 ff ff 	mov    r15,QWORD PTR [rbp-0xe20]
  7c1f26:	4d 03 ef             	add    r13,r15
  7c1f29:	4d 03 fb             	add    r15,r11
  7c1f2c:	49 8d 0c 10          	lea    rcx,[r8+rdx*1]
  7c1f30:	4c 8b 9d 48 f6 ff ff 	mov    r11,QWORD PTR [rbp-0x9b8]
  7c1f37:	4d 03 eb             	add    r13,r11
  7c1f3a:	4c 89 ad 10 f6 ff ff 	mov    QWORD PTR [rbp-0x9f0],r13
  7c1f41:	4d 03 df             	add    r11,r15
  7c1f44:	4c 8b ad 60 f2 ff ff 	mov    r13,QWORD PTR [rbp-0xda0]
  7c1f4b:	4c 03 ee             	add    r13,rsi
  7c1f4e:	48 2b 8d f0 f1 ff ff 	sub    rcx,QWORD PTR [rbp-0xe10]
  7c1f55:	4c 03 ad 68 f2 ff ff 	add    r13,QWORD PTR [rbp-0xd98]
  7c1f5c:	4c 03 e1             	add    r12,rcx
  7c1f5f:	48 8b b5 48 f2 ff ff 	mov    rsi,QWORD PTR [rbp-0xdb8]
  7c1f66:	4d 03 d5             	add    r10,r13
  7c1f69:	48 03 f2             	add    rsi,rdx
  7c1f6c:	4c 03 e7             	add    r12,rdi
  7c1f6f:	4c 8b bd 38 f3 ff ff 	mov    r15,QWORD PTR [rbp-0xcc8]
  7c1f76:	4d 0f af f7          	imul   r14,r15
  7c1f7a:	4c 89 95 08 f4 ff ff 	mov    QWORD PTR [rbp-0xbf8],r10
  7c1f81:	4c 8b 95 50 f2 ff ff 	mov    r10,QWORD PTR [rbp-0xdb0]
  7c1f88:	4c 03 d6             	add    r10,rsi
  7c1f8b:	4c 8d 85 60 f4 ff ff 	lea    r8,[rbp-0xba0]
  7c1f92:	49 8b 30             	mov    rsi,QWORD PTR [r8]
  7c1f95:	48 03 f1             	add    rsi,rcx
  7c1f98:	4c 89 a5 88 f4 ff ff 	mov    QWORD PTR [rbp-0xb78],r12
  7c1f9f:	48 03 f7             	add    rsi,rdi
  7c1fa2:	4c 8b a5 d0 f2 ff ff 	mov    r12,QWORD PTR [rbp-0xd30]
  7c1fa9:	4d 89 e5             	mov    r13,r12
  7c1fac:	49 89 30             	mov    QWORD PTR [r8],rsi
  7c1faf:	48 8b b5 b0 f1 ff ff 	mov    rsi,QWORD PTR [rbp-0xe50]
  7c1fb6:	4c 8b 85 b8 f3 ff ff 	mov    r8,QWORD PTR [rbp-0xc48]
  7c1fbd:	4c 89 8d c8 f1 ff ff 	mov    QWORD PTR [rbp-0xe38],r9
  7c1fc4:	49 89 f1             	mov    r9,rsi
  7c1fc7:	4d 0f af ef          	imul   r13,r15
  7c1fcb:	4d 0f af c8          	imul   r9,r8
  7c1fcf:	4c 03 95 58 f2 ff ff 	add    r10,QWORD PTR [rbp-0xda8]
  7c1fd6:	4c 01 95 f0 f3 ff ff 	add    QWORD PTR [rbp-0xc10],r10
  7c1fdd:	4c 8b 95 b0 f6 ff ff 	mov    r10,QWORD PTR [rbp-0x950]
  7c1fe4:	4d 0f af d0          	imul   r10,r8
  7c1fe8:	48 03 8d 20 f2 ff ff 	add    rcx,QWORD PTR [rbp-0xde0]
  7c1fef:	48 03 f9             	add    rdi,rcx
  7c1ff2:	48 89 bd a0 f4 ff ff 	mov    QWORD PTR [rbp-0xb60],rdi
  7c1ff9:	48 8b bd a0 f3 ff ff 	mov    rdi,QWORD PTR [rbp-0xc60]
  7c2000:	4c 0f af ff          	imul   r15,rdi
  7c2004:	4c 89 9d 48 f6 ff ff 	mov    QWORD PTR [rbp-0x9b8],r11
  7c200b:	4c 8b 9d 60 f3 ff ff 	mov    r11,QWORD PTR [rbp-0xca0]
  7c2012:	4c 89 d9             	mov    rcx,r11
  7c2015:	49 2b ce             	sub    rcx,r14
  7c2018:	4d 2b f5             	sub    r14,r13
  7c201b:	4c 03 da             	add    r11,rdx
  7c201e:	4d 2b de             	sub    r11,r14
  7c2021:	4d 03 df             	add    r11,r15
  7c2024:	4c 89 9d f8 f4 ff ff 	mov    QWORD PTR [rbp-0xb08],r11
  7c202b:	4e 8d 34 29          	lea    r14,[rcx+r13*1]
  7c202f:	4d 2b e9             	sub    r13,r9
  7c2032:	4d 2b ca             	sub    r9,r10
  7c2035:	49 03 cd             	add    rcx,r13
  7c2038:	4f 8d 2c 42          	lea    r13,[r10+r8*2]
  7c203c:	4d 2b f1             	sub    r14,r9
  7c203f:	49 03 cd             	add    rcx,r13
  7c2042:	4d 03 f7             	add    r14,r15
  7c2045:	4c 03 f9             	add    r15,rcx
  7c2048:	48 8b 8d 18 f3 ff ff 	mov    rcx,QWORD PTR [rbp-0xce8]
  7c204f:	48 0f af c1          	imul   rax,rcx
  7c2053:	4c 0f af e1          	imul   r12,rcx
  7c2057:	48 0f af cf          	imul   rcx,rdi
  7c205b:	4c 8b 9d c0 f3 ff ff 	mov    r11,QWORD PTR [rbp-0xc40]
  7c2062:	4c 8b 95 b0 f6 ff ff 	mov    r10,QWORD PTR [rbp-0x950]
  7c2069:	49 0f af f3          	imul   rsi,r11
  7c206d:	4d 0f af d3          	imul   r10,r11
  7c2071:	4c 8b 85 e0 f2 ff ff 	mov    r8,QWORD PTR [rbp-0xd20]
  7c2078:	4d 89 c5             	mov    r13,r8
  7c207b:	4c 2b e8             	sub    r13,rax
  7c207e:	49 2b c4             	sub    rax,r12
  7c2081:	4c 89 b5 30 f7 ff ff 	mov    QWORD PTR [rbp-0x8d0],r14
  7c2088:	4d 8d 0c 10          	lea    r9,[r8+rdx*1]
  7c208c:	4c 2b c8             	sub    r9,rax
  7c208f:	4c 03 c9             	add    r9,rcx
  7c2092:	4c 89 8d 00 f5 ff ff 	mov    QWORD PTR [rbp-0xb00],r9
  7c2099:	4b 8d 44 25 00       	lea    rax,[r13+r12*1+0x0]
  7c209e:	4c 2b e6             	sub    r12,rsi
  7c20a1:	49 2b f2             	sub    rsi,r10
  7c20a4:	4d 03 ec             	add    r13,r12
  7c20a7:	48 2b c6             	sub    rax,rsi
  7c20aa:	48 03 c1             	add    rax,rcx
  7c20ad:	4b 8d 34 5a          	lea    rsi,[r10+r11*2]
  7c20b1:	4c 03 ee             	add    r13,rsi
  7c20b4:	48 8b b5 98 f1 ff ff 	mov    rsi,QWORD PTR [rbp-0xe68]
  7c20bb:	49 03 cd             	add    rcx,r13
  7c20be:	48 2b b5 b8 f1 ff ff 	sub    rsi,QWORD PTR [rbp-0xe48]
  7c20c5:	48 ff c6             	inc    rsi
  7c20c8:	48 0f af b5 28 f7 ff 	imul   rsi,QWORD PTR [rbp-0x8d8]
  7c20cf:	ff 
  7c20d0:	48 89 85 f0 f4 ff ff 	mov    QWORD PTR [rbp-0xb10],rax
  7c20d7:	48 8b 85 a8 f1 ff ff 	mov    rax,QWORD PTR [rbp-0xe58]
  7c20de:	4c 8b a5 38 f2 ff ff 	mov    r12,QWORD PTR [rbp-0xdc8]
  7c20e5:	4c 8d 95 08 f5 ff ff 	lea    r10,[rbp-0xaf8]
  7c20ec:	4d 8b 0a             	mov    r9,QWORD PTR [r10]
  7c20ef:	4c 8b b5 40 f2 ff ff 	mov    r14,QWORD PTR [rbp-0xdc0]
  7c20f6:	48 89 8d e0 f4 ff ff 	mov    QWORD PTR [rbp-0xb20],rcx
  7c20fd:	4d 8d 04 c4          	lea    r8,[r12+rax*8]
  7c2101:	4d 2b c8             	sub    r9,r8
  7c2104:	4c 2b e6             	sub    r12,rsi
  7c2107:	4c 03 ce             	add    r9,rsi
  7c210a:	4c 8b 85 38 f4 ff ff 	mov    r8,QWORD PTR [rbp-0xbc8]
  7c2111:	4d 03 ce             	add    r9,r14
  7c2114:	48 8b 8d 58 f7 ff ff 	mov    rcx,QWORD PTR [rbp-0x8a8]
  7c211b:	4c 2b 85 c0 f6 ff ff 	sub    r8,QWORD PTR [rbp-0x940]
  7c2122:	89 c8                	mov    eax,ecx
  7c2124:	4c 89 bd e8 f4 ff ff 	mov    QWORD PTR [rbp-0xb18],r15
  7c212b:	83 e0 fc             	and    eax,0xfffffffc
  7c212e:	4c 8d 9d 40 f5 ff ff 	lea    r11,[rbp-0xac0]
  7c2135:	4d 8b 3b             	mov    r15,QWORD PTR [r11]
  7c2138:	4d 03 cf             	add    r9,r15
  7c213b:	4d 89 0a             	mov    QWORD PTR [r10],r9
  7c213e:	4c 8b ad 30 f2 ff ff 	mov    r13,QWORD PTR [rbp-0xdd0]
  7c2145:	4c 8b 8d e8 f1 ff ff 	mov    r9,QWORD PTR [rbp-0xe18]
  7c214c:	4d 2b ec             	sub    r13,r12
  7c214f:	48 03 95 f0 f2 ff ff 	add    rdx,QWORD PTR [rbp-0xd10]
  7c2156:	4d 03 c8             	add    r9,r8
  7c2159:	4d 03 f5             	add    r14,r13
  7c215c:	49 2b d1             	sub    rdx,r9
  7c215f:	48 98                	cdqe   
  7c2161:	4d 03 fe             	add    r15,r14
  7c2164:	48 01 95 98 f4 ff ff 	add    QWORD PTR [rbp-0xb68],rdx
  7c216b:	44 8b 85 b8 f4 ff ff 	mov    r8d,DWORD PTR [rbp-0xb48]
  7c2172:	44 8b ad d8 f4 ff ff 	mov    r13d,DWORD PTR [rbp-0xb28]
  7c2179:	4c 8b 8d b8 f6 ff ff 	mov    r9,QWORD PTR [rbp-0x948]
  7c2180:	48 8b 95 40 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xbc0]
  7c2187:	4d 89 3b             	mov    QWORD PTR [r11],r15
  7c218a:	48 89 85 a8 f6 ff ff 	mov    QWORD PTR [rbp-0x958],rax
  7c2191:	89 8d 28 f5 ff ff    	mov    DWORD PTR [rbp-0xad8],ecx
  7c2197:	48 89 b5 30 f5 ff ff 	mov    QWORD PTR [rbp-0xad0],rsi
  7c219e:	44 8b a5 80 f3 ff ff 	mov    r12d,DWORD PTR [rbp-0xc80]
  7c21a5:	41 8d 78 01          	lea    edi,[r8+0x1]
  7c21a9:	44 3b e7             	cmp    r12d,edi
  7c21ac:	44 0f 4d e7          	cmovge r12d,edi
  7c21b0:	4d 63 e4             	movsxd r12,r12d
  7c21b3:	48 83 bd 48 f7 ff ff 	cmp    QWORD PTR [rbp-0x8b8],0x8
  7c21ba:	08 
  7c21bb:	0f 85 e3 01 00 00    	jne    7c23a4 <pre_step3d_mod_mp_pre_step3d_tile_+0x8da4>
  7c21c1:	48 83 bd 38 f7 ff ff 	cmp    QWORD PTR [rbp-0x8c8],0x8
  7c21c8:	08 
  7c21c9:	0f 85 d5 01 00 00    	jne    7c23a4 <pre_step3d_mod_mp_pre_step3d_tile_+0x8da4>
  7c21cf:	48 83 bd 50 f7 ff ff 	cmp    QWORD PTR [rbp-0x8b0],0x8
  7c21d6:	08 
  7c21d7:	0f 85 c7 01 00 00    	jne    7c23a4 <pre_step3d_mod_mp_pre_step3d_tile_+0x8da4>
  7c21dd:	33 f6                	xor    esi,esi
  7c21df:	33 c9                	xor    ecx,ecx
  7c21e1:	4c 8b 95 00 f6 ff ff 	mov    r10,QWORD PTR [rbp-0xa00]
  7c21e8:	45 33 db             	xor    r11d,r11d
  7c21eb:	48 83 bd 08 f7 ff ff 	cmp    QWORD PTR [rbp-0x8f8],0x0
  7c21f2:	00 
  7c21f3:	0f 8e 56 75 00 00    	jle    7c974f <pre_step3d_mod_mp_pre_step3d_tile_+0x1014f>
  7c21f9:	49 63 d0             	movsxd rdx,r8d
  7c21fc:	48 0f af 95 30 f4 ff 	imul   rdx,QWORD PTR [rbp-0xbd0]
  7c2203:	ff 
  7c2204:	4c 0f af a5 38 f4 ff 	imul   r12,QWORD PTR [rbp-0xbc8]
  7c220b:	ff 
  7c220c:	48 8b 85 60 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xba0]
  7c2213:	4c 03 a5 98 f4 ff ff 	add    r12,QWORD PTR [rbp-0xb68]
  7c221a:	89 bd b0 f4 ff ff    	mov    DWORD PTR [rbp-0xb50],edi
  7c2220:	44 89 85 b8 f4 ff ff 	mov    DWORD PTR [rbp-0xb48],r8d
  7c2227:	48 03 c2             	add    rax,rdx
  7c222a:	48 03 95 a0 f4 ff ff 	add    rdx,QWORD PTR [rbp-0xb60]
  7c2231:	48 89 95 48 f5 ff ff 	mov    QWORD PTR [rbp-0xab8],rdx
  7c2238:	48 89 85 50 f5 ff ff 	mov    QWORD PTR [rbp-0xab0],rax
  7c223f:	4c 89 8d b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],r9
  7c2246:	48 8b 95 58 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x8a8]
  7c224d:	48 8b 85 b8 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x948]
  7c2254:	48 3b 85 b0 f6 ff ff 	cmp    rax,QWORD PTR [rbp-0x950]
  7c225b:	0f 8c 12 01 00 00    	jl     7c2373 <pre_step3d_mod_mp_pre_step3d_tile_+0x8d73>
  7c2261:	48 83 fa 04          	cmp    rdx,0x4
  7c2265:	0f 8c dd 74 00 00    	jl     7c9748 <pre_step3d_mod_mp_pre_step3d_tile_+0x10148>
  7c226b:	4c 8b 8d 48 f6 ff ff 	mov    r9,QWORD PTR [rbp-0x9b8]
  7c2272:	45 33 ed             	xor    r13d,r13d
  7c2275:	4c 8b 85 10 f6 ff ff 	mov    r8,QWORD PTR [rbp-0x9f0]
  7c227c:	48 8b bd 50 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xab0]
  7c2283:	4c 8b b5 48 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xab8]
  7c228a:	4c 03 c9             	add    r9,rcx
  7c228d:	48 8b 85 a8 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x958]
  7c2294:	4c 03 c1             	add    r8,rcx
  7c2297:	48 89 c2             	mov    rdx,rax
  7c229a:	49 03 fb             	add    rdi,r11
  7c229d:	4f 8d 3c 1e          	lea    r15,[r14+r11*1]
  7c22a1:	4d 89 d6             	mov    r14,r10
  7c22a4:	c4 01 7d 10 0c e8    	vmovupd ymm9,YMMWORD PTR [r8+r13*8]
  7c22aa:	c4 01 7d 10 2c ef    	vmovupd ymm13,YMMWORD PTR [r15+r13*8]
  7c22b0:	c4 01 35 5c 14 e9    	vsubpd ymm10,ymm9,YMMWORD PTR [r9+r13*8]
  7c22b6:	c4 21 15 5c 3c ef    	vsubpd ymm15,ymm13,YMMWORD PTR [rdi+r13*8]
  7c22bc:	c4 41 65 5e da       	vdivpd ymm11,ymm3,ymm10
  7c22c1:	c5 25 59 e0          	vmulpd ymm12,ymm11,ymm0
  7c22c5:	c4 01 1d 59 34 ec    	vmulpd ymm14,ymm12,YMMWORD PTR [r12+r13*8]
  7c22cb:	49 83 c5 04          	add    r13,0x4
  7c22cf:	c4 41 0d 59 cf       	vmulpd ymm9,ymm14,ymm15
  7c22d4:	c4 41 7d 11 4e 08    	vmovupd YMMWORD PTR [r14+0x8],ymm9
  7c22da:	49 83 c6 20          	add    r14,0x20
  7c22de:	4c 3b ea             	cmp    r13,rdx
  7c22e1:	72 c1                	jb     7c22a4 <pre_step3d_mod_mp_pre_step3d_tile_+0x8ca4>
  7c22e3:	48 8b 95 58 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x8a8]
  7c22ea:	4c 8d 34 c5 00 00 00 	lea    r14,[rax*8+0x0]
  7c22f1:	00 
  7c22f2:	48 3b c2             	cmp    rax,rdx
  7c22f5:	73 7c                	jae    7c2373 <pre_step3d_mod_mp_pre_step3d_tile_+0x8d73>
  7c22f7:	4c 8b 8d 48 f6 ff ff 	mov    r9,QWORD PTR [rbp-0x9b8]
  7c22fe:	4d 8d 2c c2          	lea    r13,[r10+rax*8]
  7c2302:	4c 8b 85 10 f6 ff ff 	mov    r8,QWORD PTR [rbp-0x9f0]
  7c2309:	48 8b bd 50 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xab0]
  7c2310:	4c 8b bd 48 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xab8]
  7c2317:	4c 03 c9             	add    r9,rcx
  7c231a:	4c 03 c1             	add    r8,rcx
  7c231d:	49 03 fb             	add    rdi,r11
  7c2320:	4d 03 fb             	add    r15,r11
  7c2323:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  7c2328:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  7c232f:	00 
  7c2330:	c4 41 7b 10 0c c0    	vmovsd xmm9,QWORD PTR [r8+rax*8]
  7c2336:	c4 01 7b 10 2c 3e    	vmovsd xmm13,QWORD PTR [r14+r15*1]
  7c233c:	c4 41 33 5c 14 c1    	vsubsd xmm10,xmm9,QWORD PTR [r9+rax*8]
  7c2342:	48 ff c0             	inc    rax
  7c2345:	c4 41 13 5c 3c 3e    	vsubsd xmm15,xmm13,QWORD PTR [r14+rdi*1]
  7c234b:	c4 41 3b 5e da       	vdivsd xmm11,xmm8,xmm10
  7c2350:	c4 41 73 59 e3       	vmulsd xmm12,xmm1,xmm11
  7c2355:	c4 01 1b 59 34 26    	vmulsd xmm14,xmm12,QWORD PTR [r14+r12*1]
  7c235b:	49 83 c6 08          	add    r14,0x8
  7c235f:	c4 41 0b 59 cf       	vmulsd xmm9,xmm14,xmm15
  7c2364:	c4 41 7b 11 4d 08    	vmovsd QWORD PTR [r13+0x8],xmm9
  7c236a:	49 83 c5 08          	add    r13,0x8
  7c236e:	48 3b c2             	cmp    rax,rdx
  7c2371:	72 bd                	jb     7c2330 <pre_step3d_mod_mp_pre_step3d_tile_+0x8d30>
  7c2373:	48 ff c6             	inc    rsi
  7c2376:	4c 03 95 28 f7 ff ff 	add    r10,QWORD PTR [rbp-0x8d8]
  7c237d:	48 03 8d c8 f6 ff ff 	add    rcx,QWORD PTR [rbp-0x938]
  7c2384:	4c 03 a5 c0 f6 ff ff 	add    r12,QWORD PTR [rbp-0x940]
  7c238b:	4c 03 9d d0 f6 ff ff 	add    r11,QWORD PTR [rbp-0x930]
  7c2392:	48 3b b5 08 f7 ff ff 	cmp    rsi,QWORD PTR [rbp-0x8f8]
  7c2399:	0f 82 ae fe ff ff    	jb     7c224d <pre_step3d_mod_mp_pre_step3d_tile_+0x8c4d>
  7c239f:	e9 30 06 00 00       	jmp    7c29d4 <pre_step3d_mod_mp_pre_step3d_tile_+0x93d4>
  7c23a4:	45 33 f6             	xor    r14d,r14d
  7c23a7:	33 c0                	xor    eax,eax
  7c23a9:	45 33 ed             	xor    r13d,r13d
  7c23ac:	4c 8b 95 00 f6 ff ff 	mov    r10,QWORD PTR [rbp-0xa00]
  7c23b3:	45 33 db             	xor    r11d,r11d
  7c23b6:	48 83 bd 08 f7 ff ff 	cmp    QWORD PTR [rbp-0x8f8],0x0
  7c23bd:	00 
  7c23be:	0f 8e 68 0a 00 00    	jle    7c2e2c <pre_step3d_mod_mp_pre_step3d_tile_+0x982c>
  7c23c4:	49 63 c8             	movsxd rcx,r8d
  7c23c7:	48 0f af 8d 30 f4 ff 	imul   rcx,QWORD PTR [rbp-0xbd0]
  7c23ce:	ff 
  7c23cf:	4c 0f af a5 38 f4 ff 	imul   r12,QWORD PTR [rbp-0xbc8]
  7c23d6:	ff 
  7c23d7:	4c 8b bd 68 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb98]
  7c23de:	48 8b b5 70 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb90]
  7c23e5:	48 8b 95 58 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xba8]
  7c23ec:	4c 89 95 e8 f6 ff ff 	mov    QWORD PTR [rbp-0x918],r10
  7c23f3:	4c 03 f9             	add    r15,rcx
  7c23f6:	4c 89 bd d0 f5 ff ff 	mov    QWORD PTR [rbp-0xa30],r15
  7c23fd:	49 03 f4             	add    rsi,r12
  7c2400:	4c 8b bd 90 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb70]
  7c2407:	49 03 d4             	add    rdx,r12
  7c240a:	4c 03 a5 78 f4 ff ff 	add    r12,QWORD PTR [rbp-0xb88]
  7c2411:	4c 89 a5 60 f5 ff ff 	mov    QWORD PTR [rbp-0xaa0],r12
  7c2418:	48 89 95 68 f5 ff ff 	mov    QWORD PTR [rbp-0xa98],rdx
  7c241f:	4c 03 f9             	add    r15,rcx
  7c2422:	4c 89 bd c8 f5 ff ff 	mov    QWORD PTR [rbp-0xa38],r15
  7c2429:	4c 8b bd 80 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb80]
  7c2430:	48 89 b5 e0 f6 ff ff 	mov    QWORD PTR [rbp-0x920],rsi
  7c2437:	4c 89 9d f0 f6 ff ff 	mov    QWORD PTR [rbp-0x910],r11
  7c243e:	4c 89 ad f8 f6 ff ff 	mov    QWORD PTR [rbp-0x908],r13
  7c2445:	4c 03 f9             	add    r15,rcx
  7c2448:	4c 89 bd c0 f5 ff ff 	mov    QWORD PTR [rbp-0xa40],r15
  7c244f:	4c 8b bd 50 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xbb0]
  7c2456:	4c 89 b5 00 f7 ff ff 	mov    QWORD PTR [rbp-0x900],r14
  7c245d:	89 bd b0 f4 ff ff    	mov    DWORD PTR [rbp-0xb50],edi
  7c2463:	44 89 85 b8 f4 ff ff 	mov    DWORD PTR [rbp-0xb48],r8d
  7c246a:	4c 03 f9             	add    r15,rcx
  7c246d:	4c 89 bd b8 f5 ff ff 	mov    QWORD PTR [rbp-0xa48],r15
  7c2474:	4c 8b bd a8 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb58]
  7c247b:	4c 89 8d b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],r9
  7c2482:	4c 03 f9             	add    r15,rcx
  7c2485:	48 03 8d 48 f4 ff ff 	add    rcx,QWORD PTR [rbp-0xbb8]
  7c248c:	4c 89 bd b0 f5 ff ff 	mov    QWORD PTR [rbp-0xa50],r15
  7c2493:	48 89 8d 58 f5 ff ff 	mov    QWORD PTR [rbp-0xaa8],rcx
  7c249a:	48 8b 95 b8 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x948]
  7c24a1:	48 3b 95 b0 f6 ff ff 	cmp    rdx,QWORD PTR [rbp-0x950]
  7c24a8:	0f 8c c2 04 00 00    	jl     7c2970 <pre_step3d_mod_mp_pre_step3d_tile_+0x9370>
  7c24ae:	83 bd 20 f7 ff ff 04 	cmp    DWORD PTR [rbp-0x8e0],0x4
  7c24b5:	0f 8c db 72 00 00    	jl     7c9796 <pre_step3d_mod_mp_pre_step3d_tile_+0x10196>
  7c24bb:	4c 8b a5 d0 f5 ff ff 	mov    r12,QWORD PTR [rbp-0xa30]
  7c24c2:	33 ff                	xor    edi,edi
  7c24c4:	48 8b 95 f0 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x910]
  7c24cb:	4c 8b ad c8 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xa38]
  7c24d2:	48 8b 8d f8 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xa08]
  7c24d9:	4c 8b bd f0 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xa10]
  7c24e0:	4d 8d 0c 14          	lea    r9,[r12+rdx*1]
  7c24e4:	4c 8b 95 68 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xa98]
  7c24eb:	4d 8d 64 15 00       	lea    r12,[r13+rdx*1+0x0]
  7c24f0:	4c 8b b5 f8 f6 ff ff 	mov    r14,QWORD PTR [rbp-0x908]
  7c24f7:	4c 89 8d 90 f7 ff ff 	mov    QWORD PTR [rbp-0x870],r9
  7c24fe:	4c 8d 0c 01          	lea    r9,[rcx+rax*1]
  7c2502:	48 8b 8d 60 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xaa0]
  7c2509:	4d 8d 2c 07          	lea    r13,[r15+rax*1]
  7c250d:	4c 8b bd b8 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xa48]
  7c2514:	4d 03 d6             	add    r10,r14
  7c2517:	48 8b b5 20 f6 ff ff 	mov    rsi,QWORD PTR [rbp-0x9e0]
  7c251e:	4c 8b 9d 08 f6 ff ff 	mov    r11,QWORD PTR [rbp-0x9f8]
  7c2525:	4c 03 f1             	add    r14,rcx
  7c2528:	44 8b 85 e8 f5 ff ff 	mov    r8d,DWORD PTR [rbp-0xa18]
  7c252f:	49 8d 0c 17          	lea    rcx,[r15+rdx*1]
  7c2533:	4c 8b bd 58 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xaa8]
  7c253a:	48 03 f0             	add    rsi,rax
  7c253d:	48 89 8d 88 f7 ff ff 	mov    QWORD PTR [rbp-0x878],rcx
  7c2544:	33 c9                	xor    ecx,ecx
  7c2546:	44 89 85 68 f6 ff ff 	mov    DWORD PTR [rbp-0x998],r8d
  7c254d:	4c 03 d8             	add    r11,rax
  7c2550:	4c 89 b5 68 f7 ff ff 	mov    QWORD PTR [rbp-0x898],r14
  7c2557:	49 03 d7             	add    rdx,r15
  7c255a:	4c 8b bd e8 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x918]
  7c2561:	48 89 95 70 f5 ff ff 	mov    QWORD PTR [rbp-0xa90],rdx
  7c2568:	33 d2                	xor    edx,edx
  7c256a:	4c 89 ad 78 f7 ff ff 	mov    QWORD PTR [rbp-0x888],r13
  7c2571:	4c 89 95 60 f7 ff ff 	mov    QWORD PTR [rbp-0x8a0],r10
  7c2578:	48 89 b5 70 f7 ff ff 	mov    QWORD PTR [rbp-0x890],rsi
  7c257f:	48 89 85 70 f6 ff ff 	mov    QWORD PTR [rbp-0x990],rax
  7c2586:	4d 89 f8             	mov    r8,r15
  7c2589:	48 89 d0             	mov    rax,rdx
  7c258c:	48 8b b5 70 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xa90]
  7c2593:	4c 8b 95 38 f7 ff ff 	mov    r10,QWORD PTR [rbp-0x8c8]
  7c259a:	4c 8b ad 48 f7 ff ff 	mov    r13,QWORD PTR [rbp-0x8b8]
  7c25a1:	4c 8b b5 50 f7 ff ff 	mov    r14,QWORD PTR [rbp-0x8b0]
  7c25a8:	4c 8b bd 70 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x890]
  7c25af:	48 83 c7 04          	add    rdi,0x4
  7c25b3:	4c 03 f9             	add    r15,rcx
  7c25b6:	c4 41 7b 10 0f       	vmovsd xmm9,QWORD PTR [r15]
  7c25bb:	c4 01 31 16 1c 2f    	vmovhpd xmm11,xmm9,QWORD PTR [r15+r13*1]
  7c25c1:	4d 8d 3c 0b          	lea    r15,[r11+rcx*1]
  7c25c5:	c4 41 7b 10 17       	vmovsd xmm10,QWORD PTR [r15]
  7c25ca:	c4 01 29 16 24 2f    	vmovhpd xmm12,xmm10,QWORD PTR [r15+r13*1]
  7c25d0:	c4 41 21 5c ec       	vsubpd xmm13,xmm11,xmm12
  7c25d5:	c4 41 69 5e f5       	vdivpd xmm14,xmm2,xmm13
  7c25da:	4c 8b bd 60 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x8a0]
  7c25e1:	c5 09 59 cd          	vmulpd xmm9,xmm14,xmm5
  7c25e5:	4c 03 fa             	add    r15,rdx
  7c25e8:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  7c25ed:	c4 01 01 16 14 17    	vmovhpd xmm10,xmm15,QWORD PTR [r15+r10*1]
  7c25f3:	4d 8d 3c 04          	lea    r15,[r12+rax*1]
  7c25f7:	c4 41 7b 10 1f       	vmovsd xmm11,QWORD PTR [r15]
  7c25fc:	c4 01 21 16 2c 37    	vmovhpd xmm13,xmm11,QWORD PTR [r15+r14*1]
  7c2602:	4c 8b bd 90 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x870]
  7c2609:	c4 41 31 59 fa       	vmulpd xmm15,xmm9,xmm10
  7c260e:	4c 03 f8             	add    r15,rax
  7c2611:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  7c2616:	c4 01 19 16 34 37    	vmovhpd xmm14,xmm12,QWORD PTR [r15+r14*1]
  7c261c:	4c 8b bd 78 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x888]
  7c2623:	c4 41 11 5c ce       	vsubpd xmm9,xmm13,xmm14
  7c2628:	c4 41 01 59 d1       	vmulpd xmm10,xmm15,xmm9
  7c262d:	c4 41 79 11 50 08    	vmovupd XMMWORD PTR [r8+0x8],xmm10
  7c2633:	4c 03 f9             	add    r15,rcx
  7c2636:	c4 41 7b 10 1f       	vmovsd xmm11,QWORD PTR [r15]
  7c263b:	c4 01 21 16 2c 2f    	vmovhpd xmm13,xmm11,QWORD PTR [r15+r13*1]
  7c2641:	4d 8d 3c 09          	lea    r15,[r9+rcx*1]
  7c2645:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  7c264a:	4a 8d 0c a9          	lea    rcx,[rcx+r13*4]
  7c264e:	c4 01 19 16 34 2f    	vmovhpd xmm14,xmm12,QWORD PTR [r15+r13*1]
  7c2654:	c4 41 11 5c fe       	vsubpd xmm15,xmm13,xmm14
  7c2659:	c4 41 69 5e cf       	vdivpd xmm9,xmm2,xmm15
  7c265e:	4c 8b bd 68 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x898]
  7c2665:	c5 31 59 dd          	vmulpd xmm11,xmm9,xmm5
  7c2669:	4c 03 fa             	add    r15,rdx
  7c266c:	c4 41 7b 10 17       	vmovsd xmm10,QWORD PTR [r15]
  7c2671:	4a 8d 14 92          	lea    rdx,[rdx+r10*4]
  7c2675:	c4 01 29 16 24 17    	vmovhpd xmm12,xmm10,QWORD PTR [r15+r10*1]
  7c267b:	4c 8b bd 88 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x878]
  7c2682:	c4 41 21 59 cc       	vmulpd xmm9,xmm11,xmm12
  7c2687:	4c 03 f8             	add    r15,rax
  7c268a:	c4 41 7b 10 2f       	vmovsd xmm13,QWORD PTR [r15]
  7c268f:	c4 01 11 16 3c 37    	vmovhpd xmm15,xmm13,QWORD PTR [r15+r14*1]
  7c2695:	4c 8d 3c 06          	lea    r15,[rsi+rax*1]
  7c2699:	c4 41 7b 10 37       	vmovsd xmm14,QWORD PTR [r15]
  7c269e:	4a 8d 04 b0          	lea    rax,[rax+r14*4]
  7c26a2:	c4 01 09 16 2c 37    	vmovhpd xmm13,xmm14,QWORD PTR [r15+r14*1]
  7c26a8:	c4 41 01 5c d5       	vsubpd xmm10,xmm15,xmm13
  7c26ad:	c4 41 31 59 da       	vmulpd xmm11,xmm9,xmm10
  7c26b2:	c4 41 79 11 58 18    	vmovupd XMMWORD PTR [r8+0x18],xmm11
  7c26b8:	49 83 c0 20          	add    r8,0x20
  7c26bc:	48 3b bd 98 f7 ff ff 	cmp    rdi,QWORD PTR [rbp-0x868]
  7c26c3:	0f 82 df fe ff ff    	jb     7c25a8 <pre_step3d_mod_mp_pre_step3d_tile_+0x8fa8>
  7c26c9:	44 8b 85 68 f6 ff ff 	mov    r8d,DWORD PTR [rbp-0x998]
  7c26d0:	48 8b 85 70 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x990]
  7c26d7:	41 8d 50 01          	lea    edx,[r8+0x1]
  7c26db:	3b 95 20 f7 ff ff    	cmp    edx,DWORD PTR [rbp-0x8e0]
  7c26e1:	0f 87 89 02 00 00    	ja     7c2970 <pre_step3d_mod_mp_pre_step3d_tile_+0x9370>
  7c26e7:	4d 63 c0             	movsxd r8,r8d
  7c26ea:	4c 8b bd 60 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x9a0]
  7c26f1:	4d 2b f8             	sub    r15,r8
  7c26f4:	49 83 ff 02          	cmp    r15,0x2
  7c26f8:	0f 8c 90 70 00 00    	jl     7c978e <pre_step3d_mod_mp_pre_step3d_tile_+0x1018e>
  7c26fe:	4d 89 c4             	mov    r12,r8
  7c2701:	45 33 c9             	xor    r9d,r9d
  7c2704:	4c 0f af a5 48 f7 ff 	imul   r12,QWORD PTR [rbp-0x8b8]
  7c270b:	ff 
  7c270c:	48 8b bd e0 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xa20]
  7c2713:	45 89 fe             	mov    r14d,r15d
  7c2716:	4c 8b 9d d8 f5 ff ff 	mov    r11,QWORD PTR [rbp-0xa28]
  7c271d:	41 83 e6 fe          	and    r14d,0xfffffffe
  7c2721:	48 8b 95 50 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x8b0]
  7c2728:	49 0f af d0          	imul   rdx,r8
  7c272c:	4c 8b ad e8 f6 ff ff 	mov    r13,QWORD PTR [rbp-0x918]
  7c2733:	48 03 f8             	add    rdi,rax
  7c2736:	49 03 fc             	add    rdi,r12
  7c2739:	4c 03 d8             	add    r11,rax
  7c273c:	4d 03 dc             	add    r11,r12
  7c273f:	4d 89 c4             	mov    r12,r8
  7c2742:	4c 0f af a5 38 f7 ff 	imul   r12,QWORD PTR [rbp-0x8c8]
  7c2749:	ff 
  7c274a:	48 8b b5 b0 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xa50]
  7c2751:	4b 8d 4c c5 00       	lea    rcx,[r13+r8*8+0x0]
  7c2756:	48 89 8d 78 f5 ff ff 	mov    QWORD PTR [rbp-0xa88],rcx
  7c275d:	48 8b 8d f0 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x910]
  7c2764:	4c 8b 95 c0 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xa40]
  7c276b:	4c 89 bd 80 f7 ff ff 	mov    QWORD PTR [rbp-0x880],r15
  7c2772:	4d 63 f6             	movsxd r14,r14d
  7c2775:	4c 8d 2c 0e          	lea    r13,[rsi+rcx*1]
  7c2779:	4c 03 a5 e0 f6 ff ff 	add    r12,QWORD PTR [rbp-0x920]
  7c2780:	4c 03 d1             	add    r10,rcx
  7c2783:	33 c9                	xor    ecx,ecx
  7c2785:	4c 03 ea             	add    r13,rdx
  7c2788:	33 f6                	xor    esi,esi
  7c278a:	4c 03 d2             	add    r10,rdx
  7c278d:	4c 8b bd 78 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xa88]
  7c2794:	33 d2                	xor    edx,edx
  7c2796:	4c 89 85 78 f6 ff ff 	mov    QWORD PTR [rbp-0x988],r8
  7c279d:	48 89 85 70 f6 ff ff 	mov    QWORD PTR [rbp-0x990],rax
  7c27a4:	4c 8b 85 48 f7 ff ff 	mov    r8,QWORD PTR [rbp-0x8b8]
  7c27ab:	49 8d 04 33          	lea    rax,[r11+rsi*1]
  7c27af:	c5 7b 10 08          	vmovsd xmm9,QWORD PTR [rax]
  7c27b3:	c4 21 31 16 1c 00    	vmovhpd xmm11,xmm9,QWORD PTR [rax+r8*1]
  7c27b9:	48 8d 04 37          	lea    rax,[rdi+rsi*1]
  7c27bd:	c5 7b 10 10          	vmovsd xmm10,QWORD PTR [rax]
  7c27c1:	4a 8d 34 46          	lea    rsi,[rsi+r8*2]
  7c27c5:	c4 21 29 16 24 00    	vmovhpd xmm12,xmm10,QWORD PTR [rax+r8*1]
  7c27cb:	4d 8d 04 0c          	lea    r8,[r12+rcx*1]
  7c27cf:	c4 41 21 5c ec       	vsubpd xmm13,xmm11,xmm12
  7c27d4:	c4 41 69 5e f5       	vdivpd xmm14,xmm2,xmm13
  7c27d9:	c5 09 59 cd          	vmulpd xmm9,xmm14,xmm5
  7c27dd:	48 8b 85 38 f7 ff ff 	mov    rax,QWORD PTR [rbp-0x8c8]
  7c27e4:	c4 41 7b 10 38       	vmovsd xmm15,QWORD PTR [r8]
  7c27e9:	c4 41 01 16 14 00    	vmovhpd xmm10,xmm15,QWORD PTR [r8+rax*1]
  7c27ef:	48 8d 0c 41          	lea    rcx,[rcx+rax*2]
  7c27f3:	48 8b 85 50 f7 ff ff 	mov    rax,QWORD PTR [rbp-0x8b0]
  7c27fa:	4d 8d 04 12          	lea    r8,[r10+rdx*1]
  7c27fe:	c4 41 7b 10 18       	vmovsd xmm11,QWORD PTR [r8]
  7c2803:	c4 41 31 59 fa       	vmulpd xmm15,xmm9,xmm10
  7c2808:	c4 41 21 16 2c 00    	vmovhpd xmm13,xmm11,QWORD PTR [r8+rax*1]
  7c280e:	4d 8d 44 15 00       	lea    r8,[r13+rdx*1+0x0]
  7c2813:	c4 41 7b 10 20       	vmovsd xmm12,QWORD PTR [r8]
  7c2818:	48 8d 14 42          	lea    rdx,[rdx+rax*2]
  7c281c:	c4 41 19 16 34 00    	vmovhpd xmm14,xmm12,QWORD PTR [r8+rax*1]
  7c2822:	c4 41 11 5c ce       	vsubpd xmm9,xmm13,xmm14
  7c2827:	c4 41 01 59 d1       	vmulpd xmm10,xmm15,xmm9
  7c282c:	c4 01 79 11 54 cf 08 	vmovupd XMMWORD PTR [r15+r9*8+0x8],xmm10
  7c2833:	49 83 c1 02          	add    r9,0x2
  7c2837:	4d 3b ce             	cmp    r9,r14
  7c283a:	0f 82 64 ff ff ff    	jb     7c27a4 <pre_step3d_mod_mp_pre_step3d_tile_+0x91a4>
  7c2840:	4c 8b bd 80 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x880]
  7c2847:	4c 8b 85 78 f6 ff ff 	mov    r8,QWORD PTR [rbp-0x988]
  7c284e:	48 8b 85 70 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x990]
  7c2855:	4c 8b 9d 50 f7 ff ff 	mov    r11,QWORD PTR [rbp-0x8b0]
  7c285c:	4c 8b 95 48 f7 ff ff 	mov    r10,QWORD PTR [rbp-0x8b8]
  7c2863:	4c 8b 8d 38 f7 ff ff 	mov    r9,QWORD PTR [rbp-0x8c8]
  7c286a:	4d 0f af de          	imul   r11,r14
  7c286e:	4d 0f af d6          	imul   r10,r14
  7c2872:	4d 0f af ce          	imul   r9,r14
  7c2876:	4d 3b f7             	cmp    r14,r15
  7c2879:	0f 83 f1 00 00 00    	jae    7c2970 <pre_step3d_mod_mp_pre_step3d_tile_+0x9370>
  7c287f:	4c 89 c6             	mov    rsi,r8
  7c2882:	48 0f af b5 48 f7 ff 	imul   rsi,QWORD PTR [rbp-0x8b8]
  7c2889:	ff 
  7c288a:	48 8b bd e0 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xa20]
  7c2891:	4c 8b a5 d8 f5 ff ff 	mov    r12,QWORD PTR [rbp-0xa28]
  7c2898:	48 8b 8d e8 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x918]
  7c289f:	48 8b 95 f0 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x910]
  7c28a6:	48 03 f8             	add    rdi,rax
  7c28a9:	48 03 fe             	add    rdi,rsi
  7c28ac:	4c 03 e0             	add    r12,rax
  7c28af:	4c 03 e6             	add    r12,rsi
  7c28b2:	4c 89 c6             	mov    rsi,r8
  7c28b5:	48 0f af b5 38 f7 ff 	imul   rsi,QWORD PTR [rbp-0x8c8]
  7c28bc:	ff 
  7c28bd:	4c 89 bd 80 f7 ff ff 	mov    QWORD PTR [rbp-0x880],r15
  7c28c4:	4e 8d 2c c1          	lea    r13,[rcx+r8*8]
  7c28c8:	4c 0f af 85 50 f7 ff 	imul   r8,QWORD PTR [rbp-0x8b0]
  7c28cf:	ff 
  7c28d0:	4c 89 ad 80 f5 ff ff 	mov    QWORD PTR [rbp-0xa80],r13
  7c28d7:	48 8b 8d b0 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xa50]
  7c28de:	4c 8b ad c0 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xa40]
  7c28e5:	48 89 85 70 f6 ff ff 	mov    QWORD PTR [rbp-0x990],rax
  7c28ec:	48 03 b5 e0 f6 ff ff 	add    rsi,QWORD PTR [rbp-0x920]
  7c28f3:	48 03 ca             	add    rcx,rdx
  7c28f6:	48 8b 85 80 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xa80]
  7c28fd:	49 03 d5             	add    rdx,r13
  7c2900:	4c 8b ad 48 f7 ff ff 	mov    r13,QWORD PTR [rbp-0x8b8]
  7c2907:	49 03 c8             	add    rcx,r8
  7c290a:	4c 8b bd 50 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x8b0]
  7c2911:	49 03 d0             	add    rdx,r8
  7c2914:	4c 8b 85 38 f7 ff ff 	mov    r8,QWORD PTR [rbp-0x8c8]
  7c291b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  7c2920:	c4 01 7b 10 0c 22    	vmovsd xmm9,QWORD PTR [r10+r12*1]
  7c2926:	c4 41 7b 10 2c 13    	vmovsd xmm13,QWORD PTR [r11+rdx*1]
  7c292c:	c4 41 33 5c 14 3a    	vsubsd xmm10,xmm9,QWORD PTR [r10+rdi*1]
  7c2932:	4d 03 d5             	add    r10,r13
  7c2935:	c4 41 13 5c 3c 0b    	vsubsd xmm15,xmm13,QWORD PTR [r11+rcx*1]
  7c293b:	c4 41 3b 5e da       	vdivsd xmm11,xmm8,xmm10
  7c2940:	c4 41 73 59 e3       	vmulsd xmm12,xmm1,xmm11
  7c2945:	4d 03 df             	add    r11,r15
  7c2948:	c4 41 1b 59 34 31    	vmulsd xmm14,xmm12,QWORD PTR [r9+rsi*1]
  7c294e:	4d 03 c8             	add    r9,r8
  7c2951:	c4 41 0b 59 cf       	vmulsd xmm9,xmm14,xmm15
  7c2956:	c4 21 7b 11 4c f0 08 	vmovsd QWORD PTR [rax+r14*8+0x8],xmm9
  7c295d:	49 ff c6             	inc    r14
  7c2960:	4c 3b b5 80 f7 ff ff 	cmp    r14,QWORD PTR [rbp-0x880]
  7c2967:	72 b7                	jb     7c2920 <pre_step3d_mod_mp_pre_step3d_tile_+0x9320>
  7c2969:	48 8b 85 70 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x990]
  7c2970:	48 8b 8d f0 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x910]
  7c2977:	48 8b b5 e8 f6 ff ff 	mov    rsi,QWORD PTR [rbp-0x918]
  7c297e:	48 8b 95 c0 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x940]
  7c2985:	48 8b bd 00 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x900]
  7c298c:	48 ff c7             	inc    rdi
  7c298f:	48 03 8d d0 f6 ff ff 	add    rcx,QWORD PTR [rbp-0x930]
  7c2996:	48 03 b5 28 f7 ff ff 	add    rsi,QWORD PTR [rbp-0x8d8]
  7c299d:	48 03 85 c8 f6 ff ff 	add    rax,QWORD PTR [rbp-0x938]
  7c29a4:	48 01 95 e0 f6 ff ff 	add    QWORD PTR [rbp-0x920],rdx
  7c29ab:	48 01 95 f8 f6 ff ff 	add    QWORD PTR [rbp-0x908],rdx
  7c29b2:	48 89 8d f0 f6 ff ff 	mov    QWORD PTR [rbp-0x910],rcx
  7c29b9:	48 89 b5 e8 f6 ff ff 	mov    QWORD PTR [rbp-0x918],rsi
  7c29c0:	48 89 bd 00 f7 ff ff 	mov    QWORD PTR [rbp-0x900],rdi
  7c29c7:	48 3b bd 08 f7 ff ff 	cmp    rdi,QWORD PTR [rbp-0x8f8]
  7c29ce:	0f 82 c6 fa ff ff    	jb     7c249a <pre_step3d_mod_mp_pre_step3d_tile_+0x8e9a>
  7c29d4:	8b bd b0 f4 ff ff    	mov    edi,DWORD PTR [rbp-0xb50]
  7c29da:	44 8b 85 b8 f4 ff ff 	mov    r8d,DWORD PTR [rbp-0xb48]
  7c29e1:	4c 8b 8d b8 f6 ff ff 	mov    r9,QWORD PTR [rbp-0x948]
  7c29e8:	3b bd d0 f4 ff ff    	cmp    edi,DWORD PTR [rbp-0xb30]
  7c29ee:	0f 85 38 04 00 00    	jne    7c2e2c <pre_step3d_mod_mp_pre_step3d_tile_+0x982c>
  7c29f4:	48 83 bd b8 f3 ff ff 	cmp    QWORD PTR [rbp-0xc48],0x8
  7c29fb:	08 
  7c29fc:	0f 85 55 01 00 00    	jne    7c2b57 <pre_step3d_mod_mp_pre_step3d_tile_+0x9557>
  7c2a02:	48 83 bd c0 f3 ff ff 	cmp    QWORD PTR [rbp-0xc40],0x8
  7c2a09:	08 
  7c2a0a:	0f 85 47 01 00 00    	jne    7c2b57 <pre_step3d_mod_mp_pre_step3d_tile_+0x9557>
  7c2a10:	4c 8b ad 00 f6 ff ff 	mov    r13,QWORD PTR [rbp-0xa00]
  7c2a17:	45 33 e4             	xor    r12d,r12d
  7c2a1a:	4c 8b 9d 40 f5 ff ff 	mov    r11,QWORD PTR [rbp-0xac0]
  7c2a21:	48 83 bd 08 f7 ff ff 	cmp    QWORD PTR [rbp-0x8f8],0x0
  7c2a28:	00 
  7c2a29:	0f 8e fd 03 00 00    	jle    7c2e2c <pre_step3d_mod_mp_pre_step3d_tile_+0x982c>
  7c2a2f:	89 bd b0 f4 ff ff    	mov    DWORD PTR [rbp-0xb50],edi
  7c2a35:	44 89 85 b8 f4 ff ff 	mov    DWORD PTR [rbp-0xb48],r8d
  7c2a3c:	48 8b 95 a8 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x958]
  7c2a43:	48 8b 8d 30 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xad0]
  7c2a4a:	48 8b b5 58 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x8a8]
  7c2a51:	48 8b bd 28 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x8d8]
  7c2a58:	4c 8b 85 08 f7 ff ff 	mov    r8,QWORD PTR [rbp-0x8f8]
  7c2a5f:	4c 8b 95 b0 f6 ff ff 	mov    r10,QWORD PTR [rbp-0x950]
  7c2a66:	4d 3b ca             	cmp    r9,r10
  7c2a69:	0f 8c c4 00 00 00    	jl     7c2b33 <pre_step3d_mod_mp_pre_step3d_tile_+0x9533>
  7c2a6f:	48 83 fe 04          	cmp    rsi,0x4
  7c2a73:	0f 8c e7 6c 00 00    	jl     7c9760 <pre_step3d_mod_mp_pre_step3d_tile_+0x10160>
  7c2a79:	4c 89 8d b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],r9
  7c2a80:	48 89 d0             	mov    rax,rdx
  7c2a83:	4c 8b 8d 00 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xb00]
  7c2a8a:	45 33 ff             	xor    r15d,r15d
  7c2a8d:	4c 8b 95 f8 f4 ff ff 	mov    r10,QWORD PTR [rbp-0xb08]
  7c2a94:	4d 89 ee             	mov    r14,r13
  7c2a97:	c4 01 4d 59 0c fa    	vmulpd ymm9,ymm6,YMMWORD PTR [r10+r15*8]
  7c2a9d:	c4 01 35 59 14 f9    	vmulpd ymm10,ymm9,YMMWORD PTR [r9+r15*8]
  7c2aa3:	c4 01 2d 59 1c fb    	vmulpd ymm11,ymm10,YMMWORD PTR [r11+r15*8]
  7c2aa9:	49 83 c7 04          	add    r15,0x4
  7c2aad:	c4 41 25 58 66 08    	vaddpd ymm12,ymm11,YMMWORD PTR [r14+0x8]
  7c2ab3:	c4 41 7d 11 66 08    	vmovupd YMMWORD PTR [r14+0x8],ymm12
  7c2ab9:	49 83 c6 20          	add    r14,0x20
  7c2abd:	4c 3b fa             	cmp    r15,rdx
  7c2ac0:	72 d5                	jb     7c2a97 <pre_step3d_mod_mp_pre_step3d_tile_+0x9497>
  7c2ac2:	4c 8b 95 b0 f6 ff ff 	mov    r10,QWORD PTR [rbp-0x950]
  7c2ac9:	4c 8b 8d b8 f6 ff ff 	mov    r9,QWORD PTR [rbp-0x948]
  7c2ad0:	4c 8d 3c c5 00 00 00 	lea    r15,[rax*8+0x0]
  7c2ad7:	00 
  7c2ad8:	48 3b c6             	cmp    rax,rsi
  7c2adb:	73 56                	jae    7c2b33 <pre_step3d_mod_mp_pre_step3d_tile_+0x9533>
  7c2add:	4c 89 8d b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],r9
  7c2ae4:	4d 8d 74 c5 00       	lea    r14,[r13+rax*8+0x0]
  7c2ae9:	4c 8b 8d 00 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xb00]
  7c2af0:	4c 8b 95 f8 f4 ff ff 	mov    r10,QWORD PTR [rbp-0xb08]
  7c2af7:	c4 01 43 59 0c 17    	vmulsd xmm9,xmm7,QWORD PTR [r15+r10*1]
  7c2afd:	48 ff c0             	inc    rax
  7c2b00:	c4 01 33 59 14 0f    	vmulsd xmm10,xmm9,QWORD PTR [r15+r9*1]
  7c2b06:	c4 01 2b 59 1c 1f    	vmulsd xmm11,xmm10,QWORD PTR [r15+r11*1]
  7c2b0c:	49 83 c7 08          	add    r15,0x8
  7c2b10:	c4 41 23 58 66 08    	vaddsd xmm12,xmm11,QWORD PTR [r14+0x8]
  7c2b16:	c4 41 7b 11 66 08    	vmovsd QWORD PTR [r14+0x8],xmm12
  7c2b1c:	49 83 c6 08          	add    r14,0x8
  7c2b20:	48 3b c6             	cmp    rax,rsi
  7c2b23:	72 d2                	jb     7c2af7 <pre_step3d_mod_mp_pre_step3d_tile_+0x94f7>
  7c2b25:	4c 8b 95 b0 f6 ff ff 	mov    r10,QWORD PTR [rbp-0x950]
  7c2b2c:	4c 8b 8d b8 f6 ff ff 	mov    r9,QWORD PTR [rbp-0x948]
  7c2b33:	49 ff c4             	inc    r12
  7c2b36:	4c 03 ef             	add    r13,rdi
  7c2b39:	4c 03 d9             	add    r11,rcx
  7c2b3c:	4d 3b e0             	cmp    r12,r8
  7c2b3f:	0f 82 21 ff ff ff    	jb     7c2a66 <pre_step3d_mod_mp_pre_step3d_tile_+0x9466>
  7c2b45:	8b bd b0 f4 ff ff    	mov    edi,DWORD PTR [rbp-0xb50]
  7c2b4b:	44 8b 85 b8 f4 ff ff 	mov    r8d,DWORD PTR [rbp-0xb48]
  7c2b52:	e9 d5 02 00 00       	jmp    7c2e2c <pre_step3d_mod_mp_pre_step3d_tile_+0x982c>
  7c2b57:	33 c9                	xor    ecx,ecx
  7c2b59:	48 8b 85 00 f6 ff ff 	mov    rax,QWORD PTR [rbp-0xa00]
  7c2b60:	33 d2                	xor    edx,edx
  7c2b62:	48 83 bd 08 f7 ff ff 	cmp    QWORD PTR [rbp-0x8f8],0x0
  7c2b69:	00 
  7c2b6a:	0f 8e bc 02 00 00    	jle    7c2e2c <pre_step3d_mod_mp_pre_step3d_tile_+0x982c>
  7c2b70:	89 bd b0 f4 ff ff    	mov    DWORD PTR [rbp-0xb50],edi
  7c2b76:	44 89 85 b8 f4 ff ff 	mov    DWORD PTR [rbp-0xb48],r8d
  7c2b7d:	4c 89 8d b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],r9
  7c2b84:	4c 8b ad 58 f7 ff ff 	mov    r13,QWORD PTR [rbp-0x8a8]
  7c2b8b:	4c 8b b5 c0 f3 ff ff 	mov    r14,QWORD PTR [rbp-0xc40]
  7c2b92:	4c 8b a5 b8 f3 ff ff 	mov    r12,QWORD PTR [rbp-0xc48]
  7c2b99:	48 8b b5 b8 f6 ff ff 	mov    rsi,QWORD PTR [rbp-0x948]
  7c2ba0:	48 3b b5 b0 f6 ff ff 	cmp    rsi,QWORD PTR [rbp-0x950]
  7c2ba7:	0f 8c 4d 02 00 00    	jl     7c2dfa <pre_step3d_mod_mp_pre_step3d_tile_+0x97fa>
  7c2bad:	49 83 fd 04          	cmp    r13,0x4
  7c2bb1:	0f 8c cf 6b 00 00    	jl     7c9786 <pre_step3d_mod_mp_pre_step3d_tile_+0x10186>
  7c2bb7:	48 8d 70 08          	lea    rsi,[rax+0x8]
  7c2bbb:	48 83 e6 0f          	and    rsi,0xf
  7c2bbf:	85 f6                	test   esi,esi
  7c2bc1:	74 11                	je     7c2bd4 <pre_step3d_mod_mp_pre_step3d_tile_+0x95d4>
  7c2bc3:	f7 c6 07 00 00 00    	test   esi,0x7
  7c2bc9:	0f 85 b7 6b 00 00    	jne    7c9786 <pre_step3d_mod_mp_pre_step3d_tile_+0x10186>
  7c2bcf:	be 01 00 00 00       	mov    esi,0x1
  7c2bd4:	41 89 f2             	mov    r10d,esi
  7c2bd7:	49 8d 7a 04          	lea    rdi,[r10+0x4]
  7c2bdb:	4c 3b ef             	cmp    r13,rdi
  7c2bde:	0f 8c a2 6b 00 00    	jl     7c9786 <pre_step3d_mod_mp_pre_step3d_tile_+0x10186>
  7c2be4:	8b bd 28 f5 ff ff    	mov    edi,DWORD PTR [rbp-0xad8]
  7c2bea:	41 89 fb             	mov    r11d,edi
  7c2bed:	44 2b de             	sub    r11d,esi
  7c2bf0:	45 33 c0             	xor    r8d,r8d
  7c2bf3:	41 83 e3 03          	and    r11d,0x3
  7c2bf7:	45 33 c9             	xor    r9d,r9d
  7c2bfa:	4c 8b bd 40 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xac0]
  7c2c01:	41 f7 db             	neg    r11d
  7c2c04:	44 03 df             	add    r11d,edi
  7c2c07:	33 ff                	xor    edi,edi
  7c2c09:	4d 63 db             	movsxd r11,r11d
  7c2c0c:	4c 03 fa             	add    r15,rdx
  7c2c0f:	4c 89 bd 38 f5 ff ff 	mov    QWORD PTR [rbp-0xac8],r15
  7c2c16:	85 f6                	test   esi,esi
  7c2c18:	76 6b                	jbe    7c2c85 <pre_step3d_mod_mp_pre_step3d_tile_+0x9685>
  7c2c1a:	48 89 95 10 f5 ff ff 	mov    QWORD PTR [rbp-0xaf0],rdx
  7c2c21:	48 89 8d 18 f5 ff ff 	mov    QWORD PTR [rbp-0xae8],rcx
  7c2c28:	48 89 c2             	mov    rdx,rax
  7c2c2b:	48 89 f9             	mov    rcx,rdi
  7c2c2e:	4c 89 fe             	mov    rsi,r15
  7c2c31:	4c 8b ad f0 f4 ff ff 	mov    r13,QWORD PTR [rbp-0xb10]
  7c2c38:	4c 8b bd 30 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x8d0]
  7c2c3f:	c4 01 43 59 0c 39    	vmulsd xmm9,xmm7,QWORD PTR [r9+r15*1]
  7c2c45:	49 ff c0             	inc    r8
  7c2c48:	c4 21 33 59 14 2f    	vmulsd xmm10,xmm9,QWORD PTR [rdi+r13*1]
  7c2c4e:	4d 03 cc             	add    r9,r12
  7c2c51:	c5 2b 59 1c 31       	vmulsd xmm11,xmm10,QWORD PTR [rcx+rsi*1]
  7c2c56:	49 03 fe             	add    rdi,r14
  7c2c59:	48 83 c1 08          	add    rcx,0x8
  7c2c5d:	c5 23 58 62 08       	vaddsd xmm12,xmm11,QWORD PTR [rdx+0x8]
  7c2c62:	c5 7b 11 62 08       	vmovsd QWORD PTR [rdx+0x8],xmm12
  7c2c67:	48 83 c2 08          	add    rdx,0x8
  7c2c6b:	4d 3b c2             	cmp    r8,r10
  7c2c6e:	72 cf                	jb     7c2c3f <pre_step3d_mod_mp_pre_step3d_tile_+0x963f>
  7c2c70:	48 8b 95 10 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xaf0]
  7c2c77:	48 8b 8d 18 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xae8]
  7c2c7e:	4c 8b ad 58 f7 ff ff 	mov    r13,QWORD PTR [rbp-0x8a8]
  7c2c85:	48 8b b5 08 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xaf8]
  7c2c8c:	4d 89 f0             	mov    r8,r14
  7c2c8f:	4c 89 e7             	mov    rdi,r12
  7c2c92:	4e 8d 0c d0          	lea    r9,[rax+r10*8]
  7c2c96:	48 89 85 20 f5 ff ff 	mov    QWORD PTR [rbp-0xae0],rax
  7c2c9d:	48 89 95 10 f5 ff ff 	mov    QWORD PTR [rbp-0xaf0],rdx
  7c2ca4:	48 03 f2             	add    rsi,rdx
  7c2ca7:	48 89 8d 18 f5 ff ff 	mov    QWORD PTR [rbp-0xae8],rcx
  7c2cae:	4d 0f af c2          	imul   r8,r10
  7c2cb2:	49 0f af fa          	imul   rdi,r10
  7c2cb6:	48 8b 85 38 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xac8]
  7c2cbd:	48 8b 95 e0 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xb20]
  7c2cc4:	48 8b 8d e8 f4 ff ff 	mov    rcx,QWORD PTR [rbp-0xb18]
  7c2ccb:	4c 8b ad f0 f4 ff ff 	mov    r13,QWORD PTR [rbp-0xb10]
  7c2cd2:	4c 8b bd 30 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x8d0]
  7c2cd9:	4c 03 ff             	add    r15,rdi
  7c2cdc:	c4 41 7b 10 0f       	vmovsd xmm9,QWORD PTR [r15]
  7c2ce1:	c4 01 31 16 14 27    	vmovhpd xmm10,xmm9,QWORD PTR [r15+r12*1]
  7c2ce7:	4f 8d 7c 05 00       	lea    r15,[r13+r8*1+0x0]
  7c2cec:	c4 41 59 59 e2       	vmulpd xmm12,xmm4,xmm10
  7c2cf1:	c4 41 7b 10 1f       	vmovsd xmm11,QWORD PTR [r15]
  7c2cf6:	c4 01 21 16 2c 37    	vmovhpd xmm13,xmm11,QWORD PTR [r15+r14*1]
  7c2cfc:	4c 8d 3c 39          	lea    r15,[rcx+rdi*1]
  7c2d00:	c4 41 19 59 f5       	vmulpd xmm14,xmm12,xmm13
  7c2d05:	c4 41 7b 10 17       	vmovsd xmm10,QWORD PTR [r15]
  7c2d0a:	4a 8d 3c a7          	lea    rdi,[rdi+r12*4]
  7c2d0e:	c4 01 29 16 1c 27    	vmovhpd xmm11,xmm10,QWORD PTR [r15+r12*1]
  7c2d14:	4e 8d 3c 02          	lea    r15,[rdx+r8*1]
  7c2d18:	c4 21 09 59 3c d0    	vmulpd xmm15,xmm14,XMMWORD PTR [rax+r10*8]
  7c2d1e:	c4 41 59 59 eb       	vmulpd xmm13,xmm4,xmm11
  7c2d23:	c4 41 01 58 49 08    	vaddpd xmm9,xmm15,XMMWORD PTR [r9+0x8]
  7c2d29:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  7c2d2e:	4f 8d 04 b0          	lea    r8,[r8+r14*4]
  7c2d32:	c4 01 19 16 34 37    	vmovhpd xmm14,xmm12,QWORD PTR [r15+r14*1]
  7c2d38:	c4 41 11 59 fe       	vmulpd xmm15,xmm13,xmm14
  7c2d3d:	c4 41 79 11 49 08    	vmovupd XMMWORD PTR [r9+0x8],xmm9
  7c2d43:	c4 21 01 59 4c d6 10 	vmulpd xmm9,xmm15,XMMWORD PTR [rsi+r10*8+0x10]
  7c2d4a:	c4 41 31 58 51 18    	vaddpd xmm10,xmm9,XMMWORD PTR [r9+0x18]
  7c2d50:	49 83 c2 04          	add    r10,0x4
  7c2d54:	c4 41 79 11 51 18    	vmovupd XMMWORD PTR [r9+0x18],xmm10
  7c2d5a:	49 83 c1 20          	add    r9,0x20
  7c2d5e:	4d 3b d3             	cmp    r10,r11
  7c2d61:	0f 82 6b ff ff ff    	jb     7c2cd2 <pre_step3d_mod_mp_pre_step3d_tile_+0x96d2>
  7c2d67:	48 8b 85 20 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xae0]
  7c2d6e:	48 8b 95 10 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xaf0]
  7c2d75:	48 8b 8d 18 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xae8]
  7c2d7c:	4c 8b ad 58 f7 ff ff 	mov    r13,QWORD PTR [rbp-0x8a8]
  7c2d83:	4d 89 f0             	mov    r8,r14
  7c2d86:	4d 89 e2             	mov    r10,r12
  7c2d89:	4d 0f af c3          	imul   r8,r11
  7c2d8d:	4d 0f af d3          	imul   r10,r11
  7c2d91:	4e 8d 0c dd 00 00 00 	lea    r9,[r11*8+0x0]
  7c2d98:	00 
  7c2d99:	4d 3b dd             	cmp    r11,r13
  7c2d9c:	73 5c                	jae    7c2dfa <pre_step3d_mod_mp_pre_step3d_tile_+0x97fa>
  7c2d9e:	48 8b bd 40 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xac0]
  7c2da5:	4a 8d 34 d8          	lea    rsi,[rax+r11*8]
  7c2da9:	48 89 8d 18 f5 ff ff 	mov    QWORD PTR [rbp-0xae8],rcx
  7c2db0:	48 8b 8d f0 f4 ff ff 	mov    rcx,QWORD PTR [rbp-0xb10]
  7c2db7:	4c 8b bd 30 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x8d0]
  7c2dbe:	48 03 fa             	add    rdi,rdx
  7c2dc1:	c4 01 43 59 0c 3a    	vmulsd xmm9,xmm7,QWORD PTR [r10+r15*1]
  7c2dc7:	49 ff c3             	inc    r11
  7c2dca:	c4 41 33 59 14 08    	vmulsd xmm10,xmm9,QWORD PTR [r8+rcx*1]
  7c2dd0:	4d 03 d4             	add    r10,r12
  7c2dd3:	c4 41 2b 59 1c 39    	vmulsd xmm11,xmm10,QWORD PTR [r9+rdi*1]
  7c2dd9:	4d 03 c6             	add    r8,r14
  7c2ddc:	49 83 c1 08          	add    r9,0x8
  7c2de0:	c5 23 58 66 08       	vaddsd xmm12,xmm11,QWORD PTR [rsi+0x8]
  7c2de5:	c5 7b 11 66 08       	vmovsd QWORD PTR [rsi+0x8],xmm12
  7c2dea:	48 83 c6 08          	add    rsi,0x8
  7c2dee:	4d 3b dd             	cmp    r11,r13
  7c2df1:	72 ce                	jb     7c2dc1 <pre_step3d_mod_mp_pre_step3d_tile_+0x97c1>
  7c2df3:	48 8b 8d 18 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xae8]
  7c2dfa:	48 ff c1             	inc    rcx
  7c2dfd:	48 03 95 30 f5 ff ff 	add    rdx,QWORD PTR [rbp-0xad0]
  7c2e04:	48 03 85 28 f7 ff ff 	add    rax,QWORD PTR [rbp-0x8d8]
  7c2e0b:	48 3b 8d 08 f7 ff ff 	cmp    rcx,QWORD PTR [rbp-0x8f8]
  7c2e12:	0f 82 81 fd ff ff    	jb     7c2b99 <pre_step3d_mod_mp_pre_step3d_tile_+0x9599>
  7c2e18:	8b bd b0 f4 ff ff    	mov    edi,DWORD PTR [rbp-0xb50]
  7c2e1e:	44 8b 85 b8 f4 ff ff 	mov    r8d,DWORD PTR [rbp-0xb48]
  7c2e25:	4c 8b 8d b8 f6 ff ff 	mov    r9,QWORD PTR [rbp-0x948]
  7c2e2c:	48 83 bd c8 f4 ff ff 	cmp    QWORD PTR [rbp-0xb38],0x8
  7c2e33:	08 
  7c2e34:	0f 85 ef 00 00 00    	jne    7c2f29 <pre_step3d_mod_mp_pre_step3d_tile_+0x9929>
  7c2e3a:	48 83 bd c0 f4 ff ff 	cmp    QWORD PTR [rbp-0xb40],0x8
  7c2e41:	08 
  7c2e42:	0f 85 e1 00 00 00    	jne    7c2f29 <pre_step3d_mod_mp_pre_step3d_tile_+0x9929>
  7c2e48:	4c 3b 8d b0 f6 ff ff 	cmp    r9,QWORD PTR [rbp-0x950]
  7c2e4f:	0f 8c 9e 02 00 00    	jl     7c30f3 <pre_step3d_mod_mp_pre_step3d_tile_+0x9af3>
  7c2e55:	48 83 bd 58 f7 ff ff 	cmp    QWORD PTR [rbp-0x8a8],0x4
  7c2e5c:	04 
  7c2e5d:	0f 8c 04 69 00 00    	jl     7c9767 <pre_step3d_mod_mp_pre_step3d_tile_+0x10167>
  7c2e63:	49 63 d0             	movsxd rdx,r8d
  7c2e66:	33 f6                	xor    esi,esi
  7c2e68:	48 8b 8d d8 f3 ff ff 	mov    rcx,QWORD PTR [rbp-0xc28]
  7c2e6f:	48 0f af ca          	imul   rcx,rdx
  7c2e73:	48 0f af 95 e0 f3 ff 	imul   rdx,QWORD PTR [rbp-0xc20]
  7c2e7a:	ff 
  7c2e7b:	48 8b 85 a8 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x958]
  7c2e82:	49 89 c2             	mov    r10,rax
  7c2e85:	48 03 8d 08 f4 ff ff 	add    rcx,QWORD PTR [rbp-0xbf8]
  7c2e8c:	48 03 95 f0 f3 ff ff 	add    rdx,QWORD PTR [rbp-0xc10]
  7c2e93:	4c 8b 9d 10 f4 ff ff 	mov    r11,QWORD PTR [rbp-0xbf0]
  7c2e9a:	4c 8b a5 50 f6 ff ff 	mov    r12,QWORD PTR [rbp-0x9b0]
  7c2ea1:	c5 4d 59 0c f2       	vmulpd ymm9,ymm6,YMMWORD PTR [rdx+rsi*8]
  7c2ea6:	c5 4d 59 14 f1       	vmulpd ymm10,ymm6,YMMWORD PTR [rcx+rsi*8]
  7c2eab:	c4 41 7d 11 0c f4    	vmovupd YMMWORD PTR [r12+rsi*8],ymm9
  7c2eb1:	c4 41 7d 11 14 f3    	vmovupd YMMWORD PTR [r11+rsi*8],ymm10
  7c2eb7:	48 83 c6 04          	add    rsi,0x4
  7c2ebb:	49 3b f2             	cmp    rsi,r10
  7c2ebe:	72 e1                	jb     7c2ea1 <pre_step3d_mod_mp_pre_step3d_tile_+0x98a1>
  7c2ec0:	48 3b 85 58 f7 ff ff 	cmp    rax,QWORD PTR [rbp-0x8a8]
  7c2ec7:	0f 83 26 02 00 00    	jae    7c30f3 <pre_step3d_mod_mp_pre_step3d_tile_+0x9af3>
  7c2ecd:	49 63 d0             	movsxd rdx,r8d
  7c2ed0:	48 8b 8d d8 f3 ff ff 	mov    rcx,QWORD PTR [rbp-0xc28]
  7c2ed7:	48 0f af ca          	imul   rcx,rdx
  7c2edb:	48 0f af 95 e0 f3 ff 	imul   rdx,QWORD PTR [rbp-0xc20]
  7c2ee2:	ff 
  7c2ee3:	48 03 8d 08 f4 ff ff 	add    rcx,QWORD PTR [rbp-0xbf8]
  7c2eea:	48 03 95 f0 f3 ff ff 	add    rdx,QWORD PTR [rbp-0xc10]
  7c2ef1:	48 8b b5 58 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x8a8]
  7c2ef8:	4c 8b 95 10 f4 ff ff 	mov    r10,QWORD PTR [rbp-0xbf0]
  7c2eff:	4c 8b 9d 50 f6 ff ff 	mov    r11,QWORD PTR [rbp-0x9b0]
  7c2f06:	c5 43 59 0c c2       	vmulsd xmm9,xmm7,QWORD PTR [rdx+rax*8]
  7c2f0b:	c5 43 59 14 c1       	vmulsd xmm10,xmm7,QWORD PTR [rcx+rax*8]
  7c2f10:	c4 41 7b 11 0c c3    	vmovsd QWORD PTR [r11+rax*8],xmm9
  7c2f16:	c4 41 7b 11 14 c2    	vmovsd QWORD PTR [r10+rax*8],xmm10
  7c2f1c:	48 ff c0             	inc    rax
  7c2f1f:	48 3b c6             	cmp    rax,rsi
  7c2f22:	72 e2                	jb     7c2f06 <pre_step3d_mod_mp_pre_step3d_tile_+0x9906>
  7c2f24:	e9 ca 01 00 00       	jmp    7c30f3 <pre_step3d_mod_mp_pre_step3d_tile_+0x9af3>
  7c2f29:	4c 3b 8d b0 f6 ff ff 	cmp    r9,QWORD PTR [rbp-0x950]
  7c2f30:	0f 8c bd 01 00 00    	jl     7c30f3 <pre_step3d_mod_mp_pre_step3d_tile_+0x9af3>
  7c2f36:	48 83 bd 58 f7 ff ff 	cmp    QWORD PTR [rbp-0x8a8],0x4
  7c2f3d:	04 
  7c2f3e:	0f 8c 3a 68 00 00    	jl     7c977e <pre_step3d_mod_mp_pre_step3d_tile_+0x1017e>
  7c2f44:	4d 63 d0             	movsxd r10,r8d
  7c2f47:	33 c9                	xor    ecx,ecx
  7c2f49:	48 8b b5 e0 f3 ff ff 	mov    rsi,QWORD PTR [rbp-0xc20]
  7c2f50:	45 33 db             	xor    r11d,r11d
  7c2f53:	49 0f af f2          	imul   rsi,r10
  7c2f57:	4c 0f af 95 d8 f3 ff 	imul   r10,QWORD PTR [rbp-0xc28]
  7c2f5e:	ff 
  7c2f5f:	48 8b 95 20 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xbe0]
  7c2f66:	48 8b 85 18 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xbe8]
  7c2f6d:	4c 8b ad a8 f6 ff ff 	mov    r13,QWORD PTR [rbp-0x958]
  7c2f74:	4c 89 ad 28 f4 ff ff 	mov    QWORD PTR [rbp-0xbd8],r13
  7c2f7b:	48 03 d6             	add    rdx,rsi
  7c2f7e:	89 bd b0 f4 ff ff    	mov    DWORD PTR [rbp-0xb50],edi
  7c2f84:	4e 8d 24 10          	lea    r12,[rax+r10*1]
  7c2f88:	44 89 85 b8 f4 ff ff 	mov    DWORD PTR [rbp-0xb48],r8d
  7c2f8f:	33 c0                	xor    eax,eax
  7c2f91:	4c 89 8d b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],r9
  7c2f98:	48 03 b5 f8 f3 ff ff 	add    rsi,QWORD PTR [rbp-0xc08]
  7c2f9f:	4c 03 95 00 f4 ff ff 	add    r10,QWORD PTR [rbp-0xc00]
  7c2fa6:	48 8b bd 10 f4 ff ff 	mov    rdi,QWORD PTR [rbp-0xbf0]
  7c2fad:	4c 8b 85 e8 f3 ff ff 	mov    r8,QWORD PTR [rbp-0xc18]
  7c2fb4:	4c 8b 8d 50 f6 ff ff 	mov    r9,QWORD PTR [rbp-0x9b0]
  7c2fbb:	4c 8b ad c0 f4 ff ff 	mov    r13,QWORD PTR [rbp-0xb40]
  7c2fc2:	4c 8b b5 c8 f4 ff ff 	mov    r14,QWORD PTR [rbp-0xb38]
  7c2fc9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  7c2fd0:	4e 8d 3c 1a          	lea    r15,[rdx+r11*1]
  7c2fd4:	c4 41 7b 10 0f       	vmovsd xmm9,QWORD PTR [r15]
  7c2fd9:	c4 01 31 16 14 37    	vmovhpd xmm10,xmm9,QWORD PTR [r15+r14*1]
  7c2fdf:	4d 8d 3c 04          	lea    r15,[r12+rax*1]
  7c2fe3:	c4 41 59 59 da       	vmulpd xmm11,xmm4,xmm10
  7c2fe8:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  7c2fed:	c4 01 19 16 2c 2f    	vmovhpd xmm13,xmm12,QWORD PTR [r15+r13*1]
  7c2ff3:	4e 8d 3c 1e          	lea    r15,[rsi+r11*1]
  7c2ff7:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  7c2ffc:	4f 8d 1c b3          	lea    r11,[r11+r14*4]
  7c3000:	c4 01 01 16 0c 37    	vmovhpd xmm9,xmm15,QWORD PTR [r15+r14*1]
  7c3006:	4d 8d 3c 02          	lea    r15,[r10+rax*1]
  7c300a:	c4 41 79 11 1c c9    	vmovupd XMMWORD PTR [r9+rcx*8],xmm11
  7c3010:	c4 41 59 59 f5       	vmulpd xmm14,xmm4,xmm13
  7c3015:	c4 41 59 59 d1       	vmulpd xmm10,xmm4,xmm9
  7c301a:	c5 79 11 34 cf       	vmovupd XMMWORD PTR [rdi+rcx*8],xmm14
  7c301f:	c4 41 79 11 54 c9 10 	vmovupd XMMWORD PTR [r9+rcx*8+0x10],xmm10
  7c3026:	c4 41 7b 10 1f       	vmovsd xmm11,QWORD PTR [r15]
  7c302b:	4a 8d 04 a8          	lea    rax,[rax+r13*4]
  7c302f:	c4 01 21 16 24 2f    	vmovhpd xmm12,xmm11,QWORD PTR [r15+r13*1]
  7c3035:	c4 41 59 59 ec       	vmulpd xmm13,xmm4,xmm12
  7c303a:	c4 41 79 11 6c c8 10 	vmovupd XMMWORD PTR [r8+rcx*8+0x10],xmm13
  7c3041:	48 83 c1 04          	add    rcx,0x4
  7c3045:	48 3b 8d a8 f6 ff ff 	cmp    rcx,QWORD PTR [rbp-0x958]
  7c304c:	72 82                	jb     7c2fd0 <pre_step3d_mod_mp_pre_step3d_tile_+0x99d0>
  7c304e:	4c 8b ad 28 f4 ff ff 	mov    r13,QWORD PTR [rbp-0xbd8]
  7c3055:	8b bd b0 f4 ff ff    	mov    edi,DWORD PTR [rbp-0xb50]
  7c305b:	44 8b 85 b8 f4 ff ff 	mov    r8d,DWORD PTR [rbp-0xb48]
  7c3062:	4c 8b 8d b8 f6 ff ff 	mov    r9,QWORD PTR [rbp-0x948]
  7c3069:	48 8b b5 c0 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb40]
  7c3070:	48 8b 8d c8 f4 ff ff 	mov    rcx,QWORD PTR [rbp-0xb38]
  7c3077:	49 0f af f5          	imul   rsi,r13
  7c307b:	49 0f af cd          	imul   rcx,r13
  7c307f:	4c 3b ad 58 f7 ff ff 	cmp    r13,QWORD PTR [rbp-0x8a8]
  7c3086:	73 6b                	jae    7c30f3 <pre_step3d_mod_mp_pre_step3d_tile_+0x9af3>
  7c3088:	49 63 c0             	movsxd rax,r8d
  7c308b:	48 8b 95 e0 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xc20]
  7c3092:	48 0f af d0          	imul   rdx,rax
  7c3096:	48 0f af 85 d8 f3 ff 	imul   rax,QWORD PTR [rbp-0xc28]
  7c309d:	ff 
  7c309e:	48 03 95 20 f4 ff ff 	add    rdx,QWORD PTR [rbp-0xbe0]
  7c30a5:	48 03 85 18 f4 ff ff 	add    rax,QWORD PTR [rbp-0xbe8]
  7c30ac:	4c 8b 95 58 f7 ff ff 	mov    r10,QWORD PTR [rbp-0x8a8]
  7c30b3:	4c 8b 9d 10 f4 ff ff 	mov    r11,QWORD PTR [rbp-0xbf0]
  7c30ba:	4c 8b a5 50 f6 ff ff 	mov    r12,QWORD PTR [rbp-0x9b0]
  7c30c1:	4c 8b b5 c0 f4 ff ff 	mov    r14,QWORD PTR [rbp-0xb40]
  7c30c8:	4c 8b bd c8 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb38]
  7c30cf:	c5 43 59 0c 11       	vmulsd xmm9,xmm7,QWORD PTR [rcx+rdx*1]
  7c30d4:	49 03 cf             	add    rcx,r15
  7c30d7:	c5 43 59 14 06       	vmulsd xmm10,xmm7,QWORD PTR [rsi+rax*1]
  7c30dc:	c4 01 7b 11 0c ec    	vmovsd QWORD PTR [r12+r13*8],xmm9
  7c30e2:	49 03 f6             	add    rsi,r14
  7c30e5:	c4 01 7b 11 14 eb    	vmovsd QWORD PTR [r11+r13*8],xmm10
  7c30eb:	49 ff c5             	inc    r13
  7c30ee:	4d 3b ea             	cmp    r13,r10
  7c30f1:	72 dc                	jb     7c30cf <pre_step3d_mod_mp_pre_step3d_tile_+0x9acf>
  7c30f3:	48 83 bd 40 f7 ff ff 	cmp    QWORD PTR [rbp-0x8c0],0x8
  7c30fa:	08 
  7c30fb:	0f 85 69 01 00 00    	jne    7c326a <pre_step3d_mod_mp_pre_step3d_tile_+0x9c6a>
  7c3101:	48 83 bd 50 f7 ff ff 	cmp    QWORD PTR [rbp-0x8b0],0x8
  7c3108:	08 
  7c3109:	0f 85 5b 01 00 00    	jne    7c326a <pre_step3d_mod_mp_pre_step3d_tile_+0x9c6a>
  7c310f:	33 d2                	xor    edx,edx
  7c3111:	45 33 d2             	xor    r10d,r10d
  7c3114:	48 8b 8d c8 f1 ff ff 	mov    rcx,QWORD PTR [rbp-0xe38]
  7c311b:	33 f6                	xor    esi,esi
  7c311d:	48 83 bd 18 f7 ff ff 	cmp    QWORD PTR [rbp-0x8e8],0x0
  7c3124:	00 
  7c3125:	0f 8e 3f 04 00 00    	jle    7c356a <pre_step3d_mod_mp_pre_step3d_tile_+0x9f6a>
  7c312b:	4d 63 c0             	movsxd r8,r8d
  7c312e:	4c 0f af 85 30 f4 ff 	imul   r8,QWORD PTR [rbp-0xbd0]
  7c3135:	ff 
  7c3136:	48 8b 85 88 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb78]
  7c313d:	4c 8b b5 00 f6 ff ff 	mov    r14,QWORD PTR [rbp-0xa00]
  7c3144:	4c 8b bd 58 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x8a8]
  7c314b:	89 bd b0 f4 ff ff    	mov    DWORD PTR [rbp-0xb50],edi
  7c3151:	49 03 c0             	add    rax,r8
  7c3154:	4c 03 85 60 f4 ff ff 	add    r8,QWORD PTR [rbp-0xba0]
  7c315b:	4c 89 85 88 f5 ff ff 	mov    QWORD PTR [rbp-0xa78],r8
  7c3162:	4c 89 8d b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],r9
  7c3169:	48 8b bd b8 f6 ff ff 	mov    rdi,QWORD PTR [rbp-0x948]
  7c3170:	48 3b bd b0 f6 ff ff 	cmp    rdi,QWORD PTR [rbp-0x950]
  7c3177:	0f 8c b6 00 00 00    	jl     7c3233 <pre_step3d_mod_mp_pre_step3d_tile_+0x9c33>
  7c317d:	49 83 ff 04          	cmp    r15,0x4
  7c3181:	0f 8c e7 65 00 00    	jl     7c976e <pre_step3d_mod_mp_pre_step3d_tile_+0x1016e>
  7c3187:	4c 8b 85 50 f6 ff ff 	mov    r8,QWORD PTR [rbp-0x9b0]
  7c318e:	45 33 e4             	xor    r12d,r12d
  7c3191:	48 8b bd 88 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xa78]
  7c3198:	4f 8d 0c 16          	lea    r9,[r14+r10*1]
  7c319c:	4c 8b ad a8 f6 ff ff 	mov    r13,QWORD PTR [rbp-0x958]
  7c31a3:	4d 89 ef             	mov    r15,r13
  7c31a6:	4f 8d 1c 10          	lea    r11,[r8+r10*1]
  7c31aa:	4c 8d 04 30          	lea    r8,[rax+rsi*1]
  7c31ae:	48 03 fe             	add    rdi,rsi
  7c31b1:	c4 21 7d 10 0c e1    	vmovupd ymm9,YMMWORD PTR [rcx+r12*8]
  7c31b7:	c4 01 7d 10 54 e1 08 	vmovupd ymm10,YMMWORD PTR [r9+r12*8+0x8]
  7c31be:	c4 21 35 59 1c e7    	vmulpd ymm11,ymm9,YMMWORD PTR [rdi+r12*8]
  7c31c4:	c4 01 2d 5c 24 e3    	vsubpd ymm12,ymm10,YMMWORD PTR [r11+r12*8]
  7c31ca:	c4 41 25 58 ec       	vaddpd ymm13,ymm11,ymm12
  7c31cf:	c4 01 7d 11 2c e0    	vmovupd YMMWORD PTR [r8+r12*8],ymm13
  7c31d5:	49 83 c4 04          	add    r12,0x4
  7c31d9:	4d 3b e7             	cmp    r12,r15
  7c31dc:	72 d3                	jb     7c31b1 <pre_step3d_mod_mp_pre_step3d_tile_+0x9bb1>
  7c31de:	4c 8b bd 58 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x8a8]
  7c31e5:	4d 3b ef             	cmp    r13,r15
  7c31e8:	73 49                	jae    7c3233 <pre_step3d_mod_mp_pre_step3d_tile_+0x9c33>
  7c31ea:	4c 8b 85 50 f6 ff ff 	mov    r8,QWORD PTR [rbp-0x9b0]
  7c31f1:	4f 8d 0c 16          	lea    r9,[r14+r10*1]
  7c31f5:	48 8b bd 88 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xa78]
  7c31fc:	4f 8d 1c 10          	lea    r11,[r8+r10*1]
  7c3200:	4c 8d 04 30          	lea    r8,[rax+rsi*1]
  7c3204:	48 03 fe             	add    rdi,rsi
  7c3207:	c4 21 7b 10 0c e9    	vmovsd xmm9,QWORD PTR [rcx+r13*8]
  7c320d:	c4 01 7b 10 54 e9 08 	vmovsd xmm10,QWORD PTR [r9+r13*8+0x8]
  7c3214:	c4 21 33 59 1c ef    	vmulsd xmm11,xmm9,QWORD PTR [rdi+r13*8]
  7c321a:	c4 01 2b 5c 24 eb    	vsubsd xmm12,xmm10,QWORD PTR [r11+r13*8]
  7c3220:	c4 41 23 58 ec       	vaddsd xmm13,xmm11,xmm12
  7c3225:	c4 01 7b 11 2c e8    	vmovsd QWORD PTR [r8+r13*8],xmm13
  7c322b:	49 ff c5             	inc    r13
  7c322e:	4d 3b ef             	cmp    r13,r15
  7c3231:	72 d4                	jb     7c3207 <pre_step3d_mod_mp_pre_step3d_tile_+0x9c07>
  7c3233:	48 ff c2             	inc    rdx
  7c3236:	4c 03 95 28 f7 ff ff 	add    r10,QWORD PTR [rbp-0x8d8]
  7c323d:	48 03 8d d8 f6 ff ff 	add    rcx,QWORD PTR [rbp-0x928]
  7c3244:	48 03 b5 d0 f6 ff ff 	add    rsi,QWORD PTR [rbp-0x930]
  7c324b:	48 3b 95 18 f7 ff ff 	cmp    rdx,QWORD PTR [rbp-0x8e8]
  7c3252:	0f 82 11 ff ff ff    	jb     7c3169 <pre_step3d_mod_mp_pre_step3d_tile_+0x9b69>
  7c3258:	8b bd b0 f4 ff ff    	mov    edi,DWORD PTR [rbp-0xb50]
  7c325e:	4c 8b 8d b8 f6 ff ff 	mov    r9,QWORD PTR [rbp-0x948]
  7c3265:	e9 00 03 00 00       	jmp    7c356a <pre_step3d_mod_mp_pre_step3d_tile_+0x9f6a>
  7c326a:	48 83 bd 18 f7 ff ff 	cmp    QWORD PTR [rbp-0x8e8],0x0
  7c3271:	00 
  7c3272:	0f 8e f2 02 00 00    	jle    7c356a <pre_step3d_mod_mp_pre_step3d_tile_+0x9f6a>
  7c3278:	48 83 bd d0 f6 ff ff 	cmp    QWORD PTR [rbp-0x930],0x0
  7c327f:	00 
  7c3280:	0f 84 f0 64 00 00    	je     7c9776 <pre_step3d_mod_mp_pre_step3d_tile_+0x10176>
  7c3286:	48 83 bd 18 f7 ff ff 	cmp    QWORD PTR [rbp-0x8e8],0x2
  7c328d:	02 
  7c328e:	0f 8c e2 64 00 00    	jl     7c9776 <pre_step3d_mod_mp_pre_step3d_tile_+0x10176>
  7c3294:	4d 63 d8             	movsxd r11,r8d
  7c3297:	33 d2                	xor    edx,edx
  7c3299:	4c 0f af 9d 30 f4 ff 	imul   r11,QWORD PTR [rbp-0xbd0]
  7c32a0:	ff 
  7c32a1:	48 8b 85 68 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb98]
  7c32a8:	33 c9                	xor    ecx,ecx
  7c32aa:	4c 8b 95 10 f7 ff ff 	mov    r10,QWORD PTR [rbp-0x8f0]
  7c32b1:	33 f6                	xor    esi,esi
  7c32b3:	4c 89 8d b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],r9
  7c32ba:	4c 89 95 98 f6 ff ff 	mov    QWORD PTR [rbp-0x968],r10
  7c32c1:	4e 8d 24 18          	lea    r12,[rax+r11*1]
  7c32c5:	4c 03 9d 40 f4 ff ff 	add    r11,QWORD PTR [rbp-0xbc0]
  7c32cc:	33 c0                	xor    eax,eax
  7c32ce:	4c 89 9d 98 f5 ff ff 	mov    QWORD PTR [rbp-0xa68],r11
  7c32d5:	4c 89 a5 90 f5 ff ff 	mov    QWORD PTR [rbp-0xa70],r12
  7c32dc:	89 bd b0 f4 ff ff    	mov    DWORD PTR [rbp-0xb50],edi
  7c32e2:	44 89 85 b8 f4 ff ff 	mov    DWORD PTR [rbp-0xb48],r8d
  7c32e9:	4c 8b 8d d0 f6 ff ff 	mov    r9,QWORD PTR [rbp-0x930]
  7c32f0:	4c 8b 9d d8 f6 ff ff 	mov    r11,QWORD PTR [rbp-0x928]
  7c32f7:	45 33 ed             	xor    r13d,r13d
  7c32fa:	48 8b bd b8 f6 ff ff 	mov    rdi,QWORD PTR [rbp-0x948]
  7c3301:	45 33 ff             	xor    r15d,r15d
  7c3304:	45 33 c0             	xor    r8d,r8d
  7c3307:	48 3b bd b0 f6 ff ff 	cmp    rdi,QWORD PTR [rbp-0x950]
  7c330e:	0f 8c d5 00 00 00    	jl     7c33e9 <pre_step3d_mod_mp_pre_step3d_tile_+0x9de9>
  7c3314:	48 8b bd 50 f6 ff ff 	mov    rdi,QWORD PTR [rbp-0x9b0]
  7c331b:	4c 8b a5 18 f6 ff ff 	mov    r12,QWORD PTR [rbp-0x9e8]
  7c3322:	4c 8b 95 90 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xa70]
  7c3329:	4c 8b b5 98 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xa68]
  7c3330:	48 03 f9             	add    rdi,rcx
  7c3333:	48 89 85 90 f6 ff ff 	mov    QWORD PTR [rbp-0x970],rax
  7c333a:	4c 03 e6             	add    r12,rsi
  7c333d:	48 89 95 80 f6 ff ff 	mov    QWORD PTR [rbp-0x980],rdx
  7c3344:	4c 03 d0             	add    r10,rax
  7c3347:	48 89 b5 88 f6 ff ff 	mov    QWORD PTR [rbp-0x978],rsi
  7c334e:	4c 03 f0             	add    r14,rax
  7c3351:	48 8b 85 00 f6 ff ff 	mov    rax,QWORD PTR [rbp-0xa00]
  7c3358:	48 8b 95 58 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x9a8]
  7c335f:	90                   	nop
  7c3360:	4b 8d 34 3c          	lea    rsi,[r12+r15*1]
  7c3364:	4c 03 bd 40 f7 ff ff 	add    r15,QWORD PTR [rbp-0x8c0]
  7c336b:	c5 7b 10 0e          	vmovsd xmm9,QWORD PTR [rsi]
  7c336f:	c4 21 31 16 1c 1e    	vmovhpd xmm11,xmm9,QWORD PTR [rsi+r11*1]
  7c3375:	4b 8d 34 02          	lea    rsi,[r10+r8*1]
  7c3379:	c5 7b 10 16          	vmovsd xmm10,QWORD PTR [rsi]
  7c337d:	c4 21 29 16 24 0e    	vmovhpd xmm12,xmm10,QWORD PTR [rsi+r9*1]
  7c3383:	48 8d 74 08 08       	lea    rsi,[rax+rcx*1+0x8]
  7c3388:	c4 41 21 59 cc       	vmulpd xmm9,xmm11,xmm12
  7c338d:	4a 8d 34 ee          	lea    rsi,[rsi+r13*8]
  7c3391:	c5 7b 10 2e          	vmovsd xmm13,QWORD PTR [rsi]
  7c3395:	c5 11 16 7c d6 08    	vmovhpd xmm15,xmm13,QWORD PTR [rsi+rdx*8+0x8]
  7c339b:	4a 8d 34 ef          	lea    rsi,[rdi+r13*8]
  7c339f:	c5 7b 10 36          	vmovsd xmm14,QWORD PTR [rsi]
  7c33a3:	49 ff c5             	inc    r13
  7c33a6:	c5 09 16 6c d6 08    	vmovhpd xmm13,xmm14,QWORD PTR [rsi+rdx*8+0x8]
  7c33ac:	4b 8d 34 30          	lea    rsi,[r8+r14*1]
  7c33b0:	c4 41 01 5c d5       	vsubpd xmm10,xmm15,xmm13
  7c33b5:	c4 41 31 58 da       	vaddpd xmm11,xmm9,xmm10
  7c33ba:	4c 03 85 50 f7 ff ff 	add    r8,QWORD PTR [rbp-0x8b0]
  7c33c1:	c5 7b 11 1e          	vmovsd QWORD PTR [rsi],xmm11
  7c33c5:	c4 41 79 17 1c 31    	vmovhpd QWORD PTR [r9+rsi*1],xmm11
  7c33cb:	4c 3b ad 58 f7 ff ff 	cmp    r13,QWORD PTR [rbp-0x8a8]
  7c33d2:	72 8c                	jb     7c3360 <pre_step3d_mod_mp_pre_step3d_tile_+0x9d60>
  7c33d4:	48 8b 85 90 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x970]
  7c33db:	48 8b b5 88 f6 ff ff 	mov    rsi,QWORD PTR [rbp-0x978]
  7c33e2:	48 8b 95 80 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x980]
  7c33e9:	48 8b bd 28 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x8d8]
  7c33f0:	48 83 c2 02          	add    rdx,0x2
  7c33f4:	4a 8d 34 5e          	lea    rsi,[rsi+r11*2]
  7c33f8:	4a 8d 04 48          	lea    rax,[rax+r9*2]
  7c33fc:	48 8d 0c 79          	lea    rcx,[rcx+rdi*2]
  7c3400:	48 3b 95 10 f7 ff ff 	cmp    rdx,QWORD PTR [rbp-0x8f0]
  7c3407:	0f 82 ea fe ff ff    	jb     7c32f7 <pre_step3d_mod_mp_pre_step3d_tile_+0x9cf7>
  7c340d:	4c 8b 95 98 f6 ff ff 	mov    r10,QWORD PTR [rbp-0x968]
  7c3414:	8b bd b0 f4 ff ff    	mov    edi,DWORD PTR [rbp-0xb50]
  7c341a:	44 8b 85 b8 f4 ff ff 	mov    r8d,DWORD PTR [rbp-0xb48]
  7c3421:	4c 8b 8d b8 f6 ff ff 	mov    r9,QWORD PTR [rbp-0x948]
  7c3428:	48 8b 8d d0 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x930]
  7c342f:	48 8b 85 d8 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x928]
  7c3436:	48 8b 95 28 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x8d8]
  7c343d:	49 0f af ca          	imul   rcx,r10
  7c3441:	49 0f af c2          	imul   rax,r10
  7c3445:	49 0f af d2          	imul   rdx,r10
  7c3449:	4c 3b 95 18 f7 ff ff 	cmp    r10,QWORD PTR [rbp-0x8e8]
  7c3450:	0f 83 14 01 00 00    	jae    7c356a <pre_step3d_mod_mp_pre_step3d_tile_+0x9f6a>
  7c3456:	4d 63 c0             	movsxd r8,r8d
  7c3459:	4c 0f af 85 30 f4 ff 	imul   r8,QWORD PTR [rbp-0xbd0]
  7c3460:	ff 
  7c3461:	48 8b b5 68 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb98]
  7c3468:	89 bd b0 f4 ff ff    	mov    DWORD PTR [rbp-0xb50],edi
  7c346e:	49 03 f0             	add    rsi,r8
  7c3471:	4c 03 85 40 f4 ff ff 	add    r8,QWORD PTR [rbp-0xbc0]
  7c3478:	4c 89 85 a0 f5 ff ff 	mov    QWORD PTR [rbp-0xa60],r8
  7c347f:	48 89 b5 a8 f5 ff ff 	mov    QWORD PTR [rbp-0xa58],rsi
  7c3486:	45 33 f6             	xor    r14d,r14d
  7c3489:	45 33 ff             	xor    r15d,r15d
  7c348c:	45 33 db             	xor    r11d,r11d
  7c348f:	4c 3b 8d b0 f6 ff ff 	cmp    r9,QWORD PTR [rbp-0x950]
  7c3496:	0f 8c a3 00 00 00    	jl     7c353f <pre_step3d_mod_mp_pre_step3d_tile_+0x9f3f>
  7c349c:	4c 8b 85 50 f6 ff ff 	mov    r8,QWORD PTR [rbp-0x9b0]
  7c34a3:	48 8b bd 00 f6 ff ff 	mov    rdi,QWORD PTR [rbp-0xa00]
  7c34aa:	48 8b b5 18 f6 ff ff 	mov    rsi,QWORD PTR [rbp-0x9e8]
  7c34b1:	4c 8b a5 a0 f5 ff ff 	mov    r12,QWORD PTR [rbp-0xa60]
  7c34b8:	4c 03 c2             	add    r8,rdx
  7c34bb:	4c 8b ad a8 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xa58]
  7c34c2:	48 03 fa             	add    rdi,rdx
  7c34c5:	48 89 8d a0 f6 ff ff 	mov    QWORD PTR [rbp-0x960],rcx
  7c34cc:	48 03 f0             	add    rsi,rax
  7c34cf:	4c 89 95 98 f6 ff ff 	mov    QWORD PTR [rbp-0x968],r10
  7c34d6:	4c 03 e1             	add    r12,rcx
  7c34d9:	4c 89 8d b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],r9
  7c34e0:	4c 03 e9             	add    r13,rcx
  7c34e3:	48 8b 8d 58 f7 ff ff 	mov    rcx,QWORD PTR [rbp-0x8a8]
  7c34ea:	4c 8b 8d 50 f7 ff ff 	mov    r9,QWORD PTR [rbp-0x8b0]
  7c34f1:	4c 8b 95 40 f7 ff ff 	mov    r10,QWORD PTR [rbp-0x8c0]
  7c34f8:	c4 41 7b 10 0c 37    	vmovsd xmm9,QWORD PTR [r15+rsi*1]
  7c34fe:	4d 03 fa             	add    r15,r10
  7c3501:	c4 21 7b 10 54 f7 08 	vmovsd xmm10,QWORD PTR [rdi+r14*8+0x8]
  7c3508:	c4 01 33 59 1c 2b    	vmulsd xmm11,xmm9,QWORD PTR [r11+r13*1]
  7c350e:	c4 01 2b 5c 24 f0    	vsubsd xmm12,xmm10,QWORD PTR [r8+r14*8]
  7c3514:	49 ff c6             	inc    r14
  7c3517:	c4 41 23 58 ec       	vaddsd xmm13,xmm11,xmm12
  7c351c:	c4 01 7b 11 2c 23    	vmovsd QWORD PTR [r11+r12*1],xmm13
  7c3522:	4d 03 d9             	add    r11,r9
  7c3525:	4c 3b f1             	cmp    r14,rcx
  7c3528:	72 ce                	jb     7c34f8 <pre_step3d_mod_mp_pre_step3d_tile_+0x9ef8>
  7c352a:	48 8b 8d a0 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x960]
  7c3531:	4c 8b 95 98 f6 ff ff 	mov    r10,QWORD PTR [rbp-0x968]
  7c3538:	4c 8b 8d b8 f6 ff ff 	mov    r9,QWORD PTR [rbp-0x948]
  7c353f:	49 ff c2             	inc    r10
  7c3542:	48 03 95 28 f7 ff ff 	add    rdx,QWORD PTR [rbp-0x8d8]
  7c3549:	48 03 85 d8 f6 ff ff 	add    rax,QWORD PTR [rbp-0x928]
  7c3550:	48 03 8d d0 f6 ff ff 	add    rcx,QWORD PTR [rbp-0x930]
  7c3557:	4c 3b 95 18 f7 ff ff 	cmp    r10,QWORD PTR [rbp-0x8e8]
  7c355e:	0f 82 22 ff ff ff    	jb     7c3486 <pre_step3d_mod_mp_pre_step3d_tile_+0x9e86>
  7c3564:	8b bd b0 f4 ff ff    	mov    edi,DWORD PTR [rbp-0xb50]
  7c356a:	41 89 f8             	mov    r8d,edi
  7c356d:	3b bd d8 f4 ff ff    	cmp    edi,DWORD PTR [rbp-0xb28]
  7c3573:	0f 82 25 ec ff ff    	jb     7c219e <pre_step3d_mod_mp_pre_step3d_tile_+0x8b9e>
  7c3579:	44 8b ad d8 f4 ff ff 	mov    r13d,DWORD PTR [rbp-0xb28]
  7c3580:	48 8b bd a0 f3 ff ff 	mov    rdi,QWORD PTR [rbp-0xc60]
  7c3587:	48 ff c7             	inc    rdi
  7c358a:	48 3b bd b0 f3 ff ff 	cmp    rdi,QWORD PTR [rbp-0xc50]
  7c3591:	0f 82 70 e2 ff ff    	jb     7c1807 <pre_step3d_mod_mp_pre_step3d_tile_+0x8207>
  7c3597:	bf bc 73 ab 00       	mov    edi,0xab73bc
  7c359c:	8b b5 a8 f3 ff ff    	mov    esi,DWORD PTR [rbp-0xc58]
  7c35a2:	c5 f8 77             	vzeroupper 
  7c35a5:	e8 f6 a6 c4 ff       	call   40dca0 <__kmpc_for_static_fini@plt>
  7c35aa:	48 8b 95 98 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xc68]
  7c35b1:	48 8b 85 90 f3 ff ff 	mov    rax,QWORD PTR [rbp-0xc70]
  7c35b8:	48 83 c0 1f          	add    rax,0x1f
  7c35bc:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7c35c0:	48 03 e0             	add    rsp,rax
  7c35c3:	4c 8b bd 28 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x9d8]
  7c35ca:	4c 8b b5 30 f6 ff ff 	mov    r14,QWORD PTR [rbp-0x9d0]
  7c35d1:	4c 8b ad 38 f6 ff ff 	mov    r13,QWORD PTR [rbp-0x9c8]
  7c35d8:	4c 8b a5 40 f6 ff ff 	mov    r12,QWORD PTR [rbp-0x9c0]
  7c35df:	c9                   	leave  
  7c35e0:	48 89 dc             	mov    rsp,rbx
  7c35e3:	5b                   	pop    rbx
  7c35e4:	c3                   	ret    
  7c35e5:	53                   	push   rbx
  7c35e6:	48 89 e3             	mov    rbx,rsp
  7c35e9:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
  7c35ed:	55                   	push   rbp
  7c35ee:	55                   	push   rbp
  7c35ef:	48 8b 6b 08          	mov    rbp,QWORD PTR [rbx+0x8]
  7c35f3:	48 89 6c 24 08       	mov    QWORD PTR [rsp+0x8],rbp
  7c35f8:	48 89 e5             	mov    rbp,rsp
  7c35fb:	48 81 ec 70 0e 00 00 	sub    rsp,0xe70
  7c3602:	4c 89 a5 40 f6 ff ff 	mov    QWORD PTR [rbp-0x9c0],r12
  7c3609:	4c 8b 63 48          	mov    r12,QWORD PTR [rbx+0x48]
  7c360d:	48 8b 43 18          	mov    rax,QWORD PTR [rbx+0x18]
  7c3611:	4c 89 ad 38 f6 ff ff 	mov    QWORD PTR [rbp-0x9c8],r13
  7c3618:	4c 8b 6b 40          	mov    r13,QWORD PTR [rbx+0x40]
  7c361c:	4d 8b 24 24          	mov    r12,QWORD PTR [r12]
  7c3620:	4c 89 bd 28 f6 ff ff 	mov    QWORD PTR [rbp-0x9d8],r15
  7c3627:	4c 8b 7b 38          	mov    r15,QWORD PTR [rbx+0x38]
  7c362b:	4c 89 a5 c0 f1 ff ff 	mov    QWORD PTR [rbp-0xe40],r12
  7c3632:	48 8b 73 10          	mov    rsi,QWORD PTR [rbx+0x10]
  7c3636:	4c 8b 20             	mov    r12,QWORD PTR [rax]
  7c3639:	4c 89 a5 b0 f1 ff ff 	mov    QWORD PTR [rbp-0xe50],r12
  7c3640:	44 8b 21             	mov    r12d,DWORD PTR [rcx]
  7c3643:	4d 8b 6d 00          	mov    r13,QWORD PTR [r13+0x0]
  7c3647:	48 8b 4b 58          	mov    rcx,QWORD PTR [rbx+0x58]
  7c364b:	4d 8b 3f             	mov    r15,QWORD PTR [r15]
  7c364e:	4c 89 ad b8 f1 ff ff 	mov    QWORD PTR [rbp-0xe48],r13
  7c3655:	44 8b 2e             	mov    r13d,DWORD PTR [rsi]
  7c3658:	4c 89 bd a0 f1 ff ff 	mov    QWORD PTR [rbp-0xe60],r15
  7c365f:	4c 89 b5 30 f6 ff ff 	mov    QWORD PTR [rbp-0x9d0],r14
  7c3666:	4d 63 39             	movsxd r15,DWORD PTR [r9]
  7c3669:	4c 8b 73 30          	mov    r14,QWORD PTR [rbx+0x30]
  7c366d:	4c 8b 53 28          	mov    r10,QWORD PTR [rbx+0x28]
  7c3671:	8b 3f                	mov    edi,DWORD PTR [rdi]
  7c3673:	44 89 ad b8 f3 ff ff 	mov    DWORD PTR [rbp-0xc48],r13d
  7c367a:	4d 8b 28             	mov    r13,QWORD PTR [r8]
  7c367d:	4c 89 bd e0 f9 ff ff 	mov    QWORD PTR [rbp-0x620],r15
  7c3684:	4c 63 01             	movsxd r8,DWORD PTR [rcx]
  7c3687:	44 8b 3a             	mov    r15d,DWORD PTR [rdx]
  7c368a:	48 8b 4b 70          	mov    rcx,QWORD PTR [rbx+0x70]
  7c368e:	48 8b 53 50          	mov    rdx,QWORD PTR [rbx+0x50]
  7c3692:	89 bd 18 f6 ff ff    	mov    DWORD PTR [rbp-0x9e8],edi
  7c3698:	4c 8b 5b 20          	mov    r11,QWORD PTR [rbx+0x20]
  7c369c:	48 8b 43 60          	mov    rax,QWORD PTR [rbx+0x60]
  7c36a0:	48 8b 7b 78          	mov    rdi,QWORD PTR [rbx+0x78]
  7c36a4:	4d 8b 36             	mov    r14,QWORD PTR [r14]
  7c36a7:	4d 8b 12             	mov    r10,QWORD PTR [r10]
  7c36aa:	4c 89 b5 a8 f1 ff ff 	mov    QWORD PTR [rbp-0xe58],r14
  7c36b1:	48 63 31             	movsxd rsi,DWORD PTR [rcx]
  7c36b4:	4c 89 95 c8 f1 ff ff 	mov    QWORD PTR [rbp-0xe38],r10
  7c36bb:	4c 8b 32             	mov    r14,QWORD PTR [rdx]
  7c36be:	4c 89 85 d0 f3 ff ff 	mov    QWORD PTR [rbp-0xc30],r8
  7c36c5:	4d 8b 1b             	mov    r11,QWORD PTR [r11]
  7c36c8:	48 63 10             	movsxd rdx,DWORD PTR [rax]
  7c36cb:	33 c0                	xor    eax,eax
  7c36cd:	4c 63 07             	movsxd r8,DWORD PTR [rdi]
  7c36d0:	48 8d bd e0 f1 ff ff 	lea    rdi,[rbp-0xe20]
  7c36d7:	48 8d 8b 88 00 00 00 	lea    rcx,[rbx+0x88]
  7c36de:	4c 8b 09             	mov    r9,QWORD PTR [rcx]
  7c36e1:	4c 8b 51 08          	mov    r10,QWORD PTR [rcx+0x8]
  7c36e5:	48 89 b5 c8 f3 ff ff 	mov    QWORD PTR [rbp-0xc38],rsi
  7c36ec:	48 8b 71 10          	mov    rsi,QWORD PTR [rcx+0x10]
  7c36f0:	4c 89 5f f0          	mov    QWORD PTR [rdi-0x10],r11
  7c36f4:	48 89 95 d8 f3 ff ff 	mov    QWORD PTR [rbp-0xc28],rdx
  7c36fb:	4c 89 85 c0 f3 ff ff 	mov    QWORD PTR [rbp-0xc40],r8
  7c3702:	4c 89 4f b0          	mov    QWORD PTR [rdi-0x50],r9
  7c3706:	4c 89 57 b8          	mov    QWORD PTR [rdi-0x48],r10
  7c370a:	e8 f1 34 cb ff       	call   476c00 <_f90_dope_vector_init>
  7c370f:	48 89 85 d0 f4 ff ff 	mov    QWORD PTR [rbp-0xb30],rax
  7c3716:	48 83 c0 1f          	add    rax,0x1f
  7c371a:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7c371e:	48 2b e0             	sub    rsp,rax
  7c3721:	48 89 e0             	mov    rax,rsp
  7c3724:	48 89 85 d8 f4 ff ff 	mov    QWORD PTR [rbp-0xb28],rax
  7c372b:	48 89 c2             	mov    rdx,rax
  7c372e:	48 8d bd 40 f2 ff ff 	lea    rdi,[rbp-0xdc0]
  7c3735:	33 c0                	xor    eax,eax
  7c3737:	48 8b b5 98 f1 ff ff 	mov    rsi,QWORD PTR [rbp-0xe68]
  7c373e:	48 89 57 a0          	mov    QWORD PTR [rdi-0x60],rdx
  7c3742:	e8 b9 34 cb ff       	call   476c00 <_f90_dope_vector_init>
  7c3747:	48 89 85 e0 f4 ff ff 	mov    QWORD PTR [rbp-0xb20],rax
  7c374e:	48 83 c0 1f          	add    rax,0x1f
  7c3752:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7c3756:	48 2b e0             	sub    rsp,rax
  7c3759:	48 89 e0             	mov    rax,rsp
  7c375c:	48 89 85 e8 f4 ff ff 	mov    QWORD PTR [rbp-0xb18],rax
  7c3763:	48 89 c2             	mov    rdx,rax
  7c3766:	48 8d bd a0 f2 ff ff 	lea    rdi,[rbp-0xd60]
  7c376d:	33 c0                	xor    eax,eax
  7c376f:	48 8b b5 90 f1 ff ff 	mov    rsi,QWORD PTR [rbp-0xe70]
  7c3776:	48 89 57 a0          	mov    QWORD PTR [rdi-0x60],rdx
  7c377a:	e8 81 34 cb ff       	call   476c00 <_f90_dope_vector_init>
  7c377f:	48 89 85 f0 f4 ff ff 	mov    QWORD PTR [rbp-0xb10],rax
  7c3786:	48 83 c0 1f          	add    rax,0x1f
  7c378a:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7c378e:	48 2b e0             	sub    rsp,rax
  7c3791:	48 89 e0             	mov    rax,rsp
  7c3794:	48 89 85 f8 f4 ff ff 	mov    QWORD PTR [rbp-0xb08],rax
  7c379b:	48 89 85 a0 f2 ff ff 	mov    QWORD PTR [rbp-0xd60],rax
  7c37a2:	45 3b e7             	cmp    r12d,r15d
  7c37a5:	0f 8c 8a 00 00 00    	jl     7c3835 <pre_step3d_mod_mp_pre_step3d_tile_+0xa235>
  7c37ab:	48 83 c4 e0          	add    rsp,0xffffffffffffffe0
  7c37af:	48 8d 85 54 f6 ff ff 	lea    rax,[rbp-0x9ac]
  7c37b6:	41 ba 01 00 00 00    	mov    r10d,0x1
  7c37bc:	bf 6c 73 ab 00       	mov    edi,0xab736c
  7c37c1:	ba 22 00 00 00       	mov    edx,0x22
  7c37c6:	48 8d 8d 50 f6 ff ff 	lea    rcx,[rbp-0x9b0]
  7c37cd:	44 89 78 f4          	mov    DWORD PTR [rax-0xc],r15d
  7c37d1:	4c 8d 85 48 f6 ff ff 	lea    r8,[rbp-0x9b8]
  7c37d8:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  7c37dc:	4c 8d 8d 4c f6 ff ff 	lea    r9,[rbp-0x9b4]
  7c37e3:	44 89 54 24 08       	mov    DWORD PTR [rsp+0x8],r10d
  7c37e8:	44 89 54 24 10       	mov    DWORD PTR [rsp+0x10],r10d
  7c37ed:	8b 70 c4             	mov    esi,DWORD PTR [rax-0x3c]
  7c37f0:	44 89 60 f8          	mov    DWORD PTR [rax-0x8],r12d
  7c37f4:	c7 40 fc 00 00 00 00 	mov    DWORD PTR [rax-0x4],0x0
  7c37fb:	44 89 10             	mov    DWORD PTR [rax],r10d
  7c37fe:	e8 dd a1 c4 ff       	call   40d9e0 <__kmpc_for_static_init_4@plt>
  7c3803:	48 83 c4 20          	add    rsp,0x20
  7c3807:	8b 85 48 f6 ff ff    	mov    eax,DWORD PTR [rbp-0x9b8]
  7c380d:	8b 8d 4c f6 ff ff    	mov    ecx,DWORD PTR [rbp-0x9b4]
  7c3813:	89 85 e0 f3 ff ff    	mov    DWORD PTR [rbp-0xc20],eax
  7c3819:	41 3b c4             	cmp    eax,r12d
  7c381c:	0f 8e 80 00 00 00    	jle    7c38a2 <pre_step3d_mod_mp_pre_step3d_tile_+0xa2a2>
  7c3822:	bf 6c 73 ab 00       	mov    edi,0xab736c
  7c3827:	8b b5 18 f6 ff ff    	mov    esi,DWORD PTR [rbp-0x9e8]
  7c382d:	c5 f8 77             	vzeroupper 
  7c3830:	e8 6b a4 c4 ff       	call   40dca0 <__kmpc_for_static_fini@plt>
  7c3835:	48 8b 95 f8 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xb08]
  7c383c:	48 8b 85 f0 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb10]
  7c3843:	48 83 c0 1f          	add    rax,0x1f
  7c3847:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7c384b:	48 03 e0             	add    rsp,rax
  7c384e:	48 8b 95 e8 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xb18]
  7c3855:	48 8b 85 e0 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb20]
  7c385c:	48 83 c0 1f          	add    rax,0x1f
  7c3860:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7c3864:	48 03 e0             	add    rsp,rax
  7c3867:	48 8b 95 d8 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xb28]
  7c386e:	48 8b 85 d0 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb30]
  7c3875:	48 83 c0 1f          	add    rax,0x1f
  7c3879:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7c387d:	48 03 e0             	add    rsp,rax
  7c3880:	4c 8b bd 28 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x9d8]
  7c3887:	4c 8b b5 30 f6 ff ff 	mov    r14,QWORD PTR [rbp-0x9d0]
  7c388e:	4c 8b ad 38 f6 ff ff 	mov    r13,QWORD PTR [rbp-0x9c8]
  7c3895:	4c 8b a5 40 f6 ff ff 	mov    r12,QWORD PTR [rbp-0x9c0]
  7c389c:	c9                   	leave  
  7c389d:	48 89 dc             	mov    rsp,rbx
  7c38a0:	5b                   	pop    rbx
  7c38a1:	c3                   	ret    
  7c38a2:	49 63 55 00          	movsxd rdx,DWORD PTR [r13+0x0]
  7c38a6:	41 3b cc             	cmp    ecx,r12d
  7c38a9:	4c 8b 15 d0 6b 2f 00 	mov    r10,QWORD PTR [rip+0x2f6bd0]        # aba480 <mod_scalars_mp_iic_>
  7c38b0:	48 8b 35 09 77 2f 00 	mov    rsi,QWORD PTR [rip+0x2f7709]        # abafc0 <mod_scalars_mp_ntfirst_>
  7c38b7:	44 0f 4c e1          	cmovl  r12d,ecx
  7c38bb:	48 8b 85 d0 f3 ff ff 	mov    rax,QWORD PTR [rbp-0xc30]
  7c38c2:	41 8b 7c 92 fc       	mov    edi,DWORD PTR [r10+rdx*4-0x4]
  7c38c7:	89 bd 68 f8 ff ff    	mov    DWORD PTR [rbp-0x798],edi
  7c38cd:	48 8b bd d0 f1 ff ff 	mov    rdi,QWORD PTR [rbp-0xe30]
  7c38d4:	44 8b 44 96 fc       	mov    r8d,DWORD PTR [rsi+rdx*4-0x4]
  7c38d9:	4c 8b 3d e0 6d 2f 00 	mov    r15,QWORD PTR [rip+0x2f6de0]        # aba6c0 <mod_param_mp_n_>
  7c38e0:	44 89 85 70 f8 ff ff 	mov    DWORD PTR [rbp-0x790],r8d
  7c38e7:	4c 8b 47 38          	mov    r8,QWORD PTR [rdi+0x38]
  7c38eb:	48 29 85 d8 f3 ff ff 	sub    QWORD PTR [rbp-0xc28],rax
  7c38f2:	48 c1 e0 03          	shl    rax,0x3
  7c38f6:	48 89 85 d0 f3 ff ff 	mov    QWORD PTR [rbp-0xc30],rax
  7c38fd:	8b 85 e0 f3 ff ff    	mov    eax,DWORD PTR [rbp-0xc20]
  7c3903:	44 2b e0             	sub    r12d,eax
  7c3906:	4c 89 85 08 fa ff ff 	mov    QWORD PTR [rbp-0x5f8],r8
  7c390d:	41 ff c4             	inc    r12d
  7c3910:	4c 8b 85 c0 f1 ff ff 	mov    r8,QWORD PTR [rbp-0xe40]
  7c3917:	4d 63 36             	movsxd r14,DWORD PTR [r14]
  7c391a:	44 89 a5 20 f6 ff ff 	mov    DWORD PTR [rbp-0x9e0],r12d
  7c3921:	4c 89 b5 e8 f3 ff ff 	mov    QWORD PTR [rbp-0xc18],r14
  7c3928:	45 8b 5c 97 fc       	mov    r11d,DWORD PTR [r15+rdx*4-0x4]
  7c392d:	48 8b 0d ec 6d 2f 00 	mov    rcx,QWORD PTR [rip+0x2f6dec]        # aba720 <mod_param_mp_nt_>
  7c3934:	4c 8b 25 05 62 2f 00 	mov    r12,QWORD PTR [rip+0x2f6205]        # ab9b40 <mod_scalars_mp_dt_>
  7c393b:	4c 8b 35 fe 19 30 00 	mov    r14,QWORD PTR [rip+0x3019fe]        # ac5340 <mod_sources_mp_nsrc_>
  7c3942:	4c 8b 3d 57 78 2f 00 	mov    r15,QWORD PTR [rip+0x2f7857]        # abb1a0 <mod_scalars_mp_ltracersrc_>
  7c3949:	4c 89 b5 e8 f5 ff ff 	mov    QWORD PTR [rbp-0xa18],r14
  7c3950:	4c 89 bd f8 f3 ff ff 	mov    QWORD PTR [rbp-0xc08],r15
  7c3957:	4c 8b 17             	mov    r10,QWORD PTR [rdi]
  7c395a:	4c 8b b5 c8 f1 ff ff 	mov    r14,QWORD PTR [rbp-0xe38]
  7c3961:	4d 8b 38             	mov    r15,QWORD PTR [r8]
  7c3964:	4c 89 95 90 f5 ff ff 	mov    QWORD PTR [rbp-0xa70],r10
  7c396b:	4c 89 bd 20 f4 ff ff 	mov    QWORD PTR [rbp-0xbe0],r15
  7c3972:	48 89 95 f0 f5 ff ff 	mov    QWORD PTR [rbp-0xa10],rdx
  7c3979:	4c 63 4c 91 fc       	movsxd r9,DWORD PTR [rcx+rdx*4-0x4]
  7c397e:	4c 8b 2d 4b 78 2f 00 	mov    r13,QWORD PTR [rip+0x2f784b]        # abb1d0 <mod_scalars_mp_ltracersrc_+0x30>
  7c3985:	c4 c1 7b 10 44 d4 f8 	vmovsd xmm0,QWORD PTR [r12+rdx*8-0x8]
  7c398c:	4d 8b 50 68          	mov    r10,QWORD PTR [r8+0x68]
  7c3990:	4c 8b bd b8 f1 ff ff 	mov    r15,QWORD PTR [rbp-0xe48]
  7c3997:	48 8b 15 42 19 30 00 	mov    rdx,QWORD PTR [rip+0x301942]        # ac52e0 <mod_sources_mp_sources_>
  7c399e:	4c 89 8d 60 f8 ff ff 	mov    QWORD PTR [rbp-0x7a0],r9
  7c39a5:	4c 89 ad 78 f8 ff ff 	mov    QWORD PTR [rbp-0x788],r13
  7c39ac:	4c 89 95 f0 f9 ff ff 	mov    QWORD PTR [rbp-0x610],r10
  7c39b3:	48 89 95 c8 f5 ff ff 	mov    QWORD PTR [rbp-0xa38],rdx
  7c39ba:	4c 8b 8d e0 f1 ff ff 	mov    r9,QWORD PTR [rbp-0xe20]
  7c39c1:	4c 8b 95 b0 f1 ff ff 	mov    r10,QWORD PTR [rbp-0xe50]
  7c39c8:	4c 8b 2d 91 78 2f 00 	mov    r13,QWORD PTR [rip+0x2f7891]        # abb260 <mod_scalars_mp_lwsrc_>
  7c39cf:	49 8b 56 38          	mov    rdx,QWORD PTR [r14+0x38]
  7c39d3:	48 8b 0d 16 78 2f 00 	mov    rcx,QWORD PTR [rip+0x2f7816]        # abb1f0 <mod_scalars_mp_ltracersrc_+0x50>
  7c39da:	4c 89 8d 08 f4 ff ff 	mov    QWORD PTR [rbp-0xbf8],r9
  7c39e1:	4c 89 ad f0 f3 ff ff 	mov    QWORD PTR [rbp-0xc10],r13
  7c39e8:	48 8b 77 50          	mov    rsi,QWORD PTR [rdi+0x50]
  7c39ec:	4d 8b 26             	mov    r12,QWORD PTR [r14]
  7c39ef:	48 89 95 90 f9 ff ff 	mov    QWORD PTR [rbp-0x670],rdx
  7c39f6:	4d 8b 88 98 00 00 00 	mov    r9,QWORD PTR [r8+0x98]
  7c39fd:	4d 8b a8 80 00 00 00 	mov    r13,QWORD PTR [r8+0x80]
  7c3a04:	49 8b 78 50          	mov    rdi,QWORD PTR [r8+0x50]
  7c3a08:	49 8b 57 68          	mov    rdx,QWORD PTR [r15+0x68]
  7c3a0c:	48 89 8d 00 f4 ff ff 	mov    QWORD PTR [rbp-0xc00],rcx
  7c3a13:	4c 89 a5 98 f5 ff ff 	mov    QWORD PTR [rbp-0xa68],r12
  7c3a1a:	49 8b 4e 50          	mov    rcx,QWORD PTR [r14+0x50]
  7c3a1e:	4c 89 8d 08 f8 ff ff 	mov    QWORD PTR [rbp-0x7f8],r9
  7c3a25:	4c 89 ad 18 f4 ff ff 	mov    QWORD PTR [rbp-0xbe8],r13
  7c3a2c:	48 89 bd 10 f4 ff ff 	mov    QWORD PTR [rbp-0xbf0],rdi
  7c3a33:	4d 8b 60 38          	mov    r12,QWORD PTR [r8+0x38]
  7c3a37:	4d 8b 37             	mov    r14,QWORD PTR [r15]
  7c3a3a:	4d 8b 4f 38          	mov    r9,QWORD PTR [r15+0x38]
  7c3a3e:	4d 8b 6f 50          	mov    r13,QWORD PTR [r15+0x50]
  7c3a42:	48 89 95 88 f8 ff ff 	mov    QWORD PTR [rbp-0x778],rdx
  7c3a49:	49 8b 3a             	mov    rdi,QWORD PTR [r10]
  7c3a4c:	4d 8b 42 38          	mov    r8,QWORD PTR [r10+0x38]
  7c3a50:	4d 8b 7a 68          	mov    r15,QWORD PTR [r10+0x68]
  7c3a54:	49 2b ff             	sub    rdi,r15
  7c3a57:	49 8b 52 50          	mov    rdx,QWORD PTR [r10+0x50]
  7c3a5b:	4c 8b 95 a8 f1 ff ff 	mov    r10,QWORD PTR [rbp-0xe58]
  7c3a62:	4c 89 a5 18 fa ff ff 	mov    QWORD PTR [rbp-0x5e8],r12
  7c3a69:	4c 89 b5 c0 f4 ff ff 	mov    QWORD PTR [rbp-0xb40],r14
  7c3a70:	4d 8b 22             	mov    r12,QWORD PTR [r10]
  7c3a73:	4c 89 8d 28 fa ff ff 	mov    QWORD PTR [rbp-0x5d8],r9
  7c3a7a:	4c 89 a5 88 f5 ff ff 	mov    QWORD PTR [rbp-0xa78],r12
  7c3a81:	4d 8b 72 68          	mov    r14,QWORD PTR [r10+0x68]
  7c3a85:	4d 8b 4a 50          	mov    r9,QWORD PTR [r10+0x50]
  7c3a89:	4d 8b 62 38          	mov    r12,QWORD PTR [r10+0x38]
  7c3a8d:	4c 8b 95 a0 f1 ff ff 	mov    r10,QWORD PTR [rbp-0xe60]
  7c3a94:	4c 89 b5 d8 f7 ff ff 	mov    QWORD PTR [rbp-0x828],r14
  7c3a9b:	4c 89 a5 98 f9 ff ff 	mov    QWORD PTR [rbp-0x668],r12
  7c3aa2:	4d 8b 32             	mov    r14,QWORD PTR [r10]
  7c3aa5:	4c 89 b5 80 f5 ff ff 	mov    QWORD PTR [rbp-0xa80],r14
  7c3aac:	4d 8b 62 68          	mov    r12,QWORD PTR [r10+0x68]
  7c3ab0:	4d 8b 72 50          	mov    r14,QWORD PTR [r10+0x50]
  7c3ab4:	4d 8b 52 38          	mov    r10,QWORD PTR [r10+0x38]
  7c3ab8:	44 89 9d a0 f4 ff ff 	mov    DWORD PTR [rbp-0xb60],r11d
  7c3abf:	4d 63 db             	movsxd r11,r11d
  7c3ac2:	4c 89 95 88 f9 ff ff 	mov    QWORD PTR [rbp-0x678],r10
  7c3ac9:	4c 89 9d e8 f9 ff ff 	mov    QWORD PTR [rbp-0x618],r11
  7c3ad0:	4c 63 9d b8 f3 ff ff 	movsxd r11,DWORD PTR [rbp-0xc48]
  7c3ad7:	4c 8b 95 e0 f9 ff ff 	mov    r10,QWORD PTR [rbp-0x620]
  7c3ade:	4c 89 9d f8 f9 ff ff 	mov    QWORD PTR [rbp-0x608],r11
  7c3ae5:	4d 2b da             	sub    r11,r10
  7c3ae8:	49 ff c3             	inc    r11
  7c3aeb:	4c 89 9d 20 fa ff ff 	mov    QWORD PTR [rbp-0x5e0],r11
  7c3af2:	4c 8b 9d c0 f3 ff ff 	mov    r11,QWORD PTR [rbp-0xc40]
  7c3af9:	4c 89 a5 e0 f7 ff ff 	mov    QWORD PTR [rbp-0x820],r12
  7c3b00:	4d 89 dc             	mov    r12,r11
  7c3b03:	4c 0f af e2          	imul   r12,rdx
  7c3b07:	c5 fd 10 0d 51 65 08 	vmovupd ymm1,YMMWORD PTR [rip+0x86551]        # 84a060 <var$630.126.450+0xc0>
  7c3b0e:	00 
  7c3b0f:	c5 7b 10 1d 81 86 08 	vmovsd xmm11,QWORD PTR [rip+0x88681]        # 84c198 <__STRLITPACK_0.112+0x88>
  7c3b16:	00 
  7c3b17:	c5 fb 10 1d 61 86 08 	vmovsd xmm3,QWORD PTR [rip+0x88661]        # 84c180 <__STRLITPACK_0.112+0x70>
  7c3b1e:	00 
  7c3b1f:	c5 f9 10 15 79 7c 08 	vmovupd xmm2,XMMWORD PTR [rip+0x87c79]        # 84b7a0 <__STRLITPACK_219.115+0xa0>
  7c3b26:	00 
  7c3b27:	c5 7b 59 25 71 8e 08 	vmulsd xmm12,xmm0,QWORD PTR [rip+0x88e71]        # 84c9a0 <__STRLITPACK_0.112+0x890>
  7c3b2e:	00 
  7c3b2f:	c5 23 59 d0          	vmulsd xmm10,xmm11,xmm0
  7c3b33:	48 63 c0             	movsxd rax,eax
  7c3b36:	49 f7 dc             	neg    r12
  7c3b39:	4c 89 bd d0 f7 ff ff 	mov    QWORD PTR [rbp-0x830],r15
  7c3b40:	4d 03 e7             	add    r12,r15
  7c3b43:	49 89 c7             	mov    r15,rax
  7c3b46:	4c 89 ad 48 f5 ff ff 	mov    QWORD PTR [rbp-0xab8],r13
  7c3b4d:	4d 0f af fd          	imul   r15,r13
  7c3b51:	49 89 c5             	mov    r13,rax
  7c3b54:	4c 89 b5 70 f5 ff ff 	mov    QWORD PTR [rbp-0xa90],r14
  7c3b5b:	4d 0f af ee          	imul   r13,r14
  7c3b5f:	49 89 c6             	mov    r14,rax
  7c3b62:	4d 0f af f1          	imul   r14,r9
  7c3b66:	48 89 85 48 f4 ff ff 	mov    QWORD PTR [rbp-0xbb8],rax
  7c3b6d:	4c 89 bd b8 f4 ff ff 	mov    QWORD PTR [rbp-0xb48],r15
  7c3b74:	49 89 c7             	mov    r15,rax
  7c3b77:	4c 89 b5 d8 f1 ff ff 	mov    QWORD PTR [rbp-0xe28],r14
  7c3b7e:	49 89 c6             	mov    r14,rax
  7c3b81:	48 0f af c2          	imul   rax,rdx
  7c3b85:	4c 0f af fe          	imul   r15,rsi
  7c3b89:	4c 0f af f1          	imul   r14,rcx
  7c3b8d:	4c 89 ad 98 f1 ff ff 	mov    QWORD PTR [rbp-0xe68],r13
  7c3b94:	4c 8b ad c8 f3 ff ff 	mov    r13,QWORD PTR [rbp-0xc38]
  7c3b9b:	48 89 95 68 f5 ff ff 	mov    QWORD PTR [rbp-0xa98],rdx
  7c3ba2:	4c 89 ea             	mov    rdx,r13
  7c3ba5:	48 f7 da             	neg    rdx
  7c3ba8:	48 89 bd 90 f1 ff ff 	mov    QWORD PTR [rbp-0xe70],rdi
  7c3baf:	49 03 fc             	add    rdi,r12
  7c3bb2:	49 03 d2             	add    rdx,r10
  7c3bb5:	48 03 f8             	add    rdi,rax
  7c3bb8:	48 89 85 00 f3 ff ff 	mov    QWORD PTR [rbp-0xd00],rax
  7c3bbf:	4c 89 d8             	mov    rax,r11
  7c3bc2:	49 0f af d0          	imul   rdx,r8
  7c3bc6:	48 0f af c6          	imul   rax,rsi
  7c3bca:	48 03 d7             	add    rdx,rdi
  7c3bcd:	4c 89 d7             	mov    rdi,r10
  7c3bd0:	48 89 95 10 f5 ff ff 	mov    QWORD PTR [rbp-0xaf0],rdx
  7c3bd7:	48 8b 95 90 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xa70]
  7c3bde:	48 2b d0             	sub    rdx,rax
  7c3be1:	49 2b c7             	sub    rax,r15
  7c3be4:	48 89 85 08 f3 ff ff 	mov    QWORD PTR [rbp-0xcf8],rax
  7c3beb:	4c 89 e8             	mov    rax,r13
  7c3bee:	48 89 b5 60 f5 ff ff 	mov    QWORD PTR [rbp-0xaa0],rsi
  7c3bf5:	48 8b b5 08 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x5f8]
  7c3bfc:	48 0f af c6          	imul   rax,rsi
  7c3c00:	48 0f af fe          	imul   rdi,rsi
  7c3c04:	4c 89 85 80 f9 ff ff 	mov    QWORD PTR [rbp-0x680],r8
  7c3c0b:	4d 89 d8             	mov    r8,r11
  7c3c0e:	4c 0f af c1          	imul   r8,rcx
  7c3c12:	4c 89 bd b0 f4 ff ff 	mov    QWORD PTR [rbp-0xb50],r15
  7c3c19:	4c 03 fa             	add    r15,rdx
  7c3c1c:	48 89 85 30 f4 ff ff 	mov    QWORD PTR [rbp-0xbd0],rax
  7c3c23:	48 2b c7             	sub    rax,rdi
  7c3c26:	48 89 95 40 f4 ff ff 	mov    QWORD PTR [rbp-0xbc0],rdx
  7c3c2d:	4c 2b f8             	sub    r15,rax
  7c3c30:	4c 89 ea             	mov    rdx,r13
  7c3c33:	4c 89 d0             	mov    rax,r10
  7c3c36:	48 89 8d 50 f5 ff ff 	mov    QWORD PTR [rbp-0xab0],rcx
  7c3c3d:	48 8b 8d 90 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x670]
  7c3c44:	48 0f af d1          	imul   rdx,rcx
  7c3c48:	48 0f af c1          	imul   rax,rcx
  7c3c4c:	4c 89 a5 a0 f5 ff ff 	mov    QWORD PTR [rbp-0xa60],r12
  7c3c53:	4c 8b a5 98 f5 ff ff 	mov    r12,QWORD PTR [rbp-0xa68]
  7c3c5a:	4d 2b e0             	sub    r12,r8
  7c3c5d:	4d 2b c6             	sub    r8,r14
  7c3c60:	4c 89 b5 a8 f4 ff ff 	mov    QWORD PTR [rbp-0xb58],r14
  7c3c67:	48 89 95 38 f4 ff ff 	mov    QWORD PTR [rbp-0xbc8],rdx
  7c3c6e:	48 2b d0             	sub    rdx,rax
  7c3c71:	4c 89 bd 08 f5 ff ff 	mov    QWORD PTR [rbp-0xaf8],r15
  7c3c78:	4d 89 d7             	mov    r15,r10
  7c3c7b:	4c 89 85 10 f3 ff ff 	mov    QWORD PTR [rbp-0xcf0],r8
  7c3c82:	4d 03 f4             	add    r14,r12
  7c3c85:	4c 2b f2             	sub    r14,rdx
  7c3c88:	4d 89 e8             	mov    r8,r13
  7c3c8b:	4c 89 b5 18 f5 ff ff 	mov    QWORD PTR [rbp-0xae8],r14
  7c3c92:	4d 89 de             	mov    r14,r11
  7c3c95:	4d 0f af f1          	imul   r14,r9
  7c3c99:	48 89 bd 50 f4 ff ff 	mov    QWORD PTR [rbp-0xbb0],rdi
  7c3ca0:	48 8b bd 98 f9 ff ff 	mov    rdi,QWORD PTR [rbp-0x668]
  7c3ca7:	4c 0f af c7          	imul   r8,rdi
  7c3cab:	4c 0f af ff          	imul   r15,rdi
  7c3caf:	48 8b 95 88 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xa78]
  7c3cb6:	48 89 d1             	mov    rcx,rdx
  7c3cb9:	48 8b b5 d8 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x828]
  7c3cc0:	48 2b ce             	sub    rcx,rsi
  7c3cc3:	49 2b f6             	sub    rsi,r14
  7c3cc6:	4c 89 8d 58 f5 ff ff 	mov    QWORD PTR [rbp-0xaa8],r9
  7c3ccd:	4c 8b 8d d8 f1 ff ff 	mov    r9,QWORD PTR [rbp-0xe28]
  7c3cd4:	4d 2b f1             	sub    r14,r9
  7c3cd7:	4d 2b c8             	sub    r9,r8
  7c3cda:	4d 2b c7             	sub    r8,r15
  7c3cdd:	4d 03 c6             	add    r8,r14
  7c3ce0:	49 f7 d8             	neg    r8
  7c3ce3:	48 89 85 28 f4 ff ff 	mov    QWORD PTR [rbp-0xbd8],rax
  7c3cea:	48 8d 04 31          	lea    rax,[rcx+rsi*1]
  7c3cee:	4c 03 c2             	add    r8,rdx
  7c3cf1:	49 03 c1             	add    rax,r9
  7c3cf4:	4c 03 c7             	add    r8,rdi
  7c3cf7:	49 03 c7             	add    rax,r15
  7c3cfa:	4c 89 85 c0 f5 ff ff 	mov    QWORD PTR [rbp-0xa40],r8
  7c3d01:	4d 89 d8             	mov    r8,r11
  7c3d04:	4d 89 ef             	mov    r15,r13
  7c3d07:	4c 89 d7             	mov    rdi,r10
  7c3d0a:	4c 89 a5 58 f4 ff ff 	mov    QWORD PTR [rbp-0xba8],r12
  7c3d11:	4c 8b a5 70 f5 ff ff 	mov    r12,QWORD PTR [rbp-0xa90]
  7c3d18:	48 8b 95 88 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x678]
  7c3d1f:	4d 0f af c4          	imul   r8,r12
  7c3d23:	4c 0f af fa          	imul   r15,rdx
  7c3d27:	48 0f af fa          	imul   rdi,rdx
  7c3d2b:	4c 0f af 9d 48 f5 ff 	imul   r11,QWORD PTR [rbp-0xab8]
  7c3d32:	ff 
  7c3d33:	48 89 b5 78 f5 ff ff 	mov    QWORD PTR [rbp-0xa88],rsi
  7c3d3a:	48 8b b5 80 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xa80]
  7c3d41:	49 89 f1             	mov    r9,rsi
  7c3d44:	4c 89 b5 18 f3 ff ff 	mov    QWORD PTR [rbp-0xce8],r14
  7c3d4b:	48 89 85 20 f5 ff ff 	mov    QWORD PTR [rbp-0xae0],rax
  7c3d52:	4c 8b b5 e0 f7 ff ff 	mov    r14,QWORD PTR [rbp-0x820]
  7c3d59:	4d 2b ce             	sub    r9,r14
  7c3d5c:	48 8b 85 98 f1 ff ff 	mov    rax,QWORD PTR [rbp-0xe68]
  7c3d63:	4d 2b f0             	sub    r14,r8
  7c3d66:	4c 2b c0             	sub    r8,rax
  7c3d69:	49 2b c7             	sub    rax,r15
  7c3d6c:	49 f7 df             	neg    r15
  7c3d6f:	4d 03 fc             	add    r15,r12
  7c3d72:	4d 89 ec             	mov    r12,r13
  7c3d75:	4c 0f af a5 28 fa ff 	imul   r12,QWORD PTR [rbp-0x5d8]
  7c3d7c:	ff 
  7c3d7d:	49 f7 df             	neg    r15
  7c3d80:	4b 8d 14 31          	lea    rdx,[r9+r14*1]
  7c3d84:	4d 03 f8             	add    r15,r8
  7c3d87:	48 03 d0             	add    rdx,rax
  7c3d8a:	49 f7 df             	neg    r15
  7c3d8d:	48 03 d7             	add    rdx,rdi
  7c3d90:	4c 03 fe             	add    r15,rsi
  7c3d93:	49 c1 e5 03          	shl    r13,0x3
  7c3d97:	4c 03 ff             	add    r15,rdi
  7c3d9a:	48 8b bd b8 f4 ff ff 	mov    rdi,QWORD PTR [rbp-0xb48]
  7c3da1:	48 89 f8             	mov    rax,rdi
  7c3da4:	4c 89 a5 68 f4 ff ff 	mov    QWORD PTR [rbp-0xb98],r12
  7c3dab:	49 2b c4             	sub    rax,r12
  7c3dae:	4d 89 d4             	mov    r12,r10
  7c3db1:	4c 0f af a5 28 fa ff 	imul   r12,QWORD PTR [rbp-0x5d8]
  7c3db8:	ff 
  7c3db9:	48 8b b5 c0 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb40]
  7c3dc0:	48 89 95 28 f5 ff ff 	mov    QWORD PTR [rbp-0xad8],rdx
  7c3dc7:	48 89 f2             	mov    rdx,rsi
  7c3dca:	49 2b d3             	sub    rdx,r11
  7c3dcd:	4c 89 bd b8 f5 ff ff 	mov    QWORD PTR [rbp-0xa48],r15
  7c3dd4:	48 89 85 88 f4 ff ff 	mov    QWORD PTR [rbp-0xb78],rax
  7c3ddb:	4c 89 a5 80 f4 ff ff 	mov    QWORD PTR [rbp-0xb80],r12
  7c3de2:	4c 89 9d 98 f4 ff ff 	mov    QWORD PTR [rbp-0xb68],r11
  7c3de9:	4c 8d 3c 02          	lea    r15,[rdx+rax*1]
  7c3ded:	4c 89 bd 78 f4 ff ff 	mov    QWORD PTR [rbp-0xb88],r15
  7c3df4:	4d 03 fc             	add    r15,r12
  7c3df7:	4c 89 bd 30 f5 ff ff 	mov    QWORD PTR [rbp-0xad0],r15
  7c3dfe:	4c 8b bd 88 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x778]
  7c3e05:	c7 85 08 f6 ff ff 00 	mov    DWORD PTR [rbp-0x9f8],0x0
  7c3e0c:	00 00 00 
  7c3e0f:	48 c7 85 10 f6 ff ff 	mov    QWORD PTR [rbp-0x9f0],0x0
  7c3e16:	00 00 00 00 
  7c3e1a:	4c 03 fe             	add    r15,rsi
  7c3e1d:	4d 2b fb             	sub    r15,r11
  7c3e20:	4c 03 f8             	add    r15,rax
  7c3e23:	4a 8d 04 d5 00 00 00 	lea    rax,[r10*8+0x0]
  7c3e2a:	00 
  7c3e2b:	4d 03 fc             	add    r15,r12
  7c3e2e:	4c 89 bd 38 f5 ff ff 	mov    QWORD PTR [rbp-0xac8],r15
  7c3e35:	49 89 c7             	mov    r15,rax
  7c3e38:	4c 8b a5 d8 f3 ff ff 	mov    r12,QWORD PTR [rbp-0xc28]
  7c3e3f:	49 2b c5             	sub    rax,r13
  7c3e42:	4c 2b bd d0 f3 ff ff 	sub    r15,QWORD PTR [rbp-0xc30]
  7c3e49:	4c 03 c8             	add    r9,rax
  7c3e4c:	48 03 c8             	add    rcx,rax
  7c3e4f:	4d 03 f1             	add    r14,r9
  7c3e52:	4c 89 bd 70 f4 ff ff 	mov    QWORD PTR [rbp-0xb90],r15
  7c3e59:	4e 8d 14 e5 08 00 00 	lea    r10,[r12*8+0x8]
  7c3e60:	00 
  7c3e61:	4c 89 95 00 fa ff ff 	mov    QWORD PTR [rbp-0x600],r10
  7c3e68:	4f 8d 14 e7          	lea    r10,[r15+r12*8]
  7c3e6c:	4c 89 95 60 f4 ff ff 	mov    QWORD PTR [rbp-0xba0],r10
  7c3e73:	48 03 f0             	add    rsi,rax
  7c3e76:	4c 8b bd 40 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xdc0]
  7c3e7d:	48 03 d0             	add    rdx,rax
  7c3e80:	4d 03 fa             	add    r15,r10
  7c3e83:	48 03 d7             	add    rdx,rdi
  7c3e86:	4c 8b 95 80 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xa80]
  7c3e8d:	4c 8b 8d 78 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xa88]
  7c3e94:	4c 03 d0             	add    r10,rax
  7c3e97:	4c 03 c9             	add    r9,rcx
  7c3e9a:	4d 2b d0             	sub    r10,r8
  7c3e9d:	48 8b 8d 90 f1 ff ff 	mov    rcx,QWORD PTR [rbp-0xe70]
  7c3ea4:	4c 8b 85 88 f8 ff ff 	mov    r8,QWORD PTR [rbp-0x778]
  7c3eab:	48 03 c8             	add    rcx,rax
  7c3eae:	4c 03 8d d8 f1 ff ff 	add    r9,QWORD PTR [rbp-0xe28]
  7c3eb5:	4d 2b c3             	sub    r8,r11
  7c3eb8:	4c 8b 9d 20 fa ff ff 	mov    r11,QWORD PTR [rbp-0x5e0]
  7c3ebf:	4c 03 c6             	add    r8,rsi
  7c3ec2:	4c 89 bd 60 f9 ff ff 	mov    QWORD PTR [rbp-0x6a0],r15
  7c3ec9:	4c 03 c7             	add    r8,rdi
  7c3ecc:	4c 8b bd a0 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xa60]
  7c3ed3:	4c 89 8d 78 f5 ff ff 	mov    QWORD PTR [rbp-0xa88],r9
  7c3eda:	4c 03 f9             	add    r15,rcx
  7c3edd:	48 8b 8d 98 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xa68]
  7c3ee4:	48 89 b5 90 f4 ff ff 	mov    QWORD PTR [rbp-0xb70],rsi
  7c3eeb:	44 89 de             	mov    esi,r11d
  7c3eee:	4c 8b 8d 90 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xa70]
  7c3ef5:	48 03 c8             	add    rcx,rax
  7c3ef8:	4c 8b ad 88 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xa78]
  7c3eff:	4c 03 c8             	add    r9,rax
  7c3f02:	4c 03 e8             	add    r13,rax
  7c3f05:	41 83 e3 fe          	and    r11d,0xfffffffe
  7c3f09:	83 e6 fc             	and    esi,0xfffffffc
  7c3f0c:	48 2b 8d 10 f3 ff ff 	sub    rcx,QWORD PTR [rbp-0xcf0]
  7c3f13:	4c 03 b5 98 f1 ff ff 	add    r14,QWORD PTR [rbp-0xe68]
  7c3f1a:	4c 03 bd 00 f3 ff ff 	add    r15,QWORD PTR [rbp-0xd00]
  7c3f21:	4c 2b 8d 08 f3 ff ff 	sub    r9,QWORD PTR [rbp-0xcf8]
  7c3f28:	4c 2b ad 18 f3 ff ff 	sub    r13,QWORD PTR [rbp-0xce8]
  7c3f2f:	4c 03 95 70 f5 ff ff 	add    r10,QWORD PTR [rbp-0xa90]
  7c3f36:	4d 63 db             	movsxd r11,r11d
  7c3f39:	48 63 f6             	movsxd rsi,esi
  7c3f3c:	48 89 b5 88 fa ff ff 	mov    QWORD PTR [rbp-0x578],rsi
  7c3f43:	48 89 8d 98 f5 ff ff 	mov    QWORD PTR [rbp-0xa68],rcx
  7c3f4a:	48 89 85 c8 f4 ff ff 	mov    QWORD PTR [rbp-0xb38],rax
  7c3f51:	4c 89 85 40 f5 ff ff 	mov    QWORD PTR [rbp-0xac0],r8
  7c3f58:	48 8b bd c0 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xa40]
  7c3f5f:	48 8b b5 b8 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xa48]
  7c3f66:	48 8b 85 10 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x9f0]
  7c3f6d:	8b 8d 08 f6 ff ff    	mov    ecx,DWORD PTR [rbp-0x9f8]
  7c3f73:	4c 89 95 80 f5 ff ff 	mov    QWORD PTR [rbp-0xa80],r10
  7c3f7a:	4c 89 ad 88 f5 ff ff 	mov    QWORD PTR [rbp-0xa78],r13
  7c3f81:	4c 89 9d 30 fa ff ff 	mov    QWORD PTR [rbp-0x5d0],r11
  7c3f88:	4c 89 8d 90 f5 ff ff 	mov    QWORD PTR [rbp-0xa70],r9
  7c3f8f:	4c 89 bd a0 f5 ff ff 	mov    QWORD PTR [rbp-0xa60],r15
  7c3f96:	4c 89 b5 a8 f5 ff ff 	mov    QWORD PTR [rbp-0xa58],r14
  7c3f9d:	48 89 95 b0 f5 ff ff 	mov    QWORD PTR [rbp-0xa50],rdx
  7c3fa4:	8b 95 68 f8 ff ff    	mov    edx,DWORD PTR [rbp-0x798]
  7c3faa:	c4 c1 79 28 ea       	vmovapd xmm5,xmm10
  7c3faf:	3b 95 70 f8 ff ff    	cmp    edx,DWORD PTR [rbp-0x790]
  7c3fb5:	74 05                	je     7c3fbc <pre_step3d_mod_mp_pre_step3d_tile_+0xa9bc>
  7c3fb7:	c4 c1 78 28 ec       	vmovaps xmm5,xmm12
  7c3fbc:	48 83 bd 80 f9 ff ff 	cmp    QWORD PTR [rbp-0x680],0x8
  7c3fc3:	08 
  7c3fc4:	0f 85 30 04 00 00    	jne    7c43fa <pre_step3d_mod_mp_pre_step3d_tile_+0xadfa>
  7c3fca:	48 83 bd 08 fa ff ff 	cmp    QWORD PTR [rbp-0x5f8],0x8
  7c3fd1:	08 
  7c3fd2:	0f 85 22 04 00 00    	jne    7c43fa <pre_step3d_mod_mp_pre_step3d_tile_+0xadfa>
  7c3fd8:	48 83 bd 90 f9 ff ff 	cmp    QWORD PTR [rbp-0x670],0x8
  7c3fdf:	08 
  7c3fe0:	0f 85 14 04 00 00    	jne    7c43fa <pre_step3d_mod_mp_pre_step3d_tile_+0xadfa>
  7c3fe6:	48 83 bd 98 f9 ff ff 	cmp    QWORD PTR [rbp-0x668],0x8
  7c3fed:	08 
  7c3fee:	0f 85 06 04 00 00    	jne    7c43fa <pre_step3d_mod_mp_pre_step3d_tile_+0xadfa>
  7c3ff4:	48 83 bd 88 f9 ff ff 	cmp    QWORD PTR [rbp-0x678],0x8
  7c3ffb:	08 
  7c3ffc:	0f 85 f8 03 00 00    	jne    7c43fa <pre_step3d_mod_mp_pre_step3d_tile_+0xadfa>
  7c4002:	48 83 bd 28 fa ff ff 	cmp    QWORD PTR [rbp-0x5d8],0x8
  7c4009:	08 
  7c400a:	0f 85 ea 03 00 00    	jne    7c43fa <pre_step3d_mod_mp_pre_step3d_tile_+0xadfa>
  7c4010:	45 33 e4             	xor    r12d,r12d
  7c4013:	48 8b 95 60 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x6a0]
  7c401a:	45 33 c9             	xor    r9d,r9d
  7c401d:	48 89 95 70 f7 ff ff 	mov    QWORD PTR [rbp-0x890],rdx
  7c4024:	4c 89 8d 78 f7 ff ff 	mov    QWORD PTR [rbp-0x888],r9
  7c402b:	4c 89 8d 68 f7 ff ff 	mov    QWORD PTR [rbp-0x898],r9
  7c4032:	48 83 bd e8 f9 ff ff 	cmp    QWORD PTR [rbp-0x618],0x0
  7c4039:	00 
  7c403a:	0f 8e 12 09 00 00    	jle    7c4952 <pre_step3d_mod_mp_pre_step3d_tile_+0xb352>
  7c4040:	4c 8b 95 58 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xaa8]
  7c4047:	4c 0f af d0          	imul   r10,rax
  7c404b:	c5 fd 10 1d 0d 60 08 	vmovupd ymm3,YMMWORD PTR [rip+0x8600d]        # 84a060 <var$630.126.450+0xc0>
  7c4052:	00 
  7c4053:	c5 fb 10 15 25 81 08 	vmovsd xmm2,QWORD PTR [rip+0x88125]        # 84c180 <__STRLITPACK_0.112+0x70>
  7c405a:	00 
  7c405b:	c4 e2 7d 19 c5       	vbroadcastsd ymm0,xmm5
  7c4060:	4c 8b 85 78 f5 ff ff 	mov    r8,QWORD PTR [rbp-0xa88]
  7c4067:	4c 8b 9d 70 f5 ff ff 	mov    r11,QWORD PTR [rbp-0xa90]
  7c406e:	48 8b bd 48 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xab8]
  7c4075:	4c 8b b5 50 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xab0]
  7c407c:	4f 8d 3c 10          	lea    r15,[r8+r10*1]
  7c4080:	4c 8b ad 60 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xaa0]
  7c4087:	4c 0f af d8          	imul   r11,rax
  7c408b:	48 0f af f8          	imul   rdi,rax
  7c408f:	4c 0f af f0          	imul   r14,rax
  7c4093:	4c 0f af e8          	imul   r13,rax
  7c4097:	4c 8b 85 68 f5 ff ff 	mov    r8,QWORD PTR [rbp-0xa98]
  7c409e:	4c 0f af c0          	imul   r8,rax
  7c40a2:	48 8b b5 b0 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xa50]
  7c40a9:	48 8b 95 a8 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xa58]
  7c40b0:	4c 03 95 88 f5 ff ff 	add    r10,QWORD PTR [rbp-0xa78]
  7c40b7:	4c 03 b5 98 f5 ff ff 	add    r14,QWORD PTR [rbp-0xa68]
  7c40be:	48 03 f7             	add    rsi,rdi
  7c40c1:	48 03 bd 40 f5 ff ff 	add    rdi,QWORD PTR [rbp-0xac0]
  7c40c8:	49 03 d3             	add    rdx,r11
  7c40cb:	4c 03 9d 80 f5 ff ff 	add    r11,QWORD PTR [rbp-0xa80]
  7c40d2:	4c 03 ad 90 f5 ff ff 	add    r13,QWORD PTR [rbp-0xa70]
  7c40d9:	48 89 bd 10 f7 ff ff 	mov    QWORD PTR [rbp-0x8f0],rdi
  7c40e0:	48 89 95 20 f7 ff ff 	mov    QWORD PTR [rbp-0x8e0],rdx
  7c40e7:	48 89 b5 28 f7 ff ff 	mov    QWORD PTR [rbp-0x8d8],rsi
  7c40ee:	89 8d 08 f6 ff ff    	mov    DWORD PTR [rbp-0x9f8],ecx
  7c40f4:	4c 03 85 a0 f5 ff ff 	add    r8,QWORD PTR [rbp-0xa60]
  7c40fb:	4c 89 c9             	mov    rcx,r9
  7c40fe:	48 8b b5 78 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x888]
  7c4105:	48 8b bd 70 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x890]
  7c410c:	48 8b 95 20 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x5e0]
  7c4113:	4c 89 9d 00 f7 ff ff 	mov    QWORD PTR [rbp-0x900],r11
  7c411a:	4c 89 95 08 f7 ff ff 	mov    QWORD PTR [rbp-0x8f8],r10
  7c4121:	4c 89 ad 30 f7 ff ff 	mov    QWORD PTR [rbp-0x8d0],r13
  7c4128:	4c 89 b5 38 f7 ff ff 	mov    QWORD PTR [rbp-0x8c8],r14
  7c412f:	4c 89 bd 18 f7 ff ff 	mov    QWORD PTR [rbp-0x8e8],r15
  7c4136:	4c 89 a5 00 f8 ff ff 	mov    QWORD PTR [rbp-0x800],r12
  7c413d:	48 89 85 10 f6 ff ff 	mov    QWORD PTR [rbp-0x9f0],rax
  7c4144:	48 8b 85 f8 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x608]
  7c414b:	48 3b 85 e0 f9 ff ff 	cmp    rax,QWORD PTR [rbp-0x620]
  7c4152:	0f 8c 5c 02 00 00    	jl     7c43b4 <pre_step3d_mod_mp_pre_step3d_tile_+0xadb4>
  7c4158:	48 83 fa 04          	cmp    rdx,0x4
  7c415c:	0f 8c 3c 56 00 00    	jl     7c979e <pre_step3d_mod_mp_pre_step3d_tile_+0x1019e>
  7c4162:	4c 8b a5 18 f7 ff ff 	mov    r12,QWORD PTR [rbp-0x8e8]
  7c4169:	45 33 ed             	xor    r13d,r13d
  7c416c:	4c 8b 95 08 f7 ff ff 	mov    r10,QWORD PTR [rbp-0x8f8]
  7c4173:	4c 8b bd 00 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x900]
  7c417a:	4c 8b b5 20 f7 ff ff 	mov    r14,QWORD PTR [rbp-0x8e0]
  7c4181:	4f 8d 1c 0c          	lea    r11,[r12+r9*1]
  7c4185:	4c 89 9d 60 f7 ff ff 	mov    QWORD PTR [rbp-0x8a0],r11
  7c418c:	4f 8d 24 0a          	lea    r12,[r10+r9*1]
  7c4190:	48 89 bd 40 f7 ff ff 	mov    QWORD PTR [rbp-0x8c0],rdi
  7c4197:	4d 8d 14 37          	lea    r10,[r15+rsi*1]
  7c419b:	4c 8b bd 10 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x8f0]
  7c41a2:	4d 8d 1c 36          	lea    r11,[r14+rsi*1]
  7c41a6:	4c 8b b5 28 f7 ff ff 	mov    r14,QWORD PTR [rbp-0x8d8]
  7c41ad:	48 8b 85 88 fa ff ff 	mov    rax,QWORD PTR [rbp-0x578]
  7c41b4:	48 89 8d 68 f7 ff ff 	mov    QWORD PTR [rbp-0x898],rcx
  7c41bb:	4c 03 f9             	add    r15,rcx
  7c41be:	4c 89 bd 48 f7 ff ff 	mov    QWORD PTR [rbp-0x8b8],r15
  7c41c5:	4c 03 f1             	add    r14,rcx
  7c41c8:	48 89 b5 78 f7 ff ff 	mov    QWORD PTR [rbp-0x888],rsi
  7c41cf:	49 89 c7             	mov    r15,rax
  7c41d2:	4c 89 8d a8 f7 ff ff 	mov    QWORD PTR [rbp-0x858],r9
  7c41d9:	48 89 bd 70 f7 ff ff 	mov    QWORD PTR [rbp-0x890],rdi
  7c41e0:	48 8b 95 40 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x8c0]
  7c41e7:	48 8b 8d 48 f7 ff ff 	mov    rcx,QWORD PTR [rbp-0x8b8]
  7c41ee:	48 8b b5 60 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x8a0]
  7c41f5:	48 8b bd 30 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x8d0]
  7c41fc:	4c 8b 8d 38 f7 ff ff 	mov    r9,QWORD PTR [rbp-0x8c8]
  7c4203:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  7c4208:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  7c420f:	00 
  7c4210:	c4 81 7d 10 74 ec 08 	vmovupd ymm6,YMMWORD PTR [r12+r13*8+0x8]
  7c4217:	c4 21 7d 10 0c e9    	vmovupd ymm9,YMMWORD PTR [rcx+r13*8]
  7c421d:	c4 a1 7d 59 24 ef    	vmulpd ymm4,ymm0,YMMWORD PTR [rdi+r13*8]
  7c4223:	c4 81 7d 10 0c e8    	vmovupd ymm1,YMMWORD PTR [r8+r13*8]
  7c4229:	c4 a1 4d 5c 3c ee    	vsubpd ymm7,ymm6,YMMWORD PTR [rsi+r13*8]
  7c422f:	c4 01 35 5c 34 ee    	vsubpd ymm14,ymm9,YMMWORD PTR [r14+r13*8]
  7c4235:	c4 01 5d 59 3c e9    	vmulpd ymm15,ymm4,YMMWORD PTR [r9+r13*8]
  7c423b:	c4 01 45 58 04 ea    	vaddpd ymm8,ymm7,YMMWORD PTR [r10+r13*8]
  7c4241:	c4 01 3d 5c 2c eb    	vsubpd ymm13,ymm8,YMMWORD PTR [r11+r13*8]
  7c4247:	49 83 c5 04          	add    r13,0x4
  7c424b:	c4 c1 15 58 e6       	vaddpd ymm4,ymm13,ymm14
  7c4250:	c5 85 59 f4          	vmulpd ymm6,ymm15,ymm4
  7c4254:	c5 f5 5c ce          	vsubpd ymm1,ymm1,ymm6
  7c4258:	c5 e5 5e f9          	vdivpd ymm7,ymm3,ymm1
  7c425c:	c5 fd 11 7a 08       	vmovupd YMMWORD PTR [rdx+0x8],ymm7
  7c4261:	48 83 c2 20          	add    rdx,0x20
  7c4265:	4d 3b ef             	cmp    r13,r15
  7c4268:	72 a6                	jb     7c4210 <pre_step3d_mod_mp_pre_step3d_tile_+0xac10>
  7c426a:	48 8b 8d 68 f7 ff ff 	mov    rcx,QWORD PTR [rbp-0x898]
  7c4271:	48 8b b5 78 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x888]
  7c4278:	4c 8b 8d a8 f7 ff ff 	mov    r9,QWORD PTR [rbp-0x858]
  7c427f:	48 8b bd 70 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x890]
  7c4286:	48 8b 95 20 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x5e0]
  7c428d:	4c 8d 2c c5 00 00 00 	lea    r13,[rax*8+0x0]
  7c4294:	00 
  7c4295:	48 3b c2             	cmp    rax,rdx
  7c4298:	0f 83 16 01 00 00    	jae    7c43b4 <pre_step3d_mod_mp_pre_step3d_tile_+0xadb4>
  7c429e:	4c 8b 95 08 f7 ff ff 	mov    r10,QWORD PTR [rbp-0x8f8]
  7c42a5:	4c 8d 24 c7          	lea    r12,[rdi+rax*8]
  7c42a9:	4c 8b bd 20 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x8e0]
  7c42b0:	4c 8b 9d 18 f7 ff ff 	mov    r11,QWORD PTR [rbp-0x8e8]
  7c42b7:	48 89 8d 68 f7 ff ff 	mov    QWORD PTR [rbp-0x898],rcx
  7c42be:	4f 8d 34 0a          	lea    r14,[r10+r9*1]
  7c42c2:	4c 89 b5 50 f7 ff ff 	mov    QWORD PTR [rbp-0x8b0],r14
  7c42c9:	4d 8d 14 37          	lea    r10,[r15+rsi*1]
  7c42cd:	4c 8b bd 28 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x8d8]
  7c42d4:	4d 03 d9             	add    r11,r9
  7c42d7:	4c 8b b5 00 f7 ff ff 	mov    r14,QWORD PTR [rbp-0x900]
  7c42de:	48 89 b5 78 f7 ff ff 	mov    QWORD PTR [rbp-0x888],rsi
  7c42e5:	4c 89 8d a8 f7 ff ff 	mov    QWORD PTR [rbp-0x858],r9
  7c42ec:	4c 03 f9             	add    r15,rcx
  7c42ef:	4c 89 bd 58 f7 ff ff 	mov    QWORD PTR [rbp-0x8a8],r15
  7c42f6:	4c 03 f6             	add    r14,rsi
  7c42f9:	4c 8b bd 10 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x8f0]
  7c4300:	48 89 bd 70 f7 ff ff 	mov    QWORD PTR [rbp-0x890],rdi
  7c4307:	48 8b b5 58 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x8a8]
  7c430e:	48 8b bd 50 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x8b0]
  7c4315:	4c 03 f9             	add    r15,rcx
  7c4318:	4c 89 f9             	mov    rcx,r15
  7c431b:	4c 8b 8d 30 f7 ff ff 	mov    r9,QWORD PTR [rbp-0x8d0]
  7c4322:	4c 8b bd 38 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x8c8]
  7c4329:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  7c4330:	c4 c1 7b 10 64 3d 08 	vmovsd xmm4,QWORD PTR [r13+rdi*1+0x8]
  7c4337:	48 ff c0             	inc    rax
  7c433a:	c4 41 7b 10 44 0d 00 	vmovsd xmm8,QWORD PTR [r13+rcx*1+0x0]
  7c4341:	c4 81 53 59 4c 0d 00 	vmulsd xmm1,xmm5,QWORD PTR [r13+r9*1+0x0]
  7c4348:	c4 81 5b 5c 74 1d 00 	vsubsd xmm6,xmm4,QWORD PTR [r13+r11*1+0x0]
  7c434f:	c4 41 3b 5c 6c 35 00 	vsubsd xmm13,xmm8,QWORD PTR [r13+rsi*1+0x0]
  7c4356:	c4 01 73 59 74 3d 00 	vmulsd xmm14,xmm1,QWORD PTR [r13+r15*1+0x0]
  7c435d:	c4 81 4b 58 7c 35 00 	vaddsd xmm7,xmm6,QWORD PTR [r13+r14*1+0x0]
  7c4364:	c4 81 7b 10 4c 05 00 	vmovsd xmm1,QWORD PTR [r13+r8*1+0x0]
  7c436b:	c4 01 43 5c 4c 15 00 	vsubsd xmm9,xmm7,QWORD PTR [r13+r10*1+0x0]
  7c4372:	49 83 c5 08          	add    r13,0x8
  7c4376:	c4 41 33 58 fd       	vaddsd xmm15,xmm9,xmm13
  7c437b:	c4 c1 0b 59 e7       	vmulsd xmm4,xmm14,xmm15
  7c4380:	c5 f3 5c f4          	vsubsd xmm6,xmm1,xmm4
  7c4384:	c5 eb 5e fe          	vdivsd xmm7,xmm2,xmm6
  7c4388:	c4 c1 7b 11 7c 24 08 	vmovsd QWORD PTR [r12+0x8],xmm7
  7c438f:	49 83 c4 08          	add    r12,0x8
  7c4393:	48 3b c2             	cmp    rax,rdx
  7c4396:	72 98                	jb     7c4330 <pre_step3d_mod_mp_pre_step3d_tile_+0xad30>
  7c4398:	48 8b 8d 68 f7 ff ff 	mov    rcx,QWORD PTR [rbp-0x898]
  7c439f:	48 8b b5 78 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x888]
  7c43a6:	4c 8b 8d a8 f7 ff ff 	mov    r9,QWORD PTR [rbp-0x858]
  7c43ad:	48 8b bd 70 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x890]
  7c43b4:	48 8b 85 00 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x800]
  7c43bb:	48 ff c0             	inc    rax
  7c43be:	48 03 bd 00 fa ff ff 	add    rdi,QWORD PTR [rbp-0x600]
  7c43c5:	4c 03 85 d0 f7 ff ff 	add    r8,QWORD PTR [rbp-0x830]
  7c43cc:	4c 03 8d d8 f7 ff ff 	add    r9,QWORD PTR [rbp-0x828]
  7c43d3:	48 03 b5 e0 f7 ff ff 	add    rsi,QWORD PTR [rbp-0x820]
  7c43da:	48 03 8d 88 f8 ff ff 	add    rcx,QWORD PTR [rbp-0x778]
  7c43e1:	48 89 85 00 f8 ff ff 	mov    QWORD PTR [rbp-0x800],rax
  7c43e8:	48 3b 85 e8 f9 ff ff 	cmp    rax,QWORD PTR [rbp-0x618]
  7c43ef:	0f 82 4f fd ff ff    	jb     7c4144 <pre_step3d_mod_mp_pre_step3d_tile_+0xab44>
  7c43f5:	e9 4b 05 00 00       	jmp    7c4945 <pre_step3d_mod_mp_pre_step3d_tile_+0xb345>
  7c43fa:	45 33 c9             	xor    r9d,r9d
  7c43fd:	45 33 db             	xor    r11d,r11d
  7c4400:	45 33 e4             	xor    r12d,r12d
  7c4403:	4c 8b b5 60 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x6a0]
  7c440a:	45 33 ed             	xor    r13d,r13d
  7c440d:	48 83 bd e8 f9 ff ff 	cmp    QWORD PTR [rbp-0x618],0x0
  7c4414:	00 
  7c4415:	0f 8e 37 05 00 00    	jle    7c4952 <pre_step3d_mod_mp_pre_step3d_tile_+0xb352>
  7c441b:	48 8b 95 60 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xaa0]
  7c4422:	48 0f af d0          	imul   rdx,rax
  7c4426:	4c 8b 95 58 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xaa8]
  7c442d:	4c 0f af d0          	imul   r10,rax
  7c4431:	48 8b b5 70 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xa90]
  7c4438:	48 0f af f0          	imul   rsi,rax
  7c443c:	48 03 95 08 f5 ff ff 	add    rdx,QWORD PTR [rbp-0xaf8]
  7c4443:	48 89 95 a0 f9 ff ff 	mov    QWORD PTR [rbp-0x660],rdx
  7c444a:	48 8b bd 68 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xa98]
  7c4451:	4c 8b 85 48 f5 ff ff 	mov    r8,QWORD PTR [rbp-0xab8]
  7c4458:	48 8b 95 50 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xab0]
  7c445f:	48 0f af f8          	imul   rdi,rax
  7c4463:	4c 0f af c0          	imul   r8,rax
  7c4467:	48 0f af d0          	imul   rdx,rax
  7c446b:	4c 8b bd 20 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xae0]
  7c4472:	48 03 bd 10 f5 ff ff 	add    rdi,QWORD PTR [rbp-0xaf0]
  7c4479:	48 03 95 18 f5 ff ff 	add    rdx,QWORD PTR [rbp-0xae8]
  7c4480:	c5 fb 12 d5          	vmovddup xmm2,xmm5
  7c4484:	4d 03 fa             	add    r15,r10
  7c4487:	4c 89 bd b0 f6 ff ff 	mov    QWORD PTR [rbp-0x950],r15
  7c448e:	4c 8b bd 28 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xad8]
  7c4495:	4c 03 95 c0 f5 ff ff 	add    r10,QWORD PTR [rbp-0xa40]
  7c449c:	4c 89 95 c8 f6 ff ff 	mov    QWORD PTR [rbp-0x938],r10
  7c44a3:	48 89 95 b0 f9 ff ff 	mov    QWORD PTR [rbp-0x650],rdx
  7c44aa:	4c 03 fe             	add    r15,rsi
  7c44ad:	4c 89 bd a8 f6 ff ff 	mov    QWORD PTR [rbp-0x958],r15
  7c44b4:	4c 8b bd 30 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xad0]
  7c44bb:	48 03 b5 b8 f5 ff ff 	add    rsi,QWORD PTR [rbp-0xa48]
  7c44c2:	48 89 b5 c0 f6 ff ff 	mov    QWORD PTR [rbp-0x940],rsi
  7c44c9:	48 89 bd a8 f9 ff ff 	mov    QWORD PTR [rbp-0x658],rdi
  7c44d0:	4d 03 f8             	add    r15,r8
  7c44d3:	4c 03 85 38 f5 ff ff 	add    r8,QWORD PTR [rbp-0xac8]
  7c44da:	4c 89 bd a0 f6 ff ff 	mov    QWORD PTR [rbp-0x960],r15
  7c44e1:	4c 89 85 b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],r8
  7c44e8:	4c 89 8d f8 f7 ff ff 	mov    QWORD PTR [rbp-0x808],r9
  7c44ef:	48 89 85 10 f6 ff ff 	mov    QWORD PTR [rbp-0x9f0],rax
  7c44f6:	89 8d 08 f6 ff ff    	mov    DWORD PTR [rbp-0x9f8],ecx
  7c44fc:	c5 f9 10 25 9c 72 08 	vmovupd xmm4,XMMWORD PTR [rip+0x8729c]        # 84b7a0 <__STRLITPACK_219.115+0xa0>
  7c4503:	00 
  7c4504:	c5 fb 10 1d 74 7c 08 	vmovsd xmm3,QWORD PTR [rip+0x87c74]        # 84c180 <__STRLITPACK_0.112+0x70>
  7c450b:	00 
  7c450c:	48 8b 85 f8 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x608]
  7c4513:	48 3b 85 e0 f9 ff ff 	cmp    rax,QWORD PTR [rbp-0x620]
  7c451a:	0f 8c d6 03 00 00    	jl     7c48f6 <pre_step3d_mod_mp_pre_step3d_tile_+0xb2f6>
  7c4520:	48 83 bd 20 fa ff ff 	cmp    QWORD PTR [rbp-0x5e0],0x2
  7c4527:	02 
  7c4528:	0f 8c db 5f 00 00    	jl     7ca509 <pre_step3d_mod_mp_pre_step3d_tile_+0x10f09>
  7c452e:	48 8b 95 a8 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x958]
  7c4535:	45 33 d2             	xor    r10d,r10d
  7c4538:	4c 8b 85 a0 f6 ff ff 	mov    r8,QWORD PTR [rbp-0x960]
  7c453f:	48 8b b5 c0 f6 ff ff 	mov    rsi,QWORD PTR [rbp-0x940]
  7c4546:	4c 8b bd c8 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x938]
  7c454d:	4a 8d 0c 22          	lea    rcx,[rdx+r12*1]
  7c4551:	48 89 8d e8 f6 ff ff 	mov    QWORD PTR [rbp-0x918],rcx
  7c4558:	4b 8d 14 28          	lea    rdx,[r8+r13*1]
  7c455c:	48 8b 8d b8 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x948]
  7c4563:	45 33 c0             	xor    r8d,r8d
  7c4566:	4c 8b 8d b0 f6 ff ff 	mov    r9,QWORD PTR [rbp-0x950]
  7c456d:	4a 8d 3c 26          	lea    rdi,[rsi+r12*1]
  7c4571:	48 89 bd d0 f9 ff ff 	mov    QWORD PTR [rbp-0x630],rdi
  7c4578:	33 ff                	xor    edi,edi
  7c457a:	48 8b 85 30 fa ff ff 	mov    rax,QWORD PTR [rbp-0x5d0]
  7c4581:	4a 8d 34 29          	lea    rsi,[rcx+r13*1]
  7c4585:	48 89 b5 c0 f9 ff ff 	mov    QWORD PTR [rbp-0x640],rsi
  7c458c:	33 f6                	xor    esi,esi
  7c458e:	33 c9                	xor    ecx,ecx
  7c4590:	4d 03 fb             	add    r15,r11
  7c4593:	48 89 95 d8 f6 ff ff 	mov    QWORD PTR [rbp-0x928],rdx
  7c459a:	33 d2                	xor    edx,edx
  7c459c:	4d 03 cb             	add    r9,r11
  7c459f:	4c 89 b5 d0 f6 ff ff 	mov    QWORD PTR [rbp-0x930],r14
  7c45a6:	48 89 85 80 f7 ff ff 	mov    QWORD PTR [rbp-0x880],rax
  7c45ad:	4c 89 ad 90 f7 ff ff 	mov    QWORD PTR [rbp-0x870],r13
  7c45b4:	4c 89 a5 98 f7 ff ff 	mov    QWORD PTR [rbp-0x868],r12
  7c45bb:	4c 89 9d a0 f7 ff ff 	mov    QWORD PTR [rbp-0x860],r11
  7c45c2:	4c 89 bd b8 f9 ff ff 	mov    QWORD PTR [rbp-0x648],r15
  7c45c9:	4c 89 b5 88 f7 ff ff 	mov    QWORD PTR [rbp-0x878],r14
  7c45d0:	48 8b 85 d0 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x930]
  7c45d7:	49 89 d3             	mov    r11,rdx
  7c45da:	4c 8b a5 d8 f6 ff ff 	mov    r12,QWORD PTR [rbp-0x928]
  7c45e1:	4c 8b ad e8 f6 ff ff 	mov    r13,QWORD PTR [rbp-0x918]
  7c45e8:	4c 8b bd a8 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x658]
  7c45ef:	49 83 c2 02          	add    r10,0x2
  7c45f3:	4f 8d 34 07          	lea    r14,[r15+r8*1]
  7c45f7:	4c 8b bd 80 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x680]
  7c45fe:	c4 c1 7b 10 36       	vmovsd xmm6,QWORD PTR [r14]
  7c4603:	c4 81 49 16 0c 3e    	vmovhpd xmm1,xmm6,QWORD PTR [r14+r15*1]
  7c4609:	4f 8d 04 78          	lea    r8,[r8+r15*2]
  7c460d:	4c 8b b5 a0 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x660]
  7c4614:	4d 8d 3c 3e          	lea    r15,[r14+rdi*1]
  7c4618:	4c 8b b5 08 fa ff ff 	mov    r14,QWORD PTR [rbp-0x5f8]
  7c461f:	c4 c1 7b 10 3f       	vmovsd xmm7,QWORD PTR [r15]
  7c4624:	c4 01 41 16 04 37    	vmovhpd xmm8,xmm7,QWORD PTR [r15+r14*1]
  7c462a:	4a 8d 3c 77          	lea    rdi,[rdi+r14*2]
  7c462e:	4c 8b bd b0 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x650]
  7c4635:	c4 41 69 59 e8       	vmulpd xmm13,xmm2,xmm8
  7c463a:	4d 8d 34 37          	lea    r14,[r15+rsi*1]
  7c463e:	4c 8b bd 90 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x670]
  7c4645:	c4 41 7b 10 0e       	vmovsd xmm9,QWORD PTR [r14]
  7c464a:	c4 01 31 16 34 3e    	vmovhpd xmm14,xmm9,QWORD PTR [r14+r15*1]
  7c4650:	4a 8d 34 7e          	lea    rsi,[rsi+r15*2]
  7c4654:	4c 8b b5 b8 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x648]
  7c465b:	c4 c1 11 59 c6       	vmulpd xmm0,xmm13,xmm14
  7c4660:	4d 8d 3c 0e          	lea    r15,[r14+rcx*1]
  7c4664:	4c 8b b5 98 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x668]
  7c466b:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  7c4670:	c4 81 01 16 3c 37    	vmovhpd xmm7,xmm15,QWORD PTR [r15+r14*1]
  7c4676:	4d 8d 3c 09          	lea    r15,[r9+rcx*1]
  7c467a:	c4 c1 7b 10 37       	vmovsd xmm6,QWORD PTR [r15]
  7c467f:	4a 8d 0c 71          	lea    rcx,[rcx+r14*2]
  7c4683:	c4 01 49 16 04 37    	vmovhpd xmm8,xmm6,QWORD PTR [r15+r14*1]
  7c4689:	4c 8b b5 d0 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x630]
  7c4690:	4c 8b bd 88 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x678]
  7c4697:	c4 41 41 5c e8       	vsubpd xmm13,xmm7,xmm8
  7c469c:	4c 03 f2             	add    r14,rdx
  7c469f:	c4 41 7b 10 0e       	vmovsd xmm9,QWORD PTR [r14]
  7c46a4:	c4 01 31 16 34 3e    	vmovhpd xmm14,xmm9,QWORD PTR [r14+r15*1]
  7c46aa:	4d 8d 74 15 00       	lea    r14,[r13+rdx*1+0x0]
  7c46af:	c4 41 7b 10 3e       	vmovsd xmm15,QWORD PTR [r14]
  7c46b4:	4a 8d 14 7a          	lea    rdx,[rdx+r15*2]
  7c46b8:	c4 81 01 16 3c 3e    	vmovhpd xmm7,xmm15,QWORD PTR [r14+r15*1]
  7c46be:	4c 8b bd c0 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x640]
  7c46c5:	4c 8b b5 28 fa ff ff 	mov    r14,QWORD PTR [rbp-0x5d8]
  7c46cc:	c4 c1 11 58 f6       	vaddpd xmm6,xmm13,xmm14
  7c46d1:	c5 49 5c ff          	vsubpd xmm15,xmm6,xmm7
  7c46d5:	4d 03 fb             	add    r15,r11
  7c46d8:	c4 41 7b 10 07       	vmovsd xmm8,QWORD PTR [r15]
  7c46dd:	c4 01 39 16 2c 37    	vmovhpd xmm13,xmm8,QWORD PTR [r15+r14*1]
  7c46e3:	4f 8d 3c 1c          	lea    r15,[r12+r11*1]
  7c46e7:	c4 41 7b 10 0f       	vmovsd xmm9,QWORD PTR [r15]
  7c46ec:	4f 8d 1c 73          	lea    r11,[r11+r14*2]
  7c46f0:	c4 01 31 16 34 37    	vmovhpd xmm14,xmm9,QWORD PTR [r15+r14*1]
  7c46f6:	c4 c1 11 5c f6       	vsubpd xmm6,xmm13,xmm14
  7c46fb:	c5 81 58 fe          	vaddpd xmm7,xmm15,xmm6
  7c46ff:	c5 f9 59 c7          	vmulpd xmm0,xmm0,xmm7
  7c4703:	c5 f1 5c c8          	vsubpd xmm1,xmm1,xmm0
  7c4707:	c5 d9 5e c1          	vdivpd xmm0,xmm4,xmm1
  7c470b:	c5 f9 11 40 08       	vmovupd XMMWORD PTR [rax+0x8],xmm0
  7c4710:	48 83 c0 10          	add    rax,0x10
  7c4714:	4c 3b 95 30 fa ff ff 	cmp    r10,QWORD PTR [rbp-0x5d0]
  7c471b:	0f 82 c7 fe ff ff    	jb     7c45e8 <pre_step3d_mod_mp_pre_step3d_tile_+0xafe8>
  7c4721:	48 8b 85 80 f7 ff ff 	mov    rax,QWORD PTR [rbp-0x880]
  7c4728:	4c 8b b5 88 f7 ff ff 	mov    r14,QWORD PTR [rbp-0x878]
  7c472f:	4c 8b ad 90 f7 ff ff 	mov    r13,QWORD PTR [rbp-0x870]
  7c4736:	4c 8b a5 98 f7 ff ff 	mov    r12,QWORD PTR [rbp-0x868]
  7c473d:	4c 8b 9d a0 f7 ff ff 	mov    r11,QWORD PTR [rbp-0x860]
  7c4744:	4c 8b 95 28 fa ff ff 	mov    r10,QWORD PTR [rbp-0x5d8]
  7c474b:	4c 8b 8d 88 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x678]
  7c4752:	4c 8b 85 98 f9 ff ff 	mov    r8,QWORD PTR [rbp-0x668]
  7c4759:	48 8b bd 90 f9 ff ff 	mov    rdi,QWORD PTR [rbp-0x670]
  7c4760:	48 8b b5 08 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x5f8]
  7c4767:	48 8b 8d 80 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x680]
  7c476e:	4c 0f af d0          	imul   r10,rax
  7c4772:	4c 0f af c8          	imul   r9,rax
  7c4776:	4c 0f af c0          	imul   r8,rax
  7c477a:	48 0f af f8          	imul   rdi,rax
  7c477e:	48 0f af f0          	imul   rsi,rax
  7c4782:	48 0f af c8          	imul   rcx,rax
  7c4786:	48 3b 85 20 fa ff ff 	cmp    rax,QWORD PTR [rbp-0x5e0]
  7c478d:	0f 83 63 01 00 00    	jae    7c48f6 <pre_step3d_mod_mp_pre_step3d_tile_+0xb2f6>
  7c4793:	48 8b 95 b0 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x950]
  7c479a:	4c 89 b5 88 f7 ff ff 	mov    QWORD PTR [rbp-0x878],r14
  7c47a1:	4c 89 ad 90 f7 ff ff 	mov    QWORD PTR [rbp-0x870],r13
  7c47a8:	4c 89 a5 98 f7 ff ff 	mov    QWORD PTR [rbp-0x868],r12
  7c47af:	4e 8d 3c 1a          	lea    r15,[rdx+r11*1]
  7c47b3:	4c 89 bd f0 f6 ff ff 	mov    QWORD PTR [rbp-0x910],r15
  7c47ba:	4c 8b bd a8 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x958]
  7c47c1:	48 8b 95 c8 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x938]
  7c47c8:	4c 89 9d a0 f7 ff ff 	mov    QWORD PTR [rbp-0x860],r11
  7c47cf:	4d 03 fc             	add    r15,r12
  7c47d2:	4c 89 bd f8 f6 ff ff 	mov    QWORD PTR [rbp-0x908],r15
  7c47d9:	4c 8b bd c0 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x940]
  7c47e0:	49 03 d3             	add    rdx,r11
  7c47e3:	4c 8b 9d f8 f6 ff ff 	mov    r11,QWORD PTR [rbp-0x908]
  7c47ea:	4d 03 fc             	add    r15,r12
  7c47ed:	4c 89 bd d8 f9 ff ff 	mov    QWORD PTR [rbp-0x628],r15
  7c47f4:	4c 8b bd a0 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x960]
  7c47fb:	4c 8b a5 f0 f6 ff ff 	mov    r12,QWORD PTR [rbp-0x910]
  7c4802:	4d 03 fd             	add    r15,r13
  7c4805:	4c 89 bd e0 f6 ff ff 	mov    QWORD PTR [rbp-0x920],r15
  7c480c:	4c 8b bd b8 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x948]
  7c4813:	4d 03 fd             	add    r15,r13
  7c4816:	4c 89 bd c8 f9 ff ff 	mov    QWORD PTR [rbp-0x638],r15
  7c481d:	4d 8d 3c c6          	lea    r15,[r14+rax*8]
  7c4821:	4d 89 fd             	mov    r13,r15
  7c4824:	4c 8b b5 e0 f6 ff ff 	mov    r14,QWORD PTR [rbp-0x920]
  7c482b:	4c 8b bd a0 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x660]
  7c4832:	48 ff c0             	inc    rax
  7c4835:	c4 c1 7b 10 0c 10    	vmovsd xmm1,QWORD PTR [r8+rdx*1]
  7c483b:	c4 81 73 5c 34 20    	vsubsd xmm6,xmm1,QWORD PTR [r8+r12*1]
  7c4841:	c4 a1 53 59 04 3e    	vmulsd xmm0,xmm5,QWORD PTR [rsi+r15*1]
  7c4847:	4c 8b bd b0 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x650]
  7c484e:	48 03 b5 08 fa ff ff 	add    rsi,QWORD PTR [rbp-0x5f8]
  7c4855:	4c 03 85 98 f9 ff ff 	add    r8,QWORD PTR [rbp-0x668]
  7c485c:	c4 21 7b 59 34 3f    	vmulsd xmm14,xmm0,QWORD PTR [rdi+r15*1]
  7c4862:	4c 8b bd d8 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x628]
  7c4869:	48 03 bd 90 f9 ff ff 	add    rdi,QWORD PTR [rbp-0x670]
  7c4870:	c4 81 4b 58 3c 39    	vaddsd xmm7,xmm6,QWORD PTR [r9+r15*1]
  7c4876:	4c 8b bd c8 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x638]
  7c487d:	c4 01 43 5c 0c 19    	vsubsd xmm9,xmm7,QWORD PTR [r9+r11*1]
  7c4883:	c4 01 7b 10 04 3a    	vmovsd xmm8,QWORD PTR [r10+r15*1]
  7c4889:	4c 8b bd a8 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x658]
  7c4890:	4c 03 8d 88 f9 ff ff 	add    r9,QWORD PTR [rbp-0x678]
  7c4897:	c4 01 3b 5c 2c 32    	vsubsd xmm13,xmm8,QWORD PTR [r10+r14*1]
  7c489d:	c4 a1 7b 10 04 39    	vmovsd xmm0,QWORD PTR [rcx+r15*1]
  7c48a3:	c4 41 33 58 fd       	vaddsd xmm15,xmm9,xmm13
  7c48a8:	c4 c1 0b 59 cf       	vmulsd xmm1,xmm14,xmm15
  7c48ad:	48 03 8d 80 f9 ff ff 	add    rcx,QWORD PTR [rbp-0x680]
  7c48b4:	c5 fb 5c f1          	vsubsd xmm6,xmm0,xmm1
  7c48b8:	c5 e3 5e fe          	vdivsd xmm7,xmm3,xmm6
  7c48bc:	4c 03 95 28 fa ff ff 	add    r10,QWORD PTR [rbp-0x5d8]
  7c48c3:	c4 c1 7b 11 7d 08    	vmovsd QWORD PTR [r13+0x8],xmm7
  7c48c9:	49 83 c5 08          	add    r13,0x8
  7c48cd:	48 3b 85 20 fa ff ff 	cmp    rax,QWORD PTR [rbp-0x5e0]
  7c48d4:	0f 82 51 ff ff ff    	jb     7c482b <pre_step3d_mod_mp_pre_step3d_tile_+0xb22b>
  7c48da:	4c 8b b5 88 f7 ff ff 	mov    r14,QWORD PTR [rbp-0x878]
  7c48e1:	4c 8b ad 90 f7 ff ff 	mov    r13,QWORD PTR [rbp-0x870]
  7c48e8:	4c 8b a5 98 f7 ff ff 	mov    r12,QWORD PTR [rbp-0x868]
  7c48ef:	4c 8b 9d a0 f7 ff ff 	mov    r11,QWORD PTR [rbp-0x860]
  7c48f6:	48 8b 85 a8 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x658]
  7c48fd:	48 8b 95 f8 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x808]
  7c4904:	48 ff c2             	inc    rdx
  7c4907:	48 03 85 d0 f7 ff ff 	add    rax,QWORD PTR [rbp-0x830]
  7c490e:	4c 03 9d d8 f7 ff ff 	add    r11,QWORD PTR [rbp-0x828]
  7c4915:	4c 03 a5 e0 f7 ff ff 	add    r12,QWORD PTR [rbp-0x820]
  7c491c:	4c 03 ad 88 f8 ff ff 	add    r13,QWORD PTR [rbp-0x778]
  7c4923:	4c 03 b5 00 fa ff ff 	add    r14,QWORD PTR [rbp-0x600]
  7c492a:	48 89 85 a8 f9 ff ff 	mov    QWORD PTR [rbp-0x658],rax
  7c4931:	48 89 95 f8 f7 ff ff 	mov    QWORD PTR [rbp-0x808],rdx
  7c4938:	48 3b 95 e8 f9 ff ff 	cmp    rdx,QWORD PTR [rbp-0x618]
  7c493f:	0f 82 c7 fb ff ff    	jb     7c450c <pre_step3d_mod_mp_pre_step3d_tile_+0xaf0c>
  7c4945:	48 8b 85 10 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x9f0]
  7c494c:	8b 8d 08 f6 ff ff    	mov    ecx,DWORD PTR [rbp-0x9f8]
  7c4952:	45 33 e4             	xor    r12d,r12d
  7c4955:	48 83 bd 60 f8 ff ff 	cmp    QWORD PTR [rbp-0x7a0],0x0
  7c495c:	00 
  7c495d:	0f 8e 52 5b 00 00    	jle    7ca4b5 <pre_step3d_mod_mp_pre_step3d_tile_+0x10eb5>
  7c4963:	48 8b bd 50 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xab0]
  7c496a:	48 0f af f8          	imul   rdi,rax
  7c496e:	c5 fd 10 2d 0a 68 08 	vmovupd ymm5,YMMWORD PTR [rip+0x8680a]        # 84b180 <var$630.126.450+0x11e0>
  7c4975:	00 
  7c4976:	c5 f9 10 1d 72 70 08 	vmovupd xmm3,XMMWORD PTR [rip+0x87072]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  7c497d:	00 
  7c497e:	c4 41 31 57 c9       	vxorpd xmm9,xmm9,xmm9
  7c4983:	c5 f9 10 35 15 75 08 	vmovupd xmm6,XMMWORD PTR [rip+0x87515]        # 84bea0 <__STRLITPACK_54.50+0xb0>
  7c498a:	00 
  7c498b:	c5 f9 10 3d 1d 75 08 	vmovupd xmm7,XMMWORD PTR [rip+0x8751d]        # 84beb0 <__STRLITPACK_54.50+0xc0>
  7c4992:	00 
  7c4993:	c5 fb 10 25 0d 80 08 	vmovsd xmm4,QWORD PTR [rip+0x8800d]        # 84c9a8 <__STRLITPACK_0.112+0x898>
  7c499a:	00 
  7c499b:	4c 8b 85 18 f5 ff ff 	mov    r8,QWORD PTR [rbp-0xae8]
  7c49a2:	4c 8b ad f0 f3 ff ff 	mov    r13,QWORD PTR [rbp-0xc10]
  7c49a9:	4c 8b b5 f0 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xa10]
  7c49b0:	4c 8b 8d e8 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x618]
  7c49b7:	49 8d 34 38          	lea    rsi,[r8+rdi*1]
  7c49bb:	48 89 bd 50 f9 ff ff 	mov    QWORD PTR [rbp-0x6b0],rdi
  7c49c2:	48 8b bd 88 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x778]
  7c49c9:	47 8b 54 b5 fc       	mov    r10d,DWORD PTR [r13+r14*4-0x4]
  7c49ce:	4c 8b ad 10 f4 ff ff 	mov    r13,QWORD PTR [rbp-0xbf0]
  7c49d5:	41 83 e2 01          	and    r10d,0x1
  7c49d9:	4c 8b 9d 60 f5 ff ff 	mov    r11,QWORD PTR [rbp-0xaa0]
  7c49e0:	4d 89 ee             	mov    r14,r13
  7c49e3:	4c 89 a5 30 f9 ff ff 	mov    QWORD PTR [rbp-0x6d0],r12
  7c49ea:	4d 8d 61 ff          	lea    r12,[r9-0x1]
  7c49ee:	44 89 95 80 f8 ff ff 	mov    DWORD PTR [rbp-0x780],r10d
  7c49f5:	49 89 fa             	mov    r10,rdi
  7c49f8:	4c 0f af d8          	imul   r11,rax
  7c49fc:	4c 0f af f0          	imul   r14,rax
  7c4a00:	4d 0f af d4          	imul   r10,r12
  7c4a04:	c5 fd 10 15 94 67 08 	vmovupd ymm2,YMMWORD PTR [rip+0x86794]        # 84b1a0 <var$630.126.450+0x1200>
  7c4a0b:	00 
  7c4a0c:	c5 7b 10 05 9c 7f 08 	vmovsd xmm8,QWORD PTR [rip+0x87f9c]        # 84c9b0 <__STRLITPACK_0.112+0x8a0>
  7c4a13:	00 
  7c4a14:	89 8d 08 f6 ff ff    	mov    DWORD PTR [rbp-0x9f8],ecx
  7c4a1a:	48 8b 8d 48 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xab8]
  7c4a21:	48 0f af c8          	imul   rcx,rax
  7c4a25:	48 89 85 10 f6 ff ff 	mov    QWORD PTR [rbp-0x9f0],rax
  7c4a2c:	48 8b 85 08 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xaf8]
  7c4a33:	4c 89 b5 58 f6 ff ff 	mov    QWORD PTR [rbp-0x9a8],r14
  7c4a3a:	48 89 b5 48 f9 ff ff 	mov    QWORD PTR [rbp-0x6b8],rsi
  7c4a41:	48 8b b5 80 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb80]
  7c4a48:	4e 8d 34 18          	lea    r14,[rax+r11*1]
  7c4a4c:	48 8b 85 38 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xac8]
  7c4a53:	4c 03 d6             	add    r10,rsi
  7c4a56:	4c 03 95 78 f4 ff ff 	add    r10,QWORD PTR [rbp-0xb88]
  7c4a5d:	4c 8b 85 d8 f3 ff ff 	mov    r8,QWORD PTR [rbp-0xc28]
  7c4a64:	4c 03 d1             	add    r10,rcx
  7c4a67:	4c 89 9d 58 f9 ff ff 	mov    QWORD PTR [rbp-0x6a8],r11
  7c4a6e:	4c 89 b5 a0 fa ff ff 	mov    QWORD PTR [rbp-0x560],r14
  7c4a75:	4c 8d 34 08          	lea    r14,[rax+rcx*1]
  7c4a79:	48 8b 85 70 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb90]
  7c4a80:	4c 8b 9d 08 f4 ff ff 	mov    r11,QWORD PTR [rbp-0xbf8]
  7c4a87:	4c 89 95 60 fa ff ff 	mov    QWORD PTR [rbp-0x5a0],r10
  7c4a8e:	4d 89 c2             	mov    r10,r8
  7c4a91:	49 c1 e2 04          	shl    r10,0x4
  7c4a95:	4c 89 b5 48 fa ff ff 	mov    QWORD PTR [rbp-0x5b8],r14
  7c4a9c:	4e 8d 34 18          	lea    r14,[rax+r11*1]
  7c4aa0:	4c 03 d0             	add    r10,rax
  7c4aa3:	4c 89 d8             	mov    rax,r11
  7c4aa6:	48 2b 85 d0 f3 ff ff 	sub    rax,QWORD PTR [rbp-0xc30]
  7c4aad:	4d 03 d3             	add    r10,r11
  7c4ab0:	44 8b bd a0 f4 ff ff 	mov    r15d,DWORD PTR [rbp-0xb60]
  7c4ab7:	4c 89 a5 b0 f3 ff ff 	mov    QWORD PTR [rbp-0xc50],r12
  7c4abe:	4c 89 b5 38 fa ff ff 	mov    QWORD PTR [rbp-0x5c8],r14
  7c4ac5:	4e 8d 04 c0          	lea    r8,[rax+r8*8]
  7c4ac9:	4c 89 85 98 f3 ff ff 	mov    QWORD PTR [rbp-0xc68],r8
  7c4ad0:	41 8d 57 fe          	lea    edx,[r15-0x2]
  7c4ad4:	4c 8b 85 00 fa ff ff 	mov    r8,QWORD PTR [rbp-0x600]
  7c4adb:	4c 89 c0             	mov    rax,r8
  7c4ade:	49 0f af c4          	imul   rax,r12
  7c4ae2:	4d 0f af c8          	imul   r9,r8
  7c4ae6:	48 63 d2             	movsxd rdx,edx
  7c4ae9:	49 03 c6             	add    rax,r14
  7c4aec:	4c 8b a5 60 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xba0]
  7c4af3:	4d 03 ce             	add    r9,r14
  7c4af6:	48 89 95 e8 f7 ff ff 	mov    QWORD PTR [rbp-0x818],rdx
  7c4afd:	4c 8b bd 48 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xbb8]
  7c4b04:	4d 0f af fd          	imul   r15,r13
  7c4b08:	4c 89 8d 50 fa ff ff 	mov    QWORD PTR [rbp-0x5b0],r9
  7c4b0f:	4f 8d 34 23          	lea    r14,[r11+r12*1]
  7c4b13:	4c 89 b5 40 fa ff ff 	mov    QWORD PTR [rbp-0x5c0],r14
  7c4b1a:	4c 8d 34 3f          	lea    r14,[rdi+rdi*1]
  7c4b1e:	4c 8b 9d c0 f4 ff ff 	mov    r11,QWORD PTR [rbp-0xb40]
  7c4b25:	48 8d 52 ff          	lea    rdx,[rdx-0x1]
  7c4b29:	48 89 95 90 f8 ff ff 	mov    QWORD PTR [rbp-0x770],rdx
  7c4b30:	48 8b 95 98 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xb68]
  7c4b37:	4c 2b f2             	sub    r14,rdx
  7c4b3a:	4c 03 b5 90 f4 ff ff 	add    r14,QWORD PTR [rbp-0xb70]
  7c4b41:	4d 8d 04 7b          	lea    r8,[r11+rdi*2]
  7c4b45:	4c 03 b5 b8 f4 ff ff 	add    r14,QWORD PTR [rbp-0xb48]
  7c4b4c:	4c 03 f1             	add    r14,rcx
  7c4b4f:	4c 89 b5 90 f1 ff ff 	mov    QWORD PTR [rbp-0xe70],r14
  7c4b56:	4c 8b b5 c0 f3 ff ff 	mov    r14,QWORD PTR [rbp-0xc40]
  7c4b5d:	4d 0f af f5          	imul   r14,r13
  7c4b61:	4c 8b 8d f0 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x610]
  7c4b68:	4d 89 f5             	mov    r13,r14
  7c4b6b:	4c 89 85 98 f1 ff ff 	mov    QWORD PTR [rbp-0xe68],r8
  7c4b72:	4c 2b c2             	sub    r8,rdx
  7c4b75:	4d 2b ef             	sub    r13,r15
  7c4b78:	4c 89 cf             	mov    rdi,r9
  7c4b7b:	4c 03 85 88 f4 ff ff 	add    r8,QWORD PTR [rbp-0xb78]
  7c4b82:	4f 8d 1c 09          	lea    r11,[r9+r9*1]
  7c4b86:	4d 89 dc             	mov    r12,r11
  7c4b89:	49 f7 db             	neg    r11
  7c4b8c:	4d 03 d9             	add    r11,r9
  7c4b8f:	4c 03 c6             	add    r8,rsi
  7c4b92:	4d 03 dd             	add    r11,r13
  7c4b95:	4c 03 c1             	add    r8,rcx
  7c4b98:	48 8b 95 18 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xbe8]
  7c4b9f:	49 2b fe             	sub    rdi,r14
  7c4ba2:	48 89 85 58 fa ff ff 	mov    QWORD PTR [rbp-0x5a8],rax
  7c4ba9:	4d 2b e6             	sub    r12,r14
  7c4bac:	4c 89 9d 90 f6 ff ff 	mov    QWORD PTR [rbp-0x970],r11
  7c4bb3:	48 8b 85 c8 f3 ff ff 	mov    rax,QWORD PTR [rbp-0xc38]
  7c4bba:	48 8b b5 18 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x5e8]
  7c4bc1:	4c 8b 9d e0 f9 ff ff 	mov    r11,QWORD PTR [rbp-0x620]
  7c4bc8:	48 0f af c6          	imul   rax,rsi
  7c4bcc:	4c 0f af de          	imul   r11,rsi
  7c4bd0:	4c 89 95 f0 f7 ff ff 	mov    QWORD PTR [rbp-0x810],r10
  7c4bd7:	4e 8d 14 0a          	lea    r10,[rdx+r9*1]
  7c4bdb:	48 0f af 95 e8 f3 ff 	imul   rdx,QWORD PTR [rbp-0xc18]
  7c4be2:	ff 
  7c4be3:	4c 89 85 20 f9 ff ff 	mov    QWORD PTR [rbp-0x6e0],r8
  7c4bea:	49 8d 34 13          	lea    rsi,[r11+rdx*1]
  7c4bee:	4c 8b 85 20 f4 ff ff 	mov    r8,QWORD PTR [rbp-0xbe0]
  7c4bf5:	48 89 8d 28 f9 ff ff 	mov    QWORD PTR [rbp-0x6d8],rcx
  7c4bfc:	4c 89 c1             	mov    rcx,r8
  7c4bff:	48 2b 8d 08 f8 ff ff 	sub    rcx,QWORD PTR [rbp-0x7f8]
  7c4c06:	48 89 8d a0 f1 ff ff 	mov    QWORD PTR [rbp-0xe60],rcx
  7c4c0d:	4c 89 f9             	mov    rcx,r15
  7c4c10:	48 2b c8             	sub    rcx,rax
  7c4c13:	49 2b c3             	sub    rax,r11
  7c4c16:	48 89 85 c0 f1 ff ff 	mov    QWORD PTR [rbp-0xe40],rax
  7c4c1d:	4c 89 d0             	mov    rax,r10
  7c4c20:	48 2b c7             	sub    rax,rdi
  7c4c23:	48 03 f1             	add    rsi,rcx
  7c4c26:	48 f7 d8             	neg    rax
  7c4c29:	49 03 c0             	add    rax,r8
  7c4c2c:	48 03 c6             	add    rax,rsi
  7c4c2f:	4c 89 9d c0 f7 ff ff 	mov    QWORD PTR [rbp-0x840],r11
  7c4c36:	4c 8b 9d 58 f6 ff ff 	mov    r11,QWORD PTR [rbp-0x9a8]
  7c4c3d:	49 03 c3             	add    rax,r11
  7c4c40:	48 89 85 50 f8 ff ff 	mov    QWORD PTR [rbp-0x7b0],rax
  7c4c47:	4c 89 d0             	mov    rax,r10
  7c4c4a:	49 2b c4             	sub    rax,r12
  7c4c4d:	48 f7 d8             	neg    rax
  7c4c50:	49 03 c0             	add    rax,r8
  7c4c53:	48 03 c6             	add    rax,rsi
  7c4c56:	4c 89 bd b0 f7 ff ff 	mov    QWORD PTR [rbp-0x850],r15
  7c4c5d:	4c 03 fa             	add    r15,rdx
  7c4c60:	48 89 95 c8 f1 ff ff 	mov    QWORD PTR [rbp-0xe38],rdx
  7c4c67:	4b 8d 14 49          	lea    rdx,[r9+r9*2]
  7c4c6b:	49 03 c3             	add    rax,r11
  7c4c6e:	4d 03 e7             	add    r12,r15
  7c4c71:	48 89 85 28 f8 ff ff 	mov    QWORD PTR [rbp-0x7d8],rax
  7c4c78:	48 89 d0             	mov    rax,rdx
  7c4c7b:	4c 89 a5 d0 f1 ff ff 	mov    QWORD PTR [rbp-0xe30],r12
  7c4c82:	49 2b c6             	sub    rax,r14
  7c4c85:	4d 89 d4             	mov    r12,r10
  7c4c88:	48 f7 da             	neg    rdx
  7c4c8b:	4c 2b e0             	sub    r12,rax
  7c4c8e:	49 03 c7             	add    rax,r15
  7c4c91:	49 f7 dc             	neg    r12
  7c4c94:	49 03 d1             	add    rdx,r9
  7c4c97:	4d 03 e0             	add    r12,r8
  7c4c9a:	49 03 d5             	add    rdx,r13
  7c4c9d:	4c 03 e6             	add    r12,rsi
  7c4ca0:	48 f7 da             	neg    rdx
  7c4ca3:	48 89 85 88 f6 ff ff 	mov    QWORD PTR [rbp-0x978],rax
  7c4caa:	4a 8d 04 8d 00 00 00 	lea    rax,[r9*4+0x0]
  7c4cb1:	00 
  7c4cb2:	4d 03 e3             	add    r12,r11
  7c4cb5:	4c 89 a5 38 f8 ff ff 	mov    QWORD PTR [rbp-0x7c8],r12
  7c4cbc:	49 89 c4             	mov    r12,rax
  7c4cbf:	4d 2b e6             	sub    r12,r14
  7c4cc2:	4d 03 f1             	add    r14,r9
  7c4cc5:	4c 89 95 a8 f1 ff ff 	mov    QWORD PTR [rbp-0xe58],r10
  7c4ccc:	4d 2b d4             	sub    r10,r12
  7c4ccf:	49 f7 da             	neg    r10
  7c4cd2:	4d 03 e7             	add    r12,r15
  7c4cd5:	4d 03 d0             	add    r10,r8
  7c4cd8:	4c 03 ff             	add    r15,rdi
  7c4cdb:	4c 8b 85 98 f4 ff ff 	mov    r8,QWORD PTR [rbp-0xb68]
  7c4ce2:	49 03 f2             	add    rsi,r10
  7c4ce5:	48 89 bd b0 f1 ff ff 	mov    QWORD PTR [rbp-0xe50],rdi
  7c4cec:	49 03 f3             	add    rsi,r11
  7c4cef:	4c 2b 85 b8 f4 ff ff 	sub    r8,QWORD PTR [rbp-0xb48]
  7c4cf6:	4c 2b f1             	sub    r14,rcx
  7c4cf9:	48 8b bd 68 f4 ff ff 	mov    rdi,QWORD PTR [rbp-0xb98]
  7c4d00:	49 f7 de             	neg    r14
  7c4d03:	4c 89 bd 98 f6 ff ff 	mov    QWORD PTR [rbp-0x968],r15
  7c4d0a:	48 f7 d8             	neg    rax
  7c4d0d:	4c 8b bd 98 f1 ff ff 	mov    r15,QWORD PTR [rbp-0xe68]
  7c4d14:	49 03 c1             	add    rax,r9
  7c4d17:	48 2b bd 80 f4 ff ff 	sub    rdi,QWORD PTR [rbp-0xb80]
  7c4d1e:	4d 2b f8             	sub    r15,r8
  7c4d21:	4c 2b ff             	sub    r15,rdi
  7c4d24:	49 03 c5             	add    rax,r13
  7c4d27:	4c 8b 85 28 fa ff ff 	mov    r8,QWORD PTR [rbp-0x5d8]
  7c4d2e:	48 f7 d8             	neg    rax
  7c4d31:	48 89 b5 68 f6 ff ff 	mov    QWORD PTR [rbp-0x998],rsi
  7c4d38:	48 8b b5 08 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x7f8]
  7c4d3f:	4c 89 a5 80 f6 ff ff 	mov    QWORD PTR [rbp-0x980],r12
  7c4d46:	4b 8d 3c 47          	lea    rdi,[r15+r8*2]
  7c4d4a:	48 01 bd 28 f9 ff ff 	add    QWORD PTR [rbp-0x6d8],rdi
  7c4d51:	48 8b bd 18 f4 ff ff 	mov    rdi,QWORD PTR [rbp-0xbe8]
  7c4d58:	48 2b f7             	sub    rsi,rdi
  7c4d5b:	4c 8d 85 a0 f1 ff ff 	lea    r8,[rbp-0xe60]
  7c4d62:	4d 8b 20             	mov    r12,QWORD PTR [r8]
  7c4d65:	48 89 b5 d8 f1 ff ff 	mov    QWORD PTR [rbp-0xe28],rsi
  7c4d6c:	48 89 8d b8 f1 ff ff 	mov    QWORD PTR [rbp-0xe48],rcx
  7c4d73:	4c 8b 95 c8 f1 ff ff 	mov    r10,QWORD PTR [rbp-0xe38]
  7c4d7a:	49 8d 0c 34          	lea    rcx,[r12+rsi*1]
  7c4d7e:	48 8b b5 e8 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x618]
  7c4d85:	4c 03 f1             	add    r14,rcx
  7c4d88:	4c 03 a5 c8 f4 ff ff 	add    r12,QWORD PTR [rbp-0xb38]
  7c4d8f:	48 03 c1             	add    rax,rcx
  7c4d92:	4d 89 20             	mov    QWORD PTR [r8],r12
  7c4d95:	48 03 d1             	add    rdx,rcx
  7c4d98:	4c 8b a5 c0 f7 ff ff 	mov    r12,QWORD PTR [rbp-0x840]
  7c4d9f:	4c 8d 7e fe          	lea    r15,[rsi-0x2]
  7c4da3:	4d 0f af f9          	imul   r15,r9
  7c4da7:	49 0f af f1          	imul   rsi,r9
  7c4dab:	4d 03 fc             	add    r15,r12
  7c4dae:	49 03 f4             	add    rsi,r12
  7c4db1:	4d 03 fe             	add    r15,r14
  7c4db4:	4d 03 fa             	add    r15,r10
  7c4db7:	4d 03 fb             	add    r15,r11
  7c4dba:	4c 89 bd 20 f8 ff ff 	mov    QWORD PTR [rbp-0x7e0],r15
  7c4dc1:	4d 89 cf             	mov    r15,r9
  7c4dc4:	4c 0f af bd b0 f3 ff 	imul   r15,QWORD PTR [rbp-0xc50]
  7c4dcb:	ff 
  7c4dcc:	4d 03 fc             	add    r15,r12
  7c4dcf:	4d 03 fe             	add    r15,r14
  7c4dd2:	4c 03 f6             	add    r14,rsi
  7c4dd5:	48 8b b5 18 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x5e8]
  7c4ddc:	4d 03 fa             	add    r15,r10
  7c4ddf:	4d 03 fb             	add    r15,r11
  7c4de2:	4d 03 f2             	add    r14,r10
  7c4de5:	4c 89 bd 30 f8 ff ff 	mov    QWORD PTR [rbp-0x7d0],r15
  7c4dec:	4d 03 f3             	add    r14,r11
  7c4def:	4c 8b 85 90 f6 ff ff 	mov    r8,QWORD PTR [rbp-0x970]
  7c4df6:	4d 8d 3c 72          	lea    r15,[r10+rsi*2]
  7c4dfa:	49 f7 df             	neg    r15
  7c4dfd:	49 f7 d8             	neg    r8
  7c4e00:	4c 8b 95 c0 f1 ff ff 	mov    r10,QWORD PTR [rbp-0xe40]
  7c4e07:	4d 03 fa             	add    r15,r10
  7c4e0a:	49 2b c7             	sub    rax,r15
  7c4e0d:	49 2b d7             	sub    rdx,r15
  7c4e10:	49 03 c3             	add    rax,r11
  7c4e13:	49 03 d3             	add    rdx,r11
  7c4e16:	48 89 85 78 f6 ff ff 	mov    QWORD PTR [rbp-0x988],rax
  7c4e1d:	48 8d 04 7f          	lea    rax,[rdi+rdi*2]
  7c4e21:	48 2b f8             	sub    rdi,rax
  7c4e24:	4d 03 d5             	add    r10,r13
  7c4e27:	48 89 95 70 f6 ff ff 	mov    QWORD PTR [rbp-0x990],rdx
  7c4e2e:	48 f7 df             	neg    rdi
  7c4e31:	48 8b 95 20 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xbe0]
  7c4e38:	4c 03 c1             	add    r8,rcx
  7c4e3b:	48 03 fa             	add    rdi,rdx
  7c4e3e:	49 2b c1             	sub    rax,r9
  7c4e41:	49 2b fa             	sub    rdi,r10
  7c4e44:	4d 2b c7             	sub    r8,r15
  7c4e47:	4c 8b 8d d8 f1 ff ff 	mov    r9,QWORD PTR [rbp-0xe28]
  7c4e4e:	4d 03 c3             	add    r8,r11
  7c4e51:	4c 03 c8             	add    r9,rax
  7c4e54:	49 f7 dd             	neg    r13
  7c4e57:	4c 89 85 90 f6 ff ff 	mov    QWORD PTR [rbp-0x970],r8
  7c4e5e:	4c 03 e9             	add    r13,rcx
  7c4e61:	4c 8b 85 a0 f1 ff ff 	mov    r8,QWORD PTR [rbp-0xe60]
  7c4e68:	4c 8d 14 77          	lea    r10,[rdi+rsi*2]
  7c4e6c:	48 8b bd b0 f1 ff ff 	mov    rdi,QWORD PTR [rbp-0xe50]
  7c4e73:	48 03 c7             	add    rax,rdi
  7c4e76:	4d 03 c1             	add    r8,r9
  7c4e79:	48 03 c8             	add    rcx,rax
  7c4e7c:	49 03 f8             	add    rdi,r8
  7c4e7f:	4d 03 d3             	add    r10,r11
  7c4e82:	48 8b 85 b8 f1 ff ff 	mov    rax,QWORD PTR [rbp-0xe48]
  7c4e89:	4d 2b ef             	sub    r13,r15
  7c4e8c:	48 8b b5 08 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x5f8]
  7c4e93:	48 03 c1             	add    rax,rcx
  7c4e96:	48 8b 8d 50 f4 ff ff 	mov    rcx,QWORD PTR [rbp-0xbb0]
  7c4e9d:	4c 03 e0             	add    r12,rax
  7c4ea0:	4c 8b 85 b0 f7 ff ff 	mov    r8,QWORD PTR [rbp-0x850]
  7c4ea7:	4d 03 e3             	add    r12,r11
  7c4eaa:	4c 03 c7             	add    r8,rdi
  7c4ead:	4d 03 eb             	add    r13,r11
  7c4eb0:	48 8b bd b0 f4 ff ff 	mov    rdi,QWORD PTR [rbp-0xb50]
  7c4eb7:	48 8d 0c 71          	lea    rcx,[rcx+rsi*2]
  7c4ebb:	48 2b bd 30 f4 ff ff 	sub    rdi,QWORD PTR [rbp-0xbd0]
  7c4ec2:	4d 03 c3             	add    r8,r11
  7c4ec5:	48 03 bd 40 f4 ff ff 	add    rdi,QWORD PTR [rbp-0xbc0]
  7c4ecc:	4c 8b 8d 90 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x670]
  7c4ed3:	48 03 f9             	add    rdi,rcx
  7c4ed6:	48 8b 85 28 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xbd8]
  7c4edd:	4c 89 95 b8 f7 ff ff 	mov    QWORD PTR [rbp-0x848],r10
  7c4ee4:	48 8d 8d 58 f9 ff ff 	lea    rcx,[rbp-0x6a8]
  7c4eeb:	4c 8b 11             	mov    r10,QWORD PTR [rcx]
  7c4eee:	49 03 fa             	add    rdi,r10
  7c4ef1:	4c 03 95 90 f5 ff ff 	add    r10,QWORD PTR [rbp-0xa70]
  7c4ef8:	4c 89 11             	mov    QWORD PTR [rcx],r10
  7c4efb:	4c 89 a5 c0 f7 ff ff 	mov    QWORD PTR [rbp-0x840],r12
  7c4f02:	4e 8d 24 48          	lea    r12,[rax+r9*2]
  7c4f06:	4c 8b 8d f0 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xa10]
  7c4f0d:	4c 89 c9             	mov    rcx,r9
  7c4f10:	4c 8b 95 f8 f3 ff ff 	mov    r10,QWORD PTR [rbp-0xc08]
  7c4f17:	48 8b 85 00 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xc00]
  7c4f1e:	4c 2b d0             	sub    r10,rax
  7c4f21:	49 0f af c1          	imul   rax,r9
  7c4f25:	48 8b b5 a8 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb58]
  7c4f2c:	4c 03 d0             	add    r10,rax
  7c4f2f:	48 2b b5 38 f4 ff ff 	sub    rsi,QWORD PTR [rbp-0xbc8]
  7c4f36:	48 03 b5 58 f4 ff ff 	add    rsi,QWORD PTR [rbp-0xba8]
  7c4f3d:	49 03 f4             	add    rsi,r12
  7c4f40:	44 8b a5 b8 f3 ff ff 	mov    r12d,DWORD PTR [rbp-0xc48]
  7c4f47:	48 8d 85 50 f9 ff ff 	lea    rax,[rbp-0x6b0]
  7c4f4e:	4c 8b 38             	mov    r15,QWORD PTR [rax]
  7c4f51:	49 03 f7             	add    rsi,r15
  7c4f54:	4c 03 bd 98 f5 ff ff 	add    r15,QWORD PTR [rbp-0xa68]
  7c4f5b:	48 c1 e1 05          	shl    rcx,0x5
  7c4f5f:	4c 89 38             	mov    QWORD PTR [rax],r15
  7c4f62:	49 03 c9             	add    rcx,r9
  7c4f65:	48 c1 e1 05          	shl    rcx,0x5
  7c4f69:	45 8d 7c 24 01       	lea    r15d,[r12+0x1]
  7c4f6e:	4c 8b a5 c8 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb38]
  7c4f75:	48 89 8d e0 f5 ff ff 	mov    QWORD PTR [rbp-0xa20],rcx
  7c4f7c:	8b 85 e0 f3 ff ff    	mov    eax,DWORD PTR [rbp-0xc20]
  7c4f82:	8b 8d 08 f6 ff ff    	mov    ecx,DWORD PTR [rbp-0x9f8]
  7c4f88:	4c 89 95 48 f8 ff ff 	mov    QWORD PTR [rbp-0x7b8],r10
  7c4f8f:	4c 8b 95 78 f8 ff ff 	mov    r10,QWORD PTR [rbp-0x788]
  7c4f96:	49 d1 ea             	shr    r10,1
  7c4f99:	44 8d 0c 08          	lea    r9d,[rax+rcx*1]
  7c4f9d:	48 8d 8d 40 f8 ff ff 	lea    rcx,[rbp-0x7c0]
  7c4fa4:	4c 89 11             	mov    QWORD PTR [rcx],r10
  7c4fa7:	4d 8d 14 14          	lea    r10,[r12+rdx*1]
  7c4fab:	4c 2b 95 a8 f1 ff ff 	sub    r10,QWORD PTR [rbp-0xe58]
  7c4fb2:	44 89 8d 00 f5 ff ff 	mov    DWORD PTR [rbp-0xb00],r9d
  7c4fb9:	4c 8d a5 80 f6 ff ff 	lea    r12,[rbp-0x980]
  7c4fc0:	49 8b 14 24          	mov    rdx,QWORD PTR [r12]
  7c4fc4:	48 8b 85 98 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x968]
  7c4fcb:	49 03 d2             	add    rdx,r10
  7c4fce:	4c 8b 8d 88 f6 ff ff 	mov    r9,QWORD PTR [rbp-0x978]
  7c4fd5:	49 03 c2             	add    rax,r10
  7c4fd8:	4d 03 ca             	add    r9,r10
  7c4fdb:	49 03 d3             	add    rdx,r11
  7c4fde:	4c 03 95 d0 f1 ff ff 	add    r10,QWORD PTR [rbp-0xe30]
  7c4fe5:	49 03 c3             	add    rax,r11
  7c4fe8:	4d 03 cb             	add    r9,r11
  7c4feb:	4d 03 da             	add    r11,r10
  7c4fee:	49 89 14 24          	mov    QWORD PTR [r12],rdx
  7c4ff2:	48 89 85 98 f6 ff ff 	mov    QWORD PTR [rbp-0x968],rax
  7c4ff9:	4c 89 8d 88 f6 ff ff 	mov    QWORD PTR [rbp-0x978],r9
  7c5000:	4c 89 9d 58 f6 ff ff 	mov    QWORD PTR [rbp-0x9a8],r11
  7c5007:	44 89 bd 00 f6 ff ff 	mov    DWORD PTR [rbp-0xa00],r15d
  7c500e:	4c 8b a5 30 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6d0]
  7c5015:	4c 8b 19             	mov    r11,QWORD PTR [rcx]
  7c5018:	4c 8b 8d 48 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x7b8]
  7c501f:	4c 8b 95 50 f8 ff ff 	mov    r10,QWORD PTR [rbp-0x7b0]
  7c5026:	4c 89 85 b0 f7 ff ff 	mov    QWORD PTR [rbp-0x850],r8
  7c502d:	48 89 b5 90 fa ff ff 	mov    QWORD PTR [rbp-0x570],rsi
  7c5034:	48 89 bd 98 fa ff ff 	mov    QWORD PTR [rbp-0x568],rdi
  7c503b:	4c 89 ad 60 f6 ff ff 	mov    QWORD PTR [rbp-0x9a0],r13
  7c5042:	4c 89 b5 10 f8 ff ff 	mov    QWORD PTR [rbp-0x7f0],r14
  7c5049:	48 83 bd 28 fa ff ff 	cmp    QWORD PTR [rbp-0x5d8],0x8
  7c5050:	08 
  7c5051:	0f 85 ee 01 00 00    	jne    7c5245 <pre_step3d_mod_mp_pre_step3d_tile_+0xbc45>
  7c5057:	48 83 bd 18 fa ff ff 	cmp    QWORD PTR [rbp-0x5e8],0x8
  7c505e:	08 
  7c505f:	0f 85 e0 01 00 00    	jne    7c5245 <pre_step3d_mod_mp_pre_step3d_tile_+0xbc45>
  7c5065:	45 33 ed             	xor    r13d,r13d
  7c5068:	4c 8b 85 f0 f7 ff ff 	mov    r8,QWORD PTR [rbp-0x810]
  7c506f:	33 f6                	xor    esi,esi
  7c5071:	48 8b bd 90 f1 ff ff 	mov    rdi,QWORD PTR [rbp-0xe70]
  7c5078:	48 83 bd e8 f7 ff ff 	cmp    QWORD PTR [rbp-0x818],0x2
  7c507f:	02 
  7c5080:	0f 8c 63 54 00 00    	jl     7ca4e9 <pre_step3d_mod_mp_pre_step3d_tile_+0x10ee9>
  7c5086:	48 8b 85 08 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x7f8]
  7c508d:	49 0f af c4          	imul   rax,r12
  7c5091:	48 8b 95 98 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x968]
  7c5098:	4c 8b b5 88 f6 ff ff 	mov    r14,QWORD PTR [rbp-0x978]
  7c509f:	48 8b 8d 80 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x980]
  7c50a6:	4c 89 a5 30 f9 ff ff 	mov    QWORD PTR [rbp-0x6d0],r12
  7c50ad:	4c 8d 3c 02          	lea    r15,[rdx+rax*1]
  7c50b1:	4c 89 bd 18 f9 ff ff 	mov    QWORD PTR [rbp-0x6e8],r15
  7c50b8:	49 8d 14 06          	lea    rdx,[r14+rax*1]
  7c50bc:	48 89 95 10 f9 ff ff 	mov    QWORD PTR [rbp-0x6f0],rdx
  7c50c3:	48 03 c8             	add    rcx,rax
  7c50c6:	48 03 85 58 f6 ff ff 	add    rax,QWORD PTR [rbp-0x9a8]
  7c50cd:	48 8b 95 20 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x5e0]
  7c50d4:	48 89 85 08 f9 ff ff 	mov    QWORD PTR [rbp-0x6f8],rax
  7c50db:	48 8b 85 f8 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x608]
  7c50e2:	48 3b 85 e0 f9 ff ff 	cmp    rax,QWORD PTR [rbp-0x620]
  7c50e9:	0f 8c 2c 01 00 00    	jl     7c521b <pre_step3d_mod_mp_pre_step3d_tile_+0xbc1b>
  7c50ef:	48 83 fa 04          	cmp    rdx,0x4
  7c50f3:	0f 8c e9 53 00 00    	jl     7ca4e2 <pre_step3d_mod_mp_pre_step3d_tile_+0x10ee2>
  7c50f9:	4c 8b a5 18 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6e8]
  7c5100:	45 33 ff             	xor    r15d,r15d
  7c5103:	4c 8b 9d 10 f9 ff ff 	mov    r11,QWORD PTR [rbp-0x6f0]
  7c510a:	4c 8d 34 31          	lea    r14,[rcx+rsi*1]
  7c510e:	4c 8b 8d 08 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x6f8]
  7c5115:	48 8b 85 88 fa ff ff 	mov    rax,QWORD PTR [rbp-0x578]
  7c511c:	4c 03 e6             	add    r12,rsi
  7c511f:	48 89 c2             	mov    rdx,rax
  7c5122:	4c 03 de             	add    r11,rsi
  7c5125:	4d 8d 14 31          	lea    r10,[r9+rsi*1]
  7c5129:	4d 89 c1             	mov    r9,r8
  7c512c:	c4 81 7d 10 04 fa    	vmovupd ymm0,YMMWORD PTR [r10+r15*8]
  7c5132:	c4 01 7d 10 2c fc    	vmovupd ymm13,YMMWORD PTR [r12+r15*8]
  7c5138:	c4 81 7d 58 0c fb    	vaddpd ymm1,ymm0,YMMWORD PTR [r11+r15*8]
  7c513e:	c4 01 15 58 34 fe    	vaddpd ymm14,ymm13,YMMWORD PTR [r14+r15*8]
  7c5144:	c5 55 59 f9          	vmulpd ymm15,ymm5,ymm1
  7c5148:	c4 c1 6d 59 c6       	vmulpd ymm0,ymm2,ymm14
  7c514d:	c5 85 5c c8          	vsubpd ymm1,ymm15,ymm0
  7c5151:	c4 21 75 59 2c ff    	vmulpd ymm13,ymm1,YMMWORD PTR [rdi+r15*8]
  7c5157:	49 83 c7 04          	add    r15,0x4
  7c515b:	c4 41 7d 11 69 10    	vmovupd YMMWORD PTR [r9+0x10],ymm13
  7c5161:	49 83 c1 20          	add    r9,0x20
  7c5165:	4c 3b fa             	cmp    r15,rdx
  7c5168:	72 c2                	jb     7c512c <pre_step3d_mod_mp_pre_step3d_tile_+0xbb2c>
  7c516a:	48 8b 95 20 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x5e0]
  7c5171:	4c 8d 24 c5 00 00 00 	lea    r12,[rax*8+0x0]
  7c5178:	00 
  7c5179:	48 3b c2             	cmp    rax,rdx
  7c517c:	73 73                	jae    7c51f1 <pre_step3d_mod_mp_pre_step3d_tile_+0xbbf1>
  7c517e:	4c 8b 95 18 f9 ff ff 	mov    r10,QWORD PTR [rbp-0x6e8]
  7c5185:	4d 8d 34 c0          	lea    r14,[r8+rax*8]
  7c5189:	4c 8b 8d 10 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x6f0]
  7c5190:	4c 8d 1c 31          	lea    r11,[rcx+rsi*1]
  7c5194:	4c 8b bd 08 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6f8]
  7c519b:	4c 03 d6             	add    r10,rsi
  7c519e:	4c 03 ce             	add    r9,rsi
  7c51a1:	4c 03 fe             	add    r15,rsi
  7c51a4:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  7c51a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  7c51b0:	c4 81 7b 10 04 3c    	vmovsd xmm0,QWORD PTR [r12+r15*1]
  7c51b6:	48 ff c0             	inc    rax
  7c51b9:	c4 01 7b 10 2c 14    	vmovsd xmm13,QWORD PTR [r12+r10*1]
  7c51bf:	c4 81 7b 58 0c 0c    	vaddsd xmm1,xmm0,QWORD PTR [r12+r9*1]
  7c51c5:	c4 01 13 58 34 1c    	vaddsd xmm14,xmm13,QWORD PTR [r12+r11*1]
  7c51cb:	c5 5b 59 f9          	vmulsd xmm15,xmm4,xmm1
  7c51cf:	c4 c1 3b 59 c6       	vmulsd xmm0,xmm8,xmm14
  7c51d4:	c5 83 5c c8          	vsubsd xmm1,xmm15,xmm0
  7c51d8:	c4 41 73 59 2c 3c    	vmulsd xmm13,xmm1,QWORD PTR [r12+rdi*1]
  7c51de:	49 83 c4 08          	add    r12,0x8
  7c51e2:	c4 41 7b 11 6e 10    	vmovsd QWORD PTR [r14+0x10],xmm13
  7c51e8:	49 83 c6 08          	add    r14,0x8
  7c51ec:	48 3b c2             	cmp    rax,rdx
  7c51ef:	72 bf                	jb     7c51b0 <pre_step3d_mod_mp_pre_step3d_tile_+0xbbb0>
  7c51f1:	49 ff c5             	inc    r13
  7c51f4:	4c 03 85 00 fa ff ff 	add    r8,QWORD PTR [rbp-0x600]
  7c51fb:	48 03 bd 88 f8 ff ff 	add    rdi,QWORD PTR [rbp-0x778]
  7c5202:	48 03 b5 f0 f9 ff ff 	add    rsi,QWORD PTR [rbp-0x610]
  7c5209:	4c 3b ad 90 f8 ff ff 	cmp    r13,QWORD PTR [rbp-0x770]
  7c5210:	0f 82 c5 fe ff ff    	jb     7c50db <pre_step3d_mod_mp_pre_step3d_tile_+0xbadb>
  7c5216:	e9 8a 45 00 00       	jmp    7c97a5 <pre_step3d_mod_mp_pre_step3d_tile_+0x101a5>
  7c521b:	49 ff c5             	inc    r13
  7c521e:	4c 03 85 00 fa ff ff 	add    r8,QWORD PTR [rbp-0x600]
  7c5225:	48 03 bd 88 f8 ff ff 	add    rdi,QWORD PTR [rbp-0x778]
  7c522c:	48 03 b5 f0 f9 ff ff 	add    rsi,QWORD PTR [rbp-0x610]
  7c5233:	4c 3b ad 90 f8 ff ff 	cmp    r13,QWORD PTR [rbp-0x770]
  7c523a:	0f 82 9b fe ff ff    	jb     7c50db <pre_step3d_mod_mp_pre_step3d_tile_+0xbadb>
  7c5240:	e9 48 48 00 00       	jmp    7c9a8d <pre_step3d_mod_mp_pre_step3d_tile_+0x1048d>
  7c5245:	33 c9                	xor    ecx,ecx
  7c5247:	33 f6                	xor    esi,esi
  7c5249:	48 8b 95 f0 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x810]
  7c5250:	33 c0                	xor    eax,eax
  7c5252:	48 83 bd e8 f7 ff ff 	cmp    QWORD PTR [rbp-0x818],0x2
  7c5259:	02 
  7c525a:	0f 8c 89 52 00 00    	jl     7ca4e9 <pre_step3d_mod_mp_pre_step3d_tile_+0x10ee9>
  7c5260:	4c 8b b5 08 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x7f8]
  7c5267:	4d 0f af f4          	imul   r14,r12
  7c526b:	4c 8b 85 28 f8 ff ff 	mov    r8,QWORD PTR [rbp-0x7d8]
  7c5272:	4f 8d 2c 32          	lea    r13,[r10+r14*1]
  7c5276:	48 8b bd 38 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x7c8]
  7c527d:	4c 8b bd 68 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x998]
  7c5284:	4c 89 ad b0 f8 ff ff 	mov    QWORD PTR [rbp-0x750],r13
  7c528b:	4f 8d 2c 30          	lea    r13,[r8+r14*1]
  7c528f:	4c 89 a5 30 f9 ff ff 	mov    QWORD PTR [rbp-0x6d0],r12
  7c5296:	4e 8d 04 37          	lea    r8,[rdi+r14*1]
  7c529a:	4c 89 85 e8 f8 ff ff 	mov    QWORD PTR [rbp-0x718],r8
  7c52a1:	4b 8d 3c 37          	lea    rdi,[r15+r14*1]
  7c52a5:	4c 8b bd 78 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x988]
  7c52ac:	48 89 bd d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],rdi
  7c52b3:	4c 89 ad e0 f8 ff ff 	mov    QWORD PTR [rbp-0x720],r13
  7c52ba:	4d 03 fe             	add    r15,r14
  7c52bd:	4c 89 bd a8 f8 ff ff 	mov    QWORD PTR [rbp-0x758],r15
  7c52c4:	4c 8b bd 70 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x990]
  7c52cb:	4d 03 fe             	add    r15,r14
  7c52ce:	4c 89 bd a0 f8 ff ff 	mov    QWORD PTR [rbp-0x760],r15
  7c52d5:	4c 8b bd 90 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x970]
  7c52dc:	4d 03 fe             	add    r15,r14
  7c52df:	4c 03 b5 60 f6 ff ff 	add    r14,QWORD PTR [rbp-0x9a0]
  7c52e6:	4c 89 bd 98 f8 ff ff 	mov    QWORD PTR [rbp-0x768],r15
  7c52ed:	4c 89 b5 d0 f8 ff ff 	mov    QWORD PTR [rbp-0x730],r14
  7c52f4:	48 8b bd f8 f9 ff ff 	mov    rdi,QWORD PTR [rbp-0x608]
  7c52fb:	48 3b bd e0 f9 ff ff 	cmp    rdi,QWORD PTR [rbp-0x620]
  7c5302:	0f 8c 0e 03 00 00    	jl     7c5616 <pre_step3d_mod_mp_pre_step3d_tile_+0xc016>
  7c5308:	48 83 bd 20 fa ff ff 	cmp    QWORD PTR [rbp-0x5e0],0x4
  7c530f:	04 
  7c5310:	0f 8c ec 51 00 00    	jl     7ca502 <pre_step3d_mod_mp_pre_step3d_tile_+0x10f02>
  7c5316:	4c 8b 85 a8 f8 ff ff 	mov    r8,QWORD PTR [rbp-0x758]
  7c531d:	45 33 ff             	xor    r15d,r15d
  7c5320:	4c 8b b5 20 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x6e0]
  7c5327:	4c 8b ad b0 f8 ff ff 	mov    r13,QWORD PTR [rbp-0x750]
  7c532e:	4c 8b a5 e0 f8 ff ff 	mov    r12,QWORD PTR [rbp-0x720]
  7c5335:	4c 03 c0             	add    r8,rax
  7c5338:	4c 89 85 80 fa ff ff 	mov    QWORD PTR [rbp-0x580],r8
  7c533f:	4c 03 f6             	add    r14,rsi
  7c5342:	4c 8b 85 a0 f8 ff ff 	mov    r8,QWORD PTR [rbp-0x760]
  7c5349:	4c 03 e8             	add    r13,rax
  7c534c:	4c 8b 9d e8 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x718]
  7c5353:	4c 03 e0             	add    r12,rax
  7c5356:	4c 8b 95 d8 f8 ff ff 	mov    r10,QWORD PTR [rbp-0x728]
  7c535d:	4c 8b 8d 28 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x6d8]
  7c5364:	4c 03 c0             	add    r8,rax
  7c5367:	4c 89 85 78 fa ff ff 	mov    QWORD PTR [rbp-0x588],r8
  7c536e:	4c 03 d8             	add    r11,rax
  7c5371:	4c 8b 85 98 f8 ff ff 	mov    r8,QWORD PTR [rbp-0x768]
  7c5378:	4c 03 d0             	add    r10,rax
  7c537b:	48 8b bd 88 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x578]
  7c5382:	4c 03 ce             	add    r9,rsi
  7c5385:	48 89 95 f0 f8 ff ff 	mov    QWORD PTR [rbp-0x710],rdx
  7c538c:	48 89 85 00 f9 ff ff 	mov    QWORD PTR [rbp-0x700],rax
  7c5393:	4c 03 c0             	add    r8,rax
  7c5396:	4c 89 85 70 fa ff ff 	mov    QWORD PTR [rbp-0x590],r8
  7c539d:	4c 8b 85 d0 f8 ff ff 	mov    r8,QWORD PTR [rbp-0x730]
  7c53a4:	48 89 b5 c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],rsi
  7c53ab:	48 89 95 c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],rdx
  7c53b2:	48 89 8d b8 f8 ff ff 	mov    QWORD PTR [rbp-0x748],rcx
  7c53b9:	4c 03 c0             	add    r8,rax
  7c53bc:	4c 89 85 68 fa ff ff 	mov    QWORD PTR [rbp-0x598],r8
  7c53c3:	45 33 c0             	xor    r8d,r8d
  7c53c6:	48 89 bd f8 f8 ff ff 	mov    QWORD PTR [rbp-0x708],rdi
  7c53cd:	48 8b 85 f0 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x710]
  7c53d4:	4c 89 c2             	mov    rdx,r8
  7c53d7:	48 8b 8d 28 fa ff ff 	mov    rcx,QWORD PTR [rbp-0x5d8]
  7c53de:	48 8b b5 18 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x5e8]
  7c53e5:	49 83 c7 04          	add    r15,0x4
  7c53e9:	4b 8d 3c 06          	lea    rdi,[r14+r8*1]
  7c53ed:	c5 7b 10 3f          	vmovsd xmm15,QWORD PTR [rdi]
  7c53f1:	c5 01 16 34 0f       	vmovhpd xmm14,xmm15,QWORD PTR [rdi+rcx*1]
  7c53f6:	49 8d 3c 14          	lea    rdi,[r12+rdx*1]
  7c53fa:	c5 fb 10 0f          	vmovsd xmm1,QWORD PTR [rdi]
  7c53fe:	c5 71 16 2c 37       	vmovhpd xmm13,xmm1,QWORD PTR [rdi+rsi*1]
  7c5403:	49 8d 3c 13          	lea    rdi,[r11+rdx*1]
  7c5407:	c5 fb 10 07          	vmovsd xmm0,QWORD PTR [rdi]
  7c540b:	c5 79 16 3c 37       	vmovhpd xmm15,xmm0,QWORD PTR [rdi+rsi*1]
  7c5410:	49 8d 7c 15 00       	lea    rdi,[r13+rdx*1+0x0]
  7c5415:	c4 c1 11 58 cf       	vaddpd xmm1,xmm13,xmm15
  7c541a:	c5 fb 10 07          	vmovsd xmm0,QWORD PTR [rdi]
  7c541e:	c5 49 59 e9          	vmulpd xmm13,xmm6,xmm1
  7c5422:	c5 f9 16 0c 37       	vmovhpd xmm1,xmm0,QWORD PTR [rdi+rsi*1]
  7c5427:	49 8d 3c 12          	lea    rdi,[r10+rdx*1]
  7c542b:	c5 7b 10 3f          	vmovsd xmm15,QWORD PTR [rdi]
  7c542f:	c5 81 16 04 37       	vmovhpd xmm0,xmm15,QWORD PTR [rdi+rsi*1]
  7c5434:	4b 8d 3c 01          	lea    rdi,[r9+r8*1]
  7c5438:	c5 71 58 f8          	vaddpd xmm15,xmm1,xmm0
  7c543c:	c4 c1 41 59 cf       	vmulpd xmm1,xmm7,xmm15
  7c5441:	c5 11 5c e9          	vsubpd xmm13,xmm13,xmm1
  7c5445:	c4 41 09 59 f5       	vmulpd xmm14,xmm14,xmm13
  7c544a:	c5 fb 10 0f          	vmovsd xmm1,QWORD PTR [rdi]
  7c544e:	4d 8d 04 88          	lea    r8,[r8+rcx*4]
  7c5452:	c5 f1 16 0c 0f       	vmovhpd xmm1,xmm1,QWORD PTR [rdi+rcx*1]
  7c5457:	48 8b bd 70 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x590]
  7c545e:	c5 79 11 70 10       	vmovupd XMMWORD PTR [rax+0x10],xmm14
  7c5463:	48 03 fa             	add    rdi,rdx
  7c5466:	c5 fb 10 07          	vmovsd xmm0,QWORD PTR [rdi]
  7c546a:	c5 79 16 34 37       	vmovhpd xmm14,xmm0,QWORD PTR [rdi+rsi*1]
  7c546f:	48 8b bd 78 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x588]
  7c5476:	48 03 fa             	add    rdi,rdx
  7c5479:	c5 7b 10 2f          	vmovsd xmm13,QWORD PTR [rdi]
  7c547d:	c5 11 16 3c 37       	vmovhpd xmm15,xmm13,QWORD PTR [rdi+rsi*1]
  7c5482:	48 8b bd 68 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x598]
  7c5489:	c4 c1 09 58 c7       	vaddpd xmm0,xmm14,xmm15
  7c548e:	c5 c9 59 c0          	vmulpd xmm0,xmm6,xmm0
  7c5492:	48 03 fa             	add    rdi,rdx
  7c5495:	c5 7b 10 2f          	vmovsd xmm13,QWORD PTR [rdi]
  7c5499:	c5 11 16 3c 37       	vmovhpd xmm15,xmm13,QWORD PTR [rdi+rsi*1]
  7c549e:	48 8b bd 80 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x580]
  7c54a5:	48 03 fa             	add    rdi,rdx
  7c54a8:	c5 7b 10 37          	vmovsd xmm14,QWORD PTR [rdi]
  7c54ac:	48 8d 14 b2          	lea    rdx,[rdx+rsi*4]
  7c54b0:	c5 09 16 2c 37       	vmovhpd xmm13,xmm14,QWORD PTR [rdi+rsi*1]
  7c54b5:	c4 41 01 58 f5       	vaddpd xmm14,xmm15,xmm13
  7c54ba:	c4 41 41 59 fe       	vmulpd xmm15,xmm7,xmm14
  7c54bf:	c4 c1 79 5c c7       	vsubpd xmm0,xmm0,xmm15
  7c54c4:	c5 f1 59 c8          	vmulpd xmm1,xmm1,xmm0
  7c54c8:	c5 f9 11 48 20       	vmovupd XMMWORD PTR [rax+0x20],xmm1
  7c54cd:	48 83 c0 20          	add    rax,0x20
  7c54d1:	4c 3b bd 88 fa ff ff 	cmp    r15,QWORD PTR [rbp-0x578]
  7c54d8:	0f 82 07 ff ff ff    	jb     7c53e5 <pre_step3d_mod_mp_pre_step3d_tile_+0xbde5>
  7c54de:	48 8b bd f8 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x708]
  7c54e5:	48 8b 85 00 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x700]
  7c54ec:	48 8b b5 c8 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x738]
  7c54f3:	48 8b 95 c0 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x740]
  7c54fa:	48 8b 8d b8 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x748]
  7c5501:	4c 8b ad 18 fa ff ff 	mov    r13,QWORD PTR [rbp-0x5e8]
  7c5508:	4c 8b bd 28 fa ff ff 	mov    r15,QWORD PTR [rbp-0x5d8]
  7c550f:	4c 0f af ef          	imul   r13,rdi
  7c5513:	4c 0f af ff          	imul   r15,rdi
  7c5517:	48 3b bd 20 fa ff ff 	cmp    rdi,QWORD PTR [rbp-0x5e0]
  7c551e:	0f 83 c8 00 00 00    	jae    7c55ec <pre_step3d_mod_mp_pre_step3d_tile_+0xbfec>
  7c5524:	4c 8b a5 20 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6e0]
  7c552b:	4c 8d 34 fa          	lea    r14,[rdx+rdi*8]
  7c552f:	4c 8b 9d b0 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x750]
  7c5536:	4c 8b 95 e0 f8 ff ff 	mov    r10,QWORD PTR [rbp-0x720]
  7c553d:	4c 8b 8d e8 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x718]
  7c5544:	4c 03 e6             	add    r12,rsi
  7c5547:	4c 8b 85 d8 f8 ff ff 	mov    r8,QWORD PTR [rbp-0x728]
  7c554e:	4c 03 d8             	add    r11,rax
  7c5551:	48 89 b5 c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],rsi
  7c5558:	4c 03 d0             	add    r10,rax
  7c555b:	48 89 95 c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],rdx
  7c5562:	4c 03 c8             	add    r9,rax
  7c5565:	48 89 8d b8 f8 ff ff 	mov    QWORD PTR [rbp-0x748],rcx
  7c556c:	4c 03 c0             	add    r8,rax
  7c556f:	48 8b 95 20 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x5e0]
  7c5576:	48 8b 8d 28 fa ff ff 	mov    rcx,QWORD PTR [rbp-0x5d8]
  7c557d:	48 8b b5 18 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x5e8]
  7c5584:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  7c5589:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  7c5590:	c4 81 7b 10 44 15 00 	vmovsd xmm0,QWORD PTR [r13+r10*1+0x0]
  7c5597:	48 ff c7             	inc    rdi
  7c559a:	c4 01 7b 10 6c 1d 00 	vmovsd xmm13,QWORD PTR [r13+r11*1+0x0]
  7c55a1:	c4 81 7b 58 4c 0d 00 	vaddsd xmm1,xmm0,QWORD PTR [r13+r9*1+0x0]
  7c55a8:	c4 01 13 58 74 05 00 	vaddsd xmm14,xmm13,QWORD PTR [r13+r8*1+0x0]
  7c55af:	c5 5b 59 f9          	vmulsd xmm15,xmm4,xmm1
  7c55b3:	c4 c1 3b 59 c6       	vmulsd xmm0,xmm8,xmm14
  7c55b8:	4c 03 ee             	add    r13,rsi
  7c55bb:	c5 83 5c c8          	vsubsd xmm1,xmm15,xmm0
  7c55bf:	c4 01 73 59 2c 27    	vmulsd xmm13,xmm1,QWORD PTR [r15+r12*1]
  7c55c5:	4c 03 f9             	add    r15,rcx
  7c55c8:	c4 41 7b 11 6e 10    	vmovsd QWORD PTR [r14+0x10],xmm13
  7c55ce:	49 83 c6 08          	add    r14,0x8
  7c55d2:	48 3b fa             	cmp    rdi,rdx
  7c55d5:	72 b9                	jb     7c5590 <pre_step3d_mod_mp_pre_step3d_tile_+0xbf90>
  7c55d7:	48 8b b5 c8 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x738]
  7c55de:	48 8b 95 c0 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x740]
  7c55e5:	48 8b 8d b8 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x748]
  7c55ec:	48 ff c1             	inc    rcx
  7c55ef:	48 03 95 00 fa ff ff 	add    rdx,QWORD PTR [rbp-0x600]
  7c55f6:	48 03 b5 88 f8 ff ff 	add    rsi,QWORD PTR [rbp-0x778]
  7c55fd:	48 03 85 f0 f9 ff ff 	add    rax,QWORD PTR [rbp-0x610]
  7c5604:	48 3b 8d 90 f8 ff ff 	cmp    rcx,QWORD PTR [rbp-0x770]
  7c560b:	0f 82 e3 fc ff ff    	jb     7c52f4 <pre_step3d_mod_mp_pre_step3d_tile_+0xbcf4>
  7c5611:	e9 8f 41 00 00       	jmp    7c97a5 <pre_step3d_mod_mp_pre_step3d_tile_+0x101a5>
  7c5616:	48 ff c1             	inc    rcx
  7c5619:	48 03 95 00 fa ff ff 	add    rdx,QWORD PTR [rbp-0x600]
  7c5620:	48 03 b5 88 f8 ff ff 	add    rsi,QWORD PTR [rbp-0x778]
  7c5627:	48 03 85 f0 f9 ff ff 	add    rax,QWORD PTR [rbp-0x610]
  7c562e:	48 3b 8d 90 f8 ff ff 	cmp    rcx,QWORD PTR [rbp-0x770]
  7c5635:	0f 82 b9 fc ff ff    	jb     7c52f4 <pre_step3d_mod_mp_pre_step3d_tile_+0xbcf4>
  7c563b:	e9 4d 44 00 00       	jmp    7c9a8d <pre_step3d_mod_mp_pre_step3d_tile_+0x1048d>
  7c5640:	53                   	push   rbx
  7c5641:	48 89 e3             	mov    rbx,rsp
  7c5644:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
  7c5648:	55                   	push   rbp
  7c5649:	55                   	push   rbp
  7c564a:	48 8b 6b 08          	mov    rbp,QWORD PTR [rbx+0x8]
  7c564e:	48 89 6c 24 08       	mov    QWORD PTR [rsp+0x8],rbp
  7c5653:	48 89 e5             	mov    rbp,rsp
  7c5656:	48 81 ec 70 0e 00 00 	sub    rsp,0xe70
  7c565d:	4c 89 ad 38 f6 ff ff 	mov    QWORD PTR [rbp-0x9c8],r13
  7c5664:	4c 8b 6b 40          	mov    r13,QWORD PTR [rbx+0x40]
  7c5668:	48 8b 73 10          	mov    rsi,QWORD PTR [rbx+0x10]
  7c566c:	4c 89 b5 30 f6 ff ff 	mov    QWORD PTR [rbp-0x9d0],r14
  7c5673:	4c 89 a5 40 f6 ff ff 	mov    QWORD PTR [rbp-0x9c0],r12
  7c567a:	4c 8b 73 48          	mov    r14,QWORD PTR [rbx+0x48]
  7c567e:	45 8b 6d 00          	mov    r13d,DWORD PTR [r13+0x0]
  7c5682:	4c 8b 63 38          	mov    r12,QWORD PTR [rbx+0x38]
  7c5686:	4c 89 bd 28 f6 ff ff 	mov    QWORD PTR [rbp-0x9d8],r15
  7c568d:	44 89 ad f8 fb ff ff 	mov    DWORD PTR [rbp-0x408],r13d
  7c5694:	4c 8b 7b 20          	mov    r15,QWORD PTR [rbx+0x20]
  7c5698:	4c 63 2e             	movsxd r13,DWORD PTR [rsi]
  7c569b:	4c 89 ad e0 fa ff ff 	mov    QWORD PTR [rbp-0x520],r13
  7c56a2:	48 8b 43 18          	mov    rax,QWORD PTR [rbx+0x18]
  7c56a6:	4c 8b 5b 28          	mov    r11,QWORD PTR [rbx+0x28]
  7c56aa:	4c 8b 2a             	mov    r13,QWORD PTR [rdx]
  7c56ad:	4d 8b 36             	mov    r14,QWORD PTR [r14]
  7c56b0:	48 8b 53 50          	mov    rdx,QWORD PTR [rbx+0x50]
  7c56b4:	45 8b 24 24          	mov    r12d,DWORD PTR [r12]
  7c56b8:	8b 09                	mov    ecx,DWORD PTR [rcx]
  7c56ba:	4c 89 b5 d8 f1 ff ff 	mov    QWORD PTR [rbp-0xe28],r14
  7c56c1:	44 89 a5 00 fc ff ff 	mov    DWORD PTR [rbp-0x400],r12d
  7c56c8:	4d 8b 37             	mov    r14,QWORD PTR [r15]
  7c56cb:	4d 63 21             	movsxd r12,DWORD PTR [r9]
  7c56ce:	89 8d 88 f7 ff ff    	mov    DWORD PTR [rbp-0x878],ecx
  7c56d4:	4c 8d 7b 60          	lea    r15,[rbx+0x60]
  7c56d8:	49 8b 0f             	mov    rcx,QWORD PTR [r15]
  7c56db:	4c 89 b5 c8 f1 ff ff 	mov    QWORD PTR [rbp-0xe38],r14
  7c56e2:	4d 8b 1b             	mov    r11,QWORD PTR [r11]
  7c56e5:	4c 8b 30             	mov    r14,QWORD PTR [rax]
  7c56e8:	4c 89 a5 d8 fa ff ff 	mov    QWORD PTR [rbp-0x528],r12
  7c56ef:	4d 8b 57 d0          	mov    r10,QWORD PTR [r15-0x30]
  7c56f3:	49 8b 47 f8          	mov    rax,QWORD PTR [r15-0x8]
  7c56f7:	8b 3f                	mov    edi,DWORD PTR [rdi]
  7c56f9:	4c 63 22             	movsxd r12,DWORD PTR [rdx]
  7c56fc:	4c 89 9d e8 f1 ff ff 	mov    QWORD PTR [rbp-0xe18],r11
  7c5703:	89 bd 78 f6 ff ff    	mov    DWORD PTR [rbp-0x988],edi
  7c5709:	4c 89 a5 60 f7 ff ff 	mov    QWORD PTR [rbp-0x8a0],r12
  7c5710:	4d 8b 5f 18          	mov    r11,QWORD PTR [r15+0x18]
  7c5714:	49 8b 7f 08          	mov    rdi,QWORD PTR [r15+0x8]
  7c5718:	4d 8b 4f 10          	mov    r9,QWORD PTR [r15+0x10]
  7c571c:	4d 8b 67 20          	mov    r12,QWORD PTR [r15+0x20]
  7c5720:	48 8b 31             	mov    rsi,QWORD PTR [rcx]
  7c5723:	4d 8b 12             	mov    r10,QWORD PTR [r10]
  7c5726:	45 8b 00             	mov    r8d,DWORD PTR [r8]
  7c5729:	48 63 10             	movsxd rdx,DWORD PTR [rax]
  7c572c:	48 89 b5 e0 f1 ff ff 	mov    QWORD PTR [rbp-0xe20],rsi
  7c5733:	49 8b 77 30          	mov    rsi,QWORD PTR [r15+0x30]
  7c5737:	4c 89 95 c0 f1 ff ff 	mov    QWORD PTR [rbp-0xe40],r10
  7c573e:	44 89 85 a8 f7 ff ff 	mov    DWORD PTR [rbp-0x858],r8d
  7c5745:	48 89 95 68 f7 ff ff 	mov    QWORD PTR [rbp-0x898],rdx
  7c574c:	4d 8b 3b             	mov    r15,QWORD PTR [r11]
  7c574f:	4c 8b 07             	mov    r8,QWORD PTR [rdi]
  7c5752:	4d 8b 11             	mov    r10,QWORD PTR [r9]
  7c5755:	49 8b 04 24          	mov    rax,QWORD PTR [r12]
  7c5759:	48 8b 93 88 00 00 00 	mov    rdx,QWORD PTR [rbx+0x88]
  7c5760:	4c 89 bd d0 f1 ff ff 	mov    QWORD PTR [rbp-0xe30],r15
  7c5767:	4c 89 85 08 f2 ff ff 	mov    QWORD PTR [rbp-0xdf8],r8
  7c576e:	4c 89 95 00 f2 ff ff 	mov    QWORD PTR [rbp-0xe00],r10
  7c5775:	48 89 85 f8 f1 ff ff 	mov    QWORD PTR [rbp-0xe08],rax
  7c577c:	48 8d 83 b0 00 00 00 	lea    rax,[rbx+0xb0]
  7c5783:	4c 8b 38             	mov    r15,QWORD PTR [rax]
  7c5786:	4c 8b 40 e8          	mov    r8,QWORD PTR [rax-0x18]
  7c578a:	4c 8b 50 f0          	mov    r10,QWORD PTR [rax-0x10]
  7c578e:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  7c5792:	48 63 3e             	movsxd rdi,DWORD PTR [rsi]
  7c5795:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  7c5798:	48 89 bd 10 f8 ff ff 	mov    QWORD PTR [rbp-0x7f0],rdi
  7c579f:	48 8b bb d0 00 00 00 	mov    rdi,QWORD PTR [rbx+0xd0]
  7c57a6:	48 89 8d f0 f1 ff ff 	mov    QWORD PTR [rbp-0xe10],rcx
  7c57ad:	4d 63 27             	movsxd r12,DWORD PTR [r15]
  7c57b0:	4d 63 08             	movsxd r9,DWORD PTR [r8]
  7c57b3:	4d 63 1a             	movsxd r11,DWORD PTR [r10]
  7c57b6:	48 63 10             	movsxd rdx,DWORD PTR [rax]
  7c57b9:	33 c0                	xor    eax,eax
  7c57bb:	4c 8d 93 c8 00 00 00 	lea    r10,[rbx+0xc8]
  7c57c2:	49 8b 0a             	mov    rcx,QWORD PTR [r10]
  7c57c5:	48 89 bd b8 f1 ff ff 	mov    QWORD PTR [rbp-0xe48],rdi
  7c57cc:	48 8d bd e8 f2 ff ff 	lea    rdi,[rbp-0xd18]
  7c57d3:	4c 89 a5 a0 f1 ff ff 	mov    QWORD PTR [rbp-0xe60],r12
  7c57da:	49 8b 72 10          	mov    rsi,QWORD PTR [r10+0x10]
  7c57de:	4d 8b 62 f8          	mov    r12,QWORD PTR [r10-0x8]
  7c57e2:	4c 89 8d 90 f1 ff ff 	mov    QWORD PTR [rbp-0xe70],r9
  7c57e9:	4c 89 9d 98 f1 ff ff 	mov    QWORD PTR [rbp-0xe68],r11
  7c57f0:	48 89 95 a8 f1 ff ff 	mov    QWORD PTR [rbp-0xe58],rdx
  7c57f7:	48 89 8d b0 f1 ff ff 	mov    QWORD PTR [rbp-0xe50],rcx
  7c57fe:	e8 fd 13 cb ff       	call   476c00 <_f90_dope_vector_init>
  7c5803:	48 89 85 78 f5 ff ff 	mov    QWORD PTR [rbp-0xa88],rax
  7c580a:	48 83 c0 1f          	add    rax,0x1f
  7c580e:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7c5812:	48 2b e0             	sub    rsp,rax
  7c5815:	48 89 e0             	mov    rax,rsp
  7c5818:	48 89 85 70 f5 ff ff 	mov    QWORD PTR [rbp-0xa90],rax
  7c581f:	48 89 c2             	mov    rdx,rax
  7c5822:	48 8d bd 50 f3 ff ff 	lea    rdi,[rbp-0xcb0]
  7c5829:	33 c0                	xor    eax,eax
  7c582b:	48 8b b5 b8 f1 ff ff 	mov    rsi,QWORD PTR [rbp-0xe48]
  7c5832:	48 89 57 98          	mov    QWORD PTR [rdi-0x68],rdx
  7c5836:	e8 c5 13 cb ff       	call   476c00 <_f90_dope_vector_init>
  7c583b:	48 89 85 88 f5 ff ff 	mov    QWORD PTR [rbp-0xa78],rax
  7c5842:	48 83 c0 1f          	add    rax,0x1f
  7c5846:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7c584a:	48 2b e0             	sub    rsp,rax
  7c584d:	48 89 e0             	mov    rax,rsp
  7c5850:	48 89 85 80 f5 ff ff 	mov    QWORD PTR [rbp-0xa80],rax
  7c5857:	48 89 c2             	mov    rdx,rax
  7c585a:	48 8d bd b0 f3 ff ff 	lea    rdi,[rbp-0xc50]
  7c5861:	33 c0                	xor    eax,eax
  7c5863:	48 8b b5 b0 f1 ff ff 	mov    rsi,QWORD PTR [rbp-0xe50]
  7c586a:	48 89 57 a0          	mov    QWORD PTR [rdi-0x60],rdx
  7c586e:	e8 8d 13 cb ff       	call   476c00 <_f90_dope_vector_init>
  7c5873:	48 89 85 a8 f5 ff ff 	mov    QWORD PTR [rbp-0xa58],rax
  7c587a:	48 83 c0 1f          	add    rax,0x1f
  7c587e:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7c5882:	48 2b e0             	sub    rsp,rax
  7c5885:	48 89 e0             	mov    rax,rsp
  7c5888:	48 89 85 a0 f5 ff ff 	mov    QWORD PTR [rbp-0xa60],rax
  7c588f:	48 89 c2             	mov    rdx,rax
  7c5892:	48 8d bd 10 f4 ff ff 	lea    rdi,[rbp-0xbf0]
  7c5899:	4c 89 e6             	mov    rsi,r12
  7c589c:	33 c0                	xor    eax,eax
  7c589e:	48 89 57 a0          	mov    QWORD PTR [rdi-0x60],rdx
  7c58a2:	e8 59 13 cb ff       	call   476c00 <_f90_dope_vector_init>
  7c58a7:	48 89 85 98 f5 ff ff 	mov    QWORD PTR [rbp-0xa68],rax
  7c58ae:	48 83 c0 1f          	add    rax,0x1f
  7c58b2:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7c58b6:	48 2b e0             	sub    rsp,rax
  7c58b9:	48 89 e0             	mov    rax,rsp
  7c58bc:	48 89 85 90 f5 ff ff 	mov    QWORD PTR [rbp-0xa70],rax
  7c58c3:	49 89 c4             	mov    r12,rax
  7c58c6:	4c 89 a5 10 f4 ff ff 	mov    QWORD PTR [rbp-0xbf0],r12
  7c58cd:	4d 63 65 00          	movsxd r12,DWORD PTR [r13+0x0]
  7c58d1:	48 8b 05 e8 4d 2f 00 	mov    rax,QWORD PTR [rip+0x2f4de8]        # aba6c0 <mod_param_mp_n_>
  7c58d8:	46 8b 7c a0 fc       	mov    r15d,DWORD PTR [rax+r12*4-0x4]
  7c58dd:	45 85 ff             	test   r15d,r15d
  7c58e0:	0f 8e a9 3c 00 00    	jle    7c958f <pre_step3d_mod_mp_pre_step3d_tile_+0xff8f>
  7c58e6:	48 83 c4 e0          	add    rsp,0xffffffffffffffe0
  7c58ea:	48 8d 85 ac f6 ff ff 	lea    rax,[rbp-0x954]
  7c58f1:	41 bd 01 00 00 00    	mov    r13d,0x1
  7c58f7:	bf 1c 73 ab 00       	mov    edi,0xab731c
  7c58fc:	ba 22 00 00 00       	mov    edx,0x22
  7c5901:	48 8d 8d a8 f6 ff ff 	lea    rcx,[rbp-0x958]
  7c5908:	44 89 78 f8          	mov    DWORD PTR [rax-0x8],r15d
  7c590c:	4c 8d 85 a0 f6 ff ff 	lea    r8,[rbp-0x960]
  7c5913:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  7c5917:	4c 8d 8d a4 f6 ff ff 	lea    r9,[rbp-0x95c]
  7c591e:	44 89 6c 24 08       	mov    DWORD PTR [rsp+0x8],r13d
  7c5923:	44 89 6c 24 10       	mov    DWORD PTR [rsp+0x10],r13d
  7c5928:	8b 70 cc             	mov    esi,DWORD PTR [rax-0x34]
  7c592b:	c7 40 fc 00 00 00 00 	mov    DWORD PTR [rax-0x4],0x0
  7c5932:	44 89 68 f4          	mov    DWORD PTR [rax-0xc],r13d
  7c5936:	44 89 28             	mov    DWORD PTR [rax],r13d
  7c5939:	e8 a2 80 c4 ff       	call   40d9e0 <__kmpc_for_static_init_4@plt>
  7c593e:	48 83 c4 20          	add    rsp,0x20
  7c5942:	4d 63 ff             	movsxd r15,r15d
  7c5945:	48 63 85 a0 f6 ff ff 	movsxd rax,DWORD PTR [rbp-0x960]
  7c594c:	8b 95 a4 f6 ff ff    	mov    edx,DWORD PTR [rbp-0x95c]
  7c5952:	48 89 85 60 f5 ff ff 	mov    QWORD PTR [rbp-0xaa0],rax
  7c5959:	49 3b c7             	cmp    rax,r15
  7c595c:	0f 8f 1a 3c 00 00    	jg     7c957c <pre_step3d_mod_mp_pre_step3d_tile_+0xff7c>
  7c5962:	48 8b bd c0 f1 ff ff 	mov    rdi,QWORD PTR [rbp-0xe40]
  7c5969:	41 3b d7             	cmp    edx,r15d
  7c596c:	48 8b b5 10 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xbf0]
  7c5973:	48 89 b5 20 f8 ff ff 	mov    QWORD PTR [rbp-0x7e0],rsi
  7c597a:	44 0f 4c fa          	cmovl  r15d,edx
  7c597e:	48 8b 35 3b 56 2f 00 	mov    rsi,QWORD PTR [rip+0x2f563b]        # abafc0 <mod_scalars_mp_ntfirst_>
  7c5985:	48 89 b5 b8 f7 ff ff 	mov    QWORD PTR [rbp-0x848],rsi
  7c598c:	49 8b 76 68          	mov    rsi,QWORD PTR [r14+0x68]
  7c5990:	48 63 07             	movsxd rax,DWORD PTR [rdi]
  7c5993:	48 89 b5 40 f5 ff ff 	mov    QWORD PTR [rbp-0xac0],rsi
  7c599a:	48 89 85 88 f6 ff ff 	mov    QWORD PTR [rbp-0x978],rax
  7c59a1:	48 8b b5 00 f2 ff ff 	mov    rsi,QWORD PTR [rbp-0xe00]
  7c59a8:	48 8b 05 51 58 2f 00 	mov    rax,QWORD PTR [rip+0x2f5851]        # abb200 <mod_scalars_mp_luvsrc_>
  7c59af:	48 89 85 c8 f7 ff ff 	mov    QWORD PTR [rbp-0x838],rax
  7c59b6:	49 8b 86 98 00 00 00 	mov    rax,QWORD PTR [r14+0x98]
  7c59bd:	48 8b 95 b0 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xc50]
  7c59c4:	48 89 85 18 f8 ff ff 	mov    QWORD PTR [rbp-0x7e8],rax
  7c59cb:	48 89 95 58 f5 ff ff 	mov    QWORD PTR [rbp-0xaa8],rdx
  7c59d2:	48 8b 46 68          	mov    rax,QWORD PTR [rsi+0x68]
  7c59d6:	48 8b 15 a3 4a 2f 00 	mov    rdx,QWORD PTR [rip+0x2f4aa3]        # aba480 <mod_scalars_mp_iic_>
  7c59dd:	48 89 85 30 f5 ff ff 	mov    QWORD PTR [rbp-0xad0],rax
  7c59e4:	48 89 95 c0 f7 ff ff 	mov    QWORD PTR [rbp-0x840],rdx
  7c59eb:	48 8b 85 f8 f1 ff ff 	mov    rax,QWORD PTR [rbp-0xe08]
  7c59f2:	49 8b 96 80 00 00 00 	mov    rdx,QWORD PTR [r14+0x80]
  7c59f9:	48 89 95 48 f5 ff ff 	mov    QWORD PTR [rbp-0xab8],rdx
  7c5a00:	48 8b 56 50          	mov    rdx,QWORD PTR [rsi+0x50]
  7c5a04:	48 8b 0d 95 51 2f 00 	mov    rcx,QWORD PTR [rip+0x2f5195]        # ababa0 <mod_scalars_mp_compositegrid_>
  7c5a0b:	48 89 95 18 fb ff ff 	mov    QWORD PTR [rbp-0x4e8],rdx
  7c5a12:	48 8b 3d b7 57 2f 00 	mov    rdi,QWORD PTR [rip+0x2f57b7]        # abb1d0 <mod_scalars_mp_ltracersrc_+0x30>
  7c5a19:	48 8b 50 38          	mov    rdx,QWORD PTR [rax+0x38]
  7c5a1d:	48 89 8d d8 f7 ff ff 	mov    QWORD PTR [rbp-0x828],rcx
  7c5a24:	48 89 bd d0 f7 ff ff 	mov    QWORD PTR [rbp-0x830],rdi
  7c5a2b:	48 8b 0d 0e 41 2f 00 	mov    rcx,QWORD PTR [rip+0x2f410e]        # ab9b40 <mod_scalars_mp_dt_>
  7c5a32:	48 89 95 28 fc ff ff 	mov    QWORD PTR [rbp-0x3d8],rdx
  7c5a39:	49 8b 3e             	mov    rdi,QWORD PTR [r14]
  7c5a3c:	48 8b 15 9d f8 2f 00 	mov    rdx,QWORD PTR [rip+0x2ff89d]        # ac52e0 <mod_sources_mp_sources_>
  7c5a43:	48 89 8d b0 f7 ff ff 	mov    QWORD PTR [rbp-0x850],rcx
  7c5a4a:	48 89 bd 50 f5 ff ff 	mov    QWORD PTR [rbp-0xab0],rdi
  7c5a51:	49 8b 4e 50          	mov    rcx,QWORD PTR [r14+0x50]
  7c5a55:	48 89 95 68 f5 ff ff 	mov    QWORD PTR [rbp-0xa98],rdx
  7c5a5c:	4d 8b 76 38          	mov    r14,QWORD PTR [r14+0x38]
  7c5a60:	48 8b 3e             	mov    rdi,QWORD PTR [rsi]
  7c5a63:	48 8b 95 08 f2 ff ff 	mov    rdx,QWORD PTR [rbp-0xdf8]
  7c5a6a:	4c 89 b5 38 fc ff ff 	mov    QWORD PTR [rbp-0x3c8],r14
  7c5a71:	48 89 bd 38 f5 ff ff 	mov    QWORD PTR [rbp-0xac8],rdi
  7c5a78:	4c 8b 30             	mov    r14,QWORD PTR [rax]
  7c5a7b:	48 8b 78 50          	mov    rdi,QWORD PTR [rax+0x50]
  7c5a7f:	48 8b 05 ba f8 2f 00 	mov    rax,QWORD PTR [rip+0x2ff8ba]        # ac5340 <mod_sources_mp_nsrc_>
  7c5a86:	4c 89 b5 18 f5 ff ff 	mov    QWORD PTR [rbp-0xae8],r14
  7c5a8d:	4c 8b b5 f0 f1 ff ff 	mov    r14,QWORD PTR [rbp-0xe10]
  7c5a94:	48 89 85 70 f6 ff ff 	mov    QWORD PTR [rbp-0x990],rax
  7c5a9b:	48 8b 42 50          	mov    rax,QWORD PTR [rdx+0x50]
  7c5a9f:	48 89 8d 20 fb ff ff 	mov    QWORD PTR [rbp-0x4e0],rcx
  7c5aa6:	48 89 85 38 fb ff ff 	mov    QWORD PTR [rbp-0x4c8],rax
  7c5aad:	48 8b 4e 38          	mov    rcx,QWORD PTR [rsi+0x38]
  7c5ab1:	48 8b 85 d8 f1 ff ff 	mov    rax,QWORD PTR [rbp-0xe28]
  7c5ab8:	48 89 8d 30 fc ff ff 	mov    QWORD PTR [rbp-0x3d0],rcx
  7c5abf:	48 89 bd 10 fb ff ff 	mov    QWORD PTR [rbp-0x4f0],rdi
  7c5ac6:	49 8b 36             	mov    rsi,QWORD PTR [r14]
  7c5ac9:	49 8b 7e 38          	mov    rdi,QWORD PTR [r14+0x38]
  7c5acd:	49 8b 4e 50          	mov    rcx,QWORD PTR [r14+0x50]
  7c5ad1:	4c 8b 32             	mov    r14,QWORD PTR [rdx]
  7c5ad4:	4c 89 b5 f8 f4 ff ff 	mov    QWORD PTR [rbp-0xb08],r14
  7c5adb:	4c 8b 70 68          	mov    r14,QWORD PTR [rax+0x68]
  7c5adf:	4c 89 b5 e0 f4 ff ff 	mov    QWORD PTR [rbp-0xb20],r14
  7c5ae6:	48 89 8d 08 fb ff ff 	mov    QWORD PTR [rbp-0x4f8],rcx
  7c5aed:	4c 8b b5 e0 f1 ff ff 	mov    r14,QWORD PTR [rbp-0xe20]
  7c5af4:	48 8b 0d f5 56 2f 00 	mov    rcx,QWORD PTR [rip+0x2f56f5]        # abb1f0 <mod_scalars_mp_ltracersrc_+0x50>
  7c5afb:	48 89 8d 00 f5 ff ff 	mov    QWORD PTR [rbp-0xb00],rcx
  7c5b02:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  7c5b05:	48 89 8d e8 f4 ff ff 	mov    QWORD PTR [rbp-0xb18],rcx
  7c5b0c:	48 89 b5 10 f5 ff ff 	mov    QWORD PTR [rbp-0xaf0],rsi
  7c5b13:	49 8b 4e 50          	mov    rcx,QWORD PTR [r14+0x50]
  7c5b17:	4c 8b 85 c8 f1 ff ff 	mov    r8,QWORD PTR [rbp-0xe38]
  7c5b1e:	4c 8b 95 d0 f1 ff ff 	mov    r10,QWORD PTR [rbp-0xe30]
  7c5b25:	48 8b 35 74 56 2f 00 	mov    rsi,QWORD PTR [rip+0x2f5674]        # abb1a0 <mod_scalars_mp_ltracersrc_>
  7c5b2c:	48 89 8d 00 fb ff ff 	mov    QWORD PTR [rbp-0x500],rcx
  7c5b33:	48 89 b5 08 f5 ff ff 	mov    QWORD PTR [rbp-0xaf8],rsi
  7c5b3a:	48 8b 8d e8 f1 ff ff 	mov    rcx,QWORD PTR [rbp-0xe18]
  7c5b41:	48 89 bd 20 fc ff ff 	mov    QWORD PTR [rbp-0x3e0],rdi
  7c5b48:	48 8b 72 38          	mov    rsi,QWORD PTR [rdx+0x38]
  7c5b4c:	48 8b 7a 68          	mov    rdi,QWORD PTR [rdx+0x68]
  7c5b50:	4d 63 ff             	movsxd r15,r15d
  7c5b53:	48 89 b5 28 fb ff ff 	mov    QWORD PTR [rbp-0x4d8],rsi
  7c5b5a:	48 89 bd f0 f4 ff ff 	mov    QWORD PTR [rbp-0xb10],rdi
  7c5b61:	48 8b 50 38          	mov    rdx,QWORD PTR [rax+0x38]
  7c5b65:	49 8b 36             	mov    rsi,QWORD PTR [r14]
  7c5b68:	4d 63 08             	movsxd r9,DWORD PTR [r8]
  7c5b6b:	4d 63 1a             	movsxd r11,DWORD PTR [r10]
  7c5b6e:	48 8b 78 50          	mov    rdi,QWORD PTR [rax+0x50]
  7c5b72:	4c 2b bd 60 f5 ff ff 	sub    r15,QWORD PTR [rbp-0xaa0]
  7c5b79:	48 89 95 30 fb ff ff 	mov    QWORD PTR [rbp-0x4d0],rdx
  7c5b80:	49 ff c7             	inc    r15
  7c5b83:	48 89 b5 d8 f4 ff ff 	mov    QWORD PTR [rbp-0xb28],rsi
  7c5b8a:	4c 89 8d 28 f5 ff ff 	mov    QWORD PTR [rbp-0xad8],r9
  7c5b91:	4c 89 9d 20 f5 ff ff 	mov    QWORD PTR [rbp-0xae0],r11
  7c5b98:	4c 8b 85 50 f3 ff ff 	mov    r8,QWORD PTR [rbp-0xcb0]
  7c5b9f:	48 89 bd 40 fb ff ff 	mov    QWORD PTR [rbp-0x4c0],rdi
  7c5ba6:	49 8b 76 38          	mov    rsi,QWORD PTR [r14+0x38]
  7c5baa:	48 8b 11             	mov    rdx,QWORD PTR [rcx]
  7c5bad:	4c 8b 71 38          	mov    r14,QWORD PTR [rcx+0x38]
  7c5bb1:	48 8b 41 50          	mov    rax,QWORD PTR [rcx+0x50]
  7c5bb5:	33 c9                	xor    ecx,ecx
  7c5bb7:	4c 8b 1d 62 5d 2f 00 	mov    r11,QWORD PTR [rip+0x2f5d62]        # abb920 <mod_scalars_mp_ewperiodic_>
  7c5bbe:	4c 8b 0d bb 60 2f 00 	mov    r9,QWORD PTR [rip+0x2f60bb]        # abbc80 <mod_scalars_mp_nsperiodic_>
  7c5bc5:	48 8b 3d 74 58 2f 00 	mov    rdi,QWORD PTR [rip+0x2f5874]        # abb440 <mod_param_mp_domain_>
  7c5bcc:	48 89 95 d0 f4 ff ff 	mov    QWORD PTR [rbp-0xb30],rdx
  7c5bd3:	4c 89 85 28 f8 ff ff 	mov    QWORD PTR [rbp-0x7d8],r8
  7c5bda:	4c 8b 15 3f 4b 2f 00 	mov    r10,QWORD PTR [rip+0x2f4b3f]        # aba720 <mod_param_mp_nt_>
  7c5be1:	4c 89 bd 80 f6 ff ff 	mov    QWORD PTR [rbp-0x980],r15
  7c5be8:	4c 89 b5 e8 fa ff ff 	mov    QWORD PTR [rbp-0x518],r14
  7c5bef:	48 89 85 f0 fa ff ff 	mov    QWORD PTR [rbp-0x510],rax
  7c5bf6:	48 89 b5 f8 fa ff ff 	mov    QWORD PTR [rbp-0x508],rsi
  7c5bfd:	48 89 bd 90 f6 ff ff 	mov    QWORD PTR [rbp-0x970],rdi
  7c5c04:	4c 89 8d 70 f7 ff ff 	mov    QWORD PTR [rbp-0x890],r9
  7c5c0b:	4c 89 9d 78 f7 ff ff 	mov    QWORD PTR [rbp-0x888],r11
  7c5c12:	44 8b 85 88 f7 ff ff 	mov    r8d,DWORD PTR [rbp-0x878]
  7c5c19:	8b 95 a8 f7 ff ff    	mov    edx,DWORD PTR [rbp-0x858]
  7c5c1f:	33 f6                	xor    esi,esi
  7c5c21:	4b 63 7c a2 fc       	movsxd rdi,DWORD PTR [r10+r12*4-0x4]
  7c5c26:	33 c0                	xor    eax,eax
  7c5c28:	48 85 ff             	test   rdi,rdi
  7c5c2b:	0f 8e 3b 39 00 00    	jle    7c956c <pre_step3d_mod_mp_pre_step3d_tile_+0xff6c>
  7c5c31:	44 89 85 88 f7 ff ff 	mov    DWORD PTR [rbp-0x878],r8d
  7c5c38:	4d 63 c0             	movsxd r8,r8d
  7c5c3b:	4c 89 a5 08 f8 ff ff 	mov    QWORD PTR [rbp-0x7f8],r12
  7c5c42:	4c 8b a5 18 fb ff ff 	mov    r12,QWORD PTR [rbp-0x4e8]
  7c5c49:	4d 0f af e0          	imul   r12,r8
  7c5c4d:	48 89 85 48 fb ff ff 	mov    QWORD PTR [rbp-0x4b8],rax
  7c5c54:	48 8b 85 38 fb ff ff 	mov    rax,QWORD PTR [rbp-0x4c8]
  7c5c5b:	4c 8b 9d 10 fb ff ff 	mov    r11,QWORD PTR [rbp-0x4f0]
  7c5c62:	49 0f af c0          	imul   rax,r8
  7c5c66:	4d 0f af d8          	imul   r11,r8
  7c5c6a:	4c 89 a5 18 f2 ff ff 	mov    QWORD PTR [rbp-0xde8],r12
  7c5c71:	4c 8b bd 08 fb ff ff 	mov    r15,QWORD PTR [rbp-0x4f8]
  7c5c78:	4c 8b a5 40 fb ff ff 	mov    r12,QWORD PTR [rbp-0x4c0]
  7c5c7f:	4d 0f af f8          	imul   r15,r8
  7c5c83:	4d 0f af e0          	imul   r12,r8
  7c5c87:	89 95 a8 f7 ff ff    	mov    DWORD PTR [rbp-0x858],edx
  7c5c8d:	48 63 d2             	movsxd rdx,edx
  7c5c90:	49 89 d6             	mov    r14,rdx
  7c5c93:	4d 2b f0             	sub    r14,r8
  7c5c96:	48 89 85 30 f2 ff ff 	mov    QWORD PTR [rbp-0xdd0],rax
  7c5c9d:	4c 89 9d 20 f2 ff ff 	mov    QWORD PTR [rbp-0xde0],r11
  7c5ca4:	48 8b 85 20 fb ff ff 	mov    rax,QWORD PTR [rbp-0x4e0]
  7c5cab:	4c 89 95 b8 f5 ff ff 	mov    QWORD PTR [rbp-0xa48],r10
  7c5cb2:	4d 8d 5e 02          	lea    r11,[r14+0x2]
  7c5cb6:	4c 89 9d 90 fb ff ff 	mov    QWORD PTR [rbp-0x470],r11
  7c5cbd:	49 89 c3             	mov    r11,rax
  7c5cc0:	4c 8b 95 f0 fa ff ff 	mov    r10,QWORD PTR [rbp-0x510]
  7c5cc7:	4d 8d 4e 03          	lea    r9,[r14+0x3]
  7c5ccb:	49 ff c6             	inc    r14
  7c5cce:	4c 8b ad d8 fa ff ff 	mov    r13,QWORD PTR [rbp-0x528]
  7c5cd5:	4c 89 bd 28 f2 ff ff 	mov    QWORD PTR [rbp-0xdd8],r15
  7c5cdc:	4c 89 a5 48 f8 ff ff 	mov    QWORD PTR [rbp-0x7b8],r12
  7c5ce3:	4e 8d 24 c5 00 00 00 	lea    r12,[r8*8+0x0]
  7c5cea:	00 
  7c5ceb:	4c 89 8d e0 f7 ff ff 	mov    QWORD PTR [rbp-0x820],r9
  7c5cf2:	4c 89 b5 88 fb ff ff 	mov    QWORD PTR [rbp-0x478],r14
  7c5cf9:	4d 8d 74 24 f8       	lea    r14,[r12-0x8]
  7c5cfe:	4d 0f af d8          	imul   r11,r8
  7c5d02:	4d 0f af d0          	imul   r10,r8
  7c5d06:	4c 8b 85 e0 fa ff ff 	mov    r8,QWORD PTR [rbp-0x520]
  7c5d0d:	4c 8b bd 10 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x7f0]
  7c5d14:	4c 8b 8d 90 f1 ff ff 	mov    r9,QWORD PTR [rbp-0xe70]
  7c5d1b:	45 2b c5             	sub    r8d,r13d
  7c5d1e:	4d 2b cf             	sub    r9,r15
  7c5d21:	4d 63 c0             	movsxd r8,r8d
  7c5d24:	49 ff c0             	inc    r8
  7c5d27:	4c 89 85 20 fa ff ff 	mov    QWORD PTR [rbp-0x5e0],r8
  7c5d2e:	4d 89 c8             	mov    r8,r9
  7c5d31:	49 c1 e0 04          	shl    r8,0x4
  7c5d35:	4e 8d 2c cd 00 00 00 	lea    r13,[r9*8+0x0]
  7c5d3c:	00 
  7c5d3d:	4c 89 85 f0 f5 ff ff 	mov    QWORD PTR [rbp-0xa10],r8
  7c5d44:	4d 8d 41 01          	lea    r8,[r9+0x1]
  7c5d48:	4d 0f af f0          	imul   r14,r8
  7c5d4c:	4d 0f af e0          	imul   r12,r8
  7c5d50:	4c 89 b5 08 f6 ff ff 	mov    QWORD PTR [rbp-0x9f8],r14
  7c5d57:	4c 8d 34 d5 10 00 00 	lea    r14,[rdx*8+0x10]
  7c5d5e:	00 
  7c5d5f:	4d 0f af f0          	imul   r14,r8
  7c5d63:	4c 89 95 38 f2 ff ff 	mov    QWORD PTR [rbp-0xdc8],r10
  7c5d6a:	4d 89 ea             	mov    r10,r13
  7c5d6d:	49 f7 da             	neg    r10
  7c5d70:	48 8d 14 d5 08 00 00 	lea    rdx,[rdx*8+0x8]
  7c5d77:	00 
  7c5d78:	4c 89 85 40 f2 ff ff 	mov    QWORD PTR [rbp-0xdc0],r8
  7c5d7f:	49 0f af d0          	imul   rdx,r8
  7c5d83:	4c 89 b5 18 f6 ff ff 	mov    QWORD PTR [rbp-0x9e8],r14
  7c5d8a:	4f 8d 04 cc          	lea    r8,[r12+r9*8]
  7c5d8e:	48 89 bd 58 f7 ff ff 	mov    QWORD PTR [rbp-0x8a8],rdi
  7c5d95:	4d 8d 4d 08          	lea    r9,[r13+0x8]
  7c5d99:	48 8b bd d8 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x528]
  7c5da0:	4f 8d 34 22          	lea    r14,[r10+r12*1]
  7c5da4:	4c 89 b5 d0 f5 ff ff 	mov    QWORD PTR [rbp-0xa30],r14
  7c5dab:	4c 8b b5 98 f1 ff ff 	mov    r14,QWORD PTR [rbp-0xe68]
  7c5db2:	4d 0f af f1          	imul   r14,r9
  7c5db6:	48 89 95 10 f6 ff ff 	mov    QWORD PTR [rbp-0x9f0],rdx
  7c5dbd:	4d 2b d6             	sub    r10,r14
  7c5dc0:	48 8b 95 20 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x7e0]
  7c5dc7:	48 c1 e7 03          	shl    rdi,0x3
  7c5dcb:	48 89 b5 80 f7 ff ff 	mov    QWORD PTR [rbp-0x880],rsi
  7c5dd2:	4a 8d 34 fd 00 00 00 	lea    rsi,[r15*8+0x0]
  7c5dd9:	00 
  7c5dda:	4c 89 95 08 fc ff ff 	mov    QWORD PTR [rbp-0x3f8],r10
  7c5de1:	49 89 d2             	mov    r10,rdx
  7c5de4:	4d 2b ee             	sub    r13,r14
  7c5de7:	4c 2b d6             	sub    r10,rsi
  7c5dea:	4c 89 ad a8 f8 ff ff 	mov    QWORD PTR [rbp-0x758],r13
  7c5df1:	4d 2b d6             	sub    r10,r14
  7c5df4:	4c 8b ad 58 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xaa8]
  7c5dfb:	48 89 bd c8 f6 ff ff 	mov    QWORD PTR [rbp-0x938],rdi
  7c5e02:	48 2b fe             	sub    rdi,rsi
  7c5e05:	48 89 b5 00 fa ff ff 	mov    QWORD PTR [rbp-0x600],rsi
  7c5e0c:	4c 2b ee             	sub    r13,rsi
  7c5e0f:	4c 89 e6             	mov    rsi,r12
  7c5e12:	4d 2b ee             	sub    r13,r14
  7c5e15:	49 2b f6             	sub    rsi,r14
  7c5e18:	4c 89 85 c8 f5 ff ff 	mov    QWORD PTR [rbp-0xa38],r8
  7c5e1f:	4c 89 ad 78 f4 ff ff 	mov    QWORD PTR [rbp-0xb88],r13
  7c5e26:	4c 8b ad a8 f1 ff ff 	mov    r13,QWORD PTR [rbp-0xe58]
  7c5e2d:	4c 0f af e8          	imul   r13,rax
  7c5e31:	4c 89 a5 e8 f8 ff ff 	mov    QWORD PTR [rbp-0x718],r12
  7c5e38:	4c 8d 3c 37          	lea    r15,[rdi+rsi*1]
  7c5e3c:	49 03 fc             	add    rdi,r12
  7c5e3f:	4c 03 fa             	add    r15,rdx
  7c5e42:	49 2b fe             	sub    rdi,r14
  7c5e45:	48 03 fa             	add    rdi,rdx
  7c5e48:	48 8b 95 40 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xac0]
  7c5e4f:	49 89 d0             	mov    r8,rdx
  7c5e52:	4c 0f af 85 60 f5 ff 	imul   r8,QWORD PTR [rbp-0xaa0]
  7c5e59:	ff 
  7c5e5a:	48 89 bd 08 fa ff ff 	mov    QWORD PTR [rbp-0x5f8],rdi
  7c5e61:	48 8b bd 48 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xab8]
  7c5e68:	4c 89 8d a0 fb ff ff 	mov    QWORD PTR [rbp-0x460],r9
  7c5e6f:	49 89 d1             	mov    r9,rdx
  7c5e72:	4d 2b c8             	sub    r9,r8
  7c5e75:	4d 2b c5             	sub    r8,r13
  7c5e78:	4c 89 ad e0 f6 ff ff 	mov    QWORD PTR [rbp-0x920],r13
  7c5e7f:	4c 8d 24 17          	lea    r12,[rdi+rdx*1]
  7c5e83:	4c 89 e0             	mov    rax,r12
  7c5e86:	4d 2b eb             	sub    r13,r11
  7c5e89:	4c 89 ad 60 f2 ff ff 	mov    QWORD PTR [rbp-0xda0],r13
  7c5e90:	49 2b c0             	sub    rax,r8
  7c5e93:	4c 8b ad 38 fc ff ff 	mov    r13,QWORD PTR [rbp-0x3c8]
  7c5e9a:	48 f7 d8             	neg    rax
  7c5e9d:	4c 89 a5 50 f2 ff ff 	mov    QWORD PTR [rbp-0xdb0],r12
  7c5ea4:	4d 89 ec             	mov    r12,r13
  7c5ea7:	4c 89 b5 e0 f8 ff ff 	mov    QWORD PTR [rbp-0x720],r14
  7c5eae:	4c 8b b5 50 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xab0]
  7c5eb5:	49 03 c6             	add    rax,r14
  7c5eb8:	4c 89 95 70 f4 ff ff 	mov    QWORD PTR [rbp-0xb90],r10
  7c5ebf:	4d 89 f2             	mov    r10,r14
  7c5ec2:	4c 8b b5 a0 f1 ff ff 	mov    r14,QWORD PTR [rbp-0xe60]
  7c5ec9:	4c 0f af a5 d8 fa ff 	imul   r12,QWORD PTR [rbp-0x528]
  7c5ed0:	ff 
  7c5ed1:	4d 0f af f5          	imul   r14,r13
  7c5ed5:	48 0f af d1          	imul   rdx,rcx
  7c5ed9:	4c 89 bd d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],r15
  7c5ee0:	4d 89 df             	mov    r15,r11
  7c5ee3:	4c 89 b5 68 f2 ff ff 	mov    QWORD PTR [rbp-0xd98],r14
  7c5eea:	4d 2b fe             	sub    r15,r14
  7c5eed:	4d 2b f4             	sub    r14,r12
  7c5ef0:	4c 89 b5 c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r14
  7c5ef7:	49 89 fe             	mov    r14,rdi
  7c5efa:	4c 0f af b5 28 f5 ff 	imul   r14,QWORD PTR [rbp-0xad8]
  7c5f01:	ff 
  7c5f02:	48 89 b5 80 f8 ff ff 	mov    QWORD PTR [rbp-0x780],rsi
  7c5f09:	4d 03 e6             	add    r12,r14
  7c5f0c:	48 8b b5 18 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x7e8]
  7c5f13:	4c 2b d6             	sub    r10,rsi
  7c5f16:	48 2b f7             	sub    rsi,rdi
  7c5f19:	4d 03 e7             	add    r12,r15
  7c5f1c:	48 89 8d b0 f5 ff ff 	mov    QWORD PTR [rbp-0xa50],rcx
  7c5f23:	4c 03 e0             	add    r12,rax
  7c5f26:	48 8b 8d 60 f2 ff ff 	mov    rcx,QWORD PTR [rbp-0xda0]
  7c5f2d:	4c 03 e2             	add    r12,rdx
  7c5f30:	48 89 85 58 f8 ff ff 	mov    QWORD PTR [rbp-0x7a8],rax
  7c5f37:	4b 8d 04 33          	lea    rax,[r11+r14*1]
  7c5f3b:	4c 89 9d f8 f7 ff ff 	mov    QWORD PTR [rbp-0x808],r11
  7c5f42:	49 03 c0             	add    rax,r8
  7c5f45:	4c 8b 9d c8 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x738]
  7c5f4c:	4c 89 ef             	mov    rdi,r13
  7c5f4f:	4c 89 95 48 f2 ff ff 	mov    QWORD PTR [rbp-0xdb8],r10
  7c5f56:	48 f7 df             	neg    rdi
  7c5f59:	4c 89 85 58 f2 ff ff 	mov    QWORD PTR [rbp-0xda8],r8
  7c5f60:	4d 89 d8             	mov    r8,r11
  7c5f63:	4c 89 bd 70 f2 ff ff 	mov    QWORD PTR [rbp-0xd90],r15
  7c5f6a:	4f 8d 7c 35 00       	lea    r15,[r13+r14*1+0x0]
  7c5f6f:	4c 89 a5 80 fb ff ff 	mov    QWORD PTR [rbp-0x480],r12
  7c5f76:	4d 8d 24 32          	lea    r12,[r10+rsi*1]
  7c5f7a:	4d 2b c7             	sub    r8,r15
  7c5f7d:	4d 8d 14 09          	lea    r10,[r9+rcx*1]
  7c5f81:	49 f7 da             	neg    r10
  7c5f84:	49 f7 d8             	neg    r8
  7c5f87:	4d 03 d4             	add    r10,r12
  7c5f8a:	49 03 fe             	add    rdi,r14
  7c5f8d:	4d 03 c2             	add    r8,r10
  7c5f90:	49 f7 df             	neg    r15
  7c5f93:	4c 03 c2             	add    r8,rdx
  7c5f96:	4c 89 85 d0 f8 ff ff 	mov    QWORD PTR [rbp-0x730],r8
  7c5f9d:	4c 8b 85 a8 f1 ff ff 	mov    r8,QWORD PTR [rbp-0xe58]
  7c5fa4:	4c 0f af 85 f0 fa ff 	imul   r8,QWORD PTR [rbp-0x510]
  7c5fab:	ff 
  7c5fac:	4c 89 8d 08 f7 ff ff 	mov    QWORD PTR [rbp-0x8f8],r9
  7c5fb3:	48 89 b5 80 f2 ff ff 	mov    QWORD PTR [rbp-0xd80],rsi
  7c5fba:	49 2b f1             	sub    rsi,r9
  7c5fbd:	4d 89 d9             	mov    r9,r11
  7c5fc0:	4c 2b cf             	sub    r9,rdi
  7c5fc3:	48 f7 df             	neg    rdi
  7c5fc6:	48 8b 8d 38 f2 ff ff 	mov    rcx,QWORD PTR [rbp-0xdc8]
  7c5fcd:	49 f7 d9             	neg    r9
  7c5fd0:	4c 89 a5 88 f2 ff ff 	mov    QWORD PTR [rbp-0xd78],r12
  7c5fd7:	4d 03 ca             	add    r9,r10
  7c5fda:	4c 8b a5 d0 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb30]
  7c5fe1:	4c 03 ca             	add    r9,rdx
  7c5fe4:	4d 2b e0             	sub    r12,r8
  7c5fe7:	4c 2b c1             	sub    r8,rcx
  7c5fea:	4c 89 85 98 f2 ff ff 	mov    QWORD PTR [rbp-0xd68],r8
  7c5ff1:	4c 8b 85 e8 fa ff ff 	mov    r8,QWORD PTR [rbp-0x518]
  7c5ff8:	48 89 b5 90 f2 ff ff 	mov    QWORD PTR [rbp-0xd70],rsi
  7c5fff:	48 8b b5 a0 f1 ff ff 	mov    rsi,QWORD PTR [rbp-0xe60]
  7c6006:	49 0f af f0          	imul   rsi,r8
  7c600a:	4c 89 8d 78 fb ff ff 	mov    QWORD PTR [rbp-0x488],r9
  7c6011:	4c 8b 8d d8 fa ff ff 	mov    r9,QWORD PTR [rbp-0x528]
  7c6018:	4d 0f af c8          	imul   r9,r8
  7c601c:	48 89 85 78 f2 ff ff 	mov    QWORD PTR [rbp-0xd88],rax
  7c6023:	49 8d 04 0c          	lea    rax,[r12+rcx*1]
  7c6027:	48 2b ce             	sub    rcx,rsi
  7c602a:	49 2b f1             	sub    rsi,r9
  7c602d:	4c 03 e1             	add    r12,rcx
  7c6030:	4b 8d 0c 41          	lea    rcx,[r9+r8*2]
  7c6034:	48 2b c6             	sub    rax,rsi
  7c6037:	4f 8d 0c 6e          	lea    r9,[r14+r13*2]
  7c603b:	4d 2b d9             	sub    r11,r9
  7c603e:	4c 03 e1             	add    r12,rcx
  7c6041:	49 f7 db             	neg    r11
  7c6044:	4d 03 da             	add    r11,r10
  7c6047:	4c 03 da             	add    r11,rdx
  7c604a:	4c 89 9d c8 f8 ff ff 	mov    QWORD PTR [rbp-0x738],r11
  7c6051:	4c 8b 9d 08 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x7f8]
  7c6058:	49 c1 e3 04          	shl    r11,0x4
  7c605c:	4c 89 9d 00 f8 ff ff 	mov    QWORD PTR [rbp-0x800],r11
  7c6063:	4c 63 9d f8 fb ff ff 	movsxd r11,DWORD PTR [rbp-0x408]
  7c606a:	48 89 85 70 fb ff ff 	mov    QWORD PTR [rbp-0x490],rax
  7c6071:	48 8b 85 00 fa ff ff 	mov    rax,QWORD PTR [rbp-0x600]
  7c6078:	48 8b 8d d0 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xa30]
  7c607f:	4a 8d 34 dd 00 00 00 	lea    rsi,[r11*8+0x0]
  7c6086:	00 
  7c6087:	48 2b f0             	sub    rsi,rax
  7c608a:	48 f7 d8             	neg    rax
  7c608d:	4c 89 a5 c0 f8 ff ff 	mov    QWORD PTR [rbp-0x740],r12
  7c6094:	4c 8b a5 68 f7 ff ff 	mov    r12,QWORD PTR [rbp-0x898]
  7c609b:	4c 2b a5 60 f7 ff ff 	sub    r12,QWORD PTR [rbp-0x8a0]
  7c60a2:	49 ff c4             	inc    r12
  7c60a5:	4c 89 a5 68 fb ff ff 	mov    QWORD PTR [rbp-0x498],r12
  7c60ac:	4c 8d 24 0e          	lea    r12,[rsi+rcx*1]
  7c60b0:	48 8b 8d e0 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x720]
  7c60b7:	4c 2b e1             	sub    r12,rcx
  7c60ba:	4c 8b 85 20 f8 ff ff 	mov    r8,QWORD PTR [rbp-0x7e0]
  7c60c1:	4d 03 e0             	add    r12,r8
  7c60c4:	4c 89 a5 e8 f5 ff ff 	mov    QWORD PTR [rbp-0xa18],r12
  7c60cb:	4c 8b a5 e8 f8 ff ff 	mov    r12,QWORD PTR [rbp-0x718]
  7c60d2:	4c 89 95 00 f7 ff ff 	mov    QWORD PTR [rbp-0x900],r10
  7c60d9:	4c 89 8d 10 f7 ff ff 	mov    QWORD PTR [rbp-0x8f0],r9
  7c60e0:	4c 89 b5 d0 f6 ff ff 	mov    QWORD PTR [rbp-0x930],r14
  7c60e7:	4c 03 e6             	add    r12,rsi
  7c60ea:	48 03 b5 c8 f5 ff ff 	add    rsi,QWORD PTR [rbp-0xa38]
  7c60f1:	4c 2b e1             	sub    r12,rcx
  7c60f4:	48 2b f1             	sub    rsi,rcx
  7c60f7:	4d 03 e0             	add    r12,r8
  7c60fa:	49 03 f0             	add    rsi,r8
  7c60fd:	48 89 b5 d8 f5 ff ff 	mov    QWORD PTR [rbp-0xa28],rsi
  7c6104:	48 63 b5 00 fc ff ff 	movsxd rsi,DWORD PTR [rbp-0x400]
  7c610b:	4c 89 a5 e0 f5 ff ff 	mov    QWORD PTR [rbp-0xa20],r12
  7c6112:	4c 2b de             	sub    r11,rsi
  7c6115:	4c 8b a5 f8 fa ff ff 	mov    r12,QWORD PTR [rbp-0x508]
  7c611c:	4c 0f af e6          	imul   r12,rsi
  7c6120:	4c 0f af ee          	imul   r13,rsi
  7c6124:	4c 89 a5 a0 f2 ff ff 	mov    QWORD PTR [rbp-0xd60],r12
  7c612b:	4c 8b a5 28 fb ff ff 	mov    r12,QWORD PTR [rbp-0x4d8]
  7c6132:	4c 0f af e6          	imul   r12,rsi
  7c6136:	4c 89 a5 a8 f2 ff ff 	mov    QWORD PTR [rbp-0xd58],r12
  7c613d:	4c 8b a5 30 fb ff ff 	mov    r12,QWORD PTR [rbp-0x4d0]
  7c6144:	4c 0f af e6          	imul   r12,rsi
  7c6148:	4c 89 a5 00 f2 ff ff 	mov    QWORD PTR [rbp-0xe00],r12
  7c614f:	4c 8b a5 68 f2 ff ff 	mov    r12,QWORD PTR [rbp-0xd98]
  7c6156:	4d 2b e5             	sub    r12,r13
  7c6159:	49 03 fc             	add    rdi,r12
  7c615c:	4d 03 fc             	add    r15,r12
  7c615f:	48 f7 df             	neg    rdi
  7c6162:	49 f7 df             	neg    r15
  7c6165:	49 03 fa             	add    rdi,r10
  7c6168:	4d 03 fa             	add    r15,r10
  7c616b:	48 03 fa             	add    rdi,rdx
  7c616e:	4c 03 fa             	add    r15,rdx
  7c6171:	48 89 bd 30 f7 ff ff 	mov    QWORD PTR [rbp-0x8d0],rdi
  7c6178:	48 8b bd 70 f2 ff ff 	mov    rdi,QWORD PTR [rbp-0xd90]
  7c617f:	4c 89 a5 b0 f2 ff ff 	mov    QWORD PTR [rbp-0xd50],r12
  7c6186:	4d 2b e1             	sub    r12,r9
  7c6189:	4c 89 a5 20 f7 ff ff 	mov    QWORD PTR [rbp-0x8e0],r12
  7c6190:	4d 2b d4             	sub    r10,r12
  7c6193:	4c 89 bd 40 f7 ff ff 	mov    QWORD PTR [rbp-0x8c0],r15
  7c619a:	4f 8d 24 2e          	lea    r12,[r14+r13*1]
  7c619e:	4c 8b b5 d0 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xa30]
  7c61a5:	4e 8d 3c 27          	lea    r15,[rdi+r12*1]
  7c61a9:	4c 03 bd 58 f8 ff ff 	add    r15,QWORD PTR [rbp-0x7a8]
  7c61b0:	4d 8d 4b 02          	lea    r9,[r11+0x2]
  7c61b4:	4c 03 fa             	add    r15,rdx
  7c61b7:	4c 03 d2             	add    r10,rdx
  7c61ba:	4c 89 bd b0 f8 ff ff 	mov    QWORD PTR [rbp-0x750],r15
  7c61c1:	4e 8d 3c dd 08 00 00 	lea    r15,[r11*8+0x8]
  7c61c8:	00 
  7c61c9:	49 ff c3             	inc    r11
  7c61cc:	4c 89 9d 48 fc ff ff 	mov    QWORD PTR [rbp-0x3b8],r11
  7c61d3:	4c 8d 1c f5 00 00 00 	lea    r11,[rsi*8+0x0]
  7c61da:	00 
  7c61db:	49 03 c3             	add    rax,r11
  7c61de:	4c 03 f0             	add    r14,rax
  7c61e1:	4c 2b f1             	sub    r14,rcx
  7c61e4:	4d 03 f0             	add    r14,r8
  7c61e7:	4c 89 b5 d0 f5 ff ff 	mov    QWORD PTR [rbp-0xa30],r14
  7c61ee:	4c 8b b5 58 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xaa8]
  7c61f5:	48 8b bd 08 f6 ff ff 	mov    rdi,QWORD PTR [rbp-0x9f8]
  7c61fc:	48 89 b5 b8 f8 ff ff 	mov    QWORD PTR [rbp-0x748],rsi
  7c6203:	48 8b b5 e8 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x718]
  7c620a:	4c 89 ad 50 f8 ff ff 	mov    QWORD PTR [rbp-0x7b0],r13
  7c6211:	4d 8d 2c 3e          	lea    r13,[r14+rdi*1]
  7c6215:	4c 2b ee             	sub    r13,rsi
  7c6218:	48 89 95 b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],rdx
  7c621f:	49 8d 14 36          	lea    rdx,[r14+rsi*1]
  7c6223:	4d 2b ee             	sub    r13,r14
  7c6226:	48 2b d7             	sub    rdx,rdi
  7c6229:	4c 89 95 38 f7 ff ff 	mov    QWORD PTR [rbp-0x8c8],r10
  7c6230:	4d 3b ef             	cmp    r13,r15
  7c6233:	4c 8b 95 c8 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xa38]
  7c623a:	41 bd 00 00 00 00    	mov    r13d,0x0
  7c6240:	4c 89 9d f8 f1 ff ff 	mov    QWORD PTR [rbp-0xe08],r11
  7c6247:	45 89 eb             	mov    r11d,r13d
  7c624a:	41 0f 9f c3          	setg   r11b
  7c624e:	4c 03 d0             	add    r10,rax
  7c6251:	4c 2b d1             	sub    r10,rcx
  7c6254:	49 2b d6             	sub    rdx,r14
  7c6257:	4d 03 d0             	add    r10,r8
  7c625a:	49 3b d7             	cmp    rdx,r15
  7c625d:	4c 89 95 c8 f5 ff ff 	mov    QWORD PTR [rbp-0xa38],r10
  7c6264:	4c 8b 95 18 f6 ff ff 	mov    r10,QWORD PTR [rbp-0x9e8]
  7c626b:	4c 89 8d 18 fc ff ff 	mov    QWORD PTR [rbp-0x3e8],r9
  7c6272:	45 89 e9             	mov    r9d,r13d
  7c6275:	41 0f 9f c1          	setg   r9b
  7c6279:	48 8b 95 10 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x9f0]
  7c6280:	45 0b d9             	or     r11d,r9d
  7c6283:	44 89 9d 48 f6 ff ff 	mov    DWORD PTR [rbp-0x9b8],r11d
  7c628a:	4f 8d 0c 16          	lea    r9,[r14+r10*1]
  7c628e:	4c 2b ca             	sub    r9,rdx
  7c6291:	4d 2b ce             	sub    r9,r14
  7c6294:	4d 8d 1c 16          	lea    r11,[r14+rdx*1]
  7c6298:	4d 2b da             	sub    r11,r10
  7c629b:	4d 3b cf             	cmp    r9,r15
  7c629e:	45 89 e9             	mov    r9d,r13d
  7c62a1:	41 0f 9f c1          	setg   r9b
  7c62a5:	4d 2b de             	sub    r11,r14
  7c62a8:	4d 3b df             	cmp    r11,r15
  7c62ab:	4c 89 bd 50 f6 ff ff 	mov    QWORD PTR [rbp-0x9b0],r15
  7c62b2:	4d 89 d7             	mov    r15,r10
  7c62b5:	41 0f 9f c5          	setg   r13b
  7c62b9:	4c 03 d0             	add    r10,rax
  7c62bc:	45 0b cd             	or     r9d,r13d
  7c62bf:	4c 2b d1             	sub    r10,rcx
  7c62c2:	44 89 8d 20 f6 ff ff 	mov    DWORD PTR [rbp-0x9e0],r9d
  7c62c9:	49 89 f9             	mov    r9,rdi
  7c62cc:	4c 2b c9             	sub    r9,rcx
  7c62cf:	4d 03 d6             	add    r10,r14
  7c62d2:	4c 89 95 18 f6 ff ff 	mov    QWORD PTR [rbp-0x9e8],r10
  7c62d9:	49 89 d2             	mov    r10,rdx
  7c62dc:	48 03 d0             	add    rdx,rax
  7c62df:	4c 03 c8             	add    r9,rax
  7c62e2:	48 2b d1             	sub    rdx,rcx
  7c62e5:	4c 8d 2c 30          	lea    r13,[rax+rsi*1]
  7c62e9:	4d 03 ce             	add    r9,r14
  7c62ec:	49 03 d6             	add    rdx,r14
  7c62ef:	4c 89 8d 58 f6 ff ff 	mov    QWORD PTR [rbp-0x9a8],r9
  7c62f6:	48 03 f8             	add    rdi,rax
  7c62f9:	4c 89 a5 b8 f2 ff ff 	mov    QWORD PTR [rbp-0xd48],r12
  7c6300:	4c 2b d1             	sub    r10,rcx
  7c6303:	4c 8b 8d 08 fc ff ff 	mov    r9,QWORD PTR [rbp-0x3f8]
  7c630a:	48 2b f9             	sub    rdi,rcx
  7c630d:	4c 8b a5 80 f8 ff ff 	mov    r12,QWORD PTR [rbp-0x780]
  7c6314:	4d 03 cd             	add    r9,r13
  7c6317:	48 8b b5 a8 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x758]
  7c631e:	4c 03 e0             	add    r12,rax
  7c6321:	49 03 f5             	add    rsi,r13
  7c6324:	4c 2b e9             	sub    r13,rcx
  7c6327:	48 89 95 10 f6 ff ff 	mov    QWORD PTR [rbp-0x9f0],rdx
  7c632e:	4c 03 d0             	add    r10,rax
  7c6331:	48 8b 95 28 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x7d8]
  7c6338:	49 03 fe             	add    rdi,r14
  7c633b:	48 89 bd 08 f6 ff ff 	mov    QWORD PTR [rbp-0x9f8],rdi
  7c6342:	4d 03 d6             	add    r10,r14
  7c6345:	4c 89 95 60 f6 ff ff 	mov    QWORD PTR [rbp-0x9a0],r10
  7c634c:	4f 8d 1c 2e          	lea    r11,[r14+r13*1]
  7c6350:	4c 89 9d 30 f8 ff ff 	mov    QWORD PTR [rbp-0x7d0],r11
  7c6357:	4a 8d 3c 0a          	lea    rdi,[rdx+r9*1]
  7c635b:	4d 03 ce             	add    r9,r14
  7c635e:	4e 8d 14 2a          	lea    r10,[rdx+r13*1]
  7c6362:	4c 89 8d 08 fc ff ff 	mov    QWORD PTR [rbp-0x3f8],r9
  7c6369:	4d 03 e8             	add    r13,r8
  7c636c:	4c 89 95 a0 f8 ff ff 	mov    QWORD PTR [rbp-0x760],r10
  7c6373:	4d 03 c4             	add    r8,r12
  7c6376:	4c 8b 95 40 f2 ff ff 	mov    r10,QWORD PTR [rbp-0xdc0]
  7c637d:	4f 8d 0c 26          	lea    r9,[r14+r12*1]
  7c6381:	4c 03 e2             	add    r12,rdx
  7c6384:	4c 2b f9             	sub    r15,rcx
  7c6387:	4c 89 a5 80 f8 ff ff 	mov    QWORD PTR [rbp-0x780],r12
  7c638e:	4c 03 f8             	add    r15,rax
  7c6391:	4c 8b a5 60 f7 ff ff 	mov    r12,QWORD PTR [rbp-0x8a0]
  7c6398:	49 03 f6             	add    rsi,r14
  7c639b:	4c 89 ad 98 f8 ff ff 	mov    QWORD PTR [rbp-0x768],r13
  7c63a2:	4d 03 fe             	add    r15,r14
  7c63a5:	48 89 bd 10 fc ff ff 	mov    QWORD PTR [rbp-0x3f0],rdi
  7c63ac:	48 89 b5 a8 f8 ff ff 	mov    QWORD PTR [rbp-0x758],rsi
  7c63b3:	4e 8d 1c e5 00 00 00 	lea    r11,[r12*8+0x0]
  7c63ba:	00 
  7c63bb:	4d 0f af d3          	imul   r10,r11
  7c63bf:	4d 89 d5             	mov    r13,r10
  7c63c2:	4c 2b e9             	sub    r13,rcx
  7c63c5:	4c 03 e8             	add    r13,rax
  7c63c8:	49 03 c2             	add    rax,r10
  7c63cb:	4c 8b 9d 20 fb ff ff 	mov    r11,QWORD PTR [rbp-0x4e0]
  7c63d2:	4d 03 ee             	add    r13,r14
  7c63d5:	4c 89 ad 78 f8 ff ff 	mov    QWORD PTR [rbp-0x788],r13
  7c63dc:	4d 89 dd             	mov    r13,r11
  7c63df:	4d 0f af ec          	imul   r13,r12
  7c63e3:	48 2b c1             	sub    rax,rcx
  7c63e6:	4c 89 ef             	mov    rdi,r13
  7c63e9:	48 8b 8d 48 fc ff ff 	mov    rcx,QWORD PTR [rbp-0x3b8]
  7c63f0:	49 03 c6             	add    rax,r14
  7c63f3:	48 89 85 00 fa ff ff 	mov    QWORD PTR [rbp-0x600],rax
  7c63fa:	89 c8                	mov    eax,ecx
  7c63fc:	83 e0 fe             	and    eax,0xfffffffe
  7c63ff:	49 f7 db             	neg    r11
  7c6402:	48 98                	cdqe   
  7c6404:	48 89 85 58 fc ff ff 	mov    QWORD PTR [rbp-0x3a8],rax
  7c640b:	48 8b 85 e0 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x920]
  7c6412:	49 2b c5             	sub    rax,r13
  7c6415:	4f 8d 14 2b          	lea    r10,[r11+r13*1]
  7c6419:	4c 89 85 90 f8 ff ff 	mov    QWORD PTR [rbp-0x770],r8
  7c6420:	48 8d 95 08 f7 ff ff 	lea    rdx,[rbp-0x8f8]
  7c6427:	4c 8b 02             	mov    r8,QWORD PTR [rdx]
  7c642a:	48 8b b5 68 f2 ff ff 	mov    rsi,QWORD PTR [rbp-0xd98]
  7c6431:	4c 03 c0             	add    r8,rax
  7c6434:	48 2b fe             	sub    rdi,rsi
  7c6437:	48 f7 de             	neg    rsi
  7c643a:	49 f7 d8             	neg    r8
  7c643d:	49 03 f3             	add    rsi,r11
  7c6440:	4c 89 bd 68 f6 ff ff 	mov    QWORD PTR [rbp-0x998],r15
  7c6447:	4c 89 8d 88 f8 ff ff 	mov    QWORD PTR [rbp-0x778],r9
  7c644e:	4c 8b 8d 20 f7 ff ff 	mov    r9,QWORD PTR [rbp-0x8e0]
  7c6455:	4c 8b bd b8 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xd48]
  7c645c:	49 f7 d9             	neg    r9
  7c645f:	4c 03 85 88 f2 ff ff 	add    r8,QWORD PTR [rbp-0xd78]
  7c6466:	49 03 ff             	add    rdi,r15
  7c6469:	4c 03 fe             	add    r15,rsi
  7c646c:	4d 03 c8             	add    r9,r8
  7c646f:	4d 03 c7             	add    r8,r15
  7c6472:	4c 8b b5 b8 f6 ff ff 	mov    r14,QWORD PTR [rbp-0x948]
  7c6479:	4d 03 c6             	add    r8,r14
  7c647c:	4c 89 02             	mov    QWORD PTR [rdx],r8
  7c647f:	4d 03 ce             	add    r9,r14
  7c6482:	4c 8b 85 f8 f7 ff ff 	mov    r8,QWORD PTR [rbp-0x808]
  7c6489:	48 8b b5 d0 f6 ff ff 	mov    rsi,QWORD PTR [rbp-0x930]
  7c6490:	4c 03 ee             	add    r13,rsi
  7c6493:	89 8d 60 fb ff ff    	mov    DWORD PTR [rbp-0x4a0],ecx
  7c6499:	83 e1 fc             	and    ecx,0xfffffffc
  7c649c:	4c 03 ad 58 f2 ff ff 	add    r13,QWORD PTR [rbp-0xda8]
  7c64a3:	48 63 c9             	movsxd rcx,ecx
  7c64a6:	48 89 8d 40 fc ff ff 	mov    QWORD PTR [rbp-0x3c0],rcx
  7c64ad:	4c 89 ad c0 f6 ff ff 	mov    QWORD PTR [rbp-0x940],r13
  7c64b4:	4f 8d 2c 03          	lea    r13,[r11+r8*1]
  7c64b8:	48 8b 8d 58 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x7a8]
  7c64bf:	48 03 f9             	add    rdi,rcx
  7c64c2:	48 8b 95 b0 f2 ff ff 	mov    rdx,QWORD PTR [rbp-0xd50]
  7c64c9:	4c 2b d2             	sub    r10,rdx
  7c64cc:	4c 2b ea             	sub    r13,rdx
  7c64cf:	49 03 fe             	add    rdi,r14
  7c64d2:	4c 89 8d 20 f7 ff ff 	mov    QWORD PTR [rbp-0x8e0],r9
  7c64d9:	4c 03 de             	add    r11,rsi
  7c64dc:	48 89 bd 28 f7 ff ff 	mov    QWORD PTR [rbp-0x8d8],rdi
  7c64e3:	49 2b c3             	sub    rax,r11
  7c64e6:	48 8d b5 00 f7 ff ff 	lea    rsi,[rbp-0x900]
  7c64ed:	4c 8b 0e             	mov    r9,QWORD PTR [rsi]
  7c64f0:	49 f7 db             	neg    r11
  7c64f3:	48 8b bd 10 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x8f0]
  7c64fa:	4d 03 cf             	add    r9,r15
  7c64fd:	4c 03 d7             	add    r10,rdi
  7c6500:	49 03 fd             	add    rdi,r13
  7c6503:	4c 8b ad a8 f1 ff ff 	mov    r13,QWORD PTR [rbp-0xe58]
  7c650a:	4d 03 ce             	add    r9,r14
  7c650d:	4c 03 d1             	add    r10,rcx
  7c6510:	48 03 f9             	add    rdi,rcx
  7c6513:	4c 89 0e             	mov    QWORD PTR [rsi],r9
  7c6516:	4d 89 e9             	mov    r9,r13
  7c6519:	4d 03 d6             	add    r10,r14
  7c651c:	49 03 fe             	add    rdi,r14
  7c651f:	4c 8b b5 00 fb ff ff 	mov    r14,QWORD PTR [rbp-0x500]
  7c6526:	4d 0f af ce          	imul   r9,r14
  7c652a:	4d 0f af e6          	imul   r12,r14
  7c652e:	4c 8b b5 a0 f1 ff ff 	mov    r14,QWORD PTR [rbp-0xe60]
  7c6535:	4c 8b bd d8 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb28]
  7c653c:	4d 2b f9             	sub    r15,r9
  7c653f:	4d 2b cc             	sub    r9,r12
  7c6542:	4c 8b 85 f8 fa ff ff 	mov    r8,QWORD PTR [rbp-0x508]
  7c6549:	4c 89 8d c0 f2 ff ff 	mov    QWORD PTR [rbp-0xd40],r9
  7c6550:	4d 89 f1             	mov    r9,r14
  7c6553:	4d 0f af c8          	imul   r9,r8
  7c6557:	4c 03 9d 60 f2 ff ff 	add    r11,QWORD PTR [rbp-0xda0]
  7c655e:	4c 89 9d d8 f6 ff ff 	mov    QWORD PTR [rbp-0x928],r11
  7c6565:	4f 8d 1c 27          	lea    r11,[r15+r12*1]
  7c6569:	4d 2b e1             	sub    r12,r9
  7c656c:	4d 03 fc             	add    r15,r12
  7c656f:	4c 8b a5 a0 f2 ff ff 	mov    r12,QWORD PTR [rbp-0xd60]
  7c6576:	8b 95 a8 f7 ff ff    	mov    edx,DWORD PTR [rbp-0x858]
  7c657c:	4d 2b cc             	sub    r9,r12
  7c657f:	8b b5 88 f7 ff ff    	mov    esi,DWORD PTR [rbp-0x878]
  7c6585:	4d 2b d9             	sub    r11,r9
  7c6588:	4c 89 95 18 f7 ff ff 	mov    QWORD PTR [rbp-0x8e8],r10
  7c658f:	4f 8d 14 44          	lea    r10,[r12+r8*2]
  7c6593:	4d 03 fa             	add    r15,r10
  7c6596:	4d 89 f0             	mov    r8,r14
  7c6599:	4c 89 bd 70 f8 ff ff 	mov    QWORD PTR [rbp-0x790],r15
  7c65a0:	4c 8b bd 60 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xaa0]
  7c65a7:	48 89 bd 10 f7 ff ff 	mov    QWORD PTR [rbp-0x8f0],rdi
  7c65ae:	8d 7a 01             	lea    edi,[rdx+0x1]
  7c65b1:	4c 89 fa             	mov    rdx,r15
  7c65b4:	4c 89 9d 58 fb ff ff 	mov    QWORD PTR [rbp-0x4a8],r11
  7c65bb:	4c 8b 9d f0 f4 ff ff 	mov    r11,QWORD PTR [rbp-0xb10]
  7c65c2:	48 89 85 e0 f6 ff ff 	mov    QWORD PTR [rbp-0x920],rax
  7c65c9:	8d 46 ff             	lea    eax,[rsi-0x1]
  7c65cc:	49 0f af d3          	imul   rdx,r11
  7c65d0:	4c 89 ee             	mov    rsi,r13
  7c65d3:	49 89 d1             	mov    r9,rdx
  7c65d6:	48 0f af b5 38 fb ff 	imul   rsi,QWORD PTR [rbp-0x4c8]
  7c65dd:	ff 
  7c65de:	4c 8b a5 f8 f4 ff ff 	mov    r12,QWORD PTR [rbp-0xb08]
  7c65e5:	4c 2b ce             	sub    r9,rsi
  7c65e8:	4d 2b e3             	sub    r12,r11
  7c65eb:	4c 89 a5 c8 f2 ff ff 	mov    QWORD PTR [rbp-0xd38],r12
  7c65f2:	49 03 d4             	add    rdx,r12
  7c65f5:	4c 89 8d d0 f2 ff ff 	mov    QWORD PTR [rbp-0xd30],r9
  7c65fc:	89 bd 98 f7 ff ff    	mov    DWORD PTR [rbp-0x868],edi
  7c6602:	48 8b bd 30 f2 ff ff 	mov    rdi,QWORD PTR [rbp-0xdd0]
  7c6609:	4d 03 cc             	add    r9,r12
  7c660c:	4c 8b a5 28 fb ff ff 	mov    r12,QWORD PTR [rbp-0x4d8]
  7c6613:	48 2b f7             	sub    rsi,rdi
  7c6616:	4d 0f af c4          	imul   r8,r12
  7c661a:	49 2b f8             	sub    rdi,r8
  7c661d:	89 85 90 f7 ff ff    	mov    DWORD PTR [rbp-0x870],eax
  7c6623:	4c 89 c8             	mov    rax,r9
  7c6626:	4c 03 cf             	add    r9,rdi
  7c6629:	49 2b c0             	sub    rax,r8
  7c662c:	48 8b bd a8 f2 ff ff 	mov    rdi,QWORD PTR [rbp-0xd58]
  7c6633:	4c 2b c7             	sub    r8,rdi
  7c6636:	4c 8b 95 b0 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xa50]
  7c663d:	49 03 f0             	add    rsi,r8
  7c6640:	4d 0f af da          	imul   r11,r10
  7c6644:	48 2b d6             	sub    rdx,rsi
  7c6647:	49 03 c3             	add    rax,r11
  7c664a:	48 8b b5 30 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xad0]
  7c6651:	4c 03 cf             	add    r9,rdi
  7c6654:	4c 0f af fe          	imul   r15,rsi
  7c6658:	48 89 85 80 f4 ff ff 	mov    QWORD PTR [rbp-0xb80],rax
  7c665f:	4e 8d 04 62          	lea    r8,[rdx+r12*2]
  7c6663:	4c 89 ea             	mov    rdx,r13
  7c6666:	4c 89 f0             	mov    rax,r14
  7c6669:	48 0f af 95 18 fb ff 	imul   rdx,QWORD PTR [rbp-0x4e8]
  7c6670:	ff 
  7c6671:	48 f7 d8             	neg    rax
  7c6674:	4d 03 cb             	add    r9,r11
  7c6677:	4c 8b a5 38 f5 ff ff 	mov    r12,QWORD PTR [rbp-0xac8]
  7c667e:	4c 2b fa             	sub    r15,rdx
  7c6681:	4c 2b e6             	sub    r12,rsi
  7c6684:	4d 03 c3             	add    r8,r11
  7c6687:	49 0f af f2          	imul   rsi,r10
  7c668b:	4c 63 95 00 fc ff ff 	movsxd r10,DWORD PTR [rbp-0x400]
  7c6692:	49 03 c2             	add    rax,r10
  7c6695:	4c 89 8d 68 f8 ff ff 	mov    QWORD PTR [rbp-0x798],r9
  7c669c:	4d 89 ea             	mov    r10,r13
  7c669f:	4c 8b 8d 30 fc ff ff 	mov    r9,QWORD PTR [rbp-0x3d0]
  7c66a6:	4c 0f af c8          	imul   r9,rax
  7c66aa:	4c 0f af 95 10 fb ff 	imul   r10,QWORD PTR [rbp-0x4f0]
  7c66b1:	ff 
  7c66b2:	4c 0f af ad 08 fb ff 	imul   r13,QWORD PTR [rbp-0x4f8]
  7c66b9:	ff 
  7c66ba:	4c 89 a5 d8 f2 ff ff 	mov    QWORD PTR [rbp-0xd28],r12
  7c66c1:	4d 03 e7             	add    r12,r15
  7c66c4:	4c 03 a5 18 f2 ff ff 	add    r12,QWORD PTR [rbp-0xde8]
  7c66cb:	4c 03 e6             	add    r12,rsi
  7c66ce:	4d 03 cc             	add    r9,r12
  7c66d1:	4c 89 8d 50 f7 ff ff 	mov    QWORD PTR [rbp-0x8b0],r9
  7c66d8:	4c 8b 8d 48 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xab8]
  7c66df:	4c 89 cf             	mov    rdi,r9
  7c66e2:	48 0f af bd 20 f5 ff 	imul   rdi,QWORD PTR [rbp-0xae0]
  7c66e9:	ff 
  7c66ea:	4c 89 85 60 f8 ff ff 	mov    QWORD PTR [rbp-0x7a0],r8
  7c66f1:	4c 8b 85 50 f8 ff ff 	mov    r8,QWORD PTR [rbp-0x7b0]
  7c66f8:	4c 89 bd e0 f2 ff ff 	mov    QWORD PTR [rbp-0xd20],r15
  7c66ff:	4c 8b bd 70 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xd90]
  7c6706:	4c 8b a5 b8 f6 ff ff 	mov    r12,QWORD PTR [rbp-0x948]
  7c670d:	49 8d 14 38          	lea    rdx,[r8+rdi*1]
  7c6711:	49 03 d7             	add    rdx,r15
  7c6714:	48 03 ca             	add    rcx,rdx
  7c6717:	48 8b 95 28 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x3d8]
  7c671e:	49 03 cc             	add    rcx,r12
  7c6721:	48 0f af d0          	imul   rdx,rax
  7c6725:	48 0f af 85 20 fc ff 	imul   rax,QWORD PTR [rbp-0x3e0]
  7c672c:	ff 
  7c672d:	48 03 bd f8 f7 ff ff 	add    rdi,QWORD PTR [rbp-0x808]
  7c6734:	48 89 8d 58 f8 ff ff 	mov    QWORD PTR [rbp-0x7a8],rcx
  7c673b:	48 8b 8d 18 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xae8]
  7c6742:	48 89 b5 c0 f1 ff ff 	mov    QWORD PTR [rbp-0xe40],rsi
  7c6749:	49 2b ca             	sub    rcx,r10
  7c674c:	48 8b b5 58 f2 ff ff 	mov    rsi,QWORD PTR [rbp-0xda8]
  7c6753:	48 03 fe             	add    rdi,rsi
  7c6756:	48 89 bd f0 f7 ff ff 	mov    QWORD PTR [rbp-0x810],rdi
  7c675d:	48 8b bd 20 f2 ff ff 	mov    rdi,QWORD PTR [rbp-0xde0]
  7c6764:	48 03 cf             	add    rcx,rdi
  7c6767:	48 03 d1             	add    rdx,rcx
  7c676a:	4c 2b d7             	sub    r10,rdi
  7c676d:	48 89 95 f8 f6 ff ff 	mov    QWORD PTR [rbp-0x908],rdx
  7c6774:	48 8b 95 10 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xaf0]
  7c677b:	48 89 d1             	mov    rcx,rdx
  7c677e:	49 2b cd             	sub    rcx,r13
  7c6781:	48 8b bd 28 f2 ff ff 	mov    rdi,QWORD PTR [rbp-0xdd8]
  7c6788:	48 03 cf             	add    rcx,rdi
  7c678b:	48 03 c1             	add    rax,rcx
  7c678e:	4c 2b ef             	sub    r13,rdi
  7c6791:	48 89 85 f0 f6 ff ff 	mov    QWORD PTR [rbp-0x910],rax
  7c6798:	4b 8d 04 49          	lea    rax,[r9+r9*2]
  7c679c:	48 2b 85 40 f5 ff ff 	sub    rax,QWORD PTR [rbp-0xac0]
  7c67a3:	48 8b 8d 80 f2 ff ff 	mov    rcx,QWORD PTR [rbp-0xd80]
  7c67aa:	48 03 c8             	add    rcx,rax
  7c67ad:	48 03 c6             	add    rax,rsi
  7c67b0:	4c 8b 8d 88 f2 ff ff 	mov    r9,QWORD PTR [rbp-0xd78]
  7c67b7:	4c 03 c8             	add    r9,rax
  7c67ba:	4d 03 f9             	add    r15,r9
  7c67bd:	4d 03 c7             	add    r8,r15
  7c67c0:	4e 8d 3c f5 00 00 00 	lea    r15,[r14*8+0x0]
  7c67c7:	00 
  7c67c8:	4c 8b b5 f8 f1 ff ff 	mov    r14,QWORD PTR [rbp-0xe08]
  7c67cf:	4d 03 c4             	add    r8,r12
  7c67d2:	4d 2b f7             	sub    r14,r15
  7c67d5:	48 8b bd c8 f2 ff ff 	mov    rdi,QWORD PTR [rbp-0xd38]
  7c67dc:	49 03 fe             	add    rdi,r14
  7c67df:	4c 8b 8d d0 f2 ff ff 	mov    r9,QWORD PTR [rbp-0xd30]
  7c67e6:	4c 03 cf             	add    r9,rdi
  7c67e9:	4c 03 8d 30 f2 ff ff 	add    r9,QWORD PTR [rbp-0xdd0]
  7c67f0:	4d 03 d9             	add    r11,r9
  7c67f3:	4c 89 9d d8 f1 ff ff 	mov    QWORD PTR [rbp-0xe28],r11
  7c67fa:	4c 8b 9d d8 f2 ff ff 	mov    r11,QWORD PTR [rbp-0xd28]
  7c6801:	4d 03 de             	add    r11,r14
  7c6804:	4c 8b 8d e0 f2 ff ff 	mov    r9,QWORD PTR [rbp-0xd20]
  7c680b:	4d 03 cb             	add    r9,r11
  7c680e:	4c 8b 9d d8 f4 ff ff 	mov    r11,QWORD PTR [rbp-0xb28]
  7c6815:	48 8b 85 90 f2 ff ff 	mov    rax,QWORD PTR [rbp-0xd70]
  7c681c:	4c 03 8d 18 f2 ff ff 	add    r9,QWORD PTR [rbp-0xde8]
  7c6823:	4c 01 8d c0 f1 ff ff 	add    QWORD PTR [rbp-0xe40],r9
  7c682a:	4b 8d 3c 33          	lea    rdi,[r11+r14*1]
  7c682e:	48 2b bd c0 f2 ff ff 	sub    rdi,QWORD PTR [rbp-0xd40]
  7c6835:	48 89 bd e0 f1 ff ff 	mov    QWORD PTR [rbp-0xe20],rdi
  7c683c:	48 8b bd 48 f2 ff ff 	mov    rdi,QWORD PTR [rbp-0xdb8]
  7c6843:	4c 8b 8d d0 f6 ff ff 	mov    r9,QWORD PTR [rbp-0x930]
  7c684a:	4c 89 85 50 f8 ff ff 	mov    QWORD PTR [rbp-0x7b0],r8
  7c6851:	4c 8b 85 c8 f6 ff ff 	mov    r8,QWORD PTR [rbp-0x938]
  7c6858:	4e 8d 1c 37          	lea    r11,[rdi+r14*1]
  7c685c:	49 03 cb             	add    rcx,r11
  7c685f:	4c 03 d8             	add    r11,rax
  7c6862:	48 03 f1             	add    rsi,rcx
  7c6865:	4d 2b c7             	sub    r8,r15
  7c6868:	4c 8d bd f8 f7 ff ff 	lea    r15,[rbp-0x808]
  7c686f:	49 8b 0f             	mov    rcx,QWORD PTR [r15]
  7c6872:	49 03 f8             	add    rdi,r8
  7c6875:	48 03 ce             	add    rcx,rsi
  7c6878:	48 03 c7             	add    rax,rdi
  7c687b:	48 8d bd e0 f6 ff ff 	lea    rdi,[rbp-0x920]
  7c6882:	48 8b 37             	mov    rsi,QWORD PTR [rdi]
  7c6885:	49 03 cc             	add    rcx,r12
  7c6888:	48 f7 de             	neg    rsi
  7c688b:	49 03 f3             	add    rsi,r11
  7c688e:	49 89 0f             	mov    QWORD PTR [r15],rcx
  7c6891:	49 03 f4             	add    rsi,r12
  7c6894:	48 8b 8d d8 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x928]
  7c689b:	48 f7 d9             	neg    rcx
  7c689e:	48 89 37             	mov    QWORD PTR [rdi],rsi
  7c68a1:	49 03 cb             	add    rcx,r11
  7c68a4:	48 8b b5 60 f2 ff ff 	mov    rsi,QWORD PTR [rbp-0xda0]
  7c68ab:	4c 2b de             	sub    r11,rsi
  7c68ae:	4d 03 d9             	add    r11,r9
  7c68b1:	48 2b c6             	sub    rax,rsi
  7c68b4:	4d 03 dc             	add    r11,r12
  7c68b7:	49 03 cc             	add    rcx,r12
  7c68ba:	4c 89 9d e8 f6 ff ff 	mov    QWORD PTR [rbp-0x918],r11
  7c68c1:	4e 8d 1c 32          	lea    r11,[rdx+r14*1]
  7c68c5:	4d 2b dd             	sub    r11,r13
  7c68c8:	4c 03 c8             	add    r9,rax
  7c68cb:	4c 8b ad 18 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xae8]
  7c68d2:	4d 03 cc             	add    r9,r12
  7c68d5:	4c 89 9d d0 f1 ff ff 	mov    QWORD PTR [rbp-0xe30],r11
  7c68dc:	4c 8b 9d d0 f4 ff ff 	mov    r11,QWORD PTR [rbp-0xb30]
  7c68e3:	48 8b 85 50 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xab0]
  7c68ea:	48 89 8d d8 f6 ff ff 	mov    QWORD PTR [rbp-0x928],rcx
  7c68f1:	4b 8d 4c 35 00       	lea    rcx,[r13+r14*1+0x0]
  7c68f6:	49 2b ca             	sub    rcx,r10
  7c68f9:	4f 8d 14 03          	lea    r10,[r11+r8*1]
  7c68fd:	4c 03 c0             	add    r8,rax
  7c6900:	48 8b 95 50 f2 ff ff 	mov    rdx,QWORD PTR [rbp-0xdb0]
  7c6907:	4c 2b c2             	sub    r8,rdx
  7c690a:	4c 89 b5 f8 f1 ff ff 	mov    QWORD PTR [rbp-0xe08],r14
  7c6911:	4c 03 f0             	add    r14,rax
  7c6914:	48 89 8d c8 f1 ff ff 	mov    QWORD PTR [rbp-0xe38],rcx
  7c691b:	4c 2b f2             	sub    r14,rdx
  7c691e:	48 8b 8d 78 f2 ff ff 	mov    rcx,QWORD PTR [rbp-0xd88]
  7c6925:	4c 03 c1             	add    r8,rcx
  7c6928:	4d 03 c4             	add    r8,r12
  7c692b:	49 03 ce             	add    rcx,r14
  7c692e:	4c 89 85 c8 f6 ff ff 	mov    QWORD PTR [rbp-0x938],r8
  7c6935:	48 8d 95 f0 f7 ff ff 	lea    rdx,[rbp-0x810]
  7c693c:	4c 8b 02             	mov    r8,QWORD PTR [rdx]
  7c693f:	48 8d 85 c0 f6 ff ff 	lea    rax,[rbp-0x940]
  7c6946:	48 8b 30             	mov    rsi,QWORD PTR [rax]
  7c6949:	4d 03 c6             	add    r8,r14
  7c694c:	49 03 f6             	add    rsi,r14
  7c694f:	4d 03 c4             	add    r8,r12
  7c6952:	49 03 f4             	add    rsi,r12
  7c6955:	4c 03 e1             	add    r12,rcx
  7c6958:	4c 89 a5 b8 f6 ff ff 	mov    QWORD PTR [rbp-0x948],r12
  7c695f:	4c 8b a5 08 f8 ff ff 	mov    r12,QWORD PTR [rbp-0x7f8]
  7c6966:	4c 89 e7             	mov    rdi,r12
  7c6969:	4d 89 e7             	mov    r15,r12
  7c696c:	4c 8b 9d 00 f5 ff ff 	mov    r11,QWORD PTR [rbp-0xb00]
  7c6973:	49 0f af fb          	imul   rdi,r11
  7c6977:	49 c1 e7 05          	shl    r15,0x5
  7c697b:	48 03 bd 08 f5 ff ff 	add    rdi,QWORD PTR [rbp-0xaf8]
  7c6982:	49 2b fb             	sub    rdi,r11
  7c6985:	4c 8b 9d 60 f5 ff ff 	mov    r11,QWORD PTR [rbp-0xaa0]
  7c698c:	4c 2b 95 98 f2 ff ff 	sub    r10,QWORD PTR [rbp-0xd68]
  7c6993:	4b 8d 0c 3c          	lea    rcx,[r12+r15*1]
  7c6997:	48 c1 e1 05          	shl    rcx,0x5
  7c699b:	48 89 8d a8 f4 ff ff 	mov    QWORD PTR [rbp-0xb58],rcx
  7c69a2:	48 8b 8d b0 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xa50]
  7c69a9:	4c 89 95 b8 f1 ff ff 	mov    QWORD PTR [rbp-0xe48],r10
  7c69b0:	48 89 30             	mov    QWORD PTR [rax],rsi
  7c69b3:	4c 8b 95 e0 f4 ff ff 	mov    r10,QWORD PTR [rbp-0xb20]
  7c69ba:	48 8b b5 a8 f1 ff ff 	mov    rsi,QWORD PTR [rbp-0xe58]
  7c69c1:	4c 89 02             	mov    QWORD PTR [rdx],r8
  7c69c4:	4d 8d 04 0b          	lea    r8,[r11+rcx*1]
  7c69c8:	4d 0f af da          	imul   r11,r10
  7c69cc:	48 0f af b5 40 fb ff 	imul   rsi,QWORD PTR [rbp-0x4c0]
  7c69d3:	ff 
  7c69d4:	4d 89 dd             	mov    r13,r11
  7c69d7:	48 89 bd a0 f7 ff ff 	mov    QWORD PTR [rbp-0x860],rdi
  7c69de:	4c 2b ee             	sub    r13,rsi
  7c69e1:	48 8b bd e8 f4 ff ff 	mov    rdi,QWORD PTR [rbp-0xb18]
  7c69e8:	49 2b fa             	sub    rdi,r10
  7c69eb:	8b 85 f8 fb ff ff    	mov    eax,DWORD PTR [rbp-0x408]
  7c69f1:	4c 89 85 90 f4 ff ff 	mov    QWORD PTR [rbp-0xb70],r8
  7c69f8:	48 89 bd 10 f2 ff ff 	mov    QWORD PTR [rbp-0xdf0],rdi
  7c69ff:	48 89 b5 08 f2 ff ff 	mov    QWORD PTR [rbp-0xdf8],rsi
  7c6a06:	8d 50 01             	lea    edx,[rax+0x1]
  7c6a09:	89 95 98 fb ff ff    	mov    DWORD PTR [rbp-0x468],edx
  7c6a0f:	4e 8d 34 2f          	lea    r14,[rdi+r13*1]
  7c6a13:	c5 79 10 05 d5 4f 08 	vmovupd xmm8,XMMWORD PTR [rip+0x84fd5]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  7c6a1a:	00 
  7c6a1b:	c5 f9 10 3d 9d 54 08 	vmovupd xmm7,XMMWORD PTR [rip+0x8549d]        # 84bec0 <__STRLITPACK_54.50+0xd0>
  7c6a22:	00 
  7c6a23:	c5 fb 10 2d 6d 57 08 	vmovsd xmm5,QWORD PTR [rip+0x8576d]        # 84c198 <__STRLITPACK_0.112+0x88>
  7c6a2a:	00 
  7c6a2b:	c5 fb 10 35 85 5f 08 	vmovsd xmm6,QWORD PTR [rip+0x85f85]        # 84c9b8 <__STRLITPACK_0.112+0x8a8>
  7c6a32:	00 
  7c6a33:	c5 7b 10 15 85 5f 08 	vmovsd xmm10,QWORD PTR [rip+0x85f85]        # 84c9c0 <__STRLITPACK_0.112+0x8b0>
  7c6a3a:	00 
  7c6a3b:	c5 fb 10 0d 85 5f 08 	vmovsd xmm1,QWORD PTR [rip+0x85f85]        # 84c9c8 <__STRLITPACK_0.112+0x8b8>
  7c6a42:	00 
  7c6a43:	c5 fb 10 15 85 5f 08 	vmovsd xmm2,QWORD PTR [rip+0x85f85]        # 84c9d0 <__STRLITPACK_0.112+0x8c0>
  7c6a4a:	00 
  7c6a4b:	c5 fb 10 1d 2d 57 08 	vmovsd xmm3,QWORD PTR [rip+0x8572d]        # 84c180 <__STRLITPACK_0.112+0x70>
  7c6a52:	00 
  7c6a53:	4c 89 bd f0 f1 ff ff 	mov    QWORD PTR [rbp-0xe10],r15
  7c6a5a:	4c 89 ad b0 f1 ff ff 	mov    QWORD PTR [rbp-0xe50],r13
  7c6a61:	4c 89 b5 88 f4 ff ff 	mov    QWORD PTR [rbp-0xb78],r14
  7c6a68:	48 8b 85 48 fb ff ff 	mov    rax,QWORD PTR [rbp-0x4b8]
  7c6a6f:	48 8b b5 80 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x880]
  7c6a76:	48 8b bd 58 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x8a8]
  7c6a7d:	4c 8b 95 b8 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xa48]
  7c6a84:	44 8b 85 88 f7 ff ff 	mov    r8d,DWORD PTR [rbp-0x878]
  7c6a8b:	8b 95 a8 f7 ff ff    	mov    edx,DWORD PTR [rbp-0x858]
  7c6a91:	48 89 bd 58 f7 ff ff 	mov    QWORD PTR [rbp-0x8a8],rdi
  7c6a98:	4c 8b ad f8 f1 ff ff 	mov    r13,QWORD PTR [rbp-0xe08]
  7c6a9f:	48 8b bd 10 f2 ff ff 	mov    rdi,QWORD PTR [rbp-0xdf0]
  7c6aa6:	4c 03 ef             	add    r13,rdi
  7c6aa9:	4c 89 8d d0 f6 ff ff 	mov    QWORD PTR [rbp-0x930],r9
  7c6ab0:	49 03 fb             	add    rdi,r11
  7c6ab3:	4c 8b 8d b0 f1 ff ff 	mov    r9,QWORD PTR [rbp-0xe50]
  7c6aba:	4d 03 cd             	add    r9,r13
  7c6abd:	4c 8b ad 30 fb ff ff 	mov    r13,QWORD PTR [rbp-0x4d0]
  7c6ac4:	4c 8b b5 a0 f1 ff ff 	mov    r14,QWORD PTR [rbp-0xe60]
  7c6acb:	4d 0f af f5          	imul   r14,r13
  7c6acf:	c5 fd 10 25 29 39 08 	vmovupd ymm4,YMMWORD PTR [rip+0x83929]        # 84a400 <var$630.126.450+0x460>
  7c6ad6:	00 
  7c6ad7:	c5 fd 10 05 e1 46 08 	vmovupd ymm0,YMMWORD PTR [rip+0x846e1]        # 84b1c0 <var$630.126.450+0x1220>
  7c6ade:	00 
  7c6adf:	48 89 85 48 fb ff ff 	mov    QWORD PTR [rbp-0x4b8],rax
  7c6ae6:	48 8b 85 48 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x7b8]
  7c6aed:	4c 03 c8             	add    r9,rax
  7c6af0:	4c 8b bd 08 f2 ff ff 	mov    r15,QWORD PTR [rbp-0xdf8]
  7c6af7:	4c 2b f8             	sub    r15,rax
  7c6afa:	49 2b c6             	sub    rax,r14
  7c6afd:	48 89 b5 80 f7 ff ff 	mov    QWORD PTR [rbp-0x880],rsi
  7c6b04:	48 8b b5 88 f4 ff ff 	mov    rsi,QWORD PTR [rbp-0xb78]
  7c6b0b:	48 03 c6             	add    rax,rsi
  7c6b0e:	4c 8b 9d 00 f2 ff ff 	mov    r11,QWORD PTR [rbp-0xe00]
  7c6b15:	49 03 c3             	add    rax,r11
  7c6b18:	49 2b f6             	sub    rsi,r14
  7c6b1b:	4d 2b f3             	sub    r14,r11
  7c6b1e:	4c 8b 9d e0 f4 ff ff 	mov    r11,QWORD PTR [rbp-0xb20]
  7c6b25:	4d 03 fe             	add    r15,r14
  7c6b28:	4c 0f af d9          	imul   r11,rcx
  7c6b2c:	49 2b ff             	sub    rdi,r15
  7c6b2f:	49 03 f3             	add    rsi,r11
  7c6b32:	48 89 b5 88 f4 ff ff 	mov    QWORD PTR [rbp-0xb78],rsi
  7c6b39:	4c 89 e6             	mov    rsi,r12
  7c6b3c:	44 8b bd 00 fc ff ff 	mov    r15d,DWORD PTR [rbp-0x400]
  7c6b43:	4d 03 cb             	add    r9,r11
  7c6b46:	49 03 c3             	add    rax,r11
  7c6b49:	44 8b b5 f8 fb ff ff 	mov    r14d,DWORD PTR [rbp-0x408]
  7c6b50:	4a 8d 3c 6f          	lea    rdi,[rdi+r13*2]
  7c6b54:	4c 03 df             	add    r11,rdi
  7c6b57:	89 d7                	mov    edi,edx
  7c6b59:	48 c1 e6 0b          	shl    rsi,0xb
  7c6b5d:	45 2b f7             	sub    r14d,r15d
  7c6b60:	41 2b f8             	sub    edi,r8d
  7c6b63:	48 2b b5 f0 f1 ff ff 	sub    rsi,QWORD PTR [rbp-0xe10]
  7c6b6a:	ff c7                	inc    edi
  7c6b6c:	4c 89 9d 40 f8 ff ff 	mov    QWORD PTR [rbp-0x7c0],r11
  7c6b73:	4c 8b 9d 20 fa ff ff 	mov    r11,QWORD PTR [rbp-0x5e0]
  7c6b7a:	44 89 9d 50 fb ff ff 	mov    DWORD PTR [rbp-0x4b0],r11d
  7c6b81:	48 89 b5 98 f6 ff ff 	mov    QWORD PTR [rbp-0x968],rsi
  7c6b88:	41 83 e3 fc          	and    r11d,0xfffffffc
  7c6b8c:	48 8b b5 18 fc ff ff 	mov    rsi,QWORD PTR [rbp-0x3e8]
  7c6b93:	89 bd 00 f6 ff ff    	mov    DWORD PTR [rbp-0xa00],edi
  7c6b99:	d1 ef                	shr    edi,1
  7c6b9b:	83 e6 fc             	and    esi,0xfffffffc
  7c6b9e:	48 89 85 48 f8 ff ff 	mov    QWORD PTR [rbp-0x7b8],rax
  7c6ba5:	4d 63 db             	movsxd r11,r11d
  7c6ba8:	48 8b 85 d0 f7 ff ff 	mov    rax,QWORD PTR [rbp-0x830]
  7c6baf:	48 d1 e8             	shr    rax,1
  7c6bb2:	4c 89 8d b0 f1 ff ff 	mov    QWORD PTR [rbp-0xe50],r9
  7c6bb9:	45 8d 4e 01          	lea    r9d,[r14+0x1]
  7c6bbd:	48 89 85 e8 f7 ff ff 	mov    QWORD PTR [rbp-0x818],rax
  7c6bc4:	41 8d 47 ff          	lea    eax,[r15-0x1]
  7c6bc8:	48 63 f6             	movsxd rsi,esi
  7c6bcb:	41 83 c6 03          	add    r14d,0x3
  7c6bcf:	89 bd f8 f5 ff ff    	mov    DWORD PTR [rbp-0xa08],edi
  7c6bd5:	44 89 8d 48 f3 ff ff 	mov    DWORD PTR [rbp-0xcb8],r9d
  7c6bdc:	89 85 d0 fa ff ff    	mov    DWORD PTR [rbp-0x530],eax
  7c6be2:	48 89 b5 50 fc ff ff 	mov    QWORD PTR [rbp-0x3b0],rsi
  7c6be9:	48 89 bd c0 f5 ff ff 	mov    QWORD PTR [rbp-0xa40],rdi
  7c6bf0:	44 89 b5 b0 f6 ff ff 	mov    DWORD PTR [rbp-0x950],r14d
  7c6bf7:	48 8b 85 48 fb ff ff 	mov    rax,QWORD PTR [rbp-0x4b8]
  7c6bfe:	48 8b b5 80 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x880]
  7c6c05:	48 8b bd 58 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x8a8]
  7c6c0c:	4c 8b bd 50 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x8b0]
  7c6c13:	4c 89 9d 38 f8 ff ff 	mov    QWORD PTR [rbp-0x7c8],r11
  7c6c1a:	48 89 8d b0 f5 ff ff 	mov    QWORD PTR [rbp-0xa50],rcx
  7c6c21:	4c 89 95 b8 f5 ff ff 	mov    QWORD PTR [rbp-0xa48],r10
  7c6c28:	4c 89 a5 08 f8 ff ff 	mov    QWORD PTR [rbp-0x7f8],r12
  7c6c2f:	48 83 bd 38 fc ff ff 	cmp    QWORD PTR [rbp-0x3c8],0x8
  7c6c36:	08 
  7c6c37:	74 2d                	je     7c6c66 <pre_step3d_mod_mp_pre_step3d_tile_+0xd666>
  7c6c39:	48 89 b5 80 f7 ff ff 	mov    QWORD PTR [rbp-0x880],rsi
  7c6c40:	48 89 bd 58 f7 ff ff 	mov    QWORD PTR [rbp-0x8a8],rdi
  7c6c47:	44 89 85 88 f7 ff ff 	mov    DWORD PTR [rbp-0x878],r8d
  7c6c4e:	c5 fb 10 05 42 55 08 	vmovsd xmm0,QWORD PTR [rip+0x85542]        # 84c198 <__STRLITPACK_0.112+0x88>
  7c6c55:	00 
  7c6c56:	48 8b b5 f0 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x810]
  7c6c5d:	48 8b bd f8 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x808]
  7c6c64:	eb 39                	jmp    7c6c9f <pre_step3d_mod_mp_pre_step3d_tile_+0xd69f>
  7c6c66:	48 89 b5 80 f7 ff ff 	mov    QWORD PTR [rbp-0x880],rsi
  7c6c6d:	48 89 bd 58 f7 ff ff 	mov    QWORD PTR [rbp-0x8a8],rdi
  7c6c74:	44 89 85 88 f7 ff ff 	mov    DWORD PTR [rbp-0x878],r8d
  7c6c7b:	c5 fb 10 05 15 55 08 	vmovsd xmm0,QWORD PTR [rip+0x85515]        # 84c198 <__STRLITPACK_0.112+0x88>
  7c6c82:	00 
  7c6c83:	48 8b b5 f0 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x810]
  7c6c8a:	48 8b bd f8 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x808]
  7c6c91:	48 83 bd e8 fa ff ff 	cmp    QWORD PTR [rbp-0x518],0x8
  7c6c98:	08 
  7c6c99:	0f 84 62 03 00 00    	je     7c7001 <pre_step3d_mod_mp_pre_step3d_tile_+0xda01>
  7c6c9f:	45 33 c0             	xor    r8d,r8d
  7c6ca2:	45 33 c9             	xor    r9d,r9d
  7c6ca5:	45 33 d2             	xor    r10d,r10d
  7c6ca8:	33 c9                	xor    ecx,ecx
  7c6caa:	3b 95 88 f7 ff ff    	cmp    edx,DWORD PTR [rbp-0x878]
  7c6cb0:	0f 8c 77 04 00 00    	jl     7c712d <pre_step3d_mod_mp_pre_step3d_tile_+0xdb2d>
  7c6cb6:	48 89 85 48 fb ff ff 	mov    QWORD PTR [rbp-0x4b8],rax
  7c6cbd:	89 95 a8 f7 ff ff    	mov    DWORD PTR [rbp-0x858],edx
  7c6cc3:	4c 8b ad 20 fa ff ff 	mov    r13,QWORD PTR [rbp-0x5e0]
  7c6cca:	4c 8b a5 38 fc ff ff 	mov    r12,QWORD PTR [rbp-0x3c8]
  7c6cd1:	48 8b 85 e0 fa ff ff 	mov    rax,QWORD PTR [rbp-0x520]
  7c6cd8:	48 3b 85 d8 fa ff ff 	cmp    rax,QWORD PTR [rbp-0x528]
  7c6cdf:	0f 8c f2 02 00 00    	jl     7c6fd7 <pre_step3d_mod_mp_pre_step3d_tile_+0xd9d7>
  7c6ce5:	49 83 fd 04          	cmp    r13,0x4
  7c6ce9:	0f 8c 21 38 00 00    	jl     7ca510 <pre_step3d_mod_mp_pre_step3d_tile_+0x10f10>
  7c6cef:	48 8b 85 08 fa ff ff 	mov    rax,QWORD PTR [rbp-0x5f8]
  7c6cf6:	48 8d 14 08          	lea    rdx,[rax+rcx*1]
  7c6cfa:	48 89 95 10 fa ff ff 	mov    QWORD PTR [rbp-0x5f0],rdx
  7c6d01:	48 83 e2 0f          	and    rdx,0xf
  7c6d05:	85 d2                	test   edx,edx
  7c6d07:	74 0e                	je     7c6d17 <pre_step3d_mod_mp_pre_step3d_tile_+0xd717>
  7c6d09:	f6 c2 07             	test   dl,0x7
  7c6d0c:	0f 85 fe 37 00 00    	jne    7ca510 <pre_step3d_mod_mp_pre_step3d_tile_+0x10f10>
  7c6d12:	ba 01 00 00 00       	mov    edx,0x1
  7c6d17:	41 89 d3             	mov    r11d,edx
  7c6d1a:	49 8d 43 04          	lea    rax,[r11+0x4]
  7c6d1e:	4c 3b e8             	cmp    r13,rax
  7c6d21:	0f 8c e9 37 00 00    	jl     7ca510 <pre_step3d_mod_mp_pre_step3d_tile_+0x10f10>
  7c6d27:	4c 8b bd 80 fb ff ff 	mov    r15,QWORD PTR [rbp-0x480]
  7c6d2e:	33 ff                	xor    edi,edi
  7c6d30:	48 8b 85 48 fb ff ff 	mov    rax,QWORD PTR [rbp-0x4b8]
  7c6d37:	8b b5 50 fb ff ff    	mov    esi,DWORD PTR [rbp-0x4b0]
  7c6d3d:	41 89 f6             	mov    r14d,esi
  7c6d40:	44 2b f2             	sub    r14d,edx
  7c6d43:	41 83 e6 03          	and    r14d,0x3
  7c6d47:	4c 03 f8             	add    r15,rax
  7c6d4a:	4d 03 f9             	add    r15,r9
  7c6d4d:	41 f7 de             	neg    r14d
  7c6d50:	4c 89 bd 68 fc ff ff 	mov    QWORD PTR [rbp-0x398],r15
  7c6d57:	44 03 f6             	add    r14d,esi
  7c6d5a:	4c 8b bd 78 fb ff ff 	mov    r15,QWORD PTR [rbp-0x488]
  7c6d61:	33 f6                	xor    esi,esi
  7c6d63:	4d 63 f6             	movsxd r14,r14d
  7c6d66:	49 03 c7             	add    rax,r15
  7c6d69:	49 03 c1             	add    rax,r9
  7c6d6c:	48 89 85 b0 fb ff ff 	mov    QWORD PTR [rbp-0x450],rax
  7c6d73:	48 8b 85 70 fb ff ff 	mov    rax,QWORD PTR [rbp-0x490]
  7c6d7a:	4e 8d 3c 10          	lea    r15,[rax+r10*1]
  7c6d7e:	4c 89 bd a8 fb ff ff 	mov    QWORD PTR [rbp-0x458],r15
  7c6d85:	85 d2                	test   edx,edx
  7c6d87:	76 6b                	jbe    7c6df4 <pre_step3d_mod_mp_pre_step3d_tile_+0xd7f4>
  7c6d89:	4c 89 8d 28 fa ff ff 	mov    QWORD PTR [rbp-0x5d8],r9
  7c6d90:	4c 89 85 30 fa ff ff 	mov    QWORD PTR [rbp-0x5d0],r8
  7c6d97:	48 89 f0             	mov    rax,rsi
  7c6d9a:	4c 89 fa             	mov    rdx,r15
  7c6d9d:	4c 8b 85 b0 fb ff ff 	mov    r8,QWORD PTR [rbp-0x450]
  7c6da4:	4c 8b 8d 68 fc ff ff 	mov    r9,QWORD PTR [rbp-0x398]
  7c6dab:	4c 8b ad 10 fa ff ff 	mov    r13,QWORD PTR [rbp-0x5f0]
  7c6db2:	4c 8b bd e8 fa ff ff 	mov    r15,QWORD PTR [rbp-0x518]
  7c6db9:	c4 a1 7b 10 0c 08    	vmovsd xmm1,QWORD PTR [rax+r9*1]
  7c6dbf:	c4 a1 73 5c 14 00    	vsubsd xmm2,xmm1,QWORD PTR [rax+r8*1]
  7c6dc5:	49 03 c4             	add    rax,r12
  7c6dc8:	c5 eb 59 1c 16       	vmulsd xmm3,xmm2,QWORD PTR [rsi+rdx*1]
  7c6dcd:	49 03 f7             	add    rsi,r15
  7c6dd0:	c4 c1 7b 11 5c fd 00 	vmovsd QWORD PTR [r13+rdi*8+0x0],xmm3
  7c6dd7:	48 ff c7             	inc    rdi
  7c6dda:	49 3b fb             	cmp    rdi,r11
  7c6ddd:	72 da                	jb     7c6db9 <pre_step3d_mod_mp_pre_step3d_tile_+0xd7b9>
  7c6ddf:	4c 8b 8d 28 fa ff ff 	mov    r9,QWORD PTR [rbp-0x5d8]
  7c6de6:	4c 8b 85 30 fa ff ff 	mov    r8,QWORD PTR [rbp-0x5d0]
  7c6ded:	4c 8b ad 20 fa ff ff 	mov    r13,QWORD PTR [rbp-0x5e0]
  7c6df4:	48 8b b5 d8 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x728]
  7c6dfb:	4c 89 e2             	mov    rdx,r12
  7c6dfe:	48 8b 85 48 fb ff ff 	mov    rax,QWORD PTR [rbp-0x4b8]
  7c6e05:	48 8b bd e8 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x518]
  7c6e0c:	4c 89 b5 60 fc ff ff 	mov    QWORD PTR [rbp-0x3a0],r14
  7c6e13:	4c 8d 3c 0e          	lea    r15,[rsi+rcx*1]
  7c6e17:	4c 89 bd f0 f8 ff ff 	mov    QWORD PTR [rbp-0x710],r15
  7c6e1e:	48 8b b5 d0 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x730]
  7c6e25:	4c 8b bd c8 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x738]
  7c6e2c:	48 89 8d 38 fa ff ff 	mov    QWORD PTR [rbp-0x5c8],rcx
  7c6e33:	4c 89 95 40 fa ff ff 	mov    QWORD PTR [rbp-0x5c0],r10
  7c6e3a:	48 03 f0             	add    rsi,rax
  7c6e3d:	4c 89 8d 28 fa ff ff 	mov    QWORD PTR [rbp-0x5d8],r9
  7c6e44:	49 03 c7             	add    rax,r15
  7c6e47:	4c 8b bd c0 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x740]
  7c6e4e:	49 03 f1             	add    rsi,r9
  7c6e51:	4c 89 85 30 fa ff ff 	mov    QWORD PTR [rbp-0x5d0],r8
  7c6e58:	49 03 c1             	add    rax,r9
  7c6e5b:	49 0f af fb          	imul   rdi,r11
  7c6e5f:	49 0f af d3          	imul   rdx,r11
  7c6e63:	48 8b 8d f0 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x710]
  7c6e6a:	4d 03 fa             	add    r15,r10
  7c6e6d:	4d 89 fe             	mov    r14,r15
  7c6e70:	4c 8b 85 a8 fb ff ff 	mov    r8,QWORD PTR [rbp-0x458]
  7c6e77:	4c 8b 8d b0 fb ff ff 	mov    r9,QWORD PTR [rbp-0x450]
  7c6e7e:	4c 8b 95 10 fa ff ff 	mov    r10,QWORD PTR [rbp-0x5f0]
  7c6e85:	4c 8b ad e8 fa ff ff 	mov    r13,QWORD PTR [rbp-0x518]
  7c6e8c:	4c 8b bd 68 fc ff ff 	mov    r15,QWORD PTR [rbp-0x398]
  7c6e93:	4c 03 fa             	add    r15,rdx
  7c6e96:	c4 c1 7b 10 0f       	vmovsd xmm1,QWORD PTR [r15]
  7c6e9b:	c4 81 71 16 1c 27    	vmovhpd xmm3,xmm1,QWORD PTR [r15+r12*1]
  7c6ea1:	4d 8d 3c 11          	lea    r15,[r9+rdx*1]
  7c6ea5:	c4 c1 7b 10 17       	vmovsd xmm2,QWORD PTR [r15]
  7c6eaa:	c4 81 69 16 24 27    	vmovhpd xmm4,xmm2,QWORD PTR [r15+r12*1]
  7c6eb0:	4d 8d 3c 38          	lea    r15,[r8+rdi*1]
  7c6eb4:	c4 c1 7b 10 2f       	vmovsd xmm5,QWORD PTR [r15]
  7c6eb9:	c4 81 51 16 3c 2f    	vmovhpd xmm7,xmm5,QWORD PTR [r15+r13*1]
  7c6ebf:	4c 8d 3c 10          	lea    r15,[rax+rdx*1]
  7c6ec3:	c4 41 7b 10 0f       	vmovsd xmm9,QWORD PTR [r15]
  7c6ec8:	c4 01 31 16 24 27    	vmovhpd xmm12,xmm9,QWORD PTR [r15+r12*1]
  7c6ece:	4c 8d 3c 16          	lea    r15,[rsi+rdx*1]
  7c6ed2:	c4 41 7b 10 1f       	vmovsd xmm11,QWORD PTR [r15]
  7c6ed7:	4a 8d 14 a2          	lea    rdx,[rdx+r12*4]
  7c6edb:	c4 01 21 16 2c 27    	vmovhpd xmm13,xmm11,QWORD PTR [r15+r12*1]
  7c6ee1:	4d 8d 3c 3e          	lea    r15,[r14+rdi*1]
  7c6ee5:	c5 e1 5c f4          	vsubpd xmm6,xmm3,xmm4
  7c6ee9:	c4 41 19 5c fd       	vsubpd xmm15,xmm12,xmm13
  7c6eee:	c5 49 59 c7          	vmulpd xmm8,xmm6,xmm7
  7c6ef2:	c4 41 7b 10 37       	vmovsd xmm14,QWORD PTR [r15]
  7c6ef7:	4a 8d 3c af          	lea    rdi,[rdi+r13*4]
  7c6efb:	c4 81 09 16 0c 2f    	vmovhpd xmm1,xmm14,QWORD PTR [r15+r13*1]
  7c6f01:	c5 81 59 d1          	vmulpd xmm2,xmm15,xmm1
  7c6f05:	c4 01 79 11 04 da    	vmovupd XMMWORD PTR [r10+r11*8],xmm8
  7c6f0b:	c4 a1 79 11 54 d9 10 	vmovupd XMMWORD PTR [rcx+r11*8+0x10],xmm2
  7c6f12:	49 83 c3 04          	add    r11,0x4
  7c6f16:	4c 3b 9d 60 fc ff ff 	cmp    r11,QWORD PTR [rbp-0x3a0]
  7c6f1d:	0f 82 69 ff ff ff    	jb     7c6e8c <pre_step3d_mod_mp_pre_step3d_tile_+0xd88c>
  7c6f23:	4c 8b b5 60 fc ff ff 	mov    r14,QWORD PTR [rbp-0x3a0]
  7c6f2a:	48 8b 8d 38 fa ff ff 	mov    rcx,QWORD PTR [rbp-0x5c8]
  7c6f31:	4c 8b 95 40 fa ff ff 	mov    r10,QWORD PTR [rbp-0x5c0]
  7c6f38:	4c 8b 8d 28 fa ff ff 	mov    r9,QWORD PTR [rbp-0x5d8]
  7c6f3f:	4c 8b 85 30 fa ff ff 	mov    r8,QWORD PTR [rbp-0x5d0]
  7c6f46:	4c 8b ad 20 fa ff ff 	mov    r13,QWORD PTR [rbp-0x5e0]
  7c6f4d:	4d 89 e3             	mov    r11,r12
  7c6f50:	48 8b bd e8 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x518]
  7c6f57:	4d 0f af de          	imul   r11,r14
  7c6f5b:	49 0f af fe          	imul   rdi,r14
  7c6f5f:	4d 3b f5             	cmp    r14,r13
  7c6f62:	73 73                	jae    7c6fd7 <pre_step3d_mod_mp_pre_step3d_tile_+0xd9d7>
  7c6f64:	48 8b 95 80 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x480]
  7c6f6b:	48 8b 85 48 fb ff ff 	mov    rax,QWORD PTR [rbp-0x4b8]
  7c6f72:	4c 8b bd 78 fb ff ff 	mov    r15,QWORD PTR [rbp-0x488]
  7c6f79:	48 8b b5 08 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x5f8]
  7c6f80:	4c 89 85 30 fa ff ff 	mov    QWORD PTR [rbp-0x5d0],r8
  7c6f87:	48 03 d0             	add    rdx,rax
  7c6f8a:	49 03 d1             	add    rdx,r9
  7c6f8d:	49 03 c7             	add    rax,r15
  7c6f90:	4c 8b bd 70 fb ff ff 	mov    r15,QWORD PTR [rbp-0x490]
  7c6f97:	48 03 f1             	add    rsi,rcx
  7c6f9a:	49 03 c1             	add    rax,r9
  7c6f9d:	4d 03 fa             	add    r15,r10
  7c6fa0:	4d 89 f8             	mov    r8,r15
  7c6fa3:	4c 8b bd e8 fa ff ff 	mov    r15,QWORD PTR [rbp-0x518]
  7c6faa:	c4 c1 7b 10 0c 13    	vmovsd xmm1,QWORD PTR [r11+rdx*1]
  7c6fb0:	c4 c1 73 5c 14 03    	vsubsd xmm2,xmm1,QWORD PTR [r11+rax*1]
  7c6fb6:	4d 03 dc             	add    r11,r12
  7c6fb9:	c4 a1 6b 59 1c 07    	vmulsd xmm3,xmm2,QWORD PTR [rdi+r8*1]
  7c6fbf:	49 03 ff             	add    rdi,r15
  7c6fc2:	c4 a1 7b 11 1c f6    	vmovsd QWORD PTR [rsi+r14*8],xmm3
  7c6fc8:	49 ff c6             	inc    r14
  7c6fcb:	4d 3b f5             	cmp    r14,r13
  7c6fce:	72 da                	jb     7c6faa <pre_step3d_mod_mp_pre_step3d_tile_+0xd9aa>
  7c6fd0:	4c 8b 85 30 fa ff ff 	mov    r8,QWORD PTR [rbp-0x5d0]
  7c6fd7:	49 ff c0             	inc    r8
  7c6fda:	4c 03 8d 20 fb ff ff 	add    r9,QWORD PTR [rbp-0x4e0]
  7c6fe1:	4c 03 95 f0 fa ff ff 	add    r10,QWORD PTR [rbp-0x510]
  7c6fe8:	48 03 8d a0 fb ff ff 	add    rcx,QWORD PTR [rbp-0x460]
  7c6fef:	4c 3b 85 88 fb ff ff 	cmp    r8,QWORD PTR [rbp-0x478]
  7c6ff6:	0f 82 d5 fc ff ff    	jb     7c6cd1 <pre_step3d_mod_mp_pre_step3d_tile_+0xd6d1>
  7c6ffc:	e9 11 01 00 00       	jmp    7c7112 <pre_step3d_mod_mp_pre_step3d_tile_+0xdb12>
  7c7001:	45 33 d2             	xor    r10d,r10d
  7c7004:	4c 8b 85 08 fa ff ff 	mov    r8,QWORD PTR [rbp-0x5f8]
  7c700b:	45 33 c9             	xor    r9d,r9d
  7c700e:	48 8b 8d b8 f1 ff ff 	mov    rcx,QWORD PTR [rbp-0xe48]
  7c7015:	3b 95 88 f7 ff ff    	cmp    edx,DWORD PTR [rbp-0x878]
  7c701b:	0f 8c 0c 01 00 00    	jl     7c712d <pre_step3d_mod_mp_pre_step3d_tile_+0xdb2d>
  7c7021:	48 89 85 48 fb ff ff 	mov    QWORD PTR [rbp-0x4b8],rax
  7c7028:	89 95 a8 f7 ff ff    	mov    DWORD PTR [rbp-0x858],edx
  7c702e:	4c 8b bd 80 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x880]
  7c7035:	4c 8b 9d c8 f6 ff ff 	mov    r11,QWORD PTR [rbp-0x938]
  7c703c:	4c 8b a5 d0 f6 ff ff 	mov    r12,QWORD PTR [rbp-0x930]
  7c7043:	4c 8b ad 20 fa ff ff 	mov    r13,QWORD PTR [rbp-0x5e0]
  7c704a:	4c 8b b5 e0 fa ff ff 	mov    r14,QWORD PTR [rbp-0x520]
  7c7051:	4c 3b b5 d8 fa ff ff 	cmp    r14,QWORD PTR [rbp-0x528]
  7c7058:	0f 8c 8f 00 00 00    	jl     7c70ed <pre_step3d_mod_mp_pre_step3d_tile_+0xdaed>
  7c705e:	49 83 fd 04          	cmp    r13,0x4
  7c7062:	0f 8c 11 36 00 00    	jl     7ca679 <pre_step3d_mod_mp_pre_step3d_tile_+0x11079>
  7c7068:	48 8b b5 18 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x7e8]
  7c706f:	33 d2                	xor    edx,edx
  7c7071:	49 0f af f7          	imul   rsi,r15
  7c7075:	48 8b bd 38 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x7c8]
  7c707c:	49 8d 04 33          	lea    rax,[r11+rsi*1]
  7c7080:	49 03 f4             	add    rsi,r12
  7c7083:	49 03 c1             	add    rax,r9
  7c7086:	49 03 f1             	add    rsi,r9
  7c7089:	49 89 fe             	mov    r14,rdi
  7c708c:	c5 fd 10 0c d0       	vmovupd ymm1,YMMWORD PTR [rax+rdx*8]
  7c7091:	c5 f5 5c 54 d6 f8    	vsubpd ymm2,ymm1,YMMWORD PTR [rsi+rdx*8-0x8]
  7c7097:	c5 ed 59 1c d1       	vmulpd ymm3,ymm2,YMMWORD PTR [rcx+rdx*8]
  7c709c:	c4 c1 7d 11 1c d0    	vmovupd YMMWORD PTR [r8+rdx*8],ymm3
  7c70a2:	48 83 c2 04          	add    rdx,0x4
  7c70a6:	49 3b d6             	cmp    rdx,r14
  7c70a9:	72 e1                	jb     7c708c <pre_step3d_mod_mp_pre_step3d_tile_+0xda8c>
  7c70ab:	4c 8b b5 e0 fa ff ff 	mov    r14,QWORD PTR [rbp-0x520]
  7c70b2:	49 3b fd             	cmp    rdi,r13
  7c70b5:	73 36                	jae    7c70ed <pre_step3d_mod_mp_pre_step3d_tile_+0xdaed>
  7c70b7:	48 8b 85 18 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x7e8]
  7c70be:	49 0f af c7          	imul   rax,r15
  7c70c2:	49 8d 14 03          	lea    rdx,[r11+rax*1]
  7c70c6:	49 03 c4             	add    rax,r12
  7c70c9:	49 03 d1             	add    rdx,r9
  7c70cc:	49 03 c1             	add    rax,r9
  7c70cf:	c5 fb 10 0c fa       	vmovsd xmm1,QWORD PTR [rdx+rdi*8]
  7c70d4:	c5 f3 5c 54 f8 f8    	vsubsd xmm2,xmm1,QWORD PTR [rax+rdi*8-0x8]
  7c70da:	c5 eb 59 1c f9       	vmulsd xmm3,xmm2,QWORD PTR [rcx+rdi*8]
  7c70df:	c4 c1 7b 11 1c f8    	vmovsd QWORD PTR [r8+rdi*8],xmm3
  7c70e5:	48 ff c7             	inc    rdi
  7c70e8:	49 3b fd             	cmp    rdi,r13
  7c70eb:	72 e2                	jb     7c70cf <pre_step3d_mod_mp_pre_step3d_tile_+0xdacf>
  7c70ed:	49 ff c2             	inc    r10
  7c70f0:	4c 03 85 a0 fb ff ff 	add    r8,QWORD PTR [rbp-0x460]
  7c70f7:	4c 03 8d 20 fb ff ff 	add    r9,QWORD PTR [rbp-0x4e0]
  7c70fe:	48 03 8d f0 fa ff ff 	add    rcx,QWORD PTR [rbp-0x510]
  7c7105:	4c 3b 95 88 fb ff ff 	cmp    r10,QWORD PTR [rbp-0x478]
  7c710c:	0f 82 3f ff ff ff    	jb     7c7051 <pre_step3d_mod_mp_pre_step3d_tile_+0xda51>
  7c7112:	48 8b 85 48 fb ff ff 	mov    rax,QWORD PTR [rbp-0x4b8]
  7c7119:	48 8b b5 f0 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x810]
  7c7120:	48 8b bd f8 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x808]
  7c7127:	8b 95 a8 f7 ff ff    	mov    edx,DWORD PTR [rbp-0x858]
  7c712d:	48 89 85 48 fb ff ff 	mov    QWORD PTR [rbp-0x4b8],rax
  7c7134:	89 95 a8 f7 ff ff    	mov    DWORD PTR [rbp-0x858],edx
  7c713a:	4c 8b ad 40 fc ff ff 	mov    r13,QWORD PTR [rbp-0x3c0]
  7c7141:	4c 8b b5 30 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x7d0]
  7c7148:	48 8b 85 48 fc ff ff 	mov    rax,QWORD PTR [rbp-0x3b8]
  7c714f:	4c 8b a5 a0 fb ff ff 	mov    r12,QWORD PTR [rbp-0x460]
  7c7156:	4c 8b bd e0 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x820]
  7c715d:	48 8b 8d 00 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x800]
  7c7164:	48 8b 95 d8 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x828]
  7c716b:	f6 44 0a f0 01       	test   BYTE PTR [rdx+rcx*1-0x10],0x1
  7c7170:	0f 85 4f 01 00 00    	jne    7c72c5 <pre_step3d_mod_mp_pre_step3d_tile_+0xdcc5>
  7c7176:	48 8b 95 78 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x888]
  7c717d:	48 8b 8d 08 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x7f8]
  7c7184:	f6 44 8a fc 01       	test   BYTE PTR [rdx+rcx*4-0x4],0x1
  7c7189:	0f 85 36 01 00 00    	jne    7c72c5 <pre_step3d_mod_mp_pre_step3d_tile_+0xdcc5>
  7c718f:	48 8b 95 90 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x970]
  7c7196:	48 8b 8d 98 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x968]
  7c719d:	4c 8b 84 0a a8 f8 ff 	mov    r8,QWORD PTR [rdx+rcx*1-0x758]
  7c71a4:	ff 
  7c71a5:	49 f7 d8             	neg    r8
  7c71a8:	4c 03 85 88 f6 ff ff 	add    r8,QWORD PTR [rbp-0x978]
  7c71af:	4c 0f af 84 0a a0 f8 	imul   r8,QWORD PTR [rdx+rcx*1-0x760]
  7c71b6:	ff ff 
  7c71b8:	48 8b bc 0a 68 f8 ff 	mov    rdi,QWORD PTR [rdx+rcx*1-0x798]
  7c71bf:	ff 
  7c71c0:	42 f6 04 07 01       	test   BYTE PTR [rdi+r8*1],0x1
  7c71c5:	0f 84 fa 00 00 00    	je     7c72c5 <pre_step3d_mod_mp_pre_step3d_tile_+0xdcc5>
  7c71cb:	8b 95 a8 f7 ff ff    	mov    edx,DWORD PTR [rbp-0x858]
  7c71d1:	3b 95 88 f7 ff ff    	cmp    edx,DWORD PTR [rbp-0x878]
  7c71d7:	0f 8c b1 00 00 00    	jl     7c728e <pre_step3d_mod_mp_pre_step3d_tile_+0xdc8e>
  7c71dd:	ba 01 00 00 00       	mov    edx,0x1
  7c71e2:	45 33 db             	xor    r11d,r11d
  7c71e5:	45 33 d2             	xor    r10d,r10d
  7c71e8:	83 bd f8 f5 ff ff 00 	cmp    DWORD PTR [rbp-0xa08],0x0
  7c71ef:	74 47                	je     7c7238 <pre_step3d_mod_mp_pre_step3d_tile_+0xdc38>
  7c71f1:	48 8b 95 c0 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xa40]
  7c71f8:	48 8b 8d c8 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xa38]
  7c71ff:	48 8b bd 90 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x770]
  7c7206:	4c 8b 85 98 f8 ff ff 	mov    r8,QWORD PTR [rbp-0x768]
  7c720d:	4c 8b 8d f0 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xa10]
  7c7214:	49 8b 34 3a          	mov    rsi,QWORD PTR [r10+rdi*1]
  7c7218:	49 ff c3             	inc    r11
  7c721b:	4b 89 74 02 f8       	mov    QWORD PTR [r10+r8*1-0x8],rsi
  7c7220:	49 8b 74 0a 08       	mov    rsi,QWORD PTR [r10+rcx*1+0x8]
  7c7225:	49 89 34 0a          	mov    QWORD PTR [r10+rcx*1],rsi
  7c7229:	4f 8d 54 0a 10       	lea    r10,[r10+r9*1+0x10]
  7c722e:	4c 3b da             	cmp    r11,rdx
  7c7231:	72 e1                	jb     7c7214 <pre_step3d_mod_mp_pre_step3d_tile_+0xdc14>
  7c7233:	43 8d 54 1b 01       	lea    edx,[r11+r11*1+0x1]
  7c7238:	8d 4a ff             	lea    ecx,[rdx-0x1]
  7c723b:	3b 8d 00 f6 ff ff    	cmp    ecx,DWORD PTR [rbp-0xa00]
  7c7241:	73 18                	jae    7c725b <pre_step3d_mod_mp_pre_step3d_tile_+0xdc5b>
  7c7243:	48 63 d2             	movsxd rdx,edx
  7c7246:	49 0f af d4          	imul   rdx,r12
  7c724a:	48 8b bd d0 f5 ff ff 	mov    rdi,QWORD PTR [rbp-0xa30]
  7c7251:	48 8b 4c 3a f8       	mov    rcx,QWORD PTR [rdx+rdi*1-0x8]
  7c7256:	48 89 4c 3a f0       	mov    QWORD PTR [rdx+rdi*1-0x10],rcx
  7c725b:	48 8b 8d 00 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x800]
  7c7262:	48 8b 95 d8 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x828]
  7c7269:	f6 44 0a f8 01       	test   BYTE PTR [rdx+rcx*1-0x8],0x1
  7c726e:	0f 85 63 01 00 00    	jne    7c73d7 <pre_step3d_mod_mp_pre_step3d_tile_+0xddd7>
  7c7274:	48 8b 95 78 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x888]
  7c727b:	48 8b 8d 08 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x7f8]
  7c7282:	f6 44 8a fc 01       	test   BYTE PTR [rdx+rcx*4-0x4],0x1
  7c7287:	74 6e                	je     7c72f7 <pre_step3d_mod_mp_pre_step3d_tile_+0xdcf7>
  7c7289:	e9 49 01 00 00       	jmp    7c73d7 <pre_step3d_mod_mp_pre_step3d_tile_+0xddd7>
  7c728e:	48 8b 8d 00 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x800]
  7c7295:	48 8b 95 d8 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x828]
  7c729c:	f6 44 0a f8 01       	test   BYTE PTR [rdx+rcx*1-0x8],0x1
  7c72a1:	75 15                	jne    7c72b8 <pre_step3d_mod_mp_pre_step3d_tile_+0xdcb8>
  7c72a3:	48 8b 95 78 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x888]
  7c72aa:	48 8b 8d 08 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x7f8]
  7c72b1:	f6 44 8a fc 01       	test   BYTE PTR [rdx+rcx*4-0x4],0x1
  7c72b6:	74 3f                	je     7c72f7 <pre_step3d_mod_mp_pre_step3d_tile_+0xdcf7>
  7c72b8:	48 83 bd 30 fb ff ff 	cmp    QWORD PTR [rbp-0x4d0],0x8
  7c72bf:	08 
  7c72c0:	e9 0a 08 00 00       	jmp    7c7acf <pre_step3d_mod_mp_pre_step3d_tile_+0xe4cf>
  7c72c5:	48 8b 8d 00 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x800]
  7c72cc:	48 8b 95 d8 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x828]
  7c72d3:	f6 44 0a f8 01       	test   BYTE PTR [rdx+rcx*1-0x8],0x1
  7c72d8:	0f 85 e7 00 00 00    	jne    7c73c5 <pre_step3d_mod_mp_pre_step3d_tile_+0xddc5>
  7c72de:	48 8b 95 78 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x888]
  7c72e5:	48 8b 8d 08 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x7f8]
  7c72ec:	f6 44 8a fc 01       	test   BYTE PTR [rdx+rcx*4-0x4],0x1
  7c72f1:	0f 85 ce 00 00 00    	jne    7c73c5 <pre_step3d_mod_mp_pre_step3d_tile_+0xddc5>
  7c72f7:	48 8b 95 90 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x970]
  7c72fe:	48 8b 8d 98 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x968]
  7c7305:	4c 8b 84 0a 60 f8 ff 	mov    r8,QWORD PTR [rdx+rcx*1-0x7a0]
  7c730c:	ff 
  7c730d:	49 f7 d8             	neg    r8
  7c7310:	4c 03 85 88 f6 ff ff 	add    r8,QWORD PTR [rbp-0x978]
  7c7317:	4c 0f af 84 0a 58 f8 	imul   r8,QWORD PTR [rdx+rcx*1-0x7a8]
  7c731e:	ff ff 
  7c7320:	48 8b bc 0a 20 f8 ff 	mov    rdi,QWORD PTR [rdx+rcx*1-0x7e0]
  7c7327:	ff 
  7c7328:	42 f6 04 07 01       	test   BYTE PTR [rdi+r8*1],0x1
  7c732d:	0f 84 92 00 00 00    	je     7c73c5 <pre_step3d_mod_mp_pre_step3d_tile_+0xddc5>
  7c7333:	8b 95 a8 f7 ff ff    	mov    edx,DWORD PTR [rbp-0x858]
  7c7339:	3b 95 88 f7 ff ff    	cmp    edx,DWORD PTR [rbp-0x878]
  7c733f:	7c 77                	jl     7c73b8 <pre_step3d_mod_mp_pre_step3d_tile_+0xddb8>
  7c7341:	bf 01 00 00 00       	mov    edi,0x1
  7c7346:	33 c9                	xor    ecx,ecx
  7c7348:	33 d2                	xor    edx,edx
  7c734a:	83 bd f8 f5 ff ff 00 	cmp    DWORD PTR [rbp-0xa08],0x0
  7c7351:	74 41                	je     7c7394 <pre_step3d_mod_mp_pre_step3d_tile_+0xdd94>
  7c7353:	4c 8b 8d c0 f5 ff ff 	mov    r9,QWORD PTR [rbp-0xa40]
  7c735a:	4c 8b 95 d8 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xa28]
  7c7361:	4c 8b 9d e0 f5 ff ff 	mov    r11,QWORD PTR [rbp-0xa20]
  7c7368:	48 8b b5 f0 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xa10]
  7c736f:	48 ff c1             	inc    rcx
  7c7372:	4a 8b 7c 1a 08       	mov    rdi,QWORD PTR [rdx+r11*1+0x8]
  7c7377:	4e 8b 44 12 10       	mov    r8,QWORD PTR [rdx+r10*1+0x10]
  7c737c:	4a 89 7c 1a 10       	mov    QWORD PTR [rdx+r11*1+0x10],rdi
  7c7381:	4e 89 44 12 18       	mov    QWORD PTR [rdx+r10*1+0x18],r8
  7c7386:	48 8d 54 32 10       	lea    rdx,[rdx+rsi*1+0x10]
  7c738b:	49 3b c9             	cmp    rcx,r9
  7c738e:	72 df                	jb     7c736f <pre_step3d_mod_mp_pre_step3d_tile_+0xdd6f>
  7c7390:	8d 7c 09 01          	lea    edi,[rcx+rcx*1+0x1]
  7c7394:	8d 57 ff             	lea    edx,[rdi-0x1]
  7c7397:	3b 95 00 f6 ff ff    	cmp    edx,DWORD PTR [rbp-0xa00]
  7c739d:	73 38                	jae    7c73d7 <pre_step3d_mod_mp_pre_step3d_tile_+0xddd7>
  7c739f:	48 63 ff             	movsxd rdi,edi
  7c73a2:	49 0f af fc          	imul   rdi,r12
  7c73a6:	48 8b 8d e8 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xa18]
  7c73ad:	48 8b 14 0f          	mov    rdx,QWORD PTR [rdi+rcx*1]
  7c73b1:	48 89 54 0f 08       	mov    QWORD PTR [rdi+rcx*1+0x8],rdx
  7c73b6:	eb 1f                	jmp    7c73d7 <pre_step3d_mod_mp_pre_step3d_tile_+0xddd7>
  7c73b8:	48 83 bd 30 fb ff ff 	cmp    QWORD PTR [rbp-0x4d0],0x8
  7c73bf:	08 
  7c73c0:	e9 0a 07 00 00       	jmp    7c7acf <pre_step3d_mod_mp_pre_step3d_tile_+0xe4cf>
  7c73c5:	8b 95 a8 f7 ff ff    	mov    edx,DWORD PTR [rbp-0x858]
  7c73cb:	3b 95 88 f7 ff ff    	cmp    edx,DWORD PTR [rbp-0x878]
  7c73d1:	0f 8c e1 fe ff ff    	jl     7c72b8 <pre_step3d_mod_mp_pre_step3d_tile_+0xdcb8>
  7c73d7:	33 c9                	xor    ecx,ecx
  7c73d9:	48 89 85 48 fc ff ff 	mov    QWORD PTR [rbp-0x3b8],rax
  7c73e0:	33 d2                	xor    edx,edx
  7c73e2:	c5 fd 10 0d 16 30 08 	vmovupd ymm1,YMMWORD PTR [rip+0x83016]        # 84a400 <var$630.126.450+0x460>
  7c73e9:	00 
  7c73ea:	44 8b 8d b0 f6 ff ff 	mov    r9d,DWORD PTR [rbp-0x950]
  7c73f1:	44 8b 95 98 fb ff ff 	mov    r10d,DWORD PTR [rbp-0x468]
  7c73f8:	4c 8b 9d 90 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x770]
  7c73ff:	4c 8b a5 98 f8 ff ff 	mov    r12,QWORD PTR [rbp-0x768]
  7c7406:	4c 8b ad a0 f8 ff ff 	mov    r13,QWORD PTR [rbp-0x760]
  7c740d:	4c 8b bd 18 fc ff ff 	mov    r15,QWORD PTR [rbp-0x3e8]
  7c7414:	44 3b 95 d0 fa ff ff 	cmp    r10d,DWORD PTR [rbp-0x530]
  7c741b:	0f 8c b1 00 00 00    	jl     7c74d2 <pre_step3d_mod_mp_pre_step3d_tile_+0xded2>
  7c7421:	c4 a1 7b 10 14 1a    	vmovsd xmm2,QWORD PTR [rdx+r11*1]
  7c7427:	c4 a1 6b 58 5c 22 f8 	vaddsd xmm3,xmm2,QWORD PTR [rdx+r12*1-0x8]
  7c742e:	c5 fb 59 e3          	vmulsd xmm4,xmm0,xmm3
  7c7432:	c4 a1 7b 11 64 2a f8 	vmovsd QWORD PTR [rdx+r13*1-0x8],xmm4
  7c7439:	41 83 f9 02          	cmp    r9d,0x2
  7c743d:	72 7c                	jb     7c74bb <pre_step3d_mod_mp_pre_step3d_tile_+0xdebb>
  7c743f:	49 83 ff 04          	cmp    r15,0x4
  7c7443:	0f 8c 28 32 00 00    	jl     7ca671 <pre_step3d_mod_mp_pre_step3d_tile_+0x11071>
  7c7449:	4c 8b b5 50 fc ff ff 	mov    r14,QWORD PTR [rbp-0x3b0]
  7c7450:	45 33 c0             	xor    r8d,r8d
  7c7453:	4d 89 f7             	mov    r15,r14
  7c7456:	49 8d 7c 15 00       	lea    rdi,[r13+rdx*1+0x0]
  7c745b:	49 8d 34 14          	lea    rsi,[r12+rdx*1]
  7c745f:	49 8d 04 13          	lea    rax,[r11+rdx*1]
  7c7463:	c4 a1 7d 10 54 c0 08 	vmovupd ymm2,YMMWORD PTR [rax+r8*8+0x8]
  7c746a:	c4 a1 6d 58 1c c6    	vaddpd ymm3,ymm2,YMMWORD PTR [rsi+r8*8]
  7c7470:	c5 f5 59 e3          	vmulpd ymm4,ymm1,ymm3
  7c7474:	c4 a1 7d 11 24 c7    	vmovupd YMMWORD PTR [rdi+r8*8],ymm4
  7c747a:	49 83 c0 04          	add    r8,0x4
  7c747e:	4d 3b c7             	cmp    r8,r15
  7c7481:	72 e0                	jb     7c7463 <pre_step3d_mod_mp_pre_step3d_tile_+0xde63>
  7c7483:	4c 8b bd 18 fc ff ff 	mov    r15,QWORD PTR [rbp-0x3e8]
  7c748a:	4d 3b f7             	cmp    r14,r15
  7c748d:	73 2c                	jae    7c74bb <pre_step3d_mod_mp_pre_step3d_tile_+0xdebb>
  7c748f:	49 8d 7c 15 00       	lea    rdi,[r13+rdx*1+0x0]
  7c7494:	49 8d 34 14          	lea    rsi,[r12+rdx*1]
  7c7498:	49 8d 04 13          	lea    rax,[r11+rdx*1]
  7c749c:	c4 a1 7b 10 54 f0 08 	vmovsd xmm2,QWORD PTR [rax+r14*8+0x8]
  7c74a3:	c4 a1 6b 58 1c f6    	vaddsd xmm3,xmm2,QWORD PTR [rsi+r14*8]
  7c74a9:	c5 fb 59 e3          	vmulsd xmm4,xmm0,xmm3
  7c74ad:	c4 a1 7b 11 24 f7    	vmovsd QWORD PTR [rdi+r14*8],xmm4
  7c74b3:	49 ff c6             	inc    r14
  7c74b6:	4d 3b f7             	cmp    r14,r15
  7c74b9:	72 e1                	jb     7c749c <pre_step3d_mod_mp_pre_step3d_tile_+0xde9c>
  7c74bb:	48 ff c1             	inc    rcx
  7c74be:	48 03 95 a0 fb ff ff 	add    rdx,QWORD PTR [rbp-0x460]
  7c74c5:	48 3b 8d 88 fb ff ff 	cmp    rcx,QWORD PTR [rbp-0x478]
  7c74cc:	0f 82 42 ff ff ff    	jb     7c7414 <pre_step3d_mod_mp_pre_step3d_tile_+0xde14>
  7c74d2:	4c 8b ad 40 fc ff ff 	mov    r13,QWORD PTR [rbp-0x3c0]
  7c74d9:	4c 8b b5 30 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x7d0]
  7c74e0:	48 8b 85 48 fc ff ff 	mov    rax,QWORD PTR [rbp-0x3b8]
  7c74e7:	4c 8b a5 a0 fb ff ff 	mov    r12,QWORD PTR [rbp-0x460]
  7c74ee:	4c 8b bd e0 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x820]
  7c74f5:	48 83 bd 30 fb ff ff 	cmp    QWORD PTR [rbp-0x4d0],0x8
  7c74fc:	08 
  7c74fd:	0f 85 e0 01 00 00    	jne    7c76e3 <pre_step3d_mod_mp_pre_step3d_tile_+0xe0e3>
  7c7503:	48 83 bd 38 fc ff ff 	cmp    QWORD PTR [rbp-0x3c8],0x8
  7c750a:	08 
  7c750b:	0f 85 bf 01 00 00    	jne    7c76d0 <pre_step3d_mod_mp_pre_step3d_tile_+0xe0d0>
  7c7511:	33 ff                	xor    edi,edi
  7c7513:	8b 95 a8 f7 ff ff    	mov    edx,DWORD PTR [rbp-0x858]
  7c7519:	45 33 c9             	xor    r9d,r9d
  7c751c:	4c 8b 85 b0 f1 ff ff 	mov    r8,QWORD PTR [rbp-0xe50]
  7c7523:	45 33 d2             	xor    r10d,r10d
  7c7526:	3b 95 88 f7 ff ff    	cmp    edx,DWORD PTR [rbp-0x878]
  7c752c:	0f 8c ab 05 00 00    	jl     7c7add <pre_step3d_mod_mp_pre_step3d_tile_+0xe4dd>
  7c7532:	4c 8b 9d 48 fb ff ff 	mov    r11,QWORD PTR [rbp-0x4b8]
  7c7539:	48 8b 95 b8 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x948]
  7c7540:	48 8b 8d e8 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x918]
  7c7547:	48 89 85 48 fc ff ff 	mov    QWORD PTR [rbp-0x3b8],rax
  7c754e:	c5 fd 10 15 6a 3c 08 	vmovupd ymm2,YMMWORD PTR [rip+0x83c6a]        # 84b1c0 <var$630.126.450+0x1220>
  7c7555:	00 
  7c7556:	49 03 d3             	add    rdx,r11
  7c7559:	c5 fb 10 1d 57 54 08 	vmovsd xmm3,QWORD PTR [rip+0x85457]        # 84c9b8 <__STRLITPACK_0.112+0x8a8>
  7c7560:	00 
  7c7561:	c5 fd 10 0d 97 2e 08 	vmovupd ymm1,YMMWORD PTR [rip+0x82e97]        # 84a400 <var$630.126.450+0x460>
  7c7568:	00 
  7c7569:	48 89 95 f8 f8 ff ff 	mov    QWORD PTR [rbp-0x708],rdx
  7c7570:	49 03 cb             	add    rcx,r11
  7c7573:	48 8b 95 18 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x3e8]
  7c757a:	8b 85 98 fb ff ff    	mov    eax,DWORD PTR [rbp-0x468]
  7c7580:	3b 85 00 fc ff ff    	cmp    eax,DWORD PTR [rbp-0x400]
  7c7586:	0f 8c f7 00 00 00    	jl     7c7683 <pre_step3d_mod_mp_pre_step3d_tile_+0xe083>
  7c758c:	48 83 fa 04          	cmp    rdx,0x4
  7c7590:	0f 8c 82 2f 00 00    	jl     7ca518 <pre_step3d_mod_mp_pre_step3d_tile_+0x10f18>
  7c7596:	4c 8b ad a0 f8 ff ff 	mov    r13,QWORD PTR [rbp-0x760]
  7c759d:	45 33 f6             	xor    r14d,r14d
  7c75a0:	4c 8b a5 98 f8 ff ff 	mov    r12,QWORD PTR [rbp-0x768]
  7c75a7:	48 8b b5 80 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x780]
  7c75ae:	4c 8b bd f8 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x708]
  7c75b5:	4d 03 e9             	add    r13,r9
  7c75b8:	48 8b 85 50 fc ff ff 	mov    rax,QWORD PTR [rbp-0x3b0]
  7c75bf:	4d 03 e1             	add    r12,r9
  7c75c2:	48 89 c2             	mov    rdx,rax
  7c75c5:	4e 8d 1c 0e          	lea    r11,[rsi+r9*1]
  7c75c9:	4a 8d 34 11          	lea    rsi,[rcx+r10*1]
  7c75cd:	4d 03 fa             	add    r15,r10
  7c75d0:	c4 81 7d 10 6c f5 00 	vmovupd ymm5,YMMWORD PTR [r13+r14*8+0x0]
  7c75d7:	c4 a1 7d 10 64 f6 f8 	vmovupd ymm4,YMMWORD PTR [rsi+r14*8-0x8]
  7c75de:	c4 01 75 59 0c f0    	vmulpd ymm9,ymm1,YMMWORD PTR [r8+r14*8]
  7c75e4:	c4 81 55 5c 74 f3 f8 	vsubpd ymm6,ymm5,YMMWORD PTR [r11+r14*8-0x8]
  7c75eb:	c4 81 5d 58 3c f7    	vaddpd ymm7,ymm4,YMMWORD PTR [r15+r14*8]
  7c75f1:	c5 6d 59 c6          	vmulpd ymm8,ymm2,ymm6
  7c75f5:	c4 41 45 5c d8       	vsubpd ymm11,ymm7,ymm8
  7c75fa:	c4 41 35 59 e3       	vmulpd ymm12,ymm9,ymm11
  7c75ff:	c4 01 7d 11 24 f4    	vmovupd YMMWORD PTR [r12+r14*8],ymm12
  7c7605:	49 83 c6 04          	add    r14,0x4
  7c7609:	4c 3b f2             	cmp    r14,rdx
  7c760c:	72 c2                	jb     7c75d0 <pre_step3d_mod_mp_pre_step3d_tile_+0xdfd0>
  7c760e:	48 8b 95 18 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x3e8]
  7c7615:	48 3b c2             	cmp    rax,rdx
  7c7618:	73 69                	jae    7c7683 <pre_step3d_mod_mp_pre_step3d_tile_+0xe083>
  7c761a:	4c 8b 9d a0 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x760]
  7c7621:	48 8b b5 98 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x768]
  7c7628:	4c 8b ad 80 f8 ff ff 	mov    r13,QWORD PTR [rbp-0x780]
  7c762f:	4c 8b a5 f8 f8 ff ff 	mov    r12,QWORD PTR [rbp-0x708]
  7c7636:	4d 03 d9             	add    r11,r9
  7c7639:	49 03 f1             	add    rsi,r9
  7c763c:	4f 8d 74 0d 00       	lea    r14,[r13+r9*1+0x0]
  7c7641:	4e 8d 2c 11          	lea    r13,[rcx+r10*1]
  7c7645:	4d 03 e2             	add    r12,r10
  7c7648:	c4 c1 7b 10 2c c3    	vmovsd xmm5,QWORD PTR [r11+rax*8]
  7c764e:	c4 c1 7b 10 64 c5 f8 	vmovsd xmm4,QWORD PTR [r13+rax*8-0x8]
  7c7655:	c4 41 7b 59 0c c0    	vmulsd xmm9,xmm0,QWORD PTR [r8+rax*8]
  7c765b:	c4 c1 53 5c 74 c6 f8 	vsubsd xmm6,xmm5,QWORD PTR [r14+rax*8-0x8]
  7c7662:	c4 c1 5b 58 3c c4    	vaddsd xmm7,xmm4,QWORD PTR [r12+rax*8]
  7c7668:	c5 63 59 c6          	vmulsd xmm8,xmm3,xmm6
  7c766c:	c4 41 43 5c d8       	vsubsd xmm11,xmm7,xmm8
  7c7671:	c4 41 33 59 e3       	vmulsd xmm12,xmm9,xmm11
  7c7676:	c5 7b 11 24 c6       	vmovsd QWORD PTR [rsi+rax*8],xmm12
  7c767b:	48 ff c0             	inc    rax
  7c767e:	48 3b c2             	cmp    rax,rdx
  7c7681:	72 c5                	jb     7c7648 <pre_step3d_mod_mp_pre_step3d_tile_+0xe048>
  7c7683:	48 ff c7             	inc    rdi
  7c7686:	4c 03 8d a0 fb ff ff 	add    r9,QWORD PTR [rbp-0x460]
  7c768d:	4c 03 85 40 fb ff ff 	add    r8,QWORD PTR [rbp-0x4c0]
  7c7694:	4c 03 95 20 fb ff ff 	add    r10,QWORD PTR [rbp-0x4e0]
  7c769b:	48 3b bd 88 fb ff ff 	cmp    rdi,QWORD PTR [rbp-0x478]
  7c76a2:	0f 82 d2 fe ff ff    	jb     7c757a <pre_step3d_mod_mp_pre_step3d_tile_+0xdf7a>
  7c76a8:	4c 8b ad 40 fc ff ff 	mov    r13,QWORD PTR [rbp-0x3c0]
  7c76af:	4c 8b b5 30 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x7d0]
  7c76b6:	48 8b 85 48 fc ff ff 	mov    rax,QWORD PTR [rbp-0x3b8]
  7c76bd:	4c 8b a5 a0 fb ff ff 	mov    r12,QWORD PTR [rbp-0x460]
  7c76c4:	4c 8b bd e0 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x820]
  7c76cb:	e9 0d 04 00 00       	jmp    7c7add <pre_step3d_mod_mp_pre_step3d_tile_+0xe4dd>
  7c76d0:	8b 95 a8 f7 ff ff    	mov    edx,DWORD PTR [rbp-0x858]
  7c76d6:	3b 95 88 f7 ff ff    	cmp    edx,DWORD PTR [rbp-0x878]
  7c76dc:	7d 17                	jge    7c76f5 <pre_step3d_mod_mp_pre_step3d_tile_+0xe0f5>
  7c76de:	e9 fb 04 00 00       	jmp    7c7bde <pre_step3d_mod_mp_pre_step3d_tile_+0xe5de>
  7c76e3:	8b 95 a8 f7 ff ff    	mov    edx,DWORD PTR [rbp-0x858]
  7c76e9:	3b 95 88 f7 ff ff    	cmp    edx,DWORD PTR [rbp-0x878]
  7c76ef:	0f 8c da 03 00 00    	jl     7c7acf <pre_step3d_mod_mp_pre_step3d_tile_+0xe4cf>
  7c76f5:	4c 8b 9d 40 f7 ff ff 	mov    r11,QWORD PTR [rbp-0x8c0]
  7c76fc:	33 ff                	xor    edi,edi
  7c76fe:	48 8b 95 48 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x4b8]
  7c7705:	45 33 c0             	xor    r8d,r8d
  7c7708:	4c 8b 95 38 f7 ff ff 	mov    r10,QWORD PTR [rbp-0x8c8]
  7c770f:	4c 8b 8d 30 f7 ff ff 	mov    r9,QWORD PTR [rbp-0x8d0]
  7c7716:	48 8b 8d b0 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x750]
  7c771d:	4c 03 da             	add    r11,rdx
  7c7720:	4c 8b a5 18 fc ff ff 	mov    r12,QWORD PTR [rbp-0x3e8]
  7c7727:	4c 03 d2             	add    r10,rdx
  7c772a:	4c 89 95 10 f9 ff ff 	mov    QWORD PTR [rbp-0x6f0],r10
  7c7731:	4c 03 ca             	add    r9,rdx
  7c7734:	4c 89 8d 08 f9 ff ff 	mov    QWORD PTR [rbp-0x6f8],r9
  7c773b:	48 8d 34 11          	lea    rsi,[rcx+rdx*1]
  7c773f:	33 c9                	xor    ecx,ecx
  7c7741:	48 89 b5 00 f9 ff ff 	mov    QWORD PTR [rbp-0x700],rsi
  7c7748:	33 d2                	xor    edx,edx
  7c774a:	4c 89 9d 18 f9 ff ff 	mov    QWORD PTR [rbp-0x6e8],r11
  7c7751:	48 89 85 48 fc ff ff 	mov    QWORD PTR [rbp-0x3b8],rax
  7c7758:	c5 fb 10 1d 58 52 08 	vmovsd xmm3,QWORD PTR [rip+0x85258]        # 84c9b8 <__STRLITPACK_0.112+0x8a8>
  7c775f:	00 
  7c7760:	c5 f9 10 0d 58 47 08 	vmovupd xmm1,XMMWORD PTR [rip+0x84758]        # 84bec0 <__STRLITPACK_54.50+0xd0>
  7c7767:	00 
  7c7768:	c5 f9 10 15 80 42 08 	vmovupd xmm2,XMMWORD PTR [rip+0x84280]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  7c776f:	00 
  7c7770:	8b 85 98 fb ff ff    	mov    eax,DWORD PTR [rbp-0x468]
  7c7776:	3b 85 00 fc ff ff    	cmp    eax,DWORD PTR [rbp-0x400]
  7c777c:	0f 8c 05 03 00 00    	jl     7c7a87 <pre_step3d_mod_mp_pre_step3d_tile_+0xe487>
  7c7782:	49 83 fc 04          	cmp    r12,0x4
  7c7786:	0f 8c d5 2e 00 00    	jl     7ca661 <pre_step3d_mod_mp_pre_step3d_tile_+0x11061>
  7c778c:	48 8b b5 10 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x6f0]
  7c7793:	4c 8b b5 98 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x768]
  7c779a:	4c 8b ad 90 f8 ff ff 	mov    r13,QWORD PTR [rbp-0x770]
  7c77a1:	4c 8b 9d 50 fc ff ff 	mov    r11,QWORD PTR [rbp-0x3b0]
  7c77a8:	4c 8d 3c 16          	lea    r15,[rsi+rdx*1]
  7c77ac:	48 8b b5 08 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x6f8]
  7c77b3:	4d 03 f0             	add    r14,r8
  7c77b6:	4c 89 bd 38 f9 ff ff 	mov    QWORD PTR [rbp-0x6c8],r15
  7c77bd:	4d 03 e8             	add    r13,r8
  7c77c0:	4c 8b bd 00 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x700]
  7c77c7:	4c 8b 95 48 f8 ff ff 	mov    r10,QWORD PTR [rbp-0x7b8]
  7c77ce:	48 8d 04 16          	lea    rax,[rsi+rdx*1]
  7c77d2:	48 89 85 30 f9 ff ff 	mov    QWORD PTR [rbp-0x6d0],rax
  7c77d9:	48 8b 85 40 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x7c0]
  7c77e0:	49 8d 34 17          	lea    rsi,[r15+rdx*1]
  7c77e4:	4c 8b 8d 18 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x6e8]
  7c77eb:	4c 03 d1             	add    r10,rcx
  7c77ee:	4c 89 9d b8 fb ff ff 	mov    QWORD PTR [rbp-0x448],r11
  7c77f5:	45 33 db             	xor    r11d,r11d
  7c77f8:	48 89 b5 80 fc ff ff 	mov    QWORD PTR [rbp-0x380],rsi
  7c77ff:	4c 8d 3c 08          	lea    r15,[rax+rcx*1]
  7c7803:	48 8b 85 10 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x7f0]
  7c780a:	33 f6                	xor    esi,esi
  7c780c:	4c 89 bd 28 f9 ff ff 	mov    QWORD PTR [rbp-0x6d8],r15
  7c7813:	4c 03 ca             	add    r9,rdx
  7c7816:	4c 8b bd e0 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x720]
  7c781d:	49 f7 df             	neg    r15
  7c7820:	48 c1 e0 03          	shl    rax,0x3
  7c7824:	48 f7 d8             	neg    rax
  7c7827:	48 03 85 e8 f8 ff ff 	add    rax,QWORD PTR [rbp-0x718]
  7c782e:	49 03 c7             	add    rax,r15
  7c7831:	4c 8b bd b8 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x748]
  7c7838:	4c 89 85 20 f9 ff ff 	mov    QWORD PTR [rbp-0x6e0],r8
  7c783f:	4c 89 ad 78 fc ff ff 	mov    QWORD PTR [rbp-0x388],r13
  7c7846:	4a 8d 04 f8          	lea    rax,[rax+r15*8]
  7c784a:	4c 89 b5 70 fc ff ff 	mov    QWORD PTR [rbp-0x390],r14
  7c7851:	48 89 95 48 fa ff ff 	mov    QWORD PTR [rbp-0x5b8],rdx
  7c7858:	48 89 8d 50 fa ff ff 	mov    QWORD PTR [rbp-0x5b0],rcx
  7c785f:	4c 89 85 58 fa ff ff 	mov    QWORD PTR [rbp-0x5a8],r8
  7c7866:	48 89 bd 60 fa ff ff 	mov    QWORD PTR [rbp-0x5a0],rdi
  7c786d:	48 03 85 28 f8 ff ff 	add    rax,QWORD PTR [rbp-0x7d8]
  7c7874:	4c 8b b5 20 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x6e0]
  7c787b:	48 89 f2             	mov    rdx,rsi
  7c787e:	48 8b 8d 28 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x6d8]
  7c7885:	48 8b bd 30 f9 ff ff 	mov    rdi,QWORD PTR [rbp-0x6d0]
  7c788c:	4c 8b 85 38 f9 ff ff 	mov    r8,QWORD PTR [rbp-0x6c8]
  7c7893:	4c 8b a5 30 fb ff ff 	mov    r12,QWORD PTR [rbp-0x4d0]
  7c789a:	4c 8b ad 38 fc ff ff 	mov    r13,QWORD PTR [rbp-0x3c8]
  7c78a1:	c4 c1 79 10 24 06    	vmovupd xmm4,XMMWORD PTR [r14+rax*1]
  7c78a7:	c4 c1 59 5c 6c 06 f8 	vsubpd xmm5,xmm4,XMMWORD PTR [r14+rax*1-0x8]
  7c78ae:	c5 71 59 f5          	vmulpd xmm14,xmm1,xmm5
  7c78b2:	4d 8d 3c 32          	lea    r15,[r10+rsi*1]
  7c78b6:	c4 c1 7b 10 37       	vmovsd xmm6,QWORD PTR [r15]
  7c78bb:	c4 81 49 16 3c 27    	vmovhpd xmm7,xmm6,QWORD PTR [r15+r12*1]
  7c78c1:	4c 8d 3c 17          	lea    r15,[rdi+rdx*1]
  7c78c5:	c4 41 7b 10 07       	vmovsd xmm8,QWORD PTR [r15]
  7c78ca:	c4 01 39 16 1c 2f    	vmovhpd xmm11,xmm8,QWORD PTR [r15+r13*1]
  7c78d0:	4c 8b bd 80 fc ff ff 	mov    r15,QWORD PTR [rbp-0x380]
  7c78d7:	c5 41 59 fa          	vmulpd xmm15,xmm7,xmm2
  7c78db:	4c 03 fa             	add    r15,rdx
  7c78de:	c4 41 7b 10 0f       	vmovsd xmm9,QWORD PTR [r15]
  7c78e3:	c4 01 31 16 24 2f    	vmovhpd xmm12,xmm9,QWORD PTR [r15+r13*1]
  7c78e9:	c4 41 21 58 ec       	vaddpd xmm13,xmm11,xmm12
  7c78ee:	c4 c1 11 5c e6       	vsubpd xmm4,xmm13,xmm14
  7c78f3:	c5 81 59 ec          	vmulpd xmm5,xmm15,xmm4
  7c78f7:	4c 8b bd 70 fc ff ff 	mov    r15,QWORD PTR [rbp-0x390]
  7c78fe:	c4 81 79 11 2c df    	vmovupd XMMWORD PTR [r15+r11*8],xmm5
  7c7904:	c4 c1 79 10 74 06 10 	vmovupd xmm6,XMMWORD PTR [r14+rax*1+0x10]
  7c790b:	c4 c1 49 5c 7c 06 08 	vsubpd xmm7,xmm6,XMMWORD PTR [r14+rax*1+0x8]
  7c7912:	c5 f1 59 e7          	vmulpd xmm4,xmm1,xmm7
  7c7916:	49 83 c6 20          	add    r14,0x20
  7c791a:	4c 8d 3c 31          	lea    r15,[rcx+rsi*1]
  7c791e:	c4 41 7b 10 07       	vmovsd xmm8,QWORD PTR [r15]
  7c7923:	4a 8d 34 a6          	lea    rsi,[rsi+r12*4]
  7c7927:	c4 01 39 16 0c 27    	vmovhpd xmm9,xmm8,QWORD PTR [r15+r12*1]
  7c792d:	4d 8d 3c 11          	lea    r15,[r9+rdx*1]
  7c7931:	c4 41 7b 10 1f       	vmovsd xmm11,QWORD PTR [r15]
  7c7936:	c4 01 21 16 2c 2f    	vmovhpd xmm13,xmm11,QWORD PTR [r15+r13*1]
  7c793c:	4d 8d 3c 10          	lea    r15,[r8+rdx*1]
  7c7940:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  7c7945:	4a 8d 14 aa          	lea    rdx,[rdx+r13*4]
  7c7949:	c4 01 19 16 34 2f    	vmovhpd xmm14,xmm12,QWORD PTR [r15+r13*1]
  7c794f:	c4 41 11 58 fe       	vaddpd xmm15,xmm13,xmm14
  7c7954:	c5 b1 59 ea          	vmulpd xmm5,xmm9,xmm2
  7c7958:	c5 81 5c f4          	vsubpd xmm6,xmm15,xmm4
  7c795c:	c5 d1 59 fe          	vmulpd xmm7,xmm5,xmm6
  7c7960:	4c 8b bd 78 fc ff ff 	mov    r15,QWORD PTR [rbp-0x388]
  7c7967:	c4 81 79 11 7c df 10 	vmovupd XMMWORD PTR [r15+r11*8+0x10],xmm7
  7c796e:	49 83 c3 04          	add    r11,0x4
  7c7972:	4c 3b 9d 50 fc ff ff 	cmp    r11,QWORD PTR [rbp-0x3b0]
  7c7979:	0f 82 22 ff ff ff    	jb     7c78a1 <pre_step3d_mod_mp_pre_step3d_tile_+0xe2a1>
  7c797f:	48 8b 95 48 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x5b8]
  7c7986:	48 8b 8d 50 fa ff ff 	mov    rcx,QWORD PTR [rbp-0x5b0]
  7c798d:	4c 8b 85 58 fa ff ff 	mov    r8,QWORD PTR [rbp-0x5a8]
  7c7994:	48 8b bd 60 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x5a0]
  7c799b:	4c 8b a5 18 fc ff ff 	mov    r12,QWORD PTR [rbp-0x3e8]
  7c79a2:	4c 8b ad 38 fc ff ff 	mov    r13,QWORD PTR [rbp-0x3c8]
  7c79a9:	48 8b 85 b8 fb ff ff 	mov    rax,QWORD PTR [rbp-0x448]
  7c79b0:	4c 8b 9d 30 fb ff ff 	mov    r11,QWORD PTR [rbp-0x4d0]
  7c79b7:	4c 0f af e8          	imul   r13,rax
  7c79bb:	4c 0f af d8          	imul   r11,rax
  7c79bf:	49 3b c4             	cmp    rax,r12
  7c79c2:	0f 83 bf 00 00 00    	jae    7c7a87 <pre_step3d_mod_mp_pre_step3d_tile_+0xe487>
  7c79c8:	4c 8b 95 a0 f8 ff ff 	mov    r10,QWORD PTR [rbp-0x760]
  7c79cf:	4c 8b 8d 98 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x768]
  7c79d6:	48 8b b5 80 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x780]
  7c79dd:	48 8b 85 48 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x7b8]
  7c79e4:	4d 03 d0             	add    r10,r8
  7c79e7:	4c 8b bd 08 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6f8]
  7c79ee:	4d 03 c8             	add    r9,r8
  7c79f1:	4c 8b b5 00 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x700]
  7c79f8:	49 03 f0             	add    rsi,r8
  7c79fb:	48 89 8d 50 fa ff ff 	mov    QWORD PTR [rbp-0x5b0],rcx
  7c7a02:	48 03 c1             	add    rax,rcx
  7c7a05:	4c 89 85 58 fa ff ff 	mov    QWORD PTR [rbp-0x5a8],r8
  7c7a0c:	4c 03 fa             	add    r15,rdx
  7c7a0f:	48 89 bd 60 fa ff ff 	mov    QWORD PTR [rbp-0x5a0],rdi
  7c7a16:	4c 03 f2             	add    r14,rdx
  7c7a19:	48 8b 8d b8 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x448]
  7c7a20:	48 8b bd 30 fb ff ff 	mov    rdi,QWORD PTR [rbp-0x4d0]
  7c7a27:	4c 8b 85 38 fc ff ff 	mov    r8,QWORD PTR [rbp-0x3c8]
  7c7a2e:	66 90                	xchg   ax,ax
  7c7a30:	c4 c1 7b 10 2c ca    	vmovsd xmm5,QWORD PTR [r10+rcx*8]
  7c7a36:	c4 81 7b 10 64 3d 00 	vmovsd xmm4,QWORD PTR [r13+r15*1+0x0]
  7c7a3d:	c4 41 7b 59 0c 03    	vmulsd xmm9,xmm0,QWORD PTR [r11+rax*1]
  7c7a43:	4c 03 df             	add    r11,rdi
  7c7a46:	c5 d3 5c 74 ce f8    	vsubsd xmm6,xmm5,QWORD PTR [rsi+rcx*8-0x8]
  7c7a4c:	c4 81 5b 58 7c 35 00 	vaddsd xmm7,xmm4,QWORD PTR [r13+r14*1+0x0]
  7c7a53:	c5 63 59 c6          	vmulsd xmm8,xmm3,xmm6
  7c7a57:	4d 03 e8             	add    r13,r8
  7c7a5a:	c4 41 43 5c d8       	vsubsd xmm11,xmm7,xmm8
  7c7a5f:	c4 41 33 59 e3       	vmulsd xmm12,xmm9,xmm11
  7c7a64:	c4 41 7b 11 24 c9    	vmovsd QWORD PTR [r9+rcx*8],xmm12
  7c7a6a:	48 ff c1             	inc    rcx
  7c7a6d:	49 3b cc             	cmp    rcx,r12
  7c7a70:	72 be                	jb     7c7a30 <pre_step3d_mod_mp_pre_step3d_tile_+0xe430>
  7c7a72:	48 8b 8d 50 fa ff ff 	mov    rcx,QWORD PTR [rbp-0x5b0]
  7c7a79:	4c 8b 85 58 fa ff ff 	mov    r8,QWORD PTR [rbp-0x5a8]
  7c7a80:	48 8b bd 60 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x5a0]
  7c7a87:	48 ff c7             	inc    rdi
  7c7a8a:	4c 03 85 a0 fb ff ff 	add    r8,QWORD PTR [rbp-0x460]
  7c7a91:	48 03 8d 40 fb ff ff 	add    rcx,QWORD PTR [rbp-0x4c0]
  7c7a98:	48 03 95 20 fb ff ff 	add    rdx,QWORD PTR [rbp-0x4e0]
  7c7a9f:	48 3b bd 88 fb ff ff 	cmp    rdi,QWORD PTR [rbp-0x478]
  7c7aa6:	0f 82 c4 fc ff ff    	jb     7c7770 <pre_step3d_mod_mp_pre_step3d_tile_+0xe170>
  7c7aac:	4c 8b ad 40 fc ff ff 	mov    r13,QWORD PTR [rbp-0x3c0]
  7c7ab3:	4c 8b b5 30 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x7d0]
  7c7aba:	48 8b 85 48 fc ff ff 	mov    rax,QWORD PTR [rbp-0x3b8]
  7c7ac1:	4c 8b a5 a0 fb ff ff 	mov    r12,QWORD PTR [rbp-0x460]
  7c7ac8:	4c 8b bd e0 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x820]
  7c7acf:	48 83 bd 38 fc ff ff 	cmp    QWORD PTR [rbp-0x3c8],0x8
  7c7ad6:	08 
  7c7ad7:	0f 85 01 01 00 00    	jne    7c7bde <pre_step3d_mod_mp_pre_step3d_tile_+0xe5de>
  7c7add:	48 83 bd f8 fa ff ff 	cmp    QWORD PTR [rbp-0x508],0x8
  7c7ae4:	08 
  7c7ae5:	0f 85 f3 00 00 00    	jne    7c7bde <pre_step3d_mod_mp_pre_step3d_tile_+0xe5de>
  7c7aeb:	48 8b 95 68 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x898]
  7c7af2:	33 c9                	xor    ecx,ecx
  7c7af4:	4c 8b 85 e0 f1 ff ff 	mov    r8,QWORD PTR [rbp-0xe20]
  7c7afb:	45 33 c9             	xor    r9d,r9d
  7c7afe:	48 3b 95 60 f7 ff ff 	cmp    rdx,QWORD PTR [rbp-0x8a0]
  7c7b05:	48 8b 95 00 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x600]
  7c7b0c:	0f 8c 6f 04 00 00    	jl     7c7f81 <pre_step3d_mod_mp_pre_step3d_tile_+0xe981>
  7c7b12:	4c 8b 95 e0 f6 ff ff 	mov    r10,QWORD PTR [rbp-0x920]
  7c7b19:	4c 8b 9d 48 fb ff ff 	mov    r11,QWORD PTR [rbp-0x4b8]
  7c7b20:	48 8b bd c0 f6 ff ff 	mov    rdi,QWORD PTR [rbp-0x940]
  7c7b27:	4c 8b b5 00 fb ff ff 	mov    r14,QWORD PTR [rbp-0x500]
  7c7b2e:	44 8b bd f8 fb ff ff 	mov    r15d,DWORD PTR [rbp-0x408]
  7c7b35:	4d 03 d3             	add    r10,r11
  7c7b38:	49 03 fb             	add    rdi,r11
  7c7b3b:	44 3b bd 00 fc ff ff 	cmp    r15d,DWORD PTR [rbp-0x400]
  7c7b42:	7c 74                	jl     7c7bb8 <pre_step3d_mod_mp_pre_step3d_tile_+0xe5b8>
  7c7b44:	48 83 f8 04          	cmp    rax,0x4
  7c7b48:	0f 8c d1 29 00 00    	jl     7ca51f <pre_step3d_mod_mp_pre_step3d_tile_+0x10f1f>
  7c7b4e:	4c 8b ad 40 fc ff ff 	mov    r13,QWORD PTR [rbp-0x3c0]
  7c7b55:	45 33 e4             	xor    r12d,r12d
  7c7b58:	4d 89 ef             	mov    r15,r13
  7c7b5b:	4e 8d 1c 0f          	lea    r11,[rdi+r9*1]
  7c7b5f:	4b 8d 34 0a          	lea    rsi,[r10+r9*1]
  7c7b63:	c4 81 7d 10 0c e3    	vmovupd ymm1,YMMWORD PTR [r11+r12*8]
  7c7b69:	c4 a1 75 5c 14 e6    	vsubpd ymm2,ymm1,YMMWORD PTR [rsi+r12*8]
  7c7b6f:	c4 81 6d 59 1c e0    	vmulpd ymm3,ymm2,YMMWORD PTR [r8+r12*8]
  7c7b75:	c4 a1 7d 11 1c e2    	vmovupd YMMWORD PTR [rdx+r12*8],ymm3
  7c7b7b:	49 83 c4 04          	add    r12,0x4
  7c7b7f:	4d 3b e7             	cmp    r12,r15
  7c7b82:	72 df                	jb     7c7b63 <pre_step3d_mod_mp_pre_step3d_tile_+0xe563>
  7c7b84:	44 8b bd f8 fb ff ff 	mov    r15d,DWORD PTR [rbp-0x408]
  7c7b8b:	4c 3b e8             	cmp    r13,rax
  7c7b8e:	73 28                	jae    7c7bb8 <pre_step3d_mod_mp_pre_step3d_tile_+0xe5b8>
  7c7b90:	4e 8d 1c 0f          	lea    r11,[rdi+r9*1]
  7c7b94:	4b 8d 34 0a          	lea    rsi,[r10+r9*1]
  7c7b98:	c4 81 7b 10 0c eb    	vmovsd xmm1,QWORD PTR [r11+r13*8]
  7c7b9e:	c4 a1 73 5c 14 ee    	vsubsd xmm2,xmm1,QWORD PTR [rsi+r13*8]
  7c7ba4:	c4 81 6b 59 1c e8    	vmulsd xmm3,xmm2,QWORD PTR [r8+r13*8]
  7c7baa:	c4 a1 7b 11 1c ea    	vmovsd QWORD PTR [rdx+r13*8],xmm3
  7c7bb0:	49 ff c5             	inc    r13
  7c7bb3:	4c 3b e8             	cmp    r13,rax
  7c7bb6:	72 e0                	jb     7c7b98 <pre_step3d_mod_mp_pre_step3d_tile_+0xe598>
  7c7bb8:	48 ff c1             	inc    rcx
  7c7bbb:	4d 03 c6             	add    r8,r14
  7c7bbe:	48 03 95 a0 fb ff ff 	add    rdx,QWORD PTR [rbp-0x460]
  7c7bc5:	4c 03 8d 20 fb ff ff 	add    r9,QWORD PTR [rbp-0x4e0]
  7c7bcc:	48 3b 8d 68 fb ff ff 	cmp    rcx,QWORD PTR [rbp-0x498]
  7c7bd3:	0f 82 62 ff ff ff    	jb     7c7b3b <pre_step3d_mod_mp_pre_step3d_tile_+0xe53b>
  7c7bd9:	e9 87 03 00 00       	jmp    7c7f65 <pre_step3d_mod_mp_pre_step3d_tile_+0xe965>
  7c7bde:	48 8b 95 68 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x898]
  7c7be5:	45 33 c0             	xor    r8d,r8d
  7c7be8:	33 ff                	xor    edi,edi
  7c7bea:	33 c9                	xor    ecx,ecx
  7c7bec:	48 3b 95 60 f7 ff ff 	cmp    rdx,QWORD PTR [rbp-0x8a0]
  7c7bf3:	ba 00 00 00 00       	mov    edx,0x0
  7c7bf8:	0f 8c 83 03 00 00    	jl     7c7f81 <pre_step3d_mod_mp_pre_step3d_tile_+0xe981>
  7c7bfe:	4c 8b 9d 48 fb ff ff 	mov    r11,QWORD PTR [rbp-0x4b8]
  7c7c05:	48 8b b5 18 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x8e8]
  7c7c0c:	4c 8b 95 28 f7 ff ff 	mov    r10,QWORD PTR [rbp-0x8d8]
  7c7c13:	4c 8b 8d 20 f7 ff ff 	mov    r9,QWORD PTR [rbp-0x8e0]
  7c7c1a:	4c 8b b5 38 fc ff ff 	mov    r14,QWORD PTR [rbp-0x3c8]
  7c7c21:	49 03 f3             	add    rsi,r11
  7c7c24:	48 89 b5 d0 f9 ff ff 	mov    QWORD PTR [rbp-0x630],rsi
  7c7c2b:	4d 03 d3             	add    r10,r11
  7c7c2e:	48 8b b5 08 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x8f8]
  7c7c35:	4d 03 cb             	add    r9,r11
  7c7c38:	4c 89 8d 40 f9 ff ff 	mov    QWORD PTR [rbp-0x6c0],r9
  7c7c3f:	4c 89 95 c8 fb ff ff 	mov    QWORD PTR [rbp-0x438],r10
  7c7c46:	4c 03 de             	add    r11,rsi
  7c7c49:	4c 89 9d c0 fb ff ff 	mov    QWORD PTR [rbp-0x440],r11
  7c7c50:	8b b5 f8 fb ff ff    	mov    esi,DWORD PTR [rbp-0x408]
  7c7c56:	3b b5 00 fc ff ff    	cmp    esi,DWORD PTR [rbp-0x400]
  7c7c5c:	0f 8c de 02 00 00    	jl     7c7f40 <pre_step3d_mod_mp_pre_step3d_tile_+0xe940>
  7c7c62:	48 83 f8 04          	cmp    rax,0x4
  7c7c66:	0f 8c ed 29 00 00    	jl     7ca659 <pre_step3d_mod_mp_pre_step3d_tile_+0x11059>
  7c7c6c:	48 8b b5 00 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x600]
  7c7c73:	48 03 f1             	add    rsi,rcx
  7c7c76:	48 89 b5 18 fa ff ff 	mov    QWORD PTR [rbp-0x5e8],rsi
  7c7c7d:	48 83 e6 0f          	and    rsi,0xf
  7c7c81:	85 f6                	test   esi,esi
  7c7c83:	74 11                	je     7c7c96 <pre_step3d_mod_mp_pre_step3d_tile_+0xe696>
  7c7c85:	f7 c6 07 00 00 00    	test   esi,0x7
  7c7c8b:	0f 85 c8 29 00 00    	jne    7ca659 <pre_step3d_mod_mp_pre_step3d_tile_+0x11059>
  7c7c91:	be 01 00 00 00       	mov    esi,0x1
  7c7c96:	41 89 f4             	mov    r12d,esi
  7c7c99:	4d 8d 4c 24 04       	lea    r9,[r12+0x4]
  7c7c9e:	49 3b c1             	cmp    rax,r9
  7c7ca1:	0f 8c b2 29 00 00    	jl     7ca659 <pre_step3d_mod_mp_pre_step3d_tile_+0x11059>
  7c7ca7:	4c 8b bd c8 fb ff ff 	mov    r15,QWORD PTR [rbp-0x438]
  7c7cae:	45 33 d2             	xor    r10d,r10d
  7c7cb1:	44 8b 8d 60 fb ff ff 	mov    r9d,DWORD PTR [rbp-0x4a0]
  7c7cb8:	45 89 cd             	mov    r13d,r9d
  7c7cbb:	44 2b ee             	sub    r13d,esi
  7c7cbe:	45 33 db             	xor    r11d,r11d
  7c7cc1:	41 83 e5 03          	and    r13d,0x3
  7c7cc5:	4d 03 f8             	add    r15,r8
  7c7cc8:	4c 89 bd 90 fc ff ff 	mov    QWORD PTR [rbp-0x370],r15
  7c7ccf:	41 f7 dd             	neg    r13d
  7c7cd2:	4c 8b bd c0 fb ff ff 	mov    r15,QWORD PTR [rbp-0x440]
  7c7cd9:	45 03 e9             	add    r13d,r9d
  7c7cdc:	4d 63 ed             	movsxd r13,r13d
  7c7cdf:	45 33 c9             	xor    r9d,r9d
  7c7ce2:	4d 03 f8             	add    r15,r8
  7c7ce5:	4c 89 bd d8 fb ff ff 	mov    QWORD PTR [rbp-0x428],r15
  7c7cec:	4c 8b bd 58 fb ff ff 	mov    r15,QWORD PTR [rbp-0x4a8]
  7c7cf3:	4c 03 ff             	add    r15,rdi
  7c7cf6:	4c 89 bd d0 fb ff ff 	mov    QWORD PTR [rbp-0x430],r15
  7c7cfd:	85 f6                	test   esi,esi
  7c7cff:	76 6f                	jbe    7c7d70 <pre_step3d_mod_mp_pre_step3d_tile_+0xe770>
  7c7d01:	4c 89 85 68 fa ff ff 	mov    QWORD PTR [rbp-0x598],r8
  7c7d08:	48 89 95 70 fa ff ff 	mov    QWORD PTR [rbp-0x590],rdx
  7c7d0f:	48 89 85 48 fc ff ff 	mov    QWORD PTR [rbp-0x3b8],rax
  7c7d16:	4c 89 f8             	mov    rax,r15
  7c7d19:	48 8b 95 d8 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x428]
  7c7d20:	48 8b b5 90 fc ff ff 	mov    rsi,QWORD PTR [rbp-0x370]
  7c7d27:	4c 8b 85 18 fa ff ff 	mov    r8,QWORD PTR [rbp-0x5e8]
  7c7d2e:	4c 8b bd f8 fa ff ff 	mov    r15,QWORD PTR [rbp-0x508]
  7c7d35:	c4 c1 7b 10 0c 31    	vmovsd xmm1,QWORD PTR [r9+rsi*1]
  7c7d3b:	c4 c1 73 5c 14 11    	vsubsd xmm2,xmm1,QWORD PTR [r9+rdx*1]
  7c7d41:	4d 03 ce             	add    r9,r14
  7c7d44:	c4 c1 6b 59 1c 03    	vmulsd xmm3,xmm2,QWORD PTR [r11+rax*1]
  7c7d4a:	4d 03 df             	add    r11,r15
  7c7d4d:	c4 81 7b 11 1c d0    	vmovsd QWORD PTR [r8+r10*8],xmm3
  7c7d53:	49 ff c2             	inc    r10
  7c7d56:	4d 3b d4             	cmp    r10,r12
  7c7d59:	72 da                	jb     7c7d35 <pre_step3d_mod_mp_pre_step3d_tile_+0xe735>
  7c7d5b:	4c 8b 85 68 fa ff ff 	mov    r8,QWORD PTR [rbp-0x598]
  7c7d62:	48 8b 95 70 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x590]
  7c7d69:	48 8b 85 48 fc ff ff 	mov    rax,QWORD PTR [rbp-0x3b8]
  7c7d70:	4c 8b bd d0 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x630]
  7c7d77:	4d 89 f2             	mov    r10,r14
  7c7d7a:	4c 8b 8d 78 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x788]
  7c7d81:	48 8b b5 40 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x6c0]
  7c7d88:	4c 8b 9d f8 fa ff ff 	mov    r11,QWORD PTR [rbp-0x508]
  7c7d8f:	4d 03 f8             	add    r15,r8
  7c7d92:	4c 89 bd 48 f9 ff ff 	mov    QWORD PTR [rbp-0x6b8],r15
  7c7d99:	4c 03 c9             	add    r9,rcx
  7c7d9c:	4c 8b bd 70 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x790]
  7c7da3:	49 03 f0             	add    rsi,r8
  7c7da6:	4c 89 ad 88 fc ff ff 	mov    QWORD PTR [rbp-0x378],r13
  7c7dad:	48 89 8d 78 fa ff ff 	mov    QWORD PTR [rbp-0x588],rcx
  7c7db4:	48 89 bd 80 fa ff ff 	mov    QWORD PTR [rbp-0x580],rdi
  7c7dbb:	4c 03 ff             	add    r15,rdi
  7c7dbe:	4c 89 85 68 fa ff ff 	mov    QWORD PTR [rbp-0x598],r8
  7c7dc5:	48 89 95 70 fa ff ff 	mov    QWORD PTR [rbp-0x590],rdx
  7c7dcc:	48 89 85 48 fc ff ff 	mov    QWORD PTR [rbp-0x3b8],rax
  7c7dd3:	4d 0f af dc          	imul   r11,r12
  7c7dd7:	4d 0f af d4          	imul   r10,r12
  7c7ddb:	4d 89 fd             	mov    r13,r15
  7c7dde:	48 8b 85 48 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x6b8]
  7c7de5:	48 8b 95 d0 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x430]
  7c7dec:	48 8b 8d d8 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x428]
  7c7df3:	48 8b bd 18 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x5e8]
  7c7dfa:	4c 8b 85 f8 fa ff ff 	mov    r8,QWORD PTR [rbp-0x508]
  7c7e01:	4c 8b bd 90 fc ff ff 	mov    r15,QWORD PTR [rbp-0x370]
  7c7e08:	4d 03 fa             	add    r15,r10
  7c7e0b:	c4 c1 7b 10 0f       	vmovsd xmm1,QWORD PTR [r15]
  7c7e10:	c4 81 71 16 1c 37    	vmovhpd xmm3,xmm1,QWORD PTR [r15+r14*1]
  7c7e16:	4e 8d 3c 11          	lea    r15,[rcx+r10*1]
  7c7e1a:	c4 c1 7b 10 17       	vmovsd xmm2,QWORD PTR [r15]
  7c7e1f:	c4 81 69 16 24 37    	vmovhpd xmm4,xmm2,QWORD PTR [r15+r14*1]
  7c7e25:	4e 8d 3c 1a          	lea    r15,[rdx+r11*1]
  7c7e29:	c4 c1 7b 10 2f       	vmovsd xmm5,QWORD PTR [r15]
  7c7e2e:	c4 81 51 16 3c 07    	vmovhpd xmm7,xmm5,QWORD PTR [r15+r8*1]
  7c7e34:	4e 8d 3c 16          	lea    r15,[rsi+r10*1]
  7c7e38:	c4 41 7b 10 0f       	vmovsd xmm9,QWORD PTR [r15]
  7c7e3d:	c4 01 31 16 24 37    	vmovhpd xmm12,xmm9,QWORD PTR [r15+r14*1]
  7c7e43:	4e 8d 3c 10          	lea    r15,[rax+r10*1]
  7c7e47:	c4 41 7b 10 1f       	vmovsd xmm11,QWORD PTR [r15]
  7c7e4c:	4f 8d 14 b2          	lea    r10,[r10+r14*4]
  7c7e50:	c4 01 21 16 2c 37    	vmovhpd xmm13,xmm11,QWORD PTR [r15+r14*1]
  7c7e56:	4f 8d 7c 1d 00       	lea    r15,[r13+r11*1+0x0]
  7c7e5b:	c5 e1 5c f4          	vsubpd xmm6,xmm3,xmm4
  7c7e5f:	c4 41 19 5c fd       	vsubpd xmm15,xmm12,xmm13
  7c7e64:	c5 49 59 c7          	vmulpd xmm8,xmm6,xmm7
  7c7e68:	c4 41 7b 10 37       	vmovsd xmm14,QWORD PTR [r15]
  7c7e6d:	4f 8d 1c 83          	lea    r11,[r11+r8*4]
  7c7e71:	c4 81 09 16 0c 07    	vmovhpd xmm1,xmm14,QWORD PTR [r15+r8*1]
  7c7e77:	c5 81 59 d1          	vmulpd xmm2,xmm15,xmm1
  7c7e7b:	c4 21 79 11 04 e7    	vmovupd XMMWORD PTR [rdi+r12*8],xmm8
  7c7e81:	c4 81 79 11 54 e1 10 	vmovupd XMMWORD PTR [r9+r12*8+0x10],xmm2
  7c7e88:	49 83 c4 04          	add    r12,0x4
  7c7e8c:	4c 3b a5 88 fc ff ff 	cmp    r12,QWORD PTR [rbp-0x378]
  7c7e93:	0f 82 68 ff ff ff    	jb     7c7e01 <pre_step3d_mod_mp_pre_step3d_tile_+0xe801>
  7c7e99:	4c 8b ad 88 fc ff ff 	mov    r13,QWORD PTR [rbp-0x378]
  7c7ea0:	48 8b 8d 78 fa ff ff 	mov    rcx,QWORD PTR [rbp-0x588]
  7c7ea7:	48 8b bd 80 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x580]
  7c7eae:	4c 8b 85 68 fa ff ff 	mov    r8,QWORD PTR [rbp-0x598]
  7c7eb5:	48 8b 95 70 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x590]
  7c7ebc:	48 8b 85 48 fc ff ff 	mov    rax,QWORD PTR [rbp-0x3b8]
  7c7ec3:	4d 89 f4             	mov    r12,r14
  7c7ec6:	4c 8b 95 f8 fa ff ff 	mov    r10,QWORD PTR [rbp-0x508]
  7c7ecd:	4d 0f af e5          	imul   r12,r13
  7c7ed1:	4d 0f af d5          	imul   r10,r13
  7c7ed5:	4c 3b e8             	cmp    r13,rax
  7c7ed8:	73 66                	jae    7c7f40 <pre_step3d_mod_mp_pre_step3d_tile_+0xe940>
  7c7eda:	4c 8b bd 58 fb ff ff 	mov    r15,QWORD PTR [rbp-0x4a8]
  7c7ee1:	4c 8b 8d 00 fa ff ff 	mov    r9,QWORD PTR [rbp-0x600]
  7c7ee8:	48 8b b5 c8 fb ff ff 	mov    rsi,QWORD PTR [rbp-0x438]
  7c7eef:	4c 8b 9d c0 fb ff ff 	mov    r11,QWORD PTR [rbp-0x440]
  7c7ef6:	4c 03 ff             	add    r15,rdi
  7c7ef9:	4c 03 c9             	add    r9,rcx
  7c7efc:	48 89 95 70 fa ff ff 	mov    QWORD PTR [rbp-0x590],rdx
  7c7f03:	49 03 f0             	add    rsi,r8
  7c7f06:	4c 89 fa             	mov    rdx,r15
  7c7f09:	4d 03 d8             	add    r11,r8
  7c7f0c:	4c 8b bd f8 fa ff ff 	mov    r15,QWORD PTR [rbp-0x508]
  7c7f13:	c4 c1 7b 10 0c 34    	vmovsd xmm1,QWORD PTR [r12+rsi*1]
  7c7f19:	c4 81 73 5c 14 1c    	vsubsd xmm2,xmm1,QWORD PTR [r12+r11*1]
  7c7f1f:	4d 03 e6             	add    r12,r14
  7c7f22:	c4 c1 6b 59 1c 12    	vmulsd xmm3,xmm2,QWORD PTR [r10+rdx*1]
  7c7f28:	4d 03 d7             	add    r10,r15
  7c7f2b:	c4 81 7b 11 1c e9    	vmovsd QWORD PTR [r9+r13*8],xmm3
  7c7f31:	49 ff c5             	inc    r13
  7c7f34:	4c 3b e8             	cmp    r13,rax
  7c7f37:	72 da                	jb     7c7f13 <pre_step3d_mod_mp_pre_step3d_tile_+0xe913>
  7c7f39:	48 8b 95 70 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x590]
  7c7f40:	48 ff c2             	inc    rdx
  7c7f43:	4c 03 85 20 fb ff ff 	add    r8,QWORD PTR [rbp-0x4e0]
  7c7f4a:	48 03 bd 00 fb ff ff 	add    rdi,QWORD PTR [rbp-0x500]
  7c7f51:	48 03 8d a0 fb ff ff 	add    rcx,QWORD PTR [rbp-0x460]
  7c7f58:	48 3b 95 68 fb ff ff 	cmp    rdx,QWORD PTR [rbp-0x498]
  7c7f5f:	0f 82 eb fc ff ff    	jb     7c7c50 <pre_step3d_mod_mp_pre_step3d_tile_+0xe650>
  7c7f65:	4c 8b ad 40 fc ff ff 	mov    r13,QWORD PTR [rbp-0x3c0]
  7c7f6c:	4c 8b b5 30 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x7d0]
  7c7f73:	4c 8b a5 a0 fb ff ff 	mov    r12,QWORD PTR [rbp-0x460]
  7c7f7a:	4c 8b bd e0 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x820]
  7c7f81:	48 8b 8d 00 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x800]
  7c7f88:	48 8b 95 d8 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x828]
  7c7f8f:	f6 44 0a f4 01       	test   BYTE PTR [rdx+rcx*1-0xc],0x1
  7c7f94:	0f 85 b0 00 00 00    	jne    7c804a <pre_step3d_mod_mp_pre_step3d_tile_+0xea4a>
  7c7f9a:	48 8b 95 70 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x890]
  7c7fa1:	48 8b 8d 08 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x7f8]
  7c7fa8:	f6 44 8a fc 01       	test   BYTE PTR [rdx+rcx*4-0x4],0x1
  7c7fad:	0f 85 97 00 00 00    	jne    7c804a <pre_step3d_mod_mp_pre_step3d_tile_+0xea4a>
  7c7fb3:	48 8b 95 90 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x970]
  7c7fba:	48 8b 8d 98 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x968]
  7c7fc1:	4c 8b 84 0a 38 f9 ff 	mov    r8,QWORD PTR [rdx+rcx*1-0x6c8]
  7c7fc8:	ff 
  7c7fc9:	49 f7 d8             	neg    r8
  7c7fcc:	4c 03 85 88 f6 ff ff 	add    r8,QWORD PTR [rbp-0x978]
  7c7fd3:	4c 0f af 84 0a 30 f9 	imul   r8,QWORD PTR [rdx+rcx*1-0x6d0]
  7c7fda:	ff ff 
  7c7fdc:	48 8b bc 0a f8 f8 ff 	mov    rdi,QWORD PTR [rdx+rcx*1-0x708]
  7c7fe3:	ff 
  7c7fe4:	42 f6 04 07 01       	test   BYTE PTR [rdi+r8*1],0x1
  7c7fe9:	74 5f                	je     7c804a <pre_step3d_mod_mp_pre_step3d_tile_+0xea4a>
  7c7feb:	8b 95 f8 fb ff ff    	mov    edx,DWORD PTR [rbp-0x408]
  7c7ff1:	3b 95 00 fc ff ff    	cmp    edx,DWORD PTR [rbp-0x400]
  7c7ff7:	7c 6b                	jl     7c8064 <pre_step3d_mod_mp_pre_step3d_tile_+0xea64>
  7c7ff9:	83 bd 48 f3 ff ff 0c 	cmp    DWORD PTR [rbp-0xcb8],0xc
  7c8000:	0f 8e 21 25 00 00    	jle    7ca527 <pre_step3d_mod_mp_pre_step3d_tile_+0x10f27>
  7c8006:	83 bd 48 f6 ff ff 00 	cmp    DWORD PTR [rbp-0x9b8],0x0
  7c800d:	0f 84 14 25 00 00    	je     7ca527 <pre_step3d_mod_mp_pre_step3d_tile_+0x10f27>
  7c8013:	4c 89 f6             	mov    rsi,r14
  7c8016:	48 8b bd 08 f6 ff ff 	mov    rdi,QWORD PTR [rbp-0x9f8]
  7c801d:	48 8b 95 50 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x9b0]
  7c8024:	48 89 85 48 fc ff ff 	mov    QWORD PTR [rbp-0x3b8],rax
  7c802b:	c5 f8 77             	vzeroupper 
  7c802e:	e8 5d 92 d0 ff       	call   4d1290 <_intel_fast_memcpy>
  7c8033:	48 8b 85 48 fc ff ff 	mov    rax,QWORD PTR [rbp-0x3b8]
  7c803a:	c5 fb 10 05 56 41 08 	vmovsd xmm0,QWORD PTR [rip+0x84156]        # 84c198 <__STRLITPACK_0.112+0x88>
  7c8041:	00 
  7c8042:	c5 7b 10 15 76 49 08 	vmovsd xmm10,QWORD PTR [rip+0x84976]        # 84c9c0 <__STRLITPACK_0.112+0x8b0>
  7c8049:	00 
  7c804a:	48 8b 8d 00 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x800]
  7c8051:	48 8b 95 d8 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x828]
  7c8058:	f6 44 0a fc 01       	test   BYTE PTR [rdx+rcx*1-0x4],0x1
  7c805d:	74 1e                	je     7c807d <pre_step3d_mod_mp_pre_step3d_tile_+0xea7d>
  7c805f:	e9 40 01 00 00       	jmp    7c81a4 <pre_step3d_mod_mp_pre_step3d_tile_+0xeba4>
  7c8064:	48 8b 8d 00 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x800]
  7c806b:	48 8b 95 d8 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x828]
  7c8072:	f6 44 0a fc 01       	test   BYTE PTR [rdx+rcx*1-0x4],0x1
  7c8077:	0f 85 3c 01 00 00    	jne    7c81b9 <pre_step3d_mod_mp_pre_step3d_tile_+0xebb9>
  7c807d:	48 8b 95 70 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x890]
  7c8084:	48 8b 8d 08 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x7f8]
  7c808b:	f6 44 8a fc 01       	test   BYTE PTR [rdx+rcx*4-0x4],0x1
  7c8090:	0f 85 0e 01 00 00    	jne    7c81a4 <pre_step3d_mod_mp_pre_step3d_tile_+0xeba4>
  7c8096:	48 8b 95 90 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x970]
  7c809d:	48 8b 8d 98 f6 ff ff 	mov    rcx,QWORD PTR [rbp-0x968]
  7c80a4:	4c 8b 84 0a f0 f8 ff 	mov    r8,QWORD PTR [rdx+rcx*1-0x710]
  7c80ab:	ff 
  7c80ac:	49 f7 d8             	neg    r8
  7c80af:	4c 03 85 88 f6 ff ff 	add    r8,QWORD PTR [rbp-0x978]
  7c80b6:	4c 0f af 84 0a e8 f8 	imul   r8,QWORD PTR [rdx+rcx*1-0x718]
  7c80bd:	ff ff 
  7c80bf:	48 8b bc 0a b0 f8 ff 	mov    rdi,QWORD PTR [rdx+rcx*1-0x750]
  7c80c6:	ff 
  7c80c7:	42 f6 04 07 01       	test   BYTE PTR [rdi+r8*1],0x1
  7c80cc:	0f 84 d2 00 00 00    	je     7c81a4 <pre_step3d_mod_mp_pre_step3d_tile_+0xeba4>
  7c80d2:	8b 95 f8 fb ff ff    	mov    edx,DWORD PTR [rbp-0x408]
  7c80d8:	3b 95 00 fc ff ff    	cmp    edx,DWORD PTR [rbp-0x400]
  7c80de:	0f 8c 84 00 00 00    	jl     7c8168 <pre_step3d_mod_mp_pre_step3d_tile_+0xeb68>
  7c80e4:	83 bd 48 f3 ff ff 0c 	cmp    DWORD PTR [rbp-0xcb8],0xc
  7c80eb:	0f 8e 93 24 00 00    	jle    7ca584 <pre_step3d_mod_mp_pre_step3d_tile_+0x10f84>
  7c80f1:	83 bd 20 f6 ff ff 00 	cmp    DWORD PTR [rbp-0x9e0],0x0
  7c80f8:	0f 84 86 24 00 00    	je     7ca584 <pre_step3d_mod_mp_pre_step3d_tile_+0x10f84>
  7c80fe:	c5 f8 77             	vzeroupper 
  7c8101:	48 8b bd 18 f6 ff ff 	mov    rdi,QWORD PTR [rbp-0x9e8]
  7c8108:	48 8b b5 10 f6 ff ff 	mov    rsi,QWORD PTR [rbp-0x9f0]
  7c810f:	48 8b 95 50 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x9b0]
  7c8116:	48 89 85 48 fc ff ff 	mov    QWORD PTR [rbp-0x3b8],rax
  7c811d:	e8 6e 91 d0 ff       	call   4d1290 <_intel_fast_memcpy>
  7c8122:	48 8b 85 48 fc ff ff 	mov    rax,QWORD PTR [rbp-0x3b8]
  7c8129:	c5 fb 10 05 67 40 08 	vmovsd xmm0,QWORD PTR [rip+0x84067]        # 84c198 <__STRLITPACK_0.112+0x88>
  7c8130:	00 
  7c8131:	c5 7b 10 15 87 48 08 	vmovsd xmm10,QWORD PTR [rip+0x84887]        # 84c9c0 <__STRLITPACK_0.112+0x8b0>
  7c8138:	00 
  7c8139:	8b 95 98 f7 ff ff    	mov    edx,DWORD PTR [rbp-0x868]
  7c813f:	33 ff                	xor    edi,edi
  7c8141:	3b 95 90 f7 ff ff    	cmp    edx,DWORD PTR [rbp-0x870]
  7c8147:	0f 8c 4d 01 00 00    	jl     7c829a <pre_step3d_mod_mp_pre_step3d_tile_+0xec9a>
  7c814d:	c5 fd 10 0d ab 22 08 	vmovupd ymm1,YMMWORD PTR [rip+0x822ab]        # 84a400 <var$630.126.450+0x460>
  7c8154:	00 
  7c8155:	48 8b 95 08 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x3f8]
  7c815c:	48 8b 8d 10 fc ff ff 	mov    rcx,QWORD PTR [rbp-0x3f0]
  7c8163:	e9 9f 00 00 00       	jmp    7c8207 <pre_step3d_mod_mp_pre_step3d_tile_+0xec07>
  7c8168:	8b 95 98 f7 ff ff    	mov    edx,DWORD PTR [rbp-0x868]
  7c816e:	3b 95 90 f7 ff ff    	cmp    edx,DWORD PTR [rbp-0x870]
  7c8174:	0f 8c 20 01 00 00    	jl     7c829a <pre_step3d_mod_mp_pre_step3d_tile_+0xec9a>
  7c817a:	bf 01 00 00 00       	mov    edi,0x1
  7c817f:	49 83 ff 01          	cmp    r15,0x1
  7c8183:	0f 86 11 01 00 00    	jbe    7c829a <pre_step3d_mod_mp_pre_step3d_tile_+0xec9a>
  7c8189:	c5 fd 10 0d 6f 22 08 	vmovupd ymm1,YMMWORD PTR [rip+0x8226f]        # 84a400 <var$630.126.450+0x460>
  7c8190:	00 
  7c8191:	48 8b 95 08 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x3f8]
  7c8198:	48 8b 8d 10 fc ff ff 	mov    rcx,QWORD PTR [rbp-0x3f0]
  7c819f:	e9 dc 00 00 00       	jmp    7c8280 <pre_step3d_mod_mp_pre_step3d_tile_+0xec80>
  7c81a4:	8b 95 98 f7 ff ff    	mov    edx,DWORD PTR [rbp-0x868]
  7c81aa:	33 ff                	xor    edi,edi
  7c81ac:	3b 95 90 f7 ff ff    	cmp    edx,DWORD PTR [rbp-0x870]
  7c81b2:	7d 26                	jge    7c81da <pre_step3d_mod_mp_pre_step3d_tile_+0xebda>
  7c81b4:	e9 e1 00 00 00       	jmp    7c829a <pre_step3d_mod_mp_pre_step3d_tile_+0xec9a>
  7c81b9:	8b 95 98 f7 ff ff    	mov    edx,DWORD PTR [rbp-0x868]
  7c81bf:	3b 95 90 f7 ff ff    	cmp    edx,DWORD PTR [rbp-0x870]
  7c81c5:	0f 8c cf 00 00 00    	jl     7c829a <pre_step3d_mod_mp_pre_step3d_tile_+0xec9a>
  7c81cb:	bf 01 00 00 00       	mov    edi,0x1
  7c81d0:	49 83 ff 01          	cmp    r15,0x1
  7c81d4:	0f 86 c0 00 00 00    	jbe    7c829a <pre_step3d_mod_mp_pre_step3d_tile_+0xec9a>
  7c81da:	c5 fd 10 0d 1e 22 08 	vmovupd ymm1,YMMWORD PTR [rip+0x8221e]        # 84a400 <var$630.126.450+0x460>
  7c81e1:	00 
  7c81e2:	48 8b 95 08 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x3f8]
  7c81e9:	48 8b 8d 10 fc ff ff 	mov    rcx,QWORD PTR [rbp-0x3f0]
  7c81f0:	44 8b 85 00 fc ff ff 	mov    r8d,DWORD PTR [rbp-0x400]
  7c81f7:	44 8b 8d f8 fb ff ff 	mov    r9d,DWORD PTR [rbp-0x408]
  7c81fe:	45 3b c8             	cmp    r9d,r8d
  7c8201:	0f 8c 87 00 00 00    	jl     7c828e <pre_step3d_mod_mp_pre_step3d_tile_+0xec8e>
  7c8207:	48 83 f8 04          	cmp    rax,0x4
  7c820b:	0f 8c 40 24 00 00    	jl     7ca651 <pre_step3d_mod_mp_pre_step3d_tile_+0x11051>
  7c8211:	49 89 f9             	mov    r9,rdi
  7c8214:	4d 89 e8             	mov    r8,r13
  7c8217:	4d 0f af cc          	imul   r9,r12
  7c821b:	33 f6                	xor    esi,esi
  7c821d:	4e 8d 1c 09          	lea    r11,[rcx+r9*1]
  7c8221:	4e 8d 14 0a          	lea    r10,[rdx+r9*1]
  7c8225:	4d 03 ce             	add    r9,r14
  7c8228:	c4 c1 7d 10 14 f1    	vmovupd ymm2,YMMWORD PTR [r9+rsi*8]
  7c822e:	c4 c1 6d 58 5c f2 f8 	vaddpd ymm3,ymm2,YMMWORD PTR [r10+rsi*8-0x8]
  7c8235:	c5 f5 59 e3          	vmulpd ymm4,ymm1,ymm3
  7c8239:	c4 c1 7d 11 64 f3 f8 	vmovupd YMMWORD PTR [r11+rsi*8-0x8],ymm4
  7c8240:	48 83 c6 04          	add    rsi,0x4
  7c8244:	49 3b f5             	cmp    rsi,r13
  7c8247:	72 df                	jb     7c8228 <pre_step3d_mod_mp_pre_step3d_tile_+0xec28>
  7c8249:	4c 3b c0             	cmp    r8,rax
  7c824c:	73 32                	jae    7c8280 <pre_step3d_mod_mp_pre_step3d_tile_+0xec80>
  7c824e:	49 89 f9             	mov    r9,rdi
  7c8251:	4d 0f af cc          	imul   r9,r12
  7c8255:	4e 8d 1c 09          	lea    r11,[rcx+r9*1]
  7c8259:	4e 8d 14 0a          	lea    r10,[rdx+r9*1]
  7c825d:	4d 03 ce             	add    r9,r14
  7c8260:	c4 81 7b 10 14 c1    	vmovsd xmm2,QWORD PTR [r9+r8*8]
  7c8266:	c4 81 6b 58 5c c2 f8 	vaddsd xmm3,xmm2,QWORD PTR [r10+r8*8-0x8]
  7c826d:	c5 fb 59 e3          	vmulsd xmm4,xmm0,xmm3
  7c8271:	c4 81 7b 11 64 c3 f8 	vmovsd QWORD PTR [r11+r8*8-0x8],xmm4
  7c8278:	49 ff c0             	inc    r8
  7c827b:	4c 3b c0             	cmp    r8,rax
  7c827e:	72 e0                	jb     7c8260 <pre_step3d_mod_mp_pre_step3d_tile_+0xec60>
  7c8280:	44 8b 85 00 fc ff ff 	mov    r8d,DWORD PTR [rbp-0x400]
  7c8287:	44 8b 8d f8 fb ff ff 	mov    r9d,DWORD PTR [rbp-0x408]
  7c828e:	48 ff c7             	inc    rdi
  7c8291:	49 3b ff             	cmp    rdi,r15
  7c8294:	0f 82 64 ff ff ff    	jb     7c81fe <pre_step3d_mod_mp_pre_step3d_tile_+0xebfe>
  7c829a:	48 83 bd 28 fb ff ff 	cmp    QWORD PTR [rbp-0x4d8],0x8
  7c82a1:	08 
  7c82a2:	0f 85 a0 01 00 00    	jne    7c8448 <pre_step3d_mod_mp_pre_step3d_tile_+0xee48>
  7c82a8:	48 83 bd 38 fc ff ff 	cmp    QWORD PTR [rbp-0x3c8],0x8
  7c82af:	08 
  7c82b0:	0f 85 92 01 00 00    	jne    7c8448 <pre_step3d_mod_mp_pre_step3d_tile_+0xee48>
  7c82b6:	33 ff                	xor    edi,edi
  7c82b8:	8b 95 98 f7 ff ff    	mov    edx,DWORD PTR [rbp-0x868]
  7c82be:	33 c9                	xor    ecx,ecx
  7c82c0:	4c 8b 8d d8 f1 ff ff 	mov    r9,QWORD PTR [rbp-0xe28]
  7c82c7:	45 33 d2             	xor    r10d,r10d
  7c82ca:	3b 95 88 f7 ff ff    	cmp    edx,DWORD PTR [rbp-0x878]
  7c82d0:	0f 8c 43 05 00 00    	jl     7c8819 <pre_step3d_mod_mp_pre_step3d_tile_+0xf219>
  7c82d6:	4c 8b 9d 48 fb ff ff 	mov    r11,QWORD PTR [rbp-0x4b8]
  7c82dd:	48 8b 95 b8 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x948]
  7c82e4:	4c 8b 85 d8 f6 ff ff 	mov    r8,QWORD PTR [rbp-0x928]
  7c82eb:	c5 fd 10 15 cd 2e 08 	vmovupd ymm2,YMMWORD PTR [rip+0x82ecd]        # 84b1c0 <var$630.126.450+0x1220>
  7c82f2:	00 
  7c82f3:	c5 fb 10 1d bd 46 08 	vmovsd xmm3,QWORD PTR [rip+0x846bd]        # 84c9b8 <__STRLITPACK_0.112+0x8a8>
  7c82fa:	00 
  7c82fb:	c5 fd 10 0d fd 20 08 	vmovupd ymm1,YMMWORD PTR [rip+0x820fd]        # 84a400 <var$630.126.450+0x460>
  7c8302:	00 
  7c8303:	49 03 d3             	add    rdx,r11
  7c8306:	48 89 95 50 f9 ff ff 	mov    QWORD PTR [rbp-0x6b0],rdx
  7c830d:	4d 03 c3             	add    r8,r11
  7c8310:	8b 95 f8 fb ff ff    	mov    edx,DWORD PTR [rbp-0x408]
  7c8316:	3b 95 00 fc ff ff    	cmp    edx,DWORD PTR [rbp-0x400]
  7c831c:	0f 8c fc 00 00 00    	jl     7c841e <pre_step3d_mod_mp_pre_step3d_tile_+0xee1e>
  7c8322:	48 83 f8 04          	cmp    rax,0x4
  7c8326:	0f 8c b5 22 00 00    	jl     7ca5e1 <pre_step3d_mod_mp_pre_step3d_tile_+0x10fe1>
  7c832c:	4c 8b ad 10 fc ff ff 	mov    r13,QWORD PTR [rbp-0x3f0]
  7c8333:	45 33 f6             	xor    r14d,r14d
  7c8336:	4c 8b a5 30 f8 ff ff 	mov    r12,QWORD PTR [rbp-0x7d0]
  7c833d:	48 8b b5 a0 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x760]
  7c8344:	4c 8b bd 50 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6b0]
  7c834b:	4c 03 e9             	add    r13,rcx
  7c834e:	48 8b 95 40 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x3c0]
  7c8355:	4c 03 e1             	add    r12,rcx
  7c8358:	48 89 85 48 fc ff ff 	mov    QWORD PTR [rbp-0x3b8],rax
  7c835f:	4c 8d 1c 0e          	lea    r11,[rsi+rcx*1]
  7c8363:	48 89 d0             	mov    rax,rdx
  7c8366:	4b 8d 34 10          	lea    rsi,[r8+r10*1]
  7c836a:	4d 03 fa             	add    r15,r10
  7c836d:	c4 81 7d 10 2c f3    	vmovupd ymm5,YMMWORD PTR [r11+r14*8]
  7c8373:	c4 a1 7d 10 24 f6    	vmovupd ymm4,YMMWORD PTR [rsi+r14*8]
  7c8379:	c4 01 75 59 0c f1    	vmulpd ymm9,ymm1,YMMWORD PTR [r9+r14*8]
  7c837f:	c4 81 55 5c 74 f5 f8 	vsubpd ymm6,ymm5,YMMWORD PTR [r13+r14*8-0x8]
  7c8386:	c4 81 5d 58 3c f7    	vaddpd ymm7,ymm4,YMMWORD PTR [r15+r14*8]
  7c838c:	c5 6d 59 c6          	vmulpd ymm8,ymm2,ymm6
  7c8390:	c4 41 45 5c d8       	vsubpd ymm11,ymm7,ymm8
  7c8395:	c4 41 35 59 e3       	vmulpd ymm12,ymm9,ymm11
  7c839a:	c4 01 7d 11 24 f4    	vmovupd YMMWORD PTR [r12+r14*8],ymm12
  7c83a0:	49 83 c6 04          	add    r14,0x4
  7c83a4:	4c 3b f0             	cmp    r14,rax
  7c83a7:	72 c4                	jb     7c836d <pre_step3d_mod_mp_pre_step3d_tile_+0xed6d>
  7c83a9:	48 8b 85 48 fc ff ff 	mov    rax,QWORD PTR [rbp-0x3b8]
  7c83b0:	48 3b d0             	cmp    rdx,rax
  7c83b3:	73 69                	jae    7c841e <pre_step3d_mod_mp_pre_step3d_tile_+0xee1e>
  7c83b5:	4c 8b 9d 10 fc ff ff 	mov    r11,QWORD PTR [rbp-0x3f0]
  7c83bc:	48 8b b5 30 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x7d0]
  7c83c3:	4c 8b ad a0 f8 ff ff 	mov    r13,QWORD PTR [rbp-0x760]
  7c83ca:	4c 8b a5 50 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6b0]
  7c83d1:	4c 03 d9             	add    r11,rcx
  7c83d4:	48 03 f1             	add    rsi,rcx
  7c83d7:	4d 8d 74 0d 00       	lea    r14,[r13+rcx*1+0x0]
  7c83dc:	4f 8d 2c 10          	lea    r13,[r8+r10*1]
  7c83e0:	4d 03 e2             	add    r12,r10
  7c83e3:	c4 c1 7b 10 2c d6    	vmovsd xmm5,QWORD PTR [r14+rdx*8]
  7c83e9:	c4 c1 7b 10 64 d5 00 	vmovsd xmm4,QWORD PTR [r13+rdx*8+0x0]
  7c83f0:	c4 41 7b 59 0c d1    	vmulsd xmm9,xmm0,QWORD PTR [r9+rdx*8]
  7c83f6:	c4 c1 53 5c 74 d3 f8 	vsubsd xmm6,xmm5,QWORD PTR [r11+rdx*8-0x8]
  7c83fd:	c4 c1 5b 58 3c d4    	vaddsd xmm7,xmm4,QWORD PTR [r12+rdx*8]
  7c8403:	c5 63 59 c6          	vmulsd xmm8,xmm3,xmm6
  7c8407:	c4 41 43 5c d8       	vsubsd xmm11,xmm7,xmm8
  7c840c:	c4 41 33 59 e3       	vmulsd xmm12,xmm9,xmm11
  7c8411:	c5 7b 11 24 d6       	vmovsd QWORD PTR [rsi+rdx*8],xmm12
  7c8416:	48 ff c2             	inc    rdx
  7c8419:	48 3b d0             	cmp    rdx,rax
  7c841c:	72 c5                	jb     7c83e3 <pre_step3d_mod_mp_pre_step3d_tile_+0xede3>
  7c841e:	48 ff c7             	inc    rdi
  7c8421:	48 03 8d a0 fb ff ff 	add    rcx,QWORD PTR [rbp-0x460]
  7c8428:	4c 03 8d 38 fb ff ff 	add    r9,QWORD PTR [rbp-0x4c8]
  7c842f:	4c 03 95 20 fb ff ff 	add    r10,QWORD PTR [rbp-0x4e0]
  7c8436:	48 3b bd 90 fb ff ff 	cmp    rdi,QWORD PTR [rbp-0x470]
  7c843d:	0f 82 cd fe ff ff    	jb     7c8310 <pre_step3d_mod_mp_pre_step3d_tile_+0xed10>
  7c8443:	e9 b5 03 00 00       	jmp    7c87fd <pre_step3d_mod_mp_pre_step3d_tile_+0xf1fd>
  7c8448:	33 c9                	xor    ecx,ecx
  7c844a:	8b 95 98 f7 ff ff    	mov    edx,DWORD PTR [rbp-0x868]
  7c8450:	45 33 c0             	xor    r8d,r8d
  7c8453:	33 ff                	xor    edi,edi
  7c8455:	3b 95 88 f7 ff ff    	cmp    edx,DWORD PTR [rbp-0x878]
  7c845b:	4c 89 c2             	mov    rdx,r8
  7c845e:	0f 8c b5 03 00 00    	jl     7c8819 <pre_step3d_mod_mp_pre_step3d_tile_+0xf219>
  7c8464:	4c 8b 9d 48 fb ff ff 	mov    r11,QWORD PTR [rbp-0x4b8]
  7c846b:	48 8b b5 10 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x8f0]
  7c8472:	4c 8b 95 38 f7 ff ff 	mov    r10,QWORD PTR [rbp-0x8c8]
  7c8479:	4c 8b 8d b0 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x750]
  7c8480:	c5 fb 10 2d 30 45 08 	vmovsd xmm5,QWORD PTR [rip+0x84530]        # 84c9b8 <__STRLITPACK_0.112+0x8a8>
  7c8487:	00 
  7c8488:	49 03 f3             	add    rsi,r11
  7c848b:	48 89 b5 d8 f9 ff ff 	mov    QWORD PTR [rbp-0x628],rsi
  7c8492:	4d 03 d3             	add    r10,r11
  7c8495:	48 8b b5 00 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x900]
  7c849c:	4d 03 cb             	add    r9,r11
  7c849f:	4c 89 8d 60 f9 ff ff 	mov    QWORD PTR [rbp-0x6a0],r9
  7c84a6:	4c 89 95 68 f9 ff ff 	mov    QWORD PTR [rbp-0x698],r10
  7c84ad:	c5 f9 10 1d 0b 3a 08 	vmovupd xmm3,XMMWORD PTR [rip+0x83a0b]        # 84bec0 <__STRLITPACK_54.50+0xd0>
  7c84b4:	00 
  7c84b5:	4c 03 de             	add    r11,rsi
  7c84b8:	4c 89 9d 58 f9 ff ff 	mov    QWORD PTR [rbp-0x6a8],r11
  7c84bf:	c5 f9 10 25 29 35 08 	vmovupd xmm4,XMMWORD PTR [rip+0x83529]        # 84b9f0 <__STRLITPACK_19.34+0x10>
  7c84c6:	00 
  7c84c7:	8b b5 f8 fb ff ff    	mov    esi,DWORD PTR [rbp-0x408]
  7c84cd:	3b b5 00 fc ff ff    	cmp    esi,DWORD PTR [rbp-0x400]
  7c84d3:	0f 8c ff 02 00 00    	jl     7c87d8 <pre_step3d_mod_mp_pre_step3d_tile_+0xf1d8>
  7c84d9:	48 83 f8 04          	cmp    rax,0x4
  7c84dd:	0f 8c 5e 21 00 00    	jl     7ca641 <pre_step3d_mod_mp_pre_step3d_tile_+0x11041>
  7c84e3:	48 8b b5 d8 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x628]
  7c84ea:	4c 8b b5 80 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x780]
  7c84f1:	4c 8b ad 68 f8 ff ff 	mov    r13,QWORD PTR [rbp-0x798]
  7c84f8:	4c 8b bd 30 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x7d0]
  7c84ff:	48 03 f7             	add    rsi,rdi
  7c8502:	48 89 b5 b0 fc ff ff 	mov    QWORD PTR [rbp-0x350],rsi
  7c8509:	4d 03 f0             	add    r14,r8
  7c850c:	48 8b b5 68 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x698]
  7c8513:	4c 03 ea             	add    r13,rdx
  7c8516:	4c 8b a5 40 fc ff ff 	mov    r12,QWORD PTR [rbp-0x3c0]
  7c851d:	4d 03 f8             	add    r15,r8
  7c8520:	4c 8b 9d 10 fc ff ff 	mov    r11,QWORD PTR [rbp-0x3f0]
  7c8527:	4c 8b 95 a0 f8 ff ff 	mov    r10,QWORD PTR [rbp-0x760]
  7c852e:	48 03 f7             	add    rsi,rdi
  7c8531:	48 89 b5 88 f9 ff ff 	mov    QWORD PTR [rbp-0x678],rsi
  7c8538:	48 8b b5 58 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x6a8]
  7c853f:	4d 03 d8             	add    r11,r8
  7c8542:	4c 8b 8d 88 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x778]
  7c8549:	4d 03 d0             	add    r10,r8
  7c854c:	4c 89 a5 e0 fb ff ff 	mov    QWORD PTR [rbp-0x420],r12
  7c8553:	45 33 e4             	xor    r12d,r12d
  7c8556:	4c 89 ad a8 fc ff ff 	mov    QWORD PTR [rbp-0x358],r13
  7c855d:	48 03 f7             	add    rsi,rdi
  7c8560:	48 89 b5 80 f9 ff ff 	mov    QWORD PTR [rbp-0x680],rsi
  7c8567:	4d 03 c8             	add    r9,r8
  7c856a:	48 8b b5 60 f9 ff ff 	mov    rsi,QWORD PTR [rbp-0x6a0]
  7c8571:	4c 89 b5 a0 fc ff ff 	mov    QWORD PTR [rbp-0x360],r14
  7c8578:	48 89 bd 88 fa ff ff 	mov    QWORD PTR [rbp-0x578],rdi
  7c857f:	48 89 95 90 fa ff ff 	mov    QWORD PTR [rbp-0x570],rdx
  7c8586:	48 03 f7             	add    rsi,rdi
  7c8589:	48 89 b5 78 f9 ff ff 	mov    QWORD PTR [rbp-0x688],rsi
  7c8590:	48 8b b5 60 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x7a0]
  7c8597:	4c 89 85 98 fa ff ff 	mov    QWORD PTR [rbp-0x568],r8
  7c859e:	48 89 8d a0 fa ff ff 	mov    QWORD PTR [rbp-0x560],rcx
  7c85a5:	48 89 85 48 fc ff ff 	mov    QWORD PTR [rbp-0x3b8],rax
  7c85ac:	48 03 f2             	add    rsi,rdx
  7c85af:	48 89 b5 70 f9 ff ff 	mov    QWORD PTR [rbp-0x690],rsi
  7c85b6:	33 f6                	xor    esi,esi
  7c85b8:	4c 89 bd 98 fc ff ff 	mov    QWORD PTR [rbp-0x368],r15
  7c85bf:	48 89 f0             	mov    rax,rsi
  7c85c2:	48 8b 95 70 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x690]
  7c85c9:	48 8b 8d 78 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x688]
  7c85d0:	48 8b bd 80 f9 ff ff 	mov    rdi,QWORD PTR [rbp-0x680]
  7c85d7:	4c 8b 85 88 f9 ff ff 	mov    r8,QWORD PTR [rbp-0x678]
  7c85de:	4c 8b ad 28 fb ff ff 	mov    r13,QWORD PTR [rbp-0x4d8]
  7c85e5:	4c 8b b5 38 fc ff ff 	mov    r14,QWORD PTR [rbp-0x3c8]
  7c85ec:	4c 8b bd a0 fc ff ff 	mov    r15,QWORD PTR [rbp-0x360]
  7c85f3:	c4 81 79 10 34 e2    	vmovupd xmm6,XMMWORD PTR [r10+r12*8]
  7c85f9:	c4 01 79 10 44 e7 10 	vmovupd xmm8,XMMWORD PTR [r15+r12*8+0x10]
  7c8600:	c4 81 49 5c 7c e3 f8 	vsubpd xmm7,xmm6,XMMWORD PTR [r11+r12*8-0x8]
  7c8607:	c4 01 39 5c 4c e3 08 	vsubpd xmm9,xmm8,XMMWORD PTR [r11+r12*8+0x8]
  7c860e:	c5 e1 59 d7          	vmulpd xmm2,xmm3,xmm7
  7c8612:	c4 c1 61 59 c9       	vmulpd xmm1,xmm3,xmm9
  7c8617:	4c 8b bd a8 fc ff ff 	mov    r15,QWORD PTR [rbp-0x358]
  7c861e:	4c 03 fe             	add    r15,rsi
  7c8621:	c4 41 7b 10 1f       	vmovsd xmm11,QWORD PTR [r15]
  7c8626:	c4 01 21 16 24 2f    	vmovhpd xmm12,xmm11,QWORD PTR [r15+r13*1]
  7c862c:	4c 8d 3c 07          	lea    r15,[rdi+rax*1]
  7c8630:	c4 41 7b 10 2f       	vmovsd xmm13,QWORD PTR [r15]
  7c8635:	c4 01 11 16 3c 37    	vmovhpd xmm15,xmm13,QWORD PTR [r15+r14*1]
  7c863b:	4c 8d 3c 01          	lea    r15,[rcx+rax*1]
  7c863f:	c4 41 7b 10 37       	vmovsd xmm14,QWORD PTR [r15]
  7c8644:	c4 01 09 16 2c 37    	vmovhpd xmm13,xmm14,QWORD PTR [r15+r14*1]
  7c864a:	c4 41 01 58 f5       	vaddpd xmm14,xmm15,xmm13
  7c864f:	c5 99 59 f4          	vmulpd xmm6,xmm12,xmm4
  7c8653:	c5 89 5c d2          	vsubpd xmm2,xmm14,xmm2
  7c8657:	c5 c9 59 fa          	vmulpd xmm7,xmm6,xmm2
  7c865b:	4c 8b bd 98 fc ff ff 	mov    r15,QWORD PTR [rbp-0x368]
  7c8662:	c4 81 79 11 3c e7    	vmovupd XMMWORD PTR [r15+r12*8],xmm7
  7c8668:	4c 8d 3c 32          	lea    r15,[rdx+rsi*1]
  7c866c:	c4 41 7b 10 07       	vmovsd xmm8,QWORD PTR [r15]
  7c8671:	4a 8d 34 ae          	lea    rsi,[rsi+r13*4]
  7c8675:	c4 01 39 16 0c 2f    	vmovhpd xmm9,xmm8,QWORD PTR [r15+r13*1]
  7c867b:	4c 8b bd b0 fc ff ff 	mov    r15,QWORD PTR [rbp-0x350]
  7c8682:	c5 b1 59 d4          	vmulpd xmm2,xmm9,xmm4
  7c8686:	4c 03 f8             	add    r15,rax
  7c8689:	c4 41 7b 10 1f       	vmovsd xmm11,QWORD PTR [r15]
  7c868e:	c4 01 21 16 3c 37    	vmovhpd xmm15,xmm11,QWORD PTR [r15+r14*1]
  7c8694:	4d 8d 3c 00          	lea    r15,[r8+rax*1]
  7c8698:	c4 41 7b 10 27       	vmovsd xmm12,QWORD PTR [r15]
  7c869d:	4a 8d 04 b0          	lea    rax,[rax+r14*4]
  7c86a1:	c4 01 19 16 1c 37    	vmovhpd xmm11,xmm12,QWORD PTR [r15+r14*1]
  7c86a7:	c4 41 01 58 e3       	vaddpd xmm12,xmm15,xmm11
  7c86ac:	c5 99 5c c9          	vsubpd xmm1,xmm12,xmm1
  7c86b0:	c5 e9 59 c9          	vmulpd xmm1,xmm2,xmm1
  7c86b4:	c4 81 79 11 4c e1 10 	vmovupd XMMWORD PTR [r9+r12*8+0x10],xmm1
  7c86bb:	49 83 c4 04          	add    r12,0x4
  7c86bf:	4c 3b a5 40 fc ff ff 	cmp    r12,QWORD PTR [rbp-0x3c0]
  7c86c6:	0f 82 20 ff ff ff    	jb     7c85ec <pre_step3d_mod_mp_pre_step3d_tile_+0xefec>
  7c86cc:	48 8b bd 88 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x578]
  7c86d3:	48 8b 95 90 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x570]
  7c86da:	4c 8b 85 98 fa ff ff 	mov    r8,QWORD PTR [rbp-0x568]
  7c86e1:	48 8b 8d a0 fa ff ff 	mov    rcx,QWORD PTR [rbp-0x560]
  7c86e8:	48 8b 85 48 fc ff ff 	mov    rax,QWORD PTR [rbp-0x3b8]
  7c86ef:	4c 8b ad 38 fc ff ff 	mov    r13,QWORD PTR [rbp-0x3c8]
  7c86f6:	48 8b b5 e0 fb ff ff 	mov    rsi,QWORD PTR [rbp-0x420]
  7c86fd:	4c 8b a5 28 fb ff ff 	mov    r12,QWORD PTR [rbp-0x4d8]
  7c8704:	4c 0f af ee          	imul   r13,rsi
  7c8708:	4c 0f af e6          	imul   r12,rsi
  7c870c:	48 3b f0             	cmp    rsi,rax
  7c870f:	0f 83 c3 00 00 00    	jae    7c87d8 <pre_step3d_mod_mp_pre_step3d_tile_+0xf1d8>
  7c8715:	4c 8b 9d 10 fc ff ff 	mov    r11,QWORD PTR [rbp-0x3f0]
  7c871c:	4c 8b 95 30 f8 ff ff 	mov    r10,QWORD PTR [rbp-0x7d0]
  7c8723:	4c 8b 8d a0 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x760]
  7c872a:	48 8b b5 68 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x798]
  7c8731:	4d 03 d8             	add    r11,r8
  7c8734:	4c 8b b5 58 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x6a8]
  7c873b:	4d 03 d0             	add    r10,r8
  7c873e:	4c 8b bd 60 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6a0]
  7c8745:	4d 03 c8             	add    r9,r8
  7c8748:	48 89 95 90 fa ff ff 	mov    QWORD PTR [rbp-0x570],rdx
  7c874f:	48 03 f2             	add    rsi,rdx
  7c8752:	4c 89 85 98 fa ff ff 	mov    QWORD PTR [rbp-0x568],r8
  7c8759:	4c 03 f7             	add    r14,rdi
  7c875c:	48 89 8d a0 fa ff ff 	mov    QWORD PTR [rbp-0x560],rcx
  7c8763:	4c 03 ff             	add    r15,rdi
  7c8766:	48 8b 95 e0 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x420]
  7c876d:	48 8b 8d 28 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x4d8]
  7c8774:	4c 8b 85 38 fc ff ff 	mov    r8,QWORD PTR [rbp-0x3c8]
  7c877b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  7c8780:	c4 c1 7b 10 14 d1    	vmovsd xmm2,QWORD PTR [r9+rdx*8]
  7c8786:	c4 81 7b 10 4c 35 00 	vmovsd xmm1,QWORD PTR [r13+r14*1+0x0]
  7c878d:	c4 41 7b 59 0c 34    	vmulsd xmm9,xmm0,QWORD PTR [r12+rsi*1]
  7c8793:	4c 03 e1             	add    r12,rcx
  7c8796:	c4 c1 6b 5c 74 d3 f8 	vsubsd xmm6,xmm2,QWORD PTR [r11+rdx*8-0x8]
  7c879d:	c4 81 73 58 7c 3d 00 	vaddsd xmm7,xmm1,QWORD PTR [r13+r15*1+0x0]
  7c87a4:	c5 53 59 c6          	vmulsd xmm8,xmm5,xmm6
  7c87a8:	4d 03 e8             	add    r13,r8
  7c87ab:	c4 41 43 5c d8       	vsubsd xmm11,xmm7,xmm8
  7c87b0:	c4 41 33 59 e3       	vmulsd xmm12,xmm9,xmm11
  7c87b5:	c4 41 7b 11 24 d2    	vmovsd QWORD PTR [r10+rdx*8],xmm12
  7c87bb:	48 ff c2             	inc    rdx
  7c87be:	48 3b d0             	cmp    rdx,rax
  7c87c1:	72 bd                	jb     7c8780 <pre_step3d_mod_mp_pre_step3d_tile_+0xf180>
  7c87c3:	48 8b 95 90 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x570]
  7c87ca:	4c 8b 85 98 fa ff ff 	mov    r8,QWORD PTR [rbp-0x568]
  7c87d1:	48 8b 8d a0 fa ff ff 	mov    rcx,QWORD PTR [rbp-0x560]
  7c87d8:	48 ff c1             	inc    rcx
  7c87db:	4c 03 85 a0 fb ff ff 	add    r8,QWORD PTR [rbp-0x460]
  7c87e2:	48 03 95 38 fb ff ff 	add    rdx,QWORD PTR [rbp-0x4c8]
  7c87e9:	48 03 bd 20 fb ff ff 	add    rdi,QWORD PTR [rbp-0x4e0]
  7c87f0:	48 3b 8d 90 fb ff ff 	cmp    rcx,QWORD PTR [rbp-0x470]
  7c87f7:	0f 82 ca fc ff ff    	jb     7c84c7 <pre_step3d_mod_mp_pre_step3d_tile_+0xeec7>
  7c87fd:	4c 8b ad 40 fc ff ff 	mov    r13,QWORD PTR [rbp-0x3c0]
  7c8804:	4c 8b b5 30 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x7d0]
  7c880b:	4c 8b a5 a0 fb ff ff 	mov    r12,QWORD PTR [rbp-0x460]
  7c8812:	4c 8b bd e0 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x820]
  7c8819:	33 c9                	xor    ecx,ecx
  7c881b:	48 83 bd d0 f7 ff ff 	cmp    QWORD PTR [rbp-0x830],0x0
  7c8822:	00 
  7c8823:	7e 4b                	jle    7c8870 <pre_step3d_mod_mp_pre_step3d_tile_+0xf270>
  7c8825:	bf 01 00 00 00       	mov    edi,0x1
  7c882a:	33 d2                	xor    edx,edx
  7c882c:	48 83 bd e8 f7 ff ff 	cmp    QWORD PTR [rbp-0x818],0x0
  7c8833:	00 
  7c8834:	74 24                	je     7c885a <pre_step3d_mod_mp_pre_step3d_tile_+0xf25a>
  7c8836:	48 8b bd e8 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x818]
  7c883d:	4c 8b 85 a0 f7 ff ff 	mov    r8,QWORD PTR [rbp-0x860]
  7c8844:	41 0b 0c d0          	or     ecx,DWORD PTR [r8+rdx*8]
  7c8848:	41 0b 4c d0 04       	or     ecx,DWORD PTR [r8+rdx*8+0x4]
  7c884d:	48 ff c2             	inc    rdx
  7c8850:	48 3b d7             	cmp    rdx,rdi
  7c8853:	72 ef                	jb     7c8844 <pre_step3d_mod_mp_pre_step3d_tile_+0xf244>
  7c8855:	48 8d 7c 12 01       	lea    rdi,[rdx+rdx*1+0x1]
  7c885a:	48 ff cf             	dec    rdi
  7c885d:	48 3b bd d0 f7 ff ff 	cmp    rdi,QWORD PTR [rbp-0x830]
  7c8864:	73 0a                	jae    7c8870 <pre_step3d_mod_mp_pre_step3d_tile_+0xf270>
  7c8866:	48 8b 95 a0 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x860]
  7c886d:	0b 0c ba             	or     ecx,DWORD PTR [rdx+rdi*4]
  7c8870:	48 8b 95 c8 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x838]
  7c8877:	48 8b bd 08 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x7f8]
  7c887e:	f6 44 ba fc 01       	test   BYTE PTR [rdx+rdi*4-0x4],0x1
  7c8883:	0f 84 52 03 00 00    	je     7c8bdb <pre_step3d_mod_mp_pre_step3d_tile_+0xf5db>
  7c8889:	f6 c1 01             	test   cl,0x1
  7c888c:	0f 84 49 03 00 00    	je     7c8bdb <pre_step3d_mod_mp_pre_step3d_tile_+0xf5db>
  7c8892:	48 8b 95 70 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x990]
  7c8899:	48 89 f9             	mov    rcx,rdi
  7c889c:	44 8b 44 8a fc       	mov    r8d,DWORD PTR [rdx+rcx*4-0x4]
  7c88a1:	45 85 c0             	test   r8d,r8d
  7c88a4:	0f 8e 31 03 00 00    	jle    7c8bdb <pre_step3d_mod_mp_pre_step3d_tile_+0xf5db>
  7c88aa:	48 8b 95 a0 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x860]
  7c88b1:	48 8b 8d 80 f7 ff ff 	mov    rcx,QWORD PTR [rbp-0x880]
  7c88b8:	8b 3c 8a             	mov    edi,DWORD PTR [rdx+rcx*4]
  7c88bb:	48 ff c1             	inc    rcx
  7c88be:	48 89 8d 80 f7 ff ff 	mov    QWORD PTR [rbp-0x880],rcx
  7c88c5:	f7 c7 01 00 00 00    	test   edi,0x1
  7c88cb:	75 16                	jne    7c88e3 <pre_step3d_mod_mp_pre_step3d_tile_+0xf2e3>
  7c88cd:	48 8b 95 18 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x7e8]
  7c88d4:	48 8b 8d 48 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x4b8]
  7c88db:	48 03 ca             	add    rcx,rdx
  7c88de:	e9 10 03 00 00       	jmp    7c8bf3 <pre_step3d_mod_mp_pre_step3d_tile_+0xf5f3>
  7c88e3:	48 8b 8d 18 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x7e8]
  7c88ea:	33 ff                	xor    edi,edi
  7c88ec:	4c 8b 8d 48 fb ff ff 	mov    r9,QWORD PTR [rbp-0x4b8]
  7c88f3:	48 8b 95 a8 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xb58]
  7c88fa:	48 8b b5 68 f5 ff ff 	mov    rsi,QWORD PTR [rbp-0xa98]
  7c8901:	4d 63 c0             	movsxd r8,r8d
  7c8904:	49 03 c9             	add    rcx,r9
  7c8907:	4c 8d b5 98 f4 ff ff 	lea    r14,[rbp-0xb68]
  7c890e:	4d 89 06             	mov    QWORD PTR [r14],r8
  7c8911:	4c 8d 84 16 60 fc ff 	lea    r8,[rsi+rdx*1-0x3a0]
  7c8918:	ff 
  7c8919:	4d 8b 08             	mov    r9,QWORD PTR [r8]
  7c891c:	4d 8b 50 08          	mov    r10,QWORD PTR [r8+0x8]
  7c8920:	4d 0f af d1          	imul   r10,r9
  7c8924:	4d 8b 40 c8          	mov    r8,QWORD PTR [r8-0x38]
  7c8928:	4c 8d ac 16 20 fc ff 	lea    r13,[rsi+rdx*1-0x3e0]
  7c892f:	ff 
  7c8930:	4d 8b 5d 00          	mov    r11,QWORD PTR [r13+0x0]
  7c8934:	4d 2b c2             	sub    r8,r10
  7c8937:	4d 8b 55 f8          	mov    r10,QWORD PTR [r13-0x8]
  7c893b:	4d 0f af da          	imul   r11,r10
  7c893f:	4c 8d bd e8 f1 ff ff 	lea    r15,[rbp-0xe18]
  7c8946:	49 89 3f             	mov    QWORD PTR [r15],rdi
  7c8949:	49 8b 55 c0          	mov    rdx,QWORD PTR [r13-0x40]
  7c894d:	48 89 85 48 fc ff ff 	mov    QWORD PTR [rbp-0x3b8],rax
  7c8954:	49 2b d3             	sub    rdx,r11
  7c8957:	48 89 8d 48 f7 ff ff 	mov    QWORD PTR [rbp-0x8b8],rcx
  7c895e:	49 8b 06             	mov    rax,QWORD PTR [r14]
  7c8961:	48 89 fe             	mov    rsi,rdi
  7c8964:	4d 8b 1f             	mov    r11,QWORD PTR [r15]
  7c8967:	49 03 f2             	add    rsi,r10
  7c896a:	49 03 f9             	add    rdi,r9
  7c896d:	49 ff c3             	inc    r11
  7c8970:	8b 0c 16             	mov    ecx,DWORD PTR [rsi+rdx*1]
  7c8973:	46 8b 2c 07          	mov    r13d,DWORD PTR [rdi+r8*1]
  7c8977:	3b 8d 00 fc ff ff    	cmp    ecx,DWORD PTR [rbp-0x400]
  7c897d:	0f 8c 2a 02 00 00    	jl     7c8bad <pre_step3d_mod_mp_pre_step3d_tile_+0xf5ad>
  7c8983:	3b 8d 98 fb ff ff    	cmp    ecx,DWORD PTR [rbp-0x468]
  7c8989:	0f 8f 1e 02 00 00    	jg     7c8bad <pre_step3d_mod_mp_pre_step3d_tile_+0xf5ad>
  7c898f:	44 3b ad 88 f7 ff ff 	cmp    r13d,DWORD PTR [rbp-0x878]
  7c8996:	0f 8c 11 02 00 00    	jl     7c8bad <pre_step3d_mod_mp_pre_step3d_tile_+0xf5ad>
  7c899c:	44 3b ad 98 f7 ff ff 	cmp    r13d,DWORD PTR [rbp-0x868]
  7c89a3:	0f 8f 04 02 00 00    	jg     7c8bad <pre_step3d_mod_mp_pre_step3d_tile_+0xf5ad>
  7c89a9:	4c 8b b5 68 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xa98]
  7c89b0:	4c 8b bd a8 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb58]
  7c89b7:	4d 63 ed             	movsxd r13,r13d
  7c89ba:	4c 89 ad c8 f4 ff ff 	mov    QWORD PTR [rbp-0xb38],r13
  7c89c1:	4f 8b ac 3e 40 fe ff 	mov    r13,QWORD PTR [r14+r15*1-0x1c0]
  7c89c8:	ff 
  7c89c9:	4c 89 ad c0 f4 ff ff 	mov    QWORD PTR [rbp-0xb40],r13
  7c89d0:	4f 8b ac 3e 58 fe ff 	mov    r13,QWORD PTR [r14+r15*1-0x1a8]
  7c89d7:	ff 
  7c89d8:	4c 89 ad b0 f4 ff ff 	mov    QWORD PTR [rbp-0xb50],r13
  7c89df:	4f 8b ac 3e 70 fe ff 	mov    r13,QWORD PTR [r14+r15*1-0x190]
  7c89e6:	ff 
  7c89e7:	4c 89 ad b8 f4 ff ff 	mov    QWORD PTR [rbp-0xb48],r13
  7c89ee:	4f 8b ac 3e b0 fc ff 	mov    r13,QWORD PTR [r14+r15*1-0x350]
  7c89f5:	ff 
  7c89f6:	49 f7 dd             	neg    r13
  7c89f9:	4d 03 eb             	add    r13,r11
  7c89fc:	4f 0f af ac 3e a8 fc 	imul   r13,QWORD PTR [r14+r15*1-0x358]
  7c8a03:	ff ff 
  7c8a05:	4f 8b b4 3e 70 fc ff 	mov    r14,QWORD PTR [r14+r15*1-0x390]
  7c8a0c:	ff 
  7c8a0d:	48 63 c9             	movsxd rcx,ecx
  7c8a10:	c4 01 7b 2c 3c 2e    	vcvttsd2si r15d,QWORD PTR [r14+r13*1]
  7c8a16:	4c 8b ad c8 f4 ff ff 	mov    r13,QWORD PTR [rbp-0xb38]
  7c8a1d:	45 85 ff             	test   r15d,r15d
  7c8a20:	0f 85 c6 00 00 00    	jne    7c8aec <pre_step3d_mod_mp_pre_step3d_tile_+0xf4ec>
  7c8a26:	48 89 95 a0 f4 ff ff 	mov    QWORD PTR [rbp-0xb60],rdx
  7c8a2d:	48 89 85 98 f4 ff ff 	mov    QWORD PTR [rbp-0xb68],rax
  7c8a34:	48 8b 95 30 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x4d0]
  7c8a3b:	48 8b 85 40 fb ff ff 	mov    rax,QWORD PTR [rbp-0x4c0]
  7c8a42:	48 0f af d1          	imul   rdx,rcx
  7c8a46:	49 0f af c5          	imul   rax,r13
  7c8a4a:	4d 0f af ec          	imul   r13,r12
  7c8a4e:	4c 8b bd a8 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb58]
  7c8a55:	48 03 d0             	add    rdx,rax
  7c8a58:	4c 8b b5 88 f4 ff ff 	mov    r14,QWORD PTR [rbp-0xb78]
  7c8a5f:	49 8d 4c cd 00       	lea    rcx,[r13+rcx*8+0x0]
  7c8a64:	4c 8b ad 68 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xa98]
  7c8a6b:	c4 a1 7b 10 0c 32    	vmovsd xmm1,QWORD PTR [rdx+r14*1]
  7c8a71:	4b 8b 84 3d 60 fe ff 	mov    rax,QWORD PTR [r13+r15*1-0x1a0]
  7c8a78:	ff 
  7c8a79:	48 f7 d8             	neg    rax
  7c8a7c:	4b 8b 94 3d 78 fe ff 	mov    rdx,QWORD PTR [r13+r15*1-0x188]
  7c8a83:	ff 
  7c8a84:	48 03 85 90 f4 ff ff 	add    rax,QWORD PTR [rbp-0xb70]
  7c8a8b:	48 f7 da             	neg    rdx
  7c8a8e:	48 03 95 80 f7 ff ff 	add    rdx,QWORD PTR [rbp-0x880]
  7c8a95:	48 0f af 85 b0 f4 ff 	imul   rax,QWORD PTR [rbp-0xb50]
  7c8a9c:	ff 
  7c8a9d:	48 0f af 95 b8 f4 ff 	imul   rdx,QWORD PTR [rbp-0xb48]
  7c8aa4:	ff 
  7c8aa5:	4f 8b b4 3d 48 fe ff 	mov    r14,QWORD PTR [r13+r15*1-0x1b8]
  7c8aac:	ff 
  7c8aad:	49 f7 de             	neg    r14
  7c8ab0:	4d 03 f3             	add    r14,r11
  7c8ab3:	4c 0f af b5 c0 f4 ff 	imul   r14,QWORD PTR [rbp-0xb40]
  7c8aba:	ff 
  7c8abb:	4b 03 84 3d 08 fe ff 	add    rax,QWORD PTR [r13+r15*1-0x1f8]
  7c8ac2:	ff 
  7c8ac3:	48 03 d0             	add    rdx,rax
  7c8ac6:	4c 8b ad 70 f4 ff ff 	mov    r13,QWORD PTR [rbp-0xb90]
  7c8acd:	48 8b 85 98 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb68]
  7c8ad4:	c4 a1 73 59 14 32    	vmulsd xmm2,xmm1,QWORD PTR [rdx+r14*1]
  7c8ada:	c4 a1 7b 11 14 29    	vmovsd QWORD PTR [rcx+r13*1],xmm2
  7c8ae0:	48 8b 95 a0 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xb60]
  7c8ae7:	e9 c1 00 00 00       	jmp    7c8bad <pre_step3d_mod_mp_pre_step3d_tile_+0xf5ad>
  7c8aec:	48 89 95 a0 f4 ff ff 	mov    QWORD PTR [rbp-0xb60],rdx
  7c8af3:	48 89 85 98 f4 ff ff 	mov    QWORD PTR [rbp-0xb68],rax
  7c8afa:	48 8b 95 28 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x4d8]
  7c8b01:	48 8b 85 38 fb ff ff 	mov    rax,QWORD PTR [rbp-0x4c8]
  7c8b08:	48 0f af d1          	imul   rdx,rcx
  7c8b0c:	49 0f af c5          	imul   rax,r13
  7c8b10:	4d 0f af ec          	imul   r13,r12
  7c8b14:	4c 8b bd a8 f4 ff ff 	mov    r15,QWORD PTR [rbp-0xb58]
  7c8b1b:	48 03 d0             	add    rdx,rax
  7c8b1e:	4c 8b b5 80 f4 ff ff 	mov    r14,QWORD PTR [rbp-0xb80]
  7c8b25:	49 8d 4c cd 00       	lea    rcx,[r13+rcx*8+0x0]
  7c8b2a:	4c 8b ad 68 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xa98]
  7c8b31:	c4 a1 7b 10 0c 32    	vmovsd xmm1,QWORD PTR [rdx+r14*1]
  7c8b37:	4b 8b 84 3d 60 fe ff 	mov    rax,QWORD PTR [r13+r15*1-0x1a0]
  7c8b3e:	ff 
  7c8b3f:	48 f7 d8             	neg    rax
  7c8b42:	4b 8b 94 3d 78 fe ff 	mov    rdx,QWORD PTR [r13+r15*1-0x188]
  7c8b49:	ff 
  7c8b4a:	48 03 85 90 f4 ff ff 	add    rax,QWORD PTR [rbp-0xb70]
  7c8b51:	48 f7 da             	neg    rdx
  7c8b54:	48 03 95 80 f7 ff ff 	add    rdx,QWORD PTR [rbp-0x880]
  7c8b5b:	48 0f af 85 b0 f4 ff 	imul   rax,QWORD PTR [rbp-0xb50]
  7c8b62:	ff 
  7c8b63:	48 0f af 95 b8 f4 ff 	imul   rdx,QWORD PTR [rbp-0xb48]
  7c8b6a:	ff 
  7c8b6b:	4f 8b b4 3d 48 fe ff 	mov    r14,QWORD PTR [r13+r15*1-0x1b8]
  7c8b72:	ff 
  7c8b73:	49 f7 de             	neg    r14
  7c8b76:	4d 03 f3             	add    r14,r11
  7c8b79:	4c 0f af b5 c0 f4 ff 	imul   r14,QWORD PTR [rbp-0xb40]
  7c8b80:	ff 
  7c8b81:	4b 03 84 3d 08 fe ff 	add    rax,QWORD PTR [r13+r15*1-0x1f8]
  7c8b88:	ff 
  7c8b89:	48 03 d0             	add    rdx,rax
  7c8b8c:	4c 8b ad 78 f4 ff ff 	mov    r13,QWORD PTR [rbp-0xb88]
  7c8b93:	48 8b 85 98 f4 ff ff 	mov    rax,QWORD PTR [rbp-0xb68]
  7c8b9a:	c4 a1 73 59 14 32    	vmulsd xmm2,xmm1,QWORD PTR [rdx+r14*1]
  7c8ba0:	c4 a1 7b 11 14 29    	vmovsd QWORD PTR [rcx+r13*1],xmm2
  7c8ba6:	48 8b 95 a0 f4 ff ff 	mov    rdx,QWORD PTR [rbp-0xb60]
  7c8bad:	4c 3b d8             	cmp    r11,rax
  7c8bb0:	0f 82 b1 fd ff ff    	jb     7c8967 <pre_step3d_mod_mp_pre_step3d_tile_+0xf367>
  7c8bb6:	48 8b 8d 48 f7 ff ff 	mov    rcx,QWORD PTR [rbp-0x8b8]
  7c8bbd:	4c 8b ad 40 fc ff ff 	mov    r13,QWORD PTR [rbp-0x3c0]
  7c8bc4:	4c 8b b5 30 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x7d0]
  7c8bcb:	48 8b 85 48 fc ff ff 	mov    rax,QWORD PTR [rbp-0x3b8]
  7c8bd2:	4c 8b bd e0 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x820]
  7c8bd9:	eb 18                	jmp    7c8bf3 <pre_step3d_mod_mp_pre_step3d_tile_+0xf5f3>
  7c8bdb:	48 8b 95 18 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x7e8]
  7c8be2:	48 8b 8d 48 fb ff ff 	mov    rcx,QWORD PTR [rbp-0x4b8]
  7c8be9:	48 ff 85 80 f7 ff ff 	inc    QWORD PTR [rbp-0x880]
  7c8bf0:	48 03 ca             	add    rcx,rdx
  7c8bf3:	4c 8b 95 08 f8 ff ff 	mov    r10,QWORD PTR [rbp-0x7f8]
  7c8bfa:	48 8b bd c0 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x840]
  7c8c01:	4c 8b 8d b8 f7 ff ff 	mov    r9,QWORD PTR [rbp-0x848]
  7c8c08:	48 8b 95 b0 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x850]
  7c8c0f:	46 8b 44 97 fc       	mov    r8d,DWORD PTR [rdi+r10*4-0x4]
  7c8c14:	c4 a1 7b 10 4c d2 f8 	vmovsd xmm1,QWORD PTR [rdx+r10*8-0x8]
  7c8c1b:	47 3b 44 91 fc       	cmp    r8d,DWORD PTR [r9+r10*4-0x4]
  7c8c20:	75 13                	jne    7c8c35 <pre_step3d_mod_mp_pre_step3d_tile_+0xf635>
  7c8c22:	c5 7b 59 d9          	vmulsd xmm11,xmm0,xmm1
  7c8c26:	c5 7b 10 25 52 35 08 	vmovsd xmm12,QWORD PTR [rip+0x83552]        # 84c180 <__STRLITPACK_0.112+0x70>
  7c8c2d:	00 
  7c8c2e:	c4 41 31 57 c9       	vxorpd xmm9,xmm9,xmm9
  7c8c33:	eb 14                	jmp    7c8c49 <pre_step3d_mod_mp_pre_step3d_tile_+0xf649>
  7c8c35:	c5 2b 59 d9          	vmulsd xmm11,xmm10,xmm1
  7c8c39:	c5 7b 10 25 87 3d 08 	vmovsd xmm12,QWORD PTR [rip+0x83d87]        # 84c9c8 <__STRLITPACK_0.112+0x8b8>
  7c8c40:	00 
  7c8c41:	c5 7b 10 0d 87 3d 08 	vmovsd xmm9,QWORD PTR [rip+0x83d87]        # 84c9d0 <__STRLITPACK_0.112+0x8c0>
  7c8c48:	00 
  7c8c49:	48 83 bd 30 fc ff ff 	cmp    QWORD PTR [rbp-0x3d0],0x8
  7c8c50:	08 
  7c8c51:	0f 85 23 04 00 00    	jne    7c907a <pre_step3d_mod_mp_pre_step3d_tile_+0xfa7a>
  7c8c57:	48 83 bd 38 fc ff ff 	cmp    QWORD PTR [rbp-0x3c8],0x8
  7c8c5e:	08 
  7c8c5f:	0f 85 a7 03 00 00    	jne    7c900c <pre_step3d_mod_mp_pre_step3d_tile_+0xfa0c>
  7c8c65:	48 89 85 48 fc ff ff 	mov    QWORD PTR [rbp-0x3b8],rax
  7c8c6c:	48 8b 85 48 fb ff ff 	mov    rax,QWORD PTR [rbp-0x4b8]
  7c8c73:	48 8b b5 f0 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x810]
  7c8c7a:	48 8b bd f8 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x808]
  7c8c81:	8b 95 a8 f7 ff ff    	mov    edx,DWORD PTR [rbp-0x858]
  7c8c87:	48 83 bd 28 fc ff ff 	cmp    QWORD PTR [rbp-0x3d8],0x8
  7c8c8e:	08 
  7c8c8f:	0f 85 26 03 00 00    	jne    7c8fbb <pre_step3d_mod_mp_pre_step3d_tile_+0xf9bb>
  7c8c95:	48 83 bd 20 fc ff ff 	cmp    QWORD PTR [rbp-0x3e0],0x8
  7c8c9c:	08 
  7c8c9d:	0f 85 18 03 00 00    	jne    7c8fbb <pre_step3d_mod_mp_pre_step3d_tile_+0xf9bb>
  7c8ca3:	45 33 e4             	xor    r12d,r12d
  7c8ca6:	45 33 c9             	xor    r9d,r9d
  7c8ca9:	4c 8b 95 c0 f1 ff ff 	mov    r10,QWORD PTR [rbp-0xe40]
  7c8cb0:	45 33 db             	xor    r11d,r11d
  7c8cb3:	4c 8b ad c8 f1 ff ff 	mov    r13,QWORD PTR [rbp-0xe38]
  7c8cba:	4c 8b 85 d0 f1 ff ff 	mov    r8,QWORD PTR [rbp-0xe30]
  7c8cc1:	3b 95 88 f7 ff ff    	cmp    edx,DWORD PTR [rbp-0x878]
  7c8cc7:	0f 8c b6 02 00 00    	jl     7c8f83 <pre_step3d_mod_mp_pre_step3d_tile_+0xf983>
  7c8ccd:	89 95 a8 f7 ff ff    	mov    DWORD PTR [rbp-0x858],edx
  7c8cd3:	4c 8d 3c 07          	lea    r15,[rdi+rax*1]
  7c8cd7:	c4 c2 7d 19 dc       	vbroadcastsd ymm3,xmm12
  7c8cdc:	4c 8d 34 06          	lea    r14,[rsi+rax*1]
  7c8ce0:	c4 c2 7d 19 c9       	vbroadcastsd ymm1,xmm9
  7c8ce5:	c4 c2 7d 19 d3       	vbroadcastsd ymm2,xmm11
  7c8cea:	48 03 85 b8 f6 ff ff 	add    rax,QWORD PTR [rbp-0x948]
  7c8cf1:	48 8b 95 48 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x3b8]
  7c8cf8:	48 89 85 48 fb ff ff 	mov    QWORD PTR [rbp-0x4b8],rax
  7c8cff:	4c 89 b5 90 f9 ff ff 	mov    QWORD PTR [rbp-0x670],r14
  7c8d06:	4c 89 bd 98 f9 ff ff 	mov    QWORD PTR [rbp-0x668],r15
  7c8d0d:	48 89 8d 48 f7 ff ff 	mov    QWORD PTR [rbp-0x8b8],rcx
  7c8d14:	8b 85 f8 fb ff ff    	mov    eax,DWORD PTR [rbp-0x408]
  7c8d1a:	3b 85 00 fc ff ff    	cmp    eax,DWORD PTR [rbp-0x400]
  7c8d20:	0f 8c 08 02 00 00    	jl     7c8f2e <pre_step3d_mod_mp_pre_step3d_tile_+0xf92e>
  7c8d26:	48 83 fa 04          	cmp    rdx,0x4
  7c8d2a:	0f 8c b8 18 00 00    	jl     7ca5e8 <pre_step3d_mod_mp_pre_step3d_tile_+0x10fe8>
  7c8d30:	48 8b 8d 30 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x7d0]
  7c8d37:	33 ff                	xor    edi,edi
  7c8d39:	4c 8b bd 98 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x768]
  7c8d40:	48 8b b5 a8 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x758]
  7c8d47:	48 8b 85 40 fc ff ff 	mov    rax,QWORD PTR [rbp-0x3c0]
  7c8d4e:	4e 8d 34 09          	lea    r14,[rcx+r9*1]
  7c8d52:	4c 89 b5 c8 f9 ff ff 	mov    QWORD PTR [rbp-0x638],r14
  7c8d59:	4b 8d 0c 0f          	lea    rcx,[r15+r9*1]
  7c8d5d:	4c 8b bd 98 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x668]
  7c8d64:	49 03 f1             	add    rsi,r9
  7c8d67:	4c 8b b5 90 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x770]
  7c8d6e:	4c 89 9d a8 fa ff ff 	mov    QWORD PTR [rbp-0x558],r11
  7c8d75:	4c 89 8d b0 fa ff ff 	mov    QWORD PTR [rbp-0x550],r9
  7c8d7c:	4d 03 fb             	add    r15,r11
  7c8d7f:	4c 89 bd b0 f9 ff ff 	mov    QWORD PTR [rbp-0x650],r15
  7c8d86:	4d 03 f1             	add    r14,r9
  7c8d89:	4c 8b bd 48 fb ff ff 	mov    r15,QWORD PTR [rbp-0x4b8]
  7c8d90:	4c 89 a5 b8 fa ff ff 	mov    QWORD PTR [rbp-0x548],r12
  7c8d97:	48 89 95 48 fc ff ff 	mov    QWORD PTR [rbp-0x3b8],rdx
  7c8d9e:	4c 8b a5 c8 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x638]
  7c8da5:	4d 03 fb             	add    r15,r11
  7c8da8:	4c 89 bd a8 f9 ff ff 	mov    QWORD PTR [rbp-0x658],r15
  7c8daf:	4c 8b bd 90 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x670]
  7c8db6:	4c 8b 8d a8 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x658]
  7c8dbd:	4d 03 fb             	add    r15,r11
  7c8dc0:	4c 89 bd a0 f9 ff ff 	mov    QWORD PTR [rbp-0x660],r15
  7c8dc7:	49 89 c7             	mov    r15,rax
  7c8dca:	48 8b 95 a0 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x660]
  7c8dd1:	4c 8b 9d b0 f9 ff ff 	mov    r11,QWORD PTR [rbp-0x650]
  7c8dd8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  7c8ddf:	00 
  7c8de0:	c4 41 7d 10 44 fe 08 	vmovupd ymm8,YMMWORD PTR [r14+rdi*8+0x8]
  7c8de7:	c4 c1 6d 59 7c fd 00 	vmulpd ymm7,ymm2,YMMWORD PTR [r13+rdi*8+0x0]
  7c8dee:	c4 c1 65 59 24 f9    	vmulpd ymm4,ymm3,YMMWORD PTR [r9+rdi*8]
  7c8df4:	c5 f5 59 2c fa       	vmulpd ymm5,ymm1,YMMWORD PTR [rdx+rdi*8]
  7c8df9:	c5 3d 5c 2c f9       	vsubpd ymm13,ymm8,YMMWORD PTR [rcx+rdi*8]
  7c8dfe:	c4 41 45 59 3c f8    	vmulpd ymm15,ymm7,YMMWORD PTR [r8+rdi*8]
  7c8e04:	c5 15 58 74 fe 08    	vaddpd ymm14,ymm13,YMMWORD PTR [rsi+rdi*8+0x8]
  7c8e0a:	c5 dd 58 f5          	vaddpd ymm6,ymm4,ymm5
  7c8e0e:	c4 c1 0d 5c 3c fc    	vsubpd ymm7,ymm14,YMMWORD PTR [r12+rdi*8]
  7c8e14:	c4 c1 4d 59 24 fa    	vmulpd ymm4,ymm6,YMMWORD PTR [r10+rdi*8]
  7c8e1a:	c5 85 59 ef          	vmulpd ymm5,ymm15,ymm7
  7c8e1e:	c5 dd 5c f5          	vsubpd ymm6,ymm4,ymm5
  7c8e22:	c4 c1 7d 11 34 fb    	vmovupd YMMWORD PTR [r11+rdi*8],ymm6
  7c8e28:	48 83 c7 04          	add    rdi,0x4
  7c8e2c:	49 3b ff             	cmp    rdi,r15
  7c8e2f:	72 af                	jb     7c8de0 <pre_step3d_mod_mp_pre_step3d_tile_+0xf7e0>
  7c8e31:	4c 8b 9d a8 fa ff ff 	mov    r11,QWORD PTR [rbp-0x558]
  7c8e38:	4c 8b 8d b0 fa ff ff 	mov    r9,QWORD PTR [rbp-0x550]
  7c8e3f:	4c 8b a5 b8 fa ff ff 	mov    r12,QWORD PTR [rbp-0x548]
  7c8e46:	48 8b 95 48 fc ff ff 	mov    rdx,QWORD PTR [rbp-0x3b8]
  7c8e4d:	48 3b c2             	cmp    rax,rdx
  7c8e50:	0f 83 d8 00 00 00    	jae    7c8f2e <pre_step3d_mod_mp_pre_step3d_tile_+0xf92e>
  7c8e56:	48 8b 8d 30 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x7d0]
  7c8e5d:	48 8b bd 98 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x768]
  7c8e64:	4c 8b bd 90 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x770]
  7c8e6b:	48 8b b5 a8 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x758]
  7c8e72:	4e 8d 34 09          	lea    r14,[rcx+r9*1]
  7c8e76:	4c 89 b5 b8 f9 ff ff 	mov    QWORD PTR [rbp-0x648],r14
  7c8e7d:	4a 8d 0c 0f          	lea    rcx,[rdi+r9*1]
  7c8e81:	48 8b bd 98 f9 ff ff 	mov    rdi,QWORD PTR [rbp-0x668]
  7c8e88:	4f 8d 34 0f          	lea    r14,[r15+r9*1]
  7c8e8c:	4c 8b bd 48 fb ff ff 	mov    r15,QWORD PTR [rbp-0x4b8]
  7c8e93:	49 03 f1             	add    rsi,r9
  7c8e96:	4c 89 b5 c0 f9 ff ff 	mov    QWORD PTR [rbp-0x640],r14
  7c8e9d:	4c 89 8d b0 fa ff ff 	mov    QWORD PTR [rbp-0x550],r9
  7c8ea4:	4e 8d 34 1f          	lea    r14,[rdi+r11*1]
  7c8ea8:	4c 89 a5 b8 fa ff ff 	mov    QWORD PTR [rbp-0x548],r12
  7c8eaf:	4b 8d 3c 1f          	lea    rdi,[r15+r11*1]
  7c8eb3:	4c 8b bd 90 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x670]
  7c8eba:	4c 8b a5 c0 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x640]
  7c8ec1:	4d 03 fb             	add    r15,r11
  7c8ec4:	4d 89 f9             	mov    r9,r15
  7c8ec7:	4c 8b bd b8 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x648]
  7c8ece:	66 90                	xchg   ax,ax
  7c8ed0:	c4 41 7b 10 44 c4 08 	vmovsd xmm8,QWORD PTR [r12+rax*8+0x8]
  7c8ed7:	c4 c1 23 59 7c c5 00 	vmulsd xmm7,xmm11,QWORD PTR [r13+rax*8+0x0]
  7c8ede:	c5 3b 5c 2c c1       	vsubsd xmm13,xmm8,QWORD PTR [rcx+rax*8]
  7c8ee3:	c5 9b 59 24 c7       	vmulsd xmm4,xmm12,QWORD PTR [rdi+rax*8]
  7c8ee8:	c4 c1 33 59 2c c1    	vmulsd xmm5,xmm9,QWORD PTR [r9+rax*8]
  7c8eee:	c4 41 43 59 3c c0    	vmulsd xmm15,xmm7,QWORD PTR [r8+rax*8]
  7c8ef4:	c5 13 58 74 c6 08    	vaddsd xmm14,xmm13,QWORD PTR [rsi+rax*8+0x8]
  7c8efa:	c5 db 58 f5          	vaddsd xmm6,xmm4,xmm5
  7c8efe:	c4 c1 0b 5c 3c c7    	vsubsd xmm7,xmm14,QWORD PTR [r15+rax*8]
  7c8f04:	c4 c1 4b 59 24 c2    	vmulsd xmm4,xmm6,QWORD PTR [r10+rax*8]
  7c8f0a:	c5 83 59 ef          	vmulsd xmm5,xmm15,xmm7
  7c8f0e:	c5 db 5c f5          	vsubsd xmm6,xmm4,xmm5
  7c8f12:	c4 c1 7b 11 34 c6    	vmovsd QWORD PTR [r14+rax*8],xmm6
  7c8f18:	48 ff c0             	inc    rax
  7c8f1b:	48 3b c2             	cmp    rax,rdx
  7c8f1e:	72 b0                	jb     7c8ed0 <pre_step3d_mod_mp_pre_step3d_tile_+0xf8d0>
  7c8f20:	4c 8b 8d b0 fa ff ff 	mov    r9,QWORD PTR [rbp-0x550]
  7c8f27:	4c 8b a5 b8 fa ff ff 	mov    r12,QWORD PTR [rbp-0x548]
  7c8f2e:	49 ff c4             	inc    r12
  7c8f31:	4c 03 8d a0 fb ff ff 	add    r9,QWORD PTR [rbp-0x460]
  7c8f38:	4c 03 95 18 fb ff ff 	add    r10,QWORD PTR [rbp-0x4e8]
  7c8f3f:	4c 03 9d 20 fb ff ff 	add    r11,QWORD PTR [rbp-0x4e0]
  7c8f46:	4c 03 ad 10 fb ff ff 	add    r13,QWORD PTR [rbp-0x4f0]
  7c8f4d:	4c 03 85 08 fb ff ff 	add    r8,QWORD PTR [rbp-0x4f8]
  7c8f54:	4c 3b a5 88 fb ff ff 	cmp    r12,QWORD PTR [rbp-0x478]
  7c8f5b:	0f 82 b3 fd ff ff    	jb     7c8d14 <pre_step3d_mod_mp_pre_step3d_tile_+0xf714>
  7c8f61:	48 89 95 48 fc ff ff 	mov    QWORD PTR [rbp-0x3b8],rdx
  7c8f68:	48 8b 8d 48 f7 ff ff 	mov    rcx,QWORD PTR [rbp-0x8b8]
  7c8f6f:	48 8b b5 f0 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x810]
  7c8f76:	48 8b bd f8 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x808]
  7c8f7d:	8b 95 a8 f7 ff ff    	mov    edx,DWORD PTR [rbp-0x858]
  7c8f83:	48 89 c8             	mov    rax,rcx
  7c8f86:	48 8b 8d 58 f7 ff ff 	mov    rcx,QWORD PTR [rbp-0x8a8]
  7c8f8d:	48 3b 8d 80 f7 ff ff 	cmp    rcx,QWORD PTR [rbp-0x880]
  7c8f94:	0f 87 f7 dc ff ff    	ja     7c6c91 <pre_step3d_mod_mp_pre_step3d_tile_+0xd691>
  7c8f9a:	48 8b 8d b0 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xa50]
  7c8fa1:	4c 8b 95 b8 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xa48]
  7c8fa8:	4c 8b a5 08 f8 ff ff 	mov    r12,QWORD PTR [rbp-0x7f8]
  7c8faf:	44 8b 85 88 f7 ff ff 	mov    r8d,DWORD PTR [rbp-0x878]
  7c8fb6:	e9 b1 05 00 00       	jmp    7c956c <pre_step3d_mod_mp_pre_step3d_tile_+0xff6c>
  7c8fbb:	c5 fd 10 05 fd 21 08 	vmovupd ymm0,YMMWORD PTR [rip+0x821fd]        # 84b1c0 <var$630.126.450+0x1220>
  7c8fc2:	00 
  7c8fc3:	c5 fb 10 1d b5 31 08 	vmovsd xmm3,QWORD PTR [rip+0x831b5]        # 84c180 <__STRLITPACK_0.112+0x70>
  7c8fca:	00 
  7c8fcb:	c5 fb 10 15 fd 39 08 	vmovsd xmm2,QWORD PTR [rip+0x839fd]        # 84c9d0 <__STRLITPACK_0.112+0x8c0>
  7c8fd2:	00 
  7c8fd3:	c5 fb 10 0d ed 39 08 	vmovsd xmm1,QWORD PTR [rip+0x839ed]        # 84c9c8 <__STRLITPACK_0.112+0x8b8>
  7c8fda:	00 
  7c8fdb:	c5 fb 10 35 d5 39 08 	vmovsd xmm6,QWORD PTR [rip+0x839d5]        # 84c9b8 <__STRLITPACK_0.112+0x8a8>
  7c8fe2:	00 
  7c8fe3:	c5 fd 10 25 15 14 08 	vmovupd ymm4,YMMWORD PTR [rip+0x81415]        # 84a400 <var$630.126.450+0x460>
  7c8fea:	00 
  7c8feb:	48 8b b5 80 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x880]
  7c8ff2:	4c 8b bd 50 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x8b0]
  7c8ff9:	48 8b bd 58 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x8a8]
  7c9000:	44 8b 85 88 f7 ff ff 	mov    r8d,DWORD PTR [rbp-0x878]
  7c9007:	e9 ce 00 00 00       	jmp    7c90da <pre_step3d_mod_mp_pre_step3d_tile_+0xfada>
  7c900c:	8b 95 a8 f7 ff ff    	mov    edx,DWORD PTR [rbp-0x858]
  7c9012:	3b 95 88 f7 ff ff    	cmp    edx,DWORD PTR [rbp-0x878]
  7c9018:	0f 8c d1 15 00 00    	jl     7ca5ef <pre_step3d_mod_mp_pre_step3d_tile_+0x10fef>
  7c901e:	48 89 85 48 fc ff ff 	mov    QWORD PTR [rbp-0x3b8],rax
  7c9025:	c5 fd 10 05 93 21 08 	vmovupd ymm0,YMMWORD PTR [rip+0x82193]        # 84b1c0 <var$630.126.450+0x1220>
  7c902c:	00 
  7c902d:	c5 fb 10 1d 4b 31 08 	vmovsd xmm3,QWORD PTR [rip+0x8314b]        # 84c180 <__STRLITPACK_0.112+0x70>
  7c9034:	00 
  7c9035:	c5 fb 10 15 93 39 08 	vmovsd xmm2,QWORD PTR [rip+0x83993]        # 84c9d0 <__STRLITPACK_0.112+0x8c0>
  7c903c:	00 
  7c903d:	c5 fb 10 0d 83 39 08 	vmovsd xmm1,QWORD PTR [rip+0x83983]        # 84c9c8 <__STRLITPACK_0.112+0x8b8>
  7c9044:	00 
  7c9045:	c5 fb 10 35 6b 39 08 	vmovsd xmm6,QWORD PTR [rip+0x8396b]        # 84c9b8 <__STRLITPACK_0.112+0x8a8>
  7c904c:	00 
  7c904d:	c5 fd 10 25 ab 13 08 	vmovupd ymm4,YMMWORD PTR [rip+0x813ab]        # 84a400 <var$630.126.450+0x460>
  7c9054:	00 
  7c9055:	48 8b 85 48 fb ff ff 	mov    rax,QWORD PTR [rbp-0x4b8]
  7c905c:	48 8b b5 80 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x880]
  7c9063:	4c 8b bd 50 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x8b0]
  7c906a:	48 8b bd 58 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x8a8]
  7c9071:	44 8b 85 88 f7 ff ff 	mov    r8d,DWORD PTR [rbp-0x878]
  7c9078:	eb 69                	jmp    7c90e3 <pre_step3d_mod_mp_pre_step3d_tile_+0xfae3>
  7c907a:	48 89 85 48 fc ff ff 	mov    QWORD PTR [rbp-0x3b8],rax
  7c9081:	c5 fd 10 05 37 21 08 	vmovupd ymm0,YMMWORD PTR [rip+0x82137]        # 84b1c0 <var$630.126.450+0x1220>
  7c9088:	00 
  7c9089:	c5 fb 10 1d ef 30 08 	vmovsd xmm3,QWORD PTR [rip+0x830ef]        # 84c180 <__STRLITPACK_0.112+0x70>
  7c9090:	00 
  7c9091:	c5 fb 10 15 37 39 08 	vmovsd xmm2,QWORD PTR [rip+0x83937]        # 84c9d0 <__STRLITPACK_0.112+0x8c0>
  7c9098:	00 
  7c9099:	c5 fb 10 0d 27 39 08 	vmovsd xmm1,QWORD PTR [rip+0x83927]        # 84c9c8 <__STRLITPACK_0.112+0x8b8>
  7c90a0:	00 
  7c90a1:	c5 fb 10 35 0f 39 08 	vmovsd xmm6,QWORD PTR [rip+0x8390f]        # 84c9b8 <__STRLITPACK_0.112+0x8a8>
  7c90a8:	00 
  7c90a9:	c5 fd 10 25 4f 13 08 	vmovupd ymm4,YMMWORD PTR [rip+0x8134f]        # 84a400 <var$630.126.450+0x460>
  7c90b0:	00 
  7c90b1:	48 8b 85 48 fb ff ff 	mov    rax,QWORD PTR [rbp-0x4b8]
  7c90b8:	48 8b b5 80 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x880]
  7c90bf:	4c 8b bd 50 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x8b0]
  7c90c6:	48 8b bd 58 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x8a8]
  7c90cd:	44 8b 85 88 f7 ff ff 	mov    r8d,DWORD PTR [rbp-0x878]
  7c90d4:	8b 95 a8 f7 ff ff    	mov    edx,DWORD PTR [rbp-0x858]
  7c90da:	41 3b d0             	cmp    edx,r8d
  7c90dd:	0f 8c 68 04 00 00    	jl     7c954b <pre_step3d_mod_mp_pre_step3d_tile_+0xff4b>
  7c90e3:	45 33 f6             	xor    r14d,r14d
  7c90e6:	4d 89 fc             	mov    r12,r15
  7c90e9:	4c 8b ad f0 f6 ff ff 	mov    r13,QWORD PTR [rbp-0x910]
  7c90f0:	45 33 db             	xor    r11d,r11d
  7c90f3:	4c 8b 8d f8 f6 ff ff 	mov    r9,QWORD PTR [rbp-0x908]
  7c90fa:	45 33 d2             	xor    r10d,r10d
  7c90fd:	c4 c1 7b 12 fc       	vmovddup xmm7,xmm12
  7c9102:	c4 41 7b 12 c1       	vmovddup xmm8,xmm9
  7c9107:	c4 c1 7b 12 eb       	vmovddup xmm5,xmm11
  7c910c:	4c 89 ad b8 fc ff ff 	mov    QWORD PTR [rbp-0x348],r13
  7c9113:	4c 89 b5 f0 fb ff ff 	mov    QWORD PTR [rbp-0x410],r14
  7c911a:	48 89 85 48 fb ff ff 	mov    QWORD PTR [rbp-0x4b8],rax
  7c9121:	48 89 8d 48 f7 ff ff 	mov    QWORD PTR [rbp-0x8b8],rcx
  7c9128:	48 89 b5 80 f7 ff ff 	mov    QWORD PTR [rbp-0x880],rsi
  7c912f:	48 89 bd 58 f7 ff ff 	mov    QWORD PTR [rbp-0x8a8],rdi
  7c9136:	44 89 85 88 f7 ff ff 	mov    DWORD PTR [rbp-0x878],r8d
  7c913d:	89 95 a8 f7 ff ff    	mov    DWORD PTR [rbp-0x858],edx
  7c9143:	8b 85 f8 fb ff ff    	mov    eax,DWORD PTR [rbp-0x408]
  7c9149:	3b 85 00 fc ff ff    	cmp    eax,DWORD PTR [rbp-0x400]
  7c914f:	0f 8c 7e 03 00 00    	jl     7c94d3 <pre_step3d_mod_mp_pre_step3d_tile_+0xfed3>
  7c9155:	48 83 bd 38 fc ff ff 	cmp    QWORD PTR [rbp-0x3c8],0x0
  7c915c:	00 
  7c915d:	0f 84 ce 14 00 00    	je     7ca631 <pre_step3d_mod_mp_pre_step3d_tile_+0x11031>
  7c9163:	48 83 bd 48 fc ff ff 	cmp    QWORD PTR [rbp-0x3b8],0x2
  7c916a:	02 
  7c916b:	0f 8c c0 14 00 00    	jl     7ca631 <pre_step3d_mod_mp_pre_step3d_tile_+0x11031>
  7c9171:	48 8b 85 10 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x7f0]
  7c9178:	48 8b 95 30 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x7d0]
  7c917f:	4c 8b b5 a8 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x758]
  7c9186:	4c 8b 85 58 f8 ff ff 	mov    r8,QWORD PTR [rbp-0x7a8]
  7c918d:	48 c1 e0 03          	shl    rax,0x3
  7c9191:	4c 8b bd 50 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x7b0]
  7c9198:	4a 8d 34 1a          	lea    rsi,[rdx+r11*1]
  7c919c:	48 8b 95 48 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x4b8]
  7c91a3:	48 f7 d8             	neg    rax
  7c91a6:	48 03 85 20 f8 ff ff 	add    rax,QWORD PTR [rbp-0x7e0]
  7c91ad:	4f 8d 2c 1e          	lea    r13,[r14+r11*1]
  7c91b1:	48 8b 8d 58 fc ff ff 	mov    rcx,QWORD PTR [rbp-0x3a8]
  7c91b8:	48 8b bd b0 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x750]
  7c91bf:	4c 89 ad e8 f9 ff ff 	mov    QWORD PTR [rbp-0x618],r13
  7c91c6:	4d 8d 2c 10          	lea    r13,[r8+rdx*1]
  7c91ca:	48 03 85 e8 f8 ff ff 	add    rax,QWORD PTR [rbp-0x718]
  7c91d1:	4d 8d 04 17          	lea    r8,[r15+rdx*1]
  7c91d5:	4c 8b bd e0 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x720]
  7c91dc:	4c 8d 34 17          	lea    r14,[rdi+rdx*1]
  7c91e0:	49 f7 df             	neg    r15
  7c91e3:	4d 03 ea             	add    r13,r10
  7c91e6:	48 89 8d e8 fb ff ff 	mov    QWORD PTR [rbp-0x418],rcx
  7c91ed:	33 c9                	xor    ecx,ecx
  7c91ef:	49 03 c7             	add    rax,r15
  7c91f2:	4d 03 c2             	add    r8,r10
  7c91f5:	48 89 b5 e0 fc ff ff 	mov    QWORD PTR [rbp-0x320],rsi
  7c91fc:	33 f6                	xor    esi,esi
  7c91fe:	4c 8b bd b8 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x748]
  7c9205:	33 ff                	xor    edi,edi
  7c9207:	33 d2                	xor    edx,edx
  7c9209:	4d 03 f2             	add    r14,r10
  7c920c:	4c 89 9d e0 f9 ff ff 	mov    QWORD PTR [rbp-0x620],r11
  7c9213:	4a 8d 04 f8          	lea    rax,[rax+r15*8]
  7c9217:	4c 89 85 d0 fc ff ff 	mov    QWORD PTR [rbp-0x330],r8
  7c921e:	4c 89 ad c8 fc ff ff 	mov    QWORD PTR [rbp-0x338],r13
  7c9225:	4c 89 95 c0 fa ff ff 	mov    QWORD PTR [rbp-0x540],r10
  7c922c:	4c 89 9d c8 fa ff ff 	mov    QWORD PTR [rbp-0x538],r11
  7c9233:	4c 89 b5 c0 fc ff ff 	mov    QWORD PTR [rbp-0x340],r14
  7c923a:	4c 8b ad e0 f9 ff ff 	mov    r13,QWORD PTR [rbp-0x620]
  7c9241:	49 89 d2             	mov    r10,rdx
  7c9244:	4c 8b 85 e8 f9 ff ff 	mov    r8,QWORD PTR [rbp-0x618]
  7c924b:	4c 8b 9d 38 fc ff ff 	mov    r11,QWORD PTR [rbp-0x3c8]
  7c9252:	4c 8b bd 30 fc ff ff 	mov    r15,QWORD PTR [rbp-0x3d0]
  7c9259:	4d 8d 34 34          	lea    r14,[r12+rsi*1]
  7c925d:	c4 41 7b 10 36       	vmovsd xmm14,QWORD PTR [r14]
  7c9262:	c4 01 09 16 2c 3e    	vmovhpd xmm13,xmm14,QWORD PTR [r14+r15*1]
  7c9268:	4a 8d 34 7e          	lea    rsi,[rsi+r15*2]
  7c926c:	4c 8b b5 c0 fc ff ff 	mov    r14,QWORD PTR [rbp-0x340]
  7c9273:	4f 8d 3c 16          	lea    r15,[r14+r10*1]
  7c9277:	4c 8b b5 c8 fc ff ff 	mov    r14,QWORD PTR [rbp-0x338]
  7c927e:	c4 41 7b 10 3f       	vmovsd xmm15,QWORD PTR [r15]
  7c9283:	c4 01 01 16 34 1f    	vmovhpd xmm14,xmm15,QWORD PTR [r15+r11*1]
  7c9289:	c4 41 41 59 fe       	vmulpd xmm15,xmm7,xmm14
  7c928e:	4f 8d 3c 16          	lea    r15,[r14+r10*1]
  7c9292:	c4 41 7b 10 37       	vmovsd xmm14,QWORD PTR [r15]
  7c9297:	4d 8d 34 39          	lea    r14,[r9+rdi*1]
  7c929b:	c4 01 09 16 34 1f    	vmovhpd xmm14,xmm14,QWORD PTR [r15+r11*1]
  7c92a1:	c4 41 39 59 f6       	vmulpd xmm14,xmm8,xmm14
  7c92a6:	c4 41 01 58 fe       	vaddpd xmm15,xmm15,xmm14
  7c92ab:	4c 8b bd 28 fc ff ff 	mov    r15,QWORD PTR [rbp-0x3d8]
  7c92b2:	c4 41 11 59 ff       	vmulpd xmm15,xmm13,xmm15
  7c92b7:	c4 41 7b 10 2e       	vmovsd xmm13,QWORD PTR [r14]
  7c92bc:	4a 8d 3c 7f          	lea    rdi,[rdi+r15*2]
  7c92c0:	c4 01 11 16 2c 3e    	vmovhpd xmm13,xmm13,QWORD PTR [r14+r15*1]
  7c92c6:	c4 41 51 59 f5       	vmulpd xmm14,xmm5,xmm13
  7c92cb:	4c 8b b5 b8 fc ff ff 	mov    r14,QWORD PTR [rbp-0x348]
  7c92d2:	4d 8d 3c 16          	lea    r15,[r14+rdx*1]
  7c92d6:	4c 8b b5 20 fc ff ff 	mov    r14,QWORD PTR [rbp-0x3e0]
  7c92dd:	c4 41 7b 10 2f       	vmovsd xmm13,QWORD PTR [r15]
  7c92e2:	c4 01 11 16 2c 37    	vmovhpd xmm13,xmm13,QWORD PTR [r15+r14*1]
  7c92e8:	4a 8d 14 72          	lea    rdx,[rdx+r14*2]
  7c92ec:	c4 41 09 59 ed       	vmulpd xmm13,xmm14,xmm13
  7c92f1:	c4 41 79 10 74 05 08 	vmovupd xmm14,XMMWORD PTR [r13+rax*1+0x8]
  7c92f8:	c4 41 09 5c 74 05 00 	vsubpd xmm14,xmm14,XMMWORD PTR [r13+rax*1+0x0]
  7c92ff:	c4 41 09 58 74 c8 08 	vaddpd xmm14,xmm14,XMMWORD PTR [r8+rcx*8+0x8]
  7c9306:	4c 8b bd e0 fc ff ff 	mov    r15,QWORD PTR [rbp-0x320]
  7c930d:	49 83 c5 10          	add    r13,0x10
  7c9311:	4c 8b b5 d0 fc ff ff 	mov    r14,QWORD PTR [rbp-0x330]
  7c9318:	c4 41 09 5c 34 cf    	vsubpd xmm14,xmm14,XMMWORD PTR [r15+rcx*8]
  7c931e:	c4 41 11 59 ee       	vmulpd xmm13,xmm13,xmm14
  7c9323:	c4 41 01 5c fd       	vsubpd xmm15,xmm15,xmm13
  7c9328:	48 83 c1 02          	add    rcx,0x2
  7c932c:	4f 8d 3c 32          	lea    r15,[r10+r14*1]
  7c9330:	c4 41 7b 11 3f       	vmovsd QWORD PTR [r15],xmm15
  7c9335:	4f 8d 14 5a          	lea    r10,[r10+r11*2]
  7c9339:	c4 01 79 17 3c 3b    	vmovhpd QWORD PTR [r11+r15*1],xmm15
  7c933f:	48 3b 8d 58 fc ff ff 	cmp    rcx,QWORD PTR [rbp-0x3a8]
  7c9346:	0f 82 06 ff ff ff    	jb     7c9252 <pre_step3d_mod_mp_pre_step3d_tile_+0xfc52>
  7c934c:	4c 8b 95 c0 fa ff ff 	mov    r10,QWORD PTR [rbp-0x540]
  7c9353:	4c 8b 9d c8 fa ff ff 	mov    r11,QWORD PTR [rbp-0x538]
  7c935a:	48 8b 85 e8 fb ff ff 	mov    rax,QWORD PTR [rbp-0x418]
  7c9361:	4c 8b ad 38 fc ff ff 	mov    r13,QWORD PTR [rbp-0x3c8]
  7c9368:	4c 8b 85 20 fc ff ff 	mov    r8,QWORD PTR [rbp-0x3e0]
  7c936f:	48 8b bd 28 fc ff ff 	mov    rdi,QWORD PTR [rbp-0x3d8]
  7c9376:	48 8b b5 30 fc ff ff 	mov    rsi,QWORD PTR [rbp-0x3d0]
  7c937d:	4c 0f af e8          	imul   r13,rax
  7c9381:	4c 0f af c0          	imul   r8,rax
  7c9385:	48 0f af f8          	imul   rdi,rax
  7c9389:	48 0f af f0          	imul   rsi,rax
  7c938d:	48 3b 85 48 fc ff ff 	cmp    rax,QWORD PTR [rbp-0x3b8]
  7c9394:	0f 83 39 01 00 00    	jae    7c94d3 <pre_step3d_mod_mp_pre_step3d_tile_+0xfed3>
  7c939a:	48 8b 95 30 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x7d0]
  7c93a1:	4c 8b b5 a8 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x758]
  7c93a8:	48 8b 85 90 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x770]
  7c93af:	4c 89 95 c0 fa ff ff 	mov    QWORD PTR [rbp-0x540],r10
  7c93b6:	4e 8d 3c 1a          	lea    r15,[rdx+r11*1]
  7c93ba:	4c 89 bd f8 f9 ff ff 	mov    QWORD PTR [rbp-0x608],r15
  7c93c1:	4b 8d 0c 1e          	lea    rcx,[r14+r11*1]
  7c93c5:	48 89 8d f0 f9 ff ff 	mov    QWORD PTR [rbp-0x610],rcx
  7c93cc:	4a 8d 0c 18          	lea    rcx,[rax+r11*1]
  7c93d0:	48 8b 95 b0 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x750]
  7c93d7:	48 8b 85 48 fb ff ff 	mov    rax,QWORD PTR [rbp-0x4b8]
  7c93de:	4c 8b bd 58 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x7a8]
  7c93e5:	4c 8b b5 98 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x768]
  7c93ec:	48 89 8d e8 fc ff ff 	mov    QWORD PTR [rbp-0x318],rcx
  7c93f3:	48 8d 0c 02          	lea    rcx,[rdx+rax*1]
  7c93f7:	4c 89 9d c8 fa ff ff 	mov    QWORD PTR [rbp-0x538],r11
  7c93fe:	49 8d 14 07          	lea    rdx,[r15+rax*1]
  7c9402:	4c 8b bd 50 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x7b0]
  7c9409:	4d 03 f3             	add    r14,r11
  7c940c:	4c 89 b5 d8 fc ff ff 	mov    QWORD PTR [rbp-0x328],r14
  7c9413:	49 03 ca             	add    rcx,r10
  7c9416:	4c 8b 9d f0 f9 ff ff 	mov    r11,QWORD PTR [rbp-0x610]
  7c941d:	49 03 d2             	add    rdx,r10
  7c9420:	4c 8b b5 e8 fb ff ff 	mov    r14,QWORD PTR [rbp-0x418]
  7c9427:	49 03 c7             	add    rax,r15
  7c942a:	49 03 c2             	add    rax,r10
  7c942d:	4c 8b 95 f8 f9 ff ff 	mov    r10,QWORD PTR [rbp-0x608]
  7c9434:	c4 41 1b 59 7c 0d 00 	vmulsd xmm15,xmm12,QWORD PTR [r13+rcx*1+0x0]
  7c943b:	c4 41 33 59 74 15 00 	vmulsd xmm14,xmm9,QWORD PTR [r13+rdx*1+0x0]
  7c9442:	4c 8b bd b8 fc ff ff 	mov    r15,QWORD PTR [rbp-0x348]
  7c9449:	c4 41 03 58 ee       	vaddsd xmm13,xmm15,xmm14
  7c944e:	c4 21 23 59 3c 0f    	vmulsd xmm15,xmm11,QWORD PTR [rdi+r9*1]
  7c9454:	c4 21 13 59 34 26    	vmulsd xmm14,xmm13,QWORD PTR [rsi+r12*1]
  7c945a:	c4 01 03 59 2c 38    	vmulsd xmm13,xmm15,QWORD PTR [r8+r15*1]
  7c9460:	4c 8b bd e8 fc ff ff 	mov    r15,QWORD PTR [rbp-0x318]
  7c9467:	48 03 b5 30 fc ff ff 	add    rsi,QWORD PTR [rbp-0x3d0]
  7c946e:	48 03 bd 28 fc ff ff 	add    rdi,QWORD PTR [rbp-0x3d8]
  7c9475:	c4 01 7b 10 7c f7 08 	vmovsd xmm15,QWORD PTR [r15+r14*8+0x8]
  7c947c:	4c 8b bd d8 fc ff ff 	mov    r15,QWORD PTR [rbp-0x328]
  7c9483:	4c 03 85 20 fc ff ff 	add    r8,QWORD PTR [rbp-0x3e0]
  7c948a:	c4 01 03 5c 3c f7    	vsubsd xmm15,xmm15,QWORD PTR [r15+r14*8]
  7c9490:	c4 01 03 58 7c f3 08 	vaddsd xmm15,xmm15,QWORD PTR [r11+r14*8+0x8]
  7c9497:	c4 01 03 5c 3c f2    	vsubsd xmm15,xmm15,QWORD PTR [r10+r14*8]
  7c949d:	49 ff c6             	inc    r14
  7c94a0:	c4 41 13 59 ef       	vmulsd xmm13,xmm13,xmm15
  7c94a5:	c4 41 0b 5c f5       	vsubsd xmm14,xmm14,xmm13
  7c94aa:	c4 41 7b 11 74 05 00 	vmovsd QWORD PTR [r13+rax*1+0x0],xmm14
  7c94b1:	4c 03 ad 38 fc ff ff 	add    r13,QWORD PTR [rbp-0x3c8]
  7c94b8:	4c 3b b5 48 fc ff ff 	cmp    r14,QWORD PTR [rbp-0x3b8]
  7c94bf:	0f 82 6f ff ff ff    	jb     7c9434 <pre_step3d_mod_mp_pre_step3d_tile_+0xfe34>
  7c94c5:	4c 8b 95 c0 fa ff ff 	mov    r10,QWORD PTR [rbp-0x540]
  7c94cc:	4c 8b 9d c8 fa ff ff 	mov    r11,QWORD PTR [rbp-0x538]
  7c94d3:	48 8b 85 b8 fc ff ff 	mov    rax,QWORD PTR [rbp-0x348]
  7c94da:	48 8b 95 f0 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x410]
  7c94e1:	48 ff c2             	inc    rdx
  7c94e4:	48 03 85 08 fb ff ff 	add    rax,QWORD PTR [rbp-0x4f8]
  7c94eb:	4c 03 9d a0 fb ff ff 	add    r11,QWORD PTR [rbp-0x460]
  7c94f2:	4c 03 a5 18 fb ff ff 	add    r12,QWORD PTR [rbp-0x4e8]
  7c94f9:	4c 03 95 20 fb ff ff 	add    r10,QWORD PTR [rbp-0x4e0]
  7c9500:	4c 03 8d 10 fb ff ff 	add    r9,QWORD PTR [rbp-0x4f0]
  7c9507:	48 89 85 b8 fc ff ff 	mov    QWORD PTR [rbp-0x348],rax
  7c950e:	48 89 95 f0 fb ff ff 	mov    QWORD PTR [rbp-0x410],rdx
  7c9515:	48 3b 95 88 fb ff ff 	cmp    rdx,QWORD PTR [rbp-0x478]
  7c951c:	0f 82 21 fc ff ff    	jb     7c9143 <pre_step3d_mod_mp_pre_step3d_tile_+0xfb43>
  7c9522:	48 8b 8d 48 f7 ff ff 	mov    rcx,QWORD PTR [rbp-0x8b8]
  7c9529:	48 8b b5 80 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x880]
  7c9530:	4c 8b bd 50 f7 ff ff 	mov    r15,QWORD PTR [rbp-0x8b0]
  7c9537:	48 8b bd 58 f7 ff ff 	mov    rdi,QWORD PTR [rbp-0x8a8]
  7c953e:	44 8b 85 88 f7 ff ff 	mov    r8d,DWORD PTR [rbp-0x878]
  7c9545:	8b 95 a8 f7 ff ff    	mov    edx,DWORD PTR [rbp-0x858]
  7c954b:	48 89 c8             	mov    rax,rcx
  7c954e:	48 3b f7             	cmp    rsi,rdi
  7c9551:	0f 82 d8 d6 ff ff    	jb     7c6c2f <pre_step3d_mod_mp_pre_step3d_tile_+0xd62f>
  7c9557:	48 8b 8d b0 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xa50]
  7c955e:	4c 8b 95 b8 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xa48]
  7c9565:	4c 8b a5 08 f8 ff ff 	mov    r12,QWORD PTR [rbp-0x7f8]
  7c956c:	48 ff c1             	inc    rcx
  7c956f:	48 3b 8d 80 f6 ff ff 	cmp    rcx,QWORD PTR [rbp-0x980]
  7c9576:	0f 82 a3 c6 ff ff    	jb     7c5c1f <pre_step3d_mod_mp_pre_step3d_tile_+0xc61f>
  7c957c:	bf 1c 73 ab 00       	mov    edi,0xab731c
  7c9581:	8b b5 78 f6 ff ff    	mov    esi,DWORD PTR [rbp-0x988]
  7c9587:	c5 f8 77             	vzeroupper 
  7c958a:	e8 11 47 c4 ff       	call   40dca0 <__kmpc_for_static_fini@plt>
  7c958f:	48 8b 95 90 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xa70]
  7c9596:	48 8b 85 98 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xa68]
  7c959d:	48 83 c0 1f          	add    rax,0x1f
  7c95a1:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7c95a5:	48 03 e0             	add    rsp,rax
  7c95a8:	48 8b 95 a0 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xa60]
  7c95af:	48 8b 85 a8 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xa58]
  7c95b6:	48 83 c0 1f          	add    rax,0x1f
  7c95ba:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7c95be:	48 03 e0             	add    rsp,rax
  7c95c1:	48 8b 95 80 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xa80]
  7c95c8:	48 8b 85 88 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xa78]
  7c95cf:	48 83 c0 1f          	add    rax,0x1f
  7c95d3:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7c95d7:	48 03 e0             	add    rsp,rax
  7c95da:	48 8b 95 70 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xa90]
  7c95e1:	48 8b 85 78 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xa88]
  7c95e8:	48 83 c0 1f          	add    rax,0x1f
  7c95ec:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
  7c95f0:	48 03 e0             	add    rsp,rax
  7c95f3:	4c 8b bd 28 f6 ff ff 	mov    r15,QWORD PTR [rbp-0x9d8]
  7c95fa:	4c 8b b5 30 f6 ff ff 	mov    r14,QWORD PTR [rbp-0x9d0]
  7c9601:	4c 8b ad 38 f6 ff ff 	mov    r13,QWORD PTR [rbp-0x9c8]
  7c9608:	4c 8b a5 40 f6 ff ff 	mov    r12,QWORD PTR [rbp-0x9c0]
  7c960f:	c9                   	leave  
  7c9610:	48 89 dc             	mov    rsp,rbx
  7c9613:	5b                   	pop    rbx
  7c9614:	c3                   	ret    
  7c9615:	49 83 fe 04          	cmp    r14,0x4
  7c9619:	7c 5b                	jl     7c9676 <pre_step3d_mod_mp_pre_step3d_tile_+0x10076>
  7c961b:	48 8b 95 e8 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x918]
  7c9622:	33 f6                	xor    esi,esi
  7c9624:	48 8b 85 e0 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x920]
  7c962b:	48 89 c7             	mov    rdi,rax
  7c962e:	4a 8d 0c 3a          	lea    rcx,[rdx+r15*1]
  7c9632:	4b 8d 14 3c          	lea    rdx,[r12+r15*1]
  7c9636:	c5 fd 10 04 f1       	vmovupd ymm0,YMMWORD PTR [rcx+rsi*8]
  7c963b:	c5 fd 11 04 f2       	vmovupd YMMWORD PTR [rdx+rsi*8],ymm0
  7c9640:	48 83 c6 04          	add    rsi,0x4
  7c9644:	48 3b f7             	cmp    rsi,rdi
  7c9647:	72 ed                	jb     7c9636 <pre_step3d_mod_mp_pre_step3d_tile_+0x10036>
  7c9649:	49 3b c6             	cmp    rax,r14
  7c964c:	0f 83 c0 0d ff ff    	jae    7ba412 <pre_step3d_mod_mp_pre_step3d_tile_+0xe12>
  7c9652:	48 8b 95 e8 f6 ff ff 	mov    rdx,QWORD PTR [rbp-0x918]
  7c9659:	4a 8d 0c 3a          	lea    rcx,[rdx+r15*1]
  7c965d:	4b 8d 14 3c          	lea    rdx,[r12+r15*1]
  7c9661:	48 8b 34 c1          	mov    rsi,QWORD PTR [rcx+rax*8]
  7c9665:	48 89 34 c2          	mov    QWORD PTR [rdx+rax*8],rsi
  7c9669:	48 ff c0             	inc    rax
  7c966c:	49 3b c6             	cmp    rax,r14
  7c966f:	72 f0                	jb     7c9661 <pre_step3d_mod_mp_pre_step3d_tile_+0x10061>
  7c9671:	e9 9c 0d ff ff       	jmp    7ba412 <pre_step3d_mod_mp_pre_step3d_tile_+0xe12>
  7c9676:	33 c0                	xor    eax,eax
  7c9678:	eb cf                	jmp    7c9649 <pre_step3d_mod_mp_pre_step3d_tile_+0x10049>
  7c967a:	45 33 ff             	xor    r15d,r15d
  7c967d:	e9 16 0b ff ff       	jmp    7ba198 <pre_step3d_mod_mp_pre_step3d_tile_+0xb98>
  7c9682:	33 c0                	xor    eax,eax
  7c9684:	e9 98 35 ff ff       	jmp    7bcc21 <pre_step3d_mod_mp_pre_step3d_tile_+0x3621>
  7c9689:	33 c0                	xor    eax,eax
  7c968b:	e9 a8 3c ff ff       	jmp    7bd338 <pre_step3d_mod_mp_pre_step3d_tile_+0x3d38>
  7c9690:	33 c0                	xor    eax,eax
  7c9692:	e9 a7 43 ff ff       	jmp    7bda3e <pre_step3d_mod_mp_pre_step3d_tile_+0x443e>
  7c9697:	45 33 ed             	xor    r13d,r13d
  7c969a:	e9 4c 47 ff ff       	jmp    7bddeb <pre_step3d_mod_mp_pre_step3d_tile_+0x47eb>
  7c969f:	33 c0                	xor    eax,eax
  7c96a1:	e9 46 4a ff ff       	jmp    7be0ec <pre_step3d_mod_mp_pre_step3d_tile_+0x4aec>
  7c96a6:	45 33 ed             	xor    r13d,r13d
  7c96a9:	e9 6b 4d ff ff       	jmp    7be419 <pre_step3d_mod_mp_pre_step3d_tile_+0x4e19>
  7c96ae:	33 c0                	xor    eax,eax
  7c96b0:	e9 6e 51 ff ff       	jmp    7be823 <pre_step3d_mod_mp_pre_step3d_tile_+0x5223>
  7c96b5:	33 c0                	xor    eax,eax
  7c96b7:	e9 b6 59 ff ff       	jmp    7bf072 <pre_step3d_mod_mp_pre_step3d_tile_+0x5a72>
  7c96bc:	33 c0                	xor    eax,eax
  7c96be:	e9 17 60 ff ff       	jmp    7bf6da <pre_step3d_mod_mp_pre_step3d_tile_+0x60da>
  7c96c3:	45 33 e4             	xor    r12d,r12d
  7c96c6:	e9 40 63 ff ff       	jmp    7bfa0b <pre_step3d_mod_mp_pre_step3d_tile_+0x640b>
  7c96cb:	33 c0                	xor    eax,eax
  7c96cd:	e9 05 68 ff ff       	jmp    7bfed7 <pre_step3d_mod_mp_pre_step3d_tile_+0x68d7>
  7c96d2:	45 33 ed             	xor    r13d,r13d
  7c96d5:	e9 c8 6b ff ff       	jmp    7c02a2 <pre_step3d_mod_mp_pre_step3d_tile_+0x6ca2>
  7c96da:	33 c0                	xor    eax,eax
  7c96dc:	e9 dd 6e ff ff       	jmp    7c05be <pre_step3d_mod_mp_pre_step3d_tile_+0x6fbe>
  7c96e1:	45 33 f6             	xor    r14d,r14d
  7c96e4:	e9 0e 72 ff ff       	jmp    7c08f7 <pre_step3d_mod_mp_pre_step3d_tile_+0x72f7>
  7c96e9:	33 c0                	xor    eax,eax
  7c96eb:	e9 25 76 ff ff       	jmp    7c0d15 <pre_step3d_mod_mp_pre_step3d_tile_+0x7715>
  7c96f0:	48 c7 85 f8 f3 ff ff 	mov    QWORD PTR [rbp-0xc08],0x0
  7c96f7:	00 00 00 00 
  7c96fb:	e9 10 7a ff ff       	jmp    7c1110 <pre_step3d_mod_mp_pre_step3d_tile_+0x7b10>
  7c9700:	45 33 ff             	xor    r15d,r15d
  7c9703:	e9 89 65 ff ff       	jmp    7bfc91 <pre_step3d_mod_mp_pre_step3d_tile_+0x6691>
  7c9708:	45 33 ff             	xor    r15d,r15d
  7c970b:	e9 99 61 ff ff       	jmp    7bf8a9 <pre_step3d_mod_mp_pre_step3d_tile_+0x62a9>
  7c9710:	48 c7 85 08 fc ff ff 	mov    QWORD PTR [rbp-0x3f8],0x0
  7c9717:	00 00 00 00 
  7c971b:	e9 61 5d ff ff       	jmp    7bf481 <pre_step3d_mod_mp_pre_step3d_tile_+0x5e81>
  7c9720:	48 c7 85 80 fa ff ff 	mov    QWORD PTR [rbp-0x580],0x0
  7c9727:	00 00 00 00 
  7c972b:	e9 df 54 ff ff       	jmp    7bec0f <pre_step3d_mod_mp_pre_step3d_tile_+0x560f>
  7c9730:	48 c7 85 e8 f8 ff ff 	mov    QWORD PTR [rbp-0x718],0x0
  7c9737:	00 00 00 00 
  7c973b:	e9 0b 40 ff ff       	jmp    7bd74b <pre_step3d_mod_mp_pre_step3d_tile_+0x414b>
  7c9740:	45 33 f6             	xor    r14d,r14d
  7c9743:	e9 ed 38 ff ff       	jmp    7bd035 <pre_step3d_mod_mp_pre_step3d_tile_+0x3a35>
  7c9748:	33 c0                	xor    eax,eax
  7c974a:	e9 9b 8b ff ff       	jmp    7c22ea <pre_step3d_mod_mp_pre_step3d_tile_+0x8cea>
  7c974f:	3b bd d0 f4 ff ff    	cmp    edi,DWORD PTR [rbp-0xb30]
  7c9755:	0f 84 99 92 ff ff    	je     7c29f4 <pre_step3d_mod_mp_pre_step3d_tile_+0x93f4>
  7c975b:	e9 cc 96 ff ff       	jmp    7c2e2c <pre_step3d_mod_mp_pre_step3d_tile_+0x982c>
  7c9760:	33 c0                	xor    eax,eax
  7c9762:	e9 69 93 ff ff       	jmp    7c2ad0 <pre_step3d_mod_mp_pre_step3d_tile_+0x94d0>
  7c9767:	33 c0                	xor    eax,eax
  7c9769:	e9 52 97 ff ff       	jmp    7c2ec0 <pre_step3d_mod_mp_pre_step3d_tile_+0x98c0>
  7c976e:	45 33 ed             	xor    r13d,r13d
  7c9771:	e9 6f 9a ff ff       	jmp    7c31e5 <pre_step3d_mod_mp_pre_step3d_tile_+0x9be5>
  7c9776:	45 33 d2             	xor    r10d,r10d
  7c9779:	e9 aa 9c ff ff       	jmp    7c3428 <pre_step3d_mod_mp_pre_step3d_tile_+0x9e28>
  7c977e:	45 33 ed             	xor    r13d,r13d
  7c9781:	e9 e3 98 ff ff       	jmp    7c3069 <pre_step3d_mod_mp_pre_step3d_tile_+0x9a69>
  7c9786:	45 33 db             	xor    r11d,r11d
  7c9789:	e9 f5 95 ff ff       	jmp    7c2d83 <pre_step3d_mod_mp_pre_step3d_tile_+0x9783>
  7c978e:	45 33 f6             	xor    r14d,r14d
  7c9791:	e9 bf 90 ff ff       	jmp    7c2855 <pre_step3d_mod_mp_pre_step3d_tile_+0x9255>
  7c9796:	45 33 c0             	xor    r8d,r8d
  7c9799:	e9 39 8f ff ff       	jmp    7c26d7 <pre_step3d_mod_mp_pre_step3d_tile_+0x90d7>
  7c979e:	33 c0                	xor    eax,eax
  7c97a0:	e9 e8 aa ff ff       	jmp    7c428d <pre_step3d_mod_mp_pre_step3d_tile_+0xac8d>
  7c97a5:	4c 8b a5 30 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6d0]
  7c97ac:	4c 8b 9d 40 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x7c0]
  7c97b3:	4c 8b 8d 48 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x7b8]
  7c97ba:	4c 8b 95 50 f8 ff ff 	mov    r10,QWORD PTR [rbp-0x7b0]
  7c97c1:	48 83 bd 20 fa ff ff 	cmp    QWORD PTR [rbp-0x5e0],0x2
  7c97c8:	02 
  7c97c9:	0f 8c 0c 0d 00 00    	jl     7ca4db <pre_step3d_mod_mp_pre_step3d_tile_+0x10edb>
  7c97cf:	4c 8b ad 08 f8 ff ff 	mov    r13,QWORD PTR [rbp-0x7f8]
  7c97d6:	45 33 c0             	xor    r8d,r8d
  7c97d9:	4d 0f af ec          	imul   r13,r12
  7c97dd:	48 8b 95 30 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x7d0]
  7c97e4:	4b 8d 3c 2a          	lea    rdi,[r10+r13*1]
  7c97e8:	48 8b b5 28 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x7d8]
  7c97ef:	48 8b 8d 38 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x7c8]
  7c97f6:	4c 8b bd 20 f8 ff ff 	mov    r15,QWORD PTR [rbp-0x7e0]
  7c97fd:	4e 8d 34 2a          	lea    r14,[rdx+r13*1]
  7c9801:	48 8b 85 30 fa ff ff 	mov    rax,QWORD PTR [rbp-0x5d0]
  7c9808:	49 03 f5             	add    rsi,r13
  7c980b:	4c 89 b5 18 f8 ff ff 	mov    QWORD PTR [rbp-0x7e8],r14
  7c9812:	45 33 f6             	xor    r14d,r14d
  7c9815:	48 89 85 58 f8 ff ff 	mov    QWORD PTR [rbp-0x7a8],rax
  7c981c:	49 03 cd             	add    rcx,r13
  7c981f:	4c 89 a5 30 f9 ff ff 	mov    QWORD PTR [rbp-0x6d0],r12
  7c9826:	4d 03 fd             	add    r15,r13
  7c9829:	4c 03 ad 10 f8 ff ff 	add    r13,QWORD PTR [rbp-0x7f0]
  7c9830:	33 d2                	xor    edx,edx
  7c9832:	48 8b 85 18 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x7e8]
  7c9839:	4c 8b 8d 40 fa ff ff 	mov    r9,QWORD PTR [rbp-0x5c0]
  7c9840:	4c 8b 95 28 fa ff ff 	mov    r10,QWORD PTR [rbp-0x5d8]
  7c9847:	4c 8b 9d 18 fa ff ff 	mov    r11,QWORD PTR [rbp-0x5e8]
  7c984e:	4c 8b a5 48 fa ff ff 	mov    r12,QWORD PTR [rbp-0x5b8]
  7c9855:	4d 03 e6             	add    r12,r14
  7c9858:	c4 41 7b 10 2c 24    	vmovsd xmm13,QWORD PTR [r12]
  7c985e:	c4 81 11 16 0c 14    	vmovhpd xmm1,xmm13,QWORD PTR [r12+r10*1]
  7c9864:	4c 8d 24 17          	lea    r12,[rdi+rdx*1]
  7c9868:	c4 41 7b 10 34 24    	vmovsd xmm14,QWORD PTR [r12]
  7c986e:	c4 01 09 16 3c 1c    	vmovhpd xmm15,xmm14,QWORD PTR [r12+r11*1]
  7c9874:	4c 8d 24 16          	lea    r12,[rsi+rdx*1]
  7c9878:	c4 c1 7b 10 04 24    	vmovsd xmm0,QWORD PTR [r12]
  7c987e:	c4 01 79 16 2c 1c    	vmovhpd xmm13,xmm0,QWORD PTR [r12+r11*1]
  7c9884:	4c 8d 24 11          	lea    r12,[rcx+rdx*1]
  7c9888:	c4 41 61 59 f7       	vmulpd xmm14,xmm3,xmm15
  7c988d:	c4 41 49 59 fd       	vmulpd xmm15,xmm6,xmm13
  7c9892:	c4 c1 7b 10 04 24    	vmovsd xmm0,QWORD PTR [r12]
  7c9898:	c4 01 79 16 2c 1c    	vmovhpd xmm13,xmm0,QWORD PTR [r12+r11*1]
  7c989e:	c4 41 09 58 f7       	vaddpd xmm14,xmm14,xmm15
  7c98a3:	c4 41 41 59 fd       	vmulpd xmm15,xmm7,xmm13
  7c98a8:	c4 c1 09 5c c7       	vsubpd xmm0,xmm14,xmm15
  7c98ad:	c5 f1 59 c8          	vmulpd xmm1,xmm1,xmm0
  7c98b1:	4c 8b a5 38 fa ff ff 	mov    r12,QWORD PTR [rbp-0x5c8]
  7c98b8:	c4 81 79 11 4c c1 08 	vmovupd XMMWORD PTR [r9+r8*8+0x8],xmm1
  7c98bf:	c4 01 79 11 0c c4    	vmovupd XMMWORD PTR [r12+r8*8],xmm9
  7c98c5:	4c 8b a5 60 fa ff ff 	mov    r12,QWORD PTR [rbp-0x5a0]
  7c98cc:	4d 03 e6             	add    r12,r14
  7c98cf:	c4 c1 7b 10 04 24    	vmovsd xmm0,QWORD PTR [r12]
  7c98d5:	4f 8d 34 56          	lea    r14,[r14+r10*2]
  7c98d9:	c4 81 79 16 04 14    	vmovhpd xmm0,xmm0,QWORD PTR [r12+r10*1]
  7c98df:	4d 8d 64 15 00       	lea    r12,[r13+rdx*1+0x0]
  7c98e4:	c4 c1 7b 10 0c 24    	vmovsd xmm1,QWORD PTR [r12]
  7c98ea:	c4 01 71 16 2c 1c    	vmovhpd xmm13,xmm1,QWORD PTR [r12+r11*1]
  7c98f0:	4c 8d 24 10          	lea    r12,[rax+rdx*1]
  7c98f4:	c4 41 7b 10 34 24    	vmovsd xmm14,QWORD PTR [r12]
  7c98fa:	c4 01 09 16 3c 1c    	vmovhpd xmm15,xmm14,QWORD PTR [r12+r11*1]
  7c9900:	4d 8d 24 17          	lea    r12,[r15+rdx*1]
  7c9904:	c4 c1 61 59 cd       	vmulpd xmm1,xmm3,xmm13
  7c9909:	c4 41 49 59 ef       	vmulpd xmm13,xmm6,xmm15
  7c990e:	c4 41 7b 10 34 24    	vmovsd xmm14,QWORD PTR [r12]
  7c9914:	4a 8d 14 5a          	lea    rdx,[rdx+r11*2]
  7c9918:	c4 01 09 16 3c 1c    	vmovhpd xmm15,xmm14,QWORD PTR [r12+r11*1]
  7c991e:	c4 c1 71 58 cd       	vaddpd xmm1,xmm1,xmm13
  7c9923:	c4 41 41 59 ef       	vmulpd xmm13,xmm7,xmm15
  7c9928:	c4 41 71 5c f5       	vsubpd xmm14,xmm1,xmm13
  7c992d:	c4 c1 79 59 c6       	vmulpd xmm0,xmm0,xmm14
  7c9932:	4c 8b a5 58 fa ff ff 	mov    r12,QWORD PTR [rbp-0x5a8]
  7c9939:	c4 81 79 11 04 c4    	vmovupd XMMWORD PTR [r12+r8*8],xmm0
  7c993f:	4c 8b a5 50 fa ff ff 	mov    r12,QWORD PTR [rbp-0x5b0]
  7c9946:	c4 01 79 11 0c c4    	vmovupd XMMWORD PTR [r12+r8*8],xmm9
  7c994c:	49 83 c0 02          	add    r8,0x2
  7c9950:	4c 3b 85 30 fa ff ff 	cmp    r8,QWORD PTR [rbp-0x5d0]
  7c9957:	0f 82 f1 fe ff ff    	jb     7c984e <pre_step3d_mod_mp_pre_step3d_tile_+0x1024e>
  7c995d:	4c 8b a5 30 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6d0]
  7c9964:	48 8b 85 58 f8 ff ff 	mov    rax,QWORD PTR [rbp-0x7a8]
  7c996b:	4c 8b 9d 40 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x7c0]
  7c9972:	4c 8b 8d 48 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x7b8]
  7c9979:	4c 8b 95 50 f8 ff ff 	mov    r10,QWORD PTR [rbp-0x7b0]
  7c9980:	4c 8b bd 18 fa ff ff 	mov    r15,QWORD PTR [rbp-0x5e8]
  7c9987:	4c 8b ad 28 fa ff ff 	mov    r13,QWORD PTR [rbp-0x5d8]
  7c998e:	4c 0f af f8          	imul   r15,rax
  7c9992:	4c 0f af e8          	imul   r13,rax
  7c9996:	48 3b 85 20 fa ff ff 	cmp    rax,QWORD PTR [rbp-0x5e0]
  7c999d:	0f 83 06 01 00 00    	jae    7c9aa9 <pre_step3d_mod_mp_pre_step3d_tile_+0x104a9>
  7c99a3:	48 8b 95 08 f8 ff ff 	mov    rdx,QWORD PTR [rbp-0x7f8]
  7c99aa:	49 0f af d4          	imul   rdx,r12
  7c99ae:	48 8b bd 28 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x7d8]
  7c99b5:	4d 8d 04 12          	lea    r8,[r10+rdx*1]
  7c99b9:	48 8b b5 38 f8 ff ff 	mov    rsi,QWORD PTR [rbp-0x7c8]
  7c99c0:	48 8b 8d 20 f8 ff ff 	mov    rcx,QWORD PTR [rbp-0x7e0]
  7c99c7:	4c 8b b5 30 f8 ff ff 	mov    r14,QWORD PTR [rbp-0x7d0]
  7c99ce:	48 03 fa             	add    rdi,rdx
  7c99d1:	4c 8b 95 48 fa ff ff 	mov    r10,QWORD PTR [rbp-0x5b8]
  7c99d8:	48 03 f2             	add    rsi,rdx
  7c99db:	4c 8b 9d 60 fa ff ff 	mov    r11,QWORD PTR [rbp-0x5a0]
  7c99e2:	48 03 ca             	add    rcx,rdx
  7c99e5:	4c 89 a5 30 f9 ff ff 	mov    QWORD PTR [rbp-0x6d0],r12
  7c99ec:	4c 03 f2             	add    r14,rdx
  7c99ef:	48 03 95 10 f8 ff ff 	add    rdx,QWORD PTR [rbp-0x7f0]
  7c99f6:	c4 81 23 59 04 07    	vmulsd xmm0,xmm11,QWORD PTR [r15+r8*1]
  7c99fc:	45 33 c9             	xor    r9d,r9d
  7c99ff:	c4 c1 5b 59 0c 3f    	vmulsd xmm1,xmm4,QWORD PTR [r15+rdi*1]
  7c9a05:	c4 41 3b 59 34 37    	vmulsd xmm14,xmm8,QWORD PTR [r15+rsi*1]
  7c9a0b:	c5 7b 58 e9          	vaddsd xmm13,xmm0,xmm1
  7c9a0f:	c4 c1 23 59 0c 17    	vmulsd xmm1,xmm11,QWORD PTR [r15+rdx*1]
  7c9a15:	4c 8b a5 40 fa ff ff 	mov    r12,QWORD PTR [rbp-0x5c0]
  7c9a1c:	c4 41 13 5c fe       	vsubsd xmm15,xmm13,xmm14
  7c9a21:	c4 01 5b 59 2c 37    	vmulsd xmm13,xmm4,QWORD PTR [r15+r14*1]
  7c9a27:	c4 81 03 59 44 15 00 	vmulsd xmm0,xmm15,QWORD PTR [r13+r10*1+0x0]
  7c9a2e:	c4 41 73 58 f5       	vaddsd xmm14,xmm1,xmm13
  7c9a33:	c4 41 3b 59 3c 0f    	vmulsd xmm15,xmm8,QWORD PTR [r15+rcx*1]
  7c9a39:	c4 c1 7b 11 44 c4 08 	vmovsd QWORD PTR [r12+rax*8+0x8],xmm0
  7c9a40:	c4 c1 0b 5c c7       	vsubsd xmm0,xmm14,xmm15
  7c9a45:	4c 8b a5 38 fa ff ff 	mov    r12,QWORD PTR [rbp-0x5c8]
  7c9a4c:	c4 81 7b 59 4c 1d 00 	vmulsd xmm1,xmm0,QWORD PTR [r13+r11*1+0x0]
  7c9a53:	4d 89 0c c4          	mov    QWORD PTR [r12+rax*8],r9
  7c9a57:	4c 8b a5 58 fa ff ff 	mov    r12,QWORD PTR [rbp-0x5a8]
  7c9a5e:	4c 03 ad 28 fa ff ff 	add    r13,QWORD PTR [rbp-0x5d8]
  7c9a65:	4c 03 bd 18 fa ff ff 	add    r15,QWORD PTR [rbp-0x5e8]
  7c9a6c:	c4 c1 7b 11 0c c4    	vmovsd QWORD PTR [r12+rax*8],xmm1
  7c9a72:	4c 8b a5 50 fa ff ff 	mov    r12,QWORD PTR [rbp-0x5b0]
  7c9a79:	4d 89 0c c4          	mov    QWORD PTR [r12+rax*8],r9
  7c9a7d:	48 ff c0             	inc    rax
  7c9a80:	48 3b 85 20 fa ff ff 	cmp    rax,QWORD PTR [rbp-0x5e0]
  7c9a87:	0f 82 69 ff ff ff    	jb     7c99f6 <pre_step3d_mod_mp_pre_step3d_tile_+0x103f6>
  7c9a8d:	4c 8b a5 30 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6d0]
  7c9a94:	4c 8b 9d 40 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x7c0]
  7c9a9b:	4c 8b 8d 48 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x7b8]
  7c9aa2:	4c 8b 95 50 f8 ff ff 	mov    r10,QWORD PTR [rbp-0x7b0]
  7c9aa9:	33 d2                	xor    edx,edx
  7c9aab:	48 83 bd 78 f8 ff ff 	cmp    QWORD PTR [rbp-0x788],0x0
  7c9ab2:	00 
  7c9ab3:	7e 32                	jle    7c9ae7 <pre_step3d_mod_mp_pre_step3d_tile_+0x104e7>
  7c9ab5:	b9 01 00 00 00       	mov    ecx,0x1
  7c9aba:	33 c0                	xor    eax,eax
  7c9abc:	4d 85 db             	test   r11,r11
  7c9abf:	74 16                	je     7c9ad7 <pre_step3d_mod_mp_pre_step3d_tile_+0x104d7>
  7c9ac1:	41 0b 14 c1          	or     edx,DWORD PTR [r9+rax*8]
  7c9ac5:	41 0b 54 c1 04       	or     edx,DWORD PTR [r9+rax*8+0x4]
  7c9aca:	48 ff c0             	inc    rax
  7c9acd:	49 3b c3             	cmp    rax,r11
  7c9ad0:	72 ef                	jb     7c9ac1 <pre_step3d_mod_mp_pre_step3d_tile_+0x104c1>
  7c9ad2:	48 8d 4c 00 01       	lea    rcx,[rax+rax*1+0x1]
  7c9ad7:	48 ff c9             	dec    rcx
  7c9ada:	48 3b 8d 78 f8 ff ff 	cmp    rcx,QWORD PTR [rbp-0x788]
  7c9ae1:	73 04                	jae    7c9ae7 <pre_step3d_mod_mp_pre_step3d_tile_+0x104e7>
  7c9ae3:	41 0b 14 89          	or     edx,DWORD PTR [r9+rcx*4]
  7c9ae7:	83 bd 80 f8 ff ff 00 	cmp    DWORD PTR [rbp-0x780],0x0
  7c9aee:	0f 84 ed 04 00 00    	je     7c9fe1 <pre_step3d_mod_mp_pre_step3d_tile_+0x109e1>
  7c9af4:	f6 c2 01             	test   dl,0x1
  7c9af7:	0f 84 e4 04 00 00    	je     7c9fe1 <pre_step3d_mod_mp_pre_step3d_tile_+0x109e1>
  7c9afd:	48 8b 85 e8 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xa18]
  7c9b04:	4d 8d 6c 24 01       	lea    r13,[r12+0x1]
  7c9b09:	48 8b 95 f0 f5 ff ff 	mov    rdx,QWORD PTR [rbp-0xa10]
  7c9b10:	48 c7 85 f8 f5 ff ff 	mov    QWORD PTR [rbp-0xa08],0x0
  7c9b17:	00 00 00 00 
  7c9b1b:	48 63 54 90 fc       	movsxd rdx,DWORD PTR [rax+rdx*4-0x4]
  7c9b20:	48 85 d2             	test   rdx,rdx
  7c9b23:	0f 8e bd 04 00 00    	jle    7c9fe6 <pre_step3d_mod_mp_pre_step3d_tile_+0x109e6>
  7c9b29:	4c 8b 85 c8 f5 ff ff 	mov    r8,QWORD PTR [rbp-0xa38]
  7c9b30:	33 c9                	xor    ecx,ecx
  7c9b32:	48 8b 85 e0 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xa20]
  7c9b39:	4c 89 a5 30 f9 ff ff 	mov    QWORD PTR [rbp-0x6d0],r12
  7c9b40:	4c 89 ad c8 f7 ff ff 	mov    QWORD PTR [rbp-0x838],r13
  7c9b47:	4a 8b b4 00 60 fc ff 	mov    rsi,QWORD PTR [rax+r8*1-0x3a0]
  7c9b4e:	ff 
  7c9b4f:	4a 8b bc 00 68 fc ff 	mov    rdi,QWORD PTR [rax+r8*1-0x398]
  7c9b56:	ff 
  7c9b57:	48 0f af fe          	imul   rdi,rsi
  7c9b5b:	48 89 b5 d8 f5 ff ff 	mov    QWORD PTR [rbp-0xa28],rsi
  7c9b62:	4a 8b b4 00 18 fc ff 	mov    rsi,QWORD PTR [rax+r8*1-0x3e8]
  7c9b69:	ff 
  7c9b6a:	4e 8b bc 00 20 fc ff 	mov    r15,QWORD PTR [rax+r8*1-0x3e0]
  7c9b71:	ff 
  7c9b72:	4c 0f af fe          	imul   r15,rsi
  7c9b76:	4e 8b b4 00 28 fc ff 	mov    r14,QWORD PTR [rax+r8*1-0x3d8]
  7c9b7d:	ff 
  7c9b7e:	4c 2b f7             	sub    r14,rdi
  7c9b81:	33 ff                	xor    edi,edi
  7c9b83:	4c 89 b5 d0 f5 ff ff 	mov    QWORD PTR [rbp-0xa30],r14
  7c9b8a:	4e 8b 84 00 e0 fb ff 	mov    r8,QWORD PTR [rax+r8*1-0x420]
  7c9b91:	ff 
  7c9b92:	43 8b 04 a1          	mov    eax,DWORD PTR [r9+r12*4]
  7c9b96:	4d 2b c7             	sub    r8,r15
  7c9b99:	4d 89 f3             	mov    r11,r14
  7c9b9c:	83 e0 01             	and    eax,0x1
  7c9b9f:	4c 8b a5 d8 f5 ff ff 	mov    r12,QWORD PTR [rbp-0xa28]
  7c9ba6:	4c 8b ad f8 f5 ff ff 	mov    r13,QWORD PTR [rbp-0xa08]
  7c9bad:	48 03 fe             	add    rdi,rsi
  7c9bb0:	49 03 cc             	add    rcx,r12
  7c9bb3:	4d 8d 55 01          	lea    r10,[r13+0x1]
  7c9bb7:	46 8b 34 07          	mov    r14d,DWORD PTR [rdi+r8*1]
  7c9bbb:	46 8b 3c 19          	mov    r15d,DWORD PTR [rcx+r11*1]
  7c9bbf:	85 c0                	test   eax,eax
  7c9bc1:	0f 84 e9 03 00 00    	je     7c9fb0 <pre_step3d_mod_mp_pre_step3d_tile_+0x109b0>
  7c9bc7:	4d 63 ce             	movsxd r9,r14d
  7c9bca:	4c 3b 8d e0 f9 ff ff 	cmp    r9,QWORD PTR [rbp-0x620]
  7c9bd1:	0f 8c d9 03 00 00    	jl     7c9fb0 <pre_step3d_mod_mp_pre_step3d_tile_+0x109b0>
  7c9bd7:	44 3b b5 00 f6 ff ff 	cmp    r14d,DWORD PTR [rbp-0xa00]
  7c9bde:	0f 8f cc 03 00 00    	jg     7c9fb0 <pre_step3d_mod_mp_pre_step3d_tile_+0x109b0>
  7c9be4:	44 3b bd 00 f5 ff ff 	cmp    r15d,DWORD PTR [rbp-0xb00]
  7c9beb:	0f 85 bf 03 00 00    	jne    7c9fb0 <pre_step3d_mod_mp_pre_step3d_tile_+0x109b0>
  7c9bf1:	4c 8b bd c8 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xa38]
  7c9bf8:	4c 8b b5 e0 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xa20]
  7c9bff:	4f 8b b4 3e e0 fd ff 	mov    r14,QWORD PTR [r14+r15*1-0x220]
  7c9c06:	ff 
  7c9c07:	4c 89 b5 38 f3 ff ff 	mov    QWORD PTR [rbp-0xcc8],r14
  7c9c0e:	49 83 fe 08          	cmp    r14,0x8
  7c9c12:	0f 85 b0 01 00 00    	jne    7c9dc8 <pre_step3d_mod_mp_pre_step3d_tile_+0x107c8>
  7c9c18:	4c 8b b5 e0 f5 ff ff 	mov    r14,QWORD PTR [rbp-0xa20]
  7c9c1f:	4b 83 bc 3e 40 fe ff 	cmp    QWORD PTR [r14+r15*1-0x1c0],0x8
  7c9c26:	ff 08 
  7c9c28:	0f 85 9a 01 00 00    	jne    7c9dc8 <pre_step3d_mod_mp_pre_step3d_tile_+0x107c8>
  7c9c2e:	48 c7 85 30 f3 ff ff 	mov    QWORD PTR [rbp-0xcd0],0x0
  7c9c35:	00 00 00 00 
  7c9c39:	48 83 bd b0 f3 ff ff 	cmp    QWORD PTR [rbp-0xc50],0x0
  7c9c40:	00 
  7c9c41:	0f 8e 69 03 00 00    	jle    7c9fb0 <pre_step3d_mod_mp_pre_step3d_tile_+0x109b0>
  7c9c47:	89 85 00 f3 ff ff    	mov    DWORD PTR [rbp-0xd00],eax
  7c9c4d:	48 8b 85 98 f3 ff ff 	mov    rax,QWORD PTR [rbp-0xc68]
  7c9c54:	4d 89 fe             	mov    r14,r15
  7c9c57:	4c 8b bd e0 f5 ff ff 	mov    r15,QWORD PTR [rbp-0xa20]
  7c9c5e:	48 89 bd 10 f3 ff ff 	mov    QWORD PTR [rbp-0xcf0],rdi
  7c9c65:	4e 8d 4c c8 08       	lea    r9,[rax+r9*8+0x8]
  7c9c6a:	4c 89 8d 40 f3 ff ff 	mov    QWORD PTR [rbp-0xcc0],r9
  7c9c71:	4b 8b 84 37 58 fe ff 	mov    rax,QWORD PTR [r15+r14*1-0x1a8]
  7c9c78:	ff 
  7c9c79:	4b 8b bc 37 60 fe ff 	mov    rdi,QWORD PTR [r15+r14*1-0x1a0]
  7c9c80:	ff 
  7c9c81:	48 0f af f8          	imul   rdi,rax
  7c9c85:	4f 8b 8c 37 48 fe ff 	mov    r9,QWORD PTR [r15+r14*1-0x1b8]
  7c9c8c:	ff 
  7c9c8d:	4c 89 95 a0 f3 ff ff 	mov    QWORD PTR [rbp-0xc60],r10
  7c9c94:	4f 8b 94 37 78 fe ff 	mov    r10,QWORD PTR [r15+r14*1-0x188]
  7c9c9b:	ff 
  7c9c9c:	49 f7 da             	neg    r10
  7c9c9f:	4a 8d 3c cf          	lea    rdi,[rdi+r9*8]
  7c9ca3:	4c 8b 8d 30 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x6d0]
  7c9caa:	4c 89 85 08 f3 ff ff 	mov    QWORD PTR [rbp-0xcf8],r8
  7c9cb1:	45 33 c0             	xor    r8d,r8d
  7c9cb4:	4c 89 85 60 f3 ff ff 	mov    QWORD PTR [rbp-0xca0],r8
  7c9cbb:	4c 89 85 68 f3 ff ff 	mov    QWORD PTR [rbp-0xc98],r8
  7c9cc2:	4f 8d 4c 0a 01       	lea    r9,[r10+r9*1+0x1]
  7c9cc7:	4f 0f af 8c 37 70 fe 	imul   r9,QWORD PTR [r15+r14*1-0x190]
  7c9cce:	ff ff 
  7c9cd0:	4f 8b 94 37 08 fe ff 	mov    r10,QWORD PTR [r15+r14*1-0x1f8]
  7c9cd7:	ff 
  7c9cd8:	4c 2b d7             	sub    r10,rdi
  7c9cdb:	4f 8b 84 37 00 fe ff 	mov    r8,QWORD PTR [r15+r14*1-0x200]
  7c9ce2:	ff 
  7c9ce3:	48 89 85 78 f3 ff ff 	mov    QWORD PTR [rbp-0xc88],rax
  7c9cea:	48 89 b5 18 f3 ff ff 	mov    QWORD PTR [rbp-0xce8],rsi
  7c9cf1:	48 89 8d 20 f3 ff ff 	mov    QWORD PTR [rbp-0xce0],rcx
  7c9cf8:	4b 8d 3c ea          	lea    rdi,[r10+r13*8]
  7c9cfc:	4c 03 cf             	add    r9,rdi
  7c9cff:	4b 8b bc 37 f8 fd ff 	mov    rdi,QWORD PTR [r15+r14*1-0x208]
  7c9d06:	ff 
  7c9d07:	4c 0f af c7          	imul   r8,rdi
  7c9d0b:	4f 8b 94 37 e8 fd ff 	mov    r10,QWORD PTR [r15+r14*1-0x218]
  7c9d12:	ff 
  7c9d13:	4f 8b b4 37 a8 fd ff 	mov    r14,QWORD PTR [r15+r14*1-0x258]
  7c9d1a:	ff 
  7c9d1b:	4d 8d 3c 41          	lea    r15,[r9+rax*2]
  7c9d1f:	49 c1 e2 03          	shl    r10,0x3
  7c9d23:	4d 2b f0             	sub    r14,r8
  7c9d26:	4d 2b f2             	sub    r14,r10
  7c9d29:	48 89 bd 90 f3 ff ff 	mov    QWORD PTR [rbp-0xc70],rdi
  7c9d30:	48 89 95 28 f3 ff ff 	mov    QWORD PTR [rbp-0xcd8],rdx
  7c9d37:	4f 8d 2c ee          	lea    r13,[r14+r13*8]
  7c9d3b:	4c 8b 95 a0 f3 ff ff 	mov    r10,QWORD PTR [rbp-0xc60]
  7c9d42:	4d 8d 74 7d 00       	lea    r14,[r13+rdi*2+0x0]
  7c9d47:	48 8b 85 40 f3 ff ff 	mov    rax,QWORD PTR [rbp-0xcc0]
  7c9d4e:	48 8b 95 68 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xc98]
  7c9d55:	48 8b 8d 90 f3 ff ff 	mov    rcx,QWORD PTR [rbp-0xc70]
  7c9d5c:	48 8b b5 60 f3 ff ff 	mov    rsi,QWORD PTR [rbp-0xca0]
  7c9d63:	48 8b bd 78 f3 ff ff 	mov    rdi,QWORD PTR [rbp-0xc88]
  7c9d6a:	4c 8b 85 30 f3 ff ff 	mov    r8,QWORD PTR [rbp-0xcd0]
  7c9d71:	4c 8b 9d b0 f3 ff ff 	mov    r11,QWORD PTR [rbp-0xc50]
  7c9d78:	4c 8b a5 00 fa ff ff 	mov    r12,QWORD PTR [rbp-0x600]
  7c9d7f:	90                   	nop
  7c9d80:	48 03 d1             	add    rdx,rcx
  7c9d83:	48 03 f7             	add    rsi,rdi
  7c9d86:	c4 c1 7b 10 4e 08    	vmovsd xmm1,QWORD PTR [r14+0x8]
  7c9d8c:	49 ff c0             	inc    r8
  7c9d8f:	c4 41 73 59 77 08    	vmulsd xmm14,xmm1,QWORD PTR [r15+0x8]
  7c9d95:	4c 03 f1             	add    r14,rcx
  7c9d98:	c4 a1 7b 10 44 2a 08 	vmovsd xmm0,QWORD PTR [rdx+r13*1+0x8]
  7c9d9f:	4c 03 ff             	add    r15,rdi
  7c9da2:	c4 21 7b 59 6c 0e 08 	vmulsd xmm13,xmm0,QWORD PTR [rsi+r9*1+0x8]
  7c9da9:	c4 41 13 58 fe       	vaddsd xmm15,xmm13,xmm14
  7c9dae:	c4 c1 23 59 c7       	vmulsd xmm0,xmm11,xmm15
  7c9db3:	c5 fb 58 08          	vaddsd xmm1,xmm0,QWORD PTR [rax]
  7c9db7:	c5 fb 11 08          	vmovsd QWORD PTR [rax],xmm1
  7c9dbb:	49 03 c4             	add    rax,r12
  7c9dbe:	4d 3b c3             	cmp    r8,r11
  7c9dc1:	72 bd                	jb     7c9d80 <pre_step3d_mod_mp_pre_step3d_tile_+0x10780>
  7c9dc3:	e9 b1 01 00 00       	jmp    7c9f79 <pre_step3d_mod_mp_pre_step3d_tile_+0x10979>
  7c9dc8:	48 c7 85 a8 f3 ff ff 	mov    QWORD PTR [rbp-0xc58],0x0
  7c9dcf:	00 00 00 00 
  7c9dd3:	48 83 bd b0 f3 ff ff 	cmp    QWORD PTR [rbp-0xc50],0x0
  7c9dda:	00 
  7c9ddb:	0f 8e cf 01 00 00    	jle    7c9fb0 <pre_step3d_mod_mp_pre_step3d_tile_+0x109b0>
  7c9de1:	48 89 bd 10 f3 ff ff 	mov    QWORD PTR [rbp-0xcf0],rdi
  7c9de8:	89 85 00 f3 ff ff    	mov    DWORD PTR [rbp-0xd00],eax
  7c9dee:	4c 89 ff             	mov    rdi,r15
  7c9df1:	48 8b 85 e0 f5 ff ff 	mov    rax,QWORD PTR [rbp-0xa20]
  7c9df8:	4c 89 85 08 f3 ff ff 	mov    QWORD PTR [rbp-0xcf8],r8
  7c9dff:	4c 89 95 a0 f3 ff ff 	mov    QWORD PTR [rbp-0xc60],r10
  7c9e06:	4c 8b 84 38 48 fe ff 	mov    r8,QWORD PTR [rax+rdi*1-0x1b8]
  7c9e0d:	ff 
  7c9e0e:	49 f7 d8             	neg    r8
  7c9e11:	4c 8b 94 38 58 fe ff 	mov    r10,QWORD PTR [rax+rdi*1-0x1a8]
  7c9e18:	ff 
  7c9e19:	4c 8b bd 98 f3 ff ff 	mov    r15,QWORD PTR [rbp-0xc68]
  7c9e20:	4c 89 95 58 f3 ff ff 	mov    QWORD PTR [rbp-0xca8],r10
  7c9e27:	48 89 b5 18 f3 ff ff 	mov    QWORD PTR [rbp-0xce8],rsi
  7c9e2e:	4f 8d 74 28 01       	lea    r14,[r8+r13*1+0x1]
  7c9e33:	4c 0f af b4 38 40 fe 	imul   r14,QWORD PTR [rax+rdi*1-0x1c0]
  7c9e3a:	ff ff 
  7c9e3c:	45 33 c0             	xor    r8d,r8d
  7c9e3f:	4f 8d 4c cf 08       	lea    r9,[r15+r9*8+0x8]
  7c9e44:	4c 89 8d 48 f3 ff ff 	mov    QWORD PTR [rbp-0xcb8],r9
  7c9e4b:	4f 8d 3c 12          	lea    r15,[r10+r10*1]
  7c9e4f:	4c 89 bd 50 f3 ff ff 	mov    QWORD PTR [rbp-0xcb0],r15
  7c9e56:	4c 8b 8c 38 60 fe ff 	mov    r9,QWORD PTR [rax+rdi*1-0x1a0]
  7c9e5d:	ff 
  7c9e5e:	4c 8b bc 38 78 fe ff 	mov    r15,QWORD PTR [rax+rdi*1-0x188]
  7c9e65:	ff 
  7c9e66:	4d 0f af ca          	imul   r9,r10
  7c9e6a:	49 f7 df             	neg    r15
  7c9e6d:	4c 03 bd c8 f7 ff ff 	add    r15,QWORD PTR [rbp-0x838]
  7c9e74:	4c 0f af bc 38 70 fe 	imul   r15,QWORD PTR [rax+rdi*1-0x190]
  7c9e7b:	ff ff 
  7c9e7d:	4c 8b 94 38 08 fe ff 	mov    r10,QWORD PTR [rax+rdi*1-0x1f8]
  7c9e84:	ff 
  7c9e85:	4d 2b d1             	sub    r10,r9
  7c9e88:	4d 03 f2             	add    r14,r10
  7c9e8b:	4d 03 fe             	add    r15,r14
  7c9e8e:	4c 8b b4 38 e8 fd ff 	mov    r14,QWORD PTR [rax+rdi*1-0x218]
  7c9e95:	ff 
  7c9e96:	49 f7 de             	neg    r14
  7c9e99:	4c 89 85 70 f3 ff ff 	mov    QWORD PTR [rbp-0xc90],r8
  7c9ea0:	4c 89 85 80 f3 ff ff 	mov    QWORD PTR [rbp-0xc80],r8
  7c9ea7:	4c 8b 84 38 00 fe ff 	mov    r8,QWORD PTR [rax+rdi*1-0x200]
  7c9eae:	ff 
  7c9eaf:	4f 8d 4c 2e 01       	lea    r9,[r14+r13*1+0x1]
  7c9eb4:	4c 8b ac 38 f8 fd ff 	mov    r13,QWORD PTR [rax+rdi*1-0x208]
  7c9ebb:	ff 
  7c9ebc:	4d 0f af c5          	imul   r8,r13
  7c9ec0:	4c 0f af 8d 38 f3 ff 	imul   r9,QWORD PTR [rbp-0xcc8]
  7c9ec7:	ff 
  7c9ec8:	48 8b 84 38 a8 fd ff 	mov    rax,QWORD PTR [rax+rdi*1-0x258]
  7c9ecf:	ff 
  7c9ed0:	4f 8d 54 2d 00       	lea    r10,[r13+r13*1+0x0]
  7c9ed5:	49 2b c0             	sub    rax,r8
  7c9ed8:	4c 89 95 88 f3 ff ff 	mov    QWORD PTR [rbp-0xc78],r10
  7c9edf:	4c 03 c8             	add    r9,rax
  7c9ee2:	48 89 8d 20 f3 ff ff 	mov    QWORD PTR [rbp-0xce0],rcx
  7c9ee9:	48 89 95 28 f3 ff ff 	mov    QWORD PTR [rbp-0xcd8],rdx
  7c9ef0:	4c 8b 95 a0 f3 ff ff 	mov    r10,QWORD PTR [rbp-0xc60]
  7c9ef7:	48 8b 85 48 f3 ff ff 	mov    rax,QWORD PTR [rbp-0xcb8]
  7c9efe:	4c 89 fa             	mov    rdx,r15
  7c9f01:	48 8b 8d 80 f3 ff ff 	mov    rcx,QWORD PTR [rbp-0xc80]
  7c9f08:	48 8b b5 88 f3 ff ff 	mov    rsi,QWORD PTR [rbp-0xc78]
  7c9f0f:	48 8b bd 70 f3 ff ff 	mov    rdi,QWORD PTR [rbp-0xc90]
  7c9f16:	4c 8b 85 50 f3 ff ff 	mov    r8,QWORD PTR [rbp-0xcb0]
  7c9f1d:	4c 8b 9d 58 f3 ff ff 	mov    r11,QWORD PTR [rbp-0xca8]
  7c9f24:	4c 8b a5 a8 f3 ff ff 	mov    r12,QWORD PTR [rbp-0xc58]
  7c9f2b:	4c 8b b5 b0 f3 ff ff 	mov    r14,QWORD PTR [rbp-0xc50]
  7c9f32:	4c 8b bd 00 fa ff ff 	mov    r15,QWORD PTR [rbp-0x600]
  7c9f39:	49 03 cd             	add    rcx,r13
  7c9f3c:	49 03 fb             	add    rdi,r11
  7c9f3f:	c4 a1 7b 10 0c 0e    	vmovsd xmm1,QWORD PTR [rsi+r9*1]
  7c9f45:	49 ff c4             	inc    r12
  7c9f48:	c4 41 73 59 34 10    	vmulsd xmm14,xmm1,QWORD PTR [r8+rdx*1]
  7c9f4e:	49 03 f5             	add    rsi,r13
  7c9f51:	c4 a1 7b 10 04 09    	vmovsd xmm0,QWORD PTR [rcx+r9*1]
  7c9f57:	4d 03 c3             	add    r8,r11
  7c9f5a:	c5 7b 59 2c 17       	vmulsd xmm13,xmm0,QWORD PTR [rdi+rdx*1]
  7c9f5f:	c4 41 13 58 fe       	vaddsd xmm15,xmm13,xmm14
  7c9f64:	c4 c1 23 59 c7       	vmulsd xmm0,xmm11,xmm15
  7c9f69:	c5 fb 58 08          	vaddsd xmm1,xmm0,QWORD PTR [rax]
  7c9f6d:	c5 fb 11 08          	vmovsd QWORD PTR [rax],xmm1
  7c9f71:	49 03 c7             	add    rax,r15
  7c9f74:	4d 3b e6             	cmp    r12,r14
  7c9f77:	72 c0                	jb     7c9f39 <pre_step3d_mod_mp_pre_step3d_tile_+0x10939>
  7c9f79:	8b 85 00 f3 ff ff    	mov    eax,DWORD PTR [rbp-0xd00]
  7c9f7f:	4c 8b 85 08 f3 ff ff 	mov    r8,QWORD PTR [rbp-0xcf8]
  7c9f86:	48 8b bd 10 f3 ff ff 	mov    rdi,QWORD PTR [rbp-0xcf0]
  7c9f8d:	48 8b b5 18 f3 ff ff 	mov    rsi,QWORD PTR [rbp-0xce8]
  7c9f94:	4c 8b 9d d0 f5 ff ff 	mov    r11,QWORD PTR [rbp-0xa30]
  7c9f9b:	48 8b 8d 20 f3 ff ff 	mov    rcx,QWORD PTR [rbp-0xce0]
  7c9fa2:	4c 8b a5 d8 f5 ff ff 	mov    r12,QWORD PTR [rbp-0xa28]
  7c9fa9:	48 8b 95 28 f3 ff ff 	mov    rdx,QWORD PTR [rbp-0xcd8]
  7c9fb0:	4d 89 d5             	mov    r13,r10
  7c9fb3:	4c 3b d2             	cmp    r10,rdx
  7c9fb6:	0f 82 f1 fb ff ff    	jb     7c9bad <pre_step3d_mod_mp_pre_step3d_tile_+0x105ad>
  7c9fbc:	4c 8b a5 30 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x6d0]
  7c9fc3:	4c 8b ad c8 f7 ff ff 	mov    r13,QWORD PTR [rbp-0x838]
  7c9fca:	4c 8b 9d 40 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x7c0]
  7c9fd1:	4c 8b 8d 48 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x7b8]
  7c9fd8:	4c 8b 95 50 f8 ff ff 	mov    r10,QWORD PTR [rbp-0x7b0]
  7c9fdf:	eb 05                	jmp    7c9fe6 <pre_step3d_mod_mp_pre_step3d_tile_+0x109e6>
  7c9fe1:	4d 8d 6c 24 01       	lea    r13,[r12+0x1]
  7c9fe6:	8b 85 68 f8 ff ff    	mov    eax,DWORD PTR [rbp-0x798]
  7c9fec:	c4 c1 79 28 c2       	vmovapd xmm0,xmm10
  7c9ff1:	3b 85 70 f8 ff ff    	cmp    eax,DWORD PTR [rbp-0x790]
  7c9ff7:	74 05                	je     7c9ffe <pre_step3d_mod_mp_pre_step3d_tile_+0x109fe>
  7c9ff9:	c4 c1 78 28 c4       	vmovaps xmm0,xmm12
  7c9ffe:	48 83 bd 08 fa ff ff 	cmp    QWORD PTR [rbp-0x5f8],0x8
  7ca005:	08 
  7ca006:	0f 85 82 01 00 00    	jne    7ca18e <pre_step3d_mod_mp_pre_step3d_tile_+0x10b8e>
  7ca00c:	48 83 bd 90 f9 ff ff 	cmp    QWORD PTR [rbp-0x670],0x8
  7ca013:	08 
  7ca014:	0f 85 74 01 00 00    	jne    7ca18e <pre_step3d_mod_mp_pre_step3d_tile_+0x10b8e>
  7ca01a:	48 83 bd 18 fa ff ff 	cmp    QWORD PTR [rbp-0x5e8],0x8
  7ca021:	08 
  7ca022:	0f 85 66 01 00 00    	jne    7ca18e <pre_step3d_mod_mp_pre_step3d_tile_+0x10b8e>
  7ca028:	33 c0                	xor    eax,eax
  7ca02a:	33 d2                	xor    edx,edx
  7ca02c:	48 83 bd e8 f9 ff ff 	cmp    QWORD PTR [rbp-0x618],0x0
  7ca033:	00 
  7ca034:	0f 8e 5e 04 00 00    	jle    7ca498 <pre_step3d_mod_mp_pre_step3d_tile_+0x10e98>
  7ca03a:	4c 0f af a5 08 f8 ff 	imul   r12,QWORD PTR [rbp-0x7f8]
  7ca041:	ff 
  7ca042:	c4 62 7d 19 f0       	vbroadcastsd ymm14,xmm0
  7ca047:	4c 89 ad c8 f7 ff ff 	mov    QWORD PTR [rbp-0x838],r13
  7ca04e:	4c 03 a5 b0 f7 ff ff 	add    r12,QWORD PTR [rbp-0x850]
  7ca055:	4c 8b 95 40 fa ff ff 	mov    r10,QWORD PTR [rbp-0x5c0]
  7ca05c:	4c 8b ad 38 fa ff ff 	mov    r13,QWORD PTR [rbp-0x5c8]
  7ca063:	4c 8b b5 60 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x6a0]
  7ca06a:	4c 8b bd 20 fa ff ff 	mov    r15,QWORD PTR [rbp-0x5e0]
  7ca071:	48 8b 8d f8 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x608]
  7ca078:	48 3b 8d e0 f9 ff ff 	cmp    rcx,QWORD PTR [rbp-0x620]
  7ca07f:	0f 8c e6 00 00 00    	jl     7ca16b <pre_step3d_mod_mp_pre_step3d_tile_+0x10b6b>
  7ca085:	49 83 ff 04          	cmp    r15,0x4
  7ca089:	0f 8c 3c 04 00 00    	jl     7ca4cb <pre_step3d_mod_mp_pre_step3d_tile_+0x10ecb>
  7ca08f:	4c 8b 9d 88 fa ff ff 	mov    r11,QWORD PTR [rbp-0x578]
  7ca096:	45 33 c0             	xor    r8d,r8d
  7ca099:	4c 89 e1             	mov    rcx,r12
  7ca09c:	49 8d 7c 15 00       	lea    rdi,[r13+rdx*1+0x0]
  7ca0a1:	4c 8b ad 58 f9 ff ff 	mov    r13,QWORD PTR [rbp-0x6a8]
  7ca0a8:	49 8d 34 12          	lea    rsi,[r10+rdx*1]
  7ca0ac:	4d 89 df             	mov    r15,r11
  7ca0af:	4d 8d 0c 16          	lea    r9,[r14+rdx*1]
  7ca0b3:	4c 8b b5 50 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x6b0]
  7ca0ba:	c4 01 0d 59 7c c5 00 	vmulpd ymm15,ymm14,YMMWORD PTR [r13+r8*8+0x0]
  7ca0c1:	c5 7d 10 29          	vmovupd ymm13,YMMWORD PTR [rcx]
  7ca0c5:	c4 81 05 59 0c c6    	vmulpd ymm1,ymm15,YMMWORD PTR [r14+r8*8]
  7ca0cb:	c4 21 7d 10 7c c6 08 	vmovupd ymm15,YMMWORD PTR [rsi+r8*8+0x8]
  7ca0d2:	c4 21 05 5c 3c c7    	vsubpd ymm15,ymm15,YMMWORD PTR [rdi+r8*8]
  7ca0d8:	c4 c1 75 59 cf       	vmulpd ymm1,ymm1,ymm15
  7ca0dd:	c5 15 5c e9          	vsubpd ymm13,ymm13,ymm1
  7ca0e1:	c4 81 15 59 4c c1 08 	vmulpd ymm1,ymm13,YMMWORD PTR [r9+r8*8+0x8]
  7ca0e8:	49 83 c0 04          	add    r8,0x4
  7ca0ec:	c5 fd 11 09          	vmovupd YMMWORD PTR [rcx],ymm1
  7ca0f0:	48 83 c1 20          	add    rcx,0x20
  7ca0f4:	4d 3b c7             	cmp    r8,r15
  7ca0f7:	72 c1                	jb     7ca0ba <pre_step3d_mod_mp_pre_step3d_tile_+0x10aba>
  7ca0f9:	4c 8b ad 38 fa ff ff 	mov    r13,QWORD PTR [rbp-0x5c8]
  7ca100:	4c 8b b5 60 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x6a0]
  7ca107:	4c 8b bd 20 fa ff ff 	mov    r15,QWORD PTR [rbp-0x5e0]
  7ca10e:	4d 3b df             	cmp    r11,r15
  7ca111:	73 58                	jae    7ca16b <pre_step3d_mod_mp_pre_step3d_tile_+0x10b6b>
  7ca113:	4c 8b 85 58 f9 ff ff 	mov    r8,QWORD PTR [rbp-0x6a8]
  7ca11a:	49 8d 7c 15 00       	lea    rdi,[r13+rdx*1+0x0]
  7ca11f:	4c 8b 8d 50 f9 ff ff 	mov    r9,QWORD PTR [rbp-0x6b0]
  7ca126:	49 8d 34 12          	lea    rsi,[r10+rdx*1]
  7ca12a:	49 8d 0c 16          	lea    rcx,[r14+rdx*1]
  7ca12e:	c4 81 7b 59 0c d8    	vmulsd xmm1,xmm0,QWORD PTR [r8+r11*8]
  7ca134:	c4 21 7b 10 6c de 08 	vmovsd xmm13,QWORD PTR [rsi+r11*8+0x8]
  7ca13b:	c4 01 73 59 3c d9    	vmulsd xmm15,xmm1,QWORD PTR [r9+r11*8]
  7ca141:	c4 a1 13 5c 0c df    	vsubsd xmm1,xmm13,QWORD PTR [rdi+r11*8]
  7ca147:	c5 03 59 f9          	vmulsd xmm15,xmm15,xmm1
  7ca14b:	c4 01 7b 10 2c dc    	vmovsd xmm13,QWORD PTR [r12+r11*8]
  7ca151:	c4 c1 13 5c cf       	vsubsd xmm1,xmm13,xmm15
  7ca156:	c4 21 73 59 6c d9 08 	vmulsd xmm13,xmm1,QWORD PTR [rcx+r11*8+0x8]
  7ca15d:	c4 01 7b 11 2c dc    	vmovsd QWORD PTR [r12+r11*8],xmm13
  7ca163:	49 ff c3             	inc    r11
  7ca166:	4d 3b df             	cmp    r11,r15
  7ca169:	72 c3                	jb     7ca12e <pre_step3d_mod_mp_pre_step3d_tile_+0x10b2e>
  7ca16b:	48 ff c0             	inc    rax
  7ca16e:	48 03 95 00 fa ff ff 	add    rdx,QWORD PTR [rbp-0x600]
  7ca175:	4c 03 a5 f0 f9 ff ff 	add    r12,QWORD PTR [rbp-0x610]
  7ca17c:	48 3b 85 e8 f9 ff ff 	cmp    rax,QWORD PTR [rbp-0x618]
  7ca183:	0f 82 e8 fe ff ff    	jb     7ca071 <pre_step3d_mod_mp_pre_step3d_tile_+0x10a71>
  7ca189:	e9 ee 02 00 00       	jmp    7ca47c <pre_step3d_mod_mp_pre_step3d_tile_+0x10e7c>
  7ca18e:	33 c9                	xor    ecx,ecx
  7ca190:	33 d2                	xor    edx,edx
  7ca192:	33 c0                	xor    eax,eax
  7ca194:	48 83 bd e8 f9 ff ff 	cmp    QWORD PTR [rbp-0x618],0x0
  7ca19b:	00 
  7ca19c:	0f 8e f6 02 00 00    	jle    7ca498 <pre_step3d_mod_mp_pre_step3d_tile_+0x10e98>
  7ca1a2:	4c 0f af a5 08 f8 ff 	imul   r12,QWORD PTR [rbp-0x7f8]
  7ca1a9:	ff 
  7ca1aa:	48 8b b5 b8 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x848]
  7ca1b1:	4c 89 ad c8 f7 ff ff 	mov    QWORD PTR [rbp-0x838],r13
  7ca1b8:	c5 fb 12 c8          	vmovddup xmm1,xmm0
  7ca1bc:	48 89 8d 10 fa ff ff 	mov    QWORD PTR [rbp-0x5f0],rcx
  7ca1c3:	49 03 f4             	add    rsi,r12
  7ca1c6:	4c 03 a5 c0 f7 ff ff 	add    r12,QWORD PTR [rbp-0x840]
  7ca1cd:	4c 89 a5 30 f9 ff ff 	mov    QWORD PTR [rbp-0x6d0],r12
  7ca1d4:	48 89 b5 38 f9 ff ff 	mov    QWORD PTR [rbp-0x6c8],rsi
  7ca1db:	4c 8b ad 20 fa ff ff 	mov    r13,QWORD PTR [rbp-0x5e0]
  7ca1e2:	4c 8b 9d 18 fa ff ff 	mov    r11,QWORD PTR [rbp-0x5e8]
  7ca1e9:	4c 8b a5 90 f9 ff ff 	mov    r12,QWORD PTR [rbp-0x670]
  7ca1f0:	48 8b 8d f8 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x608]
  7ca1f7:	48 3b 8d e0 f9 ff ff 	cmp    rcx,QWORD PTR [rbp-0x620]
  7ca1fe:	0f 8c 4c 02 00 00    	jl     7ca450 <pre_step3d_mod_mp_pre_step3d_tile_+0x10e50>
  7ca204:	4d 85 db             	test   r11,r11
  7ca207:	0f 84 c6 02 00 00    	je     7ca4d3 <pre_step3d_mod_mp_pre_step3d_tile_+0x10ed3>
  7ca20d:	49 83 fd 04          	cmp    r13,0x4
  7ca211:	0f 8c bc 02 00 00    	jl     7ca4d3 <pre_step3d_mod_mp_pre_step3d_tile_+0x10ed3>
  7ca217:	48 8b b5 38 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x5c8]
  7ca21e:	33 ff                	xor    edi,edi
  7ca220:	4c 8b bd 38 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6c8]
  7ca227:	4c 8b 8d 40 fa ff ff 	mov    r9,QWORD PTR [rbp-0x5c0]
  7ca22e:	4c 8b 95 60 f9 ff ff 	mov    r10,QWORD PTR [rbp-0x6a0]
  7ca235:	4c 8d 04 16          	lea    r8,[rsi+rdx*1]
  7ca239:	48 8b 8d 30 f9 ff ff 	mov    rcx,QWORD PTR [rbp-0x6d0]
  7ca240:	4c 03 f8             	add    r15,rax
  7ca243:	4c 8b b5 88 fa ff ff 	mov    r14,QWORD PTR [rbp-0x578]
  7ca24a:	49 8d 34 11          	lea    rsi,[r9+rdx*1]
  7ca24e:	4c 89 85 40 f9 ff ff 	mov    QWORD PTR [rbp-0x6c0],r8
  7ca255:	4d 8d 0c 12          	lea    r9,[r10+rdx*1]
  7ca259:	45 33 d2             	xor    r10d,r10d
  7ca25c:	4c 89 b5 68 f9 ff ff 	mov    QWORD PTR [rbp-0x698],r14
  7ca263:	45 33 c0             	xor    r8d,r8d
  7ca266:	48 89 85 70 f9 ff ff 	mov    QWORD PTR [rbp-0x690],rax
  7ca26d:	48 03 c8             	add    rcx,rax
  7ca270:	48 89 95 78 f9 ff ff 	mov    QWORD PTR [rbp-0x688],rdx
  7ca277:	4c 89 f8             	mov    rax,r15
  7ca27a:	48 8b 95 40 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x6c0]
  7ca281:	4c 8b ad 48 f9 ff ff 	mov    r13,QWORD PTR [rbp-0x6b8]
  7ca288:	4c 8b b5 08 fa ff ff 	mov    r14,QWORD PTR [rbp-0x5f8]
  7ca28f:	4c 8b bd a0 fa ff ff 	mov    r15,QWORD PTR [rbp-0x560]
  7ca296:	4d 03 fa             	add    r15,r10
  7ca299:	c4 41 7b 10 37       	vmovsd xmm14,QWORD PTR [r15]
  7ca29e:	c4 01 09 16 3c 37    	vmovhpd xmm15,xmm14,QWORD PTR [r15+r14*1]
  7ca2a4:	4f 8d 7c 05 00       	lea    r15,[r13+r8*1+0x0]
  7ca2a9:	c4 41 71 59 f7       	vmulpd xmm14,xmm1,xmm15
  7ca2ae:	c4 41 7b 10 2f       	vmovsd xmm13,QWORD PTR [r15]
  7ca2b3:	c4 01 11 16 3c 27    	vmovhpd xmm15,xmm13,QWORD PTR [r15+r12*1]
  7ca2b9:	c4 41 09 59 ef       	vmulpd xmm13,xmm14,xmm15
  7ca2be:	c5 7b 10 31          	vmovsd xmm14,QWORD PTR [rcx]
  7ca2c2:	c4 21 09 16 3c 19    	vmovhpd xmm15,xmm14,QWORD PTR [rcx+r11*1]
  7ca2c8:	c5 79 10 74 fe 08    	vmovupd xmm14,XMMWORD PTR [rsi+rdi*8+0x8]
  7ca2ce:	c5 09 5c 34 fa       	vsubpd xmm14,xmm14,XMMWORD PTR [rdx+rdi*8]
  7ca2d3:	c4 41 11 59 ee       	vmulpd xmm13,xmm13,xmm14
  7ca2d8:	c4 41 01 5c fd       	vsubpd xmm15,xmm15,xmm13
  7ca2dd:	4c 8b bd 98 fa ff ff 	mov    r15,QWORD PTR [rbp-0x568]
  7ca2e4:	c4 41 01 59 6c f9 08 	vmulpd xmm13,xmm15,XMMWORD PTR [r9+rdi*8+0x8]
  7ca2eb:	c5 7b 11 29          	vmovsd QWORD PTR [rcx],xmm13
  7ca2ef:	4d 03 fa             	add    r15,r10
  7ca2f2:	c4 41 7b 10 37       	vmovsd xmm14,QWORD PTR [r15]
  7ca2f7:	4f 8d 14 b2          	lea    r10,[r10+r14*4]
  7ca2fb:	c4 01 09 16 3c 37    	vmovhpd xmm15,xmm14,QWORD PTR [r15+r14*1]
  7ca301:	c4 41 71 59 f7       	vmulpd xmm14,xmm1,xmm15
  7ca306:	4c 8b bd 90 fa ff ff 	mov    r15,QWORD PTR [rbp-0x570]
  7ca30d:	c4 41 79 17 2c 0b    	vmovhpd QWORD PTR [r11+rcx*1],xmm13
  7ca313:	4a 8d 0c 99          	lea    rcx,[rcx+r11*4]
  7ca317:	4d 03 f8             	add    r15,r8
  7ca31a:	c4 41 7b 10 2f       	vmovsd xmm13,QWORD PTR [r15]
  7ca31f:	4f 8d 04 a0          	lea    r8,[r8+r12*4]
  7ca323:	c4 01 11 16 3c 27    	vmovhpd xmm15,xmm13,QWORD PTR [r15+r12*1]
  7ca329:	c4 41 09 59 f7       	vmulpd xmm14,xmm14,xmm15
  7ca32e:	c5 79 10 7c fe 18    	vmovupd xmm15,XMMWORD PTR [rsi+rdi*8+0x18]
  7ca334:	c5 01 5c 7c fa 10    	vsubpd xmm15,xmm15,XMMWORD PTR [rdx+rdi*8+0x10]
  7ca33a:	c4 41 09 59 f7       	vmulpd xmm14,xmm14,xmm15
  7ca33f:	c5 7b 10 28          	vmovsd xmm13,QWORD PTR [rax]
  7ca343:	c4 21 11 16 2c 18    	vmovhpd xmm13,xmm13,QWORD PTR [rax+r11*1]
  7ca349:	c4 41 11 5c ee       	vsubpd xmm13,xmm13,xmm14
  7ca34e:	c4 41 11 59 74 f9 18 	vmulpd xmm14,xmm13,XMMWORD PTR [r9+rdi*8+0x18]
  7ca355:	48 83 c7 04          	add    rdi,0x4
  7ca359:	c5 7b 11 30          	vmovsd QWORD PTR [rax],xmm14
  7ca35d:	c4 41 79 17 34 03    	vmovhpd QWORD PTR [r11+rax*1],xmm14
  7ca363:	4a 8d 04 98          	lea    rax,[rax+r11*4]
  7ca367:	48 3b bd 88 fa ff ff 	cmp    rdi,QWORD PTR [rbp-0x578]
  7ca36e:	0f 82 1b ff ff ff    	jb     7ca28f <pre_step3d_mod_mp_pre_step3d_tile_+0x10c8f>
  7ca374:	4c 8b b5 68 f9 ff ff 	mov    r14,QWORD PTR [rbp-0x698]
  7ca37b:	48 8b 85 70 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x690]
  7ca382:	48 8b 95 78 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x688]
  7ca389:	4c 8b ad 20 fa ff ff 	mov    r13,QWORD PTR [rbp-0x5e0]
  7ca390:	4c 89 d9             	mov    rcx,r11
  7ca393:	4d 89 e1             	mov    r9,r12
  7ca396:	48 8b b5 08 fa ff ff 	mov    rsi,QWORD PTR [rbp-0x5f8]
  7ca39d:	49 0f af ce          	imul   rcx,r14
  7ca3a1:	4d 0f af ce          	imul   r9,r14
  7ca3a5:	49 0f af f6          	imul   rsi,r14
  7ca3a9:	4d 3b f5             	cmp    r14,r13
  7ca3ac:	0f 83 9e 00 00 00    	jae    7ca450 <pre_step3d_mod_mp_pre_step3d_tile_+0x10e50>
  7ca3b2:	4c 8b bd 30 f9 ff ff 	mov    r15,QWORD PTR [rbp-0x6d0]
  7ca3b9:	4c 8b 85 38 fa ff ff 	mov    r8,QWORD PTR [rbp-0x5c8]
  7ca3c0:	48 8b bd 40 fa ff ff 	mov    rdi,QWORD PTR [rbp-0x5c0]
  7ca3c7:	4c 8b 95 60 f9 ff ff 	mov    r10,QWORD PTR [rbp-0x6a0]
  7ca3ce:	4c 03 f8             	add    r15,rax
  7ca3d1:	48 89 85 70 f9 ff ff 	mov    QWORD PTR [rbp-0x690],rax
  7ca3d8:	4c 03 c2             	add    r8,rdx
  7ca3db:	48 89 95 78 f9 ff ff 	mov    QWORD PTR [rbp-0x688],rdx
  7ca3e2:	48 03 fa             	add    rdi,rdx
  7ca3e5:	48 8b 85 48 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x6b8]
  7ca3ec:	4c 03 d2             	add    r10,rdx
  7ca3ef:	48 8b 95 a0 fa ff ff 	mov    rdx,QWORD PTR [rbp-0x560]
  7ca3f6:	49 03 cf             	add    rcx,r15
  7ca3f9:	4c 8b bd 08 fa ff ff 	mov    r15,QWORD PTR [rbp-0x5f8]
  7ca400:	c5 7b 59 2c 16       	vmulsd xmm13,xmm0,QWORD PTR [rsi+rdx*1]
  7ca405:	49 03 f7             	add    rsi,r15
  7ca408:	c4 21 7b 10 74 f7 08 	vmovsd xmm14,QWORD PTR [rdi+r14*8+0x8]
  7ca40f:	c4 41 13 59 3c 01    	vmulsd xmm15,xmm13,QWORD PTR [r9+rax*1]
  7ca415:	4d 03 cc             	add    r9,r12
  7ca418:	c4 01 0b 5c 2c f0    	vsubsd xmm13,xmm14,QWORD PTR [r8+r14*8]
  7ca41e:	c4 41 03 59 fd       	vmulsd xmm15,xmm15,xmm13
  7ca423:	c5 7b 10 31          	vmovsd xmm14,QWORD PTR [rcx]
  7ca427:	c4 41 0b 5c ef       	vsubsd xmm13,xmm14,xmm15
  7ca42c:	c4 01 13 59 74 f2 08 	vmulsd xmm14,xmm13,QWORD PTR [r10+r14*8+0x8]
  7ca433:	49 ff c6             	inc    r14
  7ca436:	c5 7b 11 31          	vmovsd QWORD PTR [rcx],xmm14
  7ca43a:	49 03 cb             	add    rcx,r11
  7ca43d:	4d 3b f5             	cmp    r14,r13
  7ca440:	72 be                	jb     7ca400 <pre_step3d_mod_mp_pre_step3d_tile_+0x10e00>
  7ca442:	48 8b 85 70 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x690]
  7ca449:	48 8b 95 78 f9 ff ff 	mov    rdx,QWORD PTR [rbp-0x688]
  7ca450:	48 8b 8d 10 fa ff ff 	mov    rcx,QWORD PTR [rbp-0x5f0]
  7ca457:	48 ff c1             	inc    rcx
  7ca45a:	48 03 95 00 fa ff ff 	add    rdx,QWORD PTR [rbp-0x600]
  7ca461:	48 03 85 f0 f9 ff ff 	add    rax,QWORD PTR [rbp-0x610]
  7ca468:	48 89 8d 10 fa ff ff 	mov    QWORD PTR [rbp-0x5f0],rcx
  7ca46f:	48 3b 8d e8 f9 ff ff 	cmp    rcx,QWORD PTR [rbp-0x618]
  7ca476:	0f 82 74 fd ff ff    	jb     7ca1f0 <pre_step3d_mod_mp_pre_step3d_tile_+0x10bf0>
  7ca47c:	4c 8b ad c8 f7 ff ff 	mov    r13,QWORD PTR [rbp-0x838]
  7ca483:	4c 8b 9d 40 f8 ff ff 	mov    r11,QWORD PTR [rbp-0x7c0]
  7ca48a:	4c 8b 8d 48 f8 ff ff 	mov    r9,QWORD PTR [rbp-0x7b8]
  7ca491:	4c 8b 95 50 f8 ff ff 	mov    r10,QWORD PTR [rbp-0x7b0]
  7ca498:	4d 89 ec             	mov    r12,r13
  7ca49b:	4c 3b ad 60 f8 ff ff 	cmp    r13,QWORD PTR [rbp-0x7a0]
  7ca4a2:	0f 82 a1 ab ff ff    	jb     7c5049 <pre_step3d_mod_mp_pre_step3d_tile_+0xba49>
  7ca4a8:	48 8b 85 10 f6 ff ff 	mov    rax,QWORD PTR [rbp-0x9f0]
  7ca4af:	8b 8d 08 f6 ff ff    	mov    ecx,DWORD PTR [rbp-0x9f8]
  7ca4b5:	ff c1                	inc    ecx
  7ca4b7:	48 ff c0             	inc    rax
  7ca4ba:	3b 8d 20 f6 ff ff    	cmp    ecx,DWORD PTR [rbp-0x9e0]
  7ca4c0:	0f 82 de 9a ff ff    	jb     7c3fa4 <pre_step3d_mod_mp_pre_step3d_tile_+0xa9a4>
  7ca4c6:	e9 57 93 ff ff       	jmp    7c3822 <pre_step3d_mod_mp_pre_step3d_tile_+0xa222>
  7ca4cb:	45 33 db             	xor    r11d,r11d
  7ca4ce:	e9 3b fc ff ff       	jmp    7ca10e <pre_step3d_mod_mp_pre_step3d_tile_+0x10b0e>
  7ca4d3:	45 33 f6             	xor    r14d,r14d
  7ca4d6:	e9 b5 fe ff ff       	jmp    7ca390 <pre_step3d_mod_mp_pre_step3d_tile_+0x10d90>
  7ca4db:	33 c0                	xor    eax,eax
  7ca4dd:	e9 9e f4 ff ff       	jmp    7c9980 <pre_step3d_mod_mp_pre_step3d_tile_+0x10380>
  7ca4e2:	33 c0                	xor    eax,eax
  7ca4e4:	e9 88 ac ff ff       	jmp    7c5171 <pre_step3d_mod_mp_pre_step3d_tile_+0xbb71>
  7ca4e9:	48 8b 85 f8 f9 ff ff 	mov    rax,QWORD PTR [rbp-0x608]
  7ca4f0:	48 3b 85 e0 f9 ff ff 	cmp    rax,QWORD PTR [rbp-0x620]
  7ca4f7:	0f 8d c4 f2 ff ff    	jge    7c97c1 <pre_step3d_mod_mp_pre_step3d_tile_+0x101c1>
  7ca4fd:	e9 a7 f5 ff ff       	jmp    7c9aa9 <pre_step3d_mod_mp_pre_step3d_tile_+0x104a9>
  7ca502:	33 ff                	xor    edi,edi
  7ca504:	e9 f8 af ff ff       	jmp    7c5501 <pre_step3d_mod_mp_pre_step3d_tile_+0xbf01>
  7ca509:	33 c0                	xor    eax,eax
  7ca50b:	e9 34 a2 ff ff       	jmp    7c4744 <pre_step3d_mod_mp_pre_step3d_tile_+0xb144>
  7ca510:	45 33 f6             	xor    r14d,r14d
  7ca513:	e9 35 ca ff ff       	jmp    7c6f4d <pre_step3d_mod_mp_pre_step3d_tile_+0xd94d>
  7ca518:	33 c0                	xor    eax,eax
  7ca51a:	e9 f6 d0 ff ff       	jmp    7c7615 <pre_step3d_mod_mp_pre_step3d_tile_+0xe015>
  7ca51f:	45 33 ed             	xor    r13d,r13d
  7ca522:	e9 64 d6 ff ff       	jmp    7c7b8b <pre_step3d_mod_mp_pre_step3d_tile_+0xe58b>
  7ca527:	48 83 f8 04          	cmp    rax,0x4
  7ca52b:	7c 53                	jl     7ca580 <pre_step3d_mod_mp_pre_step3d_tile_+0x10f80>
  7ca52d:	48 8b bd 88 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x778]
  7ca534:	4c 89 ea             	mov    rdx,r13
  7ca537:	4c 8b 85 58 f6 ff ff 	mov    r8,QWORD PTR [rbp-0x9a8]
  7ca53e:	33 c9                	xor    ecx,ecx
  7ca540:	c5 fd 10 0c cf       	vmovupd ymm1,YMMWORD PTR [rdi+rcx*8]
  7ca545:	c4 c1 7d 11 0c c8    	vmovupd YMMWORD PTR [r8+rcx*8],ymm1
  7ca54b:	48 83 c1 04          	add    rcx,0x4
  7ca54f:	49 3b cd             	cmp    rcx,r13
  7ca552:	72 ec                	jb     7ca540 <pre_step3d_mod_mp_pre_step3d_tile_+0x10f40>
  7ca554:	48 3b d0             	cmp    rdx,rax
  7ca557:	0f 83 ed da ff ff    	jae    7c804a <pre_step3d_mod_mp_pre_step3d_tile_+0xea4a>
  7ca55d:	48 8b bd 88 f8 ff ff 	mov    rdi,QWORD PTR [rbp-0x778]
  7ca564:	4c 8b 85 58 f6 ff ff 	mov    r8,QWORD PTR [rbp-0x9a8]
  7ca56b:	48 8b 0c d7          	mov    rcx,QWORD PTR [rdi+rdx*8]
  7ca56f:	49 89 0c d0          	mov    QWORD PTR [r8+rdx*8],rcx
  7ca573:	48 ff c2             	inc    rdx
  7ca576:	48 3b d0             	cmp    rdx,rax
  7ca579:	72 f0                	jb     7ca56b <pre_step3d_mod_mp_pre_step3d_tile_+0x10f6b>
  7ca57b:	e9 ca da ff ff       	jmp    7c804a <pre_step3d_mod_mp_pre_step3d_tile_+0xea4a>
  7ca580:	33 d2                	xor    edx,edx
  7ca582:	eb d0                	jmp    7ca554 <pre_step3d_mod_mp_pre_step3d_tile_+0x10f54>
  7ca584:	48 83 f8 04          	cmp    rax,0x4
  7ca588:	7c 53                	jl     7ca5dd <pre_step3d_mod_mp_pre_step3d_tile_+0x10fdd>
  7ca58a:	48 8b bd 60 f6 ff ff 	mov    rdi,QWORD PTR [rbp-0x9a0]
  7ca591:	4c 89 ea             	mov    rdx,r13
  7ca594:	4c 8b 85 68 f6 ff ff 	mov    r8,QWORD PTR [rbp-0x998]
  7ca59b:	33 c9                	xor    ecx,ecx
  7ca59d:	c5 fd 10 0c cf       	vmovupd ymm1,YMMWORD PTR [rdi+rcx*8]
  7ca5a2:	c4 c1 7d 11 0c c8    	vmovupd YMMWORD PTR [r8+rcx*8],ymm1
  7ca5a8:	48 83 c1 04          	add    rcx,0x4
  7ca5ac:	49 3b cd             	cmp    rcx,r13
  7ca5af:	72 ec                	jb     7ca59d <pre_step3d_mod_mp_pre_step3d_tile_+0x10f9d>
  7ca5b1:	48 3b d0             	cmp    rdx,rax
  7ca5b4:	0f 83 7f db ff ff    	jae    7c8139 <pre_step3d_mod_mp_pre_step3d_tile_+0xeb39>
  7ca5ba:	48 8b bd 60 f6 ff ff 	mov    rdi,QWORD PTR [rbp-0x9a0]
  7ca5c1:	4c 8b 85 68 f6 ff ff 	mov    r8,QWORD PTR [rbp-0x998]
  7ca5c8:	48 8b 0c d7          	mov    rcx,QWORD PTR [rdi+rdx*8]
  7ca5cc:	49 89 0c d0          	mov    QWORD PTR [r8+rdx*8],rcx
  7ca5d0:	48 ff c2             	inc    rdx
  7ca5d3:	48 3b d0             	cmp    rdx,rax
  7ca5d6:	72 f0                	jb     7ca5c8 <pre_step3d_mod_mp_pre_step3d_tile_+0x10fc8>
  7ca5d8:	e9 5c db ff ff       	jmp    7c8139 <pre_step3d_mod_mp_pre_step3d_tile_+0xeb39>
  7ca5dd:	33 d2                	xor    edx,edx
  7ca5df:	eb d0                	jmp    7ca5b1 <pre_step3d_mod_mp_pre_step3d_tile_+0x10fb1>
  7ca5e1:	33 d2                	xor    edx,edx
  7ca5e3:	e9 c8 dd ff ff       	jmp    7c83b0 <pre_step3d_mod_mp_pre_step3d_tile_+0xedb0>
  7ca5e8:	33 c0                	xor    eax,eax
  7ca5ea:	e9 5e e8 ff ff       	jmp    7c8e4d <pre_step3d_mod_mp_pre_step3d_tile_+0xf84d>
  7ca5ef:	48 8b 95 80 f7 ff ff 	mov    rdx,QWORD PTR [rbp-0x880]
  7ca5f6:	48 89 8d 48 fb ff ff 	mov    QWORD PTR [rbp-0x4b8],rcx
  7ca5fd:	48 3b 95 58 f7 ff ff 	cmp    rdx,QWORD PTR [rbp-0x8a8]
  7ca604:	0f 82 53 cb ff ff    	jb     7c715d <pre_step3d_mod_mp_pre_step3d_tile_+0xdb5d>
  7ca60a:	48 8b 8d b0 f5 ff ff 	mov    rcx,QWORD PTR [rbp-0xa50]
  7ca611:	4c 8b 95 b8 f5 ff ff 	mov    r10,QWORD PTR [rbp-0xa48]
  7ca618:	4c 8b a5 08 f8 ff ff 	mov    r12,QWORD PTR [rbp-0x7f8]
  7ca61f:	44 8b 85 88 f7 ff ff 	mov    r8d,DWORD PTR [rbp-0x878]
  7ca626:	8b 95 a8 f7 ff ff    	mov    edx,DWORD PTR [rbp-0x858]
  7ca62c:	e9 3b ef ff ff       	jmp    7c956c <pre_step3d_mod_mp_pre_step3d_tile_+0xff6c>
  7ca631:	48 c7 85 e8 fb ff ff 	mov    QWORD PTR [rbp-0x418],0x0
  7ca638:	00 00 00 00 
  7ca63c:	e9 19 ed ff ff       	jmp    7c935a <pre_step3d_mod_mp_pre_step3d_tile_+0xfd5a>
  7ca641:	48 c7 85 e0 fb ff ff 	mov    QWORD PTR [rbp-0x420],0x0
  7ca648:	00 00 00 00 
  7ca64c:	e9 9e e0 ff ff       	jmp    7c86ef <pre_step3d_mod_mp_pre_step3d_tile_+0xf0ef>
  7ca651:	45 33 c0             	xor    r8d,r8d
  7ca654:	e9 f0 db ff ff       	jmp    7c8249 <pre_step3d_mod_mp_pre_step3d_tile_+0xec49>
  7ca659:	45 33 ed             	xor    r13d,r13d
  7ca65c:	e9 62 d8 ff ff       	jmp    7c7ec3 <pre_step3d_mod_mp_pre_step3d_tile_+0xe8c3>
  7ca661:	48 c7 85 b8 fb ff ff 	mov    QWORD PTR [rbp-0x448],0x0
  7ca668:	00 00 00 00 
  7ca66c:	e9 31 d3 ff ff       	jmp    7c79a2 <pre_step3d_mod_mp_pre_step3d_tile_+0xe3a2>
  7ca671:	45 33 f6             	xor    r14d,r14d
  7ca674:	e9 11 ce ff ff       	jmp    7c748a <pre_step3d_mod_mp_pre_step3d_tile_+0xde8a>
  7ca679:	33 ff                	xor    edi,edi
  7ca67b:	e9 32 ca ff ff       	jmp    7c70b2 <pre_step3d_mod_mp_pre_step3d_tile_+0xdab2>
